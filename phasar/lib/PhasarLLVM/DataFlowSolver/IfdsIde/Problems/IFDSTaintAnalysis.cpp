/******************************************************************************
 * Copyright (c) 2017 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#include <utility>

#include "llvm/Demangle/Demangle.h"
#include "llvm/IR/AbstractCallSite.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Value.h"
#include "llvm/Support/raw_ostream.h"

#include "phasar/PhasarLLVM/ControlFlow/LLVMBasedICFG.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/FlowFunctions.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/LLVMFlowFunctions.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/LLVMZeroValue.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Problems/IFDSTaintAnalysis.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/SpecialSummaries.h"
#include "phasar/PhasarLLVM/Pointer/LLVMPointsToInfo.h"
#include "phasar/PhasarLLVM/TaintConfig/TaintConfigUtilities.h"
#include "phasar/PhasarLLVM/TypeHierarchy/LLVMTypeHierarchy.h"
#include "phasar/Utils/LLVMIRToSrc.h"
#include "phasar/Utils/LLVMShorthands.h"
#include "phasar/Utils/Logger.h"

using namespace std;
using namespace psr;

namespace psr {

    llvm::raw_ostream &operator<<(llvm::raw_ostream &OS, const IFDSTaintAnalysis::d_t Target){
        OS << *Target.value;
        if(Target.isValueTaint())
            OS <<" is Value Taint.";
        else
            OS << " is Pointed Object Taint";
        return OS;
    }

//    std::ostream &operator<<(std::ostream &OS,  const IFDSTaintAnalysis::d_t Target) {
//        llvm::raw_ostream ROS(OS);
//        ROS << Target;
//        return OS;
//    }

    std::string DTOString(const IFDSTaintAnalysis::d_t &Target){
        std::string Ret;
        llvm::raw_string_ostream OS(Ret);
        OS << Target;
        return OS.str();
    }


// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    IFDSTaintAnalysis::IFDSTaintAnalysis(const ProjectIRDB *IRDB,
                                         const LLVMTypeHierarchy *TH,
                                         const LLVMBasedICFG *ICF,
                                         LLVMPointsToInfo *PT,
                                         const TaintConfig &Config,
                                         std::set<std::string> EntryPoints)
            : IFDSTabulationProblem(IRDB, TH, ICF, PT, std::move(EntryPoints)),
              Config(Config),expta(*IRDB->getAllModules().begin()) {
        IFDSTaintAnalysis::ZeroValue = IFDSTaintAnalysis::createZeroValue();
    }

    bool IFDSTaintAnalysis::isSourceCall(const llvm::CallBase *CB,
                                         const llvm::Function *Callee) const {
        for (const auto &Arg : Callee->args()) {
            if (Config.isSource(&Arg)) {
                return true;
            }
        }
        auto Callback = Config.getRegisteredSourceCallBack();
        if (!Callback) {
            return false;
        }

        auto AdditionalFacts = Callback(CB);

        if (AdditionalFacts.empty()) {
            return false;
        }

        if (AdditionalFacts.count(CB)) {
            return true;
        }

        return std::any_of(CB->arg_begin(), CB->arg_end(),
                           [&AdditionalFacts](const auto &Arg) {
                               return AdditionalFacts.count(Arg.get());
                           });
    }

    bool IFDSTaintAnalysis::isSinkCall(const llvm::CallBase *CB,
                                       const llvm::Function *Callee) const {
        for (const auto &Arg : Callee->args()) {
            if (Config.isSink(&Arg)) {
                return true;
            }
        }
        auto Callback = Config.getRegisteredSinkCallBack();
        if (!Callback) {
            return false;
        }

        auto AdditionalLeaks = Callback(CB);

        if (AdditionalLeaks.empty()) {
            return false;
        }

        if (AdditionalLeaks.count(CB)) {
            return true;
        }

        return std::any_of(CB->arg_begin(), CB->arg_end(),
                           [&AdditionalLeaks](const auto &Arg) {
                               return AdditionalLeaks.count(Arg.get());
                           });
    }

    bool IFDSTaintAnalysis::isSanitizerCall(const llvm::CallBase * /*CB*/,
                                            const llvm::Function *Callee) const {
        return std::any_of(
                Callee->arg_begin(), Callee->arg_end(),
                [this](const auto &Arg) { return Config.isSanitizer(&Arg); });
    }

    void IFDSTaintAnalysis::populateWithMayAliases(std::set<d_t> &Facts) const {
        std::set<d_t> Tmp = Facts;
        for (const auto Fact : Facts) {
            auto Aliases = PT->getPointsToSet(Fact.value);
            Tmp.insert(Aliases->begin(), Aliases->end());
        }

        Facts = std::move(Tmp);
    }

    void IFDSTaintAnalysis::populateWithMustAliases(std::set<d_t> &Facts) const {
        /// TODO: Find must-aliases; Currently the PointsToSet only contains
        /// may-aliases
    }

    IFDSTaintAnalysis::FlowFunctionPtrType IFDSTaintAnalysis::getNormalFlowFunction(
            IFDSTaintAnalysis::n_t Curr, [[maybe_unused]] IFDSTaintAnalysis::n_t Succ) {
        // If a tainted value is stored, the store location must be tainted too
        if (const auto *Store = llvm::dyn_cast<llvm::StoreInst>(Curr)) {
            struct TAFF : FlowFunction<IFDSTaintAnalysis::d_t> {
                const llvm::StoreInst *Store;
                TAFF(const llvm::StoreInst *S) : Store(S){};
                set<IFDSTaintAnalysis::d_t>
                computeTargets(IFDSTaintAnalysis::d_t Source) override {
                    auto ptop = Store->getPointerOperand();
                    auto valop = Store->getValueOperand();
                    set<D> res;
                    res.insert(Source);
                    if (valop == Source.value && Source.isValueTaint()) {
                        res.insert(D(ptop,1));
                        res.insert(Source);
/* 有了field sensitive的指针分析，现在不需要自己手动处理基指针
 *                      while (true){
                            const llvm::GetElementPtrInst *gep = llvm::dyn_cast<llvm::GetElementPtrInst>(ptop);
                            const llvm::CastInst *cast = llvm::dyn_cast<llvm::CastInst>(ptop);
                            if(gep){
                                ptop = gep->getPointerOperand();
                            }else if(cast){
                                ptop = cast->getOperand(0);
                            }else
                                break;
                            res.insert(D(ptop,1));
                        }*/
                    }
                    if(valop == Source.value && valop->getType()->isPointerTy() && Source.isObjectTaint()){
                        res.insert(D(ptop,1));
                        res.insert(Source);
                    }
                    //消除pointer taint
                    if (Store->getValueOperand() != Source.value &&
                        Store->getPointerOperand() == Source.value) {
                        if(Source.isObjectTaint())
                            return {};
                    }
                    return res;
                }
            };
            return make_shared<TAFF>(Store);
        }
        // If a tainted value is loaded, the loaded value is of course tainted
        if (const auto *Load = llvm::dyn_cast<llvm::LoadInst>(Curr)) {
            struct TAFF : FlowFunction<IFDSTaintAnalysis::d_t> {
                const llvm::LoadInst *Load;

                SVF::ExternPTA* pta;
                TAFF(const llvm::LoadInst *L, SVF::ExternPTA* pt) : Load(L), pta(pt){};
                set<IFDSTaintAnalysis::d_t>
                computeTargets(IFDSTaintAnalysis::d_t Source) override {
                    set<IFDSTaintAnalysis::d_t> Res;
                    Res.insert(Source);
                    auto ptop = Load->getPointerOperand();
                    if (Source.isObjectTaint())
                        if(Source.value == ptop || pta->isAlias(Source.value, ptop)){
                            if(Load->getType()->isPointerTy())
                              Res.insert(D(Load, 1));
                            else
                              Res.insert(D(Load, 0));
                        }
                    return Res;
                }

//                bool inline isAlias(const llvm::Value* v1, const llvm::Value* v2){
//                    return PT->alias(v1,v2) != AliasResult::NoAlias;
//                }
            };
            return make_shared<TAFF>(Load, &expta);
        }
        // Check if an address is computed from a tainted base pointer of an
        // aggregated object
        // 只要有一个参数是pointer taint，那么整个就是pointer taint，只要有一个是value taint，那么就是value taint
        // 在检查的时候，应该检查load和store的参数是不是value  taint。
        if (const auto *GEP = llvm::dyn_cast<llvm::GetElementPtrInst>(Curr)) {
            return make_shared<LuweiGenIf<IFDSTaintAnalysis::d_t>>(
                    GEP, [GEP](IFDSTaintAnalysis::d_t Source) {
                        auto num = GEP->getNumOperands();
                        for(unsigned int i = 0; i < num; i++){
                            if(Source == GEP->getOperand(i))
                                return true;
                        }
                        return Source == GEP->getPointerOperand();
                    });
        }

        if (const auto *BinaryOp = llvm::dyn_cast<llvm::BinaryOperator>(Curr)) {
            return make_shared<LuweiGenIf<IFDSTaintAnalysis::d_t>>(
                    BinaryOp,[BinaryOp](IFDSTaintAnalysis::d_t Source) {
                        return (Source == BinaryOp->getOperand(0) || Source == BinaryOp->getOperand(1));
                    });
        }
        if (const auto *SelectIns = llvm::dyn_cast<llvm::SelectInst>(Curr)) {
            return make_shared<LuweiGenIf<IFDSTaintAnalysis::d_t>>(
                    SelectIns,[SelectIns](IFDSTaintAnalysis::d_t Source) {
                        for(unsigned int i = 0; i < SelectIns->getNumOperands(); i++){
                            if(Source == SelectIns->getOperand(i))
                                return true;
                        }
                        return false;
                    });
        }
        if (const auto *Cmp = llvm::dyn_cast<llvm::CmpInst>(Curr)) {
            return make_shared<GenIf<IFDSTaintAnalysis::d_t>>(
                    D(Cmp,0),[Cmp](IFDSTaintAnalysis::d_t Source) {
                        for(unsigned int i = 0; i < Cmp->getNumOperands(); i++){
                            if(Source == Cmp->getOperand(i) && Source.isValueTaint())
                                return true;
                        }
                        return false;
                    });
        }
        if(const auto *CastInst = llvm::dyn_cast<llvm::CastInst>(Curr)) {
            //            llvm::outs()<<*CastInst<<"\n";
            return make_shared<LuweiGenIf<IFDSTaintAnalysis::d_t>>(
                    CastInst,[CastInst](IFDSTaintAnalysis::d_t Source) {
                        return Source == CastInst->getOperand(0);
                    });
        }
        if(const auto * PhiInst = llvm::dyn_cast<llvm::PHINode>(Curr)){
            return make_shared<LuweiGenIf<IFDSTaintAnalysis::d_t>>(
                    PhiInst,[PhiInst](IFDSTaintAnalysis::d_t Source){
                        for(unsigned i = 0, e = PhiInst->getNumIncomingValues(); i != e; i++){
                            if (Source == PhiInst->getIncomingValue(i))
                                return true;
                        }
                        return false;
                    });
        }
        //原来是需要mark，才特殊处理的，现在不需要mark，直接identity
//        if(const auto * BranchInst = llvm::dyn_cast<llvm::BranchInst>(Curr)){
//            struct TAFF : FlowFunction<IFDSTaintAnalysis::d_t> {
//                const llvm::BranchInst *Branch;
//                std::set<n_t>& Marked;
//                TAFF(const llvm::BranchInst* Br, std::set<n_t>& M) : Branch(Br), Marked(M){};
//                set<IFDSTaintAnalysis::d_t>
//                computeTargets(IFDSTaintAnalysis::d_t Source) override {
//                    //标记
//                    if(Branch->isConditional()){
//                        auto cond = Branch->getCondition();
//                        if(cond == Source.value && Source.isValueTaint())
//                            Marked.insert(Branch);
//                    }
//                    //标记
//                    return {Source};
//                }
//            };
//            return make_shared<TAFF>(BranchInst, Marked);
//        }
        // Otherwise we do not care and leave everything as it is
        return Identity<IFDSTaintAnalysis::d_t>::getInstance();
    }

    IFDSTaintAnalysis::FlowFunctionPtrType
    IFDSTaintAnalysis::getCallFlowFunction(IFDSTaintAnalysis::n_t CallSite,
                                           IFDSTaintAnalysis::f_t DestFun) {
        const auto *CS = llvm::cast<llvm::CallBase>(CallSite);
        // Check if a source or sink function is called:
        // We then can kill all data-flow facts not following the called function.
        // The respective taints or leaks are then generated in the corresponding
        // call to return flow function.
        if (isSourceCall(CS, DestFun) || isSinkCall(CS, DestFun)) {
            return KillAll<IFDSTaintAnalysis::d_t>::getInstance();
        }
        // Map the actual into the formal parameters
        return make_shared<LuweiMapFactsToCallee<D>>(expta,callptsmap, CS, DestFun);
    }

    IFDSTaintAnalysis::FlowFunctionPtrType IFDSTaintAnalysis::getRetFlowFunction(
            IFDSTaintAnalysis::n_t CallSite, IFDSTaintAnalysis::f_t CalleeFun,
            IFDSTaintAnalysis::n_t ExitStmt,
            [[maybe_unused]] IFDSTaintAnalysis::n_t RetSite) {
        // We must check if the return value and formal parameter are tainted, if so
        // we must taint all user's of the function call. We are only interested in
        // formal parameters of pointer/reference type.
        return make_shared<LuweiMapFactsToCaller<D>>(expta, retptsmap,
                llvm::cast<llvm::CallBase>(CallSite), CalleeFun, ExitStmt, true,
                        [](const llvm::Value* Formal) {
                            return Formal->getType()->isPointerTy();
                        });
        // All other stuff is killed at this point
    }

    IFDSTaintAnalysis::FlowFunctionPtrType
    IFDSTaintAnalysis::getCallToRetFlowFunction(
            IFDSTaintAnalysis::n_t CallSite,
            [[maybe_unused]] IFDSTaintAnalysis::n_t RetSite,
            set<IFDSTaintAnalysis::f_t> Callees) {
        const auto *CS = llvm::cast<llvm::CallBase>(CallSite);
        std::set<d_t> Gen;
        std::set<d_t> Leak;
        std::set<d_t> Kill;
        bool HasBody = false;

        for (const auto *Callee : Callees) {
            if (!Callee->isDeclaration()) {
                HasBody = true;
            }
        }
//  call指令产生taint的条件
//  1 只有声明无定义
//  2 不能是debug指令
//  3 需要有返回值
//  4 不能是某些call ins (例如calloc）
        if(HasBody == false){
             if(!CallSite->isDebugOrPseudoInst()){
                 if(auto callins = llvm::dyn_cast<const llvm::CallInst>(CallSite)){
                     if(!callins->getType()->isVoidTy()){
                        if(callins->getCalledFunction() && callins->getCalledFunction()->getName() != "calloc"){
                            return make_shared<LuweiGen<IFDSTaintAnalysis::d_t>>(callins, this->getZeroValue());
                        }
                     }
                 }
             }
        }

        return Identity<IFDSTaintAnalysis::d_t>::getInstance();
        // Process the effects of source or sink functions that are called
/*  for (const auto *Callee : Callees) {
    if (!Callee->isDeclaration()) {
      HasBody = true;
    }
    collectGeneratedFacts(Gen, Config, CS, Callee);
    collectLeakedFacts(Leak, Config, CS, Callee);
    collectSanitizedFacts(Kill, Config, CS, Callee);
  }

  if (HasBody && Gen.empty() && Leak.empty() && Kill.empty()) {
    // We have a normal function-call and the ret-FF is responsible for handling
    // pointer parameters. So we need to kill them here
    for (const auto &Arg : CS->arg_operands()) {
      if (Arg->getType()->isPointerTy()) {
        Kill.insert(Arg.get());
      }
    }
  }

  populateWithMayAliases(Gen);
  populateWithMayAliases(Leak);

  Gen.insert(LLVMZeroValue::getInstance());

  populateWithMustAliases(Kill);

  if (Gen.empty() && (!Leak.empty() || !Kill.empty())) {
    return makeLambdaFlow<d_t>([Leak{std::move(Leak)}, Kill{std::move(Kill)},
                                this, CallSite](d_t Source) -> std::set<d_t> {
      if (Leak.count(Source)) {
        Leaks[CallSite].insert(Source);
      }

      if (Kill.count(Source)) {
        return {};
      }

      return {Source};
    });
  }
  if (Kill.empty()) {
    return makeLambdaFlow<d_t>([Gen{std::move(Gen)}, Leak{std::move(Leak)},
                                this, CallSite](d_t Source) -> std::set<d_t> {
      if (LLVMZeroValue::isLLVMZeroValue(Source)) {
        return Gen;
      }

      if (Leak.count(Source)) {
        Leaks[CallSite].insert(Source);
      }

      return {Source};
    });
  }*/
/*  return makeLambdaFlow<d_t>([Gen{std::move(Gen)}, Leak{std::move(Leak)},
                              Kill{std::move(Kill)}, this,
                              CallSite](d_t Source) -> std::set<d_t> {
    if (LLVMZeroValue::isLLVMZeroValue(Source)) {
      return Gen;
    }

    if (Leak.count(Source)) {
      Leaks[CallSite].insert(Source);
    }

    if (Kill.count(Source)) {
      return {};
    }

    return {Source};
  });*/
        // Otherwise pass everything as it is

    }

    IFDSTaintAnalysis::FlowFunctionPtrType
    IFDSTaintAnalysis::getSummaryFlowFunction(
            [[maybe_unused]] IFDSTaintAnalysis::n_t CallSite,
            [[maybe_unused]] IFDSTaintAnalysis::f_t DestFun) {

//        llvm::errs()<<*CallSite<<"\n";
        //不需要手动排除debug的llvm ir。
        //但是需要手动判断一下函数是不是只有声明
//        if (DestFun->isDeclaration()){
//            if (!DestFun->getReturnType()->isVoidTy()){
//                if(auto CallIns = llvm::dyn_cast<llvm::CallInst>(CallSite)){
//                    return make_shared<LuweiGen<IFDSTaintAnalysis::d_t>>(CallSite, ZeroValue);
//                }
//            }
//        }
/* 无法在getSummaryFlowFunction实现declassify，因为无法组织到return site的传播，因此在processNormal
 * flow里实现是对的。
 * if (DestFun->getName().equals("taint_declassify")){
            auto callins = llvm::dyn_cast<llvm::CastInst>(CallSite);
            auto opnum = callins->getNumOperands();
            set<const llvm::Value*> res;
            for(unsigned i = 0; i< opnum; i++){
                res.insert(callins->getOperand(i));
            }
            return make_shared<KillIf<IFDSTaintAnalysis::d_t>>([res](IFDSTaintAnalysis::d_t Source){
                auto val = Source.value;
                if(res.find(val) != res.end()){
                    return true;
                }
                return false;
            });
        }*/
//        llvm::errs()<<"\n";

        // Don't use a special summary
        return nullptr;
    }

    InitialSeeds<IFDSTaintAnalysis::n_t, IFDSTaintAnalysis::d_t,
            IFDSTaintAnalysis::l_t>
    IFDSTaintAnalysis::initialSeeds() {
        PHASAR_LOG_LEVEL(DEBUG, "IFDSTaintAnalysis::initialSeeds()");
        // If main function is the entry point, commandline arguments have to be
        // tainted. Otherwise we just use the zero value to initialize the analysis.
        InitialSeeds<IFDSTaintAnalysis::n_t, IFDSTaintAnalysis::d_t,
                IFDSTaintAnalysis::l_t>
                Seeds;
        auto seeds = Config.makeInitialSeeds();
        for(auto mapit : seeds){
            for(auto val : mapit.second){
                if(val->getType()->isPointerTy())
                    Seeds.addSeed((mapit.first),D(val,1));
                else
                    Seeds.addSeed((mapit.first),D(val,0));
                /// init the pointer tainted and value tainted. Default
                /// only init the pointer tainted.
            }
        }
        LLVMBasedCFG C;

        auto wrapper_t = (*IRDB->getAllModules().begin())->getFunction(*EntryPoints.begin());
//        auto start = &*wrapper_t->begin()->begin();
        for(auto &BB : *wrapper_t){
            for(auto &I : BB){
                auto callins = llvm::dyn_cast<llvm::CallInst>(&I);
                if(callins){
                    if(!callins->getCalledFunction())
                        continue;
                    if(callins->getCalledFunction()->getName() == "vfct_taintseed"){
                        unsigned opszie = callins->getNumArgOperands();
                        for(const auto *SP : C.getStartPointsOf(wrapper_t)){
                            for(unsigned i = 0; i < opszie; i++){
                              auto taintseed = callins->getArgOperand(i);
                              if(taintseed->getType()->isPointerTy()){
                                Seeds.addSeed((SP),D(taintseed,1));
                              }else
                                Seeds.addSeed((SP),D(taintseed,0));
                            }
                        }

                    }
                }
            }
        }
/*  for (const auto &EntryPoint : EntryPoints) {
    Seeds.addSeed(&ICF->getFunction(EntryPoint)->front().front(),
                  getZeroValue());
    if (EntryPoint == "main") {
      set<IFDSTaintAnalysis::d_t> CmdArgs;
      for (const auto &Arg : ICF->getFunction(EntryPoint)->args()) {
        Seeds.addSeed(&ICF->getFunction(EntryPoint)->front().front(), &Arg);
      }
    }
  }*/
        return Seeds;
    }

    IFDSTaintAnalysis::d_t IFDSTaintAnalysis::createZeroValue() const {
        PHASAR_LOG_LEVEL(DEBUG, "IFDSTaintAnalysis::createZeroValue()");
        // create a special value to represent the zero value!
        return LuweiZeroValue::getInstance();
//    return LLVMZeroValue::getInstance();
    }

    bool IFDSTaintAnalysis::isZeroValue(IFDSTaintAnalysis::d_t FlowFact) const {
//  return LLVMZeroValue::isLLVMZeroValue(FlowFact.value);
        return LuweiZeroValue::isLuweiZeroValue(FlowFact);
    }


    void IFDSTaintAnalysis::printNode(llvm::raw_ostream &Os,
                                      IFDSTaintAnalysis::n_t Inst) const {
        Os << llvmIRToString(Inst);
    }

    void IFDSTaintAnalysis::printDataFlowFact(
            llvm::raw_ostream &Os, IFDSTaintAnalysis::d_t FlowFact) const {
        std::string statofTaint;
        if(FlowFact.isValueTaint())
            statofTaint = "Is Value Taint";
        else
            statofTaint = "Is Pointed Objected Taint";
        Os << llvmIRToString(FlowFact.value) << "   " << statofTaint;
    }

    void IFDSTaintAnalysis::printFunction(llvm::raw_ostream &Os,
                                          IFDSTaintAnalysis::f_t Fun) const {
        Os << Fun->getName().str();
    }

    void IFDSTaintAnalysis::emitTextReport(
            const SolverResults<n_t, d_t, BinaryDomain> & /*SR*/, llvm::raw_ostream &OS) {
        OS << "\n----- Finish the Analysis -----\n";
/*  if (Leaks.empty()) {
    OS << "No leaks found!\n";
  } else {
    for (const auto &Leak : Leaks) {
      OS << "At instruction\nIR  : " << llvmIRToString(Leak.first) << '\n';
      OS << "\n\nLeak(s):\n";
      for (const auto *LeakedValue : Leak.second) {
        OS << "IR  : ";
        // Get the actual leaked alloca instruction if possible
        if (const auto *Load = llvm::dyn_cast<llvm::LoadInst>(LeakedValue)) {
          OS << llvmIRToString(Load->getPointerOperand()) << '\n';
        } else {
          OS << llvmIRToString(LeakedValue) << '\n';
        }
      }
      OS << "-------------------\n";
    }
  }*/
    }

    llvm::hash_code hash_value(LuweiSource source) {
        return llvm::hash_combine(source.value, source.taintflg);
    }

    bool IFDSTaintAnalysis::isAlias(const llvm::Value* v1, const llvm::Value* v2){
        if(isZeroValue(v1) || isZeroValue(v2) )
            return false;
        return expta.isAlias(v1, v2);
    }



} // namespace psr
