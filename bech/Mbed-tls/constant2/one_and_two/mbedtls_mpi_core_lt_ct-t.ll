; ModuleID = 'mbedtls_mpi_core_lt_ct-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !31 {
  %4 = alloca i8, align 1, !psr.id !36
  call void @llvm.dbg.value(metadata i8* %0, metadata !37, metadata !DIExpression()), !dbg !38, !psr.id !39
  call void @llvm.dbg.value(metadata i8* %1, metadata !40, metadata !DIExpression()), !dbg !38, !psr.id !41
  call void @llvm.dbg.value(metadata i64 %2, metadata !42, metadata !DIExpression()), !dbg !38, !psr.id !43
  call void @llvm.dbg.value(metadata i8* %0, metadata !44, metadata !DIExpression()), !dbg !38, !psr.id !45
  call void @llvm.dbg.value(metadata i8* %1, metadata !46, metadata !DIExpression()), !dbg !38, !psr.id !47
  call void @llvm.dbg.declare(metadata i8* %4, metadata !48, metadata !DIExpression()), !dbg !49, !psr.id !50
  store volatile i8 0, i8* %4, align 1, !dbg !49, !psr.id !51
  call void @llvm.dbg.value(metadata i64 0, metadata !52, metadata !DIExpression()), !dbg !38, !psr.id !53
  br label %5, !dbg !54, !psr.id !56

5:                                                ; preds = %19, %3
  %.0 = phi i64 [ 0, %3 ], [ %20, %19 ], !dbg !57, !psr.id !58
  call void @llvm.dbg.value(metadata i64 %.0, metadata !52, metadata !DIExpression()), !dbg !38, !psr.id !59
  %6 = icmp ult i64 %.0, %2, !dbg !60, !psr.id !62
  br i1 %6, label %7, label %21, !dbg !63, !psr.id !64

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !65, !psr.id !67
  %9 = load volatile i8, i8* %8, align 1, !dbg !65, !psr.id !68
  call void @llvm.dbg.value(metadata i8 %9, metadata !69, metadata !DIExpression()), !dbg !70, !psr.id !71
  %10 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !72, !psr.id !73
  %11 = load volatile i8, i8* %10, align 1, !dbg !72, !psr.id !74
  call void @llvm.dbg.value(metadata i8 %11, metadata !75, metadata !DIExpression()), !dbg !70, !psr.id !76
  %12 = zext i8 %9 to i32, !dbg !77, !psr.id !78
  %13 = zext i8 %11 to i32, !dbg !79, !psr.id !80
  %14 = xor i32 %12, %13, !dbg !81, !psr.id !82
  %15 = load volatile i8, i8* %4, align 1, !dbg !83, !psr.id !84
  %16 = zext i8 %15 to i32, !dbg !83, !psr.id !85
  %17 = or i32 %16, %14, !dbg !83, !psr.id !86
  %18 = trunc i32 %17 to i8, !dbg !83, !psr.id !87
  store volatile i8 %18, i8* %4, align 1, !dbg !83, !psr.id !88
  br label %19, !dbg !89, !psr.id !90

19:                                               ; preds = %7
  %20 = add i64 %.0, 1, !dbg !91, !psr.id !92
  call void @llvm.dbg.value(metadata i64 %20, metadata !52, metadata !DIExpression()), !dbg !38, !psr.id !93
  br label %5, !dbg !94, !llvm.loop !95, !psr.id !98

21:                                               ; preds = %5
  %22 = load volatile i8, i8* %4, align 1, !dbg !99, !psr.id !100
  %23 = zext i8 %22 to i32, !dbg !101, !psr.id !102
  ret i32 %23, !dbg !103, !psr.id !104
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_uint_mask(i32 %0) #0 !dbg !105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !108, metadata !DIExpression()), !dbg !109, !psr.id !110
  %2 = sub i32 0, %0, !dbg !111, !psr.id !112
  %3 = or i32 %0, %2, !dbg !113, !psr.id !114
  %4 = lshr i32 %3, 31, !dbg !115, !psr.id !116
  %5 = sub i32 0, %4, !dbg !117, !psr.id !118
  ret i32 %5, !dbg !119, !psr.id !120
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_size_mask(i64 %0) #0 !dbg !121 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !124, metadata !DIExpression()), !dbg !125, !psr.id !126
  %2 = sub i64 0, %0, !dbg !127, !psr.id !128
  %3 = or i64 %0, %2, !dbg !129, !psr.id !130
  %4 = lshr i64 %3, 63, !dbg !131, !psr.id !132
  %5 = sub i64 0, %4, !dbg !133, !psr.id !134
  ret i64 %5, !dbg !135, !psr.id !136
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_mpi_uint_mask(i64 %0) #0 !dbg !137 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !146, metadata !DIExpression()), !dbg !147, !psr.id !148
  %2 = sub i64 0, %0, !dbg !149, !psr.id !150
  %3 = or i64 %0, %2, !dbg !151, !psr.id !152
  %4 = lshr i64 %3, 63, !dbg !153, !psr.id !154
  %5 = sub i64 0, %4, !dbg !155, !psr.id !156
  ret i64 %5, !dbg !157, !psr.id !158
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_size_mask_ge(i64 %0, i64 %1) #0 !dbg !159 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !162, metadata !DIExpression()), !dbg !163, !psr.id !164
  call void @llvm.dbg.value(metadata i64 %1, metadata !165, metadata !DIExpression()), !dbg !163, !psr.id !166
  %3 = call i64 @mbedtls_ct_size_mask_lt(i64 %0, i64 %1), !dbg !167, !psr.id !168
  %4 = xor i64 %3, -1, !dbg !169, !psr.id !170
  ret i64 %4, !dbg !171, !psr.id !172
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @mbedtls_ct_size_mask_lt(i64 %0, i64 %1) #0 !dbg !173 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !174, metadata !DIExpression()), !dbg !175, !psr.id !176
  call void @llvm.dbg.value(metadata i64 %1, metadata !177, metadata !DIExpression()), !dbg !175, !psr.id !178
  %3 = sub i64 %0, %1, !dbg !179, !psr.id !180
  call void @llvm.dbg.value(metadata i64 %3, metadata !181, metadata !DIExpression()), !dbg !175, !psr.id !183
  %4 = lshr i64 %3, 63, !dbg !184, !psr.id !185
  call void @llvm.dbg.value(metadata i64 %4, metadata !186, metadata !DIExpression()), !dbg !175, !psr.id !187
  %5 = call i64 @mbedtls_ct_size_mask(i64 %4), !dbg !188, !psr.id !189
  call void @llvm.dbg.value(metadata i64 %5, metadata !190, metadata !DIExpression()), !dbg !175, !psr.id !191
  ret i64 %5, !dbg !192, !psr.id !193
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_size_bool_eq(i64 %0, i64 %1) #0 !dbg !194 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !197, metadata !DIExpression()), !dbg !198, !psr.id !199
  call void @llvm.dbg.value(metadata i64 %1, metadata !200, metadata !DIExpression()), !dbg !198, !psr.id !201
  %3 = xor i64 %0, %1, !dbg !202, !psr.id !203
  call void @llvm.dbg.value(metadata i64 %3, metadata !204, metadata !DIExpression()), !dbg !198, !psr.id !205
  %4 = sub i64 0, %3, !dbg !206, !psr.id !207
  %5 = or i64 %3, %4, !dbg !208, !psr.id !209
  call void @llvm.dbg.value(metadata i64 %5, metadata !210, metadata !DIExpression()), !dbg !198, !psr.id !211
  %6 = lshr i64 %5, 63, !dbg !212, !psr.id !213
  %7 = trunc i64 %6 to i32, !dbg !214, !psr.id !215
  call void @llvm.dbg.value(metadata i32 %7, metadata !216, metadata !DIExpression()), !dbg !198, !psr.id !218
  %8 = xor i32 1, %7, !dbg !219, !psr.id !220
  ret i32 %8, !dbg !221, !psr.id !222
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_mpi_uint_lt(i64 %0, i64 %1) #0 !dbg !223 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !227, metadata !DIExpression()), !dbg !228, !psr.id !229
  call void @llvm.dbg.value(metadata i64 %1, metadata !230, metadata !DIExpression()), !dbg !228, !psr.id !231
  %3 = xor i64 %0, %1, !dbg !232, !psr.id !233, !ValueTainted !234
  call void @llvm.dbg.value(metadata i64 %3, metadata !235, metadata !DIExpression()), !dbg !228, !psr.id !236
  %4 = sub i64 %0, %1, !dbg !237, !psr.id !238, !ValueTainted !234
  %5 = xor i64 %3, -1, !dbg !239, !psr.id !240, !ValueTainted !234
  %6 = and i64 %4, %5, !dbg !241, !psr.id !242, !ValueTainted !234
  call void @llvm.dbg.value(metadata i64 %6, metadata !243, metadata !DIExpression()), !dbg !228, !psr.id !244
  %7 = and i64 %1, %3, !dbg !245, !psr.id !246, !ValueTainted !234
  %8 = or i64 %6, %7, !dbg !247, !psr.id !248, !ValueTainted !234
  call void @llvm.dbg.value(metadata i64 %8, metadata !243, metadata !DIExpression()), !dbg !228, !psr.id !249
  %9 = lshr i64 %8, 63, !dbg !250, !psr.id !251, !ValueTainted !234
  call void @llvm.dbg.value(metadata i64 %9, metadata !243, metadata !DIExpression()), !dbg !228, !psr.id !252
  %10 = trunc i64 %9 to i32, !dbg !253, !psr.id !254, !ValueTainted !234
  ret i32 %10, !dbg !255, !psr.id !256
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_uint_if(i32 %0, i32 %1, i32 %2) #0 !dbg !257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !260, metadata !DIExpression()), !dbg !261, !psr.id !262
  call void @llvm.dbg.value(metadata i32 %1, metadata !263, metadata !DIExpression()), !dbg !261, !psr.id !264
  call void @llvm.dbg.value(metadata i32 %2, metadata !265, metadata !DIExpression()), !dbg !261, !psr.id !266
  %4 = call i32 @mbedtls_ct_uint_mask(i32 %0), !dbg !267, !psr.id !268
  call void @llvm.dbg.value(metadata i32 %4, metadata !269, metadata !DIExpression()), !dbg !261, !psr.id !270
  %5 = and i32 %4, %1, !dbg !271, !psr.id !272
  %6 = xor i32 %4, -1, !dbg !273, !psr.id !274
  %7 = and i32 %6, %2, !dbg !275, !psr.id !276
  %8 = or i32 %5, %7, !dbg !277, !psr.id !278
  ret i32 %8, !dbg !279, !psr.id !280
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_mpi_uint_cond_assign(i64 %0, i64* %1, i64* %2, i8 zeroext %3) #0 !dbg !281 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !286, metadata !DIExpression()), !dbg !287, !psr.id !288
  call void @llvm.dbg.value(metadata i64* %1, metadata !289, metadata !DIExpression()), !dbg !287, !psr.id !290
  call void @llvm.dbg.value(metadata i64* %2, metadata !291, metadata !DIExpression()), !dbg !287, !psr.id !292
  call void @llvm.dbg.value(metadata i8 %3, metadata !293, metadata !DIExpression()), !dbg !287, !psr.id !294
  %5 = zext i8 %3 to i32, !dbg !295, !psr.id !296
  %6 = sub nsw i32 0, %5, !dbg !297, !psr.id !298
  %7 = sext i32 %6 to i64, !dbg !297, !psr.id !299
  call void @llvm.dbg.value(metadata i64 %7, metadata !300, metadata !DIExpression()), !dbg !287, !psr.id !301
  call void @llvm.dbg.value(metadata i64 0, metadata !302, metadata !DIExpression()), !dbg !287, !psr.id !303
  br label %8, !dbg !304, !psr.id !306

8:                                                ; preds = %20, %4
  %.0 = phi i64 [ 0, %4 ], [ %21, %20 ], !dbg !307, !psr.id !308
  call void @llvm.dbg.value(metadata i64 %.0, metadata !302, metadata !DIExpression()), !dbg !287, !psr.id !309
  %9 = icmp ult i64 %.0, %0, !dbg !310, !psr.id !312
  br i1 %9, label %10, label %22, !dbg !313, !psr.id !314

10:                                               ; preds = %8
  %11 = getelementptr inbounds i64, i64* %2, i64 %.0, !dbg !315, !psr.id !316
  %12 = load i64, i64* %11, align 8, !dbg !315, !psr.id !317
  %13 = and i64 %12, %7, !dbg !318, !psr.id !319
  %14 = getelementptr inbounds i64, i64* %1, i64 %.0, !dbg !320, !psr.id !321
  %15 = load i64, i64* %14, align 8, !dbg !320, !psr.id !322
  %16 = xor i64 %7, -1, !dbg !323, !psr.id !324
  %17 = and i64 %15, %16, !dbg !325, !psr.id !326
  %18 = or i64 %13, %17, !dbg !327, !psr.id !328
  %19 = getelementptr inbounds i64, i64* %1, i64 %.0, !dbg !329, !psr.id !330
  store i64 %18, i64* %19, align 8, !dbg !331, !psr.id !332
  br label %20, !dbg !329, !psr.id !333

20:                                               ; preds = %10
  %21 = add i64 %.0, 1, !dbg !334, !psr.id !335
  call void @llvm.dbg.value(metadata i64 %21, metadata !302, metadata !DIExpression()), !dbg !287, !psr.id !336
  br label %8, !dbg !337, !llvm.loop !338, !psr.id !340

22:                                               ; preds = %8
  ret void, !dbg !341, !psr.id !342
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @mbedtls_ct_base64_enc_char(i8 zeroext %0) #0 !dbg !343 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !346, metadata !DIExpression()), !dbg !347, !psr.id !348
  call void @llvm.dbg.value(metadata i8 0, metadata !349, metadata !DIExpression()), !dbg !347, !psr.id !350
  %2 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 0, i8 zeroext 25, i8 zeroext %0), !dbg !351, !psr.id !352
  %3 = zext i8 %2 to i32, !dbg !351, !psr.id !353
  %4 = zext i8 %0 to i32, !dbg !354, !psr.id !355
  %5 = add nsw i32 65, %4, !dbg !356, !psr.id !357
  %6 = and i32 %3, %5, !dbg !358, !psr.id !359
  %7 = zext i8 0 to i32, !dbg !360, !psr.id !361
  %8 = or i32 %7, %6, !dbg !360, !psr.id !362
  %9 = trunc i32 %8 to i8, !dbg !360, !psr.id !363
  call void @llvm.dbg.value(metadata i8 %9, metadata !349, metadata !DIExpression()), !dbg !347, !psr.id !364
  %10 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 26, i8 zeroext 51, i8 zeroext %0), !dbg !365, !psr.id !366
  %11 = zext i8 %10 to i32, !dbg !365, !psr.id !367
  %12 = zext i8 %0 to i32, !dbg !368, !psr.id !369
  %13 = add nsw i32 97, %12, !dbg !370, !psr.id !371
  %14 = sub nsw i32 %13, 26, !dbg !372, !psr.id !373
  %15 = and i32 %11, %14, !dbg !374, !psr.id !375
  %16 = zext i8 %9 to i32, !dbg !376, !psr.id !377
  %17 = or i32 %16, %15, !dbg !376, !psr.id !378
  %18 = trunc i32 %17 to i8, !dbg !376, !psr.id !379
  call void @llvm.dbg.value(metadata i8 %18, metadata !349, metadata !DIExpression()), !dbg !347, !psr.id !380
  %19 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 52, i8 zeroext 61, i8 zeroext %0), !dbg !381, !psr.id !382
  %20 = zext i8 %19 to i32, !dbg !381, !psr.id !383
  %21 = zext i8 %0 to i32, !dbg !384, !psr.id !385
  %22 = add nsw i32 48, %21, !dbg !386, !psr.id !387
  %23 = sub nsw i32 %22, 52, !dbg !388, !psr.id !389
  %24 = and i32 %20, %23, !dbg !390, !psr.id !391
  %25 = zext i8 %18 to i32, !dbg !392, !psr.id !393
  %26 = or i32 %25, %24, !dbg !392, !psr.id !394
  %27 = trunc i32 %26 to i8, !dbg !392, !psr.id !395
  call void @llvm.dbg.value(metadata i8 %27, metadata !349, metadata !DIExpression()), !dbg !347, !psr.id !396
  %28 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 62, i8 zeroext 62, i8 zeroext %0), !dbg !397, !psr.id !398
  %29 = zext i8 %28 to i32, !dbg !397, !psr.id !399
  %30 = and i32 %29, 43, !dbg !400, !psr.id !401
  %31 = zext i8 %27 to i32, !dbg !402, !psr.id !403
  %32 = or i32 %31, %30, !dbg !402, !psr.id !404
  %33 = trunc i32 %32 to i8, !dbg !402, !psr.id !405
  call void @llvm.dbg.value(metadata i8 %33, metadata !349, metadata !DIExpression()), !dbg !347, !psr.id !406
  %34 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 63, i8 zeroext 63, i8 zeroext %0), !dbg !407, !psr.id !408
  %35 = zext i8 %34 to i32, !dbg !407, !psr.id !409
  %36 = and i32 %35, 47, !dbg !410, !psr.id !411
  %37 = zext i8 %33 to i32, !dbg !412, !psr.id !413
  %38 = or i32 %37, %36, !dbg !412, !psr.id !414
  %39 = trunc i32 %38 to i8, !dbg !412, !psr.id !415
  call void @llvm.dbg.value(metadata i8 %39, metadata !349, metadata !DIExpression()), !dbg !347, !psr.id !416
  ret i8 %39, !dbg !417, !psr.id !418
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2) #0 !dbg !419 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !422, metadata !DIExpression()), !dbg !423, !psr.id !424
  call void @llvm.dbg.value(metadata i8 %1, metadata !425, metadata !DIExpression()), !dbg !423, !psr.id !426
  call void @llvm.dbg.value(metadata i8 %2, metadata !427, metadata !DIExpression()), !dbg !423, !psr.id !428
  %4 = zext i8 %2 to i32, !dbg !429, !psr.id !430
  %5 = zext i8 %0 to i32, !dbg !431, !psr.id !432
  %6 = sub i32 %4, %5, !dbg !433, !psr.id !434
  %7 = lshr i32 %6, 8, !dbg !435, !psr.id !436
  call void @llvm.dbg.value(metadata i32 %7, metadata !437, metadata !DIExpression()), !dbg !423, !psr.id !438
  %8 = zext i8 %1 to i32, !dbg !439, !psr.id !440
  %9 = zext i8 %2 to i32, !dbg !441, !psr.id !442
  %10 = sub i32 %8, %9, !dbg !443, !psr.id !444
  %11 = lshr i32 %10, 8, !dbg !445, !psr.id !446
  call void @llvm.dbg.value(metadata i32 %11, metadata !447, metadata !DIExpression()), !dbg !423, !psr.id !448
  %12 = or i32 %7, %11, !dbg !449, !psr.id !450
  %13 = xor i32 %12, -1, !dbg !451, !psr.id !452
  %14 = and i32 %13, 255, !dbg !453, !psr.id !454
  %15 = trunc i32 %14 to i8, !dbg !455, !psr.id !456
  ret i8 %15, !dbg !457, !psr.id !458
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @mbedtls_ct_base64_dec_value(i8 zeroext %0) #0 !dbg !459 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !463, metadata !DIExpression()), !dbg !464, !psr.id !465
  call void @llvm.dbg.value(metadata i8 0, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !467
  %2 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 65, i8 zeroext 90, i8 zeroext %0), !dbg !468, !psr.id !469
  %3 = zext i8 %2 to i32, !dbg !468, !psr.id !470
  %4 = zext i8 %0 to i32, !dbg !471, !psr.id !472
  %5 = sub nsw i32 %4, 65, !dbg !473, !psr.id !474
  %6 = add nsw i32 %5, 0, !dbg !475, !psr.id !476
  %7 = add nsw i32 %6, 1, !dbg !477, !psr.id !478
  %8 = and i32 %3, %7, !dbg !479, !psr.id !480
  %9 = zext i8 0 to i32, !dbg !481, !psr.id !482
  %10 = or i32 %9, %8, !dbg !481, !psr.id !483
  %11 = trunc i32 %10 to i8, !dbg !481, !psr.id !484
  call void @llvm.dbg.value(metadata i8 %11, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !485
  %12 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 97, i8 zeroext 122, i8 zeroext %0), !dbg !486, !psr.id !487
  %13 = zext i8 %12 to i32, !dbg !486, !psr.id !488
  %14 = zext i8 %0 to i32, !dbg !489, !psr.id !490
  %15 = sub nsw i32 %14, 97, !dbg !491, !psr.id !492
  %16 = add nsw i32 %15, 26, !dbg !493, !psr.id !494
  %17 = add nsw i32 %16, 1, !dbg !495, !psr.id !496
  %18 = and i32 %13, %17, !dbg !497, !psr.id !498
  %19 = zext i8 %11 to i32, !dbg !499, !psr.id !500
  %20 = or i32 %19, %18, !dbg !499, !psr.id !501
  %21 = trunc i32 %20 to i8, !dbg !499, !psr.id !502
  call void @llvm.dbg.value(metadata i8 %21, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !503
  %22 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 48, i8 zeroext 57, i8 zeroext %0), !dbg !504, !psr.id !505
  %23 = zext i8 %22 to i32, !dbg !504, !psr.id !506
  %24 = zext i8 %0 to i32, !dbg !507, !psr.id !508
  %25 = sub nsw i32 %24, 48, !dbg !509, !psr.id !510
  %26 = add nsw i32 %25, 52, !dbg !511, !psr.id !512
  %27 = add nsw i32 %26, 1, !dbg !513, !psr.id !514
  %28 = and i32 %23, %27, !dbg !515, !psr.id !516
  %29 = zext i8 %21 to i32, !dbg !517, !psr.id !518
  %30 = or i32 %29, %28, !dbg !517, !psr.id !519
  %31 = trunc i32 %30 to i8, !dbg !517, !psr.id !520
  call void @llvm.dbg.value(metadata i8 %31, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !521
  %32 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 43, i8 zeroext 43, i8 zeroext %0), !dbg !522, !psr.id !523
  %33 = zext i8 %32 to i32, !dbg !522, !psr.id !524
  %34 = zext i8 %0 to i32, !dbg !525, !psr.id !526
  %35 = sub nsw i32 %34, 43, !dbg !527, !psr.id !528
  %36 = add nsw i32 %35, 62, !dbg !529, !psr.id !530
  %37 = add nsw i32 %36, 1, !dbg !531, !psr.id !532
  %38 = and i32 %33, %37, !dbg !533, !psr.id !534
  %39 = zext i8 %31 to i32, !dbg !535, !psr.id !536
  %40 = or i32 %39, %38, !dbg !535, !psr.id !537
  %41 = trunc i32 %40 to i8, !dbg !535, !psr.id !538
  call void @llvm.dbg.value(metadata i8 %41, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !539
  %42 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 47, i8 zeroext 47, i8 zeroext %0), !dbg !540, !psr.id !541
  %43 = zext i8 %42 to i32, !dbg !540, !psr.id !542
  %44 = zext i8 %0 to i32, !dbg !543, !psr.id !544
  %45 = sub nsw i32 %44, 47, !dbg !545, !psr.id !546
  %46 = add nsw i32 %45, 63, !dbg !547, !psr.id !548
  %47 = add nsw i32 %46, 1, !dbg !549, !psr.id !550
  %48 = and i32 %43, %47, !dbg !551, !psr.id !552
  %49 = zext i8 %41 to i32, !dbg !553, !psr.id !554
  %50 = or i32 %49, %48, !dbg !553, !psr.id !555
  %51 = trunc i32 %50 to i8, !dbg !553, !psr.id !556
  call void @llvm.dbg.value(metadata i8 %51, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !557
  %52 = zext i8 %51 to i32, !dbg !558, !psr.id !559
  %53 = sub nsw i32 %52, 1, !dbg !560, !psr.id !561
  %54 = trunc i32 %53 to i8, !dbg !562, !psr.id !563
  ret i8 %54, !dbg !564, !psr.id !565
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_memcpy_if_eq(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 !dbg !566 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !572, metadata !DIExpression()), !dbg !573, !psr.id !574
  call void @llvm.dbg.value(metadata i8* %1, metadata !575, metadata !DIExpression()), !dbg !573, !psr.id !576
  call void @llvm.dbg.value(metadata i64 %2, metadata !577, metadata !DIExpression()), !dbg !573, !psr.id !578
  call void @llvm.dbg.value(metadata i64 %3, metadata !579, metadata !DIExpression()), !dbg !573, !psr.id !580
  call void @llvm.dbg.value(metadata i64 %4, metadata !581, metadata !DIExpression()), !dbg !573, !psr.id !582
  %6 = call i32 @mbedtls_ct_size_bool_eq(i64 %3, i64 %4), !dbg !583, !psr.id !584
  %7 = zext i32 %6 to i64, !dbg !583, !psr.id !585
  call void @llvm.dbg.value(metadata i64 %7, metadata !586, metadata !DIExpression()), !dbg !573, !psr.id !587
  %8 = call i64 @mbedtls_ct_size_mask(i64 %7), !dbg !588, !psr.id !589
  %9 = trunc i64 %8 to i8, !dbg !590, !psr.id !591
  call void @llvm.dbg.value(metadata i8 %9, metadata !592, metadata !DIExpression()), !dbg !573, !psr.id !593
  call void @llvm.dbg.value(metadata i64 0, metadata !594, metadata !DIExpression()), !dbg !596, !psr.id !597
  br label %10, !dbg !598, !psr.id !599

10:                                               ; preds = %27, %5
  %.0 = phi i64 [ 0, %5 ], [ %28, %27 ], !dbg !596, !psr.id !600
  call void @llvm.dbg.value(metadata i64 %.0, metadata !594, metadata !DIExpression()), !dbg !596, !psr.id !601
  %11 = icmp ult i64 %.0, %2, !dbg !602, !psr.id !604
  br i1 %11, label %12, label %29, !dbg !605, !psr.id !606

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !607, !psr.id !608
  %14 = load i8, i8* %13, align 1, !dbg !607, !psr.id !609
  %15 = zext i8 %14 to i32, !dbg !607, !psr.id !610
  %16 = zext i8 %9 to i32, !dbg !611, !psr.id !612
  %17 = and i32 %15, %16, !dbg !613, !psr.id !614
  %18 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !615, !psr.id !616
  %19 = load i8, i8* %18, align 1, !dbg !615, !psr.id !617
  %20 = zext i8 %19 to i32, !dbg !615, !psr.id !618
  %21 = zext i8 %9 to i32, !dbg !619, !psr.id !620
  %22 = xor i32 %21, -1, !dbg !621, !psr.id !622
  %23 = and i32 %20, %22, !dbg !623, !psr.id !624
  %24 = or i32 %17, %23, !dbg !625, !psr.id !626
  %25 = trunc i32 %24 to i8, !dbg !627, !psr.id !628
  %26 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !629, !psr.id !630
  store i8 %25, i8* %26, align 1, !dbg !631, !psr.id !632
  br label %27, !dbg !629, !psr.id !633

27:                                               ; preds = %12
  %28 = add i64 %.0, 1, !dbg !634, !psr.id !635
  call void @llvm.dbg.value(metadata i64 %28, metadata !594, metadata !DIExpression()), !dbg !596, !psr.id !636
  br label %10, !dbg !637, !llvm.loop !638, !psr.id !640

29:                                               ; preds = %10
  ret void, !dbg !641, !psr.id !642
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_memcpy_offset(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 !dbg !643 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !646, metadata !DIExpression()), !dbg !647, !psr.id !648
  call void @llvm.dbg.value(metadata i8* %1, metadata !649, metadata !DIExpression()), !dbg !647, !psr.id !650
  call void @llvm.dbg.value(metadata i64 %2, metadata !651, metadata !DIExpression()), !dbg !647, !psr.id !652
  call void @llvm.dbg.value(metadata i64 %3, metadata !653, metadata !DIExpression()), !dbg !647, !psr.id !654
  call void @llvm.dbg.value(metadata i64 %4, metadata !655, metadata !DIExpression()), !dbg !647, !psr.id !656
  call void @llvm.dbg.value(metadata i64 %5, metadata !657, metadata !DIExpression()), !dbg !647, !psr.id !658
  call void @llvm.dbg.value(metadata i64 %3, metadata !659, metadata !DIExpression()), !dbg !647, !psr.id !660
  br label %7, !dbg !661, !psr.id !663

7:                                                ; preds = %11, %6
  %.0 = phi i64 [ %3, %6 ], [ %12, %11 ], !dbg !664, !psr.id !665
  call void @llvm.dbg.value(metadata i64 %.0, metadata !659, metadata !DIExpression()), !dbg !647, !psr.id !666
  %8 = icmp ule i64 %.0, %4, !dbg !667, !psr.id !669
  br i1 %8, label %9, label %13, !dbg !670, !psr.id !671

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !672, !psr.id !674
  call void @mbedtls_ct_memcpy_if_eq(i8* %0, i8* %10, i64 %5, i64 %.0, i64 %2), !dbg !675, !psr.id !676
  br label %11, !dbg !677, !psr.id !678

11:                                               ; preds = %9
  %12 = add i64 %.0, 1, !dbg !679, !psr.id !680
  call void @llvm.dbg.value(metadata i64 %12, metadata !659, metadata !DIExpression()), !dbg !647, !psr.id !681
  br label %7, !dbg !682, !llvm.loop !683, !psr.id !685

13:                                               ; preds = %7
  ret void, !dbg !686, !psr.id !687
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_hmac(%struct.mbedtls_md_context_t* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, i64 %6, i8* %7) #0 !dbg !688 {
  %9 = alloca [64 x i8], align 16, !psr.id !703
  %10 = alloca %struct.mbedtls_md_context_t, align 8, !psr.id !704
  call void @llvm.dbg.value(metadata %struct.mbedtls_md_context_t* %0, metadata !705, metadata !DIExpression()), !dbg !706, !psr.id !707
  call void @llvm.dbg.value(metadata i8* %1, metadata !708, metadata !DIExpression()), !dbg !706, !psr.id !709
  call void @llvm.dbg.value(metadata i64 %2, metadata !710, metadata !DIExpression()), !dbg !706, !psr.id !711
  call void @llvm.dbg.value(metadata i8* %3, metadata !712, metadata !DIExpression()), !dbg !706, !psr.id !713
  call void @llvm.dbg.value(metadata i64 %4, metadata !714, metadata !DIExpression()), !dbg !706, !psr.id !715
  call void @llvm.dbg.value(metadata i64 %5, metadata !716, metadata !DIExpression()), !dbg !706, !psr.id !717
  call void @llvm.dbg.value(metadata i64 %6, metadata !718, metadata !DIExpression()), !dbg !706, !psr.id !719
  call void @llvm.dbg.value(metadata i8* %7, metadata !720, metadata !DIExpression()), !dbg !706, !psr.id !721
  %11 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !722, !psr.id !723
  %12 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %11, align 8, !dbg !722, !psr.id !724
  %13 = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* %12), !dbg !725, !psr.id !726
  call void @llvm.dbg.value(metadata i32 %13, metadata !727, metadata !DIExpression()), !dbg !706, !psr.id !730
  %14 = icmp eq i32 %13, 5, !dbg !731, !psr.id !732
  %15 = zext i1 %14 to i64, !dbg !733, !psr.id !734
  %16 = select i1 %14, i32 128, i32 64, !dbg !733, !psr.id !735
  %17 = sext i32 %16 to i64, !dbg !733, !psr.id !736
  call void @llvm.dbg.value(metadata i64 %17, metadata !737, metadata !DIExpression()), !dbg !706, !psr.id !738
  %18 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 2, !dbg !739, !psr.id !740
  %19 = load i8*, i8** %18, align 8, !dbg !739, !psr.id !741
  call void @llvm.dbg.value(metadata i8* %19, metadata !742, metadata !DIExpression()), !dbg !706, !psr.id !744
  %20 = getelementptr inbounds i8, i8* %19, i64 %17, !dbg !745, !psr.id !746
  call void @llvm.dbg.value(metadata i8* %20, metadata !747, metadata !DIExpression()), !dbg !706, !psr.id !748
  %21 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !749, !psr.id !750
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %21, align 8, !dbg !749, !psr.id !751
  %23 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* %22), !dbg !752, !psr.id !753
  %24 = zext i8 %23 to i64, !dbg !752, !psr.id !754
  call void @llvm.dbg.value(metadata i64 %24, metadata !755, metadata !DIExpression()), !dbg !706, !psr.id !756
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !757, metadata !DIExpression()), !dbg !761, !psr.id !762
  call void @llvm.dbg.declare(metadata %struct.mbedtls_md_context_t* %10, metadata !763, metadata !DIExpression()), !dbg !764, !psr.id !765
  call void @llvm.dbg.value(metadata i32 -110, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !767
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* %10), !dbg !768, !psr.id !769
  br label %25, !dbg !770, !psr.id !771

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !772, !psr.id !774
  %27 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %26, align 8, !dbg !772, !psr.id !775
  %28 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* %10, %struct.mbedtls_md_info_t* %27, i32 0), !dbg !772, !psr.id !776
  call void @llvm.dbg.value(metadata i32 %28, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !777
  %29 = icmp ne i32 %28, 0, !dbg !778, !psr.id !780
  br i1 %29, label %30, label %31, !dbg !772, !psr.id !781

30:                                               ; preds = %25
  br label %112, !dbg !778, !psr.id !782

31:                                               ; preds = %25
  br label %32, !dbg !772, !psr.id !783

32:                                               ; preds = %31
  br label %33, !dbg !784, !psr.id !785

33:                                               ; preds = %32
  %34 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %1, i64 %2), !dbg !786, !psr.id !788
  call void @llvm.dbg.value(metadata i32 %34, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !789
  %35 = icmp ne i32 %34, 0, !dbg !790, !psr.id !792
  br i1 %35, label %36, label %37, !dbg !786, !psr.id !793

36:                                               ; preds = %33
  br label %112, !dbg !790, !psr.id !794

37:                                               ; preds = %33
  br label %38, !dbg !786, !psr.id !795

38:                                               ; preds = %37
  br label %39, !dbg !796, !psr.id !797

39:                                               ; preds = %38
  %40 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %3, i64 %5), !dbg !798, !psr.id !800
  call void @llvm.dbg.value(metadata i32 %40, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !801
  %41 = icmp ne i32 %40, 0, !dbg !802, !psr.id !804
  br i1 %41, label %42, label %43, !dbg !798, !psr.id !805

42:                                               ; preds = %39
  br label %112, !dbg !802, !psr.id !806

43:                                               ; preds = %39
  br label %44, !dbg !798, !psr.id !807

44:                                               ; preds = %43
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 33, i64 %24, i1 false), !dbg !808, !psr.id !809
  call void @llvm.dbg.value(metadata i64 %5, metadata !810, metadata !DIExpression()), !dbg !706, !psr.id !811
  br label %45, !dbg !812, !psr.id !814

45:                                               ; preds = %72, %44
  %.01 = phi i64 [ %5, %44 ], [ %73, %72 ], !dbg !815, !psr.id !816
  call void @llvm.dbg.value(metadata i64 %.01, metadata !810, metadata !DIExpression()), !dbg !706, !psr.id !817
  %46 = icmp ule i64 %.01, %6, !dbg !818, !psr.id !820
  br i1 %46, label %47, label %74, !dbg !821, !psr.id !822

47:                                               ; preds = %45
  br label %48, !dbg !823, !psr.id !825

48:                                               ; preds = %47
  %49 = call i32 @mbedtls_md_clone(%struct.mbedtls_md_context_t* %10, %struct.mbedtls_md_context_t* %0), !dbg !826, !psr.id !828
  call void @llvm.dbg.value(metadata i32 %49, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !829
  %50 = icmp ne i32 %49, 0, !dbg !830, !psr.id !832
  br i1 %50, label %51, label %52, !dbg !826, !psr.id !833

51:                                               ; preds = %48
  br label %112, !dbg !830, !psr.id !834

52:                                               ; preds = %48
  br label %53, !dbg !826, !psr.id !835

53:                                               ; preds = %52
  br label %54, !dbg !836, !psr.id !837

54:                                               ; preds = %53
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !838, !psr.id !840
  %56 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %10, i8* %55), !dbg !838, !psr.id !841
  call void @llvm.dbg.value(metadata i32 %56, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !842
  %57 = icmp ne i32 %56, 0, !dbg !843, !psr.id !845
  br i1 %57, label %58, label %59, !dbg !838, !psr.id !846

58:                                               ; preds = %54
  br label %112, !dbg !843, !psr.id !847

59:                                               ; preds = %54
  br label %60, !dbg !838, !psr.id !848

60:                                               ; preds = %59
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !849, !psr.id !850
  call void @mbedtls_ct_memcpy_if_eq(i8* %7, i8* %61, i64 %24, i64 %.01, i64 %4), !dbg !851, !psr.id !852
  %62 = icmp ult i64 %.01, %6, !dbg !853, !psr.id !855
  br i1 %62, label %63, label %71, !dbg !856, !psr.id !857

63:                                               ; preds = %60
  br label %64, !dbg !858, !psr.id !859

64:                                               ; preds = %63
  %65 = getelementptr inbounds i8, i8* %3, i64 %.01, !dbg !860, !psr.id !862
  %66 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %65, i64 1), !dbg !860, !psr.id !863
  call void @llvm.dbg.value(metadata i32 %66, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !864
  %67 = icmp ne i32 %66, 0, !dbg !865, !psr.id !867
  br i1 %67, label %68, label %69, !dbg !860, !psr.id !868

68:                                               ; preds = %64
  br label %112, !dbg !865, !psr.id !869

69:                                               ; preds = %64
  br label %70, !dbg !860, !psr.id !870

70:                                               ; preds = %69
  br label %71, !dbg !860, !psr.id !871

71:                                               ; preds = %70, %60
  br label %72, !dbg !872, !psr.id !873

72:                                               ; preds = %71
  %73 = add i64 %.01, 1, !dbg !874, !psr.id !875
  call void @llvm.dbg.value(metadata i64 %73, metadata !810, metadata !DIExpression()), !dbg !706, !psr.id !876
  br label %45, !dbg !877, !llvm.loop !878, !psr.id !880

74:                                               ; preds = %45
  br label %75, !dbg !881, !psr.id !882

75:                                               ; preds = %74
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !883, !psr.id !885
  %77 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %0, i8* %76), !dbg !883, !psr.id !886
  call void @llvm.dbg.value(metadata i32 %77, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !887
  %78 = icmp ne i32 %77, 0, !dbg !888, !psr.id !890
  br i1 %78, label %79, label %80, !dbg !883, !psr.id !891

79:                                               ; preds = %75
  br label %112, !dbg !888, !psr.id !892

80:                                               ; preds = %75
  br label %81, !dbg !883, !psr.id !893

81:                                               ; preds = %80
  br label %82, !dbg !894, !psr.id !895

82:                                               ; preds = %81
  %83 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* %0), !dbg !896, !psr.id !898
  call void @llvm.dbg.value(metadata i32 %83, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !899
  %84 = icmp ne i32 %83, 0, !dbg !900, !psr.id !902
  br i1 %84, label %85, label %86, !dbg !896, !psr.id !903

85:                                               ; preds = %82
  br label %112, !dbg !900, !psr.id !904

86:                                               ; preds = %82
  br label %87, !dbg !896, !psr.id !905

87:                                               ; preds = %86
  br label %88, !dbg !906, !psr.id !907

88:                                               ; preds = %87
  %89 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %20, i64 %17), !dbg !908, !psr.id !910
  call void @llvm.dbg.value(metadata i32 %89, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !911
  %90 = icmp ne i32 %89, 0, !dbg !912, !psr.id !914
  br i1 %90, label %91, label %92, !dbg !908, !psr.id !915

91:                                               ; preds = %88
  br label %112, !dbg !912, !psr.id !916

92:                                               ; preds = %88
  br label %93, !dbg !908, !psr.id !917

93:                                               ; preds = %92
  br label %94, !dbg !918, !psr.id !919

94:                                               ; preds = %93
  %95 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %7, i64 %24), !dbg !920, !psr.id !922
  call void @llvm.dbg.value(metadata i32 %95, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !923
  %96 = icmp ne i32 %95, 0, !dbg !924, !psr.id !926
  br i1 %96, label %97, label %98, !dbg !920, !psr.id !927

97:                                               ; preds = %94
  br label %112, !dbg !924, !psr.id !928

98:                                               ; preds = %94
  br label %99, !dbg !920, !psr.id !929

99:                                               ; preds = %98
  br label %100, !dbg !930, !psr.id !931

100:                                              ; preds = %99
  %101 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %0, i8* %7), !dbg !932, !psr.id !934
  call void @llvm.dbg.value(metadata i32 %101, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !935
  %102 = icmp ne i32 %101, 0, !dbg !936, !psr.id !938
  br i1 %102, label %103, label %104, !dbg !932, !psr.id !939

103:                                              ; preds = %100
  br label %112, !dbg !936, !psr.id !940

104:                                              ; preds = %100
  br label %105, !dbg !932, !psr.id !941

105:                                              ; preds = %104
  br label %106, !dbg !942, !psr.id !943

106:                                              ; preds = %105
  %107 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* %0), !dbg !944, !psr.id !946
  call void @llvm.dbg.value(metadata i32 %107, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !947
  %108 = icmp ne i32 %107, 0, !dbg !948, !psr.id !950
  br i1 %108, label %109, label %110, !dbg !944, !psr.id !951

109:                                              ; preds = %106
  br label %112, !dbg !948, !psr.id !952

110:                                              ; preds = %106
  br label %111, !dbg !944, !psr.id !953

111:                                              ; preds = %110
  br label %112, !dbg !944, !psr.id !954

112:                                              ; preds = %111, %109, %103, %97, %91, %85, %79, %68, %58, %51, %42, %36, %30
  %.0 = phi i32 [ %28, %30 ], [ %34, %36 ], [ %40, %42 ], [ %49, %51 ], [ %56, %58 ], [ %66, %68 ], [ %77, %79 ], [ %83, %85 ], [ %89, %91 ], [ %95, %97 ], [ %101, %103 ], [ %107, %109 ], [ %107, %111 ], !dbg !706, !psr.id !955
  call void @llvm.dbg.value(metadata i32 %.0, metadata !766, metadata !DIExpression()), !dbg !706, !psr.id !956
  call void @llvm.dbg.label(metadata !957), !dbg !958, !psr.id !959
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* %10), !dbg !960, !psr.id !961
  ret i32 %.0, !dbg !962, !psr.id !963
}

declare dso_local i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t*) #2

declare dso_local zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t*) #2

declare dso_local void @mbedtls_md_init(%struct.mbedtls_md_context_t*) #2

declare dso_local i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t*, %struct.mbedtls_md_info_t*, i32) #2

declare dso_local i32 @mbedtls_md_update(%struct.mbedtls_md_context_t*, i8*, i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @mbedtls_md_clone(%struct.mbedtls_md_context_t*, %struct.mbedtls_md_context_t*) #2

declare dso_local i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t*, i8*) #2

declare dso_local i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t*) #2

declare dso_local i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @mbedtls_md_free(%struct.mbedtls_md_context_t*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i8 zeroext %2) #0 !dbg !964 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !976, metadata !DIExpression()), !dbg !977, !psr.id !978
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !979, metadata !DIExpression()), !dbg !977, !psr.id !980
  call void @llvm.dbg.value(metadata i8 %2, metadata !981, metadata !DIExpression()), !dbg !977, !psr.id !982
  call void @llvm.dbg.value(metadata i32 0, metadata !983, metadata !DIExpression()), !dbg !977, !psr.id !984
  br label %4, !dbg !985, !psr.id !986

4:                                                ; preds = %3
  br label %5, !dbg !987, !psr.id !989

5:                                                ; preds = %4
  br label %6, !dbg !990, !psr.id !991

6:                                                ; preds = %5
  br label %7, !dbg !992, !psr.id !994

7:                                                ; preds = %6
  %8 = zext i8 %2 to i64, !dbg !995, !psr.id !996
  %9 = call i64 @mbedtls_ct_mpi_uint_mask(i64 %8), !dbg !997, !psr.id !998
  call void @llvm.dbg.value(metadata i64 %9, metadata !999, metadata !DIExpression()), !dbg !977, !psr.id !1000
  br label %10, !dbg !1001, !psr.id !1002

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1003, !psr.id !1006
  %12 = load i64, i64* %11, align 8, !dbg !1003, !psr.id !1007
  %13 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %0, i64 %12), !dbg !1003, !psr.id !1008
  call void @llvm.dbg.value(metadata i32 %13, metadata !983, metadata !DIExpression()), !dbg !977, !psr.id !1009
  %14 = icmp ne i32 %13, 0, !dbg !1003, !psr.id !1010
  br i1 %14, label %15, label %16, !dbg !1011, !psr.id !1012

15:                                               ; preds = %10
  br label %46, !dbg !1003, !psr.id !1013

16:                                               ; preds = %10
  br label %17, !dbg !1011, !psr.id !1014

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1015, !psr.id !1016
  %19 = load i32, i32* %18, align 8, !dbg !1015, !psr.id !1017
  %20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1018, !psr.id !1019
  %21 = load i32, i32* %20, align 8, !dbg !1018, !psr.id !1020
  %22 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %19, i32 %21), !dbg !1021, !psr.id !1022
  %23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1023, !psr.id !1024
  store i32 %22, i32* %23, align 8, !dbg !1025, !psr.id !1026
  %24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1027, !psr.id !1028
  %25 = load i64*, i64** %24, align 8, !dbg !1027, !psr.id !1029
  %26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1030, !psr.id !1031
  %27 = load i64*, i64** %26, align 8, !dbg !1030, !psr.id !1032
  %28 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1033, !psr.id !1034
  %29 = load i64, i64* %28, align 8, !dbg !1033, !psr.id !1035
  call void @mbedtls_mpi_core_cond_assign(i64* %25, i64* %27, i64 %29, i8 zeroext %2), !dbg !1036, !psr.id !1037
  %30 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1038, !psr.id !1040
  %31 = load i64, i64* %30, align 8, !dbg !1038, !psr.id !1041
  call void @llvm.dbg.value(metadata i64 %31, metadata !1042, metadata !DIExpression()), !dbg !1043, !psr.id !1044
  br label %32, !dbg !1045, !psr.id !1046

32:                                               ; preds = %43, %17
  %.0 = phi i64 [ %31, %17 ], [ %44, %43 ], !dbg !1043, !psr.id !1047
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1042, metadata !DIExpression()), !dbg !1043, !psr.id !1048
  %33 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1049, !psr.id !1051
  %34 = load i64, i64* %33, align 8, !dbg !1049, !psr.id !1052
  %35 = icmp ult i64 %.0, %34, !dbg !1053, !psr.id !1054
  br i1 %35, label %36, label %45, !dbg !1055, !psr.id !1056

36:                                               ; preds = %32
  %37 = xor i64 %9, -1, !dbg !1057, !psr.id !1058
  %38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1059, !psr.id !1060
  %39 = load i64*, i64** %38, align 8, !dbg !1059, !psr.id !1061
  %40 = getelementptr inbounds i64, i64* %39, i64 %.0, !dbg !1062, !psr.id !1063
  %41 = load i64, i64* %40, align 8, !dbg !1064, !psr.id !1065
  %42 = and i64 %41, %37, !dbg !1064, !psr.id !1066
  store i64 %42, i64* %40, align 8, !dbg !1064, !psr.id !1067
  br label %43, !dbg !1062, !psr.id !1068

43:                                               ; preds = %36
  %44 = add i64 %.0, 1, !dbg !1069, !psr.id !1070
  call void @llvm.dbg.value(metadata i64 %44, metadata !1042, metadata !DIExpression()), !dbg !1043, !psr.id !1071
  br label %32, !dbg !1072, !llvm.loop !1073, !psr.id !1075

45:                                               ; preds = %32
  br label %46, !dbg !1074, !psr.id !1076

46:                                               ; preds = %45, %15
  call void @llvm.dbg.label(metadata !1077), !dbg !1078, !psr.id !1079
  ret i32 %13, !dbg !1080, !psr.id !1081
}

declare dso_local i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @mbedtls_ct_cond_select_sign(i8 zeroext %0, i32 %1, i32 %2) #0 !dbg !1082 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1085, metadata !DIExpression()), !dbg !1086, !psr.id !1087
  call void @llvm.dbg.value(metadata i32 %1, metadata !1088, metadata !DIExpression()), !dbg !1086, !psr.id !1089
  call void @llvm.dbg.value(metadata i32 %2, metadata !1090, metadata !DIExpression()), !dbg !1086, !psr.id !1091
  %4 = add nsw i32 %1, 1, !dbg !1092, !psr.id !1093
  call void @llvm.dbg.value(metadata i32 %4, metadata !1094, metadata !DIExpression()), !dbg !1086, !psr.id !1095
  %5 = add nsw i32 %2, 1, !dbg !1096, !psr.id !1097
  call void @llvm.dbg.value(metadata i32 %5, metadata !1098, metadata !DIExpression()), !dbg !1086, !psr.id !1099
  %6 = zext i8 %0 to i32, !dbg !1100, !psr.id !1101
  %7 = shl i32 %6, 1, !dbg !1102, !psr.id !1103
  call void @llvm.dbg.value(metadata i32 %7, metadata !1104, metadata !DIExpression()), !dbg !1086, !psr.id !1105
  %8 = xor i32 %7, -1, !dbg !1106, !psr.id !1107
  %9 = and i32 %5, %8, !dbg !1108, !psr.id !1109
  %10 = and i32 %4, %7, !dbg !1110, !psr.id !1111
  %11 = or i32 %9, %10, !dbg !1112, !psr.id !1113
  call void @llvm.dbg.value(metadata i32 %11, metadata !1114, metadata !DIExpression()), !dbg !1086, !psr.id !1115
  %12 = sub nsw i32 %11, 1, !dbg !1116, !psr.id !1117
  ret i32 %12, !dbg !1118, !psr.id !1119
}

declare dso_local void @mbedtls_mpi_core_cond_assign(i64*, i64*, i64, i8 zeroext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i8 zeroext %2) #0 !dbg !1120 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !1123, metadata !DIExpression()), !dbg !1124, !psr.id !1125
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !1126, metadata !DIExpression()), !dbg !1124, !psr.id !1127
  call void @llvm.dbg.value(metadata i8 %2, metadata !1128, metadata !DIExpression()), !dbg !1124, !psr.id !1129
  call void @llvm.dbg.value(metadata i32 0, metadata !1130, metadata !DIExpression()), !dbg !1124, !psr.id !1131
  br label %4, !dbg !1132, !psr.id !1133

4:                                                ; preds = %3
  br label %5, !dbg !1134, !psr.id !1136

5:                                                ; preds = %4
  br label %6, !dbg !1137, !psr.id !1138

6:                                                ; preds = %5
  br label %7, !dbg !1139, !psr.id !1141

7:                                                ; preds = %6
  %8 = icmp eq %struct.mbedtls_mpi* %0, %1, !dbg !1142, !psr.id !1144
  br i1 %8, label %9, label %10, !dbg !1145, !psr.id !1146

9:                                                ; preds = %7
  br label %46, !dbg !1147, !psr.id !1148

10:                                               ; preds = %7
  br label %11, !dbg !1149, !psr.id !1150

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1151, !psr.id !1154
  %13 = load i64, i64* %12, align 8, !dbg !1151, !psr.id !1155
  %14 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %0, i64 %13), !dbg !1151, !psr.id !1156
  call void @llvm.dbg.value(metadata i32 %14, metadata !1130, metadata !DIExpression()), !dbg !1124, !psr.id !1157
  %15 = icmp ne i32 %14, 0, !dbg !1151, !psr.id !1158
  br i1 %15, label %16, label %17, !dbg !1159, !psr.id !1160

16:                                               ; preds = %11
  br label %45, !dbg !1151, !psr.id !1161

17:                                               ; preds = %11
  br label %18, !dbg !1159, !psr.id !1162

18:                                               ; preds = %17
  br label %19, !dbg !1163, !psr.id !1164

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1165, !psr.id !1168
  %21 = load i64, i64* %20, align 8, !dbg !1165, !psr.id !1169
  %22 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %1, i64 %21), !dbg !1165, !psr.id !1170
  call void @llvm.dbg.value(metadata i32 %22, metadata !1130, metadata !DIExpression()), !dbg !1124, !psr.id !1171
  %23 = icmp ne i32 %22, 0, !dbg !1165, !psr.id !1172
  br i1 %23, label %24, label %25, !dbg !1173, !psr.id !1174

24:                                               ; preds = %19
  br label %45, !dbg !1165, !psr.id !1175

25:                                               ; preds = %19
  br label %26, !dbg !1173, !psr.id !1176

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1177, !psr.id !1178
  %28 = load i32, i32* %27, align 8, !dbg !1177, !psr.id !1179
  call void @llvm.dbg.value(metadata i32 %28, metadata !1180, metadata !DIExpression()), !dbg !1124, !psr.id !1181
  %29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1182, !psr.id !1183
  %30 = load i32, i32* %29, align 8, !dbg !1182, !psr.id !1184
  %31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1185, !psr.id !1186
  %32 = load i32, i32* %31, align 8, !dbg !1185, !psr.id !1187
  %33 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %30, i32 %32), !dbg !1188, !psr.id !1189
  %34 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1190, !psr.id !1191
  store i32 %33, i32* %34, align 8, !dbg !1192, !psr.id !1193
  %35 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1194, !psr.id !1195
  %36 = load i32, i32* %35, align 8, !dbg !1194, !psr.id !1196
  %37 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %28, i32 %36), !dbg !1197, !psr.id !1198
  %38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1199, !psr.id !1200
  store i32 %37, i32* %38, align 8, !dbg !1201, !psr.id !1202
  %39 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1203, !psr.id !1204
  %40 = load i64*, i64** %39, align 8, !dbg !1203, !psr.id !1205
  %41 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1206, !psr.id !1207
  %42 = load i64*, i64** %41, align 8, !dbg !1206, !psr.id !1208
  %43 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1209, !psr.id !1210
  %44 = load i64, i64* %43, align 8, !dbg !1209, !psr.id !1211
  call void @mbedtls_mpi_core_cond_swap(i64* %40, i64* %42, i64 %44, i8 zeroext %2), !dbg !1212, !psr.id !1213
  br label %45, !dbg !1212, !psr.id !1214

45:                                               ; preds = %26, %24, %16
  %.01 = phi i32 [ %14, %16 ], [ %22, %24 ], [ %22, %26 ], !dbg !1124, !psr.id !1215
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1130, metadata !DIExpression()), !dbg !1124, !psr.id !1216
  call void @llvm.dbg.label(metadata !1217), !dbg !1218, !psr.id !1219
  br label %46, !dbg !1220, !psr.id !1221

46:                                               ; preds = %45, %9
  %.0 = phi i32 [ 0, %9 ], [ %.01, %45 ], !dbg !1124, !psr.id !1222
  ret i32 %.0, !dbg !1223, !psr.id !1224
}

declare dso_local void @mbedtls_mpi_core_cond_swap(i64*, i64*, i64, i8 zeroext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_core_lt_ct(i64* %0, i64* %1, i64 %2) #0 !dbg !1225 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1228, metadata !DIExpression()), !dbg !1229, !psr.id !1230
  call void @llvm.dbg.value(metadata i64* %1, metadata !1231, metadata !DIExpression()), !dbg !1229, !psr.id !1232
  call void @llvm.dbg.value(metadata i64 %2, metadata !1233, metadata !DIExpression()), !dbg !1229, !psr.id !1234
  call void @llvm.dbg.value(metadata i32 0, metadata !1235, metadata !DIExpression()), !dbg !1229, !psr.id !1236
  call void @llvm.dbg.value(metadata i32 0, metadata !1237, metadata !DIExpression()), !dbg !1229, !psr.id !1238
  call void @llvm.dbg.value(metadata i32 0, metadata !1239, metadata !DIExpression()), !dbg !1229, !psr.id !1240
  call void @llvm.dbg.value(metadata i64 %2, metadata !1241, metadata !DIExpression()), !dbg !1243, !psr.id !1244
  br label %4, !dbg !1245, !psr.id !1246

4:                                                ; preds = %26, %3
  %.02 = phi i32 [ 0, %3 ], [ %24, %26 ], !dbg !1229, !psr.id !1247, !ValueTainted !234
  %.01 = phi i32 [ 0, %3 ], [ %25, %26 ], !dbg !1229, !psr.id !1248, !ValueTainted !234
  %.0 = phi i64 [ %2, %3 ], [ %27, %26 ], !dbg !1243, !psr.id !1249
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1241, metadata !DIExpression()), !dbg !1243, !psr.id !1250
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1235, metadata !DIExpression()), !dbg !1229, !psr.id !1251
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1239, metadata !DIExpression()), !dbg !1229, !psr.id !1252
  %5 = icmp ugt i64 %.0, 0, !dbg !1253, !psr.id !1255
  br i1 %5, label %6, label %28, !dbg !1256, !psr.id !1257

6:                                                ; preds = %4
  %7 = sub i64 %.0, 1, !dbg !1258, !psr.id !1260
  %8 = getelementptr inbounds i64, i64* %1, i64 %7, !dbg !1261, !psr.id !1262, !PointTainted !1263
  %9 = load i64, i64* %8, align 8, !dbg !1261, !psr.id !1264, !ValueTainted !234
  %10 = sub i64 %.0, 1, !dbg !1265, !psr.id !1266
  %11 = getelementptr inbounds i64, i64* %0, i64 %10, !dbg !1267, !psr.id !1268, !PointTainted !1263
  %12 = load i64, i64* %11, align 8, !dbg !1267, !psr.id !1269, !ValueTainted !234
  %13 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %9, i64 %12), !dbg !1270, !psr.id !1271, !ValueTainted !234
  call void @llvm.dbg.value(metadata i32 %13, metadata !1237, metadata !DIExpression()), !dbg !1229, !psr.id !1272
  %14 = or i32 %.01, %13, !dbg !1273, !psr.id !1274, !ValueTainted !234
  call void @llvm.dbg.value(metadata i32 %14, metadata !1235, metadata !DIExpression()), !dbg !1229, !psr.id !1275
  %15 = sub i64 %.0, 1, !dbg !1276, !psr.id !1277
  %16 = getelementptr inbounds i64, i64* %0, i64 %15, !dbg !1278, !psr.id !1279, !PointTainted !1263
  %17 = load i64, i64* %16, align 8, !dbg !1278, !psr.id !1280, !ValueTainted !234
  %18 = sub i64 %.0, 1, !dbg !1281, !psr.id !1282
  %19 = getelementptr inbounds i64, i64* %1, i64 %18, !dbg !1283, !psr.id !1284, !PointTainted !1263
  %20 = load i64, i64* %19, align 8, !dbg !1283, !psr.id !1285, !ValueTainted !234
  %21 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %17, i64 %20), !dbg !1286, !psr.id !1287, !ValueTainted !234
  call void @llvm.dbg.value(metadata i32 %21, metadata !1237, metadata !DIExpression()), !dbg !1229, !psr.id !1288
  %22 = sub i32 1, %14, !dbg !1289, !psr.id !1290, !ValueTainted !234
  %23 = and i32 %21, %22, !dbg !1291, !psr.id !1292, !ValueTainted !234
  %24 = or i32 %.02, %23, !dbg !1293, !psr.id !1294, !ValueTainted !234
  call void @llvm.dbg.value(metadata i32 %24, metadata !1239, metadata !DIExpression()), !dbg !1229, !psr.id !1295
  %25 = or i32 %14, %21, !dbg !1296, !psr.id !1297, !ValueTainted !234
  call void @llvm.dbg.value(metadata i32 %25, metadata !1235, metadata !DIExpression()), !dbg !1229, !psr.id !1298
  br label %26, !dbg !1299, !psr.id !1300

26:                                               ; preds = %6
  %27 = add i64 %.0, -1, !dbg !1301, !psr.id !1302
  call void @llvm.dbg.value(metadata i64 %27, metadata !1241, metadata !DIExpression()), !dbg !1243, !psr.id !1303
  br label %4, !dbg !1304, !llvm.loop !1305, !psr.id !1307

28:                                               ; preds = %4
  ret i32 %.02, !dbg !1308, !psr.id !1309
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i32* %2) #0 !dbg !1310 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !1314, metadata !DIExpression()), !dbg !1315, !psr.id !1316
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !1317, metadata !DIExpression()), !dbg !1315, !psr.id !1318
  call void @llvm.dbg.value(metadata i32* %2, metadata !1319, metadata !DIExpression()), !dbg !1315, !psr.id !1320
  br label %4, !dbg !1321, !psr.id !1322

4:                                                ; preds = %3
  br label %5, !dbg !1323, !psr.id !1325

5:                                                ; preds = %4
  br label %6, !dbg !1326, !psr.id !1327

6:                                                ; preds = %5
  br label %7, !dbg !1328, !psr.id !1330

7:                                                ; preds = %6
  br label %8, !dbg !1331, !psr.id !1332

8:                                                ; preds = %7
  br label %9, !dbg !1333, !psr.id !1335

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1336, !psr.id !1338
  %11 = load i64, i64* %10, align 8, !dbg !1336, !psr.id !1339
  %12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1340, !psr.id !1341
  %13 = load i64, i64* %12, align 8, !dbg !1340, !psr.id !1342
  %14 = icmp ne i64 %11, %13, !dbg !1343, !psr.id !1344
  br i1 %14, label %15, label %16, !dbg !1345, !psr.id !1346

15:                                               ; preds = %9
  br label %70, !dbg !1347, !psr.id !1348

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1349, !psr.id !1350
  %18 = load i32, i32* %17, align 8, !dbg !1349, !psr.id !1351
  %19 = and i32 %18, 2, !dbg !1352, !psr.id !1353
  %20 = ashr i32 %19, 1, !dbg !1354, !psr.id !1355
  call void @llvm.dbg.value(metadata i32 %20, metadata !1356, metadata !DIExpression()), !dbg !1315, !psr.id !1357
  %21 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1358, !psr.id !1359
  %22 = load i32, i32* %21, align 8, !dbg !1358, !psr.id !1360
  %23 = and i32 %22, 2, !dbg !1361, !psr.id !1362
  %24 = ashr i32 %23, 1, !dbg !1363, !psr.id !1364
  call void @llvm.dbg.value(metadata i32 %24, metadata !1365, metadata !DIExpression()), !dbg !1315, !psr.id !1366
  %25 = xor i32 %20, %24, !dbg !1367, !psr.id !1368
  call void @llvm.dbg.value(metadata i32 %25, metadata !1369, metadata !DIExpression()), !dbg !1315, !psr.id !1370
  %26 = and i32 %25, %20, !dbg !1371, !psr.id !1372
  store i32 %26, i32* %2, align 4, !dbg !1373, !psr.id !1374
  call void @llvm.dbg.value(metadata i32 %25, metadata !1375, metadata !DIExpression()), !dbg !1315, !psr.id !1376
  %27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1377, !psr.id !1379
  %28 = load i64, i64* %27, align 8, !dbg !1377, !psr.id !1380
  call void @llvm.dbg.value(metadata i64 %28, metadata !1381, metadata !DIExpression()), !dbg !1315, !psr.id !1382
  br label %29, !dbg !1383, !psr.id !1384

29:                                               ; preds = %67, %16
  %.02 = phi i64 [ %28, %16 ], [ %68, %67 ], !dbg !1385, !psr.id !1386
  %.01 = phi i32 [ %25, %16 ], [ %66, %67 ], !dbg !1315, !psr.id !1387
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1375, metadata !DIExpression()), !dbg !1315, !psr.id !1388
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1381, metadata !DIExpression()), !dbg !1315, !psr.id !1389
  %30 = icmp ugt i64 %.02, 0, !dbg !1390, !psr.id !1392
  br i1 %30, label %31, label %69, !dbg !1393, !psr.id !1394

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1395, !psr.id !1397
  %33 = load i64*, i64** %32, align 8, !dbg !1395, !psr.id !1398
  %34 = sub i64 %.02, 1, !dbg !1399, !psr.id !1400
  %35 = getelementptr inbounds i64, i64* %33, i64 %34, !dbg !1401, !psr.id !1402
  %36 = load i64, i64* %35, align 8, !dbg !1401, !psr.id !1403
  %37 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1404, !psr.id !1405
  %38 = load i64*, i64** %37, align 8, !dbg !1404, !psr.id !1406
  %39 = sub i64 %.02, 1, !dbg !1407, !psr.id !1408
  %40 = getelementptr inbounds i64, i64* %38, i64 %39, !dbg !1409, !psr.id !1410
  %41 = load i64, i64* %40, align 8, !dbg !1409, !psr.id !1411
  %42 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %36, i64 %41), !dbg !1412, !psr.id !1413
  call void @llvm.dbg.value(metadata i32 %42, metadata !1369, metadata !DIExpression()), !dbg !1315, !psr.id !1414
  %43 = sub i32 1, %.01, !dbg !1415, !psr.id !1416
  %44 = and i32 %42, %43, !dbg !1417, !psr.id !1418
  %45 = and i32 %44, %20, !dbg !1419, !psr.id !1420
  %46 = load i32, i32* %2, align 4, !dbg !1421, !psr.id !1422
  %47 = or i32 %46, %45, !dbg !1421, !psr.id !1423
  store i32 %47, i32* %2, align 4, !dbg !1421, !psr.id !1424
  %48 = or i32 %.01, %42, !dbg !1425, !psr.id !1426
  call void @llvm.dbg.value(metadata i32 %48, metadata !1375, metadata !DIExpression()), !dbg !1315, !psr.id !1427
  %49 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1428, !psr.id !1429
  %50 = load i64*, i64** %49, align 8, !dbg !1428, !psr.id !1430
  %51 = sub i64 %.02, 1, !dbg !1431, !psr.id !1432
  %52 = getelementptr inbounds i64, i64* %50, i64 %51, !dbg !1433, !psr.id !1434
  %53 = load i64, i64* %52, align 8, !dbg !1433, !psr.id !1435
  %54 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1436, !psr.id !1437
  %55 = load i64*, i64** %54, align 8, !dbg !1436, !psr.id !1438
  %56 = sub i64 %.02, 1, !dbg !1439, !psr.id !1440
  %57 = getelementptr inbounds i64, i64* %55, i64 %56, !dbg !1441, !psr.id !1442
  %58 = load i64, i64* %57, align 8, !dbg !1441, !psr.id !1443
  %59 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %53, i64 %58), !dbg !1444, !psr.id !1445
  call void @llvm.dbg.value(metadata i32 %59, metadata !1369, metadata !DIExpression()), !dbg !1315, !psr.id !1446
  %60 = sub i32 1, %48, !dbg !1447, !psr.id !1448
  %61 = and i32 %59, %60, !dbg !1449, !psr.id !1450
  %62 = sub i32 1, %20, !dbg !1451, !psr.id !1452
  %63 = and i32 %61, %62, !dbg !1453, !psr.id !1454
  %64 = load i32, i32* %2, align 4, !dbg !1455, !psr.id !1456
  %65 = or i32 %64, %63, !dbg !1455, !psr.id !1457
  store i32 %65, i32* %2, align 4, !dbg !1455, !psr.id !1458
  %66 = or i32 %48, %59, !dbg !1459, !psr.id !1460
  call void @llvm.dbg.value(metadata i32 %66, metadata !1375, metadata !DIExpression()), !dbg !1315, !psr.id !1461
  br label %67, !dbg !1462, !psr.id !1463

67:                                               ; preds = %31
  %68 = add i64 %.02, -1, !dbg !1464, !psr.id !1465
  call void @llvm.dbg.value(metadata i64 %68, metadata !1381, metadata !DIExpression()), !dbg !1315, !psr.id !1466
  br label %29, !dbg !1467, !llvm.loop !1468, !psr.id !1470

69:                                               ; preds = %29
  br label %70, !dbg !1471, !psr.id !1472

70:                                               ; preds = %69, %15
  %.0 = phi i32 [ -4, %15 ], [ 0, %69 ], !dbg !1315, !psr.id !1473
  ret i32 %.0, !dbg !1474, !psr.id !1475
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_rsaes_pkcs1_v15_unpadding(i8* %0, i64 %1, i8* %2, i64 %3, i64* %4) #0 !dbg !1476 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1480, metadata !DIExpression()), !dbg !1481, !psr.id !1482
  call void @llvm.dbg.value(metadata i64 %1, metadata !1483, metadata !DIExpression()), !dbg !1481, !psr.id !1484
  call void @llvm.dbg.value(metadata i8* %2, metadata !1485, metadata !DIExpression()), !dbg !1481, !psr.id !1486
  call void @llvm.dbg.value(metadata i64 %3, metadata !1487, metadata !DIExpression()), !dbg !1481, !psr.id !1488
  call void @llvm.dbg.value(metadata i64* %4, metadata !1489, metadata !DIExpression()), !dbg !1481, !psr.id !1490
  call void @llvm.dbg.value(metadata i32 -110, metadata !1491, metadata !DIExpression()), !dbg !1481, !psr.id !1492
  call void @llvm.dbg.value(metadata i64 0, metadata !1493, metadata !DIExpression()), !dbg !1481, !psr.id !1494
  call void @llvm.dbg.value(metadata i32 0, metadata !1495, metadata !DIExpression()), !dbg !1481, !psr.id !1496
  call void @llvm.dbg.value(metadata i8 0, metadata !1497, metadata !DIExpression()), !dbg !1481, !psr.id !1498
  call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()), !dbg !1481, !psr.id !1500
  %6 = sub i64 %1, 11, !dbg !1501, !psr.id !1502
  %7 = icmp ugt i64 %3, %6, !dbg !1503, !psr.id !1504
  br i1 %7, label %8, label %10, !dbg !1505, !psr.id !1506

8:                                                ; preds = %5
  %9 = sub i64 %1, 11, !dbg !1507, !psr.id !1508
  br label %11, !dbg !1505, !psr.id !1509

10:                                               ; preds = %5
  br label %11, !dbg !1505, !psr.id !1510

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ %3, %10 ], !dbg !1505, !psr.id !1511
  call void @llvm.dbg.value(metadata i64 %12, metadata !1512, metadata !DIExpression()), !dbg !1481, !psr.id !1513
  %13 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1514, !psr.id !1515
  %14 = load i8, i8* %13, align 1, !dbg !1514, !psr.id !1516
  %15 = zext i8 %14 to i32, !dbg !1514, !psr.id !1517
  %16 = or i32 0, %15, !dbg !1518, !psr.id !1519
  call void @llvm.dbg.value(metadata i32 %16, metadata !1495, metadata !DIExpression()), !dbg !1481, !psr.id !1520
  %17 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1521, !psr.id !1522
  %18 = load i8, i8* %17, align 1, !dbg !1521, !psr.id !1523
  %19 = zext i8 %18 to i32, !dbg !1521, !psr.id !1524
  %20 = xor i32 %19, 2, !dbg !1525, !psr.id !1526
  %21 = or i32 %16, %20, !dbg !1527, !psr.id !1528
  call void @llvm.dbg.value(metadata i32 %21, metadata !1495, metadata !DIExpression()), !dbg !1481, !psr.id !1529
  call void @llvm.dbg.value(metadata i64 2, metadata !1530, metadata !DIExpression()), !dbg !1481, !psr.id !1531
  br label %22, !dbg !1532, !psr.id !1534

22:                                               ; preds = %50, %11
  %.02 = phi i64 [ 2, %11 ], [ %51, %50 ], !dbg !1535, !psr.id !1536
  %.01 = phi i64 [ 0, %11 ], [ %49, %50 ], !dbg !1481, !psr.id !1537
  %.0 = phi i8 [ 0, %11 ], [ %39, %50 ], !dbg !1481, !psr.id !1538
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1497, metadata !DIExpression()), !dbg !1481, !psr.id !1539
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1493, metadata !DIExpression()), !dbg !1481, !psr.id !1540
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1530, metadata !DIExpression()), !dbg !1481, !psr.id !1541
  %23 = icmp ult i64 %.02, %1, !dbg !1542, !psr.id !1544
  br i1 %23, label %24, label %52, !dbg !1545, !psr.id !1546

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, i8* %0, i64 %.02, !dbg !1547, !psr.id !1549
  %26 = load i8, i8* %25, align 1, !dbg !1547, !psr.id !1550
  %27 = zext i8 %26 to i32, !dbg !1547, !psr.id !1551
  %28 = getelementptr inbounds i8, i8* %0, i64 %.02, !dbg !1552, !psr.id !1553
  %29 = load i8, i8* %28, align 1, !dbg !1552, !psr.id !1554
  %30 = zext i8 %29 to i32, !dbg !1552, !psr.id !1555
  %31 = sub nsw i32 0, %30, !dbg !1556, !psr.id !1557
  %32 = trunc i32 %31 to i8, !dbg !1558, !psr.id !1559
  %33 = zext i8 %32 to i32, !dbg !1558, !psr.id !1560
  %34 = or i32 %27, %33, !dbg !1561, !psr.id !1562
  %35 = ashr i32 %34, 7, !dbg !1563, !psr.id !1564
  %36 = xor i32 %35, 1, !dbg !1565, !psr.id !1566
  %37 = zext i8 %.0 to i32, !dbg !1567, !psr.id !1568
  %38 = or i32 %37, %36, !dbg !1567, !psr.id !1569
  %39 = trunc i32 %38 to i8, !dbg !1567, !psr.id !1570
  call void @llvm.dbg.value(metadata i8 %39, metadata !1497, metadata !DIExpression()), !dbg !1481, !psr.id !1571
  %40 = zext i8 %39 to i32, !dbg !1572, !psr.id !1573
  %41 = zext i8 %39 to i32, !dbg !1574, !psr.id !1575
  %42 = sub nsw i32 0, %41, !dbg !1576, !psr.id !1577
  %43 = trunc i32 %42 to i8, !dbg !1578, !psr.id !1579
  %44 = zext i8 %43 to i32, !dbg !1578, !psr.id !1580
  %45 = or i32 %40, %44, !dbg !1581, !psr.id !1582
  %46 = ashr i32 %45, 7, !dbg !1583, !psr.id !1584
  %47 = xor i32 %46, 1, !dbg !1585, !psr.id !1586
  %48 = sext i32 %47 to i64, !dbg !1587, !psr.id !1588
  %49 = add i64 %.01, %48, !dbg !1589, !psr.id !1590
  call void @llvm.dbg.value(metadata i64 %49, metadata !1493, metadata !DIExpression()), !dbg !1481, !psr.id !1591
  br label %50, !dbg !1592, !psr.id !1593

50:                                               ; preds = %24
  %51 = add i64 %.02, 1, !dbg !1594, !psr.id !1595
  call void @llvm.dbg.value(metadata i64 %51, metadata !1530, metadata !DIExpression()), !dbg !1481, !psr.id !1596
  br label %22, !dbg !1597, !llvm.loop !1598, !psr.id !1600

52:                                               ; preds = %22
  %53 = zext i8 %.0 to i32, !dbg !1601, !psr.id !1602
  %54 = call i32 @mbedtls_ct_uint_if(i32 %53, i32 0, i32 1), !dbg !1603, !psr.id !1604
  %55 = or i32 %21, %54, !dbg !1605, !psr.id !1606
  call void @llvm.dbg.value(metadata i32 %55, metadata !1495, metadata !DIExpression()), !dbg !1481, !psr.id !1607
  %56 = call i32 @mbedtls_ct_size_gt(i64 8, i64 %.01), !dbg !1608, !psr.id !1609
  %57 = or i32 %55, %56, !dbg !1610, !psr.id !1611
  call void @llvm.dbg.value(metadata i32 %57, metadata !1495, metadata !DIExpression()), !dbg !1481, !psr.id !1612
  %58 = trunc i64 %12 to i32, !dbg !1613, !psr.id !1614
  %59 = sub i64 %1, %.01, !dbg !1615, !psr.id !1616
  %60 = sub i64 %59, 3, !dbg !1617, !psr.id !1618
  %61 = trunc i64 %60 to i32, !dbg !1619, !psr.id !1620
  %62 = call i32 @mbedtls_ct_uint_if(i32 %57, i32 %58, i32 %61), !dbg !1621, !psr.id !1622
  %63 = zext i32 %62 to i64, !dbg !1621, !psr.id !1623
  call void @llvm.dbg.value(metadata i64 %63, metadata !1499, metadata !DIExpression()), !dbg !1481, !psr.id !1624
  %64 = call i32 @mbedtls_ct_size_gt(i64 %63, i64 %12), !dbg !1625, !psr.id !1626
  call void @llvm.dbg.value(metadata i32 %64, metadata !1627, metadata !DIExpression()), !dbg !1481, !psr.id !1628
  %65 = call i32 @mbedtls_ct_uint_if(i32 %64, i32 17408, i32 0), !dbg !1629, !psr.id !1630
  %66 = call i32 @mbedtls_ct_uint_if(i32 %57, i32 16640, i32 %65), !dbg !1631, !psr.id !1632
  %67 = sub nsw i32 0, %66, !dbg !1633, !psr.id !1634
  call void @llvm.dbg.value(metadata i32 %67, metadata !1491, metadata !DIExpression()), !dbg !1481, !psr.id !1635
  %68 = or i32 %57, %64, !dbg !1636, !psr.id !1637
  %69 = call i32 @mbedtls_ct_uint_mask(i32 %68), !dbg !1638, !psr.id !1639
  call void @llvm.dbg.value(metadata i32 %69, metadata !1495, metadata !DIExpression()), !dbg !1481, !psr.id !1640
  call void @llvm.dbg.value(metadata i64 11, metadata !1530, metadata !DIExpression()), !dbg !1481, !psr.id !1641
  br label %70, !dbg !1642, !psr.id !1644

70:                                               ; preds = %79, %52
  %.1 = phi i64 [ 11, %52 ], [ %80, %79 ], !dbg !1645, !psr.id !1646
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1530, metadata !DIExpression()), !dbg !1481, !psr.id !1647
  %71 = icmp ult i64 %.1, %1, !dbg !1648, !psr.id !1650
  br i1 %71, label %72, label %81, !dbg !1651, !psr.id !1652

72:                                               ; preds = %70
  %73 = xor i32 %69, -1, !dbg !1653, !psr.id !1654
  %74 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !1655, !psr.id !1656
  %75 = load i8, i8* %74, align 1, !dbg !1657, !psr.id !1658
  %76 = zext i8 %75 to i32, !dbg !1657, !psr.id !1659
  %77 = and i32 %76, %73, !dbg !1657, !psr.id !1660
  %78 = trunc i32 %77 to i8, !dbg !1657, !psr.id !1661
  store i8 %78, i8* %74, align 1, !dbg !1657, !psr.id !1662
  br label %79, !dbg !1655, !psr.id !1663

79:                                               ; preds = %72
  %80 = add i64 %.1, 1, !dbg !1664, !psr.id !1665
  call void @llvm.dbg.value(metadata i64 %80, metadata !1530, metadata !DIExpression()), !dbg !1481, !psr.id !1666
  br label %70, !dbg !1667, !llvm.loop !1668, !psr.id !1670

81:                                               ; preds = %70
  %82 = trunc i64 %12 to i32, !dbg !1671, !psr.id !1672
  %83 = trunc i64 %63 to i32, !dbg !1673, !psr.id !1674
  %84 = call i32 @mbedtls_ct_uint_if(i32 %64, i32 %82, i32 %83), !dbg !1675, !psr.id !1676
  %85 = zext i32 %84 to i64, !dbg !1675, !psr.id !1677
  call void @llvm.dbg.value(metadata i64 %85, metadata !1499, metadata !DIExpression()), !dbg !1481, !psr.id !1678
  %86 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !1679, !psr.id !1680
  %87 = sub i64 0, %12, !dbg !1681, !psr.id !1682
  %88 = getelementptr inbounds i8, i8* %86, i64 %87, !dbg !1681, !psr.id !1683
  %89 = sub i64 %12, %85, !dbg !1684, !psr.id !1685
  call void @mbedtls_ct_mem_move_to_left(i8* %88, i64 %12, i64 %89), !dbg !1686, !psr.id !1687
  %90 = icmp ne i64 %3, 0, !dbg !1688, !psr.id !1690
  br i1 %90, label %91, label %95, !dbg !1691, !psr.id !1692

91:                                               ; preds = %81
  %92 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !1693, !psr.id !1694
  %93 = sub i64 0, %12, !dbg !1695, !psr.id !1696
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !1695, !psr.id !1697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %94, i64 %12, i1 false), !dbg !1698, !psr.id !1699
  br label %95, !dbg !1698, !psr.id !1700

95:                                               ; preds = %91, %81
  store i64 %85, i64* %4, align 8, !dbg !1701, !psr.id !1702
  ret i32 %67, !dbg !1703, !psr.id !1704
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mbedtls_ct_size_gt(i64 %0, i64 %1) #0 !dbg !1705 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1706, metadata !DIExpression()), !dbg !1707, !psr.id !1708
  call void @llvm.dbg.value(metadata i64 %1, metadata !1709, metadata !DIExpression()), !dbg !1707, !psr.id !1710
  %3 = sub i64 %1, %0, !dbg !1711, !psr.id !1712
  %4 = lshr i64 %3, 63, !dbg !1713, !psr.id !1714
  %5 = trunc i64 %4 to i32, !dbg !1715, !psr.id !1716
  ret i32 %5, !dbg !1717, !psr.id !1718
}

; Function Attrs: noinline nounwind uwtable
define internal void @mbedtls_ct_mem_move_to_left(i8* %0, i64 %1, i64 %2) #0 !dbg !1719 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1722, metadata !DIExpression()), !dbg !1723, !psr.id !1724
  call void @llvm.dbg.value(metadata i64 %1, metadata !1725, metadata !DIExpression()), !dbg !1723, !psr.id !1726
  call void @llvm.dbg.value(metadata i64 %2, metadata !1727, metadata !DIExpression()), !dbg !1723, !psr.id !1728
  call void @llvm.dbg.value(metadata i8* %0, metadata !1729, metadata !DIExpression()), !dbg !1723, !psr.id !1731
  %4 = icmp eq i64 %1, 0, !dbg !1732, !psr.id !1734
  br i1 %4, label %5, label %6, !dbg !1735, !psr.id !1736

5:                                                ; preds = %3
  br label %39, !dbg !1737, !psr.id !1738

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 0, metadata !1739, metadata !DIExpression()), !dbg !1723, !psr.id !1740
  br label %7, !dbg !1741, !psr.id !1743

7:                                                ; preds = %37, %6
  %.01 = phi i64 [ 0, %6 ], [ %38, %37 ], !dbg !1744, !psr.id !1745
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1739, metadata !DIExpression()), !dbg !1723, !psr.id !1746
  %8 = icmp ult i64 %.01, %1, !dbg !1747, !psr.id !1749
  br i1 %8, label %9, label %39, !dbg !1750, !psr.id !1751

9:                                                ; preds = %7
  %10 = sub i64 %1, %2, !dbg !1752, !psr.id !1754
  %11 = call i32 @mbedtls_ct_size_gt(i64 %10, i64 %.01), !dbg !1755, !psr.id !1756
  call void @llvm.dbg.value(metadata i32 %11, metadata !1757, metadata !DIExpression()), !dbg !1758, !psr.id !1759
  call void @llvm.dbg.value(metadata i64 0, metadata !1760, metadata !DIExpression()), !dbg !1723, !psr.id !1761
  br label %12, !dbg !1762, !psr.id !1764

12:                                               ; preds = %26, %9
  %.0 = phi i64 [ 0, %9 ], [ %27, %26 ], !dbg !1765, !psr.id !1766
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1760, metadata !DIExpression()), !dbg !1723, !psr.id !1767
  %13 = sub i64 %1, 1, !dbg !1768, !psr.id !1770
  %14 = icmp ult i64 %.0, %13, !dbg !1771, !psr.id !1772
  br i1 %14, label %15, label %28, !dbg !1773, !psr.id !1774

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1775, !psr.id !1777
  %17 = load volatile i8, i8* %16, align 1, !dbg !1775, !psr.id !1778
  call void @llvm.dbg.value(metadata i8 %17, metadata !1779, metadata !DIExpression()), !dbg !1780, !psr.id !1781
  %18 = add i64 %.0, 1, !dbg !1782, !psr.id !1783
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !1784, !psr.id !1785
  %20 = load volatile i8, i8* %19, align 1, !dbg !1784, !psr.id !1786
  call void @llvm.dbg.value(metadata i8 %20, metadata !1787, metadata !DIExpression()), !dbg !1780, !psr.id !1788
  %21 = zext i8 %17 to i32, !dbg !1789, !psr.id !1790
  %22 = zext i8 %20 to i32, !dbg !1791, !psr.id !1792
  %23 = call i32 @mbedtls_ct_uint_if(i32 %11, i32 %21, i32 %22), !dbg !1793, !psr.id !1794
  %24 = trunc i32 %23 to i8, !dbg !1793, !psr.id !1795
  %25 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1796, !psr.id !1797
  store volatile i8 %24, i8* %25, align 1, !dbg !1798, !psr.id !1799
  br label %26, !dbg !1800, !psr.id !1801

26:                                               ; preds = %15
  %27 = add i64 %.0, 1, !dbg !1802, !psr.id !1803
  call void @llvm.dbg.value(metadata i64 %27, metadata !1760, metadata !DIExpression()), !dbg !1723, !psr.id !1804
  br label %12, !dbg !1805, !llvm.loop !1806, !psr.id !1808

28:                                               ; preds = %12
  %29 = sub i64 %1, 1, !dbg !1809, !psr.id !1810
  %30 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !1811, !psr.id !1812
  %31 = load volatile i8, i8* %30, align 1, !dbg !1811, !psr.id !1813
  %32 = zext i8 %31 to i32, !dbg !1811, !psr.id !1814
  %33 = call i32 @mbedtls_ct_uint_if(i32 %11, i32 %32, i32 0), !dbg !1815, !psr.id !1816
  %34 = trunc i32 %33 to i8, !dbg !1815, !psr.id !1817
  %35 = sub i64 %1, 1, !dbg !1818, !psr.id !1819
  %36 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !1820, !psr.id !1821
  store volatile i8 %34, i8* %36, align 1, !dbg !1822, !psr.id !1823
  br label %37, !dbg !1824, !psr.id !1825

37:                                               ; preds = %28
  %38 = add i64 %.01, 1, !dbg !1826, !psr.id !1827
  call void @llvm.dbg.value(metadata i64 %38, metadata !1739, metadata !DIExpression()), !dbg !1723, !psr.id !1828
  br label %7, !dbg !1829, !llvm.loop !1830, !psr.id !1832

39:                                               ; preds = %7, %5
  ret void, !dbg !1833, !psr.id !1834
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_mpi_core_lt_ct_wrapper(i64* %0, i64* %1, i64 %2) #0 !dbg !1835 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1838, metadata !DIExpression()), !dbg !1839, !psr.id !1840
  call void @llvm.dbg.value(metadata i64* %1, metadata !1841, metadata !DIExpression()), !dbg !1839, !psr.id !1842
  call void @llvm.dbg.value(metadata i64 %2, metadata !1843, metadata !DIExpression()), !dbg !1839, !psr.id !1844
  %4 = call %struct.smack_value* (i64*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64*, ...)*)(i64* %0), !dbg !1845, !psr.id !1846
  call void @public_in(%struct.smack_value* %4), !dbg !1847, !psr.id !1848
  %5 = call %struct.smack_value* (i64*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64*, ...)*)(i64* %1), !dbg !1849, !psr.id !1850
  call void @public_in(%struct.smack_value* %5), !dbg !1851, !psr.id !1852
  %6 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !1853, !psr.id !1854
  call void @public_in(%struct.smack_value* %6), !dbg !1855, !psr.id !1856
  %7 = call i32 @mbedtls_mpi_core_lt_ct(i64* %0, i64* %1, i64 %2), !dbg !1857, !psr.id !1858
  ret void, !dbg !1859, !psr.id !1860
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_mpi_core_lt_ct_wrapper_t() #0 !dbg !1861 {
  %1 = call i64* (...) @getA(), !dbg !1864, !psr.id !1865
  call void @llvm.dbg.value(metadata i64* %1, metadata !1866, metadata !DIExpression()), !dbg !1867, !psr.id !1868
  %2 = call i64* (...) @getB(), !dbg !1869, !psr.id !1870
  call void @llvm.dbg.value(metadata i64* %2, metadata !1871, metadata !DIExpression()), !dbg !1867, !psr.id !1872
  %3 = call i64 (...) @getz(), !dbg !1873, !psr.id !1874
  call void @llvm.dbg.value(metadata i64 %3, metadata !1875, metadata !DIExpression()), !dbg !1867, !psr.id !1876
  %4 = call i32 @mbedtls_mpi_core_lt_ct(i64* %1, i64* %2, i64 %3), !dbg !1877, !psr.id !1878
  ret void, !dbg !1879, !psr.id !1880
}

declare dso_local i64* @getA(...) #2

declare dso_local i64* @getB(...) #2

declare dso_local i64 @getz(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @mbedtls_mpi_core_lt_ct_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0, !24}
!llvm.ident = !{!27, !27}
!llvm.module.flags = !{!28, !29, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../mbedtls/library/constant_time.c", directory: "/home/luwei/bech-back/Mbed-tls/constant2")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 55, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../mbedtls/include/mbedtls/md.h", directory: "/home/luwei/bech-back/Mbed-tls/constant2")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14}
!7 = !DIEnumerator(name: "MBEDTLS_MD_NONE", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MBEDTLS_MD_MD5", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MBEDTLS_MD_SHA1", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MBEDTLS_MD_SHA224", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "MBEDTLS_MD_SHA256", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "MBEDTLS_MD_SHA384", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "MBEDTLS_MD_SHA512", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "MBEDTLS_MD_RIPEMD160", value: 7, isUnsigned: true)
!15 = !{!16, !20, !21, !5, !19}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 46, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !26, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "mbedtls_mpi_core_lt_ct.c", directory: "/home/luwei/bech-back/Mbed-tls/constant2")
!26 = !{}
!27 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = distinct !DISubprogram(name: "mbedtls_ct_memcmp", scope: !1, file: !1, line: 50, type: !32, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!32 = !DISubroutineType(types: !33)
!33 = !{!20, !34, !34, !21}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!36 = !{!"0"}
!37 = !DILocalVariable(name: "a", arg: 1, scope: !31, file: !1, line: 50, type: !34)
!38 = !DILocation(line: 0, scope: !31)
!39 = !{!"1"}
!40 = !DILocalVariable(name: "b", arg: 2, scope: !31, file: !1, line: 51, type: !34)
!41 = !{!"2"}
!42 = !DILocalVariable(name: "n", arg: 3, scope: !31, file: !1, line: 52, type: !21)
!43 = !{!"3"}
!44 = !DILocalVariable(name: "A", scope: !31, file: !1, line: 55, type: !16)
!45 = !{!"4"}
!46 = !DILocalVariable(name: "B", scope: !31, file: !1, line: 56, type: !16)
!47 = !{!"5"}
!48 = !DILocalVariable(name: "diff", scope: !31, file: !1, line: 57, type: !18)
!49 = !DILocation(line: 57, column: 28, scope: !31)
!50 = !{!"6"}
!51 = !{!"7"}
!52 = !DILocalVariable(name: "i", scope: !31, file: !1, line: 54, type: !21)
!53 = !{!"8"}
!54 = !DILocation(line: 59, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !31, file: !1, line: 59, column: 5)
!56 = !{!"9"}
!57 = !DILocation(line: 0, scope: !55)
!58 = !{!"10"}
!59 = !{!"11"}
!60 = !DILocation(line: 59, column: 19, scope: !61)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 59, column: 5)
!62 = !{!"12"}
!63 = !DILocation(line: 59, column: 5, scope: !55)
!64 = !{!"13"}
!65 = !DILocation(line: 64, column: 27, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !1, line: 60, column: 5)
!67 = !{!"14"}
!68 = !{!"15"}
!69 = !DILocalVariable(name: "x", scope: !66, file: !1, line: 64, type: !19)
!70 = !DILocation(line: 0, scope: !66)
!71 = !{!"16"}
!72 = !DILocation(line: 64, column: 37, scope: !66)
!73 = !{!"17"}
!74 = !{!"18"}
!75 = !DILocalVariable(name: "y", scope: !66, file: !1, line: 64, type: !19)
!76 = !{!"19"}
!77 = !DILocation(line: 65, column: 17, scope: !66)
!78 = !{!"20"}
!79 = !DILocation(line: 65, column: 21, scope: !66)
!80 = !{!"21"}
!81 = !DILocation(line: 65, column: 19, scope: !66)
!82 = !{!"22"}
!83 = !DILocation(line: 65, column: 14, scope: !66)
!84 = !{!"23"}
!85 = !{!"24"}
!86 = !{!"25"}
!87 = !{!"26"}
!88 = !{!"27"}
!89 = !DILocation(line: 66, column: 5, scope: !66)
!90 = !{!"28"}
!91 = !DILocation(line: 59, column: 25, scope: !61)
!92 = !{!"29"}
!93 = !{!"30"}
!94 = !DILocation(line: 59, column: 5, scope: !61)
!95 = distinct !{!95, !63, !96, !97}
!96 = !DILocation(line: 66, column: 5, scope: !55)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"31"}
!99 = !DILocation(line: 68, column: 18, scope: !31)
!100 = !{!"32"}
!101 = !DILocation(line: 68, column: 13, scope: !31)
!102 = !{!"33"}
!103 = !DILocation(line: 68, column: 5, scope: !31)
!104 = !{!"34"}
!105 = distinct !DISubprogram(name: "mbedtls_ct_uint_mask", scope: !1, file: !1, line: 71, type: !106, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!106 = !DISubroutineType(types: !107)
!107 = !{!5, !5}
!108 = !DILocalVariable(name: "value", arg: 1, scope: !105, file: !1, line: 71, type: !5)
!109 = !DILocation(line: 0, scope: !105)
!110 = !{!"35"}
!111 = !DILocation(line: 79, column: 27, scope: !105)
!112 = !{!"36"}
!113 = !DILocation(line: 79, column: 25, scope: !105)
!114 = !{!"37"}
!115 = !DILocation(line: 79, column: 37, scope: !105)
!116 = !{!"38"}
!117 = !DILocation(line: 79, column: 13, scope: !105)
!118 = !{!"39"}
!119 = !DILocation(line: 79, column: 5, scope: !105)
!120 = !{!"40"}
!121 = distinct !DISubprogram(name: "mbedtls_ct_size_mask", scope: !1, file: !1, line: 87, type: !122, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!122 = !DISubroutineType(types: !123)
!123 = !{!21, !21}
!124 = !DILocalVariable(name: "value", arg: 1, scope: !121, file: !1, line: 87, type: !21)
!125 = !DILocation(line: 0, scope: !121)
!126 = !{!"41"}
!127 = !DILocation(line: 95, column: 27, scope: !121)
!128 = !{!"42"}
!129 = !DILocation(line: 95, column: 25, scope: !121)
!130 = !{!"43"}
!131 = !DILocation(line: 95, column: 37, scope: !121)
!132 = !{!"44"}
!133 = !DILocation(line: 95, column: 13, scope: !121)
!134 = !{!"45"}
!135 = !DILocation(line: 95, column: 5, scope: !121)
!136 = !{!"46"}
!137 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_mask", scope: !1, file: !1, line: 105, type: !138, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!138 = !DISubroutineType(types: !139)
!139 = !{!140, !140}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_mpi_uint", file: !141, line: 141, baseType: !142)
!141 = !DIFile(filename: "../mbedtls/include/mbedtls/bignum.h", directory: "/home/luwei/bech-back/Mbed-tls/constant2")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !143, line: 27, baseType: !144)
!143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !145, line: 45, baseType: !23)
!145 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!146 = !DILocalVariable(name: "value", arg: 1, scope: !137, file: !1, line: 105, type: !140)
!147 = !DILocation(line: 0, scope: !137)
!148 = !{!"47"}
!149 = !DILocation(line: 113, column: 27, scope: !137)
!150 = !{!"48"}
!151 = !DILocation(line: 113, column: 25, scope: !137)
!152 = !{!"49"}
!153 = !DILocation(line: 113, column: 37, scope: !137)
!154 = !{!"50"}
!155 = !DILocation(line: 113, column: 13, scope: !137)
!156 = !{!"51"}
!157 = !DILocation(line: 113, column: 5, scope: !137)
!158 = !{!"52"}
!159 = distinct !DISubprogram(name: "mbedtls_ct_size_mask_ge", scope: !1, file: !1, line: 150, type: !160, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!160 = !DISubroutineType(types: !161)
!161 = !{!21, !21, !21}
!162 = !DILocalVariable(name: "x", arg: 1, scope: !159, file: !1, line: 150, type: !21)
!163 = !DILocation(line: 0, scope: !159)
!164 = !{!"53"}
!165 = !DILocalVariable(name: "y", arg: 2, scope: !159, file: !1, line: 151, type: !21)
!166 = !{!"54"}
!167 = !DILocation(line: 153, column: 14, scope: !159)
!168 = !{!"55"}
!169 = !DILocation(line: 153, column: 13, scope: !159)
!170 = !{!"56"}
!171 = !DILocation(line: 153, column: 5, scope: !159)
!172 = !{!"57"}
!173 = distinct !DISubprogram(name: "mbedtls_ct_size_mask_lt", scope: !1, file: !1, line: 135, type: !160, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!174 = !DILocalVariable(name: "x", arg: 1, scope: !173, file: !1, line: 135, type: !21)
!175 = !DILocation(line: 0, scope: !173)
!176 = !{!"58"}
!177 = !DILocalVariable(name: "y", arg: 2, scope: !173, file: !1, line: 136, type: !21)
!178 = !{!"59"}
!179 = !DILocation(line: 139, column: 26, scope: !173)
!180 = !{!"60"}
!181 = !DILocalVariable(name: "sub", scope: !173, file: !1, line: 139, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!183 = !{!"61"}
!184 = !DILocation(line: 142, column: 29, scope: !173)
!185 = !{!"62"}
!186 = !DILocalVariable(name: "sub1", scope: !173, file: !1, line: 142, type: !182)
!187 = !{!"63"}
!188 = !DILocation(line: 145, column: 25, scope: !173)
!189 = !{!"64"}
!190 = !DILocalVariable(name: "mask", scope: !173, file: !1, line: 145, type: !182)
!191 = !{!"65"}
!192 = !DILocation(line: 147, column: 5, scope: !173)
!193 = !{!"66"}
!194 = distinct !DISubprogram(name: "mbedtls_ct_size_bool_eq", scope: !1, file: !1, line: 178, type: !195, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!195 = !DISubroutineType(types: !196)
!196 = !{!5, !21, !21}
!197 = !DILocalVariable(name: "x", arg: 1, scope: !194, file: !1, line: 178, type: !21)
!198 = !DILocation(line: 0, scope: !194)
!199 = !{!"67"}
!200 = !DILocalVariable(name: "y", arg: 2, scope: !194, file: !1, line: 179, type: !21)
!201 = !{!"68"}
!202 = !DILocation(line: 182, column: 27, scope: !194)
!203 = !{!"69"}
!204 = !DILocalVariable(name: "diff", scope: !194, file: !1, line: 182, type: !182)
!205 = !{!"70"}
!206 = !DILocation(line: 192, column: 47, scope: !194)
!207 = !{!"71"}
!208 = !DILocation(line: 192, column: 36, scope: !194)
!209 = !{!"72"}
!210 = !DILocalVariable(name: "diff_msb", scope: !194, file: !1, line: 192, type: !182)
!211 = !{!"73"}
!212 = !DILocation(line: 199, column: 37, scope: !194)
!213 = !{!"74"}
!214 = !DILocation(line: 199, column: 28, scope: !194)
!215 = !{!"75"}
!216 = !DILocalVariable(name: "diff1", scope: !194, file: !1, line: 199, type: !217)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!218 = !{!"76"}
!219 = !DILocation(line: 201, column: 15, scope: !194)
!220 = !{!"77"}
!221 = !DILocation(line: 201, column: 5, scope: !194)
!222 = !{!"78"}
!223 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_lt", scope: !1, file: !1, line: 228, type: !224, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!224 = !DISubroutineType(types: !225)
!225 = !{!5, !226, !226}
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!227 = !DILocalVariable(name: "x", arg: 1, scope: !223, file: !1, line: 228, type: !226)
!228 = !DILocation(line: 0, scope: !223)
!229 = !{!"79"}
!230 = !DILocalVariable(name: "y", arg: 2, scope: !223, file: !1, line: 229, type: !226)
!231 = !{!"80"}
!232 = !DILocation(line: 237, column: 16, scope: !223)
!233 = !{!"81"}
!234 = !{!"ValueTainted"}
!235 = !DILocalVariable(name: "cond", scope: !223, file: !1, line: 232, type: !140)
!236 = !{!"82"}
!237 = !DILocation(line: 242, column: 15, scope: !223)
!238 = !{!"83"}
!239 = !DILocation(line: 242, column: 23, scope: !223)
!240 = !{!"84"}
!241 = !DILocation(line: 242, column: 21, scope: !223)
!242 = !{!"85"}
!243 = !DILocalVariable(name: "ret", scope: !223, file: !1, line: 231, type: !140)
!244 = !{!"86"}
!245 = !DILocation(line: 248, column: 14, scope: !223)
!246 = !{!"87"}
!247 = !DILocation(line: 248, column: 9, scope: !223)
!248 = !{!"88"}
!249 = !{!"89"}
!250 = !DILocation(line: 251, column: 15, scope: !223)
!251 = !{!"90"}
!252 = !{!"91"}
!253 = !DILocation(line: 253, column: 12, scope: !223)
!254 = !{!"92"}
!255 = !DILocation(line: 253, column: 5, scope: !223)
!256 = !{!"93"}
!257 = distinct !DISubprogram(name: "mbedtls_ct_uint_if", scope: !1, file: !1, line: 258, type: !258, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!258 = !DISubroutineType(types: !259)
!259 = !{!5, !5, !5, !5}
!260 = !DILocalVariable(name: "condition", arg: 1, scope: !257, file: !1, line: 258, type: !5)
!261 = !DILocation(line: 0, scope: !257)
!262 = !{!"94"}
!263 = !DILocalVariable(name: "if1", arg: 2, scope: !257, file: !1, line: 259, type: !5)
!264 = !{!"95"}
!265 = !DILocalVariable(name: "if0", arg: 3, scope: !257, file: !1, line: 260, type: !5)
!266 = !{!"96"}
!267 = !DILocation(line: 262, column: 21, scope: !257)
!268 = !{!"97"}
!269 = !DILocalVariable(name: "mask", scope: !257, file: !1, line: 262, type: !5)
!270 = !{!"98"}
!271 = !DILocation(line: 263, column: 20, scope: !257)
!272 = !{!"99"}
!273 = !DILocation(line: 263, column: 31, scope: !257)
!274 = !{!"100"}
!275 = !DILocation(line: 263, column: 37, scope: !257)
!276 = !{!"101"}
!277 = !DILocation(line: 263, column: 28, scope: !257)
!278 = !{!"102"}
!279 = !DILocation(line: 263, column: 5, scope: !257)
!280 = !{!"103"}
!281 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_cond_assign", scope: !1, file: !1, line: 302, type: !282, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !21, !284, !285, !19}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!286 = !DILocalVariable(name: "n", arg: 1, scope: !281, file: !1, line: 302, type: !21)
!287 = !DILocation(line: 0, scope: !281)
!288 = !{!"104"}
!289 = !DILocalVariable(name: "dest", arg: 2, scope: !281, file: !1, line: 303, type: !284)
!290 = !{!"105"}
!291 = !DILocalVariable(name: "src", arg: 3, scope: !281, file: !1, line: 304, type: !285)
!292 = !{!"106"}
!293 = !DILocalVariable(name: "condition", arg: 4, scope: !281, file: !1, line: 305, type: !19)
!294 = !{!"107"}
!295 = !DILocation(line: 317, column: 36, scope: !281)
!296 = !{!"108"}
!297 = !DILocation(line: 317, column: 35, scope: !281)
!298 = !{!"109"}
!299 = !{!"110"}
!300 = !DILocalVariable(name: "mask", scope: !281, file: !1, line: 317, type: !226)
!301 = !{!"111"}
!302 = !DILocalVariable(name: "i", scope: !281, file: !1, line: 307, type: !21)
!303 = !{!"112"}
!304 = !DILocation(line: 323, column: 10, scope: !305)
!305 = distinct !DILexicalBlock(scope: !281, file: !1, line: 323, column: 5)
!306 = !{!"113"}
!307 = !DILocation(line: 0, scope: !305)
!308 = !{!"114"}
!309 = !{!"115"}
!310 = !DILocation(line: 323, column: 19, scope: !311)
!311 = distinct !DILexicalBlock(scope: !305, file: !1, line: 323, column: 5)
!312 = !{!"116"}
!313 = !DILocation(line: 323, column: 5, scope: !305)
!314 = !{!"117"}
!315 = !DILocation(line: 324, column: 21, scope: !311)
!316 = !{!"118"}
!317 = !{!"119"}
!318 = !DILocation(line: 324, column: 28, scope: !311)
!319 = !{!"120"}
!320 = !DILocation(line: 324, column: 41, scope: !311)
!321 = !{!"121"}
!322 = !{!"122"}
!323 = !DILocation(line: 324, column: 51, scope: !311)
!324 = !{!"123"}
!325 = !DILocation(line: 324, column: 49, scope: !311)
!326 = !{!"124"}
!327 = !DILocation(line: 324, column: 37, scope: !311)
!328 = !{!"125"}
!329 = !DILocation(line: 324, column: 9, scope: !311)
!330 = !{!"126"}
!331 = !DILocation(line: 324, column: 17, scope: !311)
!332 = !{!"127"}
!333 = !{!"128"}
!334 = !DILocation(line: 323, column: 25, scope: !311)
!335 = !{!"129"}
!336 = !{!"130"}
!337 = !DILocation(line: 323, column: 5, scope: !311)
!338 = distinct !{!338, !313, !339, !97}
!339 = !DILocation(line: 324, column: 57, scope: !305)
!340 = !{!"131"}
!341 = !DILocation(line: 325, column: 1, scope: !281)
!342 = !{!"132"}
!343 = distinct !DISubprogram(name: "mbedtls_ct_base64_enc_char", scope: !1, file: !1, line: 331, type: !344, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!344 = !DISubroutineType(types: !345)
!345 = !{!19, !19}
!346 = !DILocalVariable(name: "value", arg: 1, scope: !343, file: !1, line: 331, type: !19)
!347 = !DILocation(line: 0, scope: !343)
!348 = !{!"133"}
!349 = !DILocalVariable(name: "digit", scope: !343, file: !1, line: 333, type: !19)
!350 = !{!"134"}
!351 = !DILocation(line: 337, column: 14, scope: !343)
!352 = !{!"135"}
!353 = !{!"136"}
!354 = !DILocation(line: 337, column: 72, scope: !343)
!355 = !{!"137"}
!356 = !DILocation(line: 337, column: 70, scope: !343)
!357 = !{!"138"}
!358 = !DILocation(line: 337, column: 62, scope: !343)
!359 = !{!"139"}
!360 = !DILocation(line: 337, column: 11, scope: !343)
!361 = !{!"140"}
!362 = !{!"141"}
!363 = !{!"142"}
!364 = !{!"143"}
!365 = !DILocation(line: 338, column: 14, scope: !343)
!366 = !{!"144"}
!367 = !{!"145"}
!368 = !DILocation(line: 338, column: 72, scope: !343)
!369 = !{!"146"}
!370 = !DILocation(line: 338, column: 70, scope: !343)
!371 = !{!"147"}
!372 = !DILocation(line: 338, column: 78, scope: !343)
!373 = !{!"148"}
!374 = !DILocation(line: 338, column: 62, scope: !343)
!375 = !{!"149"}
!376 = !DILocation(line: 338, column: 11, scope: !343)
!377 = !{!"150"}
!378 = !{!"151"}
!379 = !{!"152"}
!380 = !{!"153"}
!381 = !DILocation(line: 339, column: 14, scope: !343)
!382 = !{!"154"}
!383 = !{!"155"}
!384 = !DILocation(line: 339, column: 72, scope: !343)
!385 = !{!"156"}
!386 = !DILocation(line: 339, column: 70, scope: !343)
!387 = !{!"157"}
!388 = !DILocation(line: 339, column: 78, scope: !343)
!389 = !{!"158"}
!390 = !DILocation(line: 339, column: 62, scope: !343)
!391 = !{!"159"}
!392 = !DILocation(line: 339, column: 11, scope: !343)
!393 = !{!"160"}
!394 = !{!"161"}
!395 = !{!"162"}
!396 = !{!"163"}
!397 = !DILocation(line: 340, column: 14, scope: !343)
!398 = !{!"164"}
!399 = !{!"165"}
!400 = !DILocation(line: 340, column: 62, scope: !343)
!401 = !{!"166"}
!402 = !DILocation(line: 340, column: 11, scope: !343)
!403 = !{!"167"}
!404 = !{!"168"}
!405 = !{!"169"}
!406 = !{!"170"}
!407 = !DILocation(line: 341, column: 14, scope: !343)
!408 = !{!"171"}
!409 = !{!"172"}
!410 = !DILocation(line: 341, column: 62, scope: !343)
!411 = !{!"173"}
!412 = !DILocation(line: 341, column: 11, scope: !343)
!413 = !{!"174"}
!414 = !{!"175"}
!415 = !{!"176"}
!416 = !{!"177"}
!417 = !DILocation(line: 342, column: 5, scope: !343)
!418 = !{!"178"}
!419 = distinct !DISubprogram(name: "mbedtls_ct_uchar_mask_of_range", scope: !1, file: !1, line: 165, type: !420, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!420 = !DISubroutineType(types: !421)
!421 = !{!19, !19, !19, !19}
!422 = !DILocalVariable(name: "low", arg: 1, scope: !419, file: !1, line: 165, type: !19)
!423 = !DILocation(line: 0, scope: !419)
!424 = !{!"179"}
!425 = !DILocalVariable(name: "high", arg: 2, scope: !419, file: !1, line: 166, type: !19)
!426 = !{!"180"}
!427 = !DILocalVariable(name: "c", arg: 3, scope: !419, file: !1, line: 167, type: !19)
!428 = !{!"181"}
!429 = !DILocation(line: 170, column: 27, scope: !419)
!430 = !{!"182"}
!431 = !DILocation(line: 170, column: 42, scope: !419)
!432 = !{!"183"}
!433 = !DILocation(line: 170, column: 40, scope: !419)
!434 = !{!"184"}
!435 = !DILocation(line: 170, column: 48, scope: !419)
!436 = !{!"185"}
!437 = !DILocalVariable(name: "low_mask", scope: !419, file: !1, line: 170, type: !5)
!438 = !{!"186"}
!439 = !DILocation(line: 172, column: 28, scope: !419)
!440 = !{!"187"}
!441 = !DILocation(line: 172, column: 46, scope: !419)
!442 = !{!"188"}
!443 = !DILocation(line: 172, column: 44, scope: !419)
!444 = !{!"189"}
!445 = !DILocation(line: 172, column: 50, scope: !419)
!446 = !{!"190"}
!447 = !DILocalVariable(name: "high_mask", scope: !419, file: !1, line: 172, type: !5)
!448 = !{!"191"}
!449 = !DILocation(line: 173, column: 25, scope: !419)
!450 = !{!"192"}
!451 = !DILocation(line: 173, column: 13, scope: !419)
!452 = !{!"193"}
!453 = !DILocation(line: 173, column: 39, scope: !419)
!454 = !{!"194"}
!455 = !DILocation(line: 173, column: 11, scope: !419)
!456 = !{!"195"}
!457 = !DILocation(line: 173, column: 5, scope: !419)
!458 = !{!"196"}
!459 = distinct !DISubprogram(name: "mbedtls_ct_base64_dec_value", scope: !1, file: !1, line: 345, type: !460, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!460 = !DISubroutineType(types: !461)
!461 = !{!462, !19}
!462 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!463 = !DILocalVariable(name: "c", arg: 1, scope: !459, file: !1, line: 345, type: !19)
!464 = !DILocation(line: 0, scope: !459)
!465 = !{!"197"}
!466 = !DILocalVariable(name: "val", scope: !459, file: !1, line: 347, type: !19)
!467 = !{!"198"}
!468 = !DILocation(line: 352, column: 12, scope: !459)
!469 = !{!"199"}
!470 = !{!"200"}
!471 = !DILocation(line: 352, column: 62, scope: !459)
!472 = !{!"201"}
!473 = !DILocation(line: 352, column: 64, scope: !459)
!474 = !{!"202"}
!475 = !DILocation(line: 352, column: 70, scope: !459)
!476 = !{!"203"}
!477 = !DILocation(line: 352, column: 75, scope: !459)
!478 = !{!"204"}
!479 = !DILocation(line: 352, column: 58, scope: !459)
!480 = !{!"205"}
!481 = !DILocation(line: 352, column: 9, scope: !459)
!482 = !{!"206"}
!483 = !{!"207"}
!484 = !{!"208"}
!485 = !{!"209"}
!486 = !DILocation(line: 353, column: 12, scope: !459)
!487 = !{!"210"}
!488 = !{!"211"}
!489 = !DILocation(line: 353, column: 62, scope: !459)
!490 = !{!"212"}
!491 = !DILocation(line: 353, column: 64, scope: !459)
!492 = !{!"213"}
!493 = !DILocation(line: 353, column: 70, scope: !459)
!494 = !{!"214"}
!495 = !DILocation(line: 353, column: 75, scope: !459)
!496 = !{!"215"}
!497 = !DILocation(line: 353, column: 58, scope: !459)
!498 = !{!"216"}
!499 = !DILocation(line: 353, column: 9, scope: !459)
!500 = !{!"217"}
!501 = !{!"218"}
!502 = !{!"219"}
!503 = !{!"220"}
!504 = !DILocation(line: 354, column: 12, scope: !459)
!505 = !{!"221"}
!506 = !{!"222"}
!507 = !DILocation(line: 354, column: 62, scope: !459)
!508 = !{!"223"}
!509 = !DILocation(line: 354, column: 64, scope: !459)
!510 = !{!"224"}
!511 = !DILocation(line: 354, column: 70, scope: !459)
!512 = !{!"225"}
!513 = !DILocation(line: 354, column: 75, scope: !459)
!514 = !{!"226"}
!515 = !DILocation(line: 354, column: 58, scope: !459)
!516 = !{!"227"}
!517 = !DILocation(line: 354, column: 9, scope: !459)
!518 = !{!"228"}
!519 = !{!"229"}
!520 = !{!"230"}
!521 = !{!"231"}
!522 = !DILocation(line: 355, column: 12, scope: !459)
!523 = !{!"232"}
!524 = !{!"233"}
!525 = !DILocation(line: 355, column: 62, scope: !459)
!526 = !{!"234"}
!527 = !DILocation(line: 355, column: 64, scope: !459)
!528 = !{!"235"}
!529 = !DILocation(line: 355, column: 70, scope: !459)
!530 = !{!"236"}
!531 = !DILocation(line: 355, column: 75, scope: !459)
!532 = !{!"237"}
!533 = !DILocation(line: 355, column: 58, scope: !459)
!534 = !{!"238"}
!535 = !DILocation(line: 355, column: 9, scope: !459)
!536 = !{!"239"}
!537 = !{!"240"}
!538 = !{!"241"}
!539 = !{!"242"}
!540 = !DILocation(line: 356, column: 12, scope: !459)
!541 = !{!"243"}
!542 = !{!"244"}
!543 = !DILocation(line: 356, column: 62, scope: !459)
!544 = !{!"245"}
!545 = !DILocation(line: 356, column: 64, scope: !459)
!546 = !{!"246"}
!547 = !DILocation(line: 356, column: 70, scope: !459)
!548 = !{!"247"}
!549 = !DILocation(line: 356, column: 75, scope: !459)
!550 = !{!"248"}
!551 = !DILocation(line: 356, column: 58, scope: !459)
!552 = !{!"249"}
!553 = !DILocation(line: 356, column: 9, scope: !459)
!554 = !{!"250"}
!555 = !{!"251"}
!556 = !{!"252"}
!557 = !{!"253"}
!558 = !DILocation(line: 359, column: 13, scope: !459)
!559 = !{!"254"}
!560 = !DILocation(line: 359, column: 17, scope: !459)
!561 = !{!"255"}
!562 = !DILocation(line: 359, column: 11, scope: !459)
!563 = !{!"256"}
!564 = !DILocation(line: 359, column: 5, scope: !459)
!565 = !{!"257"}
!566 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_if_eq", scope: !1, file: !1, line: 410, type: !567, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !569, !570, !21, !21, !21}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!572 = !DILocalVariable(name: "dest", arg: 1, scope: !566, file: !1, line: 410, type: !569)
!573 = !DILocation(line: 0, scope: !566)
!574 = !{!"258"}
!575 = !DILocalVariable(name: "src", arg: 2, scope: !566, file: !1, line: 411, type: !570)
!576 = !{!"259"}
!577 = !DILocalVariable(name: "len", arg: 3, scope: !566, file: !1, line: 412, type: !21)
!578 = !{!"260"}
!579 = !DILocalVariable(name: "c1", arg: 4, scope: !566, file: !1, line: 413, type: !21)
!580 = !{!"261"}
!581 = !DILocalVariable(name: "c2", arg: 5, scope: !566, file: !1, line: 414, type: !21)
!582 = !{!"262"}
!583 = !DILocation(line: 417, column: 26, scope: !566)
!584 = !{!"263"}
!585 = !{!"264"}
!586 = !DILocalVariable(name: "equal", scope: !566, file: !1, line: 417, type: !182)
!587 = !{!"265"}
!588 = !DILocation(line: 418, column: 48, scope: !566)
!589 = !{!"266"}
!590 = !DILocation(line: 418, column: 32, scope: !566)
!591 = !{!"267"}
!592 = !DILocalVariable(name: "mask", scope: !566, file: !1, line: 418, type: !571)
!593 = !{!"268"}
!594 = !DILocalVariable(name: "i", scope: !595, file: !1, line: 421, type: !21)
!595 = distinct !DILexicalBlock(scope: !566, file: !1, line: 421, column: 5)
!596 = !DILocation(line: 0, scope: !595)
!597 = !{!"269"}
!598 = !DILocation(line: 421, column: 10, scope: !595)
!599 = !{!"270"}
!600 = !{!"271"}
!601 = !{!"272"}
!602 = !DILocation(line: 421, column: 26, scope: !603)
!603 = distinct !DILexicalBlock(scope: !595, file: !1, line: 421, column: 5)
!604 = !{!"273"}
!605 = !DILocation(line: 421, column: 5, scope: !595)
!606 = !{!"274"}
!607 = !DILocation(line: 422, column: 21, scope: !603)
!608 = !{!"275"}
!609 = !{!"276"}
!610 = !{!"277"}
!611 = !DILocation(line: 422, column: 30, scope: !603)
!612 = !{!"278"}
!613 = !DILocation(line: 422, column: 28, scope: !603)
!614 = !{!"279"}
!615 = !DILocation(line: 422, column: 41, scope: !603)
!616 = !{!"280"}
!617 = !{!"281"}
!618 = !{!"282"}
!619 = !DILocation(line: 422, column: 52, scope: !603)
!620 = !{!"283"}
!621 = !DILocation(line: 422, column: 51, scope: !603)
!622 = !{!"284"}
!623 = !DILocation(line: 422, column: 49, scope: !603)
!624 = !{!"285"}
!625 = !DILocation(line: 422, column: 37, scope: !603)
!626 = !{!"286"}
!627 = !DILocation(line: 422, column: 19, scope: !603)
!628 = !{!"287"}
!629 = !DILocation(line: 422, column: 9, scope: !603)
!630 = !{!"288"}
!631 = !DILocation(line: 422, column: 17, scope: !603)
!632 = !{!"289"}
!633 = !{!"290"}
!634 = !DILocation(line: 421, column: 34, scope: !603)
!635 = !{!"291"}
!636 = !{!"292"}
!637 = !DILocation(line: 421, column: 5, scope: !603)
!638 = distinct !{!638, !605, !639, !97}
!639 = !DILocation(line: 422, column: 57, scope: !595)
!640 = !{!"293"}
!641 = !DILocation(line: 423, column: 1, scope: !566)
!642 = !{!"294"}
!643 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_offset", scope: !1, file: !1, line: 425, type: !644, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !569, !570, !21, !21, !21, !21}
!646 = !DILocalVariable(name: "dest", arg: 1, scope: !643, file: !1, line: 425, type: !569)
!647 = !DILocation(line: 0, scope: !643)
!648 = !{!"295"}
!649 = !DILocalVariable(name: "src", arg: 2, scope: !643, file: !1, line: 426, type: !570)
!650 = !{!"296"}
!651 = !DILocalVariable(name: "offset", arg: 3, scope: !643, file: !1, line: 427, type: !21)
!652 = !{!"297"}
!653 = !DILocalVariable(name: "offset_min", arg: 4, scope: !643, file: !1, line: 428, type: !21)
!654 = !{!"298"}
!655 = !DILocalVariable(name: "offset_max", arg: 5, scope: !643, file: !1, line: 429, type: !21)
!656 = !{!"299"}
!657 = !DILocalVariable(name: "len", arg: 6, scope: !643, file: !1, line: 430, type: !21)
!658 = !{!"300"}
!659 = !DILocalVariable(name: "offsetval", scope: !643, file: !1, line: 432, type: !21)
!660 = !{!"301"}
!661 = !DILocation(line: 434, column: 10, scope: !662)
!662 = distinct !DILexicalBlock(scope: !643, file: !1, line: 434, column: 5)
!663 = !{!"302"}
!664 = !DILocation(line: 0, scope: !662)
!665 = !{!"303"}
!666 = !{!"304"}
!667 = !DILocation(line: 434, column: 44, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !1, line: 434, column: 5)
!669 = !{!"305"}
!670 = !DILocation(line: 434, column: 5, scope: !662)
!671 = !{!"306"}
!672 = !DILocation(line: 436, column: 44, scope: !673)
!673 = distinct !DILexicalBlock(scope: !668, file: !1, line: 435, column: 5)
!674 = !{!"307"}
!675 = !DILocation(line: 436, column: 9, scope: !673)
!676 = !{!"308"}
!677 = !DILocation(line: 438, column: 5, scope: !673)
!678 = !{!"309"}
!679 = !DILocation(line: 434, column: 68, scope: !668)
!680 = !{!"310"}
!681 = !{!"311"}
!682 = !DILocation(line: 434, column: 5, scope: !668)
!683 = distinct !{!683, !670, !684, !97}
!684 = !DILocation(line: 438, column: 5, scope: !662)
!685 = !{!"312"}
!686 = !DILocation(line: 439, column: 1, scope: !643)
!687 = !{!"313"}
!688 = distinct !DISubprogram(name: "mbedtls_ct_hmac", scope: !1, file: !1, line: 567, type: !689, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!689 = !DISubroutineType(types: !690)
!690 = !{!20, !691, !570, !21, !570, !21, !21, !21, !569}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_context_t", file: !4, line: 103, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_md_context_t", file: !4, line: 93, size: 192, elements: !694)
!694 = !{!695, !700, !702}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "md_info", scope: !693, file: !4, line: 96, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_info_t", file: !4, line: 88, baseType: !699)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_md_info_t", file: !4, line: 88, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !693, file: !4, line: 99, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "hmac_ctx", scope: !693, file: !4, line: 102, baseType: !701, size: 64, offset: 128)
!703 = !{!"314"}
!704 = !{!"315"}
!705 = !DILocalVariable(name: "ctx", arg: 1, scope: !688, file: !1, line: 567, type: !691)
!706 = !DILocation(line: 0, scope: !688)
!707 = !{!"316"}
!708 = !DILocalVariable(name: "add_data", arg: 2, scope: !688, file: !1, line: 568, type: !570)
!709 = !{!"317"}
!710 = !DILocalVariable(name: "add_data_len", arg: 3, scope: !688, file: !1, line: 569, type: !21)
!711 = !{!"318"}
!712 = !DILocalVariable(name: "data", arg: 4, scope: !688, file: !1, line: 570, type: !570)
!713 = !{!"319"}
!714 = !DILocalVariable(name: "data_len_secret", arg: 5, scope: !688, file: !1, line: 571, type: !21)
!715 = !{!"320"}
!716 = !DILocalVariable(name: "min_data_len", arg: 6, scope: !688, file: !1, line: 572, type: !21)
!717 = !{!"321"}
!718 = !DILocalVariable(name: "max_data_len", arg: 7, scope: !688, file: !1, line: 573, type: !21)
!719 = !{!"322"}
!720 = !DILocalVariable(name: "output", arg: 8, scope: !688, file: !1, line: 574, type: !569)
!721 = !{!"323"}
!722 = !DILocation(line: 590, column: 64, scope: !688)
!723 = !{!"324"}
!724 = !{!"325"}
!725 = !DILocation(line: 590, column: 38, scope: !688)
!726 = !{!"326"}
!727 = !DILocalVariable(name: "md_alg", scope: !688, file: !1, line: 590, type: !728)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_type_t", file: !4, line: 64, baseType: !3)
!730 = !{!"327"}
!731 = !DILocation(line: 593, column: 38, scope: !688)
!732 = !{!"328"}
!733 = !DILocation(line: 593, column: 31, scope: !688)
!734 = !{!"329"}
!735 = !{!"330"}
!736 = !{!"331"}
!737 = !DILocalVariable(name: "block_size", scope: !688, file: !1, line: 593, type: !182)
!738 = !{!"332"}
!739 = !DILocation(line: 594, column: 45, scope: !688)
!740 = !{!"333"}
!741 = !{!"334"}
!742 = !DILocalVariable(name: "ikey", scope: !688, file: !1, line: 594, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!744 = !{!"335"}
!745 = !DILocation(line: 595, column: 45, scope: !688)
!746 = !{!"336"}
!747 = !DILocalVariable(name: "okey", scope: !688, file: !1, line: 595, type: !743)
!748 = !{!"337"}
!749 = !DILocation(line: 596, column: 56, scope: !688)
!750 = !{!"338"}
!751 = !{!"339"}
!752 = !DILocation(line: 596, column: 30, scope: !688)
!753 = !{!"340"}
!754 = !{!"341"}
!755 = !DILocalVariable(name: "hash_size", scope: !688, file: !1, line: 596, type: !182)
!756 = !{!"342"}
!757 = !DILocalVariable(name: "aux_out", scope: !688, file: !1, line: 598, type: !758)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 64)
!761 = !DILocation(line: 598, column: 19, scope: !688)
!762 = !{!"343"}
!763 = !DILocalVariable(name: "aux", scope: !688, file: !1, line: 599, type: !692)
!764 = !DILocation(line: 599, column: 26, scope: !688)
!765 = !{!"344"}
!766 = !DILocalVariable(name: "ret", scope: !688, file: !1, line: 601, type: !20)
!767 = !{!"345"}
!768 = !DILocation(line: 603, column: 5, scope: !688)
!769 = !{!"346"}
!770 = !DILocation(line: 612, column: 5, scope: !688)
!771 = !{!"347"}
!772 = !DILocation(line: 612, column: 5, scope: !773)
!773 = distinct !DILexicalBlock(scope: !688, file: !1, line: 612, column: 5)
!774 = !{!"348"}
!775 = !{!"349"}
!776 = !{!"350"}
!777 = !{!"351"}
!778 = !DILocation(line: 612, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !773, file: !1, line: 612, column: 5)
!780 = !{!"352"}
!781 = !{!"353"}
!782 = !{!"354"}
!783 = !{!"355"}
!784 = !DILocation(line: 616, column: 5, scope: !688)
!785 = !{!"356"}
!786 = !DILocation(line: 616, column: 5, scope: !787)
!787 = distinct !DILexicalBlock(scope: !688, file: !1, line: 616, column: 5)
!788 = !{!"357"}
!789 = !{!"358"}
!790 = !DILocation(line: 616, column: 5, scope: !791)
!791 = distinct !DILexicalBlock(scope: !787, file: !1, line: 616, column: 5)
!792 = !{!"359"}
!793 = !{!"360"}
!794 = !{!"361"}
!795 = !{!"362"}
!796 = !DILocation(line: 617, column: 5, scope: !688)
!797 = !{!"363"}
!798 = !DILocation(line: 617, column: 5, scope: !799)
!799 = distinct !DILexicalBlock(scope: !688, file: !1, line: 617, column: 5)
!800 = !{!"364"}
!801 = !{!"365"}
!802 = !DILocation(line: 617, column: 5, scope: !803)
!803 = distinct !DILexicalBlock(scope: !799, file: !1, line: 617, column: 5)
!804 = !{!"366"}
!805 = !{!"367"}
!806 = !{!"368"}
!807 = !{!"369"}
!808 = !DILocation(line: 623, column: 5, scope: !688)
!809 = !{!"370"}
!810 = !DILocalVariable(name: "offset", scope: !688, file: !1, line: 600, type: !21)
!811 = !{!"371"}
!812 = !DILocation(line: 626, column: 10, scope: !813)
!813 = distinct !DILexicalBlock(scope: !688, file: !1, line: 626, column: 5)
!814 = !{!"372"}
!815 = !DILocation(line: 0, scope: !813)
!816 = !{!"373"}
!817 = !{!"374"}
!818 = !DILocation(line: 626, column: 40, scope: !819)
!819 = distinct !DILexicalBlock(scope: !813, file: !1, line: 626, column: 5)
!820 = !{!"375"}
!821 = !DILocation(line: 626, column: 5, scope: !813)
!822 = !{!"376"}
!823 = !DILocation(line: 628, column: 9, scope: !824)
!824 = distinct !DILexicalBlock(scope: !819, file: !1, line: 627, column: 5)
!825 = !{!"377"}
!826 = !DILocation(line: 628, column: 9, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !1, line: 628, column: 9)
!828 = !{!"378"}
!829 = !{!"379"}
!830 = !DILocation(line: 628, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !1, line: 628, column: 9)
!832 = !{!"380"}
!833 = !{!"381"}
!834 = !{!"382"}
!835 = !{!"383"}
!836 = !DILocation(line: 629, column: 9, scope: !824)
!837 = !{!"384"}
!838 = !DILocation(line: 629, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !824, file: !1, line: 629, column: 9)
!840 = !{!"385"}
!841 = !{!"386"}
!842 = !{!"387"}
!843 = !DILocation(line: 629, column: 9, scope: !844)
!844 = distinct !DILexicalBlock(scope: !839, file: !1, line: 629, column: 9)
!845 = !{!"388"}
!846 = !{!"389"}
!847 = !{!"390"}
!848 = !{!"391"}
!849 = !DILocation(line: 631, column: 42, scope: !824)
!850 = !{!"392"}
!851 = !DILocation(line: 631, column: 9, scope: !824)
!852 = !{!"393"}
!853 = !DILocation(line: 634, column: 20, scope: !854)
!854 = distinct !DILexicalBlock(scope: !824, file: !1, line: 634, column: 13)
!855 = !{!"394"}
!856 = !DILocation(line: 634, column: 13, scope: !824)
!857 = !{!"395"}
!858 = !DILocation(line: 635, column: 13, scope: !854)
!859 = !{!"396"}
!860 = !DILocation(line: 635, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !854, file: !1, line: 635, column: 13)
!862 = !{!"397"}
!863 = !{!"398"}
!864 = !{!"399"}
!865 = !DILocation(line: 635, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !1, line: 635, column: 13)
!867 = !{!"400"}
!868 = !{!"401"}
!869 = !{!"402"}
!870 = !{!"403"}
!871 = !{!"404"}
!872 = !DILocation(line: 636, column: 5, scope: !824)
!873 = !{!"405"}
!874 = !DILocation(line: 626, column: 63, scope: !819)
!875 = !{!"406"}
!876 = !{!"407"}
!877 = !DILocation(line: 626, column: 5, scope: !819)
!878 = distinct !{!878, !821, !879, !97}
!879 = !DILocation(line: 636, column: 5, scope: !813)
!880 = !{!"408"}
!881 = !DILocation(line: 639, column: 5, scope: !688)
!882 = !{!"409"}
!883 = !DILocation(line: 639, column: 5, scope: !884)
!884 = distinct !DILexicalBlock(scope: !688, file: !1, line: 639, column: 5)
!885 = !{!"410"}
!886 = !{!"411"}
!887 = !{!"412"}
!888 = !DILocation(line: 639, column: 5, scope: !889)
!889 = distinct !DILexicalBlock(scope: !884, file: !1, line: 639, column: 5)
!890 = !{!"413"}
!891 = !{!"414"}
!892 = !{!"415"}
!893 = !{!"416"}
!894 = !DILocation(line: 642, column: 5, scope: !688)
!895 = !{!"417"}
!896 = !DILocation(line: 642, column: 5, scope: !897)
!897 = distinct !DILexicalBlock(scope: !688, file: !1, line: 642, column: 5)
!898 = !{!"418"}
!899 = !{!"419"}
!900 = !DILocation(line: 642, column: 5, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !1, line: 642, column: 5)
!902 = !{!"420"}
!903 = !{!"421"}
!904 = !{!"422"}
!905 = !{!"423"}
!906 = !DILocation(line: 643, column: 5, scope: !688)
!907 = !{!"424"}
!908 = !DILocation(line: 643, column: 5, scope: !909)
!909 = distinct !DILexicalBlock(scope: !688, file: !1, line: 643, column: 5)
!910 = !{!"425"}
!911 = !{!"426"}
!912 = !DILocation(line: 643, column: 5, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !1, line: 643, column: 5)
!914 = !{!"427"}
!915 = !{!"428"}
!916 = !{!"429"}
!917 = !{!"430"}
!918 = !DILocation(line: 644, column: 5, scope: !688)
!919 = !{!"431"}
!920 = !DILocation(line: 644, column: 5, scope: !921)
!921 = distinct !DILexicalBlock(scope: !688, file: !1, line: 644, column: 5)
!922 = !{!"432"}
!923 = !{!"433"}
!924 = !DILocation(line: 644, column: 5, scope: !925)
!925 = distinct !DILexicalBlock(scope: !921, file: !1, line: 644, column: 5)
!926 = !{!"434"}
!927 = !{!"435"}
!928 = !{!"436"}
!929 = !{!"437"}
!930 = !DILocation(line: 645, column: 5, scope: !688)
!931 = !{!"438"}
!932 = !DILocation(line: 645, column: 5, scope: !933)
!933 = distinct !DILexicalBlock(scope: !688, file: !1, line: 645, column: 5)
!934 = !{!"439"}
!935 = !{!"440"}
!936 = !DILocation(line: 645, column: 5, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !1, line: 645, column: 5)
!938 = !{!"441"}
!939 = !{!"442"}
!940 = !{!"443"}
!941 = !{!"444"}
!942 = !DILocation(line: 648, column: 5, scope: !688)
!943 = !{!"445"}
!944 = !DILocation(line: 648, column: 5, scope: !945)
!945 = distinct !DILexicalBlock(scope: !688, file: !1, line: 648, column: 5)
!946 = !{!"446"}
!947 = !{!"447"}
!948 = !DILocation(line: 648, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !1, line: 648, column: 5)
!950 = !{!"448"}
!951 = !{!"449"}
!952 = !{!"450"}
!953 = !{!"451"}
!954 = !{!"452"}
!955 = !{!"453"}
!956 = !{!"454"}
!957 = !DILabel(scope: !688, name: "cleanup", file: !1, line: 652)
!958 = !DILocation(line: 652, column: 1, scope: !688)
!959 = !{!"455"}
!960 = !DILocation(line: 653, column: 5, scope: !688)
!961 = !{!"456"}
!962 = !DILocation(line: 654, column: 5, scope: !688)
!963 = !{!"457"}
!964 = distinct !DISubprogram(name: "mbedtls_mpi_safe_cond_assign", scope: !1, file: !1, line: 677, type: !965, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!965 = !DISubroutineType(types: !966)
!966 = !{!20, !967, !974, !19}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_mpi", file: !141, line: 227, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_mpi", file: !141, line: 203, size: 192, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !969, file: !141, line: 216, baseType: !20, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !969, file: !141, line: 219, baseType: !21, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !969, file: !141, line: 225, baseType: !284, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!976 = !DILocalVariable(name: "X", arg: 1, scope: !964, file: !1, line: 677, type: !967)
!977 = !DILocation(line: 0, scope: !964)
!978 = !{!"458"}
!979 = !DILocalVariable(name: "Y", arg: 2, scope: !964, file: !1, line: 678, type: !974)
!980 = !{!"459"}
!981 = !DILocalVariable(name: "assign", arg: 3, scope: !964, file: !1, line: 679, type: !19)
!982 = !{!"460"}
!983 = !DILocalVariable(name: "ret", scope: !964, file: !1, line: 681, type: !20)
!984 = !{!"461"}
!985 = !DILocation(line: 682, column: 5, scope: !964)
!986 = !{!"462"}
!987 = !DILocation(line: 682, column: 5, scope: !988)
!988 = distinct !DILexicalBlock(scope: !964, file: !1, line: 682, column: 5)
!989 = !{!"463"}
!990 = !DILocation(line: 683, column: 5, scope: !964)
!991 = !{!"464"}
!992 = !DILocation(line: 683, column: 5, scope: !993)
!993 = distinct !DILexicalBlock(scope: !964, file: !1, line: 683, column: 5)
!994 = !{!"465"}
!995 = !DILocation(line: 686, column: 60, scope: !964)
!996 = !{!"466"}
!997 = !DILocation(line: 686, column: 34, scope: !964)
!998 = !{!"467"}
!999 = !DILocalVariable(name: "limb_mask", scope: !964, file: !1, line: 686, type: !140)
!1000 = !{!"468"}
!1001 = !DILocation(line: 688, column: 5, scope: !964)
!1002 = !{!"469"}
!1003 = !DILocation(line: 688, column: 5, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 688, column: 5)
!1005 = distinct !DILexicalBlock(scope: !964, file: !1, line: 688, column: 5)
!1006 = !{!"470"}
!1007 = !{!"471"}
!1008 = !{!"472"}
!1009 = !{!"473"}
!1010 = !{!"474"}
!1011 = !DILocation(line: 688, column: 5, scope: !1005)
!1012 = !{!"475"}
!1013 = !{!"476"}
!1014 = !{!"477"}
!1015 = !DILocation(line: 690, column: 52, scope: !964)
!1016 = !{!"478"}
!1017 = !{!"479"}
!1018 = !DILocation(line: 690, column: 58, scope: !964)
!1019 = !{!"480"}
!1020 = !{!"481"}
!1021 = !DILocation(line: 690, column: 12, scope: !964)
!1022 = !{!"482"}
!1023 = !DILocation(line: 690, column: 8, scope: !964)
!1024 = !{!"483"}
!1025 = !DILocation(line: 690, column: 10, scope: !964)
!1026 = !{!"484"}
!1027 = !DILocation(line: 692, column: 38, scope: !964)
!1028 = !{!"485"}
!1029 = !{!"486"}
!1030 = !DILocation(line: 692, column: 44, scope: !964)
!1031 = !{!"487"}
!1032 = !{!"488"}
!1033 = !DILocation(line: 692, column: 50, scope: !964)
!1034 = !{!"489"}
!1035 = !{!"490"}
!1036 = !DILocation(line: 692, column: 5, scope: !964)
!1037 = !{!"491"}
!1038 = !DILocation(line: 694, column: 24, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !964, file: !1, line: 694, column: 5)
!1040 = !{!"492"}
!1041 = !{!"493"}
!1042 = !DILocalVariable(name: "i", scope: !1039, file: !1, line: 694, type: !21)
!1043 = !DILocation(line: 0, scope: !1039)
!1044 = !{!"494"}
!1045 = !DILocation(line: 694, column: 10, scope: !1039)
!1046 = !{!"495"}
!1047 = !{!"496"}
!1048 = !{!"497"}
!1049 = !DILocation(line: 694, column: 34, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 694, column: 5)
!1051 = !{!"498"}
!1052 = !{!"499"}
!1053 = !DILocation(line: 694, column: 29, scope: !1050)
!1054 = !{!"500"}
!1055 = !DILocation(line: 694, column: 5, scope: !1039)
!1056 = !{!"501"}
!1057 = !DILocation(line: 695, column: 20, scope: !1050)
!1058 = !{!"502"}
!1059 = !DILocation(line: 695, column: 12, scope: !1050)
!1060 = !{!"503"}
!1061 = !{!"504"}
!1062 = !DILocation(line: 695, column: 9, scope: !1050)
!1063 = !{!"505"}
!1064 = !DILocation(line: 695, column: 17, scope: !1050)
!1065 = !{!"506"}
!1066 = !{!"507"}
!1067 = !{!"508"}
!1068 = !{!"509"}
!1069 = !DILocation(line: 694, column: 38, scope: !1050)
!1070 = !{!"510"}
!1071 = !{!"511"}
!1072 = !DILocation(line: 694, column: 5, scope: !1050)
!1073 = distinct !{!1073, !1055, !1074, !97}
!1074 = !DILocation(line: 695, column: 21, scope: !1039)
!1075 = !{!"512"}
!1076 = !{!"513"}
!1077 = !DILabel(scope: !964, name: "cleanup", file: !1, line: 697)
!1078 = !DILocation(line: 697, column: 1, scope: !964)
!1079 = !{!"514"}
!1080 = !DILocation(line: 698, column: 5, scope: !964)
!1081 = !{!"515"}
!1082 = distinct !DISubprogram(name: "mbedtls_ct_cond_select_sign", scope: !1, file: !1, line: 282, type: !1083, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!20, !19, !20, !20}
!1085 = !DILocalVariable(name: "condition", arg: 1, scope: !1082, file: !1, line: 282, type: !19)
!1086 = !DILocation(line: 0, scope: !1082)
!1087 = !{!"516"}
!1088 = !DILocalVariable(name: "if1", arg: 2, scope: !1082, file: !1, line: 283, type: !20)
!1089 = !{!"517"}
!1090 = !DILocalVariable(name: "if0", arg: 3, scope: !1082, file: !1, line: 284, type: !20)
!1091 = !{!"518"}
!1092 = !DILocation(line: 289, column: 25, scope: !1082)
!1093 = !{!"519"}
!1094 = !DILocalVariable(name: "uif1", scope: !1082, file: !1, line: 289, type: !5)
!1095 = !{!"520"}
!1096 = !DILocation(line: 290, column: 25, scope: !1082)
!1097 = !{!"521"}
!1098 = !DILocalVariable(name: "uif0", scope: !1082, file: !1, line: 290, type: !5)
!1099 = !{!"522"}
!1100 = !DILocation(line: 293, column: 27, scope: !1082)
!1101 = !{!"523"}
!1102 = !DILocation(line: 293, column: 37, scope: !1082)
!1103 = !{!"524"}
!1104 = !DILocalVariable(name: "mask", scope: !1082, file: !1, line: 293, type: !217)
!1105 = !{!"525"}
!1106 = !DILocation(line: 296, column: 28, scope: !1082)
!1107 = !{!"526"}
!1108 = !DILocation(line: 296, column: 26, scope: !1082)
!1109 = !{!"527"}
!1110 = !DILocation(line: 296, column: 45, scope: !1082)
!1111 = !{!"528"}
!1112 = !DILocation(line: 296, column: 36, scope: !1082)
!1113 = !{!"529"}
!1114 = !DILocalVariable(name: "ur", scope: !1082, file: !1, line: 296, type: !5)
!1115 = !{!"530"}
!1116 = !DILocation(line: 299, column: 22, scope: !1082)
!1117 = !{!"531"}
!1118 = !DILocation(line: 299, column: 5, scope: !1082)
!1119 = !{!"532"}
!1120 = distinct !DISubprogram(name: "mbedtls_mpi_safe_cond_swap", scope: !1, file: !1, line: 707, type: !1121, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!20, !967, !967, !19}
!1123 = !DILocalVariable(name: "X", arg: 1, scope: !1120, file: !1, line: 707, type: !967)
!1124 = !DILocation(line: 0, scope: !1120)
!1125 = !{!"533"}
!1126 = !DILocalVariable(name: "Y", arg: 2, scope: !1120, file: !1, line: 708, type: !967)
!1127 = !{!"534"}
!1128 = !DILocalVariable(name: "swap", arg: 3, scope: !1120, file: !1, line: 709, type: !19)
!1129 = !{!"535"}
!1130 = !DILocalVariable(name: "ret", scope: !1120, file: !1, line: 711, type: !20)
!1131 = !{!"536"}
!1132 = !DILocation(line: 713, column: 5, scope: !1120)
!1133 = !{!"537"}
!1134 = !DILocation(line: 713, column: 5, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 713, column: 5)
!1136 = !{!"538"}
!1137 = !DILocation(line: 714, column: 5, scope: !1120)
!1138 = !{!"539"}
!1139 = !DILocation(line: 714, column: 5, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 714, column: 5)
!1141 = !{!"540"}
!1142 = !DILocation(line: 716, column: 11, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 716, column: 9)
!1144 = !{!"541"}
!1145 = !DILocation(line: 716, column: 9, scope: !1120)
!1146 = !{!"542"}
!1147 = !DILocation(line: 717, column: 9, scope: !1143)
!1148 = !{!"543"}
!1149 = !DILocation(line: 719, column: 5, scope: !1120)
!1150 = !{!"544"}
!1151 = !DILocation(line: 719, column: 5, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 719, column: 5)
!1153 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 719, column: 5)
!1154 = !{!"545"}
!1155 = !{!"546"}
!1156 = !{!"547"}
!1157 = !{!"548"}
!1158 = !{!"549"}
!1159 = !DILocation(line: 719, column: 5, scope: !1153)
!1160 = !{!"550"}
!1161 = !{!"551"}
!1162 = !{!"552"}
!1163 = !DILocation(line: 720, column: 5, scope: !1120)
!1164 = !{!"553"}
!1165 = !DILocation(line: 720, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 720, column: 5)
!1167 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 720, column: 5)
!1168 = !{!"554"}
!1169 = !{!"555"}
!1170 = !{!"556"}
!1171 = !{!"557"}
!1172 = !{!"558"}
!1173 = !DILocation(line: 720, column: 5, scope: !1167)
!1174 = !{!"559"}
!1175 = !{!"560"}
!1176 = !{!"561"}
!1177 = !DILocation(line: 722, column: 12, scope: !1120)
!1178 = !{!"562"}
!1179 = !{!"563"}
!1180 = !DILocalVariable(name: "s", scope: !1120, file: !1, line: 712, type: !20)
!1181 = !{!"564"}
!1182 = !DILocation(line: 723, column: 50, scope: !1120)
!1183 = !{!"565"}
!1184 = !{!"566"}
!1185 = !DILocation(line: 723, column: 56, scope: !1120)
!1186 = !{!"567"}
!1187 = !{!"568"}
!1188 = !DILocation(line: 723, column: 12, scope: !1120)
!1189 = !{!"569"}
!1190 = !DILocation(line: 723, column: 8, scope: !1120)
!1191 = !{!"570"}
!1192 = !DILocation(line: 723, column: 10, scope: !1120)
!1193 = !{!"571"}
!1194 = !DILocation(line: 724, column: 53, scope: !1120)
!1195 = !{!"572"}
!1196 = !{!"573"}
!1197 = !DILocation(line: 724, column: 12, scope: !1120)
!1198 = !{!"574"}
!1199 = !DILocation(line: 724, column: 8, scope: !1120)
!1200 = !{!"575"}
!1201 = !DILocation(line: 724, column: 10, scope: !1120)
!1202 = !{!"576"}
!1203 = !DILocation(line: 726, column: 36, scope: !1120)
!1204 = !{!"577"}
!1205 = !{!"578"}
!1206 = !DILocation(line: 726, column: 42, scope: !1120)
!1207 = !{!"579"}
!1208 = !{!"580"}
!1209 = !DILocation(line: 726, column: 48, scope: !1120)
!1210 = !{!"581"}
!1211 = !{!"582"}
!1212 = !DILocation(line: 726, column: 5, scope: !1120)
!1213 = !{!"583"}
!1214 = !{!"584"}
!1215 = !{!"585"}
!1216 = !{!"586"}
!1217 = !DILabel(scope: !1120, name: "cleanup", file: !1, line: 728)
!1218 = !DILocation(line: 728, column: 1, scope: !1120)
!1219 = !{!"587"}
!1220 = !DILocation(line: 729, column: 5, scope: !1120)
!1221 = !{!"588"}
!1222 = !{!"589"}
!1223 = !DILocation(line: 730, column: 1, scope: !1120)
!1224 = !{!"590"}
!1225 = distinct !DISubprogram(name: "mbedtls_mpi_core_lt_ct", scope: !1, file: !1, line: 735, type: !1226, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!5, !285, !285, !21}
!1228 = !DILocalVariable(name: "A", arg: 1, scope: !1225, file: !1, line: 735, type: !285)
!1229 = !DILocation(line: 0, scope: !1225)
!1230 = !{!"591"}
!1231 = !DILocalVariable(name: "B", arg: 2, scope: !1225, file: !1, line: 736, type: !285)
!1232 = !{!"592"}
!1233 = !DILocalVariable(name: "limbs", arg: 3, scope: !1225, file: !1, line: 737, type: !21)
!1234 = !{!"593"}
!1235 = !DILocalVariable(name: "done", scope: !1225, file: !1, line: 739, type: !5)
!1236 = !{!"594"}
!1237 = !DILocalVariable(name: "cond", scope: !1225, file: !1, line: 739, type: !5)
!1238 = !{!"595"}
!1239 = !DILocalVariable(name: "ret", scope: !1225, file: !1, line: 739, type: !5)
!1240 = !{!"596"}
!1241 = !DILocalVariable(name: "i", scope: !1242, file: !1, line: 745, type: !21)
!1242 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 745, column: 5)
!1243 = !DILocation(line: 0, scope: !1242)
!1244 = !{!"597"}
!1245 = !DILocation(line: 745, column: 10, scope: !1242)
!1246 = !{!"598"}
!1247 = !{!"599"}
!1248 = !{!"600"}
!1249 = !{!"601"}
!1250 = !{!"602"}
!1251 = !{!"603"}
!1252 = !{!"604"}
!1253 = !DILocation(line: 745, column: 30, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 745, column: 5)
!1255 = !{!"605"}
!1256 = !DILocation(line: 745, column: 5, scope: !1242)
!1257 = !{!"606"}
!1258 = !DILocation(line: 754, column: 44, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 746, column: 5)
!1260 = !{!"607"}
!1261 = !DILocation(line: 754, column: 40, scope: !1259)
!1262 = !{!"608"}
!1263 = !{!"PointTainted"}
!1264 = !{!"609"}
!1265 = !DILocation(line: 754, column: 54, scope: !1259)
!1266 = !{!"610"}
!1267 = !DILocation(line: 754, column: 50, scope: !1259)
!1268 = !{!"611"}
!1269 = !{!"612"}
!1270 = !DILocation(line: 754, column: 16, scope: !1259)
!1271 = !{!"613"}
!1272 = !{!"614"}
!1273 = !DILocation(line: 755, column: 14, scope: !1259)
!1274 = !{!"615"}
!1275 = !{!"616"}
!1276 = !DILocation(line: 763, column: 44, scope: !1259)
!1277 = !{!"617"}
!1278 = !DILocation(line: 763, column: 40, scope: !1259)
!1279 = !{!"618"}
!1280 = !{!"619"}
!1281 = !DILocation(line: 763, column: 54, scope: !1259)
!1282 = !{!"620"}
!1283 = !DILocation(line: 763, column: 50, scope: !1259)
!1284 = !{!"621"}
!1285 = !{!"622"}
!1286 = !DILocation(line: 763, column: 16, scope: !1259)
!1287 = !{!"623"}
!1288 = !{!"624"}
!1289 = !DILocation(line: 764, column: 27, scope: !1259)
!1290 = !{!"625"}
!1291 = !DILocation(line: 764, column: 21, scope: !1259)
!1292 = !{!"626"}
!1293 = !DILocation(line: 764, column: 13, scope: !1259)
!1294 = !{!"627"}
!1295 = !{!"628"}
!1296 = !DILocation(line: 765, column: 14, scope: !1259)
!1297 = !{!"629"}
!1298 = !{!"630"}
!1299 = !DILocation(line: 766, column: 5, scope: !1259)
!1300 = !{!"631"}
!1301 = !DILocation(line: 745, column: 36, scope: !1254)
!1302 = !{!"632"}
!1303 = !{!"633"}
!1304 = !DILocation(line: 745, column: 5, scope: !1254)
!1305 = distinct !{!1305, !1256, !1306, !97}
!1306 = !DILocation(line: 766, column: 5, scope: !1242)
!1307 = !{!"634"}
!1308 = !DILocation(line: 773, column: 5, scope: !1225)
!1309 = !{!"635"}
!1310 = distinct !DISubprogram(name: "mbedtls_mpi_lt_mpi_ct", scope: !1, file: !1, line: 779, type: !1311, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!20, !974, !974, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1314 = !DILocalVariable(name: "X", arg: 1, scope: !1310, file: !1, line: 779, type: !974)
!1315 = !DILocation(line: 0, scope: !1310)
!1316 = !{!"636"}
!1317 = !DILocalVariable(name: "Y", arg: 2, scope: !1310, file: !1, line: 780, type: !974)
!1318 = !{!"637"}
!1319 = !DILocalVariable(name: "ret", arg: 3, scope: !1310, file: !1, line: 781, type: !1313)
!1320 = !{!"638"}
!1321 = !DILocation(line: 787, column: 5, scope: !1310)
!1322 = !{!"639"}
!1323 = !DILocation(line: 787, column: 5, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 787, column: 5)
!1325 = !{!"640"}
!1326 = !DILocation(line: 788, column: 5, scope: !1310)
!1327 = !{!"641"}
!1328 = !DILocation(line: 788, column: 5, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 788, column: 5)
!1330 = !{!"642"}
!1331 = !DILocation(line: 789, column: 5, scope: !1310)
!1332 = !{!"643"}
!1333 = !DILocation(line: 789, column: 5, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 789, column: 5)
!1335 = !{!"644"}
!1336 = !DILocation(line: 791, column: 12, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 791, column: 9)
!1338 = !{!"645"}
!1339 = !{!"646"}
!1340 = !DILocation(line: 791, column: 20, scope: !1337)
!1341 = !{!"647"}
!1342 = !{!"648"}
!1343 = !DILocation(line: 791, column: 14, scope: !1337)
!1344 = !{!"649"}
!1345 = !DILocation(line: 791, column: 9, scope: !1310)
!1346 = !{!"650"}
!1347 = !DILocation(line: 792, column: 9, scope: !1337)
!1348 = !{!"651"}
!1349 = !DILocation(line: 798, column: 26, scope: !1310)
!1350 = !{!"652"}
!1351 = !{!"653"}
!1352 = !DILocation(line: 798, column: 28, scope: !1310)
!1353 = !{!"654"}
!1354 = !DILocation(line: 798, column: 34, scope: !1310)
!1355 = !{!"655"}
!1356 = !DILocalVariable(name: "X_is_negative", scope: !1310, file: !1, line: 785, type: !5)
!1357 = !{!"656"}
!1358 = !DILocation(line: 799, column: 26, scope: !1310)
!1359 = !{!"657"}
!1360 = !{!"658"}
!1361 = !DILocation(line: 799, column: 28, scope: !1310)
!1362 = !{!"659"}
!1363 = !DILocation(line: 799, column: 34, scope: !1310)
!1364 = !{!"660"}
!1365 = !DILocalVariable(name: "Y_is_negative", scope: !1310, file: !1, line: 785, type: !5)
!1366 = !{!"661"}
!1367 = !DILocation(line: 806, column: 28, scope: !1310)
!1368 = !{!"662"}
!1369 = !DILocalVariable(name: "cond", scope: !1310, file: !1, line: 785, type: !5)
!1370 = !{!"663"}
!1371 = !DILocation(line: 807, column: 17, scope: !1310)
!1372 = !{!"664"}
!1373 = !DILocation(line: 807, column: 10, scope: !1310)
!1374 = !{!"665"}
!1375 = !DILocalVariable(name: "done", scope: !1310, file: !1, line: 785, type: !5)
!1376 = !{!"666"}
!1377 = !DILocation(line: 815, column: 17, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 815, column: 5)
!1379 = !{!"667"}
!1380 = !{!"668"}
!1381 = !DILocalVariable(name: "i", scope: !1310, file: !1, line: 783, type: !21)
!1382 = !{!"669"}
!1383 = !DILocation(line: 815, column: 10, scope: !1378)
!1384 = !{!"670"}
!1385 = !DILocation(line: 0, scope: !1378)
!1386 = !{!"671"}
!1387 = !{!"672"}
!1388 = !{!"673"}
!1389 = !{!"674"}
!1390 = !DILocation(line: 815, column: 22, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 815, column: 5)
!1392 = !{!"675"}
!1393 = !DILocation(line: 815, column: 5, scope: !1378)
!1394 = !{!"676"}
!1395 = !DILocation(line: 824, column: 43, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 816, column: 5)
!1397 = !{!"677"}
!1398 = !{!"678"}
!1399 = !DILocation(line: 824, column: 47, scope: !1396)
!1400 = !{!"679"}
!1401 = !DILocation(line: 824, column: 40, scope: !1396)
!1402 = !{!"680"}
!1403 = !{!"681"}
!1404 = !DILocation(line: 824, column: 56, scope: !1396)
!1405 = !{!"682"}
!1406 = !{!"683"}
!1407 = !DILocation(line: 824, column: 60, scope: !1396)
!1408 = !{!"684"}
!1409 = !DILocation(line: 824, column: 53, scope: !1396)
!1410 = !{!"685"}
!1411 = !{!"686"}
!1412 = !DILocation(line: 824, column: 16, scope: !1396)
!1413 = !{!"687"}
!1414 = !{!"688"}
!1415 = !DILocation(line: 825, column: 28, scope: !1396)
!1416 = !{!"689"}
!1417 = !DILocation(line: 825, column: 22, scope: !1396)
!1418 = !{!"690"}
!1419 = !DILocation(line: 825, column: 37, scope: !1396)
!1420 = !{!"691"}
!1421 = !DILocation(line: 825, column: 14, scope: !1396)
!1422 = !{!"692"}
!1423 = !{!"693"}
!1424 = !{!"694"}
!1425 = !DILocation(line: 826, column: 14, scope: !1396)
!1426 = !{!"695"}
!1427 = !{!"696"}
!1428 = !DILocation(line: 835, column: 43, scope: !1396)
!1429 = !{!"697"}
!1430 = !{!"698"}
!1431 = !DILocation(line: 835, column: 47, scope: !1396)
!1432 = !{!"699"}
!1433 = !DILocation(line: 835, column: 40, scope: !1396)
!1434 = !{!"700"}
!1435 = !{!"701"}
!1436 = !DILocation(line: 835, column: 56, scope: !1396)
!1437 = !{!"702"}
!1438 = !{!"703"}
!1439 = !DILocation(line: 835, column: 60, scope: !1396)
!1440 = !{!"704"}
!1441 = !DILocation(line: 835, column: 53, scope: !1396)
!1442 = !{!"705"}
!1443 = !{!"706"}
!1444 = !DILocation(line: 835, column: 16, scope: !1396)
!1445 = !{!"707"}
!1446 = !{!"708"}
!1447 = !DILocation(line: 836, column: 28, scope: !1396)
!1448 = !{!"709"}
!1449 = !DILocation(line: 836, column: 22, scope: !1396)
!1450 = !{!"710"}
!1451 = !DILocation(line: 836, column: 43, scope: !1396)
!1452 = !{!"711"}
!1453 = !DILocation(line: 836, column: 37, scope: !1396)
!1454 = !{!"712"}
!1455 = !DILocation(line: 836, column: 14, scope: !1396)
!1456 = !{!"713"}
!1457 = !{!"714"}
!1458 = !{!"715"}
!1459 = !DILocation(line: 837, column: 14, scope: !1396)
!1460 = !{!"716"}
!1461 = !{!"717"}
!1462 = !DILocation(line: 838, column: 5, scope: !1396)
!1463 = !{!"718"}
!1464 = !DILocation(line: 815, column: 28, scope: !1391)
!1465 = !{!"719"}
!1466 = !{!"720"}
!1467 = !DILocation(line: 815, column: 5, scope: !1391)
!1468 = distinct !{!1468, !1393, !1469, !97}
!1469 = !DILocation(line: 838, column: 5, scope: !1378)
!1470 = !{!"721"}
!1471 = !DILocation(line: 840, column: 5, scope: !1310)
!1472 = !{!"722"}
!1473 = !{!"723"}
!1474 = !DILocation(line: 841, column: 1, scope: !1310)
!1475 = !{!"724"}
!1476 = distinct !DISubprogram(name: "mbedtls_ct_rsaes_pkcs1_v15_unpadding", scope: !1, file: !1, line: 847, type: !1477, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!20, !569, !21, !569, !21, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1480 = !DILocalVariable(name: "input", arg: 1, scope: !1476, file: !1, line: 847, type: !569)
!1481 = !DILocation(line: 0, scope: !1476)
!1482 = !{!"725"}
!1483 = !DILocalVariable(name: "ilen", arg: 2, scope: !1476, file: !1, line: 848, type: !21)
!1484 = !{!"726"}
!1485 = !DILocalVariable(name: "output", arg: 3, scope: !1476, file: !1, line: 849, type: !569)
!1486 = !{!"727"}
!1487 = !DILocalVariable(name: "output_max_len", arg: 4, scope: !1476, file: !1, line: 850, type: !21)
!1488 = !{!"728"}
!1489 = !DILocalVariable(name: "olen", arg: 5, scope: !1476, file: !1, line: 851, type: !1479)
!1490 = !{!"729"}
!1491 = !DILocalVariable(name: "ret", scope: !1476, file: !1, line: 853, type: !20)
!1492 = !{!"730"}
!1493 = !DILocalVariable(name: "pad_count", scope: !1476, file: !1, line: 866, type: !21)
!1494 = !{!"731"}
!1495 = !DILocalVariable(name: "bad", scope: !1476, file: !1, line: 867, type: !5)
!1496 = !{!"732"}
!1497 = !DILocalVariable(name: "pad_done", scope: !1476, file: !1, line: 868, type: !19)
!1498 = !{!"733"}
!1499 = !DILocalVariable(name: "plaintext_size", scope: !1476, file: !1, line: 869, type: !21)
!1500 = !{!"734"}
!1501 = !DILocation(line: 872, column: 50, scope: !1476)
!1502 = !{!"735"}
!1503 = !DILocation(line: 872, column: 43, scope: !1476)
!1504 = !{!"736"}
!1505 = !DILocation(line: 872, column: 26, scope: !1476)
!1506 = !{!"737"}
!1507 = !DILocation(line: 872, column: 64, scope: !1476)
!1508 = !{!"738"}
!1509 = !{!"739"}
!1510 = !{!"740"}
!1511 = !{!"741"}
!1512 = !DILocalVariable(name: "plaintext_max_size", scope: !1476, file: !1, line: 854, type: !21)
!1513 = !{!"742"}
!1514 = !DILocation(line: 877, column: 12, scope: !1476)
!1515 = !{!"743"}
!1516 = !{!"744"}
!1517 = !{!"745"}
!1518 = !DILocation(line: 877, column: 9, scope: !1476)
!1519 = !{!"746"}
!1520 = !{!"747"}
!1521 = !DILocation(line: 882, column: 12, scope: !1476)
!1522 = !{!"748"}
!1523 = !{!"749"}
!1524 = !{!"750"}
!1525 = !DILocation(line: 882, column: 21, scope: !1476)
!1526 = !{!"751"}
!1527 = !DILocation(line: 882, column: 9, scope: !1476)
!1528 = !{!"752"}
!1529 = !{!"753"}
!1530 = !DILocalVariable(name: "i", scope: !1476, file: !1, line: 854, type: !21)
!1531 = !{!"754"}
!1532 = !DILocation(line: 886, column: 10, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 886, column: 5)
!1534 = !{!"755"}
!1535 = !DILocation(line: 0, scope: !1533)
!1536 = !{!"756"}
!1537 = !{!"757"}
!1538 = !{!"758"}
!1539 = !{!"759"}
!1540 = !{!"760"}
!1541 = !{!"761"}
!1542 = !DILocation(line: 886, column: 19, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 886, column: 5)
!1544 = !{!"762"}
!1545 = !DILocation(line: 886, column: 5, scope: !1533)
!1546 = !{!"763"}
!1547 = !DILocation(line: 888, column: 24, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 887, column: 5)
!1549 = !{!"764"}
!1550 = !{!"765"}
!1551 = !{!"766"}
!1552 = !DILocation(line: 888, column: 51, scope: !1548)
!1553 = !{!"767"}
!1554 = !{!"768"}
!1555 = !{!"769"}
!1556 = !DILocation(line: 888, column: 50, scope: !1548)
!1557 = !{!"770"}
!1558 = !DILocation(line: 888, column: 35, scope: !1548)
!1559 = !{!"771"}
!1560 = !{!"772"}
!1561 = !DILocation(line: 888, column: 33, scope: !1548)
!1562 = !{!"773"}
!1563 = !DILocation(line: 888, column: 61, scope: !1548)
!1564 = !{!"774"}
!1565 = !DILocation(line: 888, column: 67, scope: !1548)
!1566 = !{!"775"}
!1567 = !DILocation(line: 888, column: 19, scope: !1548)
!1568 = !{!"776"}
!1569 = !{!"777"}
!1570 = !{!"778"}
!1571 = !{!"779"}
!1572 = !DILocation(line: 889, column: 24, scope: !1548)
!1573 = !{!"780"}
!1574 = !DILocation(line: 889, column: 51, scope: !1548)
!1575 = !{!"781"}
!1576 = !DILocation(line: 889, column: 50, scope: !1548)
!1577 = !{!"782"}
!1578 = !DILocation(line: 889, column: 35, scope: !1548)
!1579 = !{!"783"}
!1580 = !{!"784"}
!1581 = !DILocation(line: 889, column: 33, scope: !1548)
!1582 = !{!"785"}
!1583 = !DILocation(line: 889, column: 61, scope: !1548)
!1584 = !{!"786"}
!1585 = !DILocation(line: 889, column: 67, scope: !1548)
!1586 = !{!"787"}
!1587 = !DILocation(line: 889, column: 22, scope: !1548)
!1588 = !{!"788"}
!1589 = !DILocation(line: 889, column: 19, scope: !1548)
!1590 = !{!"789"}
!1591 = !{!"790"}
!1592 = !DILocation(line: 890, column: 5, scope: !1548)
!1593 = !{!"791"}
!1594 = !DILocation(line: 886, column: 28, scope: !1543)
!1595 = !{!"792"}
!1596 = !{!"793"}
!1597 = !DILocation(line: 886, column: 5, scope: !1543)
!1598 = distinct !{!1598, !1545, !1599, !97}
!1599 = !DILocation(line: 890, column: 5, scope: !1533)
!1600 = !{!"794"}
!1601 = !DILocation(line: 894, column: 32, scope: !1476)
!1602 = !{!"795"}
!1603 = !DILocation(line: 894, column: 12, scope: !1476)
!1604 = !{!"796"}
!1605 = !DILocation(line: 894, column: 9, scope: !1476)
!1606 = !{!"797"}
!1607 = !{!"798"}
!1608 = !DILocation(line: 897, column: 12, scope: !1476)
!1609 = !{!"799"}
!1610 = !DILocation(line: 897, column: 9, scope: !1476)
!1611 = !{!"800"}
!1612 = !{!"801"}
!1613 = !DILocation(line: 907, column: 30, scope: !1476)
!1614 = !{!"802"}
!1615 = !DILocation(line: 908, column: 43, scope: !1476)
!1616 = !{!"803"}
!1617 = !DILocation(line: 908, column: 55, scope: !1476)
!1618 = !{!"804"}
!1619 = !DILocation(line: 908, column: 25, scope: !1476)
!1620 = !{!"805"}
!1621 = !DILocation(line: 906, column: 22, scope: !1476)
!1622 = !{!"806"}
!1623 = !{!"807"}
!1624 = !{!"808"}
!1625 = !DILocation(line: 912, column: 24, scope: !1476)
!1626 = !{!"809"}
!1627 = !DILocalVariable(name: "output_too_large", scope: !1476, file: !1, line: 870, type: !5)
!1628 = !{!"810"}
!1629 = !DILocation(line: 922, column: 21, scope: !1476)
!1630 = !{!"811"}
!1631 = !DILocation(line: 920, column: 19, scope: !1476)
!1632 = !{!"812"}
!1633 = !DILocation(line: 920, column: 11, scope: !1476)
!1634 = !{!"813"}
!1635 = !{!"814"}
!1636 = !DILocation(line: 932, column: 37, scope: !1476)
!1637 = !{!"815"}
!1638 = !DILocation(line: 932, column: 11, scope: !1476)
!1639 = !{!"816"}
!1640 = !{!"817"}
!1641 = !{!"818"}
!1642 = !DILocation(line: 933, column: 10, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 933, column: 5)
!1644 = !{!"819"}
!1645 = !DILocation(line: 0, scope: !1643)
!1646 = !{!"820"}
!1647 = !{!"821"}
!1648 = !DILocation(line: 933, column: 20, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 933, column: 5)
!1650 = !{!"822"}
!1651 = !DILocation(line: 933, column: 5, scope: !1643)
!1652 = !{!"823"}
!1653 = !DILocation(line: 934, column: 21, scope: !1649)
!1654 = !{!"824"}
!1655 = !DILocation(line: 934, column: 9, scope: !1649)
!1656 = !{!"825"}
!1657 = !DILocation(line: 934, column: 18, scope: !1649)
!1658 = !{!"826"}
!1659 = !{!"827"}
!1660 = !{!"828"}
!1661 = !{!"829"}
!1662 = !{!"830"}
!1663 = !{!"831"}
!1664 = !DILocation(line: 933, column: 29, scope: !1649)
!1665 = !{!"832"}
!1666 = !{!"833"}
!1667 = !DILocation(line: 933, column: 5, scope: !1649)
!1668 = distinct !{!1668, !1651, !1669, !97}
!1669 = !DILocation(line: 934, column: 22, scope: !1643)
!1670 = !{!"834"}
!1671 = !DILocation(line: 941, column: 42, scope: !1476)
!1672 = !{!"835"}
!1673 = !DILocation(line: 942, column: 42, scope: !1476)
!1674 = !{!"836"}
!1675 = !DILocation(line: 940, column: 22, scope: !1476)
!1676 = !{!"837"}
!1677 = !{!"838"}
!1678 = !{!"839"}
!1679 = !DILocation(line: 950, column: 40, scope: !1476)
!1680 = !{!"840"}
!1681 = !DILocation(line: 950, column: 47, scope: !1476)
!1682 = !{!"841"}
!1683 = !{!"842"}
!1684 = !DILocation(line: 952, column: 53, scope: !1476)
!1685 = !{!"843"}
!1686 = !DILocation(line: 950, column: 5, scope: !1476)
!1687 = !{!"844"}
!1688 = !DILocation(line: 961, column: 24, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 961, column: 9)
!1690 = !{!"845"}
!1691 = !DILocation(line: 961, column: 9, scope: !1476)
!1692 = !{!"846"}
!1693 = !DILocation(line: 962, column: 31, scope: !1689)
!1694 = !{!"847"}
!1695 = !DILocation(line: 962, column: 38, scope: !1689)
!1696 = !{!"848"}
!1697 = !{!"849"}
!1698 = !DILocation(line: 962, column: 9, scope: !1689)
!1699 = !{!"850"}
!1700 = !{!"851"}
!1701 = !DILocation(line: 968, column: 11, scope: !1476)
!1702 = !{!"852"}
!1703 = !DILocation(line: 970, column: 5, scope: !1476)
!1704 = !{!"853"}
!1705 = distinct !DISubprogram(name: "mbedtls_ct_size_gt", scope: !1, file: !1, line: 217, type: !195, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1706 = !DILocalVariable(name: "x", arg: 1, scope: !1705, file: !1, line: 217, type: !21)
!1707 = !DILocation(line: 0, scope: !1705)
!1708 = !{!"854"}
!1709 = !DILocalVariable(name: "y", arg: 2, scope: !1705, file: !1, line: 218, type: !21)
!1710 = !{!"855"}
!1711 = !DILocation(line: 221, column: 17, scope: !1705)
!1712 = !{!"856"}
!1713 = !DILocation(line: 221, column: 23, scope: !1705)
!1714 = !{!"857"}
!1715 = !DILocation(line: 221, column: 11, scope: !1705)
!1716 = !{!"858"}
!1717 = !DILocation(line: 221, column: 5, scope: !1705)
!1718 = !{!"859"}
!1719 = distinct !DISubprogram(name: "mbedtls_ct_mem_move_to_left", scope: !1, file: !1, line: 382, type: !1720, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !701, !21, !21}
!1722 = !DILocalVariable(name: "start", arg: 1, scope: !1719, file: !1, line: 382, type: !701)
!1723 = !DILocation(line: 0, scope: !1719)
!1724 = !{!"860"}
!1725 = !DILocalVariable(name: "total", arg: 2, scope: !1719, file: !1, line: 383, type: !21)
!1726 = !{!"861"}
!1727 = !DILocalVariable(name: "offset", arg: 3, scope: !1719, file: !1, line: 384, type: !21)
!1728 = !{!"862"}
!1729 = !DILocalVariable(name: "buf", scope: !1719, file: !1, line: 386, type: !1730)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1731 = !{!"863"}
!1732 = !DILocation(line: 388, column: 15, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1719, file: !1, line: 388, column: 9)
!1734 = !{!"864"}
!1735 = !DILocation(line: 388, column: 9, scope: !1719)
!1736 = !{!"865"}
!1737 = !DILocation(line: 389, column: 9, scope: !1733)
!1738 = !{!"866"}
!1739 = !DILocalVariable(name: "i", scope: !1719, file: !1, line: 387, type: !21)
!1740 = !{!"867"}
!1741 = !DILocation(line: 390, column: 10, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1719, file: !1, line: 390, column: 5)
!1743 = !{!"868"}
!1744 = !DILocation(line: 0, scope: !1742)
!1745 = !{!"869"}
!1746 = !{!"870"}
!1747 = !DILocation(line: 390, column: 19, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1742, file: !1, line: 390, column: 5)
!1749 = !{!"871"}
!1750 = !DILocation(line: 390, column: 5, scope: !1742)
!1751 = !{!"872"}
!1752 = !DILocation(line: 392, column: 52, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1748, file: !1, line: 391, column: 5)
!1754 = !{!"873"}
!1755 = !DILocation(line: 392, column: 26, scope: !1753)
!1756 = !{!"874"}
!1757 = !DILocalVariable(name: "no_op", scope: !1753, file: !1, line: 392, type: !5)
!1758 = !DILocation(line: 0, scope: !1753)
!1759 = !{!"875"}
!1760 = !DILocalVariable(name: "n", scope: !1719, file: !1, line: 387, type: !21)
!1761 = !{!"876"}
!1762 = !DILocation(line: 396, column: 14, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1753, file: !1, line: 396, column: 9)
!1764 = !{!"877"}
!1765 = !DILocation(line: 0, scope: !1763)
!1766 = !{!"878"}
!1767 = !{!"879"}
!1768 = !DILocation(line: 396, column: 31, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1763, file: !1, line: 396, column: 9)
!1770 = !{!"880"}
!1771 = !DILocation(line: 396, column: 23, scope: !1769)
!1772 = !{!"881"}
!1773 = !DILocation(line: 396, column: 9, scope: !1763)
!1774 = !{!"882"}
!1775 = !DILocation(line: 398, column: 37, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1769, file: !1, line: 397, column: 9)
!1777 = !{!"883"}
!1778 = !{!"884"}
!1779 = !DILocalVariable(name: "current", scope: !1776, file: !1, line: 398, type: !19)
!1780 = !DILocation(line: 0, scope: !1776)
!1781 = !{!"885"}
!1782 = !DILocation(line: 399, column: 39, scope: !1776)
!1783 = !{!"886"}
!1784 = !DILocation(line: 399, column: 34, scope: !1776)
!1785 = !{!"887"}
!1786 = !{!"888"}
!1787 = !DILocalVariable(name: "next", scope: !1776, file: !1, line: 399, type: !19)
!1788 = !{!"889"}
!1789 = !DILocation(line: 400, column: 49, scope: !1776)
!1790 = !{!"890"}
!1791 = !DILocation(line: 400, column: 58, scope: !1776)
!1792 = !{!"891"}
!1793 = !DILocation(line: 400, column: 22, scope: !1776)
!1794 = !{!"892"}
!1795 = !{!"893"}
!1796 = !DILocation(line: 400, column: 13, scope: !1776)
!1797 = !{!"894"}
!1798 = !DILocation(line: 400, column: 20, scope: !1776)
!1799 = !{!"895"}
!1800 = !DILocation(line: 401, column: 9, scope: !1776)
!1801 = !{!"896"}
!1802 = !DILocation(line: 396, column: 37, scope: !1769)
!1803 = !{!"897"}
!1804 = !{!"898"}
!1805 = !DILocation(line: 396, column: 9, scope: !1769)
!1806 = distinct !{!1806, !1773, !1807, !97}
!1807 = !DILocation(line: 401, column: 9, scope: !1763)
!1808 = !{!"899"}
!1809 = !DILocation(line: 402, column: 60, scope: !1753)
!1810 = !{!"900"}
!1811 = !DILocation(line: 402, column: 51, scope: !1753)
!1812 = !{!"901"}
!1813 = !{!"902"}
!1814 = !{!"903"}
!1815 = !DILocation(line: 402, column: 24, scope: !1753)
!1816 = !{!"904"}
!1817 = !{!"905"}
!1818 = !DILocation(line: 402, column: 18, scope: !1753)
!1819 = !{!"906"}
!1820 = !DILocation(line: 402, column: 9, scope: !1753)
!1821 = !{!"907"}
!1822 = !DILocation(line: 402, column: 22, scope: !1753)
!1823 = !{!"908"}
!1824 = !DILocation(line: 403, column: 5, scope: !1753)
!1825 = !{!"909"}
!1826 = !DILocation(line: 390, column: 29, scope: !1748)
!1827 = !{!"910"}
!1828 = !{!"911"}
!1829 = !DILocation(line: 390, column: 5, scope: !1748)
!1830 = distinct !{!1830, !1750, !1831, !97}
!1831 = !DILocation(line: 403, column: 5, scope: !1742)
!1832 = !{!"912"}
!1833 = !DILocation(line: 404, column: 1, scope: !1719)
!1834 = !{!"913"}
!1835 = distinct !DISubprogram(name: "mbedtls_mpi_core_lt_ct_wrapper", scope: !25, file: !25, line: 5, type: !1836, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !285, !285, !21}
!1838 = !DILocalVariable(name: "A", arg: 1, scope: !1835, file: !25, line: 5, type: !285)
!1839 = !DILocation(line: 0, scope: !1835)
!1840 = !{!"914"}
!1841 = !DILocalVariable(name: "B", arg: 2, scope: !1835, file: !25, line: 6, type: !285)
!1842 = !{!"915"}
!1843 = !DILocalVariable(name: "limbs", arg: 3, scope: !1835, file: !25, line: 7, type: !21)
!1844 = !{!"916"}
!1845 = !DILocation(line: 11, column: 12, scope: !1835)
!1846 = !{!"917"}
!1847 = !DILocation(line: 11, column: 2, scope: !1835)
!1848 = !{!"918"}
!1849 = !DILocation(line: 12, column: 12, scope: !1835)
!1850 = !{!"919"}
!1851 = !DILocation(line: 12, column: 2, scope: !1835)
!1852 = !{!"920"}
!1853 = !DILocation(line: 13, column: 12, scope: !1835)
!1854 = !{!"921"}
!1855 = !DILocation(line: 13, column: 2, scope: !1835)
!1856 = !{!"922"}
!1857 = !DILocation(line: 18, column: 2, scope: !1835)
!1858 = !{!"923"}
!1859 = !DILocation(line: 20, column: 1, scope: !1835)
!1860 = !{!"924"}
!1861 = distinct !DISubprogram(name: "mbedtls_mpi_core_lt_ct_wrapper_t", scope: !25, file: !25, line: 26, type: !1862, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null}
!1864 = !DILocation(line: 28, column: 30, scope: !1861)
!1865 = !{!"925"}
!1866 = !DILocalVariable(name: "A", scope: !1861, file: !25, line: 28, type: !285)
!1867 = !DILocation(line: 0, scope: !1861)
!1868 = !{!"926"}
!1869 = !DILocation(line: 29, column: 62, scope: !1861)
!1870 = !{!"927"}
!1871 = !DILocalVariable(name: "B", scope: !1861, file: !25, line: 29, type: !285)
!1872 = !{!"928"}
!1873 = !DILocation(line: 30, column: 49, scope: !1861)
!1874 = !{!"929"}
!1875 = !DILocalVariable(name: "limbs", scope: !1861, file: !25, line: 30, type: !21)
!1876 = !{!"930"}
!1877 = !DILocation(line: 32, column: 2, scope: !1861)
!1878 = !{!"931"}
!1879 = !DILocation(line: 33, column: 1, scope: !1861)
!1880 = !{!"932"}
