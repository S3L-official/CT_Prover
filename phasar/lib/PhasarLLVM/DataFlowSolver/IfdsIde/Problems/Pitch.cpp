//
// Created by Tip on 2022/6/12.
//
#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Problems/Pitch.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"
#include "algorithm"
#include "llvm/IR/InstIterator.h"

using namespace llvm;
void Pitch::run(std::set<llvm::Instruction*> Inss, std::set<llvm::Instruction*> res2, std::set<llvm::Instruction*> res3, std::map<llvm::Instruction*, std::vector<bool>> taintedcalls, std::set<llvm::Module *> Modules, std::set<std::string> entrypoints){
    M = *Modules.begin();
    int all = 0;
    // taint 是内存访问和分支变量，called taint是特殊函数处
    for(auto ins : Inss){
        auto F = ins->getFunction();
        LLVMContext& C = F->getContext();
        MDNode* N = MDNode::get(C, MDString::get(C, "Tainted"));
        (*ins).setMetadata("Tainted", N);
        llvm::outs()<<*ins<<"\n";
        all = all + 1;
    }
    for(auto ins : res2){
        auto F = ins->getFunction();
        LLVMContext& C = F->getContext();
        MDNode* N = MDNode::get(C, MDString::get(C, "ValueTainted"));
        (*ins).setMetadata("ValueTainted", N);
//        llvm::outs()<<*ins<<"\n";
    }
    for(auto ins : res3){
        auto F = ins->getFunction();
        LLVMContext& C = F->getContext();
        MDNode* N = MDNode::get(C, MDString::get(C, "PointTainted"));
        (*ins).setMetadata("PointTainted", N);
//        llvm::outs()<<*ins<<"\n";
    }

    for(auto val : taintedcalls){
        auto ins = val.first;
        auto F = ins->getFunction();
        LLVMContext& C = F->getContext();
        std::string s;
        for(auto fg : val.second){
            if(fg)
                s += "1";
            else
                s += "0";
        }
        MDNode* N = MDNode::get(C, MDString::get(C, s));
        (*ins).setMetadata("CalledTainted", N);
        llvm::outs()<<*ins<<"\n";
        all += 1;
    }

/*
    M = *Modules.begin();


    for(auto &F : M->getFunctionList()){
        LLVMContext& C = F.getContext();
        for (auto I = inst_begin(F), E = inst_end(F); I != E; ++I) {
            if(llvm::isa<llvm::LoadInst>(*I)){
                MDNode* N = MDNode::get(C, MDString::get(C, "Tainted"));
                (*I).setMetadata("Tainted", N);
            }
        }
    }



    std::set<std::string> flags;
    std::set<const llvm::Value*> valueset;
*/
    std::string mdname(M->getName());
    mdname.erase(mdname.end()-5,mdname.end());
//    llvm::errs()<<mdname;
    std::string entry;
    for(auto s : entrypoints){
        entry = entry + s;
    }

//    std::string OutputFilename = mdname + "_" + entry + ".ll";
    std::string OutputFilename = mdname + "-t.ll";
    std::error_code EC;
    llvm::raw_fd_ostream myop(OutputFilename,EC,llvm::sys::fs::CD_CreateAlways);
    myop<<*M;

    llvm::outs()<<"all taint position!\n";
    llvm::outs()<<all;
    return;
}

int Pitch::collection(llvm::Module* M, int& loc){
    int all = 0;
    for(auto &fun : *M)
        for(auto &BB : fun)
            for(auto &I : BB){
                loc++;
                if( auto *load = dyn_cast<llvm::LoadInst>(&I) )
                    all++;
                else if( auto *store = dyn_cast<llvm::StoreInst>(&I) )
                    all++;
                else if( auto *ICMP = dyn_cast<llvm::ICmpInst>(&I) )
                    all++;
            }
    return all;
}

Function* Pitch::getFunction(const Value* value, std::set<std::string>& flags){
    llvm::Function* func;
    std::string type_str;
    llvm::raw_string_ostream rso(type_str);
    value->getType()->print(rso);
    std::string funcname = rso.str();
    funcname = "taint_" + funcname;
    replace(funcname.begin(),funcname.end(),'*','p');
//          llvm::errs()<<funcname;
    if(flags.find(funcname) == flags.end()){
        flags.insert(funcname);
        std::vector<llvm::Type*> paratype = {value->getType()};
        auto functionty = llvm::FunctionType::get(llvm::Type::getVoidTy(M->getContext()),paratype,false);
        func = llvm::Function::Create(functionty,llvm::Function::ExternalLinkage,funcname,M);

//        llvm::outs()<<funcname<<"\n";
//        llvm::outs()<<*func;
//        llvm::outs()<<*M;
    } else{
        func = M->getFunction(funcname);
//              llvm::outs()<<*func;
    }
    return func;
}

///向llvm ir添加函数metadata的方法
void Pitch::runtest(std::vector<psr::Table<llvm::Instruction const*,llvm::Value const*,psr::BinaryDomain>::Cell> cells){
for (unsigned i = 0; i < cells.size(); ++i) {
auto curr = cells[i].getRowKey();
const llvm::Instruction* prev;
if (prev != curr) {
prev = curr;
llvm::outs() << "\n\nN: " << *prev<< '\n\n';
}
llvm::outs() << "\tD: " << *cells[i].getColumnKey()<<'\n';
}

for (unsigned i = 0; i < cells.size(); ++i) {
auto curr = cells[i].getRowKey();

llvm::outs() << "\tD: " << *cells[i].getColumnKey()<<'\n';
}
}

void Pitch::st(){
    llvm::outs()<<"Hello, Wrold";
}

void Pitch::Init() {
    auto F = M->getFunction("__guard_func");
    llvm::CallInst * callins;
    std::vector<llvm::CallInst* >callvec;
    for(auto I = inst_begin(F), E = inst_end(F); I != E; I++){
        if(callins = llvm::dyn_cast<llvm::CallInst>(&*I))
            callvec.push_back(callins);
    }
    smack_code = callvec[0]->getCalledFunction();
    startpara = {const_cast<Value*>(callvec[0]->getArgOperand(0))};
    endpara = {const_cast<Value*>(callvec[1]->getArgOperand(0))};
    return;
}

bool Pitch::runOnFunction(Function &F) {
    errs() << "I saw a function called " << F.getName() << "!\n";
    LLVMContext& C = F.getContext();
    int instructions = 0;
    if (!F.isDeclaration()) {
        for (auto I = inst_begin(F), E = inst_end(F); I != E; ++I) {
            instructions++;
            MDNode* N = MDNode::get(C, MDString::get(C, std::to_string(instructions)));
            (*I).setMetadata("stats.instNumber", N);
        }
        MDNode* temp_N = MDNode::get(C, ConstantAsMetadata::get(ConstantInt::get(C, llvm::APInt(64, instructions, false))));
        MDNode* N = MDNode::get(C, temp_N);
        F.setMetadata("stats.totalInsts", N);
    }
    return true;
}

llvm::CallInst* Pitch::getCallins() {
    auto F = M->getFunction("__guard_func");
    llvm::CallInst * callins;
    for(auto I = inst_begin(F), E = inst_end(F); I != E; I++){
        if(callins = llvm::dyn_cast<llvm::CallInst>(&*I))
            break;
    }
    return callins;
}

