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
echo "Heloo"
llvm-link-12 *.bc -o $finalbc
fi

llvm-dis-12 $finalbc
opt-12 -mem2reg -S $finalll -o $finalll

rm *.bc

}



# 四个需要指定的选项
deps=(  ../BearSSL/src/int/i15_modpow2.c
        ../BearSSL/src/int/i15_fmont.c
        ../BearSSL/src/int/i15_decode.c
        ../BearSSL/src/int/i15_mulacc.c
        ../BearSSL/src/int/i15_ninv15.c
        ../BearSSL/src/int/i15_montmul.c
        ../BearSSL/src/int/i15_sub.c
        ../BearSSL/src/int/i15_rshift.c
        ../BearSSL/src/int/i15_decred.c
        ../BearSSL/src/int/i15_bitlen.c
        ../BearSSL/src/codec/ccopy.c
        ../BearSSL/src/int/i15_encode.c
        ../BearSSL/src/int/i15_reduce.c
        ../BearSSL/src/int/i15_tmont.c
        ../BearSSL/src/int/i15_add.c
        ../BearSSL/src/int/i15_muladd.c
        ../BearSSL/src/rsa/rsa_i15_priv.c)

source=decrypt.c

headfile_path="-I../BearSSL/src \
               -I../BearSSL/inc"

otherflg=""

build deps, source, headfile_path, otherflg


