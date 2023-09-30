; ModuleID = 'sign.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_rsa_private_key = type { i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64 }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !69 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i8* %1, metadata !76, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i8* %2, metadata !77, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 %3, metadata !78, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i8* %1, metadata !79, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i8* %2, metadata !80, metadata !DIExpression()), !dbg !75
  br label %5, !dbg !83

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ]
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !75
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !75
  call void @llvm.dbg.value(metadata i8* %.0, metadata !80, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i8* %.01, metadata !79, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i64 %.02, metadata !78, metadata !DIExpression()), !dbg !75
  %6 = add i64 %.02, -1, !dbg !84
  call void @llvm.dbg.value(metadata i64 %6, metadata !78, metadata !DIExpression()), !dbg !75
  %7 = icmp ugt i64 %.02, 0, !dbg !85
  br i1 %7, label %8, label %17, !dbg !83

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !86
  call void @llvm.dbg.value(metadata i8* %9, metadata !80, metadata !DIExpression()), !dbg !75
  %10 = load i8, i8* %.0, align 1, !dbg !88
  %11 = zext i8 %10 to i32, !dbg !88
  call void @llvm.dbg.value(metadata i32 %11, metadata !89, metadata !DIExpression()), !dbg !90
  %12 = load i8, i8* %.01, align 1, !dbg !91
  %13 = zext i8 %12 to i32, !dbg !91
  call void @llvm.dbg.value(metadata i32 %13, metadata !92, metadata !DIExpression()), !dbg !90
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !93
  %15 = trunc i32 %14 to i8, !dbg !93
  store i8 %15, i8* %.01, align 1, !dbg !94
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !95
  call void @llvm.dbg.value(metadata i8* %16, metadata !79, metadata !DIExpression()), !dbg !75
  br label %5, !dbg !83, !llvm.loop !96

17:                                               ; preds = %5
  ret void, !dbg !99
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !100 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 %1, metadata !106, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 %2, metadata !107, metadata !DIExpression()), !dbg !105
  %4 = sub i32 0, %0, !dbg !108
  %5 = xor i32 %1, %2, !dbg !109
  %6 = and i32 %4, %5, !dbg !110
  %7 = xor i32 %2, %6, !dbg !111
  ret i32 %7, !dbg !112
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i31_add(i32* %0, i32* %1, i32 %2) #0 !dbg !113 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32* %1, metadata !121, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 %2, metadata !122, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 0, metadata !123, metadata !DIExpression()), !dbg !120
  %4 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !124
  %5 = load i32, i32* %4, align 4, !dbg !124
  %6 = add i32 %5, 63, !dbg !125
  %7 = lshr i32 %6, 5, !dbg !126
  %8 = zext i32 %7 to i64, !dbg !127
  call void @llvm.dbg.value(metadata i64 %8, metadata !128, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i64 1, metadata !129, metadata !DIExpression()), !dbg !120
  br label %9, !dbg !130

9:                                                ; preds = %22, %3
  %.01 = phi i32 [ 0, %3 ], [ %18, %22 ], !dbg !120
  %.0 = phi i64 [ 1, %3 ], [ %23, %22 ], !dbg !132
  call void @llvm.dbg.value(metadata i64 %.0, metadata !129, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 %.01, metadata !123, metadata !DIExpression()), !dbg !120
  %10 = icmp ult i64 %.0, %8, !dbg !133
  br i1 %10, label %11, label %24, !dbg !135

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !136
  %13 = load i32, i32* %12, align 4, !dbg !136
  call void @llvm.dbg.value(metadata i32 %13, metadata !138, metadata !DIExpression()), !dbg !139
  %14 = getelementptr inbounds i32, i32* %1, i64 %.0, !dbg !140
  %15 = load i32, i32* %14, align 4, !dbg !140
  call void @llvm.dbg.value(metadata i32 %15, metadata !141, metadata !DIExpression()), !dbg !139
  %16 = add i32 %13, %15, !dbg !142
  %17 = add i32 %16, %.01, !dbg !143
  call void @llvm.dbg.value(metadata i32 %17, metadata !144, metadata !DIExpression()), !dbg !139
  %18 = lshr i32 %17, 31, !dbg !145
  call void @llvm.dbg.value(metadata i32 %18, metadata !123, metadata !DIExpression()), !dbg !120
  %19 = and i32 %17, 2147483647, !dbg !146
  %20 = call i32 @MUX.1(i32 %2, i32 %19, i32 %13), !dbg !147
  %21 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !148
  store i32 %20, i32* %21, align 4, !dbg !149
  br label %22, !dbg !150

22:                                               ; preds = %11
  %23 = add i64 %.0, 1, !dbg !151
  call void @llvm.dbg.value(metadata i64 %23, metadata !129, metadata !DIExpression()), !dbg !120
  br label %9, !dbg !152, !llvm.loop !153

24:                                               ; preds = %9
  ret i32 %.01, !dbg !155
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.1(i32 %0, i32 %1, i32 %2) #0 !dbg !156 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata i32 %1, metadata !159, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata i32 %2, metadata !160, metadata !DIExpression()), !dbg !158
  %4 = sub i32 0, %0, !dbg !161
  %5 = xor i32 %1, %2, !dbg !162
  %6 = and i32 %4, %5, !dbg !163
  %7 = xor i32 %2, %6, !dbg !164
  ret i32 %7, !dbg !165
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i31_bit_length(i32* %0, i64 %1) #0 !dbg !166 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %1, metadata !171, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 0, metadata !172, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !170
  br label %3, !dbg !174

3:                                                ; preds = %6, %2
  %.02 = phi i32 [ 0, %2 ], [ %10, %6 ], !dbg !170
  %.01 = phi i64 [ %1, %2 ], [ %4, %6 ]
  %.0 = phi i32 [ 0, %2 ], [ %12, %6 ], !dbg !170
  call void @llvm.dbg.value(metadata i32 %.0, metadata !173, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %.01, metadata !171, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 %.02, metadata !172, metadata !DIExpression()), !dbg !170
  %4 = add i64 %.01, -1, !dbg !175
  call void @llvm.dbg.value(metadata i64 %4, metadata !171, metadata !DIExpression()), !dbg !170
  %5 = icmp ugt i64 %.01, 0, !dbg !176
  br i1 %5, label %6, label %13, !dbg !174

6:                                                ; preds = %3
  %7 = call i32 @EQ(i32 %.02, i32 0), !dbg !177
  call void @llvm.dbg.value(metadata i32 %7, metadata !179, metadata !DIExpression()), !dbg !180
  %8 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !181
  %9 = load i32, i32* %8, align 4, !dbg !181
  call void @llvm.dbg.value(metadata i32 %9, metadata !182, metadata !DIExpression()), !dbg !180
  %10 = call i32 @MUX.2(i32 %7, i32 %9, i32 %.02), !dbg !183
  call void @llvm.dbg.value(metadata i32 %10, metadata !172, metadata !DIExpression()), !dbg !170
  %11 = trunc i64 %4 to i32, !dbg !184
  %12 = call i32 @MUX.2(i32 %7, i32 %11, i32 %.0), !dbg !185
  call void @llvm.dbg.value(metadata i32 %12, metadata !173, metadata !DIExpression()), !dbg !170
  br label %3, !dbg !174, !llvm.loop !186

13:                                               ; preds = %3
  %14 = shl i32 %.0, 5, !dbg !188
  %15 = call i32 @BIT_LENGTH(i32 %.02), !dbg !189
  %16 = add i32 %14, %15, !dbg !190
  ret i32 %16, !dbg !191
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 %1, metadata !197, metadata !DIExpression()), !dbg !196
  %3 = xor i32 %0, %1, !dbg !198
  call void @llvm.dbg.value(metadata i32 %3, metadata !199, metadata !DIExpression()), !dbg !196
  %4 = sub i32 0, %3, !dbg !200
  %5 = or i32 %3, %4, !dbg !201
  %6 = lshr i32 %5, 31, !dbg !202
  %7 = call i32 @NOT(i32 %6), !dbg !203
  ret i32 %7, !dbg !204
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.2(i32 %0, i32 %1, i32 %2) #0 !dbg !205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i32 %1, metadata !208, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i32 %2, metadata !209, metadata !DIExpression()), !dbg !207
  %4 = sub i32 0, %0, !dbg !210
  %5 = xor i32 %1, %2, !dbg !211
  %6 = and i32 %4, %5, !dbg !212
  %7 = xor i32 %2, %6, !dbg !213
  ret i32 %7, !dbg !214
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @BIT_LENGTH(i32 %0) #0 !dbg !215 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !218, metadata !DIExpression()), !dbg !219
  %2 = call i32 @NEQ(i32 %0, i32 0), !dbg !220
  call void @llvm.dbg.value(metadata i32 %2, metadata !221, metadata !DIExpression()), !dbg !219
  %3 = call i32 @GT(i32 %0, i32 65535), !dbg !222
  call void @llvm.dbg.value(metadata i32 %3, metadata !223, metadata !DIExpression()), !dbg !219
  %4 = lshr i32 %0, 16, !dbg !224
  %5 = call i32 @MUX.2(i32 %3, i32 %4, i32 %0), !dbg !225
  call void @llvm.dbg.value(metadata i32 %5, metadata !218, metadata !DIExpression()), !dbg !219
  %6 = shl i32 %3, 4, !dbg !226
  %7 = add i32 %2, %6, !dbg !227
  call void @llvm.dbg.value(metadata i32 %7, metadata !221, metadata !DIExpression()), !dbg !219
  %8 = call i32 @GT(i32 %5, i32 255), !dbg !228
  call void @llvm.dbg.value(metadata i32 %8, metadata !223, metadata !DIExpression()), !dbg !219
  %9 = lshr i32 %5, 8, !dbg !229
  %10 = call i32 @MUX.2(i32 %8, i32 %9, i32 %5), !dbg !230
  call void @llvm.dbg.value(metadata i32 %10, metadata !218, metadata !DIExpression()), !dbg !219
  %11 = shl i32 %8, 3, !dbg !231
  %12 = add i32 %7, %11, !dbg !232
  call void @llvm.dbg.value(metadata i32 %12, metadata !221, metadata !DIExpression()), !dbg !219
  %13 = call i32 @GT(i32 %10, i32 15), !dbg !233
  call void @llvm.dbg.value(metadata i32 %13, metadata !223, metadata !DIExpression()), !dbg !219
  %14 = lshr i32 %10, 4, !dbg !234
  %15 = call i32 @MUX.2(i32 %13, i32 %14, i32 %10), !dbg !235
  call void @llvm.dbg.value(metadata i32 %15, metadata !218, metadata !DIExpression()), !dbg !219
  %16 = shl i32 %13, 2, !dbg !236
  %17 = add i32 %12, %16, !dbg !237
  call void @llvm.dbg.value(metadata i32 %17, metadata !221, metadata !DIExpression()), !dbg !219
  %18 = call i32 @GT(i32 %15, i32 3), !dbg !238
  call void @llvm.dbg.value(metadata i32 %18, metadata !223, metadata !DIExpression()), !dbg !219
  %19 = lshr i32 %15, 2, !dbg !239
  %20 = call i32 @MUX.2(i32 %18, i32 %19, i32 %15), !dbg !240
  call void @llvm.dbg.value(metadata i32 %20, metadata !218, metadata !DIExpression()), !dbg !219
  %21 = shl i32 %18, 1, !dbg !241
  %22 = add i32 %17, %21, !dbg !242
  call void @llvm.dbg.value(metadata i32 %22, metadata !221, metadata !DIExpression()), !dbg !219
  %23 = call i32 @GT(i32 %20, i32 1), !dbg !243
  %24 = add i32 %22, %23, !dbg !244
  call void @llvm.dbg.value(metadata i32 %24, metadata !221, metadata !DIExpression()), !dbg !219
  ret i32 %24, !dbg !245
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !246 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 %1, metadata !249, metadata !DIExpression()), !dbg !248
  %3 = xor i32 %0, %1, !dbg !250
  call void @llvm.dbg.value(metadata i32 %3, metadata !251, metadata !DIExpression()), !dbg !248
  %4 = sub i32 0, %3, !dbg !252
  %5 = or i32 %3, %4, !dbg !253
  %6 = lshr i32 %5, 31, !dbg !254
  ret i32 %6, !dbg !255
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !258
  %3 = sub i32 %1, %0, !dbg !260
  call void @llvm.dbg.value(metadata i32 %3, metadata !261, metadata !DIExpression()), !dbg !258
  %4 = xor i32 %0, %1, !dbg !262
  %5 = xor i32 %0, %3, !dbg !263
  %6 = and i32 %4, %5, !dbg !264
  %7 = xor i32 %3, %6, !dbg !265
  %8 = lshr i32 %7, 31, !dbg !266
  ret i32 %8, !dbg !267
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !268 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !269, metadata !DIExpression()), !dbg !270
  %2 = xor i32 %0, 1, !dbg !271
  ret i32 %2, !dbg !272
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_decode(i32* %0, i8* %1, i64 %2) #0 !dbg !273 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i8* %1, metadata !278, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %2, metadata !279, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i8* %1, metadata !280, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %2, metadata !281, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 1, metadata !282, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 0, metadata !284, metadata !DIExpression()), !dbg !277
  br label %4, !dbg !286

4:                                                ; preds = %22, %3
  %.05 = phi i64 [ %2, %3 ], [ %5, %22 ], !dbg !277
  %.03 = phi i64 [ 1, %3 ], [ %.14, %22 ], !dbg !277
  %.01 = phi i32 [ 0, %3 ], [ %.12, %22 ], !dbg !277
  %.0 = phi i32 [ 0, %3 ], [ %.1, %22 ], !dbg !277
  call void @llvm.dbg.value(metadata i32 %.0, metadata !284, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %.01, metadata !283, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %.03, metadata !282, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %.05, metadata !281, metadata !DIExpression()), !dbg !277
  %5 = add i64 %.05, -1, !dbg !287
  call void @llvm.dbg.value(metadata i64 %5, metadata !281, metadata !DIExpression()), !dbg !277
  %6 = icmp ugt i64 %.05, 0, !dbg !288
  br i1 %6, label %7, label %23, !dbg !286

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !289
  %9 = load i8, i8* %8, align 1, !dbg !289
  %10 = zext i8 %9 to i32, !dbg !289
  call void @llvm.dbg.value(metadata i32 %10, metadata !291, metadata !DIExpression()), !dbg !292
  %11 = shl i32 %10, %.0, !dbg !293
  %12 = or i32 %.01, %11, !dbg !294
  call void @llvm.dbg.value(metadata i32 %12, metadata !283, metadata !DIExpression()), !dbg !277
  %13 = add nsw i32 %.0, 8, !dbg !295
  call void @llvm.dbg.value(metadata i32 %13, metadata !284, metadata !DIExpression()), !dbg !277
  %14 = icmp sge i32 %13, 31, !dbg !296
  br i1 %14, label %15, label %22, !dbg !298

15:                                               ; preds = %7
  %16 = and i32 %12, 2147483647, !dbg !299
  %17 = add i64 %.03, 1, !dbg !301
  call void @llvm.dbg.value(metadata i64 %17, metadata !282, metadata !DIExpression()), !dbg !277
  %18 = getelementptr inbounds i32, i32* %0, i64 %.03, !dbg !302
  store i32 %16, i32* %18, align 4, !dbg !303
  %19 = sub nsw i32 %13, 31, !dbg !304
  call void @llvm.dbg.value(metadata i32 %19, metadata !284, metadata !DIExpression()), !dbg !277
  %20 = sub nsw i32 8, %19, !dbg !305
  %21 = lshr i32 %10, %20, !dbg !306
  call void @llvm.dbg.value(metadata i32 %21, metadata !283, metadata !DIExpression()), !dbg !277
  br label %22, !dbg !307

22:                                               ; preds = %15, %7
  %.14 = phi i64 [ %17, %15 ], [ %.03, %7 ], !dbg !277
  %.12 = phi i32 [ %21, %15 ], [ %12, %7 ], !dbg !292
  %.1 = phi i32 [ %19, %15 ], [ %13, %7 ], !dbg !292
  call void @llvm.dbg.value(metadata i32 %.1, metadata !284, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %.12, metadata !283, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %.14, metadata !282, metadata !DIExpression()), !dbg !277
  br label %4, !dbg !286, !llvm.loop !308

23:                                               ; preds = %4
  %24 = icmp ne i32 %.0, 0, !dbg !310
  br i1 %24, label %25, label %28, !dbg !312

25:                                               ; preds = %23
  %26 = add i64 %.03, 1, !dbg !313
  call void @llvm.dbg.value(metadata i64 %26, metadata !282, metadata !DIExpression()), !dbg !277
  %27 = getelementptr inbounds i32, i32* %0, i64 %.03, !dbg !315
  store i32 %.01, i32* %27, align 4, !dbg !316
  br label %28, !dbg !317

28:                                               ; preds = %25, %23
  %.2 = phi i64 [ %26, %25 ], [ %.03, %23 ], !dbg !277
  call void @llvm.dbg.value(metadata i64 %.2, metadata !282, metadata !DIExpression()), !dbg !277
  %29 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !318
  %30 = sub i64 %.2, 1, !dbg !319
  %31 = call i32 @br_i31_bit_length(i32* %29, i64 %30), !dbg !320
  %32 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !321
  store i32 %31, i32* %32, align 4, !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_decode_reduce(i32* %0, i8* %1, i64 %2, i32* %3) #0 !dbg !324 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i8* %1, metadata !329, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64 %2, metadata !330, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32* %3, metadata !331, metadata !DIExpression()), !dbg !328
  %5 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !332
  %6 = load i32, i32* %5, align 4, !dbg !332
  call void @llvm.dbg.value(metadata i32 %6, metadata !333, metadata !DIExpression()), !dbg !328
  %7 = icmp eq i32 %6, 0, !dbg !334
  br i1 %7, label %8, label %10, !dbg !336

8:                                                ; preds = %4
  %9 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !337
  store i32 0, i32* %9, align 4, !dbg !339
  br label %56, !dbg !340

10:                                               ; preds = %4
  call void @br_i31_zero(i32* %0, i32 %6), !dbg !341
  %11 = lshr i32 %6, 5, !dbg !342
  call void @llvm.dbg.value(metadata i32 %11, metadata !343, metadata !DIExpression()), !dbg !328
  %12 = and i32 %6, 31, !dbg !344
  %13 = shl i32 %11, 5, !dbg !345
  %14 = add i32 %12, %13, !dbg !346
  %15 = sub i32 %14, %11, !dbg !347
  call void @llvm.dbg.value(metadata i32 %15, metadata !343, metadata !DIExpression()), !dbg !328
  %16 = add i32 %15, 7, !dbg !348
  %17 = lshr i32 %16, 3, !dbg !349
  %18 = zext i32 %17 to i64, !dbg !350
  call void @llvm.dbg.value(metadata i64 %18, metadata !351, metadata !DIExpression()), !dbg !328
  %19 = sub i64 %18, 1, !dbg !352
  call void @llvm.dbg.value(metadata i64 %19, metadata !353, metadata !DIExpression()), !dbg !328
  %20 = icmp uge i64 %19, %2, !dbg !354
  br i1 %20, label %21, label %23, !dbg !356

21:                                               ; preds = %10
  call void @br_i31_decode(i32* %0, i8* %1, i64 %2), !dbg !357
  %22 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !359
  store i32 %6, i32* %22, align 4, !dbg !360
  br label %56, !dbg !361

23:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %1, metadata !362, metadata !DIExpression()), !dbg !328
  call void @br_i31_decode(i32* %0, i8* %1, i64 %19), !dbg !363
  %24 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !364
  store i32 %6, i32* %24, align 4, !dbg !365
  call void @llvm.dbg.value(metadata i32 0, metadata !366, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32 0, metadata !367, metadata !DIExpression()), !dbg !328
  br label %25, !dbg !368

25:                                               ; preds = %46, %23
  %.03 = phi i64 [ %19, %23 ], [ %28, %46 ], !dbg !328
  %.01 = phi i32 [ 0, %23 ], [ %.12, %46 ], !dbg !328
  %.0 = phi i32 [ 0, %23 ], [ %.1, %46 ], !dbg !328
  call void @llvm.dbg.value(metadata i32 %.0, metadata !367, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32 %.01, metadata !366, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64 %.03, metadata !353, metadata !DIExpression()), !dbg !328
  %26 = icmp ult i64 %.03, %2, !dbg !369
  br i1 %26, label %27, label %47, !dbg !368

27:                                               ; preds = %25
  %28 = add i64 %.03, 1, !dbg !370
  call void @llvm.dbg.value(metadata i64 %28, metadata !353, metadata !DIExpression()), !dbg !328
  %29 = getelementptr inbounds i8, i8* %1, i64 %.03, !dbg !372
  %30 = load i8, i8* %29, align 1, !dbg !372
  %31 = zext i8 %30 to i32, !dbg !372
  call void @llvm.dbg.value(metadata i32 %31, metadata !373, metadata !DIExpression()), !dbg !374
  %32 = icmp sge i32 %.0, 23, !dbg !375
  br i1 %32, label %33, label %42, !dbg !377

33:                                               ; preds = %27
  %34 = sub nsw i32 %.0, 23, !dbg !378
  call void @llvm.dbg.value(metadata i32 %34, metadata !367, metadata !DIExpression()), !dbg !328
  %35 = sub nsw i32 8, %34, !dbg !380
  %36 = shl i32 %.01, %35, !dbg !381
  call void @llvm.dbg.value(metadata i32 %36, metadata !366, metadata !DIExpression()), !dbg !328
  %37 = lshr i32 %31, %34, !dbg !382
  %38 = or i32 %36, %37, !dbg !383
  call void @llvm.dbg.value(metadata i32 %38, metadata !366, metadata !DIExpression()), !dbg !328
  call void @br_i31_muladd_small(i32* %0, i32 %38, i32* %3), !dbg !384
  %39 = sub nsw i32 8, %34, !dbg !385
  %40 = ashr i32 255, %39, !dbg !386
  %41 = and i32 %31, %40, !dbg !387
  call void @llvm.dbg.value(metadata i32 %41, metadata !366, metadata !DIExpression()), !dbg !328
  br label %46, !dbg !388

42:                                               ; preds = %27
  %43 = shl i32 %.01, 8, !dbg !389
  %44 = or i32 %43, %31, !dbg !391
  call void @llvm.dbg.value(metadata i32 %44, metadata !366, metadata !DIExpression()), !dbg !328
  %45 = add nsw i32 %.0, 8, !dbg !392
  call void @llvm.dbg.value(metadata i32 %45, metadata !367, metadata !DIExpression()), !dbg !328
  br label %46

46:                                               ; preds = %42, %33
  %.12 = phi i32 [ %41, %33 ], [ %44, %42 ], !dbg !393
  %.1 = phi i32 [ %34, %33 ], [ %45, %42 ], !dbg !393
  call void @llvm.dbg.value(metadata i32 %.1, metadata !367, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32 %.12, metadata !366, metadata !DIExpression()), !dbg !328
  br label %25, !dbg !368, !llvm.loop !394

47:                                               ; preds = %25
  %48 = icmp ne i32 %.0, 0, !dbg !396
  br i1 %48, label %49, label %56, !dbg !398

49:                                               ; preds = %47
  %50 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !399
  %51 = load i32, i32* %50, align 4, !dbg !399
  %52 = shl i32 %51, %.0, !dbg !401
  %53 = or i32 %.01, %52, !dbg !402
  %54 = and i32 %53, 2147483647, !dbg !403
  call void @llvm.dbg.value(metadata i32 %54, metadata !366, metadata !DIExpression()), !dbg !328
  %55 = sub nsw i32 31, %.0, !dbg !404
  call void @br_i31_rshift(i32* %0, i32 %55), !dbg !405
  call void @br_i31_muladd_small(i32* %0, i32 %54, i32* %3), !dbg !406
  br label %56, !dbg !407

56:                                               ; preds = %49, %47, %21, %8
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i31_zero(i32* %0, i32 %1) #0 !dbg !409 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 %1, metadata !414, metadata !DIExpression()), !dbg !413
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !415
  call void @llvm.dbg.value(metadata i32* %3, metadata !412, metadata !DIExpression()), !dbg !413
  store i32 %1, i32* %0, align 4, !dbg !416
  %4 = bitcast i32* %3 to i8*, !dbg !417
  %5 = add i32 %1, 31, !dbg !418
  %6 = lshr i32 %5, 5, !dbg !419
  %7 = zext i32 %6 to i64, !dbg !420
  %8 = mul i64 %7, 4, !dbg !421
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !417
  ret void, !dbg !422
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_encode(i8* %0, i64 %1, i32* %2) #0 !dbg !423 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i64 %1, metadata !428, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i32* %2, metadata !429, metadata !DIExpression()), !dbg !427
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !430
  %5 = load i32, i32* %4, align 4, !dbg !430
  %6 = add i32 %5, 31, !dbg !431
  %7 = lshr i32 %6, 5, !dbg !432
  %8 = zext i32 %7 to i64, !dbg !433
  call void @llvm.dbg.value(metadata i64 %8, metadata !434, metadata !DIExpression()), !dbg !427
  %9 = icmp eq i64 %8, 0, !dbg !435
  br i1 %9, label %10, label %11, !dbg !437

10:                                               ; preds = %3
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !438
  br label %51, !dbg !440

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !441
  call void @llvm.dbg.value(metadata i8* %12, metadata !442, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i64 1, metadata !443, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i32 0, metadata !444, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i32 0, metadata !445, metadata !DIExpression()), !dbg !427
  br label %13, !dbg !446

13:                                               ; preds = %50, %11
  %.07 = phi i64 [ 1, %11 ], [ %23, %50 ], !dbg !427
  %.05 = phi i8* [ %12, %11 ], [ %.16, %50 ], !dbg !447
  %.03 = phi i32 [ 0, %11 ], [ %.14, %50 ], !dbg !427
  %.01 = phi i64 [ %1, %11 ], [ %.12, %50 ]
  %.0 = phi i32 [ 0, %11 ], [ %.1, %50 ], !dbg !427
  call void @llvm.dbg.value(metadata i32 %.0, metadata !445, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i64 %.01, metadata !428, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i32 %.03, metadata !444, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i8* %.05, metadata !442, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i64 %.07, metadata !443, metadata !DIExpression()), !dbg !427
  %14 = icmp ne i64 %.01, 0, !dbg !448
  br i1 %14, label %15, label %51, !dbg !446

15:                                               ; preds = %13
  %16 = icmp ule i64 %.07, %8, !dbg !449
  br i1 %16, label %17, label %20, !dbg !451

17:                                               ; preds = %15
  %18 = getelementptr inbounds i32, i32* %2, i64 %.07, !dbg !452
  %19 = load i32, i32* %18, align 4, !dbg !452
  br label %21, !dbg !451

20:                                               ; preds = %15
  br label %21, !dbg !451

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 0, %20 ], !dbg !451
  call void @llvm.dbg.value(metadata i32 %22, metadata !453, metadata !DIExpression()), !dbg !454
  %23 = add i64 %.07, 1, !dbg !455
  call void @llvm.dbg.value(metadata i64 %23, metadata !443, metadata !DIExpression()), !dbg !427
  %24 = icmp eq i32 %.0, 0, !dbg !456
  br i1 %24, label %25, label %26, !dbg !458

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 %22, metadata !444, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i32 31, metadata !445, metadata !DIExpression()), !dbg !427
  br label %50, !dbg !459

26:                                               ; preds = %21
  %27 = shl i32 %22, %.0, !dbg !461
  %28 = or i32 %.03, %27, !dbg !463
  call void @llvm.dbg.value(metadata i32 %28, metadata !464, metadata !DIExpression()), !dbg !465
  %29 = add nsw i32 %.0, -1, !dbg !466
  call void @llvm.dbg.value(metadata i32 %29, metadata !445, metadata !DIExpression()), !dbg !427
  %30 = sub nsw i32 31, %29, !dbg !467
  %31 = lshr i32 %22, %30, !dbg !468
  call void @llvm.dbg.value(metadata i32 %31, metadata !444, metadata !DIExpression()), !dbg !427
  %32 = icmp uge i64 %.01, 4, !dbg !469
  br i1 %32, label %33, label %36, !dbg !471

33:                                               ; preds = %26
  %34 = getelementptr inbounds i8, i8* %.05, i64 -4, !dbg !472
  call void @llvm.dbg.value(metadata i8* %34, metadata !442, metadata !DIExpression()), !dbg !427
  %35 = sub i64 %.01, 4, !dbg !474
  call void @llvm.dbg.value(metadata i64 %35, metadata !428, metadata !DIExpression()), !dbg !427
  call void @br_enc32be(i8* %34, i32 %28), !dbg !475
  br label %49, !dbg !476

36:                                               ; preds = %26
  switch i64 %.01, label %48 [
    i64 3, label %37
    i64 2, label %41
    i64 1, label %45
  ], !dbg !477

37:                                               ; preds = %36
  %38 = lshr i32 %28, 16, !dbg !479
  %39 = trunc i32 %38 to i8, !dbg !481
  %40 = getelementptr inbounds i8, i8* %.05, i64 -3, !dbg !482
  store i8 %39, i8* %40, align 1, !dbg !483
  br label %41, !dbg !482

41:                                               ; preds = %37, %36
  %42 = lshr i32 %28, 8, !dbg !484
  %43 = trunc i32 %42 to i8, !dbg !485
  %44 = getelementptr inbounds i8, i8* %.05, i64 -2, !dbg !486
  store i8 %43, i8* %44, align 1, !dbg !487
  br label %45, !dbg !486

45:                                               ; preds = %41, %36
  %46 = trunc i32 %28 to i8, !dbg !488
  %47 = getelementptr inbounds i8, i8* %.05, i64 -1, !dbg !489
  store i8 %46, i8* %47, align 1, !dbg !490
  br label %48, !dbg !491

48:                                               ; preds = %45, %36
  br label %51, !dbg !492

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %25
  %.16 = phi i8* [ %.05, %25 ], [ %34, %49 ], !dbg !427
  %.14 = phi i32 [ %22, %25 ], [ %31, %49 ], !dbg !493
  %.12 = phi i64 [ %.01, %25 ], [ %35, %49 ]
  %.1 = phi i32 [ 31, %25 ], [ %29, %49 ], !dbg !493
  call void @llvm.dbg.value(metadata i32 %.1, metadata !445, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i64 %.12, metadata !428, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i32 %.14, metadata !444, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i8* %.16, metadata !442, metadata !DIExpression()), !dbg !427
  br label %13, !dbg !446, !llvm.loop !494

51:                                               ; preds = %48, %13, %10
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !497 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !500, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %1, metadata !502, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !501
  %3 = lshr i32 %1, 24, !dbg !504
  %4 = trunc i32 %3 to i8, !dbg !505
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !506
  store i8 %4, i8* %5, align 1, !dbg !507
  %6 = lshr i32 %1, 16, !dbg !508
  %7 = trunc i32 %6 to i8, !dbg !509
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !510
  store i8 %7, i8* %8, align 1, !dbg !511
  %9 = lshr i32 %1, 8, !dbg !512
  %10 = trunc i32 %9 to i8, !dbg !513
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !514
  store i8 %10, i8* %11, align 1, !dbg !515
  %12 = trunc i32 %1 to i8, !dbg !516
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !517
  store i8 %12, i8* %13, align 1, !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_from_monty(i32* %0, i32* %1, i32 %2) #0 !dbg !520 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata i32* %1, metadata !525, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata i32 %2, metadata !526, metadata !DIExpression()), !dbg !524
  %4 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !527
  %5 = load i32, i32* %4, align 4, !dbg !527
  %6 = add i32 %5, 31, !dbg !528
  %7 = lshr i32 %6, 5, !dbg !529
  %8 = zext i32 %7 to i64, !dbg !530
  call void @llvm.dbg.value(metadata i64 %8, metadata !531, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata i64 0, metadata !532, metadata !DIExpression()), !dbg !524
  br label %9, !dbg !533

9:                                                ; preds = %43, %3
  %.02 = phi i64 [ 0, %3 ], [ %44, %43 ], !dbg !535
  call void @llvm.dbg.value(metadata i64 %.02, metadata !532, metadata !DIExpression()), !dbg !524
  %10 = icmp ult i64 %.02, %8, !dbg !536
  br i1 %10, label %11, label %45, !dbg !538

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !539
  %13 = load i32, i32* %12, align 4, !dbg !539
  %14 = mul i32 %13, %2, !dbg !539
  %15 = and i32 %14, 2147483647, !dbg !539
  call void @llvm.dbg.value(metadata i32 %15, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i64 0, metadata !543, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i64 0, metadata !544, metadata !DIExpression()), !dbg !524
  br label %16, !dbg !545

16:                                               ; preds = %38, %11
  %.01 = phi i64 [ 0, %11 ], [ %39, %38 ], !dbg !547
  %.0 = phi i64 [ 0, %11 ], [ %31, %38 ], !dbg !542
  call void @llvm.dbg.value(metadata i64 %.0, metadata !543, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i64 %.01, metadata !544, metadata !DIExpression()), !dbg !524
  %17 = icmp ult i64 %.01, %8, !dbg !548
  br i1 %17, label %18, label %40, !dbg !550

18:                                               ; preds = %16
  %19 = add i64 %.01, 1, !dbg !551
  %20 = getelementptr inbounds i32, i32* %0, i64 %19, !dbg !553
  %21 = load i32, i32* %20, align 4, !dbg !553
  %22 = zext i32 %21 to i64, !dbg !554
  %23 = zext i32 %15 to i64, !dbg !555
  %24 = add i64 %.01, 1, !dbg !555
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !555
  %26 = load i32, i32* %25, align 4, !dbg !555
  %27 = zext i32 %26 to i64, !dbg !555
  %28 = mul i64 %23, %27, !dbg !555
  %29 = add i64 %22, %28, !dbg !556
  %30 = add i64 %29, %.0, !dbg !557
  call void @llvm.dbg.value(metadata i64 %30, metadata !558, metadata !DIExpression()), !dbg !559
  %31 = lshr i64 %30, 31, !dbg !560
  call void @llvm.dbg.value(metadata i64 %31, metadata !543, metadata !DIExpression()), !dbg !542
  %32 = icmp ne i64 %.01, 0, !dbg !561
  br i1 %32, label %33, label %37, !dbg !563

33:                                               ; preds = %18
  %34 = trunc i64 %30 to i32, !dbg !564
  %35 = and i32 %34, 2147483647, !dbg !566
  %36 = getelementptr inbounds i32, i32* %0, i64 %.01, !dbg !567
  store i32 %35, i32* %36, align 4, !dbg !568
  br label %37, !dbg !569

37:                                               ; preds = %33, %18
  br label %38, !dbg !570

38:                                               ; preds = %37
  %39 = add i64 %.01, 1, !dbg !571
  call void @llvm.dbg.value(metadata i64 %39, metadata !544, metadata !DIExpression()), !dbg !524
  br label %16, !dbg !572, !llvm.loop !573

40:                                               ; preds = %16
  %41 = trunc i64 %.0 to i32, !dbg !575
  %42 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !576
  store i32 %41, i32* %42, align 4, !dbg !577
  br label %43, !dbg !578

43:                                               ; preds = %40
  %44 = add i64 %.02, 1, !dbg !579
  call void @llvm.dbg.value(metadata i64 %44, metadata !532, metadata !DIExpression()), !dbg !524
  br label %9, !dbg !580, !llvm.loop !581

45:                                               ; preds = %9
  %46 = call i32 @br_i31_sub(i32* %0, i32* %1, i32 0), !dbg !583
  %47 = call i32 @NOT.3(i32 %46), !dbg !584
  %48 = call i32 @br_i31_sub(i32* %0, i32* %1, i32 %47), !dbg !585
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.3(i32 %0) #0 !dbg !587 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !588, metadata !DIExpression()), !dbg !589
  %2 = xor i32 %0, 1, !dbg !590
  ret i32 %2, !dbg !591
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i31_modpow_opt(i32* %0, i8* %1, i64 %2, i32* %3, i32 %4, i32* %5, i64 %6) #0 !dbg !592 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !595, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i8* %1, metadata !597, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %2, metadata !598, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32* %3, metadata !599, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %4, metadata !600, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32* %5, metadata !601, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %6, metadata !602, metadata !DIExpression()), !dbg !596
  %8 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !603
  %9 = load i32, i32* %8, align 4, !dbg !603
  %10 = add i32 %9, 63, !dbg !604
  %11 = lshr i32 %10, 5, !dbg !605
  %12 = zext i32 %11 to i64, !dbg !606
  call void @llvm.dbg.value(metadata i64 %12, metadata !607, metadata !DIExpression()), !dbg !596
  %13 = mul i64 %12, 4, !dbg !608
  call void @llvm.dbg.value(metadata i64 %13, metadata !609, metadata !DIExpression()), !dbg !596
  %14 = and i64 %12, 1, !dbg !610
  %15 = add i64 %12, %14, !dbg !611
  call void @llvm.dbg.value(metadata i64 %15, metadata !607, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32* %5, metadata !612, metadata !DIExpression()), !dbg !596
  %16 = getelementptr inbounds i32, i32* %5, i64 %15, !dbg !613
  call void @llvm.dbg.value(metadata i32* %16, metadata !614, metadata !DIExpression()), !dbg !596
  %17 = shl i64 %15, 1, !dbg !615
  %18 = icmp ult i64 %6, %17, !dbg !617
  br i1 %18, label %19, label %20, !dbg !618

19:                                               ; preds = %7
  br label %131, !dbg !619

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 5, metadata !621, metadata !DIExpression()), !dbg !596
  br label %21, !dbg !622

21:                                               ; preds = %31, %20
  %.08 = phi i32 [ 5, %20 ], [ %32, %31 ], !dbg !624
  call void @llvm.dbg.value(metadata i32 %.08, metadata !621, metadata !DIExpression()), !dbg !596
  %22 = icmp sgt i32 %.08, 1, !dbg !625
  br i1 %22, label %23, label %33, !dbg !627

23:                                               ; preds = %21
  %24 = shl i32 1, %.08, !dbg !628
  %25 = add i32 %24, 1, !dbg !631
  %26 = zext i32 %25 to i64, !dbg !632
  %27 = mul i64 %26, %15, !dbg !633
  %28 = icmp ule i64 %27, %6, !dbg !634
  br i1 %28, label %29, label %30, !dbg !635

29:                                               ; preds = %23
  br label %33, !dbg !636

30:                                               ; preds = %23
  br label %31, !dbg !638

31:                                               ; preds = %30
  %32 = add nsw i32 %.08, -1, !dbg !639
  call void @llvm.dbg.value(metadata i32 %32, metadata !621, metadata !DIExpression()), !dbg !596
  br label %21, !dbg !640, !llvm.loop !641

33:                                               ; preds = %29, %21
  call void @br_i31_to_monty(i32* %0, i32* %3), !dbg !643
  %34 = icmp eq i32 %.08, 1, !dbg !644
  br i1 %34, label %35, label %38, !dbg !646

35:                                               ; preds = %33
  %36 = bitcast i32* %16 to i8*, !dbg !647
  %37 = bitcast i32* %0 to i8*, !dbg !647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 %13, i1 false), !dbg !647
  br label %53, !dbg !649

38:                                               ; preds = %33
  %39 = getelementptr inbounds i32, i32* %16, i64 %15, !dbg !650
  %40 = bitcast i32* %39 to i8*, !dbg !652
  %41 = bitcast i32* %0 to i8*, !dbg !652
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 %13, i1 false), !dbg !652
  %42 = getelementptr inbounds i32, i32* %16, i64 %15, !dbg !653
  call void @llvm.dbg.value(metadata i32* %42, metadata !654, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 2, metadata !655, metadata !DIExpression()), !dbg !596
  br label %43, !dbg !656

43:                                               ; preds = %50, %38
  %.018 = phi i32* [ %42, %38 ], [ %49, %50 ], !dbg !658
  %.016 = phi i64 [ 2, %38 ], [ %51, %50 ], !dbg !659
  call void @llvm.dbg.value(metadata i64 %.016, metadata !655, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32* %.018, metadata !654, metadata !DIExpression()), !dbg !596
  %44 = shl i32 1, %.08, !dbg !660
  %45 = zext i32 %44 to i64, !dbg !662
  %46 = icmp ult i64 %.016, %45, !dbg !663
  br i1 %46, label %47, label %52, !dbg !664

47:                                               ; preds = %43
  %48 = getelementptr inbounds i32, i32* %.018, i64 %15, !dbg !665
  call void @br_i31_montymul(i32* %48, i32* %.018, i32* %0, i32* %3, i32 %4), !dbg !667
  %49 = getelementptr inbounds i32, i32* %.018, i64 %15, !dbg !668
  call void @llvm.dbg.value(metadata i32* %49, metadata !654, metadata !DIExpression()), !dbg !596
  br label %50, !dbg !669

50:                                               ; preds = %47
  %51 = add i64 %.016, 1, !dbg !670
  call void @llvm.dbg.value(metadata i64 %51, metadata !655, metadata !DIExpression()), !dbg !596
  br label %43, !dbg !671, !llvm.loop !672

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %35
  %54 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !674
  %55 = load i32, i32* %54, align 4, !dbg !674
  call void @br_i31_zero.4(i32* %0, i32 %55), !dbg !675
  %56 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !676
  %57 = load i32, i32* %56, align 4, !dbg !676
  %58 = add i32 %57, 31, !dbg !677
  %59 = lshr i32 %58, 5, !dbg !678
  %60 = zext i32 %59 to i64, !dbg !679
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !679
  store i32 1, i32* %61, align 4, !dbg !680
  call void @br_i31_muladd_small(i32* %0, i32 0, i32* %3), !dbg !681
  call void @llvm.dbg.value(metadata i32 0, metadata !682, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 0, metadata !683, metadata !DIExpression()), !dbg !596
  br label %62, !dbg !684

62:                                               ; preds = %126, %53
  %.012 = phi i32 [ 0, %53 ], [ %.214, %126 ], !dbg !596
  %.09 = phi i32 [ 0, %53 ], [ %88, %126 ], !dbg !596
  %.04 = phi i64 [ %2, %53 ], [ %.26, %126 ]
  %.02 = phi i8* [ %1, %53 ], [ %.2, %126 ]
  call void @llvm.dbg.value(metadata i8* %.02, metadata !597, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %.04, metadata !598, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %.09, metadata !683, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %.012, metadata !682, metadata !DIExpression()), !dbg !596
  %63 = icmp sgt i32 %.09, 0, !dbg !685
  br i1 %63, label %66, label %64, !dbg !686

64:                                               ; preds = %62
  %65 = icmp ugt i64 %.04, 0, !dbg !687
  br label %66, !dbg !686

66:                                               ; preds = %64, %62
  %67 = phi i1 [ true, %62 ], [ %65, %64 ]
  br i1 %67, label %68, label %130, !dbg !684

68:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 %.08, metadata !688, metadata !DIExpression()), !dbg !690
  %69 = icmp slt i32 %.09, %.08, !dbg !691
  br i1 %69, label %70, label %82, !dbg !693

70:                                               ; preds = %68
  %71 = icmp ugt i64 %.04, 0, !dbg !694
  br i1 %71, label %72, label %80, !dbg !697

72:                                               ; preds = %70
  %73 = shl i32 %.012, 8, !dbg !698
  %74 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !700
  call void @llvm.dbg.value(metadata i8* %74, metadata !597, metadata !DIExpression()), !dbg !596
  %75 = load i8, i8* %.02, align 1, !dbg !701
  %76 = zext i8 %75 to i32, !dbg !701
  %77 = or i32 %73, %76, !dbg !702
  call void @llvm.dbg.value(metadata i32 %77, metadata !682, metadata !DIExpression()), !dbg !596
  %78 = add i64 %.04, -1, !dbg !703
  call void @llvm.dbg.value(metadata i64 %78, metadata !598, metadata !DIExpression()), !dbg !596
  %79 = add nsw i32 %.09, 8, !dbg !704
  call void @llvm.dbg.value(metadata i32 %79, metadata !683, metadata !DIExpression()), !dbg !596
  br label %81, !dbg !705

80:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i32 %.09, metadata !688, metadata !DIExpression()), !dbg !690
  br label %81

81:                                               ; preds = %80, %72
  %.113 = phi i32 [ %77, %72 ], [ %.012, %80 ], !dbg !596
  %.110 = phi i32 [ %79, %72 ], [ %.09, %80 ], !dbg !596
  %.15 = phi i64 [ %78, %72 ], [ %.04, %80 ]
  %.13 = phi i8* [ %74, %72 ], [ %.02, %80 ]
  %.01 = phi i32 [ %.08, %72 ], [ %.09, %80 ], !dbg !690
  call void @llvm.dbg.value(metadata i32 %.01, metadata !688, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8* %.13, metadata !597, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %.15, metadata !598, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %.110, metadata !683, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %.113, metadata !682, metadata !DIExpression()), !dbg !596
  br label %82, !dbg !706

82:                                               ; preds = %81, %68
  %.214 = phi i32 [ %.113, %81 ], [ %.012, %68 ], !dbg !596
  %.211 = phi i32 [ %.110, %81 ], [ %.09, %68 ], !dbg !596
  %.26 = phi i64 [ %.15, %81 ], [ %.04, %68 ]
  %.2 = phi i8* [ %.13, %81 ], [ %.02, %68 ]
  %.1 = phi i32 [ %.01, %81 ], [ %.08, %68 ], !dbg !707
  call void @llvm.dbg.value(metadata i32 %.1, metadata !688, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8* %.2, metadata !597, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %.26, metadata !598, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %.211, metadata !683, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %.214, metadata !682, metadata !DIExpression()), !dbg !596
  %83 = sub nsw i32 %.211, %.1, !dbg !708
  %84 = lshr i32 %.214, %83, !dbg !709
  %85 = shl i32 1, %.1, !dbg !710
  %86 = sub i32 %85, 1, !dbg !711
  %87 = and i32 %84, %86, !dbg !712
  call void @llvm.dbg.value(metadata i32 %87, metadata !713, metadata !DIExpression()), !dbg !690
  %88 = sub nsw i32 %.211, %.1, !dbg !714
  call void @llvm.dbg.value(metadata i32 %88, metadata !683, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 0, metadata !715, metadata !DIExpression()), !dbg !690
  br label %89, !dbg !716

89:                                               ; preds = %94, %82
  %.07 = phi i32 [ 0, %82 ], [ %95, %94 ], !dbg !718
  call void @llvm.dbg.value(metadata i32 %.07, metadata !715, metadata !DIExpression()), !dbg !690
  %90 = icmp slt i32 %.07, %.1, !dbg !719
  br i1 %90, label %91, label %96, !dbg !721

91:                                               ; preds = %89
  call void @br_i31_montymul(i32* %5, i32* %0, i32* %0, i32* %3, i32 %4), !dbg !722
  %92 = bitcast i32* %0 to i8*, !dbg !724
  %93 = bitcast i32* %5 to i8*, !dbg !724
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 %13, i1 false), !dbg !724
  br label %94, !dbg !725

94:                                               ; preds = %91
  %95 = add nsw i32 %.07, 1, !dbg !726
  call void @llvm.dbg.value(metadata i32 %95, metadata !715, metadata !DIExpression()), !dbg !690
  br label %89, !dbg !727, !llvm.loop !728

96:                                               ; preds = %89
  %97 = icmp sgt i32 %.08, 1, !dbg !730
  br i1 %97, label %98, label %126, !dbg !732

98:                                               ; preds = %96
  %99 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !733
  %100 = load i32, i32* %99, align 4, !dbg !733
  call void @br_i31_zero.4(i32* %16, i32 %100), !dbg !735
  %101 = getelementptr inbounds i32, i32* %16, i64 %15, !dbg !736
  call void @llvm.dbg.value(metadata i32* %101, metadata !654, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 1, metadata !655, metadata !DIExpression()), !dbg !596
  br label %102, !dbg !737

102:                                              ; preds = %123, %98
  %.119 = phi i32* [ %101, %98 ], [ %122, %123 ], !dbg !739
  %.117 = phi i64 [ 1, %98 ], [ %124, %123 ], !dbg !740
  call void @llvm.dbg.value(metadata i64 %.117, metadata !655, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32* %.119, metadata !654, metadata !DIExpression()), !dbg !596
  %103 = shl i32 1, %.1, !dbg !741
  %104 = zext i32 %103 to i64, !dbg !743
  %105 = icmp ult i64 %.117, %104, !dbg !744
  br i1 %105, label %106, label %125, !dbg !745

106:                                              ; preds = %102
  %107 = trunc i64 %.117 to i32, !dbg !746
  %108 = call i32 @EQ.5(i32 %107, i32 %87), !dbg !748
  %109 = sub i32 0, %108, !dbg !749
  call void @llvm.dbg.value(metadata i32 %109, metadata !750, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.value(metadata i64 1, metadata !752, metadata !DIExpression()), !dbg !596
  br label %110, !dbg !753

110:                                              ; preds = %119, %106
  %.015 = phi i64 [ 1, %106 ], [ %120, %119 ], !dbg !755
  call void @llvm.dbg.value(metadata i64 %.015, metadata !752, metadata !DIExpression()), !dbg !596
  %111 = icmp ult i64 %.015, %15, !dbg !756
  br i1 %111, label %112, label %121, !dbg !758

112:                                              ; preds = %110
  %113 = getelementptr inbounds i32, i32* %.119, i64 %.015, !dbg !759
  %114 = load i32, i32* %113, align 4, !dbg !759
  %115 = and i32 %109, %114, !dbg !761
  %116 = getelementptr inbounds i32, i32* %16, i64 %.015, !dbg !762
  %117 = load i32, i32* %116, align 4, !dbg !763
  %118 = or i32 %117, %115, !dbg !763
  store i32 %118, i32* %116, align 4, !dbg !763
  br label %119, !dbg !764

119:                                              ; preds = %112
  %120 = add i64 %.015, 1, !dbg !765
  call void @llvm.dbg.value(metadata i64 %120, metadata !752, metadata !DIExpression()), !dbg !596
  br label %110, !dbg !766, !llvm.loop !767

121:                                              ; preds = %110
  %122 = getelementptr inbounds i32, i32* %.119, i64 %15, !dbg !769
  call void @llvm.dbg.value(metadata i32* %122, metadata !654, metadata !DIExpression()), !dbg !596
  br label %123, !dbg !770

123:                                              ; preds = %121
  %124 = add i64 %.117, 1, !dbg !771
  call void @llvm.dbg.value(metadata i64 %124, metadata !655, metadata !DIExpression()), !dbg !596
  br label %102, !dbg !772, !llvm.loop !773

125:                                              ; preds = %102
  br label %126, !dbg !775

126:                                              ; preds = %125, %96
  call void @br_i31_montymul(i32* %5, i32* %0, i32* %16, i32* %3, i32 %4), !dbg !776
  %127 = call i32 @NEQ.6(i32 %87, i32 0), !dbg !777
  %128 = bitcast i32* %0 to i8*, !dbg !778
  %129 = bitcast i32* %5 to i8*, !dbg !779
  call void @br_ccopy(i32 %127, i8* %128, i8* %129, i64 %13), !dbg !780
  br label %62, !dbg !684, !llvm.loop !781

130:                                              ; preds = %66
  call void @br_i31_from_monty(i32* %0, i32* %3, i32 %4), !dbg !783
  br label %131, !dbg !784

131:                                              ; preds = %130, %19
  %.0 = phi i32 [ 0, %19 ], [ 1, %130 ], !dbg !596
  ret i32 %.0, !dbg !785
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @br_i31_zero.4(i32* %0, i32 %1) #0 !dbg !786 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !787, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i32 %1, metadata !789, metadata !DIExpression()), !dbg !788
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !790
  call void @llvm.dbg.value(metadata i32* %3, metadata !787, metadata !DIExpression()), !dbg !788
  store i32 %1, i32* %0, align 4, !dbg !791
  %4 = bitcast i32* %3 to i8*, !dbg !792
  %5 = add i32 %1, 31, !dbg !793
  %6 = lshr i32 %5, 5, !dbg !794
  %7 = zext i32 %6 to i64, !dbg !795
  %8 = mul i64 %7, 4, !dbg !796
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !792
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.5(i32 %0, i32 %1) #0 !dbg !798 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i32 %1, metadata !801, metadata !DIExpression()), !dbg !800
  %3 = xor i32 %0, %1, !dbg !802
  call void @llvm.dbg.value(metadata i32 %3, metadata !803, metadata !DIExpression()), !dbg !800
  %4 = sub i32 0, %3, !dbg !804
  %5 = or i32 %3, %4, !dbg !805
  %6 = lshr i32 %5, 31, !dbg !806
  %7 = call i32 @NOT.7(i32 %6), !dbg !807
  ret i32 %7, !dbg !808
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.6(i32 %0, i32 %1) #0 !dbg !809 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i32 %1, metadata !812, metadata !DIExpression()), !dbg !811
  %3 = xor i32 %0, %1, !dbg !813
  call void @llvm.dbg.value(metadata i32 %3, metadata !814, metadata !DIExpression()), !dbg !811
  %4 = sub i32 0, %3, !dbg !815
  %5 = or i32 %3, %4, !dbg !816
  %6 = lshr i32 %5, 31, !dbg !817
  ret i32 %6, !dbg !818
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.7(i32 %0) #0 !dbg !819 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !820, metadata !DIExpression()), !dbg !821
  %2 = xor i32 %0, 1, !dbg !822
  ret i32 %2, !dbg !823
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_montymul(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 !dbg !824 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !827, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32* %1, metadata !829, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32* %2, metadata !830, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32* %3, metadata !831, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 %4, metadata !832, metadata !DIExpression()), !dbg !828
  %6 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !833
  %7 = load i32, i32* %6, align 4, !dbg !833
  %8 = add i32 %7, 31, !dbg !834
  %9 = lshr i32 %8, 5, !dbg !835
  %10 = zext i32 %9 to i64, !dbg !836
  call void @llvm.dbg.value(metadata i64 %10, metadata !837, metadata !DIExpression()), !dbg !828
  %11 = and i64 %10, -4, !dbg !838
  call void @llvm.dbg.value(metadata i64 %11, metadata !839, metadata !DIExpression()), !dbg !828
  %12 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !840
  %13 = load i32, i32* %12, align 4, !dbg !840
  call void @br_i31_zero.10(i32* %0, i32 %13), !dbg !841
  call void @llvm.dbg.value(metadata i32 0, metadata !842, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i64 0, metadata !843, metadata !DIExpression()), !dbg !828
  br label %14, !dbg !844

14:                                               ; preds = %169, %5
  %.04 = phi i64 [ 0, %5 ], [ %170, %169 ], !dbg !846
  %.01 = phi i32 [ 0, %5 ], [ %168, %169 ], !dbg !828
  call void @llvm.dbg.value(metadata i32 %.01, metadata !842, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i64 %.04, metadata !843, metadata !DIExpression()), !dbg !828
  %15 = icmp ult i64 %.04, %10, !dbg !847
  br i1 %15, label %16, label %171, !dbg !849

16:                                               ; preds = %14
  %17 = add i64 %.04, 1, !dbg !850
  %18 = getelementptr inbounds i32, i32* %1, i64 %17, !dbg !852
  %19 = load i32, i32* %18, align 4, !dbg !852
  call void @llvm.dbg.value(metadata i32 %19, metadata !853, metadata !DIExpression()), !dbg !854
  %20 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !855
  %21 = load i32, i32* %20, align 4, !dbg !855
  %22 = add i64 %.04, 1, !dbg !855
  %23 = getelementptr inbounds i32, i32* %1, i64 %22, !dbg !855
  %24 = load i32, i32* %23, align 4, !dbg !855
  %25 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !855
  %26 = load i32, i32* %25, align 4, !dbg !855
  %27 = mul i32 %24, %26, !dbg !855
  %28 = and i32 %27, 2147483647, !dbg !855
  %29 = add i32 %21, %28, !dbg !855
  %30 = mul i32 %29, %4, !dbg !855
  %31 = and i32 %30, 2147483647, !dbg !855
  call void @llvm.dbg.value(metadata i32 %31, metadata !856, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i64 0, metadata !857, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i64 0, metadata !858, metadata !DIExpression()), !dbg !828
  br label %32, !dbg !859

32:                                               ; preds = %131, %16
  %.02 = phi i64 [ 0, %16 ], [ %132, %131 ], !dbg !861
  %.0 = phi i64 [ 0, %16 ], [ %126, %131 ], !dbg !854
  call void @llvm.dbg.value(metadata i64 %.0, metadata !857, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i64 %.02, metadata !858, metadata !DIExpression()), !dbg !828
  %33 = icmp ult i64 %.02, %11, !dbg !862
  br i1 %33, label %34, label %133, !dbg !864

34:                                               ; preds = %32
  %35 = add i64 %.02, 1, !dbg !865
  %36 = getelementptr inbounds i32, i32* %0, i64 %35, !dbg !867
  %37 = load i32, i32* %36, align 4, !dbg !867
  %38 = zext i32 %37 to i64, !dbg !868
  %39 = zext i32 %19 to i64, !dbg !869
  %40 = add i64 %.02, 1, !dbg !869
  %41 = getelementptr inbounds i32, i32* %2, i64 %40, !dbg !869
  %42 = load i32, i32* %41, align 4, !dbg !869
  %43 = zext i32 %42 to i64, !dbg !869
  %44 = mul i64 %39, %43, !dbg !869
  %45 = add i64 %38, %44, !dbg !870
  %46 = zext i32 %31 to i64, !dbg !871
  %47 = add i64 %.02, 1, !dbg !871
  %48 = getelementptr inbounds i32, i32* %3, i64 %47, !dbg !871
  %49 = load i32, i32* %48, align 4, !dbg !871
  %50 = zext i32 %49 to i64, !dbg !871
  %51 = mul i64 %46, %50, !dbg !871
  %52 = add i64 %45, %51, !dbg !872
  %53 = add i64 %52, %.0, !dbg !873
  call void @llvm.dbg.value(metadata i64 %53, metadata !874, metadata !DIExpression()), !dbg !875
  %54 = lshr i64 %53, 31, !dbg !876
  call void @llvm.dbg.value(metadata i64 %54, metadata !857, metadata !DIExpression()), !dbg !854
  %55 = trunc i64 %53 to i32, !dbg !877
  %56 = and i32 %55, 2147483647, !dbg !878
  %57 = add i64 %.02, 0, !dbg !879
  %58 = getelementptr inbounds i32, i32* %0, i64 %57, !dbg !880
  store i32 %56, i32* %58, align 4, !dbg !881
  %59 = add i64 %.02, 2, !dbg !882
  %60 = getelementptr inbounds i32, i32* %0, i64 %59, !dbg !883
  %61 = load i32, i32* %60, align 4, !dbg !883
  %62 = zext i32 %61 to i64, !dbg !884
  %63 = zext i32 %19 to i64, !dbg !885
  %64 = add i64 %.02, 2, !dbg !885
  %65 = getelementptr inbounds i32, i32* %2, i64 %64, !dbg !885
  %66 = load i32, i32* %65, align 4, !dbg !885
  %67 = zext i32 %66 to i64, !dbg !885
  %68 = mul i64 %63, %67, !dbg !885
  %69 = add i64 %62, %68, !dbg !886
  %70 = zext i32 %31 to i64, !dbg !887
  %71 = add i64 %.02, 2, !dbg !887
  %72 = getelementptr inbounds i32, i32* %3, i64 %71, !dbg !887
  %73 = load i32, i32* %72, align 4, !dbg !887
  %74 = zext i32 %73 to i64, !dbg !887
  %75 = mul i64 %70, %74, !dbg !887
  %76 = add i64 %69, %75, !dbg !888
  %77 = add i64 %76, %54, !dbg !889
  call void @llvm.dbg.value(metadata i64 %77, metadata !874, metadata !DIExpression()), !dbg !875
  %78 = lshr i64 %77, 31, !dbg !890
  call void @llvm.dbg.value(metadata i64 %78, metadata !857, metadata !DIExpression()), !dbg !854
  %79 = trunc i64 %77 to i32, !dbg !891
  %80 = and i32 %79, 2147483647, !dbg !892
  %81 = add i64 %.02, 1, !dbg !893
  %82 = getelementptr inbounds i32, i32* %0, i64 %81, !dbg !894
  store i32 %80, i32* %82, align 4, !dbg !895
  %83 = add i64 %.02, 3, !dbg !896
  %84 = getelementptr inbounds i32, i32* %0, i64 %83, !dbg !897
  %85 = load i32, i32* %84, align 4, !dbg !897
  %86 = zext i32 %85 to i64, !dbg !898
  %87 = zext i32 %19 to i64, !dbg !899
  %88 = add i64 %.02, 3, !dbg !899
  %89 = getelementptr inbounds i32, i32* %2, i64 %88, !dbg !899
  %90 = load i32, i32* %89, align 4, !dbg !899
  %91 = zext i32 %90 to i64, !dbg !899
  %92 = mul i64 %87, %91, !dbg !899
  %93 = add i64 %86, %92, !dbg !900
  %94 = zext i32 %31 to i64, !dbg !901
  %95 = add i64 %.02, 3, !dbg !901
  %96 = getelementptr inbounds i32, i32* %3, i64 %95, !dbg !901
  %97 = load i32, i32* %96, align 4, !dbg !901
  %98 = zext i32 %97 to i64, !dbg !901
  %99 = mul i64 %94, %98, !dbg !901
  %100 = add i64 %93, %99, !dbg !902
  %101 = add i64 %100, %78, !dbg !903
  call void @llvm.dbg.value(metadata i64 %101, metadata !874, metadata !DIExpression()), !dbg !875
  %102 = lshr i64 %101, 31, !dbg !904
  call void @llvm.dbg.value(metadata i64 %102, metadata !857, metadata !DIExpression()), !dbg !854
  %103 = trunc i64 %101 to i32, !dbg !905
  %104 = and i32 %103, 2147483647, !dbg !906
  %105 = add i64 %.02, 2, !dbg !907
  %106 = getelementptr inbounds i32, i32* %0, i64 %105, !dbg !908
  store i32 %104, i32* %106, align 4, !dbg !909
  %107 = add i64 %.02, 4, !dbg !910
  %108 = getelementptr inbounds i32, i32* %0, i64 %107, !dbg !911
  %109 = load i32, i32* %108, align 4, !dbg !911
  %110 = zext i32 %109 to i64, !dbg !912
  %111 = zext i32 %19 to i64, !dbg !913
  %112 = add i64 %.02, 4, !dbg !913
  %113 = getelementptr inbounds i32, i32* %2, i64 %112, !dbg !913
  %114 = load i32, i32* %113, align 4, !dbg !913
  %115 = zext i32 %114 to i64, !dbg !913
  %116 = mul i64 %111, %115, !dbg !913
  %117 = add i64 %110, %116, !dbg !914
  %118 = zext i32 %31 to i64, !dbg !915
  %119 = add i64 %.02, 4, !dbg !915
  %120 = getelementptr inbounds i32, i32* %3, i64 %119, !dbg !915
  %121 = load i32, i32* %120, align 4, !dbg !915
  %122 = zext i32 %121 to i64, !dbg !915
  %123 = mul i64 %118, %122, !dbg !915
  %124 = add i64 %117, %123, !dbg !916
  %125 = add i64 %124, %102, !dbg !917
  call void @llvm.dbg.value(metadata i64 %125, metadata !874, metadata !DIExpression()), !dbg !875
  %126 = lshr i64 %125, 31, !dbg !918
  call void @llvm.dbg.value(metadata i64 %126, metadata !857, metadata !DIExpression()), !dbg !854
  %127 = trunc i64 %125 to i32, !dbg !919
  %128 = and i32 %127, 2147483647, !dbg !920
  %129 = add i64 %.02, 3, !dbg !921
  %130 = getelementptr inbounds i32, i32* %0, i64 %129, !dbg !922
  store i32 %128, i32* %130, align 4, !dbg !923
  br label %131, !dbg !924

131:                                              ; preds = %34
  %132 = add i64 %.02, 4, !dbg !925
  call void @llvm.dbg.value(metadata i64 %132, metadata !858, metadata !DIExpression()), !dbg !828
  br label %32, !dbg !926, !llvm.loop !927

133:                                              ; preds = %32
  br label %134, !dbg !929

134:                                              ; preds = %160, %133
  %.13 = phi i64 [ %.02, %133 ], [ %161, %160 ], !dbg !854
  %.1 = phi i64 [ %.0, %133 ], [ %156, %160 ], !dbg !854
  call void @llvm.dbg.value(metadata i64 %.1, metadata !857, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i64 %.13, metadata !858, metadata !DIExpression()), !dbg !828
  %135 = icmp ult i64 %.13, %10, !dbg !930
  br i1 %135, label %136, label %162, !dbg !933

136:                                              ; preds = %134
  %137 = add i64 %.13, 1, !dbg !934
  %138 = getelementptr inbounds i32, i32* %0, i64 %137, !dbg !936
  %139 = load i32, i32* %138, align 4, !dbg !936
  %140 = zext i32 %139 to i64, !dbg !937
  %141 = zext i32 %19 to i64, !dbg !938
  %142 = add i64 %.13, 1, !dbg !938
  %143 = getelementptr inbounds i32, i32* %2, i64 %142, !dbg !938
  %144 = load i32, i32* %143, align 4, !dbg !938
  %145 = zext i32 %144 to i64, !dbg !938
  %146 = mul i64 %141, %145, !dbg !938
  %147 = add i64 %140, %146, !dbg !939
  %148 = zext i32 %31 to i64, !dbg !940
  %149 = add i64 %.13, 1, !dbg !940
  %150 = getelementptr inbounds i32, i32* %3, i64 %149, !dbg !940
  %151 = load i32, i32* %150, align 4, !dbg !940
  %152 = zext i32 %151 to i64, !dbg !940
  %153 = mul i64 %148, %152, !dbg !940
  %154 = add i64 %147, %153, !dbg !941
  %155 = add i64 %154, %.1, !dbg !942
  call void @llvm.dbg.value(metadata i64 %155, metadata !943, metadata !DIExpression()), !dbg !944
  %156 = lshr i64 %155, 31, !dbg !945
  call void @llvm.dbg.value(metadata i64 %156, metadata !857, metadata !DIExpression()), !dbg !854
  %157 = trunc i64 %155 to i32, !dbg !946
  %158 = and i32 %157, 2147483647, !dbg !947
  %159 = getelementptr inbounds i32, i32* %0, i64 %.13, !dbg !948
  store i32 %158, i32* %159, align 4, !dbg !949
  br label %160, !dbg !950

160:                                              ; preds = %136
  %161 = add i64 %.13, 1, !dbg !951
  call void @llvm.dbg.value(metadata i64 %161, metadata !858, metadata !DIExpression()), !dbg !828
  br label %134, !dbg !952, !llvm.loop !953

162:                                              ; preds = %134
  %163 = zext i32 %.01 to i64, !dbg !955
  %164 = add i64 %163, %.1, !dbg !955
  %165 = trunc i64 %164 to i32, !dbg !955
  call void @llvm.dbg.value(metadata i32 %165, metadata !842, metadata !DIExpression()), !dbg !828
  %166 = and i32 %165, 2147483647, !dbg !956
  %167 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !957
  store i32 %166, i32* %167, align 4, !dbg !958
  %168 = lshr i32 %165, 31, !dbg !959
  call void @llvm.dbg.value(metadata i32 %168, metadata !842, metadata !DIExpression()), !dbg !828
  br label %169, !dbg !960

169:                                              ; preds = %162
  %170 = add i64 %.04, 1, !dbg !961
  call void @llvm.dbg.value(metadata i64 %170, metadata !843, metadata !DIExpression()), !dbg !828
  br label %14, !dbg !962, !llvm.loop !963

171:                                              ; preds = %14
  %172 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !965
  %173 = load i32, i32* %172, align 4, !dbg !965
  %174 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !966
  store i32 %173, i32* %174, align 4, !dbg !967
  %175 = call i32 @NEQ.11(i32 %.01, i32 0), !dbg !968
  %176 = call i32 @br_i31_sub(i32* %0, i32* %3, i32 0), !dbg !969
  %177 = call i32 @NOT.12(i32 %176), !dbg !970
  %178 = or i32 %175, %177, !dbg !971
  %179 = call i32 @br_i31_sub(i32* %0, i32* %3, i32 %178), !dbg !972
  ret void, !dbg !973
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i31_zero.10(i32* %0, i32 %1) #0 !dbg !974 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !975, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i32 %1, metadata !977, metadata !DIExpression()), !dbg !976
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !978
  call void @llvm.dbg.value(metadata i32* %3, metadata !975, metadata !DIExpression()), !dbg !976
  store i32 %1, i32* %0, align 4, !dbg !979
  %4 = bitcast i32* %3 to i8*, !dbg !980
  %5 = add i32 %1, 31, !dbg !981
  %6 = lshr i32 %5, 5, !dbg !982
  %7 = zext i32 %6 to i64, !dbg !983
  %8 = mul i64 %7, 4, !dbg !984
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !980
  ret void, !dbg !985
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.11(i32 %0, i32 %1) #0 !dbg !986 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !987, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 %1, metadata !989, metadata !DIExpression()), !dbg !988
  %3 = xor i32 %0, %1, !dbg !990
  call void @llvm.dbg.value(metadata i32 %3, metadata !991, metadata !DIExpression()), !dbg !988
  %4 = sub i32 0, %3, !dbg !992
  %5 = or i32 %3, %4, !dbg !993
  %6 = lshr i32 %5, 31, !dbg !994
  ret i32 %6, !dbg !995
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.12(i32 %0) #0 !dbg !996 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !997, metadata !DIExpression()), !dbg !998
  %2 = xor i32 %0, 1, !dbg !999
  ret i32 %2, !dbg !1000
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_mulacc(i32* %0, i32* %1, i32* %2) #0 !dbg !1001 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1004, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i32* %1, metadata !1006, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i32* %2, metadata !1007, metadata !DIExpression()), !dbg !1005
  %4 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1008
  %5 = load i32, i32* %4, align 4, !dbg !1008
  %6 = add i32 %5, 31, !dbg !1009
  %7 = lshr i32 %6, 5, !dbg !1010
  %8 = zext i32 %7 to i64, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %8, metadata !1012, metadata !DIExpression()), !dbg !1005
  %9 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1013
  %10 = load i32, i32* %9, align 4, !dbg !1013
  %11 = add i32 %10, 31, !dbg !1014
  %12 = lshr i32 %11, 5, !dbg !1015
  %13 = zext i32 %12 to i64, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %13, metadata !1017, metadata !DIExpression()), !dbg !1005
  %14 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1018
  %15 = load i32, i32* %14, align 4, !dbg !1018
  %16 = and i32 %15, 31, !dbg !1019
  %17 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1020
  %18 = load i32, i32* %17, align 4, !dbg !1020
  %19 = and i32 %18, 31, !dbg !1021
  %20 = add i32 %16, %19, !dbg !1022
  call void @llvm.dbg.value(metadata i32 %20, metadata !1023, metadata !DIExpression()), !dbg !1005
  %21 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1024
  %22 = load i32, i32* %21, align 4, !dbg !1024
  %23 = lshr i32 %22, 5, !dbg !1025
  %24 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1026
  %25 = load i32, i32* %24, align 4, !dbg !1026
  %26 = lshr i32 %25, 5, !dbg !1027
  %27 = add i32 %23, %26, !dbg !1028
  call void @llvm.dbg.value(metadata i32 %27, metadata !1029, metadata !DIExpression()), !dbg !1005
  %28 = shl i32 %27, 5, !dbg !1030
  %29 = add i32 %28, %20, !dbg !1031
  %30 = sub i32 %20, 31, !dbg !1032
  %31 = xor i32 %30, -1, !dbg !1033
  %32 = lshr i32 %31, 31, !dbg !1034
  %33 = add i32 %29, %32, !dbg !1035
  %34 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1036
  store i32 %33, i32* %34, align 4, !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, metadata !1038, metadata !DIExpression()), !dbg !1005
  br label %35, !dbg !1039

35:                                               ; preds = %70, %3
  %.02 = phi i64 [ 0, %3 ], [ %71, %70 ], !dbg !1041
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1038, metadata !DIExpression()), !dbg !1005
  %36 = icmp ult i64 %.02, %13, !dbg !1042
  br i1 %36, label %37, label %72, !dbg !1044

37:                                               ; preds = %35
  %38 = add i64 1, %.02, !dbg !1045
  %39 = getelementptr inbounds i32, i32* %2, i64 %38, !dbg !1047
  %40 = load i32, i32* %39, align 4, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %40, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 0, metadata !1050, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 0, metadata !1051, metadata !DIExpression()), !dbg !1049
  br label %41, !dbg !1052

41:                                               ; preds = %63, %37
  %.01 = phi i64 [ 0, %37 ], [ %64, %63 ], !dbg !1054
  %.0 = phi i64 [ 0, %37 ], [ %57, %63 ], !dbg !1049
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1050, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1051, metadata !DIExpression()), !dbg !1049
  %42 = icmp ult i64 %.01, %8, !dbg !1055
  br i1 %42, label %43, label %65, !dbg !1057

43:                                               ; preds = %41
  %44 = add i64 1, %.02, !dbg !1058
  %45 = add i64 %44, %.01, !dbg !1060
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !1061
  %47 = load i32, i32* %46, align 4, !dbg !1061
  %48 = zext i32 %47 to i64, !dbg !1062
  %49 = zext i32 %40 to i64, !dbg !1063
  %50 = add i64 1, %.01, !dbg !1063
  %51 = getelementptr inbounds i32, i32* %1, i64 %50, !dbg !1063
  %52 = load i32, i32* %51, align 4, !dbg !1063
  %53 = zext i32 %52 to i64, !dbg !1063
  %54 = mul i64 %49, %53, !dbg !1063
  %55 = add i64 %48, %54, !dbg !1064
  %56 = add i64 %55, %.0, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %56, metadata !1066, metadata !DIExpression()), !dbg !1067
  %57 = lshr i64 %56, 31, !dbg !1068
  call void @llvm.dbg.value(metadata i64 %57, metadata !1050, metadata !DIExpression()), !dbg !1049
  %58 = trunc i64 %56 to i32, !dbg !1069
  %59 = and i32 %58, 2147483647, !dbg !1070
  %60 = add i64 1, %.02, !dbg !1071
  %61 = add i64 %60, %.01, !dbg !1072
  %62 = getelementptr inbounds i32, i32* %0, i64 %61, !dbg !1073
  store i32 %59, i32* %62, align 4, !dbg !1074
  br label %63, !dbg !1075

63:                                               ; preds = %43
  %64 = add i64 %.01, 1, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %64, metadata !1051, metadata !DIExpression()), !dbg !1049
  br label %41, !dbg !1077, !llvm.loop !1078

65:                                               ; preds = %41
  %66 = trunc i64 %.0 to i32, !dbg !1080
  %67 = add i64 1, %.02, !dbg !1081
  %68 = add i64 %67, %8, !dbg !1082
  %69 = getelementptr inbounds i32, i32* %0, i64 %68, !dbg !1083
  store i32 %66, i32* %69, align 4, !dbg !1084
  br label %70, !dbg !1085

70:                                               ; preds = %65
  %71 = add i64 %.02, 1, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %71, metadata !1038, metadata !DIExpression()), !dbg !1005
  br label %35, !dbg !1087, !llvm.loop !1088

72:                                               ; preds = %35
  ret void, !dbg !1090
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_muladd_small(i32* %0, i32 %1, i32* %2) #0 !dbg !1091 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1094, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 %1, metadata !1096, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32* %2, metadata !1097, metadata !DIExpression()), !dbg !1095
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1098
  %5 = load i32, i32* %4, align 4, !dbg !1098
  call void @llvm.dbg.value(metadata i32 %5, metadata !1099, metadata !DIExpression()), !dbg !1095
  %6 = icmp eq i32 %5, 0, !dbg !1100
  br i1 %6, label %7, label %8, !dbg !1102

7:                                                ; preds = %3
  br label %126, !dbg !1103

8:                                                ; preds = %3
  %9 = icmp ule i32 %5, 31, !dbg !1105
  br i1 %9, label %10, label %22, !dbg !1107

10:                                               ; preds = %8
  %11 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1108
  %12 = load i32, i32* %11, align 4, !dbg !1108
  %13 = lshr i32 %12, 1, !dbg !1110
  call void @llvm.dbg.value(metadata i32 %13, metadata !1111, metadata !DIExpression()), !dbg !1095
  %14 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1112
  %15 = load i32, i32* %14, align 4, !dbg !1112
  %16 = shl i32 %15, 31, !dbg !1113
  %17 = or i32 %16, %1, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %17, metadata !1115, metadata !DIExpression()), !dbg !1116
  %18 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1117
  %19 = load i32, i32* %18, align 4, !dbg !1117
  %20 = call i32 @br_rem(i32 %13, i32 %17, i32 %19), !dbg !1118
  %21 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1119
  store i32 %20, i32* %21, align 4, !dbg !1120
  br label %126, !dbg !1121

22:                                               ; preds = %8
  %23 = add i32 %5, 31, !dbg !1122
  %24 = lshr i32 %23, 5, !dbg !1123
  %25 = zext i32 %24 to i64, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %25, metadata !1125, metadata !DIExpression()), !dbg !1095
  %26 = and i32 %5, 31, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %26, metadata !1127, metadata !DIExpression()), !dbg !1095
  %27 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !1128
  %28 = load i32, i32* %27, align 4, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %28, metadata !1111, metadata !DIExpression()), !dbg !1095
  %29 = icmp eq i32 %26, 0, !dbg !1129
  br i1 %29, label %30, label %44, !dbg !1131

30:                                               ; preds = %22
  %31 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !1132
  %32 = load i32, i32* %31, align 4, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %32, metadata !1134, metadata !DIExpression()), !dbg !1095
  %33 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1135
  %34 = bitcast i32* %33 to i8*, !dbg !1136
  %35 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1137
  %36 = bitcast i32* %35 to i8*, !dbg !1136
  %37 = sub i64 %25, 1, !dbg !1138
  %38 = mul i64 %37, 4, !dbg !1139
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %36, i64 %38, i1 false), !dbg !1136
  %39 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1140
  store i32 %1, i32* %39, align 4, !dbg !1141
  %40 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !1142
  %41 = load i32, i32* %40, align 4, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %41, metadata !1143, metadata !DIExpression()), !dbg !1095
  %42 = getelementptr inbounds i32, i32* %2, i64 %25, !dbg !1144
  %43 = load i32, i32* %42, align 4, !dbg !1144
  call void @llvm.dbg.value(metadata i32 %43, metadata !1145, metadata !DIExpression()), !dbg !1095
  br label %82, !dbg !1146

44:                                               ; preds = %22
  %45 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !1147
  %46 = load i32, i32* %45, align 4, !dbg !1147
  %47 = sub i32 31, %26, !dbg !1149
  %48 = shl i32 %46, %47, !dbg !1150
  %49 = sub i64 %25, 1, !dbg !1151
  %50 = getelementptr inbounds i32, i32* %0, i64 %49, !dbg !1152
  %51 = load i32, i32* %50, align 4, !dbg !1152
  %52 = lshr i32 %51, %26, !dbg !1153
  %53 = or i32 %48, %52, !dbg !1154
  %54 = and i32 %53, 2147483647, !dbg !1155
  call void @llvm.dbg.value(metadata i32 %54, metadata !1134, metadata !DIExpression()), !dbg !1095
  %55 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1156
  %56 = bitcast i32* %55 to i8*, !dbg !1157
  %57 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1158
  %58 = bitcast i32* %57 to i8*, !dbg !1157
  %59 = sub i64 %25, 1, !dbg !1159
  %60 = mul i64 %59, 4, !dbg !1160
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %58, i64 %60, i1 false), !dbg !1157
  %61 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1161
  store i32 %1, i32* %61, align 4, !dbg !1162
  %62 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !1163
  %63 = load i32, i32* %62, align 4, !dbg !1163
  %64 = sub i32 31, %26, !dbg !1164
  %65 = shl i32 %63, %64, !dbg !1165
  %66 = sub i64 %25, 1, !dbg !1166
  %67 = getelementptr inbounds i32, i32* %0, i64 %66, !dbg !1167
  %68 = load i32, i32* %67, align 4, !dbg !1167
  %69 = lshr i32 %68, %26, !dbg !1168
  %70 = or i32 %65, %69, !dbg !1169
  %71 = and i32 %70, 2147483647, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %71, metadata !1143, metadata !DIExpression()), !dbg !1095
  %72 = getelementptr inbounds i32, i32* %2, i64 %25, !dbg !1171
  %73 = load i32, i32* %72, align 4, !dbg !1171
  %74 = sub i32 31, %26, !dbg !1172
  %75 = shl i32 %73, %74, !dbg !1173
  %76 = sub i64 %25, 1, !dbg !1174
  %77 = getelementptr inbounds i32, i32* %2, i64 %76, !dbg !1175
  %78 = load i32, i32* %77, align 4, !dbg !1175
  %79 = lshr i32 %78, %26, !dbg !1176
  %80 = or i32 %75, %79, !dbg !1177
  %81 = and i32 %80, 2147483647, !dbg !1178
  call void @llvm.dbg.value(metadata i32 %81, metadata !1145, metadata !DIExpression()), !dbg !1095
  br label %82

82:                                               ; preds = %44, %30
  %.05 = phi i32 [ %32, %30 ], [ %54, %44 ], !dbg !1179
  %.03 = phi i32 [ %41, %30 ], [ %71, %44 ], !dbg !1179
  %.02 = phi i32 [ %43, %30 ], [ %81, %44 ], !dbg !1179
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1145, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1143, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1134, metadata !DIExpression()), !dbg !1095
  %83 = lshr i32 %.05, 1, !dbg !1180
  %84 = shl i32 %.05, 31, !dbg !1181
  %85 = or i32 %.03, %84, !dbg !1182
  %86 = call i32 @br_div(i32 %83, i32 %85, i32 %.02), !dbg !1183
  call void @llvm.dbg.value(metadata i32 %86, metadata !1184, metadata !DIExpression()), !dbg !1095
  %87 = call i32 @EQ.15(i32 %.05, i32 %.02), !dbg !1185
  %88 = call i32 @EQ.15(i32 %86, i32 0), !dbg !1186
  %89 = sub i32 %86, 1, !dbg !1187
  %90 = call i32 @MUX.16(i32 %88, i32 0, i32 %89), !dbg !1188
  %91 = call i32 @MUX.16(i32 %87, i32 2147483647, i32 %90), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %91, metadata !1190, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 0, metadata !1191, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 1, metadata !1192, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 1, metadata !1193, metadata !DIExpression()), !dbg !1095
  br label %92, !dbg !1194

92:                                               ; preds = %116, %82
  %.04 = phi i64 [ 1, %82 ], [ %117, %116 ], !dbg !1196
  %.01 = phi i32 [ 1, %82 ], [ %115, %116 ], !dbg !1095
  %.0 = phi i32 [ 0, %82 ], [ %110, %116 ], !dbg !1095
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1191, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1192, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1193, metadata !DIExpression()), !dbg !1095
  %93 = icmp ule i64 %.04, %25, !dbg !1197
  br i1 %93, label %94, label %118, !dbg !1199

94:                                               ; preds = %92
  %95 = getelementptr inbounds i32, i32* %2, i64 %.04, !dbg !1200
  %96 = load i32, i32* %95, align 4, !dbg !1200
  call void @llvm.dbg.value(metadata i32 %96, metadata !1202, metadata !DIExpression()), !dbg !1203
  %97 = zext i32 %96 to i64, !dbg !1204
  %98 = zext i32 %91 to i64, !dbg !1204
  %99 = mul i64 %97, %98, !dbg !1204
  %100 = zext i32 %.0 to i64, !dbg !1205
  %101 = add i64 %99, %100, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %101, metadata !1207, metadata !DIExpression()), !dbg !1203
  %102 = lshr i64 %101, 31, !dbg !1208
  %103 = trunc i64 %102 to i32, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %103, metadata !1191, metadata !DIExpression()), !dbg !1095
  %104 = trunc i64 %101 to i32, !dbg !1210
  %105 = and i32 %104, 2147483647, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %105, metadata !1212, metadata !DIExpression()), !dbg !1203
  %106 = getelementptr inbounds i32, i32* %0, i64 %.04, !dbg !1213
  %107 = load i32, i32* %106, align 4, !dbg !1213
  call void @llvm.dbg.value(metadata i32 %107, metadata !1214, metadata !DIExpression()), !dbg !1203
  %108 = sub i32 %107, %105, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %108, metadata !1216, metadata !DIExpression()), !dbg !1203
  %109 = lshr i32 %108, 31, !dbg !1217
  %110 = add i32 %103, %109, !dbg !1218
  call void @llvm.dbg.value(metadata i32 %110, metadata !1191, metadata !DIExpression()), !dbg !1095
  %111 = and i32 %108, 2147483647, !dbg !1219
  call void @llvm.dbg.value(metadata i32 %111, metadata !1216, metadata !DIExpression()), !dbg !1203
  %112 = getelementptr inbounds i32, i32* %0, i64 %.04, !dbg !1220
  store i32 %111, i32* %112, align 4, !dbg !1221
  %113 = call i32 @EQ.15(i32 %111, i32 %96), !dbg !1222
  %114 = call i32 @GT.17(i32 %111, i32 %96), !dbg !1223
  %115 = call i32 @MUX.16(i32 %113, i32 %.01, i32 %114), !dbg !1224
  call void @llvm.dbg.value(metadata i32 %115, metadata !1192, metadata !DIExpression()), !dbg !1095
  br label %116, !dbg !1225

116:                                              ; preds = %94
  %117 = add i64 %.04, 1, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %117, metadata !1193, metadata !DIExpression()), !dbg !1095
  br label %92, !dbg !1227, !llvm.loop !1228

118:                                              ; preds = %92
  %119 = call i32 @GT.17(i32 %.0, i32 %28), !dbg !1230
  call void @llvm.dbg.value(metadata i32 %119, metadata !1231, metadata !DIExpression()), !dbg !1095
  %120 = xor i32 %119, -1, !dbg !1232
  %121 = call i32 @GT.17(i32 %28, i32 %.0), !dbg !1233
  %122 = or i32 %.01, %121, !dbg !1234
  %123 = and i32 %120, %122, !dbg !1235
  call void @llvm.dbg.value(metadata i32 %123, metadata !1236, metadata !DIExpression()), !dbg !1095
  %124 = call i32 @br_i31_add(i32* %0, i32* %2, i32 %119), !dbg !1237
  %125 = call i32 @br_i31_sub(i32* %0, i32* %2, i32 %123), !dbg !1238
  br label %126, !dbg !1239

126:                                              ; preds = %118, %10, %7
  ret void, !dbg !1239
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_rem(i32 %0, i32 %1, i32 %2) #0 !dbg !1240 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1241, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %1, metadata !1243, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %2, metadata !1244, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1245, metadata !DIExpression()), !dbg !1246
  %5 = call i32 @br_divrem(i32 %0, i32 %1, i32 %2, i32* %4), !dbg !1247
  %6 = load i32, i32* %4, align 4, !dbg !1248
  ret i32 %6, !dbg !1249
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_div(i32 %0, i32 %1, i32 %2) #0 !dbg !1250 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1251, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i32 %1, metadata !1253, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i32 %2, metadata !1254, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1255, metadata !DIExpression()), !dbg !1256
  %5 = call i32 @br_divrem(i32 %0, i32 %1, i32 %2, i32* %4), !dbg !1257
  ret i32 %5, !dbg !1258
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.15(i32 %0, i32 %1) #0 !dbg !1259 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1260, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %1, metadata !1262, metadata !DIExpression()), !dbg !1261
  %3 = xor i32 %0, %1, !dbg !1263
  call void @llvm.dbg.value(metadata i32 %3, metadata !1264, metadata !DIExpression()), !dbg !1261
  %4 = sub i32 0, %3, !dbg !1265
  %5 = or i32 %3, %4, !dbg !1266
  %6 = lshr i32 %5, 31, !dbg !1267
  %7 = call i32 @NOT.18(i32 %6), !dbg !1268
  ret i32 %7, !dbg !1269
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.16(i32 %0, i32 %1, i32 %2) #0 !dbg !1270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1271, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i32 %1, metadata !1273, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata i32 %2, metadata !1274, metadata !DIExpression()), !dbg !1272
  %4 = sub i32 0, %0, !dbg !1275
  %5 = xor i32 %1, %2, !dbg !1276
  %6 = and i32 %4, %5, !dbg !1277
  %7 = xor i32 %2, %6, !dbg !1278
  ret i32 %7, !dbg !1279
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.17(i32 %0, i32 %1) #0 !dbg !1280 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i32 %1, metadata !1283, metadata !DIExpression()), !dbg !1282
  %3 = sub i32 %1, %0, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %3, metadata !1285, metadata !DIExpression()), !dbg !1282
  %4 = xor i32 %0, %1, !dbg !1286
  %5 = xor i32 %0, %3, !dbg !1287
  %6 = and i32 %4, %5, !dbg !1288
  %7 = xor i32 %3, %6, !dbg !1289
  %8 = lshr i32 %7, 31, !dbg !1290
  ret i32 %8, !dbg !1291
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.18(i32 %0) #0 !dbg !1292 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1293, metadata !DIExpression()), !dbg !1294
  %2 = xor i32 %0, 1, !dbg !1295
  ret i32 %2, !dbg !1296
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i31_ninv31(i32 %0) #0 !dbg !1297 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1298, metadata !DIExpression()), !dbg !1299
  %2 = sub i32 2, %0, !dbg !1300
  call void @llvm.dbg.value(metadata i32 %2, metadata !1301, metadata !DIExpression()), !dbg !1299
  %3 = mul i32 %2, %0, !dbg !1302
  %4 = sub i32 2, %3, !dbg !1303
  %5 = mul i32 %2, %4, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %5, metadata !1301, metadata !DIExpression()), !dbg !1299
  %6 = mul i32 %5, %0, !dbg !1305
  %7 = sub i32 2, %6, !dbg !1306
  %8 = mul i32 %5, %7, !dbg !1307
  call void @llvm.dbg.value(metadata i32 %8, metadata !1301, metadata !DIExpression()), !dbg !1299
  %9 = mul i32 %8, %0, !dbg !1308
  %10 = sub i32 2, %9, !dbg !1309
  %11 = mul i32 %8, %10, !dbg !1310
  call void @llvm.dbg.value(metadata i32 %11, metadata !1301, metadata !DIExpression()), !dbg !1299
  %12 = mul i32 %11, %0, !dbg !1311
  %13 = sub i32 2, %12, !dbg !1312
  %14 = mul i32 %11, %13, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %14, metadata !1301, metadata !DIExpression()), !dbg !1299
  %15 = and i32 %0, 1, !dbg !1314
  %16 = sub i32 0, %14, !dbg !1315
  %17 = call i32 @MUX.19(i32 %15, i32 %16, i32 0), !dbg !1316
  %18 = and i32 %17, 2147483647, !dbg !1317
  ret i32 %18, !dbg !1318
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.19(i32 %0, i32 %1, i32 %2) #0 !dbg !1319 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1320, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 %1, metadata !1322, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i32 %2, metadata !1323, metadata !DIExpression()), !dbg !1321
  %4 = sub i32 0, %0, !dbg !1324
  %5 = xor i32 %1, %2, !dbg !1325
  %6 = and i32 %4, %5, !dbg !1326
  %7 = xor i32 %2, %6, !dbg !1327
  ret i32 %7, !dbg !1328
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_reduce(i32* %0, i32* %1, i32* %2) #0 !dbg !1329 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1330, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32* %1, metadata !1332, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32* %2, metadata !1333, metadata !DIExpression()), !dbg !1331
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1334
  %5 = load i32, i32* %4, align 4, !dbg !1334
  call void @llvm.dbg.value(metadata i32 %5, metadata !1335, metadata !DIExpression()), !dbg !1331
  %6 = add i32 %5, 31, !dbg !1336
  %7 = lshr i32 %6, 5, !dbg !1337
  %8 = zext i32 %7 to i64, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %8, metadata !1339, metadata !DIExpression()), !dbg !1331
  %9 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1340
  store i32 %5, i32* %9, align 4, !dbg !1341
  %10 = icmp eq i32 %5, 0, !dbg !1342
  br i1 %10, label %11, label %12, !dbg !1344

11:                                               ; preds = %3
  br label %52, !dbg !1345

12:                                               ; preds = %3
  %13 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1347
  %14 = load i32, i32* %13, align 4, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %14, metadata !1348, metadata !DIExpression()), !dbg !1331
  %15 = add i32 %14, 31, !dbg !1349
  %16 = lshr i32 %15, 5, !dbg !1350
  %17 = zext i32 %16 to i64, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %17, metadata !1352, metadata !DIExpression()), !dbg !1331
  %18 = icmp ult i32 %14, %5, !dbg !1353
  br i1 %18, label %19, label %33, !dbg !1355

19:                                               ; preds = %12
  %20 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1356
  %21 = bitcast i32* %20 to i8*, !dbg !1358
  %22 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1359
  %23 = bitcast i32* %22 to i8*, !dbg !1358
  %24 = mul i64 %17, 4, !dbg !1360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %23, i64 %24, i1 false), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %17, metadata !1361, metadata !DIExpression()), !dbg !1331
  br label %25, !dbg !1362

25:                                               ; preds = %30, %19
  %.0 = phi i64 [ %17, %19 ], [ %31, %30 ], !dbg !1364
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1361, metadata !DIExpression()), !dbg !1331
  %26 = icmp ult i64 %.0, %8, !dbg !1365
  br i1 %26, label %27, label %32, !dbg !1367

27:                                               ; preds = %25
  %28 = add i64 %.0, 1, !dbg !1368
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !1370
  store i32 0, i32* %29, align 4, !dbg !1371
  br label %30, !dbg !1372

30:                                               ; preds = %27
  %31 = add i64 %.0, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %31, metadata !1361, metadata !DIExpression()), !dbg !1331
  br label %25, !dbg !1374, !llvm.loop !1375

32:                                               ; preds = %25
  br label %52, !dbg !1377

33:                                               ; preds = %12
  %34 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1378
  %35 = bitcast i32* %34 to i8*, !dbg !1379
  %36 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1380
  %37 = sub i64 %17, %8, !dbg !1381
  %38 = getelementptr inbounds i32, i32* %36, i64 %37, !dbg !1382
  %39 = bitcast i32* %38 to i8*, !dbg !1379
  %40 = sub i64 %8, 1, !dbg !1383
  %41 = mul i64 %40, 4, !dbg !1384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %39, i64 %41, i1 false), !dbg !1379
  %42 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !1385
  store i32 0, i32* %42, align 4, !dbg !1386
  %43 = add i64 1, %17, !dbg !1387
  %44 = sub i64 %43, %8, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %44, metadata !1361, metadata !DIExpression()), !dbg !1331
  br label %45, !dbg !1390

45:                                               ; preds = %50, %33
  %.1 = phi i64 [ %44, %33 ], [ %51, %50 ], !dbg !1391
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1361, metadata !DIExpression()), !dbg !1331
  %46 = icmp ugt i64 %.1, 0, !dbg !1392
  br i1 %46, label %47, label %52, !dbg !1394

47:                                               ; preds = %45
  %48 = getelementptr inbounds i32, i32* %1, i64 %.1, !dbg !1395
  %49 = load i32, i32* %48, align 4, !dbg !1395
  call void @br_i31_muladd_small(i32* %0, i32 %49, i32* %2), !dbg !1397
  br label %50, !dbg !1398

50:                                               ; preds = %47
  %51 = add i64 %.1, -1, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %51, metadata !1361, metadata !DIExpression()), !dbg !1331
  br label %45, !dbg !1400, !llvm.loop !1401

52:                                               ; preds = %45, %32, %11
  ret void, !dbg !1403
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_rshift(i32* %0, i32 %1) #0 !dbg !1404 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1407, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %1, metadata !1409, metadata !DIExpression()), !dbg !1408
  %3 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1410
  %4 = load i32, i32* %3, align 4, !dbg !1410
  %5 = add i32 %4, 31, !dbg !1411
  %6 = lshr i32 %5, 5, !dbg !1412
  %7 = zext i32 %6 to i64, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %7, metadata !1414, metadata !DIExpression()), !dbg !1408
  %8 = icmp eq i64 %7, 0, !dbg !1415
  br i1 %8, label %9, label %10, !dbg !1417

9:                                                ; preds = %2
  br label %30, !dbg !1418

10:                                               ; preds = %2
  %11 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1420
  %12 = load i32, i32* %11, align 4, !dbg !1420
  %13 = lshr i32 %12, %1, !dbg !1421
  call void @llvm.dbg.value(metadata i32 %13, metadata !1422, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 2, metadata !1423, metadata !DIExpression()), !dbg !1408
  br label %14, !dbg !1424

14:                                               ; preds = %26, %10
  %.01 = phi i64 [ 2, %10 ], [ %27, %26 ], !dbg !1426
  %.0 = phi i32 [ %13, %10 ], [ %25, %26 ], !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1422, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1423, metadata !DIExpression()), !dbg !1408
  %15 = icmp ule i64 %.01, %7, !dbg !1427
  br i1 %15, label %16, label %28, !dbg !1429

16:                                               ; preds = %14
  %17 = getelementptr inbounds i32, i32* %0, i64 %.01, !dbg !1430
  %18 = load i32, i32* %17, align 4, !dbg !1430
  call void @llvm.dbg.value(metadata i32 %18, metadata !1432, metadata !DIExpression()), !dbg !1433
  %19 = sub nsw i32 31, %1, !dbg !1434
  %20 = shl i32 %18, %19, !dbg !1435
  %21 = or i32 %20, %.0, !dbg !1436
  %22 = and i32 %21, 2147483647, !dbg !1437
  %23 = sub i64 %.01, 1, !dbg !1438
  %24 = getelementptr inbounds i32, i32* %0, i64 %23, !dbg !1439
  store i32 %22, i32* %24, align 4, !dbg !1440
  %25 = lshr i32 %18, %1, !dbg !1441
  call void @llvm.dbg.value(metadata i32 %25, metadata !1422, metadata !DIExpression()), !dbg !1408
  br label %26, !dbg !1442

26:                                               ; preds = %16
  %27 = add i64 %.01, 1, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %27, metadata !1423, metadata !DIExpression()), !dbg !1408
  br label %14, !dbg !1444, !llvm.loop !1445

28:                                               ; preds = %14
  %29 = getelementptr inbounds i32, i32* %0, i64 %7, !dbg !1447
  store i32 %.0, i32* %29, align 4, !dbg !1448
  br label %30, !dbg !1449

30:                                               ; preds = %28, %9
  ret void, !dbg !1449
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i31_sub(i32* %0, i32* %1, i32 %2) #0 !dbg !1450 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1451, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32* %1, metadata !1453, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 %2, metadata !1454, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 0, metadata !1455, metadata !DIExpression()), !dbg !1452
  %4 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1456
  %5 = load i32, i32* %4, align 4, !dbg !1456
  %6 = add i32 %5, 63, !dbg !1457
  %7 = lshr i32 %6, 5, !dbg !1458
  %8 = zext i32 %7 to i64, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %8, metadata !1460, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 1, metadata !1461, metadata !DIExpression()), !dbg !1452
  br label %9, !dbg !1462

9:                                                ; preds = %22, %3
  %.01 = phi i32 [ 0, %3 ], [ %18, %22 ], !dbg !1452
  %.0 = phi i64 [ 1, %3 ], [ %23, %22 ], !dbg !1464
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1461, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1455, metadata !DIExpression()), !dbg !1452
  %10 = icmp ult i64 %.0, %8, !dbg !1465
  br i1 %10, label %11, label %24, !dbg !1467

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !1468
  %13 = load i32, i32* %12, align 4, !dbg !1468
  call void @llvm.dbg.value(metadata i32 %13, metadata !1470, metadata !DIExpression()), !dbg !1471
  %14 = getelementptr inbounds i32, i32* %1, i64 %.0, !dbg !1472
  %15 = load i32, i32* %14, align 4, !dbg !1472
  call void @llvm.dbg.value(metadata i32 %15, metadata !1473, metadata !DIExpression()), !dbg !1471
  %16 = sub i32 %13, %15, !dbg !1474
  %17 = sub i32 %16, %.01, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %17, metadata !1476, metadata !DIExpression()), !dbg !1471
  %18 = lshr i32 %17, 31, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %18, metadata !1455, metadata !DIExpression()), !dbg !1452
  %19 = and i32 %17, 2147483647, !dbg !1478
  %20 = call i32 @MUX.24(i32 %2, i32 %19, i32 %13), !dbg !1479
  %21 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !1480
  store i32 %20, i32* %21, align 4, !dbg !1481
  br label %22, !dbg !1482

22:                                               ; preds = %11
  %23 = add i64 %.0, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %23, metadata !1461, metadata !DIExpression()), !dbg !1452
  br label %9, !dbg !1484, !llvm.loop !1485

24:                                               ; preds = %9
  ret i32 %.01, !dbg !1487
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.24(i32 %0, i32 %1, i32 %2) #0 !dbg !1488 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1489, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 %1, metadata !1491, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 %2, metadata !1492, metadata !DIExpression()), !dbg !1490
  %4 = sub i32 0, %0, !dbg !1493
  %5 = xor i32 %1, %2, !dbg !1494
  %6 = and i32 %4, %5, !dbg !1495
  %7 = xor i32 %2, %6, !dbg !1496
  ret i32 %7, !dbg !1497
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_to_monty(i32* %0, i32* %1) #0 !dbg !1498 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1501, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32* %1, metadata !1503, metadata !DIExpression()), !dbg !1502
  %3 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1504
  %4 = load i32, i32* %3, align 4, !dbg !1504
  %5 = add i32 %4, 31, !dbg !1506
  %6 = lshr i32 %5, 5, !dbg !1507
  call void @llvm.dbg.value(metadata i32 %6, metadata !1508, metadata !DIExpression()), !dbg !1502
  br label %7, !dbg !1509

7:                                                ; preds = %10, %2
  %.0 = phi i32 [ %6, %2 ], [ %11, %10 ], !dbg !1510
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1508, metadata !DIExpression()), !dbg !1502
  %8 = icmp ugt i32 %.0, 0, !dbg !1511
  br i1 %8, label %9, label %12, !dbg !1513

9:                                                ; preds = %7
  call void @br_i31_muladd_small(i32* %0, i32 0, i32* %1), !dbg !1514
  br label %10, !dbg !1516

10:                                               ; preds = %9
  %11 = add i32 %.0, -1, !dbg !1517
  call void @llvm.dbg.value(metadata i32 %11, metadata !1508, metadata !DIExpression()), !dbg !1502
  br label %7, !dbg !1518, !llvm.loop !1519

12:                                               ; preds = %7
  ret void, !dbg !1521
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_divrem(i32 %0, i32 %1, i32 %2, i32* %3) #0 !dbg !1522 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1525, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %1, metadata !1527, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %2, metadata !1528, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32* %3, metadata !1529, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 0, metadata !1530, metadata !DIExpression()), !dbg !1526
  %5 = call i32 @EQ.29(i32 %0, i32 %2), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %5, metadata !1532, metadata !DIExpression()), !dbg !1526
  %6 = call i32 @MUX.30(i32 %5, i32 0, i32 %0), !dbg !1533
  call void @llvm.dbg.value(metadata i32 %6, metadata !1525, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 31, metadata !1534, metadata !DIExpression()), !dbg !1526
  br label %7, !dbg !1535

7:                                                ; preds = %26, %4
  %.03 = phi i32 [ 0, %4 ], [ %25, %26 ], !dbg !1526
  %.02 = phi i32 [ 31, %4 ], [ %27, %26 ], !dbg !1537
  %.01 = phi i32 [ %1, %4 ], [ %23, %26 ]
  %.0 = phi i32 [ %6, %4 ], [ %22, %26 ], !dbg !1526
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1525, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1527, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1534, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1530, metadata !DIExpression()), !dbg !1526
  %8 = icmp sgt i32 %.02, 0, !dbg !1538
  br i1 %8, label %9, label %28, !dbg !1540

9:                                                ; preds = %7
  %10 = sub nsw i32 32, %.02, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %10, metadata !1543, metadata !DIExpression()), !dbg !1544
  %11 = shl i32 %.0, %10, !dbg !1545
  %12 = lshr i32 %.01, %.02, !dbg !1546
  %13 = or i32 %11, %12, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %13, metadata !1548, metadata !DIExpression()), !dbg !1544
  %14 = call i32 @GT.31(i32 %2, i32 %13), !dbg !1549
  %15 = call i32 @NOT.32(i32 %14), !dbg !1549
  %16 = lshr i32 %.0, %.02, !dbg !1550
  %17 = or i32 %15, %16, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %17, metadata !1552, metadata !DIExpression()), !dbg !1544
  %18 = sub i32 %13, %2, !dbg !1553
  %19 = lshr i32 %18, %10, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %19, metadata !1555, metadata !DIExpression()), !dbg !1544
  %20 = shl i32 %2, %.02, !dbg !1556
  %21 = sub i32 %.01, %20, !dbg !1557
  call void @llvm.dbg.value(metadata i32 %21, metadata !1558, metadata !DIExpression()), !dbg !1544
  %22 = call i32 @MUX.30(i32 %17, i32 %19, i32 %.0), !dbg !1559
  call void @llvm.dbg.value(metadata i32 %22, metadata !1525, metadata !DIExpression()), !dbg !1526
  %23 = call i32 @MUX.30(i32 %17, i32 %21, i32 %.01), !dbg !1560
  call void @llvm.dbg.value(metadata i32 %23, metadata !1527, metadata !DIExpression()), !dbg !1526
  %24 = shl i32 %17, %.02, !dbg !1561
  %25 = or i32 %.03, %24, !dbg !1562
  call void @llvm.dbg.value(metadata i32 %25, metadata !1530, metadata !DIExpression()), !dbg !1526
  br label %26, !dbg !1563

26:                                               ; preds = %9
  %27 = add nsw i32 %.02, -1, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %27, metadata !1534, metadata !DIExpression()), !dbg !1526
  br label %7, !dbg !1565, !llvm.loop !1566

28:                                               ; preds = %7
  %29 = call i32 @GT.31(i32 %2, i32 %.01), !dbg !1568
  %30 = call i32 @NOT.32(i32 %29), !dbg !1568
  %31 = or i32 %30, %.0, !dbg !1569
  call void @llvm.dbg.value(metadata i32 %31, metadata !1570, metadata !DIExpression()), !dbg !1526
  %32 = or i32 %.03, %31, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %32, metadata !1530, metadata !DIExpression()), !dbg !1526
  %33 = sub i32 %.01, %2, !dbg !1572
  %34 = call i32 @MUX.30(i32 %31, i32 %33, i32 %.01), !dbg !1573
  store i32 %34, i32* %3, align 4, !dbg !1574
  ret i32 %32, !dbg !1575
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.29(i32 %0, i32 %1) #0 !dbg !1576 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1577, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32 %1, metadata !1579, metadata !DIExpression()), !dbg !1578
  %3 = xor i32 %0, %1, !dbg !1580
  call void @llvm.dbg.value(metadata i32 %3, metadata !1581, metadata !DIExpression()), !dbg !1578
  %4 = sub i32 0, %3, !dbg !1582
  %5 = or i32 %3, %4, !dbg !1583
  %6 = lshr i32 %5, 31, !dbg !1584
  %7 = call i32 @NOT.32(i32 %6), !dbg !1585
  ret i32 %7, !dbg !1586
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.30(i32 %0, i32 %1, i32 %2) #0 !dbg !1587 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1588, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %1, metadata !1590, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %2, metadata !1591, metadata !DIExpression()), !dbg !1589
  %4 = sub i32 0, %0, !dbg !1592
  %5 = xor i32 %1, %2, !dbg !1593
  %6 = and i32 %4, %5, !dbg !1594
  %7 = xor i32 %2, %6, !dbg !1595
  ret i32 %7, !dbg !1596
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.31(i32 %0, i32 %1) #0 !dbg !1597 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1598, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 %1, metadata !1600, metadata !DIExpression()), !dbg !1599
  %3 = sub i32 %1, %0, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %3, metadata !1602, metadata !DIExpression()), !dbg !1599
  %4 = xor i32 %0, %1, !dbg !1603
  %5 = xor i32 %0, %3, !dbg !1604
  %6 = and i32 %4, %5, !dbg !1605
  %7 = xor i32 %3, %6, !dbg !1606
  %8 = lshr i32 %7, 31, !dbg !1607
  ret i32 %8, !dbg !1608
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.32(i32 %0) #0 !dbg !1609 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1610, metadata !DIExpression()), !dbg !1611
  %2 = xor i32 %0, 1, !dbg !1612
  ret i32 %2, !dbg !1613
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i31_pkcs1_sign(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4) #0 !dbg !1614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1634, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8* %1, metadata !1636, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %2, metadata !1637, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %3, metadata !1638, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8* %4, metadata !1639, metadata !DIExpression()), !dbg !1635
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 0, !dbg !1640
  %7 = load i32, i32* %6, align 8, !dbg !1640
  %8 = call i32 @br_rsa_pkcs1_sig_pad(i8* %0, i8* %1, i64 %2, i32 %7, i8* %4), !dbg !1642
  %9 = icmp ne i32 %8, 0, !dbg !1642
  br i1 %9, label %11, label %10, !dbg !1643

10:                                               ; preds = %5
  br label %13, !dbg !1644

11:                                               ; preds = %5
  %12 = call i32 @br_rsa_i31_private(i8* %4, %struct.br_rsa_private_key* %3), !dbg !1646
  br label %13, !dbg !1647

13:                                               ; preds = %11, %10
  %.0 = phi i32 [ %12, %11 ], [ 0, %10 ], !dbg !1635
  ret i32 %.0, !dbg !1648
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i31_private(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !1649 {
  %3 = alloca [561 x i32], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1668, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !1670, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.declare(metadata [561 x i32]* %3, metadata !1671, metadata !DIExpression()), !dbg !1675
  %4 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !1676
  %5 = load i8*, i8** %4, align 8, !dbg !1676
  call void @llvm.dbg.value(metadata i8* %5, metadata !1677, metadata !DIExpression()), !dbg !1669
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !1678
  %7 = load i64, i64* %6, align 8, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %7, metadata !1679, metadata !DIExpression()), !dbg !1669
  br label %8, !dbg !1680

8:                                                ; preds = %16, %2
  %.04 = phi i64 [ %7, %2 ], [ %18, %16 ], !dbg !1669
  %.02 = phi i8* [ %5, %2 ], [ %17, %16 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8* %.02, metadata !1677, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1679, metadata !DIExpression()), !dbg !1669
  %9 = icmp ugt i64 %.04, 0, !dbg !1681
  br i1 %9, label %10, label %14, !dbg !1682

10:                                               ; preds = %8
  %11 = load i8, i8* %.02, align 1, !dbg !1683
  %12 = zext i8 %11 to i32, !dbg !1683
  %13 = icmp eq i32 %12, 0, !dbg !1684
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i1 [ false, %8 ], [ %13, %10 ], !dbg !1669
  br i1 %15, label %16, label %19, !dbg !1680

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !1685
  call void @llvm.dbg.value(metadata i8* %17, metadata !1677, metadata !DIExpression()), !dbg !1669
  %18 = add i64 %.04, -1, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %18, metadata !1679, metadata !DIExpression()), !dbg !1669
  br label %8, !dbg !1680, !llvm.loop !1688

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !1690
  %21 = load i8*, i8** %20, align 8, !dbg !1690
  call void @llvm.dbg.value(metadata i8* %21, metadata !1691, metadata !DIExpression()), !dbg !1669
  %22 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !1692
  %23 = load i64, i64* %22, align 8, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %23, metadata !1693, metadata !DIExpression()), !dbg !1669
  br label %24, !dbg !1694

24:                                               ; preds = %32, %19
  %.05 = phi i64 [ %23, %19 ], [ %34, %32 ], !dbg !1669
  %.03 = phi i8* [ %21, %19 ], [ %33, %32 ], !dbg !1669
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1691, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1693, metadata !DIExpression()), !dbg !1669
  %25 = icmp ugt i64 %.05, 0, !dbg !1695
  br i1 %25, label %26, label %30, !dbg !1696

26:                                               ; preds = %24
  %27 = load i8, i8* %.03, align 1, !dbg !1697
  %28 = zext i8 %27 to i32, !dbg !1697
  %29 = icmp eq i32 %28, 0, !dbg !1698
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i1 [ false, %24 ], [ %29, %26 ], !dbg !1669
  br i1 %31, label %32, label %35, !dbg !1694

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, i8* %.03, i32 1, !dbg !1699
  call void @llvm.dbg.value(metadata i8* %33, metadata !1691, metadata !DIExpression()), !dbg !1669
  %34 = add i64 %.05, -1, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %34, metadata !1693, metadata !DIExpression()), !dbg !1669
  br label %24, !dbg !1694, !llvm.loop !1702

35:                                               ; preds = %30
  %36 = icmp ugt i64 %.04, %.05, !dbg !1704
  br i1 %36, label %37, label %38, !dbg !1705

37:                                               ; preds = %35
  br label %39, !dbg !1705

38:                                               ; preds = %35
  br label %39, !dbg !1705

39:                                               ; preds = %38, %37
  %40 = phi i64 [ %.04, %37 ], [ %.05, %38 ], !dbg !1705
  %41 = shl i64 %40, 3, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %41, metadata !1707, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 1, metadata !1708, metadata !DIExpression()), !dbg !1669
  br label %42, !dbg !1709

42:                                               ; preds = %44, %39
  %.07 = phi i64 [ %41, %39 ], [ %45, %44 ], !dbg !1669
  %.06 = phi i64 [ 1, %39 ], [ %46, %44 ], !dbg !1669
  call void @llvm.dbg.value(metadata i64 %.06, metadata !1708, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %.07, metadata !1707, metadata !DIExpression()), !dbg !1669
  %43 = icmp sgt i64 %.07, 0, !dbg !1710
  br i1 %43, label %44, label %47, !dbg !1709

44:                                               ; preds = %42
  %45 = sub nsw i64 %.07, 31, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %45, metadata !1707, metadata !DIExpression()), !dbg !1669
  %46 = add i64 %.06, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %46, metadata !1708, metadata !DIExpression()), !dbg !1669
  br label %42, !dbg !1709, !llvm.loop !1714

47:                                               ; preds = %42
  %48 = and i64 %.06, 1, !dbg !1716
  %49 = add i64 %.06, %48, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %49, metadata !1708, metadata !DIExpression()), !dbg !1669
  %50 = mul i64 6, %49, !dbg !1718
  %51 = icmp ugt i64 %50, 560, !dbg !1720
  br i1 %51, label %52, label %53, !dbg !1721

52:                                               ; preds = %47
  br label %130, !dbg !1722

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !1724
  %55 = load i32, i32* %54, align 8, !dbg !1724
  %56 = add i32 %55, 7, !dbg !1725
  %57 = lshr i32 %56, 3, !dbg !1726
  %58 = zext i32 %57 to i64, !dbg !1727
  call void @llvm.dbg.value(metadata i64 %58, metadata !1728, metadata !DIExpression()), !dbg !1669
  %59 = getelementptr inbounds [561 x i32], [561 x i32]* %3, i64 0, i64 0, !dbg !1729
  call void @llvm.dbg.value(metadata i32* %59, metadata !1730, metadata !DIExpression()), !dbg !1669
  call void @br_i31_decode(i32* %59, i8* %.03, i64 %.05), !dbg !1731
  %60 = getelementptr inbounds i32, i32* %59, i64 %49, !dbg !1732
  call void @llvm.dbg.value(metadata i32* %60, metadata !1733, metadata !DIExpression()), !dbg !1669
  call void @br_i31_decode(i32* %60, i8* %.02, i64 %.04), !dbg !1734
  %61 = mul i64 2, %49, !dbg !1735
  %62 = getelementptr inbounds i32, i32* %59, i64 %61, !dbg !1736
  call void @llvm.dbg.value(metadata i32* %62, metadata !1737, metadata !DIExpression()), !dbg !1669
  %63 = getelementptr inbounds i32, i32* %59, i64 0, !dbg !1738
  %64 = load i32, i32* %63, align 4, !dbg !1738
  call void @br_i31_zero.35(i32* %62, i32 %64), !dbg !1739
  call void @br_i31_mulacc(i32* %62, i32* %59, i32* %60), !dbg !1740
  %65 = mul i64 4, %49, !dbg !1741
  %66 = getelementptr inbounds i32, i32* %59, i64 %65, !dbg !1742
  call void @llvm.dbg.value(metadata i32* %66, metadata !1743, metadata !DIExpression()), !dbg !1669
  %67 = bitcast i32* %66 to i8*, !dbg !1744
  call void @br_i31_encode(i8* %67, i64 %58, i32* %62), !dbg !1745
  call void @llvm.dbg.value(metadata i64 %58, metadata !1746, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 0, metadata !1747, metadata !DIExpression()), !dbg !1669
  br label %68, !dbg !1748

68:                                               ; preds = %70, %53
  %.08 = phi i64 [ %58, %53 ], [ %71, %70 ], !dbg !1669
  %.01 = phi i32 [ 0, %53 ], [ %82, %70 ], !dbg !1669
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1747, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %.08, metadata !1746, metadata !DIExpression()), !dbg !1669
  %69 = icmp ugt i64 %.08, 0, !dbg !1749
  br i1 %69, label %70, label %83, !dbg !1748

70:                                               ; preds = %68
  %71 = add i64 %.08, -1, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %71, metadata !1746, metadata !DIExpression()), !dbg !1669
  %72 = bitcast i32* %66 to i8*, !dbg !1752
  %73 = getelementptr inbounds i8, i8* %72, i64 %71, !dbg !1752
  %74 = load i8, i8* %73, align 1, !dbg !1752
  %75 = zext i8 %74 to i32, !dbg !1752
  call void @llvm.dbg.value(metadata i32 %75, metadata !1753, metadata !DIExpression()), !dbg !1754
  %76 = getelementptr inbounds i8, i8* %0, i64 %71, !dbg !1755
  %77 = load i8, i8* %76, align 1, !dbg !1755
  %78 = zext i8 %77 to i32, !dbg !1755
  call void @llvm.dbg.value(metadata i32 %78, metadata !1756, metadata !DIExpression()), !dbg !1754
  %79 = add i32 %75, %.01, !dbg !1757
  %80 = sub i32 %78, %79, !dbg !1758
  %81 = lshr i32 %80, 8, !dbg !1759
  %82 = and i32 %81, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %82, metadata !1747, metadata !DIExpression()), !dbg !1669
  br label %68, !dbg !1748, !llvm.loop !1761

83:                                               ; preds = %68
  %84 = mul i64 2, %49, !dbg !1763
  %85 = getelementptr inbounds i32, i32* %59, i64 %84, !dbg !1764
  call void @llvm.dbg.value(metadata i32* %85, metadata !1765, metadata !DIExpression()), !dbg !1669
  %86 = bitcast i32* %85 to i8*, !dbg !1766
  %87 = bitcast i32* %60 to i8*, !dbg !1766
  %88 = mul i64 %49, 4, !dbg !1767
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 %88, i1 false), !dbg !1766
  %89 = getelementptr inbounds i32, i32* %59, i64 1, !dbg !1768
  %90 = load i32, i32* %89, align 4, !dbg !1768
  %91 = call i32 @br_i31_ninv31(i32 %90), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %91, metadata !1770, metadata !DIExpression()), !dbg !1669
  %92 = getelementptr inbounds i32, i32* %59, i64 %49, !dbg !1771
  call void @llvm.dbg.value(metadata i32* %92, metadata !1772, metadata !DIExpression()), !dbg !1669
  call void @br_i31_decode_reduce(i32* %92, i8* %0, i64 %58, i32* %59), !dbg !1773
  %93 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !1774
  %94 = load i8*, i8** %93, align 8, !dbg !1774
  %95 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !1775
  %96 = load i64, i64* %95, align 8, !dbg !1775
  %97 = mul i64 3, %49, !dbg !1776
  %98 = getelementptr inbounds i32, i32* %59, i64 %97, !dbg !1777
  %99 = mul i64 3, %49, !dbg !1778
  %100 = sub i64 560, %99, !dbg !1779
  %101 = call i32 @br_i31_modpow_opt(i32* %92, i8* %94, i64 %96, i32* %59, i32 %91, i32* %98, i64 %100), !dbg !1780
  %102 = and i32 %.01, %101, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %102, metadata !1747, metadata !DIExpression()), !dbg !1669
  %103 = getelementptr inbounds i32, i32* %85, i64 1, !dbg !1782
  %104 = load i32, i32* %103, align 4, !dbg !1782
  %105 = call i32 @br_i31_ninv31(i32 %104), !dbg !1783
  call void @llvm.dbg.value(metadata i32 %105, metadata !1784, metadata !DIExpression()), !dbg !1669
  %106 = mul i64 3, %49, !dbg !1785
  %107 = getelementptr inbounds i32, i32* %59, i64 %106, !dbg !1786
  call void @llvm.dbg.value(metadata i32* %107, metadata !1787, metadata !DIExpression()), !dbg !1669
  call void @br_i31_decode_reduce(i32* %107, i8* %0, i64 %58, i32* %85), !dbg !1788
  %108 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !1789
  %109 = load i8*, i8** %108, align 8, !dbg !1789
  %110 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !1790
  %111 = load i64, i64* %110, align 8, !dbg !1790
  %112 = mul i64 4, %49, !dbg !1791
  %113 = getelementptr inbounds i32, i32* %59, i64 %112, !dbg !1792
  %114 = mul i64 4, %49, !dbg !1793
  %115 = sub i64 560, %114, !dbg !1794
  %116 = call i32 @br_i31_modpow_opt(i32* %107, i8* %109, i64 %111, i32* %85, i32 %105, i32* %113, i64 %115), !dbg !1795
  %117 = and i32 %102, %116, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %117, metadata !1747, metadata !DIExpression()), !dbg !1669
  %118 = mul i64 4, %49, !dbg !1797
  %119 = getelementptr inbounds i32, i32* %59, i64 %118, !dbg !1798
  call void @llvm.dbg.value(metadata i32* %119, metadata !1733, metadata !DIExpression()), !dbg !1669
  %120 = mul i64 5, %49, !dbg !1799
  %121 = getelementptr inbounds i32, i32* %59, i64 %120, !dbg !1800
  call void @llvm.dbg.value(metadata i32* %121, metadata !1737, metadata !DIExpression()), !dbg !1669
  call void @br_i31_reduce(i32* %121, i32* %92, i32* %85), !dbg !1801
  %122 = call i32 @br_i31_sub(i32* %107, i32* %121, i32 1), !dbg !1802
  %123 = call i32 @br_i31_add(i32* %107, i32* %85, i32 %122), !dbg !1803
  call void @br_i31_to_monty(i32* %107, i32* %85), !dbg !1804
  %124 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !1805
  %125 = load i8*, i8** %124, align 8, !dbg !1805
  %126 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !1806
  %127 = load i64, i64* %126, align 8, !dbg !1806
  call void @br_i31_decode_reduce(i32* %119, i8* %125, i64 %127, i32* %85), !dbg !1807
  call void @br_i31_montymul(i32* %121, i32* %107, i32* %119, i32* %85, i32 %105), !dbg !1808
  call void @llvm.dbg.value(metadata i32* %92, metadata !1743, metadata !DIExpression()), !dbg !1669
  call void @br_i31_mulacc(i32* %92, i32* %59, i32* %121), !dbg !1809
  call void @br_i31_encode(i8* %0, i64 %58, i32* %92), !dbg !1810
  %128 = and i32 %105, %91, !dbg !1811
  %129 = and i32 %128, %117, !dbg !1812
  br label %130, !dbg !1813

130:                                              ; preds = %83, %52
  %.0 = phi i32 [ 0, %52 ], [ %129, %83 ], !dbg !1669
  ret i32 %.0, !dbg !1814
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i31_zero.35(i32* %0, i32 %1) #0 !dbg !1815 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1816, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %1, metadata !1818, metadata !DIExpression()), !dbg !1817
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !1819
  call void @llvm.dbg.value(metadata i32* %3, metadata !1816, metadata !DIExpression()), !dbg !1817
  store i32 %1, i32* %0, align 4, !dbg !1820
  %4 = bitcast i32* %3 to i8*, !dbg !1821
  %5 = add i32 %1, 31, !dbg !1822
  %6 = lshr i32 %5, 5, !dbg !1823
  %7 = zext i32 %6 to i64, !dbg !1824
  %8 = mul i64 %7, 4, !dbg !1825
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !1821
  ret void, !dbg !1826
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_pkcs1_sig_pad(i8* %0, i8* %1, i64 %2, i32 %3, i8* %4) #0 !dbg !1827 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1830, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8* %1, metadata !1832, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i64 %2, metadata !1833, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i32 %3, metadata !1834, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8* %4, metadata !1835, metadata !DIExpression()), !dbg !1831
  %6 = add i32 %3, 7, !dbg !1836
  %7 = lshr i32 %6, 3, !dbg !1837
  %8 = zext i32 %7 to i64, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %8, metadata !1839, metadata !DIExpression()), !dbg !1831
  %9 = icmp eq i8* %0, null, !dbg !1840
  br i1 %9, label %10, label %22, !dbg !1842

10:                                               ; preds = %5
  %11 = add i64 %2, 11, !dbg !1843
  %12 = icmp ult i64 %8, %11, !dbg !1846
  br i1 %12, label %13, label %14, !dbg !1847

13:                                               ; preds = %10
  br label %70, !dbg !1848

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !1850
  store i8 0, i8* %15, align 1, !dbg !1851
  %16 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1852
  store i8 1, i8* %16, align 1, !dbg !1853
  %17 = sub i64 %8, %2, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %17, metadata !1855, metadata !DIExpression()), !dbg !1831
  %18 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !1856
  %19 = sub i64 %17, 3, !dbg !1857
  call void @llvm.memset.p0i8.i64(i8* align 1 %18, i8 -1, i64 %19, i1 false), !dbg !1858
  %20 = sub i64 %17, 1, !dbg !1859
  %21 = getelementptr inbounds i8, i8* %4, i64 %20, !dbg !1860
  store i8 0, i8* %21, align 1, !dbg !1861
  br label %68, !dbg !1862

22:                                               ; preds = %5
  %23 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1863
  %24 = load i8, i8* %23, align 1, !dbg !1863
  %25 = zext i8 %24 to i64, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %25, metadata !1865, metadata !DIExpression()), !dbg !1831
  %26 = add i64 %25, %2, !dbg !1866
  %27 = add i64 %26, 21, !dbg !1868
  %28 = icmp ult i64 %8, %27, !dbg !1869
  br i1 %28, label %29, label %30, !dbg !1870

29:                                               ; preds = %22
  br label %70, !dbg !1871

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !1873
  store i8 0, i8* %31, align 1, !dbg !1874
  %32 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1875
  store i8 1, i8* %32, align 1, !dbg !1876
  %33 = sub i64 %8, %25, !dbg !1877
  %34 = sub i64 %33, %2, !dbg !1878
  %35 = sub i64 %34, 11, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %35, metadata !1855, metadata !DIExpression()), !dbg !1831
  %36 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !1880
  %37 = sub i64 %35, 2, !dbg !1881
  call void @llvm.memset.p0i8.i64(i8* align 1 %36, i8 -1, i64 %37, i1 false), !dbg !1882
  %38 = getelementptr inbounds i8, i8* %4, i64 %35, !dbg !1883
  store i8 0, i8* %38, align 1, !dbg !1884
  %39 = add i64 %35, 1, !dbg !1885
  %40 = getelementptr inbounds i8, i8* %4, i64 %39, !dbg !1886
  store i8 48, i8* %40, align 1, !dbg !1887
  %41 = add i64 %25, %2, !dbg !1888
  %42 = add i64 %41, 8, !dbg !1889
  %43 = trunc i64 %42 to i8, !dbg !1890
  %44 = add i64 %35, 2, !dbg !1891
  %45 = getelementptr inbounds i8, i8* %4, i64 %44, !dbg !1892
  store i8 %43, i8* %45, align 1, !dbg !1893
  %46 = add i64 %35, 3, !dbg !1894
  %47 = getelementptr inbounds i8, i8* %4, i64 %46, !dbg !1895
  store i8 48, i8* %47, align 1, !dbg !1896
  %48 = add i64 %25, 4, !dbg !1897
  %49 = trunc i64 %48 to i8, !dbg !1898
  %50 = add i64 %35, 4, !dbg !1899
  %51 = getelementptr inbounds i8, i8* %4, i64 %50, !dbg !1900
  store i8 %49, i8* %51, align 1, !dbg !1901
  %52 = add i64 %35, 5, !dbg !1902
  %53 = getelementptr inbounds i8, i8* %4, i64 %52, !dbg !1903
  store i8 6, i8* %53, align 1, !dbg !1904
  %54 = getelementptr inbounds i8, i8* %4, i64 %35, !dbg !1905
  %55 = getelementptr inbounds i8, i8* %54, i64 6, !dbg !1906
  %56 = add i64 %25, 1, !dbg !1907
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %55, i8* align 1 %0, i64 %56, i1 false), !dbg !1908
  %57 = add i64 %25, 7, !dbg !1909
  %58 = add i64 %35, %57, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %58, metadata !1855, metadata !DIExpression()), !dbg !1831
  %59 = add i64 %58, 1, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %59, metadata !1855, metadata !DIExpression()), !dbg !1831
  %60 = getelementptr inbounds i8, i8* %4, i64 %58, !dbg !1912
  store i8 5, i8* %60, align 1, !dbg !1913
  %61 = add i64 %59, 1, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %61, metadata !1855, metadata !DIExpression()), !dbg !1831
  %62 = getelementptr inbounds i8, i8* %4, i64 %59, !dbg !1915
  store i8 0, i8* %62, align 1, !dbg !1916
  %63 = add i64 %61, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %63, metadata !1855, metadata !DIExpression()), !dbg !1831
  %64 = getelementptr inbounds i8, i8* %4, i64 %61, !dbg !1918
  store i8 4, i8* %64, align 1, !dbg !1919
  %65 = trunc i64 %2 to i8, !dbg !1920
  %66 = add i64 %63, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %66, metadata !1855, metadata !DIExpression()), !dbg !1831
  %67 = getelementptr inbounds i8, i8* %4, i64 %63, !dbg !1922
  store i8 %65, i8* %67, align 1, !dbg !1923
  br label %68

68:                                               ; preds = %30, %14
  %.01 = phi i64 [ %17, %14 ], [ %66, %30 ], !dbg !1924
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1855, metadata !DIExpression()), !dbg !1831
  %69 = getelementptr inbounds i8, i8* %4, i64 %.01, !dbg !1925
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %1, i64 %2, i1 false), !dbg !1926
  br label %70, !dbg !1927

70:                                               ; preds = %68, %29, %13
  %.0 = phi i32 [ 0, %13 ], [ 1, %68 ], [ 0, %29 ], !dbg !1831
  ret i32 %.0, !dbg !1928
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sign_wrapper(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4) #0 !dbg !1929 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1948, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %1, metadata !1950, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %2, metadata !1951, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %3, metadata !1952, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %4, metadata !1953, metadata !DIExpression()), !dbg !1949
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1954
  call void @public_in(%struct.smack_value* %6), !dbg !1955
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1956
  call void @public_in(%struct.smack_value* %7), !dbg !1957
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !1958
  call void @public_in(%struct.smack_value* %8), !dbg !1959
  %9 = call %struct.smack_value* (%struct.br_rsa_private_key*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_rsa_private_key*, ...)*)(%struct.br_rsa_private_key* %3), !dbg !1960
  call void @public_in(%struct.smack_value* %9), !dbg !1961
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !1962
  call void @public_in(%struct.smack_value* %10), !dbg !1963
  %11 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 1, !dbg !1964
  %12 = load i8*, i8** %11, align 8, !dbg !1964
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %12), !dbg !1965
  call void @public_in(%struct.smack_value* %13), !dbg !1966
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 3, !dbg !1967
  %15 = load i8*, i8** %14, align 8, !dbg !1967
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %15), !dbg !1968
  call void @public_in(%struct.smack_value* %16), !dbg !1969
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 5, !dbg !1970
  %18 = load i8*, i8** %17, align 8, !dbg !1970
  %19 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %18), !dbg !1971
  call void @public_in(%struct.smack_value* %19), !dbg !1972
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 7, !dbg !1973
  %21 = load i8*, i8** %20, align 8, !dbg !1973
  %22 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %21), !dbg !1974
  call void @public_in(%struct.smack_value* %22), !dbg !1975
  %23 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 9, !dbg !1976
  %24 = load i8*, i8** %23, align 8, !dbg !1976
  %25 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %24), !dbg !1977
  call void @public_in(%struct.smack_value* %25), !dbg !1978
  %26 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 2, !dbg !1979
  %27 = load i64, i64* %26, align 8, !dbg !1979
  %28 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %27), !dbg !1980
  call void @public_in(%struct.smack_value* %28), !dbg !1981
  %29 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 4, !dbg !1982
  %30 = load i64, i64* %29, align 8, !dbg !1982
  %31 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %30), !dbg !1983
  call void @public_in(%struct.smack_value* %31), !dbg !1984
  %32 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 6, !dbg !1985
  %33 = load i64, i64* %32, align 8, !dbg !1985
  %34 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %33), !dbg !1986
  call void @public_in(%struct.smack_value* %34), !dbg !1987
  %35 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 8, !dbg !1988
  %36 = load i64, i64* %35, align 8, !dbg !1988
  %37 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %36), !dbg !1989
  call void @public_in(%struct.smack_value* %37), !dbg !1990
  %38 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 10, !dbg !1991
  %39 = load i64, i64* %38, align 8, !dbg !1991
  %40 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %39), !dbg !1992
  call void @public_in(%struct.smack_value* %40), !dbg !1993
  %41 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 0, !dbg !1994
  %42 = load i32, i32* %41, align 8, !dbg !1994
  %43 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %42), !dbg !1995
  call void @public_in(%struct.smack_value* %43), !dbg !1996
  %44 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 64), !dbg !1997
  call void @public_in(%struct.smack_value* %44), !dbg !1998
  %45 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 64), !dbg !1999
  call void @public_in(%struct.smack_value* %45), !dbg !2000
  %46 = call %struct.smack_value* @__SMACK_values(i8* %4, i32 64), !dbg !2001
  call void @public_in(%struct.smack_value* %46), !dbg !2002
  %47 = call i32 @br_rsa_i31_pkcs1_sign(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4), !dbg !2003
  ret void, !dbg !2004
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @sign_wrapper_t() #0 !dbg !2005 {
  %1 = alloca %struct.br_rsa_private_key, align 8
  %2 = call i8* (...) @getcharpt(), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %2, metadata !2009, metadata !DIExpression()), !dbg !2010
  %3 = call i8* (...) @getcharpt2(), !dbg !2011
  call void @llvm.dbg.value(metadata i8* %3, metadata !2012, metadata !DIExpression()), !dbg !2010
  %4 = call i64 (...) @getsize_t(), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %4, metadata !2014, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.declare(metadata %struct.br_rsa_private_key* %1, metadata !2015, metadata !DIExpression()), !dbg !2016
  call void (%struct.br_rsa_private_key*, ...) @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8 %1), !dbg !2017
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !2018, metadata !DIExpression()), !dbg !2010
  %5 = call i8* (...) @getuschar(), !dbg !2020
  call void @llvm.dbg.value(metadata i8* %5, metadata !2021, metadata !DIExpression()), !dbg !2010
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !2022
  %7 = load i8*, i8** %6, align 8, !dbg !2022
  call void @llvm.dbg.value(metadata i8* %7, metadata !2023, metadata !DIExpression()), !dbg !2010
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !2024
  %9 = load i8*, i8** %8, align 8, !dbg !2024
  call void @llvm.dbg.value(metadata i8* %9, metadata !2025, metadata !DIExpression()), !dbg !2010
  %10 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !2026
  %11 = load i8*, i8** %10, align 8, !dbg !2026
  call void @llvm.dbg.value(metadata i8* %11, metadata !2027, metadata !DIExpression()), !dbg !2010
  %12 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !2028
  %13 = load i8*, i8** %12, align 8, !dbg !2028
  call void @llvm.dbg.value(metadata i8* %13, metadata !2029, metadata !DIExpression()), !dbg !2010
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !2030
  %15 = load i8*, i8** %14, align 8, !dbg !2030
  call void @llvm.dbg.value(metadata i8* %15, metadata !2031, metadata !DIExpression()), !dbg !2010
  call void @vfct_taintseed(i8* %7, i8* %9, i8* %11, i8* %13, i8* %15), !dbg !2032
  %16 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !2033
  store i8* %7, i8** %16, align 8, !dbg !2034
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !2035
  store i8* %9, i8** %17, align 8, !dbg !2036
  %18 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !2037
  store i8* %11, i8** %18, align 8, !dbg !2038
  %19 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !2039
  store i8* %13, i8** %19, align 8, !dbg !2040
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !2041
  store i8* %15, i8** %20, align 8, !dbg !2042
  %21 = call i32 @br_rsa_i31_pkcs1_sign(i8* %2, i8* %3, i64 %4, %struct.br_rsa_private_key* %1, i8* %5), !dbg !2043
  ret void, !dbg !2044
}

declare dso_local i8* @getcharpt(...) #4

declare dso_local i8* @getcharpt2(...) #4

declare dso_local i64 @getsize_t(...) #4

declare dso_local void @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8, ...) #4

declare dso_local i8* @getuschar(...) #4

declare dso_local void @vfct_taintseed(i8*, i8*, i8*, i8*, i8*) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0, !3, !11, !13, !15, !17, !22, !28, !31, !36, !38, !41, !43, !45, !47, !49, !51, !53, !55, !59, !63}
!llvm.ident = !{!65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65, !65}
!llvm.module.flags = !{!66, !67, !68}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "../BearSSL/src/int/i31_add.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "../BearSSL/src/int/i31_bitlen.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "../BearSSL/src/int/i31_decode.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "../BearSSL/src/int/i31_decred.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "../BearSSL/src/int/i31_encode.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !24, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../BearSSL/src/int/i31_fmont.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!24 = !{!6, !25}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !27)
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../BearSSL/src/int/i31_modpow2.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!30 = !{!6, !10}
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !33, splitDebugInlining: false, nameTableKind: None)
!32 = !DIFile(filename: "../BearSSL/src/int/i31_montmul.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!33 = !{!34, !6, !25}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !27)
!35 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !24, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../BearSSL/src/int/i31_mulacc.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../BearSSL/src/int/i31_muladd.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!40 = !{!10, !25, !6}
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "../BearSSL/src/int/i31_ninv31.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "../BearSSL/src/int/i31_reduce.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "../BearSSL/src/int/i31_rshift.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "../BearSSL/src/int/i31_sub.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "../BearSSL/src/int/i31_tmont.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "../BearSSL/src/int/i32_div32.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "../BearSSL/src/rsa/rsa_i31_pkcs1_sign.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !57, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "../BearSSL/src/rsa/rsa_i31_priv.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!57 = !{!58, !20}
!58 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !61, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "../BearSSL/src/rsa/rsa_pkcs1_sig_pad.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "sign.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!65 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!66 = !{i32 7, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = distinct !DISubprogram(name: "br_ccopy", scope: !1, file: !1, line: 29, type: !70, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !6, !62, !72, !34}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DILocalVariable(name: "ctl", arg: 1, scope: !69, file: !1, line: 29, type: !6)
!75 = !DILocation(line: 0, scope: !69)
!76 = !DILocalVariable(name: "dst", arg: 2, scope: !69, file: !1, line: 29, type: !62)
!77 = !DILocalVariable(name: "src", arg: 3, scope: !69, file: !1, line: 29, type: !72)
!78 = !DILocalVariable(name: "len", arg: 4, scope: !69, file: !1, line: 29, type: !34)
!79 = !DILocalVariable(name: "d", scope: !69, file: !1, line: 31, type: !20)
!80 = !DILocalVariable(name: "s", scope: !69, file: !1, line: 32, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!83 = !DILocation(line: 36, column: 2, scope: !69)
!84 = !DILocation(line: 36, column: 13, scope: !69)
!85 = !DILocation(line: 36, column: 16, scope: !69)
!86 = !DILocation(line: 39, column: 10, scope: !87)
!87 = distinct !DILexicalBlock(scope: !69, file: !1, line: 36, column: 21)
!88 = !DILocation(line: 39, column: 7, scope: !87)
!89 = !DILocalVariable(name: "x", scope: !87, file: !1, line: 37, type: !6)
!90 = !DILocation(line: 0, scope: !87)
!91 = !DILocation(line: 40, column: 7, scope: !87)
!92 = !DILocalVariable(name: "y", scope: !87, file: !1, line: 37, type: !6)
!93 = !DILocation(line: 41, column: 8, scope: !87)
!94 = !DILocation(line: 41, column: 6, scope: !87)
!95 = !DILocation(line: 42, column: 5, scope: !87)
!96 = distinct !{!96, !83, !97, !98}
!97 = !DILocation(line: 43, column: 2, scope: !69)
!98 = !{!"llvm.loop.mustprogress"}
!99 = !DILocation(line: 44, column: 1, scope: !69)
!100 = distinct !DISubprogram(name: "MUX", scope: !101, file: !101, line: 770, type: !102, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!101 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!102 = !DISubroutineType(types: !103)
!103 = !{!6, !6, !6, !6}
!104 = !DILocalVariable(name: "ctl", arg: 1, scope: !100, file: !101, line: 770, type: !6)
!105 = !DILocation(line: 0, scope: !100)
!106 = !DILocalVariable(name: "x", arg: 2, scope: !100, file: !101, line: 770, type: !6)
!107 = !DILocalVariable(name: "y", arg: 3, scope: !100, file: !101, line: 770, type: !6)
!108 = !DILocation(line: 772, column: 14, scope: !100)
!109 = !DILocation(line: 772, column: 24, scope: !100)
!110 = !DILocation(line: 772, column: 19, scope: !100)
!111 = !DILocation(line: 772, column: 11, scope: !100)
!112 = !DILocation(line: 772, column: 2, scope: !100)
!113 = distinct !DISubprogram(name: "br_i31_add", scope: !4, file: !4, line: 29, type: !114, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!114 = !DISubroutineType(types: !115)
!115 = !{!6, !116, !117, !6}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!119 = !DILocalVariable(name: "a", arg: 1, scope: !113, file: !4, line: 29, type: !116)
!120 = !DILocation(line: 0, scope: !113)
!121 = !DILocalVariable(name: "b", arg: 2, scope: !113, file: !4, line: 29, type: !117)
!122 = !DILocalVariable(name: "ctl", arg: 3, scope: !113, file: !4, line: 29, type: !6)
!123 = !DILocalVariable(name: "cc", scope: !113, file: !4, line: 31, type: !6)
!124 = !DILocation(line: 35, column: 7, scope: !113)
!125 = !DILocation(line: 35, column: 12, scope: !113)
!126 = !DILocation(line: 35, column: 18, scope: !113)
!127 = !DILocation(line: 35, column: 6, scope: !113)
!128 = !DILocalVariable(name: "m", scope: !113, file: !4, line: 32, type: !34)
!129 = !DILocalVariable(name: "u", scope: !113, file: !4, line: 32, type: !34)
!130 = !DILocation(line: 36, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !113, file: !4, line: 36, column: 2)
!132 = !DILocation(line: 0, scope: !131)
!133 = !DILocation(line: 36, column: 16, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !4, line: 36, column: 2)
!135 = !DILocation(line: 36, column: 2, scope: !131)
!136 = !DILocation(line: 39, column: 8, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !4, line: 36, column: 27)
!138 = !DILocalVariable(name: "aw", scope: !137, file: !4, line: 37, type: !6)
!139 = !DILocation(line: 0, scope: !137)
!140 = !DILocation(line: 40, column: 8, scope: !137)
!141 = !DILocalVariable(name: "bw", scope: !137, file: !4, line: 37, type: !6)
!142 = !DILocation(line: 41, column: 12, scope: !137)
!143 = !DILocation(line: 41, column: 17, scope: !137)
!144 = !DILocalVariable(name: "naw", scope: !137, file: !4, line: 37, type: !6)
!145 = !DILocation(line: 42, column: 12, scope: !137)
!146 = !DILocation(line: 43, column: 23, scope: !137)
!147 = !DILocation(line: 43, column: 10, scope: !137)
!148 = !DILocation(line: 43, column: 3, scope: !137)
!149 = !DILocation(line: 43, column: 8, scope: !137)
!150 = !DILocation(line: 44, column: 2, scope: !137)
!151 = !DILocation(line: 36, column: 23, scope: !134)
!152 = !DILocation(line: 36, column: 2, scope: !134)
!153 = distinct !{!153, !135, !154, !98}
!154 = !DILocation(line: 44, column: 2, scope: !131)
!155 = !DILocation(line: 45, column: 2, scope: !113)
!156 = distinct !DISubprogram(name: "MUX", scope: !101, file: !101, line: 770, type: !102, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!157 = !DILocalVariable(name: "ctl", arg: 1, scope: !156, file: !101, line: 770, type: !6)
!158 = !DILocation(line: 0, scope: !156)
!159 = !DILocalVariable(name: "x", arg: 2, scope: !156, file: !101, line: 770, type: !6)
!160 = !DILocalVariable(name: "y", arg: 3, scope: !156, file: !101, line: 770, type: !6)
!161 = !DILocation(line: 772, column: 14, scope: !156)
!162 = !DILocation(line: 772, column: 24, scope: !156)
!163 = !DILocation(line: 772, column: 19, scope: !156)
!164 = !DILocation(line: 772, column: 11, scope: !156)
!165 = !DILocation(line: 772, column: 2, scope: !156)
!166 = distinct !DISubprogram(name: "br_i31_bit_length", scope: !12, file: !12, line: 29, type: !167, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !2)
!167 = !DISubroutineType(types: !168)
!168 = !{!6, !116, !34}
!169 = !DILocalVariable(name: "x", arg: 1, scope: !166, file: !12, line: 29, type: !116)
!170 = !DILocation(line: 0, scope: !166)
!171 = !DILocalVariable(name: "xlen", arg: 2, scope: !166, file: !12, line: 29, type: !34)
!172 = !DILocalVariable(name: "tw", scope: !166, file: !12, line: 31, type: !6)
!173 = !DILocalVariable(name: "twk", scope: !166, file: !12, line: 31, type: !6)
!174 = !DILocation(line: 35, column: 2, scope: !166)
!175 = !DILocation(line: 35, column: 14, scope: !166)
!176 = !DILocation(line: 35, column: 17, scope: !166)
!177 = !DILocation(line: 38, column: 7, scope: !178)
!178 = distinct !DILexicalBlock(scope: !166, file: !12, line: 35, column: 22)
!179 = !DILocalVariable(name: "c", scope: !178, file: !12, line: 36, type: !6)
!180 = !DILocation(line: 0, scope: !178)
!181 = !DILocation(line: 39, column: 7, scope: !178)
!182 = !DILocalVariable(name: "w", scope: !178, file: !12, line: 36, type: !6)
!183 = !DILocation(line: 40, column: 8, scope: !178)
!184 = !DILocation(line: 41, column: 16, scope: !178)
!185 = !DILocation(line: 41, column: 9, scope: !178)
!186 = distinct !{!186, !174, !187, !98}
!187 = !DILocation(line: 42, column: 2, scope: !166)
!188 = !DILocation(line: 43, column: 14, scope: !166)
!189 = !DILocation(line: 43, column: 22, scope: !166)
!190 = !DILocation(line: 43, column: 20, scope: !166)
!191 = !DILocation(line: 43, column: 2, scope: !166)
!192 = distinct !DISubprogram(name: "EQ", scope: !101, file: !101, line: 779, type: !193, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!193 = !DISubroutineType(types: !194)
!194 = !{!6, !6, !6}
!195 = !DILocalVariable(name: "x", arg: 1, scope: !192, file: !101, line: 779, type: !6)
!196 = !DILocation(line: 0, scope: !192)
!197 = !DILocalVariable(name: "y", arg: 2, scope: !192, file: !101, line: 779, type: !6)
!198 = !DILocation(line: 783, column: 8, scope: !192)
!199 = !DILocalVariable(name: "q", scope: !192, file: !101, line: 781, type: !6)
!200 = !DILocation(line: 784, column: 18, scope: !192)
!201 = !DILocation(line: 784, column: 16, scope: !192)
!202 = !DILocation(line: 784, column: 22, scope: !192)
!203 = !DILocation(line: 784, column: 9, scope: !192)
!204 = !DILocation(line: 784, column: 2, scope: !192)
!205 = distinct !DISubprogram(name: "MUX", scope: !101, file: !101, line: 770, type: !102, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!206 = !DILocalVariable(name: "ctl", arg: 1, scope: !205, file: !101, line: 770, type: !6)
!207 = !DILocation(line: 0, scope: !205)
!208 = !DILocalVariable(name: "x", arg: 2, scope: !205, file: !101, line: 770, type: !6)
!209 = !DILocalVariable(name: "y", arg: 3, scope: !205, file: !101, line: 770, type: !6)
!210 = !DILocation(line: 772, column: 14, scope: !205)
!211 = !DILocation(line: 772, column: 24, scope: !205)
!212 = !DILocation(line: 772, column: 19, scope: !205)
!213 = !DILocation(line: 772, column: 11, scope: !205)
!214 = !DILocation(line: 772, column: 2, scope: !205)
!215 = distinct !DISubprogram(name: "BIT_LENGTH", scope: !101, file: !101, line: 915, type: !216, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!216 = !DISubroutineType(types: !217)
!217 = !{!6, !6}
!218 = !DILocalVariable(name: "x", arg: 1, scope: !215, file: !101, line: 915, type: !6)
!219 = !DILocation(line: 0, scope: !215)
!220 = !DILocation(line: 919, column: 6, scope: !215)
!221 = !DILocalVariable(name: "k", scope: !215, file: !101, line: 917, type: !6)
!222 = !DILocation(line: 920, column: 6, scope: !215)
!223 = !DILocalVariable(name: "c", scope: !215, file: !101, line: 917, type: !6)
!224 = !DILocation(line: 920, column: 34, scope: !215)
!225 = !DILocation(line: 920, column: 25, scope: !215)
!226 = !DILocation(line: 920, column: 52, scope: !215)
!227 = !DILocation(line: 920, column: 47, scope: !215)
!228 = !DILocation(line: 921, column: 6, scope: !215)
!229 = !DILocation(line: 921, column: 34, scope: !215)
!230 = !DILocation(line: 921, column: 25, scope: !215)
!231 = !DILocation(line: 921, column: 52, scope: !215)
!232 = !DILocation(line: 921, column: 47, scope: !215)
!233 = !DILocation(line: 922, column: 6, scope: !215)
!234 = !DILocation(line: 922, column: 34, scope: !215)
!235 = !DILocation(line: 922, column: 25, scope: !215)
!236 = !DILocation(line: 922, column: 52, scope: !215)
!237 = !DILocation(line: 922, column: 47, scope: !215)
!238 = !DILocation(line: 923, column: 6, scope: !215)
!239 = !DILocation(line: 923, column: 34, scope: !215)
!240 = !DILocation(line: 923, column: 25, scope: !215)
!241 = !DILocation(line: 923, column: 52, scope: !215)
!242 = !DILocation(line: 923, column: 47, scope: !215)
!243 = !DILocation(line: 924, column: 7, scope: !215)
!244 = !DILocation(line: 924, column: 4, scope: !215)
!245 = !DILocation(line: 925, column: 2, scope: !215)
!246 = distinct !DISubprogram(name: "NEQ", scope: !101, file: !101, line: 791, type: !193, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!247 = !DILocalVariable(name: "x", arg: 1, scope: !246, file: !101, line: 791, type: !6)
!248 = !DILocation(line: 0, scope: !246)
!249 = !DILocalVariable(name: "y", arg: 2, scope: !246, file: !101, line: 791, type: !6)
!250 = !DILocation(line: 795, column: 8, scope: !246)
!251 = !DILocalVariable(name: "q", scope: !246, file: !101, line: 793, type: !6)
!252 = !DILocation(line: 796, column: 14, scope: !246)
!253 = !DILocation(line: 796, column: 12, scope: !246)
!254 = !DILocation(line: 796, column: 18, scope: !246)
!255 = !DILocation(line: 796, column: 2, scope: !246)
!256 = distinct !DISubprogram(name: "GT", scope: !101, file: !101, line: 803, type: !193, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!257 = !DILocalVariable(name: "x", arg: 1, scope: !256, file: !101, line: 803, type: !6)
!258 = !DILocation(line: 0, scope: !256)
!259 = !DILocalVariable(name: "y", arg: 2, scope: !256, file: !101, line: 803, type: !6)
!260 = !DILocation(line: 819, column: 8, scope: !256)
!261 = !DILocalVariable(name: "z", scope: !256, file: !101, line: 817, type: !6)
!262 = !DILocation(line: 820, column: 18, scope: !256)
!263 = !DILocation(line: 820, column: 28, scope: !256)
!264 = !DILocation(line: 820, column: 23, scope: !256)
!265 = !DILocation(line: 820, column: 12, scope: !256)
!266 = !DILocation(line: 820, column: 35, scope: !256)
!267 = !DILocation(line: 820, column: 2, scope: !256)
!268 = distinct !DISubprogram(name: "NOT", scope: !101, file: !101, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!269 = !DILocalVariable(name: "ctl", arg: 1, scope: !268, file: !101, line: 761, type: !6)
!270 = !DILocation(line: 0, scope: !268)
!271 = !DILocation(line: 763, column: 13, scope: !268)
!272 = !DILocation(line: 763, column: 2, scope: !268)
!273 = distinct !DISubprogram(name: "br_i31_decode", scope: !14, file: !14, line: 29, type: !274, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !2)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !116, !72, !34}
!276 = !DILocalVariable(name: "x", arg: 1, scope: !273, file: !14, line: 29, type: !116)
!277 = !DILocation(line: 0, scope: !273)
!278 = !DILocalVariable(name: "src", arg: 2, scope: !273, file: !14, line: 29, type: !72)
!279 = !DILocalVariable(name: "len", arg: 3, scope: !273, file: !14, line: 29, type: !34)
!280 = !DILocalVariable(name: "buf", scope: !273, file: !14, line: 31, type: !81)
!281 = !DILocalVariable(name: "u", scope: !273, file: !14, line: 32, type: !34)
!282 = !DILocalVariable(name: "v", scope: !273, file: !14, line: 32, type: !34)
!283 = !DILocalVariable(name: "acc", scope: !273, file: !14, line: 33, type: !6)
!284 = !DILocalVariable(name: "acc_len", scope: !273, file: !14, line: 34, type: !285)
!285 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!286 = !DILocation(line: 41, column: 2, scope: !273)
!287 = !DILocation(line: 41, column: 11, scope: !273)
!288 = !DILocation(line: 41, column: 14, scope: !273)
!289 = !DILocation(line: 44, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !273, file: !14, line: 41, column: 19)
!291 = !DILocalVariable(name: "b", scope: !290, file: !14, line: 42, type: !6)
!292 = !DILocation(line: 0, scope: !290)
!293 = !DILocation(line: 45, column: 13, scope: !290)
!294 = !DILocation(line: 45, column: 7, scope: !290)
!295 = !DILocation(line: 46, column: 11, scope: !290)
!296 = !DILocation(line: 47, column: 15, scope: !297)
!297 = distinct !DILexicalBlock(scope: !290, file: !14, line: 47, column: 7)
!298 = !DILocation(line: 47, column: 7, scope: !290)
!299 = !DILocation(line: 48, column: 18, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !14, line: 47, column: 22)
!301 = !DILocation(line: 48, column: 8, scope: !300)
!302 = !DILocation(line: 48, column: 4, scope: !300)
!303 = !DILocation(line: 48, column: 12, scope: !300)
!304 = !DILocation(line: 49, column: 12, scope: !300)
!305 = !DILocation(line: 50, column: 18, scope: !300)
!306 = !DILocation(line: 50, column: 12, scope: !300)
!307 = !DILocation(line: 51, column: 3, scope: !300)
!308 = distinct !{!308, !286, !309, !98}
!309 = !DILocation(line: 52, column: 2, scope: !273)
!310 = !DILocation(line: 53, column: 14, scope: !311)
!311 = distinct !DILexicalBlock(scope: !273, file: !14, line: 53, column: 6)
!312 = !DILocation(line: 53, column: 6, scope: !273)
!313 = !DILocation(line: 54, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !14, line: 53, column: 20)
!315 = !DILocation(line: 54, column: 3, scope: !314)
!316 = !DILocation(line: 54, column: 11, scope: !314)
!317 = !DILocation(line: 55, column: 2, scope: !314)
!318 = !DILocation(line: 56, column: 29, scope: !273)
!319 = !DILocation(line: 56, column: 36, scope: !273)
!320 = !DILocation(line: 56, column: 9, scope: !273)
!321 = !DILocation(line: 56, column: 2, scope: !273)
!322 = !DILocation(line: 56, column: 7, scope: !273)
!323 = !DILocation(line: 57, column: 1, scope: !273)
!324 = distinct !DISubprogram(name: "br_i31_decode_reduce", scope: !16, file: !16, line: 29, type: !325, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !2)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !116, !72, !34, !117}
!327 = !DILocalVariable(name: "x", arg: 1, scope: !324, file: !16, line: 29, type: !116)
!328 = !DILocation(line: 0, scope: !324)
!329 = !DILocalVariable(name: "src", arg: 2, scope: !324, file: !16, line: 30, type: !72)
!330 = !DILocalVariable(name: "len", arg: 3, scope: !324, file: !16, line: 30, type: !34)
!331 = !DILocalVariable(name: "m", arg: 4, scope: !324, file: !16, line: 30, type: !117)
!332 = !DILocation(line: 41, column: 14, scope: !324)
!333 = !DILocalVariable(name: "m_ebitlen", scope: !324, file: !16, line: 32, type: !6)
!334 = !DILocation(line: 46, column: 16, scope: !335)
!335 = distinct !DILexicalBlock(scope: !324, file: !16, line: 46, column: 6)
!336 = !DILocation(line: 46, column: 6, scope: !324)
!337 = !DILocation(line: 47, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !16, line: 46, column: 22)
!339 = !DILocation(line: 47, column: 8, scope: !338)
!340 = !DILocation(line: 48, column: 3, scope: !338)
!341 = !DILocation(line: 54, column: 2, scope: !324)
!342 = !DILocation(line: 60, column: 24, scope: !324)
!343 = !DILocalVariable(name: "m_rbitlen", scope: !324, file: !16, line: 32, type: !6)
!344 = !DILocation(line: 61, column: 25, scope: !324)
!345 = !DILocation(line: 61, column: 44, scope: !324)
!346 = !DILocation(line: 61, column: 31, scope: !324)
!347 = !DILocation(line: 61, column: 50, scope: !324)
!348 = !DILocation(line: 62, column: 21, scope: !324)
!349 = !DILocation(line: 62, column: 26, scope: !324)
!350 = !DILocation(line: 62, column: 10, scope: !324)
!351 = !DILocalVariable(name: "mblen", scope: !324, file: !16, line: 33, type: !34)
!352 = !DILocation(line: 63, column: 12, scope: !324)
!353 = !DILocalVariable(name: "k", scope: !324, file: !16, line: 33, type: !34)
!354 = !DILocation(line: 64, column: 8, scope: !355)
!355 = distinct !DILexicalBlock(scope: !324, file: !16, line: 64, column: 6)
!356 = !DILocation(line: 64, column: 6, scope: !324)
!357 = !DILocation(line: 65, column: 3, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !16, line: 64, column: 16)
!359 = !DILocation(line: 66, column: 3, scope: !358)
!360 = !DILocation(line: 66, column: 8, scope: !358)
!361 = !DILocation(line: 67, column: 3, scope: !358)
!362 = !DILocalVariable(name: "buf", scope: !324, file: !16, line: 34, type: !81)
!363 = !DILocation(line: 70, column: 2, scope: !324)
!364 = !DILocation(line: 71, column: 2, scope: !324)
!365 = !DILocation(line: 71, column: 7, scope: !324)
!366 = !DILocalVariable(name: "acc", scope: !324, file: !16, line: 35, type: !6)
!367 = !DILocalVariable(name: "acc_len", scope: !324, file: !16, line: 36, type: !285)
!368 = !DILocation(line: 78, column: 2, scope: !324)
!369 = !DILocation(line: 78, column: 11, scope: !324)
!370 = !DILocation(line: 81, column: 13, scope: !371)
!371 = distinct !DILexicalBlock(scope: !324, file: !16, line: 78, column: 18)
!372 = !DILocation(line: 81, column: 7, scope: !371)
!373 = !DILocalVariable(name: "v", scope: !371, file: !16, line: 79, type: !6)
!374 = !DILocation(line: 0, scope: !371)
!375 = !DILocation(line: 82, column: 15, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !16, line: 82, column: 7)
!377 = !DILocation(line: 82, column: 7, scope: !371)
!378 = !DILocation(line: 83, column: 12, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !16, line: 82, column: 22)
!380 = !DILocation(line: 84, column: 15, scope: !379)
!381 = !DILocation(line: 84, column: 8, scope: !379)
!382 = !DILocation(line: 85, column: 13, scope: !379)
!383 = !DILocation(line: 85, column: 8, scope: !379)
!384 = !DILocation(line: 86, column: 4, scope: !379)
!385 = !DILocation(line: 87, column: 26, scope: !379)
!386 = !DILocation(line: 87, column: 20, scope: !379)
!387 = !DILocation(line: 87, column: 12, scope: !379)
!388 = !DILocation(line: 88, column: 3, scope: !379)
!389 = !DILocation(line: 89, column: 15, scope: !390)
!390 = distinct !DILexicalBlock(scope: !376, file: !16, line: 88, column: 10)
!391 = !DILocation(line: 89, column: 21, scope: !390)
!392 = !DILocation(line: 90, column: 12, scope: !390)
!393 = !DILocation(line: 0, scope: !376)
!394 = distinct !{!394, !368, !395, !98}
!395 = !DILocation(line: 92, column: 2, scope: !324)
!396 = !DILocation(line: 98, column: 14, scope: !397)
!397 = distinct !DILexicalBlock(scope: !324, file: !16, line: 98, column: 6)
!398 = !DILocation(line: 98, column: 6, scope: !324)
!399 = !DILocation(line: 99, column: 17, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !16, line: 98, column: 20)
!401 = !DILocation(line: 99, column: 22, scope: !400)
!402 = !DILocation(line: 99, column: 14, scope: !400)
!403 = !DILocation(line: 99, column: 35, scope: !400)
!404 = !DILocation(line: 100, column: 23, scope: !400)
!405 = !DILocation(line: 100, column: 3, scope: !400)
!406 = !DILocation(line: 101, column: 3, scope: !400)
!407 = !DILocation(line: 102, column: 2, scope: !400)
!408 = !DILocation(line: 103, column: 1, scope: !324)
!409 = distinct !DISubprogram(name: "br_i31_zero", scope: !101, file: !101, line: 1383, type: !410, scopeLine: 1384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !116, !6}
!412 = !DILocalVariable(name: "x", arg: 1, scope: !409, file: !101, line: 1383, type: !116)
!413 = !DILocation(line: 0, scope: !409)
!414 = !DILocalVariable(name: "bit_len", arg: 2, scope: !409, file: !101, line: 1383, type: !6)
!415 = !DILocation(line: 1385, column: 5, scope: !409)
!416 = !DILocation(line: 1385, column: 8, scope: !409)
!417 = !DILocation(line: 1386, column: 2, scope: !409)
!418 = !DILocation(line: 1386, column: 25, scope: !409)
!419 = !DILocation(line: 1386, column: 31, scope: !409)
!420 = !DILocation(line: 1386, column: 15, scope: !409)
!421 = !DILocation(line: 1386, column: 37, scope: !409)
!422 = !DILocation(line: 1387, column: 1, scope: !409)
!423 = distinct !DISubprogram(name: "br_i31_encode", scope: !18, file: !18, line: 29, type: !424, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !2)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !62, !34, !117}
!426 = !DILocalVariable(name: "dst", arg: 1, scope: !423, file: !18, line: 29, type: !62)
!427 = !DILocation(line: 0, scope: !423)
!428 = !DILocalVariable(name: "len", arg: 2, scope: !423, file: !18, line: 29, type: !34)
!429 = !DILocalVariable(name: "x", arg: 3, scope: !423, file: !18, line: 29, type: !117)
!430 = !DILocation(line: 36, column: 10, scope: !423)
!431 = !DILocation(line: 36, column: 15, scope: !423)
!432 = !DILocation(line: 36, column: 21, scope: !423)
!433 = !DILocation(line: 36, column: 9, scope: !423)
!434 = !DILocalVariable(name: "xlen", scope: !423, file: !18, line: 32, type: !34)
!435 = !DILocation(line: 37, column: 11, scope: !436)
!436 = distinct !DILexicalBlock(scope: !423, file: !18, line: 37, column: 6)
!437 = !DILocation(line: 37, column: 6, scope: !423)
!438 = !DILocation(line: 38, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !18, line: 37, column: 17)
!440 = !DILocation(line: 39, column: 3, scope: !439)
!441 = !DILocation(line: 41, column: 29, scope: !423)
!442 = !DILocalVariable(name: "buf", scope: !423, file: !18, line: 31, type: !20)
!443 = !DILocalVariable(name: "k", scope: !423, file: !18, line: 32, type: !34)
!444 = !DILocalVariable(name: "acc", scope: !423, file: !18, line: 33, type: !6)
!445 = !DILocalVariable(name: "acc_len", scope: !423, file: !18, line: 34, type: !285)
!446 = !DILocation(line: 45, column: 2, scope: !423)
!447 = !DILocation(line: 41, column: 6, scope: !423)
!448 = !DILocation(line: 45, column: 13, scope: !423)
!449 = !DILocation(line: 48, column: 10, scope: !450)
!450 = distinct !DILexicalBlock(scope: !423, file: !18, line: 45, column: 19)
!451 = !DILocation(line: 48, column: 7, scope: !450)
!452 = !DILocation(line: 48, column: 21, scope: !450)
!453 = !DILocalVariable(name: "w", scope: !450, file: !18, line: 46, type: !6)
!454 = !DILocation(line: 0, scope: !450)
!455 = !DILocation(line: 49, column: 5, scope: !450)
!456 = !DILocation(line: 50, column: 15, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !18, line: 50, column: 7)
!458 = !DILocation(line: 50, column: 7, scope: !450)
!459 = !DILocation(line: 53, column: 3, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !18, line: 50, column: 21)
!461 = !DILocation(line: 56, column: 17, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !18, line: 53, column: 10)
!463 = !DILocation(line: 56, column: 12, scope: !462)
!464 = !DILocalVariable(name: "z", scope: !462, file: !18, line: 54, type: !6)
!465 = !DILocation(line: 0, scope: !462)
!466 = !DILocation(line: 57, column: 12, scope: !462)
!467 = !DILocation(line: 58, column: 19, scope: !462)
!468 = !DILocation(line: 58, column: 12, scope: !462)
!469 = !DILocation(line: 59, column: 12, scope: !470)
!470 = distinct !DILexicalBlock(scope: !462, file: !18, line: 59, column: 8)
!471 = !DILocation(line: 59, column: 8, scope: !462)
!472 = !DILocation(line: 60, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !18, line: 59, column: 18)
!474 = !DILocation(line: 61, column: 9, scope: !473)
!475 = !DILocation(line: 62, column: 5, scope: !473)
!476 = !DILocation(line: 63, column: 4, scope: !473)
!477 = !DILocation(line: 64, column: 5, scope: !478)
!478 = distinct !DILexicalBlock(scope: !470, file: !18, line: 63, column: 11)
!479 = !DILocation(line: 66, column: 34, scope: !480)
!480 = distinct !DILexicalBlock(scope: !478, file: !18, line: 64, column: 18)
!481 = !DILocation(line: 66, column: 16, scope: !480)
!482 = !DILocation(line: 66, column: 6, scope: !480)
!483 = !DILocation(line: 66, column: 14, scope: !480)
!484 = !DILocation(line: 69, column: 34, scope: !480)
!485 = !DILocation(line: 69, column: 16, scope: !480)
!486 = !DILocation(line: 69, column: 6, scope: !480)
!487 = !DILocation(line: 69, column: 14, scope: !480)
!488 = !DILocation(line: 72, column: 16, scope: !480)
!489 = !DILocation(line: 72, column: 6, scope: !480)
!490 = !DILocation(line: 72, column: 14, scope: !480)
!491 = !DILocation(line: 73, column: 6, scope: !480)
!492 = !DILocation(line: 75, column: 5, scope: !478)
!493 = !DILocation(line: 0, scope: !457)
!494 = distinct !{!494, !446, !495, !98}
!495 = !DILocation(line: 78, column: 2, scope: !423)
!496 = !DILocation(line: 79, column: 1, scope: !423)
!497 = distinct !DISubprogram(name: "br_enc32be", scope: !101, file: !101, line: 558, type: !498, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !2)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !62, !6}
!500 = !DILocalVariable(name: "dst", arg: 1, scope: !497, file: !101, line: 558, type: !62)
!501 = !DILocation(line: 0, scope: !497)
!502 = !DILocalVariable(name: "x", arg: 2, scope: !497, file: !101, line: 558, type: !6)
!503 = !DILocalVariable(name: "buf", scope: !497, file: !101, line: 563, type: !20)
!504 = !DILocation(line: 566, column: 29, scope: !497)
!505 = !DILocation(line: 566, column: 11, scope: !497)
!506 = !DILocation(line: 566, column: 2, scope: !497)
!507 = !DILocation(line: 566, column: 9, scope: !497)
!508 = !DILocation(line: 567, column: 29, scope: !497)
!509 = !DILocation(line: 567, column: 11, scope: !497)
!510 = !DILocation(line: 567, column: 2, scope: !497)
!511 = !DILocation(line: 567, column: 9, scope: !497)
!512 = !DILocation(line: 568, column: 29, scope: !497)
!513 = !DILocation(line: 568, column: 11, scope: !497)
!514 = !DILocation(line: 568, column: 2, scope: !497)
!515 = !DILocation(line: 568, column: 9, scope: !497)
!516 = !DILocation(line: 569, column: 11, scope: !497)
!517 = !DILocation(line: 569, column: 2, scope: !497)
!518 = !DILocation(line: 569, column: 9, scope: !497)
!519 = !DILocation(line: 571, column: 1, scope: !497)
!520 = distinct !DISubprogram(name: "br_i31_from_monty", scope: !23, file: !23, line: 29, type: !521, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !2)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !116, !117, !6}
!523 = !DILocalVariable(name: "x", arg: 1, scope: !520, file: !23, line: 29, type: !116)
!524 = !DILocation(line: 0, scope: !520)
!525 = !DILocalVariable(name: "m", arg: 2, scope: !520, file: !23, line: 29, type: !117)
!526 = !DILocalVariable(name: "m0i", arg: 3, scope: !520, file: !23, line: 29, type: !6)
!527 = !DILocation(line: 33, column: 9, scope: !520)
!528 = !DILocation(line: 33, column: 14, scope: !520)
!529 = !DILocation(line: 33, column: 20, scope: !520)
!530 = !DILocation(line: 33, column: 8, scope: !520)
!531 = !DILocalVariable(name: "len", scope: !520, file: !23, line: 31, type: !34)
!532 = !DILocalVariable(name: "u", scope: !520, file: !23, line: 31, type: !34)
!533 = !DILocation(line: 34, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !520, file: !23, line: 34, column: 2)
!535 = !DILocation(line: 0, scope: !534)
!536 = !DILocation(line: 34, column: 16, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !23, line: 34, column: 2)
!538 = !DILocation(line: 34, column: 2, scope: !534)
!539 = !DILocation(line: 38, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !23, line: 34, column: 29)
!541 = !DILocalVariable(name: "f", scope: !540, file: !23, line: 35, type: !6)
!542 = !DILocation(line: 0, scope: !540)
!543 = !DILocalVariable(name: "cc", scope: !540, file: !23, line: 36, type: !25)
!544 = !DILocalVariable(name: "v", scope: !520, file: !23, line: 31, type: !34)
!545 = !DILocation(line: 40, column: 8, scope: !546)
!546 = distinct !DILexicalBlock(scope: !540, file: !23, line: 40, column: 3)
!547 = !DILocation(line: 0, scope: !546)
!548 = !DILocation(line: 40, column: 17, scope: !549)
!549 = distinct !DILexicalBlock(scope: !546, file: !23, line: 40, column: 3)
!550 = !DILocation(line: 40, column: 3, scope: !546)
!551 = !DILocation(line: 43, column: 22, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !23, line: 40, column: 30)
!553 = !DILocation(line: 43, column: 18, scope: !552)
!554 = !DILocation(line: 43, column: 8, scope: !552)
!555 = !DILocation(line: 43, column: 29, scope: !552)
!556 = !DILocation(line: 43, column: 27, scope: !552)
!557 = !DILocation(line: 43, column: 48, scope: !552)
!558 = !DILocalVariable(name: "z", scope: !552, file: !23, line: 41, type: !25)
!559 = !DILocation(line: 0, scope: !552)
!560 = !DILocation(line: 44, column: 11, scope: !552)
!561 = !DILocation(line: 45, column: 10, scope: !562)
!562 = distinct !DILexicalBlock(scope: !552, file: !23, line: 45, column: 8)
!563 = !DILocation(line: 45, column: 8, scope: !552)
!564 = !DILocation(line: 46, column: 12, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !23, line: 45, column: 16)
!566 = !DILocation(line: 46, column: 24, scope: !565)
!567 = !DILocation(line: 46, column: 5, scope: !565)
!568 = !DILocation(line: 46, column: 10, scope: !565)
!569 = !DILocation(line: 47, column: 4, scope: !565)
!570 = !DILocation(line: 48, column: 3, scope: !552)
!571 = !DILocation(line: 40, column: 26, scope: !549)
!572 = !DILocation(line: 40, column: 3, scope: !549)
!573 = distinct !{!573, !550, !574, !98}
!574 = !DILocation(line: 48, column: 3, scope: !546)
!575 = !DILocation(line: 49, column: 12, scope: !540)
!576 = !DILocation(line: 49, column: 3, scope: !540)
!577 = !DILocation(line: 49, column: 10, scope: !540)
!578 = !DILocation(line: 50, column: 2, scope: !540)
!579 = !DILocation(line: 34, column: 25, scope: !537)
!580 = !DILocation(line: 34, column: 2, scope: !537)
!581 = distinct !{!581, !538, !582, !98}
!582 = !DILocation(line: 50, column: 2, scope: !534)
!583 = !DILocation(line: 59, column: 23, scope: !520)
!584 = !DILocation(line: 59, column: 19, scope: !520)
!585 = !DILocation(line: 59, column: 2, scope: !520)
!586 = !DILocation(line: 60, column: 1, scope: !520)
!587 = distinct !DISubprogram(name: "NOT", scope: !101, file: !101, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !2)
!588 = !DILocalVariable(name: "ctl", arg: 1, scope: !587, file: !101, line: 761, type: !6)
!589 = !DILocation(line: 0, scope: !587)
!590 = !DILocation(line: 763, column: 13, scope: !587)
!591 = !DILocation(line: 763, column: 2, scope: !587)
!592 = distinct !DISubprogram(name: "br_i31_modpow_opt", scope: !29, file: !29, line: 29, type: !593, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !2)
!593 = !DISubroutineType(types: !594)
!594 = !{!6, !116, !81, !34, !117, !6, !116, !34}
!595 = !DILocalVariable(name: "x", arg: 1, scope: !592, file: !29, line: 29, type: !116)
!596 = !DILocation(line: 0, scope: !592)
!597 = !DILocalVariable(name: "e", arg: 2, scope: !592, file: !29, line: 30, type: !81)
!598 = !DILocalVariable(name: "elen", arg: 3, scope: !592, file: !29, line: 30, type: !34)
!599 = !DILocalVariable(name: "m", arg: 4, scope: !592, file: !29, line: 31, type: !117)
!600 = !DILocalVariable(name: "m0i", arg: 5, scope: !592, file: !29, line: 31, type: !6)
!601 = !DILocalVariable(name: "tmp", arg: 6, scope: !592, file: !29, line: 31, type: !116)
!602 = !DILocalVariable(name: "twlen", arg: 7, scope: !592, file: !29, line: 31, type: !34)
!603 = !DILocation(line: 42, column: 11, scope: !592)
!604 = !DILocation(line: 42, column: 16, scope: !592)
!605 = !DILocation(line: 42, column: 22, scope: !592)
!606 = !DILocation(line: 42, column: 10, scope: !592)
!607 = !DILocalVariable(name: "mwlen", scope: !592, file: !29, line: 33, type: !34)
!608 = !DILocation(line: 43, column: 15, scope: !592)
!609 = !DILocalVariable(name: "mlen", scope: !592, file: !29, line: 33, type: !34)
!610 = !DILocation(line: 44, column: 18, scope: !592)
!611 = !DILocation(line: 44, column: 8, scope: !592)
!612 = !DILocalVariable(name: "t1", scope: !592, file: !29, line: 34, type: !116)
!613 = !DILocation(line: 46, column: 11, scope: !592)
!614 = !DILocalVariable(name: "t2", scope: !592, file: !29, line: 34, type: !116)
!615 = !DILocation(line: 54, column: 21, scope: !616)
!616 = distinct !DILexicalBlock(scope: !592, file: !29, line: 54, column: 6)
!617 = !DILocation(line: 54, column: 12, scope: !616)
!618 = !DILocation(line: 54, column: 6, scope: !592)
!619 = !DILocation(line: 55, column: 3, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !29, line: 54, column: 28)
!621 = !DILocalVariable(name: "win_len", scope: !592, file: !29, line: 37, type: !285)
!622 = !DILocation(line: 57, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !592, file: !29, line: 57, column: 2)
!624 = !DILocation(line: 0, scope: !623)
!625 = !DILocation(line: 57, column: 28, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !29, line: 57, column: 2)
!627 = !DILocation(line: 57, column: 2, scope: !623)
!628 = !DILocation(line: 58, column: 21, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !29, line: 58, column: 7)
!630 = distinct !DILexicalBlock(scope: !626, file: !29, line: 57, column: 45)
!631 = !DILocation(line: 58, column: 33, scope: !629)
!632 = !DILocation(line: 58, column: 7, scope: !629)
!633 = !DILocation(line: 58, column: 38, scope: !629)
!634 = !DILocation(line: 58, column: 46, scope: !629)
!635 = !DILocation(line: 58, column: 7, scope: !630)
!636 = !DILocation(line: 59, column: 4, scope: !637)
!637 = distinct !DILexicalBlock(scope: !629, file: !29, line: 58, column: 56)
!638 = !DILocation(line: 61, column: 2, scope: !630)
!639 = !DILocation(line: 57, column: 41, scope: !626)
!640 = !DILocation(line: 57, column: 2, scope: !626)
!641 = distinct !{!641, !627, !642, !98}
!642 = !DILocation(line: 61, column: 2, scope: !623)
!643 = !DILocation(line: 66, column: 2, scope: !592)
!644 = !DILocation(line: 73, column: 14, scope: !645)
!645 = distinct !DILexicalBlock(scope: !592, file: !29, line: 73, column: 6)
!646 = !DILocation(line: 73, column: 6, scope: !592)
!647 = !DILocation(line: 74, column: 3, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !29, line: 73, column: 20)
!649 = !DILocation(line: 75, column: 2, scope: !648)
!650 = !DILocation(line: 76, column: 13, scope: !651)
!651 = distinct !DILexicalBlock(scope: !645, file: !29, line: 75, column: 9)
!652 = !DILocation(line: 76, column: 3, scope: !651)
!653 = !DILocation(line: 77, column: 13, scope: !651)
!654 = !DILocalVariable(name: "base", scope: !592, file: !29, line: 34, type: !116)
!655 = !DILocalVariable(name: "u", scope: !592, file: !29, line: 35, type: !34)
!656 = !DILocation(line: 78, column: 8, scope: !657)
!657 = distinct !DILexicalBlock(scope: !651, file: !29, line: 78, column: 3)
!658 = !DILocation(line: 0, scope: !651)
!659 = !DILocation(line: 0, scope: !657)
!660 = !DILocation(line: 78, column: 32, scope: !661)
!661 = distinct !DILexicalBlock(scope: !657, file: !29, line: 78, column: 3)
!662 = !DILocation(line: 78, column: 19, scope: !661)
!663 = !DILocation(line: 78, column: 17, scope: !661)
!664 = !DILocation(line: 78, column: 3, scope: !657)
!665 = !DILocation(line: 79, column: 25, scope: !666)
!666 = distinct !DILexicalBlock(scope: !661, file: !29, line: 78, column: 51)
!667 = !DILocation(line: 79, column: 4, scope: !666)
!668 = !DILocation(line: 80, column: 9, scope: !666)
!669 = !DILocation(line: 81, column: 3, scope: !666)
!670 = !DILocation(line: 78, column: 47, scope: !661)
!671 = !DILocation(line: 78, column: 3, scope: !661)
!672 = distinct !{!672, !664, !673, !98}
!673 = !DILocation(line: 81, column: 3, scope: !657)
!674 = !DILocation(line: 89, column: 17, scope: !592)
!675 = !DILocation(line: 89, column: 2, scope: !592)
!676 = !DILocation(line: 90, column: 5, scope: !592)
!677 = !DILocation(line: 90, column: 10, scope: !592)
!678 = !DILocation(line: 90, column: 16, scope: !592)
!679 = !DILocation(line: 90, column: 2, scope: !592)
!680 = !DILocation(line: 90, column: 22, scope: !592)
!681 = !DILocation(line: 91, column: 2, scope: !592)
!682 = !DILocalVariable(name: "acc", scope: !592, file: !29, line: 36, type: !6)
!683 = !DILocalVariable(name: "acc_len", scope: !592, file: !29, line: 37, type: !285)
!684 = !DILocation(line: 99, column: 2, scope: !592)
!685 = !DILocation(line: 99, column: 17, scope: !592)
!686 = !DILocation(line: 99, column: 21, scope: !592)
!687 = !DILocation(line: 99, column: 29, scope: !592)
!688 = !DILocalVariable(name: "k", scope: !689, file: !29, line: 100, type: !285)
!689 = distinct !DILexicalBlock(scope: !592, file: !29, line: 99, column: 34)
!690 = !DILocation(line: 0, scope: !689)
!691 = !DILocation(line: 107, column: 15, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !29, line: 107, column: 7)
!693 = !DILocation(line: 107, column: 7, scope: !689)
!694 = !DILocation(line: 108, column: 13, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !29, line: 108, column: 8)
!696 = distinct !DILexicalBlock(scope: !692, file: !29, line: 107, column: 26)
!697 = !DILocation(line: 108, column: 8, scope: !696)
!698 = !DILocation(line: 109, column: 16, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !29, line: 108, column: 18)
!700 = !DILocation(line: 109, column: 27, scope: !699)
!701 = !DILocation(line: 109, column: 24, scope: !699)
!702 = !DILocation(line: 109, column: 22, scope: !699)
!703 = !DILocation(line: 110, column: 10, scope: !699)
!704 = !DILocation(line: 111, column: 13, scope: !699)
!705 = !DILocation(line: 112, column: 4, scope: !699)
!706 = !DILocation(line: 115, column: 3, scope: !696)
!707 = !DILocation(line: 106, column: 5, scope: !689)
!708 = !DILocation(line: 116, column: 27, scope: !689)
!709 = !DILocation(line: 116, column: 15, scope: !689)
!710 = !DILocation(line: 116, column: 49, scope: !689)
!711 = !DILocation(line: 116, column: 55, scope: !689)
!712 = !DILocation(line: 116, column: 33, scope: !689)
!713 = !DILocalVariable(name: "bits", scope: !689, file: !29, line: 101, type: !6)
!714 = !DILocation(line: 117, column: 11, scope: !689)
!715 = !DILocalVariable(name: "i", scope: !689, file: !29, line: 100, type: !285)
!716 = !DILocation(line: 122, column: 8, scope: !717)
!717 = distinct !DILexicalBlock(scope: !689, file: !29, line: 122, column: 3)
!718 = !DILocation(line: 0, scope: !717)
!719 = !DILocation(line: 122, column: 17, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !29, line: 122, column: 3)
!721 = !DILocation(line: 122, column: 3, scope: !717)
!722 = !DILocation(line: 123, column: 4, scope: !723)
!723 = distinct !DILexicalBlock(scope: !720, file: !29, line: 122, column: 28)
!724 = !DILocation(line: 124, column: 4, scope: !723)
!725 = !DILocation(line: 125, column: 3, scope: !723)
!726 = !DILocation(line: 122, column: 24, scope: !720)
!727 = !DILocation(line: 122, column: 3, scope: !720)
!728 = distinct !{!728, !721, !729, !98}
!729 = !DILocation(line: 125, column: 3, scope: !717)
!730 = !DILocation(line: 133, column: 15, scope: !731)
!731 = distinct !DILexicalBlock(scope: !689, file: !29, line: 133, column: 7)
!732 = !DILocation(line: 133, column: 7, scope: !689)
!733 = !DILocation(line: 134, column: 20, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !29, line: 133, column: 20)
!735 = !DILocation(line: 134, column: 4, scope: !734)
!736 = !DILocation(line: 135, column: 14, scope: !734)
!737 = !DILocation(line: 136, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !29, line: 136, column: 4)
!739 = !DILocation(line: 0, scope: !734)
!740 = !DILocation(line: 0, scope: !738)
!741 = !DILocation(line: 136, column: 33, scope: !742)
!742 = distinct !DILexicalBlock(scope: !738, file: !29, line: 136, column: 4)
!743 = !DILocation(line: 136, column: 20, scope: !742)
!744 = !DILocation(line: 136, column: 18, scope: !742)
!745 = !DILocation(line: 136, column: 4, scope: !738)
!746 = !DILocation(line: 139, column: 16, scope: !747)
!747 = distinct !DILexicalBlock(scope: !742, file: !29, line: 136, column: 46)
!748 = !DILocation(line: 139, column: 13, scope: !747)
!749 = !DILocation(line: 139, column: 12, scope: !747)
!750 = !DILocalVariable(name: "mask", scope: !747, file: !29, line: 137, type: !6)
!751 = !DILocation(line: 0, scope: !747)
!752 = !DILocalVariable(name: "v", scope: !592, file: !29, line: 35, type: !34)
!753 = !DILocation(line: 140, column: 10, scope: !754)
!754 = distinct !DILexicalBlock(scope: !747, file: !29, line: 140, column: 5)
!755 = !DILocation(line: 0, scope: !754)
!756 = !DILocation(line: 140, column: 19, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !29, line: 140, column: 5)
!758 = !DILocation(line: 140, column: 5, scope: !754)
!759 = !DILocation(line: 141, column: 22, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !29, line: 140, column: 34)
!761 = !DILocation(line: 141, column: 20, scope: !760)
!762 = !DILocation(line: 141, column: 6, scope: !760)
!763 = !DILocation(line: 141, column: 12, scope: !760)
!764 = !DILocation(line: 142, column: 5, scope: !760)
!765 = !DILocation(line: 140, column: 30, scope: !757)
!766 = !DILocation(line: 140, column: 5, scope: !757)
!767 = distinct !{!767, !758, !768, !98}
!768 = !DILocation(line: 142, column: 5, scope: !754)
!769 = !DILocation(line: 143, column: 10, scope: !747)
!770 = !DILocation(line: 144, column: 4, scope: !747)
!771 = !DILocation(line: 136, column: 42, scope: !742)
!772 = !DILocation(line: 136, column: 4, scope: !742)
!773 = distinct !{!773, !745, !774, !98}
!774 = !DILocation(line: 144, column: 4, scope: !738)
!775 = !DILocation(line: 145, column: 3, scope: !734)
!776 = !DILocation(line: 151, column: 3, scope: !689)
!777 = !DILocation(line: 152, column: 9, scope: !689)
!778 = !DILocation(line: 152, column: 23, scope: !689)
!779 = !DILocation(line: 152, column: 26, scope: !689)
!780 = !DILocation(line: 152, column: 3, scope: !689)
!781 = distinct !{!781, !684, !782, !98}
!782 = !DILocation(line: 153, column: 2, scope: !592)
!783 = !DILocation(line: 158, column: 2, scope: !592)
!784 = !DILocation(line: 159, column: 2, scope: !592)
!785 = !DILocation(line: 160, column: 1, scope: !592)
!786 = distinct !DISubprogram(name: "br_i31_zero", scope: !101, file: !101, line: 1383, type: !410, scopeLine: 1384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!787 = !DILocalVariable(name: "x", arg: 1, scope: !786, file: !101, line: 1383, type: !116)
!788 = !DILocation(line: 0, scope: !786)
!789 = !DILocalVariable(name: "bit_len", arg: 2, scope: !786, file: !101, line: 1383, type: !6)
!790 = !DILocation(line: 1385, column: 5, scope: !786)
!791 = !DILocation(line: 1385, column: 8, scope: !786)
!792 = !DILocation(line: 1386, column: 2, scope: !786)
!793 = !DILocation(line: 1386, column: 25, scope: !786)
!794 = !DILocation(line: 1386, column: 31, scope: !786)
!795 = !DILocation(line: 1386, column: 15, scope: !786)
!796 = !DILocation(line: 1386, column: 37, scope: !786)
!797 = !DILocation(line: 1387, column: 1, scope: !786)
!798 = distinct !DISubprogram(name: "EQ", scope: !101, file: !101, line: 779, type: !193, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!799 = !DILocalVariable(name: "x", arg: 1, scope: !798, file: !101, line: 779, type: !6)
!800 = !DILocation(line: 0, scope: !798)
!801 = !DILocalVariable(name: "y", arg: 2, scope: !798, file: !101, line: 779, type: !6)
!802 = !DILocation(line: 783, column: 8, scope: !798)
!803 = !DILocalVariable(name: "q", scope: !798, file: !101, line: 781, type: !6)
!804 = !DILocation(line: 784, column: 18, scope: !798)
!805 = !DILocation(line: 784, column: 16, scope: !798)
!806 = !DILocation(line: 784, column: 22, scope: !798)
!807 = !DILocation(line: 784, column: 9, scope: !798)
!808 = !DILocation(line: 784, column: 2, scope: !798)
!809 = distinct !DISubprogram(name: "NEQ", scope: !101, file: !101, line: 791, type: !193, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!810 = !DILocalVariable(name: "x", arg: 1, scope: !809, file: !101, line: 791, type: !6)
!811 = !DILocation(line: 0, scope: !809)
!812 = !DILocalVariable(name: "y", arg: 2, scope: !809, file: !101, line: 791, type: !6)
!813 = !DILocation(line: 795, column: 8, scope: !809)
!814 = !DILocalVariable(name: "q", scope: !809, file: !101, line: 793, type: !6)
!815 = !DILocation(line: 796, column: 14, scope: !809)
!816 = !DILocation(line: 796, column: 12, scope: !809)
!817 = !DILocation(line: 796, column: 18, scope: !809)
!818 = !DILocation(line: 796, column: 2, scope: !809)
!819 = distinct !DISubprogram(name: "NOT", scope: !101, file: !101, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!820 = !DILocalVariable(name: "ctl", arg: 1, scope: !819, file: !101, line: 761, type: !6)
!821 = !DILocation(line: 0, scope: !819)
!822 = !DILocation(line: 763, column: 13, scope: !819)
!823 = !DILocation(line: 763, column: 2, scope: !819)
!824 = distinct !DISubprogram(name: "br_i31_montymul", scope: !32, file: !32, line: 29, type: !825, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !2)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !116, !117, !117, !117, !6}
!827 = !DILocalVariable(name: "d", arg: 1, scope: !824, file: !32, line: 29, type: !116)
!828 = !DILocation(line: 0, scope: !824)
!829 = !DILocalVariable(name: "x", arg: 2, scope: !824, file: !32, line: 29, type: !117)
!830 = !DILocalVariable(name: "y", arg: 3, scope: !824, file: !32, line: 29, type: !117)
!831 = !DILocalVariable(name: "m", arg: 4, scope: !824, file: !32, line: 30, type: !117)
!832 = !DILocalVariable(name: "m0i", arg: 5, scope: !824, file: !32, line: 30, type: !6)
!833 = !DILocation(line: 46, column: 9, scope: !824)
!834 = !DILocation(line: 46, column: 14, scope: !824)
!835 = !DILocation(line: 46, column: 20, scope: !824)
!836 = !DILocation(line: 46, column: 8, scope: !824)
!837 = !DILocalVariable(name: "len", scope: !824, file: !32, line: 43, type: !34)
!838 = !DILocation(line: 47, column: 13, scope: !824)
!839 = !DILocalVariable(name: "len4", scope: !824, file: !32, line: 43, type: !34)
!840 = !DILocation(line: 48, column: 17, scope: !824)
!841 = !DILocation(line: 48, column: 2, scope: !824)
!842 = !DILocalVariable(name: "dh", scope: !824, file: !32, line: 44, type: !6)
!843 = !DILocalVariable(name: "u", scope: !824, file: !32, line: 43, type: !34)
!844 = !DILocation(line: 50, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !824, file: !32, line: 50, column: 2)
!846 = !DILocation(line: 0, scope: !845)
!847 = !DILocation(line: 50, column: 16, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !32, line: 50, column: 2)
!849 = !DILocation(line: 50, column: 2, scope: !845)
!850 = !DILocation(line: 72, column: 12, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !32, line: 50, column: 29)
!852 = !DILocation(line: 72, column: 8, scope: !851)
!853 = !DILocalVariable(name: "xu", scope: !851, file: !32, line: 65, type: !6)
!854 = !DILocation(line: 0, scope: !851)
!855 = !DILocation(line: 73, column: 7, scope: !851)
!856 = !DILocalVariable(name: "f", scope: !851, file: !32, line: 65, type: !6)
!857 = !DILocalVariable(name: "r", scope: !851, file: !32, line: 67, type: !25)
!858 = !DILocalVariable(name: "v", scope: !824, file: !32, line: 43, type: !34)
!859 = !DILocation(line: 76, column: 8, scope: !860)
!860 = distinct !DILexicalBlock(scope: !851, file: !32, line: 76, column: 3)
!861 = !DILocation(line: 0, scope: !860)
!862 = !DILocation(line: 76, column: 17, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !32, line: 76, column: 3)
!864 = !DILocation(line: 76, column: 3, scope: !860)
!865 = !DILocation(line: 79, column: 22, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !32, line: 76, column: 33)
!867 = !DILocation(line: 79, column: 18, scope: !866)
!868 = !DILocation(line: 79, column: 8, scope: !866)
!869 = !DILocation(line: 79, column: 29, scope: !866)
!870 = !DILocation(line: 79, column: 27, scope: !866)
!871 = !DILocation(line: 80, column: 7, scope: !866)
!872 = !DILocation(line: 80, column: 5, scope: !866)
!873 = !DILocation(line: 80, column: 26, scope: !866)
!874 = !DILocalVariable(name: "z", scope: !866, file: !32, line: 77, type: !25)
!875 = !DILocation(line: 0, scope: !866)
!876 = !DILocation(line: 81, column: 10, scope: !866)
!877 = !DILocation(line: 82, column: 15, scope: !866)
!878 = !DILocation(line: 82, column: 27, scope: !866)
!879 = !DILocation(line: 82, column: 8, scope: !866)
!880 = !DILocation(line: 82, column: 4, scope: !866)
!881 = !DILocation(line: 82, column: 13, scope: !866)
!882 = !DILocation(line: 83, column: 22, scope: !866)
!883 = !DILocation(line: 83, column: 18, scope: !866)
!884 = !DILocation(line: 83, column: 8, scope: !866)
!885 = !DILocation(line: 83, column: 29, scope: !866)
!886 = !DILocation(line: 83, column: 27, scope: !866)
!887 = !DILocation(line: 84, column: 7, scope: !866)
!888 = !DILocation(line: 84, column: 5, scope: !866)
!889 = !DILocation(line: 84, column: 26, scope: !866)
!890 = !DILocation(line: 85, column: 10, scope: !866)
!891 = !DILocation(line: 86, column: 15, scope: !866)
!892 = !DILocation(line: 86, column: 27, scope: !866)
!893 = !DILocation(line: 86, column: 8, scope: !866)
!894 = !DILocation(line: 86, column: 4, scope: !866)
!895 = !DILocation(line: 86, column: 13, scope: !866)
!896 = !DILocation(line: 87, column: 22, scope: !866)
!897 = !DILocation(line: 87, column: 18, scope: !866)
!898 = !DILocation(line: 87, column: 8, scope: !866)
!899 = !DILocation(line: 87, column: 29, scope: !866)
!900 = !DILocation(line: 87, column: 27, scope: !866)
!901 = !DILocation(line: 88, column: 7, scope: !866)
!902 = !DILocation(line: 88, column: 5, scope: !866)
!903 = !DILocation(line: 88, column: 26, scope: !866)
!904 = !DILocation(line: 89, column: 10, scope: !866)
!905 = !DILocation(line: 90, column: 15, scope: !866)
!906 = !DILocation(line: 90, column: 27, scope: !866)
!907 = !DILocation(line: 90, column: 8, scope: !866)
!908 = !DILocation(line: 90, column: 4, scope: !866)
!909 = !DILocation(line: 90, column: 13, scope: !866)
!910 = !DILocation(line: 91, column: 22, scope: !866)
!911 = !DILocation(line: 91, column: 18, scope: !866)
!912 = !DILocation(line: 91, column: 8, scope: !866)
!913 = !DILocation(line: 91, column: 29, scope: !866)
!914 = !DILocation(line: 91, column: 27, scope: !866)
!915 = !DILocation(line: 92, column: 7, scope: !866)
!916 = !DILocation(line: 92, column: 5, scope: !866)
!917 = !DILocation(line: 92, column: 26, scope: !866)
!918 = !DILocation(line: 93, column: 10, scope: !866)
!919 = !DILocation(line: 94, column: 15, scope: !866)
!920 = !DILocation(line: 94, column: 27, scope: !866)
!921 = !DILocation(line: 94, column: 8, scope: !866)
!922 = !DILocation(line: 94, column: 4, scope: !866)
!923 = !DILocation(line: 94, column: 13, scope: !866)
!924 = !DILocation(line: 95, column: 3, scope: !866)
!925 = !DILocation(line: 76, column: 27, scope: !863)
!926 = !DILocation(line: 76, column: 3, scope: !863)
!927 = distinct !{!927, !864, !928, !98}
!928 = !DILocation(line: 95, column: 3, scope: !860)
!929 = !DILocation(line: 96, column: 3, scope: !851)
!930 = !DILocation(line: 96, column: 12, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !32, line: 96, column: 3)
!932 = distinct !DILexicalBlock(scope: !851, file: !32, line: 96, column: 3)
!933 = !DILocation(line: 96, column: 3, scope: !932)
!934 = !DILocation(line: 99, column: 22, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !32, line: 96, column: 25)
!936 = !DILocation(line: 99, column: 18, scope: !935)
!937 = !DILocation(line: 99, column: 8, scope: !935)
!938 = !DILocation(line: 99, column: 29, scope: !935)
!939 = !DILocation(line: 99, column: 27, scope: !935)
!940 = !DILocation(line: 100, column: 7, scope: !935)
!941 = !DILocation(line: 100, column: 5, scope: !935)
!942 = !DILocation(line: 100, column: 26, scope: !935)
!943 = !DILocalVariable(name: "z", scope: !935, file: !32, line: 97, type: !25)
!944 = !DILocation(line: 0, scope: !935)
!945 = !DILocation(line: 101, column: 10, scope: !935)
!946 = !DILocation(line: 102, column: 11, scope: !935)
!947 = !DILocation(line: 102, column: 23, scope: !935)
!948 = !DILocation(line: 102, column: 4, scope: !935)
!949 = !DILocation(line: 102, column: 9, scope: !935)
!950 = !DILocation(line: 103, column: 3, scope: !935)
!951 = !DILocation(line: 96, column: 21, scope: !931)
!952 = !DILocation(line: 96, column: 3, scope: !931)
!953 = distinct !{!953, !933, !954, !98}
!954 = !DILocation(line: 103, column: 3, scope: !932)
!955 = !DILocation(line: 110, column: 6, scope: !851)
!956 = !DILocation(line: 111, column: 15, scope: !851)
!957 = !DILocation(line: 111, column: 3, scope: !851)
!958 = !DILocation(line: 111, column: 10, scope: !851)
!959 = !DILocation(line: 112, column: 6, scope: !851)
!960 = !DILocation(line: 113, column: 2, scope: !851)
!961 = !DILocation(line: 50, column: 25, scope: !848)
!962 = !DILocation(line: 50, column: 2, scope: !848)
!963 = distinct !{!963, !849, !964, !98}
!964 = !DILocation(line: 113, column: 2, scope: !845)
!965 = !DILocation(line: 120, column: 9, scope: !824)
!966 = !DILocation(line: 120, column: 2, scope: !824)
!967 = !DILocation(line: 120, column: 7, scope: !824)
!968 = !DILocation(line: 126, column: 19, scope: !824)
!969 = !DILocation(line: 126, column: 36, scope: !824)
!970 = !DILocation(line: 126, column: 32, scope: !824)
!971 = !DILocation(line: 126, column: 30, scope: !824)
!972 = !DILocation(line: 126, column: 2, scope: !824)
!973 = !DILocation(line: 127, column: 1, scope: !824)
!974 = distinct !DISubprogram(name: "br_i31_zero", scope: !101, file: !101, line: 1383, type: !410, scopeLine: 1384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !31, retainedNodes: !2)
!975 = !DILocalVariable(name: "x", arg: 1, scope: !974, file: !101, line: 1383, type: !116)
!976 = !DILocation(line: 0, scope: !974)
!977 = !DILocalVariable(name: "bit_len", arg: 2, scope: !974, file: !101, line: 1383, type: !6)
!978 = !DILocation(line: 1385, column: 5, scope: !974)
!979 = !DILocation(line: 1385, column: 8, scope: !974)
!980 = !DILocation(line: 1386, column: 2, scope: !974)
!981 = !DILocation(line: 1386, column: 25, scope: !974)
!982 = !DILocation(line: 1386, column: 31, scope: !974)
!983 = !DILocation(line: 1386, column: 15, scope: !974)
!984 = !DILocation(line: 1386, column: 37, scope: !974)
!985 = !DILocation(line: 1387, column: 1, scope: !974)
!986 = distinct !DISubprogram(name: "NEQ", scope: !101, file: !101, line: 791, type: !193, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !31, retainedNodes: !2)
!987 = !DILocalVariable(name: "x", arg: 1, scope: !986, file: !101, line: 791, type: !6)
!988 = !DILocation(line: 0, scope: !986)
!989 = !DILocalVariable(name: "y", arg: 2, scope: !986, file: !101, line: 791, type: !6)
!990 = !DILocation(line: 795, column: 8, scope: !986)
!991 = !DILocalVariable(name: "q", scope: !986, file: !101, line: 793, type: !6)
!992 = !DILocation(line: 796, column: 14, scope: !986)
!993 = !DILocation(line: 796, column: 12, scope: !986)
!994 = !DILocation(line: 796, column: 18, scope: !986)
!995 = !DILocation(line: 796, column: 2, scope: !986)
!996 = distinct !DISubprogram(name: "NOT", scope: !101, file: !101, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !31, retainedNodes: !2)
!997 = !DILocalVariable(name: "ctl", arg: 1, scope: !996, file: !101, line: 761, type: !6)
!998 = !DILocation(line: 0, scope: !996)
!999 = !DILocation(line: 763, column: 13, scope: !996)
!1000 = !DILocation(line: 763, column: 2, scope: !996)
!1001 = distinct !DISubprogram(name: "br_i31_mulacc", scope: !37, file: !37, line: 29, type: !1002, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !2)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !116, !117, !117}
!1004 = !DILocalVariable(name: "d", arg: 1, scope: !1001, file: !37, line: 29, type: !116)
!1005 = !DILocation(line: 0, scope: !1001)
!1006 = !DILocalVariable(name: "a", arg: 2, scope: !1001, file: !37, line: 29, type: !117)
!1007 = !DILocalVariable(name: "b", arg: 3, scope: !1001, file: !37, line: 29, type: !117)
!1008 = !DILocation(line: 34, column: 10, scope: !1001)
!1009 = !DILocation(line: 34, column: 15, scope: !1001)
!1010 = !DILocation(line: 34, column: 21, scope: !1001)
!1011 = !DILocation(line: 34, column: 9, scope: !1001)
!1012 = !DILocalVariable(name: "alen", scope: !1001, file: !37, line: 31, type: !34)
!1013 = !DILocation(line: 35, column: 10, scope: !1001)
!1014 = !DILocation(line: 35, column: 15, scope: !1001)
!1015 = !DILocation(line: 35, column: 21, scope: !1001)
!1016 = !DILocation(line: 35, column: 9, scope: !1001)
!1017 = !DILocalVariable(name: "blen", scope: !1001, file: !37, line: 31, type: !34)
!1018 = !DILocation(line: 41, column: 8, scope: !1001)
!1019 = !DILocation(line: 41, column: 13, scope: !1001)
!1020 = !DILocation(line: 41, column: 22, scope: !1001)
!1021 = !DILocation(line: 41, column: 27, scope: !1001)
!1022 = !DILocation(line: 41, column: 19, scope: !1001)
!1023 = !DILocalVariable(name: "dl", scope: !1001, file: !37, line: 32, type: !6)
!1024 = !DILocation(line: 42, column: 8, scope: !1001)
!1025 = !DILocation(line: 42, column: 13, scope: !1001)
!1026 = !DILocation(line: 42, column: 22, scope: !1001)
!1027 = !DILocation(line: 42, column: 27, scope: !1001)
!1028 = !DILocation(line: 42, column: 19, scope: !1001)
!1029 = !DILocalVariable(name: "dh", scope: !1001, file: !37, line: 32, type: !6)
!1030 = !DILocation(line: 43, column: 13, scope: !1001)
!1031 = !DILocation(line: 43, column: 19, scope: !1001)
!1032 = !DILocation(line: 43, column: 42, scope: !1001)
!1033 = !DILocation(line: 43, column: 27, scope: !1001)
!1034 = !DILocation(line: 43, column: 48, scope: !1001)
!1035 = !DILocation(line: 43, column: 24, scope: !1001)
!1036 = !DILocation(line: 43, column: 2, scope: !1001)
!1037 = !DILocation(line: 43, column: 7, scope: !1001)
!1038 = !DILocalVariable(name: "u", scope: !1001, file: !37, line: 31, type: !34)
!1039 = !DILocation(line: 45, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1001, file: !37, line: 45, column: 2)
!1041 = !DILocation(line: 0, scope: !1040)
!1042 = !DILocation(line: 45, column: 16, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !37, line: 45, column: 2)
!1044 = !DILocation(line: 45, column: 2, scope: !1040)
!1045 = !DILocation(line: 63, column: 11, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !37, line: 45, column: 30)
!1047 = !DILocation(line: 63, column: 7, scope: !1046)
!1048 = !DILocalVariable(name: "f", scope: !1046, file: !37, line: 46, type: !6)
!1049 = !DILocation(line: 0, scope: !1046)
!1050 = !DILocalVariable(name: "cc", scope: !1046, file: !37, line: 58, type: !25)
!1051 = !DILocalVariable(name: "v", scope: !1046, file: !37, line: 47, type: !34)
!1052 = !DILocation(line: 65, column: 8, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1046, file: !37, line: 65, column: 3)
!1054 = !DILocation(line: 0, scope: !1053)
!1055 = !DILocation(line: 65, column: 17, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !37, line: 65, column: 3)
!1057 = !DILocation(line: 65, column: 3, scope: !1053)
!1058 = !DILocation(line: 68, column: 22, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !37, line: 65, column: 31)
!1060 = !DILocation(line: 68, column: 26, scope: !1059)
!1061 = !DILocation(line: 68, column: 18, scope: !1059)
!1062 = !DILocation(line: 68, column: 8, scope: !1059)
!1063 = !DILocation(line: 68, column: 33, scope: !1059)
!1064 = !DILocation(line: 68, column: 31, scope: !1059)
!1065 = !DILocation(line: 68, column: 52, scope: !1059)
!1066 = !DILocalVariable(name: "z", scope: !1059, file: !37, line: 66, type: !25)
!1067 = !DILocation(line: 0, scope: !1059)
!1068 = !DILocation(line: 69, column: 11, scope: !1059)
!1069 = !DILocation(line: 70, column: 19, scope: !1059)
!1070 = !DILocation(line: 70, column: 31, scope: !1059)
!1071 = !DILocation(line: 70, column: 8, scope: !1059)
!1072 = !DILocation(line: 70, column: 12, scope: !1059)
!1073 = !DILocation(line: 70, column: 4, scope: !1059)
!1074 = !DILocation(line: 70, column: 17, scope: !1059)
!1075 = !DILocation(line: 71, column: 3, scope: !1059)
!1076 = !DILocation(line: 65, column: 27, scope: !1056)
!1077 = !DILocation(line: 65, column: 3, scope: !1056)
!1078 = distinct !{!1078, !1057, !1079, !98}
!1079 = !DILocation(line: 71, column: 3, scope: !1053)
!1080 = !DILocation(line: 72, column: 21, scope: !1046)
!1081 = !DILocation(line: 72, column: 7, scope: !1046)
!1082 = !DILocation(line: 72, column: 11, scope: !1046)
!1083 = !DILocation(line: 72, column: 3, scope: !1046)
!1084 = !DILocation(line: 72, column: 19, scope: !1046)
!1085 = !DILocation(line: 73, column: 2, scope: !1046)
!1086 = !DILocation(line: 45, column: 26, scope: !1043)
!1087 = !DILocation(line: 45, column: 2, scope: !1043)
!1088 = distinct !{!1088, !1044, !1089, !98}
!1089 = !DILocation(line: 73, column: 2, scope: !1040)
!1090 = !DILocation(line: 74, column: 1, scope: !1001)
!1091 = distinct !DISubprogram(name: "br_i31_muladd_small", scope: !39, file: !39, line: 29, type: !1092, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !2)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !116, !6, !117}
!1094 = !DILocalVariable(name: "x", arg: 1, scope: !1091, file: !39, line: 29, type: !116)
!1095 = !DILocation(line: 0, scope: !1091)
!1096 = !DILocalVariable(name: "z", arg: 2, scope: !1091, file: !39, line: 29, type: !6)
!1097 = !DILocalVariable(name: "m", arg: 3, scope: !1091, file: !39, line: 29, type: !117)
!1098 = !DILocation(line: 42, column: 13, scope: !1091)
!1099 = !DILocalVariable(name: "m_bitlen", scope: !1091, file: !39, line: 31, type: !6)
!1100 = !DILocation(line: 43, column: 15, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1091, file: !39, line: 43, column: 6)
!1102 = !DILocation(line: 43, column: 6, scope: !1091)
!1103 = !DILocation(line: 44, column: 3, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !39, line: 43, column: 21)
!1105 = !DILocation(line: 46, column: 15, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1091, file: !39, line: 46, column: 6)
!1107 = !DILocation(line: 46, column: 6, scope: !1091)
!1108 = !DILocation(line: 49, column: 8, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !39, line: 46, column: 22)
!1110 = !DILocation(line: 49, column: 13, scope: !1109)
!1111 = !DILocalVariable(name: "hi", scope: !1091, file: !39, line: 34, type: !6)
!1112 = !DILocation(line: 50, column: 9, scope: !1109)
!1113 = !DILocation(line: 50, column: 14, scope: !1109)
!1114 = !DILocation(line: 50, column: 21, scope: !1109)
!1115 = !DILocalVariable(name: "lo", scope: !1109, file: !39, line: 47, type: !6)
!1116 = !DILocation(line: 0, scope: !1109)
!1117 = !DILocation(line: 51, column: 25, scope: !1109)
!1118 = !DILocation(line: 51, column: 10, scope: !1109)
!1119 = !DILocation(line: 51, column: 3, scope: !1109)
!1120 = !DILocation(line: 51, column: 8, scope: !1109)
!1121 = !DILocation(line: 52, column: 3, scope: !1109)
!1122 = !DILocation(line: 54, column: 19, scope: !1091)
!1123 = !DILocation(line: 54, column: 25, scope: !1091)
!1124 = !DILocation(line: 54, column: 9, scope: !1091)
!1125 = !DILocalVariable(name: "mlen", scope: !1091, file: !39, line: 33, type: !34)
!1126 = !DILocation(line: 55, column: 28, scope: !1091)
!1127 = !DILocalVariable(name: "mblr", scope: !1091, file: !39, line: 32, type: !10)
!1128 = !DILocation(line: 83, column: 7, scope: !1091)
!1129 = !DILocation(line: 84, column: 11, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1091, file: !39, line: 84, column: 6)
!1131 = !DILocation(line: 84, column: 6, scope: !1091)
!1132 = !DILocation(line: 85, column: 8, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !39, line: 84, column: 17)
!1134 = !DILocalVariable(name: "a0", scope: !1091, file: !39, line: 34, type: !6)
!1135 = !DILocation(line: 86, column: 13, scope: !1133)
!1136 = !DILocation(line: 86, column: 3, scope: !1133)
!1137 = !DILocation(line: 86, column: 20, scope: !1133)
!1138 = !DILocation(line: 86, column: 31, scope: !1133)
!1139 = !DILocation(line: 86, column: 36, scope: !1133)
!1140 = !DILocation(line: 87, column: 3, scope: !1133)
!1141 = !DILocation(line: 87, column: 8, scope: !1133)
!1142 = !DILocation(line: 88, column: 8, scope: !1133)
!1143 = !DILocalVariable(name: "a1", scope: !1091, file: !39, line: 34, type: !6)
!1144 = !DILocation(line: 89, column: 8, scope: !1133)
!1145 = !DILocalVariable(name: "b0", scope: !1091, file: !39, line: 34, type: !6)
!1146 = !DILocation(line: 90, column: 2, scope: !1133)
!1147 = !DILocation(line: 91, column: 10, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1130, file: !39, line: 90, column: 9)
!1149 = !DILocation(line: 91, column: 25, scope: !1148)
!1150 = !DILocation(line: 91, column: 18, scope: !1148)
!1151 = !DILocation(line: 91, column: 44, scope: !1148)
!1152 = !DILocation(line: 91, column: 37, scope: !1148)
!1153 = !DILocation(line: 91, column: 49, scope: !1148)
!1154 = !DILocation(line: 91, column: 34, scope: !1148)
!1155 = !DILocation(line: 92, column: 4, scope: !1148)
!1156 = !DILocation(line: 93, column: 13, scope: !1148)
!1157 = !DILocation(line: 93, column: 3, scope: !1148)
!1158 = !DILocation(line: 93, column: 20, scope: !1148)
!1159 = !DILocation(line: 93, column: 31, scope: !1148)
!1160 = !DILocation(line: 93, column: 36, scope: !1148)
!1161 = !DILocation(line: 94, column: 3, scope: !1148)
!1162 = !DILocation(line: 94, column: 8, scope: !1148)
!1163 = !DILocation(line: 95, column: 10, scope: !1148)
!1164 = !DILocation(line: 95, column: 25, scope: !1148)
!1165 = !DILocation(line: 95, column: 18, scope: !1148)
!1166 = !DILocation(line: 95, column: 44, scope: !1148)
!1167 = !DILocation(line: 95, column: 37, scope: !1148)
!1168 = !DILocation(line: 95, column: 49, scope: !1148)
!1169 = !DILocation(line: 95, column: 34, scope: !1148)
!1170 = !DILocation(line: 96, column: 4, scope: !1148)
!1171 = !DILocation(line: 97, column: 10, scope: !1148)
!1172 = !DILocation(line: 97, column: 25, scope: !1148)
!1173 = !DILocation(line: 97, column: 18, scope: !1148)
!1174 = !DILocation(line: 97, column: 44, scope: !1148)
!1175 = !DILocation(line: 97, column: 37, scope: !1148)
!1176 = !DILocation(line: 97, column: 49, scope: !1148)
!1177 = !DILocation(line: 97, column: 34, scope: !1148)
!1178 = !DILocation(line: 98, column: 4, scope: !1148)
!1179 = !DILocation(line: 0, scope: !1130)
!1180 = !DILocation(line: 114, column: 16, scope: !1091)
!1181 = !DILocation(line: 114, column: 31, scope: !1091)
!1182 = !DILocation(line: 114, column: 25, scope: !1091)
!1183 = !DILocation(line: 114, column: 6, scope: !1091)
!1184 = !DILocalVariable(name: "g", scope: !1091, file: !39, line: 34, type: !6)
!1185 = !DILocation(line: 115, column: 10, scope: !1091)
!1186 = !DILocation(line: 115, column: 38, scope: !1091)
!1187 = !DILocation(line: 115, column: 53, scope: !1091)
!1188 = !DILocation(line: 115, column: 34, scope: !1091)
!1189 = !DILocation(line: 115, column: 6, scope: !1091)
!1190 = !DILocalVariable(name: "q", scope: !1091, file: !39, line: 34, type: !6)
!1191 = !DILocalVariable(name: "cc", scope: !1091, file: !39, line: 36, type: !6)
!1192 = !DILocalVariable(name: "tb", scope: !1091, file: !39, line: 34, type: !6)
!1193 = !DILocalVariable(name: "u", scope: !1091, file: !39, line: 33, type: !34)
!1194 = !DILocation(line: 128, column: 7, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1091, file: !39, line: 128, column: 2)
!1196 = !DILocation(line: 0, scope: !1195)
!1197 = !DILocation(line: 128, column: 16, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !39, line: 128, column: 2)
!1199 = !DILocation(line: 128, column: 2, scope: !1195)
!1200 = !DILocation(line: 132, column: 8, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1198, file: !39, line: 128, column: 31)
!1202 = !DILocalVariable(name: "mw", scope: !1201, file: !39, line: 129, type: !6)
!1203 = !DILocation(line: 0, scope: !1201)
!1204 = !DILocation(line: 133, column: 8, scope: !1201)
!1205 = !DILocation(line: 133, column: 23, scope: !1201)
!1206 = !DILocation(line: 133, column: 21, scope: !1201)
!1207 = !DILocalVariable(name: "zl", scope: !1201, file: !39, line: 130, type: !25)
!1208 = !DILocation(line: 134, column: 22, scope: !1201)
!1209 = !DILocation(line: 134, column: 8, scope: !1201)
!1210 = !DILocation(line: 135, column: 8, scope: !1201)
!1211 = !DILocation(line: 135, column: 21, scope: !1201)
!1212 = !DILocalVariable(name: "zw", scope: !1201, file: !39, line: 129, type: !6)
!1213 = !DILocation(line: 136, column: 8, scope: !1201)
!1214 = !DILocalVariable(name: "xw", scope: !1201, file: !39, line: 129, type: !6)
!1215 = !DILocation(line: 137, column: 12, scope: !1201)
!1216 = !DILocalVariable(name: "nxw", scope: !1201, file: !39, line: 129, type: !6)
!1217 = !DILocation(line: 138, column: 13, scope: !1201)
!1218 = !DILocation(line: 138, column: 6, scope: !1201)
!1219 = !DILocation(line: 139, column: 7, scope: !1201)
!1220 = !DILocation(line: 140, column: 3, scope: !1201)
!1221 = !DILocation(line: 140, column: 8, scope: !1201)
!1222 = !DILocation(line: 141, column: 12, scope: !1201)
!1223 = !DILocation(line: 141, column: 29, scope: !1201)
!1224 = !DILocation(line: 141, column: 8, scope: !1201)
!1225 = !DILocation(line: 142, column: 2, scope: !1201)
!1226 = !DILocation(line: 128, column: 27, scope: !1198)
!1227 = !DILocation(line: 128, column: 2, scope: !1198)
!1228 = distinct !{!1228, !1199, !1229, !98}
!1229 = !DILocation(line: 142, column: 2, scope: !1195)
!1230 = !DILocation(line: 153, column: 9, scope: !1091)
!1231 = !DILocalVariable(name: "over", scope: !1091, file: !39, line: 35, type: !6)
!1232 = !DILocation(line: 154, column: 10, scope: !1091)
!1233 = !DILocation(line: 154, column: 24, scope: !1091)
!1234 = !DILocation(line: 154, column: 22, scope: !1091)
!1235 = !DILocation(line: 154, column: 16, scope: !1091)
!1236 = !DILocalVariable(name: "under", scope: !1091, file: !39, line: 35, type: !6)
!1237 = !DILocation(line: 155, column: 2, scope: !1091)
!1238 = !DILocation(line: 156, column: 2, scope: !1091)
!1239 = !DILocation(line: 157, column: 1, scope: !1091)
!1240 = distinct !DISubprogram(name: "br_rem", scope: !101, file: !101, line: 1050, type: !102, scopeLine: 1051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!1241 = !DILocalVariable(name: "hi", arg: 1, scope: !1240, file: !101, line: 1050, type: !6)
!1242 = !DILocation(line: 0, scope: !1240)
!1243 = !DILocalVariable(name: "lo", arg: 2, scope: !1240, file: !101, line: 1050, type: !6)
!1244 = !DILocalVariable(name: "d", arg: 3, scope: !1240, file: !101, line: 1050, type: !6)
!1245 = !DILocalVariable(name: "r", scope: !1240, file: !101, line: 1052, type: !6)
!1246 = !DILocation(line: 1052, column: 11, scope: !1240)
!1247 = !DILocation(line: 1054, column: 2, scope: !1240)
!1248 = !DILocation(line: 1055, column: 9, scope: !1240)
!1249 = !DILocation(line: 1055, column: 2, scope: !1240)
!1250 = distinct !DISubprogram(name: "br_div", scope: !101, file: !101, line: 1063, type: !102, scopeLine: 1064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!1251 = !DILocalVariable(name: "hi", arg: 1, scope: !1250, file: !101, line: 1063, type: !6)
!1252 = !DILocation(line: 0, scope: !1250)
!1253 = !DILocalVariable(name: "lo", arg: 2, scope: !1250, file: !101, line: 1063, type: !6)
!1254 = !DILocalVariable(name: "d", arg: 3, scope: !1250, file: !101, line: 1063, type: !6)
!1255 = !DILocalVariable(name: "r", scope: !1250, file: !101, line: 1065, type: !6)
!1256 = !DILocation(line: 1065, column: 11, scope: !1250)
!1257 = !DILocation(line: 1067, column: 9, scope: !1250)
!1258 = !DILocation(line: 1067, column: 2, scope: !1250)
!1259 = distinct !DISubprogram(name: "EQ", scope: !101, file: !101, line: 779, type: !193, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!1260 = !DILocalVariable(name: "x", arg: 1, scope: !1259, file: !101, line: 779, type: !6)
!1261 = !DILocation(line: 0, scope: !1259)
!1262 = !DILocalVariable(name: "y", arg: 2, scope: !1259, file: !101, line: 779, type: !6)
!1263 = !DILocation(line: 783, column: 8, scope: !1259)
!1264 = !DILocalVariable(name: "q", scope: !1259, file: !101, line: 781, type: !6)
!1265 = !DILocation(line: 784, column: 18, scope: !1259)
!1266 = !DILocation(line: 784, column: 16, scope: !1259)
!1267 = !DILocation(line: 784, column: 22, scope: !1259)
!1268 = !DILocation(line: 784, column: 9, scope: !1259)
!1269 = !DILocation(line: 784, column: 2, scope: !1259)
!1270 = distinct !DISubprogram(name: "MUX", scope: !101, file: !101, line: 770, type: !102, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!1271 = !DILocalVariable(name: "ctl", arg: 1, scope: !1270, file: !101, line: 770, type: !6)
!1272 = !DILocation(line: 0, scope: !1270)
!1273 = !DILocalVariable(name: "x", arg: 2, scope: !1270, file: !101, line: 770, type: !6)
!1274 = !DILocalVariable(name: "y", arg: 3, scope: !1270, file: !101, line: 770, type: !6)
!1275 = !DILocation(line: 772, column: 14, scope: !1270)
!1276 = !DILocation(line: 772, column: 24, scope: !1270)
!1277 = !DILocation(line: 772, column: 19, scope: !1270)
!1278 = !DILocation(line: 772, column: 11, scope: !1270)
!1279 = !DILocation(line: 772, column: 2, scope: !1270)
!1280 = distinct !DISubprogram(name: "GT", scope: !101, file: !101, line: 803, type: !193, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!1281 = !DILocalVariable(name: "x", arg: 1, scope: !1280, file: !101, line: 803, type: !6)
!1282 = !DILocation(line: 0, scope: !1280)
!1283 = !DILocalVariable(name: "y", arg: 2, scope: !1280, file: !101, line: 803, type: !6)
!1284 = !DILocation(line: 819, column: 8, scope: !1280)
!1285 = !DILocalVariable(name: "z", scope: !1280, file: !101, line: 817, type: !6)
!1286 = !DILocation(line: 820, column: 18, scope: !1280)
!1287 = !DILocation(line: 820, column: 28, scope: !1280)
!1288 = !DILocation(line: 820, column: 23, scope: !1280)
!1289 = !DILocation(line: 820, column: 12, scope: !1280)
!1290 = !DILocation(line: 820, column: 35, scope: !1280)
!1291 = !DILocation(line: 820, column: 2, scope: !1280)
!1292 = distinct !DISubprogram(name: "NOT", scope: !101, file: !101, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!1293 = !DILocalVariable(name: "ctl", arg: 1, scope: !1292, file: !101, line: 761, type: !6)
!1294 = !DILocation(line: 0, scope: !1292)
!1295 = !DILocation(line: 763, column: 13, scope: !1292)
!1296 = !DILocation(line: 763, column: 2, scope: !1292)
!1297 = distinct !DISubprogram(name: "br_i31_ninv31", scope: !42, file: !42, line: 29, type: !216, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !2)
!1298 = !DILocalVariable(name: "x", arg: 1, scope: !1297, file: !42, line: 29, type: !6)
!1299 = !DILocation(line: 0, scope: !1297)
!1300 = !DILocation(line: 33, column: 8, scope: !1297)
!1301 = !DILocalVariable(name: "y", scope: !1297, file: !42, line: 31, type: !6)
!1302 = !DILocation(line: 34, column: 13, scope: !1297)
!1303 = !DILocation(line: 34, column: 9, scope: !1297)
!1304 = !DILocation(line: 34, column: 4, scope: !1297)
!1305 = !DILocation(line: 35, column: 13, scope: !1297)
!1306 = !DILocation(line: 35, column: 9, scope: !1297)
!1307 = !DILocation(line: 35, column: 4, scope: !1297)
!1308 = !DILocation(line: 36, column: 13, scope: !1297)
!1309 = !DILocation(line: 36, column: 9, scope: !1297)
!1310 = !DILocation(line: 36, column: 4, scope: !1297)
!1311 = !DILocation(line: 37, column: 13, scope: !1297)
!1312 = !DILocation(line: 37, column: 9, scope: !1297)
!1313 = !DILocation(line: 37, column: 4, scope: !1297)
!1314 = !DILocation(line: 38, column: 15, scope: !1297)
!1315 = !DILocation(line: 38, column: 20, scope: !1297)
!1316 = !DILocation(line: 38, column: 9, scope: !1297)
!1317 = !DILocation(line: 38, column: 27, scope: !1297)
!1318 = !DILocation(line: 38, column: 2, scope: !1297)
!1319 = distinct !DISubprogram(name: "MUX", scope: !101, file: !101, line: 770, type: !102, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !41, retainedNodes: !2)
!1320 = !DILocalVariable(name: "ctl", arg: 1, scope: !1319, file: !101, line: 770, type: !6)
!1321 = !DILocation(line: 0, scope: !1319)
!1322 = !DILocalVariable(name: "x", arg: 2, scope: !1319, file: !101, line: 770, type: !6)
!1323 = !DILocalVariable(name: "y", arg: 3, scope: !1319, file: !101, line: 770, type: !6)
!1324 = !DILocation(line: 772, column: 14, scope: !1319)
!1325 = !DILocation(line: 772, column: 24, scope: !1319)
!1326 = !DILocation(line: 772, column: 19, scope: !1319)
!1327 = !DILocation(line: 772, column: 11, scope: !1319)
!1328 = !DILocation(line: 772, column: 2, scope: !1319)
!1329 = distinct !DISubprogram(name: "br_i31_reduce", scope: !44, file: !44, line: 29, type: !1002, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !2)
!1330 = !DILocalVariable(name: "x", arg: 1, scope: !1329, file: !44, line: 29, type: !116)
!1331 = !DILocation(line: 0, scope: !1329)
!1332 = !DILocalVariable(name: "a", arg: 2, scope: !1329, file: !44, line: 29, type: !117)
!1333 = !DILocalVariable(name: "m", arg: 3, scope: !1329, file: !44, line: 29, type: !117)
!1334 = !DILocation(line: 34, column: 13, scope: !1329)
!1335 = !DILocalVariable(name: "m_bitlen", scope: !1329, file: !44, line: 31, type: !6)
!1336 = !DILocation(line: 35, column: 19, scope: !1329)
!1337 = !DILocation(line: 35, column: 25, scope: !1329)
!1338 = !DILocation(line: 35, column: 9, scope: !1329)
!1339 = !DILocalVariable(name: "mlen", scope: !1329, file: !44, line: 32, type: !34)
!1340 = !DILocation(line: 37, column: 2, scope: !1329)
!1341 = !DILocation(line: 37, column: 7, scope: !1329)
!1342 = !DILocation(line: 38, column: 15, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1329, file: !44, line: 38, column: 6)
!1344 = !DILocation(line: 38, column: 6, scope: !1329)
!1345 = !DILocation(line: 39, column: 3, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !44, line: 38, column: 21)
!1347 = !DILocation(line: 46, column: 13, scope: !1329)
!1348 = !DILocalVariable(name: "a_bitlen", scope: !1329, file: !44, line: 31, type: !6)
!1349 = !DILocation(line: 47, column: 19, scope: !1329)
!1350 = !DILocation(line: 47, column: 25, scope: !1329)
!1351 = !DILocation(line: 47, column: 9, scope: !1329)
!1352 = !DILocalVariable(name: "alen", scope: !1329, file: !44, line: 32, type: !34)
!1353 = !DILocation(line: 48, column: 15, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1329, file: !44, line: 48, column: 6)
!1355 = !DILocation(line: 48, column: 6, scope: !1329)
!1356 = !DILocation(line: 49, column: 12, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !44, line: 48, column: 27)
!1358 = !DILocation(line: 49, column: 3, scope: !1357)
!1359 = !DILocation(line: 49, column: 19, scope: !1357)
!1360 = !DILocation(line: 49, column: 29, scope: !1357)
!1361 = !DILocalVariable(name: "u", scope: !1329, file: !44, line: 32, type: !34)
!1362 = !DILocation(line: 50, column: 8, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1357, file: !44, line: 50, column: 3)
!1364 = !DILocation(line: 0, scope: !1363)
!1365 = !DILocation(line: 50, column: 20, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !44, line: 50, column: 3)
!1367 = !DILocation(line: 50, column: 3, scope: !1363)
!1368 = !DILocation(line: 51, column: 8, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !44, line: 50, column: 34)
!1370 = !DILocation(line: 51, column: 4, scope: !1369)
!1371 = !DILocation(line: 51, column: 13, scope: !1369)
!1372 = !DILocation(line: 52, column: 3, scope: !1369)
!1373 = !DILocation(line: 50, column: 30, scope: !1366)
!1374 = !DILocation(line: 50, column: 3, scope: !1366)
!1375 = distinct !{!1375, !1367, !1376, !98}
!1376 = !DILocation(line: 52, column: 3, scope: !1363)
!1377 = !DILocation(line: 53, column: 3, scope: !1357)
!1378 = !DILocation(line: 61, column: 11, scope: !1329)
!1379 = !DILocation(line: 61, column: 2, scope: !1329)
!1380 = !DILocation(line: 61, column: 18, scope: !1329)
!1381 = !DILocation(line: 61, column: 30, scope: !1329)
!1382 = !DILocation(line: 61, column: 22, scope: !1329)
!1383 = !DILocation(line: 61, column: 45, scope: !1329)
!1384 = !DILocation(line: 61, column: 50, scope: !1329)
!1385 = !DILocation(line: 62, column: 2, scope: !1329)
!1386 = !DILocation(line: 62, column: 10, scope: !1329)
!1387 = !DILocation(line: 63, column: 13, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1329, file: !44, line: 63, column: 2)
!1389 = !DILocation(line: 63, column: 20, scope: !1388)
!1390 = !DILocation(line: 63, column: 7, scope: !1388)
!1391 = !DILocation(line: 0, scope: !1388)
!1392 = !DILocation(line: 63, column: 30, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !44, line: 63, column: 2)
!1394 = !DILocation(line: 63, column: 2, scope: !1388)
!1395 = !DILocation(line: 64, column: 26, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !44, line: 63, column: 41)
!1397 = !DILocation(line: 64, column: 3, scope: !1396)
!1398 = !DILocation(line: 65, column: 2, scope: !1396)
!1399 = !DILocation(line: 63, column: 37, scope: !1393)
!1400 = !DILocation(line: 63, column: 2, scope: !1393)
!1401 = distinct !{!1401, !1394, !1402, !98}
!1402 = !DILocation(line: 65, column: 2, scope: !1388)
!1403 = !DILocation(line: 66, column: 1, scope: !1329)
!1404 = distinct !DISubprogram(name: "br_i31_rshift", scope: !46, file: !46, line: 29, type: !1405, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !2)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !116, !285}
!1407 = !DILocalVariable(name: "x", arg: 1, scope: !1404, file: !46, line: 29, type: !116)
!1408 = !DILocation(line: 0, scope: !1404)
!1409 = !DILocalVariable(name: "count", arg: 2, scope: !1404, file: !46, line: 29, type: !285)
!1410 = !DILocation(line: 34, column: 9, scope: !1404)
!1411 = !DILocation(line: 34, column: 14, scope: !1404)
!1412 = !DILocation(line: 34, column: 20, scope: !1404)
!1413 = !DILocation(line: 34, column: 8, scope: !1404)
!1414 = !DILocalVariable(name: "len", scope: !1404, file: !46, line: 31, type: !34)
!1415 = !DILocation(line: 35, column: 10, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1404, file: !46, line: 35, column: 6)
!1417 = !DILocation(line: 35, column: 6, scope: !1404)
!1418 = !DILocation(line: 36, column: 3, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !46, line: 35, column: 16)
!1420 = !DILocation(line: 38, column: 6, scope: !1404)
!1421 = !DILocation(line: 38, column: 11, scope: !1404)
!1422 = !DILocalVariable(name: "r", scope: !1404, file: !46, line: 32, type: !6)
!1423 = !DILocalVariable(name: "u", scope: !1404, file: !46, line: 31, type: !34)
!1424 = !DILocation(line: 39, column: 7, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1404, file: !46, line: 39, column: 2)
!1426 = !DILocation(line: 0, scope: !1425)
!1427 = !DILocation(line: 39, column: 16, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !46, line: 39, column: 2)
!1429 = !DILocation(line: 39, column: 2, scope: !1425)
!1430 = !DILocation(line: 42, column: 7, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !46, line: 39, column: 30)
!1432 = !DILocalVariable(name: "w", scope: !1431, file: !46, line: 40, type: !6)
!1433 = !DILocation(line: 0, scope: !1431)
!1434 = !DILocation(line: 43, column: 25, scope: !1431)
!1435 = !DILocation(line: 43, column: 18, scope: !1431)
!1436 = !DILocation(line: 43, column: 35, scope: !1431)
!1437 = !DILocation(line: 43, column: 40, scope: !1431)
!1438 = !DILocation(line: 43, column: 7, scope: !1431)
!1439 = !DILocation(line: 43, column: 3, scope: !1431)
!1440 = !DILocation(line: 43, column: 12, scope: !1431)
!1441 = !DILocation(line: 44, column: 9, scope: !1431)
!1442 = !DILocation(line: 45, column: 2, scope: !1431)
!1443 = !DILocation(line: 39, column: 26, scope: !1428)
!1444 = !DILocation(line: 39, column: 2, scope: !1428)
!1445 = distinct !{!1445, !1429, !1446, !98}
!1446 = !DILocation(line: 45, column: 2, scope: !1425)
!1447 = !DILocation(line: 46, column: 2, scope: !1404)
!1448 = !DILocation(line: 46, column: 9, scope: !1404)
!1449 = !DILocation(line: 47, column: 1, scope: !1404)
!1450 = distinct !DISubprogram(name: "br_i31_sub", scope: !48, file: !48, line: 29, type: !114, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !2)
!1451 = !DILocalVariable(name: "a", arg: 1, scope: !1450, file: !48, line: 29, type: !116)
!1452 = !DILocation(line: 0, scope: !1450)
!1453 = !DILocalVariable(name: "b", arg: 2, scope: !1450, file: !48, line: 29, type: !117)
!1454 = !DILocalVariable(name: "ctl", arg: 3, scope: !1450, file: !48, line: 29, type: !6)
!1455 = !DILocalVariable(name: "cc", scope: !1450, file: !48, line: 31, type: !6)
!1456 = !DILocation(line: 36, column: 7, scope: !1450)
!1457 = !DILocation(line: 36, column: 12, scope: !1450)
!1458 = !DILocation(line: 36, column: 18, scope: !1450)
!1459 = !DILocation(line: 36, column: 6, scope: !1450)
!1460 = !DILocalVariable(name: "m", scope: !1450, file: !48, line: 32, type: !34)
!1461 = !DILocalVariable(name: "u", scope: !1450, file: !48, line: 32, type: !34)
!1462 = !DILocation(line: 37, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1450, file: !48, line: 37, column: 2)
!1464 = !DILocation(line: 0, scope: !1463)
!1465 = !DILocation(line: 37, column: 16, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !48, line: 37, column: 2)
!1467 = !DILocation(line: 37, column: 2, scope: !1463)
!1468 = !DILocation(line: 40, column: 8, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !48, line: 37, column: 27)
!1470 = !DILocalVariable(name: "aw", scope: !1469, file: !48, line: 38, type: !6)
!1471 = !DILocation(line: 0, scope: !1469)
!1472 = !DILocation(line: 41, column: 8, scope: !1469)
!1473 = !DILocalVariable(name: "bw", scope: !1469, file: !48, line: 38, type: !6)
!1474 = !DILocation(line: 42, column: 12, scope: !1469)
!1475 = !DILocation(line: 42, column: 17, scope: !1469)
!1476 = !DILocalVariable(name: "naw", scope: !1469, file: !48, line: 38, type: !6)
!1477 = !DILocation(line: 43, column: 12, scope: !1469)
!1478 = !DILocation(line: 44, column: 23, scope: !1469)
!1479 = !DILocation(line: 44, column: 10, scope: !1469)
!1480 = !DILocation(line: 44, column: 3, scope: !1469)
!1481 = !DILocation(line: 44, column: 8, scope: !1469)
!1482 = !DILocation(line: 45, column: 2, scope: !1469)
!1483 = !DILocation(line: 37, column: 23, scope: !1466)
!1484 = !DILocation(line: 37, column: 2, scope: !1466)
!1485 = distinct !{!1485, !1467, !1486, !98}
!1486 = !DILocation(line: 45, column: 2, scope: !1463)
!1487 = !DILocation(line: 46, column: 2, scope: !1450)
!1488 = distinct !DISubprogram(name: "MUX", scope: !101, file: !101, line: 770, type: !102, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !47, retainedNodes: !2)
!1489 = !DILocalVariable(name: "ctl", arg: 1, scope: !1488, file: !101, line: 770, type: !6)
!1490 = !DILocation(line: 0, scope: !1488)
!1491 = !DILocalVariable(name: "x", arg: 2, scope: !1488, file: !101, line: 770, type: !6)
!1492 = !DILocalVariable(name: "y", arg: 3, scope: !1488, file: !101, line: 770, type: !6)
!1493 = !DILocation(line: 772, column: 14, scope: !1488)
!1494 = !DILocation(line: 772, column: 24, scope: !1488)
!1495 = !DILocation(line: 772, column: 19, scope: !1488)
!1496 = !DILocation(line: 772, column: 11, scope: !1488)
!1497 = !DILocation(line: 772, column: 2, scope: !1488)
!1498 = distinct !DISubprogram(name: "br_i31_to_monty", scope: !50, file: !50, line: 29, type: !1499, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !2)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !116, !117}
!1501 = !DILocalVariable(name: "x", arg: 1, scope: !1498, file: !50, line: 29, type: !116)
!1502 = !DILocation(line: 0, scope: !1498)
!1503 = !DILocalVariable(name: "m", arg: 2, scope: !1498, file: !50, line: 29, type: !117)
!1504 = !DILocation(line: 33, column: 12, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1498, file: !50, line: 33, column: 2)
!1506 = !DILocation(line: 33, column: 17, scope: !1505)
!1507 = !DILocation(line: 33, column: 23, scope: !1505)
!1508 = !DILocalVariable(name: "k", scope: !1498, file: !50, line: 31, type: !6)
!1509 = !DILocation(line: 33, column: 7, scope: !1505)
!1510 = !DILocation(line: 0, scope: !1505)
!1511 = !DILocation(line: 33, column: 31, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1505, file: !50, line: 33, column: 2)
!1513 = !DILocation(line: 33, column: 2, scope: !1505)
!1514 = !DILocation(line: 34, column: 3, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !50, line: 33, column: 42)
!1516 = !DILocation(line: 35, column: 2, scope: !1515)
!1517 = !DILocation(line: 33, column: 38, scope: !1512)
!1518 = !DILocation(line: 33, column: 2, scope: !1512)
!1519 = distinct !{!1519, !1513, !1520, !98}
!1520 = !DILocation(line: 35, column: 2, scope: !1505)
!1521 = !DILocation(line: 36, column: 1, scope: !1498)
!1522 = distinct !DISubprogram(name: "br_divrem", scope: !52, file: !52, line: 29, type: !1523, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !2)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!6, !6, !6, !6, !116}
!1525 = !DILocalVariable(name: "hi", arg: 1, scope: !1522, file: !52, line: 29, type: !6)
!1526 = !DILocation(line: 0, scope: !1522)
!1527 = !DILocalVariable(name: "lo", arg: 2, scope: !1522, file: !52, line: 29, type: !6)
!1528 = !DILocalVariable(name: "d", arg: 3, scope: !1522, file: !52, line: 29, type: !6)
!1529 = !DILocalVariable(name: "r", arg: 4, scope: !1522, file: !52, line: 29, type: !116)
!1530 = !DILocalVariable(name: "q", scope: !1522, file: !52, line: 32, type: !6)
!1531 = !DILocation(line: 37, column: 7, scope: !1522)
!1532 = !DILocalVariable(name: "ch", scope: !1522, file: !52, line: 33, type: !6)
!1533 = !DILocation(line: 38, column: 7, scope: !1522)
!1534 = !DILocalVariable(name: "k", scope: !1522, file: !52, line: 34, type: !285)
!1535 = !DILocation(line: 39, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1522, file: !52, line: 39, column: 2)
!1537 = !DILocation(line: 0, scope: !1536)
!1538 = !DILocation(line: 39, column: 17, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !52, line: 39, column: 2)
!1540 = !DILocation(line: 39, column: 2, scope: !1536)
!1541 = !DILocation(line: 43, column: 10, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !52, line: 39, column: 28)
!1543 = !DILocalVariable(name: "j", scope: !1542, file: !52, line: 40, type: !285)
!1544 = !DILocation(line: 0, scope: !1542)
!1545 = !DILocation(line: 44, column: 11, scope: !1542)
!1546 = !DILocation(line: 44, column: 23, scope: !1542)
!1547 = !DILocation(line: 44, column: 17, scope: !1542)
!1548 = !DILocalVariable(name: "w", scope: !1542, file: !52, line: 41, type: !6)
!1549 = !DILocation(line: 45, column: 9, scope: !1542)
!1550 = !DILocation(line: 45, column: 24, scope: !1542)
!1551 = !DILocation(line: 45, column: 18, scope: !1542)
!1552 = !DILocalVariable(name: "ctl", scope: !1542, file: !52, line: 41, type: !6)
!1553 = !DILocation(line: 46, column: 12, scope: !1542)
!1554 = !DILocation(line: 46, column: 17, scope: !1542)
!1555 = !DILocalVariable(name: "hi2", scope: !1542, file: !52, line: 41, type: !6)
!1556 = !DILocation(line: 47, column: 17, scope: !1542)
!1557 = !DILocation(line: 47, column: 12, scope: !1542)
!1558 = !DILocalVariable(name: "lo2", scope: !1542, file: !52, line: 41, type: !6)
!1559 = !DILocation(line: 48, column: 8, scope: !1542)
!1560 = !DILocation(line: 49, column: 8, scope: !1542)
!1561 = !DILocation(line: 50, column: 12, scope: !1542)
!1562 = !DILocation(line: 50, column: 5, scope: !1542)
!1563 = !DILocation(line: 51, column: 2, scope: !1542)
!1564 = !DILocation(line: 39, column: 24, scope: !1539)
!1565 = !DILocation(line: 39, column: 2, scope: !1539)
!1566 = distinct !{!1566, !1540, !1567, !98}
!1567 = !DILocation(line: 51, column: 2, scope: !1536)
!1568 = !DILocation(line: 52, column: 7, scope: !1522)
!1569 = !DILocation(line: 52, column: 17, scope: !1522)
!1570 = !DILocalVariable(name: "cf", scope: !1522, file: !52, line: 33, type: !6)
!1571 = !DILocation(line: 53, column: 4, scope: !1522)
!1572 = !DILocation(line: 54, column: 18, scope: !1522)
!1573 = !DILocation(line: 54, column: 7, scope: !1522)
!1574 = !DILocation(line: 54, column: 5, scope: !1522)
!1575 = !DILocation(line: 55, column: 2, scope: !1522)
!1576 = distinct !DISubprogram(name: "EQ", scope: !101, file: !101, line: 779, type: !193, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !2)
!1577 = !DILocalVariable(name: "x", arg: 1, scope: !1576, file: !101, line: 779, type: !6)
!1578 = !DILocation(line: 0, scope: !1576)
!1579 = !DILocalVariable(name: "y", arg: 2, scope: !1576, file: !101, line: 779, type: !6)
!1580 = !DILocation(line: 783, column: 8, scope: !1576)
!1581 = !DILocalVariable(name: "q", scope: !1576, file: !101, line: 781, type: !6)
!1582 = !DILocation(line: 784, column: 18, scope: !1576)
!1583 = !DILocation(line: 784, column: 16, scope: !1576)
!1584 = !DILocation(line: 784, column: 22, scope: !1576)
!1585 = !DILocation(line: 784, column: 9, scope: !1576)
!1586 = !DILocation(line: 784, column: 2, scope: !1576)
!1587 = distinct !DISubprogram(name: "MUX", scope: !101, file: !101, line: 770, type: !102, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !2)
!1588 = !DILocalVariable(name: "ctl", arg: 1, scope: !1587, file: !101, line: 770, type: !6)
!1589 = !DILocation(line: 0, scope: !1587)
!1590 = !DILocalVariable(name: "x", arg: 2, scope: !1587, file: !101, line: 770, type: !6)
!1591 = !DILocalVariable(name: "y", arg: 3, scope: !1587, file: !101, line: 770, type: !6)
!1592 = !DILocation(line: 772, column: 14, scope: !1587)
!1593 = !DILocation(line: 772, column: 24, scope: !1587)
!1594 = !DILocation(line: 772, column: 19, scope: !1587)
!1595 = !DILocation(line: 772, column: 11, scope: !1587)
!1596 = !DILocation(line: 772, column: 2, scope: !1587)
!1597 = distinct !DISubprogram(name: "GT", scope: !101, file: !101, line: 803, type: !193, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !2)
!1598 = !DILocalVariable(name: "x", arg: 1, scope: !1597, file: !101, line: 803, type: !6)
!1599 = !DILocation(line: 0, scope: !1597)
!1600 = !DILocalVariable(name: "y", arg: 2, scope: !1597, file: !101, line: 803, type: !6)
!1601 = !DILocation(line: 819, column: 8, scope: !1597)
!1602 = !DILocalVariable(name: "z", scope: !1597, file: !101, line: 817, type: !6)
!1603 = !DILocation(line: 820, column: 18, scope: !1597)
!1604 = !DILocation(line: 820, column: 28, scope: !1597)
!1605 = !DILocation(line: 820, column: 23, scope: !1597)
!1606 = !DILocation(line: 820, column: 12, scope: !1597)
!1607 = !DILocation(line: 820, column: 35, scope: !1597)
!1608 = !DILocation(line: 820, column: 2, scope: !1597)
!1609 = distinct !DISubprogram(name: "NOT", scope: !101, file: !101, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !2)
!1610 = !DILocalVariable(name: "ctl", arg: 1, scope: !1609, file: !101, line: 761, type: !6)
!1611 = !DILocation(line: 0, scope: !1609)
!1612 = !DILocation(line: 763, column: 13, scope: !1609)
!1613 = !DILocation(line: 763, column: 2, scope: !1609)
!1614 = distinct !DISubprogram(name: "br_rsa_i31_pkcs1_sign", scope: !54, file: !54, line: 29, type: !1615, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !2)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!6, !81, !81, !34, !1617, !20}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !1620, line: 205, baseType: !1621)
!1620 = !DIFile(filename: "../BearSSL/inc/bearssl_rsa.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1620, line: 182, size: 704, elements: !1622)
!1622 = !{!1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !1621, file: !1620, line: 184, baseType: !6, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1621, file: !1620, line: 186, baseType: !20, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !1621, file: !1620, line: 188, baseType: !34, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1621, file: !1620, line: 190, baseType: !20, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1621, file: !1620, line: 192, baseType: !34, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1621, file: !1620, line: 194, baseType: !20, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !1621, file: !1620, line: 196, baseType: !34, size: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !1621, file: !1620, line: 198, baseType: !20, size: 64, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !1621, file: !1620, line: 200, baseType: !34, size: 64, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !1621, file: !1620, line: 202, baseType: !20, size: 64, offset: 576)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !1621, file: !1620, line: 204, baseType: !34, size: 64, offset: 640)
!1634 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !1614, file: !54, line: 29, type: !81)
!1635 = !DILocation(line: 0, scope: !1614)
!1636 = !DILocalVariable(name: "hash", arg: 2, scope: !1614, file: !54, line: 30, type: !81)
!1637 = !DILocalVariable(name: "hash_len", arg: 3, scope: !1614, file: !54, line: 30, type: !34)
!1638 = !DILocalVariable(name: "sk", arg: 4, scope: !1614, file: !54, line: 31, type: !1617)
!1639 = !DILocalVariable(name: "x", arg: 5, scope: !1614, file: !54, line: 31, type: !20)
!1640 = !DILocation(line: 33, column: 58, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1614, file: !54, line: 33, column: 6)
!1642 = !DILocation(line: 33, column: 7, scope: !1641)
!1643 = !DILocation(line: 33, column: 6, scope: !1614)
!1644 = !DILocation(line: 34, column: 3, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !54, line: 33, column: 72)
!1646 = !DILocation(line: 36, column: 9, scope: !1614)
!1647 = !DILocation(line: 36, column: 2, scope: !1614)
!1648 = !DILocation(line: 37, column: 1, scope: !1614)
!1649 = distinct !DISubprogram(name: "br_rsa_i31_private", scope: !56, file: !56, line: 32, type: !1650, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !2)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!6, !20, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !1620, line: 205, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1620, line: 182, size: 704, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !1655, file: !1620, line: 184, baseType: !6, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1655, file: !1620, line: 186, baseType: !20, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !1655, file: !1620, line: 188, baseType: !34, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1655, file: !1620, line: 190, baseType: !20, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1655, file: !1620, line: 192, baseType: !34, size: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1655, file: !1620, line: 194, baseType: !20, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !1655, file: !1620, line: 196, baseType: !34, size: 64, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !1655, file: !1620, line: 198, baseType: !20, size: 64, offset: 448)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !1655, file: !1620, line: 200, baseType: !34, size: 64, offset: 512)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !1655, file: !1620, line: 202, baseType: !20, size: 64, offset: 576)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !1655, file: !1620, line: 204, baseType: !34, size: 64, offset: 640)
!1668 = !DILocalVariable(name: "x", arg: 1, scope: !1649, file: !56, line: 32, type: !20)
!1669 = !DILocation(line: 0, scope: !1649)
!1670 = !DILocalVariable(name: "sk", arg: 2, scope: !1649, file: !56, line: 32, type: !1652)
!1671 = !DILocalVariable(name: "tmp", scope: !1649, file: !56, line: 39, type: !1672)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17952, elements: !1673)
!1673 = !{!1674}
!1674 = !DISubrange(count: 561)
!1675 = !DILocation(line: 39, column: 11, scope: !1649)
!1676 = !DILocation(line: 49, column: 10, scope: !1649)
!1677 = !DILocalVariable(name: "p", scope: !1649, file: !56, line: 34, type: !81)
!1678 = !DILocation(line: 50, column: 13, scope: !1649)
!1679 = !DILocalVariable(name: "plen", scope: !1649, file: !56, line: 35, type: !34)
!1680 = !DILocation(line: 51, column: 2, scope: !1649)
!1681 = !DILocation(line: 51, column: 14, scope: !1649)
!1682 = !DILocation(line: 51, column: 18, scope: !1649)
!1683 = !DILocation(line: 51, column: 21, scope: !1649)
!1684 = !DILocation(line: 51, column: 24, scope: !1649)
!1685 = !DILocation(line: 52, column: 5, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1649, file: !56, line: 51, column: 30)
!1687 = !DILocation(line: 53, column: 8, scope: !1686)
!1688 = distinct !{!1688, !1680, !1689, !98}
!1689 = !DILocation(line: 54, column: 2, scope: !1649)
!1690 = !DILocation(line: 55, column: 10, scope: !1649)
!1691 = !DILocalVariable(name: "q", scope: !1649, file: !56, line: 34, type: !81)
!1692 = !DILocation(line: 56, column: 13, scope: !1649)
!1693 = !DILocalVariable(name: "qlen", scope: !1649, file: !56, line: 35, type: !34)
!1694 = !DILocation(line: 57, column: 2, scope: !1649)
!1695 = !DILocation(line: 57, column: 14, scope: !1649)
!1696 = !DILocation(line: 57, column: 18, scope: !1649)
!1697 = !DILocation(line: 57, column: 21, scope: !1649)
!1698 = !DILocation(line: 57, column: 24, scope: !1649)
!1699 = !DILocation(line: 58, column: 5, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1649, file: !56, line: 57, column: 30)
!1701 = !DILocation(line: 59, column: 8, scope: !1700)
!1702 = distinct !{!1702, !1694, !1703, !98}
!1703 = !DILocation(line: 60, column: 2, scope: !1649)
!1704 = !DILocation(line: 65, column: 18, scope: !1649)
!1705 = !DILocation(line: 65, column: 13, scope: !1649)
!1706 = !DILocation(line: 65, column: 40, scope: !1649)
!1707 = !DILocalVariable(name: "z", scope: !1649, file: !56, line: 40, type: !58)
!1708 = !DILocalVariable(name: "fwlen", scope: !1649, file: !56, line: 36, type: !34)
!1709 = !DILocation(line: 67, column: 2, scope: !1649)
!1710 = !DILocation(line: 67, column: 11, scope: !1649)
!1711 = !DILocation(line: 68, column: 5, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1649, file: !56, line: 67, column: 16)
!1713 = !DILocation(line: 69, column: 9, scope: !1712)
!1714 = distinct !{!1714, !1709, !1715, !98}
!1715 = !DILocation(line: 70, column: 2, scope: !1649)
!1716 = !DILocation(line: 75, column: 18, scope: !1649)
!1717 = !DILocation(line: 75, column: 8, scope: !1649)
!1718 = !DILocation(line: 80, column: 8, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1649, file: !56, line: 80, column: 6)
!1720 = !DILocation(line: 80, column: 16, scope: !1719)
!1721 = !DILocation(line: 80, column: 6, scope: !1649)
!1722 = !DILocation(line: 81, column: 3, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !56, line: 80, column: 24)
!1724 = !DILocation(line: 87, column: 14, scope: !1649)
!1725 = !DILocation(line: 87, column: 23, scope: !1649)
!1726 = !DILocation(line: 87, column: 28, scope: !1649)
!1727 = !DILocation(line: 87, column: 9, scope: !1649)
!1728 = !DILocalVariable(name: "xlen", scope: !1649, file: !56, line: 38, type: !34)
!1729 = !DILocation(line: 92, column: 7, scope: !1649)
!1730 = !DILocalVariable(name: "mq", scope: !1649, file: !56, line: 41, type: !116)
!1731 = !DILocation(line: 93, column: 2, scope: !1649)
!1732 = !DILocation(line: 98, column: 10, scope: !1649)
!1733 = !DILocalVariable(name: "t1", scope: !1649, file: !56, line: 41, type: !116)
!1734 = !DILocation(line: 99, column: 2, scope: !1649)
!1735 = !DILocation(line: 106, column: 14, scope: !1649)
!1736 = !DILocation(line: 106, column: 10, scope: !1649)
!1737 = !DILocalVariable(name: "t2", scope: !1649, file: !56, line: 41, type: !116)
!1738 = !DILocation(line: 107, column: 18, scope: !1649)
!1739 = !DILocation(line: 107, column: 2, scope: !1649)
!1740 = !DILocation(line: 108, column: 2, scope: !1649)
!1741 = !DILocation(line: 119, column: 14, scope: !1649)
!1742 = !DILocation(line: 119, column: 10, scope: !1649)
!1743 = !DILocalVariable(name: "t3", scope: !1649, file: !56, line: 41, type: !116)
!1744 = !DILocation(line: 120, column: 16, scope: !1649)
!1745 = !DILocation(line: 120, column: 2, scope: !1649)
!1746 = !DILocalVariable(name: "u", scope: !1649, file: !56, line: 38, type: !34)
!1747 = !DILocalVariable(name: "r", scope: !1649, file: !56, line: 42, type: !6)
!1748 = !DILocation(line: 123, column: 2, scope: !1649)
!1749 = !DILocation(line: 123, column: 11, scope: !1649)
!1750 = !DILocation(line: 126, column: 5, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1649, file: !56, line: 123, column: 16)
!1752 = !DILocation(line: 127, column: 8, scope: !1751)
!1753 = !DILocalVariable(name: "wn", scope: !1751, file: !56, line: 124, type: !6)
!1754 = !DILocation(line: 0, scope: !1751)
!1755 = !DILocation(line: 128, column: 8, scope: !1751)
!1756 = !DILocalVariable(name: "wx", scope: !1751, file: !56, line: 124, type: !6)
!1757 = !DILocation(line: 129, column: 18, scope: !1751)
!1758 = !DILocation(line: 129, column: 12, scope: !1751)
!1759 = !DILocation(line: 129, column: 24, scope: !1751)
!1760 = !DILocation(line: 129, column: 30, scope: !1751)
!1761 = distinct !{!1761, !1748, !1762, !98}
!1762 = !DILocation(line: 130, column: 2, scope: !1649)
!1763 = !DILocation(line: 135, column: 14, scope: !1649)
!1764 = !DILocation(line: 135, column: 10, scope: !1649)
!1765 = !DILocalVariable(name: "mp", scope: !1649, file: !56, line: 41, type: !116)
!1766 = !DILocation(line: 136, column: 2, scope: !1649)
!1767 = !DILocation(line: 136, column: 24, scope: !1649)
!1768 = !DILocation(line: 141, column: 22, scope: !1649)
!1769 = !DILocation(line: 141, column: 8, scope: !1649)
!1770 = !DILocalVariable(name: "q0i", scope: !1649, file: !56, line: 37, type: !6)
!1771 = !DILocation(line: 142, column: 10, scope: !1649)
!1772 = !DILocalVariable(name: "s2", scope: !1649, file: !56, line: 41, type: !116)
!1773 = !DILocation(line: 143, column: 2, scope: !1649)
!1774 = !DILocation(line: 144, column: 33, scope: !1649)
!1775 = !DILocation(line: 144, column: 41, scope: !1649)
!1776 = !DILocation(line: 145, column: 10, scope: !1649)
!1777 = !DILocation(line: 145, column: 6, scope: !1649)
!1778 = !DILocation(line: 145, column: 28, scope: !1649)
!1779 = !DILocation(line: 145, column: 24, scope: !1649)
!1780 = !DILocation(line: 144, column: 7, scope: !1649)
!1781 = !DILocation(line: 144, column: 4, scope: !1649)
!1782 = !DILocation(line: 150, column: 22, scope: !1649)
!1783 = !DILocation(line: 150, column: 8, scope: !1649)
!1784 = !DILocalVariable(name: "p0i", scope: !1649, file: !56, line: 37, type: !6)
!1785 = !DILocation(line: 151, column: 14, scope: !1649)
!1786 = !DILocation(line: 151, column: 10, scope: !1649)
!1787 = !DILocalVariable(name: "s1", scope: !1649, file: !56, line: 41, type: !116)
!1788 = !DILocation(line: 152, column: 2, scope: !1649)
!1789 = !DILocation(line: 153, column: 33, scope: !1649)
!1790 = !DILocation(line: 153, column: 41, scope: !1649)
!1791 = !DILocation(line: 154, column: 10, scope: !1649)
!1792 = !DILocation(line: 154, column: 6, scope: !1649)
!1793 = !DILocation(line: 154, column: 28, scope: !1649)
!1794 = !DILocation(line: 154, column: 24, scope: !1649)
!1795 = !DILocation(line: 153, column: 7, scope: !1649)
!1796 = !DILocation(line: 153, column: 4, scope: !1649)
!1797 = !DILocation(line: 169, column: 14, scope: !1649)
!1798 = !DILocation(line: 169, column: 10, scope: !1649)
!1799 = !DILocation(line: 170, column: 14, scope: !1649)
!1800 = !DILocation(line: 170, column: 10, scope: !1649)
!1801 = !DILocation(line: 171, column: 2, scope: !1649)
!1802 = !DILocation(line: 172, column: 21, scope: !1649)
!1803 = !DILocation(line: 172, column: 2, scope: !1649)
!1804 = !DILocation(line: 173, column: 2, scope: !1649)
!1805 = !DILocation(line: 174, column: 31, scope: !1649)
!1806 = !DILocation(line: 174, column: 39, scope: !1649)
!1807 = !DILocation(line: 174, column: 2, scope: !1649)
!1808 = !DILocation(line: 175, column: 2, scope: !1649)
!1809 = !DILocation(line: 190, column: 2, scope: !1649)
!1810 = !DILocation(line: 196, column: 2, scope: !1649)
!1811 = !DILocation(line: 202, column: 13, scope: !1649)
!1812 = !DILocation(line: 202, column: 19, scope: !1649)
!1813 = !DILocation(line: 202, column: 2, scope: !1649)
!1814 = !DILocation(line: 203, column: 1, scope: !1649)
!1815 = distinct !DISubprogram(name: "br_i31_zero", scope: !101, file: !101, line: 1383, type: !410, scopeLine: 1384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !2)
!1816 = !DILocalVariable(name: "x", arg: 1, scope: !1815, file: !101, line: 1383, type: !116)
!1817 = !DILocation(line: 0, scope: !1815)
!1818 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1815, file: !101, line: 1383, type: !6)
!1819 = !DILocation(line: 1385, column: 5, scope: !1815)
!1820 = !DILocation(line: 1385, column: 8, scope: !1815)
!1821 = !DILocation(line: 1386, column: 2, scope: !1815)
!1822 = !DILocation(line: 1386, column: 25, scope: !1815)
!1823 = !DILocation(line: 1386, column: 31, scope: !1815)
!1824 = !DILocation(line: 1386, column: 15, scope: !1815)
!1825 = !DILocation(line: 1386, column: 37, scope: !1815)
!1826 = !DILocation(line: 1387, column: 1, scope: !1815)
!1827 = distinct !DISubprogram(name: "br_rsa_pkcs1_sig_pad", scope: !60, file: !60, line: 29, type: !1828, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !2)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!6, !81, !81, !34, !6, !20}
!1830 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !1827, file: !60, line: 29, type: !81)
!1831 = !DILocation(line: 0, scope: !1827)
!1832 = !DILocalVariable(name: "hash", arg: 2, scope: !1827, file: !60, line: 30, type: !81)
!1833 = !DILocalVariable(name: "hash_len", arg: 3, scope: !1827, file: !60, line: 30, type: !34)
!1834 = !DILocalVariable(name: "n_bitlen", arg: 4, scope: !1827, file: !60, line: 31, type: !6)
!1835 = !DILocalVariable(name: "x", arg: 5, scope: !1827, file: !60, line: 31, type: !20)
!1836 = !DILocation(line: 60, column: 19, scope: !1827)
!1837 = !DILocation(line: 60, column: 24, scope: !1827)
!1838 = !DILocation(line: 60, column: 9, scope: !1827)
!1839 = !DILocalVariable(name: "xlen", scope: !1827, file: !60, line: 33, type: !34)
!1840 = !DILocation(line: 62, column: 15, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1827, file: !60, line: 62, column: 6)
!1842 = !DILocation(line: 62, column: 6, scope: !1827)
!1843 = !DILocation(line: 63, column: 23, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !60, line: 63, column: 7)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !60, line: 62, column: 24)
!1846 = !DILocation(line: 63, column: 12, scope: !1844)
!1847 = !DILocation(line: 63, column: 7, scope: !1845)
!1848 = !DILocation(line: 64, column: 4, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1844, file: !60, line: 63, column: 29)
!1850 = !DILocation(line: 66, column: 3, scope: !1845)
!1851 = !DILocation(line: 66, column: 8, scope: !1845)
!1852 = !DILocation(line: 67, column: 3, scope: !1845)
!1853 = !DILocation(line: 67, column: 8, scope: !1845)
!1854 = !DILocation(line: 68, column: 12, scope: !1845)
!1855 = !DILocalVariable(name: "u", scope: !1827, file: !60, line: 33, type: !34)
!1856 = !DILocation(line: 69, column: 12, scope: !1845)
!1857 = !DILocation(line: 69, column: 25, scope: !1845)
!1858 = !DILocation(line: 69, column: 3, scope: !1845)
!1859 = !DILocation(line: 70, column: 7, scope: !1845)
!1860 = !DILocation(line: 70, column: 3, scope: !1845)
!1861 = !DILocation(line: 70, column: 12, scope: !1845)
!1862 = !DILocation(line: 71, column: 2, scope: !1845)
!1863 = !DILocation(line: 72, column: 8, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1841, file: !60, line: 71, column: 9)
!1865 = !DILocalVariable(name: "x3", scope: !1827, file: !60, line: 33, type: !34)
!1866 = !DILocation(line: 78, column: 18, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !60, line: 78, column: 7)
!1868 = !DILocation(line: 78, column: 29, scope: !1867)
!1869 = !DILocation(line: 78, column: 12, scope: !1867)
!1870 = !DILocation(line: 78, column: 7, scope: !1864)
!1871 = !DILocation(line: 79, column: 4, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !60, line: 78, column: 36)
!1873 = !DILocation(line: 81, column: 3, scope: !1864)
!1874 = !DILocation(line: 81, column: 8, scope: !1864)
!1875 = !DILocation(line: 82, column: 3, scope: !1864)
!1876 = !DILocation(line: 82, column: 8, scope: !1864)
!1877 = !DILocation(line: 83, column: 12, scope: !1864)
!1878 = !DILocation(line: 83, column: 17, scope: !1864)
!1879 = !DILocation(line: 83, column: 28, scope: !1864)
!1880 = !DILocation(line: 84, column: 12, scope: !1864)
!1881 = !DILocation(line: 84, column: 25, scope: !1864)
!1882 = !DILocation(line: 84, column: 3, scope: !1864)
!1883 = !DILocation(line: 85, column: 3, scope: !1864)
!1884 = !DILocation(line: 85, column: 8, scope: !1864)
!1885 = !DILocation(line: 86, column: 7, scope: !1864)
!1886 = !DILocation(line: 86, column: 3, scope: !1864)
!1887 = !DILocation(line: 86, column: 12, scope: !1864)
!1888 = !DILocation(line: 87, column: 17, scope: !1864)
!1889 = !DILocation(line: 87, column: 28, scope: !1864)
!1890 = !DILocation(line: 87, column: 14, scope: !1864)
!1891 = !DILocation(line: 87, column: 7, scope: !1864)
!1892 = !DILocation(line: 87, column: 3, scope: !1864)
!1893 = !DILocation(line: 87, column: 12, scope: !1864)
!1894 = !DILocation(line: 88, column: 7, scope: !1864)
!1895 = !DILocation(line: 88, column: 3, scope: !1864)
!1896 = !DILocation(line: 88, column: 12, scope: !1864)
!1897 = !DILocation(line: 89, column: 17, scope: !1864)
!1898 = !DILocation(line: 89, column: 14, scope: !1864)
!1899 = !DILocation(line: 89, column: 7, scope: !1864)
!1900 = !DILocation(line: 89, column: 3, scope: !1864)
!1901 = !DILocation(line: 89, column: 12, scope: !1864)
!1902 = !DILocation(line: 90, column: 7, scope: !1864)
!1903 = !DILocation(line: 90, column: 3, scope: !1864)
!1904 = !DILocation(line: 90, column: 12, scope: !1864)
!1905 = !DILocation(line: 91, column: 12, scope: !1864)
!1906 = !DILocation(line: 91, column: 16, scope: !1864)
!1907 = !DILocation(line: 91, column: 34, scope: !1864)
!1908 = !DILocation(line: 91, column: 3, scope: !1864)
!1909 = !DILocation(line: 92, column: 11, scope: !1864)
!1910 = !DILocation(line: 92, column: 5, scope: !1864)
!1911 = !DILocation(line: 93, column: 7, scope: !1864)
!1912 = !DILocation(line: 93, column: 3, scope: !1864)
!1913 = !DILocation(line: 93, column: 11, scope: !1864)
!1914 = !DILocation(line: 94, column: 7, scope: !1864)
!1915 = !DILocation(line: 94, column: 3, scope: !1864)
!1916 = !DILocation(line: 94, column: 11, scope: !1864)
!1917 = !DILocation(line: 95, column: 7, scope: !1864)
!1918 = !DILocation(line: 95, column: 3, scope: !1864)
!1919 = !DILocation(line: 95, column: 11, scope: !1864)
!1920 = !DILocation(line: 96, column: 13, scope: !1864)
!1921 = !DILocation(line: 96, column: 7, scope: !1864)
!1922 = !DILocation(line: 96, column: 3, scope: !1864)
!1923 = !DILocation(line: 96, column: 11, scope: !1864)
!1924 = !DILocation(line: 0, scope: !1841)
!1925 = !DILocation(line: 98, column: 11, scope: !1827)
!1926 = !DILocation(line: 98, column: 2, scope: !1827)
!1927 = !DILocation(line: 99, column: 2, scope: !1827)
!1928 = !DILocation(line: 100, column: 1, scope: !1827)
!1929 = distinct !DISubprogram(name: "sign_wrapper", scope: !64, file: !64, line: 3, type: !1930, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !2)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !81, !81, !34, !1932, !20}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1934)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !1620, line: 205, baseType: !1935)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1620, line: 182, size: 704, elements: !1936)
!1936 = !{!1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !1935, file: !1620, line: 184, baseType: !6, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1935, file: !1620, line: 186, baseType: !20, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !1935, file: !1620, line: 188, baseType: !34, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1935, file: !1620, line: 190, baseType: !20, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1935, file: !1620, line: 192, baseType: !34, size: 64, offset: 256)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1935, file: !1620, line: 194, baseType: !20, size: 64, offset: 320)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !1935, file: !1620, line: 196, baseType: !34, size: 64, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !1935, file: !1620, line: 198, baseType: !20, size: 64, offset: 448)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !1935, file: !1620, line: 200, baseType: !34, size: 64, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !1935, file: !1620, line: 202, baseType: !20, size: 64, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !1935, file: !1620, line: 204, baseType: !34, size: 64, offset: 640)
!1948 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !1929, file: !64, line: 3, type: !81)
!1949 = !DILocation(line: 0, scope: !1929)
!1950 = !DILocalVariable(name: "hash", arg: 2, scope: !1929, file: !64, line: 4, type: !81)
!1951 = !DILocalVariable(name: "hash_len", arg: 3, scope: !1929, file: !64, line: 4, type: !34)
!1952 = !DILocalVariable(name: "sk", arg: 4, scope: !1929, file: !64, line: 5, type: !1932)
!1953 = !DILocalVariable(name: "x", arg: 5, scope: !1929, file: !64, line: 5, type: !20)
!1954 = !DILocation(line: 6, column: 12, scope: !1929)
!1955 = !DILocation(line: 6, column: 2, scope: !1929)
!1956 = !DILocation(line: 7, column: 12, scope: !1929)
!1957 = !DILocation(line: 7, column: 2, scope: !1929)
!1958 = !DILocation(line: 8, column: 12, scope: !1929)
!1959 = !DILocation(line: 8, column: 2, scope: !1929)
!1960 = !DILocation(line: 9, column: 12, scope: !1929)
!1961 = !DILocation(line: 9, column: 2, scope: !1929)
!1962 = !DILocation(line: 10, column: 12, scope: !1929)
!1963 = !DILocation(line: 10, column: 2, scope: !1929)
!1964 = !DILocation(line: 12, column: 30, scope: !1929)
!1965 = !DILocation(line: 12, column: 12, scope: !1929)
!1966 = !DILocation(line: 12, column: 2, scope: !1929)
!1967 = !DILocation(line: 13, column: 30, scope: !1929)
!1968 = !DILocation(line: 13, column: 12, scope: !1929)
!1969 = !DILocation(line: 13, column: 2, scope: !1929)
!1970 = !DILocation(line: 14, column: 30, scope: !1929)
!1971 = !DILocation(line: 14, column: 12, scope: !1929)
!1972 = !DILocation(line: 14, column: 2, scope: !1929)
!1973 = !DILocation(line: 15, column: 30, scope: !1929)
!1974 = !DILocation(line: 15, column: 12, scope: !1929)
!1975 = !DILocation(line: 15, column: 2, scope: !1929)
!1976 = !DILocation(line: 16, column: 30, scope: !1929)
!1977 = !DILocation(line: 16, column: 12, scope: !1929)
!1978 = !DILocation(line: 16, column: 2, scope: !1929)
!1979 = !DILocation(line: 18, column: 30, scope: !1929)
!1980 = !DILocation(line: 18, column: 12, scope: !1929)
!1981 = !DILocation(line: 18, column: 2, scope: !1929)
!1982 = !DILocation(line: 19, column: 30, scope: !1929)
!1983 = !DILocation(line: 19, column: 12, scope: !1929)
!1984 = !DILocation(line: 19, column: 2, scope: !1929)
!1985 = !DILocation(line: 20, column: 30, scope: !1929)
!1986 = !DILocation(line: 20, column: 12, scope: !1929)
!1987 = !DILocation(line: 20, column: 2, scope: !1929)
!1988 = !DILocation(line: 21, column: 30, scope: !1929)
!1989 = !DILocation(line: 21, column: 12, scope: !1929)
!1990 = !DILocation(line: 21, column: 2, scope: !1929)
!1991 = !DILocation(line: 22, column: 30, scope: !1929)
!1992 = !DILocation(line: 22, column: 12, scope: !1929)
!1993 = !DILocation(line: 22, column: 2, scope: !1929)
!1994 = !DILocation(line: 23, column: 30, scope: !1929)
!1995 = !DILocation(line: 23, column: 12, scope: !1929)
!1996 = !DILocation(line: 23, column: 2, scope: !1929)
!1997 = !DILocation(line: 25, column: 12, scope: !1929)
!1998 = !DILocation(line: 25, column: 2, scope: !1929)
!1999 = !DILocation(line: 26, column: 12, scope: !1929)
!2000 = !DILocation(line: 26, column: 2, scope: !1929)
!2001 = !DILocation(line: 27, column: 12, scope: !1929)
!2002 = !DILocation(line: 27, column: 2, scope: !1929)
!2003 = !DILocation(line: 30, column: 2, scope: !1929)
!2004 = !DILocation(line: 31, column: 1, scope: !1929)
!2005 = distinct !DISubprogram(name: "sign_wrapper_t", scope: !64, file: !64, line: 50, type: !2006, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !2)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null}
!2008 = !DILocation(line: 52, column: 33, scope: !2005)
!2009 = !DILocalVariable(name: "hash_oid", scope: !2005, file: !64, line: 52, type: !81)
!2010 = !DILocation(line: 0, scope: !2005)
!2011 = !DILocation(line: 53, column: 30, scope: !2005)
!2012 = !DILocalVariable(name: "hash", scope: !2005, file: !64, line: 53, type: !81)
!2013 = !DILocation(line: 54, column: 20, scope: !2005)
!2014 = !DILocalVariable(name: "hash_len", scope: !2005, file: !64, line: 54, type: !34)
!2015 = !DILocalVariable(name: "key", scope: !2005, file: !64, line: 55, type: !1934)
!2016 = !DILocation(line: 55, column: 21, scope: !2005)
!2017 = !DILocation(line: 55, column: 27, scope: !2005)
!2018 = !DILocalVariable(name: "sk", scope: !2005, file: !64, line: 56, type: !2019)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!2020 = !DILocation(line: 57, column: 22, scope: !2005)
!2021 = !DILocalVariable(name: "x", scope: !2005, file: !64, line: 57, type: !20)
!2022 = !DILocation(line: 58, column: 24, scope: !2005)
!2023 = !DILocalVariable(name: "p", scope: !2005, file: !64, line: 58, type: !20)
!2024 = !DILocation(line: 59, column: 24, scope: !2005)
!2025 = !DILocalVariable(name: "q", scope: !2005, file: !64, line: 59, type: !20)
!2026 = !DILocation(line: 60, column: 25, scope: !2005)
!2027 = !DILocalVariable(name: "dp", scope: !2005, file: !64, line: 60, type: !20)
!2028 = !DILocation(line: 61, column: 25, scope: !2005)
!2029 = !DILocalVariable(name: "dq", scope: !2005, file: !64, line: 61, type: !20)
!2030 = !DILocation(line: 62, column: 25, scope: !2005)
!2031 = !DILocalVariable(name: "iq", scope: !2005, file: !64, line: 62, type: !20)
!2032 = !DILocation(line: 64, column: 1, scope: !2005)
!2033 = !DILocation(line: 66, column: 5, scope: !2005)
!2034 = !DILocation(line: 66, column: 7, scope: !2005)
!2035 = !DILocation(line: 67, column: 5, scope: !2005)
!2036 = !DILocation(line: 67, column: 7, scope: !2005)
!2037 = !DILocation(line: 68, column: 5, scope: !2005)
!2038 = !DILocation(line: 68, column: 8, scope: !2005)
!2039 = !DILocation(line: 69, column: 5, scope: !2005)
!2040 = !DILocation(line: 69, column: 8, scope: !2005)
!2041 = !DILocation(line: 70, column: 5, scope: !2005)
!2042 = !DILocation(line: 70, column: 8, scope: !2005)
!2043 = !DILocation(line: 71, column: 1, scope: !2005)
!2044 = !DILocation(line: 84, column: 1, scope: !2005)
