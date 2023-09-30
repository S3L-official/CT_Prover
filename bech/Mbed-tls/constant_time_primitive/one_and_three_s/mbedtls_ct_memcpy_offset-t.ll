; ModuleID = 'mbedtls_ct_memcpy_offset-k.ll'
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
  %2 = sub i64 0, %0, !dbg !127, !psr.id !128, !ValueTainted !129
  %3 = or i64 %0, %2, !dbg !130, !psr.id !131, !ValueTainted !129
  %4 = lshr i64 %3, 63, !dbg !132, !psr.id !133, !ValueTainted !129
  %5 = sub i64 0, %4, !dbg !134, !psr.id !135, !ValueTainted !129
  ret i64 %5, !dbg !136, !psr.id !137
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_mpi_uint_mask(i64 %0) #0 !dbg !138 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !147, metadata !DIExpression()), !dbg !148, !psr.id !149
  %2 = sub i64 0, %0, !dbg !150, !psr.id !151
  %3 = or i64 %0, %2, !dbg !152, !psr.id !153
  %4 = lshr i64 %3, 63, !dbg !154, !psr.id !155
  %5 = sub i64 0, %4, !dbg !156, !psr.id !157
  ret i64 %5, !dbg !158, !psr.id !159
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_size_mask_ge(i64 %0, i64 %1) #0 !dbg !160 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !163, metadata !DIExpression()), !dbg !164, !psr.id !165
  call void @llvm.dbg.value(metadata i64 %1, metadata !166, metadata !DIExpression()), !dbg !164, !psr.id !167
  %3 = call i64 @mbedtls_ct_size_mask_lt(i64 %0, i64 %1), !dbg !168, !psr.id !169
  %4 = xor i64 %3, -1, !dbg !170, !psr.id !171
  ret i64 %4, !dbg !172, !psr.id !173
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @mbedtls_ct_size_mask_lt(i64 %0, i64 %1) #0 !dbg !174 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !175, metadata !DIExpression()), !dbg !176, !psr.id !177
  call void @llvm.dbg.value(metadata i64 %1, metadata !178, metadata !DIExpression()), !dbg !176, !psr.id !179
  %3 = sub i64 %0, %1, !dbg !180, !psr.id !181
  call void @llvm.dbg.value(metadata i64 %3, metadata !182, metadata !DIExpression()), !dbg !176, !psr.id !184
  %4 = lshr i64 %3, 63, !dbg !185, !psr.id !186
  call void @llvm.dbg.value(metadata i64 %4, metadata !187, metadata !DIExpression()), !dbg !176, !psr.id !188
  %5 = call i64 @mbedtls_ct_size_mask(i64 %4), !dbg !189, !psr.id !190
  call void @llvm.dbg.value(metadata i64 %5, metadata !191, metadata !DIExpression()), !dbg !176, !psr.id !192
  ret i64 %5, !dbg !193, !psr.id !194
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_size_bool_eq(i64 %0, i64 %1) #0 !dbg !195 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !198, metadata !DIExpression()), !dbg !199, !psr.id !200
  call void @llvm.dbg.value(metadata i64 %1, metadata !201, metadata !DIExpression()), !dbg !199, !psr.id !202
  %3 = xor i64 %0, %1, !dbg !203, !psr.id !204, !ValueTainted !129
  call void @llvm.dbg.value(metadata i64 %3, metadata !205, metadata !DIExpression()), !dbg !199, !psr.id !206
  %4 = sub i64 0, %3, !dbg !207, !psr.id !208, !ValueTainted !129
  %5 = or i64 %3, %4, !dbg !209, !psr.id !210, !ValueTainted !129
  call void @llvm.dbg.value(metadata i64 %5, metadata !211, metadata !DIExpression()), !dbg !199, !psr.id !212
  %6 = lshr i64 %5, 63, !dbg !213, !psr.id !214, !ValueTainted !129
  %7 = trunc i64 %6 to i32, !dbg !215, !psr.id !216, !ValueTainted !129
  call void @llvm.dbg.value(metadata i32 %7, metadata !217, metadata !DIExpression()), !dbg !199, !psr.id !219
  %8 = xor i32 1, %7, !dbg !220, !psr.id !221, !ValueTainted !129
  ret i32 %8, !dbg !222, !psr.id !223
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_mpi_uint_lt(i64 %0, i64 %1) #0 !dbg !224 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !228, metadata !DIExpression()), !dbg !229, !psr.id !230
  call void @llvm.dbg.value(metadata i64 %1, metadata !231, metadata !DIExpression()), !dbg !229, !psr.id !232
  %3 = xor i64 %0, %1, !dbg !233, !psr.id !234
  call void @llvm.dbg.value(metadata i64 %3, metadata !235, metadata !DIExpression()), !dbg !229, !psr.id !236
  %4 = sub i64 %0, %1, !dbg !237, !psr.id !238
  %5 = xor i64 %3, -1, !dbg !239, !psr.id !240
  %6 = and i64 %4, %5, !dbg !241, !psr.id !242
  call void @llvm.dbg.value(metadata i64 %6, metadata !243, metadata !DIExpression()), !dbg !229, !psr.id !244
  %7 = and i64 %1, %3, !dbg !245, !psr.id !246
  %8 = or i64 %6, %7, !dbg !247, !psr.id !248
  call void @llvm.dbg.value(metadata i64 %8, metadata !243, metadata !DIExpression()), !dbg !229, !psr.id !249
  %9 = lshr i64 %8, 63, !dbg !250, !psr.id !251
  call void @llvm.dbg.value(metadata i64 %9, metadata !243, metadata !DIExpression()), !dbg !229, !psr.id !252
  %10 = trunc i64 %9 to i32, !dbg !253, !psr.id !254
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
  %6 = call i32 @mbedtls_ct_size_bool_eq(i64 %3, i64 %4), !dbg !583, !psr.id !584, !ValueTainted !129
  %7 = zext i32 %6 to i64, !dbg !583, !psr.id !585, !ValueTainted !129
  call void @llvm.dbg.value(metadata i64 %7, metadata !586, metadata !DIExpression()), !dbg !573, !psr.id !587
  %8 = call i64 @mbedtls_ct_size_mask(i64 %7), !dbg !588, !psr.id !589, !ValueTainted !129
  %9 = trunc i64 %8 to i8, !dbg !590, !psr.id !591, !ValueTainted !129
  call void @llvm.dbg.value(metadata i8 %9, metadata !592, metadata !DIExpression()), !dbg !573, !psr.id !593
  call void @llvm.dbg.value(metadata i64 0, metadata !594, metadata !DIExpression()), !dbg !596, !psr.id !597
  br label %10, !dbg !598, !psr.id !599

10:                                               ; preds = %27, %5
  %.0 = phi i64 [ 0, %5 ], [ %28, %27 ], !dbg !596, !psr.id !600
  call void @llvm.dbg.value(metadata i64 %.0, metadata !594, metadata !DIExpression()), !dbg !596, !psr.id !601
  %11 = icmp ult i64 %.0, %2, !dbg !602, !psr.id !604
  br i1 %11, label %12, label %29, !dbg !605, !psr.id !606

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !607, !psr.id !608, !PointTainted !609
  %14 = load i8, i8* %13, align 1, !dbg !607, !psr.id !610, !ValueTainted !129
  %15 = zext i8 %14 to i32, !dbg !607, !psr.id !611, !ValueTainted !129
  %16 = zext i8 %9 to i32, !dbg !612, !psr.id !613, !ValueTainted !129
  %17 = and i32 %15, %16, !dbg !614, !psr.id !615, !ValueTainted !129
  %18 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !616, !psr.id !617, !PointTainted !609
  %19 = load i8, i8* %18, align 1, !dbg !616, !psr.id !618, !ValueTainted !129
  %20 = zext i8 %19 to i32, !dbg !616, !psr.id !619, !ValueTainted !129
  %21 = zext i8 %9 to i32, !dbg !620, !psr.id !621, !ValueTainted !129
  %22 = xor i32 %21, -1, !dbg !622, !psr.id !623, !ValueTainted !129
  %23 = and i32 %20, %22, !dbg !624, !psr.id !625, !ValueTainted !129
  %24 = or i32 %17, %23, !dbg !626, !psr.id !627, !ValueTainted !129
  %25 = trunc i32 %24 to i8, !dbg !628, !psr.id !629, !ValueTainted !129
  %26 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !630, !psr.id !631, !PointTainted !609
  store i8 %25, i8* %26, align 1, !dbg !632, !psr.id !633
  br label %27, !dbg !630, !psr.id !634

27:                                               ; preds = %12
  %28 = add i64 %.0, 1, !dbg !635, !psr.id !636
  call void @llvm.dbg.value(metadata i64 %28, metadata !594, metadata !DIExpression()), !dbg !596, !psr.id !637
  br label %10, !dbg !638, !llvm.loop !639, !psr.id !641

29:                                               ; preds = %10
  ret void, !dbg !642, !psr.id !643
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_memcpy_offset(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 !dbg !644 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !647, metadata !DIExpression()), !dbg !648, !psr.id !649
  call void @llvm.dbg.value(metadata i8* %1, metadata !650, metadata !DIExpression()), !dbg !648, !psr.id !651
  call void @llvm.dbg.value(metadata i64 %2, metadata !652, metadata !DIExpression()), !dbg !648, !psr.id !653
  call void @llvm.dbg.value(metadata i64 %3, metadata !654, metadata !DIExpression()), !dbg !648, !psr.id !655
  call void @llvm.dbg.value(metadata i64 %4, metadata !656, metadata !DIExpression()), !dbg !648, !psr.id !657
  call void @llvm.dbg.value(metadata i64 %5, metadata !658, metadata !DIExpression()), !dbg !648, !psr.id !659
  call void @llvm.dbg.value(metadata i64 %3, metadata !660, metadata !DIExpression()), !dbg !648, !psr.id !661
  br label %7, !dbg !662, !psr.id !664

7:                                                ; preds = %11, %6
  %.0 = phi i64 [ %3, %6 ], [ %12, %11 ], !dbg !665, !psr.id !666
  call void @llvm.dbg.value(metadata i64 %.0, metadata !660, metadata !DIExpression()), !dbg !648, !psr.id !667
  %8 = icmp ule i64 %.0, %4, !dbg !668, !psr.id !670
  br i1 %8, label %9, label %13, !dbg !671, !psr.id !672

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !673, !psr.id !675, !PointTainted !609
  call void @mbedtls_ct_memcpy_if_eq(i8* %0, i8* %10, i64 %5, i64 %.0, i64 %2), !dbg !676, !psr.id !677, !CalledTainted !678
  br label %11, !dbg !679, !psr.id !680

11:                                               ; preds = %9
  %12 = add i64 %.0, 1, !dbg !681, !psr.id !682
  call void @llvm.dbg.value(metadata i64 %12, metadata !660, metadata !DIExpression()), !dbg !648, !psr.id !683
  br label %7, !dbg !684, !llvm.loop !685, !psr.id !687

13:                                               ; preds = %7
  ret void, !dbg !688, !psr.id !689
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_hmac(%struct.mbedtls_md_context_t* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, i64 %6, i8* %7) #0 !dbg !690 {
  %9 = alloca [64 x i8], align 16, !psr.id !705
  %10 = alloca %struct.mbedtls_md_context_t, align 8, !psr.id !706
  call void @llvm.dbg.value(metadata %struct.mbedtls_md_context_t* %0, metadata !707, metadata !DIExpression()), !dbg !708, !psr.id !709
  call void @llvm.dbg.value(metadata i8* %1, metadata !710, metadata !DIExpression()), !dbg !708, !psr.id !711
  call void @llvm.dbg.value(metadata i64 %2, metadata !712, metadata !DIExpression()), !dbg !708, !psr.id !713
  call void @llvm.dbg.value(metadata i8* %3, metadata !714, metadata !DIExpression()), !dbg !708, !psr.id !715
  call void @llvm.dbg.value(metadata i64 %4, metadata !716, metadata !DIExpression()), !dbg !708, !psr.id !717
  call void @llvm.dbg.value(metadata i64 %5, metadata !718, metadata !DIExpression()), !dbg !708, !psr.id !719
  call void @llvm.dbg.value(metadata i64 %6, metadata !720, metadata !DIExpression()), !dbg !708, !psr.id !721
  call void @llvm.dbg.value(metadata i8* %7, metadata !722, metadata !DIExpression()), !dbg !708, !psr.id !723
  %11 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !724, !psr.id !725
  %12 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %11, align 8, !dbg !724, !psr.id !726
  %13 = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* %12), !dbg !727, !psr.id !728
  call void @llvm.dbg.value(metadata i32 %13, metadata !729, metadata !DIExpression()), !dbg !708, !psr.id !732
  %14 = icmp eq i32 %13, 5, !dbg !733, !psr.id !734
  %15 = zext i1 %14 to i64, !dbg !735, !psr.id !736
  %16 = select i1 %14, i32 128, i32 64, !dbg !735, !psr.id !737
  %17 = sext i32 %16 to i64, !dbg !735, !psr.id !738
  call void @llvm.dbg.value(metadata i64 %17, metadata !739, metadata !DIExpression()), !dbg !708, !psr.id !740
  %18 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 2, !dbg !741, !psr.id !742
  %19 = load i8*, i8** %18, align 8, !dbg !741, !psr.id !743
  call void @llvm.dbg.value(metadata i8* %19, metadata !744, metadata !DIExpression()), !dbg !708, !psr.id !746
  %20 = getelementptr inbounds i8, i8* %19, i64 %17, !dbg !747, !psr.id !748
  call void @llvm.dbg.value(metadata i8* %20, metadata !749, metadata !DIExpression()), !dbg !708, !psr.id !750
  %21 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !751, !psr.id !752
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %21, align 8, !dbg !751, !psr.id !753
  %23 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* %22), !dbg !754, !psr.id !755
  %24 = zext i8 %23 to i64, !dbg !754, !psr.id !756
  call void @llvm.dbg.value(metadata i64 %24, metadata !757, metadata !DIExpression()), !dbg !708, !psr.id !758
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !759, metadata !DIExpression()), !dbg !763, !psr.id !764
  call void @llvm.dbg.declare(metadata %struct.mbedtls_md_context_t* %10, metadata !765, metadata !DIExpression()), !dbg !766, !psr.id !767
  call void @llvm.dbg.value(metadata i32 -110, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !769
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* %10), !dbg !770, !psr.id !771
  br label %25, !dbg !772, !psr.id !773

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !774, !psr.id !776
  %27 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %26, align 8, !dbg !774, !psr.id !777
  %28 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* %10, %struct.mbedtls_md_info_t* %27, i32 0), !dbg !774, !psr.id !778
  call void @llvm.dbg.value(metadata i32 %28, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !779
  %29 = icmp ne i32 %28, 0, !dbg !780, !psr.id !782
  br i1 %29, label %30, label %31, !dbg !774, !psr.id !783

30:                                               ; preds = %25
  br label %112, !dbg !780, !psr.id !784

31:                                               ; preds = %25
  br label %32, !dbg !774, !psr.id !785

32:                                               ; preds = %31
  br label %33, !dbg !786, !psr.id !787

33:                                               ; preds = %32
  %34 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %1, i64 %2), !dbg !788, !psr.id !790
  call void @llvm.dbg.value(metadata i32 %34, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !791
  %35 = icmp ne i32 %34, 0, !dbg !792, !psr.id !794
  br i1 %35, label %36, label %37, !dbg !788, !psr.id !795

36:                                               ; preds = %33
  br label %112, !dbg !792, !psr.id !796

37:                                               ; preds = %33
  br label %38, !dbg !788, !psr.id !797

38:                                               ; preds = %37
  br label %39, !dbg !798, !psr.id !799

39:                                               ; preds = %38
  %40 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %3, i64 %5), !dbg !800, !psr.id !802
  call void @llvm.dbg.value(metadata i32 %40, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !803
  %41 = icmp ne i32 %40, 0, !dbg !804, !psr.id !806
  br i1 %41, label %42, label %43, !dbg !800, !psr.id !807

42:                                               ; preds = %39
  br label %112, !dbg !804, !psr.id !808

43:                                               ; preds = %39
  br label %44, !dbg !800, !psr.id !809

44:                                               ; preds = %43
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 33, i64 %24, i1 false), !dbg !810, !psr.id !811
  call void @llvm.dbg.value(metadata i64 %5, metadata !812, metadata !DIExpression()), !dbg !708, !psr.id !813
  br label %45, !dbg !814, !psr.id !816

45:                                               ; preds = %72, %44
  %.01 = phi i64 [ %5, %44 ], [ %73, %72 ], !dbg !817, !psr.id !818
  call void @llvm.dbg.value(metadata i64 %.01, metadata !812, metadata !DIExpression()), !dbg !708, !psr.id !819
  %46 = icmp ule i64 %.01, %6, !dbg !820, !psr.id !822
  br i1 %46, label %47, label %74, !dbg !823, !psr.id !824

47:                                               ; preds = %45
  br label %48, !dbg !825, !psr.id !827

48:                                               ; preds = %47
  %49 = call i32 @mbedtls_md_clone(%struct.mbedtls_md_context_t* %10, %struct.mbedtls_md_context_t* %0), !dbg !828, !psr.id !830
  call void @llvm.dbg.value(metadata i32 %49, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !831
  %50 = icmp ne i32 %49, 0, !dbg !832, !psr.id !834
  br i1 %50, label %51, label %52, !dbg !828, !psr.id !835

51:                                               ; preds = %48
  br label %112, !dbg !832, !psr.id !836

52:                                               ; preds = %48
  br label %53, !dbg !828, !psr.id !837

53:                                               ; preds = %52
  br label %54, !dbg !838, !psr.id !839

54:                                               ; preds = %53
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !840, !psr.id !842
  %56 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %10, i8* %55), !dbg !840, !psr.id !843
  call void @llvm.dbg.value(metadata i32 %56, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !844
  %57 = icmp ne i32 %56, 0, !dbg !845, !psr.id !847
  br i1 %57, label %58, label %59, !dbg !840, !psr.id !848

58:                                               ; preds = %54
  br label %112, !dbg !845, !psr.id !849

59:                                               ; preds = %54
  br label %60, !dbg !840, !psr.id !850

60:                                               ; preds = %59
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !851, !psr.id !852
  call void @mbedtls_ct_memcpy_if_eq(i8* %7, i8* %61, i64 %24, i64 %.01, i64 %4), !dbg !853, !psr.id !854
  %62 = icmp ult i64 %.01, %6, !dbg !855, !psr.id !857
  br i1 %62, label %63, label %71, !dbg !858, !psr.id !859

63:                                               ; preds = %60
  br label %64, !dbg !860, !psr.id !861

64:                                               ; preds = %63
  %65 = getelementptr inbounds i8, i8* %3, i64 %.01, !dbg !862, !psr.id !864
  %66 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %65, i64 1), !dbg !862, !psr.id !865
  call void @llvm.dbg.value(metadata i32 %66, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !866
  %67 = icmp ne i32 %66, 0, !dbg !867, !psr.id !869
  br i1 %67, label %68, label %69, !dbg !862, !psr.id !870

68:                                               ; preds = %64
  br label %112, !dbg !867, !psr.id !871

69:                                               ; preds = %64
  br label %70, !dbg !862, !psr.id !872

70:                                               ; preds = %69
  br label %71, !dbg !862, !psr.id !873

71:                                               ; preds = %70, %60
  br label %72, !dbg !874, !psr.id !875

72:                                               ; preds = %71
  %73 = add i64 %.01, 1, !dbg !876, !psr.id !877
  call void @llvm.dbg.value(metadata i64 %73, metadata !812, metadata !DIExpression()), !dbg !708, !psr.id !878
  br label %45, !dbg !879, !llvm.loop !880, !psr.id !882

74:                                               ; preds = %45
  br label %75, !dbg !883, !psr.id !884

75:                                               ; preds = %74
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !885, !psr.id !887
  %77 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %0, i8* %76), !dbg !885, !psr.id !888
  call void @llvm.dbg.value(metadata i32 %77, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !889
  %78 = icmp ne i32 %77, 0, !dbg !890, !psr.id !892
  br i1 %78, label %79, label %80, !dbg !885, !psr.id !893

79:                                               ; preds = %75
  br label %112, !dbg !890, !psr.id !894

80:                                               ; preds = %75
  br label %81, !dbg !885, !psr.id !895

81:                                               ; preds = %80
  br label %82, !dbg !896, !psr.id !897

82:                                               ; preds = %81
  %83 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* %0), !dbg !898, !psr.id !900
  call void @llvm.dbg.value(metadata i32 %83, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !901
  %84 = icmp ne i32 %83, 0, !dbg !902, !psr.id !904
  br i1 %84, label %85, label %86, !dbg !898, !psr.id !905

85:                                               ; preds = %82
  br label %112, !dbg !902, !psr.id !906

86:                                               ; preds = %82
  br label %87, !dbg !898, !psr.id !907

87:                                               ; preds = %86
  br label %88, !dbg !908, !psr.id !909

88:                                               ; preds = %87
  %89 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %20, i64 %17), !dbg !910, !psr.id !912
  call void @llvm.dbg.value(metadata i32 %89, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !913
  %90 = icmp ne i32 %89, 0, !dbg !914, !psr.id !916
  br i1 %90, label %91, label %92, !dbg !910, !psr.id !917

91:                                               ; preds = %88
  br label %112, !dbg !914, !psr.id !918

92:                                               ; preds = %88
  br label %93, !dbg !910, !psr.id !919

93:                                               ; preds = %92
  br label %94, !dbg !920, !psr.id !921

94:                                               ; preds = %93
  %95 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %7, i64 %24), !dbg !922, !psr.id !924
  call void @llvm.dbg.value(metadata i32 %95, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !925
  %96 = icmp ne i32 %95, 0, !dbg !926, !psr.id !928
  br i1 %96, label %97, label %98, !dbg !922, !psr.id !929

97:                                               ; preds = %94
  br label %112, !dbg !926, !psr.id !930

98:                                               ; preds = %94
  br label %99, !dbg !922, !psr.id !931

99:                                               ; preds = %98
  br label %100, !dbg !932, !psr.id !933

100:                                              ; preds = %99
  %101 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %0, i8* %7), !dbg !934, !psr.id !936
  call void @llvm.dbg.value(metadata i32 %101, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !937
  %102 = icmp ne i32 %101, 0, !dbg !938, !psr.id !940
  br i1 %102, label %103, label %104, !dbg !934, !psr.id !941

103:                                              ; preds = %100
  br label %112, !dbg !938, !psr.id !942

104:                                              ; preds = %100
  br label %105, !dbg !934, !psr.id !943

105:                                              ; preds = %104
  br label %106, !dbg !944, !psr.id !945

106:                                              ; preds = %105
  %107 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* %0), !dbg !946, !psr.id !948
  call void @llvm.dbg.value(metadata i32 %107, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !949
  %108 = icmp ne i32 %107, 0, !dbg !950, !psr.id !952
  br i1 %108, label %109, label %110, !dbg !946, !psr.id !953

109:                                              ; preds = %106
  br label %112, !dbg !950, !psr.id !954

110:                                              ; preds = %106
  br label %111, !dbg !946, !psr.id !955

111:                                              ; preds = %110
  br label %112, !dbg !946, !psr.id !956

112:                                              ; preds = %111, %109, %103, %97, %91, %85, %79, %68, %58, %51, %42, %36, %30
  %.0 = phi i32 [ %28, %30 ], [ %34, %36 ], [ %40, %42 ], [ %49, %51 ], [ %56, %58 ], [ %66, %68 ], [ %77, %79 ], [ %83, %85 ], [ %89, %91 ], [ %95, %97 ], [ %101, %103 ], [ %107, %109 ], [ %107, %111 ], !dbg !708, !psr.id !957
  call void @llvm.dbg.value(metadata i32 %.0, metadata !768, metadata !DIExpression()), !dbg !708, !psr.id !958
  call void @llvm.dbg.label(metadata !959), !dbg !960, !psr.id !961
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* %10), !dbg !962, !psr.id !963
  ret i32 %.0, !dbg !964, !psr.id !965
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
define dso_local i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i8 zeroext %2) #0 !dbg !966 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !978, metadata !DIExpression()), !dbg !979, !psr.id !980
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !981, metadata !DIExpression()), !dbg !979, !psr.id !982
  call void @llvm.dbg.value(metadata i8 %2, metadata !983, metadata !DIExpression()), !dbg !979, !psr.id !984
  call void @llvm.dbg.value(metadata i32 0, metadata !985, metadata !DIExpression()), !dbg !979, !psr.id !986
  br label %4, !dbg !987, !psr.id !988

4:                                                ; preds = %3
  br label %5, !dbg !989, !psr.id !991

5:                                                ; preds = %4
  br label %6, !dbg !992, !psr.id !993

6:                                                ; preds = %5
  br label %7, !dbg !994, !psr.id !996

7:                                                ; preds = %6
  %8 = zext i8 %2 to i64, !dbg !997, !psr.id !998
  %9 = call i64 @mbedtls_ct_mpi_uint_mask(i64 %8), !dbg !999, !psr.id !1000
  call void @llvm.dbg.value(metadata i64 %9, metadata !1001, metadata !DIExpression()), !dbg !979, !psr.id !1002
  br label %10, !dbg !1003, !psr.id !1004

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1005, !psr.id !1008
  %12 = load i64, i64* %11, align 8, !dbg !1005, !psr.id !1009
  %13 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %0, i64 %12), !dbg !1005, !psr.id !1010
  call void @llvm.dbg.value(metadata i32 %13, metadata !985, metadata !DIExpression()), !dbg !979, !psr.id !1011
  %14 = icmp ne i32 %13, 0, !dbg !1005, !psr.id !1012
  br i1 %14, label %15, label %16, !dbg !1013, !psr.id !1014

15:                                               ; preds = %10
  br label %46, !dbg !1005, !psr.id !1015

16:                                               ; preds = %10
  br label %17, !dbg !1013, !psr.id !1016

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1017, !psr.id !1018
  %19 = load i32, i32* %18, align 8, !dbg !1017, !psr.id !1019
  %20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1020, !psr.id !1021
  %21 = load i32, i32* %20, align 8, !dbg !1020, !psr.id !1022
  %22 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %19, i32 %21), !dbg !1023, !psr.id !1024
  %23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1025, !psr.id !1026
  store i32 %22, i32* %23, align 8, !dbg !1027, !psr.id !1028
  %24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1029, !psr.id !1030
  %25 = load i64*, i64** %24, align 8, !dbg !1029, !psr.id !1031
  %26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1032, !psr.id !1033
  %27 = load i64*, i64** %26, align 8, !dbg !1032, !psr.id !1034
  %28 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1035, !psr.id !1036
  %29 = load i64, i64* %28, align 8, !dbg !1035, !psr.id !1037
  call void @mbedtls_mpi_core_cond_assign(i64* %25, i64* %27, i64 %29, i8 zeroext %2), !dbg !1038, !psr.id !1039
  %30 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1040, !psr.id !1042
  %31 = load i64, i64* %30, align 8, !dbg !1040, !psr.id !1043
  call void @llvm.dbg.value(metadata i64 %31, metadata !1044, metadata !DIExpression()), !dbg !1045, !psr.id !1046
  br label %32, !dbg !1047, !psr.id !1048

32:                                               ; preds = %43, %17
  %.0 = phi i64 [ %31, %17 ], [ %44, %43 ], !dbg !1045, !psr.id !1049
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1044, metadata !DIExpression()), !dbg !1045, !psr.id !1050
  %33 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1051, !psr.id !1053
  %34 = load i64, i64* %33, align 8, !dbg !1051, !psr.id !1054
  %35 = icmp ult i64 %.0, %34, !dbg !1055, !psr.id !1056
  br i1 %35, label %36, label %45, !dbg !1057, !psr.id !1058

36:                                               ; preds = %32
  %37 = xor i64 %9, -1, !dbg !1059, !psr.id !1060
  %38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1061, !psr.id !1062
  %39 = load i64*, i64** %38, align 8, !dbg !1061, !psr.id !1063
  %40 = getelementptr inbounds i64, i64* %39, i64 %.0, !dbg !1064, !psr.id !1065
  %41 = load i64, i64* %40, align 8, !dbg !1066, !psr.id !1067
  %42 = and i64 %41, %37, !dbg !1066, !psr.id !1068
  store i64 %42, i64* %40, align 8, !dbg !1066, !psr.id !1069
  br label %43, !dbg !1064, !psr.id !1070

43:                                               ; preds = %36
  %44 = add i64 %.0, 1, !dbg !1071, !psr.id !1072
  call void @llvm.dbg.value(metadata i64 %44, metadata !1044, metadata !DIExpression()), !dbg !1045, !psr.id !1073
  br label %32, !dbg !1074, !llvm.loop !1075, !psr.id !1077

45:                                               ; preds = %32
  br label %46, !dbg !1076, !psr.id !1078

46:                                               ; preds = %45, %15
  call void @llvm.dbg.label(metadata !1079), !dbg !1080, !psr.id !1081
  ret i32 %13, !dbg !1082, !psr.id !1083
}

declare dso_local i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @mbedtls_ct_cond_select_sign(i8 zeroext %0, i32 %1, i32 %2) #0 !dbg !1084 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1087, metadata !DIExpression()), !dbg !1088, !psr.id !1089
  call void @llvm.dbg.value(metadata i32 %1, metadata !1090, metadata !DIExpression()), !dbg !1088, !psr.id !1091
  call void @llvm.dbg.value(metadata i32 %2, metadata !1092, metadata !DIExpression()), !dbg !1088, !psr.id !1093
  %4 = add nsw i32 %1, 1, !dbg !1094, !psr.id !1095
  call void @llvm.dbg.value(metadata i32 %4, metadata !1096, metadata !DIExpression()), !dbg !1088, !psr.id !1097
  %5 = add nsw i32 %2, 1, !dbg !1098, !psr.id !1099
  call void @llvm.dbg.value(metadata i32 %5, metadata !1100, metadata !DIExpression()), !dbg !1088, !psr.id !1101
  %6 = zext i8 %0 to i32, !dbg !1102, !psr.id !1103
  %7 = shl i32 %6, 1, !dbg !1104, !psr.id !1105
  call void @llvm.dbg.value(metadata i32 %7, metadata !1106, metadata !DIExpression()), !dbg !1088, !psr.id !1107
  %8 = xor i32 %7, -1, !dbg !1108, !psr.id !1109
  %9 = and i32 %5, %8, !dbg !1110, !psr.id !1111
  %10 = and i32 %4, %7, !dbg !1112, !psr.id !1113
  %11 = or i32 %9, %10, !dbg !1114, !psr.id !1115
  call void @llvm.dbg.value(metadata i32 %11, metadata !1116, metadata !DIExpression()), !dbg !1088, !psr.id !1117
  %12 = sub nsw i32 %11, 1, !dbg !1118, !psr.id !1119
  ret i32 %12, !dbg !1120, !psr.id !1121
}

declare dso_local void @mbedtls_mpi_core_cond_assign(i64*, i64*, i64, i8 zeroext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i8 zeroext %2) #0 !dbg !1122 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !1125, metadata !DIExpression()), !dbg !1126, !psr.id !1127
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !1128, metadata !DIExpression()), !dbg !1126, !psr.id !1129
  call void @llvm.dbg.value(metadata i8 %2, metadata !1130, metadata !DIExpression()), !dbg !1126, !psr.id !1131
  call void @llvm.dbg.value(metadata i32 0, metadata !1132, metadata !DIExpression()), !dbg !1126, !psr.id !1133
  br label %4, !dbg !1134, !psr.id !1135

4:                                                ; preds = %3
  br label %5, !dbg !1136, !psr.id !1138

5:                                                ; preds = %4
  br label %6, !dbg !1139, !psr.id !1140

6:                                                ; preds = %5
  br label %7, !dbg !1141, !psr.id !1143

7:                                                ; preds = %6
  %8 = icmp eq %struct.mbedtls_mpi* %0, %1, !dbg !1144, !psr.id !1146
  br i1 %8, label %9, label %10, !dbg !1147, !psr.id !1148

9:                                                ; preds = %7
  br label %46, !dbg !1149, !psr.id !1150

10:                                               ; preds = %7
  br label %11, !dbg !1151, !psr.id !1152

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1153, !psr.id !1156
  %13 = load i64, i64* %12, align 8, !dbg !1153, !psr.id !1157
  %14 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %0, i64 %13), !dbg !1153, !psr.id !1158
  call void @llvm.dbg.value(metadata i32 %14, metadata !1132, metadata !DIExpression()), !dbg !1126, !psr.id !1159
  %15 = icmp ne i32 %14, 0, !dbg !1153, !psr.id !1160
  br i1 %15, label %16, label %17, !dbg !1161, !psr.id !1162

16:                                               ; preds = %11
  br label %45, !dbg !1153, !psr.id !1163

17:                                               ; preds = %11
  br label %18, !dbg !1161, !psr.id !1164

18:                                               ; preds = %17
  br label %19, !dbg !1165, !psr.id !1166

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1167, !psr.id !1170
  %21 = load i64, i64* %20, align 8, !dbg !1167, !psr.id !1171
  %22 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %1, i64 %21), !dbg !1167, !psr.id !1172
  call void @llvm.dbg.value(metadata i32 %22, metadata !1132, metadata !DIExpression()), !dbg !1126, !psr.id !1173
  %23 = icmp ne i32 %22, 0, !dbg !1167, !psr.id !1174
  br i1 %23, label %24, label %25, !dbg !1175, !psr.id !1176

24:                                               ; preds = %19
  br label %45, !dbg !1167, !psr.id !1177

25:                                               ; preds = %19
  br label %26, !dbg !1175, !psr.id !1178

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1179, !psr.id !1180
  %28 = load i32, i32* %27, align 8, !dbg !1179, !psr.id !1181
  call void @llvm.dbg.value(metadata i32 %28, metadata !1182, metadata !DIExpression()), !dbg !1126, !psr.id !1183
  %29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1184, !psr.id !1185
  %30 = load i32, i32* %29, align 8, !dbg !1184, !psr.id !1186
  %31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1187, !psr.id !1188
  %32 = load i32, i32* %31, align 8, !dbg !1187, !psr.id !1189
  %33 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %30, i32 %32), !dbg !1190, !psr.id !1191
  %34 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1192, !psr.id !1193
  store i32 %33, i32* %34, align 8, !dbg !1194, !psr.id !1195
  %35 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1196, !psr.id !1197
  %36 = load i32, i32* %35, align 8, !dbg !1196, !psr.id !1198
  %37 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %28, i32 %36), !dbg !1199, !psr.id !1200
  %38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1201, !psr.id !1202
  store i32 %37, i32* %38, align 8, !dbg !1203, !psr.id !1204
  %39 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1205, !psr.id !1206
  %40 = load i64*, i64** %39, align 8, !dbg !1205, !psr.id !1207
  %41 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1208, !psr.id !1209
  %42 = load i64*, i64** %41, align 8, !dbg !1208, !psr.id !1210
  %43 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1211, !psr.id !1212
  %44 = load i64, i64* %43, align 8, !dbg !1211, !psr.id !1213
  call void @mbedtls_mpi_core_cond_swap(i64* %40, i64* %42, i64 %44, i8 zeroext %2), !dbg !1214, !psr.id !1215
  br label %45, !dbg !1214, !psr.id !1216

45:                                               ; preds = %26, %24, %16
  %.01 = phi i32 [ %14, %16 ], [ %22, %24 ], [ %22, %26 ], !dbg !1126, !psr.id !1217
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1132, metadata !DIExpression()), !dbg !1126, !psr.id !1218
  call void @llvm.dbg.label(metadata !1219), !dbg !1220, !psr.id !1221
  br label %46, !dbg !1222, !psr.id !1223

46:                                               ; preds = %45, %9
  %.0 = phi i32 [ 0, %9 ], [ %.01, %45 ], !dbg !1126, !psr.id !1224
  ret i32 %.0, !dbg !1225, !psr.id !1226
}

declare dso_local void @mbedtls_mpi_core_cond_swap(i64*, i64*, i64, i8 zeroext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_core_lt_ct(i64* %0, i64* %1, i64 %2) #0 !dbg !1227 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1230, metadata !DIExpression()), !dbg !1231, !psr.id !1232
  call void @llvm.dbg.value(metadata i64* %1, metadata !1233, metadata !DIExpression()), !dbg !1231, !psr.id !1234
  call void @llvm.dbg.value(metadata i64 %2, metadata !1235, metadata !DIExpression()), !dbg !1231, !psr.id !1236
  call void @llvm.dbg.value(metadata i32 0, metadata !1237, metadata !DIExpression()), !dbg !1231, !psr.id !1238
  call void @llvm.dbg.value(metadata i32 0, metadata !1239, metadata !DIExpression()), !dbg !1231, !psr.id !1240
  call void @llvm.dbg.value(metadata i32 0, metadata !1241, metadata !DIExpression()), !dbg !1231, !psr.id !1242
  call void @llvm.dbg.value(metadata i64 %2, metadata !1243, metadata !DIExpression()), !dbg !1245, !psr.id !1246
  br label %4, !dbg !1247, !psr.id !1248

4:                                                ; preds = %26, %3
  %.02 = phi i32 [ 0, %3 ], [ %24, %26 ], !dbg !1231, !psr.id !1249
  %.01 = phi i32 [ 0, %3 ], [ %25, %26 ], !dbg !1231, !psr.id !1250
  %.0 = phi i64 [ %2, %3 ], [ %27, %26 ], !dbg !1245, !psr.id !1251
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1243, metadata !DIExpression()), !dbg !1245, !psr.id !1252
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1237, metadata !DIExpression()), !dbg !1231, !psr.id !1253
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1241, metadata !DIExpression()), !dbg !1231, !psr.id !1254
  %5 = icmp ugt i64 %.0, 0, !dbg !1255, !psr.id !1257
  br i1 %5, label %6, label %28, !dbg !1258, !psr.id !1259

6:                                                ; preds = %4
  %7 = sub i64 %.0, 1, !dbg !1260, !psr.id !1262
  %8 = getelementptr inbounds i64, i64* %1, i64 %7, !dbg !1263, !psr.id !1264
  %9 = load i64, i64* %8, align 8, !dbg !1263, !psr.id !1265
  %10 = sub i64 %.0, 1, !dbg !1266, !psr.id !1267
  %11 = getelementptr inbounds i64, i64* %0, i64 %10, !dbg !1268, !psr.id !1269
  %12 = load i64, i64* %11, align 8, !dbg !1268, !psr.id !1270
  %13 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %9, i64 %12), !dbg !1271, !psr.id !1272
  call void @llvm.dbg.value(metadata i32 %13, metadata !1239, metadata !DIExpression()), !dbg !1231, !psr.id !1273
  %14 = or i32 %.01, %13, !dbg !1274, !psr.id !1275
  call void @llvm.dbg.value(metadata i32 %14, metadata !1237, metadata !DIExpression()), !dbg !1231, !psr.id !1276
  %15 = sub i64 %.0, 1, !dbg !1277, !psr.id !1278
  %16 = getelementptr inbounds i64, i64* %0, i64 %15, !dbg !1279, !psr.id !1280
  %17 = load i64, i64* %16, align 8, !dbg !1279, !psr.id !1281
  %18 = sub i64 %.0, 1, !dbg !1282, !psr.id !1283
  %19 = getelementptr inbounds i64, i64* %1, i64 %18, !dbg !1284, !psr.id !1285
  %20 = load i64, i64* %19, align 8, !dbg !1284, !psr.id !1286
  %21 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %17, i64 %20), !dbg !1287, !psr.id !1288
  call void @llvm.dbg.value(metadata i32 %21, metadata !1239, metadata !DIExpression()), !dbg !1231, !psr.id !1289
  %22 = sub i32 1, %14, !dbg !1290, !psr.id !1291
  %23 = and i32 %21, %22, !dbg !1292, !psr.id !1293
  %24 = or i32 %.02, %23, !dbg !1294, !psr.id !1295
  call void @llvm.dbg.value(metadata i32 %24, metadata !1241, metadata !DIExpression()), !dbg !1231, !psr.id !1296
  %25 = or i32 %14, %21, !dbg !1297, !psr.id !1298
  call void @llvm.dbg.value(metadata i32 %25, metadata !1237, metadata !DIExpression()), !dbg !1231, !psr.id !1299
  br label %26, !dbg !1300, !psr.id !1301

26:                                               ; preds = %6
  %27 = add i64 %.0, -1, !dbg !1302, !psr.id !1303
  call void @llvm.dbg.value(metadata i64 %27, metadata !1243, metadata !DIExpression()), !dbg !1245, !psr.id !1304
  br label %4, !dbg !1305, !llvm.loop !1306, !psr.id !1308

28:                                               ; preds = %4
  ret i32 %.02, !dbg !1309, !psr.id !1310
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i32* %2) #0 !dbg !1311 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !1315, metadata !DIExpression()), !dbg !1316, !psr.id !1317
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !1318, metadata !DIExpression()), !dbg !1316, !psr.id !1319
  call void @llvm.dbg.value(metadata i32* %2, metadata !1320, metadata !DIExpression()), !dbg !1316, !psr.id !1321
  br label %4, !dbg !1322, !psr.id !1323

4:                                                ; preds = %3
  br label %5, !dbg !1324, !psr.id !1326

5:                                                ; preds = %4
  br label %6, !dbg !1327, !psr.id !1328

6:                                                ; preds = %5
  br label %7, !dbg !1329, !psr.id !1331

7:                                                ; preds = %6
  br label %8, !dbg !1332, !psr.id !1333

8:                                                ; preds = %7
  br label %9, !dbg !1334, !psr.id !1336

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1337, !psr.id !1339
  %11 = load i64, i64* %10, align 8, !dbg !1337, !psr.id !1340
  %12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1341, !psr.id !1342
  %13 = load i64, i64* %12, align 8, !dbg !1341, !psr.id !1343
  %14 = icmp ne i64 %11, %13, !dbg !1344, !psr.id !1345
  br i1 %14, label %15, label %16, !dbg !1346, !psr.id !1347

15:                                               ; preds = %9
  br label %70, !dbg !1348, !psr.id !1349

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1350, !psr.id !1351
  %18 = load i32, i32* %17, align 8, !dbg !1350, !psr.id !1352
  %19 = and i32 %18, 2, !dbg !1353, !psr.id !1354
  %20 = ashr i32 %19, 1, !dbg !1355, !psr.id !1356
  call void @llvm.dbg.value(metadata i32 %20, metadata !1357, metadata !DIExpression()), !dbg !1316, !psr.id !1358
  %21 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1359, !psr.id !1360
  %22 = load i32, i32* %21, align 8, !dbg !1359, !psr.id !1361
  %23 = and i32 %22, 2, !dbg !1362, !psr.id !1363
  %24 = ashr i32 %23, 1, !dbg !1364, !psr.id !1365
  call void @llvm.dbg.value(metadata i32 %24, metadata !1366, metadata !DIExpression()), !dbg !1316, !psr.id !1367
  %25 = xor i32 %20, %24, !dbg !1368, !psr.id !1369
  call void @llvm.dbg.value(metadata i32 %25, metadata !1370, metadata !DIExpression()), !dbg !1316, !psr.id !1371
  %26 = and i32 %25, %20, !dbg !1372, !psr.id !1373
  store i32 %26, i32* %2, align 4, !dbg !1374, !psr.id !1375
  call void @llvm.dbg.value(metadata i32 %25, metadata !1376, metadata !DIExpression()), !dbg !1316, !psr.id !1377
  %27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1378, !psr.id !1380
  %28 = load i64, i64* %27, align 8, !dbg !1378, !psr.id !1381
  call void @llvm.dbg.value(metadata i64 %28, metadata !1382, metadata !DIExpression()), !dbg !1316, !psr.id !1383
  br label %29, !dbg !1384, !psr.id !1385

29:                                               ; preds = %67, %16
  %.02 = phi i64 [ %28, %16 ], [ %68, %67 ], !dbg !1386, !psr.id !1387
  %.01 = phi i32 [ %25, %16 ], [ %66, %67 ], !dbg !1316, !psr.id !1388
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1376, metadata !DIExpression()), !dbg !1316, !psr.id !1389
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1382, metadata !DIExpression()), !dbg !1316, !psr.id !1390
  %30 = icmp ugt i64 %.02, 0, !dbg !1391, !psr.id !1393
  br i1 %30, label %31, label %69, !dbg !1394, !psr.id !1395

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1396, !psr.id !1398
  %33 = load i64*, i64** %32, align 8, !dbg !1396, !psr.id !1399
  %34 = sub i64 %.02, 1, !dbg !1400, !psr.id !1401
  %35 = getelementptr inbounds i64, i64* %33, i64 %34, !dbg !1402, !psr.id !1403
  %36 = load i64, i64* %35, align 8, !dbg !1402, !psr.id !1404
  %37 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1405, !psr.id !1406
  %38 = load i64*, i64** %37, align 8, !dbg !1405, !psr.id !1407
  %39 = sub i64 %.02, 1, !dbg !1408, !psr.id !1409
  %40 = getelementptr inbounds i64, i64* %38, i64 %39, !dbg !1410, !psr.id !1411
  %41 = load i64, i64* %40, align 8, !dbg !1410, !psr.id !1412
  %42 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %36, i64 %41), !dbg !1413, !psr.id !1414
  call void @llvm.dbg.value(metadata i32 %42, metadata !1370, metadata !DIExpression()), !dbg !1316, !psr.id !1415
  %43 = sub i32 1, %.01, !dbg !1416, !psr.id !1417
  %44 = and i32 %42, %43, !dbg !1418, !psr.id !1419
  %45 = and i32 %44, %20, !dbg !1420, !psr.id !1421
  %46 = load i32, i32* %2, align 4, !dbg !1422, !psr.id !1423
  %47 = or i32 %46, %45, !dbg !1422, !psr.id !1424
  store i32 %47, i32* %2, align 4, !dbg !1422, !psr.id !1425
  %48 = or i32 %.01, %42, !dbg !1426, !psr.id !1427
  call void @llvm.dbg.value(metadata i32 %48, metadata !1376, metadata !DIExpression()), !dbg !1316, !psr.id !1428
  %49 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1429, !psr.id !1430
  %50 = load i64*, i64** %49, align 8, !dbg !1429, !psr.id !1431
  %51 = sub i64 %.02, 1, !dbg !1432, !psr.id !1433
  %52 = getelementptr inbounds i64, i64* %50, i64 %51, !dbg !1434, !psr.id !1435
  %53 = load i64, i64* %52, align 8, !dbg !1434, !psr.id !1436
  %54 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1437, !psr.id !1438
  %55 = load i64*, i64** %54, align 8, !dbg !1437, !psr.id !1439
  %56 = sub i64 %.02, 1, !dbg !1440, !psr.id !1441
  %57 = getelementptr inbounds i64, i64* %55, i64 %56, !dbg !1442, !psr.id !1443
  %58 = load i64, i64* %57, align 8, !dbg !1442, !psr.id !1444
  %59 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %53, i64 %58), !dbg !1445, !psr.id !1446
  call void @llvm.dbg.value(metadata i32 %59, metadata !1370, metadata !DIExpression()), !dbg !1316, !psr.id !1447
  %60 = sub i32 1, %48, !dbg !1448, !psr.id !1449
  %61 = and i32 %59, %60, !dbg !1450, !psr.id !1451
  %62 = sub i32 1, %20, !dbg !1452, !psr.id !1453
  %63 = and i32 %61, %62, !dbg !1454, !psr.id !1455
  %64 = load i32, i32* %2, align 4, !dbg !1456, !psr.id !1457
  %65 = or i32 %64, %63, !dbg !1456, !psr.id !1458
  store i32 %65, i32* %2, align 4, !dbg !1456, !psr.id !1459
  %66 = or i32 %48, %59, !dbg !1460, !psr.id !1461
  call void @llvm.dbg.value(metadata i32 %66, metadata !1376, metadata !DIExpression()), !dbg !1316, !psr.id !1462
  br label %67, !dbg !1463, !psr.id !1464

67:                                               ; preds = %31
  %68 = add i64 %.02, -1, !dbg !1465, !psr.id !1466
  call void @llvm.dbg.value(metadata i64 %68, metadata !1382, metadata !DIExpression()), !dbg !1316, !psr.id !1467
  br label %29, !dbg !1468, !llvm.loop !1469, !psr.id !1471

69:                                               ; preds = %29
  br label %70, !dbg !1472, !psr.id !1473

70:                                               ; preds = %69, %15
  %.0 = phi i32 [ -4, %15 ], [ 0, %69 ], !dbg !1316, !psr.id !1474
  ret i32 %.0, !dbg !1475, !psr.id !1476
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_rsaes_pkcs1_v15_unpadding(i8* %0, i64 %1, i8* %2, i64 %3, i64* %4) #0 !dbg !1477 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1481, metadata !DIExpression()), !dbg !1482, !psr.id !1483
  call void @llvm.dbg.value(metadata i64 %1, metadata !1484, metadata !DIExpression()), !dbg !1482, !psr.id !1485
  call void @llvm.dbg.value(metadata i8* %2, metadata !1486, metadata !DIExpression()), !dbg !1482, !psr.id !1487
  call void @llvm.dbg.value(metadata i64 %3, metadata !1488, metadata !DIExpression()), !dbg !1482, !psr.id !1489
  call void @llvm.dbg.value(metadata i64* %4, metadata !1490, metadata !DIExpression()), !dbg !1482, !psr.id !1491
  call void @llvm.dbg.value(metadata i32 -110, metadata !1492, metadata !DIExpression()), !dbg !1482, !psr.id !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1494, metadata !DIExpression()), !dbg !1482, !psr.id !1495
  call void @llvm.dbg.value(metadata i32 0, metadata !1496, metadata !DIExpression()), !dbg !1482, !psr.id !1497
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1482, !psr.id !1499
  call void @llvm.dbg.value(metadata i64 0, metadata !1500, metadata !DIExpression()), !dbg !1482, !psr.id !1501
  %6 = sub i64 %1, 11, !dbg !1502, !psr.id !1503
  %7 = icmp ugt i64 %3, %6, !dbg !1504, !psr.id !1505
  br i1 %7, label %8, label %10, !dbg !1506, !psr.id !1507

8:                                                ; preds = %5
  %9 = sub i64 %1, 11, !dbg !1508, !psr.id !1509
  br label %11, !dbg !1506, !psr.id !1510

10:                                               ; preds = %5
  br label %11, !dbg !1506, !psr.id !1511

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ %3, %10 ], !dbg !1506, !psr.id !1512
  call void @llvm.dbg.value(metadata i64 %12, metadata !1513, metadata !DIExpression()), !dbg !1482, !psr.id !1514
  %13 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1515, !psr.id !1516
  %14 = load i8, i8* %13, align 1, !dbg !1515, !psr.id !1517
  %15 = zext i8 %14 to i32, !dbg !1515, !psr.id !1518
  %16 = or i32 0, %15, !dbg !1519, !psr.id !1520
  call void @llvm.dbg.value(metadata i32 %16, metadata !1496, metadata !DIExpression()), !dbg !1482, !psr.id !1521
  %17 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1522, !psr.id !1523
  %18 = load i8, i8* %17, align 1, !dbg !1522, !psr.id !1524
  %19 = zext i8 %18 to i32, !dbg !1522, !psr.id !1525
  %20 = xor i32 %19, 2, !dbg !1526, !psr.id !1527
  %21 = or i32 %16, %20, !dbg !1528, !psr.id !1529
  call void @llvm.dbg.value(metadata i32 %21, metadata !1496, metadata !DIExpression()), !dbg !1482, !psr.id !1530
  call void @llvm.dbg.value(metadata i64 2, metadata !1531, metadata !DIExpression()), !dbg !1482, !psr.id !1532
  br label %22, !dbg !1533, !psr.id !1535

22:                                               ; preds = %50, %11
  %.02 = phi i64 [ 2, %11 ], [ %51, %50 ], !dbg !1536, !psr.id !1537
  %.01 = phi i64 [ 0, %11 ], [ %49, %50 ], !dbg !1482, !psr.id !1538
  %.0 = phi i8 [ 0, %11 ], [ %39, %50 ], !dbg !1482, !psr.id !1539
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1498, metadata !DIExpression()), !dbg !1482, !psr.id !1540
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1494, metadata !DIExpression()), !dbg !1482, !psr.id !1541
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1531, metadata !DIExpression()), !dbg !1482, !psr.id !1542
  %23 = icmp ult i64 %.02, %1, !dbg !1543, !psr.id !1545
  br i1 %23, label %24, label %52, !dbg !1546, !psr.id !1547

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, i8* %0, i64 %.02, !dbg !1548, !psr.id !1550
  %26 = load i8, i8* %25, align 1, !dbg !1548, !psr.id !1551
  %27 = zext i8 %26 to i32, !dbg !1548, !psr.id !1552
  %28 = getelementptr inbounds i8, i8* %0, i64 %.02, !dbg !1553, !psr.id !1554
  %29 = load i8, i8* %28, align 1, !dbg !1553, !psr.id !1555
  %30 = zext i8 %29 to i32, !dbg !1553, !psr.id !1556
  %31 = sub nsw i32 0, %30, !dbg !1557, !psr.id !1558
  %32 = trunc i32 %31 to i8, !dbg !1559, !psr.id !1560
  %33 = zext i8 %32 to i32, !dbg !1559, !psr.id !1561
  %34 = or i32 %27, %33, !dbg !1562, !psr.id !1563
  %35 = ashr i32 %34, 7, !dbg !1564, !psr.id !1565
  %36 = xor i32 %35, 1, !dbg !1566, !psr.id !1567
  %37 = zext i8 %.0 to i32, !dbg !1568, !psr.id !1569
  %38 = or i32 %37, %36, !dbg !1568, !psr.id !1570
  %39 = trunc i32 %38 to i8, !dbg !1568, !psr.id !1571
  call void @llvm.dbg.value(metadata i8 %39, metadata !1498, metadata !DIExpression()), !dbg !1482, !psr.id !1572
  %40 = zext i8 %39 to i32, !dbg !1573, !psr.id !1574
  %41 = zext i8 %39 to i32, !dbg !1575, !psr.id !1576
  %42 = sub nsw i32 0, %41, !dbg !1577, !psr.id !1578
  %43 = trunc i32 %42 to i8, !dbg !1579, !psr.id !1580
  %44 = zext i8 %43 to i32, !dbg !1579, !psr.id !1581
  %45 = or i32 %40, %44, !dbg !1582, !psr.id !1583
  %46 = ashr i32 %45, 7, !dbg !1584, !psr.id !1585
  %47 = xor i32 %46, 1, !dbg !1586, !psr.id !1587
  %48 = sext i32 %47 to i64, !dbg !1588, !psr.id !1589
  %49 = add i64 %.01, %48, !dbg !1590, !psr.id !1591
  call void @llvm.dbg.value(metadata i64 %49, metadata !1494, metadata !DIExpression()), !dbg !1482, !psr.id !1592
  br label %50, !dbg !1593, !psr.id !1594

50:                                               ; preds = %24
  %51 = add i64 %.02, 1, !dbg !1595, !psr.id !1596
  call void @llvm.dbg.value(metadata i64 %51, metadata !1531, metadata !DIExpression()), !dbg !1482, !psr.id !1597
  br label %22, !dbg !1598, !llvm.loop !1599, !psr.id !1601

52:                                               ; preds = %22
  %53 = zext i8 %.0 to i32, !dbg !1602, !psr.id !1603
  %54 = call i32 @mbedtls_ct_uint_if(i32 %53, i32 0, i32 1), !dbg !1604, !psr.id !1605
  %55 = or i32 %21, %54, !dbg !1606, !psr.id !1607
  call void @llvm.dbg.value(metadata i32 %55, metadata !1496, metadata !DIExpression()), !dbg !1482, !psr.id !1608
  %56 = call i32 @mbedtls_ct_size_gt(i64 8, i64 %.01), !dbg !1609, !psr.id !1610
  %57 = or i32 %55, %56, !dbg !1611, !psr.id !1612
  call void @llvm.dbg.value(metadata i32 %57, metadata !1496, metadata !DIExpression()), !dbg !1482, !psr.id !1613
  %58 = trunc i64 %12 to i32, !dbg !1614, !psr.id !1615
  %59 = sub i64 %1, %.01, !dbg !1616, !psr.id !1617
  %60 = sub i64 %59, 3, !dbg !1618, !psr.id !1619
  %61 = trunc i64 %60 to i32, !dbg !1620, !psr.id !1621
  %62 = call i32 @mbedtls_ct_uint_if(i32 %57, i32 %58, i32 %61), !dbg !1622, !psr.id !1623
  %63 = zext i32 %62 to i64, !dbg !1622, !psr.id !1624
  call void @llvm.dbg.value(metadata i64 %63, metadata !1500, metadata !DIExpression()), !dbg !1482, !psr.id !1625
  %64 = call i32 @mbedtls_ct_size_gt(i64 %63, i64 %12), !dbg !1626, !psr.id !1627
  call void @llvm.dbg.value(metadata i32 %64, metadata !1628, metadata !DIExpression()), !dbg !1482, !psr.id !1629
  %65 = call i32 @mbedtls_ct_uint_if(i32 %64, i32 17408, i32 0), !dbg !1630, !psr.id !1631
  %66 = call i32 @mbedtls_ct_uint_if(i32 %57, i32 16640, i32 %65), !dbg !1632, !psr.id !1633
  %67 = sub nsw i32 0, %66, !dbg !1634, !psr.id !1635
  call void @llvm.dbg.value(metadata i32 %67, metadata !1492, metadata !DIExpression()), !dbg !1482, !psr.id !1636
  %68 = or i32 %57, %64, !dbg !1637, !psr.id !1638
  %69 = call i32 @mbedtls_ct_uint_mask(i32 %68), !dbg !1639, !psr.id !1640
  call void @llvm.dbg.value(metadata i32 %69, metadata !1496, metadata !DIExpression()), !dbg !1482, !psr.id !1641
  call void @llvm.dbg.value(metadata i64 11, metadata !1531, metadata !DIExpression()), !dbg !1482, !psr.id !1642
  br label %70, !dbg !1643, !psr.id !1645

70:                                               ; preds = %79, %52
  %.1 = phi i64 [ 11, %52 ], [ %80, %79 ], !dbg !1646, !psr.id !1647
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1531, metadata !DIExpression()), !dbg !1482, !psr.id !1648
  %71 = icmp ult i64 %.1, %1, !dbg !1649, !psr.id !1651
  br i1 %71, label %72, label %81, !dbg !1652, !psr.id !1653

72:                                               ; preds = %70
  %73 = xor i32 %69, -1, !dbg !1654, !psr.id !1655
  %74 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !1656, !psr.id !1657
  %75 = load i8, i8* %74, align 1, !dbg !1658, !psr.id !1659
  %76 = zext i8 %75 to i32, !dbg !1658, !psr.id !1660
  %77 = and i32 %76, %73, !dbg !1658, !psr.id !1661
  %78 = trunc i32 %77 to i8, !dbg !1658, !psr.id !1662
  store i8 %78, i8* %74, align 1, !dbg !1658, !psr.id !1663
  br label %79, !dbg !1656, !psr.id !1664

79:                                               ; preds = %72
  %80 = add i64 %.1, 1, !dbg !1665, !psr.id !1666
  call void @llvm.dbg.value(metadata i64 %80, metadata !1531, metadata !DIExpression()), !dbg !1482, !psr.id !1667
  br label %70, !dbg !1668, !llvm.loop !1669, !psr.id !1671

81:                                               ; preds = %70
  %82 = trunc i64 %12 to i32, !dbg !1672, !psr.id !1673
  %83 = trunc i64 %63 to i32, !dbg !1674, !psr.id !1675
  %84 = call i32 @mbedtls_ct_uint_if(i32 %64, i32 %82, i32 %83), !dbg !1676, !psr.id !1677
  %85 = zext i32 %84 to i64, !dbg !1676, !psr.id !1678
  call void @llvm.dbg.value(metadata i64 %85, metadata !1500, metadata !DIExpression()), !dbg !1482, !psr.id !1679
  %86 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !1680, !psr.id !1681
  %87 = sub i64 0, %12, !dbg !1682, !psr.id !1683
  %88 = getelementptr inbounds i8, i8* %86, i64 %87, !dbg !1682, !psr.id !1684
  %89 = sub i64 %12, %85, !dbg !1685, !psr.id !1686
  call void @mbedtls_ct_mem_move_to_left(i8* %88, i64 %12, i64 %89), !dbg !1687, !psr.id !1688
  %90 = icmp ne i64 %3, 0, !dbg !1689, !psr.id !1691
  br i1 %90, label %91, label %95, !dbg !1692, !psr.id !1693

91:                                               ; preds = %81
  %92 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !1694, !psr.id !1695
  %93 = sub i64 0, %12, !dbg !1696, !psr.id !1697
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !1696, !psr.id !1698
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %94, i64 %12, i1 false), !dbg !1699, !psr.id !1700
  br label %95, !dbg !1699, !psr.id !1701

95:                                               ; preds = %91, %81
  store i64 %85, i64* %4, align 8, !dbg !1702, !psr.id !1703
  ret i32 %67, !dbg !1704, !psr.id !1705
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mbedtls_ct_size_gt(i64 %0, i64 %1) #0 !dbg !1706 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1707, metadata !DIExpression()), !dbg !1708, !psr.id !1709
  call void @llvm.dbg.value(metadata i64 %1, metadata !1710, metadata !DIExpression()), !dbg !1708, !psr.id !1711
  %3 = sub i64 %1, %0, !dbg !1712, !psr.id !1713
  %4 = lshr i64 %3, 63, !dbg !1714, !psr.id !1715
  %5 = trunc i64 %4 to i32, !dbg !1716, !psr.id !1717
  ret i32 %5, !dbg !1718, !psr.id !1719
}

; Function Attrs: noinline nounwind uwtable
define internal void @mbedtls_ct_mem_move_to_left(i8* %0, i64 %1, i64 %2) #0 !dbg !1720 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1723, metadata !DIExpression()), !dbg !1724, !psr.id !1725
  call void @llvm.dbg.value(metadata i64 %1, metadata !1726, metadata !DIExpression()), !dbg !1724, !psr.id !1727
  call void @llvm.dbg.value(metadata i64 %2, metadata !1728, metadata !DIExpression()), !dbg !1724, !psr.id !1729
  call void @llvm.dbg.value(metadata i8* %0, metadata !1730, metadata !DIExpression()), !dbg !1724, !psr.id !1732
  %4 = icmp eq i64 %1, 0, !dbg !1733, !psr.id !1735
  br i1 %4, label %5, label %6, !dbg !1736, !psr.id !1737

5:                                                ; preds = %3
  br label %39, !dbg !1738, !psr.id !1739

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 0, metadata !1740, metadata !DIExpression()), !dbg !1724, !psr.id !1741
  br label %7, !dbg !1742, !psr.id !1744

7:                                                ; preds = %37, %6
  %.01 = phi i64 [ 0, %6 ], [ %38, %37 ], !dbg !1745, !psr.id !1746
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1740, metadata !DIExpression()), !dbg !1724, !psr.id !1747
  %8 = icmp ult i64 %.01, %1, !dbg !1748, !psr.id !1750
  br i1 %8, label %9, label %39, !dbg !1751, !psr.id !1752

9:                                                ; preds = %7
  %10 = sub i64 %1, %2, !dbg !1753, !psr.id !1755
  %11 = call i32 @mbedtls_ct_size_gt(i64 %10, i64 %.01), !dbg !1756, !psr.id !1757
  call void @llvm.dbg.value(metadata i32 %11, metadata !1758, metadata !DIExpression()), !dbg !1759, !psr.id !1760
  call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !1724, !psr.id !1762
  br label %12, !dbg !1763, !psr.id !1765

12:                                               ; preds = %26, %9
  %.0 = phi i64 [ 0, %9 ], [ %27, %26 ], !dbg !1766, !psr.id !1767
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1761, metadata !DIExpression()), !dbg !1724, !psr.id !1768
  %13 = sub i64 %1, 1, !dbg !1769, !psr.id !1771
  %14 = icmp ult i64 %.0, %13, !dbg !1772, !psr.id !1773
  br i1 %14, label %15, label %28, !dbg !1774, !psr.id !1775

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1776, !psr.id !1778
  %17 = load volatile i8, i8* %16, align 1, !dbg !1776, !psr.id !1779
  call void @llvm.dbg.value(metadata i8 %17, metadata !1780, metadata !DIExpression()), !dbg !1781, !psr.id !1782
  %18 = add i64 %.0, 1, !dbg !1783, !psr.id !1784
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !1785, !psr.id !1786
  %20 = load volatile i8, i8* %19, align 1, !dbg !1785, !psr.id !1787
  call void @llvm.dbg.value(metadata i8 %20, metadata !1788, metadata !DIExpression()), !dbg !1781, !psr.id !1789
  %21 = zext i8 %17 to i32, !dbg !1790, !psr.id !1791
  %22 = zext i8 %20 to i32, !dbg !1792, !psr.id !1793
  %23 = call i32 @mbedtls_ct_uint_if(i32 %11, i32 %21, i32 %22), !dbg !1794, !psr.id !1795
  %24 = trunc i32 %23 to i8, !dbg !1794, !psr.id !1796
  %25 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1797, !psr.id !1798
  store volatile i8 %24, i8* %25, align 1, !dbg !1799, !psr.id !1800
  br label %26, !dbg !1801, !psr.id !1802

26:                                               ; preds = %15
  %27 = add i64 %.0, 1, !dbg !1803, !psr.id !1804
  call void @llvm.dbg.value(metadata i64 %27, metadata !1761, metadata !DIExpression()), !dbg !1724, !psr.id !1805
  br label %12, !dbg !1806, !llvm.loop !1807, !psr.id !1809

28:                                               ; preds = %12
  %29 = sub i64 %1, 1, !dbg !1810, !psr.id !1811
  %30 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !1812, !psr.id !1813
  %31 = load volatile i8, i8* %30, align 1, !dbg !1812, !psr.id !1814
  %32 = zext i8 %31 to i32, !dbg !1812, !psr.id !1815
  %33 = call i32 @mbedtls_ct_uint_if(i32 %11, i32 %32, i32 0), !dbg !1816, !psr.id !1817
  %34 = trunc i32 %33 to i8, !dbg !1816, !psr.id !1818
  %35 = sub i64 %1, 1, !dbg !1819, !psr.id !1820
  %36 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !1821, !psr.id !1822
  store volatile i8 %34, i8* %36, align 1, !dbg !1823, !psr.id !1824
  br label %37, !dbg !1825, !psr.id !1826

37:                                               ; preds = %28
  %38 = add i64 %.01, 1, !dbg !1827, !psr.id !1828
  call void @llvm.dbg.value(metadata i64 %38, metadata !1740, metadata !DIExpression()), !dbg !1724, !psr.id !1829
  br label %7, !dbg !1830, !llvm.loop !1831, !psr.id !1833

39:                                               ; preds = %7, %5
  ret void, !dbg !1834, !psr.id !1835
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_memcpy_offset_wrapper(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 !dbg !1836 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1839, metadata !DIExpression()), !dbg !1840, !psr.id !1841
  call void @llvm.dbg.value(metadata i8* %1, metadata !1842, metadata !DIExpression()), !dbg !1840, !psr.id !1843
  call void @llvm.dbg.value(metadata i64 %2, metadata !1844, metadata !DIExpression()), !dbg !1840, !psr.id !1845
  call void @llvm.dbg.value(metadata i64 %3, metadata !1846, metadata !DIExpression()), !dbg !1840, !psr.id !1847
  call void @llvm.dbg.value(metadata i64 %4, metadata !1848, metadata !DIExpression()), !dbg !1840, !psr.id !1849
  call void @llvm.dbg.value(metadata i64 %5, metadata !1850, metadata !DIExpression()), !dbg !1840, !psr.id !1851
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1852, !psr.id !1853
  call void @public_in(%struct.smack_value* %7), !dbg !1854, !psr.id !1855
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1856, !psr.id !1857
  call void @public_in(%struct.smack_value* %8), !dbg !1858, !psr.id !1859
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !1860, !psr.id !1861
  call void @public_in(%struct.smack_value* %9), !dbg !1862, !psr.id !1863
  %10 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %4), !dbg !1864, !psr.id !1865
  call void @public_in(%struct.smack_value* %10), !dbg !1866, !psr.id !1867
  %11 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %5), !dbg !1868, !psr.id !1869
  call void @public_in(%struct.smack_value* %11), !dbg !1870, !psr.id !1871
  %12 = call i32 (i8*, i8*, i64, i64, i64, i64, ...) bitcast (void (i8*, i8*, i64, i64, i64, i64)* @mbedtls_ct_memcpy_offset to i32 (i8*, i8*, i64, i64, i64, i64, ...)*)(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5), !dbg !1872, !psr.id !1873
  ret i32 undef, !dbg !1874, !psr.id !1875
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_memcpy_offset_wrapper_t() #0 !dbg !1876 {
  %1 = call i8* (...) @getdest(), !dbg !1879, !psr.id !1880
  call void @llvm.dbg.value(metadata i8* %1, metadata !1881, metadata !DIExpression()), !dbg !1882, !psr.id !1883
  %2 = call i8* (...) @getsrc(), !dbg !1884, !psr.id !1885
  call void @llvm.dbg.value(metadata i8* %2, metadata !1886, metadata !DIExpression()), !dbg !1882, !psr.id !1887
  %3 = call i64 (...) @getoffset(), !dbg !1888, !psr.id !1889
  call void @llvm.dbg.value(metadata i64 %3, metadata !1890, metadata !DIExpression()), !dbg !1882, !psr.id !1891
  %4 = call i64 (...) @getoffset_min(), !dbg !1892, !psr.id !1893
  call void @llvm.dbg.value(metadata i64 %4, metadata !1894, metadata !DIExpression()), !dbg !1882, !psr.id !1895
  %5 = call i64 (...) @getoffset_max(), !dbg !1896, !psr.id !1897
  call void @llvm.dbg.value(metadata i64 %5, metadata !1898, metadata !DIExpression()), !dbg !1882, !psr.id !1899
  %6 = call i64 (...) @getlen(), !dbg !1900, !psr.id !1901
  call void @llvm.dbg.value(metadata i64 %6, metadata !1902, metadata !DIExpression()), !dbg !1882, !psr.id !1903
  %7 = call i32 (i8*, i8*, i64, i64, i64, i64, ...) bitcast (void (i8*, i8*, i64, i64, i64, i64)* @mbedtls_ct_memcpy_offset to i32 (i8*, i8*, i64, i64, i64, i64, ...)*)(i8* %1, i8* %2, i64 %3, i64 %4, i64 %5, i64 %6), !dbg !1904, !psr.id !1905
  ret void, !dbg !1906, !psr.id !1907
}

declare dso_local i8* @getdest(...) #2

declare dso_local i8* @getsrc(...) #2

declare dso_local i64 @getoffset(...) #2

declare dso_local i64 @getoffset_min(...) #2

declare dso_local i64 @getoffset_max(...) #2

declare dso_local i64 @getlen(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @mbedtls_ct_memcpy_offset_wrapper_t()
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
!25 = !DIFile(filename: "mbedtls_ct_memcpy_offset.c", directory: "/home/luwei/bech-back/Mbed-tls/constant_time_primitive")
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
!129 = !{!"ValueTainted"}
!130 = !DILocation(line: 95, column: 25, scope: !121)
!131 = !{!"43"}
!132 = !DILocation(line: 95, column: 37, scope: !121)
!133 = !{!"44"}
!134 = !DILocation(line: 95, column: 13, scope: !121)
!135 = !{!"45"}
!136 = !DILocation(line: 95, column: 5, scope: !121)
!137 = !{!"46"}
!138 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_mask", scope: !1, file: !1, line: 105, type: !139, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_mpi_uint", file: !142, line: 141, baseType: !143)
!142 = !DIFile(filename: "../mbedtls/include/mbedtls/bignum.h", directory: "/home/luwei/bech-back/Mbed-tls/constant_time_primitive")
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !144, line: 27, baseType: !145)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !146, line: 45, baseType: !23)
!146 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!147 = !DILocalVariable(name: "value", arg: 1, scope: !138, file: !1, line: 105, type: !141)
!148 = !DILocation(line: 0, scope: !138)
!149 = !{!"47"}
!150 = !DILocation(line: 113, column: 27, scope: !138)
!151 = !{!"48"}
!152 = !DILocation(line: 113, column: 25, scope: !138)
!153 = !{!"49"}
!154 = !DILocation(line: 113, column: 37, scope: !138)
!155 = !{!"50"}
!156 = !DILocation(line: 113, column: 13, scope: !138)
!157 = !{!"51"}
!158 = !DILocation(line: 113, column: 5, scope: !138)
!159 = !{!"52"}
!160 = distinct !DISubprogram(name: "mbedtls_ct_size_mask_ge", scope: !1, file: !1, line: 150, type: !161, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!161 = !DISubroutineType(types: !162)
!162 = !{!21, !21, !21}
!163 = !DILocalVariable(name: "x", arg: 1, scope: !160, file: !1, line: 150, type: !21)
!164 = !DILocation(line: 0, scope: !160)
!165 = !{!"53"}
!166 = !DILocalVariable(name: "y", arg: 2, scope: !160, file: !1, line: 151, type: !21)
!167 = !{!"54"}
!168 = !DILocation(line: 153, column: 14, scope: !160)
!169 = !{!"55"}
!170 = !DILocation(line: 153, column: 13, scope: !160)
!171 = !{!"56"}
!172 = !DILocation(line: 153, column: 5, scope: !160)
!173 = !{!"57"}
!174 = distinct !DISubprogram(name: "mbedtls_ct_size_mask_lt", scope: !1, file: !1, line: 135, type: !161, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!175 = !DILocalVariable(name: "x", arg: 1, scope: !174, file: !1, line: 135, type: !21)
!176 = !DILocation(line: 0, scope: !174)
!177 = !{!"58"}
!178 = !DILocalVariable(name: "y", arg: 2, scope: !174, file: !1, line: 136, type: !21)
!179 = !{!"59"}
!180 = !DILocation(line: 139, column: 26, scope: !174)
!181 = !{!"60"}
!182 = !DILocalVariable(name: "sub", scope: !174, file: !1, line: 139, type: !183)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!184 = !{!"61"}
!185 = !DILocation(line: 142, column: 29, scope: !174)
!186 = !{!"62"}
!187 = !DILocalVariable(name: "sub1", scope: !174, file: !1, line: 142, type: !183)
!188 = !{!"63"}
!189 = !DILocation(line: 145, column: 25, scope: !174)
!190 = !{!"64"}
!191 = !DILocalVariable(name: "mask", scope: !174, file: !1, line: 145, type: !183)
!192 = !{!"65"}
!193 = !DILocation(line: 147, column: 5, scope: !174)
!194 = !{!"66"}
!195 = distinct !DISubprogram(name: "mbedtls_ct_size_bool_eq", scope: !1, file: !1, line: 178, type: !196, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!196 = !DISubroutineType(types: !197)
!197 = !{!5, !21, !21}
!198 = !DILocalVariable(name: "x", arg: 1, scope: !195, file: !1, line: 178, type: !21)
!199 = !DILocation(line: 0, scope: !195)
!200 = !{!"67"}
!201 = !DILocalVariable(name: "y", arg: 2, scope: !195, file: !1, line: 179, type: !21)
!202 = !{!"68"}
!203 = !DILocation(line: 182, column: 27, scope: !195)
!204 = !{!"69"}
!205 = !DILocalVariable(name: "diff", scope: !195, file: !1, line: 182, type: !183)
!206 = !{!"70"}
!207 = !DILocation(line: 192, column: 47, scope: !195)
!208 = !{!"71"}
!209 = !DILocation(line: 192, column: 36, scope: !195)
!210 = !{!"72"}
!211 = !DILocalVariable(name: "diff_msb", scope: !195, file: !1, line: 192, type: !183)
!212 = !{!"73"}
!213 = !DILocation(line: 199, column: 37, scope: !195)
!214 = !{!"74"}
!215 = !DILocation(line: 199, column: 28, scope: !195)
!216 = !{!"75"}
!217 = !DILocalVariable(name: "diff1", scope: !195, file: !1, line: 199, type: !218)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!219 = !{!"76"}
!220 = !DILocation(line: 201, column: 15, scope: !195)
!221 = !{!"77"}
!222 = !DILocation(line: 201, column: 5, scope: !195)
!223 = !{!"78"}
!224 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_lt", scope: !1, file: !1, line: 228, type: !225, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!225 = !DISubroutineType(types: !226)
!226 = !{!5, !227, !227}
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!228 = !DILocalVariable(name: "x", arg: 1, scope: !224, file: !1, line: 228, type: !227)
!229 = !DILocation(line: 0, scope: !224)
!230 = !{!"79"}
!231 = !DILocalVariable(name: "y", arg: 2, scope: !224, file: !1, line: 229, type: !227)
!232 = !{!"80"}
!233 = !DILocation(line: 237, column: 16, scope: !224)
!234 = !{!"81"}
!235 = !DILocalVariable(name: "cond", scope: !224, file: !1, line: 232, type: !141)
!236 = !{!"82"}
!237 = !DILocation(line: 242, column: 15, scope: !224)
!238 = !{!"83"}
!239 = !DILocation(line: 242, column: 23, scope: !224)
!240 = !{!"84"}
!241 = !DILocation(line: 242, column: 21, scope: !224)
!242 = !{!"85"}
!243 = !DILocalVariable(name: "ret", scope: !224, file: !1, line: 231, type: !141)
!244 = !{!"86"}
!245 = !DILocation(line: 248, column: 14, scope: !224)
!246 = !{!"87"}
!247 = !DILocation(line: 248, column: 9, scope: !224)
!248 = !{!"88"}
!249 = !{!"89"}
!250 = !DILocation(line: 251, column: 15, scope: !224)
!251 = !{!"90"}
!252 = !{!"91"}
!253 = !DILocation(line: 253, column: 12, scope: !224)
!254 = !{!"92"}
!255 = !DILocation(line: 253, column: 5, scope: !224)
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
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
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
!300 = !DILocalVariable(name: "mask", scope: !281, file: !1, line: 317, type: !227)
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
!586 = !DILocalVariable(name: "equal", scope: !566, file: !1, line: 417, type: !183)
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
!609 = !{!"PointTainted"}
!610 = !{!"276"}
!611 = !{!"277"}
!612 = !DILocation(line: 422, column: 30, scope: !603)
!613 = !{!"278"}
!614 = !DILocation(line: 422, column: 28, scope: !603)
!615 = !{!"279"}
!616 = !DILocation(line: 422, column: 41, scope: !603)
!617 = !{!"280"}
!618 = !{!"281"}
!619 = !{!"282"}
!620 = !DILocation(line: 422, column: 52, scope: !603)
!621 = !{!"283"}
!622 = !DILocation(line: 422, column: 51, scope: !603)
!623 = !{!"284"}
!624 = !DILocation(line: 422, column: 49, scope: !603)
!625 = !{!"285"}
!626 = !DILocation(line: 422, column: 37, scope: !603)
!627 = !{!"286"}
!628 = !DILocation(line: 422, column: 19, scope: !603)
!629 = !{!"287"}
!630 = !DILocation(line: 422, column: 9, scope: !603)
!631 = !{!"288"}
!632 = !DILocation(line: 422, column: 17, scope: !603)
!633 = !{!"289"}
!634 = !{!"290"}
!635 = !DILocation(line: 421, column: 34, scope: !603)
!636 = !{!"291"}
!637 = !{!"292"}
!638 = !DILocation(line: 421, column: 5, scope: !603)
!639 = distinct !{!639, !605, !640, !97}
!640 = !DILocation(line: 422, column: 57, scope: !595)
!641 = !{!"293"}
!642 = !DILocation(line: 423, column: 1, scope: !566)
!643 = !{!"294"}
!644 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_offset", scope: !1, file: !1, line: 425, type: !645, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !569, !570, !21, !21, !21, !21}
!647 = !DILocalVariable(name: "dest", arg: 1, scope: !644, file: !1, line: 425, type: !569)
!648 = !DILocation(line: 0, scope: !644)
!649 = !{!"295"}
!650 = !DILocalVariable(name: "src", arg: 2, scope: !644, file: !1, line: 426, type: !570)
!651 = !{!"296"}
!652 = !DILocalVariable(name: "offset", arg: 3, scope: !644, file: !1, line: 427, type: !21)
!653 = !{!"297"}
!654 = !DILocalVariable(name: "offset_min", arg: 4, scope: !644, file: !1, line: 428, type: !21)
!655 = !{!"298"}
!656 = !DILocalVariable(name: "offset_max", arg: 5, scope: !644, file: !1, line: 429, type: !21)
!657 = !{!"299"}
!658 = !DILocalVariable(name: "len", arg: 6, scope: !644, file: !1, line: 430, type: !21)
!659 = !{!"300"}
!660 = !DILocalVariable(name: "offsetval", scope: !644, file: !1, line: 432, type: !21)
!661 = !{!"301"}
!662 = !DILocation(line: 434, column: 10, scope: !663)
!663 = distinct !DILexicalBlock(scope: !644, file: !1, line: 434, column: 5)
!664 = !{!"302"}
!665 = !DILocation(line: 0, scope: !663)
!666 = !{!"303"}
!667 = !{!"304"}
!668 = !DILocation(line: 434, column: 44, scope: !669)
!669 = distinct !DILexicalBlock(scope: !663, file: !1, line: 434, column: 5)
!670 = !{!"305"}
!671 = !DILocation(line: 434, column: 5, scope: !663)
!672 = !{!"306"}
!673 = !DILocation(line: 436, column: 44, scope: !674)
!674 = distinct !DILexicalBlock(scope: !669, file: !1, line: 435, column: 5)
!675 = !{!"307"}
!676 = !DILocation(line: 436, column: 9, scope: !674)
!677 = !{!"308"}
!678 = !{!"00001"}
!679 = !DILocation(line: 438, column: 5, scope: !674)
!680 = !{!"309"}
!681 = !DILocation(line: 434, column: 68, scope: !669)
!682 = !{!"310"}
!683 = !{!"311"}
!684 = !DILocation(line: 434, column: 5, scope: !669)
!685 = distinct !{!685, !671, !686, !97}
!686 = !DILocation(line: 438, column: 5, scope: !663)
!687 = !{!"312"}
!688 = !DILocation(line: 439, column: 1, scope: !644)
!689 = !{!"313"}
!690 = distinct !DISubprogram(name: "mbedtls_ct_hmac", scope: !1, file: !1, line: 567, type: !691, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!691 = !DISubroutineType(types: !692)
!692 = !{!20, !693, !570, !21, !570, !21, !21, !21, !569}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_context_t", file: !4, line: 103, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_md_context_t", file: !4, line: 93, size: 192, elements: !696)
!696 = !{!697, !702, !704}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "md_info", scope: !695, file: !4, line: 96, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_info_t", file: !4, line: 88, baseType: !701)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_md_info_t", file: !4, line: 88, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !695, file: !4, line: 99, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "hmac_ctx", scope: !695, file: !4, line: 102, baseType: !703, size: 64, offset: 128)
!705 = !{!"314"}
!706 = !{!"315"}
!707 = !DILocalVariable(name: "ctx", arg: 1, scope: !690, file: !1, line: 567, type: !693)
!708 = !DILocation(line: 0, scope: !690)
!709 = !{!"316"}
!710 = !DILocalVariable(name: "add_data", arg: 2, scope: !690, file: !1, line: 568, type: !570)
!711 = !{!"317"}
!712 = !DILocalVariable(name: "add_data_len", arg: 3, scope: !690, file: !1, line: 569, type: !21)
!713 = !{!"318"}
!714 = !DILocalVariable(name: "data", arg: 4, scope: !690, file: !1, line: 570, type: !570)
!715 = !{!"319"}
!716 = !DILocalVariable(name: "data_len_secret", arg: 5, scope: !690, file: !1, line: 571, type: !21)
!717 = !{!"320"}
!718 = !DILocalVariable(name: "min_data_len", arg: 6, scope: !690, file: !1, line: 572, type: !21)
!719 = !{!"321"}
!720 = !DILocalVariable(name: "max_data_len", arg: 7, scope: !690, file: !1, line: 573, type: !21)
!721 = !{!"322"}
!722 = !DILocalVariable(name: "output", arg: 8, scope: !690, file: !1, line: 574, type: !569)
!723 = !{!"323"}
!724 = !DILocation(line: 590, column: 64, scope: !690)
!725 = !{!"324"}
!726 = !{!"325"}
!727 = !DILocation(line: 590, column: 38, scope: !690)
!728 = !{!"326"}
!729 = !DILocalVariable(name: "md_alg", scope: !690, file: !1, line: 590, type: !730)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_type_t", file: !4, line: 64, baseType: !3)
!732 = !{!"327"}
!733 = !DILocation(line: 593, column: 38, scope: !690)
!734 = !{!"328"}
!735 = !DILocation(line: 593, column: 31, scope: !690)
!736 = !{!"329"}
!737 = !{!"330"}
!738 = !{!"331"}
!739 = !DILocalVariable(name: "block_size", scope: !690, file: !1, line: 593, type: !183)
!740 = !{!"332"}
!741 = !DILocation(line: 594, column: 45, scope: !690)
!742 = !{!"333"}
!743 = !{!"334"}
!744 = !DILocalVariable(name: "ikey", scope: !690, file: !1, line: 594, type: !745)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!746 = !{!"335"}
!747 = !DILocation(line: 595, column: 45, scope: !690)
!748 = !{!"336"}
!749 = !DILocalVariable(name: "okey", scope: !690, file: !1, line: 595, type: !745)
!750 = !{!"337"}
!751 = !DILocation(line: 596, column: 56, scope: !690)
!752 = !{!"338"}
!753 = !{!"339"}
!754 = !DILocation(line: 596, column: 30, scope: !690)
!755 = !{!"340"}
!756 = !{!"341"}
!757 = !DILocalVariable(name: "hash_size", scope: !690, file: !1, line: 596, type: !183)
!758 = !{!"342"}
!759 = !DILocalVariable(name: "aux_out", scope: !690, file: !1, line: 598, type: !760)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 64)
!763 = !DILocation(line: 598, column: 19, scope: !690)
!764 = !{!"343"}
!765 = !DILocalVariable(name: "aux", scope: !690, file: !1, line: 599, type: !694)
!766 = !DILocation(line: 599, column: 26, scope: !690)
!767 = !{!"344"}
!768 = !DILocalVariable(name: "ret", scope: !690, file: !1, line: 601, type: !20)
!769 = !{!"345"}
!770 = !DILocation(line: 603, column: 5, scope: !690)
!771 = !{!"346"}
!772 = !DILocation(line: 612, column: 5, scope: !690)
!773 = !{!"347"}
!774 = !DILocation(line: 612, column: 5, scope: !775)
!775 = distinct !DILexicalBlock(scope: !690, file: !1, line: 612, column: 5)
!776 = !{!"348"}
!777 = !{!"349"}
!778 = !{!"350"}
!779 = !{!"351"}
!780 = !DILocation(line: 612, column: 5, scope: !781)
!781 = distinct !DILexicalBlock(scope: !775, file: !1, line: 612, column: 5)
!782 = !{!"352"}
!783 = !{!"353"}
!784 = !{!"354"}
!785 = !{!"355"}
!786 = !DILocation(line: 616, column: 5, scope: !690)
!787 = !{!"356"}
!788 = !DILocation(line: 616, column: 5, scope: !789)
!789 = distinct !DILexicalBlock(scope: !690, file: !1, line: 616, column: 5)
!790 = !{!"357"}
!791 = !{!"358"}
!792 = !DILocation(line: 616, column: 5, scope: !793)
!793 = distinct !DILexicalBlock(scope: !789, file: !1, line: 616, column: 5)
!794 = !{!"359"}
!795 = !{!"360"}
!796 = !{!"361"}
!797 = !{!"362"}
!798 = !DILocation(line: 617, column: 5, scope: !690)
!799 = !{!"363"}
!800 = !DILocation(line: 617, column: 5, scope: !801)
!801 = distinct !DILexicalBlock(scope: !690, file: !1, line: 617, column: 5)
!802 = !{!"364"}
!803 = !{!"365"}
!804 = !DILocation(line: 617, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !1, line: 617, column: 5)
!806 = !{!"366"}
!807 = !{!"367"}
!808 = !{!"368"}
!809 = !{!"369"}
!810 = !DILocation(line: 623, column: 5, scope: !690)
!811 = !{!"370"}
!812 = !DILocalVariable(name: "offset", scope: !690, file: !1, line: 600, type: !21)
!813 = !{!"371"}
!814 = !DILocation(line: 626, column: 10, scope: !815)
!815 = distinct !DILexicalBlock(scope: !690, file: !1, line: 626, column: 5)
!816 = !{!"372"}
!817 = !DILocation(line: 0, scope: !815)
!818 = !{!"373"}
!819 = !{!"374"}
!820 = !DILocation(line: 626, column: 40, scope: !821)
!821 = distinct !DILexicalBlock(scope: !815, file: !1, line: 626, column: 5)
!822 = !{!"375"}
!823 = !DILocation(line: 626, column: 5, scope: !815)
!824 = !{!"376"}
!825 = !DILocation(line: 628, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !821, file: !1, line: 627, column: 5)
!827 = !{!"377"}
!828 = !DILocation(line: 628, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !1, line: 628, column: 9)
!830 = !{!"378"}
!831 = !{!"379"}
!832 = !DILocation(line: 628, column: 9, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !1, line: 628, column: 9)
!834 = !{!"380"}
!835 = !{!"381"}
!836 = !{!"382"}
!837 = !{!"383"}
!838 = !DILocation(line: 629, column: 9, scope: !826)
!839 = !{!"384"}
!840 = !DILocation(line: 629, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !826, file: !1, line: 629, column: 9)
!842 = !{!"385"}
!843 = !{!"386"}
!844 = !{!"387"}
!845 = !DILocation(line: 629, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !1, line: 629, column: 9)
!847 = !{!"388"}
!848 = !{!"389"}
!849 = !{!"390"}
!850 = !{!"391"}
!851 = !DILocation(line: 631, column: 42, scope: !826)
!852 = !{!"392"}
!853 = !DILocation(line: 631, column: 9, scope: !826)
!854 = !{!"393"}
!855 = !DILocation(line: 634, column: 20, scope: !856)
!856 = distinct !DILexicalBlock(scope: !826, file: !1, line: 634, column: 13)
!857 = !{!"394"}
!858 = !DILocation(line: 634, column: 13, scope: !826)
!859 = !{!"395"}
!860 = !DILocation(line: 635, column: 13, scope: !856)
!861 = !{!"396"}
!862 = !DILocation(line: 635, column: 13, scope: !863)
!863 = distinct !DILexicalBlock(scope: !856, file: !1, line: 635, column: 13)
!864 = !{!"397"}
!865 = !{!"398"}
!866 = !{!"399"}
!867 = !DILocation(line: 635, column: 13, scope: !868)
!868 = distinct !DILexicalBlock(scope: !863, file: !1, line: 635, column: 13)
!869 = !{!"400"}
!870 = !{!"401"}
!871 = !{!"402"}
!872 = !{!"403"}
!873 = !{!"404"}
!874 = !DILocation(line: 636, column: 5, scope: !826)
!875 = !{!"405"}
!876 = !DILocation(line: 626, column: 63, scope: !821)
!877 = !{!"406"}
!878 = !{!"407"}
!879 = !DILocation(line: 626, column: 5, scope: !821)
!880 = distinct !{!880, !823, !881, !97}
!881 = !DILocation(line: 636, column: 5, scope: !815)
!882 = !{!"408"}
!883 = !DILocation(line: 639, column: 5, scope: !690)
!884 = !{!"409"}
!885 = !DILocation(line: 639, column: 5, scope: !886)
!886 = distinct !DILexicalBlock(scope: !690, file: !1, line: 639, column: 5)
!887 = !{!"410"}
!888 = !{!"411"}
!889 = !{!"412"}
!890 = !DILocation(line: 639, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !1, line: 639, column: 5)
!892 = !{!"413"}
!893 = !{!"414"}
!894 = !{!"415"}
!895 = !{!"416"}
!896 = !DILocation(line: 642, column: 5, scope: !690)
!897 = !{!"417"}
!898 = !DILocation(line: 642, column: 5, scope: !899)
!899 = distinct !DILexicalBlock(scope: !690, file: !1, line: 642, column: 5)
!900 = !{!"418"}
!901 = !{!"419"}
!902 = !DILocation(line: 642, column: 5, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !1, line: 642, column: 5)
!904 = !{!"420"}
!905 = !{!"421"}
!906 = !{!"422"}
!907 = !{!"423"}
!908 = !DILocation(line: 643, column: 5, scope: !690)
!909 = !{!"424"}
!910 = !DILocation(line: 643, column: 5, scope: !911)
!911 = distinct !DILexicalBlock(scope: !690, file: !1, line: 643, column: 5)
!912 = !{!"425"}
!913 = !{!"426"}
!914 = !DILocation(line: 643, column: 5, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !1, line: 643, column: 5)
!916 = !{!"427"}
!917 = !{!"428"}
!918 = !{!"429"}
!919 = !{!"430"}
!920 = !DILocation(line: 644, column: 5, scope: !690)
!921 = !{!"431"}
!922 = !DILocation(line: 644, column: 5, scope: !923)
!923 = distinct !DILexicalBlock(scope: !690, file: !1, line: 644, column: 5)
!924 = !{!"432"}
!925 = !{!"433"}
!926 = !DILocation(line: 644, column: 5, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !1, line: 644, column: 5)
!928 = !{!"434"}
!929 = !{!"435"}
!930 = !{!"436"}
!931 = !{!"437"}
!932 = !DILocation(line: 645, column: 5, scope: !690)
!933 = !{!"438"}
!934 = !DILocation(line: 645, column: 5, scope: !935)
!935 = distinct !DILexicalBlock(scope: !690, file: !1, line: 645, column: 5)
!936 = !{!"439"}
!937 = !{!"440"}
!938 = !DILocation(line: 645, column: 5, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !1, line: 645, column: 5)
!940 = !{!"441"}
!941 = !{!"442"}
!942 = !{!"443"}
!943 = !{!"444"}
!944 = !DILocation(line: 648, column: 5, scope: !690)
!945 = !{!"445"}
!946 = !DILocation(line: 648, column: 5, scope: !947)
!947 = distinct !DILexicalBlock(scope: !690, file: !1, line: 648, column: 5)
!948 = !{!"446"}
!949 = !{!"447"}
!950 = !DILocation(line: 648, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !947, file: !1, line: 648, column: 5)
!952 = !{!"448"}
!953 = !{!"449"}
!954 = !{!"450"}
!955 = !{!"451"}
!956 = !{!"452"}
!957 = !{!"453"}
!958 = !{!"454"}
!959 = !DILabel(scope: !690, name: "cleanup", file: !1, line: 652)
!960 = !DILocation(line: 652, column: 1, scope: !690)
!961 = !{!"455"}
!962 = !DILocation(line: 653, column: 5, scope: !690)
!963 = !{!"456"}
!964 = !DILocation(line: 654, column: 5, scope: !690)
!965 = !{!"457"}
!966 = distinct !DISubprogram(name: "mbedtls_mpi_safe_cond_assign", scope: !1, file: !1, line: 677, type: !967, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!967 = !DISubroutineType(types: !968)
!968 = !{!20, !969, !976, !19}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_mpi", file: !142, line: 227, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_mpi", file: !142, line: 203, size: 192, elements: !972)
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !971, file: !142, line: 216, baseType: !20, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !971, file: !142, line: 219, baseType: !21, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !971, file: !142, line: 225, baseType: !284, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!978 = !DILocalVariable(name: "X", arg: 1, scope: !966, file: !1, line: 677, type: !969)
!979 = !DILocation(line: 0, scope: !966)
!980 = !{!"458"}
!981 = !DILocalVariable(name: "Y", arg: 2, scope: !966, file: !1, line: 678, type: !976)
!982 = !{!"459"}
!983 = !DILocalVariable(name: "assign", arg: 3, scope: !966, file: !1, line: 679, type: !19)
!984 = !{!"460"}
!985 = !DILocalVariable(name: "ret", scope: !966, file: !1, line: 681, type: !20)
!986 = !{!"461"}
!987 = !DILocation(line: 682, column: 5, scope: !966)
!988 = !{!"462"}
!989 = !DILocation(line: 682, column: 5, scope: !990)
!990 = distinct !DILexicalBlock(scope: !966, file: !1, line: 682, column: 5)
!991 = !{!"463"}
!992 = !DILocation(line: 683, column: 5, scope: !966)
!993 = !{!"464"}
!994 = !DILocation(line: 683, column: 5, scope: !995)
!995 = distinct !DILexicalBlock(scope: !966, file: !1, line: 683, column: 5)
!996 = !{!"465"}
!997 = !DILocation(line: 686, column: 60, scope: !966)
!998 = !{!"466"}
!999 = !DILocation(line: 686, column: 34, scope: !966)
!1000 = !{!"467"}
!1001 = !DILocalVariable(name: "limb_mask", scope: !966, file: !1, line: 686, type: !141)
!1002 = !{!"468"}
!1003 = !DILocation(line: 688, column: 5, scope: !966)
!1004 = !{!"469"}
!1005 = !DILocation(line: 688, column: 5, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 688, column: 5)
!1007 = distinct !DILexicalBlock(scope: !966, file: !1, line: 688, column: 5)
!1008 = !{!"470"}
!1009 = !{!"471"}
!1010 = !{!"472"}
!1011 = !{!"473"}
!1012 = !{!"474"}
!1013 = !DILocation(line: 688, column: 5, scope: !1007)
!1014 = !{!"475"}
!1015 = !{!"476"}
!1016 = !{!"477"}
!1017 = !DILocation(line: 690, column: 52, scope: !966)
!1018 = !{!"478"}
!1019 = !{!"479"}
!1020 = !DILocation(line: 690, column: 58, scope: !966)
!1021 = !{!"480"}
!1022 = !{!"481"}
!1023 = !DILocation(line: 690, column: 12, scope: !966)
!1024 = !{!"482"}
!1025 = !DILocation(line: 690, column: 8, scope: !966)
!1026 = !{!"483"}
!1027 = !DILocation(line: 690, column: 10, scope: !966)
!1028 = !{!"484"}
!1029 = !DILocation(line: 692, column: 38, scope: !966)
!1030 = !{!"485"}
!1031 = !{!"486"}
!1032 = !DILocation(line: 692, column: 44, scope: !966)
!1033 = !{!"487"}
!1034 = !{!"488"}
!1035 = !DILocation(line: 692, column: 50, scope: !966)
!1036 = !{!"489"}
!1037 = !{!"490"}
!1038 = !DILocation(line: 692, column: 5, scope: !966)
!1039 = !{!"491"}
!1040 = !DILocation(line: 694, column: 24, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !966, file: !1, line: 694, column: 5)
!1042 = !{!"492"}
!1043 = !{!"493"}
!1044 = !DILocalVariable(name: "i", scope: !1041, file: !1, line: 694, type: !21)
!1045 = !DILocation(line: 0, scope: !1041)
!1046 = !{!"494"}
!1047 = !DILocation(line: 694, column: 10, scope: !1041)
!1048 = !{!"495"}
!1049 = !{!"496"}
!1050 = !{!"497"}
!1051 = !DILocation(line: 694, column: 34, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 694, column: 5)
!1053 = !{!"498"}
!1054 = !{!"499"}
!1055 = !DILocation(line: 694, column: 29, scope: !1052)
!1056 = !{!"500"}
!1057 = !DILocation(line: 694, column: 5, scope: !1041)
!1058 = !{!"501"}
!1059 = !DILocation(line: 695, column: 20, scope: !1052)
!1060 = !{!"502"}
!1061 = !DILocation(line: 695, column: 12, scope: !1052)
!1062 = !{!"503"}
!1063 = !{!"504"}
!1064 = !DILocation(line: 695, column: 9, scope: !1052)
!1065 = !{!"505"}
!1066 = !DILocation(line: 695, column: 17, scope: !1052)
!1067 = !{!"506"}
!1068 = !{!"507"}
!1069 = !{!"508"}
!1070 = !{!"509"}
!1071 = !DILocation(line: 694, column: 38, scope: !1052)
!1072 = !{!"510"}
!1073 = !{!"511"}
!1074 = !DILocation(line: 694, column: 5, scope: !1052)
!1075 = distinct !{!1075, !1057, !1076, !97}
!1076 = !DILocation(line: 695, column: 21, scope: !1041)
!1077 = !{!"512"}
!1078 = !{!"513"}
!1079 = !DILabel(scope: !966, name: "cleanup", file: !1, line: 697)
!1080 = !DILocation(line: 697, column: 1, scope: !966)
!1081 = !{!"514"}
!1082 = !DILocation(line: 698, column: 5, scope: !966)
!1083 = !{!"515"}
!1084 = distinct !DISubprogram(name: "mbedtls_ct_cond_select_sign", scope: !1, file: !1, line: 282, type: !1085, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!20, !19, !20, !20}
!1087 = !DILocalVariable(name: "condition", arg: 1, scope: !1084, file: !1, line: 282, type: !19)
!1088 = !DILocation(line: 0, scope: !1084)
!1089 = !{!"516"}
!1090 = !DILocalVariable(name: "if1", arg: 2, scope: !1084, file: !1, line: 283, type: !20)
!1091 = !{!"517"}
!1092 = !DILocalVariable(name: "if0", arg: 3, scope: !1084, file: !1, line: 284, type: !20)
!1093 = !{!"518"}
!1094 = !DILocation(line: 289, column: 25, scope: !1084)
!1095 = !{!"519"}
!1096 = !DILocalVariable(name: "uif1", scope: !1084, file: !1, line: 289, type: !5)
!1097 = !{!"520"}
!1098 = !DILocation(line: 290, column: 25, scope: !1084)
!1099 = !{!"521"}
!1100 = !DILocalVariable(name: "uif0", scope: !1084, file: !1, line: 290, type: !5)
!1101 = !{!"522"}
!1102 = !DILocation(line: 293, column: 27, scope: !1084)
!1103 = !{!"523"}
!1104 = !DILocation(line: 293, column: 37, scope: !1084)
!1105 = !{!"524"}
!1106 = !DILocalVariable(name: "mask", scope: !1084, file: !1, line: 293, type: !218)
!1107 = !{!"525"}
!1108 = !DILocation(line: 296, column: 28, scope: !1084)
!1109 = !{!"526"}
!1110 = !DILocation(line: 296, column: 26, scope: !1084)
!1111 = !{!"527"}
!1112 = !DILocation(line: 296, column: 45, scope: !1084)
!1113 = !{!"528"}
!1114 = !DILocation(line: 296, column: 36, scope: !1084)
!1115 = !{!"529"}
!1116 = !DILocalVariable(name: "ur", scope: !1084, file: !1, line: 296, type: !5)
!1117 = !{!"530"}
!1118 = !DILocation(line: 299, column: 22, scope: !1084)
!1119 = !{!"531"}
!1120 = !DILocation(line: 299, column: 5, scope: !1084)
!1121 = !{!"532"}
!1122 = distinct !DISubprogram(name: "mbedtls_mpi_safe_cond_swap", scope: !1, file: !1, line: 707, type: !1123, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!20, !969, !969, !19}
!1125 = !DILocalVariable(name: "X", arg: 1, scope: !1122, file: !1, line: 707, type: !969)
!1126 = !DILocation(line: 0, scope: !1122)
!1127 = !{!"533"}
!1128 = !DILocalVariable(name: "Y", arg: 2, scope: !1122, file: !1, line: 708, type: !969)
!1129 = !{!"534"}
!1130 = !DILocalVariable(name: "swap", arg: 3, scope: !1122, file: !1, line: 709, type: !19)
!1131 = !{!"535"}
!1132 = !DILocalVariable(name: "ret", scope: !1122, file: !1, line: 711, type: !20)
!1133 = !{!"536"}
!1134 = !DILocation(line: 713, column: 5, scope: !1122)
!1135 = !{!"537"}
!1136 = !DILocation(line: 713, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 713, column: 5)
!1138 = !{!"538"}
!1139 = !DILocation(line: 714, column: 5, scope: !1122)
!1140 = !{!"539"}
!1141 = !DILocation(line: 714, column: 5, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 714, column: 5)
!1143 = !{!"540"}
!1144 = !DILocation(line: 716, column: 11, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 716, column: 9)
!1146 = !{!"541"}
!1147 = !DILocation(line: 716, column: 9, scope: !1122)
!1148 = !{!"542"}
!1149 = !DILocation(line: 717, column: 9, scope: !1145)
!1150 = !{!"543"}
!1151 = !DILocation(line: 719, column: 5, scope: !1122)
!1152 = !{!"544"}
!1153 = !DILocation(line: 719, column: 5, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 719, column: 5)
!1155 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 719, column: 5)
!1156 = !{!"545"}
!1157 = !{!"546"}
!1158 = !{!"547"}
!1159 = !{!"548"}
!1160 = !{!"549"}
!1161 = !DILocation(line: 719, column: 5, scope: !1155)
!1162 = !{!"550"}
!1163 = !{!"551"}
!1164 = !{!"552"}
!1165 = !DILocation(line: 720, column: 5, scope: !1122)
!1166 = !{!"553"}
!1167 = !DILocation(line: 720, column: 5, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 720, column: 5)
!1169 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 720, column: 5)
!1170 = !{!"554"}
!1171 = !{!"555"}
!1172 = !{!"556"}
!1173 = !{!"557"}
!1174 = !{!"558"}
!1175 = !DILocation(line: 720, column: 5, scope: !1169)
!1176 = !{!"559"}
!1177 = !{!"560"}
!1178 = !{!"561"}
!1179 = !DILocation(line: 722, column: 12, scope: !1122)
!1180 = !{!"562"}
!1181 = !{!"563"}
!1182 = !DILocalVariable(name: "s", scope: !1122, file: !1, line: 712, type: !20)
!1183 = !{!"564"}
!1184 = !DILocation(line: 723, column: 50, scope: !1122)
!1185 = !{!"565"}
!1186 = !{!"566"}
!1187 = !DILocation(line: 723, column: 56, scope: !1122)
!1188 = !{!"567"}
!1189 = !{!"568"}
!1190 = !DILocation(line: 723, column: 12, scope: !1122)
!1191 = !{!"569"}
!1192 = !DILocation(line: 723, column: 8, scope: !1122)
!1193 = !{!"570"}
!1194 = !DILocation(line: 723, column: 10, scope: !1122)
!1195 = !{!"571"}
!1196 = !DILocation(line: 724, column: 53, scope: !1122)
!1197 = !{!"572"}
!1198 = !{!"573"}
!1199 = !DILocation(line: 724, column: 12, scope: !1122)
!1200 = !{!"574"}
!1201 = !DILocation(line: 724, column: 8, scope: !1122)
!1202 = !{!"575"}
!1203 = !DILocation(line: 724, column: 10, scope: !1122)
!1204 = !{!"576"}
!1205 = !DILocation(line: 726, column: 36, scope: !1122)
!1206 = !{!"577"}
!1207 = !{!"578"}
!1208 = !DILocation(line: 726, column: 42, scope: !1122)
!1209 = !{!"579"}
!1210 = !{!"580"}
!1211 = !DILocation(line: 726, column: 48, scope: !1122)
!1212 = !{!"581"}
!1213 = !{!"582"}
!1214 = !DILocation(line: 726, column: 5, scope: !1122)
!1215 = !{!"583"}
!1216 = !{!"584"}
!1217 = !{!"585"}
!1218 = !{!"586"}
!1219 = !DILabel(scope: !1122, name: "cleanup", file: !1, line: 728)
!1220 = !DILocation(line: 728, column: 1, scope: !1122)
!1221 = !{!"587"}
!1222 = !DILocation(line: 729, column: 5, scope: !1122)
!1223 = !{!"588"}
!1224 = !{!"589"}
!1225 = !DILocation(line: 730, column: 1, scope: !1122)
!1226 = !{!"590"}
!1227 = distinct !DISubprogram(name: "mbedtls_mpi_core_lt_ct", scope: !1, file: !1, line: 735, type: !1228, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!5, !285, !285, !21}
!1230 = !DILocalVariable(name: "A", arg: 1, scope: !1227, file: !1, line: 735, type: !285)
!1231 = !DILocation(line: 0, scope: !1227)
!1232 = !{!"591"}
!1233 = !DILocalVariable(name: "B", arg: 2, scope: !1227, file: !1, line: 736, type: !285)
!1234 = !{!"592"}
!1235 = !DILocalVariable(name: "limbs", arg: 3, scope: !1227, file: !1, line: 737, type: !21)
!1236 = !{!"593"}
!1237 = !DILocalVariable(name: "done", scope: !1227, file: !1, line: 739, type: !5)
!1238 = !{!"594"}
!1239 = !DILocalVariable(name: "cond", scope: !1227, file: !1, line: 739, type: !5)
!1240 = !{!"595"}
!1241 = !DILocalVariable(name: "ret", scope: !1227, file: !1, line: 739, type: !5)
!1242 = !{!"596"}
!1243 = !DILocalVariable(name: "i", scope: !1244, file: !1, line: 745, type: !21)
!1244 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 745, column: 5)
!1245 = !DILocation(line: 0, scope: !1244)
!1246 = !{!"597"}
!1247 = !DILocation(line: 745, column: 10, scope: !1244)
!1248 = !{!"598"}
!1249 = !{!"599"}
!1250 = !{!"600"}
!1251 = !{!"601"}
!1252 = !{!"602"}
!1253 = !{!"603"}
!1254 = !{!"604"}
!1255 = !DILocation(line: 745, column: 30, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 745, column: 5)
!1257 = !{!"605"}
!1258 = !DILocation(line: 745, column: 5, scope: !1244)
!1259 = !{!"606"}
!1260 = !DILocation(line: 754, column: 44, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !1, line: 746, column: 5)
!1262 = !{!"607"}
!1263 = !DILocation(line: 754, column: 40, scope: !1261)
!1264 = !{!"608"}
!1265 = !{!"609"}
!1266 = !DILocation(line: 754, column: 54, scope: !1261)
!1267 = !{!"610"}
!1268 = !DILocation(line: 754, column: 50, scope: !1261)
!1269 = !{!"611"}
!1270 = !{!"612"}
!1271 = !DILocation(line: 754, column: 16, scope: !1261)
!1272 = !{!"613"}
!1273 = !{!"614"}
!1274 = !DILocation(line: 755, column: 14, scope: !1261)
!1275 = !{!"615"}
!1276 = !{!"616"}
!1277 = !DILocation(line: 763, column: 44, scope: !1261)
!1278 = !{!"617"}
!1279 = !DILocation(line: 763, column: 40, scope: !1261)
!1280 = !{!"618"}
!1281 = !{!"619"}
!1282 = !DILocation(line: 763, column: 54, scope: !1261)
!1283 = !{!"620"}
!1284 = !DILocation(line: 763, column: 50, scope: !1261)
!1285 = !{!"621"}
!1286 = !{!"622"}
!1287 = !DILocation(line: 763, column: 16, scope: !1261)
!1288 = !{!"623"}
!1289 = !{!"624"}
!1290 = !DILocation(line: 764, column: 27, scope: !1261)
!1291 = !{!"625"}
!1292 = !DILocation(line: 764, column: 21, scope: !1261)
!1293 = !{!"626"}
!1294 = !DILocation(line: 764, column: 13, scope: !1261)
!1295 = !{!"627"}
!1296 = !{!"628"}
!1297 = !DILocation(line: 765, column: 14, scope: !1261)
!1298 = !{!"629"}
!1299 = !{!"630"}
!1300 = !DILocation(line: 766, column: 5, scope: !1261)
!1301 = !{!"631"}
!1302 = !DILocation(line: 745, column: 36, scope: !1256)
!1303 = !{!"632"}
!1304 = !{!"633"}
!1305 = !DILocation(line: 745, column: 5, scope: !1256)
!1306 = distinct !{!1306, !1258, !1307, !97}
!1307 = !DILocation(line: 766, column: 5, scope: !1244)
!1308 = !{!"634"}
!1309 = !DILocation(line: 773, column: 5, scope: !1227)
!1310 = !{!"635"}
!1311 = distinct !DISubprogram(name: "mbedtls_mpi_lt_mpi_ct", scope: !1, file: !1, line: 779, type: !1312, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!20, !976, !976, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1315 = !DILocalVariable(name: "X", arg: 1, scope: !1311, file: !1, line: 779, type: !976)
!1316 = !DILocation(line: 0, scope: !1311)
!1317 = !{!"636"}
!1318 = !DILocalVariable(name: "Y", arg: 2, scope: !1311, file: !1, line: 780, type: !976)
!1319 = !{!"637"}
!1320 = !DILocalVariable(name: "ret", arg: 3, scope: !1311, file: !1, line: 781, type: !1314)
!1321 = !{!"638"}
!1322 = !DILocation(line: 787, column: 5, scope: !1311)
!1323 = !{!"639"}
!1324 = !DILocation(line: 787, column: 5, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 787, column: 5)
!1326 = !{!"640"}
!1327 = !DILocation(line: 788, column: 5, scope: !1311)
!1328 = !{!"641"}
!1329 = !DILocation(line: 788, column: 5, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 788, column: 5)
!1331 = !{!"642"}
!1332 = !DILocation(line: 789, column: 5, scope: !1311)
!1333 = !{!"643"}
!1334 = !DILocation(line: 789, column: 5, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 789, column: 5)
!1336 = !{!"644"}
!1337 = !DILocation(line: 791, column: 12, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 791, column: 9)
!1339 = !{!"645"}
!1340 = !{!"646"}
!1341 = !DILocation(line: 791, column: 20, scope: !1338)
!1342 = !{!"647"}
!1343 = !{!"648"}
!1344 = !DILocation(line: 791, column: 14, scope: !1338)
!1345 = !{!"649"}
!1346 = !DILocation(line: 791, column: 9, scope: !1311)
!1347 = !{!"650"}
!1348 = !DILocation(line: 792, column: 9, scope: !1338)
!1349 = !{!"651"}
!1350 = !DILocation(line: 798, column: 26, scope: !1311)
!1351 = !{!"652"}
!1352 = !{!"653"}
!1353 = !DILocation(line: 798, column: 28, scope: !1311)
!1354 = !{!"654"}
!1355 = !DILocation(line: 798, column: 34, scope: !1311)
!1356 = !{!"655"}
!1357 = !DILocalVariable(name: "X_is_negative", scope: !1311, file: !1, line: 785, type: !5)
!1358 = !{!"656"}
!1359 = !DILocation(line: 799, column: 26, scope: !1311)
!1360 = !{!"657"}
!1361 = !{!"658"}
!1362 = !DILocation(line: 799, column: 28, scope: !1311)
!1363 = !{!"659"}
!1364 = !DILocation(line: 799, column: 34, scope: !1311)
!1365 = !{!"660"}
!1366 = !DILocalVariable(name: "Y_is_negative", scope: !1311, file: !1, line: 785, type: !5)
!1367 = !{!"661"}
!1368 = !DILocation(line: 806, column: 28, scope: !1311)
!1369 = !{!"662"}
!1370 = !DILocalVariable(name: "cond", scope: !1311, file: !1, line: 785, type: !5)
!1371 = !{!"663"}
!1372 = !DILocation(line: 807, column: 17, scope: !1311)
!1373 = !{!"664"}
!1374 = !DILocation(line: 807, column: 10, scope: !1311)
!1375 = !{!"665"}
!1376 = !DILocalVariable(name: "done", scope: !1311, file: !1, line: 785, type: !5)
!1377 = !{!"666"}
!1378 = !DILocation(line: 815, column: 17, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 815, column: 5)
!1380 = !{!"667"}
!1381 = !{!"668"}
!1382 = !DILocalVariable(name: "i", scope: !1311, file: !1, line: 783, type: !21)
!1383 = !{!"669"}
!1384 = !DILocation(line: 815, column: 10, scope: !1379)
!1385 = !{!"670"}
!1386 = !DILocation(line: 0, scope: !1379)
!1387 = !{!"671"}
!1388 = !{!"672"}
!1389 = !{!"673"}
!1390 = !{!"674"}
!1391 = !DILocation(line: 815, column: 22, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 815, column: 5)
!1393 = !{!"675"}
!1394 = !DILocation(line: 815, column: 5, scope: !1379)
!1395 = !{!"676"}
!1396 = !DILocation(line: 824, column: 43, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !1, line: 816, column: 5)
!1398 = !{!"677"}
!1399 = !{!"678"}
!1400 = !DILocation(line: 824, column: 47, scope: !1397)
!1401 = !{!"679"}
!1402 = !DILocation(line: 824, column: 40, scope: !1397)
!1403 = !{!"680"}
!1404 = !{!"681"}
!1405 = !DILocation(line: 824, column: 56, scope: !1397)
!1406 = !{!"682"}
!1407 = !{!"683"}
!1408 = !DILocation(line: 824, column: 60, scope: !1397)
!1409 = !{!"684"}
!1410 = !DILocation(line: 824, column: 53, scope: !1397)
!1411 = !{!"685"}
!1412 = !{!"686"}
!1413 = !DILocation(line: 824, column: 16, scope: !1397)
!1414 = !{!"687"}
!1415 = !{!"688"}
!1416 = !DILocation(line: 825, column: 28, scope: !1397)
!1417 = !{!"689"}
!1418 = !DILocation(line: 825, column: 22, scope: !1397)
!1419 = !{!"690"}
!1420 = !DILocation(line: 825, column: 37, scope: !1397)
!1421 = !{!"691"}
!1422 = !DILocation(line: 825, column: 14, scope: !1397)
!1423 = !{!"692"}
!1424 = !{!"693"}
!1425 = !{!"694"}
!1426 = !DILocation(line: 826, column: 14, scope: !1397)
!1427 = !{!"695"}
!1428 = !{!"696"}
!1429 = !DILocation(line: 835, column: 43, scope: !1397)
!1430 = !{!"697"}
!1431 = !{!"698"}
!1432 = !DILocation(line: 835, column: 47, scope: !1397)
!1433 = !{!"699"}
!1434 = !DILocation(line: 835, column: 40, scope: !1397)
!1435 = !{!"700"}
!1436 = !{!"701"}
!1437 = !DILocation(line: 835, column: 56, scope: !1397)
!1438 = !{!"702"}
!1439 = !{!"703"}
!1440 = !DILocation(line: 835, column: 60, scope: !1397)
!1441 = !{!"704"}
!1442 = !DILocation(line: 835, column: 53, scope: !1397)
!1443 = !{!"705"}
!1444 = !{!"706"}
!1445 = !DILocation(line: 835, column: 16, scope: !1397)
!1446 = !{!"707"}
!1447 = !{!"708"}
!1448 = !DILocation(line: 836, column: 28, scope: !1397)
!1449 = !{!"709"}
!1450 = !DILocation(line: 836, column: 22, scope: !1397)
!1451 = !{!"710"}
!1452 = !DILocation(line: 836, column: 43, scope: !1397)
!1453 = !{!"711"}
!1454 = !DILocation(line: 836, column: 37, scope: !1397)
!1455 = !{!"712"}
!1456 = !DILocation(line: 836, column: 14, scope: !1397)
!1457 = !{!"713"}
!1458 = !{!"714"}
!1459 = !{!"715"}
!1460 = !DILocation(line: 837, column: 14, scope: !1397)
!1461 = !{!"716"}
!1462 = !{!"717"}
!1463 = !DILocation(line: 838, column: 5, scope: !1397)
!1464 = !{!"718"}
!1465 = !DILocation(line: 815, column: 28, scope: !1392)
!1466 = !{!"719"}
!1467 = !{!"720"}
!1468 = !DILocation(line: 815, column: 5, scope: !1392)
!1469 = distinct !{!1469, !1394, !1470, !97}
!1470 = !DILocation(line: 838, column: 5, scope: !1379)
!1471 = !{!"721"}
!1472 = !DILocation(line: 840, column: 5, scope: !1311)
!1473 = !{!"722"}
!1474 = !{!"723"}
!1475 = !DILocation(line: 841, column: 1, scope: !1311)
!1476 = !{!"724"}
!1477 = distinct !DISubprogram(name: "mbedtls_ct_rsaes_pkcs1_v15_unpadding", scope: !1, file: !1, line: 847, type: !1478, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!20, !569, !21, !569, !21, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1481 = !DILocalVariable(name: "input", arg: 1, scope: !1477, file: !1, line: 847, type: !569)
!1482 = !DILocation(line: 0, scope: !1477)
!1483 = !{!"725"}
!1484 = !DILocalVariable(name: "ilen", arg: 2, scope: !1477, file: !1, line: 848, type: !21)
!1485 = !{!"726"}
!1486 = !DILocalVariable(name: "output", arg: 3, scope: !1477, file: !1, line: 849, type: !569)
!1487 = !{!"727"}
!1488 = !DILocalVariable(name: "output_max_len", arg: 4, scope: !1477, file: !1, line: 850, type: !21)
!1489 = !{!"728"}
!1490 = !DILocalVariable(name: "olen", arg: 5, scope: !1477, file: !1, line: 851, type: !1480)
!1491 = !{!"729"}
!1492 = !DILocalVariable(name: "ret", scope: !1477, file: !1, line: 853, type: !20)
!1493 = !{!"730"}
!1494 = !DILocalVariable(name: "pad_count", scope: !1477, file: !1, line: 866, type: !21)
!1495 = !{!"731"}
!1496 = !DILocalVariable(name: "bad", scope: !1477, file: !1, line: 867, type: !5)
!1497 = !{!"732"}
!1498 = !DILocalVariable(name: "pad_done", scope: !1477, file: !1, line: 868, type: !19)
!1499 = !{!"733"}
!1500 = !DILocalVariable(name: "plaintext_size", scope: !1477, file: !1, line: 869, type: !21)
!1501 = !{!"734"}
!1502 = !DILocation(line: 872, column: 50, scope: !1477)
!1503 = !{!"735"}
!1504 = !DILocation(line: 872, column: 43, scope: !1477)
!1505 = !{!"736"}
!1506 = !DILocation(line: 872, column: 26, scope: !1477)
!1507 = !{!"737"}
!1508 = !DILocation(line: 872, column: 64, scope: !1477)
!1509 = !{!"738"}
!1510 = !{!"739"}
!1511 = !{!"740"}
!1512 = !{!"741"}
!1513 = !DILocalVariable(name: "plaintext_max_size", scope: !1477, file: !1, line: 854, type: !21)
!1514 = !{!"742"}
!1515 = !DILocation(line: 877, column: 12, scope: !1477)
!1516 = !{!"743"}
!1517 = !{!"744"}
!1518 = !{!"745"}
!1519 = !DILocation(line: 877, column: 9, scope: !1477)
!1520 = !{!"746"}
!1521 = !{!"747"}
!1522 = !DILocation(line: 882, column: 12, scope: !1477)
!1523 = !{!"748"}
!1524 = !{!"749"}
!1525 = !{!"750"}
!1526 = !DILocation(line: 882, column: 21, scope: !1477)
!1527 = !{!"751"}
!1528 = !DILocation(line: 882, column: 9, scope: !1477)
!1529 = !{!"752"}
!1530 = !{!"753"}
!1531 = !DILocalVariable(name: "i", scope: !1477, file: !1, line: 854, type: !21)
!1532 = !{!"754"}
!1533 = !DILocation(line: 886, column: 10, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 886, column: 5)
!1535 = !{!"755"}
!1536 = !DILocation(line: 0, scope: !1534)
!1537 = !{!"756"}
!1538 = !{!"757"}
!1539 = !{!"758"}
!1540 = !{!"759"}
!1541 = !{!"760"}
!1542 = !{!"761"}
!1543 = !DILocation(line: 886, column: 19, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1534, file: !1, line: 886, column: 5)
!1545 = !{!"762"}
!1546 = !DILocation(line: 886, column: 5, scope: !1534)
!1547 = !{!"763"}
!1548 = !DILocation(line: 888, column: 24, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !1, line: 887, column: 5)
!1550 = !{!"764"}
!1551 = !{!"765"}
!1552 = !{!"766"}
!1553 = !DILocation(line: 888, column: 51, scope: !1549)
!1554 = !{!"767"}
!1555 = !{!"768"}
!1556 = !{!"769"}
!1557 = !DILocation(line: 888, column: 50, scope: !1549)
!1558 = !{!"770"}
!1559 = !DILocation(line: 888, column: 35, scope: !1549)
!1560 = !{!"771"}
!1561 = !{!"772"}
!1562 = !DILocation(line: 888, column: 33, scope: !1549)
!1563 = !{!"773"}
!1564 = !DILocation(line: 888, column: 61, scope: !1549)
!1565 = !{!"774"}
!1566 = !DILocation(line: 888, column: 67, scope: !1549)
!1567 = !{!"775"}
!1568 = !DILocation(line: 888, column: 19, scope: !1549)
!1569 = !{!"776"}
!1570 = !{!"777"}
!1571 = !{!"778"}
!1572 = !{!"779"}
!1573 = !DILocation(line: 889, column: 24, scope: !1549)
!1574 = !{!"780"}
!1575 = !DILocation(line: 889, column: 51, scope: !1549)
!1576 = !{!"781"}
!1577 = !DILocation(line: 889, column: 50, scope: !1549)
!1578 = !{!"782"}
!1579 = !DILocation(line: 889, column: 35, scope: !1549)
!1580 = !{!"783"}
!1581 = !{!"784"}
!1582 = !DILocation(line: 889, column: 33, scope: !1549)
!1583 = !{!"785"}
!1584 = !DILocation(line: 889, column: 61, scope: !1549)
!1585 = !{!"786"}
!1586 = !DILocation(line: 889, column: 67, scope: !1549)
!1587 = !{!"787"}
!1588 = !DILocation(line: 889, column: 22, scope: !1549)
!1589 = !{!"788"}
!1590 = !DILocation(line: 889, column: 19, scope: !1549)
!1591 = !{!"789"}
!1592 = !{!"790"}
!1593 = !DILocation(line: 890, column: 5, scope: !1549)
!1594 = !{!"791"}
!1595 = !DILocation(line: 886, column: 28, scope: !1544)
!1596 = !{!"792"}
!1597 = !{!"793"}
!1598 = !DILocation(line: 886, column: 5, scope: !1544)
!1599 = distinct !{!1599, !1546, !1600, !97}
!1600 = !DILocation(line: 890, column: 5, scope: !1534)
!1601 = !{!"794"}
!1602 = !DILocation(line: 894, column: 32, scope: !1477)
!1603 = !{!"795"}
!1604 = !DILocation(line: 894, column: 12, scope: !1477)
!1605 = !{!"796"}
!1606 = !DILocation(line: 894, column: 9, scope: !1477)
!1607 = !{!"797"}
!1608 = !{!"798"}
!1609 = !DILocation(line: 897, column: 12, scope: !1477)
!1610 = !{!"799"}
!1611 = !DILocation(line: 897, column: 9, scope: !1477)
!1612 = !{!"800"}
!1613 = !{!"801"}
!1614 = !DILocation(line: 907, column: 30, scope: !1477)
!1615 = !{!"802"}
!1616 = !DILocation(line: 908, column: 43, scope: !1477)
!1617 = !{!"803"}
!1618 = !DILocation(line: 908, column: 55, scope: !1477)
!1619 = !{!"804"}
!1620 = !DILocation(line: 908, column: 25, scope: !1477)
!1621 = !{!"805"}
!1622 = !DILocation(line: 906, column: 22, scope: !1477)
!1623 = !{!"806"}
!1624 = !{!"807"}
!1625 = !{!"808"}
!1626 = !DILocation(line: 912, column: 24, scope: !1477)
!1627 = !{!"809"}
!1628 = !DILocalVariable(name: "output_too_large", scope: !1477, file: !1, line: 870, type: !5)
!1629 = !{!"810"}
!1630 = !DILocation(line: 922, column: 21, scope: !1477)
!1631 = !{!"811"}
!1632 = !DILocation(line: 920, column: 19, scope: !1477)
!1633 = !{!"812"}
!1634 = !DILocation(line: 920, column: 11, scope: !1477)
!1635 = !{!"813"}
!1636 = !{!"814"}
!1637 = !DILocation(line: 932, column: 37, scope: !1477)
!1638 = !{!"815"}
!1639 = !DILocation(line: 932, column: 11, scope: !1477)
!1640 = !{!"816"}
!1641 = !{!"817"}
!1642 = !{!"818"}
!1643 = !DILocation(line: 933, column: 10, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 933, column: 5)
!1645 = !{!"819"}
!1646 = !DILocation(line: 0, scope: !1644)
!1647 = !{!"820"}
!1648 = !{!"821"}
!1649 = !DILocation(line: 933, column: 20, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 933, column: 5)
!1651 = !{!"822"}
!1652 = !DILocation(line: 933, column: 5, scope: !1644)
!1653 = !{!"823"}
!1654 = !DILocation(line: 934, column: 21, scope: !1650)
!1655 = !{!"824"}
!1656 = !DILocation(line: 934, column: 9, scope: !1650)
!1657 = !{!"825"}
!1658 = !DILocation(line: 934, column: 18, scope: !1650)
!1659 = !{!"826"}
!1660 = !{!"827"}
!1661 = !{!"828"}
!1662 = !{!"829"}
!1663 = !{!"830"}
!1664 = !{!"831"}
!1665 = !DILocation(line: 933, column: 29, scope: !1650)
!1666 = !{!"832"}
!1667 = !{!"833"}
!1668 = !DILocation(line: 933, column: 5, scope: !1650)
!1669 = distinct !{!1669, !1652, !1670, !97}
!1670 = !DILocation(line: 934, column: 22, scope: !1644)
!1671 = !{!"834"}
!1672 = !DILocation(line: 941, column: 42, scope: !1477)
!1673 = !{!"835"}
!1674 = !DILocation(line: 942, column: 42, scope: !1477)
!1675 = !{!"836"}
!1676 = !DILocation(line: 940, column: 22, scope: !1477)
!1677 = !{!"837"}
!1678 = !{!"838"}
!1679 = !{!"839"}
!1680 = !DILocation(line: 950, column: 40, scope: !1477)
!1681 = !{!"840"}
!1682 = !DILocation(line: 950, column: 47, scope: !1477)
!1683 = !{!"841"}
!1684 = !{!"842"}
!1685 = !DILocation(line: 952, column: 53, scope: !1477)
!1686 = !{!"843"}
!1687 = !DILocation(line: 950, column: 5, scope: !1477)
!1688 = !{!"844"}
!1689 = !DILocation(line: 961, column: 24, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 961, column: 9)
!1691 = !{!"845"}
!1692 = !DILocation(line: 961, column: 9, scope: !1477)
!1693 = !{!"846"}
!1694 = !DILocation(line: 962, column: 31, scope: !1690)
!1695 = !{!"847"}
!1696 = !DILocation(line: 962, column: 38, scope: !1690)
!1697 = !{!"848"}
!1698 = !{!"849"}
!1699 = !DILocation(line: 962, column: 9, scope: !1690)
!1700 = !{!"850"}
!1701 = !{!"851"}
!1702 = !DILocation(line: 968, column: 11, scope: !1477)
!1703 = !{!"852"}
!1704 = !DILocation(line: 970, column: 5, scope: !1477)
!1705 = !{!"853"}
!1706 = distinct !DISubprogram(name: "mbedtls_ct_size_gt", scope: !1, file: !1, line: 217, type: !196, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1707 = !DILocalVariable(name: "x", arg: 1, scope: !1706, file: !1, line: 217, type: !21)
!1708 = !DILocation(line: 0, scope: !1706)
!1709 = !{!"854"}
!1710 = !DILocalVariable(name: "y", arg: 2, scope: !1706, file: !1, line: 218, type: !21)
!1711 = !{!"855"}
!1712 = !DILocation(line: 221, column: 17, scope: !1706)
!1713 = !{!"856"}
!1714 = !DILocation(line: 221, column: 23, scope: !1706)
!1715 = !{!"857"}
!1716 = !DILocation(line: 221, column: 11, scope: !1706)
!1717 = !{!"858"}
!1718 = !DILocation(line: 221, column: 5, scope: !1706)
!1719 = !{!"859"}
!1720 = distinct !DISubprogram(name: "mbedtls_ct_mem_move_to_left", scope: !1, file: !1, line: 382, type: !1721, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !703, !21, !21}
!1723 = !DILocalVariable(name: "start", arg: 1, scope: !1720, file: !1, line: 382, type: !703)
!1724 = !DILocation(line: 0, scope: !1720)
!1725 = !{!"860"}
!1726 = !DILocalVariable(name: "total", arg: 2, scope: !1720, file: !1, line: 383, type: !21)
!1727 = !{!"861"}
!1728 = !DILocalVariable(name: "offset", arg: 3, scope: !1720, file: !1, line: 384, type: !21)
!1729 = !{!"862"}
!1730 = !DILocalVariable(name: "buf", scope: !1720, file: !1, line: 386, type: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1732 = !{!"863"}
!1733 = !DILocation(line: 388, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 388, column: 9)
!1735 = !{!"864"}
!1736 = !DILocation(line: 388, column: 9, scope: !1720)
!1737 = !{!"865"}
!1738 = !DILocation(line: 389, column: 9, scope: !1734)
!1739 = !{!"866"}
!1740 = !DILocalVariable(name: "i", scope: !1720, file: !1, line: 387, type: !21)
!1741 = !{!"867"}
!1742 = !DILocation(line: 390, column: 10, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 390, column: 5)
!1744 = !{!"868"}
!1745 = !DILocation(line: 0, scope: !1743)
!1746 = !{!"869"}
!1747 = !{!"870"}
!1748 = !DILocation(line: 390, column: 19, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 390, column: 5)
!1750 = !{!"871"}
!1751 = !DILocation(line: 390, column: 5, scope: !1743)
!1752 = !{!"872"}
!1753 = !DILocation(line: 392, column: 52, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 391, column: 5)
!1755 = !{!"873"}
!1756 = !DILocation(line: 392, column: 26, scope: !1754)
!1757 = !{!"874"}
!1758 = !DILocalVariable(name: "no_op", scope: !1754, file: !1, line: 392, type: !5)
!1759 = !DILocation(line: 0, scope: !1754)
!1760 = !{!"875"}
!1761 = !DILocalVariable(name: "n", scope: !1720, file: !1, line: 387, type: !21)
!1762 = !{!"876"}
!1763 = !DILocation(line: 396, column: 14, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1754, file: !1, line: 396, column: 9)
!1765 = !{!"877"}
!1766 = !DILocation(line: 0, scope: !1764)
!1767 = !{!"878"}
!1768 = !{!"879"}
!1769 = !DILocation(line: 396, column: 31, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1764, file: !1, line: 396, column: 9)
!1771 = !{!"880"}
!1772 = !DILocation(line: 396, column: 23, scope: !1770)
!1773 = !{!"881"}
!1774 = !DILocation(line: 396, column: 9, scope: !1764)
!1775 = !{!"882"}
!1776 = !DILocation(line: 398, column: 37, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 397, column: 9)
!1778 = !{!"883"}
!1779 = !{!"884"}
!1780 = !DILocalVariable(name: "current", scope: !1777, file: !1, line: 398, type: !19)
!1781 = !DILocation(line: 0, scope: !1777)
!1782 = !{!"885"}
!1783 = !DILocation(line: 399, column: 39, scope: !1777)
!1784 = !{!"886"}
!1785 = !DILocation(line: 399, column: 34, scope: !1777)
!1786 = !{!"887"}
!1787 = !{!"888"}
!1788 = !DILocalVariable(name: "next", scope: !1777, file: !1, line: 399, type: !19)
!1789 = !{!"889"}
!1790 = !DILocation(line: 400, column: 49, scope: !1777)
!1791 = !{!"890"}
!1792 = !DILocation(line: 400, column: 58, scope: !1777)
!1793 = !{!"891"}
!1794 = !DILocation(line: 400, column: 22, scope: !1777)
!1795 = !{!"892"}
!1796 = !{!"893"}
!1797 = !DILocation(line: 400, column: 13, scope: !1777)
!1798 = !{!"894"}
!1799 = !DILocation(line: 400, column: 20, scope: !1777)
!1800 = !{!"895"}
!1801 = !DILocation(line: 401, column: 9, scope: !1777)
!1802 = !{!"896"}
!1803 = !DILocation(line: 396, column: 37, scope: !1770)
!1804 = !{!"897"}
!1805 = !{!"898"}
!1806 = !DILocation(line: 396, column: 9, scope: !1770)
!1807 = distinct !{!1807, !1774, !1808, !97}
!1808 = !DILocation(line: 401, column: 9, scope: !1764)
!1809 = !{!"899"}
!1810 = !DILocation(line: 402, column: 60, scope: !1754)
!1811 = !{!"900"}
!1812 = !DILocation(line: 402, column: 51, scope: !1754)
!1813 = !{!"901"}
!1814 = !{!"902"}
!1815 = !{!"903"}
!1816 = !DILocation(line: 402, column: 24, scope: !1754)
!1817 = !{!"904"}
!1818 = !{!"905"}
!1819 = !DILocation(line: 402, column: 18, scope: !1754)
!1820 = !{!"906"}
!1821 = !DILocation(line: 402, column: 9, scope: !1754)
!1822 = !{!"907"}
!1823 = !DILocation(line: 402, column: 22, scope: !1754)
!1824 = !{!"908"}
!1825 = !DILocation(line: 403, column: 5, scope: !1754)
!1826 = !{!"909"}
!1827 = !DILocation(line: 390, column: 29, scope: !1749)
!1828 = !{!"910"}
!1829 = !{!"911"}
!1830 = !DILocation(line: 390, column: 5, scope: !1749)
!1831 = distinct !{!1831, !1751, !1832, !97}
!1832 = !DILocation(line: 403, column: 5, scope: !1743)
!1833 = !{!"912"}
!1834 = !DILocation(line: 404, column: 1, scope: !1720)
!1835 = !{!"913"}
!1836 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_offset_wrapper", scope: !25, file: !25, line: 5, type: !1837, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!20, !569, !570, !21, !21, !21, !21}
!1839 = !DILocalVariable(name: "dest", arg: 1, scope: !1836, file: !25, line: 5, type: !569)
!1840 = !DILocation(line: 0, scope: !1836)
!1841 = !{!"914"}
!1842 = !DILocalVariable(name: "src", arg: 2, scope: !1836, file: !25, line: 6, type: !570)
!1843 = !{!"915"}
!1844 = !DILocalVariable(name: "offset", arg: 3, scope: !1836, file: !25, line: 7, type: !21)
!1845 = !{!"916"}
!1846 = !DILocalVariable(name: "offset_min", arg: 4, scope: !1836, file: !25, line: 8, type: !21)
!1847 = !{!"917"}
!1848 = !DILocalVariable(name: "offset_max", arg: 5, scope: !1836, file: !25, line: 9, type: !21)
!1849 = !{!"918"}
!1850 = !DILocalVariable(name: "len", arg: 6, scope: !1836, file: !25, line: 10, type: !21)
!1851 = !{!"919"}
!1852 = !DILocation(line: 12, column: 12, scope: !1836)
!1853 = !{!"920"}
!1854 = !DILocation(line: 12, column: 2, scope: !1836)
!1855 = !{!"921"}
!1856 = !DILocation(line: 13, column: 13, scope: !1836)
!1857 = !{!"922"}
!1858 = !DILocation(line: 13, column: 3, scope: !1836)
!1859 = !{!"923"}
!1860 = !DILocation(line: 14, column: 13, scope: !1836)
!1861 = !{!"924"}
!1862 = !DILocation(line: 14, column: 3, scope: !1836)
!1863 = !{!"925"}
!1864 = !DILocation(line: 15, column: 13, scope: !1836)
!1865 = !{!"926"}
!1866 = !DILocation(line: 15, column: 3, scope: !1836)
!1867 = !{!"927"}
!1868 = !DILocation(line: 16, column: 13, scope: !1836)
!1869 = !{!"928"}
!1870 = !DILocation(line: 16, column: 3, scope: !1836)
!1871 = !{!"929"}
!1872 = !DILocation(line: 19, column: 2, scope: !1836)
!1873 = !{!"930"}
!1874 = !DILocation(line: 21, column: 1, scope: !1836)
!1875 = !{!"931"}
!1876 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_offset_wrapper_t", scope: !25, file: !25, line: 31, type: !1877, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null}
!1879 = !DILocation(line: 32, column: 24, scope: !1876)
!1880 = !{!"932"}
!1881 = !DILocalVariable(name: "dest", scope: !1876, file: !25, line: 32, type: !569)
!1882 = !DILocation(line: 0, scope: !1876)
!1883 = !{!"933"}
!1884 = !DILocation(line: 33, column: 59, scope: !1876)
!1885 = !{!"934"}
!1886 = !DILocalVariable(name: "src", scope: !1876, file: !25, line: 33, type: !570)
!1887 = !{!"935"}
!1888 = !DILocation(line: 34, column: 48, scope: !1876)
!1889 = !{!"936"}
!1890 = !DILocalVariable(name: "offset", scope: !1876, file: !25, line: 34, type: !21)
!1891 = !{!"937"}
!1892 = !DILocation(line: 35, column: 52, scope: !1876)
!1893 = !{!"938"}
!1894 = !DILocalVariable(name: "offset_min", scope: !1876, file: !25, line: 35, type: !21)
!1895 = !{!"939"}
!1896 = !DILocation(line: 36, column: 52, scope: !1876)
!1897 = !{!"940"}
!1898 = !DILocalVariable(name: "offset_max", scope: !1876, file: !25, line: 36, type: !21)
!1899 = !{!"941"}
!1900 = !DILocation(line: 37, column: 45, scope: !1876)
!1901 = !{!"942"}
!1902 = !DILocalVariable(name: "len", scope: !1876, file: !25, line: 37, type: !21)
!1903 = !{!"943"}
!1904 = !DILocation(line: 39, column: 2, scope: !1876)
!1905 = !{!"944"}
!1906 = !DILocation(line: 40, column: 1, scope: !1876)
!1907 = !{!"945"}
