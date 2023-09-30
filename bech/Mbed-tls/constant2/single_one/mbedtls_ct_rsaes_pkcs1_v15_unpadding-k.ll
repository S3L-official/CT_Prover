; ModuleID = 'mbedtls_ct_rsaes_pkcs1_v15_unpadding.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_md_context_t = type { %struct.mbedtls_md_info_t*, i8*, i8* }
%struct.mbedtls_md_info_t = type opaque
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !31 {
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i8* %1, metadata !38, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i64 %2, metadata !39, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i8* %0, metadata !40, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i8* %1, metadata !41, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i8* %4, metadata !42, metadata !DIExpression()), !dbg !43
  store volatile i8 0, i8* %4, align 1, !dbg !43
  call void @llvm.dbg.value(metadata i64 0, metadata !44, metadata !DIExpression()), !dbg !37
  br label %5, !dbg !45

5:                                                ; preds = %19, %3
  %.0 = phi i64 [ 0, %3 ], [ %20, %19 ], !dbg !47
  call void @llvm.dbg.value(metadata i64 %.0, metadata !44, metadata !DIExpression()), !dbg !37
  %6 = icmp ult i64 %.0, %2, !dbg !48
  br i1 %6, label %7, label %21, !dbg !50

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !51
  %9 = load volatile i8, i8* %8, align 1, !dbg !51
  call void @llvm.dbg.value(metadata i8 %9, metadata !53, metadata !DIExpression()), !dbg !54
  %10 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !55
  %11 = load volatile i8, i8* %10, align 1, !dbg !55
  call void @llvm.dbg.value(metadata i8 %11, metadata !56, metadata !DIExpression()), !dbg !54
  %12 = zext i8 %9 to i32, !dbg !57
  %13 = zext i8 %11 to i32, !dbg !58
  %14 = xor i32 %12, %13, !dbg !59
  %15 = load volatile i8, i8* %4, align 1, !dbg !60
  %16 = zext i8 %15 to i32, !dbg !60
  %17 = or i32 %16, %14, !dbg !60
  %18 = trunc i32 %17 to i8, !dbg !60
  store volatile i8 %18, i8* %4, align 1, !dbg !60
  br label %19, !dbg !61

19:                                               ; preds = %7
  %20 = add i64 %.0, 1, !dbg !62
  call void @llvm.dbg.value(metadata i64 %20, metadata !44, metadata !DIExpression()), !dbg !37
  br label %5, !dbg !63, !llvm.loop !64

21:                                               ; preds = %5
  %22 = load volatile i8, i8* %4, align 1, !dbg !67
  %23 = zext i8 %22 to i32, !dbg !68
  ret i32 %23, !dbg !69
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_uint_mask(i32 %0) #0 !dbg !70 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !73, metadata !DIExpression()), !dbg !74
  %2 = sub i32 0, %0, !dbg !75
  %3 = or i32 %0, %2, !dbg !76
  %4 = lshr i32 %3, 31, !dbg !77
  %5 = sub i32 0, %4, !dbg !78
  ret i32 %5, !dbg !79
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_size_mask(i64 %0) #0 !dbg !80 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !83, metadata !DIExpression()), !dbg !84
  %2 = sub i64 0, %0, !dbg !85
  %3 = or i64 %0, %2, !dbg !86
  %4 = lshr i64 %3, 63, !dbg !87
  %5 = sub i64 0, %4, !dbg !88
  ret i64 %5, !dbg !89
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_mpi_uint_mask(i64 %0) #0 !dbg !90 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !99, metadata !DIExpression()), !dbg !100
  %2 = sub i64 0, %0, !dbg !101
  %3 = or i64 %0, %2, !dbg !102
  %4 = lshr i64 %3, 63, !dbg !103
  %5 = sub i64 0, %4, !dbg !104
  ret i64 %5, !dbg !105
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mbedtls_ct_size_mask_ge(i64 %0, i64 %1) #0 !dbg !106 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata i64 %1, metadata !111, metadata !DIExpression()), !dbg !110
  %3 = call i64 @mbedtls_ct_size_mask_lt(i64 %0, i64 %1), !dbg !112
  %4 = xor i64 %3, -1, !dbg !113
  ret i64 %4, !dbg !114
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @mbedtls_ct_size_mask_lt(i64 %0, i64 %1) #0 !dbg !115 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i64 %1, metadata !118, metadata !DIExpression()), !dbg !117
  %3 = sub i64 %0, %1, !dbg !119
  call void @llvm.dbg.value(metadata i64 %3, metadata !120, metadata !DIExpression()), !dbg !117
  %4 = lshr i64 %3, 63, !dbg !122
  call void @llvm.dbg.value(metadata i64 %4, metadata !123, metadata !DIExpression()), !dbg !117
  %5 = call i64 @mbedtls_ct_size_mask(i64 %4), !dbg !124
  call void @llvm.dbg.value(metadata i64 %5, metadata !125, metadata !DIExpression()), !dbg !117
  ret i64 %5, !dbg !126
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_size_bool_eq(i64 %0, i64 %1) #0 !dbg !127 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i64 %1, metadata !132, metadata !DIExpression()), !dbg !131
  %3 = xor i64 %0, %1, !dbg !133
  call void @llvm.dbg.value(metadata i64 %3, metadata !134, metadata !DIExpression()), !dbg !131
  %4 = sub i64 0, %3, !dbg !135
  %5 = or i64 %3, %4, !dbg !136
  call void @llvm.dbg.value(metadata i64 %5, metadata !137, metadata !DIExpression()), !dbg !131
  %6 = lshr i64 %5, 63, !dbg !138
  %7 = trunc i64 %6 to i32, !dbg !139
  call void @llvm.dbg.value(metadata i32 %7, metadata !140, metadata !DIExpression()), !dbg !131
  %8 = xor i32 1, %7, !dbg !142
  ret i32 %8, !dbg !143
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_mpi_uint_lt(i64 %0, i64 %1) #0 !dbg !144 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i64 %1, metadata !150, metadata !DIExpression()), !dbg !149
  %3 = xor i64 %0, %1, !dbg !151
  call void @llvm.dbg.value(metadata i64 %3, metadata !152, metadata !DIExpression()), !dbg !149
  %4 = sub i64 %0, %1, !dbg !153
  %5 = xor i64 %3, -1, !dbg !154
  %6 = and i64 %4, %5, !dbg !155
  call void @llvm.dbg.value(metadata i64 %6, metadata !156, metadata !DIExpression()), !dbg !149
  %7 = and i64 %1, %3, !dbg !157
  %8 = or i64 %6, %7, !dbg !158
  call void @llvm.dbg.value(metadata i64 %8, metadata !156, metadata !DIExpression()), !dbg !149
  %9 = lshr i64 %8, 63, !dbg !159
  call void @llvm.dbg.value(metadata i64 %9, metadata !156, metadata !DIExpression()), !dbg !149
  %10 = trunc i64 %9 to i32, !dbg !160
  ret i32 %10, !dbg !161
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_uint_if(i32 %0, i32 %1, i32 %2) #0 !dbg !162 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i32 %1, metadata !167, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i32 %2, metadata !168, metadata !DIExpression()), !dbg !166
  %4 = call i32 @mbedtls_ct_uint_mask(i32 %0), !dbg !169
  call void @llvm.dbg.value(metadata i32 %4, metadata !170, metadata !DIExpression()), !dbg !166
  %5 = and i32 %4, %1, !dbg !171
  %6 = xor i32 %4, -1, !dbg !172
  %7 = and i32 %6, %2, !dbg !173
  %8 = or i32 %5, %7, !dbg !174
  ret i32 %8, !dbg !175
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_mpi_uint_cond_assign(i64 %0, i64* %1, i64* %2, i8 zeroext %3) #0 !dbg !176 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i64* %1, metadata !183, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i64* %2, metadata !184, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i8 %3, metadata !185, metadata !DIExpression()), !dbg !182
  %5 = zext i8 %3 to i32, !dbg !186
  %6 = sub nsw i32 0, %5, !dbg !187
  %7 = sext i32 %6 to i64, !dbg !187
  call void @llvm.dbg.value(metadata i64 %7, metadata !188, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i64 0, metadata !189, metadata !DIExpression()), !dbg !182
  br label %8, !dbg !190

8:                                                ; preds = %20, %4
  %.0 = phi i64 [ 0, %4 ], [ %21, %20 ], !dbg !192
  call void @llvm.dbg.value(metadata i64 %.0, metadata !189, metadata !DIExpression()), !dbg !182
  %9 = icmp ult i64 %.0, %0, !dbg !193
  br i1 %9, label %10, label %22, !dbg !195

10:                                               ; preds = %8
  %11 = getelementptr inbounds i64, i64* %2, i64 %.0, !dbg !196
  %12 = load i64, i64* %11, align 8, !dbg !196
  %13 = and i64 %12, %7, !dbg !197
  %14 = getelementptr inbounds i64, i64* %1, i64 %.0, !dbg !198
  %15 = load i64, i64* %14, align 8, !dbg !198
  %16 = xor i64 %7, -1, !dbg !199
  %17 = and i64 %15, %16, !dbg !200
  %18 = or i64 %13, %17, !dbg !201
  %19 = getelementptr inbounds i64, i64* %1, i64 %.0, !dbg !202
  store i64 %18, i64* %19, align 8, !dbg !203
  br label %20, !dbg !202

20:                                               ; preds = %10
  %21 = add i64 %.0, 1, !dbg !204
  call void @llvm.dbg.value(metadata i64 %21, metadata !189, metadata !DIExpression()), !dbg !182
  br label %8, !dbg !205, !llvm.loop !206

22:                                               ; preds = %8
  ret void, !dbg !208
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @mbedtls_ct_base64_enc_char(i8 zeroext %0) #0 !dbg !209 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i8 0, metadata !214, metadata !DIExpression()), !dbg !213
  %2 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 0, i8 zeroext 25, i8 zeroext %0), !dbg !215
  %3 = zext i8 %2 to i32, !dbg !215
  %4 = zext i8 %0 to i32, !dbg !216
  %5 = add nsw i32 65, %4, !dbg !217
  %6 = and i32 %3, %5, !dbg !218
  %7 = zext i8 0 to i32, !dbg !219
  %8 = or i32 %7, %6, !dbg !219
  %9 = trunc i32 %8 to i8, !dbg !219
  call void @llvm.dbg.value(metadata i8 %9, metadata !214, metadata !DIExpression()), !dbg !213
  %10 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 26, i8 zeroext 51, i8 zeroext %0), !dbg !220
  %11 = zext i8 %10 to i32, !dbg !220
  %12 = zext i8 %0 to i32, !dbg !221
  %13 = add nsw i32 97, %12, !dbg !222
  %14 = sub nsw i32 %13, 26, !dbg !223
  %15 = and i32 %11, %14, !dbg !224
  %16 = zext i8 %9 to i32, !dbg !225
  %17 = or i32 %16, %15, !dbg !225
  %18 = trunc i32 %17 to i8, !dbg !225
  call void @llvm.dbg.value(metadata i8 %18, metadata !214, metadata !DIExpression()), !dbg !213
  %19 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 52, i8 zeroext 61, i8 zeroext %0), !dbg !226
  %20 = zext i8 %19 to i32, !dbg !226
  %21 = zext i8 %0 to i32, !dbg !227
  %22 = add nsw i32 48, %21, !dbg !228
  %23 = sub nsw i32 %22, 52, !dbg !229
  %24 = and i32 %20, %23, !dbg !230
  %25 = zext i8 %18 to i32, !dbg !231
  %26 = or i32 %25, %24, !dbg !231
  %27 = trunc i32 %26 to i8, !dbg !231
  call void @llvm.dbg.value(metadata i8 %27, metadata !214, metadata !DIExpression()), !dbg !213
  %28 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 62, i8 zeroext 62, i8 zeroext %0), !dbg !232
  %29 = zext i8 %28 to i32, !dbg !232
  %30 = and i32 %29, 43, !dbg !233
  %31 = zext i8 %27 to i32, !dbg !234
  %32 = or i32 %31, %30, !dbg !234
  %33 = trunc i32 %32 to i8, !dbg !234
  call void @llvm.dbg.value(metadata i8 %33, metadata !214, metadata !DIExpression()), !dbg !213
  %34 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 63, i8 zeroext 63, i8 zeroext %0), !dbg !235
  %35 = zext i8 %34 to i32, !dbg !235
  %36 = and i32 %35, 47, !dbg !236
  %37 = zext i8 %33 to i32, !dbg !237
  %38 = or i32 %37, %36, !dbg !237
  %39 = trunc i32 %38 to i8, !dbg !237
  call void @llvm.dbg.value(metadata i8 %39, metadata !214, metadata !DIExpression()), !dbg !213
  ret i8 %39, !dbg !238
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2) #0 !dbg !239 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i8 %1, metadata !244, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i8 %2, metadata !245, metadata !DIExpression()), !dbg !243
  %4 = zext i8 %2 to i32, !dbg !246
  %5 = zext i8 %0 to i32, !dbg !247
  %6 = sub i32 %4, %5, !dbg !248
  %7 = lshr i32 %6, 8, !dbg !249
  call void @llvm.dbg.value(metadata i32 %7, metadata !250, metadata !DIExpression()), !dbg !243
  %8 = zext i8 %1 to i32, !dbg !251
  %9 = zext i8 %2 to i32, !dbg !252
  %10 = sub i32 %8, %9, !dbg !253
  %11 = lshr i32 %10, 8, !dbg !254
  call void @llvm.dbg.value(metadata i32 %11, metadata !255, metadata !DIExpression()), !dbg !243
  %12 = or i32 %7, %11, !dbg !256
  %13 = xor i32 %12, -1, !dbg !257
  %14 = and i32 %13, 255, !dbg !258
  %15 = trunc i32 %14 to i8, !dbg !259
  ret i8 %15, !dbg !260
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @mbedtls_ct_base64_dec_value(i8 zeroext %0) #0 !dbg !261 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8 0, metadata !267, metadata !DIExpression()), !dbg !266
  %2 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 65, i8 zeroext 90, i8 zeroext %0), !dbg !268
  %3 = zext i8 %2 to i32, !dbg !268
  %4 = zext i8 %0 to i32, !dbg !269
  %5 = sub nsw i32 %4, 65, !dbg !270
  %6 = add nsw i32 %5, 0, !dbg !271
  %7 = add nsw i32 %6, 1, !dbg !272
  %8 = and i32 %3, %7, !dbg !273
  %9 = zext i8 0 to i32, !dbg !274
  %10 = or i32 %9, %8, !dbg !274
  %11 = trunc i32 %10 to i8, !dbg !274
  call void @llvm.dbg.value(metadata i8 %11, metadata !267, metadata !DIExpression()), !dbg !266
  %12 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 97, i8 zeroext 122, i8 zeroext %0), !dbg !275
  %13 = zext i8 %12 to i32, !dbg !275
  %14 = zext i8 %0 to i32, !dbg !276
  %15 = sub nsw i32 %14, 97, !dbg !277
  %16 = add nsw i32 %15, 26, !dbg !278
  %17 = add nsw i32 %16, 1, !dbg !279
  %18 = and i32 %13, %17, !dbg !280
  %19 = zext i8 %11 to i32, !dbg !281
  %20 = or i32 %19, %18, !dbg !281
  %21 = trunc i32 %20 to i8, !dbg !281
  call void @llvm.dbg.value(metadata i8 %21, metadata !267, metadata !DIExpression()), !dbg !266
  %22 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 48, i8 zeroext 57, i8 zeroext %0), !dbg !282
  %23 = zext i8 %22 to i32, !dbg !282
  %24 = zext i8 %0 to i32, !dbg !283
  %25 = sub nsw i32 %24, 48, !dbg !284
  %26 = add nsw i32 %25, 52, !dbg !285
  %27 = add nsw i32 %26, 1, !dbg !286
  %28 = and i32 %23, %27, !dbg !287
  %29 = zext i8 %21 to i32, !dbg !288
  %30 = or i32 %29, %28, !dbg !288
  %31 = trunc i32 %30 to i8, !dbg !288
  call void @llvm.dbg.value(metadata i8 %31, metadata !267, metadata !DIExpression()), !dbg !266
  %32 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 43, i8 zeroext 43, i8 zeroext %0), !dbg !289
  %33 = zext i8 %32 to i32, !dbg !289
  %34 = zext i8 %0 to i32, !dbg !290
  %35 = sub nsw i32 %34, 43, !dbg !291
  %36 = add nsw i32 %35, 62, !dbg !292
  %37 = add nsw i32 %36, 1, !dbg !293
  %38 = and i32 %33, %37, !dbg !294
  %39 = zext i8 %31 to i32, !dbg !295
  %40 = or i32 %39, %38, !dbg !295
  %41 = trunc i32 %40 to i8, !dbg !295
  call void @llvm.dbg.value(metadata i8 %41, metadata !267, metadata !DIExpression()), !dbg !266
  %42 = call zeroext i8 @mbedtls_ct_uchar_mask_of_range(i8 zeroext 47, i8 zeroext 47, i8 zeroext %0), !dbg !296
  %43 = zext i8 %42 to i32, !dbg !296
  %44 = zext i8 %0 to i32, !dbg !297
  %45 = sub nsw i32 %44, 47, !dbg !298
  %46 = add nsw i32 %45, 63, !dbg !299
  %47 = add nsw i32 %46, 1, !dbg !300
  %48 = and i32 %43, %47, !dbg !301
  %49 = zext i8 %41 to i32, !dbg !302
  %50 = or i32 %49, %48, !dbg !302
  %51 = trunc i32 %50 to i8, !dbg !302
  call void @llvm.dbg.value(metadata i8 %51, metadata !267, metadata !DIExpression()), !dbg !266
  %52 = zext i8 %51 to i32, !dbg !303
  %53 = sub nsw i32 %52, 1, !dbg !304
  %54 = trunc i32 %53 to i8, !dbg !305
  ret i8 %54, !dbg !306
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_memcpy_if_eq(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 !dbg !307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i8* %1, metadata !315, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 %2, metadata !316, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 %3, metadata !317, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 %4, metadata !318, metadata !DIExpression()), !dbg !314
  %6 = call i32 @mbedtls_ct_size_bool_eq(i64 %3, i64 %4), !dbg !319
  %7 = zext i32 %6 to i64, !dbg !319
  call void @llvm.dbg.value(metadata i64 %7, metadata !320, metadata !DIExpression()), !dbg !314
  %8 = call i64 @mbedtls_ct_size_mask(i64 %7), !dbg !321
  %9 = trunc i64 %8 to i8, !dbg !322
  call void @llvm.dbg.value(metadata i8 %9, metadata !323, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i64 0, metadata !324, metadata !DIExpression()), !dbg !326
  br label %10, !dbg !327

10:                                               ; preds = %27, %5
  %.0 = phi i64 [ 0, %5 ], [ %28, %27 ], !dbg !326
  call void @llvm.dbg.value(metadata i64 %.0, metadata !324, metadata !DIExpression()), !dbg !326
  %11 = icmp ult i64 %.0, %2, !dbg !328
  br i1 %11, label %12, label %29, !dbg !330

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !331
  %14 = load i8, i8* %13, align 1, !dbg !331
  %15 = zext i8 %14 to i32, !dbg !331
  %16 = zext i8 %9 to i32, !dbg !332
  %17 = and i32 %15, %16, !dbg !333
  %18 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !334
  %19 = load i8, i8* %18, align 1, !dbg !334
  %20 = zext i8 %19 to i32, !dbg !334
  %21 = zext i8 %9 to i32, !dbg !335
  %22 = xor i32 %21, -1, !dbg !336
  %23 = and i32 %20, %22, !dbg !337
  %24 = or i32 %17, %23, !dbg !338
  %25 = trunc i32 %24 to i8, !dbg !339
  %26 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !340
  store i8 %25, i8* %26, align 1, !dbg !341
  br label %27, !dbg !340

27:                                               ; preds = %12
  %28 = add i64 %.0, 1, !dbg !342
  call void @llvm.dbg.value(metadata i64 %28, metadata !324, metadata !DIExpression()), !dbg !326
  br label %10, !dbg !343, !llvm.loop !344

29:                                               ; preds = %10
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_memcpy_offset(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 !dbg !347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !350, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i8* %1, metadata !352, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %2, metadata !353, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %3, metadata !354, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %4, metadata !355, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %5, metadata !356, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.value(metadata i64 %3, metadata !357, metadata !DIExpression()), !dbg !351
  br label %7, !dbg !358

7:                                                ; preds = %11, %6
  %.0 = phi i64 [ %3, %6 ], [ %12, %11 ], !dbg !360
  call void @llvm.dbg.value(metadata i64 %.0, metadata !357, metadata !DIExpression()), !dbg !351
  %8 = icmp ule i64 %.0, %4, !dbg !361
  br i1 %8, label %9, label %13, !dbg !363

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !364
  call void @mbedtls_ct_memcpy_if_eq(i8* %0, i8* %10, i64 %5, i64 %.0, i64 %2), !dbg !366
  br label %11, !dbg !367

11:                                               ; preds = %9
  %12 = add i64 %.0, 1, !dbg !368
  call void @llvm.dbg.value(metadata i64 %12, metadata !357, metadata !DIExpression()), !dbg !351
  br label %7, !dbg !369, !llvm.loop !370

13:                                               ; preds = %7
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_hmac(%struct.mbedtls_md_context_t* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, i64 %6, i8* %7) #0 !dbg !373 {
  %9 = alloca [64 x i8], align 16
  %10 = alloca %struct.mbedtls_md_context_t, align 8
  call void @llvm.dbg.value(metadata %struct.mbedtls_md_context_t* %0, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8* %1, metadata !390, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %2, metadata !391, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8* %3, metadata !392, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %4, metadata !393, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %5, metadata !394, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64 %6, metadata !395, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i8* %7, metadata !396, metadata !DIExpression()), !dbg !389
  %11 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !397
  %12 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %11, align 8, !dbg !397
  %13 = call i32 @mbedtls_md_get_type(%struct.mbedtls_md_info_t* %12), !dbg !398
  call void @llvm.dbg.value(metadata i32 %13, metadata !399, metadata !DIExpression()), !dbg !389
  %14 = icmp eq i32 %13, 5, !dbg !402
  %15 = zext i1 %14 to i64, !dbg !403
  %16 = select i1 %14, i32 128, i32 64, !dbg !403
  %17 = sext i32 %16 to i64, !dbg !403
  call void @llvm.dbg.value(metadata i64 %17, metadata !404, metadata !DIExpression()), !dbg !389
  %18 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 2, !dbg !405
  %19 = load i8*, i8** %18, align 8, !dbg !405
  call void @llvm.dbg.value(metadata i8* %19, metadata !406, metadata !DIExpression()), !dbg !389
  %20 = getelementptr inbounds i8, i8* %19, i64 %17, !dbg !408
  call void @llvm.dbg.value(metadata i8* %20, metadata !409, metadata !DIExpression()), !dbg !389
  %21 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !410
  %22 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %21, align 8, !dbg !410
  %23 = call zeroext i8 @mbedtls_md_get_size(%struct.mbedtls_md_info_t* %22), !dbg !411
  %24 = zext i8 %23 to i64, !dbg !411
  call void @llvm.dbg.value(metadata i64 %24, metadata !412, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !413, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata %struct.mbedtls_md_context_t* %10, metadata !418, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i32 -110, metadata !420, metadata !DIExpression()), !dbg !389
  call void @mbedtls_md_init(%struct.mbedtls_md_context_t* %10), !dbg !421
  br label %25, !dbg !422

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.mbedtls_md_context_t, %struct.mbedtls_md_context_t* %0, i32 0, i32 0, !dbg !423
  %27 = load %struct.mbedtls_md_info_t*, %struct.mbedtls_md_info_t** %26, align 8, !dbg !423
  %28 = call i32 @mbedtls_md_setup(%struct.mbedtls_md_context_t* %10, %struct.mbedtls_md_info_t* %27, i32 0), !dbg !423
  call void @llvm.dbg.value(metadata i32 %28, metadata !420, metadata !DIExpression()), !dbg !389
  %29 = icmp ne i32 %28, 0, !dbg !425
  br i1 %29, label %30, label %31, !dbg !423

30:                                               ; preds = %25
  br label %112, !dbg !425

31:                                               ; preds = %25
  br label %32, !dbg !423

32:                                               ; preds = %31
  br label %33, !dbg !427

33:                                               ; preds = %32
  %34 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %1, i64 %2), !dbg !428
  call void @llvm.dbg.value(metadata i32 %34, metadata !420, metadata !DIExpression()), !dbg !389
  %35 = icmp ne i32 %34, 0, !dbg !430
  br i1 %35, label %36, label %37, !dbg !428

36:                                               ; preds = %33
  br label %112, !dbg !430

37:                                               ; preds = %33
  br label %38, !dbg !428

38:                                               ; preds = %37
  br label %39, !dbg !432

39:                                               ; preds = %38
  %40 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %3, i64 %5), !dbg !433
  call void @llvm.dbg.value(metadata i32 %40, metadata !420, metadata !DIExpression()), !dbg !389
  %41 = icmp ne i32 %40, 0, !dbg !435
  br i1 %41, label %42, label %43, !dbg !433

42:                                               ; preds = %39
  br label %112, !dbg !435

43:                                               ; preds = %39
  br label %44, !dbg !433

44:                                               ; preds = %43
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 33, i64 %24, i1 false), !dbg !437
  call void @llvm.dbg.value(metadata i64 %5, metadata !438, metadata !DIExpression()), !dbg !389
  br label %45, !dbg !439

45:                                               ; preds = %72, %44
  %.01 = phi i64 [ %5, %44 ], [ %73, %72 ], !dbg !441
  call void @llvm.dbg.value(metadata i64 %.01, metadata !438, metadata !DIExpression()), !dbg !389
  %46 = icmp ule i64 %.01, %6, !dbg !442
  br i1 %46, label %47, label %74, !dbg !444

47:                                               ; preds = %45
  br label %48, !dbg !445

48:                                               ; preds = %47
  %49 = call i32 @mbedtls_md_clone(%struct.mbedtls_md_context_t* %10, %struct.mbedtls_md_context_t* %0), !dbg !447
  call void @llvm.dbg.value(metadata i32 %49, metadata !420, metadata !DIExpression()), !dbg !389
  %50 = icmp ne i32 %49, 0, !dbg !449
  br i1 %50, label %51, label %52, !dbg !447

51:                                               ; preds = %48
  br label %112, !dbg !449

52:                                               ; preds = %48
  br label %53, !dbg !447

53:                                               ; preds = %52
  br label %54, !dbg !451

54:                                               ; preds = %53
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !452
  %56 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %10, i8* %55), !dbg !452
  call void @llvm.dbg.value(metadata i32 %56, metadata !420, metadata !DIExpression()), !dbg !389
  %57 = icmp ne i32 %56, 0, !dbg !454
  br i1 %57, label %58, label %59, !dbg !452

58:                                               ; preds = %54
  br label %112, !dbg !454

59:                                               ; preds = %54
  br label %60, !dbg !452

60:                                               ; preds = %59
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !456
  call void @mbedtls_ct_memcpy_if_eq(i8* %7, i8* %61, i64 %24, i64 %.01, i64 %4), !dbg !457
  %62 = icmp ult i64 %.01, %6, !dbg !458
  br i1 %62, label %63, label %71, !dbg !460

63:                                               ; preds = %60
  br label %64, !dbg !461

64:                                               ; preds = %63
  %65 = getelementptr inbounds i8, i8* %3, i64 %.01, !dbg !462
  %66 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %65, i64 1), !dbg !462
  call void @llvm.dbg.value(metadata i32 %66, metadata !420, metadata !DIExpression()), !dbg !389
  %67 = icmp ne i32 %66, 0, !dbg !464
  br i1 %67, label %68, label %69, !dbg !462

68:                                               ; preds = %64
  br label %112, !dbg !464

69:                                               ; preds = %64
  br label %70, !dbg !462

70:                                               ; preds = %69
  br label %71, !dbg !462

71:                                               ; preds = %70, %60
  br label %72, !dbg !466

72:                                               ; preds = %71
  %73 = add i64 %.01, 1, !dbg !467
  call void @llvm.dbg.value(metadata i64 %73, metadata !438, metadata !DIExpression()), !dbg !389
  br label %45, !dbg !468, !llvm.loop !469

74:                                               ; preds = %45
  br label %75, !dbg !471

75:                                               ; preds = %74
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !472
  %77 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %0, i8* %76), !dbg !472
  call void @llvm.dbg.value(metadata i32 %77, metadata !420, metadata !DIExpression()), !dbg !389
  %78 = icmp ne i32 %77, 0, !dbg !474
  br i1 %78, label %79, label %80, !dbg !472

79:                                               ; preds = %75
  br label %112, !dbg !474

80:                                               ; preds = %75
  br label %81, !dbg !472

81:                                               ; preds = %80
  br label %82, !dbg !476

82:                                               ; preds = %81
  %83 = call i32 @mbedtls_md_starts(%struct.mbedtls_md_context_t* %0), !dbg !477
  call void @llvm.dbg.value(metadata i32 %83, metadata !420, metadata !DIExpression()), !dbg !389
  %84 = icmp ne i32 %83, 0, !dbg !479
  br i1 %84, label %85, label %86, !dbg !477

85:                                               ; preds = %82
  br label %112, !dbg !479

86:                                               ; preds = %82
  br label %87, !dbg !477

87:                                               ; preds = %86
  br label %88, !dbg !481

88:                                               ; preds = %87
  %89 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %20, i64 %17), !dbg !482
  call void @llvm.dbg.value(metadata i32 %89, metadata !420, metadata !DIExpression()), !dbg !389
  %90 = icmp ne i32 %89, 0, !dbg !484
  br i1 %90, label %91, label %92, !dbg !482

91:                                               ; preds = %88
  br label %112, !dbg !484

92:                                               ; preds = %88
  br label %93, !dbg !482

93:                                               ; preds = %92
  br label %94, !dbg !486

94:                                               ; preds = %93
  %95 = call i32 @mbedtls_md_update(%struct.mbedtls_md_context_t* %0, i8* %7, i64 %24), !dbg !487
  call void @llvm.dbg.value(metadata i32 %95, metadata !420, metadata !DIExpression()), !dbg !389
  %96 = icmp ne i32 %95, 0, !dbg !489
  br i1 %96, label %97, label %98, !dbg !487

97:                                               ; preds = %94
  br label %112, !dbg !489

98:                                               ; preds = %94
  br label %99, !dbg !487

99:                                               ; preds = %98
  br label %100, !dbg !491

100:                                              ; preds = %99
  %101 = call i32 @mbedtls_md_finish(%struct.mbedtls_md_context_t* %0, i8* %7), !dbg !492
  call void @llvm.dbg.value(metadata i32 %101, metadata !420, metadata !DIExpression()), !dbg !389
  %102 = icmp ne i32 %101, 0, !dbg !494
  br i1 %102, label %103, label %104, !dbg !492

103:                                              ; preds = %100
  br label %112, !dbg !494

104:                                              ; preds = %100
  br label %105, !dbg !492

105:                                              ; preds = %104
  br label %106, !dbg !496

106:                                              ; preds = %105
  %107 = call i32 @mbedtls_md_hmac_reset(%struct.mbedtls_md_context_t* %0), !dbg !497
  call void @llvm.dbg.value(metadata i32 %107, metadata !420, metadata !DIExpression()), !dbg !389
  %108 = icmp ne i32 %107, 0, !dbg !499
  br i1 %108, label %109, label %110, !dbg !497

109:                                              ; preds = %106
  br label %112, !dbg !499

110:                                              ; preds = %106
  br label %111, !dbg !497

111:                                              ; preds = %110
  br label %112, !dbg !497

112:                                              ; preds = %111, %109, %103, %97, %91, %85, %79, %68, %58, %51, %42, %36, %30
  %.0 = phi i32 [ %28, %30 ], [ %34, %36 ], [ %40, %42 ], [ %49, %51 ], [ %56, %58 ], [ %66, %68 ], [ %77, %79 ], [ %83, %85 ], [ %89, %91 ], [ %95, %97 ], [ %101, %103 ], [ %107, %109 ], [ %107, %111 ], !dbg !389
  call void @llvm.dbg.value(metadata i32 %.0, metadata !420, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.label(metadata !501), !dbg !502
  call void @mbedtls_md_free(%struct.mbedtls_md_context_t* %10), !dbg !503
  ret i32 %.0, !dbg !504
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
define dso_local i32 @mbedtls_mpi_safe_cond_assign(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i8 zeroext %2) #0 !dbg !505 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !519, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i8 %2, metadata !520, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32 0, metadata !521, metadata !DIExpression()), !dbg !518
  br label %4, !dbg !522

4:                                                ; preds = %3
  br label %5, !dbg !523

5:                                                ; preds = %4
  br label %6, !dbg !525

6:                                                ; preds = %5
  br label %7, !dbg !526

7:                                                ; preds = %6
  %8 = zext i8 %2 to i64, !dbg !528
  %9 = call i64 @mbedtls_ct_mpi_uint_mask(i64 %8), !dbg !529
  call void @llvm.dbg.value(metadata i64 %9, metadata !530, metadata !DIExpression()), !dbg !518
  br label %10, !dbg !531

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !532
  %12 = load i64, i64* %11, align 8, !dbg !532
  %13 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %0, i64 %12), !dbg !532
  call void @llvm.dbg.value(metadata i32 %13, metadata !521, metadata !DIExpression()), !dbg !518
  %14 = icmp ne i32 %13, 0, !dbg !532
  br i1 %14, label %15, label %16, !dbg !535

15:                                               ; preds = %10
  br label %46, !dbg !532

16:                                               ; preds = %10
  br label %17, !dbg !535

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !536
  %19 = load i32, i32* %18, align 8, !dbg !536
  %20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !537
  %21 = load i32, i32* %20, align 8, !dbg !537
  %22 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %19, i32 %21), !dbg !538
  %23 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !539
  store i32 %22, i32* %23, align 8, !dbg !540
  %24 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !541
  %25 = load i64*, i64** %24, align 8, !dbg !541
  %26 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !542
  %27 = load i64*, i64** %26, align 8, !dbg !542
  %28 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !543
  %29 = load i64, i64* %28, align 8, !dbg !543
  call void @mbedtls_mpi_core_cond_assign(i64* %25, i64* %27, i64 %29, i8 zeroext %2), !dbg !544
  %30 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !545
  %31 = load i64, i64* %30, align 8, !dbg !545
  call void @llvm.dbg.value(metadata i64 %31, metadata !547, metadata !DIExpression()), !dbg !548
  br label %32, !dbg !549

32:                                               ; preds = %43, %17
  %.0 = phi i64 [ %31, %17 ], [ %44, %43 ], !dbg !548
  call void @llvm.dbg.value(metadata i64 %.0, metadata !547, metadata !DIExpression()), !dbg !548
  %33 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !550
  %34 = load i64, i64* %33, align 8, !dbg !550
  %35 = icmp ult i64 %.0, %34, !dbg !552
  br i1 %35, label %36, label %45, !dbg !553

36:                                               ; preds = %32
  %37 = xor i64 %9, -1, !dbg !554
  %38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !555
  %39 = load i64*, i64** %38, align 8, !dbg !555
  %40 = getelementptr inbounds i64, i64* %39, i64 %.0, !dbg !556
  %41 = load i64, i64* %40, align 8, !dbg !557
  %42 = and i64 %41, %37, !dbg !557
  store i64 %42, i64* %40, align 8, !dbg !557
  br label %43, !dbg !556

43:                                               ; preds = %36
  %44 = add i64 %.0, 1, !dbg !558
  call void @llvm.dbg.value(metadata i64 %44, metadata !547, metadata !DIExpression()), !dbg !548
  br label %32, !dbg !559, !llvm.loop !560

45:                                               ; preds = %32
  br label %46, !dbg !561

46:                                               ; preds = %45, %15
  call void @llvm.dbg.label(metadata !562), !dbg !563
  ret i32 %13, !dbg !564
}

declare dso_local i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @mbedtls_ct_cond_select_sign(i8 zeroext %0, i32 %1, i32 %2) #0 !dbg !565 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i32 %1, metadata !570, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.value(metadata i32 %2, metadata !571, metadata !DIExpression()), !dbg !569
  %4 = add nsw i32 %1, 1, !dbg !572
  call void @llvm.dbg.value(metadata i32 %4, metadata !573, metadata !DIExpression()), !dbg !569
  %5 = add nsw i32 %2, 1, !dbg !574
  call void @llvm.dbg.value(metadata i32 %5, metadata !575, metadata !DIExpression()), !dbg !569
  %6 = zext i8 %0 to i32, !dbg !576
  %7 = shl i32 %6, 1, !dbg !577
  call void @llvm.dbg.value(metadata i32 %7, metadata !578, metadata !DIExpression()), !dbg !569
  %8 = xor i32 %7, -1, !dbg !579
  %9 = and i32 %5, %8, !dbg !580
  %10 = and i32 %4, %7, !dbg !581
  %11 = or i32 %9, %10, !dbg !582
  call void @llvm.dbg.value(metadata i32 %11, metadata !583, metadata !DIExpression()), !dbg !569
  %12 = sub nsw i32 %11, 1, !dbg !584
  ret i32 %12, !dbg !585
}

declare dso_local void @mbedtls_mpi_core_cond_assign(i64*, i64*, i64, i8 zeroext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_safe_cond_swap(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i8 zeroext %2) #0 !dbg !586 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !589, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !591, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i8 %2, metadata !592, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i32 0, metadata !593, metadata !DIExpression()), !dbg !590
  br label %4, !dbg !594

4:                                                ; preds = %3
  br label %5, !dbg !595

5:                                                ; preds = %4
  br label %6, !dbg !597

6:                                                ; preds = %5
  br label %7, !dbg !598

7:                                                ; preds = %6
  %8 = icmp eq %struct.mbedtls_mpi* %0, %1, !dbg !600
  br i1 %8, label %9, label %10, !dbg !602

9:                                                ; preds = %7
  br label %46, !dbg !603

10:                                               ; preds = %7
  br label %11, !dbg !604

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !605
  %13 = load i64, i64* %12, align 8, !dbg !605
  %14 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %0, i64 %13), !dbg !605
  call void @llvm.dbg.value(metadata i32 %14, metadata !593, metadata !DIExpression()), !dbg !590
  %15 = icmp ne i32 %14, 0, !dbg !605
  br i1 %15, label %16, label %17, !dbg !608

16:                                               ; preds = %11
  br label %45, !dbg !605

17:                                               ; preds = %11
  br label %18, !dbg !608

18:                                               ; preds = %17
  br label %19, !dbg !609

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !610
  %21 = load i64, i64* %20, align 8, !dbg !610
  %22 = call i32 @mbedtls_mpi_grow(%struct.mbedtls_mpi* %1, i64 %21), !dbg !610
  call void @llvm.dbg.value(metadata i32 %22, metadata !593, metadata !DIExpression()), !dbg !590
  %23 = icmp ne i32 %22, 0, !dbg !610
  br i1 %23, label %24, label %25, !dbg !613

24:                                               ; preds = %19
  br label %45, !dbg !610

25:                                               ; preds = %19
  br label %26, !dbg !613

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !614
  %28 = load i32, i32* %27, align 8, !dbg !614
  call void @llvm.dbg.value(metadata i32 %28, metadata !615, metadata !DIExpression()), !dbg !590
  %29 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !616
  %30 = load i32, i32* %29, align 8, !dbg !616
  %31 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !617
  %32 = load i32, i32* %31, align 8, !dbg !617
  %33 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %30, i32 %32), !dbg !618
  %34 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !619
  store i32 %33, i32* %34, align 8, !dbg !620
  %35 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !621
  %36 = load i32, i32* %35, align 8, !dbg !621
  %37 = call i32 @mbedtls_ct_cond_select_sign(i8 zeroext %2, i32 %28, i32 %36), !dbg !622
  %38 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !623
  store i32 %37, i32* %38, align 8, !dbg !624
  %39 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !625
  %40 = load i64*, i64** %39, align 8, !dbg !625
  %41 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !626
  %42 = load i64*, i64** %41, align 8, !dbg !626
  %43 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !627
  %44 = load i64, i64* %43, align 8, !dbg !627
  call void @mbedtls_mpi_core_cond_swap(i64* %40, i64* %42, i64 %44, i8 zeroext %2), !dbg !628
  br label %45, !dbg !628

45:                                               ; preds = %26, %24, %16
  %.01 = phi i32 [ %14, %16 ], [ %22, %24 ], [ %22, %26 ], !dbg !590
  call void @llvm.dbg.value(metadata i32 %.01, metadata !593, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.label(metadata !629), !dbg !630
  br label %46, !dbg !631

46:                                               ; preds = %45, %9
  %.0 = phi i32 [ 0, %9 ], [ %.01, %45 ], !dbg !590
  ret i32 %.0, !dbg !632
}

declare dso_local void @mbedtls_mpi_core_cond_swap(i64*, i64*, i64, i8 zeroext) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_core_lt_ct(i64* %0, i64* %1, i64 %2) #0 !dbg !633 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !636, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64* %1, metadata !638, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64 %2, metadata !639, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 0, metadata !640, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 0, metadata !642, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64 %2, metadata !643, metadata !DIExpression()), !dbg !645
  br label %4, !dbg !646

4:                                                ; preds = %26, %3
  %.02 = phi i32 [ 0, %3 ], [ %24, %26 ], !dbg !637
  %.01 = phi i32 [ 0, %3 ], [ %25, %26 ], !dbg !637
  %.0 = phi i64 [ %2, %3 ], [ %27, %26 ], !dbg !645
  call void @llvm.dbg.value(metadata i64 %.0, metadata !643, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata i32 %.01, metadata !640, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 %.02, metadata !642, metadata !DIExpression()), !dbg !637
  %5 = icmp ugt i64 %.0, 0, !dbg !647
  br i1 %5, label %6, label %28, !dbg !649

6:                                                ; preds = %4
  %7 = sub i64 %.0, 1, !dbg !650
  %8 = getelementptr inbounds i64, i64* %1, i64 %7, !dbg !652
  %9 = load i64, i64* %8, align 8, !dbg !652
  %10 = sub i64 %.0, 1, !dbg !653
  %11 = getelementptr inbounds i64, i64* %0, i64 %10, !dbg !654
  %12 = load i64, i64* %11, align 8, !dbg !654
  %13 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %9, i64 %12), !dbg !655
  call void @llvm.dbg.value(metadata i32 %13, metadata !641, metadata !DIExpression()), !dbg !637
  %14 = or i32 %.01, %13, !dbg !656
  call void @llvm.dbg.value(metadata i32 %14, metadata !640, metadata !DIExpression()), !dbg !637
  %15 = sub i64 %.0, 1, !dbg !657
  %16 = getelementptr inbounds i64, i64* %0, i64 %15, !dbg !658
  %17 = load i64, i64* %16, align 8, !dbg !658
  %18 = sub i64 %.0, 1, !dbg !659
  %19 = getelementptr inbounds i64, i64* %1, i64 %18, !dbg !660
  %20 = load i64, i64* %19, align 8, !dbg !660
  %21 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %17, i64 %20), !dbg !661
  call void @llvm.dbg.value(metadata i32 %21, metadata !641, metadata !DIExpression()), !dbg !637
  %22 = sub i32 1, %14, !dbg !662
  %23 = and i32 %21, %22, !dbg !663
  %24 = or i32 %.02, %23, !dbg !664
  call void @llvm.dbg.value(metadata i32 %24, metadata !642, metadata !DIExpression()), !dbg !637
  %25 = or i32 %14, %21, !dbg !665
  call void @llvm.dbg.value(metadata i32 %25, metadata !640, metadata !DIExpression()), !dbg !637
  br label %26, !dbg !666

26:                                               ; preds = %6
  %27 = add i64 %.0, -1, !dbg !667
  call void @llvm.dbg.value(metadata i64 %27, metadata !643, metadata !DIExpression()), !dbg !645
  br label %4, !dbg !668, !llvm.loop !669

28:                                               ; preds = %4
  ret i32 %.02, !dbg !671
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* %0, %struct.mbedtls_mpi* %1, i32* %2) #0 !dbg !672 {
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %0, metadata !676, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.mbedtls_mpi* %1, metadata !678, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i32* %2, metadata !679, metadata !DIExpression()), !dbg !677
  br label %4, !dbg !680

4:                                                ; preds = %3
  br label %5, !dbg !681

5:                                                ; preds = %4
  br label %6, !dbg !683

6:                                                ; preds = %5
  br label %7, !dbg !684

7:                                                ; preds = %6
  br label %8, !dbg !686

8:                                                ; preds = %7
  br label %9, !dbg !687

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !689
  %11 = load i64, i64* %10, align 8, !dbg !689
  %12 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 1, !dbg !691
  %13 = load i64, i64* %12, align 8, !dbg !691
  %14 = icmp ne i64 %11, %13, !dbg !692
  br i1 %14, label %15, label %16, !dbg !693

15:                                               ; preds = %9
  br label %70, !dbg !694

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 0, !dbg !695
  %18 = load i32, i32* %17, align 8, !dbg !695
  %19 = and i32 %18, 2, !dbg !696
  %20 = ashr i32 %19, 1, !dbg !697
  call void @llvm.dbg.value(metadata i32 %20, metadata !698, metadata !DIExpression()), !dbg !677
  %21 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 0, !dbg !699
  %22 = load i32, i32* %21, align 8, !dbg !699
  %23 = and i32 %22, 2, !dbg !700
  %24 = ashr i32 %23, 1, !dbg !701
  call void @llvm.dbg.value(metadata i32 %24, metadata !702, metadata !DIExpression()), !dbg !677
  %25 = xor i32 %20, %24, !dbg !703
  call void @llvm.dbg.value(metadata i32 %25, metadata !704, metadata !DIExpression()), !dbg !677
  %26 = and i32 %25, %20, !dbg !705
  store i32 %26, i32* %2, align 4, !dbg !706
  call void @llvm.dbg.value(metadata i32 %25, metadata !707, metadata !DIExpression()), !dbg !677
  %27 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 1, !dbg !708
  %28 = load i64, i64* %27, align 8, !dbg !708
  call void @llvm.dbg.value(metadata i64 %28, metadata !710, metadata !DIExpression()), !dbg !677
  br label %29, !dbg !711

29:                                               ; preds = %67, %16
  %.02 = phi i64 [ %28, %16 ], [ %68, %67 ], !dbg !712
  %.01 = phi i32 [ %25, %16 ], [ %66, %67 ], !dbg !677
  call void @llvm.dbg.value(metadata i32 %.01, metadata !707, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i64 %.02, metadata !710, metadata !DIExpression()), !dbg !677
  %30 = icmp ugt i64 %.02, 0, !dbg !713
  br i1 %30, label %31, label %69, !dbg !715

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !716
  %33 = load i64*, i64** %32, align 8, !dbg !716
  %34 = sub i64 %.02, 1, !dbg !718
  %35 = getelementptr inbounds i64, i64* %33, i64 %34, !dbg !719
  %36 = load i64, i64* %35, align 8, !dbg !719
  %37 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !720
  %38 = load i64*, i64** %37, align 8, !dbg !720
  %39 = sub i64 %.02, 1, !dbg !721
  %40 = getelementptr inbounds i64, i64* %38, i64 %39, !dbg !722
  %41 = load i64, i64* %40, align 8, !dbg !722
  %42 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %36, i64 %41), !dbg !723
  call void @llvm.dbg.value(metadata i32 %42, metadata !704, metadata !DIExpression()), !dbg !677
  %43 = sub i32 1, %.01, !dbg !724
  %44 = and i32 %42, %43, !dbg !725
  %45 = and i32 %44, %20, !dbg !726
  %46 = load i32, i32* %2, align 4, !dbg !727
  %47 = or i32 %46, %45, !dbg !727
  store i32 %47, i32* %2, align 4, !dbg !727
  %48 = or i32 %.01, %42, !dbg !728
  call void @llvm.dbg.value(metadata i32 %48, metadata !707, metadata !DIExpression()), !dbg !677
  %49 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %0, i32 0, i32 2, !dbg !729
  %50 = load i64*, i64** %49, align 8, !dbg !729
  %51 = sub i64 %.02, 1, !dbg !730
  %52 = getelementptr inbounds i64, i64* %50, i64 %51, !dbg !731
  %53 = load i64, i64* %52, align 8, !dbg !731
  %54 = getelementptr inbounds %struct.mbedtls_mpi, %struct.mbedtls_mpi* %1, i32 0, i32 2, !dbg !732
  %55 = load i64*, i64** %54, align 8, !dbg !732
  %56 = sub i64 %.02, 1, !dbg !733
  %57 = getelementptr inbounds i64, i64* %55, i64 %56, !dbg !734
  %58 = load i64, i64* %57, align 8, !dbg !734
  %59 = call i32 @mbedtls_ct_mpi_uint_lt(i64 %53, i64 %58), !dbg !735
  call void @llvm.dbg.value(metadata i32 %59, metadata !704, metadata !DIExpression()), !dbg !677
  %60 = sub i32 1, %48, !dbg !736
  %61 = and i32 %59, %60, !dbg !737
  %62 = sub i32 1, %20, !dbg !738
  %63 = and i32 %61, %62, !dbg !739
  %64 = load i32, i32* %2, align 4, !dbg !740
  %65 = or i32 %64, %63, !dbg !740
  store i32 %65, i32* %2, align 4, !dbg !740
  %66 = or i32 %48, %59, !dbg !741
  call void @llvm.dbg.value(metadata i32 %66, metadata !707, metadata !DIExpression()), !dbg !677
  br label %67, !dbg !742

67:                                               ; preds = %31
  %68 = add i64 %.02, -1, !dbg !743
  call void @llvm.dbg.value(metadata i64 %68, metadata !710, metadata !DIExpression()), !dbg !677
  br label %29, !dbg !744, !llvm.loop !745

69:                                               ; preds = %29
  br label %70, !dbg !747

70:                                               ; preds = %69, %15
  %.0 = phi i32 [ -4, %15 ], [ 0, %69 ], !dbg !677
  ret i32 %.0, !dbg !748
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mbedtls_ct_rsaes_pkcs1_v15_unpadding(i8* %0, i64 %1, i8* %2, i64 %3, i64* %4) #0 !dbg !749 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !753, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %1, metadata !755, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i8* %2, metadata !756, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %3, metadata !757, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64* %4, metadata !758, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i32 -110, metadata !759, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 0, metadata !760, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i32 0, metadata !761, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i8 0, metadata !762, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 0, metadata !763, metadata !DIExpression()), !dbg !754
  %6 = sub i64 %1, 11, !dbg !764
  %7 = icmp ugt i64 %3, %6, !dbg !765
  br i1 %7, label %8, label %10, !dbg !766

8:                                                ; preds = %5
  %9 = sub i64 %1, 11, !dbg !767
  br label %11, !dbg !766

10:                                               ; preds = %5
  br label %11, !dbg !766

11:                                               ; preds = %10, %8
  %12 = phi i64 [ %9, %8 ], [ %3, %10 ], !dbg !766
  call void @llvm.dbg.value(metadata i64 %12, metadata !768, metadata !DIExpression()), !dbg !754
  %13 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !769
  %14 = load i8, i8* %13, align 1, !dbg !769
  %15 = zext i8 %14 to i32, !dbg !769
  %16 = or i32 0, %15, !dbg !770
  call void @llvm.dbg.value(metadata i32 %16, metadata !761, metadata !DIExpression()), !dbg !754
  %17 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !771
  %18 = load i8, i8* %17, align 1, !dbg !771
  %19 = zext i8 %18 to i32, !dbg !771
  %20 = xor i32 %19, 2, !dbg !772
  %21 = or i32 %16, %20, !dbg !773
  call void @llvm.dbg.value(metadata i32 %21, metadata !761, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 2, metadata !774, metadata !DIExpression()), !dbg !754
  br label %22, !dbg !775

22:                                               ; preds = %50, %11
  %.02 = phi i64 [ 2, %11 ], [ %51, %50 ], !dbg !777
  %.01 = phi i64 [ 0, %11 ], [ %49, %50 ], !dbg !754
  %.0 = phi i8 [ 0, %11 ], [ %39, %50 ], !dbg !754
  call void @llvm.dbg.value(metadata i8 %.0, metadata !762, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %.01, metadata !760, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %.02, metadata !774, metadata !DIExpression()), !dbg !754
  %23 = icmp ult i64 %.02, %1, !dbg !778
  br i1 %23, label %24, label %52, !dbg !780

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, i8* %0, i64 %.02, !dbg !781
  %26 = load i8, i8* %25, align 1, !dbg !781
  %27 = zext i8 %26 to i32, !dbg !781
  %28 = getelementptr inbounds i8, i8* %0, i64 %.02, !dbg !783
  %29 = load i8, i8* %28, align 1, !dbg !783
  %30 = zext i8 %29 to i32, !dbg !783
  %31 = sub nsw i32 0, %30, !dbg !784
  %32 = trunc i32 %31 to i8, !dbg !785
  %33 = zext i8 %32 to i32, !dbg !785
  %34 = or i32 %27, %33, !dbg !786
  %35 = ashr i32 %34, 7, !dbg !787
  %36 = xor i32 %35, 1, !dbg !788
  %37 = zext i8 %.0 to i32, !dbg !789
  %38 = or i32 %37, %36, !dbg !789
  %39 = trunc i32 %38 to i8, !dbg !789
  call void @llvm.dbg.value(metadata i8 %39, metadata !762, metadata !DIExpression()), !dbg !754
  %40 = zext i8 %39 to i32, !dbg !790
  %41 = zext i8 %39 to i32, !dbg !791
  %42 = sub nsw i32 0, %41, !dbg !792
  %43 = trunc i32 %42 to i8, !dbg !793
  %44 = zext i8 %43 to i32, !dbg !793
  %45 = or i32 %40, %44, !dbg !794
  %46 = ashr i32 %45, 7, !dbg !795
  %47 = xor i32 %46, 1, !dbg !796
  %48 = sext i32 %47 to i64, !dbg !797
  %49 = add i64 %.01, %48, !dbg !798
  call void @llvm.dbg.value(metadata i64 %49, metadata !760, metadata !DIExpression()), !dbg !754
  br label %50, !dbg !799

50:                                               ; preds = %24
  %51 = add i64 %.02, 1, !dbg !800
  call void @llvm.dbg.value(metadata i64 %51, metadata !774, metadata !DIExpression()), !dbg !754
  br label %22, !dbg !801, !llvm.loop !802

52:                                               ; preds = %22
  %53 = zext i8 %.0 to i32, !dbg !804
  %54 = call i32 @mbedtls_ct_uint_if(i32 %53, i32 0, i32 1), !dbg !805
  %55 = or i32 %21, %54, !dbg !806
  call void @llvm.dbg.value(metadata i32 %55, metadata !761, metadata !DIExpression()), !dbg !754
  %56 = call i32 @mbedtls_ct_size_gt(i64 8, i64 %.01), !dbg !807
  %57 = or i32 %55, %56, !dbg !808
  call void @llvm.dbg.value(metadata i32 %57, metadata !761, metadata !DIExpression()), !dbg !754
  %58 = trunc i64 %12 to i32, !dbg !809
  %59 = sub i64 %1, %.01, !dbg !810
  %60 = sub i64 %59, 3, !dbg !811
  %61 = trunc i64 %60 to i32, !dbg !812
  %62 = call i32 @mbedtls_ct_uint_if(i32 %57, i32 %58, i32 %61), !dbg !813
  %63 = zext i32 %62 to i64, !dbg !813
  call void @llvm.dbg.value(metadata i64 %63, metadata !763, metadata !DIExpression()), !dbg !754
  %64 = call i32 @mbedtls_ct_size_gt(i64 %63, i64 %12), !dbg !814
  call void @llvm.dbg.value(metadata i32 %64, metadata !815, metadata !DIExpression()), !dbg !754
  %65 = call i32 @mbedtls_ct_uint_if(i32 %64, i32 17408, i32 0), !dbg !816
  %66 = call i32 @mbedtls_ct_uint_if(i32 %57, i32 16640, i32 %65), !dbg !817
  %67 = sub nsw i32 0, %66, !dbg !818
  call void @llvm.dbg.value(metadata i32 %67, metadata !759, metadata !DIExpression()), !dbg !754
  %68 = or i32 %57, %64, !dbg !819
  %69 = call i32 @mbedtls_ct_uint_mask(i32 %68), !dbg !820
  call void @llvm.dbg.value(metadata i32 %69, metadata !761, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 11, metadata !774, metadata !DIExpression()), !dbg !754
  br label %70, !dbg !821

70:                                               ; preds = %79, %52
  %.1 = phi i64 [ 11, %52 ], [ %80, %79 ], !dbg !823
  call void @llvm.dbg.value(metadata i64 %.1, metadata !774, metadata !DIExpression()), !dbg !754
  %71 = icmp ult i64 %.1, %1, !dbg !824
  br i1 %71, label %72, label %81, !dbg !826

72:                                               ; preds = %70
  %73 = xor i32 %69, -1, !dbg !827
  %74 = getelementptr inbounds i8, i8* %0, i64 %.1, !dbg !828
  %75 = load i8, i8* %74, align 1, !dbg !829
  %76 = zext i8 %75 to i32, !dbg !829
  %77 = and i32 %76, %73, !dbg !829
  %78 = trunc i32 %77 to i8, !dbg !829
  store i8 %78, i8* %74, align 1, !dbg !829
  br label %79, !dbg !828

79:                                               ; preds = %72
  %80 = add i64 %.1, 1, !dbg !830
  call void @llvm.dbg.value(metadata i64 %80, metadata !774, metadata !DIExpression()), !dbg !754
  br label %70, !dbg !831, !llvm.loop !832

81:                                               ; preds = %70
  %82 = trunc i64 %12 to i32, !dbg !834
  %83 = trunc i64 %63 to i32, !dbg !835
  %84 = call i32 @mbedtls_ct_uint_if(i32 %64, i32 %82, i32 %83), !dbg !836
  %85 = zext i32 %84 to i64, !dbg !836
  call void @llvm.dbg.value(metadata i64 %85, metadata !763, metadata !DIExpression()), !dbg !754
  %86 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !837
  %87 = sub i64 0, %12, !dbg !838
  %88 = getelementptr inbounds i8, i8* %86, i64 %87, !dbg !838
  %89 = sub i64 %12, %85, !dbg !839
  call void @mbedtls_ct_mem_move_to_left(i8* %88, i64 %12, i64 %89), !dbg !840
  %90 = icmp ne i64 %3, 0, !dbg !841
  br i1 %90, label %91, label %95, !dbg !843

91:                                               ; preds = %81
  %92 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !844
  %93 = sub i64 0, %12, !dbg !845
  %94 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %94, i64 %12, i1 false), !dbg !846
  br label %95, !dbg !846

95:                                               ; preds = %91, %81
  store i64 %85, i64* %4, align 8, !dbg !847
  ret i32 %67, !dbg !848
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mbedtls_ct_size_gt(i64 %0, i64 %1) #0 !dbg !849 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i64 %1, metadata !852, metadata !DIExpression()), !dbg !851
  %3 = sub i64 %1, %0, !dbg !853
  %4 = lshr i64 %3, 63, !dbg !854
  %5 = trunc i64 %4 to i32, !dbg !855
  ret i32 %5, !dbg !856
}

; Function Attrs: noinline nounwind uwtable
define internal void @mbedtls_ct_mem_move_to_left(i8* %0, i64 %1, i64 %2) #0 !dbg !857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %1, metadata !862, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %2, metadata !863, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i8* %0, metadata !864, metadata !DIExpression()), !dbg !861
  %4 = icmp eq i64 %1, 0, !dbg !866
  br i1 %4, label %5, label %6, !dbg !868

5:                                                ; preds = %3
  br label %39, !dbg !869

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 0, metadata !870, metadata !DIExpression()), !dbg !861
  br label %7, !dbg !871

7:                                                ; preds = %37, %6
  %.01 = phi i64 [ 0, %6 ], [ %38, %37 ], !dbg !873
  call void @llvm.dbg.value(metadata i64 %.01, metadata !870, metadata !DIExpression()), !dbg !861
  %8 = icmp ult i64 %.01, %1, !dbg !874
  br i1 %8, label %9, label %39, !dbg !876

9:                                                ; preds = %7
  %10 = sub i64 %1, %2, !dbg !877
  %11 = call i32 @mbedtls_ct_size_gt(i64 %10, i64 %.01), !dbg !879
  call void @llvm.dbg.value(metadata i32 %11, metadata !880, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata i64 0, metadata !882, metadata !DIExpression()), !dbg !861
  br label %12, !dbg !883

12:                                               ; preds = %26, %9
  %.0 = phi i64 [ 0, %9 ], [ %27, %26 ], !dbg !885
  call void @llvm.dbg.value(metadata i64 %.0, metadata !882, metadata !DIExpression()), !dbg !861
  %13 = sub i64 %1, 1, !dbg !886
  %14 = icmp ult i64 %.0, %13, !dbg !888
  br i1 %14, label %15, label %28, !dbg !889

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !890
  %17 = load volatile i8, i8* %16, align 1, !dbg !890
  call void @llvm.dbg.value(metadata i8 %17, metadata !892, metadata !DIExpression()), !dbg !893
  %18 = add i64 %.0, 1, !dbg !894
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !895
  %20 = load volatile i8, i8* %19, align 1, !dbg !895
  call void @llvm.dbg.value(metadata i8 %20, metadata !896, metadata !DIExpression()), !dbg !893
  %21 = zext i8 %17 to i32, !dbg !897
  %22 = zext i8 %20 to i32, !dbg !898
  %23 = call i32 @mbedtls_ct_uint_if(i32 %11, i32 %21, i32 %22), !dbg !899
  %24 = trunc i32 %23 to i8, !dbg !899
  %25 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !900
  store volatile i8 %24, i8* %25, align 1, !dbg !901
  br label %26, !dbg !902

26:                                               ; preds = %15
  %27 = add i64 %.0, 1, !dbg !903
  call void @llvm.dbg.value(metadata i64 %27, metadata !882, metadata !DIExpression()), !dbg !861
  br label %12, !dbg !904, !llvm.loop !905

28:                                               ; preds = %12
  %29 = sub i64 %1, 1, !dbg !907
  %30 = getelementptr inbounds i8, i8* %0, i64 %29, !dbg !908
  %31 = load volatile i8, i8* %30, align 1, !dbg !908
  %32 = zext i8 %31 to i32, !dbg !908
  %33 = call i32 @mbedtls_ct_uint_if(i32 %11, i32 %32, i32 0), !dbg !909
  %34 = trunc i32 %33 to i8, !dbg !909
  %35 = sub i64 %1, 1, !dbg !910
  %36 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !911
  store volatile i8 %34, i8* %36, align 1, !dbg !912
  br label %37, !dbg !913

37:                                               ; preds = %28
  %38 = add i64 %.01, 1, !dbg !914
  call void @llvm.dbg.value(metadata i64 %38, metadata !870, metadata !DIExpression()), !dbg !861
  br label %7, !dbg !915, !llvm.loop !916

39:                                               ; preds = %7, %5
  ret void, !dbg !918
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_rsaes_pkcs1_v15_unpadding_wrapper(i8* %0, i64 %1, i8* %2, i64 %3, i64* %4) #0 !dbg !919 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64 %1, metadata !924, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i8* %2, metadata !925, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64 %3, metadata !926, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64* %4, metadata !927, metadata !DIExpression()), !dbg !923
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !928
  call void @public_in(%struct.smack_value* %6), !dbg !929
  %7 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %1), !dbg !930
  call void @public_in(%struct.smack_value* %7), !dbg !931
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !932
  call void @public_in(%struct.smack_value* %8), !dbg !933
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !934
  call void @public_in(%struct.smack_value* %9), !dbg !935
  %10 = call %struct.smack_value* (i64*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64*, ...)*)(i64* %4), !dbg !936
  call void @public_in(%struct.smack_value* %10), !dbg !937
  %11 = bitcast i64* %4 to i8*, !dbg !938
  %12 = call %struct.smack_value* @__SMACK_values(i8* %11, i32 32), !dbg !939
  call void @public_in(%struct.smack_value* %12), !dbg !940
  %13 = call i32 @mbedtls_ct_rsaes_pkcs1_v15_unpadding(i8* %0, i64 %1, i8* %2, i64 %3, i64* %4), !dbg !941
  ret void, !dbg !942
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mbedtls_ct_rsaes_pkcs1_v15_unpadding_wrapper_t() #0 !dbg !943 {
  %1 = call i8* (...) @getinput(), !dbg !946
  call void @llvm.dbg.value(metadata i8* %1, metadata !947, metadata !DIExpression()), !dbg !948
  %2 = call i64 (...) @gt1(), !dbg !949
  call void @llvm.dbg.value(metadata i64 %2, metadata !950, metadata !DIExpression()), !dbg !948
  %3 = call i8* (...) @getinput2(), !dbg !951
  call void @llvm.dbg.value(metadata i8* %3, metadata !952, metadata !DIExpression()), !dbg !948
  %4 = call i64 (...) @gt2(), !dbg !953
  call void @llvm.dbg.value(metadata i64 %4, metadata !954, metadata !DIExpression()), !dbg !948
  %5 = call i64* (...) @gt3(), !dbg !955
  call void @llvm.dbg.value(metadata i64* %5, metadata !956, metadata !DIExpression()), !dbg !948
  %6 = call i32 @mbedtls_ct_rsaes_pkcs1_v15_unpadding(i8* %1, i64 %2, i8* %3, i64 %4, i64* %5), !dbg !957
  ret void, !dbg !958
}

declare dso_local i8* @getinput(...) #2

declare dso_local i64 @gt1(...) #2

declare dso_local i8* @getinput2(...) #2

declare dso_local i64 @gt2(...) #2

declare dso_local i64* @gt3(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

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
!25 = !DIFile(filename: "mbedtls_ct_rsaes_pkcs1_v15_unpadding.c", directory: "/home/luwei/bech-back/Mbed-tls/constant2")
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
!36 = !DILocalVariable(name: "a", arg: 1, scope: !31, file: !1, line: 50, type: !34)
!37 = !DILocation(line: 0, scope: !31)
!38 = !DILocalVariable(name: "b", arg: 2, scope: !31, file: !1, line: 51, type: !34)
!39 = !DILocalVariable(name: "n", arg: 3, scope: !31, file: !1, line: 52, type: !21)
!40 = !DILocalVariable(name: "A", scope: !31, file: !1, line: 55, type: !16)
!41 = !DILocalVariable(name: "B", scope: !31, file: !1, line: 56, type: !16)
!42 = !DILocalVariable(name: "diff", scope: !31, file: !1, line: 57, type: !18)
!43 = !DILocation(line: 57, column: 28, scope: !31)
!44 = !DILocalVariable(name: "i", scope: !31, file: !1, line: 54, type: !21)
!45 = !DILocation(line: 59, column: 10, scope: !46)
!46 = distinct !DILexicalBlock(scope: !31, file: !1, line: 59, column: 5)
!47 = !DILocation(line: 0, scope: !46)
!48 = !DILocation(line: 59, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 59, column: 5)
!50 = !DILocation(line: 59, column: 5, scope: !46)
!51 = !DILocation(line: 64, column: 27, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 60, column: 5)
!53 = !DILocalVariable(name: "x", scope: !52, file: !1, line: 64, type: !19)
!54 = !DILocation(line: 0, scope: !52)
!55 = !DILocation(line: 64, column: 37, scope: !52)
!56 = !DILocalVariable(name: "y", scope: !52, file: !1, line: 64, type: !19)
!57 = !DILocation(line: 65, column: 17, scope: !52)
!58 = !DILocation(line: 65, column: 21, scope: !52)
!59 = !DILocation(line: 65, column: 19, scope: !52)
!60 = !DILocation(line: 65, column: 14, scope: !52)
!61 = !DILocation(line: 66, column: 5, scope: !52)
!62 = !DILocation(line: 59, column: 25, scope: !49)
!63 = !DILocation(line: 59, column: 5, scope: !49)
!64 = distinct !{!64, !50, !65, !66}
!65 = !DILocation(line: 66, column: 5, scope: !46)
!66 = !{!"llvm.loop.mustprogress"}
!67 = !DILocation(line: 68, column: 18, scope: !31)
!68 = !DILocation(line: 68, column: 13, scope: !31)
!69 = !DILocation(line: 68, column: 5, scope: !31)
!70 = distinct !DISubprogram(name: "mbedtls_ct_uint_mask", scope: !1, file: !1, line: 71, type: !71, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!71 = !DISubroutineType(types: !72)
!72 = !{!5, !5}
!73 = !DILocalVariable(name: "value", arg: 1, scope: !70, file: !1, line: 71, type: !5)
!74 = !DILocation(line: 0, scope: !70)
!75 = !DILocation(line: 79, column: 27, scope: !70)
!76 = !DILocation(line: 79, column: 25, scope: !70)
!77 = !DILocation(line: 79, column: 37, scope: !70)
!78 = !DILocation(line: 79, column: 13, scope: !70)
!79 = !DILocation(line: 79, column: 5, scope: !70)
!80 = distinct !DISubprogram(name: "mbedtls_ct_size_mask", scope: !1, file: !1, line: 87, type: !81, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!81 = !DISubroutineType(types: !82)
!82 = !{!21, !21}
!83 = !DILocalVariable(name: "value", arg: 1, scope: !80, file: !1, line: 87, type: !21)
!84 = !DILocation(line: 0, scope: !80)
!85 = !DILocation(line: 95, column: 27, scope: !80)
!86 = !DILocation(line: 95, column: 25, scope: !80)
!87 = !DILocation(line: 95, column: 37, scope: !80)
!88 = !DILocation(line: 95, column: 13, scope: !80)
!89 = !DILocation(line: 95, column: 5, scope: !80)
!90 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_mask", scope: !1, file: !1, line: 105, type: !91, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !93}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_mpi_uint", file: !94, line: 141, baseType: !95)
!94 = !DIFile(filename: "../mbedtls/include/mbedtls/bignum.h", directory: "/home/luwei/bech-back/Mbed-tls/constant2")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !96, line: 27, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !98, line: 45, baseType: !23)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!99 = !DILocalVariable(name: "value", arg: 1, scope: !90, file: !1, line: 105, type: !93)
!100 = !DILocation(line: 0, scope: !90)
!101 = !DILocation(line: 113, column: 27, scope: !90)
!102 = !DILocation(line: 113, column: 25, scope: !90)
!103 = !DILocation(line: 113, column: 37, scope: !90)
!104 = !DILocation(line: 113, column: 13, scope: !90)
!105 = !DILocation(line: 113, column: 5, scope: !90)
!106 = distinct !DISubprogram(name: "mbedtls_ct_size_mask_ge", scope: !1, file: !1, line: 150, type: !107, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!107 = !DISubroutineType(types: !108)
!108 = !{!21, !21, !21}
!109 = !DILocalVariable(name: "x", arg: 1, scope: !106, file: !1, line: 150, type: !21)
!110 = !DILocation(line: 0, scope: !106)
!111 = !DILocalVariable(name: "y", arg: 2, scope: !106, file: !1, line: 151, type: !21)
!112 = !DILocation(line: 153, column: 14, scope: !106)
!113 = !DILocation(line: 153, column: 13, scope: !106)
!114 = !DILocation(line: 153, column: 5, scope: !106)
!115 = distinct !DISubprogram(name: "mbedtls_ct_size_mask_lt", scope: !1, file: !1, line: 135, type: !107, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!116 = !DILocalVariable(name: "x", arg: 1, scope: !115, file: !1, line: 135, type: !21)
!117 = !DILocation(line: 0, scope: !115)
!118 = !DILocalVariable(name: "y", arg: 2, scope: !115, file: !1, line: 136, type: !21)
!119 = !DILocation(line: 139, column: 26, scope: !115)
!120 = !DILocalVariable(name: "sub", scope: !115, file: !1, line: 139, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!122 = !DILocation(line: 142, column: 29, scope: !115)
!123 = !DILocalVariable(name: "sub1", scope: !115, file: !1, line: 142, type: !121)
!124 = !DILocation(line: 145, column: 25, scope: !115)
!125 = !DILocalVariable(name: "mask", scope: !115, file: !1, line: 145, type: !121)
!126 = !DILocation(line: 147, column: 5, scope: !115)
!127 = distinct !DISubprogram(name: "mbedtls_ct_size_bool_eq", scope: !1, file: !1, line: 178, type: !128, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!128 = !DISubroutineType(types: !129)
!129 = !{!5, !21, !21}
!130 = !DILocalVariable(name: "x", arg: 1, scope: !127, file: !1, line: 178, type: !21)
!131 = !DILocation(line: 0, scope: !127)
!132 = !DILocalVariable(name: "y", arg: 2, scope: !127, file: !1, line: 179, type: !21)
!133 = !DILocation(line: 182, column: 27, scope: !127)
!134 = !DILocalVariable(name: "diff", scope: !127, file: !1, line: 182, type: !121)
!135 = !DILocation(line: 192, column: 47, scope: !127)
!136 = !DILocation(line: 192, column: 36, scope: !127)
!137 = !DILocalVariable(name: "diff_msb", scope: !127, file: !1, line: 192, type: !121)
!138 = !DILocation(line: 199, column: 37, scope: !127)
!139 = !DILocation(line: 199, column: 28, scope: !127)
!140 = !DILocalVariable(name: "diff1", scope: !127, file: !1, line: 199, type: !141)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!142 = !DILocation(line: 201, column: 15, scope: !127)
!143 = !DILocation(line: 201, column: 5, scope: !127)
!144 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_lt", scope: !1, file: !1, line: 228, type: !145, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!145 = !DISubroutineType(types: !146)
!146 = !{!5, !147, !147}
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!148 = !DILocalVariable(name: "x", arg: 1, scope: !144, file: !1, line: 228, type: !147)
!149 = !DILocation(line: 0, scope: !144)
!150 = !DILocalVariable(name: "y", arg: 2, scope: !144, file: !1, line: 229, type: !147)
!151 = !DILocation(line: 237, column: 16, scope: !144)
!152 = !DILocalVariable(name: "cond", scope: !144, file: !1, line: 232, type: !93)
!153 = !DILocation(line: 242, column: 15, scope: !144)
!154 = !DILocation(line: 242, column: 23, scope: !144)
!155 = !DILocation(line: 242, column: 21, scope: !144)
!156 = !DILocalVariable(name: "ret", scope: !144, file: !1, line: 231, type: !93)
!157 = !DILocation(line: 248, column: 14, scope: !144)
!158 = !DILocation(line: 248, column: 9, scope: !144)
!159 = !DILocation(line: 251, column: 15, scope: !144)
!160 = !DILocation(line: 253, column: 12, scope: !144)
!161 = !DILocation(line: 253, column: 5, scope: !144)
!162 = distinct !DISubprogram(name: "mbedtls_ct_uint_if", scope: !1, file: !1, line: 258, type: !163, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!163 = !DISubroutineType(types: !164)
!164 = !{!5, !5, !5, !5}
!165 = !DILocalVariable(name: "condition", arg: 1, scope: !162, file: !1, line: 258, type: !5)
!166 = !DILocation(line: 0, scope: !162)
!167 = !DILocalVariable(name: "if1", arg: 2, scope: !162, file: !1, line: 259, type: !5)
!168 = !DILocalVariable(name: "if0", arg: 3, scope: !162, file: !1, line: 260, type: !5)
!169 = !DILocation(line: 262, column: 21, scope: !162)
!170 = !DILocalVariable(name: "mask", scope: !162, file: !1, line: 262, type: !5)
!171 = !DILocation(line: 263, column: 20, scope: !162)
!172 = !DILocation(line: 263, column: 31, scope: !162)
!173 = !DILocation(line: 263, column: 37, scope: !162)
!174 = !DILocation(line: 263, column: 28, scope: !162)
!175 = !DILocation(line: 263, column: 5, scope: !162)
!176 = distinct !DISubprogram(name: "mbedtls_ct_mpi_uint_cond_assign", scope: !1, file: !1, line: 302, type: !177, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !21, !179, !180, !19}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!181 = !DILocalVariable(name: "n", arg: 1, scope: !176, file: !1, line: 302, type: !21)
!182 = !DILocation(line: 0, scope: !176)
!183 = !DILocalVariable(name: "dest", arg: 2, scope: !176, file: !1, line: 303, type: !179)
!184 = !DILocalVariable(name: "src", arg: 3, scope: !176, file: !1, line: 304, type: !180)
!185 = !DILocalVariable(name: "condition", arg: 4, scope: !176, file: !1, line: 305, type: !19)
!186 = !DILocation(line: 317, column: 36, scope: !176)
!187 = !DILocation(line: 317, column: 35, scope: !176)
!188 = !DILocalVariable(name: "mask", scope: !176, file: !1, line: 317, type: !147)
!189 = !DILocalVariable(name: "i", scope: !176, file: !1, line: 307, type: !21)
!190 = !DILocation(line: 323, column: 10, scope: !191)
!191 = distinct !DILexicalBlock(scope: !176, file: !1, line: 323, column: 5)
!192 = !DILocation(line: 0, scope: !191)
!193 = !DILocation(line: 323, column: 19, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 323, column: 5)
!195 = !DILocation(line: 323, column: 5, scope: !191)
!196 = !DILocation(line: 324, column: 21, scope: !194)
!197 = !DILocation(line: 324, column: 28, scope: !194)
!198 = !DILocation(line: 324, column: 41, scope: !194)
!199 = !DILocation(line: 324, column: 51, scope: !194)
!200 = !DILocation(line: 324, column: 49, scope: !194)
!201 = !DILocation(line: 324, column: 37, scope: !194)
!202 = !DILocation(line: 324, column: 9, scope: !194)
!203 = !DILocation(line: 324, column: 17, scope: !194)
!204 = !DILocation(line: 323, column: 25, scope: !194)
!205 = !DILocation(line: 323, column: 5, scope: !194)
!206 = distinct !{!206, !195, !207, !66}
!207 = !DILocation(line: 324, column: 57, scope: !191)
!208 = !DILocation(line: 325, column: 1, scope: !176)
!209 = distinct !DISubprogram(name: "mbedtls_ct_base64_enc_char", scope: !1, file: !1, line: 331, type: !210, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!210 = !DISubroutineType(types: !211)
!211 = !{!19, !19}
!212 = !DILocalVariable(name: "value", arg: 1, scope: !209, file: !1, line: 331, type: !19)
!213 = !DILocation(line: 0, scope: !209)
!214 = !DILocalVariable(name: "digit", scope: !209, file: !1, line: 333, type: !19)
!215 = !DILocation(line: 337, column: 14, scope: !209)
!216 = !DILocation(line: 337, column: 72, scope: !209)
!217 = !DILocation(line: 337, column: 70, scope: !209)
!218 = !DILocation(line: 337, column: 62, scope: !209)
!219 = !DILocation(line: 337, column: 11, scope: !209)
!220 = !DILocation(line: 338, column: 14, scope: !209)
!221 = !DILocation(line: 338, column: 72, scope: !209)
!222 = !DILocation(line: 338, column: 70, scope: !209)
!223 = !DILocation(line: 338, column: 78, scope: !209)
!224 = !DILocation(line: 338, column: 62, scope: !209)
!225 = !DILocation(line: 338, column: 11, scope: !209)
!226 = !DILocation(line: 339, column: 14, scope: !209)
!227 = !DILocation(line: 339, column: 72, scope: !209)
!228 = !DILocation(line: 339, column: 70, scope: !209)
!229 = !DILocation(line: 339, column: 78, scope: !209)
!230 = !DILocation(line: 339, column: 62, scope: !209)
!231 = !DILocation(line: 339, column: 11, scope: !209)
!232 = !DILocation(line: 340, column: 14, scope: !209)
!233 = !DILocation(line: 340, column: 62, scope: !209)
!234 = !DILocation(line: 340, column: 11, scope: !209)
!235 = !DILocation(line: 341, column: 14, scope: !209)
!236 = !DILocation(line: 341, column: 62, scope: !209)
!237 = !DILocation(line: 341, column: 11, scope: !209)
!238 = !DILocation(line: 342, column: 5, scope: !209)
!239 = distinct !DISubprogram(name: "mbedtls_ct_uchar_mask_of_range", scope: !1, file: !1, line: 165, type: !240, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!240 = !DISubroutineType(types: !241)
!241 = !{!19, !19, !19, !19}
!242 = !DILocalVariable(name: "low", arg: 1, scope: !239, file: !1, line: 165, type: !19)
!243 = !DILocation(line: 0, scope: !239)
!244 = !DILocalVariable(name: "high", arg: 2, scope: !239, file: !1, line: 166, type: !19)
!245 = !DILocalVariable(name: "c", arg: 3, scope: !239, file: !1, line: 167, type: !19)
!246 = !DILocation(line: 170, column: 27, scope: !239)
!247 = !DILocation(line: 170, column: 42, scope: !239)
!248 = !DILocation(line: 170, column: 40, scope: !239)
!249 = !DILocation(line: 170, column: 48, scope: !239)
!250 = !DILocalVariable(name: "low_mask", scope: !239, file: !1, line: 170, type: !5)
!251 = !DILocation(line: 172, column: 28, scope: !239)
!252 = !DILocation(line: 172, column: 46, scope: !239)
!253 = !DILocation(line: 172, column: 44, scope: !239)
!254 = !DILocation(line: 172, column: 50, scope: !239)
!255 = !DILocalVariable(name: "high_mask", scope: !239, file: !1, line: 172, type: !5)
!256 = !DILocation(line: 173, column: 25, scope: !239)
!257 = !DILocation(line: 173, column: 13, scope: !239)
!258 = !DILocation(line: 173, column: 39, scope: !239)
!259 = !DILocation(line: 173, column: 11, scope: !239)
!260 = !DILocation(line: 173, column: 5, scope: !239)
!261 = distinct !DISubprogram(name: "mbedtls_ct_base64_dec_value", scope: !1, file: !1, line: 345, type: !262, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !19}
!264 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!265 = !DILocalVariable(name: "c", arg: 1, scope: !261, file: !1, line: 345, type: !19)
!266 = !DILocation(line: 0, scope: !261)
!267 = !DILocalVariable(name: "val", scope: !261, file: !1, line: 347, type: !19)
!268 = !DILocation(line: 352, column: 12, scope: !261)
!269 = !DILocation(line: 352, column: 62, scope: !261)
!270 = !DILocation(line: 352, column: 64, scope: !261)
!271 = !DILocation(line: 352, column: 70, scope: !261)
!272 = !DILocation(line: 352, column: 75, scope: !261)
!273 = !DILocation(line: 352, column: 58, scope: !261)
!274 = !DILocation(line: 352, column: 9, scope: !261)
!275 = !DILocation(line: 353, column: 12, scope: !261)
!276 = !DILocation(line: 353, column: 62, scope: !261)
!277 = !DILocation(line: 353, column: 64, scope: !261)
!278 = !DILocation(line: 353, column: 70, scope: !261)
!279 = !DILocation(line: 353, column: 75, scope: !261)
!280 = !DILocation(line: 353, column: 58, scope: !261)
!281 = !DILocation(line: 353, column: 9, scope: !261)
!282 = !DILocation(line: 354, column: 12, scope: !261)
!283 = !DILocation(line: 354, column: 62, scope: !261)
!284 = !DILocation(line: 354, column: 64, scope: !261)
!285 = !DILocation(line: 354, column: 70, scope: !261)
!286 = !DILocation(line: 354, column: 75, scope: !261)
!287 = !DILocation(line: 354, column: 58, scope: !261)
!288 = !DILocation(line: 354, column: 9, scope: !261)
!289 = !DILocation(line: 355, column: 12, scope: !261)
!290 = !DILocation(line: 355, column: 62, scope: !261)
!291 = !DILocation(line: 355, column: 64, scope: !261)
!292 = !DILocation(line: 355, column: 70, scope: !261)
!293 = !DILocation(line: 355, column: 75, scope: !261)
!294 = !DILocation(line: 355, column: 58, scope: !261)
!295 = !DILocation(line: 355, column: 9, scope: !261)
!296 = !DILocation(line: 356, column: 12, scope: !261)
!297 = !DILocation(line: 356, column: 62, scope: !261)
!298 = !DILocation(line: 356, column: 64, scope: !261)
!299 = !DILocation(line: 356, column: 70, scope: !261)
!300 = !DILocation(line: 356, column: 75, scope: !261)
!301 = !DILocation(line: 356, column: 58, scope: !261)
!302 = !DILocation(line: 356, column: 9, scope: !261)
!303 = !DILocation(line: 359, column: 13, scope: !261)
!304 = !DILocation(line: 359, column: 17, scope: !261)
!305 = !DILocation(line: 359, column: 11, scope: !261)
!306 = !DILocation(line: 359, column: 5, scope: !261)
!307 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_if_eq", scope: !1, file: !1, line: 410, type: !308, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310, !311, !21, !21, !21}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!313 = !DILocalVariable(name: "dest", arg: 1, scope: !307, file: !1, line: 410, type: !310)
!314 = !DILocation(line: 0, scope: !307)
!315 = !DILocalVariable(name: "src", arg: 2, scope: !307, file: !1, line: 411, type: !311)
!316 = !DILocalVariable(name: "len", arg: 3, scope: !307, file: !1, line: 412, type: !21)
!317 = !DILocalVariable(name: "c1", arg: 4, scope: !307, file: !1, line: 413, type: !21)
!318 = !DILocalVariable(name: "c2", arg: 5, scope: !307, file: !1, line: 414, type: !21)
!319 = !DILocation(line: 417, column: 26, scope: !307)
!320 = !DILocalVariable(name: "equal", scope: !307, file: !1, line: 417, type: !121)
!321 = !DILocation(line: 418, column: 48, scope: !307)
!322 = !DILocation(line: 418, column: 32, scope: !307)
!323 = !DILocalVariable(name: "mask", scope: !307, file: !1, line: 418, type: !312)
!324 = !DILocalVariable(name: "i", scope: !325, file: !1, line: 421, type: !21)
!325 = distinct !DILexicalBlock(scope: !307, file: !1, line: 421, column: 5)
!326 = !DILocation(line: 0, scope: !325)
!327 = !DILocation(line: 421, column: 10, scope: !325)
!328 = !DILocation(line: 421, column: 26, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !1, line: 421, column: 5)
!330 = !DILocation(line: 421, column: 5, scope: !325)
!331 = !DILocation(line: 422, column: 21, scope: !329)
!332 = !DILocation(line: 422, column: 30, scope: !329)
!333 = !DILocation(line: 422, column: 28, scope: !329)
!334 = !DILocation(line: 422, column: 41, scope: !329)
!335 = !DILocation(line: 422, column: 52, scope: !329)
!336 = !DILocation(line: 422, column: 51, scope: !329)
!337 = !DILocation(line: 422, column: 49, scope: !329)
!338 = !DILocation(line: 422, column: 37, scope: !329)
!339 = !DILocation(line: 422, column: 19, scope: !329)
!340 = !DILocation(line: 422, column: 9, scope: !329)
!341 = !DILocation(line: 422, column: 17, scope: !329)
!342 = !DILocation(line: 421, column: 34, scope: !329)
!343 = !DILocation(line: 421, column: 5, scope: !329)
!344 = distinct !{!344, !330, !345, !66}
!345 = !DILocation(line: 422, column: 57, scope: !325)
!346 = !DILocation(line: 423, column: 1, scope: !307)
!347 = distinct !DISubprogram(name: "mbedtls_ct_memcpy_offset", scope: !1, file: !1, line: 425, type: !348, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !310, !311, !21, !21, !21, !21}
!350 = !DILocalVariable(name: "dest", arg: 1, scope: !347, file: !1, line: 425, type: !310)
!351 = !DILocation(line: 0, scope: !347)
!352 = !DILocalVariable(name: "src", arg: 2, scope: !347, file: !1, line: 426, type: !311)
!353 = !DILocalVariable(name: "offset", arg: 3, scope: !347, file: !1, line: 427, type: !21)
!354 = !DILocalVariable(name: "offset_min", arg: 4, scope: !347, file: !1, line: 428, type: !21)
!355 = !DILocalVariable(name: "offset_max", arg: 5, scope: !347, file: !1, line: 429, type: !21)
!356 = !DILocalVariable(name: "len", arg: 6, scope: !347, file: !1, line: 430, type: !21)
!357 = !DILocalVariable(name: "offsetval", scope: !347, file: !1, line: 432, type: !21)
!358 = !DILocation(line: 434, column: 10, scope: !359)
!359 = distinct !DILexicalBlock(scope: !347, file: !1, line: 434, column: 5)
!360 = !DILocation(line: 0, scope: !359)
!361 = !DILocation(line: 434, column: 44, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !1, line: 434, column: 5)
!363 = !DILocation(line: 434, column: 5, scope: !359)
!364 = !DILocation(line: 436, column: 44, scope: !365)
!365 = distinct !DILexicalBlock(scope: !362, file: !1, line: 435, column: 5)
!366 = !DILocation(line: 436, column: 9, scope: !365)
!367 = !DILocation(line: 438, column: 5, scope: !365)
!368 = !DILocation(line: 434, column: 68, scope: !362)
!369 = !DILocation(line: 434, column: 5, scope: !362)
!370 = distinct !{!370, !363, !371, !66}
!371 = !DILocation(line: 438, column: 5, scope: !359)
!372 = !DILocation(line: 439, column: 1, scope: !347)
!373 = distinct !DISubprogram(name: "mbedtls_ct_hmac", scope: !1, file: !1, line: 567, type: !374, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!374 = !DISubroutineType(types: !375)
!375 = !{!20, !376, !311, !21, !311, !21, !21, !21, !310}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_context_t", file: !4, line: 103, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_md_context_t", file: !4, line: 93, size: 192, elements: !379)
!379 = !{!380, !385, !387}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "md_info", scope: !378, file: !4, line: 96, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_info_t", file: !4, line: 88, baseType: !384)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_md_info_t", file: !4, line: 88, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "md_ctx", scope: !378, file: !4, line: 99, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hmac_ctx", scope: !378, file: !4, line: 102, baseType: !386, size: 64, offset: 128)
!388 = !DILocalVariable(name: "ctx", arg: 1, scope: !373, file: !1, line: 567, type: !376)
!389 = !DILocation(line: 0, scope: !373)
!390 = !DILocalVariable(name: "add_data", arg: 2, scope: !373, file: !1, line: 568, type: !311)
!391 = !DILocalVariable(name: "add_data_len", arg: 3, scope: !373, file: !1, line: 569, type: !21)
!392 = !DILocalVariable(name: "data", arg: 4, scope: !373, file: !1, line: 570, type: !311)
!393 = !DILocalVariable(name: "data_len_secret", arg: 5, scope: !373, file: !1, line: 571, type: !21)
!394 = !DILocalVariable(name: "min_data_len", arg: 6, scope: !373, file: !1, line: 572, type: !21)
!395 = !DILocalVariable(name: "max_data_len", arg: 7, scope: !373, file: !1, line: 573, type: !21)
!396 = !DILocalVariable(name: "output", arg: 8, scope: !373, file: !1, line: 574, type: !310)
!397 = !DILocation(line: 590, column: 64, scope: !373)
!398 = !DILocation(line: 590, column: 38, scope: !373)
!399 = !DILocalVariable(name: "md_alg", scope: !373, file: !1, line: 590, type: !400)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_md_type_t", file: !4, line: 64, baseType: !3)
!402 = !DILocation(line: 593, column: 38, scope: !373)
!403 = !DILocation(line: 593, column: 31, scope: !373)
!404 = !DILocalVariable(name: "block_size", scope: !373, file: !1, line: 593, type: !121)
!405 = !DILocation(line: 594, column: 45, scope: !373)
!406 = !DILocalVariable(name: "ikey", scope: !373, file: !1, line: 594, type: !407)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!408 = !DILocation(line: 595, column: 45, scope: !373)
!409 = !DILocalVariable(name: "okey", scope: !373, file: !1, line: 595, type: !407)
!410 = !DILocation(line: 596, column: 56, scope: !373)
!411 = !DILocation(line: 596, column: 30, scope: !373)
!412 = !DILocalVariable(name: "hash_size", scope: !373, file: !1, line: 596, type: !121)
!413 = !DILocalVariable(name: "aux_out", scope: !373, file: !1, line: 598, type: !414)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 64)
!417 = !DILocation(line: 598, column: 19, scope: !373)
!418 = !DILocalVariable(name: "aux", scope: !373, file: !1, line: 599, type: !377)
!419 = !DILocation(line: 599, column: 26, scope: !373)
!420 = !DILocalVariable(name: "ret", scope: !373, file: !1, line: 601, type: !20)
!421 = !DILocation(line: 603, column: 5, scope: !373)
!422 = !DILocation(line: 612, column: 5, scope: !373)
!423 = !DILocation(line: 612, column: 5, scope: !424)
!424 = distinct !DILexicalBlock(scope: !373, file: !1, line: 612, column: 5)
!425 = !DILocation(line: 612, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !424, file: !1, line: 612, column: 5)
!427 = !DILocation(line: 616, column: 5, scope: !373)
!428 = !DILocation(line: 616, column: 5, scope: !429)
!429 = distinct !DILexicalBlock(scope: !373, file: !1, line: 616, column: 5)
!430 = !DILocation(line: 616, column: 5, scope: !431)
!431 = distinct !DILexicalBlock(scope: !429, file: !1, line: 616, column: 5)
!432 = !DILocation(line: 617, column: 5, scope: !373)
!433 = !DILocation(line: 617, column: 5, scope: !434)
!434 = distinct !DILexicalBlock(scope: !373, file: !1, line: 617, column: 5)
!435 = !DILocation(line: 617, column: 5, scope: !436)
!436 = distinct !DILexicalBlock(scope: !434, file: !1, line: 617, column: 5)
!437 = !DILocation(line: 623, column: 5, scope: !373)
!438 = !DILocalVariable(name: "offset", scope: !373, file: !1, line: 600, type: !21)
!439 = !DILocation(line: 626, column: 10, scope: !440)
!440 = distinct !DILexicalBlock(scope: !373, file: !1, line: 626, column: 5)
!441 = !DILocation(line: 0, scope: !440)
!442 = !DILocation(line: 626, column: 40, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !1, line: 626, column: 5)
!444 = !DILocation(line: 626, column: 5, scope: !440)
!445 = !DILocation(line: 628, column: 9, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !1, line: 627, column: 5)
!447 = !DILocation(line: 628, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !446, file: !1, line: 628, column: 9)
!449 = !DILocation(line: 628, column: 9, scope: !450)
!450 = distinct !DILexicalBlock(scope: !448, file: !1, line: 628, column: 9)
!451 = !DILocation(line: 629, column: 9, scope: !446)
!452 = !DILocation(line: 629, column: 9, scope: !453)
!453 = distinct !DILexicalBlock(scope: !446, file: !1, line: 629, column: 9)
!454 = !DILocation(line: 629, column: 9, scope: !455)
!455 = distinct !DILexicalBlock(scope: !453, file: !1, line: 629, column: 9)
!456 = !DILocation(line: 631, column: 42, scope: !446)
!457 = !DILocation(line: 631, column: 9, scope: !446)
!458 = !DILocation(line: 634, column: 20, scope: !459)
!459 = distinct !DILexicalBlock(scope: !446, file: !1, line: 634, column: 13)
!460 = !DILocation(line: 634, column: 13, scope: !446)
!461 = !DILocation(line: 635, column: 13, scope: !459)
!462 = !DILocation(line: 635, column: 13, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !1, line: 635, column: 13)
!464 = !DILocation(line: 635, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !463, file: !1, line: 635, column: 13)
!466 = !DILocation(line: 636, column: 5, scope: !446)
!467 = !DILocation(line: 626, column: 63, scope: !443)
!468 = !DILocation(line: 626, column: 5, scope: !443)
!469 = distinct !{!469, !444, !470, !66}
!470 = !DILocation(line: 636, column: 5, scope: !440)
!471 = !DILocation(line: 639, column: 5, scope: !373)
!472 = !DILocation(line: 639, column: 5, scope: !473)
!473 = distinct !DILexicalBlock(scope: !373, file: !1, line: 639, column: 5)
!474 = !DILocation(line: 639, column: 5, scope: !475)
!475 = distinct !DILexicalBlock(scope: !473, file: !1, line: 639, column: 5)
!476 = !DILocation(line: 642, column: 5, scope: !373)
!477 = !DILocation(line: 642, column: 5, scope: !478)
!478 = distinct !DILexicalBlock(scope: !373, file: !1, line: 642, column: 5)
!479 = !DILocation(line: 642, column: 5, scope: !480)
!480 = distinct !DILexicalBlock(scope: !478, file: !1, line: 642, column: 5)
!481 = !DILocation(line: 643, column: 5, scope: !373)
!482 = !DILocation(line: 643, column: 5, scope: !483)
!483 = distinct !DILexicalBlock(scope: !373, file: !1, line: 643, column: 5)
!484 = !DILocation(line: 643, column: 5, scope: !485)
!485 = distinct !DILexicalBlock(scope: !483, file: !1, line: 643, column: 5)
!486 = !DILocation(line: 644, column: 5, scope: !373)
!487 = !DILocation(line: 644, column: 5, scope: !488)
!488 = distinct !DILexicalBlock(scope: !373, file: !1, line: 644, column: 5)
!489 = !DILocation(line: 644, column: 5, scope: !490)
!490 = distinct !DILexicalBlock(scope: !488, file: !1, line: 644, column: 5)
!491 = !DILocation(line: 645, column: 5, scope: !373)
!492 = !DILocation(line: 645, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !373, file: !1, line: 645, column: 5)
!494 = !DILocation(line: 645, column: 5, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !1, line: 645, column: 5)
!496 = !DILocation(line: 648, column: 5, scope: !373)
!497 = !DILocation(line: 648, column: 5, scope: !498)
!498 = distinct !DILexicalBlock(scope: !373, file: !1, line: 648, column: 5)
!499 = !DILocation(line: 648, column: 5, scope: !500)
!500 = distinct !DILexicalBlock(scope: !498, file: !1, line: 648, column: 5)
!501 = !DILabel(scope: !373, name: "cleanup", file: !1, line: 652)
!502 = !DILocation(line: 652, column: 1, scope: !373)
!503 = !DILocation(line: 653, column: 5, scope: !373)
!504 = !DILocation(line: 654, column: 5, scope: !373)
!505 = distinct !DISubprogram(name: "mbedtls_mpi_safe_cond_assign", scope: !1, file: !1, line: 677, type: !506, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!506 = !DISubroutineType(types: !507)
!507 = !{!20, !508, !515, !19}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbedtls_mpi", file: !94, line: 227, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mbedtls_mpi", file: !94, line: 203, size: 192, elements: !511)
!511 = !{!512, !513, !514}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !510, file: !94, line: 216, baseType: !20, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !510, file: !94, line: 219, baseType: !21, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !510, file: !94, line: 225, baseType: !179, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!517 = !DILocalVariable(name: "X", arg: 1, scope: !505, file: !1, line: 677, type: !508)
!518 = !DILocation(line: 0, scope: !505)
!519 = !DILocalVariable(name: "Y", arg: 2, scope: !505, file: !1, line: 678, type: !515)
!520 = !DILocalVariable(name: "assign", arg: 3, scope: !505, file: !1, line: 679, type: !19)
!521 = !DILocalVariable(name: "ret", scope: !505, file: !1, line: 681, type: !20)
!522 = !DILocation(line: 682, column: 5, scope: !505)
!523 = !DILocation(line: 682, column: 5, scope: !524)
!524 = distinct !DILexicalBlock(scope: !505, file: !1, line: 682, column: 5)
!525 = !DILocation(line: 683, column: 5, scope: !505)
!526 = !DILocation(line: 683, column: 5, scope: !527)
!527 = distinct !DILexicalBlock(scope: !505, file: !1, line: 683, column: 5)
!528 = !DILocation(line: 686, column: 60, scope: !505)
!529 = !DILocation(line: 686, column: 34, scope: !505)
!530 = !DILocalVariable(name: "limb_mask", scope: !505, file: !1, line: 686, type: !93)
!531 = !DILocation(line: 688, column: 5, scope: !505)
!532 = !DILocation(line: 688, column: 5, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 688, column: 5)
!534 = distinct !DILexicalBlock(scope: !505, file: !1, line: 688, column: 5)
!535 = !DILocation(line: 688, column: 5, scope: !534)
!536 = !DILocation(line: 690, column: 52, scope: !505)
!537 = !DILocation(line: 690, column: 58, scope: !505)
!538 = !DILocation(line: 690, column: 12, scope: !505)
!539 = !DILocation(line: 690, column: 8, scope: !505)
!540 = !DILocation(line: 690, column: 10, scope: !505)
!541 = !DILocation(line: 692, column: 38, scope: !505)
!542 = !DILocation(line: 692, column: 44, scope: !505)
!543 = !DILocation(line: 692, column: 50, scope: !505)
!544 = !DILocation(line: 692, column: 5, scope: !505)
!545 = !DILocation(line: 694, column: 24, scope: !546)
!546 = distinct !DILexicalBlock(scope: !505, file: !1, line: 694, column: 5)
!547 = !DILocalVariable(name: "i", scope: !546, file: !1, line: 694, type: !21)
!548 = !DILocation(line: 0, scope: !546)
!549 = !DILocation(line: 694, column: 10, scope: !546)
!550 = !DILocation(line: 694, column: 34, scope: !551)
!551 = distinct !DILexicalBlock(scope: !546, file: !1, line: 694, column: 5)
!552 = !DILocation(line: 694, column: 29, scope: !551)
!553 = !DILocation(line: 694, column: 5, scope: !546)
!554 = !DILocation(line: 695, column: 20, scope: !551)
!555 = !DILocation(line: 695, column: 12, scope: !551)
!556 = !DILocation(line: 695, column: 9, scope: !551)
!557 = !DILocation(line: 695, column: 17, scope: !551)
!558 = !DILocation(line: 694, column: 38, scope: !551)
!559 = !DILocation(line: 694, column: 5, scope: !551)
!560 = distinct !{!560, !553, !561, !66}
!561 = !DILocation(line: 695, column: 21, scope: !546)
!562 = !DILabel(scope: !505, name: "cleanup", file: !1, line: 697)
!563 = !DILocation(line: 697, column: 1, scope: !505)
!564 = !DILocation(line: 698, column: 5, scope: !505)
!565 = distinct !DISubprogram(name: "mbedtls_ct_cond_select_sign", scope: !1, file: !1, line: 282, type: !566, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!566 = !DISubroutineType(types: !567)
!567 = !{!20, !19, !20, !20}
!568 = !DILocalVariable(name: "condition", arg: 1, scope: !565, file: !1, line: 282, type: !19)
!569 = !DILocation(line: 0, scope: !565)
!570 = !DILocalVariable(name: "if1", arg: 2, scope: !565, file: !1, line: 283, type: !20)
!571 = !DILocalVariable(name: "if0", arg: 3, scope: !565, file: !1, line: 284, type: !20)
!572 = !DILocation(line: 289, column: 25, scope: !565)
!573 = !DILocalVariable(name: "uif1", scope: !565, file: !1, line: 289, type: !5)
!574 = !DILocation(line: 290, column: 25, scope: !565)
!575 = !DILocalVariable(name: "uif0", scope: !565, file: !1, line: 290, type: !5)
!576 = !DILocation(line: 293, column: 27, scope: !565)
!577 = !DILocation(line: 293, column: 37, scope: !565)
!578 = !DILocalVariable(name: "mask", scope: !565, file: !1, line: 293, type: !141)
!579 = !DILocation(line: 296, column: 28, scope: !565)
!580 = !DILocation(line: 296, column: 26, scope: !565)
!581 = !DILocation(line: 296, column: 45, scope: !565)
!582 = !DILocation(line: 296, column: 36, scope: !565)
!583 = !DILocalVariable(name: "ur", scope: !565, file: !1, line: 296, type: !5)
!584 = !DILocation(line: 299, column: 22, scope: !565)
!585 = !DILocation(line: 299, column: 5, scope: !565)
!586 = distinct !DISubprogram(name: "mbedtls_mpi_safe_cond_swap", scope: !1, file: !1, line: 707, type: !587, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!587 = !DISubroutineType(types: !588)
!588 = !{!20, !508, !508, !19}
!589 = !DILocalVariable(name: "X", arg: 1, scope: !586, file: !1, line: 707, type: !508)
!590 = !DILocation(line: 0, scope: !586)
!591 = !DILocalVariable(name: "Y", arg: 2, scope: !586, file: !1, line: 708, type: !508)
!592 = !DILocalVariable(name: "swap", arg: 3, scope: !586, file: !1, line: 709, type: !19)
!593 = !DILocalVariable(name: "ret", scope: !586, file: !1, line: 711, type: !20)
!594 = !DILocation(line: 713, column: 5, scope: !586)
!595 = !DILocation(line: 713, column: 5, scope: !596)
!596 = distinct !DILexicalBlock(scope: !586, file: !1, line: 713, column: 5)
!597 = !DILocation(line: 714, column: 5, scope: !586)
!598 = !DILocation(line: 714, column: 5, scope: !599)
!599 = distinct !DILexicalBlock(scope: !586, file: !1, line: 714, column: 5)
!600 = !DILocation(line: 716, column: 11, scope: !601)
!601 = distinct !DILexicalBlock(scope: !586, file: !1, line: 716, column: 9)
!602 = !DILocation(line: 716, column: 9, scope: !586)
!603 = !DILocation(line: 717, column: 9, scope: !601)
!604 = !DILocation(line: 719, column: 5, scope: !586)
!605 = !DILocation(line: 719, column: 5, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 719, column: 5)
!607 = distinct !DILexicalBlock(scope: !586, file: !1, line: 719, column: 5)
!608 = !DILocation(line: 719, column: 5, scope: !607)
!609 = !DILocation(line: 720, column: 5, scope: !586)
!610 = !DILocation(line: 720, column: 5, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 720, column: 5)
!612 = distinct !DILexicalBlock(scope: !586, file: !1, line: 720, column: 5)
!613 = !DILocation(line: 720, column: 5, scope: !612)
!614 = !DILocation(line: 722, column: 12, scope: !586)
!615 = !DILocalVariable(name: "s", scope: !586, file: !1, line: 712, type: !20)
!616 = !DILocation(line: 723, column: 50, scope: !586)
!617 = !DILocation(line: 723, column: 56, scope: !586)
!618 = !DILocation(line: 723, column: 12, scope: !586)
!619 = !DILocation(line: 723, column: 8, scope: !586)
!620 = !DILocation(line: 723, column: 10, scope: !586)
!621 = !DILocation(line: 724, column: 53, scope: !586)
!622 = !DILocation(line: 724, column: 12, scope: !586)
!623 = !DILocation(line: 724, column: 8, scope: !586)
!624 = !DILocation(line: 724, column: 10, scope: !586)
!625 = !DILocation(line: 726, column: 36, scope: !586)
!626 = !DILocation(line: 726, column: 42, scope: !586)
!627 = !DILocation(line: 726, column: 48, scope: !586)
!628 = !DILocation(line: 726, column: 5, scope: !586)
!629 = !DILabel(scope: !586, name: "cleanup", file: !1, line: 728)
!630 = !DILocation(line: 728, column: 1, scope: !586)
!631 = !DILocation(line: 729, column: 5, scope: !586)
!632 = !DILocation(line: 730, column: 1, scope: !586)
!633 = distinct !DISubprogram(name: "mbedtls_mpi_core_lt_ct", scope: !1, file: !1, line: 735, type: !634, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!634 = !DISubroutineType(types: !635)
!635 = !{!5, !180, !180, !21}
!636 = !DILocalVariable(name: "A", arg: 1, scope: !633, file: !1, line: 735, type: !180)
!637 = !DILocation(line: 0, scope: !633)
!638 = !DILocalVariable(name: "B", arg: 2, scope: !633, file: !1, line: 736, type: !180)
!639 = !DILocalVariable(name: "limbs", arg: 3, scope: !633, file: !1, line: 737, type: !21)
!640 = !DILocalVariable(name: "done", scope: !633, file: !1, line: 739, type: !5)
!641 = !DILocalVariable(name: "cond", scope: !633, file: !1, line: 739, type: !5)
!642 = !DILocalVariable(name: "ret", scope: !633, file: !1, line: 739, type: !5)
!643 = !DILocalVariable(name: "i", scope: !644, file: !1, line: 745, type: !21)
!644 = distinct !DILexicalBlock(scope: !633, file: !1, line: 745, column: 5)
!645 = !DILocation(line: 0, scope: !644)
!646 = !DILocation(line: 745, column: 10, scope: !644)
!647 = !DILocation(line: 745, column: 30, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !1, line: 745, column: 5)
!649 = !DILocation(line: 745, column: 5, scope: !644)
!650 = !DILocation(line: 754, column: 44, scope: !651)
!651 = distinct !DILexicalBlock(scope: !648, file: !1, line: 746, column: 5)
!652 = !DILocation(line: 754, column: 40, scope: !651)
!653 = !DILocation(line: 754, column: 54, scope: !651)
!654 = !DILocation(line: 754, column: 50, scope: !651)
!655 = !DILocation(line: 754, column: 16, scope: !651)
!656 = !DILocation(line: 755, column: 14, scope: !651)
!657 = !DILocation(line: 763, column: 44, scope: !651)
!658 = !DILocation(line: 763, column: 40, scope: !651)
!659 = !DILocation(line: 763, column: 54, scope: !651)
!660 = !DILocation(line: 763, column: 50, scope: !651)
!661 = !DILocation(line: 763, column: 16, scope: !651)
!662 = !DILocation(line: 764, column: 27, scope: !651)
!663 = !DILocation(line: 764, column: 21, scope: !651)
!664 = !DILocation(line: 764, column: 13, scope: !651)
!665 = !DILocation(line: 765, column: 14, scope: !651)
!666 = !DILocation(line: 766, column: 5, scope: !651)
!667 = !DILocation(line: 745, column: 36, scope: !648)
!668 = !DILocation(line: 745, column: 5, scope: !648)
!669 = distinct !{!669, !649, !670, !66}
!670 = !DILocation(line: 766, column: 5, scope: !644)
!671 = !DILocation(line: 773, column: 5, scope: !633)
!672 = distinct !DISubprogram(name: "mbedtls_mpi_lt_mpi_ct", scope: !1, file: !1, line: 779, type: !673, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!673 = !DISubroutineType(types: !674)
!674 = !{!20, !515, !515, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!676 = !DILocalVariable(name: "X", arg: 1, scope: !672, file: !1, line: 779, type: !515)
!677 = !DILocation(line: 0, scope: !672)
!678 = !DILocalVariable(name: "Y", arg: 2, scope: !672, file: !1, line: 780, type: !515)
!679 = !DILocalVariable(name: "ret", arg: 3, scope: !672, file: !1, line: 781, type: !675)
!680 = !DILocation(line: 787, column: 5, scope: !672)
!681 = !DILocation(line: 787, column: 5, scope: !682)
!682 = distinct !DILexicalBlock(scope: !672, file: !1, line: 787, column: 5)
!683 = !DILocation(line: 788, column: 5, scope: !672)
!684 = !DILocation(line: 788, column: 5, scope: !685)
!685 = distinct !DILexicalBlock(scope: !672, file: !1, line: 788, column: 5)
!686 = !DILocation(line: 789, column: 5, scope: !672)
!687 = !DILocation(line: 789, column: 5, scope: !688)
!688 = distinct !DILexicalBlock(scope: !672, file: !1, line: 789, column: 5)
!689 = !DILocation(line: 791, column: 12, scope: !690)
!690 = distinct !DILexicalBlock(scope: !672, file: !1, line: 791, column: 9)
!691 = !DILocation(line: 791, column: 20, scope: !690)
!692 = !DILocation(line: 791, column: 14, scope: !690)
!693 = !DILocation(line: 791, column: 9, scope: !672)
!694 = !DILocation(line: 792, column: 9, scope: !690)
!695 = !DILocation(line: 798, column: 26, scope: !672)
!696 = !DILocation(line: 798, column: 28, scope: !672)
!697 = !DILocation(line: 798, column: 34, scope: !672)
!698 = !DILocalVariable(name: "X_is_negative", scope: !672, file: !1, line: 785, type: !5)
!699 = !DILocation(line: 799, column: 26, scope: !672)
!700 = !DILocation(line: 799, column: 28, scope: !672)
!701 = !DILocation(line: 799, column: 34, scope: !672)
!702 = !DILocalVariable(name: "Y_is_negative", scope: !672, file: !1, line: 785, type: !5)
!703 = !DILocation(line: 806, column: 28, scope: !672)
!704 = !DILocalVariable(name: "cond", scope: !672, file: !1, line: 785, type: !5)
!705 = !DILocation(line: 807, column: 17, scope: !672)
!706 = !DILocation(line: 807, column: 10, scope: !672)
!707 = !DILocalVariable(name: "done", scope: !672, file: !1, line: 785, type: !5)
!708 = !DILocation(line: 815, column: 17, scope: !709)
!709 = distinct !DILexicalBlock(scope: !672, file: !1, line: 815, column: 5)
!710 = !DILocalVariable(name: "i", scope: !672, file: !1, line: 783, type: !21)
!711 = !DILocation(line: 815, column: 10, scope: !709)
!712 = !DILocation(line: 0, scope: !709)
!713 = !DILocation(line: 815, column: 22, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !1, line: 815, column: 5)
!715 = !DILocation(line: 815, column: 5, scope: !709)
!716 = !DILocation(line: 824, column: 43, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !1, line: 816, column: 5)
!718 = !DILocation(line: 824, column: 47, scope: !717)
!719 = !DILocation(line: 824, column: 40, scope: !717)
!720 = !DILocation(line: 824, column: 56, scope: !717)
!721 = !DILocation(line: 824, column: 60, scope: !717)
!722 = !DILocation(line: 824, column: 53, scope: !717)
!723 = !DILocation(line: 824, column: 16, scope: !717)
!724 = !DILocation(line: 825, column: 28, scope: !717)
!725 = !DILocation(line: 825, column: 22, scope: !717)
!726 = !DILocation(line: 825, column: 37, scope: !717)
!727 = !DILocation(line: 825, column: 14, scope: !717)
!728 = !DILocation(line: 826, column: 14, scope: !717)
!729 = !DILocation(line: 835, column: 43, scope: !717)
!730 = !DILocation(line: 835, column: 47, scope: !717)
!731 = !DILocation(line: 835, column: 40, scope: !717)
!732 = !DILocation(line: 835, column: 56, scope: !717)
!733 = !DILocation(line: 835, column: 60, scope: !717)
!734 = !DILocation(line: 835, column: 53, scope: !717)
!735 = !DILocation(line: 835, column: 16, scope: !717)
!736 = !DILocation(line: 836, column: 28, scope: !717)
!737 = !DILocation(line: 836, column: 22, scope: !717)
!738 = !DILocation(line: 836, column: 43, scope: !717)
!739 = !DILocation(line: 836, column: 37, scope: !717)
!740 = !DILocation(line: 836, column: 14, scope: !717)
!741 = !DILocation(line: 837, column: 14, scope: !717)
!742 = !DILocation(line: 838, column: 5, scope: !717)
!743 = !DILocation(line: 815, column: 28, scope: !714)
!744 = !DILocation(line: 815, column: 5, scope: !714)
!745 = distinct !{!745, !715, !746, !66}
!746 = !DILocation(line: 838, column: 5, scope: !709)
!747 = !DILocation(line: 840, column: 5, scope: !672)
!748 = !DILocation(line: 841, column: 1, scope: !672)
!749 = distinct !DISubprogram(name: "mbedtls_ct_rsaes_pkcs1_v15_unpadding", scope: !1, file: !1, line: 847, type: !750, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!750 = !DISubroutineType(types: !751)
!751 = !{!20, !310, !21, !310, !21, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!753 = !DILocalVariable(name: "input", arg: 1, scope: !749, file: !1, line: 847, type: !310)
!754 = !DILocation(line: 0, scope: !749)
!755 = !DILocalVariable(name: "ilen", arg: 2, scope: !749, file: !1, line: 848, type: !21)
!756 = !DILocalVariable(name: "output", arg: 3, scope: !749, file: !1, line: 849, type: !310)
!757 = !DILocalVariable(name: "output_max_len", arg: 4, scope: !749, file: !1, line: 850, type: !21)
!758 = !DILocalVariable(name: "olen", arg: 5, scope: !749, file: !1, line: 851, type: !752)
!759 = !DILocalVariable(name: "ret", scope: !749, file: !1, line: 853, type: !20)
!760 = !DILocalVariable(name: "pad_count", scope: !749, file: !1, line: 866, type: !21)
!761 = !DILocalVariable(name: "bad", scope: !749, file: !1, line: 867, type: !5)
!762 = !DILocalVariable(name: "pad_done", scope: !749, file: !1, line: 868, type: !19)
!763 = !DILocalVariable(name: "plaintext_size", scope: !749, file: !1, line: 869, type: !21)
!764 = !DILocation(line: 872, column: 50, scope: !749)
!765 = !DILocation(line: 872, column: 43, scope: !749)
!766 = !DILocation(line: 872, column: 26, scope: !749)
!767 = !DILocation(line: 872, column: 64, scope: !749)
!768 = !DILocalVariable(name: "plaintext_max_size", scope: !749, file: !1, line: 854, type: !21)
!769 = !DILocation(line: 877, column: 12, scope: !749)
!770 = !DILocation(line: 877, column: 9, scope: !749)
!771 = !DILocation(line: 882, column: 12, scope: !749)
!772 = !DILocation(line: 882, column: 21, scope: !749)
!773 = !DILocation(line: 882, column: 9, scope: !749)
!774 = !DILocalVariable(name: "i", scope: !749, file: !1, line: 854, type: !21)
!775 = !DILocation(line: 886, column: 10, scope: !776)
!776 = distinct !DILexicalBlock(scope: !749, file: !1, line: 886, column: 5)
!777 = !DILocation(line: 0, scope: !776)
!778 = !DILocation(line: 886, column: 19, scope: !779)
!779 = distinct !DILexicalBlock(scope: !776, file: !1, line: 886, column: 5)
!780 = !DILocation(line: 886, column: 5, scope: !776)
!781 = !DILocation(line: 888, column: 24, scope: !782)
!782 = distinct !DILexicalBlock(scope: !779, file: !1, line: 887, column: 5)
!783 = !DILocation(line: 888, column: 51, scope: !782)
!784 = !DILocation(line: 888, column: 50, scope: !782)
!785 = !DILocation(line: 888, column: 35, scope: !782)
!786 = !DILocation(line: 888, column: 33, scope: !782)
!787 = !DILocation(line: 888, column: 61, scope: !782)
!788 = !DILocation(line: 888, column: 67, scope: !782)
!789 = !DILocation(line: 888, column: 19, scope: !782)
!790 = !DILocation(line: 889, column: 24, scope: !782)
!791 = !DILocation(line: 889, column: 51, scope: !782)
!792 = !DILocation(line: 889, column: 50, scope: !782)
!793 = !DILocation(line: 889, column: 35, scope: !782)
!794 = !DILocation(line: 889, column: 33, scope: !782)
!795 = !DILocation(line: 889, column: 61, scope: !782)
!796 = !DILocation(line: 889, column: 67, scope: !782)
!797 = !DILocation(line: 889, column: 22, scope: !782)
!798 = !DILocation(line: 889, column: 19, scope: !782)
!799 = !DILocation(line: 890, column: 5, scope: !782)
!800 = !DILocation(line: 886, column: 28, scope: !779)
!801 = !DILocation(line: 886, column: 5, scope: !779)
!802 = distinct !{!802, !780, !803, !66}
!803 = !DILocation(line: 890, column: 5, scope: !776)
!804 = !DILocation(line: 894, column: 32, scope: !749)
!805 = !DILocation(line: 894, column: 12, scope: !749)
!806 = !DILocation(line: 894, column: 9, scope: !749)
!807 = !DILocation(line: 897, column: 12, scope: !749)
!808 = !DILocation(line: 897, column: 9, scope: !749)
!809 = !DILocation(line: 907, column: 30, scope: !749)
!810 = !DILocation(line: 908, column: 43, scope: !749)
!811 = !DILocation(line: 908, column: 55, scope: !749)
!812 = !DILocation(line: 908, column: 25, scope: !749)
!813 = !DILocation(line: 906, column: 22, scope: !749)
!814 = !DILocation(line: 912, column: 24, scope: !749)
!815 = !DILocalVariable(name: "output_too_large", scope: !749, file: !1, line: 870, type: !5)
!816 = !DILocation(line: 922, column: 21, scope: !749)
!817 = !DILocation(line: 920, column: 19, scope: !749)
!818 = !DILocation(line: 920, column: 11, scope: !749)
!819 = !DILocation(line: 932, column: 37, scope: !749)
!820 = !DILocation(line: 932, column: 11, scope: !749)
!821 = !DILocation(line: 933, column: 10, scope: !822)
!822 = distinct !DILexicalBlock(scope: !749, file: !1, line: 933, column: 5)
!823 = !DILocation(line: 0, scope: !822)
!824 = !DILocation(line: 933, column: 20, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !1, line: 933, column: 5)
!826 = !DILocation(line: 933, column: 5, scope: !822)
!827 = !DILocation(line: 934, column: 21, scope: !825)
!828 = !DILocation(line: 934, column: 9, scope: !825)
!829 = !DILocation(line: 934, column: 18, scope: !825)
!830 = !DILocation(line: 933, column: 29, scope: !825)
!831 = !DILocation(line: 933, column: 5, scope: !825)
!832 = distinct !{!832, !826, !833, !66}
!833 = !DILocation(line: 934, column: 22, scope: !822)
!834 = !DILocation(line: 941, column: 42, scope: !749)
!835 = !DILocation(line: 942, column: 42, scope: !749)
!836 = !DILocation(line: 940, column: 22, scope: !749)
!837 = !DILocation(line: 950, column: 40, scope: !749)
!838 = !DILocation(line: 950, column: 47, scope: !749)
!839 = !DILocation(line: 952, column: 53, scope: !749)
!840 = !DILocation(line: 950, column: 5, scope: !749)
!841 = !DILocation(line: 961, column: 24, scope: !842)
!842 = distinct !DILexicalBlock(scope: !749, file: !1, line: 961, column: 9)
!843 = !DILocation(line: 961, column: 9, scope: !749)
!844 = !DILocation(line: 962, column: 31, scope: !842)
!845 = !DILocation(line: 962, column: 38, scope: !842)
!846 = !DILocation(line: 962, column: 9, scope: !842)
!847 = !DILocation(line: 968, column: 11, scope: !749)
!848 = !DILocation(line: 970, column: 5, scope: !749)
!849 = distinct !DISubprogram(name: "mbedtls_ct_size_gt", scope: !1, file: !1, line: 217, type: !128, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!850 = !DILocalVariable(name: "x", arg: 1, scope: !849, file: !1, line: 217, type: !21)
!851 = !DILocation(line: 0, scope: !849)
!852 = !DILocalVariable(name: "y", arg: 2, scope: !849, file: !1, line: 218, type: !21)
!853 = !DILocation(line: 221, column: 17, scope: !849)
!854 = !DILocation(line: 221, column: 23, scope: !849)
!855 = !DILocation(line: 221, column: 11, scope: !849)
!856 = !DILocation(line: 221, column: 5, scope: !849)
!857 = distinct !DISubprogram(name: "mbedtls_ct_mem_move_to_left", scope: !1, file: !1, line: 382, type: !858, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !386, !21, !21}
!860 = !DILocalVariable(name: "start", arg: 1, scope: !857, file: !1, line: 382, type: !386)
!861 = !DILocation(line: 0, scope: !857)
!862 = !DILocalVariable(name: "total", arg: 2, scope: !857, file: !1, line: 383, type: !21)
!863 = !DILocalVariable(name: "offset", arg: 3, scope: !857, file: !1, line: 384, type: !21)
!864 = !DILocalVariable(name: "buf", scope: !857, file: !1, line: 386, type: !865)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!866 = !DILocation(line: 388, column: 15, scope: !867)
!867 = distinct !DILexicalBlock(scope: !857, file: !1, line: 388, column: 9)
!868 = !DILocation(line: 388, column: 9, scope: !857)
!869 = !DILocation(line: 389, column: 9, scope: !867)
!870 = !DILocalVariable(name: "i", scope: !857, file: !1, line: 387, type: !21)
!871 = !DILocation(line: 390, column: 10, scope: !872)
!872 = distinct !DILexicalBlock(scope: !857, file: !1, line: 390, column: 5)
!873 = !DILocation(line: 0, scope: !872)
!874 = !DILocation(line: 390, column: 19, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !1, line: 390, column: 5)
!876 = !DILocation(line: 390, column: 5, scope: !872)
!877 = !DILocation(line: 392, column: 52, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !1, line: 391, column: 5)
!879 = !DILocation(line: 392, column: 26, scope: !878)
!880 = !DILocalVariable(name: "no_op", scope: !878, file: !1, line: 392, type: !5)
!881 = !DILocation(line: 0, scope: !878)
!882 = !DILocalVariable(name: "n", scope: !857, file: !1, line: 387, type: !21)
!883 = !DILocation(line: 396, column: 14, scope: !884)
!884 = distinct !DILexicalBlock(scope: !878, file: !1, line: 396, column: 9)
!885 = !DILocation(line: 0, scope: !884)
!886 = !DILocation(line: 396, column: 31, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !1, line: 396, column: 9)
!888 = !DILocation(line: 396, column: 23, scope: !887)
!889 = !DILocation(line: 396, column: 9, scope: !884)
!890 = !DILocation(line: 398, column: 37, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !1, line: 397, column: 9)
!892 = !DILocalVariable(name: "current", scope: !891, file: !1, line: 398, type: !19)
!893 = !DILocation(line: 0, scope: !891)
!894 = !DILocation(line: 399, column: 39, scope: !891)
!895 = !DILocation(line: 399, column: 34, scope: !891)
!896 = !DILocalVariable(name: "next", scope: !891, file: !1, line: 399, type: !19)
!897 = !DILocation(line: 400, column: 49, scope: !891)
!898 = !DILocation(line: 400, column: 58, scope: !891)
!899 = !DILocation(line: 400, column: 22, scope: !891)
!900 = !DILocation(line: 400, column: 13, scope: !891)
!901 = !DILocation(line: 400, column: 20, scope: !891)
!902 = !DILocation(line: 401, column: 9, scope: !891)
!903 = !DILocation(line: 396, column: 37, scope: !887)
!904 = !DILocation(line: 396, column: 9, scope: !887)
!905 = distinct !{!905, !889, !906, !66}
!906 = !DILocation(line: 401, column: 9, scope: !884)
!907 = !DILocation(line: 402, column: 60, scope: !878)
!908 = !DILocation(line: 402, column: 51, scope: !878)
!909 = !DILocation(line: 402, column: 24, scope: !878)
!910 = !DILocation(line: 402, column: 18, scope: !878)
!911 = !DILocation(line: 402, column: 9, scope: !878)
!912 = !DILocation(line: 402, column: 22, scope: !878)
!913 = !DILocation(line: 403, column: 5, scope: !878)
!914 = !DILocation(line: 390, column: 29, scope: !875)
!915 = !DILocation(line: 390, column: 5, scope: !875)
!916 = distinct !{!916, !876, !917, !66}
!917 = !DILocation(line: 403, column: 5, scope: !872)
!918 = !DILocation(line: 404, column: 1, scope: !857)
!919 = distinct !DISubprogram(name: "mbedtls_ct_rsaes_pkcs1_v15_unpadding_wrapper", scope: !25, file: !25, line: 10, type: !920, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !310, !21, !310, !21, !752}
!922 = !DILocalVariable(name: "input", arg: 1, scope: !919, file: !25, line: 10, type: !310)
!923 = !DILocation(line: 0, scope: !919)
!924 = !DILocalVariable(name: "ilen", arg: 2, scope: !919, file: !25, line: 11, type: !21)
!925 = !DILocalVariable(name: "output", arg: 3, scope: !919, file: !25, line: 12, type: !310)
!926 = !DILocalVariable(name: "output_max_len", arg: 4, scope: !919, file: !25, line: 13, type: !21)
!927 = !DILocalVariable(name: "olen", arg: 5, scope: !919, file: !25, line: 14, type: !752)
!928 = !DILocation(line: 18, column: 12, scope: !919)
!929 = !DILocation(line: 18, column: 2, scope: !919)
!930 = !DILocation(line: 19, column: 12, scope: !919)
!931 = !DILocation(line: 19, column: 2, scope: !919)
!932 = !DILocation(line: 20, column: 12, scope: !919)
!933 = !DILocation(line: 20, column: 2, scope: !919)
!934 = !DILocation(line: 21, column: 12, scope: !919)
!935 = !DILocation(line: 21, column: 2, scope: !919)
!936 = !DILocation(line: 22, column: 12, scope: !919)
!937 = !DILocation(line: 22, column: 2, scope: !919)
!938 = !DILocation(line: 24, column: 27, scope: !919)
!939 = !DILocation(line: 24, column: 12, scope: !919)
!940 = !DILocation(line: 24, column: 2, scope: !919)
!941 = !DILocation(line: 29, column: 2, scope: !919)
!942 = !DILocation(line: 31, column: 1, scope: !919)
!943 = distinct !DISubprogram(name: "mbedtls_ct_rsaes_pkcs1_v15_unpadding_wrapper_t", scope: !25, file: !25, line: 39, type: !944, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !26)
!944 = !DISubroutineType(types: !945)
!945 = !{null}
!946 = !DILocation(line: 41, column: 24, scope: !943)
!947 = !DILocalVariable(name: "input", scope: !943, file: !25, line: 41, type: !310)
!948 = !DILocation(line: 0, scope: !943)
!949 = !DILocation(line: 42, column: 16, scope: !943)
!950 = !DILocalVariable(name: "ilen", scope: !943, file: !25, line: 42, type: !21)
!951 = !DILocation(line: 43, column: 26, scope: !943)
!952 = !DILocalVariable(name: "output", scope: !943, file: !25, line: 43, type: !310)
!953 = !DILocation(line: 44, column: 26, scope: !943)
!954 = !DILocalVariable(name: "output_max_len", scope: !943, file: !25, line: 44, type: !21)
!955 = !DILocation(line: 45, column: 16, scope: !943)
!956 = !DILocalVariable(name: "olen", scope: !943, file: !25, line: 45, type: !752)
!957 = !DILocation(line: 47, column: 2, scope: !943)
!958 = !DILocation(line: 48, column: 1, scope: !943)
