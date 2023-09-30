//
// Created by Tip on 2023/8/6.
//

#include "phasar/PhasarLLVM/DataFlowSolver/IfdsIde/Problems/ExternPTA.h"
using namespace SVF;
void ExternPTA::printallpts(DDAPass& dda){
  std::vector<llvm::Instruction*> insvet;
  for(Module &M : LLVMModuleSet::getLLVMModuleSet()->getLLVMModules()){
    for(auto &F : M){
      for(auto &BB : F)
        for(auto &Ins : BB){
          //                    llvm::errs()<<Ins<<"\n";
          insvet.push_back(&Ins);
        }
    }
  }
  int len = insvet.size();
  for(int i = 0; i < len; i++){
    llvm::errs()<<"The pts\n";
    for (int j = 0; j < len; j++){
      llvm::errs()<<*insvet[i]<<"\n"<<*insvet[j]<<"\n";
      SVFValue* svfval1 = LLVMModuleSet::getLLVMModuleSet()->getSVFValue(insvet[i]);
      SVFValue* svfval2 = LLVMModuleSet::getLLVMModuleSet()->getSVFValue(insvet[j]);
      if(dda.alias(svfval1, svfval2))
        llvm::errs()<<"Yes is Alias\n";
      else
        llvm::errs()<<"No not alias\n";
    }
    llvm::errs()<<"\n\n\n";
  }
}


void ExternPTA::printallpts3(DDAPass& dda){
  std::vector<llvm::Value*> insvet;
  for(Module &M : LLVMModuleSet::getLLVMModuleSet()->getLLVMModules()){
    for(auto &F : M){
      if (F.getName() != "vfct_tmp") {
        if (F.getName() != "br_rsa_i15_private")
          continue;
      }
      for(auto &BB : F){
        for(auto st = F.arg_begin(), ed = F.arg_end(); st != ed; st++)
          insvet.push_back(st);
        for(auto &Ins : BB){
          //                    llvm::errs()<<Ins<<"\n";
          insvet.push_back(&Ins);
        }
      }
    }
  }
  int len = insvet.size();
  for(int i = 0; i < len; i++){
    llvm::errs()<<"The pts\n";
    for (int j = 0; j < len; j++){
      llvm::errs()<<*insvet[i]<<"\n"<<*insvet[j]<<"\n";
      SVFValue* svfval1 = LLVMModuleSet::getLLVMModuleSet()->getSVFValue(insvet[i]);
      SVFValue* svfval2 = LLVMModuleSet::getLLVMModuleSet()->getSVFValue(insvet[j]);
      if(dda.alias(svfval1, svfval2))
        llvm::errs()<<"Yes is Alias\n";
      else
        llvm::errs()<<"No not alias\n";
    }
    llvm::errs()<<"\n\n\n";
  }
}


void ExternPTA::printallpts2(DDAPass& dda){
  std::vector<llvm::Instruction*> insvet;
  for(Module &M : LLVMModuleSet::getLLVMModuleSet()->getLLVMModules()){
    for(auto &F : M){
      for(auto &BB : F)
        for(auto &Ins : BB){
          //                    llvm::errs()<<Ins<<"\n";
          insvet.push_back(&Ins);
        }
    }
  }
  int len = insvet.size();


  std::vector<llvm::Value*> insvet2;
  for(Module &M : LLVMModuleSet::getLLVMModuleSet()->getLLVMModules()){
    for(auto &F : M){
      for(auto st = F.arg_begin(), ed = F.arg_end(); st != ed; st++)
        insvet2.push_back(st);
    }
  }
  int len2 = insvet2.size();



  for(int i = 0; i < len2; i++){
    llvm::errs()<<"The pts\n";
    for (int j = 0; j < len; j++){
      llvm::errs()<<llvm::dyn_cast<llvm::Argument>(insvet2[i])->getParent()->getName()<<"\n";
      llvm::errs()<<*insvet2[i]<<"\n"<<*insvet[j]<<"\n";
      SVFValue* svfval1 = LLVMModuleSet::getLLVMModuleSet()->getSVFValue(insvet2[i]);
      SVFValue* svfval2 = LLVMModuleSet::getLLVMModuleSet()->getSVFValue(insvet[j]);
      if(dda.alias(svfval1, svfval2))
        llvm::errs()<<"Yes is Alias\n";
      else
        llvm::errs()<<"No not alias\n";
      llvm::errs()<<"\n";
    }
    llvm::errs()<<"\n\n\n";
  }
}




bool ExternPTA::isAlias(const llvm::Value *v1, const llvm::Value *v2) {
  SVFValue* svfval1 = LLVMModuleSet::getLLVMModuleSet()->getSVFValue(v1);
  SVFValue* svfval2 = LLVMModuleSet::getLLVMModuleSet()->getSVFValue(v2);
  if(dda.alias(svfval1, svfval2) == AliasResult::NoAlias)
    return false;
  return true;
}