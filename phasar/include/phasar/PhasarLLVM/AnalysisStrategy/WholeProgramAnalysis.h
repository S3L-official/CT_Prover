/******************************************************************************
 * Copyright (c) 2019 Philipp Schubert.
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of LICENSE.txt.
 *
 * Contributors:
 *     Philipp Schubert and others
 *****************************************************************************/

#ifndef PHASAR_PHASARLLVM_ANALYSISSTRATEGY_WHOLEPROGRAMANALYSIS_H_
#define PHASAR_PHASARLLVM_ANALYSISSTRATEGY_WHOLEPROGRAMANALYSIS_H_

#include <iosfwd>
#include <memory>
#include <set>
#include <string>
#include <type_traits>
#include <utility>

#include "phasar/DB/ProjectIRDB.h"
#include "phasar/PhasarLLVM/AnalysisStrategy/AnalysisSetup.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/IFDSIDESolverConfig.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Solver/IDESolver.h"

#include <regex>
namespace psr {

template <typename Solver, typename ProblemDescription,
          typename Setup = psr::DefaultAnalysisSetup>
class WholeProgramAnalysis {
  // Check if the solver is able to solve the given problem description
  static_assert(
      std::is_base_of_v<typename Solver::ProblemTy, ProblemDescription>,
      "Problem description does not match solver type!");
  // Check if the setup is a valid analysis setup
  static_assert(std::is_base_of_v<psr::AnalysisSetup, Setup>,
                "Setup is not a valid analysis setup!");

private:
  using TypeHierarchyTy = typename Setup::TypeHierarchyTy;
  using PointerAnalysisTy = typename Setup::PointerAnalysisTy;
  using CallGraphAnalysisTy = typename Setup::CallGraphAnalysisTy;
  using ConfigurationTy = typename ProblemDescription::ConfigurationTy;

  ProjectIRDB &IRDB;
  std::unique_ptr<TypeHierarchyTy> TypeHierarchy;
  std::unique_ptr<PointerAnalysisTy> PointerInfo;
  std::unique_ptr<CallGraphAnalysisTy> CallGraph;
  std::set<std::string> EntryPoints;
  ConfigurationTy *Config = nullptr;
  bool OwnsConfig = false;
  std::string ConfigPath;
  ProblemDescription ProblemDesc;
  Solver DataFlowSolver;

public:
  WholeProgramAnalysis(IFDSIDESolverConfig SolverConfig, ProjectIRDB &IRDB,
                       std::set<std::string> EntryPoints = {},
                       PointerAnalysisTy *PointerInfo = nullptr,
                       CallGraphAnalysisTy *CallGraph = nullptr,
                       TypeHierarchyTy *TypeHierarchy = nullptr)
      : IRDB(IRDB),
        TypeHierarchy(TypeHierarchy == nullptr
                          ? std::make_unique<TypeHierarchyTy>(IRDB)
                          : std::unique_ptr<TypeHierarchyTy>(TypeHierarchy)),
        PointerInfo(PointerInfo == nullptr
                        ? std::make_unique<PointerAnalysisTy>(IRDB)
                        : std::unique_ptr<PointerAnalysisTy>(PointerInfo)),
        CallGraph(CallGraph == nullptr
                      ? std::make_unique<CallGraphAnalysisTy>(
                            IRDB, CallGraphAnalysisType::OTF, EntryPoints,
                            this->TypeHierarchy.get(), this->PointerInfo.get())
                      : std::unique_ptr<CallGraphAnalysisTy>(CallGraph)),
        EntryPoints(EntryPoints),
        ProblemDesc(&IRDB, TypeHierarchy, CallGraph, PointerInfo, EntryPoints),
        DataFlowSolver(ProblemDesc) {
    if constexpr (has_setIFDSIDESolverConfig_v<ProblemDescription>) {
      ProblemDesc.setIFDSIDESolverConfig(SolverConfig);
    }
  }

  template <typename T = ProblemDescription,
            typename = typename std::enable_if_t<!std::is_same_v<
                typename T::ConfigurationTy, HasNoConfigurationType>>>
  WholeProgramAnalysis(IFDSIDESolverConfig SolverConfig, ProjectIRDB &IRDB,
                       ConfigurationTy *Config,
                       std::set<std::string> EntryPoints = {},
                       PointerAnalysisTy *PointerInfo = nullptr,
                       CallGraphAnalysisTy *CallGraph = nullptr,
                       TypeHierarchyTy *TypeHierarchy = nullptr)
      : IRDB(IRDB),
        TypeHierarchy(TypeHierarchy == nullptr
                          ? std::make_unique<TypeHierarchyTy>(IRDB)
                          : std::unique_ptr<TypeHierarchyTy>(TypeHierarchy)),
        PointerInfo(PointerInfo == nullptr
                        ? std::make_unique<PointerAnalysisTy>(IRDB)
                        : std::unique_ptr<PointerAnalysisTy>(PointerInfo)),
        CallGraph(CallGraph == nullptr
                      ? std::make_unique<CallGraphAnalysisTy>(
                            IRDB, CallGraphAnalysisType::OTF, EntryPoints,
                            this->TypeHierarchy.get(), this->PointerInfo.get())
                      : std::unique_ptr<CallGraphAnalysisTy>(CallGraph)),
        EntryPoints(EntryPoints), Config(Config),
        ProblemDesc(&IRDB, TypeHierarchy, CallGraph, PointerInfo, *Config,
                    EntryPoints),
        DataFlowSolver(ProblemDesc) {
    if constexpr (has_setIFDSIDESolverConfig_v<ProblemDescription>) {
      ProblemDesc.setIFDSIDESolverConfig(SolverConfig);
    }
  }

  template <typename T = ProblemDescription,
            typename = typename std::enable_if_t<!std::is_same_v<
                typename T::ConfigurationTy, HasNoConfigurationType>>>
  WholeProgramAnalysis(IFDSIDESolverConfig SolverConfig, ProjectIRDB &IRDB,
                       std::string ConfigPath,
                       std::set<std::string> EntryPoints = {},
                       PointerAnalysisTy *PointerInfo = nullptr,
                       CallGraphAnalysisTy *CallGraph = nullptr,
                       TypeHierarchyTy *TypeHierarchy = nullptr)
      : IRDB(IRDB),
        TypeHierarchy(TypeHierarchy == nullptr
                          ? std::make_unique<TypeHierarchyTy>(IRDB)
                          : std::unique_ptr<TypeHierarchyTy>(TypeHierarchy)),
        PointerInfo(PointerInfo == nullptr
                        ? std::make_unique<PointerAnalysisTy>(IRDB)
                        : std::unique_ptr<PointerAnalysisTy>(PointerInfo)),
        CallGraph(CallGraph == nullptr
                      ? std::make_unique<CallGraphAnalysisTy>(
                            IRDB, CallGraphAnalysisType::OTF, EntryPoints,
                            this->TypeHierarchy.get(), this->PointerInfo.get())
                      : std::unique_ptr<CallGraphAnalysisTy>(CallGraph)),
        EntryPoints(EntryPoints), Config(new ConfigurationTy(ConfigPath)),
        OwnsConfig(true), ConfigPath(ConfigPath),
        ProblemDesc(&IRDB, TypeHierarchy, CallGraph, PointerInfo, *Config,
                    EntryPoints),
        DataFlowSolver(ProblemDesc) {
    if constexpr (has_setIFDSIDESolverConfig_v<ProblemDescription>) {
      ProblemDesc.setIFDSIDESolverConfig(SolverConfig);
    }
  }

  WholeProgramAnalysis(const WholeProgramAnalysis &) = delete;
  WholeProgramAnalysis(WholeProgramAnalysis &&) = delete;
  WholeProgramAnalysis &operator=(WholeProgramAnalysis &) = delete;
  WholeProgramAnalysis &operator=(WholeProgramAnalysis &&) = delete;

  ~WholeProgramAnalysis() {
    if (OwnsConfig) {
      delete Config;
      Config = nullptr;
    }
  }

  void solve() { DataFlowSolver.solve(); }

  void operator()() { solve(); }

  void dumpResults(llvm::raw_ostream &OS = llvm::outs()) {
    DataFlowSolver.dumpResults(OS);
  }

    auto getdumpresult(std::set<llvm::Instruction*>& res, std::set<llvm::Instruction*>& res2, std::set<llvm::Instruction*>& res3){

        std::set<llvm::Module *> mds = IRDB.getAllModules();
        for(auto M : mds){
            for(auto &F : *M)
                for(auto &BB : F)
                    for(auto &I : BB){
                        if(llvm::isa<llvm::DbgInfoIntrinsic>(&I))
                            continue;

                        const llvm::Value* val = nullptr;
                        if(const auto *Load = llvm::dyn_cast<llvm::LoadInst>(&I)){
                            val = Load->getPointerOperand();
                        } else if(const auto *Store = llvm::dyn_cast<llvm::StoreInst>(&I)){
                            val = Store->getPointerOperand();
                        }else if(const llvm::BranchInst *Br = llvm::dyn_cast<llvm::BranchInst>(&I)){
                            if (Br->isUnconditional())
                                continue;
                            val = Br->getCondition();
//                        }else if(const llvm::CallInst* call = llvm::dyn_cast<llvm::CallInst>(&I)){
//                            if()
                        }
                        if(val){
                            typename ProblemDescription::d_t d(val,0);
                            auto taintres = DataFlowSolver.resultsAt(&I);
                            if(taintres.find(d) != taintres.end())
                                res.insert(&I);
                        }


                        if(I.isTerminator()){
                            continue;
                        }else{
                            auto val2 = &I;
                            typename ProblemDescription::d_t d(val2,0);
                            typename ProblemDescription::d_t d2(val2,1);
                            auto ts = DataFlowSolver.resultAtInSparsePropgate(&I, d);
                            auto ts2 = DataFlowSolver.resultAtInSparsePropgate(&I, d2);
                            if(ts){
                                res2.insert(&I);
                            }
                            if(ts2){
                                res3.insert(&I);
                            }
                            if(I.getType()->isPointerTy()){
                                auto &res = DataFlowSolver.getvalues(&I);
                                for(auto it = res.begin(); it != res.end(); it++){
                                    if(it->first.value->getType()->isPointerTy()){
                                      if(ProblemDesc.isAlias(it->first.value, &I)){
                                        res3.insert(&I);
                                        break;
                                      }
                                    }
                                }
                            }
//                            if(llvm::dyn_cast<llvm::GetElementPtrInst>(&I)){
//                                res3.insert(&I);
//                            }
                        }
                    }
        }
        //public_output
        auto wrapper_t = (*IRDB.getAllModules().begin())->getFunction("public_output");
        if(wrapper_t){
            for(auto &BB : *wrapper_t){
                for(auto &I : BB){
                    if(llvm::dyn_cast<llvm::ReturnInst>(&I)){
                        auto val2 = &I;
                        typename ProblemDescription::d_t d(val2,0);
                        typename ProblemDescription::d_t d2(val2,1);
                        auto ts = DataFlowSolver.resultAtInSparsePropgate(&I, d);
                        auto ts2 = DataFlowSolver.resultAtInSparsePropgate(&I, d2);
                        if(ts){
                            res.insert(&I);
                        }
                    }
                }
            }
        }


    }

    auto getTaintedCalled(){
      std::map<llvm::Instruction*, std::vector<bool>> res;
        std::set<llvm::Module *> mds = IRDB.getAllModules();
        for(auto M : mds) {
            for (auto &F: *M)
                for (auto &BB: F)
                    for (auto &I: BB) {
                        if(auto *Callins = llvm::dyn_cast<llvm::CallInst>(&I)){

                            auto fun = Callins->getCalledFunction();
                            if(fun == NULL){
//                                llvm::errs()<<"Null function\n";
//                                llvm::errs()<<*Callins<<"\n";
                                continue;
                            }

                            std::string name = Callins->getCalledFunction()->getName().str();

                            std::regex pattern("(memset|memcpy|memcmp)");

                            if(std::regex_search(name, pattern) || name == "free" || name == "malloc"){

                            }
                            else{
                                continue;
                            }

                            auto taint_res = DataFlowSolver.resultsAt(I.getNextNonDebugInstruction());
//                            llvm::errs()<<*Callins<<"\n";
                            auto paranum = Callins->getNumArgOperands();
                            std::vector<bool> mark;
                            bool flg = false;
                            for(unsigned int i = 0; i < paranum; i++){
                                const llvm::Value* val = Callins->getOperand(i);
                                typename ProblemDescription::d_t d(val,0);
                                if(taint_res.find(d) != taint_res.end()){
                                    mark.push_back(true);
                                    flg  = true;
                                }else{
                                    mark.push_back(false);
                                }
                            }
                            if(flg){
                                res.insert(std::make_pair(Callins, mark));
                            }
                        }
                    }
        }
        return res;
  }

  void emitTextReport(llvm::raw_ostream &OS = llvm::outs()) {
    DataFlowSolver.emitTextReport(OS);
  }

  void emitGraphicalReport(llvm::raw_ostream &OS = llvm::outs()) {
    DataFlowSolver.emitGraphicalReport(OS);
  }

  void emitESG(llvm::raw_ostream &OS = llvm::outs()) {
    // if (std::is_base_of_v<typename Solver::ProblemTy, ProblemDescription>) {
    //   DataFlowSolver.emitESGAsDot(OS);
    // }
  }

  void releaseAllHelperAnalyses() {
    releasePointerInformation();
    releaseCallGraph();
    releaseTypeHierarchy();
  }

  PointerAnalysisTy *releasePointerInformation() {
    return PointerInfo.release();
  }

  CallGraphAnalysisTy *releaseCallGraph() { return CallGraph.release(); }

  TypeHierarchyTy *releaseTypeHierarchy() { return TypeHierarchy.release(); }
};

} // namespace psr

#endif
