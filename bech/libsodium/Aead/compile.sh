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
deps=( ../libsodium/src/libsodium/sodium/utils.c
../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c
../libsodium/src/libsodium/randombytes/randombytes.c



../libsodium/src/libsodium/crypto_stream/chacha20/ref/stream_chacha20_ref.c
../libsodium/src/libsodium/crypto_stream/chacha20/stream_chacha20_api.c
../libsodium/src/libsodium/crypto_onetimeauth/crypto_onetimeauth.c
../libsodium/src/libsodium/crypto_onetimeauth/poly1305/onetimeauth_poly1305.c
../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/auth_poly1305_donna.c
../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/verify_poly1305_donna.c
../libsodium/src/libsodium/crypto_verify/16/ref/verify_16.c
../libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c
 )

source=crypto_aead_chacha20poly1305_decrypt.c

headfile_path="-I../libsodium/src/libsodium/include \
               -I../libsodium/src/libsodium/include/sodium"

otherflg=""

build deps, source, headfile_path, otherflg


