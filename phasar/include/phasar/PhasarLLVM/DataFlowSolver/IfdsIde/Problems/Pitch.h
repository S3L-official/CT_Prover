//
// Created by Tip on 2022/6/12.
//

#ifndef PHASAR_PITCH_H
#define PHASAR_PITCH_H

#include <phasar/PhasarLLVM/AnalysisStrategy/WholeProgramAnalysis.h>
//#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Problems/IFDSTaintAnalysis.h"
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Solver/IFDSSolver.h"
class Pitch {
public:
    Pitch(){};

    void run(std::set<llvm::Instruction*>, std::set<llvm::Instruction*>, std::set<llvm::Instruction*>, std::map<llvm::Instruction*, std::vector<bool>>, std::set<llvm::Module *>, std::set<std::string>);

    void runtest(std::vector<psr::Table<llvm::Instruction const*,llvm::Value const*,psr::BinaryDomain>::Cell>);

    void st();

    int collection(llvm::Module* M, int &loc);

    void Init();

    bool runOnFunction(llvm::Function &);

    llvm::CallInst* getCallins();

    llvm::Function* getFunction(const llvm::Value*, std::set<std::string>& flags);


    llvm::Module* M;

private:
    llvm::Function* smack_code;
    std::vector<llvm::Value*> startpara;
    std::vector<llvm::Value*> endpara;
};


#endif //PHASAR_PITCH_H