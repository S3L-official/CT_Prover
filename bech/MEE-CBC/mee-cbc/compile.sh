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
deps=( ../mac-then-encrypt/aes128.c 
        ../mac-then-encrypt/aes128cbc.c 
                      ../mac-then-encrypt/sha256blocks.c ../mac-then-encrypt/hmac.c 
                      ../mac-then-encrypt/verify_32.c 
                      ../mac-then-encrypt/pad128.c ../mac-then-encrypt/pad_cbc_aes128.c 
                      ../mac-then-encrypt/mac_then_encrypt.c )

source=mee_cbc.c

headfile_path="-I../mac-then-encrypt"

otherflg=""

build deps, source, headfile_path, otherflg

########################

# deps=( ../mac-then-encrypt/aes128.c ../mac-then-encrypt/aes128cbc.c 
#                       ../mac-then-encrypt/sha256blocks.c ../mac-then-encrypt/hmac.c 
#                       ../mac-then-encrypt/verify_32.c 
#                       ../mac-then-encrypt/pad128.c ../mac-then-encrypt/pad_cbc_aes128.c 
#                       ../mac-then-encrypt/mac_then_encrypt.c )

# source=mee_cbc_declassify.c

# headfile_path="-I../mac-then-encrypt"

# otherflg=""

# build deps, source, headfile_path, otherflg


