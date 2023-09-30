#!/bin/bash

#因为不是makefile，先删除可能干扰的ir文件
rm -rf *.bc
rm -rf *.ll


build(){
# deps, source, headfile_path, otherflg

finalbc=${source//.c/.bc}
finalll=${source//.c/.ll}
#生成dep文件
for i in ${deps[@]}; do 
clang-12 -c -emit-llvm -O0 -g -gcolumn-info -Xclang -disable-O0-optnone -DMEMORY_MODULE_NO_REUSE_IMPLS -fcolor-diagnostics $headfile_path $otherflg $i
done

#生成wrapper文件
clang-12 -c -emit-llvm -O0 -g -gcolumn-info -Xclang -disable-O0-optnone -DMEMORY_MODULE_NO_REUSE_IMPLS -fcolor-diagnostics $headfile_path -I/home/luwei/smack/share/smack/include $source

#链接
if [ ${#deps[@]} -ne 0 ]; then
llvm-link-12 *.bc -o $finalbc
fi

llvm-dis-12 $finalbc
opt-12 -mem2reg -S $finalll -o $finalll

rm *.bc

}



# 四个需要指定的选项
deps=( ../BearSSL/src/symcipher/aes_x86ni_cbcdec.c
       ../BearSSL/src/symcipher/aes_x86ni_cbcenc.c
       ../BearSSL/src/symcipher/aes_x86ni_ctr.c
       ../BearSSL/src/symcipher/aes_x86ni_ctrcbc.c
       ../BearSSL/src/symcipher/aes_x86ni.c)

source=cbc_enc.c

headfile_path="-I../BearSSL/src \
               -I../BearSSL/inc"

otherflg=""

build deps, source, headfile_path, otherflg


