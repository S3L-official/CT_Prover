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
      def dup(x) "#{x}.dup" end
      # 旧版的断言
      # def shadow_eq(x) "#{x} == #{shadow_copy(x)}" end

      def shadow_eq(x)
        # "(#{dup_copy(x)} == 1) ==> (#{x} == #{shadow_copy(x)})"
        "(#{dup_copy(x)} == 0)"
      end

      # def decl(v)
      #   v.class.new(names: v.names.map(&method(:shadow)), type: v.type)
      # end

      def decl_dup(v)
        if v.is_a?(VariableDeclaration)
          # puts v.names
          v.names.each do |x|
            if x == "$exn" || x == "$exnv" || x == "$Alloc" || x == "$CurrAddr"
              return v.class.new(names: v.names.map(&method(:dup)), type: v.type)
            end
          end
        end
        case v.type
        when Bpl::AST::MapType
          newtype = MapType.new({arguments:v.type.arguments,domain:v.type.domain, range:"i1"})
          v.class.new(names: v.names.map(&method(:dup)), type: newtype)
        when Bpl::AST::Type::Boolean
          v.class.new(names: v.names.map(&method(:dup)), type: "bool")
        else
          v.class.new(names: v.names.map(&method(:dup)), type: "i1")
        end
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

      # def dup_copy(node)
      #   dup = node.copy
      #   dup.each do |expr|
      #     next unless expr.is_a?(StorageIdentifier)
      #     next if expr.declaration &&
      #       ( expr.declaration.is_a?(ConstantDeclaration) ||
      #         expr.declaration.parent.is_a?(QuantifiedExpression) )
      #     # expr.replace_with(StorageIdentifier.new(name: shadow(expr)))
      #     expr.name = dup(expr)
      #     # expr.type = Type::Boolean
      #   end
      #   #将load和store替换成合适的版本，以及替换掉其他算术操作
      #   dup.each do |expr|
      #     next unless expr.is_a?(FunctionApplication)
      #     next unless expr.function.is_a?(Identifier)
      #     if expr.function.name =~ /\$(load)/
      #       expr.function.name = "$load.i1"
      #     elsif expr.function.name =~ /\$(store)/
      #       expr.function.name = "$store.i1"
      #     else
      #       expr.function.name = "$or.i1"
      #       expr.arguments.each do |arg|
      #         if arg.is_a?(Literal)
      #           # 这里没必要把arg的类型换乘boolean literal， 在代码上是看不出来类型的
      #           arg.value = 0
      #         end
      #       end
      #       if expr.arguments.length == 1
      #         # puts dup
      #         expr.replace_with(bpl("#{expr.arguments[0]}"))
      #         # puts dup
      #       end
      #     end
      #   end
      #   #保证load和store的index一致
      #   accesses(dup).each do |idx|
      #     next unless idx.include? :name
      #     idx.name.slice!((-4..-1))
      #   end

      #   dup
      # end
      def dup_copy(node)
        dup = node.copy
        isLoadStore = 0
        if dup.is_a?(AssignStatement)
          dup.each do |expr|
            next unless expr.is_a?(FunctionApplication)
            next unless expr.function.is_a?(Identifier)
            if expr.function.name =~ /\$(load)/
              expr.function.name.sub!(/.i(\d)*/,".i1")
              isLoadStore = 1
              break
            elsif expr.function.name =~ /\$(store)/
              expr.function.name.sub!(/.i(\d)*/,".i1")
              isLoadStore = 2
              break
            end
          end
          if isLoadStore == 0
            dup_copyitem(dup)
          else
            dup.lhs.each do |lh|
              dup_copyitem(lh)
            end
            dup_copyitem(dup.rhs[0].arguments[0])
            if isLoadStore == 2
              dup_copyitem(dup.rhs[0].arguments[2])
            end
          end
        else
          dup_copyitem(dup)
        end
        dup
      end

      def dup_copyitem(dup)
        # puts dup
        dup.each do |expr|
          # puts expr
          # puts expr.class
          if expr.is_a?(FunctionApplication)
            if expr.function.is_a?(Identifier)
              expr.function.name = "$or.i1"
            end
            if expr.arguments.length == 1
              dup_copyitem expr.arguments[0]
              expr.replace_with(bpl("#{expr.arguments[0]}"))
            end
          end
          if expr.is_a?(Literal)
            # 这里没必要把arg的类型换乘boolean literal， 在代码上是看不出来类型的
            if expr.is_a?(BooleanLiteral)
              expr.value = false
            else
              expr.value = 0
            end
          end
          next unless expr.is_a?(StorageIdentifier)
          next if expr.declaration &&
            expr.declaration.parent.is_a?(QuantifiedExpression)
          # expr.replace_with(StorageIdentifier.new(name: shadow(expr)))
          if expr.declaration && expr.declaration.is_a?(ConstantDeclaration)
            # puts expr
            # cons = IntegerLiteral.new
            # cons.value = 0
            expr.name = "cons.dup"
          else
            expr.name = dup(expr)
          end
          # expr.type = Type::Boolean
        end
        # puts dup
        # puts "_______"
      end

      def a_dup(node)
        dup = node.copy
        assume_dup_copy(dup)
        dup
      end

      def assume_dup_copy(dup)
        dup.each do |expr|
          if expr.is_a?(FunctionApplication)
            if expr.function.is_a?(Identifier)
              # expr.function.name = "$or.i1"
            end
            if expr.arguments.length == 1
              assume_dup_copy expr.arguments[0]
              expr.replace_with(bpl("#{expr.arguments[0]}"))
            end
          end
          if expr.is_a?(Literal)
            # 这里没必要把arg的类型换乘boolean literal， 在代码上是看不出来类型的
            if expr.is_a?(BooleanLiteral)
              expr.value = false
            else
              expr.value = 0
            end
          end
          next unless expr.is_a?(StorageIdentifier)
          next if expr.declaration &&
            expr.declaration.parent.is_a?(QuantifiedExpression)
          # expr.replace_with(StorageIdentifier.new(name: shadow(expr)))
          if expr.declaration && expr.declaration.is_a?(ConstantDeclaration)
            expr.name = "cons.dup"
          else
            expr.name = dup(expr)
          end
        end
      end

      def accesses(stmt)
        Enumerator.new do |y|
          stmt.each do |expr|
            next unless expr.is_a?(FunctionApplication)
            next unless expr.function.is_a?(Identifier)
            next unless expr.function.name =~ /\$(load|store)/
            #这里是根据load/store 指令的第二个参数一定是index 来硬取的
            y.yield expr.arguments[1]
          end
        end
      end

      # def collectinfo(stmt)
      #   print "stmt: ", stmt, "\n"
      #   Enumerator.new do |y|
      #     stmt.each do |expr|
      #       next unless expr.is_a?(Literal)
      #       y << expr
      #     end
      #   end
      # end


      def insertStmt stmt
        stmt.insert_after(dup_copy(stmt))
      end

      # def replacefun(stmt)
      #   Enumerator.new do |y|
      #     stmt.each do |expr|
      #       next unless expr.is_a?(FunctionApplication)
      #       next unless expr.function.is_a?(Identifier)
      #       next unless expr.function.name =~ /\$(add|ult|sub|shl|xor|lshr)/
      #       #这里是根据load/store 指令的第二个参数一定是index 来硬取的
      #       y.yield expr
      #     end
      #   end
      #   # node = stmt.copy
      #   # node.rhs.each do |expr|
      #   #   if Node === expr
      #   #     if expr.is_a?(FunctionApplication)
      #   #       expr.function.name =
      #   #     end
      #   #   end
      #   # end
      #   # puts stmt
      #   # puts node
      # end

      def dependent_variables(proc, expr, isVariable)
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
            # 保存id isvaraible信息
            if id.is_variable?
              isVariable.add(id.name)
            end            
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
              bpl("#{shadow load_expr}"),
              bpl("#{dup load_expr}"))

          elsif len_expr.nil?
            y.yield(
              bpl("#{load_expr}(#{map_expr}, #{addr_expr})"),
              bpl("#{load_expr}(#{shadow map_expr}, #{shadow_copy addr_expr})"),
              bpl("#{load_expr}(#{dup map_expr}, #{addr_expr})"))

          else
            (len_expr.value / inc_expr.value).times do |i|
              y.yield(
                bpl("#{load_expr}(#{map_expr}, #{addr_expr} + #{i * inc_expr.value})"),
                bpl("#{load_expr}(#{shadow map_expr}, #{shadow_copy addr_expr} + #{i * inc_expr.value})"),
                bpl("#{load_expr}(#{dup map_expr}, #{addr_expr} + #{i * inc_expr.value})")
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

      # MAGIC_LIST = [
      #   '\$alloc',
      #   '\$free',
      #   '\$memset.i8',
      #   '\$memcpy.i8',
      #   '\$memcmp.i8'
      # ]
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
        :declassified_out,
      ]

      def annotated_specifications(proc_decl)
        hash = ANNOTATIONS.map{|ax| [ax,[]]}.to_h
        proc_decl.specifications.each do |s|
          hash.keys.each {|ax| hash[ax] << s.get_attribute(ax) if s.has_attribute?(ax)}
        end
        hash
      end

      def shadow_assert(expr)
        # puts bpl_expr(expr)
        # bpl("$shadow_ok := $shadow_ok && (#{expr});")
        bpl("assert $nondet ==> #{expr};")
      end

      def add_shadow_assert(stmt, idx)
        stmt.insert_before(bpl("havoc $nondet;"))
        stmt.insert_before(shadow_assert(shadow_eq(idx)))
      end

      def run! program

        # puts "aaaaaa"
        # duplicate global variables
        # program.global_variables.each {|v| puts v; puts v.type; puts v.type.domain; puts v.type.range}
        #puts "_______________________________"
        program.global_variables.each do |v|
          v.insert_after(decl_dup(v))
        end
        # program.global_variables.each {|v| puts v; puts v.type}
        #zz = 1
        program.global_variables.last.insert_after(bpl("var $shadow_ok: bool;"))
        program.declarations.last.insert_after(bpl("const {:count 1} cons.dup: i1;"))
        program.declarations.last.insert_after(bpl("axiom (cons.dup == 0);"))
        program.global_variables.last.insert_after(bpl("var $nondet: bool;"))

        # duplicate parameters, returns, and local variables
        program.each_child do |decl|
          next unless decl.is_a?(ProcedureDeclaration)
          next if exempt?(decl.name)

          annotations = annotated_specifications(decl)

          # Shadow the parameters and returns
          (decl.parameters + decl.returns).each do |v|
            v.insert_after(decl_dup(v))
          end

          next unless decl.body

          decl.body.locals.each do |d|
            d.insert_after(decl_dup(d))
          end


          equalities = Set.new
          arguments = Set.new


          # puts taintset.class
          #VFCT

          decl.body.each do |stmt|
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
                stmt.insert_after(a_dup(stmt))
                #stmt.insert_after(assume_dup_copy(stmt))
              end

            when AssignStatement
              # ensure the indicies to loads and stores are equal
              # collectinfo(stmt, ls)
              accesses(stmt).each do |idx|
                add_shadow_assert(stmt, idx)
                equalities.add(idx)
              end

              #之后再改回来
              # if $FLG == "yes" || $FLG == "Yes"
              #   processUnTaintedStmt stmt, taintset
              # end
              # shadow the assignment
              insertStmt stmt





            when CallStatement
              #调用了magic，（访存等函数），就要保证参数是不会有所泄露的。
              if magic?(stmt.procedure.name)
                stmt.arguments.each do |x|
                  unless x.type.is_a?(MapType)
                    if x.any?{|id| id.is_a?(StorageIdentifier)}
                      add_shadow_assert(stmt, x)
                      equalities.add(x)
                    end
                  end
                end
              end

              if exempt?(stmt.procedure.name)
                # print "exempts: ", stmt, "\n"
                stmt.assignments.each do |x|
                  #内部函数，返回值必定相同（无泄漏）
                  #这里先把这些函数的返回值都当成是pub
                  stmt.insert_after(bpl("#{dup(x)} := 0;"))
                end
                # puts ""
              else
                # print "no exempts: ", stmt, "\n"
                stmt.arguments.each do |x|
                  arguments.add(x)
                  insertStmt x
                end
                stmt.assignments.each do |x|
                  insertStmt x
                end
              end

            when HavocStatement
              nxt = stmt.next_sibling
              if nxt and
                nxt.is_a?(AssumeStatement)
                nxt.insert_after(dup_copy(nxt))
              end

              stmt.insert_after(dup_copy(stmt))

              stmt.indetifier.each do |idx|
                stmt.insert_after(bpl("#{dup(idx)} := 0;"))
              end



              # stmt.insert_after(dup_copy(stmt))

            when GotoStatement
              # puts stmt
              next if stmt.identifiers.length < 2
              unless stmt.identifiers.length == 2
                fail "Unexpected goto statement: #{stmt}"
              end

              if annotation = stmt.previous_sibling
                fail "Expected :branchcond annotation" unless
                  annotation.has_attribute?(:branchcond)

                if expr = annotation.get_attribute(:branchcond).first
                  #使用或者不使用第一阶段污点分析
                  # if $pos2
                  # if $pos2
                  #   next unless taintset === expr
                  # end
                  add_shadow_assert(stmt, expr)
                  equalities.add(expr)
                end
              end

            end
          end

          # puts equalities

          # Restrict to equality on public inputs
          annotations[:public_in].each do |annot|
            # puts annot
            # puts decl
            loads(annot).each do |e,f,g|

              decl.append_children(:specifications,
                                   bpl("requires #{g} == 0;"))

            end
          end


          decl.body.each do |ret|
            next unless ret.is_a?(ReturnStatement)

            annotations[:public_out].each do |annot|
              loads(annot).each do |e,f,g|

                # ret.insert_before(shadow_assert("#{e} == #{f}"))
                ret.insert_before(shadow_assert("#{g} == 0"))

                equalities.add(e)
              end
            end

            annotations[:declassified_out].each do |annot|
              loads(annot).each do |e,f,g|

                ret.insert_before(bpl("assume #{g} == 0;"))

              end
            end

          end

          if decl.has_attribute? :entrypoint
            decl.body.blocks.first.statements.first.insert_before(
              bpl("$shadow_ok := true;"))
            decl.body.select{|r| r.is_a?(ReturnStatement)}.
              each{|r| r.insert_before(bpl("assert $shadow_ok;"))}
          end

          isVariable = Set.new

          equality_dependencies =
            equalities.
              reduce(Set.new){|acc, expr| acc | dependent_variables(decl, expr,isVariable)}

          pointer_argument_dependencies =
            arguments.select{|x|
              x.is_a?(StorageIdentifier) &&
                x.declaration &&
                x.declaration.type.is_a?(CustomType) &&
                x.declaration.type.name == "ref"}.
              reduce(Set.new){|acc, expr| acc | dependent_variables(decl, expr,isVariable)} -
              equality_dependencies

          value_argument_dependencies =
            arguments.select{|x|
              x.is_a?(StorageIdentifier) &&
                x.declaration &&
                x.declaration.type.is_a?(CustomType) &&
                x.declaration.type.name != "ref"}.
              reduce(Set.new){|acc, expr| acc | dependent_variables(decl, expr,isVariable)} -
              equality_dependencies -
              pointer_argument_dependencies

          decl.body.loops.each do |head,body|

            #互不阻挡shadow inv无法实现
            # value_argument_dependencies.each do |expr|
            #   next unless decl.body.live[head].include?(expr)
            #   if isVariable.include? expr
            #     head.prepend_children(:statements,
            #                        bpl("#{dup(expr)} := 0;"))
            #   else
            #     head.prepend_children(:statements,
            #                          bpl("assume #{dup(expr)} == 0;"))
            #   end
            # end
            # pointer_argument_dependencies.each do |expr|
            #   next unless decl.body.live[head].include?(expr)
            #   if isVariable.include? expr
            #     head.prepend_children(:statements,
            #                          bpl("#{dup(expr)} := 0;"))
            #   else
            #     head.prepend_children(:statements,
            #                          bpl("assume #{dup(expr)} == 0;"))
            #   end
            # end
            # equality_dependencies.each do |expr|
            #   next unless decl.body.live[head].include?(expr)
            #   if isVariable.include? expr
            #     head.prepend_children(:statements,
            #                          bpl("#{dup(expr)} := 0;"))
            #   else
            #     head.prepend_children(:statements,
            #                          bpl("assume #{dup(expr)} == 0;"))
            #   end
            # end



            value_argument_dependencies.each do |expr|
              next unless decl.body.live[head].include?(expr)
              # head.prepend_children(:statements,
              #                       bpl("assert {:unlikely_shadow_invariant #{expr} == #{shadow expr}} true;"))
              head.prepend_children(:statements,
                                    bpl("assert {:unlikely_shadow_invariant  #{dup(expr)} == 0} true;"))
            end
            pointer_argument_dependencies.each do |expr|
              next unless decl.body.live[head].include?(expr)
              # head.prepend_children(:statements,
              #                       bpl("assert {:likely_shadow_invariant} #{expr} == #{shadow expr};"))
              head.prepend_children(:statements,
                                    bpl("assert {:likely_shadow_invariant} #{dup(expr)} == 0;"))
            end
            equality_dependencies.each do |expr|
              next unless decl.body.live[head].include?(expr)
              # head.prepend_children(:statements,
              #                       bpl("assert {:shadow_invariant} #{expr} == #{shadow expr};"))
              head.prepend_children(:statements,
                                    bpl("assert {:shadow_invariant}   #{dup(expr)} == 0;"))
            end
            # head.prepend_children(:statements,
            #                       bpl("assert {:shadow_invariant} $shadow_ok;"))
          end
        end

      end
    end
  end
end
