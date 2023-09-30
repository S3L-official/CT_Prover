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
clang-12 -c -emit-llvm -O0 -g -gcolumn-info -Xclang -disable-O0-optnone -fcolor-diagnostics $headfile_path $otherflg $i
# clang-12 -c -emit-llvm -O0 -g -gcolumn-info -Xclang -disable-O0-optnone -DMEMORY_MODULE_NO_REUSE_IMPLS -fcolor-diagnostics $headfile_path $otherflg $i
done

#生成wrapper文件
clang-12 -c -emit-llvm -O0 -g -gcolumn-info -Xclang -disable-O0-optnone -fcolor-diagnostics $headfile_path -I/home/luwei/smack/share/smack/include $source
# clang-12 -c -emit-llvm -O0 -g -gcolumn-info -Xclang -disable-O0-optnone -DMEMORY_MODULE_NO_REUSE_IMPLS -fcolor-diagnostics $headfile_path -I/home/luwei/smack/share/smack/include $source

#链接
if [ ${#deps[@]} -ne 0 ]; then
llvm-link-12 *.bc -o $finalbc
fi

llvm-dis-12 $finalbc
opt-12 -mem2reg -S $finalll -o $finalll

rm *.bc

}



# 四个需要指定的选项
deps=(
       ../mbedtls/library/des.c 
       ../mbedtls/library/platform_util.c )

source=crypt_cbc.c

headfile_path="-I../mbedtls/library -I../mbedtls/include  -I../mbedtls/3rdparty/everest/include -I../mbedtls/3rdparty/everest/include/everest -I../mbedtls/3rdparty/everest/include/everest/kremlib"

otherflg="-D_FILE_OFFSET_BITS=64"

build deps, source, headfile_path, otherflg

########################