//===- Hello.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Hello World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "set"


using namespace llvm;
using namespace std;

//该宏用于精细操控debug信息输出时用。
#define DEBUG_TYPE "luweiDelDeadDef"
//定义一个宏，用于查询一些pass被调用次数等信息
STATISTIC(LuweiDDD, "Luwei DDD macro for consult");

static cl::list<std::string> Funcs("entry-point", cl::desc("Specify the entry point"), cl::OneOrMore);

// static cl::list<std::string> OutputFile("output", cl::desc("Specify the Outputfile Position"), cl::Required);

// static cl::list<std::string> Funcs("PrivacyFunction", cl::desc("Privacy Function Name and its Input's privacy Type"));

namespace {
  struct DDD : public ModulePass {
    static char ID; // Pass identification, replacement for typeid
    DDD() : ModulePass(ID) {}





  bool runOnModule(Module &M) override {
//   TD = &M.getDataLayout();
    std::vector<Function *> dead;
    std::stack<Function *> live;
    std::set<Function *> visit;
  
    auto entryP = Funcs[0];
    auto entryP2 = Funcs[1];

  
    Function *et = M.getFunction(entryP);
    Function *et2 = M.getFunction(entryP2);
    live.push(et);
    live.push(et2);

    while(!live.empty()){
      auto f = live.top();
      live.pop();
      
      if(visit.find(f) == visit.end()){
        // llvm::errs() << f->getName() << "\n";
        visit.insert(f);
        for (Function::use_iterator I = f->use_begin(), E = f->use_end(); I != E; ++I) {
          Function *Callee = cast<Function>(*I);
          llvm::errs() << "removing dead definition: " << Callee->getName() << "\n";
          live.push(Callee);
        }
      }
    }

    for (Function &F : M) {

      
      llvm::errs() << "Globalname: " << F.getName() << "\n";
      llvm::errs()<<"UsedNumber: " << F.getNumUses()<<"\n";

        if(F.getNumUses() != 1)
          continue;

      for (User *U : F.users()) {        
          errs() << "F is used in this global:\n";
          errs() << *U << "\n";

          // errs() << *(U->getType())<<"\n";

        
        if (Constant *Inst = dyn_cast<Constant>(U)) {
          errs() << "F is used in Constant:\n";
          errs() << *Inst << "\n";
          for(User * uu : Inst->users()){
            errs() << "uu: ";
            errs()<< *uu<<"\n";

            for(User * uuu : uu->users()){
            errs() << "uuu: ";
            errs()<< *uuu<<"\n";
          }

          }
        }

        // if (Instruction *Inst = dyn_cast<Instruction>(U)) {
        //   errs() << "F is used in instruction:\n";
        //   errs() << *Inst << "\n";
        // }

        
      }
      // for (Value::use_iterator I = F.use_begin(), E = F.use_end(); I != E; ++I) {
      //     llvm::errs() << "UsedV: " << (*I)->getName() << "\n";

      //     if((*I)->GetContainingFunction())
      //       llvm::errs() << "Function: " << (*I)->GetContainingFunction()<< "\n";
      // }
      llvm::errs() << "\n";

    }


    // for (Module::global_iterator I = M.global_begin(), E = M.global_end(); I != E; ++I) {

    //   GlobalVariable *GV = &*I;
    //   llvm::errs() << "Globalname: " << GV->getName() << "\n";
    //   llvm::errs()<<"UsedNumber: " << GV->getNumUses()<<"\n";
    //   for (User *U : GV->users()) {
    //     errs()<< "User Name: ";
    //     errs() << *U << "\n";

    //   }
    //   llvm::errs() << "\n";
    // }


    // for (Function &F : M) {
    //   if(visit.find(&F) == visit.end())
    //     dead.push_back(&F);
    // }

    // for (auto F : dead){
    //   llvm::errs() << "removing dead definition: " << F->getName() << "\n";
    //   F->eraseFromParent();
    // }



    // // 删除无用全局变量
    // std::vector<GlobalVariable *> deadV;
    // for (Module::global_iterator I = M.global_begin(), E = M.global_end(); I != E; ++I) {
    // // 获取全局变量
    //   GlobalVariable *GV = &*I;
    //   Type *Ty = GV->getType();

    // // 判断全局变量的类型是否是函数类型
    //   if (FunctionType *FTy = dyn_cast<FunctionType>(Ty)) {
    //      continue;
    //   }
      
    //   if(GV->getNumUses() == 0){
    //     llvm::errs() <<"remove dead global var: " << GV->getName() <<"\n";
    //     deadV.push_back(GV);
    //   }  
    // }
    
    // //删除无用变量
    // for (auto V : deadV)
    //   V->eraseFromParent();
    
    


    return true;
  }


    // We don't modify the program, so we preserve all analyses.
    // void getAnalysisUsage(AnalysisUsage &AU) const override {
    //   AU.setPreservesAll();
    // }
  };
}

char DDD::ID = 0;
static RegisterPass<DDD>
Y("luweiDelDeadDef", "Deleate the Unused Definition");
