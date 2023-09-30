; ModuleID = 'cbc_decrypt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_block_cbcdec_class_ = type { i64, i32, i32, void (%struct.br_block_cbcdec_class_**, i8*, i64)*, void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)* }
%struct.br_des_ct_cbcdec_keys = type { %struct.br_block_cbcdec_class_*, [96 x i32], i32 }
%struct.smack_value = type { i8* }

@QL0 = internal constant [16 x i8] c"\11\04\1B\17\0D\16\07\12\10\18\02\14\01\08\0F\1A", align 16, !dbg !0
@QR0 = internal constant [16 x i8] c"\19\13\09\01\05\0B\17\08\11\00\16\03\06\14\1B\18", align 16, !dbg !15
@QL1 = internal constant [16 x i8] c"\1C\1C\0E\0B\1C\1C\19\00\1C\1C\05\09\1C\1C\0C\15", align 16, !dbg !20
@QR1 = internal constant [16 x i8] c"\1C\1C\0F\04\1C\1C\1A\10\1C\1C\0C\07\1C\1C\0A\0E", align 16, !dbg !22
@br_des_ct_cbcdec_vtable = dso_local constant %struct.br_block_cbcdec_class_ { i64 400, i32 8, i32 3, void (%struct.br_block_cbcdec_class_**, i8*, i64)* bitcast (void (%struct.br_des_ct_cbcdec_keys*, i8*, i64)* @br_des_ct_cbcdec_init to void (%struct.br_block_cbcdec_class_**, i8*, i64)*), void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_des_ct_cbcdec_keys*, i8*, i8*, i64)* @br_des_ct_cbcdec_run to void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)*) }, align 8, !dbg !24

; Function Attrs: noinline nounwind uwtable
define dso_local void @cbc_decrypt_wrapper(%struct.br_des_ct_cbcdec_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !64 {
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcdec_keys* %0, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8* %1, metadata !99, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8* %2, metadata !100, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i64 %3, metadata !101, metadata !DIExpression()), !dbg !98
  %5 = call %struct.smack_value* (%struct.br_des_ct_cbcdec_keys*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_des_ct_cbcdec_keys*, ...)*)(%struct.br_des_ct_cbcdec_keys* %0), !dbg !102
  call void @public_in(%struct.smack_value* %5), !dbg !103
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !104
  call void @public_in(%struct.smack_value* %6), !dbg !105
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !106
  call void @public_in(%struct.smack_value* %7), !dbg !107
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !108
  call void @public_in(%struct.smack_value* %8), !dbg !109
  %9 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 2, !dbg !110
  %10 = load i32, i32* %9, align 8, !dbg !110
  %11 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %10), !dbg !111
  call void @public_in(%struct.smack_value* %11), !dbg !112
  %12 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !113
  call void @public_in(%struct.smack_value* %12), !dbg !114
  %13 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 16), !dbg !115
  call void @public_in(%struct.smack_value* %13), !dbg !116
  call void @br_des_ct_cbcdec_run(%struct.br_des_ct_cbcdec_keys* %0, i8* %1, i8* %2, i64 %3), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vfct_tmp(i32* %0, %struct.br_des_ct_cbcdec_keys* %1, i8* %2, i8* %3, i64 %4) #0 !dbg !119 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcdec_keys* %1, metadata !125, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8* %2, metadata !126, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8* %3, metadata !127, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i64 %4, metadata !128, metadata !DIExpression()), !dbg !124
  call void @br_des_ct_cbcdec_run(%struct.br_des_ct_cbcdec_keys* %1, i8* %2, i8* %3, i64 %4), !dbg !129
  ret void, !dbg !130
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cbc_decrypt_wrapper_t() #0 !dbg !131 {
  %1 = call %struct.br_des_ct_cbcdec_keys* (...) @getctx(), !dbg !134
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcdec_keys* %1, metadata !135, metadata !DIExpression()), !dbg !136
  %2 = call i8* (...) @getpt2(), !dbg !137
  call void @llvm.dbg.value(metadata i8* %2, metadata !138, metadata !DIExpression()), !dbg !136
  %3 = call i8* (...) @getpt3(), !dbg !139
  call void @llvm.dbg.value(metadata i8* %3, metadata !140, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i64 32, metadata !141, metadata !DIExpression()), !dbg !136
  %4 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %1, i32 0, i32 1, !dbg !142
  %5 = getelementptr inbounds [96 x i32], [96 x i32]* %4, i64 0, i64 0, !dbg !143
  call void @llvm.dbg.value(metadata i32* %5, metadata !144, metadata !DIExpression()), !dbg !136
  call void @vfct_tmp(i32* %5, %struct.br_des_ct_cbcdec_keys* %1, i8* %2, i8* %3, i64 32), !dbg !145
  ret void, !dbg !146
}

declare dso_local %struct.br_des_ct_cbcdec_keys* @getctx(...) #2

declare dso_local i8* @getpt2(...) #2

declare dso_local i8* @getpt3(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_des_ct_keysched(i32* %0, i8* %1, i64 %2) #0 !dbg !147 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8* %1, metadata !152, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i64 %2, metadata !153, metadata !DIExpression()), !dbg !151
  switch i64 %2, label %12 [
    i64 8, label %4
    i64 16, label %5
  ], !dbg !154

4:                                                ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !155
  br label %18, !dbg !157

5:                                                ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !158
  %6 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !159
  %7 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !160
  call void @keysched_unit(i32* %6, i8* %7), !dbg !161
  %8 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !162
  call void @br_des_rev_skey(i32* %8), !dbg !163
  %9 = getelementptr inbounds i32, i32* %0, i64 64, !dbg !164
  %10 = bitcast i32* %9 to i8*, !dbg !165
  %11 = bitcast i32* %0 to i8*, !dbg !165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 128, i1 false), !dbg !165
  br label %18, !dbg !166

12:                                               ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !167
  %13 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !168
  %14 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !169
  call void @keysched_unit(i32* %13, i8* %14), !dbg !170
  %15 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !171
  call void @br_des_rev_skey(i32* %15), !dbg !172
  %16 = getelementptr inbounds i32, i32* %0, i64 64, !dbg !173
  %17 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !174
  call void @keysched_unit(i32* %16, i8* %17), !dbg !175
  br label %18, !dbg !176

18:                                               ; preds = %12, %5, %4
  %.0 = phi i32 [ 3, %12 ], [ 3, %5 ], [ 1, %4 ], !dbg !177
  ret i32 %.0, !dbg !178
}

; Function Attrs: noinline nounwind uwtable
define internal void @keysched_unit(i32* %0, i8* %1) #0 !dbg !179 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i8* %1, metadata !184, metadata !DIExpression()), !dbg !183
  call void @br_des_keysched_unit(i32* %0, i8* %1), !dbg !185
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !183
  br label %3, !dbg !188

3:                                                ; preds = %62, %2
  %.02 = phi i32 [ 0, %2 ], [ %63, %62 ], !dbg !190
  call void @llvm.dbg.value(metadata i32 %.02, metadata !186, metadata !DIExpression()), !dbg !183
  %4 = icmp slt i32 %.02, 16, !dbg !191
  br i1 %4, label %5, label %64, !dbg !193

5:                                                ; preds = %3
  %6 = shl i32 %.02, 1, !dbg !194
  %7 = add nsw i32 %6, 0, !dbg !196
  %8 = sext i32 %7 to i64, !dbg !197
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !197
  %10 = load i32, i32* %9, align 4, !dbg !197
  call void @llvm.dbg.value(metadata i32 %10, metadata !198, metadata !DIExpression()), !dbg !199
  %11 = shl i32 %.02, 1, !dbg !200
  %12 = add nsw i32 %11, 1, !dbg !201
  %13 = sext i32 %12 to i64, !dbg !202
  %14 = getelementptr inbounds i32, i32* %0, i64 %13, !dbg !202
  %15 = load i32, i32* %14, align 4, !dbg !202
  call void @llvm.dbg.value(metadata i32 %15, metadata !203, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata i32 0, metadata !204, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata i32 0, metadata !205, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata i32 0, metadata !206, metadata !DIExpression()), !dbg !199
  br label %16, !dbg !207

16:                                               ; preds = %51, %5
  %.03 = phi i32 [ 0, %5 ], [ %35, %51 ], !dbg !199
  %.01 = phi i32 [ 0, %5 ], [ %50, %51 ], !dbg !199
  %.0 = phi i32 [ 0, %5 ], [ %52, %51 ], !dbg !209
  call void @llvm.dbg.value(metadata i32 %.0, metadata !206, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata i32 %.01, metadata !205, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata i32 %.03, metadata !204, metadata !DIExpression()), !dbg !199
  %17 = icmp slt i32 %.0, 16, !dbg !210
  br i1 %17, label %18, label %53, !dbg !212

18:                                               ; preds = %16
  %19 = shl i32 %.03, 1, !dbg !213
  call void @llvm.dbg.value(metadata i32 %19, metadata !204, metadata !DIExpression()), !dbg !199
  %20 = shl i32 %.01, 1, !dbg !215
  call void @llvm.dbg.value(metadata i32 %20, metadata !205, metadata !DIExpression()), !dbg !199
  %21 = sext i32 %.0 to i64, !dbg !216
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* @QL0, i64 0, i64 %21, !dbg !216
  %23 = load i8, i8* %22, align 1, !dbg !216
  %24 = zext i8 %23 to i32, !dbg !216
  %25 = lshr i32 %10, %24, !dbg !217
  %26 = and i32 %25, 1, !dbg !218
  %27 = shl i32 %26, 16, !dbg !219
  %28 = or i32 %19, %27, !dbg !220
  call void @llvm.dbg.value(metadata i32 %28, metadata !204, metadata !DIExpression()), !dbg !199
  %29 = sext i32 %.0 to i64, !dbg !221
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* @QR0, i64 0, i64 %29, !dbg !221
  %31 = load i8, i8* %30, align 1, !dbg !221
  %32 = zext i8 %31 to i32, !dbg !221
  %33 = lshr i32 %15, %32, !dbg !222
  %34 = and i32 %33, 1, !dbg !223
  %35 = or i32 %28, %34, !dbg !224
  call void @llvm.dbg.value(metadata i32 %35, metadata !204, metadata !DIExpression()), !dbg !199
  %36 = sext i32 %.0 to i64, !dbg !225
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* @QL1, i64 0, i64 %36, !dbg !225
  %38 = load i8, i8* %37, align 1, !dbg !225
  %39 = zext i8 %38 to i32, !dbg !225
  %40 = lshr i32 %10, %39, !dbg !226
  %41 = and i32 %40, 1, !dbg !227
  %42 = shl i32 %41, 16, !dbg !228
  %43 = or i32 %20, %42, !dbg !229
  call void @llvm.dbg.value(metadata i32 %43, metadata !205, metadata !DIExpression()), !dbg !199
  %44 = sext i32 %.0 to i64, !dbg !230
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* @QR1, i64 0, i64 %44, !dbg !230
  %46 = load i8, i8* %45, align 1, !dbg !230
  %47 = zext i8 %46 to i32, !dbg !230
  %48 = lshr i32 %15, %47, !dbg !231
  %49 = and i32 %48, 1, !dbg !232
  %50 = or i32 %43, %49, !dbg !233
  call void @llvm.dbg.value(metadata i32 %50, metadata !205, metadata !DIExpression()), !dbg !199
  br label %51, !dbg !234

51:                                               ; preds = %18
  %52 = add nsw i32 %.0, 1, !dbg !235
  call void @llvm.dbg.value(metadata i32 %52, metadata !206, metadata !DIExpression()), !dbg !199
  br label %16, !dbg !236, !llvm.loop !237

53:                                               ; preds = %16
  %54 = shl i32 %.02, 1, !dbg !240
  %55 = add nsw i32 %54, 0, !dbg !241
  %56 = sext i32 %55 to i64, !dbg !242
  %57 = getelementptr inbounds i32, i32* %0, i64 %56, !dbg !242
  store i32 %.03, i32* %57, align 4, !dbg !243
  %58 = shl i32 %.02, 1, !dbg !244
  %59 = add nsw i32 %58, 1, !dbg !245
  %60 = sext i32 %59 to i64, !dbg !246
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !246
  store i32 %.01, i32* %61, align 4, !dbg !247
  br label %62, !dbg !248

62:                                               ; preds = %53
  %63 = add nsw i32 %.02, 1, !dbg !249
  call void @llvm.dbg.value(metadata i32 %63, metadata !186, metadata !DIExpression()), !dbg !183
  br label %3, !dbg !250, !llvm.loop !251

64:                                               ; preds = %3
  ret void, !dbg !253
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_process_block(i32 %0, i32* %1, i8* %2) #0 !dbg !254 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i32* %1, metadata !261, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i8* %2, metadata !262, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %4, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %5, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8* %2, metadata !267, metadata !DIExpression()), !dbg !260
  %6 = call i32 @br_dec32be(i8* %2), !dbg !269
  store i32 %6, i32* %4, align 4, !dbg !270
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !271
  %8 = call i32 @br_dec32be(i8* %7), !dbg !272
  store i32 %8, i32* %5, align 4, !dbg !273
  call void @br_des_do_IP(i32* %4, i32* %5), !dbg !274
  br label %9, !dbg !275

9:                                                ; preds = %12, %3
  %.01 = phi i32* [ %1, %3 ], [ %13, %12 ]
  %.0 = phi i32 [ %0, %3 ], [ %10, %12 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i32* %.01, metadata !261, metadata !DIExpression()), !dbg !260
  %10 = add i32 %.0, -1, !dbg !276
  call void @llvm.dbg.value(metadata i32 %10, metadata !259, metadata !DIExpression()), !dbg !260
  %11 = icmp ugt i32 %.0, 0, !dbg !277
  br i1 %11, label %12, label %14, !dbg !275

12:                                               ; preds = %9
  call void @process_block_unit(i32* %4, i32* %5, i32* %.01), !dbg !278
  %13 = getelementptr inbounds i32, i32* %.01, i64 96, !dbg !280
  call void @llvm.dbg.value(metadata i32* %13, metadata !261, metadata !DIExpression()), !dbg !260
  br label %9, !dbg !275, !llvm.loop !281

14:                                               ; preds = %9
  call void @br_des_do_invIP(i32* %4, i32* %5), !dbg !283
  %15 = load i32, i32* %4, align 4, !dbg !284
  call void @br_enc32be(i8* %2, i32 %15), !dbg !285
  %16 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !286
  %17 = load i32, i32* %5, align 4, !dbg !287
  call void @br_enc32be(i8* %16, i32 %17), !dbg !288
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !290 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8* %0, metadata !296, metadata !DIExpression()), !dbg !295
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !297
  %3 = load i8, i8* %2, align 1, !dbg !297
  %4 = zext i8 %3 to i32, !dbg !298
  %5 = shl i32 %4, 24, !dbg !299
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !300
  %7 = load i8, i8* %6, align 1, !dbg !300
  %8 = zext i8 %7 to i32, !dbg !301
  %9 = shl i32 %8, 16, !dbg !302
  %10 = or i32 %5, %9, !dbg !303
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !304
  %12 = load i8, i8* %11, align 1, !dbg !304
  %13 = zext i8 %12 to i32, !dbg !305
  %14 = shl i32 %13, 8, !dbg !306
  %15 = or i32 %10, %14, !dbg !307
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !308
  %17 = load i8, i8* %16, align 1, !dbg !308
  %18 = zext i8 %17 to i32, !dbg !309
  %19 = or i32 %15, %18, !dbg !310
  ret i32 %19, !dbg !311
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_block_unit(i32* %0, i32* %1, i32* %2) #0 !dbg !312 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32* %1, metadata !317, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32* %2, metadata !318, metadata !DIExpression()), !dbg !316
  %4 = load i32, i32* %0, align 4, !dbg !319
  call void @llvm.dbg.value(metadata i32 %4, metadata !320, metadata !DIExpression()), !dbg !316
  %5 = load i32, i32* %1, align 4, !dbg !321
  call void @llvm.dbg.value(metadata i32 %5, metadata !322, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32 0, metadata !323, metadata !DIExpression()), !dbg !316
  br label %6, !dbg !324

6:                                                ; preds = %12, %3
  %.03 = phi i32 [ 0, %3 ], [ %13, %12 ], !dbg !326
  %.02 = phi i32* [ %2, %3 ], [ %11, %12 ]
  %.01 = phi i32 [ %4, %3 ], [ %.0, %12 ], !dbg !316
  %.0 = phi i32 [ %5, %3 ], [ %10, %12 ], !dbg !316
  call void @llvm.dbg.value(metadata i32 %.0, metadata !322, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32 %.01, metadata !320, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32* %.02, metadata !318, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32 %.03, metadata !323, metadata !DIExpression()), !dbg !316
  %7 = icmp slt i32 %.03, 16, !dbg !327
  br i1 %7, label %8, label %14, !dbg !329

8:                                                ; preds = %6
  %9 = call i32 @Fconf(i32 %.0, i32* %.02), !dbg !330
  %10 = xor i32 %.01, %9, !dbg !332
  call void @llvm.dbg.value(metadata i32 %10, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %.0, metadata !320, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata i32 %10, metadata !322, metadata !DIExpression()), !dbg !316
  %11 = getelementptr inbounds i32, i32* %.02, i64 6, !dbg !335
  call void @llvm.dbg.value(metadata i32* %11, metadata !318, metadata !DIExpression()), !dbg !316
  br label %12, !dbg !336

12:                                               ; preds = %8
  %13 = add nsw i32 %.03, 1, !dbg !337
  call void @llvm.dbg.value(metadata i32 %13, metadata !323, metadata !DIExpression()), !dbg !316
  br label %6, !dbg !338, !llvm.loop !339

14:                                               ; preds = %6
  store i32 %.0, i32* %0, align 4, !dbg !341
  store i32 %.01, i32* %1, align 4, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !344 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i32 %1, metadata !349, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i8* %0, metadata !350, metadata !DIExpression()), !dbg !348
  %3 = lshr i32 %1, 24, !dbg !351
  %4 = trunc i32 %3 to i8, !dbg !352
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !353
  store i8 %4, i8* %5, align 1, !dbg !354
  %6 = lshr i32 %1, 16, !dbg !355
  %7 = trunc i32 %6 to i8, !dbg !356
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !357
  store i8 %7, i8* %8, align 1, !dbg !358
  %9 = lshr i32 %1, 8, !dbg !359
  %10 = trunc i32 %9 to i8, !dbg !360
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !361
  store i8 %10, i8* %11, align 1, !dbg !362
  %12 = trunc i32 %1 to i8, !dbg !363
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !364
  store i8 %12, i8* %13, align 1, !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fconf(i32 %0, i32* %1) #0 !dbg !367 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i32* %1, metadata !372, metadata !DIExpression()), !dbg !371
  %3 = and i32 %0, 286331153, !dbg !373
  call void @llvm.dbg.value(metadata i32 %3, metadata !374, metadata !DIExpression()), !dbg !371
  %4 = lshr i32 %0, 1, !dbg !375
  %5 = and i32 %4, 286331153, !dbg !376
  call void @llvm.dbg.value(metadata i32 %5, metadata !377, metadata !DIExpression()), !dbg !371
  %6 = lshr i32 %0, 2, !dbg !378
  %7 = and i32 %6, 286331153, !dbg !379
  call void @llvm.dbg.value(metadata i32 %7, metadata !380, metadata !DIExpression()), !dbg !371
  %8 = lshr i32 %0, 3, !dbg !381
  %9 = and i32 %8, 286331153, !dbg !382
  call void @llvm.dbg.value(metadata i32 %9, metadata !383, metadata !DIExpression()), !dbg !371
  %10 = shl i32 %3, 4, !dbg !384
  %11 = sub i32 %10, %3, !dbg !385
  call void @llvm.dbg.value(metadata i32 %11, metadata !374, metadata !DIExpression()), !dbg !371
  %12 = shl i32 %5, 4, !dbg !386
  %13 = sub i32 %12, %5, !dbg !387
  call void @llvm.dbg.value(metadata i32 %13, metadata !377, metadata !DIExpression()), !dbg !371
  %14 = shl i32 %7, 4, !dbg !388
  %15 = sub i32 %14, %7, !dbg !389
  call void @llvm.dbg.value(metadata i32 %15, metadata !380, metadata !DIExpression()), !dbg !371
  %16 = shl i32 %9, 4, !dbg !390
  %17 = sub i32 %16, %9, !dbg !391
  call void @llvm.dbg.value(metadata i32 %17, metadata !383, metadata !DIExpression()), !dbg !371
  %18 = shl i32 %17, 4, !dbg !392
  %19 = lshr i32 %17, 28, !dbg !393
  %20 = or i32 %18, %19, !dbg !394
  call void @llvm.dbg.value(metadata i32 %20, metadata !395, metadata !DIExpression()), !dbg !371
  %21 = lshr i32 %11, 4, !dbg !396
  %22 = shl i32 %11, 28, !dbg !397
  %23 = or i32 %21, %22, !dbg !398
  call void @llvm.dbg.value(metadata i32 %23, metadata !399, metadata !DIExpression()), !dbg !371
  %24 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !400
  %25 = load i32, i32* %24, align 4, !dbg !400
  %26 = xor i32 %20, %25, !dbg !401
  call void @llvm.dbg.value(metadata i32 %26, metadata !395, metadata !DIExpression()), !dbg !371
  %27 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !402
  %28 = load i32, i32* %27, align 4, !dbg !402
  %29 = xor i32 %11, %28, !dbg !403
  call void @llvm.dbg.value(metadata i32 %29, metadata !374, metadata !DIExpression()), !dbg !371
  %30 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !404
  %31 = load i32, i32* %30, align 4, !dbg !404
  %32 = xor i32 %13, %31, !dbg !405
  call void @llvm.dbg.value(metadata i32 %32, metadata !377, metadata !DIExpression()), !dbg !371
  %33 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !406
  %34 = load i32, i32* %33, align 4, !dbg !406
  %35 = xor i32 %15, %34, !dbg !407
  call void @llvm.dbg.value(metadata i32 %35, metadata !380, metadata !DIExpression()), !dbg !371
  %36 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !408
  %37 = load i32, i32* %36, align 4, !dbg !408
  %38 = xor i32 %17, %37, !dbg !409
  call void @llvm.dbg.value(metadata i32 %38, metadata !383, metadata !DIExpression()), !dbg !371
  %39 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !410
  %40 = load i32, i32* %39, align 4, !dbg !410
  %41 = xor i32 %23, %40, !dbg !411
  call void @llvm.dbg.value(metadata i32 %41, metadata !399, metadata !DIExpression()), !dbg !371
  %42 = and i32 %26, -327498084, !dbg !412
  %43 = xor i32 -274256819, %42, !dbg !413
  call void @llvm.dbg.value(metadata i32 %43, metadata !414, metadata !DIExpression()), !dbg !371
  %44 = and i32 %26, 1343207457, !dbg !415
  %45 = xor i32 -1364529665, %44, !dbg !416
  call void @llvm.dbg.value(metadata i32 %45, metadata !417, metadata !DIExpression()), !dbg !371
  %46 = and i32 %26, 1089447945, !dbg !418
  %47 = xor i32 926508645, %46, !dbg !419
  call void @llvm.dbg.value(metadata i32 %47, metadata !420, metadata !DIExpression()), !dbg !371
  %48 = and i32 %26, -1511257304, !dbg !421
  %49 = xor i32 1758967859, %48, !dbg !422
  call void @llvm.dbg.value(metadata i32 %49, metadata !423, metadata !DIExpression()), !dbg !371
  %50 = and i32 %26, 623704096, !dbg !424
  %51 = xor i32 -909683269, %50, !dbg !425
  call void @llvm.dbg.value(metadata i32 %51, metadata !426, metadata !DIExpression()), !dbg !371
  %52 = and i32 %26, 1075861505, !dbg !427
  %53 = xor i32 1945908742, %52, !dbg !428
  call void @llvm.dbg.value(metadata i32 %53, metadata !429, metadata !DIExpression()), !dbg !371
  %54 = and i32 %26, -501155543, !dbg !430
  %55 = xor i32 -1566529256, %54, !dbg !431
  call void @llvm.dbg.value(metadata i32 %55, metadata !432, metadata !DIExpression()), !dbg !371
  %56 = and i32 %26, 1151597025, !dbg !433
  %57 = xor i32 -2111652464, %56, !dbg !434
  call void @llvm.dbg.value(metadata i32 %57, metadata !435, metadata !DIExpression()), !dbg !371
  %58 = and i32 %26, 2035224650, !dbg !436
  %59 = xor i32 -692671369, %58, !dbg !437
  call void @llvm.dbg.value(metadata i32 %59, metadata !438, metadata !DIExpression()), !dbg !371
  %60 = and i32 %26, 40841739, !dbg !439
  %61 = xor i32 812199948, %60, !dbg !440
  call void @llvm.dbg.value(metadata i32 %61, metadata !441, metadata !DIExpression()), !dbg !371
  %62 = and i32 %26, 1983950874, !dbg !442
  %63 = xor i32 1826674124, %62, !dbg !443
  call void @llvm.dbg.value(metadata i32 %63, metadata !444, metadata !DIExpression()), !dbg !371
  %64 = and i32 %26, 596579698, !dbg !445
  %65 = xor i32 1504289325, %64, !dbg !446
  call void @llvm.dbg.value(metadata i32 %65, metadata !447, metadata !DIExpression()), !dbg !371
  %66 = and i32 %26, 2053357699, !dbg !448
  %67 = xor i32 -1402139692, %66, !dbg !449
  call void @llvm.dbg.value(metadata i32 %67, metadata !450, metadata !DIExpression()), !dbg !371
  %68 = and i32 %26, 298622976, !dbg !451
  %69 = xor i32 566768128, %68, !dbg !452
  call void @llvm.dbg.value(metadata i32 %69, metadata !453, metadata !DIExpression()), !dbg !371
  %70 = and i32 %26, 539978154, !dbg !454
  %71 = xor i32 -1595530872, %70, !dbg !455
  call void @llvm.dbg.value(metadata i32 %71, metadata !456, metadata !DIExpression()), !dbg !371
  %72 = and i32 %26, 1370700777, !dbg !457
  %73 = xor i32 -1350736550, %72, !dbg !458
  call void @llvm.dbg.value(metadata i32 %73, metadata !459, metadata !DIExpression()), !dbg !371
  %74 = and i32 %26, 990898350, !dbg !460
  %75 = xor i32 -266958173, %74, !dbg !461
  call void @llvm.dbg.value(metadata i32 %75, metadata !462, metadata !DIExpression()), !dbg !371
  %76 = and i32 %26, -1866495978, !dbg !463
  %77 = xor i32 -1867894586, %76, !dbg !464
  call void @llvm.dbg.value(metadata i32 %77, metadata !465, metadata !DIExpression()), !dbg !371
  %78 = and i32 %26, 165891995, !dbg !466
  %79 = xor i32 1521644810, %78, !dbg !467
  call void @llvm.dbg.value(metadata i32 %79, metadata !468, metadata !DIExpression()), !dbg !371
  %80 = and i32 %26, 17022600, !dbg !469
  %81 = xor i32 1402060389, %80, !dbg !470
  call void @llvm.dbg.value(metadata i32 %81, metadata !471, metadata !DIExpression()), !dbg !371
  %82 = and i32 %26, 1236045349, !dbg !472
  %83 = xor i32 -1825100881, %82, !dbg !473
  call void @llvm.dbg.value(metadata i32 %83, metadata !474, metadata !DIExpression()), !dbg !371
  %84 = and i32 %26, -1842597571, !dbg !475
  %85 = xor i32 -225959668, %84, !dbg !476
  call void @llvm.dbg.value(metadata i32 %85, metadata !477, metadata !DIExpression()), !dbg !371
  %86 = and i32 %26, 1894724016, !dbg !478
  %87 = xor i32 -1844775488, %86, !dbg !479
  call void @llvm.dbg.value(metadata i32 %87, metadata !480, metadata !DIExpression()), !dbg !371
  %88 = and i32 %26, 1785753856, !dbg !481
  %89 = xor i32 1674777280, %88, !dbg !482
  call void @llvm.dbg.value(metadata i32 %89, metadata !483, metadata !DIExpression()), !dbg !371
  %90 = and i32 %26, -1183018991, !dbg !484
  %91 = xor i32 1400582150, %90, !dbg !485
  call void @llvm.dbg.value(metadata i32 %91, metadata !486, metadata !DIExpression()), !dbg !371
  %92 = and i32 %26, -1558132391, !dbg !487
  %93 = xor i32 -1561349979, %92, !dbg !488
  call void @llvm.dbg.value(metadata i32 %93, metadata !489, metadata !DIExpression()), !dbg !371
  %94 = and i32 %26, 1856023370, !dbg !490
  %95 = xor i32 -1131440475, %94, !dbg !491
  call void @llvm.dbg.value(metadata i32 %95, metadata !492, metadata !DIExpression()), !dbg !371
  %96 = and i32 %26, 1767103992, !dbg !493
  %97 = xor i32 -86935899, %96, !dbg !494
  call void @llvm.dbg.value(metadata i32 %97, metadata !495, metadata !DIExpression()), !dbg !371
  %98 = and i32 %26, -145801685, !dbg !496
  %99 = xor i32 1717179555, %98, !dbg !497
  call void @llvm.dbg.value(metadata i32 %99, metadata !498, metadata !DIExpression()), !dbg !371
  %100 = and i32 %26, -265261907, !dbg !499
  %101 = xor i32 -219156276, %100, !dbg !500
  call void @llvm.dbg.value(metadata i32 %101, metadata !501, metadata !DIExpression()), !dbg !371
  %102 = and i32 %29, %45, !dbg !502
  %103 = xor i32 %43, %102, !dbg !503
  call void @llvm.dbg.value(metadata i32 %103, metadata !414, metadata !DIExpression()), !dbg !371
  %104 = and i32 %29, %49, !dbg !504
  %105 = xor i32 %47, %104, !dbg !505
  call void @llvm.dbg.value(metadata i32 %105, metadata !417, metadata !DIExpression()), !dbg !371
  %106 = and i32 %29, %53, !dbg !506
  %107 = xor i32 %51, %106, !dbg !507
  call void @llvm.dbg.value(metadata i32 %107, metadata !420, metadata !DIExpression()), !dbg !371
  %108 = and i32 %29, %57, !dbg !508
  %109 = xor i32 %55, %108, !dbg !509
  call void @llvm.dbg.value(metadata i32 %109, metadata !423, metadata !DIExpression()), !dbg !371
  %110 = and i32 %29, %61, !dbg !510
  %111 = xor i32 %59, %110, !dbg !511
  call void @llvm.dbg.value(metadata i32 %111, metadata !426, metadata !DIExpression()), !dbg !371
  %112 = and i32 %29, %65, !dbg !512
  %113 = xor i32 %63, %112, !dbg !513
  call void @llvm.dbg.value(metadata i32 %113, metadata !429, metadata !DIExpression()), !dbg !371
  %114 = and i32 %29, %69, !dbg !514
  %115 = xor i32 %67, %114, !dbg !515
  call void @llvm.dbg.value(metadata i32 %115, metadata !432, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i32 %71, metadata !435, metadata !DIExpression()), !dbg !371
  %116 = and i32 %29, %75, !dbg !516
  %117 = xor i32 %73, %116, !dbg !517
  call void @llvm.dbg.value(metadata i32 %117, metadata !438, metadata !DIExpression()), !dbg !371
  %118 = and i32 %29, %79, !dbg !518
  %119 = xor i32 %77, %118, !dbg !519
  call void @llvm.dbg.value(metadata i32 %119, metadata !441, metadata !DIExpression()), !dbg !371
  %120 = and i32 %29, %83, !dbg !520
  %121 = xor i32 %81, %120, !dbg !521
  call void @llvm.dbg.value(metadata i32 %121, metadata !444, metadata !DIExpression()), !dbg !371
  %122 = and i32 %29, %87, !dbg !522
  %123 = xor i32 %85, %122, !dbg !523
  call void @llvm.dbg.value(metadata i32 %123, metadata !447, metadata !DIExpression()), !dbg !371
  %124 = and i32 %29, %91, !dbg !524
  %125 = xor i32 %89, %124, !dbg !525
  call void @llvm.dbg.value(metadata i32 %125, metadata !450, metadata !DIExpression()), !dbg !371
  %126 = and i32 %29, %95, !dbg !526
  %127 = xor i32 %93, %126, !dbg !527
  call void @llvm.dbg.value(metadata i32 %127, metadata !453, metadata !DIExpression()), !dbg !371
  %128 = and i32 %29, %99, !dbg !528
  %129 = xor i32 %97, %128, !dbg !529
  call void @llvm.dbg.value(metadata i32 %129, metadata !456, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i32 %101, metadata !530, metadata !DIExpression()), !dbg !371
  %130 = and i32 %32, %105, !dbg !531
  %131 = xor i32 %103, %130, !dbg !532
  call void @llvm.dbg.value(metadata i32 %131, metadata !414, metadata !DIExpression()), !dbg !371
  %132 = and i32 %32, %109, !dbg !533
  %133 = xor i32 %107, %132, !dbg !534
  call void @llvm.dbg.value(metadata i32 %133, metadata !417, metadata !DIExpression()), !dbg !371
  %134 = and i32 %32, %113, !dbg !535
  %135 = xor i32 %111, %134, !dbg !536
  call void @llvm.dbg.value(metadata i32 %135, metadata !420, metadata !DIExpression()), !dbg !371
  %136 = and i32 %32, %71, !dbg !537
  %137 = xor i32 %115, %136, !dbg !538
  call void @llvm.dbg.value(metadata i32 %137, metadata !423, metadata !DIExpression()), !dbg !371
  %138 = and i32 %32, %119, !dbg !539
  %139 = xor i32 %117, %138, !dbg !540
  call void @llvm.dbg.value(metadata i32 %139, metadata !426, metadata !DIExpression()), !dbg !371
  %140 = and i32 %32, %123, !dbg !541
  %141 = xor i32 %121, %140, !dbg !542
  call void @llvm.dbg.value(metadata i32 %141, metadata !429, metadata !DIExpression()), !dbg !371
  %142 = and i32 %32, %127, !dbg !543
  %143 = xor i32 %125, %142, !dbg !544
  call void @llvm.dbg.value(metadata i32 %143, metadata !432, metadata !DIExpression()), !dbg !371
  %144 = and i32 %32, %101, !dbg !545
  %145 = xor i32 %129, %144, !dbg !546
  call void @llvm.dbg.value(metadata i32 %145, metadata !435, metadata !DIExpression()), !dbg !371
  %146 = and i32 %35, %133, !dbg !547
  %147 = xor i32 %131, %146, !dbg !548
  call void @llvm.dbg.value(metadata i32 %147, metadata !414, metadata !DIExpression()), !dbg !371
  %148 = and i32 %35, %137, !dbg !549
  %149 = xor i32 %135, %148, !dbg !550
  call void @llvm.dbg.value(metadata i32 %149, metadata !417, metadata !DIExpression()), !dbg !371
  %150 = and i32 %35, %141, !dbg !551
  %151 = xor i32 %139, %150, !dbg !552
  call void @llvm.dbg.value(metadata i32 %151, metadata !420, metadata !DIExpression()), !dbg !371
  %152 = and i32 %35, %145, !dbg !553
  %153 = xor i32 %143, %152, !dbg !554
  call void @llvm.dbg.value(metadata i32 %153, metadata !423, metadata !DIExpression()), !dbg !371
  %154 = and i32 %38, %149, !dbg !555
  %155 = xor i32 %147, %154, !dbg !556
  call void @llvm.dbg.value(metadata i32 %155, metadata !414, metadata !DIExpression()), !dbg !371
  %156 = and i32 %38, %153, !dbg !557
  %157 = xor i32 %151, %156, !dbg !558
  call void @llvm.dbg.value(metadata i32 %157, metadata !417, metadata !DIExpression()), !dbg !371
  %158 = and i32 %41, %157, !dbg !559
  %159 = xor i32 %155, %158, !dbg !560
  call void @llvm.dbg.value(metadata i32 %159, metadata !414, metadata !DIExpression()), !dbg !371
  %160 = and i32 %159, 4, !dbg !561
  %161 = shl i32 %160, 3, !dbg !562
  call void @llvm.dbg.value(metadata i32 %161, metadata !563, metadata !DIExpression()), !dbg !371
  %162 = and i32 %159, 16384, !dbg !564
  %163 = shl i32 %162, 4, !dbg !565
  %164 = or i32 %161, %163, !dbg !566
  call void @llvm.dbg.value(metadata i32 %164, metadata !563, metadata !DIExpression()), !dbg !371
  %165 = and i32 %159, 302121248, !dbg !567
  %166 = call i32 @rotl(i32 %165, i32 5), !dbg !568
  %167 = or i32 %164, %166, !dbg !569
  call void @llvm.dbg.value(metadata i32 %167, metadata !563, metadata !DIExpression()), !dbg !371
  %168 = and i32 %159, 1048576, !dbg !570
  %169 = shl i32 %168, 6, !dbg !571
  %170 = or i32 %167, %169, !dbg !572
  call void @llvm.dbg.value(metadata i32 %170, metadata !563, metadata !DIExpression()), !dbg !371
  %171 = and i32 %159, 32768, !dbg !573
  %172 = shl i32 %171, 9, !dbg !574
  %173 = or i32 %170, %172, !dbg !575
  call void @llvm.dbg.value(metadata i32 %173, metadata !563, metadata !DIExpression()), !dbg !371
  %174 = and i32 %159, 67108864, !dbg !576
  %175 = lshr i32 %174, 22, !dbg !577
  %176 = or i32 %173, %175, !dbg !578
  call void @llvm.dbg.value(metadata i32 %176, metadata !563, metadata !DIExpression()), !dbg !371
  %177 = and i32 %159, 1, !dbg !579
  %178 = shl i32 %177, 11, !dbg !580
  %179 = or i32 %176, %178, !dbg !581
  call void @llvm.dbg.value(metadata i32 %179, metadata !563, metadata !DIExpression()), !dbg !371
  %180 = and i32 %159, 536871424, !dbg !582
  %181 = call i32 @rotl(i32 %180, i32 12), !dbg !583
  %182 = or i32 %179, %181, !dbg !584
  call void @llvm.dbg.value(metadata i32 %182, metadata !563, metadata !DIExpression()), !dbg !371
  %183 = and i32 %159, 2097152, !dbg !585
  %184 = lshr i32 %183, 19, !dbg !586
  %185 = or i32 %182, %184, !dbg !587
  call void @llvm.dbg.value(metadata i32 %185, metadata !563, metadata !DIExpression()), !dbg !371
  %186 = and i32 %159, 64, !dbg !588
  %187 = shl i32 %186, 14, !dbg !589
  %188 = or i32 %185, %187, !dbg !590
  call void @llvm.dbg.value(metadata i32 %188, metadata !563, metadata !DIExpression()), !dbg !371
  %189 = and i32 %159, 65536, !dbg !591
  %190 = shl i32 %189, 15, !dbg !592
  %191 = or i32 %188, %190, !dbg !593
  call void @llvm.dbg.value(metadata i32 %191, metadata !563, metadata !DIExpression()), !dbg !371
  %192 = and i32 %159, 2, !dbg !594
  %193 = shl i32 %192, 16, !dbg !595
  %194 = or i32 %191, %193, !dbg !596
  call void @llvm.dbg.value(metadata i32 %194, metadata !563, metadata !DIExpression()), !dbg !371
  %195 = and i32 %159, 1082136576, !dbg !597
  %196 = call i32 @rotl(i32 %195, i32 17), !dbg !598
  %197 = or i32 %194, %196, !dbg !599
  call void @llvm.dbg.value(metadata i32 %197, metadata !563, metadata !DIExpression()), !dbg !371
  %198 = and i32 %159, 524288, !dbg !600
  %199 = lshr i32 %198, 13, !dbg !601
  %200 = or i32 %197, %199, !dbg !602
  call void @llvm.dbg.value(metadata i32 %200, metadata !563, metadata !DIExpression()), !dbg !371
  %201 = and i32 %159, 16, !dbg !603
  %202 = shl i32 %201, 21, !dbg !604
  %203 = or i32 %200, %202, !dbg !605
  call void @llvm.dbg.value(metadata i32 %203, metadata !563, metadata !DIExpression()), !dbg !371
  %204 = and i32 %159, 16777216, !dbg !606
  %205 = lshr i32 %204, 10, !dbg !607
  %206 = or i32 %203, %205, !dbg !608
  call void @llvm.dbg.value(metadata i32 %206, metadata !563, metadata !DIExpression()), !dbg !371
  %207 = and i32 %159, -2013265912, !dbg !609
  %208 = call i32 @rotl(i32 %207, i32 24), !dbg !610
  %209 = or i32 %206, %208, !dbg !611
  call void @llvm.dbg.value(metadata i32 %209, metadata !563, metadata !DIExpression()), !dbg !371
  %210 = and i32 %159, 1152, !dbg !612
  %211 = lshr i32 %210, 7, !dbg !613
  %212 = or i32 %209, %211, !dbg !614
  call void @llvm.dbg.value(metadata i32 %212, metadata !563, metadata !DIExpression()), !dbg !371
  %213 = and i32 %159, 4464640, !dbg !615
  %214 = lshr i32 %213, 6, !dbg !616
  %215 = or i32 %212, %214, !dbg !617
  call void @llvm.dbg.value(metadata i32 %215, metadata !563, metadata !DIExpression()), !dbg !371
  ret i32 %215, !dbg !618
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotl(i32 %0, i32 %1) #0 !dbg !619 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !622, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32 %1, metadata !624, metadata !DIExpression()), !dbg !623
  %3 = shl i32 %0, %1, !dbg !625
  %4 = sub nsw i32 32, %1, !dbg !626
  %5 = lshr i32 %0, %4, !dbg !627
  %6 = or i32 %3, %5, !dbg !628
  ret i32 %6, !dbg !629
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_skey_expand(i32* %0, i32 %1, i32* %2) #0 !dbg !630 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32 %1, metadata !635, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32* %2, metadata !636, metadata !DIExpression()), !dbg !634
  %4 = shl i32 %1, 4, !dbg !637
  call void @llvm.dbg.value(metadata i32 %4, metadata !635, metadata !DIExpression()), !dbg !634
  br label %5, !dbg !638

5:                                                ; preds = %8, %3
  %.02 = phi i32* [ %2, %3 ], [ %30, %8 ]
  %.01 = phi i32 [ %4, %3 ], [ %6, %8 ], !dbg !634
  %.0 = phi i32* [ %0, %3 ], [ %40, %8 ]
  call void @llvm.dbg.value(metadata i32* %.0, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32 %.01, metadata !635, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i32* %.02, metadata !636, metadata !DIExpression()), !dbg !634
  %6 = add i32 %.01, -1, !dbg !639
  call void @llvm.dbg.value(metadata i32 %6, metadata !635, metadata !DIExpression()), !dbg !634
  %7 = icmp ugt i32 %.01, 0, !dbg !640
  br i1 %7, label %8, label %41, !dbg !638

8:                                                ; preds = %5
  %9 = getelementptr inbounds i32, i32* %.02, i32 1, !dbg !641
  call void @llvm.dbg.value(metadata i32* %9, metadata !636, metadata !DIExpression()), !dbg !634
  %10 = load i32, i32* %.02, align 4, !dbg !643
  call void @llvm.dbg.value(metadata i32 %10, metadata !644, metadata !DIExpression()), !dbg !645
  %11 = and i32 %10, 286331153, !dbg !646
  call void @llvm.dbg.value(metadata i32 %11, metadata !647, metadata !DIExpression()), !dbg !645
  %12 = lshr i32 %10, 1, !dbg !648
  %13 = and i32 %12, 286331153, !dbg !649
  call void @llvm.dbg.value(metadata i32 %13, metadata !650, metadata !DIExpression()), !dbg !645
  %14 = lshr i32 %10, 2, !dbg !651
  %15 = and i32 %14, 286331153, !dbg !652
  call void @llvm.dbg.value(metadata i32 %15, metadata !653, metadata !DIExpression()), !dbg !645
  %16 = lshr i32 %10, 3, !dbg !654
  %17 = and i32 %16, 286331153, !dbg !655
  call void @llvm.dbg.value(metadata i32 %17, metadata !656, metadata !DIExpression()), !dbg !645
  %18 = shl i32 %11, 4, !dbg !657
  %19 = sub i32 %18, %11, !dbg !658
  %20 = getelementptr inbounds i32, i32* %.0, i32 1, !dbg !659
  call void @llvm.dbg.value(metadata i32* %20, metadata !633, metadata !DIExpression()), !dbg !634
  store i32 %19, i32* %.0, align 4, !dbg !660
  %21 = shl i32 %13, 4, !dbg !661
  %22 = sub i32 %21, %13, !dbg !662
  %23 = getelementptr inbounds i32, i32* %20, i32 1, !dbg !663
  call void @llvm.dbg.value(metadata i32* %23, metadata !633, metadata !DIExpression()), !dbg !634
  store i32 %22, i32* %20, align 4, !dbg !664
  %24 = shl i32 %15, 4, !dbg !665
  %25 = sub i32 %24, %15, !dbg !666
  %26 = getelementptr inbounds i32, i32* %23, i32 1, !dbg !667
  call void @llvm.dbg.value(metadata i32* %26, metadata !633, metadata !DIExpression()), !dbg !634
  store i32 %25, i32* %23, align 4, !dbg !668
  %27 = shl i32 %17, 4, !dbg !669
  %28 = sub i32 %27, %17, !dbg !670
  %29 = getelementptr inbounds i32, i32* %26, i32 1, !dbg !671
  call void @llvm.dbg.value(metadata i32* %29, metadata !633, metadata !DIExpression()), !dbg !634
  store i32 %28, i32* %26, align 4, !dbg !672
  %30 = getelementptr inbounds i32, i32* %9, i32 1, !dbg !673
  call void @llvm.dbg.value(metadata i32* %30, metadata !636, metadata !DIExpression()), !dbg !634
  %31 = load i32, i32* %9, align 4, !dbg !674
  call void @llvm.dbg.value(metadata i32 %31, metadata !644, metadata !DIExpression()), !dbg !645
  %32 = and i32 %31, 286331153, !dbg !675
  call void @llvm.dbg.value(metadata i32 %32, metadata !647, metadata !DIExpression()), !dbg !645
  %33 = lshr i32 %31, 1, !dbg !676
  %34 = and i32 %33, 286331153, !dbg !677
  call void @llvm.dbg.value(metadata i32 %34, metadata !650, metadata !DIExpression()), !dbg !645
  %35 = shl i32 %32, 4, !dbg !678
  %36 = sub i32 %35, %32, !dbg !679
  %37 = getelementptr inbounds i32, i32* %29, i32 1, !dbg !680
  call void @llvm.dbg.value(metadata i32* %37, metadata !633, metadata !DIExpression()), !dbg !634
  store i32 %36, i32* %29, align 4, !dbg !681
  %38 = shl i32 %34, 4, !dbg !682
  %39 = sub i32 %38, %34, !dbg !683
  %40 = getelementptr inbounds i32, i32* %37, i32 1, !dbg !684
  call void @llvm.dbg.value(metadata i32* %40, metadata !633, metadata !DIExpression()), !dbg !634
  store i32 %39, i32* %37, align 4, !dbg !685
  br label %5, !dbg !638, !llvm.loop !686

41:                                               ; preds = %5
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_cbcdec_init(%struct.br_des_ct_cbcdec_keys* %0, i8* %1, i64 %2) #0 !dbg !689 {
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcdec_keys* %0, metadata !699, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %1, metadata !701, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i64 %2, metadata !702, metadata !DIExpression()), !dbg !700
  %4 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 0, !dbg !703
  store %struct.br_block_cbcdec_class_* @br_des_ct_cbcdec_vtable, %struct.br_block_cbcdec_class_** %4, align 8, !dbg !704
  %5 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !705
  %6 = getelementptr inbounds [96 x i32], [96 x i32]* %5, i64 0, i64 0, !dbg !706
  %7 = call i32 @br_des_ct_keysched(i32* %6, i8* %1, i64 %2), !dbg !707
  %8 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 2, !dbg !708
  store i32 %7, i32* %8, align 8, !dbg !709
  %9 = icmp eq i64 %2, 8, !dbg !710
  br i1 %9, label %10, label %13, !dbg !712

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !713
  %12 = getelementptr inbounds [96 x i32], [96 x i32]* %11, i64 0, i64 0, !dbg !715
  call void @br_des_rev_skey(i32* %12), !dbg !716
  br label %54, !dbg !717

13:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !718, metadata !DIExpression()), !dbg !720
  br label %14, !dbg !721

14:                                               ; preds = %51, %13
  %.0 = phi i32 [ 0, %13 ], [ %52, %51 ], !dbg !723
  call void @llvm.dbg.value(metadata i32 %.0, metadata !718, metadata !DIExpression()), !dbg !720
  %15 = icmp slt i32 %.0, 48, !dbg !724
  br i1 %15, label %16, label %53, !dbg !726

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !727
  %18 = sext i32 %.0 to i64, !dbg !729
  %19 = getelementptr inbounds [96 x i32], [96 x i32]* %17, i64 0, i64 %18, !dbg !729
  %20 = load i32, i32* %19, align 4, !dbg !729
  call void @llvm.dbg.value(metadata i32 %20, metadata !730, metadata !DIExpression()), !dbg !731
  %21 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !732
  %22 = sub nsw i32 94, %.0, !dbg !733
  %23 = sext i32 %22 to i64, !dbg !734
  %24 = getelementptr inbounds [96 x i32], [96 x i32]* %21, i64 0, i64 %23, !dbg !734
  %25 = load i32, i32* %24, align 4, !dbg !734
  %26 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !735
  %27 = sext i32 %.0 to i64, !dbg !736
  %28 = getelementptr inbounds [96 x i32], [96 x i32]* %26, i64 0, i64 %27, !dbg !736
  store i32 %25, i32* %28, align 4, !dbg !737
  %29 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !738
  %30 = sub nsw i32 94, %.0, !dbg !739
  %31 = sext i32 %30 to i64, !dbg !740
  %32 = getelementptr inbounds [96 x i32], [96 x i32]* %29, i64 0, i64 %31, !dbg !740
  store i32 %20, i32* %32, align 4, !dbg !741
  %33 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !742
  %34 = add nsw i32 %.0, 1, !dbg !743
  %35 = sext i32 %34 to i64, !dbg !744
  %36 = getelementptr inbounds [96 x i32], [96 x i32]* %33, i64 0, i64 %35, !dbg !744
  %37 = load i32, i32* %36, align 4, !dbg !744
  call void @llvm.dbg.value(metadata i32 %37, metadata !730, metadata !DIExpression()), !dbg !731
  %38 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !745
  %39 = sub nsw i32 95, %.0, !dbg !746
  %40 = sext i32 %39 to i64, !dbg !747
  %41 = getelementptr inbounds [96 x i32], [96 x i32]* %38, i64 0, i64 %40, !dbg !747
  %42 = load i32, i32* %41, align 4, !dbg !747
  %43 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !748
  %44 = add nsw i32 %.0, 1, !dbg !749
  %45 = sext i32 %44 to i64, !dbg !750
  %46 = getelementptr inbounds [96 x i32], [96 x i32]* %43, i64 0, i64 %45, !dbg !750
  store i32 %42, i32* %46, align 4, !dbg !751
  %47 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !752
  %48 = sub nsw i32 95, %.0, !dbg !753
  %49 = sext i32 %48 to i64, !dbg !754
  %50 = getelementptr inbounds [96 x i32], [96 x i32]* %47, i64 0, i64 %49, !dbg !754
  store i32 %37, i32* %50, align 4, !dbg !755
  br label %51, !dbg !756

51:                                               ; preds = %16
  %52 = add nsw i32 %.0, 2, !dbg !757
  call void @llvm.dbg.value(metadata i32 %52, metadata !718, metadata !DIExpression()), !dbg !720
  br label %14, !dbg !758, !llvm.loop !759

53:                                               ; preds = %14
  br label %54

54:                                               ; preds = %53, %10
  ret void, !dbg !761
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_cbcdec_run(%struct.br_des_ct_cbcdec_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !762 {
  %5 = alloca [288 x i32], align 16
  %6 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcdec_keys* %0, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i8* %1, metadata !769, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i8* %2, metadata !770, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i64 %3, metadata !771, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.declare(metadata [288 x i32]* %5, metadata !772, metadata !DIExpression()), !dbg !776
  %7 = getelementptr inbounds [288 x i32], [288 x i32]* %5, i64 0, i64 0, !dbg !777
  %8 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 2, !dbg !778
  %9 = load i32, i32* %8, align 8, !dbg !778
  %10 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !779
  %11 = getelementptr inbounds [96 x i32], [96 x i32]* %10, i64 0, i64 0, !dbg !780
  call void @br_des_ct_skey_expand(i32* %7, i32 %9, i32* %11), !dbg !781
  call void @llvm.dbg.value(metadata i8* %1, metadata !782, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i8* %2, metadata !783, metadata !DIExpression()), !dbg !768
  br label %12, !dbg !784

12:                                               ; preds = %34, %4
  %.02 = phi i64 [ %3, %4 ], [ %37, %34 ]
  %.01 = phi i8* [ %2, %4 ], [ %36, %34 ], !dbg !768
  call void @llvm.dbg.value(metadata i8* %.01, metadata !783, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i64 %.02, metadata !771, metadata !DIExpression()), !dbg !768
  %13 = icmp ugt i64 %.02, 0, !dbg !785
  br i1 %13, label %14, label %38, !dbg !784

14:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata [8 x i8]* %6, metadata !786, metadata !DIExpression()), !dbg !791
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !792
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %.01, i64 8, i1 false), !dbg !792
  %16 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 2, !dbg !793
  %17 = load i32, i32* %16, align 8, !dbg !793
  %18 = getelementptr inbounds [288 x i32], [288 x i32]* %5, i64 0, i64 0, !dbg !794
  call void @br_des_ct_process_block(i32 %17, i32* %18, i8* %.01), !dbg !795
  call void @llvm.dbg.value(metadata i32 0, metadata !796, metadata !DIExpression()), !dbg !797
  br label %19, !dbg !798

19:                                               ; preds = %32, %14
  %.0 = phi i32 [ 0, %14 ], [ %33, %32 ], !dbg !800
  call void @llvm.dbg.value(metadata i32 %.0, metadata !796, metadata !DIExpression()), !dbg !797
  %20 = icmp slt i32 %.0, 8, !dbg !801
  br i1 %20, label %21, label %34, !dbg !803

21:                                               ; preds = %19
  %22 = sext i32 %.0 to i64, !dbg !804
  %23 = getelementptr inbounds i8, i8* %1, i64 %22, !dbg !804
  %24 = load i8, i8* %23, align 1, !dbg !804
  %25 = zext i8 %24 to i32, !dbg !804
  %26 = sext i32 %.0 to i64, !dbg !806
  %27 = getelementptr inbounds i8, i8* %.01, i64 %26, !dbg !806
  %28 = load i8, i8* %27, align 1, !dbg !807
  %29 = zext i8 %28 to i32, !dbg !807
  %30 = xor i32 %29, %25, !dbg !807
  %31 = trunc i32 %30 to i8, !dbg !807
  store i8 %31, i8* %27, align 1, !dbg !807
  br label %32, !dbg !808

32:                                               ; preds = %21
  %33 = add nsw i32 %.0, 1, !dbg !809
  call void @llvm.dbg.value(metadata i32 %33, metadata !796, metadata !DIExpression()), !dbg !797
  br label %19, !dbg !810, !llvm.loop !811

34:                                               ; preds = %19
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %35, i64 8, i1 false), !dbg !813
  %36 = getelementptr inbounds i8, i8* %.01, i64 8, !dbg !814
  call void @llvm.dbg.value(metadata i8* %36, metadata !783, metadata !DIExpression()), !dbg !768
  %37 = sub i64 %.02, 8, !dbg !815
  call void @llvm.dbg.value(metadata i64 %37, metadata !771, metadata !DIExpression()), !dbg !768
  br label %12, !dbg !784, !llvm.loop !816

38:                                               ; preds = %12
  ret void, !dbg !818
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_do_IP(i32* %0, i32* %1) #0 !dbg !819 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32* %1, metadata !824, metadata !DIExpression()), !dbg !823
  %3 = load i32, i32* %0, align 4, !dbg !825
  call void @llvm.dbg.value(metadata i32 %3, metadata !826, metadata !DIExpression()), !dbg !823
  %4 = load i32, i32* %1, align 4, !dbg !827
  call void @llvm.dbg.value(metadata i32 %4, metadata !828, metadata !DIExpression()), !dbg !823
  %5 = lshr i32 %3, 4, !dbg !829
  %6 = xor i32 %5, %4, !dbg !830
  %7 = and i32 %6, 252645135, !dbg !831
  call void @llvm.dbg.value(metadata i32 %7, metadata !832, metadata !DIExpression()), !dbg !823
  %8 = xor i32 %4, %7, !dbg !833
  call void @llvm.dbg.value(metadata i32 %8, metadata !828, metadata !DIExpression()), !dbg !823
  %9 = shl i32 %7, 4, !dbg !834
  %10 = xor i32 %3, %9, !dbg !835
  call void @llvm.dbg.value(metadata i32 %10, metadata !826, metadata !DIExpression()), !dbg !823
  %11 = lshr i32 %10, 16, !dbg !836
  %12 = xor i32 %11, %8, !dbg !837
  %13 = and i32 %12, 65535, !dbg !838
  call void @llvm.dbg.value(metadata i32 %13, metadata !832, metadata !DIExpression()), !dbg !823
  %14 = xor i32 %8, %13, !dbg !839
  call void @llvm.dbg.value(metadata i32 %14, metadata !828, metadata !DIExpression()), !dbg !823
  %15 = shl i32 %13, 16, !dbg !840
  %16 = xor i32 %10, %15, !dbg !841
  call void @llvm.dbg.value(metadata i32 %16, metadata !826, metadata !DIExpression()), !dbg !823
  %17 = lshr i32 %14, 2, !dbg !842
  %18 = xor i32 %17, %16, !dbg !843
  %19 = and i32 %18, 858993459, !dbg !844
  call void @llvm.dbg.value(metadata i32 %19, metadata !832, metadata !DIExpression()), !dbg !823
  %20 = xor i32 %16, %19, !dbg !845
  call void @llvm.dbg.value(metadata i32 %20, metadata !826, metadata !DIExpression()), !dbg !823
  %21 = shl i32 %19, 2, !dbg !846
  %22 = xor i32 %14, %21, !dbg !847
  call void @llvm.dbg.value(metadata i32 %22, metadata !828, metadata !DIExpression()), !dbg !823
  %23 = lshr i32 %22, 8, !dbg !848
  %24 = xor i32 %23, %20, !dbg !849
  %25 = and i32 %24, 16711935, !dbg !850
  call void @llvm.dbg.value(metadata i32 %25, metadata !832, metadata !DIExpression()), !dbg !823
  %26 = xor i32 %20, %25, !dbg !851
  call void @llvm.dbg.value(metadata i32 %26, metadata !826, metadata !DIExpression()), !dbg !823
  %27 = shl i32 %25, 8, !dbg !852
  %28 = xor i32 %22, %27, !dbg !853
  call void @llvm.dbg.value(metadata i32 %28, metadata !828, metadata !DIExpression()), !dbg !823
  %29 = lshr i32 %26, 1, !dbg !854
  %30 = xor i32 %29, %28, !dbg !855
  %31 = and i32 %30, 1431655765, !dbg !856
  call void @llvm.dbg.value(metadata i32 %31, metadata !832, metadata !DIExpression()), !dbg !823
  %32 = xor i32 %28, %31, !dbg !857
  call void @llvm.dbg.value(metadata i32 %32, metadata !828, metadata !DIExpression()), !dbg !823
  %33 = shl i32 %31, 1, !dbg !858
  %34 = xor i32 %26, %33, !dbg !859
  call void @llvm.dbg.value(metadata i32 %34, metadata !826, metadata !DIExpression()), !dbg !823
  store i32 %34, i32* %0, align 4, !dbg !860
  store i32 %32, i32* %1, align 4, !dbg !861
  ret void, !dbg !862
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_do_invIP(i32* %0, i32* %1) #0 !dbg !863 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i32* %1, metadata !866, metadata !DIExpression()), !dbg !865
  %3 = load i32, i32* %0, align 4, !dbg !867
  call void @llvm.dbg.value(metadata i32 %3, metadata !868, metadata !DIExpression()), !dbg !865
  %4 = load i32, i32* %1, align 4, !dbg !869
  call void @llvm.dbg.value(metadata i32 %4, metadata !870, metadata !DIExpression()), !dbg !865
  %5 = lshr i32 %3, 1, !dbg !871
  %6 = xor i32 %5, %4, !dbg !872
  %7 = and i32 %6, 1431655765, !dbg !873
  call void @llvm.dbg.value(metadata i32 %7, metadata !874, metadata !DIExpression()), !dbg !865
  %8 = xor i32 %4, %7, !dbg !875
  call void @llvm.dbg.value(metadata i32 %8, metadata !870, metadata !DIExpression()), !dbg !865
  %9 = shl i32 %7, 1, !dbg !876
  %10 = xor i32 %3, %9, !dbg !877
  call void @llvm.dbg.value(metadata i32 %10, metadata !868, metadata !DIExpression()), !dbg !865
  %11 = lshr i32 %8, 8, !dbg !878
  %12 = xor i32 %11, %10, !dbg !879
  %13 = and i32 %12, 16711935, !dbg !880
  call void @llvm.dbg.value(metadata i32 %13, metadata !874, metadata !DIExpression()), !dbg !865
  %14 = xor i32 %10, %13, !dbg !881
  call void @llvm.dbg.value(metadata i32 %14, metadata !868, metadata !DIExpression()), !dbg !865
  %15 = shl i32 %13, 8, !dbg !882
  %16 = xor i32 %8, %15, !dbg !883
  call void @llvm.dbg.value(metadata i32 %16, metadata !870, metadata !DIExpression()), !dbg !865
  %17 = lshr i32 %16, 2, !dbg !884
  %18 = xor i32 %17, %14, !dbg !885
  %19 = and i32 %18, 858993459, !dbg !886
  call void @llvm.dbg.value(metadata i32 %19, metadata !874, metadata !DIExpression()), !dbg !865
  %20 = xor i32 %14, %19, !dbg !887
  call void @llvm.dbg.value(metadata i32 %20, metadata !868, metadata !DIExpression()), !dbg !865
  %21 = shl i32 %19, 2, !dbg !888
  %22 = xor i32 %16, %21, !dbg !889
  call void @llvm.dbg.value(metadata i32 %22, metadata !870, metadata !DIExpression()), !dbg !865
  %23 = lshr i32 %20, 16, !dbg !890
  %24 = xor i32 %23, %22, !dbg !891
  %25 = and i32 %24, 65535, !dbg !892
  call void @llvm.dbg.value(metadata i32 %25, metadata !874, metadata !DIExpression()), !dbg !865
  %26 = xor i32 %22, %25, !dbg !893
  call void @llvm.dbg.value(metadata i32 %26, metadata !870, metadata !DIExpression()), !dbg !865
  %27 = shl i32 %25, 16, !dbg !894
  %28 = xor i32 %20, %27, !dbg !895
  call void @llvm.dbg.value(metadata i32 %28, metadata !868, metadata !DIExpression()), !dbg !865
  %29 = lshr i32 %28, 4, !dbg !896
  %30 = xor i32 %29, %26, !dbg !897
  %31 = and i32 %30, 252645135, !dbg !898
  call void @llvm.dbg.value(metadata i32 %31, metadata !874, metadata !DIExpression()), !dbg !865
  %32 = xor i32 %26, %31, !dbg !899
  call void @llvm.dbg.value(metadata i32 %32, metadata !870, metadata !DIExpression()), !dbg !865
  %33 = shl i32 %31, 4, !dbg !900
  %34 = xor i32 %28, %33, !dbg !901
  call void @llvm.dbg.value(metadata i32 %34, metadata !868, metadata !DIExpression()), !dbg !865
  store i32 %34, i32* %0, align 4, !dbg !902
  store i32 %32, i32* %1, align 4, !dbg !903
  ret void, !dbg !904
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_keysched_unit(i32* %0, i8* %1) #0 !dbg !905 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i8* %1, metadata !908, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata i32* %3, metadata !909, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.declare(metadata i32* %4, metadata !911, metadata !DIExpression()), !dbg !912
  %5 = call i32 @br_dec32be.9(i8* %1), !dbg !913
  store i32 %5, i32* %3, align 4, !dbg !914
  %6 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !915
  %7 = call i32 @br_dec32be.9(i8* %6), !dbg !916
  store i32 %7, i32* %4, align 4, !dbg !917
  call void @br_des_do_IP(i32* %3, i32* %4), !dbg !918
  %8 = load i32, i32* %4, align 4, !dbg !919
  %9 = and i32 %8, -16777216, !dbg !920
  %10 = lshr i32 %9, 4, !dbg !921
  %11 = load i32, i32* %3, align 4, !dbg !922
  %12 = and i32 %11, -16777216, !dbg !923
  %13 = lshr i32 %12, 12, !dbg !924
  %14 = or i32 %10, %13, !dbg !925
  %15 = load i32, i32* %4, align 4, !dbg !926
  %16 = and i32 %15, 16711680, !dbg !927
  %17 = lshr i32 %16, 12, !dbg !928
  %18 = or i32 %14, %17, !dbg !929
  %19 = load i32, i32* %3, align 4, !dbg !930
  %20 = and i32 %19, 16711680, !dbg !931
  %21 = lshr i32 %20, 20, !dbg !932
  %22 = or i32 %18, %21, !dbg !933
  call void @llvm.dbg.value(metadata i32 %22, metadata !934, metadata !DIExpression()), !dbg !907
  %23 = load i32, i32* %4, align 4, !dbg !935
  %24 = and i32 %23, 255, !dbg !936
  %25 = shl i32 %24, 20, !dbg !937
  %26 = load i32, i32* %3, align 4, !dbg !938
  %27 = and i32 %26, 65280, !dbg !939
  %28 = shl i32 %27, 4, !dbg !940
  %29 = or i32 %25, %28, !dbg !941
  %30 = load i32, i32* %4, align 4, !dbg !942
  %31 = and i32 %30, 65280, !dbg !943
  %32 = lshr i32 %31, 4, !dbg !944
  %33 = or i32 %29, %32, !dbg !945
  %34 = load i32, i32* %3, align 4, !dbg !946
  %35 = and i32 %34, 983040, !dbg !947
  %36 = lshr i32 %35, 16, !dbg !948
  %37 = or i32 %33, %36, !dbg !949
  call void @llvm.dbg.value(metadata i32 %37, metadata !950, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i32 0, metadata !951, metadata !DIExpression()), !dbg !907
  br label %38, !dbg !952

38:                                               ; preds = %69, %2
  %.02 = phi i32 [ %22, %2 ], [ %59, %69 ], !dbg !907
  %.01 = phi i32 [ %37, %2 ], [ %60, %69 ], !dbg !907
  %.0 = phi i32 [ 0, %2 ], [ %70, %69 ], !dbg !954
  call void @llvm.dbg.value(metadata i32 %.0, metadata !951, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i32 %.01, metadata !950, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i32 %.02, metadata !934, metadata !DIExpression()), !dbg !907
  %39 = icmp slt i32 %.0, 16, !dbg !955
  br i1 %39, label %40, label %71, !dbg !957

40:                                               ; preds = %38
  %41 = shl i32 1, %.0, !dbg !958
  %42 = and i32 %41, 33027, !dbg !961
  %43 = icmp ne i32 %42, 0, !dbg !961
  br i1 %43, label %44, label %51, !dbg !962

44:                                               ; preds = %40
  %45 = shl i32 %.02, 1, !dbg !963
  %46 = lshr i32 %.02, 27, !dbg !965
  %47 = or i32 %45, %46, !dbg !966
  call void @llvm.dbg.value(metadata i32 %47, metadata !934, metadata !DIExpression()), !dbg !907
  %48 = shl i32 %.01, 1, !dbg !967
  %49 = lshr i32 %.01, 27, !dbg !968
  %50 = or i32 %48, %49, !dbg !969
  call void @llvm.dbg.value(metadata i32 %50, metadata !950, metadata !DIExpression()), !dbg !907
  br label %58, !dbg !970

51:                                               ; preds = %40
  %52 = shl i32 %.02, 2, !dbg !971
  %53 = lshr i32 %.02, 26, !dbg !973
  %54 = or i32 %52, %53, !dbg !974
  call void @llvm.dbg.value(metadata i32 %54, metadata !934, metadata !DIExpression()), !dbg !907
  %55 = shl i32 %.01, 2, !dbg !975
  %56 = lshr i32 %.01, 26, !dbg !976
  %57 = or i32 %55, %56, !dbg !977
  call void @llvm.dbg.value(metadata i32 %57, metadata !950, metadata !DIExpression()), !dbg !907
  br label %58

58:                                               ; preds = %51, %44
  %.13 = phi i32 [ %47, %44 ], [ %54, %51 ], !dbg !978
  %.1 = phi i32 [ %50, %44 ], [ %57, %51 ], !dbg !978
  call void @llvm.dbg.value(metadata i32 %.1, metadata !950, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i32 %.13, metadata !934, metadata !DIExpression()), !dbg !907
  %59 = and i32 %.13, 268435455, !dbg !979
  call void @llvm.dbg.value(metadata i32 %59, metadata !934, metadata !DIExpression()), !dbg !907
  %60 = and i32 %.1, 268435455, !dbg !980
  call void @llvm.dbg.value(metadata i32 %60, metadata !950, metadata !DIExpression()), !dbg !907
  %61 = shl i32 %.0, 1, !dbg !981
  %62 = add nsw i32 %61, 0, !dbg !982
  %63 = sext i32 %62 to i64, !dbg !983
  %64 = getelementptr inbounds i32, i32* %0, i64 %63, !dbg !983
  store i32 %59, i32* %64, align 4, !dbg !984
  %65 = shl i32 %.0, 1, !dbg !985
  %66 = add nsw i32 %65, 1, !dbg !986
  %67 = sext i32 %66 to i64, !dbg !987
  %68 = getelementptr inbounds i32, i32* %0, i64 %67, !dbg !987
  store i32 %60, i32* %68, align 4, !dbg !988
  br label %69, !dbg !989

69:                                               ; preds = %58
  %70 = add nsw i32 %.0, 1, !dbg !990
  call void @llvm.dbg.value(metadata i32 %70, metadata !951, metadata !DIExpression()), !dbg !907
  br label %38, !dbg !991, !llvm.loop !992

71:                                               ; preds = %38
  ret void, !dbg !994
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.9(i8* %0) #0 !dbg !995 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8* %0, metadata !998, metadata !DIExpression()), !dbg !997
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !999
  %3 = load i8, i8* %2, align 1, !dbg !999
  %4 = zext i8 %3 to i32, !dbg !1000
  %5 = shl i32 %4, 24, !dbg !1001
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1002
  %7 = load i8, i8* %6, align 1, !dbg !1002
  %8 = zext i8 %7 to i32, !dbg !1003
  %9 = shl i32 %8, 16, !dbg !1004
  %10 = or i32 %5, %9, !dbg !1005
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1006
  %12 = load i8, i8* %11, align 1, !dbg !1006
  %13 = zext i8 %12 to i32, !dbg !1007
  %14 = shl i32 %13, 8, !dbg !1008
  %15 = or i32 %10, %14, !dbg !1009
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1010
  %17 = load i8, i8* %16, align 1, !dbg !1010
  %18 = zext i8 %17 to i32, !dbg !1011
  %19 = or i32 %15, %18, !dbg !1012
  ret i32 %19, !dbg !1013
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_rev_skey(i32* %0) #0 !dbg !1014 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1017, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i32 0, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %2, !dbg !1020

2:                                                ; preds = %33, %1
  %.0 = phi i32 [ 0, %1 ], [ %34, %33 ], !dbg !1022
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1019, metadata !DIExpression()), !dbg !1018
  %3 = icmp slt i32 %.0, 16, !dbg !1023
  br i1 %3, label %4, label %35, !dbg !1025

4:                                                ; preds = %2
  %5 = add nsw i32 %.0, 0, !dbg !1026
  %6 = sext i32 %5 to i64, !dbg !1028
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !1028
  %8 = load i32, i32* %7, align 4, !dbg !1028
  call void @llvm.dbg.value(metadata i32 %8, metadata !1029, metadata !DIExpression()), !dbg !1030
  %9 = sub nsw i32 30, %.0, !dbg !1031
  %10 = sext i32 %9 to i64, !dbg !1032
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !1032
  %12 = load i32, i32* %11, align 4, !dbg !1032
  %13 = add nsw i32 %.0, 0, !dbg !1033
  %14 = sext i32 %13 to i64, !dbg !1034
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !1034
  store i32 %12, i32* %15, align 4, !dbg !1035
  %16 = sub nsw i32 30, %.0, !dbg !1036
  %17 = sext i32 %16 to i64, !dbg !1037
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !1037
  store i32 %8, i32* %18, align 4, !dbg !1038
  %19 = add nsw i32 %.0, 1, !dbg !1039
  %20 = sext i32 %19 to i64, !dbg !1040
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !1040
  %22 = load i32, i32* %21, align 4, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %22, metadata !1029, metadata !DIExpression()), !dbg !1030
  %23 = sub nsw i32 31, %.0, !dbg !1041
  %24 = sext i32 %23 to i64, !dbg !1042
  %25 = getelementptr inbounds i32, i32* %0, i64 %24, !dbg !1042
  %26 = load i32, i32* %25, align 4, !dbg !1042
  %27 = add nsw i32 %.0, 1, !dbg !1043
  %28 = sext i32 %27 to i64, !dbg !1044
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !1044
  store i32 %26, i32* %29, align 4, !dbg !1045
  %30 = sub nsw i32 31, %.0, !dbg !1046
  %31 = sext i32 %30 to i64, !dbg !1047
  %32 = getelementptr inbounds i32, i32* %0, i64 %31, !dbg !1047
  store i32 %22, i32* %32, align 4, !dbg !1048
  br label %33, !dbg !1049

33:                                               ; preds = %4
  %34 = add nsw i32 %.0, 2, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %34, metadata !1019, metadata !DIExpression()), !dbg !1018
  br label %2, !dbg !1051, !llvm.loop !1052

35:                                               ; preds = %2
  ret void, !dbg !1054
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
!25 = distinct !DIGlobalVariable(name: "br_des_ct_cbcdec_vtable", scope: !26, file: !27, line: 79, type: !29, isLocal: false, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !28, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../BearSSL/src/symcipher/des_ct_cbcdec.c", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!28 = !{!24}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcdec_class", file: !31, line: 449, baseType: !32)
!31 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcdec_class_", file: !31, line: 450, size: 256, elements: !33)
!33 = !{!34, !38, !39, !40, !48}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !32, file: !31, line: 455, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !32, file: !31, line: 460, baseType: !13, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !32, file: !31, line: 466, baseType: !13, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !32, file: !31, line: 479, baseType: !41, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !46, !35}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !32, file: !31, line: 495, baseType: !49, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !54, !54, !35}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "cbc_decrypt.c", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "../BearSSL/src/symcipher/des_support.c", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!59 = !{!9, !6}
!60 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!61 = !{i32 7, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = distinct !DISubprogram(name: "cbc_decrypt_wrapper", scope: !56, file: !56, line: 3, type: !65, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !54, !54, !35}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_des_ct_cbcdec_keys", file: !31, line: 2338, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 2331, size: 3200, elements: !71)
!71 = !{!72, !92, !96}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !70, file: !31, line: 2333, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcdec_class", file: !31, line: 449, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcdec_class_", file: !31, line: 450, size: 256, elements: !77)
!77 = !{!78, !79, !80, !81, !86}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !76, file: !31, line: 455, baseType: !35, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !76, file: !31, line: 460, baseType: !13, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !76, file: !31, line: 466, baseType: !13, size: 32, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !76, file: !31, line: 479, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85, !46, !35}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !76, file: !31, line: 495, baseType: !87, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !90, !54, !54, !35}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !70, file: !31, line: 2335, baseType: !93, size: 3072, offset: 64)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3072, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !70, file: !31, line: 2336, baseType: !13, size: 32, offset: 3136)
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
!119 = distinct !DISubprogram(name: "vfct_tmp", scope: !56, file: !56, line: 27, type: !120, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122, !67, !54, !54, !35}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!123 = !DILocalVariable(name: "skey", arg: 1, scope: !119, file: !56, line: 27, type: !122)
!124 = !DILocation(line: 0, scope: !119)
!125 = !DILocalVariable(name: "ctx", arg: 2, scope: !119, file: !56, line: 27, type: !67)
!126 = !DILocalVariable(name: "iv", arg: 3, scope: !119, file: !56, line: 27, type: !54)
!127 = !DILocalVariable(name: "data", arg: 4, scope: !119, file: !56, line: 27, type: !54)
!128 = !DILocalVariable(name: "len", arg: 5, scope: !119, file: !56, line: 27, type: !35)
!129 = !DILocation(line: 28, column: 2, scope: !119)
!130 = !DILocation(line: 29, column: 1, scope: !119)
!131 = distinct !DISubprogram(name: "cbc_decrypt_wrapper_t", scope: !56, file: !56, line: 31, type: !132, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!132 = !DISubroutineType(types: !133)
!133 = !{null}
!134 = !DILocation(line: 32, column: 37, scope: !131)
!135 = !DILocalVariable(name: "ctx", scope: !131, file: !56, line: 32, type: !67)
!136 = !DILocation(line: 0, scope: !131)
!137 = !DILocation(line: 33, column: 13, scope: !131)
!138 = !DILocalVariable(name: "iv", scope: !131, file: !56, line: 33, type: !54)
!139 = !DILocation(line: 34, column: 15, scope: !131)
!140 = !DILocalVariable(name: "data", scope: !131, file: !56, line: 34, type: !54)
!141 = !DILocalVariable(name: "len", scope: !131, file: !56, line: 35, type: !35)
!142 = !DILocation(line: 36, column: 24, scope: !131)
!143 = !DILocation(line: 36, column: 19, scope: !131)
!144 = !DILocalVariable(name: "skey", scope: !131, file: !56, line: 36, type: !122)
!145 = !DILocation(line: 37, column: 2, scope: !131)
!146 = !DILocation(line: 38, column: 1, scope: !131)
!147 = distinct !DISubprogram(name: "br_des_ct_keysched", scope: !3, file: !3, line: 158, type: !148, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!148 = !DISubroutineType(types: !149)
!149 = !{!13, !122, !46, !35}
!150 = !DILocalVariable(name: "skey", arg: 1, scope: !147, file: !3, line: 158, type: !122)
!151 = !DILocation(line: 0, scope: !147)
!152 = !DILocalVariable(name: "key", arg: 2, scope: !147, file: !3, line: 158, type: !46)
!153 = !DILocalVariable(name: "key_len", arg: 3, scope: !147, file: !3, line: 158, type: !35)
!154 = !DILocation(line: 160, column: 2, scope: !147)
!155 = !DILocation(line: 162, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !147, file: !3, line: 160, column: 19)
!157 = !DILocation(line: 163, column: 3, scope: !156)
!158 = !DILocation(line: 165, column: 3, scope: !156)
!159 = !DILocation(line: 166, column: 22, scope: !156)
!160 = !DILocation(line: 166, column: 55, scope: !156)
!161 = !DILocation(line: 166, column: 3, scope: !156)
!162 = !DILocation(line: 167, column: 24, scope: !156)
!163 = !DILocation(line: 167, column: 3, scope: !156)
!164 = !DILocation(line: 168, column: 15, scope: !156)
!165 = !DILocation(line: 168, column: 3, scope: !156)
!166 = !DILocation(line: 169, column: 3, scope: !156)
!167 = !DILocation(line: 171, column: 3, scope: !156)
!168 = !DILocation(line: 172, column: 22, scope: !156)
!169 = !DILocation(line: 172, column: 55, scope: !156)
!170 = !DILocation(line: 172, column: 3, scope: !156)
!171 = !DILocation(line: 173, column: 24, scope: !156)
!172 = !DILocation(line: 173, column: 3, scope: !156)
!173 = !DILocation(line: 174, column: 22, scope: !156)
!174 = !DILocation(line: 174, column: 55, scope: !156)
!175 = !DILocation(line: 174, column: 3, scope: !156)
!176 = !DILocation(line: 175, column: 3, scope: !156)
!177 = !DILocation(line: 0, scope: !156)
!178 = !DILocation(line: 177, column: 1, scope: !147)
!179 = distinct !DISubprogram(name: "keysched_unit", scope: !3, file: !3, line: 73, type: !180, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !122, !46}
!182 = !DILocalVariable(name: "skey", arg: 1, scope: !179, file: !3, line: 73, type: !122)
!183 = !DILocation(line: 0, scope: !179)
!184 = !DILocalVariable(name: "key", arg: 2, scope: !179, file: !3, line: 73, type: !46)
!185 = !DILocation(line: 77, column: 2, scope: !179)
!186 = !DILocalVariable(name: "i", scope: !179, file: !3, line: 75, type: !187)
!187 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!188 = !DILocation(line: 82, column: 7, scope: !189)
!189 = distinct !DILexicalBlock(scope: !179, file: !3, line: 82, column: 2)
!190 = !DILocation(line: 0, scope: !189)
!191 = !DILocation(line: 82, column: 16, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 82, column: 2)
!193 = !DILocation(line: 82, column: 2, scope: !189)
!194 = !DILocation(line: 86, column: 16, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !3, line: 82, column: 28)
!196 = !DILocation(line: 86, column: 22, scope: !195)
!197 = !DILocation(line: 86, column: 8, scope: !195)
!198 = !DILocalVariable(name: "kl", scope: !195, file: !3, line: 83, type: !9)
!199 = !DILocation(line: 0, scope: !195)
!200 = !DILocation(line: 87, column: 16, scope: !195)
!201 = !DILocation(line: 87, column: 22, scope: !195)
!202 = !DILocation(line: 87, column: 8, scope: !195)
!203 = !DILocalVariable(name: "kr", scope: !195, file: !3, line: 83, type: !9)
!204 = !DILocalVariable(name: "sk0", scope: !195, file: !3, line: 83, type: !9)
!205 = !DILocalVariable(name: "sk1", scope: !195, file: !3, line: 83, type: !9)
!206 = !DILocalVariable(name: "j", scope: !195, file: !3, line: 84, type: !187)
!207 = !DILocation(line: 90, column: 8, scope: !208)
!208 = distinct !DILexicalBlock(scope: !195, file: !3, line: 90, column: 3)
!209 = !DILocation(line: 0, scope: !208)
!210 = !DILocation(line: 90, column: 17, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !3, line: 90, column: 3)
!212 = !DILocation(line: 90, column: 3, scope: !208)
!213 = !DILocation(line: 91, column: 8, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !3, line: 90, column: 29)
!215 = !DILocation(line: 92, column: 8, scope: !214)
!216 = !DILocation(line: 93, column: 19, scope: !214)
!217 = !DILocation(line: 93, column: 16, scope: !214)
!218 = !DILocation(line: 93, column: 27, scope: !214)
!219 = !DILocation(line: 93, column: 42, scope: !214)
!220 = !DILocation(line: 93, column: 8, scope: !214)
!221 = !DILocation(line: 94, column: 18, scope: !214)
!222 = !DILocation(line: 94, column: 15, scope: !214)
!223 = !DILocation(line: 94, column: 26, scope: !214)
!224 = !DILocation(line: 94, column: 8, scope: !214)
!225 = !DILocation(line: 95, column: 19, scope: !214)
!226 = !DILocation(line: 95, column: 16, scope: !214)
!227 = !DILocation(line: 95, column: 27, scope: !214)
!228 = !DILocation(line: 95, column: 42, scope: !214)
!229 = !DILocation(line: 95, column: 8, scope: !214)
!230 = !DILocation(line: 96, column: 18, scope: !214)
!231 = !DILocation(line: 96, column: 15, scope: !214)
!232 = !DILocation(line: 96, column: 26, scope: !214)
!233 = !DILocation(line: 96, column: 8, scope: !214)
!234 = !DILocation(line: 97, column: 3, scope: !214)
!235 = !DILocation(line: 90, column: 25, scope: !211)
!236 = !DILocation(line: 90, column: 3, scope: !211)
!237 = distinct !{!237, !212, !238, !239}
!238 = !DILocation(line: 97, column: 3, scope: !208)
!239 = !{!"llvm.loop.mustprogress"}
!240 = !DILocation(line: 99, column: 11, scope: !195)
!241 = !DILocation(line: 99, column: 17, scope: !195)
!242 = !DILocation(line: 99, column: 3, scope: !195)
!243 = !DILocation(line: 99, column: 22, scope: !195)
!244 = !DILocation(line: 100, column: 11, scope: !195)
!245 = !DILocation(line: 100, column: 17, scope: !195)
!246 = !DILocation(line: 100, column: 3, scope: !195)
!247 = !DILocation(line: 100, column: 22, scope: !195)
!248 = !DILocation(line: 101, column: 2, scope: !195)
!249 = !DILocation(line: 82, column: 24, scope: !192)
!250 = !DILocation(line: 82, column: 2, scope: !192)
!251 = distinct !{!251, !193, !252, !239}
!252 = !DILocation(line: 101, column: 2, scope: !189)
!253 = !DILocation(line: 154, column: 1, scope: !179)
!254 = distinct !DISubprogram(name: "br_des_ct_process_block", scope: !3, file: !3, line: 368, type: !255, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !13, !257, !54}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!259 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !254, file: !3, line: 368, type: !13)
!260 = !DILocation(line: 0, scope: !254)
!261 = !DILocalVariable(name: "sk_exp", arg: 2, scope: !254, file: !3, line: 369, type: !257)
!262 = !DILocalVariable(name: "block", arg: 3, scope: !254, file: !3, line: 369, type: !54)
!263 = !DILocalVariable(name: "l", scope: !254, file: !3, line: 372, type: !9)
!264 = !DILocation(line: 372, column: 11, scope: !254)
!265 = !DILocalVariable(name: "r", scope: !254, file: !3, line: 372, type: !9)
!266 = !DILocation(line: 372, column: 14, scope: !254)
!267 = !DILocalVariable(name: "buf", scope: !254, file: !3, line: 371, type: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!269 = !DILocation(line: 375, column: 6, scope: !254)
!270 = !DILocation(line: 375, column: 4, scope: !254)
!271 = !DILocation(line: 376, column: 21, scope: !254)
!272 = !DILocation(line: 376, column: 6, scope: !254)
!273 = !DILocation(line: 376, column: 4, scope: !254)
!274 = !DILocation(line: 377, column: 2, scope: !254)
!275 = !DILocation(line: 378, column: 2, scope: !254)
!276 = !DILocation(line: 378, column: 20, scope: !254)
!277 = !DILocation(line: 378, column: 23, scope: !254)
!278 = !DILocation(line: 379, column: 3, scope: !279)
!279 = distinct !DILexicalBlock(scope: !254, file: !3, line: 378, column: 28)
!280 = !DILocation(line: 380, column: 10, scope: !279)
!281 = distinct !{!281, !275, !282, !239}
!282 = !DILocation(line: 381, column: 2, scope: !254)
!283 = !DILocation(line: 382, column: 2, scope: !254)
!284 = !DILocation(line: 383, column: 18, scope: !254)
!285 = !DILocation(line: 383, column: 2, scope: !254)
!286 = !DILocation(line: 384, column: 17, scope: !254)
!287 = !DILocation(line: 384, column: 22, scope: !254)
!288 = !DILocation(line: 384, column: 2, scope: !254)
!289 = !DILocation(line: 385, column: 1, scope: !254)
!290 = distinct !DISubprogram(name: "br_dec32be", scope: !291, file: !291, line: 590, type: !292, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!291 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!292 = !DISubroutineType(types: !293)
!293 = !{!9, !46}
!294 = !DILocalVariable(name: "src", arg: 1, scope: !290, file: !291, line: 590, type: !46)
!295 = !DILocation(line: 0, scope: !290)
!296 = !DILocalVariable(name: "buf", scope: !290, file: !291, line: 595, type: !6)
!297 = !DILocation(line: 598, column: 20, scope: !290)
!298 = !DILocation(line: 598, column: 10, scope: !290)
!299 = !DILocation(line: 598, column: 27, scope: !290)
!300 = !DILocation(line: 599, column: 16, scope: !290)
!301 = !DILocation(line: 599, column: 6, scope: !290)
!302 = !DILocation(line: 599, column: 23, scope: !290)
!303 = !DILocation(line: 599, column: 3, scope: !290)
!304 = !DILocation(line: 600, column: 16, scope: !290)
!305 = !DILocation(line: 600, column: 6, scope: !290)
!306 = !DILocation(line: 600, column: 23, scope: !290)
!307 = !DILocation(line: 600, column: 3, scope: !290)
!308 = !DILocation(line: 601, column: 15, scope: !290)
!309 = !DILocation(line: 601, column: 5, scope: !290)
!310 = !DILocation(line: 601, column: 3, scope: !290)
!311 = !DILocation(line: 598, column: 2, scope: !290)
!312 = distinct !DISubprogram(name: "process_block_unit", scope: !3, file: !3, line: 347, type: !313, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !122, !122, !257}
!315 = !DILocalVariable(name: "pl", arg: 1, scope: !312, file: !3, line: 347, type: !122)
!316 = !DILocation(line: 0, scope: !312)
!317 = !DILocalVariable(name: "pr", arg: 2, scope: !312, file: !3, line: 347, type: !122)
!318 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !312, file: !3, line: 347, type: !257)
!319 = !DILocation(line: 352, column: 6, scope: !312)
!320 = !DILocalVariable(name: "l", scope: !312, file: !3, line: 350, type: !9)
!321 = !DILocation(line: 353, column: 6, scope: !312)
!322 = !DILocalVariable(name: "r", scope: !312, file: !3, line: 350, type: !9)
!323 = !DILocalVariable(name: "i", scope: !312, file: !3, line: 349, type: !187)
!324 = !DILocation(line: 354, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !312, file: !3, line: 354, column: 2)
!326 = !DILocation(line: 0, scope: !325)
!327 = !DILocation(line: 354, column: 16, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !3, line: 354, column: 2)
!329 = !DILocation(line: 354, column: 2, scope: !325)
!330 = !DILocation(line: 357, column: 11, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !3, line: 354, column: 28)
!332 = !DILocation(line: 357, column: 9, scope: !331)
!333 = !DILocalVariable(name: "t", scope: !331, file: !3, line: 355, type: !9)
!334 = !DILocation(line: 0, scope: !331)
!335 = !DILocation(line: 360, column: 10, scope: !331)
!336 = !DILocation(line: 361, column: 2, scope: !331)
!337 = !DILocation(line: 354, column: 24, scope: !328)
!338 = !DILocation(line: 354, column: 2, scope: !328)
!339 = distinct !{!339, !329, !340, !239}
!340 = !DILocation(line: 361, column: 2, scope: !325)
!341 = !DILocation(line: 362, column: 6, scope: !312)
!342 = !DILocation(line: 363, column: 6, scope: !312)
!343 = !DILocation(line: 364, column: 1, scope: !312)
!344 = distinct !DISubprogram(name: "br_enc32be", scope: !291, file: !291, line: 558, type: !345, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !54, !9}
!347 = !DILocalVariable(name: "dst", arg: 1, scope: !344, file: !291, line: 558, type: !54)
!348 = !DILocation(line: 0, scope: !344)
!349 = !DILocalVariable(name: "x", arg: 2, scope: !344, file: !291, line: 558, type: !9)
!350 = !DILocalVariable(name: "buf", scope: !344, file: !291, line: 563, type: !268)
!351 = !DILocation(line: 566, column: 29, scope: !344)
!352 = !DILocation(line: 566, column: 11, scope: !344)
!353 = !DILocation(line: 566, column: 2, scope: !344)
!354 = !DILocation(line: 566, column: 9, scope: !344)
!355 = !DILocation(line: 567, column: 29, scope: !344)
!356 = !DILocation(line: 567, column: 11, scope: !344)
!357 = !DILocation(line: 567, column: 2, scope: !344)
!358 = !DILocation(line: 567, column: 9, scope: !344)
!359 = !DILocation(line: 568, column: 29, scope: !344)
!360 = !DILocation(line: 568, column: 11, scope: !344)
!361 = !DILocation(line: 568, column: 2, scope: !344)
!362 = !DILocation(line: 568, column: 9, scope: !344)
!363 = !DILocation(line: 569, column: 11, scope: !344)
!364 = !DILocation(line: 569, column: 2, scope: !344)
!365 = !DILocation(line: 569, column: 9, scope: !344)
!366 = !DILocation(line: 571, column: 1, scope: !344)
!367 = distinct !DISubprogram(name: "Fconf", scope: !3, file: !3, line: 184, type: !368, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!368 = !DISubroutineType(types: !369)
!369 = !{!9, !9, !257}
!370 = !DILocalVariable(name: "r0", arg: 1, scope: !367, file: !3, line: 184, type: !9)
!371 = !DILocation(line: 0, scope: !367)
!372 = !DILocalVariable(name: "sk", arg: 2, scope: !367, file: !3, line: 184, type: !257)
!373 = !DILocation(line: 214, column: 10, scope: !367)
!374 = !DILocalVariable(name: "x1", scope: !367, file: !3, line: 205, type: !9)
!375 = !DILocation(line: 215, column: 11, scope: !367)
!376 = !DILocation(line: 215, column: 17, scope: !367)
!377 = !DILocalVariable(name: "x2", scope: !367, file: !3, line: 205, type: !9)
!378 = !DILocation(line: 216, column: 11, scope: !367)
!379 = !DILocation(line: 216, column: 17, scope: !367)
!380 = !DILocalVariable(name: "x3", scope: !367, file: !3, line: 205, type: !9)
!381 = !DILocation(line: 217, column: 11, scope: !367)
!382 = !DILocation(line: 217, column: 17, scope: !367)
!383 = !DILocalVariable(name: "x4", scope: !367, file: !3, line: 205, type: !9)
!384 = !DILocation(line: 218, column: 11, scope: !367)
!385 = !DILocation(line: 218, column: 17, scope: !367)
!386 = !DILocation(line: 219, column: 11, scope: !367)
!387 = !DILocation(line: 219, column: 17, scope: !367)
!388 = !DILocation(line: 220, column: 11, scope: !367)
!389 = !DILocation(line: 220, column: 17, scope: !367)
!390 = !DILocation(line: 221, column: 11, scope: !367)
!391 = !DILocation(line: 221, column: 17, scope: !367)
!392 = !DILocation(line: 222, column: 11, scope: !367)
!393 = !DILocation(line: 222, column: 23, scope: !367)
!394 = !DILocation(line: 222, column: 17, scope: !367)
!395 = !DILocalVariable(name: "x0", scope: !367, file: !3, line: 205, type: !9)
!396 = !DILocation(line: 223, column: 11, scope: !367)
!397 = !DILocation(line: 223, column: 23, scope: !367)
!398 = !DILocation(line: 223, column: 17, scope: !367)
!399 = !DILocalVariable(name: "x5", scope: !367, file: !3, line: 205, type: !9)
!400 = !DILocation(line: 228, column: 8, scope: !367)
!401 = !DILocation(line: 228, column: 5, scope: !367)
!402 = !DILocation(line: 229, column: 8, scope: !367)
!403 = !DILocation(line: 229, column: 5, scope: !367)
!404 = !DILocation(line: 230, column: 8, scope: !367)
!405 = !DILocation(line: 230, column: 5, scope: !367)
!406 = !DILocation(line: 231, column: 8, scope: !367)
!407 = !DILocation(line: 231, column: 5, scope: !367)
!408 = !DILocation(line: 232, column: 8, scope: !367)
!409 = !DILocation(line: 232, column: 5, scope: !367)
!410 = !DILocation(line: 233, column: 8, scope: !367)
!411 = !DILocation(line: 233, column: 5, scope: !367)
!412 = !DILocation(line: 243, column: 34, scope: !367)
!413 = !DILocation(line: 243, column: 28, scope: !367)
!414 = !DILocalVariable(name: "y0", scope: !367, file: !3, line: 206, type: !9)
!415 = !DILocation(line: 244, column: 34, scope: !367)
!416 = !DILocation(line: 244, column: 28, scope: !367)
!417 = !DILocalVariable(name: "y1", scope: !367, file: !3, line: 206, type: !9)
!418 = !DILocation(line: 245, column: 34, scope: !367)
!419 = !DILocation(line: 245, column: 28, scope: !367)
!420 = !DILocalVariable(name: "y2", scope: !367, file: !3, line: 206, type: !9)
!421 = !DILocation(line: 246, column: 34, scope: !367)
!422 = !DILocation(line: 246, column: 28, scope: !367)
!423 = !DILocalVariable(name: "y3", scope: !367, file: !3, line: 206, type: !9)
!424 = !DILocation(line: 247, column: 34, scope: !367)
!425 = !DILocation(line: 247, column: 28, scope: !367)
!426 = !DILocalVariable(name: "y4", scope: !367, file: !3, line: 206, type: !9)
!427 = !DILocation(line: 248, column: 34, scope: !367)
!428 = !DILocation(line: 248, column: 28, scope: !367)
!429 = !DILocalVariable(name: "y5", scope: !367, file: !3, line: 206, type: !9)
!430 = !DILocation(line: 249, column: 34, scope: !367)
!431 = !DILocation(line: 249, column: 28, scope: !367)
!432 = !DILocalVariable(name: "y6", scope: !367, file: !3, line: 206, type: !9)
!433 = !DILocation(line: 250, column: 34, scope: !367)
!434 = !DILocation(line: 250, column: 28, scope: !367)
!435 = !DILocalVariable(name: "y7", scope: !367, file: !3, line: 206, type: !9)
!436 = !DILocation(line: 251, column: 34, scope: !367)
!437 = !DILocation(line: 251, column: 28, scope: !367)
!438 = !DILocalVariable(name: "y8", scope: !367, file: !3, line: 206, type: !9)
!439 = !DILocation(line: 252, column: 34, scope: !367)
!440 = !DILocation(line: 252, column: 28, scope: !367)
!441 = !DILocalVariable(name: "y9", scope: !367, file: !3, line: 206, type: !9)
!442 = !DILocation(line: 253, column: 35, scope: !367)
!443 = !DILocation(line: 253, column: 29, scope: !367)
!444 = !DILocalVariable(name: "y10", scope: !367, file: !3, line: 207, type: !9)
!445 = !DILocation(line: 254, column: 35, scope: !367)
!446 = !DILocation(line: 254, column: 29, scope: !367)
!447 = !DILocalVariable(name: "y11", scope: !367, file: !3, line: 207, type: !9)
!448 = !DILocation(line: 255, column: 35, scope: !367)
!449 = !DILocation(line: 255, column: 29, scope: !367)
!450 = !DILocalVariable(name: "y12", scope: !367, file: !3, line: 207, type: !9)
!451 = !DILocation(line: 256, column: 35, scope: !367)
!452 = !DILocation(line: 256, column: 29, scope: !367)
!453 = !DILocalVariable(name: "y13", scope: !367, file: !3, line: 207, type: !9)
!454 = !DILocation(line: 257, column: 35, scope: !367)
!455 = !DILocation(line: 257, column: 29, scope: !367)
!456 = !DILocalVariable(name: "y14", scope: !367, file: !3, line: 207, type: !9)
!457 = !DILocation(line: 259, column: 35, scope: !367)
!458 = !DILocation(line: 259, column: 29, scope: !367)
!459 = !DILocalVariable(name: "y16", scope: !367, file: !3, line: 207, type: !9)
!460 = !DILocation(line: 260, column: 35, scope: !367)
!461 = !DILocation(line: 260, column: 29, scope: !367)
!462 = !DILocalVariable(name: "y17", scope: !367, file: !3, line: 207, type: !9)
!463 = !DILocation(line: 261, column: 35, scope: !367)
!464 = !DILocation(line: 261, column: 29, scope: !367)
!465 = !DILocalVariable(name: "y18", scope: !367, file: !3, line: 207, type: !9)
!466 = !DILocation(line: 262, column: 35, scope: !367)
!467 = !DILocation(line: 262, column: 29, scope: !367)
!468 = !DILocalVariable(name: "y19", scope: !367, file: !3, line: 207, type: !9)
!469 = !DILocation(line: 263, column: 35, scope: !367)
!470 = !DILocation(line: 263, column: 29, scope: !367)
!471 = !DILocalVariable(name: "y20", scope: !367, file: !3, line: 208, type: !9)
!472 = !DILocation(line: 264, column: 35, scope: !367)
!473 = !DILocation(line: 264, column: 29, scope: !367)
!474 = !DILocalVariable(name: "y21", scope: !367, file: !3, line: 208, type: !9)
!475 = !DILocation(line: 265, column: 35, scope: !367)
!476 = !DILocation(line: 265, column: 29, scope: !367)
!477 = !DILocalVariable(name: "y22", scope: !367, file: !3, line: 208, type: !9)
!478 = !DILocation(line: 266, column: 35, scope: !367)
!479 = !DILocation(line: 266, column: 29, scope: !367)
!480 = !DILocalVariable(name: "y23", scope: !367, file: !3, line: 208, type: !9)
!481 = !DILocation(line: 267, column: 35, scope: !367)
!482 = !DILocation(line: 267, column: 29, scope: !367)
!483 = !DILocalVariable(name: "y24", scope: !367, file: !3, line: 208, type: !9)
!484 = !DILocation(line: 268, column: 35, scope: !367)
!485 = !DILocation(line: 268, column: 29, scope: !367)
!486 = !DILocalVariable(name: "y25", scope: !367, file: !3, line: 208, type: !9)
!487 = !DILocation(line: 269, column: 35, scope: !367)
!488 = !DILocation(line: 269, column: 29, scope: !367)
!489 = !DILocalVariable(name: "y26", scope: !367, file: !3, line: 208, type: !9)
!490 = !DILocation(line: 270, column: 35, scope: !367)
!491 = !DILocation(line: 270, column: 29, scope: !367)
!492 = !DILocalVariable(name: "y27", scope: !367, file: !3, line: 208, type: !9)
!493 = !DILocation(line: 271, column: 35, scope: !367)
!494 = !DILocation(line: 271, column: 29, scope: !367)
!495 = !DILocalVariable(name: "y28", scope: !367, file: !3, line: 208, type: !9)
!496 = !DILocation(line: 272, column: 35, scope: !367)
!497 = !DILocation(line: 272, column: 29, scope: !367)
!498 = !DILocalVariable(name: "y29", scope: !367, file: !3, line: 208, type: !9)
!499 = !DILocation(line: 273, column: 35, scope: !367)
!500 = !DILocation(line: 273, column: 29, scope: !367)
!501 = !DILocalVariable(name: "y30", scope: !367, file: !3, line: 209, type: !9)
!502 = !DILocation(line: 276, column: 16, scope: !367)
!503 = !DILocation(line: 276, column: 10, scope: !367)
!504 = !DILocation(line: 277, column: 16, scope: !367)
!505 = !DILocation(line: 277, column: 10, scope: !367)
!506 = !DILocation(line: 278, column: 16, scope: !367)
!507 = !DILocation(line: 278, column: 10, scope: !367)
!508 = !DILocation(line: 279, column: 16, scope: !367)
!509 = !DILocation(line: 279, column: 10, scope: !367)
!510 = !DILocation(line: 280, column: 16, scope: !367)
!511 = !DILocation(line: 280, column: 10, scope: !367)
!512 = !DILocation(line: 281, column: 17, scope: !367)
!513 = !DILocation(line: 281, column: 11, scope: !367)
!514 = !DILocation(line: 282, column: 17, scope: !367)
!515 = !DILocation(line: 282, column: 11, scope: !367)
!516 = !DILocation(line: 284, column: 17, scope: !367)
!517 = !DILocation(line: 284, column: 11, scope: !367)
!518 = !DILocation(line: 285, column: 17, scope: !367)
!519 = !DILocation(line: 285, column: 11, scope: !367)
!520 = !DILocation(line: 286, column: 18, scope: !367)
!521 = !DILocation(line: 286, column: 12, scope: !367)
!522 = !DILocation(line: 287, column: 18, scope: !367)
!523 = !DILocation(line: 287, column: 12, scope: !367)
!524 = !DILocation(line: 288, column: 18, scope: !367)
!525 = !DILocation(line: 288, column: 12, scope: !367)
!526 = !DILocation(line: 289, column: 18, scope: !367)
!527 = !DILocation(line: 289, column: 12, scope: !367)
!528 = !DILocation(line: 290, column: 18, scope: !367)
!529 = !DILocation(line: 290, column: 12, scope: !367)
!530 = !DILocalVariable(name: "y15", scope: !367, file: !3, line: 207, type: !9)
!531 = !DILocation(line: 293, column: 16, scope: !367)
!532 = !DILocation(line: 293, column: 10, scope: !367)
!533 = !DILocation(line: 294, column: 16, scope: !367)
!534 = !DILocation(line: 294, column: 10, scope: !367)
!535 = !DILocation(line: 295, column: 16, scope: !367)
!536 = !DILocation(line: 295, column: 10, scope: !367)
!537 = !DILocation(line: 296, column: 16, scope: !367)
!538 = !DILocation(line: 296, column: 10, scope: !367)
!539 = !DILocation(line: 297, column: 16, scope: !367)
!540 = !DILocation(line: 297, column: 10, scope: !367)
!541 = !DILocation(line: 298, column: 17, scope: !367)
!542 = !DILocation(line: 298, column: 11, scope: !367)
!543 = !DILocation(line: 299, column: 17, scope: !367)
!544 = !DILocation(line: 299, column: 11, scope: !367)
!545 = !DILocation(line: 300, column: 17, scope: !367)
!546 = !DILocation(line: 300, column: 11, scope: !367)
!547 = !DILocation(line: 302, column: 16, scope: !367)
!548 = !DILocation(line: 302, column: 10, scope: !367)
!549 = !DILocation(line: 303, column: 16, scope: !367)
!550 = !DILocation(line: 303, column: 10, scope: !367)
!551 = !DILocation(line: 304, column: 16, scope: !367)
!552 = !DILocation(line: 304, column: 10, scope: !367)
!553 = !DILocation(line: 305, column: 16, scope: !367)
!554 = !DILocation(line: 305, column: 10, scope: !367)
!555 = !DILocation(line: 307, column: 16, scope: !367)
!556 = !DILocation(line: 307, column: 10, scope: !367)
!557 = !DILocation(line: 308, column: 16, scope: !367)
!558 = !DILocation(line: 308, column: 10, scope: !367)
!559 = !DILocation(line: 310, column: 16, scope: !367)
!560 = !DILocation(line: 310, column: 10, scope: !367)
!561 = !DILocation(line: 320, column: 11, scope: !367)
!562 = !DILocation(line: 320, column: 35, scope: !367)
!563 = !DILocalVariable(name: "z0", scope: !367, file: !3, line: 205, type: !9)
!564 = !DILocation(line: 321, column: 12, scope: !367)
!565 = !DILocation(line: 321, column: 36, scope: !367)
!566 = !DILocation(line: 321, column: 5, scope: !367)
!567 = !DILocation(line: 322, column: 16, scope: !367)
!568 = !DILocation(line: 322, column: 8, scope: !367)
!569 = !DILocation(line: 322, column: 5, scope: !367)
!570 = !DILocation(line: 323, column: 12, scope: !367)
!571 = !DILocation(line: 323, column: 36, scope: !367)
!572 = !DILocation(line: 323, column: 5, scope: !367)
!573 = !DILocation(line: 324, column: 12, scope: !367)
!574 = !DILocation(line: 324, column: 36, scope: !367)
!575 = !DILocation(line: 324, column: 5, scope: !367)
!576 = !DILocation(line: 325, column: 12, scope: !367)
!577 = !DILocation(line: 325, column: 36, scope: !367)
!578 = !DILocation(line: 325, column: 5, scope: !367)
!579 = !DILocation(line: 326, column: 12, scope: !367)
!580 = !DILocation(line: 326, column: 36, scope: !367)
!581 = !DILocation(line: 326, column: 5, scope: !367)
!582 = !DILocation(line: 327, column: 16, scope: !367)
!583 = !DILocation(line: 327, column: 8, scope: !367)
!584 = !DILocation(line: 327, column: 5, scope: !367)
!585 = !DILocation(line: 328, column: 12, scope: !367)
!586 = !DILocation(line: 328, column: 36, scope: !367)
!587 = !DILocation(line: 328, column: 5, scope: !367)
!588 = !DILocation(line: 329, column: 12, scope: !367)
!589 = !DILocation(line: 329, column: 36, scope: !367)
!590 = !DILocation(line: 329, column: 5, scope: !367)
!591 = !DILocation(line: 330, column: 12, scope: !367)
!592 = !DILocation(line: 330, column: 36, scope: !367)
!593 = !DILocation(line: 330, column: 5, scope: !367)
!594 = !DILocation(line: 331, column: 12, scope: !367)
!595 = !DILocation(line: 331, column: 36, scope: !367)
!596 = !DILocation(line: 331, column: 5, scope: !367)
!597 = !DILocation(line: 332, column: 16, scope: !367)
!598 = !DILocation(line: 332, column: 8, scope: !367)
!599 = !DILocation(line: 332, column: 5, scope: !367)
!600 = !DILocation(line: 333, column: 12, scope: !367)
!601 = !DILocation(line: 333, column: 36, scope: !367)
!602 = !DILocation(line: 333, column: 5, scope: !367)
!603 = !DILocation(line: 334, column: 12, scope: !367)
!604 = !DILocation(line: 334, column: 36, scope: !367)
!605 = !DILocation(line: 334, column: 5, scope: !367)
!606 = !DILocation(line: 335, column: 12, scope: !367)
!607 = !DILocation(line: 335, column: 36, scope: !367)
!608 = !DILocation(line: 335, column: 5, scope: !367)
!609 = !DILocation(line: 336, column: 16, scope: !367)
!610 = !DILocation(line: 336, column: 8, scope: !367)
!611 = !DILocation(line: 336, column: 5, scope: !367)
!612 = !DILocation(line: 337, column: 12, scope: !367)
!613 = !DILocation(line: 337, column: 36, scope: !367)
!614 = !DILocation(line: 337, column: 5, scope: !367)
!615 = !DILocation(line: 338, column: 12, scope: !367)
!616 = !DILocation(line: 338, column: 36, scope: !367)
!617 = !DILocation(line: 338, column: 5, scope: !367)
!618 = !DILocation(line: 339, column: 2, scope: !367)
!619 = distinct !DISubprogram(name: "rotl", scope: !3, file: !3, line: 64, type: !620, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!620 = !DISubroutineType(types: !621)
!621 = !{!9, !9, !187}
!622 = !DILocalVariable(name: "x", arg: 1, scope: !619, file: !3, line: 64, type: !9)
!623 = !DILocation(line: 0, scope: !619)
!624 = !DILocalVariable(name: "n", arg: 2, scope: !619, file: !3, line: 64, type: !187)
!625 = !DILocation(line: 66, column: 12, scope: !619)
!626 = !DILocation(line: 66, column: 30, scope: !619)
!627 = !DILocation(line: 66, column: 23, scope: !619)
!628 = !DILocation(line: 66, column: 18, scope: !619)
!629 = !DILocation(line: 66, column: 2, scope: !619)
!630 = distinct !DISubprogram(name: "br_des_ct_skey_expand", scope: !3, file: !3, line: 389, type: !631, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !122, !13, !257}
!633 = !DILocalVariable(name: "sk_exp", arg: 1, scope: !630, file: !3, line: 389, type: !122)
!634 = !DILocation(line: 0, scope: !630)
!635 = !DILocalVariable(name: "num_rounds", arg: 2, scope: !630, file: !3, line: 390, type: !13)
!636 = !DILocalVariable(name: "skey", arg: 3, scope: !630, file: !3, line: 390, type: !257)
!637 = !DILocation(line: 392, column: 13, scope: !630)
!638 = !DILocation(line: 393, column: 2, scope: !630)
!639 = !DILocation(line: 393, column: 20, scope: !630)
!640 = !DILocation(line: 393, column: 23, scope: !630)
!641 = !DILocation(line: 396, column: 13, scope: !642)
!642 = distinct !DILexicalBlock(scope: !630, file: !3, line: 393, column: 28)
!643 = !DILocation(line: 396, column: 7, scope: !642)
!644 = !DILocalVariable(name: "v", scope: !642, file: !3, line: 394, type: !9)
!645 = !DILocation(line: 0, scope: !642)
!646 = !DILocation(line: 397, column: 10, scope: !642)
!647 = !DILocalVariable(name: "w0", scope: !642, file: !3, line: 394, type: !9)
!648 = !DILocation(line: 398, column: 11, scope: !642)
!649 = !DILocation(line: 398, column: 17, scope: !642)
!650 = !DILocalVariable(name: "w1", scope: !642, file: !3, line: 394, type: !9)
!651 = !DILocation(line: 399, column: 11, scope: !642)
!652 = !DILocation(line: 399, column: 17, scope: !642)
!653 = !DILocalVariable(name: "w2", scope: !642, file: !3, line: 394, type: !9)
!654 = !DILocation(line: 400, column: 11, scope: !642)
!655 = !DILocation(line: 400, column: 17, scope: !642)
!656 = !DILocalVariable(name: "w3", scope: !642, file: !3, line: 394, type: !9)
!657 = !DILocation(line: 401, column: 20, scope: !642)
!658 = !DILocation(line: 401, column: 26, scope: !642)
!659 = !DILocation(line: 401, column: 11, scope: !642)
!660 = !DILocation(line: 401, column: 14, scope: !642)
!661 = !DILocation(line: 402, column: 20, scope: !642)
!662 = !DILocation(line: 402, column: 26, scope: !642)
!663 = !DILocation(line: 402, column: 11, scope: !642)
!664 = !DILocation(line: 402, column: 14, scope: !642)
!665 = !DILocation(line: 403, column: 20, scope: !642)
!666 = !DILocation(line: 403, column: 26, scope: !642)
!667 = !DILocation(line: 403, column: 11, scope: !642)
!668 = !DILocation(line: 403, column: 14, scope: !642)
!669 = !DILocation(line: 404, column: 20, scope: !642)
!670 = !DILocation(line: 404, column: 26, scope: !642)
!671 = !DILocation(line: 404, column: 11, scope: !642)
!672 = !DILocation(line: 404, column: 14, scope: !642)
!673 = !DILocation(line: 405, column: 13, scope: !642)
!674 = !DILocation(line: 405, column: 7, scope: !642)
!675 = !DILocation(line: 406, column: 10, scope: !642)
!676 = !DILocation(line: 407, column: 11, scope: !642)
!677 = !DILocation(line: 407, column: 17, scope: !642)
!678 = !DILocation(line: 408, column: 20, scope: !642)
!679 = !DILocation(line: 408, column: 26, scope: !642)
!680 = !DILocation(line: 408, column: 11, scope: !642)
!681 = !DILocation(line: 408, column: 14, scope: !642)
!682 = !DILocation(line: 409, column: 20, scope: !642)
!683 = !DILocation(line: 409, column: 26, scope: !642)
!684 = !DILocation(line: 409, column: 11, scope: !642)
!685 = !DILocation(line: 409, column: 14, scope: !642)
!686 = distinct !{!686, !638, !687, !239}
!687 = !DILocation(line: 410, column: 2, scope: !630)
!688 = !DILocation(line: 411, column: 1, scope: !630)
!689 = distinct !DISubprogram(name: "br_des_ct_cbcdec_init", scope: !27, file: !27, line: 29, type: !690, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !4)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !692, !46, !35}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_des_ct_cbcdec_keys", file: !31, line: 2338, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 2331, size: 3200, elements: !695)
!695 = !{!696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !694, file: !31, line: 2333, baseType: !45, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !694, file: !31, line: 2335, baseType: !93, size: 3072, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !694, file: !31, line: 2336, baseType: !13, size: 32, offset: 3136)
!699 = !DILocalVariable(name: "ctx", arg: 1, scope: !689, file: !27, line: 29, type: !692)
!700 = !DILocation(line: 0, scope: !689)
!701 = !DILocalVariable(name: "key", arg: 2, scope: !689, file: !27, line: 30, type: !46)
!702 = !DILocalVariable(name: "len", arg: 3, scope: !689, file: !27, line: 30, type: !35)
!703 = !DILocation(line: 32, column: 7, scope: !689)
!704 = !DILocation(line: 32, column: 14, scope: !689)
!705 = !DILocation(line: 33, column: 44, scope: !689)
!706 = !DILocation(line: 33, column: 39, scope: !689)
!707 = !DILocation(line: 33, column: 20, scope: !689)
!708 = !DILocation(line: 33, column: 7, scope: !689)
!709 = !DILocation(line: 33, column: 18, scope: !689)
!710 = !DILocation(line: 34, column: 10, scope: !711)
!711 = distinct !DILexicalBlock(scope: !689, file: !27, line: 34, column: 6)
!712 = !DILocation(line: 34, column: 6, scope: !689)
!713 = !DILocation(line: 35, column: 24, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !27, line: 34, column: 16)
!715 = !DILocation(line: 35, column: 19, scope: !714)
!716 = !DILocation(line: 35, column: 3, scope: !714)
!717 = !DILocation(line: 36, column: 2, scope: !714)
!718 = !DILocalVariable(name: "i", scope: !719, file: !27, line: 37, type: !187)
!719 = distinct !DILexicalBlock(scope: !711, file: !27, line: 36, column: 9)
!720 = !DILocation(line: 0, scope: !719)
!721 = !DILocation(line: 39, column: 8, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !27, line: 39, column: 3)
!723 = !DILocation(line: 0, scope: !722)
!724 = !DILocation(line: 39, column: 17, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !27, line: 39, column: 3)
!726 = !DILocation(line: 39, column: 3, scope: !722)
!727 = !DILocation(line: 42, column: 13, scope: !728)
!728 = distinct !DILexicalBlock(scope: !725, file: !27, line: 39, column: 31)
!729 = !DILocation(line: 42, column: 8, scope: !728)
!730 = !DILocalVariable(name: "t", scope: !728, file: !27, line: 40, type: !9)
!731 = !DILocation(line: 0, scope: !728)
!732 = !DILocation(line: 43, column: 24, scope: !728)
!733 = !DILocation(line: 43, column: 32, scope: !728)
!734 = !DILocation(line: 43, column: 19, scope: !728)
!735 = !DILocation(line: 43, column: 9, scope: !728)
!736 = !DILocation(line: 43, column: 4, scope: !728)
!737 = !DILocation(line: 43, column: 17, scope: !728)
!738 = !DILocation(line: 44, column: 9, scope: !728)
!739 = !DILocation(line: 44, column: 17, scope: !728)
!740 = !DILocation(line: 44, column: 4, scope: !728)
!741 = !DILocation(line: 44, column: 22, scope: !728)
!742 = !DILocation(line: 45, column: 13, scope: !728)
!743 = !DILocation(line: 45, column: 20, scope: !728)
!744 = !DILocation(line: 45, column: 8, scope: !728)
!745 = !DILocation(line: 46, column: 28, scope: !728)
!746 = !DILocation(line: 46, column: 36, scope: !728)
!747 = !DILocation(line: 46, column: 23, scope: !728)
!748 = !DILocation(line: 46, column: 9, scope: !728)
!749 = !DILocation(line: 46, column: 16, scope: !728)
!750 = !DILocation(line: 46, column: 4, scope: !728)
!751 = !DILocation(line: 46, column: 21, scope: !728)
!752 = !DILocation(line: 47, column: 9, scope: !728)
!753 = !DILocation(line: 47, column: 17, scope: !728)
!754 = !DILocation(line: 47, column: 4, scope: !728)
!755 = !DILocation(line: 47, column: 22, scope: !728)
!756 = !DILocation(line: 48, column: 3, scope: !728)
!757 = !DILocation(line: 39, column: 25, scope: !725)
!758 = !DILocation(line: 39, column: 3, scope: !725)
!759 = distinct !{!759, !726, !760, !239}
!760 = !DILocation(line: 48, column: 3, scope: !722)
!761 = !DILocation(line: 50, column: 1, scope: !689)
!762 = distinct !DISubprogram(name: "br_des_ct_cbcdec_run", scope: !27, file: !27, line: 54, type: !763, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !4)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !765, !54, !54, !35}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!767 = !DILocalVariable(name: "ctx", arg: 1, scope: !762, file: !27, line: 54, type: !765)
!768 = !DILocation(line: 0, scope: !762)
!769 = !DILocalVariable(name: "iv", arg: 2, scope: !762, file: !27, line: 55, type: !54)
!770 = !DILocalVariable(name: "data", arg: 3, scope: !762, file: !27, line: 55, type: !54)
!771 = !DILocalVariable(name: "len", arg: 4, scope: !762, file: !27, line: 55, type: !35)
!772 = !DILocalVariable(name: "sk_exp", scope: !762, file: !27, line: 58, type: !773)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 9216, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 288)
!776 = !DILocation(line: 58, column: 11, scope: !762)
!777 = !DILocation(line: 60, column: 24, scope: !762)
!778 = !DILocation(line: 60, column: 37, scope: !762)
!779 = !DILocation(line: 60, column: 54, scope: !762)
!780 = !DILocation(line: 60, column: 49, scope: !762)
!781 = !DILocation(line: 60, column: 2, scope: !762)
!782 = !DILocalVariable(name: "ivbuf", scope: !762, file: !27, line: 57, type: !268)
!783 = !DILocalVariable(name: "buf", scope: !762, file: !27, line: 57, type: !268)
!784 = !DILocation(line: 63, column: 2, scope: !762)
!785 = !DILocation(line: 63, column: 13, scope: !762)
!786 = !DILocalVariable(name: "tmp", scope: !787, file: !27, line: 64, type: !788)
!787 = distinct !DILexicalBlock(scope: !762, file: !27, line: 63, column: 18)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 8)
!791 = !DILocation(line: 64, column: 17, scope: !787)
!792 = !DILocation(line: 67, column: 3, scope: !787)
!793 = !DILocation(line: 68, column: 32, scope: !787)
!794 = !DILocation(line: 68, column: 44, scope: !787)
!795 = !DILocation(line: 68, column: 3, scope: !787)
!796 = !DILocalVariable(name: "i", scope: !787, file: !27, line: 65, type: !187)
!797 = !DILocation(line: 0, scope: !787)
!798 = !DILocation(line: 69, column: 8, scope: !799)
!799 = distinct !DILexicalBlock(scope: !787, file: !27, line: 69, column: 3)
!800 = !DILocation(line: 0, scope: !799)
!801 = !DILocation(line: 69, column: 17, scope: !802)
!802 = distinct !DILexicalBlock(scope: !799, file: !27, line: 69, column: 3)
!803 = !DILocation(line: 69, column: 3, scope: !799)
!804 = !DILocation(line: 70, column: 14, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !27, line: 69, column: 28)
!806 = !DILocation(line: 70, column: 4, scope: !805)
!807 = !DILocation(line: 70, column: 11, scope: !805)
!808 = !DILocation(line: 71, column: 3, scope: !805)
!809 = !DILocation(line: 69, column: 24, scope: !802)
!810 = !DILocation(line: 69, column: 3, scope: !802)
!811 = distinct !{!811, !803, !812, !239}
!812 = !DILocation(line: 71, column: 3, scope: !799)
!813 = !DILocation(line: 72, column: 3, scope: !787)
!814 = !DILocation(line: 73, column: 7, scope: !787)
!815 = !DILocation(line: 74, column: 7, scope: !787)
!816 = distinct !{!816, !784, !817, !239}
!817 = !DILocation(line: 75, column: 2, scope: !762)
!818 = !DILocation(line: 76, column: 1, scope: !762)
!819 = distinct !DISubprogram(name: "br_des_do_IP", scope: !58, file: !58, line: 29, type: !820, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !122, !122}
!822 = !DILocalVariable(name: "xl", arg: 1, scope: !819, file: !58, line: 29, type: !122)
!823 = !DILocation(line: 0, scope: !819)
!824 = !DILocalVariable(name: "xr", arg: 2, scope: !819, file: !58, line: 29, type: !122)
!825 = !DILocation(line: 38, column: 6, scope: !819)
!826 = !DILocalVariable(name: "l", scope: !819, file: !58, line: 36, type: !9)
!827 = !DILocation(line: 39, column: 6, scope: !819)
!828 = !DILocalVariable(name: "r", scope: !819, file: !58, line: 36, type: !9)
!829 = !DILocation(line: 40, column: 10, scope: !819)
!830 = !DILocation(line: 40, column: 17, scope: !819)
!831 = !DILocation(line: 40, column: 22, scope: !819)
!832 = !DILocalVariable(name: "t", scope: !819, file: !58, line: 36, type: !9)
!833 = !DILocation(line: 41, column: 4, scope: !819)
!834 = !DILocation(line: 42, column: 9, scope: !819)
!835 = !DILocation(line: 42, column: 4, scope: !819)
!836 = !DILocation(line: 43, column: 10, scope: !819)
!837 = !DILocation(line: 43, column: 17, scope: !819)
!838 = !DILocation(line: 43, column: 22, scope: !819)
!839 = !DILocation(line: 44, column: 4, scope: !819)
!840 = !DILocation(line: 45, column: 9, scope: !819)
!841 = !DILocation(line: 45, column: 4, scope: !819)
!842 = !DILocation(line: 46, column: 10, scope: !819)
!843 = !DILocation(line: 46, column: 17, scope: !819)
!844 = !DILocation(line: 46, column: 22, scope: !819)
!845 = !DILocation(line: 47, column: 4, scope: !819)
!846 = !DILocation(line: 48, column: 9, scope: !819)
!847 = !DILocation(line: 48, column: 4, scope: !819)
!848 = !DILocation(line: 49, column: 10, scope: !819)
!849 = !DILocation(line: 49, column: 17, scope: !819)
!850 = !DILocation(line: 49, column: 22, scope: !819)
!851 = !DILocation(line: 50, column: 4, scope: !819)
!852 = !DILocation(line: 51, column: 9, scope: !819)
!853 = !DILocation(line: 51, column: 4, scope: !819)
!854 = !DILocation(line: 52, column: 10, scope: !819)
!855 = !DILocation(line: 52, column: 17, scope: !819)
!856 = !DILocation(line: 52, column: 22, scope: !819)
!857 = !DILocation(line: 53, column: 4, scope: !819)
!858 = !DILocation(line: 54, column: 9, scope: !819)
!859 = !DILocation(line: 54, column: 4, scope: !819)
!860 = !DILocation(line: 55, column: 6, scope: !819)
!861 = !DILocation(line: 56, column: 6, scope: !819)
!862 = !DILocation(line: 57, column: 1, scope: !819)
!863 = distinct !DISubprogram(name: "br_des_do_invIP", scope: !58, file: !58, line: 61, type: !820, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!864 = !DILocalVariable(name: "xl", arg: 1, scope: !863, file: !58, line: 61, type: !122)
!865 = !DILocation(line: 0, scope: !863)
!866 = !DILocalVariable(name: "xr", arg: 2, scope: !863, file: !58, line: 61, type: !122)
!867 = !DILocation(line: 68, column: 6, scope: !863)
!868 = !DILocalVariable(name: "l", scope: !863, file: !58, line: 66, type: !9)
!869 = !DILocation(line: 69, column: 6, scope: !863)
!870 = !DILocalVariable(name: "r", scope: !863, file: !58, line: 66, type: !9)
!871 = !DILocation(line: 70, column: 10, scope: !863)
!872 = !DILocation(line: 70, column: 17, scope: !863)
!873 = !DILocation(line: 70, column: 22, scope: !863)
!874 = !DILocalVariable(name: "t", scope: !863, file: !58, line: 66, type: !9)
!875 = !DILocation(line: 71, column: 4, scope: !863)
!876 = !DILocation(line: 72, column: 9, scope: !863)
!877 = !DILocation(line: 72, column: 4, scope: !863)
!878 = !DILocation(line: 73, column: 10, scope: !863)
!879 = !DILocation(line: 73, column: 17, scope: !863)
!880 = !DILocation(line: 73, column: 22, scope: !863)
!881 = !DILocation(line: 74, column: 4, scope: !863)
!882 = !DILocation(line: 75, column: 9, scope: !863)
!883 = !DILocation(line: 75, column: 4, scope: !863)
!884 = !DILocation(line: 76, column: 10, scope: !863)
!885 = !DILocation(line: 76, column: 17, scope: !863)
!886 = !DILocation(line: 76, column: 22, scope: !863)
!887 = !DILocation(line: 77, column: 4, scope: !863)
!888 = !DILocation(line: 78, column: 9, scope: !863)
!889 = !DILocation(line: 78, column: 4, scope: !863)
!890 = !DILocation(line: 79, column: 10, scope: !863)
!891 = !DILocation(line: 79, column: 17, scope: !863)
!892 = !DILocation(line: 79, column: 22, scope: !863)
!893 = !DILocation(line: 80, column: 4, scope: !863)
!894 = !DILocation(line: 81, column: 9, scope: !863)
!895 = !DILocation(line: 81, column: 4, scope: !863)
!896 = !DILocation(line: 82, column: 10, scope: !863)
!897 = !DILocation(line: 82, column: 17, scope: !863)
!898 = !DILocation(line: 82, column: 22, scope: !863)
!899 = !DILocation(line: 83, column: 4, scope: !863)
!900 = !DILocation(line: 84, column: 9, scope: !863)
!901 = !DILocation(line: 84, column: 4, scope: !863)
!902 = !DILocation(line: 85, column: 6, scope: !863)
!903 = !DILocation(line: 86, column: 6, scope: !863)
!904 = !DILocation(line: 87, column: 1, scope: !863)
!905 = distinct !DISubprogram(name: "br_des_keysched_unit", scope: !58, file: !58, line: 91, type: !180, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!906 = !DILocalVariable(name: "skey", arg: 1, scope: !905, file: !58, line: 91, type: !122)
!907 = !DILocation(line: 0, scope: !905)
!908 = !DILocalVariable(name: "key", arg: 2, scope: !905, file: !58, line: 91, type: !46)
!909 = !DILocalVariable(name: "xl", scope: !905, file: !58, line: 93, type: !9)
!910 = !DILocation(line: 93, column: 11, scope: !905)
!911 = !DILocalVariable(name: "xr", scope: !905, file: !58, line: 93, type: !9)
!912 = !DILocation(line: 93, column: 15, scope: !905)
!913 = !DILocation(line: 96, column: 7, scope: !905)
!914 = !DILocation(line: 96, column: 5, scope: !905)
!915 = !DILocation(line: 97, column: 45, scope: !905)
!916 = !DILocation(line: 97, column: 7, scope: !905)
!917 = !DILocation(line: 97, column: 5, scope: !905)
!918 = !DILocation(line: 121, column: 2, scope: !905)
!919 = !DILocation(line: 122, column: 9, scope: !905)
!920 = !DILocation(line: 122, column: 12, scope: !905)
!921 = !DILocation(line: 122, column: 36, scope: !905)
!922 = !DILocation(line: 123, column: 7, scope: !905)
!923 = !DILocation(line: 123, column: 10, scope: !905)
!924 = !DILocation(line: 123, column: 34, scope: !905)
!925 = !DILocation(line: 123, column: 3, scope: !905)
!926 = !DILocation(line: 124, column: 7, scope: !905)
!927 = !DILocation(line: 124, column: 10, scope: !905)
!928 = !DILocation(line: 124, column: 34, scope: !905)
!929 = !DILocation(line: 124, column: 3, scope: !905)
!930 = !DILocation(line: 125, column: 7, scope: !905)
!931 = !DILocation(line: 125, column: 10, scope: !905)
!932 = !DILocation(line: 125, column: 34, scope: !905)
!933 = !DILocation(line: 125, column: 3, scope: !905)
!934 = !DILocalVariable(name: "kl", scope: !905, file: !58, line: 93, type: !9)
!935 = !DILocation(line: 126, column: 9, scope: !905)
!936 = !DILocation(line: 126, column: 12, scope: !905)
!937 = !DILocation(line: 126, column: 36, scope: !905)
!938 = !DILocation(line: 127, column: 7, scope: !905)
!939 = !DILocation(line: 127, column: 10, scope: !905)
!940 = !DILocation(line: 127, column: 34, scope: !905)
!941 = !DILocation(line: 127, column: 3, scope: !905)
!942 = !DILocation(line: 128, column: 7, scope: !905)
!943 = !DILocation(line: 128, column: 10, scope: !905)
!944 = !DILocation(line: 128, column: 34, scope: !905)
!945 = !DILocation(line: 128, column: 3, scope: !905)
!946 = !DILocation(line: 129, column: 7, scope: !905)
!947 = !DILocation(line: 129, column: 10, scope: !905)
!948 = !DILocation(line: 129, column: 34, scope: !905)
!949 = !DILocation(line: 129, column: 3, scope: !905)
!950 = !DILocalVariable(name: "kr", scope: !905, file: !58, line: 93, type: !9)
!951 = !DILocalVariable(name: "i", scope: !905, file: !58, line: 94, type: !187)
!952 = !DILocation(line: 135, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !905, file: !58, line: 135, column: 2)
!954 = !DILocation(line: 0, scope: !953)
!955 = !DILocation(line: 135, column: 16, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !58, line: 135, column: 2)
!957 = !DILocation(line: 135, column: 2, scope: !953)
!958 = !DILocation(line: 136, column: 10, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !58, line: 136, column: 7)
!960 = distinct !DILexicalBlock(scope: !956, file: !58, line: 135, column: 28)
!961 = !DILocation(line: 136, column: 16, scope: !959)
!962 = !DILocation(line: 136, column: 7, scope: !960)
!963 = !DILocation(line: 137, column: 13, scope: !964)
!964 = distinct !DILexicalBlock(scope: !959, file: !58, line: 136, column: 26)
!965 = !DILocation(line: 137, column: 25, scope: !964)
!966 = !DILocation(line: 137, column: 19, scope: !964)
!967 = !DILocation(line: 138, column: 13, scope: !964)
!968 = !DILocation(line: 138, column: 25, scope: !964)
!969 = !DILocation(line: 138, column: 19, scope: !964)
!970 = !DILocation(line: 139, column: 3, scope: !964)
!971 = !DILocation(line: 140, column: 13, scope: !972)
!972 = distinct !DILexicalBlock(scope: !959, file: !58, line: 139, column: 10)
!973 = !DILocation(line: 140, column: 25, scope: !972)
!974 = !DILocation(line: 140, column: 19, scope: !972)
!975 = !DILocation(line: 141, column: 13, scope: !972)
!976 = !DILocation(line: 141, column: 25, scope: !972)
!977 = !DILocation(line: 141, column: 19, scope: !972)
!978 = !DILocation(line: 0, scope: !959)
!979 = !DILocation(line: 143, column: 6, scope: !960)
!980 = !DILocation(line: 144, column: 6, scope: !960)
!981 = !DILocation(line: 145, column: 11, scope: !960)
!982 = !DILocation(line: 145, column: 17, scope: !960)
!983 = !DILocation(line: 145, column: 3, scope: !960)
!984 = !DILocation(line: 145, column: 22, scope: !960)
!985 = !DILocation(line: 146, column: 11, scope: !960)
!986 = !DILocation(line: 146, column: 17, scope: !960)
!987 = !DILocation(line: 146, column: 3, scope: !960)
!988 = !DILocation(line: 146, column: 22, scope: !960)
!989 = !DILocation(line: 147, column: 2, scope: !960)
!990 = !DILocation(line: 135, column: 24, scope: !956)
!991 = !DILocation(line: 135, column: 2, scope: !956)
!992 = distinct !{!992, !957, !993, !239}
!993 = !DILocation(line: 147, column: 2, scope: !953)
!994 = !DILocation(line: 148, column: 1, scope: !905)
!995 = distinct !DISubprogram(name: "br_dec32be", scope: !291, file: !291, line: 590, type: !292, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !57, retainedNodes: !4)
!996 = !DILocalVariable(name: "src", arg: 1, scope: !995, file: !291, line: 590, type: !46)
!997 = !DILocation(line: 0, scope: !995)
!998 = !DILocalVariable(name: "buf", scope: !995, file: !291, line: 595, type: !6)
!999 = !DILocation(line: 598, column: 20, scope: !995)
!1000 = !DILocation(line: 598, column: 10, scope: !995)
!1001 = !DILocation(line: 598, column: 27, scope: !995)
!1002 = !DILocation(line: 599, column: 16, scope: !995)
!1003 = !DILocation(line: 599, column: 6, scope: !995)
!1004 = !DILocation(line: 599, column: 23, scope: !995)
!1005 = !DILocation(line: 599, column: 3, scope: !995)
!1006 = !DILocation(line: 600, column: 16, scope: !995)
!1007 = !DILocation(line: 600, column: 6, scope: !995)
!1008 = !DILocation(line: 600, column: 23, scope: !995)
!1009 = !DILocation(line: 600, column: 3, scope: !995)
!1010 = !DILocation(line: 601, column: 15, scope: !995)
!1011 = !DILocation(line: 601, column: 5, scope: !995)
!1012 = !DILocation(line: 601, column: 3, scope: !995)
!1013 = !DILocation(line: 598, column: 2, scope: !995)
!1014 = distinct !DISubprogram(name: "br_des_rev_skey", scope: !58, file: !58, line: 152, type: !1015, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !122}
!1017 = !DILocalVariable(name: "skey", arg: 1, scope: !1014, file: !58, line: 152, type: !122)
!1018 = !DILocation(line: 0, scope: !1014)
!1019 = !DILocalVariable(name: "i", scope: !1014, file: !58, line: 154, type: !187)
!1020 = !DILocation(line: 156, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1014, file: !58, line: 156, column: 2)
!1022 = !DILocation(line: 0, scope: !1021)
!1023 = !DILocation(line: 156, column: 16, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !58, line: 156, column: 2)
!1025 = !DILocation(line: 156, column: 2, scope: !1021)
!1026 = !DILocation(line: 159, column: 14, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !58, line: 156, column: 30)
!1028 = !DILocation(line: 159, column: 7, scope: !1027)
!1029 = !DILocalVariable(name: "t", scope: !1027, file: !58, line: 157, type: !9)
!1030 = !DILocation(line: 0, scope: !1027)
!1031 = !DILocation(line: 160, column: 25, scope: !1027)
!1032 = !DILocation(line: 160, column: 17, scope: !1027)
!1033 = !DILocation(line: 160, column: 10, scope: !1027)
!1034 = !DILocation(line: 160, column: 3, scope: !1027)
!1035 = !DILocation(line: 160, column: 15, scope: !1027)
!1036 = !DILocation(line: 161, column: 11, scope: !1027)
!1037 = !DILocation(line: 161, column: 3, scope: !1027)
!1038 = !DILocation(line: 161, column: 16, scope: !1027)
!1039 = !DILocation(line: 162, column: 14, scope: !1027)
!1040 = !DILocation(line: 162, column: 7, scope: !1027)
!1041 = !DILocation(line: 163, column: 25, scope: !1027)
!1042 = !DILocation(line: 163, column: 17, scope: !1027)
!1043 = !DILocation(line: 163, column: 10, scope: !1027)
!1044 = !DILocation(line: 163, column: 3, scope: !1027)
!1045 = !DILocation(line: 163, column: 15, scope: !1027)
!1046 = !DILocation(line: 164, column: 11, scope: !1027)
!1047 = !DILocation(line: 164, column: 3, scope: !1027)
!1048 = !DILocation(line: 164, column: 16, scope: !1027)
!1049 = !DILocation(line: 165, column: 2, scope: !1027)
!1050 = !DILocation(line: 156, column: 24, scope: !1024)
!1051 = !DILocation(line: 156, column: 2, scope: !1024)
!1052 = distinct !{!1052, !1025, !1053, !239}
!1053 = !DILocation(line: 165, column: 2, scope: !1021)
!1054 = !DILocation(line: 166, column: 1, scope: !1014)
