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
deps=(  ../BearSSL/src/int/i31_tmont.c
        ../BearSSL/src/int/i31_muladd.c
        ../BearSSL/src/int/i31_add.c
        ../BearSSL/src/int/i31_reduce.c
        ../BearSSL/src/int/i31_fmont.c
        ../BearSSL/src/int/i31_ninv31.c
        ../BearSSL/src/int/i31_modpow2.c
        ../BearSSL/src/int/i31_sub.c
        ../BearSSL/src/int/i31_mulacc.c
        ../BearSSL/src/codec/ccopy.c
        ../BearSSL/src/int/i31_decred.c
        ../BearSSL/src/int/i32_div32.c
        ../BearSSL/src/int/i31_rshift.c
        ../BearSSL/src/int/i31_bitlen.c
        ../BearSSL/src/int/i31_decode.c
        ../BearSSL/src/int/i31_encode.c
        ../BearSSL/src/int/i31_montmul.c
        ../BearSSL/src/rsa/rsa_i31_priv.c
        ../BearSSL/src/rsa/rsa_i31_pkcs1_sign.c
        ../BearSSL/src/rsa/rsa_pkcs1_sig_pad.c)

source=sign.c

headfile_path="-I../BearSSL/src \
               -I../BearSSL/inc"

otherflg=""

build deps, source, headfile_path, otherflg


