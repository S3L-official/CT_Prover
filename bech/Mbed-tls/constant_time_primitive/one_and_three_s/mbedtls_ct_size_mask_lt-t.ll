; ModuleID = 'mbedtls_ct_size_mask_lt-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_mpi = type { i32, i64, i64* }

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
  %3 = call i64 @mbedtls_ct_size_mask_lt.2(i64 %0, i64 %1), !dbg !167, !psr.id !168
  %4 = xor i64 %3, -1, !dbg !169, !psr.id !170
  ret i64 %4, !dbg !171, !psr.id !172
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @mbedtls_ct_size_mask_lt.2(i64 %0, i64 %1) #0 !dbg !173 {
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
  %3 = xor i64 %0, %1, !dbg !232, !psr.id !233
  call void @llvm.dbg.value(metadata i64 %3, metadata !234, metadata !DIExpression()), !dbg !228, !psr.id !235
  %4 = sub i64 %0, %1, !dbg !236, !psr.id !237
  %5 = xor i64 %3, -1, !dbg !238, !psr.id !239
  %6 = and i64 %4, %5, !dbg !240, !psr.id !241
  call void @llvm.dbg.value(metadata i64 %6, metadata !242, metadata !DIExpression()), !dbg !228, !psr.id !243
  %7 = and i64 %1, %3, !dbg !244, !psr.id !245
  %8 = or i64 %6, %7, !dbg !246, !psr.id !247
  call void @llvm.dbg.value(metadata i64 %8, metadata !242, metadata !DIExpression()), !dbg !228, !psr.id !248
  %9 = lshr i64 %8, 63, !dbg !249, !psr.id !250
  call void @llvm.dbg.value(metadata i64 %9, metadata !242, metadata !DIExpression()), !dbg !228, !psr.id !251
  %10 = trunc i64 %9 to i32, !dbg !252, !psr.id !253
  ret i32 %10, !dbg !254, !psr.id !255
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_uint_if(i32 %0, i32 %1, i32 %2) #0 !dbg !256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !259, metadata !DIExpression()), !dbg !260, !psr.id !261
  call void @llvm.dbg.value(metadata i32 %1, metadata !262, metadata !DIExpression()), !dbg !260, !psr.id !263
  call void @llvm.dbg.value(metadata i32 %2, metadata !264, metadata !DIExpression()), !dbg !260, !psr.id !265
  %4 = call i32 @mbedtls_ct_uint_mask(i32 %0), !dbg !266, !psr.id !267
  call void @llvm.dbg.value(metadata i32 %4, metadata !268, metadata !DIExpression()), !dbg !260, !psr.id !269
  %5 = and i32 %4, %1, !dbg !270, !psr.id !271
  %6 = xor i32 %4, -1, !dbg !272, !psr.id !273
  %7 = and i32 %6, %2, !dbg !274, !psr.id !275
  %8 = or i32 %5, %7, !dbg !276, !psr.id !277
  ret i32 %8, !dbg !278, !psr.id !279
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_mpi_uint_cond_assign(i64 %0, i64* %1, i64* %2, i8 zeroext %3) #0 !dbg !280 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !285, metadata !DIExpression()), !dbg !286, !psr.id !287
  call void @llvm.dbg.value(metadata i64* %1, metadata !288, metadata !DIExpression()), !dbg !286, !psr.id !289
  call void @llvm.dbg.value(metadata i64* %2, metadata !290, metadata !DIExpression()), !dbg !286, !psr.id !291
  call void @llvm.dbg.value(metadata i8 %3, metadata !292, metadata !DIExpression()), !dbg !286, !psr.id !293
  %5 = zext i8 %3 to i32, !dbg !294, !psr.id !295
  %6 = sub nsw i32 0, %5, !dbg !296, !psr.id !297
  %7 = sext i32 %6 to i64, !dbg !296, !psr.id !298
  call void @llvm.dbg.value(metadata i64 %7, metadata !299, metadata !DIExpression()), !dbg !286, !psr.id !300
  call void @llvm.dbg.value(metadata i64 0, metadata !301, metadata !DIExpression()), !dbg !286, !psr.id !302
  br label %8, !dbg !303, !psr.id !305

8:                                                ; preds = %20, %4
  %.0 = phi i64 [ 0, %4 ], [ %21, %20 ], !dbg !306, !psr.id !307
  call void @llvm.dbg.value(metadata i64 %.0, metadata !301, metadata !DIExpression()), !dbg !286, !psr.id !308
  %9 = icmp ult i64 %.0, %0, !dbg !309, !psr.id !311
  br i1 %9, label %10, label %22, !dbg !312, !psr.id !313

10:                                               ; preds = %8
  %11 = getelementptr inbounds i64, i64* %2, i64 %.0, !dbg !314, !psr.id !315
  %12 = load i64, i64* %11, align 8, !dbg !314, !psr.id !316
  %13 = and i64 %12, %7, !dbg !317, !psr.id !318
  %14 = getelementptr inbounds i64, i64* %1, i64 %.0, !dbg !319, !psr.id !320
  %15 = load i64, i64* %14, align 8, !dbg !319, !psr.id !321
  %16 = xor i64 %7, -1, !dbg !322, !psr.id !323
  %17 = and i64 %15, %16, !dbg !324, !psr.id !325
  %18 = or i64 %13, %17, !dbg !326, !psr.id !327
  %19 = getelementptr inbounds i64, i64* %1, i64 %.0, !dbg !328, !psr.id !329
  store i64 %18, i64* %19, align 8, !dbg !330, !psr.id !331
  br label %20, !dbg !328, !psr.id !332

20:                                               ; preds = %10
  %21 = add i64 %.0, 1, !dbg !333, !psr.id !334
  call void @llvm.dbg.value(metadata i64 %21, metadata !301, metadata !DIExpression()), !dbg !286, !psr.id !335
  br label %8, !dbg !336, !llvm.loop !337, !psr.id !339

22:                                               ; preds = %8
  ret void, !dbg !340, !psr.id !341
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @mbedtls_ct_base64_enc_char(i8 zeroext %0) #0 !dbg !342 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !345, metadata !DIExpression()), !dbg !346, !psr.id !347
  call void @llvm.dbg.value(metadata i8 0, metadata !348, metadata !DIExpression()), !dbg !346, !psr.id !349
  %2 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 0, i8 zeroext 25, i8 zeroext %0), !dbg !350, !psr.id !351
  %3 = zext i8 %2 to i32, !dbg !350, !psr.id !352
  %4 = zext i8 %0 to i32, !dbg !353, !psr.id !354
  %5 = add nsw i32 65, %4, !dbg !355, !psr.id !356
  %6 = and i32 %3, %5, !dbg !357, !psr.id !358
  %7 = zext i8 0 to i32, !dbg !359, !psr.id !360
  %8 = or i32 %7, %6, !dbg !359, !psr.id !361
  %9 = trunc i32 %8 to i8, !dbg !359, !psr.id !362
  call void @llvm.dbg.value(metadata i8 %9, metadata !348, metadata !DIExpression()), !dbg !346, !psr.id !363
  %10 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 26, i8 zeroext 51, i8 zeroext %0), !dbg !364, !psr.id !365
  %11 = zext i8 %10 to i32, !dbg !364, !psr.id !366
  %12 = zext i8 %0 to i32, !dbg !367, !psr.id !368
  %13 = add nsw i32 97, %12, !dbg !369, !psr.id !370
  %14 = sub nsw i32 %13, 26, !dbg !371, !psr.id !372
  %15 = and i32 %11, %14, !dbg !373, !psr.id !374
  %16 = zext i8 %9 to i32, !dbg !375, !psr.id !376
  %17 = or i32 %16, %15, !dbg !375, !psr.id !377
  %18 = trunc i32 %17 to i8, !dbg !375, !psr.id !378
  call void @llvm.dbg.value(metadata i8 %18, metadata !348, metadata !DIExpression()), !dbg !346, !psr.id !379
  %19 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 52, i8 zeroext 61, i8 zeroext %0), !dbg !380, !psr.id !381
  %20 = zext i8 %19 to i32, !dbg !380, !psr.id !382
  %21 = zext i8 %0 to i32, !dbg !383, !psr.id !384
  %22 = add nsw i32 48, %21, !dbg !385, !psr.id !386
  %23 = sub nsw i32 %22, 52, !dbg !387, !psr.id !388
  %24 = and i32 %20, %23, !dbg !389, !psr.id !390
  %25 = zext i8 %18 to i32, !dbg !391, !psr.id !392
  %26 = or i32 %25, %24, !dbg !391, !psr.id !393
  %27 = trunc i32 %26 to i8, !dbg !391, !psr.id !394
  call void @llvm.dbg.value(metadata i8 %27, metadata !348, metadata !DIExpression()), !dbg !346, !psr.id !395
  %28 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 62, i8 zeroext 62, i8 zeroext %0), !dbg !396, !psr.id !397
  %29 = zext i8 %28 to i32, !dbg !396, !psr.id !398
  %30 = and i32 %29, 43, !dbg !399, !psr.id !400
  %31 = zext i8 %27 to i32, !dbg !401, !psr.id !402
  %32 = or i32 %31, %30, !dbg !401, !psr.id !403
  %33 = trunc i32 %32 to i8, !dbg !401, !psr.id !404
  call void @llvm.dbg.value(metadata i8 %33, metadata !348, metadata !DIExpression()), !dbg !346, !psr.id !405
  %34 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 63, i8 zeroext 63, i8 zeroext %0), !dbg !406, !psr.id !407
  %35 = zext i8 %34 to i32, !dbg !406, !psr.id !408
  %36 = and i32 %35, 47, !dbg !409, !psr.id !410
  %37 = zext i8 %33 to i32, !dbg !411, !psr.id !412
  %38 = or i32 %37, %36, !dbg !411, !psr.id !413
  %39 = trunc i32 %38 to i8, !dbg !411, !psr.id !414
  call void @llvm.dbg.value(metadata i8 %39, metadata !348, metadata !DIExpression()), !dbg !346, !psr.id !415
  ret i8 %39, !dbg !416, !psr.id !417
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2) #0 !dbg !418 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !421, metadata !DIExpression()), !dbg !422, !psr.id !423
  call void @llvm.dbg.value(metadata i8 %1, metadata !424, metadata !DIExpression()), !dbg !422, !psr.id !425
  call void @llvm.dbg.value(metadata i8 %2, metadata !426, metadata !DIExpression()), !dbg !422, !psr.id !427
  %4 = zext i8 %2 to i32, !dbg !428, !psr.id !429
  %5 = zext i8 %0 to i32, !dbg !430, !psr.id !431
  %6 = sub i32 %4, %5, !dbg !432, !psr.id !433
  %7 = lshr i32 %6, 8, !dbg !434, !psr.id !435
  call void @llvm.dbg.value(metadata i32 %7, metadata !436, metadata !DIExpression()), !dbg !422, !psr.id !437
  %8 = zext i8 %1 to i32, !dbg !438, !psr.id !439
  %9 = zext i8 %2 to i32, !dbg !440, !psr.id !441
  %10 = sub i32 %8, %9, !dbg !442, !psr.id !443
  %11 = lshr i32 %10, 8, !dbg !444, !psr.id !445
  call void @llvm.dbg.value(metadata i32 %11, metadata !446, metadata !DIExpression()), !dbg !422, !psr.id !447
  %12 = or i32 %7, %11, !dbg !448, !psr.id !449
  %13 = xor i32 %12, -1, !dbg !450, !psr.id !451
  %14 = and i32 %13, 255, !dbg !452, !psr.id !453
  %15 = trunc i32 %14 to i8, !dbg !454, !psr.id !455
  ret i8 %15, !dbg !456, !psr.id !457
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @mbedtls_ct_base64_dec_value(i8 zeroext %0) #0 !dbg !458 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !462, metadata !DIExpression()), !dbg !463, !psr.id !464
  call void @llvm.dbg.value(metadata i8 0, metadata !465, metadata !DIExpression()), !dbg !463, !psr.id !466
  %2 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 65, i8 zeroext 90, i8 zeroext %0), !dbg !467, !psr.id !468
  %3 = zext i8 %2 to i32, !dbg !467, !psr.id !469
  %4 = zext i8 %0 to i32, !dbg !470, !psr.id !471
  %5 = sub nsw i32 %4, 65, !dbg !472, !psr.id !473
  %6 = add nsw i32 %5, 0, !dbg !474, !psr.id !475
  %7 = add nsw i32 %6, 1, !dbg !476, !psr.id !477
  %8 = and i32 %3, %7, !dbg !478, !psr.id !479
  %9 = zext i8 0 to i32, !dbg !480, !psr.id !481
  %10 = or i32 %9, %8, !dbg !480, !psr.id !482
  %11 = trunc i32 %10 to i8, !dbg !480, !psr.id !483
  call void @llvm.dbg.value(metadata i8 %11, metadata !465, metadata !DIExpression()), !dbg !463, !psr.id !484
  %12 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 97, i8 zeroext 122, i8 zeroext %0), !dbg !485, !psr.id !486
  %13 = zext i8 %12 to i32, !dbg !485, !psr.id !487
  %14 = zext i8 %0 to i32, !dbg !488, !psr.id !489
  %15 = sub nsw i32 %14, 97, !dbg !490, !psr.id !491
  %16 = add nsw i32 %15, 26, !dbg !492, !psr.id !493
  %17 = add nsw i32 %16, 1, !dbg !494, !psr.id !495
  %18 = and i32 %13, %17, !dbg !496, !psr.id !497
  %19 = zext i8 %11 to i32, !dbg !498, !psr.id !499
  %20 = or i32 %19, %18, !dbg !498, !psr.id !500
  %21 = trunc i32 %20 to i8, !dbg !498, !psr.id !501
  call void @llvm.dbg.value(metadata i8 %21, metadata !465, metadata !DIExpression()), !dbg !463, !psr.id !502
  %22 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 48, i8 zeroext 57, i8 zeroext %0), !dbg !503, !psr.id !504
  %23 = zext i8 %22 to i32, !dbg !503, !psr.id !505
  %24 = zext i8 %0 to i32, !dbg !506, !psr.id !507
  %25 = sub nsw i32 %24, 48, !dbg !508, !psr.id !509
  %26 = add nsw i32 %25, 52, !dbg !510, !psr.id !511
  %27 = add nsw i32 %26, 1, !dbg !512, !psr.id !513
  %28 = and i32 %23, %27, !dbg !514, !psr.id !515
  %29 = zext i8 %21 to i32, !dbg !516, !psr.id !517
  %30 = or i32 %29, %28, !dbg !516, !psr.id !518
  %31 = trunc i32 %30 to i8, !dbg !516, !psr.id !519
  call void @llvm.dbg.value(metadata i8 %31, metadata !465, metadata !DIExpression()), !dbg !463, !psr.id !520
  %32 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 43, i8 zeroext 43, i8 zeroext %0), !dbg !521, !psr.id !522
  %33 = zext i8 %32 to i32, !dbg !521, !psr.id !523
  %34 = zext i8 %0 to i32, !dbg !524, !psr.id !525
  %35 = sub nsw i32 %34, 43, !dbg !526, !psr.id !527
  %36 = add nsw i32 %35, 62, !dbg !528, !psr.id !529
  %37 = add nsw i32 %36, 1, !dbg !530, !psr.id !531
  %38 = and i32 %33, %37, !dbg !532, !psr.id !533
  %39 = zext i8 %31 to i32, !dbg !534, !psr.id !535
  %40 = or i32 %39, %38, !dbg !534, !psr.id !536
  %41 = trunc i32 %40 to i8, !dbg !534, !psr.id !537
  call void @llvm.dbg.value(metadata i8 %41, metadata !465, metadata !DIExpression()), !dbg !463, !psr.id !538
  %42 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 47, i8 zeroext 47, i8 zeroext %0), !dbg !539, !psr.id !540
  %43 = zext i8 %42 to i32, !dbg !539, !psr.id !541
  %44 = zext i8 %0 to i32, !dbg !542, !psr.id !543
  %45 = sub nsw i32 %44, 47, !dbg !544, !psr.id !545
  %46 = add nsw i32 %45, 63, !dbg !546, !psr.id !547
  %47 = add nsw i32 %46, 1, !dbg !548, !psr.id !549
  %48 = and i32 %43, %47, !dbg !550, !psr.id !551
  %49 = zext i8 %41 to i32, !dbg !552, !psr.id !553
  %50 = or i32 %49, %48, !dbg !552, !psr.id !554
  %51 = trunc i32 %50 to i8, !dbg !552, !psr.id !555
  call void @llvm.dbg.value(metadata i8 %51, metadata !465, metadata !DIExpression()), !dbg !463, !psr.id !556
  %52 = zext i8 %51 to i32, !dbg !557, !psr.id !558
  %53 = sub nsw i32 %52, 1, !dbg !559, !psr.id !560
  %54 = trunc i32 %53 to i8, !dbg !561, !psr.id !562
  ret i8 %54, !dbg !563, !psr.id !564
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_memcpy_if_eq(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 !dbg !565 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !571, metadata !DIExpression()), !dbg !572, !psr.id !573
  call void @llvm.dbg.value(metadata i8* %1, metadata !574, metadata !DIExpression()), !dbg !572, !psr.id !575
  call void @llvm.dbg.value(metadata i64 %2, metadata !576, metadata !DIExpression()), !dbg !572, !psr.id !577
  call void @llvm.dbg.value(metadata i64 %3, metadata !578, metadata !DIExpression()), !dbg !572, !psr.id !579
  call void @llvm.dbg.value(metadata i64 %4, metadata !580, metadata !DIExpression()), !dbg !572, !psr.id !581
  %6 = call i32 @mbedtls_ct_size_bool_eq(i64 %3, i64 %4), !dbg !582, !psr.id !583
  %7 = zext i32 %6 to i64, !dbg !582, !psr.id !584
  call void @llvm.dbg.value(metadata i64 %7, metadata !585, metadata !DIExpression()), !dbg !572, !psr.id !586
  %8 = call i64 @mbedtls_ct_size_mask(i64 %7), !dbg !587, !psr.id !588
  %9 = trunc i64 %8 to i8, !dbg !589, !psr.id !590
  call void @llvm.dbg.value(metadata i8 %9, metadata !591, metadata !DIExpression()), !dbg !572, !psr.id !592
  call void @llvm.dbg.value(metadata i64 0, metadata !593, metadata !DIExpression()), !dbg !595, !psr.id !596
  br label %10, !dbg !597, !psr.id !598

10:                                               ; preds = %27, %5
  %.0 = phi i64 [ 0, %5 ], [ %28, %27 ], !dbg !595, !psr.id !599
  call void @llvm.dbg.value(metadata i64 %.0, metadata !593, metadata !DIExpression()), !dbg !595, !psr.id !600
  %11 = icmp ult i64 %.0, %2, !dbg !601, !psr.id !603
  br i1 %11, label %12, label %29, !dbg !604, !psr.id !605

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !606, !psr.id !607
  %14 = load i8, i8* %13, align 1, !dbg !606, !psr.id !608
  %15 = zext i8 %14 to i32, !dbg !606, !psr.id !609
  %16 = zext i8 %9 to i32, !dbg !610, !psr.id !611
  %17 = and i32 %15, %16, !dbg !612, !psr.id !613
  %18 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !614, !psr.id !615
  %19 = load i8, i8* %18, align 1, !dbg !614, !psr.id !616
  %20 = zext i8 %19 to i32, !dbg !614, !psr.id !617
  %21 = zext i8 %9 to i32, !dbg !618, !psr.id !619
  %22 = xor i32 %21, -1, !dbg !620, !psr.id !621
  %23 = and i32 %20, %22, !dbg !622, !psr.id !623
  %24 = or i32 %17, %23, !dbg !624, !psr.id !625
  %25 = trunc i32 %24 to i8, !dbg !626, !psr.id !627
  %26 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !628, !psr.id !629
  store i8 %25, i8* %26, align 1, !dbg !630, !psr.id !631
  br label %27, !dbg !628, !psr.id !632

27:                                               ; preds = %12
  %28 = add i64 %.0, 1, !dbg !633, !psr.id !634
  call void @llvm.dbg.value(metadata i64 %28, metadata !593, metadata !DIExpression()), !dbg !595, !psr.id !635
  br label %10, !dbg !636, !llvm.loop !637, !psr.id !639

29:                                               ; preds = %10
  ret void, !dbg !640, !psr.id !641
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_memcpy_offset(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 !dbg !642 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !645, metadata !DIExpression()), !dbg !646, !psr.id !647
  call void @llvm.dbg.value(metadata i8* %1, metadata !648, metadata !DIExpression()), !dbg !646, !psr.id !649
  call void @llvm.dbg.value(metadata i64 %2, metadata !650, metadata !DIExpression()), !dbg !646, !psr.id !651
  call void @llvm.dbg.value(metadata i64 %3, metadata !652, metadata !DIExpression()), !dbg !646, !psr.id !653
  call void @llvm.dbg.value(metadata i64 %4, metadata !654, metadata !DIExpression()), !dbg !646, !psr.id !655
  call void @llvm.dbg.value(metadata i64 %5, metadata !656, metadata !DIExpression()), !dbg !646, !psr.id !657
  call void @llvm.dbg.value(metadata i64 %3, metadata !658, metadata !DIExpression()), !dbg !646, !psr.id !659
  br label %7, !dbg !660, !psr.id !662

7:                                                ; preds = %11, %6
  %.0 = phi i64 [ %3, %6 ], [ %12, %11 ], !dbg !663, !psr.id !664
  call void @llvm.dbg.value(metadata i64 %.0, metadata !658, metadata !DIExpression()), !dbg !646, !psr.id !665
  %8 = icmp ule i64 %.0, %4, !dbg !666, !psr.id !668
  br i1 %8, label %9, label %13, !dbg !669, !psr.id !670

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !671, !psr.id !673
  call void @mbedtls_ct_memcpy_if_eq(i8* %0, i8* %10, i64 %5, i64 %.0, i64 %2), !dbg !674, !psr.id !675
  br label %11, !dbg !676, !psr.id !677

11:                                               ; preds = %9
  %12 = add i64 %.0, 1, !dbg !678, !psr.id !679
  call void @llvm.dbg.value(metadata i64 %12, metadata !658, metadata !DIExpression()), !dbg !646, !psr.id !680
  br label %7, !dbg !681, !llvm.loop !682, !psr.id !684

13:                                               ; preds = %7
  ret void, !dbg !685, !psr.id !686
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_hmac(%struct.mbedtls_md_context_t* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, i64 %6, i8* %7) #0 !dbg !687 {
  %9 = alloca [64 x i8], align 16, !psr.id !702
  %10 = alloca %struct.mbedtls_md_context_t, align 8, !psr.id !703
  call void @llvm.dbg.value(metadata %struct.mbedtls_md_context_t* %0, metadata !704, metadata !DIExpression()), !dbg !705, !psr.id !706
  call void @llvm.dbg.value(metadata i8* %1, metadata !707, metadata !DIExpression()), !dbg !705, !psr.id !708
  call void @llvm.dbg.value(metadata i64 %2, metadata !709, metadata !DIExpression()), !dbg !705, !psr.id !710
  call void @llvm.dbg.value(metadata i8* %3, metadata !711, metadata !DIExpression()), !dbg !705, !psr.id !712
  call void @llvm.dbg.value(metadata i64 %4, metadata !713, metadata !DIExpression()), !dbg !705, !psr.id !714
  call void @llvm.dbg.value(metadata i64 %5, metadata !715, metadata !DIExpression()), !dbg !705, !psr.id !716
  call void @llvm.dbg.value(metadata i64 %6, metadata !717, metadata !DIExpression()), !dbg !705, !psr.id !718
  call void @llvm.dbg.value(metadata i8* %7, metadata !719, metadata !DIExpression()), !dbg !705, !psr.id !720
  %11 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !721, !psr.id !722
  %12 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %11, align 8, !dbg !721, !psr.id !723
  %13 = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* %12), !dbg !724, !psr.id !725
  call void @llvm.dbg.value(metadata i32 %13, metadata !726, metadata !DIExpression()), !dbg !705, !psr.id !729
  %14 = icmp eq i32 %13, 5, !dbg !730, !psr.id !731
  %15 = zext i1 %14 to i64, !dbg !732, !psr.id !733
  %16 = select i1 %14, i32 128, i32 64, !dbg !732, !psr.id !734
  %17 = sext i32 %16 to i64, !dbg !732, !psr.id !735
  call void @llvm.dbg.value(metadata i64 %17, metadata !736, metadata !DIExpression()), !dbg !705, !psr.id !737
  %18 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 2, !dbg !738, !psr.id !739
  %19 = load i8*, i8** %18, align 8, !dbg !738, !psr.id !740
  call void @llvm.dbg.value(metadata i8* %19, metadata !741, metadata !DIExpression()), !dbg !705, !psr.id !743
  %20 = getelementptr inbounds i8, i8* %19, i64 %17, !dbg !744, !psr.id !745
  call void @llvm.dbg.value(metadata i8* %20, metadata !746, metadata !DIExpression()), !dbg !705, !psr.id !747
  %21 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !748, !psr.id !749
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %21, align 8, !dbg !748, !psr.id !750
  %23 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* %22), !dbg !751, !psr.id !752
  %24 = zext i8 %23 to i64, !dbg !751, !psr.id !753
  call void @llvm.dbg.value(metadata i64 %24, metadata !754, metadata !DIExpression()), !dbg !705, !psr.id !755
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !756, metadata !DIExpression()), !dbg !760, !psr.id !761
  call void @llvm.dbg.declare(metadata %struct.mbedtls_md_context_t* %10, metadata !762, metadata !DIExpression()), !dbg !763, !psr.id !764
  call void @llvm.dbg.value(metadata i32 -110, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !766
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* %10), !dbg !767, !psr.id !768
  br label %25, !dbg !769, !psr.id !770

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !771, !psr.id !773
  %27 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %26, align 8, !dbg !771, !psr.id !774
  %28 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* %10, %struct.mbedtls_md_info_t* %27, i32 0), !dbg !771, !psr.id !775
  call void @llvm.dbg.value(metadata i32 %28, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !776
  %29 = icmp ne i32 %28, 0, !dbg !777, !psr.id !779
  br i1 %29, label %30, label %31, !dbg !771, !psr.id !780

30:                                               ; preds = %25
  br label %112, !dbg !777, !psr.id !781

31:                                               ; preds = %25
  br label %32, !dbg !771, !psr.id !782

32:                                               ; preds = %31
  br label %33, !dbg !783, !psr.id !784

33:                                               ; preds = %32
  %34 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %1, i64 %2), !dbg !785, !psr.id !787
  call void @llvm.dbg.value(metadata i32 %34, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !788
  %35 = icmp ne i32 %34, 0, !dbg !789, !psr.id !791
  br i1 %35, label %36, label %37, !dbg !785, !psr.id !792

36:                                               ; preds = %33
  br label %112, !dbg !789, !psr.id !793

37:                                               ; preds = %33
  br label %38, !dbg !785, !psr.id !794

38:                                               ; preds = %37
  br label %39, !dbg !795, !psr.id !796

39:                                               ; preds = %38
  %40 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %3, i64 %5), !dbg !797, !psr.id !799
  call void @llvm.dbg.value(metadata i32 %40, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !800
  %41 = icmp ne i32 %40, 0, !dbg !801, !psr.id !803
  br i1 %41, label %42, label %43, !dbg !797, !psr.id !804

42:                                               ; preds = %39
  br label %112, !dbg !801, !psr.id !805

43:                                               ; preds = %39
  br label %44, !dbg !797, !psr.id !806

44:                                               ; preds = %43
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 33, i64 %24, i1 false), !dbg !807, !psr.id !808
  call void @llvm.dbg.value(metadata i64 %5, metadata !809, metadata !DIExpression()), !dbg !705, !psr.id !810
  br label %45, !dbg !811, !psr.id !813

45:                                               ; preds = %72, %44
  %.01 = phi i64 [ %5, %44 ], [ %73, %72 ], !dbg !814, !psr.id !815
  call void @llvm.dbg.value(metadata i64 %.01, metadata !809, metadata !DIExpression()), !dbg !705, !psr.id !816
  %46 = icmp ule i64 %.01, %6, !dbg !817, !psr.id !819
  br i1 %46, label %47, label %74, !dbg !820, !psr.id !821

47:                                               ; preds = %45
  br label %48, !dbg !822, !psr.id !824

48:                                               ; preds = %47
  %49 = call i32 @mbedtls_md_clone(%struct.mbedtls_md_context_t* %10, %struct.mbedtls_md_context_t* %0), !dbg !825, !psr.id !827
  call void @llvm.dbg.value(metadata i32 %49, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !828
  %50 = icmp ne i32 %49, 0, !dbg !829, !psr.id !831
  br i1 %50, label %51, label %52, !dbg !825, !psr.id !832

51:                                               ; preds = %48
  br label %112, !dbg !829, !psr.id !833

52:                                               ; preds = %48
  br label %53, !dbg !825, !psr.id !834

53:                                               ; preds = %52
  br label %54, !dbg !835, !psr.id !836

54:                                               ; preds = %53
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !837, !psr.id !839
  %56 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %10, i8* %55), !dbg !837, !psr.id !840
  call void @llvm.dbg.value(metadata i32 %56, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !841
  %57 = icmp ne i32 %56, 0, !dbg !842, !psr.id !844
  br i1 %57, label %58, label %59, !dbg !837, !psr.id !845

58:                                               ; preds = %54
  br label %112, !dbg !842, !psr.id !846

59:                                               ; preds = %54
  br label %60, !dbg !837, !psr.id !847

60:                                               ; preds = %59
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !848, !psr.id !849
  call void @mbedtls_ct_memcpy_if_eq(i8* %7, i8* %61, i64 %24, i64 %.01, i64 %4), !dbg !850, !psr.id !851
  %62 = icmp ult i64 %.01, %6, !dbg !852, !psr.id !854
  br i1 %62, label %63, label %71, !dbg !855, !psr.id !856

63:                                               ; preds = %60
  br label %64, !dbg !857, !psr.id !858

64:                                               ; preds = %63
  %65 = getelementptr inbounds i8, i8* %3, i64 %.01, !dbg !859, !psr.id !861
  %66 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %65, i64 1), !dbg !859, !psr.id !862
  call void @llvm.dbg.value(metadata i32 %66, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !863
  %67 = icmp ne i32 %66, 0, !dbg !864, !psr.id !866
  br i1 %67, label %68, label %69, !dbg !859, !psr.id !867

68:                                               ; preds = %64
  br label %112, !dbg !864, !psr.id !868

69:                                               ; preds = %64
  br label %70, !dbg !859, !psr.id !869

70:                                               ; preds = %69
  br label %71, !dbg !859, !psr.id !870

71:                                               ; preds = %70, %60
  br label %72, !dbg !871, !psr.id !872

72:                                               ; preds = %71
  %73 = add i64 %.01, 1, !dbg !873, !psr.id !874
  call void @llvm.dbg.value(metadata i64 %73, metadata !809, metadata !DIExpression()), !dbg !705, !psr.id !875
  br label %45, !dbg !876, !llvm.loop !877, !psr.id !879

74:                                               ; preds = %45
  br label %75, !dbg !880, !psr.id !881

75:                                               ; preds = %74
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !882, !psr.id !884
  %77 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %0, i8* %76), !dbg !882, !psr.id !885
  call void @llvm.dbg.value(metadata i32 %77, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !886
  %78 = icmp ne i32 %77, 0, !dbg !887, !psr.id !889
  br i1 %78, label %79, label %80, !dbg !882, !psr.id !890

79:                                               ; preds = %75
  br label %112, !dbg !887, !psr.id !891

80:                                               ; preds = %75
  br label %81, !dbg !882, !psr.id !892

81:                                               ; preds = %80
  br label %82, !dbg !893, !psr.id !894

82:                                               ; preds = %81
  %83 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* %0), !dbg !895, !psr.id !897
  call void @llvm.dbg.value(metadata i32 %83, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !898
  %84 = icmp ne i32 %83, 0, !dbg !899, !psr.id !901
  br i1 %84, label %85, label %86, !dbg !895, !psr.id !902

85:                                               ; preds = %82
  br label %112, !dbg !899, !psr.id !903

86:                                               ; preds = %82
  br label %87, !dbg !895, !psr.id !904

87:                                               ; preds = %86
  br label %88, !dbg !905, !psr.id !906

88:                                               ; preds = %87
  %89 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %20, i64 %17), !dbg !907, !psr.id !909
  call void @llvm.dbg.value(metadata i32 %89, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !910
  %90 = icmp ne i32 %89, 0, !dbg !911, !psr.id !913
  br i1 %90, label %91, label %92, !dbg !907, !psr.id !914

91:                                               ; preds = %88
  br label %112, !dbg !911, !psr.id !915

92:                                               ; preds = %88
  br label %93, !dbg !907, !psr.id !916

93:                                               ; preds = %92
  br label %94, !dbg !917, !psr.id !918

94:                                               ; preds = %93
  %95 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %7, i64 %24), !dbg !919, !psr.id !921
  call void @llvm.dbg.value(metadata i32 %95, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !922
  %96 = icmp ne i32 %95, 0, !dbg !923, !psr.id !925
  br i1 %96, label %97, label %98, !dbg !919, !psr.id !926

97:                                               ; preds = %94
  br label %112, !dbg !923, !psr.id !927

98:                                               ; preds = %94
  br label %99, !dbg !919, !psr.id !928

99:                                               ; preds = %98
  br label %100, !dbg !929, !psr.id !930

100:                                              ; preds = %99
  %101 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %0, i8* %7), !dbg !931, !psr.id !933
  call void @llvm.dbg.value(metadata i32 %101, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !934
  %102 = icmp ne i32 %101, 0, !dbg !935, !psr.id !937
  br i1 %102, label %103, label %104, !dbg !931, !psr.id !938

103:                                              ; preds = %100
  br label %112, !dbg !935, !psr.id !939

104:                                              ; preds = %100
  br label %105, !dbg !931, !psr.id !940

105:                                              ; preds = %104
  br label %106, !dbg !941, !psr.id !942

106:                                              ; preds = %105
  %107 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* %0), !dbg !943, !psr.id !945
  call void @llvm.dbg.value(metadata i32 %107, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !946
  %108 = icmp ne i32 %107, 0, !dbg !947, !psr.id !949
  br i1 %108, label %109, label %110, !dbg !943, !psr.id !950

109:                                              ; preds = %106
  br label %112, !dbg !947, !psr.id !951

110:                                              ; preds = %106
  br label %111, !dbg !943, !psr.id !952

111:                                              ; preds = %110
  br label %112, !dbg !943, !psr.id !953

112:                                              ; preds = %111, %109, %103, %97, %91, %85, %79, %68, %58, %51, %42, %36, %30
  %.0 = phi i32 [ %28, %30 ], [ %34, %36 ], [ %40, %42 ], [ %49, %51 ], [ %56, %58 ], [ %66, %68 ], [ %77, %79 ], [ %83, %85 ], [ %89, %91 ], [ %95, %97 ], [ %101, %103 ], [ %107, %109 ], [ %107, %111 ], !dbg !705, !psr.id !954
  call void @llvm.dbg.value(metadata i32 %.0, metadata !765, metadata !DIExpression()), !dbg !705, !psr.id !955
  call void @llvm.dbg.label(metadata !956), !dbg !957, !psr.id !958
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* %10), !dbg !959, !psr.id !960
  ret i32 %.0, !dbg !961, !psr.id !962
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
define dso_local i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i8 zeroext %2) #0 !dbg !963 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !975, metadata !DIExpression()), !dbg !976, !psr.id !977
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !978, metadata !DIExpression()), !dbg !976, !psr.id !979
  call void @llvm.dbg.value(metadata i8 %2, metadata !980, metadata !DIExpression()), !dbg !976, !psr.id !981
  call void @llvm.dbg.value(metadata i32 0, metadata !982, metadata !DIExpression()), !dbg !976, !psr.id !983
  br label %4, !dbg !984, !psr.id !985

4:                                                ; preds = %3
  br label %5, !dbg !986, !psr.id !988

5:                                                ; preds = %4
  br label %6, !dbg !989, !psr.id !990

6:                                                ; preds = %5
  br label %7, !dbg !991, !psr.id !993

7:                                                ; preds = %6
  %8 = zext i8 %2 to i64, !dbg !994, !psr.id !995
  %9 = call i64 @mbedtls_ct_mpi_uint_mask(i64 %8), !dbg !996, !psr.id !997
  call void @llvm.dbg.value(metadata i64 %9, metadata !998, metadata !DIExpression()), !dbg !976, !psr.id !999
  br label %10, !dbg !1000, !psr.id !1001

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1002, !psr.id !1005
  %12 = load i64, i64* %11, align 8, !dbg !1002, !psr.id !1006
  %13 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %0, i64 %12), !dbg !1002, !psr.id !1007
  call void @llvm.dbg.value(metadata i32 %13, metadata !982, metadata !DIExpression()), !dbg !976, !psr.id !1008
  %14 = icmp ne i32 %13, 0, !dbg !1002, !psr.id !1009
  br i1 %14, label %15, label %16, !dbg !1010, !psr.id !1011

15:                                               ; preds = %10
  br label %46, !dbg !1002, !psr.id !1012

16:                                               ; preds = %10
  br label %17, !dbg !1010, !psr.id !1013

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1014, !psr.id !1015
  %19 = load i32, i32* %18, align 8, !dbg !1014, !psr.id !1016
  %20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1017, !psr.id !1018
  %21 = load i32, i32* %20, align 8, !dbg !1017, !psr.id !1019
  %22 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %19, i32 %21), !dbg !1020, !psr.id !1021
  %23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1022, !psr.id !1023
  store i32 %22, i32* %23, align 8, !dbg !1024, !psr.id !1025
  %24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1026, !psr.id !1027
  %25 = load i64*, i64** %24, align 8, !dbg !1026, !psr.id !1028
  %26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1029, !psr.id !1030
  %27 = load i64*, i64** %26, align 8, !dbg !1029, !psr.id !1031
  %28 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1032, !psr.id !1033
  %29 = load i64, i64* %28, align 8, !dbg !1032, !psr.id !1034
  call void @mbedtls_mpi_core_cond_assign(i64* %25, i64* %27, i64 %29, i8 zeroext %2), !dbg !1035, !psr.id !1036
  %30 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1037, !psr.id !1039
  %31 = load i64, i64* %30, align 8, !dbg !1037, !psr.id !1040
  call void @llvm.dbg.value(metadata i64 %31, metadata !1041, metadata !DIExpression()), !dbg !1042, !psr.id !1043
  br label %32, !dbg !1044, !psr.id !1045

32:                                               ; preds = %43, %17
  %.0 = phi i64 [ %31, %17 ], [ %44, %43 ], !dbg !1042, !psr.id !1046
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1041, metadata !DIExpression()), !dbg !1042, !psr.id !1047
  %33 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1048, !psr.id !1050
  %34 = load i64, i64* %33, align 8, !dbg !1048, !psr.id !1051
  %35 = icmp ult i64 %.0, %34, !dbg !1052, !psr.id !1053
  br i1 %35, label %36, label %45, !dbg !1054, !psr.id !1055

36:                                               ; preds = %32
  %37 = xor i64 %9, -1, !dbg !1056, !psr.id !1057
  %38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1058, !psr.id !1059
  %39 = load i64*, i64** %38, align 8, !dbg !1058, !psr.id !1060
  %40 = getelementptr inbounds i64, i64* %39, i64 %.0, !dbg !1061, !psr.id !1062
  %41 = load i64, i64* %40, align 8, !dbg !1063, !psr.id !1064
  %42 = and i64 %41, %37, !dbg !1063, !psr.id !1065
  store i64 %42, i64* %40, align 8, !dbg !1063, !psr.id !1066
  br label %43, !dbg !1061, !psr.id !1067

43:                                               ; preds = %36
  %44 = add i64 %.0, 1, !dbg !1068, !psr.id !1069
  call void @llvm.dbg.value(metadata i64 %44, metadata !1041, metadata !DIExpression()), !dbg !1042, !psr.id !1070
  br label %32, !dbg !1071, !llvm.loop !1072, !psr.id !1074

45:                                               ; preds = %32
  br label %46, !dbg !1073, !psr.id !1075

46:                                               ; preds = %45, %15
  call void @llvm.dbg.label(metadata !1076), !dbg !1077, !psr.id !1078
  ret i32 %13, !dbg !1079, !psr.id !1080
}

declare dso_local i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @mbedtls_ct_cond_select_sign(i8 zeroext %0, i32 %1, i32 %2) #0 !dbg !1081 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1084, metadata !DIExpression()), !dbg !1085, !psr.id !1086
  call void @llvm.dbg.value(metadata i32 %1, metadata !1087, metadata !DIExpression()), !dbg !1085, !psr.id !1088
  call void @llvm.dbg.value(metadata i32 %2, metadata !1089, metadata !DIExpression()), !dbg !1085, !psr.id !1090
  %4 = add nsw i32 %1, 1, !dbg !1091, !psr.id !1092
  call void @llvm.dbg.value(metadata i32 %4, metadata !1093, metadata !DIExpression()), !dbg !1085, !psr.id !1094
  %5 = add nsw i32 %2, 1, !dbg !1095, !psr.id !1096
  call void @llvm.dbg.value(metadata i32 %5, metadata !1097, metadata !DIExpression()), !dbg !1085, !psr.id !1098
  %6 = zext i8 %0 to i32, !dbg !1099, !psr.id !1100
  %7 = shl i32 %6, 1, !dbg !1101, !psr.id !1102
  call void @llvm.dbg.value(metadata i32 %7, metadata !1103, metadata !DIExpression()), !dbg !1085, !psr.id !1104
  %8 = xor i32 %7, -1, !dbg !1105, !psr.id !1106
  %9 = and i32 %5, %8, !dbg !1107, !psr.id !1108
  %10 = and i32 %4, %7, !dbg !1109, !psr.id !1110
  %11 = or i32 %9, %10, !dbg !1111, !psr.id !1112
  call void @llvm.dbg.value(metadata i32 %11, metadata !1113, metadata !DIExpression()), !dbg !1085, !psr.id !1114
  %12 = sub nsw i32 %11, 1, !dbg !1115, !psr.id !1116
  ret i32 %12, !dbg !1117, !psr.id !1118
}

declare dso_local void @mbedtls_mpi_core_cond_assign(i64*, i64*, i64, i8 zeroext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i8 zeroext %2) #0 !dbg !1119 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !1122, metadata !DIExpression()), !dbg !1123, !psr.id !1124
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !1125, metadata !DIExpression()), !dbg !1123, !psr.id !1126
  call void @llvm.dbg.value(metadata i8 %2, metadata !1127, metadata !DIExpression()), !dbg !1123, !psr.id !1128
  call void @llvm.dbg.value(metadata i32 0, metadata !1129, metadata !DIExpression()), !dbg !1123, !psr.id !1130
  br label %4, !dbg !1131, !psr.id !1132

4:                                                ; preds = %3
  br label %5, !dbg !1133, !psr.id !1135

5:                                                ; preds = %4
  br label %6, !dbg !1136, !psr.id !1137

6:                                                ; preds = %5
  br label %7, !dbg !1138, !psr.id !1140

7:                                                ; preds = %6
  %8 = icmp eq %struct.mbedtls_mpi* %0, %1, !dbg !1141, !psr.id !1143
  br i1 %8, label %9, label %10, !dbg !1144, !psr.id !1145

9:                                                ; preds = %7
  br label %46, !dbg !1146, !psr.id !1147

10:                                               ; preds = %7
  br label %11, !dbg !1148, !psr.id !1149

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1150, !psr.id !1153
  %13 = load i64, i64* %12, align 8, !dbg !1150, !psr.id !1154
  %14 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %0, i64 %13), !dbg !1150, !psr.id !1155
  call void @llvm.dbg.value(metadata i32 %14, metadata !1129, metadata !DIExpression()), !dbg !1123, !psr.id !1156
  %15 = icmp ne i32 %14, 0, !dbg !1150, !psr.id !1157
  br i1 %15, label %16, label %17, !dbg !1158, !psr.id !1159

16:                                               ; preds = %11
  br label %45, !dbg !1150, !psr.id !1160

17:                                               ; preds = %11
  br label %18, !dbg !1158, !psr.id !1161

18:                                               ; preds = %17
  br label %19, !dbg !1162, !psr.id !1163

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1164, !psr.id !1167
  %21 = load i64, i64* %20, align 8, !dbg !1164, !psr.id !1168
  %22 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %1, i64 %21), !dbg !1164, !psr.id !1169
  call void @llvm.dbg.value(metadata i32 %22, metadata !1129, metadata !DIExpression()), !dbg !1123, !psr.id !1170
  %23 = icmp ne i32 %22, 0, !dbg !1164, !psr.id !1171
  br i1 %23, label %24, label %25, !dbg !1172, !psr.id !1173

24:                                               ; preds = %19
  br label %45, !dbg !1164, !psr.id !1174

25:                                               ; preds = %19
  br label %26, !dbg !1172, !psr.id !1175

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1176, !psr.id !1177
  %28 = load i32, i32* %27, align 8, !dbg !1176, !psr.id !1178
  call void @llvm.dbg.value(metadata i32 %28, metadata !1179, metadata !DIExpression()), !dbg !1123, !psr.id !1180
  %29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1181, !psr.id !1182
  %30 = load i32, i32* %29, align 8, !dbg !1181, !psr.id !1183
  %31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1184, !psr.id !1185
  %32 = load i32, i32* %31, align 8, !dbg !1184, !psr.id !1186
  %33 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %30, i32 %32), !dbg !1187, !psr.id !1188
  %34 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1189, !psr.id !1190
  store i32 %33, i32* %34, align 8, !dbg !1191, !psr.id !1192
  %35 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1193, !psr.id !1194
  %36 = load i32, i32* %35, align 8, !dbg !1193, !psr.id !1195
  %37 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %28, i32 %36), !dbg !1196, !psr.id !1197
  %38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1198, !psr.id !1199
  store i32 %37, i32* %38, align 8, !dbg !1200, !psr.id !1201
  %39 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1202, !psr.id !1203
  %40 = load i64*, i64** %39, align 8, !dbg !1202, !psr.id !1204
  %41 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1205, !psr.id !1206
  %42 = load i64*, i64** %41, align 8, !dbg !1205, !psr.id !1207
  %43 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1208, !psr.id !1209
  %44 = load i64, i64* %43, align 8, !dbg !1208, !psr.id !1210
  call void @mbedtls_mpi_core_cond_swap(i64* %40, i64* %42, i64 %44, i8 zeroext %2), !dbg !1211, !psr.id !1212
  br label %45, !dbg !1211, !psr.id !1213

45:                                               ; preds = %26, %24, %16
  %.01 = phi i32 [ %14, %16 ], [ %22, %24 ], [ %22, %26 ], !dbg !1123, !psr.id !1214
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1129, metadata !DIExpression()), !dbg !1123, !psr.id !1215
  call void @llvm.dbg.label(metadata !1216), !dbg !1217, !psr.id !1218
  br label %46, !dbg !1219, !psr.id !1220

46:                                               ; preds = %45, %9
  %.0 = phi i32 [ 0, %9 ], [ %.01, %45 ], !dbg !1123, !psr.id !1221
  ret i32 %.0, !dbg !1222, !psr.id !1223
}

declare dso_local void @mbedtls_mpi_core_cond_swap(i64*, i64*, i64, i8 zeroext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_core_lt_ct(i64* %0, i64* %1, i64 %2) #0 !dbg !1224 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1227, metadata !DIExpression()), !dbg !1228, !psr.id !1229
  call void @llvm.dbg.value(metadata i64* %1, metadata !1230, metadata !DIExpression()), !dbg !1228, !psr.id !1231
  call void @llvm.dbg.value(metadata i64 %2, metadata !1232, metadata !DIExpression()), !dbg !1228, !psr.id !1233
  call void @llvm.dbg.value(metadata i32 0, metadata !1234, metadata !DIExpression()), !dbg !1228, !psr.id !1235
  call void @llvm.dbg.value(metadata i32 0, metadata !1236, metadata !DIExpression()), !dbg !1228, !psr.id !1237
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()), !dbg !1228, !psr.id !1239
  call void @llvm.dbg.value(metadata i64 %2, metadata !1240, metadata !DIExpression()), !dbg !1242, !psr.id !1243
  br label %4, !dbg !1244, !psr.id !1245

4:                                                ; preds = %26, %3
  %.02 = phi i32 [ 0, %3 ], [ %24, %26 ], !dbg !1228, !psr.id !1246
  %.01 = phi i32 [ 0, %3 ], [ %25, %26 ], !dbg !1228, !psr.id !1247
  %.0 = phi i64 [ %2, %3 ], [ %27, %26 ], !dbg !1242, !psr.id !1248
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1240, metadata !DIExpression()), !dbg !1242, !psr.id !1249
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1234, metadata !DIExpression()), !dbg !1228, !psr.id !1250
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1238, metadata !DIExpression()), !dbg !1228, !psr.id !1251
  %5 = icmp ugt i64 %.0, 0, !dbg !1252, !psr.id !1254
  br i1 %5, label %6, label %28, !dbg !1255, !psr.id !1256

6:                                                ; preds = %4
  %7 = sub i64 %.0, 1, !dbg !1257, !psr.id !1259
  %8 = getelementptr inbounds i64, i64* %1, i64 %7, !dbg !1260, !psr.id !1261
  %9 = load i64, i64* %8, align 8, !dbg !1260, !psr.id !1262
  %10 = sub i64 %.0, 1, !dbg !1263, !psr.id !1264
  %11 = getelementptr inbounds i64, i64* %0, i64 %10, !dbg !1265, !psr.id !1266
  %12 = load i64, i64* %11, align 8, !dbg !1265, !psr.id !1267
  %13 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %9, i64 %12), !dbg !1268, !psr.id !1269
  call void @llvm.dbg.value(metadata i32 %13, metadata !1236, metadata !DIExpression()), !dbg !1228, !psr.id !1270
  %14 = or i32 %.01, %13, !dbg !1271, !psr.id !1272
  call void @llvm.dbg.value(metadata i32 %14, metadata !1234, metadata !DIExpression()), !dbg !1228, !psr.id !1273
  %15 = sub i64 %.0, 1, !dbg !1274, !psr.id !1275
  %16 = getelementptr inbounds i64, i64* %0, i64 %15, !dbg !1276, !psr.id !1277
  %17 = load i64, i64* %16, align 8, !dbg !1276, !psr.id !1278
  %18 = sub i64 %.0, 1, !dbg !1279, !psr.id !1280
  %19 = getelementptr inbounds i64, i64* %1, i64 %18, !dbg !1281, !psr.id !1282
  %20 = load i64, i64* %19, align 8, !dbg !1281, !psr.id !1283
  %21 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %17, i64 %20), !dbg !1284, !psr.id !1285
  call void @llvm.dbg.value(metadata i32 %21, metadata !1236, metadata !DIExpression()), !dbg !1228, !psr.id !1286
  %22 = sub i32 1, %14, !dbg !1287, !psr.id !1288
  %23 = and i32 %21, %22, !dbg !1289, !psr.id !1290
  %24 = or i32 %.02, %23, !dbg !1291, !psr.id !1292
  call void @llvm.dbg.value(metadata i32 %24, metadata !1238, metadata !DIExpression()), !dbg !1228, !psr.id !1293
  %25 = or i32 %14, %21, !dbg !1294, !psr.id !1295
  call void @llvm.dbg.value(metadata i32 %25, metadata !1234, metadata !DIExpression()), !dbg !1228, !psr.id !1296
  br label %26, !dbg !1297, !psr.id !1298

26:                                               ; preds = %6
  %27 = add i64 %.0, -1, !dbg !1299, !psr.id !1300
  call void @llvm.dbg.value(metadata i64 %27, metadata !1240, metadata !DIExpression()), !dbg !1242, !psr.id !1301
  br label %4, !dbg !1302, !llvm.loop !1303, !psr.id !1305

28:                                               ; preds = %4
  ret i32 %.02, !dbg !1306, !psr.id !1307
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i32* %2) #0 !dbg !1308 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !1312, metadata !DIExpression()), !dbg !1313, !psr.id !1314
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !1315, metadata !DIExpression()), !dbg !1313, !psr.id !1316
  call void @llvm.dbg.value(metadata i32* %2, metadata !1317, metadata !DIExpression()), !dbg !1313, !psr.id !1318
  br label %4, !dbg !1319, !psr.id !1320

4:                                                ; preds = %3
  br label %5, !dbg !1321, !psr.id !1323

5:                                                ; preds = %4
  br label %6, !dbg !1324, !psr.id !1325

6:                                                ; preds = %5
  br label %7, !dbg !1326, !psr.id !1328

7:                                                ; preds = %6
  br label %8, !dbg !1329, !psr.id !1330

8:                                                ; preds = %7
  br label %9, !dbg !1331, !psr.id !1333

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1334, !psr.id !1336
  %11 = load i64, i64* %10, align 8, !dbg !1334, !psr.id !1337
  %12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1338, !psr.id !1339
  %13 = load i64, i64* %12, align 8, !dbg !1338, !psr.id !1340
  %14 = icmp ne i64 %11, %13, !dbg !1341, !psr.id !1342
  br i1 %14, label %15, label %16, !dbg !1343, !psr.id !1344

15:                                               ; preds = %9
  br label %70, !dbg !1345, !psr.id !1346

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1347, !psr.id !1348
  %18 = load i32, i32* %17, align 8, !dbg !1347, !psr.id !1349
  %19 = and i32 %18, 2, !dbg !1350, !psr.id !1351
  %20 = ashr i32 %19, 1, !dbg !1352, !psr.id !1353
  call void @llvm.dbg.value(metadata i32 %20, metadata !1354, metadata !DIExpression()), !dbg !1313, !psr.id !1355
  %21 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1356, !psr.id !1357
  %22 = load i32, i32* %21, align 8, !dbg !1356, !psr.id !1358
  %23 = and i32 %22, 2, !dbg !1359, !psr.id !1360
  %24 = ashr i32 %23, 1, !dbg !1361, !psr.id !1362
  call void @llvm.dbg.value(metadata i32 %24, metadata !1363, metadata !DIExpression()), !dbg !1313, !psr.id !1364
  %25 = xor i32 %20, %24, !dbg !1365, !psr.id !1366
  call void @llvm.dbg.value(metadata i32 %25, metadata !1367, metadata !DIExpression()), !dbg !1313, !psr.id !1368
  %26 = and i32 %25, %20, !dbg !1369, !psr.id !1370
  store i32 %26, i32* %2, align 4, !dbg !1371, !psr.id !1372
  call void @llvm.dbg.value(metadata i32 %25, metadata !1373, metadata !DIExpression()), !dbg !1313, !psr.id !1374
  %27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1375, !psr.id !1377
  %28 = load i64, i64* %27, align 8, !dbg !1375, !psr.id !1378
  call void @llvm.dbg.value(metadata i64 %28, metadata !1379, metadata !DIExpression()), !dbg !1313, !psr.id !1380
  br label %29, !dbg !1381, !psr.id !1382

29:                                               ; preds = %67, %16
  %.02 = phi i64 [ %28, %16 ], [ %68, %67 ], !dbg !1383, !psr.id !1384
  %.01 = phi i32 [ %25, %16 ], [ %66, %67 ], !dbg !1313, !psr.id !1385
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1373, metadata !DIExpression()), !dbg !1313, !psr.id !1386
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1379, metadata !DIExpression()), !dbg !1313, !psr.id !1387
  %30 = icmp ugt i64 %.02, 0, !dbg !1388, !psr.id !1390
  br i1 %30, label %31, label %69, !dbg !1391, !psr.id !1392

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1393, !psr.id !1395
  %33 = load i64*, i64** %32, align 8, !dbg !1393, !psr.id !1396
  %34 = sub i64 %.02, 1, !dbg !1397, !psr.id !1398
  %35 = getelementptr inbounds i64, i64* %33, i64 %34, !dbg !1399, !psr.id !1400
  %36 = load i64, i64* %35, align 8, !dbg !1399, !psr.id !1401
  %37 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1402, !psr.id !1403
  %38 = load i64*, i64** %37, align 8, !dbg !1402, !psr.id !1404
  %39 = sub i64 %.02, 1, !dbg !1405, !psr.id !1406
  %40 = getelementptr inbounds i64, i64* %38, i64 %39, !dbg !1407, !psr.id !1408
  %41 = load i64, i64* %40, align 8, !dbg !1407, !psr.id !1409
  %42 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %36, i64 %41), !dbg !1410, !psr.id !1411
  call void @llvm.dbg.value(metadata i32 %42, metadata !1367, metadata !DIExpression()), !dbg !1313, !psr.id !1412
  %43 = sub i32 1, %.01, !dbg !1413, !psr.id !1414
  %44 = and i32 %42, %43, !dbg !1415, !psr.id !1416
  %45 = and i32 %44, %20, !dbg !1417, !psr.id !1418
  %46 = load i32, i32* %2, align 4, !dbg !1419, !psr.id !1420
  %47 = or i32 %46, %45, !dbg !1419, !psr.id !1421
  store i32 %47, i32* %2, align 4, !dbg !1419, !psr.id !1422
  %48 = or i32 %.01, %42, !dbg !1423, !psr.id !1424
  call void @llvm.dbg.value(metadata i32 %48, metadata !1373, metadata !DIExpression()), !dbg !1313, !psr.id !1425
  %49 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1426, !psr.id !1427
  %50 = load i64*, i64** %49, align 8, !dbg !1426, !psr.id !1428
  %51 = sub i64 %.02, 1, !dbg !1429, !psr.id !1430
  %52 = getelementptr inbounds i64, i64* %50, i64 %51, !dbg !1431, !psr.id !1432
  %53 = load i64, i64* %52, align 8, !dbg !1431, !psr.id !1433
  %54 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1434, !psr.id !1435
  %55 = load i64*, i64** %54, align 8, !dbg !1434, !psr.id !1436
  %56 = sub i64 %.02, 1, !dbg !1437, !psr.id !1438
  %57 = getelementptr inbounds i64, i64* %55, i64 %56, !dbg !1439, !psr.id !1440
  %58 = load i64, i64* %57, align 8, !dbg !1439, !psr.id !1441
  %59 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %53, i64 %58), !dbg !1442, !psr.id !1443
  call void @llvm.dbg.value(metadata i32 %59, metadata !1367, metadata !DIExpression()), !dbg !1313, !psr.id !1444
  %60 = sub i32 1, %48, !dbg !1445, !psr.id !1446
  %61 = and i32 %59, %60, !dbg !1447, !psr.id !1448
  %62 = sub i32 1, %20, !dbg !1449, !psr.id !1450
  %63 = and i32 %61, %62, !dbg !1451, !psr.id !1452
  %64 = load i32, i32* %2, align 4, !dbg !1453, !psr.id !1454
  %65 = or i32 %64, %63, !dbg !1453, !psr.id !1455
  store i32 %65, i32* %2, align 4, !dbg !1453, !psr.id !1456
  %66 = or i32 %48, %59, !dbg !1457, !psr.id !1458
  call void @llvm.dbg.value(metadata i32 %66, metadata !1373, metadata !DIExpression()), !dbg !1313, !psr.id !1459
  br label %67, !dbg !1460, !psr.id !1461

67:                                               ; preds = %31
  %68 = add i64 %.02, -1, !dbg !1462, !psr.id !1463
  call void @llvm.dbg.value(metadata i64 %68, metadata !1379, metadata !DIExpression()), !dbg !1313, !psr.id !1464
  br label %29, !dbg !1465, !llvm.loop !1466, !psr.id !1468

69:                                               ; preds = %29
  br label %70, !dbg !1469, !psr.id !1470

70:                                               ; preds = %69, %15
  %.0 = phi i32 [ -4, %15 ], [ 0, %69 ], !dbg !1313, !psr.id !1471
  ret i32 %.0, !dbg !1472, !psr.id !1473
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_rsaes_pkcs1_v15_unpadding(i8* %0, i64 %1, i8* %2, i64 %3, i64* %4) #0 !dbg !1474 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1478, metadata !DIExpression()), !dbg !1479, !psr.id !1480
  call void @llvm.dbg.value(metadata i64 %1, metadata !1481, metadata !DIExpression()), !dbg !1479, !psr.id !1482
  call void @llvm.dbg.value(metadata i8* %2, metadata !1483, metadata !DIExpression()), !dbg !1479, !psr.id !1484
  call void @llvm.dbg.value(metadata i64 %3, metadata !1485, metadata !DIExpression()), !dbg !1479, !psr.id !1486
  call void @llvm.dbg.value(metadata i64* %4, metadata !1487, metadata !DIExpression()), !dbg !1479, !psr.id !1488
  call void @llvm.dbg.value(metadata i32 -110, metadata !1489, metadata !DIExpression()), !dbg !1479, !psr.id !1490
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1479, !psr.id !1492
  call void @llvm.dbg.value(metadata i32 0, metadata !1493, metadata !DIExpression()), !dbg !1479, !psr.id !1494
  call void @llvm.dbg.value(metadata i8 0, metadata !1495, metadata !DIExpression()), !dbg !1479, !psr.id !1496
  call void @llvm.dbg.value(metadata i64 0, metadata !1497, metadata !DIExpression()), !dbg !1479, !psr.id !1498
  %6 = sub i64 %1, 11, !dbg !1499, !psr.id !1500
  %7 = icmp ugt i64 %3, %6, !dbg !1501, !psr.id !1502
  br i1 %7, label %8, label %10, !dbg !1503, !psr.id !1504

8:                                                ; preds = %5
  %9 = sub i64 %1, 11, !dbg !1505, !psr.id !1506
  br label %11, !dbg !1503, !psr.id !1507

10:                                               ; preds = %5
  br label %11, !dbg !1503, !psr.id !1508

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ %3, %10 ], !dbg !1503, !psr.id !1509
  call void @llvm.dbg.value(metadata i64 %12, metadata !1510, metadata !DIExpression()), !dbg !1479, !psr.id !1511
  %13 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1512, !psr.id !1513
  %14 = load i8, i8* %13, align 1, !dbg !1512, !psr.id !1514
  %15 = zext i8 %14 to i32, !dbg !1512, !psr.id !1515
  %16 = or i32 0, %15, !dbg !1516, !psr.id !1517
  call void @llvm.dbg.value(metadata i32 %16, metadata !1493, metadata !DIExpression()), !dbg !1479, !psr.id !1518
  %17 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1519, !psr.id !1520
  %18 = load i8, i8* %17, align 1, !dbg !1519, !psr.id !1521
  %19 = zext i8 %18 to i32, !dbg !1519, !psr.id !1522
  %20 = xor i32 %19, 2, !dbg !1523, !psr.id !1524
  %21 = or i32 %16, %20, !dbg !1525, !psr.id !1526
  call void @llvm.dbg.value(metadata i32 %21, metadata !1493, metadata !DIExpression()), !dbg !1479, !psr.id !1527
  call void @llvm.dbg.value(metadata i64 2, metadata !1528, metadata !DIExpression()), !dbg !1479, !psr.id !1529
  br label %22, !dbg !1530, !psr.id !1532

22:                                               ; preds = %50, %11
  %.02 = phi i64 [ 2, %11 ], [ %51, %50 ], !dbg !1533, !psr.id !1534
  %.01 = phi i64 [ 0, %11 ], [ %49, %50 ], !dbg !1479, !psr.id !1535
  %.0 = phi i8 [ 0, %11 ], [ %39, %50 ], !dbg !1479, !psr.id !1536
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1495, metadata !DIExpression()), !dbg !1479, !psr.id !1537
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1491, metadata !DIExpression()), !dbg !1479, !psr.id !1538
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1528, metadata !DIExpression()), !dbg !1479, !psr.id !1539
  %23 = icmp ult i64 %.02, %1, !dbg !1540, !psr.id !1542
  br i1 %23, label %24, label %52, !dbg !1543, !psr.id !1544

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, i8* %0, i64 %.02, !dbg !1545, !psr.id !1547
  %26 = load i8, i8* %25, align 1, !dbg !1545, !psr.id !1548
  %27 = zext i8 %26 to i32, !dbg !1545, !psr.id !1549
  %28 = getelementptr inbounds i8, i8* %0, i64 %.02, !dbg !1550, !psr.id !1551
  %29 = load i8, i8* %28, align 1, !dbg !1550, !psr.id !1552
  %30 = zext i8 %29 to i32, !dbg !1550, !psr.id !1553
  %31 = sub nsw i32 0, %30, !dbg !1554, !psr.id !1555
  %32 = trunc i32 %31 to i8, !dbg !1556, !psr.id !1557
  %33 = zext i8 %32 to i32, !dbg !1556, !psr.id !1558
  %34 = or i32 %27, %33, !dbg !1559, !psr.id !1560
  %35 = ashr i32 %34, 7, !dbg !1561, !psr.id !1562
  %36 = xor i32 %35, 1, !dbg !1563, !psr.id !1564
  %37 = zext i8 %.0 to i32, !dbg !1565, !psr.id !1566
  %38 = or i32 %37, %36, !dbg !1565, !psr.id !1567
  %39 = trunc i32 %38 to i8, !dbg !1565, !psr.id !1568
  call void @llvm.dbg.value(metadata i8 %39, metadata !1495, metadata !DIExpression()), !dbg !1479, !psr.id !1569
  %40 = zext i8 %39 to i32, !dbg !1570, !psr.id !1571
  %41 = zext i8 %39 to i32, !dbg !1572, !psr.id !1573
  %42 = sub nsw i32 0, %41, !dbg !1574, !psr.id !1575
  %43 = trunc i32 %42 to i8, !dbg !1576, !psr.id !1577
  %44 = zext i8 %43 to i32, !dbg !1576, !psr.id !1578
  %45 = or i32 %40, %44, !dbg !1579, !psr.id !1580
  %46 = ashr i32 %45, 7, !dbg !1581, !psr.id !1582
  %47 = xor i32 %46, 1, !dbg !1583, !psr.id !1584
  %48 = sext i32 %47 to i64, !dbg !1585, !psr.id !1586
  %49 = add i64 %.01, %48, !dbg !1587, !psr.id !1588
  call void @llvm.dbg.value(metadata i64 %49, metadata !1491, metadata !DIExpression()), !dbg !1479, !psr.id !1589
  br label %50, !dbg !1590, !psr.id !1591

50:                                               ; preds = %24
  %51 = add i64 %.02, 1, !dbg !1592, !psr.id !1593
  call void @llvm.dbg.value(metadata i64 %51, metadata !1528, metadata !DIExpression()), !dbg !1479, !psr.id !1594
  br label %22, !dbg !1595, !llvm.loop !1596, !psr.id !1598

52:                                               ; preds = %22
  %53 = zext i8 %.0 to i32, !dbg !1599, !psr.id !1600
  %54 = call i32 @mbedtls_ct_uint_if(i32 %53, i32 0, i32 1), !dbg !1601, !psr.id !1602
  %55 = or i32 %21, %54, !dbg !1603, !psr.id !1604
  call void @llvm.dbg.value(metadata i32 %55, metadata !1493, metadata !DIExpression()), !dbg !1479, !psr.id !1605
  %56 = call i32 @mbedtls_ct_size_gt(i64 8, i64 %.01), !dbg !1606, !psr.id !1607
  %57 = or i32 %55, %56, !dbg !1608, !psr.id !1609
  call void @llvm.dbg.value(metadata i32 %57, metadata !1493, metadata !DIExpression()), !dbg !1479, !psr.id !1610
  %58 = trunc i64 %12 to i32, !dbg !1611, !psr.id !1612
  %59 = sub i64 %1, %.01, !dbg !1613, !psr.id !1614
  %60 = sub i64 %59, 3, !dbg !1615, !psr.id !1616
  %61 = trunc i64 %60 to i32, !dbg !1617, !psr.id !1618
  %62 = call i32 @mbedtls_ct_uint_if(i32 %57, i32 %58, i32 %61), !dbg !1619, !psr.id !1620
  %63 = zext i32 %62 to i64, !dbg !1619, !psr.id !1621
  call void @llvm.dbg.value(metadata i64 %63, metadata !1497, metadata !DIExpression()), !dbg !1479, !psr.id !1622
  %64 = call i32 @mbedtls_ct_size_gt(i64 %63, i64 %12), !dbg !1623, !psr.id !1624
  call void @llvm.dbg.value(metadata i32 %64, metadata !1625, metadata !DIExpression()), !dbg !1479, !psr.id !1626
  %65 = call i32 @mbedtls_ct_uint_if(i32 %64, i32 17408, i32 0), !dbg !1627, !psr.id !1628
  %66 = call i32 @mbedtls_ct_uint_if(i32 %57, i32 16640, i32 %65), !dbg !1629, !psr.id !1630
  %67 = sub nsw i32 0, %66, !dbg !1631, !psr.id !1632
  call void @llvm.dbg.value(metadata i32 %67, metadata !1489, metadata !DIExpression()), !dbg !1479, !psr.id !1633
  %68 = or i32 %57, %64, !dbg !1634, !psr.id !1635
  %69 = call i32 @mbedtls_ct_uint_mask(i32 %68), !dbg !1636, !psr.id !1637
  call void @llvm.dbg.value(metadata i32 %69, metadata !1493, metadata !DIExpression()), !dbg !1479, !psr.id !1638
  call void @llvm.dbg.value(metadata i64 11, metadata !1528, metadata !DIExpression()), !dbg !1479, !psr.id !1639
  br label %70, !dbg !1640, !psr.id !1642

70:                                               ; preds = %79, %52
  %.1 = phi i64 [ 11, %52 ], [ %80, %79 ], !dbg !1643, !psr.id !1644
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1528, metadata !DIExpression()), !dbg !1479, !psr.id !1645
  %71 = icmp ult i64 %.1, %1, !dbg !1646, !psr.id !1648
  br i1 %71, label %72, label %81, !dbg !1649, !psr.id !1650

72:                                               ; preds = %70
  %73 = xor i32 %69, -1, !dbg !1651, !psr.id !1652
  %74 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !1653, !psr.id !1654
  %75 = load i8, i8* %74, align 1, !dbg !1655, !psr.id !1656
  %76 = zext i8 %75 to i32, !dbg !1655, !psr.id !1657
  %77 = and i32 %76, %73, !dbg !1655, !psr.id !1658
  %78 = trunc i32 %77 to i8, !dbg !1655, !psr.id !1659
  store i8 %78, i8* %74, align 1, !dbg !1655, !psr.id !1660
  br label %79, !dbg !1653, !psr.id !1661

79:                                               ; preds = %72
  %80 = add i64 %.1, 1, !dbg !1662, !psr.id !1663
  call void @llvm.dbg.value(metadata i64 %80, metadata !1528, metadata !DIExpression()), !dbg !1479, !psr.id !1664
  br label %70, !dbg !1665, !llvm.loop !1666, !psr.id !1668

81:                                               ; preds = %70
  %82 = trunc i64 %12 to i32, !dbg !1669, !psr.id !1670
  %83 = trunc i64 %63 to i32, !dbg !1671, !psr.id !1672
  %84 = call i32 @mbedtls_ct_uint_if(i32 %64, i32 %82, i32 %83), !dbg !1673, !psr.id !1674
  %85 = zext i32 %84 to i64, !dbg !1673, !psr.id !1675
  call void @llvm.dbg.value(metadata i64 %85, metadata !1497, metadata !DIExpression()), !dbg !1479, !psr.id !1676
  %86 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !1677, !psr.id !1678
  %87 = sub i64 0, %12, !dbg !1679, !psr.id !1680
  %88 = getelementptr inbounds i8, i8* %86, i64 %87, !dbg !1679, !psr.id !1681
  %89 = sub i64 %12, %85, !dbg !1682, !psr.id !1683
  call void @mbedtls_ct_mem_move_to_left(i8* %88, i64 %12, i64 %89), !dbg !1684, !psr.id !1685
  %90 = icmp ne i64 %3, 0, !dbg !1686, !psr.id !1688
  br i1 %90, label %91, label %95, !dbg !1689, !psr.id !1690

91:                                               ; preds = %81
  %92 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !1691, !psr.id !1692
  %93 = sub i64 0, %12, !dbg !1693, !psr.id !1694
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !1693, !psr.id !1695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %94, i64 %12, i1 false), !dbg !1696, !psr.id !1697
  br label %95, !dbg !1696, !psr.id !1698

95:                                               ; preds = %91, %81
  store i64 %85, i64* %4, align 8, !dbg !1699, !psr.id !1700
  ret i32 %67, !dbg !1701, !psr.id !1702
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mbedtls_ct_size_gt(i64 %0, i64 %1) #0 !dbg !1703 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1704, metadata !DIExpression()), !dbg !1705, !psr.id !1706
  call void @llvm.dbg.value(metadata i64 %1, metadata !1707, metadata !DIExpression()), !dbg !1705, !psr.id !1708
  %3 = sub i64 %1, %0, !dbg !1709, !psr.id !1710
  %4 = lshr i64 %3, 63, !dbg !1711, !psr.id !1712
  %5 = trunc i64 %4 to i32, !dbg !1713, !psr.id !1714
  ret i32 %5, !dbg !1715, !psr.id !1716
}

; Function Attrs: noinline nounwind uwtable
define internal void @mbedtls_ct_mem_move_to_left(i8* %0, i64 %1, i64 %2) #0 !dbg !1717 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1720, metadata !DIExpression()), !dbg !1721, !psr.id !1722
  call void @llvm.dbg.value(metadata i64 %1, metadata !1723, metadata !DIExpression()), !dbg !1721, !psr.id !1724
  call void @llvm.dbg.value(metadata i64 %2, metadata !1725, metadata !DIExpression()), !dbg !1721, !psr.id !1726
  call void @llvm.dbg.value(metadata i8* %0, metadata !1727, metadata !DIExpression()), !dbg !1721, !psr.id !1729
  %4 = icmp eq i64 %1, 0, !dbg !1730, !psr.id !1732
  br i1 %4, label %5, label %6, !dbg !1733, !psr.id !1734

5:                                                ; preds = %3
  br label %39, !dbg !1735, !psr.id !1736

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 0, metadata !1737, metadata !DIExpression()), !dbg !1721, !psr.id !1738
  br label %7, !dbg !1739, !psr.id !1741

7:                                                ; preds = %37, %6
  %.01 = phi i64 [ 0, %6 ], [ %38, %37 ], !dbg !1742, !psr.id !1743
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1737, metadata !DIExpression()), !dbg !1721, !psr.id !1744
  %8 = icmp ult i64 %.01, %1, !dbg !1745, !psr.id !1747
  br i1 %8, label %9, label %39, !dbg !1748, !psr.id !1749

9:                                                ; preds = %7
  %10 = sub i64 %1, %2, !dbg !1750, !psr.id !1752
  %11 = call i32 @mbedtls_ct_size_gt(i64 %10, i64 %.01), !dbg !1753, !psr.id !1754
  call void @llvm.dbg.value(metadata i32 %11, metadata !1755, metadata !DIExpression()), !dbg !1756, !psr.id !1757
  call void @llvm.dbg.value(metadata i64 0, metadata !1758, metadata !DIExpression()), !dbg !1721, !psr.id !1759
  br label %12, !dbg !1760, !psr.id !1762

12:                                               ; preds = %26, %9
  %.0 = phi i64 [ 0, %9 ], [ %27, %26 ], !dbg !1763, !psr.id !1764
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1758, metadata !DIExpression()), !dbg !1721, !psr.id !1765
  %13 = sub i64 %1, 1, !dbg !1766, !psr.id !1768
  %14 = icmp ult i64 %.0, %13, !dbg !1769, !psr.id !1770
  br i1 %14, label %15, label %28, !dbg !1771, !psr.id !1772

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1773, !psr.id !1775
  %17 = load volatile i8, i8* %16, align 1, !dbg !1773, !psr.id !1776
  call void @llvm.dbg.value(metadata i8 %17, metadata !1777, metadata !DIExpression()), !dbg !1778, !psr.id !1779
  %18 = add i64 %.0, 1, !dbg !1780, !psr.id !1781
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !1782, !psr.id !1783
  %20 = load volatile i8, i8* %19, align 1, !dbg !1782, !psr.id !1784
  call void @llvm.dbg.value(metadata i8 %20, metadata !1785, metadata !DIExpression()), !dbg !1778, !psr.id !1786
  %21 = zext i8 %17 to i32, !dbg !1787, !psr.id !1788
  %22 = zext i8 %20 to i32, !dbg !1789, !psr.id !1790
  %23 = call i32 @mbedtls_ct_uint_if(i32 %11, i32 %21, i32 %22), !dbg !1791, !psr.id !1792
  %24 = trunc i32 %23 to i8, !dbg !1791, !psr.id !1793
  %25 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1794, !psr.id !1795
  store volatile i8 %24, i8* %25, align 1, !dbg !1796, !psr.id !1797
  br label %26, !dbg !1798, !psr.id !1799

26:                                               ; preds = %15
  %27 = add i64 %.0, 1, !dbg !1800, !psr.id !1801
  call void @llvm.dbg.value(metadata i64 %27, metadata !1758, metadata !DIExpression()), !dbg !1721, !psr.id !1802
  br label %12, !dbg !1803, !llvm.loop !1804, !psr.id !1806

28:                                               ; preds = %12
  %29 = sub i64 %1, 1, !dbg !1807, !psr.id !1808
  %30 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !1809, !psr.id !1810
  %31 = load volatile i8, i8* %30, align 1, !dbg !1809, !psr.id !1811
  %32 = zext i8 %31 to i32, !dbg !1809, !psr.id !1812
  %33 = call i32 @mbedtls_ct_uint_if(i32 %11, i32 %32, i32 0), !dbg !1813, !psr.id !1814
  %34 = trunc i32 %33 to i8, !dbg !1813, !psr.id !1815
  %35 = sub i64 %1, 1, !dbg !1816, !psr.id !1817
  %36 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !1818, !psr.id !1819
  store volatile i8 %34, i8* %36, align 1, !dbg !1820, !psr.id !1821
  br label %37, !dbg !1822, !psr.id !1823

37:                                               ; preds = %28
  %38 = add i64 %.01, 1, !dbg !1824, !psr.id !1825
  call void @llvm.dbg.value(metadata i64 %38, metadata !1737, metadata !DIExpression()), !dbg !1721, !psr.id !1826
  br label %7, !dbg !1827, !llvm.loop !1828, !psr.id !1830

39:                                               ; preds = %7, %5
  ret void, !dbg !1831, !psr.id !1832
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_size_mask_lt_wrapper(i64 %0, i64 %1) #0 !dbg !1833 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1836, metadata !DIExpression()), !dbg !1837, !psr.id !1838
  call void @llvm.dbg.value(metadata i64 %1, metadata !1839, metadata !DIExpression()), !dbg !1837, !psr.id !1840
  %3 = call i32 (i64, i64, ...) bitcast (i32 (...)* @mbedtls_ct_size_mask_lt to i32 (i64, i64, ...)*)(i64 %0, i64 %1), !dbg !1841, !psr.id !1842
  ret i32 undef, !dbg !1843, !psr.id !1844
}

declare dso_local i32 @mbedtls_ct_size_mask_lt(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_size_mask_lt_wrapper_t() #0 !dbg !1845 {
  %1 = call i64 (...) @getlen(), !dbg !1848, !psr.id !1849
  call void @llvm.dbg.value(metadata i64 %1, metadata !1850, metadata !DIExpression()), !dbg !1851, !psr.id !1852
  %2 = call i64 (...) @getlen2(), !dbg !1853, !psr.id !1854
  call void @llvm.dbg.value(metadata i64 %2, metadata !1855, metadata !DIExpression()), !dbg !1851, !psr.id !1856
  %3 = call i32 (i64, i64, ...) bitcast (i32 (...)* @mbedtls_ct_size_mask_lt to i32 (i64, i64, ...)*)(i64 %1, i64 %2), !dbg !1857, !psr.id !1858
  ret void, !dbg !1859, !psr.id !1860
}

declare dso_local i64 @getlen(...) #2

declare dso_local i64 @getlen2(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @mbedtls_ct_size_mask_lt_wrapper_t()
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
!1 = !DIFile(filename: "../mbedtls/library/constant_time.c", directory: "/home/luwei/bech-back/Mbed-tls/constant_time_primitive")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 55, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../mbedtls/include/mbedtls/md.h", directory: "/home/luwei/bech-back/Mbed-tls/constant_time_primitive")
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
!25 = !DIFile(filename: "mbedtls_ct_size_mask_lt.c", directory: "/home/luwei/bech-back/Mbed-tls/constant_time_primitive")
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
!141 = !DIFile(filename: "../mbedtls/include/mbedtls/bignum.h", directory: "/home/luwei/bech-back/Mbed-tls/constant_time_primitive")
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
!234 = !DILocalVariable(name: "cond", scope: !223, file: !1, line: 232, type: !140)
!235 = !{!"82"}
!236 = !DILocation(line: 242, column: 15, scope: !223)
!237 = !{!"83"}
!238 = !DILocation(line: 242, column: 23, scope: !223)
!239 = !{!"84"}
!240 = !DILocation(line: 242, column: 21, scope: !223)
!241 = !{!"85"}
!242 = !DILocalVariable(name: "ret", scope: !223, file: !1, line: 231, type: !140)
!243 = !{!"86"}
!244 = !DILocation(line: 248, column: 14, scope: !223)
!245 = !{!"87"}
!246 = !DILocation(line: 248, column: 9, scope: !223)
!247 = !{!"88"}
!248 = !{!"89"}
!249 = !DILocation(line: 251, column: 15, scope: !223)
!250 = !{!"90"}
!251 = !{!"91"}
!252 = !DILocation(line: 253, column: 12, scope: !223)
!253 = !{!"92"}
!254 = !DILocation(line: 253, column: 5, scope: !223)
!255 = !{!"93"}
!256 = distinct !DISubprogram(name: "mbedtls_ct_uint_if", scope: !1, file: !1, line: 258, type: !257, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!257 = !DISubroutineType(types: !258)
!258 = !{!5, !5, !5, !5}
!259 = !DILocalVariable(name: "condition", arg: 1, scope: !256, file: !1, line: 258, type: !5)
!260 = !DILocation(line: 0, scope: !256)
!261 = !{!"94"}
!262 = !DILocalVariable(name: "if1", arg: 2, scope: !256, file: !1, line: 259, type: !5)
!263 = !{!"95"}
!264 = !DILocalVariable(name: "if0", arg: 3, scope: !256, file: !1, line: 260, type: !5)
!265 = !{!"96"}
!266 = !DILocation(line: 262, column: 21, scope: !256)
!267 = !{!"97"}
!268 = !DILocalVariable(name: "mask", scope: !256, file: !1, line: 262, type: !5)
!269 = !{!"98"}
!270 = !DILocation(line: 263, column: 20, scope: !256)
!271 = !{!"99"}
!272 = !DILocation(line: 263, column: 31, scope: !256)
!273 = !{!"100"}
!274 = !DILocation(line: 263, column: 37, scope: !256)
!275 = !{!"101"}
!276 = !DILocation(line: 263, column: 28, scope: !256)
!277 = !{!"102"}
!278 = !DILocation(line: 263, column: 5, scope: !256)
!279 = !{!"103"}
!280 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_cond_assign", scope: !1, file: !1, line: 302, type: !281, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !21, !283, !284, !19}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!285 = !DILocalVariable(name: "n", arg: 1, scope: !280, file: !1, line: 302, type: !21)
!286 = !DILocation(line: 0, scope: !280)
!287 = !{!"104"}
!288 = !DILocalVariable(name: "dest", arg: 2, scope: !280, file: !1, line: 303, type: !283)
!289 = !{!"105"}
!290 = !DILocalVariable(name: "src", arg: 3, scope: !280, file: !1, line: 304, type: !284)
!291 = !{!"106"}
!292 = !DILocalVariable(name: "condition", arg: 4, scope: !280, file: !1, line: 305, type: !19)
!293 = !{!"107"}
!294 = !DILocation(line: 317, column: 36, scope: !280)
!295 = !{!"108"}
!296 = !DILocation(line: 317, column: 35, scope: !280)
!297 = !{!"109"}
!298 = !{!"110"}
!299 = !DILocalVariable(name: "mask", scope: !280, file: !1, line: 317, type: !226)
!300 = !{!"111"}
!301 = !DILocalVariable(name: "i", scope: !280, file: !1, line: 307, type: !21)
!302 = !{!"112"}
!303 = !DILocation(line: 323, column: 10, scope: !304)
!304 = distinct !DILexicalBlock(scope: !280, file: !1, line: 323, column: 5)
!305 = !{!"113"}
!306 = !DILocation(line: 0, scope: !304)
!307 = !{!"114"}
!308 = !{!"115"}
!309 = !DILocation(line: 323, column: 19, scope: !310)
!310 = distinct !DILexicalBlock(scope: !304, file: !1, line: 323, column: 5)
!311 = !{!"116"}
!312 = !DILocation(line: 323, column: 5, scope: !304)
!313 = !{!"117"}
!314 = !DILocation(line: 324, column: 21, scope: !310)
!315 = !{!"118"}
!316 = !{!"119"}
!317 = !DILocation(line: 324, column: 28, scope: !310)
!318 = !{!"120"}
!319 = !DILocation(line: 324, column: 41, scope: !310)
!320 = !{!"121"}
!321 = !{!"122"}
!322 = !DILocation(line: 324, column: 51, scope: !310)
!323 = !{!"123"}
!324 = !DILocation(line: 324, column: 49, scope: !310)
!325 = !{!"124"}
!326 = !DILocation(line: 324, column: 37, scope: !310)
!327 = !{!"125"}
!328 = !DILocation(line: 324, column: 9, scope: !310)
!329 = !{!"126"}
!330 = !DILocation(line: 324, column: 17, scope: !310)
!331 = !{!"127"}
!332 = !{!"128"}
!333 = !DILocation(line: 323, column: 25, scope: !310)
!334 = !{!"129"}
!335 = !{!"130"}
!336 = !DILocation(line: 323, column: 5, scope: !310)
!337 = distinct !{!337, !312, !338, !97}
!338 = !DILocation(line: 324, column: 57, scope: !304)
!339 = !{!"131"}
!340 = !DILocation(line: 325, column: 1, scope: !280)
!341 = !{!"132"}
!342 = distinct !DISubprogram(name: "mbedtls_ct_base64_enc_char", scope: !1, file: !1, line: 331, type: !343, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!343 = !DISubroutineType(types: !344)
!344 = !{!19, !19}
!345 = !DILocalVariable(name: "value", arg: 1, scope: !342, file: !1, line: 331, type: !19)
!346 = !DILocation(line: 0, scope: !342)
!347 = !{!"133"}
!348 = !DILocalVariable(name: "digit", scope: !342, file: !1, line: 333, type: !19)
!349 = !{!"134"}
!350 = !DILocation(line: 337, column: 14, scope: !342)
!351 = !{!"135"}
!352 = !{!"136"}
!353 = !DILocation(line: 337, column: 72, scope: !342)
!354 = !{!"137"}
!355 = !DILocation(line: 337, column: 70, scope: !342)
!356 = !{!"138"}
!357 = !DILocation(line: 337, column: 62, scope: !342)
!358 = !{!"139"}
!359 = !DILocation(line: 337, column: 11, scope: !342)
!360 = !{!"140"}
!361 = !{!"141"}
!362 = !{!"142"}
!363 = !{!"143"}
!364 = !DILocation(line: 338, column: 14, scope: !342)
!365 = !{!"144"}
!366 = !{!"145"}
!367 = !DILocation(line: 338, column: 72, scope: !342)
!368 = !{!"146"}
!369 = !DILocation(line: 338, column: 70, scope: !342)
!370 = !{!"147"}
!371 = !DILocation(line: 338, column: 78, scope: !342)
!372 = !{!"148"}
!373 = !DILocation(line: 338, column: 62, scope: !342)
!374 = !{!"149"}
!375 = !DILocation(line: 338, column: 11, scope: !342)
!376 = !{!"150"}
!377 = !{!"151"}
!378 = !{!"152"}
!379 = !{!"153"}
!380 = !DILocation(line: 339, column: 14, scope: !342)
!381 = !{!"154"}
!382 = !{!"155"}
!383 = !DILocation(line: 339, column: 72, scope: !342)
!384 = !{!"156"}
!385 = !DILocation(line: 339, column: 70, scope: !342)
!386 = !{!"157"}
!387 = !DILocation(line: 339, column: 78, scope: !342)
!388 = !{!"158"}
!389 = !DILocation(line: 339, column: 62, scope: !342)
!390 = !{!"159"}
!391 = !DILocation(line: 339, column: 11, scope: !342)
!392 = !{!"160"}
!393 = !{!"161"}
!394 = !{!"162"}
!395 = !{!"163"}
!396 = !DILocation(line: 340, column: 14, scope: !342)
!397 = !{!"164"}
!398 = !{!"165"}
!399 = !DILocation(line: 340, column: 62, scope: !342)
!400 = !{!"166"}
!401 = !DILocation(line: 340, column: 11, scope: !342)
!402 = !{!"167"}
!403 = !{!"168"}
!404 = !{!"169"}
!405 = !{!"170"}
!406 = !DILocation(line: 341, column: 14, scope: !342)
!407 = !{!"171"}
!408 = !{!"172"}
!409 = !DILocation(line: 341, column: 62, scope: !342)
!410 = !{!"173"}
!411 = !DILocation(line: 341, column: 11, scope: !342)
!412 = !{!"174"}
!413 = !{!"175"}
!414 = !{!"176"}
!415 = !{!"177"}
!416 = !DILocation(line: 342, column: 5, scope: !342)
!417 = !{!"178"}
!418 = distinct !DISubprogram(name: "mbedtls_ct_uchar_mask_of_range", scope: !1, file: !1, line: 165, type: !419, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!419 = !DISubroutineType(types: !420)
!420 = !{!19, !19, !19, !19}
!421 = !DILocalVariable(name: "low", arg: 1, scope: !418, file: !1, line: 165, type: !19)
!422 = !DILocation(line: 0, scope: !418)
!423 = !{!"179"}
!424 = !DILocalVariable(name: "high", arg: 2, scope: !418, file: !1, line: 166, type: !19)
!425 = !{!"180"}
!426 = !DILocalVariable(name: "c", arg: 3, scope: !418, file: !1, line: 167, type: !19)
!427 = !{!"181"}
!428 = !DILocation(line: 170, column: 27, scope: !418)
!429 = !{!"182"}
!430 = !DILocation(line: 170, column: 42, scope: !418)
!431 = !{!"183"}
!432 = !DILocation(line: 170, column: 40, scope: !418)
!433 = !{!"184"}
!434 = !DILocation(line: 170, column: 48, scope: !418)
!435 = !{!"185"}
!436 = !DILocalVariable(name: "low_mask", scope: !418, file: !1, line: 170, type: !5)
!437 = !{!"186"}
!438 = !DILocation(line: 172, column: 28, scope: !418)
!439 = !{!"187"}
!440 = !DILocation(line: 172, column: 46, scope: !418)
!441 = !{!"188"}
!442 = !DILocation(line: 172, column: 44, scope: !418)
!443 = !{!"189"}
!444 = !DILocation(line: 172, column: 50, scope: !418)
!445 = !{!"190"}
!446 = !DILocalVariable(name: "high_mask", scope: !418, file: !1, line: 172, type: !5)
!447 = !{!"191"}
!448 = !DILocation(line: 173, column: 25, scope: !418)
!449 = !{!"192"}
!450 = !DILocation(line: 173, column: 13, scope: !418)
!451 = !{!"193"}
!452 = !DILocation(line: 173, column: 39, scope: !418)
!453 = !{!"194"}
!454 = !DILocation(line: 173, column: 11, scope: !418)
!455 = !{!"195"}
!456 = !DILocation(line: 173, column: 5, scope: !418)
!457 = !{!"196"}
!458 = distinct !DISubprogram(name: "mbedtls_ct_base64_dec_value", scope: !1, file: !1, line: 345, type: !459, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !19}
!461 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!462 = !DILocalVariable(name: "c", arg: 1, scope: !458, file: !1, line: 345, type: !19)
!463 = !DILocation(line: 0, scope: !458)
!464 = !{!"197"}
!465 = !DILocalVariable(name: "val", scope: !458, file: !1, line: 347, type: !19)
!466 = !{!"198"}
!467 = !DILocation(line: 352, column: 12, scope: !458)
!468 = !{!"199"}
!469 = !{!"200"}
!470 = !DILocation(line: 352, column: 62, scope: !458)
!471 = !{!"201"}
!472 = !DILocation(line: 352, column: 64, scope: !458)
!473 = !{!"202"}
!474 = !DILocation(line: 352, column: 70, scope: !458)
!475 = !{!"203"}
!476 = !DILocation(line: 352, column: 75, scope: !458)
!477 = !{!"204"}
!478 = !DILocation(line: 352, column: 58, scope: !458)
!479 = !{!"205"}
!480 = !DILocation(line: 352, column: 9, scope: !458)
!481 = !{!"206"}
!482 = !{!"207"}
!483 = !{!"208"}
!484 = !{!"209"}
!485 = !DILocation(line: 353, column: 12, scope: !458)
!486 = !{!"210"}
!487 = !{!"211"}
!488 = !DILocation(line: 353, column: 62, scope: !458)
!489 = !{!"212"}
!490 = !DILocation(line: 353, column: 64, scope: !458)
!491 = !{!"213"}
!492 = !DILocation(line: 353, column: 70, scope: !458)
!493 = !{!"214"}
!494 = !DILocation(line: 353, column: 75, scope: !458)
!495 = !{!"215"}
!496 = !DILocation(line: 353, column: 58, scope: !458)
!497 = !{!"216"}
!498 = !DILocation(line: 353, column: 9, scope: !458)
!499 = !{!"217"}
!500 = !{!"218"}
!501 = !{!"219"}
!502 = !{!"220"}
!503 = !DILocation(line: 354, column: 12, scope: !458)
!504 = !{!"221"}
!505 = !{!"222"}
!506 = !DILocation(line: 354, column: 62, scope: !458)
!507 = !{!"223"}
!508 = !DILocation(line: 354, column: 64, scope: !458)
!509 = !{!"224"}
!510 = !DILocation(line: 354, column: 70, scope: !458)
!511 = !{!"225"}
!512 = !DILocation(line: 354, column: 75, scope: !458)
!513 = !{!"226"}
!514 = !DILocation(line: 354, column: 58, scope: !458)
!515 = !{!"227"}
!516 = !DILocation(line: 354, column: 9, scope: !458)
!517 = !{!"228"}
!518 = !{!"229"}
!519 = !{!"230"}
!520 = !{!"231"}
!521 = !DILocation(line: 355, column: 12, scope: !458)
!522 = !{!"232"}
!523 = !{!"233"}
!524 = !DILocation(line: 355, column: 62, scope: !458)
!525 = !{!"234"}
!526 = !DILocation(line: 355, column: 64, scope: !458)
!527 = !{!"235"}
!528 = !DILocation(line: 355, column: 70, scope: !458)
!529 = !{!"236"}
!530 = !DILocation(line: 355, column: 75, scope: !458)
!531 = !{!"237"}
!532 = !DILocation(line: 355, column: 58, scope: !458)
!533 = !{!"238"}
!534 = !DILocation(line: 355, column: 9, scope: !458)
!535 = !{!"239"}
!536 = !{!"240"}
!537 = !{!"241"}
!538 = !{!"242"}
!539 = !DILocation(line: 356, column: 12, scope: !458)
!540 = !{!"243"}
!541 = !{!"244"}
!542 = !DILocation(line: 356, column: 62, scope: !458)
!543 = !{!"245"}
!544 = !DILocation(line: 356, column: 64, scope: !458)
!545 = !{!"246"}
!546 = !DILocation(line: 356, column: 70, scope: !458)
!547 = !{!"247"}
!548 = !DILocation(line: 356, column: 75, scope: !458)
!549 = !{!"248"}
!550 = !DILocation(line: 356, column: 58, scope: !458)
!551 = !{!"249"}
!552 = !DILocation(line: 356, column: 9, scope: !458)
!553 = !{!"250"}
!554 = !{!"251"}
!555 = !{!"252"}
!556 = !{!"253"}
!557 = !DILocation(line: 359, column: 13, scope: !458)
!558 = !{!"254"}
!559 = !DILocation(line: 359, column: 17, scope: !458)
!560 = !{!"255"}
!561 = !DILocation(line: 359, column: 11, scope: !458)
!562 = !{!"256"}
!563 = !DILocation(line: 359, column: 5, scope: !458)
!564 = !{!"257"}
!565 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_if_eq", scope: !1, file: !1, line: 410, type: !566, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !568, !569, !21, !21, !21}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!571 = !DILocalVariable(name: "dest", arg: 1, scope: !565, file: !1, line: 410, type: !568)
!572 = !DILocation(line: 0, scope: !565)
!573 = !{!"258"}
!574 = !DILocalVariable(name: "src", arg: 2, scope: !565, file: !1, line: 411, type: !569)
!575 = !{!"259"}
!576 = !DILocalVariable(name: "len", arg: 3, scope: !565, file: !1, line: 412, type: !21)
!577 = !{!"260"}
!578 = !DILocalVariable(name: "c1", arg: 4, scope: !565, file: !1, line: 413, type: !21)
!579 = !{!"261"}
!580 = !DILocalVariable(name: "c2", arg: 5, scope: !565, file: !1, line: 414, type: !21)
!581 = !{!"262"}
!582 = !DILocation(line: 417, column: 26, scope: !565)
!583 = !{!"263"}
!584 = !{!"264"}
!585 = !DILocalVariable(name: "equal", scope: !565, file: !1, line: 417, type: !182)
!586 = !{!"265"}
!587 = !DILocation(line: 418, column: 48, scope: !565)
!588 = !{!"266"}
!589 = !DILocation(line: 418, column: 32, scope: !565)
!590 = !{!"267"}
!591 = !DILocalVariable(name: "mask", scope: !565, file: !1, line: 418, type: !570)
!592 = !{!"268"}
!593 = !DILocalVariable(name: "i", scope: !594, file: !1, line: 421, type: !21)
!594 = distinct !DILexicalBlock(scope: !565, file: !1, line: 421, column: 5)
!595 = !DILocation(line: 0, scope: !594)
!596 = !{!"269"}
!597 = !DILocation(line: 421, column: 10, scope: !594)
!598 = !{!"270"}
!599 = !{!"271"}
!600 = !{!"272"}
!601 = !DILocation(line: 421, column: 26, scope: !602)
!602 = distinct !DILexicalBlock(scope: !594, file: !1, line: 421, column: 5)
!603 = !{!"273"}
!604 = !DILocation(line: 421, column: 5, scope: !594)
!605 = !{!"274"}
!606 = !DILocation(line: 422, column: 21, scope: !602)
!607 = !{!"275"}
!608 = !{!"276"}
!609 = !{!"277"}
!610 = !DILocation(line: 422, column: 30, scope: !602)
!611 = !{!"278"}
!612 = !DILocation(line: 422, column: 28, scope: !602)
!613 = !{!"279"}
!614 = !DILocation(line: 422, column: 41, scope: !602)
!615 = !{!"280"}
!616 = !{!"281"}
!617 = !{!"282"}
!618 = !DILocation(line: 422, column: 52, scope: !602)
!619 = !{!"283"}
!620 = !DILocation(line: 422, column: 51, scope: !602)
!621 = !{!"284"}
!622 = !DILocation(line: 422, column: 49, scope: !602)
!623 = !{!"285"}
!624 = !DILocation(line: 422, column: 37, scope: !602)
!625 = !{!"286"}
!626 = !DILocation(line: 422, column: 19, scope: !602)
!627 = !{!"287"}
!628 = !DILocation(line: 422, column: 9, scope: !602)
!629 = !{!"288"}
!630 = !DILocation(line: 422, column: 17, scope: !602)
!631 = !{!"289"}
!632 = !{!"290"}
!633 = !DILocation(line: 421, column: 34, scope: !602)
!634 = !{!"291"}
!635 = !{!"292"}
!636 = !DILocation(line: 421, column: 5, scope: !602)
!637 = distinct !{!637, !604, !638, !97}
!638 = !DILocation(line: 422, column: 57, scope: !594)
!639 = !{!"293"}
!640 = !DILocation(line: 423, column: 1, scope: !565)
!641 = !{!"294"}
!642 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_offset", scope: !1, file: !1, line: 425, type: !643, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !568, !569, !21, !21, !21, !21}
!645 = !DILocalVariable(name: "dest", arg: 1, scope: !642, file: !1, line: 425, type: !568)
!646 = !DILocation(line: 0, scope: !642)
!647 = !{!"295"}
!648 = !DILocalVariable(name: "src", arg: 2, scope: !642, file: !1, line: 426, type: !569)
!649 = !{!"296"}
!650 = !DILocalVariable(name: "offset", arg: 3, scope: !642, file: !1, line: 427, type: !21)
!651 = !{!"297"}
!652 = !DILocalVariable(name: "offset_min", arg: 4, scope: !642, file: !1, line: 428, type: !21)
!653 = !{!"298"}
!654 = !DILocalVariable(name: "offset_max", arg: 5, scope: !642, file: !1, line: 429, type: !21)
!655 = !{!"299"}
!656 = !DILocalVariable(name: "len", arg: 6, scope: !642, file: !1, line: 430, type: !21)
!657 = !{!"300"}
!658 = !DILocalVariable(name: "offsetval", scope: !642, file: !1, line: 432, type: !21)
!659 = !{!"301"}
!660 = !DILocation(line: 434, column: 10, scope: !661)
!661 = distinct !DILexicalBlock(scope: !642, file: !1, line: 434, column: 5)
!662 = !{!"302"}
!663 = !DILocation(line: 0, scope: !661)
!664 = !{!"303"}
!665 = !{!"304"}
!666 = !DILocation(line: 434, column: 44, scope: !667)
!667 = distinct !DILexicalBlock(scope: !661, file: !1, line: 434, column: 5)
!668 = !{!"305"}
!669 = !DILocation(line: 434, column: 5, scope: !661)
!670 = !{!"306"}
!671 = !DILocation(line: 436, column: 44, scope: !672)
!672 = distinct !DILexicalBlock(scope: !667, file: !1, line: 435, column: 5)
!673 = !{!"307"}
!674 = !DILocation(line: 436, column: 9, scope: !672)
!675 = !{!"308"}
!676 = !DILocation(line: 438, column: 5, scope: !672)
!677 = !{!"309"}
!678 = !DILocation(line: 434, column: 68, scope: !667)
!679 = !{!"310"}
!680 = !{!"311"}
!681 = !DILocation(line: 434, column: 5, scope: !667)
!682 = distinct !{!682, !669, !683, !97}
!683 = !DILocation(line: 438, column: 5, scope: !661)
!684 = !{!"312"}
!685 = !DILocation(line: 439, column: 1, scope: !642)
!686 = !{!"313"}
!687 = distinct !DISubprogram(name: "mbedtls_ct_hmac", scope: !1, file: !1, line: 567, type: !688, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!688 = !DISubroutineType(types: !689)
!689 = !{!20, !690, !569, !21, !569, !21, !21, !21, !568}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_context_t", file: !4, line: 103, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_md_context_t", file: !4, line: 93, size: 192, elements: !693)
!693 = !{!694, !699, !701}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "md_info", scope: !692, file: !4, line: 96, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_info_t", file: !4, line: 88, baseType: !698)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_md_info_t", file: !4, line: 88, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !692, file: !4, line: 99, baseType: !700, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "hmac_ctx", scope: !692, file: !4, line: 102, baseType: !700, size: 64, offset: 128)
!702 = !{!"314"}
!703 = !{!"315"}
!704 = !DILocalVariable(name: "ctx", arg: 1, scope: !687, file: !1, line: 567, type: !690)
!705 = !DILocation(line: 0, scope: !687)
!706 = !{!"316"}
!707 = !DILocalVariable(name: "add_data", arg: 2, scope: !687, file: !1, line: 568, type: !569)
!708 = !{!"317"}
!709 = !DILocalVariable(name: "add_data_len", arg: 3, scope: !687, file: !1, line: 569, type: !21)
!710 = !{!"318"}
!711 = !DILocalVariable(name: "data", arg: 4, scope: !687, file: !1, line: 570, type: !569)
!712 = !{!"319"}
!713 = !DILocalVariable(name: "data_len_secret", arg: 5, scope: !687, file: !1, line: 571, type: !21)
!714 = !{!"320"}
!715 = !DILocalVariable(name: "min_data_len", arg: 6, scope: !687, file: !1, line: 572, type: !21)
!716 = !{!"321"}
!717 = !DILocalVariable(name: "max_data_len", arg: 7, scope: !687, file: !1, line: 573, type: !21)
!718 = !{!"322"}
!719 = !DILocalVariable(name: "output", arg: 8, scope: !687, file: !1, line: 574, type: !568)
!720 = !{!"323"}
!721 = !DILocation(line: 590, column: 64, scope: !687)
!722 = !{!"324"}
!723 = !{!"325"}
!724 = !DILocation(line: 590, column: 38, scope: !687)
!725 = !{!"326"}
!726 = !DILocalVariable(name: "md_alg", scope: !687, file: !1, line: 590, type: !727)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_type_t", file: !4, line: 64, baseType: !3)
!729 = !{!"327"}
!730 = !DILocation(line: 593, column: 38, scope: !687)
!731 = !{!"328"}
!732 = !DILocation(line: 593, column: 31, scope: !687)
!733 = !{!"329"}
!734 = !{!"330"}
!735 = !{!"331"}
!736 = !DILocalVariable(name: "block_size", scope: !687, file: !1, line: 593, type: !182)
!737 = !{!"332"}
!738 = !DILocation(line: 594, column: 45, scope: !687)
!739 = !{!"333"}
!740 = !{!"334"}
!741 = !DILocalVariable(name: "ikey", scope: !687, file: !1, line: 594, type: !742)
!742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!743 = !{!"335"}
!744 = !DILocation(line: 595, column: 45, scope: !687)
!745 = !{!"336"}
!746 = !DILocalVariable(name: "okey", scope: !687, file: !1, line: 595, type: !742)
!747 = !{!"337"}
!748 = !DILocation(line: 596, column: 56, scope: !687)
!749 = !{!"338"}
!750 = !{!"339"}
!751 = !DILocation(line: 596, column: 30, scope: !687)
!752 = !{!"340"}
!753 = !{!"341"}
!754 = !DILocalVariable(name: "hash_size", scope: !687, file: !1, line: 596, type: !182)
!755 = !{!"342"}
!756 = !DILocalVariable(name: "aux_out", scope: !687, file: !1, line: 598, type: !757)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 64)
!760 = !DILocation(line: 598, column: 19, scope: !687)
!761 = !{!"343"}
!762 = !DILocalVariable(name: "aux", scope: !687, file: !1, line: 599, type: !691)
!763 = !DILocation(line: 599, column: 26, scope: !687)
!764 = !{!"344"}
!765 = !DILocalVariable(name: "ret", scope: !687, file: !1, line: 601, type: !20)
!766 = !{!"345"}
!767 = !DILocation(line: 603, column: 5, scope: !687)
!768 = !{!"346"}
!769 = !DILocation(line: 612, column: 5, scope: !687)
!770 = !{!"347"}
!771 = !DILocation(line: 612, column: 5, scope: !772)
!772 = distinct !DILexicalBlock(scope: !687, file: !1, line: 612, column: 5)
!773 = !{!"348"}
!774 = !{!"349"}
!775 = !{!"350"}
!776 = !{!"351"}
!777 = !DILocation(line: 612, column: 5, scope: !778)
!778 = distinct !DILexicalBlock(scope: !772, file: !1, line: 612, column: 5)
!779 = !{!"352"}
!780 = !{!"353"}
!781 = !{!"354"}
!782 = !{!"355"}
!783 = !DILocation(line: 616, column: 5, scope: !687)
!784 = !{!"356"}
!785 = !DILocation(line: 616, column: 5, scope: !786)
!786 = distinct !DILexicalBlock(scope: !687, file: !1, line: 616, column: 5)
!787 = !{!"357"}
!788 = !{!"358"}
!789 = !DILocation(line: 616, column: 5, scope: !790)
!790 = distinct !DILexicalBlock(scope: !786, file: !1, line: 616, column: 5)
!791 = !{!"359"}
!792 = !{!"360"}
!793 = !{!"361"}
!794 = !{!"362"}
!795 = !DILocation(line: 617, column: 5, scope: !687)
!796 = !{!"363"}
!797 = !DILocation(line: 617, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !687, file: !1, line: 617, column: 5)
!799 = !{!"364"}
!800 = !{!"365"}
!801 = !DILocation(line: 617, column: 5, scope: !802)
!802 = distinct !DILexicalBlock(scope: !798, file: !1, line: 617, column: 5)
!803 = !{!"366"}
!804 = !{!"367"}
!805 = !{!"368"}
!806 = !{!"369"}
!807 = !DILocation(line: 623, column: 5, scope: !687)
!808 = !{!"370"}
!809 = !DILocalVariable(name: "offset", scope: !687, file: !1, line: 600, type: !21)
!810 = !{!"371"}
!811 = !DILocation(line: 626, column: 10, scope: !812)
!812 = distinct !DILexicalBlock(scope: !687, file: !1, line: 626, column: 5)
!813 = !{!"372"}
!814 = !DILocation(line: 0, scope: !812)
!815 = !{!"373"}
!816 = !{!"374"}
!817 = !DILocation(line: 626, column: 40, scope: !818)
!818 = distinct !DILexicalBlock(scope: !812, file: !1, line: 626, column: 5)
!819 = !{!"375"}
!820 = !DILocation(line: 626, column: 5, scope: !812)
!821 = !{!"376"}
!822 = !DILocation(line: 628, column: 9, scope: !823)
!823 = distinct !DILexicalBlock(scope: !818, file: !1, line: 627, column: 5)
!824 = !{!"377"}
!825 = !DILocation(line: 628, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !823, file: !1, line: 628, column: 9)
!827 = !{!"378"}
!828 = !{!"379"}
!829 = !DILocation(line: 628, column: 9, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !1, line: 628, column: 9)
!831 = !{!"380"}
!832 = !{!"381"}
!833 = !{!"382"}
!834 = !{!"383"}
!835 = !DILocation(line: 629, column: 9, scope: !823)
!836 = !{!"384"}
!837 = !DILocation(line: 629, column: 9, scope: !838)
!838 = distinct !DILexicalBlock(scope: !823, file: !1, line: 629, column: 9)
!839 = !{!"385"}
!840 = !{!"386"}
!841 = !{!"387"}
!842 = !DILocation(line: 629, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !838, file: !1, line: 629, column: 9)
!844 = !{!"388"}
!845 = !{!"389"}
!846 = !{!"390"}
!847 = !{!"391"}
!848 = !DILocation(line: 631, column: 42, scope: !823)
!849 = !{!"392"}
!850 = !DILocation(line: 631, column: 9, scope: !823)
!851 = !{!"393"}
!852 = !DILocation(line: 634, column: 20, scope: !853)
!853 = distinct !DILexicalBlock(scope: !823, file: !1, line: 634, column: 13)
!854 = !{!"394"}
!855 = !DILocation(line: 634, column: 13, scope: !823)
!856 = !{!"395"}
!857 = !DILocation(line: 635, column: 13, scope: !853)
!858 = !{!"396"}
!859 = !DILocation(line: 635, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !853, file: !1, line: 635, column: 13)
!861 = !{!"397"}
!862 = !{!"398"}
!863 = !{!"399"}
!864 = !DILocation(line: 635, column: 13, scope: !865)
!865 = distinct !DILexicalBlock(scope: !860, file: !1, line: 635, column: 13)
!866 = !{!"400"}
!867 = !{!"401"}
!868 = !{!"402"}
!869 = !{!"403"}
!870 = !{!"404"}
!871 = !DILocation(line: 636, column: 5, scope: !823)
!872 = !{!"405"}
!873 = !DILocation(line: 626, column: 63, scope: !818)
!874 = !{!"406"}
!875 = !{!"407"}
!876 = !DILocation(line: 626, column: 5, scope: !818)
!877 = distinct !{!877, !820, !878, !97}
!878 = !DILocation(line: 636, column: 5, scope: !812)
!879 = !{!"408"}
!880 = !DILocation(line: 639, column: 5, scope: !687)
!881 = !{!"409"}
!882 = !DILocation(line: 639, column: 5, scope: !883)
!883 = distinct !DILexicalBlock(scope: !687, file: !1, line: 639, column: 5)
!884 = !{!"410"}
!885 = !{!"411"}
!886 = !{!"412"}
!887 = !DILocation(line: 639, column: 5, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !1, line: 639, column: 5)
!889 = !{!"413"}
!890 = !{!"414"}
!891 = !{!"415"}
!892 = !{!"416"}
!893 = !DILocation(line: 642, column: 5, scope: !687)
!894 = !{!"417"}
!895 = !DILocation(line: 642, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !687, file: !1, line: 642, column: 5)
!897 = !{!"418"}
!898 = !{!"419"}
!899 = !DILocation(line: 642, column: 5, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !1, line: 642, column: 5)
!901 = !{!"420"}
!902 = !{!"421"}
!903 = !{!"422"}
!904 = !{!"423"}
!905 = !DILocation(line: 643, column: 5, scope: !687)
!906 = !{!"424"}
!907 = !DILocation(line: 643, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !687, file: !1, line: 643, column: 5)
!909 = !{!"425"}
!910 = !{!"426"}
!911 = !DILocation(line: 643, column: 5, scope: !912)
!912 = distinct !DILexicalBlock(scope: !908, file: !1, line: 643, column: 5)
!913 = !{!"427"}
!914 = !{!"428"}
!915 = !{!"429"}
!916 = !{!"430"}
!917 = !DILocation(line: 644, column: 5, scope: !687)
!918 = !{!"431"}
!919 = !DILocation(line: 644, column: 5, scope: !920)
!920 = distinct !DILexicalBlock(scope: !687, file: !1, line: 644, column: 5)
!921 = !{!"432"}
!922 = !{!"433"}
!923 = !DILocation(line: 644, column: 5, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !1, line: 644, column: 5)
!925 = !{!"434"}
!926 = !{!"435"}
!927 = !{!"436"}
!928 = !{!"437"}
!929 = !DILocation(line: 645, column: 5, scope: !687)
!930 = !{!"438"}
!931 = !DILocation(line: 645, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !687, file: !1, line: 645, column: 5)
!933 = !{!"439"}
!934 = !{!"440"}
!935 = !DILocation(line: 645, column: 5, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !1, line: 645, column: 5)
!937 = !{!"441"}
!938 = !{!"442"}
!939 = !{!"443"}
!940 = !{!"444"}
!941 = !DILocation(line: 648, column: 5, scope: !687)
!942 = !{!"445"}
!943 = !DILocation(line: 648, column: 5, scope: !944)
!944 = distinct !DILexicalBlock(scope: !687, file: !1, line: 648, column: 5)
!945 = !{!"446"}
!946 = !{!"447"}
!947 = !DILocation(line: 648, column: 5, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !1, line: 648, column: 5)
!949 = !{!"448"}
!950 = !{!"449"}
!951 = !{!"450"}
!952 = !{!"451"}
!953 = !{!"452"}
!954 = !{!"453"}
!955 = !{!"454"}
!956 = !DILabel(scope: !687, name: "cleanup", file: !1, line: 652)
!957 = !DILocation(line: 652, column: 1, scope: !687)
!958 = !{!"455"}
!959 = !DILocation(line: 653, column: 5, scope: !687)
!960 = !{!"456"}
!961 = !DILocation(line: 654, column: 5, scope: !687)
!962 = !{!"457"}
!963 = distinct !DISubprogram(name: "mbedtls_mpi_safe_cond_assign", scope: !1, file: !1, line: 677, type: !964, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!964 = !DISubroutineType(types: !965)
!965 = !{!20, !966, !973, !19}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_mpi", file: !141, line: 227, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_mpi", file: !141, line: 203, size: 192, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !968, file: !141, line: 216, baseType: !20, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !968, file: !141, line: 219, baseType: !21, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !968, file: !141, line: 225, baseType: !283, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!975 = !DILocalVariable(name: "X", arg: 1, scope: !963, file: !1, line: 677, type: !966)
!976 = !DILocation(line: 0, scope: !963)
!977 = !{!"458"}
!978 = !DILocalVariable(name: "Y", arg: 2, scope: !963, file: !1, line: 678, type: !973)
!979 = !{!"459"}
!980 = !DILocalVariable(name: "assign", arg: 3, scope: !963, file: !1, line: 679, type: !19)
!981 = !{!"460"}
!982 = !DILocalVariable(name: "ret", scope: !963, file: !1, line: 681, type: !20)
!983 = !{!"461"}
!984 = !DILocation(line: 682, column: 5, scope: !963)
!985 = !{!"462"}
!986 = !DILocation(line: 682, column: 5, scope: !987)
!987 = distinct !DILexicalBlock(scope: !963, file: !1, line: 682, column: 5)
!988 = !{!"463"}
!989 = !DILocation(line: 683, column: 5, scope: !963)
!990 = !{!"464"}
!991 = !DILocation(line: 683, column: 5, scope: !992)
!992 = distinct !DILexicalBlock(scope: !963, file: !1, line: 683, column: 5)
!993 = !{!"465"}
!994 = !DILocation(line: 686, column: 60, scope: !963)
!995 = !{!"466"}
!996 = !DILocation(line: 686, column: 34, scope: !963)
!997 = !{!"467"}
!998 = !DILocalVariable(name: "limb_mask", scope: !963, file: !1, line: 686, type: !140)
!999 = !{!"468"}
!1000 = !DILocation(line: 688, column: 5, scope: !963)
!1001 = !{!"469"}
!1002 = !DILocation(line: 688, column: 5, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 688, column: 5)
!1004 = distinct !DILexicalBlock(scope: !963, file: !1, line: 688, column: 5)
!1005 = !{!"470"}
!1006 = !{!"471"}
!1007 = !{!"472"}
!1008 = !{!"473"}
!1009 = !{!"474"}
!1010 = !DILocation(line: 688, column: 5, scope: !1004)
!1011 = !{!"475"}
!1012 = !{!"476"}
!1013 = !{!"477"}
!1014 = !DILocation(line: 690, column: 52, scope: !963)
!1015 = !{!"478"}
!1016 = !{!"479"}
!1017 = !DILocation(line: 690, column: 58, scope: !963)
!1018 = !{!"480"}
!1019 = !{!"481"}
!1020 = !DILocation(line: 690, column: 12, scope: !963)
!1021 = !{!"482"}
!1022 = !DILocation(line: 690, column: 8, scope: !963)
!1023 = !{!"483"}
!1024 = !DILocation(line: 690, column: 10, scope: !963)
!1025 = !{!"484"}
!1026 = !DILocation(line: 692, column: 38, scope: !963)
!1027 = !{!"485"}
!1028 = !{!"486"}
!1029 = !DILocation(line: 692, column: 44, scope: !963)
!1030 = !{!"487"}
!1031 = !{!"488"}
!1032 = !DILocation(line: 692, column: 50, scope: !963)
!1033 = !{!"489"}
!1034 = !{!"490"}
!1035 = !DILocation(line: 692, column: 5, scope: !963)
!1036 = !{!"491"}
!1037 = !DILocation(line: 694, column: 24, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !963, file: !1, line: 694, column: 5)
!1039 = !{!"492"}
!1040 = !{!"493"}
!1041 = !DILocalVariable(name: "i", scope: !1038, file: !1, line: 694, type: !21)
!1042 = !DILocation(line: 0, scope: !1038)
!1043 = !{!"494"}
!1044 = !DILocation(line: 694, column: 10, scope: !1038)
!1045 = !{!"495"}
!1046 = !{!"496"}
!1047 = !{!"497"}
!1048 = !DILocation(line: 694, column: 34, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 694, column: 5)
!1050 = !{!"498"}
!1051 = !{!"499"}
!1052 = !DILocation(line: 694, column: 29, scope: !1049)
!1053 = !{!"500"}
!1054 = !DILocation(line: 694, column: 5, scope: !1038)
!1055 = !{!"501"}
!1056 = !DILocation(line: 695, column: 20, scope: !1049)
!1057 = !{!"502"}
!1058 = !DILocation(line: 695, column: 12, scope: !1049)
!1059 = !{!"503"}
!1060 = !{!"504"}
!1061 = !DILocation(line: 695, column: 9, scope: !1049)
!1062 = !{!"505"}
!1063 = !DILocation(line: 695, column: 17, scope: !1049)
!1064 = !{!"506"}
!1065 = !{!"507"}
!1066 = !{!"508"}
!1067 = !{!"509"}
!1068 = !DILocation(line: 694, column: 38, scope: !1049)
!1069 = !{!"510"}
!1070 = !{!"511"}
!1071 = !DILocation(line: 694, column: 5, scope: !1049)
!1072 = distinct !{!1072, !1054, !1073, !97}
!1073 = !DILocation(line: 695, column: 21, scope: !1038)
!1074 = !{!"512"}
!1075 = !{!"513"}
!1076 = !DILabel(scope: !963, name: "cleanup", file: !1, line: 697)
!1077 = !DILocation(line: 697, column: 1, scope: !963)
!1078 = !{!"514"}
!1079 = !DILocation(line: 698, column: 5, scope: !963)
!1080 = !{!"515"}
!1081 = distinct !DISubprogram(name: "mbedtls_ct_cond_select_sign", scope: !1, file: !1, line: 282, type: !1082, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!20, !19, !20, !20}
!1084 = !DILocalVariable(name: "condition", arg: 1, scope: !1081, file: !1, line: 282, type: !19)
!1085 = !DILocation(line: 0, scope: !1081)
!1086 = !{!"516"}
!1087 = !DILocalVariable(name: "if1", arg: 2, scope: !1081, file: !1, line: 283, type: !20)
!1088 = !{!"517"}
!1089 = !DILocalVariable(name: "if0", arg: 3, scope: !1081, file: !1, line: 284, type: !20)
!1090 = !{!"518"}
!1091 = !DILocation(line: 289, column: 25, scope: !1081)
!1092 = !{!"519"}
!1093 = !DILocalVariable(name: "uif1", scope: !1081, file: !1, line: 289, type: !5)
!1094 = !{!"520"}
!1095 = !DILocation(line: 290, column: 25, scope: !1081)
!1096 = !{!"521"}
!1097 = !DILocalVariable(name: "uif0", scope: !1081, file: !1, line: 290, type: !5)
!1098 = !{!"522"}
!1099 = !DILocation(line: 293, column: 27, scope: !1081)
!1100 = !{!"523"}
!1101 = !DILocation(line: 293, column: 37, scope: !1081)
!1102 = !{!"524"}
!1103 = !DILocalVariable(name: "mask", scope: !1081, file: !1, line: 293, type: !217)
!1104 = !{!"525"}
!1105 = !DILocation(line: 296, column: 28, scope: !1081)
!1106 = !{!"526"}
!1107 = !DILocation(line: 296, column: 26, scope: !1081)
!1108 = !{!"527"}
!1109 = !DILocation(line: 296, column: 45, scope: !1081)
!1110 = !{!"528"}
!1111 = !DILocation(line: 296, column: 36, scope: !1081)
!1112 = !{!"529"}
!1113 = !DILocalVariable(name: "ur", scope: !1081, file: !1, line: 296, type: !5)
!1114 = !{!"530"}
!1115 = !DILocation(line: 299, column: 22, scope: !1081)
!1116 = !{!"531"}
!1117 = !DILocation(line: 299, column: 5, scope: !1081)
!1118 = !{!"532"}
!1119 = distinct !DISubprogram(name: "mbedtls_mpi_safe_cond_swap", scope: !1, file: !1, line: 707, type: !1120, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!20, !966, !966, !19}
!1122 = !DILocalVariable(name: "X", arg: 1, scope: !1119, file: !1, line: 707, type: !966)
!1123 = !DILocation(line: 0, scope: !1119)
!1124 = !{!"533"}
!1125 = !DILocalVariable(name: "Y", arg: 2, scope: !1119, file: !1, line: 708, type: !966)
!1126 = !{!"534"}
!1127 = !DILocalVariable(name: "swap", arg: 3, scope: !1119, file: !1, line: 709, type: !19)
!1128 = !{!"535"}
!1129 = !DILocalVariable(name: "ret", scope: !1119, file: !1, line: 711, type: !20)
!1130 = !{!"536"}
!1131 = !DILocation(line: 713, column: 5, scope: !1119)
!1132 = !{!"537"}
!1133 = !DILocation(line: 713, column: 5, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 713, column: 5)
!1135 = !{!"538"}
!1136 = !DILocation(line: 714, column: 5, scope: !1119)
!1137 = !{!"539"}
!1138 = !DILocation(line: 714, column: 5, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 714, column: 5)
!1140 = !{!"540"}
!1141 = !DILocation(line: 716, column: 11, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 716, column: 9)
!1143 = !{!"541"}
!1144 = !DILocation(line: 716, column: 9, scope: !1119)
!1145 = !{!"542"}
!1146 = !DILocation(line: 717, column: 9, scope: !1142)
!1147 = !{!"543"}
!1148 = !DILocation(line: 719, column: 5, scope: !1119)
!1149 = !{!"544"}
!1150 = !DILocation(line: 719, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 719, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 719, column: 5)
!1153 = !{!"545"}
!1154 = !{!"546"}
!1155 = !{!"547"}
!1156 = !{!"548"}
!1157 = !{!"549"}
!1158 = !DILocation(line: 719, column: 5, scope: !1152)
!1159 = !{!"550"}
!1160 = !{!"551"}
!1161 = !{!"552"}
!1162 = !DILocation(line: 720, column: 5, scope: !1119)
!1163 = !{!"553"}
!1164 = !DILocation(line: 720, column: 5, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 720, column: 5)
!1166 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 720, column: 5)
!1167 = !{!"554"}
!1168 = !{!"555"}
!1169 = !{!"556"}
!1170 = !{!"557"}
!1171 = !{!"558"}
!1172 = !DILocation(line: 720, column: 5, scope: !1166)
!1173 = !{!"559"}
!1174 = !{!"560"}
!1175 = !{!"561"}
!1176 = !DILocation(line: 722, column: 12, scope: !1119)
!1177 = !{!"562"}
!1178 = !{!"563"}
!1179 = !DILocalVariable(name: "s", scope: !1119, file: !1, line: 712, type: !20)
!1180 = !{!"564"}
!1181 = !DILocation(line: 723, column: 50, scope: !1119)
!1182 = !{!"565"}
!1183 = !{!"566"}
!1184 = !DILocation(line: 723, column: 56, scope: !1119)
!1185 = !{!"567"}
!1186 = !{!"568"}
!1187 = !DILocation(line: 723, column: 12, scope: !1119)
!1188 = !{!"569"}
!1189 = !DILocation(line: 723, column: 8, scope: !1119)
!1190 = !{!"570"}
!1191 = !DILocation(line: 723, column: 10, scope: !1119)
!1192 = !{!"571"}
!1193 = !DILocation(line: 724, column: 53, scope: !1119)
!1194 = !{!"572"}
!1195 = !{!"573"}
!1196 = !DILocation(line: 724, column: 12, scope: !1119)
!1197 = !{!"574"}
!1198 = !DILocation(line: 724, column: 8, scope: !1119)
!1199 = !{!"575"}
!1200 = !DILocation(line: 724, column: 10, scope: !1119)
!1201 = !{!"576"}
!1202 = !DILocation(line: 726, column: 36, scope: !1119)
!1203 = !{!"577"}
!1204 = !{!"578"}
!1205 = !DILocation(line: 726, column: 42, scope: !1119)
!1206 = !{!"579"}
!1207 = !{!"580"}
!1208 = !DILocation(line: 726, column: 48, scope: !1119)
!1209 = !{!"581"}
!1210 = !{!"582"}
!1211 = !DILocation(line: 726, column: 5, scope: !1119)
!1212 = !{!"583"}
!1213 = !{!"584"}
!1214 = !{!"585"}
!1215 = !{!"586"}
!1216 = !DILabel(scope: !1119, name: "cleanup", file: !1, line: 728)
!1217 = !DILocation(line: 728, column: 1, scope: !1119)
!1218 = !{!"587"}
!1219 = !DILocation(line: 729, column: 5, scope: !1119)
!1220 = !{!"588"}
!1221 = !{!"589"}
!1222 = !DILocation(line: 730, column: 1, scope: !1119)
!1223 = !{!"590"}
!1224 = distinct !DISubprogram(name: "mbedtls_mpi_core_lt_ct", scope: !1, file: !1, line: 735, type: !1225, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!5, !284, !284, !21}
!1227 = !DILocalVariable(name: "A", arg: 1, scope: !1224, file: !1, line: 735, type: !284)
!1228 = !DILocation(line: 0, scope: !1224)
!1229 = !{!"591"}
!1230 = !DILocalVariable(name: "B", arg: 2, scope: !1224, file: !1, line: 736, type: !284)
!1231 = !{!"592"}
!1232 = !DILocalVariable(name: "limbs", arg: 3, scope: !1224, file: !1, line: 737, type: !21)
!1233 = !{!"593"}
!1234 = !DILocalVariable(name: "done", scope: !1224, file: !1, line: 739, type: !5)
!1235 = !{!"594"}
!1236 = !DILocalVariable(name: "cond", scope: !1224, file: !1, line: 739, type: !5)
!1237 = !{!"595"}
!1238 = !DILocalVariable(name: "ret", scope: !1224, file: !1, line: 739, type: !5)
!1239 = !{!"596"}
!1240 = !DILocalVariable(name: "i", scope: !1241, file: !1, line: 745, type: !21)
!1241 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 745, column: 5)
!1242 = !DILocation(line: 0, scope: !1241)
!1243 = !{!"597"}
!1244 = !DILocation(line: 745, column: 10, scope: !1241)
!1245 = !{!"598"}
!1246 = !{!"599"}
!1247 = !{!"600"}
!1248 = !{!"601"}
!1249 = !{!"602"}
!1250 = !{!"603"}
!1251 = !{!"604"}
!1252 = !DILocation(line: 745, column: 30, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 745, column: 5)
!1254 = !{!"605"}
!1255 = !DILocation(line: 745, column: 5, scope: !1241)
!1256 = !{!"606"}
!1257 = !DILocation(line: 754, column: 44, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 746, column: 5)
!1259 = !{!"607"}
!1260 = !DILocation(line: 754, column: 40, scope: !1258)
!1261 = !{!"608"}
!1262 = !{!"609"}
!1263 = !DILocation(line: 754, column: 54, scope: !1258)
!1264 = !{!"610"}
!1265 = !DILocation(line: 754, column: 50, scope: !1258)
!1266 = !{!"611"}
!1267 = !{!"612"}
!1268 = !DILocation(line: 754, column: 16, scope: !1258)
!1269 = !{!"613"}
!1270 = !{!"614"}
!1271 = !DILocation(line: 755, column: 14, scope: !1258)
!1272 = !{!"615"}
!1273 = !{!"616"}
!1274 = !DILocation(line: 763, column: 44, scope: !1258)
!1275 = !{!"617"}
!1276 = !DILocation(line: 763, column: 40, scope: !1258)
!1277 = !{!"618"}
!1278 = !{!"619"}
!1279 = !DILocation(line: 763, column: 54, scope: !1258)
!1280 = !{!"620"}
!1281 = !DILocation(line: 763, column: 50, scope: !1258)
!1282 = !{!"621"}
!1283 = !{!"622"}
!1284 = !DILocation(line: 763, column: 16, scope: !1258)
!1285 = !{!"623"}
!1286 = !{!"624"}
!1287 = !DILocation(line: 764, column: 27, scope: !1258)
!1288 = !{!"625"}
!1289 = !DILocation(line: 764, column: 21, scope: !1258)
!1290 = !{!"626"}
!1291 = !DILocation(line: 764, column: 13, scope: !1258)
!1292 = !{!"627"}
!1293 = !{!"628"}
!1294 = !DILocation(line: 765, column: 14, scope: !1258)
!1295 = !{!"629"}
!1296 = !{!"630"}
!1297 = !DILocation(line: 766, column: 5, scope: !1258)
!1298 = !{!"631"}
!1299 = !DILocation(line: 745, column: 36, scope: !1253)
!1300 = !{!"632"}
!1301 = !{!"633"}
!1302 = !DILocation(line: 745, column: 5, scope: !1253)
!1303 = distinct !{!1303, !1255, !1304, !97}
!1304 = !DILocation(line: 766, column: 5, scope: !1241)
!1305 = !{!"634"}
!1306 = !DILocation(line: 773, column: 5, scope: !1224)
!1307 = !{!"635"}
!1308 = distinct !DISubprogram(name: "mbedtls_mpi_lt_mpi_ct", scope: !1, file: !1, line: 779, type: !1309, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!20, !973, !973, !1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1312 = !DILocalVariable(name: "X", arg: 1, scope: !1308, file: !1, line: 779, type: !973)
!1313 = !DILocation(line: 0, scope: !1308)
!1314 = !{!"636"}
!1315 = !DILocalVariable(name: "Y", arg: 2, scope: !1308, file: !1, line: 780, type: !973)
!1316 = !{!"637"}
!1317 = !DILocalVariable(name: "ret", arg: 3, scope: !1308, file: !1, line: 781, type: !1311)
!1318 = !{!"638"}
!1319 = !DILocation(line: 787, column: 5, scope: !1308)
!1320 = !{!"639"}
!1321 = !DILocation(line: 787, column: 5, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 787, column: 5)
!1323 = !{!"640"}
!1324 = !DILocation(line: 788, column: 5, scope: !1308)
!1325 = !{!"641"}
!1326 = !DILocation(line: 788, column: 5, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 788, column: 5)
!1328 = !{!"642"}
!1329 = !DILocation(line: 789, column: 5, scope: !1308)
!1330 = !{!"643"}
!1331 = !DILocation(line: 789, column: 5, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 789, column: 5)
!1333 = !{!"644"}
!1334 = !DILocation(line: 791, column: 12, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 791, column: 9)
!1336 = !{!"645"}
!1337 = !{!"646"}
!1338 = !DILocation(line: 791, column: 20, scope: !1335)
!1339 = !{!"647"}
!1340 = !{!"648"}
!1341 = !DILocation(line: 791, column: 14, scope: !1335)
!1342 = !{!"649"}
!1343 = !DILocation(line: 791, column: 9, scope: !1308)
!1344 = !{!"650"}
!1345 = !DILocation(line: 792, column: 9, scope: !1335)
!1346 = !{!"651"}
!1347 = !DILocation(line: 798, column: 26, scope: !1308)
!1348 = !{!"652"}
!1349 = !{!"653"}
!1350 = !DILocation(line: 798, column: 28, scope: !1308)
!1351 = !{!"654"}
!1352 = !DILocation(line: 798, column: 34, scope: !1308)
!1353 = !{!"655"}
!1354 = !DILocalVariable(name: "X_is_negative", scope: !1308, file: !1, line: 785, type: !5)
!1355 = !{!"656"}
!1356 = !DILocation(line: 799, column: 26, scope: !1308)
!1357 = !{!"657"}
!1358 = !{!"658"}
!1359 = !DILocation(line: 799, column: 28, scope: !1308)
!1360 = !{!"659"}
!1361 = !DILocation(line: 799, column: 34, scope: !1308)
!1362 = !{!"660"}
!1363 = !DILocalVariable(name: "Y_is_negative", scope: !1308, file: !1, line: 785, type: !5)
!1364 = !{!"661"}
!1365 = !DILocation(line: 806, column: 28, scope: !1308)
!1366 = !{!"662"}
!1367 = !DILocalVariable(name: "cond", scope: !1308, file: !1, line: 785, type: !5)
!1368 = !{!"663"}
!1369 = !DILocation(line: 807, column: 17, scope: !1308)
!1370 = !{!"664"}
!1371 = !DILocation(line: 807, column: 10, scope: !1308)
!1372 = !{!"665"}
!1373 = !DILocalVariable(name: "done", scope: !1308, file: !1, line: 785, type: !5)
!1374 = !{!"666"}
!1375 = !DILocation(line: 815, column: 17, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 815, column: 5)
!1377 = !{!"667"}
!1378 = !{!"668"}
!1379 = !DILocalVariable(name: "i", scope: !1308, file: !1, line: 783, type: !21)
!1380 = !{!"669"}
!1381 = !DILocation(line: 815, column: 10, scope: !1376)
!1382 = !{!"670"}
!1383 = !DILocation(line: 0, scope: !1376)
!1384 = !{!"671"}
!1385 = !{!"672"}
!1386 = !{!"673"}
!1387 = !{!"674"}
!1388 = !DILocation(line: 815, column: 22, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 815, column: 5)
!1390 = !{!"675"}
!1391 = !DILocation(line: 815, column: 5, scope: !1376)
!1392 = !{!"676"}
!1393 = !DILocation(line: 824, column: 43, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 816, column: 5)
!1395 = !{!"677"}
!1396 = !{!"678"}
!1397 = !DILocation(line: 824, column: 47, scope: !1394)
!1398 = !{!"679"}
!1399 = !DILocation(line: 824, column: 40, scope: !1394)
!1400 = !{!"680"}
!1401 = !{!"681"}
!1402 = !DILocation(line: 824, column: 56, scope: !1394)
!1403 = !{!"682"}
!1404 = !{!"683"}
!1405 = !DILocation(line: 824, column: 60, scope: !1394)
!1406 = !{!"684"}
!1407 = !DILocation(line: 824, column: 53, scope: !1394)
!1408 = !{!"685"}
!1409 = !{!"686"}
!1410 = !DILocation(line: 824, column: 16, scope: !1394)
!1411 = !{!"687"}
!1412 = !{!"688"}
!1413 = !DILocation(line: 825, column: 28, scope: !1394)
!1414 = !{!"689"}
!1415 = !DILocation(line: 825, column: 22, scope: !1394)
!1416 = !{!"690"}
!1417 = !DILocation(line: 825, column: 37, scope: !1394)
!1418 = !{!"691"}
!1419 = !DILocation(line: 825, column: 14, scope: !1394)
!1420 = !{!"692"}
!1421 = !{!"693"}
!1422 = !{!"694"}
!1423 = !DILocation(line: 826, column: 14, scope: !1394)
!1424 = !{!"695"}
!1425 = !{!"696"}
!1426 = !DILocation(line: 835, column: 43, scope: !1394)
!1427 = !{!"697"}
!1428 = !{!"698"}
!1429 = !DILocation(line: 835, column: 47, scope: !1394)
!1430 = !{!"699"}
!1431 = !DILocation(line: 835, column: 40, scope: !1394)
!1432 = !{!"700"}
!1433 = !{!"701"}
!1434 = !DILocation(line: 835, column: 56, scope: !1394)
!1435 = !{!"702"}
!1436 = !{!"703"}
!1437 = !DILocation(line: 835, column: 60, scope: !1394)
!1438 = !{!"704"}
!1439 = !DILocation(line: 835, column: 53, scope: !1394)
!1440 = !{!"705"}
!1441 = !{!"706"}
!1442 = !DILocation(line: 835, column: 16, scope: !1394)
!1443 = !{!"707"}
!1444 = !{!"708"}
!1445 = !DILocation(line: 836, column: 28, scope: !1394)
!1446 = !{!"709"}
!1447 = !DILocation(line: 836, column: 22, scope: !1394)
!1448 = !{!"710"}
!1449 = !DILocation(line: 836, column: 43, scope: !1394)
!1450 = !{!"711"}
!1451 = !DILocation(line: 836, column: 37, scope: !1394)
!1452 = !{!"712"}
!1453 = !DILocation(line: 836, column: 14, scope: !1394)
!1454 = !{!"713"}
!1455 = !{!"714"}
!1456 = !{!"715"}
!1457 = !DILocation(line: 837, column: 14, scope: !1394)
!1458 = !{!"716"}
!1459 = !{!"717"}
!1460 = !DILocation(line: 838, column: 5, scope: !1394)
!1461 = !{!"718"}
!1462 = !DILocation(line: 815, column: 28, scope: !1389)
!1463 = !{!"719"}
!1464 = !{!"720"}
!1465 = !DILocation(line: 815, column: 5, scope: !1389)
!1466 = distinct !{!1466, !1391, !1467, !97}
!1467 = !DILocation(line: 838, column: 5, scope: !1376)
!1468 = !{!"721"}
!1469 = !DILocation(line: 840, column: 5, scope: !1308)
!1470 = !{!"722"}
!1471 = !{!"723"}
!1472 = !DILocation(line: 841, column: 1, scope: !1308)
!1473 = !{!"724"}
!1474 = distinct !DISubprogram(name: "mbedtls_ct_rsaes_pkcs1_v15_unpadding", scope: !1, file: !1, line: 847, type: !1475, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!20, !568, !21, !568, !21, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1478 = !DILocalVariable(name: "input", arg: 1, scope: !1474, file: !1, line: 847, type: !568)
!1479 = !DILocation(line: 0, scope: !1474)
!1480 = !{!"725"}
!1481 = !DILocalVariable(name: "ilen", arg: 2, scope: !1474, file: !1, line: 848, type: !21)
!1482 = !{!"726"}
!1483 = !DILocalVariable(name: "output", arg: 3, scope: !1474, file: !1, line: 849, type: !568)
!1484 = !{!"727"}
!1485 = !DILocalVariable(name: "output_max_len", arg: 4, scope: !1474, file: !1, line: 850, type: !21)
!1486 = !{!"728"}
!1487 = !DILocalVariable(name: "olen", arg: 5, scope: !1474, file: !1, line: 851, type: !1477)
!1488 = !{!"729"}
!1489 = !DILocalVariable(name: "ret", scope: !1474, file: !1, line: 853, type: !20)
!1490 = !{!"730"}
!1491 = !DILocalVariable(name: "pad_count", scope: !1474, file: !1, line: 866, type: !21)
!1492 = !{!"731"}
!1493 = !DILocalVariable(name: "bad", scope: !1474, file: !1, line: 867, type: !5)
!1494 = !{!"732"}
!1495 = !DILocalVariable(name: "pad_done", scope: !1474, file: !1, line: 868, type: !19)
!1496 = !{!"733"}
!1497 = !DILocalVariable(name: "plaintext_size", scope: !1474, file: !1, line: 869, type: !21)
!1498 = !{!"734"}
!1499 = !DILocation(line: 872, column: 50, scope: !1474)
!1500 = !{!"735"}
!1501 = !DILocation(line: 872, column: 43, scope: !1474)
!1502 = !{!"736"}
!1503 = !DILocation(line: 872, column: 26, scope: !1474)
!1504 = !{!"737"}
!1505 = !DILocation(line: 872, column: 64, scope: !1474)
!1506 = !{!"738"}
!1507 = !{!"739"}
!1508 = !{!"740"}
!1509 = !{!"741"}
!1510 = !DILocalVariable(name: "plaintext_max_size", scope: !1474, file: !1, line: 854, type: !21)
!1511 = !{!"742"}
!1512 = !DILocation(line: 877, column: 12, scope: !1474)
!1513 = !{!"743"}
!1514 = !{!"744"}
!1515 = !{!"745"}
!1516 = !DILocation(line: 877, column: 9, scope: !1474)
!1517 = !{!"746"}
!1518 = !{!"747"}
!1519 = !DILocation(line: 882, column: 12, scope: !1474)
!1520 = !{!"748"}
!1521 = !{!"749"}
!1522 = !{!"750"}
!1523 = !DILocation(line: 882, column: 21, scope: !1474)
!1524 = !{!"751"}
!1525 = !DILocation(line: 882, column: 9, scope: !1474)
!1526 = !{!"752"}
!1527 = !{!"753"}
!1528 = !DILocalVariable(name: "i", scope: !1474, file: !1, line: 854, type: !21)
!1529 = !{!"754"}
!1530 = !DILocation(line: 886, column: 10, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 886, column: 5)
!1532 = !{!"755"}
!1533 = !DILocation(line: 0, scope: !1531)
!1534 = !{!"756"}
!1535 = !{!"757"}
!1536 = !{!"758"}
!1537 = !{!"759"}
!1538 = !{!"760"}
!1539 = !{!"761"}
!1540 = !DILocation(line: 886, column: 19, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1531, file: !1, line: 886, column: 5)
!1542 = !{!"762"}
!1543 = !DILocation(line: 886, column: 5, scope: !1531)
!1544 = !{!"763"}
!1545 = !DILocation(line: 888, column: 24, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 887, column: 5)
!1547 = !{!"764"}
!1548 = !{!"765"}
!1549 = !{!"766"}
!1550 = !DILocation(line: 888, column: 51, scope: !1546)
!1551 = !{!"767"}
!1552 = !{!"768"}
!1553 = !{!"769"}
!1554 = !DILocation(line: 888, column: 50, scope: !1546)
!1555 = !{!"770"}
!1556 = !DILocation(line: 888, column: 35, scope: !1546)
!1557 = !{!"771"}
!1558 = !{!"772"}
!1559 = !DILocation(line: 888, column: 33, scope: !1546)
!1560 = !{!"773"}
!1561 = !DILocation(line: 888, column: 61, scope: !1546)
!1562 = !{!"774"}
!1563 = !DILocation(line: 888, column: 67, scope: !1546)
!1564 = !{!"775"}
!1565 = !DILocation(line: 888, column: 19, scope: !1546)
!1566 = !{!"776"}
!1567 = !{!"777"}
!1568 = !{!"778"}
!1569 = !{!"779"}
!1570 = !DILocation(line: 889, column: 24, scope: !1546)
!1571 = !{!"780"}
!1572 = !DILocation(line: 889, column: 51, scope: !1546)
!1573 = !{!"781"}
!1574 = !DILocation(line: 889, column: 50, scope: !1546)
!1575 = !{!"782"}
!1576 = !DILocation(line: 889, column: 35, scope: !1546)
!1577 = !{!"783"}
!1578 = !{!"784"}
!1579 = !DILocation(line: 889, column: 33, scope: !1546)
!1580 = !{!"785"}
!1581 = !DILocation(line: 889, column: 61, scope: !1546)
!1582 = !{!"786"}
!1583 = !DILocation(line: 889, column: 67, scope: !1546)
!1584 = !{!"787"}
!1585 = !DILocation(line: 889, column: 22, scope: !1546)
!1586 = !{!"788"}
!1587 = !DILocation(line: 889, column: 19, scope: !1546)
!1588 = !{!"789"}
!1589 = !{!"790"}
!1590 = !DILocation(line: 890, column: 5, scope: !1546)
!1591 = !{!"791"}
!1592 = !DILocation(line: 886, column: 28, scope: !1541)
!1593 = !{!"792"}
!1594 = !{!"793"}
!1595 = !DILocation(line: 886, column: 5, scope: !1541)
!1596 = distinct !{!1596, !1543, !1597, !97}
!1597 = !DILocation(line: 890, column: 5, scope: !1531)
!1598 = !{!"794"}
!1599 = !DILocation(line: 894, column: 32, scope: !1474)
!1600 = !{!"795"}
!1601 = !DILocation(line: 894, column: 12, scope: !1474)
!1602 = !{!"796"}
!1603 = !DILocation(line: 894, column: 9, scope: !1474)
!1604 = !{!"797"}
!1605 = !{!"798"}
!1606 = !DILocation(line: 897, column: 12, scope: !1474)
!1607 = !{!"799"}
!1608 = !DILocation(line: 897, column: 9, scope: !1474)
!1609 = !{!"800"}
!1610 = !{!"801"}
!1611 = !DILocation(line: 907, column: 30, scope: !1474)
!1612 = !{!"802"}
!1613 = !DILocation(line: 908, column: 43, scope: !1474)
!1614 = !{!"803"}
!1615 = !DILocation(line: 908, column: 55, scope: !1474)
!1616 = !{!"804"}
!1617 = !DILocation(line: 908, column: 25, scope: !1474)
!1618 = !{!"805"}
!1619 = !DILocation(line: 906, column: 22, scope: !1474)
!1620 = !{!"806"}
!1621 = !{!"807"}
!1622 = !{!"808"}
!1623 = !DILocation(line: 912, column: 24, scope: !1474)
!1624 = !{!"809"}
!1625 = !DILocalVariable(name: "output_too_large", scope: !1474, file: !1, line: 870, type: !5)
!1626 = !{!"810"}
!1627 = !DILocation(line: 922, column: 21, scope: !1474)
!1628 = !{!"811"}
!1629 = !DILocation(line: 920, column: 19, scope: !1474)
!1630 = !{!"812"}
!1631 = !DILocation(line: 920, column: 11, scope: !1474)
!1632 = !{!"813"}
!1633 = !{!"814"}
!1634 = !DILocation(line: 932, column: 37, scope: !1474)
!1635 = !{!"815"}
!1636 = !DILocation(line: 932, column: 11, scope: !1474)
!1637 = !{!"816"}
!1638 = !{!"817"}
!1639 = !{!"818"}
!1640 = !DILocation(line: 933, column: 10, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 933, column: 5)
!1642 = !{!"819"}
!1643 = !DILocation(line: 0, scope: !1641)
!1644 = !{!"820"}
!1645 = !{!"821"}
!1646 = !DILocation(line: 933, column: 20, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1641, file: !1, line: 933, column: 5)
!1648 = !{!"822"}
!1649 = !DILocation(line: 933, column: 5, scope: !1641)
!1650 = !{!"823"}
!1651 = !DILocation(line: 934, column: 21, scope: !1647)
!1652 = !{!"824"}
!1653 = !DILocation(line: 934, column: 9, scope: !1647)
!1654 = !{!"825"}
!1655 = !DILocation(line: 934, column: 18, scope: !1647)
!1656 = !{!"826"}
!1657 = !{!"827"}
!1658 = !{!"828"}
!1659 = !{!"829"}
!1660 = !{!"830"}
!1661 = !{!"831"}
!1662 = !DILocation(line: 933, column: 29, scope: !1647)
!1663 = !{!"832"}
!1664 = !{!"833"}
!1665 = !DILocation(line: 933, column: 5, scope: !1647)
!1666 = distinct !{!1666, !1649, !1667, !97}
!1667 = !DILocation(line: 934, column: 22, scope: !1641)
!1668 = !{!"834"}
!1669 = !DILocation(line: 941, column: 42, scope: !1474)
!1670 = !{!"835"}
!1671 = !DILocation(line: 942, column: 42, scope: !1474)
!1672 = !{!"836"}
!1673 = !DILocation(line: 940, column: 22, scope: !1474)
!1674 = !{!"837"}
!1675 = !{!"838"}
!1676 = !{!"839"}
!1677 = !DILocation(line: 950, column: 40, scope: !1474)
!1678 = !{!"840"}
!1679 = !DILocation(line: 950, column: 47, scope: !1474)
!1680 = !{!"841"}
!1681 = !{!"842"}
!1682 = !DILocation(line: 952, column: 53, scope: !1474)
!1683 = !{!"843"}
!1684 = !DILocation(line: 950, column: 5, scope: !1474)
!1685 = !{!"844"}
!1686 = !DILocation(line: 961, column: 24, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 961, column: 9)
!1688 = !{!"845"}
!1689 = !DILocation(line: 961, column: 9, scope: !1474)
!1690 = !{!"846"}
!1691 = !DILocation(line: 962, column: 31, scope: !1687)
!1692 = !{!"847"}
!1693 = !DILocation(line: 962, column: 38, scope: !1687)
!1694 = !{!"848"}
!1695 = !{!"849"}
!1696 = !DILocation(line: 962, column: 9, scope: !1687)
!1697 = !{!"850"}
!1698 = !{!"851"}
!1699 = !DILocation(line: 968, column: 11, scope: !1474)
!1700 = !{!"852"}
!1701 = !DILocation(line: 970, column: 5, scope: !1474)
!1702 = !{!"853"}
!1703 = distinct !DISubprogram(name: "mbedtls_ct_size_gt", scope: !1, file: !1, line: 217, type: !195, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1704 = !DILocalVariable(name: "x", arg: 1, scope: !1703, file: !1, line: 217, type: !21)
!1705 = !DILocation(line: 0, scope: !1703)
!1706 = !{!"854"}
!1707 = !DILocalVariable(name: "y", arg: 2, scope: !1703, file: !1, line: 218, type: !21)
!1708 = !{!"855"}
!1709 = !DILocation(line: 221, column: 17, scope: !1703)
!1710 = !{!"856"}
!1711 = !DILocation(line: 221, column: 23, scope: !1703)
!1712 = !{!"857"}
!1713 = !DILocation(line: 221, column: 11, scope: !1703)
!1714 = !{!"858"}
!1715 = !DILocation(line: 221, column: 5, scope: !1703)
!1716 = !{!"859"}
!1717 = distinct !DISubprogram(name: "mbedtls_ct_mem_move_to_left", scope: !1, file: !1, line: 382, type: !1718, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !700, !21, !21}
!1720 = !DILocalVariable(name: "start", arg: 1, scope: !1717, file: !1, line: 382, type: !700)
!1721 = !DILocation(line: 0, scope: !1717)
!1722 = !{!"860"}
!1723 = !DILocalVariable(name: "total", arg: 2, scope: !1717, file: !1, line: 383, type: !21)
!1724 = !{!"861"}
!1725 = !DILocalVariable(name: "offset", arg: 3, scope: !1717, file: !1, line: 384, type: !21)
!1726 = !{!"862"}
!1727 = !DILocalVariable(name: "buf", scope: !1717, file: !1, line: 386, type: !1728)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1729 = !{!"863"}
!1730 = !DILocation(line: 388, column: 15, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 388, column: 9)
!1732 = !{!"864"}
!1733 = !DILocation(line: 388, column: 9, scope: !1717)
!1734 = !{!"865"}
!1735 = !DILocation(line: 389, column: 9, scope: !1731)
!1736 = !{!"866"}
!1737 = !DILocalVariable(name: "i", scope: !1717, file: !1, line: 387, type: !21)
!1738 = !{!"867"}
!1739 = !DILocation(line: 390, column: 10, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 390, column: 5)
!1741 = !{!"868"}
!1742 = !DILocation(line: 0, scope: !1740)
!1743 = !{!"869"}
!1744 = !{!"870"}
!1745 = !DILocation(line: 390, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 390, column: 5)
!1747 = !{!"871"}
!1748 = !DILocation(line: 390, column: 5, scope: !1740)
!1749 = !{!"872"}
!1750 = !DILocation(line: 392, column: 52, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1746, file: !1, line: 391, column: 5)
!1752 = !{!"873"}
!1753 = !DILocation(line: 392, column: 26, scope: !1751)
!1754 = !{!"874"}
!1755 = !DILocalVariable(name: "no_op", scope: !1751, file: !1, line: 392, type: !5)
!1756 = !DILocation(line: 0, scope: !1751)
!1757 = !{!"875"}
!1758 = !DILocalVariable(name: "n", scope: !1717, file: !1, line: 387, type: !21)
!1759 = !{!"876"}
!1760 = !DILocation(line: 396, column: 14, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1751, file: !1, line: 396, column: 9)
!1762 = !{!"877"}
!1763 = !DILocation(line: 0, scope: !1761)
!1764 = !{!"878"}
!1765 = !{!"879"}
!1766 = !DILocation(line: 396, column: 31, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1761, file: !1, line: 396, column: 9)
!1768 = !{!"880"}
!1769 = !DILocation(line: 396, column: 23, scope: !1767)
!1770 = !{!"881"}
!1771 = !DILocation(line: 396, column: 9, scope: !1761)
!1772 = !{!"882"}
!1773 = !DILocation(line: 398, column: 37, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1767, file: !1, line: 397, column: 9)
!1775 = !{!"883"}
!1776 = !{!"884"}
!1777 = !DILocalVariable(name: "current", scope: !1774, file: !1, line: 398, type: !19)
!1778 = !DILocation(line: 0, scope: !1774)
!1779 = !{!"885"}
!1780 = !DILocation(line: 399, column: 39, scope: !1774)
!1781 = !{!"886"}
!1782 = !DILocation(line: 399, column: 34, scope: !1774)
!1783 = !{!"887"}
!1784 = !{!"888"}
!1785 = !DILocalVariable(name: "next", scope: !1774, file: !1, line: 399, type: !19)
!1786 = !{!"889"}
!1787 = !DILocation(line: 400, column: 49, scope: !1774)
!1788 = !{!"890"}
!1789 = !DILocation(line: 400, column: 58, scope: !1774)
!1790 = !{!"891"}
!1791 = !DILocation(line: 400, column: 22, scope: !1774)
!1792 = !{!"892"}
!1793 = !{!"893"}
!1794 = !DILocation(line: 400, column: 13, scope: !1774)
!1795 = !{!"894"}
!1796 = !DILocation(line: 400, column: 20, scope: !1774)
!1797 = !{!"895"}
!1798 = !DILocation(line: 401, column: 9, scope: !1774)
!1799 = !{!"896"}
!1800 = !DILocation(line: 396, column: 37, scope: !1767)
!1801 = !{!"897"}
!1802 = !{!"898"}
!1803 = !DILocation(line: 396, column: 9, scope: !1767)
!1804 = distinct !{!1804, !1771, !1805, !97}
!1805 = !DILocation(line: 401, column: 9, scope: !1761)
!1806 = !{!"899"}
!1807 = !DILocation(line: 402, column: 60, scope: !1751)
!1808 = !{!"900"}
!1809 = !DILocation(line: 402, column: 51, scope: !1751)
!1810 = !{!"901"}
!1811 = !{!"902"}
!1812 = !{!"903"}
!1813 = !DILocation(line: 402, column: 24, scope: !1751)
!1814 = !{!"904"}
!1815 = !{!"905"}
!1816 = !DILocation(line: 402, column: 18, scope: !1751)
!1817 = !{!"906"}
!1818 = !DILocation(line: 402, column: 9, scope: !1751)
!1819 = !{!"907"}
!1820 = !DILocation(line: 402, column: 22, scope: !1751)
!1821 = !{!"908"}
!1822 = !DILocation(line: 403, column: 5, scope: !1751)
!1823 = !{!"909"}
!1824 = !DILocation(line: 390, column: 29, scope: !1746)
!1825 = !{!"910"}
!1826 = !{!"911"}
!1827 = !DILocation(line: 390, column: 5, scope: !1746)
!1828 = distinct !{!1828, !1748, !1829, !97}
!1829 = !DILocation(line: 403, column: 5, scope: !1740)
!1830 = !{!"912"}
!1831 = !DILocation(line: 404, column: 1, scope: !1717)
!1832 = !{!"913"}
!1833 = distinct !DISubprogram(name: "mbedtls_ct_size_mask_lt_wrapper", scope: !25, file: !25, line: 3, type: !1834, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!20, !21, !21}
!1836 = !DILocalVariable(name: "x", arg: 1, scope: !1833, file: !25, line: 3, type: !21)
!1837 = !DILocation(line: 0, scope: !1833)
!1838 = !{!"914"}
!1839 = !DILocalVariable(name: "y", arg: 2, scope: !1833, file: !25, line: 4, type: !21)
!1840 = !{!"915"}
!1841 = !DILocation(line: 7, column: 2, scope: !1833)
!1842 = !{!"916"}
!1843 = !DILocation(line: 9, column: 1, scope: !1833)
!1844 = !{!"917"}
!1845 = distinct !DISubprogram(name: "mbedtls_ct_size_mask_lt_wrapper_t", scope: !25, file: !25, line: 16, type: !1846, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null}
!1848 = !DILocation(line: 17, column: 13, scope: !1845)
!1849 = !{!"918"}
!1850 = !DILocalVariable(name: "x", scope: !1845, file: !25, line: 17, type: !21)
!1851 = !DILocation(line: 0, scope: !1845)
!1852 = !{!"919"}
!1853 = !DILocation(line: 18, column: 13, scope: !1845)
!1854 = !{!"920"}
!1855 = !DILocalVariable(name: "y", scope: !1845, file: !25, line: 18, type: !21)
!1856 = !{!"921"}
!1857 = !DILocation(line: 20, column: 2, scope: !1845)
!1858 = !{!"922"}
!1859 = !DILocation(line: 21, column: 1, scope: !1845)
!1860 = !{!"923"}
