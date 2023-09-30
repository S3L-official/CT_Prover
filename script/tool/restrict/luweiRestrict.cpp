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
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"


using namespace llvm;
using namespace std;

#define DEBUG_TYPE "privacy"

STATISTIC(PrivacyAnalyzer, "Analyze Privacy of Variables");

// static cl::list<std::string> Funcs("PrivacyFunction", cl::desc("Privacy Function Name and its Input's privacy Type"));

namespace {
  struct Privacy : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    Privacy() : FunctionPass(ID) {}


    bool runOnFunction(Function &F) override {
  bool Modified = false;
  for (auto &Arg : F.args()) {
    if (Arg.getType()->isPointerTy() && !Arg.hasAttribute(Attribute::NoAlias)) {
      Arg.addAttr(Attribute::NoAlias);
      Modified |= true;
    }
  }
  return true;
    }

    // We don't modify the program, so we preserve all analyses.
    // void getAnalysisUsage(AnalysisUsage &AU) const override {
    //   AU.setPreservesAll();
    // }
  };
}

char Privacy::ID = 0;
static RegisterPass<Privacy>
Y("luweiRestrict", "Add restrict key words for pointer type function parameter");
