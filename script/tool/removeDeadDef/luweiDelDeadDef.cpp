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


//     bool runOnFunction(Function &F) override {
//   bool Modified = false;
//   for (auto &Arg : F.args()) {
//     if (Arg.getType()->isPointerTy() && !Arg.hasAttribute(Attribute::NoAlias)) {
//       Arg.addAttr(Attribute::NoAlias);
//       Modified |= true;
//     }
//   }
//   return true;
//     }




bool runOnModule(Module &M) override {
//   TD = &M.getDataLayout();
  std::vector<Function *> dead;
  std::vector<GlobalVariable *> deadV;

  auto entryP = Funcs[0];
  auto entryP2 = Funcs[1];

  do {
    dead.clear();
    deadV.clear();
    for (Module::global_iterator I = M.global_begin(), E = M.global_end(); I != E; ++I) {
    // 获取全局变量
      GlobalVariable *GV = &*I;
      Type *Ty = GV->getType();

    // 判断全局变量的类型是否是函数类型
      if (FunctionType *FTy = dyn_cast<FunctionType>(Ty)) {
         continue;
      }
      
      if(GV->getNumUses() == 0){
        llvm::errs() <<"remove dead global var: " << GV->getName() <<"\n";
        deadV.push_back(GV);
      }  
    }
    
    //删除无用变量
    for (auto V : deadV)
      V->eraseFromParent();



    for (Function &F : M) {
      auto name = F.getName();

      if (!(F.isDefTriviallyDead() || F.getNumUses() == 0))
        continue;

    //   if (name.find("__SMACK_") != StringRef::npos)
    //     continue;

    //   if (name.find("__VERIFIER_assume") != StringRef::npos)
    //     continue;

      if (name == entryP || name == entryP2)
        continue;

      llvm::errs() << "removing dead definition: " << name << "\n";
      dead.push_back(&F);
    }

    for (auto F : dead)
      F->eraseFromParent();
  } while (!dead.empty());

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
