; ModuleID = 'mbedtls_ct_uint_mask-k.ll'
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
  %8 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !65, !psr.id !67, !PointTainted !68
  %9 = load volatile i8, i8* %8, align 1, !dbg !65, !psr.id !69, !ValueTainted !70
  call void @llvm.dbg.value(metadata i8 %9, metadata !71, metadata !DIExpression()), !dbg !72, !psr.id !73
  %10 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !74, !psr.id !75, !PointTainted !68
  %11 = load volatile i8, i8* %10, align 1, !dbg !74, !psr.id !76, !ValueTainted !70
  call void @llvm.dbg.value(metadata i8 %11, metadata !77, metadata !DIExpression()), !dbg !72, !psr.id !78
  %12 = zext i8 %9 to i32, !dbg !79, !psr.id !80, !ValueTainted !70
  %13 = zext i8 %11 to i32, !dbg !81, !psr.id !82, !ValueTainted !70
  %14 = xor i32 %12, %13, !dbg !83, !psr.id !84, !ValueTainted !70
  %15 = load volatile i8, i8* %4, align 1, !dbg !85, !psr.id !86, !ValueTainted !70
  %16 = zext i8 %15 to i32, !dbg !85, !psr.id !87, !ValueTainted !70
  %17 = or i32 %16, %14, !dbg !85, !psr.id !88, !ValueTainted !70
  %18 = trunc i32 %17 to i8, !dbg !85, !psr.id !89, !ValueTainted !70
  store volatile i8 %18, i8* %4, align 1, !dbg !85, !psr.id !90
  br label %19, !dbg !91, !psr.id !92

19:                                               ; preds = %7
  %20 = add i64 %.0, 1, !dbg !93, !psr.id !94
  call void @llvm.dbg.value(metadata i64 %20, metadata !52, metadata !DIExpression()), !dbg !38, !psr.id !95
  br label %5, !dbg !96, !llvm.loop !97, !psr.id !100

21:                                               ; preds = %5
  %22 = load volatile i8, i8* %4, align 1, !dbg !101, !psr.id !102, !ValueTainted !70
  %23 = zext i8 %22 to i32, !dbg !103, !psr.id !104, !ValueTainted !70
  ret i32 %23, !dbg !105, !psr.id !106
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_uint_mask(i32 %0) #0 !dbg !107 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !110, metadata !DIExpression()), !dbg !111, !psr.id !112
  %2 = sub i32 0, %0, !dbg !113, !psr.id !114
  %3 = or i32 %0, %2, !dbg !115, !psr.id !116
  %4 = lshr i32 %3, 31, !dbg !117, !psr.id !118
  %5 = sub i32 0, %4, !dbg !119, !psr.id !120
  ret i32 %5, !dbg !121, !psr.id !122
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_size_mask(i64 %0) #0 !dbg !123 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !126, metadata !DIExpression()), !dbg !127, !psr.id !128
  %2 = sub i64 0, %0, !dbg !129, !psr.id !130
  %3 = or i64 %0, %2, !dbg !131, !psr.id !132
  %4 = lshr i64 %3, 63, !dbg !133, !psr.id !134
  %5 = sub i64 0, %4, !dbg !135, !psr.id !136
  ret i64 %5, !dbg !137, !psr.id !138
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_mpi_uint_mask(i64 %0) #0 !dbg !139 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !148, metadata !DIExpression()), !dbg !149, !psr.id !150
  %2 = sub i64 0, %0, !dbg !151, !psr.id !152
  %3 = or i64 %0, %2, !dbg !153, !psr.id !154
  %4 = lshr i64 %3, 63, !dbg !155, !psr.id !156
  %5 = sub i64 0, %4, !dbg !157, !psr.id !158
  ret i64 %5, !dbg !159, !psr.id !160
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_size_mask_ge(i64 %0, i64 %1) #0 !dbg !161 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !164, metadata !DIExpression()), !dbg !165, !psr.id !166
  call void @llvm.dbg.value(metadata i64 %1, metadata !167, metadata !DIExpression()), !dbg !165, !psr.id !168
  %3 = call i64 @mbedtls_ct_size_mask_lt(i64 %0, i64 %1), !dbg !169, !psr.id !170
  %4 = xor i64 %3, -1, !dbg !171, !psr.id !172
  ret i64 %4, !dbg !173, !psr.id !174
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @mbedtls_ct_size_mask_lt(i64 %0, i64 %1) #0 !dbg !175 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !176, metadata !DIExpression()), !dbg !177, !psr.id !178
  call void @llvm.dbg.value(metadata i64 %1, metadata !179, metadata !DIExpression()), !dbg !177, !psr.id !180
  %3 = sub i64 %0, %1, !dbg !181, !psr.id !182
  call void @llvm.dbg.value(metadata i64 %3, metadata !183, metadata !DIExpression()), !dbg !177, !psr.id !185
  %4 = lshr i64 %3, 63, !dbg !186, !psr.id !187
  call void @llvm.dbg.value(metadata i64 %4, metadata !188, metadata !DIExpression()), !dbg !177, !psr.id !189
  %5 = call i64 @mbedtls_ct_size_mask(i64 %4), !dbg !190, !psr.id !191
  call void @llvm.dbg.value(metadata i64 %5, metadata !192, metadata !DIExpression()), !dbg !177, !psr.id !193
  ret i64 %5, !dbg !194, !psr.id !195
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_size_bool_eq(i64 %0, i64 %1) #0 !dbg !196 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !199, metadata !DIExpression()), !dbg !200, !psr.id !201
  call void @llvm.dbg.value(metadata i64 %1, metadata !202, metadata !DIExpression()), !dbg !200, !psr.id !203
  %3 = xor i64 %0, %1, !dbg !204, !psr.id !205
  call void @llvm.dbg.value(metadata i64 %3, metadata !206, metadata !DIExpression()), !dbg !200, !psr.id !207
  %4 = sub i64 0, %3, !dbg !208, !psr.id !209
  %5 = or i64 %3, %4, !dbg !210, !psr.id !211
  call void @llvm.dbg.value(metadata i64 %5, metadata !212, metadata !DIExpression()), !dbg !200, !psr.id !213
  %6 = lshr i64 %5, 63, !dbg !214, !psr.id !215
  %7 = trunc i64 %6 to i32, !dbg !216, !psr.id !217
  call void @llvm.dbg.value(metadata i32 %7, metadata !218, metadata !DIExpression()), !dbg !200, !psr.id !220
  %8 = xor i32 1, %7, !dbg !221, !psr.id !222
  ret i32 %8, !dbg !223, !psr.id !224
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_mpi_uint_lt(i64 %0, i64 %1) #0 !dbg !225 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !229, metadata !DIExpression()), !dbg !230, !psr.id !231
  call void @llvm.dbg.value(metadata i64 %1, metadata !232, metadata !DIExpression()), !dbg !230, !psr.id !233
  %3 = xor i64 %0, %1, !dbg !234, !psr.id !235
  call void @llvm.dbg.value(metadata i64 %3, metadata !236, metadata !DIExpression()), !dbg !230, !psr.id !237
  %4 = sub i64 %0, %1, !dbg !238, !psr.id !239
  %5 = xor i64 %3, -1, !dbg !240, !psr.id !241
  %6 = and i64 %4, %5, !dbg !242, !psr.id !243
  call void @llvm.dbg.value(metadata i64 %6, metadata !244, metadata !DIExpression()), !dbg !230, !psr.id !245
  %7 = and i64 %1, %3, !dbg !246, !psr.id !247
  %8 = or i64 %6, %7, !dbg !248, !psr.id !249
  call void @llvm.dbg.value(metadata i64 %8, metadata !244, metadata !DIExpression()), !dbg !230, !psr.id !250
  %9 = lshr i64 %8, 63, !dbg !251, !psr.id !252
  call void @llvm.dbg.value(metadata i64 %9, metadata !244, metadata !DIExpression()), !dbg !230, !psr.id !253
  %10 = trunc i64 %9 to i32, !dbg !254, !psr.id !255
  ret i32 %10, !dbg !256, !psr.id !257
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_uint_if(i32 %0, i32 %1, i32 %2) #0 !dbg !258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !261, metadata !DIExpression()), !dbg !262, !psr.id !263
  call void @llvm.dbg.value(metadata i32 %1, metadata !264, metadata !DIExpression()), !dbg !262, !psr.id !265
  call void @llvm.dbg.value(metadata i32 %2, metadata !266, metadata !DIExpression()), !dbg !262, !psr.id !267
  %4 = call i32 @mbedtls_ct_uint_mask(i32 %0), !dbg !268, !psr.id !269
  call void @llvm.dbg.value(metadata i32 %4, metadata !270, metadata !DIExpression()), !dbg !262, !psr.id !271
  %5 = and i32 %4, %1, !dbg !272, !psr.id !273
  %6 = xor i32 %4, -1, !dbg !274, !psr.id !275
  %7 = and i32 %6, %2, !dbg !276, !psr.id !277
  %8 = or i32 %5, %7, !dbg !278, !psr.id !279
  ret i32 %8, !dbg !280, !psr.id !281
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_mpi_uint_cond_assign(i64 %0, i64* %1, i64* %2, i8 zeroext %3) #0 !dbg !282 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !287, metadata !DIExpression()), !dbg !288, !psr.id !289
  call void @llvm.dbg.value(metadata i64* %1, metadata !290, metadata !DIExpression()), !dbg !288, !psr.id !291
  call void @llvm.dbg.value(metadata i64* %2, metadata !292, metadata !DIExpression()), !dbg !288, !psr.id !293
  call void @llvm.dbg.value(metadata i8 %3, metadata !294, metadata !DIExpression()), !dbg !288, !psr.id !295
  %5 = zext i8 %3 to i32, !dbg !296, !psr.id !297
  %6 = sub nsw i32 0, %5, !dbg !298, !psr.id !299
  %7 = sext i32 %6 to i64, !dbg !298, !psr.id !300
  call void @llvm.dbg.value(metadata i64 %7, metadata !301, metadata !DIExpression()), !dbg !288, !psr.id !302
  call void @llvm.dbg.value(metadata i64 0, metadata !303, metadata !DIExpression()), !dbg !288, !psr.id !304
  br label %8, !dbg !305, !psr.id !307

8:                                                ; preds = %20, %4
  %.0 = phi i64 [ 0, %4 ], [ %21, %20 ], !dbg !308, !psr.id !309
  call void @llvm.dbg.value(metadata i64 %.0, metadata !303, metadata !DIExpression()), !dbg !288, !psr.id !310
  %9 = icmp ult i64 %.0, %0, !dbg !311, !psr.id !313
  br i1 %9, label %10, label %22, !dbg !314, !psr.id !315

10:                                               ; preds = %8
  %11 = getelementptr inbounds i64, i64* %2, i64 %.0, !dbg !316, !psr.id !317
  %12 = load i64, i64* %11, align 8, !dbg !316, !psr.id !318
  %13 = and i64 %12, %7, !dbg !319, !psr.id !320
  %14 = getelementptr inbounds i64, i64* %1, i64 %.0, !dbg !321, !psr.id !322
  %15 = load i64, i64* %14, align 8, !dbg !321, !psr.id !323
  %16 = xor i64 %7, -1, !dbg !324, !psr.id !325
  %17 = and i64 %15, %16, !dbg !326, !psr.id !327
  %18 = or i64 %13, %17, !dbg !328, !psr.id !329
  %19 = getelementptr inbounds i64, i64* %1, i64 %.0, !dbg !330, !psr.id !331
  store i64 %18, i64* %19, align 8, !dbg !332, !psr.id !333
  br label %20, !dbg !330, !psr.id !334

20:                                               ; preds = %10
  %21 = add i64 %.0, 1, !dbg !335, !psr.id !336
  call void @llvm.dbg.value(metadata i64 %21, metadata !303, metadata !DIExpression()), !dbg !288, !psr.id !337
  br label %8, !dbg !338, !llvm.loop !339, !psr.id !341

22:                                               ; preds = %8
  ret void, !dbg !342, !psr.id !343
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @mbedtls_ct_base64_enc_char(i8 zeroext %0) #0 !dbg !344 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !347, metadata !DIExpression()), !dbg !348, !psr.id !349
  call void @llvm.dbg.value(metadata i8 0, metadata !350, metadata !DIExpression()), !dbg !348, !psr.id !351
  %2 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 0, i8 zeroext 25, i8 zeroext %0), !dbg !352, !psr.id !353
  %3 = zext i8 %2 to i32, !dbg !352, !psr.id !354
  %4 = zext i8 %0 to i32, !dbg !355, !psr.id !356
  %5 = add nsw i32 65, %4, !dbg !357, !psr.id !358
  %6 = and i32 %3, %5, !dbg !359, !psr.id !360
  %7 = zext i8 0 to i32, !dbg !361, !psr.id !362
  %8 = or i32 %7, %6, !dbg !361, !psr.id !363
  %9 = trunc i32 %8 to i8, !dbg !361, !psr.id !364
  call void @llvm.dbg.value(metadata i8 %9, metadata !350, metadata !DIExpression()), !dbg !348, !psr.id !365
  %10 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 26, i8 zeroext 51, i8 zeroext %0), !dbg !366, !psr.id !367
  %11 = zext i8 %10 to i32, !dbg !366, !psr.id !368
  %12 = zext i8 %0 to i32, !dbg !369, !psr.id !370
  %13 = add nsw i32 97, %12, !dbg !371, !psr.id !372
  %14 = sub nsw i32 %13, 26, !dbg !373, !psr.id !374
  %15 = and i32 %11, %14, !dbg !375, !psr.id !376
  %16 = zext i8 %9 to i32, !dbg !377, !psr.id !378
  %17 = or i32 %16, %15, !dbg !377, !psr.id !379
  %18 = trunc i32 %17 to i8, !dbg !377, !psr.id !380
  call void @llvm.dbg.value(metadata i8 %18, metadata !350, metadata !DIExpression()), !dbg !348, !psr.id !381
  %19 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 52, i8 zeroext 61, i8 zeroext %0), !dbg !382, !psr.id !383
  %20 = zext i8 %19 to i32, !dbg !382, !psr.id !384
  %21 = zext i8 %0 to i32, !dbg !385, !psr.id !386
  %22 = add nsw i32 48, %21, !dbg !387, !psr.id !388
  %23 = sub nsw i32 %22, 52, !dbg !389, !psr.id !390
  %24 = and i32 %20, %23, !dbg !391, !psr.id !392
  %25 = zext i8 %18 to i32, !dbg !393, !psr.id !394
  %26 = or i32 %25, %24, !dbg !393, !psr.id !395
  %27 = trunc i32 %26 to i8, !dbg !393, !psr.id !396
  call void @llvm.dbg.value(metadata i8 %27, metadata !350, metadata !DIExpression()), !dbg !348, !psr.id !397
  %28 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 62, i8 zeroext 62, i8 zeroext %0), !dbg !398, !psr.id !399
  %29 = zext i8 %28 to i32, !dbg !398, !psr.id !400
  %30 = and i32 %29, 43, !dbg !401, !psr.id !402
  %31 = zext i8 %27 to i32, !dbg !403, !psr.id !404
  %32 = or i32 %31, %30, !dbg !403, !psr.id !405
  %33 = trunc i32 %32 to i8, !dbg !403, !psr.id !406
  call void @llvm.dbg.value(metadata i8 %33, metadata !350, metadata !DIExpression()), !dbg !348, !psr.id !407
  %34 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 63, i8 zeroext 63, i8 zeroext %0), !dbg !408, !psr.id !409
  %35 = zext i8 %34 to i32, !dbg !408, !psr.id !410
  %36 = and i32 %35, 47, !dbg !411, !psr.id !412
  %37 = zext i8 %33 to i32, !dbg !413, !psr.id !414
  %38 = or i32 %37, %36, !dbg !413, !psr.id !415
  %39 = trunc i32 %38 to i8, !dbg !413, !psr.id !416
  call void @llvm.dbg.value(metadata i8 %39, metadata !350, metadata !DIExpression()), !dbg !348, !psr.id !417
  ret i8 %39, !dbg !418, !psr.id !419
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2) #0 !dbg !420 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !423, metadata !DIExpression()), !dbg !424, !psr.id !425
  call void @llvm.dbg.value(metadata i8 %1, metadata !426, metadata !DIExpression()), !dbg !424, !psr.id !427
  call void @llvm.dbg.value(metadata i8 %2, metadata !428, metadata !DIExpression()), !dbg !424, !psr.id !429
  %4 = zext i8 %2 to i32, !dbg !430, !psr.id !431
  %5 = zext i8 %0 to i32, !dbg !432, !psr.id !433
  %6 = sub i32 %4, %5, !dbg !434, !psr.id !435
  %7 = lshr i32 %6, 8, !dbg !436, !psr.id !437
  call void @llvm.dbg.value(metadata i32 %7, metadata !438, metadata !DIExpression()), !dbg !424, !psr.id !439
  %8 = zext i8 %1 to i32, !dbg !440, !psr.id !441
  %9 = zext i8 %2 to i32, !dbg !442, !psr.id !443
  %10 = sub i32 %8, %9, !dbg !444, !psr.id !445
  %11 = lshr i32 %10, 8, !dbg !446, !psr.id !447
  call void @llvm.dbg.value(metadata i32 %11, metadata !448, metadata !DIExpression()), !dbg !424, !psr.id !449
  %12 = or i32 %7, %11, !dbg !450, !psr.id !451
  %13 = xor i32 %12, -1, !dbg !452, !psr.id !453
  %14 = and i32 %13, 255, !dbg !454, !psr.id !455
  %15 = trunc i32 %14 to i8, !dbg !456, !psr.id !457
  ret i8 %15, !dbg !458, !psr.id !459
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @mbedtls_ct_base64_dec_value(i8 zeroext %0) #0 !dbg !460 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !464, metadata !DIExpression()), !dbg !465, !psr.id !466
  call void @llvm.dbg.value(metadata i8 0, metadata !467, metadata !DIExpression()), !dbg !465, !psr.id !468
  %2 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 65, i8 zeroext 90, i8 zeroext %0), !dbg !469, !psr.id !470
  %3 = zext i8 %2 to i32, !dbg !469, !psr.id !471
  %4 = zext i8 %0 to i32, !dbg !472, !psr.id !473
  %5 = sub nsw i32 %4, 65, !dbg !474, !psr.id !475
  %6 = add nsw i32 %5, 0, !dbg !476, !psr.id !477
  %7 = add nsw i32 %6, 1, !dbg !478, !psr.id !479
  %8 = and i32 %3, %7, !dbg !480, !psr.id !481
  %9 = zext i8 0 to i32, !dbg !482, !psr.id !483
  %10 = or i32 %9, %8, !dbg !482, !psr.id !484
  %11 = trunc i32 %10 to i8, !dbg !482, !psr.id !485
  call void @llvm.dbg.value(metadata i8 %11, metadata !467, metadata !DIExpression()), !dbg !465, !psr.id !486
  %12 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 97, i8 zeroext 122, i8 zeroext %0), !dbg !487, !psr.id !488
  %13 = zext i8 %12 to i32, !dbg !487, !psr.id !489
  %14 = zext i8 %0 to i32, !dbg !490, !psr.id !491
  %15 = sub nsw i32 %14, 97, !dbg !492, !psr.id !493
  %16 = add nsw i32 %15, 26, !dbg !494, !psr.id !495
  %17 = add nsw i32 %16, 1, !dbg !496, !psr.id !497
  %18 = and i32 %13, %17, !dbg !498, !psr.id !499
  %19 = zext i8 %11 to i32, !dbg !500, !psr.id !501
  %20 = or i32 %19, %18, !dbg !500, !psr.id !502
  %21 = trunc i32 %20 to i8, !dbg !500, !psr.id !503
  call void @llvm.dbg.value(metadata i8 %21, metadata !467, metadata !DIExpression()), !dbg !465, !psr.id !504
  %22 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 48, i8 zeroext 57, i8 zeroext %0), !dbg !505, !psr.id !506
  %23 = zext i8 %22 to i32, !dbg !505, !psr.id !507
  %24 = zext i8 %0 to i32, !dbg !508, !psr.id !509
  %25 = sub nsw i32 %24, 48, !dbg !510, !psr.id !511
  %26 = add nsw i32 %25, 52, !dbg !512, !psr.id !513
  %27 = add nsw i32 %26, 1, !dbg !514, !psr.id !515
  %28 = and i32 %23, %27, !dbg !516, !psr.id !517
  %29 = zext i8 %21 to i32, !dbg !518, !psr.id !519
  %30 = or i32 %29, %28, !dbg !518, !psr.id !520
  %31 = trunc i32 %30 to i8, !dbg !518, !psr.id !521
  call void @llvm.dbg.value(metadata i8 %31, metadata !467, metadata !DIExpression()), !dbg !465, !psr.id !522
  %32 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 43, i8 zeroext 43, i8 zeroext %0), !dbg !523, !psr.id !524
  %33 = zext i8 %32 to i32, !dbg !523, !psr.id !525
  %34 = zext i8 %0 to i32, !dbg !526, !psr.id !527
  %35 = sub nsw i32 %34, 43, !dbg !528, !psr.id !529
  %36 = add nsw i32 %35, 62, !dbg !530, !psr.id !531
  %37 = add nsw i32 %36, 1, !dbg !532, !psr.id !533
  %38 = and i32 %33, %37, !dbg !534, !psr.id !535
  %39 = zext i8 %31 to i32, !dbg !536, !psr.id !537
  %40 = or i32 %39, %38, !dbg !536, !psr.id !538
  %41 = trunc i32 %40 to i8, !dbg !536, !psr.id !539
  call void @llvm.dbg.value(metadata i8 %41, metadata !467, metadata !DIExpression()), !dbg !465, !psr.id !540
  %42 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 47, i8 zeroext 47, i8 zeroext %0), !dbg !541, !psr.id !542
  %43 = zext i8 %42 to i32, !dbg !541, !psr.id !543
  %44 = zext i8 %0 to i32, !dbg !544, !psr.id !545
  %45 = sub nsw i32 %44, 47, !dbg !546, !psr.id !547
  %46 = add nsw i32 %45, 63, !dbg !548, !psr.id !549
  %47 = add nsw i32 %46, 1, !dbg !550, !psr.id !551
  %48 = and i32 %43, %47, !dbg !552, !psr.id !553
  %49 = zext i8 %41 to i32, !dbg !554, !psr.id !555
  %50 = or i32 %49, %48, !dbg !554, !psr.id !556
  %51 = trunc i32 %50 to i8, !dbg !554, !psr.id !557
  call void @llvm.dbg.value(metadata i8 %51, metadata !467, metadata !DIExpression()), !dbg !465, !psr.id !558
  %52 = zext i8 %51 to i32, !dbg !559, !psr.id !560
  %53 = sub nsw i32 %52, 1, !dbg !561, !psr.id !562
  %54 = trunc i32 %53 to i8, !dbg !563, !psr.id !564
  ret i8 %54, !dbg !565, !psr.id !566
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_memcpy_if_eq(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 !dbg !567 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !573, metadata !DIExpression()), !dbg !574, !psr.id !575
  call void @llvm.dbg.value(metadata i8* %1, metadata !576, metadata !DIExpression()), !dbg !574, !psr.id !577
  call void @llvm.dbg.value(metadata i64 %2, metadata !578, metadata !DIExpression()), !dbg !574, !psr.id !579
  call void @llvm.dbg.value(metadata i64 %3, metadata !580, metadata !DIExpression()), !dbg !574, !psr.id !581
  call void @llvm.dbg.value(metadata i64 %4, metadata !582, metadata !DIExpression()), !dbg !574, !psr.id !583
  %6 = call i32 @mbedtls_ct_size_bool_eq(i64 %3, i64 %4), !dbg !584, !psr.id !585
  %7 = zext i32 %6 to i64, !dbg !584, !psr.id !586
  call void @llvm.dbg.value(metadata i64 %7, metadata !587, metadata !DIExpression()), !dbg !574, !psr.id !588
  %8 = call i64 @mbedtls_ct_size_mask(i64 %7), !dbg !589, !psr.id !590
  %9 = trunc i64 %8 to i8, !dbg !591, !psr.id !592
  call void @llvm.dbg.value(metadata i8 %9, metadata !593, metadata !DIExpression()), !dbg !574, !psr.id !594
  call void @llvm.dbg.value(metadata i64 0, metadata !595, metadata !DIExpression()), !dbg !597, !psr.id !598
  br label %10, !dbg !599, !psr.id !600

10:                                               ; preds = %27, %5
  %.0 = phi i64 [ 0, %5 ], [ %28, %27 ], !dbg !597, !psr.id !601
  call void @llvm.dbg.value(metadata i64 %.0, metadata !595, metadata !DIExpression()), !dbg !597, !psr.id !602
  %11 = icmp ult i64 %.0, %2, !dbg !603, !psr.id !605
  br i1 %11, label %12, label %29, !dbg !606, !psr.id !607

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !608, !psr.id !609
  %14 = load i8, i8* %13, align 1, !dbg !608, !psr.id !610
  %15 = zext i8 %14 to i32, !dbg !608, !psr.id !611
  %16 = zext i8 %9 to i32, !dbg !612, !psr.id !613
  %17 = and i32 %15, %16, !dbg !614, !psr.id !615
  %18 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !616, !psr.id !617
  %19 = load i8, i8* %18, align 1, !dbg !616, !psr.id !618
  %20 = zext i8 %19 to i32, !dbg !616, !psr.id !619
  %21 = zext i8 %9 to i32, !dbg !620, !psr.id !621
  %22 = xor i32 %21, -1, !dbg !622, !psr.id !623
  %23 = and i32 %20, %22, !dbg !624, !psr.id !625
  %24 = or i32 %17, %23, !dbg !626, !psr.id !627
  %25 = trunc i32 %24 to i8, !dbg !628, !psr.id !629
  %26 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !630, !psr.id !631
  store i8 %25, i8* %26, align 1, !dbg !632, !psr.id !633
  br label %27, !dbg !630, !psr.id !634

27:                                               ; preds = %12
  %28 = add i64 %.0, 1, !dbg !635, !psr.id !636
  call void @llvm.dbg.value(metadata i64 %28, metadata !595, metadata !DIExpression()), !dbg !597, !psr.id !637
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
  %10 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !673, !psr.id !675
  call void @mbedtls_ct_memcpy_if_eq(i8* %0, i8* %10, i64 %5, i64 %.0, i64 %2), !dbg !676, !psr.id !677
  br label %11, !dbg !678, !psr.id !679

11:                                               ; preds = %9
  %12 = add i64 %.0, 1, !dbg !680, !psr.id !681
  call void @llvm.dbg.value(metadata i64 %12, metadata !660, metadata !DIExpression()), !dbg !648, !psr.id !682
  br label %7, !dbg !683, !llvm.loop !684, !psr.id !686

13:                                               ; preds = %7
  ret void, !dbg !687, !psr.id !688
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_hmac(%struct.mbedtls_md_context_t* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, i64 %6, i8* %7) #0 !dbg !689 {
  %9 = alloca [64 x i8], align 16, !psr.id !704
  %10 = alloca %struct.mbedtls_md_context_t, align 8, !psr.id !705
  call void @llvm.dbg.value(metadata %struct.mbedtls_md_context_t* %0, metadata !706, metadata !DIExpression()), !dbg !707, !psr.id !708
  call void @llvm.dbg.value(metadata i8* %1, metadata !709, metadata !DIExpression()), !dbg !707, !psr.id !710
  call void @llvm.dbg.value(metadata i64 %2, metadata !711, metadata !DIExpression()), !dbg !707, !psr.id !712
  call void @llvm.dbg.value(metadata i8* %3, metadata !713, metadata !DIExpression()), !dbg !707, !psr.id !714
  call void @llvm.dbg.value(metadata i64 %4, metadata !715, metadata !DIExpression()), !dbg !707, !psr.id !716
  call void @llvm.dbg.value(metadata i64 %5, metadata !717, metadata !DIExpression()), !dbg !707, !psr.id !718
  call void @llvm.dbg.value(metadata i64 %6, metadata !719, metadata !DIExpression()), !dbg !707, !psr.id !720
  call void @llvm.dbg.value(metadata i8* %7, metadata !721, metadata !DIExpression()), !dbg !707, !psr.id !722
  %11 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !723, !psr.id !724
  %12 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %11, align 8, !dbg !723, !psr.id !725
  %13 = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* %12), !dbg !726, !psr.id !727
  call void @llvm.dbg.value(metadata i32 %13, metadata !728, metadata !DIExpression()), !dbg !707, !psr.id !731
  %14 = icmp eq i32 %13, 5, !dbg !732, !psr.id !733
  %15 = zext i1 %14 to i64, !dbg !734, !psr.id !735
  %16 = select i1 %14, i32 128, i32 64, !dbg !734, !psr.id !736
  %17 = sext i32 %16 to i64, !dbg !734, !psr.id !737
  call void @llvm.dbg.value(metadata i64 %17, metadata !738, metadata !DIExpression()), !dbg !707, !psr.id !739
  %18 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 2, !dbg !740, !psr.id !741
  %19 = load i8*, i8** %18, align 8, !dbg !740, !psr.id !742
  call void @llvm.dbg.value(metadata i8* %19, metadata !743, metadata !DIExpression()), !dbg !707, !psr.id !745
  %20 = getelementptr inbounds i8, i8* %19, i64 %17, !dbg !746, !psr.id !747
  call void @llvm.dbg.value(metadata i8* %20, metadata !748, metadata !DIExpression()), !dbg !707, !psr.id !749
  %21 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !750, !psr.id !751
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %21, align 8, !dbg !750, !psr.id !752
  %23 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* %22), !dbg !753, !psr.id !754
  %24 = zext i8 %23 to i64, !dbg !753, !psr.id !755
  call void @llvm.dbg.value(metadata i64 %24, metadata !756, metadata !DIExpression()), !dbg !707, !psr.id !757
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !758, metadata !DIExpression()), !dbg !762, !psr.id !763
  call void @llvm.dbg.declare(metadata %struct.mbedtls_md_context_t* %10, metadata !764, metadata !DIExpression()), !dbg !765, !psr.id !766
  call void @llvm.dbg.value(metadata i32 -110, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !768
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* %10), !dbg !769, !psr.id !770
  br label %25, !dbg !771, !psr.id !772

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !773, !psr.id !775
  %27 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %26, align 8, !dbg !773, !psr.id !776
  %28 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* %10, %struct.mbedtls_md_info_t* %27, i32 0), !dbg !773, !psr.id !777
  call void @llvm.dbg.value(metadata i32 %28, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !778
  %29 = icmp ne i32 %28, 0, !dbg !779, !psr.id !781
  br i1 %29, label %30, label %31, !dbg !773, !psr.id !782

30:                                               ; preds = %25
  br label %112, !dbg !779, !psr.id !783

31:                                               ; preds = %25
  br label %32, !dbg !773, !psr.id !784

32:                                               ; preds = %31
  br label %33, !dbg !785, !psr.id !786

33:                                               ; preds = %32
  %34 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %1, i64 %2), !dbg !787, !psr.id !789
  call void @llvm.dbg.value(metadata i32 %34, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !790
  %35 = icmp ne i32 %34, 0, !dbg !791, !psr.id !793
  br i1 %35, label %36, label %37, !dbg !787, !psr.id !794

36:                                               ; preds = %33
  br label %112, !dbg !791, !psr.id !795

37:                                               ; preds = %33
  br label %38, !dbg !787, !psr.id !796

38:                                               ; preds = %37
  br label %39, !dbg !797, !psr.id !798

39:                                               ; preds = %38
  %40 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %3, i64 %5), !dbg !799, !psr.id !801
  call void @llvm.dbg.value(metadata i32 %40, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !802
  %41 = icmp ne i32 %40, 0, !dbg !803, !psr.id !805
  br i1 %41, label %42, label %43, !dbg !799, !psr.id !806

42:                                               ; preds = %39
  br label %112, !dbg !803, !psr.id !807

43:                                               ; preds = %39
  br label %44, !dbg !799, !psr.id !808

44:                                               ; preds = %43
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 33, i64 %24, i1 false), !dbg !809, !psr.id !810
  call void @llvm.dbg.value(metadata i64 %5, metadata !811, metadata !DIExpression()), !dbg !707, !psr.id !812
  br label %45, !dbg !813, !psr.id !815

45:                                               ; preds = %72, %44
  %.01 = phi i64 [ %5, %44 ], [ %73, %72 ], !dbg !816, !psr.id !817
  call void @llvm.dbg.value(metadata i64 %.01, metadata !811, metadata !DIExpression()), !dbg !707, !psr.id !818
  %46 = icmp ule i64 %.01, %6, !dbg !819, !psr.id !821
  br i1 %46, label %47, label %74, !dbg !822, !psr.id !823

47:                                               ; preds = %45
  br label %48, !dbg !824, !psr.id !826

48:                                               ; preds = %47
  %49 = call i32 @mbedtls_md_clone(%struct.mbedtls_md_context_t* %10, %struct.mbedtls_md_context_t* %0), !dbg !827, !psr.id !829
  call void @llvm.dbg.value(metadata i32 %49, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !830
  %50 = icmp ne i32 %49, 0, !dbg !831, !psr.id !833
  br i1 %50, label %51, label %52, !dbg !827, !psr.id !834

51:                                               ; preds = %48
  br label %112, !dbg !831, !psr.id !835

52:                                               ; preds = %48
  br label %53, !dbg !827, !psr.id !836

53:                                               ; preds = %52
  br label %54, !dbg !837, !psr.id !838

54:                                               ; preds = %53
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !839, !psr.id !841
  %56 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %10, i8* %55), !dbg !839, !psr.id !842
  call void @llvm.dbg.value(metadata i32 %56, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !843
  %57 = icmp ne i32 %56, 0, !dbg !844, !psr.id !846
  br i1 %57, label %58, label %59, !dbg !839, !psr.id !847

58:                                               ; preds = %54
  br label %112, !dbg !844, !psr.id !848

59:                                               ; preds = %54
  br label %60, !dbg !839, !psr.id !849

60:                                               ; preds = %59
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !850, !psr.id !851
  call void @mbedtls_ct_memcpy_if_eq(i8* %7, i8* %61, i64 %24, i64 %.01, i64 %4), !dbg !852, !psr.id !853
  %62 = icmp ult i64 %.01, %6, !dbg !854, !psr.id !856
  br i1 %62, label %63, label %71, !dbg !857, !psr.id !858

63:                                               ; preds = %60
  br label %64, !dbg !859, !psr.id !860

64:                                               ; preds = %63
  %65 = getelementptr inbounds i8, i8* %3, i64 %.01, !dbg !861, !psr.id !863
  %66 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %65, i64 1), !dbg !861, !psr.id !864
  call void @llvm.dbg.value(metadata i32 %66, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !865
  %67 = icmp ne i32 %66, 0, !dbg !866, !psr.id !868
  br i1 %67, label %68, label %69, !dbg !861, !psr.id !869

68:                                               ; preds = %64
  br label %112, !dbg !866, !psr.id !870

69:                                               ; preds = %64
  br label %70, !dbg !861, !psr.id !871

70:                                               ; preds = %69
  br label %71, !dbg !861, !psr.id !872

71:                                               ; preds = %70, %60
  br label %72, !dbg !873, !psr.id !874

72:                                               ; preds = %71
  %73 = add i64 %.01, 1, !dbg !875, !psr.id !876
  call void @llvm.dbg.value(metadata i64 %73, metadata !811, metadata !DIExpression()), !dbg !707, !psr.id !877
  br label %45, !dbg !878, !llvm.loop !879, !psr.id !881

74:                                               ; preds = %45
  br label %75, !dbg !882, !psr.id !883

75:                                               ; preds = %74
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !884, !psr.id !886
  %77 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %0, i8* %76), !dbg !884, !psr.id !887
  call void @llvm.dbg.value(metadata i32 %77, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !888
  %78 = icmp ne i32 %77, 0, !dbg !889, !psr.id !891
  br i1 %78, label %79, label %80, !dbg !884, !psr.id !892

79:                                               ; preds = %75
  br label %112, !dbg !889, !psr.id !893

80:                                               ; preds = %75
  br label %81, !dbg !884, !psr.id !894

81:                                               ; preds = %80
  br label %82, !dbg !895, !psr.id !896

82:                                               ; preds = %81
  %83 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* %0), !dbg !897, !psr.id !899
  call void @llvm.dbg.value(metadata i32 %83, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !900
  %84 = icmp ne i32 %83, 0, !dbg !901, !psr.id !903
  br i1 %84, label %85, label %86, !dbg !897, !psr.id !904

85:                                               ; preds = %82
  br label %112, !dbg !901, !psr.id !905

86:                                               ; preds = %82
  br label %87, !dbg !897, !psr.id !906

87:                                               ; preds = %86
  br label %88, !dbg !907, !psr.id !908

88:                                               ; preds = %87
  %89 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %20, i64 %17), !dbg !909, !psr.id !911
  call void @llvm.dbg.value(metadata i32 %89, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !912
  %90 = icmp ne i32 %89, 0, !dbg !913, !psr.id !915
  br i1 %90, label %91, label %92, !dbg !909, !psr.id !916

91:                                               ; preds = %88
  br label %112, !dbg !913, !psr.id !917

92:                                               ; preds = %88
  br label %93, !dbg !909, !psr.id !918

93:                                               ; preds = %92
  br label %94, !dbg !919, !psr.id !920

94:                                               ; preds = %93
  %95 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %7, i64 %24), !dbg !921, !psr.id !923
  call void @llvm.dbg.value(metadata i32 %95, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !924
  %96 = icmp ne i32 %95, 0, !dbg !925, !psr.id !927
  br i1 %96, label %97, label %98, !dbg !921, !psr.id !928

97:                                               ; preds = %94
  br label %112, !dbg !925, !psr.id !929

98:                                               ; preds = %94
  br label %99, !dbg !921, !psr.id !930

99:                                               ; preds = %98
  br label %100, !dbg !931, !psr.id !932

100:                                              ; preds = %99
  %101 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %0, i8* %7), !dbg !933, !psr.id !935
  call void @llvm.dbg.value(metadata i32 %101, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !936
  %102 = icmp ne i32 %101, 0, !dbg !937, !psr.id !939
  br i1 %102, label %103, label %104, !dbg !933, !psr.id !940

103:                                              ; preds = %100
  br label %112, !dbg !937, !psr.id !941

104:                                              ; preds = %100
  br label %105, !dbg !933, !psr.id !942

105:                                              ; preds = %104
  br label %106, !dbg !943, !psr.id !944

106:                                              ; preds = %105
  %107 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* %0), !dbg !945, !psr.id !947
  call void @llvm.dbg.value(metadata i32 %107, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !948
  %108 = icmp ne i32 %107, 0, !dbg !949, !psr.id !951
  br i1 %108, label %109, label %110, !dbg !945, !psr.id !952

109:                                              ; preds = %106
  br label %112, !dbg !949, !psr.id !953

110:                                              ; preds = %106
  br label %111, !dbg !945, !psr.id !954

111:                                              ; preds = %110
  br label %112, !dbg !945, !psr.id !955

112:                                              ; preds = %111, %109, %103, %97, %91, %85, %79, %68, %58, %51, %42, %36, %30
  %.0 = phi i32 [ %28, %30 ], [ %34, %36 ], [ %40, %42 ], [ %49, %51 ], [ %56, %58 ], [ %66, %68 ], [ %77, %79 ], [ %83, %85 ], [ %89, %91 ], [ %95, %97 ], [ %101, %103 ], [ %107, %109 ], [ %107, %111 ], !dbg !707, !psr.id !956
  call void @llvm.dbg.value(metadata i32 %.0, metadata !767, metadata !DIExpression()), !dbg !707, !psr.id !957
  call void @llvm.dbg.label(metadata !958), !dbg !959, !psr.id !960
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* %10), !dbg !961, !psr.id !962
  ret i32 %.0, !dbg !963, !psr.id !964
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
define dso_local i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i8 zeroext %2) #0 !dbg !965 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !977, metadata !DIExpression()), !dbg !978, !psr.id !979
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !980, metadata !DIExpression()), !dbg !978, !psr.id !981
  call void @llvm.dbg.value(metadata i8 %2, metadata !982, metadata !DIExpression()), !dbg !978, !psr.id !983
  call void @llvm.dbg.value(metadata i32 0, metadata !984, metadata !DIExpression()), !dbg !978, !psr.id !985
  br label %4, !dbg !986, !psr.id !987

4:                                                ; preds = %3
  br label %5, !dbg !988, !psr.id !990

5:                                                ; preds = %4
  br label %6, !dbg !991, !psr.id !992

6:                                                ; preds = %5
  br label %7, !dbg !993, !psr.id !995

7:                                                ; preds = %6
  %8 = zext i8 %2 to i64, !dbg !996, !psr.id !997
  %9 = call i64 @mbedtls_ct_mpi_uint_mask(i64 %8), !dbg !998, !psr.id !999
  call void @llvm.dbg.value(metadata i64 %9, metadata !1000, metadata !DIExpression()), !dbg !978, !psr.id !1001
  br label %10, !dbg !1002, !psr.id !1003

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1004, !psr.id !1007
  %12 = load i64, i64* %11, align 8, !dbg !1004, !psr.id !1008
  %13 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %0, i64 %12), !dbg !1004, !psr.id !1009
  call void @llvm.dbg.value(metadata i32 %13, metadata !984, metadata !DIExpression()), !dbg !978, !psr.id !1010
  %14 = icmp ne i32 %13, 0, !dbg !1004, !psr.id !1011
  br i1 %14, label %15, label %16, !dbg !1012, !psr.id !1013

15:                                               ; preds = %10
  br label %46, !dbg !1004, !psr.id !1014

16:                                               ; preds = %10
  br label %17, !dbg !1012, !psr.id !1015

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1016, !psr.id !1017
  %19 = load i32, i32* %18, align 8, !dbg !1016, !psr.id !1018
  %20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1019, !psr.id !1020
  %21 = load i32, i32* %20, align 8, !dbg !1019, !psr.id !1021
  %22 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %19, i32 %21), !dbg !1022, !psr.id !1023
  %23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1024, !psr.id !1025
  store i32 %22, i32* %23, align 8, !dbg !1026, !psr.id !1027
  %24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1028, !psr.id !1029
  %25 = load i64*, i64** %24, align 8, !dbg !1028, !psr.id !1030
  %26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1031, !psr.id !1032
  %27 = load i64*, i64** %26, align 8, !dbg !1031, !psr.id !1033
  %28 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1034, !psr.id !1035
  %29 = load i64, i64* %28, align 8, !dbg !1034, !psr.id !1036
  call void @mbedtls_mpi_core_cond_assign(i64* %25, i64* %27, i64 %29, i8 zeroext %2), !dbg !1037, !psr.id !1038
  %30 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1039, !psr.id !1041
  %31 = load i64, i64* %30, align 8, !dbg !1039, !psr.id !1042
  call void @llvm.dbg.value(metadata i64 %31, metadata !1043, metadata !DIExpression()), !dbg !1044, !psr.id !1045
  br label %32, !dbg !1046, !psr.id !1047

32:                                               ; preds = %43, %17
  %.0 = phi i64 [ %31, %17 ], [ %44, %43 ], !dbg !1044, !psr.id !1048
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1043, metadata !DIExpression()), !dbg !1044, !psr.id !1049
  %33 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1050, !psr.id !1052
  %34 = load i64, i64* %33, align 8, !dbg !1050, !psr.id !1053
  %35 = icmp ult i64 %.0, %34, !dbg !1054, !psr.id !1055
  br i1 %35, label %36, label %45, !dbg !1056, !psr.id !1057

36:                                               ; preds = %32
  %37 = xor i64 %9, -1, !dbg !1058, !psr.id !1059
  %38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1060, !psr.id !1061
  %39 = load i64*, i64** %38, align 8, !dbg !1060, !psr.id !1062
  %40 = getelementptr inbounds i64, i64* %39, i64 %.0, !dbg !1063, !psr.id !1064
  %41 = load i64, i64* %40, align 8, !dbg !1065, !psr.id !1066
  %42 = and i64 %41, %37, !dbg !1065, !psr.id !1067
  store i64 %42, i64* %40, align 8, !dbg !1065, !psr.id !1068
  br label %43, !dbg !1063, !psr.id !1069

43:                                               ; preds = %36
  %44 = add i64 %.0, 1, !dbg !1070, !psr.id !1071
  call void @llvm.dbg.value(metadata i64 %44, metadata !1043, metadata !DIExpression()), !dbg !1044, !psr.id !1072
  br label %32, !dbg !1073, !llvm.loop !1074, !psr.id !1076

45:                                               ; preds = %32
  br label %46, !dbg !1075, !psr.id !1077

46:                                               ; preds = %45, %15
  call void @llvm.dbg.label(metadata !1078), !dbg !1079, !psr.id !1080
  ret i32 %13, !dbg !1081, !psr.id !1082
}

declare dso_local i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @mbedtls_ct_cond_select_sign(i8 zeroext %0, i32 %1, i32 %2) #0 !dbg !1083 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1086, metadata !DIExpression()), !dbg !1087, !psr.id !1088
  call void @llvm.dbg.value(metadata i32 %1, metadata !1089, metadata !DIExpression()), !dbg !1087, !psr.id !1090
  call void @llvm.dbg.value(metadata i32 %2, metadata !1091, metadata !DIExpression()), !dbg !1087, !psr.id !1092
  %4 = add nsw i32 %1, 1, !dbg !1093, !psr.id !1094
  call void @llvm.dbg.value(metadata i32 %4, metadata !1095, metadata !DIExpression()), !dbg !1087, !psr.id !1096
  %5 = add nsw i32 %2, 1, !dbg !1097, !psr.id !1098
  call void @llvm.dbg.value(metadata i32 %5, metadata !1099, metadata !DIExpression()), !dbg !1087, !psr.id !1100
  %6 = zext i8 %0 to i32, !dbg !1101, !psr.id !1102
  %7 = shl i32 %6, 1, !dbg !1103, !psr.id !1104
  call void @llvm.dbg.value(metadata i32 %7, metadata !1105, metadata !DIExpression()), !dbg !1087, !psr.id !1106
  %8 = xor i32 %7, -1, !dbg !1107, !psr.id !1108
  %9 = and i32 %5, %8, !dbg !1109, !psr.id !1110
  %10 = and i32 %4, %7, !dbg !1111, !psr.id !1112
  %11 = or i32 %9, %10, !dbg !1113, !psr.id !1114
  call void @llvm.dbg.value(metadata i32 %11, metadata !1115, metadata !DIExpression()), !dbg !1087, !psr.id !1116
  %12 = sub nsw i32 %11, 1, !dbg !1117, !psr.id !1118
  ret i32 %12, !dbg !1119, !psr.id !1120
}

declare dso_local void @mbedtls_mpi_core_cond_assign(i64*, i64*, i64, i8 zeroext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i8 zeroext %2) #0 !dbg !1121 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !1124, metadata !DIExpression()), !dbg !1125, !psr.id !1126
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !1127, metadata !DIExpression()), !dbg !1125, !psr.id !1128
  call void @llvm.dbg.value(metadata i8 %2, metadata !1129, metadata !DIExpression()), !dbg !1125, !psr.id !1130
  call void @llvm.dbg.value(metadata i32 0, metadata !1131, metadata !DIExpression()), !dbg !1125, !psr.id !1132
  br label %4, !dbg !1133, !psr.id !1134

4:                                                ; preds = %3
  br label %5, !dbg !1135, !psr.id !1137

5:                                                ; preds = %4
  br label %6, !dbg !1138, !psr.id !1139

6:                                                ; preds = %5
  br label %7, !dbg !1140, !psr.id !1142

7:                                                ; preds = %6
  %8 = icmp eq %struct.mbedtls_mpi* %0, %1, !dbg !1143, !psr.id !1145
  br i1 %8, label %9, label %10, !dbg !1146, !psr.id !1147

9:                                                ; preds = %7
  br label %46, !dbg !1148, !psr.id !1149

10:                                               ; preds = %7
  br label %11, !dbg !1150, !psr.id !1151

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !1152, !psr.id !1155
  %13 = load i64, i64* %12, align 8, !dbg !1152, !psr.id !1156
  %14 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %0, i64 %13), !dbg !1152, !psr.id !1157
  call void @llvm.dbg.value(metadata i32 %14, metadata !1131, metadata !DIExpression()), !dbg !1125, !psr.id !1158
  %15 = icmp ne i32 %14, 0, !dbg !1152, !psr.id !1159
  br i1 %15, label %16, label %17, !dbg !1160, !psr.id !1161

16:                                               ; preds = %11
  br label %45, !dbg !1152, !psr.id !1162

17:                                               ; preds = %11
  br label %18, !dbg !1160, !psr.id !1163

18:                                               ; preds = %17
  br label %19, !dbg !1164, !psr.id !1165

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1166, !psr.id !1169
  %21 = load i64, i64* %20, align 8, !dbg !1166, !psr.id !1170
  %22 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %1, i64 %21), !dbg !1166, !psr.id !1171
  call void @llvm.dbg.value(metadata i32 %22, metadata !1131, metadata !DIExpression()), !dbg !1125, !psr.id !1172
  %23 = icmp ne i32 %22, 0, !dbg !1166, !psr.id !1173
  br i1 %23, label %24, label %25, !dbg !1174, !psr.id !1175

24:                                               ; preds = %19
  br label %45, !dbg !1166, !psr.id !1176

25:                                               ; preds = %19
  br label %26, !dbg !1174, !psr.id !1177

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1178, !psr.id !1179
  %28 = load i32, i32* %27, align 8, !dbg !1178, !psr.id !1180
  call void @llvm.dbg.value(metadata i32 %28, metadata !1181, metadata !DIExpression()), !dbg !1125, !psr.id !1182
  %29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1183, !psr.id !1184
  %30 = load i32, i32* %29, align 8, !dbg !1183, !psr.id !1185
  %31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1186, !psr.id !1187
  %32 = load i32, i32* %31, align 8, !dbg !1186, !psr.id !1188
  %33 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %30, i32 %32), !dbg !1189, !psr.id !1190
  %34 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !1191, !psr.id !1192
  store i32 %33, i32* %34, align 8, !dbg !1193, !psr.id !1194
  %35 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1195, !psr.id !1196
  %36 = load i32, i32* %35, align 8, !dbg !1195, !psr.id !1197
  %37 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %28, i32 %36), !dbg !1198, !psr.id !1199
  %38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !1200, !psr.id !1201
  store i32 %37, i32* %38, align 8, !dbg !1202, !psr.id !1203
  %39 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !1204, !psr.id !1205
  %40 = load i64*, i64** %39, align 8, !dbg !1204, !psr.id !1206
  %41 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !1207, !psr.id !1208
  %42 = load i64*, i64** %41, align 8, !dbg !1207, !psr.id !1209
  %43 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !1210, !psr.id !1211
  %44 = load i64, i64* %43, align 8, !dbg !1210, !psr.id !1212
  call void @mbedtls_mpi_core_cond_swap(i64* %40, i64* %42, i64 %44, i8 zeroext %2), !dbg !1213, !psr.id !1214
  br label %45, !dbg !1213, !psr.id !1215

45:                                               ; preds = %26, %24, %16
  %.01 = phi i32 [ %14, %16 ], [ %22, %24 ], [ %22, %26 ], !dbg !1125, !psr.id !1216
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1131, metadata !DIExpression()), !dbg !1125, !psr.id !1217
  call void @llvm.dbg.label(metadata !1218), !dbg !1219, !psr.id !1220
  br label %46, !dbg !1221, !psr.id !1222

46:                                               ; preds = %45, %9
  %.0 = phi i32 [ 0, %9 ], [ %.01, %45 ], !dbg !1125, !psr.id !1223
  ret i32 %.0, !dbg !1224, !psr.id !1225
}

declare dso_local void @mbedtls_mpi_core_cond_swap(i64*, i64*, i64, i8 zeroext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_core_lt_ct(i64* %0, i64* %1, i64 %2) #0 !dbg !1226 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1229, metadata !DIExpression()), !dbg !1230, !psr.id !1231
  call void @llvm.dbg.value(metadata i64* %1, metadata !1232, metadata !DIExpression()), !dbg !1230, !psr.id !1233
  call void @llvm.dbg.value(metadata i64 %2, metadata !1234, metadata !DIExpression()), !dbg !1230, !psr.id !1235
  call void @llvm.dbg.value(metadata i32 0, metadata !1236, metadata !DIExpression()), !dbg !1230, !psr.id !1237
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()), !dbg !1230, !psr.id !1239
  call void @llvm.dbg.value(metadata i32 0, metadata !1240, metadata !DIExpression()), !dbg !1230, !psr.id !1241
  call void @llvm.dbg.value(metadata i64 %2, metadata !1242, metadata !DIExpression()), !dbg !1244, !psr.id !1245
  br label %4, !dbg !1246, !psr.id !1247

4:                                                ; preds = %26, %3
  %.02 = phi i32 [ 0, %3 ], [ %24, %26 ], !dbg !1230, !psr.id !1248
  %.01 = phi i32 [ 0, %3 ], [ %25, %26 ], !dbg !1230, !psr.id !1249
  %.0 = phi i64 [ %2, %3 ], [ %27, %26 ], !dbg !1244, !psr.id !1250
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1242, metadata !DIExpression()), !dbg !1244, !psr.id !1251
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1236, metadata !DIExpression()), !dbg !1230, !psr.id !1252
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1240, metadata !DIExpression()), !dbg !1230, !psr.id !1253
  %5 = icmp ugt i64 %.0, 0, !dbg !1254, !psr.id !1256
  br i1 %5, label %6, label %28, !dbg !1257, !psr.id !1258

6:                                                ; preds = %4
  %7 = sub i64 %.0, 1, !dbg !1259, !psr.id !1261
  %8 = getelementptr inbounds i64, i64* %1, i64 %7, !dbg !1262, !psr.id !1263
  %9 = load i64, i64* %8, align 8, !dbg !1262, !psr.id !1264
  %10 = sub i64 %.0, 1, !dbg !1265, !psr.id !1266
  %11 = getelementptr inbounds i64, i64* %0, i64 %10, !dbg !1267, !psr.id !1268
  %12 = load i64, i64* %11, align 8, !dbg !1267, !psr.id !1269
  %13 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %9, i64 %12), !dbg !1270, !psr.id !1271
  call void @llvm.dbg.value(metadata i32 %13, metadata !1238, metadata !DIExpression()), !dbg !1230, !psr.id !1272
  %14 = or i32 %.01, %13, !dbg !1273, !psr.id !1274
  call void @llvm.dbg.value(metadata i32 %14, metadata !1236, metadata !DIExpression()), !dbg !1230, !psr.id !1275
  %15 = sub i64 %.0, 1, !dbg !1276, !psr.id !1277
  %16 = getelementptr inbounds i64, i64* %0, i64 %15, !dbg !1278, !psr.id !1279
  %17 = load i64, i64* %16, align 8, !dbg !1278, !psr.id !1280
  %18 = sub i64 %.0, 1, !dbg !1281, !psr.id !1282
  %19 = getelementptr inbounds i64, i64* %1, i64 %18, !dbg !1283, !psr.id !1284
  %20 = load i64, i64* %19, align 8, !dbg !1283, !psr.id !1285
  %21 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %17, i64 %20), !dbg !1286, !psr.id !1287
  call void @llvm.dbg.value(metadata i32 %21, metadata !1238, metadata !DIExpression()), !dbg !1230, !psr.id !1288
  %22 = sub i32 1, %14, !dbg !1289, !psr.id !1290
  %23 = and i32 %21, %22, !dbg !1291, !psr.id !1292
  %24 = or i32 %.02, %23, !dbg !1293, !psr.id !1294
  call void @llvm.dbg.value(metadata i32 %24, metadata !1240, metadata !DIExpression()), !dbg !1230, !psr.id !1295
  %25 = or i32 %14, %21, !dbg !1296, !psr.id !1297
  call void @llvm.dbg.value(metadata i32 %25, metadata !1236, metadata !DIExpression()), !dbg !1230, !psr.id !1298
  br label %26, !dbg !1299, !psr.id !1300

26:                                               ; preds = %6
  %27 = add i64 %.0, -1, !dbg !1301, !psr.id !1302
  call void @llvm.dbg.value(metadata i64 %27, metadata !1242, metadata !DIExpression()), !dbg !1244, !psr.id !1303
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
define dso_local i32 @mbedtls_ct_uint_mask_wrapper(i32 %0) #0 !dbg !1835 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1838, metadata !DIExpression()), !dbg !1839, !psr.id !1840
  %2 = call i32 (i32, ...) bitcast (i32 (i32)* @mbedtls_ct_uint_mask to i32 (i32, ...)*)(i32 %0), !dbg !1841, !psr.id !1842
  ret i32 undef, !dbg !1843, !psr.id !1844
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_uint_mask_wrapper_t() #0 !dbg !1845 {
  %1 = call i64 (...) @getlen(), !dbg !1848, !psr.id !1849
  call void @llvm.dbg.value(metadata i64 %1, metadata !1850, metadata !DIExpression()), !dbg !1851, !psr.id !1852
  %2 = call i32 (i64, ...) bitcast (i32 (i32)* @mbedtls_ct_uint_mask to i32 (i64, ...)*)(i64 %1), !dbg !1853, !psr.id !1854
  ret void, !dbg !1855, !psr.id !1856
}

declare dso_local i64 @getlen(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @mbedtls_ct_uint_mask_wrapper_t()
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
!25 = !DIFile(filename: "mbedtls_ct_uint_mask.c", directory: "/home/luwei/bech-back/Mbed-tls/constant_time_primitive")
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
!68 = !{!"PointTainted"}
!69 = !{!"15"}
!70 = !{!"ValueTainted"}
!71 = !DILocalVariable(name: "x", scope: !66, file: !1, line: 64, type: !19)
!72 = !DILocation(line: 0, scope: !66)
!73 = !{!"16"}
!74 = !DILocation(line: 64, column: 37, scope: !66)
!75 = !{!"17"}
!76 = !{!"18"}
!77 = !DILocalVariable(name: "y", scope: !66, file: !1, line: 64, type: !19)
!78 = !{!"19"}
!79 = !DILocation(line: 65, column: 17, scope: !66)
!80 = !{!"20"}
!81 = !DILocation(line: 65, column: 21, scope: !66)
!82 = !{!"21"}
!83 = !DILocation(line: 65, column: 19, scope: !66)
!84 = !{!"22"}
!85 = !DILocation(line: 65, column: 14, scope: !66)
!86 = !{!"23"}
!87 = !{!"24"}
!88 = !{!"25"}
!89 = !{!"26"}
!90 = !{!"27"}
!91 = !DILocation(line: 66, column: 5, scope: !66)
!92 = !{!"28"}
!93 = !DILocation(line: 59, column: 25, scope: !61)
!94 = !{!"29"}
!95 = !{!"30"}
!96 = !DILocation(line: 59, column: 5, scope: !61)
!97 = distinct !{!97, !63, !98, !99}
!98 = !DILocation(line: 66, column: 5, scope: !55)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"31"}
!101 = !DILocation(line: 68, column: 18, scope: !31)
!102 = !{!"32"}
!103 = !DILocation(line: 68, column: 13, scope: !31)
!104 = !{!"33"}
!105 = !DILocation(line: 68, column: 5, scope: !31)
!106 = !{!"34"}
!107 = distinct !DISubprogram(name: "mbedtls_ct_uint_mask", scope: !1, file: !1, line: 71, type: !108, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!108 = !DISubroutineType(types: !109)
!109 = !{!5, !5}
!110 = !DILocalVariable(name: "value", arg: 1, scope: !107, file: !1, line: 71, type: !5)
!111 = !DILocation(line: 0, scope: !107)
!112 = !{!"35"}
!113 = !DILocation(line: 79, column: 27, scope: !107)
!114 = !{!"36"}
!115 = !DILocation(line: 79, column: 25, scope: !107)
!116 = !{!"37"}
!117 = !DILocation(line: 79, column: 37, scope: !107)
!118 = !{!"38"}
!119 = !DILocation(line: 79, column: 13, scope: !107)
!120 = !{!"39"}
!121 = !DILocation(line: 79, column: 5, scope: !107)
!122 = !{!"40"}
!123 = distinct !DISubprogram(name: "mbedtls_ct_size_mask", scope: !1, file: !1, line: 87, type: !124, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!124 = !DISubroutineType(types: !125)
!125 = !{!21, !21}
!126 = !DILocalVariable(name: "value", arg: 1, scope: !123, file: !1, line: 87, type: !21)
!127 = !DILocation(line: 0, scope: !123)
!128 = !{!"41"}
!129 = !DILocation(line: 95, column: 27, scope: !123)
!130 = !{!"42"}
!131 = !DILocation(line: 95, column: 25, scope: !123)
!132 = !{!"43"}
!133 = !DILocation(line: 95, column: 37, scope: !123)
!134 = !{!"44"}
!135 = !DILocation(line: 95, column: 13, scope: !123)
!136 = !{!"45"}
!137 = !DILocation(line: 95, column: 5, scope: !123)
!138 = !{!"46"}
!139 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_mask", scope: !1, file: !1, line: 105, type: !140, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !142}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_mpi_uint", file: !143, line: 141, baseType: !144)
!143 = !DIFile(filename: "../mbedtls/include/mbedtls/bignum.h", directory: "/home/luwei/bech-back/Mbed-tls/constant_time_primitive")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !145, line: 27, baseType: !146)
!145 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !147, line: 45, baseType: !23)
!147 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!148 = !DILocalVariable(name: "value", arg: 1, scope: !139, file: !1, line: 105, type: !142)
!149 = !DILocation(line: 0, scope: !139)
!150 = !{!"47"}
!151 = !DILocation(line: 113, column: 27, scope: !139)
!152 = !{!"48"}
!153 = !DILocation(line: 113, column: 25, scope: !139)
!154 = !{!"49"}
!155 = !DILocation(line: 113, column: 37, scope: !139)
!156 = !{!"50"}
!157 = !DILocation(line: 113, column: 13, scope: !139)
!158 = !{!"51"}
!159 = !DILocation(line: 113, column: 5, scope: !139)
!160 = !{!"52"}
!161 = distinct !DISubprogram(name: "mbedtls_ct_size_mask_ge", scope: !1, file: !1, line: 150, type: !162, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!162 = !DISubroutineType(types: !163)
!163 = !{!21, !21, !21}
!164 = !DILocalVariable(name: "x", arg: 1, scope: !161, file: !1, line: 150, type: !21)
!165 = !DILocation(line: 0, scope: !161)
!166 = !{!"53"}
!167 = !DILocalVariable(name: "y", arg: 2, scope: !161, file: !1, line: 151, type: !21)
!168 = !{!"54"}
!169 = !DILocation(line: 153, column: 14, scope: !161)
!170 = !{!"55"}
!171 = !DILocation(line: 153, column: 13, scope: !161)
!172 = !{!"56"}
!173 = !DILocation(line: 153, column: 5, scope: !161)
!174 = !{!"57"}
!175 = distinct !DISubprogram(name: "mbedtls_ct_size_mask_lt", scope: !1, file: !1, line: 135, type: !162, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!176 = !DILocalVariable(name: "x", arg: 1, scope: !175, file: !1, line: 135, type: !21)
!177 = !DILocation(line: 0, scope: !175)
!178 = !{!"58"}
!179 = !DILocalVariable(name: "y", arg: 2, scope: !175, file: !1, line: 136, type: !21)
!180 = !{!"59"}
!181 = !DILocation(line: 139, column: 26, scope: !175)
!182 = !{!"60"}
!183 = !DILocalVariable(name: "sub", scope: !175, file: !1, line: 139, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!185 = !{!"61"}
!186 = !DILocation(line: 142, column: 29, scope: !175)
!187 = !{!"62"}
!188 = !DILocalVariable(name: "sub1", scope: !175, file: !1, line: 142, type: !184)
!189 = !{!"63"}
!190 = !DILocation(line: 145, column: 25, scope: !175)
!191 = !{!"64"}
!192 = !DILocalVariable(name: "mask", scope: !175, file: !1, line: 145, type: !184)
!193 = !{!"65"}
!194 = !DILocation(line: 147, column: 5, scope: !175)
!195 = !{!"66"}
!196 = distinct !DISubprogram(name: "mbedtls_ct_size_bool_eq", scope: !1, file: !1, line: 178, type: !197, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!197 = !DISubroutineType(types: !198)
!198 = !{!5, !21, !21}
!199 = !DILocalVariable(name: "x", arg: 1, scope: !196, file: !1, line: 178, type: !21)
!200 = !DILocation(line: 0, scope: !196)
!201 = !{!"67"}
!202 = !DILocalVariable(name: "y", arg: 2, scope: !196, file: !1, line: 179, type: !21)
!203 = !{!"68"}
!204 = !DILocation(line: 182, column: 27, scope: !196)
!205 = !{!"69"}
!206 = !DILocalVariable(name: "diff", scope: !196, file: !1, line: 182, type: !184)
!207 = !{!"70"}
!208 = !DILocation(line: 192, column: 47, scope: !196)
!209 = !{!"71"}
!210 = !DILocation(line: 192, column: 36, scope: !196)
!211 = !{!"72"}
!212 = !DILocalVariable(name: "diff_msb", scope: !196, file: !1, line: 192, type: !184)
!213 = !{!"73"}
!214 = !DILocation(line: 199, column: 37, scope: !196)
!215 = !{!"74"}
!216 = !DILocation(line: 199, column: 28, scope: !196)
!217 = !{!"75"}
!218 = !DILocalVariable(name: "diff1", scope: !196, file: !1, line: 199, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!220 = !{!"76"}
!221 = !DILocation(line: 201, column: 15, scope: !196)
!222 = !{!"77"}
!223 = !DILocation(line: 201, column: 5, scope: !196)
!224 = !{!"78"}
!225 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_lt", scope: !1, file: !1, line: 228, type: !226, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!226 = !DISubroutineType(types: !227)
!227 = !{!5, !228, !228}
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!229 = !DILocalVariable(name: "x", arg: 1, scope: !225, file: !1, line: 228, type: !228)
!230 = !DILocation(line: 0, scope: !225)
!231 = !{!"79"}
!232 = !DILocalVariable(name: "y", arg: 2, scope: !225, file: !1, line: 229, type: !228)
!233 = !{!"80"}
!234 = !DILocation(line: 237, column: 16, scope: !225)
!235 = !{!"81"}
!236 = !DILocalVariable(name: "cond", scope: !225, file: !1, line: 232, type: !142)
!237 = !{!"82"}
!238 = !DILocation(line: 242, column: 15, scope: !225)
!239 = !{!"83"}
!240 = !DILocation(line: 242, column: 23, scope: !225)
!241 = !{!"84"}
!242 = !DILocation(line: 242, column: 21, scope: !225)
!243 = !{!"85"}
!244 = !DILocalVariable(name: "ret", scope: !225, file: !1, line: 231, type: !142)
!245 = !{!"86"}
!246 = !DILocation(line: 248, column: 14, scope: !225)
!247 = !{!"87"}
!248 = !DILocation(line: 248, column: 9, scope: !225)
!249 = !{!"88"}
!250 = !{!"89"}
!251 = !DILocation(line: 251, column: 15, scope: !225)
!252 = !{!"90"}
!253 = !{!"91"}
!254 = !DILocation(line: 253, column: 12, scope: !225)
!255 = !{!"92"}
!256 = !DILocation(line: 253, column: 5, scope: !225)
!257 = !{!"93"}
!258 = distinct !DISubprogram(name: "mbedtls_ct_uint_if", scope: !1, file: !1, line: 258, type: !259, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!259 = !DISubroutineType(types: !260)
!260 = !{!5, !5, !5, !5}
!261 = !DILocalVariable(name: "condition", arg: 1, scope: !258, file: !1, line: 258, type: !5)
!262 = !DILocation(line: 0, scope: !258)
!263 = !{!"94"}
!264 = !DILocalVariable(name: "if1", arg: 2, scope: !258, file: !1, line: 259, type: !5)
!265 = !{!"95"}
!266 = !DILocalVariable(name: "if0", arg: 3, scope: !258, file: !1, line: 260, type: !5)
!267 = !{!"96"}
!268 = !DILocation(line: 262, column: 21, scope: !258)
!269 = !{!"97"}
!270 = !DILocalVariable(name: "mask", scope: !258, file: !1, line: 262, type: !5)
!271 = !{!"98"}
!272 = !DILocation(line: 263, column: 20, scope: !258)
!273 = !{!"99"}
!274 = !DILocation(line: 263, column: 31, scope: !258)
!275 = !{!"100"}
!276 = !DILocation(line: 263, column: 37, scope: !258)
!277 = !{!"101"}
!278 = !DILocation(line: 263, column: 28, scope: !258)
!279 = !{!"102"}
!280 = !DILocation(line: 263, column: 5, scope: !258)
!281 = !{!"103"}
!282 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_cond_assign", scope: !1, file: !1, line: 302, type: !283, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !21, !285, !286, !19}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!287 = !DILocalVariable(name: "n", arg: 1, scope: !282, file: !1, line: 302, type: !21)
!288 = !DILocation(line: 0, scope: !282)
!289 = !{!"104"}
!290 = !DILocalVariable(name: "dest", arg: 2, scope: !282, file: !1, line: 303, type: !285)
!291 = !{!"105"}
!292 = !DILocalVariable(name: "src", arg: 3, scope: !282, file: !1, line: 304, type: !286)
!293 = !{!"106"}
!294 = !DILocalVariable(name: "condition", arg: 4, scope: !282, file: !1, line: 305, type: !19)
!295 = !{!"107"}
!296 = !DILocation(line: 317, column: 36, scope: !282)
!297 = !{!"108"}
!298 = !DILocation(line: 317, column: 35, scope: !282)
!299 = !{!"109"}
!300 = !{!"110"}
!301 = !DILocalVariable(name: "mask", scope: !282, file: !1, line: 317, type: !228)
!302 = !{!"111"}
!303 = !DILocalVariable(name: "i", scope: !282, file: !1, line: 307, type: !21)
!304 = !{!"112"}
!305 = !DILocation(line: 323, column: 10, scope: !306)
!306 = distinct !DILexicalBlock(scope: !282, file: !1, line: 323, column: 5)
!307 = !{!"113"}
!308 = !DILocation(line: 0, scope: !306)
!309 = !{!"114"}
!310 = !{!"115"}
!311 = !DILocation(line: 323, column: 19, scope: !312)
!312 = distinct !DILexicalBlock(scope: !306, file: !1, line: 323, column: 5)
!313 = !{!"116"}
!314 = !DILocation(line: 323, column: 5, scope: !306)
!315 = !{!"117"}
!316 = !DILocation(line: 324, column: 21, scope: !312)
!317 = !{!"118"}
!318 = !{!"119"}
!319 = !DILocation(line: 324, column: 28, scope: !312)
!320 = !{!"120"}
!321 = !DILocation(line: 324, column: 41, scope: !312)
!322 = !{!"121"}
!323 = !{!"122"}
!324 = !DILocation(line: 324, column: 51, scope: !312)
!325 = !{!"123"}
!326 = !DILocation(line: 324, column: 49, scope: !312)
!327 = !{!"124"}
!328 = !DILocation(line: 324, column: 37, scope: !312)
!329 = !{!"125"}
!330 = !DILocation(line: 324, column: 9, scope: !312)
!331 = !{!"126"}
!332 = !DILocation(line: 324, column: 17, scope: !312)
!333 = !{!"127"}
!334 = !{!"128"}
!335 = !DILocation(line: 323, column: 25, scope: !312)
!336 = !{!"129"}
!337 = !{!"130"}
!338 = !DILocation(line: 323, column: 5, scope: !312)
!339 = distinct !{!339, !314, !340, !99}
!340 = !DILocation(line: 324, column: 57, scope: !306)
!341 = !{!"131"}
!342 = !DILocation(line: 325, column: 1, scope: !282)
!343 = !{!"132"}
!344 = distinct !DISubprogram(name: "mbedtls_ct_base64_enc_char", scope: !1, file: !1, line: 331, type: !345, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!345 = !DISubroutineType(types: !346)
!346 = !{!19, !19}
!347 = !DILocalVariable(name: "value", arg: 1, scope: !344, file: !1, line: 331, type: !19)
!348 = !DILocation(line: 0, scope: !344)
!349 = !{!"133"}
!350 = !DILocalVariable(name: "digit", scope: !344, file: !1, line: 333, type: !19)
!351 = !{!"134"}
!352 = !DILocation(line: 337, column: 14, scope: !344)
!353 = !{!"135"}
!354 = !{!"136"}
!355 = !DILocation(line: 337, column: 72, scope: !344)
!356 = !{!"137"}
!357 = !DILocation(line: 337, column: 70, scope: !344)
!358 = !{!"138"}
!359 = !DILocation(line: 337, column: 62, scope: !344)
!360 = !{!"139"}
!361 = !DILocation(line: 337, column: 11, scope: !344)
!362 = !{!"140"}
!363 = !{!"141"}
!364 = !{!"142"}
!365 = !{!"143"}
!366 = !DILocation(line: 338, column: 14, scope: !344)
!367 = !{!"144"}
!368 = !{!"145"}
!369 = !DILocation(line: 338, column: 72, scope: !344)
!370 = !{!"146"}
!371 = !DILocation(line: 338, column: 70, scope: !344)
!372 = !{!"147"}
!373 = !DILocation(line: 338, column: 78, scope: !344)
!374 = !{!"148"}
!375 = !DILocation(line: 338, column: 62, scope: !344)
!376 = !{!"149"}
!377 = !DILocation(line: 338, column: 11, scope: !344)
!378 = !{!"150"}
!379 = !{!"151"}
!380 = !{!"152"}
!381 = !{!"153"}
!382 = !DILocation(line: 339, column: 14, scope: !344)
!383 = !{!"154"}
!384 = !{!"155"}
!385 = !DILocation(line: 339, column: 72, scope: !344)
!386 = !{!"156"}
!387 = !DILocation(line: 339, column: 70, scope: !344)
!388 = !{!"157"}
!389 = !DILocation(line: 339, column: 78, scope: !344)
!390 = !{!"158"}
!391 = !DILocation(line: 339, column: 62, scope: !344)
!392 = !{!"159"}
!393 = !DILocation(line: 339, column: 11, scope: !344)
!394 = !{!"160"}
!395 = !{!"161"}
!396 = !{!"162"}
!397 = !{!"163"}
!398 = !DILocation(line: 340, column: 14, scope: !344)
!399 = !{!"164"}
!400 = !{!"165"}
!401 = !DILocation(line: 340, column: 62, scope: !344)
!402 = !{!"166"}
!403 = !DILocation(line: 340, column: 11, scope: !344)
!404 = !{!"167"}
!405 = !{!"168"}
!406 = !{!"169"}
!407 = !{!"170"}
!408 = !DILocation(line: 341, column: 14, scope: !344)
!409 = !{!"171"}
!410 = !{!"172"}
!411 = !DILocation(line: 341, column: 62, scope: !344)
!412 = !{!"173"}
!413 = !DILocation(line: 341, column: 11, scope: !344)
!414 = !{!"174"}
!415 = !{!"175"}
!416 = !{!"176"}
!417 = !{!"177"}
!418 = !DILocation(line: 342, column: 5, scope: !344)
!419 = !{!"178"}
!420 = distinct !DISubprogram(name: "mbedtls_ct_uchar_mask_of_range", scope: !1, file: !1, line: 165, type: !421, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!421 = !DISubroutineType(types: !422)
!422 = !{!19, !19, !19, !19}
!423 = !DILocalVariable(name: "low", arg: 1, scope: !420, file: !1, line: 165, type: !19)
!424 = !DILocation(line: 0, scope: !420)
!425 = !{!"179"}
!426 = !DILocalVariable(name: "high", arg: 2, scope: !420, file: !1, line: 166, type: !19)
!427 = !{!"180"}
!428 = !DILocalVariable(name: "c", arg: 3, scope: !420, file: !1, line: 167, type: !19)
!429 = !{!"181"}
!430 = !DILocation(line: 170, column: 27, scope: !420)
!431 = !{!"182"}
!432 = !DILocation(line: 170, column: 42, scope: !420)
!433 = !{!"183"}
!434 = !DILocation(line: 170, column: 40, scope: !420)
!435 = !{!"184"}
!436 = !DILocation(line: 170, column: 48, scope: !420)
!437 = !{!"185"}
!438 = !DILocalVariable(name: "low_mask", scope: !420, file: !1, line: 170, type: !5)
!439 = !{!"186"}
!440 = !DILocation(line: 172, column: 28, scope: !420)
!441 = !{!"187"}
!442 = !DILocation(line: 172, column: 46, scope: !420)
!443 = !{!"188"}
!444 = !DILocation(line: 172, column: 44, scope: !420)
!445 = !{!"189"}
!446 = !DILocation(line: 172, column: 50, scope: !420)
!447 = !{!"190"}
!448 = !DILocalVariable(name: "high_mask", scope: !420, file: !1, line: 172, type: !5)
!449 = !{!"191"}
!450 = !DILocation(line: 173, column: 25, scope: !420)
!451 = !{!"192"}
!452 = !DILocation(line: 173, column: 13, scope: !420)
!453 = !{!"193"}
!454 = !DILocation(line: 173, column: 39, scope: !420)
!455 = !{!"194"}
!456 = !DILocation(line: 173, column: 11, scope: !420)
!457 = !{!"195"}
!458 = !DILocation(line: 173, column: 5, scope: !420)
!459 = !{!"196"}
!460 = distinct !DISubprogram(name: "mbedtls_ct_base64_dec_value", scope: !1, file: !1, line: 345, type: !461, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !19}
!463 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!464 = !DILocalVariable(name: "c", arg: 1, scope: !460, file: !1, line: 345, type: !19)
!465 = !DILocation(line: 0, scope: !460)
!466 = !{!"197"}
!467 = !DILocalVariable(name: "val", scope: !460, file: !1, line: 347, type: !19)
!468 = !{!"198"}
!469 = !DILocation(line: 352, column: 12, scope: !460)
!470 = !{!"199"}
!471 = !{!"200"}
!472 = !DILocation(line: 352, column: 62, scope: !460)
!473 = !{!"201"}
!474 = !DILocation(line: 352, column: 64, scope: !460)
!475 = !{!"202"}
!476 = !DILocation(line: 352, column: 70, scope: !460)
!477 = !{!"203"}
!478 = !DILocation(line: 352, column: 75, scope: !460)
!479 = !{!"204"}
!480 = !DILocation(line: 352, column: 58, scope: !460)
!481 = !{!"205"}
!482 = !DILocation(line: 352, column: 9, scope: !460)
!483 = !{!"206"}
!484 = !{!"207"}
!485 = !{!"208"}
!486 = !{!"209"}
!487 = !DILocation(line: 353, column: 12, scope: !460)
!488 = !{!"210"}
!489 = !{!"211"}
!490 = !DILocation(line: 353, column: 62, scope: !460)
!491 = !{!"212"}
!492 = !DILocation(line: 353, column: 64, scope: !460)
!493 = !{!"213"}
!494 = !DILocation(line: 353, column: 70, scope: !460)
!495 = !{!"214"}
!496 = !DILocation(line: 353, column: 75, scope: !460)
!497 = !{!"215"}
!498 = !DILocation(line: 353, column: 58, scope: !460)
!499 = !{!"216"}
!500 = !DILocation(line: 353, column: 9, scope: !460)
!501 = !{!"217"}
!502 = !{!"218"}
!503 = !{!"219"}
!504 = !{!"220"}
!505 = !DILocation(line: 354, column: 12, scope: !460)
!506 = !{!"221"}
!507 = !{!"222"}
!508 = !DILocation(line: 354, column: 62, scope: !460)
!509 = !{!"223"}
!510 = !DILocation(line: 354, column: 64, scope: !460)
!511 = !{!"224"}
!512 = !DILocation(line: 354, column: 70, scope: !460)
!513 = !{!"225"}
!514 = !DILocation(line: 354, column: 75, scope: !460)
!515 = !{!"226"}
!516 = !DILocation(line: 354, column: 58, scope: !460)
!517 = !{!"227"}
!518 = !DILocation(line: 354, column: 9, scope: !460)
!519 = !{!"228"}
!520 = !{!"229"}
!521 = !{!"230"}
!522 = !{!"231"}
!523 = !DILocation(line: 355, column: 12, scope: !460)
!524 = !{!"232"}
!525 = !{!"233"}
!526 = !DILocation(line: 355, column: 62, scope: !460)
!527 = !{!"234"}
!528 = !DILocation(line: 355, column: 64, scope: !460)
!529 = !{!"235"}
!530 = !DILocation(line: 355, column: 70, scope: !460)
!531 = !{!"236"}
!532 = !DILocation(line: 355, column: 75, scope: !460)
!533 = !{!"237"}
!534 = !DILocation(line: 355, column: 58, scope: !460)
!535 = !{!"238"}
!536 = !DILocation(line: 355, column: 9, scope: !460)
!537 = !{!"239"}
!538 = !{!"240"}
!539 = !{!"241"}
!540 = !{!"242"}
!541 = !DILocation(line: 356, column: 12, scope: !460)
!542 = !{!"243"}
!543 = !{!"244"}
!544 = !DILocation(line: 356, column: 62, scope: !460)
!545 = !{!"245"}
!546 = !DILocation(line: 356, column: 64, scope: !460)
!547 = !{!"246"}
!548 = !DILocation(line: 356, column: 70, scope: !460)
!549 = !{!"247"}
!550 = !DILocation(line: 356, column: 75, scope: !460)
!551 = !{!"248"}
!552 = !DILocation(line: 356, column: 58, scope: !460)
!553 = !{!"249"}
!554 = !DILocation(line: 356, column: 9, scope: !460)
!555 = !{!"250"}
!556 = !{!"251"}
!557 = !{!"252"}
!558 = !{!"253"}
!559 = !DILocation(line: 359, column: 13, scope: !460)
!560 = !{!"254"}
!561 = !DILocation(line: 359, column: 17, scope: !460)
!562 = !{!"255"}
!563 = !DILocation(line: 359, column: 11, scope: !460)
!564 = !{!"256"}
!565 = !DILocation(line: 359, column: 5, scope: !460)
!566 = !{!"257"}
!567 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_if_eq", scope: !1, file: !1, line: 410, type: !568, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !570, !571, !21, !21, !21}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!573 = !DILocalVariable(name: "dest", arg: 1, scope: !567, file: !1, line: 410, type: !570)
!574 = !DILocation(line: 0, scope: !567)
!575 = !{!"258"}
!576 = !DILocalVariable(name: "src", arg: 2, scope: !567, file: !1, line: 411, type: !571)
!577 = !{!"259"}
!578 = !DILocalVariable(name: "len", arg: 3, scope: !567, file: !1, line: 412, type: !21)
!579 = !{!"260"}
!580 = !DILocalVariable(name: "c1", arg: 4, scope: !567, file: !1, line: 413, type: !21)
!581 = !{!"261"}
!582 = !DILocalVariable(name: "c2", arg: 5, scope: !567, file: !1, line: 414, type: !21)
!583 = !{!"262"}
!584 = !DILocation(line: 417, column: 26, scope: !567)
!585 = !{!"263"}
!586 = !{!"264"}
!587 = !DILocalVariable(name: "equal", scope: !567, file: !1, line: 417, type: !184)
!588 = !{!"265"}
!589 = !DILocation(line: 418, column: 48, scope: !567)
!590 = !{!"266"}
!591 = !DILocation(line: 418, column: 32, scope: !567)
!592 = !{!"267"}
!593 = !DILocalVariable(name: "mask", scope: !567, file: !1, line: 418, type: !572)
!594 = !{!"268"}
!595 = !DILocalVariable(name: "i", scope: !596, file: !1, line: 421, type: !21)
!596 = distinct !DILexicalBlock(scope: !567, file: !1, line: 421, column: 5)
!597 = !DILocation(line: 0, scope: !596)
!598 = !{!"269"}
!599 = !DILocation(line: 421, column: 10, scope: !596)
!600 = !{!"270"}
!601 = !{!"271"}
!602 = !{!"272"}
!603 = !DILocation(line: 421, column: 26, scope: !604)
!604 = distinct !DILexicalBlock(scope: !596, file: !1, line: 421, column: 5)
!605 = !{!"273"}
!606 = !DILocation(line: 421, column: 5, scope: !596)
!607 = !{!"274"}
!608 = !DILocation(line: 422, column: 21, scope: !604)
!609 = !{!"275"}
!610 = !{!"276"}
!611 = !{!"277"}
!612 = !DILocation(line: 422, column: 30, scope: !604)
!613 = !{!"278"}
!614 = !DILocation(line: 422, column: 28, scope: !604)
!615 = !{!"279"}
!616 = !DILocation(line: 422, column: 41, scope: !604)
!617 = !{!"280"}
!618 = !{!"281"}
!619 = !{!"282"}
!620 = !DILocation(line: 422, column: 52, scope: !604)
!621 = !{!"283"}
!622 = !DILocation(line: 422, column: 51, scope: !604)
!623 = !{!"284"}
!624 = !DILocation(line: 422, column: 49, scope: !604)
!625 = !{!"285"}
!626 = !DILocation(line: 422, column: 37, scope: !604)
!627 = !{!"286"}
!628 = !DILocation(line: 422, column: 19, scope: !604)
!629 = !{!"287"}
!630 = !DILocation(line: 422, column: 9, scope: !604)
!631 = !{!"288"}
!632 = !DILocation(line: 422, column: 17, scope: !604)
!633 = !{!"289"}
!634 = !{!"290"}
!635 = !DILocation(line: 421, column: 34, scope: !604)
!636 = !{!"291"}
!637 = !{!"292"}
!638 = !DILocation(line: 421, column: 5, scope: !604)
!639 = distinct !{!639, !606, !640, !99}
!640 = !DILocation(line: 422, column: 57, scope: !596)
!641 = !{!"293"}
!642 = !DILocation(line: 423, column: 1, scope: !567)
!643 = !{!"294"}
!644 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_offset", scope: !1, file: !1, line: 425, type: !645, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !570, !571, !21, !21, !21, !21}
!647 = !DILocalVariable(name: "dest", arg: 1, scope: !644, file: !1, line: 425, type: !570)
!648 = !DILocation(line: 0, scope: !644)
!649 = !{!"295"}
!650 = !DILocalVariable(name: "src", arg: 2, scope: !644, file: !1, line: 426, type: !571)
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
!678 = !DILocation(line: 438, column: 5, scope: !674)
!679 = !{!"309"}
!680 = !DILocation(line: 434, column: 68, scope: !669)
!681 = !{!"310"}
!682 = !{!"311"}
!683 = !DILocation(line: 434, column: 5, scope: !669)
!684 = distinct !{!684, !671, !685, !99}
!685 = !DILocation(line: 438, column: 5, scope: !663)
!686 = !{!"312"}
!687 = !DILocation(line: 439, column: 1, scope: !644)
!688 = !{!"313"}
!689 = distinct !DISubprogram(name: "mbedtls_ct_hmac", scope: !1, file: !1, line: 567, type: !690, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!690 = !DISubroutineType(types: !691)
!691 = !{!20, !692, !571, !21, !571, !21, !21, !21, !570}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_context_t", file: !4, line: 103, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_md_context_t", file: !4, line: 93, size: 192, elements: !695)
!695 = !{!696, !701, !703}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "md_info", scope: !694, file: !4, line: 96, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_info_t", file: !4, line: 88, baseType: !700)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_md_info_t", file: !4, line: 88, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !694, file: !4, line: 99, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "hmac_ctx", scope: !694, file: !4, line: 102, baseType: !702, size: 64, offset: 128)
!704 = !{!"314"}
!705 = !{!"315"}
!706 = !DILocalVariable(name: "ctx", arg: 1, scope: !689, file: !1, line: 567, type: !692)
!707 = !DILocation(line: 0, scope: !689)
!708 = !{!"316"}
!709 = !DILocalVariable(name: "add_data", arg: 2, scope: !689, file: !1, line: 568, type: !571)
!710 = !{!"317"}
!711 = !DILocalVariable(name: "add_data_len", arg: 3, scope: !689, file: !1, line: 569, type: !21)
!712 = !{!"318"}
!713 = !DILocalVariable(name: "data", arg: 4, scope: !689, file: !1, line: 570, type: !571)
!714 = !{!"319"}
!715 = !DILocalVariable(name: "data_len_secret", arg: 5, scope: !689, file: !1, line: 571, type: !21)
!716 = !{!"320"}
!717 = !DILocalVariable(name: "min_data_len", arg: 6, scope: !689, file: !1, line: 572, type: !21)
!718 = !{!"321"}
!719 = !DILocalVariable(name: "max_data_len", arg: 7, scope: !689, file: !1, line: 573, type: !21)
!720 = !{!"322"}
!721 = !DILocalVariable(name: "output", arg: 8, scope: !689, file: !1, line: 574, type: !570)
!722 = !{!"323"}
!723 = !DILocation(line: 590, column: 64, scope: !689)
!724 = !{!"324"}
!725 = !{!"325"}
!726 = !DILocation(line: 590, column: 38, scope: !689)
!727 = !{!"326"}
!728 = !DILocalVariable(name: "md_alg", scope: !689, file: !1, line: 590, type: !729)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_type_t", file: !4, line: 64, baseType: !3)
!731 = !{!"327"}
!732 = !DILocation(line: 593, column: 38, scope: !689)
!733 = !{!"328"}
!734 = !DILocation(line: 593, column: 31, scope: !689)
!735 = !{!"329"}
!736 = !{!"330"}
!737 = !{!"331"}
!738 = !DILocalVariable(name: "block_size", scope: !689, file: !1, line: 593, type: !184)
!739 = !{!"332"}
!740 = !DILocation(line: 594, column: 45, scope: !689)
!741 = !{!"333"}
!742 = !{!"334"}
!743 = !DILocalVariable(name: "ikey", scope: !689, file: !1, line: 594, type: !744)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!745 = !{!"335"}
!746 = !DILocation(line: 595, column: 45, scope: !689)
!747 = !{!"336"}
!748 = !DILocalVariable(name: "okey", scope: !689, file: !1, line: 595, type: !744)
!749 = !{!"337"}
!750 = !DILocation(line: 596, column: 56, scope: !689)
!751 = !{!"338"}
!752 = !{!"339"}
!753 = !DILocation(line: 596, column: 30, scope: !689)
!754 = !{!"340"}
!755 = !{!"341"}
!756 = !DILocalVariable(name: "hash_size", scope: !689, file: !1, line: 596, type: !184)
!757 = !{!"342"}
!758 = !DILocalVariable(name: "aux_out", scope: !689, file: !1, line: 598, type: !759)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 64)
!762 = !DILocation(line: 598, column: 19, scope: !689)
!763 = !{!"343"}
!764 = !DILocalVariable(name: "aux", scope: !689, file: !1, line: 599, type: !693)
!765 = !DILocation(line: 599, column: 26, scope: !689)
!766 = !{!"344"}
!767 = !DILocalVariable(name: "ret", scope: !689, file: !1, line: 601, type: !20)
!768 = !{!"345"}
!769 = !DILocation(line: 603, column: 5, scope: !689)
!770 = !{!"346"}
!771 = !DILocation(line: 612, column: 5, scope: !689)
!772 = !{!"347"}
!773 = !DILocation(line: 612, column: 5, scope: !774)
!774 = distinct !DILexicalBlock(scope: !689, file: !1, line: 612, column: 5)
!775 = !{!"348"}
!776 = !{!"349"}
!777 = !{!"350"}
!778 = !{!"351"}
!779 = !DILocation(line: 612, column: 5, scope: !780)
!780 = distinct !DILexicalBlock(scope: !774, file: !1, line: 612, column: 5)
!781 = !{!"352"}
!782 = !{!"353"}
!783 = !{!"354"}
!784 = !{!"355"}
!785 = !DILocation(line: 616, column: 5, scope: !689)
!786 = !{!"356"}
!787 = !DILocation(line: 616, column: 5, scope: !788)
!788 = distinct !DILexicalBlock(scope: !689, file: !1, line: 616, column: 5)
!789 = !{!"357"}
!790 = !{!"358"}
!791 = !DILocation(line: 616, column: 5, scope: !792)
!792 = distinct !DILexicalBlock(scope: !788, file: !1, line: 616, column: 5)
!793 = !{!"359"}
!794 = !{!"360"}
!795 = !{!"361"}
!796 = !{!"362"}
!797 = !DILocation(line: 617, column: 5, scope: !689)
!798 = !{!"363"}
!799 = !DILocation(line: 617, column: 5, scope: !800)
!800 = distinct !DILexicalBlock(scope: !689, file: !1, line: 617, column: 5)
!801 = !{!"364"}
!802 = !{!"365"}
!803 = !DILocation(line: 617, column: 5, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !1, line: 617, column: 5)
!805 = !{!"366"}
!806 = !{!"367"}
!807 = !{!"368"}
!808 = !{!"369"}
!809 = !DILocation(line: 623, column: 5, scope: !689)
!810 = !{!"370"}
!811 = !DILocalVariable(name: "offset", scope: !689, file: !1, line: 600, type: !21)
!812 = !{!"371"}
!813 = !DILocation(line: 626, column: 10, scope: !814)
!814 = distinct !DILexicalBlock(scope: !689, file: !1, line: 626, column: 5)
!815 = !{!"372"}
!816 = !DILocation(line: 0, scope: !814)
!817 = !{!"373"}
!818 = !{!"374"}
!819 = !DILocation(line: 626, column: 40, scope: !820)
!820 = distinct !DILexicalBlock(scope: !814, file: !1, line: 626, column: 5)
!821 = !{!"375"}
!822 = !DILocation(line: 626, column: 5, scope: !814)
!823 = !{!"376"}
!824 = !DILocation(line: 628, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !820, file: !1, line: 627, column: 5)
!826 = !{!"377"}
!827 = !DILocation(line: 628, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !1, line: 628, column: 9)
!829 = !{!"378"}
!830 = !{!"379"}
!831 = !DILocation(line: 628, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !1, line: 628, column: 9)
!833 = !{!"380"}
!834 = !{!"381"}
!835 = !{!"382"}
!836 = !{!"383"}
!837 = !DILocation(line: 629, column: 9, scope: !825)
!838 = !{!"384"}
!839 = !DILocation(line: 629, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !825, file: !1, line: 629, column: 9)
!841 = !{!"385"}
!842 = !{!"386"}
!843 = !{!"387"}
!844 = !DILocation(line: 629, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !1, line: 629, column: 9)
!846 = !{!"388"}
!847 = !{!"389"}
!848 = !{!"390"}
!849 = !{!"391"}
!850 = !DILocation(line: 631, column: 42, scope: !825)
!851 = !{!"392"}
!852 = !DILocation(line: 631, column: 9, scope: !825)
!853 = !{!"393"}
!854 = !DILocation(line: 634, column: 20, scope: !855)
!855 = distinct !DILexicalBlock(scope: !825, file: !1, line: 634, column: 13)
!856 = !{!"394"}
!857 = !DILocation(line: 634, column: 13, scope: !825)
!858 = !{!"395"}
!859 = !DILocation(line: 635, column: 13, scope: !855)
!860 = !{!"396"}
!861 = !DILocation(line: 635, column: 13, scope: !862)
!862 = distinct !DILexicalBlock(scope: !855, file: !1, line: 635, column: 13)
!863 = !{!"397"}
!864 = !{!"398"}
!865 = !{!"399"}
!866 = !DILocation(line: 635, column: 13, scope: !867)
!867 = distinct !DILexicalBlock(scope: !862, file: !1, line: 635, column: 13)
!868 = !{!"400"}
!869 = !{!"401"}
!870 = !{!"402"}
!871 = !{!"403"}
!872 = !{!"404"}
!873 = !DILocation(line: 636, column: 5, scope: !825)
!874 = !{!"405"}
!875 = !DILocation(line: 626, column: 63, scope: !820)
!876 = !{!"406"}
!877 = !{!"407"}
!878 = !DILocation(line: 626, column: 5, scope: !820)
!879 = distinct !{!879, !822, !880, !99}
!880 = !DILocation(line: 636, column: 5, scope: !814)
!881 = !{!"408"}
!882 = !DILocation(line: 639, column: 5, scope: !689)
!883 = !{!"409"}
!884 = !DILocation(line: 639, column: 5, scope: !885)
!885 = distinct !DILexicalBlock(scope: !689, file: !1, line: 639, column: 5)
!886 = !{!"410"}
!887 = !{!"411"}
!888 = !{!"412"}
!889 = !DILocation(line: 639, column: 5, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !1, line: 639, column: 5)
!891 = !{!"413"}
!892 = !{!"414"}
!893 = !{!"415"}
!894 = !{!"416"}
!895 = !DILocation(line: 642, column: 5, scope: !689)
!896 = !{!"417"}
!897 = !DILocation(line: 642, column: 5, scope: !898)
!898 = distinct !DILexicalBlock(scope: !689, file: !1, line: 642, column: 5)
!899 = !{!"418"}
!900 = !{!"419"}
!901 = !DILocation(line: 642, column: 5, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !1, line: 642, column: 5)
!903 = !{!"420"}
!904 = !{!"421"}
!905 = !{!"422"}
!906 = !{!"423"}
!907 = !DILocation(line: 643, column: 5, scope: !689)
!908 = !{!"424"}
!909 = !DILocation(line: 643, column: 5, scope: !910)
!910 = distinct !DILexicalBlock(scope: !689, file: !1, line: 643, column: 5)
!911 = !{!"425"}
!912 = !{!"426"}
!913 = !DILocation(line: 643, column: 5, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !1, line: 643, column: 5)
!915 = !{!"427"}
!916 = !{!"428"}
!917 = !{!"429"}
!918 = !{!"430"}
!919 = !DILocation(line: 644, column: 5, scope: !689)
!920 = !{!"431"}
!921 = !DILocation(line: 644, column: 5, scope: !922)
!922 = distinct !DILexicalBlock(scope: !689, file: !1, line: 644, column: 5)
!923 = !{!"432"}
!924 = !{!"433"}
!925 = !DILocation(line: 644, column: 5, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !1, line: 644, column: 5)
!927 = !{!"434"}
!928 = !{!"435"}
!929 = !{!"436"}
!930 = !{!"437"}
!931 = !DILocation(line: 645, column: 5, scope: !689)
!932 = !{!"438"}
!933 = !DILocation(line: 645, column: 5, scope: !934)
!934 = distinct !DILexicalBlock(scope: !689, file: !1, line: 645, column: 5)
!935 = !{!"439"}
!936 = !{!"440"}
!937 = !DILocation(line: 645, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !1, line: 645, column: 5)
!939 = !{!"441"}
!940 = !{!"442"}
!941 = !{!"443"}
!942 = !{!"444"}
!943 = !DILocation(line: 648, column: 5, scope: !689)
!944 = !{!"445"}
!945 = !DILocation(line: 648, column: 5, scope: !946)
!946 = distinct !DILexicalBlock(scope: !689, file: !1, line: 648, column: 5)
!947 = !{!"446"}
!948 = !{!"447"}
!949 = !DILocation(line: 648, column: 5, scope: !950)
!950 = distinct !DILexicalBlock(scope: !946, file: !1, line: 648, column: 5)
!951 = !{!"448"}
!952 = !{!"449"}
!953 = !{!"450"}
!954 = !{!"451"}
!955 = !{!"452"}
!956 = !{!"453"}
!957 = !{!"454"}
!958 = !DILabel(scope: !689, name: "cleanup", file: !1, line: 652)
!959 = !DILocation(line: 652, column: 1, scope: !689)
!960 = !{!"455"}
!961 = !DILocation(line: 653, column: 5, scope: !689)
!962 = !{!"456"}
!963 = !DILocation(line: 654, column: 5, scope: !689)
!964 = !{!"457"}
!965 = distinct !DISubprogram(name: "mbedtls_mpi_safe_cond_assign", scope: !1, file: !1, line: 677, type: !966, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!966 = !DISubroutineType(types: !967)
!967 = !{!20, !968, !975, !19}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_mpi", file: !143, line: 227, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_mpi", file: !143, line: 203, size: 192, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !970, file: !143, line: 216, baseType: !20, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !970, file: !143, line: 219, baseType: !21, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !970, file: !143, line: 225, baseType: !285, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!977 = !DILocalVariable(name: "X", arg: 1, scope: !965, file: !1, line: 677, type: !968)
!978 = !DILocation(line: 0, scope: !965)
!979 = !{!"458"}
!980 = !DILocalVariable(name: "Y", arg: 2, scope: !965, file: !1, line: 678, type: !975)
!981 = !{!"459"}
!982 = !DILocalVariable(name: "assign", arg: 3, scope: !965, file: !1, line: 679, type: !19)
!983 = !{!"460"}
!984 = !DILocalVariable(name: "ret", scope: !965, file: !1, line: 681, type: !20)
!985 = !{!"461"}
!986 = !DILocation(line: 682, column: 5, scope: !965)
!987 = !{!"462"}
!988 = !DILocation(line: 682, column: 5, scope: !989)
!989 = distinct !DILexicalBlock(scope: !965, file: !1, line: 682, column: 5)
!990 = !{!"463"}
!991 = !DILocation(line: 683, column: 5, scope: !965)
!992 = !{!"464"}
!993 = !DILocation(line: 683, column: 5, scope: !994)
!994 = distinct !DILexicalBlock(scope: !965, file: !1, line: 683, column: 5)
!995 = !{!"465"}
!996 = !DILocation(line: 686, column: 60, scope: !965)
!997 = !{!"466"}
!998 = !DILocation(line: 686, column: 34, scope: !965)
!999 = !{!"467"}
!1000 = !DILocalVariable(name: "limb_mask", scope: !965, file: !1, line: 686, type: !142)
!1001 = !{!"468"}
!1002 = !DILocation(line: 688, column: 5, scope: !965)
!1003 = !{!"469"}
!1004 = !DILocation(line: 688, column: 5, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 688, column: 5)
!1006 = distinct !DILexicalBlock(scope: !965, file: !1, line: 688, column: 5)
!1007 = !{!"470"}
!1008 = !{!"471"}
!1009 = !{!"472"}
!1010 = !{!"473"}
!1011 = !{!"474"}
!1012 = !DILocation(line: 688, column: 5, scope: !1006)
!1013 = !{!"475"}
!1014 = !{!"476"}
!1015 = !{!"477"}
!1016 = !DILocation(line: 690, column: 52, scope: !965)
!1017 = !{!"478"}
!1018 = !{!"479"}
!1019 = !DILocation(line: 690, column: 58, scope: !965)
!1020 = !{!"480"}
!1021 = !{!"481"}
!1022 = !DILocation(line: 690, column: 12, scope: !965)
!1023 = !{!"482"}
!1024 = !DILocation(line: 690, column: 8, scope: !965)
!1025 = !{!"483"}
!1026 = !DILocation(line: 690, column: 10, scope: !965)
!1027 = !{!"484"}
!1028 = !DILocation(line: 692, column: 38, scope: !965)
!1029 = !{!"485"}
!1030 = !{!"486"}
!1031 = !DILocation(line: 692, column: 44, scope: !965)
!1032 = !{!"487"}
!1033 = !{!"488"}
!1034 = !DILocation(line: 692, column: 50, scope: !965)
!1035 = !{!"489"}
!1036 = !{!"490"}
!1037 = !DILocation(line: 692, column: 5, scope: !965)
!1038 = !{!"491"}
!1039 = !DILocation(line: 694, column: 24, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !965, file: !1, line: 694, column: 5)
!1041 = !{!"492"}
!1042 = !{!"493"}
!1043 = !DILocalVariable(name: "i", scope: !1040, file: !1, line: 694, type: !21)
!1044 = !DILocation(line: 0, scope: !1040)
!1045 = !{!"494"}
!1046 = !DILocation(line: 694, column: 10, scope: !1040)
!1047 = !{!"495"}
!1048 = !{!"496"}
!1049 = !{!"497"}
!1050 = !DILocation(line: 694, column: 34, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 694, column: 5)
!1052 = !{!"498"}
!1053 = !{!"499"}
!1054 = !DILocation(line: 694, column: 29, scope: !1051)
!1055 = !{!"500"}
!1056 = !DILocation(line: 694, column: 5, scope: !1040)
!1057 = !{!"501"}
!1058 = !DILocation(line: 695, column: 20, scope: !1051)
!1059 = !{!"502"}
!1060 = !DILocation(line: 695, column: 12, scope: !1051)
!1061 = !{!"503"}
!1062 = !{!"504"}
!1063 = !DILocation(line: 695, column: 9, scope: !1051)
!1064 = !{!"505"}
!1065 = !DILocation(line: 695, column: 17, scope: !1051)
!1066 = !{!"506"}
!1067 = !{!"507"}
!1068 = !{!"508"}
!1069 = !{!"509"}
!1070 = !DILocation(line: 694, column: 38, scope: !1051)
!1071 = !{!"510"}
!1072 = !{!"511"}
!1073 = !DILocation(line: 694, column: 5, scope: !1051)
!1074 = distinct !{!1074, !1056, !1075, !99}
!1075 = !DILocation(line: 695, column: 21, scope: !1040)
!1076 = !{!"512"}
!1077 = !{!"513"}
!1078 = !DILabel(scope: !965, name: "cleanup", file: !1, line: 697)
!1079 = !DILocation(line: 697, column: 1, scope: !965)
!1080 = !{!"514"}
!1081 = !DILocation(line: 698, column: 5, scope: !965)
!1082 = !{!"515"}
!1083 = distinct !DISubprogram(name: "mbedtls_ct_cond_select_sign", scope: !1, file: !1, line: 282, type: !1084, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!20, !19, !20, !20}
!1086 = !DILocalVariable(name: "condition", arg: 1, scope: !1083, file: !1, line: 282, type: !19)
!1087 = !DILocation(line: 0, scope: !1083)
!1088 = !{!"516"}
!1089 = !DILocalVariable(name: "if1", arg: 2, scope: !1083, file: !1, line: 283, type: !20)
!1090 = !{!"517"}
!1091 = !DILocalVariable(name: "if0", arg: 3, scope: !1083, file: !1, line: 284, type: !20)
!1092 = !{!"518"}
!1093 = !DILocation(line: 289, column: 25, scope: !1083)
!1094 = !{!"519"}
!1095 = !DILocalVariable(name: "uif1", scope: !1083, file: !1, line: 289, type: !5)
!1096 = !{!"520"}
!1097 = !DILocation(line: 290, column: 25, scope: !1083)
!1098 = !{!"521"}
!1099 = !DILocalVariable(name: "uif0", scope: !1083, file: !1, line: 290, type: !5)
!1100 = !{!"522"}
!1101 = !DILocation(line: 293, column: 27, scope: !1083)
!1102 = !{!"523"}
!1103 = !DILocation(line: 293, column: 37, scope: !1083)
!1104 = !{!"524"}
!1105 = !DILocalVariable(name: "mask", scope: !1083, file: !1, line: 293, type: !219)
!1106 = !{!"525"}
!1107 = !DILocation(line: 296, column: 28, scope: !1083)
!1108 = !{!"526"}
!1109 = !DILocation(line: 296, column: 26, scope: !1083)
!1110 = !{!"527"}
!1111 = !DILocation(line: 296, column: 45, scope: !1083)
!1112 = !{!"528"}
!1113 = !DILocation(line: 296, column: 36, scope: !1083)
!1114 = !{!"529"}
!1115 = !DILocalVariable(name: "ur", scope: !1083, file: !1, line: 296, type: !5)
!1116 = !{!"530"}
!1117 = !DILocation(line: 299, column: 22, scope: !1083)
!1118 = !{!"531"}
!1119 = !DILocation(line: 299, column: 5, scope: !1083)
!1120 = !{!"532"}
!1121 = distinct !DISubprogram(name: "mbedtls_mpi_safe_cond_swap", scope: !1, file: !1, line: 707, type: !1122, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!20, !968, !968, !19}
!1124 = !DILocalVariable(name: "X", arg: 1, scope: !1121, file: !1, line: 707, type: !968)
!1125 = !DILocation(line: 0, scope: !1121)
!1126 = !{!"533"}
!1127 = !DILocalVariable(name: "Y", arg: 2, scope: !1121, file: !1, line: 708, type: !968)
!1128 = !{!"534"}
!1129 = !DILocalVariable(name: "swap", arg: 3, scope: !1121, file: !1, line: 709, type: !19)
!1130 = !{!"535"}
!1131 = !DILocalVariable(name: "ret", scope: !1121, file: !1, line: 711, type: !20)
!1132 = !{!"536"}
!1133 = !DILocation(line: 713, column: 5, scope: !1121)
!1134 = !{!"537"}
!1135 = !DILocation(line: 713, column: 5, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 713, column: 5)
!1137 = !{!"538"}
!1138 = !DILocation(line: 714, column: 5, scope: !1121)
!1139 = !{!"539"}
!1140 = !DILocation(line: 714, column: 5, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 714, column: 5)
!1142 = !{!"540"}
!1143 = !DILocation(line: 716, column: 11, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 716, column: 9)
!1145 = !{!"541"}
!1146 = !DILocation(line: 716, column: 9, scope: !1121)
!1147 = !{!"542"}
!1148 = !DILocation(line: 717, column: 9, scope: !1144)
!1149 = !{!"543"}
!1150 = !DILocation(line: 719, column: 5, scope: !1121)
!1151 = !{!"544"}
!1152 = !DILocation(line: 719, column: 5, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 719, column: 5)
!1154 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 719, column: 5)
!1155 = !{!"545"}
!1156 = !{!"546"}
!1157 = !{!"547"}
!1158 = !{!"548"}
!1159 = !{!"549"}
!1160 = !DILocation(line: 719, column: 5, scope: !1154)
!1161 = !{!"550"}
!1162 = !{!"551"}
!1163 = !{!"552"}
!1164 = !DILocation(line: 720, column: 5, scope: !1121)
!1165 = !{!"553"}
!1166 = !DILocation(line: 720, column: 5, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !1, line: 720, column: 5)
!1168 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 720, column: 5)
!1169 = !{!"554"}
!1170 = !{!"555"}
!1171 = !{!"556"}
!1172 = !{!"557"}
!1173 = !{!"558"}
!1174 = !DILocation(line: 720, column: 5, scope: !1168)
!1175 = !{!"559"}
!1176 = !{!"560"}
!1177 = !{!"561"}
!1178 = !DILocation(line: 722, column: 12, scope: !1121)
!1179 = !{!"562"}
!1180 = !{!"563"}
!1181 = !DILocalVariable(name: "s", scope: !1121, file: !1, line: 712, type: !20)
!1182 = !{!"564"}
!1183 = !DILocation(line: 723, column: 50, scope: !1121)
!1184 = !{!"565"}
!1185 = !{!"566"}
!1186 = !DILocation(line: 723, column: 56, scope: !1121)
!1187 = !{!"567"}
!1188 = !{!"568"}
!1189 = !DILocation(line: 723, column: 12, scope: !1121)
!1190 = !{!"569"}
!1191 = !DILocation(line: 723, column: 8, scope: !1121)
!1192 = !{!"570"}
!1193 = !DILocation(line: 723, column: 10, scope: !1121)
!1194 = !{!"571"}
!1195 = !DILocation(line: 724, column: 53, scope: !1121)
!1196 = !{!"572"}
!1197 = !{!"573"}
!1198 = !DILocation(line: 724, column: 12, scope: !1121)
!1199 = !{!"574"}
!1200 = !DILocation(line: 724, column: 8, scope: !1121)
!1201 = !{!"575"}
!1202 = !DILocation(line: 724, column: 10, scope: !1121)
!1203 = !{!"576"}
!1204 = !DILocation(line: 726, column: 36, scope: !1121)
!1205 = !{!"577"}
!1206 = !{!"578"}
!1207 = !DILocation(line: 726, column: 42, scope: !1121)
!1208 = !{!"579"}
!1209 = !{!"580"}
!1210 = !DILocation(line: 726, column: 48, scope: !1121)
!1211 = !{!"581"}
!1212 = !{!"582"}
!1213 = !DILocation(line: 726, column: 5, scope: !1121)
!1214 = !{!"583"}
!1215 = !{!"584"}
!1216 = !{!"585"}
!1217 = !{!"586"}
!1218 = !DILabel(scope: !1121, name: "cleanup", file: !1, line: 728)
!1219 = !DILocation(line: 728, column: 1, scope: !1121)
!1220 = !{!"587"}
!1221 = !DILocation(line: 729, column: 5, scope: !1121)
!1222 = !{!"588"}
!1223 = !{!"589"}
!1224 = !DILocation(line: 730, column: 1, scope: !1121)
!1225 = !{!"590"}
!1226 = distinct !DISubprogram(name: "mbedtls_mpi_core_lt_ct", scope: !1, file: !1, line: 735, type: !1227, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!5, !286, !286, !21}
!1229 = !DILocalVariable(name: "A", arg: 1, scope: !1226, file: !1, line: 735, type: !286)
!1230 = !DILocation(line: 0, scope: !1226)
!1231 = !{!"591"}
!1232 = !DILocalVariable(name: "B", arg: 2, scope: !1226, file: !1, line: 736, type: !286)
!1233 = !{!"592"}
!1234 = !DILocalVariable(name: "limbs", arg: 3, scope: !1226, file: !1, line: 737, type: !21)
!1235 = !{!"593"}
!1236 = !DILocalVariable(name: "done", scope: !1226, file: !1, line: 739, type: !5)
!1237 = !{!"594"}
!1238 = !DILocalVariable(name: "cond", scope: !1226, file: !1, line: 739, type: !5)
!1239 = !{!"595"}
!1240 = !DILocalVariable(name: "ret", scope: !1226, file: !1, line: 739, type: !5)
!1241 = !{!"596"}
!1242 = !DILocalVariable(name: "i", scope: !1243, file: !1, line: 745, type: !21)
!1243 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 745, column: 5)
!1244 = !DILocation(line: 0, scope: !1243)
!1245 = !{!"597"}
!1246 = !DILocation(line: 745, column: 10, scope: !1243)
!1247 = !{!"598"}
!1248 = !{!"599"}
!1249 = !{!"600"}
!1250 = !{!"601"}
!1251 = !{!"602"}
!1252 = !{!"603"}
!1253 = !{!"604"}
!1254 = !DILocation(line: 745, column: 30, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 745, column: 5)
!1256 = !{!"605"}
!1257 = !DILocation(line: 745, column: 5, scope: !1243)
!1258 = !{!"606"}
!1259 = !DILocation(line: 754, column: 44, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 746, column: 5)
!1261 = !{!"607"}
!1262 = !DILocation(line: 754, column: 40, scope: !1260)
!1263 = !{!"608"}
!1264 = !{!"609"}
!1265 = !DILocation(line: 754, column: 54, scope: !1260)
!1266 = !{!"610"}
!1267 = !DILocation(line: 754, column: 50, scope: !1260)
!1268 = !{!"611"}
!1269 = !{!"612"}
!1270 = !DILocation(line: 754, column: 16, scope: !1260)
!1271 = !{!"613"}
!1272 = !{!"614"}
!1273 = !DILocation(line: 755, column: 14, scope: !1260)
!1274 = !{!"615"}
!1275 = !{!"616"}
!1276 = !DILocation(line: 763, column: 44, scope: !1260)
!1277 = !{!"617"}
!1278 = !DILocation(line: 763, column: 40, scope: !1260)
!1279 = !{!"618"}
!1280 = !{!"619"}
!1281 = !DILocation(line: 763, column: 54, scope: !1260)
!1282 = !{!"620"}
!1283 = !DILocation(line: 763, column: 50, scope: !1260)
!1284 = !{!"621"}
!1285 = !{!"622"}
!1286 = !DILocation(line: 763, column: 16, scope: !1260)
!1287 = !{!"623"}
!1288 = !{!"624"}
!1289 = !DILocation(line: 764, column: 27, scope: !1260)
!1290 = !{!"625"}
!1291 = !DILocation(line: 764, column: 21, scope: !1260)
!1292 = !{!"626"}
!1293 = !DILocation(line: 764, column: 13, scope: !1260)
!1294 = !{!"627"}
!1295 = !{!"628"}
!1296 = !DILocation(line: 765, column: 14, scope: !1260)
!1297 = !{!"629"}
!1298 = !{!"630"}
!1299 = !DILocation(line: 766, column: 5, scope: !1260)
!1300 = !{!"631"}
!1301 = !DILocation(line: 745, column: 36, scope: !1255)
!1302 = !{!"632"}
!1303 = !{!"633"}
!1304 = !DILocation(line: 745, column: 5, scope: !1255)
!1305 = distinct !{!1305, !1257, !1306, !99}
!1306 = !DILocation(line: 766, column: 5, scope: !1243)
!1307 = !{!"634"}
!1308 = !DILocation(line: 773, column: 5, scope: !1226)
!1309 = !{!"635"}
!1310 = distinct !DISubprogram(name: "mbedtls_mpi_lt_mpi_ct", scope: !1, file: !1, line: 779, type: !1311, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!20, !975, !975, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1314 = !DILocalVariable(name: "X", arg: 1, scope: !1310, file: !1, line: 779, type: !975)
!1315 = !DILocation(line: 0, scope: !1310)
!1316 = !{!"636"}
!1317 = !DILocalVariable(name: "Y", arg: 2, scope: !1310, file: !1, line: 780, type: !975)
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
!1468 = distinct !{!1468, !1393, !1469, !99}
!1469 = !DILocation(line: 838, column: 5, scope: !1378)
!1470 = !{!"721"}
!1471 = !DILocation(line: 840, column: 5, scope: !1310)
!1472 = !{!"722"}
!1473 = !{!"723"}
!1474 = !DILocation(line: 841, column: 1, scope: !1310)
!1475 = !{!"724"}
!1476 = distinct !DISubprogram(name: "mbedtls_ct_rsaes_pkcs1_v15_unpadding", scope: !1, file: !1, line: 847, type: !1477, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!20, !570, !21, !570, !21, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1480 = !DILocalVariable(name: "input", arg: 1, scope: !1476, file: !1, line: 847, type: !570)
!1481 = !DILocation(line: 0, scope: !1476)
!1482 = !{!"725"}
!1483 = !DILocalVariable(name: "ilen", arg: 2, scope: !1476, file: !1, line: 848, type: !21)
!1484 = !{!"726"}
!1485 = !DILocalVariable(name: "output", arg: 3, scope: !1476, file: !1, line: 849, type: !570)
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
!1598 = distinct !{!1598, !1545, !1599, !99}
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
!1668 = distinct !{!1668, !1651, !1669, !99}
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
!1705 = distinct !DISubprogram(name: "mbedtls_ct_size_gt", scope: !1, file: !1, line: 217, type: !197, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
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
!1721 = !{null, !702, !21, !21}
!1722 = !DILocalVariable(name: "start", arg: 1, scope: !1719, file: !1, line: 382, type: !702)
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
!1806 = distinct !{!1806, !1773, !1807, !99}
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
!1830 = distinct !{!1830, !1750, !1831, !99}
!1831 = !DILocation(line: 403, column: 5, scope: !1742)
!1832 = !{!"912"}
!1833 = !DILocation(line: 404, column: 1, scope: !1719)
!1834 = !{!"913"}
!1835 = distinct !DISubprogram(name: "mbedtls_ct_uint_mask_wrapper", scope: !25, file: !25, line: 3, type: !1836, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!20, !5}
!1838 = !DILocalVariable(name: "value", arg: 1, scope: !1835, file: !25, line: 3, type: !5)
!1839 = !DILocation(line: 0, scope: !1835)
!1840 = !{!"914"}
!1841 = !DILocation(line: 5, column: 2, scope: !1835)
!1842 = !{!"915"}
!1843 = !DILocation(line: 7, column: 1, scope: !1835)
!1844 = !{!"916"}
!1845 = distinct !DISubprogram(name: "mbedtls_ct_uint_mask_wrapper_t", scope: !25, file: !25, line: 13, type: !1846, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null}
!1848 = !DILocation(line: 14, column: 17, scope: !1845)
!1849 = !{!"917"}
!1850 = !DILocalVariable(name: "value", scope: !1845, file: !25, line: 14, type: !21)
!1851 = !DILocation(line: 0, scope: !1845)
!1852 = !{!"918"}
!1853 = !DILocation(line: 18, column: 2, scope: !1845)
!1854 = !{!"919"}
!1855 = !DILocation(line: 19, column: 1, scope: !1845)
!1856 = !{!"920"}
