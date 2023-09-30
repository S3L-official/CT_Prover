; ModuleID = 'sign.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_rsa_private_key = type { i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64 }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !66 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i8* %1, metadata !73, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i8* %2, metadata !74, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i64 %3, metadata !75, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i8* %1, metadata !76, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i8* %2, metadata !77, metadata !DIExpression()), !dbg !72
  br label %5, !dbg !80

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ]
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !72
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !72
  call void @llvm.dbg.value(metadata i8* %.0, metadata !77, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i8* %.01, metadata !76, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i64 %.02, metadata !75, metadata !DIExpression()), !dbg !72
  %6 = add i64 %.02, -1, !dbg !81
  call void @llvm.dbg.value(metadata i64 %6, metadata !75, metadata !DIExpression()), !dbg !72
  %7 = icmp ugt i64 %.02, 0, !dbg !82
  br i1 %7, label %8, label %17, !dbg !80

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !83
  call void @llvm.dbg.value(metadata i8* %9, metadata !77, metadata !DIExpression()), !dbg !72
  %10 = load i8, i8* %.0, align 1, !dbg !85
  %11 = zext i8 %10 to i32, !dbg !85
  call void @llvm.dbg.value(metadata i32 %11, metadata !86, metadata !DIExpression()), !dbg !87
  %12 = load i8, i8* %.01, align 1, !dbg !88
  %13 = zext i8 %12 to i32, !dbg !88
  call void @llvm.dbg.value(metadata i32 %13, metadata !89, metadata !DIExpression()), !dbg !87
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !90
  %15 = trunc i32 %14 to i8, !dbg !90
  store i8 %15, i8* %.01, align 1, !dbg !91
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !92
  call void @llvm.dbg.value(metadata i8* %16, metadata !76, metadata !DIExpression()), !dbg !72
  br label %5, !dbg !80, !llvm.loop !93

17:                                               ; preds = %5
  ret void, !dbg !96
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !97 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i32 %1, metadata !103, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i32 %2, metadata !104, metadata !DIExpression()), !dbg !102
  %4 = sub i32 0, %0, !dbg !105
  %5 = xor i32 %1, %2, !dbg !106
  %6 = and i32 %4, %5, !dbg !107
  %7 = xor i32 %2, %6, !dbg !108
  ret i32 %7, !dbg !109
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_add(i16* %0, i16* %1, i32 %2) #0 !dbg !110 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i16* %1, metadata !121, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 %2, metadata !122, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 0, metadata !123, metadata !DIExpression()), !dbg !120
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !124
  %5 = load i16, i16* %4, align 2, !dbg !124
  %6 = zext i16 %5 to i32, !dbg !124
  %7 = add nsw i32 %6, 31, !dbg !125
  %8 = ashr i32 %7, 4, !dbg !126
  %9 = sext i32 %8 to i64, !dbg !127
  call void @llvm.dbg.value(metadata i64 %9, metadata !128, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i64 1, metadata !129, metadata !DIExpression()), !dbg !120
  br label %10, !dbg !130

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !120
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !132
  call void @llvm.dbg.value(metadata i64 %.0, metadata !129, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 %.01, metadata !123, metadata !DIExpression()), !dbg !120
  %11 = icmp ult i64 %.0, %9, !dbg !133
  br i1 %11, label %12, label %28, !dbg !135

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !136
  %14 = load i16, i16* %13, align 2, !dbg !136
  %15 = zext i16 %14 to i32, !dbg !136
  call void @llvm.dbg.value(metadata i32 %15, metadata !138, metadata !DIExpression()), !dbg !139
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !140
  %17 = load i16, i16* %16, align 2, !dbg !140
  %18 = zext i16 %17 to i32, !dbg !140
  call void @llvm.dbg.value(metadata i32 %18, metadata !141, metadata !DIExpression()), !dbg !139
  %19 = add i32 %15, %18, !dbg !142
  %20 = add i32 %19, %.01, !dbg !143
  call void @llvm.dbg.value(metadata i32 %20, metadata !144, metadata !DIExpression()), !dbg !139
  %21 = lshr i32 %20, 15, !dbg !145
  call void @llvm.dbg.value(metadata i32 %21, metadata !123, metadata !DIExpression()), !dbg !120
  %22 = and i32 %20, 32767, !dbg !146
  %23 = call i32 @MUX.1(i32 %2, i32 %22, i32 %15), !dbg !147
  %24 = trunc i32 %23 to i16, !dbg !147
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !148
  store i16 %24, i16* %25, align 2, !dbg !149
  br label %26, !dbg !150

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !151
  call void @llvm.dbg.value(metadata i64 %27, metadata !129, metadata !DIExpression()), !dbg !120
  br label %10, !dbg !152, !llvm.loop !153

28:                                               ; preds = %10
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
define dso_local i32 @br_i15_bit_length(i16* %0, i64 %1) #0 !dbg !166 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %1, metadata !171, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 0, metadata !172, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !170
  br label %3, !dbg !174

3:                                                ; preds = %6, %2
  %.02 = phi i32 [ 0, %2 ], [ %11, %6 ], !dbg !170
  %.01 = phi i64 [ %1, %2 ], [ %4, %6 ]
  %.0 = phi i32 [ 0, %2 ], [ %13, %6 ], !dbg !170
  call void @llvm.dbg.value(metadata i32 %.0, metadata !173, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i64 %.01, metadata !171, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32 %.02, metadata !172, metadata !DIExpression()), !dbg !170
  %4 = add i64 %.01, -1, !dbg !175
  call void @llvm.dbg.value(metadata i64 %4, metadata !171, metadata !DIExpression()), !dbg !170
  %5 = icmp ugt i64 %.01, 0, !dbg !176
  br i1 %5, label %6, label %14, !dbg !174

6:                                                ; preds = %3
  %7 = call i32 @EQ(i32 %.02, i32 0), !dbg !177
  call void @llvm.dbg.value(metadata i32 %7, metadata !179, metadata !DIExpression()), !dbg !180
  %8 = getelementptr inbounds i16, i16* %0, i64 %4, !dbg !181
  %9 = load i16, i16* %8, align 2, !dbg !181
  %10 = zext i16 %9 to i32, !dbg !181
  call void @llvm.dbg.value(metadata i32 %10, metadata !182, metadata !DIExpression()), !dbg !180
  %11 = call i32 @MUX.2(i32 %7, i32 %10, i32 %.02), !dbg !183
  call void @llvm.dbg.value(metadata i32 %11, metadata !172, metadata !DIExpression()), !dbg !170
  %12 = trunc i64 %4 to i32, !dbg !184
  %13 = call i32 @MUX.2(i32 %7, i32 %12, i32 %.0), !dbg !185
  call void @llvm.dbg.value(metadata i32 %13, metadata !173, metadata !DIExpression()), !dbg !170
  br label %3, !dbg !174, !llvm.loop !186

14:                                               ; preds = %3
  %15 = shl i32 %.0, 4, !dbg !188
  %16 = call i32 @BIT_LENGTH(i32 %.02), !dbg !189
  %17 = add i32 %15, %16, !dbg !190
  ret i32 %17, !dbg !191
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
define dso_local void @br_i15_decode(i16* %0, i8* %1, i64 %2) #0 !dbg !273 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i8* %1, metadata !278, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %2, metadata !279, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i8* %1, metadata !280, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 1, metadata !281, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 0, metadata !283, metadata !DIExpression()), !dbg !277
  br label %4, !dbg !285

4:                                                ; preds = %22, %3
  %.04 = phi i64 [ 1, %3 ], [ %.15, %22 ], !dbg !277
  %.03 = phi i64 [ %2, %3 ], [ %5, %22 ]
  %.01 = phi i32 [ 0, %3 ], [ %.12, %22 ], !dbg !277
  %.0 = phi i32 [ 0, %3 ], [ %.1, %22 ], !dbg !277
  call void @llvm.dbg.value(metadata i32 %.0, metadata !283, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %.01, metadata !282, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %.03, metadata !279, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %.04, metadata !281, metadata !DIExpression()), !dbg !277
  %5 = add i64 %.03, -1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %5, metadata !279, metadata !DIExpression()), !dbg !277
  %6 = icmp ugt i64 %.03, 0, !dbg !287
  br i1 %6, label %7, label %23, !dbg !285

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !288
  %9 = load i8, i8* %8, align 1, !dbg !288
  %10 = zext i8 %9 to i32, !dbg !288
  call void @llvm.dbg.value(metadata i32 %10, metadata !290, metadata !DIExpression()), !dbg !291
  %11 = shl i32 %10, %.0, !dbg !292
  %12 = or i32 %.01, %11, !dbg !293
  call void @llvm.dbg.value(metadata i32 %12, metadata !282, metadata !DIExpression()), !dbg !277
  %13 = add nsw i32 %.0, 8, !dbg !294
  call void @llvm.dbg.value(metadata i32 %13, metadata !283, metadata !DIExpression()), !dbg !277
  %14 = icmp sge i32 %13, 15, !dbg !295
  br i1 %14, label %15, label %22, !dbg !297

15:                                               ; preds = %7
  %16 = and i32 %12, 32767, !dbg !298
  %17 = trunc i32 %16 to i16, !dbg !300
  %18 = add i64 %.04, 1, !dbg !301
  call void @llvm.dbg.value(metadata i64 %18, metadata !281, metadata !DIExpression()), !dbg !277
  %19 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !302
  store i16 %17, i16* %19, align 2, !dbg !303
  %20 = sub nsw i32 %13, 15, !dbg !304
  call void @llvm.dbg.value(metadata i32 %20, metadata !283, metadata !DIExpression()), !dbg !277
  %21 = lshr i32 %12, 15, !dbg !305
  call void @llvm.dbg.value(metadata i32 %21, metadata !282, metadata !DIExpression()), !dbg !277
  br label %22, !dbg !306

22:                                               ; preds = %15, %7
  %.15 = phi i64 [ %18, %15 ], [ %.04, %7 ], !dbg !277
  %.12 = phi i32 [ %21, %15 ], [ %12, %7 ], !dbg !291
  %.1 = phi i32 [ %20, %15 ], [ %13, %7 ], !dbg !291
  call void @llvm.dbg.value(metadata i32 %.1, metadata !283, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %.12, metadata !282, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i64 %.15, metadata !281, metadata !DIExpression()), !dbg !277
  br label %4, !dbg !285, !llvm.loop !307

23:                                               ; preds = %4
  %24 = icmp ne i32 %.0, 0, !dbg !309
  br i1 %24, label %25, label %29, !dbg !311

25:                                               ; preds = %23
  %26 = trunc i32 %.01 to i16, !dbg !312
  %27 = add i64 %.04, 1, !dbg !314
  call void @llvm.dbg.value(metadata i64 %27, metadata !281, metadata !DIExpression()), !dbg !277
  %28 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !315
  store i16 %26, i16* %28, align 2, !dbg !316
  br label %29, !dbg !317

29:                                               ; preds = %25, %23
  %.2 = phi i64 [ %27, %25 ], [ %.04, %23 ], !dbg !277
  call void @llvm.dbg.value(metadata i64 %.2, metadata !281, metadata !DIExpression()), !dbg !277
  %30 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !318
  %31 = sub i64 %.2, 1, !dbg !319
  %32 = call i32 @br_i15_bit_length(i16* %30, i64 %31), !dbg !320
  %33 = trunc i32 %32 to i16, !dbg !320
  %34 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !321
  store i16 %33, i16* %34, align 2, !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_decode_reduce(i16* %0, i8* %1, i64 %2, i16* %3) #0 !dbg !324 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i8* %1, metadata !329, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64 %2, metadata !330, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i16* %3, metadata !331, metadata !DIExpression()), !dbg !328
  %5 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !332
  %6 = load i16, i16* %5, align 2, !dbg !332
  %7 = zext i16 %6 to i32, !dbg !332
  call void @llvm.dbg.value(metadata i32 %7, metadata !333, metadata !DIExpression()), !dbg !328
  %8 = icmp eq i32 %7, 0, !dbg !334
  br i1 %8, label %9, label %11, !dbg !336

9:                                                ; preds = %4
  %10 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !337
  store i16 0, i16* %10, align 2, !dbg !339
  br label %60, !dbg !340

11:                                               ; preds = %4
  %12 = trunc i32 %7 to i16, !dbg !341
  call void @br_i15_zero(i16* %0, i16 zeroext %12), !dbg !342
  %13 = lshr i32 %7, 4, !dbg !343
  call void @llvm.dbg.value(metadata i32 %13, metadata !344, metadata !DIExpression()), !dbg !328
  %14 = and i32 %7, 15, !dbg !345
  %15 = shl i32 %13, 4, !dbg !346
  %16 = add i32 %14, %15, !dbg !347
  %17 = sub i32 %16, %13, !dbg !348
  call void @llvm.dbg.value(metadata i32 %17, metadata !344, metadata !DIExpression()), !dbg !328
  %18 = add i32 %17, 7, !dbg !349
  %19 = lshr i32 %18, 3, !dbg !350
  %20 = zext i32 %19 to i64, !dbg !351
  call void @llvm.dbg.value(metadata i64 %20, metadata !352, metadata !DIExpression()), !dbg !328
  %21 = sub i64 %20, 1, !dbg !353
  call void @llvm.dbg.value(metadata i64 %21, metadata !354, metadata !DIExpression()), !dbg !328
  %22 = icmp uge i64 %21, %2, !dbg !355
  br i1 %22, label %23, label %26, !dbg !357

23:                                               ; preds = %11
  call void @br_i15_decode(i16* %0, i8* %1, i64 %2), !dbg !358
  %24 = trunc i32 %7 to i16, !dbg !360
  %25 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !361
  store i16 %24, i16* %25, align 2, !dbg !362
  br label %60, !dbg !363

26:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* %1, metadata !364, metadata !DIExpression()), !dbg !328
  call void @br_i15_decode(i16* %0, i8* %1, i64 %21), !dbg !365
  %27 = trunc i32 %7 to i16, !dbg !366
  %28 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !367
  store i16 %27, i16* %28, align 2, !dbg !368
  call void @llvm.dbg.value(metadata i32 0, metadata !369, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !328
  br label %29, !dbg !371

29:                                               ; preds = %48, %26
  %.03 = phi i64 [ %21, %26 ], [ %32, %48 ], !dbg !328
  %.01 = phi i32 [ 0, %26 ], [ %.12, %48 ], !dbg !328
  %.0 = phi i32 [ 0, %26 ], [ %.1, %48 ], !dbg !328
  call void @llvm.dbg.value(metadata i32 %.0, metadata !370, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32 %.01, metadata !369, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i64 %.03, metadata !354, metadata !DIExpression()), !dbg !328
  %30 = icmp ult i64 %.03, %2, !dbg !372
  br i1 %30, label %31, label %49, !dbg !371

31:                                               ; preds = %29
  %32 = add i64 %.03, 1, !dbg !373
  call void @llvm.dbg.value(metadata i64 %32, metadata !354, metadata !DIExpression()), !dbg !328
  %33 = getelementptr inbounds i8, i8* %1, i64 %.03, !dbg !375
  %34 = load i8, i8* %33, align 1, !dbg !375
  %35 = zext i8 %34 to i32, !dbg !375
  call void @llvm.dbg.value(metadata i32 %35, metadata !376, metadata !DIExpression()), !dbg !377
  %36 = shl i32 %.01, 8, !dbg !378
  %37 = or i32 %36, %35, !dbg !379
  call void @llvm.dbg.value(metadata i32 %37, metadata !369, metadata !DIExpression()), !dbg !328
  %38 = add nsw i32 %.0, 8, !dbg !380
  call void @llvm.dbg.value(metadata i32 %38, metadata !370, metadata !DIExpression()), !dbg !328
  %39 = icmp sge i32 %38, 15, !dbg !381
  br i1 %39, label %40, label %48, !dbg !383

40:                                               ; preds = %31
  %41 = sub nsw i32 %38, 15, !dbg !384
  %42 = lshr i32 %37, %41, !dbg !386
  %43 = trunc i32 %42 to i16, !dbg !387
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %43, i16* %3), !dbg !388
  %44 = sub nsw i32 %38, 15, !dbg !389
  call void @llvm.dbg.value(metadata i32 %44, metadata !370, metadata !DIExpression()), !dbg !328
  %45 = shl i32 -1, %44, !dbg !390
  %46 = xor i32 %45, -1, !dbg !391
  %47 = and i32 %37, %46, !dbg !392
  call void @llvm.dbg.value(metadata i32 %47, metadata !369, metadata !DIExpression()), !dbg !328
  br label %48, !dbg !393

48:                                               ; preds = %40, %31
  %.12 = phi i32 [ %47, %40 ], [ %37, %31 ], !dbg !377
  %.1 = phi i32 [ %44, %40 ], [ %38, %31 ], !dbg !377
  call void @llvm.dbg.value(metadata i32 %.1, metadata !370, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32 %.12, metadata !369, metadata !DIExpression()), !dbg !328
  br label %29, !dbg !371, !llvm.loop !394

49:                                               ; preds = %29
  %50 = icmp ne i32 %.0, 0, !dbg !396
  br i1 %50, label %51, label %60, !dbg !398

51:                                               ; preds = %49
  %52 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !399
  %53 = load i16, i16* %52, align 2, !dbg !399
  %54 = zext i16 %53 to i32, !dbg !399
  %55 = shl i32 %54, %.0, !dbg !401
  %56 = or i32 %.01, %55, !dbg !402
  %57 = and i32 %56, 32767, !dbg !403
  call void @llvm.dbg.value(metadata i32 %57, metadata !369, metadata !DIExpression()), !dbg !328
  %58 = sub nsw i32 15, %.0, !dbg !404
  call void @br_i15_rshift(i16* %0, i32 %58), !dbg !405
  %59 = trunc i32 %57 to i16, !dbg !406
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %59, i16* %3), !dbg !407
  br label %60, !dbg !408

60:                                               ; preds = %51, %49, %23, %9
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero(i16* %0, i16 zeroext %1) #0 !dbg !410 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i16 %1, metadata !415, metadata !DIExpression()), !dbg !414
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !416
  call void @llvm.dbg.value(metadata i16* %3, metadata !413, metadata !DIExpression()), !dbg !414
  store i16 %1, i16* %0, align 2, !dbg !417
  %4 = bitcast i16* %3 to i8*, !dbg !418
  %5 = zext i16 %1 to i32, !dbg !419
  %6 = add nsw i32 %5, 15, !dbg !420
  %7 = ashr i32 %6, 4, !dbg !421
  %8 = sext i32 %7 to i64, !dbg !422
  %9 = mul i64 %8, 2, !dbg !423
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !418
  ret void, !dbg !424
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_encode(i8* %0, i64 %1, i16* %2) #0 !dbg !425 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i64 %1, metadata !430, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i16* %2, metadata !431, metadata !DIExpression()), !dbg !429
  %4 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !432
  %5 = load i16, i16* %4, align 2, !dbg !432
  %6 = zext i16 %5 to i32, !dbg !432
  %7 = add nsw i32 %6, 15, !dbg !433
  %8 = ashr i32 %7, 4, !dbg !434
  %9 = sext i32 %8 to i64, !dbg !435
  call void @llvm.dbg.value(metadata i64 %9, metadata !436, metadata !DIExpression()), !dbg !429
  %10 = icmp eq i64 %9, 0, !dbg !437
  br i1 %10, label %11, label %12, !dbg !439

11:                                               ; preds = %3
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !440
  br label %34, !dbg !442

12:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i64 1, metadata !443, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32 0, metadata !444, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32 0, metadata !445, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i8* %0, metadata !446, metadata !DIExpression()), !dbg !429
  br label %13, !dbg !447

13:                                               ; preds = %29, %12
  %.04 = phi i64 [ 1, %12 ], [ %.26, %29 ], !dbg !429
  %.02 = phi i32 [ 0, %12 ], [ %32, %29 ], !dbg !429
  %.01 = phi i64 [ %1, %12 ], [ %14, %29 ]
  %.0 = phi i32 [ 0, %12 ], [ %33, %29 ], !dbg !429
  call void @llvm.dbg.value(metadata i32 %.0, metadata !445, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i64 %.01, metadata !430, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32 %.02, metadata !444, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i64 %.04, metadata !443, metadata !DIExpression()), !dbg !429
  %14 = add i64 %.01, -1, !dbg !448
  call void @llvm.dbg.value(metadata i64 %14, metadata !430, metadata !DIExpression()), !dbg !429
  %15 = icmp ugt i64 %.01, 0, !dbg !449
  br i1 %15, label %16, label %34, !dbg !447

16:                                               ; preds = %13
  %17 = icmp slt i32 %.0, 8, !dbg !450
  br i1 %17, label %18, label %29, !dbg !453

18:                                               ; preds = %16
  %19 = icmp ule i64 %.04, %9, !dbg !454
  br i1 %19, label %20, label %27, !dbg !457

20:                                               ; preds = %18
  %21 = add i64 %.04, 1, !dbg !458
  call void @llvm.dbg.value(metadata i64 %21, metadata !443, metadata !DIExpression()), !dbg !429
  %22 = getelementptr inbounds i16, i16* %2, i64 %.04, !dbg !460
  %23 = load i16, i16* %22, align 2, !dbg !460
  %24 = zext i16 %23 to i32, !dbg !461
  %25 = shl i32 %24, %.0, !dbg !462
  %26 = add i32 %.02, %25, !dbg !463
  call void @llvm.dbg.value(metadata i32 %26, metadata !444, metadata !DIExpression()), !dbg !429
  br label %27, !dbg !464

27:                                               ; preds = %20, %18
  %.15 = phi i64 [ %21, %20 ], [ %.04, %18 ], !dbg !429
  %.13 = phi i32 [ %26, %20 ], [ %.02, %18 ], !dbg !429
  call void @llvm.dbg.value(metadata i32 %.13, metadata !444, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i64 %.15, metadata !443, metadata !DIExpression()), !dbg !429
  %28 = add nsw i32 %.0, 15, !dbg !465
  call void @llvm.dbg.value(metadata i32 %28, metadata !445, metadata !DIExpression()), !dbg !429
  br label %29, !dbg !466

29:                                               ; preds = %27, %16
  %.26 = phi i64 [ %.15, %27 ], [ %.04, %16 ], !dbg !429
  %.2 = phi i32 [ %.13, %27 ], [ %.02, %16 ], !dbg !429
  %.1 = phi i32 [ %28, %27 ], [ %.0, %16 ], !dbg !429
  call void @llvm.dbg.value(metadata i32 %.1, metadata !445, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i32 %.2, metadata !444, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata i64 %.26, metadata !443, metadata !DIExpression()), !dbg !429
  %30 = trunc i32 %.2 to i8, !dbg !467
  %31 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !468
  store i8 %30, i8* %31, align 1, !dbg !469
  %32 = lshr i32 %.2, 8, !dbg !470
  call void @llvm.dbg.value(metadata i32 %32, metadata !444, metadata !DIExpression()), !dbg !429
  %33 = sub nsw i32 %.1, 8, !dbg !471
  call void @llvm.dbg.value(metadata i32 %33, metadata !445, metadata !DIExpression()), !dbg !429
  br label %13, !dbg !447, !llvm.loop !472

34:                                               ; preds = %13, %11
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_from_monty(i16* %0, i16* %1, i16 zeroext %2) #0 !dbg !475 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i16* %1, metadata !480, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i16 %2, metadata !481, metadata !DIExpression()), !dbg !479
  %4 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !482
  %5 = load i16, i16* %4, align 2, !dbg !482
  %6 = zext i16 %5 to i32, !dbg !482
  %7 = add nsw i32 %6, 15, !dbg !483
  %8 = ashr i32 %7, 4, !dbg !484
  %9 = sext i32 %8 to i64, !dbg !485
  call void @llvm.dbg.value(metadata i64 %9, metadata !486, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.value(metadata i64 0, metadata !487, metadata !DIExpression()), !dbg !479
  br label %10, !dbg !488

10:                                               ; preds = %45, %3
  %.02 = phi i64 [ 0, %3 ], [ %46, %45 ], !dbg !490
  call void @llvm.dbg.value(metadata i64 %.02, metadata !487, metadata !DIExpression()), !dbg !479
  %11 = icmp ult i64 %.02, %9, !dbg !491
  br i1 %11, label %12, label %47, !dbg !493

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !494
  %14 = load i16, i16* %13, align 2, !dbg !494
  %15 = zext i16 %14 to i32, !dbg !494
  %16 = zext i16 %2 to i32, !dbg !494
  %17 = mul i32 %15, %16, !dbg !494
  %18 = and i32 %17, 32767, !dbg !496
  call void @llvm.dbg.value(metadata i32 %18, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i32 0, metadata !499, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i64 0, metadata !500, metadata !DIExpression()), !dbg !479
  br label %19, !dbg !501

19:                                               ; preds = %40, %12
  %.01 = phi i64 [ 0, %12 ], [ %41, %40 ], !dbg !503
  %.0 = phi i32 [ 0, %12 ], [ %33, %40 ], !dbg !498
  call void @llvm.dbg.value(metadata i32 %.0, metadata !499, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i64 %.01, metadata !500, metadata !DIExpression()), !dbg !479
  %20 = icmp ult i64 %.01, %9, !dbg !504
  br i1 %20, label %21, label %42, !dbg !506

21:                                               ; preds = %19
  %22 = add i64 %.01, 1, !dbg !507
  %23 = getelementptr inbounds i16, i16* %0, i64 %22, !dbg !509
  %24 = load i16, i16* %23, align 2, !dbg !509
  %25 = zext i16 %24 to i32, !dbg !510
  %26 = add i64 %.01, 1, !dbg !511
  %27 = getelementptr inbounds i16, i16* %1, i64 %26, !dbg !511
  %28 = load i16, i16* %27, align 2, !dbg !511
  %29 = zext i16 %28 to i32, !dbg !511
  %30 = mul i32 %18, %29, !dbg !511
  %31 = add i32 %25, %30, !dbg !512
  %32 = add i32 %31, %.0, !dbg !513
  call void @llvm.dbg.value(metadata i32 %32, metadata !514, metadata !DIExpression()), !dbg !515
  %33 = lshr i32 %32, 15, !dbg !516
  call void @llvm.dbg.value(metadata i32 %33, metadata !499, metadata !DIExpression()), !dbg !498
  %34 = icmp ne i64 %.01, 0, !dbg !517
  br i1 %34, label %35, label %39, !dbg !519

35:                                               ; preds = %21
  %36 = and i32 %32, 32767, !dbg !520
  %37 = trunc i32 %36 to i16, !dbg !522
  %38 = getelementptr inbounds i16, i16* %0, i64 %.01, !dbg !523
  store i16 %37, i16* %38, align 2, !dbg !524
  br label %39, !dbg !525

39:                                               ; preds = %35, %21
  br label %40, !dbg !526

40:                                               ; preds = %39
  %41 = add i64 %.01, 1, !dbg !527
  call void @llvm.dbg.value(metadata i64 %41, metadata !500, metadata !DIExpression()), !dbg !479
  br label %19, !dbg !528, !llvm.loop !529

42:                                               ; preds = %19
  %43 = trunc i32 %.0 to i16, !dbg !531
  %44 = getelementptr inbounds i16, i16* %0, i64 %9, !dbg !532
  store i16 %43, i16* %44, align 2, !dbg !533
  br label %45, !dbg !534

45:                                               ; preds = %42
  %46 = add i64 %.02, 1, !dbg !535
  call void @llvm.dbg.value(metadata i64 %46, metadata !487, metadata !DIExpression()), !dbg !479
  br label %10, !dbg !536, !llvm.loop !537

47:                                               ; preds = %10
  %48 = call i32 @br_i15_sub(i16* %0, i16* %1, i32 0), !dbg !539
  %49 = call i32 @NOT.3(i32 %48), !dbg !540
  %50 = call i32 @br_i15_sub(i16* %0, i16* %1, i32 %49), !dbg !541
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.3(i32 %0) #0 !dbg !543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !544, metadata !DIExpression()), !dbg !545
  %2 = xor i32 %0, 1, !dbg !546
  ret i32 %2, !dbg !547
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_modpow_opt(i16* %0, i8* %1, i64 %2, i16* %3, i16 zeroext %4, i16* %5, i64 %6) #0 !dbg !548 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i8* %1, metadata !553, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 %2, metadata !554, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i16* %3, metadata !555, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i16 %4, metadata !556, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i16* %5, metadata !557, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 %6, metadata !558, metadata !DIExpression()), !dbg !552
  %8 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !559
  %9 = load i16, i16* %8, align 2, !dbg !559
  %10 = zext i16 %9 to i32, !dbg !559
  %11 = add nsw i32 %10, 31, !dbg !560
  %12 = ashr i32 %11, 4, !dbg !561
  %13 = sext i32 %12 to i64, !dbg !562
  call void @llvm.dbg.value(metadata i64 %13, metadata !563, metadata !DIExpression()), !dbg !552
  %14 = mul i64 %13, 2, !dbg !564
  call void @llvm.dbg.value(metadata i64 %14, metadata !565, metadata !DIExpression()), !dbg !552
  %15 = and i64 %13, 1, !dbg !566
  %16 = add i64 %13, %15, !dbg !567
  call void @llvm.dbg.value(metadata i64 %16, metadata !563, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i16* %5, metadata !568, metadata !DIExpression()), !dbg !552
  %17 = getelementptr inbounds i16, i16* %5, i64 %16, !dbg !569
  call void @llvm.dbg.value(metadata i16* %17, metadata !570, metadata !DIExpression()), !dbg !552
  %18 = shl i64 %16, 1, !dbg !571
  %19 = icmp ult i64 %6, %18, !dbg !573
  br i1 %19, label %20, label %21, !dbg !574

20:                                               ; preds = %7
  br label %136, !dbg !575

21:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 5, metadata !577, metadata !DIExpression()), !dbg !552
  br label %22, !dbg !578

22:                                               ; preds = %32, %21
  %.08 = phi i32 [ 5, %21 ], [ %33, %32 ], !dbg !580
  call void @llvm.dbg.value(metadata i32 %.08, metadata !577, metadata !DIExpression()), !dbg !552
  %23 = icmp sgt i32 %.08, 1, !dbg !581
  br i1 %23, label %24, label %34, !dbg !583

24:                                               ; preds = %22
  %25 = shl i32 1, %.08, !dbg !584
  %26 = add i32 %25, 1, !dbg !587
  %27 = zext i32 %26 to i64, !dbg !588
  %28 = mul i64 %27, %16, !dbg !589
  %29 = icmp ule i64 %28, %6, !dbg !590
  br i1 %29, label %30, label %31, !dbg !591

30:                                               ; preds = %24
  br label %34, !dbg !592

31:                                               ; preds = %24
  br label %32, !dbg !594

32:                                               ; preds = %31
  %33 = add nsw i32 %.08, -1, !dbg !595
  call void @llvm.dbg.value(metadata i32 %33, metadata !577, metadata !DIExpression()), !dbg !552
  br label %22, !dbg !596, !llvm.loop !597

34:                                               ; preds = %30, %22
  call void @br_i15_to_monty(i16* %0, i16* %3), !dbg !599
  %35 = icmp eq i32 %.08, 1, !dbg !600
  br i1 %35, label %36, label %39, !dbg !602

36:                                               ; preds = %34
  %37 = bitcast i16* %17 to i8*, !dbg !603
  %38 = bitcast i16* %0 to i8*, !dbg !603
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %37, i8* align 2 %38, i64 %14, i1 false), !dbg !603
  br label %54, !dbg !605

39:                                               ; preds = %34
  %40 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !606
  %41 = bitcast i16* %40 to i8*, !dbg !608
  %42 = bitcast i16* %0 to i8*, !dbg !608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %41, i8* align 2 %42, i64 %14, i1 false), !dbg !608
  %43 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !609
  call void @llvm.dbg.value(metadata i16* %43, metadata !610, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 2, metadata !611, metadata !DIExpression()), !dbg !552
  br label %44, !dbg !612

44:                                               ; preds = %51, %39
  %.018 = phi i16* [ %43, %39 ], [ %50, %51 ], !dbg !614
  %.016 = phi i64 [ 2, %39 ], [ %52, %51 ], !dbg !615
  call void @llvm.dbg.value(metadata i64 %.016, metadata !611, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i16* %.018, metadata !610, metadata !DIExpression()), !dbg !552
  %45 = shl i32 1, %.08, !dbg !616
  %46 = zext i32 %45 to i64, !dbg !618
  %47 = icmp ult i64 %.016, %46, !dbg !619
  br i1 %47, label %48, label %53, !dbg !620

48:                                               ; preds = %44
  %49 = getelementptr inbounds i16, i16* %.018, i64 %16, !dbg !621
  call void @br_i15_montymul(i16* %49, i16* %.018, i16* %0, i16* %3, i16 zeroext %4), !dbg !623
  %50 = getelementptr inbounds i16, i16* %.018, i64 %16, !dbg !624
  call void @llvm.dbg.value(metadata i16* %50, metadata !610, metadata !DIExpression()), !dbg !552
  br label %51, !dbg !625

51:                                               ; preds = %48
  %52 = add i64 %.016, 1, !dbg !626
  call void @llvm.dbg.value(metadata i64 %52, metadata !611, metadata !DIExpression()), !dbg !552
  br label %44, !dbg !627, !llvm.loop !628

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %36
  %55 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !630
  %56 = load i16, i16* %55, align 2, !dbg !630
  call void @br_i15_zero.4(i16* %0, i16 zeroext %56), !dbg !631
  %57 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !632
  %58 = load i16, i16* %57, align 2, !dbg !632
  %59 = zext i16 %58 to i32, !dbg !632
  %60 = add nsw i32 %59, 15, !dbg !633
  %61 = ashr i32 %60, 4, !dbg !634
  %62 = sext i32 %61 to i64, !dbg !635
  %63 = getelementptr inbounds i16, i16* %0, i64 %62, !dbg !635
  store i16 1, i16* %63, align 2, !dbg !636
  call void @br_i15_muladd_small(i16* %0, i16 zeroext 0, i16* %3), !dbg !637
  call void @llvm.dbg.value(metadata i32 0, metadata !638, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 0, metadata !639, metadata !DIExpression()), !dbg !552
  br label %64, !dbg !640

64:                                               ; preds = %131, %54
  %.012 = phi i32 [ 0, %54 ], [ %.214, %131 ], !dbg !552
  %.09 = phi i32 [ 0, %54 ], [ %90, %131 ], !dbg !552
  %.04 = phi i64 [ %2, %54 ], [ %.26, %131 ]
  %.02 = phi i8* [ %1, %54 ], [ %.2, %131 ]
  call void @llvm.dbg.value(metadata i8* %.02, metadata !553, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 %.04, metadata !554, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %.09, metadata !639, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %.012, metadata !638, metadata !DIExpression()), !dbg !552
  %65 = icmp sgt i32 %.09, 0, !dbg !641
  br i1 %65, label %68, label %66, !dbg !642

66:                                               ; preds = %64
  %67 = icmp ugt i64 %.04, 0, !dbg !643
  br label %68, !dbg !642

68:                                               ; preds = %66, %64
  %69 = phi i1 [ true, %64 ], [ %67, %66 ]
  br i1 %69, label %70, label %135, !dbg !640

70:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 %.08, metadata !644, metadata !DIExpression()), !dbg !646
  %71 = icmp slt i32 %.09, %.08, !dbg !647
  br i1 %71, label %72, label %84, !dbg !649

72:                                               ; preds = %70
  %73 = icmp ugt i64 %.04, 0, !dbg !650
  br i1 %73, label %74, label %82, !dbg !653

74:                                               ; preds = %72
  %75 = shl i32 %.012, 8, !dbg !654
  %76 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !656
  call void @llvm.dbg.value(metadata i8* %76, metadata !553, metadata !DIExpression()), !dbg !552
  %77 = load i8, i8* %.02, align 1, !dbg !657
  %78 = zext i8 %77 to i32, !dbg !657
  %79 = or i32 %75, %78, !dbg !658
  call void @llvm.dbg.value(metadata i32 %79, metadata !638, metadata !DIExpression()), !dbg !552
  %80 = add i64 %.04, -1, !dbg !659
  call void @llvm.dbg.value(metadata i64 %80, metadata !554, metadata !DIExpression()), !dbg !552
  %81 = add nsw i32 %.09, 8, !dbg !660
  call void @llvm.dbg.value(metadata i32 %81, metadata !639, metadata !DIExpression()), !dbg !552
  br label %83, !dbg !661

82:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 %.09, metadata !644, metadata !DIExpression()), !dbg !646
  br label %83

83:                                               ; preds = %82, %74
  %.113 = phi i32 [ %79, %74 ], [ %.012, %82 ], !dbg !552
  %.110 = phi i32 [ %81, %74 ], [ %.09, %82 ], !dbg !552
  %.15 = phi i64 [ %80, %74 ], [ %.04, %82 ]
  %.13 = phi i8* [ %76, %74 ], [ %.02, %82 ]
  %.01 = phi i32 [ %.08, %74 ], [ %.09, %82 ], !dbg !646
  call void @llvm.dbg.value(metadata i32 %.01, metadata !644, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i8* %.13, metadata !553, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 %.15, metadata !554, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %.110, metadata !639, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %.113, metadata !638, metadata !DIExpression()), !dbg !552
  br label %84, !dbg !662

84:                                               ; preds = %83, %70
  %.214 = phi i32 [ %.113, %83 ], [ %.012, %70 ], !dbg !552
  %.211 = phi i32 [ %.110, %83 ], [ %.09, %70 ], !dbg !552
  %.26 = phi i64 [ %.15, %83 ], [ %.04, %70 ]
  %.2 = phi i8* [ %.13, %83 ], [ %.02, %70 ]
  %.1 = phi i32 [ %.01, %83 ], [ %.08, %70 ], !dbg !663
  call void @llvm.dbg.value(metadata i32 %.1, metadata !644, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i8* %.2, metadata !553, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 %.26, metadata !554, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %.211, metadata !639, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %.214, metadata !638, metadata !DIExpression()), !dbg !552
  %85 = sub nsw i32 %.211, %.1, !dbg !664
  %86 = lshr i32 %.214, %85, !dbg !665
  %87 = shl i32 1, %.1, !dbg !666
  %88 = sub i32 %87, 1, !dbg !667
  %89 = and i32 %86, %88, !dbg !668
  call void @llvm.dbg.value(metadata i32 %89, metadata !669, metadata !DIExpression()), !dbg !646
  %90 = sub nsw i32 %.211, %.1, !dbg !670
  call void @llvm.dbg.value(metadata i32 %90, metadata !639, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 0, metadata !671, metadata !DIExpression()), !dbg !646
  br label %91, !dbg !672

91:                                               ; preds = %96, %84
  %.07 = phi i32 [ 0, %84 ], [ %97, %96 ], !dbg !674
  call void @llvm.dbg.value(metadata i32 %.07, metadata !671, metadata !DIExpression()), !dbg !646
  %92 = icmp slt i32 %.07, %.1, !dbg !675
  br i1 %92, label %93, label %98, !dbg !677

93:                                               ; preds = %91
  call void @br_i15_montymul(i16* %5, i16* %0, i16* %0, i16* %3, i16 zeroext %4), !dbg !678
  %94 = bitcast i16* %0 to i8*, !dbg !680
  %95 = bitcast i16* %5 to i8*, !dbg !680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %94, i8* align 2 %95, i64 %14, i1 false), !dbg !680
  br label %96, !dbg !681

96:                                               ; preds = %93
  %97 = add nsw i32 %.07, 1, !dbg !682
  call void @llvm.dbg.value(metadata i32 %97, metadata !671, metadata !DIExpression()), !dbg !646
  br label %91, !dbg !683, !llvm.loop !684

98:                                               ; preds = %91
  %99 = icmp sgt i32 %.08, 1, !dbg !686
  br i1 %99, label %100, label %131, !dbg !688

100:                                              ; preds = %98
  %101 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !689
  %102 = load i16, i16* %101, align 2, !dbg !689
  call void @br_i15_zero.4(i16* %17, i16 zeroext %102), !dbg !691
  %103 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !692
  call void @llvm.dbg.value(metadata i16* %103, metadata !610, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i64 1, metadata !611, metadata !DIExpression()), !dbg !552
  br label %104, !dbg !693

104:                                              ; preds = %128, %100
  %.119 = phi i16* [ %103, %100 ], [ %127, %128 ], !dbg !695
  %.117 = phi i64 [ 1, %100 ], [ %129, %128 ], !dbg !696
  call void @llvm.dbg.value(metadata i64 %.117, metadata !611, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i16* %.119, metadata !610, metadata !DIExpression()), !dbg !552
  %105 = shl i32 1, %.1, !dbg !697
  %106 = zext i32 %105 to i64, !dbg !699
  %107 = icmp ult i64 %.117, %106, !dbg !700
  br i1 %107, label %108, label %130, !dbg !701

108:                                              ; preds = %104
  %109 = trunc i64 %.117 to i32, !dbg !702
  %110 = call i32 @EQ.5(i32 %109, i32 %89), !dbg !704
  %111 = sub i32 0, %110, !dbg !705
  call void @llvm.dbg.value(metadata i32 %111, metadata !706, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i64 1, metadata !708, metadata !DIExpression()), !dbg !552
  br label %112, !dbg !709

112:                                              ; preds = %124, %108
  %.015 = phi i64 [ 1, %108 ], [ %125, %124 ], !dbg !711
  call void @llvm.dbg.value(metadata i64 %.015, metadata !708, metadata !DIExpression()), !dbg !552
  %113 = icmp ult i64 %.015, %16, !dbg !712
  br i1 %113, label %114, label %126, !dbg !714

114:                                              ; preds = %112
  %115 = getelementptr inbounds i16, i16* %.119, i64 %.015, !dbg !715
  %116 = load i16, i16* %115, align 2, !dbg !715
  %117 = zext i16 %116 to i32, !dbg !715
  %118 = and i32 %111, %117, !dbg !717
  %119 = getelementptr inbounds i16, i16* %17, i64 %.015, !dbg !718
  %120 = load i16, i16* %119, align 2, !dbg !719
  %121 = zext i16 %120 to i32, !dbg !719
  %122 = or i32 %121, %118, !dbg !719
  %123 = trunc i32 %122 to i16, !dbg !719
  store i16 %123, i16* %119, align 2, !dbg !719
  br label %124, !dbg !720

124:                                              ; preds = %114
  %125 = add i64 %.015, 1, !dbg !721
  call void @llvm.dbg.value(metadata i64 %125, metadata !708, metadata !DIExpression()), !dbg !552
  br label %112, !dbg !722, !llvm.loop !723

126:                                              ; preds = %112
  %127 = getelementptr inbounds i16, i16* %.119, i64 %16, !dbg !725
  call void @llvm.dbg.value(metadata i16* %127, metadata !610, metadata !DIExpression()), !dbg !552
  br label %128, !dbg !726

128:                                              ; preds = %126
  %129 = add i64 %.117, 1, !dbg !727
  call void @llvm.dbg.value(metadata i64 %129, metadata !611, metadata !DIExpression()), !dbg !552
  br label %104, !dbg !728, !llvm.loop !729

130:                                              ; preds = %104
  br label %131, !dbg !731

131:                                              ; preds = %130, %98
  call void @br_i15_montymul(i16* %5, i16* %0, i16* %17, i16* %3, i16 zeroext %4), !dbg !732
  %132 = call i32 @NEQ.6(i32 %89, i32 0), !dbg !733
  %133 = bitcast i16* %0 to i8*, !dbg !734
  %134 = bitcast i16* %5 to i8*, !dbg !735
  call void @br_ccopy(i32 %132, i8* %133, i8* %134, i64 %14), !dbg !736
  br label %64, !dbg !640, !llvm.loop !737

135:                                              ; preds = %68
  call void @br_i15_from_monty(i16* %0, i16* %3, i16 zeroext %4), !dbg !739
  br label %136, !dbg !740

136:                                              ; preds = %135, %20
  %.0 = phi i32 [ 0, %20 ], [ 1, %135 ], !dbg !552
  ret i32 %.0, !dbg !741
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.4(i16* %0, i16 zeroext %1) #0 !dbg !742 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !743, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i16 %1, metadata !745, metadata !DIExpression()), !dbg !744
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !746
  call void @llvm.dbg.value(metadata i16* %3, metadata !743, metadata !DIExpression()), !dbg !744
  store i16 %1, i16* %0, align 2, !dbg !747
  %4 = bitcast i16* %3 to i8*, !dbg !748
  %5 = zext i16 %1 to i32, !dbg !749
  %6 = add nsw i32 %5, 15, !dbg !750
  %7 = ashr i32 %6, 4, !dbg !751
  %8 = sext i32 %7 to i64, !dbg !752
  %9 = mul i64 %8, 2, !dbg !753
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !748
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.5(i32 %0, i32 %1) #0 !dbg !755 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !756, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata i32 %1, metadata !758, metadata !DIExpression()), !dbg !757
  %3 = xor i32 %0, %1, !dbg !759
  call void @llvm.dbg.value(metadata i32 %3, metadata !760, metadata !DIExpression()), !dbg !757
  %4 = sub i32 0, %3, !dbg !761
  %5 = or i32 %3, %4, !dbg !762
  %6 = lshr i32 %5, 31, !dbg !763
  %7 = call i32 @NOT.7(i32 %6), !dbg !764
  ret i32 %7, !dbg !765
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.6(i32 %0, i32 %1) #0 !dbg !766 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !767, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i32 %1, metadata !769, metadata !DIExpression()), !dbg !768
  %3 = xor i32 %0, %1, !dbg !770
  call void @llvm.dbg.value(metadata i32 %3, metadata !771, metadata !DIExpression()), !dbg !768
  %4 = sub i32 0, %3, !dbg !772
  %5 = or i32 %3, %4, !dbg !773
  %6 = lshr i32 %5, 31, !dbg !774
  ret i32 %6, !dbg !775
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.7(i32 %0) #0 !dbg !776 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !777, metadata !DIExpression()), !dbg !778
  %2 = xor i32 %0, 1, !dbg !779
  ret i32 %2, !dbg !780
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_montymul(i16* %0, i16* %1, i16* %2, i16* %3, i16 zeroext %4) #0 !dbg !781 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !784, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16* %1, metadata !786, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16* %2, metadata !787, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16* %3, metadata !788, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i16 %4, metadata !789, metadata !DIExpression()), !dbg !785
  %6 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !790
  %7 = load i16, i16* %6, align 2, !dbg !790
  %8 = zext i16 %7 to i32, !dbg !790
  %9 = add nsw i32 %8, 15, !dbg !791
  %10 = ashr i32 %9, 4, !dbg !792
  %11 = sext i32 %10 to i64, !dbg !793
  call void @llvm.dbg.value(metadata i64 %11, metadata !794, metadata !DIExpression()), !dbg !785
  %12 = and i64 %11, -4, !dbg !795
  call void @llvm.dbg.value(metadata i64 %12, metadata !796, metadata !DIExpression()), !dbg !785
  %13 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !797
  %14 = load i16, i16* %13, align 2, !dbg !797
  call void @br_i15_zero.10(i16* %0, i16 zeroext %14), !dbg !798
  call void @llvm.dbg.value(metadata i32 0, metadata !799, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i64 0, metadata !800, metadata !DIExpression()), !dbg !785
  br label %15, !dbg !801

15:                                               ; preds = %165, %5
  %.04 = phi i64 [ 0, %5 ], [ %166, %165 ], !dbg !803
  %.01 = phi i32 [ 0, %5 ], [ %164, %165 ], !dbg !785
  call void @llvm.dbg.value(metadata i32 %.01, metadata !799, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata i64 %.04, metadata !800, metadata !DIExpression()), !dbg !785
  %16 = icmp ult i64 %.04, %11, !dbg !804
  br i1 %16, label %17, label %167, !dbg !806

17:                                               ; preds = %15
  %18 = add i64 %.04, 1, !dbg !807
  %19 = getelementptr inbounds i16, i16* %1, i64 %18, !dbg !809
  %20 = load i16, i16* %19, align 2, !dbg !809
  %21 = zext i16 %20 to i32, !dbg !809
  call void @llvm.dbg.value(metadata i32 %21, metadata !810, metadata !DIExpression()), !dbg !811
  %22 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !812
  %23 = load i16, i16* %22, align 2, !dbg !812
  %24 = zext i16 %23 to i32, !dbg !812
  %25 = add i64 %.04, 1, !dbg !812
  %26 = getelementptr inbounds i16, i16* %1, i64 %25, !dbg !812
  %27 = load i16, i16* %26, align 2, !dbg !812
  %28 = zext i16 %27 to i32, !dbg !812
  %29 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !812
  %30 = load i16, i16* %29, align 2, !dbg !812
  %31 = zext i16 %30 to i32, !dbg !812
  %32 = mul i32 %28, %31, !dbg !812
  %33 = add i32 %24, %32, !dbg !812
  %34 = and i32 %33, 32767, !dbg !812
  %35 = zext i16 %4 to i32, !dbg !812
  %36 = mul i32 %34, %35, !dbg !812
  %37 = and i32 %36, 32767, !dbg !813
  call void @llvm.dbg.value(metadata i32 %37, metadata !814, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i32 0, metadata !815, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 0, metadata !816, metadata !DIExpression()), !dbg !785
  br label %38, !dbg !817

38:                                               ; preds = %129, %17
  %.02 = phi i64 [ 0, %17 ], [ %130, %129 ], !dbg !819
  %.0 = phi i32 [ 0, %17 ], [ %124, %129 ], !dbg !811
  call void @llvm.dbg.value(metadata i32 %.0, metadata !815, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %.02, metadata !816, metadata !DIExpression()), !dbg !785
  %39 = icmp ult i64 %.02, %12, !dbg !820
  br i1 %39, label %40, label %131, !dbg !822

40:                                               ; preds = %38
  %41 = add i64 %.02, 1, !dbg !823
  %42 = getelementptr inbounds i16, i16* %0, i64 %41, !dbg !825
  %43 = load i16, i16* %42, align 2, !dbg !825
  %44 = zext i16 %43 to i32, !dbg !825
  %45 = add i64 %.02, 1, !dbg !826
  %46 = getelementptr inbounds i16, i16* %2, i64 %45, !dbg !826
  %47 = load i16, i16* %46, align 2, !dbg !826
  %48 = zext i16 %47 to i32, !dbg !826
  %49 = mul i32 %21, %48, !dbg !826
  %50 = add i32 %44, %49, !dbg !827
  %51 = add i64 %.02, 1, !dbg !828
  %52 = getelementptr inbounds i16, i16* %3, i64 %51, !dbg !828
  %53 = load i16, i16* %52, align 2, !dbg !828
  %54 = zext i16 %53 to i32, !dbg !828
  %55 = mul i32 %37, %54, !dbg !828
  %56 = add i32 %50, %55, !dbg !829
  %57 = add i32 %56, %.0, !dbg !830
  call void @llvm.dbg.value(metadata i32 %57, metadata !831, metadata !DIExpression()), !dbg !832
  %58 = lshr i32 %57, 15, !dbg !833
  call void @llvm.dbg.value(metadata i32 %58, metadata !815, metadata !DIExpression()), !dbg !811
  %59 = and i32 %57, 32767, !dbg !834
  %60 = trunc i32 %59 to i16, !dbg !835
  %61 = add i64 %.02, 0, !dbg !836
  %62 = getelementptr inbounds i16, i16* %0, i64 %61, !dbg !837
  store i16 %60, i16* %62, align 2, !dbg !838
  %63 = add i64 %.02, 2, !dbg !839
  %64 = getelementptr inbounds i16, i16* %0, i64 %63, !dbg !840
  %65 = load i16, i16* %64, align 2, !dbg !840
  %66 = zext i16 %65 to i32, !dbg !840
  %67 = add i64 %.02, 2, !dbg !841
  %68 = getelementptr inbounds i16, i16* %2, i64 %67, !dbg !841
  %69 = load i16, i16* %68, align 2, !dbg !841
  %70 = zext i16 %69 to i32, !dbg !841
  %71 = mul i32 %21, %70, !dbg !841
  %72 = add i32 %66, %71, !dbg !842
  %73 = add i64 %.02, 2, !dbg !843
  %74 = getelementptr inbounds i16, i16* %3, i64 %73, !dbg !843
  %75 = load i16, i16* %74, align 2, !dbg !843
  %76 = zext i16 %75 to i32, !dbg !843
  %77 = mul i32 %37, %76, !dbg !843
  %78 = add i32 %72, %77, !dbg !844
  %79 = add i32 %78, %58, !dbg !845
  call void @llvm.dbg.value(metadata i32 %79, metadata !831, metadata !DIExpression()), !dbg !832
  %80 = lshr i32 %79, 15, !dbg !846
  call void @llvm.dbg.value(metadata i32 %80, metadata !815, metadata !DIExpression()), !dbg !811
  %81 = and i32 %79, 32767, !dbg !847
  %82 = trunc i32 %81 to i16, !dbg !848
  %83 = add i64 %.02, 1, !dbg !849
  %84 = getelementptr inbounds i16, i16* %0, i64 %83, !dbg !850
  store i16 %82, i16* %84, align 2, !dbg !851
  %85 = add i64 %.02, 3, !dbg !852
  %86 = getelementptr inbounds i16, i16* %0, i64 %85, !dbg !853
  %87 = load i16, i16* %86, align 2, !dbg !853
  %88 = zext i16 %87 to i32, !dbg !853
  %89 = add i64 %.02, 3, !dbg !854
  %90 = getelementptr inbounds i16, i16* %2, i64 %89, !dbg !854
  %91 = load i16, i16* %90, align 2, !dbg !854
  %92 = zext i16 %91 to i32, !dbg !854
  %93 = mul i32 %21, %92, !dbg !854
  %94 = add i32 %88, %93, !dbg !855
  %95 = add i64 %.02, 3, !dbg !856
  %96 = getelementptr inbounds i16, i16* %3, i64 %95, !dbg !856
  %97 = load i16, i16* %96, align 2, !dbg !856
  %98 = zext i16 %97 to i32, !dbg !856
  %99 = mul i32 %37, %98, !dbg !856
  %100 = add i32 %94, %99, !dbg !857
  %101 = add i32 %100, %80, !dbg !858
  call void @llvm.dbg.value(metadata i32 %101, metadata !831, metadata !DIExpression()), !dbg !832
  %102 = lshr i32 %101, 15, !dbg !859
  call void @llvm.dbg.value(metadata i32 %102, metadata !815, metadata !DIExpression()), !dbg !811
  %103 = and i32 %101, 32767, !dbg !860
  %104 = trunc i32 %103 to i16, !dbg !861
  %105 = add i64 %.02, 2, !dbg !862
  %106 = getelementptr inbounds i16, i16* %0, i64 %105, !dbg !863
  store i16 %104, i16* %106, align 2, !dbg !864
  %107 = add i64 %.02, 4, !dbg !865
  %108 = getelementptr inbounds i16, i16* %0, i64 %107, !dbg !866
  %109 = load i16, i16* %108, align 2, !dbg !866
  %110 = zext i16 %109 to i32, !dbg !866
  %111 = add i64 %.02, 4, !dbg !867
  %112 = getelementptr inbounds i16, i16* %2, i64 %111, !dbg !867
  %113 = load i16, i16* %112, align 2, !dbg !867
  %114 = zext i16 %113 to i32, !dbg !867
  %115 = mul i32 %21, %114, !dbg !867
  %116 = add i32 %110, %115, !dbg !868
  %117 = add i64 %.02, 4, !dbg !869
  %118 = getelementptr inbounds i16, i16* %3, i64 %117, !dbg !869
  %119 = load i16, i16* %118, align 2, !dbg !869
  %120 = zext i16 %119 to i32, !dbg !869
  %121 = mul i32 %37, %120, !dbg !869
  %122 = add i32 %116, %121, !dbg !870
  %123 = add i32 %122, %102, !dbg !871
  call void @llvm.dbg.value(metadata i32 %123, metadata !831, metadata !DIExpression()), !dbg !832
  %124 = lshr i32 %123, 15, !dbg !872
  call void @llvm.dbg.value(metadata i32 %124, metadata !815, metadata !DIExpression()), !dbg !811
  %125 = and i32 %123, 32767, !dbg !873
  %126 = trunc i32 %125 to i16, !dbg !874
  %127 = add i64 %.02, 3, !dbg !875
  %128 = getelementptr inbounds i16, i16* %0, i64 %127, !dbg !876
  store i16 %126, i16* %128, align 2, !dbg !877
  br label %129, !dbg !878

129:                                              ; preds = %40
  %130 = add i64 %.02, 4, !dbg !879
  call void @llvm.dbg.value(metadata i64 %130, metadata !816, metadata !DIExpression()), !dbg !785
  br label %38, !dbg !880, !llvm.loop !881

131:                                              ; preds = %38
  br label %132, !dbg !883

132:                                              ; preds = %157, %131
  %.13 = phi i64 [ %.02, %131 ], [ %158, %157 ], !dbg !811
  %.1 = phi i32 [ %.0, %131 ], [ %152, %157 ], !dbg !811
  call void @llvm.dbg.value(metadata i32 %.1, metadata !815, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %.13, metadata !816, metadata !DIExpression()), !dbg !785
  %133 = icmp ult i64 %.13, %11, !dbg !884
  br i1 %133, label %134, label %159, !dbg !887

134:                                              ; preds = %132
  %135 = add i64 %.13, 1, !dbg !888
  %136 = getelementptr inbounds i16, i16* %0, i64 %135, !dbg !890
  %137 = load i16, i16* %136, align 2, !dbg !890
  %138 = zext i16 %137 to i32, !dbg !890
  %139 = add i64 %.13, 1, !dbg !891
  %140 = getelementptr inbounds i16, i16* %2, i64 %139, !dbg !891
  %141 = load i16, i16* %140, align 2, !dbg !891
  %142 = zext i16 %141 to i32, !dbg !891
  %143 = mul i32 %21, %142, !dbg !891
  %144 = add i32 %138, %143, !dbg !892
  %145 = add i64 %.13, 1, !dbg !893
  %146 = getelementptr inbounds i16, i16* %3, i64 %145, !dbg !893
  %147 = load i16, i16* %146, align 2, !dbg !893
  %148 = zext i16 %147 to i32, !dbg !893
  %149 = mul i32 %37, %148, !dbg !893
  %150 = add i32 %144, %149, !dbg !894
  %151 = add i32 %150, %.1, !dbg !895
  call void @llvm.dbg.value(metadata i32 %151, metadata !896, metadata !DIExpression()), !dbg !897
  %152 = lshr i32 %151, 15, !dbg !898
  call void @llvm.dbg.value(metadata i32 %152, metadata !815, metadata !DIExpression()), !dbg !811
  %153 = and i32 %151, 32767, !dbg !899
  %154 = trunc i32 %153 to i16, !dbg !900
  %155 = add i64 %.13, 0, !dbg !901
  %156 = getelementptr inbounds i16, i16* %0, i64 %155, !dbg !902
  store i16 %154, i16* %156, align 2, !dbg !903
  br label %157, !dbg !904

157:                                              ; preds = %134
  %158 = add i64 %.13, 1, !dbg !905
  call void @llvm.dbg.value(metadata i64 %158, metadata !816, metadata !DIExpression()), !dbg !785
  br label %132, !dbg !906, !llvm.loop !907

159:                                              ; preds = %132
  %160 = add i32 %.01, %.1, !dbg !909
  call void @llvm.dbg.value(metadata i32 %160, metadata !910, metadata !DIExpression()), !dbg !811
  %161 = and i32 %160, 32767, !dbg !911
  %162 = trunc i32 %161 to i16, !dbg !912
  %163 = getelementptr inbounds i16, i16* %0, i64 %11, !dbg !913
  store i16 %162, i16* %163, align 2, !dbg !914
  %164 = lshr i32 %160, 15, !dbg !915
  call void @llvm.dbg.value(metadata i32 %164, metadata !799, metadata !DIExpression()), !dbg !785
  br label %165, !dbg !916

165:                                              ; preds = %159
  %166 = add i64 %.04, 1, !dbg !917
  call void @llvm.dbg.value(metadata i64 %166, metadata !800, metadata !DIExpression()), !dbg !785
  br label %15, !dbg !918, !llvm.loop !919

167:                                              ; preds = %15
  %168 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !921
  %169 = load i16, i16* %168, align 2, !dbg !921
  %170 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !922
  store i16 %169, i16* %170, align 2, !dbg !923
  %171 = call i32 @NEQ.11(i32 %.01, i32 0), !dbg !924
  %172 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 0), !dbg !925
  %173 = call i32 @NOT.12(i32 %172), !dbg !926
  %174 = or i32 %171, %173, !dbg !927
  %175 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 %174), !dbg !928
  ret void, !dbg !929
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.10(i16* %0, i16 zeroext %1) #0 !dbg !930 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !931, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i16 %1, metadata !933, metadata !DIExpression()), !dbg !932
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !934
  call void @llvm.dbg.value(metadata i16* %3, metadata !931, metadata !DIExpression()), !dbg !932
  store i16 %1, i16* %0, align 2, !dbg !935
  %4 = bitcast i16* %3 to i8*, !dbg !936
  %5 = zext i16 %1 to i32, !dbg !937
  %6 = add nsw i32 %5, 15, !dbg !938
  %7 = ashr i32 %6, 4, !dbg !939
  %8 = sext i32 %7 to i64, !dbg !940
  %9 = mul i64 %8, 2, !dbg !941
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !936
  ret void, !dbg !942
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.11(i32 %0, i32 %1) #0 !dbg !943 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i32 %1, metadata !946, metadata !DIExpression()), !dbg !945
  %3 = xor i32 %0, %1, !dbg !947
  call void @llvm.dbg.value(metadata i32 %3, metadata !948, metadata !DIExpression()), !dbg !945
  %4 = sub i32 0, %3, !dbg !949
  %5 = or i32 %3, %4, !dbg !950
  %6 = lshr i32 %5, 31, !dbg !951
  ret i32 %6, !dbg !952
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.12(i32 %0) #0 !dbg !953 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !954, metadata !DIExpression()), !dbg !955
  %2 = xor i32 %0, 1, !dbg !956
  ret i32 %2, !dbg !957
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_mulacc(i16* %0, i16* %1, i16* %2) #0 !dbg !958 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !961, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i16* %1, metadata !963, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i16* %2, metadata !964, metadata !DIExpression()), !dbg !962
  %4 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !965
  %5 = load i16, i16* %4, align 2, !dbg !965
  %6 = zext i16 %5 to i32, !dbg !965
  %7 = add nsw i32 %6, 15, !dbg !966
  %8 = ashr i32 %7, 4, !dbg !967
  %9 = sext i32 %8 to i64, !dbg !968
  call void @llvm.dbg.value(metadata i64 %9, metadata !969, metadata !DIExpression()), !dbg !962
  %10 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !970
  %11 = load i16, i16* %10, align 2, !dbg !970
  %12 = zext i16 %11 to i32, !dbg !970
  %13 = add nsw i32 %12, 15, !dbg !971
  %14 = ashr i32 %13, 4, !dbg !972
  %15 = sext i32 %14 to i64, !dbg !973
  call void @llvm.dbg.value(metadata i64 %15, metadata !974, metadata !DIExpression()), !dbg !962
  %16 = icmp ne i64 %15, 0, !dbg !975
  br i1 %16, label %17, label %27, !dbg !977

17:                                               ; preds = %3
  %18 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !978
  %19 = load i16, i16* %18, align 2, !dbg !978
  %20 = zext i16 %19 to i32, !dbg !978
  %21 = and i32 %20, 15, !dbg !979
  %22 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !980
  %23 = load i16, i16* %22, align 2, !dbg !980
  %24 = zext i16 %23 to i32, !dbg !980
  %25 = and i32 %24, 15, !dbg !981
  %26 = add nsw i32 %21, %25, !dbg !982
  call void @llvm.dbg.value(metadata i32 %26, metadata !983, metadata !DIExpression()), !dbg !962
  br label %27, !dbg !984

27:                                               ; preds = %17, %3
  %.02 = phi i32 [ %26, %17 ], [ undef, %3 ]
  call void @llvm.dbg.value(metadata i32 %.02, metadata !983, metadata !DIExpression()), !dbg !962
  %28 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !985
  %29 = load i16, i16* %28, align 2, !dbg !985
  %30 = zext i16 %29 to i32, !dbg !985
  %31 = ashr i32 %30, 4, !dbg !986
  %32 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !987
  %33 = load i16, i16* %32, align 2, !dbg !987
  %34 = zext i16 %33 to i32, !dbg !987
  %35 = ashr i32 %34, 4, !dbg !988
  %36 = add nsw i32 %31, %35, !dbg !989
  call void @llvm.dbg.value(metadata i32 %36, metadata !990, metadata !DIExpression()), !dbg !962
  %37 = shl i32 %36, 4, !dbg !991
  %38 = add i32 %37, %.02, !dbg !992
  %39 = sub i32 %.02, 15, !dbg !993
  %40 = xor i32 %39, -1, !dbg !994
  %41 = lshr i32 %40, 31, !dbg !995
  %42 = add i32 %38, %41, !dbg !996
  %43 = trunc i32 %42 to i16, !dbg !997
  %44 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !998
  store i16 %43, i16* %44, align 2, !dbg !999
  call void @llvm.dbg.value(metadata i64 0, metadata !1000, metadata !DIExpression()), !dbg !962
  br label %45, !dbg !1001

45:                                               ; preds = %80, %27
  %.03 = phi i64 [ 0, %27 ], [ %81, %80 ], !dbg !1003
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1000, metadata !DIExpression()), !dbg !962
  %46 = icmp ult i64 %.03, %15, !dbg !1004
  br i1 %46, label %47, label %82, !dbg !1006

47:                                               ; preds = %45
  %48 = add i64 1, %.03, !dbg !1007
  %49 = getelementptr inbounds i16, i16* %2, i64 %48, !dbg !1009
  %50 = load i16, i16* %49, align 2, !dbg !1009
  %51 = zext i16 %50 to i32, !dbg !1009
  call void @llvm.dbg.value(metadata i32 %51, metadata !1010, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.value(metadata i32 0, metadata !1012, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.value(metadata i64 0, metadata !1013, metadata !DIExpression()), !dbg !1011
  br label %52, !dbg !1014

52:                                               ; preds = %73, %47
  %.01 = phi i64 [ 0, %47 ], [ %74, %73 ], !dbg !1016
  %.0 = phi i32 [ 0, %47 ], [ %67, %73 ], !dbg !1011
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1012, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1013, metadata !DIExpression()), !dbg !1011
  %53 = icmp ult i64 %.01, %9, !dbg !1017
  br i1 %53, label %54, label %75, !dbg !1019

54:                                               ; preds = %52
  %55 = add i64 1, %.03, !dbg !1020
  %56 = add i64 %55, %.01, !dbg !1022
  %57 = getelementptr inbounds i16, i16* %0, i64 %56, !dbg !1023
  %58 = load i16, i16* %57, align 2, !dbg !1023
  %59 = zext i16 %58 to i32, !dbg !1024
  %60 = add i64 1, %.01, !dbg !1025
  %61 = getelementptr inbounds i16, i16* %1, i64 %60, !dbg !1025
  %62 = load i16, i16* %61, align 2, !dbg !1025
  %63 = zext i16 %62 to i32, !dbg !1025
  %64 = mul i32 %51, %63, !dbg !1025
  %65 = add i32 %59, %64, !dbg !1026
  %66 = add i32 %65, %.0, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %66, metadata !1028, metadata !DIExpression()), !dbg !1029
  %67 = lshr i32 %66, 15, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %67, metadata !1012, metadata !DIExpression()), !dbg !1011
  %68 = and i32 %66, 32767, !dbg !1031
  %69 = trunc i32 %68 to i16, !dbg !1032
  %70 = add i64 1, %.03, !dbg !1033
  %71 = add i64 %70, %.01, !dbg !1034
  %72 = getelementptr inbounds i16, i16* %0, i64 %71, !dbg !1035
  store i16 %69, i16* %72, align 2, !dbg !1036
  br label %73, !dbg !1037

73:                                               ; preds = %54
  %74 = add i64 %.01, 1, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %74, metadata !1013, metadata !DIExpression()), !dbg !1011
  br label %52, !dbg !1039, !llvm.loop !1040

75:                                               ; preds = %52
  %76 = trunc i32 %.0 to i16, !dbg !1042
  %77 = add i64 1, %.03, !dbg !1043
  %78 = add i64 %77, %9, !dbg !1044
  %79 = getelementptr inbounds i16, i16* %0, i64 %78, !dbg !1045
  store i16 %76, i16* %79, align 2, !dbg !1046
  br label %80, !dbg !1047

80:                                               ; preds = %75
  %81 = add i64 %.03, 1, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %81, metadata !1000, metadata !DIExpression()), !dbg !962
  br label %45, !dbg !1049, !llvm.loop !1050

82:                                               ; preds = %45
  ret void, !dbg !1052
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_muladd_small(i16* %0, i16 zeroext %1, i16* %2) #0 !dbg !1053 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i16* %0, metadata !1056, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i16 %1, metadata !1058, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i16* %2, metadata !1059, metadata !DIExpression()), !dbg !1057
  %5 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !1060
  %6 = load i16, i16* %5, align 2, !dbg !1060
  %7 = zext i16 %6 to i32, !dbg !1060
  call void @llvm.dbg.value(metadata i32 %7, metadata !1061, metadata !DIExpression()), !dbg !1057
  %8 = icmp eq i32 %7, 0, !dbg !1062
  br i1 %8, label %9, label %10, !dbg !1064

9:                                                ; preds = %3
  br label %138, !dbg !1065

10:                                               ; preds = %3
  %11 = icmp ule i32 %7, 15, !dbg !1067
  br i1 %11, label %12, label %26, !dbg !1069

12:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1070, metadata !DIExpression()), !dbg !1072
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1073
  %14 = load i16, i16* %13, align 2, !dbg !1073
  %15 = zext i16 %14 to i32, !dbg !1074
  %16 = shl i32 %15, 15, !dbg !1075
  %17 = zext i16 %1 to i32, !dbg !1076
  %18 = or i32 %16, %17, !dbg !1077
  %19 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !1078
  %20 = load i16, i16* %19, align 2, !dbg !1078
  %21 = zext i16 %20 to i32, !dbg !1078
  %22 = call i32 @divrem16(i32 %18, i32 %21, i32* %4), !dbg !1079
  %23 = load i32, i32* %4, align 4, !dbg !1080
  %24 = trunc i32 %23 to i16, !dbg !1080
  %25 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1081
  store i16 %24, i16* %25, align 2, !dbg !1082
  br label %138, !dbg !1083

26:                                               ; preds = %10
  %27 = add i32 %7, 15, !dbg !1084
  %28 = lshr i32 %27, 4, !dbg !1085
  %29 = zext i32 %28 to i64, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %29, metadata !1087, metadata !DIExpression()), !dbg !1057
  %30 = and i32 %7, 15, !dbg !1088
  call void @llvm.dbg.value(metadata i32 %30, metadata !1089, metadata !DIExpression()), !dbg !1057
  %31 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !1090
  %32 = load i16, i16* %31, align 2, !dbg !1090
  %33 = zext i16 %32 to i32, !dbg !1090
  call void @llvm.dbg.value(metadata i32 %33, metadata !1091, metadata !DIExpression()), !dbg !1057
  %34 = icmp eq i32 %30, 0, !dbg !1092
  br i1 %34, label %35, label %54, !dbg !1094

35:                                               ; preds = %26
  %36 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !1095
  %37 = load i16, i16* %36, align 2, !dbg !1095
  %38 = zext i16 %37 to i32, !dbg !1095
  call void @llvm.dbg.value(metadata i32 %38, metadata !1097, metadata !DIExpression()), !dbg !1057
  %39 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !1098
  %40 = bitcast i16* %39 to i8*, !dbg !1099
  %41 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1100
  %42 = bitcast i16* %41 to i8*, !dbg !1099
  %43 = sub i64 %29, 1, !dbg !1101
  %44 = mul i64 %43, 2, !dbg !1102
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %40, i8* align 2 %42, i64 %44, i1 false), !dbg !1099
  %45 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1103
  store i16 %1, i16* %45, align 2, !dbg !1104
  %46 = shl i32 %38, 15, !dbg !1105
  %47 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !1106
  %48 = load i16, i16* %47, align 2, !dbg !1106
  %49 = zext i16 %48 to i32, !dbg !1106
  %50 = add i32 %46, %49, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %50, metadata !1108, metadata !DIExpression()), !dbg !1057
  %51 = getelementptr inbounds i16, i16* %2, i64 %29, !dbg !1109
  %52 = load i16, i16* %51, align 2, !dbg !1109
  %53 = zext i16 %52 to i32, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %53, metadata !1110, metadata !DIExpression()), !dbg !1057
  br label %98, !dbg !1111

54:                                               ; preds = %26
  %55 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !1112
  %56 = load i16, i16* %55, align 2, !dbg !1112
  %57 = zext i16 %56 to i32, !dbg !1112
  %58 = sub i32 15, %30, !dbg !1114
  %59 = shl i32 %57, %58, !dbg !1115
  %60 = sub i64 %29, 1, !dbg !1116
  %61 = getelementptr inbounds i16, i16* %0, i64 %60, !dbg !1117
  %62 = load i16, i16* %61, align 2, !dbg !1117
  %63 = zext i16 %62 to i32, !dbg !1117
  %64 = ashr i32 %63, %30, !dbg !1118
  %65 = or i32 %59, %64, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %65, metadata !1097, metadata !DIExpression()), !dbg !1057
  %66 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !1120
  %67 = bitcast i16* %66 to i8*, !dbg !1121
  %68 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1122
  %69 = bitcast i16* %68 to i8*, !dbg !1121
  %70 = sub i64 %29, 1, !dbg !1123
  %71 = mul i64 %70, 2, !dbg !1124
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %67, i8* align 2 %69, i64 %71, i1 false), !dbg !1121
  %72 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1125
  store i16 %1, i16* %72, align 2, !dbg !1126
  %73 = shl i32 %65, 15, !dbg !1127
  %74 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !1128
  %75 = load i16, i16* %74, align 2, !dbg !1128
  %76 = zext i16 %75 to i32, !dbg !1128
  %77 = sub i32 15, %30, !dbg !1129
  %78 = shl i32 %76, %77, !dbg !1130
  %79 = sub i64 %29, 1, !dbg !1131
  %80 = getelementptr inbounds i16, i16* %0, i64 %79, !dbg !1132
  %81 = load i16, i16* %80, align 2, !dbg !1132
  %82 = zext i16 %81 to i32, !dbg !1132
  %83 = ashr i32 %82, %30, !dbg !1133
  %84 = or i32 %78, %83, !dbg !1134
  %85 = and i32 %84, 32767, !dbg !1135
  %86 = or i32 %73, %85, !dbg !1136
  call void @llvm.dbg.value(metadata i32 %86, metadata !1108, metadata !DIExpression()), !dbg !1057
  %87 = getelementptr inbounds i16, i16* %2, i64 %29, !dbg !1137
  %88 = load i16, i16* %87, align 2, !dbg !1137
  %89 = zext i16 %88 to i32, !dbg !1137
  %90 = sub i32 15, %30, !dbg !1138
  %91 = shl i32 %89, %90, !dbg !1139
  %92 = sub i64 %29, 1, !dbg !1140
  %93 = getelementptr inbounds i16, i16* %2, i64 %92, !dbg !1141
  %94 = load i16, i16* %93, align 2, !dbg !1141
  %95 = zext i16 %94 to i32, !dbg !1141
  %96 = ashr i32 %95, %30, !dbg !1142
  %97 = or i32 %91, %96, !dbg !1143
  call void @llvm.dbg.value(metadata i32 %97, metadata !1110, metadata !DIExpression()), !dbg !1057
  br label %98

98:                                               ; preds = %54, %35
  %.05 = phi i32 [ %38, %35 ], [ %65, %54 ], !dbg !1144
  %.03 = phi i32 [ %50, %35 ], [ %86, %54 ], !dbg !1144
  %.02 = phi i32 [ %53, %35 ], [ %97, %54 ], !dbg !1144
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1110, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1108, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1097, metadata !DIExpression()), !dbg !1057
  %99 = call i32 @divrem16(i32 %.03, i32 %.02, i32* null), !dbg !1145
  call void @llvm.dbg.value(metadata i32 %99, metadata !1146, metadata !DIExpression()), !dbg !1057
  %100 = call i32 @EQ.15(i32 %.02, i32 %.05), !dbg !1147
  %101 = sub i32 %99, 1, !dbg !1148
  %102 = sub i32 %99, 1, !dbg !1149
  %103 = lshr i32 %102, 31, !dbg !1150
  %104 = add i32 %101, %103, !dbg !1151
  %105 = call i32 @MUX.16(i32 %100, i32 32767, i32 %104), !dbg !1152
  call void @llvm.dbg.value(metadata i32 %105, metadata !1146, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i32 0, metadata !1153, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i32 1, metadata !1154, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 1, metadata !1155, metadata !DIExpression()), !dbg !1057
  br label %106, !dbg !1156

106:                                              ; preds = %128, %98
  %.04 = phi i64 [ 1, %98 ], [ %129, %128 ], !dbg !1158
  %.01 = phi i32 [ 0, %98 ], [ %121, %128 ], !dbg !1057
  %.0 = phi i32 [ 1, %98 ], [ %127, %128 ], !dbg !1057
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1154, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1153, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1155, metadata !DIExpression()), !dbg !1057
  %107 = icmp ule i64 %.04, %29, !dbg !1159
  br i1 %107, label %108, label %130, !dbg !1161

108:                                              ; preds = %106
  %109 = getelementptr inbounds i16, i16* %2, i64 %.04, !dbg !1162
  %110 = load i16, i16* %109, align 2, !dbg !1162
  %111 = zext i16 %110 to i32, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %111, metadata !1164, metadata !DIExpression()), !dbg !1165
  %112 = mul i32 %111, %105, !dbg !1166
  %113 = add i32 %112, %.01, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %113, metadata !1168, metadata !DIExpression()), !dbg !1165
  %114 = lshr i32 %113, 15, !dbg !1169
  call void @llvm.dbg.value(metadata i32 %114, metadata !1153, metadata !DIExpression()), !dbg !1057
  %115 = and i32 %113, 32767, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %115, metadata !1168, metadata !DIExpression()), !dbg !1165
  %116 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !1171
  %117 = load i16, i16* %116, align 2, !dbg !1171
  %118 = zext i16 %117 to i32, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %118, metadata !1172, metadata !DIExpression()), !dbg !1165
  %119 = sub i32 %118, %115, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %119, metadata !1174, metadata !DIExpression()), !dbg !1165
  %120 = lshr i32 %119, 31, !dbg !1175
  %121 = add i32 %114, %120, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %121, metadata !1153, metadata !DIExpression()), !dbg !1057
  %122 = and i32 %119, 32767, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %122, metadata !1174, metadata !DIExpression()), !dbg !1165
  %123 = trunc i32 %122 to i16, !dbg !1178
  %124 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !1179
  store i16 %123, i16* %124, align 2, !dbg !1180
  %125 = call i32 @EQ.15(i32 %122, i32 %111), !dbg !1181
  %126 = call i32 @GT.17(i32 %122, i32 %111), !dbg !1182
  %127 = call i32 @MUX.16(i32 %125, i32 %.0, i32 %126), !dbg !1183
  call void @llvm.dbg.value(metadata i32 %127, metadata !1154, metadata !DIExpression()), !dbg !1057
  br label %128, !dbg !1184

128:                                              ; preds = %108
  %129 = add i64 %.04, 1, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %129, metadata !1155, metadata !DIExpression()), !dbg !1057
  br label %106, !dbg !1186, !llvm.loop !1187

130:                                              ; preds = %106
  %131 = call i32 @GT.17(i32 %.01, i32 %33), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %131, metadata !1190, metadata !DIExpression()), !dbg !1057
  %132 = xor i32 %131, -1, !dbg !1191
  %133 = call i32 @GT.17(i32 %33, i32 %.01), !dbg !1192
  %134 = or i32 %.0, %133, !dbg !1193
  %135 = and i32 %132, %134, !dbg !1194
  call void @llvm.dbg.value(metadata i32 %135, metadata !1195, metadata !DIExpression()), !dbg !1057
  %136 = call i32 @br_i15_add(i16* %0, i16* %2, i32 %131), !dbg !1196
  %137 = call i32 @br_i15_sub(i16* %0, i16* %2, i32 %135), !dbg !1197
  br label %138, !dbg !1198

138:                                              ; preds = %130, %12, %9
  ret void, !dbg !1198
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @divrem16(i32 %0, i32 %1, i32* %2) #0 !dbg !1199 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 %1, metadata !1205, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32* %2, metadata !1206, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 0, metadata !1207, metadata !DIExpression()), !dbg !1204
  %4 = shl i32 %1, 16, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %4, metadata !1205, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 16, metadata !1209, metadata !DIExpression()), !dbg !1204
  br label %5, !dbg !1210

5:                                                ; preds = %16, %3
  %.03 = phi i32 [ 16, %3 ], [ %17, %16 ], !dbg !1212
  %.02 = phi i32 [ 0, %3 ], [ %11, %16 ], !dbg !1204
  %.01 = phi i32 [ %4, %3 ], [ %15, %16 ], !dbg !1204
  %.0 = phi i32 [ %0, %3 ], [ %14, %16 ]
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1205, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1207, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1209, metadata !DIExpression()), !dbg !1204
  %6 = icmp sge i32 %.03, 0, !dbg !1213
  br i1 %6, label %7, label %18, !dbg !1215

7:                                                ; preds = %5
  %8 = call i32 @GT.17(i32 %.01, i32 %.0), !dbg !1216
  %9 = call i32 @NOT.18(i32 %8), !dbg !1216
  call void @llvm.dbg.value(metadata i32 %9, metadata !1218, metadata !DIExpression()), !dbg !1219
  %10 = shl i32 %9, %.03, !dbg !1220
  %11 = or i32 %.02, %10, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %11, metadata !1207, metadata !DIExpression()), !dbg !1204
  %12 = sub i32 0, %9, !dbg !1222
  %13 = and i32 %12, %.01, !dbg !1223
  %14 = sub i32 %.0, %13, !dbg !1224
  call void @llvm.dbg.value(metadata i32 %14, metadata !1203, metadata !DIExpression()), !dbg !1204
  %15 = lshr i32 %.01, 1, !dbg !1225
  call void @llvm.dbg.value(metadata i32 %15, metadata !1205, metadata !DIExpression()), !dbg !1204
  br label %16, !dbg !1226

16:                                               ; preds = %7
  %17 = add nsw i32 %.03, -1, !dbg !1227
  call void @llvm.dbg.value(metadata i32 %17, metadata !1209, metadata !DIExpression()), !dbg !1204
  br label %5, !dbg !1228, !llvm.loop !1229

18:                                               ; preds = %5
  %19 = icmp ne i32* %2, null, !dbg !1231
  br i1 %19, label %20, label %21, !dbg !1233

20:                                               ; preds = %18
  store i32 %.0, i32* %2, align 4, !dbg !1234
  br label %21, !dbg !1236

21:                                               ; preds = %20, %18
  ret i32 %.02, !dbg !1237
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.15(i32 %0, i32 %1) #0 !dbg !1238 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1239, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 %1, metadata !1241, metadata !DIExpression()), !dbg !1240
  %3 = xor i32 %0, %1, !dbg !1242
  call void @llvm.dbg.value(metadata i32 %3, metadata !1243, metadata !DIExpression()), !dbg !1240
  %4 = sub i32 0, %3, !dbg !1244
  %5 = or i32 %3, %4, !dbg !1245
  %6 = lshr i32 %5, 31, !dbg !1246
  %7 = call i32 @NOT.18(i32 %6), !dbg !1247
  ret i32 %7, !dbg !1248
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.16(i32 %0, i32 %1, i32 %2) #0 !dbg !1249 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i32 %1, metadata !1252, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i32 %2, metadata !1253, metadata !DIExpression()), !dbg !1251
  %4 = sub i32 0, %0, !dbg !1254
  %5 = xor i32 %1, %2, !dbg !1255
  %6 = and i32 %4, %5, !dbg !1256
  %7 = xor i32 %2, %6, !dbg !1257
  ret i32 %7, !dbg !1258
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.17(i32 %0, i32 %1) #0 !dbg !1259 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1260, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %1, metadata !1262, metadata !DIExpression()), !dbg !1261
  %3 = sub i32 %1, %0, !dbg !1263
  call void @llvm.dbg.value(metadata i32 %3, metadata !1264, metadata !DIExpression()), !dbg !1261
  %4 = xor i32 %0, %1, !dbg !1265
  %5 = xor i32 %0, %3, !dbg !1266
  %6 = and i32 %4, %5, !dbg !1267
  %7 = xor i32 %3, %6, !dbg !1268
  %8 = lshr i32 %7, 31, !dbg !1269
  ret i32 %8, !dbg !1270
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.18(i32 %0) #0 !dbg !1271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1272, metadata !DIExpression()), !dbg !1273
  %2 = xor i32 %0, 1, !dbg !1274
  ret i32 %2, !dbg !1275
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @br_i15_ninv15(i16 zeroext %0) #0 !dbg !1276 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !1279, metadata !DIExpression()), !dbg !1280
  %2 = zext i16 %0 to i32, !dbg !1281
  %3 = sub nsw i32 2, %2, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %3, metadata !1283, metadata !DIExpression()), !dbg !1280
  %4 = zext i16 %0 to i32, !dbg !1284
  %5 = mul i32 %4, %3, !dbg !1284
  %6 = sub i32 2, %5, !dbg !1284
  %7 = mul i32 %3, %6, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %7, metadata !1283, metadata !DIExpression()), !dbg !1280
  %8 = zext i16 %0 to i32, !dbg !1285
  %9 = mul i32 %8, %7, !dbg !1285
  %10 = sub i32 2, %9, !dbg !1285
  %11 = mul i32 %7, %10, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %11, metadata !1283, metadata !DIExpression()), !dbg !1280
  %12 = zext i16 %0 to i32, !dbg !1286
  %13 = mul i32 %12, %11, !dbg !1286
  %14 = sub i32 2, %13, !dbg !1286
  %15 = mul i32 %11, %14, !dbg !1286
  call void @llvm.dbg.value(metadata i32 %15, metadata !1283, metadata !DIExpression()), !dbg !1280
  %16 = zext i16 %0 to i32, !dbg !1287
  %17 = and i32 %16, 1, !dbg !1288
  %18 = sub i32 0, %15, !dbg !1289
  %19 = call i32 @MUX.19(i32 %17, i32 %18, i32 0), !dbg !1290
  %20 = and i32 %19, 32767, !dbg !1291
  %21 = trunc i32 %20 to i16, !dbg !1290
  ret i16 %21, !dbg !1292
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.19(i32 %0, i32 %1, i32 %2) #0 !dbg !1293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1294, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %1, metadata !1296, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %2, metadata !1297, metadata !DIExpression()), !dbg !1295
  %4 = sub i32 0, %0, !dbg !1298
  %5 = xor i32 %1, %2, !dbg !1299
  %6 = and i32 %4, %5, !dbg !1300
  %7 = xor i32 %2, %6, !dbg !1301
  ret i32 %7, !dbg !1302
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_reduce(i16* %0, i16* %1, i16* %2) #0 !dbg !1303 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1304, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i16* %1, metadata !1306, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i16* %2, metadata !1307, metadata !DIExpression()), !dbg !1305
  %4 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !1308
  %5 = load i16, i16* %4, align 2, !dbg !1308
  %6 = zext i16 %5 to i32, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %6, metadata !1309, metadata !DIExpression()), !dbg !1305
  %7 = add i32 %6, 15, !dbg !1310
  %8 = lshr i32 %7, 4, !dbg !1311
  %9 = zext i32 %8 to i64, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %9, metadata !1313, metadata !DIExpression()), !dbg !1305
  %10 = trunc i32 %6 to i16, !dbg !1314
  %11 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1315
  store i16 %10, i16* %11, align 2, !dbg !1316
  %12 = icmp eq i32 %6, 0, !dbg !1317
  br i1 %12, label %13, label %14, !dbg !1319

13:                                               ; preds = %3
  br label %55, !dbg !1320

14:                                               ; preds = %3
  %15 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !1322
  %16 = load i16, i16* %15, align 2, !dbg !1322
  %17 = zext i16 %16 to i32, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %17, metadata !1323, metadata !DIExpression()), !dbg !1305
  %18 = add i32 %17, 15, !dbg !1324
  %19 = lshr i32 %18, 4, !dbg !1325
  %20 = zext i32 %19 to i64, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %20, metadata !1327, metadata !DIExpression()), !dbg !1305
  %21 = icmp ult i32 %17, %6, !dbg !1328
  br i1 %21, label %22, label %36, !dbg !1330

22:                                               ; preds = %14
  %23 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1331
  %24 = bitcast i16* %23 to i8*, !dbg !1333
  %25 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !1334
  %26 = bitcast i16* %25 to i8*, !dbg !1333
  %27 = mul i64 %20, 2, !dbg !1335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %24, i8* align 2 %26, i64 %27, i1 false), !dbg !1333
  call void @llvm.dbg.value(metadata i64 %20, metadata !1336, metadata !DIExpression()), !dbg !1305
  br label %28, !dbg !1337

28:                                               ; preds = %33, %22
  %.0 = phi i64 [ %20, %22 ], [ %34, %33 ], !dbg !1339
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1336, metadata !DIExpression()), !dbg !1305
  %29 = icmp ult i64 %.0, %9, !dbg !1340
  br i1 %29, label %30, label %35, !dbg !1342

30:                                               ; preds = %28
  %31 = add i64 %.0, 1, !dbg !1343
  %32 = getelementptr inbounds i16, i16* %0, i64 %31, !dbg !1345
  store i16 0, i16* %32, align 2, !dbg !1346
  br label %33, !dbg !1347

33:                                               ; preds = %30
  %34 = add i64 %.0, 1, !dbg !1348
  call void @llvm.dbg.value(metadata i64 %34, metadata !1336, metadata !DIExpression()), !dbg !1305
  br label %28, !dbg !1349, !llvm.loop !1350

35:                                               ; preds = %28
  br label %55, !dbg !1352

36:                                               ; preds = %14
  %37 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1353
  %38 = bitcast i16* %37 to i8*, !dbg !1354
  %39 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !1355
  %40 = sub i64 %20, %9, !dbg !1356
  %41 = getelementptr inbounds i16, i16* %39, i64 %40, !dbg !1357
  %42 = bitcast i16* %41 to i8*, !dbg !1354
  %43 = sub i64 %9, 1, !dbg !1358
  %44 = mul i64 %43, 2, !dbg !1359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %38, i8* align 2 %42, i64 %44, i1 false), !dbg !1354
  %45 = getelementptr inbounds i16, i16* %0, i64 %9, !dbg !1360
  store i16 0, i16* %45, align 2, !dbg !1361
  %46 = add i64 1, %20, !dbg !1362
  %47 = sub i64 %46, %9, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %47, metadata !1336, metadata !DIExpression()), !dbg !1305
  br label %48, !dbg !1365

48:                                               ; preds = %53, %36
  %.1 = phi i64 [ %47, %36 ], [ %54, %53 ], !dbg !1366
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1336, metadata !DIExpression()), !dbg !1305
  %49 = icmp ugt i64 %.1, 0, !dbg !1367
  br i1 %49, label %50, label %55, !dbg !1369

50:                                               ; preds = %48
  %51 = getelementptr inbounds i16, i16* %1, i64 %.1, !dbg !1370
  %52 = load i16, i16* %51, align 2, !dbg !1370
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %52, i16* %2), !dbg !1372
  br label %53, !dbg !1373

53:                                               ; preds = %50
  %54 = add i64 %.1, -1, !dbg !1374
  call void @llvm.dbg.value(metadata i64 %54, metadata !1336, metadata !DIExpression()), !dbg !1305
  br label %48, !dbg !1375, !llvm.loop !1376

55:                                               ; preds = %48, %35, %13
  ret void, !dbg !1378
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_rshift(i16* %0, i32 %1) #0 !dbg !1379 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1382, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i32 %1, metadata !1384, metadata !DIExpression()), !dbg !1383
  %3 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1385
  %4 = load i16, i16* %3, align 2, !dbg !1385
  %5 = zext i16 %4 to i32, !dbg !1385
  %6 = add nsw i32 %5, 15, !dbg !1386
  %7 = ashr i32 %6, 4, !dbg !1387
  %8 = sext i32 %7 to i64, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %8, metadata !1389, metadata !DIExpression()), !dbg !1383
  %9 = icmp eq i64 %8, 0, !dbg !1390
  br i1 %9, label %10, label %11, !dbg !1392

10:                                               ; preds = %2
  br label %35, !dbg !1393

11:                                               ; preds = %2
  %12 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1395
  %13 = load i16, i16* %12, align 2, !dbg !1395
  %14 = zext i16 %13 to i32, !dbg !1395
  %15 = ashr i32 %14, %1, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %15, metadata !1397, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 2, metadata !1398, metadata !DIExpression()), !dbg !1383
  br label %16, !dbg !1399

16:                                               ; preds = %30, %11
  %.01 = phi i64 [ 2, %11 ], [ %31, %30 ], !dbg !1401
  %.0 = phi i32 [ %15, %11 ], [ %29, %30 ], !dbg !1383
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1397, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1398, metadata !DIExpression()), !dbg !1383
  %17 = icmp ule i64 %.01, %8, !dbg !1402
  br i1 %17, label %18, label %32, !dbg !1404

18:                                               ; preds = %16
  %19 = getelementptr inbounds i16, i16* %0, i64 %.01, !dbg !1405
  %20 = load i16, i16* %19, align 2, !dbg !1405
  %21 = zext i16 %20 to i32, !dbg !1405
  call void @llvm.dbg.value(metadata i32 %21, metadata !1407, metadata !DIExpression()), !dbg !1408
  %22 = sub nsw i32 15, %1, !dbg !1409
  %23 = shl i32 %21, %22, !dbg !1410
  %24 = or i32 %23, %.0, !dbg !1411
  %25 = and i32 %24, 32767, !dbg !1412
  %26 = trunc i32 %25 to i16, !dbg !1413
  %27 = sub i64 %.01, 1, !dbg !1414
  %28 = getelementptr inbounds i16, i16* %0, i64 %27, !dbg !1415
  store i16 %26, i16* %28, align 2, !dbg !1416
  %29 = lshr i32 %21, %1, !dbg !1417
  call void @llvm.dbg.value(metadata i32 %29, metadata !1397, metadata !DIExpression()), !dbg !1383
  br label %30, !dbg !1418

30:                                               ; preds = %18
  %31 = add i64 %.01, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %31, metadata !1398, metadata !DIExpression()), !dbg !1383
  br label %16, !dbg !1420, !llvm.loop !1421

32:                                               ; preds = %16
  %33 = trunc i32 %.0 to i16, !dbg !1423
  %34 = getelementptr inbounds i16, i16* %0, i64 %8, !dbg !1424
  store i16 %33, i16* %34, align 2, !dbg !1425
  br label %35, !dbg !1426

35:                                               ; preds = %32, %10
  ret void, !dbg !1426
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_sub(i16* %0, i16* %1, i32 %2) #0 !dbg !1427 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1428, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i16* %1, metadata !1430, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %2, metadata !1431, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 0, metadata !1432, metadata !DIExpression()), !dbg !1429
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1433
  %5 = load i16, i16* %4, align 2, !dbg !1433
  %6 = zext i16 %5 to i32, !dbg !1433
  %7 = add nsw i32 %6, 31, !dbg !1434
  %8 = ashr i32 %7, 4, !dbg !1435
  %9 = sext i32 %8 to i64, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %9, metadata !1437, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i64 1, metadata !1438, metadata !DIExpression()), !dbg !1429
  br label %10, !dbg !1439

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !1429
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !1441
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1438, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1432, metadata !DIExpression()), !dbg !1429
  %11 = icmp ult i64 %.0, %9, !dbg !1442
  br i1 %11, label %12, label %28, !dbg !1444

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !1445
  %14 = load i16, i16* %13, align 2, !dbg !1445
  %15 = zext i16 %14 to i32, !dbg !1445
  call void @llvm.dbg.value(metadata i32 %15, metadata !1447, metadata !DIExpression()), !dbg !1448
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !1449
  %17 = load i16, i16* %16, align 2, !dbg !1449
  %18 = zext i16 %17 to i32, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %18, metadata !1450, metadata !DIExpression()), !dbg !1448
  %19 = sub i32 %15, %18, !dbg !1451
  %20 = sub i32 %19, %.01, !dbg !1452
  call void @llvm.dbg.value(metadata i32 %20, metadata !1453, metadata !DIExpression()), !dbg !1448
  %21 = lshr i32 %20, 31, !dbg !1454
  call void @llvm.dbg.value(metadata i32 %21, metadata !1432, metadata !DIExpression()), !dbg !1429
  %22 = and i32 %20, 32767, !dbg !1455
  %23 = call i32 @MUX.24(i32 %2, i32 %22, i32 %15), !dbg !1456
  %24 = trunc i32 %23 to i16, !dbg !1456
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !1457
  store i16 %24, i16* %25, align 2, !dbg !1458
  br label %26, !dbg !1459

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %27, metadata !1438, metadata !DIExpression()), !dbg !1429
  br label %10, !dbg !1461, !llvm.loop !1462

28:                                               ; preds = %10
  ret i32 %.01, !dbg !1464
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.24(i32 %0, i32 %1, i32 %2) #0 !dbg !1465 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1466, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 %1, metadata !1468, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 %2, metadata !1469, metadata !DIExpression()), !dbg !1467
  %4 = sub i32 0, %0, !dbg !1470
  %5 = xor i32 %1, %2, !dbg !1471
  %6 = and i32 %4, %5, !dbg !1472
  %7 = xor i32 %2, %6, !dbg !1473
  ret i32 %7, !dbg !1474
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_to_monty(i16* %0, i16* %1) #0 !dbg !1475 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1478, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i16* %1, metadata !1480, metadata !DIExpression()), !dbg !1479
  %3 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !1481
  %4 = load i16, i16* %3, align 2, !dbg !1481
  %5 = zext i16 %4 to i32, !dbg !1481
  %6 = add nsw i32 %5, 15, !dbg !1483
  %7 = ashr i32 %6, 4, !dbg !1484
  call void @llvm.dbg.value(metadata i32 %7, metadata !1485, metadata !DIExpression()), !dbg !1479
  br label %8, !dbg !1486

8:                                                ; preds = %11, %2
  %.0 = phi i32 [ %7, %2 ], [ %12, %11 ], !dbg !1487
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1485, metadata !DIExpression()), !dbg !1479
  %9 = icmp ugt i32 %.0, 0, !dbg !1488
  br i1 %9, label %10, label %13, !dbg !1490

10:                                               ; preds = %8
  call void @br_i15_muladd_small(i16* %0, i16 zeroext 0, i16* %1), !dbg !1491
  br label %11, !dbg !1493

11:                                               ; preds = %10
  %12 = add i32 %.0, -1, !dbg !1494
  call void @llvm.dbg.value(metadata i32 %12, metadata !1485, metadata !DIExpression()), !dbg !1479
  br label %8, !dbg !1495, !llvm.loop !1496

13:                                               ; preds = %8
  ret void, !dbg !1498
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i15_pkcs1_sign(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4) #0 !dbg !1499 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1519, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %1, metadata !1521, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %2, metadata !1522, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %3, metadata !1523, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %4, metadata !1524, metadata !DIExpression()), !dbg !1520
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 0, !dbg !1525
  %7 = load i32, i32* %6, align 8, !dbg !1525
  %8 = call i32 @br_rsa_pkcs1_sig_pad(i8* %0, i8* %1, i64 %2, i32 %7, i8* %4), !dbg !1527
  %9 = icmp ne i32 %8, 0, !dbg !1527
  br i1 %9, label %11, label %10, !dbg !1528

10:                                               ; preds = %5
  br label %13, !dbg !1529

11:                                               ; preds = %5
  %12 = call i32 @br_rsa_i15_private(i8* %4, %struct.br_rsa_private_key* %3), !dbg !1531
  br label %13, !dbg !1532

13:                                               ; preds = %11, %10
  %.0 = phi i32 [ %12, %11 ], [ 0, %10 ], !dbg !1520
  ret i32 %.0, !dbg !1533
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i15_private(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !1534 {
  %3 = alloca [1129 x i16], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1553, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !1555, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.declare(metadata [1129 x i16]* %3, metadata !1556, metadata !DIExpression()), !dbg !1560
  %4 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !1561
  %5 = load i8*, i8** %4, align 8, !dbg !1561
  call void @llvm.dbg.value(metadata i8* %5, metadata !1562, metadata !DIExpression()), !dbg !1554
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !1563
  %7 = load i64, i64* %6, align 8, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %7, metadata !1564, metadata !DIExpression()), !dbg !1554
  br label %8, !dbg !1565

8:                                                ; preds = %16, %2
  %.04 = phi i64 [ %7, %2 ], [ %18, %16 ], !dbg !1554
  %.02 = phi i8* [ %5, %2 ], [ %17, %16 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8* %.02, metadata !1562, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1564, metadata !DIExpression()), !dbg !1554
  %9 = icmp ugt i64 %.04, 0, !dbg !1566
  br i1 %9, label %10, label %14, !dbg !1567

10:                                               ; preds = %8
  %11 = load i8, i8* %.02, align 1, !dbg !1568
  %12 = zext i8 %11 to i32, !dbg !1568
  %13 = icmp eq i32 %12, 0, !dbg !1569
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i1 [ false, %8 ], [ %13, %10 ], !dbg !1554
  br i1 %15, label %16, label %19, !dbg !1565

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !1570
  call void @llvm.dbg.value(metadata i8* %17, metadata !1562, metadata !DIExpression()), !dbg !1554
  %18 = add i64 %.04, -1, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %18, metadata !1564, metadata !DIExpression()), !dbg !1554
  br label %8, !dbg !1565, !llvm.loop !1573

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !1575
  %21 = load i8*, i8** %20, align 8, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %21, metadata !1576, metadata !DIExpression()), !dbg !1554
  %22 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !1577
  %23 = load i64, i64* %22, align 8, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %23, metadata !1578, metadata !DIExpression()), !dbg !1554
  br label %24, !dbg !1579

24:                                               ; preds = %32, %19
  %.05 = phi i64 [ %23, %19 ], [ %34, %32 ], !dbg !1554
  %.03 = phi i8* [ %21, %19 ], [ %33, %32 ], !dbg !1554
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1576, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1578, metadata !DIExpression()), !dbg !1554
  %25 = icmp ugt i64 %.05, 0, !dbg !1580
  br i1 %25, label %26, label %30, !dbg !1581

26:                                               ; preds = %24
  %27 = load i8, i8* %.03, align 1, !dbg !1582
  %28 = zext i8 %27 to i32, !dbg !1582
  %29 = icmp eq i32 %28, 0, !dbg !1583
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i1 [ false, %24 ], [ %29, %26 ], !dbg !1554
  br i1 %31, label %32, label %35, !dbg !1579

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, i8* %.03, i32 1, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %33, metadata !1576, metadata !DIExpression()), !dbg !1554
  %34 = add i64 %.05, -1, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %34, metadata !1578, metadata !DIExpression()), !dbg !1554
  br label %24, !dbg !1579, !llvm.loop !1587

35:                                               ; preds = %30
  %36 = icmp ugt i64 %.04, %.05, !dbg !1589
  br i1 %36, label %37, label %38, !dbg !1590

37:                                               ; preds = %35
  br label %39, !dbg !1590

38:                                               ; preds = %35
  br label %39, !dbg !1590

39:                                               ; preds = %38, %37
  %40 = phi i64 [ %.04, %37 ], [ %.05, %38 ], !dbg !1590
  %41 = shl i64 %40, 3, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %41, metadata !1592, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 1, metadata !1593, metadata !DIExpression()), !dbg !1554
  br label %42, !dbg !1594

42:                                               ; preds = %44, %39
  %.09 = phi i64 [ %41, %39 ], [ %45, %44 ], !dbg !1554
  %.06 = phi i64 [ 1, %39 ], [ %46, %44 ], !dbg !1554
  call void @llvm.dbg.value(metadata i64 %.06, metadata !1593, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %.09, metadata !1592, metadata !DIExpression()), !dbg !1554
  %43 = icmp sgt i64 %.09, 0, !dbg !1595
  br i1 %43, label %44, label %47, !dbg !1594

44:                                               ; preds = %42
  %45 = sub nsw i64 %.09, 15, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %45, metadata !1592, metadata !DIExpression()), !dbg !1554
  %46 = add i64 %.06, 1, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %46, metadata !1593, metadata !DIExpression()), !dbg !1554
  br label %42, !dbg !1594, !llvm.loop !1599

47:                                               ; preds = %42
  %48 = and i64 %.06, 1, !dbg !1601
  %49 = add i64 %.06, %48, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %49, metadata !1593, metadata !DIExpression()), !dbg !1554
  %50 = mul i64 6, %49, !dbg !1603
  %51 = icmp ugt i64 %50, 1128, !dbg !1605
  br i1 %51, label %52, label %53, !dbg !1606

52:                                               ; preds = %47
  br label %138, !dbg !1607

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !1609
  %55 = load i32, i32* %54, align 8, !dbg !1609
  %56 = add i32 %55, 7, !dbg !1610
  %57 = lshr i32 %56, 3, !dbg !1611
  %58 = zext i32 %57 to i64, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %58, metadata !1613, metadata !DIExpression()), !dbg !1554
  %59 = getelementptr inbounds [1129 x i16], [1129 x i16]* %3, i64 0, i64 0, !dbg !1614
  call void @llvm.dbg.value(metadata i16* %59, metadata !1615, metadata !DIExpression()), !dbg !1554
  %60 = ptrtoint i16* %59 to i64, !dbg !1616
  %61 = and i64 %60, 2, !dbg !1618
  %62 = icmp eq i64 %61, 0, !dbg !1619
  br i1 %62, label %63, label %65, !dbg !1620

63:                                               ; preds = %53
  %64 = getelementptr inbounds i16, i16* %59, i32 1, !dbg !1621
  call void @llvm.dbg.value(metadata i16* %64, metadata !1615, metadata !DIExpression()), !dbg !1554
  br label %65, !dbg !1623

65:                                               ; preds = %63, %53
  %.07 = phi i16* [ %64, %63 ], [ %59, %53 ], !dbg !1554
  call void @llvm.dbg.value(metadata i16* %.07, metadata !1615, metadata !DIExpression()), !dbg !1554
  call void @br_i15_decode(i16* %.07, i8* %.03, i64 %.05), !dbg !1624
  %66 = getelementptr inbounds i16, i16* %.07, i64 %49, !dbg !1625
  call void @llvm.dbg.value(metadata i16* %66, metadata !1626, metadata !DIExpression()), !dbg !1554
  call void @br_i15_decode(i16* %66, i8* %.02, i64 %.04), !dbg !1627
  %67 = mul i64 2, %49, !dbg !1628
  %68 = getelementptr inbounds i16, i16* %.07, i64 %67, !dbg !1629
  call void @llvm.dbg.value(metadata i16* %68, metadata !1630, metadata !DIExpression()), !dbg !1554
  %69 = getelementptr inbounds i16, i16* %.07, i64 0, !dbg !1631
  %70 = load i16, i16* %69, align 2, !dbg !1631
  call void @br_i15_zero.29(i16* %68, i16 zeroext %70), !dbg !1632
  call void @br_i15_mulacc(i16* %68, i16* %.07, i16* %66), !dbg !1633
  %71 = mul i64 4, %49, !dbg !1634
  %72 = getelementptr inbounds i16, i16* %.07, i64 %71, !dbg !1635
  call void @llvm.dbg.value(metadata i16* %72, metadata !1636, metadata !DIExpression()), !dbg !1554
  %73 = bitcast i16* %72 to i8*, !dbg !1637
  call void @br_i15_encode(i8* %73, i64 %58, i16* %68), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %58, metadata !1639, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()), !dbg !1554
  br label %74, !dbg !1641

74:                                               ; preds = %76, %65
  %.08 = phi i64 [ %58, %65 ], [ %77, %76 ], !dbg !1554
  %.01 = phi i32 [ 0, %65 ], [ %88, %76 ], !dbg !1554
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1640, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %.08, metadata !1639, metadata !DIExpression()), !dbg !1554
  %75 = icmp ugt i64 %.08, 0, !dbg !1642
  br i1 %75, label %76, label %89, !dbg !1641

76:                                               ; preds = %74
  %77 = add i64 %.08, -1, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %77, metadata !1639, metadata !DIExpression()), !dbg !1554
  %78 = bitcast i16* %72 to i8*, !dbg !1645
  %79 = getelementptr inbounds i8, i8* %78, i64 %77, !dbg !1645
  %80 = load i8, i8* %79, align 1, !dbg !1645
  %81 = zext i8 %80 to i32, !dbg !1645
  call void @llvm.dbg.value(metadata i32 %81, metadata !1646, metadata !DIExpression()), !dbg !1647
  %82 = getelementptr inbounds i8, i8* %0, i64 %77, !dbg !1648
  %83 = load i8, i8* %82, align 1, !dbg !1648
  %84 = zext i8 %83 to i32, !dbg !1648
  call void @llvm.dbg.value(metadata i32 %84, metadata !1649, metadata !DIExpression()), !dbg !1647
  %85 = add i32 %81, %.01, !dbg !1650
  %86 = sub i32 %84, %85, !dbg !1651
  %87 = lshr i32 %86, 8, !dbg !1652
  %88 = and i32 %87, 1, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %88, metadata !1640, metadata !DIExpression()), !dbg !1554
  br label %74, !dbg !1641, !llvm.loop !1654

89:                                               ; preds = %74
  %90 = mul i64 2, %49, !dbg !1656
  %91 = getelementptr inbounds i16, i16* %.07, i64 %90, !dbg !1657
  call void @llvm.dbg.value(metadata i16* %91, metadata !1658, metadata !DIExpression()), !dbg !1554
  %92 = bitcast i16* %91 to i8*, !dbg !1659
  %93 = bitcast i16* %66 to i8*, !dbg !1659
  %94 = mul i64 %49, 2, !dbg !1660
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %92, i8* align 2 %93, i64 %94, i1 false), !dbg !1659
  %95 = getelementptr inbounds i16, i16* %.07, i64 1, !dbg !1661
  %96 = load i16, i16* %95, align 2, !dbg !1661
  %97 = call zeroext i16 @br_i15_ninv15(i16 zeroext %96), !dbg !1662
  call void @llvm.dbg.value(metadata i16 %97, metadata !1663, metadata !DIExpression()), !dbg !1554
  %98 = getelementptr inbounds i16, i16* %.07, i64 %49, !dbg !1664
  call void @llvm.dbg.value(metadata i16* %98, metadata !1665, metadata !DIExpression()), !dbg !1554
  call void @br_i15_decode_reduce(i16* %98, i8* %0, i64 %58, i16* %.07), !dbg !1666
  %99 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !1667
  %100 = load i8*, i8** %99, align 8, !dbg !1667
  %101 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !1668
  %102 = load i64, i64* %101, align 8, !dbg !1668
  %103 = mul i64 3, %49, !dbg !1669
  %104 = getelementptr inbounds i16, i16* %.07, i64 %103, !dbg !1670
  %105 = mul i64 3, %49, !dbg !1671
  %106 = sub i64 1128, %105, !dbg !1672
  %107 = call i32 @br_i15_modpow_opt(i16* %98, i8* %100, i64 %102, i16* %.07, i16 zeroext %97, i16* %104, i64 %106), !dbg !1673
  %108 = and i32 %.01, %107, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %108, metadata !1640, metadata !DIExpression()), !dbg !1554
  %109 = getelementptr inbounds i16, i16* %91, i64 1, !dbg !1675
  %110 = load i16, i16* %109, align 2, !dbg !1675
  %111 = call zeroext i16 @br_i15_ninv15(i16 zeroext %110), !dbg !1676
  call void @llvm.dbg.value(metadata i16 %111, metadata !1677, metadata !DIExpression()), !dbg !1554
  %112 = mul i64 3, %49, !dbg !1678
  %113 = getelementptr inbounds i16, i16* %.07, i64 %112, !dbg !1679
  call void @llvm.dbg.value(metadata i16* %113, metadata !1680, metadata !DIExpression()), !dbg !1554
  call void @br_i15_decode_reduce(i16* %113, i8* %0, i64 %58, i16* %91), !dbg !1681
  %114 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !1682
  %115 = load i8*, i8** %114, align 8, !dbg !1682
  %116 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !1683
  %117 = load i64, i64* %116, align 8, !dbg !1683
  %118 = mul i64 4, %49, !dbg !1684
  %119 = getelementptr inbounds i16, i16* %.07, i64 %118, !dbg !1685
  %120 = mul i64 4, %49, !dbg !1686
  %121 = sub i64 1128, %120, !dbg !1687
  %122 = call i32 @br_i15_modpow_opt(i16* %113, i8* %115, i64 %117, i16* %91, i16 zeroext %111, i16* %119, i64 %121), !dbg !1688
  %123 = and i32 %108, %122, !dbg !1689
  call void @llvm.dbg.value(metadata i32 %123, metadata !1640, metadata !DIExpression()), !dbg !1554
  %124 = mul i64 4, %49, !dbg !1690
  %125 = getelementptr inbounds i16, i16* %.07, i64 %124, !dbg !1691
  call void @llvm.dbg.value(metadata i16* %125, metadata !1626, metadata !DIExpression()), !dbg !1554
  %126 = mul i64 5, %49, !dbg !1692
  %127 = getelementptr inbounds i16, i16* %.07, i64 %126, !dbg !1693
  call void @llvm.dbg.value(metadata i16* %127, metadata !1630, metadata !DIExpression()), !dbg !1554
  call void @br_i15_reduce(i16* %127, i16* %98, i16* %91), !dbg !1694
  %128 = call i32 @br_i15_sub(i16* %113, i16* %127, i32 1), !dbg !1695
  %129 = call i32 @br_i15_add(i16* %113, i16* %91, i32 %128), !dbg !1696
  call void @br_i15_to_monty(i16* %113, i16* %91), !dbg !1697
  %130 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !1698
  %131 = load i8*, i8** %130, align 8, !dbg !1698
  %132 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !1699
  %133 = load i64, i64* %132, align 8, !dbg !1699
  call void @br_i15_decode_reduce(i16* %125, i8* %131, i64 %133, i16* %91), !dbg !1700
  call void @br_i15_montymul(i16* %127, i16* %113, i16* %125, i16* %91, i16 zeroext %111), !dbg !1701
  call void @llvm.dbg.value(metadata i16* %98, metadata !1636, metadata !DIExpression()), !dbg !1554
  call void @br_i15_mulacc(i16* %98, i16* %.07, i16* %127), !dbg !1702
  call void @br_i15_encode(i8* %0, i64 %58, i16* %98), !dbg !1703
  %134 = zext i16 %111 to i32, !dbg !1704
  %135 = zext i16 %97 to i32, !dbg !1705
  %136 = and i32 %134, %135, !dbg !1706
  %137 = and i32 %136, %123, !dbg !1707
  br label %138, !dbg !1708

138:                                              ; preds = %89, %52
  %.0 = phi i32 [ 0, %52 ], [ %137, %89 ], !dbg !1554
  ret i32 %.0, !dbg !1709
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.29(i16* %0, i16 zeroext %1) #0 !dbg !1710 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1711, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i16 %1, metadata !1713, metadata !DIExpression()), !dbg !1712
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !1714
  call void @llvm.dbg.value(metadata i16* %3, metadata !1711, metadata !DIExpression()), !dbg !1712
  store i16 %1, i16* %0, align 2, !dbg !1715
  %4 = bitcast i16* %3 to i8*, !dbg !1716
  %5 = zext i16 %1 to i32, !dbg !1717
  %6 = add nsw i32 %5, 15, !dbg !1718
  %7 = ashr i32 %6, 4, !dbg !1719
  %8 = sext i32 %7 to i64, !dbg !1720
  %9 = mul i64 %8, 2, !dbg !1721
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !1716
  ret void, !dbg !1722
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_pkcs1_sig_pad(i8* %0, i8* %1, i64 %2, i32 %3, i8* %4) #0 !dbg !1723 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1726, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8* %1, metadata !1728, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i64 %2, metadata !1729, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i32 %3, metadata !1730, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8* %4, metadata !1731, metadata !DIExpression()), !dbg !1727
  %6 = add i32 %3, 7, !dbg !1732
  %7 = lshr i32 %6, 3, !dbg !1733
  %8 = zext i32 %7 to i64, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %8, metadata !1735, metadata !DIExpression()), !dbg !1727
  %9 = icmp eq i8* %0, null, !dbg !1736
  br i1 %9, label %10, label %22, !dbg !1738

10:                                               ; preds = %5
  %11 = add i64 %2, 11, !dbg !1739
  %12 = icmp ult i64 %8, %11, !dbg !1742
  br i1 %12, label %13, label %14, !dbg !1743

13:                                               ; preds = %10
  br label %70, !dbg !1744

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !1746
  store i8 0, i8* %15, align 1, !dbg !1747
  %16 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1748
  store i8 1, i8* %16, align 1, !dbg !1749
  %17 = sub i64 %8, %2, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %17, metadata !1751, metadata !DIExpression()), !dbg !1727
  %18 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !1752
  %19 = sub i64 %17, 3, !dbg !1753
  call void @llvm.memset.p0i8.i64(i8* align 1 %18, i8 -1, i64 %19, i1 false), !dbg !1754
  %20 = sub i64 %17, 1, !dbg !1755
  %21 = getelementptr inbounds i8, i8* %4, i64 %20, !dbg !1756
  store i8 0, i8* %21, align 1, !dbg !1757
  br label %68, !dbg !1758

22:                                               ; preds = %5
  %23 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1759
  %24 = load i8, i8* %23, align 1, !dbg !1759
  %25 = zext i8 %24 to i64, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %25, metadata !1761, metadata !DIExpression()), !dbg !1727
  %26 = add i64 %25, %2, !dbg !1762
  %27 = add i64 %26, 21, !dbg !1764
  %28 = icmp ult i64 %8, %27, !dbg !1765
  br i1 %28, label %29, label %30, !dbg !1766

29:                                               ; preds = %22
  br label %70, !dbg !1767

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !1769
  store i8 0, i8* %31, align 1, !dbg !1770
  %32 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1771
  store i8 1, i8* %32, align 1, !dbg !1772
  %33 = sub i64 %8, %25, !dbg !1773
  %34 = sub i64 %33, %2, !dbg !1774
  %35 = sub i64 %34, 11, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %35, metadata !1751, metadata !DIExpression()), !dbg !1727
  %36 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !1776
  %37 = sub i64 %35, 2, !dbg !1777
  call void @llvm.memset.p0i8.i64(i8* align 1 %36, i8 -1, i64 %37, i1 false), !dbg !1778
  %38 = getelementptr inbounds i8, i8* %4, i64 %35, !dbg !1779
  store i8 0, i8* %38, align 1, !dbg !1780
  %39 = add i64 %35, 1, !dbg !1781
  %40 = getelementptr inbounds i8, i8* %4, i64 %39, !dbg !1782
  store i8 48, i8* %40, align 1, !dbg !1783
  %41 = add i64 %25, %2, !dbg !1784
  %42 = add i64 %41, 8, !dbg !1785
  %43 = trunc i64 %42 to i8, !dbg !1786
  %44 = add i64 %35, 2, !dbg !1787
  %45 = getelementptr inbounds i8, i8* %4, i64 %44, !dbg !1788
  store i8 %43, i8* %45, align 1, !dbg !1789
  %46 = add i64 %35, 3, !dbg !1790
  %47 = getelementptr inbounds i8, i8* %4, i64 %46, !dbg !1791
  store i8 48, i8* %47, align 1, !dbg !1792
  %48 = add i64 %25, 4, !dbg !1793
  %49 = trunc i64 %48 to i8, !dbg !1794
  %50 = add i64 %35, 4, !dbg !1795
  %51 = getelementptr inbounds i8, i8* %4, i64 %50, !dbg !1796
  store i8 %49, i8* %51, align 1, !dbg !1797
  %52 = add i64 %35, 5, !dbg !1798
  %53 = getelementptr inbounds i8, i8* %4, i64 %52, !dbg !1799
  store i8 6, i8* %53, align 1, !dbg !1800
  %54 = getelementptr inbounds i8, i8* %4, i64 %35, !dbg !1801
  %55 = getelementptr inbounds i8, i8* %54, i64 6, !dbg !1802
  %56 = add i64 %25, 1, !dbg !1803
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %55, i8* align 1 %0, i64 %56, i1 false), !dbg !1804
  %57 = add i64 %25, 7, !dbg !1805
  %58 = add i64 %35, %57, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %58, metadata !1751, metadata !DIExpression()), !dbg !1727
  %59 = add i64 %58, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %59, metadata !1751, metadata !DIExpression()), !dbg !1727
  %60 = getelementptr inbounds i8, i8* %4, i64 %58, !dbg !1808
  store i8 5, i8* %60, align 1, !dbg !1809
  %61 = add i64 %59, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %61, metadata !1751, metadata !DIExpression()), !dbg !1727
  %62 = getelementptr inbounds i8, i8* %4, i64 %59, !dbg !1811
  store i8 0, i8* %62, align 1, !dbg !1812
  %63 = add i64 %61, 1, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %63, metadata !1751, metadata !DIExpression()), !dbg !1727
  %64 = getelementptr inbounds i8, i8* %4, i64 %61, !dbg !1814
  store i8 4, i8* %64, align 1, !dbg !1815
  %65 = trunc i64 %2 to i8, !dbg !1816
  %66 = add i64 %63, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %66, metadata !1751, metadata !DIExpression()), !dbg !1727
  %67 = getelementptr inbounds i8, i8* %4, i64 %63, !dbg !1818
  store i8 %65, i8* %67, align 1, !dbg !1819
  br label %68

68:                                               ; preds = %30, %14
  %.01 = phi i64 [ %17, %14 ], [ %66, %30 ], !dbg !1820
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1751, metadata !DIExpression()), !dbg !1727
  %69 = getelementptr inbounds i8, i8* %4, i64 %.01, !dbg !1821
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %1, i64 %2, i1 false), !dbg !1822
  br label %70, !dbg !1823

70:                                               ; preds = %68, %29, %13
  %.0 = phi i32 [ 0, %13 ], [ 1, %68 ], [ 0, %29 ], !dbg !1727
  ret i32 %.0, !dbg !1824
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sign_wrapper(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4) #0 !dbg !1825 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1844, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %1, metadata !1846, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %2, metadata !1847, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %3, metadata !1848, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %4, metadata !1849, metadata !DIExpression()), !dbg !1845
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1850
  call void @public_in(%struct.smack_value* %6), !dbg !1851
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1852
  call void @public_in(%struct.smack_value* %7), !dbg !1853
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !1854
  call void @public_in(%struct.smack_value* %8), !dbg !1855
  %9 = call %struct.smack_value* (%struct.br_rsa_private_key*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_rsa_private_key*, ...)*)(%struct.br_rsa_private_key* %3), !dbg !1856
  call void @public_in(%struct.smack_value* %9), !dbg !1857
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !1858
  call void @public_in(%struct.smack_value* %10), !dbg !1859
  %11 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 1, !dbg !1860
  %12 = load i8*, i8** %11, align 8, !dbg !1860
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %12), !dbg !1861
  call void @public_in(%struct.smack_value* %13), !dbg !1862
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 3, !dbg !1863
  %15 = load i8*, i8** %14, align 8, !dbg !1863
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %15), !dbg !1864
  call void @public_in(%struct.smack_value* %16), !dbg !1865
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 5, !dbg !1866
  %18 = load i8*, i8** %17, align 8, !dbg !1866
  %19 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %18), !dbg !1867
  call void @public_in(%struct.smack_value* %19), !dbg !1868
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 7, !dbg !1869
  %21 = load i8*, i8** %20, align 8, !dbg !1869
  %22 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %21), !dbg !1870
  call void @public_in(%struct.smack_value* %22), !dbg !1871
  %23 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 9, !dbg !1872
  %24 = load i8*, i8** %23, align 8, !dbg !1872
  %25 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %24), !dbg !1873
  call void @public_in(%struct.smack_value* %25), !dbg !1874
  %26 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 2, !dbg !1875
  %27 = load i64, i64* %26, align 8, !dbg !1875
  %28 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %27), !dbg !1876
  call void @public_in(%struct.smack_value* %28), !dbg !1877
  %29 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 4, !dbg !1878
  %30 = load i64, i64* %29, align 8, !dbg !1878
  %31 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %30), !dbg !1879
  call void @public_in(%struct.smack_value* %31), !dbg !1880
  %32 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 6, !dbg !1881
  %33 = load i64, i64* %32, align 8, !dbg !1881
  %34 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %33), !dbg !1882
  call void @public_in(%struct.smack_value* %34), !dbg !1883
  %35 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 8, !dbg !1884
  %36 = load i64, i64* %35, align 8, !dbg !1884
  %37 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %36), !dbg !1885
  call void @public_in(%struct.smack_value* %37), !dbg !1886
  %38 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 10, !dbg !1887
  %39 = load i64, i64* %38, align 8, !dbg !1887
  %40 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %39), !dbg !1888
  call void @public_in(%struct.smack_value* %40), !dbg !1889
  %41 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 10, !dbg !1890
  %42 = load i64, i64* %41, align 8, !dbg !1890
  %43 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %42), !dbg !1891
  call void @public_in(%struct.smack_value* %43), !dbg !1892
  %44 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 0, !dbg !1893
  %45 = load i32, i32* %44, align 8, !dbg !1893
  %46 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %45), !dbg !1894
  call void @public_in(%struct.smack_value* %46), !dbg !1895
  %47 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 64), !dbg !1896
  call void @public_in(%struct.smack_value* %47), !dbg !1897
  %48 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 64), !dbg !1898
  call void @public_in(%struct.smack_value* %48), !dbg !1899
  %49 = call %struct.smack_value* @__SMACK_values(i8* %4, i32 64), !dbg !1900
  call void @public_in(%struct.smack_value* %49), !dbg !1901
  %50 = call i32 @br_rsa_i15_pkcs1_sign(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4), !dbg !1902
  ret void, !dbg !1903
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @sign_wrapper_t() #0 !dbg !1904 {
  %1 = alloca %struct.br_rsa_private_key, align 8
  %2 = call i8* (...) @getcharpt(), !dbg !1907
  call void @llvm.dbg.value(metadata i8* %2, metadata !1908, metadata !DIExpression()), !dbg !1909
  %3 = call i8* (...) @getcharpt2(), !dbg !1910
  call void @llvm.dbg.value(metadata i8* %3, metadata !1911, metadata !DIExpression()), !dbg !1909
  %4 = call i64 (...) @getsize_t(), !dbg !1912
  call void @llvm.dbg.value(metadata i64 %4, metadata !1913, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.declare(metadata %struct.br_rsa_private_key* %1, metadata !1914, metadata !DIExpression()), !dbg !1915
  call void (%struct.br_rsa_private_key*, ...) @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8 %1), !dbg !1916
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !1917, metadata !DIExpression()), !dbg !1909
  %5 = call i8* (...) @getuschar(), !dbg !1919
  call void @llvm.dbg.value(metadata i8* %5, metadata !1920, metadata !DIExpression()), !dbg !1909
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !1921
  %7 = load i8*, i8** %6, align 8, !dbg !1921
  call void @llvm.dbg.value(metadata i8* %7, metadata !1922, metadata !DIExpression()), !dbg !1909
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !1923
  %9 = load i8*, i8** %8, align 8, !dbg !1923
  call void @llvm.dbg.value(metadata i8* %9, metadata !1924, metadata !DIExpression()), !dbg !1909
  %10 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !1925
  %11 = load i8*, i8** %10, align 8, !dbg !1925
  call void @llvm.dbg.value(metadata i8* %11, metadata !1926, metadata !DIExpression()), !dbg !1909
  %12 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !1927
  %13 = load i8*, i8** %12, align 8, !dbg !1927
  call void @llvm.dbg.value(metadata i8* %13, metadata !1928, metadata !DIExpression()), !dbg !1909
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !1929
  %15 = load i8*, i8** %14, align 8, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %15, metadata !1930, metadata !DIExpression()), !dbg !1909
  call void @vfct_taintseed(i8* %7, i8* %9, i8* %11, i8* %13, i8* %15), !dbg !1931
  %16 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !1932
  store i8* %7, i8** %16, align 8, !dbg !1933
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !1934
  store i8* %9, i8** %17, align 8, !dbg !1935
  %18 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !1936
  store i8* %11, i8** %18, align 8, !dbg !1937
  %19 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !1938
  store i8* %13, i8** %19, align 8, !dbg !1939
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !1940
  store i8* %15, i8** %20, align 8, !dbg !1941
  %21 = call i32 @br_rsa_i15_pkcs1_sign(i8* %2, i8* %3, i64 %4, %struct.br_rsa_private_key* %1, i8* %5), !dbg !1942
  ret void, !dbg !1943
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

!llvm.dbg.cu = !{!0, !3, !5, !13, !15, !17, !21, !23, !26, !32, !34, !38, !40, !42, !44, !46, !48, !50, !57, !60}
!llvm.ident = !{!62, !62, !62, !62, !62, !62, !62, !62, !62, !62, !62, !62, !62, !62, !62, !62, !62, !62, !62, !62}
!llvm.module.flags = !{!63, !64, !65}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "../BearSSL/src/int/i15_add.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "../BearSSL/src/int/i15_bitlen.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 26, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !11, line: 42, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "../BearSSL/src/int/i15_decode.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "../BearSSL/src/int/i15_decred.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "../BearSSL/src/int/i15_encode.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!19 = !{!8, !20}
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "../BearSSL/src/int/i15_fmont.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !25, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "../BearSSL/src/int/i15_modpow2.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!25 = !{!8, !12}
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !28, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../BearSSL/src/int/i15_montmul.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!28 = !{!29, !8}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../BearSSL/src/int/i15_mulacc.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !36, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../BearSSL/src/int/i15_muladd.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!36 = !{!8, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../BearSSL/src/int/i15_ninv15.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../BearSSL/src/int/i15_reduce.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../BearSSL/src/int/i15_rshift.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../BearSSL/src/int/i15_sub.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../BearSSL/src/int/i15_tmont.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../BearSSL/src/rsa/rsa_i15_pkcs1_sign.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !52, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../BearSSL/src/rsa/rsa_i15_priv.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!52 = !{!53, !54, !56}
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 90, baseType: !31)
!55 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !59, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "../BearSSL/src/rsa/rsa_pkcs1_sig_pad.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!59 = !{!37}
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "sign.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!62 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!63 = !{i32 7, !"Dwarf Version", i32 4}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 4}
!66 = distinct !DISubprogram(name: "br_ccopy", scope: !1, file: !1, line: 29, type: !67, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !8, !37, !69, !29}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!71 = !DILocalVariable(name: "ctl", arg: 1, scope: !66, file: !1, line: 29, type: !8)
!72 = !DILocation(line: 0, scope: !66)
!73 = !DILocalVariable(name: "dst", arg: 2, scope: !66, file: !1, line: 29, type: !37)
!74 = !DILocalVariable(name: "src", arg: 3, scope: !66, file: !1, line: 29, type: !69)
!75 = !DILocalVariable(name: "len", arg: 4, scope: !66, file: !1, line: 29, type: !29)
!76 = !DILocalVariable(name: "d", scope: !66, file: !1, line: 31, type: !56)
!77 = !DILocalVariable(name: "s", scope: !66, file: !1, line: 32, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!80 = !DILocation(line: 36, column: 2, scope: !66)
!81 = !DILocation(line: 36, column: 13, scope: !66)
!82 = !DILocation(line: 36, column: 16, scope: !66)
!83 = !DILocation(line: 39, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !66, file: !1, line: 36, column: 21)
!85 = !DILocation(line: 39, column: 7, scope: !84)
!86 = !DILocalVariable(name: "x", scope: !84, file: !1, line: 37, type: !8)
!87 = !DILocation(line: 0, scope: !84)
!88 = !DILocation(line: 40, column: 7, scope: !84)
!89 = !DILocalVariable(name: "y", scope: !84, file: !1, line: 37, type: !8)
!90 = !DILocation(line: 41, column: 8, scope: !84)
!91 = !DILocation(line: 41, column: 6, scope: !84)
!92 = !DILocation(line: 42, column: 5, scope: !84)
!93 = distinct !{!93, !80, !94, !95}
!94 = !DILocation(line: 43, column: 2, scope: !66)
!95 = !{!"llvm.loop.mustprogress"}
!96 = !DILocation(line: 44, column: 1, scope: !66)
!97 = distinct !DISubprogram(name: "MUX", scope: !98, file: !98, line: 770, type: !99, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!98 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!99 = !DISubroutineType(types: !100)
!100 = !{!8, !8, !8, !8}
!101 = !DILocalVariable(name: "ctl", arg: 1, scope: !97, file: !98, line: 770, type: !8)
!102 = !DILocation(line: 0, scope: !97)
!103 = !DILocalVariable(name: "x", arg: 2, scope: !97, file: !98, line: 770, type: !8)
!104 = !DILocalVariable(name: "y", arg: 3, scope: !97, file: !98, line: 770, type: !8)
!105 = !DILocation(line: 772, column: 14, scope: !97)
!106 = !DILocation(line: 772, column: 24, scope: !97)
!107 = !DILocation(line: 772, column: 19, scope: !97)
!108 = !DILocation(line: 772, column: 11, scope: !97)
!109 = !DILocation(line: 772, column: 2, scope: !97)
!110 = distinct !DISubprogram(name: "br_i15_add", scope: !4, file: !4, line: 29, type: !111, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!111 = !DISubroutineType(types: !112)
!112 = !{!8, !113, !117, !8}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 25, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !11, line: 40, baseType: !116)
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!119 = !DILocalVariable(name: "a", arg: 1, scope: !110, file: !4, line: 29, type: !113)
!120 = !DILocation(line: 0, scope: !110)
!121 = !DILocalVariable(name: "b", arg: 2, scope: !110, file: !4, line: 29, type: !117)
!122 = !DILocalVariable(name: "ctl", arg: 3, scope: !110, file: !4, line: 29, type: !8)
!123 = !DILocalVariable(name: "cc", scope: !110, file: !4, line: 31, type: !8)
!124 = !DILocation(line: 35, column: 7, scope: !110)
!125 = !DILocation(line: 35, column: 12, scope: !110)
!126 = !DILocation(line: 35, column: 18, scope: !110)
!127 = !DILocation(line: 35, column: 6, scope: !110)
!128 = !DILocalVariable(name: "m", scope: !110, file: !4, line: 32, type: !29)
!129 = !DILocalVariable(name: "u", scope: !110, file: !4, line: 32, type: !29)
!130 = !DILocation(line: 36, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !110, file: !4, line: 36, column: 2)
!132 = !DILocation(line: 0, scope: !131)
!133 = !DILocation(line: 36, column: 16, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !4, line: 36, column: 2)
!135 = !DILocation(line: 36, column: 2, scope: !131)
!136 = !DILocation(line: 39, column: 8, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !4, line: 36, column: 27)
!138 = !DILocalVariable(name: "aw", scope: !137, file: !4, line: 37, type: !8)
!139 = !DILocation(line: 0, scope: !137)
!140 = !DILocation(line: 40, column: 8, scope: !137)
!141 = !DILocalVariable(name: "bw", scope: !137, file: !4, line: 37, type: !8)
!142 = !DILocation(line: 41, column: 12, scope: !137)
!143 = !DILocation(line: 41, column: 17, scope: !137)
!144 = !DILocalVariable(name: "naw", scope: !137, file: !4, line: 37, type: !8)
!145 = !DILocation(line: 42, column: 12, scope: !137)
!146 = !DILocation(line: 43, column: 23, scope: !137)
!147 = !DILocation(line: 43, column: 10, scope: !137)
!148 = !DILocation(line: 43, column: 3, scope: !137)
!149 = !DILocation(line: 43, column: 8, scope: !137)
!150 = !DILocation(line: 44, column: 2, scope: !137)
!151 = !DILocation(line: 36, column: 23, scope: !134)
!152 = !DILocation(line: 36, column: 2, scope: !134)
!153 = distinct !{!153, !135, !154, !95}
!154 = !DILocation(line: 44, column: 2, scope: !131)
!155 = !DILocation(line: 45, column: 2, scope: !110)
!156 = distinct !DISubprogram(name: "MUX", scope: !98, file: !98, line: 770, type: !99, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!157 = !DILocalVariable(name: "ctl", arg: 1, scope: !156, file: !98, line: 770, type: !8)
!158 = !DILocation(line: 0, scope: !156)
!159 = !DILocalVariable(name: "x", arg: 2, scope: !156, file: !98, line: 770, type: !8)
!160 = !DILocalVariable(name: "y", arg: 3, scope: !156, file: !98, line: 770, type: !8)
!161 = !DILocation(line: 772, column: 14, scope: !156)
!162 = !DILocation(line: 772, column: 24, scope: !156)
!163 = !DILocation(line: 772, column: 19, scope: !156)
!164 = !DILocation(line: 772, column: 11, scope: !156)
!165 = !DILocation(line: 772, column: 2, scope: !156)
!166 = distinct !DISubprogram(name: "br_i15_bit_length", scope: !6, file: !6, line: 29, type: !167, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !2)
!167 = !DISubroutineType(types: !168)
!168 = !{!8, !113, !29}
!169 = !DILocalVariable(name: "x", arg: 1, scope: !166, file: !6, line: 29, type: !113)
!170 = !DILocation(line: 0, scope: !166)
!171 = !DILocalVariable(name: "xlen", arg: 2, scope: !166, file: !6, line: 29, type: !29)
!172 = !DILocalVariable(name: "tw", scope: !166, file: !6, line: 31, type: !8)
!173 = !DILocalVariable(name: "twk", scope: !166, file: !6, line: 31, type: !8)
!174 = !DILocation(line: 35, column: 2, scope: !166)
!175 = !DILocation(line: 35, column: 14, scope: !166)
!176 = !DILocation(line: 35, column: 17, scope: !166)
!177 = !DILocation(line: 38, column: 7, scope: !178)
!178 = distinct !DILexicalBlock(scope: !166, file: !6, line: 35, column: 22)
!179 = !DILocalVariable(name: "c", scope: !178, file: !6, line: 36, type: !8)
!180 = !DILocation(line: 0, scope: !178)
!181 = !DILocation(line: 39, column: 7, scope: !178)
!182 = !DILocalVariable(name: "w", scope: !178, file: !6, line: 36, type: !8)
!183 = !DILocation(line: 40, column: 8, scope: !178)
!184 = !DILocation(line: 41, column: 16, scope: !178)
!185 = !DILocation(line: 41, column: 9, scope: !178)
!186 = distinct !{!186, !174, !187, !95}
!187 = !DILocation(line: 42, column: 2, scope: !166)
!188 = !DILocation(line: 43, column: 14, scope: !166)
!189 = !DILocation(line: 43, column: 22, scope: !166)
!190 = !DILocation(line: 43, column: 20, scope: !166)
!191 = !DILocation(line: 43, column: 2, scope: !166)
!192 = distinct !DISubprogram(name: "EQ", scope: !98, file: !98, line: 779, type: !193, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!193 = !DISubroutineType(types: !194)
!194 = !{!8, !8, !8}
!195 = !DILocalVariable(name: "x", arg: 1, scope: !192, file: !98, line: 779, type: !8)
!196 = !DILocation(line: 0, scope: !192)
!197 = !DILocalVariable(name: "y", arg: 2, scope: !192, file: !98, line: 779, type: !8)
!198 = !DILocation(line: 783, column: 8, scope: !192)
!199 = !DILocalVariable(name: "q", scope: !192, file: !98, line: 781, type: !8)
!200 = !DILocation(line: 784, column: 18, scope: !192)
!201 = !DILocation(line: 784, column: 16, scope: !192)
!202 = !DILocation(line: 784, column: 22, scope: !192)
!203 = !DILocation(line: 784, column: 9, scope: !192)
!204 = !DILocation(line: 784, column: 2, scope: !192)
!205 = distinct !DISubprogram(name: "MUX", scope: !98, file: !98, line: 770, type: !99, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!206 = !DILocalVariable(name: "ctl", arg: 1, scope: !205, file: !98, line: 770, type: !8)
!207 = !DILocation(line: 0, scope: !205)
!208 = !DILocalVariable(name: "x", arg: 2, scope: !205, file: !98, line: 770, type: !8)
!209 = !DILocalVariable(name: "y", arg: 3, scope: !205, file: !98, line: 770, type: !8)
!210 = !DILocation(line: 772, column: 14, scope: !205)
!211 = !DILocation(line: 772, column: 24, scope: !205)
!212 = !DILocation(line: 772, column: 19, scope: !205)
!213 = !DILocation(line: 772, column: 11, scope: !205)
!214 = !DILocation(line: 772, column: 2, scope: !205)
!215 = distinct !DISubprogram(name: "BIT_LENGTH", scope: !98, file: !98, line: 915, type: !216, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!216 = !DISubroutineType(types: !217)
!217 = !{!8, !8}
!218 = !DILocalVariable(name: "x", arg: 1, scope: !215, file: !98, line: 915, type: !8)
!219 = !DILocation(line: 0, scope: !215)
!220 = !DILocation(line: 919, column: 6, scope: !215)
!221 = !DILocalVariable(name: "k", scope: !215, file: !98, line: 917, type: !8)
!222 = !DILocation(line: 920, column: 6, scope: !215)
!223 = !DILocalVariable(name: "c", scope: !215, file: !98, line: 917, type: !8)
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
!246 = distinct !DISubprogram(name: "NEQ", scope: !98, file: !98, line: 791, type: !193, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!247 = !DILocalVariable(name: "x", arg: 1, scope: !246, file: !98, line: 791, type: !8)
!248 = !DILocation(line: 0, scope: !246)
!249 = !DILocalVariable(name: "y", arg: 2, scope: !246, file: !98, line: 791, type: !8)
!250 = !DILocation(line: 795, column: 8, scope: !246)
!251 = !DILocalVariable(name: "q", scope: !246, file: !98, line: 793, type: !8)
!252 = !DILocation(line: 796, column: 14, scope: !246)
!253 = !DILocation(line: 796, column: 12, scope: !246)
!254 = !DILocation(line: 796, column: 18, scope: !246)
!255 = !DILocation(line: 796, column: 2, scope: !246)
!256 = distinct !DISubprogram(name: "GT", scope: !98, file: !98, line: 803, type: !193, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!257 = !DILocalVariable(name: "x", arg: 1, scope: !256, file: !98, line: 803, type: !8)
!258 = !DILocation(line: 0, scope: !256)
!259 = !DILocalVariable(name: "y", arg: 2, scope: !256, file: !98, line: 803, type: !8)
!260 = !DILocation(line: 819, column: 8, scope: !256)
!261 = !DILocalVariable(name: "z", scope: !256, file: !98, line: 817, type: !8)
!262 = !DILocation(line: 820, column: 18, scope: !256)
!263 = !DILocation(line: 820, column: 28, scope: !256)
!264 = !DILocation(line: 820, column: 23, scope: !256)
!265 = !DILocation(line: 820, column: 12, scope: !256)
!266 = !DILocation(line: 820, column: 35, scope: !256)
!267 = !DILocation(line: 820, column: 2, scope: !256)
!268 = distinct !DISubprogram(name: "NOT", scope: !98, file: !98, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!269 = !DILocalVariable(name: "ctl", arg: 1, scope: !268, file: !98, line: 761, type: !8)
!270 = !DILocation(line: 0, scope: !268)
!271 = !DILocation(line: 763, column: 13, scope: !268)
!272 = !DILocation(line: 763, column: 2, scope: !268)
!273 = distinct !DISubprogram(name: "br_i15_decode", scope: !14, file: !14, line: 29, type: !274, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !2)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !113, !69, !29}
!276 = !DILocalVariable(name: "x", arg: 1, scope: !273, file: !14, line: 29, type: !113)
!277 = !DILocation(line: 0, scope: !273)
!278 = !DILocalVariable(name: "src", arg: 2, scope: !273, file: !14, line: 29, type: !69)
!279 = !DILocalVariable(name: "len", arg: 3, scope: !273, file: !14, line: 29, type: !29)
!280 = !DILocalVariable(name: "buf", scope: !273, file: !14, line: 31, type: !78)
!281 = !DILocalVariable(name: "v", scope: !273, file: !14, line: 32, type: !29)
!282 = !DILocalVariable(name: "acc", scope: !273, file: !14, line: 33, type: !8)
!283 = !DILocalVariable(name: "acc_len", scope: !273, file: !14, line: 34, type: !284)
!284 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!285 = !DILocation(line: 40, column: 2, scope: !273)
!286 = !DILocation(line: 40, column: 13, scope: !273)
!287 = !DILocation(line: 40, column: 16, scope: !273)
!288 = !DILocation(line: 43, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !273, file: !14, line: 40, column: 21)
!290 = !DILocalVariable(name: "b", scope: !289, file: !14, line: 41, type: !8)
!291 = !DILocation(line: 0, scope: !289)
!292 = !DILocation(line: 44, column: 13, scope: !289)
!293 = !DILocation(line: 44, column: 7, scope: !289)
!294 = !DILocation(line: 45, column: 11, scope: !289)
!295 = !DILocation(line: 46, column: 15, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !14, line: 46, column: 7)
!297 = !DILocation(line: 46, column: 7, scope: !289)
!298 = !DILocation(line: 47, column: 18, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !14, line: 46, column: 22)
!300 = !DILocation(line: 47, column: 14, scope: !299)
!301 = !DILocation(line: 47, column: 8, scope: !299)
!302 = !DILocation(line: 47, column: 4, scope: !299)
!303 = !DILocation(line: 47, column: 12, scope: !299)
!304 = !DILocation(line: 48, column: 12, scope: !299)
!305 = !DILocation(line: 49, column: 8, scope: !299)
!306 = !DILocation(line: 50, column: 3, scope: !299)
!307 = distinct !{!307, !285, !308, !95}
!308 = !DILocation(line: 51, column: 2, scope: !273)
!309 = !DILocation(line: 52, column: 14, scope: !310)
!310 = distinct !DILexicalBlock(scope: !273, file: !14, line: 52, column: 6)
!311 = !DILocation(line: 52, column: 6, scope: !273)
!312 = !DILocation(line: 53, column: 13, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !14, line: 52, column: 20)
!314 = !DILocation(line: 53, column: 7, scope: !313)
!315 = !DILocation(line: 53, column: 3, scope: !313)
!316 = !DILocation(line: 53, column: 11, scope: !313)
!317 = !DILocation(line: 54, column: 2, scope: !313)
!318 = !DILocation(line: 55, column: 29, scope: !273)
!319 = !DILocation(line: 55, column: 36, scope: !273)
!320 = !DILocation(line: 55, column: 9, scope: !273)
!321 = !DILocation(line: 55, column: 2, scope: !273)
!322 = !DILocation(line: 55, column: 7, scope: !273)
!323 = !DILocation(line: 56, column: 1, scope: !273)
!324 = distinct !DISubprogram(name: "br_i15_decode_reduce", scope: !16, file: !16, line: 29, type: !325, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !2)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !113, !69, !29, !117}
!327 = !DILocalVariable(name: "x", arg: 1, scope: !324, file: !16, line: 29, type: !113)
!328 = !DILocation(line: 0, scope: !324)
!329 = !DILocalVariable(name: "src", arg: 2, scope: !324, file: !16, line: 30, type: !69)
!330 = !DILocalVariable(name: "len", arg: 3, scope: !324, file: !16, line: 30, type: !29)
!331 = !DILocalVariable(name: "m", arg: 4, scope: !324, file: !16, line: 30, type: !117)
!332 = !DILocation(line: 41, column: 14, scope: !324)
!333 = !DILocalVariable(name: "m_ebitlen", scope: !324, file: !16, line: 32, type: !8)
!334 = !DILocation(line: 46, column: 16, scope: !335)
!335 = distinct !DILexicalBlock(scope: !324, file: !16, line: 46, column: 6)
!336 = !DILocation(line: 46, column: 6, scope: !324)
!337 = !DILocation(line: 47, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !16, line: 46, column: 22)
!339 = !DILocation(line: 47, column: 8, scope: !338)
!340 = !DILocation(line: 48, column: 3, scope: !338)
!341 = !DILocation(line: 54, column: 17, scope: !324)
!342 = !DILocation(line: 54, column: 2, scope: !324)
!343 = !DILocation(line: 60, column: 24, scope: !324)
!344 = !DILocalVariable(name: "m_rbitlen", scope: !324, file: !16, line: 32, type: !8)
!345 = !DILocation(line: 61, column: 25, scope: !324)
!346 = !DILocation(line: 61, column: 44, scope: !324)
!347 = !DILocation(line: 61, column: 31, scope: !324)
!348 = !DILocation(line: 61, column: 50, scope: !324)
!349 = !DILocation(line: 62, column: 21, scope: !324)
!350 = !DILocation(line: 62, column: 26, scope: !324)
!351 = !DILocation(line: 62, column: 10, scope: !324)
!352 = !DILocalVariable(name: "mblen", scope: !324, file: !16, line: 33, type: !29)
!353 = !DILocation(line: 63, column: 12, scope: !324)
!354 = !DILocalVariable(name: "k", scope: !324, file: !16, line: 33, type: !29)
!355 = !DILocation(line: 64, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !324, file: !16, line: 64, column: 6)
!357 = !DILocation(line: 64, column: 6, scope: !324)
!358 = !DILocation(line: 65, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !16, line: 64, column: 16)
!360 = !DILocation(line: 66, column: 10, scope: !359)
!361 = !DILocation(line: 66, column: 3, scope: !359)
!362 = !DILocation(line: 66, column: 8, scope: !359)
!363 = !DILocation(line: 67, column: 3, scope: !359)
!364 = !DILocalVariable(name: "buf", scope: !324, file: !16, line: 34, type: !78)
!365 = !DILocation(line: 70, column: 2, scope: !324)
!366 = !DILocation(line: 71, column: 9, scope: !324)
!367 = !DILocation(line: 71, column: 2, scope: !324)
!368 = !DILocation(line: 71, column: 7, scope: !324)
!369 = !DILocalVariable(name: "acc", scope: !324, file: !16, line: 35, type: !8)
!370 = !DILocalVariable(name: "acc_len", scope: !324, file: !16, line: 36, type: !284)
!371 = !DILocation(line: 78, column: 2, scope: !324)
!372 = !DILocation(line: 78, column: 11, scope: !324)
!373 = !DILocation(line: 81, column: 13, scope: !374)
!374 = distinct !DILexicalBlock(scope: !324, file: !16, line: 78, column: 18)
!375 = !DILocation(line: 81, column: 7, scope: !374)
!376 = !DILocalVariable(name: "v", scope: !374, file: !16, line: 79, type: !8)
!377 = !DILocation(line: 0, scope: !374)
!378 = !DILocation(line: 82, column: 14, scope: !374)
!379 = !DILocation(line: 82, column: 20, scope: !374)
!380 = !DILocation(line: 83, column: 11, scope: !374)
!381 = !DILocation(line: 84, column: 15, scope: !382)
!382 = distinct !DILexicalBlock(scope: !374, file: !16, line: 84, column: 7)
!383 = !DILocation(line: 84, column: 7, scope: !374)
!384 = !DILocation(line: 85, column: 43, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !16, line: 84, column: 22)
!386 = !DILocation(line: 85, column: 31, scope: !385)
!387 = !DILocation(line: 85, column: 27, scope: !385)
!388 = !DILocation(line: 85, column: 4, scope: !385)
!389 = !DILocation(line: 86, column: 12, scope: !385)
!390 = !DILocation(line: 87, column: 26, scope: !385)
!391 = !DILocation(line: 87, column: 11, scope: !385)
!392 = !DILocation(line: 87, column: 8, scope: !385)
!393 = !DILocation(line: 88, column: 3, scope: !385)
!394 = distinct !{!394, !371, !395, !95}
!395 = !DILocation(line: 89, column: 2, scope: !324)
!396 = !DILocation(line: 95, column: 14, scope: !397)
!397 = distinct !DILexicalBlock(scope: !324, file: !16, line: 95, column: 6)
!398 = !DILocation(line: 95, column: 6, scope: !324)
!399 = !DILocation(line: 96, column: 17, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !16, line: 95, column: 20)
!401 = !DILocation(line: 96, column: 22, scope: !400)
!402 = !DILocation(line: 96, column: 14, scope: !400)
!403 = !DILocation(line: 96, column: 35, scope: !400)
!404 = !DILocation(line: 97, column: 23, scope: !400)
!405 = !DILocation(line: 97, column: 3, scope: !400)
!406 = !DILocation(line: 98, column: 26, scope: !400)
!407 = !DILocation(line: 98, column: 3, scope: !400)
!408 = !DILocation(line: 99, column: 2, scope: !400)
!409 = !DILocation(line: 100, column: 1, scope: !324)
!410 = distinct !DISubprogram(name: "br_i15_zero", scope: !98, file: !98, line: 1537, type: !411, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !113, !114}
!413 = !DILocalVariable(name: "x", arg: 1, scope: !410, file: !98, line: 1537, type: !113)
!414 = !DILocation(line: 0, scope: !410)
!415 = !DILocalVariable(name: "bit_len", arg: 2, scope: !410, file: !98, line: 1537, type: !114)
!416 = !DILocation(line: 1539, column: 5, scope: !410)
!417 = !DILocation(line: 1539, column: 8, scope: !410)
!418 = !DILocation(line: 1540, column: 2, scope: !410)
!419 = !DILocation(line: 1540, column: 17, scope: !410)
!420 = !DILocation(line: 1540, column: 25, scope: !410)
!421 = !DILocation(line: 1540, column: 31, scope: !410)
!422 = !DILocation(line: 1540, column: 15, scope: !410)
!423 = !DILocation(line: 1540, column: 37, scope: !410)
!424 = !DILocation(line: 1541, column: 1, scope: !410)
!425 = distinct !DISubprogram(name: "br_i15_encode", scope: !18, file: !18, line: 29, type: !426, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !2)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !37, !29, !117}
!428 = !DILocalVariable(name: "dst", arg: 1, scope: !425, file: !18, line: 29, type: !37)
!429 = !DILocation(line: 0, scope: !425)
!430 = !DILocalVariable(name: "len", arg: 2, scope: !425, file: !18, line: 29, type: !29)
!431 = !DILocalVariable(name: "x", arg: 3, scope: !425, file: !18, line: 29, type: !117)
!432 = !DILocation(line: 36, column: 10, scope: !425)
!433 = !DILocation(line: 36, column: 15, scope: !425)
!434 = !DILocation(line: 36, column: 21, scope: !425)
!435 = !DILocation(line: 36, column: 9, scope: !425)
!436 = !DILocalVariable(name: "xlen", scope: !425, file: !18, line: 32, type: !29)
!437 = !DILocation(line: 37, column: 11, scope: !438)
!438 = distinct !DILexicalBlock(scope: !425, file: !18, line: 37, column: 6)
!439 = !DILocation(line: 37, column: 6, scope: !425)
!440 = !DILocation(line: 38, column: 3, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !18, line: 37, column: 17)
!442 = !DILocation(line: 39, column: 3, scope: !441)
!443 = !DILocalVariable(name: "u", scope: !425, file: !18, line: 32, type: !29)
!444 = !DILocalVariable(name: "acc", scope: !425, file: !18, line: 33, type: !8)
!445 = !DILocalVariable(name: "acc_len", scope: !425, file: !18, line: 34, type: !284)
!446 = !DILocalVariable(name: "buf", scope: !425, file: !18, line: 31, type: !56)
!447 = !DILocation(line: 45, column: 2, scope: !425)
!448 = !DILocation(line: 45, column: 13, scope: !425)
!449 = !DILocation(line: 45, column: 16, scope: !425)
!450 = !DILocation(line: 46, column: 15, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !18, line: 46, column: 7)
!452 = distinct !DILexicalBlock(scope: !425, file: !18, line: 45, column: 21)
!453 = !DILocation(line: 46, column: 7, scope: !452)
!454 = !DILocation(line: 47, column: 10, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !18, line: 47, column: 8)
!456 = distinct !DILexicalBlock(scope: !451, file: !18, line: 46, column: 20)
!457 = !DILocation(line: 47, column: 8, scope: !456)
!458 = !DILocation(line: 48, column: 26, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !18, line: 47, column: 19)
!460 = !DILocation(line: 48, column: 22, scope: !459)
!461 = !DILocation(line: 48, column: 12, scope: !459)
!462 = !DILocation(line: 48, column: 30, scope: !459)
!463 = !DILocation(line: 48, column: 9, scope: !459)
!464 = !DILocation(line: 49, column: 4, scope: !459)
!465 = !DILocation(line: 50, column: 12, scope: !456)
!466 = !DILocation(line: 51, column: 3, scope: !456)
!467 = !DILocation(line: 52, column: 14, scope: !452)
!468 = !DILocation(line: 52, column: 3, scope: !452)
!469 = !DILocation(line: 52, column: 12, scope: !452)
!470 = !DILocation(line: 53, column: 7, scope: !452)
!471 = !DILocation(line: 54, column: 11, scope: !452)
!472 = distinct !{!472, !447, !473, !95}
!473 = !DILocation(line: 55, column: 2, scope: !425)
!474 = !DILocation(line: 56, column: 1, scope: !425)
!475 = distinct !DISubprogram(name: "br_i15_from_monty", scope: !22, file: !22, line: 29, type: !476, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !2)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !113, !117, !114}
!478 = !DILocalVariable(name: "x", arg: 1, scope: !475, file: !22, line: 29, type: !113)
!479 = !DILocation(line: 0, scope: !475)
!480 = !DILocalVariable(name: "m", arg: 2, scope: !475, file: !22, line: 29, type: !117)
!481 = !DILocalVariable(name: "m0i", arg: 3, scope: !475, file: !22, line: 29, type: !114)
!482 = !DILocation(line: 33, column: 9, scope: !475)
!483 = !DILocation(line: 33, column: 14, scope: !475)
!484 = !DILocation(line: 33, column: 20, scope: !475)
!485 = !DILocation(line: 33, column: 8, scope: !475)
!486 = !DILocalVariable(name: "len", scope: !475, file: !22, line: 31, type: !29)
!487 = !DILocalVariable(name: "u", scope: !475, file: !22, line: 31, type: !29)
!488 = !DILocation(line: 34, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !475, file: !22, line: 34, column: 2)
!490 = !DILocation(line: 0, scope: !489)
!491 = !DILocation(line: 34, column: 16, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !22, line: 34, column: 2)
!493 = !DILocation(line: 34, column: 2, scope: !489)
!494 = !DILocation(line: 37, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !22, line: 34, column: 29)
!496 = !DILocation(line: 37, column: 24, scope: !495)
!497 = !DILocalVariable(name: "f", scope: !495, file: !22, line: 35, type: !8)
!498 = !DILocation(line: 0, scope: !495)
!499 = !DILocalVariable(name: "cc", scope: !495, file: !22, line: 35, type: !8)
!500 = !DILocalVariable(name: "v", scope: !475, file: !22, line: 31, type: !29)
!501 = !DILocation(line: 39, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !495, file: !22, line: 39, column: 3)
!503 = !DILocation(line: 0, scope: !502)
!504 = !DILocation(line: 39, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !22, line: 39, column: 3)
!506 = !DILocation(line: 39, column: 3, scope: !502)
!507 = !DILocation(line: 42, column: 22, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !22, line: 39, column: 30)
!509 = !DILocation(line: 42, column: 18, scope: !508)
!510 = !DILocation(line: 42, column: 8, scope: !508)
!511 = !DILocation(line: 42, column: 29, scope: !508)
!512 = !DILocation(line: 42, column: 27, scope: !508)
!513 = !DILocation(line: 42, column: 48, scope: !508)
!514 = !DILocalVariable(name: "z", scope: !508, file: !22, line: 40, type: !8)
!515 = !DILocation(line: 0, scope: !508)
!516 = !DILocation(line: 43, column: 11, scope: !508)
!517 = !DILocation(line: 44, column: 10, scope: !518)
!518 = distinct !DILexicalBlock(scope: !508, file: !22, line: 44, column: 8)
!519 = !DILocation(line: 44, column: 8, scope: !508)
!520 = !DILocation(line: 45, column: 14, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !22, line: 44, column: 16)
!522 = !DILocation(line: 45, column: 12, scope: !521)
!523 = !DILocation(line: 45, column: 5, scope: !521)
!524 = !DILocation(line: 45, column: 10, scope: !521)
!525 = !DILocation(line: 46, column: 4, scope: !521)
!526 = !DILocation(line: 47, column: 3, scope: !508)
!527 = !DILocation(line: 39, column: 26, scope: !505)
!528 = !DILocation(line: 39, column: 3, scope: !505)
!529 = distinct !{!529, !506, !530, !95}
!530 = !DILocation(line: 47, column: 3, scope: !502)
!531 = !DILocation(line: 48, column: 12, scope: !495)
!532 = !DILocation(line: 48, column: 3, scope: !495)
!533 = !DILocation(line: 48, column: 10, scope: !495)
!534 = !DILocation(line: 49, column: 2, scope: !495)
!535 = !DILocation(line: 34, column: 25, scope: !492)
!536 = !DILocation(line: 34, column: 2, scope: !492)
!537 = distinct !{!537, !493, !538, !95}
!538 = !DILocation(line: 49, column: 2, scope: !489)
!539 = !DILocation(line: 58, column: 23, scope: !475)
!540 = !DILocation(line: 58, column: 19, scope: !475)
!541 = !DILocation(line: 58, column: 2, scope: !475)
!542 = !DILocation(line: 59, column: 1, scope: !475)
!543 = distinct !DISubprogram(name: "NOT", scope: !98, file: !98, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !2)
!544 = !DILocalVariable(name: "ctl", arg: 1, scope: !543, file: !98, line: 761, type: !8)
!545 = !DILocation(line: 0, scope: !543)
!546 = !DILocation(line: 763, column: 13, scope: !543)
!547 = !DILocation(line: 763, column: 2, scope: !543)
!548 = distinct !DISubprogram(name: "br_i15_modpow_opt", scope: !24, file: !24, line: 29, type: !549, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !2)
!549 = !DISubroutineType(types: !550)
!550 = !{!8, !113, !78, !29, !117, !114, !113, !29}
!551 = !DILocalVariable(name: "x", arg: 1, scope: !548, file: !24, line: 29, type: !113)
!552 = !DILocation(line: 0, scope: !548)
!553 = !DILocalVariable(name: "e", arg: 2, scope: !548, file: !24, line: 30, type: !78)
!554 = !DILocalVariable(name: "elen", arg: 3, scope: !548, file: !24, line: 30, type: !29)
!555 = !DILocalVariable(name: "m", arg: 4, scope: !548, file: !24, line: 31, type: !117)
!556 = !DILocalVariable(name: "m0i", arg: 5, scope: !548, file: !24, line: 31, type: !114)
!557 = !DILocalVariable(name: "tmp", arg: 6, scope: !548, file: !24, line: 31, type: !113)
!558 = !DILocalVariable(name: "twlen", arg: 7, scope: !548, file: !24, line: 31, type: !29)
!559 = !DILocation(line: 42, column: 11, scope: !548)
!560 = !DILocation(line: 42, column: 16, scope: !548)
!561 = !DILocation(line: 42, column: 22, scope: !548)
!562 = !DILocation(line: 42, column: 10, scope: !548)
!563 = !DILocalVariable(name: "mwlen", scope: !548, file: !24, line: 33, type: !29)
!564 = !DILocation(line: 43, column: 15, scope: !548)
!565 = !DILocalVariable(name: "mlen", scope: !548, file: !24, line: 33, type: !29)
!566 = !DILocation(line: 44, column: 18, scope: !548)
!567 = !DILocation(line: 44, column: 8, scope: !548)
!568 = !DILocalVariable(name: "t1", scope: !548, file: !24, line: 34, type: !113)
!569 = !DILocation(line: 46, column: 11, scope: !548)
!570 = !DILocalVariable(name: "t2", scope: !548, file: !24, line: 34, type: !113)
!571 = !DILocation(line: 54, column: 21, scope: !572)
!572 = distinct !DILexicalBlock(scope: !548, file: !24, line: 54, column: 6)
!573 = !DILocation(line: 54, column: 12, scope: !572)
!574 = !DILocation(line: 54, column: 6, scope: !548)
!575 = !DILocation(line: 55, column: 3, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !24, line: 54, column: 28)
!577 = !DILocalVariable(name: "win_len", scope: !548, file: !24, line: 37, type: !284)
!578 = !DILocation(line: 57, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !548, file: !24, line: 57, column: 2)
!580 = !DILocation(line: 0, scope: !579)
!581 = !DILocation(line: 57, column: 28, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !24, line: 57, column: 2)
!583 = !DILocation(line: 57, column: 2, scope: !579)
!584 = !DILocation(line: 58, column: 21, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !24, line: 58, column: 7)
!586 = distinct !DILexicalBlock(scope: !582, file: !24, line: 57, column: 45)
!587 = !DILocation(line: 58, column: 33, scope: !585)
!588 = !DILocation(line: 58, column: 7, scope: !585)
!589 = !DILocation(line: 58, column: 38, scope: !585)
!590 = !DILocation(line: 58, column: 46, scope: !585)
!591 = !DILocation(line: 58, column: 7, scope: !586)
!592 = !DILocation(line: 59, column: 4, scope: !593)
!593 = distinct !DILexicalBlock(scope: !585, file: !24, line: 58, column: 56)
!594 = !DILocation(line: 61, column: 2, scope: !586)
!595 = !DILocation(line: 57, column: 41, scope: !582)
!596 = !DILocation(line: 57, column: 2, scope: !582)
!597 = distinct !{!597, !583, !598, !95}
!598 = !DILocation(line: 61, column: 2, scope: !579)
!599 = !DILocation(line: 66, column: 2, scope: !548)
!600 = !DILocation(line: 73, column: 14, scope: !601)
!601 = distinct !DILexicalBlock(scope: !548, file: !24, line: 73, column: 6)
!602 = !DILocation(line: 73, column: 6, scope: !548)
!603 = !DILocation(line: 74, column: 3, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !24, line: 73, column: 20)
!605 = !DILocation(line: 75, column: 2, scope: !604)
!606 = !DILocation(line: 76, column: 13, scope: !607)
!607 = distinct !DILexicalBlock(scope: !601, file: !24, line: 75, column: 9)
!608 = !DILocation(line: 76, column: 3, scope: !607)
!609 = !DILocation(line: 77, column: 13, scope: !607)
!610 = !DILocalVariable(name: "base", scope: !548, file: !24, line: 34, type: !113)
!611 = !DILocalVariable(name: "u", scope: !548, file: !24, line: 35, type: !29)
!612 = !DILocation(line: 78, column: 8, scope: !613)
!613 = distinct !DILexicalBlock(scope: !607, file: !24, line: 78, column: 3)
!614 = !DILocation(line: 0, scope: !607)
!615 = !DILocation(line: 0, scope: !613)
!616 = !DILocation(line: 78, column: 32, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !24, line: 78, column: 3)
!618 = !DILocation(line: 78, column: 19, scope: !617)
!619 = !DILocation(line: 78, column: 17, scope: !617)
!620 = !DILocation(line: 78, column: 3, scope: !613)
!621 = !DILocation(line: 79, column: 25, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !24, line: 78, column: 51)
!623 = !DILocation(line: 79, column: 4, scope: !622)
!624 = !DILocation(line: 80, column: 9, scope: !622)
!625 = !DILocation(line: 81, column: 3, scope: !622)
!626 = !DILocation(line: 78, column: 47, scope: !617)
!627 = !DILocation(line: 78, column: 3, scope: !617)
!628 = distinct !{!628, !620, !629, !95}
!629 = !DILocation(line: 81, column: 3, scope: !613)
!630 = !DILocation(line: 89, column: 17, scope: !548)
!631 = !DILocation(line: 89, column: 2, scope: !548)
!632 = !DILocation(line: 90, column: 5, scope: !548)
!633 = !DILocation(line: 90, column: 10, scope: !548)
!634 = !DILocation(line: 90, column: 16, scope: !548)
!635 = !DILocation(line: 90, column: 2, scope: !548)
!636 = !DILocation(line: 90, column: 22, scope: !548)
!637 = !DILocation(line: 91, column: 2, scope: !548)
!638 = !DILocalVariable(name: "acc", scope: !548, file: !24, line: 36, type: !8)
!639 = !DILocalVariable(name: "acc_len", scope: !548, file: !24, line: 37, type: !284)
!640 = !DILocation(line: 99, column: 2, scope: !548)
!641 = !DILocation(line: 99, column: 17, scope: !548)
!642 = !DILocation(line: 99, column: 21, scope: !548)
!643 = !DILocation(line: 99, column: 29, scope: !548)
!644 = !DILocalVariable(name: "k", scope: !645, file: !24, line: 100, type: !284)
!645 = distinct !DILexicalBlock(scope: !548, file: !24, line: 99, column: 34)
!646 = !DILocation(line: 0, scope: !645)
!647 = !DILocation(line: 107, column: 15, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !24, line: 107, column: 7)
!649 = !DILocation(line: 107, column: 7, scope: !645)
!650 = !DILocation(line: 108, column: 13, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !24, line: 108, column: 8)
!652 = distinct !DILexicalBlock(scope: !648, file: !24, line: 107, column: 26)
!653 = !DILocation(line: 108, column: 8, scope: !652)
!654 = !DILocation(line: 109, column: 16, scope: !655)
!655 = distinct !DILexicalBlock(scope: !651, file: !24, line: 108, column: 18)
!656 = !DILocation(line: 109, column: 27, scope: !655)
!657 = !DILocation(line: 109, column: 24, scope: !655)
!658 = !DILocation(line: 109, column: 22, scope: !655)
!659 = !DILocation(line: 110, column: 10, scope: !655)
!660 = !DILocation(line: 111, column: 13, scope: !655)
!661 = !DILocation(line: 112, column: 4, scope: !655)
!662 = !DILocation(line: 115, column: 3, scope: !652)
!663 = !DILocation(line: 106, column: 5, scope: !645)
!664 = !DILocation(line: 116, column: 27, scope: !645)
!665 = !DILocation(line: 116, column: 15, scope: !645)
!666 = !DILocation(line: 116, column: 49, scope: !645)
!667 = !DILocation(line: 116, column: 55, scope: !645)
!668 = !DILocation(line: 116, column: 33, scope: !645)
!669 = !DILocalVariable(name: "bits", scope: !645, file: !24, line: 101, type: !8)
!670 = !DILocation(line: 117, column: 11, scope: !645)
!671 = !DILocalVariable(name: "i", scope: !645, file: !24, line: 100, type: !284)
!672 = !DILocation(line: 122, column: 8, scope: !673)
!673 = distinct !DILexicalBlock(scope: !645, file: !24, line: 122, column: 3)
!674 = !DILocation(line: 0, scope: !673)
!675 = !DILocation(line: 122, column: 17, scope: !676)
!676 = distinct !DILexicalBlock(scope: !673, file: !24, line: 122, column: 3)
!677 = !DILocation(line: 122, column: 3, scope: !673)
!678 = !DILocation(line: 123, column: 4, scope: !679)
!679 = distinct !DILexicalBlock(scope: !676, file: !24, line: 122, column: 28)
!680 = !DILocation(line: 124, column: 4, scope: !679)
!681 = !DILocation(line: 125, column: 3, scope: !679)
!682 = !DILocation(line: 122, column: 24, scope: !676)
!683 = !DILocation(line: 122, column: 3, scope: !676)
!684 = distinct !{!684, !677, !685, !95}
!685 = !DILocation(line: 125, column: 3, scope: !673)
!686 = !DILocation(line: 133, column: 15, scope: !687)
!687 = distinct !DILexicalBlock(scope: !645, file: !24, line: 133, column: 7)
!688 = !DILocation(line: 133, column: 7, scope: !645)
!689 = !DILocation(line: 134, column: 20, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !24, line: 133, column: 20)
!691 = !DILocation(line: 134, column: 4, scope: !690)
!692 = !DILocation(line: 135, column: 14, scope: !690)
!693 = !DILocation(line: 136, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !24, line: 136, column: 4)
!695 = !DILocation(line: 0, scope: !690)
!696 = !DILocation(line: 0, scope: !694)
!697 = !DILocation(line: 136, column: 33, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !24, line: 136, column: 4)
!699 = !DILocation(line: 136, column: 20, scope: !698)
!700 = !DILocation(line: 136, column: 18, scope: !698)
!701 = !DILocation(line: 136, column: 4, scope: !694)
!702 = !DILocation(line: 139, column: 16, scope: !703)
!703 = distinct !DILexicalBlock(scope: !698, file: !24, line: 136, column: 46)
!704 = !DILocation(line: 139, column: 13, scope: !703)
!705 = !DILocation(line: 139, column: 12, scope: !703)
!706 = !DILocalVariable(name: "mask", scope: !703, file: !24, line: 137, type: !8)
!707 = !DILocation(line: 0, scope: !703)
!708 = !DILocalVariable(name: "v", scope: !548, file: !24, line: 35, type: !29)
!709 = !DILocation(line: 140, column: 10, scope: !710)
!710 = distinct !DILexicalBlock(scope: !703, file: !24, line: 140, column: 5)
!711 = !DILocation(line: 0, scope: !710)
!712 = !DILocation(line: 140, column: 19, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !24, line: 140, column: 5)
!714 = !DILocation(line: 140, column: 5, scope: !710)
!715 = !DILocation(line: 141, column: 22, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !24, line: 140, column: 34)
!717 = !DILocation(line: 141, column: 20, scope: !716)
!718 = !DILocation(line: 141, column: 6, scope: !716)
!719 = !DILocation(line: 141, column: 12, scope: !716)
!720 = !DILocation(line: 142, column: 5, scope: !716)
!721 = !DILocation(line: 140, column: 30, scope: !713)
!722 = !DILocation(line: 140, column: 5, scope: !713)
!723 = distinct !{!723, !714, !724, !95}
!724 = !DILocation(line: 142, column: 5, scope: !710)
!725 = !DILocation(line: 143, column: 10, scope: !703)
!726 = !DILocation(line: 144, column: 4, scope: !703)
!727 = !DILocation(line: 136, column: 42, scope: !698)
!728 = !DILocation(line: 136, column: 4, scope: !698)
!729 = distinct !{!729, !701, !730, !95}
!730 = !DILocation(line: 144, column: 4, scope: !694)
!731 = !DILocation(line: 145, column: 3, scope: !690)
!732 = !DILocation(line: 151, column: 3, scope: !645)
!733 = !DILocation(line: 152, column: 9, scope: !645)
!734 = !DILocation(line: 152, column: 23, scope: !645)
!735 = !DILocation(line: 152, column: 26, scope: !645)
!736 = !DILocation(line: 152, column: 3, scope: !645)
!737 = distinct !{!737, !640, !738, !95}
!738 = !DILocation(line: 153, column: 2, scope: !548)
!739 = !DILocation(line: 158, column: 2, scope: !548)
!740 = !DILocation(line: 159, column: 2, scope: !548)
!741 = !DILocation(line: 160, column: 1, scope: !548)
!742 = distinct !DISubprogram(name: "br_i15_zero", scope: !98, file: !98, line: 1537, type: !411, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!743 = !DILocalVariable(name: "x", arg: 1, scope: !742, file: !98, line: 1537, type: !113)
!744 = !DILocation(line: 0, scope: !742)
!745 = !DILocalVariable(name: "bit_len", arg: 2, scope: !742, file: !98, line: 1537, type: !114)
!746 = !DILocation(line: 1539, column: 5, scope: !742)
!747 = !DILocation(line: 1539, column: 8, scope: !742)
!748 = !DILocation(line: 1540, column: 2, scope: !742)
!749 = !DILocation(line: 1540, column: 17, scope: !742)
!750 = !DILocation(line: 1540, column: 25, scope: !742)
!751 = !DILocation(line: 1540, column: 31, scope: !742)
!752 = !DILocation(line: 1540, column: 15, scope: !742)
!753 = !DILocation(line: 1540, column: 37, scope: !742)
!754 = !DILocation(line: 1541, column: 1, scope: !742)
!755 = distinct !DISubprogram(name: "EQ", scope: !98, file: !98, line: 779, type: !193, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!756 = !DILocalVariable(name: "x", arg: 1, scope: !755, file: !98, line: 779, type: !8)
!757 = !DILocation(line: 0, scope: !755)
!758 = !DILocalVariable(name: "y", arg: 2, scope: !755, file: !98, line: 779, type: !8)
!759 = !DILocation(line: 783, column: 8, scope: !755)
!760 = !DILocalVariable(name: "q", scope: !755, file: !98, line: 781, type: !8)
!761 = !DILocation(line: 784, column: 18, scope: !755)
!762 = !DILocation(line: 784, column: 16, scope: !755)
!763 = !DILocation(line: 784, column: 22, scope: !755)
!764 = !DILocation(line: 784, column: 9, scope: !755)
!765 = !DILocation(line: 784, column: 2, scope: !755)
!766 = distinct !DISubprogram(name: "NEQ", scope: !98, file: !98, line: 791, type: !193, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!767 = !DILocalVariable(name: "x", arg: 1, scope: !766, file: !98, line: 791, type: !8)
!768 = !DILocation(line: 0, scope: !766)
!769 = !DILocalVariable(name: "y", arg: 2, scope: !766, file: !98, line: 791, type: !8)
!770 = !DILocation(line: 795, column: 8, scope: !766)
!771 = !DILocalVariable(name: "q", scope: !766, file: !98, line: 793, type: !8)
!772 = !DILocation(line: 796, column: 14, scope: !766)
!773 = !DILocation(line: 796, column: 12, scope: !766)
!774 = !DILocation(line: 796, column: 18, scope: !766)
!775 = !DILocation(line: 796, column: 2, scope: !766)
!776 = distinct !DISubprogram(name: "NOT", scope: !98, file: !98, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!777 = !DILocalVariable(name: "ctl", arg: 1, scope: !776, file: !98, line: 761, type: !8)
!778 = !DILocation(line: 0, scope: !776)
!779 = !DILocation(line: 763, column: 13, scope: !776)
!780 = !DILocation(line: 763, column: 2, scope: !776)
!781 = distinct !DISubprogram(name: "br_i15_montymul", scope: !27, file: !27, line: 29, type: !782, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !2)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !113, !117, !117, !117, !114}
!784 = !DILocalVariable(name: "d", arg: 1, scope: !781, file: !27, line: 29, type: !113)
!785 = !DILocation(line: 0, scope: !781)
!786 = !DILocalVariable(name: "x", arg: 2, scope: !781, file: !27, line: 29, type: !117)
!787 = !DILocalVariable(name: "y", arg: 3, scope: !781, file: !27, line: 29, type: !117)
!788 = !DILocalVariable(name: "m", arg: 4, scope: !781, file: !27, line: 30, type: !117)
!789 = !DILocalVariable(name: "m0i", arg: 5, scope: !781, file: !27, line: 30, type: !114)
!790 = !DILocation(line: 35, column: 9, scope: !781)
!791 = !DILocation(line: 35, column: 14, scope: !781)
!792 = !DILocation(line: 35, column: 20, scope: !781)
!793 = !DILocation(line: 35, column: 8, scope: !781)
!794 = !DILocalVariable(name: "len", scope: !781, file: !27, line: 32, type: !29)
!795 = !DILocation(line: 36, column: 13, scope: !781)
!796 = !DILocalVariable(name: "len4", scope: !781, file: !27, line: 32, type: !29)
!797 = !DILocation(line: 37, column: 17, scope: !781)
!798 = !DILocation(line: 37, column: 2, scope: !781)
!799 = !DILocalVariable(name: "dh", scope: !781, file: !27, line: 33, type: !8)
!800 = !DILocalVariable(name: "u", scope: !781, file: !27, line: 32, type: !29)
!801 = !DILocation(line: 39, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !781, file: !27, line: 39, column: 2)
!803 = !DILocation(line: 0, scope: !802)
!804 = !DILocation(line: 39, column: 16, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !27, line: 39, column: 2)
!806 = !DILocation(line: 39, column: 2, scope: !802)
!807 = !DILocation(line: 42, column: 12, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !27, line: 39, column: 29)
!809 = !DILocation(line: 42, column: 8, scope: !808)
!810 = !DILocalVariable(name: "xu", scope: !808, file: !27, line: 40, type: !8)
!811 = !DILocation(line: 0, scope: !808)
!812 = !DILocation(line: 43, column: 7, scope: !808)
!813 = !DILocation(line: 44, column: 4, scope: !808)
!814 = !DILocalVariable(name: "f", scope: !808, file: !27, line: 40, type: !8)
!815 = !DILocalVariable(name: "r", scope: !808, file: !27, line: 40, type: !8)
!816 = !DILocalVariable(name: "v", scope: !781, file: !27, line: 32, type: !29)
!817 = !DILocation(line: 139, column: 8, scope: !818)
!818 = distinct !DILexicalBlock(scope: !808, file: !27, line: 139, column: 3)
!819 = !DILocation(line: 0, scope: !818)
!820 = !DILocation(line: 139, column: 17, scope: !821)
!821 = distinct !DILexicalBlock(scope: !818, file: !27, line: 139, column: 3)
!822 = !DILocation(line: 139, column: 3, scope: !818)
!823 = !DILocation(line: 142, column: 12, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !27, line: 139, column: 33)
!825 = !DILocation(line: 142, column: 8, scope: !824)
!826 = !DILocation(line: 142, column: 19, scope: !824)
!827 = !DILocation(line: 142, column: 17, scope: !824)
!828 = !DILocation(line: 143, column: 7, scope: !824)
!829 = !DILocation(line: 143, column: 5, scope: !824)
!830 = !DILocation(line: 143, column: 26, scope: !824)
!831 = !DILocalVariable(name: "z", scope: !824, file: !27, line: 140, type: !8)
!832 = !DILocation(line: 0, scope: !824)
!833 = !DILocation(line: 144, column: 10, scope: !824)
!834 = !DILocation(line: 145, column: 17, scope: !824)
!835 = !DILocation(line: 145, column: 15, scope: !824)
!836 = !DILocation(line: 145, column: 8, scope: !824)
!837 = !DILocation(line: 145, column: 4, scope: !824)
!838 = !DILocation(line: 145, column: 13, scope: !824)
!839 = !DILocation(line: 146, column: 12, scope: !824)
!840 = !DILocation(line: 146, column: 8, scope: !824)
!841 = !DILocation(line: 146, column: 19, scope: !824)
!842 = !DILocation(line: 146, column: 17, scope: !824)
!843 = !DILocation(line: 147, column: 7, scope: !824)
!844 = !DILocation(line: 147, column: 5, scope: !824)
!845 = !DILocation(line: 147, column: 26, scope: !824)
!846 = !DILocation(line: 148, column: 10, scope: !824)
!847 = !DILocation(line: 149, column: 17, scope: !824)
!848 = !DILocation(line: 149, column: 15, scope: !824)
!849 = !DILocation(line: 149, column: 8, scope: !824)
!850 = !DILocation(line: 149, column: 4, scope: !824)
!851 = !DILocation(line: 149, column: 13, scope: !824)
!852 = !DILocation(line: 150, column: 12, scope: !824)
!853 = !DILocation(line: 150, column: 8, scope: !824)
!854 = !DILocation(line: 150, column: 19, scope: !824)
!855 = !DILocation(line: 150, column: 17, scope: !824)
!856 = !DILocation(line: 151, column: 7, scope: !824)
!857 = !DILocation(line: 151, column: 5, scope: !824)
!858 = !DILocation(line: 151, column: 26, scope: !824)
!859 = !DILocation(line: 152, column: 10, scope: !824)
!860 = !DILocation(line: 153, column: 17, scope: !824)
!861 = !DILocation(line: 153, column: 15, scope: !824)
!862 = !DILocation(line: 153, column: 8, scope: !824)
!863 = !DILocation(line: 153, column: 4, scope: !824)
!864 = !DILocation(line: 153, column: 13, scope: !824)
!865 = !DILocation(line: 154, column: 12, scope: !824)
!866 = !DILocation(line: 154, column: 8, scope: !824)
!867 = !DILocation(line: 154, column: 19, scope: !824)
!868 = !DILocation(line: 154, column: 17, scope: !824)
!869 = !DILocation(line: 155, column: 7, scope: !824)
!870 = !DILocation(line: 155, column: 5, scope: !824)
!871 = !DILocation(line: 155, column: 26, scope: !824)
!872 = !DILocation(line: 156, column: 10, scope: !824)
!873 = !DILocation(line: 157, column: 17, scope: !824)
!874 = !DILocation(line: 157, column: 15, scope: !824)
!875 = !DILocation(line: 157, column: 8, scope: !824)
!876 = !DILocation(line: 157, column: 4, scope: !824)
!877 = !DILocation(line: 157, column: 13, scope: !824)
!878 = !DILocation(line: 158, column: 3, scope: !824)
!879 = !DILocation(line: 139, column: 27, scope: !821)
!880 = !DILocation(line: 139, column: 3, scope: !821)
!881 = distinct !{!881, !822, !882, !95}
!882 = !DILocation(line: 158, column: 3, scope: !818)
!883 = !DILocation(line: 160, column: 3, scope: !808)
!884 = !DILocation(line: 160, column: 12, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !27, line: 160, column: 3)
!886 = distinct !DILexicalBlock(scope: !808, file: !27, line: 160, column: 3)
!887 = !DILocation(line: 160, column: 3, scope: !886)
!888 = !DILocation(line: 163, column: 12, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !27, line: 160, column: 25)
!890 = !DILocation(line: 163, column: 8, scope: !889)
!891 = !DILocation(line: 163, column: 19, scope: !889)
!892 = !DILocation(line: 163, column: 17, scope: !889)
!893 = !DILocation(line: 164, column: 7, scope: !889)
!894 = !DILocation(line: 164, column: 5, scope: !889)
!895 = !DILocation(line: 164, column: 26, scope: !889)
!896 = !DILocalVariable(name: "z", scope: !889, file: !27, line: 161, type: !8)
!897 = !DILocation(line: 0, scope: !889)
!898 = !DILocation(line: 165, column: 10, scope: !889)
!899 = !DILocation(line: 166, column: 17, scope: !889)
!900 = !DILocation(line: 166, column: 15, scope: !889)
!901 = !DILocation(line: 166, column: 8, scope: !889)
!902 = !DILocation(line: 166, column: 4, scope: !889)
!903 = !DILocation(line: 166, column: 13, scope: !889)
!904 = !DILocation(line: 167, column: 3, scope: !889)
!905 = !DILocation(line: 160, column: 21, scope: !885)
!906 = !DILocation(line: 160, column: 3, scope: !885)
!907 = distinct !{!907, !887, !908, !95}
!908 = !DILocation(line: 167, column: 3, scope: !886)
!909 = !DILocation(line: 169, column: 11, scope: !808)
!910 = !DILocalVariable(name: "zh", scope: !808, file: !27, line: 40, type: !8)
!911 = !DILocation(line: 170, column: 15, scope: !808)
!912 = !DILocation(line: 170, column: 12, scope: !808)
!913 = !DILocation(line: 170, column: 3, scope: !808)
!914 = !DILocation(line: 170, column: 10, scope: !808)
!915 = !DILocation(line: 171, column: 11, scope: !808)
!916 = !DILocation(line: 172, column: 2, scope: !808)
!917 = !DILocation(line: 39, column: 25, scope: !805)
!918 = !DILocation(line: 39, column: 2, scope: !805)
!919 = distinct !{!919, !806, !920, !95}
!920 = !DILocation(line: 172, column: 2, scope: !802)
!921 = !DILocation(line: 177, column: 9, scope: !781)
!922 = !DILocation(line: 177, column: 2, scope: !781)
!923 = !DILocation(line: 177, column: 7, scope: !781)
!924 = !DILocation(line: 183, column: 19, scope: !781)
!925 = !DILocation(line: 183, column: 36, scope: !781)
!926 = !DILocation(line: 183, column: 32, scope: !781)
!927 = !DILocation(line: 183, column: 30, scope: !781)
!928 = !DILocation(line: 183, column: 2, scope: !781)
!929 = !DILocation(line: 184, column: 1, scope: !781)
!930 = distinct !DISubprogram(name: "br_i15_zero", scope: !98, file: !98, line: 1537, type: !411, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !2)
!931 = !DILocalVariable(name: "x", arg: 1, scope: !930, file: !98, line: 1537, type: !113)
!932 = !DILocation(line: 0, scope: !930)
!933 = !DILocalVariable(name: "bit_len", arg: 2, scope: !930, file: !98, line: 1537, type: !114)
!934 = !DILocation(line: 1539, column: 5, scope: !930)
!935 = !DILocation(line: 1539, column: 8, scope: !930)
!936 = !DILocation(line: 1540, column: 2, scope: !930)
!937 = !DILocation(line: 1540, column: 17, scope: !930)
!938 = !DILocation(line: 1540, column: 25, scope: !930)
!939 = !DILocation(line: 1540, column: 31, scope: !930)
!940 = !DILocation(line: 1540, column: 15, scope: !930)
!941 = !DILocation(line: 1540, column: 37, scope: !930)
!942 = !DILocation(line: 1541, column: 1, scope: !930)
!943 = distinct !DISubprogram(name: "NEQ", scope: !98, file: !98, line: 791, type: !193, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !2)
!944 = !DILocalVariable(name: "x", arg: 1, scope: !943, file: !98, line: 791, type: !8)
!945 = !DILocation(line: 0, scope: !943)
!946 = !DILocalVariable(name: "y", arg: 2, scope: !943, file: !98, line: 791, type: !8)
!947 = !DILocation(line: 795, column: 8, scope: !943)
!948 = !DILocalVariable(name: "q", scope: !943, file: !98, line: 793, type: !8)
!949 = !DILocation(line: 796, column: 14, scope: !943)
!950 = !DILocation(line: 796, column: 12, scope: !943)
!951 = !DILocation(line: 796, column: 18, scope: !943)
!952 = !DILocation(line: 796, column: 2, scope: !943)
!953 = distinct !DISubprogram(name: "NOT", scope: !98, file: !98, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !2)
!954 = !DILocalVariable(name: "ctl", arg: 1, scope: !953, file: !98, line: 761, type: !8)
!955 = !DILocation(line: 0, scope: !953)
!956 = !DILocation(line: 763, column: 13, scope: !953)
!957 = !DILocation(line: 763, column: 2, scope: !953)
!958 = distinct !DISubprogram(name: "br_i15_mulacc", scope: !33, file: !33, line: 29, type: !959, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !2)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !113, !117, !117}
!961 = !DILocalVariable(name: "d", arg: 1, scope: !958, file: !33, line: 29, type: !113)
!962 = !DILocation(line: 0, scope: !958)
!963 = !DILocalVariable(name: "a", arg: 2, scope: !958, file: !33, line: 29, type: !117)
!964 = !DILocalVariable(name: "b", arg: 3, scope: !958, file: !33, line: 29, type: !117)
!965 = !DILocation(line: 35, column: 10, scope: !958)
!966 = !DILocation(line: 35, column: 15, scope: !958)
!967 = !DILocation(line: 35, column: 21, scope: !958)
!968 = !DILocation(line: 35, column: 9, scope: !958)
!969 = !DILocalVariable(name: "alen", scope: !958, file: !33, line: 31, type: !29)
!970 = !DILocation(line: 36, column: 10, scope: !958)
!971 = !DILocation(line: 36, column: 15, scope: !958)
!972 = !DILocation(line: 36, column: 21, scope: !958)
!973 = !DILocation(line: 36, column: 9, scope: !958)
!974 = !DILocalVariable(name: "blen", scope: !958, file: !33, line: 31, type: !29)
!975 = !DILocation(line: 37, column: 5, scope: !976)
!976 = distinct !DILexicalBlock(scope: !958, file: !33, line: 37, column: 5)
!977 = !DILocation(line: 37, column: 5, scope: !958)
!978 = !DILocation(line: 45, column: 8, scope: !976)
!979 = !DILocation(line: 45, column: 13, scope: !976)
!980 = !DILocation(line: 45, column: 22, scope: !976)
!981 = !DILocation(line: 45, column: 27, scope: !976)
!982 = !DILocation(line: 45, column: 19, scope: !976)
!983 = !DILocalVariable(name: "dl", scope: !958, file: !33, line: 32, type: !12)
!984 = !DILocation(line: 45, column: 2, scope: !976)
!985 = !DILocation(line: 46, column: 8, scope: !958)
!986 = !DILocation(line: 46, column: 13, scope: !958)
!987 = !DILocation(line: 46, column: 22, scope: !958)
!988 = !DILocation(line: 46, column: 27, scope: !958)
!989 = !DILocation(line: 46, column: 19, scope: !958)
!990 = !DILocalVariable(name: "dh", scope: !958, file: !33, line: 32, type: !12)
!991 = !DILocation(line: 47, column: 13, scope: !958)
!992 = !DILocation(line: 47, column: 19, scope: !958)
!993 = !DILocation(line: 47, column: 42, scope: !958)
!994 = !DILocation(line: 47, column: 27, scope: !958)
!995 = !DILocation(line: 47, column: 48, scope: !958)
!996 = !DILocation(line: 47, column: 24, scope: !958)
!997 = !DILocation(line: 47, column: 9, scope: !958)
!998 = !DILocation(line: 47, column: 2, scope: !958)
!999 = !DILocation(line: 47, column: 7, scope: !958)
!1000 = !DILocalVariable(name: "u", scope: !958, file: !33, line: 31, type: !29)
!1001 = !DILocation(line: 49, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !958, file: !33, line: 49, column: 2)
!1003 = !DILocation(line: 0, scope: !1002)
!1004 = !DILocation(line: 49, column: 16, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !33, line: 49, column: 2)
!1006 = !DILocation(line: 49, column: 2, scope: !1002)
!1007 = !DILocation(line: 54, column: 11, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !33, line: 49, column: 30)
!1009 = !DILocation(line: 54, column: 7, scope: !1008)
!1010 = !DILocalVariable(name: "f", scope: !1008, file: !33, line: 50, type: !8)
!1011 = !DILocation(line: 0, scope: !1008)
!1012 = !DILocalVariable(name: "cc", scope: !1008, file: !33, line: 52, type: !8)
!1013 = !DILocalVariable(name: "v", scope: !1008, file: !33, line: 51, type: !29)
!1014 = !DILocation(line: 56, column: 8, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !33, line: 56, column: 3)
!1016 = !DILocation(line: 0, scope: !1015)
!1017 = !DILocation(line: 56, column: 17, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !33, line: 56, column: 3)
!1019 = !DILocation(line: 56, column: 3, scope: !1015)
!1020 = !DILocation(line: 59, column: 22, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !33, line: 56, column: 31)
!1022 = !DILocation(line: 59, column: 26, scope: !1021)
!1023 = !DILocation(line: 59, column: 18, scope: !1021)
!1024 = !DILocation(line: 59, column: 8, scope: !1021)
!1025 = !DILocation(line: 59, column: 33, scope: !1021)
!1026 = !DILocation(line: 59, column: 31, scope: !1021)
!1027 = !DILocation(line: 59, column: 52, scope: !1021)
!1028 = !DILocalVariable(name: "z", scope: !1021, file: !33, line: 57, type: !8)
!1029 = !DILocation(line: 0, scope: !1021)
!1030 = !DILocation(line: 60, column: 11, scope: !1021)
!1031 = !DILocation(line: 61, column: 21, scope: !1021)
!1032 = !DILocation(line: 61, column: 19, scope: !1021)
!1033 = !DILocation(line: 61, column: 8, scope: !1021)
!1034 = !DILocation(line: 61, column: 12, scope: !1021)
!1035 = !DILocation(line: 61, column: 4, scope: !1021)
!1036 = !DILocation(line: 61, column: 17, scope: !1021)
!1037 = !DILocation(line: 62, column: 3, scope: !1021)
!1038 = !DILocation(line: 56, column: 27, scope: !1018)
!1039 = !DILocation(line: 56, column: 3, scope: !1018)
!1040 = distinct !{!1040, !1019, !1041, !95}
!1041 = !DILocation(line: 62, column: 3, scope: !1015)
!1042 = !DILocation(line: 63, column: 21, scope: !1008)
!1043 = !DILocation(line: 63, column: 7, scope: !1008)
!1044 = !DILocation(line: 63, column: 11, scope: !1008)
!1045 = !DILocation(line: 63, column: 3, scope: !1008)
!1046 = !DILocation(line: 63, column: 19, scope: !1008)
!1047 = !DILocation(line: 64, column: 2, scope: !1008)
!1048 = !DILocation(line: 49, column: 26, scope: !1005)
!1049 = !DILocation(line: 49, column: 2, scope: !1005)
!1050 = distinct !{!1050, !1006, !1051, !95}
!1051 = !DILocation(line: 64, column: 2, scope: !1002)
!1052 = !DILocation(line: 65, column: 1, scope: !958)
!1053 = distinct !DISubprogram(name: "br_i15_muladd_small", scope: !35, file: !35, line: 55, type: !1054, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !2)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !113, !114, !117}
!1056 = !DILocalVariable(name: "x", arg: 1, scope: !1053, file: !35, line: 55, type: !113)
!1057 = !DILocation(line: 0, scope: !1053)
!1058 = !DILocalVariable(name: "z", arg: 2, scope: !1053, file: !35, line: 55, type: !114)
!1059 = !DILocalVariable(name: "m", arg: 3, scope: !1053, file: !35, line: 55, type: !117)
!1060 = !DILocation(line: 69, column: 13, scope: !1053)
!1061 = !DILocalVariable(name: "m_bitlen", scope: !1053, file: !35, line: 61, type: !12)
!1062 = !DILocation(line: 70, column: 15, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1053, file: !35, line: 70, column: 6)
!1064 = !DILocation(line: 70, column: 6, scope: !1053)
!1065 = !DILocation(line: 71, column: 3, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !35, line: 70, column: 21)
!1067 = !DILocation(line: 73, column: 15, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1053, file: !35, line: 73, column: 6)
!1069 = !DILocation(line: 73, column: 6, scope: !1053)
!1070 = !DILocalVariable(name: "rem", scope: !1071, file: !35, line: 74, type: !8)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !35, line: 73, column: 22)
!1072 = !DILocation(line: 74, column: 12, scope: !1071)
!1073 = !DILocation(line: 76, column: 23, scope: !1071)
!1074 = !DILocation(line: 76, column: 13, scope: !1071)
!1075 = !DILocation(line: 76, column: 28, scope: !1071)
!1076 = !DILocation(line: 76, column: 37, scope: !1071)
!1077 = !DILocation(line: 76, column: 35, scope: !1071)
!1078 = !DILocation(line: 76, column: 40, scope: !1071)
!1079 = !DILocation(line: 76, column: 3, scope: !1071)
!1080 = !DILocation(line: 77, column: 10, scope: !1071)
!1081 = !DILocation(line: 77, column: 3, scope: !1071)
!1082 = !DILocation(line: 77, column: 8, scope: !1071)
!1083 = !DILocation(line: 78, column: 3, scope: !1071)
!1084 = !DILocation(line: 80, column: 19, scope: !1053)
!1085 = !DILocation(line: 80, column: 25, scope: !1053)
!1086 = !DILocation(line: 80, column: 9, scope: !1053)
!1087 = !DILocalVariable(name: "mlen", scope: !1053, file: !35, line: 62, type: !29)
!1088 = !DILocation(line: 81, column: 18, scope: !1053)
!1089 = !DILocalVariable(name: "mblr", scope: !1053, file: !35, line: 61, type: !12)
!1090 = !DILocation(line: 109, column: 7, scope: !1053)
!1091 = !DILocalVariable(name: "hi", scope: !1053, file: !35, line: 63, type: !8)
!1092 = !DILocation(line: 110, column: 11, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1053, file: !35, line: 110, column: 6)
!1094 = !DILocation(line: 110, column: 6, scope: !1053)
!1095 = !DILocation(line: 111, column: 8, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !35, line: 110, column: 17)
!1097 = !DILocalVariable(name: "a0", scope: !1053, file: !35, line: 63, type: !8)
!1098 = !DILocation(line: 112, column: 13, scope: !1096)
!1099 = !DILocation(line: 112, column: 3, scope: !1096)
!1100 = !DILocation(line: 112, column: 20, scope: !1096)
!1101 = !DILocation(line: 112, column: 31, scope: !1096)
!1102 = !DILocation(line: 112, column: 36, scope: !1096)
!1103 = !DILocation(line: 113, column: 3, scope: !1096)
!1104 = !DILocation(line: 113, column: 8, scope: !1096)
!1105 = !DILocation(line: 114, column: 11, scope: !1096)
!1106 = !DILocation(line: 114, column: 20, scope: !1096)
!1107 = !DILocation(line: 114, column: 18, scope: !1096)
!1108 = !DILocalVariable(name: "a", scope: !1053, file: !35, line: 63, type: !8)
!1109 = !DILocation(line: 115, column: 7, scope: !1096)
!1110 = !DILocalVariable(name: "b", scope: !1053, file: !35, line: 63, type: !8)
!1111 = !DILocation(line: 116, column: 2, scope: !1096)
!1112 = !DILocation(line: 117, column: 9, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1093, file: !35, line: 116, column: 9)
!1114 = !DILocation(line: 117, column: 24, scope: !1113)
!1115 = !DILocation(line: 117, column: 17, scope: !1113)
!1116 = !DILocation(line: 117, column: 43, scope: !1113)
!1117 = !DILocation(line: 117, column: 36, scope: !1113)
!1118 = !DILocation(line: 117, column: 48, scope: !1113)
!1119 = !DILocation(line: 117, column: 33, scope: !1113)
!1120 = !DILocation(line: 118, column: 13, scope: !1113)
!1121 = !DILocation(line: 118, column: 3, scope: !1113)
!1122 = !DILocation(line: 118, column: 20, scope: !1113)
!1123 = !DILocation(line: 118, column: 31, scope: !1113)
!1124 = !DILocation(line: 118, column: 36, scope: !1113)
!1125 = !DILocation(line: 119, column: 3, scope: !1113)
!1126 = !DILocation(line: 119, column: 8, scope: !1113)
!1127 = !DILocation(line: 120, column: 11, scope: !1113)
!1128 = !DILocation(line: 120, column: 23, scope: !1113)
!1129 = !DILocation(line: 120, column: 38, scope: !1113)
!1130 = !DILocation(line: 120, column: 31, scope: !1113)
!1131 = !DILocation(line: 121, column: 14, scope: !1113)
!1132 = !DILocation(line: 121, column: 7, scope: !1113)
!1133 = !DILocation(line: 121, column: 19, scope: !1113)
!1134 = !DILocation(line: 121, column: 4, scope: !1113)
!1135 = !DILocation(line: 121, column: 29, scope: !1113)
!1136 = !DILocation(line: 120, column: 18, scope: !1113)
!1137 = !DILocation(line: 122, column: 8, scope: !1113)
!1138 = !DILocation(line: 122, column: 23, scope: !1113)
!1139 = !DILocation(line: 122, column: 16, scope: !1113)
!1140 = !DILocation(line: 122, column: 42, scope: !1113)
!1141 = !DILocation(line: 122, column: 35, scope: !1113)
!1142 = !DILocation(line: 122, column: 47, scope: !1113)
!1143 = !DILocation(line: 122, column: 32, scope: !1113)
!1144 = !DILocation(line: 0, scope: !1093)
!1145 = !DILocation(line: 124, column: 6, scope: !1053)
!1146 = !DILocalVariable(name: "q", scope: !1053, file: !35, line: 63, type: !8)
!1147 = !DILocation(line: 134, column: 10, scope: !1053)
!1148 = !DILocation(line: 134, column: 31, scope: !1053)
!1149 = !DILocation(line: 134, column: 41, scope: !1053)
!1150 = !DILocation(line: 134, column: 46, scope: !1053)
!1151 = !DILocation(line: 134, column: 35, scope: !1053)
!1152 = !DILocation(line: 134, column: 6, scope: !1053)
!1153 = !DILocalVariable(name: "cc", scope: !1053, file: !35, line: 64, type: !8)
!1154 = !DILocalVariable(name: "tb", scope: !1053, file: !35, line: 64, type: !8)
!1155 = !DILocalVariable(name: "u", scope: !1053, file: !35, line: 62, type: !29)
!1156 = !DILocation(line: 147, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1053, file: !35, line: 147, column: 2)
!1158 = !DILocation(line: 0, scope: !1157)
!1159 = !DILocation(line: 147, column: 16, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !35, line: 147, column: 2)
!1161 = !DILocation(line: 147, column: 2, scope: !1157)
!1162 = !DILocation(line: 150, column: 8, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !35, line: 147, column: 31)
!1164 = !DILocalVariable(name: "mw", scope: !1163, file: !35, line: 148, type: !8)
!1165 = !DILocation(line: 0, scope: !1163)
!1166 = !DILocation(line: 151, column: 8, scope: !1163)
!1167 = !DILocation(line: 151, column: 21, scope: !1163)
!1168 = !DILocalVariable(name: "zl", scope: !1163, file: !35, line: 148, type: !8)
!1169 = !DILocation(line: 152, column: 11, scope: !1163)
!1170 = !DILocation(line: 153, column: 6, scope: !1163)
!1171 = !DILocation(line: 154, column: 8, scope: !1163)
!1172 = !DILocalVariable(name: "xw", scope: !1163, file: !35, line: 148, type: !8)
!1173 = !DILocation(line: 155, column: 12, scope: !1163)
!1174 = !DILocalVariable(name: "nxw", scope: !1163, file: !35, line: 148, type: !8)
!1175 = !DILocation(line: 156, column: 13, scope: !1163)
!1176 = !DILocation(line: 156, column: 6, scope: !1163)
!1177 = !DILocation(line: 157, column: 7, scope: !1163)
!1178 = !DILocation(line: 158, column: 10, scope: !1163)
!1179 = !DILocation(line: 158, column: 3, scope: !1163)
!1180 = !DILocation(line: 158, column: 8, scope: !1163)
!1181 = !DILocation(line: 159, column: 12, scope: !1163)
!1182 = !DILocation(line: 159, column: 29, scope: !1163)
!1183 = !DILocation(line: 159, column: 8, scope: !1163)
!1184 = !DILocation(line: 160, column: 2, scope: !1163)
!1185 = !DILocation(line: 147, column: 27, scope: !1160)
!1186 = !DILocation(line: 147, column: 2, scope: !1160)
!1187 = distinct !{!1187, !1161, !1188, !95}
!1188 = !DILocation(line: 160, column: 2, scope: !1157)
!1189 = !DILocation(line: 169, column: 9, scope: !1053)
!1190 = !DILocalVariable(name: "over", scope: !1053, file: !35, line: 64, type: !8)
!1191 = !DILocation(line: 170, column: 10, scope: !1053)
!1192 = !DILocation(line: 170, column: 24, scope: !1053)
!1193 = !DILocation(line: 170, column: 22, scope: !1053)
!1194 = !DILocation(line: 170, column: 16, scope: !1053)
!1195 = !DILocalVariable(name: "under", scope: !1053, file: !35, line: 64, type: !8)
!1196 = !DILocation(line: 171, column: 2, scope: !1053)
!1197 = !DILocation(line: 172, column: 2, scope: !1053)
!1198 = !DILocation(line: 173, column: 1, scope: !1053)
!1199 = distinct !DISubprogram(name: "divrem16", scope: !35, file: !35, line: 32, type: !1200, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !2)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!8, !8, !8, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!1203 = !DILocalVariable(name: "x", arg: 1, scope: !1199, file: !35, line: 32, type: !8)
!1204 = !DILocation(line: 0, scope: !1199)
!1205 = !DILocalVariable(name: "d", arg: 2, scope: !1199, file: !35, line: 32, type: !8)
!1206 = !DILocalVariable(name: "r", arg: 3, scope: !1199, file: !35, line: 32, type: !1202)
!1207 = !DILocalVariable(name: "q", scope: !1199, file: !35, line: 35, type: !8)
!1208 = !DILocation(line: 38, column: 4, scope: !1199)
!1209 = !DILocalVariable(name: "i", scope: !1199, file: !35, line: 34, type: !284)
!1210 = !DILocation(line: 39, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1199, file: !35, line: 39, column: 2)
!1212 = !DILocation(line: 0, scope: !1211)
!1213 = !DILocation(line: 39, column: 17, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !35, line: 39, column: 2)
!1215 = !DILocation(line: 39, column: 2, scope: !1211)
!1216 = !DILocation(line: 42, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !35, line: 39, column: 29)
!1218 = !DILocalVariable(name: "ctl", scope: !1217, file: !35, line: 40, type: !8)
!1219 = !DILocation(line: 0, scope: !1217)
!1220 = !DILocation(line: 43, column: 12, scope: !1217)
!1221 = !DILocation(line: 43, column: 5, scope: !1217)
!1222 = !DILocation(line: 44, column: 9, scope: !1217)
!1223 = !DILocation(line: 44, column: 15, scope: !1217)
!1224 = !DILocation(line: 44, column: 5, scope: !1217)
!1225 = !DILocation(line: 45, column: 5, scope: !1217)
!1226 = !DILocation(line: 46, column: 2, scope: !1217)
!1227 = !DILocation(line: 39, column: 25, scope: !1214)
!1228 = !DILocation(line: 39, column: 2, scope: !1214)
!1229 = distinct !{!1229, !1215, !1230, !95}
!1230 = !DILocation(line: 46, column: 2, scope: !1211)
!1231 = !DILocation(line: 47, column: 8, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1199, file: !35, line: 47, column: 6)
!1233 = !DILocation(line: 47, column: 6, scope: !1199)
!1234 = !DILocation(line: 48, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !35, line: 47, column: 17)
!1236 = !DILocation(line: 49, column: 2, scope: !1235)
!1237 = !DILocation(line: 50, column: 2, scope: !1199)
!1238 = distinct !DISubprogram(name: "EQ", scope: !98, file: !98, line: 779, type: !193, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !2)
!1239 = !DILocalVariable(name: "x", arg: 1, scope: !1238, file: !98, line: 779, type: !8)
!1240 = !DILocation(line: 0, scope: !1238)
!1241 = !DILocalVariable(name: "y", arg: 2, scope: !1238, file: !98, line: 779, type: !8)
!1242 = !DILocation(line: 783, column: 8, scope: !1238)
!1243 = !DILocalVariable(name: "q", scope: !1238, file: !98, line: 781, type: !8)
!1244 = !DILocation(line: 784, column: 18, scope: !1238)
!1245 = !DILocation(line: 784, column: 16, scope: !1238)
!1246 = !DILocation(line: 784, column: 22, scope: !1238)
!1247 = !DILocation(line: 784, column: 9, scope: !1238)
!1248 = !DILocation(line: 784, column: 2, scope: !1238)
!1249 = distinct !DISubprogram(name: "MUX", scope: !98, file: !98, line: 770, type: !99, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !2)
!1250 = !DILocalVariable(name: "ctl", arg: 1, scope: !1249, file: !98, line: 770, type: !8)
!1251 = !DILocation(line: 0, scope: !1249)
!1252 = !DILocalVariable(name: "x", arg: 2, scope: !1249, file: !98, line: 770, type: !8)
!1253 = !DILocalVariable(name: "y", arg: 3, scope: !1249, file: !98, line: 770, type: !8)
!1254 = !DILocation(line: 772, column: 14, scope: !1249)
!1255 = !DILocation(line: 772, column: 24, scope: !1249)
!1256 = !DILocation(line: 772, column: 19, scope: !1249)
!1257 = !DILocation(line: 772, column: 11, scope: !1249)
!1258 = !DILocation(line: 772, column: 2, scope: !1249)
!1259 = distinct !DISubprogram(name: "GT", scope: !98, file: !98, line: 803, type: !193, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !2)
!1260 = !DILocalVariable(name: "x", arg: 1, scope: !1259, file: !98, line: 803, type: !8)
!1261 = !DILocation(line: 0, scope: !1259)
!1262 = !DILocalVariable(name: "y", arg: 2, scope: !1259, file: !98, line: 803, type: !8)
!1263 = !DILocation(line: 819, column: 8, scope: !1259)
!1264 = !DILocalVariable(name: "z", scope: !1259, file: !98, line: 817, type: !8)
!1265 = !DILocation(line: 820, column: 18, scope: !1259)
!1266 = !DILocation(line: 820, column: 28, scope: !1259)
!1267 = !DILocation(line: 820, column: 23, scope: !1259)
!1268 = !DILocation(line: 820, column: 12, scope: !1259)
!1269 = !DILocation(line: 820, column: 35, scope: !1259)
!1270 = !DILocation(line: 820, column: 2, scope: !1259)
!1271 = distinct !DISubprogram(name: "NOT", scope: !98, file: !98, line: 761, type: !216, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !2)
!1272 = !DILocalVariable(name: "ctl", arg: 1, scope: !1271, file: !98, line: 761, type: !8)
!1273 = !DILocation(line: 0, scope: !1271)
!1274 = !DILocation(line: 763, column: 13, scope: !1271)
!1275 = !DILocation(line: 763, column: 2, scope: !1271)
!1276 = distinct !DISubprogram(name: "br_i15_ninv15", scope: !39, file: !39, line: 29, type: !1277, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !2)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!114, !114}
!1279 = !DILocalVariable(name: "x", arg: 1, scope: !1276, file: !39, line: 29, type: !114)
!1280 = !DILocation(line: 0, scope: !1276)
!1281 = !DILocation(line: 33, column: 10, scope: !1276)
!1282 = !DILocation(line: 33, column: 8, scope: !1276)
!1283 = !DILocalVariable(name: "y", scope: !1276, file: !39, line: 31, type: !8)
!1284 = !DILocation(line: 34, column: 6, scope: !1276)
!1285 = !DILocation(line: 35, column: 6, scope: !1276)
!1286 = !DILocation(line: 36, column: 6, scope: !1276)
!1287 = !DILocation(line: 37, column: 13, scope: !1276)
!1288 = !DILocation(line: 37, column: 15, scope: !1276)
!1289 = !DILocation(line: 37, column: 20, scope: !1276)
!1290 = !DILocation(line: 37, column: 9, scope: !1276)
!1291 = !DILocation(line: 37, column: 27, scope: !1276)
!1292 = !DILocation(line: 37, column: 2, scope: !1276)
!1293 = distinct !DISubprogram(name: "MUX", scope: !98, file: !98, line: 770, type: !99, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!1294 = !DILocalVariable(name: "ctl", arg: 1, scope: !1293, file: !98, line: 770, type: !8)
!1295 = !DILocation(line: 0, scope: !1293)
!1296 = !DILocalVariable(name: "x", arg: 2, scope: !1293, file: !98, line: 770, type: !8)
!1297 = !DILocalVariable(name: "y", arg: 3, scope: !1293, file: !98, line: 770, type: !8)
!1298 = !DILocation(line: 772, column: 14, scope: !1293)
!1299 = !DILocation(line: 772, column: 24, scope: !1293)
!1300 = !DILocation(line: 772, column: 19, scope: !1293)
!1301 = !DILocation(line: 772, column: 11, scope: !1293)
!1302 = !DILocation(line: 772, column: 2, scope: !1293)
!1303 = distinct !DISubprogram(name: "br_i15_reduce", scope: !41, file: !41, line: 29, type: !959, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !2)
!1304 = !DILocalVariable(name: "x", arg: 1, scope: !1303, file: !41, line: 29, type: !113)
!1305 = !DILocation(line: 0, scope: !1303)
!1306 = !DILocalVariable(name: "a", arg: 2, scope: !1303, file: !41, line: 29, type: !117)
!1307 = !DILocalVariable(name: "m", arg: 3, scope: !1303, file: !41, line: 29, type: !117)
!1308 = !DILocation(line: 34, column: 13, scope: !1303)
!1309 = !DILocalVariable(name: "m_bitlen", scope: !1303, file: !41, line: 31, type: !8)
!1310 = !DILocation(line: 35, column: 19, scope: !1303)
!1311 = !DILocation(line: 35, column: 25, scope: !1303)
!1312 = !DILocation(line: 35, column: 9, scope: !1303)
!1313 = !DILocalVariable(name: "mlen", scope: !1303, file: !41, line: 32, type: !29)
!1314 = !DILocation(line: 37, column: 9, scope: !1303)
!1315 = !DILocation(line: 37, column: 2, scope: !1303)
!1316 = !DILocation(line: 37, column: 7, scope: !1303)
!1317 = !DILocation(line: 38, column: 15, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1303, file: !41, line: 38, column: 6)
!1319 = !DILocation(line: 38, column: 6, scope: !1303)
!1320 = !DILocation(line: 39, column: 3, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1318, file: !41, line: 38, column: 21)
!1322 = !DILocation(line: 46, column: 13, scope: !1303)
!1323 = !DILocalVariable(name: "a_bitlen", scope: !1303, file: !41, line: 31, type: !8)
!1324 = !DILocation(line: 47, column: 19, scope: !1303)
!1325 = !DILocation(line: 47, column: 25, scope: !1303)
!1326 = !DILocation(line: 47, column: 9, scope: !1303)
!1327 = !DILocalVariable(name: "alen", scope: !1303, file: !41, line: 32, type: !29)
!1328 = !DILocation(line: 48, column: 15, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1303, file: !41, line: 48, column: 6)
!1330 = !DILocation(line: 48, column: 6, scope: !1303)
!1331 = !DILocation(line: 49, column: 12, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !41, line: 48, column: 27)
!1333 = !DILocation(line: 49, column: 3, scope: !1332)
!1334 = !DILocation(line: 49, column: 19, scope: !1332)
!1335 = !DILocation(line: 49, column: 29, scope: !1332)
!1336 = !DILocalVariable(name: "u", scope: !1303, file: !41, line: 32, type: !29)
!1337 = !DILocation(line: 50, column: 8, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1332, file: !41, line: 50, column: 3)
!1339 = !DILocation(line: 0, scope: !1338)
!1340 = !DILocation(line: 50, column: 20, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !41, line: 50, column: 3)
!1342 = !DILocation(line: 50, column: 3, scope: !1338)
!1343 = !DILocation(line: 51, column: 8, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !41, line: 50, column: 34)
!1345 = !DILocation(line: 51, column: 4, scope: !1344)
!1346 = !DILocation(line: 51, column: 13, scope: !1344)
!1347 = !DILocation(line: 52, column: 3, scope: !1344)
!1348 = !DILocation(line: 50, column: 30, scope: !1341)
!1349 = !DILocation(line: 50, column: 3, scope: !1341)
!1350 = distinct !{!1350, !1342, !1351, !95}
!1351 = !DILocation(line: 52, column: 3, scope: !1338)
!1352 = !DILocation(line: 53, column: 3, scope: !1332)
!1353 = !DILocation(line: 61, column: 11, scope: !1303)
!1354 = !DILocation(line: 61, column: 2, scope: !1303)
!1355 = !DILocation(line: 61, column: 18, scope: !1303)
!1356 = !DILocation(line: 61, column: 30, scope: !1303)
!1357 = !DILocation(line: 61, column: 22, scope: !1303)
!1358 = !DILocation(line: 61, column: 45, scope: !1303)
!1359 = !DILocation(line: 61, column: 50, scope: !1303)
!1360 = !DILocation(line: 62, column: 2, scope: !1303)
!1361 = !DILocation(line: 62, column: 10, scope: !1303)
!1362 = !DILocation(line: 63, column: 13, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1303, file: !41, line: 63, column: 2)
!1364 = !DILocation(line: 63, column: 20, scope: !1363)
!1365 = !DILocation(line: 63, column: 7, scope: !1363)
!1366 = !DILocation(line: 0, scope: !1363)
!1367 = !DILocation(line: 63, column: 30, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !41, line: 63, column: 2)
!1369 = !DILocation(line: 63, column: 2, scope: !1363)
!1370 = !DILocation(line: 64, column: 26, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !41, line: 63, column: 41)
!1372 = !DILocation(line: 64, column: 3, scope: !1371)
!1373 = !DILocation(line: 65, column: 2, scope: !1371)
!1374 = !DILocation(line: 63, column: 37, scope: !1368)
!1375 = !DILocation(line: 63, column: 2, scope: !1368)
!1376 = distinct !{!1376, !1369, !1377, !95}
!1377 = !DILocation(line: 65, column: 2, scope: !1363)
!1378 = !DILocation(line: 66, column: 1, scope: !1303)
!1379 = distinct !DISubprogram(name: "br_i15_rshift", scope: !43, file: !43, line: 29, type: !1380, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !2)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !113, !284}
!1382 = !DILocalVariable(name: "x", arg: 1, scope: !1379, file: !43, line: 29, type: !113)
!1383 = !DILocation(line: 0, scope: !1379)
!1384 = !DILocalVariable(name: "count", arg: 2, scope: !1379, file: !43, line: 29, type: !284)
!1385 = !DILocation(line: 34, column: 9, scope: !1379)
!1386 = !DILocation(line: 34, column: 14, scope: !1379)
!1387 = !DILocation(line: 34, column: 20, scope: !1379)
!1388 = !DILocation(line: 34, column: 8, scope: !1379)
!1389 = !DILocalVariable(name: "len", scope: !1379, file: !43, line: 31, type: !29)
!1390 = !DILocation(line: 35, column: 10, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1379, file: !43, line: 35, column: 6)
!1392 = !DILocation(line: 35, column: 6, scope: !1379)
!1393 = !DILocation(line: 36, column: 3, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !43, line: 35, column: 16)
!1395 = !DILocation(line: 38, column: 6, scope: !1379)
!1396 = !DILocation(line: 38, column: 11, scope: !1379)
!1397 = !DILocalVariable(name: "r", scope: !1379, file: !43, line: 32, type: !12)
!1398 = !DILocalVariable(name: "u", scope: !1379, file: !43, line: 31, type: !29)
!1399 = !DILocation(line: 39, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1379, file: !43, line: 39, column: 2)
!1401 = !DILocation(line: 0, scope: !1400)
!1402 = !DILocation(line: 39, column: 16, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !43, line: 39, column: 2)
!1404 = !DILocation(line: 39, column: 2, scope: !1400)
!1405 = !DILocation(line: 42, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !43, line: 39, column: 30)
!1407 = !DILocalVariable(name: "w", scope: !1406, file: !43, line: 40, type: !12)
!1408 = !DILocation(line: 0, scope: !1406)
!1409 = !DILocation(line: 43, column: 25, scope: !1406)
!1410 = !DILocation(line: 43, column: 18, scope: !1406)
!1411 = !DILocation(line: 43, column: 35, scope: !1406)
!1412 = !DILocation(line: 43, column: 40, scope: !1406)
!1413 = !DILocation(line: 43, column: 14, scope: !1406)
!1414 = !DILocation(line: 43, column: 7, scope: !1406)
!1415 = !DILocation(line: 43, column: 3, scope: !1406)
!1416 = !DILocation(line: 43, column: 12, scope: !1406)
!1417 = !DILocation(line: 44, column: 9, scope: !1406)
!1418 = !DILocation(line: 45, column: 2, scope: !1406)
!1419 = !DILocation(line: 39, column: 26, scope: !1403)
!1420 = !DILocation(line: 39, column: 2, scope: !1403)
!1421 = distinct !{!1421, !1404, !1422, !95}
!1422 = !DILocation(line: 45, column: 2, scope: !1400)
!1423 = !DILocation(line: 46, column: 11, scope: !1379)
!1424 = !DILocation(line: 46, column: 2, scope: !1379)
!1425 = !DILocation(line: 46, column: 9, scope: !1379)
!1426 = !DILocation(line: 47, column: 1, scope: !1379)
!1427 = distinct !DISubprogram(name: "br_i15_sub", scope: !45, file: !45, line: 29, type: !111, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !2)
!1428 = !DILocalVariable(name: "a", arg: 1, scope: !1427, file: !45, line: 29, type: !113)
!1429 = !DILocation(line: 0, scope: !1427)
!1430 = !DILocalVariable(name: "b", arg: 2, scope: !1427, file: !45, line: 29, type: !117)
!1431 = !DILocalVariable(name: "ctl", arg: 3, scope: !1427, file: !45, line: 29, type: !8)
!1432 = !DILocalVariable(name: "cc", scope: !1427, file: !45, line: 31, type: !8)
!1433 = !DILocation(line: 35, column: 7, scope: !1427)
!1434 = !DILocation(line: 35, column: 12, scope: !1427)
!1435 = !DILocation(line: 35, column: 18, scope: !1427)
!1436 = !DILocation(line: 35, column: 6, scope: !1427)
!1437 = !DILocalVariable(name: "m", scope: !1427, file: !45, line: 32, type: !29)
!1438 = !DILocalVariable(name: "u", scope: !1427, file: !45, line: 32, type: !29)
!1439 = !DILocation(line: 36, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1427, file: !45, line: 36, column: 2)
!1441 = !DILocation(line: 0, scope: !1440)
!1442 = !DILocation(line: 36, column: 16, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !45, line: 36, column: 2)
!1444 = !DILocation(line: 36, column: 2, scope: !1440)
!1445 = !DILocation(line: 39, column: 8, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !45, line: 36, column: 27)
!1447 = !DILocalVariable(name: "aw", scope: !1446, file: !45, line: 37, type: !8)
!1448 = !DILocation(line: 0, scope: !1446)
!1449 = !DILocation(line: 40, column: 8, scope: !1446)
!1450 = !DILocalVariable(name: "bw", scope: !1446, file: !45, line: 37, type: !8)
!1451 = !DILocation(line: 41, column: 12, scope: !1446)
!1452 = !DILocation(line: 41, column: 17, scope: !1446)
!1453 = !DILocalVariable(name: "naw", scope: !1446, file: !45, line: 37, type: !8)
!1454 = !DILocation(line: 42, column: 12, scope: !1446)
!1455 = !DILocation(line: 43, column: 23, scope: !1446)
!1456 = !DILocation(line: 43, column: 10, scope: !1446)
!1457 = !DILocation(line: 43, column: 3, scope: !1446)
!1458 = !DILocation(line: 43, column: 8, scope: !1446)
!1459 = !DILocation(line: 44, column: 2, scope: !1446)
!1460 = !DILocation(line: 36, column: 23, scope: !1443)
!1461 = !DILocation(line: 36, column: 2, scope: !1443)
!1462 = distinct !{!1462, !1444, !1463, !95}
!1463 = !DILocation(line: 44, column: 2, scope: !1440)
!1464 = !DILocation(line: 45, column: 2, scope: !1427)
!1465 = distinct !DISubprogram(name: "MUX", scope: !98, file: !98, line: 770, type: !99, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !2)
!1466 = !DILocalVariable(name: "ctl", arg: 1, scope: !1465, file: !98, line: 770, type: !8)
!1467 = !DILocation(line: 0, scope: !1465)
!1468 = !DILocalVariable(name: "x", arg: 2, scope: !1465, file: !98, line: 770, type: !8)
!1469 = !DILocalVariable(name: "y", arg: 3, scope: !1465, file: !98, line: 770, type: !8)
!1470 = !DILocation(line: 772, column: 14, scope: !1465)
!1471 = !DILocation(line: 772, column: 24, scope: !1465)
!1472 = !DILocation(line: 772, column: 19, scope: !1465)
!1473 = !DILocation(line: 772, column: 11, scope: !1465)
!1474 = !DILocation(line: 772, column: 2, scope: !1465)
!1475 = distinct !DISubprogram(name: "br_i15_to_monty", scope: !47, file: !47, line: 29, type: !1476, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !2)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !113, !117}
!1478 = !DILocalVariable(name: "x", arg: 1, scope: !1475, file: !47, line: 29, type: !113)
!1479 = !DILocation(line: 0, scope: !1475)
!1480 = !DILocalVariable(name: "m", arg: 2, scope: !1475, file: !47, line: 29, type: !117)
!1481 = !DILocation(line: 33, column: 12, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1475, file: !47, line: 33, column: 2)
!1483 = !DILocation(line: 33, column: 17, scope: !1482)
!1484 = !DILocation(line: 33, column: 23, scope: !1482)
!1485 = !DILocalVariable(name: "k", scope: !1475, file: !47, line: 31, type: !12)
!1486 = !DILocation(line: 33, column: 7, scope: !1482)
!1487 = !DILocation(line: 0, scope: !1482)
!1488 = !DILocation(line: 33, column: 31, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1482, file: !47, line: 33, column: 2)
!1490 = !DILocation(line: 33, column: 2, scope: !1482)
!1491 = !DILocation(line: 34, column: 3, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !47, line: 33, column: 42)
!1493 = !DILocation(line: 35, column: 2, scope: !1492)
!1494 = !DILocation(line: 33, column: 38, scope: !1489)
!1495 = !DILocation(line: 33, column: 2, scope: !1489)
!1496 = distinct !{!1496, !1490, !1497, !95}
!1497 = !DILocation(line: 35, column: 2, scope: !1482)
!1498 = !DILocation(line: 36, column: 1, scope: !1475)
!1499 = distinct !DISubprogram(name: "br_rsa_i15_pkcs1_sign", scope: !49, file: !49, line: 29, type: !1500, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !2)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!8, !78, !78, !29, !1502, !56}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !1505, line: 205, baseType: !1506)
!1505 = !DIFile(filename: "../BearSSL/inc/bearssl_rsa.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 182, size: 704, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !1506, file: !1505, line: 184, baseType: !8, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1506, file: !1505, line: 186, baseType: !56, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !1506, file: !1505, line: 188, baseType: !29, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1506, file: !1505, line: 190, baseType: !56, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1506, file: !1505, line: 192, baseType: !29, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1506, file: !1505, line: 194, baseType: !56, size: 64, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !1506, file: !1505, line: 196, baseType: !29, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !1506, file: !1505, line: 198, baseType: !56, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !1506, file: !1505, line: 200, baseType: !29, size: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !1506, file: !1505, line: 202, baseType: !56, size: 64, offset: 576)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !1506, file: !1505, line: 204, baseType: !29, size: 64, offset: 640)
!1519 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !1499, file: !49, line: 29, type: !78)
!1520 = !DILocation(line: 0, scope: !1499)
!1521 = !DILocalVariable(name: "hash", arg: 2, scope: !1499, file: !49, line: 30, type: !78)
!1522 = !DILocalVariable(name: "hash_len", arg: 3, scope: !1499, file: !49, line: 30, type: !29)
!1523 = !DILocalVariable(name: "sk", arg: 4, scope: !1499, file: !49, line: 31, type: !1502)
!1524 = !DILocalVariable(name: "x", arg: 5, scope: !1499, file: !49, line: 31, type: !56)
!1525 = !DILocation(line: 33, column: 58, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1499, file: !49, line: 33, column: 6)
!1527 = !DILocation(line: 33, column: 7, scope: !1526)
!1528 = !DILocation(line: 33, column: 6, scope: !1499)
!1529 = !DILocation(line: 34, column: 3, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !49, line: 33, column: 72)
!1531 = !DILocation(line: 36, column: 9, scope: !1499)
!1532 = !DILocation(line: 36, column: 2, scope: !1499)
!1533 = !DILocation(line: 37, column: 1, scope: !1499)
!1534 = distinct !DISubprogram(name: "br_rsa_i15_private", scope: !51, file: !51, line: 32, type: !1535, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !2)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!8, !56, !1537}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !1505, line: 205, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 182, size: 704, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !1540, file: !1505, line: 184, baseType: !8, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1540, file: !1505, line: 186, baseType: !56, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !1540, file: !1505, line: 188, baseType: !29, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1540, file: !1505, line: 190, baseType: !56, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1540, file: !1505, line: 192, baseType: !29, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1540, file: !1505, line: 194, baseType: !56, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !1540, file: !1505, line: 196, baseType: !29, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !1540, file: !1505, line: 198, baseType: !56, size: 64, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !1540, file: !1505, line: 200, baseType: !29, size: 64, offset: 512)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !1540, file: !1505, line: 202, baseType: !56, size: 64, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !1540, file: !1505, line: 204, baseType: !29, size: 64, offset: 640)
!1553 = !DILocalVariable(name: "x", arg: 1, scope: !1534, file: !51, line: 32, type: !56)
!1554 = !DILocation(line: 0, scope: !1534)
!1555 = !DILocalVariable(name: "sk", arg: 2, scope: !1534, file: !51, line: 32, type: !1537)
!1556 = !DILocalVariable(name: "tmp", scope: !1534, file: !51, line: 39, type: !1557)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 18064, elements: !1558)
!1558 = !{!1559}
!1559 = !DISubrange(count: 1129)
!1560 = !DILocation(line: 39, column: 11, scope: !1534)
!1561 = !DILocation(line: 49, column: 10, scope: !1534)
!1562 = !DILocalVariable(name: "p", scope: !1534, file: !51, line: 34, type: !78)
!1563 = !DILocation(line: 50, column: 13, scope: !1534)
!1564 = !DILocalVariable(name: "plen", scope: !1534, file: !51, line: 35, type: !29)
!1565 = !DILocation(line: 51, column: 2, scope: !1534)
!1566 = !DILocation(line: 51, column: 14, scope: !1534)
!1567 = !DILocation(line: 51, column: 18, scope: !1534)
!1568 = !DILocation(line: 51, column: 21, scope: !1534)
!1569 = !DILocation(line: 51, column: 24, scope: !1534)
!1570 = !DILocation(line: 52, column: 5, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1534, file: !51, line: 51, column: 30)
!1572 = !DILocation(line: 53, column: 8, scope: !1571)
!1573 = distinct !{!1573, !1565, !1574, !95}
!1574 = !DILocation(line: 54, column: 2, scope: !1534)
!1575 = !DILocation(line: 55, column: 10, scope: !1534)
!1576 = !DILocalVariable(name: "q", scope: !1534, file: !51, line: 34, type: !78)
!1577 = !DILocation(line: 56, column: 13, scope: !1534)
!1578 = !DILocalVariable(name: "qlen", scope: !1534, file: !51, line: 35, type: !29)
!1579 = !DILocation(line: 57, column: 2, scope: !1534)
!1580 = !DILocation(line: 57, column: 14, scope: !1534)
!1581 = !DILocation(line: 57, column: 18, scope: !1534)
!1582 = !DILocation(line: 57, column: 21, scope: !1534)
!1583 = !DILocation(line: 57, column: 24, scope: !1534)
!1584 = !DILocation(line: 58, column: 5, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1534, file: !51, line: 57, column: 30)
!1586 = !DILocation(line: 59, column: 8, scope: !1585)
!1587 = distinct !{!1587, !1579, !1588, !95}
!1588 = !DILocation(line: 60, column: 2, scope: !1534)
!1589 = !DILocation(line: 65, column: 18, scope: !1534)
!1590 = !DILocation(line: 65, column: 13, scope: !1534)
!1591 = !DILocation(line: 65, column: 40, scope: !1534)
!1592 = !DILocalVariable(name: "z", scope: !1534, file: !51, line: 40, type: !53)
!1593 = !DILocalVariable(name: "fwlen", scope: !1534, file: !51, line: 36, type: !29)
!1594 = !DILocation(line: 67, column: 2, scope: !1534)
!1595 = !DILocation(line: 67, column: 11, scope: !1534)
!1596 = !DILocation(line: 68, column: 5, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1534, file: !51, line: 67, column: 16)
!1598 = !DILocation(line: 69, column: 9, scope: !1597)
!1599 = distinct !{!1599, !1594, !1600, !95}
!1600 = !DILocation(line: 70, column: 2, scope: !1534)
!1601 = !DILocation(line: 74, column: 18, scope: !1534)
!1602 = !DILocation(line: 74, column: 8, scope: !1534)
!1603 = !DILocation(line: 79, column: 8, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1534, file: !51, line: 79, column: 6)
!1605 = !DILocation(line: 79, column: 16, scope: !1604)
!1606 = !DILocation(line: 79, column: 6, scope: !1534)
!1607 = !DILocation(line: 80, column: 3, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !51, line: 79, column: 24)
!1609 = !DILocation(line: 86, column: 14, scope: !1534)
!1610 = !DILocation(line: 86, column: 23, scope: !1534)
!1611 = !DILocation(line: 86, column: 28, scope: !1534)
!1612 = !DILocation(line: 86, column: 9, scope: !1534)
!1613 = !DILocalVariable(name: "xlen", scope: !1534, file: !51, line: 38, type: !29)
!1614 = !DILocation(line: 91, column: 7, scope: !1534)
!1615 = !DILocalVariable(name: "mq", scope: !1534, file: !51, line: 41, type: !113)
!1616 = !DILocation(line: 92, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1534, file: !51, line: 92, column: 6)
!1618 = !DILocation(line: 92, column: 21, scope: !1617)
!1619 = !DILocation(line: 92, column: 26, scope: !1617)
!1620 = !DILocation(line: 92, column: 6, scope: !1534)
!1621 = !DILocation(line: 93, column: 6, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !51, line: 92, column: 32)
!1623 = !DILocation(line: 94, column: 2, scope: !1622)
!1624 = !DILocation(line: 99, column: 2, scope: !1534)
!1625 = !DILocation(line: 104, column: 10, scope: !1534)
!1626 = !DILocalVariable(name: "t1", scope: !1534, file: !51, line: 41, type: !113)
!1627 = !DILocation(line: 105, column: 2, scope: !1534)
!1628 = !DILocation(line: 112, column: 14, scope: !1534)
!1629 = !DILocation(line: 112, column: 10, scope: !1534)
!1630 = !DILocalVariable(name: "t2", scope: !1534, file: !51, line: 41, type: !113)
!1631 = !DILocation(line: 113, column: 18, scope: !1534)
!1632 = !DILocation(line: 113, column: 2, scope: !1534)
!1633 = !DILocation(line: 114, column: 2, scope: !1534)
!1634 = !DILocation(line: 125, column: 14, scope: !1534)
!1635 = !DILocation(line: 125, column: 10, scope: !1534)
!1636 = !DILocalVariable(name: "t3", scope: !1534, file: !51, line: 41, type: !113)
!1637 = !DILocation(line: 126, column: 16, scope: !1534)
!1638 = !DILocation(line: 126, column: 2, scope: !1534)
!1639 = !DILocalVariable(name: "u", scope: !1534, file: !51, line: 38, type: !29)
!1640 = !DILocalVariable(name: "r", scope: !1534, file: !51, line: 42, type: !8)
!1641 = !DILocation(line: 129, column: 2, scope: !1534)
!1642 = !DILocation(line: 129, column: 11, scope: !1534)
!1643 = !DILocation(line: 132, column: 5, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1534, file: !51, line: 129, column: 16)
!1645 = !DILocation(line: 133, column: 8, scope: !1644)
!1646 = !DILocalVariable(name: "wn", scope: !1644, file: !51, line: 130, type: !8)
!1647 = !DILocation(line: 0, scope: !1644)
!1648 = !DILocation(line: 134, column: 8, scope: !1644)
!1649 = !DILocalVariable(name: "wx", scope: !1644, file: !51, line: 130, type: !8)
!1650 = !DILocation(line: 135, column: 18, scope: !1644)
!1651 = !DILocation(line: 135, column: 12, scope: !1644)
!1652 = !DILocation(line: 135, column: 24, scope: !1644)
!1653 = !DILocation(line: 135, column: 30, scope: !1644)
!1654 = distinct !{!1654, !1641, !1655, !95}
!1655 = !DILocation(line: 136, column: 2, scope: !1534)
!1656 = !DILocation(line: 141, column: 14, scope: !1534)
!1657 = !DILocation(line: 141, column: 10, scope: !1534)
!1658 = !DILocalVariable(name: "mp", scope: !1534, file: !51, line: 41, type: !113)
!1659 = !DILocation(line: 142, column: 2, scope: !1534)
!1660 = !DILocation(line: 142, column: 24, scope: !1534)
!1661 = !DILocation(line: 147, column: 22, scope: !1534)
!1662 = !DILocation(line: 147, column: 8, scope: !1534)
!1663 = !DILocalVariable(name: "q0i", scope: !1534, file: !51, line: 37, type: !114)
!1664 = !DILocation(line: 148, column: 10, scope: !1534)
!1665 = !DILocalVariable(name: "s2", scope: !1534, file: !51, line: 41, type: !113)
!1666 = !DILocation(line: 149, column: 2, scope: !1534)
!1667 = !DILocation(line: 150, column: 33, scope: !1534)
!1668 = !DILocation(line: 150, column: 41, scope: !1534)
!1669 = !DILocation(line: 151, column: 10, scope: !1534)
!1670 = !DILocation(line: 151, column: 6, scope: !1534)
!1671 = !DILocation(line: 151, column: 28, scope: !1534)
!1672 = !DILocation(line: 151, column: 24, scope: !1534)
!1673 = !DILocation(line: 150, column: 7, scope: !1534)
!1674 = !DILocation(line: 150, column: 4, scope: !1534)
!1675 = !DILocation(line: 156, column: 22, scope: !1534)
!1676 = !DILocation(line: 156, column: 8, scope: !1534)
!1677 = !DILocalVariable(name: "p0i", scope: !1534, file: !51, line: 37, type: !114)
!1678 = !DILocation(line: 157, column: 14, scope: !1534)
!1679 = !DILocation(line: 157, column: 10, scope: !1534)
!1680 = !DILocalVariable(name: "s1", scope: !1534, file: !51, line: 41, type: !113)
!1681 = !DILocation(line: 158, column: 2, scope: !1534)
!1682 = !DILocation(line: 159, column: 33, scope: !1534)
!1683 = !DILocation(line: 159, column: 41, scope: !1534)
!1684 = !DILocation(line: 160, column: 10, scope: !1534)
!1685 = !DILocation(line: 160, column: 6, scope: !1534)
!1686 = !DILocation(line: 160, column: 28, scope: !1534)
!1687 = !DILocation(line: 160, column: 24, scope: !1534)
!1688 = !DILocation(line: 159, column: 7, scope: !1534)
!1689 = !DILocation(line: 159, column: 4, scope: !1534)
!1690 = !DILocation(line: 175, column: 14, scope: !1534)
!1691 = !DILocation(line: 175, column: 10, scope: !1534)
!1692 = !DILocation(line: 176, column: 14, scope: !1534)
!1693 = !DILocation(line: 176, column: 10, scope: !1534)
!1694 = !DILocation(line: 177, column: 2, scope: !1534)
!1695 = !DILocation(line: 178, column: 21, scope: !1534)
!1696 = !DILocation(line: 178, column: 2, scope: !1534)
!1697 = !DILocation(line: 179, column: 2, scope: !1534)
!1698 = !DILocation(line: 180, column: 31, scope: !1534)
!1699 = !DILocation(line: 180, column: 39, scope: !1534)
!1700 = !DILocation(line: 180, column: 2, scope: !1534)
!1701 = !DILocation(line: 181, column: 2, scope: !1534)
!1702 = !DILocation(line: 196, column: 2, scope: !1534)
!1703 = !DILocation(line: 202, column: 2, scope: !1534)
!1704 = !DILocation(line: 208, column: 9, scope: !1534)
!1705 = !DILocation(line: 208, column: 15, scope: !1534)
!1706 = !DILocation(line: 208, column: 13, scope: !1534)
!1707 = !DILocation(line: 208, column: 19, scope: !1534)
!1708 = !DILocation(line: 208, column: 2, scope: !1534)
!1709 = !DILocation(line: 209, column: 1, scope: !1534)
!1710 = distinct !DISubprogram(name: "br_i15_zero", scope: !98, file: !98, line: 1537, type: !411, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !2)
!1711 = !DILocalVariable(name: "x", arg: 1, scope: !1710, file: !98, line: 1537, type: !113)
!1712 = !DILocation(line: 0, scope: !1710)
!1713 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1710, file: !98, line: 1537, type: !114)
!1714 = !DILocation(line: 1539, column: 5, scope: !1710)
!1715 = !DILocation(line: 1539, column: 8, scope: !1710)
!1716 = !DILocation(line: 1540, column: 2, scope: !1710)
!1717 = !DILocation(line: 1540, column: 17, scope: !1710)
!1718 = !DILocation(line: 1540, column: 25, scope: !1710)
!1719 = !DILocation(line: 1540, column: 31, scope: !1710)
!1720 = !DILocation(line: 1540, column: 15, scope: !1710)
!1721 = !DILocation(line: 1540, column: 37, scope: !1710)
!1722 = !DILocation(line: 1541, column: 1, scope: !1710)
!1723 = distinct !DISubprogram(name: "br_rsa_pkcs1_sig_pad", scope: !58, file: !58, line: 29, type: !1724, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !2)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!8, !78, !78, !29, !8, !56}
!1726 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !1723, file: !58, line: 29, type: !78)
!1727 = !DILocation(line: 0, scope: !1723)
!1728 = !DILocalVariable(name: "hash", arg: 2, scope: !1723, file: !58, line: 30, type: !78)
!1729 = !DILocalVariable(name: "hash_len", arg: 3, scope: !1723, file: !58, line: 30, type: !29)
!1730 = !DILocalVariable(name: "n_bitlen", arg: 4, scope: !1723, file: !58, line: 31, type: !8)
!1731 = !DILocalVariable(name: "x", arg: 5, scope: !1723, file: !58, line: 31, type: !56)
!1732 = !DILocation(line: 60, column: 19, scope: !1723)
!1733 = !DILocation(line: 60, column: 24, scope: !1723)
!1734 = !DILocation(line: 60, column: 9, scope: !1723)
!1735 = !DILocalVariable(name: "xlen", scope: !1723, file: !58, line: 33, type: !29)
!1736 = !DILocation(line: 62, column: 15, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1723, file: !58, line: 62, column: 6)
!1738 = !DILocation(line: 62, column: 6, scope: !1723)
!1739 = !DILocation(line: 63, column: 23, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !58, line: 63, column: 7)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !58, line: 62, column: 24)
!1742 = !DILocation(line: 63, column: 12, scope: !1740)
!1743 = !DILocation(line: 63, column: 7, scope: !1741)
!1744 = !DILocation(line: 64, column: 4, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !58, line: 63, column: 29)
!1746 = !DILocation(line: 66, column: 3, scope: !1741)
!1747 = !DILocation(line: 66, column: 8, scope: !1741)
!1748 = !DILocation(line: 67, column: 3, scope: !1741)
!1749 = !DILocation(line: 67, column: 8, scope: !1741)
!1750 = !DILocation(line: 68, column: 12, scope: !1741)
!1751 = !DILocalVariable(name: "u", scope: !1723, file: !58, line: 33, type: !29)
!1752 = !DILocation(line: 69, column: 12, scope: !1741)
!1753 = !DILocation(line: 69, column: 25, scope: !1741)
!1754 = !DILocation(line: 69, column: 3, scope: !1741)
!1755 = !DILocation(line: 70, column: 7, scope: !1741)
!1756 = !DILocation(line: 70, column: 3, scope: !1741)
!1757 = !DILocation(line: 70, column: 12, scope: !1741)
!1758 = !DILocation(line: 71, column: 2, scope: !1741)
!1759 = !DILocation(line: 72, column: 8, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1737, file: !58, line: 71, column: 9)
!1761 = !DILocalVariable(name: "x3", scope: !1723, file: !58, line: 33, type: !29)
!1762 = !DILocation(line: 78, column: 18, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !58, line: 78, column: 7)
!1764 = !DILocation(line: 78, column: 29, scope: !1763)
!1765 = !DILocation(line: 78, column: 12, scope: !1763)
!1766 = !DILocation(line: 78, column: 7, scope: !1760)
!1767 = !DILocation(line: 79, column: 4, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !58, line: 78, column: 36)
!1769 = !DILocation(line: 81, column: 3, scope: !1760)
!1770 = !DILocation(line: 81, column: 8, scope: !1760)
!1771 = !DILocation(line: 82, column: 3, scope: !1760)
!1772 = !DILocation(line: 82, column: 8, scope: !1760)
!1773 = !DILocation(line: 83, column: 12, scope: !1760)
!1774 = !DILocation(line: 83, column: 17, scope: !1760)
!1775 = !DILocation(line: 83, column: 28, scope: !1760)
!1776 = !DILocation(line: 84, column: 12, scope: !1760)
!1777 = !DILocation(line: 84, column: 25, scope: !1760)
!1778 = !DILocation(line: 84, column: 3, scope: !1760)
!1779 = !DILocation(line: 85, column: 3, scope: !1760)
!1780 = !DILocation(line: 85, column: 8, scope: !1760)
!1781 = !DILocation(line: 86, column: 7, scope: !1760)
!1782 = !DILocation(line: 86, column: 3, scope: !1760)
!1783 = !DILocation(line: 86, column: 12, scope: !1760)
!1784 = !DILocation(line: 87, column: 17, scope: !1760)
!1785 = !DILocation(line: 87, column: 28, scope: !1760)
!1786 = !DILocation(line: 87, column: 14, scope: !1760)
!1787 = !DILocation(line: 87, column: 7, scope: !1760)
!1788 = !DILocation(line: 87, column: 3, scope: !1760)
!1789 = !DILocation(line: 87, column: 12, scope: !1760)
!1790 = !DILocation(line: 88, column: 7, scope: !1760)
!1791 = !DILocation(line: 88, column: 3, scope: !1760)
!1792 = !DILocation(line: 88, column: 12, scope: !1760)
!1793 = !DILocation(line: 89, column: 17, scope: !1760)
!1794 = !DILocation(line: 89, column: 14, scope: !1760)
!1795 = !DILocation(line: 89, column: 7, scope: !1760)
!1796 = !DILocation(line: 89, column: 3, scope: !1760)
!1797 = !DILocation(line: 89, column: 12, scope: !1760)
!1798 = !DILocation(line: 90, column: 7, scope: !1760)
!1799 = !DILocation(line: 90, column: 3, scope: !1760)
!1800 = !DILocation(line: 90, column: 12, scope: !1760)
!1801 = !DILocation(line: 91, column: 12, scope: !1760)
!1802 = !DILocation(line: 91, column: 16, scope: !1760)
!1803 = !DILocation(line: 91, column: 34, scope: !1760)
!1804 = !DILocation(line: 91, column: 3, scope: !1760)
!1805 = !DILocation(line: 92, column: 11, scope: !1760)
!1806 = !DILocation(line: 92, column: 5, scope: !1760)
!1807 = !DILocation(line: 93, column: 7, scope: !1760)
!1808 = !DILocation(line: 93, column: 3, scope: !1760)
!1809 = !DILocation(line: 93, column: 11, scope: !1760)
!1810 = !DILocation(line: 94, column: 7, scope: !1760)
!1811 = !DILocation(line: 94, column: 3, scope: !1760)
!1812 = !DILocation(line: 94, column: 11, scope: !1760)
!1813 = !DILocation(line: 95, column: 7, scope: !1760)
!1814 = !DILocation(line: 95, column: 3, scope: !1760)
!1815 = !DILocation(line: 95, column: 11, scope: !1760)
!1816 = !DILocation(line: 96, column: 13, scope: !1760)
!1817 = !DILocation(line: 96, column: 7, scope: !1760)
!1818 = !DILocation(line: 96, column: 3, scope: !1760)
!1819 = !DILocation(line: 96, column: 11, scope: !1760)
!1820 = !DILocation(line: 0, scope: !1737)
!1821 = !DILocation(line: 98, column: 11, scope: !1723)
!1822 = !DILocation(line: 98, column: 2, scope: !1723)
!1823 = !DILocation(line: 99, column: 2, scope: !1723)
!1824 = !DILocation(line: 100, column: 1, scope: !1723)
!1825 = distinct !DISubprogram(name: "sign_wrapper", scope: !61, file: !61, line: 3, type: !1826, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !2)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !78, !78, !29, !1828, !56}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !1505, line: 205, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1505, line: 182, size: 704, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !1831, file: !1505, line: 184, baseType: !8, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1831, file: !1505, line: 186, baseType: !56, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !1831, file: !1505, line: 188, baseType: !29, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1831, file: !1505, line: 190, baseType: !56, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !1831, file: !1505, line: 192, baseType: !29, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1831, file: !1505, line: 194, baseType: !56, size: 64, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !1831, file: !1505, line: 196, baseType: !29, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !1831, file: !1505, line: 198, baseType: !56, size: 64, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !1831, file: !1505, line: 200, baseType: !29, size: 64, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !1831, file: !1505, line: 202, baseType: !56, size: 64, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !1831, file: !1505, line: 204, baseType: !29, size: 64, offset: 640)
!1844 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !1825, file: !61, line: 3, type: !78)
!1845 = !DILocation(line: 0, scope: !1825)
!1846 = !DILocalVariable(name: "hash", arg: 2, scope: !1825, file: !61, line: 4, type: !78)
!1847 = !DILocalVariable(name: "hash_len", arg: 3, scope: !1825, file: !61, line: 4, type: !29)
!1848 = !DILocalVariable(name: "sk", arg: 4, scope: !1825, file: !61, line: 5, type: !1828)
!1849 = !DILocalVariable(name: "x", arg: 5, scope: !1825, file: !61, line: 5, type: !56)
!1850 = !DILocation(line: 6, column: 12, scope: !1825)
!1851 = !DILocation(line: 6, column: 2, scope: !1825)
!1852 = !DILocation(line: 7, column: 12, scope: !1825)
!1853 = !DILocation(line: 7, column: 2, scope: !1825)
!1854 = !DILocation(line: 8, column: 12, scope: !1825)
!1855 = !DILocation(line: 8, column: 2, scope: !1825)
!1856 = !DILocation(line: 9, column: 12, scope: !1825)
!1857 = !DILocation(line: 9, column: 2, scope: !1825)
!1858 = !DILocation(line: 10, column: 12, scope: !1825)
!1859 = !DILocation(line: 10, column: 2, scope: !1825)
!1860 = !DILocation(line: 12, column: 30, scope: !1825)
!1861 = !DILocation(line: 12, column: 12, scope: !1825)
!1862 = !DILocation(line: 12, column: 2, scope: !1825)
!1863 = !DILocation(line: 13, column: 30, scope: !1825)
!1864 = !DILocation(line: 13, column: 12, scope: !1825)
!1865 = !DILocation(line: 13, column: 2, scope: !1825)
!1866 = !DILocation(line: 14, column: 30, scope: !1825)
!1867 = !DILocation(line: 14, column: 12, scope: !1825)
!1868 = !DILocation(line: 14, column: 2, scope: !1825)
!1869 = !DILocation(line: 15, column: 30, scope: !1825)
!1870 = !DILocation(line: 15, column: 12, scope: !1825)
!1871 = !DILocation(line: 15, column: 2, scope: !1825)
!1872 = !DILocation(line: 16, column: 30, scope: !1825)
!1873 = !DILocation(line: 16, column: 12, scope: !1825)
!1874 = !DILocation(line: 16, column: 2, scope: !1825)
!1875 = !DILocation(line: 18, column: 30, scope: !1825)
!1876 = !DILocation(line: 18, column: 12, scope: !1825)
!1877 = !DILocation(line: 18, column: 2, scope: !1825)
!1878 = !DILocation(line: 19, column: 30, scope: !1825)
!1879 = !DILocation(line: 19, column: 12, scope: !1825)
!1880 = !DILocation(line: 19, column: 2, scope: !1825)
!1881 = !DILocation(line: 20, column: 30, scope: !1825)
!1882 = !DILocation(line: 20, column: 12, scope: !1825)
!1883 = !DILocation(line: 20, column: 2, scope: !1825)
!1884 = !DILocation(line: 21, column: 30, scope: !1825)
!1885 = !DILocation(line: 21, column: 12, scope: !1825)
!1886 = !DILocation(line: 21, column: 2, scope: !1825)
!1887 = !DILocation(line: 22, column: 30, scope: !1825)
!1888 = !DILocation(line: 22, column: 12, scope: !1825)
!1889 = !DILocation(line: 22, column: 2, scope: !1825)
!1890 = !DILocation(line: 23, column: 30, scope: !1825)
!1891 = !DILocation(line: 23, column: 12, scope: !1825)
!1892 = !DILocation(line: 23, column: 2, scope: !1825)
!1893 = !DILocation(line: 24, column: 30, scope: !1825)
!1894 = !DILocation(line: 24, column: 12, scope: !1825)
!1895 = !DILocation(line: 24, column: 2, scope: !1825)
!1896 = !DILocation(line: 26, column: 12, scope: !1825)
!1897 = !DILocation(line: 26, column: 2, scope: !1825)
!1898 = !DILocation(line: 27, column: 12, scope: !1825)
!1899 = !DILocation(line: 27, column: 2, scope: !1825)
!1900 = !DILocation(line: 28, column: 12, scope: !1825)
!1901 = !DILocation(line: 28, column: 2, scope: !1825)
!1902 = !DILocation(line: 31, column: 2, scope: !1825)
!1903 = !DILocation(line: 32, column: 1, scope: !1825)
!1904 = distinct !DISubprogram(name: "sign_wrapper_t", scope: !61, file: !61, line: 50, type: !1905, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !2)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null}
!1907 = !DILocation(line: 52, column: 33, scope: !1904)
!1908 = !DILocalVariable(name: "hash_oid", scope: !1904, file: !61, line: 52, type: !78)
!1909 = !DILocation(line: 0, scope: !1904)
!1910 = !DILocation(line: 53, column: 30, scope: !1904)
!1911 = !DILocalVariable(name: "hash", scope: !1904, file: !61, line: 53, type: !78)
!1912 = !DILocation(line: 54, column: 20, scope: !1904)
!1913 = !DILocalVariable(name: "hash_len", scope: !1904, file: !61, line: 54, type: !29)
!1914 = !DILocalVariable(name: "key", scope: !1904, file: !61, line: 55, type: !1830)
!1915 = !DILocation(line: 55, column: 21, scope: !1904)
!1916 = !DILocation(line: 55, column: 27, scope: !1904)
!1917 = !DILocalVariable(name: "sk", scope: !1904, file: !61, line: 56, type: !1918)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1919 = !DILocation(line: 57, column: 22, scope: !1904)
!1920 = !DILocalVariable(name: "x", scope: !1904, file: !61, line: 57, type: !56)
!1921 = !DILocation(line: 58, column: 24, scope: !1904)
!1922 = !DILocalVariable(name: "p", scope: !1904, file: !61, line: 58, type: !56)
!1923 = !DILocation(line: 59, column: 24, scope: !1904)
!1924 = !DILocalVariable(name: "q", scope: !1904, file: !61, line: 59, type: !56)
!1925 = !DILocation(line: 60, column: 25, scope: !1904)
!1926 = !DILocalVariable(name: "dp", scope: !1904, file: !61, line: 60, type: !56)
!1927 = !DILocation(line: 61, column: 25, scope: !1904)
!1928 = !DILocalVariable(name: "dq", scope: !1904, file: !61, line: 61, type: !56)
!1929 = !DILocation(line: 62, column: 25, scope: !1904)
!1930 = !DILocalVariable(name: "iq", scope: !1904, file: !61, line: 62, type: !56)
!1931 = !DILocation(line: 64, column: 1, scope: !1904)
!1932 = !DILocation(line: 66, column: 5, scope: !1904)
!1933 = !DILocation(line: 66, column: 7, scope: !1904)
!1934 = !DILocation(line: 67, column: 5, scope: !1904)
!1935 = !DILocation(line: 67, column: 7, scope: !1904)
!1936 = !DILocation(line: 68, column: 5, scope: !1904)
!1937 = !DILocation(line: 68, column: 8, scope: !1904)
!1938 = !DILocation(line: 69, column: 5, scope: !1904)
!1939 = !DILocation(line: 69, column: 8, scope: !1904)
!1940 = !DILocation(line: 70, column: 5, scope: !1904)
!1941 = !DILocation(line: 70, column: 8, scope: !1904)
!1942 = !DILocation(line: 71, column: 1, scope: !1904)
!1943 = !DILocation(line: 72, column: 1, scope: !1904)
