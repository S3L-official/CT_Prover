; ModuleID = 'cbc_encrypt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_block_cbcenc_class_ = type { i64, i32, i32, void (%struct.br_block_cbcenc_class_**, i8*, i64)*, void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)* }
%struct.br_des_ct_cbcenc_keys = type { %struct.br_block_cbcenc_class_*, [96 x i32], i32 }
%struct.smack_value = type { i8* }
%struct.br_des_ct_cbcdec_keys = type { %struct.br_block_cbcdec_class_*, [96 x i32], i32 }
%struct.br_block_cbcdec_class_ = type { i64, i32, i32, void (%struct.br_block_cbcdec_class_**, i8*, i64)*, void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)* }

@QL0 = internal constant [16 x i8] c"\11\04\1B\17\0D\16\07\12\10\18\02\14\01\08\0F\1A", align 16, !dbg !0
@QR0 = internal constant [16 x i8] c"\19\13\09\01\05\0B\17\08\11\00\16\03\06\14\1B\18", align 16, !dbg !15
@QL1 = internal constant [16 x i8] c"\1C\1C\0E\0B\1C\1C\19\00\1C\1C\05\09\1C\1C\0C\15", align 16, !dbg !20
@QR1 = internal constant [16 x i8] c"\1C\1C\0F\04\1C\1C\1A\10\1C\1C\0C\07\1C\1C\0A\0E", align 16, !dbg !22
@br_des_ct_cbcenc_vtable = dso_local constant %struct.br_block_cbcenc_class_ { i64 400, i32 8, i32 3, void (%struct.br_block_cbcenc_class_**, i8*, i64)* bitcast (void (%struct.br_des_ct_cbcenc_keys*, i8*, i64)* @br_des_ct_cbcenc_init to void (%struct.br_block_cbcenc_class_**, i8*, i64)*), void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_des_ct_cbcenc_keys*, i8*, i8*, i64)* @br_des_ct_cbcenc_run to void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)*) }, align 8, !dbg !24

; Function Attrs: noinline nounwind uwtable
define dso_local void @cbc_encrypt_wrapper(%struct.br_des_ct_cbcenc_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !64 {
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcenc_keys* %0, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8* %1, metadata !99, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8* %2, metadata !100, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i64 %3, metadata !101, metadata !DIExpression()), !dbg !98
  %5 = call %struct.smack_value* (%struct.br_des_ct_cbcenc_keys*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_des_ct_cbcenc_keys*, ...)*)(%struct.br_des_ct_cbcenc_keys* %0), !dbg !102
  call void @public_in(%struct.smack_value* %5), !dbg !103
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !104
  call void @public_in(%struct.smack_value* %6), !dbg !105
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !106
  call void @public_in(%struct.smack_value* %7), !dbg !107
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !108
  call void @public_in(%struct.smack_value* %8), !dbg !109
  %9 = getelementptr inbounds %struct.br_des_ct_cbcenc_keys, %struct.br_des_ct_cbcenc_keys* %0, i32 0, i32 2, !dbg !110
  %10 = load i32, i32* %9, align 8, !dbg !110
  %11 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %10), !dbg !111
  call void @public_in(%struct.smack_value* %11), !dbg !112
  %12 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !113
  call void @public_in(%struct.smack_value* %12), !dbg !114
  %13 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 16), !dbg !115
  call void @public_in(%struct.smack_value* %13), !dbg !116
  call void @br_des_ct_cbcenc_run(%struct.br_des_ct_cbcenc_keys* %0, i8* %1, i8* %2, i64 %3), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vfct_tmp(i32* %0, %struct.br_des_ct_cbcenc_keys* %1, i8* %2, i8* %3, i64 %4) #0 !dbg !119 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcenc_keys* %1, metadata !125, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8* %2, metadata !126, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8* %3, metadata !127, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i64 %4, metadata !128, metadata !DIExpression()), !dbg !124
  %6 = bitcast %struct.br_des_ct_cbcenc_keys* %1 to %struct.br_des_ct_cbcdec_keys*, !dbg !129
  call void @br_des_ct_cbcdec_run(%struct.br_des_ct_cbcdec_keys* %6, i8* %2, i8* %3, i64 %4), !dbg !130
  ret void, !dbg !131
}

declare dso_local void @br_des_ct_cbcdec_run(%struct.br_des_ct_cbcdec_keys*, i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cbc_encrypt_wrapper_t() #0 !dbg !132 {
  %1 = call %struct.br_des_ct_cbcenc_keys* (...) @getctx(), !dbg !135
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcenc_keys* %1, metadata !136, metadata !DIExpression()), !dbg !137
  %2 = call i8* (...) @getpt2(), !dbg !138
  call void @llvm.dbg.value(metadata i8* %2, metadata !139, metadata !DIExpression()), !dbg !137
  %3 = call i8* (...) @getpt3(), !dbg !140
  call void @llvm.dbg.value(metadata i8* %3, metadata !141, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i64 32, metadata !142, metadata !DIExpression()), !dbg !137
  %4 = getelementptr inbounds %struct.br_des_ct_cbcenc_keys, %struct.br_des_ct_cbcenc_keys* %1, i32 0, i32 1, !dbg !143
  %5 = getelementptr inbounds [96 x i32], [96 x i32]* %4, i64 0, i64 0, !dbg !144
  call void @llvm.dbg.value(metadata i32* %5, metadata !145, metadata !DIExpression()), !dbg !137
  call void @vfct_tmp(i32* %5, %struct.br_des_ct_cbcenc_keys* %1, i8* %2, i8* %3, i64 32), !dbg !146
  ret void, !dbg !147
}

declare dso_local %struct.br_des_ct_cbcenc_keys* @getctx(...) #2

declare dso_local i8* @getpt2(...) #2

declare dso_local i8* @getpt3(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_des_ct_keysched(i32* %0, i8* %1, i64 %2) #0 !dbg !148 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i8* %1, metadata !153, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i64 %2, metadata !154, metadata !DIExpression()), !dbg !152
  switch i64 %2, label %12 [
    i64 8, label %4
    i64 16, label %5
  ], !dbg !155

4:                                                ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !156
  br label %18, !dbg !158

5:                                                ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !159
  %6 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !160
  %7 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !161
  call void @keysched_unit(i32* %6, i8* %7), !dbg !162
  %8 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !163
  call void @br_des_rev_skey(i32* %8), !dbg !164
  %9 = getelementptr inbounds i32, i32* %0, i64 64, !dbg !165
  %10 = bitcast i32* %9 to i8*, !dbg !166
  %11 = bitcast i32* %0 to i8*, !dbg !166
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 128, i1 false), !dbg !166
  br label %18, !dbg !167

12:                                               ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !168
  %13 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !169
  %14 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !170
  call void @keysched_unit(i32* %13, i8* %14), !dbg !171
  %15 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !172
  call void @br_des_rev_skey(i32* %15), !dbg !173
  %16 = getelementptr inbounds i32, i32* %0, i64 64, !dbg !174
  %17 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !175
  call void @keysched_unit(i32* %16, i8* %17), !dbg !176
  br label %18, !dbg !177

18:                                               ; preds = %12, %5, %4
  %.0 = phi i32 [ 3, %12 ], [ 3, %5 ], [ 1, %4 ], !dbg !178
  ret i32 %.0, !dbg !179
}

; Function Attrs: noinline nounwind uwtable
define internal void @keysched_unit(i32* %0, i8* %1) #0 !dbg !180 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i8* %1, metadata !185, metadata !DIExpression()), !dbg !184
  call void @br_des_keysched_unit(i32* %0, i8* %1), !dbg !186
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !184
  br label %3, !dbg !189

3:                                                ; preds = %62, %2
  %.02 = phi i32 [ 0, %2 ], [ %63, %62 ], !dbg !191
  call void @llvm.dbg.value(metadata i32 %.02, metadata !187, metadata !DIExpression()), !dbg !184
  %4 = icmp slt i32 %.02, 16, !dbg !192
  br i1 %4, label %5, label %64, !dbg !194

5:                                                ; preds = %3
  %6 = shl i32 %.02, 1, !dbg !195
  %7 = add nsw i32 %6, 0, !dbg !197
  %8 = sext i32 %7 to i64, !dbg !198
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !198
  %10 = load i32, i32* %9, align 4, !dbg !198
  call void @llvm.dbg.value(metadata i32 %10, metadata !199, metadata !DIExpression()), !dbg !200
  %11 = shl i32 %.02, 1, !dbg !201
  %12 = add nsw i32 %11, 1, !dbg !202
  %13 = sext i32 %12 to i64, !dbg !203
  %14 = getelementptr inbounds i32, i32* %0, i64 %13, !dbg !203
  %15 = load i32, i32* %14, align 4, !dbg !203
  call void @llvm.dbg.value(metadata i32 %15, metadata !204, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 0, metadata !205, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 0, metadata !206, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 0, metadata !207, metadata !DIExpression()), !dbg !200
  br label %16, !dbg !208

16:                                               ; preds = %51, %5
  %.03 = phi i32 [ 0, %5 ], [ %35, %51 ], !dbg !200
  %.01 = phi i32 [ 0, %5 ], [ %50, %51 ], !dbg !200
  %.0 = phi i32 [ 0, %5 ], [ %52, %51 ], !dbg !210
  call void @llvm.dbg.value(metadata i32 %.0, metadata !207, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 %.01, metadata !206, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 %.03, metadata !205, metadata !DIExpression()), !dbg !200
  %17 = icmp slt i32 %.0, 16, !dbg !211
  br i1 %17, label %18, label %53, !dbg !213

18:                                               ; preds = %16
  %19 = shl i32 %.03, 1, !dbg !214
  call void @llvm.dbg.value(metadata i32 %19, metadata !205, metadata !DIExpression()), !dbg !200
  %20 = shl i32 %.01, 1, !dbg !216
  call void @llvm.dbg.value(metadata i32 %20, metadata !206, metadata !DIExpression()), !dbg !200
  %21 = sext i32 %.0 to i64, !dbg !217
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* @QL0, i64 0, i64 %21, !dbg !217
  %23 = load i8, i8* %22, align 1, !dbg !217
  %24 = zext i8 %23 to i32, !dbg !217
  %25 = lshr i32 %10, %24, !dbg !218
  %26 = and i32 %25, 1, !dbg !219
  %27 = shl i32 %26, 16, !dbg !220
  %28 = or i32 %19, %27, !dbg !221
  call void @llvm.dbg.value(metadata i32 %28, metadata !205, metadata !DIExpression()), !dbg !200
  %29 = sext i32 %.0 to i64, !dbg !222
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* @QR0, i64 0, i64 %29, !dbg !222
  %31 = load i8, i8* %30, align 1, !dbg !222
  %32 = zext i8 %31 to i32, !dbg !222
  %33 = lshr i32 %15, %32, !dbg !223
  %34 = and i32 %33, 1, !dbg !224
  %35 = or i32 %28, %34, !dbg !225
  call void @llvm.dbg.value(metadata i32 %35, metadata !205, metadata !DIExpression()), !dbg !200
  %36 = sext i32 %.0 to i64, !dbg !226
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* @QL1, i64 0, i64 %36, !dbg !226
  %38 = load i8, i8* %37, align 1, !dbg !226
  %39 = zext i8 %38 to i32, !dbg !226
  %40 = lshr i32 %10, %39, !dbg !227
  %41 = and i32 %40, 1, !dbg !228
  %42 = shl i32 %41, 16, !dbg !229
  %43 = or i32 %20, %42, !dbg !230
  call void @llvm.dbg.value(metadata i32 %43, metadata !206, metadata !DIExpression()), !dbg !200
  %44 = sext i32 %.0 to i64, !dbg !231
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* @QR1, i64 0, i64 %44, !dbg !231
  %46 = load i8, i8* %45, align 1, !dbg !231
  %47 = zext i8 %46 to i32, !dbg !231
  %48 = lshr i32 %15, %47, !dbg !232
  %49 = and i32 %48, 1, !dbg !233
  %50 = or i32 %43, %49, !dbg !234
  call void @llvm.dbg.value(metadata i32 %50, metadata !206, metadata !DIExpression()), !dbg !200
  br label %51, !dbg !235

51:                                               ; preds = %18
  %52 = add nsw i32 %.0, 1, !dbg !236
  call void @llvm.dbg.value(metadata i32 %52, metadata !207, metadata !DIExpression()), !dbg !200
  br label %16, !dbg !237, !llvm.loop !238

53:                                               ; preds = %16
  %54 = shl i32 %.02, 1, !dbg !241
  %55 = add nsw i32 %54, 0, !dbg !242
  %56 = sext i32 %55 to i64, !dbg !243
  %57 = getelementptr inbounds i32, i32* %0, i64 %56, !dbg !243
  store i32 %.03, i32* %57, align 4, !dbg !244
  %58 = shl i32 %.02, 1, !dbg !245
  %59 = add nsw i32 %58, 1, !dbg !246
  %60 = sext i32 %59 to i64, !dbg !247
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !247
  store i32 %.01, i32* %61, align 4, !dbg !248
  br label %62, !dbg !249

62:                                               ; preds = %53
  %63 = add nsw i32 %.02, 1, !dbg !250
  call void @llvm.dbg.value(metadata i32 %63, metadata !187, metadata !DIExpression()), !dbg !184
  br label %3, !dbg !251, !llvm.loop !252

64:                                               ; preds = %3
  ret void, !dbg !254
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_process_block(i32 %0, i32* %1, i8* %2) #0 !dbg !255 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32* %1, metadata !262, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8* %2, metadata !263, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %4, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %5, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i8* %2, metadata !268, metadata !DIExpression()), !dbg !261
  %6 = call i32 @br_dec32be(i8* %2), !dbg !270
  store i32 %6, i32* %4, align 4, !dbg !271
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !272
  %8 = call i32 @br_dec32be(i8* %7), !dbg !273
  store i32 %8, i32* %5, align 4, !dbg !274
  call void @br_des_do_IP(i32* %4, i32* %5), !dbg !275
  br label %9, !dbg !276

9:                                                ; preds = %12, %3
  %.01 = phi i32* [ %1, %3 ], [ %13, %12 ]
  %.0 = phi i32 [ %0, %3 ], [ %10, %12 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32* %.01, metadata !262, metadata !DIExpression()), !dbg !261
  %10 = add i32 %.0, -1, !dbg !277
  call void @llvm.dbg.value(metadata i32 %10, metadata !260, metadata !DIExpression()), !dbg !261
  %11 = icmp ugt i32 %.0, 0, !dbg !278
  br i1 %11, label %12, label %14, !dbg !276

12:                                               ; preds = %9
  call void @process_block_unit(i32* %4, i32* %5, i32* %.01), !dbg !279
  %13 = getelementptr inbounds i32, i32* %.01, i64 96, !dbg !281
  call void @llvm.dbg.value(metadata i32* %13, metadata !262, metadata !DIExpression()), !dbg !261
  br label %9, !dbg !276, !llvm.loop !282

14:                                               ; preds = %9
  call void @br_des_do_invIP(i32* %4, i32* %5), !dbg !284
  %15 = load i32, i32* %4, align 4, !dbg !285
  call void @br_enc32be(i8* %2, i32 %15), !dbg !286
  %16 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !287
  %17 = load i32, i32* %5, align 4, !dbg !288
  call void @br_enc32be(i8* %16, i32 %17), !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !291 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i8* %0, metadata !297, metadata !DIExpression()), !dbg !296
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !298
  %3 = load i8, i8* %2, align 1, !dbg !298
  %4 = zext i8 %3 to i32, !dbg !299
  %5 = shl i32 %4, 24, !dbg !300
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !301
  %7 = load i8, i8* %6, align 1, !dbg !301
  %8 = zext i8 %7 to i32, !dbg !302
  %9 = shl i32 %8, 16, !dbg !303
  %10 = or i32 %5, %9, !dbg !304
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !305
  %12 = load i8, i8* %11, align 1, !dbg !305
  %13 = zext i8 %12 to i32, !dbg !306
  %14 = shl i32 %13, 8, !dbg !307
  %15 = or i32 %10, %14, !dbg !308
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !309
  %17 = load i8, i8* %16, align 1, !dbg !309
  %18 = zext i8 %17 to i32, !dbg !310
  %19 = or i32 %15, %18, !dbg !311
  ret i32 %19, !dbg !312
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_block_unit(i32* %0, i32* %1, i32* %2) #0 !dbg !313 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32* %1, metadata !318, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32* %2, metadata !319, metadata !DIExpression()), !dbg !317
  %4 = load i32, i32* %0, align 4, !dbg !320
  call void @llvm.dbg.value(metadata i32 %4, metadata !321, metadata !DIExpression()), !dbg !317
  %5 = load i32, i32* %1, align 4, !dbg !322
  call void @llvm.dbg.value(metadata i32 %5, metadata !323, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 0, metadata !324, metadata !DIExpression()), !dbg !317
  br label %6, !dbg !325

6:                                                ; preds = %12, %3
  %.03 = phi i32 [ 0, %3 ], [ %13, %12 ], !dbg !327
  %.02 = phi i32* [ %2, %3 ], [ %11, %12 ]
  %.01 = phi i32 [ %4, %3 ], [ %.0, %12 ], !dbg !317
  %.0 = phi i32 [ %5, %3 ], [ %10, %12 ], !dbg !317
  call void @llvm.dbg.value(metadata i32 %.0, metadata !323, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %.01, metadata !321, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32* %.02, metadata !319, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %.03, metadata !324, metadata !DIExpression()), !dbg !317
  %7 = icmp slt i32 %.03, 16, !dbg !328
  br i1 %7, label %8, label %14, !dbg !330

8:                                                ; preds = %6
  %9 = call i32 @Fconf(i32 %.0, i32* %.02), !dbg !331
  %10 = xor i32 %.01, %9, !dbg !333
  call void @llvm.dbg.value(metadata i32 %10, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %.0, metadata !321, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %10, metadata !323, metadata !DIExpression()), !dbg !317
  %11 = getelementptr inbounds i32, i32* %.02, i64 6, !dbg !336
  call void @llvm.dbg.value(metadata i32* %11, metadata !319, metadata !DIExpression()), !dbg !317
  br label %12, !dbg !337

12:                                               ; preds = %8
  %13 = add nsw i32 %.03, 1, !dbg !338
  call void @llvm.dbg.value(metadata i32 %13, metadata !324, metadata !DIExpression()), !dbg !317
  br label %6, !dbg !339, !llvm.loop !340

14:                                               ; preds = %6
  store i32 %.0, i32* %0, align 4, !dbg !342
  store i32 %.01, i32* %1, align 4, !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !345 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !348, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i32 %1, metadata !350, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.value(metadata i8* %0, metadata !351, metadata !DIExpression()), !dbg !349
  %3 = lshr i32 %1, 24, !dbg !352
  %4 = trunc i32 %3 to i8, !dbg !353
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !354
  store i8 %4, i8* %5, align 1, !dbg !355
  %6 = lshr i32 %1, 16, !dbg !356
  %7 = trunc i32 %6 to i8, !dbg !357
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !358
  store i8 %7, i8* %8, align 1, !dbg !359
  %9 = lshr i32 %1, 8, !dbg !360
  %10 = trunc i32 %9 to i8, !dbg !361
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !362
  store i8 %10, i8* %11, align 1, !dbg !363
  %12 = trunc i32 %1 to i8, !dbg !364
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !365
  store i8 %12, i8* %13, align 1, !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fconf(i32 %0, i32* %1) #0 !dbg !368 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32* %1, metadata !373, metadata !DIExpression()), !dbg !372
  %3 = and i32 %0, 286331153, !dbg !374
  call void @llvm.dbg.value(metadata i32 %3, metadata !375, metadata !DIExpression()), !dbg !372
  %4 = lshr i32 %0, 1, !dbg !376
  %5 = and i32 %4, 286331153, !dbg !377
  call void @llvm.dbg.value(metadata i32 %5, metadata !378, metadata !DIExpression()), !dbg !372
  %6 = lshr i32 %0, 2, !dbg !379
  %7 = and i32 %6, 286331153, !dbg !380
  call void @llvm.dbg.value(metadata i32 %7, metadata !381, metadata !DIExpression()), !dbg !372
  %8 = lshr i32 %0, 3, !dbg !382
  %9 = and i32 %8, 286331153, !dbg !383
  call void @llvm.dbg.value(metadata i32 %9, metadata !384, metadata !DIExpression()), !dbg !372
  %10 = shl i32 %3, 4, !dbg !385
  %11 = sub i32 %10, %3, !dbg !386
  call void @llvm.dbg.value(metadata i32 %11, metadata !375, metadata !DIExpression()), !dbg !372
  %12 = shl i32 %5, 4, !dbg !387
  %13 = sub i32 %12, %5, !dbg !388
  call void @llvm.dbg.value(metadata i32 %13, metadata !378, metadata !DIExpression()), !dbg !372
  %14 = shl i32 %7, 4, !dbg !389
  %15 = sub i32 %14, %7, !dbg !390
  call void @llvm.dbg.value(metadata i32 %15, metadata !381, metadata !DIExpression()), !dbg !372
  %16 = shl i32 %9, 4, !dbg !391
  %17 = sub i32 %16, %9, !dbg !392
  call void @llvm.dbg.value(metadata i32 %17, metadata !384, metadata !DIExpression()), !dbg !372
  %18 = shl i32 %17, 4, !dbg !393
  %19 = lshr i32 %17, 28, !dbg !394
  %20 = or i32 %18, %19, !dbg !395
  call void @llvm.dbg.value(metadata i32 %20, metadata !396, metadata !DIExpression()), !dbg !372
  %21 = lshr i32 %11, 4, !dbg !397
  %22 = shl i32 %11, 28, !dbg !398
  %23 = or i32 %21, %22, !dbg !399
  call void @llvm.dbg.value(metadata i32 %23, metadata !400, metadata !DIExpression()), !dbg !372
  %24 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !401
  %25 = load i32, i32* %24, align 4, !dbg !401
  %26 = xor i32 %20, %25, !dbg !402
  call void @llvm.dbg.value(metadata i32 %26, metadata !396, metadata !DIExpression()), !dbg !372
  %27 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !403
  %28 = load i32, i32* %27, align 4, !dbg !403
  %29 = xor i32 %11, %28, !dbg !404
  call void @llvm.dbg.value(metadata i32 %29, metadata !375, metadata !DIExpression()), !dbg !372
  %30 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !405
  %31 = load i32, i32* %30, align 4, !dbg !405
  %32 = xor i32 %13, %31, !dbg !406
  call void @llvm.dbg.value(metadata i32 %32, metadata !378, metadata !DIExpression()), !dbg !372
  %33 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !407
  %34 = load i32, i32* %33, align 4, !dbg !407
  %35 = xor i32 %15, %34, !dbg !408
  call void @llvm.dbg.value(metadata i32 %35, metadata !381, metadata !DIExpression()), !dbg !372
  %36 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !409
  %37 = load i32, i32* %36, align 4, !dbg !409
  %38 = xor i32 %17, %37, !dbg !410
  call void @llvm.dbg.value(metadata i32 %38, metadata !384, metadata !DIExpression()), !dbg !372
  %39 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !411
  %40 = load i32, i32* %39, align 4, !dbg !411
  %41 = xor i32 %23, %40, !dbg !412
  call void @llvm.dbg.value(metadata i32 %41, metadata !400, metadata !DIExpression()), !dbg !372
  %42 = and i32 %26, -327498084, !dbg !413
  %43 = xor i32 -274256819, %42, !dbg !414
  call void @llvm.dbg.value(metadata i32 %43, metadata !415, metadata !DIExpression()), !dbg !372
  %44 = and i32 %26, 1343207457, !dbg !416
  %45 = xor i32 -1364529665, %44, !dbg !417
  call void @llvm.dbg.value(metadata i32 %45, metadata !418, metadata !DIExpression()), !dbg !372
  %46 = and i32 %26, 1089447945, !dbg !419
  %47 = xor i32 926508645, %46, !dbg !420
  call void @llvm.dbg.value(metadata i32 %47, metadata !421, metadata !DIExpression()), !dbg !372
  %48 = and i32 %26, -1511257304, !dbg !422
  %49 = xor i32 1758967859, %48, !dbg !423
  call void @llvm.dbg.value(metadata i32 %49, metadata !424, metadata !DIExpression()), !dbg !372
  %50 = and i32 %26, 623704096, !dbg !425
  %51 = xor i32 -909683269, %50, !dbg !426
  call void @llvm.dbg.value(metadata i32 %51, metadata !427, metadata !DIExpression()), !dbg !372
  %52 = and i32 %26, 1075861505, !dbg !428
  %53 = xor i32 1945908742, %52, !dbg !429
  call void @llvm.dbg.value(metadata i32 %53, metadata !430, metadata !DIExpression()), !dbg !372
  %54 = and i32 %26, -501155543, !dbg !431
  %55 = xor i32 -1566529256, %54, !dbg !432
  call void @llvm.dbg.value(metadata i32 %55, metadata !433, metadata !DIExpression()), !dbg !372
  %56 = and i32 %26, 1151597025, !dbg !434
  %57 = xor i32 -2111652464, %56, !dbg !435
  call void @llvm.dbg.value(metadata i32 %57, metadata !436, metadata !DIExpression()), !dbg !372
  %58 = and i32 %26, 2035224650, !dbg !437
  %59 = xor i32 -692671369, %58, !dbg !438
  call void @llvm.dbg.value(metadata i32 %59, metadata !439, metadata !DIExpression()), !dbg !372
  %60 = and i32 %26, 40841739, !dbg !440
  %61 = xor i32 812199948, %60, !dbg !441
  call void @llvm.dbg.value(metadata i32 %61, metadata !442, metadata !DIExpression()), !dbg !372
  %62 = and i32 %26, 1983950874, !dbg !443
  %63 = xor i32 1826674124, %62, !dbg !444
  call void @llvm.dbg.value(metadata i32 %63, metadata !445, metadata !DIExpression()), !dbg !372
  %64 = and i32 %26, 596579698, !dbg !446
  %65 = xor i32 1504289325, %64, !dbg !447
  call void @llvm.dbg.value(metadata i32 %65, metadata !448, metadata !DIExpression()), !dbg !372
  %66 = and i32 %26, 2053357699, !dbg !449
  %67 = xor i32 -1402139692, %66, !dbg !450
  call void @llvm.dbg.value(metadata i32 %67, metadata !451, metadata !DIExpression()), !dbg !372
  %68 = and i32 %26, 298622976, !dbg !452
  %69 = xor i32 566768128, %68, !dbg !453
  call void @llvm.dbg.value(metadata i32 %69, metadata !454, metadata !DIExpression()), !dbg !372
  %70 = and i32 %26, 539978154, !dbg !455
  %71 = xor i32 -1595530872, %70, !dbg !456
  call void @llvm.dbg.value(metadata i32 %71, metadata !457, metadata !DIExpression()), !dbg !372
  %72 = and i32 %26, 1370700777, !dbg !458
  %73 = xor i32 -1350736550, %72, !dbg !459
  call void @llvm.dbg.value(metadata i32 %73, metadata !460, metadata !DIExpression()), !dbg !372
  %74 = and i32 %26, 990898350, !dbg !461
  %75 = xor i32 -266958173, %74, !dbg !462
  call void @llvm.dbg.value(metadata i32 %75, metadata !463, metadata !DIExpression()), !dbg !372
  %76 = and i32 %26, -1866495978, !dbg !464
  %77 = xor i32 -1867894586, %76, !dbg !465
  call void @llvm.dbg.value(metadata i32 %77, metadata !466, metadata !DIExpression()), !dbg !372
  %78 = and i32 %26, 165891995, !dbg !467
  %79 = xor i32 1521644810, %78, !dbg !468
  call void @llvm.dbg.value(metadata i32 %79, metadata !469, metadata !DIExpression()), !dbg !372
  %80 = and i32 %26, 17022600, !dbg !470
  %81 = xor i32 1402060389, %80, !dbg !471
  call void @llvm.dbg.value(metadata i32 %81, metadata !472, metadata !DIExpression()), !dbg !372
  %82 = and i32 %26, 1236045349, !dbg !473
  %83 = xor i32 -1825100881, %82, !dbg !474
  call void @llvm.dbg.value(metadata i32 %83, metadata !475, metadata !DIExpression()), !dbg !372
  %84 = and i32 %26, -1842597571, !dbg !476
  %85 = xor i32 -225959668, %84, !dbg !477
  call void @llvm.dbg.value(metadata i32 %85, metadata !478, metadata !DIExpression()), !dbg !372
  %86 = and i32 %26, 1894724016, !dbg !479
  %87 = xor i32 -1844775488, %86, !dbg !480
  call void @llvm.dbg.value(metadata i32 %87, metadata !481, metadata !DIExpression()), !dbg !372
  %88 = and i32 %26, 1785753856, !dbg !482
  %89 = xor i32 1674777280, %88, !dbg !483
  call void @llvm.dbg.value(metadata i32 %89, metadata !484, metadata !DIExpression()), !dbg !372
  %90 = and i32 %26, -1183018991, !dbg !485
  %91 = xor i32 1400582150, %90, !dbg !486
  call void @llvm.dbg.value(metadata i32 %91, metadata !487, metadata !DIExpression()), !dbg !372
  %92 = and i32 %26, -1558132391, !dbg !488
  %93 = xor i32 -1561349979, %92, !dbg !489
  call void @llvm.dbg.value(metadata i32 %93, metadata !490, metadata !DIExpression()), !dbg !372
  %94 = and i32 %26, 1856023370, !dbg !491
  %95 = xor i32 -1131440475, %94, !dbg !492
  call void @llvm.dbg.value(metadata i32 %95, metadata !493, metadata !DIExpression()), !dbg !372
  %96 = and i32 %26, 1767103992, !dbg !494
  %97 = xor i32 -86935899, %96, !dbg !495
  call void @llvm.dbg.value(metadata i32 %97, metadata !496, metadata !DIExpression()), !dbg !372
  %98 = and i32 %26, -145801685, !dbg !497
  %99 = xor i32 1717179555, %98, !dbg !498
  call void @llvm.dbg.value(metadata i32 %99, metadata !499, metadata !DIExpression()), !dbg !372
  %100 = and i32 %26, -265261907, !dbg !500
  %101 = xor i32 -219156276, %100, !dbg !501
  call void @llvm.dbg.value(metadata i32 %101, metadata !502, metadata !DIExpression()), !dbg !372
  %102 = and i32 %29, %45, !dbg !503
  %103 = xor i32 %43, %102, !dbg !504
  call void @llvm.dbg.value(metadata i32 %103, metadata !415, metadata !DIExpression()), !dbg !372
  %104 = and i32 %29, %49, !dbg !505
  %105 = xor i32 %47, %104, !dbg !506
  call void @llvm.dbg.value(metadata i32 %105, metadata !418, metadata !DIExpression()), !dbg !372
  %106 = and i32 %29, %53, !dbg !507
  %107 = xor i32 %51, %106, !dbg !508
  call void @llvm.dbg.value(metadata i32 %107, metadata !421, metadata !DIExpression()), !dbg !372
  %108 = and i32 %29, %57, !dbg !509
  %109 = xor i32 %55, %108, !dbg !510
  call void @llvm.dbg.value(metadata i32 %109, metadata !424, metadata !DIExpression()), !dbg !372
  %110 = and i32 %29, %61, !dbg !511
  %111 = xor i32 %59, %110, !dbg !512
  call void @llvm.dbg.value(metadata i32 %111, metadata !427, metadata !DIExpression()), !dbg !372
  %112 = and i32 %29, %65, !dbg !513
  %113 = xor i32 %63, %112, !dbg !514
  call void @llvm.dbg.value(metadata i32 %113, metadata !430, metadata !DIExpression()), !dbg !372
  %114 = and i32 %29, %69, !dbg !515
  %115 = xor i32 %67, %114, !dbg !516
  call void @llvm.dbg.value(metadata i32 %115, metadata !433, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %71, metadata !436, metadata !DIExpression()), !dbg !372
  %116 = and i32 %29, %75, !dbg !517
  %117 = xor i32 %73, %116, !dbg !518
  call void @llvm.dbg.value(metadata i32 %117, metadata !439, metadata !DIExpression()), !dbg !372
  %118 = and i32 %29, %79, !dbg !519
  %119 = xor i32 %77, %118, !dbg !520
  call void @llvm.dbg.value(metadata i32 %119, metadata !442, metadata !DIExpression()), !dbg !372
  %120 = and i32 %29, %83, !dbg !521
  %121 = xor i32 %81, %120, !dbg !522
  call void @llvm.dbg.value(metadata i32 %121, metadata !445, metadata !DIExpression()), !dbg !372
  %122 = and i32 %29, %87, !dbg !523
  %123 = xor i32 %85, %122, !dbg !524
  call void @llvm.dbg.value(metadata i32 %123, metadata !448, metadata !DIExpression()), !dbg !372
  %124 = and i32 %29, %91, !dbg !525
  %125 = xor i32 %89, %124, !dbg !526
  call void @llvm.dbg.value(metadata i32 %125, metadata !451, metadata !DIExpression()), !dbg !372
  %126 = and i32 %29, %95, !dbg !527
  %127 = xor i32 %93, %126, !dbg !528
  call void @llvm.dbg.value(metadata i32 %127, metadata !454, metadata !DIExpression()), !dbg !372
  %128 = and i32 %29, %99, !dbg !529
  %129 = xor i32 %97, %128, !dbg !530
  call void @llvm.dbg.value(metadata i32 %129, metadata !457, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %101, metadata !531, metadata !DIExpression()), !dbg !372
  %130 = and i32 %32, %105, !dbg !532
  %131 = xor i32 %103, %130, !dbg !533
  call void @llvm.dbg.value(metadata i32 %131, metadata !415, metadata !DIExpression()), !dbg !372
  %132 = and i32 %32, %109, !dbg !534
  %133 = xor i32 %107, %132, !dbg !535
  call void @llvm.dbg.value(metadata i32 %133, metadata !418, metadata !DIExpression()), !dbg !372
  %134 = and i32 %32, %113, !dbg !536
  %135 = xor i32 %111, %134, !dbg !537
  call void @llvm.dbg.value(metadata i32 %135, metadata !421, metadata !DIExpression()), !dbg !372
  %136 = and i32 %32, %71, !dbg !538
  %137 = xor i32 %115, %136, !dbg !539
  call void @llvm.dbg.value(metadata i32 %137, metadata !424, metadata !DIExpression()), !dbg !372
  %138 = and i32 %32, %119, !dbg !540
  %139 = xor i32 %117, %138, !dbg !541
  call void @llvm.dbg.value(metadata i32 %139, metadata !427, metadata !DIExpression()), !dbg !372
  %140 = and i32 %32, %123, !dbg !542
  %141 = xor i32 %121, %140, !dbg !543
  call void @llvm.dbg.value(metadata i32 %141, metadata !430, metadata !DIExpression()), !dbg !372
  %142 = and i32 %32, %127, !dbg !544
  %143 = xor i32 %125, %142, !dbg !545
  call void @llvm.dbg.value(metadata i32 %143, metadata !433, metadata !DIExpression()), !dbg !372
  %144 = and i32 %32, %101, !dbg !546
  %145 = xor i32 %129, %144, !dbg !547
  call void @llvm.dbg.value(metadata i32 %145, metadata !436, metadata !DIExpression()), !dbg !372
  %146 = and i32 %35, %133, !dbg !548
  %147 = xor i32 %131, %146, !dbg !549
  call void @llvm.dbg.value(metadata i32 %147, metadata !415, metadata !DIExpression()), !dbg !372
  %148 = and i32 %35, %137, !dbg !550
  %149 = xor i32 %135, %148, !dbg !551
  call void @llvm.dbg.value(metadata i32 %149, metadata !418, metadata !DIExpression()), !dbg !372
  %150 = and i32 %35, %141, !dbg !552
  %151 = xor i32 %139, %150, !dbg !553
  call void @llvm.dbg.value(metadata i32 %151, metadata !421, metadata !DIExpression()), !dbg !372
  %152 = and i32 %35, %145, !dbg !554
  %153 = xor i32 %143, %152, !dbg !555
  call void @llvm.dbg.value(metadata i32 %153, metadata !424, metadata !DIExpression()), !dbg !372
  %154 = and i32 %38, %149, !dbg !556
  %155 = xor i32 %147, %154, !dbg !557
  call void @llvm.dbg.value(metadata i32 %155, metadata !415, metadata !DIExpression()), !dbg !372
  %156 = and i32 %38, %153, !dbg !558
  %157 = xor i32 %151, %156, !dbg !559
  call void @llvm.dbg.value(metadata i32 %157, metadata !418, metadata !DIExpression()), !dbg !372
  %158 = and i32 %41, %157, !dbg !560
  %159 = xor i32 %155, %158, !dbg !561
  call void @llvm.dbg.value(metadata i32 %159, metadata !415, metadata !DIExpression()), !dbg !372
  %160 = and i32 %159, 4, !dbg !562
  %161 = shl i32 %160, 3, !dbg !563
  call void @llvm.dbg.value(metadata i32 %161, metadata !564, metadata !DIExpression()), !dbg !372
  %162 = and i32 %159, 16384, !dbg !565
  %163 = shl i32 %162, 4, !dbg !566
  %164 = or i32 %161, %163, !dbg !567
  call void @llvm.dbg.value(metadata i32 %164, metadata !564, metadata !DIExpression()), !dbg !372
  %165 = and i32 %159, 302121248, !dbg !568
  %166 = call i32 @rotl(i32 %165, i32 5), !dbg !569
  %167 = or i32 %164, %166, !dbg !570
  call void @llvm.dbg.value(metadata i32 %167, metadata !564, metadata !DIExpression()), !dbg !372
  %168 = and i32 %159, 1048576, !dbg !571
  %169 = shl i32 %168, 6, !dbg !572
  %170 = or i32 %167, %169, !dbg !573
  call void @llvm.dbg.value(metadata i32 %170, metadata !564, metadata !DIExpression()), !dbg !372
  %171 = and i32 %159, 32768, !dbg !574
  %172 = shl i32 %171, 9, !dbg !575
  %173 = or i32 %170, %172, !dbg !576
  call void @llvm.dbg.value(metadata i32 %173, metadata !564, metadata !DIExpression()), !dbg !372
  %174 = and i32 %159, 67108864, !dbg !577
  %175 = lshr i32 %174, 22, !dbg !578
  %176 = or i32 %173, %175, !dbg !579
  call void @llvm.dbg.value(metadata i32 %176, metadata !564, metadata !DIExpression()), !dbg !372
  %177 = and i32 %159, 1, !dbg !580
  %178 = shl i32 %177, 11, !dbg !581
  %179 = or i32 %176, %178, !dbg !582
  call void @llvm.dbg.value(metadata i32 %179, metadata !564, metadata !DIExpression()), !dbg !372
  %180 = and i32 %159, 536871424, !dbg !583
  %181 = call i32 @rotl(i32 %180, i32 12), !dbg !584
  %182 = or i32 %179, %181, !dbg !585
  call void @llvm.dbg.value(metadata i32 %182, metadata !564, metadata !DIExpression()), !dbg !372
  %183 = and i32 %159, 2097152, !dbg !586
  %184 = lshr i32 %183, 19, !dbg !587
  %185 = or i32 %182, %184, !dbg !588
  call void @llvm.dbg.value(metadata i32 %185, metadata !564, metadata !DIExpression()), !dbg !372
  %186 = and i32 %159, 64, !dbg !589
  %187 = shl i32 %186, 14, !dbg !590
  %188 = or i32 %185, %187, !dbg !591
  call void @llvm.dbg.value(metadata i32 %188, metadata !564, metadata !DIExpression()), !dbg !372
  %189 = and i32 %159, 65536, !dbg !592
  %190 = shl i32 %189, 15, !dbg !593
  %191 = or i32 %188, %190, !dbg !594
  call void @llvm.dbg.value(metadata i32 %191, metadata !564, metadata !DIExpression()), !dbg !372
  %192 = and i32 %159, 2, !dbg !595
  %193 = shl i32 %192, 16, !dbg !596
  %194 = or i32 %191, %193, !dbg !597
  call void @llvm.dbg.value(metadata i32 %194, metadata !564, metadata !DIExpression()), !dbg !372
  %195 = and i32 %159, 1082136576, !dbg !598
  %196 = call i32 @rotl(i32 %195, i32 17), !dbg !599
  %197 = or i32 %194, %196, !dbg !600
  call void @llvm.dbg.value(metadata i32 %197, metadata !564, metadata !DIExpression()), !dbg !372
  %198 = and i32 %159, 524288, !dbg !601
  %199 = lshr i32 %198, 13, !dbg !602
  %200 = or i32 %197, %199, !dbg !603
  call void @llvm.dbg.value(metadata i32 %200, metadata !564, metadata !DIExpression()), !dbg !372
  %201 = and i32 %159, 16, !dbg !604
  %202 = shl i32 %201, 21, !dbg !605
  %203 = or i32 %200, %202, !dbg !606
  call void @llvm.dbg.value(metadata i32 %203, metadata !564, metadata !DIExpression()), !dbg !372
  %204 = and i32 %159, 16777216, !dbg !607
  %205 = lshr i32 %204, 10, !dbg !608
  %206 = or i32 %203, %205, !dbg !609
  call void @llvm.dbg.value(metadata i32 %206, metadata !564, metadata !DIExpression()), !dbg !372
  %207 = and i32 %159, -2013265912, !dbg !610
  %208 = call i32 @rotl(i32 %207, i32 24), !dbg !611
  %209 = or i32 %206, %208, !dbg !612
  call void @llvm.dbg.value(metadata i32 %209, metadata !564, metadata !DIExpression()), !dbg !372
  %210 = and i32 %159, 1152, !dbg !613
  %211 = lshr i32 %210, 7, !dbg !614
  %212 = or i32 %209, %211, !dbg !615
  call void @llvm.dbg.value(metadata i32 %212, metadata !564, metadata !DIExpression()), !dbg !372
  %213 = and i32 %159, 4464640, !dbg !616
  %214 = lshr i32 %213, 6, !dbg !617
  %215 = or i32 %212, %214, !dbg !618
  call void @llvm.dbg.value(metadata i32 %215, metadata !564, metadata !DIExpression()), !dbg !372
  ret i32 %215, !dbg !619
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotl(i32 %0, i32 %1) #0 !dbg !620 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i32 %1, metadata !625, metadata !DIExpression()), !dbg !624
  %3 = shl i32 %0, %1, !dbg !626
  %4 = sub nsw i32 32, %1, !dbg !627
  %5 = lshr i32 %0, %4, !dbg !628
  %6 = or i32 %3, %5, !dbg !629
  ret i32 %6, !dbg !630
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_skey_expand(i32* %0, i32 %1, i32* %2) #0 !dbg !631 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !634, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 %1, metadata !636, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32* %2, metadata !637, metadata !DIExpression()), !dbg !635
  %4 = shl i32 %1, 4, !dbg !638
  call void @llvm.dbg.value(metadata i32 %4, metadata !636, metadata !DIExpression()), !dbg !635
  br label %5, !dbg !639

5:                                                ; preds = %8, %3
  %.02 = phi i32* [ %2, %3 ], [ %30, %8 ]
  %.01 = phi i32 [ %4, %3 ], [ %6, %8 ], !dbg !635
  %.0 = phi i32* [ %0, %3 ], [ %40, %8 ]
  call void @llvm.dbg.value(metadata i32* %.0, metadata !634, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32 %.01, metadata !636, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata i32* %.02, metadata !637, metadata !DIExpression()), !dbg !635
  %6 = add i32 %.01, -1, !dbg !640
  call void @llvm.dbg.value(metadata i32 %6, metadata !636, metadata !DIExpression()), !dbg !635
  %7 = icmp ugt i32 %.01, 0, !dbg !641
  br i1 %7, label %8, label %41, !dbg !639

8:                                                ; preds = %5
  %9 = getelementptr inbounds i32, i32* %.02, i32 1, !dbg !642
  call void @llvm.dbg.value(metadata i32* %9, metadata !637, metadata !DIExpression()), !dbg !635
  %10 = load i32, i32* %.02, align 4, !dbg !644
  call void @llvm.dbg.value(metadata i32 %10, metadata !645, metadata !DIExpression()), !dbg !646
  %11 = and i32 %10, 286331153, !dbg !647
  call void @llvm.dbg.value(metadata i32 %11, metadata !648, metadata !DIExpression()), !dbg !646
  %12 = lshr i32 %10, 1, !dbg !649
  %13 = and i32 %12, 286331153, !dbg !650
  call void @llvm.dbg.value(metadata i32 %13, metadata !651, metadata !DIExpression()), !dbg !646
  %14 = lshr i32 %10, 2, !dbg !652
  %15 = and i32 %14, 286331153, !dbg !653
  call void @llvm.dbg.value(metadata i32 %15, metadata !654, metadata !DIExpression()), !dbg !646
  %16 = lshr i32 %10, 3, !dbg !655
  %17 = and i32 %16, 286331153, !dbg !656
  call void @llvm.dbg.value(metadata i32 %17, metadata !657, metadata !DIExpression()), !dbg !646
  %18 = shl i32 %11, 4, !dbg !658
  %19 = sub i32 %18, %11, !dbg !659
  %20 = getelementptr inbounds i32, i32* %.0, i32 1, !dbg !660
  call void @llvm.dbg.value(metadata i32* %20, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %19, i32* %.0, align 4, !dbg !661
  %21 = shl i32 %13, 4, !dbg !662
  %22 = sub i32 %21, %13, !dbg !663
  %23 = getelementptr inbounds i32, i32* %20, i32 1, !dbg !664
  call void @llvm.dbg.value(metadata i32* %23, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %22, i32* %20, align 4, !dbg !665
  %24 = shl i32 %15, 4, !dbg !666
  %25 = sub i32 %24, %15, !dbg !667
  %26 = getelementptr inbounds i32, i32* %23, i32 1, !dbg !668
  call void @llvm.dbg.value(metadata i32* %26, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %25, i32* %23, align 4, !dbg !669
  %27 = shl i32 %17, 4, !dbg !670
  %28 = sub i32 %27, %17, !dbg !671
  %29 = getelementptr inbounds i32, i32* %26, i32 1, !dbg !672
  call void @llvm.dbg.value(metadata i32* %29, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %28, i32* %26, align 4, !dbg !673
  %30 = getelementptr inbounds i32, i32* %9, i32 1, !dbg !674
  call void @llvm.dbg.value(metadata i32* %30, metadata !637, metadata !DIExpression()), !dbg !635
  %31 = load i32, i32* %9, align 4, !dbg !675
  call void @llvm.dbg.value(metadata i32 %31, metadata !645, metadata !DIExpression()), !dbg !646
  %32 = and i32 %31, 286331153, !dbg !676
  call void @llvm.dbg.value(metadata i32 %32, metadata !648, metadata !DIExpression()), !dbg !646
  %33 = lshr i32 %31, 1, !dbg !677
  %34 = and i32 %33, 286331153, !dbg !678
  call void @llvm.dbg.value(metadata i32 %34, metadata !651, metadata !DIExpression()), !dbg !646
  %35 = shl i32 %32, 4, !dbg !679
  %36 = sub i32 %35, %32, !dbg !680
  %37 = getelementptr inbounds i32, i32* %29, i32 1, !dbg !681
  call void @llvm.dbg.value(metadata i32* %37, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %36, i32* %29, align 4, !dbg !682
  %38 = shl i32 %34, 4, !dbg !683
  %39 = sub i32 %38, %34, !dbg !684
  %40 = getelementptr inbounds i32, i32* %37, i32 1, !dbg !685
  call void @llvm.dbg.value(metadata i32* %40, metadata !634, metadata !DIExpression()), !dbg !635
  store i32 %39, i32* %37, align 4, !dbg !686
  br label %5, !dbg !639, !llvm.loop !687

41:                                               ; preds = %5
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_cbcenc_init(%struct.br_des_ct_cbcenc_keys* %0, i8* %1, i64 %2) #0 !dbg !690 {
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcenc_keys* %0, metadata !700, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i8* %1, metadata !702, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.value(metadata i64 %2, metadata !703, metadata !DIExpression()), !dbg !701
  %4 = getelementptr inbounds %struct.br_des_ct_cbcenc_keys, %struct.br_des_ct_cbcenc_keys* %0, i32 0, i32 0, !dbg !704
  store %struct.br_block_cbcenc_class_* @br_des_ct_cbcenc_vtable, %struct.br_block_cbcenc_class_** %4, align 8, !dbg !705
  %5 = getelementptr inbounds %struct.br_des_ct_cbcenc_keys, %struct.br_des_ct_cbcenc_keys* %0, i32 0, i32 1, !dbg !706
  %6 = getelementptr inbounds [96 x i32], [96 x i32]* %5, i64 0, i64 0, !dbg !707
  %7 = call i32 @br_des_ct_keysched(i32* %6, i8* %1, i64 %2), !dbg !708
  %8 = getelementptr inbounds %struct.br_des_ct_cbcenc_keys, %struct.br_des_ct_cbcenc_keys* %0, i32 0, i32 2, !dbg !709
  store i32 %7, i32* %8, align 8, !dbg !710
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_cbcenc_run(%struct.br_des_ct_cbcenc_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !712 {
  %5 = alloca [288 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcenc_keys* %0, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %1, metadata !719, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %2, metadata !720, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 %3, metadata !721, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata [288 x i32]* %5, metadata !722, metadata !DIExpression()), !dbg !726
  %6 = getelementptr inbounds [288 x i32], [288 x i32]* %5, i64 0, i64 0, !dbg !727
  %7 = getelementptr inbounds %struct.br_des_ct_cbcenc_keys, %struct.br_des_ct_cbcenc_keys* %0, i32 0, i32 2, !dbg !728
  %8 = load i32, i32* %7, align 8, !dbg !728
  %9 = getelementptr inbounds %struct.br_des_ct_cbcenc_keys, %struct.br_des_ct_cbcenc_keys* %0, i32 0, i32 1, !dbg !729
  %10 = getelementptr inbounds [96 x i32], [96 x i32]* %9, i64 0, i64 0, !dbg !730
  call void @br_des_ct_skey_expand(i32* %6, i32 %8, i32* %10), !dbg !731
  call void @llvm.dbg.value(metadata i8* %1, metadata !732, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %2, metadata !733, metadata !DIExpression()), !dbg !718
  br label %11, !dbg !734

11:                                               ; preds = %29, %4
  %.02 = phi i64 [ %3, %4 ], [ %34, %29 ]
  %.01 = phi i8* [ %2, %4 ], [ %33, %29 ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %.01, metadata !733, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 %.02, metadata !721, metadata !DIExpression()), !dbg !718
  %12 = icmp ugt i64 %.02, 0, !dbg !735
  br i1 %12, label %13, label %35, !dbg !734

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 0, metadata !736, metadata !DIExpression()), !dbg !738
  br label %14, !dbg !739

14:                                               ; preds = %27, %13
  %.0 = phi i32 [ 0, %13 ], [ %28, %27 ], !dbg !741
  call void @llvm.dbg.value(metadata i32 %.0, metadata !736, metadata !DIExpression()), !dbg !738
  %15 = icmp slt i32 %.0, 8, !dbg !742
  br i1 %15, label %16, label %29, !dbg !744

16:                                               ; preds = %14
  %17 = sext i32 %.0 to i64, !dbg !745
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !745
  %19 = load i8, i8* %18, align 1, !dbg !745
  %20 = zext i8 %19 to i32, !dbg !745
  %21 = sext i32 %.0 to i64, !dbg !747
  %22 = getelementptr inbounds i8, i8* %.01, i64 %21, !dbg !747
  %23 = load i8, i8* %22, align 1, !dbg !748
  %24 = zext i8 %23 to i32, !dbg !748
  %25 = xor i32 %24, %20, !dbg !748
  %26 = trunc i32 %25 to i8, !dbg !748
  store i8 %26, i8* %22, align 1, !dbg !748
  br label %27, !dbg !749

27:                                               ; preds = %16
  %28 = add nsw i32 %.0, 1, !dbg !750
  call void @llvm.dbg.value(metadata i32 %28, metadata !736, metadata !DIExpression()), !dbg !738
  br label %14, !dbg !751, !llvm.loop !752

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.br_des_ct_cbcenc_keys, %struct.br_des_ct_cbcenc_keys* %0, i32 0, i32 2, !dbg !754
  %31 = load i32, i32* %30, align 8, !dbg !754
  %32 = getelementptr inbounds [288 x i32], [288 x i32]* %5, i64 0, i64 0, !dbg !755
  call void @br_des_ct_process_block(i32 %31, i32* %32, i8* %.01), !dbg !756
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %.01, i64 8, i1 false), !dbg !757
  %33 = getelementptr inbounds i8, i8* %.01, i64 8, !dbg !758
  call void @llvm.dbg.value(metadata i8* %33, metadata !733, metadata !DIExpression()), !dbg !718
  %34 = sub i64 %.02, 8, !dbg !759
  call void @llvm.dbg.value(metadata i64 %34, metadata !721, metadata !DIExpression()), !dbg !718
  br label %11, !dbg !734, !llvm.loop !760

35:                                               ; preds = %11
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_do_IP(i32* %0, i32* %1) #0 !dbg !763 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !766, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i32* %1, metadata !768, metadata !DIExpression()), !dbg !767
  %3 = load i32, i32* %0, align 4, !dbg !769
  call void @llvm.dbg.value(metadata i32 %3, metadata !770, metadata !DIExpression()), !dbg !767
  %4 = load i32, i32* %1, align 4, !dbg !771
  call void @llvm.dbg.value(metadata i32 %4, metadata !772, metadata !DIExpression()), !dbg !767
  %5 = lshr i32 %3, 4, !dbg !773
  %6 = xor i32 %5, %4, !dbg !774
  %7 = and i32 %6, 252645135, !dbg !775
  call void @llvm.dbg.value(metadata i32 %7, metadata !776, metadata !DIExpression()), !dbg !767
  %8 = xor i32 %4, %7, !dbg !777
  call void @llvm.dbg.value(metadata i32 %8, metadata !772, metadata !DIExpression()), !dbg !767
  %9 = shl i32 %7, 4, !dbg !778
  %10 = xor i32 %3, %9, !dbg !779
  call void @llvm.dbg.value(metadata i32 %10, metadata !770, metadata !DIExpression()), !dbg !767
  %11 = lshr i32 %10, 16, !dbg !780
  %12 = xor i32 %11, %8, !dbg !781
  %13 = and i32 %12, 65535, !dbg !782
  call void @llvm.dbg.value(metadata i32 %13, metadata !776, metadata !DIExpression()), !dbg !767
  %14 = xor i32 %8, %13, !dbg !783
  call void @llvm.dbg.value(metadata i32 %14, metadata !772, metadata !DIExpression()), !dbg !767
  %15 = shl i32 %13, 16, !dbg !784
  %16 = xor i32 %10, %15, !dbg !785
  call void @llvm.dbg.value(metadata i32 %16, metadata !770, metadata !DIExpression()), !dbg !767
  %17 = lshr i32 %14, 2, !dbg !786
  %18 = xor i32 %17, %16, !dbg !787
  %19 = and i32 %18, 858993459, !dbg !788
  call void @llvm.dbg.value(metadata i32 %19, metadata !776, metadata !DIExpression()), !dbg !767
  %20 = xor i32 %16, %19, !dbg !789
  call void @llvm.dbg.value(metadata i32 %20, metadata !770, metadata !DIExpression()), !dbg !767
  %21 = shl i32 %19, 2, !dbg !790
  %22 = xor i32 %14, %21, !dbg !791
  call void @llvm.dbg.value(metadata i32 %22, metadata !772, metadata !DIExpression()), !dbg !767
  %23 = lshr i32 %22, 8, !dbg !792
  %24 = xor i32 %23, %20, !dbg !793
  %25 = and i32 %24, 16711935, !dbg !794
  call void @llvm.dbg.value(metadata i32 %25, metadata !776, metadata !DIExpression()), !dbg !767
  %26 = xor i32 %20, %25, !dbg !795
  call void @llvm.dbg.value(metadata i32 %26, metadata !770, metadata !DIExpression()), !dbg !767
  %27 = shl i32 %25, 8, !dbg !796
  %28 = xor i32 %22, %27, !dbg !797
  call void @llvm.dbg.value(metadata i32 %28, metadata !772, metadata !DIExpression()), !dbg !767
  %29 = lshr i32 %26, 1, !dbg !798
  %30 = xor i32 %29, %28, !dbg !799
  %31 = and i32 %30, 1431655765, !dbg !800
  call void @llvm.dbg.value(metadata i32 %31, metadata !776, metadata !DIExpression()), !dbg !767
  %32 = xor i32 %28, %31, !dbg !801
  call void @llvm.dbg.value(metadata i32 %32, metadata !772, metadata !DIExpression()), !dbg !767
  %33 = shl i32 %31, 1, !dbg !802
  %34 = xor i32 %26, %33, !dbg !803
  call void @llvm.dbg.value(metadata i32 %34, metadata !770, metadata !DIExpression()), !dbg !767
  store i32 %34, i32* %0, align 4, !dbg !804
  store i32 %32, i32* %1, align 4, !dbg !805
  ret void, !dbg !806
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_do_invIP(i32* %0, i32* %1) #0 !dbg !807 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !808, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i32* %1, metadata !810, metadata !DIExpression()), !dbg !809
  %3 = load i32, i32* %0, align 4, !dbg !811
  call void @llvm.dbg.value(metadata i32 %3, metadata !812, metadata !DIExpression()), !dbg !809
  %4 = load i32, i32* %1, align 4, !dbg !813
  call void @llvm.dbg.value(metadata i32 %4, metadata !814, metadata !DIExpression()), !dbg !809
  %5 = lshr i32 %3, 1, !dbg !815
  %6 = xor i32 %5, %4, !dbg !816
  %7 = and i32 %6, 1431655765, !dbg !817
  call void @llvm.dbg.value(metadata i32 %7, metadata !818, metadata !DIExpression()), !dbg !809
  %8 = xor i32 %4, %7, !dbg !819
  call void @llvm.dbg.value(metadata i32 %8, metadata !814, metadata !DIExpression()), !dbg !809
  %9 = shl i32 %7, 1, !dbg !820
  %10 = xor i32 %3, %9, !dbg !821
  call void @llvm.dbg.value(metadata i32 %10, metadata !812, metadata !DIExpression()), !dbg !809
  %11 = lshr i32 %8, 8, !dbg !822
  %12 = xor i32 %11, %10, !dbg !823
  %13 = and i32 %12, 16711935, !dbg !824
  call void @llvm.dbg.value(metadata i32 %13, metadata !818, metadata !DIExpression()), !dbg !809
  %14 = xor i32 %10, %13, !dbg !825
  call void @llvm.dbg.value(metadata i32 %14, metadata !812, metadata !DIExpression()), !dbg !809
  %15 = shl i32 %13, 8, !dbg !826
  %16 = xor i32 %8, %15, !dbg !827
  call void @llvm.dbg.value(metadata i32 %16, metadata !814, metadata !DIExpression()), !dbg !809
  %17 = lshr i32 %16, 2, !dbg !828
  %18 = xor i32 %17, %14, !dbg !829
  %19 = and i32 %18, 858993459, !dbg !830
  call void @llvm.dbg.value(metadata i32 %19, metadata !818, metadata !DIExpression()), !dbg !809
  %20 = xor i32 %14, %19, !dbg !831
  call void @llvm.dbg.value(metadata i32 %20, metadata !812, metadata !DIExpression()), !dbg !809
  %21 = shl i32 %19, 2, !dbg !832
  %22 = xor i32 %16, %21, !dbg !833
  call void @llvm.dbg.value(metadata i32 %22, metadata !814, metadata !DIExpression()), !dbg !809
  %23 = lshr i32 %20, 16, !dbg !834
  %24 = xor i32 %23, %22, !dbg !835
  %25 = and i32 %24, 65535, !dbg !836
  call void @llvm.dbg.value(metadata i32 %25, metadata !818, metadata !DIExpression()), !dbg !809
  %26 = xor i32 %22, %25, !dbg !837
  call void @llvm.dbg.value(metadata i32 %26, metadata !814, metadata !DIExpression()), !dbg !809
  %27 = shl i32 %25, 16, !dbg !838
  %28 = xor i32 %20, %27, !dbg !839
  call void @llvm.dbg.value(metadata i32 %28, metadata !812, metadata !DIExpression()), !dbg !809
  %29 = lshr i32 %28, 4, !dbg !840
  %30 = xor i32 %29, %26, !dbg !841
  %31 = and i32 %30, 252645135, !dbg !842
  call void @llvm.dbg.value(metadata i32 %31, metadata !818, metadata !DIExpression()), !dbg !809
  %32 = xor i32 %26, %31, !dbg !843
  call void @llvm.dbg.value(metadata i32 %32, metadata !814, metadata !DIExpression()), !dbg !809
  %33 = shl i32 %31, 4, !dbg !844
  %34 = xor i32 %28, %33, !dbg !845
  call void @llvm.dbg.value(metadata i32 %34, metadata !812, metadata !DIExpression()), !dbg !809
  store i32 %34, i32* %0, align 4, !dbg !846
  store i32 %32, i32* %1, align 4, !dbg !847
  ret void, !dbg !848
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_keysched_unit(i32* %0, i8* %1) #0 !dbg !849 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i8* %1, metadata !852, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata i32* %3, metadata !853, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.declare(metadata i32* %4, metadata !855, metadata !DIExpression()), !dbg !856
  %5 = call i32 @br_dec32be.9(i8* %1), !dbg !857
  store i32 %5, i32* %3, align 4, !dbg !858
  %6 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !859
  %7 = call i32 @br_dec32be.9(i8* %6), !dbg !860
  store i32 %7, i32* %4, align 4, !dbg !861
  call void @br_des_do_IP(i32* %3, i32* %4), !dbg !862
  %8 = load i32, i32* %4, align 4, !dbg !863
  %9 = and i32 %8, -16777216, !dbg !864
  %10 = lshr i32 %9, 4, !dbg !865
  %11 = load i32, i32* %3, align 4, !dbg !866
  %12 = and i32 %11, -16777216, !dbg !867
  %13 = lshr i32 %12, 12, !dbg !868
  %14 = or i32 %10, %13, !dbg !869
  %15 = load i32, i32* %4, align 4, !dbg !870
  %16 = and i32 %15, 16711680, !dbg !871
  %17 = lshr i32 %16, 12, !dbg !872
  %18 = or i32 %14, %17, !dbg !873
  %19 = load i32, i32* %3, align 4, !dbg !874
  %20 = and i32 %19, 16711680, !dbg !875
  %21 = lshr i32 %20, 20, !dbg !876
  %22 = or i32 %18, %21, !dbg !877
  call void @llvm.dbg.value(metadata i32 %22, metadata !878, metadata !DIExpression()), !dbg !851
  %23 = load i32, i32* %4, align 4, !dbg !879
  %24 = and i32 %23, 255, !dbg !880
  %25 = shl i32 %24, 20, !dbg !881
  %26 = load i32, i32* %3, align 4, !dbg !882
  %27 = and i32 %26, 65280, !dbg !883
  %28 = shl i32 %27, 4, !dbg !884
  %29 = or i32 %25, %28, !dbg !885
  %30 = load i32, i32* %4, align 4, !dbg !886
  %31 = and i32 %30, 65280, !dbg !887
  %32 = lshr i32 %31, 4, !dbg !888
  %33 = or i32 %29, %32, !dbg !889
  %34 = load i32, i32* %3, align 4, !dbg !890
  %35 = and i32 %34, 983040, !dbg !891
  %36 = lshr i32 %35, 16, !dbg !892
  %37 = or i32 %33, %36, !dbg !893
  call void @llvm.dbg.value(metadata i32 %37, metadata !894, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32 0, metadata !895, metadata !DIExpression()), !dbg !851
  br label %38, !dbg !896

38:                                               ; preds = %69, %2
  %.02 = phi i32 [ %22, %2 ], [ %59, %69 ], !dbg !851
  %.01 = phi i32 [ %37, %2 ], [ %60, %69 ], !dbg !851
  %.0 = phi i32 [ 0, %2 ], [ %70, %69 ], !dbg !898
  call void @llvm.dbg.value(metadata i32 %.0, metadata !895, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32 %.01, metadata !894, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32 %.02, metadata !878, metadata !DIExpression()), !dbg !851
  %39 = icmp slt i32 %.0, 16, !dbg !899
  br i1 %39, label %40, label %71, !dbg !901

40:                                               ; preds = %38
  %41 = shl i32 1, %.0, !dbg !902
  %42 = and i32 %41, 33027, !dbg !905
  %43 = icmp ne i32 %42, 0, !dbg !905
  br i1 %43, label %44, label %51, !dbg !906

44:                                               ; preds = %40
  %45 = shl i32 %.02, 1, !dbg !907
  %46 = lshr i32 %.02, 27, !dbg !909
  %47 = or i32 %45, %46, !dbg !910
  call void @llvm.dbg.value(metadata i32 %47, metadata !878, metadata !DIExpression()), !dbg !851
  %48 = shl i32 %.01, 1, !dbg !911
  %49 = lshr i32 %.01, 27, !dbg !912
  %50 = or i32 %48, %49, !dbg !913
  call void @llvm.dbg.value(metadata i32 %50, metadata !894, metadata !DIExpression()), !dbg !851
  br label %58, !dbg !914

51:                                               ; preds = %40
  %52 = shl i32 %.02, 2, !dbg !915
  %53 = lshr i32 %.02, 26, !dbg !917
  %54 = or i32 %52, %53, !dbg !918
  call void @llvm.dbg.value(metadata i32 %54, metadata !878, metadata !DIExpression()), !dbg !851
  %55 = shl i32 %.01, 2, !dbg !919
  %56 = lshr i32 %.01, 26, !dbg !920
  %57 = or i32 %55, %56, !dbg !921
  call void @llvm.dbg.value(metadata i32 %57, metadata !894, metadata !DIExpression()), !dbg !851
  br label %58

58:                                               ; preds = %51, %44
  %.13 = phi i32 [ %47, %44 ], [ %54, %51 ], !dbg !922
  %.1 = phi i32 [ %50, %44 ], [ %57, %51 ], !dbg !922
  call void @llvm.dbg.value(metadata i32 %.1, metadata !894, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i32 %.13, metadata !878, metadata !DIExpression()), !dbg !851
  %59 = and i32 %.13, 268435455, !dbg !923
  call void @llvm.dbg.value(metadata i32 %59, metadata !878, metadata !DIExpression()), !dbg !851
  %60 = and i32 %.1, 268435455, !dbg !924
  call void @llvm.dbg.value(metadata i32 %60, metadata !894, metadata !DIExpression()), !dbg !851
  %61 = shl i32 %.0, 1, !dbg !925
  %62 = add nsw i32 %61, 0, !dbg !926
  %63 = sext i32 %62 to i64, !dbg !927
  %64 = getelementptr inbounds i32, i32* %0, i64 %63, !dbg !927
  store i32 %59, i32* %64, align 4, !dbg !928
  %65 = shl i32 %.0, 1, !dbg !929
  %66 = add nsw i32 %65, 1, !dbg !930
  %67 = sext i32 %66 to i64, !dbg !931
  %68 = getelementptr inbounds i32, i32* %0, i64 %67, !dbg !931
  store i32 %60, i32* %68, align 4, !dbg !932
  br label %69, !dbg !933

69:                                               ; preds = %58
  %70 = add nsw i32 %.0, 1, !dbg !934
  call void @llvm.dbg.value(metadata i32 %70, metadata !895, metadata !DIExpression()), !dbg !851
  br label %38, !dbg !935, !llvm.loop !936

71:                                               ; preds = %38
  ret void, !dbg !938
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.9(i8* %0) #0 !dbg !939 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i8* %0, metadata !942, metadata !DIExpression()), !dbg !941
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !943
  %3 = load i8, i8* %2, align 1, !dbg !943
  %4 = zext i8 %3 to i32, !dbg !944
  %5 = shl i32 %4, 24, !dbg !945
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !946
  %7 = load i8, i8* %6, align 1, !dbg !946
  %8 = zext i8 %7 to i32, !dbg !947
  %9 = shl i32 %8, 16, !dbg !948
  %10 = or i32 %5, %9, !dbg !949
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !950
  %12 = load i8, i8* %11, align 1, !dbg !950
  %13 = zext i8 %12 to i32, !dbg !951
  %14 = shl i32 %13, 8, !dbg !952
  %15 = or i32 %10, %14, !dbg !953
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !954
  %17 = load i8, i8* %16, align 1, !dbg !954
  %18 = zext i8 %17 to i32, !dbg !955
  %19 = or i32 %15, %18, !dbg !956
  ret i32 %19, !dbg !957
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_rev_skey(i32* %0) #0 !dbg !958 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !961, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i32 0, metadata !963, metadata !DIExpression()), !dbg !962
  br label %2, !dbg !964

2:                                                ; preds = %33, %1
  %.0 = phi i32 [ 0, %1 ], [ %34, %33 ], !dbg !966
  call void @llvm.dbg.value(metadata i32 %.0, metadata !963, metadata !DIExpression()), !dbg !962
  %3 = icmp slt i32 %.0, 16, !dbg !967
  br i1 %3, label %4, label %35, !dbg !969

4:                                                ; preds = %2
  %5 = add nsw i32 %.0, 0, !dbg !970
  %6 = sext i32 %5 to i64, !dbg !972
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !972
  %8 = load i32, i32* %7, align 4, !dbg !972
  call void @llvm.dbg.value(metadata i32 %8, metadata !973, metadata !DIExpression()), !dbg !974
  %9 = sub nsw i32 30, %.0, !dbg !975
  %10 = sext i32 %9 to i64, !dbg !976
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !976
  %12 = load i32, i32* %11, align 4, !dbg !976
  %13 = add nsw i32 %.0, 0, !dbg !977
  %14 = sext i32 %13 to i64, !dbg !978
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !978
  store i32 %12, i32* %15, align 4, !dbg !979
  %16 = sub nsw i32 30, %.0, !dbg !980
  %17 = sext i32 %16 to i64, !dbg !981
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !981
  store i32 %8, i32* %18, align 4, !dbg !982
  %19 = add nsw i32 %.0, 1, !dbg !983
  %20 = sext i32 %19 to i64, !dbg !984
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !984
  %22 = load i32, i32* %21, align 4, !dbg !984
  call void @llvm.dbg.value(metadata i32 %22, metadata !973, metadata !DIExpression()), !dbg !974
  %23 = sub nsw i32 31, %.0, !dbg !985
  %24 = sext i32 %23 to i64, !dbg !986
  %25 = getelementptr inbounds i32, i32* %0, i64 %24, !dbg !986
  %26 = load i32, i32* %25, align 4, !dbg !986
  %27 = add nsw i32 %.0, 1, !dbg !987
  %28 = sext i32 %27 to i64, !dbg !988
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !988
  store i32 %26, i32* %29, align 4, !dbg !989
  %30 = sub nsw i32 31, %.0, !dbg !990
  %31 = sext i32 %30 to i64, !dbg !991
  %32 = getelementptr inbounds i32, i32* %0, i64 %31, !dbg !991
  store i32 %22, i32* %32, align 4, !dbg !992
  br label %33, !dbg !993

33:                                               ; preds = %4
  %34 = add nsw i32 %.0, 2, !dbg !994
  call void @llvm.dbg.value(metadata i32 %34, metadata !963, metadata !DIExpression()), !dbg !962
  br label %2, !dbg !995, !llvm.loop !996

35:                                               ; preds = %2
  ret void, !dbg !998
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!55, !2, !26, !57}
!llvm.ident = !{!60, !60, !60, !60}
!llvm.module.flags = !{!61, !62, !63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "QL0", scope: !2, file: !3, line: 39, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/des_ct.c", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
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
!14 = !{!0, !15, !20, !22}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "QR0", scope: !2, file: !3, line: 44, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 16)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "QL1", scope: !2, file: !3, line: 49, type: !17, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "QR1", scope: !2, file: !3, line: 54, type: !17, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "br_des_ct_cbcenc_vtable", scope: !26, file: !27, line: 61, type: !29, isLocal: false, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !28, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../BearSSL/src/symcipher/des_ct_cbcenc.c", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!28 = !{!24}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcenc_class", file: !31, line: 393, baseType: !32)
!31 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcenc_class_", file: !31, line: 394, size: 256, elements: !33)
!33 = !{!34, !38, !39, !40, !48}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !32, file: !31, line: 399, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !32, file: !31, line: 404, baseType: !13, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !32, file: !31, line: 410, baseType: !13, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !32, file: !31, line: 423, baseType: !41, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !46, !35}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !32, file: !31, line: 439, baseType: !49, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !54, !54, !35}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "cbc_encrypt.c", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "../BearSSL/src/symcipher/des_support.c", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!59 = !{!9, !6}
!60 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!61 = !{i32 7, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = distinct !DISubprogram(name: "cbc_encrypt_wrapper", scope: !56, file: !56, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !54, !54, !35}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_des_ct_cbcenc_keys", file: !31, line: 2323, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 2316, size: 3200, elements: !71)
!71 = !{!72, !92, !96}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !70, file: !31, line: 2318, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcenc_class", file: !31, line: 393, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcenc_class_", file: !31, line: 394, size: 256, elements: !77)
!77 = !{!78, !79, !80, !81, !86}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !76, file: !31, line: 399, baseType: !35, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !76, file: !31, line: 404, baseType: !13, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !76, file: !31, line: 410, baseType: !13, size: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !76, file: !31, line: 423, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85, !46, !35}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !76, file: !31, line: 439, baseType: !87, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !90, !54, !54, !35}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !70, file: !31, line: 2320, baseType: !93, size: 3072, offset: 64)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3072, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !70, file: !31, line: 2321, baseType: !13, size: 32, offset: 3136)
!97 = !DILocalVariable(name: "ctx", arg: 1, scope: !64, file: !56, line: 3, type: !67)
!98 = !DILocation(line: 0, scope: !64)
!99 = !DILocalVariable(name: "iv", arg: 2, scope: !64, file: !56, line: 4, type: !54)
!100 = !DILocalVariable(name: "data", arg: 3, scope: !64, file: !56, line: 4, type: !54)
!101 = !DILocalVariable(name: "len", arg: 4, scope: !64, file: !56, line: 4, type: !35)
!102 = !DILocation(line: 5, column: 12, scope: !64)
!103 = !DILocation(line: 5, column: 2, scope: !64)
!104 = !DILocation(line: 6, column: 12, scope: !64)
!105 = !DILocation(line: 6, column: 2, scope: !64)
!106 = !DILocation(line: 7, column: 12, scope: !64)
!107 = !DILocation(line: 7, column: 2, scope: !64)
!108 = !DILocation(line: 8, column: 12, scope: !64)
!109 = !DILocation(line: 8, column: 2, scope: !64)
!110 = !DILocation(line: 10, column: 31, scope: !64)
!111 = !DILocation(line: 10, column: 12, scope: !64)
!112 = !DILocation(line: 10, column: 2, scope: !64)
!113 = !DILocation(line: 15, column: 12, scope: !64)
!114 = !DILocation(line: 15, column: 2, scope: !64)
!115 = !DILocation(line: 16, column: 12, scope: !64)
!116 = !DILocation(line: 16, column: 2, scope: !64)
!117 = !DILocation(line: 18, column: 2, scope: !64)
!118 = !DILocation(line: 19, column: 1, scope: !64)
!119 = distinct !DISubprogram(name: "vfct_tmp", scope: !56, file: !56, line: 28, type: !120, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122, !67, !54, !54, !35}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!123 = !DILocalVariable(name: "skey", arg: 1, scope: !119, file: !56, line: 28, type: !122)
!124 = !DILocation(line: 0, scope: !119)
!125 = !DILocalVariable(name: "ctx", arg: 2, scope: !119, file: !56, line: 28, type: !67)
!126 = !DILocalVariable(name: "iv", arg: 3, scope: !119, file: !56, line: 28, type: !54)
!127 = !DILocalVariable(name: "data", arg: 4, scope: !119, file: !56, line: 28, type: !54)
!128 = !DILocalVariable(name: "len", arg: 5, scope: !119, file: !56, line: 28, type: !35)
!129 = !DILocation(line: 29, column: 23, scope: !119)
!130 = !DILocation(line: 29, column: 2, scope: !119)
!131 = !DILocation(line: 30, column: 1, scope: !119)
!132 = distinct !DISubprogram(name: "cbc_encrypt_wrapper_t", scope: !56, file: !56, line: 33, type: !133, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!133 = !DISubroutineType(types: !134)
!134 = !{null}
!135 = !DILocation(line: 34, column: 37, scope: !132)
!136 = !DILocalVariable(name: "ctx", scope: !132, file: !56, line: 34, type: !67)
!137 = !DILocation(line: 0, scope: !132)
!138 = !DILocation(line: 35, column: 13, scope: !132)
!139 = !DILocalVariable(name: "iv", scope: !132, file: !56, line: 35, type: !54)
!140 = !DILocation(line: 36, column: 15, scope: !132)
!141 = !DILocalVariable(name: "data", scope: !132, file: !56, line: 36, type: !54)
!142 = !DILocalVariable(name: "len", scope: !132, file: !56, line: 37, type: !35)
!143 = !DILocation(line: 38, column: 25, scope: !132)
!144 = !DILocation(line: 38, column: 20, scope: !132)
!145 = !DILocalVariable(name: "skey", scope: !132, file: !56, line: 38, type: !122)
!146 = !DILocation(line: 39, column: 2, scope: !132)
!147 = !DILocation(line: 40, column: 1, scope: !132)
!148 = distinct !DISubprogram(name: "br_des_ct_keysched", scope: !3, file: !3, line: 158, type: !149, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!149 = !DISubroutineType(types: !150)
!150 = !{!13, !122, !46, !35}
!151 = !DILocalVariable(name: "skey", arg: 1, scope: !148, file: !3, line: 158, type: !122)
!152 = !DILocation(line: 0, scope: !148)
!153 = !DILocalVariable(name: "key", arg: 2, scope: !148, file: !3, line: 158, type: !46)
!154 = !DILocalVariable(name: "key_len", arg: 3, scope: !148, file: !3, line: 158, type: !35)
!155 = !DILocation(line: 160, column: 2, scope: !148)
!156 = !DILocation(line: 162, column: 3, scope: !157)
!157 = distinct !DILexicalBlock(scope: !148, file: !3, line: 160, column: 19)
!158 = !DILocation(line: 163, column: 3, scope: !157)
!159 = !DILocation(line: 165, column: 3, scope: !157)
!160 = !DILocation(line: 166, column: 22, scope: !157)
!161 = !DILocation(line: 166, column: 55, scope: !157)
!162 = !DILocation(line: 166, column: 3, scope: !157)
!163 = !DILocation(line: 167, column: 24, scope: !157)
!164 = !DILocation(line: 167, column: 3, scope: !157)
!165 = !DILocation(line: 168, column: 15, scope: !157)
!166 = !DILocation(line: 168, column: 3, scope: !157)
!167 = !DILocation(line: 169, column: 3, scope: !157)
!168 = !DILocation(line: 171, column: 3, scope: !157)
!169 = !DILocation(line: 172, column: 22, scope: !157)
!170 = !DILocation(line: 172, column: 55, scope: !157)
!171 = !DILocation(line: 172, column: 3, scope: !157)
!172 = !DILocation(line: 173, column: 24, scope: !157)
!173 = !DILocation(line: 173, column: 3, scope: !157)
!174 = !DILocation(line: 174, column: 22, scope: !157)
!175 = !DILocation(line: 174, column: 55, scope: !157)
!176 = !DILocation(line: 174, column: 3, scope: !157)
!177 = !DILocation(line: 175, column: 3, scope: !157)
!178 = !DILocation(line: 0, scope: !157)
!179 = !DILocation(line: 177, column: 1, scope: !148)
!180 = distinct !DISubprogram(name: "keysched_unit", scope: !3, file: !3, line: 73, type: !181, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !122, !46}
!183 = !DILocalVariable(name: "skey", arg: 1, scope: !180, file: !3, line: 73, type: !122)
!184 = !DILocation(line: 0, scope: !180)
!185 = !DILocalVariable(name: "key", arg: 2, scope: !180, file: !3, line: 73, type: !46)
!186 = !DILocation(line: 77, column: 2, scope: !180)
!187 = !DILocalVariable(name: "i", scope: !180, file: !3, line: 75, type: !188)
!188 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!189 = !DILocation(line: 82, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !180, file: !3, line: 82, column: 2)
!191 = !DILocation(line: 0, scope: !190)
!192 = !DILocation(line: 82, column: 16, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !3, line: 82, column: 2)
!194 = !DILocation(line: 82, column: 2, scope: !190)
!195 = !DILocation(line: 86, column: 16, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !3, line: 82, column: 28)
!197 = !DILocation(line: 86, column: 22, scope: !196)
!198 = !DILocation(line: 86, column: 8, scope: !196)
!199 = !DILocalVariable(name: "kl", scope: !196, file: !3, line: 83, type: !9)
!200 = !DILocation(line: 0, scope: !196)
!201 = !DILocation(line: 87, column: 16, scope: !196)
!202 = !DILocation(line: 87, column: 22, scope: !196)
!203 = !DILocation(line: 87, column: 8, scope: !196)
!204 = !DILocalVariable(name: "kr", scope: !196, file: !3, line: 83, type: !9)
!205 = !DILocalVariable(name: "sk0", scope: !196, file: !3, line: 83, type: !9)
!206 = !DILocalVariable(name: "sk1", scope: !196, file: !3, line: 83, type: !9)
!207 = !DILocalVariable(name: "j", scope: !196, file: !3, line: 84, type: !188)
!208 = !DILocation(line: 90, column: 8, scope: !209)
!209 = distinct !DILexicalBlock(scope: !196, file: !3, line: 90, column: 3)
!210 = !DILocation(line: 0, scope: !209)
!211 = !DILocation(line: 90, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !3, line: 90, column: 3)
!213 = !DILocation(line: 90, column: 3, scope: !209)
!214 = !DILocation(line: 91, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !3, line: 90, column: 29)
!216 = !DILocation(line: 92, column: 8, scope: !215)
!217 = !DILocation(line: 93, column: 19, scope: !215)
!218 = !DILocation(line: 93, column: 16, scope: !215)
!219 = !DILocation(line: 93, column: 27, scope: !215)
!220 = !DILocation(line: 93, column: 42, scope: !215)
!221 = !DILocation(line: 93, column: 8, scope: !215)
!222 = !DILocation(line: 94, column: 18, scope: !215)
!223 = !DILocation(line: 94, column: 15, scope: !215)
!224 = !DILocation(line: 94, column: 26, scope: !215)
!225 = !DILocation(line: 94, column: 8, scope: !215)
!226 = !DILocation(line: 95, column: 19, scope: !215)
!227 = !DILocation(line: 95, column: 16, scope: !215)
!228 = !DILocation(line: 95, column: 27, scope: !215)
!229 = !DILocation(line: 95, column: 42, scope: !215)
!230 = !DILocation(line: 95, column: 8, scope: !215)
!231 = !DILocation(line: 96, column: 18, scope: !215)
!232 = !DILocation(line: 96, column: 15, scope: !215)
!233 = !DILocation(line: 96, column: 26, scope: !215)
!234 = !DILocation(line: 96, column: 8, scope: !215)
!235 = !DILocation(line: 97, column: 3, scope: !215)
!236 = !DILocation(line: 90, column: 25, scope: !212)
!237 = !DILocation(line: 90, column: 3, scope: !212)
!238 = distinct !{!238, !213, !239, !240}
!239 = !DILocation(line: 97, column: 3, scope: !209)
!240 = !{!"llvm.loop.mustprogress"}
!241 = !DILocation(line: 99, column: 11, scope: !196)
!242 = !DILocation(line: 99, column: 17, scope: !196)
!243 = !DILocation(line: 99, column: 3, scope: !196)
!244 = !DILocation(line: 99, column: 22, scope: !196)
!245 = !DILocation(line: 100, column: 11, scope: !196)
!246 = !DILocation(line: 100, column: 17, scope: !196)
!247 = !DILocation(line: 100, column: 3, scope: !196)
!248 = !DILocation(line: 100, column: 22, scope: !196)
!249 = !DILocation(line: 101, column: 2, scope: !196)
!250 = !DILocation(line: 82, column: 24, scope: !193)
!251 = !DILocation(line: 82, column: 2, scope: !193)
!252 = distinct !{!252, !194, !253, !240}
!253 = !DILocation(line: 101, column: 2, scope: !190)
!254 = !DILocation(line: 154, column: 1, scope: !180)
!255 = distinct !DISubprogram(name: "br_des_ct_process_block", scope: !3, file: !3, line: 368, type: !256, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !13, !258, !54}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!260 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !255, file: !3, line: 368, type: !13)
!261 = !DILocation(line: 0, scope: !255)
!262 = !DILocalVariable(name: "sk_exp", arg: 2, scope: !255, file: !3, line: 369, type: !258)
!263 = !DILocalVariable(name: "block", arg: 3, scope: !255, file: !3, line: 369, type: !54)
!264 = !DILocalVariable(name: "l", scope: !255, file: !3, line: 372, type: !9)
!265 = !DILocation(line: 372, column: 11, scope: !255)
!266 = !DILocalVariable(name: "r", scope: !255, file: !3, line: 372, type: !9)
!267 = !DILocation(line: 372, column: 14, scope: !255)
!268 = !DILocalVariable(name: "buf", scope: !255, file: !3, line: 371, type: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!270 = !DILocation(line: 375, column: 6, scope: !255)
!271 = !DILocation(line: 375, column: 4, scope: !255)
!272 = !DILocation(line: 376, column: 21, scope: !255)
!273 = !DILocation(line: 376, column: 6, scope: !255)
!274 = !DILocation(line: 376, column: 4, scope: !255)
!275 = !DILocation(line: 377, column: 2, scope: !255)
!276 = !DILocation(line: 378, column: 2, scope: !255)
!277 = !DILocation(line: 378, column: 20, scope: !255)
!278 = !DILocation(line: 378, column: 23, scope: !255)
!279 = !DILocation(line: 379, column: 3, scope: !280)
!280 = distinct !DILexicalBlock(scope: !255, file: !3, line: 378, column: 28)
!281 = !DILocation(line: 380, column: 10, scope: !280)
!282 = distinct !{!282, !276, !283, !240}
!283 = !DILocation(line: 381, column: 2, scope: !255)
!284 = !DILocation(line: 382, column: 2, scope: !255)
!285 = !DILocation(line: 383, column: 18, scope: !255)
!286 = !DILocation(line: 383, column: 2, scope: !255)
!287 = !DILocation(line: 384, column: 17, scope: !255)
!288 = !DILocation(line: 384, column: 22, scope: !255)
!289 = !DILocation(line: 384, column: 2, scope: !255)
!290 = !DILocation(line: 385, column: 1, scope: !255)
!291 = distinct !DISubprogram(name: "br_dec32be", scope: !292, file: !292, line: 590, type: !293, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!292 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!293 = !DISubroutineType(types: !294)
!294 = !{!9, !46}
!295 = !DILocalVariable(name: "src", arg: 1, scope: !291, file: !292, line: 590, type: !46)
!296 = !DILocation(line: 0, scope: !291)
!297 = !DILocalVariable(name: "buf", scope: !291, file: !292, line: 595, type: !6)
!298 = !DILocation(line: 598, column: 20, scope: !291)
!299 = !DILocation(line: 598, column: 10, scope: !291)
!300 = !DILocation(line: 598, column: 27, scope: !291)
!301 = !DILocation(line: 599, column: 16, scope: !291)
!302 = !DILocation(line: 599, column: 6, scope: !291)
!303 = !DILocation(line: 599, column: 23, scope: !291)
!304 = !DILocation(line: 599, column: 3, scope: !291)
!305 = !DILocation(line: 600, column: 16, scope: !291)
!306 = !DILocation(line: 600, column: 6, scope: !291)
!307 = !DILocation(line: 600, column: 23, scope: !291)
!308 = !DILocation(line: 600, column: 3, scope: !291)
!309 = !DILocation(line: 601, column: 15, scope: !291)
!310 = !DILocation(line: 601, column: 5, scope: !291)
!311 = !DILocation(line: 601, column: 3, scope: !291)
!312 = !DILocation(line: 598, column: 2, scope: !291)
!313 = distinct !DISubprogram(name: "process_block_unit", scope: !3, file: !3, line: 347, type: !314, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !122, !122, !258}
!316 = !DILocalVariable(name: "pl", arg: 1, scope: !313, file: !3, line: 347, type: !122)
!317 = !DILocation(line: 0, scope: !313)
!318 = !DILocalVariable(name: "pr", arg: 2, scope: !313, file: !3, line: 347, type: !122)
!319 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !313, file: !3, line: 347, type: !258)
!320 = !DILocation(line: 352, column: 6, scope: !313)
!321 = !DILocalVariable(name: "l", scope: !313, file: !3, line: 350, type: !9)
!322 = !DILocation(line: 353, column: 6, scope: !313)
!323 = !DILocalVariable(name: "r", scope: !313, file: !3, line: 350, type: !9)
!324 = !DILocalVariable(name: "i", scope: !313, file: !3, line: 349, type: !188)
!325 = !DILocation(line: 354, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !313, file: !3, line: 354, column: 2)
!327 = !DILocation(line: 0, scope: !326)
!328 = !DILocation(line: 354, column: 16, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !3, line: 354, column: 2)
!330 = !DILocation(line: 354, column: 2, scope: !326)
!331 = !DILocation(line: 357, column: 11, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !3, line: 354, column: 28)
!333 = !DILocation(line: 357, column: 9, scope: !332)
!334 = !DILocalVariable(name: "t", scope: !332, file: !3, line: 355, type: !9)
!335 = !DILocation(line: 0, scope: !332)
!336 = !DILocation(line: 360, column: 10, scope: !332)
!337 = !DILocation(line: 361, column: 2, scope: !332)
!338 = !DILocation(line: 354, column: 24, scope: !329)
!339 = !DILocation(line: 354, column: 2, scope: !329)
!340 = distinct !{!340, !330, !341, !240}
!341 = !DILocation(line: 361, column: 2, scope: !326)
!342 = !DILocation(line: 362, column: 6, scope: !313)
!343 = !DILocation(line: 363, column: 6, scope: !313)
!344 = !DILocation(line: 364, column: 1, scope: !313)
!345 = distinct !DISubprogram(name: "br_enc32be", scope: !292, file: !292, line: 558, type: !346, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !54, !9}
!348 = !DILocalVariable(name: "dst", arg: 1, scope: !345, file: !292, line: 558, type: !54)
!349 = !DILocation(line: 0, scope: !345)
!350 = !DILocalVariable(name: "x", arg: 2, scope: !345, file: !292, line: 558, type: !9)
!351 = !DILocalVariable(name: "buf", scope: !345, file: !292, line: 563, type: !269)
!352 = !DILocation(line: 566, column: 29, scope: !345)
!353 = !DILocation(line: 566, column: 11, scope: !345)
!354 = !DILocation(line: 566, column: 2, scope: !345)
!355 = !DILocation(line: 566, column: 9, scope: !345)
!356 = !DILocation(line: 567, column: 29, scope: !345)
!357 = !DILocation(line: 567, column: 11, scope: !345)
!358 = !DILocation(line: 567, column: 2, scope: !345)
!359 = !DILocation(line: 567, column: 9, scope: !345)
!360 = !DILocation(line: 568, column: 29, scope: !345)
!361 = !DILocation(line: 568, column: 11, scope: !345)
!362 = !DILocation(line: 568, column: 2, scope: !345)
!363 = !DILocation(line: 568, column: 9, scope: !345)
!364 = !DILocation(line: 569, column: 11, scope: !345)
!365 = !DILocation(line: 569, column: 2, scope: !345)
!366 = !DILocation(line: 569, column: 9, scope: !345)
!367 = !DILocation(line: 571, column: 1, scope: !345)
!368 = distinct !DISubprogram(name: "Fconf", scope: !3, file: !3, line: 184, type: !369, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!369 = !DISubroutineType(types: !370)
!370 = !{!9, !9, !258}
!371 = !DILocalVariable(name: "r0", arg: 1, scope: !368, file: !3, line: 184, type: !9)
!372 = !DILocation(line: 0, scope: !368)
!373 = !DILocalVariable(name: "sk", arg: 2, scope: !368, file: !3, line: 184, type: !258)
!374 = !DILocation(line: 214, column: 10, scope: !368)
!375 = !DILocalVariable(name: "x1", scope: !368, file: !3, line: 205, type: !9)
!376 = !DILocation(line: 215, column: 11, scope: !368)
!377 = !DILocation(line: 215, column: 17, scope: !368)
!378 = !DILocalVariable(name: "x2", scope: !368, file: !3, line: 205, type: !9)
!379 = !DILocation(line: 216, column: 11, scope: !368)
!380 = !DILocation(line: 216, column: 17, scope: !368)
!381 = !DILocalVariable(name: "x3", scope: !368, file: !3, line: 205, type: !9)
!382 = !DILocation(line: 217, column: 11, scope: !368)
!383 = !DILocation(line: 217, column: 17, scope: !368)
!384 = !DILocalVariable(name: "x4", scope: !368, file: !3, line: 205, type: !9)
!385 = !DILocation(line: 218, column: 11, scope: !368)
!386 = !DILocation(line: 218, column: 17, scope: !368)
!387 = !DILocation(line: 219, column: 11, scope: !368)
!388 = !DILocation(line: 219, column: 17, scope: !368)
!389 = !DILocation(line: 220, column: 11, scope: !368)
!390 = !DILocation(line: 220, column: 17, scope: !368)
!391 = !DILocation(line: 221, column: 11, scope: !368)
!392 = !DILocation(line: 221, column: 17, scope: !368)
!393 = !DILocation(line: 222, column: 11, scope: !368)
!394 = !DILocation(line: 222, column: 23, scope: !368)
!395 = !DILocation(line: 222, column: 17, scope: !368)
!396 = !DILocalVariable(name: "x0", scope: !368, file: !3, line: 205, type: !9)
!397 = !DILocation(line: 223, column: 11, scope: !368)
!398 = !DILocation(line: 223, column: 23, scope: !368)
!399 = !DILocation(line: 223, column: 17, scope: !368)
!400 = !DILocalVariable(name: "x5", scope: !368, file: !3, line: 205, type: !9)
!401 = !DILocation(line: 228, column: 8, scope: !368)
!402 = !DILocation(line: 228, column: 5, scope: !368)
!403 = !DILocation(line: 229, column: 8, scope: !368)
!404 = !DILocation(line: 229, column: 5, scope: !368)
!405 = !DILocation(line: 230, column: 8, scope: !368)
!406 = !DILocation(line: 230, column: 5, scope: !368)
!407 = !DILocation(line: 231, column: 8, scope: !368)
!408 = !DILocation(line: 231, column: 5, scope: !368)
!409 = !DILocation(line: 232, column: 8, scope: !368)
!410 = !DILocation(line: 232, column: 5, scope: !368)
!411 = !DILocation(line: 233, column: 8, scope: !368)
!412 = !DILocation(line: 233, column: 5, scope: !368)
!413 = !DILocation(line: 243, column: 34, scope: !368)
!414 = !DILocation(line: 243, column: 28, scope: !368)
!415 = !DILocalVariable(name: "y0", scope: !368, file: !3, line: 206, type: !9)
!416 = !DILocation(line: 244, column: 34, scope: !368)
!417 = !DILocation(line: 244, column: 28, scope: !368)
!418 = !DILocalVariable(name: "y1", scope: !368, file: !3, line: 206, type: !9)
!419 = !DILocation(line: 245, column: 34, scope: !368)
!420 = !DILocation(line: 245, column: 28, scope: !368)
!421 = !DILocalVariable(name: "y2", scope: !368, file: !3, line: 206, type: !9)
!422 = !DILocation(line: 246, column: 34, scope: !368)
!423 = !DILocation(line: 246, column: 28, scope: !368)
!424 = !DILocalVariable(name: "y3", scope: !368, file: !3, line: 206, type: !9)
!425 = !DILocation(line: 247, column: 34, scope: !368)
!426 = !DILocation(line: 247, column: 28, scope: !368)
!427 = !DILocalVariable(name: "y4", scope: !368, file: !3, line: 206, type: !9)
!428 = !DILocation(line: 248, column: 34, scope: !368)
!429 = !DILocation(line: 248, column: 28, scope: !368)
!430 = !DILocalVariable(name: "y5", scope: !368, file: !3, line: 206, type: !9)
!431 = !DILocation(line: 249, column: 34, scope: !368)
!432 = !DILocation(line: 249, column: 28, scope: !368)
!433 = !DILocalVariable(name: "y6", scope: !368, file: !3, line: 206, type: !9)
!434 = !DILocation(line: 250, column: 34, scope: !368)
!435 = !DILocation(line: 250, column: 28, scope: !368)
!436 = !DILocalVariable(name: "y7", scope: !368, file: !3, line: 206, type: !9)
!437 = !DILocation(line: 251, column: 34, scope: !368)
!438 = !DILocation(line: 251, column: 28, scope: !368)
!439 = !DILocalVariable(name: "y8", scope: !368, file: !3, line: 206, type: !9)
!440 = !DILocation(line: 252, column: 34, scope: !368)
!441 = !DILocation(line: 252, column: 28, scope: !368)
!442 = !DILocalVariable(name: "y9", scope: !368, file: !3, line: 206, type: !9)
!443 = !DILocation(line: 253, column: 35, scope: !368)
!444 = !DILocation(line: 253, column: 29, scope: !368)
!445 = !DILocalVariable(name: "y10", scope: !368, file: !3, line: 207, type: !9)
!446 = !DILocation(line: 254, column: 35, scope: !368)
!447 = !DILocation(line: 254, column: 29, scope: !368)
!448 = !DILocalVariable(name: "y11", scope: !368, file: !3, line: 207, type: !9)
!449 = !DILocation(line: 255, column: 35, scope: !368)
!450 = !DILocation(line: 255, column: 29, scope: !368)
!451 = !DILocalVariable(name: "y12", scope: !368, file: !3, line: 207, type: !9)
!452 = !DILocation(line: 256, column: 35, scope: !368)
!453 = !DILocation(line: 256, column: 29, scope: !368)
!454 = !DILocalVariable(name: "y13", scope: !368, file: !3, line: 207, type: !9)
!455 = !DILocation(line: 257, column: 35, scope: !368)
!456 = !DILocation(line: 257, column: 29, scope: !368)
!457 = !DILocalVariable(name: "y14", scope: !368, file: !3, line: 207, type: !9)
!458 = !DILocation(line: 259, column: 35, scope: !368)
!459 = !DILocation(line: 259, column: 29, scope: !368)
!460 = !DILocalVariable(name: "y16", scope: !368, file: !3, line: 207, type: !9)
!461 = !DILocation(line: 260, column: 35, scope: !368)
!462 = !DILocation(line: 260, column: 29, scope: !368)
!463 = !DILocalVariable(name: "y17", scope: !368, file: !3, line: 207, type: !9)
!464 = !DILocation(line: 261, column: 35, scope: !368)
!465 = !DILocation(line: 261, column: 29, scope: !368)
!466 = !DILocalVariable(name: "y18", scope: !368, file: !3, line: 207, type: !9)
!467 = !DILocation(line: 262, column: 35, scope: !368)
!468 = !DILocation(line: 262, column: 29, scope: !368)
!469 = !DILocalVariable(name: "y19", scope: !368, file: !3, line: 207, type: !9)
!470 = !DILocation(line: 263, column: 35, scope: !368)
!471 = !DILocation(line: 263, column: 29, scope: !368)
!472 = !DILocalVariable(name: "y20", scope: !368, file: !3, line: 208, type: !9)
!473 = !DILocation(line: 264, column: 35, scope: !368)
!474 = !DILocation(line: 264, column: 29, scope: !368)
!475 = !DILocalVariable(name: "y21", scope: !368, file: !3, line: 208, type: !9)
!476 = !DILocation(line: 265, column: 35, scope: !368)
!477 = !DILocation(line: 265, column: 29, scope: !368)
!478 = !DILocalVariable(name: "y22", scope: !368, file: !3, line: 208, type: !9)
!479 = !DILocation(line: 266, column: 35, scope: !368)
!480 = !DILocation(line: 266, column: 29, scope: !368)
!481 = !DILocalVariable(name: "y23", scope: !368, file: !3, line: 208, type: !9)
!482 = !DILocation(line: 267, column: 35, scope: !368)
!483 = !DILocation(line: 267, column: 29, scope: !368)
!484 = !DILocalVariable(name: "y24", scope: !368, file: !3, line: 208, type: !9)
!485 = !DILocation(line: 268, column: 35, scope: !368)
!486 = !DILocation(line: 268, column: 29, scope: !368)
!487 = !DILocalVariable(name: "y25", scope: !368, file: !3, line: 208, type: !9)
!488 = !DILocation(line: 269, column: 35, scope: !368)
!489 = !DILocation(line: 269, column: 29, scope: !368)
!490 = !DILocalVariable(name: "y26", scope: !368, file: !3, line: 208, type: !9)
!491 = !DILocation(line: 270, column: 35, scope: !368)
!492 = !DILocation(line: 270, column: 29, scope: !368)
!493 = !DILocalVariable(name: "y27", scope: !368, file: !3, line: 208, type: !9)
!494 = !DILocation(line: 271, column: 35, scope: !368)
!495 = !DILocation(line: 271, column: 29, scope: !368)
!496 = !DILocalVariable(name: "y28", scope: !368, file: !3, line: 208, type: !9)
!497 = !DILocation(line: 272, column: 35, scope: !368)
!498 = !DILocation(line: 272, column: 29, scope: !368)
!499 = !DILocalVariable(name: "y29", scope: !368, file: !3, line: 208, type: !9)
!500 = !DILocation(line: 273, column: 35, scope: !368)
!501 = !DILocation(line: 273, column: 29, scope: !368)
!502 = !DILocalVariable(name: "y30", scope: !368, file: !3, line: 209, type: !9)
!503 = !DILocation(line: 276, column: 16, scope: !368)
!504 = !DILocation(line: 276, column: 10, scope: !368)
!505 = !DILocation(line: 277, column: 16, scope: !368)
!506 = !DILocation(line: 277, column: 10, scope: !368)
!507 = !DILocation(line: 278, column: 16, scope: !368)
!508 = !DILocation(line: 278, column: 10, scope: !368)
!509 = !DILocation(line: 279, column: 16, scope: !368)
!510 = !DILocation(line: 279, column: 10, scope: !368)
!511 = !DILocation(line: 280, column: 16, scope: !368)
!512 = !DILocation(line: 280, column: 10, scope: !368)
!513 = !DILocation(line: 281, column: 17, scope: !368)
!514 = !DILocation(line: 281, column: 11, scope: !368)
!515 = !DILocation(line: 282, column: 17, scope: !368)
!516 = !DILocation(line: 282, column: 11, scope: !368)
!517 = !DILocation(line: 284, column: 17, scope: !368)
!518 = !DILocation(line: 284, column: 11, scope: !368)
!519 = !DILocation(line: 285, column: 17, scope: !368)
!520 = !DILocation(line: 285, column: 11, scope: !368)
!521 = !DILocation(line: 286, column: 18, scope: !368)
!522 = !DILocation(line: 286, column: 12, scope: !368)
!523 = !DILocation(line: 287, column: 18, scope: !368)
!524 = !DILocation(line: 287, column: 12, scope: !368)
!525 = !DILocation(line: 288, column: 18, scope: !368)
!526 = !DILocation(line: 288, column: 12, scope: !368)
!527 = !DILocation(line: 289, column: 18, scope: !368)
!528 = !DILocation(line: 289, column: 12, scope: !368)
!529 = !DILocation(line: 290, column: 18, scope: !368)
!530 = !DILocation(line: 290, column: 12, scope: !368)
!531 = !DILocalVariable(name: "y15", scope: !368, file: !3, line: 207, type: !9)
!532 = !DILocation(line: 293, column: 16, scope: !368)
!533 = !DILocation(line: 293, column: 10, scope: !368)
!534 = !DILocation(line: 294, column: 16, scope: !368)
!535 = !DILocation(line: 294, column: 10, scope: !368)
!536 = !DILocation(line: 295, column: 16, scope: !368)
!537 = !DILocation(line: 295, column: 10, scope: !368)
!538 = !DILocation(line: 296, column: 16, scope: !368)
!539 = !DILocation(line: 296, column: 10, scope: !368)
!540 = !DILocation(line: 297, column: 16, scope: !368)
!541 = !DILocation(line: 297, column: 10, scope: !368)
!542 = !DILocation(line: 298, column: 17, scope: !368)
!543 = !DILocation(line: 298, column: 11, scope: !368)
!544 = !DILocation(line: 299, column: 17, scope: !368)
!545 = !DILocation(line: 299, column: 11, scope: !368)
!546 = !DILocation(line: 300, column: 17, scope: !368)
!547 = !DILocation(line: 300, column: 11, scope: !368)
!548 = !DILocation(line: 302, column: 16, scope: !368)
!549 = !DILocation(line: 302, column: 10, scope: !368)
!550 = !DILocation(line: 303, column: 16, scope: !368)
!551 = !DILocation(line: 303, column: 10, scope: !368)
!552 = !DILocation(line: 304, column: 16, scope: !368)
!553 = !DILocation(line: 304, column: 10, scope: !368)
!554 = !DILocation(line: 305, column: 16, scope: !368)
!555 = !DILocation(line: 305, column: 10, scope: !368)
!556 = !DILocation(line: 307, column: 16, scope: !368)
!557 = !DILocation(line: 307, column: 10, scope: !368)
!558 = !DILocation(line: 308, column: 16, scope: !368)
!559 = !DILocation(line: 308, column: 10, scope: !368)
!560 = !DILocation(line: 310, column: 16, scope: !368)
!561 = !DILocation(line: 310, column: 10, scope: !368)
!562 = !DILocation(line: 320, column: 11, scope: !368)
!563 = !DILocation(line: 320, column: 35, scope: !368)
!564 = !DILocalVariable(name: "z0", scope: !368, file: !3, line: 205, type: !9)
!565 = !DILocation(line: 321, column: 12, scope: !368)
!566 = !DILocation(line: 321, column: 36, scope: !368)
!567 = !DILocation(line: 321, column: 5, scope: !368)
!568 = !DILocation(line: 322, column: 16, scope: !368)
!569 = !DILocation(line: 322, column: 8, scope: !368)
!570 = !DILocation(line: 322, column: 5, scope: !368)
!571 = !DILocation(line: 323, column: 12, scope: !368)
!572 = !DILocation(line: 323, column: 36, scope: !368)
!573 = !DILocation(line: 323, column: 5, scope: !368)
!574 = !DILocation(line: 324, column: 12, scope: !368)
!575 = !DILocation(line: 324, column: 36, scope: !368)
!576 = !DILocation(line: 324, column: 5, scope: !368)
!577 = !DILocation(line: 325, column: 12, scope: !368)
!578 = !DILocation(line: 325, column: 36, scope: !368)
!579 = !DILocation(line: 325, column: 5, scope: !368)
!580 = !DILocation(line: 326, column: 12, scope: !368)
!581 = !DILocation(line: 326, column: 36, scope: !368)
!582 = !DILocation(line: 326, column: 5, scope: !368)
!583 = !DILocation(line: 327, column: 16, scope: !368)
!584 = !DILocation(line: 327, column: 8, scope: !368)
!585 = !DILocation(line: 327, column: 5, scope: !368)
!586 = !DILocation(line: 328, column: 12, scope: !368)
!587 = !DILocation(line: 328, column: 36, scope: !368)
!588 = !DILocation(line: 328, column: 5, scope: !368)
!589 = !DILocation(line: 329, column: 12, scope: !368)
!590 = !DILocation(line: 329, column: 36, scope: !368)
!591 = !DILocation(line: 329, column: 5, scope: !368)
!592 = !DILocation(line: 330, column: 12, scope: !368)
!593 = !DILocation(line: 330, column: 36, scope: !368)
!594 = !DILocation(line: 330, column: 5, scope: !368)
!595 = !DILocation(line: 331, column: 12, scope: !368)
!596 = !DILocation(line: 331, column: 36, scope: !368)
!597 = !DILocation(line: 331, column: 5, scope: !368)
!598 = !DILocation(line: 332, column: 16, scope: !368)
!599 = !DILocation(line: 332, column: 8, scope: !368)
!600 = !DILocation(line: 332, column: 5, scope: !368)
!601 = !DILocation(line: 333, column: 12, scope: !368)
!602 = !DILocation(line: 333, column: 36, scope: !368)
!603 = !DILocation(line: 333, column: 5, scope: !368)
!604 = !DILocation(line: 334, column: 12, scope: !368)
!605 = !DILocation(line: 334, column: 36, scope: !368)
!606 = !DILocation(line: 334, column: 5, scope: !368)
!607 = !DILocation(line: 335, column: 12, scope: !368)
!608 = !DILocation(line: 335, column: 36, scope: !368)
!609 = !DILocation(line: 335, column: 5, scope: !368)
!610 = !DILocation(line: 336, column: 16, scope: !368)
!611 = !DILocation(line: 336, column: 8, scope: !368)
!612 = !DILocation(line: 336, column: 5, scope: !368)
!613 = !DILocation(line: 337, column: 12, scope: !368)
!614 = !DILocation(line: 337, column: 36, scope: !368)
!615 = !DILocation(line: 337, column: 5, scope: !368)
!616 = !DILocation(line: 338, column: 12, scope: !368)
!617 = !DILocation(line: 338, column: 36, scope: !368)
!618 = !DILocation(line: 338, column: 5, scope: !368)
!619 = !DILocation(line: 339, column: 2, scope: !368)
!620 = distinct !DISubprogram(name: "rotl", scope: !3, file: !3, line: 64, type: !621, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!621 = !DISubroutineType(types: !622)
!622 = !{!9, !9, !188}
!623 = !DILocalVariable(name: "x", arg: 1, scope: !620, file: !3, line: 64, type: !9)
!624 = !DILocation(line: 0, scope: !620)
!625 = !DILocalVariable(name: "n", arg: 2, scope: !620, file: !3, line: 64, type: !188)
!626 = !DILocation(line: 66, column: 12, scope: !620)
!627 = !DILocation(line: 66, column: 30, scope: !620)
!628 = !DILocation(line: 66, column: 23, scope: !620)
!629 = !DILocation(line: 66, column: 18, scope: !620)
!630 = !DILocation(line: 66, column: 2, scope: !620)
!631 = distinct !DISubprogram(name: "br_des_ct_skey_expand", scope: !3, file: !3, line: 389, type: !632, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !122, !13, !258}
!634 = !DILocalVariable(name: "sk_exp", arg: 1, scope: !631, file: !3, line: 389, type: !122)
!635 = !DILocation(line: 0, scope: !631)
!636 = !DILocalVariable(name: "num_rounds", arg: 2, scope: !631, file: !3, line: 390, type: !13)
!637 = !DILocalVariable(name: "skey", arg: 3, scope: !631, file: !3, line: 390, type: !258)
!638 = !DILocation(line: 392, column: 13, scope: !631)
!639 = !DILocation(line: 393, column: 2, scope: !631)
!640 = !DILocation(line: 393, column: 20, scope: !631)
!641 = !DILocation(line: 393, column: 23, scope: !631)
!642 = !DILocation(line: 396, column: 13, scope: !643)
!643 = distinct !DILexicalBlock(scope: !631, file: !3, line: 393, column: 28)
!644 = !DILocation(line: 396, column: 7, scope: !643)
!645 = !DILocalVariable(name: "v", scope: !643, file: !3, line: 394, type: !9)
!646 = !DILocation(line: 0, scope: !643)
!647 = !DILocation(line: 397, column: 10, scope: !643)
!648 = !DILocalVariable(name: "w0", scope: !643, file: !3, line: 394, type: !9)
!649 = !DILocation(line: 398, column: 11, scope: !643)
!650 = !DILocation(line: 398, column: 17, scope: !643)
!651 = !DILocalVariable(name: "w1", scope: !643, file: !3, line: 394, type: !9)
!652 = !DILocation(line: 399, column: 11, scope: !643)
!653 = !DILocation(line: 399, column: 17, scope: !643)
!654 = !DILocalVariable(name: "w2", scope: !643, file: !3, line: 394, type: !9)
!655 = !DILocation(line: 400, column: 11, scope: !643)
!656 = !DILocation(line: 400, column: 17, scope: !643)
!657 = !DILocalVariable(name: "w3", scope: !643, file: !3, line: 394, type: !9)
!658 = !DILocation(line: 401, column: 20, scope: !643)
!659 = !DILocation(line: 401, column: 26, scope: !643)
!660 = !DILocation(line: 401, column: 11, scope: !643)
!661 = !DILocation(line: 401, column: 14, scope: !643)
!662 = !DILocation(line: 402, column: 20, scope: !643)
!663 = !DILocation(line: 402, column: 26, scope: !643)
!664 = !DILocation(line: 402, column: 11, scope: !643)
!665 = !DILocation(line: 402, column: 14, scope: !643)
!666 = !DILocation(line: 403, column: 20, scope: !643)
!667 = !DILocation(line: 403, column: 26, scope: !643)
!668 = !DILocation(line: 403, column: 11, scope: !643)
!669 = !DILocation(line: 403, column: 14, scope: !643)
!670 = !DILocation(line: 404, column: 20, scope: !643)
!671 = !DILocation(line: 404, column: 26, scope: !643)
!672 = !DILocation(line: 404, column: 11, scope: !643)
!673 = !DILocation(line: 404, column: 14, scope: !643)
!674 = !DILocation(line: 405, column: 13, scope: !643)
!675 = !DILocation(line: 405, column: 7, scope: !643)
!676 = !DILocation(line: 406, column: 10, scope: !643)
!677 = !DILocation(line: 407, column: 11, scope: !643)
!678 = !DILocation(line: 407, column: 17, scope: !643)
!679 = !DILocation(line: 408, column: 20, scope: !643)
!680 = !DILocation(line: 408, column: 26, scope: !643)
!681 = !DILocation(line: 408, column: 11, scope: !643)
!682 = !DILocation(line: 408, column: 14, scope: !643)
!683 = !DILocation(line: 409, column: 20, scope: !643)
!684 = !DILocation(line: 409, column: 26, scope: !643)
!685 = !DILocation(line: 409, column: 11, scope: !643)
!686 = !DILocation(line: 409, column: 14, scope: !643)
!687 = distinct !{!687, !639, !688, !240}
!688 = !DILocation(line: 410, column: 2, scope: !631)
!689 = !DILocation(line: 411, column: 1, scope: !631)
!690 = distinct !DISubprogram(name: "br_des_ct_cbcenc_init", scope: !27, file: !27, line: 29, type: !691, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !4)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !693, !46, !35}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_des_ct_cbcenc_keys", file: !31, line: 2323, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 2316, size: 3200, elements: !696)
!696 = !{!697, !698, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !695, file: !31, line: 2318, baseType: !45, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !695, file: !31, line: 2320, baseType: !93, size: 3072, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !695, file: !31, line: 2321, baseType: !13, size: 32, offset: 3136)
!700 = !DILocalVariable(name: "ctx", arg: 1, scope: !690, file: !27, line: 29, type: !693)
!701 = !DILocation(line: 0, scope: !690)
!702 = !DILocalVariable(name: "key", arg: 2, scope: !690, file: !27, line: 30, type: !46)
!703 = !DILocalVariable(name: "len", arg: 3, scope: !690, file: !27, line: 30, type: !35)
!704 = !DILocation(line: 32, column: 7, scope: !690)
!705 = !DILocation(line: 32, column: 14, scope: !690)
!706 = !DILocation(line: 33, column: 44, scope: !690)
!707 = !DILocation(line: 33, column: 39, scope: !690)
!708 = !DILocation(line: 33, column: 20, scope: !690)
!709 = !DILocation(line: 33, column: 7, scope: !690)
!710 = !DILocation(line: 33, column: 18, scope: !690)
!711 = !DILocation(line: 34, column: 1, scope: !690)
!712 = distinct !DISubprogram(name: "br_des_ct_cbcenc_run", scope: !27, file: !27, line: 38, type: !713, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !4)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !715, !54, !54, !35}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!717 = !DILocalVariable(name: "ctx", arg: 1, scope: !712, file: !27, line: 38, type: !715)
!718 = !DILocation(line: 0, scope: !712)
!719 = !DILocalVariable(name: "iv", arg: 2, scope: !712, file: !27, line: 39, type: !54)
!720 = !DILocalVariable(name: "data", arg: 3, scope: !712, file: !27, line: 39, type: !54)
!721 = !DILocalVariable(name: "len", arg: 4, scope: !712, file: !27, line: 39, type: !35)
!722 = !DILocalVariable(name: "sk_exp", scope: !712, file: !27, line: 42, type: !723)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 9216, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 288)
!726 = !DILocation(line: 42, column: 11, scope: !712)
!727 = !DILocation(line: 44, column: 24, scope: !712)
!728 = !DILocation(line: 44, column: 37, scope: !712)
!729 = !DILocation(line: 44, column: 54, scope: !712)
!730 = !DILocation(line: 44, column: 49, scope: !712)
!731 = !DILocation(line: 44, column: 2, scope: !712)
!732 = !DILocalVariable(name: "ivbuf", scope: !712, file: !27, line: 41, type: !269)
!733 = !DILocalVariable(name: "buf", scope: !712, file: !27, line: 41, type: !269)
!734 = !DILocation(line: 47, column: 2, scope: !712)
!735 = !DILocation(line: 47, column: 13, scope: !712)
!736 = !DILocalVariable(name: "i", scope: !737, file: !27, line: 48, type: !188)
!737 = distinct !DILexicalBlock(scope: !712, file: !27, line: 47, column: 18)
!738 = !DILocation(line: 0, scope: !737)
!739 = !DILocation(line: 50, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !27, line: 50, column: 3)
!741 = !DILocation(line: 0, scope: !740)
!742 = !DILocation(line: 50, column: 17, scope: !743)
!743 = distinct !DILexicalBlock(scope: !740, file: !27, line: 50, column: 3)
!744 = !DILocation(line: 50, column: 3, scope: !740)
!745 = !DILocation(line: 51, column: 14, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !27, line: 50, column: 28)
!747 = !DILocation(line: 51, column: 4, scope: !746)
!748 = !DILocation(line: 51, column: 11, scope: !746)
!749 = !DILocation(line: 52, column: 3, scope: !746)
!750 = !DILocation(line: 50, column: 24, scope: !743)
!751 = !DILocation(line: 50, column: 3, scope: !743)
!752 = distinct !{!752, !744, !753, !240}
!753 = !DILocation(line: 52, column: 3, scope: !740)
!754 = !DILocation(line: 53, column: 32, scope: !737)
!755 = !DILocation(line: 53, column: 44, scope: !737)
!756 = !DILocation(line: 53, column: 3, scope: !737)
!757 = !DILocation(line: 54, column: 3, scope: !737)
!758 = !DILocation(line: 55, column: 7, scope: !737)
!759 = !DILocation(line: 56, column: 7, scope: !737)
!760 = distinct !{!760, !734, !761, !240}
!761 = !DILocation(line: 57, column: 2, scope: !712)
!762 = !DILocation(line: 58, column: 1, scope: !712)
!763 = distinct !DISubprogram(name: "br_des_do_IP", scope: !58, file: !58, line: 29, type: !764, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !122, !122}
!766 = !DILocalVariable(name: "xl", arg: 1, scope: !763, file: !58, line: 29, type: !122)
!767 = !DILocation(line: 0, scope: !763)
!768 = !DILocalVariable(name: "xr", arg: 2, scope: !763, file: !58, line: 29, type: !122)
!769 = !DILocation(line: 38, column: 6, scope: !763)
!770 = !DILocalVariable(name: "l", scope: !763, file: !58, line: 36, type: !9)
!771 = !DILocation(line: 39, column: 6, scope: !763)
!772 = !DILocalVariable(name: "r", scope: !763, file: !58, line: 36, type: !9)
!773 = !DILocation(line: 40, column: 10, scope: !763)
!774 = !DILocation(line: 40, column: 17, scope: !763)
!775 = !DILocation(line: 40, column: 22, scope: !763)
!776 = !DILocalVariable(name: "t", scope: !763, file: !58, line: 36, type: !9)
!777 = !DILocation(line: 41, column: 4, scope: !763)
!778 = !DILocation(line: 42, column: 9, scope: !763)
!779 = !DILocation(line: 42, column: 4, scope: !763)
!780 = !DILocation(line: 43, column: 10, scope: !763)
!781 = !DILocation(line: 43, column: 17, scope: !763)
!782 = !DILocation(line: 43, column: 22, scope: !763)
!783 = !DILocation(line: 44, column: 4, scope: !763)
!784 = !DILocation(line: 45, column: 9, scope: !763)
!785 = !DILocation(line: 45, column: 4, scope: !763)
!786 = !DILocation(line: 46, column: 10, scope: !763)
!787 = !DILocation(line: 46, column: 17, scope: !763)
!788 = !DILocation(line: 46, column: 22, scope: !763)
!789 = !DILocation(line: 47, column: 4, scope: !763)
!790 = !DILocation(line: 48, column: 9, scope: !763)
!791 = !DILocation(line: 48, column: 4, scope: !763)
!792 = !DILocation(line: 49, column: 10, scope: !763)
!793 = !DILocation(line: 49, column: 17, scope: !763)
!794 = !DILocation(line: 49, column: 22, scope: !763)
!795 = !DILocation(line: 50, column: 4, scope: !763)
!796 = !DILocation(line: 51, column: 9, scope: !763)
!797 = !DILocation(line: 51, column: 4, scope: !763)
!798 = !DILocation(line: 52, column: 10, scope: !763)
!799 = !DILocation(line: 52, column: 17, scope: !763)
!800 = !DILocation(line: 52, column: 22, scope: !763)
!801 = !DILocation(line: 53, column: 4, scope: !763)
!802 = !DILocation(line: 54, column: 9, scope: !763)
!803 = !DILocation(line: 54, column: 4, scope: !763)
!804 = !DILocation(line: 55, column: 6, scope: !763)
!805 = !DILocation(line: 56, column: 6, scope: !763)
!806 = !DILocation(line: 57, column: 1, scope: !763)
!807 = distinct !DISubprogram(name: "br_des_do_invIP", scope: !58, file: !58, line: 61, type: !764, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!808 = !DILocalVariable(name: "xl", arg: 1, scope: !807, file: !58, line: 61, type: !122)
!809 = !DILocation(line: 0, scope: !807)
!810 = !DILocalVariable(name: "xr", arg: 2, scope: !807, file: !58, line: 61, type: !122)
!811 = !DILocation(line: 68, column: 6, scope: !807)
!812 = !DILocalVariable(name: "l", scope: !807, file: !58, line: 66, type: !9)
!813 = !DILocation(line: 69, column: 6, scope: !807)
!814 = !DILocalVariable(name: "r", scope: !807, file: !58, line: 66, type: !9)
!815 = !DILocation(line: 70, column: 10, scope: !807)
!816 = !DILocation(line: 70, column: 17, scope: !807)
!817 = !DILocation(line: 70, column: 22, scope: !807)
!818 = !DILocalVariable(name: "t", scope: !807, file: !58, line: 66, type: !9)
!819 = !DILocation(line: 71, column: 4, scope: !807)
!820 = !DILocation(line: 72, column: 9, scope: !807)
!821 = !DILocation(line: 72, column: 4, scope: !807)
!822 = !DILocation(line: 73, column: 10, scope: !807)
!823 = !DILocation(line: 73, column: 17, scope: !807)
!824 = !DILocation(line: 73, column: 22, scope: !807)
!825 = !DILocation(line: 74, column: 4, scope: !807)
!826 = !DILocation(line: 75, column: 9, scope: !807)
!827 = !DILocation(line: 75, column: 4, scope: !807)
!828 = !DILocation(line: 76, column: 10, scope: !807)
!829 = !DILocation(line: 76, column: 17, scope: !807)
!830 = !DILocation(line: 76, column: 22, scope: !807)
!831 = !DILocation(line: 77, column: 4, scope: !807)
!832 = !DILocation(line: 78, column: 9, scope: !807)
!833 = !DILocation(line: 78, column: 4, scope: !807)
!834 = !DILocation(line: 79, column: 10, scope: !807)
!835 = !DILocation(line: 79, column: 17, scope: !807)
!836 = !DILocation(line: 79, column: 22, scope: !807)
!837 = !DILocation(line: 80, column: 4, scope: !807)
!838 = !DILocation(line: 81, column: 9, scope: !807)
!839 = !DILocation(line: 81, column: 4, scope: !807)
!840 = !DILocation(line: 82, column: 10, scope: !807)
!841 = !DILocation(line: 82, column: 17, scope: !807)
!842 = !DILocation(line: 82, column: 22, scope: !807)
!843 = !DILocation(line: 83, column: 4, scope: !807)
!844 = !DILocation(line: 84, column: 9, scope: !807)
!845 = !DILocation(line: 84, column: 4, scope: !807)
!846 = !DILocation(line: 85, column: 6, scope: !807)
!847 = !DILocation(line: 86, column: 6, scope: !807)
!848 = !DILocation(line: 87, column: 1, scope: !807)
!849 = distinct !DISubprogram(name: "br_des_keysched_unit", scope: !58, file: !58, line: 91, type: !181, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!850 = !DILocalVariable(name: "skey", arg: 1, scope: !849, file: !58, line: 91, type: !122)
!851 = !DILocation(line: 0, scope: !849)
!852 = !DILocalVariable(name: "key", arg: 2, scope: !849, file: !58, line: 91, type: !46)
!853 = !DILocalVariable(name: "xl", scope: !849, file: !58, line: 93, type: !9)
!854 = !DILocation(line: 93, column: 11, scope: !849)
!855 = !DILocalVariable(name: "xr", scope: !849, file: !58, line: 93, type: !9)
!856 = !DILocation(line: 93, column: 15, scope: !849)
!857 = !DILocation(line: 96, column: 7, scope: !849)
!858 = !DILocation(line: 96, column: 5, scope: !849)
!859 = !DILocation(line: 97, column: 45, scope: !849)
!860 = !DILocation(line: 97, column: 7, scope: !849)
!861 = !DILocation(line: 97, column: 5, scope: !849)
!862 = !DILocation(line: 121, column: 2, scope: !849)
!863 = !DILocation(line: 122, column: 9, scope: !849)
!864 = !DILocation(line: 122, column: 12, scope: !849)
!865 = !DILocation(line: 122, column: 36, scope: !849)
!866 = !DILocation(line: 123, column: 7, scope: !849)
!867 = !DILocation(line: 123, column: 10, scope: !849)
!868 = !DILocation(line: 123, column: 34, scope: !849)
!869 = !DILocation(line: 123, column: 3, scope: !849)
!870 = !DILocation(line: 124, column: 7, scope: !849)
!871 = !DILocation(line: 124, column: 10, scope: !849)
!872 = !DILocation(line: 124, column: 34, scope: !849)
!873 = !DILocation(line: 124, column: 3, scope: !849)
!874 = !DILocation(line: 125, column: 7, scope: !849)
!875 = !DILocation(line: 125, column: 10, scope: !849)
!876 = !DILocation(line: 125, column: 34, scope: !849)
!877 = !DILocation(line: 125, column: 3, scope: !849)
!878 = !DILocalVariable(name: "kl", scope: !849, file: !58, line: 93, type: !9)
!879 = !DILocation(line: 126, column: 9, scope: !849)
!880 = !DILocation(line: 126, column: 12, scope: !849)
!881 = !DILocation(line: 126, column: 36, scope: !849)
!882 = !DILocation(line: 127, column: 7, scope: !849)
!883 = !DILocation(line: 127, column: 10, scope: !849)
!884 = !DILocation(line: 127, column: 34, scope: !849)
!885 = !DILocation(line: 127, column: 3, scope: !849)
!886 = !DILocation(line: 128, column: 7, scope: !849)
!887 = !DILocation(line: 128, column: 10, scope: !849)
!888 = !DILocation(line: 128, column: 34, scope: !849)
!889 = !DILocation(line: 128, column: 3, scope: !849)
!890 = !DILocation(line: 129, column: 7, scope: !849)
!891 = !DILocation(line: 129, column: 10, scope: !849)
!892 = !DILocation(line: 129, column: 34, scope: !849)
!893 = !DILocation(line: 129, column: 3, scope: !849)
!894 = !DILocalVariable(name: "kr", scope: !849, file: !58, line: 93, type: !9)
!895 = !DILocalVariable(name: "i", scope: !849, file: !58, line: 94, type: !188)
!896 = !DILocation(line: 135, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !849, file: !58, line: 135, column: 2)
!898 = !DILocation(line: 0, scope: !897)
!899 = !DILocation(line: 135, column: 16, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !58, line: 135, column: 2)
!901 = !DILocation(line: 135, column: 2, scope: !897)
!902 = !DILocation(line: 136, column: 10, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !58, line: 136, column: 7)
!904 = distinct !DILexicalBlock(scope: !900, file: !58, line: 135, column: 28)
!905 = !DILocation(line: 136, column: 16, scope: !903)
!906 = !DILocation(line: 136, column: 7, scope: !904)
!907 = !DILocation(line: 137, column: 13, scope: !908)
!908 = distinct !DILexicalBlock(scope: !903, file: !58, line: 136, column: 26)
!909 = !DILocation(line: 137, column: 25, scope: !908)
!910 = !DILocation(line: 137, column: 19, scope: !908)
!911 = !DILocation(line: 138, column: 13, scope: !908)
!912 = !DILocation(line: 138, column: 25, scope: !908)
!913 = !DILocation(line: 138, column: 19, scope: !908)
!914 = !DILocation(line: 139, column: 3, scope: !908)
!915 = !DILocation(line: 140, column: 13, scope: !916)
!916 = distinct !DILexicalBlock(scope: !903, file: !58, line: 139, column: 10)
!917 = !DILocation(line: 140, column: 25, scope: !916)
!918 = !DILocation(line: 140, column: 19, scope: !916)
!919 = !DILocation(line: 141, column: 13, scope: !916)
!920 = !DILocation(line: 141, column: 25, scope: !916)
!921 = !DILocation(line: 141, column: 19, scope: !916)
!922 = !DILocation(line: 0, scope: !903)
!923 = !DILocation(line: 143, column: 6, scope: !904)
!924 = !DILocation(line: 144, column: 6, scope: !904)
!925 = !DILocation(line: 145, column: 11, scope: !904)
!926 = !DILocation(line: 145, column: 17, scope: !904)
!927 = !DILocation(line: 145, column: 3, scope: !904)
!928 = !DILocation(line: 145, column: 22, scope: !904)
!929 = !DILocation(line: 146, column: 11, scope: !904)
!930 = !DILocation(line: 146, column: 17, scope: !904)
!931 = !DILocation(line: 146, column: 3, scope: !904)
!932 = !DILocation(line: 146, column: 22, scope: !904)
!933 = !DILocation(line: 147, column: 2, scope: !904)
!934 = !DILocation(line: 135, column: 24, scope: !900)
!935 = !DILocation(line: 135, column: 2, scope: !900)
!936 = distinct !{!936, !901, !937, !240}
!937 = !DILocation(line: 147, column: 2, scope: !897)
!938 = !DILocation(line: 148, column: 1, scope: !849)
!939 = distinct !DISubprogram(name: "br_dec32be", scope: !292, file: !292, line: 590, type: !293, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !57, retainedNodes: !4)
!940 = !DILocalVariable(name: "src", arg: 1, scope: !939, file: !292, line: 590, type: !46)
!941 = !DILocation(line: 0, scope: !939)
!942 = !DILocalVariable(name: "buf", scope: !939, file: !292, line: 595, type: !6)
!943 = !DILocation(line: 598, column: 20, scope: !939)
!944 = !DILocation(line: 598, column: 10, scope: !939)
!945 = !DILocation(line: 598, column: 27, scope: !939)
!946 = !DILocation(line: 599, column: 16, scope: !939)
!947 = !DILocation(line: 599, column: 6, scope: !939)
!948 = !DILocation(line: 599, column: 23, scope: !939)
!949 = !DILocation(line: 599, column: 3, scope: !939)
!950 = !DILocation(line: 600, column: 16, scope: !939)
!951 = !DILocation(line: 600, column: 6, scope: !939)
!952 = !DILocation(line: 600, column: 23, scope: !939)
!953 = !DILocation(line: 600, column: 3, scope: !939)
!954 = !DILocation(line: 601, column: 15, scope: !939)
!955 = !DILocation(line: 601, column: 5, scope: !939)
!956 = !DILocation(line: 601, column: 3, scope: !939)
!957 = !DILocation(line: 598, column: 2, scope: !939)
!958 = distinct !DISubprogram(name: "br_des_rev_skey", scope: !58, file: !58, line: 152, type: !959, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !122}
!961 = !DILocalVariable(name: "skey", arg: 1, scope: !958, file: !58, line: 152, type: !122)
!962 = !DILocation(line: 0, scope: !958)
!963 = !DILocalVariable(name: "i", scope: !958, file: !58, line: 154, type: !188)
!964 = !DILocation(line: 156, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !958, file: !58, line: 156, column: 2)
!966 = !DILocation(line: 0, scope: !965)
!967 = !DILocation(line: 156, column: 16, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !58, line: 156, column: 2)
!969 = !DILocation(line: 156, column: 2, scope: !965)
!970 = !DILocation(line: 159, column: 14, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !58, line: 156, column: 30)
!972 = !DILocation(line: 159, column: 7, scope: !971)
!973 = !DILocalVariable(name: "t", scope: !971, file: !58, line: 157, type: !9)
!974 = !DILocation(line: 0, scope: !971)
!975 = !DILocation(line: 160, column: 25, scope: !971)
!976 = !DILocation(line: 160, column: 17, scope: !971)
!977 = !DILocation(line: 160, column: 10, scope: !971)
!978 = !DILocation(line: 160, column: 3, scope: !971)
!979 = !DILocation(line: 160, column: 15, scope: !971)
!980 = !DILocation(line: 161, column: 11, scope: !971)
!981 = !DILocation(line: 161, column: 3, scope: !971)
!982 = !DILocation(line: 161, column: 16, scope: !971)
!983 = !DILocation(line: 162, column: 14, scope: !971)
!984 = !DILocation(line: 162, column: 7, scope: !971)
!985 = !DILocation(line: 163, column: 25, scope: !971)
!986 = !DILocation(line: 163, column: 17, scope: !971)
!987 = !DILocation(line: 163, column: 10, scope: !971)
!988 = !DILocation(line: 163, column: 3, scope: !971)
!989 = !DILocation(line: 163, column: 15, scope: !971)
!990 = !DILocation(line: 164, column: 11, scope: !971)
!991 = !DILocation(line: 164, column: 3, scope: !971)
!992 = !DILocation(line: 164, column: 16, scope: !971)
!993 = !DILocation(line: 165, column: 2, scope: !971)
!994 = !DILocation(line: 156, column: 24, scope: !968)
!995 = !DILocation(line: 156, column: 2, scope: !968)
!996 = distinct !{!996, !969, !997, !240}
!997 = !DILocation(line: 165, column: 2, scope: !965)
!998 = !DILocation(line: 166, column: 1, scope: !958)
