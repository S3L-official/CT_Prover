; ModuleID = 'cbc_decrypt-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_block_cbcdec_class_ = type { i64, i32, i32, void (%struct.br_block_cbcdec_class_**, i8*, i64)*, void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)* }
%struct.br_des_ct_cbcdec_keys = type { %struct.br_block_cbcdec_class_*, [96 x i32], i32 }
%struct.smack_value = type { i8* }

@QL0 = internal constant [16 x i8] c"\11\04\1B\17\0D\16\07\12\10\18\02\14\01\08\0F\1A", align 16, !dbg !0, !psr.id !24
@QR0 = internal constant [16 x i8] c"\19\13\09\01\05\0B\17\08\11\00\16\03\06\14\1B\18", align 16, !dbg !15, !psr.id !25
@QL1 = internal constant [16 x i8] c"\1C\1C\0E\0B\1C\1C\19\00\1C\1C\05\09\1C\1C\0C\15", align 16, !dbg !20, !psr.id !26
@QR1 = internal constant [16 x i8] c"\1C\1C\0F\04\1C\1C\1A\10\1C\1C\0C\07\1C\1C\0A\0E", align 16, !dbg !22, !psr.id !27
@br_des_ct_cbcdec_vtable = dso_local constant %struct.br_block_cbcdec_class_ { i64 400, i32 8, i32 3, void (%struct.br_block_cbcdec_class_**, i8*, i64)* bitcast (void (%struct.br_des_ct_cbcdec_keys*, i8*, i64)* @br_des_ct_cbcdec_init to void (%struct.br_block_cbcdec_class_**, i8*, i64)*), void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_des_ct_cbcdec_keys*, i8*, i8*, i64)* @br_des_ct_cbcdec_run to void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)*) }, align 8, !dbg !28, !psr.id !59

; Function Attrs: noinline nounwind uwtable
define dso_local void @cbc_decrypt_wrapper(%struct.br_des_ct_cbcdec_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !69 {
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcdec_keys* %0, metadata !102, metadata !DIExpression()), !dbg !103, !psr.id !104
  call void @llvm.dbg.value(metadata i8* %1, metadata !105, metadata !DIExpression()), !dbg !103, !psr.id !106
  call void @llvm.dbg.value(metadata i8* %2, metadata !107, metadata !DIExpression()), !dbg !103, !psr.id !108
  call void @llvm.dbg.value(metadata i64 %3, metadata !109, metadata !DIExpression()), !dbg !103, !psr.id !110
  %5 = call %struct.smack_value* (%struct.br_des_ct_cbcdec_keys*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_des_ct_cbcdec_keys*, ...)*)(%struct.br_des_ct_cbcdec_keys* %0), !dbg !111, !psr.id !112
  call void @public_in(%struct.smack_value* %5), !dbg !113, !psr.id !114
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !115, !psr.id !116
  call void @public_in(%struct.smack_value* %6), !dbg !117, !psr.id !118
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !119, !psr.id !120
  call void @public_in(%struct.smack_value* %7), !dbg !121, !psr.id !122
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !123, !psr.id !124
  call void @public_in(%struct.smack_value* %8), !dbg !125, !psr.id !126
  %9 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 2, !dbg !127, !psr.id !128
  %10 = load i32, i32* %9, align 8, !dbg !127, !psr.id !129
  %11 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %10), !dbg !130, !psr.id !131
  call void @public_in(%struct.smack_value* %11), !dbg !132, !psr.id !133
  %12 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !134, !psr.id !135
  call void @public_in(%struct.smack_value* %12), !dbg !136, !psr.id !137
  %13 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 16), !dbg !138, !psr.id !139
  call void @public_in(%struct.smack_value* %13), !dbg !140, !psr.id !141
  call void @br_des_ct_cbcdec_run(%struct.br_des_ct_cbcdec_keys* %0, i8* %1, i8* %2, i64 %3), !dbg !142, !psr.id !143
  ret void, !dbg !144, !psr.id !145
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vfct_tmp(i32* %0, %struct.br_des_ct_cbcdec_keys* %1, i8* %2, i8* %3, i64 %4) #0 !dbg !146 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !150, metadata !DIExpression()), !dbg !151, !psr.id !152
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcdec_keys* %1, metadata !153, metadata !DIExpression()), !dbg !151, !psr.id !154
  call void @llvm.dbg.value(metadata i8* %2, metadata !155, metadata !DIExpression()), !dbg !151, !psr.id !156
  call void @llvm.dbg.value(metadata i8* %3, metadata !157, metadata !DIExpression()), !dbg !151, !psr.id !158
  call void @llvm.dbg.value(metadata i64 %4, metadata !159, metadata !DIExpression()), !dbg !151, !psr.id !160
  call void @br_des_ct_cbcdec_run(%struct.br_des_ct_cbcdec_keys* %1, i8* %2, i8* %3, i64 %4), !dbg !161, !psr.id !162
  ret void, !dbg !163, !psr.id !164
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cbc_decrypt_wrapper_t() #0 !dbg !165 {
  %1 = call %struct.br_des_ct_cbcdec_keys* (...) @getctx(), !dbg !168, !psr.id !169
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcdec_keys* %1, metadata !170, metadata !DIExpression()), !dbg !171, !psr.id !172
  %2 = call i8* (...) @getpt2(), !dbg !173, !psr.id !174
  call void @llvm.dbg.value(metadata i8* %2, metadata !175, metadata !DIExpression()), !dbg !171, !psr.id !176
  %3 = call i8* (...) @getpt3(), !dbg !177, !psr.id !178
  call void @llvm.dbg.value(metadata i8* %3, metadata !179, metadata !DIExpression()), !dbg !171, !psr.id !180
  call void @llvm.dbg.value(metadata i64 32, metadata !181, metadata !DIExpression()), !dbg !171, !psr.id !182
  %4 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %1, i32 0, i32 1, !dbg !183, !psr.id !184
  %5 = getelementptr inbounds [96 x i32], [96 x i32]* %4, i64 0, i64 0, !dbg !185, !psr.id !186
  call void @llvm.dbg.value(metadata i32* %5, metadata !187, metadata !DIExpression()), !dbg !171, !psr.id !188
  call void @vfct_tmp(i32* %5, %struct.br_des_ct_cbcdec_keys* %1, i8* %2, i8* %3, i64 32), !dbg !189, !psr.id !190
  ret void, !dbg !191, !psr.id !192
}

declare dso_local %struct.br_des_ct_cbcdec_keys* @getctx(...) #2

declare dso_local i8* @getpt2(...) #2

declare dso_local i8* @getpt3(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_des_ct_keysched(i32* %0, i8* %1, i64 %2) #0 !dbg !193 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !196, metadata !DIExpression()), !dbg !197, !psr.id !198
  call void @llvm.dbg.value(metadata i8* %1, metadata !199, metadata !DIExpression()), !dbg !197, !psr.id !200
  call void @llvm.dbg.value(metadata i64 %2, metadata !201, metadata !DIExpression()), !dbg !197, !psr.id !202
  switch i64 %2, label %12 [
    i64 8, label %4
    i64 16, label %5
  ], !dbg !203, !psr.id !204

4:                                                ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !205, !psr.id !207
  br label %18, !dbg !208, !psr.id !209

5:                                                ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !210, !psr.id !211
  %6 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !212, !psr.id !213
  %7 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !214, !psr.id !215
  call void @keysched_unit(i32* %6, i8* %7), !dbg !216, !psr.id !217
  %8 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !218, !psr.id !219
  call void @br_des_rev_skey(i32* %8), !dbg !220, !psr.id !221
  %9 = getelementptr inbounds i32, i32* %0, i64 64, !dbg !222, !psr.id !223
  %10 = bitcast i32* %9 to i8*, !dbg !224, !psr.id !225
  %11 = bitcast i32* %0 to i8*, !dbg !224, !psr.id !226
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 128, i1 false), !dbg !224, !psr.id !227
  br label %18, !dbg !228, !psr.id !229

12:                                               ; preds = %3
  call void @keysched_unit(i32* %0, i8* %1), !dbg !230, !psr.id !231
  %13 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !232, !psr.id !233
  %14 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !234, !psr.id !235
  call void @keysched_unit(i32* %13, i8* %14), !dbg !236, !psr.id !237
  %15 = getelementptr inbounds i32, i32* %0, i64 32, !dbg !238, !psr.id !239
  call void @br_des_rev_skey(i32* %15), !dbg !240, !psr.id !241
  %16 = getelementptr inbounds i32, i32* %0, i64 64, !dbg !242, !psr.id !243
  %17 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !244, !psr.id !245
  call void @keysched_unit(i32* %16, i8* %17), !dbg !246, !psr.id !247
  br label %18, !dbg !248, !psr.id !249

18:                                               ; preds = %12, %5, %4
  %.0 = phi i32 [ 3, %12 ], [ 3, %5 ], [ 1, %4 ], !dbg !250, !psr.id !251
  ret i32 %.0, !dbg !252, !psr.id !253
}

; Function Attrs: noinline nounwind uwtable
define internal void @keysched_unit(i32* %0, i8* %1) #0 !dbg !254 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !257, metadata !DIExpression()), !dbg !258, !psr.id !259
  call void @llvm.dbg.value(metadata i8* %1, metadata !260, metadata !DIExpression()), !dbg !258, !psr.id !261
  call void @br_des_keysched_unit(i32* %0, i8* %1), !dbg !262, !psr.id !263
  call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !258, !psr.id !266
  br label %3, !dbg !267, !psr.id !269

3:                                                ; preds = %62, %2
  %.02 = phi i32 [ 0, %2 ], [ %63, %62 ], !dbg !270, !psr.id !271
  call void @llvm.dbg.value(metadata i32 %.02, metadata !264, metadata !DIExpression()), !dbg !258, !psr.id !272
  %4 = icmp slt i32 %.02, 16, !dbg !273, !psr.id !275
  br i1 %4, label %5, label %64, !dbg !276, !psr.id !277

5:                                                ; preds = %3
  %6 = shl i32 %.02, 1, !dbg !278, !psr.id !280
  %7 = add nsw i32 %6, 0, !dbg !281, !psr.id !282
  %8 = sext i32 %7 to i64, !dbg !283, !psr.id !284
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !283, !psr.id !285
  %10 = load i32, i32* %9, align 4, !dbg !283, !psr.id !286
  call void @llvm.dbg.value(metadata i32 %10, metadata !287, metadata !DIExpression()), !dbg !288, !psr.id !289
  %11 = shl i32 %.02, 1, !dbg !290, !psr.id !291
  %12 = add nsw i32 %11, 1, !dbg !292, !psr.id !293
  %13 = sext i32 %12 to i64, !dbg !294, !psr.id !295
  %14 = getelementptr inbounds i32, i32* %0, i64 %13, !dbg !294, !psr.id !296
  %15 = load i32, i32* %14, align 4, !dbg !294, !psr.id !297
  call void @llvm.dbg.value(metadata i32 %15, metadata !298, metadata !DIExpression()), !dbg !288, !psr.id !299
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !288, !psr.id !301
  call void @llvm.dbg.value(metadata i32 0, metadata !302, metadata !DIExpression()), !dbg !288, !psr.id !303
  call void @llvm.dbg.value(metadata i32 0, metadata !304, metadata !DIExpression()), !dbg !288, !psr.id !305
  br label %16, !dbg !306, !psr.id !308

16:                                               ; preds = %51, %5
  %.03 = phi i32 [ 0, %5 ], [ %35, %51 ], !dbg !288, !psr.id !309
  %.01 = phi i32 [ 0, %5 ], [ %50, %51 ], !dbg !288, !psr.id !310
  %.0 = phi i32 [ 0, %5 ], [ %52, %51 ], !dbg !311, !psr.id !312
  call void @llvm.dbg.value(metadata i32 %.0, metadata !304, metadata !DIExpression()), !dbg !288, !psr.id !313
  call void @llvm.dbg.value(metadata i32 %.01, metadata !302, metadata !DIExpression()), !dbg !288, !psr.id !314
  call void @llvm.dbg.value(metadata i32 %.03, metadata !300, metadata !DIExpression()), !dbg !288, !psr.id !315
  %17 = icmp slt i32 %.0, 16, !dbg !316, !psr.id !318
  br i1 %17, label %18, label %53, !dbg !319, !psr.id !320

18:                                               ; preds = %16
  %19 = shl i32 %.03, 1, !dbg !321, !psr.id !323
  call void @llvm.dbg.value(metadata i32 %19, metadata !300, metadata !DIExpression()), !dbg !288, !psr.id !324
  %20 = shl i32 %.01, 1, !dbg !325, !psr.id !326
  call void @llvm.dbg.value(metadata i32 %20, metadata !302, metadata !DIExpression()), !dbg !288, !psr.id !327
  %21 = sext i32 %.0 to i64, !dbg !328, !psr.id !329
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* @QL0, i64 0, i64 %21, !dbg !328, !psr.id !330
  %23 = load i8, i8* %22, align 1, !dbg !328, !psr.id !331
  %24 = zext i8 %23 to i32, !dbg !328, !psr.id !332
  %25 = lshr i32 %10, %24, !dbg !333, !psr.id !334
  %26 = and i32 %25, 1, !dbg !335, !psr.id !336
  %27 = shl i32 %26, 16, !dbg !337, !psr.id !338
  %28 = or i32 %19, %27, !dbg !339, !psr.id !340
  call void @llvm.dbg.value(metadata i32 %28, metadata !300, metadata !DIExpression()), !dbg !288, !psr.id !341
  %29 = sext i32 %.0 to i64, !dbg !342, !psr.id !343
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* @QR0, i64 0, i64 %29, !dbg !342, !psr.id !344
  %31 = load i8, i8* %30, align 1, !dbg !342, !psr.id !345
  %32 = zext i8 %31 to i32, !dbg !342, !psr.id !346
  %33 = lshr i32 %15, %32, !dbg !347, !psr.id !348
  %34 = and i32 %33, 1, !dbg !349, !psr.id !350
  %35 = or i32 %28, %34, !dbg !351, !psr.id !352
  call void @llvm.dbg.value(metadata i32 %35, metadata !300, metadata !DIExpression()), !dbg !288, !psr.id !353
  %36 = sext i32 %.0 to i64, !dbg !354, !psr.id !355
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* @QL1, i64 0, i64 %36, !dbg !354, !psr.id !356
  %38 = load i8, i8* %37, align 1, !dbg !354, !psr.id !357
  %39 = zext i8 %38 to i32, !dbg !354, !psr.id !358
  %40 = lshr i32 %10, %39, !dbg !359, !psr.id !360
  %41 = and i32 %40, 1, !dbg !361, !psr.id !362
  %42 = shl i32 %41, 16, !dbg !363, !psr.id !364
  %43 = or i32 %20, %42, !dbg !365, !psr.id !366
  call void @llvm.dbg.value(metadata i32 %43, metadata !302, metadata !DIExpression()), !dbg !288, !psr.id !367
  %44 = sext i32 %.0 to i64, !dbg !368, !psr.id !369
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* @QR1, i64 0, i64 %44, !dbg !368, !psr.id !370
  %46 = load i8, i8* %45, align 1, !dbg !368, !psr.id !371
  %47 = zext i8 %46 to i32, !dbg !368, !psr.id !372
  %48 = lshr i32 %15, %47, !dbg !373, !psr.id !374
  %49 = and i32 %48, 1, !dbg !375, !psr.id !376
  %50 = or i32 %43, %49, !dbg !377, !psr.id !378
  call void @llvm.dbg.value(metadata i32 %50, metadata !302, metadata !DIExpression()), !dbg !288, !psr.id !379
  br label %51, !dbg !380, !psr.id !381

51:                                               ; preds = %18
  %52 = add nsw i32 %.0, 1, !dbg !382, !psr.id !383
  call void @llvm.dbg.value(metadata i32 %52, metadata !304, metadata !DIExpression()), !dbg !288, !psr.id !384
  br label %16, !dbg !385, !llvm.loop !386, !psr.id !389

53:                                               ; preds = %16
  %54 = shl i32 %.02, 1, !dbg !390, !psr.id !391
  %55 = add nsw i32 %54, 0, !dbg !392, !psr.id !393
  %56 = sext i32 %55 to i64, !dbg !394, !psr.id !395
  %57 = getelementptr inbounds i32, i32* %0, i64 %56, !dbg !394, !psr.id !396
  store i32 %.03, i32* %57, align 4, !dbg !397, !psr.id !398
  %58 = shl i32 %.02, 1, !dbg !399, !psr.id !400
  %59 = add nsw i32 %58, 1, !dbg !401, !psr.id !402
  %60 = sext i32 %59 to i64, !dbg !403, !psr.id !404
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !403, !psr.id !405
  store i32 %.01, i32* %61, align 4, !dbg !406, !psr.id !407
  br label %62, !dbg !408, !psr.id !409

62:                                               ; preds = %53
  %63 = add nsw i32 %.02, 1, !dbg !410, !psr.id !411
  call void @llvm.dbg.value(metadata i32 %63, metadata !264, metadata !DIExpression()), !dbg !258, !psr.id !412
  br label %3, !dbg !413, !llvm.loop !414, !psr.id !416

64:                                               ; preds = %3
  ret void, !dbg !417, !psr.id !418
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_process_block(i32 %0, i32* %1, i8* %2) #0 !dbg !419 {
  %4 = alloca i32, align 4, !psr.id !424
  %5 = alloca i32, align 4, !psr.id !425
  call void @llvm.dbg.value(metadata i32 %0, metadata !426, metadata !DIExpression()), !dbg !427, !psr.id !428
  call void @llvm.dbg.value(metadata i32* %1, metadata !429, metadata !DIExpression()), !dbg !427, !psr.id !430
  call void @llvm.dbg.value(metadata i8* %2, metadata !431, metadata !DIExpression()), !dbg !427, !psr.id !432
  call void @llvm.dbg.declare(metadata i32* %4, metadata !433, metadata !DIExpression()), !dbg !434, !psr.id !435
  call void @llvm.dbg.declare(metadata i32* %5, metadata !436, metadata !DIExpression()), !dbg !437, !psr.id !438
  call void @llvm.dbg.value(metadata i8* %2, metadata !439, metadata !DIExpression()), !dbg !427, !psr.id !441
  %6 = call i32 @br_dec32be(i8* %2), !dbg !442, !psr.id !443
  store i32 %6, i32* %4, align 4, !dbg !444, !psr.id !445
  %7 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !446, !psr.id !447
  %8 = call i32 @br_dec32be(i8* %7), !dbg !448, !psr.id !449
  store i32 %8, i32* %5, align 4, !dbg !450, !psr.id !451
  call void @br_des_do_IP(i32* %4, i32* %5), !dbg !452, !psr.id !453
  br label %9, !dbg !454, !psr.id !455

9:                                                ; preds = %12, %3
  %.01 = phi i32* [ %1, %3 ], [ %13, %12 ], !psr.id !456
  %.0 = phi i32 [ %0, %3 ], [ %10, %12 ], !psr.id !457
  call void @llvm.dbg.value(metadata i32 %.0, metadata !426, metadata !DIExpression()), !dbg !427, !psr.id !458
  call void @llvm.dbg.value(metadata i32* %.01, metadata !429, metadata !DIExpression()), !dbg !427, !psr.id !459
  %10 = add i32 %.0, -1, !dbg !460, !psr.id !461
  call void @llvm.dbg.value(metadata i32 %10, metadata !426, metadata !DIExpression()), !dbg !427, !psr.id !462
  %11 = icmp ugt i32 %.0, 0, !dbg !463, !psr.id !464
  br i1 %11, label %12, label %14, !dbg !454, !psr.id !465

12:                                               ; preds = %9
  call void @process_block_unit(i32* %4, i32* %5, i32* %.01), !dbg !466, !psr.id !468
  %13 = getelementptr inbounds i32, i32* %.01, i64 96, !dbg !469, !psr.id !470
  call void @llvm.dbg.value(metadata i32* %13, metadata !429, metadata !DIExpression()), !dbg !427, !psr.id !471
  br label %9, !dbg !454, !llvm.loop !472, !psr.id !474

14:                                               ; preds = %9
  call void @br_des_do_invIP(i32* %4, i32* %5), !dbg !475, !psr.id !476
  %15 = load i32, i32* %4, align 4, !dbg !477, !psr.id !478
  call void @br_enc32be(i8* %2, i32 %15), !dbg !479, !psr.id !480
  %16 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !481, !psr.id !482
  %17 = load i32, i32* %5, align 4, !dbg !483, !psr.id !484
  call void @br_enc32be(i8* %16, i32 %17), !dbg !485, !psr.id !486
  ret void, !dbg !487, !psr.id !488
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !489 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !493, metadata !DIExpression()), !dbg !494, !psr.id !495
  call void @llvm.dbg.value(metadata i8* %0, metadata !496, metadata !DIExpression()), !dbg !494, !psr.id !497
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !498, !psr.id !499
  %3 = load i8, i8* %2, align 1, !dbg !498, !psr.id !500
  %4 = zext i8 %3 to i32, !dbg !501, !psr.id !502
  %5 = shl i32 %4, 24, !dbg !503, !psr.id !504
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !505, !psr.id !506
  %7 = load i8, i8* %6, align 1, !dbg !505, !psr.id !507
  %8 = zext i8 %7 to i32, !dbg !508, !psr.id !509
  %9 = shl i32 %8, 16, !dbg !510, !psr.id !511
  %10 = or i32 %5, %9, !dbg !512, !psr.id !513
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !514, !psr.id !515
  %12 = load i8, i8* %11, align 1, !dbg !514, !psr.id !516
  %13 = zext i8 %12 to i32, !dbg !517, !psr.id !518
  %14 = shl i32 %13, 8, !dbg !519, !psr.id !520
  %15 = or i32 %10, %14, !dbg !521, !psr.id !522
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !523, !psr.id !524
  %17 = load i8, i8* %16, align 1, !dbg !523, !psr.id !525
  %18 = zext i8 %17 to i32, !dbg !526, !psr.id !527
  %19 = or i32 %15, %18, !dbg !528, !psr.id !529
  ret i32 %19, !dbg !530, !psr.id !531
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_block_unit(i32* %0, i32* %1, i32* %2) #0 !dbg !532 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !535, metadata !DIExpression()), !dbg !536, !psr.id !537
  call void @llvm.dbg.value(metadata i32* %1, metadata !538, metadata !DIExpression()), !dbg !536, !psr.id !539
  call void @llvm.dbg.value(metadata i32* %2, metadata !540, metadata !DIExpression()), !dbg !536, !psr.id !541
  %4 = load i32, i32* %0, align 4, !dbg !542, !psr.id !543
  call void @llvm.dbg.value(metadata i32 %4, metadata !544, metadata !DIExpression()), !dbg !536, !psr.id !545
  %5 = load i32, i32* %1, align 4, !dbg !546, !psr.id !547
  call void @llvm.dbg.value(metadata i32 %5, metadata !548, metadata !DIExpression()), !dbg !536, !psr.id !549
  call void @llvm.dbg.value(metadata i32 0, metadata !550, metadata !DIExpression()), !dbg !536, !psr.id !551
  br label %6, !dbg !552, !psr.id !554

6:                                                ; preds = %12, %3
  %.03 = phi i32 [ 0, %3 ], [ %13, %12 ], !dbg !555, !psr.id !556
  %.02 = phi i32* [ %2, %3 ], [ %11, %12 ], !psr.id !557
  %.01 = phi i32 [ %4, %3 ], [ %.0, %12 ], !dbg !536, !psr.id !558
  %.0 = phi i32 [ %5, %3 ], [ %10, %12 ], !dbg !536, !psr.id !559
  call void @llvm.dbg.value(metadata i32 %.0, metadata !548, metadata !DIExpression()), !dbg !536, !psr.id !560
  call void @llvm.dbg.value(metadata i32 %.01, metadata !544, metadata !DIExpression()), !dbg !536, !psr.id !561
  call void @llvm.dbg.value(metadata i32* %.02, metadata !540, metadata !DIExpression()), !dbg !536, !psr.id !562
  call void @llvm.dbg.value(metadata i32 %.03, metadata !550, metadata !DIExpression()), !dbg !536, !psr.id !563
  %7 = icmp slt i32 %.03, 16, !dbg !564, !psr.id !566
  br i1 %7, label %8, label %14, !dbg !567, !psr.id !568

8:                                                ; preds = %6
  %9 = call i32 @Fconf(i32 %.0, i32* %.02), !dbg !569, !psr.id !571
  %10 = xor i32 %.01, %9, !dbg !572, !psr.id !573
  call void @llvm.dbg.value(metadata i32 %10, metadata !574, metadata !DIExpression()), !dbg !575, !psr.id !576
  call void @llvm.dbg.value(metadata i32 %.0, metadata !544, metadata !DIExpression()), !dbg !536, !psr.id !577
  call void @llvm.dbg.value(metadata i32 %10, metadata !548, metadata !DIExpression()), !dbg !536, !psr.id !578
  %11 = getelementptr inbounds i32, i32* %.02, i64 6, !dbg !579, !psr.id !580
  call void @llvm.dbg.value(metadata i32* %11, metadata !540, metadata !DIExpression()), !dbg !536, !psr.id !581
  br label %12, !dbg !582, !psr.id !583

12:                                               ; preds = %8
  %13 = add nsw i32 %.03, 1, !dbg !584, !psr.id !585
  call void @llvm.dbg.value(metadata i32 %13, metadata !550, metadata !DIExpression()), !dbg !536, !psr.id !586
  br label %6, !dbg !587, !llvm.loop !588, !psr.id !590

14:                                               ; preds = %6
  store i32 %.0, i32* %0, align 4, !dbg !591, !psr.id !592
  store i32 %.01, i32* %1, align 4, !dbg !593, !psr.id !594
  ret void, !dbg !595, !psr.id !596
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !597 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !600, metadata !DIExpression()), !dbg !601, !psr.id !602
  call void @llvm.dbg.value(metadata i32 %1, metadata !603, metadata !DIExpression()), !dbg !601, !psr.id !604
  call void @llvm.dbg.value(metadata i8* %0, metadata !605, metadata !DIExpression()), !dbg !601, !psr.id !606
  %3 = lshr i32 %1, 24, !dbg !607, !psr.id !608
  %4 = trunc i32 %3 to i8, !dbg !609, !psr.id !610
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !611, !psr.id !612
  store i8 %4, i8* %5, align 1, !dbg !613, !psr.id !614
  %6 = lshr i32 %1, 16, !dbg !615, !psr.id !616
  %7 = trunc i32 %6 to i8, !dbg !617, !psr.id !618
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !619, !psr.id !620
  store i8 %7, i8* %8, align 1, !dbg !621, !psr.id !622
  %9 = lshr i32 %1, 8, !dbg !623, !psr.id !624
  %10 = trunc i32 %9 to i8, !dbg !625, !psr.id !626
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !627, !psr.id !628
  store i8 %10, i8* %11, align 1, !dbg !629, !psr.id !630
  %12 = trunc i32 %1 to i8, !dbg !631, !psr.id !632
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !633, !psr.id !634
  store i8 %12, i8* %13, align 1, !dbg !635, !psr.id !636
  ret void, !dbg !637, !psr.id !638
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fconf(i32 %0, i32* %1) #0 !dbg !639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !642, metadata !DIExpression()), !dbg !643, !psr.id !644
  call void @llvm.dbg.value(metadata i32* %1, metadata !645, metadata !DIExpression()), !dbg !643, !psr.id !646
  %3 = and i32 %0, 286331153, !dbg !647, !psr.id !648
  call void @llvm.dbg.value(metadata i32 %3, metadata !649, metadata !DIExpression()), !dbg !643, !psr.id !650
  %4 = lshr i32 %0, 1, !dbg !651, !psr.id !652
  %5 = and i32 %4, 286331153, !dbg !653, !psr.id !654
  call void @llvm.dbg.value(metadata i32 %5, metadata !655, metadata !DIExpression()), !dbg !643, !psr.id !656
  %6 = lshr i32 %0, 2, !dbg !657, !psr.id !658
  %7 = and i32 %6, 286331153, !dbg !659, !psr.id !660
  call void @llvm.dbg.value(metadata i32 %7, metadata !661, metadata !DIExpression()), !dbg !643, !psr.id !662
  %8 = lshr i32 %0, 3, !dbg !663, !psr.id !664
  %9 = and i32 %8, 286331153, !dbg !665, !psr.id !666
  call void @llvm.dbg.value(metadata i32 %9, metadata !667, metadata !DIExpression()), !dbg !643, !psr.id !668
  %10 = shl i32 %3, 4, !dbg !669, !psr.id !670
  %11 = sub i32 %10, %3, !dbg !671, !psr.id !672
  call void @llvm.dbg.value(metadata i32 %11, metadata !649, metadata !DIExpression()), !dbg !643, !psr.id !673
  %12 = shl i32 %5, 4, !dbg !674, !psr.id !675
  %13 = sub i32 %12, %5, !dbg !676, !psr.id !677
  call void @llvm.dbg.value(metadata i32 %13, metadata !655, metadata !DIExpression()), !dbg !643, !psr.id !678
  %14 = shl i32 %7, 4, !dbg !679, !psr.id !680
  %15 = sub i32 %14, %7, !dbg !681, !psr.id !682
  call void @llvm.dbg.value(metadata i32 %15, metadata !661, metadata !DIExpression()), !dbg !643, !psr.id !683
  %16 = shl i32 %9, 4, !dbg !684, !psr.id !685
  %17 = sub i32 %16, %9, !dbg !686, !psr.id !687
  call void @llvm.dbg.value(metadata i32 %17, metadata !667, metadata !DIExpression()), !dbg !643, !psr.id !688
  %18 = shl i32 %17, 4, !dbg !689, !psr.id !690
  %19 = lshr i32 %17, 28, !dbg !691, !psr.id !692
  %20 = or i32 %18, %19, !dbg !693, !psr.id !694
  call void @llvm.dbg.value(metadata i32 %20, metadata !695, metadata !DIExpression()), !dbg !643, !psr.id !696
  %21 = lshr i32 %11, 4, !dbg !697, !psr.id !698
  %22 = shl i32 %11, 28, !dbg !699, !psr.id !700
  %23 = or i32 %21, %22, !dbg !701, !psr.id !702
  call void @llvm.dbg.value(metadata i32 %23, metadata !703, metadata !DIExpression()), !dbg !643, !psr.id !704
  %24 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !705, !psr.id !706
  %25 = load i32, i32* %24, align 4, !dbg !705, !psr.id !707
  %26 = xor i32 %20, %25, !dbg !708, !psr.id !709
  call void @llvm.dbg.value(metadata i32 %26, metadata !695, metadata !DIExpression()), !dbg !643, !psr.id !710
  %27 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !711, !psr.id !712
  %28 = load i32, i32* %27, align 4, !dbg !711, !psr.id !713
  %29 = xor i32 %11, %28, !dbg !714, !psr.id !715
  call void @llvm.dbg.value(metadata i32 %29, metadata !649, metadata !DIExpression()), !dbg !643, !psr.id !716
  %30 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !717, !psr.id !718
  %31 = load i32, i32* %30, align 4, !dbg !717, !psr.id !719
  %32 = xor i32 %13, %31, !dbg !720, !psr.id !721
  call void @llvm.dbg.value(metadata i32 %32, metadata !655, metadata !DIExpression()), !dbg !643, !psr.id !722
  %33 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !723, !psr.id !724
  %34 = load i32, i32* %33, align 4, !dbg !723, !psr.id !725
  %35 = xor i32 %15, %34, !dbg !726, !psr.id !727
  call void @llvm.dbg.value(metadata i32 %35, metadata !661, metadata !DIExpression()), !dbg !643, !psr.id !728
  %36 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !729, !psr.id !730
  %37 = load i32, i32* %36, align 4, !dbg !729, !psr.id !731
  %38 = xor i32 %17, %37, !dbg !732, !psr.id !733
  call void @llvm.dbg.value(metadata i32 %38, metadata !667, metadata !DIExpression()), !dbg !643, !psr.id !734
  %39 = getelementptr inbounds i32, i32* %1, i64 5, !dbg !735, !psr.id !736
  %40 = load i32, i32* %39, align 4, !dbg !735, !psr.id !737
  %41 = xor i32 %23, %40, !dbg !738, !psr.id !739
  call void @llvm.dbg.value(metadata i32 %41, metadata !703, metadata !DIExpression()), !dbg !643, !psr.id !740
  %42 = and i32 %26, -327498084, !dbg !741, !psr.id !742
  %43 = xor i32 -274256819, %42, !dbg !743, !psr.id !744
  call void @llvm.dbg.value(metadata i32 %43, metadata !745, metadata !DIExpression()), !dbg !643, !psr.id !746
  %44 = and i32 %26, 1343207457, !dbg !747, !psr.id !748
  %45 = xor i32 -1364529665, %44, !dbg !749, !psr.id !750
  call void @llvm.dbg.value(metadata i32 %45, metadata !751, metadata !DIExpression()), !dbg !643, !psr.id !752
  %46 = and i32 %26, 1089447945, !dbg !753, !psr.id !754
  %47 = xor i32 926508645, %46, !dbg !755, !psr.id !756
  call void @llvm.dbg.value(metadata i32 %47, metadata !757, metadata !DIExpression()), !dbg !643, !psr.id !758
  %48 = and i32 %26, -1511257304, !dbg !759, !psr.id !760
  %49 = xor i32 1758967859, %48, !dbg !761, !psr.id !762
  call void @llvm.dbg.value(metadata i32 %49, metadata !763, metadata !DIExpression()), !dbg !643, !psr.id !764
  %50 = and i32 %26, 623704096, !dbg !765, !psr.id !766
  %51 = xor i32 -909683269, %50, !dbg !767, !psr.id !768
  call void @llvm.dbg.value(metadata i32 %51, metadata !769, metadata !DIExpression()), !dbg !643, !psr.id !770
  %52 = and i32 %26, 1075861505, !dbg !771, !psr.id !772
  %53 = xor i32 1945908742, %52, !dbg !773, !psr.id !774
  call void @llvm.dbg.value(metadata i32 %53, metadata !775, metadata !DIExpression()), !dbg !643, !psr.id !776
  %54 = and i32 %26, -501155543, !dbg !777, !psr.id !778
  %55 = xor i32 -1566529256, %54, !dbg !779, !psr.id !780
  call void @llvm.dbg.value(metadata i32 %55, metadata !781, metadata !DIExpression()), !dbg !643, !psr.id !782
  %56 = and i32 %26, 1151597025, !dbg !783, !psr.id !784
  %57 = xor i32 -2111652464, %56, !dbg !785, !psr.id !786
  call void @llvm.dbg.value(metadata i32 %57, metadata !787, metadata !DIExpression()), !dbg !643, !psr.id !788
  %58 = and i32 %26, 2035224650, !dbg !789, !psr.id !790
  %59 = xor i32 -692671369, %58, !dbg !791, !psr.id !792
  call void @llvm.dbg.value(metadata i32 %59, metadata !793, metadata !DIExpression()), !dbg !643, !psr.id !794
  %60 = and i32 %26, 40841739, !dbg !795, !psr.id !796
  %61 = xor i32 812199948, %60, !dbg !797, !psr.id !798
  call void @llvm.dbg.value(metadata i32 %61, metadata !799, metadata !DIExpression()), !dbg !643, !psr.id !800
  %62 = and i32 %26, 1983950874, !dbg !801, !psr.id !802
  %63 = xor i32 1826674124, %62, !dbg !803, !psr.id !804
  call void @llvm.dbg.value(metadata i32 %63, metadata !805, metadata !DIExpression()), !dbg !643, !psr.id !806
  %64 = and i32 %26, 596579698, !dbg !807, !psr.id !808
  %65 = xor i32 1504289325, %64, !dbg !809, !psr.id !810
  call void @llvm.dbg.value(metadata i32 %65, metadata !811, metadata !DIExpression()), !dbg !643, !psr.id !812
  %66 = and i32 %26, 2053357699, !dbg !813, !psr.id !814
  %67 = xor i32 -1402139692, %66, !dbg !815, !psr.id !816
  call void @llvm.dbg.value(metadata i32 %67, metadata !817, metadata !DIExpression()), !dbg !643, !psr.id !818
  %68 = and i32 %26, 298622976, !dbg !819, !psr.id !820
  %69 = xor i32 566768128, %68, !dbg !821, !psr.id !822
  call void @llvm.dbg.value(metadata i32 %69, metadata !823, metadata !DIExpression()), !dbg !643, !psr.id !824
  %70 = and i32 %26, 539978154, !dbg !825, !psr.id !826
  %71 = xor i32 -1595530872, %70, !dbg !827, !psr.id !828
  call void @llvm.dbg.value(metadata i32 %71, metadata !829, metadata !DIExpression()), !dbg !643, !psr.id !830
  %72 = and i32 %26, 1370700777, !dbg !831, !psr.id !832
  %73 = xor i32 -1350736550, %72, !dbg !833, !psr.id !834
  call void @llvm.dbg.value(metadata i32 %73, metadata !835, metadata !DIExpression()), !dbg !643, !psr.id !836
  %74 = and i32 %26, 990898350, !dbg !837, !psr.id !838
  %75 = xor i32 -266958173, %74, !dbg !839, !psr.id !840
  call void @llvm.dbg.value(metadata i32 %75, metadata !841, metadata !DIExpression()), !dbg !643, !psr.id !842
  %76 = and i32 %26, -1866495978, !dbg !843, !psr.id !844
  %77 = xor i32 -1867894586, %76, !dbg !845, !psr.id !846
  call void @llvm.dbg.value(metadata i32 %77, metadata !847, metadata !DIExpression()), !dbg !643, !psr.id !848
  %78 = and i32 %26, 165891995, !dbg !849, !psr.id !850
  %79 = xor i32 1521644810, %78, !dbg !851, !psr.id !852
  call void @llvm.dbg.value(metadata i32 %79, metadata !853, metadata !DIExpression()), !dbg !643, !psr.id !854
  %80 = and i32 %26, 17022600, !dbg !855, !psr.id !856
  %81 = xor i32 1402060389, %80, !dbg !857, !psr.id !858
  call void @llvm.dbg.value(metadata i32 %81, metadata !859, metadata !DIExpression()), !dbg !643, !psr.id !860
  %82 = and i32 %26, 1236045349, !dbg !861, !psr.id !862
  %83 = xor i32 -1825100881, %82, !dbg !863, !psr.id !864
  call void @llvm.dbg.value(metadata i32 %83, metadata !865, metadata !DIExpression()), !dbg !643, !psr.id !866
  %84 = and i32 %26, -1842597571, !dbg !867, !psr.id !868
  %85 = xor i32 -225959668, %84, !dbg !869, !psr.id !870
  call void @llvm.dbg.value(metadata i32 %85, metadata !871, metadata !DIExpression()), !dbg !643, !psr.id !872
  %86 = and i32 %26, 1894724016, !dbg !873, !psr.id !874
  %87 = xor i32 -1844775488, %86, !dbg !875, !psr.id !876
  call void @llvm.dbg.value(metadata i32 %87, metadata !877, metadata !DIExpression()), !dbg !643, !psr.id !878
  %88 = and i32 %26, 1785753856, !dbg !879, !psr.id !880
  %89 = xor i32 1674777280, %88, !dbg !881, !psr.id !882
  call void @llvm.dbg.value(metadata i32 %89, metadata !883, metadata !DIExpression()), !dbg !643, !psr.id !884
  %90 = and i32 %26, -1183018991, !dbg !885, !psr.id !886
  %91 = xor i32 1400582150, %90, !dbg !887, !psr.id !888
  call void @llvm.dbg.value(metadata i32 %91, metadata !889, metadata !DIExpression()), !dbg !643, !psr.id !890
  %92 = and i32 %26, -1558132391, !dbg !891, !psr.id !892
  %93 = xor i32 -1561349979, %92, !dbg !893, !psr.id !894
  call void @llvm.dbg.value(metadata i32 %93, metadata !895, metadata !DIExpression()), !dbg !643, !psr.id !896
  %94 = and i32 %26, 1856023370, !dbg !897, !psr.id !898
  %95 = xor i32 -1131440475, %94, !dbg !899, !psr.id !900
  call void @llvm.dbg.value(metadata i32 %95, metadata !901, metadata !DIExpression()), !dbg !643, !psr.id !902
  %96 = and i32 %26, 1767103992, !dbg !903, !psr.id !904
  %97 = xor i32 -86935899, %96, !dbg !905, !psr.id !906
  call void @llvm.dbg.value(metadata i32 %97, metadata !907, metadata !DIExpression()), !dbg !643, !psr.id !908
  %98 = and i32 %26, -145801685, !dbg !909, !psr.id !910
  %99 = xor i32 1717179555, %98, !dbg !911, !psr.id !912
  call void @llvm.dbg.value(metadata i32 %99, metadata !913, metadata !DIExpression()), !dbg !643, !psr.id !914
  %100 = and i32 %26, -265261907, !dbg !915, !psr.id !916
  %101 = xor i32 -219156276, %100, !dbg !917, !psr.id !918
  call void @llvm.dbg.value(metadata i32 %101, metadata !919, metadata !DIExpression()), !dbg !643, !psr.id !920
  %102 = and i32 %29, %45, !dbg !921, !psr.id !922
  %103 = xor i32 %43, %102, !dbg !923, !psr.id !924
  call void @llvm.dbg.value(metadata i32 %103, metadata !745, metadata !DIExpression()), !dbg !643, !psr.id !925
  %104 = and i32 %29, %49, !dbg !926, !psr.id !927
  %105 = xor i32 %47, %104, !dbg !928, !psr.id !929
  call void @llvm.dbg.value(metadata i32 %105, metadata !751, metadata !DIExpression()), !dbg !643, !psr.id !930
  %106 = and i32 %29, %53, !dbg !931, !psr.id !932
  %107 = xor i32 %51, %106, !dbg !933, !psr.id !934
  call void @llvm.dbg.value(metadata i32 %107, metadata !757, metadata !DIExpression()), !dbg !643, !psr.id !935
  %108 = and i32 %29, %57, !dbg !936, !psr.id !937
  %109 = xor i32 %55, %108, !dbg !938, !psr.id !939
  call void @llvm.dbg.value(metadata i32 %109, metadata !763, metadata !DIExpression()), !dbg !643, !psr.id !940
  %110 = and i32 %29, %61, !dbg !941, !psr.id !942
  %111 = xor i32 %59, %110, !dbg !943, !psr.id !944
  call void @llvm.dbg.value(metadata i32 %111, metadata !769, metadata !DIExpression()), !dbg !643, !psr.id !945
  %112 = and i32 %29, %65, !dbg !946, !psr.id !947
  %113 = xor i32 %63, %112, !dbg !948, !psr.id !949
  call void @llvm.dbg.value(metadata i32 %113, metadata !775, metadata !DIExpression()), !dbg !643, !psr.id !950
  %114 = and i32 %29, %69, !dbg !951, !psr.id !952
  %115 = xor i32 %67, %114, !dbg !953, !psr.id !954
  call void @llvm.dbg.value(metadata i32 %115, metadata !781, metadata !DIExpression()), !dbg !643, !psr.id !955
  call void @llvm.dbg.value(metadata i32 %71, metadata !787, metadata !DIExpression()), !dbg !643, !psr.id !956
  %116 = and i32 %29, %75, !dbg !957, !psr.id !958
  %117 = xor i32 %73, %116, !dbg !959, !psr.id !960
  call void @llvm.dbg.value(metadata i32 %117, metadata !793, metadata !DIExpression()), !dbg !643, !psr.id !961
  %118 = and i32 %29, %79, !dbg !962, !psr.id !963
  %119 = xor i32 %77, %118, !dbg !964, !psr.id !965
  call void @llvm.dbg.value(metadata i32 %119, metadata !799, metadata !DIExpression()), !dbg !643, !psr.id !966
  %120 = and i32 %29, %83, !dbg !967, !psr.id !968
  %121 = xor i32 %81, %120, !dbg !969, !psr.id !970
  call void @llvm.dbg.value(metadata i32 %121, metadata !805, metadata !DIExpression()), !dbg !643, !psr.id !971
  %122 = and i32 %29, %87, !dbg !972, !psr.id !973
  %123 = xor i32 %85, %122, !dbg !974, !psr.id !975
  call void @llvm.dbg.value(metadata i32 %123, metadata !811, metadata !DIExpression()), !dbg !643, !psr.id !976
  %124 = and i32 %29, %91, !dbg !977, !psr.id !978
  %125 = xor i32 %89, %124, !dbg !979, !psr.id !980
  call void @llvm.dbg.value(metadata i32 %125, metadata !817, metadata !DIExpression()), !dbg !643, !psr.id !981
  %126 = and i32 %29, %95, !dbg !982, !psr.id !983
  %127 = xor i32 %93, %126, !dbg !984, !psr.id !985
  call void @llvm.dbg.value(metadata i32 %127, metadata !823, metadata !DIExpression()), !dbg !643, !psr.id !986
  %128 = and i32 %29, %99, !dbg !987, !psr.id !988
  %129 = xor i32 %97, %128, !dbg !989, !psr.id !990
  call void @llvm.dbg.value(metadata i32 %129, metadata !829, metadata !DIExpression()), !dbg !643, !psr.id !991
  call void @llvm.dbg.value(metadata i32 %101, metadata !992, metadata !DIExpression()), !dbg !643, !psr.id !993
  %130 = and i32 %32, %105, !dbg !994, !psr.id !995
  %131 = xor i32 %103, %130, !dbg !996, !psr.id !997
  call void @llvm.dbg.value(metadata i32 %131, metadata !745, metadata !DIExpression()), !dbg !643, !psr.id !998
  %132 = and i32 %32, %109, !dbg !999, !psr.id !1000
  %133 = xor i32 %107, %132, !dbg !1001, !psr.id !1002
  call void @llvm.dbg.value(metadata i32 %133, metadata !751, metadata !DIExpression()), !dbg !643, !psr.id !1003
  %134 = and i32 %32, %113, !dbg !1004, !psr.id !1005
  %135 = xor i32 %111, %134, !dbg !1006, !psr.id !1007
  call void @llvm.dbg.value(metadata i32 %135, metadata !757, metadata !DIExpression()), !dbg !643, !psr.id !1008
  %136 = and i32 %32, %71, !dbg !1009, !psr.id !1010
  %137 = xor i32 %115, %136, !dbg !1011, !psr.id !1012
  call void @llvm.dbg.value(metadata i32 %137, metadata !763, metadata !DIExpression()), !dbg !643, !psr.id !1013
  %138 = and i32 %32, %119, !dbg !1014, !psr.id !1015
  %139 = xor i32 %117, %138, !dbg !1016, !psr.id !1017
  call void @llvm.dbg.value(metadata i32 %139, metadata !769, metadata !DIExpression()), !dbg !643, !psr.id !1018
  %140 = and i32 %32, %123, !dbg !1019, !psr.id !1020
  %141 = xor i32 %121, %140, !dbg !1021, !psr.id !1022
  call void @llvm.dbg.value(metadata i32 %141, metadata !775, metadata !DIExpression()), !dbg !643, !psr.id !1023
  %142 = and i32 %32, %127, !dbg !1024, !psr.id !1025
  %143 = xor i32 %125, %142, !dbg !1026, !psr.id !1027
  call void @llvm.dbg.value(metadata i32 %143, metadata !781, metadata !DIExpression()), !dbg !643, !psr.id !1028
  %144 = and i32 %32, %101, !dbg !1029, !psr.id !1030
  %145 = xor i32 %129, %144, !dbg !1031, !psr.id !1032
  call void @llvm.dbg.value(metadata i32 %145, metadata !787, metadata !DIExpression()), !dbg !643, !psr.id !1033
  %146 = and i32 %35, %133, !dbg !1034, !psr.id !1035
  %147 = xor i32 %131, %146, !dbg !1036, !psr.id !1037
  call void @llvm.dbg.value(metadata i32 %147, metadata !745, metadata !DIExpression()), !dbg !643, !psr.id !1038
  %148 = and i32 %35, %137, !dbg !1039, !psr.id !1040
  %149 = xor i32 %135, %148, !dbg !1041, !psr.id !1042
  call void @llvm.dbg.value(metadata i32 %149, metadata !751, metadata !DIExpression()), !dbg !643, !psr.id !1043
  %150 = and i32 %35, %141, !dbg !1044, !psr.id !1045
  %151 = xor i32 %139, %150, !dbg !1046, !psr.id !1047
  call void @llvm.dbg.value(metadata i32 %151, metadata !757, metadata !DIExpression()), !dbg !643, !psr.id !1048
  %152 = and i32 %35, %145, !dbg !1049, !psr.id !1050
  %153 = xor i32 %143, %152, !dbg !1051, !psr.id !1052
  call void @llvm.dbg.value(metadata i32 %153, metadata !763, metadata !DIExpression()), !dbg !643, !psr.id !1053
  %154 = and i32 %38, %149, !dbg !1054, !psr.id !1055
  %155 = xor i32 %147, %154, !dbg !1056, !psr.id !1057
  call void @llvm.dbg.value(metadata i32 %155, metadata !745, metadata !DIExpression()), !dbg !643, !psr.id !1058
  %156 = and i32 %38, %153, !dbg !1059, !psr.id !1060
  %157 = xor i32 %151, %156, !dbg !1061, !psr.id !1062
  call void @llvm.dbg.value(metadata i32 %157, metadata !751, metadata !DIExpression()), !dbg !643, !psr.id !1063
  %158 = and i32 %41, %157, !dbg !1064, !psr.id !1065
  %159 = xor i32 %155, %158, !dbg !1066, !psr.id !1067
  call void @llvm.dbg.value(metadata i32 %159, metadata !745, metadata !DIExpression()), !dbg !643, !psr.id !1068
  %160 = and i32 %159, 4, !dbg !1069, !psr.id !1070
  %161 = shl i32 %160, 3, !dbg !1071, !psr.id !1072
  call void @llvm.dbg.value(metadata i32 %161, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1074
  %162 = and i32 %159, 16384, !dbg !1075, !psr.id !1076
  %163 = shl i32 %162, 4, !dbg !1077, !psr.id !1078
  %164 = or i32 %161, %163, !dbg !1079, !psr.id !1080
  call void @llvm.dbg.value(metadata i32 %164, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1081
  %165 = and i32 %159, 302121248, !dbg !1082, !psr.id !1083
  %166 = call i32 @rotl(i32 %165, i32 5), !dbg !1084, !psr.id !1085
  %167 = or i32 %164, %166, !dbg !1086, !psr.id !1087
  call void @llvm.dbg.value(metadata i32 %167, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1088
  %168 = and i32 %159, 1048576, !dbg !1089, !psr.id !1090
  %169 = shl i32 %168, 6, !dbg !1091, !psr.id !1092
  %170 = or i32 %167, %169, !dbg !1093, !psr.id !1094
  call void @llvm.dbg.value(metadata i32 %170, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1095
  %171 = and i32 %159, 32768, !dbg !1096, !psr.id !1097
  %172 = shl i32 %171, 9, !dbg !1098, !psr.id !1099
  %173 = or i32 %170, %172, !dbg !1100, !psr.id !1101
  call void @llvm.dbg.value(metadata i32 %173, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1102
  %174 = and i32 %159, 67108864, !dbg !1103, !psr.id !1104
  %175 = lshr i32 %174, 22, !dbg !1105, !psr.id !1106
  %176 = or i32 %173, %175, !dbg !1107, !psr.id !1108
  call void @llvm.dbg.value(metadata i32 %176, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1109
  %177 = and i32 %159, 1, !dbg !1110, !psr.id !1111
  %178 = shl i32 %177, 11, !dbg !1112, !psr.id !1113
  %179 = or i32 %176, %178, !dbg !1114, !psr.id !1115
  call void @llvm.dbg.value(metadata i32 %179, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1116
  %180 = and i32 %159, 536871424, !dbg !1117, !psr.id !1118
  %181 = call i32 @rotl(i32 %180, i32 12), !dbg !1119, !psr.id !1120
  %182 = or i32 %179, %181, !dbg !1121, !psr.id !1122
  call void @llvm.dbg.value(metadata i32 %182, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1123
  %183 = and i32 %159, 2097152, !dbg !1124, !psr.id !1125
  %184 = lshr i32 %183, 19, !dbg !1126, !psr.id !1127
  %185 = or i32 %182, %184, !dbg !1128, !psr.id !1129
  call void @llvm.dbg.value(metadata i32 %185, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1130
  %186 = and i32 %159, 64, !dbg !1131, !psr.id !1132
  %187 = shl i32 %186, 14, !dbg !1133, !psr.id !1134
  %188 = or i32 %185, %187, !dbg !1135, !psr.id !1136
  call void @llvm.dbg.value(metadata i32 %188, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1137
  %189 = and i32 %159, 65536, !dbg !1138, !psr.id !1139
  %190 = shl i32 %189, 15, !dbg !1140, !psr.id !1141
  %191 = or i32 %188, %190, !dbg !1142, !psr.id !1143
  call void @llvm.dbg.value(metadata i32 %191, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1144
  %192 = and i32 %159, 2, !dbg !1145, !psr.id !1146
  %193 = shl i32 %192, 16, !dbg !1147, !psr.id !1148
  %194 = or i32 %191, %193, !dbg !1149, !psr.id !1150
  call void @llvm.dbg.value(metadata i32 %194, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1151
  %195 = and i32 %159, 1082136576, !dbg !1152, !psr.id !1153
  %196 = call i32 @rotl(i32 %195, i32 17), !dbg !1154, !psr.id !1155
  %197 = or i32 %194, %196, !dbg !1156, !psr.id !1157
  call void @llvm.dbg.value(metadata i32 %197, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1158
  %198 = and i32 %159, 524288, !dbg !1159, !psr.id !1160
  %199 = lshr i32 %198, 13, !dbg !1161, !psr.id !1162
  %200 = or i32 %197, %199, !dbg !1163, !psr.id !1164
  call void @llvm.dbg.value(metadata i32 %200, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1165
  %201 = and i32 %159, 16, !dbg !1166, !psr.id !1167
  %202 = shl i32 %201, 21, !dbg !1168, !psr.id !1169
  %203 = or i32 %200, %202, !dbg !1170, !psr.id !1171
  call void @llvm.dbg.value(metadata i32 %203, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1172
  %204 = and i32 %159, 16777216, !dbg !1173, !psr.id !1174
  %205 = lshr i32 %204, 10, !dbg !1175, !psr.id !1176
  %206 = or i32 %203, %205, !dbg !1177, !psr.id !1178
  call void @llvm.dbg.value(metadata i32 %206, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1179
  %207 = and i32 %159, -2013265912, !dbg !1180, !psr.id !1181
  %208 = call i32 @rotl(i32 %207, i32 24), !dbg !1182, !psr.id !1183
  %209 = or i32 %206, %208, !dbg !1184, !psr.id !1185
  call void @llvm.dbg.value(metadata i32 %209, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1186
  %210 = and i32 %159, 1152, !dbg !1187, !psr.id !1188
  %211 = lshr i32 %210, 7, !dbg !1189, !psr.id !1190
  %212 = or i32 %209, %211, !dbg !1191, !psr.id !1192
  call void @llvm.dbg.value(metadata i32 %212, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1193
  %213 = and i32 %159, 4464640, !dbg !1194, !psr.id !1195
  %214 = lshr i32 %213, 6, !dbg !1196, !psr.id !1197
  %215 = or i32 %212, %214, !dbg !1198, !psr.id !1199
  call void @llvm.dbg.value(metadata i32 %215, metadata !1073, metadata !DIExpression()), !dbg !643, !psr.id !1200
  ret i32 %215, !dbg !1201, !psr.id !1202
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotl(i32 %0, i32 %1) #0 !dbg !1203 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1206, metadata !DIExpression()), !dbg !1207, !psr.id !1208
  call void @llvm.dbg.value(metadata i32 %1, metadata !1209, metadata !DIExpression()), !dbg !1207, !psr.id !1210
  %3 = shl i32 %0, %1, !dbg !1211, !psr.id !1212
  %4 = sub nsw i32 32, %1, !dbg !1213, !psr.id !1214
  %5 = lshr i32 %0, %4, !dbg !1215, !psr.id !1216
  %6 = or i32 %3, %5, !dbg !1217, !psr.id !1218
  ret i32 %6, !dbg !1219, !psr.id !1220
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_skey_expand(i32* %0, i32 %1, i32* %2) #0 !dbg !1221 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1224, metadata !DIExpression()), !dbg !1225, !psr.id !1226
  call void @llvm.dbg.value(metadata i32 %1, metadata !1227, metadata !DIExpression()), !dbg !1225, !psr.id !1228
  call void @llvm.dbg.value(metadata i32* %2, metadata !1229, metadata !DIExpression()), !dbg !1225, !psr.id !1230
  %4 = shl i32 %1, 4, !dbg !1231, !psr.id !1232
  call void @llvm.dbg.value(metadata i32 %4, metadata !1227, metadata !DIExpression()), !dbg !1225, !psr.id !1233
  br label %5, !dbg !1234, !psr.id !1235

5:                                                ; preds = %8, %3
  %.02 = phi i32* [ %2, %3 ], [ %30, %8 ], !psr.id !1236
  %.01 = phi i32 [ %4, %3 ], [ %6, %8 ], !dbg !1225, !psr.id !1237
  %.0 = phi i32* [ %0, %3 ], [ %40, %8 ], !psr.id !1238
  call void @llvm.dbg.value(metadata i32* %.0, metadata !1224, metadata !DIExpression()), !dbg !1225, !psr.id !1239
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1227, metadata !DIExpression()), !dbg !1225, !psr.id !1240
  call void @llvm.dbg.value(metadata i32* %.02, metadata !1229, metadata !DIExpression()), !dbg !1225, !psr.id !1241
  %6 = add i32 %.01, -1, !dbg !1242, !psr.id !1243
  call void @llvm.dbg.value(metadata i32 %6, metadata !1227, metadata !DIExpression()), !dbg !1225, !psr.id !1244
  %7 = icmp ugt i32 %.01, 0, !dbg !1245, !psr.id !1246
  br i1 %7, label %8, label %41, !dbg !1234, !psr.id !1247

8:                                                ; preds = %5
  %9 = getelementptr inbounds i32, i32* %.02, i32 1, !dbg !1248, !psr.id !1250
  call void @llvm.dbg.value(metadata i32* %9, metadata !1229, metadata !DIExpression()), !dbg !1225, !psr.id !1251
  %10 = load i32, i32* %.02, align 4, !dbg !1252, !psr.id !1253
  call void @llvm.dbg.value(metadata i32 %10, metadata !1254, metadata !DIExpression()), !dbg !1255, !psr.id !1256
  %11 = and i32 %10, 286331153, !dbg !1257, !psr.id !1258
  call void @llvm.dbg.value(metadata i32 %11, metadata !1259, metadata !DIExpression()), !dbg !1255, !psr.id !1260
  %12 = lshr i32 %10, 1, !dbg !1261, !psr.id !1262
  %13 = and i32 %12, 286331153, !dbg !1263, !psr.id !1264
  call void @llvm.dbg.value(metadata i32 %13, metadata !1265, metadata !DIExpression()), !dbg !1255, !psr.id !1266
  %14 = lshr i32 %10, 2, !dbg !1267, !psr.id !1268
  %15 = and i32 %14, 286331153, !dbg !1269, !psr.id !1270
  call void @llvm.dbg.value(metadata i32 %15, metadata !1271, metadata !DIExpression()), !dbg !1255, !psr.id !1272
  %16 = lshr i32 %10, 3, !dbg !1273, !psr.id !1274
  %17 = and i32 %16, 286331153, !dbg !1275, !psr.id !1276
  call void @llvm.dbg.value(metadata i32 %17, metadata !1277, metadata !DIExpression()), !dbg !1255, !psr.id !1278
  %18 = shl i32 %11, 4, !dbg !1279, !psr.id !1280
  %19 = sub i32 %18, %11, !dbg !1281, !psr.id !1282
  %20 = getelementptr inbounds i32, i32* %.0, i32 1, !dbg !1283, !psr.id !1284
  call void @llvm.dbg.value(metadata i32* %20, metadata !1224, metadata !DIExpression()), !dbg !1225, !psr.id !1285
  store i32 %19, i32* %.0, align 4, !dbg !1286, !psr.id !1287
  %21 = shl i32 %13, 4, !dbg !1288, !psr.id !1289
  %22 = sub i32 %21, %13, !dbg !1290, !psr.id !1291
  %23 = getelementptr inbounds i32, i32* %20, i32 1, !dbg !1292, !psr.id !1293
  call void @llvm.dbg.value(metadata i32* %23, metadata !1224, metadata !DIExpression()), !dbg !1225, !psr.id !1294
  store i32 %22, i32* %20, align 4, !dbg !1295, !psr.id !1296
  %24 = shl i32 %15, 4, !dbg !1297, !psr.id !1298
  %25 = sub i32 %24, %15, !dbg !1299, !psr.id !1300
  %26 = getelementptr inbounds i32, i32* %23, i32 1, !dbg !1301, !psr.id !1302
  call void @llvm.dbg.value(metadata i32* %26, metadata !1224, metadata !DIExpression()), !dbg !1225, !psr.id !1303
  store i32 %25, i32* %23, align 4, !dbg !1304, !psr.id !1305
  %27 = shl i32 %17, 4, !dbg !1306, !psr.id !1307
  %28 = sub i32 %27, %17, !dbg !1308, !psr.id !1309
  %29 = getelementptr inbounds i32, i32* %26, i32 1, !dbg !1310, !psr.id !1311
  call void @llvm.dbg.value(metadata i32* %29, metadata !1224, metadata !DIExpression()), !dbg !1225, !psr.id !1312
  store i32 %28, i32* %26, align 4, !dbg !1313, !psr.id !1314
  %30 = getelementptr inbounds i32, i32* %9, i32 1, !dbg !1315, !psr.id !1316
  call void @llvm.dbg.value(metadata i32* %30, metadata !1229, metadata !DIExpression()), !dbg !1225, !psr.id !1317
  %31 = load i32, i32* %9, align 4, !dbg !1318, !psr.id !1319
  call void @llvm.dbg.value(metadata i32 %31, metadata !1254, metadata !DIExpression()), !dbg !1255, !psr.id !1320
  %32 = and i32 %31, 286331153, !dbg !1321, !psr.id !1322
  call void @llvm.dbg.value(metadata i32 %32, metadata !1259, metadata !DIExpression()), !dbg !1255, !psr.id !1323
  %33 = lshr i32 %31, 1, !dbg !1324, !psr.id !1325
  %34 = and i32 %33, 286331153, !dbg !1326, !psr.id !1327
  call void @llvm.dbg.value(metadata i32 %34, metadata !1265, metadata !DIExpression()), !dbg !1255, !psr.id !1328
  %35 = shl i32 %32, 4, !dbg !1329, !psr.id !1330
  %36 = sub i32 %35, %32, !dbg !1331, !psr.id !1332
  %37 = getelementptr inbounds i32, i32* %29, i32 1, !dbg !1333, !psr.id !1334
  call void @llvm.dbg.value(metadata i32* %37, metadata !1224, metadata !DIExpression()), !dbg !1225, !psr.id !1335
  store i32 %36, i32* %29, align 4, !dbg !1336, !psr.id !1337
  %38 = shl i32 %34, 4, !dbg !1338, !psr.id !1339
  %39 = sub i32 %38, %34, !dbg !1340, !psr.id !1341
  %40 = getelementptr inbounds i32, i32* %37, i32 1, !dbg !1342, !psr.id !1343
  call void @llvm.dbg.value(metadata i32* %40, metadata !1224, metadata !DIExpression()), !dbg !1225, !psr.id !1344
  store i32 %39, i32* %37, align 4, !dbg !1345, !psr.id !1346
  br label %5, !dbg !1234, !llvm.loop !1347, !psr.id !1349

41:                                               ; preds = %5
  ret void, !dbg !1350, !psr.id !1351
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_cbcdec_init(%struct.br_des_ct_cbcdec_keys* %0, i8* %1, i64 %2) #0 !dbg !1352 {
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcdec_keys* %0, metadata !1362, metadata !DIExpression()), !dbg !1363, !psr.id !1364
  call void @llvm.dbg.value(metadata i8* %1, metadata !1365, metadata !DIExpression()), !dbg !1363, !psr.id !1366
  call void @llvm.dbg.value(metadata i64 %2, metadata !1367, metadata !DIExpression()), !dbg !1363, !psr.id !1368
  %4 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 0, !dbg !1369, !psr.id !1370
  store %struct.br_block_cbcdec_class_* @br_des_ct_cbcdec_vtable, %struct.br_block_cbcdec_class_** %4, align 8, !dbg !1371, !psr.id !1372
  %5 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1373, !psr.id !1374
  %6 = getelementptr inbounds [96 x i32], [96 x i32]* %5, i64 0, i64 0, !dbg !1375, !psr.id !1376
  %7 = call i32 @br_des_ct_keysched(i32* %6, i8* %1, i64 %2), !dbg !1377, !psr.id !1378
  %8 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 2, !dbg !1379, !psr.id !1380
  store i32 %7, i32* %8, align 8, !dbg !1381, !psr.id !1382
  %9 = icmp eq i64 %2, 8, !dbg !1383, !psr.id !1385
  br i1 %9, label %10, label %13, !dbg !1386, !psr.id !1387

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1388, !psr.id !1390
  %12 = getelementptr inbounds [96 x i32], [96 x i32]* %11, i64 0, i64 0, !dbg !1391, !psr.id !1392
  call void @br_des_rev_skey(i32* %12), !dbg !1393, !psr.id !1394
  br label %54, !dbg !1395, !psr.id !1396

13:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !1397, metadata !DIExpression()), !dbg !1399, !psr.id !1400
  br label %14, !dbg !1401, !psr.id !1403

14:                                               ; preds = %51, %13
  %.0 = phi i32 [ 0, %13 ], [ %52, %51 ], !dbg !1404, !psr.id !1405
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1397, metadata !DIExpression()), !dbg !1399, !psr.id !1406
  %15 = icmp slt i32 %.0, 48, !dbg !1407, !psr.id !1409
  br i1 %15, label %16, label %53, !dbg !1410, !psr.id !1411

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1412, !psr.id !1414
  %18 = sext i32 %.0 to i64, !dbg !1415, !psr.id !1416
  %19 = getelementptr inbounds [96 x i32], [96 x i32]* %17, i64 0, i64 %18, !dbg !1415, !psr.id !1417
  %20 = load i32, i32* %19, align 4, !dbg !1415, !psr.id !1418
  call void @llvm.dbg.value(metadata i32 %20, metadata !1419, metadata !DIExpression()), !dbg !1420, !psr.id !1421
  %21 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1422, !psr.id !1423
  %22 = sub nsw i32 94, %.0, !dbg !1424, !psr.id !1425
  %23 = sext i32 %22 to i64, !dbg !1426, !psr.id !1427
  %24 = getelementptr inbounds [96 x i32], [96 x i32]* %21, i64 0, i64 %23, !dbg !1426, !psr.id !1428
  %25 = load i32, i32* %24, align 4, !dbg !1426, !psr.id !1429
  %26 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1430, !psr.id !1431
  %27 = sext i32 %.0 to i64, !dbg !1432, !psr.id !1433
  %28 = getelementptr inbounds [96 x i32], [96 x i32]* %26, i64 0, i64 %27, !dbg !1432, !psr.id !1434
  store i32 %25, i32* %28, align 4, !dbg !1435, !psr.id !1436
  %29 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1437, !psr.id !1438
  %30 = sub nsw i32 94, %.0, !dbg !1439, !psr.id !1440
  %31 = sext i32 %30 to i64, !dbg !1441, !psr.id !1442
  %32 = getelementptr inbounds [96 x i32], [96 x i32]* %29, i64 0, i64 %31, !dbg !1441, !psr.id !1443
  store i32 %20, i32* %32, align 4, !dbg !1444, !psr.id !1445
  %33 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1446, !psr.id !1447
  %34 = add nsw i32 %.0, 1, !dbg !1448, !psr.id !1449
  %35 = sext i32 %34 to i64, !dbg !1450, !psr.id !1451
  %36 = getelementptr inbounds [96 x i32], [96 x i32]* %33, i64 0, i64 %35, !dbg !1450, !psr.id !1452
  %37 = load i32, i32* %36, align 4, !dbg !1450, !psr.id !1453
  call void @llvm.dbg.value(metadata i32 %37, metadata !1419, metadata !DIExpression()), !dbg !1420, !psr.id !1454
  %38 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1455, !psr.id !1456
  %39 = sub nsw i32 95, %.0, !dbg !1457, !psr.id !1458
  %40 = sext i32 %39 to i64, !dbg !1459, !psr.id !1460
  %41 = getelementptr inbounds [96 x i32], [96 x i32]* %38, i64 0, i64 %40, !dbg !1459, !psr.id !1461
  %42 = load i32, i32* %41, align 4, !dbg !1459, !psr.id !1462
  %43 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1463, !psr.id !1464
  %44 = add nsw i32 %.0, 1, !dbg !1465, !psr.id !1466
  %45 = sext i32 %44 to i64, !dbg !1467, !psr.id !1468
  %46 = getelementptr inbounds [96 x i32], [96 x i32]* %43, i64 0, i64 %45, !dbg !1467, !psr.id !1469
  store i32 %42, i32* %46, align 4, !dbg !1470, !psr.id !1471
  %47 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1472, !psr.id !1473
  %48 = sub nsw i32 95, %.0, !dbg !1474, !psr.id !1475
  %49 = sext i32 %48 to i64, !dbg !1476, !psr.id !1477
  %50 = getelementptr inbounds [96 x i32], [96 x i32]* %47, i64 0, i64 %49, !dbg !1476, !psr.id !1478
  store i32 %37, i32* %50, align 4, !dbg !1479, !psr.id !1480
  br label %51, !dbg !1481, !psr.id !1482

51:                                               ; preds = %16
  %52 = add nsw i32 %.0, 2, !dbg !1483, !psr.id !1484
  call void @llvm.dbg.value(metadata i32 %52, metadata !1397, metadata !DIExpression()), !dbg !1399, !psr.id !1485
  br label %14, !dbg !1486, !llvm.loop !1487, !psr.id !1489

53:                                               ; preds = %14
  br label %54, !psr.id !1490

54:                                               ; preds = %53, %10
  ret void, !dbg !1491, !psr.id !1492
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_ct_cbcdec_run(%struct.br_des_ct_cbcdec_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !1493 {
  %5 = alloca [288 x i32], align 16, !psr.id !1498
  %6 = alloca [8 x i8], align 1, !psr.id !1499
  call void @llvm.dbg.value(metadata %struct.br_des_ct_cbcdec_keys* %0, metadata !1500, metadata !DIExpression()), !dbg !1501, !psr.id !1502
  call void @llvm.dbg.value(metadata i8* %1, metadata !1503, metadata !DIExpression()), !dbg !1501, !psr.id !1504
  call void @llvm.dbg.value(metadata i8* %2, metadata !1505, metadata !DIExpression()), !dbg !1501, !psr.id !1506
  call void @llvm.dbg.value(metadata i64 %3, metadata !1507, metadata !DIExpression()), !dbg !1501, !psr.id !1508
  call void @llvm.dbg.declare(metadata [288 x i32]* %5, metadata !1509, metadata !DIExpression()), !dbg !1513, !psr.id !1514
  %7 = getelementptr inbounds [288 x i32], [288 x i32]* %5, i64 0, i64 0, !dbg !1515, !psr.id !1516
  %8 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 2, !dbg !1517, !psr.id !1518
  %9 = load i32, i32* %8, align 8, !dbg !1517, !psr.id !1519
  %10 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 1, !dbg !1520, !psr.id !1521
  %11 = getelementptr inbounds [96 x i32], [96 x i32]* %10, i64 0, i64 0, !dbg !1522, !psr.id !1523
  call void @br_des_ct_skey_expand(i32* %7, i32 %9, i32* %11), !dbg !1524, !psr.id !1525
  call void @llvm.dbg.value(metadata i8* %1, metadata !1526, metadata !DIExpression()), !dbg !1501, !psr.id !1527
  call void @llvm.dbg.value(metadata i8* %2, metadata !1528, metadata !DIExpression()), !dbg !1501, !psr.id !1529
  br label %12, !dbg !1530, !psr.id !1531

12:                                               ; preds = %34, %4
  %.02 = phi i64 [ %3, %4 ], [ %37, %34 ], !psr.id !1532
  %.01 = phi i8* [ %2, %4 ], [ %36, %34 ], !dbg !1501, !psr.id !1533
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1528, metadata !DIExpression()), !dbg !1501, !psr.id !1534
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1507, metadata !DIExpression()), !dbg !1501, !psr.id !1535
  %13 = icmp ugt i64 %.02, 0, !dbg !1536, !psr.id !1537
  br i1 %13, label %14, label %38, !dbg !1530, !psr.id !1538

14:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata [8 x i8]* %6, metadata !1539, metadata !DIExpression()), !dbg !1544, !psr.id !1545
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !1546, !psr.id !1547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %.01, i64 8, i1 false), !dbg !1546, !psr.id !1548
  %16 = getelementptr inbounds %struct.br_des_ct_cbcdec_keys, %struct.br_des_ct_cbcdec_keys* %0, i32 0, i32 2, !dbg !1549, !psr.id !1550
  %17 = load i32, i32* %16, align 8, !dbg !1549, !psr.id !1551
  %18 = getelementptr inbounds [288 x i32], [288 x i32]* %5, i64 0, i64 0, !dbg !1552, !psr.id !1553
  call void @br_des_ct_process_block(i32 %17, i32* %18, i8* %.01), !dbg !1554, !psr.id !1555
  call void @llvm.dbg.value(metadata i32 0, metadata !1556, metadata !DIExpression()), !dbg !1557, !psr.id !1558
  br label %19, !dbg !1559, !psr.id !1561

19:                                               ; preds = %32, %14
  %.0 = phi i32 [ 0, %14 ], [ %33, %32 ], !dbg !1562, !psr.id !1563
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1556, metadata !DIExpression()), !dbg !1557, !psr.id !1564
  %20 = icmp slt i32 %.0, 8, !dbg !1565, !psr.id !1567
  br i1 %20, label %21, label %34, !dbg !1568, !psr.id !1569

21:                                               ; preds = %19
  %22 = sext i32 %.0 to i64, !dbg !1570, !psr.id !1572
  %23 = getelementptr inbounds i8, i8* %1, i64 %22, !dbg !1570, !psr.id !1573
  %24 = load i8, i8* %23, align 1, !dbg !1570, !psr.id !1574
  %25 = zext i8 %24 to i32, !dbg !1570, !psr.id !1575
  %26 = sext i32 %.0 to i64, !dbg !1576, !psr.id !1577
  %27 = getelementptr inbounds i8, i8* %.01, i64 %26, !dbg !1576, !psr.id !1578
  %28 = load i8, i8* %27, align 1, !dbg !1579, !psr.id !1580
  %29 = zext i8 %28 to i32, !dbg !1579, !psr.id !1581
  %30 = xor i32 %29, %25, !dbg !1579, !psr.id !1582
  %31 = trunc i32 %30 to i8, !dbg !1579, !psr.id !1583
  store i8 %31, i8* %27, align 1, !dbg !1579, !psr.id !1584
  br label %32, !dbg !1585, !psr.id !1586

32:                                               ; preds = %21
  %33 = add nsw i32 %.0, 1, !dbg !1587, !psr.id !1588
  call void @llvm.dbg.value(metadata i32 %33, metadata !1556, metadata !DIExpression()), !dbg !1557, !psr.id !1589
  br label %19, !dbg !1590, !llvm.loop !1591, !psr.id !1593

34:                                               ; preds = %19
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !1594, !psr.id !1595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %35, i64 8, i1 false), !dbg !1594, !psr.id !1596
  %36 = getelementptr inbounds i8, i8* %.01, i64 8, !dbg !1597, !psr.id !1598
  call void @llvm.dbg.value(metadata i8* %36, metadata !1528, metadata !DIExpression()), !dbg !1501, !psr.id !1599
  %37 = sub i64 %.02, 8, !dbg !1600, !psr.id !1601
  call void @llvm.dbg.value(metadata i64 %37, metadata !1507, metadata !DIExpression()), !dbg !1501, !psr.id !1602
  br label %12, !dbg !1530, !llvm.loop !1603, !psr.id !1605

38:                                               ; preds = %12
  ret void, !dbg !1606, !psr.id !1607
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_do_IP(i32* %0, i32* %1) #0 !dbg !1608 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1611, metadata !DIExpression()), !dbg !1612, !psr.id !1613
  call void @llvm.dbg.value(metadata i32* %1, metadata !1614, metadata !DIExpression()), !dbg !1612, !psr.id !1615
  %3 = load i32, i32* %0, align 4, !dbg !1616, !psr.id !1617
  call void @llvm.dbg.value(metadata i32 %3, metadata !1618, metadata !DIExpression()), !dbg !1612, !psr.id !1619
  %4 = load i32, i32* %1, align 4, !dbg !1620, !psr.id !1621
  call void @llvm.dbg.value(metadata i32 %4, metadata !1622, metadata !DIExpression()), !dbg !1612, !psr.id !1623
  %5 = lshr i32 %3, 4, !dbg !1624, !psr.id !1625
  %6 = xor i32 %5, %4, !dbg !1626, !psr.id !1627
  %7 = and i32 %6, 252645135, !dbg !1628, !psr.id !1629
  call void @llvm.dbg.value(metadata i32 %7, metadata !1630, metadata !DIExpression()), !dbg !1612, !psr.id !1631
  %8 = xor i32 %4, %7, !dbg !1632, !psr.id !1633
  call void @llvm.dbg.value(metadata i32 %8, metadata !1622, metadata !DIExpression()), !dbg !1612, !psr.id !1634
  %9 = shl i32 %7, 4, !dbg !1635, !psr.id !1636
  %10 = xor i32 %3, %9, !dbg !1637, !psr.id !1638
  call void @llvm.dbg.value(metadata i32 %10, metadata !1618, metadata !DIExpression()), !dbg !1612, !psr.id !1639
  %11 = lshr i32 %10, 16, !dbg !1640, !psr.id !1641
  %12 = xor i32 %11, %8, !dbg !1642, !psr.id !1643
  %13 = and i32 %12, 65535, !dbg !1644, !psr.id !1645
  call void @llvm.dbg.value(metadata i32 %13, metadata !1630, metadata !DIExpression()), !dbg !1612, !psr.id !1646
  %14 = xor i32 %8, %13, !dbg !1647, !psr.id !1648
  call void @llvm.dbg.value(metadata i32 %14, metadata !1622, metadata !DIExpression()), !dbg !1612, !psr.id !1649
  %15 = shl i32 %13, 16, !dbg !1650, !psr.id !1651
  %16 = xor i32 %10, %15, !dbg !1652, !psr.id !1653
  call void @llvm.dbg.value(metadata i32 %16, metadata !1618, metadata !DIExpression()), !dbg !1612, !psr.id !1654
  %17 = lshr i32 %14, 2, !dbg !1655, !psr.id !1656
  %18 = xor i32 %17, %16, !dbg !1657, !psr.id !1658
  %19 = and i32 %18, 858993459, !dbg !1659, !psr.id !1660
  call void @llvm.dbg.value(metadata i32 %19, metadata !1630, metadata !DIExpression()), !dbg !1612, !psr.id !1661
  %20 = xor i32 %16, %19, !dbg !1662, !psr.id !1663
  call void @llvm.dbg.value(metadata i32 %20, metadata !1618, metadata !DIExpression()), !dbg !1612, !psr.id !1664
  %21 = shl i32 %19, 2, !dbg !1665, !psr.id !1666
  %22 = xor i32 %14, %21, !dbg !1667, !psr.id !1668
  call void @llvm.dbg.value(metadata i32 %22, metadata !1622, metadata !DIExpression()), !dbg !1612, !psr.id !1669
  %23 = lshr i32 %22, 8, !dbg !1670, !psr.id !1671
  %24 = xor i32 %23, %20, !dbg !1672, !psr.id !1673
  %25 = and i32 %24, 16711935, !dbg !1674, !psr.id !1675
  call void @llvm.dbg.value(metadata i32 %25, metadata !1630, metadata !DIExpression()), !dbg !1612, !psr.id !1676
  %26 = xor i32 %20, %25, !dbg !1677, !psr.id !1678
  call void @llvm.dbg.value(metadata i32 %26, metadata !1618, metadata !DIExpression()), !dbg !1612, !psr.id !1679
  %27 = shl i32 %25, 8, !dbg !1680, !psr.id !1681
  %28 = xor i32 %22, %27, !dbg !1682, !psr.id !1683
  call void @llvm.dbg.value(metadata i32 %28, metadata !1622, metadata !DIExpression()), !dbg !1612, !psr.id !1684
  %29 = lshr i32 %26, 1, !dbg !1685, !psr.id !1686
  %30 = xor i32 %29, %28, !dbg !1687, !psr.id !1688
  %31 = and i32 %30, 1431655765, !dbg !1689, !psr.id !1690
  call void @llvm.dbg.value(metadata i32 %31, metadata !1630, metadata !DIExpression()), !dbg !1612, !psr.id !1691
  %32 = xor i32 %28, %31, !dbg !1692, !psr.id !1693
  call void @llvm.dbg.value(metadata i32 %32, metadata !1622, metadata !DIExpression()), !dbg !1612, !psr.id !1694
  %33 = shl i32 %31, 1, !dbg !1695, !psr.id !1696
  %34 = xor i32 %26, %33, !dbg !1697, !psr.id !1698
  call void @llvm.dbg.value(metadata i32 %34, metadata !1618, metadata !DIExpression()), !dbg !1612, !psr.id !1699
  store i32 %34, i32* %0, align 4, !dbg !1700, !psr.id !1701
  store i32 %32, i32* %1, align 4, !dbg !1702, !psr.id !1703
  ret void, !dbg !1704, !psr.id !1705
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_do_invIP(i32* %0, i32* %1) #0 !dbg !1706 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1707, metadata !DIExpression()), !dbg !1708, !psr.id !1709
  call void @llvm.dbg.value(metadata i32* %1, metadata !1710, metadata !DIExpression()), !dbg !1708, !psr.id !1711
  %3 = load i32, i32* %0, align 4, !dbg !1712, !psr.id !1713
  call void @llvm.dbg.value(metadata i32 %3, metadata !1714, metadata !DIExpression()), !dbg !1708, !psr.id !1715
  %4 = load i32, i32* %1, align 4, !dbg !1716, !psr.id !1717
  call void @llvm.dbg.value(metadata i32 %4, metadata !1718, metadata !DIExpression()), !dbg !1708, !psr.id !1719
  %5 = lshr i32 %3, 1, !dbg !1720, !psr.id !1721
  %6 = xor i32 %5, %4, !dbg !1722, !psr.id !1723
  %7 = and i32 %6, 1431655765, !dbg !1724, !psr.id !1725
  call void @llvm.dbg.value(metadata i32 %7, metadata !1726, metadata !DIExpression()), !dbg !1708, !psr.id !1727
  %8 = xor i32 %4, %7, !dbg !1728, !psr.id !1729
  call void @llvm.dbg.value(metadata i32 %8, metadata !1718, metadata !DIExpression()), !dbg !1708, !psr.id !1730
  %9 = shl i32 %7, 1, !dbg !1731, !psr.id !1732
  %10 = xor i32 %3, %9, !dbg !1733, !psr.id !1734
  call void @llvm.dbg.value(metadata i32 %10, metadata !1714, metadata !DIExpression()), !dbg !1708, !psr.id !1735
  %11 = lshr i32 %8, 8, !dbg !1736, !psr.id !1737
  %12 = xor i32 %11, %10, !dbg !1738, !psr.id !1739
  %13 = and i32 %12, 16711935, !dbg !1740, !psr.id !1741
  call void @llvm.dbg.value(metadata i32 %13, metadata !1726, metadata !DIExpression()), !dbg !1708, !psr.id !1742
  %14 = xor i32 %10, %13, !dbg !1743, !psr.id !1744
  call void @llvm.dbg.value(metadata i32 %14, metadata !1714, metadata !DIExpression()), !dbg !1708, !psr.id !1745
  %15 = shl i32 %13, 8, !dbg !1746, !psr.id !1747
  %16 = xor i32 %8, %15, !dbg !1748, !psr.id !1749
  call void @llvm.dbg.value(metadata i32 %16, metadata !1718, metadata !DIExpression()), !dbg !1708, !psr.id !1750
  %17 = lshr i32 %16, 2, !dbg !1751, !psr.id !1752
  %18 = xor i32 %17, %14, !dbg !1753, !psr.id !1754
  %19 = and i32 %18, 858993459, !dbg !1755, !psr.id !1756
  call void @llvm.dbg.value(metadata i32 %19, metadata !1726, metadata !DIExpression()), !dbg !1708, !psr.id !1757
  %20 = xor i32 %14, %19, !dbg !1758, !psr.id !1759
  call void @llvm.dbg.value(metadata i32 %20, metadata !1714, metadata !DIExpression()), !dbg !1708, !psr.id !1760
  %21 = shl i32 %19, 2, !dbg !1761, !psr.id !1762
  %22 = xor i32 %16, %21, !dbg !1763, !psr.id !1764
  call void @llvm.dbg.value(metadata i32 %22, metadata !1718, metadata !DIExpression()), !dbg !1708, !psr.id !1765
  %23 = lshr i32 %20, 16, !dbg !1766, !psr.id !1767
  %24 = xor i32 %23, %22, !dbg !1768, !psr.id !1769
  %25 = and i32 %24, 65535, !dbg !1770, !psr.id !1771
  call void @llvm.dbg.value(metadata i32 %25, metadata !1726, metadata !DIExpression()), !dbg !1708, !psr.id !1772
  %26 = xor i32 %22, %25, !dbg !1773, !psr.id !1774
  call void @llvm.dbg.value(metadata i32 %26, metadata !1718, metadata !DIExpression()), !dbg !1708, !psr.id !1775
  %27 = shl i32 %25, 16, !dbg !1776, !psr.id !1777
  %28 = xor i32 %20, %27, !dbg !1778, !psr.id !1779
  call void @llvm.dbg.value(metadata i32 %28, metadata !1714, metadata !DIExpression()), !dbg !1708, !psr.id !1780
  %29 = lshr i32 %28, 4, !dbg !1781, !psr.id !1782
  %30 = xor i32 %29, %26, !dbg !1783, !psr.id !1784
  %31 = and i32 %30, 252645135, !dbg !1785, !psr.id !1786
  call void @llvm.dbg.value(metadata i32 %31, metadata !1726, metadata !DIExpression()), !dbg !1708, !psr.id !1787
  %32 = xor i32 %26, %31, !dbg !1788, !psr.id !1789
  call void @llvm.dbg.value(metadata i32 %32, metadata !1718, metadata !DIExpression()), !dbg !1708, !psr.id !1790
  %33 = shl i32 %31, 4, !dbg !1791, !psr.id !1792
  %34 = xor i32 %28, %33, !dbg !1793, !psr.id !1794
  call void @llvm.dbg.value(metadata i32 %34, metadata !1714, metadata !DIExpression()), !dbg !1708, !psr.id !1795
  store i32 %34, i32* %0, align 4, !dbg !1796, !psr.id !1797
  store i32 %32, i32* %1, align 4, !dbg !1798, !psr.id !1799
  ret void, !dbg !1800, !psr.id !1801
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_keysched_unit(i32* %0, i8* %1) #0 !dbg !1802 {
  %3 = alloca i32, align 4, !psr.id !1803
  %4 = alloca i32, align 4, !psr.id !1804
  call void @llvm.dbg.value(metadata i32* %0, metadata !1805, metadata !DIExpression()), !dbg !1806, !psr.id !1807
  call void @llvm.dbg.value(metadata i8* %1, metadata !1808, metadata !DIExpression()), !dbg !1806, !psr.id !1809
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1810, metadata !DIExpression()), !dbg !1811, !psr.id !1812
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1813, metadata !DIExpression()), !dbg !1814, !psr.id !1815
  %5 = call i32 @br_dec32be.9(i8* %1), !dbg !1816, !psr.id !1817
  store i32 %5, i32* %3, align 4, !dbg !1818, !psr.id !1819
  %6 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1820, !psr.id !1821
  %7 = call i32 @br_dec32be.9(i8* %6), !dbg !1822, !psr.id !1823
  store i32 %7, i32* %4, align 4, !dbg !1824, !psr.id !1825
  call void @br_des_do_IP(i32* %3, i32* %4), !dbg !1826, !psr.id !1827
  %8 = load i32, i32* %4, align 4, !dbg !1828, !psr.id !1829
  %9 = and i32 %8, -16777216, !dbg !1830, !psr.id !1831
  %10 = lshr i32 %9, 4, !dbg !1832, !psr.id !1833
  %11 = load i32, i32* %3, align 4, !dbg !1834, !psr.id !1835
  %12 = and i32 %11, -16777216, !dbg !1836, !psr.id !1837
  %13 = lshr i32 %12, 12, !dbg !1838, !psr.id !1839
  %14 = or i32 %10, %13, !dbg !1840, !psr.id !1841
  %15 = load i32, i32* %4, align 4, !dbg !1842, !psr.id !1843
  %16 = and i32 %15, 16711680, !dbg !1844, !psr.id !1845
  %17 = lshr i32 %16, 12, !dbg !1846, !psr.id !1847
  %18 = or i32 %14, %17, !dbg !1848, !psr.id !1849
  %19 = load i32, i32* %3, align 4, !dbg !1850, !psr.id !1851
  %20 = and i32 %19, 16711680, !dbg !1852, !psr.id !1853
  %21 = lshr i32 %20, 20, !dbg !1854, !psr.id !1855
  %22 = or i32 %18, %21, !dbg !1856, !psr.id !1857
  call void @llvm.dbg.value(metadata i32 %22, metadata !1858, metadata !DIExpression()), !dbg !1806, !psr.id !1859
  %23 = load i32, i32* %4, align 4, !dbg !1860, !psr.id !1861
  %24 = and i32 %23, 255, !dbg !1862, !psr.id !1863
  %25 = shl i32 %24, 20, !dbg !1864, !psr.id !1865
  %26 = load i32, i32* %3, align 4, !dbg !1866, !psr.id !1867
  %27 = and i32 %26, 65280, !dbg !1868, !psr.id !1869
  %28 = shl i32 %27, 4, !dbg !1870, !psr.id !1871
  %29 = or i32 %25, %28, !dbg !1872, !psr.id !1873
  %30 = load i32, i32* %4, align 4, !dbg !1874, !psr.id !1875
  %31 = and i32 %30, 65280, !dbg !1876, !psr.id !1877
  %32 = lshr i32 %31, 4, !dbg !1878, !psr.id !1879
  %33 = or i32 %29, %32, !dbg !1880, !psr.id !1881
  %34 = load i32, i32* %3, align 4, !dbg !1882, !psr.id !1883
  %35 = and i32 %34, 983040, !dbg !1884, !psr.id !1885
  %36 = lshr i32 %35, 16, !dbg !1886, !psr.id !1887
  %37 = or i32 %33, %36, !dbg !1888, !psr.id !1889
  call void @llvm.dbg.value(metadata i32 %37, metadata !1890, metadata !DIExpression()), !dbg !1806, !psr.id !1891
  call void @llvm.dbg.value(metadata i32 0, metadata !1892, metadata !DIExpression()), !dbg !1806, !psr.id !1893
  br label %38, !dbg !1894, !psr.id !1896

38:                                               ; preds = %69, %2
  %.02 = phi i32 [ %22, %2 ], [ %59, %69 ], !dbg !1806, !psr.id !1897
  %.01 = phi i32 [ %37, %2 ], [ %60, %69 ], !dbg !1806, !psr.id !1898
  %.0 = phi i32 [ 0, %2 ], [ %70, %69 ], !dbg !1899, !psr.id !1900
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1892, metadata !DIExpression()), !dbg !1806, !psr.id !1901
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1890, metadata !DIExpression()), !dbg !1806, !psr.id !1902
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1858, metadata !DIExpression()), !dbg !1806, !psr.id !1903
  %39 = icmp slt i32 %.0, 16, !dbg !1904, !psr.id !1906
  br i1 %39, label %40, label %71, !dbg !1907, !psr.id !1908

40:                                               ; preds = %38
  %41 = shl i32 1, %.0, !dbg !1909, !psr.id !1912
  %42 = and i32 %41, 33027, !dbg !1913, !psr.id !1914
  %43 = icmp ne i32 %42, 0, !dbg !1913, !psr.id !1915
  br i1 %43, label %44, label %51, !dbg !1916, !psr.id !1917

44:                                               ; preds = %40
  %45 = shl i32 %.02, 1, !dbg !1918, !psr.id !1920
  %46 = lshr i32 %.02, 27, !dbg !1921, !psr.id !1922
  %47 = or i32 %45, %46, !dbg !1923, !psr.id !1924
  call void @llvm.dbg.value(metadata i32 %47, metadata !1858, metadata !DIExpression()), !dbg !1806, !psr.id !1925
  %48 = shl i32 %.01, 1, !dbg !1926, !psr.id !1927
  %49 = lshr i32 %.01, 27, !dbg !1928, !psr.id !1929
  %50 = or i32 %48, %49, !dbg !1930, !psr.id !1931
  call void @llvm.dbg.value(metadata i32 %50, metadata !1890, metadata !DIExpression()), !dbg !1806, !psr.id !1932
  br label %58, !dbg !1933, !psr.id !1934

51:                                               ; preds = %40
  %52 = shl i32 %.02, 2, !dbg !1935, !psr.id !1937
  %53 = lshr i32 %.02, 26, !dbg !1938, !psr.id !1939
  %54 = or i32 %52, %53, !dbg !1940, !psr.id !1941
  call void @llvm.dbg.value(metadata i32 %54, metadata !1858, metadata !DIExpression()), !dbg !1806, !psr.id !1942
  %55 = shl i32 %.01, 2, !dbg !1943, !psr.id !1944
  %56 = lshr i32 %.01, 26, !dbg !1945, !psr.id !1946
  %57 = or i32 %55, %56, !dbg !1947, !psr.id !1948
  call void @llvm.dbg.value(metadata i32 %57, metadata !1890, metadata !DIExpression()), !dbg !1806, !psr.id !1949
  br label %58, !psr.id !1950

58:                                               ; preds = %51, %44
  %.13 = phi i32 [ %47, %44 ], [ %54, %51 ], !dbg !1951, !psr.id !1952
  %.1 = phi i32 [ %50, %44 ], [ %57, %51 ], !dbg !1951, !psr.id !1953
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1890, metadata !DIExpression()), !dbg !1806, !psr.id !1954
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1858, metadata !DIExpression()), !dbg !1806, !psr.id !1955
  %59 = and i32 %.13, 268435455, !dbg !1956, !psr.id !1957
  call void @llvm.dbg.value(metadata i32 %59, metadata !1858, metadata !DIExpression()), !dbg !1806, !psr.id !1958
  %60 = and i32 %.1, 268435455, !dbg !1959, !psr.id !1960
  call void @llvm.dbg.value(metadata i32 %60, metadata !1890, metadata !DIExpression()), !dbg !1806, !psr.id !1961
  %61 = shl i32 %.0, 1, !dbg !1962, !psr.id !1963
  %62 = add nsw i32 %61, 0, !dbg !1964, !psr.id !1965
  %63 = sext i32 %62 to i64, !dbg !1966, !psr.id !1967
  %64 = getelementptr inbounds i32, i32* %0, i64 %63, !dbg !1966, !psr.id !1968
  store i32 %59, i32* %64, align 4, !dbg !1969, !psr.id !1970
  %65 = shl i32 %.0, 1, !dbg !1971, !psr.id !1972
  %66 = add nsw i32 %65, 1, !dbg !1973, !psr.id !1974
  %67 = sext i32 %66 to i64, !dbg !1975, !psr.id !1976
  %68 = getelementptr inbounds i32, i32* %0, i64 %67, !dbg !1975, !psr.id !1977
  store i32 %60, i32* %68, align 4, !dbg !1978, !psr.id !1979
  br label %69, !dbg !1980, !psr.id !1981

69:                                               ; preds = %58
  %70 = add nsw i32 %.0, 1, !dbg !1982, !psr.id !1983
  call void @llvm.dbg.value(metadata i32 %70, metadata !1892, metadata !DIExpression()), !dbg !1806, !psr.id !1984
  br label %38, !dbg !1985, !llvm.loop !1986, !psr.id !1988

71:                                               ; preds = %38
  ret void, !dbg !1989, !psr.id !1990
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.9(i8* %0) #0 !dbg !1991 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1992, metadata !DIExpression()), !dbg !1993, !psr.id !1994
  call void @llvm.dbg.value(metadata i8* %0, metadata !1995, metadata !DIExpression()), !dbg !1993, !psr.id !1996
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1997, !psr.id !1998
  %3 = load i8, i8* %2, align 1, !dbg !1997, !psr.id !1999
  %4 = zext i8 %3 to i32, !dbg !2000, !psr.id !2001
  %5 = shl i32 %4, 24, !dbg !2002, !psr.id !2003
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2004, !psr.id !2005
  %7 = load i8, i8* %6, align 1, !dbg !2004, !psr.id !2006
  %8 = zext i8 %7 to i32, !dbg !2007, !psr.id !2008
  %9 = shl i32 %8, 16, !dbg !2009, !psr.id !2010
  %10 = or i32 %5, %9, !dbg !2011, !psr.id !2012
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2013, !psr.id !2014
  %12 = load i8, i8* %11, align 1, !dbg !2013, !psr.id !2015
  %13 = zext i8 %12 to i32, !dbg !2016, !psr.id !2017
  %14 = shl i32 %13, 8, !dbg !2018, !psr.id !2019
  %15 = or i32 %10, %14, !dbg !2020, !psr.id !2021
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2022, !psr.id !2023
  %17 = load i8, i8* %16, align 1, !dbg !2022, !psr.id !2024
  %18 = zext i8 %17 to i32, !dbg !2025, !psr.id !2026
  %19 = or i32 %15, %18, !dbg !2027, !psr.id !2028
  ret i32 %19, !dbg !2029, !psr.id !2030
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_des_rev_skey(i32* %0) #0 !dbg !2031 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2034, metadata !DIExpression()), !dbg !2035, !psr.id !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2037, metadata !DIExpression()), !dbg !2035, !psr.id !2038
  br label %2, !dbg !2039, !psr.id !2041

2:                                                ; preds = %33, %1
  %.0 = phi i32 [ 0, %1 ], [ %34, %33 ], !dbg !2042, !psr.id !2043
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2037, metadata !DIExpression()), !dbg !2035, !psr.id !2044
  %3 = icmp slt i32 %.0, 16, !dbg !2045, !psr.id !2047
  br i1 %3, label %4, label %35, !dbg !2048, !psr.id !2049

4:                                                ; preds = %2
  %5 = add nsw i32 %.0, 0, !dbg !2050, !psr.id !2052
  %6 = sext i32 %5 to i64, !dbg !2053, !psr.id !2054
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !2053, !psr.id !2055
  %8 = load i32, i32* %7, align 4, !dbg !2053, !psr.id !2056
  call void @llvm.dbg.value(metadata i32 %8, metadata !2057, metadata !DIExpression()), !dbg !2058, !psr.id !2059
  %9 = sub nsw i32 30, %.0, !dbg !2060, !psr.id !2061
  %10 = sext i32 %9 to i64, !dbg !2062, !psr.id !2063
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !2062, !psr.id !2064
  %12 = load i32, i32* %11, align 4, !dbg !2062, !psr.id !2065
  %13 = add nsw i32 %.0, 0, !dbg !2066, !psr.id !2067
  %14 = sext i32 %13 to i64, !dbg !2068, !psr.id !2069
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !2068, !psr.id !2070
  store i32 %12, i32* %15, align 4, !dbg !2071, !psr.id !2072
  %16 = sub nsw i32 30, %.0, !dbg !2073, !psr.id !2074
  %17 = sext i32 %16 to i64, !dbg !2075, !psr.id !2076
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !2075, !psr.id !2077
  store i32 %8, i32* %18, align 4, !dbg !2078, !psr.id !2079
  %19 = add nsw i32 %.0, 1, !dbg !2080, !psr.id !2081
  %20 = sext i32 %19 to i64, !dbg !2082, !psr.id !2083
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !2082, !psr.id !2084
  %22 = load i32, i32* %21, align 4, !dbg !2082, !psr.id !2085
  call void @llvm.dbg.value(metadata i32 %22, metadata !2057, metadata !DIExpression()), !dbg !2058, !psr.id !2086
  %23 = sub nsw i32 31, %.0, !dbg !2087, !psr.id !2088
  %24 = sext i32 %23 to i64, !dbg !2089, !psr.id !2090
  %25 = getelementptr inbounds i32, i32* %0, i64 %24, !dbg !2089, !psr.id !2091
  %26 = load i32, i32* %25, align 4, !dbg !2089, !psr.id !2092
  %27 = add nsw i32 %.0, 1, !dbg !2093, !psr.id !2094
  %28 = sext i32 %27 to i64, !dbg !2095, !psr.id !2096
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !2095, !psr.id !2097
  store i32 %26, i32* %29, align 4, !dbg !2098, !psr.id !2099
  %30 = sub nsw i32 31, %.0, !dbg !2100, !psr.id !2101
  %31 = sext i32 %30 to i64, !dbg !2102, !psr.id !2103
  %32 = getelementptr inbounds i32, i32* %0, i64 %31, !dbg !2102, !psr.id !2104
  store i32 %22, i32* %32, align 4, !dbg !2105, !psr.id !2106
  br label %33, !dbg !2107, !psr.id !2108

33:                                               ; preds = %4
  %34 = add nsw i32 %.0, 2, !dbg !2109, !psr.id !2110
  call void @llvm.dbg.value(metadata i32 %34, metadata !2037, metadata !DIExpression()), !dbg !2035, !psr.id !2111
  br label %2, !dbg !2112, !llvm.loop !2113, !psr.id !2115

35:                                               ; preds = %2
  ret void, !dbg !2116, !psr.id !2117
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @cbc_decrypt_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!60, !2, !30, !62}
!llvm.ident = !{!65, !65, !65, !65}
!llvm.module.flags = !{!66, !67, !68}

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
!24 = !{!"0"}
!25 = !{!"1"}
!26 = !{!"2"}
!27 = !{!"3"}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "br_des_ct_cbcdec_vtable", scope: !30, file: !31, line: 79, type: !33, isLocal: false, isDefinition: true)
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !32, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../BearSSL/src/symcipher/des_ct_cbcdec.c", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!32 = !{!28}
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcdec_class", file: !35, line: 449, baseType: !36)
!35 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcdec_class_", file: !35, line: 450, size: 256, elements: !37)
!37 = !{!38, !42, !43, !44, !52}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !36, file: !35, line: 455, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 46, baseType: !41)
!40 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !36, file: !35, line: 460, baseType: !13, size: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !36, file: !35, line: 466, baseType: !13, size: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !36, file: !35, line: 479, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !50, !39}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !36, file: !35, line: 495, baseType: !53, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !58, !58, !39}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !{!"4"}
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "cbc_decrypt.c", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !64, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../BearSSL/src/symcipher/des_support.c", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!64 = !{!9, !6}
!65 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!66 = !{i32 7, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = distinct !DISubprogram(name: "cbc_decrypt_wrapper", scope: !61, file: !61, line: 3, type: !70, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !4)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !58, !58, !39}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_des_ct_cbcdec_keys", file: !35, line: 2338, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 2331, size: 3200, elements: !76)
!76 = !{!77, !97, !101}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !75, file: !35, line: 2333, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcdec_class", file: !35, line: 449, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcdec_class_", file: !35, line: 450, size: 256, elements: !82)
!82 = !{!83, !84, !85, !86, !91}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !81, file: !35, line: 455, baseType: !39, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !81, file: !35, line: 460, baseType: !13, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !81, file: !35, line: 466, baseType: !13, size: 32, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !81, file: !35, line: 479, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !90, !50, !39}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !81, file: !35, line: 495, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95, !58, !58, !39}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !75, file: !35, line: 2335, baseType: !98, size: 3072, offset: 64)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3072, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !75, file: !35, line: 2336, baseType: !13, size: 32, offset: 3136)
!102 = !DILocalVariable(name: "ctx", arg: 1, scope: !69, file: !61, line: 3, type: !72)
!103 = !DILocation(line: 0, scope: !69)
!104 = !{!"5"}
!105 = !DILocalVariable(name: "iv", arg: 2, scope: !69, file: !61, line: 4, type: !58)
!106 = !{!"6"}
!107 = !DILocalVariable(name: "data", arg: 3, scope: !69, file: !61, line: 4, type: !58)
!108 = !{!"7"}
!109 = !DILocalVariable(name: "len", arg: 4, scope: !69, file: !61, line: 4, type: !39)
!110 = !{!"8"}
!111 = !DILocation(line: 5, column: 12, scope: !69)
!112 = !{!"9"}
!113 = !DILocation(line: 5, column: 2, scope: !69)
!114 = !{!"10"}
!115 = !DILocation(line: 6, column: 12, scope: !69)
!116 = !{!"11"}
!117 = !DILocation(line: 6, column: 2, scope: !69)
!118 = !{!"12"}
!119 = !DILocation(line: 7, column: 12, scope: !69)
!120 = !{!"13"}
!121 = !DILocation(line: 7, column: 2, scope: !69)
!122 = !{!"14"}
!123 = !DILocation(line: 8, column: 12, scope: !69)
!124 = !{!"15"}
!125 = !DILocation(line: 8, column: 2, scope: !69)
!126 = !{!"16"}
!127 = !DILocation(line: 10, column: 31, scope: !69)
!128 = !{!"17"}
!129 = !{!"18"}
!130 = !DILocation(line: 10, column: 12, scope: !69)
!131 = !{!"19"}
!132 = !DILocation(line: 10, column: 2, scope: !69)
!133 = !{!"20"}
!134 = !DILocation(line: 15, column: 12, scope: !69)
!135 = !{!"21"}
!136 = !DILocation(line: 15, column: 2, scope: !69)
!137 = !{!"22"}
!138 = !DILocation(line: 16, column: 12, scope: !69)
!139 = !{!"23"}
!140 = !DILocation(line: 16, column: 2, scope: !69)
!141 = !{!"24"}
!142 = !DILocation(line: 18, column: 2, scope: !69)
!143 = !{!"25"}
!144 = !DILocation(line: 19, column: 1, scope: !69)
!145 = !{!"26"}
!146 = distinct !DISubprogram(name: "vfct_tmp", scope: !61, file: !61, line: 27, type: !147, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !4)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !149, !72, !58, !58, !39}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!150 = !DILocalVariable(name: "skey", arg: 1, scope: !146, file: !61, line: 27, type: !149)
!151 = !DILocation(line: 0, scope: !146)
!152 = !{!"27"}
!153 = !DILocalVariable(name: "ctx", arg: 2, scope: !146, file: !61, line: 27, type: !72)
!154 = !{!"28"}
!155 = !DILocalVariable(name: "iv", arg: 3, scope: !146, file: !61, line: 27, type: !58)
!156 = !{!"29"}
!157 = !DILocalVariable(name: "data", arg: 4, scope: !146, file: !61, line: 27, type: !58)
!158 = !{!"30"}
!159 = !DILocalVariable(name: "len", arg: 5, scope: !146, file: !61, line: 27, type: !39)
!160 = !{!"31"}
!161 = !DILocation(line: 28, column: 2, scope: !146)
!162 = !{!"32"}
!163 = !DILocation(line: 29, column: 1, scope: !146)
!164 = !{!"33"}
!165 = distinct !DISubprogram(name: "cbc_decrypt_wrapper_t", scope: !61, file: !61, line: 31, type: !166, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !4)
!166 = !DISubroutineType(types: !167)
!167 = !{null}
!168 = !DILocation(line: 32, column: 37, scope: !165)
!169 = !{!"34"}
!170 = !DILocalVariable(name: "ctx", scope: !165, file: !61, line: 32, type: !72)
!171 = !DILocation(line: 0, scope: !165)
!172 = !{!"35"}
!173 = !DILocation(line: 33, column: 13, scope: !165)
!174 = !{!"36"}
!175 = !DILocalVariable(name: "iv", scope: !165, file: !61, line: 33, type: !58)
!176 = !{!"37"}
!177 = !DILocation(line: 34, column: 15, scope: !165)
!178 = !{!"38"}
!179 = !DILocalVariable(name: "data", scope: !165, file: !61, line: 34, type: !58)
!180 = !{!"39"}
!181 = !DILocalVariable(name: "len", scope: !165, file: !61, line: 35, type: !39)
!182 = !{!"40"}
!183 = !DILocation(line: 36, column: 24, scope: !165)
!184 = !{!"41"}
!185 = !DILocation(line: 36, column: 19, scope: !165)
!186 = !{!"42"}
!187 = !DILocalVariable(name: "skey", scope: !165, file: !61, line: 36, type: !149)
!188 = !{!"43"}
!189 = !DILocation(line: 37, column: 2, scope: !165)
!190 = !{!"44"}
!191 = !DILocation(line: 38, column: 1, scope: !165)
!192 = !{!"45"}
!193 = distinct !DISubprogram(name: "br_des_ct_keysched", scope: !3, file: !3, line: 158, type: !194, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!194 = !DISubroutineType(types: !195)
!195 = !{!13, !149, !50, !39}
!196 = !DILocalVariable(name: "skey", arg: 1, scope: !193, file: !3, line: 158, type: !149)
!197 = !DILocation(line: 0, scope: !193)
!198 = !{!"46"}
!199 = !DILocalVariable(name: "key", arg: 2, scope: !193, file: !3, line: 158, type: !50)
!200 = !{!"47"}
!201 = !DILocalVariable(name: "key_len", arg: 3, scope: !193, file: !3, line: 158, type: !39)
!202 = !{!"48"}
!203 = !DILocation(line: 160, column: 2, scope: !193)
!204 = !{!"49"}
!205 = !DILocation(line: 162, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !193, file: !3, line: 160, column: 19)
!207 = !{!"50"}
!208 = !DILocation(line: 163, column: 3, scope: !206)
!209 = !{!"51"}
!210 = !DILocation(line: 165, column: 3, scope: !206)
!211 = !{!"52"}
!212 = !DILocation(line: 166, column: 22, scope: !206)
!213 = !{!"53"}
!214 = !DILocation(line: 166, column: 55, scope: !206)
!215 = !{!"54"}
!216 = !DILocation(line: 166, column: 3, scope: !206)
!217 = !{!"55"}
!218 = !DILocation(line: 167, column: 24, scope: !206)
!219 = !{!"56"}
!220 = !DILocation(line: 167, column: 3, scope: !206)
!221 = !{!"57"}
!222 = !DILocation(line: 168, column: 15, scope: !206)
!223 = !{!"58"}
!224 = !DILocation(line: 168, column: 3, scope: !206)
!225 = !{!"59"}
!226 = !{!"60"}
!227 = !{!"61"}
!228 = !DILocation(line: 169, column: 3, scope: !206)
!229 = !{!"62"}
!230 = !DILocation(line: 171, column: 3, scope: !206)
!231 = !{!"63"}
!232 = !DILocation(line: 172, column: 22, scope: !206)
!233 = !{!"64"}
!234 = !DILocation(line: 172, column: 55, scope: !206)
!235 = !{!"65"}
!236 = !DILocation(line: 172, column: 3, scope: !206)
!237 = !{!"66"}
!238 = !DILocation(line: 173, column: 24, scope: !206)
!239 = !{!"67"}
!240 = !DILocation(line: 173, column: 3, scope: !206)
!241 = !{!"68"}
!242 = !DILocation(line: 174, column: 22, scope: !206)
!243 = !{!"69"}
!244 = !DILocation(line: 174, column: 55, scope: !206)
!245 = !{!"70"}
!246 = !DILocation(line: 174, column: 3, scope: !206)
!247 = !{!"71"}
!248 = !DILocation(line: 175, column: 3, scope: !206)
!249 = !{!"72"}
!250 = !DILocation(line: 0, scope: !206)
!251 = !{!"73"}
!252 = !DILocation(line: 177, column: 1, scope: !193)
!253 = !{!"74"}
!254 = distinct !DISubprogram(name: "keysched_unit", scope: !3, file: !3, line: 73, type: !255, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !149, !50}
!257 = !DILocalVariable(name: "skey", arg: 1, scope: !254, file: !3, line: 73, type: !149)
!258 = !DILocation(line: 0, scope: !254)
!259 = !{!"75"}
!260 = !DILocalVariable(name: "key", arg: 2, scope: !254, file: !3, line: 73, type: !50)
!261 = !{!"76"}
!262 = !DILocation(line: 77, column: 2, scope: !254)
!263 = !{!"77"}
!264 = !DILocalVariable(name: "i", scope: !254, file: !3, line: 75, type: !265)
!265 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!266 = !{!"78"}
!267 = !DILocation(line: 82, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !254, file: !3, line: 82, column: 2)
!269 = !{!"79"}
!270 = !DILocation(line: 0, scope: !268)
!271 = !{!"80"}
!272 = !{!"81"}
!273 = !DILocation(line: 82, column: 16, scope: !274)
!274 = distinct !DILexicalBlock(scope: !268, file: !3, line: 82, column: 2)
!275 = !{!"82"}
!276 = !DILocation(line: 82, column: 2, scope: !268)
!277 = !{!"83"}
!278 = !DILocation(line: 86, column: 16, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !3, line: 82, column: 28)
!280 = !{!"84"}
!281 = !DILocation(line: 86, column: 22, scope: !279)
!282 = !{!"85"}
!283 = !DILocation(line: 86, column: 8, scope: !279)
!284 = !{!"86"}
!285 = !{!"87"}
!286 = !{!"88"}
!287 = !DILocalVariable(name: "kl", scope: !279, file: !3, line: 83, type: !9)
!288 = !DILocation(line: 0, scope: !279)
!289 = !{!"89"}
!290 = !DILocation(line: 87, column: 16, scope: !279)
!291 = !{!"90"}
!292 = !DILocation(line: 87, column: 22, scope: !279)
!293 = !{!"91"}
!294 = !DILocation(line: 87, column: 8, scope: !279)
!295 = !{!"92"}
!296 = !{!"93"}
!297 = !{!"94"}
!298 = !DILocalVariable(name: "kr", scope: !279, file: !3, line: 83, type: !9)
!299 = !{!"95"}
!300 = !DILocalVariable(name: "sk0", scope: !279, file: !3, line: 83, type: !9)
!301 = !{!"96"}
!302 = !DILocalVariable(name: "sk1", scope: !279, file: !3, line: 83, type: !9)
!303 = !{!"97"}
!304 = !DILocalVariable(name: "j", scope: !279, file: !3, line: 84, type: !265)
!305 = !{!"98"}
!306 = !DILocation(line: 90, column: 8, scope: !307)
!307 = distinct !DILexicalBlock(scope: !279, file: !3, line: 90, column: 3)
!308 = !{!"99"}
!309 = !{!"100"}
!310 = !{!"101"}
!311 = !DILocation(line: 0, scope: !307)
!312 = !{!"102"}
!313 = !{!"103"}
!314 = !{!"104"}
!315 = !{!"105"}
!316 = !DILocation(line: 90, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !307, file: !3, line: 90, column: 3)
!318 = !{!"106"}
!319 = !DILocation(line: 90, column: 3, scope: !307)
!320 = !{!"107"}
!321 = !DILocation(line: 91, column: 8, scope: !322)
!322 = distinct !DILexicalBlock(scope: !317, file: !3, line: 90, column: 29)
!323 = !{!"108"}
!324 = !{!"109"}
!325 = !DILocation(line: 92, column: 8, scope: !322)
!326 = !{!"110"}
!327 = !{!"111"}
!328 = !DILocation(line: 93, column: 19, scope: !322)
!329 = !{!"112"}
!330 = !{!"113"}
!331 = !{!"114"}
!332 = !{!"115"}
!333 = !DILocation(line: 93, column: 16, scope: !322)
!334 = !{!"116"}
!335 = !DILocation(line: 93, column: 27, scope: !322)
!336 = !{!"117"}
!337 = !DILocation(line: 93, column: 42, scope: !322)
!338 = !{!"118"}
!339 = !DILocation(line: 93, column: 8, scope: !322)
!340 = !{!"119"}
!341 = !{!"120"}
!342 = !DILocation(line: 94, column: 18, scope: !322)
!343 = !{!"121"}
!344 = !{!"122"}
!345 = !{!"123"}
!346 = !{!"124"}
!347 = !DILocation(line: 94, column: 15, scope: !322)
!348 = !{!"125"}
!349 = !DILocation(line: 94, column: 26, scope: !322)
!350 = !{!"126"}
!351 = !DILocation(line: 94, column: 8, scope: !322)
!352 = !{!"127"}
!353 = !{!"128"}
!354 = !DILocation(line: 95, column: 19, scope: !322)
!355 = !{!"129"}
!356 = !{!"130"}
!357 = !{!"131"}
!358 = !{!"132"}
!359 = !DILocation(line: 95, column: 16, scope: !322)
!360 = !{!"133"}
!361 = !DILocation(line: 95, column: 27, scope: !322)
!362 = !{!"134"}
!363 = !DILocation(line: 95, column: 42, scope: !322)
!364 = !{!"135"}
!365 = !DILocation(line: 95, column: 8, scope: !322)
!366 = !{!"136"}
!367 = !{!"137"}
!368 = !DILocation(line: 96, column: 18, scope: !322)
!369 = !{!"138"}
!370 = !{!"139"}
!371 = !{!"140"}
!372 = !{!"141"}
!373 = !DILocation(line: 96, column: 15, scope: !322)
!374 = !{!"142"}
!375 = !DILocation(line: 96, column: 26, scope: !322)
!376 = !{!"143"}
!377 = !DILocation(line: 96, column: 8, scope: !322)
!378 = !{!"144"}
!379 = !{!"145"}
!380 = !DILocation(line: 97, column: 3, scope: !322)
!381 = !{!"146"}
!382 = !DILocation(line: 90, column: 25, scope: !317)
!383 = !{!"147"}
!384 = !{!"148"}
!385 = !DILocation(line: 90, column: 3, scope: !317)
!386 = distinct !{!386, !319, !387, !388}
!387 = !DILocation(line: 97, column: 3, scope: !307)
!388 = !{!"llvm.loop.mustprogress"}
!389 = !{!"149"}
!390 = !DILocation(line: 99, column: 11, scope: !279)
!391 = !{!"150"}
!392 = !DILocation(line: 99, column: 17, scope: !279)
!393 = !{!"151"}
!394 = !DILocation(line: 99, column: 3, scope: !279)
!395 = !{!"152"}
!396 = !{!"153"}
!397 = !DILocation(line: 99, column: 22, scope: !279)
!398 = !{!"154"}
!399 = !DILocation(line: 100, column: 11, scope: !279)
!400 = !{!"155"}
!401 = !DILocation(line: 100, column: 17, scope: !279)
!402 = !{!"156"}
!403 = !DILocation(line: 100, column: 3, scope: !279)
!404 = !{!"157"}
!405 = !{!"158"}
!406 = !DILocation(line: 100, column: 22, scope: !279)
!407 = !{!"159"}
!408 = !DILocation(line: 101, column: 2, scope: !279)
!409 = !{!"160"}
!410 = !DILocation(line: 82, column: 24, scope: !274)
!411 = !{!"161"}
!412 = !{!"162"}
!413 = !DILocation(line: 82, column: 2, scope: !274)
!414 = distinct !{!414, !276, !415, !388}
!415 = !DILocation(line: 101, column: 2, scope: !268)
!416 = !{!"163"}
!417 = !DILocation(line: 154, column: 1, scope: !254)
!418 = !{!"164"}
!419 = distinct !DISubprogram(name: "br_des_ct_process_block", scope: !3, file: !3, line: 368, type: !420, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !13, !422, !58}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!424 = !{!"165"}
!425 = !{!"166"}
!426 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !419, file: !3, line: 368, type: !13)
!427 = !DILocation(line: 0, scope: !419)
!428 = !{!"167"}
!429 = !DILocalVariable(name: "sk_exp", arg: 2, scope: !419, file: !3, line: 369, type: !422)
!430 = !{!"168"}
!431 = !DILocalVariable(name: "block", arg: 3, scope: !419, file: !3, line: 369, type: !58)
!432 = !{!"169"}
!433 = !DILocalVariable(name: "l", scope: !419, file: !3, line: 372, type: !9)
!434 = !DILocation(line: 372, column: 11, scope: !419)
!435 = !{!"170"}
!436 = !DILocalVariable(name: "r", scope: !419, file: !3, line: 372, type: !9)
!437 = !DILocation(line: 372, column: 14, scope: !419)
!438 = !{!"171"}
!439 = !DILocalVariable(name: "buf", scope: !419, file: !3, line: 371, type: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!441 = !{!"172"}
!442 = !DILocation(line: 375, column: 6, scope: !419)
!443 = !{!"173"}
!444 = !DILocation(line: 375, column: 4, scope: !419)
!445 = !{!"174"}
!446 = !DILocation(line: 376, column: 21, scope: !419)
!447 = !{!"175"}
!448 = !DILocation(line: 376, column: 6, scope: !419)
!449 = !{!"176"}
!450 = !DILocation(line: 376, column: 4, scope: !419)
!451 = !{!"177"}
!452 = !DILocation(line: 377, column: 2, scope: !419)
!453 = !{!"178"}
!454 = !DILocation(line: 378, column: 2, scope: !419)
!455 = !{!"179"}
!456 = !{!"180"}
!457 = !{!"181"}
!458 = !{!"182"}
!459 = !{!"183"}
!460 = !DILocation(line: 378, column: 20, scope: !419)
!461 = !{!"184"}
!462 = !{!"185"}
!463 = !DILocation(line: 378, column: 23, scope: !419)
!464 = !{!"186"}
!465 = !{!"187"}
!466 = !DILocation(line: 379, column: 3, scope: !467)
!467 = distinct !DILexicalBlock(scope: !419, file: !3, line: 378, column: 28)
!468 = !{!"188"}
!469 = !DILocation(line: 380, column: 10, scope: !467)
!470 = !{!"189"}
!471 = !{!"190"}
!472 = distinct !{!472, !454, !473, !388}
!473 = !DILocation(line: 381, column: 2, scope: !419)
!474 = !{!"191"}
!475 = !DILocation(line: 382, column: 2, scope: !419)
!476 = !{!"192"}
!477 = !DILocation(line: 383, column: 18, scope: !419)
!478 = !{!"193"}
!479 = !DILocation(line: 383, column: 2, scope: !419)
!480 = !{!"194"}
!481 = !DILocation(line: 384, column: 17, scope: !419)
!482 = !{!"195"}
!483 = !DILocation(line: 384, column: 22, scope: !419)
!484 = !{!"196"}
!485 = !DILocation(line: 384, column: 2, scope: !419)
!486 = !{!"197"}
!487 = !DILocation(line: 385, column: 1, scope: !419)
!488 = !{!"198"}
!489 = distinct !DISubprogram(name: "br_dec32be", scope: !490, file: !490, line: 590, type: !491, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!490 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/DES_ct")
!491 = !DISubroutineType(types: !492)
!492 = !{!9, !50}
!493 = !DILocalVariable(name: "src", arg: 1, scope: !489, file: !490, line: 590, type: !50)
!494 = !DILocation(line: 0, scope: !489)
!495 = !{!"199"}
!496 = !DILocalVariable(name: "buf", scope: !489, file: !490, line: 595, type: !6)
!497 = !{!"200"}
!498 = !DILocation(line: 598, column: 20, scope: !489)
!499 = !{!"201"}
!500 = !{!"202"}
!501 = !DILocation(line: 598, column: 10, scope: !489)
!502 = !{!"203"}
!503 = !DILocation(line: 598, column: 27, scope: !489)
!504 = !{!"204"}
!505 = !DILocation(line: 599, column: 16, scope: !489)
!506 = !{!"205"}
!507 = !{!"206"}
!508 = !DILocation(line: 599, column: 6, scope: !489)
!509 = !{!"207"}
!510 = !DILocation(line: 599, column: 23, scope: !489)
!511 = !{!"208"}
!512 = !DILocation(line: 599, column: 3, scope: !489)
!513 = !{!"209"}
!514 = !DILocation(line: 600, column: 16, scope: !489)
!515 = !{!"210"}
!516 = !{!"211"}
!517 = !DILocation(line: 600, column: 6, scope: !489)
!518 = !{!"212"}
!519 = !DILocation(line: 600, column: 23, scope: !489)
!520 = !{!"213"}
!521 = !DILocation(line: 600, column: 3, scope: !489)
!522 = !{!"214"}
!523 = !DILocation(line: 601, column: 15, scope: !489)
!524 = !{!"215"}
!525 = !{!"216"}
!526 = !DILocation(line: 601, column: 5, scope: !489)
!527 = !{!"217"}
!528 = !DILocation(line: 601, column: 3, scope: !489)
!529 = !{!"218"}
!530 = !DILocation(line: 598, column: 2, scope: !489)
!531 = !{!"219"}
!532 = distinct !DISubprogram(name: "process_block_unit", scope: !3, file: !3, line: 347, type: !533, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !149, !149, !422}
!535 = !DILocalVariable(name: "pl", arg: 1, scope: !532, file: !3, line: 347, type: !149)
!536 = !DILocation(line: 0, scope: !532)
!537 = !{!"220"}
!538 = !DILocalVariable(name: "pr", arg: 2, scope: !532, file: !3, line: 347, type: !149)
!539 = !{!"221"}
!540 = !DILocalVariable(name: "sk_exp", arg: 3, scope: !532, file: !3, line: 347, type: !422)
!541 = !{!"222"}
!542 = !DILocation(line: 352, column: 6, scope: !532)
!543 = !{!"223"}
!544 = !DILocalVariable(name: "l", scope: !532, file: !3, line: 350, type: !9)
!545 = !{!"224"}
!546 = !DILocation(line: 353, column: 6, scope: !532)
!547 = !{!"225"}
!548 = !DILocalVariable(name: "r", scope: !532, file: !3, line: 350, type: !9)
!549 = !{!"226"}
!550 = !DILocalVariable(name: "i", scope: !532, file: !3, line: 349, type: !265)
!551 = !{!"227"}
!552 = !DILocation(line: 354, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !532, file: !3, line: 354, column: 2)
!554 = !{!"228"}
!555 = !DILocation(line: 0, scope: !553)
!556 = !{!"229"}
!557 = !{!"230"}
!558 = !{!"231"}
!559 = !{!"232"}
!560 = !{!"233"}
!561 = !{!"234"}
!562 = !{!"235"}
!563 = !{!"236"}
!564 = !DILocation(line: 354, column: 16, scope: !565)
!565 = distinct !DILexicalBlock(scope: !553, file: !3, line: 354, column: 2)
!566 = !{!"237"}
!567 = !DILocation(line: 354, column: 2, scope: !553)
!568 = !{!"238"}
!569 = !DILocation(line: 357, column: 11, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !3, line: 354, column: 28)
!571 = !{!"239"}
!572 = !DILocation(line: 357, column: 9, scope: !570)
!573 = !{!"240"}
!574 = !DILocalVariable(name: "t", scope: !570, file: !3, line: 355, type: !9)
!575 = !DILocation(line: 0, scope: !570)
!576 = !{!"241"}
!577 = !{!"242"}
!578 = !{!"243"}
!579 = !DILocation(line: 360, column: 10, scope: !570)
!580 = !{!"244"}
!581 = !{!"245"}
!582 = !DILocation(line: 361, column: 2, scope: !570)
!583 = !{!"246"}
!584 = !DILocation(line: 354, column: 24, scope: !565)
!585 = !{!"247"}
!586 = !{!"248"}
!587 = !DILocation(line: 354, column: 2, scope: !565)
!588 = distinct !{!588, !567, !589, !388}
!589 = !DILocation(line: 361, column: 2, scope: !553)
!590 = !{!"249"}
!591 = !DILocation(line: 362, column: 6, scope: !532)
!592 = !{!"250"}
!593 = !DILocation(line: 363, column: 6, scope: !532)
!594 = !{!"251"}
!595 = !DILocation(line: 364, column: 1, scope: !532)
!596 = !{!"252"}
!597 = distinct !DISubprogram(name: "br_enc32be", scope: !490, file: !490, line: 558, type: !598, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !58, !9}
!600 = !DILocalVariable(name: "dst", arg: 1, scope: !597, file: !490, line: 558, type: !58)
!601 = !DILocation(line: 0, scope: !597)
!602 = !{!"253"}
!603 = !DILocalVariable(name: "x", arg: 2, scope: !597, file: !490, line: 558, type: !9)
!604 = !{!"254"}
!605 = !DILocalVariable(name: "buf", scope: !597, file: !490, line: 563, type: !440)
!606 = !{!"255"}
!607 = !DILocation(line: 566, column: 29, scope: !597)
!608 = !{!"256"}
!609 = !DILocation(line: 566, column: 11, scope: !597)
!610 = !{!"257"}
!611 = !DILocation(line: 566, column: 2, scope: !597)
!612 = !{!"258"}
!613 = !DILocation(line: 566, column: 9, scope: !597)
!614 = !{!"259"}
!615 = !DILocation(line: 567, column: 29, scope: !597)
!616 = !{!"260"}
!617 = !DILocation(line: 567, column: 11, scope: !597)
!618 = !{!"261"}
!619 = !DILocation(line: 567, column: 2, scope: !597)
!620 = !{!"262"}
!621 = !DILocation(line: 567, column: 9, scope: !597)
!622 = !{!"263"}
!623 = !DILocation(line: 568, column: 29, scope: !597)
!624 = !{!"264"}
!625 = !DILocation(line: 568, column: 11, scope: !597)
!626 = !{!"265"}
!627 = !DILocation(line: 568, column: 2, scope: !597)
!628 = !{!"266"}
!629 = !DILocation(line: 568, column: 9, scope: !597)
!630 = !{!"267"}
!631 = !DILocation(line: 569, column: 11, scope: !597)
!632 = !{!"268"}
!633 = !DILocation(line: 569, column: 2, scope: !597)
!634 = !{!"269"}
!635 = !DILocation(line: 569, column: 9, scope: !597)
!636 = !{!"270"}
!637 = !DILocation(line: 571, column: 1, scope: !597)
!638 = !{!"271"}
!639 = distinct !DISubprogram(name: "Fconf", scope: !3, file: !3, line: 184, type: !640, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!640 = !DISubroutineType(types: !641)
!641 = !{!9, !9, !422}
!642 = !DILocalVariable(name: "r0", arg: 1, scope: !639, file: !3, line: 184, type: !9)
!643 = !DILocation(line: 0, scope: !639)
!644 = !{!"272"}
!645 = !DILocalVariable(name: "sk", arg: 2, scope: !639, file: !3, line: 184, type: !422)
!646 = !{!"273"}
!647 = !DILocation(line: 214, column: 10, scope: !639)
!648 = !{!"274"}
!649 = !DILocalVariable(name: "x1", scope: !639, file: !3, line: 205, type: !9)
!650 = !{!"275"}
!651 = !DILocation(line: 215, column: 11, scope: !639)
!652 = !{!"276"}
!653 = !DILocation(line: 215, column: 17, scope: !639)
!654 = !{!"277"}
!655 = !DILocalVariable(name: "x2", scope: !639, file: !3, line: 205, type: !9)
!656 = !{!"278"}
!657 = !DILocation(line: 216, column: 11, scope: !639)
!658 = !{!"279"}
!659 = !DILocation(line: 216, column: 17, scope: !639)
!660 = !{!"280"}
!661 = !DILocalVariable(name: "x3", scope: !639, file: !3, line: 205, type: !9)
!662 = !{!"281"}
!663 = !DILocation(line: 217, column: 11, scope: !639)
!664 = !{!"282"}
!665 = !DILocation(line: 217, column: 17, scope: !639)
!666 = !{!"283"}
!667 = !DILocalVariable(name: "x4", scope: !639, file: !3, line: 205, type: !9)
!668 = !{!"284"}
!669 = !DILocation(line: 218, column: 11, scope: !639)
!670 = !{!"285"}
!671 = !DILocation(line: 218, column: 17, scope: !639)
!672 = !{!"286"}
!673 = !{!"287"}
!674 = !DILocation(line: 219, column: 11, scope: !639)
!675 = !{!"288"}
!676 = !DILocation(line: 219, column: 17, scope: !639)
!677 = !{!"289"}
!678 = !{!"290"}
!679 = !DILocation(line: 220, column: 11, scope: !639)
!680 = !{!"291"}
!681 = !DILocation(line: 220, column: 17, scope: !639)
!682 = !{!"292"}
!683 = !{!"293"}
!684 = !DILocation(line: 221, column: 11, scope: !639)
!685 = !{!"294"}
!686 = !DILocation(line: 221, column: 17, scope: !639)
!687 = !{!"295"}
!688 = !{!"296"}
!689 = !DILocation(line: 222, column: 11, scope: !639)
!690 = !{!"297"}
!691 = !DILocation(line: 222, column: 23, scope: !639)
!692 = !{!"298"}
!693 = !DILocation(line: 222, column: 17, scope: !639)
!694 = !{!"299"}
!695 = !DILocalVariable(name: "x0", scope: !639, file: !3, line: 205, type: !9)
!696 = !{!"300"}
!697 = !DILocation(line: 223, column: 11, scope: !639)
!698 = !{!"301"}
!699 = !DILocation(line: 223, column: 23, scope: !639)
!700 = !{!"302"}
!701 = !DILocation(line: 223, column: 17, scope: !639)
!702 = !{!"303"}
!703 = !DILocalVariable(name: "x5", scope: !639, file: !3, line: 205, type: !9)
!704 = !{!"304"}
!705 = !DILocation(line: 228, column: 8, scope: !639)
!706 = !{!"305"}
!707 = !{!"306"}
!708 = !DILocation(line: 228, column: 5, scope: !639)
!709 = !{!"307"}
!710 = !{!"308"}
!711 = !DILocation(line: 229, column: 8, scope: !639)
!712 = !{!"309"}
!713 = !{!"310"}
!714 = !DILocation(line: 229, column: 5, scope: !639)
!715 = !{!"311"}
!716 = !{!"312"}
!717 = !DILocation(line: 230, column: 8, scope: !639)
!718 = !{!"313"}
!719 = !{!"314"}
!720 = !DILocation(line: 230, column: 5, scope: !639)
!721 = !{!"315"}
!722 = !{!"316"}
!723 = !DILocation(line: 231, column: 8, scope: !639)
!724 = !{!"317"}
!725 = !{!"318"}
!726 = !DILocation(line: 231, column: 5, scope: !639)
!727 = !{!"319"}
!728 = !{!"320"}
!729 = !DILocation(line: 232, column: 8, scope: !639)
!730 = !{!"321"}
!731 = !{!"322"}
!732 = !DILocation(line: 232, column: 5, scope: !639)
!733 = !{!"323"}
!734 = !{!"324"}
!735 = !DILocation(line: 233, column: 8, scope: !639)
!736 = !{!"325"}
!737 = !{!"326"}
!738 = !DILocation(line: 233, column: 5, scope: !639)
!739 = !{!"327"}
!740 = !{!"328"}
!741 = !DILocation(line: 243, column: 34, scope: !639)
!742 = !{!"329"}
!743 = !DILocation(line: 243, column: 28, scope: !639)
!744 = !{!"330"}
!745 = !DILocalVariable(name: "y0", scope: !639, file: !3, line: 206, type: !9)
!746 = !{!"331"}
!747 = !DILocation(line: 244, column: 34, scope: !639)
!748 = !{!"332"}
!749 = !DILocation(line: 244, column: 28, scope: !639)
!750 = !{!"333"}
!751 = !DILocalVariable(name: "y1", scope: !639, file: !3, line: 206, type: !9)
!752 = !{!"334"}
!753 = !DILocation(line: 245, column: 34, scope: !639)
!754 = !{!"335"}
!755 = !DILocation(line: 245, column: 28, scope: !639)
!756 = !{!"336"}
!757 = !DILocalVariable(name: "y2", scope: !639, file: !3, line: 206, type: !9)
!758 = !{!"337"}
!759 = !DILocation(line: 246, column: 34, scope: !639)
!760 = !{!"338"}
!761 = !DILocation(line: 246, column: 28, scope: !639)
!762 = !{!"339"}
!763 = !DILocalVariable(name: "y3", scope: !639, file: !3, line: 206, type: !9)
!764 = !{!"340"}
!765 = !DILocation(line: 247, column: 34, scope: !639)
!766 = !{!"341"}
!767 = !DILocation(line: 247, column: 28, scope: !639)
!768 = !{!"342"}
!769 = !DILocalVariable(name: "y4", scope: !639, file: !3, line: 206, type: !9)
!770 = !{!"343"}
!771 = !DILocation(line: 248, column: 34, scope: !639)
!772 = !{!"344"}
!773 = !DILocation(line: 248, column: 28, scope: !639)
!774 = !{!"345"}
!775 = !DILocalVariable(name: "y5", scope: !639, file: !3, line: 206, type: !9)
!776 = !{!"346"}
!777 = !DILocation(line: 249, column: 34, scope: !639)
!778 = !{!"347"}
!779 = !DILocation(line: 249, column: 28, scope: !639)
!780 = !{!"348"}
!781 = !DILocalVariable(name: "y6", scope: !639, file: !3, line: 206, type: !9)
!782 = !{!"349"}
!783 = !DILocation(line: 250, column: 34, scope: !639)
!784 = !{!"350"}
!785 = !DILocation(line: 250, column: 28, scope: !639)
!786 = !{!"351"}
!787 = !DILocalVariable(name: "y7", scope: !639, file: !3, line: 206, type: !9)
!788 = !{!"352"}
!789 = !DILocation(line: 251, column: 34, scope: !639)
!790 = !{!"353"}
!791 = !DILocation(line: 251, column: 28, scope: !639)
!792 = !{!"354"}
!793 = !DILocalVariable(name: "y8", scope: !639, file: !3, line: 206, type: !9)
!794 = !{!"355"}
!795 = !DILocation(line: 252, column: 34, scope: !639)
!796 = !{!"356"}
!797 = !DILocation(line: 252, column: 28, scope: !639)
!798 = !{!"357"}
!799 = !DILocalVariable(name: "y9", scope: !639, file: !3, line: 206, type: !9)
!800 = !{!"358"}
!801 = !DILocation(line: 253, column: 35, scope: !639)
!802 = !{!"359"}
!803 = !DILocation(line: 253, column: 29, scope: !639)
!804 = !{!"360"}
!805 = !DILocalVariable(name: "y10", scope: !639, file: !3, line: 207, type: !9)
!806 = !{!"361"}
!807 = !DILocation(line: 254, column: 35, scope: !639)
!808 = !{!"362"}
!809 = !DILocation(line: 254, column: 29, scope: !639)
!810 = !{!"363"}
!811 = !DILocalVariable(name: "y11", scope: !639, file: !3, line: 207, type: !9)
!812 = !{!"364"}
!813 = !DILocation(line: 255, column: 35, scope: !639)
!814 = !{!"365"}
!815 = !DILocation(line: 255, column: 29, scope: !639)
!816 = !{!"366"}
!817 = !DILocalVariable(name: "y12", scope: !639, file: !3, line: 207, type: !9)
!818 = !{!"367"}
!819 = !DILocation(line: 256, column: 35, scope: !639)
!820 = !{!"368"}
!821 = !DILocation(line: 256, column: 29, scope: !639)
!822 = !{!"369"}
!823 = !DILocalVariable(name: "y13", scope: !639, file: !3, line: 207, type: !9)
!824 = !{!"370"}
!825 = !DILocation(line: 257, column: 35, scope: !639)
!826 = !{!"371"}
!827 = !DILocation(line: 257, column: 29, scope: !639)
!828 = !{!"372"}
!829 = !DILocalVariable(name: "y14", scope: !639, file: !3, line: 207, type: !9)
!830 = !{!"373"}
!831 = !DILocation(line: 259, column: 35, scope: !639)
!832 = !{!"374"}
!833 = !DILocation(line: 259, column: 29, scope: !639)
!834 = !{!"375"}
!835 = !DILocalVariable(name: "y16", scope: !639, file: !3, line: 207, type: !9)
!836 = !{!"376"}
!837 = !DILocation(line: 260, column: 35, scope: !639)
!838 = !{!"377"}
!839 = !DILocation(line: 260, column: 29, scope: !639)
!840 = !{!"378"}
!841 = !DILocalVariable(name: "y17", scope: !639, file: !3, line: 207, type: !9)
!842 = !{!"379"}
!843 = !DILocation(line: 261, column: 35, scope: !639)
!844 = !{!"380"}
!845 = !DILocation(line: 261, column: 29, scope: !639)
!846 = !{!"381"}
!847 = !DILocalVariable(name: "y18", scope: !639, file: !3, line: 207, type: !9)
!848 = !{!"382"}
!849 = !DILocation(line: 262, column: 35, scope: !639)
!850 = !{!"383"}
!851 = !DILocation(line: 262, column: 29, scope: !639)
!852 = !{!"384"}
!853 = !DILocalVariable(name: "y19", scope: !639, file: !3, line: 207, type: !9)
!854 = !{!"385"}
!855 = !DILocation(line: 263, column: 35, scope: !639)
!856 = !{!"386"}
!857 = !DILocation(line: 263, column: 29, scope: !639)
!858 = !{!"387"}
!859 = !DILocalVariable(name: "y20", scope: !639, file: !3, line: 208, type: !9)
!860 = !{!"388"}
!861 = !DILocation(line: 264, column: 35, scope: !639)
!862 = !{!"389"}
!863 = !DILocation(line: 264, column: 29, scope: !639)
!864 = !{!"390"}
!865 = !DILocalVariable(name: "y21", scope: !639, file: !3, line: 208, type: !9)
!866 = !{!"391"}
!867 = !DILocation(line: 265, column: 35, scope: !639)
!868 = !{!"392"}
!869 = !DILocation(line: 265, column: 29, scope: !639)
!870 = !{!"393"}
!871 = !DILocalVariable(name: "y22", scope: !639, file: !3, line: 208, type: !9)
!872 = !{!"394"}
!873 = !DILocation(line: 266, column: 35, scope: !639)
!874 = !{!"395"}
!875 = !DILocation(line: 266, column: 29, scope: !639)
!876 = !{!"396"}
!877 = !DILocalVariable(name: "y23", scope: !639, file: !3, line: 208, type: !9)
!878 = !{!"397"}
!879 = !DILocation(line: 267, column: 35, scope: !639)
!880 = !{!"398"}
!881 = !DILocation(line: 267, column: 29, scope: !639)
!882 = !{!"399"}
!883 = !DILocalVariable(name: "y24", scope: !639, file: !3, line: 208, type: !9)
!884 = !{!"400"}
!885 = !DILocation(line: 268, column: 35, scope: !639)
!886 = !{!"401"}
!887 = !DILocation(line: 268, column: 29, scope: !639)
!888 = !{!"402"}
!889 = !DILocalVariable(name: "y25", scope: !639, file: !3, line: 208, type: !9)
!890 = !{!"403"}
!891 = !DILocation(line: 269, column: 35, scope: !639)
!892 = !{!"404"}
!893 = !DILocation(line: 269, column: 29, scope: !639)
!894 = !{!"405"}
!895 = !DILocalVariable(name: "y26", scope: !639, file: !3, line: 208, type: !9)
!896 = !{!"406"}
!897 = !DILocation(line: 270, column: 35, scope: !639)
!898 = !{!"407"}
!899 = !DILocation(line: 270, column: 29, scope: !639)
!900 = !{!"408"}
!901 = !DILocalVariable(name: "y27", scope: !639, file: !3, line: 208, type: !9)
!902 = !{!"409"}
!903 = !DILocation(line: 271, column: 35, scope: !639)
!904 = !{!"410"}
!905 = !DILocation(line: 271, column: 29, scope: !639)
!906 = !{!"411"}
!907 = !DILocalVariable(name: "y28", scope: !639, file: !3, line: 208, type: !9)
!908 = !{!"412"}
!909 = !DILocation(line: 272, column: 35, scope: !639)
!910 = !{!"413"}
!911 = !DILocation(line: 272, column: 29, scope: !639)
!912 = !{!"414"}
!913 = !DILocalVariable(name: "y29", scope: !639, file: !3, line: 208, type: !9)
!914 = !{!"415"}
!915 = !DILocation(line: 273, column: 35, scope: !639)
!916 = !{!"416"}
!917 = !DILocation(line: 273, column: 29, scope: !639)
!918 = !{!"417"}
!919 = !DILocalVariable(name: "y30", scope: !639, file: !3, line: 209, type: !9)
!920 = !{!"418"}
!921 = !DILocation(line: 276, column: 16, scope: !639)
!922 = !{!"419"}
!923 = !DILocation(line: 276, column: 10, scope: !639)
!924 = !{!"420"}
!925 = !{!"421"}
!926 = !DILocation(line: 277, column: 16, scope: !639)
!927 = !{!"422"}
!928 = !DILocation(line: 277, column: 10, scope: !639)
!929 = !{!"423"}
!930 = !{!"424"}
!931 = !DILocation(line: 278, column: 16, scope: !639)
!932 = !{!"425"}
!933 = !DILocation(line: 278, column: 10, scope: !639)
!934 = !{!"426"}
!935 = !{!"427"}
!936 = !DILocation(line: 279, column: 16, scope: !639)
!937 = !{!"428"}
!938 = !DILocation(line: 279, column: 10, scope: !639)
!939 = !{!"429"}
!940 = !{!"430"}
!941 = !DILocation(line: 280, column: 16, scope: !639)
!942 = !{!"431"}
!943 = !DILocation(line: 280, column: 10, scope: !639)
!944 = !{!"432"}
!945 = !{!"433"}
!946 = !DILocation(line: 281, column: 17, scope: !639)
!947 = !{!"434"}
!948 = !DILocation(line: 281, column: 11, scope: !639)
!949 = !{!"435"}
!950 = !{!"436"}
!951 = !DILocation(line: 282, column: 17, scope: !639)
!952 = !{!"437"}
!953 = !DILocation(line: 282, column: 11, scope: !639)
!954 = !{!"438"}
!955 = !{!"439"}
!956 = !{!"440"}
!957 = !DILocation(line: 284, column: 17, scope: !639)
!958 = !{!"441"}
!959 = !DILocation(line: 284, column: 11, scope: !639)
!960 = !{!"442"}
!961 = !{!"443"}
!962 = !DILocation(line: 285, column: 17, scope: !639)
!963 = !{!"444"}
!964 = !DILocation(line: 285, column: 11, scope: !639)
!965 = !{!"445"}
!966 = !{!"446"}
!967 = !DILocation(line: 286, column: 18, scope: !639)
!968 = !{!"447"}
!969 = !DILocation(line: 286, column: 12, scope: !639)
!970 = !{!"448"}
!971 = !{!"449"}
!972 = !DILocation(line: 287, column: 18, scope: !639)
!973 = !{!"450"}
!974 = !DILocation(line: 287, column: 12, scope: !639)
!975 = !{!"451"}
!976 = !{!"452"}
!977 = !DILocation(line: 288, column: 18, scope: !639)
!978 = !{!"453"}
!979 = !DILocation(line: 288, column: 12, scope: !639)
!980 = !{!"454"}
!981 = !{!"455"}
!982 = !DILocation(line: 289, column: 18, scope: !639)
!983 = !{!"456"}
!984 = !DILocation(line: 289, column: 12, scope: !639)
!985 = !{!"457"}
!986 = !{!"458"}
!987 = !DILocation(line: 290, column: 18, scope: !639)
!988 = !{!"459"}
!989 = !DILocation(line: 290, column: 12, scope: !639)
!990 = !{!"460"}
!991 = !{!"461"}
!992 = !DILocalVariable(name: "y15", scope: !639, file: !3, line: 207, type: !9)
!993 = !{!"462"}
!994 = !DILocation(line: 293, column: 16, scope: !639)
!995 = !{!"463"}
!996 = !DILocation(line: 293, column: 10, scope: !639)
!997 = !{!"464"}
!998 = !{!"465"}
!999 = !DILocation(line: 294, column: 16, scope: !639)
!1000 = !{!"466"}
!1001 = !DILocation(line: 294, column: 10, scope: !639)
!1002 = !{!"467"}
!1003 = !{!"468"}
!1004 = !DILocation(line: 295, column: 16, scope: !639)
!1005 = !{!"469"}
!1006 = !DILocation(line: 295, column: 10, scope: !639)
!1007 = !{!"470"}
!1008 = !{!"471"}
!1009 = !DILocation(line: 296, column: 16, scope: !639)
!1010 = !{!"472"}
!1011 = !DILocation(line: 296, column: 10, scope: !639)
!1012 = !{!"473"}
!1013 = !{!"474"}
!1014 = !DILocation(line: 297, column: 16, scope: !639)
!1015 = !{!"475"}
!1016 = !DILocation(line: 297, column: 10, scope: !639)
!1017 = !{!"476"}
!1018 = !{!"477"}
!1019 = !DILocation(line: 298, column: 17, scope: !639)
!1020 = !{!"478"}
!1021 = !DILocation(line: 298, column: 11, scope: !639)
!1022 = !{!"479"}
!1023 = !{!"480"}
!1024 = !DILocation(line: 299, column: 17, scope: !639)
!1025 = !{!"481"}
!1026 = !DILocation(line: 299, column: 11, scope: !639)
!1027 = !{!"482"}
!1028 = !{!"483"}
!1029 = !DILocation(line: 300, column: 17, scope: !639)
!1030 = !{!"484"}
!1031 = !DILocation(line: 300, column: 11, scope: !639)
!1032 = !{!"485"}
!1033 = !{!"486"}
!1034 = !DILocation(line: 302, column: 16, scope: !639)
!1035 = !{!"487"}
!1036 = !DILocation(line: 302, column: 10, scope: !639)
!1037 = !{!"488"}
!1038 = !{!"489"}
!1039 = !DILocation(line: 303, column: 16, scope: !639)
!1040 = !{!"490"}
!1041 = !DILocation(line: 303, column: 10, scope: !639)
!1042 = !{!"491"}
!1043 = !{!"492"}
!1044 = !DILocation(line: 304, column: 16, scope: !639)
!1045 = !{!"493"}
!1046 = !DILocation(line: 304, column: 10, scope: !639)
!1047 = !{!"494"}
!1048 = !{!"495"}
!1049 = !DILocation(line: 305, column: 16, scope: !639)
!1050 = !{!"496"}
!1051 = !DILocation(line: 305, column: 10, scope: !639)
!1052 = !{!"497"}
!1053 = !{!"498"}
!1054 = !DILocation(line: 307, column: 16, scope: !639)
!1055 = !{!"499"}
!1056 = !DILocation(line: 307, column: 10, scope: !639)
!1057 = !{!"500"}
!1058 = !{!"501"}
!1059 = !DILocation(line: 308, column: 16, scope: !639)
!1060 = !{!"502"}
!1061 = !DILocation(line: 308, column: 10, scope: !639)
!1062 = !{!"503"}
!1063 = !{!"504"}
!1064 = !DILocation(line: 310, column: 16, scope: !639)
!1065 = !{!"505"}
!1066 = !DILocation(line: 310, column: 10, scope: !639)
!1067 = !{!"506"}
!1068 = !{!"507"}
!1069 = !DILocation(line: 320, column: 11, scope: !639)
!1070 = !{!"508"}
!1071 = !DILocation(line: 320, column: 35, scope: !639)
!1072 = !{!"509"}
!1073 = !DILocalVariable(name: "z0", scope: !639, file: !3, line: 205, type: !9)
!1074 = !{!"510"}
!1075 = !DILocation(line: 321, column: 12, scope: !639)
!1076 = !{!"511"}
!1077 = !DILocation(line: 321, column: 36, scope: !639)
!1078 = !{!"512"}
!1079 = !DILocation(line: 321, column: 5, scope: !639)
!1080 = !{!"513"}
!1081 = !{!"514"}
!1082 = !DILocation(line: 322, column: 16, scope: !639)
!1083 = !{!"515"}
!1084 = !DILocation(line: 322, column: 8, scope: !639)
!1085 = !{!"516"}
!1086 = !DILocation(line: 322, column: 5, scope: !639)
!1087 = !{!"517"}
!1088 = !{!"518"}
!1089 = !DILocation(line: 323, column: 12, scope: !639)
!1090 = !{!"519"}
!1091 = !DILocation(line: 323, column: 36, scope: !639)
!1092 = !{!"520"}
!1093 = !DILocation(line: 323, column: 5, scope: !639)
!1094 = !{!"521"}
!1095 = !{!"522"}
!1096 = !DILocation(line: 324, column: 12, scope: !639)
!1097 = !{!"523"}
!1098 = !DILocation(line: 324, column: 36, scope: !639)
!1099 = !{!"524"}
!1100 = !DILocation(line: 324, column: 5, scope: !639)
!1101 = !{!"525"}
!1102 = !{!"526"}
!1103 = !DILocation(line: 325, column: 12, scope: !639)
!1104 = !{!"527"}
!1105 = !DILocation(line: 325, column: 36, scope: !639)
!1106 = !{!"528"}
!1107 = !DILocation(line: 325, column: 5, scope: !639)
!1108 = !{!"529"}
!1109 = !{!"530"}
!1110 = !DILocation(line: 326, column: 12, scope: !639)
!1111 = !{!"531"}
!1112 = !DILocation(line: 326, column: 36, scope: !639)
!1113 = !{!"532"}
!1114 = !DILocation(line: 326, column: 5, scope: !639)
!1115 = !{!"533"}
!1116 = !{!"534"}
!1117 = !DILocation(line: 327, column: 16, scope: !639)
!1118 = !{!"535"}
!1119 = !DILocation(line: 327, column: 8, scope: !639)
!1120 = !{!"536"}
!1121 = !DILocation(line: 327, column: 5, scope: !639)
!1122 = !{!"537"}
!1123 = !{!"538"}
!1124 = !DILocation(line: 328, column: 12, scope: !639)
!1125 = !{!"539"}
!1126 = !DILocation(line: 328, column: 36, scope: !639)
!1127 = !{!"540"}
!1128 = !DILocation(line: 328, column: 5, scope: !639)
!1129 = !{!"541"}
!1130 = !{!"542"}
!1131 = !DILocation(line: 329, column: 12, scope: !639)
!1132 = !{!"543"}
!1133 = !DILocation(line: 329, column: 36, scope: !639)
!1134 = !{!"544"}
!1135 = !DILocation(line: 329, column: 5, scope: !639)
!1136 = !{!"545"}
!1137 = !{!"546"}
!1138 = !DILocation(line: 330, column: 12, scope: !639)
!1139 = !{!"547"}
!1140 = !DILocation(line: 330, column: 36, scope: !639)
!1141 = !{!"548"}
!1142 = !DILocation(line: 330, column: 5, scope: !639)
!1143 = !{!"549"}
!1144 = !{!"550"}
!1145 = !DILocation(line: 331, column: 12, scope: !639)
!1146 = !{!"551"}
!1147 = !DILocation(line: 331, column: 36, scope: !639)
!1148 = !{!"552"}
!1149 = !DILocation(line: 331, column: 5, scope: !639)
!1150 = !{!"553"}
!1151 = !{!"554"}
!1152 = !DILocation(line: 332, column: 16, scope: !639)
!1153 = !{!"555"}
!1154 = !DILocation(line: 332, column: 8, scope: !639)
!1155 = !{!"556"}
!1156 = !DILocation(line: 332, column: 5, scope: !639)
!1157 = !{!"557"}
!1158 = !{!"558"}
!1159 = !DILocation(line: 333, column: 12, scope: !639)
!1160 = !{!"559"}
!1161 = !DILocation(line: 333, column: 36, scope: !639)
!1162 = !{!"560"}
!1163 = !DILocation(line: 333, column: 5, scope: !639)
!1164 = !{!"561"}
!1165 = !{!"562"}
!1166 = !DILocation(line: 334, column: 12, scope: !639)
!1167 = !{!"563"}
!1168 = !DILocation(line: 334, column: 36, scope: !639)
!1169 = !{!"564"}
!1170 = !DILocation(line: 334, column: 5, scope: !639)
!1171 = !{!"565"}
!1172 = !{!"566"}
!1173 = !DILocation(line: 335, column: 12, scope: !639)
!1174 = !{!"567"}
!1175 = !DILocation(line: 335, column: 36, scope: !639)
!1176 = !{!"568"}
!1177 = !DILocation(line: 335, column: 5, scope: !639)
!1178 = !{!"569"}
!1179 = !{!"570"}
!1180 = !DILocation(line: 336, column: 16, scope: !639)
!1181 = !{!"571"}
!1182 = !DILocation(line: 336, column: 8, scope: !639)
!1183 = !{!"572"}
!1184 = !DILocation(line: 336, column: 5, scope: !639)
!1185 = !{!"573"}
!1186 = !{!"574"}
!1187 = !DILocation(line: 337, column: 12, scope: !639)
!1188 = !{!"575"}
!1189 = !DILocation(line: 337, column: 36, scope: !639)
!1190 = !{!"576"}
!1191 = !DILocation(line: 337, column: 5, scope: !639)
!1192 = !{!"577"}
!1193 = !{!"578"}
!1194 = !DILocation(line: 338, column: 12, scope: !639)
!1195 = !{!"579"}
!1196 = !DILocation(line: 338, column: 36, scope: !639)
!1197 = !{!"580"}
!1198 = !DILocation(line: 338, column: 5, scope: !639)
!1199 = !{!"581"}
!1200 = !{!"582"}
!1201 = !DILocation(line: 339, column: 2, scope: !639)
!1202 = !{!"583"}
!1203 = distinct !DISubprogram(name: "rotl", scope: !3, file: !3, line: 64, type: !1204, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!9, !9, !265}
!1206 = !DILocalVariable(name: "x", arg: 1, scope: !1203, file: !3, line: 64, type: !9)
!1207 = !DILocation(line: 0, scope: !1203)
!1208 = !{!"584"}
!1209 = !DILocalVariable(name: "n", arg: 2, scope: !1203, file: !3, line: 64, type: !265)
!1210 = !{!"585"}
!1211 = !DILocation(line: 66, column: 12, scope: !1203)
!1212 = !{!"586"}
!1213 = !DILocation(line: 66, column: 30, scope: !1203)
!1214 = !{!"587"}
!1215 = !DILocation(line: 66, column: 23, scope: !1203)
!1216 = !{!"588"}
!1217 = !DILocation(line: 66, column: 18, scope: !1203)
!1218 = !{!"589"}
!1219 = !DILocation(line: 66, column: 2, scope: !1203)
!1220 = !{!"590"}
!1221 = distinct !DISubprogram(name: "br_des_ct_skey_expand", scope: !3, file: !3, line: 389, type: !1222, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !149, !13, !422}
!1224 = !DILocalVariable(name: "sk_exp", arg: 1, scope: !1221, file: !3, line: 389, type: !149)
!1225 = !DILocation(line: 0, scope: !1221)
!1226 = !{!"591"}
!1227 = !DILocalVariable(name: "num_rounds", arg: 2, scope: !1221, file: !3, line: 390, type: !13)
!1228 = !{!"592"}
!1229 = !DILocalVariable(name: "skey", arg: 3, scope: !1221, file: !3, line: 390, type: !422)
!1230 = !{!"593"}
!1231 = !DILocation(line: 392, column: 13, scope: !1221)
!1232 = !{!"594"}
!1233 = !{!"595"}
!1234 = !DILocation(line: 393, column: 2, scope: !1221)
!1235 = !{!"596"}
!1236 = !{!"597"}
!1237 = !{!"598"}
!1238 = !{!"599"}
!1239 = !{!"600"}
!1240 = !{!"601"}
!1241 = !{!"602"}
!1242 = !DILocation(line: 393, column: 20, scope: !1221)
!1243 = !{!"603"}
!1244 = !{!"604"}
!1245 = !DILocation(line: 393, column: 23, scope: !1221)
!1246 = !{!"605"}
!1247 = !{!"606"}
!1248 = !DILocation(line: 396, column: 13, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 393, column: 28)
!1250 = !{!"607"}
!1251 = !{!"608"}
!1252 = !DILocation(line: 396, column: 7, scope: !1249)
!1253 = !{!"609"}
!1254 = !DILocalVariable(name: "v", scope: !1249, file: !3, line: 394, type: !9)
!1255 = !DILocation(line: 0, scope: !1249)
!1256 = !{!"610"}
!1257 = !DILocation(line: 397, column: 10, scope: !1249)
!1258 = !{!"611"}
!1259 = !DILocalVariable(name: "w0", scope: !1249, file: !3, line: 394, type: !9)
!1260 = !{!"612"}
!1261 = !DILocation(line: 398, column: 11, scope: !1249)
!1262 = !{!"613"}
!1263 = !DILocation(line: 398, column: 17, scope: !1249)
!1264 = !{!"614"}
!1265 = !DILocalVariable(name: "w1", scope: !1249, file: !3, line: 394, type: !9)
!1266 = !{!"615"}
!1267 = !DILocation(line: 399, column: 11, scope: !1249)
!1268 = !{!"616"}
!1269 = !DILocation(line: 399, column: 17, scope: !1249)
!1270 = !{!"617"}
!1271 = !DILocalVariable(name: "w2", scope: !1249, file: !3, line: 394, type: !9)
!1272 = !{!"618"}
!1273 = !DILocation(line: 400, column: 11, scope: !1249)
!1274 = !{!"619"}
!1275 = !DILocation(line: 400, column: 17, scope: !1249)
!1276 = !{!"620"}
!1277 = !DILocalVariable(name: "w3", scope: !1249, file: !3, line: 394, type: !9)
!1278 = !{!"621"}
!1279 = !DILocation(line: 401, column: 20, scope: !1249)
!1280 = !{!"622"}
!1281 = !DILocation(line: 401, column: 26, scope: !1249)
!1282 = !{!"623"}
!1283 = !DILocation(line: 401, column: 11, scope: !1249)
!1284 = !{!"624"}
!1285 = !{!"625"}
!1286 = !DILocation(line: 401, column: 14, scope: !1249)
!1287 = !{!"626"}
!1288 = !DILocation(line: 402, column: 20, scope: !1249)
!1289 = !{!"627"}
!1290 = !DILocation(line: 402, column: 26, scope: !1249)
!1291 = !{!"628"}
!1292 = !DILocation(line: 402, column: 11, scope: !1249)
!1293 = !{!"629"}
!1294 = !{!"630"}
!1295 = !DILocation(line: 402, column: 14, scope: !1249)
!1296 = !{!"631"}
!1297 = !DILocation(line: 403, column: 20, scope: !1249)
!1298 = !{!"632"}
!1299 = !DILocation(line: 403, column: 26, scope: !1249)
!1300 = !{!"633"}
!1301 = !DILocation(line: 403, column: 11, scope: !1249)
!1302 = !{!"634"}
!1303 = !{!"635"}
!1304 = !DILocation(line: 403, column: 14, scope: !1249)
!1305 = !{!"636"}
!1306 = !DILocation(line: 404, column: 20, scope: !1249)
!1307 = !{!"637"}
!1308 = !DILocation(line: 404, column: 26, scope: !1249)
!1309 = !{!"638"}
!1310 = !DILocation(line: 404, column: 11, scope: !1249)
!1311 = !{!"639"}
!1312 = !{!"640"}
!1313 = !DILocation(line: 404, column: 14, scope: !1249)
!1314 = !{!"641"}
!1315 = !DILocation(line: 405, column: 13, scope: !1249)
!1316 = !{!"642"}
!1317 = !{!"643"}
!1318 = !DILocation(line: 405, column: 7, scope: !1249)
!1319 = !{!"644"}
!1320 = !{!"645"}
!1321 = !DILocation(line: 406, column: 10, scope: !1249)
!1322 = !{!"646"}
!1323 = !{!"647"}
!1324 = !DILocation(line: 407, column: 11, scope: !1249)
!1325 = !{!"648"}
!1326 = !DILocation(line: 407, column: 17, scope: !1249)
!1327 = !{!"649"}
!1328 = !{!"650"}
!1329 = !DILocation(line: 408, column: 20, scope: !1249)
!1330 = !{!"651"}
!1331 = !DILocation(line: 408, column: 26, scope: !1249)
!1332 = !{!"652"}
!1333 = !DILocation(line: 408, column: 11, scope: !1249)
!1334 = !{!"653"}
!1335 = !{!"654"}
!1336 = !DILocation(line: 408, column: 14, scope: !1249)
!1337 = !{!"655"}
!1338 = !DILocation(line: 409, column: 20, scope: !1249)
!1339 = !{!"656"}
!1340 = !DILocation(line: 409, column: 26, scope: !1249)
!1341 = !{!"657"}
!1342 = !DILocation(line: 409, column: 11, scope: !1249)
!1343 = !{!"658"}
!1344 = !{!"659"}
!1345 = !DILocation(line: 409, column: 14, scope: !1249)
!1346 = !{!"660"}
!1347 = distinct !{!1347, !1234, !1348, !388}
!1348 = !DILocation(line: 410, column: 2, scope: !1221)
!1349 = !{!"661"}
!1350 = !DILocation(line: 411, column: 1, scope: !1221)
!1351 = !{!"662"}
!1352 = distinct !DISubprogram(name: "br_des_ct_cbcdec_init", scope: !31, file: !31, line: 29, type: !1353, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !4)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !1355, !50, !39}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_des_ct_cbcdec_keys", file: !35, line: 2338, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 2331, size: 3200, elements: !1358)
!1358 = !{!1359, !1360, !1361}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1357, file: !35, line: 2333, baseType: !49, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !1357, file: !35, line: 2335, baseType: !98, size: 3072, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !1357, file: !35, line: 2336, baseType: !13, size: 32, offset: 3136)
!1362 = !DILocalVariable(name: "ctx", arg: 1, scope: !1352, file: !31, line: 29, type: !1355)
!1363 = !DILocation(line: 0, scope: !1352)
!1364 = !{!"663"}
!1365 = !DILocalVariable(name: "key", arg: 2, scope: !1352, file: !31, line: 30, type: !50)
!1366 = !{!"664"}
!1367 = !DILocalVariable(name: "len", arg: 3, scope: !1352, file: !31, line: 30, type: !39)
!1368 = !{!"665"}
!1369 = !DILocation(line: 32, column: 7, scope: !1352)
!1370 = !{!"666"}
!1371 = !DILocation(line: 32, column: 14, scope: !1352)
!1372 = !{!"667"}
!1373 = !DILocation(line: 33, column: 44, scope: !1352)
!1374 = !{!"668"}
!1375 = !DILocation(line: 33, column: 39, scope: !1352)
!1376 = !{!"669"}
!1377 = !DILocation(line: 33, column: 20, scope: !1352)
!1378 = !{!"670"}
!1379 = !DILocation(line: 33, column: 7, scope: !1352)
!1380 = !{!"671"}
!1381 = !DILocation(line: 33, column: 18, scope: !1352)
!1382 = !{!"672"}
!1383 = !DILocation(line: 34, column: 10, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1352, file: !31, line: 34, column: 6)
!1385 = !{!"673"}
!1386 = !DILocation(line: 34, column: 6, scope: !1352)
!1387 = !{!"674"}
!1388 = !DILocation(line: 35, column: 24, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !31, line: 34, column: 16)
!1390 = !{!"675"}
!1391 = !DILocation(line: 35, column: 19, scope: !1389)
!1392 = !{!"676"}
!1393 = !DILocation(line: 35, column: 3, scope: !1389)
!1394 = !{!"677"}
!1395 = !DILocation(line: 36, column: 2, scope: !1389)
!1396 = !{!"678"}
!1397 = !DILocalVariable(name: "i", scope: !1398, file: !31, line: 37, type: !265)
!1398 = distinct !DILexicalBlock(scope: !1384, file: !31, line: 36, column: 9)
!1399 = !DILocation(line: 0, scope: !1398)
!1400 = !{!"679"}
!1401 = !DILocation(line: 39, column: 8, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !31, line: 39, column: 3)
!1403 = !{!"680"}
!1404 = !DILocation(line: 0, scope: !1402)
!1405 = !{!"681"}
!1406 = !{!"682"}
!1407 = !DILocation(line: 39, column: 17, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !31, line: 39, column: 3)
!1409 = !{!"683"}
!1410 = !DILocation(line: 39, column: 3, scope: !1402)
!1411 = !{!"684"}
!1412 = !DILocation(line: 42, column: 13, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1408, file: !31, line: 39, column: 31)
!1414 = !{!"685"}
!1415 = !DILocation(line: 42, column: 8, scope: !1413)
!1416 = !{!"686"}
!1417 = !{!"687"}
!1418 = !{!"688"}
!1419 = !DILocalVariable(name: "t", scope: !1413, file: !31, line: 40, type: !9)
!1420 = !DILocation(line: 0, scope: !1413)
!1421 = !{!"689"}
!1422 = !DILocation(line: 43, column: 24, scope: !1413)
!1423 = !{!"690"}
!1424 = !DILocation(line: 43, column: 32, scope: !1413)
!1425 = !{!"691"}
!1426 = !DILocation(line: 43, column: 19, scope: !1413)
!1427 = !{!"692"}
!1428 = !{!"693"}
!1429 = !{!"694"}
!1430 = !DILocation(line: 43, column: 9, scope: !1413)
!1431 = !{!"695"}
!1432 = !DILocation(line: 43, column: 4, scope: !1413)
!1433 = !{!"696"}
!1434 = !{!"697"}
!1435 = !DILocation(line: 43, column: 17, scope: !1413)
!1436 = !{!"698"}
!1437 = !DILocation(line: 44, column: 9, scope: !1413)
!1438 = !{!"699"}
!1439 = !DILocation(line: 44, column: 17, scope: !1413)
!1440 = !{!"700"}
!1441 = !DILocation(line: 44, column: 4, scope: !1413)
!1442 = !{!"701"}
!1443 = !{!"702"}
!1444 = !DILocation(line: 44, column: 22, scope: !1413)
!1445 = !{!"703"}
!1446 = !DILocation(line: 45, column: 13, scope: !1413)
!1447 = !{!"704"}
!1448 = !DILocation(line: 45, column: 20, scope: !1413)
!1449 = !{!"705"}
!1450 = !DILocation(line: 45, column: 8, scope: !1413)
!1451 = !{!"706"}
!1452 = !{!"707"}
!1453 = !{!"708"}
!1454 = !{!"709"}
!1455 = !DILocation(line: 46, column: 28, scope: !1413)
!1456 = !{!"710"}
!1457 = !DILocation(line: 46, column: 36, scope: !1413)
!1458 = !{!"711"}
!1459 = !DILocation(line: 46, column: 23, scope: !1413)
!1460 = !{!"712"}
!1461 = !{!"713"}
!1462 = !{!"714"}
!1463 = !DILocation(line: 46, column: 9, scope: !1413)
!1464 = !{!"715"}
!1465 = !DILocation(line: 46, column: 16, scope: !1413)
!1466 = !{!"716"}
!1467 = !DILocation(line: 46, column: 4, scope: !1413)
!1468 = !{!"717"}
!1469 = !{!"718"}
!1470 = !DILocation(line: 46, column: 21, scope: !1413)
!1471 = !{!"719"}
!1472 = !DILocation(line: 47, column: 9, scope: !1413)
!1473 = !{!"720"}
!1474 = !DILocation(line: 47, column: 17, scope: !1413)
!1475 = !{!"721"}
!1476 = !DILocation(line: 47, column: 4, scope: !1413)
!1477 = !{!"722"}
!1478 = !{!"723"}
!1479 = !DILocation(line: 47, column: 22, scope: !1413)
!1480 = !{!"724"}
!1481 = !DILocation(line: 48, column: 3, scope: !1413)
!1482 = !{!"725"}
!1483 = !DILocation(line: 39, column: 25, scope: !1408)
!1484 = !{!"726"}
!1485 = !{!"727"}
!1486 = !DILocation(line: 39, column: 3, scope: !1408)
!1487 = distinct !{!1487, !1410, !1488, !388}
!1488 = !DILocation(line: 48, column: 3, scope: !1402)
!1489 = !{!"728"}
!1490 = !{!"729"}
!1491 = !DILocation(line: 50, column: 1, scope: !1352)
!1492 = !{!"730"}
!1493 = distinct !DISubprogram(name: "br_des_ct_cbcdec_run", scope: !31, file: !31, line: 54, type: !1494, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !4)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !1496, !58, !58, !39}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1498 = !{!"731"}
!1499 = !{!"732"}
!1500 = !DILocalVariable(name: "ctx", arg: 1, scope: !1493, file: !31, line: 54, type: !1496)
!1501 = !DILocation(line: 0, scope: !1493)
!1502 = !{!"733"}
!1503 = !DILocalVariable(name: "iv", arg: 2, scope: !1493, file: !31, line: 55, type: !58)
!1504 = !{!"734"}
!1505 = !DILocalVariable(name: "data", arg: 3, scope: !1493, file: !31, line: 55, type: !58)
!1506 = !{!"735"}
!1507 = !DILocalVariable(name: "len", arg: 4, scope: !1493, file: !31, line: 55, type: !39)
!1508 = !{!"736"}
!1509 = !DILocalVariable(name: "sk_exp", scope: !1493, file: !31, line: 58, type: !1510)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 9216, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 288)
!1513 = !DILocation(line: 58, column: 11, scope: !1493)
!1514 = !{!"737"}
!1515 = !DILocation(line: 60, column: 24, scope: !1493)
!1516 = !{!"738"}
!1517 = !DILocation(line: 60, column: 37, scope: !1493)
!1518 = !{!"739"}
!1519 = !{!"740"}
!1520 = !DILocation(line: 60, column: 54, scope: !1493)
!1521 = !{!"741"}
!1522 = !DILocation(line: 60, column: 49, scope: !1493)
!1523 = !{!"742"}
!1524 = !DILocation(line: 60, column: 2, scope: !1493)
!1525 = !{!"743"}
!1526 = !DILocalVariable(name: "ivbuf", scope: !1493, file: !31, line: 57, type: !440)
!1527 = !{!"744"}
!1528 = !DILocalVariable(name: "buf", scope: !1493, file: !31, line: 57, type: !440)
!1529 = !{!"745"}
!1530 = !DILocation(line: 63, column: 2, scope: !1493)
!1531 = !{!"746"}
!1532 = !{!"747"}
!1533 = !{!"748"}
!1534 = !{!"749"}
!1535 = !{!"750"}
!1536 = !DILocation(line: 63, column: 13, scope: !1493)
!1537 = !{!"751"}
!1538 = !{!"752"}
!1539 = !DILocalVariable(name: "tmp", scope: !1540, file: !31, line: 64, type: !1541)
!1540 = distinct !DILexicalBlock(scope: !1493, file: !31, line: 63, column: 18)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !1542)
!1542 = !{!1543}
!1543 = !DISubrange(count: 8)
!1544 = !DILocation(line: 64, column: 17, scope: !1540)
!1545 = !{!"753"}
!1546 = !DILocation(line: 67, column: 3, scope: !1540)
!1547 = !{!"754"}
!1548 = !{!"755"}
!1549 = !DILocation(line: 68, column: 32, scope: !1540)
!1550 = !{!"756"}
!1551 = !{!"757"}
!1552 = !DILocation(line: 68, column: 44, scope: !1540)
!1553 = !{!"758"}
!1554 = !DILocation(line: 68, column: 3, scope: !1540)
!1555 = !{!"759"}
!1556 = !DILocalVariable(name: "i", scope: !1540, file: !31, line: 65, type: !265)
!1557 = !DILocation(line: 0, scope: !1540)
!1558 = !{!"760"}
!1559 = !DILocation(line: 69, column: 8, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1540, file: !31, line: 69, column: 3)
!1561 = !{!"761"}
!1562 = !DILocation(line: 0, scope: !1560)
!1563 = !{!"762"}
!1564 = !{!"763"}
!1565 = !DILocation(line: 69, column: 17, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !31, line: 69, column: 3)
!1567 = !{!"764"}
!1568 = !DILocation(line: 69, column: 3, scope: !1560)
!1569 = !{!"765"}
!1570 = !DILocation(line: 70, column: 14, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !31, line: 69, column: 28)
!1572 = !{!"766"}
!1573 = !{!"767"}
!1574 = !{!"768"}
!1575 = !{!"769"}
!1576 = !DILocation(line: 70, column: 4, scope: !1571)
!1577 = !{!"770"}
!1578 = !{!"771"}
!1579 = !DILocation(line: 70, column: 11, scope: !1571)
!1580 = !{!"772"}
!1581 = !{!"773"}
!1582 = !{!"774"}
!1583 = !{!"775"}
!1584 = !{!"776"}
!1585 = !DILocation(line: 71, column: 3, scope: !1571)
!1586 = !{!"777"}
!1587 = !DILocation(line: 69, column: 24, scope: !1566)
!1588 = !{!"778"}
!1589 = !{!"779"}
!1590 = !DILocation(line: 69, column: 3, scope: !1566)
!1591 = distinct !{!1591, !1568, !1592, !388}
!1592 = !DILocation(line: 71, column: 3, scope: !1560)
!1593 = !{!"780"}
!1594 = !DILocation(line: 72, column: 3, scope: !1540)
!1595 = !{!"781"}
!1596 = !{!"782"}
!1597 = !DILocation(line: 73, column: 7, scope: !1540)
!1598 = !{!"783"}
!1599 = !{!"784"}
!1600 = !DILocation(line: 74, column: 7, scope: !1540)
!1601 = !{!"785"}
!1602 = !{!"786"}
!1603 = distinct !{!1603, !1530, !1604, !388}
!1604 = !DILocation(line: 75, column: 2, scope: !1493)
!1605 = !{!"787"}
!1606 = !DILocation(line: 76, column: 1, scope: !1493)
!1607 = !{!"788"}
!1608 = distinct !DISubprogram(name: "br_des_do_IP", scope: !63, file: !63, line: 29, type: !1609, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !4)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !149, !149}
!1611 = !DILocalVariable(name: "xl", arg: 1, scope: !1608, file: !63, line: 29, type: !149)
!1612 = !DILocation(line: 0, scope: !1608)
!1613 = !{!"789"}
!1614 = !DILocalVariable(name: "xr", arg: 2, scope: !1608, file: !63, line: 29, type: !149)
!1615 = !{!"790"}
!1616 = !DILocation(line: 38, column: 6, scope: !1608)
!1617 = !{!"791"}
!1618 = !DILocalVariable(name: "l", scope: !1608, file: !63, line: 36, type: !9)
!1619 = !{!"792"}
!1620 = !DILocation(line: 39, column: 6, scope: !1608)
!1621 = !{!"793"}
!1622 = !DILocalVariable(name: "r", scope: !1608, file: !63, line: 36, type: !9)
!1623 = !{!"794"}
!1624 = !DILocation(line: 40, column: 10, scope: !1608)
!1625 = !{!"795"}
!1626 = !DILocation(line: 40, column: 17, scope: !1608)
!1627 = !{!"796"}
!1628 = !DILocation(line: 40, column: 22, scope: !1608)
!1629 = !{!"797"}
!1630 = !DILocalVariable(name: "t", scope: !1608, file: !63, line: 36, type: !9)
!1631 = !{!"798"}
!1632 = !DILocation(line: 41, column: 4, scope: !1608)
!1633 = !{!"799"}
!1634 = !{!"800"}
!1635 = !DILocation(line: 42, column: 9, scope: !1608)
!1636 = !{!"801"}
!1637 = !DILocation(line: 42, column: 4, scope: !1608)
!1638 = !{!"802"}
!1639 = !{!"803"}
!1640 = !DILocation(line: 43, column: 10, scope: !1608)
!1641 = !{!"804"}
!1642 = !DILocation(line: 43, column: 17, scope: !1608)
!1643 = !{!"805"}
!1644 = !DILocation(line: 43, column: 22, scope: !1608)
!1645 = !{!"806"}
!1646 = !{!"807"}
!1647 = !DILocation(line: 44, column: 4, scope: !1608)
!1648 = !{!"808"}
!1649 = !{!"809"}
!1650 = !DILocation(line: 45, column: 9, scope: !1608)
!1651 = !{!"810"}
!1652 = !DILocation(line: 45, column: 4, scope: !1608)
!1653 = !{!"811"}
!1654 = !{!"812"}
!1655 = !DILocation(line: 46, column: 10, scope: !1608)
!1656 = !{!"813"}
!1657 = !DILocation(line: 46, column: 17, scope: !1608)
!1658 = !{!"814"}
!1659 = !DILocation(line: 46, column: 22, scope: !1608)
!1660 = !{!"815"}
!1661 = !{!"816"}
!1662 = !DILocation(line: 47, column: 4, scope: !1608)
!1663 = !{!"817"}
!1664 = !{!"818"}
!1665 = !DILocation(line: 48, column: 9, scope: !1608)
!1666 = !{!"819"}
!1667 = !DILocation(line: 48, column: 4, scope: !1608)
!1668 = !{!"820"}
!1669 = !{!"821"}
!1670 = !DILocation(line: 49, column: 10, scope: !1608)
!1671 = !{!"822"}
!1672 = !DILocation(line: 49, column: 17, scope: !1608)
!1673 = !{!"823"}
!1674 = !DILocation(line: 49, column: 22, scope: !1608)
!1675 = !{!"824"}
!1676 = !{!"825"}
!1677 = !DILocation(line: 50, column: 4, scope: !1608)
!1678 = !{!"826"}
!1679 = !{!"827"}
!1680 = !DILocation(line: 51, column: 9, scope: !1608)
!1681 = !{!"828"}
!1682 = !DILocation(line: 51, column: 4, scope: !1608)
!1683 = !{!"829"}
!1684 = !{!"830"}
!1685 = !DILocation(line: 52, column: 10, scope: !1608)
!1686 = !{!"831"}
!1687 = !DILocation(line: 52, column: 17, scope: !1608)
!1688 = !{!"832"}
!1689 = !DILocation(line: 52, column: 22, scope: !1608)
!1690 = !{!"833"}
!1691 = !{!"834"}
!1692 = !DILocation(line: 53, column: 4, scope: !1608)
!1693 = !{!"835"}
!1694 = !{!"836"}
!1695 = !DILocation(line: 54, column: 9, scope: !1608)
!1696 = !{!"837"}
!1697 = !DILocation(line: 54, column: 4, scope: !1608)
!1698 = !{!"838"}
!1699 = !{!"839"}
!1700 = !DILocation(line: 55, column: 6, scope: !1608)
!1701 = !{!"840"}
!1702 = !DILocation(line: 56, column: 6, scope: !1608)
!1703 = !{!"841"}
!1704 = !DILocation(line: 57, column: 1, scope: !1608)
!1705 = !{!"842"}
!1706 = distinct !DISubprogram(name: "br_des_do_invIP", scope: !63, file: !63, line: 61, type: !1609, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !4)
!1707 = !DILocalVariable(name: "xl", arg: 1, scope: !1706, file: !63, line: 61, type: !149)
!1708 = !DILocation(line: 0, scope: !1706)
!1709 = !{!"843"}
!1710 = !DILocalVariable(name: "xr", arg: 2, scope: !1706, file: !63, line: 61, type: !149)
!1711 = !{!"844"}
!1712 = !DILocation(line: 68, column: 6, scope: !1706)
!1713 = !{!"845"}
!1714 = !DILocalVariable(name: "l", scope: !1706, file: !63, line: 66, type: !9)
!1715 = !{!"846"}
!1716 = !DILocation(line: 69, column: 6, scope: !1706)
!1717 = !{!"847"}
!1718 = !DILocalVariable(name: "r", scope: !1706, file: !63, line: 66, type: !9)
!1719 = !{!"848"}
!1720 = !DILocation(line: 70, column: 10, scope: !1706)
!1721 = !{!"849"}
!1722 = !DILocation(line: 70, column: 17, scope: !1706)
!1723 = !{!"850"}
!1724 = !DILocation(line: 70, column: 22, scope: !1706)
!1725 = !{!"851"}
!1726 = !DILocalVariable(name: "t", scope: !1706, file: !63, line: 66, type: !9)
!1727 = !{!"852"}
!1728 = !DILocation(line: 71, column: 4, scope: !1706)
!1729 = !{!"853"}
!1730 = !{!"854"}
!1731 = !DILocation(line: 72, column: 9, scope: !1706)
!1732 = !{!"855"}
!1733 = !DILocation(line: 72, column: 4, scope: !1706)
!1734 = !{!"856"}
!1735 = !{!"857"}
!1736 = !DILocation(line: 73, column: 10, scope: !1706)
!1737 = !{!"858"}
!1738 = !DILocation(line: 73, column: 17, scope: !1706)
!1739 = !{!"859"}
!1740 = !DILocation(line: 73, column: 22, scope: !1706)
!1741 = !{!"860"}
!1742 = !{!"861"}
!1743 = !DILocation(line: 74, column: 4, scope: !1706)
!1744 = !{!"862"}
!1745 = !{!"863"}
!1746 = !DILocation(line: 75, column: 9, scope: !1706)
!1747 = !{!"864"}
!1748 = !DILocation(line: 75, column: 4, scope: !1706)
!1749 = !{!"865"}
!1750 = !{!"866"}
!1751 = !DILocation(line: 76, column: 10, scope: !1706)
!1752 = !{!"867"}
!1753 = !DILocation(line: 76, column: 17, scope: !1706)
!1754 = !{!"868"}
!1755 = !DILocation(line: 76, column: 22, scope: !1706)
!1756 = !{!"869"}
!1757 = !{!"870"}
!1758 = !DILocation(line: 77, column: 4, scope: !1706)
!1759 = !{!"871"}
!1760 = !{!"872"}
!1761 = !DILocation(line: 78, column: 9, scope: !1706)
!1762 = !{!"873"}
!1763 = !DILocation(line: 78, column: 4, scope: !1706)
!1764 = !{!"874"}
!1765 = !{!"875"}
!1766 = !DILocation(line: 79, column: 10, scope: !1706)
!1767 = !{!"876"}
!1768 = !DILocation(line: 79, column: 17, scope: !1706)
!1769 = !{!"877"}
!1770 = !DILocation(line: 79, column: 22, scope: !1706)
!1771 = !{!"878"}
!1772 = !{!"879"}
!1773 = !DILocation(line: 80, column: 4, scope: !1706)
!1774 = !{!"880"}
!1775 = !{!"881"}
!1776 = !DILocation(line: 81, column: 9, scope: !1706)
!1777 = !{!"882"}
!1778 = !DILocation(line: 81, column: 4, scope: !1706)
!1779 = !{!"883"}
!1780 = !{!"884"}
!1781 = !DILocation(line: 82, column: 10, scope: !1706)
!1782 = !{!"885"}
!1783 = !DILocation(line: 82, column: 17, scope: !1706)
!1784 = !{!"886"}
!1785 = !DILocation(line: 82, column: 22, scope: !1706)
!1786 = !{!"887"}
!1787 = !{!"888"}
!1788 = !DILocation(line: 83, column: 4, scope: !1706)
!1789 = !{!"889"}
!1790 = !{!"890"}
!1791 = !DILocation(line: 84, column: 9, scope: !1706)
!1792 = !{!"891"}
!1793 = !DILocation(line: 84, column: 4, scope: !1706)
!1794 = !{!"892"}
!1795 = !{!"893"}
!1796 = !DILocation(line: 85, column: 6, scope: !1706)
!1797 = !{!"894"}
!1798 = !DILocation(line: 86, column: 6, scope: !1706)
!1799 = !{!"895"}
!1800 = !DILocation(line: 87, column: 1, scope: !1706)
!1801 = !{!"896"}
!1802 = distinct !DISubprogram(name: "br_des_keysched_unit", scope: !63, file: !63, line: 91, type: !255, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !4)
!1803 = !{!"897"}
!1804 = !{!"898"}
!1805 = !DILocalVariable(name: "skey", arg: 1, scope: !1802, file: !63, line: 91, type: !149)
!1806 = !DILocation(line: 0, scope: !1802)
!1807 = !{!"899"}
!1808 = !DILocalVariable(name: "key", arg: 2, scope: !1802, file: !63, line: 91, type: !50)
!1809 = !{!"900"}
!1810 = !DILocalVariable(name: "xl", scope: !1802, file: !63, line: 93, type: !9)
!1811 = !DILocation(line: 93, column: 11, scope: !1802)
!1812 = !{!"901"}
!1813 = !DILocalVariable(name: "xr", scope: !1802, file: !63, line: 93, type: !9)
!1814 = !DILocation(line: 93, column: 15, scope: !1802)
!1815 = !{!"902"}
!1816 = !DILocation(line: 96, column: 7, scope: !1802)
!1817 = !{!"903"}
!1818 = !DILocation(line: 96, column: 5, scope: !1802)
!1819 = !{!"904"}
!1820 = !DILocation(line: 97, column: 45, scope: !1802)
!1821 = !{!"905"}
!1822 = !DILocation(line: 97, column: 7, scope: !1802)
!1823 = !{!"906"}
!1824 = !DILocation(line: 97, column: 5, scope: !1802)
!1825 = !{!"907"}
!1826 = !DILocation(line: 121, column: 2, scope: !1802)
!1827 = !{!"908"}
!1828 = !DILocation(line: 122, column: 9, scope: !1802)
!1829 = !{!"909"}
!1830 = !DILocation(line: 122, column: 12, scope: !1802)
!1831 = !{!"910"}
!1832 = !DILocation(line: 122, column: 36, scope: !1802)
!1833 = !{!"911"}
!1834 = !DILocation(line: 123, column: 7, scope: !1802)
!1835 = !{!"912"}
!1836 = !DILocation(line: 123, column: 10, scope: !1802)
!1837 = !{!"913"}
!1838 = !DILocation(line: 123, column: 34, scope: !1802)
!1839 = !{!"914"}
!1840 = !DILocation(line: 123, column: 3, scope: !1802)
!1841 = !{!"915"}
!1842 = !DILocation(line: 124, column: 7, scope: !1802)
!1843 = !{!"916"}
!1844 = !DILocation(line: 124, column: 10, scope: !1802)
!1845 = !{!"917"}
!1846 = !DILocation(line: 124, column: 34, scope: !1802)
!1847 = !{!"918"}
!1848 = !DILocation(line: 124, column: 3, scope: !1802)
!1849 = !{!"919"}
!1850 = !DILocation(line: 125, column: 7, scope: !1802)
!1851 = !{!"920"}
!1852 = !DILocation(line: 125, column: 10, scope: !1802)
!1853 = !{!"921"}
!1854 = !DILocation(line: 125, column: 34, scope: !1802)
!1855 = !{!"922"}
!1856 = !DILocation(line: 125, column: 3, scope: !1802)
!1857 = !{!"923"}
!1858 = !DILocalVariable(name: "kl", scope: !1802, file: !63, line: 93, type: !9)
!1859 = !{!"924"}
!1860 = !DILocation(line: 126, column: 9, scope: !1802)
!1861 = !{!"925"}
!1862 = !DILocation(line: 126, column: 12, scope: !1802)
!1863 = !{!"926"}
!1864 = !DILocation(line: 126, column: 36, scope: !1802)
!1865 = !{!"927"}
!1866 = !DILocation(line: 127, column: 7, scope: !1802)
!1867 = !{!"928"}
!1868 = !DILocation(line: 127, column: 10, scope: !1802)
!1869 = !{!"929"}
!1870 = !DILocation(line: 127, column: 34, scope: !1802)
!1871 = !{!"930"}
!1872 = !DILocation(line: 127, column: 3, scope: !1802)
!1873 = !{!"931"}
!1874 = !DILocation(line: 128, column: 7, scope: !1802)
!1875 = !{!"932"}
!1876 = !DILocation(line: 128, column: 10, scope: !1802)
!1877 = !{!"933"}
!1878 = !DILocation(line: 128, column: 34, scope: !1802)
!1879 = !{!"934"}
!1880 = !DILocation(line: 128, column: 3, scope: !1802)
!1881 = !{!"935"}
!1882 = !DILocation(line: 129, column: 7, scope: !1802)
!1883 = !{!"936"}
!1884 = !DILocation(line: 129, column: 10, scope: !1802)
!1885 = !{!"937"}
!1886 = !DILocation(line: 129, column: 34, scope: !1802)
!1887 = !{!"938"}
!1888 = !DILocation(line: 129, column: 3, scope: !1802)
!1889 = !{!"939"}
!1890 = !DILocalVariable(name: "kr", scope: !1802, file: !63, line: 93, type: !9)
!1891 = !{!"940"}
!1892 = !DILocalVariable(name: "i", scope: !1802, file: !63, line: 94, type: !265)
!1893 = !{!"941"}
!1894 = !DILocation(line: 135, column: 7, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1802, file: !63, line: 135, column: 2)
!1896 = !{!"942"}
!1897 = !{!"943"}
!1898 = !{!"944"}
!1899 = !DILocation(line: 0, scope: !1895)
!1900 = !{!"945"}
!1901 = !{!"946"}
!1902 = !{!"947"}
!1903 = !{!"948"}
!1904 = !DILocation(line: 135, column: 16, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1895, file: !63, line: 135, column: 2)
!1906 = !{!"949"}
!1907 = !DILocation(line: 135, column: 2, scope: !1895)
!1908 = !{!"950"}
!1909 = !DILocation(line: 136, column: 10, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !63, line: 136, column: 7)
!1911 = distinct !DILexicalBlock(scope: !1905, file: !63, line: 135, column: 28)
!1912 = !{!"951"}
!1913 = !DILocation(line: 136, column: 16, scope: !1910)
!1914 = !{!"952"}
!1915 = !{!"953"}
!1916 = !DILocation(line: 136, column: 7, scope: !1911)
!1917 = !{!"954"}
!1918 = !DILocation(line: 137, column: 13, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1910, file: !63, line: 136, column: 26)
!1920 = !{!"955"}
!1921 = !DILocation(line: 137, column: 25, scope: !1919)
!1922 = !{!"956"}
!1923 = !DILocation(line: 137, column: 19, scope: !1919)
!1924 = !{!"957"}
!1925 = !{!"958"}
!1926 = !DILocation(line: 138, column: 13, scope: !1919)
!1927 = !{!"959"}
!1928 = !DILocation(line: 138, column: 25, scope: !1919)
!1929 = !{!"960"}
!1930 = !DILocation(line: 138, column: 19, scope: !1919)
!1931 = !{!"961"}
!1932 = !{!"962"}
!1933 = !DILocation(line: 139, column: 3, scope: !1919)
!1934 = !{!"963"}
!1935 = !DILocation(line: 140, column: 13, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1910, file: !63, line: 139, column: 10)
!1937 = !{!"964"}
!1938 = !DILocation(line: 140, column: 25, scope: !1936)
!1939 = !{!"965"}
!1940 = !DILocation(line: 140, column: 19, scope: !1936)
!1941 = !{!"966"}
!1942 = !{!"967"}
!1943 = !DILocation(line: 141, column: 13, scope: !1936)
!1944 = !{!"968"}
!1945 = !DILocation(line: 141, column: 25, scope: !1936)
!1946 = !{!"969"}
!1947 = !DILocation(line: 141, column: 19, scope: !1936)
!1948 = !{!"970"}
!1949 = !{!"971"}
!1950 = !{!"972"}
!1951 = !DILocation(line: 0, scope: !1910)
!1952 = !{!"973"}
!1953 = !{!"974"}
!1954 = !{!"975"}
!1955 = !{!"976"}
!1956 = !DILocation(line: 143, column: 6, scope: !1911)
!1957 = !{!"977"}
!1958 = !{!"978"}
!1959 = !DILocation(line: 144, column: 6, scope: !1911)
!1960 = !{!"979"}
!1961 = !{!"980"}
!1962 = !DILocation(line: 145, column: 11, scope: !1911)
!1963 = !{!"981"}
!1964 = !DILocation(line: 145, column: 17, scope: !1911)
!1965 = !{!"982"}
!1966 = !DILocation(line: 145, column: 3, scope: !1911)
!1967 = !{!"983"}
!1968 = !{!"984"}
!1969 = !DILocation(line: 145, column: 22, scope: !1911)
!1970 = !{!"985"}
!1971 = !DILocation(line: 146, column: 11, scope: !1911)
!1972 = !{!"986"}
!1973 = !DILocation(line: 146, column: 17, scope: !1911)
!1974 = !{!"987"}
!1975 = !DILocation(line: 146, column: 3, scope: !1911)
!1976 = !{!"988"}
!1977 = !{!"989"}
!1978 = !DILocation(line: 146, column: 22, scope: !1911)
!1979 = !{!"990"}
!1980 = !DILocation(line: 147, column: 2, scope: !1911)
!1981 = !{!"991"}
!1982 = !DILocation(line: 135, column: 24, scope: !1905)
!1983 = !{!"992"}
!1984 = !{!"993"}
!1985 = !DILocation(line: 135, column: 2, scope: !1905)
!1986 = distinct !{!1986, !1907, !1987, !388}
!1987 = !DILocation(line: 147, column: 2, scope: !1895)
!1988 = !{!"994"}
!1989 = !DILocation(line: 148, column: 1, scope: !1802)
!1990 = !{!"995"}
!1991 = distinct !DISubprogram(name: "br_dec32be", scope: !490, file: !490, line: 590, type: !491, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !62, retainedNodes: !4)
!1992 = !DILocalVariable(name: "src", arg: 1, scope: !1991, file: !490, line: 590, type: !50)
!1993 = !DILocation(line: 0, scope: !1991)
!1994 = !{!"996"}
!1995 = !DILocalVariable(name: "buf", scope: !1991, file: !490, line: 595, type: !6)
!1996 = !{!"997"}
!1997 = !DILocation(line: 598, column: 20, scope: !1991)
!1998 = !{!"998"}
!1999 = !{!"999"}
!2000 = !DILocation(line: 598, column: 10, scope: !1991)
!2001 = !{!"1000"}
!2002 = !DILocation(line: 598, column: 27, scope: !1991)
!2003 = !{!"1001"}
!2004 = !DILocation(line: 599, column: 16, scope: !1991)
!2005 = !{!"1002"}
!2006 = !{!"1003"}
!2007 = !DILocation(line: 599, column: 6, scope: !1991)
!2008 = !{!"1004"}
!2009 = !DILocation(line: 599, column: 23, scope: !1991)
!2010 = !{!"1005"}
!2011 = !DILocation(line: 599, column: 3, scope: !1991)
!2012 = !{!"1006"}
!2013 = !DILocation(line: 600, column: 16, scope: !1991)
!2014 = !{!"1007"}
!2015 = !{!"1008"}
!2016 = !DILocation(line: 600, column: 6, scope: !1991)
!2017 = !{!"1009"}
!2018 = !DILocation(line: 600, column: 23, scope: !1991)
!2019 = !{!"1010"}
!2020 = !DILocation(line: 600, column: 3, scope: !1991)
!2021 = !{!"1011"}
!2022 = !DILocation(line: 601, column: 15, scope: !1991)
!2023 = !{!"1012"}
!2024 = !{!"1013"}
!2025 = !DILocation(line: 601, column: 5, scope: !1991)
!2026 = !{!"1014"}
!2027 = !DILocation(line: 601, column: 3, scope: !1991)
!2028 = !{!"1015"}
!2029 = !DILocation(line: 598, column: 2, scope: !1991)
!2030 = !{!"1016"}
!2031 = distinct !DISubprogram(name: "br_des_rev_skey", scope: !63, file: !63, line: 152, type: !2032, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !4)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !149}
!2034 = !DILocalVariable(name: "skey", arg: 1, scope: !2031, file: !63, line: 152, type: !149)
!2035 = !DILocation(line: 0, scope: !2031)
!2036 = !{!"1017"}
!2037 = !DILocalVariable(name: "i", scope: !2031, file: !63, line: 154, type: !265)
!2038 = !{!"1018"}
!2039 = !DILocation(line: 156, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2031, file: !63, line: 156, column: 2)
!2041 = !{!"1019"}
!2042 = !DILocation(line: 0, scope: !2040)
!2043 = !{!"1020"}
!2044 = !{!"1021"}
!2045 = !DILocation(line: 156, column: 16, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2040, file: !63, line: 156, column: 2)
!2047 = !{!"1022"}
!2048 = !DILocation(line: 156, column: 2, scope: !2040)
!2049 = !{!"1023"}
!2050 = !DILocation(line: 159, column: 14, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !63, line: 156, column: 30)
!2052 = !{!"1024"}
!2053 = !DILocation(line: 159, column: 7, scope: !2051)
!2054 = !{!"1025"}
!2055 = !{!"1026"}
!2056 = !{!"1027"}
!2057 = !DILocalVariable(name: "t", scope: !2051, file: !63, line: 157, type: !9)
!2058 = !DILocation(line: 0, scope: !2051)
!2059 = !{!"1028"}
!2060 = !DILocation(line: 160, column: 25, scope: !2051)
!2061 = !{!"1029"}
!2062 = !DILocation(line: 160, column: 17, scope: !2051)
!2063 = !{!"1030"}
!2064 = !{!"1031"}
!2065 = !{!"1032"}
!2066 = !DILocation(line: 160, column: 10, scope: !2051)
!2067 = !{!"1033"}
!2068 = !DILocation(line: 160, column: 3, scope: !2051)
!2069 = !{!"1034"}
!2070 = !{!"1035"}
!2071 = !DILocation(line: 160, column: 15, scope: !2051)
!2072 = !{!"1036"}
!2073 = !DILocation(line: 161, column: 11, scope: !2051)
!2074 = !{!"1037"}
!2075 = !DILocation(line: 161, column: 3, scope: !2051)
!2076 = !{!"1038"}
!2077 = !{!"1039"}
!2078 = !DILocation(line: 161, column: 16, scope: !2051)
!2079 = !{!"1040"}
!2080 = !DILocation(line: 162, column: 14, scope: !2051)
!2081 = !{!"1041"}
!2082 = !DILocation(line: 162, column: 7, scope: !2051)
!2083 = !{!"1042"}
!2084 = !{!"1043"}
!2085 = !{!"1044"}
!2086 = !{!"1045"}
!2087 = !DILocation(line: 163, column: 25, scope: !2051)
!2088 = !{!"1046"}
!2089 = !DILocation(line: 163, column: 17, scope: !2051)
!2090 = !{!"1047"}
!2091 = !{!"1048"}
!2092 = !{!"1049"}
!2093 = !DILocation(line: 163, column: 10, scope: !2051)
!2094 = !{!"1050"}
!2095 = !DILocation(line: 163, column: 3, scope: !2051)
!2096 = !{!"1051"}
!2097 = !{!"1052"}
!2098 = !DILocation(line: 163, column: 15, scope: !2051)
!2099 = !{!"1053"}
!2100 = !DILocation(line: 164, column: 11, scope: !2051)
!2101 = !{!"1054"}
!2102 = !DILocation(line: 164, column: 3, scope: !2051)
!2103 = !{!"1055"}
!2104 = !{!"1056"}
!2105 = !DILocation(line: 164, column: 16, scope: !2051)
!2106 = !{!"1057"}
!2107 = !DILocation(line: 165, column: 2, scope: !2051)
!2108 = !{!"1058"}
!2109 = !DILocation(line: 156, column: 24, scope: !2046)
!2110 = !{!"1059"}
!2111 = !{!"1060"}
!2112 = !DILocation(line: 156, column: 2, scope: !2046)
!2113 = distinct !{!2113, !2048, !2114, !388}
!2114 = !DILocation(line: 165, column: 2, scope: !2040)
!2115 = !{!"1061"}
!2116 = !DILocation(line: 166, column: 1, scope: !2031)
!2117 = !{!"1062"}
