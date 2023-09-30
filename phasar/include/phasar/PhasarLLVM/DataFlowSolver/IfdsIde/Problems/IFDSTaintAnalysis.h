/******************************************************************************
 * Copyright (c) 2017 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#ifndef PHASAR_PHASARLLVM_DATAFLOWSOLVER_IFDSIDE_PROBLEMS_IFDSTAINTANALYSIS_H
#define PHASAR_PHASARLLVM_DATAFLOWSOLVER_IFDSIDE_PROBLEMS_IFDSTAINTANALYSIS_H

#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/IFDSTabulationProblem.h"
#include "phasar/PhasarLLVM/Domain/AnalysisDomain.h"
#include "phasar/PhasarLLVM/TaintConfig/TaintConfig.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/LLVMZeroValue.h"
#include <iostream>
#include <map>
#include <memory>
#include <set>
#include <string>

#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Problems/ExternPTA.h"

// Forward declaration of types for which we only use its pointer or ref type
namespace llvm {
    class Instruction;
    class Function;
    class StructType;
    class Value;
} // namespace llvm

namespace psr {

    class LLVMBasedICFG;
    class LLVMTypeHierarchy;
    class LLVMPointsToInfo;
    struct HasNoConfigurationType;

/**
 * This analysis tracks data-flows through a program. Data flows from
 * dedicated source functions, which generate tainted values, into
 * dedicated sink functions. A leak is reported once a tainted value
 * reached a sink function.
 *
 * @see TaintConfiguration on how to specify your own
 * taint-sensitive source and sink functions.
 */

    class LuweiSource{
    public:

        LuweiSource() = default;
        LuweiSource(const llvm::Value* val) : value(val), taintflg(0){}
        LuweiSource(const llvm::Value* val, bool settaint) : value(val), taintflg(settaint){}
        LuweiSource(const llvm::Value* val, LuweiSource& source) : value(val), taintflg(source.taintflg){}

        inline bool operator<(LuweiSource Target) const{
            return this->value < Target.value ||
            (this->value == Target.value && this->taintflg < Target.taintflg);
        }

        inline bool operator==(LuweiSource Target) const{
            return this->value == Target.value && this->taintflg == Target.taintflg;
        }

        inline bool operator==(const llvm::Value* value) const{
            return this->value == value;
        }

        inline bool operator!=(const llvm::Value* value) const{
            return !(this->value == value);
        }

        inline bool operator!=(LuweiSource Target) const{
            return !(*this == Target);
        }

        auto users() {
            return value->users();
        }

        auto isPointerTy(){
            return value->getType()->isPointerTy();
        }

        friend llvm::raw_ostream &operator<<(llvm::raw_ostream &OS, LuweiSource Target);

        bool isValueTaint() const{
            return taintflg == 0;
        }

        bool isObjectTaint() const{
            return taintflg;
        }

        const llvm::Value* value;
        bool taintflg;
    };

    llvm::hash_code hash_value(LuweiSource source);

    class LuweiZeroValue{
    private:
        LuweiZeroValue(){};
        ~LuweiZeroValue() = default;

    public:
        static LuweiSource getInstance(){
            return LuweiSource(LLVMZeroValue::getInstance());
        }

        static bool isLuweiZeroValue(LuweiSource& fact){
            return LLVMZeroValue::isLLVMZeroValue(fact.value);
        }
    };


    struct LuweiIFDSAnalysisDomain : public LLVMIFDSAnalysisDomainDefault{
        using d_t = LuweiSource;
    };

    class IFDSTaintAnalysis
            : public IFDSTabulationProblem<LuweiIFDSAnalysisDomain> {
    private:

      SVF::ExternPTA expta;
      std::map<const llvm::Value*, std::vector<const llvm::Value*>> callptsmap;
      std::map<const llvm::Value*, std::vector<const llvm::Value*>> retptsmap;

        const TaintConfig &Config;

        bool isSourceCall(const llvm::CallBase *CB,
                          const llvm::Function *Callee) const;
        bool isSinkCall(const llvm::CallBase *CB, const llvm::Function *Callee) const;
        bool isSanitizerCall(const llvm::CallBase *CB,
                             const llvm::Function *Callee) const;

        void populateWithMayAliases(std::set<d_t> &Facts) const;
        void populateWithMustAliases(std::set<d_t> &Facts) const;

    public:
        // Setup the configuration type
        using ConfigurationTy = TaintConfig;
        /// Holds all leaks found during the analysis
        std::map<n_t, std::set<d_t>> Leaks;
//        std::set<n_t> Marked;

        /**
         *
         * @param icfg
         * @param TSF
         * @param EntryPoints
         */
        IFDSTaintAnalysis(const ProjectIRDB *IRDB, const LLVMTypeHierarchy *TH,
                          const LLVMBasedICFG *ICF, LLVMPointsToInfo *PT,
                          const TaintConfig &Config,
                          std::set<std::string> EntryPoints = {"main"});

        ~IFDSTaintAnalysis() override = default;

        FlowFunctionPtrType getNormalFlowFunction(n_t Curr, n_t Succ) override;

        FlowFunctionPtrType getCallFlowFunction(n_t CallSite, f_t DestFun) override;

        FlowFunctionPtrType getRetFlowFunction(n_t CallSite, f_t CalleeFun,
                                               n_t ExitStmt, n_t RetSite) override;

        FlowFunctionPtrType getCallToRetFlowFunction(n_t CallSite, n_t RetSite,
                                                     std::set<f_t> Callees) override;

        FlowFunctionPtrType getSummaryFlowFunction(n_t CallSite,
                                                   f_t DestFun) override;

        InitialSeeds<n_t, d_t, l_t> initialSeeds() override;

        [[nodiscard]] d_t createZeroValue() const override;

        bool isZeroValue(d_t FlowFact) const override;

        void printNode(llvm::raw_ostream &OS, n_t Inst) const override;

        void printDataFlowFact(llvm::raw_ostream &OS, d_t FlowFact) const override;

        void printFunction(llvm::raw_ostream &OS, f_t Fun) const override;

        void emitTextReport(const SolverResults<n_t, d_t, BinaryDomain> &SR,
                            llvm::raw_ostream &OS = llvm::outs()) override;
        bool isAlias(const llvm::Value* v1, const llvm::Value* v2);
    };

    template <typename D, typename Container = std::set<D>>
    class LuweiMapFactsToCallee : public FlowFunction<D, Container> {
        using typename FlowFunction<D, Container>::container_type;

    protected:
        SVF::ExternPTA& expta;
        std::map<const llvm::Value*, std::vector<const llvm::Value*>> &callptsmap;
        const llvm::Function *DestFun;
        bool PropagateGlobals;
        std::vector<const llvm::Value *> Actuals{};
        std::vector<const llvm::Argument *> Formals{};
        std::function<bool(const llvm::Value *)> ActualPredicate;
        std::function<bool(const llvm::Argument *)> FormalPredicate;
        const llvm::Value *CallInstr;
        const bool PropagateZeroToCallee;
        const bool PropagateRetToCallee;

    public:
        LuweiMapFactsToCallee(
                SVF::ExternPTA& expta,
                std::map<const llvm::Value*, std::vector<const llvm::Value*>>& callptsmap,
                const llvm::CallBase *CallSite, const llvm::Function *DestFun,
                bool PropagateGlobals = true,
                std::function<bool(const llvm::Value *)> ActualPredicate =
                [](const llvm::Value *) { return true; },
                std::function<bool(const llvm::Argument *)> FormalPredicate =
                [](const llvm::Argument *) { return true; },
                const bool PropagateZeroToCallee = true,
                const bool PropagateRetToCallee = false)
                : expta(expta), callptsmap(callptsmap), DestFun(DestFun), PropagateGlobals(PropagateGlobals),
                  ActualPredicate(std::move(ActualPredicate)),
                  FormalPredicate(std::move(FormalPredicate)), CallInstr(CallSite),
                  PropagateZeroToCallee(PropagateZeroToCallee),
                  PropagateRetToCallee(PropagateRetToCallee) {
            // Set up the actual parameters
            for (const auto &Actual : CallSite->args()) {
                Actuals.push_back(Actual);
            }
            // Set up the formal parameters
            for (const auto &Formal : DestFun->args()) {
                Formals.push_back(&Formal);
            }
        }

        ~LuweiMapFactsToCallee() override = default;

        //v1 to be the father
        bool isPartial(const llvm::Value* v1, const llvm::Value* v2){
            while (true){
                if(expta.isAlias(v1, v2) || v1 == v2)
                  return true;
                const llvm::GetElementPtrInst *gep = llvm::dyn_cast<llvm::GetElementPtrInst>(v2);
                const llvm::CastInst *cast = llvm::dyn_cast<llvm::CastInst>(v2);
                const llvm::LoadInst *load = llvm::dyn_cast<llvm::LoadInst>(v2);
                if(gep){
                  v2 = gep->getPointerOperand();
                }else if(cast){
                  v2 = cast->getOperand(0);
                }else if(load){
                  v2 = load->getPointerOperand();
                }
                else
                  break;
            }
            return false;
        }

        container_type computeTargets(D Source) override {
            // If DestFun is a declaration we cannot follow this call, we thus need to
            // kill everything
            if (DestFun->isDeclaration()) {
                return {};
            }
            // Pass ZeroValue as is, if desired
            if (LuweiZeroValue::isLuweiZeroValue(Source)) {
                if (PropagateZeroToCallee) {
                    return {Source};
                }
                return {};
            }
            container_type Res;
            // Pass global variables as is, if desired
            // Globals could also be actual arguments, then the formal argument needs to
            // be generated below.
            // Need llvm::Constant here to cover also ConstantExpr and ConstantAggregate
            if (PropagateGlobals && llvm::isa<llvm::Constant>(Source.value)) {
                Res.insert(Source);
            }
            // Handle back propagation of return value in backwards analysis.
            // We add it to the result here. Later, normal flow in callee can identify
            // it
            if (PropagateRetToCallee) {
                if (Source.value == CallInstr) {
                    Res.insert(Source);
                }
            }
            // Handle C-style varargs functions
            if (DestFun->isVarArg()) {
                // Map actual parameters to corresponding formal parameters.
                for (unsigned Idx = 0; Idx < Actuals.size(); ++Idx) {
                    if (Source.value == Actuals[Idx] && ActualPredicate(Actuals[Idx])) {
                        if (Idx >= DestFun->arg_size()) {
                            // Over-approximate by trying to add the
                            //   alloca [1 x %struct.__va_list_tag], align 16
                            // to the results
                            // find the allocated %struct.__va_list_tag and generate it
                            for (const auto &BB : *DestFun) {
                                for (const auto &I : BB) {
                                    if (const auto *Alloc = llvm::dyn_cast<llvm::AllocaInst>(&I)) {
                                        if (Alloc->getAllocatedType()->isArrayTy() &&
                                            Alloc->getAllocatedType()->getArrayNumElements() > 0 &&
                                            Alloc->getAllocatedType()
                                                    ->getArrayElementType()
                                                    ->isStructTy() &&
                                            Alloc->getAllocatedType()
                                                    ->getArrayElementType()
                                                    ->getStructName() == "struct.__va_list_tag") {
                                            Res.insert(D(Alloc,Source));
                                        }
                                    }
                                }
                            }
                        } else {
                            assert(Idx < Formals.size() &&
                                   "Out of bound access to formal parameters!");
                            if (FormalPredicate(Formals[Idx])) {
                                Res.insert(D(Formals[Idx], Source)); // corresponding formal
                            }
                        }
                    }
                }
            }
            // Handle ordinary case
            // Map actual parameters to corresponding formal parameters.
            for (unsigned Idx = 0; Idx < Actuals.size() && Idx < DestFun->arg_size();
                 ++Idx) {
                if (Source.value == Actuals[Idx] && ActualPredicate(Actuals[Idx])) {
                    assert(Idx < Formals.size() &&
                           "Out of bound access to formal parameters!");
                    Res.insert(D(Formals[Idx],Source));
                }
                //处理field sensitive的额外传入的fact
                if(expta.isAlias(Actuals[Idx], Source.value) && ActualPredicate(Actuals[Idx])) {
                    std::vector<const llvm::Value*>& pts = callptsmap[DestFun];
                    bool flg = false;
                    for(auto i : pts){
                        if(expta.isAlias(Source.value, i)){
                            flg = true;
                            break;
                        }
                    }
                    if(flg){

                    }else{
                        pts.push_back(Source.value);
                        Res.insert(Source);
                    }
                }
            }
            return Res;
        }
    };

    template <typename D, typename Container = std::set<D>>
    class LuweiMapFactsToCaller : public FlowFunction<D, Container> {
        using typename FlowFunction<D, Container>::container_type;

    private:
        const llvm::CallBase *CallSite;
        const llvm::Function *CalleeFun;
        const llvm::ReturnInst *ExitInst;
        bool PropagateGlobals;
        const bool PropagateZeroToCaller;
        std::vector<const llvm::Value *> Actuals;
        std::vector<const llvm::Value *> Formals;
        std::function<bool(const llvm::Value *)> ParamPredicate;
        std::function<bool(const llvm::Function *)> ReturnPredicate;
        SVF::ExternPTA& expta;
        std::map<const llvm::Value*, std::vector<const llvm::Value*>> &retptsmap;

    public:
        LuweiMapFactsToCaller(SVF::ExternPTA& expta,
                std::map<const llvm::Value*, std::vector<const llvm::Value*>> &retptsmap,
                const llvm::CallBase *CallSite, const llvm::Function *CalleeFun,
                const llvm::Instruction *ExitInst, bool PropagateGlobals = true,
                std::function<bool(const llvm::Value *)> ParamPredicate =
                [](const llvm::Value *) { return true; },
                std::function<bool(const llvm::Function *)> ReturnPredicate =
                [](const llvm::Function *) { return true; },
                bool PropagateZeroToCaller = true)
                : expta(expta), retptsmap(retptsmap), CallSite(CallSite), CalleeFun(CalleeFun),
                  ExitInst(llvm::dyn_cast<llvm::ReturnInst>(ExitInst)),
                  PropagateGlobals(PropagateGlobals),
                  PropagateZeroToCaller(PropagateZeroToCaller),
                  ParamPredicate(std::move(ParamPredicate)),
                  ReturnPredicate(std::move(ReturnPredicate)) {
            assert(ExitInst && "Should not be null");
            // Set up the actual parameters
            for (const auto &Actual : CallSite->args()) {
                Actuals.push_back(Actual);
            }
            // Set up the formal parameters
            for (const auto &Formal : CalleeFun->args()) {
                Formals.push_back(&Formal);
            }
        }

        ~LuweiMapFactsToCaller() override = default;

        //v1 to be the father
        bool isPartial(const llvm::Value* v1, const llvm::Value* v2){
            while (true){
                if(expta.isAlias(v1, v2) || v1 == v2)
                    return true;
                const llvm::GetElementPtrInst *gep = llvm::dyn_cast<llvm::GetElementPtrInst>(v2);
                const llvm::CastInst *cast = llvm::dyn_cast<llvm::CastInst>(v2);
                const llvm::LoadInst *load = llvm::dyn_cast<llvm::LoadInst>(v2);
                if(gep){
                    v2 = gep->getPointerOperand();
                }else if(cast){
                    v2 = cast->getOperand(0);
                }else if(load){
                    v2 = load->getPointerOperand();
                }
                else
                    break;
            }
            return false;
        }

        // std::set<const llvm::Value *>
        container_type computeTargets(D Source) override {
            assert(!CalleeFun->isDeclaration() &&
                   "Cannot perform mapping to caller for function declaration");
            // Pass ZeroValue as is, if desired
            if (LuweiZeroValue::isLuweiZeroValue(Source)) {
                if (PropagateZeroToCaller) {
                    return {Source};
                }
                return {};
            }
            // Pass global variables as is, if desired
            // Need llvm::Constant here to cover also ConstantExpr and ConstantAggregate
            if (PropagateGlobals && llvm::isa<llvm::Constant>(Source.value)) {
                return {Source};
            }
            // Do the parameter mapping
            container_type Res;
            // Handle C-style varargs functions
            if (CalleeFun->isVarArg()) {
                const llvm::Instruction *AllocVarArg;
                // Find the allocation of %struct.__va_list_tag
                for (const auto &BB : *CalleeFun) {
                    for (const auto &I : BB) {
                        if (const auto *Alloc = llvm::dyn_cast<llvm::AllocaInst>(&I)) {
                            if (Alloc->getAllocatedType()->isArrayTy() &&
                                Alloc->getAllocatedType()->getArrayNumElements() > 0 &&
                                Alloc->getAllocatedType()
                                        ->getArrayElementType()
                                        ->isStructTy() &&
                                Alloc->getAllocatedType()
                                        ->getArrayElementType()
                                        ->getStructName() == "struct.__va_list_tag") {
                                AllocVarArg = Alloc;
                                // TODO break out this nested loop earlier (without goto ;-)
                            }
                        }
                    }
                }
                // Generate the varargs things by using an over-approximation
                if (Source.value == AllocVarArg) {
                    for (unsigned Idx = Formals.size(); Idx < Actuals.size(); ++Idx) {
                        Res.insert(D(Actuals[Idx], Source));
                    }
                }
            }
            // Handle ordinary case
            // Map formal parameter into corresponding actual parameter.
            for (unsigned Idx = 0; Idx < Formals.size(); ++Idx) {
                if (Source == Formals[Idx] && ParamPredicate(Formals[Idx])) {
                    Res.insert(D(Actuals[Idx], Source));
//                    Res.insert(Actuals[Idx]); // corresponding actual
                }
                //处理field sensitive的额外传入的fact
                if(expta.isAlias(Formals[Idx],Source.value) && ParamPredicate(Formals[Idx])) {
                    std::vector<const llvm::Value*>& pts = retptsmap[CallSite];
                    bool flg = false;
                    for(auto i : pts){
                        if(expta.isAlias(Source.value, i)){
                            flg = true;
                            break;
                        }
                    }
                    if(flg){

                    }else{
                        pts.push_back(Source.value);
                        Res.insert(Source);
                    }
                }
            }
            // Collect return value facts
            if (ExitInst != nullptr && Source == ExitInst->getReturnValue() &&
                ReturnPredicate(CalleeFun)) {
//                Res.insert(CallSite);
                Res.insert(D(CallSite, Source));
            }
            return Res;
        }
    };

    template <typename D, typename Container = std::set<D>>
    class LuweiGenIf : public FlowFunction<D, Container> {
    public:
        using typename FlowFunction<D, Container>::container_type;

        LuweiGenIf(D GenValue, std::function<bool(D)> Predicate)
                : GenValues({GenValue}), Predicate(std::move(Predicate)) {}

        LuweiGenIf(container_type GenValues, std::function<bool(D)> Predicate)
                : GenValues(std::move(GenValues)), Predicate(std::move(Predicate)) {}

        ~LuweiGenIf() override = default;

        container_type computeTargets(D Source) override {
            if (Predicate(Source)) {
                container_type ToGenerate;
                ToGenerate.insert(Source);
//                ToGenerate.insert(GenValues.begin(), GenValues.end());
                for(auto it = GenValues.begin(),eit = GenValues.end(); it != eit; it++){
                    ToGenerate.insert(D((*it).value, Source));
                }
                return ToGenerate;
            }
            return {Source};
        }

    protected:
        container_type GenValues;
        std::function<bool(D)> Predicate;
    };

// 用在calltoretflow 中，gen会同时生成value 和 pointer taint
    template <typename D, typename Container = std::set<D>>
    class LuweiGen : public FlowFunction<D, Container> {
        using typename FlowFunction<D, Container>::container_type;

    protected:
        D GenValue;
        D ZeroValue;

    public:
        LuweiGen(D GenValue, D ZeroValue) : GenValue(GenValue), ZeroValue(ZeroValue) {}
        ~LuweiGen() override = default;

        container_type computeTargets(D Source) override {
            if (Source == ZeroValue) {
                container_type ToGenerate;
                ToGenerate.insert(Source);
                ToGenerate.insert(D(GenValue.value,0));
                ToGenerate.insert(D(GenValue.value,1));
                return ToGenerate;
            }
            return {Source};
        }
    };
} // namespace psr

/*namespace llvm {

    template <> struct DenseMapInfo<psr::AbstractMemoryLocation> {
        static inline psr::AbstractMemoryLocation getEmptyKey() {
            return {
                    DenseMapInfo<psr::detail::AbstractMemoryLocationImpl *>::getEmptyKey()};
        }
        static inline psr::AbstractMemoryLocation getTombstoneKey() {
            return {DenseMapInfo<
                    psr::detail::AbstractMemoryLocationImpl *>::getTombstoneKey()};
        }
        static unsigned getHashValue(psr::AbstractMemoryLocation Val) {
            return hash_value(Val);
        }
        static bool isEqual(psr::AbstractMemoryLocation LHS,
                            psr::AbstractMemoryLocation RHS) {
            return LHS.operator->() == RHS.operator->();
        }
    };

} // namespace llvm*/

namespace std {
    template <> struct hash<psr::LuweiSource> {
        size_t operator()(const psr::LuweiSource &Val) const {
            return hash_value(Val);
        }
    };
} //namespace std

#endif
