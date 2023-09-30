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
deps=( ../hacl-star/dist/gcc-compatible/Hacl_HMAC.c  ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA1.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_Blake2.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA2.c)

source=Hacl_HMAC_compute_blake2b_32.c

headfile_path="-I ../hacl-star/dist/gcc-compatible -I ../hacl-star/dist/karamel/include -I ../hacl-star/dist/karamel/krmllib/dist/minimal"

otherflg=""

build deps, source, headfile_path, otherflg

# 四个需要指定的选项
deps=( ../hacl-star/dist/gcc-compatible/Hacl_HMAC.c  ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA1.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_Blake2.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA2.c)

source=Hacl_HMAC_compute_blake2s_32.c

headfile_path="-I ../hacl-star/dist/gcc-compatible -I ../hacl-star/dist/karamel/include -I ../hacl-star/dist/karamel/krmllib/dist/minimal"

otherflg=""

build deps, source, headfile_path, otherflg

# 四个需要指定的选项
deps=( ../hacl-star/dist/gcc-compatible/Hacl_HMAC.c  ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA1.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_Blake2.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA2.c)

source=Hacl_HMAC_compute_sha2_256.c

headfile_path="-I ../hacl-star/dist/gcc-compatible -I ../hacl-star/dist/karamel/include -I ../hacl-star/dist/karamel/krmllib/dist/minimal"

otherflg=""

build deps, source, headfile_path, otherflg

# 四个需要指定的选项
deps=( ../hacl-star/dist/gcc-compatible/Hacl_HMAC.c  ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA1.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_Blake2.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA2.c)

source=Hacl_HMAC_compute_sha2_384.c

headfile_path="-I ../hacl-star/dist/gcc-compatible -I ../hacl-star/dist/karamel/include -I ../hacl-star/dist/karamel/krmllib/dist/minimal"

otherflg=""

build deps, source, headfile_path, otherflg

# 四个需要指定的选项
deps=( ../hacl-star/dist/gcc-compatible/Hacl_HMAC.c  ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA1.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_Blake2.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA2.c)

source=Hacl_HMAC_compute_sha2_512.c

headfile_path="-I ../hacl-star/dist/gcc-compatible -I ../hacl-star/dist/karamel/include -I ../hacl-star/dist/karamel/krmllib/dist/minimal"

otherflg=""

build deps, source, headfile_path, otherflg

# 四个需要指定的选项
deps=( ../hacl-star/dist/gcc-compatible/Hacl_HMAC.c  ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA1.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_Blake2.c   ../hacl-star/dist/gcc-compatible/Hacl_Hash_SHA2.c)

source=Hacl_HMAC_legacy_compute_sha1.c

headfile_path="-I ../hacl-star/dist/gcc-compatible -I ../hacl-star/dist/karamel/include -I ../hacl-star/dist/karamel/krmllib/dist/minimal"

otherflg=""

build deps, source, headfile_path, otherflg


