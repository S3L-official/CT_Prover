; ModuleID = 'mbedtls_ct_base64_dec_value-k.ll'
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
  %4 = zext i8 %2 to i32, !dbg !428, !psr.id !429, !ValueTainted !430
  %5 = zext i8 %0 to i32, !dbg !431, !psr.id !432
  %6 = sub i32 %4, %5, !dbg !433, !psr.id !434, !ValueTainted !430
  %7 = lshr i32 %6, 8, !dbg !435, !psr.id !436, !ValueTainted !430
  call void @llvm.dbg.value(metadata i32 %7, metadata !437, metadata !DIExpression()), !dbg !422, !psr.id !438
  %8 = zext i8 %1 to i32, !dbg !439, !psr.id !440
  %9 = zext i8 %2 to i32, !dbg !441, !psr.id !442, !ValueTainted !430
  %10 = sub i32 %8, %9, !dbg !443, !psr.id !444, !ValueTainted !430
  %11 = lshr i32 %10, 8, !dbg !445, !psr.id !446, !ValueTainted !430
  call void @llvm.dbg.value(metadata i32 %11, metadata !447, metadata !DIExpression()), !dbg !422, !psr.id !448
  %12 = or i32 %7, %11, !dbg !449, !psr.id !450, !ValueTainted !430
  %13 = xor i32 %12, -1, !dbg !451, !psr.id !452, !ValueTainted !430
  %14 = and i32 %13, 255, !dbg !453, !psr.id !454, !ValueTainted !430
  %15 = trunc i32 %14 to i8, !dbg !455, !psr.id !456, !ValueTainted !430
  ret i8 %15, !dbg !457, !psr.id !458
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @mbedtls_ct_base64_dec_value(i8 zeroext %0) #0 !dbg !459 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !463, metadata !DIExpression()), !dbg !464, !psr.id !465
  call void @llvm.dbg.value(metadata i8 0, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !467
  %2 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 65, i8 zeroext 90, i8 zeroext %0), !dbg !468, !psr.id !469, !ValueTainted !430
  %3 = zext i8 %2 to i32, !dbg !468, !psr.id !470, !ValueTainted !430
  %4 = zext i8 %0 to i32, !dbg !471, !psr.id !472, !ValueTainted !430
  %5 = sub nsw i32 %4, 65, !dbg !473, !psr.id !474, !ValueTainted !430
  %6 = add nsw i32 %5, 0, !dbg !475, !psr.id !476, !ValueTainted !430
  %7 = add nsw i32 %6, 1, !dbg !477, !psr.id !478, !ValueTainted !430
  %8 = and i32 %3, %7, !dbg !479, !psr.id !480, !ValueTainted !430
  %9 = zext i8 0 to i32, !dbg !481, !psr.id !482
  %10 = or i32 %9, %8, !dbg !481, !psr.id !483, !ValueTainted !430
  %11 = trunc i32 %10 to i8, !dbg !481, !psr.id !484, !ValueTainted !430
  call void @llvm.dbg.value(metadata i8 %11, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !485
  %12 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 97, i8 zeroext 122, i8 zeroext %0), !dbg !486, !psr.id !487, !ValueTainted !430
  %13 = zext i8 %12 to i32, !dbg !486, !psr.id !488, !ValueTainted !430
  %14 = zext i8 %0 to i32, !dbg !489, !psr.id !490, !ValueTainted !430
  %15 = sub nsw i32 %14, 97, !dbg !491, !psr.id !492, !ValueTainted !430
  %16 = add nsw i32 %15, 26, !dbg !493, !psr.id !494, !ValueTainted !430
  %17 = add nsw i32 %16, 1, !dbg !495, !psr.id !496, !ValueTainted !430
  %18 = and i32 %13, %17, !dbg !497, !psr.id !498, !ValueTainted !430
  %19 = zext i8 %11 to i32, !dbg !499, !psr.id !500, !ValueTainted !430
  %20 = or i32 %19, %18, !dbg !499, !psr.id !501, !ValueTainted !430
  %21 = trunc i32 %20 to i8, !dbg !499, !psr.id !502, !ValueTainted !430
  call void @llvm.dbg.value(metadata i8 %21, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !503
  %22 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 48, i8 zeroext 57, i8 zeroext %0), !dbg !504, !psr.id !505, !ValueTainted !430
  %23 = zext i8 %22 to i32, !dbg !504, !psr.id !506, !ValueTainted !430
  %24 = zext i8 %0 to i32, !dbg !507, !psr.id !508, !ValueTainted !430
  %25 = sub nsw i32 %24, 48, !dbg !509, !psr.id !510, !ValueTainted !430
  %26 = add nsw i32 %25, 52, !dbg !511, !psr.id !512, !ValueTainted !430
  %27 = add nsw i32 %26, 1, !dbg !513, !psr.id !514, !ValueTainted !430
  %28 = and i32 %23, %27, !dbg !515, !psr.id !516, !ValueTainted !430
  %29 = zext i8 %21 to i32, !dbg !517, !psr.id !518, !ValueTainted !430
  %30 = or i32 %29, %28, !dbg !517, !psr.id !519, !ValueTainted !430
  %31 = trunc i32 %30 to i8, !dbg !517, !psr.id !520, !ValueTainted !430
  call void @llvm.dbg.value(metadata i8 %31, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !521
  %32 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 43, i8 zeroext 43, i8 zeroext %0), !dbg !522, !psr.id !523, !ValueTainted !430
  %33 = zext i8 %32 to i32, !dbg !522, !psr.id !524, !ValueTainted !430
  %34 = zext i8 %0 to i32, !dbg !525, !psr.id !526, !ValueTainted !430
  %35 = sub nsw i32 %34, 43, !dbg !527, !psr.id !528, !ValueTainted !430
  %36 = add nsw i32 %35, 62, !dbg !529, !psr.id !530, !ValueTainted !430
  %37 = add nsw i32 %36, 1, !dbg !531, !psr.id !532, !ValueTainted !430
  %38 = and i32 %33, %37, !dbg !533, !psr.id !534, !ValueTainted !430
  %39 = zext i8 %31 to i32, !dbg !535, !psr.id !536, !ValueTainted !430
  %40 = or i32 %39, %38, !dbg !535, !psr.id !537, !ValueTainted !430
  %41 = trunc i32 %40 to i8, !dbg !535, !psr.id !538, !ValueTainted !430
  call void @llvm.dbg.value(metadata i8 %41, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !539
  %42 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 47, i8 zeroext 47, i8 zeroext %0), !dbg !540, !psr.id !541, !ValueTainted !430
  %43 = zext i8 %42 to i32, !dbg !540, !psr.id !542, !ValueTainted !430
  %44 = zext i8 %0 to i32, !dbg !543, !psr.id !544, !ValueTainted !430
  %45 = sub nsw i32 %44, 47, !dbg !545, !psr.id !546, !ValueTainted !430
  %46 = add nsw i32 %45, 63, !dbg !547, !psr.id !548, !ValueTainted !430
  %47 = add nsw i32 %46, 1, !dbg !549, !psr.id !550, !ValueTainted !430
  %48 = and i32 %43, %47, !dbg !551, !psr.id !552, !ValueTainted !430
  %49 = zext i8 %41 to i32, !dbg !553, !psr.id !554, !ValueTainted !430
  %50 = or i32 %49, %48, !dbg !553, !psr.id !555, !ValueTainted !430
  %51 = trunc i32 %50 to i8, !dbg !553, !psr.id !556, !ValueTainted !430
  call void @llvm.dbg.value(metadata i8 %51, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !557
  %52 = zext i8 %51 to i32, !dbg !558, !psr.id !559, !ValueTainted !430
  %53 = sub nsw i32 %52, 1, !dbg !560, !psr.id !561, !ValueTainted !430
  %54 = trunc i32 %53 to i8, !dbg !562, !psr.id !563, !ValueTainted !430
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
  %.02 = phi i32 [ 0, %3 ], [ %24, %26 ], !dbg !1229, !psr.id !1247
  %.01 = phi i32 [ 0, %3 ], [ %25, %26 ], !dbg !1229, !psr.id !1248
  %.0 = phi i64 [ %2, %3 ], [ %27, %26 ], !dbg !1243, !psr.id !1249
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1241, metadata !DIExpression()), !dbg !1243, !psr.id !1250
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1235, metadata !DIExpression()), !dbg !1229, !psr.id !1251
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1239, metadata !DIExpression()), !dbg !1229, !psr.id !1252
  %5 = icmp ugt i64 %.0, 0, !dbg !1253, !psr.id !1255
  br i1 %5, label %6, label %28, !dbg !1256, !psr.id !1257

6:                                                ; preds = %4
  %7 = sub i64 %.0, 1, !dbg !1258, !psr.id !1260
  %8 = getelementptr inbounds i64, i64* %1, i64 %7, !dbg !1261, !psr.id !1262
  %9 = load i64, i64* %8, align 8, !dbg !1261, !psr.id !1263
  %10 = sub i64 %.0, 1, !dbg !1264, !psr.id !1265
  %11 = getelementptr inbounds i64, i64* %0, i64 %10, !dbg !1266, !psr.id !1267
  %12 = load i64, i64* %11, align 8, !dbg !1266, !psr.id !1268
  %13 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %9, i64 %12), !dbg !1269, !psr.id !1270
  call void @llvm.dbg.value(metadata i32 %13, metadata !1237, metadata !DIExpression()), !dbg !1229, !psr.id !1271
  %14 = or i32 %.01, %13, !dbg !1272, !psr.id !1273
  call void @llvm.dbg.value(metadata i32 %14, metadata !1235, metadata !DIExpression()), !dbg !1229, !psr.id !1274
  %15 = sub i64 %.0, 1, !dbg !1275, !psr.id !1276
  %16 = getelementptr inbounds i64, i64* %0, i64 %15, !dbg !1277, !psr.id !1278
  %17 = load i64, i64* %16, align 8, !dbg !1277, !psr.id !1279
  %18 = sub i64 %.0, 1, !dbg !1280, !psr.id !1281
  %19 = getelementptr inbounds i64, i64* %1, i64 %18, !dbg !1282, !psr.id !1283
  %20 = load i64, i64* %19, align 8, !dbg !1282, !psr.id !1284
  %21 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %17, i64 %20), !dbg !1285, !psr.id !1286
  call void @llvm.dbg.value(metadata i32 %21, metadata !1237, metadata !DIExpression()), !dbg !1229, !psr.id !1287
  %22 = sub i32 1, %14, !dbg !1288, !psr.id !1289
  %23 = and i32 %21, %22, !dbg !1290, !psr.id !1291
  %24 = or i32 %.02, %23, !dbg !1292, !psr.id !1293
  call void @llvm.dbg.value(metadata i32 %24, metadata !1239, metadata !DIExpression()), !dbg !1229, !psr.id !1294
  %25 = or i32 %14, %21, !dbg !1295, !psr.id !1296
  call void @llvm.dbg.value(metadata i32 %25, metadata !1235, metadata !DIExpression()), !dbg !1229, !psr.id !1297
  br label %26, !dbg !1298, !psr.id !1299

26:                                               ; preds = %6
  %27 = add i64 %.0, -1, !dbg !1300, !psr.id !1301
  call void @llvm.dbg.value(metadata i64 %27, metadata !1241, metadata !DIExpression()), !dbg !1243, !psr.id !1302
  br label %4, !dbg !1303, !llvm.loop !1304, !psr.id !1306

28:                                               ; preds = %4
  ret i32 %.02, !dbg !1307, !psr.id !1308
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i32* %2) #0 !dbg !1309 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !1313, metadata !DIExpression()), !dbg !1314, !psr.id !1315
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !1316, metadata !DIExpression()), !dbg !1314, !psr.id !1317
  call void @llvm.dbg.value(metadata i32* %2, metadata !1318, metadata !DIExpression()), !dbg !1314, !psr.id !1319
  br label %4, !dbg !1320, !psr.id !1321

4:                                                ; preds = %3
  br label %5, !dbg !1322, !psr.id !1324

5:                                                ; preds = %4
  br label %6, !dbg !1325, !psr.id !1326

6:                                                ; preds = %5
  br label %7, !dbg !1327, !psr.id !1329

7:                                                ; preds = %6
  br label %8, !dbg !1330, !psr.id !1331

8:                                                ; preds = %7
  br label %9, !dbg !1332, !psr.id !1334

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1335, !psr.id !1337
  %11 = load i64, i64* %10, align 8, !dbg !1335, !psr.id !1338
  %12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1339, !psr.id !1340
  %13 = load i64, i64* %12, align 8, !dbg !1339, !psr.id !1341
  %14 = icmp ne i64 %11, %13, !dbg !1342, !psr.id !1343
  br i1 %14, label %15, label %16, !dbg !1344, !psr.id !1345

15:                                               ; preds = %9
  br label %70, !dbg !1346, !psr.id !1347

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1348, !psr.id !1349
  %18 = load i32, i32* %17, align 8, !dbg !1348, !psr.id !1350
  %19 = and i32 %18, 2, !dbg !1351, !psr.id !1352
  %20 = ashr i32 %19, 1, !dbg !1353, !psr.id !1354
  call void @llvm.dbg.value(metadata i32 %20, metadata !1355, metadata !DIExpression()), !dbg !1314, !psr.id !1356
  %21 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1357, !psr.id !1358
  %22 = load i32, i32* %21, align 8, !dbg !1357, !psr.id !1359
  %23 = and i32 %22, 2, !dbg !1360, !psr.id !1361
  %24 = ashr i32 %23, 1, !dbg !1362, !psr.id !1363
  call void @llvm.dbg.value(metadata i32 %24, metadata !1364, metadata !DIExpression()), !dbg !1314, !psr.id !1365
  %25 = xor i32 %20, %24, !dbg !1366, !psr.id !1367
  call void @llvm.dbg.value(metadata i32 %25, metadata !1368, metadata !DIExpression()), !dbg !1314, !psr.id !1369
  %26 = and i32 %25, %20, !dbg !1370, !psr.id !1371
  store i32 %26, i32* %2, align 4, !dbg !1372, !psr.id !1373
  call void @llvm.dbg.value(metadata i32 %25, metadata !1374, metadata !DIExpression()), !dbg !1314, !psr.id !1375
  %27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1376, !psr.id !1378
  %28 = load i64, i64* %27, align 8, !dbg !1376, !psr.id !1379
  call void @llvm.dbg.value(metadata i64 %28, metadata !1380, metadata !DIExpression()), !dbg !1314, !psr.id !1381
  br label %29, !dbg !1382, !psr.id !1383

29:                                               ; preds = %67, %16
  %.02 = phi i64 [ %28, %16 ], [ %68, %67 ], !dbg !1384, !psr.id !1385
  %.01 = phi i32 [ %25, %16 ], [ %66, %67 ], !dbg !1314, !psr.id !1386
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1374, metadata !DIExpression()), !dbg !1314, !psr.id !1387
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1380, metadata !DIExpression()), !dbg !1314, !psr.id !1388
  %30 = icmp ugt i64 %.02, 0, !dbg !1389, !psr.id !1391
  br i1 %30, label %31, label %69, !dbg !1392, !psr.id !1393

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1394, !psr.id !1396
  %33 = load i64*, i64** %32, align 8, !dbg !1394, !psr.id !1397
  %34 = sub i64 %.02, 1, !dbg !1398, !psr.id !1399
  %35 = getelementptr inbounds i64, i64* %33, i64 %34, !dbg !1400, !psr.id !1401
  %36 = load i64, i64* %35, align 8, !dbg !1400, !psr.id !1402
  %37 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1403, !psr.id !1404
  %38 = load i64*, i64** %37, align 8, !dbg !1403, !psr.id !1405
  %39 = sub i64 %.02, 1, !dbg !1406, !psr.id !1407
  %40 = getelementptr inbounds i64, i64* %38, i64 %39, !dbg !1408, !psr.id !1409
  %41 = load i64, i64* %40, align 8, !dbg !1408, !psr.id !1410
  %42 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %36, i64 %41), !dbg !1411, !psr.id !1412
  call void @llvm.dbg.value(metadata i32 %42, metadata !1368, metadata !DIExpression()), !dbg !1314, !psr.id !1413
  %43 = sub i32 1, %.01, !dbg !1414, !psr.id !1415
  %44 = and i32 %42, %43, !dbg !1416, !psr.id !1417
  %45 = and i32 %44, %20, !dbg !1418, !psr.id !1419
  %46 = load i32, i32* %2, align 4, !dbg !1420, !psr.id !1421
  %47 = or i32 %46, %45, !dbg !1420, !psr.id !1422
  store i32 %47, i32* %2, align 4, !dbg !1420, !psr.id !1423
  %48 = or i32 %.01, %42, !dbg !1424, !psr.id !1425
  call void @llvm.dbg.value(metadata i32 %48, metadata !1374, metadata !DIExpression()), !dbg !1314, !psr.id !1426
  %49 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1427, !psr.id !1428
  %50 = load i64*, i64** %49, align 8, !dbg !1427, !psr.id !1429
  %51 = sub i64 %.02, 1, !dbg !1430, !psr.id !1431
  %52 = getelementptr inbounds i64, i64* %50, i64 %51, !dbg !1432, !psr.id !1433
  %53 = load i64, i64* %52, align 8, !dbg !1432, !psr.id !1434
  %54 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1435, !psr.id !1436
  %55 = load i64*, i64** %54, align 8, !dbg !1435, !psr.id !1437
  %56 = sub i64 %.02, 1, !dbg !1438, !psr.id !1439
  %57 = getelementptr inbounds i64, i64* %55, i64 %56, !dbg !1440, !psr.id !1441
  %58 = load i64, i64* %57, align 8, !dbg !1440, !psr.id !1442
  %59 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %53, i64 %58), !dbg !1443, !psr.id !1444
  call void @llvm.dbg.value(metadata i32 %59, metadata !1368, metadata !DIExpression()), !dbg !1314, !psr.id !1445
  %60 = sub i32 1, %48, !dbg !1446, !psr.id !1447
  %61 = and i32 %59, %60, !dbg !1448, !psr.id !1449
  %62 = sub i32 1, %20, !dbg !1450, !psr.id !1451
  %63 = and i32 %61, %62, !dbg !1452, !psr.id !1453
  %64 = load i32, i32* %2, align 4, !dbg !1454, !psr.id !1455
  %65 = or i32 %64, %63, !dbg !1454, !psr.id !1456
  store i32 %65, i32* %2, align 4, !dbg !1454, !psr.id !1457
  %66 = or i32 %48, %59, !dbg !1458, !psr.id !1459
  call void @llvm.dbg.value(metadata i32 %66, metadata !1374, metadata !DIExpression()), !dbg !1314, !psr.id !1460
  br label %67, !dbg !1461, !psr.id !1462

67:                                               ; preds = %31
  %68 = add i64 %.02, -1, !dbg !1463, !psr.id !1464
  call void @llvm.dbg.value(metadata i64 %68, metadata !1380, metadata !DIExpression()), !dbg !1314, !psr.id !1465
  br label %29, !dbg !1466, !llvm.loop !1467, !psr.id !1469

69:                                               ; preds = %29
  br label %70, !dbg !1470, !psr.id !1471

70:                                               ; preds = %69, %15
  %.0 = phi i32 [ -4, %15 ], [ 0, %69 ], !dbg !1314, !psr.id !1472
  ret i32 %.0, !dbg !1473, !psr.id !1474
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_rsaes_pkcs1_v15_unpadding(i8* %0, i64 %1, i8* %2, i64 %3, i64* %4) #0 !dbg !1475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1479, metadata !DIExpression()), !dbg !1480, !psr.id !1481
  call void @llvm.dbg.value(metadata i64 %1, metadata !1482, metadata !DIExpression()), !dbg !1480, !psr.id !1483
  call void @llvm.dbg.value(metadata i8* %2, metadata !1484, metadata !DIExpression()), !dbg !1480, !psr.id !1485
  call void @llvm.dbg.value(metadata i64 %3, metadata !1486, metadata !DIExpression()), !dbg !1480, !psr.id !1487
  call void @llvm.dbg.value(metadata i64* %4, metadata !1488, metadata !DIExpression()), !dbg !1480, !psr.id !1489
  call void @llvm.dbg.value(metadata i32 -110, metadata !1490, metadata !DIExpression()), !dbg !1480, !psr.id !1491
  call void @llvm.dbg.value(metadata i64 0, metadata !1492, metadata !DIExpression()), !dbg !1480, !psr.id !1493
  call void @llvm.dbg.value(metadata i32 0, metadata !1494, metadata !DIExpression()), !dbg !1480, !psr.id !1495
  call void @llvm.dbg.value(metadata i8 0, metadata !1496, metadata !DIExpression()), !dbg !1480, !psr.id !1497
  call void @llvm.dbg.value(metadata i64 0, metadata !1498, metadata !DIExpression()), !dbg !1480, !psr.id !1499
  %6 = sub i64 %1, 11, !dbg !1500, !psr.id !1501
  %7 = icmp ugt i64 %3, %6, !dbg !1502, !psr.id !1503
  br i1 %7, label %8, label %10, !dbg !1504, !psr.id !1505

8:                                                ; preds = %5
  %9 = sub i64 %1, 11, !dbg !1506, !psr.id !1507
  br label %11, !dbg !1504, !psr.id !1508

10:                                               ; preds = %5
  br label %11, !dbg !1504, !psr.id !1509

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ %3, %10 ], !dbg !1504, !psr.id !1510
  call void @llvm.dbg.value(metadata i64 %12, metadata !1511, metadata !DIExpression()), !dbg !1480, !psr.id !1512
  %13 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1513, !psr.id !1514
  %14 = load i8, i8* %13, align 1, !dbg !1513, !psr.id !1515
  %15 = zext i8 %14 to i32, !dbg !1513, !psr.id !1516
  %16 = or i32 0, %15, !dbg !1517, !psr.id !1518
  call void @llvm.dbg.value(metadata i32 %16, metadata !1494, metadata !DIExpression()), !dbg !1480, !psr.id !1519
  %17 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1520, !psr.id !1521
  %18 = load i8, i8* %17, align 1, !dbg !1520, !psr.id !1522
  %19 = zext i8 %18 to i32, !dbg !1520, !psr.id !1523
  %20 = xor i32 %19, 2, !dbg !1524, !psr.id !1525
  %21 = or i32 %16, %20, !dbg !1526, !psr.id !1527
  call void @llvm.dbg.value(metadata i32 %21, metadata !1494, metadata !DIExpression()), !dbg !1480, !psr.id !1528
  call void @llvm.dbg.value(metadata i64 2, metadata !1529, metadata !DIExpression()), !dbg !1480, !psr.id !1530
  br label %22, !dbg !1531, !psr.id !1533

22:                                               ; preds = %50, %11
  %.02 = phi i64 [ 2, %11 ], [ %51, %50 ], !dbg !1534, !psr.id !1535
  %.01 = phi i64 [ 0, %11 ], [ %49, %50 ], !dbg !1480, !psr.id !1536
  %.0 = phi i8 [ 0, %11 ], [ %39, %50 ], !dbg !1480, !psr.id !1537
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1496, metadata !DIExpression()), !dbg !1480, !psr.id !1538
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1492, metadata !DIExpression()), !dbg !1480, !psr.id !1539
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1529, metadata !DIExpression()), !dbg !1480, !psr.id !1540
  %23 = icmp ult i64 %.02, %1, !dbg !1541, !psr.id !1543
  br i1 %23, label %24, label %52, !dbg !1544, !psr.id !1545

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, i8* %0, i64 %.02, !dbg !1546, !psr.id !1548
  %26 = load i8, i8* %25, align 1, !dbg !1546, !psr.id !1549
  %27 = zext i8 %26 to i32, !dbg !1546, !psr.id !1550
  %28 = getelementptr inbounds i8, i8* %0, i64 %.02, !dbg !1551, !psr.id !1552
  %29 = load i8, i8* %28, align 1, !dbg !1551, !psr.id !1553
  %30 = zext i8 %29 to i32, !dbg !1551, !psr.id !1554
  %31 = sub nsw i32 0, %30, !dbg !1555, !psr.id !1556
  %32 = trunc i32 %31 to i8, !dbg !1557, !psr.id !1558
  %33 = zext i8 %32 to i32, !dbg !1557, !psr.id !1559
  %34 = or i32 %27, %33, !dbg !1560, !psr.id !1561
  %35 = ashr i32 %34, 7, !dbg !1562, !psr.id !1563
  %36 = xor i32 %35, 1, !dbg !1564, !psr.id !1565
  %37 = zext i8 %.0 to i32, !dbg !1566, !psr.id !1567
  %38 = or i32 %37, %36, !dbg !1566, !psr.id !1568
  %39 = trunc i32 %38 to i8, !dbg !1566, !psr.id !1569
  call void @llvm.dbg.value(metadata i8 %39, metadata !1496, metadata !DIExpression()), !dbg !1480, !psr.id !1570
  %40 = zext i8 %39 to i32, !dbg !1571, !psr.id !1572
  %41 = zext i8 %39 to i32, !dbg !1573, !psr.id !1574
  %42 = sub nsw i32 0, %41, !dbg !1575, !psr.id !1576
  %43 = trunc i32 %42 to i8, !dbg !1577, !psr.id !1578
  %44 = zext i8 %43 to i32, !dbg !1577, !psr.id !1579
  %45 = or i32 %40, %44, !dbg !1580, !psr.id !1581
  %46 = ashr i32 %45, 7, !dbg !1582, !psr.id !1583
  %47 = xor i32 %46, 1, !dbg !1584, !psr.id !1585
  %48 = sext i32 %47 to i64, !dbg !1586, !psr.id !1587
  %49 = add i64 %.01, %48, !dbg !1588, !psr.id !1589
  call void @llvm.dbg.value(metadata i64 %49, metadata !1492, metadata !DIExpression()), !dbg !1480, !psr.id !1590
  br label %50, !dbg !1591, !psr.id !1592

50:                                               ; preds = %24
  %51 = add i64 %.02, 1, !dbg !1593, !psr.id !1594
  call void @llvm.dbg.value(metadata i64 %51, metadata !1529, metadata !DIExpression()), !dbg !1480, !psr.id !1595
  br label %22, !dbg !1596, !llvm.loop !1597, !psr.id !1599

52:                                               ; preds = %22
  %53 = zext i8 %.0 to i32, !dbg !1600, !psr.id !1601
  %54 = call i32 @mbedtls_ct_uint_if(i32 %53, i32 0, i32 1), !dbg !1602, !psr.id !1603
  %55 = or i32 %21, %54, !dbg !1604, !psr.id !1605
  call void @llvm.dbg.value(metadata i32 %55, metadata !1494, metadata !DIExpression()), !dbg !1480, !psr.id !1606
  %56 = call i32 @mbedtls_ct_size_gt(i64 8, i64 %.01), !dbg !1607, !psr.id !1608
  %57 = or i32 %55, %56, !dbg !1609, !psr.id !1610
  call void @llvm.dbg.value(metadata i32 %57, metadata !1494, metadata !DIExpression()), !dbg !1480, !psr.id !1611
  %58 = trunc i64 %12 to i32, !dbg !1612, !psr.id !1613
  %59 = sub i64 %1, %.01, !dbg !1614, !psr.id !1615
  %60 = sub i64 %59, 3, !dbg !1616, !psr.id !1617
  %61 = trunc i64 %60 to i32, !dbg !1618, !psr.id !1619
  %62 = call i32 @mbedtls_ct_uint_if(i32 %57, i32 %58, i32 %61), !dbg !1620, !psr.id !1621
  %63 = zext i32 %62 to i64, !dbg !1620, !psr.id !1622
  call void @llvm.dbg.value(metadata i64 %63, metadata !1498, metadata !DIExpression()), !dbg !1480, !psr.id !1623
  %64 = call i32 @mbedtls_ct_size_gt(i64 %63, i64 %12), !dbg !1624, !psr.id !1625
  call void @llvm.dbg.value(metadata i32 %64, metadata !1626, metadata !DIExpression()), !dbg !1480, !psr.id !1627
  %65 = call i32 @mbedtls_ct_uint_if(i32 %64, i32 17408, i32 0), !dbg !1628, !psr.id !1629
  %66 = call i32 @mbedtls_ct_uint_if(i32 %57, i32 16640, i32 %65), !dbg !1630, !psr.id !1631
  %67 = sub nsw i32 0, %66, !dbg !1632, !psr.id !1633
  call void @llvm.dbg.value(metadata i32 %67, metadata !1490, metadata !DIExpression()), !dbg !1480, !psr.id !1634
  %68 = or i32 %57, %64, !dbg !1635, !psr.id !1636
  %69 = call i32 @mbedtls_ct_uint_mask(i32 %68), !dbg !1637, !psr.id !1638
  call void @llvm.dbg.value(metadata i32 %69, metadata !1494, metadata !DIExpression()), !dbg !1480, !psr.id !1639
  call void @llvm.dbg.value(metadata i64 11, metadata !1529, metadata !DIExpression()), !dbg !1480, !psr.id !1640
  br label %70, !dbg !1641, !psr.id !1643

70:                                               ; preds = %79, %52
  %.1 = phi i64 [ 11, %52 ], [ %80, %79 ], !dbg !1644, !psr.id !1645
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1529, metadata !DIExpression()), !dbg !1480, !psr.id !1646
  %71 = icmp ult i64 %.1, %1, !dbg !1647, !psr.id !1649
  br i1 %71, label %72, label %81, !dbg !1650, !psr.id !1651

72:                                               ; preds = %70
  %73 = xor i32 %69, -1, !dbg !1652, !psr.id !1653
  %74 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !1654, !psr.id !1655
  %75 = load i8, i8* %74, align 1, !dbg !1656, !psr.id !1657
  %76 = zext i8 %75 to i32, !dbg !1656, !psr.id !1658
  %77 = and i32 %76, %73, !dbg !1656, !psr.id !1659
  %78 = trunc i32 %77 to i8, !dbg !1656, !psr.id !1660
  store i8 %78, i8* %74, align 1, !dbg !1656, !psr.id !1661
  br label %79, !dbg !1654, !psr.id !1662

79:                                               ; preds = %72
  %80 = add i64 %.1, 1, !dbg !1663, !psr.id !1664
  call void @llvm.dbg.value(metadata i64 %80, metadata !1529, metadata !DIExpression()), !dbg !1480, !psr.id !1665
  br label %70, !dbg !1666, !llvm.loop !1667, !psr.id !1669

81:                                               ; preds = %70
  %82 = trunc i64 %12 to i32, !dbg !1670, !psr.id !1671
  %83 = trunc i64 %63 to i32, !dbg !1672, !psr.id !1673
  %84 = call i32 @mbedtls_ct_uint_if(i32 %64, i32 %82, i32 %83), !dbg !1674, !psr.id !1675
  %85 = zext i32 %84 to i64, !dbg !1674, !psr.id !1676
  call void @llvm.dbg.value(metadata i64 %85, metadata !1498, metadata !DIExpression()), !dbg !1480, !psr.id !1677
  %86 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !1678, !psr.id !1679
  %87 = sub i64 0, %12, !dbg !1680, !psr.id !1681
  %88 = getelementptr inbounds i8, i8* %86, i64 %87, !dbg !1680, !psr.id !1682
  %89 = sub i64 %12, %85, !dbg !1683, !psr.id !1684
  call void @mbedtls_ct_mem_move_to_left(i8* %88, i64 %12, i64 %89), !dbg !1685, !psr.id !1686
  %90 = icmp ne i64 %3, 0, !dbg !1687, !psr.id !1689
  br i1 %90, label %91, label %95, !dbg !1690, !psr.id !1691

91:                                               ; preds = %81
  %92 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !1692, !psr.id !1693
  %93 = sub i64 0, %12, !dbg !1694, !psr.id !1695
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !1694, !psr.id !1696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %94, i64 %12, i1 false), !dbg !1697, !psr.id !1698
  br label %95, !dbg !1697, !psr.id !1699

95:                                               ; preds = %91, %81
  store i64 %85, i64* %4, align 8, !dbg !1700, !psr.id !1701
  ret i32 %67, !dbg !1702, !psr.id !1703
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mbedtls_ct_size_gt(i64 %0, i64 %1) #0 !dbg !1704 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1705, metadata !DIExpression()), !dbg !1706, !psr.id !1707
  call void @llvm.dbg.value(metadata i64 %1, metadata !1708, metadata !DIExpression()), !dbg !1706, !psr.id !1709
  %3 = sub i64 %1, %0, !dbg !1710, !psr.id !1711
  %4 = lshr i64 %3, 63, !dbg !1712, !psr.id !1713
  %5 = trunc i64 %4 to i32, !dbg !1714, !psr.id !1715
  ret i32 %5, !dbg !1716, !psr.id !1717
}

; Function Attrs: noinline nounwind uwtable
define internal void @mbedtls_ct_mem_move_to_left(i8* %0, i64 %1, i64 %2) #0 !dbg !1718 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1721, metadata !DIExpression()), !dbg !1722, !psr.id !1723
  call void @llvm.dbg.value(metadata i64 %1, metadata !1724, metadata !DIExpression()), !dbg !1722, !psr.id !1725
  call void @llvm.dbg.value(metadata i64 %2, metadata !1726, metadata !DIExpression()), !dbg !1722, !psr.id !1727
  call void @llvm.dbg.value(metadata i8* %0, metadata !1728, metadata !DIExpression()), !dbg !1722, !psr.id !1730
  %4 = icmp eq i64 %1, 0, !dbg !1731, !psr.id !1733
  br i1 %4, label %5, label %6, !dbg !1734, !psr.id !1735

5:                                                ; preds = %3
  br label %39, !dbg !1736, !psr.id !1737

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 0, metadata !1738, metadata !DIExpression()), !dbg !1722, !psr.id !1739
  br label %7, !dbg !1740, !psr.id !1742

7:                                                ; preds = %37, %6
  %.01 = phi i64 [ 0, %6 ], [ %38, %37 ], !dbg !1743, !psr.id !1744
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1738, metadata !DIExpression()), !dbg !1722, !psr.id !1745
  %8 = icmp ult i64 %.01, %1, !dbg !1746, !psr.id !1748
  br i1 %8, label %9, label %39, !dbg !1749, !psr.id !1750

9:                                                ; preds = %7
  %10 = sub i64 %1, %2, !dbg !1751, !psr.id !1753
  %11 = call i32 @mbedtls_ct_size_gt(i64 %10, i64 %.01), !dbg !1754, !psr.id !1755
  call void @llvm.dbg.value(metadata i32 %11, metadata !1756, metadata !DIExpression()), !dbg !1757, !psr.id !1758
  call void @llvm.dbg.value(metadata i64 0, metadata !1759, metadata !DIExpression()), !dbg !1722, !psr.id !1760
  br label %12, !dbg !1761, !psr.id !1763

12:                                               ; preds = %26, %9
  %.0 = phi i64 [ 0, %9 ], [ %27, %26 ], !dbg !1764, !psr.id !1765
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1759, metadata !DIExpression()), !dbg !1722, !psr.id !1766
  %13 = sub i64 %1, 1, !dbg !1767, !psr.id !1769
  %14 = icmp ult i64 %.0, %13, !dbg !1770, !psr.id !1771
  br i1 %14, label %15, label %28, !dbg !1772, !psr.id !1773

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1774, !psr.id !1776
  %17 = load volatile i8, i8* %16, align 1, !dbg !1774, !psr.id !1777
  call void @llvm.dbg.value(metadata i8 %17, metadata !1778, metadata !DIExpression()), !dbg !1779, !psr.id !1780
  %18 = add i64 %.0, 1, !dbg !1781, !psr.id !1782
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !1783, !psr.id !1784
  %20 = load volatile i8, i8* %19, align 1, !dbg !1783, !psr.id !1785
  call void @llvm.dbg.value(metadata i8 %20, metadata !1786, metadata !DIExpression()), !dbg !1779, !psr.id !1787
  %21 = zext i8 %17 to i32, !dbg !1788, !psr.id !1789
  %22 = zext i8 %20 to i32, !dbg !1790, !psr.id !1791
  %23 = call i32 @mbedtls_ct_uint_if(i32 %11, i32 %21, i32 %22), !dbg !1792, !psr.id !1793
  %24 = trunc i32 %23 to i8, !dbg !1792, !psr.id !1794
  %25 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1795, !psr.id !1796
  store volatile i8 %24, i8* %25, align 1, !dbg !1797, !psr.id !1798
  br label %26, !dbg !1799, !psr.id !1800

26:                                               ; preds = %15
  %27 = add i64 %.0, 1, !dbg !1801, !psr.id !1802
  call void @llvm.dbg.value(metadata i64 %27, metadata !1759, metadata !DIExpression()), !dbg !1722, !psr.id !1803
  br label %12, !dbg !1804, !llvm.loop !1805, !psr.id !1807

28:                                               ; preds = %12
  %29 = sub i64 %1, 1, !dbg !1808, !psr.id !1809
  %30 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !1810, !psr.id !1811
  %31 = load volatile i8, i8* %30, align 1, !dbg !1810, !psr.id !1812
  %32 = zext i8 %31 to i32, !dbg !1810, !psr.id !1813
  %33 = call i32 @mbedtls_ct_uint_if(i32 %11, i32 %32, i32 0), !dbg !1814, !psr.id !1815
  %34 = trunc i32 %33 to i8, !dbg !1814, !psr.id !1816
  %35 = sub i64 %1, 1, !dbg !1817, !psr.id !1818
  %36 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !1819, !psr.id !1820
  store volatile i8 %34, i8* %36, align 1, !dbg !1821, !psr.id !1822
  br label %37, !dbg !1823, !psr.id !1824

37:                                               ; preds = %28
  %38 = add i64 %.01, 1, !dbg !1825, !psr.id !1826
  call void @llvm.dbg.value(metadata i64 %38, metadata !1738, metadata !DIExpression()), !dbg !1722, !psr.id !1827
  br label %7, !dbg !1828, !llvm.loop !1829, !psr.id !1831

39:                                               ; preds = %7, %5
  ret void, !dbg !1832, !psr.id !1833
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_base64_dec_value_wrapper(i8 zeroext %0) #0 !dbg !1834 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1837, metadata !DIExpression()), !dbg !1838, !psr.id !1839
  %2 = zext i8 %0 to i32, !dbg !1840, !psr.id !1841
  %3 = call i32 (i32, ...) bitcast (i8 (i8)* @mbedtls_ct_base64_dec_value to i32 (i32, ...)*)(i32 %2), !dbg !1842, !psr.id !1843
  ret i32 undef, !dbg !1844, !psr.id !1845
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_base64_dec_value_wrapper_t() #0 !dbg !1846 {
  %1 = call zeroext i8 (...) @getv(), !dbg !1849, !psr.id !1850
  call void @llvm.dbg.value(metadata i8 %1, metadata !1851, metadata !DIExpression()), !dbg !1852, !psr.id !1853
  %2 = zext i8 %1 to i32, !dbg !1854, !psr.id !1855
  %3 = call i32 (i32, ...) bitcast (i8 (i8)* @mbedtls_ct_base64_dec_value to i32 (i32, ...)*)(i32 %2), !dbg !1856, !psr.id !1857
  ret void, !dbg !1858, !psr.id !1859
}

declare dso_local zeroext i8 @getv(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @mbedtls_ct_base64_dec_value_wrapper_t()
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
!25 = !DIFile(filename: "mbedtls_ct_base64_dec_value.c", directory: "/home/luwei/bech-back/Mbed-tls/constant_time_primitive")
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
!430 = !{!"ValueTainted"}
!431 = !DILocation(line: 170, column: 42, scope: !418)
!432 = !{!"183"}
!433 = !DILocation(line: 170, column: 40, scope: !418)
!434 = !{!"184"}
!435 = !DILocation(line: 170, column: 48, scope: !418)
!436 = !{!"185"}
!437 = !DILocalVariable(name: "low_mask", scope: !418, file: !1, line: 170, type: !5)
!438 = !{!"186"}
!439 = !DILocation(line: 172, column: 28, scope: !418)
!440 = !{!"187"}
!441 = !DILocation(line: 172, column: 46, scope: !418)
!442 = !{!"188"}
!443 = !DILocation(line: 172, column: 44, scope: !418)
!444 = !{!"189"}
!445 = !DILocation(line: 172, column: 50, scope: !418)
!446 = !{!"190"}
!447 = !DILocalVariable(name: "high_mask", scope: !418, file: !1, line: 172, type: !5)
!448 = !{!"191"}
!449 = !DILocation(line: 173, column: 25, scope: !418)
!450 = !{!"192"}
!451 = !DILocation(line: 173, column: 13, scope: !418)
!452 = !{!"193"}
!453 = !DILocation(line: 173, column: 39, scope: !418)
!454 = !{!"194"}
!455 = !DILocation(line: 173, column: 11, scope: !418)
!456 = !{!"195"}
!457 = !DILocation(line: 173, column: 5, scope: !418)
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
!973 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !969, file: !141, line: 225, baseType: !283, size: 64, offset: 128)
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
!1227 = !{!5, !284, !284, !21}
!1228 = !DILocalVariable(name: "A", arg: 1, scope: !1225, file: !1, line: 735, type: !284)
!1229 = !DILocation(line: 0, scope: !1225)
!1230 = !{!"591"}
!1231 = !DILocalVariable(name: "B", arg: 2, scope: !1225, file: !1, line: 736, type: !284)
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
!1263 = !{!"609"}
!1264 = !DILocation(line: 754, column: 54, scope: !1259)
!1265 = !{!"610"}
!1266 = !DILocation(line: 754, column: 50, scope: !1259)
!1267 = !{!"611"}
!1268 = !{!"612"}
!1269 = !DILocation(line: 754, column: 16, scope: !1259)
!1270 = !{!"613"}
!1271 = !{!"614"}
!1272 = !DILocation(line: 755, column: 14, scope: !1259)
!1273 = !{!"615"}
!1274 = !{!"616"}
!1275 = !DILocation(line: 763, column: 44, scope: !1259)
!1276 = !{!"617"}
!1277 = !DILocation(line: 763, column: 40, scope: !1259)
!1278 = !{!"618"}
!1279 = !{!"619"}
!1280 = !DILocation(line: 763, column: 54, scope: !1259)
!1281 = !{!"620"}
!1282 = !DILocation(line: 763, column: 50, scope: !1259)
!1283 = !{!"621"}
!1284 = !{!"622"}
!1285 = !DILocation(line: 763, column: 16, scope: !1259)
!1286 = !{!"623"}
!1287 = !{!"624"}
!1288 = !DILocation(line: 764, column: 27, scope: !1259)
!1289 = !{!"625"}
!1290 = !DILocation(line: 764, column: 21, scope: !1259)
!1291 = !{!"626"}
!1292 = !DILocation(line: 764, column: 13, scope: !1259)
!1293 = !{!"627"}
!1294 = !{!"628"}
!1295 = !DILocation(line: 765, column: 14, scope: !1259)
!1296 = !{!"629"}
!1297 = !{!"630"}
!1298 = !DILocation(line: 766, column: 5, scope: !1259)
!1299 = !{!"631"}
!1300 = !DILocation(line: 745, column: 36, scope: !1254)
!1301 = !{!"632"}
!1302 = !{!"633"}
!1303 = !DILocation(line: 745, column: 5, scope: !1254)
!1304 = distinct !{!1304, !1256, !1305, !97}
!1305 = !DILocation(line: 766, column: 5, scope: !1242)
!1306 = !{!"634"}
!1307 = !DILocation(line: 773, column: 5, scope: !1225)
!1308 = !{!"635"}
!1309 = distinct !DISubprogram(name: "mbedtls_mpi_lt_mpi_ct", scope: !1, file: !1, line: 779, type: !1310, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!20, !974, !974, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1313 = !DILocalVariable(name: "X", arg: 1, scope: !1309, file: !1, line: 779, type: !974)
!1314 = !DILocation(line: 0, scope: !1309)
!1315 = !{!"636"}
!1316 = !DILocalVariable(name: "Y", arg: 2, scope: !1309, file: !1, line: 780, type: !974)
!1317 = !{!"637"}
!1318 = !DILocalVariable(name: "ret", arg: 3, scope: !1309, file: !1, line: 781, type: !1312)
!1319 = !{!"638"}
!1320 = !DILocation(line: 787, column: 5, scope: !1309)
!1321 = !{!"639"}
!1322 = !DILocation(line: 787, column: 5, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 787, column: 5)
!1324 = !{!"640"}
!1325 = !DILocation(line: 788, column: 5, scope: !1309)
!1326 = !{!"641"}
!1327 = !DILocation(line: 788, column: 5, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 788, column: 5)
!1329 = !{!"642"}
!1330 = !DILocation(line: 789, column: 5, scope: !1309)
!1331 = !{!"643"}
!1332 = !DILocation(line: 789, column: 5, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 789, column: 5)
!1334 = !{!"644"}
!1335 = !DILocation(line: 791, column: 12, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 791, column: 9)
!1337 = !{!"645"}
!1338 = !{!"646"}
!1339 = !DILocation(line: 791, column: 20, scope: !1336)
!1340 = !{!"647"}
!1341 = !{!"648"}
!1342 = !DILocation(line: 791, column: 14, scope: !1336)
!1343 = !{!"649"}
!1344 = !DILocation(line: 791, column: 9, scope: !1309)
!1345 = !{!"650"}
!1346 = !DILocation(line: 792, column: 9, scope: !1336)
!1347 = !{!"651"}
!1348 = !DILocation(line: 798, column: 26, scope: !1309)
!1349 = !{!"652"}
!1350 = !{!"653"}
!1351 = !DILocation(line: 798, column: 28, scope: !1309)
!1352 = !{!"654"}
!1353 = !DILocation(line: 798, column: 34, scope: !1309)
!1354 = !{!"655"}
!1355 = !DILocalVariable(name: "X_is_negative", scope: !1309, file: !1, line: 785, type: !5)
!1356 = !{!"656"}
!1357 = !DILocation(line: 799, column: 26, scope: !1309)
!1358 = !{!"657"}
!1359 = !{!"658"}
!1360 = !DILocation(line: 799, column: 28, scope: !1309)
!1361 = !{!"659"}
!1362 = !DILocation(line: 799, column: 34, scope: !1309)
!1363 = !{!"660"}
!1364 = !DILocalVariable(name: "Y_is_negative", scope: !1309, file: !1, line: 785, type: !5)
!1365 = !{!"661"}
!1366 = !DILocation(line: 806, column: 28, scope: !1309)
!1367 = !{!"662"}
!1368 = !DILocalVariable(name: "cond", scope: !1309, file: !1, line: 785, type: !5)
!1369 = !{!"663"}
!1370 = !DILocation(line: 807, column: 17, scope: !1309)
!1371 = !{!"664"}
!1372 = !DILocation(line: 807, column: 10, scope: !1309)
!1373 = !{!"665"}
!1374 = !DILocalVariable(name: "done", scope: !1309, file: !1, line: 785, type: !5)
!1375 = !{!"666"}
!1376 = !DILocation(line: 815, column: 17, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 815, column: 5)
!1378 = !{!"667"}
!1379 = !{!"668"}
!1380 = !DILocalVariable(name: "i", scope: !1309, file: !1, line: 783, type: !21)
!1381 = !{!"669"}
!1382 = !DILocation(line: 815, column: 10, scope: !1377)
!1383 = !{!"670"}
!1384 = !DILocation(line: 0, scope: !1377)
!1385 = !{!"671"}
!1386 = !{!"672"}
!1387 = !{!"673"}
!1388 = !{!"674"}
!1389 = !DILocation(line: 815, column: 22, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 815, column: 5)
!1391 = !{!"675"}
!1392 = !DILocation(line: 815, column: 5, scope: !1377)
!1393 = !{!"676"}
!1394 = !DILocation(line: 824, column: 43, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 816, column: 5)
!1396 = !{!"677"}
!1397 = !{!"678"}
!1398 = !DILocation(line: 824, column: 47, scope: !1395)
!1399 = !{!"679"}
!1400 = !DILocation(line: 824, column: 40, scope: !1395)
!1401 = !{!"680"}
!1402 = !{!"681"}
!1403 = !DILocation(line: 824, column: 56, scope: !1395)
!1404 = !{!"682"}
!1405 = !{!"683"}
!1406 = !DILocation(line: 824, column: 60, scope: !1395)
!1407 = !{!"684"}
!1408 = !DILocation(line: 824, column: 53, scope: !1395)
!1409 = !{!"685"}
!1410 = !{!"686"}
!1411 = !DILocation(line: 824, column: 16, scope: !1395)
!1412 = !{!"687"}
!1413 = !{!"688"}
!1414 = !DILocation(line: 825, column: 28, scope: !1395)
!1415 = !{!"689"}
!1416 = !DILocation(line: 825, column: 22, scope: !1395)
!1417 = !{!"690"}
!1418 = !DILocation(line: 825, column: 37, scope: !1395)
!1419 = !{!"691"}
!1420 = !DILocation(line: 825, column: 14, scope: !1395)
!1421 = !{!"692"}
!1422 = !{!"693"}
!1423 = !{!"694"}
!1424 = !DILocation(line: 826, column: 14, scope: !1395)
!1425 = !{!"695"}
!1426 = !{!"696"}
!1427 = !DILocation(line: 835, column: 43, scope: !1395)
!1428 = !{!"697"}
!1429 = !{!"698"}
!1430 = !DILocation(line: 835, column: 47, scope: !1395)
!1431 = !{!"699"}
!1432 = !DILocation(line: 835, column: 40, scope: !1395)
!1433 = !{!"700"}
!1434 = !{!"701"}
!1435 = !DILocation(line: 835, column: 56, scope: !1395)
!1436 = !{!"702"}
!1437 = !{!"703"}
!1438 = !DILocation(line: 835, column: 60, scope: !1395)
!1439 = !{!"704"}
!1440 = !DILocation(line: 835, column: 53, scope: !1395)
!1441 = !{!"705"}
!1442 = !{!"706"}
!1443 = !DILocation(line: 835, column: 16, scope: !1395)
!1444 = !{!"707"}
!1445 = !{!"708"}
!1446 = !DILocation(line: 836, column: 28, scope: !1395)
!1447 = !{!"709"}
!1448 = !DILocation(line: 836, column: 22, scope: !1395)
!1449 = !{!"710"}
!1450 = !DILocation(line: 836, column: 43, scope: !1395)
!1451 = !{!"711"}
!1452 = !DILocation(line: 836, column: 37, scope: !1395)
!1453 = !{!"712"}
!1454 = !DILocation(line: 836, column: 14, scope: !1395)
!1455 = !{!"713"}
!1456 = !{!"714"}
!1457 = !{!"715"}
!1458 = !DILocation(line: 837, column: 14, scope: !1395)
!1459 = !{!"716"}
!1460 = !{!"717"}
!1461 = !DILocation(line: 838, column: 5, scope: !1395)
!1462 = !{!"718"}
!1463 = !DILocation(line: 815, column: 28, scope: !1390)
!1464 = !{!"719"}
!1465 = !{!"720"}
!1466 = !DILocation(line: 815, column: 5, scope: !1390)
!1467 = distinct !{!1467, !1392, !1468, !97}
!1468 = !DILocation(line: 838, column: 5, scope: !1377)
!1469 = !{!"721"}
!1470 = !DILocation(line: 840, column: 5, scope: !1309)
!1471 = !{!"722"}
!1472 = !{!"723"}
!1473 = !DILocation(line: 841, column: 1, scope: !1309)
!1474 = !{!"724"}
!1475 = distinct !DISubprogram(name: "mbedtls_ct_rsaes_pkcs1_v15_unpadding", scope: !1, file: !1, line: 847, type: !1476, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!20, !569, !21, !569, !21, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1479 = !DILocalVariable(name: "input", arg: 1, scope: !1475, file: !1, line: 847, type: !569)
!1480 = !DILocation(line: 0, scope: !1475)
!1481 = !{!"725"}
!1482 = !DILocalVariable(name: "ilen", arg: 2, scope: !1475, file: !1, line: 848, type: !21)
!1483 = !{!"726"}
!1484 = !DILocalVariable(name: "output", arg: 3, scope: !1475, file: !1, line: 849, type: !569)
!1485 = !{!"727"}
!1486 = !DILocalVariable(name: "output_max_len", arg: 4, scope: !1475, file: !1, line: 850, type: !21)
!1487 = !{!"728"}
!1488 = !DILocalVariable(name: "olen", arg: 5, scope: !1475, file: !1, line: 851, type: !1478)
!1489 = !{!"729"}
!1490 = !DILocalVariable(name: "ret", scope: !1475, file: !1, line: 853, type: !20)
!1491 = !{!"730"}
!1492 = !DILocalVariable(name: "pad_count", scope: !1475, file: !1, line: 866, type: !21)
!1493 = !{!"731"}
!1494 = !DILocalVariable(name: "bad", scope: !1475, file: !1, line: 867, type: !5)
!1495 = !{!"732"}
!1496 = !DILocalVariable(name: "pad_done", scope: !1475, file: !1, line: 868, type: !19)
!1497 = !{!"733"}
!1498 = !DILocalVariable(name: "plaintext_size", scope: !1475, file: !1, line: 869, type: !21)
!1499 = !{!"734"}
!1500 = !DILocation(line: 872, column: 50, scope: !1475)
!1501 = !{!"735"}
!1502 = !DILocation(line: 872, column: 43, scope: !1475)
!1503 = !{!"736"}
!1504 = !DILocation(line: 872, column: 26, scope: !1475)
!1505 = !{!"737"}
!1506 = !DILocation(line: 872, column: 64, scope: !1475)
!1507 = !{!"738"}
!1508 = !{!"739"}
!1509 = !{!"740"}
!1510 = !{!"741"}
!1511 = !DILocalVariable(name: "plaintext_max_size", scope: !1475, file: !1, line: 854, type: !21)
!1512 = !{!"742"}
!1513 = !DILocation(line: 877, column: 12, scope: !1475)
!1514 = !{!"743"}
!1515 = !{!"744"}
!1516 = !{!"745"}
!1517 = !DILocation(line: 877, column: 9, scope: !1475)
!1518 = !{!"746"}
!1519 = !{!"747"}
!1520 = !DILocation(line: 882, column: 12, scope: !1475)
!1521 = !{!"748"}
!1522 = !{!"749"}
!1523 = !{!"750"}
!1524 = !DILocation(line: 882, column: 21, scope: !1475)
!1525 = !{!"751"}
!1526 = !DILocation(line: 882, column: 9, scope: !1475)
!1527 = !{!"752"}
!1528 = !{!"753"}
!1529 = !DILocalVariable(name: "i", scope: !1475, file: !1, line: 854, type: !21)
!1530 = !{!"754"}
!1531 = !DILocation(line: 886, column: 10, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 886, column: 5)
!1533 = !{!"755"}
!1534 = !DILocation(line: 0, scope: !1532)
!1535 = !{!"756"}
!1536 = !{!"757"}
!1537 = !{!"758"}
!1538 = !{!"759"}
!1539 = !{!"760"}
!1540 = !{!"761"}
!1541 = !DILocation(line: 886, column: 19, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 886, column: 5)
!1543 = !{!"762"}
!1544 = !DILocation(line: 886, column: 5, scope: !1532)
!1545 = !{!"763"}
!1546 = !DILocation(line: 888, column: 24, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !1, line: 887, column: 5)
!1548 = !{!"764"}
!1549 = !{!"765"}
!1550 = !{!"766"}
!1551 = !DILocation(line: 888, column: 51, scope: !1547)
!1552 = !{!"767"}
!1553 = !{!"768"}
!1554 = !{!"769"}
!1555 = !DILocation(line: 888, column: 50, scope: !1547)
!1556 = !{!"770"}
!1557 = !DILocation(line: 888, column: 35, scope: !1547)
!1558 = !{!"771"}
!1559 = !{!"772"}
!1560 = !DILocation(line: 888, column: 33, scope: !1547)
!1561 = !{!"773"}
!1562 = !DILocation(line: 888, column: 61, scope: !1547)
!1563 = !{!"774"}
!1564 = !DILocation(line: 888, column: 67, scope: !1547)
!1565 = !{!"775"}
!1566 = !DILocation(line: 888, column: 19, scope: !1547)
!1567 = !{!"776"}
!1568 = !{!"777"}
!1569 = !{!"778"}
!1570 = !{!"779"}
!1571 = !DILocation(line: 889, column: 24, scope: !1547)
!1572 = !{!"780"}
!1573 = !DILocation(line: 889, column: 51, scope: !1547)
!1574 = !{!"781"}
!1575 = !DILocation(line: 889, column: 50, scope: !1547)
!1576 = !{!"782"}
!1577 = !DILocation(line: 889, column: 35, scope: !1547)
!1578 = !{!"783"}
!1579 = !{!"784"}
!1580 = !DILocation(line: 889, column: 33, scope: !1547)
!1581 = !{!"785"}
!1582 = !DILocation(line: 889, column: 61, scope: !1547)
!1583 = !{!"786"}
!1584 = !DILocation(line: 889, column: 67, scope: !1547)
!1585 = !{!"787"}
!1586 = !DILocation(line: 889, column: 22, scope: !1547)
!1587 = !{!"788"}
!1588 = !DILocation(line: 889, column: 19, scope: !1547)
!1589 = !{!"789"}
!1590 = !{!"790"}
!1591 = !DILocation(line: 890, column: 5, scope: !1547)
!1592 = !{!"791"}
!1593 = !DILocation(line: 886, column: 28, scope: !1542)
!1594 = !{!"792"}
!1595 = !{!"793"}
!1596 = !DILocation(line: 886, column: 5, scope: !1542)
!1597 = distinct !{!1597, !1544, !1598, !97}
!1598 = !DILocation(line: 890, column: 5, scope: !1532)
!1599 = !{!"794"}
!1600 = !DILocation(line: 894, column: 32, scope: !1475)
!1601 = !{!"795"}
!1602 = !DILocation(line: 894, column: 12, scope: !1475)
!1603 = !{!"796"}
!1604 = !DILocation(line: 894, column: 9, scope: !1475)
!1605 = !{!"797"}
!1606 = !{!"798"}
!1607 = !DILocation(line: 897, column: 12, scope: !1475)
!1608 = !{!"799"}
!1609 = !DILocation(line: 897, column: 9, scope: !1475)
!1610 = !{!"800"}
!1611 = !{!"801"}
!1612 = !DILocation(line: 907, column: 30, scope: !1475)
!1613 = !{!"802"}
!1614 = !DILocation(line: 908, column: 43, scope: !1475)
!1615 = !{!"803"}
!1616 = !DILocation(line: 908, column: 55, scope: !1475)
!1617 = !{!"804"}
!1618 = !DILocation(line: 908, column: 25, scope: !1475)
!1619 = !{!"805"}
!1620 = !DILocation(line: 906, column: 22, scope: !1475)
!1621 = !{!"806"}
!1622 = !{!"807"}
!1623 = !{!"808"}
!1624 = !DILocation(line: 912, column: 24, scope: !1475)
!1625 = !{!"809"}
!1626 = !DILocalVariable(name: "output_too_large", scope: !1475, file: !1, line: 870, type: !5)
!1627 = !{!"810"}
!1628 = !DILocation(line: 922, column: 21, scope: !1475)
!1629 = !{!"811"}
!1630 = !DILocation(line: 920, column: 19, scope: !1475)
!1631 = !{!"812"}
!1632 = !DILocation(line: 920, column: 11, scope: !1475)
!1633 = !{!"813"}
!1634 = !{!"814"}
!1635 = !DILocation(line: 932, column: 37, scope: !1475)
!1636 = !{!"815"}
!1637 = !DILocation(line: 932, column: 11, scope: !1475)
!1638 = !{!"816"}
!1639 = !{!"817"}
!1640 = !{!"818"}
!1641 = !DILocation(line: 933, column: 10, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 933, column: 5)
!1643 = !{!"819"}
!1644 = !DILocation(line: 0, scope: !1642)
!1645 = !{!"820"}
!1646 = !{!"821"}
!1647 = !DILocation(line: 933, column: 20, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1642, file: !1, line: 933, column: 5)
!1649 = !{!"822"}
!1650 = !DILocation(line: 933, column: 5, scope: !1642)
!1651 = !{!"823"}
!1652 = !DILocation(line: 934, column: 21, scope: !1648)
!1653 = !{!"824"}
!1654 = !DILocation(line: 934, column: 9, scope: !1648)
!1655 = !{!"825"}
!1656 = !DILocation(line: 934, column: 18, scope: !1648)
!1657 = !{!"826"}
!1658 = !{!"827"}
!1659 = !{!"828"}
!1660 = !{!"829"}
!1661 = !{!"830"}
!1662 = !{!"831"}
!1663 = !DILocation(line: 933, column: 29, scope: !1648)
!1664 = !{!"832"}
!1665 = !{!"833"}
!1666 = !DILocation(line: 933, column: 5, scope: !1648)
!1667 = distinct !{!1667, !1650, !1668, !97}
!1668 = !DILocation(line: 934, column: 22, scope: !1642)
!1669 = !{!"834"}
!1670 = !DILocation(line: 941, column: 42, scope: !1475)
!1671 = !{!"835"}
!1672 = !DILocation(line: 942, column: 42, scope: !1475)
!1673 = !{!"836"}
!1674 = !DILocation(line: 940, column: 22, scope: !1475)
!1675 = !{!"837"}
!1676 = !{!"838"}
!1677 = !{!"839"}
!1678 = !DILocation(line: 950, column: 40, scope: !1475)
!1679 = !{!"840"}
!1680 = !DILocation(line: 950, column: 47, scope: !1475)
!1681 = !{!"841"}
!1682 = !{!"842"}
!1683 = !DILocation(line: 952, column: 53, scope: !1475)
!1684 = !{!"843"}
!1685 = !DILocation(line: 950, column: 5, scope: !1475)
!1686 = !{!"844"}
!1687 = !DILocation(line: 961, column: 24, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 961, column: 9)
!1689 = !{!"845"}
!1690 = !DILocation(line: 961, column: 9, scope: !1475)
!1691 = !{!"846"}
!1692 = !DILocation(line: 962, column: 31, scope: !1688)
!1693 = !{!"847"}
!1694 = !DILocation(line: 962, column: 38, scope: !1688)
!1695 = !{!"848"}
!1696 = !{!"849"}
!1697 = !DILocation(line: 962, column: 9, scope: !1688)
!1698 = !{!"850"}
!1699 = !{!"851"}
!1700 = !DILocation(line: 968, column: 11, scope: !1475)
!1701 = !{!"852"}
!1702 = !DILocation(line: 970, column: 5, scope: !1475)
!1703 = !{!"853"}
!1704 = distinct !DISubprogram(name: "mbedtls_ct_size_gt", scope: !1, file: !1, line: 217, type: !195, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1705 = !DILocalVariable(name: "x", arg: 1, scope: !1704, file: !1, line: 217, type: !21)
!1706 = !DILocation(line: 0, scope: !1704)
!1707 = !{!"854"}
!1708 = !DILocalVariable(name: "y", arg: 2, scope: !1704, file: !1, line: 218, type: !21)
!1709 = !{!"855"}
!1710 = !DILocation(line: 221, column: 17, scope: !1704)
!1711 = !{!"856"}
!1712 = !DILocation(line: 221, column: 23, scope: !1704)
!1713 = !{!"857"}
!1714 = !DILocation(line: 221, column: 11, scope: !1704)
!1715 = !{!"858"}
!1716 = !DILocation(line: 221, column: 5, scope: !1704)
!1717 = !{!"859"}
!1718 = distinct !DISubprogram(name: "mbedtls_ct_mem_move_to_left", scope: !1, file: !1, line: 382, type: !1719, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !701, !21, !21}
!1721 = !DILocalVariable(name: "start", arg: 1, scope: !1718, file: !1, line: 382, type: !701)
!1722 = !DILocation(line: 0, scope: !1718)
!1723 = !{!"860"}
!1724 = !DILocalVariable(name: "total", arg: 2, scope: !1718, file: !1, line: 383, type: !21)
!1725 = !{!"861"}
!1726 = !DILocalVariable(name: "offset", arg: 3, scope: !1718, file: !1, line: 384, type: !21)
!1727 = !{!"862"}
!1728 = !DILocalVariable(name: "buf", scope: !1718, file: !1, line: 386, type: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1730 = !{!"863"}
!1731 = !DILocation(line: 388, column: 15, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1718, file: !1, line: 388, column: 9)
!1733 = !{!"864"}
!1734 = !DILocation(line: 388, column: 9, scope: !1718)
!1735 = !{!"865"}
!1736 = !DILocation(line: 389, column: 9, scope: !1732)
!1737 = !{!"866"}
!1738 = !DILocalVariable(name: "i", scope: !1718, file: !1, line: 387, type: !21)
!1739 = !{!"867"}
!1740 = !DILocation(line: 390, column: 10, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1718, file: !1, line: 390, column: 5)
!1742 = !{!"868"}
!1743 = !DILocation(line: 0, scope: !1741)
!1744 = !{!"869"}
!1745 = !{!"870"}
!1746 = !DILocation(line: 390, column: 19, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !1, line: 390, column: 5)
!1748 = !{!"871"}
!1749 = !DILocation(line: 390, column: 5, scope: !1741)
!1750 = !{!"872"}
!1751 = !DILocation(line: 392, column: 52, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 391, column: 5)
!1753 = !{!"873"}
!1754 = !DILocation(line: 392, column: 26, scope: !1752)
!1755 = !{!"874"}
!1756 = !DILocalVariable(name: "no_op", scope: !1752, file: !1, line: 392, type: !5)
!1757 = !DILocation(line: 0, scope: !1752)
!1758 = !{!"875"}
!1759 = !DILocalVariable(name: "n", scope: !1718, file: !1, line: 387, type: !21)
!1760 = !{!"876"}
!1761 = !DILocation(line: 396, column: 14, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1752, file: !1, line: 396, column: 9)
!1763 = !{!"877"}
!1764 = !DILocation(line: 0, scope: !1762)
!1765 = !{!"878"}
!1766 = !{!"879"}
!1767 = !DILocation(line: 396, column: 31, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1762, file: !1, line: 396, column: 9)
!1769 = !{!"880"}
!1770 = !DILocation(line: 396, column: 23, scope: !1768)
!1771 = !{!"881"}
!1772 = !DILocation(line: 396, column: 9, scope: !1762)
!1773 = !{!"882"}
!1774 = !DILocation(line: 398, column: 37, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1768, file: !1, line: 397, column: 9)
!1776 = !{!"883"}
!1777 = !{!"884"}
!1778 = !DILocalVariable(name: "current", scope: !1775, file: !1, line: 398, type: !19)
!1779 = !DILocation(line: 0, scope: !1775)
!1780 = !{!"885"}
!1781 = !DILocation(line: 399, column: 39, scope: !1775)
!1782 = !{!"886"}
!1783 = !DILocation(line: 399, column: 34, scope: !1775)
!1784 = !{!"887"}
!1785 = !{!"888"}
!1786 = !DILocalVariable(name: "next", scope: !1775, file: !1, line: 399, type: !19)
!1787 = !{!"889"}
!1788 = !DILocation(line: 400, column: 49, scope: !1775)
!1789 = !{!"890"}
!1790 = !DILocation(line: 400, column: 58, scope: !1775)
!1791 = !{!"891"}
!1792 = !DILocation(line: 400, column: 22, scope: !1775)
!1793 = !{!"892"}
!1794 = !{!"893"}
!1795 = !DILocation(line: 400, column: 13, scope: !1775)
!1796 = !{!"894"}
!1797 = !DILocation(line: 400, column: 20, scope: !1775)
!1798 = !{!"895"}
!1799 = !DILocation(line: 401, column: 9, scope: !1775)
!1800 = !{!"896"}
!1801 = !DILocation(line: 396, column: 37, scope: !1768)
!1802 = !{!"897"}
!1803 = !{!"898"}
!1804 = !DILocation(line: 396, column: 9, scope: !1768)
!1805 = distinct !{!1805, !1772, !1806, !97}
!1806 = !DILocation(line: 401, column: 9, scope: !1762)
!1807 = !{!"899"}
!1808 = !DILocation(line: 402, column: 60, scope: !1752)
!1809 = !{!"900"}
!1810 = !DILocation(line: 402, column: 51, scope: !1752)
!1811 = !{!"901"}
!1812 = !{!"902"}
!1813 = !{!"903"}
!1814 = !DILocation(line: 402, column: 24, scope: !1752)
!1815 = !{!"904"}
!1816 = !{!"905"}
!1817 = !DILocation(line: 402, column: 18, scope: !1752)
!1818 = !{!"906"}
!1819 = !DILocation(line: 402, column: 9, scope: !1752)
!1820 = !{!"907"}
!1821 = !DILocation(line: 402, column: 22, scope: !1752)
!1822 = !{!"908"}
!1823 = !DILocation(line: 403, column: 5, scope: !1752)
!1824 = !{!"909"}
!1825 = !DILocation(line: 390, column: 29, scope: !1747)
!1826 = !{!"910"}
!1827 = !{!"911"}
!1828 = !DILocation(line: 390, column: 5, scope: !1747)
!1829 = distinct !{!1829, !1749, !1830, !97}
!1830 = !DILocation(line: 403, column: 5, scope: !1741)
!1831 = !{!"912"}
!1832 = !DILocation(line: 404, column: 1, scope: !1718)
!1833 = !{!"913"}
!1834 = distinct !DISubprogram(name: "mbedtls_ct_base64_dec_value_wrapper", scope: !25, file: !25, line: 5, type: !1835, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!20, !19}
!1837 = !DILocalVariable(name: "value", arg: 1, scope: !1834, file: !25, line: 5, type: !19)
!1838 = !DILocation(line: 0, scope: !1834)
!1839 = !{!"914"}
!1840 = !DILocation(line: 8, column: 31, scope: !1834)
!1841 = !{!"915"}
!1842 = !DILocation(line: 8, column: 2, scope: !1834)
!1843 = !{!"916"}
!1844 = !DILocation(line: 10, column: 1, scope: !1834)
!1845 = !{!"917"}
!1846 = distinct !DISubprogram(name: "mbedtls_ct_base64_dec_value_wrapper_t", scope: !25, file: !25, line: 17, type: !1847, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null}
!1849 = !DILocation(line: 18, column: 24, scope: !1846)
!1850 = !{!"918"}
!1851 = !DILocalVariable(name: "value", scope: !1846, file: !25, line: 18, type: !19)
!1852 = !DILocation(line: 0, scope: !1846)
!1853 = !{!"919"}
!1854 = !DILocation(line: 20, column: 31, scope: !1846)
!1855 = !{!"920"}
!1856 = !DILocation(line: 20, column: 2, scope: !1846)
!1857 = !{!"921"}
!1858 = !DILocation(line: 21, column: 1, scope: !1846)
!1859 = !{!"922"}
