; ModuleID = 'sign-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_rsa_private_key = type { i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64 }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !66 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !71, metadata !DIExpression()), !dbg !72, !psr.id !73
  call void @llvm.dbg.value(metadata i8* %1, metadata !74, metadata !DIExpression()), !dbg !72, !psr.id !75
  call void @llvm.dbg.value(metadata i8* %2, metadata !76, metadata !DIExpression()), !dbg !72, !psr.id !77
  call void @llvm.dbg.value(metadata i64 %3, metadata !78, metadata !DIExpression()), !dbg !72, !psr.id !79
  call void @llvm.dbg.value(metadata i8* %1, metadata !80, metadata !DIExpression()), !dbg !72, !psr.id !81
  call void @llvm.dbg.value(metadata i8* %2, metadata !82, metadata !DIExpression()), !dbg !72, !psr.id !85
  br label %5, !dbg !86, !psr.id !87

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ], !psr.id !88, !ValueTainted !89
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !72, !psr.id !90, !PointTainted !91
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !72, !psr.id !92, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %.0, metadata !82, metadata !DIExpression()), !dbg !72, !psr.id !93
  call void @llvm.dbg.value(metadata i8* %.01, metadata !80, metadata !DIExpression()), !dbg !72, !psr.id !94
  call void @llvm.dbg.value(metadata i64 %.02, metadata !78, metadata !DIExpression()), !dbg !72, !psr.id !95
  %6 = add i64 %.02, -1, !dbg !96, !psr.id !97, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %6, metadata !78, metadata !DIExpression()), !dbg !72, !psr.id !98
  %7 = icmp ugt i64 %.02, 0, !dbg !99, !psr.id !100, !ValueTainted !89
  br i1 %7, label %8, label %17, !dbg !86, !psr.id !101, !Tainted !102

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !103, !psr.id !105, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %9, metadata !82, metadata !DIExpression()), !dbg !72, !psr.id !106
  %10 = load i8, i8* %.0, align 1, !dbg !107, !psr.id !108, !ValueTainted !89
  %11 = zext i8 %10 to i32, !dbg !107, !psr.id !109, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %11, metadata !110, metadata !DIExpression()), !dbg !111, !psr.id !112
  %12 = load i8, i8* %.01, align 1, !dbg !113, !psr.id !114, !ValueTainted !89
  %13 = zext i8 %12 to i32, !dbg !113, !psr.id !115, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %13, metadata !116, metadata !DIExpression()), !dbg !111, !psr.id !117
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !118, !psr.id !119, !ValueTainted !89
  %15 = trunc i32 %14 to i8, !dbg !118, !psr.id !120, !ValueTainted !89
  store i8 %15, i8* %.01, align 1, !dbg !121, !psr.id !122
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !123, !psr.id !124, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %16, metadata !80, metadata !DIExpression()), !dbg !72, !psr.id !125
  br label %5, !dbg !86, !llvm.loop !126, !psr.id !129

17:                                               ; preds = %5
  ret void, !dbg !130, !psr.id !131
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !132 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !136, metadata !DIExpression()), !dbg !137, !psr.id !138
  call void @llvm.dbg.value(metadata i32 %1, metadata !139, metadata !DIExpression()), !dbg !137, !psr.id !140
  call void @llvm.dbg.value(metadata i32 %2, metadata !141, metadata !DIExpression()), !dbg !137, !psr.id !142
  %4 = sub i32 0, %0, !dbg !143, !psr.id !144, !ValueTainted !89
  %5 = xor i32 %1, %2, !dbg !145, !psr.id !146, !ValueTainted !89
  %6 = and i32 %4, %5, !dbg !147, !psr.id !148, !ValueTainted !89
  %7 = xor i32 %2, %6, !dbg !149, !psr.id !150, !ValueTainted !89
  ret i32 %7, !dbg !151, !psr.id !152
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_add(i16* %0, i16* %1, i32 %2) #0 !dbg !153 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !162, metadata !DIExpression()), !dbg !163, !psr.id !164
  call void @llvm.dbg.value(metadata i16* %1, metadata !165, metadata !DIExpression()), !dbg !163, !psr.id !166
  call void @llvm.dbg.value(metadata i32 %2, metadata !167, metadata !DIExpression()), !dbg !163, !psr.id !168
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !163, !psr.id !170
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !171, !psr.id !172, !PointTainted !91
  %5 = load i16, i16* %4, align 2, !dbg !171, !psr.id !173, !ValueTainted !89
  %6 = zext i16 %5 to i32, !dbg !171, !psr.id !174, !ValueTainted !89
  %7 = add nsw i32 %6, 31, !dbg !175, !psr.id !176, !ValueTainted !89
  %8 = ashr i32 %7, 4, !dbg !177, !psr.id !178, !ValueTainted !89
  %9 = sext i32 %8 to i64, !dbg !179, !psr.id !180, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %9, metadata !181, metadata !DIExpression()), !dbg !163, !psr.id !182
  call void @llvm.dbg.value(metadata i64 1, metadata !183, metadata !DIExpression()), !dbg !163, !psr.id !184
  br label %10, !dbg !185, !psr.id !187

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !163, !psr.id !188, !ValueTainted !89
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !189, !psr.id !190
  call void @llvm.dbg.value(metadata i64 %.0, metadata !183, metadata !DIExpression()), !dbg !163, !psr.id !191
  call void @llvm.dbg.value(metadata i32 %.01, metadata !169, metadata !DIExpression()), !dbg !163, !psr.id !192
  %11 = icmp ult i64 %.0, %9, !dbg !193, !psr.id !195, !ValueTainted !89
  br i1 %11, label %12, label %28, !dbg !196, !psr.id !197, !Tainted !102

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !198, !psr.id !200, !PointTainted !91
  %14 = load i16, i16* %13, align 2, !dbg !198, !psr.id !201, !ValueTainted !89
  %15 = zext i16 %14 to i32, !dbg !198, !psr.id !202, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %15, metadata !203, metadata !DIExpression()), !dbg !204, !psr.id !205
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !206, !psr.id !207
  %17 = load i16, i16* %16, align 2, !dbg !206, !psr.id !208, !ValueTainted !89
  %18 = zext i16 %17 to i32, !dbg !206, !psr.id !209, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %18, metadata !210, metadata !DIExpression()), !dbg !204, !psr.id !211
  %19 = add i32 %15, %18, !dbg !212, !psr.id !213, !ValueTainted !89
  %20 = add i32 %19, %.01, !dbg !214, !psr.id !215, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %20, metadata !216, metadata !DIExpression()), !dbg !204, !psr.id !217
  %21 = lshr i32 %20, 15, !dbg !218, !psr.id !219, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %21, metadata !169, metadata !DIExpression()), !dbg !163, !psr.id !220
  %22 = and i32 %20, 32767, !dbg !221, !psr.id !222, !ValueTainted !89
  %23 = call i32 @MUX.1(i32 %2, i32 %22, i32 %15), !dbg !223, !psr.id !224, !ValueTainted !89
  %24 = trunc i32 %23 to i16, !dbg !223, !psr.id !225, !ValueTainted !89
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !226, !psr.id !227, !PointTainted !91
  store i16 %24, i16* %25, align 2, !dbg !228, !psr.id !229
  br label %26, !dbg !230, !psr.id !231

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !232, !psr.id !233
  call void @llvm.dbg.value(metadata i64 %27, metadata !183, metadata !DIExpression()), !dbg !163, !psr.id !234
  br label %10, !dbg !235, !llvm.loop !236, !psr.id !238

28:                                               ; preds = %10
  ret i32 %.01, !dbg !239, !psr.id !240
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.1(i32 %0, i32 %1, i32 %2) #0 !dbg !241 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !242, metadata !DIExpression()), !dbg !243, !psr.id !244
  call void @llvm.dbg.value(metadata i32 %1, metadata !245, metadata !DIExpression()), !dbg !243, !psr.id !246
  call void @llvm.dbg.value(metadata i32 %2, metadata !247, metadata !DIExpression()), !dbg !243, !psr.id !248
  %4 = sub i32 0, %0, !dbg !249, !psr.id !250, !ValueTainted !89
  %5 = xor i32 %1, %2, !dbg !251, !psr.id !252, !ValueTainted !89
  %6 = and i32 %4, %5, !dbg !253, !psr.id !254, !ValueTainted !89
  %7 = xor i32 %2, %6, !dbg !255, !psr.id !256, !ValueTainted !89
  ret i32 %7, !dbg !257, !psr.id !258
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_bit_length(i16* %0, i64 %1) #0 !dbg !259 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !262, metadata !DIExpression()), !dbg !263, !psr.id !264
  call void @llvm.dbg.value(metadata i64 %1, metadata !265, metadata !DIExpression()), !dbg !263, !psr.id !266
  call void @llvm.dbg.value(metadata i32 0, metadata !267, metadata !DIExpression()), !dbg !263, !psr.id !268
  call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression()), !dbg !263, !psr.id !270
  br label %3, !dbg !271, !psr.id !272

3:                                                ; preds = %6, %2
  %.02 = phi i32 [ 0, %2 ], [ %11, %6 ], !dbg !263, !psr.id !273, !ValueTainted !89
  %.01 = phi i64 [ %1, %2 ], [ %4, %6 ], !psr.id !274
  %.0 = phi i32 [ 0, %2 ], [ %13, %6 ], !dbg !263, !psr.id !275, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.0, metadata !269, metadata !DIExpression()), !dbg !263, !psr.id !276
  call void @llvm.dbg.value(metadata i64 %.01, metadata !265, metadata !DIExpression()), !dbg !263, !psr.id !277
  call void @llvm.dbg.value(metadata i32 %.02, metadata !267, metadata !DIExpression()), !dbg !263, !psr.id !278
  %4 = add i64 %.01, -1, !dbg !279, !psr.id !280
  call void @llvm.dbg.value(metadata i64 %4, metadata !265, metadata !DIExpression()), !dbg !263, !psr.id !281
  %5 = icmp ugt i64 %.01, 0, !dbg !282, !psr.id !283
  br i1 %5, label %6, label %14, !dbg !271, !psr.id !284

6:                                                ; preds = %3
  %7 = call i32 @EQ(i32 %.02, i32 0), !dbg !285, !psr.id !287, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %7, metadata !288, metadata !DIExpression()), !dbg !289, !psr.id !290
  %8 = getelementptr inbounds i16, i16* %0, i64 %4, !dbg !291, !psr.id !292, !PointTainted !91
  %9 = load i16, i16* %8, align 2, !dbg !291, !psr.id !293, !ValueTainted !89
  %10 = zext i16 %9 to i32, !dbg !291, !psr.id !294, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %10, metadata !295, metadata !DIExpression()), !dbg !289, !psr.id !296
  %11 = call i32 @MUX.2(i32 %7, i32 %10, i32 %.02), !dbg !297, !psr.id !298, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %11, metadata !267, metadata !DIExpression()), !dbg !263, !psr.id !299
  %12 = trunc i64 %4 to i32, !dbg !300, !psr.id !301
  %13 = call i32 @MUX.2(i32 %7, i32 %12, i32 %.0), !dbg !302, !psr.id !303, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %13, metadata !269, metadata !DIExpression()), !dbg !263, !psr.id !304
  br label %3, !dbg !271, !llvm.loop !305, !psr.id !307

14:                                               ; preds = %3
  %15 = shl i32 %.0, 4, !dbg !308, !psr.id !309, !ValueTainted !89
  %16 = call i32 @BIT_LENGTH(i32 %.02), !dbg !310, !psr.id !311, !ValueTainted !89
  %17 = add i32 %15, %16, !dbg !312, !psr.id !313, !ValueTainted !89
  ret i32 %17, !dbg !314, !psr.id !315
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !316 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !319, metadata !DIExpression()), !dbg !320, !psr.id !321
  call void @llvm.dbg.value(metadata i32 %1, metadata !322, metadata !DIExpression()), !dbg !320, !psr.id !323
  %3 = xor i32 %0, %1, !dbg !324, !psr.id !325, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !326, metadata !DIExpression()), !dbg !320, !psr.id !327
  %4 = sub i32 0, %3, !dbg !328, !psr.id !329, !ValueTainted !89
  %5 = or i32 %3, %4, !dbg !330, !psr.id !331, !ValueTainted !89
  %6 = lshr i32 %5, 31, !dbg !332, !psr.id !333, !ValueTainted !89
  %7 = call i32 @NOT(i32 %6), !dbg !334, !psr.id !335, !ValueTainted !89
  ret i32 %7, !dbg !336, !psr.id !337
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.2(i32 %0, i32 %1, i32 %2) #0 !dbg !338 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !339, metadata !DIExpression()), !dbg !340, !psr.id !341
  call void @llvm.dbg.value(metadata i32 %1, metadata !342, metadata !DIExpression()), !dbg !340, !psr.id !343
  call void @llvm.dbg.value(metadata i32 %2, metadata !344, metadata !DIExpression()), !dbg !340, !psr.id !345
  %4 = sub i32 0, %0, !dbg !346, !psr.id !347, !ValueTainted !89
  %5 = xor i32 %1, %2, !dbg !348, !psr.id !349, !ValueTainted !89
  %6 = and i32 %4, %5, !dbg !350, !psr.id !351, !ValueTainted !89
  %7 = xor i32 %2, %6, !dbg !352, !psr.id !353, !ValueTainted !89
  ret i32 %7, !dbg !354, !psr.id !355
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @BIT_LENGTH(i32 %0) #0 !dbg !356 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !359, metadata !DIExpression()), !dbg !360, !psr.id !361
  %2 = call i32 @NEQ(i32 %0, i32 0), !dbg !362, !psr.id !363, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %2, metadata !364, metadata !DIExpression()), !dbg !360, !psr.id !365
  %3 = call i32 @GT(i32 %0, i32 65535), !dbg !366, !psr.id !367, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !368, metadata !DIExpression()), !dbg !360, !psr.id !369
  %4 = lshr i32 %0, 16, !dbg !370, !psr.id !371, !ValueTainted !89
  %5 = call i32 @MUX.2(i32 %3, i32 %4, i32 %0), !dbg !372, !psr.id !373, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %5, metadata !359, metadata !DIExpression()), !dbg !360, !psr.id !374
  %6 = shl i32 %3, 4, !dbg !375, !psr.id !376, !ValueTainted !89
  %7 = add i32 %2, %6, !dbg !377, !psr.id !378, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %7, metadata !364, metadata !DIExpression()), !dbg !360, !psr.id !379
  %8 = call i32 @GT(i32 %5, i32 255), !dbg !380, !psr.id !381, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %8, metadata !368, metadata !DIExpression()), !dbg !360, !psr.id !382
  %9 = lshr i32 %5, 8, !dbg !383, !psr.id !384, !ValueTainted !89
  %10 = call i32 @MUX.2(i32 %8, i32 %9, i32 %5), !dbg !385, !psr.id !386, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %10, metadata !359, metadata !DIExpression()), !dbg !360, !psr.id !387
  %11 = shl i32 %8, 3, !dbg !388, !psr.id !389, !ValueTainted !89
  %12 = add i32 %7, %11, !dbg !390, !psr.id !391, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %12, metadata !364, metadata !DIExpression()), !dbg !360, !psr.id !392
  %13 = call i32 @GT(i32 %10, i32 15), !dbg !393, !psr.id !394, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %13, metadata !368, metadata !DIExpression()), !dbg !360, !psr.id !395
  %14 = lshr i32 %10, 4, !dbg !396, !psr.id !397, !ValueTainted !89
  %15 = call i32 @MUX.2(i32 %13, i32 %14, i32 %10), !dbg !398, !psr.id !399, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %15, metadata !359, metadata !DIExpression()), !dbg !360, !psr.id !400
  %16 = shl i32 %13, 2, !dbg !401, !psr.id !402, !ValueTainted !89
  %17 = add i32 %12, %16, !dbg !403, !psr.id !404, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %17, metadata !364, metadata !DIExpression()), !dbg !360, !psr.id !405
  %18 = call i32 @GT(i32 %15, i32 3), !dbg !406, !psr.id !407, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %18, metadata !368, metadata !DIExpression()), !dbg !360, !psr.id !408
  %19 = lshr i32 %15, 2, !dbg !409, !psr.id !410, !ValueTainted !89
  %20 = call i32 @MUX.2(i32 %18, i32 %19, i32 %15), !dbg !411, !psr.id !412, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %20, metadata !359, metadata !DIExpression()), !dbg !360, !psr.id !413
  %21 = shl i32 %18, 1, !dbg !414, !psr.id !415, !ValueTainted !89
  %22 = add i32 %17, %21, !dbg !416, !psr.id !417, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %22, metadata !364, metadata !DIExpression()), !dbg !360, !psr.id !418
  %23 = call i32 @GT(i32 %20, i32 1), !dbg !419, !psr.id !420, !ValueTainted !89
  %24 = add i32 %22, %23, !dbg !421, !psr.id !422, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %24, metadata !364, metadata !DIExpression()), !dbg !360, !psr.id !423
  ret i32 %24, !dbg !424, !psr.id !425
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !427, metadata !DIExpression()), !dbg !428, !psr.id !429
  call void @llvm.dbg.value(metadata i32 %1, metadata !430, metadata !DIExpression()), !dbg !428, !psr.id !431
  %3 = xor i32 %0, %1, !dbg !432, !psr.id !433, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !434, metadata !DIExpression()), !dbg !428, !psr.id !435
  %4 = sub i32 0, %3, !dbg !436, !psr.id !437, !ValueTainted !89
  %5 = or i32 %3, %4, !dbg !438, !psr.id !439, !ValueTainted !89
  %6 = lshr i32 %5, 31, !dbg !440, !psr.id !441, !ValueTainted !89
  ret i32 %6, !dbg !442, !psr.id !443
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !444 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !445, metadata !DIExpression()), !dbg !446, !psr.id !447
  call void @llvm.dbg.value(metadata i32 %1, metadata !448, metadata !DIExpression()), !dbg !446, !psr.id !449
  %3 = sub i32 %1, %0, !dbg !450, !psr.id !451, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !452, metadata !DIExpression()), !dbg !446, !psr.id !453
  %4 = xor i32 %0, %1, !dbg !454, !psr.id !455, !ValueTainted !89
  %5 = xor i32 %0, %3, !dbg !456, !psr.id !457, !ValueTainted !89
  %6 = and i32 %4, %5, !dbg !458, !psr.id !459, !ValueTainted !89
  %7 = xor i32 %3, %6, !dbg !460, !psr.id !461, !ValueTainted !89
  %8 = lshr i32 %7, 31, !dbg !462, !psr.id !463, !ValueTainted !89
  ret i32 %8, !dbg !464, !psr.id !465
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !467, metadata !DIExpression()), !dbg !468, !psr.id !469
  %2 = xor i32 %0, 1, !dbg !470, !psr.id !471, !ValueTainted !89
  ret i32 %2, !dbg !472, !psr.id !473
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_decode(i16* %0, i8* %1, i64 %2) #0 !dbg !474 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !477, metadata !DIExpression()), !dbg !478, !psr.id !479
  call void @llvm.dbg.value(metadata i8* %1, metadata !480, metadata !DIExpression()), !dbg !478, !psr.id !481
  call void @llvm.dbg.value(metadata i64 %2, metadata !482, metadata !DIExpression()), !dbg !478, !psr.id !483
  call void @llvm.dbg.value(metadata i8* %1, metadata !484, metadata !DIExpression()), !dbg !478, !psr.id !485
  call void @llvm.dbg.value(metadata i64 1, metadata !486, metadata !DIExpression()), !dbg !478, !psr.id !487
  call void @llvm.dbg.value(metadata i32 0, metadata !488, metadata !DIExpression()), !dbg !478, !psr.id !489
  call void @llvm.dbg.value(metadata i32 0, metadata !490, metadata !DIExpression()), !dbg !478, !psr.id !492
  br label %4, !dbg !493, !psr.id !494

4:                                                ; preds = %22, %3
  %.04 = phi i64 [ 1, %3 ], [ %.15, %22 ], !dbg !478, !psr.id !495
  %.03 = phi i64 [ %2, %3 ], [ %5, %22 ], !psr.id !496, !ValueTainted !89
  %.01 = phi i32 [ 0, %3 ], [ %.12, %22 ], !dbg !478, !psr.id !497, !ValueTainted !89
  %.0 = phi i32 [ 0, %3 ], [ %.1, %22 ], !dbg !478, !psr.id !498
  call void @llvm.dbg.value(metadata i32 %.0, metadata !490, metadata !DIExpression()), !dbg !478, !psr.id !499
  call void @llvm.dbg.value(metadata i32 %.01, metadata !488, metadata !DIExpression()), !dbg !478, !psr.id !500
  call void @llvm.dbg.value(metadata i64 %.03, metadata !482, metadata !DIExpression()), !dbg !478, !psr.id !501
  call void @llvm.dbg.value(metadata i64 %.04, metadata !486, metadata !DIExpression()), !dbg !478, !psr.id !502
  %5 = add i64 %.03, -1, !dbg !503, !psr.id !504, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %5, metadata !482, metadata !DIExpression()), !dbg !478, !psr.id !505
  %6 = icmp ugt i64 %.03, 0, !dbg !506, !psr.id !507, !ValueTainted !89
  br i1 %6, label %7, label %23, !dbg !493, !psr.id !508, !Tainted !102

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !509, !psr.id !511, !ValueTainted !89, !PointTainted !91
  %9 = load i8, i8* %8, align 1, !dbg !509, !psr.id !512, !Tainted !102, !ValueTainted !89
  %10 = zext i8 %9 to i32, !dbg !509, !psr.id !513, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %10, metadata !514, metadata !DIExpression()), !dbg !515, !psr.id !516
  %11 = shl i32 %10, %.0, !dbg !517, !psr.id !518, !ValueTainted !89
  %12 = or i32 %.01, %11, !dbg !519, !psr.id !520, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %12, metadata !488, metadata !DIExpression()), !dbg !478, !psr.id !521
  %13 = add nsw i32 %.0, 8, !dbg !522, !psr.id !523
  call void @llvm.dbg.value(metadata i32 %13, metadata !490, metadata !DIExpression()), !dbg !478, !psr.id !524
  %14 = icmp sge i32 %13, 15, !dbg !525, !psr.id !527
  br i1 %14, label %15, label %22, !dbg !528, !psr.id !529

15:                                               ; preds = %7
  %16 = and i32 %12, 32767, !dbg !530, !psr.id !532, !ValueTainted !89
  %17 = trunc i32 %16 to i16, !dbg !533, !psr.id !534, !ValueTainted !89
  %18 = add i64 %.04, 1, !dbg !535, !psr.id !536
  call void @llvm.dbg.value(metadata i64 %18, metadata !486, metadata !DIExpression()), !dbg !478, !psr.id !537
  %19 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !538, !psr.id !539, !PointTainted !91
  store i16 %17, i16* %19, align 2, !dbg !540, !psr.id !541
  %20 = sub nsw i32 %13, 15, !dbg !542, !psr.id !543
  call void @llvm.dbg.value(metadata i32 %20, metadata !490, metadata !DIExpression()), !dbg !478, !psr.id !544
  %21 = lshr i32 %12, 15, !dbg !545, !psr.id !546, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %21, metadata !488, metadata !DIExpression()), !dbg !478, !psr.id !547
  br label %22, !dbg !548, !psr.id !549

22:                                               ; preds = %15, %7
  %.15 = phi i64 [ %18, %15 ], [ %.04, %7 ], !dbg !478, !psr.id !550
  %.12 = phi i32 [ %21, %15 ], [ %12, %7 ], !dbg !515, !psr.id !551, !ValueTainted !89
  %.1 = phi i32 [ %20, %15 ], [ %13, %7 ], !dbg !515, !psr.id !552
  call void @llvm.dbg.value(metadata i32 %.1, metadata !490, metadata !DIExpression()), !dbg !478, !psr.id !553
  call void @llvm.dbg.value(metadata i32 %.12, metadata !488, metadata !DIExpression()), !dbg !478, !psr.id !554
  call void @llvm.dbg.value(metadata i64 %.15, metadata !486, metadata !DIExpression()), !dbg !478, !psr.id !555
  br label %4, !dbg !493, !llvm.loop !556, !psr.id !558

23:                                               ; preds = %4
  %24 = icmp ne i32 %.0, 0, !dbg !559, !psr.id !561
  br i1 %24, label %25, label %29, !dbg !562, !psr.id !563

25:                                               ; preds = %23
  %26 = trunc i32 %.01 to i16, !dbg !564, !psr.id !566, !ValueTainted !89
  %27 = add i64 %.04, 1, !dbg !567, !psr.id !568
  call void @llvm.dbg.value(metadata i64 %27, metadata !486, metadata !DIExpression()), !dbg !478, !psr.id !569
  %28 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !570, !psr.id !571, !PointTainted !91
  store i16 %26, i16* %28, align 2, !dbg !572, !psr.id !573
  br label %29, !dbg !574, !psr.id !575

29:                                               ; preds = %25, %23
  %.2 = phi i64 [ %27, %25 ], [ %.04, %23 ], !dbg !478, !psr.id !576
  call void @llvm.dbg.value(metadata i64 %.2, metadata !486, metadata !DIExpression()), !dbg !478, !psr.id !577
  %30 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !578, !psr.id !579, !PointTainted !91
  %31 = sub i64 %.2, 1, !dbg !580, !psr.id !581
  %32 = call i32 @br_i15_bit_length(i16* %30, i64 %31), !dbg !582, !psr.id !583, !ValueTainted !89
  %33 = trunc i32 %32 to i16, !dbg !582, !psr.id !584, !ValueTainted !89
  %34 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !585, !psr.id !586, !PointTainted !91
  store i16 %33, i16* %34, align 2, !dbg !587, !psr.id !588
  ret void, !dbg !589, !psr.id !590
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_decode_reduce(i16* %0, i8* %1, i64 %2, i16* %3) #0 !dbg !591 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !594, metadata !DIExpression()), !dbg !595, !psr.id !596
  call void @llvm.dbg.value(metadata i8* %1, metadata !597, metadata !DIExpression()), !dbg !595, !psr.id !598
  call void @llvm.dbg.value(metadata i64 %2, metadata !599, metadata !DIExpression()), !dbg !595, !psr.id !600
  call void @llvm.dbg.value(metadata i16* %3, metadata !601, metadata !DIExpression()), !dbg !595, !psr.id !602
  %5 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !603, !psr.id !604
  %6 = load i16, i16* %5, align 2, !dbg !603, !psr.id !605, !ValueTainted !89
  %7 = zext i16 %6 to i32, !dbg !603, !psr.id !606, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %7, metadata !607, metadata !DIExpression()), !dbg !595, !psr.id !608
  %8 = icmp eq i32 %7, 0, !dbg !609, !psr.id !611, !ValueTainted !89
  br i1 %8, label %9, label %11, !dbg !612, !psr.id !613, !Tainted !102

9:                                                ; preds = %4
  %10 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !614, !psr.id !616
  store i16 0, i16* %10, align 2, !dbg !617, !psr.id !618
  br label %60, !dbg !619, !psr.id !620

11:                                               ; preds = %4
  %12 = trunc i32 %7 to i16, !dbg !621, !psr.id !622, !ValueTainted !89
  call void @br_i15_zero(i16* %0, i16 zeroext %12), !dbg !623, !psr.id !624
  %13 = lshr i32 %7, 4, !dbg !625, !psr.id !626, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %13, metadata !627, metadata !DIExpression()), !dbg !595, !psr.id !628
  %14 = and i32 %7, 15, !dbg !629, !psr.id !630, !ValueTainted !89
  %15 = shl i32 %13, 4, !dbg !631, !psr.id !632, !ValueTainted !89
  %16 = add i32 %14, %15, !dbg !633, !psr.id !634, !ValueTainted !89
  %17 = sub i32 %16, %13, !dbg !635, !psr.id !636, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %17, metadata !627, metadata !DIExpression()), !dbg !595, !psr.id !637
  %18 = add i32 %17, 7, !dbg !638, !psr.id !639, !ValueTainted !89
  %19 = lshr i32 %18, 3, !dbg !640, !psr.id !641, !ValueTainted !89
  %20 = zext i32 %19 to i64, !dbg !642, !psr.id !643, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %20, metadata !644, metadata !DIExpression()), !dbg !595, !psr.id !645
  %21 = sub i64 %20, 1, !dbg !646, !psr.id !647, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %21, metadata !648, metadata !DIExpression()), !dbg !595, !psr.id !649
  %22 = icmp uge i64 %21, %2, !dbg !650, !psr.id !652, !ValueTainted !89
  br i1 %22, label %23, label %26, !dbg !653, !psr.id !654, !Tainted !102

23:                                               ; preds = %11
  call void @br_i15_decode(i16* %0, i8* %1, i64 %2), !dbg !655, !psr.id !657
  %24 = trunc i32 %7 to i16, !dbg !658, !psr.id !659, !ValueTainted !89
  %25 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !660, !psr.id !661, !PointTainted !91
  store i16 %24, i16* %25, align 2, !dbg !662, !psr.id !663
  br label %60, !dbg !664, !psr.id !665

26:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* %1, metadata !666, metadata !DIExpression()), !dbg !595, !psr.id !667
  call void @br_i15_decode(i16* %0, i8* %1, i64 %21), !dbg !668, !psr.id !669
  %27 = trunc i32 %7 to i16, !dbg !670, !psr.id !671, !ValueTainted !89
  %28 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !672, !psr.id !673, !PointTainted !91
  store i16 %27, i16* %28, align 2, !dbg !674, !psr.id !675
  call void @llvm.dbg.value(metadata i32 0, metadata !676, metadata !DIExpression()), !dbg !595, !psr.id !677
  call void @llvm.dbg.value(metadata i32 0, metadata !678, metadata !DIExpression()), !dbg !595, !psr.id !679
  br label %29, !dbg !680, !psr.id !681

29:                                               ; preds = %48, %26
  %.03 = phi i64 [ %21, %26 ], [ %32, %48 ], !dbg !595, !psr.id !682, !ValueTainted !89
  %.01 = phi i32 [ 0, %26 ], [ %.12, %48 ], !dbg !595, !psr.id !683, !ValueTainted !89
  %.0 = phi i32 [ 0, %26 ], [ %.1, %48 ], !dbg !595, !psr.id !684
  call void @llvm.dbg.value(metadata i32 %.0, metadata !678, metadata !DIExpression()), !dbg !595, !psr.id !685
  call void @llvm.dbg.value(metadata i32 %.01, metadata !676, metadata !DIExpression()), !dbg !595, !psr.id !686
  call void @llvm.dbg.value(metadata i64 %.03, metadata !648, metadata !DIExpression()), !dbg !595, !psr.id !687
  %30 = icmp ult i64 %.03, %2, !dbg !688, !psr.id !689, !ValueTainted !89
  br i1 %30, label %31, label %49, !dbg !680, !psr.id !690, !Tainted !102

31:                                               ; preds = %29
  %32 = add i64 %.03, 1, !dbg !691, !psr.id !693, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %32, metadata !648, metadata !DIExpression()), !dbg !595, !psr.id !694
  %33 = getelementptr inbounds i8, i8* %1, i64 %.03, !dbg !695, !psr.id !696, !ValueTainted !89, !PointTainted !91
  %34 = load i8, i8* %33, align 1, !dbg !695, !psr.id !697, !Tainted !102, !ValueTainted !89
  %35 = zext i8 %34 to i32, !dbg !695, !psr.id !698, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %35, metadata !699, metadata !DIExpression()), !dbg !700, !psr.id !701
  %36 = shl i32 %.01, 8, !dbg !702, !psr.id !703, !ValueTainted !89
  %37 = or i32 %36, %35, !dbg !704, !psr.id !705, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %37, metadata !676, metadata !DIExpression()), !dbg !595, !psr.id !706
  %38 = add nsw i32 %.0, 8, !dbg !707, !psr.id !708
  call void @llvm.dbg.value(metadata i32 %38, metadata !678, metadata !DIExpression()), !dbg !595, !psr.id !709
  %39 = icmp sge i32 %38, 15, !dbg !710, !psr.id !712
  br i1 %39, label %40, label %48, !dbg !713, !psr.id !714

40:                                               ; preds = %31
  %41 = sub nsw i32 %38, 15, !dbg !715, !psr.id !717
  %42 = lshr i32 %37, %41, !dbg !718, !psr.id !719, !ValueTainted !89
  %43 = trunc i32 %42 to i16, !dbg !720, !psr.id !721, !ValueTainted !89
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %43, i16* %3), !dbg !722, !psr.id !723
  %44 = sub nsw i32 %38, 15, !dbg !724, !psr.id !725
  call void @llvm.dbg.value(metadata i32 %44, metadata !678, metadata !DIExpression()), !dbg !595, !psr.id !726
  %45 = shl i32 -1, %44, !dbg !727, !psr.id !728
  %46 = xor i32 %45, -1, !dbg !729, !psr.id !730
  %47 = and i32 %37, %46, !dbg !731, !psr.id !732, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %47, metadata !676, metadata !DIExpression()), !dbg !595, !psr.id !733
  br label %48, !dbg !734, !psr.id !735

48:                                               ; preds = %40, %31
  %.12 = phi i32 [ %47, %40 ], [ %37, %31 ], !dbg !700, !psr.id !736, !ValueTainted !89
  %.1 = phi i32 [ %44, %40 ], [ %38, %31 ], !dbg !700, !psr.id !737
  call void @llvm.dbg.value(metadata i32 %.1, metadata !678, metadata !DIExpression()), !dbg !595, !psr.id !738
  call void @llvm.dbg.value(metadata i32 %.12, metadata !676, metadata !DIExpression()), !dbg !595, !psr.id !739
  br label %29, !dbg !680, !llvm.loop !740, !psr.id !742

49:                                               ; preds = %29
  %50 = icmp ne i32 %.0, 0, !dbg !743, !psr.id !745
  br i1 %50, label %51, label %60, !dbg !746, !psr.id !747

51:                                               ; preds = %49
  %52 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !748, !psr.id !750, !PointTainted !91
  %53 = load i16, i16* %52, align 2, !dbg !748, !psr.id !751, !ValueTainted !89
  %54 = zext i16 %53 to i32, !dbg !748, !psr.id !752, !ValueTainted !89
  %55 = shl i32 %54, %.0, !dbg !753, !psr.id !754, !ValueTainted !89
  %56 = or i32 %.01, %55, !dbg !755, !psr.id !756, !ValueTainted !89
  %57 = and i32 %56, 32767, !dbg !757, !psr.id !758, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %57, metadata !676, metadata !DIExpression()), !dbg !595, !psr.id !759
  %58 = sub nsw i32 15, %.0, !dbg !760, !psr.id !761
  call void @br_i15_rshift(i16* %0, i32 %58), !dbg !762, !psr.id !763
  %59 = trunc i32 %57 to i16, !dbg !764, !psr.id !765, !ValueTainted !89
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %59, i16* %3), !dbg !766, !psr.id !767
  br label %60, !dbg !768, !psr.id !769

60:                                               ; preds = %51, %49, %23, %9
  ret void, !dbg !770, !psr.id !771
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero(i16* %0, i16 zeroext %1) #0 !dbg !772 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !775, metadata !DIExpression()), !dbg !776, !psr.id !777
  call void @llvm.dbg.value(metadata i16 %1, metadata !778, metadata !DIExpression()), !dbg !776, !psr.id !779
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !780, !psr.id !781
  call void @llvm.dbg.value(metadata i16* %3, metadata !775, metadata !DIExpression()), !dbg !776, !psr.id !782
  store i16 %1, i16* %0, align 2, !dbg !783, !psr.id !784
  %4 = bitcast i16* %3 to i8*, !dbg !785, !psr.id !786
  %5 = zext i16 %1 to i32, !dbg !787, !psr.id !788, !ValueTainted !89
  %6 = add nsw i32 %5, 15, !dbg !789, !psr.id !790, !ValueTainted !89
  %7 = ashr i32 %6, 4, !dbg !791, !psr.id !792, !ValueTainted !89
  %8 = sext i32 %7 to i64, !dbg !793, !psr.id !794, !ValueTainted !89
  %9 = mul i64 %8, 2, !dbg !795, !psr.id !796, !ValueTainted !89
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !785, !psr.id !797, !CalledTainted !798
  ret void, !dbg !799, !psr.id !800
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_encode(i8* %0, i64 %1, i16* %2) #0 !dbg !801 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !804, metadata !DIExpression()), !dbg !805, !psr.id !806
  call void @llvm.dbg.value(metadata i64 %1, metadata !807, metadata !DIExpression()), !dbg !805, !psr.id !808
  call void @llvm.dbg.value(metadata i16* %2, metadata !809, metadata !DIExpression()), !dbg !805, !psr.id !810
  %4 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !811, !psr.id !812, !PointTainted !91
  %5 = load i16, i16* %4, align 2, !dbg !811, !psr.id !813, !ValueTainted !89
  %6 = zext i16 %5 to i32, !dbg !811, !psr.id !814, !ValueTainted !89
  %7 = add nsw i32 %6, 15, !dbg !815, !psr.id !816, !ValueTainted !89
  %8 = ashr i32 %7, 4, !dbg !817, !psr.id !818, !ValueTainted !89
  %9 = sext i32 %8 to i64, !dbg !819, !psr.id !820, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %9, metadata !821, metadata !DIExpression()), !dbg !805, !psr.id !822
  %10 = icmp eq i64 %9, 0, !dbg !823, !psr.id !825, !ValueTainted !89
  br i1 %10, label %11, label %12, !dbg !826, !psr.id !827, !Tainted !102

11:                                               ; preds = %3
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !828, !psr.id !830, !CalledTainted !831
  br label %34, !dbg !832, !psr.id !833

12:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i64 1, metadata !834, metadata !DIExpression()), !dbg !805, !psr.id !835
  call void @llvm.dbg.value(metadata i32 0, metadata !836, metadata !DIExpression()), !dbg !805, !psr.id !837
  call void @llvm.dbg.value(metadata i32 0, metadata !838, metadata !DIExpression()), !dbg !805, !psr.id !839
  call void @llvm.dbg.value(metadata i8* %0, metadata !840, metadata !DIExpression()), !dbg !805, !psr.id !841
  br label %13, !dbg !842, !psr.id !843

13:                                               ; preds = %29, %12
  %.04 = phi i64 [ 1, %12 ], [ %.26, %29 ], !dbg !805, !psr.id !844
  %.02 = phi i32 [ 0, %12 ], [ %32, %29 ], !dbg !805, !psr.id !845, !ValueTainted !89
  %.01 = phi i64 [ %1, %12 ], [ %14, %29 ], !psr.id !846
  %.0 = phi i32 [ 0, %12 ], [ %33, %29 ], !dbg !805, !psr.id !847
  call void @llvm.dbg.value(metadata i32 %.0, metadata !838, metadata !DIExpression()), !dbg !805, !psr.id !848
  call void @llvm.dbg.value(metadata i64 %.01, metadata !807, metadata !DIExpression()), !dbg !805, !psr.id !849
  call void @llvm.dbg.value(metadata i32 %.02, metadata !836, metadata !DIExpression()), !dbg !805, !psr.id !850
  call void @llvm.dbg.value(metadata i64 %.04, metadata !834, metadata !DIExpression()), !dbg !805, !psr.id !851
  %14 = add i64 %.01, -1, !dbg !852, !psr.id !853
  call void @llvm.dbg.value(metadata i64 %14, metadata !807, metadata !DIExpression()), !dbg !805, !psr.id !854
  %15 = icmp ugt i64 %.01, 0, !dbg !855, !psr.id !856
  br i1 %15, label %16, label %34, !dbg !842, !psr.id !857

16:                                               ; preds = %13
  %17 = icmp slt i32 %.0, 8, !dbg !858, !psr.id !861
  br i1 %17, label %18, label %29, !dbg !862, !psr.id !863

18:                                               ; preds = %16
  %19 = icmp ule i64 %.04, %9, !dbg !864, !psr.id !867, !ValueTainted !89
  br i1 %19, label %20, label %27, !dbg !868, !psr.id !869, !Tainted !102

20:                                               ; preds = %18
  %21 = add i64 %.04, 1, !dbg !870, !psr.id !872
  call void @llvm.dbg.value(metadata i64 %21, metadata !834, metadata !DIExpression()), !dbg !805, !psr.id !873
  %22 = getelementptr inbounds i16, i16* %2, i64 %.04, !dbg !874, !psr.id !875, !PointTainted !91
  %23 = load i16, i16* %22, align 2, !dbg !874, !psr.id !876, !ValueTainted !89
  %24 = zext i16 %23 to i32, !dbg !877, !psr.id !878, !ValueTainted !89
  %25 = shl i32 %24, %.0, !dbg !879, !psr.id !880, !ValueTainted !89
  %26 = add i32 %.02, %25, !dbg !881, !psr.id !882, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %26, metadata !836, metadata !DIExpression()), !dbg !805, !psr.id !883
  br label %27, !dbg !884, !psr.id !885

27:                                               ; preds = %20, %18
  %.15 = phi i64 [ %21, %20 ], [ %.04, %18 ], !dbg !805, !psr.id !886
  %.13 = phi i32 [ %26, %20 ], [ %.02, %18 ], !dbg !805, !psr.id !887, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.13, metadata !836, metadata !DIExpression()), !dbg !805, !psr.id !888
  call void @llvm.dbg.value(metadata i64 %.15, metadata !834, metadata !DIExpression()), !dbg !805, !psr.id !889
  %28 = add nsw i32 %.0, 15, !dbg !890, !psr.id !891
  call void @llvm.dbg.value(metadata i32 %28, metadata !838, metadata !DIExpression()), !dbg !805, !psr.id !892
  br label %29, !dbg !893, !psr.id !894

29:                                               ; preds = %27, %16
  %.26 = phi i64 [ %.15, %27 ], [ %.04, %16 ], !dbg !805, !psr.id !895
  %.2 = phi i32 [ %.13, %27 ], [ %.02, %16 ], !dbg !805, !psr.id !896, !ValueTainted !89
  %.1 = phi i32 [ %28, %27 ], [ %.0, %16 ], !dbg !805, !psr.id !897
  call void @llvm.dbg.value(metadata i32 %.1, metadata !838, metadata !DIExpression()), !dbg !805, !psr.id !898
  call void @llvm.dbg.value(metadata i32 %.2, metadata !836, metadata !DIExpression()), !dbg !805, !psr.id !899
  call void @llvm.dbg.value(metadata i64 %.26, metadata !834, metadata !DIExpression()), !dbg !805, !psr.id !900
  %30 = trunc i32 %.2 to i8, !dbg !901, !psr.id !902, !ValueTainted !89
  %31 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !903, !psr.id !904, !ValueTainted !89, !PointTainted !91
  store i8 %30, i8* %31, align 1, !dbg !905, !psr.id !906, !Tainted !102
  %32 = lshr i32 %.2, 8, !dbg !907, !psr.id !908, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %32, metadata !836, metadata !DIExpression()), !dbg !805, !psr.id !909
  %33 = sub nsw i32 %.1, 8, !dbg !910, !psr.id !911
  call void @llvm.dbg.value(metadata i32 %33, metadata !838, metadata !DIExpression()), !dbg !805, !psr.id !912
  br label %13, !dbg !842, !llvm.loop !913, !psr.id !915

34:                                               ; preds = %13, %11
  ret void, !dbg !916, !psr.id !917
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_from_monty(i16* %0, i16* %1, i16 zeroext %2) #0 !dbg !918 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !921, metadata !DIExpression()), !dbg !922, !psr.id !923
  call void @llvm.dbg.value(metadata i16* %1, metadata !924, metadata !DIExpression()), !dbg !922, !psr.id !925
  call void @llvm.dbg.value(metadata i16 %2, metadata !926, metadata !DIExpression()), !dbg !922, !psr.id !927
  %4 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !928, !psr.id !929
  %5 = load i16, i16* %4, align 2, !dbg !928, !psr.id !930, !ValueTainted !89
  %6 = zext i16 %5 to i32, !dbg !928, !psr.id !931, !ValueTainted !89
  %7 = add nsw i32 %6, 15, !dbg !932, !psr.id !933, !ValueTainted !89
  %8 = ashr i32 %7, 4, !dbg !934, !psr.id !935, !ValueTainted !89
  %9 = sext i32 %8 to i64, !dbg !936, !psr.id !937, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %9, metadata !938, metadata !DIExpression()), !dbg !922, !psr.id !939
  call void @llvm.dbg.value(metadata i64 0, metadata !940, metadata !DIExpression()), !dbg !922, !psr.id !941
  br label %10, !dbg !942, !psr.id !944

10:                                               ; preds = %45, %3
  %.02 = phi i64 [ 0, %3 ], [ %46, %45 ], !dbg !945, !psr.id !946
  call void @llvm.dbg.value(metadata i64 %.02, metadata !940, metadata !DIExpression()), !dbg !922, !psr.id !947
  %11 = icmp ult i64 %.02, %9, !dbg !948, !psr.id !950, !ValueTainted !89
  br i1 %11, label %12, label %47, !dbg !951, !psr.id !952, !Tainted !102

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !953, !psr.id !955, !PointTainted !91
  %14 = load i16, i16* %13, align 2, !dbg !953, !psr.id !956, !ValueTainted !89
  %15 = zext i16 %14 to i32, !dbg !953, !psr.id !957, !ValueTainted !89
  %16 = zext i16 %2 to i32, !dbg !953, !psr.id !958, !ValueTainted !89
  %17 = mul i32 %15, %16, !dbg !953, !psr.id !959, !ValueTainted !89
  %18 = and i32 %17, 32767, !dbg !960, !psr.id !961, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %18, metadata !962, metadata !DIExpression()), !dbg !963, !psr.id !964
  call void @llvm.dbg.value(metadata i32 0, metadata !965, metadata !DIExpression()), !dbg !963, !psr.id !966
  call void @llvm.dbg.value(metadata i64 0, metadata !967, metadata !DIExpression()), !dbg !922, !psr.id !968
  br label %19, !dbg !969, !psr.id !971

19:                                               ; preds = %40, %12
  %.01 = phi i64 [ 0, %12 ], [ %41, %40 ], !dbg !972, !psr.id !973
  %.0 = phi i32 [ 0, %12 ], [ %33, %40 ], !dbg !963, !psr.id !974, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.0, metadata !965, metadata !DIExpression()), !dbg !963, !psr.id !975
  call void @llvm.dbg.value(metadata i64 %.01, metadata !967, metadata !DIExpression()), !dbg !922, !psr.id !976
  %20 = icmp ult i64 %.01, %9, !dbg !977, !psr.id !979, !ValueTainted !89
  br i1 %20, label %21, label %42, !dbg !980, !psr.id !981, !Tainted !102

21:                                               ; preds = %19
  %22 = add i64 %.01, 1, !dbg !982, !psr.id !984
  %23 = getelementptr inbounds i16, i16* %0, i64 %22, !dbg !985, !psr.id !986, !PointTainted !91
  %24 = load i16, i16* %23, align 2, !dbg !985, !psr.id !987, !ValueTainted !89
  %25 = zext i16 %24 to i32, !dbg !988, !psr.id !989, !ValueTainted !89
  %26 = add i64 %.01, 1, !dbg !990, !psr.id !991
  %27 = getelementptr inbounds i16, i16* %1, i64 %26, !dbg !990, !psr.id !992
  %28 = load i16, i16* %27, align 2, !dbg !990, !psr.id !993, !ValueTainted !89
  %29 = zext i16 %28 to i32, !dbg !990, !psr.id !994, !ValueTainted !89
  %30 = mul i32 %18, %29, !dbg !990, !psr.id !995, !ValueTainted !89
  %31 = add i32 %25, %30, !dbg !996, !psr.id !997, !ValueTainted !89
  %32 = add i32 %31, %.0, !dbg !998, !psr.id !999, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %32, metadata !1000, metadata !DIExpression()), !dbg !1001, !psr.id !1002
  %33 = lshr i32 %32, 15, !dbg !1003, !psr.id !1004, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %33, metadata !965, metadata !DIExpression()), !dbg !963, !psr.id !1005
  %34 = icmp ne i64 %.01, 0, !dbg !1006, !psr.id !1008
  br i1 %34, label %35, label %39, !dbg !1009, !psr.id !1010

35:                                               ; preds = %21
  %36 = and i32 %32, 32767, !dbg !1011, !psr.id !1013, !ValueTainted !89
  %37 = trunc i32 %36 to i16, !dbg !1014, !psr.id !1015, !ValueTainted !89
  %38 = getelementptr inbounds i16, i16* %0, i64 %.01, !dbg !1016, !psr.id !1017, !PointTainted !91
  store i16 %37, i16* %38, align 2, !dbg !1018, !psr.id !1019
  br label %39, !dbg !1020, !psr.id !1021

39:                                               ; preds = %35, %21
  br label %40, !dbg !1022, !psr.id !1023

40:                                               ; preds = %39
  %41 = add i64 %.01, 1, !dbg !1024, !psr.id !1025
  call void @llvm.dbg.value(metadata i64 %41, metadata !967, metadata !DIExpression()), !dbg !922, !psr.id !1026
  br label %19, !dbg !1027, !llvm.loop !1028, !psr.id !1030

42:                                               ; preds = %19
  %43 = trunc i32 %.0 to i16, !dbg !1031, !psr.id !1032, !ValueTainted !89
  %44 = getelementptr inbounds i16, i16* %0, i64 %9, !dbg !1033, !psr.id !1034, !ValueTainted !89, !PointTainted !91
  store i16 %43, i16* %44, align 2, !dbg !1035, !psr.id !1036, !Tainted !102
  br label %45, !dbg !1037, !psr.id !1038

45:                                               ; preds = %42
  %46 = add i64 %.02, 1, !dbg !1039, !psr.id !1040
  call void @llvm.dbg.value(metadata i64 %46, metadata !940, metadata !DIExpression()), !dbg !922, !psr.id !1041
  br label %10, !dbg !1042, !llvm.loop !1043, !psr.id !1045

47:                                               ; preds = %10
  %48 = call i32 @br_i15_sub(i16* %0, i16* %1, i32 0), !dbg !1046, !psr.id !1047
  %49 = call i32 @NOT.3(i32 %48), !dbg !1048, !psr.id !1049, !ValueTainted !89
  %50 = call i32 @br_i15_sub(i16* %0, i16* %1, i32 %49), !dbg !1050, !psr.id !1051, !ValueTainted !89
  ret void, !dbg !1052, !psr.id !1053
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.3(i32 %0) #0 !dbg !1054 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1055, metadata !DIExpression()), !dbg !1056, !psr.id !1057
  %2 = xor i32 %0, 1, !dbg !1058, !psr.id !1059, !ValueTainted !89
  ret i32 %2, !dbg !1060, !psr.id !1061
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_modpow_opt(i16* %0, i8* %1, i64 %2, i16* %3, i16 zeroext %4, i16* %5, i64 %6) #0 !dbg !1062 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1065, metadata !DIExpression()), !dbg !1066, !psr.id !1067
  call void @llvm.dbg.value(metadata i8* %1, metadata !1068, metadata !DIExpression()), !dbg !1066, !psr.id !1069
  call void @llvm.dbg.value(metadata i64 %2, metadata !1070, metadata !DIExpression()), !dbg !1066, !psr.id !1071
  call void @llvm.dbg.value(metadata i16* %3, metadata !1072, metadata !DIExpression()), !dbg !1066, !psr.id !1073
  call void @llvm.dbg.value(metadata i16 %4, metadata !1074, metadata !DIExpression()), !dbg !1066, !psr.id !1075
  call void @llvm.dbg.value(metadata i16* %5, metadata !1076, metadata !DIExpression()), !dbg !1066, !psr.id !1077
  call void @llvm.dbg.value(metadata i64 %6, metadata !1078, metadata !DIExpression()), !dbg !1066, !psr.id !1079
  %8 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1080, !psr.id !1081
  %9 = load i16, i16* %8, align 2, !dbg !1080, !psr.id !1082, !ValueTainted !89
  %10 = zext i16 %9 to i32, !dbg !1080, !psr.id !1083, !ValueTainted !89
  %11 = add nsw i32 %10, 31, !dbg !1084, !psr.id !1085, !ValueTainted !89
  %12 = ashr i32 %11, 4, !dbg !1086, !psr.id !1087, !ValueTainted !89
  %13 = sext i32 %12 to i64, !dbg !1088, !psr.id !1089, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %13, metadata !1090, metadata !DIExpression()), !dbg !1066, !psr.id !1091
  %14 = mul i64 %13, 2, !dbg !1092, !psr.id !1093, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %14, metadata !1094, metadata !DIExpression()), !dbg !1066, !psr.id !1095
  %15 = and i64 %13, 1, !dbg !1096, !psr.id !1097, !ValueTainted !89
  %16 = add i64 %13, %15, !dbg !1098, !psr.id !1099, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %16, metadata !1090, metadata !DIExpression()), !dbg !1066, !psr.id !1100
  call void @llvm.dbg.value(metadata i16* %5, metadata !1101, metadata !DIExpression()), !dbg !1066, !psr.id !1102
  %17 = getelementptr inbounds i16, i16* %5, i64 %16, !dbg !1103, !psr.id !1104, !ValueTainted !89
  call void @llvm.dbg.value(metadata i16* %17, metadata !1105, metadata !DIExpression()), !dbg !1066, !psr.id !1106
  %18 = shl i64 %16, 1, !dbg !1107, !psr.id !1109, !ValueTainted !89
  %19 = icmp ult i64 %6, %18, !dbg !1110, !psr.id !1111, !ValueTainted !89
  br i1 %19, label %20, label %21, !dbg !1112, !psr.id !1113, !Tainted !102

20:                                               ; preds = %7
  br label %136, !dbg !1114, !psr.id !1116

21:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 5, metadata !1117, metadata !DIExpression()), !dbg !1066, !psr.id !1118
  br label %22, !dbg !1119, !psr.id !1121

22:                                               ; preds = %32, %21
  %.08 = phi i32 [ 5, %21 ], [ %33, %32 ], !dbg !1122, !psr.id !1123
  call void @llvm.dbg.value(metadata i32 %.08, metadata !1117, metadata !DIExpression()), !dbg !1066, !psr.id !1124
  %23 = icmp sgt i32 %.08, 1, !dbg !1125, !psr.id !1127
  br i1 %23, label %24, label %34, !dbg !1128, !psr.id !1129

24:                                               ; preds = %22
  %25 = shl i32 1, %.08, !dbg !1130, !psr.id !1133
  %26 = add i32 %25, 1, !dbg !1134, !psr.id !1135
  %27 = zext i32 %26 to i64, !dbg !1136, !psr.id !1137
  %28 = mul i64 %27, %16, !dbg !1138, !psr.id !1139, !ValueTainted !89
  %29 = icmp ule i64 %28, %6, !dbg !1140, !psr.id !1141, !ValueTainted !89
  br i1 %29, label %30, label %31, !dbg !1142, !psr.id !1143, !Tainted !102

30:                                               ; preds = %24
  br label %34, !dbg !1144, !psr.id !1146

31:                                               ; preds = %24
  br label %32, !dbg !1147, !psr.id !1148

32:                                               ; preds = %31
  %33 = add nsw i32 %.08, -1, !dbg !1149, !psr.id !1150
  call void @llvm.dbg.value(metadata i32 %33, metadata !1117, metadata !DIExpression()), !dbg !1066, !psr.id !1151
  br label %22, !dbg !1152, !llvm.loop !1153, !psr.id !1155

34:                                               ; preds = %30, %22
  call void @br_i15_to_monty(i16* %0, i16* %3), !dbg !1156, !psr.id !1157
  %35 = icmp eq i32 %.08, 1, !dbg !1158, !psr.id !1160
  br i1 %35, label %36, label %39, !dbg !1161, !psr.id !1162

36:                                               ; preds = %34
  %37 = bitcast i16* %17 to i8*, !dbg !1163, !psr.id !1165, !ValueTainted !89
  %38 = bitcast i16* %0 to i8*, !dbg !1163, !psr.id !1166
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %37, i8* align 2 %38, i64 %14, i1 false), !dbg !1163, !psr.id !1167, !CalledTainted !1168
  br label %54, !dbg !1169, !psr.id !1170

39:                                               ; preds = %34
  %40 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !1171, !psr.id !1173, !ValueTainted !89
  %41 = bitcast i16* %40 to i8*, !dbg !1174, !psr.id !1175, !ValueTainted !89
  %42 = bitcast i16* %0 to i8*, !dbg !1174, !psr.id !1176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %41, i8* align 2 %42, i64 %14, i1 false), !dbg !1174, !psr.id !1177, !CalledTainted !1168
  %43 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !1178, !psr.id !1179, !ValueTainted !89
  call void @llvm.dbg.value(metadata i16* %43, metadata !1180, metadata !DIExpression()), !dbg !1066, !psr.id !1181
  call void @llvm.dbg.value(metadata i64 2, metadata !1182, metadata !DIExpression()), !dbg !1066, !psr.id !1183
  br label %44, !dbg !1184, !psr.id !1186

44:                                               ; preds = %51, %39
  %.018 = phi i16* [ %43, %39 ], [ %50, %51 ], !dbg !1187, !psr.id !1188, !ValueTainted !89
  %.016 = phi i64 [ 2, %39 ], [ %52, %51 ], !dbg !1189, !psr.id !1190
  call void @llvm.dbg.value(metadata i64 %.016, metadata !1182, metadata !DIExpression()), !dbg !1066, !psr.id !1191
  call void @llvm.dbg.value(metadata i16* %.018, metadata !1180, metadata !DIExpression()), !dbg !1066, !psr.id !1192
  %45 = shl i32 1, %.08, !dbg !1193, !psr.id !1195
  %46 = zext i32 %45 to i64, !dbg !1196, !psr.id !1197
  %47 = icmp ult i64 %.016, %46, !dbg !1198, !psr.id !1199
  br i1 %47, label %48, label %53, !dbg !1200, !psr.id !1201

48:                                               ; preds = %44
  %49 = getelementptr inbounds i16, i16* %.018, i64 %16, !dbg !1202, !psr.id !1204
  call void @br_i15_montymul(i16* %49, i16* %.018, i16* %0, i16* %3, i16 zeroext %4), !dbg !1205, !psr.id !1206
  %50 = getelementptr inbounds i16, i16* %.018, i64 %16, !dbg !1207, !psr.id !1208, !ValueTainted !89
  call void @llvm.dbg.value(metadata i16* %50, metadata !1180, metadata !DIExpression()), !dbg !1066, !psr.id !1209
  br label %51, !dbg !1210, !psr.id !1211

51:                                               ; preds = %48
  %52 = add i64 %.016, 1, !dbg !1212, !psr.id !1213
  call void @llvm.dbg.value(metadata i64 %52, metadata !1182, metadata !DIExpression()), !dbg !1066, !psr.id !1214
  br label %44, !dbg !1215, !llvm.loop !1216, !psr.id !1218

53:                                               ; preds = %44
  br label %54, !psr.id !1219

54:                                               ; preds = %53, %36
  %55 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1220, !psr.id !1221
  %56 = load i16, i16* %55, align 2, !dbg !1220, !psr.id !1222, !ValueTainted !89
  call void @br_i15_zero.4(i16* %0, i16 zeroext %56), !dbg !1223, !psr.id !1224
  %57 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1225, !psr.id !1226
  %58 = load i16, i16* %57, align 2, !dbg !1225, !psr.id !1227, !ValueTainted !89
  %59 = zext i16 %58 to i32, !dbg !1225, !psr.id !1228, !ValueTainted !89
  %60 = add nsw i32 %59, 15, !dbg !1229, !psr.id !1230, !ValueTainted !89
  %61 = ashr i32 %60, 4, !dbg !1231, !psr.id !1232, !ValueTainted !89
  %62 = sext i32 %61 to i64, !dbg !1233, !psr.id !1234, !ValueTainted !89
  %63 = getelementptr inbounds i16, i16* %0, i64 %62, !dbg !1233, !psr.id !1235, !ValueTainted !89, !PointTainted !91
  store i16 1, i16* %63, align 2, !dbg !1236, !psr.id !1237, !Tainted !102
  call void @br_i15_muladd_small(i16* %0, i16 zeroext 0, i16* %3), !dbg !1238, !psr.id !1239
  call void @llvm.dbg.value(metadata i32 0, metadata !1240, metadata !DIExpression()), !dbg !1066, !psr.id !1241
  call void @llvm.dbg.value(metadata i32 0, metadata !1242, metadata !DIExpression()), !dbg !1066, !psr.id !1243
  br label %64, !dbg !1244, !psr.id !1245

64:                                               ; preds = %131, %54
  %.012 = phi i32 [ 0, %54 ], [ %.214, %131 ], !dbg !1066, !psr.id !1246, !ValueTainted !89
  %.09 = phi i32 [ 0, %54 ], [ %90, %131 ], !dbg !1066, !psr.id !1247
  %.04 = phi i64 [ %2, %54 ], [ %.26, %131 ], !psr.id !1248
  %.02 = phi i8* [ %1, %54 ], [ %.2, %131 ], !psr.id !1249, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %.02, metadata !1068, metadata !DIExpression()), !dbg !1066, !psr.id !1250
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1070, metadata !DIExpression()), !dbg !1066, !psr.id !1251
  call void @llvm.dbg.value(metadata i32 %.09, metadata !1242, metadata !DIExpression()), !dbg !1066, !psr.id !1252
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1240, metadata !DIExpression()), !dbg !1066, !psr.id !1253
  %65 = icmp sgt i32 %.09, 0, !dbg !1254, !psr.id !1255
  br i1 %65, label %68, label %66, !dbg !1256, !psr.id !1257

66:                                               ; preds = %64
  %67 = icmp ugt i64 %.04, 0, !dbg !1258, !psr.id !1259
  br label %68, !dbg !1256, !psr.id !1260

68:                                               ; preds = %66, %64
  %69 = phi i1 [ true, %64 ], [ %67, %66 ], !psr.id !1261
  br i1 %69, label %70, label %135, !dbg !1244, !psr.id !1262

70:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 %.08, metadata !1263, metadata !DIExpression()), !dbg !1265, !psr.id !1266
  %71 = icmp slt i32 %.09, %.08, !dbg !1267, !psr.id !1269
  br i1 %71, label %72, label %84, !dbg !1270, !psr.id !1271

72:                                               ; preds = %70
  %73 = icmp ugt i64 %.04, 0, !dbg !1272, !psr.id !1275
  br i1 %73, label %74, label %82, !dbg !1276, !psr.id !1277

74:                                               ; preds = %72
  %75 = shl i32 %.012, 8, !dbg !1278, !psr.id !1280, !ValueTainted !89
  %76 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !1281, !psr.id !1282, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %76, metadata !1068, metadata !DIExpression()), !dbg !1066, !psr.id !1283
  %77 = load i8, i8* %.02, align 1, !dbg !1284, !psr.id !1285, !ValueTainted !89
  %78 = zext i8 %77 to i32, !dbg !1284, !psr.id !1286, !ValueTainted !89
  %79 = or i32 %75, %78, !dbg !1287, !psr.id !1288, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %79, metadata !1240, metadata !DIExpression()), !dbg !1066, !psr.id !1289
  %80 = add i64 %.04, -1, !dbg !1290, !psr.id !1291
  call void @llvm.dbg.value(metadata i64 %80, metadata !1070, metadata !DIExpression()), !dbg !1066, !psr.id !1292
  %81 = add nsw i32 %.09, 8, !dbg !1293, !psr.id !1294
  call void @llvm.dbg.value(metadata i32 %81, metadata !1242, metadata !DIExpression()), !dbg !1066, !psr.id !1295
  br label %83, !dbg !1296, !psr.id !1297

82:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 %.09, metadata !1263, metadata !DIExpression()), !dbg !1265, !psr.id !1298
  br label %83, !psr.id !1299

83:                                               ; preds = %82, %74
  %.113 = phi i32 [ %79, %74 ], [ %.012, %82 ], !dbg !1066, !psr.id !1300, !ValueTainted !89
  %.110 = phi i32 [ %81, %74 ], [ %.09, %82 ], !dbg !1066, !psr.id !1301
  %.15 = phi i64 [ %80, %74 ], [ %.04, %82 ], !psr.id !1302
  %.13 = phi i8* [ %76, %74 ], [ %.02, %82 ], !psr.id !1303, !PointTainted !91
  %.01 = phi i32 [ %.08, %74 ], [ %.09, %82 ], !dbg !1265, !psr.id !1304
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1263, metadata !DIExpression()), !dbg !1265, !psr.id !1305
  call void @llvm.dbg.value(metadata i8* %.13, metadata !1068, metadata !DIExpression()), !dbg !1066, !psr.id !1306
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1070, metadata !DIExpression()), !dbg !1066, !psr.id !1307
  call void @llvm.dbg.value(metadata i32 %.110, metadata !1242, metadata !DIExpression()), !dbg !1066, !psr.id !1308
  call void @llvm.dbg.value(metadata i32 %.113, metadata !1240, metadata !DIExpression()), !dbg !1066, !psr.id !1309
  br label %84, !dbg !1310, !psr.id !1311

84:                                               ; preds = %83, %70
  %.214 = phi i32 [ %.113, %83 ], [ %.012, %70 ], !dbg !1066, !psr.id !1312, !ValueTainted !89
  %.211 = phi i32 [ %.110, %83 ], [ %.09, %70 ], !dbg !1066, !psr.id !1313
  %.26 = phi i64 [ %.15, %83 ], [ %.04, %70 ], !psr.id !1314
  %.2 = phi i8* [ %.13, %83 ], [ %.02, %70 ], !psr.id !1315, !PointTainted !91
  %.1 = phi i32 [ %.01, %83 ], [ %.08, %70 ], !dbg !1316, !psr.id !1317
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1263, metadata !DIExpression()), !dbg !1265, !psr.id !1318
  call void @llvm.dbg.value(metadata i8* %.2, metadata !1068, metadata !DIExpression()), !dbg !1066, !psr.id !1319
  call void @llvm.dbg.value(metadata i64 %.26, metadata !1070, metadata !DIExpression()), !dbg !1066, !psr.id !1320
  call void @llvm.dbg.value(metadata i32 %.211, metadata !1242, metadata !DIExpression()), !dbg !1066, !psr.id !1321
  call void @llvm.dbg.value(metadata i32 %.214, metadata !1240, metadata !DIExpression()), !dbg !1066, !psr.id !1322
  %85 = sub nsw i32 %.211, %.1, !dbg !1323, !psr.id !1324
  %86 = lshr i32 %.214, %85, !dbg !1325, !psr.id !1326, !ValueTainted !89
  %87 = shl i32 1, %.1, !dbg !1327, !psr.id !1328
  %88 = sub i32 %87, 1, !dbg !1329, !psr.id !1330
  %89 = and i32 %86, %88, !dbg !1331, !psr.id !1332, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %89, metadata !1333, metadata !DIExpression()), !dbg !1265, !psr.id !1334
  %90 = sub nsw i32 %.211, %.1, !dbg !1335, !psr.id !1336
  call void @llvm.dbg.value(metadata i32 %90, metadata !1242, metadata !DIExpression()), !dbg !1066, !psr.id !1337
  call void @llvm.dbg.value(metadata i32 0, metadata !1338, metadata !DIExpression()), !dbg !1265, !psr.id !1339
  br label %91, !dbg !1340, !psr.id !1342

91:                                               ; preds = %96, %84
  %.07 = phi i32 [ 0, %84 ], [ %97, %96 ], !dbg !1343, !psr.id !1344
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1338, metadata !DIExpression()), !dbg !1265, !psr.id !1345
  %92 = icmp slt i32 %.07, %.1, !dbg !1346, !psr.id !1348
  br i1 %92, label %93, label %98, !dbg !1349, !psr.id !1350

93:                                               ; preds = %91
  call void @br_i15_montymul(i16* %5, i16* %0, i16* %0, i16* %3, i16 zeroext %4), !dbg !1351, !psr.id !1353
  %94 = bitcast i16* %0 to i8*, !dbg !1354, !psr.id !1355, !PointTainted !91
  %95 = bitcast i16* %5 to i8*, !dbg !1354, !psr.id !1356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %94, i8* align 2 %95, i64 %14, i1 false), !dbg !1354, !psr.id !1357, !CalledTainted !798
  br label %96, !dbg !1358, !psr.id !1359

96:                                               ; preds = %93
  %97 = add nsw i32 %.07, 1, !dbg !1360, !psr.id !1361
  call void @llvm.dbg.value(metadata i32 %97, metadata !1338, metadata !DIExpression()), !dbg !1265, !psr.id !1362
  br label %91, !dbg !1363, !llvm.loop !1364, !psr.id !1366

98:                                               ; preds = %91
  %99 = icmp sgt i32 %.08, 1, !dbg !1367, !psr.id !1369
  br i1 %99, label %100, label %131, !dbg !1370, !psr.id !1371

100:                                              ; preds = %98
  %101 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1372, !psr.id !1374
  %102 = load i16, i16* %101, align 2, !dbg !1372, !psr.id !1375, !ValueTainted !89
  call void @br_i15_zero.4(i16* %17, i16 zeroext %102), !dbg !1376, !psr.id !1377
  %103 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !1378, !psr.id !1379, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i16* %103, metadata !1180, metadata !DIExpression()), !dbg !1066, !psr.id !1380
  call void @llvm.dbg.value(metadata i64 1, metadata !1182, metadata !DIExpression()), !dbg !1066, !psr.id !1381
  br label %104, !dbg !1382, !psr.id !1384

104:                                              ; preds = %128, %100
  %.119 = phi i16* [ %103, %100 ], [ %127, %128 ], !dbg !1385, !psr.id !1386, !ValueTainted !89, !PointTainted !91
  %.117 = phi i64 [ 1, %100 ], [ %129, %128 ], !dbg !1387, !psr.id !1388
  call void @llvm.dbg.value(metadata i64 %.117, metadata !1182, metadata !DIExpression()), !dbg !1066, !psr.id !1389
  call void @llvm.dbg.value(metadata i16* %.119, metadata !1180, metadata !DIExpression()), !dbg !1066, !psr.id !1390
  %105 = shl i32 1, %.1, !dbg !1391, !psr.id !1393
  %106 = zext i32 %105 to i64, !dbg !1394, !psr.id !1395
  %107 = icmp ult i64 %.117, %106, !dbg !1396, !psr.id !1397
  br i1 %107, label %108, label %130, !dbg !1398, !psr.id !1399

108:                                              ; preds = %104
  %109 = trunc i64 %.117 to i32, !dbg !1400, !psr.id !1402
  %110 = call i32 @EQ.5(i32 %109, i32 %89), !dbg !1403, !psr.id !1404, !ValueTainted !89
  %111 = sub i32 0, %110, !dbg !1405, !psr.id !1406, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %111, metadata !1407, metadata !DIExpression()), !dbg !1408, !psr.id !1409
  call void @llvm.dbg.value(metadata i64 1, metadata !1410, metadata !DIExpression()), !dbg !1066, !psr.id !1411
  br label %112, !dbg !1412, !psr.id !1414

112:                                              ; preds = %124, %108
  %.015 = phi i64 [ 1, %108 ], [ %125, %124 ], !dbg !1415, !psr.id !1416
  call void @llvm.dbg.value(metadata i64 %.015, metadata !1410, metadata !DIExpression()), !dbg !1066, !psr.id !1417
  %113 = icmp ult i64 %.015, %16, !dbg !1418, !psr.id !1420, !ValueTainted !89
  br i1 %113, label %114, label %126, !dbg !1421, !psr.id !1422, !Tainted !102

114:                                              ; preds = %112
  %115 = getelementptr inbounds i16, i16* %.119, i64 %.015, !dbg !1423, !psr.id !1425, !ValueTainted !89, !PointTainted !91
  %116 = load i16, i16* %115, align 2, !dbg !1423, !psr.id !1426, !Tainted !102, !ValueTainted !89
  %117 = zext i16 %116 to i32, !dbg !1423, !psr.id !1427, !ValueTainted !89
  %118 = and i32 %111, %117, !dbg !1428, !psr.id !1429, !ValueTainted !89
  %119 = getelementptr inbounds i16, i16* %17, i64 %.015, !dbg !1430, !psr.id !1431, !ValueTainted !89, !PointTainted !91
  %120 = load i16, i16* %119, align 2, !dbg !1432, !psr.id !1433, !Tainted !102, !ValueTainted !89
  %121 = zext i16 %120 to i32, !dbg !1432, !psr.id !1434, !ValueTainted !89
  %122 = or i32 %121, %118, !dbg !1432, !psr.id !1435, !ValueTainted !89
  %123 = trunc i32 %122 to i16, !dbg !1432, !psr.id !1436, !ValueTainted !89
  store i16 %123, i16* %119, align 2, !dbg !1432, !psr.id !1437, !Tainted !102
  br label %124, !dbg !1438, !psr.id !1439

124:                                              ; preds = %114
  %125 = add i64 %.015, 1, !dbg !1440, !psr.id !1441
  call void @llvm.dbg.value(metadata i64 %125, metadata !1410, metadata !DIExpression()), !dbg !1066, !psr.id !1442
  br label %112, !dbg !1443, !llvm.loop !1444, !psr.id !1446

126:                                              ; preds = %112
  %127 = getelementptr inbounds i16, i16* %.119, i64 %16, !dbg !1447, !psr.id !1448, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i16* %127, metadata !1180, metadata !DIExpression()), !dbg !1066, !psr.id !1449
  br label %128, !dbg !1450, !psr.id !1451

128:                                              ; preds = %126
  %129 = add i64 %.117, 1, !dbg !1452, !psr.id !1453
  call void @llvm.dbg.value(metadata i64 %129, metadata !1182, metadata !DIExpression()), !dbg !1066, !psr.id !1454
  br label %104, !dbg !1455, !llvm.loop !1456, !psr.id !1458

130:                                              ; preds = %104
  br label %131, !dbg !1459, !psr.id !1460

131:                                              ; preds = %130, %98
  call void @br_i15_montymul(i16* %5, i16* %0, i16* %17, i16* %3, i16 zeroext %4), !dbg !1461, !psr.id !1462
  %132 = call i32 @NEQ.6(i32 %89, i32 0), !dbg !1463, !psr.id !1464, !ValueTainted !89
  %133 = bitcast i16* %0 to i8*, !dbg !1465, !psr.id !1466, !PointTainted !91
  %134 = bitcast i16* %5 to i8*, !dbg !1467, !psr.id !1468
  call void @br_ccopy(i32 %132, i8* %133, i8* %134, i64 %14), !dbg !1469, !psr.id !1470
  br label %64, !dbg !1244, !llvm.loop !1471, !psr.id !1473

135:                                              ; preds = %68
  call void @br_i15_from_monty(i16* %0, i16* %3, i16 zeroext %4), !dbg !1474, !psr.id !1475
  br label %136, !dbg !1476, !psr.id !1477

136:                                              ; preds = %135, %20
  %.0 = phi i32 [ 0, %20 ], [ 1, %135 ], !dbg !1066, !psr.id !1478
  ret i32 %.0, !dbg !1479, !psr.id !1480
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.4(i16* %0, i16 zeroext %1) #0 !dbg !1481 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1482, metadata !DIExpression()), !dbg !1483, !psr.id !1484
  call void @llvm.dbg.value(metadata i16 %1, metadata !1485, metadata !DIExpression()), !dbg !1483, !psr.id !1486
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !1487, !psr.id !1488, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i16* %3, metadata !1482, metadata !DIExpression()), !dbg !1483, !psr.id !1489
  store i16 %1, i16* %0, align 2, !dbg !1490, !psr.id !1491, !Tainted !102
  %4 = bitcast i16* %3 to i8*, !dbg !1492, !psr.id !1493, !ValueTainted !89, !PointTainted !91
  %5 = zext i16 %1 to i32, !dbg !1494, !psr.id !1495, !ValueTainted !89
  %6 = add nsw i32 %5, 15, !dbg !1496, !psr.id !1497, !ValueTainted !89
  %7 = ashr i32 %6, 4, !dbg !1498, !psr.id !1499, !ValueTainted !89
  %8 = sext i32 %7 to i64, !dbg !1500, !psr.id !1501, !ValueTainted !89
  %9 = mul i64 %8, 2, !dbg !1502, !psr.id !1503, !ValueTainted !89
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !1492, !psr.id !1504, !CalledTainted !1168
  ret void, !dbg !1505, !psr.id !1506
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.5(i32 %0, i32 %1) #0 !dbg !1507 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1508, metadata !DIExpression()), !dbg !1509, !psr.id !1510
  call void @llvm.dbg.value(metadata i32 %1, metadata !1511, metadata !DIExpression()), !dbg !1509, !psr.id !1512
  %3 = xor i32 %0, %1, !dbg !1513, !psr.id !1514, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !1515, metadata !DIExpression()), !dbg !1509, !psr.id !1516
  %4 = sub i32 0, %3, !dbg !1517, !psr.id !1518, !ValueTainted !89
  %5 = or i32 %3, %4, !dbg !1519, !psr.id !1520, !ValueTainted !89
  %6 = lshr i32 %5, 31, !dbg !1521, !psr.id !1522, !ValueTainted !89
  %7 = call i32 @NOT.7(i32 %6), !dbg !1523, !psr.id !1524, !ValueTainted !89
  ret i32 %7, !dbg !1525, !psr.id !1526
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.6(i32 %0, i32 %1) #0 !dbg !1527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression()), !dbg !1529, !psr.id !1530
  call void @llvm.dbg.value(metadata i32 %1, metadata !1531, metadata !DIExpression()), !dbg !1529, !psr.id !1532
  %3 = xor i32 %0, %1, !dbg !1533, !psr.id !1534, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !1535, metadata !DIExpression()), !dbg !1529, !psr.id !1536
  %4 = sub i32 0, %3, !dbg !1537, !psr.id !1538, !ValueTainted !89
  %5 = or i32 %3, %4, !dbg !1539, !psr.id !1540, !ValueTainted !89
  %6 = lshr i32 %5, 31, !dbg !1541, !psr.id !1542, !ValueTainted !89
  ret i32 %6, !dbg !1543, !psr.id !1544
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.7(i32 %0) #0 !dbg !1545 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1546, metadata !DIExpression()), !dbg !1547, !psr.id !1548
  %2 = xor i32 %0, 1, !dbg !1549, !psr.id !1550, !ValueTainted !89
  ret i32 %2, !dbg !1551, !psr.id !1552
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_montymul(i16* %0, i16* %1, i16* %2, i16* %3, i16 zeroext %4) #0 !dbg !1553 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1556, metadata !DIExpression()), !dbg !1557, !psr.id !1558
  call void @llvm.dbg.value(metadata i16* %1, metadata !1559, metadata !DIExpression()), !dbg !1557, !psr.id !1560
  call void @llvm.dbg.value(metadata i16* %2, metadata !1561, metadata !DIExpression()), !dbg !1557, !psr.id !1562
  call void @llvm.dbg.value(metadata i16* %3, metadata !1563, metadata !DIExpression()), !dbg !1557, !psr.id !1564
  call void @llvm.dbg.value(metadata i16 %4, metadata !1565, metadata !DIExpression()), !dbg !1557, !psr.id !1566
  %6 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1567, !psr.id !1568
  %7 = load i16, i16* %6, align 2, !dbg !1567, !psr.id !1569, !ValueTainted !89
  %8 = zext i16 %7 to i32, !dbg !1567, !psr.id !1570, !ValueTainted !89
  %9 = add nsw i32 %8, 15, !dbg !1571, !psr.id !1572, !ValueTainted !89
  %10 = ashr i32 %9, 4, !dbg !1573, !psr.id !1574, !ValueTainted !89
  %11 = sext i32 %10 to i64, !dbg !1575, !psr.id !1576, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %11, metadata !1577, metadata !DIExpression()), !dbg !1557, !psr.id !1578
  %12 = and i64 %11, -4, !dbg !1579, !psr.id !1580, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %12, metadata !1581, metadata !DIExpression()), !dbg !1557, !psr.id !1582
  %13 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1583, !psr.id !1584
  %14 = load i16, i16* %13, align 2, !dbg !1583, !psr.id !1585, !ValueTainted !89
  call void @br_i15_zero.10(i16* %0, i16 zeroext %14), !dbg !1586, !psr.id !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1588, metadata !DIExpression()), !dbg !1557, !psr.id !1589
  call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1557, !psr.id !1591
  br label %15, !dbg !1592, !psr.id !1594

15:                                               ; preds = %165, %5
  %.04 = phi i64 [ 0, %5 ], [ %166, %165 ], !dbg !1595, !psr.id !1596
  %.01 = phi i32 [ 0, %5 ], [ %164, %165 ], !dbg !1557, !psr.id !1597
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1588, metadata !DIExpression()), !dbg !1557, !psr.id !1598
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1590, metadata !DIExpression()), !dbg !1557, !psr.id !1599
  %16 = icmp ult i64 %.04, %11, !dbg !1600, !psr.id !1602, !ValueTainted !89
  br i1 %16, label %17, label %167, !dbg !1603, !psr.id !1604, !Tainted !102

17:                                               ; preds = %15
  %18 = add i64 %.04, 1, !dbg !1605, !psr.id !1607
  %19 = getelementptr inbounds i16, i16* %1, i64 %18, !dbg !1608, !psr.id !1609, !ValueTainted !89, !PointTainted !91
  %20 = load i16, i16* %19, align 2, !dbg !1608, !psr.id !1610, !Tainted !102, !ValueTainted !89
  %21 = zext i16 %20 to i32, !dbg !1608, !psr.id !1611, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %21, metadata !1612, metadata !DIExpression()), !dbg !1613, !psr.id !1614
  %22 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1615, !psr.id !1616, !ValueTainted !89, !PointTainted !91
  %23 = load i16, i16* %22, align 2, !dbg !1615, !psr.id !1617, !Tainted !102, !ValueTainted !89
  %24 = zext i16 %23 to i32, !dbg !1615, !psr.id !1618, !ValueTainted !89
  %25 = add i64 %.04, 1, !dbg !1615, !psr.id !1619
  %26 = getelementptr inbounds i16, i16* %1, i64 %25, !dbg !1615, !psr.id !1620, !ValueTainted !89, !PointTainted !91
  %27 = load i16, i16* %26, align 2, !dbg !1615, !psr.id !1621, !Tainted !102, !ValueTainted !89
  %28 = zext i16 %27 to i32, !dbg !1615, !psr.id !1622, !ValueTainted !89
  %29 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !1615, !psr.id !1623, !ValueTainted !89, !PointTainted !91
  %30 = load i16, i16* %29, align 2, !dbg !1615, !psr.id !1624, !Tainted !102, !ValueTainted !89
  %31 = zext i16 %30 to i32, !dbg !1615, !psr.id !1625, !ValueTainted !89
  %32 = mul i32 %28, %31, !dbg !1615, !psr.id !1626, !ValueTainted !89
  %33 = add i32 %24, %32, !dbg !1615, !psr.id !1627, !ValueTainted !89
  %34 = and i32 %33, 32767, !dbg !1615, !psr.id !1628, !ValueTainted !89
  %35 = zext i16 %4 to i32, !dbg !1615, !psr.id !1629, !ValueTainted !89
  %36 = mul i32 %34, %35, !dbg !1615, !psr.id !1630, !ValueTainted !89
  %37 = and i32 %36, 32767, !dbg !1631, !psr.id !1632, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %37, metadata !1633, metadata !DIExpression()), !dbg !1613, !psr.id !1634
  call void @llvm.dbg.value(metadata i32 0, metadata !1635, metadata !DIExpression()), !dbg !1613, !psr.id !1636
  call void @llvm.dbg.value(metadata i64 0, metadata !1637, metadata !DIExpression()), !dbg !1557, !psr.id !1638
  br label %38, !dbg !1639, !psr.id !1641

38:                                               ; preds = %129, %17
  %.02 = phi i64 [ 0, %17 ], [ %130, %129 ], !dbg !1642, !psr.id !1643
  %.0 = phi i32 [ 0, %17 ], [ %124, %129 ], !dbg !1613, !psr.id !1644, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1635, metadata !DIExpression()), !dbg !1613, !psr.id !1645
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1637, metadata !DIExpression()), !dbg !1557, !psr.id !1646
  %39 = icmp ult i64 %.02, %12, !dbg !1647, !psr.id !1649, !ValueTainted !89
  br i1 %39, label %40, label %131, !dbg !1650, !psr.id !1651, !Tainted !102

40:                                               ; preds = %38
  %41 = add i64 %.02, 1, !dbg !1652, !psr.id !1654
  %42 = getelementptr inbounds i16, i16* %0, i64 %41, !dbg !1655, !psr.id !1656, !ValueTainted !89, !PointTainted !91
  %43 = load i16, i16* %42, align 2, !dbg !1655, !psr.id !1657, !Tainted !102, !ValueTainted !89
  %44 = zext i16 %43 to i32, !dbg !1655, !psr.id !1658, !ValueTainted !89
  %45 = add i64 %.02, 1, !dbg !1659, !psr.id !1660
  %46 = getelementptr inbounds i16, i16* %2, i64 %45, !dbg !1659, !psr.id !1661, !ValueTainted !89, !PointTainted !91
  %47 = load i16, i16* %46, align 2, !dbg !1659, !psr.id !1662, !Tainted !102, !ValueTainted !89
  %48 = zext i16 %47 to i32, !dbg !1659, !psr.id !1663, !ValueTainted !89
  %49 = mul i32 %21, %48, !dbg !1659, !psr.id !1664, !ValueTainted !89
  %50 = add i32 %44, %49, !dbg !1665, !psr.id !1666, !ValueTainted !89
  %51 = add i64 %.02, 1, !dbg !1667, !psr.id !1668
  %52 = getelementptr inbounds i16, i16* %3, i64 %51, !dbg !1667, !psr.id !1669
  %53 = load i16, i16* %52, align 2, !dbg !1667, !psr.id !1670, !ValueTainted !89
  %54 = zext i16 %53 to i32, !dbg !1667, !psr.id !1671, !ValueTainted !89
  %55 = mul i32 %37, %54, !dbg !1667, !psr.id !1672, !ValueTainted !89
  %56 = add i32 %50, %55, !dbg !1673, !psr.id !1674, !ValueTainted !89
  %57 = add i32 %56, %.0, !dbg !1675, !psr.id !1676, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %57, metadata !1677, metadata !DIExpression()), !dbg !1678, !psr.id !1679
  %58 = lshr i32 %57, 15, !dbg !1680, !psr.id !1681, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %58, metadata !1635, metadata !DIExpression()), !dbg !1613, !psr.id !1682
  %59 = and i32 %57, 32767, !dbg !1683, !psr.id !1684, !ValueTainted !89
  %60 = trunc i32 %59 to i16, !dbg !1685, !psr.id !1686, !ValueTainted !89
  %61 = add i64 %.02, 0, !dbg !1687, !psr.id !1688
  %62 = getelementptr inbounds i16, i16* %0, i64 %61, !dbg !1689, !psr.id !1690, !ValueTainted !89, !PointTainted !91
  store i16 %60, i16* %62, align 2, !dbg !1691, !psr.id !1692, !Tainted !102
  %63 = add i64 %.02, 2, !dbg !1693, !psr.id !1694
  %64 = getelementptr inbounds i16, i16* %0, i64 %63, !dbg !1695, !psr.id !1696, !ValueTainted !89, !PointTainted !91
  %65 = load i16, i16* %64, align 2, !dbg !1695, !psr.id !1697, !Tainted !102, !ValueTainted !89
  %66 = zext i16 %65 to i32, !dbg !1695, !psr.id !1698, !ValueTainted !89
  %67 = add i64 %.02, 2, !dbg !1699, !psr.id !1700
  %68 = getelementptr inbounds i16, i16* %2, i64 %67, !dbg !1699, !psr.id !1701, !ValueTainted !89, !PointTainted !91
  %69 = load i16, i16* %68, align 2, !dbg !1699, !psr.id !1702, !Tainted !102, !ValueTainted !89
  %70 = zext i16 %69 to i32, !dbg !1699, !psr.id !1703, !ValueTainted !89
  %71 = mul i32 %21, %70, !dbg !1699, !psr.id !1704, !ValueTainted !89
  %72 = add i32 %66, %71, !dbg !1705, !psr.id !1706, !ValueTainted !89
  %73 = add i64 %.02, 2, !dbg !1707, !psr.id !1708
  %74 = getelementptr inbounds i16, i16* %3, i64 %73, !dbg !1707, !psr.id !1709
  %75 = load i16, i16* %74, align 2, !dbg !1707, !psr.id !1710, !ValueTainted !89
  %76 = zext i16 %75 to i32, !dbg !1707, !psr.id !1711, !ValueTainted !89
  %77 = mul i32 %37, %76, !dbg !1707, !psr.id !1712, !ValueTainted !89
  %78 = add i32 %72, %77, !dbg !1713, !psr.id !1714, !ValueTainted !89
  %79 = add i32 %78, %58, !dbg !1715, !psr.id !1716, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %79, metadata !1677, metadata !DIExpression()), !dbg !1678, !psr.id !1717
  %80 = lshr i32 %79, 15, !dbg !1718, !psr.id !1719, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %80, metadata !1635, metadata !DIExpression()), !dbg !1613, !psr.id !1720
  %81 = and i32 %79, 32767, !dbg !1721, !psr.id !1722, !ValueTainted !89
  %82 = trunc i32 %81 to i16, !dbg !1723, !psr.id !1724, !ValueTainted !89
  %83 = add i64 %.02, 1, !dbg !1725, !psr.id !1726
  %84 = getelementptr inbounds i16, i16* %0, i64 %83, !dbg !1727, !psr.id !1728, !ValueTainted !89, !PointTainted !91
  store i16 %82, i16* %84, align 2, !dbg !1729, !psr.id !1730, !Tainted !102
  %85 = add i64 %.02, 3, !dbg !1731, !psr.id !1732
  %86 = getelementptr inbounds i16, i16* %0, i64 %85, !dbg !1733, !psr.id !1734, !ValueTainted !89, !PointTainted !91
  %87 = load i16, i16* %86, align 2, !dbg !1733, !psr.id !1735, !Tainted !102, !ValueTainted !89
  %88 = zext i16 %87 to i32, !dbg !1733, !psr.id !1736, !ValueTainted !89
  %89 = add i64 %.02, 3, !dbg !1737, !psr.id !1738
  %90 = getelementptr inbounds i16, i16* %2, i64 %89, !dbg !1737, !psr.id !1739, !ValueTainted !89, !PointTainted !91
  %91 = load i16, i16* %90, align 2, !dbg !1737, !psr.id !1740, !Tainted !102, !ValueTainted !89
  %92 = zext i16 %91 to i32, !dbg !1737, !psr.id !1741, !ValueTainted !89
  %93 = mul i32 %21, %92, !dbg !1737, !psr.id !1742, !ValueTainted !89
  %94 = add i32 %88, %93, !dbg !1743, !psr.id !1744, !ValueTainted !89
  %95 = add i64 %.02, 3, !dbg !1745, !psr.id !1746
  %96 = getelementptr inbounds i16, i16* %3, i64 %95, !dbg !1745, !psr.id !1747
  %97 = load i16, i16* %96, align 2, !dbg !1745, !psr.id !1748, !ValueTainted !89
  %98 = zext i16 %97 to i32, !dbg !1745, !psr.id !1749, !ValueTainted !89
  %99 = mul i32 %37, %98, !dbg !1745, !psr.id !1750, !ValueTainted !89
  %100 = add i32 %94, %99, !dbg !1751, !psr.id !1752, !ValueTainted !89
  %101 = add i32 %100, %80, !dbg !1753, !psr.id !1754, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %101, metadata !1677, metadata !DIExpression()), !dbg !1678, !psr.id !1755
  %102 = lshr i32 %101, 15, !dbg !1756, !psr.id !1757, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %102, metadata !1635, metadata !DIExpression()), !dbg !1613, !psr.id !1758
  %103 = and i32 %101, 32767, !dbg !1759, !psr.id !1760, !ValueTainted !89
  %104 = trunc i32 %103 to i16, !dbg !1761, !psr.id !1762, !ValueTainted !89
  %105 = add i64 %.02, 2, !dbg !1763, !psr.id !1764
  %106 = getelementptr inbounds i16, i16* %0, i64 %105, !dbg !1765, !psr.id !1766, !ValueTainted !89, !PointTainted !91
  store i16 %104, i16* %106, align 2, !dbg !1767, !psr.id !1768, !Tainted !102
  %107 = add i64 %.02, 4, !dbg !1769, !psr.id !1770
  %108 = getelementptr inbounds i16, i16* %0, i64 %107, !dbg !1771, !psr.id !1772, !ValueTainted !89, !PointTainted !91
  %109 = load i16, i16* %108, align 2, !dbg !1771, !psr.id !1773, !Tainted !102, !ValueTainted !89
  %110 = zext i16 %109 to i32, !dbg !1771, !psr.id !1774, !ValueTainted !89
  %111 = add i64 %.02, 4, !dbg !1775, !psr.id !1776
  %112 = getelementptr inbounds i16, i16* %2, i64 %111, !dbg !1775, !psr.id !1777, !ValueTainted !89, !PointTainted !91
  %113 = load i16, i16* %112, align 2, !dbg !1775, !psr.id !1778, !Tainted !102, !ValueTainted !89
  %114 = zext i16 %113 to i32, !dbg !1775, !psr.id !1779, !ValueTainted !89
  %115 = mul i32 %21, %114, !dbg !1775, !psr.id !1780, !ValueTainted !89
  %116 = add i32 %110, %115, !dbg !1781, !psr.id !1782, !ValueTainted !89
  %117 = add i64 %.02, 4, !dbg !1783, !psr.id !1784
  %118 = getelementptr inbounds i16, i16* %3, i64 %117, !dbg !1783, !psr.id !1785
  %119 = load i16, i16* %118, align 2, !dbg !1783, !psr.id !1786, !ValueTainted !89
  %120 = zext i16 %119 to i32, !dbg !1783, !psr.id !1787, !ValueTainted !89
  %121 = mul i32 %37, %120, !dbg !1783, !psr.id !1788, !ValueTainted !89
  %122 = add i32 %116, %121, !dbg !1789, !psr.id !1790, !ValueTainted !89
  %123 = add i32 %122, %102, !dbg !1791, !psr.id !1792, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %123, metadata !1677, metadata !DIExpression()), !dbg !1678, !psr.id !1793
  %124 = lshr i32 %123, 15, !dbg !1794, !psr.id !1795, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %124, metadata !1635, metadata !DIExpression()), !dbg !1613, !psr.id !1796
  %125 = and i32 %123, 32767, !dbg !1797, !psr.id !1798, !ValueTainted !89
  %126 = trunc i32 %125 to i16, !dbg !1799, !psr.id !1800, !ValueTainted !89
  %127 = add i64 %.02, 3, !dbg !1801, !psr.id !1802
  %128 = getelementptr inbounds i16, i16* %0, i64 %127, !dbg !1803, !psr.id !1804, !ValueTainted !89, !PointTainted !91
  store i16 %126, i16* %128, align 2, !dbg !1805, !psr.id !1806, !Tainted !102
  br label %129, !dbg !1807, !psr.id !1808

129:                                              ; preds = %40
  %130 = add i64 %.02, 4, !dbg !1809, !psr.id !1810
  call void @llvm.dbg.value(metadata i64 %130, metadata !1637, metadata !DIExpression()), !dbg !1557, !psr.id !1811
  br label %38, !dbg !1812, !llvm.loop !1813, !psr.id !1815

131:                                              ; preds = %38
  br label %132, !dbg !1816, !psr.id !1817

132:                                              ; preds = %157, %131
  %.13 = phi i64 [ %.02, %131 ], [ %158, %157 ], !dbg !1613, !psr.id !1818
  %.1 = phi i32 [ %.0, %131 ], [ %152, %157 ], !dbg !1613, !psr.id !1819, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1635, metadata !DIExpression()), !dbg !1613, !psr.id !1820
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1637, metadata !DIExpression()), !dbg !1557, !psr.id !1821
  %133 = icmp ult i64 %.13, %11, !dbg !1822, !psr.id !1825, !ValueTainted !89
  br i1 %133, label %134, label %159, !dbg !1826, !psr.id !1827, !Tainted !102

134:                                              ; preds = %132
  %135 = add i64 %.13, 1, !dbg !1828, !psr.id !1830
  %136 = getelementptr inbounds i16, i16* %0, i64 %135, !dbg !1831, !psr.id !1832, !ValueTainted !89, !PointTainted !91
  %137 = load i16, i16* %136, align 2, !dbg !1831, !psr.id !1833, !Tainted !102, !ValueTainted !89
  %138 = zext i16 %137 to i32, !dbg !1831, !psr.id !1834, !ValueTainted !89
  %139 = add i64 %.13, 1, !dbg !1835, !psr.id !1836
  %140 = getelementptr inbounds i16, i16* %2, i64 %139, !dbg !1835, !psr.id !1837, !ValueTainted !89, !PointTainted !91
  %141 = load i16, i16* %140, align 2, !dbg !1835, !psr.id !1838, !Tainted !102, !ValueTainted !89
  %142 = zext i16 %141 to i32, !dbg !1835, !psr.id !1839, !ValueTainted !89
  %143 = mul i32 %21, %142, !dbg !1835, !psr.id !1840, !ValueTainted !89
  %144 = add i32 %138, %143, !dbg !1841, !psr.id !1842, !ValueTainted !89
  %145 = add i64 %.13, 1, !dbg !1843, !psr.id !1844
  %146 = getelementptr inbounds i16, i16* %3, i64 %145, !dbg !1843, !psr.id !1845
  %147 = load i16, i16* %146, align 2, !dbg !1843, !psr.id !1846, !ValueTainted !89
  %148 = zext i16 %147 to i32, !dbg !1843, !psr.id !1847, !ValueTainted !89
  %149 = mul i32 %37, %148, !dbg !1843, !psr.id !1848, !ValueTainted !89
  %150 = add i32 %144, %149, !dbg !1849, !psr.id !1850, !ValueTainted !89
  %151 = add i32 %150, %.1, !dbg !1851, !psr.id !1852, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %151, metadata !1853, metadata !DIExpression()), !dbg !1854, !psr.id !1855
  %152 = lshr i32 %151, 15, !dbg !1856, !psr.id !1857, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %152, metadata !1635, metadata !DIExpression()), !dbg !1613, !psr.id !1858
  %153 = and i32 %151, 32767, !dbg !1859, !psr.id !1860, !ValueTainted !89
  %154 = trunc i32 %153 to i16, !dbg !1861, !psr.id !1862, !ValueTainted !89
  %155 = add i64 %.13, 0, !dbg !1863, !psr.id !1864
  %156 = getelementptr inbounds i16, i16* %0, i64 %155, !dbg !1865, !psr.id !1866, !ValueTainted !89, !PointTainted !91
  store i16 %154, i16* %156, align 2, !dbg !1867, !psr.id !1868, !Tainted !102
  br label %157, !dbg !1869, !psr.id !1870

157:                                              ; preds = %134
  %158 = add i64 %.13, 1, !dbg !1871, !psr.id !1872
  call void @llvm.dbg.value(metadata i64 %158, metadata !1637, metadata !DIExpression()), !dbg !1557, !psr.id !1873
  br label %132, !dbg !1874, !llvm.loop !1875, !psr.id !1877

159:                                              ; preds = %132
  %160 = add i32 %.01, %.1, !dbg !1878, !psr.id !1879, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %160, metadata !1880, metadata !DIExpression()), !dbg !1613, !psr.id !1881
  %161 = and i32 %160, 32767, !dbg !1882, !psr.id !1883, !ValueTainted !89
  %162 = trunc i32 %161 to i16, !dbg !1884, !psr.id !1885, !ValueTainted !89
  %163 = getelementptr inbounds i16, i16* %0, i64 %11, !dbg !1886, !psr.id !1887, !ValueTainted !89, !PointTainted !91
  store i16 %162, i16* %163, align 2, !dbg !1888, !psr.id !1889, !Tainted !102
  %164 = lshr i32 %160, 15, !dbg !1890, !psr.id !1891, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %164, metadata !1588, metadata !DIExpression()), !dbg !1557, !psr.id !1892
  br label %165, !dbg !1893, !psr.id !1894

165:                                              ; preds = %159
  %166 = add i64 %.04, 1, !dbg !1895, !psr.id !1896
  call void @llvm.dbg.value(metadata i64 %166, metadata !1590, metadata !DIExpression()), !dbg !1557, !psr.id !1897
  br label %15, !dbg !1898, !llvm.loop !1899, !psr.id !1901

167:                                              ; preds = %15
  %168 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1902, !psr.id !1903
  %169 = load i16, i16* %168, align 2, !dbg !1902, !psr.id !1904, !ValueTainted !89
  %170 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !1905, !psr.id !1906, !ValueTainted !89, !PointTainted !91
  store i16 %169, i16* %170, align 2, !dbg !1907, !psr.id !1908, !Tainted !102
  %171 = call i32 @NEQ.11(i32 %.01, i32 0), !dbg !1909, !psr.id !1910, !ValueTainted !89
  %172 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 0), !dbg !1911, !psr.id !1912, !ValueTainted !89
  %173 = call i32 @NOT.12(i32 %172), !dbg !1913, !psr.id !1914, !ValueTainted !89
  %174 = or i32 %171, %173, !dbg !1915, !psr.id !1916, !ValueTainted !89
  %175 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 %174), !dbg !1917, !psr.id !1918, !ValueTainted !89
  ret void, !dbg !1919, !psr.id !1920
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.10(i16* %0, i16 zeroext %1) #0 !dbg !1921 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1922, metadata !DIExpression()), !dbg !1923, !psr.id !1924
  call void @llvm.dbg.value(metadata i16 %1, metadata !1925, metadata !DIExpression()), !dbg !1923, !psr.id !1926
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !1927, !psr.id !1928, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i16* %3, metadata !1922, metadata !DIExpression()), !dbg !1923, !psr.id !1929
  store i16 %1, i16* %0, align 2, !dbg !1930, !psr.id !1931, !Tainted !102
  %4 = bitcast i16* %3 to i8*, !dbg !1932, !psr.id !1933, !ValueTainted !89, !PointTainted !91
  %5 = zext i16 %1 to i32, !dbg !1934, !psr.id !1935, !ValueTainted !89
  %6 = add nsw i32 %5, 15, !dbg !1936, !psr.id !1937, !ValueTainted !89
  %7 = ashr i32 %6, 4, !dbg !1938, !psr.id !1939, !ValueTainted !89
  %8 = sext i32 %7 to i64, !dbg !1940, !psr.id !1941, !ValueTainted !89
  %9 = mul i64 %8, 2, !dbg !1942, !psr.id !1943, !ValueTainted !89
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !1932, !psr.id !1944, !CalledTainted !1168
  ret void, !dbg !1945, !psr.id !1946
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.11(i32 %0, i32 %1) #0 !dbg !1947 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1948, metadata !DIExpression()), !dbg !1949, !psr.id !1950
  call void @llvm.dbg.value(metadata i32 %1, metadata !1951, metadata !DIExpression()), !dbg !1949, !psr.id !1952
  %3 = xor i32 %0, %1, !dbg !1953, !psr.id !831, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !1954, metadata !DIExpression()), !dbg !1949, !psr.id !1955
  %4 = sub i32 0, %3, !dbg !1956, !psr.id !1957, !ValueTainted !89
  %5 = or i32 %3, %4, !dbg !1958, !psr.id !1959, !ValueTainted !89
  %6 = lshr i32 %5, 31, !dbg !1960, !psr.id !1961, !ValueTainted !89
  ret i32 %6, !dbg !1962, !psr.id !1963
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.12(i32 %0) #0 !dbg !1964 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1965, metadata !DIExpression()), !dbg !1966, !psr.id !1967
  %2 = xor i32 %0, 1, !dbg !1968, !psr.id !1969, !ValueTainted !89
  ret i32 %2, !dbg !1970, !psr.id !1971
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_mulacc(i16* %0, i16* %1, i16* %2) #0 !dbg !1972 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1975, metadata !DIExpression()), !dbg !1976, !psr.id !1977
  call void @llvm.dbg.value(metadata i16* %1, metadata !1978, metadata !DIExpression()), !dbg !1976, !psr.id !1168
  call void @llvm.dbg.value(metadata i16* %2, metadata !1979, metadata !DIExpression()), !dbg !1976, !psr.id !1980
  %4 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !1981, !psr.id !1982
  %5 = load i16, i16* %4, align 2, !dbg !1981, !psr.id !1983, !ValueTainted !89
  %6 = zext i16 %5 to i32, !dbg !1981, !psr.id !1984, !ValueTainted !89
  %7 = add nsw i32 %6, 15, !dbg !1985, !psr.id !1986, !ValueTainted !89
  %8 = ashr i32 %7, 4, !dbg !1987, !psr.id !1988, !ValueTainted !89
  %9 = sext i32 %8 to i64, !dbg !1989, !psr.id !1990, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %9, metadata !1991, metadata !DIExpression()), !dbg !1976, !psr.id !1992
  %10 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !1993, !psr.id !1994, !PointTainted !91
  %11 = load i16, i16* %10, align 2, !dbg !1993, !psr.id !1995, !ValueTainted !89
  %12 = zext i16 %11 to i32, !dbg !1993, !psr.id !1996, !ValueTainted !89
  %13 = add nsw i32 %12, 15, !dbg !1997, !psr.id !1998, !ValueTainted !89
  %14 = ashr i32 %13, 4, !dbg !1999, !psr.id !2000, !ValueTainted !89
  %15 = sext i32 %14 to i64, !dbg !2001, !psr.id !2002, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %15, metadata !2003, metadata !DIExpression()), !dbg !1976, !psr.id !2004
  %16 = icmp ne i64 %15, 0, !dbg !2005, !psr.id !2007, !ValueTainted !89
  br i1 %16, label %17, label %27, !dbg !2008, !psr.id !2009, !Tainted !102

17:                                               ; preds = %3
  %18 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !2010, !psr.id !2011
  %19 = load i16, i16* %18, align 2, !dbg !2010, !psr.id !2012, !ValueTainted !89
  %20 = zext i16 %19 to i32, !dbg !2010, !psr.id !2013, !ValueTainted !89
  %21 = and i32 %20, 15, !dbg !2014, !psr.id !2015, !ValueTainted !89
  %22 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !2016, !psr.id !2017, !PointTainted !91
  %23 = load i16, i16* %22, align 2, !dbg !2016, !psr.id !2018, !ValueTainted !89
  %24 = zext i16 %23 to i32, !dbg !2016, !psr.id !2019, !ValueTainted !89
  %25 = and i32 %24, 15, !dbg !2020, !psr.id !2021, !ValueTainted !89
  %26 = add nsw i32 %21, %25, !dbg !2022, !psr.id !2023, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %26, metadata !2024, metadata !DIExpression()), !dbg !1976, !psr.id !2025
  br label %27, !dbg !2026, !psr.id !2027

27:                                               ; preds = %17, %3
  %.02 = phi i32 [ %26, %17 ], [ undef, %3 ], !psr.id !2028, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2024, metadata !DIExpression()), !dbg !1976, !psr.id !2029
  %28 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !2030, !psr.id !2031
  %29 = load i16, i16* %28, align 2, !dbg !2030, !psr.id !2032, !ValueTainted !89
  %30 = zext i16 %29 to i32, !dbg !2030, !psr.id !2033, !ValueTainted !89
  %31 = ashr i32 %30, 4, !dbg !2034, !psr.id !2035, !ValueTainted !89
  %32 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !2036, !psr.id !2037, !PointTainted !91
  %33 = load i16, i16* %32, align 2, !dbg !2036, !psr.id !2038, !ValueTainted !89
  %34 = zext i16 %33 to i32, !dbg !2036, !psr.id !2039, !ValueTainted !89
  %35 = ashr i32 %34, 4, !dbg !2040, !psr.id !2041, !ValueTainted !89
  %36 = add nsw i32 %31, %35, !dbg !2042, !psr.id !2043, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %36, metadata !2044, metadata !DIExpression()), !dbg !1976, !psr.id !2045
  %37 = shl i32 %36, 4, !dbg !2046, !psr.id !2047, !ValueTainted !89
  %38 = add i32 %37, %.02, !dbg !2048, !psr.id !2049, !ValueTainted !89
  %39 = sub i32 %.02, 15, !dbg !2050, !psr.id !2051, !ValueTainted !89
  %40 = xor i32 %39, -1, !dbg !2052, !psr.id !2053, !ValueTainted !89
  %41 = lshr i32 %40, 31, !dbg !2054, !psr.id !2055, !ValueTainted !89
  %42 = add i32 %38, %41, !dbg !2056, !psr.id !2057, !ValueTainted !89
  %43 = trunc i32 %42 to i16, !dbg !2058, !psr.id !2059, !ValueTainted !89
  %44 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !2060, !psr.id !2061, !PointTainted !91
  store i16 %43, i16* %44, align 2, !dbg !2062, !psr.id !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !2064, metadata !DIExpression()), !dbg !1976, !psr.id !2065
  br label %45, !dbg !2066, !psr.id !2068

45:                                               ; preds = %80, %27
  %.03 = phi i64 [ 0, %27 ], [ %81, %80 ], !dbg !2069, !psr.id !2070
  call void @llvm.dbg.value(metadata i64 %.03, metadata !2064, metadata !DIExpression()), !dbg !1976, !psr.id !2071
  %46 = icmp ult i64 %.03, %15, !dbg !2072, !psr.id !2074, !ValueTainted !89
  br i1 %46, label %47, label %82, !dbg !2075, !psr.id !2076, !Tainted !102

47:                                               ; preds = %45
  %48 = add i64 1, %.03, !dbg !2077, !psr.id !2079
  %49 = getelementptr inbounds i16, i16* %2, i64 %48, !dbg !2080, !psr.id !2081, !PointTainted !91
  %50 = load i16, i16* %49, align 2, !dbg !2080, !psr.id !2082, !ValueTainted !89
  %51 = zext i16 %50 to i32, !dbg !2080, !psr.id !2083, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %51, metadata !2084, metadata !DIExpression()), !dbg !2085, !psr.id !2086
  call void @llvm.dbg.value(metadata i32 0, metadata !2087, metadata !DIExpression()), !dbg !2085, !psr.id !2088
  call void @llvm.dbg.value(metadata i64 0, metadata !2089, metadata !DIExpression()), !dbg !2085, !psr.id !2090
  br label %52, !dbg !2091, !psr.id !2093

52:                                               ; preds = %73, %47
  %.01 = phi i64 [ 0, %47 ], [ %74, %73 ], !dbg !2094, !psr.id !2095
  %.0 = phi i32 [ 0, %47 ], [ %67, %73 ], !dbg !2085, !psr.id !2096, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2087, metadata !DIExpression()), !dbg !2085, !psr.id !2097
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2089, metadata !DIExpression()), !dbg !2085, !psr.id !2098
  %53 = icmp ult i64 %.01, %9, !dbg !2099, !psr.id !2101, !ValueTainted !89
  br i1 %53, label %54, label %75, !dbg !2102, !psr.id !2103, !Tainted !102

54:                                               ; preds = %52
  %55 = add i64 1, %.03, !dbg !2104, !psr.id !2106
  %56 = add i64 %55, %.01, !dbg !2107, !psr.id !2108
  %57 = getelementptr inbounds i16, i16* %0, i64 %56, !dbg !2109, !psr.id !2110, !PointTainted !91
  %58 = load i16, i16* %57, align 2, !dbg !2109, !psr.id !2111, !ValueTainted !89
  %59 = zext i16 %58 to i32, !dbg !2112, !psr.id !2113, !ValueTainted !89
  %60 = add i64 1, %.01, !dbg !2114, !psr.id !2115
  %61 = getelementptr inbounds i16, i16* %1, i64 %60, !dbg !2114, !psr.id !2116
  %62 = load i16, i16* %61, align 2, !dbg !2114, !psr.id !2117, !ValueTainted !89
  %63 = zext i16 %62 to i32, !dbg !2114, !psr.id !2118, !ValueTainted !89
  %64 = mul i32 %51, %63, !dbg !2114, !psr.id !2119, !ValueTainted !89
  %65 = add i32 %59, %64, !dbg !2120, !psr.id !2121, !ValueTainted !89
  %66 = add i32 %65, %.0, !dbg !2122, !psr.id !2123, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %66, metadata !2124, metadata !DIExpression()), !dbg !2125, !psr.id !2126
  %67 = lshr i32 %66, 15, !dbg !2127, !psr.id !2128, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %67, metadata !2087, metadata !DIExpression()), !dbg !2085, !psr.id !2129
  %68 = and i32 %66, 32767, !dbg !2130, !psr.id !2131, !ValueTainted !89
  %69 = trunc i32 %68 to i16, !dbg !2132, !psr.id !2133, !ValueTainted !89
  %70 = add i64 1, %.03, !dbg !2134, !psr.id !2135
  %71 = add i64 %70, %.01, !dbg !2136, !psr.id !2137
  %72 = getelementptr inbounds i16, i16* %0, i64 %71, !dbg !2138, !psr.id !2139, !PointTainted !91
  store i16 %69, i16* %72, align 2, !dbg !2140, !psr.id !2141
  br label %73, !dbg !2142, !psr.id !2143

73:                                               ; preds = %54
  %74 = add i64 %.01, 1, !dbg !2144, !psr.id !2145
  call void @llvm.dbg.value(metadata i64 %74, metadata !2089, metadata !DIExpression()), !dbg !2085, !psr.id !2146
  br label %52, !dbg !2147, !llvm.loop !2148, !psr.id !2150

75:                                               ; preds = %52
  %76 = trunc i32 %.0 to i16, !dbg !2151, !psr.id !2152, !ValueTainted !89
  %77 = add i64 1, %.03, !dbg !2153, !psr.id !2154
  %78 = add i64 %77, %9, !dbg !2155, !psr.id !2156, !ValueTainted !89
  %79 = getelementptr inbounds i16, i16* %0, i64 %78, !dbg !2157, !psr.id !2158, !ValueTainted !89, !PointTainted !91
  store i16 %76, i16* %79, align 2, !dbg !2159, !psr.id !2160, !Tainted !102
  br label %80, !dbg !2161, !psr.id !2162

80:                                               ; preds = %75
  %81 = add i64 %.03, 1, !dbg !2163, !psr.id !2164
  call void @llvm.dbg.value(metadata i64 %81, metadata !2064, metadata !DIExpression()), !dbg !1976, !psr.id !2165
  br label %45, !dbg !2166, !llvm.loop !2167, !psr.id !2169

82:                                               ; preds = %45
  ret void, !dbg !2170, !psr.id !2171
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_muladd_small(i16* %0, i16 zeroext %1, i16* %2) #0 !dbg !2172 {
  %4 = alloca i32, align 4, !psr.id !2175
  call void @llvm.dbg.value(metadata i16* %0, metadata !2176, metadata !DIExpression()), !dbg !2177, !psr.id !2178
  call void @llvm.dbg.value(metadata i16 %1, metadata !2179, metadata !DIExpression()), !dbg !2177, !psr.id !2180
  call void @llvm.dbg.value(metadata i16* %2, metadata !2181, metadata !DIExpression()), !dbg !2177, !psr.id !2182
  %5 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !2183, !psr.id !2184
  %6 = load i16, i16* %5, align 2, !dbg !2183, !psr.id !2185, !ValueTainted !89
  %7 = zext i16 %6 to i32, !dbg !2183, !psr.id !2186, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %7, metadata !2187, metadata !DIExpression()), !dbg !2177, !psr.id !2188
  %8 = icmp eq i32 %7, 0, !dbg !2189, !psr.id !2191, !ValueTainted !89
  br i1 %8, label %9, label %10, !dbg !2192, !psr.id !2193, !Tainted !102

9:                                                ; preds = %3
  br label %138, !dbg !2194, !psr.id !2196

10:                                               ; preds = %3
  %11 = icmp ule i32 %7, 15, !dbg !2197, !psr.id !2199, !ValueTainted !89
  br i1 %11, label %12, label %26, !dbg !2200, !psr.id !2201, !Tainted !102

12:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2202, metadata !DIExpression()), !dbg !2204, !psr.id !2205
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2206, !psr.id !2207, !PointTainted !91
  %14 = load i16, i16* %13, align 2, !dbg !2206, !psr.id !2208, !ValueTainted !89
  %15 = zext i16 %14 to i32, !dbg !2209, !psr.id !2210, !ValueTainted !89
  %16 = shl i32 %15, 15, !dbg !2211, !psr.id !2212, !ValueTainted !89
  %17 = zext i16 %1 to i32, !dbg !2213, !psr.id !2214, !ValueTainted !89
  %18 = or i32 %16, %17, !dbg !2215, !psr.id !2216, !ValueTainted !89
  %19 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2217, !psr.id !2218
  %20 = load i16, i16* %19, align 2, !dbg !2217, !psr.id !2219, !ValueTainted !89
  %21 = zext i16 %20 to i32, !dbg !2217, !psr.id !2220, !ValueTainted !89
  %22 = call i32 @divrem16(i32 %18, i32 %21, i32* %4), !dbg !2221, !psr.id !2222, !ValueTainted !89
  %23 = load i32, i32* %4, align 4, !dbg !2223, !psr.id !2224, !ValueTainted !89
  %24 = trunc i32 %23 to i16, !dbg !2223, !psr.id !2225, !ValueTainted !89
  %25 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2226, !psr.id !2227, !PointTainted !91
  store i16 %24, i16* %25, align 2, !dbg !2228, !psr.id !2229
  br label %138, !dbg !2230, !psr.id !2231

26:                                               ; preds = %10
  %27 = add i32 %7, 15, !dbg !2232, !psr.id !2233, !ValueTainted !89
  %28 = lshr i32 %27, 4, !dbg !2234, !psr.id !2235, !ValueTainted !89
  %29 = zext i32 %28 to i64, !dbg !2236, !psr.id !2237, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %29, metadata !2238, metadata !DIExpression()), !dbg !2177, !psr.id !2239
  %30 = and i32 %7, 15, !dbg !2240, !psr.id !2241, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %30, metadata !2242, metadata !DIExpression()), !dbg !2177, !psr.id !2243
  %31 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !2244, !psr.id !2245, !ValueTainted !89, !PointTainted !91
  %32 = load i16, i16* %31, align 2, !dbg !2244, !psr.id !2246, !Tainted !102, !ValueTainted !89
  %33 = zext i16 %32 to i32, !dbg !2244, !psr.id !2247, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %33, metadata !2248, metadata !DIExpression()), !dbg !2177, !psr.id !2249
  %34 = icmp eq i32 %30, 0, !dbg !2250, !psr.id !2252, !ValueTainted !89
  br i1 %34, label %35, label %54, !dbg !2253, !psr.id !2254, !Tainted !102

35:                                               ; preds = %26
  %36 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !2255, !psr.id !2257, !ValueTainted !89, !PointTainted !91
  %37 = load i16, i16* %36, align 2, !dbg !2255, !psr.id !2258, !Tainted !102, !ValueTainted !89
  %38 = zext i16 %37 to i32, !dbg !2255, !psr.id !2259, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %38, metadata !2260, metadata !DIExpression()), !dbg !2177, !psr.id !2261
  %39 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2262, !psr.id !2263, !PointTainted !91
  %40 = bitcast i16* %39 to i8*, !dbg !2264, !psr.id !2265, !PointTainted !91
  %41 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2266, !psr.id !2267, !PointTainted !91
  %42 = bitcast i16* %41 to i8*, !dbg !2264, !psr.id !2268, !PointTainted !91
  %43 = sub i64 %29, 1, !dbg !2269, !psr.id !2270, !ValueTainted !89
  %44 = mul i64 %43, 2, !dbg !2271, !psr.id !2272, !ValueTainted !89
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %40, i8* align 2 %42, i64 %44, i1 false), !dbg !2264, !psr.id !2273
  %45 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2274, !psr.id !2275, !PointTainted !91
  store i16 %1, i16* %45, align 2, !dbg !2276, !psr.id !2277
  %46 = shl i32 %38, 15, !dbg !2278, !psr.id !2279, !ValueTainted !89
  %47 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !2280, !psr.id !2281, !ValueTainted !89, !PointTainted !91
  %48 = load i16, i16* %47, align 2, !dbg !2280, !psr.id !2282, !Tainted !102, !ValueTainted !89
  %49 = zext i16 %48 to i32, !dbg !2280, !psr.id !2283, !ValueTainted !89
  %50 = add i32 %46, %49, !dbg !2284, !psr.id !2285, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %50, metadata !2286, metadata !DIExpression()), !dbg !2177, !psr.id !2287
  %51 = getelementptr inbounds i16, i16* %2, i64 %29, !dbg !2288, !psr.id !2289, !ValueTainted !89
  %52 = load i16, i16* %51, align 2, !dbg !2288, !psr.id !2290, !Tainted !102, !ValueTainted !89
  %53 = zext i16 %52 to i32, !dbg !2288, !psr.id !2291, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %53, metadata !2292, metadata !DIExpression()), !dbg !2177, !psr.id !2293
  br label %98, !dbg !2294, !psr.id !2295

54:                                               ; preds = %26
  %55 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !2296, !psr.id !2298, !ValueTainted !89, !PointTainted !91
  %56 = load i16, i16* %55, align 2, !dbg !2296, !psr.id !2299, !Tainted !102, !ValueTainted !89
  %57 = zext i16 %56 to i32, !dbg !2296, !psr.id !2300, !ValueTainted !89
  %58 = sub i32 15, %30, !dbg !2301, !psr.id !2302, !ValueTainted !89
  %59 = shl i32 %57, %58, !dbg !2303, !psr.id !2304, !ValueTainted !89
  %60 = sub i64 %29, 1, !dbg !2305, !psr.id !2306, !ValueTainted !89
  %61 = getelementptr inbounds i16, i16* %0, i64 %60, !dbg !2307, !psr.id !2308, !ValueTainted !89, !PointTainted !91
  %62 = load i16, i16* %61, align 2, !dbg !2307, !psr.id !2309, !Tainted !102, !ValueTainted !89
  %63 = zext i16 %62 to i32, !dbg !2307, !psr.id !2310, !ValueTainted !89
  %64 = ashr i32 %63, %30, !dbg !2311, !psr.id !2312, !ValueTainted !89
  %65 = or i32 %59, %64, !dbg !2313, !psr.id !2314, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %65, metadata !2260, metadata !DIExpression()), !dbg !2177, !psr.id !2315
  %66 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2316, !psr.id !2317, !PointTainted !91
  %67 = bitcast i16* %66 to i8*, !dbg !2318, !psr.id !2319, !PointTainted !91
  %68 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2320, !psr.id !2321, !PointTainted !91
  %69 = bitcast i16* %68 to i8*, !dbg !2318, !psr.id !2322, !PointTainted !91
  %70 = sub i64 %29, 1, !dbg !2323, !psr.id !2324, !ValueTainted !89
  %71 = mul i64 %70, 2, !dbg !2325, !psr.id !2326, !ValueTainted !89
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %67, i8* align 2 %69, i64 %71, i1 false), !dbg !2318, !psr.id !2327
  %72 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2328, !psr.id !2329, !PointTainted !91
  store i16 %1, i16* %72, align 2, !dbg !2330, !psr.id !2331
  %73 = shl i32 %65, 15, !dbg !2332, !psr.id !2333, !ValueTainted !89
  %74 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !2334, !psr.id !2335, !ValueTainted !89, !PointTainted !91
  %75 = load i16, i16* %74, align 2, !dbg !2334, !psr.id !2336, !Tainted !102, !ValueTainted !89
  %76 = zext i16 %75 to i32, !dbg !2334, !psr.id !2337, !ValueTainted !89
  %77 = sub i32 15, %30, !dbg !2338, !psr.id !2339, !ValueTainted !89
  %78 = shl i32 %76, %77, !dbg !2340, !psr.id !2341, !ValueTainted !89
  %79 = sub i64 %29, 1, !dbg !2342, !psr.id !2343, !ValueTainted !89
  %80 = getelementptr inbounds i16, i16* %0, i64 %79, !dbg !2344, !psr.id !2345, !ValueTainted !89, !PointTainted !91
  %81 = load i16, i16* %80, align 2, !dbg !2344, !psr.id !2346, !Tainted !102, !ValueTainted !89
  %82 = zext i16 %81 to i32, !dbg !2344, !psr.id !2347, !ValueTainted !89
  %83 = ashr i32 %82, %30, !dbg !2348, !psr.id !2349, !ValueTainted !89
  %84 = or i32 %78, %83, !dbg !2350, !psr.id !2351, !ValueTainted !89
  %85 = and i32 %84, 32767, !dbg !2352, !psr.id !2353, !ValueTainted !89
  %86 = or i32 %73, %85, !dbg !2354, !psr.id !2355, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %86, metadata !2286, metadata !DIExpression()), !dbg !2177, !psr.id !2356
  %87 = getelementptr inbounds i16, i16* %2, i64 %29, !dbg !2357, !psr.id !2358, !ValueTainted !89
  %88 = load i16, i16* %87, align 2, !dbg !2357, !psr.id !2359, !Tainted !102, !ValueTainted !89
  %89 = zext i16 %88 to i32, !dbg !2357, !psr.id !2360, !ValueTainted !89
  %90 = sub i32 15, %30, !dbg !2361, !psr.id !2362, !ValueTainted !89
  %91 = shl i32 %89, %90, !dbg !2363, !psr.id !2364, !ValueTainted !89
  %92 = sub i64 %29, 1, !dbg !2365, !psr.id !2366, !ValueTainted !89
  %93 = getelementptr inbounds i16, i16* %2, i64 %92, !dbg !2367, !psr.id !2368, !ValueTainted !89
  %94 = load i16, i16* %93, align 2, !dbg !2367, !psr.id !2369, !Tainted !102, !ValueTainted !89
  %95 = zext i16 %94 to i32, !dbg !2367, !psr.id !2370, !ValueTainted !89
  %96 = ashr i32 %95, %30, !dbg !2371, !psr.id !2372, !ValueTainted !89
  %97 = or i32 %91, %96, !dbg !2373, !psr.id !2374, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %97, metadata !2292, metadata !DIExpression()), !dbg !2177, !psr.id !2375
  br label %98, !psr.id !2376

98:                                               ; preds = %54, %35
  %.05 = phi i32 [ %38, %35 ], [ %65, %54 ], !dbg !2377, !psr.id !2378, !ValueTainted !89
  %.03 = phi i32 [ %50, %35 ], [ %86, %54 ], !dbg !2377, !psr.id !2379
  %.02 = phi i32 [ %53, %35 ], [ %97, %54 ], !dbg !2377, !psr.id !2380, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2292, metadata !DIExpression()), !dbg !2177, !psr.id !2381
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2286, metadata !DIExpression()), !dbg !2177, !psr.id !2382
  call void @llvm.dbg.value(metadata i32 %.05, metadata !2260, metadata !DIExpression()), !dbg !2177, !psr.id !2383
  %99 = call i32 @divrem16(i32 %.03, i32 %.02, i32* null), !dbg !2384, !psr.id !2385, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %99, metadata !2386, metadata !DIExpression()), !dbg !2177, !psr.id !2387
  %100 = call i32 @EQ.15(i32 %.02, i32 %.05), !dbg !2388, !psr.id !2389, !ValueTainted !89
  %101 = sub i32 %99, 1, !dbg !2390, !psr.id !2391, !ValueTainted !89
  %102 = sub i32 %99, 1, !dbg !2392, !psr.id !2393, !ValueTainted !89
  %103 = lshr i32 %102, 31, !dbg !2394, !psr.id !2395, !ValueTainted !89
  %104 = add i32 %101, %103, !dbg !2396, !psr.id !2397, !ValueTainted !89
  %105 = call i32 @MUX.16(i32 %100, i32 32767, i32 %104), !dbg !2398, !psr.id !2399, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %105, metadata !2386, metadata !DIExpression()), !dbg !2177, !psr.id !2400
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()), !dbg !2177, !psr.id !2402
  call void @llvm.dbg.value(metadata i32 1, metadata !2403, metadata !DIExpression()), !dbg !2177, !psr.id !2404
  call void @llvm.dbg.value(metadata i64 1, metadata !2405, metadata !DIExpression()), !dbg !2177, !psr.id !2406
  br label %106, !dbg !2407, !psr.id !2409

106:                                              ; preds = %128, %98
  %.04 = phi i64 [ 1, %98 ], [ %129, %128 ], !dbg !2410, !psr.id !2411
  %.01 = phi i32 [ 0, %98 ], [ %121, %128 ], !dbg !2177, !psr.id !2412, !ValueTainted !89
  %.0 = phi i32 [ 1, %98 ], [ %127, %128 ], !dbg !2177, !psr.id !2413, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2403, metadata !DIExpression()), !dbg !2177, !psr.id !2414
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2401, metadata !DIExpression()), !dbg !2177, !psr.id !2415
  call void @llvm.dbg.value(metadata i64 %.04, metadata !2405, metadata !DIExpression()), !dbg !2177, !psr.id !2416
  %107 = icmp ule i64 %.04, %29, !dbg !2417, !psr.id !2419, !ValueTainted !89
  br i1 %107, label %108, label %130, !dbg !2420, !psr.id !2421, !Tainted !102

108:                                              ; preds = %106
  %109 = getelementptr inbounds i16, i16* %2, i64 %.04, !dbg !2422, !psr.id !2424
  %110 = load i16, i16* %109, align 2, !dbg !2422, !psr.id !2425, !ValueTainted !89
  %111 = zext i16 %110 to i32, !dbg !2422, !psr.id !2426
  call void @llvm.dbg.value(metadata i32 %111, metadata !2427, metadata !DIExpression()), !dbg !2428, !psr.id !2429
  %112 = mul i32 %111, %105, !dbg !2430, !psr.id !2431, !ValueTainted !89
  %113 = add i32 %112, %.01, !dbg !2432, !psr.id !2433, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %113, metadata !2434, metadata !DIExpression()), !dbg !2428, !psr.id !2435
  %114 = lshr i32 %113, 15, !dbg !2436, !psr.id !2437, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %114, metadata !2401, metadata !DIExpression()), !dbg !2177, !psr.id !2438
  %115 = and i32 %113, 32767, !dbg !2439, !psr.id !2440, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %115, metadata !2434, metadata !DIExpression()), !dbg !2428, !psr.id !2441
  %116 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !2442, !psr.id !2443, !PointTainted !91
  %117 = load i16, i16* %116, align 2, !dbg !2442, !psr.id !2444, !ValueTainted !89
  %118 = zext i16 %117 to i32, !dbg !2442, !psr.id !2445, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %118, metadata !2446, metadata !DIExpression()), !dbg !2428, !psr.id !2447
  %119 = sub i32 %118, %115, !dbg !2448, !psr.id !2449, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %119, metadata !2450, metadata !DIExpression()), !dbg !2428, !psr.id !2451
  %120 = lshr i32 %119, 31, !dbg !2452, !psr.id !2453, !ValueTainted !89
  %121 = add i32 %114, %120, !dbg !2454, !psr.id !2455, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %121, metadata !2401, metadata !DIExpression()), !dbg !2177, !psr.id !2456
  %122 = and i32 %119, 32767, !dbg !2457, !psr.id !2458
  call void @llvm.dbg.value(metadata i32 %122, metadata !2450, metadata !DIExpression()), !dbg !2428, !psr.id !2459
  %123 = trunc i32 %122 to i16, !dbg !2460, !psr.id !2461, !ValueTainted !89
  %124 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !2462, !psr.id !2463, !PointTainted !91
  store i16 %123, i16* %124, align 2, !dbg !2464, !psr.id !2465
  %125 = call i32 @EQ.15(i32 %122, i32 %111), !dbg !2466, !psr.id !2467, !ValueTainted !89
  %126 = call i32 @GT.17(i32 %122, i32 %111), !dbg !2468, !psr.id !2469, !ValueTainted !89
  %127 = call i32 @MUX.16(i32 %125, i32 %.0, i32 %126), !dbg !2470, !psr.id !2471, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %127, metadata !2403, metadata !DIExpression()), !dbg !2177, !psr.id !2472
  br label %128, !dbg !2473, !psr.id !2474

128:                                              ; preds = %108
  %129 = add i64 %.04, 1, !dbg !2475, !psr.id !2476
  call void @llvm.dbg.value(metadata i64 %129, metadata !2405, metadata !DIExpression()), !dbg !2177, !psr.id !2477
  br label %106, !dbg !2478, !llvm.loop !2479, !psr.id !2481

130:                                              ; preds = %106
  %131 = call i32 @GT.17(i32 %.01, i32 %33), !dbg !2482, !psr.id !2483
  call void @llvm.dbg.value(metadata i32 %131, metadata !2484, metadata !DIExpression()), !dbg !2177, !psr.id !2485
  %132 = xor i32 %131, -1, !dbg !2486, !psr.id !2487, !ValueTainted !89
  %133 = call i32 @GT.17(i32 %33, i32 %.01), !dbg !2488, !psr.id !2489, !ValueTainted !89
  %134 = or i32 %.0, %133, !dbg !2490, !psr.id !2491, !ValueTainted !89
  %135 = and i32 %132, %134, !dbg !2492, !psr.id !2493, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %135, metadata !2494, metadata !DIExpression()), !dbg !2177, !psr.id !2495
  %136 = call i32 @br_i15_add(i16* %0, i16* %2, i32 %131), !dbg !2496, !psr.id !2497
  %137 = call i32 @br_i15_sub(i16* %0, i16* %2, i32 %135), !dbg !2498, !psr.id !2499, !ValueTainted !89
  br label %138, !dbg !2500, !psr.id !2501

138:                                              ; preds = %130, %12, %9
  ret void, !dbg !2500, !psr.id !2502
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @divrem16(i32 %0, i32 %1, i32* %2) #0 !dbg !2503 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2507, metadata !DIExpression()), !dbg !2508, !psr.id !2509
  call void @llvm.dbg.value(metadata i32 %1, metadata !2510, metadata !DIExpression()), !dbg !2508, !psr.id !2511
  call void @llvm.dbg.value(metadata i32* %2, metadata !2512, metadata !DIExpression()), !dbg !2508, !psr.id !2513
  call void @llvm.dbg.value(metadata i32 0, metadata !2514, metadata !DIExpression()), !dbg !2508, !psr.id !2515
  %4 = shl i32 %1, 16, !dbg !2516, !psr.id !2517, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %4, metadata !2510, metadata !DIExpression()), !dbg !2508, !psr.id !2518
  call void @llvm.dbg.value(metadata i32 16, metadata !2519, metadata !DIExpression()), !dbg !2508, !psr.id !2520
  br label %5, !dbg !2521, !psr.id !2523

5:                                                ; preds = %16, %3
  %.03 = phi i32 [ 16, %3 ], [ %17, %16 ], !dbg !2524, !psr.id !2525
  %.02 = phi i32 [ 0, %3 ], [ %11, %16 ], !dbg !2508, !psr.id !2526, !ValueTainted !89
  %.01 = phi i32 [ %4, %3 ], [ %15, %16 ], !dbg !2508, !psr.id !2527, !ValueTainted !89
  %.0 = phi i32 [ %0, %3 ], [ %14, %16 ], !psr.id !2528, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2507, metadata !DIExpression()), !dbg !2508, !psr.id !2529
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2510, metadata !DIExpression()), !dbg !2508, !psr.id !2530
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2514, metadata !DIExpression()), !dbg !2508, !psr.id !2531
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2519, metadata !DIExpression()), !dbg !2508, !psr.id !2532
  %6 = icmp sge i32 %.03, 0, !dbg !2533, !psr.id !2535
  br i1 %6, label %7, label %18, !dbg !2536, !psr.id !2537

7:                                                ; preds = %5
  %8 = call i32 @GT.17(i32 %.01, i32 %.0), !dbg !2538, !psr.id !2540, !ValueTainted !89
  %9 = call i32 @NOT.18(i32 %8), !dbg !2538, !psr.id !2541, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %9, metadata !2542, metadata !DIExpression()), !dbg !2543, !psr.id !2544
  %10 = shl i32 %9, %.03, !dbg !2545, !psr.id !2546, !ValueTainted !89
  %11 = or i32 %.02, %10, !dbg !2547, !psr.id !2548, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %11, metadata !2514, metadata !DIExpression()), !dbg !2508, !psr.id !2549
  %12 = sub i32 0, %9, !dbg !2550, !psr.id !2551, !ValueTainted !89
  %13 = and i32 %12, %.01, !dbg !2552, !psr.id !2553, !ValueTainted !89
  %14 = sub i32 %.0, %13, !dbg !2554, !psr.id !2555, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %14, metadata !2507, metadata !DIExpression()), !dbg !2508, !psr.id !2556
  %15 = lshr i32 %.01, 1, !dbg !2557, !psr.id !2558, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %15, metadata !2510, metadata !DIExpression()), !dbg !2508, !psr.id !2559
  br label %16, !dbg !2560, !psr.id !2561

16:                                               ; preds = %7
  %17 = add nsw i32 %.03, -1, !dbg !2562, !psr.id !2563
  call void @llvm.dbg.value(metadata i32 %17, metadata !2519, metadata !DIExpression()), !dbg !2508, !psr.id !2564
  br label %5, !dbg !2565, !llvm.loop !2566, !psr.id !2568

18:                                               ; preds = %5
  %19 = icmp ne i32* %2, null, !dbg !2569, !psr.id !2571
  br i1 %19, label %20, label %21, !dbg !2572, !psr.id !2573

20:                                               ; preds = %18
  store i32 %.0, i32* %2, align 4, !dbg !2574, !psr.id !2576
  br label %21, !dbg !2577, !psr.id !2578

21:                                               ; preds = %20, %18
  ret i32 %.02, !dbg !2579, !psr.id !2580
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.15(i32 %0, i32 %1) #0 !dbg !2581 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2582, metadata !DIExpression()), !dbg !2583, !psr.id !2584
  call void @llvm.dbg.value(metadata i32 %1, metadata !2585, metadata !DIExpression()), !dbg !2583, !psr.id !2586
  %3 = xor i32 %0, %1, !dbg !2587, !psr.id !2588, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !2589, metadata !DIExpression()), !dbg !2583, !psr.id !2590
  %4 = sub i32 0, %3, !dbg !2591, !psr.id !2592, !ValueTainted !89
  %5 = or i32 %3, %4, !dbg !2593, !psr.id !2594, !ValueTainted !89
  %6 = lshr i32 %5, 31, !dbg !2595, !psr.id !2596, !ValueTainted !89
  %7 = call i32 @NOT.18(i32 %6), !dbg !2597, !psr.id !2598, !ValueTainted !89
  ret i32 %7, !dbg !2599, !psr.id !2600
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.16(i32 %0, i32 %1, i32 %2) #0 !dbg !2601 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2603, !psr.id !2604
  call void @llvm.dbg.value(metadata i32 %1, metadata !2605, metadata !DIExpression()), !dbg !2603, !psr.id !2606
  call void @llvm.dbg.value(metadata i32 %2, metadata !2607, metadata !DIExpression()), !dbg !2603, !psr.id !2608
  %4 = sub i32 0, %0, !dbg !2609, !psr.id !2610, !ValueTainted !89
  %5 = xor i32 %1, %2, !dbg !2611, !psr.id !2612, !ValueTainted !89
  %6 = and i32 %4, %5, !dbg !2613, !psr.id !2614, !ValueTainted !89
  %7 = xor i32 %2, %6, !dbg !2615, !psr.id !2616, !ValueTainted !89
  ret i32 %7, !dbg !2617, !psr.id !2618
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.17(i32 %0, i32 %1) #0 !dbg !2619 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2621, !psr.id !2622
  call void @llvm.dbg.value(metadata i32 %1, metadata !2623, metadata !DIExpression()), !dbg !2621, !psr.id !2624
  %3 = sub i32 %1, %0, !dbg !2625, !psr.id !2626, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !2627, metadata !DIExpression()), !dbg !2621, !psr.id !2628
  %4 = xor i32 %0, %1, !dbg !2629, !psr.id !2630, !ValueTainted !89
  %5 = xor i32 %0, %3, !dbg !2631, !psr.id !2632, !ValueTainted !89
  %6 = and i32 %4, %5, !dbg !2633, !psr.id !2634, !ValueTainted !89
  %7 = xor i32 %3, %6, !dbg !2635, !psr.id !2636, !ValueTainted !89
  %8 = lshr i32 %7, 31, !dbg !2637, !psr.id !2638, !ValueTainted !89
  ret i32 %8, !dbg !2639, !psr.id !2640
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.18(i32 %0) #0 !dbg !2641 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2642, metadata !DIExpression()), !dbg !2643, !psr.id !2644
  %2 = xor i32 %0, 1, !dbg !2645, !psr.id !2646, !ValueTainted !89
  ret i32 %2, !dbg !2647, !psr.id !2648
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @br_i15_ninv15(i16 zeroext %0) #0 !dbg !2649 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2652, metadata !DIExpression()), !dbg !2653, !psr.id !2654
  %2 = zext i16 %0 to i32, !dbg !2655, !psr.id !2656, !ValueTainted !89
  %3 = sub nsw i32 2, %2, !dbg !2657, !psr.id !2658, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %3, metadata !2659, metadata !DIExpression()), !dbg !2653, !psr.id !2660
  %4 = zext i16 %0 to i32, !dbg !2661, !psr.id !2662, !ValueTainted !89
  %5 = mul i32 %4, %3, !dbg !2661, !psr.id !2663, !ValueTainted !89
  %6 = sub i32 2, %5, !dbg !2661, !psr.id !2664, !ValueTainted !89
  %7 = mul i32 %3, %6, !dbg !2661, !psr.id !2665, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %7, metadata !2659, metadata !DIExpression()), !dbg !2653, !psr.id !2666
  %8 = zext i16 %0 to i32, !dbg !2667, !psr.id !2668, !ValueTainted !89
  %9 = mul i32 %8, %7, !dbg !2667, !psr.id !2669, !ValueTainted !89
  %10 = sub i32 2, %9, !dbg !2667, !psr.id !2670, !ValueTainted !89
  %11 = mul i32 %7, %10, !dbg !2667, !psr.id !2671, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %11, metadata !2659, metadata !DIExpression()), !dbg !2653, !psr.id !2672
  %12 = zext i16 %0 to i32, !dbg !2673, !psr.id !2674, !ValueTainted !89
  %13 = mul i32 %12, %11, !dbg !2673, !psr.id !2675, !ValueTainted !89
  %14 = sub i32 2, %13, !dbg !2673, !psr.id !2676, !ValueTainted !89
  %15 = mul i32 %11, %14, !dbg !2673, !psr.id !2677, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %15, metadata !2659, metadata !DIExpression()), !dbg !2653, !psr.id !2678
  %16 = zext i16 %0 to i32, !dbg !2679, !psr.id !2680, !ValueTainted !89
  %17 = and i32 %16, 1, !dbg !2681, !psr.id !2682, !ValueTainted !89
  %18 = sub i32 0, %15, !dbg !2683, !psr.id !2684, !ValueTainted !89
  %19 = call i32 @MUX.19(i32 %17, i32 %18, i32 0), !dbg !2685, !psr.id !2686, !ValueTainted !89
  %20 = and i32 %19, 32767, !dbg !2687, !psr.id !2688, !ValueTainted !89
  %21 = trunc i32 %20 to i16, !dbg !2685, !psr.id !2689, !ValueTainted !89
  ret i16 %21, !dbg !2690, !psr.id !2691
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.19(i32 %0, i32 %1, i32 %2) #0 !dbg !2692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2693, metadata !DIExpression()), !dbg !2694, !psr.id !2695
  call void @llvm.dbg.value(metadata i32 %1, metadata !2696, metadata !DIExpression()), !dbg !2694, !psr.id !2697
  call void @llvm.dbg.value(metadata i32 %2, metadata !2698, metadata !DIExpression()), !dbg !2694, !psr.id !2699
  %4 = sub i32 0, %0, !dbg !2700, !psr.id !2701, !ValueTainted !89
  %5 = xor i32 %1, %2, !dbg !2702, !psr.id !2703, !ValueTainted !89
  %6 = and i32 %4, %5, !dbg !2704, !psr.id !2705, !ValueTainted !89
  %7 = xor i32 %2, %6, !dbg !2706, !psr.id !2707, !ValueTainted !89
  ret i32 %7, !dbg !2708, !psr.id !2709
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_reduce(i16* %0, i16* %1, i16* %2) #0 !dbg !2710 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !2711, metadata !DIExpression()), !dbg !2712, !psr.id !2713
  call void @llvm.dbg.value(metadata i16* %1, metadata !2714, metadata !DIExpression()), !dbg !2712, !psr.id !2715
  call void @llvm.dbg.value(metadata i16* %2, metadata !2716, metadata !DIExpression()), !dbg !2712, !psr.id !2717
  %4 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !2718, !psr.id !2719
  %5 = load i16, i16* %4, align 2, !dbg !2718, !psr.id !2720, !ValueTainted !89
  %6 = zext i16 %5 to i32, !dbg !2718, !psr.id !2721, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %6, metadata !2722, metadata !DIExpression()), !dbg !2712, !psr.id !2723
  %7 = add i32 %6, 15, !dbg !2724, !psr.id !2725, !ValueTainted !89
  %8 = lshr i32 %7, 4, !dbg !2726, !psr.id !2727, !ValueTainted !89
  %9 = zext i32 %8 to i64, !dbg !2728, !psr.id !2729, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %9, metadata !2730, metadata !DIExpression()), !dbg !2712, !psr.id !2731
  %10 = trunc i32 %6 to i16, !dbg !2732, !psr.id !2733, !ValueTainted !89
  %11 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !2734, !psr.id !2735
  store i16 %10, i16* %11, align 2, !dbg !2736, !psr.id !2737
  %12 = icmp eq i32 %6, 0, !dbg !2738, !psr.id !2740, !ValueTainted !89
  br i1 %12, label %13, label %14, !dbg !2741, !psr.id !2742, !Tainted !102

13:                                               ; preds = %3
  br label %55, !dbg !2743, !psr.id !2745

14:                                               ; preds = %3
  %15 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !2746, !psr.id !2747
  %16 = load i16, i16* %15, align 2, !dbg !2746, !psr.id !2748, !ValueTainted !89
  %17 = zext i16 %16 to i32, !dbg !2746, !psr.id !2749, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %17, metadata !2750, metadata !DIExpression()), !dbg !2712, !psr.id !2751
  %18 = add i32 %17, 15, !dbg !2752, !psr.id !2753, !ValueTainted !89
  %19 = lshr i32 %18, 4, !dbg !2754, !psr.id !2755, !ValueTainted !89
  %20 = zext i32 %19 to i64, !dbg !2756, !psr.id !2757, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %20, metadata !2758, metadata !DIExpression()), !dbg !2712, !psr.id !2759
  %21 = icmp ult i32 %17, %6, !dbg !2760, !psr.id !2762, !ValueTainted !89
  br i1 %21, label %22, label %36, !dbg !2763, !psr.id !2764, !Tainted !102

22:                                               ; preds = %14
  %23 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2765, !psr.id !2767
  %24 = bitcast i16* %23 to i8*, !dbg !2768, !psr.id !2769
  %25 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2770, !psr.id !2771
  %26 = bitcast i16* %25 to i8*, !dbg !2768, !psr.id !2772
  %27 = mul i64 %20, 2, !dbg !2773, !psr.id !2774, !ValueTainted !89
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %24, i8* align 2 %26, i64 %27, i1 false), !dbg !2768, !psr.id !2775, !CalledTainted !798
  call void @llvm.dbg.value(metadata i64 %20, metadata !2776, metadata !DIExpression()), !dbg !2712, !psr.id !2777
  br label %28, !dbg !2778, !psr.id !2780

28:                                               ; preds = %33, %22
  %.0 = phi i64 [ %20, %22 ], [ %34, %33 ], !dbg !2781, !psr.id !2782, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2776, metadata !DIExpression()), !dbg !2712, !psr.id !2783
  %29 = icmp ult i64 %.0, %9, !dbg !2784, !psr.id !2786, !ValueTainted !89
  br i1 %29, label %30, label %35, !dbg !2787, !psr.id !2788, !Tainted !102

30:                                               ; preds = %28
  %31 = add i64 %.0, 1, !dbg !2789, !psr.id !2791, !ValueTainted !89
  %32 = getelementptr inbounds i16, i16* %0, i64 %31, !dbg !2792, !psr.id !2793, !ValueTainted !89
  store i16 0, i16* %32, align 2, !dbg !2794, !psr.id !2795, !Tainted !102
  br label %33, !dbg !2796, !psr.id !2797

33:                                               ; preds = %30
  %34 = add i64 %.0, 1, !dbg !2798, !psr.id !2799, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %34, metadata !2776, metadata !DIExpression()), !dbg !2712, !psr.id !2800
  br label %28, !dbg !2801, !llvm.loop !2802, !psr.id !2804

35:                                               ; preds = %28
  br label %55, !dbg !2805, !psr.id !2806

36:                                               ; preds = %14
  %37 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2807, !psr.id !2808
  %38 = bitcast i16* %37 to i8*, !dbg !2809, !psr.id !2810
  %39 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2811, !psr.id !2812
  %40 = sub i64 %20, %9, !dbg !2813, !psr.id !2814, !ValueTainted !89
  %41 = getelementptr inbounds i16, i16* %39, i64 %40, !dbg !2815, !psr.id !2816, !ValueTainted !89
  %42 = bitcast i16* %41 to i8*, !dbg !2809, !psr.id !2817, !ValueTainted !89
  %43 = sub i64 %9, 1, !dbg !2818, !psr.id !2819, !ValueTainted !89
  %44 = mul i64 %43, 2, !dbg !2820, !psr.id !2821, !ValueTainted !89
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %38, i8* align 2 %42, i64 %44, i1 false), !dbg !2809, !psr.id !2822, !CalledTainted !2823
  %45 = getelementptr inbounds i16, i16* %0, i64 %9, !dbg !2824, !psr.id !2825, !ValueTainted !89
  store i16 0, i16* %45, align 2, !dbg !2826, !psr.id !2827, !Tainted !102
  %46 = add i64 1, %20, !dbg !2828, !psr.id !2830, !ValueTainted !89
  %47 = sub i64 %46, %9, !dbg !2831, !psr.id !2832, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %47, metadata !2776, metadata !DIExpression()), !dbg !2712, !psr.id !2833
  br label %48, !dbg !2834, !psr.id !2835

48:                                               ; preds = %53, %36
  %.1 = phi i64 [ %47, %36 ], [ %54, %53 ], !dbg !2836, !psr.id !2837, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %.1, metadata !2776, metadata !DIExpression()), !dbg !2712, !psr.id !2838
  %49 = icmp ugt i64 %.1, 0, !dbg !2839, !psr.id !2841, !ValueTainted !89
  br i1 %49, label %50, label %55, !dbg !2842, !psr.id !2843, !Tainted !102

50:                                               ; preds = %48
  %51 = getelementptr inbounds i16, i16* %1, i64 %.1, !dbg !2844, !psr.id !2846, !ValueTainted !89
  %52 = load i16, i16* %51, align 2, !dbg !2844, !psr.id !2847, !Tainted !102, !ValueTainted !89
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %52, i16* %2), !dbg !2848, !psr.id !2849
  br label %53, !dbg !2850, !psr.id !2851

53:                                               ; preds = %50
  %54 = add i64 %.1, -1, !dbg !2852, !psr.id !2853, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %54, metadata !2776, metadata !DIExpression()), !dbg !2712, !psr.id !2854
  br label %48, !dbg !2855, !llvm.loop !2856, !psr.id !2858

55:                                               ; preds = %48, %35, %13
  ret void, !dbg !2859, !psr.id !2860
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_rshift(i16* %0, i32 %1) #0 !dbg !2861 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !2864, metadata !DIExpression()), !dbg !2865, !psr.id !2866
  call void @llvm.dbg.value(metadata i32 %1, metadata !2867, metadata !DIExpression()), !dbg !2865, !psr.id !2868
  %3 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !2869, !psr.id !2870, !PointTainted !91
  %4 = load i16, i16* %3, align 2, !dbg !2869, !psr.id !2871, !ValueTainted !89
  %5 = zext i16 %4 to i32, !dbg !2869, !psr.id !2872, !ValueTainted !89
  %6 = add nsw i32 %5, 15, !dbg !2873, !psr.id !2874, !ValueTainted !89
  %7 = ashr i32 %6, 4, !dbg !2875, !psr.id !2876, !ValueTainted !89
  %8 = sext i32 %7 to i64, !dbg !2877, !psr.id !2878, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %8, metadata !2879, metadata !DIExpression()), !dbg !2865, !psr.id !2880
  %9 = icmp eq i64 %8, 0, !dbg !2881, !psr.id !2883, !ValueTainted !89
  br i1 %9, label %10, label %11, !dbg !2884, !psr.id !2885, !Tainted !102

10:                                               ; preds = %2
  br label %35, !dbg !2886, !psr.id !2888

11:                                               ; preds = %2
  %12 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2889, !psr.id !2890, !PointTainted !91
  %13 = load i16, i16* %12, align 2, !dbg !2889, !psr.id !2891, !ValueTainted !89
  %14 = zext i16 %13 to i32, !dbg !2889, !psr.id !2892, !ValueTainted !89
  %15 = ashr i32 %14, %1, !dbg !2893, !psr.id !2894, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %15, metadata !2895, metadata !DIExpression()), !dbg !2865, !psr.id !2896
  call void @llvm.dbg.value(metadata i64 2, metadata !2897, metadata !DIExpression()), !dbg !2865, !psr.id !2898
  br label %16, !dbg !2899, !psr.id !2901

16:                                               ; preds = %30, %11
  %.01 = phi i64 [ 2, %11 ], [ %31, %30 ], !dbg !2902, !psr.id !2903
  %.0 = phi i32 [ %15, %11 ], [ %29, %30 ], !dbg !2865, !psr.id !2904, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2895, metadata !DIExpression()), !dbg !2865, !psr.id !2905
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2897, metadata !DIExpression()), !dbg !2865, !psr.id !2906
  %17 = icmp ule i64 %.01, %8, !dbg !2907, !psr.id !2909, !ValueTainted !89
  br i1 %17, label %18, label %32, !dbg !2910, !psr.id !2911, !Tainted !102

18:                                               ; preds = %16
  %19 = getelementptr inbounds i16, i16* %0, i64 %.01, !dbg !2912, !psr.id !2914, !PointTainted !91
  %20 = load i16, i16* %19, align 2, !dbg !2912, !psr.id !2915, !ValueTainted !89
  %21 = zext i16 %20 to i32, !dbg !2912, !psr.id !2916, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %21, metadata !2917, metadata !DIExpression()), !dbg !2918, !psr.id !2919
  %22 = sub nsw i32 15, %1, !dbg !2920, !psr.id !2921
  %23 = shl i32 %21, %22, !dbg !2922, !psr.id !2923, !ValueTainted !89
  %24 = or i32 %23, %.0, !dbg !2924, !psr.id !2925, !ValueTainted !89
  %25 = and i32 %24, 32767, !dbg !2926, !psr.id !2927, !ValueTainted !89
  %26 = trunc i32 %25 to i16, !dbg !2928, !psr.id !2929, !ValueTainted !89
  %27 = sub i64 %.01, 1, !dbg !2930, !psr.id !2931
  %28 = getelementptr inbounds i16, i16* %0, i64 %27, !dbg !2932, !psr.id !2933, !PointTainted !91
  store i16 %26, i16* %28, align 2, !dbg !2934, !psr.id !2935
  %29 = lshr i32 %21, %1, !dbg !2936, !psr.id !2937, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %29, metadata !2895, metadata !DIExpression()), !dbg !2865, !psr.id !2938
  br label %30, !dbg !2939, !psr.id !2940

30:                                               ; preds = %18
  %31 = add i64 %.01, 1, !dbg !2941, !psr.id !2942
  call void @llvm.dbg.value(metadata i64 %31, metadata !2897, metadata !DIExpression()), !dbg !2865, !psr.id !2943
  br label %16, !dbg !2944, !llvm.loop !2945, !psr.id !2947

32:                                               ; preds = %16
  %33 = trunc i32 %.0 to i16, !dbg !2948, !psr.id !2949, !ValueTainted !89
  %34 = getelementptr inbounds i16, i16* %0, i64 %8, !dbg !2950, !psr.id !2951, !ValueTainted !89, !PointTainted !91
  store i16 %33, i16* %34, align 2, !dbg !2952, !psr.id !2953, !Tainted !102
  br label %35, !dbg !2954, !psr.id !2955

35:                                               ; preds = %32, %10
  ret void, !dbg !2954, !psr.id !2956
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_sub(i16* %0, i16* %1, i32 %2) #0 !dbg !2957 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !2958, metadata !DIExpression()), !dbg !2959, !psr.id !2960
  call void @llvm.dbg.value(metadata i16* %1, metadata !2961, metadata !DIExpression()), !dbg !2959, !psr.id !2962
  call void @llvm.dbg.value(metadata i32 %2, metadata !2963, metadata !DIExpression()), !dbg !2959, !psr.id !2964
  call void @llvm.dbg.value(metadata i32 0, metadata !2965, metadata !DIExpression()), !dbg !2959, !psr.id !2966
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !2967, !psr.id !2968, !ValueTainted !89, !PointTainted !91
  %5 = load i16, i16* %4, align 2, !dbg !2967, !psr.id !2969, !Tainted !102, !ValueTainted !89
  %6 = zext i16 %5 to i32, !dbg !2967, !psr.id !2970, !ValueTainted !89
  %7 = add nsw i32 %6, 31, !dbg !2971, !psr.id !2972, !ValueTainted !89
  %8 = ashr i32 %7, 4, !dbg !2973, !psr.id !2974, !ValueTainted !89
  %9 = sext i32 %8 to i64, !dbg !2975, !psr.id !2976, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %9, metadata !2977, metadata !DIExpression()), !dbg !2959, !psr.id !2978
  call void @llvm.dbg.value(metadata i64 1, metadata !2979, metadata !DIExpression()), !dbg !2959, !psr.id !2980
  br label %10, !dbg !2981, !psr.id !2983

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !2959, !psr.id !2984, !ValueTainted !89
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !2985, !psr.id !2986
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2979, metadata !DIExpression()), !dbg !2959, !psr.id !2987
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2965, metadata !DIExpression()), !dbg !2959, !psr.id !2988
  %11 = icmp ult i64 %.0, %9, !dbg !2989, !psr.id !2991, !ValueTainted !89
  br i1 %11, label %12, label %28, !dbg !2992, !psr.id !2993, !Tainted !102

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !2994, !psr.id !2996, !ValueTainted !89, !PointTainted !91
  %14 = load i16, i16* %13, align 2, !dbg !2994, !psr.id !2997, !Tainted !102, !ValueTainted !89
  %15 = zext i16 %14 to i32, !dbg !2994, !psr.id !2998, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %15, metadata !2999, metadata !DIExpression()), !dbg !3000, !psr.id !3001
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !3002, !psr.id !3003
  %17 = load i16, i16* %16, align 2, !dbg !3002, !psr.id !3004, !ValueTainted !89
  %18 = zext i16 %17 to i32, !dbg !3002, !psr.id !3005, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %18, metadata !3006, metadata !DIExpression()), !dbg !3000, !psr.id !3007
  %19 = sub i32 %15, %18, !dbg !3008, !psr.id !3009, !ValueTainted !89
  %20 = sub i32 %19, %.01, !dbg !3010, !psr.id !3011, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %20, metadata !3012, metadata !DIExpression()), !dbg !3000, !psr.id !3013
  %21 = lshr i32 %20, 31, !dbg !3014, !psr.id !3015, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %21, metadata !2965, metadata !DIExpression()), !dbg !2959, !psr.id !3016
  %22 = and i32 %20, 32767, !dbg !3017, !psr.id !3018, !ValueTainted !89
  %23 = call i32 @MUX.24(i32 %2, i32 %22, i32 %15), !dbg !3019, !psr.id !3020, !ValueTainted !89
  %24 = trunc i32 %23 to i16, !dbg !3019, !psr.id !3021, !ValueTainted !89
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !3022, !psr.id !3023, !ValueTainted !89, !PointTainted !91
  store i16 %24, i16* %25, align 2, !dbg !3024, !psr.id !3025, !Tainted !102
  br label %26, !dbg !3026, !psr.id !3027

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !3028, !psr.id !3029
  call void @llvm.dbg.value(metadata i64 %27, metadata !2979, metadata !DIExpression()), !dbg !2959, !psr.id !3030
  br label %10, !dbg !3031, !llvm.loop !3032, !psr.id !3034

28:                                               ; preds = %10
  ret i32 %.01, !dbg !3035, !psr.id !3036
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.24(i32 %0, i32 %1, i32 %2) #0 !dbg !3037 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3038, metadata !DIExpression()), !dbg !3039, !psr.id !3040
  call void @llvm.dbg.value(metadata i32 %1, metadata !3041, metadata !DIExpression()), !dbg !3039, !psr.id !3042
  call void @llvm.dbg.value(metadata i32 %2, metadata !3043, metadata !DIExpression()), !dbg !3039, !psr.id !3044
  %4 = sub i32 0, %0, !dbg !3045, !psr.id !3046, !ValueTainted !89
  %5 = xor i32 %1, %2, !dbg !3047, !psr.id !3048, !ValueTainted !89
  %6 = and i32 %4, %5, !dbg !3049, !psr.id !3050, !ValueTainted !89
  %7 = xor i32 %2, %6, !dbg !3051, !psr.id !3052, !ValueTainted !89
  ret i32 %7, !dbg !3053, !psr.id !3054
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_to_monty(i16* %0, i16* %1) #0 !dbg !3055 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !3058, metadata !DIExpression()), !dbg !3059, !psr.id !3060
  call void @llvm.dbg.value(metadata i16* %1, metadata !3061, metadata !DIExpression()), !dbg !3059, !psr.id !3062
  %3 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !3063, !psr.id !3065
  %4 = load i16, i16* %3, align 2, !dbg !3063, !psr.id !3066, !ValueTainted !89
  %5 = zext i16 %4 to i32, !dbg !3063, !psr.id !3067, !ValueTainted !89
  %6 = add nsw i32 %5, 15, !dbg !3068, !psr.id !3069, !ValueTainted !89
  %7 = ashr i32 %6, 4, !dbg !3070, !psr.id !3071, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %7, metadata !3072, metadata !DIExpression()), !dbg !3059, !psr.id !3073
  br label %8, !dbg !3074, !psr.id !3075

8:                                                ; preds = %11, %2
  %.0 = phi i32 [ %7, %2 ], [ %12, %11 ], !dbg !3076, !psr.id !3077, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3072, metadata !DIExpression()), !dbg !3059, !psr.id !3078
  %9 = icmp ugt i32 %.0, 0, !dbg !3079, !psr.id !3081, !ValueTainted !89
  br i1 %9, label %10, label %13, !dbg !3082, !psr.id !3083, !Tainted !102

10:                                               ; preds = %8
  call void @br_i15_muladd_small(i16* %0, i16 zeroext 0, i16* %1), !dbg !3084, !psr.id !3086
  br label %11, !dbg !3087, !psr.id !3088

11:                                               ; preds = %10
  %12 = add i32 %.0, -1, !dbg !3089, !psr.id !3090, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %12, metadata !3072, metadata !DIExpression()), !dbg !3059, !psr.id !3091
  br label %8, !dbg !3092, !llvm.loop !3093, !psr.id !3095

13:                                               ; preds = %8
  ret void, !dbg !3096, !psr.id !3097
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i15_pkcs1_sign(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4) #0 !dbg !3098 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3118, metadata !DIExpression()), !dbg !3119, !psr.id !3120
  call void @llvm.dbg.value(metadata i8* %1, metadata !3121, metadata !DIExpression()), !dbg !3119, !psr.id !3122
  call void @llvm.dbg.value(metadata i64 %2, metadata !3123, metadata !DIExpression()), !dbg !3119, !psr.id !3124
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %3, metadata !3125, metadata !DIExpression()), !dbg !3119, !psr.id !3126
  call void @llvm.dbg.value(metadata i8* %4, metadata !3127, metadata !DIExpression()), !dbg !3119, !psr.id !3128
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 0, !dbg !3129, !psr.id !3131
  %7 = load i32, i32* %6, align 8, !dbg !3129, !psr.id !3132
  %8 = call i32 @br_rsa_pkcs1_sig_pad(i8* %0, i8* %1, i64 %2, i32 %7, i8* %4), !dbg !3133, !psr.id !3134
  %9 = icmp ne i32 %8, 0, !dbg !3133, !psr.id !3135
  br i1 %9, label %11, label %10, !dbg !3136, !psr.id !3137

10:                                               ; preds = %5
  br label %13, !dbg !3138, !psr.id !3140

11:                                               ; preds = %5
  %12 = call i32 @br_rsa_i15_private(i8* %4, %struct.br_rsa_private_key* %3), !dbg !3141, !psr.id !3142, !ValueTainted !89
  br label %13, !dbg !3143, !psr.id !3144

13:                                               ; preds = %11, %10
  %.0 = phi i32 [ %12, %11 ], [ 0, %10 ], !dbg !3119, !psr.id !3145, !ValueTainted !89
  ret i32 %.0, !dbg !3146, !psr.id !3147
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i15_private(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !3148 {
  %3 = alloca [1129 x i16], align 16, !psr.id !3167
  call void @llvm.dbg.value(metadata i8* %0, metadata !3168, metadata !DIExpression()), !dbg !3169, !psr.id !3170
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !3171, metadata !DIExpression()), !dbg !3169, !psr.id !3172
  call void @llvm.dbg.declare(metadata [1129 x i16]* %3, metadata !3173, metadata !DIExpression()), !dbg !3177, !psr.id !3178
  %4 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !3179, !psr.id !3180
  %5 = load i8*, i8** %4, align 8, !dbg !3179, !psr.id !3181, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %5, metadata !3182, metadata !DIExpression()), !dbg !3169, !psr.id !3183
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !3184, !psr.id !3185
  %7 = load i64, i64* %6, align 8, !dbg !3184, !psr.id !3186
  call void @llvm.dbg.value(metadata i64 %7, metadata !3187, metadata !DIExpression()), !dbg !3169, !psr.id !3188
  br label %8, !dbg !3189, !psr.id !3190

8:                                                ; preds = %16, %2
  %.04 = phi i64 [ %7, %2 ], [ %18, %16 ], !dbg !3169, !psr.id !3191
  %.02 = phi i8* [ %5, %2 ], [ %17, %16 ], !dbg !3169, !psr.id !3192, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %.02, metadata !3182, metadata !DIExpression()), !dbg !3169, !psr.id !3193
  call void @llvm.dbg.value(metadata i64 %.04, metadata !3187, metadata !DIExpression()), !dbg !3169, !psr.id !3194
  %9 = icmp ugt i64 %.04, 0, !dbg !3195, !psr.id !3196
  br i1 %9, label %10, label %14, !dbg !3197, !psr.id !3198

10:                                               ; preds = %8
  %11 = load i8, i8* %.02, align 1, !dbg !3199, !psr.id !3200, !ValueTainted !89
  %12 = zext i8 %11 to i32, !dbg !3199, !psr.id !3201, !ValueTainted !89
  %13 = icmp eq i32 %12, 0, !dbg !3202, !psr.id !3203, !ValueTainted !89
  br label %14, !psr.id !3204

14:                                               ; preds = %10, %8
  %15 = phi i1 [ false, %8 ], [ %13, %10 ], !dbg !3169, !psr.id !3205, !ValueTainted !89
  br i1 %15, label %16, label %19, !dbg !3189, !psr.id !3206, !Tainted !102

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !3207, !psr.id !3209, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %17, metadata !3182, metadata !DIExpression()), !dbg !3169, !psr.id !3210
  %18 = add i64 %.04, -1, !dbg !3211, !psr.id !3212
  call void @llvm.dbg.value(metadata i64 %18, metadata !3187, metadata !DIExpression()), !dbg !3169, !psr.id !3213
  br label %8, !dbg !3189, !llvm.loop !3214, !psr.id !3216

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !3217, !psr.id !3218
  %21 = load i8*, i8** %20, align 8, !dbg !3217, !psr.id !3219, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %21, metadata !3220, metadata !DIExpression()), !dbg !3169, !psr.id !3221
  %22 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !3222, !psr.id !3223
  %23 = load i64, i64* %22, align 8, !dbg !3222, !psr.id !3224
  call void @llvm.dbg.value(metadata i64 %23, metadata !3225, metadata !DIExpression()), !dbg !3169, !psr.id !3226
  br label %24, !dbg !3227, !psr.id !3228

24:                                               ; preds = %32, %19
  %.05 = phi i64 [ %23, %19 ], [ %34, %32 ], !dbg !3169, !psr.id !3229
  %.03 = phi i8* [ %21, %19 ], [ %33, %32 ], !dbg !3169, !psr.id !3230, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %.03, metadata !3220, metadata !DIExpression()), !dbg !3169, !psr.id !3231
  call void @llvm.dbg.value(metadata i64 %.05, metadata !3225, metadata !DIExpression()), !dbg !3169, !psr.id !3232
  %25 = icmp ugt i64 %.05, 0, !dbg !3233, !psr.id !3234
  br i1 %25, label %26, label %30, !dbg !3235, !psr.id !3236

26:                                               ; preds = %24
  %27 = load i8, i8* %.03, align 1, !dbg !3237, !psr.id !3238, !ValueTainted !89
  %28 = zext i8 %27 to i32, !dbg !3237, !psr.id !3239, !ValueTainted !89
  %29 = icmp eq i32 %28, 0, !dbg !3240, !psr.id !3241, !ValueTainted !89
  br label %30, !psr.id !3242

30:                                               ; preds = %26, %24
  %31 = phi i1 [ false, %24 ], [ %29, %26 ], !dbg !3169, !psr.id !3243, !ValueTainted !89
  br i1 %31, label %32, label %35, !dbg !3227, !psr.id !3244, !Tainted !102

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, i8* %.03, i32 1, !dbg !3245, !psr.id !3247, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %33, metadata !3220, metadata !DIExpression()), !dbg !3169, !psr.id !3248
  %34 = add i64 %.05, -1, !dbg !3249, !psr.id !3250
  call void @llvm.dbg.value(metadata i64 %34, metadata !3225, metadata !DIExpression()), !dbg !3169, !psr.id !3251
  br label %24, !dbg !3227, !llvm.loop !3252, !psr.id !3254

35:                                               ; preds = %30
  %36 = icmp ugt i64 %.04, %.05, !dbg !3255, !psr.id !3256
  br i1 %36, label %37, label %38, !dbg !3257, !psr.id !3258

37:                                               ; preds = %35
  br label %39, !dbg !3257, !psr.id !3259

38:                                               ; preds = %35
  br label %39, !dbg !3257, !psr.id !3260

39:                                               ; preds = %38, %37
  %40 = phi i64 [ %.04, %37 ], [ %.05, %38 ], !dbg !3257, !psr.id !3261
  %41 = shl i64 %40, 3, !dbg !3262, !psr.id !3263
  call void @llvm.dbg.value(metadata i64 %41, metadata !3264, metadata !DIExpression()), !dbg !3169, !psr.id !3265
  call void @llvm.dbg.value(metadata i64 1, metadata !3266, metadata !DIExpression()), !dbg !3169, !psr.id !3267
  br label %42, !dbg !3268, !psr.id !3269

42:                                               ; preds = %44, %39
  %.09 = phi i64 [ %41, %39 ], [ %45, %44 ], !dbg !3169, !psr.id !3270
  %.06 = phi i64 [ 1, %39 ], [ %46, %44 ], !dbg !3169, !psr.id !3271
  call void @llvm.dbg.value(metadata i64 %.06, metadata !3266, metadata !DIExpression()), !dbg !3169, !psr.id !3272
  call void @llvm.dbg.value(metadata i64 %.09, metadata !3264, metadata !DIExpression()), !dbg !3169, !psr.id !3273
  %43 = icmp sgt i64 %.09, 0, !dbg !3274, !psr.id !3275
  br i1 %43, label %44, label %47, !dbg !3268, !psr.id !3276

44:                                               ; preds = %42
  %45 = sub nsw i64 %.09, 15, !dbg !3277, !psr.id !3279
  call void @llvm.dbg.value(metadata i64 %45, metadata !3264, metadata !DIExpression()), !dbg !3169, !psr.id !3280
  %46 = add i64 %.06, 1, !dbg !3281, !psr.id !3282
  call void @llvm.dbg.value(metadata i64 %46, metadata !3266, metadata !DIExpression()), !dbg !3169, !psr.id !3283
  br label %42, !dbg !3268, !llvm.loop !3284, !psr.id !3286

47:                                               ; preds = %42
  %48 = and i64 %.06, 1, !dbg !3287, !psr.id !3288
  %49 = add i64 %.06, %48, !dbg !3289, !psr.id !3290
  call void @llvm.dbg.value(metadata i64 %49, metadata !3266, metadata !DIExpression()), !dbg !3169, !psr.id !3291
  %50 = mul i64 6, %49, !dbg !3292, !psr.id !3294
  %51 = icmp ugt i64 %50, 1128, !dbg !3295, !psr.id !3296
  br i1 %51, label %52, label %53, !dbg !3297, !psr.id !3298

52:                                               ; preds = %47
  br label %138, !dbg !3299, !psr.id !3301

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !3302, !psr.id !3303
  %55 = load i32, i32* %54, align 8, !dbg !3302, !psr.id !3304
  %56 = add i32 %55, 7, !dbg !3305, !psr.id !3306
  %57 = lshr i32 %56, 3, !dbg !3307, !psr.id !3308
  %58 = zext i32 %57 to i64, !dbg !3309, !psr.id !3310
  call void @llvm.dbg.value(metadata i64 %58, metadata !3311, metadata !DIExpression()), !dbg !3169, !psr.id !3312
  %59 = getelementptr inbounds [1129 x i16], [1129 x i16]* %3, i64 0, i64 0, !dbg !3313, !psr.id !3314
  call void @llvm.dbg.value(metadata i16* %59, metadata !3315, metadata !DIExpression()), !dbg !3169, !psr.id !3316
  %60 = ptrtoint i16* %59 to i64, !dbg !3317, !psr.id !3319
  %61 = and i64 %60, 2, !dbg !3320, !psr.id !3321
  %62 = icmp eq i64 %61, 0, !dbg !3322, !psr.id !3323
  br i1 %62, label %63, label %65, !dbg !3324, !psr.id !3325

63:                                               ; preds = %53
  %64 = getelementptr inbounds i16, i16* %59, i32 1, !dbg !3326, !psr.id !3328
  call void @llvm.dbg.value(metadata i16* %64, metadata !3315, metadata !DIExpression()), !dbg !3169, !psr.id !3329
  br label %65, !dbg !3330, !psr.id !3331

65:                                               ; preds = %63, %53
  %.07 = phi i16* [ %64, %63 ], [ %59, %53 ], !dbg !3169, !psr.id !3332
  call void @llvm.dbg.value(metadata i16* %.07, metadata !3315, metadata !DIExpression()), !dbg !3169, !psr.id !3333
  call void @br_i15_decode(i16* %.07, i8* %.03, i64 %.05), !dbg !3334, !psr.id !3335
  %66 = getelementptr inbounds i16, i16* %.07, i64 %49, !dbg !3336, !psr.id !3337
  call void @llvm.dbg.value(metadata i16* %66, metadata !3338, metadata !DIExpression()), !dbg !3169, !psr.id !3339
  call void @br_i15_decode(i16* %66, i8* %.02, i64 %.04), !dbg !3340, !psr.id !3341
  %67 = mul i64 2, %49, !dbg !3342, !psr.id !3343
  %68 = getelementptr inbounds i16, i16* %.07, i64 %67, !dbg !3344, !psr.id !3345
  call void @llvm.dbg.value(metadata i16* %68, metadata !3346, metadata !DIExpression()), !dbg !3169, !psr.id !3347
  %69 = getelementptr inbounds i16, i16* %.07, i64 0, !dbg !3348, !psr.id !3349
  %70 = load i16, i16* %69, align 2, !dbg !3348, !psr.id !3350
  call void @br_i15_zero.29(i16* %68, i16 zeroext %70), !dbg !3351, !psr.id !3352
  call void @br_i15_mulacc(i16* %68, i16* %.07, i16* %66), !dbg !3353, !psr.id !3354
  %71 = mul i64 4, %49, !dbg !3355, !psr.id !3356
  %72 = getelementptr inbounds i16, i16* %.07, i64 %71, !dbg !3357, !psr.id !3358
  call void @llvm.dbg.value(metadata i16* %72, metadata !3359, metadata !DIExpression()), !dbg !3169, !psr.id !3360
  %73 = bitcast i16* %72 to i8*, !dbg !3361, !psr.id !3362
  call void @br_i15_encode(i8* %73, i64 %58, i16* %68), !dbg !3363, !psr.id !3364
  call void @llvm.dbg.value(metadata i64 %58, metadata !3365, metadata !DIExpression()), !dbg !3169, !psr.id !3366
  call void @llvm.dbg.value(metadata i32 0, metadata !3367, metadata !DIExpression()), !dbg !3169, !psr.id !3368
  br label %74, !dbg !3369, !psr.id !3370

74:                                               ; preds = %76, %65
  %.08 = phi i64 [ %58, %65 ], [ %77, %76 ], !dbg !3169, !psr.id !3371
  %.01 = phi i32 [ 0, %65 ], [ %88, %76 ], !dbg !3169, !psr.id !3372, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3367, metadata !DIExpression()), !dbg !3169, !psr.id !3373
  call void @llvm.dbg.value(metadata i64 %.08, metadata !3365, metadata !DIExpression()), !dbg !3169, !psr.id !3374
  %75 = icmp ugt i64 %.08, 0, !dbg !3375, !psr.id !3376
  br i1 %75, label %76, label %89, !dbg !3369, !psr.id !3377

76:                                               ; preds = %74
  %77 = add i64 %.08, -1, !dbg !3378, !psr.id !3380
  call void @llvm.dbg.value(metadata i64 %77, metadata !3365, metadata !DIExpression()), !dbg !3169, !psr.id !3381
  %78 = bitcast i16* %72 to i8*, !dbg !3382, !psr.id !3383
  %79 = getelementptr inbounds i8, i8* %78, i64 %77, !dbg !3382, !psr.id !3384
  %80 = load i8, i8* %79, align 1, !dbg !3382, !psr.id !3385, !ValueTainted !89
  %81 = zext i8 %80 to i32, !dbg !3382, !psr.id !3386, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %81, metadata !3387, metadata !DIExpression()), !dbg !3388, !psr.id !3389
  %82 = getelementptr inbounds i8, i8* %0, i64 %77, !dbg !3390, !psr.id !3391, !ValueTainted !89, !PointTainted !91
  %83 = load i8, i8* %82, align 1, !dbg !3390, !psr.id !3392, !Tainted !102, !ValueTainted !89
  %84 = zext i8 %83 to i32, !dbg !3390, !psr.id !3393, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %84, metadata !3394, metadata !DIExpression()), !dbg !3388, !psr.id !3395
  %85 = add i32 %81, %.01, !dbg !3396, !psr.id !3397, !ValueTainted !89
  %86 = sub i32 %84, %85, !dbg !3398, !psr.id !3399, !ValueTainted !89
  %87 = lshr i32 %86, 8, !dbg !3400, !psr.id !3401, !ValueTainted !89
  %88 = and i32 %87, 1, !dbg !3402, !psr.id !3403, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %88, metadata !3367, metadata !DIExpression()), !dbg !3169, !psr.id !3404
  br label %74, !dbg !3369, !llvm.loop !3405, !psr.id !3407

89:                                               ; preds = %74
  %90 = mul i64 2, %49, !dbg !3408, !psr.id !3409
  %91 = getelementptr inbounds i16, i16* %.07, i64 %90, !dbg !3410, !psr.id !3411
  call void @llvm.dbg.value(metadata i16* %91, metadata !3412, metadata !DIExpression()), !dbg !3169, !psr.id !3413
  %92 = bitcast i16* %91 to i8*, !dbg !3414, !psr.id !3415
  %93 = bitcast i16* %66 to i8*, !dbg !3414, !psr.id !3416
  %94 = mul i64 %49, 2, !dbg !3417, !psr.id !3418
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %92, i8* align 2 %93, i64 %94, i1 false), !dbg !3414, !psr.id !3419
  %95 = getelementptr inbounds i16, i16* %.07, i64 1, !dbg !3420, !psr.id !3421
  %96 = load i16, i16* %95, align 2, !dbg !3420, !psr.id !3422, !ValueTainted !89
  %97 = call zeroext i16 @br_i15_ninv15(i16 zeroext %96), !dbg !3423, !psr.id !3424, !ValueTainted !89
  call void @llvm.dbg.value(metadata i16 %97, metadata !3425, metadata !DIExpression()), !dbg !3169, !psr.id !3426
  %98 = getelementptr inbounds i16, i16* %.07, i64 %49, !dbg !3427, !psr.id !3428
  call void @llvm.dbg.value(metadata i16* %98, metadata !3429, metadata !DIExpression()), !dbg !3169, !psr.id !3430
  call void @br_i15_decode_reduce(i16* %98, i8* %0, i64 %58, i16* %.07), !dbg !3431, !psr.id !3432
  %99 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !3433, !psr.id !3434
  %100 = load i8*, i8** %99, align 8, !dbg !3433, !psr.id !3435, !PointTainted !91
  %101 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !3436, !psr.id !3437
  %102 = load i64, i64* %101, align 8, !dbg !3436, !psr.id !3438
  %103 = mul i64 3, %49, !dbg !3439, !psr.id !3440
  %104 = getelementptr inbounds i16, i16* %.07, i64 %103, !dbg !3441, !psr.id !3442
  %105 = mul i64 3, %49, !dbg !3443, !psr.id !3444
  %106 = sub i64 1128, %105, !dbg !3445, !psr.id !3446
  %107 = call i32 @br_i15_modpow_opt(i16* %98, i8* %100, i64 %102, i16* %.07, i16 zeroext %97, i16* %104, i64 %106), !dbg !3447, !psr.id !3448
  %108 = and i32 %.01, %107, !dbg !3449, !psr.id !3450, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %108, metadata !3367, metadata !DIExpression()), !dbg !3169, !psr.id !3451
  %109 = getelementptr inbounds i16, i16* %91, i64 1, !dbg !3452, !psr.id !3453
  %110 = load i16, i16* %109, align 2, !dbg !3452, !psr.id !3454, !ValueTainted !89
  %111 = call zeroext i16 @br_i15_ninv15(i16 zeroext %110), !dbg !3455, !psr.id !3456, !ValueTainted !89
  call void @llvm.dbg.value(metadata i16 %111, metadata !3457, metadata !DIExpression()), !dbg !3169, !psr.id !3458
  %112 = mul i64 3, %49, !dbg !3459, !psr.id !3460
  %113 = getelementptr inbounds i16, i16* %.07, i64 %112, !dbg !3461, !psr.id !3462
  call void @llvm.dbg.value(metadata i16* %113, metadata !3463, metadata !DIExpression()), !dbg !3169, !psr.id !3464
  call void @br_i15_decode_reduce(i16* %113, i8* %0, i64 %58, i16* %91), !dbg !3465, !psr.id !3466
  %114 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !3467, !psr.id !3468
  %115 = load i8*, i8** %114, align 8, !dbg !3467, !psr.id !3469, !PointTainted !91
  %116 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !3470, !psr.id !3471
  %117 = load i64, i64* %116, align 8, !dbg !3470, !psr.id !3472
  %118 = mul i64 4, %49, !dbg !3473, !psr.id !3474
  %119 = getelementptr inbounds i16, i16* %.07, i64 %118, !dbg !3475, !psr.id !3476
  %120 = mul i64 4, %49, !dbg !3477, !psr.id !3478
  %121 = sub i64 1128, %120, !dbg !3479, !psr.id !3480
  %122 = call i32 @br_i15_modpow_opt(i16* %113, i8* %115, i64 %117, i16* %91, i16 zeroext %111, i16* %119, i64 %121), !dbg !3481, !psr.id !3482
  %123 = and i32 %108, %122, !dbg !3483, !psr.id !3484, !ValueTainted !89
  call void @llvm.dbg.value(metadata i32 %123, metadata !3367, metadata !DIExpression()), !dbg !3169, !psr.id !3485
  %124 = mul i64 4, %49, !dbg !3486, !psr.id !3487
  %125 = getelementptr inbounds i16, i16* %.07, i64 %124, !dbg !3488, !psr.id !3489
  call void @llvm.dbg.value(metadata i16* %125, metadata !3338, metadata !DIExpression()), !dbg !3169, !psr.id !3490
  %126 = mul i64 5, %49, !dbg !3491, !psr.id !3492
  %127 = getelementptr inbounds i16, i16* %.07, i64 %126, !dbg !3493, !psr.id !3494
  call void @llvm.dbg.value(metadata i16* %127, metadata !3346, metadata !DIExpression()), !dbg !3169, !psr.id !3495
  call void @br_i15_reduce(i16* %127, i16* %98, i16* %91), !dbg !3496, !psr.id !3497
  %128 = call i32 @br_i15_sub(i16* %113, i16* %127, i32 1), !dbg !3498, !psr.id !3499
  %129 = call i32 @br_i15_add(i16* %113, i16* %91, i32 %128), !dbg !3500, !psr.id !3501
  call void @br_i15_to_monty(i16* %113, i16* %91), !dbg !3502, !psr.id !3503
  %130 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !3504, !psr.id !3505
  %131 = load i8*, i8** %130, align 8, !dbg !3504, !psr.id !3506, !PointTainted !91
  %132 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !3507, !psr.id !3508
  %133 = load i64, i64* %132, align 8, !dbg !3507, !psr.id !3509
  call void @br_i15_decode_reduce(i16* %125, i8* %131, i64 %133, i16* %91), !dbg !3510, !psr.id !3511
  call void @br_i15_montymul(i16* %127, i16* %113, i16* %125, i16* %91, i16 zeroext %111), !dbg !3512, !psr.id !3513
  call void @llvm.dbg.value(metadata i16* %98, metadata !3359, metadata !DIExpression()), !dbg !3169, !psr.id !3514
  call void @br_i15_mulacc(i16* %98, i16* %.07, i16* %127), !dbg !3515, !psr.id !3516
  call void @br_i15_encode(i8* %0, i64 %58, i16* %98), !dbg !3517, !psr.id !3518
  %134 = zext i16 %111 to i32, !dbg !3519, !psr.id !3520, !ValueTainted !89
  %135 = zext i16 %97 to i32, !dbg !3521, !psr.id !3522, !ValueTainted !89
  %136 = and i32 %134, %135, !dbg !3523, !psr.id !3524, !ValueTainted !89
  %137 = and i32 %136, %123, !dbg !3525, !psr.id !3526, !ValueTainted !89
  br label %138, !dbg !3527, !psr.id !3528

138:                                              ; preds = %89, %52
  %.0 = phi i32 [ 0, %52 ], [ %137, %89 ], !dbg !3169, !psr.id !3529, !ValueTainted !89
  ret i32 %.0, !dbg !3530, !psr.id !3531
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.29(i16* %0, i16 zeroext %1) #0 !dbg !3532 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !3533, metadata !DIExpression()), !dbg !3534, !psr.id !3535
  call void @llvm.dbg.value(metadata i16 %1, metadata !3536, metadata !DIExpression()), !dbg !3534, !psr.id !3537
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !3538, !psr.id !3539
  call void @llvm.dbg.value(metadata i16* %3, metadata !3533, metadata !DIExpression()), !dbg !3534, !psr.id !3540
  store i16 %1, i16* %0, align 2, !dbg !3541, !psr.id !3542
  %4 = bitcast i16* %3 to i8*, !dbg !3543, !psr.id !3544
  %5 = zext i16 %1 to i32, !dbg !3545, !psr.id !3546, !ValueTainted !89
  %6 = add nsw i32 %5, 15, !dbg !3547, !psr.id !3548, !ValueTainted !89
  %7 = ashr i32 %6, 4, !dbg !3549, !psr.id !3550, !ValueTainted !89
  %8 = sext i32 %7 to i64, !dbg !3551, !psr.id !3552, !ValueTainted !89
  %9 = mul i64 %8, 2, !dbg !3553, !psr.id !3554, !ValueTainted !89
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !3543, !psr.id !3555, !CalledTainted !798
  ret void, !dbg !3556, !psr.id !3557
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_pkcs1_sig_pad(i8* %0, i8* %1, i64 %2, i32 %3, i8* %4) #0 !dbg !3558 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3561, metadata !DIExpression()), !dbg !3562, !psr.id !3563
  call void @llvm.dbg.value(metadata i8* %1, metadata !3564, metadata !DIExpression()), !dbg !3562, !psr.id !3565
  call void @llvm.dbg.value(metadata i64 %2, metadata !3566, metadata !DIExpression()), !dbg !3562, !psr.id !3567
  call void @llvm.dbg.value(metadata i32 %3, metadata !3568, metadata !DIExpression()), !dbg !3562, !psr.id !3569
  call void @llvm.dbg.value(metadata i8* %4, metadata !3570, metadata !DIExpression()), !dbg !3562, !psr.id !3571
  %6 = add i32 %3, 7, !dbg !3572, !psr.id !3573
  %7 = lshr i32 %6, 3, !dbg !3574, !psr.id !3575
  %8 = zext i32 %7 to i64, !dbg !3576, !psr.id !3577
  call void @llvm.dbg.value(metadata i64 %8, metadata !3578, metadata !DIExpression()), !dbg !3562, !psr.id !3579
  %9 = icmp eq i8* %0, null, !dbg !3580, !psr.id !3582, !ValueTainted !89
  br i1 %9, label %10, label %22, !dbg !3583, !psr.id !3584, !Tainted !102

10:                                               ; preds = %5
  %11 = add i64 %2, 11, !dbg !3585, !psr.id !3588, !ValueTainted !89, !PointTainted !91
  %12 = icmp ult i64 %8, %11, !dbg !3589, !psr.id !3590, !ValueTainted !89
  br i1 %12, label %13, label %14, !dbg !3591, !psr.id !3592, !Tainted !102

13:                                               ; preds = %10
  br label %70, !dbg !3593, !psr.id !3595

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !3596, !psr.id !3597, !ValueTainted !89, !PointTainted !91
  store i8 0, i8* %15, align 1, !dbg !3598, !psr.id !3599, !Tainted !102
  %16 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !3600, !psr.id !3601, !ValueTainted !89, !PointTainted !91
  store i8 1, i8* %16, align 1, !dbg !3602, !psr.id !3603, !Tainted !102
  %17 = sub i64 %8, %2, !dbg !3604, !psr.id !3605, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i64 %17, metadata !3606, metadata !DIExpression()), !dbg !3562, !psr.id !3607
  %18 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !3608, !psr.id !3609, !ValueTainted !89, !PointTainted !91
  %19 = sub i64 %17, 3, !dbg !3610, !psr.id !3611, !ValueTainted !89, !PointTainted !91
  call void @llvm.memset.p0i8.i64(i8* align 1 %18, i8 -1, i64 %19, i1 false), !dbg !3612, !psr.id !3613, !CalledTainted !1168
  %20 = sub i64 %17, 1, !dbg !3614, !psr.id !3615, !ValueTainted !89, !PointTainted !91
  %21 = getelementptr inbounds i8, i8* %4, i64 %20, !dbg !3616, !psr.id !3617, !ValueTainted !89, !PointTainted !91
  store i8 0, i8* %21, align 1, !dbg !3618, !psr.id !3619, !Tainted !102
  br label %68, !dbg !3620, !psr.id !3621

22:                                               ; preds = %5
  %23 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !3622, !psr.id !3624, !ValueTainted !89, !PointTainted !91
  %24 = load i8, i8* %23, align 1, !dbg !3622, !psr.id !3625, !Tainted !102, !ValueTainted !89
  %25 = zext i8 %24 to i64, !dbg !3622, !psr.id !3626, !ValueTainted !89
  call void @llvm.dbg.value(metadata i64 %25, metadata !3627, metadata !DIExpression()), !dbg !3562, !psr.id !3628
  %26 = add i64 %25, %2, !dbg !3629, !psr.id !3631, !ValueTainted !89, !PointTainted !91
  %27 = add i64 %26, 21, !dbg !3632, !psr.id !3633, !ValueTainted !89, !PointTainted !91
  %28 = icmp ult i64 %8, %27, !dbg !3634, !psr.id !3635, !ValueTainted !89
  br i1 %28, label %29, label %30, !dbg !3636, !psr.id !3637, !Tainted !102

29:                                               ; preds = %22
  br label %70, !dbg !3638, !psr.id !3640

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !3641, !psr.id !3642, !ValueTainted !89, !PointTainted !91
  store i8 0, i8* %31, align 1, !dbg !3643, !psr.id !3644, !Tainted !102
  %32 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !3645, !psr.id !3646, !ValueTainted !89, !PointTainted !91
  store i8 1, i8* %32, align 1, !dbg !3647, !psr.id !3648, !Tainted !102
  %33 = sub i64 %8, %25, !dbg !3649, !psr.id !3650, !ValueTainted !89
  %34 = sub i64 %33, %2, !dbg !3651, !psr.id !3652, !ValueTainted !89, !PointTainted !91
  %35 = sub i64 %34, 11, !dbg !3653, !psr.id !3654, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i64 %35, metadata !3606, metadata !DIExpression()), !dbg !3562, !psr.id !3655
  %36 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !3656, !psr.id !3657, !ValueTainted !89, !PointTainted !91
  %37 = sub i64 %35, 2, !dbg !3658, !psr.id !3659, !ValueTainted !89, !PointTainted !91
  call void @llvm.memset.p0i8.i64(i8* align 1 %36, i8 -1, i64 %37, i1 false), !dbg !3660, !psr.id !3661, !CalledTainted !1168
  %38 = getelementptr inbounds i8, i8* %4, i64 %35, !dbg !3662, !psr.id !3663, !ValueTainted !89, !PointTainted !91
  store i8 0, i8* %38, align 1, !dbg !3664, !psr.id !3665, !Tainted !102
  %39 = add i64 %35, 1, !dbg !3666, !psr.id !3667, !ValueTainted !89, !PointTainted !91
  %40 = getelementptr inbounds i8, i8* %4, i64 %39, !dbg !3668, !psr.id !3669, !ValueTainted !89, !PointTainted !91
  store i8 48, i8* %40, align 1, !dbg !3670, !psr.id !3671, !Tainted !102
  %41 = add i64 %25, %2, !dbg !3672, !psr.id !3673, !ValueTainted !89, !PointTainted !91
  %42 = add i64 %41, 8, !dbg !3674, !psr.id !3675, !ValueTainted !89, !PointTainted !91
  %43 = trunc i64 %42 to i8, !dbg !3676, !psr.id !3677, !ValueTainted !89, !PointTainted !91
  %44 = add i64 %35, 2, !dbg !3678, !psr.id !3679, !ValueTainted !89, !PointTainted !91
  %45 = getelementptr inbounds i8, i8* %4, i64 %44, !dbg !3680, !psr.id !3681, !ValueTainted !89, !PointTainted !91
  store i8 %43, i8* %45, align 1, !dbg !3682, !psr.id !3683, !Tainted !102
  %46 = add i64 %35, 3, !dbg !3684, !psr.id !3685, !ValueTainted !89, !PointTainted !91
  %47 = getelementptr inbounds i8, i8* %4, i64 %46, !dbg !3686, !psr.id !3687, !ValueTainted !89, !PointTainted !91
  store i8 48, i8* %47, align 1, !dbg !3688, !psr.id !3689, !Tainted !102
  %48 = add i64 %25, 4, !dbg !3690, !psr.id !3691, !ValueTainted !89
  %49 = trunc i64 %48 to i8, !dbg !3692, !psr.id !3693, !ValueTainted !89
  %50 = add i64 %35, 4, !dbg !3694, !psr.id !3695, !ValueTainted !89, !PointTainted !91
  %51 = getelementptr inbounds i8, i8* %4, i64 %50, !dbg !3696, !psr.id !3697, !ValueTainted !89, !PointTainted !91
  store i8 %49, i8* %51, align 1, !dbg !3698, !psr.id !3699, !Tainted !102
  %52 = add i64 %35, 5, !dbg !3700, !psr.id !3701, !ValueTainted !89, !PointTainted !91
  %53 = getelementptr inbounds i8, i8* %4, i64 %52, !dbg !3702, !psr.id !3703, !ValueTainted !89, !PointTainted !91
  store i8 6, i8* %53, align 1, !dbg !3704, !psr.id !3705, !Tainted !102
  %54 = getelementptr inbounds i8, i8* %4, i64 %35, !dbg !3706, !psr.id !3707, !ValueTainted !89, !PointTainted !91
  %55 = getelementptr inbounds i8, i8* %54, i64 6, !dbg !3708, !psr.id !3709, !ValueTainted !89, !PointTainted !91
  %56 = add i64 %25, 1, !dbg !3710, !psr.id !3711, !ValueTainted !89
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %55, i8* align 1 %0, i64 %56, i1 false), !dbg !3712, !psr.id !3713, !CalledTainted !2162
  %57 = add i64 %25, 7, !dbg !3714, !psr.id !3715, !ValueTainted !89
  %58 = add i64 %35, %57, !dbg !3716, !psr.id !3717, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i64 %58, metadata !3606, metadata !DIExpression()), !dbg !3562, !psr.id !3718
  %59 = add i64 %58, 1, !dbg !3719, !psr.id !3720, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i64 %59, metadata !3606, metadata !DIExpression()), !dbg !3562, !psr.id !3721
  %60 = getelementptr inbounds i8, i8* %4, i64 %58, !dbg !3722, !psr.id !3723, !ValueTainted !89, !PointTainted !91
  store i8 5, i8* %60, align 1, !dbg !3724, !psr.id !3725, !Tainted !102
  %61 = add i64 %59, 1, !dbg !3726, !psr.id !3727, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i64 %61, metadata !3606, metadata !DIExpression()), !dbg !3562, !psr.id !3728
  %62 = getelementptr inbounds i8, i8* %4, i64 %59, !dbg !3729, !psr.id !3730, !ValueTainted !89, !PointTainted !91
  store i8 0, i8* %62, align 1, !dbg !3731, !psr.id !3732, !Tainted !102
  %63 = add i64 %61, 1, !dbg !3733, !psr.id !3734, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i64 %63, metadata !3606, metadata !DIExpression()), !dbg !3562, !psr.id !3735
  %64 = getelementptr inbounds i8, i8* %4, i64 %61, !dbg !3736, !psr.id !3737, !ValueTainted !89, !PointTainted !91
  store i8 4, i8* %64, align 1, !dbg !3738, !psr.id !3739, !Tainted !102
  %65 = trunc i64 %2 to i8, !dbg !3740, !psr.id !3741, !ValueTainted !89, !PointTainted !91
  %66 = add i64 %63, 1, !dbg !3742, !psr.id !3743, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i64 %66, metadata !3606, metadata !DIExpression()), !dbg !3562, !psr.id !3744
  %67 = getelementptr inbounds i8, i8* %4, i64 %63, !dbg !3745, !psr.id !3746, !ValueTainted !89, !PointTainted !91
  store i8 %65, i8* %67, align 1, !dbg !3747, !psr.id !3748, !Tainted !102
  br label %68, !psr.id !3749

68:                                               ; preds = %30, %14
  %.01 = phi i64 [ %17, %14 ], [ %66, %30 ], !dbg !3750, !psr.id !3751, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i64 %.01, metadata !3606, metadata !DIExpression()), !dbg !3562, !psr.id !3752
  %69 = getelementptr inbounds i8, i8* %4, i64 %.01, !dbg !3753, !psr.id !3754
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %1, i64 %2, i1 false), !dbg !3755, !psr.id !3756, !CalledTainted !2162
  br label %70, !dbg !3757, !psr.id !3758

70:                                               ; preds = %68, %29, %13
  %.0 = phi i32 [ 0, %13 ], [ 1, %68 ], [ 0, %29 ], !dbg !3562, !psr.id !3759
  ret i32 %.0, !dbg !3760, !psr.id !3761
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sign_wrapper(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4) #0 !dbg !3762 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3781, metadata !DIExpression()), !dbg !3782, !psr.id !3783
  call void @llvm.dbg.value(metadata i8* %1, metadata !3784, metadata !DIExpression()), !dbg !3782, !psr.id !3785
  call void @llvm.dbg.value(metadata i64 %2, metadata !3786, metadata !DIExpression()), !dbg !3782, !psr.id !3787
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %3, metadata !3788, metadata !DIExpression()), !dbg !3782, !psr.id !3789
  call void @llvm.dbg.value(metadata i8* %4, metadata !3790, metadata !DIExpression()), !dbg !3782, !psr.id !3791
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !3792, !psr.id !3793
  call void @public_in(%struct.smack_value* %6), !dbg !3794, !psr.id !3795
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !3796, !psr.id !3797
  call void @public_in(%struct.smack_value* %7), !dbg !3798, !psr.id !3799
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !3800, !psr.id !3801
  call void @public_in(%struct.smack_value* %8), !dbg !3802, !psr.id !3803
  %9 = call %struct.smack_value* (%struct.br_rsa_private_key*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_rsa_private_key*, ...)*)(%struct.br_rsa_private_key* %3), !dbg !3804, !psr.id !3805
  call void @public_in(%struct.smack_value* %9), !dbg !3806, !psr.id !3807
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !3808, !psr.id !3809
  call void @public_in(%struct.smack_value* %10), !dbg !3810, !psr.id !3811
  %11 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 1, !dbg !3812, !psr.id !3813
  %12 = load i8*, i8** %11, align 8, !dbg !3812, !psr.id !3814
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %12), !dbg !3815, !psr.id !3816
  call void @public_in(%struct.smack_value* %13), !dbg !3817, !psr.id !3818
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 3, !dbg !3819, !psr.id !3820
  %15 = load i8*, i8** %14, align 8, !dbg !3819, !psr.id !3821
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %15), !dbg !3822, !psr.id !3823
  call void @public_in(%struct.smack_value* %16), !dbg !3824, !psr.id !3825
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 5, !dbg !3826, !psr.id !3827
  %18 = load i8*, i8** %17, align 8, !dbg !3826, !psr.id !3828
  %19 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %18), !dbg !3829, !psr.id !3830
  call void @public_in(%struct.smack_value* %19), !dbg !3831, !psr.id !3832
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 7, !dbg !3833, !psr.id !3834
  %21 = load i8*, i8** %20, align 8, !dbg !3833, !psr.id !3835
  %22 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %21), !dbg !3836, !psr.id !3837
  call void @public_in(%struct.smack_value* %22), !dbg !3838, !psr.id !3839
  %23 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 9, !dbg !3840, !psr.id !3841
  %24 = load i8*, i8** %23, align 8, !dbg !3840, !psr.id !3842
  %25 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %24), !dbg !3843, !psr.id !3844
  call void @public_in(%struct.smack_value* %25), !dbg !3845, !psr.id !3846
  %26 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 2, !dbg !3847, !psr.id !3848
  %27 = load i64, i64* %26, align 8, !dbg !3847, !psr.id !3849
  %28 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %27), !dbg !3850, !psr.id !3851
  call void @public_in(%struct.smack_value* %28), !dbg !3852, !psr.id !3853
  %29 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 4, !dbg !3854, !psr.id !3855
  %30 = load i64, i64* %29, align 8, !dbg !3854, !psr.id !3856
  %31 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %30), !dbg !3857, !psr.id !3858
  call void @public_in(%struct.smack_value* %31), !dbg !3859, !psr.id !3860
  %32 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 6, !dbg !3861, !psr.id !3862
  %33 = load i64, i64* %32, align 8, !dbg !3861, !psr.id !3863
  %34 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %33), !dbg !3864, !psr.id !3865
  call void @public_in(%struct.smack_value* %34), !dbg !3866, !psr.id !3867
  %35 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 8, !dbg !3868, !psr.id !3869
  %36 = load i64, i64* %35, align 8, !dbg !3868, !psr.id !3870
  %37 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %36), !dbg !3871, !psr.id !3872
  call void @public_in(%struct.smack_value* %37), !dbg !3873, !psr.id !3874
  %38 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 10, !dbg !3875, !psr.id !3876
  %39 = load i64, i64* %38, align 8, !dbg !3875, !psr.id !3877
  %40 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %39), !dbg !3878, !psr.id !3879
  call void @public_in(%struct.smack_value* %40), !dbg !3880, !psr.id !3881
  %41 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 10, !dbg !3882, !psr.id !3883
  %42 = load i64, i64* %41, align 8, !dbg !3882, !psr.id !3884
  %43 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %42), !dbg !3885, !psr.id !3886
  call void @public_in(%struct.smack_value* %43), !dbg !3887, !psr.id !3888
  %44 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 0, !dbg !3889, !psr.id !3890
  %45 = load i32, i32* %44, align 8, !dbg !3889, !psr.id !3891
  %46 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %45), !dbg !3892, !psr.id !3893
  call void @public_in(%struct.smack_value* %46), !dbg !3894, !psr.id !3895
  %47 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 64), !dbg !3896, !psr.id !3897
  call void @public_in(%struct.smack_value* %47), !dbg !3898, !psr.id !3899
  %48 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 64), !dbg !3900, !psr.id !3901
  call void @public_in(%struct.smack_value* %48), !dbg !3902, !psr.id !3903
  %49 = call %struct.smack_value* @__SMACK_values(i8* %4, i32 64), !dbg !3904, !psr.id !3905
  call void @public_in(%struct.smack_value* %49), !dbg !3906, !psr.id !3907
  %50 = call i32 @br_rsa_i15_pkcs1_sign(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4), !dbg !3908, !psr.id !3909
  ret void, !dbg !3910, !psr.id !3911
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @sign_wrapper_t() #0 !dbg !3912 {
  %1 = alloca %struct.br_rsa_private_key, align 8, !psr.id !3915
  %2 = call i8* (...) @getcharpt(), !dbg !3916, !psr.id !3917, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %2, metadata !3918, metadata !DIExpression()), !dbg !3919, !psr.id !3920
  %3 = call i8* (...) @getcharpt2(), !dbg !3921, !psr.id !3922, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %3, metadata !3923, metadata !DIExpression()), !dbg !3919, !psr.id !3924
  %4 = call i64 (...) @getsize_t(), !dbg !3925, !psr.id !3926, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i64 %4, metadata !3927, metadata !DIExpression()), !dbg !3919, !psr.id !3928
  call void @llvm.dbg.declare(metadata %struct.br_rsa_private_key* %1, metadata !3929, metadata !DIExpression()), !dbg !3930, !psr.id !3931
  call void (%struct.br_rsa_private_key*, ...) @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8 %1), !dbg !3932, !psr.id !3933
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !3934, metadata !DIExpression()), !dbg !3919, !psr.id !3936
  %5 = call i8* (...) @getuschar(), !dbg !3937, !psr.id !3938, !ValueTainted !89, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %5, metadata !3939, metadata !DIExpression()), !dbg !3919, !psr.id !3940
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !3941, !psr.id !3942
  %7 = load i8*, i8** %6, align 8, !dbg !3941, !psr.id !3943, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %7, metadata !3944, metadata !DIExpression()), !dbg !3919, !psr.id !3945
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !3946, !psr.id !3947
  %9 = load i8*, i8** %8, align 8, !dbg !3946, !psr.id !3948, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %9, metadata !3949, metadata !DIExpression()), !dbg !3919, !psr.id !3950
  %10 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !3951, !psr.id !3952
  %11 = load i8*, i8** %10, align 8, !dbg !3951, !psr.id !3953, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %11, metadata !3954, metadata !DIExpression()), !dbg !3919, !psr.id !3955
  %12 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !3956, !psr.id !3957
  %13 = load i8*, i8** %12, align 8, !dbg !3956, !psr.id !3958, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %13, metadata !3959, metadata !DIExpression()), !dbg !3919, !psr.id !3960
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !3961, !psr.id !3962
  %15 = load i8*, i8** %14, align 8, !dbg !3961, !psr.id !3963, !PointTainted !91
  call void @llvm.dbg.value(metadata i8* %15, metadata !3964, metadata !DIExpression()), !dbg !3919, !psr.id !3965
  call void @vfct_taintseed(i8* %7, i8* %9, i8* %11, i8* %13, i8* %15), !dbg !3966, !psr.id !3967
  %16 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !3968, !psr.id !3969
  store i8* %7, i8** %16, align 8, !dbg !3970, !psr.id !3971
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !3972, !psr.id !3973
  store i8* %9, i8** %17, align 8, !dbg !3974, !psr.id !3975
  %18 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !3976, !psr.id !3977
  store i8* %11, i8** %18, align 8, !dbg !3978, !psr.id !3979
  %19 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !3980, !psr.id !3981
  store i8* %13, i8** %19, align 8, !dbg !3982, !psr.id !3983
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !3984, !psr.id !3985
  store i8* %15, i8** %20, align 8, !dbg !3986, !psr.id !3987
  %21 = call i32 @br_rsa_i15_pkcs1_sign(i8* %2, i8* %3, i64 %4, %struct.br_rsa_private_key* %1, i8* %5), !dbg !3988, !psr.id !3989, !ValueTainted !89
  ret void, !dbg !3990, !psr.id !3991
}

declare dso_local i8* @getcharpt(...) #4

declare dso_local i8* @getcharpt2(...) #4

declare dso_local i64 @getsize_t(...) #4

declare dso_local void @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8, ...) #4

declare dso_local i8* @getuschar(...) #4

declare dso_local void @vfct_taintseed(i8*, i8*, i8*, i8*, i8*) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @sign_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
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
!73 = !{!"0"}
!74 = !DILocalVariable(name: "dst", arg: 2, scope: !66, file: !1, line: 29, type: !37)
!75 = !{!"1"}
!76 = !DILocalVariable(name: "src", arg: 3, scope: !66, file: !1, line: 29, type: !69)
!77 = !{!"2"}
!78 = !DILocalVariable(name: "len", arg: 4, scope: !66, file: !1, line: 29, type: !29)
!79 = !{!"3"}
!80 = !DILocalVariable(name: "d", scope: !66, file: !1, line: 31, type: !56)
!81 = !{!"4"}
!82 = !DILocalVariable(name: "s", scope: !66, file: !1, line: 32, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!85 = !{!"5"}
!86 = !DILocation(line: 36, column: 2, scope: !66)
!87 = !{!"6"}
!88 = !{!"7"}
!89 = !{!"ValueTainted"}
!90 = !{!"8"}
!91 = !{!"PointTainted"}
!92 = !{!"9"}
!93 = !{!"10"}
!94 = !{!"11"}
!95 = !{!"12"}
!96 = !DILocation(line: 36, column: 13, scope: !66)
!97 = !{!"13"}
!98 = !{!"14"}
!99 = !DILocation(line: 36, column: 16, scope: !66)
!100 = !{!"15"}
!101 = !{!"16"}
!102 = !{!"Tainted"}
!103 = !DILocation(line: 39, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !66, file: !1, line: 36, column: 21)
!105 = !{!"17"}
!106 = !{!"18"}
!107 = !DILocation(line: 39, column: 7, scope: !104)
!108 = !{!"19"}
!109 = !{!"20"}
!110 = !DILocalVariable(name: "x", scope: !104, file: !1, line: 37, type: !8)
!111 = !DILocation(line: 0, scope: !104)
!112 = !{!"21"}
!113 = !DILocation(line: 40, column: 7, scope: !104)
!114 = !{!"22"}
!115 = !{!"23"}
!116 = !DILocalVariable(name: "y", scope: !104, file: !1, line: 37, type: !8)
!117 = !{!"24"}
!118 = !DILocation(line: 41, column: 8, scope: !104)
!119 = !{!"25"}
!120 = !{!"26"}
!121 = !DILocation(line: 41, column: 6, scope: !104)
!122 = !{!"27"}
!123 = !DILocation(line: 42, column: 5, scope: !104)
!124 = !{!"28"}
!125 = !{!"29"}
!126 = distinct !{!126, !86, !127, !128}
!127 = !DILocation(line: 43, column: 2, scope: !66)
!128 = !{!"llvm.loop.mustprogress"}
!129 = !{!"30"}
!130 = !DILocation(line: 44, column: 1, scope: !66)
!131 = !{!"31"}
!132 = distinct !DISubprogram(name: "MUX", scope: !133, file: !133, line: 770, type: !134, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!133 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!134 = !DISubroutineType(types: !135)
!135 = !{!8, !8, !8, !8}
!136 = !DILocalVariable(name: "ctl", arg: 1, scope: !132, file: !133, line: 770, type: !8)
!137 = !DILocation(line: 0, scope: !132)
!138 = !{!"32"}
!139 = !DILocalVariable(name: "x", arg: 2, scope: !132, file: !133, line: 770, type: !8)
!140 = !{!"33"}
!141 = !DILocalVariable(name: "y", arg: 3, scope: !132, file: !133, line: 770, type: !8)
!142 = !{!"34"}
!143 = !DILocation(line: 772, column: 14, scope: !132)
!144 = !{!"35"}
!145 = !DILocation(line: 772, column: 24, scope: !132)
!146 = !{!"36"}
!147 = !DILocation(line: 772, column: 19, scope: !132)
!148 = !{!"37"}
!149 = !DILocation(line: 772, column: 11, scope: !132)
!150 = !{!"38"}
!151 = !DILocation(line: 772, column: 2, scope: !132)
!152 = !{!"39"}
!153 = distinct !DISubprogram(name: "br_i15_add", scope: !4, file: !4, line: 29, type: !154, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!154 = !DISubroutineType(types: !155)
!155 = !{!8, !156, !160, !8}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 25, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !11, line: 40, baseType: !159)
!159 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!162 = !DILocalVariable(name: "a", arg: 1, scope: !153, file: !4, line: 29, type: !156)
!163 = !DILocation(line: 0, scope: !153)
!164 = !{!"40"}
!165 = !DILocalVariable(name: "b", arg: 2, scope: !153, file: !4, line: 29, type: !160)
!166 = !{!"41"}
!167 = !DILocalVariable(name: "ctl", arg: 3, scope: !153, file: !4, line: 29, type: !8)
!168 = !{!"42"}
!169 = !DILocalVariable(name: "cc", scope: !153, file: !4, line: 31, type: !8)
!170 = !{!"43"}
!171 = !DILocation(line: 35, column: 7, scope: !153)
!172 = !{!"44"}
!173 = !{!"45"}
!174 = !{!"46"}
!175 = !DILocation(line: 35, column: 12, scope: !153)
!176 = !{!"47"}
!177 = !DILocation(line: 35, column: 18, scope: !153)
!178 = !{!"48"}
!179 = !DILocation(line: 35, column: 6, scope: !153)
!180 = !{!"49"}
!181 = !DILocalVariable(name: "m", scope: !153, file: !4, line: 32, type: !29)
!182 = !{!"50"}
!183 = !DILocalVariable(name: "u", scope: !153, file: !4, line: 32, type: !29)
!184 = !{!"51"}
!185 = !DILocation(line: 36, column: 7, scope: !186)
!186 = distinct !DILexicalBlock(scope: !153, file: !4, line: 36, column: 2)
!187 = !{!"52"}
!188 = !{!"53"}
!189 = !DILocation(line: 0, scope: !186)
!190 = !{!"54"}
!191 = !{!"55"}
!192 = !{!"56"}
!193 = !DILocation(line: 36, column: 16, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !4, line: 36, column: 2)
!195 = !{!"57"}
!196 = !DILocation(line: 36, column: 2, scope: !186)
!197 = !{!"58"}
!198 = !DILocation(line: 39, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !4, line: 36, column: 27)
!200 = !{!"59"}
!201 = !{!"60"}
!202 = !{!"61"}
!203 = !DILocalVariable(name: "aw", scope: !199, file: !4, line: 37, type: !8)
!204 = !DILocation(line: 0, scope: !199)
!205 = !{!"62"}
!206 = !DILocation(line: 40, column: 8, scope: !199)
!207 = !{!"63"}
!208 = !{!"64"}
!209 = !{!"65"}
!210 = !DILocalVariable(name: "bw", scope: !199, file: !4, line: 37, type: !8)
!211 = !{!"66"}
!212 = !DILocation(line: 41, column: 12, scope: !199)
!213 = !{!"67"}
!214 = !DILocation(line: 41, column: 17, scope: !199)
!215 = !{!"68"}
!216 = !DILocalVariable(name: "naw", scope: !199, file: !4, line: 37, type: !8)
!217 = !{!"69"}
!218 = !DILocation(line: 42, column: 12, scope: !199)
!219 = !{!"70"}
!220 = !{!"71"}
!221 = !DILocation(line: 43, column: 23, scope: !199)
!222 = !{!"72"}
!223 = !DILocation(line: 43, column: 10, scope: !199)
!224 = !{!"73"}
!225 = !{!"74"}
!226 = !DILocation(line: 43, column: 3, scope: !199)
!227 = !{!"75"}
!228 = !DILocation(line: 43, column: 8, scope: !199)
!229 = !{!"76"}
!230 = !DILocation(line: 44, column: 2, scope: !199)
!231 = !{!"77"}
!232 = !DILocation(line: 36, column: 23, scope: !194)
!233 = !{!"78"}
!234 = !{!"79"}
!235 = !DILocation(line: 36, column: 2, scope: !194)
!236 = distinct !{!236, !196, !237, !128}
!237 = !DILocation(line: 44, column: 2, scope: !186)
!238 = !{!"80"}
!239 = !DILocation(line: 45, column: 2, scope: !153)
!240 = !{!"81"}
!241 = distinct !DISubprogram(name: "MUX", scope: !133, file: !133, line: 770, type: !134, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!242 = !DILocalVariable(name: "ctl", arg: 1, scope: !241, file: !133, line: 770, type: !8)
!243 = !DILocation(line: 0, scope: !241)
!244 = !{!"82"}
!245 = !DILocalVariable(name: "x", arg: 2, scope: !241, file: !133, line: 770, type: !8)
!246 = !{!"83"}
!247 = !DILocalVariable(name: "y", arg: 3, scope: !241, file: !133, line: 770, type: !8)
!248 = !{!"84"}
!249 = !DILocation(line: 772, column: 14, scope: !241)
!250 = !{!"85"}
!251 = !DILocation(line: 772, column: 24, scope: !241)
!252 = !{!"86"}
!253 = !DILocation(line: 772, column: 19, scope: !241)
!254 = !{!"87"}
!255 = !DILocation(line: 772, column: 11, scope: !241)
!256 = !{!"88"}
!257 = !DILocation(line: 772, column: 2, scope: !241)
!258 = !{!"89"}
!259 = distinct !DISubprogram(name: "br_i15_bit_length", scope: !6, file: !6, line: 29, type: !260, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !2)
!260 = !DISubroutineType(types: !261)
!261 = !{!8, !156, !29}
!262 = !DILocalVariable(name: "x", arg: 1, scope: !259, file: !6, line: 29, type: !156)
!263 = !DILocation(line: 0, scope: !259)
!264 = !{!"90"}
!265 = !DILocalVariable(name: "xlen", arg: 2, scope: !259, file: !6, line: 29, type: !29)
!266 = !{!"91"}
!267 = !DILocalVariable(name: "tw", scope: !259, file: !6, line: 31, type: !8)
!268 = !{!"92"}
!269 = !DILocalVariable(name: "twk", scope: !259, file: !6, line: 31, type: !8)
!270 = !{!"93"}
!271 = !DILocation(line: 35, column: 2, scope: !259)
!272 = !{!"94"}
!273 = !{!"95"}
!274 = !{!"96"}
!275 = !{!"97"}
!276 = !{!"98"}
!277 = !{!"99"}
!278 = !{!"100"}
!279 = !DILocation(line: 35, column: 14, scope: !259)
!280 = !{!"101"}
!281 = !{!"102"}
!282 = !DILocation(line: 35, column: 17, scope: !259)
!283 = !{!"103"}
!284 = !{!"104"}
!285 = !DILocation(line: 38, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !259, file: !6, line: 35, column: 22)
!287 = !{!"105"}
!288 = !DILocalVariable(name: "c", scope: !286, file: !6, line: 36, type: !8)
!289 = !DILocation(line: 0, scope: !286)
!290 = !{!"106"}
!291 = !DILocation(line: 39, column: 7, scope: !286)
!292 = !{!"107"}
!293 = !{!"108"}
!294 = !{!"109"}
!295 = !DILocalVariable(name: "w", scope: !286, file: !6, line: 36, type: !8)
!296 = !{!"110"}
!297 = !DILocation(line: 40, column: 8, scope: !286)
!298 = !{!"111"}
!299 = !{!"112"}
!300 = !DILocation(line: 41, column: 16, scope: !286)
!301 = !{!"113"}
!302 = !DILocation(line: 41, column: 9, scope: !286)
!303 = !{!"114"}
!304 = !{!"115"}
!305 = distinct !{!305, !271, !306, !128}
!306 = !DILocation(line: 42, column: 2, scope: !259)
!307 = !{!"116"}
!308 = !DILocation(line: 43, column: 14, scope: !259)
!309 = !{!"117"}
!310 = !DILocation(line: 43, column: 22, scope: !259)
!311 = !{!"118"}
!312 = !DILocation(line: 43, column: 20, scope: !259)
!313 = !{!"119"}
!314 = !DILocation(line: 43, column: 2, scope: !259)
!315 = !{!"120"}
!316 = distinct !DISubprogram(name: "EQ", scope: !133, file: !133, line: 779, type: !317, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!317 = !DISubroutineType(types: !318)
!318 = !{!8, !8, !8}
!319 = !DILocalVariable(name: "x", arg: 1, scope: !316, file: !133, line: 779, type: !8)
!320 = !DILocation(line: 0, scope: !316)
!321 = !{!"121"}
!322 = !DILocalVariable(name: "y", arg: 2, scope: !316, file: !133, line: 779, type: !8)
!323 = !{!"122"}
!324 = !DILocation(line: 783, column: 8, scope: !316)
!325 = !{!"123"}
!326 = !DILocalVariable(name: "q", scope: !316, file: !133, line: 781, type: !8)
!327 = !{!"124"}
!328 = !DILocation(line: 784, column: 18, scope: !316)
!329 = !{!"125"}
!330 = !DILocation(line: 784, column: 16, scope: !316)
!331 = !{!"126"}
!332 = !DILocation(line: 784, column: 22, scope: !316)
!333 = !{!"127"}
!334 = !DILocation(line: 784, column: 9, scope: !316)
!335 = !{!"128"}
!336 = !DILocation(line: 784, column: 2, scope: !316)
!337 = !{!"129"}
!338 = distinct !DISubprogram(name: "MUX", scope: !133, file: !133, line: 770, type: !134, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!339 = !DILocalVariable(name: "ctl", arg: 1, scope: !338, file: !133, line: 770, type: !8)
!340 = !DILocation(line: 0, scope: !338)
!341 = !{!"130"}
!342 = !DILocalVariable(name: "x", arg: 2, scope: !338, file: !133, line: 770, type: !8)
!343 = !{!"131"}
!344 = !DILocalVariable(name: "y", arg: 3, scope: !338, file: !133, line: 770, type: !8)
!345 = !{!"132"}
!346 = !DILocation(line: 772, column: 14, scope: !338)
!347 = !{!"133"}
!348 = !DILocation(line: 772, column: 24, scope: !338)
!349 = !{!"134"}
!350 = !DILocation(line: 772, column: 19, scope: !338)
!351 = !{!"135"}
!352 = !DILocation(line: 772, column: 11, scope: !338)
!353 = !{!"136"}
!354 = !DILocation(line: 772, column: 2, scope: !338)
!355 = !{!"137"}
!356 = distinct !DISubprogram(name: "BIT_LENGTH", scope: !133, file: !133, line: 915, type: !357, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!357 = !DISubroutineType(types: !358)
!358 = !{!8, !8}
!359 = !DILocalVariable(name: "x", arg: 1, scope: !356, file: !133, line: 915, type: !8)
!360 = !DILocation(line: 0, scope: !356)
!361 = !{!"138"}
!362 = !DILocation(line: 919, column: 6, scope: !356)
!363 = !{!"139"}
!364 = !DILocalVariable(name: "k", scope: !356, file: !133, line: 917, type: !8)
!365 = !{!"140"}
!366 = !DILocation(line: 920, column: 6, scope: !356)
!367 = !{!"141"}
!368 = !DILocalVariable(name: "c", scope: !356, file: !133, line: 917, type: !8)
!369 = !{!"142"}
!370 = !DILocation(line: 920, column: 34, scope: !356)
!371 = !{!"143"}
!372 = !DILocation(line: 920, column: 25, scope: !356)
!373 = !{!"144"}
!374 = !{!"145"}
!375 = !DILocation(line: 920, column: 52, scope: !356)
!376 = !{!"146"}
!377 = !DILocation(line: 920, column: 47, scope: !356)
!378 = !{!"147"}
!379 = !{!"148"}
!380 = !DILocation(line: 921, column: 6, scope: !356)
!381 = !{!"149"}
!382 = !{!"150"}
!383 = !DILocation(line: 921, column: 34, scope: !356)
!384 = !{!"151"}
!385 = !DILocation(line: 921, column: 25, scope: !356)
!386 = !{!"152"}
!387 = !{!"153"}
!388 = !DILocation(line: 921, column: 52, scope: !356)
!389 = !{!"154"}
!390 = !DILocation(line: 921, column: 47, scope: !356)
!391 = !{!"155"}
!392 = !{!"156"}
!393 = !DILocation(line: 922, column: 6, scope: !356)
!394 = !{!"157"}
!395 = !{!"158"}
!396 = !DILocation(line: 922, column: 34, scope: !356)
!397 = !{!"159"}
!398 = !DILocation(line: 922, column: 25, scope: !356)
!399 = !{!"160"}
!400 = !{!"161"}
!401 = !DILocation(line: 922, column: 52, scope: !356)
!402 = !{!"162"}
!403 = !DILocation(line: 922, column: 47, scope: !356)
!404 = !{!"163"}
!405 = !{!"164"}
!406 = !DILocation(line: 923, column: 6, scope: !356)
!407 = !{!"165"}
!408 = !{!"166"}
!409 = !DILocation(line: 923, column: 34, scope: !356)
!410 = !{!"167"}
!411 = !DILocation(line: 923, column: 25, scope: !356)
!412 = !{!"168"}
!413 = !{!"169"}
!414 = !DILocation(line: 923, column: 52, scope: !356)
!415 = !{!"170"}
!416 = !DILocation(line: 923, column: 47, scope: !356)
!417 = !{!"171"}
!418 = !{!"172"}
!419 = !DILocation(line: 924, column: 7, scope: !356)
!420 = !{!"173"}
!421 = !DILocation(line: 924, column: 4, scope: !356)
!422 = !{!"174"}
!423 = !{!"175"}
!424 = !DILocation(line: 925, column: 2, scope: !356)
!425 = !{!"176"}
!426 = distinct !DISubprogram(name: "NEQ", scope: !133, file: !133, line: 791, type: !317, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!427 = !DILocalVariable(name: "x", arg: 1, scope: !426, file: !133, line: 791, type: !8)
!428 = !DILocation(line: 0, scope: !426)
!429 = !{!"177"}
!430 = !DILocalVariable(name: "y", arg: 2, scope: !426, file: !133, line: 791, type: !8)
!431 = !{!"178"}
!432 = !DILocation(line: 795, column: 8, scope: !426)
!433 = !{!"179"}
!434 = !DILocalVariable(name: "q", scope: !426, file: !133, line: 793, type: !8)
!435 = !{!"180"}
!436 = !DILocation(line: 796, column: 14, scope: !426)
!437 = !{!"181"}
!438 = !DILocation(line: 796, column: 12, scope: !426)
!439 = !{!"182"}
!440 = !DILocation(line: 796, column: 18, scope: !426)
!441 = !{!"183"}
!442 = !DILocation(line: 796, column: 2, scope: !426)
!443 = !{!"184"}
!444 = distinct !DISubprogram(name: "GT", scope: !133, file: !133, line: 803, type: !317, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!445 = !DILocalVariable(name: "x", arg: 1, scope: !444, file: !133, line: 803, type: !8)
!446 = !DILocation(line: 0, scope: !444)
!447 = !{!"185"}
!448 = !DILocalVariable(name: "y", arg: 2, scope: !444, file: !133, line: 803, type: !8)
!449 = !{!"186"}
!450 = !DILocation(line: 819, column: 8, scope: !444)
!451 = !{!"187"}
!452 = !DILocalVariable(name: "z", scope: !444, file: !133, line: 817, type: !8)
!453 = !{!"188"}
!454 = !DILocation(line: 820, column: 18, scope: !444)
!455 = !{!"189"}
!456 = !DILocation(line: 820, column: 28, scope: !444)
!457 = !{!"190"}
!458 = !DILocation(line: 820, column: 23, scope: !444)
!459 = !{!"191"}
!460 = !DILocation(line: 820, column: 12, scope: !444)
!461 = !{!"192"}
!462 = !DILocation(line: 820, column: 35, scope: !444)
!463 = !{!"193"}
!464 = !DILocation(line: 820, column: 2, scope: !444)
!465 = !{!"194"}
!466 = distinct !DISubprogram(name: "NOT", scope: !133, file: !133, line: 761, type: !357, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!467 = !DILocalVariable(name: "ctl", arg: 1, scope: !466, file: !133, line: 761, type: !8)
!468 = !DILocation(line: 0, scope: !466)
!469 = !{!"195"}
!470 = !DILocation(line: 763, column: 13, scope: !466)
!471 = !{!"196"}
!472 = !DILocation(line: 763, column: 2, scope: !466)
!473 = !{!"197"}
!474 = distinct !DISubprogram(name: "br_i15_decode", scope: !14, file: !14, line: 29, type: !475, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !2)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !156, !69, !29}
!477 = !DILocalVariable(name: "x", arg: 1, scope: !474, file: !14, line: 29, type: !156)
!478 = !DILocation(line: 0, scope: !474)
!479 = !{!"198"}
!480 = !DILocalVariable(name: "src", arg: 2, scope: !474, file: !14, line: 29, type: !69)
!481 = !{!"199"}
!482 = !DILocalVariable(name: "len", arg: 3, scope: !474, file: !14, line: 29, type: !29)
!483 = !{!"200"}
!484 = !DILocalVariable(name: "buf", scope: !474, file: !14, line: 31, type: !83)
!485 = !{!"201"}
!486 = !DILocalVariable(name: "v", scope: !474, file: !14, line: 32, type: !29)
!487 = !{!"202"}
!488 = !DILocalVariable(name: "acc", scope: !474, file: !14, line: 33, type: !8)
!489 = !{!"203"}
!490 = !DILocalVariable(name: "acc_len", scope: !474, file: !14, line: 34, type: !491)
!491 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!492 = !{!"204"}
!493 = !DILocation(line: 40, column: 2, scope: !474)
!494 = !{!"205"}
!495 = !{!"206"}
!496 = !{!"207"}
!497 = !{!"208"}
!498 = !{!"209"}
!499 = !{!"210"}
!500 = !{!"211"}
!501 = !{!"212"}
!502 = !{!"213"}
!503 = !DILocation(line: 40, column: 13, scope: !474)
!504 = !{!"214"}
!505 = !{!"215"}
!506 = !DILocation(line: 40, column: 16, scope: !474)
!507 = !{!"216"}
!508 = !{!"217"}
!509 = !DILocation(line: 43, column: 7, scope: !510)
!510 = distinct !DILexicalBlock(scope: !474, file: !14, line: 40, column: 21)
!511 = !{!"218"}
!512 = !{!"219"}
!513 = !{!"220"}
!514 = !DILocalVariable(name: "b", scope: !510, file: !14, line: 41, type: !8)
!515 = !DILocation(line: 0, scope: !510)
!516 = !{!"221"}
!517 = !DILocation(line: 44, column: 13, scope: !510)
!518 = !{!"222"}
!519 = !DILocation(line: 44, column: 7, scope: !510)
!520 = !{!"223"}
!521 = !{!"224"}
!522 = !DILocation(line: 45, column: 11, scope: !510)
!523 = !{!"225"}
!524 = !{!"226"}
!525 = !DILocation(line: 46, column: 15, scope: !526)
!526 = distinct !DILexicalBlock(scope: !510, file: !14, line: 46, column: 7)
!527 = !{!"227"}
!528 = !DILocation(line: 46, column: 7, scope: !510)
!529 = !{!"228"}
!530 = !DILocation(line: 47, column: 18, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !14, line: 46, column: 22)
!532 = !{!"229"}
!533 = !DILocation(line: 47, column: 14, scope: !531)
!534 = !{!"230"}
!535 = !DILocation(line: 47, column: 8, scope: !531)
!536 = !{!"231"}
!537 = !{!"232"}
!538 = !DILocation(line: 47, column: 4, scope: !531)
!539 = !{!"233"}
!540 = !DILocation(line: 47, column: 12, scope: !531)
!541 = !{!"234"}
!542 = !DILocation(line: 48, column: 12, scope: !531)
!543 = !{!"235"}
!544 = !{!"236"}
!545 = !DILocation(line: 49, column: 8, scope: !531)
!546 = !{!"237"}
!547 = !{!"238"}
!548 = !DILocation(line: 50, column: 3, scope: !531)
!549 = !{!"239"}
!550 = !{!"240"}
!551 = !{!"241"}
!552 = !{!"242"}
!553 = !{!"243"}
!554 = !{!"244"}
!555 = !{!"245"}
!556 = distinct !{!556, !493, !557, !128}
!557 = !DILocation(line: 51, column: 2, scope: !474)
!558 = !{!"246"}
!559 = !DILocation(line: 52, column: 14, scope: !560)
!560 = distinct !DILexicalBlock(scope: !474, file: !14, line: 52, column: 6)
!561 = !{!"247"}
!562 = !DILocation(line: 52, column: 6, scope: !474)
!563 = !{!"248"}
!564 = !DILocation(line: 53, column: 13, scope: !565)
!565 = distinct !DILexicalBlock(scope: !560, file: !14, line: 52, column: 20)
!566 = !{!"249"}
!567 = !DILocation(line: 53, column: 7, scope: !565)
!568 = !{!"250"}
!569 = !{!"251"}
!570 = !DILocation(line: 53, column: 3, scope: !565)
!571 = !{!"252"}
!572 = !DILocation(line: 53, column: 11, scope: !565)
!573 = !{!"253"}
!574 = !DILocation(line: 54, column: 2, scope: !565)
!575 = !{!"254"}
!576 = !{!"255"}
!577 = !{!"256"}
!578 = !DILocation(line: 55, column: 29, scope: !474)
!579 = !{!"257"}
!580 = !DILocation(line: 55, column: 36, scope: !474)
!581 = !{!"258"}
!582 = !DILocation(line: 55, column: 9, scope: !474)
!583 = !{!"259"}
!584 = !{!"260"}
!585 = !DILocation(line: 55, column: 2, scope: !474)
!586 = !{!"261"}
!587 = !DILocation(line: 55, column: 7, scope: !474)
!588 = !{!"262"}
!589 = !DILocation(line: 56, column: 1, scope: !474)
!590 = !{!"263"}
!591 = distinct !DISubprogram(name: "br_i15_decode_reduce", scope: !16, file: !16, line: 29, type: !592, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !2)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !156, !69, !29, !160}
!594 = !DILocalVariable(name: "x", arg: 1, scope: !591, file: !16, line: 29, type: !156)
!595 = !DILocation(line: 0, scope: !591)
!596 = !{!"264"}
!597 = !DILocalVariable(name: "src", arg: 2, scope: !591, file: !16, line: 30, type: !69)
!598 = !{!"265"}
!599 = !DILocalVariable(name: "len", arg: 3, scope: !591, file: !16, line: 30, type: !29)
!600 = !{!"266"}
!601 = !DILocalVariable(name: "m", arg: 4, scope: !591, file: !16, line: 30, type: !160)
!602 = !{!"267"}
!603 = !DILocation(line: 41, column: 14, scope: !591)
!604 = !{!"268"}
!605 = !{!"269"}
!606 = !{!"270"}
!607 = !DILocalVariable(name: "m_ebitlen", scope: !591, file: !16, line: 32, type: !8)
!608 = !{!"271"}
!609 = !DILocation(line: 46, column: 16, scope: !610)
!610 = distinct !DILexicalBlock(scope: !591, file: !16, line: 46, column: 6)
!611 = !{!"272"}
!612 = !DILocation(line: 46, column: 6, scope: !591)
!613 = !{!"273"}
!614 = !DILocation(line: 47, column: 3, scope: !615)
!615 = distinct !DILexicalBlock(scope: !610, file: !16, line: 46, column: 22)
!616 = !{!"274"}
!617 = !DILocation(line: 47, column: 8, scope: !615)
!618 = !{!"275"}
!619 = !DILocation(line: 48, column: 3, scope: !615)
!620 = !{!"276"}
!621 = !DILocation(line: 54, column: 17, scope: !591)
!622 = !{!"277"}
!623 = !DILocation(line: 54, column: 2, scope: !591)
!624 = !{!"278"}
!625 = !DILocation(line: 60, column: 24, scope: !591)
!626 = !{!"279"}
!627 = !DILocalVariable(name: "m_rbitlen", scope: !591, file: !16, line: 32, type: !8)
!628 = !{!"280"}
!629 = !DILocation(line: 61, column: 25, scope: !591)
!630 = !{!"281"}
!631 = !DILocation(line: 61, column: 44, scope: !591)
!632 = !{!"282"}
!633 = !DILocation(line: 61, column: 31, scope: !591)
!634 = !{!"283"}
!635 = !DILocation(line: 61, column: 50, scope: !591)
!636 = !{!"284"}
!637 = !{!"285"}
!638 = !DILocation(line: 62, column: 21, scope: !591)
!639 = !{!"286"}
!640 = !DILocation(line: 62, column: 26, scope: !591)
!641 = !{!"287"}
!642 = !DILocation(line: 62, column: 10, scope: !591)
!643 = !{!"288"}
!644 = !DILocalVariable(name: "mblen", scope: !591, file: !16, line: 33, type: !29)
!645 = !{!"289"}
!646 = !DILocation(line: 63, column: 12, scope: !591)
!647 = !{!"290"}
!648 = !DILocalVariable(name: "k", scope: !591, file: !16, line: 33, type: !29)
!649 = !{!"291"}
!650 = !DILocation(line: 64, column: 8, scope: !651)
!651 = distinct !DILexicalBlock(scope: !591, file: !16, line: 64, column: 6)
!652 = !{!"292"}
!653 = !DILocation(line: 64, column: 6, scope: !591)
!654 = !{!"293"}
!655 = !DILocation(line: 65, column: 3, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !16, line: 64, column: 16)
!657 = !{!"294"}
!658 = !DILocation(line: 66, column: 10, scope: !656)
!659 = !{!"295"}
!660 = !DILocation(line: 66, column: 3, scope: !656)
!661 = !{!"296"}
!662 = !DILocation(line: 66, column: 8, scope: !656)
!663 = !{!"297"}
!664 = !DILocation(line: 67, column: 3, scope: !656)
!665 = !{!"298"}
!666 = !DILocalVariable(name: "buf", scope: !591, file: !16, line: 34, type: !83)
!667 = !{!"299"}
!668 = !DILocation(line: 70, column: 2, scope: !591)
!669 = !{!"300"}
!670 = !DILocation(line: 71, column: 9, scope: !591)
!671 = !{!"301"}
!672 = !DILocation(line: 71, column: 2, scope: !591)
!673 = !{!"302"}
!674 = !DILocation(line: 71, column: 7, scope: !591)
!675 = !{!"303"}
!676 = !DILocalVariable(name: "acc", scope: !591, file: !16, line: 35, type: !8)
!677 = !{!"304"}
!678 = !DILocalVariable(name: "acc_len", scope: !591, file: !16, line: 36, type: !491)
!679 = !{!"305"}
!680 = !DILocation(line: 78, column: 2, scope: !591)
!681 = !{!"306"}
!682 = !{!"307"}
!683 = !{!"308"}
!684 = !{!"309"}
!685 = !{!"310"}
!686 = !{!"311"}
!687 = !{!"312"}
!688 = !DILocation(line: 78, column: 11, scope: !591)
!689 = !{!"313"}
!690 = !{!"314"}
!691 = !DILocation(line: 81, column: 13, scope: !692)
!692 = distinct !DILexicalBlock(scope: !591, file: !16, line: 78, column: 18)
!693 = !{!"315"}
!694 = !{!"316"}
!695 = !DILocation(line: 81, column: 7, scope: !692)
!696 = !{!"317"}
!697 = !{!"318"}
!698 = !{!"319"}
!699 = !DILocalVariable(name: "v", scope: !692, file: !16, line: 79, type: !8)
!700 = !DILocation(line: 0, scope: !692)
!701 = !{!"320"}
!702 = !DILocation(line: 82, column: 14, scope: !692)
!703 = !{!"321"}
!704 = !DILocation(line: 82, column: 20, scope: !692)
!705 = !{!"322"}
!706 = !{!"323"}
!707 = !DILocation(line: 83, column: 11, scope: !692)
!708 = !{!"324"}
!709 = !{!"325"}
!710 = !DILocation(line: 84, column: 15, scope: !711)
!711 = distinct !DILexicalBlock(scope: !692, file: !16, line: 84, column: 7)
!712 = !{!"326"}
!713 = !DILocation(line: 84, column: 7, scope: !692)
!714 = !{!"327"}
!715 = !DILocation(line: 85, column: 43, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !16, line: 84, column: 22)
!717 = !{!"328"}
!718 = !DILocation(line: 85, column: 31, scope: !716)
!719 = !{!"329"}
!720 = !DILocation(line: 85, column: 27, scope: !716)
!721 = !{!"330"}
!722 = !DILocation(line: 85, column: 4, scope: !716)
!723 = !{!"331"}
!724 = !DILocation(line: 86, column: 12, scope: !716)
!725 = !{!"332"}
!726 = !{!"333"}
!727 = !DILocation(line: 87, column: 26, scope: !716)
!728 = !{!"334"}
!729 = !DILocation(line: 87, column: 11, scope: !716)
!730 = !{!"335"}
!731 = !DILocation(line: 87, column: 8, scope: !716)
!732 = !{!"336"}
!733 = !{!"337"}
!734 = !DILocation(line: 88, column: 3, scope: !716)
!735 = !{!"338"}
!736 = !{!"339"}
!737 = !{!"340"}
!738 = !{!"341"}
!739 = !{!"342"}
!740 = distinct !{!740, !680, !741, !128}
!741 = !DILocation(line: 89, column: 2, scope: !591)
!742 = !{!"343"}
!743 = !DILocation(line: 95, column: 14, scope: !744)
!744 = distinct !DILexicalBlock(scope: !591, file: !16, line: 95, column: 6)
!745 = !{!"344"}
!746 = !DILocation(line: 95, column: 6, scope: !591)
!747 = !{!"345"}
!748 = !DILocation(line: 96, column: 17, scope: !749)
!749 = distinct !DILexicalBlock(scope: !744, file: !16, line: 95, column: 20)
!750 = !{!"346"}
!751 = !{!"347"}
!752 = !{!"348"}
!753 = !DILocation(line: 96, column: 22, scope: !749)
!754 = !{!"349"}
!755 = !DILocation(line: 96, column: 14, scope: !749)
!756 = !{!"350"}
!757 = !DILocation(line: 96, column: 35, scope: !749)
!758 = !{!"351"}
!759 = !{!"352"}
!760 = !DILocation(line: 97, column: 23, scope: !749)
!761 = !{!"353"}
!762 = !DILocation(line: 97, column: 3, scope: !749)
!763 = !{!"354"}
!764 = !DILocation(line: 98, column: 26, scope: !749)
!765 = !{!"355"}
!766 = !DILocation(line: 98, column: 3, scope: !749)
!767 = !{!"356"}
!768 = !DILocation(line: 99, column: 2, scope: !749)
!769 = !{!"357"}
!770 = !DILocation(line: 100, column: 1, scope: !591)
!771 = !{!"358"}
!772 = distinct !DISubprogram(name: "br_i15_zero", scope: !133, file: !133, line: 1537, type: !773, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !156, !157}
!775 = !DILocalVariable(name: "x", arg: 1, scope: !772, file: !133, line: 1537, type: !156)
!776 = !DILocation(line: 0, scope: !772)
!777 = !{!"359"}
!778 = !DILocalVariable(name: "bit_len", arg: 2, scope: !772, file: !133, line: 1537, type: !157)
!779 = !{!"360"}
!780 = !DILocation(line: 1539, column: 5, scope: !772)
!781 = !{!"361"}
!782 = !{!"362"}
!783 = !DILocation(line: 1539, column: 8, scope: !772)
!784 = !{!"363"}
!785 = !DILocation(line: 1540, column: 2, scope: !772)
!786 = !{!"364"}
!787 = !DILocation(line: 1540, column: 17, scope: !772)
!788 = !{!"365"}
!789 = !DILocation(line: 1540, column: 25, scope: !772)
!790 = !{!"366"}
!791 = !DILocation(line: 1540, column: 31, scope: !772)
!792 = !{!"367"}
!793 = !DILocation(line: 1540, column: 15, scope: !772)
!794 = !{!"368"}
!795 = !DILocation(line: 1540, column: 37, scope: !772)
!796 = !{!"369"}
!797 = !{!"370"}
!798 = !{!"0010"}
!799 = !DILocation(line: 1541, column: 1, scope: !772)
!800 = !{!"371"}
!801 = distinct !DISubprogram(name: "br_i15_encode", scope: !18, file: !18, line: 29, type: !802, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !2)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !37, !29, !160}
!804 = !DILocalVariable(name: "dst", arg: 1, scope: !801, file: !18, line: 29, type: !37)
!805 = !DILocation(line: 0, scope: !801)
!806 = !{!"372"}
!807 = !DILocalVariable(name: "len", arg: 2, scope: !801, file: !18, line: 29, type: !29)
!808 = !{!"373"}
!809 = !DILocalVariable(name: "x", arg: 3, scope: !801, file: !18, line: 29, type: !160)
!810 = !{!"374"}
!811 = !DILocation(line: 36, column: 10, scope: !801)
!812 = !{!"375"}
!813 = !{!"376"}
!814 = !{!"377"}
!815 = !DILocation(line: 36, column: 15, scope: !801)
!816 = !{!"378"}
!817 = !DILocation(line: 36, column: 21, scope: !801)
!818 = !{!"379"}
!819 = !DILocation(line: 36, column: 9, scope: !801)
!820 = !{!"380"}
!821 = !DILocalVariable(name: "xlen", scope: !801, file: !18, line: 32, type: !29)
!822 = !{!"381"}
!823 = !DILocation(line: 37, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !801, file: !18, line: 37, column: 6)
!825 = !{!"382"}
!826 = !DILocation(line: 37, column: 6, scope: !801)
!827 = !{!"383"}
!828 = !DILocation(line: 38, column: 3, scope: !829)
!829 = distinct !DILexicalBlock(scope: !824, file: !18, line: 37, column: 17)
!830 = !{!"384"}
!831 = !{!"1000"}
!832 = !DILocation(line: 39, column: 3, scope: !829)
!833 = !{!"385"}
!834 = !DILocalVariable(name: "u", scope: !801, file: !18, line: 32, type: !29)
!835 = !{!"386"}
!836 = !DILocalVariable(name: "acc", scope: !801, file: !18, line: 33, type: !8)
!837 = !{!"387"}
!838 = !DILocalVariable(name: "acc_len", scope: !801, file: !18, line: 34, type: !491)
!839 = !{!"388"}
!840 = !DILocalVariable(name: "buf", scope: !801, file: !18, line: 31, type: !56)
!841 = !{!"389"}
!842 = !DILocation(line: 45, column: 2, scope: !801)
!843 = !{!"390"}
!844 = !{!"391"}
!845 = !{!"392"}
!846 = !{!"393"}
!847 = !{!"394"}
!848 = !{!"395"}
!849 = !{!"396"}
!850 = !{!"397"}
!851 = !{!"398"}
!852 = !DILocation(line: 45, column: 13, scope: !801)
!853 = !{!"399"}
!854 = !{!"400"}
!855 = !DILocation(line: 45, column: 16, scope: !801)
!856 = !{!"401"}
!857 = !{!"402"}
!858 = !DILocation(line: 46, column: 15, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !18, line: 46, column: 7)
!860 = distinct !DILexicalBlock(scope: !801, file: !18, line: 45, column: 21)
!861 = !{!"403"}
!862 = !DILocation(line: 46, column: 7, scope: !860)
!863 = !{!"404"}
!864 = !DILocation(line: 47, column: 10, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !18, line: 47, column: 8)
!866 = distinct !DILexicalBlock(scope: !859, file: !18, line: 46, column: 20)
!867 = !{!"405"}
!868 = !DILocation(line: 47, column: 8, scope: !866)
!869 = !{!"406"}
!870 = !DILocation(line: 48, column: 26, scope: !871)
!871 = distinct !DILexicalBlock(scope: !865, file: !18, line: 47, column: 19)
!872 = !{!"407"}
!873 = !{!"408"}
!874 = !DILocation(line: 48, column: 22, scope: !871)
!875 = !{!"409"}
!876 = !{!"410"}
!877 = !DILocation(line: 48, column: 12, scope: !871)
!878 = !{!"411"}
!879 = !DILocation(line: 48, column: 30, scope: !871)
!880 = !{!"412"}
!881 = !DILocation(line: 48, column: 9, scope: !871)
!882 = !{!"413"}
!883 = !{!"414"}
!884 = !DILocation(line: 49, column: 4, scope: !871)
!885 = !{!"415"}
!886 = !{!"416"}
!887 = !{!"417"}
!888 = !{!"418"}
!889 = !{!"419"}
!890 = !DILocation(line: 50, column: 12, scope: !866)
!891 = !{!"420"}
!892 = !{!"421"}
!893 = !DILocation(line: 51, column: 3, scope: !866)
!894 = !{!"422"}
!895 = !{!"423"}
!896 = !{!"424"}
!897 = !{!"425"}
!898 = !{!"426"}
!899 = !{!"427"}
!900 = !{!"428"}
!901 = !DILocation(line: 52, column: 14, scope: !860)
!902 = !{!"429"}
!903 = !DILocation(line: 52, column: 3, scope: !860)
!904 = !{!"430"}
!905 = !DILocation(line: 52, column: 12, scope: !860)
!906 = !{!"431"}
!907 = !DILocation(line: 53, column: 7, scope: !860)
!908 = !{!"432"}
!909 = !{!"433"}
!910 = !DILocation(line: 54, column: 11, scope: !860)
!911 = !{!"434"}
!912 = !{!"435"}
!913 = distinct !{!913, !842, !914, !128}
!914 = !DILocation(line: 55, column: 2, scope: !801)
!915 = !{!"436"}
!916 = !DILocation(line: 56, column: 1, scope: !801)
!917 = !{!"437"}
!918 = distinct !DISubprogram(name: "br_i15_from_monty", scope: !22, file: !22, line: 29, type: !919, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !2)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !156, !160, !157}
!921 = !DILocalVariable(name: "x", arg: 1, scope: !918, file: !22, line: 29, type: !156)
!922 = !DILocation(line: 0, scope: !918)
!923 = !{!"438"}
!924 = !DILocalVariable(name: "m", arg: 2, scope: !918, file: !22, line: 29, type: !160)
!925 = !{!"439"}
!926 = !DILocalVariable(name: "m0i", arg: 3, scope: !918, file: !22, line: 29, type: !157)
!927 = !{!"440"}
!928 = !DILocation(line: 33, column: 9, scope: !918)
!929 = !{!"441"}
!930 = !{!"442"}
!931 = !{!"443"}
!932 = !DILocation(line: 33, column: 14, scope: !918)
!933 = !{!"444"}
!934 = !DILocation(line: 33, column: 20, scope: !918)
!935 = !{!"445"}
!936 = !DILocation(line: 33, column: 8, scope: !918)
!937 = !{!"446"}
!938 = !DILocalVariable(name: "len", scope: !918, file: !22, line: 31, type: !29)
!939 = !{!"447"}
!940 = !DILocalVariable(name: "u", scope: !918, file: !22, line: 31, type: !29)
!941 = !{!"448"}
!942 = !DILocation(line: 34, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !918, file: !22, line: 34, column: 2)
!944 = !{!"449"}
!945 = !DILocation(line: 0, scope: !943)
!946 = !{!"450"}
!947 = !{!"451"}
!948 = !DILocation(line: 34, column: 16, scope: !949)
!949 = distinct !DILexicalBlock(scope: !943, file: !22, line: 34, column: 2)
!950 = !{!"452"}
!951 = !DILocation(line: 34, column: 2, scope: !943)
!952 = !{!"453"}
!953 = !DILocation(line: 37, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !22, line: 34, column: 29)
!955 = !{!"454"}
!956 = !{!"455"}
!957 = !{!"456"}
!958 = !{!"457"}
!959 = !{!"458"}
!960 = !DILocation(line: 37, column: 24, scope: !954)
!961 = !{!"459"}
!962 = !DILocalVariable(name: "f", scope: !954, file: !22, line: 35, type: !8)
!963 = !DILocation(line: 0, scope: !954)
!964 = !{!"460"}
!965 = !DILocalVariable(name: "cc", scope: !954, file: !22, line: 35, type: !8)
!966 = !{!"461"}
!967 = !DILocalVariable(name: "v", scope: !918, file: !22, line: 31, type: !29)
!968 = !{!"462"}
!969 = !DILocation(line: 39, column: 8, scope: !970)
!970 = distinct !DILexicalBlock(scope: !954, file: !22, line: 39, column: 3)
!971 = !{!"463"}
!972 = !DILocation(line: 0, scope: !970)
!973 = !{!"464"}
!974 = !{!"465"}
!975 = !{!"466"}
!976 = !{!"467"}
!977 = !DILocation(line: 39, column: 17, scope: !978)
!978 = distinct !DILexicalBlock(scope: !970, file: !22, line: 39, column: 3)
!979 = !{!"468"}
!980 = !DILocation(line: 39, column: 3, scope: !970)
!981 = !{!"469"}
!982 = !DILocation(line: 42, column: 22, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !22, line: 39, column: 30)
!984 = !{!"470"}
!985 = !DILocation(line: 42, column: 18, scope: !983)
!986 = !{!"471"}
!987 = !{!"472"}
!988 = !DILocation(line: 42, column: 8, scope: !983)
!989 = !{!"473"}
!990 = !DILocation(line: 42, column: 29, scope: !983)
!991 = !{!"474"}
!992 = !{!"475"}
!993 = !{!"476"}
!994 = !{!"477"}
!995 = !{!"478"}
!996 = !DILocation(line: 42, column: 27, scope: !983)
!997 = !{!"479"}
!998 = !DILocation(line: 42, column: 48, scope: !983)
!999 = !{!"480"}
!1000 = !DILocalVariable(name: "z", scope: !983, file: !22, line: 40, type: !8)
!1001 = !DILocation(line: 0, scope: !983)
!1002 = !{!"481"}
!1003 = !DILocation(line: 43, column: 11, scope: !983)
!1004 = !{!"482"}
!1005 = !{!"483"}
!1006 = !DILocation(line: 44, column: 10, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !983, file: !22, line: 44, column: 8)
!1008 = !{!"484"}
!1009 = !DILocation(line: 44, column: 8, scope: !983)
!1010 = !{!"485"}
!1011 = !DILocation(line: 45, column: 14, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !22, line: 44, column: 16)
!1013 = !{!"486"}
!1014 = !DILocation(line: 45, column: 12, scope: !1012)
!1015 = !{!"487"}
!1016 = !DILocation(line: 45, column: 5, scope: !1012)
!1017 = !{!"488"}
!1018 = !DILocation(line: 45, column: 10, scope: !1012)
!1019 = !{!"489"}
!1020 = !DILocation(line: 46, column: 4, scope: !1012)
!1021 = !{!"490"}
!1022 = !DILocation(line: 47, column: 3, scope: !983)
!1023 = !{!"491"}
!1024 = !DILocation(line: 39, column: 26, scope: !978)
!1025 = !{!"492"}
!1026 = !{!"493"}
!1027 = !DILocation(line: 39, column: 3, scope: !978)
!1028 = distinct !{!1028, !980, !1029, !128}
!1029 = !DILocation(line: 47, column: 3, scope: !970)
!1030 = !{!"494"}
!1031 = !DILocation(line: 48, column: 12, scope: !954)
!1032 = !{!"495"}
!1033 = !DILocation(line: 48, column: 3, scope: !954)
!1034 = !{!"496"}
!1035 = !DILocation(line: 48, column: 10, scope: !954)
!1036 = !{!"497"}
!1037 = !DILocation(line: 49, column: 2, scope: !954)
!1038 = !{!"498"}
!1039 = !DILocation(line: 34, column: 25, scope: !949)
!1040 = !{!"499"}
!1041 = !{!"500"}
!1042 = !DILocation(line: 34, column: 2, scope: !949)
!1043 = distinct !{!1043, !951, !1044, !128}
!1044 = !DILocation(line: 49, column: 2, scope: !943)
!1045 = !{!"501"}
!1046 = !DILocation(line: 58, column: 23, scope: !918)
!1047 = !{!"502"}
!1048 = !DILocation(line: 58, column: 19, scope: !918)
!1049 = !{!"503"}
!1050 = !DILocation(line: 58, column: 2, scope: !918)
!1051 = !{!"504"}
!1052 = !DILocation(line: 59, column: 1, scope: !918)
!1053 = !{!"505"}
!1054 = distinct !DISubprogram(name: "NOT", scope: !133, file: !133, line: 761, type: !357, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !2)
!1055 = !DILocalVariable(name: "ctl", arg: 1, scope: !1054, file: !133, line: 761, type: !8)
!1056 = !DILocation(line: 0, scope: !1054)
!1057 = !{!"506"}
!1058 = !DILocation(line: 763, column: 13, scope: !1054)
!1059 = !{!"507"}
!1060 = !DILocation(line: 763, column: 2, scope: !1054)
!1061 = !{!"508"}
!1062 = distinct !DISubprogram(name: "br_i15_modpow_opt", scope: !24, file: !24, line: 29, type: !1063, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!8, !156, !83, !29, !160, !157, !156, !29}
!1065 = !DILocalVariable(name: "x", arg: 1, scope: !1062, file: !24, line: 29, type: !156)
!1066 = !DILocation(line: 0, scope: !1062)
!1067 = !{!"509"}
!1068 = !DILocalVariable(name: "e", arg: 2, scope: !1062, file: !24, line: 30, type: !83)
!1069 = !{!"510"}
!1070 = !DILocalVariable(name: "elen", arg: 3, scope: !1062, file: !24, line: 30, type: !29)
!1071 = !{!"511"}
!1072 = !DILocalVariable(name: "m", arg: 4, scope: !1062, file: !24, line: 31, type: !160)
!1073 = !{!"512"}
!1074 = !DILocalVariable(name: "m0i", arg: 5, scope: !1062, file: !24, line: 31, type: !157)
!1075 = !{!"513"}
!1076 = !DILocalVariable(name: "tmp", arg: 6, scope: !1062, file: !24, line: 31, type: !156)
!1077 = !{!"514"}
!1078 = !DILocalVariable(name: "twlen", arg: 7, scope: !1062, file: !24, line: 31, type: !29)
!1079 = !{!"515"}
!1080 = !DILocation(line: 42, column: 11, scope: !1062)
!1081 = !{!"516"}
!1082 = !{!"517"}
!1083 = !{!"518"}
!1084 = !DILocation(line: 42, column: 16, scope: !1062)
!1085 = !{!"519"}
!1086 = !DILocation(line: 42, column: 22, scope: !1062)
!1087 = !{!"520"}
!1088 = !DILocation(line: 42, column: 10, scope: !1062)
!1089 = !{!"521"}
!1090 = !DILocalVariable(name: "mwlen", scope: !1062, file: !24, line: 33, type: !29)
!1091 = !{!"522"}
!1092 = !DILocation(line: 43, column: 15, scope: !1062)
!1093 = !{!"523"}
!1094 = !DILocalVariable(name: "mlen", scope: !1062, file: !24, line: 33, type: !29)
!1095 = !{!"524"}
!1096 = !DILocation(line: 44, column: 18, scope: !1062)
!1097 = !{!"525"}
!1098 = !DILocation(line: 44, column: 8, scope: !1062)
!1099 = !{!"526"}
!1100 = !{!"527"}
!1101 = !DILocalVariable(name: "t1", scope: !1062, file: !24, line: 34, type: !156)
!1102 = !{!"528"}
!1103 = !DILocation(line: 46, column: 11, scope: !1062)
!1104 = !{!"529"}
!1105 = !DILocalVariable(name: "t2", scope: !1062, file: !24, line: 34, type: !156)
!1106 = !{!"530"}
!1107 = !DILocation(line: 54, column: 21, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1062, file: !24, line: 54, column: 6)
!1109 = !{!"531"}
!1110 = !DILocation(line: 54, column: 12, scope: !1108)
!1111 = !{!"532"}
!1112 = !DILocation(line: 54, column: 6, scope: !1062)
!1113 = !{!"533"}
!1114 = !DILocation(line: 55, column: 3, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1108, file: !24, line: 54, column: 28)
!1116 = !{!"534"}
!1117 = !DILocalVariable(name: "win_len", scope: !1062, file: !24, line: 37, type: !491)
!1118 = !{!"535"}
!1119 = !DILocation(line: 57, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1062, file: !24, line: 57, column: 2)
!1121 = !{!"536"}
!1122 = !DILocation(line: 0, scope: !1120)
!1123 = !{!"537"}
!1124 = !{!"538"}
!1125 = !DILocation(line: 57, column: 28, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1120, file: !24, line: 57, column: 2)
!1127 = !{!"539"}
!1128 = !DILocation(line: 57, column: 2, scope: !1120)
!1129 = !{!"540"}
!1130 = !DILocation(line: 58, column: 21, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !24, line: 58, column: 7)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !24, line: 57, column: 45)
!1133 = !{!"541"}
!1134 = !DILocation(line: 58, column: 33, scope: !1131)
!1135 = !{!"542"}
!1136 = !DILocation(line: 58, column: 7, scope: !1131)
!1137 = !{!"543"}
!1138 = !DILocation(line: 58, column: 38, scope: !1131)
!1139 = !{!"544"}
!1140 = !DILocation(line: 58, column: 46, scope: !1131)
!1141 = !{!"545"}
!1142 = !DILocation(line: 58, column: 7, scope: !1132)
!1143 = !{!"546"}
!1144 = !DILocation(line: 59, column: 4, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1131, file: !24, line: 58, column: 56)
!1146 = !{!"547"}
!1147 = !DILocation(line: 61, column: 2, scope: !1132)
!1148 = !{!"548"}
!1149 = !DILocation(line: 57, column: 41, scope: !1126)
!1150 = !{!"549"}
!1151 = !{!"550"}
!1152 = !DILocation(line: 57, column: 2, scope: !1126)
!1153 = distinct !{!1153, !1128, !1154, !128}
!1154 = !DILocation(line: 61, column: 2, scope: !1120)
!1155 = !{!"551"}
!1156 = !DILocation(line: 66, column: 2, scope: !1062)
!1157 = !{!"552"}
!1158 = !DILocation(line: 73, column: 14, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1062, file: !24, line: 73, column: 6)
!1160 = !{!"553"}
!1161 = !DILocation(line: 73, column: 6, scope: !1062)
!1162 = !{!"554"}
!1163 = !DILocation(line: 74, column: 3, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !24, line: 73, column: 20)
!1165 = !{!"555"}
!1166 = !{!"556"}
!1167 = !{!"557"}
!1168 = !{!"1010"}
!1169 = !DILocation(line: 75, column: 2, scope: !1164)
!1170 = !{!"558"}
!1171 = !DILocation(line: 76, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1159, file: !24, line: 75, column: 9)
!1173 = !{!"559"}
!1174 = !DILocation(line: 76, column: 3, scope: !1172)
!1175 = !{!"560"}
!1176 = !{!"561"}
!1177 = !{!"562"}
!1178 = !DILocation(line: 77, column: 13, scope: !1172)
!1179 = !{!"563"}
!1180 = !DILocalVariable(name: "base", scope: !1062, file: !24, line: 34, type: !156)
!1181 = !{!"564"}
!1182 = !DILocalVariable(name: "u", scope: !1062, file: !24, line: 35, type: !29)
!1183 = !{!"565"}
!1184 = !DILocation(line: 78, column: 8, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1172, file: !24, line: 78, column: 3)
!1186 = !{!"566"}
!1187 = !DILocation(line: 0, scope: !1172)
!1188 = !{!"567"}
!1189 = !DILocation(line: 0, scope: !1185)
!1190 = !{!"568"}
!1191 = !{!"569"}
!1192 = !{!"570"}
!1193 = !DILocation(line: 78, column: 32, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1185, file: !24, line: 78, column: 3)
!1195 = !{!"571"}
!1196 = !DILocation(line: 78, column: 19, scope: !1194)
!1197 = !{!"572"}
!1198 = !DILocation(line: 78, column: 17, scope: !1194)
!1199 = !{!"573"}
!1200 = !DILocation(line: 78, column: 3, scope: !1185)
!1201 = !{!"574"}
!1202 = !DILocation(line: 79, column: 25, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1194, file: !24, line: 78, column: 51)
!1204 = !{!"575"}
!1205 = !DILocation(line: 79, column: 4, scope: !1203)
!1206 = !{!"576"}
!1207 = !DILocation(line: 80, column: 9, scope: !1203)
!1208 = !{!"577"}
!1209 = !{!"578"}
!1210 = !DILocation(line: 81, column: 3, scope: !1203)
!1211 = !{!"579"}
!1212 = !DILocation(line: 78, column: 47, scope: !1194)
!1213 = !{!"580"}
!1214 = !{!"581"}
!1215 = !DILocation(line: 78, column: 3, scope: !1194)
!1216 = distinct !{!1216, !1200, !1217, !128}
!1217 = !DILocation(line: 81, column: 3, scope: !1185)
!1218 = !{!"582"}
!1219 = !{!"583"}
!1220 = !DILocation(line: 89, column: 17, scope: !1062)
!1221 = !{!"584"}
!1222 = !{!"585"}
!1223 = !DILocation(line: 89, column: 2, scope: !1062)
!1224 = !{!"586"}
!1225 = !DILocation(line: 90, column: 5, scope: !1062)
!1226 = !{!"587"}
!1227 = !{!"588"}
!1228 = !{!"589"}
!1229 = !DILocation(line: 90, column: 10, scope: !1062)
!1230 = !{!"590"}
!1231 = !DILocation(line: 90, column: 16, scope: !1062)
!1232 = !{!"591"}
!1233 = !DILocation(line: 90, column: 2, scope: !1062)
!1234 = !{!"592"}
!1235 = !{!"593"}
!1236 = !DILocation(line: 90, column: 22, scope: !1062)
!1237 = !{!"594"}
!1238 = !DILocation(line: 91, column: 2, scope: !1062)
!1239 = !{!"595"}
!1240 = !DILocalVariable(name: "acc", scope: !1062, file: !24, line: 36, type: !8)
!1241 = !{!"596"}
!1242 = !DILocalVariable(name: "acc_len", scope: !1062, file: !24, line: 37, type: !491)
!1243 = !{!"597"}
!1244 = !DILocation(line: 99, column: 2, scope: !1062)
!1245 = !{!"598"}
!1246 = !{!"599"}
!1247 = !{!"600"}
!1248 = !{!"601"}
!1249 = !{!"602"}
!1250 = !{!"603"}
!1251 = !{!"604"}
!1252 = !{!"605"}
!1253 = !{!"606"}
!1254 = !DILocation(line: 99, column: 17, scope: !1062)
!1255 = !{!"607"}
!1256 = !DILocation(line: 99, column: 21, scope: !1062)
!1257 = !{!"608"}
!1258 = !DILocation(line: 99, column: 29, scope: !1062)
!1259 = !{!"609"}
!1260 = !{!"610"}
!1261 = !{!"611"}
!1262 = !{!"612"}
!1263 = !DILocalVariable(name: "k", scope: !1264, file: !24, line: 100, type: !491)
!1264 = distinct !DILexicalBlock(scope: !1062, file: !24, line: 99, column: 34)
!1265 = !DILocation(line: 0, scope: !1264)
!1266 = !{!"613"}
!1267 = !DILocation(line: 107, column: 15, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !24, line: 107, column: 7)
!1269 = !{!"614"}
!1270 = !DILocation(line: 107, column: 7, scope: !1264)
!1271 = !{!"615"}
!1272 = !DILocation(line: 108, column: 13, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !24, line: 108, column: 8)
!1274 = distinct !DILexicalBlock(scope: !1268, file: !24, line: 107, column: 26)
!1275 = !{!"616"}
!1276 = !DILocation(line: 108, column: 8, scope: !1274)
!1277 = !{!"617"}
!1278 = !DILocation(line: 109, column: 16, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !24, line: 108, column: 18)
!1280 = !{!"618"}
!1281 = !DILocation(line: 109, column: 27, scope: !1279)
!1282 = !{!"619"}
!1283 = !{!"620"}
!1284 = !DILocation(line: 109, column: 24, scope: !1279)
!1285 = !{!"621"}
!1286 = !{!"622"}
!1287 = !DILocation(line: 109, column: 22, scope: !1279)
!1288 = !{!"623"}
!1289 = !{!"624"}
!1290 = !DILocation(line: 110, column: 10, scope: !1279)
!1291 = !{!"625"}
!1292 = !{!"626"}
!1293 = !DILocation(line: 111, column: 13, scope: !1279)
!1294 = !{!"627"}
!1295 = !{!"628"}
!1296 = !DILocation(line: 112, column: 4, scope: !1279)
!1297 = !{!"629"}
!1298 = !{!"630"}
!1299 = !{!"631"}
!1300 = !{!"632"}
!1301 = !{!"633"}
!1302 = !{!"634"}
!1303 = !{!"635"}
!1304 = !{!"636"}
!1305 = !{!"637"}
!1306 = !{!"638"}
!1307 = !{!"639"}
!1308 = !{!"640"}
!1309 = !{!"641"}
!1310 = !DILocation(line: 115, column: 3, scope: !1274)
!1311 = !{!"642"}
!1312 = !{!"643"}
!1313 = !{!"644"}
!1314 = !{!"645"}
!1315 = !{!"646"}
!1316 = !DILocation(line: 106, column: 5, scope: !1264)
!1317 = !{!"647"}
!1318 = !{!"648"}
!1319 = !{!"649"}
!1320 = !{!"650"}
!1321 = !{!"651"}
!1322 = !{!"652"}
!1323 = !DILocation(line: 116, column: 27, scope: !1264)
!1324 = !{!"653"}
!1325 = !DILocation(line: 116, column: 15, scope: !1264)
!1326 = !{!"654"}
!1327 = !DILocation(line: 116, column: 49, scope: !1264)
!1328 = !{!"655"}
!1329 = !DILocation(line: 116, column: 55, scope: !1264)
!1330 = !{!"656"}
!1331 = !DILocation(line: 116, column: 33, scope: !1264)
!1332 = !{!"657"}
!1333 = !DILocalVariable(name: "bits", scope: !1264, file: !24, line: 101, type: !8)
!1334 = !{!"658"}
!1335 = !DILocation(line: 117, column: 11, scope: !1264)
!1336 = !{!"659"}
!1337 = !{!"660"}
!1338 = !DILocalVariable(name: "i", scope: !1264, file: !24, line: 100, type: !491)
!1339 = !{!"661"}
!1340 = !DILocation(line: 122, column: 8, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1264, file: !24, line: 122, column: 3)
!1342 = !{!"662"}
!1343 = !DILocation(line: 0, scope: !1341)
!1344 = !{!"663"}
!1345 = !{!"664"}
!1346 = !DILocation(line: 122, column: 17, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !24, line: 122, column: 3)
!1348 = !{!"665"}
!1349 = !DILocation(line: 122, column: 3, scope: !1341)
!1350 = !{!"666"}
!1351 = !DILocation(line: 123, column: 4, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !24, line: 122, column: 28)
!1353 = !{!"667"}
!1354 = !DILocation(line: 124, column: 4, scope: !1352)
!1355 = !{!"668"}
!1356 = !{!"669"}
!1357 = !{!"670"}
!1358 = !DILocation(line: 125, column: 3, scope: !1352)
!1359 = !{!"671"}
!1360 = !DILocation(line: 122, column: 24, scope: !1347)
!1361 = !{!"672"}
!1362 = !{!"673"}
!1363 = !DILocation(line: 122, column: 3, scope: !1347)
!1364 = distinct !{!1364, !1349, !1365, !128}
!1365 = !DILocation(line: 125, column: 3, scope: !1341)
!1366 = !{!"674"}
!1367 = !DILocation(line: 133, column: 15, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1264, file: !24, line: 133, column: 7)
!1369 = !{!"675"}
!1370 = !DILocation(line: 133, column: 7, scope: !1264)
!1371 = !{!"676"}
!1372 = !DILocation(line: 134, column: 20, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !24, line: 133, column: 20)
!1374 = !{!"677"}
!1375 = !{!"678"}
!1376 = !DILocation(line: 134, column: 4, scope: !1373)
!1377 = !{!"679"}
!1378 = !DILocation(line: 135, column: 14, scope: !1373)
!1379 = !{!"680"}
!1380 = !{!"681"}
!1381 = !{!"682"}
!1382 = !DILocation(line: 136, column: 9, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1373, file: !24, line: 136, column: 4)
!1384 = !{!"683"}
!1385 = !DILocation(line: 0, scope: !1373)
!1386 = !{!"684"}
!1387 = !DILocation(line: 0, scope: !1383)
!1388 = !{!"685"}
!1389 = !{!"686"}
!1390 = !{!"687"}
!1391 = !DILocation(line: 136, column: 33, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1383, file: !24, line: 136, column: 4)
!1393 = !{!"688"}
!1394 = !DILocation(line: 136, column: 20, scope: !1392)
!1395 = !{!"689"}
!1396 = !DILocation(line: 136, column: 18, scope: !1392)
!1397 = !{!"690"}
!1398 = !DILocation(line: 136, column: 4, scope: !1383)
!1399 = !{!"691"}
!1400 = !DILocation(line: 139, column: 16, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1392, file: !24, line: 136, column: 46)
!1402 = !{!"692"}
!1403 = !DILocation(line: 139, column: 13, scope: !1401)
!1404 = !{!"693"}
!1405 = !DILocation(line: 139, column: 12, scope: !1401)
!1406 = !{!"694"}
!1407 = !DILocalVariable(name: "mask", scope: !1401, file: !24, line: 137, type: !8)
!1408 = !DILocation(line: 0, scope: !1401)
!1409 = !{!"695"}
!1410 = !DILocalVariable(name: "v", scope: !1062, file: !24, line: 35, type: !29)
!1411 = !{!"696"}
!1412 = !DILocation(line: 140, column: 10, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1401, file: !24, line: 140, column: 5)
!1414 = !{!"697"}
!1415 = !DILocation(line: 0, scope: !1413)
!1416 = !{!"698"}
!1417 = !{!"699"}
!1418 = !DILocation(line: 140, column: 19, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1413, file: !24, line: 140, column: 5)
!1420 = !{!"700"}
!1421 = !DILocation(line: 140, column: 5, scope: !1413)
!1422 = !{!"701"}
!1423 = !DILocation(line: 141, column: 22, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !24, line: 140, column: 34)
!1425 = !{!"702"}
!1426 = !{!"703"}
!1427 = !{!"704"}
!1428 = !DILocation(line: 141, column: 20, scope: !1424)
!1429 = !{!"705"}
!1430 = !DILocation(line: 141, column: 6, scope: !1424)
!1431 = !{!"706"}
!1432 = !DILocation(line: 141, column: 12, scope: !1424)
!1433 = !{!"707"}
!1434 = !{!"708"}
!1435 = !{!"709"}
!1436 = !{!"710"}
!1437 = !{!"711"}
!1438 = !DILocation(line: 142, column: 5, scope: !1424)
!1439 = !{!"712"}
!1440 = !DILocation(line: 140, column: 30, scope: !1419)
!1441 = !{!"713"}
!1442 = !{!"714"}
!1443 = !DILocation(line: 140, column: 5, scope: !1419)
!1444 = distinct !{!1444, !1421, !1445, !128}
!1445 = !DILocation(line: 142, column: 5, scope: !1413)
!1446 = !{!"715"}
!1447 = !DILocation(line: 143, column: 10, scope: !1401)
!1448 = !{!"716"}
!1449 = !{!"717"}
!1450 = !DILocation(line: 144, column: 4, scope: !1401)
!1451 = !{!"718"}
!1452 = !DILocation(line: 136, column: 42, scope: !1392)
!1453 = !{!"719"}
!1454 = !{!"720"}
!1455 = !DILocation(line: 136, column: 4, scope: !1392)
!1456 = distinct !{!1456, !1398, !1457, !128}
!1457 = !DILocation(line: 144, column: 4, scope: !1383)
!1458 = !{!"721"}
!1459 = !DILocation(line: 145, column: 3, scope: !1373)
!1460 = !{!"722"}
!1461 = !DILocation(line: 151, column: 3, scope: !1264)
!1462 = !{!"723"}
!1463 = !DILocation(line: 152, column: 9, scope: !1264)
!1464 = !{!"724"}
!1465 = !DILocation(line: 152, column: 23, scope: !1264)
!1466 = !{!"725"}
!1467 = !DILocation(line: 152, column: 26, scope: !1264)
!1468 = !{!"726"}
!1469 = !DILocation(line: 152, column: 3, scope: !1264)
!1470 = !{!"727"}
!1471 = distinct !{!1471, !1244, !1472, !128}
!1472 = !DILocation(line: 153, column: 2, scope: !1062)
!1473 = !{!"728"}
!1474 = !DILocation(line: 158, column: 2, scope: !1062)
!1475 = !{!"729"}
!1476 = !DILocation(line: 159, column: 2, scope: !1062)
!1477 = !{!"730"}
!1478 = !{!"731"}
!1479 = !DILocation(line: 160, column: 1, scope: !1062)
!1480 = !{!"732"}
!1481 = distinct !DISubprogram(name: "br_i15_zero", scope: !133, file: !133, line: 1537, type: !773, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1482 = !DILocalVariable(name: "x", arg: 1, scope: !1481, file: !133, line: 1537, type: !156)
!1483 = !DILocation(line: 0, scope: !1481)
!1484 = !{!"733"}
!1485 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1481, file: !133, line: 1537, type: !157)
!1486 = !{!"734"}
!1487 = !DILocation(line: 1539, column: 5, scope: !1481)
!1488 = !{!"735"}
!1489 = !{!"736"}
!1490 = !DILocation(line: 1539, column: 8, scope: !1481)
!1491 = !{!"737"}
!1492 = !DILocation(line: 1540, column: 2, scope: !1481)
!1493 = !{!"738"}
!1494 = !DILocation(line: 1540, column: 17, scope: !1481)
!1495 = !{!"739"}
!1496 = !DILocation(line: 1540, column: 25, scope: !1481)
!1497 = !{!"740"}
!1498 = !DILocation(line: 1540, column: 31, scope: !1481)
!1499 = !{!"741"}
!1500 = !DILocation(line: 1540, column: 15, scope: !1481)
!1501 = !{!"742"}
!1502 = !DILocation(line: 1540, column: 37, scope: !1481)
!1503 = !{!"743"}
!1504 = !{!"744"}
!1505 = !DILocation(line: 1541, column: 1, scope: !1481)
!1506 = !{!"745"}
!1507 = distinct !DISubprogram(name: "EQ", scope: !133, file: !133, line: 779, type: !317, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1508 = !DILocalVariable(name: "x", arg: 1, scope: !1507, file: !133, line: 779, type: !8)
!1509 = !DILocation(line: 0, scope: !1507)
!1510 = !{!"746"}
!1511 = !DILocalVariable(name: "y", arg: 2, scope: !1507, file: !133, line: 779, type: !8)
!1512 = !{!"747"}
!1513 = !DILocation(line: 783, column: 8, scope: !1507)
!1514 = !{!"748"}
!1515 = !DILocalVariable(name: "q", scope: !1507, file: !133, line: 781, type: !8)
!1516 = !{!"749"}
!1517 = !DILocation(line: 784, column: 18, scope: !1507)
!1518 = !{!"750"}
!1519 = !DILocation(line: 784, column: 16, scope: !1507)
!1520 = !{!"751"}
!1521 = !DILocation(line: 784, column: 22, scope: !1507)
!1522 = !{!"752"}
!1523 = !DILocation(line: 784, column: 9, scope: !1507)
!1524 = !{!"753"}
!1525 = !DILocation(line: 784, column: 2, scope: !1507)
!1526 = !{!"754"}
!1527 = distinct !DISubprogram(name: "NEQ", scope: !133, file: !133, line: 791, type: !317, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1528 = !DILocalVariable(name: "x", arg: 1, scope: !1527, file: !133, line: 791, type: !8)
!1529 = !DILocation(line: 0, scope: !1527)
!1530 = !{!"755"}
!1531 = !DILocalVariable(name: "y", arg: 2, scope: !1527, file: !133, line: 791, type: !8)
!1532 = !{!"756"}
!1533 = !DILocation(line: 795, column: 8, scope: !1527)
!1534 = !{!"757"}
!1535 = !DILocalVariable(name: "q", scope: !1527, file: !133, line: 793, type: !8)
!1536 = !{!"758"}
!1537 = !DILocation(line: 796, column: 14, scope: !1527)
!1538 = !{!"759"}
!1539 = !DILocation(line: 796, column: 12, scope: !1527)
!1540 = !{!"760"}
!1541 = !DILocation(line: 796, column: 18, scope: !1527)
!1542 = !{!"761"}
!1543 = !DILocation(line: 796, column: 2, scope: !1527)
!1544 = !{!"762"}
!1545 = distinct !DISubprogram(name: "NOT", scope: !133, file: !133, line: 761, type: !357, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1546 = !DILocalVariable(name: "ctl", arg: 1, scope: !1545, file: !133, line: 761, type: !8)
!1547 = !DILocation(line: 0, scope: !1545)
!1548 = !{!"763"}
!1549 = !DILocation(line: 763, column: 13, scope: !1545)
!1550 = !{!"764"}
!1551 = !DILocation(line: 763, column: 2, scope: !1545)
!1552 = !{!"765"}
!1553 = distinct !DISubprogram(name: "br_i15_montymul", scope: !27, file: !27, line: 29, type: !1554, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !2)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !156, !160, !160, !160, !157}
!1556 = !DILocalVariable(name: "d", arg: 1, scope: !1553, file: !27, line: 29, type: !156)
!1557 = !DILocation(line: 0, scope: !1553)
!1558 = !{!"766"}
!1559 = !DILocalVariable(name: "x", arg: 2, scope: !1553, file: !27, line: 29, type: !160)
!1560 = !{!"767"}
!1561 = !DILocalVariable(name: "y", arg: 3, scope: !1553, file: !27, line: 29, type: !160)
!1562 = !{!"768"}
!1563 = !DILocalVariable(name: "m", arg: 4, scope: !1553, file: !27, line: 30, type: !160)
!1564 = !{!"769"}
!1565 = !DILocalVariable(name: "m0i", arg: 5, scope: !1553, file: !27, line: 30, type: !157)
!1566 = !{!"770"}
!1567 = !DILocation(line: 35, column: 9, scope: !1553)
!1568 = !{!"771"}
!1569 = !{!"772"}
!1570 = !{!"773"}
!1571 = !DILocation(line: 35, column: 14, scope: !1553)
!1572 = !{!"774"}
!1573 = !DILocation(line: 35, column: 20, scope: !1553)
!1574 = !{!"775"}
!1575 = !DILocation(line: 35, column: 8, scope: !1553)
!1576 = !{!"776"}
!1577 = !DILocalVariable(name: "len", scope: !1553, file: !27, line: 32, type: !29)
!1578 = !{!"777"}
!1579 = !DILocation(line: 36, column: 13, scope: !1553)
!1580 = !{!"778"}
!1581 = !DILocalVariable(name: "len4", scope: !1553, file: !27, line: 32, type: !29)
!1582 = !{!"779"}
!1583 = !DILocation(line: 37, column: 17, scope: !1553)
!1584 = !{!"780"}
!1585 = !{!"781"}
!1586 = !DILocation(line: 37, column: 2, scope: !1553)
!1587 = !{!"782"}
!1588 = !DILocalVariable(name: "dh", scope: !1553, file: !27, line: 33, type: !8)
!1589 = !{!"783"}
!1590 = !DILocalVariable(name: "u", scope: !1553, file: !27, line: 32, type: !29)
!1591 = !{!"784"}
!1592 = !DILocation(line: 39, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1553, file: !27, line: 39, column: 2)
!1594 = !{!"785"}
!1595 = !DILocation(line: 0, scope: !1593)
!1596 = !{!"786"}
!1597 = !{!"787"}
!1598 = !{!"788"}
!1599 = !{!"789"}
!1600 = !DILocation(line: 39, column: 16, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1593, file: !27, line: 39, column: 2)
!1602 = !{!"790"}
!1603 = !DILocation(line: 39, column: 2, scope: !1593)
!1604 = !{!"791"}
!1605 = !DILocation(line: 42, column: 12, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !27, line: 39, column: 29)
!1607 = !{!"792"}
!1608 = !DILocation(line: 42, column: 8, scope: !1606)
!1609 = !{!"793"}
!1610 = !{!"794"}
!1611 = !{!"795"}
!1612 = !DILocalVariable(name: "xu", scope: !1606, file: !27, line: 40, type: !8)
!1613 = !DILocation(line: 0, scope: !1606)
!1614 = !{!"796"}
!1615 = !DILocation(line: 43, column: 7, scope: !1606)
!1616 = !{!"797"}
!1617 = !{!"798"}
!1618 = !{!"799"}
!1619 = !{!"800"}
!1620 = !{!"801"}
!1621 = !{!"802"}
!1622 = !{!"803"}
!1623 = !{!"804"}
!1624 = !{!"805"}
!1625 = !{!"806"}
!1626 = !{!"807"}
!1627 = !{!"808"}
!1628 = !{!"809"}
!1629 = !{!"810"}
!1630 = !{!"811"}
!1631 = !DILocation(line: 44, column: 4, scope: !1606)
!1632 = !{!"812"}
!1633 = !DILocalVariable(name: "f", scope: !1606, file: !27, line: 40, type: !8)
!1634 = !{!"813"}
!1635 = !DILocalVariable(name: "r", scope: !1606, file: !27, line: 40, type: !8)
!1636 = !{!"814"}
!1637 = !DILocalVariable(name: "v", scope: !1553, file: !27, line: 32, type: !29)
!1638 = !{!"815"}
!1639 = !DILocation(line: 139, column: 8, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1606, file: !27, line: 139, column: 3)
!1641 = !{!"816"}
!1642 = !DILocation(line: 0, scope: !1640)
!1643 = !{!"817"}
!1644 = !{!"818"}
!1645 = !{!"819"}
!1646 = !{!"820"}
!1647 = !DILocation(line: 139, column: 17, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1640, file: !27, line: 139, column: 3)
!1649 = !{!"821"}
!1650 = !DILocation(line: 139, column: 3, scope: !1640)
!1651 = !{!"822"}
!1652 = !DILocation(line: 142, column: 12, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !27, line: 139, column: 33)
!1654 = !{!"823"}
!1655 = !DILocation(line: 142, column: 8, scope: !1653)
!1656 = !{!"824"}
!1657 = !{!"825"}
!1658 = !{!"826"}
!1659 = !DILocation(line: 142, column: 19, scope: !1653)
!1660 = !{!"827"}
!1661 = !{!"828"}
!1662 = !{!"829"}
!1663 = !{!"830"}
!1664 = !{!"831"}
!1665 = !DILocation(line: 142, column: 17, scope: !1653)
!1666 = !{!"832"}
!1667 = !DILocation(line: 143, column: 7, scope: !1653)
!1668 = !{!"833"}
!1669 = !{!"834"}
!1670 = !{!"835"}
!1671 = !{!"836"}
!1672 = !{!"837"}
!1673 = !DILocation(line: 143, column: 5, scope: !1653)
!1674 = !{!"838"}
!1675 = !DILocation(line: 143, column: 26, scope: !1653)
!1676 = !{!"839"}
!1677 = !DILocalVariable(name: "z", scope: !1653, file: !27, line: 140, type: !8)
!1678 = !DILocation(line: 0, scope: !1653)
!1679 = !{!"840"}
!1680 = !DILocation(line: 144, column: 10, scope: !1653)
!1681 = !{!"841"}
!1682 = !{!"842"}
!1683 = !DILocation(line: 145, column: 17, scope: !1653)
!1684 = !{!"843"}
!1685 = !DILocation(line: 145, column: 15, scope: !1653)
!1686 = !{!"844"}
!1687 = !DILocation(line: 145, column: 8, scope: !1653)
!1688 = !{!"845"}
!1689 = !DILocation(line: 145, column: 4, scope: !1653)
!1690 = !{!"846"}
!1691 = !DILocation(line: 145, column: 13, scope: !1653)
!1692 = !{!"847"}
!1693 = !DILocation(line: 146, column: 12, scope: !1653)
!1694 = !{!"848"}
!1695 = !DILocation(line: 146, column: 8, scope: !1653)
!1696 = !{!"849"}
!1697 = !{!"850"}
!1698 = !{!"851"}
!1699 = !DILocation(line: 146, column: 19, scope: !1653)
!1700 = !{!"852"}
!1701 = !{!"853"}
!1702 = !{!"854"}
!1703 = !{!"855"}
!1704 = !{!"856"}
!1705 = !DILocation(line: 146, column: 17, scope: !1653)
!1706 = !{!"857"}
!1707 = !DILocation(line: 147, column: 7, scope: !1653)
!1708 = !{!"858"}
!1709 = !{!"859"}
!1710 = !{!"860"}
!1711 = !{!"861"}
!1712 = !{!"862"}
!1713 = !DILocation(line: 147, column: 5, scope: !1653)
!1714 = !{!"863"}
!1715 = !DILocation(line: 147, column: 26, scope: !1653)
!1716 = !{!"864"}
!1717 = !{!"865"}
!1718 = !DILocation(line: 148, column: 10, scope: !1653)
!1719 = !{!"866"}
!1720 = !{!"867"}
!1721 = !DILocation(line: 149, column: 17, scope: !1653)
!1722 = !{!"868"}
!1723 = !DILocation(line: 149, column: 15, scope: !1653)
!1724 = !{!"869"}
!1725 = !DILocation(line: 149, column: 8, scope: !1653)
!1726 = !{!"870"}
!1727 = !DILocation(line: 149, column: 4, scope: !1653)
!1728 = !{!"871"}
!1729 = !DILocation(line: 149, column: 13, scope: !1653)
!1730 = !{!"872"}
!1731 = !DILocation(line: 150, column: 12, scope: !1653)
!1732 = !{!"873"}
!1733 = !DILocation(line: 150, column: 8, scope: !1653)
!1734 = !{!"874"}
!1735 = !{!"875"}
!1736 = !{!"876"}
!1737 = !DILocation(line: 150, column: 19, scope: !1653)
!1738 = !{!"877"}
!1739 = !{!"878"}
!1740 = !{!"879"}
!1741 = !{!"880"}
!1742 = !{!"881"}
!1743 = !DILocation(line: 150, column: 17, scope: !1653)
!1744 = !{!"882"}
!1745 = !DILocation(line: 151, column: 7, scope: !1653)
!1746 = !{!"883"}
!1747 = !{!"884"}
!1748 = !{!"885"}
!1749 = !{!"886"}
!1750 = !{!"887"}
!1751 = !DILocation(line: 151, column: 5, scope: !1653)
!1752 = !{!"888"}
!1753 = !DILocation(line: 151, column: 26, scope: !1653)
!1754 = !{!"889"}
!1755 = !{!"890"}
!1756 = !DILocation(line: 152, column: 10, scope: !1653)
!1757 = !{!"891"}
!1758 = !{!"892"}
!1759 = !DILocation(line: 153, column: 17, scope: !1653)
!1760 = !{!"893"}
!1761 = !DILocation(line: 153, column: 15, scope: !1653)
!1762 = !{!"894"}
!1763 = !DILocation(line: 153, column: 8, scope: !1653)
!1764 = !{!"895"}
!1765 = !DILocation(line: 153, column: 4, scope: !1653)
!1766 = !{!"896"}
!1767 = !DILocation(line: 153, column: 13, scope: !1653)
!1768 = !{!"897"}
!1769 = !DILocation(line: 154, column: 12, scope: !1653)
!1770 = !{!"898"}
!1771 = !DILocation(line: 154, column: 8, scope: !1653)
!1772 = !{!"899"}
!1773 = !{!"900"}
!1774 = !{!"901"}
!1775 = !DILocation(line: 154, column: 19, scope: !1653)
!1776 = !{!"902"}
!1777 = !{!"903"}
!1778 = !{!"904"}
!1779 = !{!"905"}
!1780 = !{!"906"}
!1781 = !DILocation(line: 154, column: 17, scope: !1653)
!1782 = !{!"907"}
!1783 = !DILocation(line: 155, column: 7, scope: !1653)
!1784 = !{!"908"}
!1785 = !{!"909"}
!1786 = !{!"910"}
!1787 = !{!"911"}
!1788 = !{!"912"}
!1789 = !DILocation(line: 155, column: 5, scope: !1653)
!1790 = !{!"913"}
!1791 = !DILocation(line: 155, column: 26, scope: !1653)
!1792 = !{!"914"}
!1793 = !{!"915"}
!1794 = !DILocation(line: 156, column: 10, scope: !1653)
!1795 = !{!"916"}
!1796 = !{!"917"}
!1797 = !DILocation(line: 157, column: 17, scope: !1653)
!1798 = !{!"918"}
!1799 = !DILocation(line: 157, column: 15, scope: !1653)
!1800 = !{!"919"}
!1801 = !DILocation(line: 157, column: 8, scope: !1653)
!1802 = !{!"920"}
!1803 = !DILocation(line: 157, column: 4, scope: !1653)
!1804 = !{!"921"}
!1805 = !DILocation(line: 157, column: 13, scope: !1653)
!1806 = !{!"922"}
!1807 = !DILocation(line: 158, column: 3, scope: !1653)
!1808 = !{!"923"}
!1809 = !DILocation(line: 139, column: 27, scope: !1648)
!1810 = !{!"924"}
!1811 = !{!"925"}
!1812 = !DILocation(line: 139, column: 3, scope: !1648)
!1813 = distinct !{!1813, !1650, !1814, !128}
!1814 = !DILocation(line: 158, column: 3, scope: !1640)
!1815 = !{!"926"}
!1816 = !DILocation(line: 160, column: 3, scope: !1606)
!1817 = !{!"927"}
!1818 = !{!"928"}
!1819 = !{!"929"}
!1820 = !{!"930"}
!1821 = !{!"931"}
!1822 = !DILocation(line: 160, column: 12, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !27, line: 160, column: 3)
!1824 = distinct !DILexicalBlock(scope: !1606, file: !27, line: 160, column: 3)
!1825 = !{!"932"}
!1826 = !DILocation(line: 160, column: 3, scope: !1824)
!1827 = !{!"933"}
!1828 = !DILocation(line: 163, column: 12, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1823, file: !27, line: 160, column: 25)
!1830 = !{!"934"}
!1831 = !DILocation(line: 163, column: 8, scope: !1829)
!1832 = !{!"935"}
!1833 = !{!"936"}
!1834 = !{!"937"}
!1835 = !DILocation(line: 163, column: 19, scope: !1829)
!1836 = !{!"938"}
!1837 = !{!"939"}
!1838 = !{!"940"}
!1839 = !{!"941"}
!1840 = !{!"942"}
!1841 = !DILocation(line: 163, column: 17, scope: !1829)
!1842 = !{!"943"}
!1843 = !DILocation(line: 164, column: 7, scope: !1829)
!1844 = !{!"944"}
!1845 = !{!"945"}
!1846 = !{!"946"}
!1847 = !{!"947"}
!1848 = !{!"948"}
!1849 = !DILocation(line: 164, column: 5, scope: !1829)
!1850 = !{!"949"}
!1851 = !DILocation(line: 164, column: 26, scope: !1829)
!1852 = !{!"950"}
!1853 = !DILocalVariable(name: "z", scope: !1829, file: !27, line: 161, type: !8)
!1854 = !DILocation(line: 0, scope: !1829)
!1855 = !{!"951"}
!1856 = !DILocation(line: 165, column: 10, scope: !1829)
!1857 = !{!"952"}
!1858 = !{!"953"}
!1859 = !DILocation(line: 166, column: 17, scope: !1829)
!1860 = !{!"954"}
!1861 = !DILocation(line: 166, column: 15, scope: !1829)
!1862 = !{!"955"}
!1863 = !DILocation(line: 166, column: 8, scope: !1829)
!1864 = !{!"956"}
!1865 = !DILocation(line: 166, column: 4, scope: !1829)
!1866 = !{!"957"}
!1867 = !DILocation(line: 166, column: 13, scope: !1829)
!1868 = !{!"958"}
!1869 = !DILocation(line: 167, column: 3, scope: !1829)
!1870 = !{!"959"}
!1871 = !DILocation(line: 160, column: 21, scope: !1823)
!1872 = !{!"960"}
!1873 = !{!"961"}
!1874 = !DILocation(line: 160, column: 3, scope: !1823)
!1875 = distinct !{!1875, !1826, !1876, !128}
!1876 = !DILocation(line: 167, column: 3, scope: !1824)
!1877 = !{!"962"}
!1878 = !DILocation(line: 169, column: 11, scope: !1606)
!1879 = !{!"963"}
!1880 = !DILocalVariable(name: "zh", scope: !1606, file: !27, line: 40, type: !8)
!1881 = !{!"964"}
!1882 = !DILocation(line: 170, column: 15, scope: !1606)
!1883 = !{!"965"}
!1884 = !DILocation(line: 170, column: 12, scope: !1606)
!1885 = !{!"966"}
!1886 = !DILocation(line: 170, column: 3, scope: !1606)
!1887 = !{!"967"}
!1888 = !DILocation(line: 170, column: 10, scope: !1606)
!1889 = !{!"968"}
!1890 = !DILocation(line: 171, column: 11, scope: !1606)
!1891 = !{!"969"}
!1892 = !{!"970"}
!1893 = !DILocation(line: 172, column: 2, scope: !1606)
!1894 = !{!"971"}
!1895 = !DILocation(line: 39, column: 25, scope: !1601)
!1896 = !{!"972"}
!1897 = !{!"973"}
!1898 = !DILocation(line: 39, column: 2, scope: !1601)
!1899 = distinct !{!1899, !1603, !1900, !128}
!1900 = !DILocation(line: 172, column: 2, scope: !1593)
!1901 = !{!"974"}
!1902 = !DILocation(line: 177, column: 9, scope: !1553)
!1903 = !{!"975"}
!1904 = !{!"976"}
!1905 = !DILocation(line: 177, column: 2, scope: !1553)
!1906 = !{!"977"}
!1907 = !DILocation(line: 177, column: 7, scope: !1553)
!1908 = !{!"978"}
!1909 = !DILocation(line: 183, column: 19, scope: !1553)
!1910 = !{!"979"}
!1911 = !DILocation(line: 183, column: 36, scope: !1553)
!1912 = !{!"980"}
!1913 = !DILocation(line: 183, column: 32, scope: !1553)
!1914 = !{!"981"}
!1915 = !DILocation(line: 183, column: 30, scope: !1553)
!1916 = !{!"982"}
!1917 = !DILocation(line: 183, column: 2, scope: !1553)
!1918 = !{!"983"}
!1919 = !DILocation(line: 184, column: 1, scope: !1553)
!1920 = !{!"984"}
!1921 = distinct !DISubprogram(name: "br_i15_zero", scope: !133, file: !133, line: 1537, type: !773, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !2)
!1922 = !DILocalVariable(name: "x", arg: 1, scope: !1921, file: !133, line: 1537, type: !156)
!1923 = !DILocation(line: 0, scope: !1921)
!1924 = !{!"985"}
!1925 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1921, file: !133, line: 1537, type: !157)
!1926 = !{!"986"}
!1927 = !DILocation(line: 1539, column: 5, scope: !1921)
!1928 = !{!"987"}
!1929 = !{!"988"}
!1930 = !DILocation(line: 1539, column: 8, scope: !1921)
!1931 = !{!"989"}
!1932 = !DILocation(line: 1540, column: 2, scope: !1921)
!1933 = !{!"990"}
!1934 = !DILocation(line: 1540, column: 17, scope: !1921)
!1935 = !{!"991"}
!1936 = !DILocation(line: 1540, column: 25, scope: !1921)
!1937 = !{!"992"}
!1938 = !DILocation(line: 1540, column: 31, scope: !1921)
!1939 = !{!"993"}
!1940 = !DILocation(line: 1540, column: 15, scope: !1921)
!1941 = !{!"994"}
!1942 = !DILocation(line: 1540, column: 37, scope: !1921)
!1943 = !{!"995"}
!1944 = !{!"996"}
!1945 = !DILocation(line: 1541, column: 1, scope: !1921)
!1946 = !{!"997"}
!1947 = distinct !DISubprogram(name: "NEQ", scope: !133, file: !133, line: 791, type: !317, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !2)
!1948 = !DILocalVariable(name: "x", arg: 1, scope: !1947, file: !133, line: 791, type: !8)
!1949 = !DILocation(line: 0, scope: !1947)
!1950 = !{!"998"}
!1951 = !DILocalVariable(name: "y", arg: 2, scope: !1947, file: !133, line: 791, type: !8)
!1952 = !{!"999"}
!1953 = !DILocation(line: 795, column: 8, scope: !1947)
!1954 = !DILocalVariable(name: "q", scope: !1947, file: !133, line: 793, type: !8)
!1955 = !{!"1001"}
!1956 = !DILocation(line: 796, column: 14, scope: !1947)
!1957 = !{!"1002"}
!1958 = !DILocation(line: 796, column: 12, scope: !1947)
!1959 = !{!"1003"}
!1960 = !DILocation(line: 796, column: 18, scope: !1947)
!1961 = !{!"1004"}
!1962 = !DILocation(line: 796, column: 2, scope: !1947)
!1963 = !{!"1005"}
!1964 = distinct !DISubprogram(name: "NOT", scope: !133, file: !133, line: 761, type: !357, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !2)
!1965 = !DILocalVariable(name: "ctl", arg: 1, scope: !1964, file: !133, line: 761, type: !8)
!1966 = !DILocation(line: 0, scope: !1964)
!1967 = !{!"1006"}
!1968 = !DILocation(line: 763, column: 13, scope: !1964)
!1969 = !{!"1007"}
!1970 = !DILocation(line: 763, column: 2, scope: !1964)
!1971 = !{!"1008"}
!1972 = distinct !DISubprogram(name: "br_i15_mulacc", scope: !33, file: !33, line: 29, type: !1973, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !2)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !156, !160, !160}
!1975 = !DILocalVariable(name: "d", arg: 1, scope: !1972, file: !33, line: 29, type: !156)
!1976 = !DILocation(line: 0, scope: !1972)
!1977 = !{!"1009"}
!1978 = !DILocalVariable(name: "a", arg: 2, scope: !1972, file: !33, line: 29, type: !160)
!1979 = !DILocalVariable(name: "b", arg: 3, scope: !1972, file: !33, line: 29, type: !160)
!1980 = !{!"1011"}
!1981 = !DILocation(line: 35, column: 10, scope: !1972)
!1982 = !{!"1012"}
!1983 = !{!"1013"}
!1984 = !{!"1014"}
!1985 = !DILocation(line: 35, column: 15, scope: !1972)
!1986 = !{!"1015"}
!1987 = !DILocation(line: 35, column: 21, scope: !1972)
!1988 = !{!"1016"}
!1989 = !DILocation(line: 35, column: 9, scope: !1972)
!1990 = !{!"1017"}
!1991 = !DILocalVariable(name: "alen", scope: !1972, file: !33, line: 31, type: !29)
!1992 = !{!"1018"}
!1993 = !DILocation(line: 36, column: 10, scope: !1972)
!1994 = !{!"1019"}
!1995 = !{!"1020"}
!1996 = !{!"1021"}
!1997 = !DILocation(line: 36, column: 15, scope: !1972)
!1998 = !{!"1022"}
!1999 = !DILocation(line: 36, column: 21, scope: !1972)
!2000 = !{!"1023"}
!2001 = !DILocation(line: 36, column: 9, scope: !1972)
!2002 = !{!"1024"}
!2003 = !DILocalVariable(name: "blen", scope: !1972, file: !33, line: 31, type: !29)
!2004 = !{!"1025"}
!2005 = !DILocation(line: 37, column: 5, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1972, file: !33, line: 37, column: 5)
!2007 = !{!"1026"}
!2008 = !DILocation(line: 37, column: 5, scope: !1972)
!2009 = !{!"1027"}
!2010 = !DILocation(line: 45, column: 8, scope: !2006)
!2011 = !{!"1028"}
!2012 = !{!"1029"}
!2013 = !{!"1030"}
!2014 = !DILocation(line: 45, column: 13, scope: !2006)
!2015 = !{!"1031"}
!2016 = !DILocation(line: 45, column: 22, scope: !2006)
!2017 = !{!"1032"}
!2018 = !{!"1033"}
!2019 = !{!"1034"}
!2020 = !DILocation(line: 45, column: 27, scope: !2006)
!2021 = !{!"1035"}
!2022 = !DILocation(line: 45, column: 19, scope: !2006)
!2023 = !{!"1036"}
!2024 = !DILocalVariable(name: "dl", scope: !1972, file: !33, line: 32, type: !12)
!2025 = !{!"1037"}
!2026 = !DILocation(line: 45, column: 2, scope: !2006)
!2027 = !{!"1038"}
!2028 = !{!"1039"}
!2029 = !{!"1040"}
!2030 = !DILocation(line: 46, column: 8, scope: !1972)
!2031 = !{!"1041"}
!2032 = !{!"1042"}
!2033 = !{!"1043"}
!2034 = !DILocation(line: 46, column: 13, scope: !1972)
!2035 = !{!"1044"}
!2036 = !DILocation(line: 46, column: 22, scope: !1972)
!2037 = !{!"1045"}
!2038 = !{!"1046"}
!2039 = !{!"1047"}
!2040 = !DILocation(line: 46, column: 27, scope: !1972)
!2041 = !{!"1048"}
!2042 = !DILocation(line: 46, column: 19, scope: !1972)
!2043 = !{!"1049"}
!2044 = !DILocalVariable(name: "dh", scope: !1972, file: !33, line: 32, type: !12)
!2045 = !{!"1050"}
!2046 = !DILocation(line: 47, column: 13, scope: !1972)
!2047 = !{!"1051"}
!2048 = !DILocation(line: 47, column: 19, scope: !1972)
!2049 = !{!"1052"}
!2050 = !DILocation(line: 47, column: 42, scope: !1972)
!2051 = !{!"1053"}
!2052 = !DILocation(line: 47, column: 27, scope: !1972)
!2053 = !{!"1054"}
!2054 = !DILocation(line: 47, column: 48, scope: !1972)
!2055 = !{!"1055"}
!2056 = !DILocation(line: 47, column: 24, scope: !1972)
!2057 = !{!"1056"}
!2058 = !DILocation(line: 47, column: 9, scope: !1972)
!2059 = !{!"1057"}
!2060 = !DILocation(line: 47, column: 2, scope: !1972)
!2061 = !{!"1058"}
!2062 = !DILocation(line: 47, column: 7, scope: !1972)
!2063 = !{!"1059"}
!2064 = !DILocalVariable(name: "u", scope: !1972, file: !33, line: 31, type: !29)
!2065 = !{!"1060"}
!2066 = !DILocation(line: 49, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1972, file: !33, line: 49, column: 2)
!2068 = !{!"1061"}
!2069 = !DILocation(line: 0, scope: !2067)
!2070 = !{!"1062"}
!2071 = !{!"1063"}
!2072 = !DILocation(line: 49, column: 16, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2067, file: !33, line: 49, column: 2)
!2074 = !{!"1064"}
!2075 = !DILocation(line: 49, column: 2, scope: !2067)
!2076 = !{!"1065"}
!2077 = !DILocation(line: 54, column: 11, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !33, line: 49, column: 30)
!2079 = !{!"1066"}
!2080 = !DILocation(line: 54, column: 7, scope: !2078)
!2081 = !{!"1067"}
!2082 = !{!"1068"}
!2083 = !{!"1069"}
!2084 = !DILocalVariable(name: "f", scope: !2078, file: !33, line: 50, type: !8)
!2085 = !DILocation(line: 0, scope: !2078)
!2086 = !{!"1070"}
!2087 = !DILocalVariable(name: "cc", scope: !2078, file: !33, line: 52, type: !8)
!2088 = !{!"1071"}
!2089 = !DILocalVariable(name: "v", scope: !2078, file: !33, line: 51, type: !29)
!2090 = !{!"1072"}
!2091 = !DILocation(line: 56, column: 8, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2078, file: !33, line: 56, column: 3)
!2093 = !{!"1073"}
!2094 = !DILocation(line: 0, scope: !2092)
!2095 = !{!"1074"}
!2096 = !{!"1075"}
!2097 = !{!"1076"}
!2098 = !{!"1077"}
!2099 = !DILocation(line: 56, column: 17, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2092, file: !33, line: 56, column: 3)
!2101 = !{!"1078"}
!2102 = !DILocation(line: 56, column: 3, scope: !2092)
!2103 = !{!"1079"}
!2104 = !DILocation(line: 59, column: 22, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !33, line: 56, column: 31)
!2106 = !{!"1080"}
!2107 = !DILocation(line: 59, column: 26, scope: !2105)
!2108 = !{!"1081"}
!2109 = !DILocation(line: 59, column: 18, scope: !2105)
!2110 = !{!"1082"}
!2111 = !{!"1083"}
!2112 = !DILocation(line: 59, column: 8, scope: !2105)
!2113 = !{!"1084"}
!2114 = !DILocation(line: 59, column: 33, scope: !2105)
!2115 = !{!"1085"}
!2116 = !{!"1086"}
!2117 = !{!"1087"}
!2118 = !{!"1088"}
!2119 = !{!"1089"}
!2120 = !DILocation(line: 59, column: 31, scope: !2105)
!2121 = !{!"1090"}
!2122 = !DILocation(line: 59, column: 52, scope: !2105)
!2123 = !{!"1091"}
!2124 = !DILocalVariable(name: "z", scope: !2105, file: !33, line: 57, type: !8)
!2125 = !DILocation(line: 0, scope: !2105)
!2126 = !{!"1092"}
!2127 = !DILocation(line: 60, column: 11, scope: !2105)
!2128 = !{!"1093"}
!2129 = !{!"1094"}
!2130 = !DILocation(line: 61, column: 21, scope: !2105)
!2131 = !{!"1095"}
!2132 = !DILocation(line: 61, column: 19, scope: !2105)
!2133 = !{!"1096"}
!2134 = !DILocation(line: 61, column: 8, scope: !2105)
!2135 = !{!"1097"}
!2136 = !DILocation(line: 61, column: 12, scope: !2105)
!2137 = !{!"1098"}
!2138 = !DILocation(line: 61, column: 4, scope: !2105)
!2139 = !{!"1099"}
!2140 = !DILocation(line: 61, column: 17, scope: !2105)
!2141 = !{!"1100"}
!2142 = !DILocation(line: 62, column: 3, scope: !2105)
!2143 = !{!"1101"}
!2144 = !DILocation(line: 56, column: 27, scope: !2100)
!2145 = !{!"1102"}
!2146 = !{!"1103"}
!2147 = !DILocation(line: 56, column: 3, scope: !2100)
!2148 = distinct !{!2148, !2102, !2149, !128}
!2149 = !DILocation(line: 62, column: 3, scope: !2092)
!2150 = !{!"1104"}
!2151 = !DILocation(line: 63, column: 21, scope: !2078)
!2152 = !{!"1105"}
!2153 = !DILocation(line: 63, column: 7, scope: !2078)
!2154 = !{!"1106"}
!2155 = !DILocation(line: 63, column: 11, scope: !2078)
!2156 = !{!"1107"}
!2157 = !DILocation(line: 63, column: 3, scope: !2078)
!2158 = !{!"1108"}
!2159 = !DILocation(line: 63, column: 19, scope: !2078)
!2160 = !{!"1109"}
!2161 = !DILocation(line: 64, column: 2, scope: !2078)
!2162 = !{!"1110"}
!2163 = !DILocation(line: 49, column: 26, scope: !2073)
!2164 = !{!"1111"}
!2165 = !{!"1112"}
!2166 = !DILocation(line: 49, column: 2, scope: !2073)
!2167 = distinct !{!2167, !2075, !2168, !128}
!2168 = !DILocation(line: 64, column: 2, scope: !2067)
!2169 = !{!"1113"}
!2170 = !DILocation(line: 65, column: 1, scope: !1972)
!2171 = !{!"1114"}
!2172 = distinct !DISubprogram(name: "br_i15_muladd_small", scope: !35, file: !35, line: 55, type: !2173, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !2)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !156, !157, !160}
!2175 = !{!"1115"}
!2176 = !DILocalVariable(name: "x", arg: 1, scope: !2172, file: !35, line: 55, type: !156)
!2177 = !DILocation(line: 0, scope: !2172)
!2178 = !{!"1116"}
!2179 = !DILocalVariable(name: "z", arg: 2, scope: !2172, file: !35, line: 55, type: !157)
!2180 = !{!"1117"}
!2181 = !DILocalVariable(name: "m", arg: 3, scope: !2172, file: !35, line: 55, type: !160)
!2182 = !{!"1118"}
!2183 = !DILocation(line: 69, column: 13, scope: !2172)
!2184 = !{!"1119"}
!2185 = !{!"1120"}
!2186 = !{!"1121"}
!2187 = !DILocalVariable(name: "m_bitlen", scope: !2172, file: !35, line: 61, type: !12)
!2188 = !{!"1122"}
!2189 = !DILocation(line: 70, column: 15, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2172, file: !35, line: 70, column: 6)
!2191 = !{!"1123"}
!2192 = !DILocation(line: 70, column: 6, scope: !2172)
!2193 = !{!"1124"}
!2194 = !DILocation(line: 71, column: 3, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2190, file: !35, line: 70, column: 21)
!2196 = !{!"1125"}
!2197 = !DILocation(line: 73, column: 15, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2172, file: !35, line: 73, column: 6)
!2199 = !{!"1126"}
!2200 = !DILocation(line: 73, column: 6, scope: !2172)
!2201 = !{!"1127"}
!2202 = !DILocalVariable(name: "rem", scope: !2203, file: !35, line: 74, type: !8)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !35, line: 73, column: 22)
!2204 = !DILocation(line: 74, column: 12, scope: !2203)
!2205 = !{!"1128"}
!2206 = !DILocation(line: 76, column: 23, scope: !2203)
!2207 = !{!"1129"}
!2208 = !{!"1130"}
!2209 = !DILocation(line: 76, column: 13, scope: !2203)
!2210 = !{!"1131"}
!2211 = !DILocation(line: 76, column: 28, scope: !2203)
!2212 = !{!"1132"}
!2213 = !DILocation(line: 76, column: 37, scope: !2203)
!2214 = !{!"1133"}
!2215 = !DILocation(line: 76, column: 35, scope: !2203)
!2216 = !{!"1134"}
!2217 = !DILocation(line: 76, column: 40, scope: !2203)
!2218 = !{!"1135"}
!2219 = !{!"1136"}
!2220 = !{!"1137"}
!2221 = !DILocation(line: 76, column: 3, scope: !2203)
!2222 = !{!"1138"}
!2223 = !DILocation(line: 77, column: 10, scope: !2203)
!2224 = !{!"1139"}
!2225 = !{!"1140"}
!2226 = !DILocation(line: 77, column: 3, scope: !2203)
!2227 = !{!"1141"}
!2228 = !DILocation(line: 77, column: 8, scope: !2203)
!2229 = !{!"1142"}
!2230 = !DILocation(line: 78, column: 3, scope: !2203)
!2231 = !{!"1143"}
!2232 = !DILocation(line: 80, column: 19, scope: !2172)
!2233 = !{!"1144"}
!2234 = !DILocation(line: 80, column: 25, scope: !2172)
!2235 = !{!"1145"}
!2236 = !DILocation(line: 80, column: 9, scope: !2172)
!2237 = !{!"1146"}
!2238 = !DILocalVariable(name: "mlen", scope: !2172, file: !35, line: 62, type: !29)
!2239 = !{!"1147"}
!2240 = !DILocation(line: 81, column: 18, scope: !2172)
!2241 = !{!"1148"}
!2242 = !DILocalVariable(name: "mblr", scope: !2172, file: !35, line: 61, type: !12)
!2243 = !{!"1149"}
!2244 = !DILocation(line: 109, column: 7, scope: !2172)
!2245 = !{!"1150"}
!2246 = !{!"1151"}
!2247 = !{!"1152"}
!2248 = !DILocalVariable(name: "hi", scope: !2172, file: !35, line: 63, type: !8)
!2249 = !{!"1153"}
!2250 = !DILocation(line: 110, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2172, file: !35, line: 110, column: 6)
!2252 = !{!"1154"}
!2253 = !DILocation(line: 110, column: 6, scope: !2172)
!2254 = !{!"1155"}
!2255 = !DILocation(line: 111, column: 8, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !35, line: 110, column: 17)
!2257 = !{!"1156"}
!2258 = !{!"1157"}
!2259 = !{!"1158"}
!2260 = !DILocalVariable(name: "a0", scope: !2172, file: !35, line: 63, type: !8)
!2261 = !{!"1159"}
!2262 = !DILocation(line: 112, column: 13, scope: !2256)
!2263 = !{!"1160"}
!2264 = !DILocation(line: 112, column: 3, scope: !2256)
!2265 = !{!"1161"}
!2266 = !DILocation(line: 112, column: 20, scope: !2256)
!2267 = !{!"1162"}
!2268 = !{!"1163"}
!2269 = !DILocation(line: 112, column: 31, scope: !2256)
!2270 = !{!"1164"}
!2271 = !DILocation(line: 112, column: 36, scope: !2256)
!2272 = !{!"1165"}
!2273 = !{!"1166"}
!2274 = !DILocation(line: 113, column: 3, scope: !2256)
!2275 = !{!"1167"}
!2276 = !DILocation(line: 113, column: 8, scope: !2256)
!2277 = !{!"1168"}
!2278 = !DILocation(line: 114, column: 11, scope: !2256)
!2279 = !{!"1169"}
!2280 = !DILocation(line: 114, column: 20, scope: !2256)
!2281 = !{!"1170"}
!2282 = !{!"1171"}
!2283 = !{!"1172"}
!2284 = !DILocation(line: 114, column: 18, scope: !2256)
!2285 = !{!"1173"}
!2286 = !DILocalVariable(name: "a", scope: !2172, file: !35, line: 63, type: !8)
!2287 = !{!"1174"}
!2288 = !DILocation(line: 115, column: 7, scope: !2256)
!2289 = !{!"1175"}
!2290 = !{!"1176"}
!2291 = !{!"1177"}
!2292 = !DILocalVariable(name: "b", scope: !2172, file: !35, line: 63, type: !8)
!2293 = !{!"1178"}
!2294 = !DILocation(line: 116, column: 2, scope: !2256)
!2295 = !{!"1179"}
!2296 = !DILocation(line: 117, column: 9, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2251, file: !35, line: 116, column: 9)
!2298 = !{!"1180"}
!2299 = !{!"1181"}
!2300 = !{!"1182"}
!2301 = !DILocation(line: 117, column: 24, scope: !2297)
!2302 = !{!"1183"}
!2303 = !DILocation(line: 117, column: 17, scope: !2297)
!2304 = !{!"1184"}
!2305 = !DILocation(line: 117, column: 43, scope: !2297)
!2306 = !{!"1185"}
!2307 = !DILocation(line: 117, column: 36, scope: !2297)
!2308 = !{!"1186"}
!2309 = !{!"1187"}
!2310 = !{!"1188"}
!2311 = !DILocation(line: 117, column: 48, scope: !2297)
!2312 = !{!"1189"}
!2313 = !DILocation(line: 117, column: 33, scope: !2297)
!2314 = !{!"1190"}
!2315 = !{!"1191"}
!2316 = !DILocation(line: 118, column: 13, scope: !2297)
!2317 = !{!"1192"}
!2318 = !DILocation(line: 118, column: 3, scope: !2297)
!2319 = !{!"1193"}
!2320 = !DILocation(line: 118, column: 20, scope: !2297)
!2321 = !{!"1194"}
!2322 = !{!"1195"}
!2323 = !DILocation(line: 118, column: 31, scope: !2297)
!2324 = !{!"1196"}
!2325 = !DILocation(line: 118, column: 36, scope: !2297)
!2326 = !{!"1197"}
!2327 = !{!"1198"}
!2328 = !DILocation(line: 119, column: 3, scope: !2297)
!2329 = !{!"1199"}
!2330 = !DILocation(line: 119, column: 8, scope: !2297)
!2331 = !{!"1200"}
!2332 = !DILocation(line: 120, column: 11, scope: !2297)
!2333 = !{!"1201"}
!2334 = !DILocation(line: 120, column: 23, scope: !2297)
!2335 = !{!"1202"}
!2336 = !{!"1203"}
!2337 = !{!"1204"}
!2338 = !DILocation(line: 120, column: 38, scope: !2297)
!2339 = !{!"1205"}
!2340 = !DILocation(line: 120, column: 31, scope: !2297)
!2341 = !{!"1206"}
!2342 = !DILocation(line: 121, column: 14, scope: !2297)
!2343 = !{!"1207"}
!2344 = !DILocation(line: 121, column: 7, scope: !2297)
!2345 = !{!"1208"}
!2346 = !{!"1209"}
!2347 = !{!"1210"}
!2348 = !DILocation(line: 121, column: 19, scope: !2297)
!2349 = !{!"1211"}
!2350 = !DILocation(line: 121, column: 4, scope: !2297)
!2351 = !{!"1212"}
!2352 = !DILocation(line: 121, column: 29, scope: !2297)
!2353 = !{!"1213"}
!2354 = !DILocation(line: 120, column: 18, scope: !2297)
!2355 = !{!"1214"}
!2356 = !{!"1215"}
!2357 = !DILocation(line: 122, column: 8, scope: !2297)
!2358 = !{!"1216"}
!2359 = !{!"1217"}
!2360 = !{!"1218"}
!2361 = !DILocation(line: 122, column: 23, scope: !2297)
!2362 = !{!"1219"}
!2363 = !DILocation(line: 122, column: 16, scope: !2297)
!2364 = !{!"1220"}
!2365 = !DILocation(line: 122, column: 42, scope: !2297)
!2366 = !{!"1221"}
!2367 = !DILocation(line: 122, column: 35, scope: !2297)
!2368 = !{!"1222"}
!2369 = !{!"1223"}
!2370 = !{!"1224"}
!2371 = !DILocation(line: 122, column: 47, scope: !2297)
!2372 = !{!"1225"}
!2373 = !DILocation(line: 122, column: 32, scope: !2297)
!2374 = !{!"1226"}
!2375 = !{!"1227"}
!2376 = !{!"1228"}
!2377 = !DILocation(line: 0, scope: !2251)
!2378 = !{!"1229"}
!2379 = !{!"1230"}
!2380 = !{!"1231"}
!2381 = !{!"1232"}
!2382 = !{!"1233"}
!2383 = !{!"1234"}
!2384 = !DILocation(line: 124, column: 6, scope: !2172)
!2385 = !{!"1235"}
!2386 = !DILocalVariable(name: "q", scope: !2172, file: !35, line: 63, type: !8)
!2387 = !{!"1236"}
!2388 = !DILocation(line: 134, column: 10, scope: !2172)
!2389 = !{!"1237"}
!2390 = !DILocation(line: 134, column: 31, scope: !2172)
!2391 = !{!"1238"}
!2392 = !DILocation(line: 134, column: 41, scope: !2172)
!2393 = !{!"1239"}
!2394 = !DILocation(line: 134, column: 46, scope: !2172)
!2395 = !{!"1240"}
!2396 = !DILocation(line: 134, column: 35, scope: !2172)
!2397 = !{!"1241"}
!2398 = !DILocation(line: 134, column: 6, scope: !2172)
!2399 = !{!"1242"}
!2400 = !{!"1243"}
!2401 = !DILocalVariable(name: "cc", scope: !2172, file: !35, line: 64, type: !8)
!2402 = !{!"1244"}
!2403 = !DILocalVariable(name: "tb", scope: !2172, file: !35, line: 64, type: !8)
!2404 = !{!"1245"}
!2405 = !DILocalVariable(name: "u", scope: !2172, file: !35, line: 62, type: !29)
!2406 = !{!"1246"}
!2407 = !DILocation(line: 147, column: 7, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2172, file: !35, line: 147, column: 2)
!2409 = !{!"1247"}
!2410 = !DILocation(line: 0, scope: !2408)
!2411 = !{!"1248"}
!2412 = !{!"1249"}
!2413 = !{!"1250"}
!2414 = !{!"1251"}
!2415 = !{!"1252"}
!2416 = !{!"1253"}
!2417 = !DILocation(line: 147, column: 16, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2408, file: !35, line: 147, column: 2)
!2419 = !{!"1254"}
!2420 = !DILocation(line: 147, column: 2, scope: !2408)
!2421 = !{!"1255"}
!2422 = !DILocation(line: 150, column: 8, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2418, file: !35, line: 147, column: 31)
!2424 = !{!"1256"}
!2425 = !{!"1257"}
!2426 = !{!"1258"}
!2427 = !DILocalVariable(name: "mw", scope: !2423, file: !35, line: 148, type: !8)
!2428 = !DILocation(line: 0, scope: !2423)
!2429 = !{!"1259"}
!2430 = !DILocation(line: 151, column: 8, scope: !2423)
!2431 = !{!"1260"}
!2432 = !DILocation(line: 151, column: 21, scope: !2423)
!2433 = !{!"1261"}
!2434 = !DILocalVariable(name: "zl", scope: !2423, file: !35, line: 148, type: !8)
!2435 = !{!"1262"}
!2436 = !DILocation(line: 152, column: 11, scope: !2423)
!2437 = !{!"1263"}
!2438 = !{!"1264"}
!2439 = !DILocation(line: 153, column: 6, scope: !2423)
!2440 = !{!"1265"}
!2441 = !{!"1266"}
!2442 = !DILocation(line: 154, column: 8, scope: !2423)
!2443 = !{!"1267"}
!2444 = !{!"1268"}
!2445 = !{!"1269"}
!2446 = !DILocalVariable(name: "xw", scope: !2423, file: !35, line: 148, type: !8)
!2447 = !{!"1270"}
!2448 = !DILocation(line: 155, column: 12, scope: !2423)
!2449 = !{!"1271"}
!2450 = !DILocalVariable(name: "nxw", scope: !2423, file: !35, line: 148, type: !8)
!2451 = !{!"1272"}
!2452 = !DILocation(line: 156, column: 13, scope: !2423)
!2453 = !{!"1273"}
!2454 = !DILocation(line: 156, column: 6, scope: !2423)
!2455 = !{!"1274"}
!2456 = !{!"1275"}
!2457 = !DILocation(line: 157, column: 7, scope: !2423)
!2458 = !{!"1276"}
!2459 = !{!"1277"}
!2460 = !DILocation(line: 158, column: 10, scope: !2423)
!2461 = !{!"1278"}
!2462 = !DILocation(line: 158, column: 3, scope: !2423)
!2463 = !{!"1279"}
!2464 = !DILocation(line: 158, column: 8, scope: !2423)
!2465 = !{!"1280"}
!2466 = !DILocation(line: 159, column: 12, scope: !2423)
!2467 = !{!"1281"}
!2468 = !DILocation(line: 159, column: 29, scope: !2423)
!2469 = !{!"1282"}
!2470 = !DILocation(line: 159, column: 8, scope: !2423)
!2471 = !{!"1283"}
!2472 = !{!"1284"}
!2473 = !DILocation(line: 160, column: 2, scope: !2423)
!2474 = !{!"1285"}
!2475 = !DILocation(line: 147, column: 27, scope: !2418)
!2476 = !{!"1286"}
!2477 = !{!"1287"}
!2478 = !DILocation(line: 147, column: 2, scope: !2418)
!2479 = distinct !{!2479, !2420, !2480, !128}
!2480 = !DILocation(line: 160, column: 2, scope: !2408)
!2481 = !{!"1288"}
!2482 = !DILocation(line: 169, column: 9, scope: !2172)
!2483 = !{!"1289"}
!2484 = !DILocalVariable(name: "over", scope: !2172, file: !35, line: 64, type: !8)
!2485 = !{!"1290"}
!2486 = !DILocation(line: 170, column: 10, scope: !2172)
!2487 = !{!"1291"}
!2488 = !DILocation(line: 170, column: 24, scope: !2172)
!2489 = !{!"1292"}
!2490 = !DILocation(line: 170, column: 22, scope: !2172)
!2491 = !{!"1293"}
!2492 = !DILocation(line: 170, column: 16, scope: !2172)
!2493 = !{!"1294"}
!2494 = !DILocalVariable(name: "under", scope: !2172, file: !35, line: 64, type: !8)
!2495 = !{!"1295"}
!2496 = !DILocation(line: 171, column: 2, scope: !2172)
!2497 = !{!"1296"}
!2498 = !DILocation(line: 172, column: 2, scope: !2172)
!2499 = !{!"1297"}
!2500 = !DILocation(line: 173, column: 1, scope: !2172)
!2501 = !{!"1298"}
!2502 = !{!"1299"}
!2503 = distinct !DISubprogram(name: "divrem16", scope: !35, file: !35, line: 32, type: !2504, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !2)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!8, !8, !8, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!2507 = !DILocalVariable(name: "x", arg: 1, scope: !2503, file: !35, line: 32, type: !8)
!2508 = !DILocation(line: 0, scope: !2503)
!2509 = !{!"1300"}
!2510 = !DILocalVariable(name: "d", arg: 2, scope: !2503, file: !35, line: 32, type: !8)
!2511 = !{!"1301"}
!2512 = !DILocalVariable(name: "r", arg: 3, scope: !2503, file: !35, line: 32, type: !2506)
!2513 = !{!"1302"}
!2514 = !DILocalVariable(name: "q", scope: !2503, file: !35, line: 35, type: !8)
!2515 = !{!"1303"}
!2516 = !DILocation(line: 38, column: 4, scope: !2503)
!2517 = !{!"1304"}
!2518 = !{!"1305"}
!2519 = !DILocalVariable(name: "i", scope: !2503, file: !35, line: 34, type: !491)
!2520 = !{!"1306"}
!2521 = !DILocation(line: 39, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2503, file: !35, line: 39, column: 2)
!2523 = !{!"1307"}
!2524 = !DILocation(line: 0, scope: !2522)
!2525 = !{!"1308"}
!2526 = !{!"1309"}
!2527 = !{!"1310"}
!2528 = !{!"1311"}
!2529 = !{!"1312"}
!2530 = !{!"1313"}
!2531 = !{!"1314"}
!2532 = !{!"1315"}
!2533 = !DILocation(line: 39, column: 17, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2522, file: !35, line: 39, column: 2)
!2535 = !{!"1316"}
!2536 = !DILocation(line: 39, column: 2, scope: !2522)
!2537 = !{!"1317"}
!2538 = !DILocation(line: 42, column: 9, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2534, file: !35, line: 39, column: 29)
!2540 = !{!"1318"}
!2541 = !{!"1319"}
!2542 = !DILocalVariable(name: "ctl", scope: !2539, file: !35, line: 40, type: !8)
!2543 = !DILocation(line: 0, scope: !2539)
!2544 = !{!"1320"}
!2545 = !DILocation(line: 43, column: 12, scope: !2539)
!2546 = !{!"1321"}
!2547 = !DILocation(line: 43, column: 5, scope: !2539)
!2548 = !{!"1322"}
!2549 = !{!"1323"}
!2550 = !DILocation(line: 44, column: 9, scope: !2539)
!2551 = !{!"1324"}
!2552 = !DILocation(line: 44, column: 15, scope: !2539)
!2553 = !{!"1325"}
!2554 = !DILocation(line: 44, column: 5, scope: !2539)
!2555 = !{!"1326"}
!2556 = !{!"1327"}
!2557 = !DILocation(line: 45, column: 5, scope: !2539)
!2558 = !{!"1328"}
!2559 = !{!"1329"}
!2560 = !DILocation(line: 46, column: 2, scope: !2539)
!2561 = !{!"1330"}
!2562 = !DILocation(line: 39, column: 25, scope: !2534)
!2563 = !{!"1331"}
!2564 = !{!"1332"}
!2565 = !DILocation(line: 39, column: 2, scope: !2534)
!2566 = distinct !{!2566, !2536, !2567, !128}
!2567 = !DILocation(line: 46, column: 2, scope: !2522)
!2568 = !{!"1333"}
!2569 = !DILocation(line: 47, column: 8, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2503, file: !35, line: 47, column: 6)
!2571 = !{!"1334"}
!2572 = !DILocation(line: 47, column: 6, scope: !2503)
!2573 = !{!"1335"}
!2574 = !DILocation(line: 48, column: 6, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2570, file: !35, line: 47, column: 17)
!2576 = !{!"1336"}
!2577 = !DILocation(line: 49, column: 2, scope: !2575)
!2578 = !{!"1337"}
!2579 = !DILocation(line: 50, column: 2, scope: !2503)
!2580 = !{!"1338"}
!2581 = distinct !DISubprogram(name: "EQ", scope: !133, file: !133, line: 779, type: !317, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !2)
!2582 = !DILocalVariable(name: "x", arg: 1, scope: !2581, file: !133, line: 779, type: !8)
!2583 = !DILocation(line: 0, scope: !2581)
!2584 = !{!"1339"}
!2585 = !DILocalVariable(name: "y", arg: 2, scope: !2581, file: !133, line: 779, type: !8)
!2586 = !{!"1340"}
!2587 = !DILocation(line: 783, column: 8, scope: !2581)
!2588 = !{!"1341"}
!2589 = !DILocalVariable(name: "q", scope: !2581, file: !133, line: 781, type: !8)
!2590 = !{!"1342"}
!2591 = !DILocation(line: 784, column: 18, scope: !2581)
!2592 = !{!"1343"}
!2593 = !DILocation(line: 784, column: 16, scope: !2581)
!2594 = !{!"1344"}
!2595 = !DILocation(line: 784, column: 22, scope: !2581)
!2596 = !{!"1345"}
!2597 = !DILocation(line: 784, column: 9, scope: !2581)
!2598 = !{!"1346"}
!2599 = !DILocation(line: 784, column: 2, scope: !2581)
!2600 = !{!"1347"}
!2601 = distinct !DISubprogram(name: "MUX", scope: !133, file: !133, line: 770, type: !134, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !2)
!2602 = !DILocalVariable(name: "ctl", arg: 1, scope: !2601, file: !133, line: 770, type: !8)
!2603 = !DILocation(line: 0, scope: !2601)
!2604 = !{!"1348"}
!2605 = !DILocalVariable(name: "x", arg: 2, scope: !2601, file: !133, line: 770, type: !8)
!2606 = !{!"1349"}
!2607 = !DILocalVariable(name: "y", arg: 3, scope: !2601, file: !133, line: 770, type: !8)
!2608 = !{!"1350"}
!2609 = !DILocation(line: 772, column: 14, scope: !2601)
!2610 = !{!"1351"}
!2611 = !DILocation(line: 772, column: 24, scope: !2601)
!2612 = !{!"1352"}
!2613 = !DILocation(line: 772, column: 19, scope: !2601)
!2614 = !{!"1353"}
!2615 = !DILocation(line: 772, column: 11, scope: !2601)
!2616 = !{!"1354"}
!2617 = !DILocation(line: 772, column: 2, scope: !2601)
!2618 = !{!"1355"}
!2619 = distinct !DISubprogram(name: "GT", scope: !133, file: !133, line: 803, type: !317, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !2)
!2620 = !DILocalVariable(name: "x", arg: 1, scope: !2619, file: !133, line: 803, type: !8)
!2621 = !DILocation(line: 0, scope: !2619)
!2622 = !{!"1356"}
!2623 = !DILocalVariable(name: "y", arg: 2, scope: !2619, file: !133, line: 803, type: !8)
!2624 = !{!"1357"}
!2625 = !DILocation(line: 819, column: 8, scope: !2619)
!2626 = !{!"1358"}
!2627 = !DILocalVariable(name: "z", scope: !2619, file: !133, line: 817, type: !8)
!2628 = !{!"1359"}
!2629 = !DILocation(line: 820, column: 18, scope: !2619)
!2630 = !{!"1360"}
!2631 = !DILocation(line: 820, column: 28, scope: !2619)
!2632 = !{!"1361"}
!2633 = !DILocation(line: 820, column: 23, scope: !2619)
!2634 = !{!"1362"}
!2635 = !DILocation(line: 820, column: 12, scope: !2619)
!2636 = !{!"1363"}
!2637 = !DILocation(line: 820, column: 35, scope: !2619)
!2638 = !{!"1364"}
!2639 = !DILocation(line: 820, column: 2, scope: !2619)
!2640 = !{!"1365"}
!2641 = distinct !DISubprogram(name: "NOT", scope: !133, file: !133, line: 761, type: !357, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !34, retainedNodes: !2)
!2642 = !DILocalVariable(name: "ctl", arg: 1, scope: !2641, file: !133, line: 761, type: !8)
!2643 = !DILocation(line: 0, scope: !2641)
!2644 = !{!"1366"}
!2645 = !DILocation(line: 763, column: 13, scope: !2641)
!2646 = !{!"1367"}
!2647 = !DILocation(line: 763, column: 2, scope: !2641)
!2648 = !{!"1368"}
!2649 = distinct !DISubprogram(name: "br_i15_ninv15", scope: !39, file: !39, line: 29, type: !2650, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !2)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!157, !157}
!2652 = !DILocalVariable(name: "x", arg: 1, scope: !2649, file: !39, line: 29, type: !157)
!2653 = !DILocation(line: 0, scope: !2649)
!2654 = !{!"1369"}
!2655 = !DILocation(line: 33, column: 10, scope: !2649)
!2656 = !{!"1370"}
!2657 = !DILocation(line: 33, column: 8, scope: !2649)
!2658 = !{!"1371"}
!2659 = !DILocalVariable(name: "y", scope: !2649, file: !39, line: 31, type: !8)
!2660 = !{!"1372"}
!2661 = !DILocation(line: 34, column: 6, scope: !2649)
!2662 = !{!"1373"}
!2663 = !{!"1374"}
!2664 = !{!"1375"}
!2665 = !{!"1376"}
!2666 = !{!"1377"}
!2667 = !DILocation(line: 35, column: 6, scope: !2649)
!2668 = !{!"1378"}
!2669 = !{!"1379"}
!2670 = !{!"1380"}
!2671 = !{!"1381"}
!2672 = !{!"1382"}
!2673 = !DILocation(line: 36, column: 6, scope: !2649)
!2674 = !{!"1383"}
!2675 = !{!"1384"}
!2676 = !{!"1385"}
!2677 = !{!"1386"}
!2678 = !{!"1387"}
!2679 = !DILocation(line: 37, column: 13, scope: !2649)
!2680 = !{!"1388"}
!2681 = !DILocation(line: 37, column: 15, scope: !2649)
!2682 = !{!"1389"}
!2683 = !DILocation(line: 37, column: 20, scope: !2649)
!2684 = !{!"1390"}
!2685 = !DILocation(line: 37, column: 9, scope: !2649)
!2686 = !{!"1391"}
!2687 = !DILocation(line: 37, column: 27, scope: !2649)
!2688 = !{!"1392"}
!2689 = !{!"1393"}
!2690 = !DILocation(line: 37, column: 2, scope: !2649)
!2691 = !{!"1394"}
!2692 = distinct !DISubprogram(name: "MUX", scope: !133, file: !133, line: 770, type: !134, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!2693 = !DILocalVariable(name: "ctl", arg: 1, scope: !2692, file: !133, line: 770, type: !8)
!2694 = !DILocation(line: 0, scope: !2692)
!2695 = !{!"1395"}
!2696 = !DILocalVariable(name: "x", arg: 2, scope: !2692, file: !133, line: 770, type: !8)
!2697 = !{!"1396"}
!2698 = !DILocalVariable(name: "y", arg: 3, scope: !2692, file: !133, line: 770, type: !8)
!2699 = !{!"1397"}
!2700 = !DILocation(line: 772, column: 14, scope: !2692)
!2701 = !{!"1398"}
!2702 = !DILocation(line: 772, column: 24, scope: !2692)
!2703 = !{!"1399"}
!2704 = !DILocation(line: 772, column: 19, scope: !2692)
!2705 = !{!"1400"}
!2706 = !DILocation(line: 772, column: 11, scope: !2692)
!2707 = !{!"1401"}
!2708 = !DILocation(line: 772, column: 2, scope: !2692)
!2709 = !{!"1402"}
!2710 = distinct !DISubprogram(name: "br_i15_reduce", scope: !41, file: !41, line: 29, type: !1973, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !2)
!2711 = !DILocalVariable(name: "x", arg: 1, scope: !2710, file: !41, line: 29, type: !156)
!2712 = !DILocation(line: 0, scope: !2710)
!2713 = !{!"1403"}
!2714 = !DILocalVariable(name: "a", arg: 2, scope: !2710, file: !41, line: 29, type: !160)
!2715 = !{!"1404"}
!2716 = !DILocalVariable(name: "m", arg: 3, scope: !2710, file: !41, line: 29, type: !160)
!2717 = !{!"1405"}
!2718 = !DILocation(line: 34, column: 13, scope: !2710)
!2719 = !{!"1406"}
!2720 = !{!"1407"}
!2721 = !{!"1408"}
!2722 = !DILocalVariable(name: "m_bitlen", scope: !2710, file: !41, line: 31, type: !8)
!2723 = !{!"1409"}
!2724 = !DILocation(line: 35, column: 19, scope: !2710)
!2725 = !{!"1410"}
!2726 = !DILocation(line: 35, column: 25, scope: !2710)
!2727 = !{!"1411"}
!2728 = !DILocation(line: 35, column: 9, scope: !2710)
!2729 = !{!"1412"}
!2730 = !DILocalVariable(name: "mlen", scope: !2710, file: !41, line: 32, type: !29)
!2731 = !{!"1413"}
!2732 = !DILocation(line: 37, column: 9, scope: !2710)
!2733 = !{!"1414"}
!2734 = !DILocation(line: 37, column: 2, scope: !2710)
!2735 = !{!"1415"}
!2736 = !DILocation(line: 37, column: 7, scope: !2710)
!2737 = !{!"1416"}
!2738 = !DILocation(line: 38, column: 15, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2710, file: !41, line: 38, column: 6)
!2740 = !{!"1417"}
!2741 = !DILocation(line: 38, column: 6, scope: !2710)
!2742 = !{!"1418"}
!2743 = !DILocation(line: 39, column: 3, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2739, file: !41, line: 38, column: 21)
!2745 = !{!"1419"}
!2746 = !DILocation(line: 46, column: 13, scope: !2710)
!2747 = !{!"1420"}
!2748 = !{!"1421"}
!2749 = !{!"1422"}
!2750 = !DILocalVariable(name: "a_bitlen", scope: !2710, file: !41, line: 31, type: !8)
!2751 = !{!"1423"}
!2752 = !DILocation(line: 47, column: 19, scope: !2710)
!2753 = !{!"1424"}
!2754 = !DILocation(line: 47, column: 25, scope: !2710)
!2755 = !{!"1425"}
!2756 = !DILocation(line: 47, column: 9, scope: !2710)
!2757 = !{!"1426"}
!2758 = !DILocalVariable(name: "alen", scope: !2710, file: !41, line: 32, type: !29)
!2759 = !{!"1427"}
!2760 = !DILocation(line: 48, column: 15, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2710, file: !41, line: 48, column: 6)
!2762 = !{!"1428"}
!2763 = !DILocation(line: 48, column: 6, scope: !2710)
!2764 = !{!"1429"}
!2765 = !DILocation(line: 49, column: 12, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2761, file: !41, line: 48, column: 27)
!2767 = !{!"1430"}
!2768 = !DILocation(line: 49, column: 3, scope: !2766)
!2769 = !{!"1431"}
!2770 = !DILocation(line: 49, column: 19, scope: !2766)
!2771 = !{!"1432"}
!2772 = !{!"1433"}
!2773 = !DILocation(line: 49, column: 29, scope: !2766)
!2774 = !{!"1434"}
!2775 = !{!"1435"}
!2776 = !DILocalVariable(name: "u", scope: !2710, file: !41, line: 32, type: !29)
!2777 = !{!"1436"}
!2778 = !DILocation(line: 50, column: 8, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2766, file: !41, line: 50, column: 3)
!2780 = !{!"1437"}
!2781 = !DILocation(line: 0, scope: !2779)
!2782 = !{!"1438"}
!2783 = !{!"1439"}
!2784 = !DILocation(line: 50, column: 20, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2779, file: !41, line: 50, column: 3)
!2786 = !{!"1440"}
!2787 = !DILocation(line: 50, column: 3, scope: !2779)
!2788 = !{!"1441"}
!2789 = !DILocation(line: 51, column: 8, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2785, file: !41, line: 50, column: 34)
!2791 = !{!"1442"}
!2792 = !DILocation(line: 51, column: 4, scope: !2790)
!2793 = !{!"1443"}
!2794 = !DILocation(line: 51, column: 13, scope: !2790)
!2795 = !{!"1444"}
!2796 = !DILocation(line: 52, column: 3, scope: !2790)
!2797 = !{!"1445"}
!2798 = !DILocation(line: 50, column: 30, scope: !2785)
!2799 = !{!"1446"}
!2800 = !{!"1447"}
!2801 = !DILocation(line: 50, column: 3, scope: !2785)
!2802 = distinct !{!2802, !2787, !2803, !128}
!2803 = !DILocation(line: 52, column: 3, scope: !2779)
!2804 = !{!"1448"}
!2805 = !DILocation(line: 53, column: 3, scope: !2766)
!2806 = !{!"1449"}
!2807 = !DILocation(line: 61, column: 11, scope: !2710)
!2808 = !{!"1450"}
!2809 = !DILocation(line: 61, column: 2, scope: !2710)
!2810 = !{!"1451"}
!2811 = !DILocation(line: 61, column: 18, scope: !2710)
!2812 = !{!"1452"}
!2813 = !DILocation(line: 61, column: 30, scope: !2710)
!2814 = !{!"1453"}
!2815 = !DILocation(line: 61, column: 22, scope: !2710)
!2816 = !{!"1454"}
!2817 = !{!"1455"}
!2818 = !DILocation(line: 61, column: 45, scope: !2710)
!2819 = !{!"1456"}
!2820 = !DILocation(line: 61, column: 50, scope: !2710)
!2821 = !{!"1457"}
!2822 = !{!"1458"}
!2823 = !{!"0110"}
!2824 = !DILocation(line: 62, column: 2, scope: !2710)
!2825 = !{!"1459"}
!2826 = !DILocation(line: 62, column: 10, scope: !2710)
!2827 = !{!"1460"}
!2828 = !DILocation(line: 63, column: 13, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2710, file: !41, line: 63, column: 2)
!2830 = !{!"1461"}
!2831 = !DILocation(line: 63, column: 20, scope: !2829)
!2832 = !{!"1462"}
!2833 = !{!"1463"}
!2834 = !DILocation(line: 63, column: 7, scope: !2829)
!2835 = !{!"1464"}
!2836 = !DILocation(line: 0, scope: !2829)
!2837 = !{!"1465"}
!2838 = !{!"1466"}
!2839 = !DILocation(line: 63, column: 30, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2829, file: !41, line: 63, column: 2)
!2841 = !{!"1467"}
!2842 = !DILocation(line: 63, column: 2, scope: !2829)
!2843 = !{!"1468"}
!2844 = !DILocation(line: 64, column: 26, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2840, file: !41, line: 63, column: 41)
!2846 = !{!"1469"}
!2847 = !{!"1470"}
!2848 = !DILocation(line: 64, column: 3, scope: !2845)
!2849 = !{!"1471"}
!2850 = !DILocation(line: 65, column: 2, scope: !2845)
!2851 = !{!"1472"}
!2852 = !DILocation(line: 63, column: 37, scope: !2840)
!2853 = !{!"1473"}
!2854 = !{!"1474"}
!2855 = !DILocation(line: 63, column: 2, scope: !2840)
!2856 = distinct !{!2856, !2842, !2857, !128}
!2857 = !DILocation(line: 65, column: 2, scope: !2829)
!2858 = !{!"1475"}
!2859 = !DILocation(line: 66, column: 1, scope: !2710)
!2860 = !{!"1476"}
!2861 = distinct !DISubprogram(name: "br_i15_rshift", scope: !43, file: !43, line: 29, type: !2862, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !2)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !156, !491}
!2864 = !DILocalVariable(name: "x", arg: 1, scope: !2861, file: !43, line: 29, type: !156)
!2865 = !DILocation(line: 0, scope: !2861)
!2866 = !{!"1477"}
!2867 = !DILocalVariable(name: "count", arg: 2, scope: !2861, file: !43, line: 29, type: !491)
!2868 = !{!"1478"}
!2869 = !DILocation(line: 34, column: 9, scope: !2861)
!2870 = !{!"1479"}
!2871 = !{!"1480"}
!2872 = !{!"1481"}
!2873 = !DILocation(line: 34, column: 14, scope: !2861)
!2874 = !{!"1482"}
!2875 = !DILocation(line: 34, column: 20, scope: !2861)
!2876 = !{!"1483"}
!2877 = !DILocation(line: 34, column: 8, scope: !2861)
!2878 = !{!"1484"}
!2879 = !DILocalVariable(name: "len", scope: !2861, file: !43, line: 31, type: !29)
!2880 = !{!"1485"}
!2881 = !DILocation(line: 35, column: 10, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2861, file: !43, line: 35, column: 6)
!2883 = !{!"1486"}
!2884 = !DILocation(line: 35, column: 6, scope: !2861)
!2885 = !{!"1487"}
!2886 = !DILocation(line: 36, column: 3, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2882, file: !43, line: 35, column: 16)
!2888 = !{!"1488"}
!2889 = !DILocation(line: 38, column: 6, scope: !2861)
!2890 = !{!"1489"}
!2891 = !{!"1490"}
!2892 = !{!"1491"}
!2893 = !DILocation(line: 38, column: 11, scope: !2861)
!2894 = !{!"1492"}
!2895 = !DILocalVariable(name: "r", scope: !2861, file: !43, line: 32, type: !12)
!2896 = !{!"1493"}
!2897 = !DILocalVariable(name: "u", scope: !2861, file: !43, line: 31, type: !29)
!2898 = !{!"1494"}
!2899 = !DILocation(line: 39, column: 7, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2861, file: !43, line: 39, column: 2)
!2901 = !{!"1495"}
!2902 = !DILocation(line: 0, scope: !2900)
!2903 = !{!"1496"}
!2904 = !{!"1497"}
!2905 = !{!"1498"}
!2906 = !{!"1499"}
!2907 = !DILocation(line: 39, column: 16, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2900, file: !43, line: 39, column: 2)
!2909 = !{!"1500"}
!2910 = !DILocation(line: 39, column: 2, scope: !2900)
!2911 = !{!"1501"}
!2912 = !DILocation(line: 42, column: 7, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2908, file: !43, line: 39, column: 30)
!2914 = !{!"1502"}
!2915 = !{!"1503"}
!2916 = !{!"1504"}
!2917 = !DILocalVariable(name: "w", scope: !2913, file: !43, line: 40, type: !12)
!2918 = !DILocation(line: 0, scope: !2913)
!2919 = !{!"1505"}
!2920 = !DILocation(line: 43, column: 25, scope: !2913)
!2921 = !{!"1506"}
!2922 = !DILocation(line: 43, column: 18, scope: !2913)
!2923 = !{!"1507"}
!2924 = !DILocation(line: 43, column: 35, scope: !2913)
!2925 = !{!"1508"}
!2926 = !DILocation(line: 43, column: 40, scope: !2913)
!2927 = !{!"1509"}
!2928 = !DILocation(line: 43, column: 14, scope: !2913)
!2929 = !{!"1510"}
!2930 = !DILocation(line: 43, column: 7, scope: !2913)
!2931 = !{!"1511"}
!2932 = !DILocation(line: 43, column: 3, scope: !2913)
!2933 = !{!"1512"}
!2934 = !DILocation(line: 43, column: 12, scope: !2913)
!2935 = !{!"1513"}
!2936 = !DILocation(line: 44, column: 9, scope: !2913)
!2937 = !{!"1514"}
!2938 = !{!"1515"}
!2939 = !DILocation(line: 45, column: 2, scope: !2913)
!2940 = !{!"1516"}
!2941 = !DILocation(line: 39, column: 26, scope: !2908)
!2942 = !{!"1517"}
!2943 = !{!"1518"}
!2944 = !DILocation(line: 39, column: 2, scope: !2908)
!2945 = distinct !{!2945, !2910, !2946, !128}
!2946 = !DILocation(line: 45, column: 2, scope: !2900)
!2947 = !{!"1519"}
!2948 = !DILocation(line: 46, column: 11, scope: !2861)
!2949 = !{!"1520"}
!2950 = !DILocation(line: 46, column: 2, scope: !2861)
!2951 = !{!"1521"}
!2952 = !DILocation(line: 46, column: 9, scope: !2861)
!2953 = !{!"1522"}
!2954 = !DILocation(line: 47, column: 1, scope: !2861)
!2955 = !{!"1523"}
!2956 = !{!"1524"}
!2957 = distinct !DISubprogram(name: "br_i15_sub", scope: !45, file: !45, line: 29, type: !154, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !2)
!2958 = !DILocalVariable(name: "a", arg: 1, scope: !2957, file: !45, line: 29, type: !156)
!2959 = !DILocation(line: 0, scope: !2957)
!2960 = !{!"1525"}
!2961 = !DILocalVariable(name: "b", arg: 2, scope: !2957, file: !45, line: 29, type: !160)
!2962 = !{!"1526"}
!2963 = !DILocalVariable(name: "ctl", arg: 3, scope: !2957, file: !45, line: 29, type: !8)
!2964 = !{!"1527"}
!2965 = !DILocalVariable(name: "cc", scope: !2957, file: !45, line: 31, type: !8)
!2966 = !{!"1528"}
!2967 = !DILocation(line: 35, column: 7, scope: !2957)
!2968 = !{!"1529"}
!2969 = !{!"1530"}
!2970 = !{!"1531"}
!2971 = !DILocation(line: 35, column: 12, scope: !2957)
!2972 = !{!"1532"}
!2973 = !DILocation(line: 35, column: 18, scope: !2957)
!2974 = !{!"1533"}
!2975 = !DILocation(line: 35, column: 6, scope: !2957)
!2976 = !{!"1534"}
!2977 = !DILocalVariable(name: "m", scope: !2957, file: !45, line: 32, type: !29)
!2978 = !{!"1535"}
!2979 = !DILocalVariable(name: "u", scope: !2957, file: !45, line: 32, type: !29)
!2980 = !{!"1536"}
!2981 = !DILocation(line: 36, column: 7, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2957, file: !45, line: 36, column: 2)
!2983 = !{!"1537"}
!2984 = !{!"1538"}
!2985 = !DILocation(line: 0, scope: !2982)
!2986 = !{!"1539"}
!2987 = !{!"1540"}
!2988 = !{!"1541"}
!2989 = !DILocation(line: 36, column: 16, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2982, file: !45, line: 36, column: 2)
!2991 = !{!"1542"}
!2992 = !DILocation(line: 36, column: 2, scope: !2982)
!2993 = !{!"1543"}
!2994 = !DILocation(line: 39, column: 8, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2990, file: !45, line: 36, column: 27)
!2996 = !{!"1544"}
!2997 = !{!"1545"}
!2998 = !{!"1546"}
!2999 = !DILocalVariable(name: "aw", scope: !2995, file: !45, line: 37, type: !8)
!3000 = !DILocation(line: 0, scope: !2995)
!3001 = !{!"1547"}
!3002 = !DILocation(line: 40, column: 8, scope: !2995)
!3003 = !{!"1548"}
!3004 = !{!"1549"}
!3005 = !{!"1550"}
!3006 = !DILocalVariable(name: "bw", scope: !2995, file: !45, line: 37, type: !8)
!3007 = !{!"1551"}
!3008 = !DILocation(line: 41, column: 12, scope: !2995)
!3009 = !{!"1552"}
!3010 = !DILocation(line: 41, column: 17, scope: !2995)
!3011 = !{!"1553"}
!3012 = !DILocalVariable(name: "naw", scope: !2995, file: !45, line: 37, type: !8)
!3013 = !{!"1554"}
!3014 = !DILocation(line: 42, column: 12, scope: !2995)
!3015 = !{!"1555"}
!3016 = !{!"1556"}
!3017 = !DILocation(line: 43, column: 23, scope: !2995)
!3018 = !{!"1557"}
!3019 = !DILocation(line: 43, column: 10, scope: !2995)
!3020 = !{!"1558"}
!3021 = !{!"1559"}
!3022 = !DILocation(line: 43, column: 3, scope: !2995)
!3023 = !{!"1560"}
!3024 = !DILocation(line: 43, column: 8, scope: !2995)
!3025 = !{!"1561"}
!3026 = !DILocation(line: 44, column: 2, scope: !2995)
!3027 = !{!"1562"}
!3028 = !DILocation(line: 36, column: 23, scope: !2990)
!3029 = !{!"1563"}
!3030 = !{!"1564"}
!3031 = !DILocation(line: 36, column: 2, scope: !2990)
!3032 = distinct !{!3032, !2992, !3033, !128}
!3033 = !DILocation(line: 44, column: 2, scope: !2982)
!3034 = !{!"1565"}
!3035 = !DILocation(line: 45, column: 2, scope: !2957)
!3036 = !{!"1566"}
!3037 = distinct !DISubprogram(name: "MUX", scope: !133, file: !133, line: 770, type: !134, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !44, retainedNodes: !2)
!3038 = !DILocalVariable(name: "ctl", arg: 1, scope: !3037, file: !133, line: 770, type: !8)
!3039 = !DILocation(line: 0, scope: !3037)
!3040 = !{!"1567"}
!3041 = !DILocalVariable(name: "x", arg: 2, scope: !3037, file: !133, line: 770, type: !8)
!3042 = !{!"1568"}
!3043 = !DILocalVariable(name: "y", arg: 3, scope: !3037, file: !133, line: 770, type: !8)
!3044 = !{!"1569"}
!3045 = !DILocation(line: 772, column: 14, scope: !3037)
!3046 = !{!"1570"}
!3047 = !DILocation(line: 772, column: 24, scope: !3037)
!3048 = !{!"1571"}
!3049 = !DILocation(line: 772, column: 19, scope: !3037)
!3050 = !{!"1572"}
!3051 = !DILocation(line: 772, column: 11, scope: !3037)
!3052 = !{!"1573"}
!3053 = !DILocation(line: 772, column: 2, scope: !3037)
!3054 = !{!"1574"}
!3055 = distinct !DISubprogram(name: "br_i15_to_monty", scope: !47, file: !47, line: 29, type: !3056, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !2)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !156, !160}
!3058 = !DILocalVariable(name: "x", arg: 1, scope: !3055, file: !47, line: 29, type: !156)
!3059 = !DILocation(line: 0, scope: !3055)
!3060 = !{!"1575"}
!3061 = !DILocalVariable(name: "m", arg: 2, scope: !3055, file: !47, line: 29, type: !160)
!3062 = !{!"1576"}
!3063 = !DILocation(line: 33, column: 12, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3055, file: !47, line: 33, column: 2)
!3065 = !{!"1577"}
!3066 = !{!"1578"}
!3067 = !{!"1579"}
!3068 = !DILocation(line: 33, column: 17, scope: !3064)
!3069 = !{!"1580"}
!3070 = !DILocation(line: 33, column: 23, scope: !3064)
!3071 = !{!"1581"}
!3072 = !DILocalVariable(name: "k", scope: !3055, file: !47, line: 31, type: !12)
!3073 = !{!"1582"}
!3074 = !DILocation(line: 33, column: 7, scope: !3064)
!3075 = !{!"1583"}
!3076 = !DILocation(line: 0, scope: !3064)
!3077 = !{!"1584"}
!3078 = !{!"1585"}
!3079 = !DILocation(line: 33, column: 31, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3064, file: !47, line: 33, column: 2)
!3081 = !{!"1586"}
!3082 = !DILocation(line: 33, column: 2, scope: !3064)
!3083 = !{!"1587"}
!3084 = !DILocation(line: 34, column: 3, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3080, file: !47, line: 33, column: 42)
!3086 = !{!"1588"}
!3087 = !DILocation(line: 35, column: 2, scope: !3085)
!3088 = !{!"1589"}
!3089 = !DILocation(line: 33, column: 38, scope: !3080)
!3090 = !{!"1590"}
!3091 = !{!"1591"}
!3092 = !DILocation(line: 33, column: 2, scope: !3080)
!3093 = distinct !{!3093, !3082, !3094, !128}
!3094 = !DILocation(line: 35, column: 2, scope: !3064)
!3095 = !{!"1592"}
!3096 = !DILocation(line: 36, column: 1, scope: !3055)
!3097 = !{!"1593"}
!3098 = distinct !DISubprogram(name: "br_rsa_i15_pkcs1_sign", scope: !49, file: !49, line: 29, type: !3099, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !2)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!8, !83, !83, !29, !3101, !56}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3103)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !3104, line: 205, baseType: !3105)
!3104 = !DIFile(filename: "../BearSSL/inc/bearssl_rsa.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i15_pkcs1")
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3104, line: 182, size: 704, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !3105, file: !3104, line: 184, baseType: !8, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3105, file: !3104, line: 186, baseType: !56, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !3105, file: !3104, line: 188, baseType: !29, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3105, file: !3104, line: 190, baseType: !56, size: 64, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !3105, file: !3104, line: 192, baseType: !29, size: 64, offset: 256)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !3105, file: !3104, line: 194, baseType: !56, size: 64, offset: 320)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !3105, file: !3104, line: 196, baseType: !29, size: 64, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !3105, file: !3104, line: 198, baseType: !56, size: 64, offset: 448)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !3105, file: !3104, line: 200, baseType: !29, size: 64, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !3105, file: !3104, line: 202, baseType: !56, size: 64, offset: 576)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !3105, file: !3104, line: 204, baseType: !29, size: 64, offset: 640)
!3118 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !3098, file: !49, line: 29, type: !83)
!3119 = !DILocation(line: 0, scope: !3098)
!3120 = !{!"1594"}
!3121 = !DILocalVariable(name: "hash", arg: 2, scope: !3098, file: !49, line: 30, type: !83)
!3122 = !{!"1595"}
!3123 = !DILocalVariable(name: "hash_len", arg: 3, scope: !3098, file: !49, line: 30, type: !29)
!3124 = !{!"1596"}
!3125 = !DILocalVariable(name: "sk", arg: 4, scope: !3098, file: !49, line: 31, type: !3101)
!3126 = !{!"1597"}
!3127 = !DILocalVariable(name: "x", arg: 5, scope: !3098, file: !49, line: 31, type: !56)
!3128 = !{!"1598"}
!3129 = !DILocation(line: 33, column: 58, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3098, file: !49, line: 33, column: 6)
!3131 = !{!"1599"}
!3132 = !{!"1600"}
!3133 = !DILocation(line: 33, column: 7, scope: !3130)
!3134 = !{!"1601"}
!3135 = !{!"1602"}
!3136 = !DILocation(line: 33, column: 6, scope: !3098)
!3137 = !{!"1603"}
!3138 = !DILocation(line: 34, column: 3, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3130, file: !49, line: 33, column: 72)
!3140 = !{!"1604"}
!3141 = !DILocation(line: 36, column: 9, scope: !3098)
!3142 = !{!"1605"}
!3143 = !DILocation(line: 36, column: 2, scope: !3098)
!3144 = !{!"1606"}
!3145 = !{!"1607"}
!3146 = !DILocation(line: 37, column: 1, scope: !3098)
!3147 = !{!"1608"}
!3148 = distinct !DISubprogram(name: "br_rsa_i15_private", scope: !51, file: !51, line: 32, type: !3149, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !2)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!8, !56, !3151}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3153)
!3153 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !3104, line: 205, baseType: !3154)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3104, line: 182, size: 704, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !3154, file: !3104, line: 184, baseType: !8, size: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3154, file: !3104, line: 186, baseType: !56, size: 64, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !3154, file: !3104, line: 188, baseType: !29, size: 64, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3154, file: !3104, line: 190, baseType: !56, size: 64, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !3154, file: !3104, line: 192, baseType: !29, size: 64, offset: 256)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !3154, file: !3104, line: 194, baseType: !56, size: 64, offset: 320)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !3154, file: !3104, line: 196, baseType: !29, size: 64, offset: 384)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !3154, file: !3104, line: 198, baseType: !56, size: 64, offset: 448)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !3154, file: !3104, line: 200, baseType: !29, size: 64, offset: 512)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !3154, file: !3104, line: 202, baseType: !56, size: 64, offset: 576)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !3154, file: !3104, line: 204, baseType: !29, size: 64, offset: 640)
!3167 = !{!"1609"}
!3168 = !DILocalVariable(name: "x", arg: 1, scope: !3148, file: !51, line: 32, type: !56)
!3169 = !DILocation(line: 0, scope: !3148)
!3170 = !{!"1610"}
!3171 = !DILocalVariable(name: "sk", arg: 2, scope: !3148, file: !51, line: 32, type: !3151)
!3172 = !{!"1611"}
!3173 = !DILocalVariable(name: "tmp", scope: !3148, file: !51, line: 39, type: !3174)
!3174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 18064, elements: !3175)
!3175 = !{!3176}
!3176 = !DISubrange(count: 1129)
!3177 = !DILocation(line: 39, column: 11, scope: !3148)
!3178 = !{!"1612"}
!3179 = !DILocation(line: 49, column: 10, scope: !3148)
!3180 = !{!"1613"}
!3181 = !{!"1614"}
!3182 = !DILocalVariable(name: "p", scope: !3148, file: !51, line: 34, type: !83)
!3183 = !{!"1615"}
!3184 = !DILocation(line: 50, column: 13, scope: !3148)
!3185 = !{!"1616"}
!3186 = !{!"1617"}
!3187 = !DILocalVariable(name: "plen", scope: !3148, file: !51, line: 35, type: !29)
!3188 = !{!"1618"}
!3189 = !DILocation(line: 51, column: 2, scope: !3148)
!3190 = !{!"1619"}
!3191 = !{!"1620"}
!3192 = !{!"1621"}
!3193 = !{!"1622"}
!3194 = !{!"1623"}
!3195 = !DILocation(line: 51, column: 14, scope: !3148)
!3196 = !{!"1624"}
!3197 = !DILocation(line: 51, column: 18, scope: !3148)
!3198 = !{!"1625"}
!3199 = !DILocation(line: 51, column: 21, scope: !3148)
!3200 = !{!"1626"}
!3201 = !{!"1627"}
!3202 = !DILocation(line: 51, column: 24, scope: !3148)
!3203 = !{!"1628"}
!3204 = !{!"1629"}
!3205 = !{!"1630"}
!3206 = !{!"1631"}
!3207 = !DILocation(line: 52, column: 5, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3148, file: !51, line: 51, column: 30)
!3209 = !{!"1632"}
!3210 = !{!"1633"}
!3211 = !DILocation(line: 53, column: 8, scope: !3208)
!3212 = !{!"1634"}
!3213 = !{!"1635"}
!3214 = distinct !{!3214, !3189, !3215, !128}
!3215 = !DILocation(line: 54, column: 2, scope: !3148)
!3216 = !{!"1636"}
!3217 = !DILocation(line: 55, column: 10, scope: !3148)
!3218 = !{!"1637"}
!3219 = !{!"1638"}
!3220 = !DILocalVariable(name: "q", scope: !3148, file: !51, line: 34, type: !83)
!3221 = !{!"1639"}
!3222 = !DILocation(line: 56, column: 13, scope: !3148)
!3223 = !{!"1640"}
!3224 = !{!"1641"}
!3225 = !DILocalVariable(name: "qlen", scope: !3148, file: !51, line: 35, type: !29)
!3226 = !{!"1642"}
!3227 = !DILocation(line: 57, column: 2, scope: !3148)
!3228 = !{!"1643"}
!3229 = !{!"1644"}
!3230 = !{!"1645"}
!3231 = !{!"1646"}
!3232 = !{!"1647"}
!3233 = !DILocation(line: 57, column: 14, scope: !3148)
!3234 = !{!"1648"}
!3235 = !DILocation(line: 57, column: 18, scope: !3148)
!3236 = !{!"1649"}
!3237 = !DILocation(line: 57, column: 21, scope: !3148)
!3238 = !{!"1650"}
!3239 = !{!"1651"}
!3240 = !DILocation(line: 57, column: 24, scope: !3148)
!3241 = !{!"1652"}
!3242 = !{!"1653"}
!3243 = !{!"1654"}
!3244 = !{!"1655"}
!3245 = !DILocation(line: 58, column: 5, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3148, file: !51, line: 57, column: 30)
!3247 = !{!"1656"}
!3248 = !{!"1657"}
!3249 = !DILocation(line: 59, column: 8, scope: !3246)
!3250 = !{!"1658"}
!3251 = !{!"1659"}
!3252 = distinct !{!3252, !3227, !3253, !128}
!3253 = !DILocation(line: 60, column: 2, scope: !3148)
!3254 = !{!"1660"}
!3255 = !DILocation(line: 65, column: 18, scope: !3148)
!3256 = !{!"1661"}
!3257 = !DILocation(line: 65, column: 13, scope: !3148)
!3258 = !{!"1662"}
!3259 = !{!"1663"}
!3260 = !{!"1664"}
!3261 = !{!"1665"}
!3262 = !DILocation(line: 65, column: 40, scope: !3148)
!3263 = !{!"1666"}
!3264 = !DILocalVariable(name: "z", scope: !3148, file: !51, line: 40, type: !53)
!3265 = !{!"1667"}
!3266 = !DILocalVariable(name: "fwlen", scope: !3148, file: !51, line: 36, type: !29)
!3267 = !{!"1668"}
!3268 = !DILocation(line: 67, column: 2, scope: !3148)
!3269 = !{!"1669"}
!3270 = !{!"1670"}
!3271 = !{!"1671"}
!3272 = !{!"1672"}
!3273 = !{!"1673"}
!3274 = !DILocation(line: 67, column: 11, scope: !3148)
!3275 = !{!"1674"}
!3276 = !{!"1675"}
!3277 = !DILocation(line: 68, column: 5, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3148, file: !51, line: 67, column: 16)
!3279 = !{!"1676"}
!3280 = !{!"1677"}
!3281 = !DILocation(line: 69, column: 9, scope: !3278)
!3282 = !{!"1678"}
!3283 = !{!"1679"}
!3284 = distinct !{!3284, !3268, !3285, !128}
!3285 = !DILocation(line: 70, column: 2, scope: !3148)
!3286 = !{!"1680"}
!3287 = !DILocation(line: 74, column: 18, scope: !3148)
!3288 = !{!"1681"}
!3289 = !DILocation(line: 74, column: 8, scope: !3148)
!3290 = !{!"1682"}
!3291 = !{!"1683"}
!3292 = !DILocation(line: 79, column: 8, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3148, file: !51, line: 79, column: 6)
!3294 = !{!"1684"}
!3295 = !DILocation(line: 79, column: 16, scope: !3293)
!3296 = !{!"1685"}
!3297 = !DILocation(line: 79, column: 6, scope: !3148)
!3298 = !{!"1686"}
!3299 = !DILocation(line: 80, column: 3, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3293, file: !51, line: 79, column: 24)
!3301 = !{!"1687"}
!3302 = !DILocation(line: 86, column: 14, scope: !3148)
!3303 = !{!"1688"}
!3304 = !{!"1689"}
!3305 = !DILocation(line: 86, column: 23, scope: !3148)
!3306 = !{!"1690"}
!3307 = !DILocation(line: 86, column: 28, scope: !3148)
!3308 = !{!"1691"}
!3309 = !DILocation(line: 86, column: 9, scope: !3148)
!3310 = !{!"1692"}
!3311 = !DILocalVariable(name: "xlen", scope: !3148, file: !51, line: 38, type: !29)
!3312 = !{!"1693"}
!3313 = !DILocation(line: 91, column: 7, scope: !3148)
!3314 = !{!"1694"}
!3315 = !DILocalVariable(name: "mq", scope: !3148, file: !51, line: 41, type: !156)
!3316 = !{!"1695"}
!3317 = !DILocation(line: 92, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3148, file: !51, line: 92, column: 6)
!3319 = !{!"1696"}
!3320 = !DILocation(line: 92, column: 21, scope: !3318)
!3321 = !{!"1697"}
!3322 = !DILocation(line: 92, column: 26, scope: !3318)
!3323 = !{!"1698"}
!3324 = !DILocation(line: 92, column: 6, scope: !3148)
!3325 = !{!"1699"}
!3326 = !DILocation(line: 93, column: 6, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3318, file: !51, line: 92, column: 32)
!3328 = !{!"1700"}
!3329 = !{!"1701"}
!3330 = !DILocation(line: 94, column: 2, scope: !3327)
!3331 = !{!"1702"}
!3332 = !{!"1703"}
!3333 = !{!"1704"}
!3334 = !DILocation(line: 99, column: 2, scope: !3148)
!3335 = !{!"1705"}
!3336 = !DILocation(line: 104, column: 10, scope: !3148)
!3337 = !{!"1706"}
!3338 = !DILocalVariable(name: "t1", scope: !3148, file: !51, line: 41, type: !156)
!3339 = !{!"1707"}
!3340 = !DILocation(line: 105, column: 2, scope: !3148)
!3341 = !{!"1708"}
!3342 = !DILocation(line: 112, column: 14, scope: !3148)
!3343 = !{!"1709"}
!3344 = !DILocation(line: 112, column: 10, scope: !3148)
!3345 = !{!"1710"}
!3346 = !DILocalVariable(name: "t2", scope: !3148, file: !51, line: 41, type: !156)
!3347 = !{!"1711"}
!3348 = !DILocation(line: 113, column: 18, scope: !3148)
!3349 = !{!"1712"}
!3350 = !{!"1713"}
!3351 = !DILocation(line: 113, column: 2, scope: !3148)
!3352 = !{!"1714"}
!3353 = !DILocation(line: 114, column: 2, scope: !3148)
!3354 = !{!"1715"}
!3355 = !DILocation(line: 125, column: 14, scope: !3148)
!3356 = !{!"1716"}
!3357 = !DILocation(line: 125, column: 10, scope: !3148)
!3358 = !{!"1717"}
!3359 = !DILocalVariable(name: "t3", scope: !3148, file: !51, line: 41, type: !156)
!3360 = !{!"1718"}
!3361 = !DILocation(line: 126, column: 16, scope: !3148)
!3362 = !{!"1719"}
!3363 = !DILocation(line: 126, column: 2, scope: !3148)
!3364 = !{!"1720"}
!3365 = !DILocalVariable(name: "u", scope: !3148, file: !51, line: 38, type: !29)
!3366 = !{!"1721"}
!3367 = !DILocalVariable(name: "r", scope: !3148, file: !51, line: 42, type: !8)
!3368 = !{!"1722"}
!3369 = !DILocation(line: 129, column: 2, scope: !3148)
!3370 = !{!"1723"}
!3371 = !{!"1724"}
!3372 = !{!"1725"}
!3373 = !{!"1726"}
!3374 = !{!"1727"}
!3375 = !DILocation(line: 129, column: 11, scope: !3148)
!3376 = !{!"1728"}
!3377 = !{!"1729"}
!3378 = !DILocation(line: 132, column: 5, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3148, file: !51, line: 129, column: 16)
!3380 = !{!"1730"}
!3381 = !{!"1731"}
!3382 = !DILocation(line: 133, column: 8, scope: !3379)
!3383 = !{!"1732"}
!3384 = !{!"1733"}
!3385 = !{!"1734"}
!3386 = !{!"1735"}
!3387 = !DILocalVariable(name: "wn", scope: !3379, file: !51, line: 130, type: !8)
!3388 = !DILocation(line: 0, scope: !3379)
!3389 = !{!"1736"}
!3390 = !DILocation(line: 134, column: 8, scope: !3379)
!3391 = !{!"1737"}
!3392 = !{!"1738"}
!3393 = !{!"1739"}
!3394 = !DILocalVariable(name: "wx", scope: !3379, file: !51, line: 130, type: !8)
!3395 = !{!"1740"}
!3396 = !DILocation(line: 135, column: 18, scope: !3379)
!3397 = !{!"1741"}
!3398 = !DILocation(line: 135, column: 12, scope: !3379)
!3399 = !{!"1742"}
!3400 = !DILocation(line: 135, column: 24, scope: !3379)
!3401 = !{!"1743"}
!3402 = !DILocation(line: 135, column: 30, scope: !3379)
!3403 = !{!"1744"}
!3404 = !{!"1745"}
!3405 = distinct !{!3405, !3369, !3406, !128}
!3406 = !DILocation(line: 136, column: 2, scope: !3148)
!3407 = !{!"1746"}
!3408 = !DILocation(line: 141, column: 14, scope: !3148)
!3409 = !{!"1747"}
!3410 = !DILocation(line: 141, column: 10, scope: !3148)
!3411 = !{!"1748"}
!3412 = !DILocalVariable(name: "mp", scope: !3148, file: !51, line: 41, type: !156)
!3413 = !{!"1749"}
!3414 = !DILocation(line: 142, column: 2, scope: !3148)
!3415 = !{!"1750"}
!3416 = !{!"1751"}
!3417 = !DILocation(line: 142, column: 24, scope: !3148)
!3418 = !{!"1752"}
!3419 = !{!"1753"}
!3420 = !DILocation(line: 147, column: 22, scope: !3148)
!3421 = !{!"1754"}
!3422 = !{!"1755"}
!3423 = !DILocation(line: 147, column: 8, scope: !3148)
!3424 = !{!"1756"}
!3425 = !DILocalVariable(name: "q0i", scope: !3148, file: !51, line: 37, type: !157)
!3426 = !{!"1757"}
!3427 = !DILocation(line: 148, column: 10, scope: !3148)
!3428 = !{!"1758"}
!3429 = !DILocalVariable(name: "s2", scope: !3148, file: !51, line: 41, type: !156)
!3430 = !{!"1759"}
!3431 = !DILocation(line: 149, column: 2, scope: !3148)
!3432 = !{!"1760"}
!3433 = !DILocation(line: 150, column: 33, scope: !3148)
!3434 = !{!"1761"}
!3435 = !{!"1762"}
!3436 = !DILocation(line: 150, column: 41, scope: !3148)
!3437 = !{!"1763"}
!3438 = !{!"1764"}
!3439 = !DILocation(line: 151, column: 10, scope: !3148)
!3440 = !{!"1765"}
!3441 = !DILocation(line: 151, column: 6, scope: !3148)
!3442 = !{!"1766"}
!3443 = !DILocation(line: 151, column: 28, scope: !3148)
!3444 = !{!"1767"}
!3445 = !DILocation(line: 151, column: 24, scope: !3148)
!3446 = !{!"1768"}
!3447 = !DILocation(line: 150, column: 7, scope: !3148)
!3448 = !{!"1769"}
!3449 = !DILocation(line: 150, column: 4, scope: !3148)
!3450 = !{!"1770"}
!3451 = !{!"1771"}
!3452 = !DILocation(line: 156, column: 22, scope: !3148)
!3453 = !{!"1772"}
!3454 = !{!"1773"}
!3455 = !DILocation(line: 156, column: 8, scope: !3148)
!3456 = !{!"1774"}
!3457 = !DILocalVariable(name: "p0i", scope: !3148, file: !51, line: 37, type: !157)
!3458 = !{!"1775"}
!3459 = !DILocation(line: 157, column: 14, scope: !3148)
!3460 = !{!"1776"}
!3461 = !DILocation(line: 157, column: 10, scope: !3148)
!3462 = !{!"1777"}
!3463 = !DILocalVariable(name: "s1", scope: !3148, file: !51, line: 41, type: !156)
!3464 = !{!"1778"}
!3465 = !DILocation(line: 158, column: 2, scope: !3148)
!3466 = !{!"1779"}
!3467 = !DILocation(line: 159, column: 33, scope: !3148)
!3468 = !{!"1780"}
!3469 = !{!"1781"}
!3470 = !DILocation(line: 159, column: 41, scope: !3148)
!3471 = !{!"1782"}
!3472 = !{!"1783"}
!3473 = !DILocation(line: 160, column: 10, scope: !3148)
!3474 = !{!"1784"}
!3475 = !DILocation(line: 160, column: 6, scope: !3148)
!3476 = !{!"1785"}
!3477 = !DILocation(line: 160, column: 28, scope: !3148)
!3478 = !{!"1786"}
!3479 = !DILocation(line: 160, column: 24, scope: !3148)
!3480 = !{!"1787"}
!3481 = !DILocation(line: 159, column: 7, scope: !3148)
!3482 = !{!"1788"}
!3483 = !DILocation(line: 159, column: 4, scope: !3148)
!3484 = !{!"1789"}
!3485 = !{!"1790"}
!3486 = !DILocation(line: 175, column: 14, scope: !3148)
!3487 = !{!"1791"}
!3488 = !DILocation(line: 175, column: 10, scope: !3148)
!3489 = !{!"1792"}
!3490 = !{!"1793"}
!3491 = !DILocation(line: 176, column: 14, scope: !3148)
!3492 = !{!"1794"}
!3493 = !DILocation(line: 176, column: 10, scope: !3148)
!3494 = !{!"1795"}
!3495 = !{!"1796"}
!3496 = !DILocation(line: 177, column: 2, scope: !3148)
!3497 = !{!"1797"}
!3498 = !DILocation(line: 178, column: 21, scope: !3148)
!3499 = !{!"1798"}
!3500 = !DILocation(line: 178, column: 2, scope: !3148)
!3501 = !{!"1799"}
!3502 = !DILocation(line: 179, column: 2, scope: !3148)
!3503 = !{!"1800"}
!3504 = !DILocation(line: 180, column: 31, scope: !3148)
!3505 = !{!"1801"}
!3506 = !{!"1802"}
!3507 = !DILocation(line: 180, column: 39, scope: !3148)
!3508 = !{!"1803"}
!3509 = !{!"1804"}
!3510 = !DILocation(line: 180, column: 2, scope: !3148)
!3511 = !{!"1805"}
!3512 = !DILocation(line: 181, column: 2, scope: !3148)
!3513 = !{!"1806"}
!3514 = !{!"1807"}
!3515 = !DILocation(line: 196, column: 2, scope: !3148)
!3516 = !{!"1808"}
!3517 = !DILocation(line: 202, column: 2, scope: !3148)
!3518 = !{!"1809"}
!3519 = !DILocation(line: 208, column: 9, scope: !3148)
!3520 = !{!"1810"}
!3521 = !DILocation(line: 208, column: 15, scope: !3148)
!3522 = !{!"1811"}
!3523 = !DILocation(line: 208, column: 13, scope: !3148)
!3524 = !{!"1812"}
!3525 = !DILocation(line: 208, column: 19, scope: !3148)
!3526 = !{!"1813"}
!3527 = !DILocation(line: 208, column: 2, scope: !3148)
!3528 = !{!"1814"}
!3529 = !{!"1815"}
!3530 = !DILocation(line: 209, column: 1, scope: !3148)
!3531 = !{!"1816"}
!3532 = distinct !DISubprogram(name: "br_i15_zero", scope: !133, file: !133, line: 1537, type: !773, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !2)
!3533 = !DILocalVariable(name: "x", arg: 1, scope: !3532, file: !133, line: 1537, type: !156)
!3534 = !DILocation(line: 0, scope: !3532)
!3535 = !{!"1817"}
!3536 = !DILocalVariable(name: "bit_len", arg: 2, scope: !3532, file: !133, line: 1537, type: !157)
!3537 = !{!"1818"}
!3538 = !DILocation(line: 1539, column: 5, scope: !3532)
!3539 = !{!"1819"}
!3540 = !{!"1820"}
!3541 = !DILocation(line: 1539, column: 8, scope: !3532)
!3542 = !{!"1821"}
!3543 = !DILocation(line: 1540, column: 2, scope: !3532)
!3544 = !{!"1822"}
!3545 = !DILocation(line: 1540, column: 17, scope: !3532)
!3546 = !{!"1823"}
!3547 = !DILocation(line: 1540, column: 25, scope: !3532)
!3548 = !{!"1824"}
!3549 = !DILocation(line: 1540, column: 31, scope: !3532)
!3550 = !{!"1825"}
!3551 = !DILocation(line: 1540, column: 15, scope: !3532)
!3552 = !{!"1826"}
!3553 = !DILocation(line: 1540, column: 37, scope: !3532)
!3554 = !{!"1827"}
!3555 = !{!"1828"}
!3556 = !DILocation(line: 1541, column: 1, scope: !3532)
!3557 = !{!"1829"}
!3558 = distinct !DISubprogram(name: "br_rsa_pkcs1_sig_pad", scope: !58, file: !58, line: 29, type: !3559, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !2)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!8, !83, !83, !29, !8, !56}
!3561 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !3558, file: !58, line: 29, type: !83)
!3562 = !DILocation(line: 0, scope: !3558)
!3563 = !{!"1830"}
!3564 = !DILocalVariable(name: "hash", arg: 2, scope: !3558, file: !58, line: 30, type: !83)
!3565 = !{!"1831"}
!3566 = !DILocalVariable(name: "hash_len", arg: 3, scope: !3558, file: !58, line: 30, type: !29)
!3567 = !{!"1832"}
!3568 = !DILocalVariable(name: "n_bitlen", arg: 4, scope: !3558, file: !58, line: 31, type: !8)
!3569 = !{!"1833"}
!3570 = !DILocalVariable(name: "x", arg: 5, scope: !3558, file: !58, line: 31, type: !56)
!3571 = !{!"1834"}
!3572 = !DILocation(line: 60, column: 19, scope: !3558)
!3573 = !{!"1835"}
!3574 = !DILocation(line: 60, column: 24, scope: !3558)
!3575 = !{!"1836"}
!3576 = !DILocation(line: 60, column: 9, scope: !3558)
!3577 = !{!"1837"}
!3578 = !DILocalVariable(name: "xlen", scope: !3558, file: !58, line: 33, type: !29)
!3579 = !{!"1838"}
!3580 = !DILocation(line: 62, column: 15, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3558, file: !58, line: 62, column: 6)
!3582 = !{!"1839"}
!3583 = !DILocation(line: 62, column: 6, scope: !3558)
!3584 = !{!"1840"}
!3585 = !DILocation(line: 63, column: 23, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !58, line: 63, column: 7)
!3587 = distinct !DILexicalBlock(scope: !3581, file: !58, line: 62, column: 24)
!3588 = !{!"1841"}
!3589 = !DILocation(line: 63, column: 12, scope: !3586)
!3590 = !{!"1842"}
!3591 = !DILocation(line: 63, column: 7, scope: !3587)
!3592 = !{!"1843"}
!3593 = !DILocation(line: 64, column: 4, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3586, file: !58, line: 63, column: 29)
!3595 = !{!"1844"}
!3596 = !DILocation(line: 66, column: 3, scope: !3587)
!3597 = !{!"1845"}
!3598 = !DILocation(line: 66, column: 8, scope: !3587)
!3599 = !{!"1846"}
!3600 = !DILocation(line: 67, column: 3, scope: !3587)
!3601 = !{!"1847"}
!3602 = !DILocation(line: 67, column: 8, scope: !3587)
!3603 = !{!"1848"}
!3604 = !DILocation(line: 68, column: 12, scope: !3587)
!3605 = !{!"1849"}
!3606 = !DILocalVariable(name: "u", scope: !3558, file: !58, line: 33, type: !29)
!3607 = !{!"1850"}
!3608 = !DILocation(line: 69, column: 12, scope: !3587)
!3609 = !{!"1851"}
!3610 = !DILocation(line: 69, column: 25, scope: !3587)
!3611 = !{!"1852"}
!3612 = !DILocation(line: 69, column: 3, scope: !3587)
!3613 = !{!"1853"}
!3614 = !DILocation(line: 70, column: 7, scope: !3587)
!3615 = !{!"1854"}
!3616 = !DILocation(line: 70, column: 3, scope: !3587)
!3617 = !{!"1855"}
!3618 = !DILocation(line: 70, column: 12, scope: !3587)
!3619 = !{!"1856"}
!3620 = !DILocation(line: 71, column: 2, scope: !3587)
!3621 = !{!"1857"}
!3622 = !DILocation(line: 72, column: 8, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3581, file: !58, line: 71, column: 9)
!3624 = !{!"1858"}
!3625 = !{!"1859"}
!3626 = !{!"1860"}
!3627 = !DILocalVariable(name: "x3", scope: !3558, file: !58, line: 33, type: !29)
!3628 = !{!"1861"}
!3629 = !DILocation(line: 78, column: 18, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3623, file: !58, line: 78, column: 7)
!3631 = !{!"1862"}
!3632 = !DILocation(line: 78, column: 29, scope: !3630)
!3633 = !{!"1863"}
!3634 = !DILocation(line: 78, column: 12, scope: !3630)
!3635 = !{!"1864"}
!3636 = !DILocation(line: 78, column: 7, scope: !3623)
!3637 = !{!"1865"}
!3638 = !DILocation(line: 79, column: 4, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3630, file: !58, line: 78, column: 36)
!3640 = !{!"1866"}
!3641 = !DILocation(line: 81, column: 3, scope: !3623)
!3642 = !{!"1867"}
!3643 = !DILocation(line: 81, column: 8, scope: !3623)
!3644 = !{!"1868"}
!3645 = !DILocation(line: 82, column: 3, scope: !3623)
!3646 = !{!"1869"}
!3647 = !DILocation(line: 82, column: 8, scope: !3623)
!3648 = !{!"1870"}
!3649 = !DILocation(line: 83, column: 12, scope: !3623)
!3650 = !{!"1871"}
!3651 = !DILocation(line: 83, column: 17, scope: !3623)
!3652 = !{!"1872"}
!3653 = !DILocation(line: 83, column: 28, scope: !3623)
!3654 = !{!"1873"}
!3655 = !{!"1874"}
!3656 = !DILocation(line: 84, column: 12, scope: !3623)
!3657 = !{!"1875"}
!3658 = !DILocation(line: 84, column: 25, scope: !3623)
!3659 = !{!"1876"}
!3660 = !DILocation(line: 84, column: 3, scope: !3623)
!3661 = !{!"1877"}
!3662 = !DILocation(line: 85, column: 3, scope: !3623)
!3663 = !{!"1878"}
!3664 = !DILocation(line: 85, column: 8, scope: !3623)
!3665 = !{!"1879"}
!3666 = !DILocation(line: 86, column: 7, scope: !3623)
!3667 = !{!"1880"}
!3668 = !DILocation(line: 86, column: 3, scope: !3623)
!3669 = !{!"1881"}
!3670 = !DILocation(line: 86, column: 12, scope: !3623)
!3671 = !{!"1882"}
!3672 = !DILocation(line: 87, column: 17, scope: !3623)
!3673 = !{!"1883"}
!3674 = !DILocation(line: 87, column: 28, scope: !3623)
!3675 = !{!"1884"}
!3676 = !DILocation(line: 87, column: 14, scope: !3623)
!3677 = !{!"1885"}
!3678 = !DILocation(line: 87, column: 7, scope: !3623)
!3679 = !{!"1886"}
!3680 = !DILocation(line: 87, column: 3, scope: !3623)
!3681 = !{!"1887"}
!3682 = !DILocation(line: 87, column: 12, scope: !3623)
!3683 = !{!"1888"}
!3684 = !DILocation(line: 88, column: 7, scope: !3623)
!3685 = !{!"1889"}
!3686 = !DILocation(line: 88, column: 3, scope: !3623)
!3687 = !{!"1890"}
!3688 = !DILocation(line: 88, column: 12, scope: !3623)
!3689 = !{!"1891"}
!3690 = !DILocation(line: 89, column: 17, scope: !3623)
!3691 = !{!"1892"}
!3692 = !DILocation(line: 89, column: 14, scope: !3623)
!3693 = !{!"1893"}
!3694 = !DILocation(line: 89, column: 7, scope: !3623)
!3695 = !{!"1894"}
!3696 = !DILocation(line: 89, column: 3, scope: !3623)
!3697 = !{!"1895"}
!3698 = !DILocation(line: 89, column: 12, scope: !3623)
!3699 = !{!"1896"}
!3700 = !DILocation(line: 90, column: 7, scope: !3623)
!3701 = !{!"1897"}
!3702 = !DILocation(line: 90, column: 3, scope: !3623)
!3703 = !{!"1898"}
!3704 = !DILocation(line: 90, column: 12, scope: !3623)
!3705 = !{!"1899"}
!3706 = !DILocation(line: 91, column: 12, scope: !3623)
!3707 = !{!"1900"}
!3708 = !DILocation(line: 91, column: 16, scope: !3623)
!3709 = !{!"1901"}
!3710 = !DILocation(line: 91, column: 34, scope: !3623)
!3711 = !{!"1902"}
!3712 = !DILocation(line: 91, column: 3, scope: !3623)
!3713 = !{!"1903"}
!3714 = !DILocation(line: 92, column: 11, scope: !3623)
!3715 = !{!"1904"}
!3716 = !DILocation(line: 92, column: 5, scope: !3623)
!3717 = !{!"1905"}
!3718 = !{!"1906"}
!3719 = !DILocation(line: 93, column: 7, scope: !3623)
!3720 = !{!"1907"}
!3721 = !{!"1908"}
!3722 = !DILocation(line: 93, column: 3, scope: !3623)
!3723 = !{!"1909"}
!3724 = !DILocation(line: 93, column: 11, scope: !3623)
!3725 = !{!"1910"}
!3726 = !DILocation(line: 94, column: 7, scope: !3623)
!3727 = !{!"1911"}
!3728 = !{!"1912"}
!3729 = !DILocation(line: 94, column: 3, scope: !3623)
!3730 = !{!"1913"}
!3731 = !DILocation(line: 94, column: 11, scope: !3623)
!3732 = !{!"1914"}
!3733 = !DILocation(line: 95, column: 7, scope: !3623)
!3734 = !{!"1915"}
!3735 = !{!"1916"}
!3736 = !DILocation(line: 95, column: 3, scope: !3623)
!3737 = !{!"1917"}
!3738 = !DILocation(line: 95, column: 11, scope: !3623)
!3739 = !{!"1918"}
!3740 = !DILocation(line: 96, column: 13, scope: !3623)
!3741 = !{!"1919"}
!3742 = !DILocation(line: 96, column: 7, scope: !3623)
!3743 = !{!"1920"}
!3744 = !{!"1921"}
!3745 = !DILocation(line: 96, column: 3, scope: !3623)
!3746 = !{!"1922"}
!3747 = !DILocation(line: 96, column: 11, scope: !3623)
!3748 = !{!"1923"}
!3749 = !{!"1924"}
!3750 = !DILocation(line: 0, scope: !3581)
!3751 = !{!"1925"}
!3752 = !{!"1926"}
!3753 = !DILocation(line: 98, column: 11, scope: !3558)
!3754 = !{!"1927"}
!3755 = !DILocation(line: 98, column: 2, scope: !3558)
!3756 = !{!"1928"}
!3757 = !DILocation(line: 99, column: 2, scope: !3558)
!3758 = !{!"1929"}
!3759 = !{!"1930"}
!3760 = !DILocation(line: 100, column: 1, scope: !3558)
!3761 = !{!"1931"}
!3762 = distinct !DISubprogram(name: "sign_wrapper", scope: !61, file: !61, line: 3, type: !3763, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !2)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{null, !83, !83, !29, !3765, !56}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3767)
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !3104, line: 205, baseType: !3768)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3104, line: 182, size: 704, elements: !3769)
!3769 = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !3768, file: !3104, line: 184, baseType: !8, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3768, file: !3104, line: 186, baseType: !56, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !3768, file: !3104, line: 188, baseType: !29, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3768, file: !3104, line: 190, baseType: !56, size: 64, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !3768, file: !3104, line: 192, baseType: !29, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !3768, file: !3104, line: 194, baseType: !56, size: 64, offset: 320)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !3768, file: !3104, line: 196, baseType: !29, size: 64, offset: 384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !3768, file: !3104, line: 198, baseType: !56, size: 64, offset: 448)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !3768, file: !3104, line: 200, baseType: !29, size: 64, offset: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !3768, file: !3104, line: 202, baseType: !56, size: 64, offset: 576)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !3768, file: !3104, line: 204, baseType: !29, size: 64, offset: 640)
!3781 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !3762, file: !61, line: 3, type: !83)
!3782 = !DILocation(line: 0, scope: !3762)
!3783 = !{!"1932"}
!3784 = !DILocalVariable(name: "hash", arg: 2, scope: !3762, file: !61, line: 4, type: !83)
!3785 = !{!"1933"}
!3786 = !DILocalVariable(name: "hash_len", arg: 3, scope: !3762, file: !61, line: 4, type: !29)
!3787 = !{!"1934"}
!3788 = !DILocalVariable(name: "sk", arg: 4, scope: !3762, file: !61, line: 5, type: !3765)
!3789 = !{!"1935"}
!3790 = !DILocalVariable(name: "x", arg: 5, scope: !3762, file: !61, line: 5, type: !56)
!3791 = !{!"1936"}
!3792 = !DILocation(line: 6, column: 12, scope: !3762)
!3793 = !{!"1937"}
!3794 = !DILocation(line: 6, column: 2, scope: !3762)
!3795 = !{!"1938"}
!3796 = !DILocation(line: 7, column: 12, scope: !3762)
!3797 = !{!"1939"}
!3798 = !DILocation(line: 7, column: 2, scope: !3762)
!3799 = !{!"1940"}
!3800 = !DILocation(line: 8, column: 12, scope: !3762)
!3801 = !{!"1941"}
!3802 = !DILocation(line: 8, column: 2, scope: !3762)
!3803 = !{!"1942"}
!3804 = !DILocation(line: 9, column: 12, scope: !3762)
!3805 = !{!"1943"}
!3806 = !DILocation(line: 9, column: 2, scope: !3762)
!3807 = !{!"1944"}
!3808 = !DILocation(line: 10, column: 12, scope: !3762)
!3809 = !{!"1945"}
!3810 = !DILocation(line: 10, column: 2, scope: !3762)
!3811 = !{!"1946"}
!3812 = !DILocation(line: 12, column: 30, scope: !3762)
!3813 = !{!"1947"}
!3814 = !{!"1948"}
!3815 = !DILocation(line: 12, column: 12, scope: !3762)
!3816 = !{!"1949"}
!3817 = !DILocation(line: 12, column: 2, scope: !3762)
!3818 = !{!"1950"}
!3819 = !DILocation(line: 13, column: 30, scope: !3762)
!3820 = !{!"1951"}
!3821 = !{!"1952"}
!3822 = !DILocation(line: 13, column: 12, scope: !3762)
!3823 = !{!"1953"}
!3824 = !DILocation(line: 13, column: 2, scope: !3762)
!3825 = !{!"1954"}
!3826 = !DILocation(line: 14, column: 30, scope: !3762)
!3827 = !{!"1955"}
!3828 = !{!"1956"}
!3829 = !DILocation(line: 14, column: 12, scope: !3762)
!3830 = !{!"1957"}
!3831 = !DILocation(line: 14, column: 2, scope: !3762)
!3832 = !{!"1958"}
!3833 = !DILocation(line: 15, column: 30, scope: !3762)
!3834 = !{!"1959"}
!3835 = !{!"1960"}
!3836 = !DILocation(line: 15, column: 12, scope: !3762)
!3837 = !{!"1961"}
!3838 = !DILocation(line: 15, column: 2, scope: !3762)
!3839 = !{!"1962"}
!3840 = !DILocation(line: 16, column: 30, scope: !3762)
!3841 = !{!"1963"}
!3842 = !{!"1964"}
!3843 = !DILocation(line: 16, column: 12, scope: !3762)
!3844 = !{!"1965"}
!3845 = !DILocation(line: 16, column: 2, scope: !3762)
!3846 = !{!"1966"}
!3847 = !DILocation(line: 18, column: 30, scope: !3762)
!3848 = !{!"1967"}
!3849 = !{!"1968"}
!3850 = !DILocation(line: 18, column: 12, scope: !3762)
!3851 = !{!"1969"}
!3852 = !DILocation(line: 18, column: 2, scope: !3762)
!3853 = !{!"1970"}
!3854 = !DILocation(line: 19, column: 30, scope: !3762)
!3855 = !{!"1971"}
!3856 = !{!"1972"}
!3857 = !DILocation(line: 19, column: 12, scope: !3762)
!3858 = !{!"1973"}
!3859 = !DILocation(line: 19, column: 2, scope: !3762)
!3860 = !{!"1974"}
!3861 = !DILocation(line: 20, column: 30, scope: !3762)
!3862 = !{!"1975"}
!3863 = !{!"1976"}
!3864 = !DILocation(line: 20, column: 12, scope: !3762)
!3865 = !{!"1977"}
!3866 = !DILocation(line: 20, column: 2, scope: !3762)
!3867 = !{!"1978"}
!3868 = !DILocation(line: 21, column: 30, scope: !3762)
!3869 = !{!"1979"}
!3870 = !{!"1980"}
!3871 = !DILocation(line: 21, column: 12, scope: !3762)
!3872 = !{!"1981"}
!3873 = !DILocation(line: 21, column: 2, scope: !3762)
!3874 = !{!"1982"}
!3875 = !DILocation(line: 22, column: 30, scope: !3762)
!3876 = !{!"1983"}
!3877 = !{!"1984"}
!3878 = !DILocation(line: 22, column: 12, scope: !3762)
!3879 = !{!"1985"}
!3880 = !DILocation(line: 22, column: 2, scope: !3762)
!3881 = !{!"1986"}
!3882 = !DILocation(line: 23, column: 30, scope: !3762)
!3883 = !{!"1987"}
!3884 = !{!"1988"}
!3885 = !DILocation(line: 23, column: 12, scope: !3762)
!3886 = !{!"1989"}
!3887 = !DILocation(line: 23, column: 2, scope: !3762)
!3888 = !{!"1990"}
!3889 = !DILocation(line: 24, column: 30, scope: !3762)
!3890 = !{!"1991"}
!3891 = !{!"1992"}
!3892 = !DILocation(line: 24, column: 12, scope: !3762)
!3893 = !{!"1993"}
!3894 = !DILocation(line: 24, column: 2, scope: !3762)
!3895 = !{!"1994"}
!3896 = !DILocation(line: 26, column: 12, scope: !3762)
!3897 = !{!"1995"}
!3898 = !DILocation(line: 26, column: 2, scope: !3762)
!3899 = !{!"1996"}
!3900 = !DILocation(line: 27, column: 12, scope: !3762)
!3901 = !{!"1997"}
!3902 = !DILocation(line: 27, column: 2, scope: !3762)
!3903 = !{!"1998"}
!3904 = !DILocation(line: 28, column: 12, scope: !3762)
!3905 = !{!"1999"}
!3906 = !DILocation(line: 28, column: 2, scope: !3762)
!3907 = !{!"2000"}
!3908 = !DILocation(line: 31, column: 2, scope: !3762)
!3909 = !{!"2001"}
!3910 = !DILocation(line: 32, column: 1, scope: !3762)
!3911 = !{!"2002"}
!3912 = distinct !DISubprogram(name: "sign_wrapper_t", scope: !61, file: !61, line: 50, type: !3913, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !2)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null}
!3915 = !{!"2003"}
!3916 = !DILocation(line: 52, column: 33, scope: !3912)
!3917 = !{!"2004"}
!3918 = !DILocalVariable(name: "hash_oid", scope: !3912, file: !61, line: 52, type: !83)
!3919 = !DILocation(line: 0, scope: !3912)
!3920 = !{!"2005"}
!3921 = !DILocation(line: 53, column: 30, scope: !3912)
!3922 = !{!"2006"}
!3923 = !DILocalVariable(name: "hash", scope: !3912, file: !61, line: 53, type: !83)
!3924 = !{!"2007"}
!3925 = !DILocation(line: 54, column: 20, scope: !3912)
!3926 = !{!"2008"}
!3927 = !DILocalVariable(name: "hash_len", scope: !3912, file: !61, line: 54, type: !29)
!3928 = !{!"2009"}
!3929 = !DILocalVariable(name: "key", scope: !3912, file: !61, line: 55, type: !3767)
!3930 = !DILocation(line: 55, column: 21, scope: !3912)
!3931 = !{!"2010"}
!3932 = !DILocation(line: 55, column: 27, scope: !3912)
!3933 = !{!"2011"}
!3934 = !DILocalVariable(name: "sk", scope: !3912, file: !61, line: 56, type: !3935)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3936 = !{!"2012"}
!3937 = !DILocation(line: 57, column: 22, scope: !3912)
!3938 = !{!"2013"}
!3939 = !DILocalVariable(name: "x", scope: !3912, file: !61, line: 57, type: !56)
!3940 = !{!"2014"}
!3941 = !DILocation(line: 58, column: 24, scope: !3912)
!3942 = !{!"2015"}
!3943 = !{!"2016"}
!3944 = !DILocalVariable(name: "p", scope: !3912, file: !61, line: 58, type: !56)
!3945 = !{!"2017"}
!3946 = !DILocation(line: 59, column: 24, scope: !3912)
!3947 = !{!"2018"}
!3948 = !{!"2019"}
!3949 = !DILocalVariable(name: "q", scope: !3912, file: !61, line: 59, type: !56)
!3950 = !{!"2020"}
!3951 = !DILocation(line: 60, column: 25, scope: !3912)
!3952 = !{!"2021"}
!3953 = !{!"2022"}
!3954 = !DILocalVariable(name: "dp", scope: !3912, file: !61, line: 60, type: !56)
!3955 = !{!"2023"}
!3956 = !DILocation(line: 61, column: 25, scope: !3912)
!3957 = !{!"2024"}
!3958 = !{!"2025"}
!3959 = !DILocalVariable(name: "dq", scope: !3912, file: !61, line: 61, type: !56)
!3960 = !{!"2026"}
!3961 = !DILocation(line: 62, column: 25, scope: !3912)
!3962 = !{!"2027"}
!3963 = !{!"2028"}
!3964 = !DILocalVariable(name: "iq", scope: !3912, file: !61, line: 62, type: !56)
!3965 = !{!"2029"}
!3966 = !DILocation(line: 64, column: 1, scope: !3912)
!3967 = !{!"2030"}
!3968 = !DILocation(line: 66, column: 5, scope: !3912)
!3969 = !{!"2031"}
!3970 = !DILocation(line: 66, column: 7, scope: !3912)
!3971 = !{!"2032"}
!3972 = !DILocation(line: 67, column: 5, scope: !3912)
!3973 = !{!"2033"}
!3974 = !DILocation(line: 67, column: 7, scope: !3912)
!3975 = !{!"2034"}
!3976 = !DILocation(line: 68, column: 5, scope: !3912)
!3977 = !{!"2035"}
!3978 = !DILocation(line: 68, column: 8, scope: !3912)
!3979 = !{!"2036"}
!3980 = !DILocation(line: 69, column: 5, scope: !3912)
!3981 = !{!"2037"}
!3982 = !DILocation(line: 69, column: 8, scope: !3912)
!3983 = !{!"2038"}
!3984 = !DILocation(line: 70, column: 5, scope: !3912)
!3985 = !{!"2039"}
!3986 = !DILocation(line: 70, column: 8, scope: !3912)
!3987 = !{!"2040"}
!3988 = !DILocation(line: 71, column: 1, scope: !3912)
!3989 = !{!"2041"}
!3990 = !DILocation(line: 72, column: 1, scope: !3912)
!3991 = !{!"2042"}
