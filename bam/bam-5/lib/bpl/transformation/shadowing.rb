module Bpl
  module Transformation
    class Shadowing < Bpl::Pass

      def self.description
        "Create a shadow program."
      end

      depends :ct_annotation
      depends :normalization
      depends :resolution, :loop_identification
      depends :definition_localization, :liveness

      def shadow(x) "#{x}.shadow" end
      def shadow_eq(x) "#{x} == #{shadow_copy(x)}" end
      def decl(v)
        v.class.new(names: v.names.map(&method(:shadow)), type: v.type)
      end

      def shadow_copy(node)
        shadow = node.copy
        shadow.each do |expr|
          next unless expr.is_a?(StorageIdentifier)
          next if expr.declaration &&
                  ( expr.declaration.is_a?(ConstantDeclaration) ||
                    expr.declaration.parent.is_a?(QuantifiedExpression) )
          # expr.replace_with(StorageIdentifier.new(name: shadow(expr)))
          expr.name = shadow(expr)
        end
        shadow
      end

      def accesses(stmt)
        Enumerator.new do |y|
          stmt.each do |expr|
            next unless expr.is_a?(FunctionApplication)
            next unless expr.function.is_a?(Identifier)
            next unless expr.function.name =~ /\$(load|store)/
            y.yield expr.arguments[1]
          end
        end
      end

      def dependent_variables(proc, expr)
        work_list = [expr]
        deps = Set.new
        covered = Set.new(work_list)
        until work_list.empty?
          stmt = work_list.shift
          stmt.each do |id|
            next unless id.is_a?(StorageIdentifier)
            next if id.declaration && id.declaration.parent.is_a?(Program)
            defs = proc.body.definitions[id.name]
            next unless defs
            deps.add(id.name)
            defs.each do |s|
              next if covered.include?(s)
              covered.add(s)
              work_list |= [s]
            end
          end
        end
        deps
      end

      def loads(annotation)
        load_expr, map_expr, addr_expr, inc_expr, len_expr = annotation
        Enumerator.new do |y|
          if map_expr.nil?
            y.yield(
              bpl("#{load_expr}"),
              bpl("#{shadow load_expr}"))

          elsif len_expr.nil?
            y.yield(
              bpl("#{load_expr}(#{map_expr}, #{addr_expr})"),
              bpl("#{load_expr}(#{shadow map_expr}, #{shadow_copy addr_expr})"))

          else
            (len_expr.value / inc_expr.value).times do |i|
              y.yield(
                bpl("#{load_expr}(#{map_expr}, #{addr_expr} + #{i * inc_expr.value})"),
                bpl("#{load_expr}(#{shadow map_expr}, #{shadow_copy addr_expr} + #{i * inc_expr.value})")
              )
            end
          end
        end
      end

      # EXEMPTION_LIST = [
      #   '\$alloc',
      #   '\$free',
      #   'boogie_si_',
      #   '__VERIFIER_'
      # ]
      #
          EXEMPTION_LIST = [
            '\$alloc',
            '\$free',
            'boogie_si_',
            'corral_atomic_',
            '__VERIFIER_',
            '__SMACK_(?!static_init)',
            '__memcpy_chk',
            'llvm.dbg',
            'llvm.lifetime',
            'llvm.objectsize',
            'llvm.stacksave',
            'llvm.stackrestore'
          ]

      MAGIC_LIST = [
        '\$alloc',
        '\$free',
        '\$memset.i8',
        '\$memcpy.i8',
        '\$memcmp.i8'
      ]

      EXEMPTIONS = /#{EXEMPTION_LIST * "|"}/
      MAGICS = /#{MAGIC_LIST * "|"}/

      def exempt? decl
        EXEMPTIONS.match(decl) && true
      end

      def magic? decl
        MAGICS.match(decl) && true
      end

      ANNOTATIONS = [
        :public_in,
        :public_out,
        :declassified_out
      ]

      def annotated_specifications(proc_decl)
        hash = ANNOTATIONS.map{|ax| [ax,[]]}.to_h
        proc_decl.specifications.each do |s|
          hash.keys.each {|ax| hash[ax] << s.get_attribute(ax) if s.has_attribute?(ax)}
        end
        hash
      end

      def shadow_assert(expr)
        bpl("assert #{expr};")
        # bpl("$shadow_ok := $shadow_ok && #{expr};")
      end

      #luwei assert: 
      #使用assign，或者assert
      def luwei_eq(x)
        bpl("#{x} := #{shadow_copy(x)};")
      end

      #将不可变变量用require添加到函数中。
      def add_to_assert(decl, var)
        decl.append_children(:specifications,
                             bpl("requires (#{var} == #{shadow_copy(var)});")
        )
      end

      def run! program
        # count the line of program
        cloc = 0

        all = 0
        td = 0

        # duplicate global variables
        program.global_variables.each {|v| v.insert_after(decl(v))}
        program.global_variables.last.insert_after(bpl("var $shadow_ok: bool;"))


        #测试用的污点条件集合，在正式版里面应该删除
        taintconds = Set.new
        # end 测试
        # duplicate parameters, returns, and local variables
        program.each_child do |decl|
          next unless decl.is_a?(ProcedureDeclaration)
          next if exempt?(decl.name)

          annotations = annotated_specifications(decl)

          # Shadow the parameters and returns
          (decl.parameters + decl.returns).each {|d| d.insert_after(decl(d))}

          next unless decl.body

          decl.body.locals.each {|d| d.insert_after(decl(d))}

          equalities = Set.new
          arguments = Set.new

          taintflg = 0
          calledtaintflg = 0
          calledtaintls = ""
          decl.body.each do |stmt|
            if stmt.is_a?(Statement)
              # puts stmt
              cloc = cloc + 1
            end

            case stmt
            when AssumeStatement

              # TODO should we be shadowing assume statements?
              # NOTE apparently not; because when they appear as branch
              # conditions, they make the preceding shadow assertion
              # trivially true.
              # stmt.insert_after(shadow_copy(stmt))

              # XXX this is an ugly hack to deal with memory intrinsic
              # XXX functions which are implemented with assume statemnts
              if magic?(decl.name)
                stmt.insert_after(shadow_copy(stmt))
              end

              k = stmt.attributes[0]
              unless k.nil?
                if k.key.to_s == "Tainted"
                  taintflg = 1

                  #检查语句

                  # nxt = stmt.next_sibling
                  # alarm = 1
                  # if nxt.is_a?(AssumeStatement)
                  #   if nxt.has_attribute?(:branchcond)
                  #     alarm = 0
                  #     tiantedcond = nxt.get_attribute(:branchcond)
                  #     taintconds.add(tiantedcond[0].declaration)
                  #   else
                  #     taintedcond = nxt.expression.expression.lhs.declaration
                  #     if taintconds === taintedcond
                  #       alarm = 0
                  #     end
                  #   end
                  # elsif nxt.is_a?(AssignStatement)
                  #   accesses(nxt).each do |idx|
                  #     alarm = 0
                  #   end
                  # end
                  #
                  #
                  # if alarm == 1
                  #   puts stmt
                  #   puts nxt
                  #   puts decl
                  #   raise "Tainted with wrong following statement!"
                  # end
                  #end 检查语句
                  stmt.remove
                end

                if k.key.to_s == "CalledTainted"
                  calledtaintflg = 1
                  calledtaintls = k.values[0]
                  #检查语句
                  # nxt = stmt.next_sibling
                  # while nxt.is_a?(AssumeStatement) && nxt.expression.to_s == "true"
                  #   nxt = nxt.next_sibling
                  # end
                  # alarm = 1
                  # if nxt.is_a?(CallStatement)
                  #   alarm = 0
                  # end
                  # puts stmt
                  # puts nxt
                  # if alarm == 1
                  #   raise "Called Tainted with wrong following statement!"
                  # end
                  # end检查语句
                  stmt.remove
                end

              end


            when AssignStatement

              # ensure the indicies to loads and stores are equal
              accesses(stmt).each do |idx|
                # stmt.insert_before(shadow_assert(shadow_eq(idx)))
                # equalities.add(idx)
                all = all + 1
                if taintflg == 1
                  td = td + 1
                  stmt.insert_before(shadow_assert(shadow_eq(idx)))
                  equalities.add(idx)
                  taintflg = 0
                
                else
                  if idx.is_a? StorageIdentifier and idx.is_variable?
                    stmt.insert_before(luwei_eq(idx))
                  else
                    add_to_assert(decl, idx)
                    # stmt.insert_before(shadow_assert(shadow_eq(idx)))
                    # equalities.add(idx)
                  end
                end
              end

              # shadow the assignment
              stmt.insert_after(shadow_copy(stmt))

            when CallStatement
              if magic?(stmt.procedure.name)
                stmt.arguments.each do |x|
                  unless x.type.is_a?(MapType)
                    if x.any?{|id| id.is_a?(StorageIdentifier)}
                      stmt.insert_before(shadow_assert(shadow_eq(x)))
                      equalities.add(x)
                    end
                  end
                end
              end
              # if magic?(stmt.procedure.name)
              #
              #   if calledtaintflg == 1
              #     calledtaintflg = 0
              #     pname = stmt.procedure.name
              #     stmt.arguments.each_with_index do |x,indx|
              #       unless x.type.is_a?(MapType)
              #         if x.any?{|id| id.is_a?(StorageIdentifier)}
              #           # stmt.insert_before(shadow_assert(shadow_eq(x)))
              #           # equalities.add(x)
              #           all = all + 1
              #           td = td + 1
              #           ## 需要对不同的magic函数做相应的处理
              #           # 有点麻烦，不得不做。
              #           if pname == "$alloc" || pname == "$free"
              #             stmt.insert_before(shadow_assert(shadow_eq(x)))
              #             equalities.add(x)
              #           end
              #
              #           if pname == "$memcpy.i8"
              #             if calledtaintls[indx-2] == "1"
              #               stmt.insert_before(shadow_assert(shadow_eq(x)))
              #               equalities.add(x)
              #             elsif x.is_a? StorageIdentifier and x.is_variable?
              #               stmt.insert_before(luwei_eq(x))
              #             else
              #               add_to_assert(decl, x)
              #               # stmt.insert_before(shadow_assert(shadow_eq(x)))
              #               # equalities.add(x)
              #             end
              #           end
              #
              #           if pname == "$memset.i8"
              #             if calledtaintls[indx-1] == "1"
              #               stmt.insert_before(shadow_assert(shadow_eq(x)))
              #               equalities.add(x)
              #             elsif x.is_a? StorageIdentifier and x.is_variable?
              #               stmt.insert_before(luwei_eq(x))
              #             else
              #               add_to_assert(decl, x)
              #               # stmt.insert_before(shadow_assert(shadow_eq(x)))
              #               # equalities.add(x)
              #             end
              #           end
              #
              #           if pname == "$memcmp.i8"
              #             raise "Need to process memcmp!"
              #           end
              #
              #         end
              #       end
              #     end
              #   else
              #     stmt.arguments.each_with_index do |x,indx|
              #       unless x.type.is_a?(MapType)
              #         if x.any?{|id| id.is_a?(StorageIdentifier)}
              #           if x.is_a? StorageIdentifier and x.is_variable?
              #             stmt.insert_before(luwei_eq(x))
              #           else
              #             add_to_assert(decl, x)
              #             # stmt.insert_before(shadow_assert(shadow_eq(x)))
              #             # equalities.add(x)
              #           end
              #         end
              #       end
              #     end
              #
              #   end
              # end

              if exempt?(stmt.procedure.name)
                stmt.assignments.each do |x|
                  stmt.insert_after(bpl("#{shadow(x)} := #{x};"))
                end
              else
                stmt.arguments.each do |x|
                  arguments.add(x)
                  x.insert_after(shadow_copy(x))
                end
                stmt.assignments.each do |x|
                  x.insert_after(shadow_copy(x))
                end
              end

            when HavocStatement
              nxt = stmt.next_sibling
              if nxt and
                 nxt.is_a?(AssumeStatement)
                nxt.insert_after(shadow_copy(nxt))
              end
              stmt.insert_after(shadow_copy(stmt))

            when GotoStatement
              next if stmt.identifiers.length < 2
              unless stmt.identifiers.length == 2
                fail "Unexpected goto statement: #{stmt}"
              end

              if annotation = stmt.previous_sibling
                fail "Expected :branchcond annotation" unless
                  annotation.has_attribute?(:branchcond)
                if expr = annotation.get_attribute(:branchcond).first
                  # stmt.insert_before(shadow_assert(shadow_eq(expr)))
                  # equalities.add(expr)
                  all = all + 1
                  if taintflg == 1
                    td = td + 1
                    stmt.insert_before(shadow_assert(shadow_eq(expr)))
                    equalities.add(expr)
                    taintflg = 0
                  else 
                    if expr.is_a? StorageIdentifier and expr.is_variable?
                      stmt.insert_before(luwei_eq(expr))
                    else
                      add_to_assert(decl, expr)
                      # stmt.insert_before(shadow_assert(shadow_eq(expr)))
                      # equalities.add(expr)
                    end
                  end
                end
              end

            end
          end

          # Restrict to equality on public inputs
          annotations[:public_in].each do |annot|
            loads(annot).each do |e,f|
              decl.append_children(:specifications,
                bpl("requires #{e} == #{f};"))
            end
          end

          # Restrict to equality on public / declassified outputs
          decl.body.each do |ret|
            next unless ret.is_a?(ReturnStatement)
            annotations[:public_out].each do |annot|
              loads(annot).each do |e,f|
                ret.insert_before(shadow_assert("#{e} == #{f}"))
                equalities.add(e)
              end
            end

            annotations[:declassified_out].each do |annot|
              loads(annot).each do |e,f|
                ret.insert_before(bpl("assume #{e} == #{f};"))
              end
            end
          end

          if decl.has_attribute? :entrypoint
            decl.body.blocks.first.statements.first.insert_before(
              bpl("$shadow_ok := true;"))
            decl.body.select{|r| r.is_a?(ReturnStatement)}.
              each{|r| r.insert_before(bpl("assert $shadow_ok;"))}
          end

          equality_dependencies =
            equalities.
            reduce(Set.new){|acc, expr| acc | dependent_variables(decl, expr)}

          pointer_argument_dependencies =
            arguments.select{|x|
              x.is_a?(StorageIdentifier) &&
              x.declaration &&
              x.declaration.type.is_a?(CustomType) &&
              x.declaration.type.name == "ref"}.
            reduce(Set.new){|acc, expr| acc | dependent_variables(decl, expr)} -
            equality_dependencies

          value_argument_dependencies =
            arguments.select{|x|
              x.is_a?(StorageIdentifier) &&
              x.declaration &&
              x.declaration.type.is_a?(CustomType) &&
              x.declaration.type.name != "ref"}.
            reduce(Set.new){|acc, expr| acc | dependent_variables(decl, expr)} -
            equality_dependencies -
            pointer_argument_dependencies

          decl.body.loops.each do |head,body|
            value_argument_dependencies.each do |expr|
              next unless decl.body.live[head].include?(expr)
              head.prepend_children(:statements,
                bpl("assert {:unlikely_shadow_invariant #{expr} == #{shadow expr}} true;"))
            end
            pointer_argument_dependencies.each do |expr|
              next unless decl.body.live[head].include?(expr)
              head.prepend_children(:statements,
                bpl("assert {:likely_shadow_invariant} #{expr} == #{shadow expr};"))
            end
            equality_dependencies.each do |expr|
              next unless decl.body.live[head].include?(expr)
              head.prepend_children(:statements,
                bpl("assert {:shadow_invariant} #{expr} == #{shadow expr};"))
            end
            head.prepend_children(:statements,
              bpl("assert {:shadow_invariant} $shadow_ok;"))
          end
        end
        puts "all shadow: ",all
        puts "tainted shadow: ", td
        puts "avoid shadow: ", all-td
        puts "line of code in boogie: ", cloc
      end
    end
  end
end
