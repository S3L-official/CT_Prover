//
// Created by Tip on 2023/8/3.
//

#ifndef PHASAR_EXTERNPTA_H
#define PHASAR_EXTERNPTA_H

#endif // PHASAR_EXTERNPTA_H
#include "SVF-LLVM/LLVMUtil.h"
#include "SVF-LLVM/SVFIRBuilder.h"
#include "DDA/DDAPass.h"

namespace SVF{
class ExternPTA{
public:
  DDAPass dda;
  ExternPTA(){

  }
  ExternPTA(const Module* md){
    char* argv[] = { "dvf", "-cxt", "fake.ll" };
    int argc = sizeof(argv) / sizeof(argv[0]);
    //    OptionBase::parseOptions(
    //        argc, argv, "Demand-Driven Points-to Analysis", "[options] <input-bitcode...>"
    //    );

//    llvm::errs()<<*md;
    auto mod = const_cast<Module*>(md);
    SVFModule* svfModule = LLVMModuleSet::buildSVFModule(*mod);
    SVFIRBuilder builder(svfModule);
    SVFIR* pag = builder.build();


    //    pttest(md);
    dda.newrunOnModule(pag);
//    printallpts(dda);
//    llvm::errs()<<*md;
  }
  bool isAlias(const llvm::Value* v1, const llvm::Value* v2);
  void pttest(const Module* md);
  void printallpts(DDAPass& dda);
  void printallpts2(DDAPass& dda);
  //parament alias
  void printallpts3(DDAPass& dda);
};
}
//class ExternPTA{
//public:
//  ExternPTA(){
//    llvm::errs()<<"hhhh";
//  }
//};