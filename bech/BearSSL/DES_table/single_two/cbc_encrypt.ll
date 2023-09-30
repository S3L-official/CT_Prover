; ModuleID = 'cbc_encrypt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_block_cbcenc_class_ = type { i64, i32, i32, void (%struct.br_block_cbcenc_class_**, i8*, i64)*, void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)* }
%struct.br_des_tab_cbcenc_keys = type { %struct.br_block_cbcenc_class_*, [96 x i32], i32 }
%struct.smack_value = type { i8* }

@S1 = internal constant [64 x i32] [i32 8421888, i32 0, i32 32768, i32 8421890, i32 8421378, i32 33282, i32 2, i32 32768, i32 512, i32 8421888, i32 8421890, i32 512, i32 8389122, i32 8421378, i32 8388608, i32 2, i32 514, i32 8389120, i32 8389120, i32 33280, i32 33280, i32 8421376, i32 8421376, i32 8389122, i32 32770, i32 8388610, i32 8388610, i32 32770, i32 0, i32 514, i32 33282, i32 8388608, i32 32768, i32 8421890, i32 2, i32 8421376, i32 8421888, i32 8388608, i32 8388608, i32 512, i32 8421378, i32 32768, i32 33280, i32 8388610, i32 512, i32 2, i32 8389122, i32 33282, i32 8421890, i32 32770, i32 8421376, i32 8389122, i32 8388610, i32 514, i32 33282, i32 8421888, i32 514, i32 8389120, i32 8389120, i32 0, i32 32770, i32 33280, i32 0, i32 8421378], align 16, !dbg !0
@S2 = internal constant [64 x i32] [i32 1074282512, i32 1073758208, i32 16384, i32 540688, i32 524288, i32 16, i32 1074266128, i32 1073758224, i32 1073741840, i32 1074282512, i32 1074282496, i32 1073741824, i32 1073758208, i32 524288, i32 16, i32 1074266128, i32 540672, i32 524304, i32 1073758224, i32 0, i32 1073741824, i32 16384, i32 540688, i32 1074266112, i32 524304, i32 1073741840, i32 0, i32 540672, i32 16400, i32 1074282496, i32 1074266112, i32 16400, i32 0, i32 540688, i32 1074266128, i32 524288, i32 1073758224, i32 1074266112, i32 1074282496, i32 16384, i32 1074266112, i32 1073758208, i32 16, i32 1074282512, i32 540688, i32 16, i32 16384, i32 1073741824, i32 16400, i32 1074282496, i32 524288, i32 1073741840, i32 524304, i32 1073758224, i32 1073741840, i32 524304, i32 540672, i32 0, i32 1073758208, i32 16400, i32 1073741824, i32 1074266128, i32 1074282512, i32 540672], align 16, !dbg !15
@S3 = internal constant [64 x i32] [i32 260, i32 67174656, i32 0, i32 67174404, i32 67109120, i32 0, i32 65796, i32 67109120, i32 65540, i32 67108868, i32 67108868, i32 65536, i32 67174660, i32 65540, i32 67174400, i32 260, i32 67108864, i32 4, i32 67174656, i32 256, i32 65792, i32 67174400, i32 67174404, i32 65796, i32 67109124, i32 65792, i32 65536, i32 67109124, i32 4, i32 67174660, i32 256, i32 67108864, i32 67174656, i32 67108864, i32 65540, i32 260, i32 65536, i32 67174656, i32 67109120, i32 0, i32 256, i32 65540, i32 67174660, i32 67109120, i32 67108868, i32 256, i32 0, i32 67174404, i32 67109124, i32 65536, i32 67108864, i32 67174660, i32 4, i32 65796, i32 65792, i32 67108868, i32 67174400, i32 67109124, i32 260, i32 67174400, i32 65796, i32 4, i32 67174404, i32 65792], align 16, !dbg !21
@S4 = internal constant [64 x i32] [i32 -2143285248, i32 -2147479488, i32 -2147479488, i32 64, i32 4198464, i32 -2143289280, i32 -2143289344, i32 -2147479552, i32 0, i32 4198400, i32 4198400, i32 -2143285184, i32 -2147483584, i32 0, i32 4194368, i32 -2143289344, i32 -2147483648, i32 4096, i32 4194304, i32 -2143285248, i32 64, i32 4194304, i32 -2147479552, i32 4160, i32 -2143289280, i32 -2147483648, i32 4160, i32 4194368, i32 4096, i32 4198464, i32 -2143285184, i32 -2147483584, i32 4194368, i32 -2143289344, i32 4198400, i32 -2143285184, i32 -2147483584, i32 0, i32 0, i32 4198400, i32 4160, i32 4194368, i32 -2143289280, i32 -2147483648, i32 -2143285248, i32 -2147479488, i32 -2147479488, i32 64, i32 -2143285184, i32 -2147483584, i32 -2147483648, i32 4096, i32 -2143289344, i32 -2147479552, i32 4198464, i32 -2143289280, i32 -2147479552, i32 4160, i32 4194304, i32 -2143285248, i32 64, i32 4194304, i32 4096, i32 4198464], align 16, !dbg !23
@S5 = internal constant [64 x i32] [i32 128, i32 17039488, i32 17039360, i32 553648256, i32 262144, i32 128, i32 536870912, i32 17039360, i32 537133184, i32 262144, i32 16777344, i32 537133184, i32 553648256, i32 553910272, i32 262272, i32 536870912, i32 16777216, i32 537133056, i32 537133056, i32 0, i32 536871040, i32 553910400, i32 553910400, i32 16777344, i32 553910272, i32 536871040, i32 0, i32 553648128, i32 17039488, i32 16777216, i32 553648128, i32 262272, i32 262144, i32 553648256, i32 128, i32 16777216, i32 536870912, i32 17039360, i32 553648256, i32 537133184, i32 16777344, i32 536870912, i32 553910272, i32 17039488, i32 537133184, i32 128, i32 16777216, i32 553910272, i32 553910400, i32 262272, i32 553648128, i32 553910400, i32 17039360, i32 0, i32 537133056, i32 553648128, i32 262272, i32 16777344, i32 536871040, i32 262144, i32 0, i32 537133056, i32 17039488, i32 536871040], align 16, !dbg !25
@S6 = internal constant [64 x i32] [i32 268435464, i32 270532608, i32 8192, i32 270540808, i32 270532608, i32 8, i32 270540808, i32 2097152, i32 268443648, i32 2105352, i32 2097152, i32 268435464, i32 2097160, i32 268443648, i32 268435456, i32 8200, i32 0, i32 2097160, i32 268443656, i32 8192, i32 2105344, i32 268443656, i32 8, i32 270532616, i32 270532616, i32 0, i32 2105352, i32 270540800, i32 8200, i32 2105344, i32 270540800, i32 268435456, i32 268443648, i32 8, i32 270532616, i32 2105344, i32 270540808, i32 2097152, i32 8200, i32 268435464, i32 2097152, i32 268443648, i32 268435456, i32 8200, i32 268435464, i32 270540808, i32 2105344, i32 270532608, i32 2105352, i32 270540800, i32 0, i32 270532616, i32 8, i32 8192, i32 270532608, i32 2105352, i32 8192, i32 2097160, i32 268443656, i32 0, i32 270540800, i32 268435456, i32 2097160, i32 268443656], align 16, !dbg !27
@S7 = internal constant [64 x i32] [i32 1048576, i32 34603009, i32 33555457, i32 0, i32 1024, i32 33555457, i32 1049601, i32 34604032, i32 34604033, i32 1048576, i32 0, i32 33554433, i32 1, i32 33554432, i32 34603009, i32 1025, i32 33555456, i32 1049601, i32 1048577, i32 33555456, i32 33554433, i32 34603008, i32 34604032, i32 1048577, i32 34603008, i32 1024, i32 1025, i32 34604033, i32 1049600, i32 1, i32 33554432, i32 1049600, i32 33554432, i32 1049600, i32 1048576, i32 33555457, i32 33555457, i32 34603009, i32 34603009, i32 1, i32 1048577, i32 33554432, i32 33555456, i32 1048576, i32 34604032, i32 1025, i32 1049601, i32 34604032, i32 1025, i32 33554433, i32 34604033, i32 34603008, i32 1049600, i32 0, i32 1, i32 34604033, i32 0, i32 1049601, i32 34603008, i32 1024, i32 33554433, i32 33555456, i32 1024, i32 1048577], align 16, !dbg !29
@S8 = internal constant [64 x i32] [i32 134219808, i32 2048, i32 131072, i32 134350880, i32 134217728, i32 134219808, i32 32, i32 134217728, i32 131104, i32 134348800, i32 134350880, i32 133120, i32 134350848, i32 133152, i32 2048, i32 32, i32 134348800, i32 134217760, i32 134219776, i32 2080, i32 133120, i32 131104, i32 134348832, i32 134350848, i32 2080, i32 0, i32 0, i32 134348832, i32 134217760, i32 134219776, i32 133152, i32 131072, i32 133152, i32 131072, i32 134350848, i32 2048, i32 32, i32 134348832, i32 2048, i32 133152, i32 134219776, i32 32, i32 134217760, i32 134348800, i32 134348832, i32 134217728, i32 131072, i32 134219808, i32 0, i32 134350880, i32 131104, i32 134217760, i32 134348800, i32 134219776, i32 134219808, i32 0, i32 134350880, i32 133120, i32 133120, i32 2080, i32 2080, i32 131104, i32 134217728, i32 134350848], align 16, !dbg !31
@PC2left = internal constant [28 x i8] c"\10\03\07\18\14\0B\18\0D\02\0A\18\16\05\0F\17\01\09\15\0C\18\06\04\0E\12\08\11\00\13", align 16, !dbg !33
@PC2right = internal constant [28 x i8] c"\08\12\18\06\16\0F\03\0A\0C\13\05\0E\0B\18\04\17\10\09\18\14\02\18\07\0D\00\15\11\01", align 16, !dbg !38
@br_des_tab_cbcenc_vtable = dso_local constant %struct.br_block_cbcenc_class_ { i64 400, i32 8, i32 3, void (%struct.br_block_cbcenc_class_**, i8*, i64)* bitcast (void (%struct.br_des_tab_cbcenc_keys*, i8*, i64)* @br_des_tab_cbcenc_init to void (%struct.br_block_cbcenc_class_**, i8*, i64)*), void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_des_tab_cbcenc_keys*, i8*, i8*, i64)* @br_des_tab_cbcenc_run to void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)*) }, align 8, !dbg !40

; Function Attrs: noinline nounwind uwtable
define dso_local void @cbc_encrypt_wrapper(%struct.br_des_tab_cbcenc_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !80 {
  call void @llvm.dbg.value(metadata %struct.br_des_tab_cbcenc_keys* %0, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %1, metadata !115, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %2, metadata !116, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i64 %3, metadata !117, metadata !DIExpression()), !dbg !114
  %5 = call %struct.smack_value* (%struct.br_des_tab_cbcenc_keys*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_des_tab_cbcenc_keys*, ...)*)(%struct.br_des_tab_cbcenc_keys* %0), !dbg !118
  call void @public_in(%struct.smack_value* %5), !dbg !119
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !120
  call void @public_in(%struct.smack_value* %6), !dbg !121
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !122
  call void @public_in(%struct.smack_value* %7), !dbg !123
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !124
  call void @public_in(%struct.smack_value* %8), !dbg !125
  %9 = getelementptr inbounds %struct.br_des_tab_cbcenc_keys, %struct.br_des_tab_cbcenc_keys* %0, i32 0, i32 2, !dbg !126
  %10 = load i32, i32* %9, align 8, !dbg !126
  %11 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %10), !dbg !127
  call void @public_in(%struct.smack_value* %11), !dbg !128
  %12 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !129
  call void @public_in(%struct.smack_value* %12), !dbg !130
  %13 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 16), !dbg !131
  call void @public_in(%struct.smack_value* %13), !dbg !132
  call void @br_des_tab_cbcenc_run(%struct.br_des_tab_cbcenc_keys* %0, i8* %1, i8* %2, i64 %3), !dbg !133
  ret void, !dbg !134
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vfct_tmp(i32* %0, %struct.br_des_tab_cbcenc_keys* %1, i8* %2, i8* %3, i64 %4) #0 !dbg !135 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata %struct.br_des_tab_cbcenc_keys* %1, metadata !142, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i8* %2, metadata !143, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i8* %3, metadata !144, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 %4, metadata !145, metadata !DIExpression()), !dbg !141
  call void @br_des_tab_cbcenc_run(%struct.br_des_tab_cbcenc_keys* %1, i8* %2, i8* %3, i64 %4), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cbc_encrypt_wrapper_t() #0 !dbg !148 {
  %1 = alloca %struct.br_des_tab_cbcenc_keys, align 8
  call void @llvm.dbg.declare(metadata %struct.br_des_tab_cbcenc_keys* %1, metadata !151, metadata !DIExpression()), !dbg !152
  call void (%struct.br_des_tab_cbcenc_keys*, ...) @getctx(%struct.br_des_tab_cbcenc_keys* sret(%struct.br_des_tab_cbcenc_keys) align 8 %1), !dbg !153
  call void @llvm.dbg.value(metadata %struct.br_des_tab_cbcenc_keys* %1, metadata !154, metadata !DIExpression()), !dbg !155
  %2 = call i8* (...) @getpt2(), !dbg !156
  call void @llvm.dbg.value(metadata i8* %2, metadata !157, metadata !DIExpression()), !dbg !155
  %3 = call i8* (...) @getpt3(), !dbg !158
  call void @llvm.dbg.value(metadata i8* %3, metadata !159, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i64 32, metadata !160, metadata !DIExpression()), !dbg !155
  %4 = getelementptr inbounds %struct.br_des_tab_cbcenc_keys, %struct.br_des_tab_cbcenc_keys* %1, i32 0, i32 1, !dbg !161
  %5 = getelementptr inbounds [96 x i32], [96 x i32]* %4, i64 0, i64 0, !dbg !162
  call void @llvm.dbg.value(metadata i32* %5, metadata !163, metadata !DIExpression()), !dbg !155
  call void @vfct_tmp(i32* %5, %struct.br_des_tab_cbcenc_keys* %1, i8* %2, i8* %3, i64 32), !dbg !164
  ret void, !dbg !165
}

declare dso_local void @getctx(%struct.br_des_tab_cbcenc_keys* sret(%struct.br_des_tab_cbcenc_keys) align 8, ...) #2

declare dso_local i8* @getpt2(...) #2

declare dso_local i8* @getpt3(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_do_IP(i32* %0, i32* %1) #0 !dbg !166 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32* %1, metadata !171, metadata !DIExpression()), !dbg !170
  %3 = load i32, i32* %0, align 4, !dbg !172
  call void @llvm.dbg.value(metadata i32 %3, metadata !173, metadata !DIExpression()), !dbg !170
  %4 = load i32, i32* %1, align 4, !dbg !174
  call void @llvm.dbg.value(metadata i32 %4, metadata !175, metadata !DIExpression()), !dbg !170
  %5 = lshr i32 %3, 4, !dbg !176
  %6 = xor i32 %5, %4, !dbg !177
  %7 = and i32 %6, 252645135, !dbg !178
  call void @llvm.dbg.value(metadata i32 %7, metadata !179, metadata !DIExpression()), !dbg !170
  %8 = xor i32 %4, %7, !dbg !180
  call void @llvm.dbg.value(metadata i32 %8, metadata !175, metadata !DIExpression()), !dbg !170
  %9 = shl i32 %7, 4, !dbg !181
  %10 = xor i32 %3, %9, !dbg !182
  call void @llvm.dbg.value(metadata i32 %10, metadata !173, metadata !DIExpression()), !dbg !170
  %11 = lshr i32 %10, 16, !dbg !183
  %12 = xor i32 %11, %8, !dbg !184
  %13 = and i32 %12, 65535, !dbg !185
  call void @llvm.dbg.value(metadata i32 %13, metadata !179, metadata !DIExpression()), !dbg !170
  %14 = xor i32 %8, %13, !dbg !186
  call void @llvm.dbg.value(metadata i32 %14, metadata !175, metadata !DIExpression()), !dbg !170
  %15 = shl i32 %13, 16, !dbg !187
  %16 = xor i32 %10, %15, !dbg !188
  call void @llvm.dbg.value(metadata i32 %16, metadata !173, metadata !DIExpression()), !dbg !170
  %17 = lshr i32 %14, 2, !dbg !189
  %18 = xor i32 %17, %16, !dbg !190
  %19 = and i32 %18, 858993459, !dbg !191
  call void @llvm.dbg.value(metadata i32 %19, metadata !179, metadata !DIExpression()), !dbg !170
  %20 = xor i32 %16, %19, !dbg !192
  call void @llvm.dbg.value(metadata i32 %20, metadata !173, metadata !DIExpression()), !dbg !170
  %21 = shl i32 %19, 2, !dbg !193
  %22 = xor i32 %14, %21, !dbg !194
  call void @llvm.dbg.value(metadata i32 %22, metadata !175, metadata !DIExpression()), !dbg !170
  %23 = lshr i32 %22, 8, !dbg !195
  %24 = xor i32 %23, %20, !dbg !196
  %25 = and i32 %24, 16711935, !dbg !197
  call void @llvm.dbg.value(metadata i32 %25, metadata !179, metadata !DIExpression()), !dbg !170
  %26 = xor i32 %20, %25, !dbg !198
  call void @llvm.dbg.value(metadata i32 %26, metadata !173, metadata !DIExpression()), !dbg !170
  %27 = shl i32 %25, 8, !dbg !199
  %28 = xor i32 %22, %27, !dbg !200
  call void @llvm.dbg.value(metadata i32 %28, metadata !175, metadata !DIExpression()), !dbg !170
  %29 = lshr i32 %26, 1, !dbg !201
  %30 = xor i32 %29, %28, !dbg !202
  %31 = and i32 %30, 1431655765, !dbg !203
  call void @llvm.dbg.value(metadata i32 %31, metadata !179, metadata !DIExpression()), !dbg !170
  %32 = xor i32 %28, %31, !dbg !204
  call void @llvm.dbg.value(metadata i32 %32, metadata !175, metadata !DIExpression()), !dbg !170
  %33 = shl i32 %31, 1, !dbg !205
  %34 = xor i32 %26, %33, !dbg !206
  call void @llvm.dbg.value(metadata i32 %34, metadata !173, metadata !DIExpression()), !dbg !170
  store i32 %34, i32* %0, align 4, !dbg !207
  store i32 %32, i32* %1, align 4, !dbg !208
  ret void, !dbg !209
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_do_invIP(i32* %0, i32* %1) #0 !dbg !210 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32* %1, metadata !213, metadata !DIExpression()), !dbg !212
  %3 = load i32, i32* %0, align 4, !dbg !214
  call void @llvm.dbg.value(metadata i32 %3, metadata !215, metadata !DIExpression()), !dbg !212
  %4 = load i32, i32* %1, align 4, !dbg !216
  call void @llvm.dbg.value(metadata i32 %4, metadata !217, metadata !DIExpression()), !dbg !212
  %5 = lshr i32 %3, 1, !dbg !218
  %6 = xor i32 %5, %4, !dbg !219
  %7 = and i32 %6, 1431655765, !dbg !220
  call void @llvm.dbg.value(metadata i32 %7, metadata !221, metadata !DIExpression()), !dbg !212
  %8 = xor i32 %4, %7, !dbg !222
  call void @llvm.dbg.value(metadata i32 %8, metadata !217, metadata !DIExpression()), !dbg !212
  %9 = shl i32 %7, 1, !dbg !223
  %10 = xor i32 %3, %9, !dbg !224
  call void @llvm.dbg.value(metadata i32 %10, metadata !215, metadata !DIExpression()), !dbg !212
  %11 = lshr i32 %8, 8, !dbg !225
  %12 = xor i32 %11, %10, !dbg !226
  %13 = and i32 %12, 16711935, !dbg !227
  call void @llvm.dbg.value(metadata i32 %13, metadata !221, metadata !DIExpression()), !dbg !212
  %14 = xor i32 %10, %13, !dbg !228
  call void @llvm.dbg.value(metadata i32 %14, metadata !215, metadata !DIExpression()), !dbg !212
  %15 = shl i32 %13, 8, !dbg !229
  %16 = xor i32 %8, %15, !dbg !230
  call void @llvm.dbg.value(metadata i32 %16, metadata !217, metadata !DIExpression()), !dbg !212
  %17 = lshr i32 %16, 2, !dbg !231
  %18 = xor i32 %17, %14, !dbg !232
  %19 = and i32 %18, 858993459, !dbg !233
  call void @llvm.dbg.value(metadata i32 %19, metadata !221, metadata !DIExpression()), !dbg !212
  %20 = xor i32 %14, %19, !dbg !234
  call void @llvm.dbg.value(metadata i32 %20, metadata !215, metadata !DIExpression()), !dbg !212
  %21 = shl i32 %19, 2, !dbg !235
  %22 = xor i32 %16, %21, !dbg !236
  call void @llvm.dbg.value(metadata i32 %22, metadata !217, metadata !DIExpression()), !dbg !212
  %23 = lshr i32 %20, 16, !dbg !237
  %24 = xor i32 %23, %22, !dbg !238
  %25 = and i32 %24, 65535, !dbg !239
  call void @llvm.dbg.value(metadata i32 %25, metadata !221, metadata !DIExpression()), !dbg !212
  %26 = xor i32 %22, %25, !dbg !240
  call void @llvm.dbg.value(metadata i32 %26, metadata !217, metadata !DIExpression()), !dbg !212
  %27 = shl i32 %25, 16, !dbg !241
  %28 = xor i32 %20, %27, !dbg !242
  call void @llvm.dbg.value(metadata i32 %28, metadata !215, metadata !DIExpression()), !dbg !212
  %29 = lshr i32 %28, 4, !dbg !243
  %30 = xor i32 %29, %26, !dbg !244
  %31 = and i32 %30, 252645135, !dbg !245
  call void @llvm.dbg.value(metadata i32 %31, metadata !221, metadata !DIExpression()), !dbg !212
  %32 = xor i32 %26, %31, !dbg !246
  call void @llvm.dbg.value(metadata i32 %32, metadata !217, metadata !DIExpression()), !dbg !212
  %33 = shl i32 %31, 4, !dbg !247
  %34 = xor i32 %28, %33, !dbg !248
  call void @llvm.dbg.value(metadata i32 %34, metadata !215, metadata !DIExpression()), !dbg !212
  store i32 %34, i32* %0, align 4, !dbg !249
  store i32 %32, i32* %1, align 4, !dbg !250
  ret void, !dbg !251
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_keysched_unit(i32* %0, i8* %1) #0 !dbg !252 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i8* %1, metadata !257, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata i32* %3, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %4, metadata !260, metadata !DIExpression()), !dbg !261
  %5 = call i32 @br_dec32be(i8* %1), !dbg !262
  store i32 %5, i32* %3, align 4, !dbg !263
  %6 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !264
  %7 = call i32 @br_dec32be(i8* %6), !dbg !265
  store i32 %7, i32* %4, align 4, !dbg !266
  call void @br_des_do_IP(i32* %3, i32* %4), !dbg !267
  %8 = load i32, i32* %4, align 4, !dbg !268
  %9 = and i32 %8, -16777216, !dbg !269
  %10 = lshr i32 %9, 4, !dbg !270
  %11 = load i32, i32* %3, align 4, !dbg !271
  %12 = and i32 %11, -16777216, !dbg !272
  %13 = lshr i32 %12, 12, !dbg !273
  %14 = or i32 %10, %13, !dbg !274
  %15 = load i32, i32* %4, align 4, !dbg !275
  %16 = and i32 %15, 16711680, !dbg !276
  %17 = lshr i32 %16, 12, !dbg !277
  %18 = or i32 %14, %17, !dbg !278
  %19 = load i32, i32* %3, align 4, !dbg !279
  %20 = and i32 %19, 16711680, !dbg !280
  %21 = lshr i32 %20, 20, !dbg !281
  %22 = or i32 %18, %21, !dbg !282
  call void @llvm.dbg.value(metadata i32 %22, metadata !283, metadata !DIExpression()), !dbg !256
  %23 = load i32, i32* %4, align 4, !dbg !284
  %24 = and i32 %23, 255, !dbg !285
  %25 = shl i32 %24, 20, !dbg !286
  %26 = load i32, i32* %3, align 4, !dbg !287
  %27 = and i32 %26, 65280, !dbg !288
  %28 = shl i32 %27, 4, !dbg !289
  %29 = or i32 %25, %28, !dbg !290
  %30 = load i32, i32* %4, align 4, !dbg !291
  %31 = and i32 %30, 65280, !dbg !292
  %32 = lshr i32 %31, 4, !dbg !293
  %33 = or i32 %29, %32, !dbg !294
  %34 = load i32, i32* %3, align 4, !dbg !295
  %35 = and i32 %34, 983040, !dbg !296
  %36 = lshr i32 %35, 16, !dbg !297
  %37 = or i32 %33, %36, !dbg !298
  call void @llvm.dbg.value(metadata i32 %37, metadata !299, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !256
  br label %38, !dbg !302

38:                                               ; preds = %69, %2
  %.02 = phi i32 [ %22, %2 ], [ %59, %69 ], !dbg !256
  %.01 = phi i32 [ %37, %2 ], [ %60, %69 ], !dbg !256
  %.0 = phi i32 [ 0, %2 ], [ %70, %69 ], !dbg !304
  call void @llvm.dbg.value(metadata i32 %.0, metadata !300, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32 %.01, metadata !299, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32 %.02, metadata !283, metadata !DIExpression()), !dbg !256
  %39 = icmp slt i32 %.0, 16, !dbg !305
  br i1 %39, label %40, label %71, !dbg !307

40:                                               ; preds = %38
  %41 = shl i32 1, %.0, !dbg !308
  %42 = and i32 %41, 33027, !dbg !311
  %43 = icmp ne i32 %42, 0, !dbg !311
  br i1 %43, label %44, label %51, !dbg !312

44:                                               ; preds = %40
  %45 = shl i32 %.02, 1, !dbg !313
  %46 = lshr i32 %.02, 27, !dbg !315
  %47 = or i32 %45, %46, !dbg !316
  call void @llvm.dbg.value(metadata i32 %47, metadata !283, metadata !DIExpression()), !dbg !256
  %48 = shl i32 %.01, 1, !dbg !317
  %49 = lshr i32 %.01, 27, !dbg !318
  %50 = or i32 %48, %49, !dbg !319
  call void @llvm.dbg.value(metadata i32 %50, metadata !299, metadata !DIExpression()), !dbg !256
  br label %58, !dbg !320

51:                                               ; preds = %40
  %52 = shl i32 %.02, 2, !dbg !321
  %53 = lshr i32 %.02, 26, !dbg !323
  %54 = or i32 %52, %53, !dbg !324
  call void @llvm.dbg.value(metadata i32 %54, metadata !283, metadata !DIExpression()), !dbg !256
  %55 = shl i32 %.01, 2, !dbg !325
  %56 = lshr i32 %.01, 26, !dbg !326
  %57 = or i32 %55, %56, !dbg !327
  call void @llvm.dbg.value(metadata i32 %57, metadata !299, metadata !DIExpression()), !dbg !256
  br label %58

58:                                               ; preds = %51, %44
  %.13 = phi i32 [ %47, %44 ], [ %54, %51 ], !dbg !328
  %.1 = phi i32 [ %50, %44 ], [ %57, %51 ], !dbg !328
  call void @llvm.dbg.value(metadata i32 %.1, metadata !299, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32 %.13, metadata !283, metadata !DIExpression()), !dbg !256
  %59 = and i32 %.13, 268435455, !dbg !329
  call void @llvm.dbg.value(metadata i32 %59, metadata !283, metadata !DIExpression()), !dbg !256
  %60 = and i32 %.1, 268435455, !dbg !330
  call void @llvm.dbg.value(metadata i32 %60, metadata !299, metadata !DIExpression()), !dbg !256
  %61 = shl i32 %.0, 1, !dbg !331
  %62 = add nsw i32 %61, 0, !dbg !332
  %63 = sext i32 %62 to i64, !dbg !333
  %64 = getelementptr inbounds i32, i32* %0, i64 %63, !dbg !333
  store i32 %59, i32* %64, align 4, !dbg !334
  %65 = shl i32 %.0, 1, !dbg !335
  %66 = add nsw i32 %65, 1, !dbg !336
  %67 = sext i32 %66 to i64, !dbg !337
  %68 = getelementptr inbounds i32, i32* %0, i64 %67, !dbg !337
  store i32 %60, i32* %68, align 4, !dbg !338
  br label %69, !dbg !339

69:                                               ; preds = %58
  %70 = add nsw i32 %.0, 1, !dbg !340
  call void @llvm.dbg.value(metadata i32 %70, metadata !300, metadata !DIExpression()), !dbg !256
  br label %38, !dbg !341, !llvm.loop !342

71:                                               ; preds = %38
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !346 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i8* %0, metadata !352, metadata !DIExpression()), !dbg !351
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !353
  %3 = load i8, i8* %2, align 1, !dbg !353
  %4 = zext i8 %3 to i32, !dbg !354
  %5 = shl i32 %4, 24, !dbg !355
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !356
  %7 = load i8, i8* %6, align 1, !dbg !356
  %8 = zext i8 %7 to i32, !dbg !357
  %9 = shl i32 %8, 16, !dbg !358
  %10 = or i32 %5, %9, !dbg !359
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !360
  %12 = load i8, i8* %11, align 1, !dbg !360
  %13 = zext i8 %12 to i32, !dbg !361
  %14 = shl i32 %13, 8, !dbg !362
  %15 = or i32 %10, %14, !dbg !363
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !364
  %17 = load i8, i8* %16, align 1, !dbg !364
  %18 = zext i8 %17 to i32, !dbg !365
  %19 = or i32 %15, %18, !dbg !366
  ret i32 %19, !dbg !367
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_rev_skey(i32* %0) #0 !dbg !368 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !372
  br label %2, !dbg !374

2:                                                ; preds = %33, %1
  %.0 = phi i32 [ 0, %1 ], [ %34, %33 ], !dbg !376
  call void @llvm.dbg.value(metadata i32 %.0, metadata !373, metadata !DIExpression()), !dbg !372
  %3 = icmp slt i32 %.0, 16, !dbg !377
  br i1 %3, label %4, label %35, !dbg !379

4:                                                ; preds = %2
  %5 = add nsw i32 %.0, 0, !dbg !380
  %6 = sext i32 %5 to i64, !dbg !382
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !382
  %8 = load i32, i32* %7, align 4, !dbg !382
  call void @llvm.dbg.value(metadata i32 %8, metadata !383, metadata !DIExpression()), !dbg !384
  %9 = sub nsw i32 30, %.0, !dbg !385
  %10 = sext i32 %9 to i64, !dbg !386
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !386
  %12 = load i32, i32* %11, align 4, !dbg !386
  %13 = add nsw i32 %.0, 0, !dbg !387
  %14 = sext i32 %13 to i64, !dbg !388
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !388
  store i32 %12, i32* %15, align 4, !dbg !389
  %16 = sub nsw i32 30, %.0, !dbg !390
  %17 = sext i32 %16 to i64, !dbg !391
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !391
  store i32 %8, i32* %18, align 4, !dbg !392
  %19 = add nsw i32 %.0, 1, !dbg !393
  %20 = sext i32 %19 to i64, !dbg !394
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !394
  %22 = load i32, i32* %21, align 4, !dbg !394
  call void @llvm.dbg.value(metadata i32 %22, metadata !383, metadata !DIExpression()), !dbg !384
  %23 = sub nsw i32 31, %.0, !dbg !395
  %24 = sext i32 %23 to i64, !dbg !396
  %25 = getelementptr inbounds i32, i32* %0, i64 %24, !dbg !396
  %26 = load i32, i32* %25, align 4, !dbg !396
  %27 = add nsw i32 %.0, 1, !dbg !397
  %28 = sext i32 %27 to i64, !dbg !398
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !398
  store i32 %26, i32* %29, align 4, !dbg !399
  %30 = sub nsw i32 31, %.0, !dbg !400
  %31 = sext i32 %30 to i64, !dbg !401
  %32 = getelementptr inbounds i32, i32* %0, i64 %31, !dbg !401
  store i32 %22, i32* %32, align 4, !dbg !402
  br label %33, !dbg !403

33:                                               ; preds = %4
  %34 = add nsw i32 %.0, 2, !dbg !404
  call void @llvm.dbg.value(metadata i32 %34, metadata !373, metadata !DIExpression()), !dbg !372
  br label %2, !dbg !405, !llvm.loop !406

35:                                               ; preds = %2
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_tab_process_block(i32 %0, i32* %1, i8* %2) #0 !dbg !409 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i32* %1, metadata !415, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i8* %2, metadata !416, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata i32* %4, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i32* %5, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i8* %2, metadata !421, metadata !DIExpression()), !dbg !414
  %6 = call i32 @br_dec32be.1(i8* %2), !dbg !423
  store i32 %6, i32* %4, align 4, !dbg !424
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !425
  %8 = call i32 @br_dec32be.1(i8* %7), !dbg !426
  store i32 %8, i32* %5, align 4, !dbg !427
  call void @br_des_do_IP(i32* %4, i32* %5), !dbg !428
  br label %9, !dbg !429

9:                                                ; preds = %12, %3
  %.01 = phi i32* [ %1, %3 ], [ %13, %12 ]
  %.0 = phi i32 [ %0, %3 ], [ %10, %12 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i32* %.01, metadata !415, metadata !DIExpression()), !dbg !414
  %10 = add i32 %.0, -1, !dbg !430
  call void @llvm.dbg.value(metadata i32 %10, metadata !413, metadata !DIExpression()), !dbg !414
  %11 = icmp ugt i32 %.0, 0, !dbg !431
  br i1 %11, label %12, label %14, !dbg !429

12:                                               ; preds = %9
  call void @process_block_unit(i32* %4, i32* %5, i32* %.01), !dbg !432
  %13 = getelementptr inbounds i32, i32* %.01, i64 32, !dbg !434
  call void @llvm.dbg.value(metadata i32* %13, metadata !415, metadata !DIExpression()), !dbg !414
  br label %9, !dbg !429, !llvm.loop !435

14:                                               ; preds = %9
  call void @br_des_do_invIP(i32* %4, i32* %5), !dbg !437
  %15 = load i32, i32* %4, align 4, !dbg !438
  call void @br_enc32be(i8* %2, i32 %15), !dbg !439
  %16 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !440
  %17 = load i32, i32* %5, align 4, !dbg !441
  call void @br_enc32be(i8* %16, i32 %17), !dbg !442
  ret void, !dbg !443
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.1(i8* %0) #0 !dbg !444 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i8* %0, metadata !447, metadata !DIExpression()), !dbg !446
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !448
  %3 = load i8, i8* %2, align 1, !dbg !448
  %4 = zext i8 %3 to i32, !dbg !449
  %5 = shl i32 %4, 24, !dbg !450
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !451
  %7 = load i8, i8* %6, align 1, !dbg !451
  %8 = zext i8 %7 to i32, !dbg !452
  %9 = shl i32 %8, 16, !dbg !453
  %10 = or i32 %5, %9, !dbg !454
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !455
  %12 = load i8, i8* %11, align 1, !dbg !455
  %13 = zext i8 %12 to i32, !dbg !456
  %14 = shl i32 %13, 8, !dbg !457
  %15 = or i32 %10, %14, !dbg !458
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !459
  %17 = load i8, i8* %16, align 1, !dbg !459
  %18 = zext i8 %17 to i32, !dbg !460
  %19 = or i32 %15, %18, !dbg !461
  ret i32 %19, !dbg !462
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_block_unit(i32* %0, i32* %1, i32* %2) #0 !dbg !463 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32* %1, metadata !468, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32* %2, metadata !469, metadata !DIExpression()), !dbg !467
  %4 = load i32, i32* %0, align 4, !dbg !470
  call void @llvm.dbg.value(metadata i32 %4, metadata !471, metadata !DIExpression()), !dbg !467
  %5 = load i32, i32* %1, align 4, !dbg !472
  call void @llvm.dbg.value(metadata i32 %5, metadata !473, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 0, metadata !474, metadata !DIExpression()), !dbg !467
  br label %6, !dbg !475

6:                                                ; preds = %21, %3
  %.02 = phi i32 [ 0, %3 ], [ %22, %21 ], !dbg !477
  %.01 = phi i32 [ %4, %3 ], [ %.0, %21 ], !dbg !467
  %.0 = phi i32 [ %5, %3 ], [ %20, %21 ], !dbg !467
  call void @llvm.dbg.value(metadata i32 %.0, metadata !473, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %.01, metadata !471, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %.02, metadata !474, metadata !DIExpression()), !dbg !467
  %7 = icmp slt i32 %.02, 16, !dbg !478
  br i1 %7, label %8, label %23, !dbg !480

8:                                                ; preds = %6
  %9 = shl i32 %.02, 1, !dbg !481
  %10 = add nsw i32 %9, 0, !dbg !483
  %11 = sext i32 %10 to i64, !dbg !484
  %12 = getelementptr inbounds i32, i32* %2, i64 %11, !dbg !484
  %13 = load i32, i32* %12, align 4, !dbg !484
  %14 = shl i32 %.02, 1, !dbg !485
  %15 = add nsw i32 %14, 1, !dbg !486
  %16 = sext i32 %15 to i64, !dbg !487
  %17 = getelementptr inbounds i32, i32* %2, i64 %16, !dbg !487
  %18 = load i32, i32* %17, align 4, !dbg !487
  %19 = call i32 @Fconf(i32 %.0, i32 %13, i32 %18), !dbg !488
  %20 = xor i32 %.01, %19, !dbg !489
  call void @llvm.dbg.value(metadata i32 %20, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i32 %.0, metadata !471, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %20, metadata !473, metadata !DIExpression()), !dbg !467
  br label %21, !dbg !492

21:                                               ; preds = %8
  %22 = add nsw i32 %.02, 1, !dbg !493
  call void @llvm.dbg.value(metadata i32 %22, metadata !474, metadata !DIExpression()), !dbg !467
  br label %6, !dbg !494, !llvm.loop !495

23:                                               ; preds = %6
  store i32 %.0, i32* %0, align 4, !dbg !497
  store i32 %.01, i32* %1, align 4, !dbg !498
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !500 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i32 %1, metadata !505, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata i8* %0, metadata !506, metadata !DIExpression()), !dbg !504
  %3 = lshr i32 %1, 24, !dbg !507
  %4 = trunc i32 %3 to i8, !dbg !508
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !509
  store i8 %4, i8* %5, align 1, !dbg !510
  %6 = lshr i32 %1, 16, !dbg !511
  %7 = trunc i32 %6 to i8, !dbg !512
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !513
  store i8 %7, i8* %8, align 1, !dbg !514
  %9 = lshr i32 %1, 8, !dbg !515
  %10 = trunc i32 %9 to i8, !dbg !516
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !517
  store i8 %10, i8* %11, align 1, !dbg !518
  %12 = trunc i32 %1 to i8, !dbg !519
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !520
  store i8 %12, i8* %13, align 1, !dbg !521
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fconf(i32 %0, i32 %1, i32 %2) #0 !dbg !523 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32 %1, metadata !528, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32 %2, metadata !529, metadata !DIExpression()), !dbg !527
  %4 = shl i32 %0, 16, !dbg !530
  %5 = lshr i32 %0, 16, !dbg !531
  %6 = or i32 %4, %5, !dbg !532
  call void @llvm.dbg.value(metadata i32 %6, metadata !533, metadata !DIExpression()), !dbg !527
  %7 = lshr i32 %6, 11, !dbg !534
  %8 = lshr i32 %1, 18, !dbg !535
  %9 = xor i32 %7, %8, !dbg !536
  %10 = and i32 %9, 63, !dbg !537
  %11 = zext i32 %10 to i64, !dbg !538
  %12 = getelementptr inbounds [64 x i32], [64 x i32]* @S1, i64 0, i64 %11, !dbg !538
  %13 = load i32, i32* %12, align 4, !dbg !538
  %14 = lshr i32 %0, 23, !dbg !539
  %15 = lshr i32 %1, 12, !dbg !540
  %16 = xor i32 %14, %15, !dbg !541
  %17 = and i32 %16, 63, !dbg !542
  %18 = zext i32 %17 to i64, !dbg !543
  %19 = getelementptr inbounds [64 x i32], [64 x i32]* @S2, i64 0, i64 %18, !dbg !543
  %20 = load i32, i32* %19, align 4, !dbg !543
  %21 = or i32 %13, %20, !dbg !544
  %22 = lshr i32 %0, 19, !dbg !545
  %23 = lshr i32 %1, 6, !dbg !546
  %24 = xor i32 %22, %23, !dbg !547
  %25 = and i32 %24, 63, !dbg !548
  %26 = zext i32 %25 to i64, !dbg !549
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* @S3, i64 0, i64 %26, !dbg !549
  %28 = load i32, i32* %27, align 4, !dbg !549
  %29 = or i32 %21, %28, !dbg !550
  %30 = lshr i32 %0, 15, !dbg !551
  %31 = xor i32 %30, %1, !dbg !552
  %32 = and i32 %31, 63, !dbg !553
  %33 = zext i32 %32 to i64, !dbg !554
  %34 = getelementptr inbounds [64 x i32], [64 x i32]* @S4, i64 0, i64 %33, !dbg !554
  %35 = load i32, i32* %34, align 4, !dbg !554
  %36 = or i32 %29, %35, !dbg !555
  %37 = lshr i32 %0, 11, !dbg !556
  %38 = lshr i32 %2, 18, !dbg !557
  %39 = xor i32 %37, %38, !dbg !558
  %40 = and i32 %39, 63, !dbg !559
  %41 = zext i32 %40 to i64, !dbg !560
  %42 = getelementptr inbounds [64 x i32], [64 x i32]* @S5, i64 0, i64 %41, !dbg !560
  %43 = load i32, i32* %42, align 4, !dbg !560
  %44 = or i32 %36, %43, !dbg !561
  %45 = lshr i32 %0, 7, !dbg !562
  %46 = lshr i32 %2, 12, !dbg !563
  %47 = xor i32 %45, %46, !dbg !564
  %48 = and i32 %47, 63, !dbg !565
  %49 = zext i32 %48 to i64, !dbg !566
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* @S6, i64 0, i64 %49, !dbg !566
  %51 = load i32, i32* %50, align 4, !dbg !566
  %52 = or i32 %44, %51, !dbg !567
  %53 = lshr i32 %0, 3, !dbg !568
  %54 = lshr i32 %2, 6, !dbg !569
  %55 = xor i32 %53, %54, !dbg !570
  %56 = and i32 %55, 63, !dbg !571
  %57 = zext i32 %56 to i64, !dbg !572
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* @S7, i64 0, i64 %57, !dbg !572
  %59 = load i32, i32* %58, align 4, !dbg !572
  %60 = or i32 %52, %59, !dbg !573
  %61 = lshr i32 %6, 15, !dbg !574
  %62 = xor i32 %61, %2, !dbg !575
  %63 = and i32 %62, 63, !dbg !576
  %64 = zext i32 %63 to i64, !dbg !577
  %65 = getelementptr inbounds [64 x i32], [64 x i32]* @S8, i64 0, i64 %64, !dbg !577
  %66 = load i32, i32* %65, align 4, !dbg !577
  %67 = or i32 %60, %66, !dbg !578
  ret i32 %67, !dbg !579
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_des_tab_keysched(i32* %0, i8* %1, i64 %2) #0 !dbg !580 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i8* %1, metadata !585, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i64 %2, metadata !586, metadata !DIExpression()), !dbg !584
  switch i64 %2, label %12 [
    i64 8, label %4
    i64 16, label %5
  ], !dbg !587

4:                                                ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !588
  br label %18, !dbg !590

5:                                                ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !591
  %6 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !592
  %7 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !593
  call void @keysched_unit(i32* %6, i8* %7), !dbg !594
  %8 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !595
  call void @br_des_rev_skey(i32* %8), !dbg !596
  %9 = getelementptr inbounds i32, i32* %0, i64 64, !dbg !597
  %10 = bitcast i32* %9 to i8*, !dbg !598
  %11 = bitcast i32* %0 to i8*, !dbg !598
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 128, i1 false), !dbg !598
  br label %18, !dbg !599

12:                                               ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !600
  %13 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !601
  %14 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !602
  call void @keysched_unit(i32* %13, i8* %14), !dbg !603
  %15 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !604
  call void @br_des_rev_skey(i32* %15), !dbg !605
  %16 = getelementptr inbounds i32, i32* %0, i64 64, !dbg !606
  %17 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !607
  call void @keysched_unit(i32* %16, i8* %17), !dbg !608
  br label %18, !dbg !609

18:                                               ; preds = %12, %5, %4
  %.0 = phi i32 [ 3, %12 ], [ 3, %5 ], [ 1, %4 ], !dbg !610
  ret i32 %.0, !dbg !611
}

; Function Attrs: noinline nounwind uwtable
define internal void @keysched_unit(i32* %0, i8* %1) #0 !dbg !612 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !613, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.value(metadata i8* %1, metadata !615, metadata !DIExpression()), !dbg !614
  call void @br_des_keysched_unit(i32* %0, i8* %1), !dbg !616
  call void @llvm.dbg.value(metadata i32 0, metadata !617, metadata !DIExpression()), !dbg !614
  br label %3, !dbg !618

3:                                                ; preds = %46, %2
  %.02 = phi i32 [ 0, %2 ], [ %47, %46 ], !dbg !620
  call void @llvm.dbg.value(metadata i32 %.02, metadata !617, metadata !DIExpression()), !dbg !614
  %4 = icmp slt i32 %.02, 16, !dbg !621
  br i1 %4, label %5, label %48, !dbg !623

5:                                                ; preds = %3
  %6 = shl i32 %.02, 1, !dbg !624
  %7 = add nsw i32 %6, 0, !dbg !626
  %8 = sext i32 %7 to i64, !dbg !627
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !627
  %10 = load i32, i32* %9, align 4, !dbg !627
  call void @llvm.dbg.value(metadata i32 %10, metadata !628, metadata !DIExpression()), !dbg !629
  %11 = shl i32 %.02, 1, !dbg !630
  %12 = add nsw i32 %11, 1, !dbg !631
  %13 = sext i32 %12 to i64, !dbg !632
  %14 = getelementptr inbounds i32, i32* %0, i64 %13, !dbg !632
  %15 = load i32, i32* %14, align 4, !dbg !632
  call void @llvm.dbg.value(metadata i32 %15, metadata !633, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 0, metadata !634, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 0, metadata !635, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 0, metadata !636, metadata !DIExpression()), !dbg !629
  br label %16, !dbg !637

16:                                               ; preds = %35, %5
  %.05 = phi i32 [ 0, %5 ], [ %25, %35 ], !dbg !629
  %.04 = phi i32 [ %15, %5 ], [ %34, %35 ], !dbg !629
  %.03 = phi i32 [ %10, %5 ], [ %33, %35 ], !dbg !629
  %.01 = phi i32 [ 0, %5 ], [ %32, %35 ], !dbg !629
  %.0 = phi i32 [ 0, %5 ], [ %36, %35 ], !dbg !639
  call void @llvm.dbg.value(metadata i32 %.0, metadata !636, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 %.01, metadata !635, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 %.03, metadata !628, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 %.04, metadata !633, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 %.05, metadata !634, metadata !DIExpression()), !dbg !629
  %17 = icmp slt i32 %.0, 28, !dbg !640
  br i1 %17, label %18, label %37, !dbg !642

18:                                               ; preds = %16
  %19 = and i32 %.03, 1, !dbg !643
  %20 = sext i32 %.0 to i64, !dbg !645
  %21 = getelementptr inbounds [28 x i8], [28 x i8]* @PC2left, i64 0, i64 %20, !dbg !645
  %22 = load i8, i8* %21, align 1, !dbg !645
  %23 = zext i8 %22 to i32, !dbg !645
  %24 = shl i32 %19, %23, !dbg !646
  %25 = or i32 %.05, %24, !dbg !647
  call void @llvm.dbg.value(metadata i32 %25, metadata !634, metadata !DIExpression()), !dbg !629
  %26 = and i32 %.04, 1, !dbg !648
  %27 = sext i32 %.0 to i64, !dbg !649
  %28 = getelementptr inbounds [28 x i8], [28 x i8]* @PC2right, i64 0, i64 %27, !dbg !649
  %29 = load i8, i8* %28, align 1, !dbg !649
  %30 = zext i8 %29 to i32, !dbg !649
  %31 = shl i32 %26, %30, !dbg !650
  %32 = or i32 %.01, %31, !dbg !651
  call void @llvm.dbg.value(metadata i32 %32, metadata !635, metadata !DIExpression()), !dbg !629
  %33 = lshr i32 %.03, 1, !dbg !652
  call void @llvm.dbg.value(metadata i32 %33, metadata !628, metadata !DIExpression()), !dbg !629
  %34 = lshr i32 %.04, 1, !dbg !653
  call void @llvm.dbg.value(metadata i32 %34, metadata !633, metadata !DIExpression()), !dbg !629
  br label %35, !dbg !654

35:                                               ; preds = %18
  %36 = add nsw i32 %.0, 1, !dbg !655
  call void @llvm.dbg.value(metadata i32 %36, metadata !636, metadata !DIExpression()), !dbg !629
  br label %16, !dbg !656, !llvm.loop !657

37:                                               ; preds = %16
  %38 = shl i32 %.02, 1, !dbg !659
  %39 = add nsw i32 %38, 0, !dbg !660
  %40 = sext i32 %39 to i64, !dbg !661
  %41 = getelementptr inbounds i32, i32* %0, i64 %40, !dbg !661
  store i32 %.05, i32* %41, align 4, !dbg !662
  %42 = shl i32 %.02, 1, !dbg !663
  %43 = add nsw i32 %42, 1, !dbg !664
  %44 = sext i32 %43 to i64, !dbg !665
  %45 = getelementptr inbounds i32, i32* %0, i64 %44, !dbg !665
  store i32 %.01, i32* %45, align 4, !dbg !666
  br label %46, !dbg !667

46:                                               ; preds = %37
  %47 = add nsw i32 %.02, 1, !dbg !668
  call void @llvm.dbg.value(metadata i32 %47, metadata !617, metadata !DIExpression()), !dbg !614
  br label %3, !dbg !669, !llvm.loop !670

48:                                               ; preds = %3
  ret void, !dbg !672
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_tab_cbcenc_init(%struct.br_des_tab_cbcenc_keys* %0, i8* %1, i64 %2) #0 !dbg !673 {
  call void @llvm.dbg.value(metadata %struct.br_des_tab_cbcenc_keys* %0, metadata !683, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8* %1, metadata !685, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i64 %2, metadata !686, metadata !DIExpression()), !dbg !684
  %4 = getelementptr inbounds %struct.br_des_tab_cbcenc_keys, %struct.br_des_tab_cbcenc_keys* %0, i32 0, i32 0, !dbg !687
  store %struct.br_block_cbcenc_class_* @br_des_tab_cbcenc_vtable, %struct.br_block_cbcenc_class_** %4, align 8, !dbg !688
  %5 = getelementptr inbounds %struct.br_des_tab_cbcenc_keys, %struct.br_des_tab_cbcenc_keys* %0, i32 0, i32 1, !dbg !689
  %6 = getelementptr inbounds [96 x i32], [96 x i32]* %5, i64 0, i64 0, !dbg !690
  %7 = call i32 @br_des_tab_keysched(i32* %6, i8* %1, i64 %2), !dbg !691
  %8 = getelementptr inbounds %struct.br_des_tab_cbcenc_keys, %struct.br_des_tab_cbcenc_keys* %0, i32 0, i32 2, !dbg !692
  store i32 %7, i32* %8, align 8, !dbg !693
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_tab_cbcenc_run(%struct.br_des_tab_cbcenc_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !695 {
  call void @llvm.dbg.value(metadata %struct.br_des_tab_cbcenc_keys* %0, metadata !700, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i8* %1, metadata !702, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i8* %2, metadata !703, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 %3, metadata !704, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i8* %1, metadata !705, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i8* %2, metadata !706, metadata !DIExpression()), !dbg !701
  br label %5, !dbg !707

5:                                                ; preds = %23, %4
  %.02 = phi i64 [ %3, %4 ], [ %29, %23 ]
  %.01 = phi i8* [ %2, %4 ], [ %28, %23 ], !dbg !701
  call void @llvm.dbg.value(metadata i8* %.01, metadata !706, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 %.02, metadata !704, metadata !DIExpression()), !dbg !701
  %6 = icmp ugt i64 %.02, 0, !dbg !708
  br i1 %6, label %7, label %30, !dbg !707

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !709, metadata !DIExpression()), !dbg !711
  br label %8, !dbg !712

8:                                                ; preds = %21, %7
  %.0 = phi i32 [ 0, %7 ], [ %22, %21 ], !dbg !714
  call void @llvm.dbg.value(metadata i32 %.0, metadata !709, metadata !DIExpression()), !dbg !711
  %9 = icmp slt i32 %.0, 8, !dbg !715
  br i1 %9, label %10, label %23, !dbg !717

10:                                               ; preds = %8
  %11 = sext i32 %.0 to i64, !dbg !718
  %12 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !718
  %13 = load i8, i8* %12, align 1, !dbg !718
  %14 = zext i8 %13 to i32, !dbg !718
  %15 = sext i32 %.0 to i64, !dbg !720
  %16 = getelementptr inbounds i8, i8* %.01, i64 %15, !dbg !720
  %17 = load i8, i8* %16, align 1, !dbg !721
  %18 = zext i8 %17 to i32, !dbg !721
  %19 = xor i32 %18, %14, !dbg !721
  %20 = trunc i32 %19 to i8, !dbg !721
  store i8 %20, i8* %16, align 1, !dbg !721
  br label %21, !dbg !722

21:                                               ; preds = %10
  %22 = add nsw i32 %.0, 1, !dbg !723
  call void @llvm.dbg.value(metadata i32 %22, metadata !709, metadata !DIExpression()), !dbg !711
  br label %8, !dbg !724, !llvm.loop !725

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.br_des_tab_cbcenc_keys, %struct.br_des_tab_cbcenc_keys* %0, i32 0, i32 2, !dbg !727
  %25 = load i32, i32* %24, align 8, !dbg !727
  %26 = getelementptr inbounds %struct.br_des_tab_cbcenc_keys, %struct.br_des_tab_cbcenc_keys* %0, i32 0, i32 1, !dbg !728
  %27 = getelementptr inbounds [96 x i32], [96 x i32]* %26, i64 0, i64 0, !dbg !729
  call void @br_des_tab_process_block(i32 %25, i32* %27, i8* %.01), !dbg !730
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %.01, i64 8, i1 false), !dbg !731
  %28 = getelementptr inbounds i8, i8* %.01, i64 8, !dbg !732
  call void @llvm.dbg.value(metadata i8* %28, metadata !706, metadata !DIExpression()), !dbg !701
  %29 = sub i64 %.02, 8, !dbg !733
  call void @llvm.dbg.value(metadata i64 %29, metadata !704, metadata !DIExpression()), !dbg !701
  br label %5, !dbg !707, !llvm.loop !734

30:                                               ; preds = %5
  ret void, !dbg !736
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!71, !73, !2, !42}
!llvm.ident = !{!76, !76, !76, !76}
!llvm.module.flags = !{!77, !78, !79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "S1", scope: !2, file: !3, line: 52, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/des_tab.c", directory: "/home/luwei/bech-back/BearSSL/DES_table")
!4 = !{}
!5 = !{!6, !9, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 26, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !12, line: 42, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!0, !15, !21, !23, !25, !27, !29, !31, !33, !38}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "S2", scope: !2, file: !3, line: 71, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !19)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!19 = !{!20}
!20 = !DISubrange(count: 64)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "S3", scope: !2, file: !3, line: 90, type: !17, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "S4", scope: !2, file: !3, line: 109, type: !17, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "S5", scope: !2, file: !3, line: 128, type: !17, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "S6", scope: !2, file: !3, line: 147, type: !17, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "S7", scope: !2, file: !3, line: 166, type: !17, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "S8", scope: !2, file: !3, line: 185, type: !17, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "PC2left", scope: !2, file: !3, line: 32, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 224, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 28)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "PC2right", scope: !2, file: !3, line: 42, type: !35, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "br_des_tab_cbcenc_vtable", scope: !42, file: !43, line: 59, type: !45, isLocal: false, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !44, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../BearSSL/src/symcipher/des_tab_cbcenc.c", directory: "/home/luwei/bech-back/BearSSL/DES_table")
!44 = !{!40}
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcenc_class", file: !47, line: 393, baseType: !48)
!47 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/DES_table")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcenc_class_", file: !47, line: 394, size: 256, elements: !49)
!49 = !{!50, !54, !55, !56, !64}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !48, file: !47, line: 399, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 46, baseType: !53)
!52 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!53 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !48, file: !47, line: 404, baseType: !13, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !48, file: !47, line: 410, baseType: !13, size: 32, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !48, file: !47, line: 423, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !62, !51}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !48, file: !47, line: 439, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !70, !70, !51}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!72 = !DIFile(filename: "cbc_encrypt.c", directory: "/home/luwei/bech-back/BearSSL/DES_table")
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !75, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "../BearSSL/src/symcipher/des_support.c", directory: "/home/luwei/bech-back/BearSSL/DES_table")
!75 = !{!9, !6}
!76 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!77 = !{i32 7, !"Dwarf Version", i32 4}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 4}
!80 = distinct !DISubprogram(name: "cbc_encrypt_wrapper", scope: !72, file: !72, line: 3, type: !81, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !70, !70, !51}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_des_tab_cbcenc_keys", file: !47, line: 2231, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 2224, size: 3200, elements: !87)
!87 = !{!88, !108, !112}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !86, file: !47, line: 2226, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcenc_class", file: !47, line: 393, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcenc_class_", file: !47, line: 394, size: 256, elements: !93)
!93 = !{!94, !95, !96, !97, !102}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !92, file: !47, line: 399, baseType: !51, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !92, file: !47, line: 404, baseType: !13, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !92, file: !47, line: 410, baseType: !13, size: 32, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !92, file: !47, line: 423, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101, !62, !51}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !92, file: !47, line: 439, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106, !70, !70, !51}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !86, file: !47, line: 2228, baseType: !109, size: 3072, offset: 64)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3072, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !86, file: !47, line: 2229, baseType: !13, size: 32, offset: 3136)
!113 = !DILocalVariable(name: "ctx", arg: 1, scope: !80, file: !72, line: 3, type: !83)
!114 = !DILocation(line: 0, scope: !80)
!115 = !DILocalVariable(name: "iv", arg: 2, scope: !80, file: !72, line: 4, type: !70)
!116 = !DILocalVariable(name: "data", arg: 3, scope: !80, file: !72, line: 4, type: !70)
!117 = !DILocalVariable(name: "len", arg: 4, scope: !80, file: !72, line: 4, type: !51)
!118 = !DILocation(line: 5, column: 12, scope: !80)
!119 = !DILocation(line: 5, column: 2, scope: !80)
!120 = !DILocation(line: 6, column: 12, scope: !80)
!121 = !DILocation(line: 6, column: 2, scope: !80)
!122 = !DILocation(line: 7, column: 12, scope: !80)
!123 = !DILocation(line: 7, column: 2, scope: !80)
!124 = !DILocation(line: 8, column: 12, scope: !80)
!125 = !DILocation(line: 8, column: 2, scope: !80)
!126 = !DILocation(line: 10, column: 31, scope: !80)
!127 = !DILocation(line: 10, column: 12, scope: !80)
!128 = !DILocation(line: 10, column: 2, scope: !80)
!129 = !DILocation(line: 15, column: 12, scope: !80)
!130 = !DILocation(line: 15, column: 2, scope: !80)
!131 = !DILocation(line: 16, column: 12, scope: !80)
!132 = !DILocation(line: 16, column: 2, scope: !80)
!133 = !DILocation(line: 18, column: 2, scope: !80)
!134 = !DILocation(line: 19, column: 1, scope: !80)
!135 = distinct !DISubprogram(name: "vfct_tmp", scope: !72, file: !72, line: 27, type: !136, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !138, !139, !70, !70, !51}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!140 = !DILocalVariable(name: "sk", arg: 1, scope: !135, file: !72, line: 27, type: !138)
!141 = !DILocation(line: 0, scope: !135)
!142 = !DILocalVariable(name: "ctx", arg: 2, scope: !135, file: !72, line: 28, type: !139)
!143 = !DILocalVariable(name: "iv", arg: 3, scope: !135, file: !72, line: 28, type: !70)
!144 = !DILocalVariable(name: "data", arg: 4, scope: !135, file: !72, line: 28, type: !70)
!145 = !DILocalVariable(name: "len", arg: 5, scope: !135, file: !72, line: 28, type: !51)
!146 = !DILocation(line: 29, column: 2, scope: !135)
!147 = !DILocation(line: 30, column: 1, scope: !135)
!148 = distinct !DISubprogram(name: "cbc_encrypt_wrapper_t", scope: !72, file: !72, line: 32, type: !149, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!149 = !DISubroutineType(types: !150)
!150 = !{null}
!151 = !DILocalVariable(name: "key", scope: !148, file: !72, line: 33, type: !84)
!152 = !DILocation(line: 33, column: 31, scope: !148)
!153 = !DILocation(line: 33, column: 37, scope: !148)
!154 = !DILocalVariable(name: "ctx", scope: !148, file: !72, line: 34, type: !83)
!155 = !DILocation(line: 0, scope: !148)
!156 = !DILocation(line: 35, column: 13, scope: !148)
!157 = !DILocalVariable(name: "iv", scope: !148, file: !72, line: 35, type: !70)
!158 = !DILocation(line: 36, column: 15, scope: !148)
!159 = !DILocalVariable(name: "data", scope: !148, file: !72, line: 36, type: !70)
!160 = !DILocalVariable(name: "len", scope: !148, file: !72, line: 37, type: !51)
!161 = !DILocation(line: 38, column: 22, scope: !148)
!162 = !DILocation(line: 38, column: 17, scope: !148)
!163 = !DILocalVariable(name: "sk", scope: !148, file: !72, line: 38, type: !138)
!164 = !DILocation(line: 39, column: 2, scope: !148)
!165 = !DILocation(line: 40, column: 1, scope: !148)
!166 = distinct !DISubprogram(name: "br_des_do_IP", scope: !74, file: !74, line: 29, type: !167, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !138, !138}
!169 = !DILocalVariable(name: "xl", arg: 1, scope: !166, file: !74, line: 29, type: !138)
!170 = !DILocation(line: 0, scope: !166)
!171 = !DILocalVariable(name: "xr", arg: 2, scope: !166, file: !74, line: 29, type: !138)
!172 = !DILocation(line: 38, column: 6, scope: !166)
!173 = !DILocalVariable(name: "l", scope: !166, file: !74, line: 36, type: !9)
!174 = !DILocation(line: 39, column: 6, scope: !166)
!175 = !DILocalVariable(name: "r", scope: !166, file: !74, line: 36, type: !9)
!176 = !DILocation(line: 40, column: 10, scope: !166)
!177 = !DILocation(line: 40, column: 17, scope: !166)
!178 = !DILocation(line: 40, column: 22, scope: !166)
!179 = !DILocalVariable(name: "t", scope: !166, file: !74, line: 36, type: !9)
!180 = !DILocation(line: 41, column: 4, scope: !166)
!181 = !DILocation(line: 42, column: 9, scope: !166)
!182 = !DILocation(line: 42, column: 4, scope: !166)
!183 = !DILocation(line: 43, column: 10, scope: !166)
!184 = !DILocation(line: 43, column: 17, scope: !166)
!185 = !DILocation(line: 43, column: 22, scope: !166)
!186 = !DILocation(line: 44, column: 4, scope: !166)
!187 = !DILocation(line: 45, column: 9, scope: !166)
!188 = !DILocation(line: 45, column: 4, scope: !166)
!189 = !DILocation(line: 46, column: 10, scope: !166)
!190 = !DILocation(line: 46, column: 17, scope: !166)
!191 = !DILocation(line: 46, column: 22, scope: !166)
!192 = !DILocation(line: 47, column: 4, scope: !166)
!193 = !DILocation(line: 48, column: 9, scope: !166)
!194 = !DILocation(line: 48, column: 4, scope: !166)
!195 = !DILocation(line: 49, column: 10, scope: !166)
!196 = !DILocation(line: 49, column: 17, scope: !166)
!197 = !DILocation(line: 49, column: 22, scope: !166)
!198 = !DILocation(line: 50, column: 4, scope: !166)
!199 = !DILocation(line: 51, column: 9, scope: !166)
!200 = !DILocation(line: 51, column: 4, scope: !166)
!201 = !DILocation(line: 52, column: 10, scope: !166)
!202 = !DILocation(line: 52, column: 17, scope: !166)
!203 = !DILocation(line: 52, column: 22, scope: !166)
!204 = !DILocation(line: 53, column: 4, scope: !166)
!205 = !DILocation(line: 54, column: 9, scope: !166)
!206 = !DILocation(line: 54, column: 4, scope: !166)
!207 = !DILocation(line: 55, column: 6, scope: !166)
!208 = !DILocation(line: 56, column: 6, scope: !166)
!209 = !DILocation(line: 57, column: 1, scope: !166)
!210 = distinct !DISubprogram(name: "br_des_do_invIP", scope: !74, file: !74, line: 61, type: !167, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!211 = !DILocalVariable(name: "xl", arg: 1, scope: !210, file: !74, line: 61, type: !138)
!212 = !DILocation(line: 0, scope: !210)
!213 = !DILocalVariable(name: "xr", arg: 2, scope: !210, file: !74, line: 61, type: !138)
!214 = !DILocation(line: 68, column: 6, scope: !210)
!215 = !DILocalVariable(name: "l", scope: !210, file: !74, line: 66, type: !9)
!216 = !DILocation(line: 69, column: 6, scope: !210)
!217 = !DILocalVariable(name: "r", scope: !210, file: !74, line: 66, type: !9)
!218 = !DILocation(line: 70, column: 10, scope: !210)
!219 = !DILocation(line: 70, column: 17, scope: !210)
!220 = !DILocation(line: 70, column: 22, scope: !210)
!221 = !DILocalVariable(name: "t", scope: !210, file: !74, line: 66, type: !9)
!222 = !DILocation(line: 71, column: 4, scope: !210)
!223 = !DILocation(line: 72, column: 9, scope: !210)
!224 = !DILocation(line: 72, column: 4, scope: !210)
!225 = !DILocation(line: 73, column: 10, scope: !210)
!226 = !DILocation(line: 73, column: 17, scope: !210)
!227 = !DILocation(line: 73, column: 22, scope: !210)
!228 = !DILocation(line: 74, column: 4, scope: !210)
!229 = !DILocation(line: 75, column: 9, scope: !210)
!230 = !DILocation(line: 75, column: 4, scope: !210)
!231 = !DILocation(line: 76, column: 10, scope: !210)
!232 = !DILocation(line: 76, column: 17, scope: !210)
!233 = !DILocation(line: 76, column: 22, scope: !210)
!234 = !DILocation(line: 77, column: 4, scope: !210)
!235 = !DILocation(line: 78, column: 9, scope: !210)
!236 = !DILocation(line: 78, column: 4, scope: !210)
!237 = !DILocation(line: 79, column: 10, scope: !210)
!238 = !DILocation(line: 79, column: 17, scope: !210)
!239 = !DILocation(line: 79, column: 22, scope: !210)
!240 = !DILocation(line: 80, column: 4, scope: !210)
!241 = !DILocation(line: 81, column: 9, scope: !210)
!242 = !DILocation(line: 81, column: 4, scope: !210)
!243 = !DILocation(line: 82, column: 10, scope: !210)
!244 = !DILocation(line: 82, column: 17, scope: !210)
!245 = !DILocation(line: 82, column: 22, scope: !210)
!246 = !DILocation(line: 83, column: 4, scope: !210)
!247 = !DILocation(line: 84, column: 9, scope: !210)
!248 = !DILocation(line: 84, column: 4, scope: !210)
!249 = !DILocation(line: 85, column: 6, scope: !210)
!250 = !DILocation(line: 86, column: 6, scope: !210)
!251 = !DILocation(line: 87, column: 1, scope: !210)
!252 = distinct !DISubprogram(name: "br_des_keysched_unit", scope: !74, file: !74, line: 91, type: !253, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !138, !62}
!255 = !DILocalVariable(name: "skey", arg: 1, scope: !252, file: !74, line: 91, type: !138)
!256 = !DILocation(line: 0, scope: !252)
!257 = !DILocalVariable(name: "key", arg: 2, scope: !252, file: !74, line: 91, type: !62)
!258 = !DILocalVariable(name: "xl", scope: !252, file: !74, line: 93, type: !9)
!259 = !DILocation(line: 93, column: 11, scope: !252)
!260 = !DILocalVariable(name: "xr", scope: !252, file: !74, line: 93, type: !9)
!261 = !DILocation(line: 93, column: 15, scope: !252)
!262 = !DILocation(line: 96, column: 7, scope: !252)
!263 = !DILocation(line: 96, column: 5, scope: !252)
!264 = !DILocation(line: 97, column: 45, scope: !252)
!265 = !DILocation(line: 97, column: 7, scope: !252)
!266 = !DILocation(line: 97, column: 5, scope: !252)
!267 = !DILocation(line: 121, column: 2, scope: !252)
!268 = !DILocation(line: 122, column: 9, scope: !252)
!269 = !DILocation(line: 122, column: 12, scope: !252)
!270 = !DILocation(line: 122, column: 36, scope: !252)
!271 = !DILocation(line: 123, column: 7, scope: !252)
!272 = !DILocation(line: 123, column: 10, scope: !252)
!273 = !DILocation(line: 123, column: 34, scope: !252)
!274 = !DILocation(line: 123, column: 3, scope: !252)
!275 = !DILocation(line: 124, column: 7, scope: !252)
!276 = !DILocation(line: 124, column: 10, scope: !252)
!277 = !DILocation(line: 124, column: 34, scope: !252)
!278 = !DILocation(line: 124, column: 3, scope: !252)
!279 = !DILocation(line: 125, column: 7, scope: !252)
!280 = !DILocation(line: 125, column: 10, scope: !252)
!281 = !DILocation(line: 125, column: 34, scope: !252)
!282 = !DILocation(line: 125, column: 3, scope: !252)
!283 = !DILocalVariable(name: "kl", scope: !252, file: !74, line: 93, type: !9)
!284 = !DILocation(line: 126, column: 9, scope: !252)
!285 = !DILocation(line: 126, column: 12, scope: !252)
!286 = !DILocation(line: 126, column: 36, scope: !252)
!287 = !DILocation(line: 127, column: 7, scope: !252)
!288 = !DILocation(line: 127, column: 10, scope: !252)
!289 = !DILocation(line: 127, column: 34, scope: !252)
!290 = !DILocation(line: 127, column: 3, scope: !252)
!291 = !DILocation(line: 128, column: 7, scope: !252)
!292 = !DILocation(line: 128, column: 10, scope: !252)
!293 = !DILocation(line: 128, column: 34, scope: !252)
!294 = !DILocation(line: 128, column: 3, scope: !252)
!295 = !DILocation(line: 129, column: 7, scope: !252)
!296 = !DILocation(line: 129, column: 10, scope: !252)
!297 = !DILocation(line: 129, column: 34, scope: !252)
!298 = !DILocation(line: 129, column: 3, scope: !252)
!299 = !DILocalVariable(name: "kr", scope: !252, file: !74, line: 93, type: !9)
!300 = !DILocalVariable(name: "i", scope: !252, file: !74, line: 94, type: !301)
!301 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!302 = !DILocation(line: 135, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !252, file: !74, line: 135, column: 2)
!304 = !DILocation(line: 0, scope: !303)
!305 = !DILocation(line: 135, column: 16, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !74, line: 135, column: 2)
!307 = !DILocation(line: 135, column: 2, scope: !303)
!308 = !DILocation(line: 136, column: 10, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !74, line: 136, column: 7)
!310 = distinct !DILexicalBlock(scope: !306, file: !74, line: 135, column: 28)
!311 = !DILocation(line: 136, column: 16, scope: !309)
!312 = !DILocation(line: 136, column: 7, scope: !310)
!313 = !DILocation(line: 137, column: 13, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !74, line: 136, column: 26)
!315 = !DILocation(line: 137, column: 25, scope: !314)
!316 = !DILocation(line: 137, column: 19, scope: !314)
!317 = !DILocation(line: 138, column: 13, scope: !314)
!318 = !DILocation(line: 138, column: 25, scope: !314)
!319 = !DILocation(line: 138, column: 19, scope: !314)
!320 = !DILocation(line: 139, column: 3, scope: !314)
!321 = !DILocation(line: 140, column: 13, scope: !322)
!322 = distinct !DILexicalBlock(scope: !309, file: !74, line: 139, column: 10)
!323 = !DILocation(line: 140, column: 25, scope: !322)
!324 = !DILocation(line: 140, column: 19, scope: !322)
!325 = !DILocation(line: 141, column: 13, scope: !322)
!326 = !DILocation(line: 141, column: 25, scope: !322)
!327 = !DILocation(line: 141, column: 19, scope: !322)
!328 = !DILocation(line: 0, scope: !309)
!329 = !DILocation(line: 143, column: 6, scope: !310)
!330 = !DILocation(line: 144, column: 6, scope: !310)
!331 = !DILocation(line: 145, column: 11, scope: !310)
!332 = !DILocation(line: 145, column: 17, scope: !310)
!333 = !DILocation(line: 145, column: 3, scope: !310)
!334 = !DILocation(line: 145, column: 22, scope: !310)
!335 = !DILocation(line: 146, column: 11, scope: !310)
!336 = !DILocation(line: 146, column: 17, scope: !310)
!337 = !DILocation(line: 146, column: 3, scope: !310)
!338 = !DILocation(line: 146, column: 22, scope: !310)
!339 = !DILocation(line: 147, column: 2, scope: !310)
!340 = !DILocation(line: 135, column: 24, scope: !306)
!341 = !DILocation(line: 135, column: 2, scope: !306)
!342 = distinct !{!342, !307, !343, !344}
!343 = !DILocation(line: 147, column: 2, scope: !303)
!344 = !{!"llvm.loop.mustprogress"}
!345 = !DILocation(line: 148, column: 1, scope: !252)
!346 = distinct !DISubprogram(name: "br_dec32be", scope: !347, file: !347, line: 590, type: !348, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !4)
!347 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/DES_table")
!348 = !DISubroutineType(types: !349)
!349 = !{!9, !62}
!350 = !DILocalVariable(name: "src", arg: 1, scope: !346, file: !347, line: 590, type: !62)
!351 = !DILocation(line: 0, scope: !346)
!352 = !DILocalVariable(name: "buf", scope: !346, file: !347, line: 595, type: !6)
!353 = !DILocation(line: 598, column: 20, scope: !346)
!354 = !DILocation(line: 598, column: 10, scope: !346)
!355 = !DILocation(line: 598, column: 27, scope: !346)
!356 = !DILocation(line: 599, column: 16, scope: !346)
!357 = !DILocation(line: 599, column: 6, scope: !346)
!358 = !DILocation(line: 599, column: 23, scope: !346)
!359 = !DILocation(line: 599, column: 3, scope: !346)
!360 = !DILocation(line: 600, column: 16, scope: !346)
!361 = !DILocation(line: 600, column: 6, scope: !346)
!362 = !DILocation(line: 600, column: 23, scope: !346)
!363 = !DILocation(line: 600, column: 3, scope: !346)
!364 = !DILocation(line: 601, column: 15, scope: !346)
!365 = !DILocation(line: 601, column: 5, scope: !346)
!366 = !DILocation(line: 601, column: 3, scope: !346)
!367 = !DILocation(line: 598, column: 2, scope: !346)
!368 = distinct !DISubprogram(name: "br_des_rev_skey", scope: !74, file: !74, line: 152, type: !369, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !138}
!371 = !DILocalVariable(name: "skey", arg: 1, scope: !368, file: !74, line: 152, type: !138)
!372 = !DILocation(line: 0, scope: !368)
!373 = !DILocalVariable(name: "i", scope: !368, file: !74, line: 154, type: !301)
!374 = !DILocation(line: 156, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !368, file: !74, line: 156, column: 2)
!376 = !DILocation(line: 0, scope: !375)
!377 = !DILocation(line: 156, column: 16, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !74, line: 156, column: 2)
!379 = !DILocation(line: 156, column: 2, scope: !375)
!380 = !DILocation(line: 159, column: 14, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !74, line: 156, column: 30)
!382 = !DILocation(line: 159, column: 7, scope: !381)
!383 = !DILocalVariable(name: "t", scope: !381, file: !74, line: 157, type: !9)
!384 = !DILocation(line: 0, scope: !381)
!385 = !DILocation(line: 160, column: 25, scope: !381)
!386 = !DILocation(line: 160, column: 17, scope: !381)
!387 = !DILocation(line: 160, column: 10, scope: !381)
!388 = !DILocation(line: 160, column: 3, scope: !381)
!389 = !DILocation(line: 160, column: 15, scope: !381)
!390 = !DILocation(line: 161, column: 11, scope: !381)
!391 = !DILocation(line: 161, column: 3, scope: !381)
!392 = !DILocation(line: 161, column: 16, scope: !381)
!393 = !DILocation(line: 162, column: 14, scope: !381)
!394 = !DILocation(line: 162, column: 7, scope: !381)
!395 = !DILocation(line: 163, column: 25, scope: !381)
!396 = !DILocation(line: 163, column: 17, scope: !381)
!397 = !DILocation(line: 163, column: 10, scope: !381)
!398 = !DILocation(line: 163, column: 3, scope: !381)
!399 = !DILocation(line: 163, column: 15, scope: !381)
!400 = !DILocation(line: 164, column: 11, scope: !381)
!401 = !DILocation(line: 164, column: 3, scope: !381)
!402 = !DILocation(line: 164, column: 16, scope: !381)
!403 = !DILocation(line: 165, column: 2, scope: !381)
!404 = !DILocation(line: 156, column: 24, scope: !378)
!405 = !DILocation(line: 156, column: 2, scope: !378)
!406 = distinct !{!406, !379, !407, !344}
!407 = !DILocation(line: 165, column: 2, scope: !375)
!408 = !DILocation(line: 166, column: 1, scope: !368)
!409 = distinct !DISubprogram(name: "br_des_tab_process_block", scope: !3, file: !3, line: 242, type: !410, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !13, !412, !70}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!413 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !409, file: !3, line: 242, type: !13)
!414 = !DILocation(line: 0, scope: !409)
!415 = !DILocalVariable(name: "skey", arg: 2, scope: !409, file: !3, line: 242, type: !412)
!416 = !DILocalVariable(name: "block", arg: 3, scope: !409, file: !3, line: 242, type: !70)
!417 = !DILocalVariable(name: "l", scope: !409, file: !3, line: 245, type: !9)
!418 = !DILocation(line: 245, column: 11, scope: !409)
!419 = !DILocalVariable(name: "r", scope: !409, file: !3, line: 245, type: !9)
!420 = !DILocation(line: 245, column: 14, scope: !409)
!421 = !DILocalVariable(name: "buf", scope: !409, file: !3, line: 244, type: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!423 = !DILocation(line: 248, column: 6, scope: !409)
!424 = !DILocation(line: 248, column: 4, scope: !409)
!425 = !DILocation(line: 249, column: 21, scope: !409)
!426 = !DILocation(line: 249, column: 6, scope: !409)
!427 = !DILocation(line: 249, column: 4, scope: !409)
!428 = !DILocation(line: 250, column: 2, scope: !409)
!429 = !DILocation(line: 251, column: 2, scope: !409)
!430 = !DILocation(line: 251, column: 20, scope: !409)
!431 = !DILocation(line: 251, column: 23, scope: !409)
!432 = !DILocation(line: 252, column: 3, scope: !433)
!433 = distinct !DILexicalBlock(scope: !409, file: !3, line: 251, column: 28)
!434 = !DILocation(line: 253, column: 8, scope: !433)
!435 = distinct !{!435, !429, !436, !344}
!436 = !DILocation(line: 254, column: 2, scope: !409)
!437 = !DILocation(line: 255, column: 2, scope: !409)
!438 = !DILocation(line: 256, column: 18, scope: !409)
!439 = !DILocation(line: 256, column: 2, scope: !409)
!440 = !DILocation(line: 257, column: 17, scope: !409)
!441 = !DILocation(line: 257, column: 22, scope: !409)
!442 = !DILocation(line: 257, column: 2, scope: !409)
!443 = !DILocation(line: 258, column: 1, scope: !409)
!444 = distinct !DISubprogram(name: "br_dec32be", scope: !347, file: !347, line: 590, type: !348, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!445 = !DILocalVariable(name: "src", arg: 1, scope: !444, file: !347, line: 590, type: !62)
!446 = !DILocation(line: 0, scope: !444)
!447 = !DILocalVariable(name: "buf", scope: !444, file: !347, line: 595, type: !6)
!448 = !DILocation(line: 598, column: 20, scope: !444)
!449 = !DILocation(line: 598, column: 10, scope: !444)
!450 = !DILocation(line: 598, column: 27, scope: !444)
!451 = !DILocation(line: 599, column: 16, scope: !444)
!452 = !DILocation(line: 599, column: 6, scope: !444)
!453 = !DILocation(line: 599, column: 23, scope: !444)
!454 = !DILocation(line: 599, column: 3, scope: !444)
!455 = !DILocation(line: 600, column: 16, scope: !444)
!456 = !DILocation(line: 600, column: 6, scope: !444)
!457 = !DILocation(line: 600, column: 23, scope: !444)
!458 = !DILocation(line: 600, column: 3, scope: !444)
!459 = !DILocation(line: 601, column: 15, scope: !444)
!460 = !DILocation(line: 601, column: 5, scope: !444)
!461 = !DILocation(line: 601, column: 3, scope: !444)
!462 = !DILocation(line: 598, column: 2, scope: !444)
!463 = distinct !DISubprogram(name: "process_block_unit", scope: !3, file: !3, line: 222, type: !464, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !138, !138, !412}
!466 = !DILocalVariable(name: "pl", arg: 1, scope: !463, file: !3, line: 222, type: !138)
!467 = !DILocation(line: 0, scope: !463)
!468 = !DILocalVariable(name: "pr", arg: 2, scope: !463, file: !3, line: 222, type: !138)
!469 = !DILocalVariable(name: "skey", arg: 3, scope: !463, file: !3, line: 222, type: !412)
!470 = !DILocation(line: 227, column: 6, scope: !463)
!471 = !DILocalVariable(name: "l", scope: !463, file: !3, line: 225, type: !9)
!472 = !DILocation(line: 228, column: 6, scope: !463)
!473 = !DILocalVariable(name: "r", scope: !463, file: !3, line: 225, type: !9)
!474 = !DILocalVariable(name: "i", scope: !463, file: !3, line: 224, type: !301)
!475 = !DILocation(line: 229, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !463, file: !3, line: 229, column: 2)
!477 = !DILocation(line: 0, scope: !476)
!478 = !DILocation(line: 229, column: 16, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !3, line: 229, column: 2)
!480 = !DILocation(line: 229, column: 2, scope: !476)
!481 = !DILocation(line: 232, column: 28, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !3, line: 229, column: 28)
!483 = !DILocation(line: 232, column: 34, scope: !482)
!484 = !DILocation(line: 232, column: 20, scope: !482)
!485 = !DILocation(line: 232, column: 48, scope: !482)
!486 = !DILocation(line: 232, column: 54, scope: !482)
!487 = !DILocation(line: 232, column: 40, scope: !482)
!488 = !DILocation(line: 232, column: 11, scope: !482)
!489 = !DILocation(line: 232, column: 9, scope: !482)
!490 = !DILocalVariable(name: "t", scope: !482, file: !3, line: 230, type: !9)
!491 = !DILocation(line: 0, scope: !482)
!492 = !DILocation(line: 235, column: 2, scope: !482)
!493 = !DILocation(line: 229, column: 24, scope: !479)
!494 = !DILocation(line: 229, column: 2, scope: !479)
!495 = distinct !{!495, !480, !496, !344}
!496 = !DILocation(line: 235, column: 2, scope: !476)
!497 = !DILocation(line: 236, column: 6, scope: !463)
!498 = !DILocation(line: 237, column: 6, scope: !463)
!499 = !DILocation(line: 238, column: 1, scope: !463)
!500 = distinct !DISubprogram(name: "br_enc32be", scope: !347, file: !347, line: 558, type: !501, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !70, !9}
!503 = !DILocalVariable(name: "dst", arg: 1, scope: !500, file: !347, line: 558, type: !70)
!504 = !DILocation(line: 0, scope: !500)
!505 = !DILocalVariable(name: "x", arg: 2, scope: !500, file: !347, line: 558, type: !9)
!506 = !DILocalVariable(name: "buf", scope: !500, file: !347, line: 563, type: !422)
!507 = !DILocation(line: 566, column: 29, scope: !500)
!508 = !DILocation(line: 566, column: 11, scope: !500)
!509 = !DILocation(line: 566, column: 2, scope: !500)
!510 = !DILocation(line: 566, column: 9, scope: !500)
!511 = !DILocation(line: 567, column: 29, scope: !500)
!512 = !DILocation(line: 567, column: 11, scope: !500)
!513 = !DILocation(line: 567, column: 2, scope: !500)
!514 = !DILocation(line: 567, column: 9, scope: !500)
!515 = !DILocation(line: 568, column: 29, scope: !500)
!516 = !DILocation(line: 568, column: 11, scope: !500)
!517 = !DILocation(line: 568, column: 2, scope: !500)
!518 = !DILocation(line: 568, column: 9, scope: !500)
!519 = !DILocation(line: 569, column: 11, scope: !500)
!520 = !DILocation(line: 569, column: 2, scope: !500)
!521 = !DILocation(line: 569, column: 9, scope: !500)
!522 = !DILocation(line: 571, column: 1, scope: !500)
!523 = distinct !DISubprogram(name: "Fconf", scope: !3, file: !3, line: 205, type: !524, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!524 = !DISubroutineType(types: !525)
!525 = !{!9, !9, !9, !9}
!526 = !DILocalVariable(name: "r0", arg: 1, scope: !523, file: !3, line: 205, type: !9)
!527 = !DILocation(line: 0, scope: !523)
!528 = !DILocalVariable(name: "skl", arg: 2, scope: !523, file: !3, line: 205, type: !9)
!529 = !DILocalVariable(name: "skr", arg: 3, scope: !523, file: !3, line: 205, type: !9)
!530 = !DILocation(line: 209, column: 11, scope: !523)
!531 = !DILocation(line: 209, column: 24, scope: !523)
!532 = !DILocation(line: 209, column: 18, scope: !523)
!533 = !DILocalVariable(name: "r1", scope: !523, file: !3, line: 207, type: !9)
!534 = !DILocation(line: 211, column: 13, scope: !523)
!535 = !DILocation(line: 211, column: 27, scope: !523)
!536 = !DILocation(line: 211, column: 20, scope: !523)
!537 = !DILocation(line: 211, column: 35, scope: !523)
!538 = !DILocation(line: 211, column: 5, scope: !523)
!539 = !DILocation(line: 212, column: 13, scope: !523)
!540 = !DILocation(line: 212, column: 27, scope: !523)
!541 = !DILocation(line: 212, column: 20, scope: !523)
!542 = !DILocation(line: 212, column: 35, scope: !523)
!543 = !DILocation(line: 212, column: 5, scope: !523)
!544 = !DILocation(line: 212, column: 3, scope: !523)
!545 = !DILocation(line: 213, column: 13, scope: !523)
!546 = !DILocation(line: 213, column: 27, scope: !523)
!547 = !DILocation(line: 213, column: 20, scope: !523)
!548 = !DILocation(line: 213, column: 35, scope: !523)
!549 = !DILocation(line: 213, column: 5, scope: !523)
!550 = !DILocation(line: 213, column: 3, scope: !523)
!551 = !DILocation(line: 214, column: 13, scope: !523)
!552 = !DILocation(line: 214, column: 20, scope: !523)
!553 = !DILocation(line: 214, column: 35, scope: !523)
!554 = !DILocation(line: 214, column: 5, scope: !523)
!555 = !DILocation(line: 214, column: 3, scope: !523)
!556 = !DILocation(line: 215, column: 13, scope: !523)
!557 = !DILocation(line: 215, column: 27, scope: !523)
!558 = !DILocation(line: 215, column: 20, scope: !523)
!559 = !DILocation(line: 215, column: 35, scope: !523)
!560 = !DILocation(line: 215, column: 5, scope: !523)
!561 = !DILocation(line: 215, column: 3, scope: !523)
!562 = !DILocation(line: 216, column: 13, scope: !523)
!563 = !DILocation(line: 216, column: 27, scope: !523)
!564 = !DILocation(line: 216, column: 20, scope: !523)
!565 = !DILocation(line: 216, column: 35, scope: !523)
!566 = !DILocation(line: 216, column: 5, scope: !523)
!567 = !DILocation(line: 216, column: 3, scope: !523)
!568 = !DILocation(line: 217, column: 13, scope: !523)
!569 = !DILocation(line: 217, column: 27, scope: !523)
!570 = !DILocation(line: 217, column: 20, scope: !523)
!571 = !DILocation(line: 217, column: 35, scope: !523)
!572 = !DILocation(line: 217, column: 5, scope: !523)
!573 = !DILocation(line: 217, column: 3, scope: !523)
!574 = !DILocation(line: 218, column: 13, scope: !523)
!575 = !DILocation(line: 218, column: 20, scope: !523)
!576 = !DILocation(line: 218, column: 35, scope: !523)
!577 = !DILocation(line: 218, column: 5, scope: !523)
!578 = !DILocation(line: 218, column: 3, scope: !523)
!579 = !DILocation(line: 210, column: 2, scope: !523)
!580 = distinct !DISubprogram(name: "br_des_tab_keysched", scope: !3, file: !3, line: 291, type: !581, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!581 = !DISubroutineType(types: !582)
!582 = !{!13, !138, !62, !51}
!583 = !DILocalVariable(name: "skey", arg: 1, scope: !580, file: !3, line: 291, type: !138)
!584 = !DILocation(line: 0, scope: !580)
!585 = !DILocalVariable(name: "key", arg: 2, scope: !580, file: !3, line: 291, type: !62)
!586 = !DILocalVariable(name: "key_len", arg: 3, scope: !580, file: !3, line: 291, type: !51)
!587 = !DILocation(line: 293, column: 2, scope: !580)
!588 = !DILocation(line: 295, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !580, file: !3, line: 293, column: 19)
!590 = !DILocation(line: 296, column: 3, scope: !589)
!591 = !DILocation(line: 298, column: 3, scope: !589)
!592 = !DILocation(line: 299, column: 22, scope: !589)
!593 = !DILocation(line: 299, column: 55, scope: !589)
!594 = !DILocation(line: 299, column: 3, scope: !589)
!595 = !DILocation(line: 300, column: 24, scope: !589)
!596 = !DILocation(line: 300, column: 3, scope: !589)
!597 = !DILocation(line: 301, column: 15, scope: !589)
!598 = !DILocation(line: 301, column: 3, scope: !589)
!599 = !DILocation(line: 302, column: 3, scope: !589)
!600 = !DILocation(line: 304, column: 3, scope: !589)
!601 = !DILocation(line: 305, column: 22, scope: !589)
!602 = !DILocation(line: 305, column: 55, scope: !589)
!603 = !DILocation(line: 305, column: 3, scope: !589)
!604 = !DILocation(line: 306, column: 24, scope: !589)
!605 = !DILocation(line: 306, column: 3, scope: !589)
!606 = !DILocation(line: 307, column: 22, scope: !589)
!607 = !DILocation(line: 307, column: 55, scope: !589)
!608 = !DILocation(line: 307, column: 3, scope: !589)
!609 = !DILocation(line: 308, column: 3, scope: !589)
!610 = !DILocation(line: 0, scope: !589)
!611 = !DILocation(line: 310, column: 1, scope: !580)
!612 = distinct !DISubprogram(name: "keysched_unit", scope: !3, file: !3, line: 261, type: !253, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!613 = !DILocalVariable(name: "skey", arg: 1, scope: !612, file: !3, line: 261, type: !138)
!614 = !DILocation(line: 0, scope: !612)
!615 = !DILocalVariable(name: "key", arg: 2, scope: !612, file: !3, line: 261, type: !62)
!616 = !DILocation(line: 265, column: 2, scope: !612)
!617 = !DILocalVariable(name: "i", scope: !612, file: !3, line: 263, type: !301)
!618 = !DILocation(line: 270, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !612, file: !3, line: 270, column: 2)
!620 = !DILocation(line: 0, scope: !619)
!621 = !DILocation(line: 270, column: 16, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !3, line: 270, column: 2)
!623 = !DILocation(line: 270, column: 2, scope: !619)
!624 = !DILocation(line: 274, column: 16, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !3, line: 270, column: 28)
!626 = !DILocation(line: 274, column: 22, scope: !625)
!627 = !DILocation(line: 274, column: 8, scope: !625)
!628 = !DILocalVariable(name: "xl", scope: !625, file: !3, line: 271, type: !9)
!629 = !DILocation(line: 0, scope: !625)
!630 = !DILocation(line: 275, column: 16, scope: !625)
!631 = !DILocation(line: 275, column: 22, scope: !625)
!632 = !DILocation(line: 275, column: 8, scope: !625)
!633 = !DILocalVariable(name: "xr", scope: !625, file: !3, line: 271, type: !9)
!634 = !DILocalVariable(name: "ul", scope: !625, file: !3, line: 271, type: !9)
!635 = !DILocalVariable(name: "ur", scope: !625, file: !3, line: 271, type: !9)
!636 = !DILocalVariable(name: "j", scope: !625, file: !3, line: 272, type: !301)
!637 = !DILocation(line: 278, column: 8, scope: !638)
!638 = distinct !DILexicalBlock(scope: !625, file: !3, line: 278, column: 3)
!639 = !DILocation(line: 0, scope: !638)
!640 = !DILocation(line: 278, column: 17, scope: !641)
!641 = distinct !DILexicalBlock(scope: !638, file: !3, line: 278, column: 3)
!642 = !DILocation(line: 278, column: 3, scope: !638)
!643 = !DILocation(line: 279, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !3, line: 278, column: 29)
!645 = !DILocation(line: 279, column: 22, scope: !644)
!646 = !DILocation(line: 279, column: 19, scope: !644)
!647 = !DILocation(line: 279, column: 7, scope: !644)
!648 = !DILocation(line: 280, column: 14, scope: !644)
!649 = !DILocation(line: 280, column: 22, scope: !644)
!650 = !DILocation(line: 280, column: 19, scope: !644)
!651 = !DILocation(line: 280, column: 7, scope: !644)
!652 = !DILocation(line: 281, column: 7, scope: !644)
!653 = !DILocation(line: 282, column: 7, scope: !644)
!654 = !DILocation(line: 283, column: 3, scope: !644)
!655 = !DILocation(line: 278, column: 25, scope: !641)
!656 = !DILocation(line: 278, column: 3, scope: !641)
!657 = distinct !{!657, !642, !658, !344}
!658 = !DILocation(line: 283, column: 3, scope: !638)
!659 = !DILocation(line: 284, column: 11, scope: !625)
!660 = !DILocation(line: 284, column: 17, scope: !625)
!661 = !DILocation(line: 284, column: 3, scope: !625)
!662 = !DILocation(line: 284, column: 22, scope: !625)
!663 = !DILocation(line: 285, column: 11, scope: !625)
!664 = !DILocation(line: 285, column: 17, scope: !625)
!665 = !DILocation(line: 285, column: 3, scope: !625)
!666 = !DILocation(line: 285, column: 22, scope: !625)
!667 = !DILocation(line: 286, column: 2, scope: !625)
!668 = !DILocation(line: 270, column: 24, scope: !622)
!669 = !DILocation(line: 270, column: 2, scope: !622)
!670 = distinct !{!670, !623, !671, !344}
!671 = !DILocation(line: 286, column: 2, scope: !619)
!672 = !DILocation(line: 287, column: 1, scope: !612)
!673 = distinct !DISubprogram(name: "br_des_tab_cbcenc_init", scope: !43, file: !43, line: 29, type: !674, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !4)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !676, !62, !51}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_des_tab_cbcenc_keys", file: !47, line: 2231, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 2224, size: 3200, elements: !679)
!679 = !{!680, !681, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !678, file: !47, line: 2226, baseType: !61, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !678, file: !47, line: 2228, baseType: !109, size: 3072, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !678, file: !47, line: 2229, baseType: !13, size: 32, offset: 3136)
!683 = !DILocalVariable(name: "ctx", arg: 1, scope: !673, file: !43, line: 29, type: !676)
!684 = !DILocation(line: 0, scope: !673)
!685 = !DILocalVariable(name: "key", arg: 2, scope: !673, file: !43, line: 30, type: !62)
!686 = !DILocalVariable(name: "len", arg: 3, scope: !673, file: !43, line: 30, type: !51)
!687 = !DILocation(line: 32, column: 7, scope: !673)
!688 = !DILocation(line: 32, column: 14, scope: !673)
!689 = !DILocation(line: 33, column: 45, scope: !673)
!690 = !DILocation(line: 33, column: 40, scope: !673)
!691 = !DILocation(line: 33, column: 20, scope: !673)
!692 = !DILocation(line: 33, column: 7, scope: !673)
!693 = !DILocation(line: 33, column: 18, scope: !673)
!694 = !DILocation(line: 34, column: 1, scope: !673)
!695 = distinct !DISubprogram(name: "br_des_tab_cbcenc_run", scope: !43, file: !43, line: 38, type: !696, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !4)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !698, !70, !70, !51}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!700 = !DILocalVariable(name: "ctx", arg: 1, scope: !695, file: !43, line: 38, type: !698)
!701 = !DILocation(line: 0, scope: !695)
!702 = !DILocalVariable(name: "iv", arg: 2, scope: !695, file: !43, line: 39, type: !70)
!703 = !DILocalVariable(name: "data", arg: 3, scope: !695, file: !43, line: 39, type: !70)
!704 = !DILocalVariable(name: "len", arg: 4, scope: !695, file: !43, line: 39, type: !51)
!705 = !DILocalVariable(name: "ivbuf", scope: !695, file: !43, line: 41, type: !422)
!706 = !DILocalVariable(name: "buf", scope: !695, file: !43, line: 41, type: !422)
!707 = !DILocation(line: 45, column: 2, scope: !695)
!708 = !DILocation(line: 45, column: 13, scope: !695)
!709 = !DILocalVariable(name: "i", scope: !710, file: !43, line: 46, type: !301)
!710 = distinct !DILexicalBlock(scope: !695, file: !43, line: 45, column: 18)
!711 = !DILocation(line: 0, scope: !710)
!712 = !DILocation(line: 48, column: 8, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !43, line: 48, column: 3)
!714 = !DILocation(line: 0, scope: !713)
!715 = !DILocation(line: 48, column: 17, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !43, line: 48, column: 3)
!717 = !DILocation(line: 48, column: 3, scope: !713)
!718 = !DILocation(line: 49, column: 14, scope: !719)
!719 = distinct !DILexicalBlock(scope: !716, file: !43, line: 48, column: 28)
!720 = !DILocation(line: 49, column: 4, scope: !719)
!721 = !DILocation(line: 49, column: 11, scope: !719)
!722 = !DILocation(line: 50, column: 3, scope: !719)
!723 = !DILocation(line: 48, column: 24, scope: !716)
!724 = !DILocation(line: 48, column: 3, scope: !716)
!725 = distinct !{!725, !717, !726, !344}
!726 = !DILocation(line: 50, column: 3, scope: !713)
!727 = !DILocation(line: 51, column: 33, scope: !710)
!728 = !DILocation(line: 51, column: 50, scope: !710)
!729 = !DILocation(line: 51, column: 45, scope: !710)
!730 = !DILocation(line: 51, column: 3, scope: !710)
!731 = !DILocation(line: 52, column: 3, scope: !710)
!732 = !DILocation(line: 53, column: 7, scope: !710)
!733 = !DILocation(line: 54, column: 7, scope: !710)
!734 = distinct !{!734, !707, !735, !344}
!735 = !DILocation(line: 55, column: 2, scope: !695)
!736 = !DILocation(line: 56, column: 1, scope: !695)
