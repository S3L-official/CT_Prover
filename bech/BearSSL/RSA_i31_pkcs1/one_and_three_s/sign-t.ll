; ModuleID = 'sign-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_rsa_private_key = type { i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64 }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !69 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !74, metadata !DIExpression()), !dbg !75, !psr.id !76
  call void @llvm.dbg.value(metadata i8* %1, metadata !77, metadata !DIExpression()), !dbg !75, !psr.id !78
  call void @llvm.dbg.value(metadata i8* %2, metadata !79, metadata !DIExpression()), !dbg !75, !psr.id !80
  call void @llvm.dbg.value(metadata i64 %3, metadata !81, metadata !DIExpression()), !dbg !75, !psr.id !82
  call void @llvm.dbg.value(metadata i8* %1, metadata !83, metadata !DIExpression()), !dbg !75, !psr.id !84
  call void @llvm.dbg.value(metadata i8* %2, metadata !85, metadata !DIExpression()), !dbg !75, !psr.id !88
  br label %5, !dbg !89, !psr.id !90

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ], !psr.id !91, !ValueTainted !92
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !75, !psr.id !93, !PointTainted !94
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !75, !psr.id !95, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %.0, metadata !85, metadata !DIExpression()), !dbg !75, !psr.id !96
  call void @llvm.dbg.value(metadata i8* %.01, metadata !83, metadata !DIExpression()), !dbg !75, !psr.id !97
  call void @llvm.dbg.value(metadata i64 %.02, metadata !81, metadata !DIExpression()), !dbg !75, !psr.id !98
  %6 = add i64 %.02, -1, !dbg !99, !psr.id !100, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %6, metadata !81, metadata !DIExpression()), !dbg !75, !psr.id !101
  %7 = icmp ugt i64 %.02, 0, !dbg !102, !psr.id !103, !ValueTainted !92
  br i1 %7, label %8, label %17, !dbg !89, !psr.id !104, !Tainted !105

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !106, !psr.id !108, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %9, metadata !85, metadata !DIExpression()), !dbg !75, !psr.id !109
  %10 = load i8, i8* %.0, align 1, !dbg !110, !psr.id !111, !ValueTainted !92
  %11 = zext i8 %10 to i32, !dbg !110, !psr.id !112, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %11, metadata !113, metadata !DIExpression()), !dbg !114, !psr.id !115
  %12 = load i8, i8* %.01, align 1, !dbg !116, !psr.id !117, !ValueTainted !92
  %13 = zext i8 %12 to i32, !dbg !116, !psr.id !118, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %13, metadata !119, metadata !DIExpression()), !dbg !114, !psr.id !120
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !121, !psr.id !122, !ValueTainted !92
  %15 = trunc i32 %14 to i8, !dbg !121, !psr.id !123, !ValueTainted !92
  store i8 %15, i8* %.01, align 1, !dbg !124, !psr.id !125
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !126, !psr.id !127, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %16, metadata !83, metadata !DIExpression()), !dbg !75, !psr.id !128
  br label %5, !dbg !89, !llvm.loop !129, !psr.id !132

17:                                               ; preds = %5
  ret void, !dbg !133, !psr.id !134
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !135 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !139, metadata !DIExpression()), !dbg !140, !psr.id !141
  call void @llvm.dbg.value(metadata i32 %1, metadata !142, metadata !DIExpression()), !dbg !140, !psr.id !143
  call void @llvm.dbg.value(metadata i32 %2, metadata !144, metadata !DIExpression()), !dbg !140, !psr.id !145
  %4 = sub i32 0, %0, !dbg !146, !psr.id !147, !ValueTainted !92
  %5 = xor i32 %1, %2, !dbg !148, !psr.id !149, !ValueTainted !92
  %6 = and i32 %4, %5, !dbg !150, !psr.id !151, !ValueTainted !92
  %7 = xor i32 %2, %6, !dbg !152, !psr.id !153, !ValueTainted !92
  ret i32 %7, !dbg !154, !psr.id !155
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i31_add(i32* %0, i32* %1, i32 %2) #0 !dbg !156 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !162, metadata !DIExpression()), !dbg !163, !psr.id !164
  call void @llvm.dbg.value(metadata i32* %1, metadata !165, metadata !DIExpression()), !dbg !163, !psr.id !166
  call void @llvm.dbg.value(metadata i32 %2, metadata !167, metadata !DIExpression()), !dbg !163, !psr.id !168
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !163, !psr.id !170
  %4 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !171, !psr.id !172, !PointTainted !94
  %5 = load i32, i32* %4, align 4, !dbg !171, !psr.id !173, !ValueTainted !92
  %6 = add i32 %5, 63, !dbg !174, !psr.id !175, !ValueTainted !92
  %7 = lshr i32 %6, 5, !dbg !176, !psr.id !177, !ValueTainted !92
  %8 = zext i32 %7 to i64, !dbg !178, !psr.id !179, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %8, metadata !180, metadata !DIExpression()), !dbg !163, !psr.id !181
  call void @llvm.dbg.value(metadata i64 1, metadata !182, metadata !DIExpression()), !dbg !163, !psr.id !183
  br label %9, !dbg !184, !psr.id !186

9:                                                ; preds = %22, %3
  %.01 = phi i32 [ 0, %3 ], [ %18, %22 ], !dbg !163, !psr.id !187, !ValueTainted !92
  %.0 = phi i64 [ 1, %3 ], [ %23, %22 ], !dbg !188, !psr.id !189
  call void @llvm.dbg.value(metadata i64 %.0, metadata !182, metadata !DIExpression()), !dbg !163, !psr.id !190
  call void @llvm.dbg.value(metadata i32 %.01, metadata !169, metadata !DIExpression()), !dbg !163, !psr.id !191
  %10 = icmp ult i64 %.0, %8, !dbg !192, !psr.id !194, !ValueTainted !92
  br i1 %10, label %11, label %24, !dbg !195, !psr.id !196, !Tainted !105

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !197, !psr.id !199, !PointTainted !94
  %13 = load i32, i32* %12, align 4, !dbg !197, !psr.id !200, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %13, metadata !201, metadata !DIExpression()), !dbg !202, !psr.id !203
  %14 = getelementptr inbounds i32, i32* %1, i64 %.0, !dbg !204, !psr.id !205
  %15 = load i32, i32* %14, align 4, !dbg !204, !psr.id !206, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %15, metadata !207, metadata !DIExpression()), !dbg !202, !psr.id !208
  %16 = add i32 %13, %15, !dbg !209, !psr.id !210, !ValueTainted !92
  %17 = add i32 %16, %.01, !dbg !211, !psr.id !212, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %17, metadata !213, metadata !DIExpression()), !dbg !202, !psr.id !214
  %18 = lshr i32 %17, 31, !dbg !215, !psr.id !216, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %18, metadata !169, metadata !DIExpression()), !dbg !163, !psr.id !217
  %19 = and i32 %17, 2147483647, !dbg !218, !psr.id !219, !ValueTainted !92
  %20 = call i32 @MUX.1(i32 %2, i32 %19, i32 %13), !dbg !220, !psr.id !221, !ValueTainted !92
  %21 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !222, !psr.id !223, !PointTainted !94
  store i32 %20, i32* %21, align 4, !dbg !224, !psr.id !225
  br label %22, !dbg !226, !psr.id !227

22:                                               ; preds = %11
  %23 = add i64 %.0, 1, !dbg !228, !psr.id !229
  call void @llvm.dbg.value(metadata i64 %23, metadata !182, metadata !DIExpression()), !dbg !163, !psr.id !230
  br label %9, !dbg !231, !llvm.loop !232, !psr.id !234

24:                                               ; preds = %9
  ret i32 %.01, !dbg !235, !psr.id !236
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.1(i32 %0, i32 %1, i32 %2) #0 !dbg !237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !238, metadata !DIExpression()), !dbg !239, !psr.id !240
  call void @llvm.dbg.value(metadata i32 %1, metadata !241, metadata !DIExpression()), !dbg !239, !psr.id !242
  call void @llvm.dbg.value(metadata i32 %2, metadata !243, metadata !DIExpression()), !dbg !239, !psr.id !244
  %4 = sub i32 0, %0, !dbg !245, !psr.id !246, !ValueTainted !92
  %5 = xor i32 %1, %2, !dbg !247, !psr.id !248, !ValueTainted !92
  %6 = and i32 %4, %5, !dbg !249, !psr.id !250, !ValueTainted !92
  %7 = xor i32 %2, %6, !dbg !251, !psr.id !252, !ValueTainted !92
  ret i32 %7, !dbg !253, !psr.id !254
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i31_bit_length(i32* %0, i64 %1) #0 !dbg !255 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !258, metadata !DIExpression()), !dbg !259, !psr.id !260
  call void @llvm.dbg.value(metadata i64 %1, metadata !261, metadata !DIExpression()), !dbg !259, !psr.id !262
  call void @llvm.dbg.value(metadata i32 0, metadata !263, metadata !DIExpression()), !dbg !259, !psr.id !264
  call void @llvm.dbg.value(metadata i32 0, metadata !265, metadata !DIExpression()), !dbg !259, !psr.id !266
  br label %3, !dbg !267, !psr.id !268

3:                                                ; preds = %6, %2
  %.02 = phi i32 [ 0, %2 ], [ %10, %6 ], !dbg !259, !psr.id !269, !ValueTainted !92
  %.01 = phi i64 [ %1, %2 ], [ %4, %6 ], !psr.id !270
  %.0 = phi i32 [ 0, %2 ], [ %12, %6 ], !dbg !259, !psr.id !271, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %.0, metadata !265, metadata !DIExpression()), !dbg !259, !psr.id !272
  call void @llvm.dbg.value(metadata i64 %.01, metadata !261, metadata !DIExpression()), !dbg !259, !psr.id !273
  call void @llvm.dbg.value(metadata i32 %.02, metadata !263, metadata !DIExpression()), !dbg !259, !psr.id !274
  %4 = add i64 %.01, -1, !dbg !275, !psr.id !276
  call void @llvm.dbg.value(metadata i64 %4, metadata !261, metadata !DIExpression()), !dbg !259, !psr.id !277
  %5 = icmp ugt i64 %.01, 0, !dbg !278, !psr.id !279
  br i1 %5, label %6, label %13, !dbg !267, !psr.id !280

6:                                                ; preds = %3
  %7 = call i32 @EQ(i32 %.02, i32 0), !dbg !281, !psr.id !283, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %7, metadata !284, metadata !DIExpression()), !dbg !285, !psr.id !286
  %8 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !287, !psr.id !288, !PointTainted !94
  %9 = load i32, i32* %8, align 4, !dbg !287, !psr.id !289, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %9, metadata !290, metadata !DIExpression()), !dbg !285, !psr.id !291
  %10 = call i32 @MUX.2(i32 %7, i32 %9, i32 %.02), !dbg !292, !psr.id !293, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %10, metadata !263, metadata !DIExpression()), !dbg !259, !psr.id !294
  %11 = trunc i64 %4 to i32, !dbg !295, !psr.id !296
  %12 = call i32 @MUX.2(i32 %7, i32 %11, i32 %.0), !dbg !297, !psr.id !298, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %12, metadata !265, metadata !DIExpression()), !dbg !259, !psr.id !299
  br label %3, !dbg !267, !llvm.loop !300, !psr.id !302

13:                                               ; preds = %3
  %14 = shl i32 %.0, 5, !dbg !303, !psr.id !304, !ValueTainted !92
  %15 = call i32 @BIT_LENGTH(i32 %.02), !dbg !305, !psr.id !306, !ValueTainted !92
  %16 = add i32 %14, %15, !dbg !307, !psr.id !308, !ValueTainted !92
  ret i32 %16, !dbg !309, !psr.id !310
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !311 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !314, metadata !DIExpression()), !dbg !315, !psr.id !316
  call void @llvm.dbg.value(metadata i32 %1, metadata !317, metadata !DIExpression()), !dbg !315, !psr.id !318
  %3 = xor i32 %0, %1, !dbg !319, !psr.id !320, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !321, metadata !DIExpression()), !dbg !315, !psr.id !322
  %4 = sub i32 0, %3, !dbg !323, !psr.id !324, !ValueTainted !92
  %5 = or i32 %3, %4, !dbg !325, !psr.id !326, !ValueTainted !92
  %6 = lshr i32 %5, 31, !dbg !327, !psr.id !328, !ValueTainted !92
  %7 = call i32 @NOT(i32 %6), !dbg !329, !psr.id !330, !ValueTainted !92
  ret i32 %7, !dbg !331, !psr.id !332
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.2(i32 %0, i32 %1, i32 %2) #0 !dbg !333 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !334, metadata !DIExpression()), !dbg !335, !psr.id !336
  call void @llvm.dbg.value(metadata i32 %1, metadata !337, metadata !DIExpression()), !dbg !335, !psr.id !338
  call void @llvm.dbg.value(metadata i32 %2, metadata !339, metadata !DIExpression()), !dbg !335, !psr.id !340
  %4 = sub i32 0, %0, !dbg !341, !psr.id !342, !ValueTainted !92
  %5 = xor i32 %1, %2, !dbg !343, !psr.id !344, !ValueTainted !92
  %6 = and i32 %4, %5, !dbg !345, !psr.id !346, !ValueTainted !92
  %7 = xor i32 %2, %6, !dbg !347, !psr.id !348, !ValueTainted !92
  ret i32 %7, !dbg !349, !psr.id !350
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @BIT_LENGTH(i32 %0) #0 !dbg !351 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !354, metadata !DIExpression()), !dbg !355, !psr.id !356
  %2 = call i32 @NEQ(i32 %0, i32 0), !dbg !357, !psr.id !358, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %2, metadata !359, metadata !DIExpression()), !dbg !355, !psr.id !360
  %3 = call i32 @GT(i32 %0, i32 65535), !dbg !361, !psr.id !362, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !363, metadata !DIExpression()), !dbg !355, !psr.id !364
  %4 = lshr i32 %0, 16, !dbg !365, !psr.id !366, !ValueTainted !92
  %5 = call i32 @MUX.2(i32 %3, i32 %4, i32 %0), !dbg !367, !psr.id !368, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %5, metadata !354, metadata !DIExpression()), !dbg !355, !psr.id !369
  %6 = shl i32 %3, 4, !dbg !370, !psr.id !371, !ValueTainted !92
  %7 = add i32 %2, %6, !dbg !372, !psr.id !373, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %7, metadata !359, metadata !DIExpression()), !dbg !355, !psr.id !374
  %8 = call i32 @GT(i32 %5, i32 255), !dbg !375, !psr.id !376, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %8, metadata !363, metadata !DIExpression()), !dbg !355, !psr.id !377
  %9 = lshr i32 %5, 8, !dbg !378, !psr.id !379, !ValueTainted !92
  %10 = call i32 @MUX.2(i32 %8, i32 %9, i32 %5), !dbg !380, !psr.id !381, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %10, metadata !354, metadata !DIExpression()), !dbg !355, !psr.id !382
  %11 = shl i32 %8, 3, !dbg !383, !psr.id !384, !ValueTainted !92
  %12 = add i32 %7, %11, !dbg !385, !psr.id !386, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %12, metadata !359, metadata !DIExpression()), !dbg !355, !psr.id !387
  %13 = call i32 @GT(i32 %10, i32 15), !dbg !388, !psr.id !389, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %13, metadata !363, metadata !DIExpression()), !dbg !355, !psr.id !390
  %14 = lshr i32 %10, 4, !dbg !391, !psr.id !392, !ValueTainted !92
  %15 = call i32 @MUX.2(i32 %13, i32 %14, i32 %10), !dbg !393, !psr.id !394, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %15, metadata !354, metadata !DIExpression()), !dbg !355, !psr.id !395
  %16 = shl i32 %13, 2, !dbg !396, !psr.id !397, !ValueTainted !92
  %17 = add i32 %12, %16, !dbg !398, !psr.id !399, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %17, metadata !359, metadata !DIExpression()), !dbg !355, !psr.id !400
  %18 = call i32 @GT(i32 %15, i32 3), !dbg !401, !psr.id !402, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %18, metadata !363, metadata !DIExpression()), !dbg !355, !psr.id !403
  %19 = lshr i32 %15, 2, !dbg !404, !psr.id !405, !ValueTainted !92
  %20 = call i32 @MUX.2(i32 %18, i32 %19, i32 %15), !dbg !406, !psr.id !407, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %20, metadata !354, metadata !DIExpression()), !dbg !355, !psr.id !408
  %21 = shl i32 %18, 1, !dbg !409, !psr.id !410, !ValueTainted !92
  %22 = add i32 %17, %21, !dbg !411, !psr.id !412, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %22, metadata !359, metadata !DIExpression()), !dbg !355, !psr.id !413
  %23 = call i32 @GT(i32 %20, i32 1), !dbg !414, !psr.id !415, !ValueTainted !92
  %24 = add i32 %22, %23, !dbg !416, !psr.id !417, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %24, metadata !359, metadata !DIExpression()), !dbg !355, !psr.id !418
  ret i32 %24, !dbg !419, !psr.id !420
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !422, metadata !DIExpression()), !dbg !423, !psr.id !424
  call void @llvm.dbg.value(metadata i32 %1, metadata !425, metadata !DIExpression()), !dbg !423, !psr.id !426
  %3 = xor i32 %0, %1, !dbg !427, !psr.id !428, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !429, metadata !DIExpression()), !dbg !423, !psr.id !430
  %4 = sub i32 0, %3, !dbg !431, !psr.id !432, !ValueTainted !92
  %5 = or i32 %3, %4, !dbg !433, !psr.id !434, !ValueTainted !92
  %6 = lshr i32 %5, 31, !dbg !435, !psr.id !436, !ValueTainted !92
  ret i32 %6, !dbg !437, !psr.id !438
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !440, metadata !DIExpression()), !dbg !441, !psr.id !442
  call void @llvm.dbg.value(metadata i32 %1, metadata !443, metadata !DIExpression()), !dbg !441, !psr.id !444
  %3 = sub i32 %1, %0, !dbg !445, !psr.id !446, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !447, metadata !DIExpression()), !dbg !441, !psr.id !448
  %4 = xor i32 %0, %1, !dbg !449, !psr.id !450, !ValueTainted !92
  %5 = xor i32 %0, %3, !dbg !451, !psr.id !452, !ValueTainted !92
  %6 = and i32 %4, %5, !dbg !453, !psr.id !454, !ValueTainted !92
  %7 = xor i32 %3, %6, !dbg !455, !psr.id !456, !ValueTainted !92
  %8 = lshr i32 %7, 31, !dbg !457, !psr.id !458, !ValueTainted !92
  ret i32 %8, !dbg !459, !psr.id !460
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !461 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !462, metadata !DIExpression()), !dbg !463, !psr.id !464
  %2 = xor i32 %0, 1, !dbg !465, !psr.id !466, !ValueTainted !92
  ret i32 %2, !dbg !467, !psr.id !468
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_decode(i32* %0, i8* %1, i64 %2) #0 !dbg !469 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !472, metadata !DIExpression()), !dbg !473, !psr.id !474
  call void @llvm.dbg.value(metadata i8* %1, metadata !475, metadata !DIExpression()), !dbg !473, !psr.id !476
  call void @llvm.dbg.value(metadata i64 %2, metadata !477, metadata !DIExpression()), !dbg !473, !psr.id !478
  call void @llvm.dbg.value(metadata i8* %1, metadata !479, metadata !DIExpression()), !dbg !473, !psr.id !480
  call void @llvm.dbg.value(metadata i64 %2, metadata !481, metadata !DIExpression()), !dbg !473, !psr.id !482
  call void @llvm.dbg.value(metadata i64 1, metadata !483, metadata !DIExpression()), !dbg !473, !psr.id !484
  call void @llvm.dbg.value(metadata i32 0, metadata !485, metadata !DIExpression()), !dbg !473, !psr.id !486
  call void @llvm.dbg.value(metadata i32 0, metadata !487, metadata !DIExpression()), !dbg !473, !psr.id !489
  br label %4, !dbg !490, !psr.id !491

4:                                                ; preds = %22, %3
  %.05 = phi i64 [ %2, %3 ], [ %5, %22 ], !dbg !473, !psr.id !492, !ValueTainted !92
  %.03 = phi i64 [ 1, %3 ], [ %.14, %22 ], !dbg !473, !psr.id !493
  %.01 = phi i32 [ 0, %3 ], [ %.12, %22 ], !dbg !473, !psr.id !494, !ValueTainted !92
  %.0 = phi i32 [ 0, %3 ], [ %.1, %22 ], !dbg !473, !psr.id !495
  call void @llvm.dbg.value(metadata i32 %.0, metadata !487, metadata !DIExpression()), !dbg !473, !psr.id !496
  call void @llvm.dbg.value(metadata i32 %.01, metadata !485, metadata !DIExpression()), !dbg !473, !psr.id !497
  call void @llvm.dbg.value(metadata i64 %.03, metadata !483, metadata !DIExpression()), !dbg !473, !psr.id !498
  call void @llvm.dbg.value(metadata i64 %.05, metadata !481, metadata !DIExpression()), !dbg !473, !psr.id !499
  %5 = add i64 %.05, -1, !dbg !500, !psr.id !501, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %5, metadata !481, metadata !DIExpression()), !dbg !473, !psr.id !502
  %6 = icmp ugt i64 %.05, 0, !dbg !503, !psr.id !504, !ValueTainted !92
  br i1 %6, label %7, label %23, !dbg !490, !psr.id !505, !Tainted !105

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !506, !psr.id !508, !ValueTainted !92, !PointTainted !94
  %9 = load i8, i8* %8, align 1, !dbg !506, !psr.id !509, !Tainted !105, !ValueTainted !92
  %10 = zext i8 %9 to i32, !dbg !506, !psr.id !510, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %10, metadata !511, metadata !DIExpression()), !dbg !512, !psr.id !513
  %11 = shl i32 %10, %.0, !dbg !514, !psr.id !515, !ValueTainted !92
  %12 = or i32 %.01, %11, !dbg !516, !psr.id !517, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %12, metadata !485, metadata !DIExpression()), !dbg !473, !psr.id !518
  %13 = add nsw i32 %.0, 8, !dbg !519, !psr.id !520
  call void @llvm.dbg.value(metadata i32 %13, metadata !487, metadata !DIExpression()), !dbg !473, !psr.id !521
  %14 = icmp sge i32 %13, 31, !dbg !522, !psr.id !524
  br i1 %14, label %15, label %22, !dbg !525, !psr.id !526

15:                                               ; preds = %7
  %16 = and i32 %12, 2147483647, !dbg !527, !psr.id !529, !ValueTainted !92
  %17 = add i64 %.03, 1, !dbg !530, !psr.id !531
  call void @llvm.dbg.value(metadata i64 %17, metadata !483, metadata !DIExpression()), !dbg !473, !psr.id !532
  %18 = getelementptr inbounds i32, i32* %0, i64 %.03, !dbg !533, !psr.id !534, !PointTainted !94
  store i32 %16, i32* %18, align 4, !dbg !535, !psr.id !536
  %19 = sub nsw i32 %13, 31, !dbg !537, !psr.id !538
  call void @llvm.dbg.value(metadata i32 %19, metadata !487, metadata !DIExpression()), !dbg !473, !psr.id !539
  %20 = sub nsw i32 8, %19, !dbg !540, !psr.id !541
  %21 = lshr i32 %10, %20, !dbg !542, !psr.id !543, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %21, metadata !485, metadata !DIExpression()), !dbg !473, !psr.id !544
  br label %22, !dbg !545, !psr.id !546

22:                                               ; preds = %15, %7
  %.14 = phi i64 [ %17, %15 ], [ %.03, %7 ], !dbg !473, !psr.id !547
  %.12 = phi i32 [ %21, %15 ], [ %12, %7 ], !dbg !512, !psr.id !548, !ValueTainted !92
  %.1 = phi i32 [ %19, %15 ], [ %13, %7 ], !dbg !512, !psr.id !549
  call void @llvm.dbg.value(metadata i32 %.1, metadata !487, metadata !DIExpression()), !dbg !473, !psr.id !550
  call void @llvm.dbg.value(metadata i32 %.12, metadata !485, metadata !DIExpression()), !dbg !473, !psr.id !551
  call void @llvm.dbg.value(metadata i64 %.14, metadata !483, metadata !DIExpression()), !dbg !473, !psr.id !552
  br label %4, !dbg !490, !llvm.loop !553, !psr.id !555

23:                                               ; preds = %4
  %24 = icmp ne i32 %.0, 0, !dbg !556, !psr.id !558
  br i1 %24, label %25, label %28, !dbg !559, !psr.id !560

25:                                               ; preds = %23
  %26 = add i64 %.03, 1, !dbg !561, !psr.id !563
  call void @llvm.dbg.value(metadata i64 %26, metadata !483, metadata !DIExpression()), !dbg !473, !psr.id !564
  %27 = getelementptr inbounds i32, i32* %0, i64 %.03, !dbg !565, !psr.id !566, !PointTainted !94
  store i32 %.01, i32* %27, align 4, !dbg !567, !psr.id !568
  br label %28, !dbg !569, !psr.id !570

28:                                               ; preds = %25, %23
  %.2 = phi i64 [ %26, %25 ], [ %.03, %23 ], !dbg !473, !psr.id !571
  call void @llvm.dbg.value(metadata i64 %.2, metadata !483, metadata !DIExpression()), !dbg !473, !psr.id !572
  %29 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !573, !psr.id !574, !PointTainted !94
  %30 = sub i64 %.2, 1, !dbg !575, !psr.id !576
  %31 = call i32 @br_i31_bit_length(i32* %29, i64 %30), !dbg !577, !psr.id !578, !ValueTainted !92
  %32 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !579, !psr.id !580, !PointTainted !94
  store i32 %31, i32* %32, align 4, !dbg !581, !psr.id !582
  ret void, !dbg !583, !psr.id !584
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_decode_reduce(i32* %0, i8* %1, i64 %2, i32* %3) #0 !dbg !585 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !588, metadata !DIExpression()), !dbg !589, !psr.id !590
  call void @llvm.dbg.value(metadata i8* %1, metadata !591, metadata !DIExpression()), !dbg !589, !psr.id !592
  call void @llvm.dbg.value(metadata i64 %2, metadata !593, metadata !DIExpression()), !dbg !589, !psr.id !594
  call void @llvm.dbg.value(metadata i32* %3, metadata !595, metadata !DIExpression()), !dbg !589, !psr.id !596
  %5 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !597, !psr.id !598
  %6 = load i32, i32* %5, align 4, !dbg !597, !psr.id !599, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %6, metadata !600, metadata !DIExpression()), !dbg !589, !psr.id !601
  %7 = icmp eq i32 %6, 0, !dbg !602, !psr.id !604, !ValueTainted !92
  br i1 %7, label %8, label %10, !dbg !605, !psr.id !606, !Tainted !105

8:                                                ; preds = %4
  %9 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !607, !psr.id !609
  store i32 0, i32* %9, align 4, !dbg !610, !psr.id !611
  br label %56, !dbg !612, !psr.id !613

10:                                               ; preds = %4
  call void @br_i31_zero(i32* %0, i32 %6), !dbg !614, !psr.id !615
  %11 = lshr i32 %6, 5, !dbg !616, !psr.id !617, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %11, metadata !618, metadata !DIExpression()), !dbg !589, !psr.id !619
  %12 = and i32 %6, 31, !dbg !620, !psr.id !621, !ValueTainted !92
  %13 = shl i32 %11, 5, !dbg !622, !psr.id !623, !ValueTainted !92
  %14 = add i32 %12, %13, !dbg !624, !psr.id !625, !ValueTainted !92
  %15 = sub i32 %14, %11, !dbg !626, !psr.id !627, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %15, metadata !618, metadata !DIExpression()), !dbg !589, !psr.id !628
  %16 = add i32 %15, 7, !dbg !629, !psr.id !630, !ValueTainted !92
  %17 = lshr i32 %16, 3, !dbg !631, !psr.id !632, !ValueTainted !92
  %18 = zext i32 %17 to i64, !dbg !633, !psr.id !634, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %18, metadata !635, metadata !DIExpression()), !dbg !589, !psr.id !636
  %19 = sub i64 %18, 1, !dbg !637, !psr.id !638, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %19, metadata !639, metadata !DIExpression()), !dbg !589, !psr.id !640
  %20 = icmp uge i64 %19, %2, !dbg !641, !psr.id !643, !ValueTainted !92
  br i1 %20, label %21, label %23, !dbg !644, !psr.id !645, !Tainted !105

21:                                               ; preds = %10
  call void @br_i31_decode(i32* %0, i8* %1, i64 %2), !dbg !646, !psr.id !648
  %22 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !649, !psr.id !650, !PointTainted !94
  store i32 %6, i32* %22, align 4, !dbg !651, !psr.id !652
  br label %56, !dbg !653, !psr.id !654

23:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %1, metadata !655, metadata !DIExpression()), !dbg !589, !psr.id !656
  call void @br_i31_decode(i32* %0, i8* %1, i64 %19), !dbg !657, !psr.id !658
  %24 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !659, !psr.id !660, !PointTainted !94
  store i32 %6, i32* %24, align 4, !dbg !661, !psr.id !662
  call void @llvm.dbg.value(metadata i32 0, metadata !663, metadata !DIExpression()), !dbg !589, !psr.id !664
  call void @llvm.dbg.value(metadata i32 0, metadata !665, metadata !DIExpression()), !dbg !589, !psr.id !666
  br label %25, !dbg !667, !psr.id !668

25:                                               ; preds = %46, %23
  %.03 = phi i64 [ %19, %23 ], [ %28, %46 ], !dbg !589, !psr.id !669, !ValueTainted !92
  %.01 = phi i32 [ 0, %23 ], [ %.12, %46 ], !dbg !589, !psr.id !670, !ValueTainted !92
  %.0 = phi i32 [ 0, %23 ], [ %.1, %46 ], !dbg !589, !psr.id !671
  call void @llvm.dbg.value(metadata i32 %.0, metadata !665, metadata !DIExpression()), !dbg !589, !psr.id !672
  call void @llvm.dbg.value(metadata i32 %.01, metadata !663, metadata !DIExpression()), !dbg !589, !psr.id !673
  call void @llvm.dbg.value(metadata i64 %.03, metadata !639, metadata !DIExpression()), !dbg !589, !psr.id !674
  %26 = icmp ult i64 %.03, %2, !dbg !675, !psr.id !676, !ValueTainted !92
  br i1 %26, label %27, label %47, !dbg !667, !psr.id !677, !Tainted !105

27:                                               ; preds = %25
  %28 = add i64 %.03, 1, !dbg !678, !psr.id !680, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %28, metadata !639, metadata !DIExpression()), !dbg !589, !psr.id !681
  %29 = getelementptr inbounds i8, i8* %1, i64 %.03, !dbg !682, !psr.id !683, !ValueTainted !92, !PointTainted !94
  %30 = load i8, i8* %29, align 1, !dbg !682, !psr.id !684, !Tainted !105, !ValueTainted !92
  %31 = zext i8 %30 to i32, !dbg !682, !psr.id !685, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %31, metadata !686, metadata !DIExpression()), !dbg !687, !psr.id !688
  %32 = icmp sge i32 %.0, 23, !dbg !689, !psr.id !691
  br i1 %32, label %33, label %42, !dbg !692, !psr.id !693

33:                                               ; preds = %27
  %34 = sub nsw i32 %.0, 23, !dbg !694, !psr.id !696
  call void @llvm.dbg.value(metadata i32 %34, metadata !665, metadata !DIExpression()), !dbg !589, !psr.id !697
  %35 = sub nsw i32 8, %34, !dbg !698, !psr.id !699
  %36 = shl i32 %.01, %35, !dbg !700, !psr.id !701, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %36, metadata !663, metadata !DIExpression()), !dbg !589, !psr.id !702
  %37 = lshr i32 %31, %34, !dbg !703, !psr.id !704, !ValueTainted !92
  %38 = or i32 %36, %37, !dbg !705, !psr.id !706, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %38, metadata !663, metadata !DIExpression()), !dbg !589, !psr.id !707
  call void @br_i31_muladd_small(i32* %0, i32 %38, i32* %3), !dbg !708, !psr.id !709
  %39 = sub nsw i32 8, %34, !dbg !710, !psr.id !711
  %40 = ashr i32 255, %39, !dbg !712, !psr.id !713
  %41 = and i32 %31, %40, !dbg !714, !psr.id !715, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %41, metadata !663, metadata !DIExpression()), !dbg !589, !psr.id !716
  br label %46, !dbg !717, !psr.id !718

42:                                               ; preds = %27
  %43 = shl i32 %.01, 8, !dbg !719, !psr.id !721, !ValueTainted !92
  %44 = or i32 %43, %31, !dbg !722, !psr.id !723, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %44, metadata !663, metadata !DIExpression()), !dbg !589, !psr.id !724
  %45 = add nsw i32 %.0, 8, !dbg !725, !psr.id !726
  call void @llvm.dbg.value(metadata i32 %45, metadata !665, metadata !DIExpression()), !dbg !589, !psr.id !727
  br label %46, !psr.id !728

46:                                               ; preds = %42, %33
  %.12 = phi i32 [ %41, %33 ], [ %44, %42 ], !dbg !729, !psr.id !730, !ValueTainted !92
  %.1 = phi i32 [ %34, %33 ], [ %45, %42 ], !dbg !729, !psr.id !731
  call void @llvm.dbg.value(metadata i32 %.1, metadata !665, metadata !DIExpression()), !dbg !589, !psr.id !732
  call void @llvm.dbg.value(metadata i32 %.12, metadata !663, metadata !DIExpression()), !dbg !589, !psr.id !733
  br label %25, !dbg !667, !llvm.loop !734, !psr.id !736

47:                                               ; preds = %25
  %48 = icmp ne i32 %.0, 0, !dbg !737, !psr.id !739
  br i1 %48, label %49, label %56, !dbg !740, !psr.id !741

49:                                               ; preds = %47
  %50 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !742, !psr.id !744, !PointTainted !94
  %51 = load i32, i32* %50, align 4, !dbg !742, !psr.id !745, !ValueTainted !92
  %52 = shl i32 %51, %.0, !dbg !746, !psr.id !747, !ValueTainted !92
  %53 = or i32 %.01, %52, !dbg !748, !psr.id !749, !ValueTainted !92
  %54 = and i32 %53, 2147483647, !dbg !750, !psr.id !751, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %54, metadata !663, metadata !DIExpression()), !dbg !589, !psr.id !752
  %55 = sub nsw i32 31, %.0, !dbg !753, !psr.id !754
  call void @br_i31_rshift(i32* %0, i32 %55), !dbg !755, !psr.id !756
  call void @br_i31_muladd_small(i32* %0, i32 %54, i32* %3), !dbg !757, !psr.id !758
  br label %56, !dbg !759, !psr.id !760

56:                                               ; preds = %49, %47, %21, %8
  ret void, !dbg !761, !psr.id !762
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i31_zero(i32* %0, i32 %1) #0 !dbg !763 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !766, metadata !DIExpression()), !dbg !767, !psr.id !768
  call void @llvm.dbg.value(metadata i32 %1, metadata !769, metadata !DIExpression()), !dbg !767, !psr.id !770
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !771, !psr.id !772
  call void @llvm.dbg.value(metadata i32* %3, metadata !766, metadata !DIExpression()), !dbg !767, !psr.id !773
  store i32 %1, i32* %0, align 4, !dbg !774, !psr.id !775
  %4 = bitcast i32* %3 to i8*, !dbg !776, !psr.id !777
  %5 = add i32 %1, 31, !dbg !778, !psr.id !779, !ValueTainted !92
  %6 = lshr i32 %5, 5, !dbg !780, !psr.id !781, !ValueTainted !92
  %7 = zext i32 %6 to i64, !dbg !782, !psr.id !783, !ValueTainted !92
  %8 = mul i64 %7, 4, !dbg !784, !psr.id !785, !ValueTainted !92
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !776, !psr.id !786, !CalledTainted !787
  ret void, !dbg !788, !psr.id !789
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_encode(i8* %0, i64 %1, i32* %2) #0 !dbg !790 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !793, metadata !DIExpression()), !dbg !794, !psr.id !795
  call void @llvm.dbg.value(metadata i64 %1, metadata !796, metadata !DIExpression()), !dbg !794, !psr.id !797
  call void @llvm.dbg.value(metadata i32* %2, metadata !798, metadata !DIExpression()), !dbg !794, !psr.id !799
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !800, !psr.id !801, !PointTainted !94
  %5 = load i32, i32* %4, align 4, !dbg !800, !psr.id !802, !ValueTainted !92
  %6 = add i32 %5, 31, !dbg !803, !psr.id !804, !ValueTainted !92
  %7 = lshr i32 %6, 5, !dbg !805, !psr.id !806, !ValueTainted !92
  %8 = zext i32 %7 to i64, !dbg !807, !psr.id !808, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %8, metadata !809, metadata !DIExpression()), !dbg !794, !psr.id !810
  %9 = icmp eq i64 %8, 0, !dbg !811, !psr.id !813, !ValueTainted !92
  br i1 %9, label %10, label %11, !dbg !814, !psr.id !815, !Tainted !105

10:                                               ; preds = %3
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !816, !psr.id !818, !CalledTainted !819
  br label %51, !dbg !820, !psr.id !821

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !822, !psr.id !823, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %12, metadata !824, metadata !DIExpression()), !dbg !794, !psr.id !825
  call void @llvm.dbg.value(metadata i64 1, metadata !826, metadata !DIExpression()), !dbg !794, !psr.id !827
  call void @llvm.dbg.value(metadata i32 0, metadata !828, metadata !DIExpression()), !dbg !794, !psr.id !829
  call void @llvm.dbg.value(metadata i32 0, metadata !830, metadata !DIExpression()), !dbg !794, !psr.id !831
  br label %13, !dbg !832, !psr.id !833

13:                                               ; preds = %50, %11
  %.07 = phi i64 [ 1, %11 ], [ %23, %50 ], !dbg !794, !psr.id !834
  %.05 = phi i8* [ %12, %11 ], [ %.16, %50 ], !dbg !835, !psr.id !836, !ValueTainted !92, !PointTainted !94
  %.03 = phi i32 [ 0, %11 ], [ %.14, %50 ], !dbg !794, !psr.id !837, !ValueTainted !92
  %.01 = phi i64 [ %1, %11 ], [ %.12, %50 ], !psr.id !838
  %.0 = phi i32 [ 0, %11 ], [ %.1, %50 ], !dbg !794, !psr.id !839
  call void @llvm.dbg.value(metadata i32 %.0, metadata !830, metadata !DIExpression()), !dbg !794, !psr.id !840
  call void @llvm.dbg.value(metadata i64 %.01, metadata !796, metadata !DIExpression()), !dbg !794, !psr.id !841
  call void @llvm.dbg.value(metadata i32 %.03, metadata !828, metadata !DIExpression()), !dbg !794, !psr.id !842
  call void @llvm.dbg.value(metadata i8* %.05, metadata !824, metadata !DIExpression()), !dbg !794, !psr.id !843
  call void @llvm.dbg.value(metadata i64 %.07, metadata !826, metadata !DIExpression()), !dbg !794, !psr.id !844
  %14 = icmp ne i64 %.01, 0, !dbg !845, !psr.id !846
  br i1 %14, label %15, label %51, !dbg !832, !psr.id !847

15:                                               ; preds = %13
  %16 = icmp ule i64 %.07, %8, !dbg !848, !psr.id !850, !ValueTainted !92
  br i1 %16, label %17, label %20, !dbg !851, !psr.id !852, !Tainted !105

17:                                               ; preds = %15
  %18 = getelementptr inbounds i32, i32* %2, i64 %.07, !dbg !853, !psr.id !854, !PointTainted !94
  %19 = load i32, i32* %18, align 4, !dbg !853, !psr.id !855, !ValueTainted !92
  br label %21, !dbg !851, !psr.id !856

20:                                               ; preds = %15
  br label %21, !dbg !851, !psr.id !857

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 0, %20 ], !dbg !851, !psr.id !858, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %22, metadata !859, metadata !DIExpression()), !dbg !860, !psr.id !861
  %23 = add i64 %.07, 1, !dbg !862, !psr.id !863
  call void @llvm.dbg.value(metadata i64 %23, metadata !826, metadata !DIExpression()), !dbg !794, !psr.id !864
  %24 = icmp eq i32 %.0, 0, !dbg !865, !psr.id !867
  br i1 %24, label %25, label %26, !dbg !868, !psr.id !869

25:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 %22, metadata !828, metadata !DIExpression()), !dbg !794, !psr.id !870
  call void @llvm.dbg.value(metadata i32 31, metadata !830, metadata !DIExpression()), !dbg !794, !psr.id !871
  br label %50, !dbg !872, !psr.id !874

26:                                               ; preds = %21
  %27 = shl i32 %22, %.0, !dbg !875, !psr.id !877, !ValueTainted !92
  %28 = or i32 %.03, %27, !dbg !878, !psr.id !879, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %28, metadata !880, metadata !DIExpression()), !dbg !881, !psr.id !882
  %29 = add nsw i32 %.0, -1, !dbg !883, !psr.id !884
  call void @llvm.dbg.value(metadata i32 %29, metadata !830, metadata !DIExpression()), !dbg !794, !psr.id !885
  %30 = sub nsw i32 31, %29, !dbg !886, !psr.id !887
  %31 = lshr i32 %22, %30, !dbg !888, !psr.id !889, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %31, metadata !828, metadata !DIExpression()), !dbg !794, !psr.id !890
  %32 = icmp uge i64 %.01, 4, !dbg !891, !psr.id !893
  br i1 %32, label %33, label %36, !dbg !894, !psr.id !895

33:                                               ; preds = %26
  %34 = getelementptr inbounds i8, i8* %.05, i64 -4, !dbg !896, !psr.id !898, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %34, metadata !824, metadata !DIExpression()), !dbg !794, !psr.id !899
  %35 = sub i64 %.01, 4, !dbg !900, !psr.id !901
  call void @llvm.dbg.value(metadata i64 %35, metadata !796, metadata !DIExpression()), !dbg !794, !psr.id !902
  call void @br_enc32be(i8* %34, i32 %28), !dbg !903, !psr.id !904
  br label %49, !dbg !905, !psr.id !906

36:                                               ; preds = %26
  switch i64 %.01, label %48 [
    i64 3, label %37
    i64 2, label %41
    i64 1, label %45
  ], !dbg !907, !psr.id !909

37:                                               ; preds = %36
  %38 = lshr i32 %28, 16, !dbg !910, !psr.id !912, !ValueTainted !92
  %39 = trunc i32 %38 to i8, !dbg !913, !psr.id !914, !ValueTainted !92
  %40 = getelementptr inbounds i8, i8* %.05, i64 -3, !dbg !915, !psr.id !916, !ValueTainted !92, !PointTainted !94
  store i8 %39, i8* %40, align 1, !dbg !917, !psr.id !918, !Tainted !105
  br label %41, !dbg !915, !psr.id !919

41:                                               ; preds = %37, %36
  %42 = lshr i32 %28, 8, !dbg !920, !psr.id !921, !ValueTainted !92
  %43 = trunc i32 %42 to i8, !dbg !922, !psr.id !923, !ValueTainted !92
  %44 = getelementptr inbounds i8, i8* %.05, i64 -2, !dbg !924, !psr.id !925, !ValueTainted !92, !PointTainted !94
  store i8 %43, i8* %44, align 1, !dbg !926, !psr.id !927, !Tainted !105
  br label %45, !dbg !924, !psr.id !928

45:                                               ; preds = %41, %36
  %46 = trunc i32 %28 to i8, !dbg !929, !psr.id !930, !ValueTainted !92
  %47 = getelementptr inbounds i8, i8* %.05, i64 -1, !dbg !931, !psr.id !932, !ValueTainted !92, !PointTainted !94
  store i8 %46, i8* %47, align 1, !dbg !933, !psr.id !934, !Tainted !105
  br label %48, !dbg !935, !psr.id !936

48:                                               ; preds = %45, %36
  br label %51, !dbg !937, !psr.id !938

49:                                               ; preds = %33
  br label %50, !psr.id !939

50:                                               ; preds = %49, %25
  %.16 = phi i8* [ %.05, %25 ], [ %34, %49 ], !dbg !794, !psr.id !940, !ValueTainted !92, !PointTainted !94
  %.14 = phi i32 [ %22, %25 ], [ %31, %49 ], !dbg !941, !psr.id !942, !ValueTainted !92
  %.12 = phi i64 [ %.01, %25 ], [ %35, %49 ], !psr.id !943
  %.1 = phi i32 [ 31, %25 ], [ %29, %49 ], !dbg !941, !psr.id !944
  call void @llvm.dbg.value(metadata i32 %.1, metadata !830, metadata !DIExpression()), !dbg !794, !psr.id !945
  call void @llvm.dbg.value(metadata i64 %.12, metadata !796, metadata !DIExpression()), !dbg !794, !psr.id !946
  call void @llvm.dbg.value(metadata i32 %.14, metadata !828, metadata !DIExpression()), !dbg !794, !psr.id !947
  call void @llvm.dbg.value(metadata i8* %.16, metadata !824, metadata !DIExpression()), !dbg !794, !psr.id !948
  br label %13, !dbg !832, !llvm.loop !949, !psr.id !951

51:                                               ; preds = %48, %13, %10
  ret void, !dbg !952, !psr.id !953
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !957, metadata !DIExpression()), !dbg !958, !psr.id !959
  call void @llvm.dbg.value(metadata i32 %1, metadata !960, metadata !DIExpression()), !dbg !958, !psr.id !961
  call void @llvm.dbg.value(metadata i8* %0, metadata !962, metadata !DIExpression()), !dbg !958, !psr.id !963
  %3 = lshr i32 %1, 24, !dbg !964, !psr.id !965, !ValueTainted !92
  %4 = trunc i32 %3 to i8, !dbg !966, !psr.id !967, !ValueTainted !92
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !968, !psr.id !969, !ValueTainted !92, !PointTainted !94
  store i8 %4, i8* %5, align 1, !dbg !970, !psr.id !971, !Tainted !105
  %6 = lshr i32 %1, 16, !dbg !972, !psr.id !973, !ValueTainted !92
  %7 = trunc i32 %6 to i8, !dbg !974, !psr.id !975, !ValueTainted !92
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !976, !psr.id !977, !ValueTainted !92, !PointTainted !94
  store i8 %7, i8* %8, align 1, !dbg !978, !psr.id !979, !Tainted !105
  %9 = lshr i32 %1, 8, !dbg !980, !psr.id !981, !ValueTainted !92
  %10 = trunc i32 %9 to i8, !dbg !982, !psr.id !983, !ValueTainted !92
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !984, !psr.id !985, !ValueTainted !92, !PointTainted !94
  store i8 %10, i8* %11, align 1, !dbg !986, !psr.id !987, !Tainted !105
  %12 = trunc i32 %1 to i8, !dbg !988, !psr.id !989, !ValueTainted !92
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !990, !psr.id !991, !ValueTainted !92, !PointTainted !94
  store i8 %12, i8* %13, align 1, !dbg !992, !psr.id !993, !Tainted !105
  ret void, !dbg !994, !psr.id !995
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_from_monty(i32* %0, i32* %1, i32 %2) #0 !dbg !996 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !999, metadata !DIExpression()), !dbg !1000, !psr.id !1001
  call void @llvm.dbg.value(metadata i32* %1, metadata !1002, metadata !DIExpression()), !dbg !1000, !psr.id !1003
  call void @llvm.dbg.value(metadata i32 %2, metadata !1004, metadata !DIExpression()), !dbg !1000, !psr.id !1005
  %4 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1006, !psr.id !1007
  %5 = load i32, i32* %4, align 4, !dbg !1006, !psr.id !1008, !ValueTainted !92
  %6 = add i32 %5, 31, !dbg !1009, !psr.id !1010, !ValueTainted !92
  %7 = lshr i32 %6, 5, !dbg !1011, !psr.id !1012, !ValueTainted !92
  %8 = zext i32 %7 to i64, !dbg !1013, !psr.id !1014, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %8, metadata !1015, metadata !DIExpression()), !dbg !1000, !psr.id !1016
  call void @llvm.dbg.value(metadata i64 0, metadata !1017, metadata !DIExpression()), !dbg !1000, !psr.id !1018
  br label %9, !dbg !1019, !psr.id !1021

9:                                                ; preds = %43, %3
  %.02 = phi i64 [ 0, %3 ], [ %44, %43 ], !dbg !1022, !psr.id !1023
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1017, metadata !DIExpression()), !dbg !1000, !psr.id !1024
  %10 = icmp ult i64 %.02, %8, !dbg !1025, !psr.id !1027, !ValueTainted !92
  br i1 %10, label %11, label %45, !dbg !1028, !psr.id !1029, !Tainted !105

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1030, !psr.id !1032, !PointTainted !94
  %13 = load i32, i32* %12, align 4, !dbg !1030, !psr.id !1033, !ValueTainted !92
  %14 = mul i32 %13, %2, !dbg !1030, !psr.id !1034, !ValueTainted !92
  %15 = and i32 %14, 2147483647, !dbg !1030, !psr.id !1035, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %15, metadata !1036, metadata !DIExpression()), !dbg !1037, !psr.id !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !1039, metadata !DIExpression()), !dbg !1037, !psr.id !1040
  call void @llvm.dbg.value(metadata i64 0, metadata !1041, metadata !DIExpression()), !dbg !1000, !psr.id !1042
  br label %16, !dbg !1043, !psr.id !1045

16:                                               ; preds = %38, %11
  %.01 = phi i64 [ 0, %11 ], [ %39, %38 ], !dbg !1046, !psr.id !1047
  %.0 = phi i64 [ 0, %11 ], [ %31, %38 ], !dbg !1037, !psr.id !1048, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1039, metadata !DIExpression()), !dbg !1037, !psr.id !1049
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1041, metadata !DIExpression()), !dbg !1000, !psr.id !1050
  %17 = icmp ult i64 %.01, %8, !dbg !1051, !psr.id !1053, !ValueTainted !92
  br i1 %17, label %18, label %40, !dbg !1054, !psr.id !1055, !Tainted !105

18:                                               ; preds = %16
  %19 = add i64 %.01, 1, !dbg !1056, !psr.id !1058
  %20 = getelementptr inbounds i32, i32* %0, i64 %19, !dbg !1059, !psr.id !1060, !PointTainted !94
  %21 = load i32, i32* %20, align 4, !dbg !1059, !psr.id !1061, !ValueTainted !92
  %22 = zext i32 %21 to i64, !dbg !1062, !psr.id !1063, !ValueTainted !92
  %23 = zext i32 %15 to i64, !dbg !1064, !psr.id !1065, !ValueTainted !92
  %24 = add i64 %.01, 1, !dbg !1064, !psr.id !1066
  %25 = getelementptr inbounds i32, i32* %1, i64 %24, !dbg !1064, !psr.id !1067
  %26 = load i32, i32* %25, align 4, !dbg !1064, !psr.id !1068, !ValueTainted !92
  %27 = zext i32 %26 to i64, !dbg !1064, !psr.id !1069, !ValueTainted !92
  %28 = mul i64 %23, %27, !dbg !1064, !psr.id !1070, !ValueTainted !92
  %29 = add i64 %22, %28, !dbg !1071, !psr.id !1072, !ValueTainted !92
  %30 = add i64 %29, %.0, !dbg !1073, !psr.id !1074, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %30, metadata !1075, metadata !DIExpression()), !dbg !1076, !psr.id !1077
  %31 = lshr i64 %30, 31, !dbg !1078, !psr.id !1079, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %31, metadata !1039, metadata !DIExpression()), !dbg !1037, !psr.id !1080
  %32 = icmp ne i64 %.01, 0, !dbg !1081, !psr.id !1083
  br i1 %32, label %33, label %37, !dbg !1084, !psr.id !1085

33:                                               ; preds = %18
  %34 = trunc i64 %30 to i32, !dbg !1086, !psr.id !1088, !ValueTainted !92
  %35 = and i32 %34, 2147483647, !dbg !1089, !psr.id !1090, !ValueTainted !92
  %36 = getelementptr inbounds i32, i32* %0, i64 %.01, !dbg !1091, !psr.id !1092, !PointTainted !94
  store i32 %35, i32* %36, align 4, !dbg !1093, !psr.id !1094
  br label %37, !dbg !1095, !psr.id !1096

37:                                               ; preds = %33, %18
  br label %38, !dbg !1097, !psr.id !1098

38:                                               ; preds = %37
  %39 = add i64 %.01, 1, !dbg !1099, !psr.id !1100
  call void @llvm.dbg.value(metadata i64 %39, metadata !1041, metadata !DIExpression()), !dbg !1000, !psr.id !1101
  br label %16, !dbg !1102, !llvm.loop !1103, !psr.id !1105

40:                                               ; preds = %16
  %41 = trunc i64 %.0 to i32, !dbg !1106, !psr.id !1107, !ValueTainted !92
  %42 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !1108, !psr.id !1109, !ValueTainted !92, !PointTainted !94
  store i32 %41, i32* %42, align 4, !dbg !1110, !psr.id !1111, !Tainted !105
  br label %43, !dbg !1112, !psr.id !1113

43:                                               ; preds = %40
  %44 = add i64 %.02, 1, !dbg !1114, !psr.id !1115
  call void @llvm.dbg.value(metadata i64 %44, metadata !1017, metadata !DIExpression()), !dbg !1000, !psr.id !1116
  br label %9, !dbg !1117, !llvm.loop !1118, !psr.id !1120

45:                                               ; preds = %9
  %46 = call i32 @br_i31_sub(i32* %0, i32* %1, i32 0), !dbg !1121, !psr.id !1122
  %47 = call i32 @NOT.3(i32 %46), !dbg !1123, !psr.id !1124, !ValueTainted !92
  %48 = call i32 @br_i31_sub(i32* %0, i32* %1, i32 %47), !dbg !1125, !psr.id !1126, !ValueTainted !92
  ret void, !dbg !1127, !psr.id !1128
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.3(i32 %0) #0 !dbg !1129 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1130, metadata !DIExpression()), !dbg !1131, !psr.id !1132
  %2 = xor i32 %0, 1, !dbg !1133, !psr.id !1134, !ValueTainted !92
  ret i32 %2, !dbg !1135, !psr.id !1136
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i31_modpow_opt(i32* %0, i8* %1, i64 %2, i32* %3, i32 %4, i32* %5, i64 %6) #0 !dbg !1137 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1140, metadata !DIExpression()), !dbg !1141, !psr.id !1142
  call void @llvm.dbg.value(metadata i8* %1, metadata !1143, metadata !DIExpression()), !dbg !1141, !psr.id !1144
  call void @llvm.dbg.value(metadata i64 %2, metadata !1145, metadata !DIExpression()), !dbg !1141, !psr.id !1146
  call void @llvm.dbg.value(metadata i32* %3, metadata !1147, metadata !DIExpression()), !dbg !1141, !psr.id !1148
  call void @llvm.dbg.value(metadata i32 %4, metadata !1149, metadata !DIExpression()), !dbg !1141, !psr.id !1150
  call void @llvm.dbg.value(metadata i32* %5, metadata !1151, metadata !DIExpression()), !dbg !1141, !psr.id !1152
  call void @llvm.dbg.value(metadata i64 %6, metadata !1153, metadata !DIExpression()), !dbg !1141, !psr.id !1154
  %8 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1155, !psr.id !1156
  %9 = load i32, i32* %8, align 4, !dbg !1155, !psr.id !1157, !ValueTainted !92
  %10 = add i32 %9, 63, !dbg !1158, !psr.id !1159, !ValueTainted !92
  %11 = lshr i32 %10, 5, !dbg !1160, !psr.id !1161, !ValueTainted !92
  %12 = zext i32 %11 to i64, !dbg !1162, !psr.id !1163, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %12, metadata !1164, metadata !DIExpression()), !dbg !1141, !psr.id !1165
  %13 = mul i64 %12, 4, !dbg !1166, !psr.id !1167, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %13, metadata !1168, metadata !DIExpression()), !dbg !1141, !psr.id !1169
  %14 = and i64 %12, 1, !dbg !1170, !psr.id !1171, !ValueTainted !92
  %15 = add i64 %12, %14, !dbg !1172, !psr.id !1173, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %15, metadata !1164, metadata !DIExpression()), !dbg !1141, !psr.id !1174
  call void @llvm.dbg.value(metadata i32* %5, metadata !1175, metadata !DIExpression()), !dbg !1141, !psr.id !1176
  %16 = getelementptr inbounds i32, i32* %5, i64 %15, !dbg !1177, !psr.id !1178, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32* %16, metadata !1179, metadata !DIExpression()), !dbg !1141, !psr.id !1180
  %17 = shl i64 %15, 1, !dbg !1181, !psr.id !1183, !ValueTainted !92
  %18 = icmp ult i64 %6, %17, !dbg !1184, !psr.id !1185, !ValueTainted !92
  br i1 %18, label %19, label %20, !dbg !1186, !psr.id !1187, !Tainted !105

19:                                               ; preds = %7
  br label %131, !dbg !1188, !psr.id !1190

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 5, metadata !1191, metadata !DIExpression()), !dbg !1141, !psr.id !1192
  br label %21, !dbg !1193, !psr.id !1195

21:                                               ; preds = %31, %20
  %.08 = phi i32 [ 5, %20 ], [ %32, %31 ], !dbg !1196, !psr.id !1197
  call void @llvm.dbg.value(metadata i32 %.08, metadata !1191, metadata !DIExpression()), !dbg !1141, !psr.id !1198
  %22 = icmp sgt i32 %.08, 1, !dbg !1199, !psr.id !1201
  br i1 %22, label %23, label %33, !dbg !1202, !psr.id !1203

23:                                               ; preds = %21
  %24 = shl i32 1, %.08, !dbg !1204, !psr.id !1207
  %25 = add i32 %24, 1, !dbg !1208, !psr.id !1209
  %26 = zext i32 %25 to i64, !dbg !1210, !psr.id !1211
  %27 = mul i64 %26, %15, !dbg !1212, !psr.id !1213, !ValueTainted !92
  %28 = icmp ule i64 %27, %6, !dbg !1214, !psr.id !1215, !ValueTainted !92
  br i1 %28, label %29, label %30, !dbg !1216, !psr.id !1217, !Tainted !105

29:                                               ; preds = %23
  br label %33, !dbg !1218, !psr.id !1220

30:                                               ; preds = %23
  br label %31, !dbg !1221, !psr.id !1222

31:                                               ; preds = %30
  %32 = add nsw i32 %.08, -1, !dbg !1223, !psr.id !1224
  call void @llvm.dbg.value(metadata i32 %32, metadata !1191, metadata !DIExpression()), !dbg !1141, !psr.id !1225
  br label %21, !dbg !1226, !llvm.loop !1227, !psr.id !1229

33:                                               ; preds = %29, %21
  call void @br_i31_to_monty(i32* %0, i32* %3), !dbg !1230, !psr.id !1231
  %34 = icmp eq i32 %.08, 1, !dbg !1232, !psr.id !1234
  br i1 %34, label %35, label %38, !dbg !1235, !psr.id !1236

35:                                               ; preds = %33
  %36 = bitcast i32* %16 to i8*, !dbg !1237, !psr.id !1239, !ValueTainted !92
  %37 = bitcast i32* %0 to i8*, !dbg !1237, !psr.id !1240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 %13, i1 false), !dbg !1237, !psr.id !1241, !CalledTainted !1242
  br label %53, !dbg !1243, !psr.id !1244

38:                                               ; preds = %33
  %39 = getelementptr inbounds i32, i32* %16, i64 %15, !dbg !1245, !psr.id !1247, !ValueTainted !92
  %40 = bitcast i32* %39 to i8*, !dbg !1248, !psr.id !1249, !ValueTainted !92
  %41 = bitcast i32* %0 to i8*, !dbg !1248, !psr.id !1250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 %13, i1 false), !dbg !1248, !psr.id !1251, !CalledTainted !1242
  %42 = getelementptr inbounds i32, i32* %16, i64 %15, !dbg !1252, !psr.id !1253, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32* %42, metadata !1254, metadata !DIExpression()), !dbg !1141, !psr.id !1255
  call void @llvm.dbg.value(metadata i64 2, metadata !1256, metadata !DIExpression()), !dbg !1141, !psr.id !1257
  br label %43, !dbg !1258, !psr.id !1260

43:                                               ; preds = %50, %38
  %.018 = phi i32* [ %42, %38 ], [ %49, %50 ], !dbg !1261, !psr.id !1262, !ValueTainted !92
  %.016 = phi i64 [ 2, %38 ], [ %51, %50 ], !dbg !1263, !psr.id !1264
  call void @llvm.dbg.value(metadata i64 %.016, metadata !1256, metadata !DIExpression()), !dbg !1141, !psr.id !1265
  call void @llvm.dbg.value(metadata i32* %.018, metadata !1254, metadata !DIExpression()), !dbg !1141, !psr.id !1266
  %44 = shl i32 1, %.08, !dbg !1267, !psr.id !1269
  %45 = zext i32 %44 to i64, !dbg !1270, !psr.id !1271
  %46 = icmp ult i64 %.016, %45, !dbg !1272, !psr.id !1273
  br i1 %46, label %47, label %52, !dbg !1274, !psr.id !1275

47:                                               ; preds = %43
  %48 = getelementptr inbounds i32, i32* %.018, i64 %15, !dbg !1276, !psr.id !1278
  call void @br_i31_montymul(i32* %48, i32* %.018, i32* %0, i32* %3, i32 %4), !dbg !1279, !psr.id !1280
  %49 = getelementptr inbounds i32, i32* %.018, i64 %15, !dbg !1281, !psr.id !1282, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32* %49, metadata !1254, metadata !DIExpression()), !dbg !1141, !psr.id !1283
  br label %50, !dbg !1284, !psr.id !1285

50:                                               ; preds = %47
  %51 = add i64 %.016, 1, !dbg !1286, !psr.id !1287
  call void @llvm.dbg.value(metadata i64 %51, metadata !1256, metadata !DIExpression()), !dbg !1141, !psr.id !1288
  br label %43, !dbg !1289, !llvm.loop !1290, !psr.id !1292

52:                                               ; preds = %43
  br label %53, !psr.id !1293

53:                                               ; preds = %52, %35
  %54 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1294, !psr.id !1295
  %55 = load i32, i32* %54, align 4, !dbg !1294, !psr.id !1296, !ValueTainted !92
  call void @br_i31_zero.4(i32* %0, i32 %55), !dbg !1297, !psr.id !1298
  %56 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1299, !psr.id !1300
  %57 = load i32, i32* %56, align 4, !dbg !1299, !psr.id !1301, !ValueTainted !92
  %58 = add i32 %57, 31, !dbg !1302, !psr.id !1303, !ValueTainted !92
  %59 = lshr i32 %58, 5, !dbg !1304, !psr.id !1305, !ValueTainted !92
  %60 = zext i32 %59 to i64, !dbg !1306, !psr.id !1307, !ValueTainted !92
  %61 = getelementptr inbounds i32, i32* %0, i64 %60, !dbg !1306, !psr.id !1308, !ValueTainted !92, !PointTainted !94
  store i32 1, i32* %61, align 4, !dbg !1309, !psr.id !1310, !Tainted !105
  call void @br_i31_muladd_small(i32* %0, i32 0, i32* %3), !dbg !1311, !psr.id !1312
  call void @llvm.dbg.value(metadata i32 0, metadata !1313, metadata !DIExpression()), !dbg !1141, !psr.id !1314
  call void @llvm.dbg.value(metadata i32 0, metadata !1315, metadata !DIExpression()), !dbg !1141, !psr.id !1316
  br label %62, !dbg !1317, !psr.id !1318

62:                                               ; preds = %126, %53
  %.012 = phi i32 [ 0, %53 ], [ %.214, %126 ], !dbg !1141, !psr.id !1319, !ValueTainted !92
  %.09 = phi i32 [ 0, %53 ], [ %88, %126 ], !dbg !1141, !psr.id !1320
  %.04 = phi i64 [ %2, %53 ], [ %.26, %126 ], !psr.id !1321
  %.02 = phi i8* [ %1, %53 ], [ %.2, %126 ], !psr.id !1322, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %.02, metadata !1143, metadata !DIExpression()), !dbg !1141, !psr.id !1323
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1145, metadata !DIExpression()), !dbg !1141, !psr.id !1324
  call void @llvm.dbg.value(metadata i32 %.09, metadata !1315, metadata !DIExpression()), !dbg !1141, !psr.id !1325
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1313, metadata !DIExpression()), !dbg !1141, !psr.id !1326
  %63 = icmp sgt i32 %.09, 0, !dbg !1327, !psr.id !1328
  br i1 %63, label %66, label %64, !dbg !1329, !psr.id !1330

64:                                               ; preds = %62
  %65 = icmp ugt i64 %.04, 0, !dbg !1331, !psr.id !1332
  br label %66, !dbg !1329, !psr.id !1333

66:                                               ; preds = %64, %62
  %67 = phi i1 [ true, %62 ], [ %65, %64 ], !psr.id !1334
  br i1 %67, label %68, label %130, !dbg !1317, !psr.id !1335

68:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 %.08, metadata !1336, metadata !DIExpression()), !dbg !1338, !psr.id !1339
  %69 = icmp slt i32 %.09, %.08, !dbg !1340, !psr.id !1342
  br i1 %69, label %70, label %82, !dbg !1343, !psr.id !1344

70:                                               ; preds = %68
  %71 = icmp ugt i64 %.04, 0, !dbg !1345, !psr.id !1348
  br i1 %71, label %72, label %80, !dbg !1349, !psr.id !1350

72:                                               ; preds = %70
  %73 = shl i32 %.012, 8, !dbg !1351, !psr.id !1353, !ValueTainted !92
  %74 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !1354, !psr.id !1355, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %74, metadata !1143, metadata !DIExpression()), !dbg !1141, !psr.id !1356
  %75 = load i8, i8* %.02, align 1, !dbg !1357, !psr.id !1358, !ValueTainted !92
  %76 = zext i8 %75 to i32, !dbg !1357, !psr.id !1359, !ValueTainted !92
  %77 = or i32 %73, %76, !dbg !1360, !psr.id !1361, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %77, metadata !1313, metadata !DIExpression()), !dbg !1141, !psr.id !1362
  %78 = add i64 %.04, -1, !dbg !1363, !psr.id !1364
  call void @llvm.dbg.value(metadata i64 %78, metadata !1145, metadata !DIExpression()), !dbg !1141, !psr.id !1365
  %79 = add nsw i32 %.09, 8, !dbg !1366, !psr.id !1367
  call void @llvm.dbg.value(metadata i32 %79, metadata !1315, metadata !DIExpression()), !dbg !1141, !psr.id !1368
  br label %81, !dbg !1369, !psr.id !1370

80:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i32 %.09, metadata !1336, metadata !DIExpression()), !dbg !1338, !psr.id !1371
  br label %81, !psr.id !1372

81:                                               ; preds = %80, %72
  %.113 = phi i32 [ %77, %72 ], [ %.012, %80 ], !dbg !1141, !psr.id !1373, !ValueTainted !92
  %.110 = phi i32 [ %79, %72 ], [ %.09, %80 ], !dbg !1141, !psr.id !1374
  %.15 = phi i64 [ %78, %72 ], [ %.04, %80 ], !psr.id !1375
  %.13 = phi i8* [ %74, %72 ], [ %.02, %80 ], !psr.id !1376, !PointTainted !94
  %.01 = phi i32 [ %.08, %72 ], [ %.09, %80 ], !dbg !1338, !psr.id !1377
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1336, metadata !DIExpression()), !dbg !1338, !psr.id !1378
  call void @llvm.dbg.value(metadata i8* %.13, metadata !1143, metadata !DIExpression()), !dbg !1141, !psr.id !1379
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1145, metadata !DIExpression()), !dbg !1141, !psr.id !1380
  call void @llvm.dbg.value(metadata i32 %.110, metadata !1315, metadata !DIExpression()), !dbg !1141, !psr.id !1381
  call void @llvm.dbg.value(metadata i32 %.113, metadata !1313, metadata !DIExpression()), !dbg !1141, !psr.id !1382
  br label %82, !dbg !1383, !psr.id !1384

82:                                               ; preds = %81, %68
  %.214 = phi i32 [ %.113, %81 ], [ %.012, %68 ], !dbg !1141, !psr.id !1385, !ValueTainted !92
  %.211 = phi i32 [ %.110, %81 ], [ %.09, %68 ], !dbg !1141, !psr.id !1386
  %.26 = phi i64 [ %.15, %81 ], [ %.04, %68 ], !psr.id !1387
  %.2 = phi i8* [ %.13, %81 ], [ %.02, %68 ], !psr.id !1388, !PointTainted !94
  %.1 = phi i32 [ %.01, %81 ], [ %.08, %68 ], !dbg !1389, !psr.id !1390
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1336, metadata !DIExpression()), !dbg !1338, !psr.id !1391
  call void @llvm.dbg.value(metadata i8* %.2, metadata !1143, metadata !DIExpression()), !dbg !1141, !psr.id !1392
  call void @llvm.dbg.value(metadata i64 %.26, metadata !1145, metadata !DIExpression()), !dbg !1141, !psr.id !1393
  call void @llvm.dbg.value(metadata i32 %.211, metadata !1315, metadata !DIExpression()), !dbg !1141, !psr.id !1394
  call void @llvm.dbg.value(metadata i32 %.214, metadata !1313, metadata !DIExpression()), !dbg !1141, !psr.id !1395
  %83 = sub nsw i32 %.211, %.1, !dbg !1396, !psr.id !1397
  %84 = lshr i32 %.214, %83, !dbg !1398, !psr.id !1399, !ValueTainted !92
  %85 = shl i32 1, %.1, !dbg !1400, !psr.id !1401
  %86 = sub i32 %85, 1, !dbg !1402, !psr.id !1403
  %87 = and i32 %84, %86, !dbg !1404, !psr.id !1405, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %87, metadata !1406, metadata !DIExpression()), !dbg !1338, !psr.id !1407
  %88 = sub nsw i32 %.211, %.1, !dbg !1408, !psr.id !1409
  call void @llvm.dbg.value(metadata i32 %88, metadata !1315, metadata !DIExpression()), !dbg !1141, !psr.id !1410
  call void @llvm.dbg.value(metadata i32 0, metadata !1411, metadata !DIExpression()), !dbg !1338, !psr.id !1412
  br label %89, !dbg !1413, !psr.id !1415

89:                                               ; preds = %94, %82
  %.07 = phi i32 [ 0, %82 ], [ %95, %94 ], !dbg !1416, !psr.id !1417
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1411, metadata !DIExpression()), !dbg !1338, !psr.id !1418
  %90 = icmp slt i32 %.07, %.1, !dbg !1419, !psr.id !1421
  br i1 %90, label %91, label %96, !dbg !1422, !psr.id !1423

91:                                               ; preds = %89
  call void @br_i31_montymul(i32* %5, i32* %0, i32* %0, i32* %3, i32 %4), !dbg !1424, !psr.id !1426
  %92 = bitcast i32* %0 to i8*, !dbg !1427, !psr.id !1428, !PointTainted !94
  %93 = bitcast i32* %5 to i8*, !dbg !1427, !psr.id !1429
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 %13, i1 false), !dbg !1427, !psr.id !1430, !CalledTainted !787
  br label %94, !dbg !1431, !psr.id !1432

94:                                               ; preds = %91
  %95 = add nsw i32 %.07, 1, !dbg !1433, !psr.id !1434
  call void @llvm.dbg.value(metadata i32 %95, metadata !1411, metadata !DIExpression()), !dbg !1338, !psr.id !1435
  br label %89, !dbg !1436, !llvm.loop !1437, !psr.id !1439

96:                                               ; preds = %89
  %97 = icmp sgt i32 %.08, 1, !dbg !1440, !psr.id !1442
  br i1 %97, label %98, label %126, !dbg !1443, !psr.id !1444

98:                                               ; preds = %96
  %99 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1445, !psr.id !1447
  %100 = load i32, i32* %99, align 4, !dbg !1445, !psr.id !1448, !ValueTainted !92
  call void @br_i31_zero.4(i32* %16, i32 %100), !dbg !1449, !psr.id !1450
  %101 = getelementptr inbounds i32, i32* %16, i64 %15, !dbg !1451, !psr.id !1452, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i32* %101, metadata !1254, metadata !DIExpression()), !dbg !1141, !psr.id !1453
  call void @llvm.dbg.value(metadata i64 1, metadata !1256, metadata !DIExpression()), !dbg !1141, !psr.id !1454
  br label %102, !dbg !1455, !psr.id !1457

102:                                              ; preds = %123, %98
  %.119 = phi i32* [ %101, %98 ], [ %122, %123 ], !dbg !1458, !psr.id !1459, !ValueTainted !92, !PointTainted !94
  %.117 = phi i64 [ 1, %98 ], [ %124, %123 ], !dbg !1460, !psr.id !1461
  call void @llvm.dbg.value(metadata i64 %.117, metadata !1256, metadata !DIExpression()), !dbg !1141, !psr.id !1462
  call void @llvm.dbg.value(metadata i32* %.119, metadata !1254, metadata !DIExpression()), !dbg !1141, !psr.id !1463
  %103 = shl i32 1, %.1, !dbg !1464, !psr.id !1466
  %104 = zext i32 %103 to i64, !dbg !1467, !psr.id !1468
  %105 = icmp ult i64 %.117, %104, !dbg !1469, !psr.id !1470
  br i1 %105, label %106, label %125, !dbg !1471, !psr.id !1472

106:                                              ; preds = %102
  %107 = trunc i64 %.117 to i32, !dbg !1473, !psr.id !1475
  %108 = call i32 @EQ.5(i32 %107, i32 %87), !dbg !1476, !psr.id !1477, !ValueTainted !92
  %109 = sub i32 0, %108, !dbg !1478, !psr.id !1479, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %109, metadata !1480, metadata !DIExpression()), !dbg !1481, !psr.id !1482
  call void @llvm.dbg.value(metadata i64 1, metadata !1483, metadata !DIExpression()), !dbg !1141, !psr.id !1484
  br label %110, !dbg !1485, !psr.id !1487

110:                                              ; preds = %119, %106
  %.015 = phi i64 [ 1, %106 ], [ %120, %119 ], !dbg !1488, !psr.id !1489
  call void @llvm.dbg.value(metadata i64 %.015, metadata !1483, metadata !DIExpression()), !dbg !1141, !psr.id !1490
  %111 = icmp ult i64 %.015, %15, !dbg !1491, !psr.id !1493, !ValueTainted !92
  br i1 %111, label %112, label %121, !dbg !1494, !psr.id !1495, !Tainted !105

112:                                              ; preds = %110
  %113 = getelementptr inbounds i32, i32* %.119, i64 %.015, !dbg !1496, !psr.id !1498, !ValueTainted !92, !PointTainted !94
  %114 = load i32, i32* %113, align 4, !dbg !1496, !psr.id !1499, !Tainted !105, !ValueTainted !92
  %115 = and i32 %109, %114, !dbg !1500, !psr.id !1501, !ValueTainted !92
  %116 = getelementptr inbounds i32, i32* %16, i64 %.015, !dbg !1502, !psr.id !1503, !ValueTainted !92, !PointTainted !94
  %117 = load i32, i32* %116, align 4, !dbg !1504, !psr.id !1505, !Tainted !105, !ValueTainted !92
  %118 = or i32 %117, %115, !dbg !1504, !psr.id !1506, !ValueTainted !92
  store i32 %118, i32* %116, align 4, !dbg !1504, !psr.id !1507, !Tainted !105
  br label %119, !dbg !1508, !psr.id !1509

119:                                              ; preds = %112
  %120 = add i64 %.015, 1, !dbg !1510, !psr.id !1511
  call void @llvm.dbg.value(metadata i64 %120, metadata !1483, metadata !DIExpression()), !dbg !1141, !psr.id !1512
  br label %110, !dbg !1513, !llvm.loop !1514, !psr.id !1516

121:                                              ; preds = %110
  %122 = getelementptr inbounds i32, i32* %.119, i64 %15, !dbg !1517, !psr.id !1518, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i32* %122, metadata !1254, metadata !DIExpression()), !dbg !1141, !psr.id !1519
  br label %123, !dbg !1520, !psr.id !1521

123:                                              ; preds = %121
  %124 = add i64 %.117, 1, !dbg !1522, !psr.id !1523
  call void @llvm.dbg.value(metadata i64 %124, metadata !1256, metadata !DIExpression()), !dbg !1141, !psr.id !1524
  br label %102, !dbg !1525, !llvm.loop !1526, !psr.id !1528

125:                                              ; preds = %102
  br label %126, !dbg !1529, !psr.id !1530

126:                                              ; preds = %125, %96
  call void @br_i31_montymul(i32* %5, i32* %0, i32* %16, i32* %3, i32 %4), !dbg !1531, !psr.id !1532
  %127 = call i32 @NEQ.6(i32 %87, i32 0), !dbg !1533, !psr.id !1534, !ValueTainted !92
  %128 = bitcast i32* %0 to i8*, !dbg !1535, !psr.id !1536, !PointTainted !94
  %129 = bitcast i32* %5 to i8*, !dbg !1537, !psr.id !1538
  call void @br_ccopy(i32 %127, i8* %128, i8* %129, i64 %13), !dbg !1539, !psr.id !1540
  br label %62, !dbg !1317, !llvm.loop !1541, !psr.id !1543

130:                                              ; preds = %66
  call void @br_i31_from_monty(i32* %0, i32* %3, i32 %4), !dbg !1544, !psr.id !1545
  br label %131, !dbg !1546, !psr.id !1547

131:                                              ; preds = %130, %19
  %.0 = phi i32 [ 0, %19 ], [ 1, %130 ], !dbg !1141, !psr.id !1548
  ret i32 %.0, !dbg !1549, !psr.id !1550
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @br_i31_zero.4(i32* %0, i32 %1) #0 !dbg !1551 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1552, metadata !DIExpression()), !dbg !1553, !psr.id !1554
  call void @llvm.dbg.value(metadata i32 %1, metadata !1555, metadata !DIExpression()), !dbg !1553, !psr.id !1556
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !1557, !psr.id !1558, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i32* %3, metadata !1552, metadata !DIExpression()), !dbg !1553, !psr.id !1559
  store i32 %1, i32* %0, align 4, !dbg !1560, !psr.id !1561, !Tainted !105
  %4 = bitcast i32* %3 to i8*, !dbg !1562, !psr.id !1563, !ValueTainted !92, !PointTainted !94
  %5 = add i32 %1, 31, !dbg !1564, !psr.id !1565, !ValueTainted !92
  %6 = lshr i32 %5, 5, !dbg !1566, !psr.id !1567, !ValueTainted !92
  %7 = zext i32 %6 to i64, !dbg !1568, !psr.id !1569, !ValueTainted !92
  %8 = mul i64 %7, 4, !dbg !1570, !psr.id !1571, !ValueTainted !92
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !1562, !psr.id !1572, !CalledTainted !1242
  ret void, !dbg !1573, !psr.id !1574
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.5(i32 %0, i32 %1) #0 !dbg !1575 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1576, metadata !DIExpression()), !dbg !1577, !psr.id !1578
  call void @llvm.dbg.value(metadata i32 %1, metadata !1579, metadata !DIExpression()), !dbg !1577, !psr.id !1580
  %3 = xor i32 %0, %1, !dbg !1581, !psr.id !1582, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !1583, metadata !DIExpression()), !dbg !1577, !psr.id !1584
  %4 = sub i32 0, %3, !dbg !1585, !psr.id !1586, !ValueTainted !92
  %5 = or i32 %3, %4, !dbg !1587, !psr.id !1588, !ValueTainted !92
  %6 = lshr i32 %5, 31, !dbg !1589, !psr.id !1590, !ValueTainted !92
  %7 = call i32 @NOT.7(i32 %6), !dbg !1591, !psr.id !1592, !ValueTainted !92
  ret i32 %7, !dbg !1593, !psr.id !1594
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.6(i32 %0, i32 %1) #0 !dbg !1595 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1596, metadata !DIExpression()), !dbg !1597, !psr.id !1598
  call void @llvm.dbg.value(metadata i32 %1, metadata !1599, metadata !DIExpression()), !dbg !1597, !psr.id !1600
  %3 = xor i32 %0, %1, !dbg !1601, !psr.id !1602, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !1603, metadata !DIExpression()), !dbg !1597, !psr.id !1604
  %4 = sub i32 0, %3, !dbg !1605, !psr.id !1606, !ValueTainted !92
  %5 = or i32 %3, %4, !dbg !1607, !psr.id !1608, !ValueTainted !92
  %6 = lshr i32 %5, 31, !dbg !1609, !psr.id !1610, !ValueTainted !92
  ret i32 %6, !dbg !1611, !psr.id !1612
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.7(i32 %0) #0 !dbg !1613 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1614, metadata !DIExpression()), !dbg !1615, !psr.id !1616
  %2 = xor i32 %0, 1, !dbg !1617, !psr.id !1618, !ValueTainted !92
  ret i32 %2, !dbg !1619, !psr.id !1620
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_montymul(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 !dbg !1621 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1624, metadata !DIExpression()), !dbg !1625, !psr.id !1626
  call void @llvm.dbg.value(metadata i32* %1, metadata !1627, metadata !DIExpression()), !dbg !1625, !psr.id !1628
  call void @llvm.dbg.value(metadata i32* %2, metadata !1629, metadata !DIExpression()), !dbg !1625, !psr.id !1630
  call void @llvm.dbg.value(metadata i32* %3, metadata !1631, metadata !DIExpression()), !dbg !1625, !psr.id !1632
  call void @llvm.dbg.value(metadata i32 %4, metadata !1633, metadata !DIExpression()), !dbg !1625, !psr.id !1634
  %6 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1635, !psr.id !1636
  %7 = load i32, i32* %6, align 4, !dbg !1635, !psr.id !1637, !ValueTainted !92
  %8 = add i32 %7, 31, !dbg !1638, !psr.id !1639, !ValueTainted !92
  %9 = lshr i32 %8, 5, !dbg !1640, !psr.id !1641, !ValueTainted !92
  %10 = zext i32 %9 to i64, !dbg !1642, !psr.id !1643, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %10, metadata !1644, metadata !DIExpression()), !dbg !1625, !psr.id !1645
  %11 = and i64 %10, -4, !dbg !1646, !psr.id !1647, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %11, metadata !1648, metadata !DIExpression()), !dbg !1625, !psr.id !1649
  %12 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1650, !psr.id !1651
  %13 = load i32, i32* %12, align 4, !dbg !1650, !psr.id !1652, !ValueTainted !92
  call void @br_i31_zero.10(i32* %0, i32 %13), !dbg !1653, !psr.id !1654
  call void @llvm.dbg.value(metadata i32 0, metadata !1655, metadata !DIExpression()), !dbg !1625, !psr.id !1656
  call void @llvm.dbg.value(metadata i64 0, metadata !1657, metadata !DIExpression()), !dbg !1625, !psr.id !1658
  br label %14, !dbg !1659, !psr.id !1661

14:                                               ; preds = %169, %5
  %.04 = phi i64 [ 0, %5 ], [ %170, %169 ], !dbg !1662, !psr.id !1663
  %.01 = phi i32 [ 0, %5 ], [ %168, %169 ], !dbg !1625, !psr.id !1664
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1655, metadata !DIExpression()), !dbg !1625, !psr.id !1665
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1657, metadata !DIExpression()), !dbg !1625, !psr.id !1666
  %15 = icmp ult i64 %.04, %10, !dbg !1667, !psr.id !1669, !ValueTainted !92
  br i1 %15, label %16, label %171, !dbg !1670, !psr.id !1671, !Tainted !105

16:                                               ; preds = %14
  %17 = add i64 %.04, 1, !dbg !1672, !psr.id !1674
  %18 = getelementptr inbounds i32, i32* %1, i64 %17, !dbg !1675, !psr.id !1676, !ValueTainted !92, !PointTainted !94
  %19 = load i32, i32* %18, align 4, !dbg !1675, !psr.id !1677, !Tainted !105, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %19, metadata !1678, metadata !DIExpression()), !dbg !1679, !psr.id !1680
  %20 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1681, !psr.id !1682, !ValueTainted !92, !PointTainted !94
  %21 = load i32, i32* %20, align 4, !dbg !1681, !psr.id !1683, !Tainted !105, !ValueTainted !92
  %22 = add i64 %.04, 1, !dbg !1681, !psr.id !1684
  %23 = getelementptr inbounds i32, i32* %1, i64 %22, !dbg !1681, !psr.id !1685, !ValueTainted !92, !PointTainted !94
  %24 = load i32, i32* %23, align 4, !dbg !1681, !psr.id !1686, !Tainted !105, !ValueTainted !92
  %25 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1681, !psr.id !1687, !ValueTainted !92, !PointTainted !94
  %26 = load i32, i32* %25, align 4, !dbg !1681, !psr.id !1688, !Tainted !105, !ValueTainted !92
  %27 = mul i32 %24, %26, !dbg !1681, !psr.id !1689, !ValueTainted !92
  %28 = and i32 %27, 2147483647, !dbg !1681, !psr.id !1690, !ValueTainted !92
  %29 = add i32 %21, %28, !dbg !1681, !psr.id !1691, !ValueTainted !92
  %30 = mul i32 %29, %4, !dbg !1681, !psr.id !1692, !ValueTainted !92
  %31 = and i32 %30, 2147483647, !dbg !1681, !psr.id !1693, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %31, metadata !1694, metadata !DIExpression()), !dbg !1679, !psr.id !1695
  call void @llvm.dbg.value(metadata i64 0, metadata !1696, metadata !DIExpression()), !dbg !1679, !psr.id !1697
  call void @llvm.dbg.value(metadata i64 0, metadata !1698, metadata !DIExpression()), !dbg !1625, !psr.id !1699
  br label %32, !dbg !1700, !psr.id !1702

32:                                               ; preds = %131, %16
  %.02 = phi i64 [ 0, %16 ], [ %132, %131 ], !dbg !1703, !psr.id !1704
  %.0 = phi i64 [ 0, %16 ], [ %126, %131 ], !dbg !1679, !psr.id !1705, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1696, metadata !DIExpression()), !dbg !1679, !psr.id !1706
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1698, metadata !DIExpression()), !dbg !1625, !psr.id !1707
  %33 = icmp ult i64 %.02, %11, !dbg !1708, !psr.id !1710, !ValueTainted !92
  br i1 %33, label %34, label %133, !dbg !1711, !psr.id !1712, !Tainted !105

34:                                               ; preds = %32
  %35 = add i64 %.02, 1, !dbg !1713, !psr.id !1715
  %36 = getelementptr inbounds i32, i32* %0, i64 %35, !dbg !1716, !psr.id !1717, !ValueTainted !92, !PointTainted !94
  %37 = load i32, i32* %36, align 4, !dbg !1716, !psr.id !1718, !Tainted !105, !ValueTainted !92
  %38 = zext i32 %37 to i64, !dbg !1719, !psr.id !1720, !ValueTainted !92
  %39 = zext i32 %19 to i64, !dbg !1721, !psr.id !1722, !ValueTainted !92
  %40 = add i64 %.02, 1, !dbg !1721, !psr.id !1723
  %41 = getelementptr inbounds i32, i32* %2, i64 %40, !dbg !1721, !psr.id !1724, !ValueTainted !92, !PointTainted !94
  %42 = load i32, i32* %41, align 4, !dbg !1721, !psr.id !1725, !Tainted !105, !ValueTainted !92
  %43 = zext i32 %42 to i64, !dbg !1721, !psr.id !1726, !ValueTainted !92
  %44 = mul i64 %39, %43, !dbg !1721, !psr.id !1727, !ValueTainted !92
  %45 = add i64 %38, %44, !dbg !1728, !psr.id !1729, !ValueTainted !92
  %46 = zext i32 %31 to i64, !dbg !1730, !psr.id !1731, !ValueTainted !92
  %47 = add i64 %.02, 1, !dbg !1730, !psr.id !1732
  %48 = getelementptr inbounds i32, i32* %3, i64 %47, !dbg !1730, !psr.id !1733
  %49 = load i32, i32* %48, align 4, !dbg !1730, !psr.id !1734, !ValueTainted !92
  %50 = zext i32 %49 to i64, !dbg !1730, !psr.id !1735, !ValueTainted !92
  %51 = mul i64 %46, %50, !dbg !1730, !psr.id !1736, !ValueTainted !92
  %52 = add i64 %45, %51, !dbg !1737, !psr.id !1738, !ValueTainted !92
  %53 = add i64 %52, %.0, !dbg !1739, !psr.id !1740, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %53, metadata !1741, metadata !DIExpression()), !dbg !1742, !psr.id !1743
  %54 = lshr i64 %53, 31, !dbg !1744, !psr.id !1745, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %54, metadata !1696, metadata !DIExpression()), !dbg !1679, !psr.id !1746
  %55 = trunc i64 %53 to i32, !dbg !1747, !psr.id !1748, !ValueTainted !92
  %56 = and i32 %55, 2147483647, !dbg !1749, !psr.id !1750, !ValueTainted !92
  %57 = add i64 %.02, 0, !dbg !1751, !psr.id !1752
  %58 = getelementptr inbounds i32, i32* %0, i64 %57, !dbg !1753, !psr.id !1754, !ValueTainted !92, !PointTainted !94
  store i32 %56, i32* %58, align 4, !dbg !1755, !psr.id !1756, !Tainted !105
  %59 = add i64 %.02, 2, !dbg !1757, !psr.id !1758
  %60 = getelementptr inbounds i32, i32* %0, i64 %59, !dbg !1759, !psr.id !1760, !ValueTainted !92, !PointTainted !94
  %61 = load i32, i32* %60, align 4, !dbg !1759, !psr.id !1761, !Tainted !105, !ValueTainted !92
  %62 = zext i32 %61 to i64, !dbg !1762, !psr.id !1763, !ValueTainted !92
  %63 = zext i32 %19 to i64, !dbg !1764, !psr.id !1765, !ValueTainted !92
  %64 = add i64 %.02, 2, !dbg !1764, !psr.id !1766
  %65 = getelementptr inbounds i32, i32* %2, i64 %64, !dbg !1764, !psr.id !1767, !ValueTainted !92, !PointTainted !94
  %66 = load i32, i32* %65, align 4, !dbg !1764, !psr.id !1768, !Tainted !105, !ValueTainted !92
  %67 = zext i32 %66 to i64, !dbg !1764, !psr.id !1769, !ValueTainted !92
  %68 = mul i64 %63, %67, !dbg !1764, !psr.id !1770, !ValueTainted !92
  %69 = add i64 %62, %68, !dbg !1771, !psr.id !1772, !ValueTainted !92
  %70 = zext i32 %31 to i64, !dbg !1773, !psr.id !1774, !ValueTainted !92
  %71 = add i64 %.02, 2, !dbg !1773, !psr.id !1775
  %72 = getelementptr inbounds i32, i32* %3, i64 %71, !dbg !1773, !psr.id !1776
  %73 = load i32, i32* %72, align 4, !dbg !1773, !psr.id !1777, !ValueTainted !92
  %74 = zext i32 %73 to i64, !dbg !1773, !psr.id !1778, !ValueTainted !92
  %75 = mul i64 %70, %74, !dbg !1773, !psr.id !1779, !ValueTainted !92
  %76 = add i64 %69, %75, !dbg !1780, !psr.id !1781, !ValueTainted !92
  %77 = add i64 %76, %54, !dbg !1782, !psr.id !1783, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %77, metadata !1741, metadata !DIExpression()), !dbg !1742, !psr.id !1784
  %78 = lshr i64 %77, 31, !dbg !1785, !psr.id !1786, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %78, metadata !1696, metadata !DIExpression()), !dbg !1679, !psr.id !1787
  %79 = trunc i64 %77 to i32, !dbg !1788, !psr.id !1789, !ValueTainted !92
  %80 = and i32 %79, 2147483647, !dbg !1790, !psr.id !1791, !ValueTainted !92
  %81 = add i64 %.02, 1, !dbg !1792, !psr.id !1793
  %82 = getelementptr inbounds i32, i32* %0, i64 %81, !dbg !1794, !psr.id !1795, !ValueTainted !92, !PointTainted !94
  store i32 %80, i32* %82, align 4, !dbg !1796, !psr.id !1797, !Tainted !105
  %83 = add i64 %.02, 3, !dbg !1798, !psr.id !1799
  %84 = getelementptr inbounds i32, i32* %0, i64 %83, !dbg !1800, !psr.id !1801, !ValueTainted !92, !PointTainted !94
  %85 = load i32, i32* %84, align 4, !dbg !1800, !psr.id !1802, !Tainted !105, !ValueTainted !92
  %86 = zext i32 %85 to i64, !dbg !1803, !psr.id !1804, !ValueTainted !92
  %87 = zext i32 %19 to i64, !dbg !1805, !psr.id !1806, !ValueTainted !92
  %88 = add i64 %.02, 3, !dbg !1805, !psr.id !1807
  %89 = getelementptr inbounds i32, i32* %2, i64 %88, !dbg !1805, !psr.id !1808, !ValueTainted !92, !PointTainted !94
  %90 = load i32, i32* %89, align 4, !dbg !1805, !psr.id !1809, !Tainted !105, !ValueTainted !92
  %91 = zext i32 %90 to i64, !dbg !1805, !psr.id !1810, !ValueTainted !92
  %92 = mul i64 %87, %91, !dbg !1805, !psr.id !1811, !ValueTainted !92
  %93 = add i64 %86, %92, !dbg !1812, !psr.id !1813, !ValueTainted !92
  %94 = zext i32 %31 to i64, !dbg !1814, !psr.id !1815, !ValueTainted !92
  %95 = add i64 %.02, 3, !dbg !1814, !psr.id !1816
  %96 = getelementptr inbounds i32, i32* %3, i64 %95, !dbg !1814, !psr.id !1817
  %97 = load i32, i32* %96, align 4, !dbg !1814, !psr.id !1818, !ValueTainted !92
  %98 = zext i32 %97 to i64, !dbg !1814, !psr.id !1819, !ValueTainted !92
  %99 = mul i64 %94, %98, !dbg !1814, !psr.id !1820, !ValueTainted !92
  %100 = add i64 %93, %99, !dbg !1821, !psr.id !1822, !ValueTainted !92
  %101 = add i64 %100, %78, !dbg !1823, !psr.id !1824, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %101, metadata !1741, metadata !DIExpression()), !dbg !1742, !psr.id !1825
  %102 = lshr i64 %101, 31, !dbg !1826, !psr.id !1827, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %102, metadata !1696, metadata !DIExpression()), !dbg !1679, !psr.id !1828
  %103 = trunc i64 %101 to i32, !dbg !1829, !psr.id !1830, !ValueTainted !92
  %104 = and i32 %103, 2147483647, !dbg !1831, !psr.id !1832, !ValueTainted !92
  %105 = add i64 %.02, 2, !dbg !1833, !psr.id !1834
  %106 = getelementptr inbounds i32, i32* %0, i64 %105, !dbg !1835, !psr.id !1836, !ValueTainted !92, !PointTainted !94
  store i32 %104, i32* %106, align 4, !dbg !1837, !psr.id !1838, !Tainted !105
  %107 = add i64 %.02, 4, !dbg !1839, !psr.id !1840
  %108 = getelementptr inbounds i32, i32* %0, i64 %107, !dbg !1841, !psr.id !1842, !ValueTainted !92, !PointTainted !94
  %109 = load i32, i32* %108, align 4, !dbg !1841, !psr.id !1843, !Tainted !105, !ValueTainted !92
  %110 = zext i32 %109 to i64, !dbg !1844, !psr.id !1845, !ValueTainted !92
  %111 = zext i32 %19 to i64, !dbg !1846, !psr.id !1847, !ValueTainted !92
  %112 = add i64 %.02, 4, !dbg !1846, !psr.id !1848
  %113 = getelementptr inbounds i32, i32* %2, i64 %112, !dbg !1846, !psr.id !1849, !ValueTainted !92, !PointTainted !94
  %114 = load i32, i32* %113, align 4, !dbg !1846, !psr.id !1850, !Tainted !105, !ValueTainted !92
  %115 = zext i32 %114 to i64, !dbg !1846, !psr.id !1851, !ValueTainted !92
  %116 = mul i64 %111, %115, !dbg !1846, !psr.id !1852, !ValueTainted !92
  %117 = add i64 %110, %116, !dbg !1853, !psr.id !1854, !ValueTainted !92
  %118 = zext i32 %31 to i64, !dbg !1855, !psr.id !1856, !ValueTainted !92
  %119 = add i64 %.02, 4, !dbg !1855, !psr.id !1857
  %120 = getelementptr inbounds i32, i32* %3, i64 %119, !dbg !1855, !psr.id !1858
  %121 = load i32, i32* %120, align 4, !dbg !1855, !psr.id !1859, !ValueTainted !92
  %122 = zext i32 %121 to i64, !dbg !1855, !psr.id !1860, !ValueTainted !92
  %123 = mul i64 %118, %122, !dbg !1855, !psr.id !1861, !ValueTainted !92
  %124 = add i64 %117, %123, !dbg !1862, !psr.id !1863, !ValueTainted !92
  %125 = add i64 %124, %102, !dbg !1864, !psr.id !1865, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %125, metadata !1741, metadata !DIExpression()), !dbg !1742, !psr.id !1866
  %126 = lshr i64 %125, 31, !dbg !1867, !psr.id !1868, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %126, metadata !1696, metadata !DIExpression()), !dbg !1679, !psr.id !1869
  %127 = trunc i64 %125 to i32, !dbg !1870, !psr.id !1871, !ValueTainted !92
  %128 = and i32 %127, 2147483647, !dbg !1872, !psr.id !1873, !ValueTainted !92
  %129 = add i64 %.02, 3, !dbg !1874, !psr.id !1875
  %130 = getelementptr inbounds i32, i32* %0, i64 %129, !dbg !1876, !psr.id !1877, !ValueTainted !92, !PointTainted !94
  store i32 %128, i32* %130, align 4, !dbg !1878, !psr.id !1879, !Tainted !105
  br label %131, !dbg !1880, !psr.id !1881

131:                                              ; preds = %34
  %132 = add i64 %.02, 4, !dbg !1882, !psr.id !1883
  call void @llvm.dbg.value(metadata i64 %132, metadata !1698, metadata !DIExpression()), !dbg !1625, !psr.id !1884
  br label %32, !dbg !1885, !llvm.loop !1886, !psr.id !1888

133:                                              ; preds = %32
  br label %134, !dbg !1889, !psr.id !1890

134:                                              ; preds = %160, %133
  %.13 = phi i64 [ %.02, %133 ], [ %161, %160 ], !dbg !1679, !psr.id !1891
  %.1 = phi i64 [ %.0, %133 ], [ %156, %160 ], !dbg !1679, !psr.id !1892, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1696, metadata !DIExpression()), !dbg !1679, !psr.id !1893
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1698, metadata !DIExpression()), !dbg !1625, !psr.id !1894
  %135 = icmp ult i64 %.13, %10, !dbg !1895, !psr.id !1898, !ValueTainted !92
  br i1 %135, label %136, label %162, !dbg !1899, !psr.id !1900, !Tainted !105

136:                                              ; preds = %134
  %137 = add i64 %.13, 1, !dbg !1901, !psr.id !1903
  %138 = getelementptr inbounds i32, i32* %0, i64 %137, !dbg !1904, !psr.id !1905, !ValueTainted !92, !PointTainted !94
  %139 = load i32, i32* %138, align 4, !dbg !1904, !psr.id !1906, !Tainted !105, !ValueTainted !92
  %140 = zext i32 %139 to i64, !dbg !1907, !psr.id !1908, !ValueTainted !92
  %141 = zext i32 %19 to i64, !dbg !1909, !psr.id !1910, !ValueTainted !92
  %142 = add i64 %.13, 1, !dbg !1909, !psr.id !1911
  %143 = getelementptr inbounds i32, i32* %2, i64 %142, !dbg !1909, !psr.id !1912, !ValueTainted !92, !PointTainted !94
  %144 = load i32, i32* %143, align 4, !dbg !1909, !psr.id !1913, !Tainted !105, !ValueTainted !92
  %145 = zext i32 %144 to i64, !dbg !1909, !psr.id !1914, !ValueTainted !92
  %146 = mul i64 %141, %145, !dbg !1909, !psr.id !1915, !ValueTainted !92
  %147 = add i64 %140, %146, !dbg !1916, !psr.id !1917, !ValueTainted !92
  %148 = zext i32 %31 to i64, !dbg !1918, !psr.id !1919, !ValueTainted !92
  %149 = add i64 %.13, 1, !dbg !1918, !psr.id !1920
  %150 = getelementptr inbounds i32, i32* %3, i64 %149, !dbg !1918, !psr.id !1921
  %151 = load i32, i32* %150, align 4, !dbg !1918, !psr.id !1922, !ValueTainted !92
  %152 = zext i32 %151 to i64, !dbg !1918, !psr.id !1923, !ValueTainted !92
  %153 = mul i64 %148, %152, !dbg !1918, !psr.id !1924, !ValueTainted !92
  %154 = add i64 %147, %153, !dbg !1925, !psr.id !1926, !ValueTainted !92
  %155 = add i64 %154, %.1, !dbg !1927, !psr.id !1928, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %155, metadata !1929, metadata !DIExpression()), !dbg !1930, !psr.id !1931
  %156 = lshr i64 %155, 31, !dbg !1932, !psr.id !1933, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %156, metadata !1696, metadata !DIExpression()), !dbg !1679, !psr.id !1934
  %157 = trunc i64 %155 to i32, !dbg !1935, !psr.id !1936, !ValueTainted !92
  %158 = and i32 %157, 2147483647, !dbg !1937, !psr.id !1938, !ValueTainted !92
  %159 = getelementptr inbounds i32, i32* %0, i64 %.13, !dbg !1939, !psr.id !1940, !ValueTainted !92, !PointTainted !94
  store i32 %158, i32* %159, align 4, !dbg !1941, !psr.id !1942, !Tainted !105
  br label %160, !dbg !1943, !psr.id !1944

160:                                              ; preds = %136
  %161 = add i64 %.13, 1, !dbg !1945, !psr.id !1946
  call void @llvm.dbg.value(metadata i64 %161, metadata !1698, metadata !DIExpression()), !dbg !1625, !psr.id !1947
  br label %134, !dbg !1948, !llvm.loop !1949, !psr.id !1951

162:                                              ; preds = %134
  %163 = zext i32 %.01 to i64, !dbg !1952, !psr.id !1953, !ValueTainted !92
  %164 = add i64 %163, %.1, !dbg !1952, !psr.id !1954, !ValueTainted !92
  %165 = trunc i64 %164 to i32, !dbg !1952, !psr.id !1955, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %165, metadata !1655, metadata !DIExpression()), !dbg !1625, !psr.id !1956
  %166 = and i32 %165, 2147483647, !dbg !1957, !psr.id !1958, !ValueTainted !92
  %167 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !1959, !psr.id !1960, !ValueTainted !92, !PointTainted !94
  store i32 %166, i32* %167, align 4, !dbg !1961, !psr.id !1962, !Tainted !105
  %168 = lshr i32 %165, 31, !dbg !1963, !psr.id !1964, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %168, metadata !1655, metadata !DIExpression()), !dbg !1625, !psr.id !1965
  br label %169, !dbg !1966, !psr.id !819

169:                                              ; preds = %162
  %170 = add i64 %.04, 1, !dbg !1967, !psr.id !1968
  call void @llvm.dbg.value(metadata i64 %170, metadata !1657, metadata !DIExpression()), !dbg !1625, !psr.id !1969
  br label %14, !dbg !1970, !llvm.loop !1971, !psr.id !1973

171:                                              ; preds = %14
  %172 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1974, !psr.id !1975
  %173 = load i32, i32* %172, align 4, !dbg !1974, !psr.id !1976, !ValueTainted !92
  %174 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1977, !psr.id !1978, !ValueTainted !92, !PointTainted !94
  store i32 %173, i32* %174, align 4, !dbg !1979, !psr.id !1980, !Tainted !105
  %175 = call i32 @NEQ.11(i32 %.01, i32 0), !dbg !1981, !psr.id !1982, !ValueTainted !92
  %176 = call i32 @br_i31_sub(i32* %0, i32* %3, i32 0), !dbg !1983, !psr.id !1984, !ValueTainted !92
  %177 = call i32 @NOT.12(i32 %176), !dbg !1985, !psr.id !1242, !ValueTainted !92
  %178 = or i32 %175, %177, !dbg !1986, !psr.id !1987, !ValueTainted !92
  %179 = call i32 @br_i31_sub(i32* %0, i32* %3, i32 %178), !dbg !1988, !psr.id !1989, !ValueTainted !92
  ret void, !dbg !1990, !psr.id !1991
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i31_zero.10(i32* %0, i32 %1) #0 !dbg !1992 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1993, metadata !DIExpression()), !dbg !1994, !psr.id !1995
  call void @llvm.dbg.value(metadata i32 %1, metadata !1996, metadata !DIExpression()), !dbg !1994, !psr.id !1997
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !1998, !psr.id !1999, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i32* %3, metadata !1993, metadata !DIExpression()), !dbg !1994, !psr.id !2000
  store i32 %1, i32* %0, align 4, !dbg !2001, !psr.id !2002, !Tainted !105
  %4 = bitcast i32* %3 to i8*, !dbg !2003, !psr.id !2004, !ValueTainted !92, !PointTainted !94
  %5 = add i32 %1, 31, !dbg !2005, !psr.id !2006, !ValueTainted !92
  %6 = lshr i32 %5, 5, !dbg !2007, !psr.id !2008, !ValueTainted !92
  %7 = zext i32 %6 to i64, !dbg !2009, !psr.id !2010, !ValueTainted !92
  %8 = mul i64 %7, 4, !dbg !2011, !psr.id !2012, !ValueTainted !92
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !2003, !psr.id !2013, !CalledTainted !1242
  ret void, !dbg !2014, !psr.id !2015
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.11(i32 %0, i32 %1) #0 !dbg !2016 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2017, metadata !DIExpression()), !dbg !2018, !psr.id !2019
  call void @llvm.dbg.value(metadata i32 %1, metadata !2020, metadata !DIExpression()), !dbg !2018, !psr.id !2021
  %3 = xor i32 %0, %1, !dbg !2022, !psr.id !2023, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !2024, metadata !DIExpression()), !dbg !2018, !psr.id !2025
  %4 = sub i32 0, %3, !dbg !2026, !psr.id !2027, !ValueTainted !92
  %5 = or i32 %3, %4, !dbg !2028, !psr.id !2029, !ValueTainted !92
  %6 = lshr i32 %5, 31, !dbg !2030, !psr.id !2031, !ValueTainted !92
  ret i32 %6, !dbg !2032, !psr.id !2033
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.12(i32 %0) #0 !dbg !2034 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2035, metadata !DIExpression()), !dbg !2036, !psr.id !2037
  %2 = xor i32 %0, 1, !dbg !2038, !psr.id !2039, !ValueTainted !92
  ret i32 %2, !dbg !2040, !psr.id !2041
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_mulacc(i32* %0, i32* %1, i32* %2) #0 !dbg !2042 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2045, metadata !DIExpression()), !dbg !2046, !psr.id !2047
  call void @llvm.dbg.value(metadata i32* %1, metadata !2048, metadata !DIExpression()), !dbg !2046, !psr.id !2049
  call void @llvm.dbg.value(metadata i32* %2, metadata !2050, metadata !DIExpression()), !dbg !2046, !psr.id !2051
  %4 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !2052, !psr.id !2053
  %5 = load i32, i32* %4, align 4, !dbg !2052, !psr.id !2054, !ValueTainted !92
  %6 = add i32 %5, 31, !dbg !2055, !psr.id !2056, !ValueTainted !92
  %7 = lshr i32 %6, 5, !dbg !2057, !psr.id !2058, !ValueTainted !92
  %8 = zext i32 %7 to i64, !dbg !2059, !psr.id !2060, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %8, metadata !2061, metadata !DIExpression()), !dbg !2046, !psr.id !2062
  %9 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !2063, !psr.id !2064, !PointTainted !94
  %10 = load i32, i32* %9, align 4, !dbg !2063, !psr.id !2065, !ValueTainted !92
  %11 = add i32 %10, 31, !dbg !2066, !psr.id !2067, !ValueTainted !92
  %12 = lshr i32 %11, 5, !dbg !2068, !psr.id !2069, !ValueTainted !92
  %13 = zext i32 %12 to i64, !dbg !2070, !psr.id !2071, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %13, metadata !2072, metadata !DIExpression()), !dbg !2046, !psr.id !2073
  %14 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !2074, !psr.id !2075
  %15 = load i32, i32* %14, align 4, !dbg !2074, !psr.id !2076, !ValueTainted !92
  %16 = and i32 %15, 31, !dbg !2077, !psr.id !2078, !ValueTainted !92
  %17 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !2079, !psr.id !2080, !PointTainted !94
  %18 = load i32, i32* %17, align 4, !dbg !2079, !psr.id !2081, !ValueTainted !92
  %19 = and i32 %18, 31, !dbg !2082, !psr.id !2083, !ValueTainted !92
  %20 = add i32 %16, %19, !dbg !2084, !psr.id !2085, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %20, metadata !2086, metadata !DIExpression()), !dbg !2046, !psr.id !2087
  %21 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !2088, !psr.id !2089
  %22 = load i32, i32* %21, align 4, !dbg !2088, !psr.id !2090, !ValueTainted !92
  %23 = lshr i32 %22, 5, !dbg !2091, !psr.id !2092, !ValueTainted !92
  %24 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !2093, !psr.id !2094, !PointTainted !94
  %25 = load i32, i32* %24, align 4, !dbg !2093, !psr.id !2095, !ValueTainted !92
  %26 = lshr i32 %25, 5, !dbg !2096, !psr.id !2097, !ValueTainted !92
  %27 = add i32 %23, %26, !dbg !2098, !psr.id !2099, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %27, metadata !2100, metadata !DIExpression()), !dbg !2046, !psr.id !2101
  %28 = shl i32 %27, 5, !dbg !2102, !psr.id !2103, !ValueTainted !92
  %29 = add i32 %28, %20, !dbg !2104, !psr.id !2105, !ValueTainted !92
  %30 = sub i32 %20, 31, !dbg !2106, !psr.id !2107, !ValueTainted !92
  %31 = xor i32 %30, -1, !dbg !2108, !psr.id !2109, !ValueTainted !92
  %32 = lshr i32 %31, 31, !dbg !2110, !psr.id !2111, !ValueTainted !92
  %33 = add i32 %29, %32, !dbg !2112, !psr.id !2113, !ValueTainted !92
  %34 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !2114, !psr.id !2115, !PointTainted !94
  store i32 %33, i32* %34, align 4, !dbg !2116, !psr.id !2117
  call void @llvm.dbg.value(metadata i64 0, metadata !2118, metadata !DIExpression()), !dbg !2046, !psr.id !2119
  br label %35, !dbg !2120, !psr.id !2122

35:                                               ; preds = %70, %3
  %.02 = phi i64 [ 0, %3 ], [ %71, %70 ], !dbg !2123, !psr.id !2124
  call void @llvm.dbg.value(metadata i64 %.02, metadata !2118, metadata !DIExpression()), !dbg !2046, !psr.id !2125
  %36 = icmp ult i64 %.02, %13, !dbg !2126, !psr.id !2128, !ValueTainted !92
  br i1 %36, label %37, label %72, !dbg !2129, !psr.id !2130, !Tainted !105

37:                                               ; preds = %35
  %38 = add i64 1, %.02, !dbg !2131, !psr.id !2133
  %39 = getelementptr inbounds i32, i32* %2, i64 %38, !dbg !2134, !psr.id !2135, !PointTainted !94
  %40 = load i32, i32* %39, align 4, !dbg !2134, !psr.id !2136, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %40, metadata !2137, metadata !DIExpression()), !dbg !2138, !psr.id !2139
  call void @llvm.dbg.value(metadata i64 0, metadata !2140, metadata !DIExpression()), !dbg !2138, !psr.id !2141
  call void @llvm.dbg.value(metadata i64 0, metadata !2142, metadata !DIExpression()), !dbg !2138, !psr.id !2143
  br label %41, !dbg !2144, !psr.id !2146

41:                                               ; preds = %63, %37
  %.01 = phi i64 [ 0, %37 ], [ %64, %63 ], !dbg !2147, !psr.id !2148
  %.0 = phi i64 [ 0, %37 ], [ %57, %63 ], !dbg !2138, !psr.id !2149, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2140, metadata !DIExpression()), !dbg !2138, !psr.id !2150
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2142, metadata !DIExpression()), !dbg !2138, !psr.id !2151
  %42 = icmp ult i64 %.01, %8, !dbg !2152, !psr.id !2154, !ValueTainted !92
  br i1 %42, label %43, label %65, !dbg !2155, !psr.id !2156, !Tainted !105

43:                                               ; preds = %41
  %44 = add i64 1, %.02, !dbg !2157, !psr.id !2159
  %45 = add i64 %44, %.01, !dbg !2160, !psr.id !2161
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !2162, !psr.id !2163, !PointTainted !94
  %47 = load i32, i32* %46, align 4, !dbg !2162, !psr.id !2164, !ValueTainted !92
  %48 = zext i32 %47 to i64, !dbg !2165, !psr.id !2166, !ValueTainted !92
  %49 = zext i32 %40 to i64, !dbg !2167, !psr.id !2168, !ValueTainted !92
  %50 = add i64 1, %.01, !dbg !2167, !psr.id !2169
  %51 = getelementptr inbounds i32, i32* %1, i64 %50, !dbg !2167, !psr.id !2170
  %52 = load i32, i32* %51, align 4, !dbg !2167, !psr.id !2171, !ValueTainted !92
  %53 = zext i32 %52 to i64, !dbg !2167, !psr.id !2172, !ValueTainted !92
  %54 = mul i64 %49, %53, !dbg !2167, !psr.id !2173, !ValueTainted !92
  %55 = add i64 %48, %54, !dbg !2174, !psr.id !2175, !ValueTainted !92
  %56 = add i64 %55, %.0, !dbg !2176, !psr.id !2177, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %56, metadata !2178, metadata !DIExpression()), !dbg !2179, !psr.id !2180
  %57 = lshr i64 %56, 31, !dbg !2181, !psr.id !2182, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %57, metadata !2140, metadata !DIExpression()), !dbg !2138, !psr.id !2183
  %58 = trunc i64 %56 to i32, !dbg !2184, !psr.id !2185, !ValueTainted !92
  %59 = and i32 %58, 2147483647, !dbg !2186, !psr.id !2187, !ValueTainted !92
  %60 = add i64 1, %.02, !dbg !2188, !psr.id !2189
  %61 = add i64 %60, %.01, !dbg !2190, !psr.id !2191
  %62 = getelementptr inbounds i32, i32* %0, i64 %61, !dbg !2192, !psr.id !2193, !PointTainted !94
  store i32 %59, i32* %62, align 4, !dbg !2194, !psr.id !2195
  br label %63, !dbg !2196, !psr.id !2197

63:                                               ; preds = %43
  %64 = add i64 %.01, 1, !dbg !2198, !psr.id !2199
  call void @llvm.dbg.value(metadata i64 %64, metadata !2142, metadata !DIExpression()), !dbg !2138, !psr.id !2200
  br label %41, !dbg !2201, !llvm.loop !2202, !psr.id !2204

65:                                               ; preds = %41
  %66 = trunc i64 %.0 to i32, !dbg !2205, !psr.id !2206, !ValueTainted !92
  %67 = add i64 1, %.02, !dbg !2207, !psr.id !2208
  %68 = add i64 %67, %8, !dbg !2209, !psr.id !2210, !ValueTainted !92
  %69 = getelementptr inbounds i32, i32* %0, i64 %68, !dbg !2211, !psr.id !2212, !ValueTainted !92, !PointTainted !94
  store i32 %66, i32* %69, align 4, !dbg !2213, !psr.id !2214, !Tainted !105
  br label %70, !dbg !2215, !psr.id !2216

70:                                               ; preds = %65
  %71 = add i64 %.02, 1, !dbg !2217, !psr.id !2218
  call void @llvm.dbg.value(metadata i64 %71, metadata !2118, metadata !DIExpression()), !dbg !2046, !psr.id !2219
  br label %35, !dbg !2220, !llvm.loop !2221, !psr.id !2223

72:                                               ; preds = %35
  ret void, !dbg !2224, !psr.id !2225
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_muladd_small(i32* %0, i32 %1, i32* %2) #0 !dbg !2226 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2229, metadata !DIExpression()), !dbg !2230, !psr.id !2231
  call void @llvm.dbg.value(metadata i32 %1, metadata !2232, metadata !DIExpression()), !dbg !2230, !psr.id !2233
  call void @llvm.dbg.value(metadata i32* %2, metadata !2234, metadata !DIExpression()), !dbg !2230, !psr.id !2235
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !2236, !psr.id !2237
  %5 = load i32, i32* %4, align 4, !dbg !2236, !psr.id !2238, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %5, metadata !2239, metadata !DIExpression()), !dbg !2230, !psr.id !2240
  %6 = icmp eq i32 %5, 0, !dbg !2241, !psr.id !2243, !ValueTainted !92
  br i1 %6, label %7, label %8, !dbg !2244, !psr.id !2245, !Tainted !105

7:                                                ; preds = %3
  br label %126, !dbg !2246, !psr.id !2248

8:                                                ; preds = %3
  %9 = icmp ule i32 %5, 31, !dbg !2249, !psr.id !2251, !ValueTainted !92
  br i1 %9, label %10, label %22, !dbg !2252, !psr.id !2253, !Tainted !105

10:                                               ; preds = %8
  %11 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2254, !psr.id !2256, !PointTainted !94
  %12 = load i32, i32* %11, align 4, !dbg !2254, !psr.id !2257, !ValueTainted !92
  %13 = lshr i32 %12, 1, !dbg !2258, !psr.id !2259, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %13, metadata !2260, metadata !DIExpression()), !dbg !2230, !psr.id !2261
  %14 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2262, !psr.id !2263, !PointTainted !94
  %15 = load i32, i32* %14, align 4, !dbg !2262, !psr.id !2264, !ValueTainted !92
  %16 = shl i32 %15, 31, !dbg !2265, !psr.id !2266, !ValueTainted !92
  %17 = or i32 %16, %1, !dbg !2267, !psr.id !2268, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %17, metadata !2269, metadata !DIExpression()), !dbg !2270, !psr.id !2271
  %18 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !2272, !psr.id !2273
  %19 = load i32, i32* %18, align 4, !dbg !2272, !psr.id !2274, !ValueTainted !92
  %20 = call i32 @br_rem(i32 %13, i32 %17, i32 %19), !dbg !2275, !psr.id !2276, !ValueTainted !92
  %21 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2277, !psr.id !2278, !PointTainted !94
  store i32 %20, i32* %21, align 4, !dbg !2279, !psr.id !2280
  br label %126, !dbg !2281, !psr.id !2282

22:                                               ; preds = %8
  %23 = add i32 %5, 31, !dbg !2283, !psr.id !2284, !ValueTainted !92
  %24 = lshr i32 %23, 5, !dbg !2285, !psr.id !2286, !ValueTainted !92
  %25 = zext i32 %24 to i64, !dbg !2287, !psr.id !2288, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %25, metadata !2289, metadata !DIExpression()), !dbg !2230, !psr.id !2290
  %26 = and i32 %5, 31, !dbg !2291, !psr.id !2292, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %26, metadata !2293, metadata !DIExpression()), !dbg !2230, !psr.id !2294
  %27 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !2295, !psr.id !2296, !ValueTainted !92, !PointTainted !94
  %28 = load i32, i32* %27, align 4, !dbg !2295, !psr.id !2297, !Tainted !105, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %28, metadata !2260, metadata !DIExpression()), !dbg !2230, !psr.id !2298
  %29 = icmp eq i32 %26, 0, !dbg !2299, !psr.id !2301, !ValueTainted !92
  br i1 %29, label %30, label %44, !dbg !2302, !psr.id !2303, !Tainted !105

30:                                               ; preds = %22
  %31 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !2304, !psr.id !2306, !ValueTainted !92, !PointTainted !94
  %32 = load i32, i32* %31, align 4, !dbg !2304, !psr.id !2307, !Tainted !105, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %32, metadata !2308, metadata !DIExpression()), !dbg !2230, !psr.id !2309
  %33 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !2310, !psr.id !2311, !PointTainted !94
  %34 = bitcast i32* %33 to i8*, !dbg !2312, !psr.id !2313, !PointTainted !94
  %35 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2314, !psr.id !2315, !PointTainted !94
  %36 = bitcast i32* %35 to i8*, !dbg !2312, !psr.id !2316, !PointTainted !94
  %37 = sub i64 %25, 1, !dbg !2317, !psr.id !2318, !ValueTainted !92
  %38 = mul i64 %37, 4, !dbg !2319, !psr.id !2320, !ValueTainted !92
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %36, i64 %38, i1 false), !dbg !2312, !psr.id !2321
  %39 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2322, !psr.id !2323, !PointTainted !94
  store i32 %1, i32* %39, align 4, !dbg !2324, !psr.id !2325
  %40 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !2326, !psr.id !2327, !ValueTainted !92, !PointTainted !94
  %41 = load i32, i32* %40, align 4, !dbg !2326, !psr.id !2328, !Tainted !105, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %41, metadata !2329, metadata !DIExpression()), !dbg !2230, !psr.id !2330
  %42 = getelementptr inbounds i32, i32* %2, i64 %25, !dbg !2331, !psr.id !2332, !ValueTainted !92
  %43 = load i32, i32* %42, align 4, !dbg !2331, !psr.id !2333, !Tainted !105, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %43, metadata !2334, metadata !DIExpression()), !dbg !2230, !psr.id !2335
  br label %82, !dbg !2336, !psr.id !2337

44:                                               ; preds = %22
  %45 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !2338, !psr.id !2340, !ValueTainted !92, !PointTainted !94
  %46 = load i32, i32* %45, align 4, !dbg !2338, !psr.id !2341, !Tainted !105, !ValueTainted !92
  %47 = sub i32 31, %26, !dbg !2342, !psr.id !2343, !ValueTainted !92
  %48 = shl i32 %46, %47, !dbg !2344, !psr.id !2345, !ValueTainted !92
  %49 = sub i64 %25, 1, !dbg !2346, !psr.id !2347, !ValueTainted !92
  %50 = getelementptr inbounds i32, i32* %0, i64 %49, !dbg !2348, !psr.id !2349, !ValueTainted !92, !PointTainted !94
  %51 = load i32, i32* %50, align 4, !dbg !2348, !psr.id !2350, !Tainted !105, !ValueTainted !92
  %52 = lshr i32 %51, %26, !dbg !2351, !psr.id !2352, !ValueTainted !92
  %53 = or i32 %48, %52, !dbg !2353, !psr.id !2354, !ValueTainted !92
  %54 = and i32 %53, 2147483647, !dbg !2355, !psr.id !2356, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %54, metadata !2308, metadata !DIExpression()), !dbg !2230, !psr.id !2357
  %55 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !2358, !psr.id !2359, !PointTainted !94
  %56 = bitcast i32* %55 to i8*, !dbg !2360, !psr.id !2361, !PointTainted !94
  %57 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2362, !psr.id !2363, !PointTainted !94
  %58 = bitcast i32* %57 to i8*, !dbg !2360, !psr.id !2364, !PointTainted !94
  %59 = sub i64 %25, 1, !dbg !2365, !psr.id !2366, !ValueTainted !92
  %60 = mul i64 %59, 4, !dbg !2367, !psr.id !2368, !ValueTainted !92
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %58, i64 %60, i1 false), !dbg !2360, !psr.id !2369
  %61 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2370, !psr.id !2371, !PointTainted !94
  store i32 %1, i32* %61, align 4, !dbg !2372, !psr.id !2373
  %62 = getelementptr inbounds i32, i32* %0, i64 %25, !dbg !2374, !psr.id !2375, !ValueTainted !92, !PointTainted !94
  %63 = load i32, i32* %62, align 4, !dbg !2374, !psr.id !2376, !Tainted !105, !ValueTainted !92
  %64 = sub i32 31, %26, !dbg !2377, !psr.id !2378, !ValueTainted !92
  %65 = shl i32 %63, %64, !dbg !2379, !psr.id !2380, !ValueTainted !92
  %66 = sub i64 %25, 1, !dbg !2381, !psr.id !2382, !ValueTainted !92
  %67 = getelementptr inbounds i32, i32* %0, i64 %66, !dbg !2383, !psr.id !2384, !ValueTainted !92, !PointTainted !94
  %68 = load i32, i32* %67, align 4, !dbg !2383, !psr.id !2385, !Tainted !105, !ValueTainted !92
  %69 = lshr i32 %68, %26, !dbg !2386, !psr.id !2387, !ValueTainted !92
  %70 = or i32 %65, %69, !dbg !2388, !psr.id !2389, !ValueTainted !92
  %71 = and i32 %70, 2147483647, !dbg !2390, !psr.id !2391, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %71, metadata !2329, metadata !DIExpression()), !dbg !2230, !psr.id !2392
  %72 = getelementptr inbounds i32, i32* %2, i64 %25, !dbg !2393, !psr.id !2394, !ValueTainted !92
  %73 = load i32, i32* %72, align 4, !dbg !2393, !psr.id !2395, !Tainted !105, !ValueTainted !92
  %74 = sub i32 31, %26, !dbg !2396, !psr.id !2397, !ValueTainted !92
  %75 = shl i32 %73, %74, !dbg !2398, !psr.id !2399, !ValueTainted !92
  %76 = sub i64 %25, 1, !dbg !2400, !psr.id !2401, !ValueTainted !92
  %77 = getelementptr inbounds i32, i32* %2, i64 %76, !dbg !2402, !psr.id !2403, !ValueTainted !92
  %78 = load i32, i32* %77, align 4, !dbg !2402, !psr.id !2404, !Tainted !105, !ValueTainted !92
  %79 = lshr i32 %78, %26, !dbg !2405, !psr.id !2406, !ValueTainted !92
  %80 = or i32 %75, %79, !dbg !2407, !psr.id !2408, !ValueTainted !92
  %81 = and i32 %80, 2147483647, !dbg !2409, !psr.id !2410, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %81, metadata !2334, metadata !DIExpression()), !dbg !2230, !psr.id !2411
  br label %82, !psr.id !2412

82:                                               ; preds = %44, %30
  %.05 = phi i32 [ %32, %30 ], [ %54, %44 ], !dbg !2413, !psr.id !2414
  %.03 = phi i32 [ %41, %30 ], [ %71, %44 ], !dbg !2413, !psr.id !2415, !ValueTainted !92
  %.02 = phi i32 [ %43, %30 ], [ %81, %44 ], !dbg !2413, !psr.id !2416
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2334, metadata !DIExpression()), !dbg !2230, !psr.id !2417
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2329, metadata !DIExpression()), !dbg !2230, !psr.id !2418
  call void @llvm.dbg.value(metadata i32 %.05, metadata !2308, metadata !DIExpression()), !dbg !2230, !psr.id !2419
  %83 = lshr i32 %.05, 1, !dbg !2420, !psr.id !2421
  %84 = shl i32 %.05, 31, !dbg !2422, !psr.id !2423, !ValueTainted !92
  %85 = or i32 %.03, %84, !dbg !2424, !psr.id !2425
  %86 = call i32 @br_div(i32 %83, i32 %85, i32 %.02), !dbg !2426, !psr.id !2427, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %86, metadata !2428, metadata !DIExpression()), !dbg !2230, !psr.id !2429
  %87 = call i32 @EQ.15(i32 %.05, i32 %.02), !dbg !2430, !psr.id !2431, !ValueTainted !92
  %88 = call i32 @EQ.15(i32 %86, i32 0), !dbg !2432, !psr.id !2433
  %89 = sub i32 %86, 1, !dbg !2434, !psr.id !2435
  %90 = call i32 @MUX.16(i32 %88, i32 0, i32 %89), !dbg !2436, !psr.id !2437, !ValueTainted !92
  %91 = call i32 @MUX.16(i32 %87, i32 2147483647, i32 %90), !dbg !2438, !psr.id !2439, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %91, metadata !2440, metadata !DIExpression()), !dbg !2230, !psr.id !2441
  call void @llvm.dbg.value(metadata i32 0, metadata !2442, metadata !DIExpression()), !dbg !2230, !psr.id !2443
  call void @llvm.dbg.value(metadata i32 1, metadata !2444, metadata !DIExpression()), !dbg !2230, !psr.id !2445
  call void @llvm.dbg.value(metadata i64 1, metadata !2446, metadata !DIExpression()), !dbg !2230, !psr.id !2447
  br label %92, !dbg !2448, !psr.id !2450

92:                                               ; preds = %116, %82
  %.04 = phi i64 [ 1, %82 ], [ %117, %116 ], !dbg !2451, !psr.id !2452
  %.01 = phi i32 [ 1, %82 ], [ %115, %116 ], !dbg !2230, !psr.id !2453, !ValueTainted !92
  %.0 = phi i32 [ 0, %82 ], [ %110, %116 ], !dbg !2230, !psr.id !2454, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2442, metadata !DIExpression()), !dbg !2230, !psr.id !2455
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2444, metadata !DIExpression()), !dbg !2230, !psr.id !2456
  call void @llvm.dbg.value(metadata i64 %.04, metadata !2446, metadata !DIExpression()), !dbg !2230, !psr.id !2457
  %93 = icmp ule i64 %.04, %25, !dbg !2458, !psr.id !2460, !ValueTainted !92
  br i1 %93, label %94, label %118, !dbg !2461, !psr.id !2462, !Tainted !105

94:                                               ; preds = %92
  %95 = getelementptr inbounds i32, i32* %2, i64 %.04, !dbg !2463, !psr.id !2465
  %96 = load i32, i32* %95, align 4, !dbg !2463, !psr.id !2466
  call void @llvm.dbg.value(metadata i32 %96, metadata !2467, metadata !DIExpression()), !dbg !2468, !psr.id !2469
  %97 = zext i32 %96 to i64, !dbg !2470, !psr.id !2471, !ValueTainted !92
  %98 = zext i32 %91 to i64, !dbg !2470, !psr.id !2472, !ValueTainted !92
  %99 = mul i64 %97, %98, !dbg !2470, !psr.id !2473, !ValueTainted !92
  %100 = zext i32 %.0 to i64, !dbg !2474, !psr.id !2475, !ValueTainted !92
  %101 = add i64 %99, %100, !dbg !2476, !psr.id !2477, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %101, metadata !2478, metadata !DIExpression()), !dbg !2468, !psr.id !2479
  %102 = lshr i64 %101, 31, !dbg !2480, !psr.id !2481, !ValueTainted !92
  %103 = trunc i64 %102 to i32, !dbg !2482, !psr.id !2483, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %103, metadata !2442, metadata !DIExpression()), !dbg !2230, !psr.id !2484
  %104 = trunc i64 %101 to i32, !dbg !2485, !psr.id !2486, !ValueTainted !92
  %105 = and i32 %104, 2147483647, !dbg !2487, !psr.id !2488, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %105, metadata !2489, metadata !DIExpression()), !dbg !2468, !psr.id !2490
  %106 = getelementptr inbounds i32, i32* %0, i64 %.04, !dbg !2491, !psr.id !2492, !PointTainted !94
  %107 = load i32, i32* %106, align 4, !dbg !2491, !psr.id !2493, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %107, metadata !2494, metadata !DIExpression()), !dbg !2468, !psr.id !2495
  %108 = sub i32 %107, %105, !dbg !2496, !psr.id !2497, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %108, metadata !2498, metadata !DIExpression()), !dbg !2468, !psr.id !2499
  %109 = lshr i32 %108, 31, !dbg !2500, !psr.id !2501, !ValueTainted !92
  %110 = add i32 %103, %109, !dbg !2502, !psr.id !2503, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %110, metadata !2442, metadata !DIExpression()), !dbg !2230, !psr.id !2504
  %111 = and i32 %108, 2147483647, !dbg !2505, !psr.id !2506
  call void @llvm.dbg.value(metadata i32 %111, metadata !2498, metadata !DIExpression()), !dbg !2468, !psr.id !2507
  %112 = getelementptr inbounds i32, i32* %0, i64 %.04, !dbg !2508, !psr.id !2509, !PointTainted !94
  store i32 %111, i32* %112, align 4, !dbg !2510, !psr.id !2511
  %113 = call i32 @EQ.15(i32 %111, i32 %96), !dbg !2512, !psr.id !2513, !ValueTainted !92
  %114 = call i32 @GT.17(i32 %111, i32 %96), !dbg !2514, !psr.id !2515, !ValueTainted !92
  %115 = call i32 @MUX.16(i32 %113, i32 %.01, i32 %114), !dbg !2516, !psr.id !2517, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %115, metadata !2444, metadata !DIExpression()), !dbg !2230, !psr.id !2518
  br label %116, !dbg !2519, !psr.id !2520

116:                                              ; preds = %94
  %117 = add i64 %.04, 1, !dbg !2521, !psr.id !2522
  call void @llvm.dbg.value(metadata i64 %117, metadata !2446, metadata !DIExpression()), !dbg !2230, !psr.id !2523
  br label %92, !dbg !2524, !llvm.loop !2525, !psr.id !2527

118:                                              ; preds = %92
  %119 = call i32 @GT.17(i32 %.0, i32 %28), !dbg !2528, !psr.id !2529
  call void @llvm.dbg.value(metadata i32 %119, metadata !2530, metadata !DIExpression()), !dbg !2230, !psr.id !2531
  %120 = xor i32 %119, -1, !dbg !2532, !psr.id !2533, !ValueTainted !92
  %121 = call i32 @GT.17(i32 %28, i32 %.0), !dbg !2534, !psr.id !2535, !ValueTainted !92
  %122 = or i32 %.01, %121, !dbg !2536, !psr.id !2537, !ValueTainted !92
  %123 = and i32 %120, %122, !dbg !2538, !psr.id !2539, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %123, metadata !2540, metadata !DIExpression()), !dbg !2230, !psr.id !2541
  %124 = call i32 @br_i31_add(i32* %0, i32* %2, i32 %119), !dbg !2542, !psr.id !2543
  %125 = call i32 @br_i31_sub(i32* %0, i32* %2, i32 %123), !dbg !2544, !psr.id !2545, !ValueTainted !92
  br label %126, !dbg !2546, !psr.id !2547

126:                                              ; preds = %118, %10, %7
  ret void, !dbg !2546, !psr.id !2548
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_rem(i32 %0, i32 %1, i32 %2) #0 !dbg !2549 {
  %4 = alloca i32, align 4, !psr.id !2550
  call void @llvm.dbg.value(metadata i32 %0, metadata !2551, metadata !DIExpression()), !dbg !2552, !psr.id !2553
  call void @llvm.dbg.value(metadata i32 %1, metadata !2554, metadata !DIExpression()), !dbg !2552, !psr.id !2555
  call void @llvm.dbg.value(metadata i32 %2, metadata !2556, metadata !DIExpression()), !dbg !2552, !psr.id !2557
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2558, metadata !DIExpression()), !dbg !2559, !psr.id !2560
  %5 = call i32 @br_divrem(i32 %0, i32 %1, i32 %2, i32* %4), !dbg !2561, !psr.id !2562, !ValueTainted !92
  %6 = load i32, i32* %4, align 4, !dbg !2563, !psr.id !2564, !ValueTainted !92
  ret i32 %6, !dbg !2565, !psr.id !2566
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_div(i32 %0, i32 %1, i32 %2) #0 !dbg !2567 {
  %4 = alloca i32, align 4, !psr.id !2568
  call void @llvm.dbg.value(metadata i32 %0, metadata !2569, metadata !DIExpression()), !dbg !2570, !psr.id !2571
  call void @llvm.dbg.value(metadata i32 %1, metadata !2572, metadata !DIExpression()), !dbg !2570, !psr.id !2573
  call void @llvm.dbg.value(metadata i32 %2, metadata !2574, metadata !DIExpression()), !dbg !2570, !psr.id !2575
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2576, metadata !DIExpression()), !dbg !2577, !psr.id !2578
  %5 = call i32 @br_divrem(i32 %0, i32 %1, i32 %2, i32* %4), !dbg !2579, !psr.id !2580, !ValueTainted !92
  ret i32 %5, !dbg !2581, !psr.id !2582
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.15(i32 %0, i32 %1) #0 !dbg !2583 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2584, metadata !DIExpression()), !dbg !2585, !psr.id !2586
  call void @llvm.dbg.value(metadata i32 %1, metadata !2587, metadata !DIExpression()), !dbg !2585, !psr.id !2588
  %3 = xor i32 %0, %1, !dbg !2589, !psr.id !2590, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !2591, metadata !DIExpression()), !dbg !2585, !psr.id !2592
  %4 = sub i32 0, %3, !dbg !2593, !psr.id !2594, !ValueTainted !92
  %5 = or i32 %3, %4, !dbg !2595, !psr.id !2596, !ValueTainted !92
  %6 = lshr i32 %5, 31, !dbg !2597, !psr.id !2598, !ValueTainted !92
  %7 = call i32 @NOT.18(i32 %6), !dbg !2599, !psr.id !2600, !ValueTainted !92
  ret i32 %7, !dbg !2601, !psr.id !2602
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.16(i32 %0, i32 %1, i32 %2) #0 !dbg !2603 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2604, metadata !DIExpression()), !dbg !2605, !psr.id !2606
  call void @llvm.dbg.value(metadata i32 %1, metadata !2607, metadata !DIExpression()), !dbg !2605, !psr.id !2608
  call void @llvm.dbg.value(metadata i32 %2, metadata !2609, metadata !DIExpression()), !dbg !2605, !psr.id !2610
  %4 = sub i32 0, %0, !dbg !2611, !psr.id !2612, !ValueTainted !92
  %5 = xor i32 %1, %2, !dbg !2613, !psr.id !2614, !ValueTainted !92
  %6 = and i32 %4, %5, !dbg !2615, !psr.id !2616, !ValueTainted !92
  %7 = xor i32 %2, %6, !dbg !2617, !psr.id !2618, !ValueTainted !92
  ret i32 %7, !dbg !2619, !psr.id !2620
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.17(i32 %0, i32 %1) #0 !dbg !2621 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2622, metadata !DIExpression()), !dbg !2623, !psr.id !2624
  call void @llvm.dbg.value(metadata i32 %1, metadata !2625, metadata !DIExpression()), !dbg !2623, !psr.id !2626
  %3 = sub i32 %1, %0, !dbg !2627, !psr.id !2628, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !2629, metadata !DIExpression()), !dbg !2623, !psr.id !2630
  %4 = xor i32 %0, %1, !dbg !2631, !psr.id !2632, !ValueTainted !92
  %5 = xor i32 %0, %3, !dbg !2633, !psr.id !2634, !ValueTainted !92
  %6 = and i32 %4, %5, !dbg !2635, !psr.id !2636, !ValueTainted !92
  %7 = xor i32 %3, %6, !dbg !2637, !psr.id !2638, !ValueTainted !92
  %8 = lshr i32 %7, 31, !dbg !2639, !psr.id !2640, !ValueTainted !92
  ret i32 %8, !dbg !2641, !psr.id !2642
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.18(i32 %0) #0 !dbg !2643 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2644, metadata !DIExpression()), !dbg !2645, !psr.id !2646
  %2 = xor i32 %0, 1, !dbg !2647, !psr.id !2648, !ValueTainted !92
  ret i32 %2, !dbg !2649, !psr.id !2650
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i31_ninv31(i32 %0) #0 !dbg !2651 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2652, metadata !DIExpression()), !dbg !2653, !psr.id !2654
  %2 = sub i32 2, %0, !dbg !2655, !psr.id !2656, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %2, metadata !2657, metadata !DIExpression()), !dbg !2653, !psr.id !2658
  %3 = mul i32 %2, %0, !dbg !2659, !psr.id !2660, !ValueTainted !92
  %4 = sub i32 2, %3, !dbg !2661, !psr.id !2662, !ValueTainted !92
  %5 = mul i32 %2, %4, !dbg !2663, !psr.id !2664, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %5, metadata !2657, metadata !DIExpression()), !dbg !2653, !psr.id !2665
  %6 = mul i32 %5, %0, !dbg !2666, !psr.id !2667, !ValueTainted !92
  %7 = sub i32 2, %6, !dbg !2668, !psr.id !2669, !ValueTainted !92
  %8 = mul i32 %5, %7, !dbg !2670, !psr.id !2671, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %8, metadata !2657, metadata !DIExpression()), !dbg !2653, !psr.id !2672
  %9 = mul i32 %8, %0, !dbg !2673, !psr.id !2674, !ValueTainted !92
  %10 = sub i32 2, %9, !dbg !2675, !psr.id !2676, !ValueTainted !92
  %11 = mul i32 %8, %10, !dbg !2677, !psr.id !2678, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %11, metadata !2657, metadata !DIExpression()), !dbg !2653, !psr.id !2679
  %12 = mul i32 %11, %0, !dbg !2680, !psr.id !2681, !ValueTainted !92
  %13 = sub i32 2, %12, !dbg !2682, !psr.id !2683, !ValueTainted !92
  %14 = mul i32 %11, %13, !dbg !2684, !psr.id !2685, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %14, metadata !2657, metadata !DIExpression()), !dbg !2653, !psr.id !2686
  %15 = and i32 %0, 1, !dbg !2687, !psr.id !2688, !ValueTainted !92
  %16 = sub i32 0, %14, !dbg !2689, !psr.id !2690, !ValueTainted !92
  %17 = call i32 @MUX.19(i32 %15, i32 %16, i32 0), !dbg !2691, !psr.id !2692, !ValueTainted !92
  %18 = and i32 %17, 2147483647, !dbg !2693, !psr.id !2694, !ValueTainted !92
  ret i32 %18, !dbg !2695, !psr.id !2696
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.19(i32 %0, i32 %1, i32 %2) #0 !dbg !2697 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()), !dbg !2699, !psr.id !2700
  call void @llvm.dbg.value(metadata i32 %1, metadata !2701, metadata !DIExpression()), !dbg !2699, !psr.id !2702
  call void @llvm.dbg.value(metadata i32 %2, metadata !2703, metadata !DIExpression()), !dbg !2699, !psr.id !2704
  %4 = sub i32 0, %0, !dbg !2705, !psr.id !2706, !ValueTainted !92
  %5 = xor i32 %1, %2, !dbg !2707, !psr.id !2708, !ValueTainted !92
  %6 = and i32 %4, %5, !dbg !2709, !psr.id !2710, !ValueTainted !92
  %7 = xor i32 %2, %6, !dbg !2711, !psr.id !2712, !ValueTainted !92
  ret i32 %7, !dbg !2713, !psr.id !2714
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_reduce(i32* %0, i32* %1, i32* %2) #0 !dbg !2715 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2716, metadata !DIExpression()), !dbg !2717, !psr.id !2718
  call void @llvm.dbg.value(metadata i32* %1, metadata !2719, metadata !DIExpression()), !dbg !2717, !psr.id !2720
  call void @llvm.dbg.value(metadata i32* %2, metadata !2721, metadata !DIExpression()), !dbg !2717, !psr.id !2722
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !2723, !psr.id !2724
  %5 = load i32, i32* %4, align 4, !dbg !2723, !psr.id !2725, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %5, metadata !2726, metadata !DIExpression()), !dbg !2717, !psr.id !2727
  %6 = add i32 %5, 31, !dbg !2728, !psr.id !2729, !ValueTainted !92
  %7 = lshr i32 %6, 5, !dbg !2730, !psr.id !2731, !ValueTainted !92
  %8 = zext i32 %7 to i64, !dbg !2732, !psr.id !2733, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %8, metadata !2734, metadata !DIExpression()), !dbg !2717, !psr.id !2735
  %9 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !2736, !psr.id !2737
  store i32 %5, i32* %9, align 4, !dbg !2738, !psr.id !2739
  %10 = icmp eq i32 %5, 0, !dbg !2740, !psr.id !2742, !ValueTainted !92
  br i1 %10, label %11, label %12, !dbg !2743, !psr.id !2744, !Tainted !105

11:                                               ; preds = %3
  br label %52, !dbg !2745, !psr.id !2747

12:                                               ; preds = %3
  %13 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !2748, !psr.id !2749
  %14 = load i32, i32* %13, align 4, !dbg !2748, !psr.id !2750, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %14, metadata !2751, metadata !DIExpression()), !dbg !2717, !psr.id !2752
  %15 = add i32 %14, 31, !dbg !2753, !psr.id !2754, !ValueTainted !92
  %16 = lshr i32 %15, 5, !dbg !2755, !psr.id !2756, !ValueTainted !92
  %17 = zext i32 %16 to i64, !dbg !2757, !psr.id !2758, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %17, metadata !2759, metadata !DIExpression()), !dbg !2717, !psr.id !2760
  %18 = icmp ult i32 %14, %5, !dbg !2761, !psr.id !2763, !ValueTainted !92
  br i1 %18, label %19, label %33, !dbg !2764, !psr.id !2765, !Tainted !105

19:                                               ; preds = %12
  %20 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2766, !psr.id !2768
  %21 = bitcast i32* %20 to i8*, !dbg !2769, !psr.id !2770
  %22 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !2771, !psr.id !2772
  %23 = bitcast i32* %22 to i8*, !dbg !2769, !psr.id !2773
  %24 = mul i64 %17, 4, !dbg !2774, !psr.id !2775, !ValueTainted !92
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %23, i64 %24, i1 false), !dbg !2769, !psr.id !2776, !CalledTainted !787
  call void @llvm.dbg.value(metadata i64 %17, metadata !2777, metadata !DIExpression()), !dbg !2717, !psr.id !2778
  br label %25, !dbg !2779, !psr.id !2781

25:                                               ; preds = %30, %19
  %.0 = phi i64 [ %17, %19 ], [ %31, %30 ], !dbg !2782, !psr.id !2783, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2777, metadata !DIExpression()), !dbg !2717, !psr.id !2784
  %26 = icmp ult i64 %.0, %8, !dbg !2785, !psr.id !2787, !ValueTainted !92
  br i1 %26, label %27, label %32, !dbg !2788, !psr.id !2789, !Tainted !105

27:                                               ; preds = %25
  %28 = add i64 %.0, 1, !dbg !2790, !psr.id !2792, !ValueTainted !92
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !2793, !psr.id !2794, !ValueTainted !92
  store i32 0, i32* %29, align 4, !dbg !2795, !psr.id !2796, !Tainted !105
  br label %30, !dbg !2797, !psr.id !2798

30:                                               ; preds = %27
  %31 = add i64 %.0, 1, !dbg !2799, !psr.id !2800, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %31, metadata !2777, metadata !DIExpression()), !dbg !2717, !psr.id !2801
  br label %25, !dbg !2802, !llvm.loop !2803, !psr.id !2805

32:                                               ; preds = %25
  br label %52, !dbg !2806, !psr.id !2807

33:                                               ; preds = %12
  %34 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2808, !psr.id !2809
  %35 = bitcast i32* %34 to i8*, !dbg !2810, !psr.id !2811
  %36 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !2812, !psr.id !2813
  %37 = sub i64 %17, %8, !dbg !2814, !psr.id !2815, !ValueTainted !92
  %38 = getelementptr inbounds i32, i32* %36, i64 %37, !dbg !2816, !psr.id !2817, !ValueTainted !92
  %39 = bitcast i32* %38 to i8*, !dbg !2810, !psr.id !2818, !ValueTainted !92
  %40 = sub i64 %8, 1, !dbg !2819, !psr.id !2820, !ValueTainted !92
  %41 = mul i64 %40, 4, !dbg !2821, !psr.id !2822, !ValueTainted !92
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %39, i64 %41, i1 false), !dbg !2810, !psr.id !2823, !CalledTainted !2824
  %42 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !2825, !psr.id !2826, !ValueTainted !92
  store i32 0, i32* %42, align 4, !dbg !2827, !psr.id !2828, !Tainted !105
  %43 = add i64 1, %17, !dbg !2829, !psr.id !2831, !ValueTainted !92
  %44 = sub i64 %43, %8, !dbg !2832, !psr.id !2833, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %44, metadata !2777, metadata !DIExpression()), !dbg !2717, !psr.id !2834
  br label %45, !dbg !2835, !psr.id !2836

45:                                               ; preds = %50, %33
  %.1 = phi i64 [ %44, %33 ], [ %51, %50 ], !dbg !2837, !psr.id !2838, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %.1, metadata !2777, metadata !DIExpression()), !dbg !2717, !psr.id !2839
  %46 = icmp ugt i64 %.1, 0, !dbg !2840, !psr.id !2842, !ValueTainted !92
  br i1 %46, label %47, label %52, !dbg !2843, !psr.id !2844, !Tainted !105

47:                                               ; preds = %45
  %48 = getelementptr inbounds i32, i32* %1, i64 %.1, !dbg !2845, !psr.id !2847, !ValueTainted !92
  %49 = load i32, i32* %48, align 4, !dbg !2845, !psr.id !2848, !Tainted !105, !ValueTainted !92
  call void @br_i31_muladd_small(i32* %0, i32 %49, i32* %2), !dbg !2849, !psr.id !2850
  br label %50, !dbg !2851, !psr.id !2852

50:                                               ; preds = %47
  %51 = add i64 %.1, -1, !dbg !2853, !psr.id !2854, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %51, metadata !2777, metadata !DIExpression()), !dbg !2717, !psr.id !2855
  br label %45, !dbg !2856, !llvm.loop !2857, !psr.id !2859

52:                                               ; preds = %45, %32, %11
  ret void, !dbg !2860, !psr.id !2861
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_rshift(i32* %0, i32 %1) #0 !dbg !2862 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2865, metadata !DIExpression()), !dbg !2866, !psr.id !2867
  call void @llvm.dbg.value(metadata i32 %1, metadata !2868, metadata !DIExpression()), !dbg !2866, !psr.id !2869
  %3 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !2870, !psr.id !2871, !PointTainted !94
  %4 = load i32, i32* %3, align 4, !dbg !2870, !psr.id !2872, !ValueTainted !92
  %5 = add i32 %4, 31, !dbg !2873, !psr.id !2874, !ValueTainted !92
  %6 = lshr i32 %5, 5, !dbg !2875, !psr.id !2876, !ValueTainted !92
  %7 = zext i32 %6 to i64, !dbg !2877, !psr.id !2878, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %7, metadata !2879, metadata !DIExpression()), !dbg !2866, !psr.id !2880
  %8 = icmp eq i64 %7, 0, !dbg !2881, !psr.id !2883, !ValueTainted !92
  br i1 %8, label %9, label %10, !dbg !2884, !psr.id !2885, !Tainted !105

9:                                                ; preds = %2
  br label %30, !dbg !2886, !psr.id !2888

10:                                               ; preds = %2
  %11 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2889, !psr.id !2890, !PointTainted !94
  %12 = load i32, i32* %11, align 4, !dbg !2889, !psr.id !2891, !ValueTainted !92
  %13 = lshr i32 %12, %1, !dbg !2892, !psr.id !2893, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %13, metadata !2894, metadata !DIExpression()), !dbg !2866, !psr.id !2895
  call void @llvm.dbg.value(metadata i64 2, metadata !2896, metadata !DIExpression()), !dbg !2866, !psr.id !2897
  br label %14, !dbg !2898, !psr.id !2900

14:                                               ; preds = %26, %10
  %.01 = phi i64 [ 2, %10 ], [ %27, %26 ], !dbg !2901, !psr.id !2902
  %.0 = phi i32 [ %13, %10 ], [ %25, %26 ], !dbg !2866, !psr.id !2903, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2894, metadata !DIExpression()), !dbg !2866, !psr.id !2904
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2896, metadata !DIExpression()), !dbg !2866, !psr.id !2905
  %15 = icmp ule i64 %.01, %7, !dbg !2906, !psr.id !2908, !ValueTainted !92
  br i1 %15, label %16, label %28, !dbg !2909, !psr.id !2910, !Tainted !105

16:                                               ; preds = %14
  %17 = getelementptr inbounds i32, i32* %0, i64 %.01, !dbg !2911, !psr.id !2913, !PointTainted !94
  %18 = load i32, i32* %17, align 4, !dbg !2911, !psr.id !2914, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %18, metadata !2915, metadata !DIExpression()), !dbg !2916, !psr.id !2917
  %19 = sub nsw i32 31, %1, !dbg !2918, !psr.id !2919
  %20 = shl i32 %18, %19, !dbg !2920, !psr.id !2921, !ValueTainted !92
  %21 = or i32 %20, %.0, !dbg !2922, !psr.id !2923, !ValueTainted !92
  %22 = and i32 %21, 2147483647, !dbg !2924, !psr.id !2925, !ValueTainted !92
  %23 = sub i64 %.01, 1, !dbg !2926, !psr.id !2927
  %24 = getelementptr inbounds i32, i32* %0, i64 %23, !dbg !2928, !psr.id !2929, !PointTainted !94
  store i32 %22, i32* %24, align 4, !dbg !2930, !psr.id !2931
  %25 = lshr i32 %18, %1, !dbg !2932, !psr.id !2933, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %25, metadata !2894, metadata !DIExpression()), !dbg !2866, !psr.id !2934
  br label %26, !dbg !2935, !psr.id !2936

26:                                               ; preds = %16
  %27 = add i64 %.01, 1, !dbg !2937, !psr.id !2938
  call void @llvm.dbg.value(metadata i64 %27, metadata !2896, metadata !DIExpression()), !dbg !2866, !psr.id !2939
  br label %14, !dbg !2940, !llvm.loop !2941, !psr.id !2943

28:                                               ; preds = %14
  %29 = getelementptr inbounds i32, i32* %0, i64 %7, !dbg !2944, !psr.id !2945, !ValueTainted !92, !PointTainted !94
  store i32 %.0, i32* %29, align 4, !dbg !2946, !psr.id !2947, !Tainted !105
  br label %30, !dbg !2948, !psr.id !2949

30:                                               ; preds = %28, %9
  ret void, !dbg !2948, !psr.id !2950
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i31_sub(i32* %0, i32* %1, i32 %2) #0 !dbg !2951 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2952, metadata !DIExpression()), !dbg !2953, !psr.id !2954
  call void @llvm.dbg.value(metadata i32* %1, metadata !2955, metadata !DIExpression()), !dbg !2953, !psr.id !2956
  call void @llvm.dbg.value(metadata i32 %2, metadata !2957, metadata !DIExpression()), !dbg !2953, !psr.id !2958
  call void @llvm.dbg.value(metadata i32 0, metadata !2959, metadata !DIExpression()), !dbg !2953, !psr.id !2960
  %4 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !2961, !psr.id !2962, !ValueTainted !92, !PointTainted !94
  %5 = load i32, i32* %4, align 4, !dbg !2961, !psr.id !2963, !Tainted !105, !ValueTainted !92
  %6 = add i32 %5, 63, !dbg !2964, !psr.id !2965, !ValueTainted !92
  %7 = lshr i32 %6, 5, !dbg !2966, !psr.id !2967, !ValueTainted !92
  %8 = zext i32 %7 to i64, !dbg !2968, !psr.id !2969, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %8, metadata !2970, metadata !DIExpression()), !dbg !2953, !psr.id !2971
  call void @llvm.dbg.value(metadata i64 1, metadata !2972, metadata !DIExpression()), !dbg !2953, !psr.id !2973
  br label %9, !dbg !2974, !psr.id !2976

9:                                                ; preds = %22, %3
  %.01 = phi i32 [ 0, %3 ], [ %18, %22 ], !dbg !2953, !psr.id !2977, !ValueTainted !92
  %.0 = phi i64 [ 1, %3 ], [ %23, %22 ], !dbg !2978, !psr.id !2979
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2972, metadata !DIExpression()), !dbg !2953, !psr.id !2980
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2959, metadata !DIExpression()), !dbg !2953, !psr.id !2981
  %10 = icmp ult i64 %.0, %8, !dbg !2982, !psr.id !2984, !ValueTainted !92
  br i1 %10, label %11, label %24, !dbg !2985, !psr.id !2986, !Tainted !105

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !2987, !psr.id !2989, !ValueTainted !92, !PointTainted !94
  %13 = load i32, i32* %12, align 4, !dbg !2987, !psr.id !2990, !Tainted !105, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %13, metadata !2991, metadata !DIExpression()), !dbg !2992, !psr.id !2993
  %14 = getelementptr inbounds i32, i32* %1, i64 %.0, !dbg !2994, !psr.id !2995
  %15 = load i32, i32* %14, align 4, !dbg !2994, !psr.id !2996, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %15, metadata !2997, metadata !DIExpression()), !dbg !2992, !psr.id !2998
  %16 = sub i32 %13, %15, !dbg !2999, !psr.id !3000, !ValueTainted !92
  %17 = sub i32 %16, %.01, !dbg !3001, !psr.id !3002, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %17, metadata !3003, metadata !DIExpression()), !dbg !2992, !psr.id !3004
  %18 = lshr i32 %17, 31, !dbg !3005, !psr.id !3006, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %18, metadata !2959, metadata !DIExpression()), !dbg !2953, !psr.id !3007
  %19 = and i32 %17, 2147483647, !dbg !3008, !psr.id !3009, !ValueTainted !92
  %20 = call i32 @MUX.24(i32 %2, i32 %19, i32 %13), !dbg !3010, !psr.id !3011, !ValueTainted !92
  %21 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !3012, !psr.id !3013, !ValueTainted !92, !PointTainted !94
  store i32 %20, i32* %21, align 4, !dbg !3014, !psr.id !3015, !Tainted !105
  br label %22, !dbg !3016, !psr.id !3017

22:                                               ; preds = %11
  %23 = add i64 %.0, 1, !dbg !3018, !psr.id !3019
  call void @llvm.dbg.value(metadata i64 %23, metadata !2972, metadata !DIExpression()), !dbg !2953, !psr.id !3020
  br label %9, !dbg !3021, !llvm.loop !3022, !psr.id !3024

24:                                               ; preds = %9
  ret i32 %.01, !dbg !3025, !psr.id !3026
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.24(i32 %0, i32 %1, i32 %2) #0 !dbg !3027 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3028, metadata !DIExpression()), !dbg !3029, !psr.id !3030
  call void @llvm.dbg.value(metadata i32 %1, metadata !3031, metadata !DIExpression()), !dbg !3029, !psr.id !3032
  call void @llvm.dbg.value(metadata i32 %2, metadata !3033, metadata !DIExpression()), !dbg !3029, !psr.id !3034
  %4 = sub i32 0, %0, !dbg !3035, !psr.id !3036, !ValueTainted !92
  %5 = xor i32 %1, %2, !dbg !3037, !psr.id !3038, !ValueTainted !92
  %6 = and i32 %4, %5, !dbg !3039, !psr.id !3040, !ValueTainted !92
  %7 = xor i32 %2, %6, !dbg !3041, !psr.id !3042, !ValueTainted !92
  ret i32 %7, !dbg !3043, !psr.id !3044
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i31_to_monty(i32* %0, i32* %1) #0 !dbg !3045 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3048, metadata !DIExpression()), !dbg !3049, !psr.id !3050
  call void @llvm.dbg.value(metadata i32* %1, metadata !3051, metadata !DIExpression()), !dbg !3049, !psr.id !3052
  %3 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !3053, !psr.id !3055
  %4 = load i32, i32* %3, align 4, !dbg !3053, !psr.id !3056, !ValueTainted !92
  %5 = add i32 %4, 31, !dbg !3057, !psr.id !3058, !ValueTainted !92
  %6 = lshr i32 %5, 5, !dbg !3059, !psr.id !3060, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %6, metadata !3061, metadata !DIExpression()), !dbg !3049, !psr.id !3062
  br label %7, !dbg !3063, !psr.id !3064

7:                                                ; preds = %10, %2
  %.0 = phi i32 [ %6, %2 ], [ %11, %10 ], !dbg !3065, !psr.id !3066, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3061, metadata !DIExpression()), !dbg !3049, !psr.id !3067
  %8 = icmp ugt i32 %.0, 0, !dbg !3068, !psr.id !3070, !ValueTainted !92
  br i1 %8, label %9, label %12, !dbg !3071, !psr.id !3072, !Tainted !105

9:                                                ; preds = %7
  call void @br_i31_muladd_small(i32* %0, i32 0, i32* %1), !dbg !3073, !psr.id !3075
  br label %10, !dbg !3076, !psr.id !3077

10:                                               ; preds = %9
  %11 = add i32 %.0, -1, !dbg !3078, !psr.id !3079, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %11, metadata !3061, metadata !DIExpression()), !dbg !3049, !psr.id !3080
  br label %7, !dbg !3081, !llvm.loop !3082, !psr.id !3084

12:                                               ; preds = %7
  ret void, !dbg !3085, !psr.id !3086
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_divrem(i32 %0, i32 %1, i32 %2, i32* %3) #0 !dbg !3087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3090, metadata !DIExpression()), !dbg !3091, !psr.id !3092
  call void @llvm.dbg.value(metadata i32 %1, metadata !3093, metadata !DIExpression()), !dbg !3091, !psr.id !3094
  call void @llvm.dbg.value(metadata i32 %2, metadata !3095, metadata !DIExpression()), !dbg !3091, !psr.id !3096
  call void @llvm.dbg.value(metadata i32* %3, metadata !3097, metadata !DIExpression()), !dbg !3091, !psr.id !3098
  call void @llvm.dbg.value(metadata i32 0, metadata !3099, metadata !DIExpression()), !dbg !3091, !psr.id !3100
  %5 = call i32 @EQ.29(i32 %0, i32 %2), !dbg !3101, !psr.id !3102, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %5, metadata !3103, metadata !DIExpression()), !dbg !3091, !psr.id !3104
  %6 = call i32 @MUX.30(i32 %5, i32 0, i32 %0), !dbg !3105, !psr.id !3106, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %6, metadata !3090, metadata !DIExpression()), !dbg !3091, !psr.id !3107
  call void @llvm.dbg.value(metadata i32 31, metadata !3108, metadata !DIExpression()), !dbg !3091, !psr.id !3109
  br label %7, !dbg !3110, !psr.id !3112

7:                                                ; preds = %26, %4
  %.03 = phi i32 [ 0, %4 ], [ %25, %26 ], !dbg !3091, !psr.id !3113, !ValueTainted !92
  %.02 = phi i32 [ 31, %4 ], [ %27, %26 ], !dbg !3114, !psr.id !3115
  %.01 = phi i32 [ %1, %4 ], [ %23, %26 ], !psr.id !3116, !ValueTainted !92
  %.0 = phi i32 [ %6, %4 ], [ %22, %26 ], !dbg !3091, !psr.id !3117, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3090, metadata !DIExpression()), !dbg !3091, !psr.id !3118
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3093, metadata !DIExpression()), !dbg !3091, !psr.id !3119
  call void @llvm.dbg.value(metadata i32 %.02, metadata !3108, metadata !DIExpression()), !dbg !3091, !psr.id !3120
  call void @llvm.dbg.value(metadata i32 %.03, metadata !3099, metadata !DIExpression()), !dbg !3091, !psr.id !3121
  %8 = icmp sgt i32 %.02, 0, !dbg !3122, !psr.id !3124
  br i1 %8, label %9, label %28, !dbg !3125, !psr.id !3126

9:                                                ; preds = %7
  %10 = sub nsw i32 32, %.02, !dbg !3127, !psr.id !3129
  call void @llvm.dbg.value(metadata i32 %10, metadata !3130, metadata !DIExpression()), !dbg !3131, !psr.id !3132
  %11 = shl i32 %.0, %10, !dbg !3133, !psr.id !3134, !ValueTainted !92
  %12 = lshr i32 %.01, %.02, !dbg !3135, !psr.id !3136, !ValueTainted !92
  %13 = or i32 %11, %12, !dbg !3137, !psr.id !3138, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %13, metadata !3139, metadata !DIExpression()), !dbg !3131, !psr.id !3140
  %14 = call i32 @GT.31(i32 %2, i32 %13), !dbg !3141, !psr.id !3142, !ValueTainted !92
  %15 = call i32 @NOT.32(i32 %14), !dbg !3141, !psr.id !3143, !ValueTainted !92
  %16 = lshr i32 %.0, %.02, !dbg !3144, !psr.id !3145, !ValueTainted !92
  %17 = or i32 %15, %16, !dbg !3146, !psr.id !3147, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %17, metadata !3148, metadata !DIExpression()), !dbg !3131, !psr.id !3149
  %18 = sub i32 %13, %2, !dbg !3150, !psr.id !3151, !ValueTainted !92
  %19 = lshr i32 %18, %10, !dbg !3152, !psr.id !3153
  call void @llvm.dbg.value(metadata i32 %19, metadata !3154, metadata !DIExpression()), !dbg !3131, !psr.id !3155
  %20 = shl i32 %2, %.02, !dbg !3156, !psr.id !3157, !ValueTainted !92
  %21 = sub i32 %.01, %20, !dbg !3158, !psr.id !3159, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %21, metadata !3160, metadata !DIExpression()), !dbg !3131, !psr.id !3161
  %22 = call i32 @MUX.30(i32 %17, i32 %19, i32 %.0), !dbg !3162, !psr.id !3163, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %22, metadata !3090, metadata !DIExpression()), !dbg !3091, !psr.id !3164
  %23 = call i32 @MUX.30(i32 %17, i32 %21, i32 %.01), !dbg !3165, !psr.id !3166, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %23, metadata !3093, metadata !DIExpression()), !dbg !3091, !psr.id !3167
  %24 = shl i32 %17, %.02, !dbg !3168, !psr.id !3169, !ValueTainted !92
  %25 = or i32 %.03, %24, !dbg !3170, !psr.id !3171, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %25, metadata !3099, metadata !DIExpression()), !dbg !3091, !psr.id !3172
  br label %26, !dbg !3173, !psr.id !3174

26:                                               ; preds = %9
  %27 = add nsw i32 %.02, -1, !dbg !3175, !psr.id !3176
  call void @llvm.dbg.value(metadata i32 %27, metadata !3108, metadata !DIExpression()), !dbg !3091, !psr.id !3177
  br label %7, !dbg !3178, !llvm.loop !3179, !psr.id !3181

28:                                               ; preds = %7
  %29 = call i32 @GT.31(i32 %2, i32 %.01), !dbg !3182, !psr.id !3183, !ValueTainted !92
  %30 = call i32 @NOT.32(i32 %29), !dbg !3182, !psr.id !3184, !ValueTainted !92
  %31 = or i32 %30, %.0, !dbg !3185, !psr.id !3186, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %31, metadata !3187, metadata !DIExpression()), !dbg !3091, !psr.id !3188
  %32 = or i32 %.03, %31, !dbg !3189, !psr.id !3190, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %32, metadata !3099, metadata !DIExpression()), !dbg !3091, !psr.id !3191
  %33 = sub i32 %.01, %2, !dbg !3192, !psr.id !3193, !ValueTainted !92
  %34 = call i32 @MUX.30(i32 %31, i32 %33, i32 %.01), !dbg !3194, !psr.id !3195, !ValueTainted !92
  store i32 %34, i32* %3, align 4, !dbg !3196, !psr.id !3197
  ret i32 %32, !dbg !3198, !psr.id !3199
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.29(i32 %0, i32 %1) #0 !dbg !3200 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3201, metadata !DIExpression()), !dbg !3202, !psr.id !3203
  call void @llvm.dbg.value(metadata i32 %1, metadata !3204, metadata !DIExpression()), !dbg !3202, !psr.id !3205
  %3 = xor i32 %0, %1, !dbg !3206, !psr.id !3207, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !3208, metadata !DIExpression()), !dbg !3202, !psr.id !3209
  %4 = sub i32 0, %3, !dbg !3210, !psr.id !3211, !ValueTainted !92
  %5 = or i32 %3, %4, !dbg !3212, !psr.id !3213, !ValueTainted !92
  %6 = lshr i32 %5, 31, !dbg !3214, !psr.id !3215, !ValueTainted !92
  %7 = call i32 @NOT.32(i32 %6), !dbg !3216, !psr.id !3217, !ValueTainted !92
  ret i32 %7, !dbg !3218, !psr.id !3219
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.30(i32 %0, i32 %1, i32 %2) #0 !dbg !3220 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3221, metadata !DIExpression()), !dbg !3222, !psr.id !3223
  call void @llvm.dbg.value(metadata i32 %1, metadata !3224, metadata !DIExpression()), !dbg !3222, !psr.id !3225
  call void @llvm.dbg.value(metadata i32 %2, metadata !3226, metadata !DIExpression()), !dbg !3222, !psr.id !3227
  %4 = sub i32 0, %0, !dbg !3228, !psr.id !3229, !ValueTainted !92
  %5 = xor i32 %1, %2, !dbg !3230, !psr.id !3231, !ValueTainted !92
  %6 = and i32 %4, %5, !dbg !3232, !psr.id !3233, !ValueTainted !92
  %7 = xor i32 %2, %6, !dbg !3234, !psr.id !3235, !ValueTainted !92
  ret i32 %7, !dbg !3236, !psr.id !3237
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.31(i32 %0, i32 %1) #0 !dbg !3238 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3239, metadata !DIExpression()), !dbg !3240, !psr.id !3241
  call void @llvm.dbg.value(metadata i32 %1, metadata !3242, metadata !DIExpression()), !dbg !3240, !psr.id !3243
  %3 = sub i32 %1, %0, !dbg !3244, !psr.id !3245, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !3246, metadata !DIExpression()), !dbg !3240, !psr.id !3247
  %4 = xor i32 %0, %1, !dbg !3248, !psr.id !3249, !ValueTainted !92
  %5 = xor i32 %0, %3, !dbg !3250, !psr.id !3251, !ValueTainted !92
  %6 = and i32 %4, %5, !dbg !3252, !psr.id !3253, !ValueTainted !92
  %7 = xor i32 %3, %6, !dbg !3254, !psr.id !3255, !ValueTainted !92
  %8 = lshr i32 %7, 31, !dbg !3256, !psr.id !3257, !ValueTainted !92
  ret i32 %8, !dbg !3258, !psr.id !3259
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.32(i32 %0) #0 !dbg !3260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3261, metadata !DIExpression()), !dbg !3262, !psr.id !3263
  %2 = xor i32 %0, 1, !dbg !3264, !psr.id !3265, !ValueTainted !92
  ret i32 %2, !dbg !3266, !psr.id !3267
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i31_pkcs1_sign(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4) #0 !dbg !3268 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3288, metadata !DIExpression()), !dbg !3289, !psr.id !3290
  call void @llvm.dbg.value(metadata i8* %1, metadata !3291, metadata !DIExpression()), !dbg !3289, !psr.id !3292
  call void @llvm.dbg.value(metadata i64 %2, metadata !3293, metadata !DIExpression()), !dbg !3289, !psr.id !3294
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %3, metadata !3295, metadata !DIExpression()), !dbg !3289, !psr.id !3296
  call void @llvm.dbg.value(metadata i8* %4, metadata !3297, metadata !DIExpression()), !dbg !3289, !psr.id !3298
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 0, !dbg !3299, !psr.id !3301
  %7 = load i32, i32* %6, align 8, !dbg !3299, !psr.id !3302
  %8 = call i32 @br_rsa_pkcs1_sig_pad(i8* %0, i8* %1, i64 %2, i32 %7, i8* %4), !dbg !3303, !psr.id !3304
  %9 = icmp ne i32 %8, 0, !dbg !3303, !psr.id !3305
  br i1 %9, label %11, label %10, !dbg !3306, !psr.id !3307

10:                                               ; preds = %5
  br label %13, !dbg !3308, !psr.id !3310

11:                                               ; preds = %5
  %12 = call i32 @br_rsa_i31_private(i8* %4, %struct.br_rsa_private_key* %3), !dbg !3311, !psr.id !3312, !ValueTainted !92
  br label %13, !dbg !3313, !psr.id !3314

13:                                               ; preds = %11, %10
  %.0 = phi i32 [ %12, %11 ], [ 0, %10 ], !dbg !3289, !psr.id !3315, !ValueTainted !92
  ret i32 %.0, !dbg !3316, !psr.id !3317
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i31_private(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !3318 {
  %3 = alloca [561 x i32], align 16, !psr.id !3337
  call void @llvm.dbg.value(metadata i8* %0, metadata !3338, metadata !DIExpression()), !dbg !3339, !psr.id !3340
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !3341, metadata !DIExpression()), !dbg !3339, !psr.id !3342
  call void @llvm.dbg.declare(metadata [561 x i32]* %3, metadata !3343, metadata !DIExpression()), !dbg !3347, !psr.id !3348
  %4 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !3349, !psr.id !3350
  %5 = load i8*, i8** %4, align 8, !dbg !3349, !psr.id !3351, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %5, metadata !3352, metadata !DIExpression()), !dbg !3339, !psr.id !3353
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !3354, !psr.id !3355
  %7 = load i64, i64* %6, align 8, !dbg !3354, !psr.id !3356
  call void @llvm.dbg.value(metadata i64 %7, metadata !3357, metadata !DIExpression()), !dbg !3339, !psr.id !3358
  br label %8, !dbg !3359, !psr.id !3360

8:                                                ; preds = %16, %2
  %.04 = phi i64 [ %7, %2 ], [ %18, %16 ], !dbg !3339, !psr.id !3361
  %.02 = phi i8* [ %5, %2 ], [ %17, %16 ], !dbg !3339, !psr.id !3362, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %.02, metadata !3352, metadata !DIExpression()), !dbg !3339, !psr.id !3363
  call void @llvm.dbg.value(metadata i64 %.04, metadata !3357, metadata !DIExpression()), !dbg !3339, !psr.id !3364
  %9 = icmp ugt i64 %.04, 0, !dbg !3365, !psr.id !3366
  br i1 %9, label %10, label %14, !dbg !3367, !psr.id !3368

10:                                               ; preds = %8
  %11 = load i8, i8* %.02, align 1, !dbg !3369, !psr.id !3370, !ValueTainted !92
  %12 = zext i8 %11 to i32, !dbg !3369, !psr.id !3371, !ValueTainted !92
  %13 = icmp eq i32 %12, 0, !dbg !3372, !psr.id !3373, !ValueTainted !92
  br label %14, !psr.id !3374

14:                                               ; preds = %10, %8
  %15 = phi i1 [ false, %8 ], [ %13, %10 ], !dbg !3339, !psr.id !3375, !ValueTainted !92
  br i1 %15, label %16, label %19, !dbg !3359, !psr.id !3376, !Tainted !105

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !3377, !psr.id !3379, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %17, metadata !3352, metadata !DIExpression()), !dbg !3339, !psr.id !3380
  %18 = add i64 %.04, -1, !dbg !3381, !psr.id !3382
  call void @llvm.dbg.value(metadata i64 %18, metadata !3357, metadata !DIExpression()), !dbg !3339, !psr.id !3383
  br label %8, !dbg !3359, !llvm.loop !3384, !psr.id !3386

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !3387, !psr.id !3388
  %21 = load i8*, i8** %20, align 8, !dbg !3387, !psr.id !3389, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %21, metadata !3390, metadata !DIExpression()), !dbg !3339, !psr.id !3391
  %22 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !3392, !psr.id !3393
  %23 = load i64, i64* %22, align 8, !dbg !3392, !psr.id !3394
  call void @llvm.dbg.value(metadata i64 %23, metadata !3395, metadata !DIExpression()), !dbg !3339, !psr.id !3396
  br label %24, !dbg !3397, !psr.id !3398

24:                                               ; preds = %32, %19
  %.05 = phi i64 [ %23, %19 ], [ %34, %32 ], !dbg !3339, !psr.id !3399
  %.03 = phi i8* [ %21, %19 ], [ %33, %32 ], !dbg !3339, !psr.id !3400, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %.03, metadata !3390, metadata !DIExpression()), !dbg !3339, !psr.id !3401
  call void @llvm.dbg.value(metadata i64 %.05, metadata !3395, metadata !DIExpression()), !dbg !3339, !psr.id !3402
  %25 = icmp ugt i64 %.05, 0, !dbg !3403, !psr.id !3404
  br i1 %25, label %26, label %30, !dbg !3405, !psr.id !3406

26:                                               ; preds = %24
  %27 = load i8, i8* %.03, align 1, !dbg !3407, !psr.id !3408, !ValueTainted !92
  %28 = zext i8 %27 to i32, !dbg !3407, !psr.id !3409, !ValueTainted !92
  %29 = icmp eq i32 %28, 0, !dbg !3410, !psr.id !3411, !ValueTainted !92
  br label %30, !psr.id !3412

30:                                               ; preds = %26, %24
  %31 = phi i1 [ false, %24 ], [ %29, %26 ], !dbg !3339, !psr.id !3413, !ValueTainted !92
  br i1 %31, label %32, label %35, !dbg !3397, !psr.id !3414, !Tainted !105

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, i8* %.03, i32 1, !dbg !3415, !psr.id !3417, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %33, metadata !3390, metadata !DIExpression()), !dbg !3339, !psr.id !3418
  %34 = add i64 %.05, -1, !dbg !3419, !psr.id !3420
  call void @llvm.dbg.value(metadata i64 %34, metadata !3395, metadata !DIExpression()), !dbg !3339, !psr.id !3421
  br label %24, !dbg !3397, !llvm.loop !3422, !psr.id !3424

35:                                               ; preds = %30
  %36 = icmp ugt i64 %.04, %.05, !dbg !3425, !psr.id !3426
  br i1 %36, label %37, label %38, !dbg !3427, !psr.id !3428

37:                                               ; preds = %35
  br label %39, !dbg !3427, !psr.id !3429

38:                                               ; preds = %35
  br label %39, !dbg !3427, !psr.id !3430

39:                                               ; preds = %38, %37
  %40 = phi i64 [ %.04, %37 ], [ %.05, %38 ], !dbg !3427, !psr.id !3431
  %41 = shl i64 %40, 3, !dbg !3432, !psr.id !3433
  call void @llvm.dbg.value(metadata i64 %41, metadata !3434, metadata !DIExpression()), !dbg !3339, !psr.id !3435
  call void @llvm.dbg.value(metadata i64 1, metadata !3436, metadata !DIExpression()), !dbg !3339, !psr.id !3437
  br label %42, !dbg !3438, !psr.id !3439

42:                                               ; preds = %44, %39
  %.07 = phi i64 [ %41, %39 ], [ %45, %44 ], !dbg !3339, !psr.id !3440
  %.06 = phi i64 [ 1, %39 ], [ %46, %44 ], !dbg !3339, !psr.id !3441
  call void @llvm.dbg.value(metadata i64 %.06, metadata !3436, metadata !DIExpression()), !dbg !3339, !psr.id !3442
  call void @llvm.dbg.value(metadata i64 %.07, metadata !3434, metadata !DIExpression()), !dbg !3339, !psr.id !3443
  %43 = icmp sgt i64 %.07, 0, !dbg !3444, !psr.id !3445
  br i1 %43, label %44, label %47, !dbg !3438, !psr.id !3446

44:                                               ; preds = %42
  %45 = sub nsw i64 %.07, 31, !dbg !3447, !psr.id !3449
  call void @llvm.dbg.value(metadata i64 %45, metadata !3434, metadata !DIExpression()), !dbg !3339, !psr.id !3450
  %46 = add i64 %.06, 1, !dbg !3451, !psr.id !3452
  call void @llvm.dbg.value(metadata i64 %46, metadata !3436, metadata !DIExpression()), !dbg !3339, !psr.id !3453
  br label %42, !dbg !3438, !llvm.loop !3454, !psr.id !3456

47:                                               ; preds = %42
  %48 = and i64 %.06, 1, !dbg !3457, !psr.id !3458
  %49 = add i64 %.06, %48, !dbg !3459, !psr.id !3460
  call void @llvm.dbg.value(metadata i64 %49, metadata !3436, metadata !DIExpression()), !dbg !3339, !psr.id !3461
  %50 = mul i64 6, %49, !dbg !3462, !psr.id !3464
  %51 = icmp ugt i64 %50, 560, !dbg !3465, !psr.id !3466
  br i1 %51, label %52, label %53, !dbg !3467, !psr.id !3468

52:                                               ; preds = %47
  br label %130, !dbg !3469, !psr.id !3471

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !3472, !psr.id !3473
  %55 = load i32, i32* %54, align 8, !dbg !3472, !psr.id !3474
  %56 = add i32 %55, 7, !dbg !3475, !psr.id !3476
  %57 = lshr i32 %56, 3, !dbg !3477, !psr.id !3478
  %58 = zext i32 %57 to i64, !dbg !3479, !psr.id !3480
  call void @llvm.dbg.value(metadata i64 %58, metadata !3481, metadata !DIExpression()), !dbg !3339, !psr.id !3482
  %59 = getelementptr inbounds [561 x i32], [561 x i32]* %3, i64 0, i64 0, !dbg !3483, !psr.id !3484
  call void @llvm.dbg.value(metadata i32* %59, metadata !3485, metadata !DIExpression()), !dbg !3339, !psr.id !3486
  call void @br_i31_decode(i32* %59, i8* %.03, i64 %.05), !dbg !3487, !psr.id !3488
  %60 = getelementptr inbounds i32, i32* %59, i64 %49, !dbg !3489, !psr.id !3490
  call void @llvm.dbg.value(metadata i32* %60, metadata !3491, metadata !DIExpression()), !dbg !3339, !psr.id !3492
  call void @br_i31_decode(i32* %60, i8* %.02, i64 %.04), !dbg !3493, !psr.id !3494
  %61 = mul i64 2, %49, !dbg !3495, !psr.id !3496
  %62 = getelementptr inbounds i32, i32* %59, i64 %61, !dbg !3497, !psr.id !3498
  call void @llvm.dbg.value(metadata i32* %62, metadata !3499, metadata !DIExpression()), !dbg !3339, !psr.id !3500
  %63 = getelementptr inbounds i32, i32* %59, i64 0, !dbg !3501, !psr.id !3502
  %64 = load i32, i32* %63, align 4, !dbg !3501, !psr.id !3503
  call void @br_i31_zero.35(i32* %62, i32 %64), !dbg !3504, !psr.id !3505
  call void @br_i31_mulacc(i32* %62, i32* %59, i32* %60), !dbg !3506, !psr.id !3507
  %65 = mul i64 4, %49, !dbg !3508, !psr.id !3509
  %66 = getelementptr inbounds i32, i32* %59, i64 %65, !dbg !3510, !psr.id !3511
  call void @llvm.dbg.value(metadata i32* %66, metadata !3512, metadata !DIExpression()), !dbg !3339, !psr.id !3513
  %67 = bitcast i32* %66 to i8*, !dbg !3514, !psr.id !3515
  call void @br_i31_encode(i8* %67, i64 %58, i32* %62), !dbg !3516, !psr.id !3517
  call void @llvm.dbg.value(metadata i64 %58, metadata !3518, metadata !DIExpression()), !dbg !3339, !psr.id !3519
  call void @llvm.dbg.value(metadata i32 0, metadata !3520, metadata !DIExpression()), !dbg !3339, !psr.id !3521
  br label %68, !dbg !3522, !psr.id !3523

68:                                               ; preds = %70, %53
  %.08 = phi i64 [ %58, %53 ], [ %71, %70 ], !dbg !3339, !psr.id !3524
  %.01 = phi i32 [ 0, %53 ], [ %82, %70 ], !dbg !3339, !psr.id !3525, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3520, metadata !DIExpression()), !dbg !3339, !psr.id !3526
  call void @llvm.dbg.value(metadata i64 %.08, metadata !3518, metadata !DIExpression()), !dbg !3339, !psr.id !3527
  %69 = icmp ugt i64 %.08, 0, !dbg !3528, !psr.id !3529
  br i1 %69, label %70, label %83, !dbg !3522, !psr.id !3530

70:                                               ; preds = %68
  %71 = add i64 %.08, -1, !dbg !3531, !psr.id !3533
  call void @llvm.dbg.value(metadata i64 %71, metadata !3518, metadata !DIExpression()), !dbg !3339, !psr.id !3534
  %72 = bitcast i32* %66 to i8*, !dbg !3535, !psr.id !3536
  %73 = getelementptr inbounds i8, i8* %72, i64 %71, !dbg !3535, !psr.id !3537
  %74 = load i8, i8* %73, align 1, !dbg !3535, !psr.id !3538, !ValueTainted !92
  %75 = zext i8 %74 to i32, !dbg !3535, !psr.id !3539, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %75, metadata !3540, metadata !DIExpression()), !dbg !3541, !psr.id !3542
  %76 = getelementptr inbounds i8, i8* %0, i64 %71, !dbg !3543, !psr.id !3544, !ValueTainted !92, !PointTainted !94
  %77 = load i8, i8* %76, align 1, !dbg !3543, !psr.id !3545, !Tainted !105, !ValueTainted !92
  %78 = zext i8 %77 to i32, !dbg !3543, !psr.id !3546, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %78, metadata !3547, metadata !DIExpression()), !dbg !3541, !psr.id !3548
  %79 = add i32 %75, %.01, !dbg !3549, !psr.id !3550, !ValueTainted !92
  %80 = sub i32 %78, %79, !dbg !3551, !psr.id !3552, !ValueTainted !92
  %81 = lshr i32 %80, 8, !dbg !3553, !psr.id !3554, !ValueTainted !92
  %82 = and i32 %81, 1, !dbg !3555, !psr.id !3556, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %82, metadata !3520, metadata !DIExpression()), !dbg !3339, !psr.id !3557
  br label %68, !dbg !3522, !llvm.loop !3558, !psr.id !3560

83:                                               ; preds = %68
  %84 = mul i64 2, %49, !dbg !3561, !psr.id !3562
  %85 = getelementptr inbounds i32, i32* %59, i64 %84, !dbg !3563, !psr.id !3564
  call void @llvm.dbg.value(metadata i32* %85, metadata !3565, metadata !DIExpression()), !dbg !3339, !psr.id !3566
  %86 = bitcast i32* %85 to i8*, !dbg !3567, !psr.id !3568
  %87 = bitcast i32* %60 to i8*, !dbg !3567, !psr.id !3569
  %88 = mul i64 %49, 4, !dbg !3570, !psr.id !3571
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 %88, i1 false), !dbg !3567, !psr.id !3572
  %89 = getelementptr inbounds i32, i32* %59, i64 1, !dbg !3573, !psr.id !3574
  %90 = load i32, i32* %89, align 4, !dbg !3573, !psr.id !3575, !ValueTainted !92
  %91 = call i32 @br_i31_ninv31(i32 %90), !dbg !3576, !psr.id !3577, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %91, metadata !3578, metadata !DIExpression()), !dbg !3339, !psr.id !3579
  %92 = getelementptr inbounds i32, i32* %59, i64 %49, !dbg !3580, !psr.id !3581
  call void @llvm.dbg.value(metadata i32* %92, metadata !3582, metadata !DIExpression()), !dbg !3339, !psr.id !3583
  call void @br_i31_decode_reduce(i32* %92, i8* %0, i64 %58, i32* %59), !dbg !3584, !psr.id !3585
  %93 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !3586, !psr.id !3587
  %94 = load i8*, i8** %93, align 8, !dbg !3586, !psr.id !3588, !PointTainted !94
  %95 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !3589, !psr.id !3590
  %96 = load i64, i64* %95, align 8, !dbg !3589, !psr.id !3591
  %97 = mul i64 3, %49, !dbg !3592, !psr.id !3593
  %98 = getelementptr inbounds i32, i32* %59, i64 %97, !dbg !3594, !psr.id !3595
  %99 = mul i64 3, %49, !dbg !3596, !psr.id !3597
  %100 = sub i64 560, %99, !dbg !3598, !psr.id !3599
  %101 = call i32 @br_i31_modpow_opt(i32* %92, i8* %94, i64 %96, i32* %59, i32 %91, i32* %98, i64 %100), !dbg !3600, !psr.id !3601
  %102 = and i32 %.01, %101, !dbg !3602, !psr.id !3603, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %102, metadata !3520, metadata !DIExpression()), !dbg !3339, !psr.id !3604
  %103 = getelementptr inbounds i32, i32* %85, i64 1, !dbg !3605, !psr.id !3606
  %104 = load i32, i32* %103, align 4, !dbg !3605, !psr.id !3607, !ValueTainted !92
  %105 = call i32 @br_i31_ninv31(i32 %104), !dbg !3608, !psr.id !3609, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %105, metadata !3610, metadata !DIExpression()), !dbg !3339, !psr.id !3611
  %106 = mul i64 3, %49, !dbg !3612, !psr.id !3613
  %107 = getelementptr inbounds i32, i32* %59, i64 %106, !dbg !3614, !psr.id !3615
  call void @llvm.dbg.value(metadata i32* %107, metadata !3616, metadata !DIExpression()), !dbg !3339, !psr.id !3617
  call void @br_i31_decode_reduce(i32* %107, i8* %0, i64 %58, i32* %85), !dbg !3618, !psr.id !3619
  %108 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !3620, !psr.id !3621
  %109 = load i8*, i8** %108, align 8, !dbg !3620, !psr.id !3622, !PointTainted !94
  %110 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !3623, !psr.id !3624
  %111 = load i64, i64* %110, align 8, !dbg !3623, !psr.id !3625
  %112 = mul i64 4, %49, !dbg !3626, !psr.id !3627
  %113 = getelementptr inbounds i32, i32* %59, i64 %112, !dbg !3628, !psr.id !3629
  %114 = mul i64 4, %49, !dbg !3630, !psr.id !3631
  %115 = sub i64 560, %114, !dbg !3632, !psr.id !3633
  %116 = call i32 @br_i31_modpow_opt(i32* %107, i8* %109, i64 %111, i32* %85, i32 %105, i32* %113, i64 %115), !dbg !3634, !psr.id !3635
  %117 = and i32 %102, %116, !dbg !3636, !psr.id !3637, !ValueTainted !92
  call void @llvm.dbg.value(metadata i32 %117, metadata !3520, metadata !DIExpression()), !dbg !3339, !psr.id !3638
  %118 = mul i64 4, %49, !dbg !3639, !psr.id !3640
  %119 = getelementptr inbounds i32, i32* %59, i64 %118, !dbg !3641, !psr.id !3642
  call void @llvm.dbg.value(metadata i32* %119, metadata !3491, metadata !DIExpression()), !dbg !3339, !psr.id !3643
  %120 = mul i64 5, %49, !dbg !3644, !psr.id !3645
  %121 = getelementptr inbounds i32, i32* %59, i64 %120, !dbg !3646, !psr.id !3647
  call void @llvm.dbg.value(metadata i32* %121, metadata !3499, metadata !DIExpression()), !dbg !3339, !psr.id !3648
  call void @br_i31_reduce(i32* %121, i32* %92, i32* %85), !dbg !3649, !psr.id !3650
  %122 = call i32 @br_i31_sub(i32* %107, i32* %121, i32 1), !dbg !3651, !psr.id !3652
  %123 = call i32 @br_i31_add(i32* %107, i32* %85, i32 %122), !dbg !3653, !psr.id !3654
  call void @br_i31_to_monty(i32* %107, i32* %85), !dbg !3655, !psr.id !3656
  %124 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !3657, !psr.id !3658
  %125 = load i8*, i8** %124, align 8, !dbg !3657, !psr.id !3659, !PointTainted !94
  %126 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !3660, !psr.id !3661
  %127 = load i64, i64* %126, align 8, !dbg !3660, !psr.id !3662
  call void @br_i31_decode_reduce(i32* %119, i8* %125, i64 %127, i32* %85), !dbg !3663, !psr.id !3664
  call void @br_i31_montymul(i32* %121, i32* %107, i32* %119, i32* %85, i32 %105), !dbg !3665, !psr.id !3666
  call void @llvm.dbg.value(metadata i32* %92, metadata !3512, metadata !DIExpression()), !dbg !3339, !psr.id !3667
  call void @br_i31_mulacc(i32* %92, i32* %59, i32* %121), !dbg !3668, !psr.id !3669
  call void @br_i31_encode(i8* %0, i64 %58, i32* %92), !dbg !3670, !psr.id !3671
  %128 = and i32 %105, %91, !dbg !3672, !psr.id !3673, !ValueTainted !92
  %129 = and i32 %128, %117, !dbg !3674, !psr.id !3675, !ValueTainted !92
  br label %130, !dbg !3676, !psr.id !3677

130:                                              ; preds = %83, %52
  %.0 = phi i32 [ 0, %52 ], [ %129, %83 ], !dbg !3339, !psr.id !3678, !ValueTainted !92
  ret i32 %.0, !dbg !3679, !psr.id !3680
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i31_zero.35(i32* %0, i32 %1) #0 !dbg !3681 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3682, metadata !DIExpression()), !dbg !3683, !psr.id !3684
  call void @llvm.dbg.value(metadata i32 %1, metadata !3685, metadata !DIExpression()), !dbg !3683, !psr.id !3686
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !3687, !psr.id !3688
  call void @llvm.dbg.value(metadata i32* %3, metadata !3682, metadata !DIExpression()), !dbg !3683, !psr.id !3689
  store i32 %1, i32* %0, align 4, !dbg !3690, !psr.id !3691
  %4 = bitcast i32* %3 to i8*, !dbg !3692, !psr.id !3693
  %5 = add i32 %1, 31, !dbg !3694, !psr.id !3695, !ValueTainted !92
  %6 = lshr i32 %5, 5, !dbg !3696, !psr.id !3697, !ValueTainted !92
  %7 = zext i32 %6 to i64, !dbg !3698, !psr.id !3699, !ValueTainted !92
  %8 = mul i64 %7, 4, !dbg !3700, !psr.id !3701, !ValueTainted !92
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !3692, !psr.id !3702, !CalledTainted !787
  ret void, !dbg !3703, !psr.id !3704
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_pkcs1_sig_pad(i8* %0, i8* %1, i64 %2, i32 %3, i8* %4) #0 !dbg !3705 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3708, metadata !DIExpression()), !dbg !3709, !psr.id !3710
  call void @llvm.dbg.value(metadata i8* %1, metadata !3711, metadata !DIExpression()), !dbg !3709, !psr.id !3712
  call void @llvm.dbg.value(metadata i64 %2, metadata !3713, metadata !DIExpression()), !dbg !3709, !psr.id !3714
  call void @llvm.dbg.value(metadata i32 %3, metadata !3715, metadata !DIExpression()), !dbg !3709, !psr.id !3716
  call void @llvm.dbg.value(metadata i8* %4, metadata !3717, metadata !DIExpression()), !dbg !3709, !psr.id !3718
  %6 = add i32 %3, 7, !dbg !3719, !psr.id !3720
  %7 = lshr i32 %6, 3, !dbg !3721, !psr.id !3722
  %8 = zext i32 %7 to i64, !dbg !3723, !psr.id !3724
  call void @llvm.dbg.value(metadata i64 %8, metadata !3725, metadata !DIExpression()), !dbg !3709, !psr.id !3726
  %9 = icmp eq i8* %0, null, !dbg !3727, !psr.id !3729, !ValueTainted !92
  br i1 %9, label %10, label %22, !dbg !3730, !psr.id !3731, !Tainted !105

10:                                               ; preds = %5
  %11 = add i64 %2, 11, !dbg !3732, !psr.id !3735, !ValueTainted !92, !PointTainted !94
  %12 = icmp ult i64 %8, %11, !dbg !3736, !psr.id !3737, !ValueTainted !92
  br i1 %12, label %13, label %14, !dbg !3738, !psr.id !3739, !Tainted !105

13:                                               ; preds = %10
  br label %70, !dbg !3740, !psr.id !3742

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !3743, !psr.id !3744, !ValueTainted !92, !PointTainted !94
  store i8 0, i8* %15, align 1, !dbg !3745, !psr.id !3746, !Tainted !105
  %16 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !3747, !psr.id !3748, !ValueTainted !92, !PointTainted !94
  store i8 1, i8* %16, align 1, !dbg !3749, !psr.id !3750, !Tainted !105
  %17 = sub i64 %8, %2, !dbg !3751, !psr.id !3752, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i64 %17, metadata !3753, metadata !DIExpression()), !dbg !3709, !psr.id !3754
  %18 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !3755, !psr.id !3756, !ValueTainted !92, !PointTainted !94
  %19 = sub i64 %17, 3, !dbg !3757, !psr.id !3758, !ValueTainted !92, !PointTainted !94
  call void @llvm.memset.p0i8.i64(i8* align 1 %18, i8 -1, i64 %19, i1 false), !dbg !3759, !psr.id !3760, !CalledTainted !1242
  %20 = sub i64 %17, 1, !dbg !3761, !psr.id !3762, !ValueTainted !92, !PointTainted !94
  %21 = getelementptr inbounds i8, i8* %4, i64 %20, !dbg !3763, !psr.id !3764, !ValueTainted !92, !PointTainted !94
  store i8 0, i8* %21, align 1, !dbg !3765, !psr.id !3766, !Tainted !105
  br label %68, !dbg !3767, !psr.id !3768

22:                                               ; preds = %5
  %23 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !3769, !psr.id !3771, !ValueTainted !92, !PointTainted !94
  %24 = load i8, i8* %23, align 1, !dbg !3769, !psr.id !3772, !Tainted !105, !ValueTainted !92
  %25 = zext i8 %24 to i64, !dbg !3769, !psr.id !3773, !ValueTainted !92
  call void @llvm.dbg.value(metadata i64 %25, metadata !3774, metadata !DIExpression()), !dbg !3709, !psr.id !3775
  %26 = add i64 %25, %2, !dbg !3776, !psr.id !3778, !ValueTainted !92, !PointTainted !94
  %27 = add i64 %26, 21, !dbg !3779, !psr.id !3780, !ValueTainted !92, !PointTainted !94
  %28 = icmp ult i64 %8, %27, !dbg !3781, !psr.id !3782, !ValueTainted !92
  br i1 %28, label %29, label %30, !dbg !3783, !psr.id !3784, !Tainted !105

29:                                               ; preds = %22
  br label %70, !dbg !3785, !psr.id !3787

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !3788, !psr.id !3789, !ValueTainted !92, !PointTainted !94
  store i8 0, i8* %31, align 1, !dbg !3790, !psr.id !3791, !Tainted !105
  %32 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !3792, !psr.id !3793, !ValueTainted !92, !PointTainted !94
  store i8 1, i8* %32, align 1, !dbg !3794, !psr.id !3795, !Tainted !105
  %33 = sub i64 %8, %25, !dbg !3796, !psr.id !3797, !ValueTainted !92
  %34 = sub i64 %33, %2, !dbg !3798, !psr.id !3799, !ValueTainted !92, !PointTainted !94
  %35 = sub i64 %34, 11, !dbg !3800, !psr.id !3801, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i64 %35, metadata !3753, metadata !DIExpression()), !dbg !3709, !psr.id !3802
  %36 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !3803, !psr.id !3804, !ValueTainted !92, !PointTainted !94
  %37 = sub i64 %35, 2, !dbg !3805, !psr.id !3806, !ValueTainted !92, !PointTainted !94
  call void @llvm.memset.p0i8.i64(i8* align 1 %36, i8 -1, i64 %37, i1 false), !dbg !3807, !psr.id !3808, !CalledTainted !1242
  %38 = getelementptr inbounds i8, i8* %4, i64 %35, !dbg !3809, !psr.id !3810, !ValueTainted !92, !PointTainted !94
  store i8 0, i8* %38, align 1, !dbg !3811, !psr.id !3812, !Tainted !105
  %39 = add i64 %35, 1, !dbg !3813, !psr.id !3814, !ValueTainted !92, !PointTainted !94
  %40 = getelementptr inbounds i8, i8* %4, i64 %39, !dbg !3815, !psr.id !3816, !ValueTainted !92, !PointTainted !94
  store i8 48, i8* %40, align 1, !dbg !3817, !psr.id !3818, !Tainted !105
  %41 = add i64 %25, %2, !dbg !3819, !psr.id !3820, !ValueTainted !92, !PointTainted !94
  %42 = add i64 %41, 8, !dbg !3821, !psr.id !3822, !ValueTainted !92, !PointTainted !94
  %43 = trunc i64 %42 to i8, !dbg !3823, !psr.id !3824, !ValueTainted !92, !PointTainted !94
  %44 = add i64 %35, 2, !dbg !3825, !psr.id !3826, !ValueTainted !92, !PointTainted !94
  %45 = getelementptr inbounds i8, i8* %4, i64 %44, !dbg !3827, !psr.id !3828, !ValueTainted !92, !PointTainted !94
  store i8 %43, i8* %45, align 1, !dbg !3829, !psr.id !3830, !Tainted !105
  %46 = add i64 %35, 3, !dbg !3831, !psr.id !3832, !ValueTainted !92, !PointTainted !94
  %47 = getelementptr inbounds i8, i8* %4, i64 %46, !dbg !3833, !psr.id !3834, !ValueTainted !92, !PointTainted !94
  store i8 48, i8* %47, align 1, !dbg !3835, !psr.id !3836, !Tainted !105
  %48 = add i64 %25, 4, !dbg !3837, !psr.id !3838, !ValueTainted !92
  %49 = trunc i64 %48 to i8, !dbg !3839, !psr.id !3840, !ValueTainted !92
  %50 = add i64 %35, 4, !dbg !3841, !psr.id !3842, !ValueTainted !92, !PointTainted !94
  %51 = getelementptr inbounds i8, i8* %4, i64 %50, !dbg !3843, !psr.id !3844, !ValueTainted !92, !PointTainted !94
  store i8 %49, i8* %51, align 1, !dbg !3845, !psr.id !3846, !Tainted !105
  %52 = add i64 %35, 5, !dbg !3847, !psr.id !3848, !ValueTainted !92, !PointTainted !94
  %53 = getelementptr inbounds i8, i8* %4, i64 %52, !dbg !3849, !psr.id !3850, !ValueTainted !92, !PointTainted !94
  store i8 6, i8* %53, align 1, !dbg !3851, !psr.id !3852, !Tainted !105
  %54 = getelementptr inbounds i8, i8* %4, i64 %35, !dbg !3853, !psr.id !3854, !ValueTainted !92, !PointTainted !94
  %55 = getelementptr inbounds i8, i8* %54, i64 6, !dbg !3855, !psr.id !3856, !ValueTainted !92, !PointTainted !94
  %56 = add i64 %25, 1, !dbg !3857, !psr.id !3858, !ValueTainted !92
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %55, i8* align 1 %0, i64 %56, i1 false), !dbg !3859, !psr.id !3860, !CalledTainted !2183
  %57 = add i64 %25, 7, !dbg !3861, !psr.id !3862, !ValueTainted !92
  %58 = add i64 %35, %57, !dbg !3863, !psr.id !3864, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i64 %58, metadata !3753, metadata !DIExpression()), !dbg !3709, !psr.id !3865
  %59 = add i64 %58, 1, !dbg !3866, !psr.id !3867, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i64 %59, metadata !3753, metadata !DIExpression()), !dbg !3709, !psr.id !3868
  %60 = getelementptr inbounds i8, i8* %4, i64 %58, !dbg !3869, !psr.id !3870, !ValueTainted !92, !PointTainted !94
  store i8 5, i8* %60, align 1, !dbg !3871, !psr.id !3872, !Tainted !105
  %61 = add i64 %59, 1, !dbg !3873, !psr.id !3874, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i64 %61, metadata !3753, metadata !DIExpression()), !dbg !3709, !psr.id !3875
  %62 = getelementptr inbounds i8, i8* %4, i64 %59, !dbg !3876, !psr.id !3877, !ValueTainted !92, !PointTainted !94
  store i8 0, i8* %62, align 1, !dbg !3878, !psr.id !3879, !Tainted !105
  %63 = add i64 %61, 1, !dbg !3880, !psr.id !3881, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i64 %63, metadata !3753, metadata !DIExpression()), !dbg !3709, !psr.id !3882
  %64 = getelementptr inbounds i8, i8* %4, i64 %61, !dbg !3883, !psr.id !3884, !ValueTainted !92, !PointTainted !94
  store i8 4, i8* %64, align 1, !dbg !3885, !psr.id !3886, !Tainted !105
  %65 = trunc i64 %2 to i8, !dbg !3887, !psr.id !3888, !ValueTainted !92, !PointTainted !94
  %66 = add i64 %63, 1, !dbg !3889, !psr.id !3890, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i64 %66, metadata !3753, metadata !DIExpression()), !dbg !3709, !psr.id !3891
  %67 = getelementptr inbounds i8, i8* %4, i64 %63, !dbg !3892, !psr.id !3893, !ValueTainted !92, !PointTainted !94
  store i8 %65, i8* %67, align 1, !dbg !3894, !psr.id !3895, !Tainted !105
  br label %68, !psr.id !3896

68:                                               ; preds = %30, %14
  %.01 = phi i64 [ %17, %14 ], [ %66, %30 ], !dbg !3897, !psr.id !3898, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i64 %.01, metadata !3753, metadata !DIExpression()), !dbg !3709, !psr.id !3899
  %69 = getelementptr inbounds i8, i8* %4, i64 %.01, !dbg !3900, !psr.id !3901
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %1, i64 %2, i1 false), !dbg !3902, !psr.id !3903, !CalledTainted !2183
  br label %70, !dbg !3904, !psr.id !3905

70:                                               ; preds = %68, %29, %13
  %.0 = phi i32 [ 0, %13 ], [ 1, %68 ], [ 0, %29 ], !dbg !3709, !psr.id !3906
  ret i32 %.0, !dbg !3907, !psr.id !3908
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sign_wrapper(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4) #0 !dbg !3909 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3928, metadata !DIExpression()), !dbg !3929, !psr.id !3930
  call void @llvm.dbg.value(metadata i8* %1, metadata !3931, metadata !DIExpression()), !dbg !3929, !psr.id !3932
  call void @llvm.dbg.value(metadata i64 %2, metadata !3933, metadata !DIExpression()), !dbg !3929, !psr.id !3934
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %3, metadata !3935, metadata !DIExpression()), !dbg !3929, !psr.id !3936
  call void @llvm.dbg.value(metadata i8* %4, metadata !3937, metadata !DIExpression()), !dbg !3929, !psr.id !3938
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !3939, !psr.id !3940
  call void @public_in(%struct.smack_value* %6), !dbg !3941, !psr.id !3942
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !3943, !psr.id !3944
  call void @public_in(%struct.smack_value* %7), !dbg !3945, !psr.id !3946
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !3947, !psr.id !3948
  call void @public_in(%struct.smack_value* %8), !dbg !3949, !psr.id !3950
  %9 = call %struct.smack_value* (%struct.br_rsa_private_key*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_rsa_private_key*, ...)*)(%struct.br_rsa_private_key* %3), !dbg !3951, !psr.id !3952
  call void @public_in(%struct.smack_value* %9), !dbg !3953, !psr.id !3954
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !3955, !psr.id !3956
  call void @public_in(%struct.smack_value* %10), !dbg !3957, !psr.id !3958
  %11 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 1, !dbg !3959, !psr.id !3960
  %12 = load i8*, i8** %11, align 8, !dbg !3959, !psr.id !3961
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %12), !dbg !3962, !psr.id !3963
  call void @public_in(%struct.smack_value* %13), !dbg !3964, !psr.id !3965
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 3, !dbg !3966, !psr.id !3967
  %15 = load i8*, i8** %14, align 8, !dbg !3966, !psr.id !3968
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %15), !dbg !3969, !psr.id !3970
  call void @public_in(%struct.smack_value* %16), !dbg !3971, !psr.id !3972
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 5, !dbg !3973, !psr.id !3974
  %18 = load i8*, i8** %17, align 8, !dbg !3973, !psr.id !3975
  %19 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %18), !dbg !3976, !psr.id !3977
  call void @public_in(%struct.smack_value* %19), !dbg !3978, !psr.id !3979
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 7, !dbg !3980, !psr.id !3981
  %21 = load i8*, i8** %20, align 8, !dbg !3980, !psr.id !3982
  %22 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %21), !dbg !3983, !psr.id !3984
  call void @public_in(%struct.smack_value* %22), !dbg !3985, !psr.id !3986
  %23 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 9, !dbg !3987, !psr.id !3988
  %24 = load i8*, i8** %23, align 8, !dbg !3987, !psr.id !3989
  %25 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %24), !dbg !3990, !psr.id !3991
  call void @public_in(%struct.smack_value* %25), !dbg !3992, !psr.id !3993
  %26 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 2, !dbg !3994, !psr.id !3995
  %27 = load i64, i64* %26, align 8, !dbg !3994, !psr.id !3996
  %28 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %27), !dbg !3997, !psr.id !3998
  call void @public_in(%struct.smack_value* %28), !dbg !3999, !psr.id !4000
  %29 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 4, !dbg !4001, !psr.id !4002
  %30 = load i64, i64* %29, align 8, !dbg !4001, !psr.id !4003
  %31 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %30), !dbg !4004, !psr.id !4005
  call void @public_in(%struct.smack_value* %31), !dbg !4006, !psr.id !4007
  %32 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 6, !dbg !4008, !psr.id !4009
  %33 = load i64, i64* %32, align 8, !dbg !4008, !psr.id !4010
  %34 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %33), !dbg !4011, !psr.id !4012
  call void @public_in(%struct.smack_value* %34), !dbg !4013, !psr.id !4014
  %35 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 8, !dbg !4015, !psr.id !4016
  %36 = load i64, i64* %35, align 8, !dbg !4015, !psr.id !4017
  %37 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %36), !dbg !4018, !psr.id !4019
  call void @public_in(%struct.smack_value* %37), !dbg !4020, !psr.id !4021
  %38 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 10, !dbg !4022, !psr.id !4023
  %39 = load i64, i64* %38, align 8, !dbg !4022, !psr.id !4024
  %40 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %39), !dbg !4025, !psr.id !4026
  call void @public_in(%struct.smack_value* %40), !dbg !4027, !psr.id !4028
  %41 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %3, i32 0, i32 0, !dbg !4029, !psr.id !4030
  %42 = load i32, i32* %41, align 8, !dbg !4029, !psr.id !4031
  %43 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %42), !dbg !4032, !psr.id !4033
  call void @public_in(%struct.smack_value* %43), !dbg !4034, !psr.id !4035
  %44 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 64), !dbg !4036, !psr.id !4037
  call void @public_in(%struct.smack_value* %44), !dbg !4038, !psr.id !4039
  %45 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 64), !dbg !4040, !psr.id !4041
  call void @public_in(%struct.smack_value* %45), !dbg !4042, !psr.id !4043
  %46 = call %struct.smack_value* @__SMACK_values(i8* %4, i32 64), !dbg !4044, !psr.id !4045
  call void @public_in(%struct.smack_value* %46), !dbg !4046, !psr.id !4047
  %47 = call i32 @br_rsa_i31_pkcs1_sign(i8* %0, i8* %1, i64 %2, %struct.br_rsa_private_key* %3, i8* %4), !dbg !4048, !psr.id !4049
  ret void, !dbg !4050, !psr.id !4051
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @sign_wrapper_t() #0 !dbg !4052 {
  %1 = alloca %struct.br_rsa_private_key, align 8, !psr.id !4055
  %2 = call i8* (...) @getcharpt(), !dbg !4056, !psr.id !4057, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %2, metadata !4058, metadata !DIExpression()), !dbg !4059, !psr.id !4060
  %3 = call i8* (...) @getcharpt2(), !dbg !4061, !psr.id !4062, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %3, metadata !4063, metadata !DIExpression()), !dbg !4059, !psr.id !4064
  %4 = call i64 (...) @getsize_t(), !dbg !4065, !psr.id !4066, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i64 %4, metadata !4067, metadata !DIExpression()), !dbg !4059, !psr.id !4068
  call void @llvm.dbg.declare(metadata %struct.br_rsa_private_key* %1, metadata !4069, metadata !DIExpression()), !dbg !4070, !psr.id !4071
  call void (%struct.br_rsa_private_key*, ...) @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8 %1), !dbg !4072, !psr.id !4073
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !4074, metadata !DIExpression()), !dbg !4059, !psr.id !4076
  %5 = call i8* (...) @getuschar(), !dbg !4077, !psr.id !4078, !ValueTainted !92, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %5, metadata !4079, metadata !DIExpression()), !dbg !4059, !psr.id !4080
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !4081, !psr.id !4082
  %7 = load i8*, i8** %6, align 8, !dbg !4081, !psr.id !4083, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %7, metadata !4084, metadata !DIExpression()), !dbg !4059, !psr.id !4085
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !4086, !psr.id !4087
  %9 = load i8*, i8** %8, align 8, !dbg !4086, !psr.id !4088, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %9, metadata !4089, metadata !DIExpression()), !dbg !4059, !psr.id !4090
  %10 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !4091, !psr.id !4092
  %11 = load i8*, i8** %10, align 8, !dbg !4091, !psr.id !4093, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %11, metadata !4094, metadata !DIExpression()), !dbg !4059, !psr.id !4095
  %12 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !4096, !psr.id !4097
  %13 = load i8*, i8** %12, align 8, !dbg !4096, !psr.id !4098, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %13, metadata !4099, metadata !DIExpression()), !dbg !4059, !psr.id !4100
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !4101, !psr.id !4102
  %15 = load i8*, i8** %14, align 8, !dbg !4101, !psr.id !4103, !PointTainted !94
  call void @llvm.dbg.value(metadata i8* %15, metadata !4104, metadata !DIExpression()), !dbg !4059, !psr.id !4105
  call void @vfct_taintseed(i8* %7, i8* %9, i8* %11, i8* %13, i8* %15), !dbg !4106, !psr.id !4107
  %16 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !4108, !psr.id !4109
  store i8* %7, i8** %16, align 8, !dbg !4110, !psr.id !4111
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !4112, !psr.id !4113
  store i8* %9, i8** %17, align 8, !dbg !4114, !psr.id !4115
  %18 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !4116, !psr.id !4117
  store i8* %11, i8** %18, align 8, !dbg !4118, !psr.id !4119
  %19 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !4120, !psr.id !4121
  store i8* %13, i8** %19, align 8, !dbg !4122, !psr.id !4123
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !4124, !psr.id !4125
  store i8* %15, i8** %20, align 8, !dbg !4126, !psr.id !4127
  %21 = call i32 @br_rsa_i31_pkcs1_sign(i8* %2, i8* %3, i64 %4, %struct.br_rsa_private_key* %1, i8* %5), !dbg !4128, !psr.id !4129, !ValueTainted !92
  ret void, !dbg !4130, !psr.id !4131
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
!76 = !{!"0"}
!77 = !DILocalVariable(name: "dst", arg: 2, scope: !69, file: !1, line: 29, type: !62)
!78 = !{!"1"}
!79 = !DILocalVariable(name: "src", arg: 3, scope: !69, file: !1, line: 29, type: !72)
!80 = !{!"2"}
!81 = !DILocalVariable(name: "len", arg: 4, scope: !69, file: !1, line: 29, type: !34)
!82 = !{!"3"}
!83 = !DILocalVariable(name: "d", scope: !69, file: !1, line: 31, type: !20)
!84 = !{!"4"}
!85 = !DILocalVariable(name: "s", scope: !69, file: !1, line: 32, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!88 = !{!"5"}
!89 = !DILocation(line: 36, column: 2, scope: !69)
!90 = !{!"6"}
!91 = !{!"7"}
!92 = !{!"ValueTainted"}
!93 = !{!"8"}
!94 = !{!"PointTainted"}
!95 = !{!"9"}
!96 = !{!"10"}
!97 = !{!"11"}
!98 = !{!"12"}
!99 = !DILocation(line: 36, column: 13, scope: !69)
!100 = !{!"13"}
!101 = !{!"14"}
!102 = !DILocation(line: 36, column: 16, scope: !69)
!103 = !{!"15"}
!104 = !{!"16"}
!105 = !{!"Tainted"}
!106 = !DILocation(line: 39, column: 10, scope: !107)
!107 = distinct !DILexicalBlock(scope: !69, file: !1, line: 36, column: 21)
!108 = !{!"17"}
!109 = !{!"18"}
!110 = !DILocation(line: 39, column: 7, scope: !107)
!111 = !{!"19"}
!112 = !{!"20"}
!113 = !DILocalVariable(name: "x", scope: !107, file: !1, line: 37, type: !6)
!114 = !DILocation(line: 0, scope: !107)
!115 = !{!"21"}
!116 = !DILocation(line: 40, column: 7, scope: !107)
!117 = !{!"22"}
!118 = !{!"23"}
!119 = !DILocalVariable(name: "y", scope: !107, file: !1, line: 37, type: !6)
!120 = !{!"24"}
!121 = !DILocation(line: 41, column: 8, scope: !107)
!122 = !{!"25"}
!123 = !{!"26"}
!124 = !DILocation(line: 41, column: 6, scope: !107)
!125 = !{!"27"}
!126 = !DILocation(line: 42, column: 5, scope: !107)
!127 = !{!"28"}
!128 = !{!"29"}
!129 = distinct !{!129, !89, !130, !131}
!130 = !DILocation(line: 43, column: 2, scope: !69)
!131 = !{!"llvm.loop.mustprogress"}
!132 = !{!"30"}
!133 = !DILocation(line: 44, column: 1, scope: !69)
!134 = !{!"31"}
!135 = distinct !DISubprogram(name: "MUX", scope: !136, file: !136, line: 770, type: !137, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!137 = !DISubroutineType(types: !138)
!138 = !{!6, !6, !6, !6}
!139 = !DILocalVariable(name: "ctl", arg: 1, scope: !135, file: !136, line: 770, type: !6)
!140 = !DILocation(line: 0, scope: !135)
!141 = !{!"32"}
!142 = !DILocalVariable(name: "x", arg: 2, scope: !135, file: !136, line: 770, type: !6)
!143 = !{!"33"}
!144 = !DILocalVariable(name: "y", arg: 3, scope: !135, file: !136, line: 770, type: !6)
!145 = !{!"34"}
!146 = !DILocation(line: 772, column: 14, scope: !135)
!147 = !{!"35"}
!148 = !DILocation(line: 772, column: 24, scope: !135)
!149 = !{!"36"}
!150 = !DILocation(line: 772, column: 19, scope: !135)
!151 = !{!"37"}
!152 = !DILocation(line: 772, column: 11, scope: !135)
!153 = !{!"38"}
!154 = !DILocation(line: 772, column: 2, scope: !135)
!155 = !{!"39"}
!156 = distinct !DISubprogram(name: "br_i31_add", scope: !4, file: !4, line: 29, type: !157, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!157 = !DISubroutineType(types: !158)
!158 = !{!6, !159, !160, !6}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!162 = !DILocalVariable(name: "a", arg: 1, scope: !156, file: !4, line: 29, type: !159)
!163 = !DILocation(line: 0, scope: !156)
!164 = !{!"40"}
!165 = !DILocalVariable(name: "b", arg: 2, scope: !156, file: !4, line: 29, type: !160)
!166 = !{!"41"}
!167 = !DILocalVariable(name: "ctl", arg: 3, scope: !156, file: !4, line: 29, type: !6)
!168 = !{!"42"}
!169 = !DILocalVariable(name: "cc", scope: !156, file: !4, line: 31, type: !6)
!170 = !{!"43"}
!171 = !DILocation(line: 35, column: 7, scope: !156)
!172 = !{!"44"}
!173 = !{!"45"}
!174 = !DILocation(line: 35, column: 12, scope: !156)
!175 = !{!"46"}
!176 = !DILocation(line: 35, column: 18, scope: !156)
!177 = !{!"47"}
!178 = !DILocation(line: 35, column: 6, scope: !156)
!179 = !{!"48"}
!180 = !DILocalVariable(name: "m", scope: !156, file: !4, line: 32, type: !34)
!181 = !{!"49"}
!182 = !DILocalVariable(name: "u", scope: !156, file: !4, line: 32, type: !34)
!183 = !{!"50"}
!184 = !DILocation(line: 36, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !156, file: !4, line: 36, column: 2)
!186 = !{!"51"}
!187 = !{!"52"}
!188 = !DILocation(line: 0, scope: !185)
!189 = !{!"53"}
!190 = !{!"54"}
!191 = !{!"55"}
!192 = !DILocation(line: 36, column: 16, scope: !193)
!193 = distinct !DILexicalBlock(scope: !185, file: !4, line: 36, column: 2)
!194 = !{!"56"}
!195 = !DILocation(line: 36, column: 2, scope: !185)
!196 = !{!"57"}
!197 = !DILocation(line: 39, column: 8, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !4, line: 36, column: 27)
!199 = !{!"58"}
!200 = !{!"59"}
!201 = !DILocalVariable(name: "aw", scope: !198, file: !4, line: 37, type: !6)
!202 = !DILocation(line: 0, scope: !198)
!203 = !{!"60"}
!204 = !DILocation(line: 40, column: 8, scope: !198)
!205 = !{!"61"}
!206 = !{!"62"}
!207 = !DILocalVariable(name: "bw", scope: !198, file: !4, line: 37, type: !6)
!208 = !{!"63"}
!209 = !DILocation(line: 41, column: 12, scope: !198)
!210 = !{!"64"}
!211 = !DILocation(line: 41, column: 17, scope: !198)
!212 = !{!"65"}
!213 = !DILocalVariable(name: "naw", scope: !198, file: !4, line: 37, type: !6)
!214 = !{!"66"}
!215 = !DILocation(line: 42, column: 12, scope: !198)
!216 = !{!"67"}
!217 = !{!"68"}
!218 = !DILocation(line: 43, column: 23, scope: !198)
!219 = !{!"69"}
!220 = !DILocation(line: 43, column: 10, scope: !198)
!221 = !{!"70"}
!222 = !DILocation(line: 43, column: 3, scope: !198)
!223 = !{!"71"}
!224 = !DILocation(line: 43, column: 8, scope: !198)
!225 = !{!"72"}
!226 = !DILocation(line: 44, column: 2, scope: !198)
!227 = !{!"73"}
!228 = !DILocation(line: 36, column: 23, scope: !193)
!229 = !{!"74"}
!230 = !{!"75"}
!231 = !DILocation(line: 36, column: 2, scope: !193)
!232 = distinct !{!232, !195, !233, !131}
!233 = !DILocation(line: 44, column: 2, scope: !185)
!234 = !{!"76"}
!235 = !DILocation(line: 45, column: 2, scope: !156)
!236 = !{!"77"}
!237 = distinct !DISubprogram(name: "MUX", scope: !136, file: !136, line: 770, type: !137, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!238 = !DILocalVariable(name: "ctl", arg: 1, scope: !237, file: !136, line: 770, type: !6)
!239 = !DILocation(line: 0, scope: !237)
!240 = !{!"78"}
!241 = !DILocalVariable(name: "x", arg: 2, scope: !237, file: !136, line: 770, type: !6)
!242 = !{!"79"}
!243 = !DILocalVariable(name: "y", arg: 3, scope: !237, file: !136, line: 770, type: !6)
!244 = !{!"80"}
!245 = !DILocation(line: 772, column: 14, scope: !237)
!246 = !{!"81"}
!247 = !DILocation(line: 772, column: 24, scope: !237)
!248 = !{!"82"}
!249 = !DILocation(line: 772, column: 19, scope: !237)
!250 = !{!"83"}
!251 = !DILocation(line: 772, column: 11, scope: !237)
!252 = !{!"84"}
!253 = !DILocation(line: 772, column: 2, scope: !237)
!254 = !{!"85"}
!255 = distinct !DISubprogram(name: "br_i31_bit_length", scope: !12, file: !12, line: 29, type: !256, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !2)
!256 = !DISubroutineType(types: !257)
!257 = !{!6, !159, !34}
!258 = !DILocalVariable(name: "x", arg: 1, scope: !255, file: !12, line: 29, type: !159)
!259 = !DILocation(line: 0, scope: !255)
!260 = !{!"86"}
!261 = !DILocalVariable(name: "xlen", arg: 2, scope: !255, file: !12, line: 29, type: !34)
!262 = !{!"87"}
!263 = !DILocalVariable(name: "tw", scope: !255, file: !12, line: 31, type: !6)
!264 = !{!"88"}
!265 = !DILocalVariable(name: "twk", scope: !255, file: !12, line: 31, type: !6)
!266 = !{!"89"}
!267 = !DILocation(line: 35, column: 2, scope: !255)
!268 = !{!"90"}
!269 = !{!"91"}
!270 = !{!"92"}
!271 = !{!"93"}
!272 = !{!"94"}
!273 = !{!"95"}
!274 = !{!"96"}
!275 = !DILocation(line: 35, column: 14, scope: !255)
!276 = !{!"97"}
!277 = !{!"98"}
!278 = !DILocation(line: 35, column: 17, scope: !255)
!279 = !{!"99"}
!280 = !{!"100"}
!281 = !DILocation(line: 38, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !255, file: !12, line: 35, column: 22)
!283 = !{!"101"}
!284 = !DILocalVariable(name: "c", scope: !282, file: !12, line: 36, type: !6)
!285 = !DILocation(line: 0, scope: !282)
!286 = !{!"102"}
!287 = !DILocation(line: 39, column: 7, scope: !282)
!288 = !{!"103"}
!289 = !{!"104"}
!290 = !DILocalVariable(name: "w", scope: !282, file: !12, line: 36, type: !6)
!291 = !{!"105"}
!292 = !DILocation(line: 40, column: 8, scope: !282)
!293 = !{!"106"}
!294 = !{!"107"}
!295 = !DILocation(line: 41, column: 16, scope: !282)
!296 = !{!"108"}
!297 = !DILocation(line: 41, column: 9, scope: !282)
!298 = !{!"109"}
!299 = !{!"110"}
!300 = distinct !{!300, !267, !301, !131}
!301 = !DILocation(line: 42, column: 2, scope: !255)
!302 = !{!"111"}
!303 = !DILocation(line: 43, column: 14, scope: !255)
!304 = !{!"112"}
!305 = !DILocation(line: 43, column: 22, scope: !255)
!306 = !{!"113"}
!307 = !DILocation(line: 43, column: 20, scope: !255)
!308 = !{!"114"}
!309 = !DILocation(line: 43, column: 2, scope: !255)
!310 = !{!"115"}
!311 = distinct !DISubprogram(name: "EQ", scope: !136, file: !136, line: 779, type: !312, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!312 = !DISubroutineType(types: !313)
!313 = !{!6, !6, !6}
!314 = !DILocalVariable(name: "x", arg: 1, scope: !311, file: !136, line: 779, type: !6)
!315 = !DILocation(line: 0, scope: !311)
!316 = !{!"116"}
!317 = !DILocalVariable(name: "y", arg: 2, scope: !311, file: !136, line: 779, type: !6)
!318 = !{!"117"}
!319 = !DILocation(line: 783, column: 8, scope: !311)
!320 = !{!"118"}
!321 = !DILocalVariable(name: "q", scope: !311, file: !136, line: 781, type: !6)
!322 = !{!"119"}
!323 = !DILocation(line: 784, column: 18, scope: !311)
!324 = !{!"120"}
!325 = !DILocation(line: 784, column: 16, scope: !311)
!326 = !{!"121"}
!327 = !DILocation(line: 784, column: 22, scope: !311)
!328 = !{!"122"}
!329 = !DILocation(line: 784, column: 9, scope: !311)
!330 = !{!"123"}
!331 = !DILocation(line: 784, column: 2, scope: !311)
!332 = !{!"124"}
!333 = distinct !DISubprogram(name: "MUX", scope: !136, file: !136, line: 770, type: !137, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!334 = !DILocalVariable(name: "ctl", arg: 1, scope: !333, file: !136, line: 770, type: !6)
!335 = !DILocation(line: 0, scope: !333)
!336 = !{!"125"}
!337 = !DILocalVariable(name: "x", arg: 2, scope: !333, file: !136, line: 770, type: !6)
!338 = !{!"126"}
!339 = !DILocalVariable(name: "y", arg: 3, scope: !333, file: !136, line: 770, type: !6)
!340 = !{!"127"}
!341 = !DILocation(line: 772, column: 14, scope: !333)
!342 = !{!"128"}
!343 = !DILocation(line: 772, column: 24, scope: !333)
!344 = !{!"129"}
!345 = !DILocation(line: 772, column: 19, scope: !333)
!346 = !{!"130"}
!347 = !DILocation(line: 772, column: 11, scope: !333)
!348 = !{!"131"}
!349 = !DILocation(line: 772, column: 2, scope: !333)
!350 = !{!"132"}
!351 = distinct !DISubprogram(name: "BIT_LENGTH", scope: !136, file: !136, line: 915, type: !352, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!352 = !DISubroutineType(types: !353)
!353 = !{!6, !6}
!354 = !DILocalVariable(name: "x", arg: 1, scope: !351, file: !136, line: 915, type: !6)
!355 = !DILocation(line: 0, scope: !351)
!356 = !{!"133"}
!357 = !DILocation(line: 919, column: 6, scope: !351)
!358 = !{!"134"}
!359 = !DILocalVariable(name: "k", scope: !351, file: !136, line: 917, type: !6)
!360 = !{!"135"}
!361 = !DILocation(line: 920, column: 6, scope: !351)
!362 = !{!"136"}
!363 = !DILocalVariable(name: "c", scope: !351, file: !136, line: 917, type: !6)
!364 = !{!"137"}
!365 = !DILocation(line: 920, column: 34, scope: !351)
!366 = !{!"138"}
!367 = !DILocation(line: 920, column: 25, scope: !351)
!368 = !{!"139"}
!369 = !{!"140"}
!370 = !DILocation(line: 920, column: 52, scope: !351)
!371 = !{!"141"}
!372 = !DILocation(line: 920, column: 47, scope: !351)
!373 = !{!"142"}
!374 = !{!"143"}
!375 = !DILocation(line: 921, column: 6, scope: !351)
!376 = !{!"144"}
!377 = !{!"145"}
!378 = !DILocation(line: 921, column: 34, scope: !351)
!379 = !{!"146"}
!380 = !DILocation(line: 921, column: 25, scope: !351)
!381 = !{!"147"}
!382 = !{!"148"}
!383 = !DILocation(line: 921, column: 52, scope: !351)
!384 = !{!"149"}
!385 = !DILocation(line: 921, column: 47, scope: !351)
!386 = !{!"150"}
!387 = !{!"151"}
!388 = !DILocation(line: 922, column: 6, scope: !351)
!389 = !{!"152"}
!390 = !{!"153"}
!391 = !DILocation(line: 922, column: 34, scope: !351)
!392 = !{!"154"}
!393 = !DILocation(line: 922, column: 25, scope: !351)
!394 = !{!"155"}
!395 = !{!"156"}
!396 = !DILocation(line: 922, column: 52, scope: !351)
!397 = !{!"157"}
!398 = !DILocation(line: 922, column: 47, scope: !351)
!399 = !{!"158"}
!400 = !{!"159"}
!401 = !DILocation(line: 923, column: 6, scope: !351)
!402 = !{!"160"}
!403 = !{!"161"}
!404 = !DILocation(line: 923, column: 34, scope: !351)
!405 = !{!"162"}
!406 = !DILocation(line: 923, column: 25, scope: !351)
!407 = !{!"163"}
!408 = !{!"164"}
!409 = !DILocation(line: 923, column: 52, scope: !351)
!410 = !{!"165"}
!411 = !DILocation(line: 923, column: 47, scope: !351)
!412 = !{!"166"}
!413 = !{!"167"}
!414 = !DILocation(line: 924, column: 7, scope: !351)
!415 = !{!"168"}
!416 = !DILocation(line: 924, column: 4, scope: !351)
!417 = !{!"169"}
!418 = !{!"170"}
!419 = !DILocation(line: 925, column: 2, scope: !351)
!420 = !{!"171"}
!421 = distinct !DISubprogram(name: "NEQ", scope: !136, file: !136, line: 791, type: !312, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!422 = !DILocalVariable(name: "x", arg: 1, scope: !421, file: !136, line: 791, type: !6)
!423 = !DILocation(line: 0, scope: !421)
!424 = !{!"172"}
!425 = !DILocalVariable(name: "y", arg: 2, scope: !421, file: !136, line: 791, type: !6)
!426 = !{!"173"}
!427 = !DILocation(line: 795, column: 8, scope: !421)
!428 = !{!"174"}
!429 = !DILocalVariable(name: "q", scope: !421, file: !136, line: 793, type: !6)
!430 = !{!"175"}
!431 = !DILocation(line: 796, column: 14, scope: !421)
!432 = !{!"176"}
!433 = !DILocation(line: 796, column: 12, scope: !421)
!434 = !{!"177"}
!435 = !DILocation(line: 796, column: 18, scope: !421)
!436 = !{!"178"}
!437 = !DILocation(line: 796, column: 2, scope: !421)
!438 = !{!"179"}
!439 = distinct !DISubprogram(name: "GT", scope: !136, file: !136, line: 803, type: !312, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!440 = !DILocalVariable(name: "x", arg: 1, scope: !439, file: !136, line: 803, type: !6)
!441 = !DILocation(line: 0, scope: !439)
!442 = !{!"180"}
!443 = !DILocalVariable(name: "y", arg: 2, scope: !439, file: !136, line: 803, type: !6)
!444 = !{!"181"}
!445 = !DILocation(line: 819, column: 8, scope: !439)
!446 = !{!"182"}
!447 = !DILocalVariable(name: "z", scope: !439, file: !136, line: 817, type: !6)
!448 = !{!"183"}
!449 = !DILocation(line: 820, column: 18, scope: !439)
!450 = !{!"184"}
!451 = !DILocation(line: 820, column: 28, scope: !439)
!452 = !{!"185"}
!453 = !DILocation(line: 820, column: 23, scope: !439)
!454 = !{!"186"}
!455 = !DILocation(line: 820, column: 12, scope: !439)
!456 = !{!"187"}
!457 = !DILocation(line: 820, column: 35, scope: !439)
!458 = !{!"188"}
!459 = !DILocation(line: 820, column: 2, scope: !439)
!460 = !{!"189"}
!461 = distinct !DISubprogram(name: "NOT", scope: !136, file: !136, line: 761, type: !352, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !11, retainedNodes: !2)
!462 = !DILocalVariable(name: "ctl", arg: 1, scope: !461, file: !136, line: 761, type: !6)
!463 = !DILocation(line: 0, scope: !461)
!464 = !{!"190"}
!465 = !DILocation(line: 763, column: 13, scope: !461)
!466 = !{!"191"}
!467 = !DILocation(line: 763, column: 2, scope: !461)
!468 = !{!"192"}
!469 = distinct !DISubprogram(name: "br_i31_decode", scope: !14, file: !14, line: 29, type: !470, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !2)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !159, !72, !34}
!472 = !DILocalVariable(name: "x", arg: 1, scope: !469, file: !14, line: 29, type: !159)
!473 = !DILocation(line: 0, scope: !469)
!474 = !{!"193"}
!475 = !DILocalVariable(name: "src", arg: 2, scope: !469, file: !14, line: 29, type: !72)
!476 = !{!"194"}
!477 = !DILocalVariable(name: "len", arg: 3, scope: !469, file: !14, line: 29, type: !34)
!478 = !{!"195"}
!479 = !DILocalVariable(name: "buf", scope: !469, file: !14, line: 31, type: !86)
!480 = !{!"196"}
!481 = !DILocalVariable(name: "u", scope: !469, file: !14, line: 32, type: !34)
!482 = !{!"197"}
!483 = !DILocalVariable(name: "v", scope: !469, file: !14, line: 32, type: !34)
!484 = !{!"198"}
!485 = !DILocalVariable(name: "acc", scope: !469, file: !14, line: 33, type: !6)
!486 = !{!"199"}
!487 = !DILocalVariable(name: "acc_len", scope: !469, file: !14, line: 34, type: !488)
!488 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!489 = !{!"200"}
!490 = !DILocation(line: 41, column: 2, scope: !469)
!491 = !{!"201"}
!492 = !{!"202"}
!493 = !{!"203"}
!494 = !{!"204"}
!495 = !{!"205"}
!496 = !{!"206"}
!497 = !{!"207"}
!498 = !{!"208"}
!499 = !{!"209"}
!500 = !DILocation(line: 41, column: 11, scope: !469)
!501 = !{!"210"}
!502 = !{!"211"}
!503 = !DILocation(line: 41, column: 14, scope: !469)
!504 = !{!"212"}
!505 = !{!"213"}
!506 = !DILocation(line: 44, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !469, file: !14, line: 41, column: 19)
!508 = !{!"214"}
!509 = !{!"215"}
!510 = !{!"216"}
!511 = !DILocalVariable(name: "b", scope: !507, file: !14, line: 42, type: !6)
!512 = !DILocation(line: 0, scope: !507)
!513 = !{!"217"}
!514 = !DILocation(line: 45, column: 13, scope: !507)
!515 = !{!"218"}
!516 = !DILocation(line: 45, column: 7, scope: !507)
!517 = !{!"219"}
!518 = !{!"220"}
!519 = !DILocation(line: 46, column: 11, scope: !507)
!520 = !{!"221"}
!521 = !{!"222"}
!522 = !DILocation(line: 47, column: 15, scope: !523)
!523 = distinct !DILexicalBlock(scope: !507, file: !14, line: 47, column: 7)
!524 = !{!"223"}
!525 = !DILocation(line: 47, column: 7, scope: !507)
!526 = !{!"224"}
!527 = !DILocation(line: 48, column: 18, scope: !528)
!528 = distinct !DILexicalBlock(scope: !523, file: !14, line: 47, column: 22)
!529 = !{!"225"}
!530 = !DILocation(line: 48, column: 8, scope: !528)
!531 = !{!"226"}
!532 = !{!"227"}
!533 = !DILocation(line: 48, column: 4, scope: !528)
!534 = !{!"228"}
!535 = !DILocation(line: 48, column: 12, scope: !528)
!536 = !{!"229"}
!537 = !DILocation(line: 49, column: 12, scope: !528)
!538 = !{!"230"}
!539 = !{!"231"}
!540 = !DILocation(line: 50, column: 18, scope: !528)
!541 = !{!"232"}
!542 = !DILocation(line: 50, column: 12, scope: !528)
!543 = !{!"233"}
!544 = !{!"234"}
!545 = !DILocation(line: 51, column: 3, scope: !528)
!546 = !{!"235"}
!547 = !{!"236"}
!548 = !{!"237"}
!549 = !{!"238"}
!550 = !{!"239"}
!551 = !{!"240"}
!552 = !{!"241"}
!553 = distinct !{!553, !490, !554, !131}
!554 = !DILocation(line: 52, column: 2, scope: !469)
!555 = !{!"242"}
!556 = !DILocation(line: 53, column: 14, scope: !557)
!557 = distinct !DILexicalBlock(scope: !469, file: !14, line: 53, column: 6)
!558 = !{!"243"}
!559 = !DILocation(line: 53, column: 6, scope: !469)
!560 = !{!"244"}
!561 = !DILocation(line: 54, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !14, line: 53, column: 20)
!563 = !{!"245"}
!564 = !{!"246"}
!565 = !DILocation(line: 54, column: 3, scope: !562)
!566 = !{!"247"}
!567 = !DILocation(line: 54, column: 11, scope: !562)
!568 = !{!"248"}
!569 = !DILocation(line: 55, column: 2, scope: !562)
!570 = !{!"249"}
!571 = !{!"250"}
!572 = !{!"251"}
!573 = !DILocation(line: 56, column: 29, scope: !469)
!574 = !{!"252"}
!575 = !DILocation(line: 56, column: 36, scope: !469)
!576 = !{!"253"}
!577 = !DILocation(line: 56, column: 9, scope: !469)
!578 = !{!"254"}
!579 = !DILocation(line: 56, column: 2, scope: !469)
!580 = !{!"255"}
!581 = !DILocation(line: 56, column: 7, scope: !469)
!582 = !{!"256"}
!583 = !DILocation(line: 57, column: 1, scope: !469)
!584 = !{!"257"}
!585 = distinct !DISubprogram(name: "br_i31_decode_reduce", scope: !16, file: !16, line: 29, type: !586, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !2)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !159, !72, !34, !160}
!588 = !DILocalVariable(name: "x", arg: 1, scope: !585, file: !16, line: 29, type: !159)
!589 = !DILocation(line: 0, scope: !585)
!590 = !{!"258"}
!591 = !DILocalVariable(name: "src", arg: 2, scope: !585, file: !16, line: 30, type: !72)
!592 = !{!"259"}
!593 = !DILocalVariable(name: "len", arg: 3, scope: !585, file: !16, line: 30, type: !34)
!594 = !{!"260"}
!595 = !DILocalVariable(name: "m", arg: 4, scope: !585, file: !16, line: 30, type: !160)
!596 = !{!"261"}
!597 = !DILocation(line: 41, column: 14, scope: !585)
!598 = !{!"262"}
!599 = !{!"263"}
!600 = !DILocalVariable(name: "m_ebitlen", scope: !585, file: !16, line: 32, type: !6)
!601 = !{!"264"}
!602 = !DILocation(line: 46, column: 16, scope: !603)
!603 = distinct !DILexicalBlock(scope: !585, file: !16, line: 46, column: 6)
!604 = !{!"265"}
!605 = !DILocation(line: 46, column: 6, scope: !585)
!606 = !{!"266"}
!607 = !DILocation(line: 47, column: 3, scope: !608)
!608 = distinct !DILexicalBlock(scope: !603, file: !16, line: 46, column: 22)
!609 = !{!"267"}
!610 = !DILocation(line: 47, column: 8, scope: !608)
!611 = !{!"268"}
!612 = !DILocation(line: 48, column: 3, scope: !608)
!613 = !{!"269"}
!614 = !DILocation(line: 54, column: 2, scope: !585)
!615 = !{!"270"}
!616 = !DILocation(line: 60, column: 24, scope: !585)
!617 = !{!"271"}
!618 = !DILocalVariable(name: "m_rbitlen", scope: !585, file: !16, line: 32, type: !6)
!619 = !{!"272"}
!620 = !DILocation(line: 61, column: 25, scope: !585)
!621 = !{!"273"}
!622 = !DILocation(line: 61, column: 44, scope: !585)
!623 = !{!"274"}
!624 = !DILocation(line: 61, column: 31, scope: !585)
!625 = !{!"275"}
!626 = !DILocation(line: 61, column: 50, scope: !585)
!627 = !{!"276"}
!628 = !{!"277"}
!629 = !DILocation(line: 62, column: 21, scope: !585)
!630 = !{!"278"}
!631 = !DILocation(line: 62, column: 26, scope: !585)
!632 = !{!"279"}
!633 = !DILocation(line: 62, column: 10, scope: !585)
!634 = !{!"280"}
!635 = !DILocalVariable(name: "mblen", scope: !585, file: !16, line: 33, type: !34)
!636 = !{!"281"}
!637 = !DILocation(line: 63, column: 12, scope: !585)
!638 = !{!"282"}
!639 = !DILocalVariable(name: "k", scope: !585, file: !16, line: 33, type: !34)
!640 = !{!"283"}
!641 = !DILocation(line: 64, column: 8, scope: !642)
!642 = distinct !DILexicalBlock(scope: !585, file: !16, line: 64, column: 6)
!643 = !{!"284"}
!644 = !DILocation(line: 64, column: 6, scope: !585)
!645 = !{!"285"}
!646 = !DILocation(line: 65, column: 3, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !16, line: 64, column: 16)
!648 = !{!"286"}
!649 = !DILocation(line: 66, column: 3, scope: !647)
!650 = !{!"287"}
!651 = !DILocation(line: 66, column: 8, scope: !647)
!652 = !{!"288"}
!653 = !DILocation(line: 67, column: 3, scope: !647)
!654 = !{!"289"}
!655 = !DILocalVariable(name: "buf", scope: !585, file: !16, line: 34, type: !86)
!656 = !{!"290"}
!657 = !DILocation(line: 70, column: 2, scope: !585)
!658 = !{!"291"}
!659 = !DILocation(line: 71, column: 2, scope: !585)
!660 = !{!"292"}
!661 = !DILocation(line: 71, column: 7, scope: !585)
!662 = !{!"293"}
!663 = !DILocalVariable(name: "acc", scope: !585, file: !16, line: 35, type: !6)
!664 = !{!"294"}
!665 = !DILocalVariable(name: "acc_len", scope: !585, file: !16, line: 36, type: !488)
!666 = !{!"295"}
!667 = !DILocation(line: 78, column: 2, scope: !585)
!668 = !{!"296"}
!669 = !{!"297"}
!670 = !{!"298"}
!671 = !{!"299"}
!672 = !{!"300"}
!673 = !{!"301"}
!674 = !{!"302"}
!675 = !DILocation(line: 78, column: 11, scope: !585)
!676 = !{!"303"}
!677 = !{!"304"}
!678 = !DILocation(line: 81, column: 13, scope: !679)
!679 = distinct !DILexicalBlock(scope: !585, file: !16, line: 78, column: 18)
!680 = !{!"305"}
!681 = !{!"306"}
!682 = !DILocation(line: 81, column: 7, scope: !679)
!683 = !{!"307"}
!684 = !{!"308"}
!685 = !{!"309"}
!686 = !DILocalVariable(name: "v", scope: !679, file: !16, line: 79, type: !6)
!687 = !DILocation(line: 0, scope: !679)
!688 = !{!"310"}
!689 = !DILocation(line: 82, column: 15, scope: !690)
!690 = distinct !DILexicalBlock(scope: !679, file: !16, line: 82, column: 7)
!691 = !{!"311"}
!692 = !DILocation(line: 82, column: 7, scope: !679)
!693 = !{!"312"}
!694 = !DILocation(line: 83, column: 12, scope: !695)
!695 = distinct !DILexicalBlock(scope: !690, file: !16, line: 82, column: 22)
!696 = !{!"313"}
!697 = !{!"314"}
!698 = !DILocation(line: 84, column: 15, scope: !695)
!699 = !{!"315"}
!700 = !DILocation(line: 84, column: 8, scope: !695)
!701 = !{!"316"}
!702 = !{!"317"}
!703 = !DILocation(line: 85, column: 13, scope: !695)
!704 = !{!"318"}
!705 = !DILocation(line: 85, column: 8, scope: !695)
!706 = !{!"319"}
!707 = !{!"320"}
!708 = !DILocation(line: 86, column: 4, scope: !695)
!709 = !{!"321"}
!710 = !DILocation(line: 87, column: 26, scope: !695)
!711 = !{!"322"}
!712 = !DILocation(line: 87, column: 20, scope: !695)
!713 = !{!"323"}
!714 = !DILocation(line: 87, column: 12, scope: !695)
!715 = !{!"324"}
!716 = !{!"325"}
!717 = !DILocation(line: 88, column: 3, scope: !695)
!718 = !{!"326"}
!719 = !DILocation(line: 89, column: 15, scope: !720)
!720 = distinct !DILexicalBlock(scope: !690, file: !16, line: 88, column: 10)
!721 = !{!"327"}
!722 = !DILocation(line: 89, column: 21, scope: !720)
!723 = !{!"328"}
!724 = !{!"329"}
!725 = !DILocation(line: 90, column: 12, scope: !720)
!726 = !{!"330"}
!727 = !{!"331"}
!728 = !{!"332"}
!729 = !DILocation(line: 0, scope: !690)
!730 = !{!"333"}
!731 = !{!"334"}
!732 = !{!"335"}
!733 = !{!"336"}
!734 = distinct !{!734, !667, !735, !131}
!735 = !DILocation(line: 92, column: 2, scope: !585)
!736 = !{!"337"}
!737 = !DILocation(line: 98, column: 14, scope: !738)
!738 = distinct !DILexicalBlock(scope: !585, file: !16, line: 98, column: 6)
!739 = !{!"338"}
!740 = !DILocation(line: 98, column: 6, scope: !585)
!741 = !{!"339"}
!742 = !DILocation(line: 99, column: 17, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !16, line: 98, column: 20)
!744 = !{!"340"}
!745 = !{!"341"}
!746 = !DILocation(line: 99, column: 22, scope: !743)
!747 = !{!"342"}
!748 = !DILocation(line: 99, column: 14, scope: !743)
!749 = !{!"343"}
!750 = !DILocation(line: 99, column: 35, scope: !743)
!751 = !{!"344"}
!752 = !{!"345"}
!753 = !DILocation(line: 100, column: 23, scope: !743)
!754 = !{!"346"}
!755 = !DILocation(line: 100, column: 3, scope: !743)
!756 = !{!"347"}
!757 = !DILocation(line: 101, column: 3, scope: !743)
!758 = !{!"348"}
!759 = !DILocation(line: 102, column: 2, scope: !743)
!760 = !{!"349"}
!761 = !DILocation(line: 103, column: 1, scope: !585)
!762 = !{!"350"}
!763 = distinct !DISubprogram(name: "br_i31_zero", scope: !136, file: !136, line: 1383, type: !764, scopeLine: 1384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !159, !6}
!766 = !DILocalVariable(name: "x", arg: 1, scope: !763, file: !136, line: 1383, type: !159)
!767 = !DILocation(line: 0, scope: !763)
!768 = !{!"351"}
!769 = !DILocalVariable(name: "bit_len", arg: 2, scope: !763, file: !136, line: 1383, type: !6)
!770 = !{!"352"}
!771 = !DILocation(line: 1385, column: 5, scope: !763)
!772 = !{!"353"}
!773 = !{!"354"}
!774 = !DILocation(line: 1385, column: 8, scope: !763)
!775 = !{!"355"}
!776 = !DILocation(line: 1386, column: 2, scope: !763)
!777 = !{!"356"}
!778 = !DILocation(line: 1386, column: 25, scope: !763)
!779 = !{!"357"}
!780 = !DILocation(line: 1386, column: 31, scope: !763)
!781 = !{!"358"}
!782 = !DILocation(line: 1386, column: 15, scope: !763)
!783 = !{!"359"}
!784 = !DILocation(line: 1386, column: 37, scope: !763)
!785 = !{!"360"}
!786 = !{!"361"}
!787 = !{!"0010"}
!788 = !DILocation(line: 1387, column: 1, scope: !763)
!789 = !{!"362"}
!790 = distinct !DISubprogram(name: "br_i31_encode", scope: !18, file: !18, line: 29, type: !791, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !2)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !62, !34, !160}
!793 = !DILocalVariable(name: "dst", arg: 1, scope: !790, file: !18, line: 29, type: !62)
!794 = !DILocation(line: 0, scope: !790)
!795 = !{!"363"}
!796 = !DILocalVariable(name: "len", arg: 2, scope: !790, file: !18, line: 29, type: !34)
!797 = !{!"364"}
!798 = !DILocalVariable(name: "x", arg: 3, scope: !790, file: !18, line: 29, type: !160)
!799 = !{!"365"}
!800 = !DILocation(line: 36, column: 10, scope: !790)
!801 = !{!"366"}
!802 = !{!"367"}
!803 = !DILocation(line: 36, column: 15, scope: !790)
!804 = !{!"368"}
!805 = !DILocation(line: 36, column: 21, scope: !790)
!806 = !{!"369"}
!807 = !DILocation(line: 36, column: 9, scope: !790)
!808 = !{!"370"}
!809 = !DILocalVariable(name: "xlen", scope: !790, file: !18, line: 32, type: !34)
!810 = !{!"371"}
!811 = !DILocation(line: 37, column: 11, scope: !812)
!812 = distinct !DILexicalBlock(scope: !790, file: !18, line: 37, column: 6)
!813 = !{!"372"}
!814 = !DILocation(line: 37, column: 6, scope: !790)
!815 = !{!"373"}
!816 = !DILocation(line: 38, column: 3, scope: !817)
!817 = distinct !DILexicalBlock(scope: !812, file: !18, line: 37, column: 17)
!818 = !{!"374"}
!819 = !{!"1000"}
!820 = !DILocation(line: 39, column: 3, scope: !817)
!821 = !{!"375"}
!822 = !DILocation(line: 41, column: 29, scope: !790)
!823 = !{!"376"}
!824 = !DILocalVariable(name: "buf", scope: !790, file: !18, line: 31, type: !20)
!825 = !{!"377"}
!826 = !DILocalVariable(name: "k", scope: !790, file: !18, line: 32, type: !34)
!827 = !{!"378"}
!828 = !DILocalVariable(name: "acc", scope: !790, file: !18, line: 33, type: !6)
!829 = !{!"379"}
!830 = !DILocalVariable(name: "acc_len", scope: !790, file: !18, line: 34, type: !488)
!831 = !{!"380"}
!832 = !DILocation(line: 45, column: 2, scope: !790)
!833 = !{!"381"}
!834 = !{!"382"}
!835 = !DILocation(line: 41, column: 6, scope: !790)
!836 = !{!"383"}
!837 = !{!"384"}
!838 = !{!"385"}
!839 = !{!"386"}
!840 = !{!"387"}
!841 = !{!"388"}
!842 = !{!"389"}
!843 = !{!"390"}
!844 = !{!"391"}
!845 = !DILocation(line: 45, column: 13, scope: !790)
!846 = !{!"392"}
!847 = !{!"393"}
!848 = !DILocation(line: 48, column: 10, scope: !849)
!849 = distinct !DILexicalBlock(scope: !790, file: !18, line: 45, column: 19)
!850 = !{!"394"}
!851 = !DILocation(line: 48, column: 7, scope: !849)
!852 = !{!"395"}
!853 = !DILocation(line: 48, column: 21, scope: !849)
!854 = !{!"396"}
!855 = !{!"397"}
!856 = !{!"398"}
!857 = !{!"399"}
!858 = !{!"400"}
!859 = !DILocalVariable(name: "w", scope: !849, file: !18, line: 46, type: !6)
!860 = !DILocation(line: 0, scope: !849)
!861 = !{!"401"}
!862 = !DILocation(line: 49, column: 5, scope: !849)
!863 = !{!"402"}
!864 = !{!"403"}
!865 = !DILocation(line: 50, column: 15, scope: !866)
!866 = distinct !DILexicalBlock(scope: !849, file: !18, line: 50, column: 7)
!867 = !{!"404"}
!868 = !DILocation(line: 50, column: 7, scope: !849)
!869 = !{!"405"}
!870 = !{!"406"}
!871 = !{!"407"}
!872 = !DILocation(line: 53, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !866, file: !18, line: 50, column: 21)
!874 = !{!"408"}
!875 = !DILocation(line: 56, column: 17, scope: !876)
!876 = distinct !DILexicalBlock(scope: !866, file: !18, line: 53, column: 10)
!877 = !{!"409"}
!878 = !DILocation(line: 56, column: 12, scope: !876)
!879 = !{!"410"}
!880 = !DILocalVariable(name: "z", scope: !876, file: !18, line: 54, type: !6)
!881 = !DILocation(line: 0, scope: !876)
!882 = !{!"411"}
!883 = !DILocation(line: 57, column: 12, scope: !876)
!884 = !{!"412"}
!885 = !{!"413"}
!886 = !DILocation(line: 58, column: 19, scope: !876)
!887 = !{!"414"}
!888 = !DILocation(line: 58, column: 12, scope: !876)
!889 = !{!"415"}
!890 = !{!"416"}
!891 = !DILocation(line: 59, column: 12, scope: !892)
!892 = distinct !DILexicalBlock(scope: !876, file: !18, line: 59, column: 8)
!893 = !{!"417"}
!894 = !DILocation(line: 59, column: 8, scope: !876)
!895 = !{!"418"}
!896 = !DILocation(line: 60, column: 9, scope: !897)
!897 = distinct !DILexicalBlock(scope: !892, file: !18, line: 59, column: 18)
!898 = !{!"419"}
!899 = !{!"420"}
!900 = !DILocation(line: 61, column: 9, scope: !897)
!901 = !{!"421"}
!902 = !{!"422"}
!903 = !DILocation(line: 62, column: 5, scope: !897)
!904 = !{!"423"}
!905 = !DILocation(line: 63, column: 4, scope: !897)
!906 = !{!"424"}
!907 = !DILocation(line: 64, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !892, file: !18, line: 63, column: 11)
!909 = !{!"425"}
!910 = !DILocation(line: 66, column: 34, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !18, line: 64, column: 18)
!912 = !{!"426"}
!913 = !DILocation(line: 66, column: 16, scope: !911)
!914 = !{!"427"}
!915 = !DILocation(line: 66, column: 6, scope: !911)
!916 = !{!"428"}
!917 = !DILocation(line: 66, column: 14, scope: !911)
!918 = !{!"429"}
!919 = !{!"430"}
!920 = !DILocation(line: 69, column: 34, scope: !911)
!921 = !{!"431"}
!922 = !DILocation(line: 69, column: 16, scope: !911)
!923 = !{!"432"}
!924 = !DILocation(line: 69, column: 6, scope: !911)
!925 = !{!"433"}
!926 = !DILocation(line: 69, column: 14, scope: !911)
!927 = !{!"434"}
!928 = !{!"435"}
!929 = !DILocation(line: 72, column: 16, scope: !911)
!930 = !{!"436"}
!931 = !DILocation(line: 72, column: 6, scope: !911)
!932 = !{!"437"}
!933 = !DILocation(line: 72, column: 14, scope: !911)
!934 = !{!"438"}
!935 = !DILocation(line: 73, column: 6, scope: !911)
!936 = !{!"439"}
!937 = !DILocation(line: 75, column: 5, scope: !908)
!938 = !{!"440"}
!939 = !{!"441"}
!940 = !{!"442"}
!941 = !DILocation(line: 0, scope: !866)
!942 = !{!"443"}
!943 = !{!"444"}
!944 = !{!"445"}
!945 = !{!"446"}
!946 = !{!"447"}
!947 = !{!"448"}
!948 = !{!"449"}
!949 = distinct !{!949, !832, !950, !131}
!950 = !DILocation(line: 78, column: 2, scope: !790)
!951 = !{!"450"}
!952 = !DILocation(line: 79, column: 1, scope: !790)
!953 = !{!"451"}
!954 = distinct !DISubprogram(name: "br_enc32be", scope: !136, file: !136, line: 558, type: !955, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !2)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !62, !6}
!957 = !DILocalVariable(name: "dst", arg: 1, scope: !954, file: !136, line: 558, type: !62)
!958 = !DILocation(line: 0, scope: !954)
!959 = !{!"452"}
!960 = !DILocalVariable(name: "x", arg: 2, scope: !954, file: !136, line: 558, type: !6)
!961 = !{!"453"}
!962 = !DILocalVariable(name: "buf", scope: !954, file: !136, line: 563, type: !20)
!963 = !{!"454"}
!964 = !DILocation(line: 566, column: 29, scope: !954)
!965 = !{!"455"}
!966 = !DILocation(line: 566, column: 11, scope: !954)
!967 = !{!"456"}
!968 = !DILocation(line: 566, column: 2, scope: !954)
!969 = !{!"457"}
!970 = !DILocation(line: 566, column: 9, scope: !954)
!971 = !{!"458"}
!972 = !DILocation(line: 567, column: 29, scope: !954)
!973 = !{!"459"}
!974 = !DILocation(line: 567, column: 11, scope: !954)
!975 = !{!"460"}
!976 = !DILocation(line: 567, column: 2, scope: !954)
!977 = !{!"461"}
!978 = !DILocation(line: 567, column: 9, scope: !954)
!979 = !{!"462"}
!980 = !DILocation(line: 568, column: 29, scope: !954)
!981 = !{!"463"}
!982 = !DILocation(line: 568, column: 11, scope: !954)
!983 = !{!"464"}
!984 = !DILocation(line: 568, column: 2, scope: !954)
!985 = !{!"465"}
!986 = !DILocation(line: 568, column: 9, scope: !954)
!987 = !{!"466"}
!988 = !DILocation(line: 569, column: 11, scope: !954)
!989 = !{!"467"}
!990 = !DILocation(line: 569, column: 2, scope: !954)
!991 = !{!"468"}
!992 = !DILocation(line: 569, column: 9, scope: !954)
!993 = !{!"469"}
!994 = !DILocation(line: 571, column: 1, scope: !954)
!995 = !{!"470"}
!996 = distinct !DISubprogram(name: "br_i31_from_monty", scope: !23, file: !23, line: 29, type: !997, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !2)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !159, !160, !6}
!999 = !DILocalVariable(name: "x", arg: 1, scope: !996, file: !23, line: 29, type: !159)
!1000 = !DILocation(line: 0, scope: !996)
!1001 = !{!"471"}
!1002 = !DILocalVariable(name: "m", arg: 2, scope: !996, file: !23, line: 29, type: !160)
!1003 = !{!"472"}
!1004 = !DILocalVariable(name: "m0i", arg: 3, scope: !996, file: !23, line: 29, type: !6)
!1005 = !{!"473"}
!1006 = !DILocation(line: 33, column: 9, scope: !996)
!1007 = !{!"474"}
!1008 = !{!"475"}
!1009 = !DILocation(line: 33, column: 14, scope: !996)
!1010 = !{!"476"}
!1011 = !DILocation(line: 33, column: 20, scope: !996)
!1012 = !{!"477"}
!1013 = !DILocation(line: 33, column: 8, scope: !996)
!1014 = !{!"478"}
!1015 = !DILocalVariable(name: "len", scope: !996, file: !23, line: 31, type: !34)
!1016 = !{!"479"}
!1017 = !DILocalVariable(name: "u", scope: !996, file: !23, line: 31, type: !34)
!1018 = !{!"480"}
!1019 = !DILocation(line: 34, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !996, file: !23, line: 34, column: 2)
!1021 = !{!"481"}
!1022 = !DILocation(line: 0, scope: !1020)
!1023 = !{!"482"}
!1024 = !{!"483"}
!1025 = !DILocation(line: 34, column: 16, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1020, file: !23, line: 34, column: 2)
!1027 = !{!"484"}
!1028 = !DILocation(line: 34, column: 2, scope: !1020)
!1029 = !{!"485"}
!1030 = !DILocation(line: 38, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !23, line: 34, column: 29)
!1032 = !{!"486"}
!1033 = !{!"487"}
!1034 = !{!"488"}
!1035 = !{!"489"}
!1036 = !DILocalVariable(name: "f", scope: !1031, file: !23, line: 35, type: !6)
!1037 = !DILocation(line: 0, scope: !1031)
!1038 = !{!"490"}
!1039 = !DILocalVariable(name: "cc", scope: !1031, file: !23, line: 36, type: !25)
!1040 = !{!"491"}
!1041 = !DILocalVariable(name: "v", scope: !996, file: !23, line: 31, type: !34)
!1042 = !{!"492"}
!1043 = !DILocation(line: 40, column: 8, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1031, file: !23, line: 40, column: 3)
!1045 = !{!"493"}
!1046 = !DILocation(line: 0, scope: !1044)
!1047 = !{!"494"}
!1048 = !{!"495"}
!1049 = !{!"496"}
!1050 = !{!"497"}
!1051 = !DILocation(line: 40, column: 17, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1044, file: !23, line: 40, column: 3)
!1053 = !{!"498"}
!1054 = !DILocation(line: 40, column: 3, scope: !1044)
!1055 = !{!"499"}
!1056 = !DILocation(line: 43, column: 22, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !23, line: 40, column: 30)
!1058 = !{!"500"}
!1059 = !DILocation(line: 43, column: 18, scope: !1057)
!1060 = !{!"501"}
!1061 = !{!"502"}
!1062 = !DILocation(line: 43, column: 8, scope: !1057)
!1063 = !{!"503"}
!1064 = !DILocation(line: 43, column: 29, scope: !1057)
!1065 = !{!"504"}
!1066 = !{!"505"}
!1067 = !{!"506"}
!1068 = !{!"507"}
!1069 = !{!"508"}
!1070 = !{!"509"}
!1071 = !DILocation(line: 43, column: 27, scope: !1057)
!1072 = !{!"510"}
!1073 = !DILocation(line: 43, column: 48, scope: !1057)
!1074 = !{!"511"}
!1075 = !DILocalVariable(name: "z", scope: !1057, file: !23, line: 41, type: !25)
!1076 = !DILocation(line: 0, scope: !1057)
!1077 = !{!"512"}
!1078 = !DILocation(line: 44, column: 11, scope: !1057)
!1079 = !{!"513"}
!1080 = !{!"514"}
!1081 = !DILocation(line: 45, column: 10, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1057, file: !23, line: 45, column: 8)
!1083 = !{!"515"}
!1084 = !DILocation(line: 45, column: 8, scope: !1057)
!1085 = !{!"516"}
!1086 = !DILocation(line: 46, column: 12, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !23, line: 45, column: 16)
!1088 = !{!"517"}
!1089 = !DILocation(line: 46, column: 24, scope: !1087)
!1090 = !{!"518"}
!1091 = !DILocation(line: 46, column: 5, scope: !1087)
!1092 = !{!"519"}
!1093 = !DILocation(line: 46, column: 10, scope: !1087)
!1094 = !{!"520"}
!1095 = !DILocation(line: 47, column: 4, scope: !1087)
!1096 = !{!"521"}
!1097 = !DILocation(line: 48, column: 3, scope: !1057)
!1098 = !{!"522"}
!1099 = !DILocation(line: 40, column: 26, scope: !1052)
!1100 = !{!"523"}
!1101 = !{!"524"}
!1102 = !DILocation(line: 40, column: 3, scope: !1052)
!1103 = distinct !{!1103, !1054, !1104, !131}
!1104 = !DILocation(line: 48, column: 3, scope: !1044)
!1105 = !{!"525"}
!1106 = !DILocation(line: 49, column: 12, scope: !1031)
!1107 = !{!"526"}
!1108 = !DILocation(line: 49, column: 3, scope: !1031)
!1109 = !{!"527"}
!1110 = !DILocation(line: 49, column: 10, scope: !1031)
!1111 = !{!"528"}
!1112 = !DILocation(line: 50, column: 2, scope: !1031)
!1113 = !{!"529"}
!1114 = !DILocation(line: 34, column: 25, scope: !1026)
!1115 = !{!"530"}
!1116 = !{!"531"}
!1117 = !DILocation(line: 34, column: 2, scope: !1026)
!1118 = distinct !{!1118, !1028, !1119, !131}
!1119 = !DILocation(line: 50, column: 2, scope: !1020)
!1120 = !{!"532"}
!1121 = !DILocation(line: 59, column: 23, scope: !996)
!1122 = !{!"533"}
!1123 = !DILocation(line: 59, column: 19, scope: !996)
!1124 = !{!"534"}
!1125 = !DILocation(line: 59, column: 2, scope: !996)
!1126 = !{!"535"}
!1127 = !DILocation(line: 60, column: 1, scope: !996)
!1128 = !{!"536"}
!1129 = distinct !DISubprogram(name: "NOT", scope: !136, file: !136, line: 761, type: !352, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !22, retainedNodes: !2)
!1130 = !DILocalVariable(name: "ctl", arg: 1, scope: !1129, file: !136, line: 761, type: !6)
!1131 = !DILocation(line: 0, scope: !1129)
!1132 = !{!"537"}
!1133 = !DILocation(line: 763, column: 13, scope: !1129)
!1134 = !{!"538"}
!1135 = !DILocation(line: 763, column: 2, scope: !1129)
!1136 = !{!"539"}
!1137 = distinct !DISubprogram(name: "br_i31_modpow_opt", scope: !29, file: !29, line: 29, type: !1138, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!6, !159, !86, !34, !160, !6, !159, !34}
!1140 = !DILocalVariable(name: "x", arg: 1, scope: !1137, file: !29, line: 29, type: !159)
!1141 = !DILocation(line: 0, scope: !1137)
!1142 = !{!"540"}
!1143 = !DILocalVariable(name: "e", arg: 2, scope: !1137, file: !29, line: 30, type: !86)
!1144 = !{!"541"}
!1145 = !DILocalVariable(name: "elen", arg: 3, scope: !1137, file: !29, line: 30, type: !34)
!1146 = !{!"542"}
!1147 = !DILocalVariable(name: "m", arg: 4, scope: !1137, file: !29, line: 31, type: !160)
!1148 = !{!"543"}
!1149 = !DILocalVariable(name: "m0i", arg: 5, scope: !1137, file: !29, line: 31, type: !6)
!1150 = !{!"544"}
!1151 = !DILocalVariable(name: "tmp", arg: 6, scope: !1137, file: !29, line: 31, type: !159)
!1152 = !{!"545"}
!1153 = !DILocalVariable(name: "twlen", arg: 7, scope: !1137, file: !29, line: 31, type: !34)
!1154 = !{!"546"}
!1155 = !DILocation(line: 42, column: 11, scope: !1137)
!1156 = !{!"547"}
!1157 = !{!"548"}
!1158 = !DILocation(line: 42, column: 16, scope: !1137)
!1159 = !{!"549"}
!1160 = !DILocation(line: 42, column: 22, scope: !1137)
!1161 = !{!"550"}
!1162 = !DILocation(line: 42, column: 10, scope: !1137)
!1163 = !{!"551"}
!1164 = !DILocalVariable(name: "mwlen", scope: !1137, file: !29, line: 33, type: !34)
!1165 = !{!"552"}
!1166 = !DILocation(line: 43, column: 15, scope: !1137)
!1167 = !{!"553"}
!1168 = !DILocalVariable(name: "mlen", scope: !1137, file: !29, line: 33, type: !34)
!1169 = !{!"554"}
!1170 = !DILocation(line: 44, column: 18, scope: !1137)
!1171 = !{!"555"}
!1172 = !DILocation(line: 44, column: 8, scope: !1137)
!1173 = !{!"556"}
!1174 = !{!"557"}
!1175 = !DILocalVariable(name: "t1", scope: !1137, file: !29, line: 34, type: !159)
!1176 = !{!"558"}
!1177 = !DILocation(line: 46, column: 11, scope: !1137)
!1178 = !{!"559"}
!1179 = !DILocalVariable(name: "t2", scope: !1137, file: !29, line: 34, type: !159)
!1180 = !{!"560"}
!1181 = !DILocation(line: 54, column: 21, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1137, file: !29, line: 54, column: 6)
!1183 = !{!"561"}
!1184 = !DILocation(line: 54, column: 12, scope: !1182)
!1185 = !{!"562"}
!1186 = !DILocation(line: 54, column: 6, scope: !1137)
!1187 = !{!"563"}
!1188 = !DILocation(line: 55, column: 3, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1182, file: !29, line: 54, column: 28)
!1190 = !{!"564"}
!1191 = !DILocalVariable(name: "win_len", scope: !1137, file: !29, line: 37, type: !488)
!1192 = !{!"565"}
!1193 = !DILocation(line: 57, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1137, file: !29, line: 57, column: 2)
!1195 = !{!"566"}
!1196 = !DILocation(line: 0, scope: !1194)
!1197 = !{!"567"}
!1198 = !{!"568"}
!1199 = !DILocation(line: 57, column: 28, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !29, line: 57, column: 2)
!1201 = !{!"569"}
!1202 = !DILocation(line: 57, column: 2, scope: !1194)
!1203 = !{!"570"}
!1204 = !DILocation(line: 58, column: 21, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !29, line: 58, column: 7)
!1206 = distinct !DILexicalBlock(scope: !1200, file: !29, line: 57, column: 45)
!1207 = !{!"571"}
!1208 = !DILocation(line: 58, column: 33, scope: !1205)
!1209 = !{!"572"}
!1210 = !DILocation(line: 58, column: 7, scope: !1205)
!1211 = !{!"573"}
!1212 = !DILocation(line: 58, column: 38, scope: !1205)
!1213 = !{!"574"}
!1214 = !DILocation(line: 58, column: 46, scope: !1205)
!1215 = !{!"575"}
!1216 = !DILocation(line: 58, column: 7, scope: !1206)
!1217 = !{!"576"}
!1218 = !DILocation(line: 59, column: 4, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1205, file: !29, line: 58, column: 56)
!1220 = !{!"577"}
!1221 = !DILocation(line: 61, column: 2, scope: !1206)
!1222 = !{!"578"}
!1223 = !DILocation(line: 57, column: 41, scope: !1200)
!1224 = !{!"579"}
!1225 = !{!"580"}
!1226 = !DILocation(line: 57, column: 2, scope: !1200)
!1227 = distinct !{!1227, !1202, !1228, !131}
!1228 = !DILocation(line: 61, column: 2, scope: !1194)
!1229 = !{!"581"}
!1230 = !DILocation(line: 66, column: 2, scope: !1137)
!1231 = !{!"582"}
!1232 = !DILocation(line: 73, column: 14, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1137, file: !29, line: 73, column: 6)
!1234 = !{!"583"}
!1235 = !DILocation(line: 73, column: 6, scope: !1137)
!1236 = !{!"584"}
!1237 = !DILocation(line: 74, column: 3, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !29, line: 73, column: 20)
!1239 = !{!"585"}
!1240 = !{!"586"}
!1241 = !{!"587"}
!1242 = !{!"1010"}
!1243 = !DILocation(line: 75, column: 2, scope: !1238)
!1244 = !{!"588"}
!1245 = !DILocation(line: 76, column: 13, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1233, file: !29, line: 75, column: 9)
!1247 = !{!"589"}
!1248 = !DILocation(line: 76, column: 3, scope: !1246)
!1249 = !{!"590"}
!1250 = !{!"591"}
!1251 = !{!"592"}
!1252 = !DILocation(line: 77, column: 13, scope: !1246)
!1253 = !{!"593"}
!1254 = !DILocalVariable(name: "base", scope: !1137, file: !29, line: 34, type: !159)
!1255 = !{!"594"}
!1256 = !DILocalVariable(name: "u", scope: !1137, file: !29, line: 35, type: !34)
!1257 = !{!"595"}
!1258 = !DILocation(line: 78, column: 8, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1246, file: !29, line: 78, column: 3)
!1260 = !{!"596"}
!1261 = !DILocation(line: 0, scope: !1246)
!1262 = !{!"597"}
!1263 = !DILocation(line: 0, scope: !1259)
!1264 = !{!"598"}
!1265 = !{!"599"}
!1266 = !{!"600"}
!1267 = !DILocation(line: 78, column: 32, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1259, file: !29, line: 78, column: 3)
!1269 = !{!"601"}
!1270 = !DILocation(line: 78, column: 19, scope: !1268)
!1271 = !{!"602"}
!1272 = !DILocation(line: 78, column: 17, scope: !1268)
!1273 = !{!"603"}
!1274 = !DILocation(line: 78, column: 3, scope: !1259)
!1275 = !{!"604"}
!1276 = !DILocation(line: 79, column: 25, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1268, file: !29, line: 78, column: 51)
!1278 = !{!"605"}
!1279 = !DILocation(line: 79, column: 4, scope: !1277)
!1280 = !{!"606"}
!1281 = !DILocation(line: 80, column: 9, scope: !1277)
!1282 = !{!"607"}
!1283 = !{!"608"}
!1284 = !DILocation(line: 81, column: 3, scope: !1277)
!1285 = !{!"609"}
!1286 = !DILocation(line: 78, column: 47, scope: !1268)
!1287 = !{!"610"}
!1288 = !{!"611"}
!1289 = !DILocation(line: 78, column: 3, scope: !1268)
!1290 = distinct !{!1290, !1274, !1291, !131}
!1291 = !DILocation(line: 81, column: 3, scope: !1259)
!1292 = !{!"612"}
!1293 = !{!"613"}
!1294 = !DILocation(line: 89, column: 17, scope: !1137)
!1295 = !{!"614"}
!1296 = !{!"615"}
!1297 = !DILocation(line: 89, column: 2, scope: !1137)
!1298 = !{!"616"}
!1299 = !DILocation(line: 90, column: 5, scope: !1137)
!1300 = !{!"617"}
!1301 = !{!"618"}
!1302 = !DILocation(line: 90, column: 10, scope: !1137)
!1303 = !{!"619"}
!1304 = !DILocation(line: 90, column: 16, scope: !1137)
!1305 = !{!"620"}
!1306 = !DILocation(line: 90, column: 2, scope: !1137)
!1307 = !{!"621"}
!1308 = !{!"622"}
!1309 = !DILocation(line: 90, column: 22, scope: !1137)
!1310 = !{!"623"}
!1311 = !DILocation(line: 91, column: 2, scope: !1137)
!1312 = !{!"624"}
!1313 = !DILocalVariable(name: "acc", scope: !1137, file: !29, line: 36, type: !6)
!1314 = !{!"625"}
!1315 = !DILocalVariable(name: "acc_len", scope: !1137, file: !29, line: 37, type: !488)
!1316 = !{!"626"}
!1317 = !DILocation(line: 99, column: 2, scope: !1137)
!1318 = !{!"627"}
!1319 = !{!"628"}
!1320 = !{!"629"}
!1321 = !{!"630"}
!1322 = !{!"631"}
!1323 = !{!"632"}
!1324 = !{!"633"}
!1325 = !{!"634"}
!1326 = !{!"635"}
!1327 = !DILocation(line: 99, column: 17, scope: !1137)
!1328 = !{!"636"}
!1329 = !DILocation(line: 99, column: 21, scope: !1137)
!1330 = !{!"637"}
!1331 = !DILocation(line: 99, column: 29, scope: !1137)
!1332 = !{!"638"}
!1333 = !{!"639"}
!1334 = !{!"640"}
!1335 = !{!"641"}
!1336 = !DILocalVariable(name: "k", scope: !1337, file: !29, line: 100, type: !488)
!1337 = distinct !DILexicalBlock(scope: !1137, file: !29, line: 99, column: 34)
!1338 = !DILocation(line: 0, scope: !1337)
!1339 = !{!"642"}
!1340 = !DILocation(line: 107, column: 15, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !29, line: 107, column: 7)
!1342 = !{!"643"}
!1343 = !DILocation(line: 107, column: 7, scope: !1337)
!1344 = !{!"644"}
!1345 = !DILocation(line: 108, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !29, line: 108, column: 8)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !29, line: 107, column: 26)
!1348 = !{!"645"}
!1349 = !DILocation(line: 108, column: 8, scope: !1347)
!1350 = !{!"646"}
!1351 = !DILocation(line: 109, column: 16, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1346, file: !29, line: 108, column: 18)
!1353 = !{!"647"}
!1354 = !DILocation(line: 109, column: 27, scope: !1352)
!1355 = !{!"648"}
!1356 = !{!"649"}
!1357 = !DILocation(line: 109, column: 24, scope: !1352)
!1358 = !{!"650"}
!1359 = !{!"651"}
!1360 = !DILocation(line: 109, column: 22, scope: !1352)
!1361 = !{!"652"}
!1362 = !{!"653"}
!1363 = !DILocation(line: 110, column: 10, scope: !1352)
!1364 = !{!"654"}
!1365 = !{!"655"}
!1366 = !DILocation(line: 111, column: 13, scope: !1352)
!1367 = !{!"656"}
!1368 = !{!"657"}
!1369 = !DILocation(line: 112, column: 4, scope: !1352)
!1370 = !{!"658"}
!1371 = !{!"659"}
!1372 = !{!"660"}
!1373 = !{!"661"}
!1374 = !{!"662"}
!1375 = !{!"663"}
!1376 = !{!"664"}
!1377 = !{!"665"}
!1378 = !{!"666"}
!1379 = !{!"667"}
!1380 = !{!"668"}
!1381 = !{!"669"}
!1382 = !{!"670"}
!1383 = !DILocation(line: 115, column: 3, scope: !1347)
!1384 = !{!"671"}
!1385 = !{!"672"}
!1386 = !{!"673"}
!1387 = !{!"674"}
!1388 = !{!"675"}
!1389 = !DILocation(line: 106, column: 5, scope: !1337)
!1390 = !{!"676"}
!1391 = !{!"677"}
!1392 = !{!"678"}
!1393 = !{!"679"}
!1394 = !{!"680"}
!1395 = !{!"681"}
!1396 = !DILocation(line: 116, column: 27, scope: !1337)
!1397 = !{!"682"}
!1398 = !DILocation(line: 116, column: 15, scope: !1337)
!1399 = !{!"683"}
!1400 = !DILocation(line: 116, column: 49, scope: !1337)
!1401 = !{!"684"}
!1402 = !DILocation(line: 116, column: 55, scope: !1337)
!1403 = !{!"685"}
!1404 = !DILocation(line: 116, column: 33, scope: !1337)
!1405 = !{!"686"}
!1406 = !DILocalVariable(name: "bits", scope: !1337, file: !29, line: 101, type: !6)
!1407 = !{!"687"}
!1408 = !DILocation(line: 117, column: 11, scope: !1337)
!1409 = !{!"688"}
!1410 = !{!"689"}
!1411 = !DILocalVariable(name: "i", scope: !1337, file: !29, line: 100, type: !488)
!1412 = !{!"690"}
!1413 = !DILocation(line: 122, column: 8, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1337, file: !29, line: 122, column: 3)
!1415 = !{!"691"}
!1416 = !DILocation(line: 0, scope: !1414)
!1417 = !{!"692"}
!1418 = !{!"693"}
!1419 = !DILocation(line: 122, column: 17, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1414, file: !29, line: 122, column: 3)
!1421 = !{!"694"}
!1422 = !DILocation(line: 122, column: 3, scope: !1414)
!1423 = !{!"695"}
!1424 = !DILocation(line: 123, column: 4, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !29, line: 122, column: 28)
!1426 = !{!"696"}
!1427 = !DILocation(line: 124, column: 4, scope: !1425)
!1428 = !{!"697"}
!1429 = !{!"698"}
!1430 = !{!"699"}
!1431 = !DILocation(line: 125, column: 3, scope: !1425)
!1432 = !{!"700"}
!1433 = !DILocation(line: 122, column: 24, scope: !1420)
!1434 = !{!"701"}
!1435 = !{!"702"}
!1436 = !DILocation(line: 122, column: 3, scope: !1420)
!1437 = distinct !{!1437, !1422, !1438, !131}
!1438 = !DILocation(line: 125, column: 3, scope: !1414)
!1439 = !{!"703"}
!1440 = !DILocation(line: 133, column: 15, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1337, file: !29, line: 133, column: 7)
!1442 = !{!"704"}
!1443 = !DILocation(line: 133, column: 7, scope: !1337)
!1444 = !{!"705"}
!1445 = !DILocation(line: 134, column: 20, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !29, line: 133, column: 20)
!1447 = !{!"706"}
!1448 = !{!"707"}
!1449 = !DILocation(line: 134, column: 4, scope: !1446)
!1450 = !{!"708"}
!1451 = !DILocation(line: 135, column: 14, scope: !1446)
!1452 = !{!"709"}
!1453 = !{!"710"}
!1454 = !{!"711"}
!1455 = !DILocation(line: 136, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1446, file: !29, line: 136, column: 4)
!1457 = !{!"712"}
!1458 = !DILocation(line: 0, scope: !1446)
!1459 = !{!"713"}
!1460 = !DILocation(line: 0, scope: !1456)
!1461 = !{!"714"}
!1462 = !{!"715"}
!1463 = !{!"716"}
!1464 = !DILocation(line: 136, column: 33, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1456, file: !29, line: 136, column: 4)
!1466 = !{!"717"}
!1467 = !DILocation(line: 136, column: 20, scope: !1465)
!1468 = !{!"718"}
!1469 = !DILocation(line: 136, column: 18, scope: !1465)
!1470 = !{!"719"}
!1471 = !DILocation(line: 136, column: 4, scope: !1456)
!1472 = !{!"720"}
!1473 = !DILocation(line: 139, column: 16, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1465, file: !29, line: 136, column: 46)
!1475 = !{!"721"}
!1476 = !DILocation(line: 139, column: 13, scope: !1474)
!1477 = !{!"722"}
!1478 = !DILocation(line: 139, column: 12, scope: !1474)
!1479 = !{!"723"}
!1480 = !DILocalVariable(name: "mask", scope: !1474, file: !29, line: 137, type: !6)
!1481 = !DILocation(line: 0, scope: !1474)
!1482 = !{!"724"}
!1483 = !DILocalVariable(name: "v", scope: !1137, file: !29, line: 35, type: !34)
!1484 = !{!"725"}
!1485 = !DILocation(line: 140, column: 10, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1474, file: !29, line: 140, column: 5)
!1487 = !{!"726"}
!1488 = !DILocation(line: 0, scope: !1486)
!1489 = !{!"727"}
!1490 = !{!"728"}
!1491 = !DILocation(line: 140, column: 19, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1486, file: !29, line: 140, column: 5)
!1493 = !{!"729"}
!1494 = !DILocation(line: 140, column: 5, scope: !1486)
!1495 = !{!"730"}
!1496 = !DILocation(line: 141, column: 22, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !29, line: 140, column: 34)
!1498 = !{!"731"}
!1499 = !{!"732"}
!1500 = !DILocation(line: 141, column: 20, scope: !1497)
!1501 = !{!"733"}
!1502 = !DILocation(line: 141, column: 6, scope: !1497)
!1503 = !{!"734"}
!1504 = !DILocation(line: 141, column: 12, scope: !1497)
!1505 = !{!"735"}
!1506 = !{!"736"}
!1507 = !{!"737"}
!1508 = !DILocation(line: 142, column: 5, scope: !1497)
!1509 = !{!"738"}
!1510 = !DILocation(line: 140, column: 30, scope: !1492)
!1511 = !{!"739"}
!1512 = !{!"740"}
!1513 = !DILocation(line: 140, column: 5, scope: !1492)
!1514 = distinct !{!1514, !1494, !1515, !131}
!1515 = !DILocation(line: 142, column: 5, scope: !1486)
!1516 = !{!"741"}
!1517 = !DILocation(line: 143, column: 10, scope: !1474)
!1518 = !{!"742"}
!1519 = !{!"743"}
!1520 = !DILocation(line: 144, column: 4, scope: !1474)
!1521 = !{!"744"}
!1522 = !DILocation(line: 136, column: 42, scope: !1465)
!1523 = !{!"745"}
!1524 = !{!"746"}
!1525 = !DILocation(line: 136, column: 4, scope: !1465)
!1526 = distinct !{!1526, !1471, !1527, !131}
!1527 = !DILocation(line: 144, column: 4, scope: !1456)
!1528 = !{!"747"}
!1529 = !DILocation(line: 145, column: 3, scope: !1446)
!1530 = !{!"748"}
!1531 = !DILocation(line: 151, column: 3, scope: !1337)
!1532 = !{!"749"}
!1533 = !DILocation(line: 152, column: 9, scope: !1337)
!1534 = !{!"750"}
!1535 = !DILocation(line: 152, column: 23, scope: !1337)
!1536 = !{!"751"}
!1537 = !DILocation(line: 152, column: 26, scope: !1337)
!1538 = !{!"752"}
!1539 = !DILocation(line: 152, column: 3, scope: !1337)
!1540 = !{!"753"}
!1541 = distinct !{!1541, !1317, !1542, !131}
!1542 = !DILocation(line: 153, column: 2, scope: !1137)
!1543 = !{!"754"}
!1544 = !DILocation(line: 158, column: 2, scope: !1137)
!1545 = !{!"755"}
!1546 = !DILocation(line: 159, column: 2, scope: !1137)
!1547 = !{!"756"}
!1548 = !{!"757"}
!1549 = !DILocation(line: 160, column: 1, scope: !1137)
!1550 = !{!"758"}
!1551 = distinct !DISubprogram(name: "br_i31_zero", scope: !136, file: !136, line: 1383, type: !764, scopeLine: 1384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1552 = !DILocalVariable(name: "x", arg: 1, scope: !1551, file: !136, line: 1383, type: !159)
!1553 = !DILocation(line: 0, scope: !1551)
!1554 = !{!"759"}
!1555 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1551, file: !136, line: 1383, type: !6)
!1556 = !{!"760"}
!1557 = !DILocation(line: 1385, column: 5, scope: !1551)
!1558 = !{!"761"}
!1559 = !{!"762"}
!1560 = !DILocation(line: 1385, column: 8, scope: !1551)
!1561 = !{!"763"}
!1562 = !DILocation(line: 1386, column: 2, scope: !1551)
!1563 = !{!"764"}
!1564 = !DILocation(line: 1386, column: 25, scope: !1551)
!1565 = !{!"765"}
!1566 = !DILocation(line: 1386, column: 31, scope: !1551)
!1567 = !{!"766"}
!1568 = !DILocation(line: 1386, column: 15, scope: !1551)
!1569 = !{!"767"}
!1570 = !DILocation(line: 1386, column: 37, scope: !1551)
!1571 = !{!"768"}
!1572 = !{!"769"}
!1573 = !DILocation(line: 1387, column: 1, scope: !1551)
!1574 = !{!"770"}
!1575 = distinct !DISubprogram(name: "EQ", scope: !136, file: !136, line: 779, type: !312, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1576 = !DILocalVariable(name: "x", arg: 1, scope: !1575, file: !136, line: 779, type: !6)
!1577 = !DILocation(line: 0, scope: !1575)
!1578 = !{!"771"}
!1579 = !DILocalVariable(name: "y", arg: 2, scope: !1575, file: !136, line: 779, type: !6)
!1580 = !{!"772"}
!1581 = !DILocation(line: 783, column: 8, scope: !1575)
!1582 = !{!"773"}
!1583 = !DILocalVariable(name: "q", scope: !1575, file: !136, line: 781, type: !6)
!1584 = !{!"774"}
!1585 = !DILocation(line: 784, column: 18, scope: !1575)
!1586 = !{!"775"}
!1587 = !DILocation(line: 784, column: 16, scope: !1575)
!1588 = !{!"776"}
!1589 = !DILocation(line: 784, column: 22, scope: !1575)
!1590 = !{!"777"}
!1591 = !DILocation(line: 784, column: 9, scope: !1575)
!1592 = !{!"778"}
!1593 = !DILocation(line: 784, column: 2, scope: !1575)
!1594 = !{!"779"}
!1595 = distinct !DISubprogram(name: "NEQ", scope: !136, file: !136, line: 791, type: !312, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1596 = !DILocalVariable(name: "x", arg: 1, scope: !1595, file: !136, line: 791, type: !6)
!1597 = !DILocation(line: 0, scope: !1595)
!1598 = !{!"780"}
!1599 = !DILocalVariable(name: "y", arg: 2, scope: !1595, file: !136, line: 791, type: !6)
!1600 = !{!"781"}
!1601 = !DILocation(line: 795, column: 8, scope: !1595)
!1602 = !{!"782"}
!1603 = !DILocalVariable(name: "q", scope: !1595, file: !136, line: 793, type: !6)
!1604 = !{!"783"}
!1605 = !DILocation(line: 796, column: 14, scope: !1595)
!1606 = !{!"784"}
!1607 = !DILocation(line: 796, column: 12, scope: !1595)
!1608 = !{!"785"}
!1609 = !DILocation(line: 796, column: 18, scope: !1595)
!1610 = !{!"786"}
!1611 = !DILocation(line: 796, column: 2, scope: !1595)
!1612 = !{!"787"}
!1613 = distinct !DISubprogram(name: "NOT", scope: !136, file: !136, line: 761, type: !352, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1614 = !DILocalVariable(name: "ctl", arg: 1, scope: !1613, file: !136, line: 761, type: !6)
!1615 = !DILocation(line: 0, scope: !1613)
!1616 = !{!"788"}
!1617 = !DILocation(line: 763, column: 13, scope: !1613)
!1618 = !{!"789"}
!1619 = !DILocation(line: 763, column: 2, scope: !1613)
!1620 = !{!"790"}
!1621 = distinct !DISubprogram(name: "br_i31_montymul", scope: !32, file: !32, line: 29, type: !1622, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !31, retainedNodes: !2)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !159, !160, !160, !160, !6}
!1624 = !DILocalVariable(name: "d", arg: 1, scope: !1621, file: !32, line: 29, type: !159)
!1625 = !DILocation(line: 0, scope: !1621)
!1626 = !{!"791"}
!1627 = !DILocalVariable(name: "x", arg: 2, scope: !1621, file: !32, line: 29, type: !160)
!1628 = !{!"792"}
!1629 = !DILocalVariable(name: "y", arg: 3, scope: !1621, file: !32, line: 29, type: !160)
!1630 = !{!"793"}
!1631 = !DILocalVariable(name: "m", arg: 4, scope: !1621, file: !32, line: 30, type: !160)
!1632 = !{!"794"}
!1633 = !DILocalVariable(name: "m0i", arg: 5, scope: !1621, file: !32, line: 30, type: !6)
!1634 = !{!"795"}
!1635 = !DILocation(line: 46, column: 9, scope: !1621)
!1636 = !{!"796"}
!1637 = !{!"797"}
!1638 = !DILocation(line: 46, column: 14, scope: !1621)
!1639 = !{!"798"}
!1640 = !DILocation(line: 46, column: 20, scope: !1621)
!1641 = !{!"799"}
!1642 = !DILocation(line: 46, column: 8, scope: !1621)
!1643 = !{!"800"}
!1644 = !DILocalVariable(name: "len", scope: !1621, file: !32, line: 43, type: !34)
!1645 = !{!"801"}
!1646 = !DILocation(line: 47, column: 13, scope: !1621)
!1647 = !{!"802"}
!1648 = !DILocalVariable(name: "len4", scope: !1621, file: !32, line: 43, type: !34)
!1649 = !{!"803"}
!1650 = !DILocation(line: 48, column: 17, scope: !1621)
!1651 = !{!"804"}
!1652 = !{!"805"}
!1653 = !DILocation(line: 48, column: 2, scope: !1621)
!1654 = !{!"806"}
!1655 = !DILocalVariable(name: "dh", scope: !1621, file: !32, line: 44, type: !6)
!1656 = !{!"807"}
!1657 = !DILocalVariable(name: "u", scope: !1621, file: !32, line: 43, type: !34)
!1658 = !{!"808"}
!1659 = !DILocation(line: 50, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1621, file: !32, line: 50, column: 2)
!1661 = !{!"809"}
!1662 = !DILocation(line: 0, scope: !1660)
!1663 = !{!"810"}
!1664 = !{!"811"}
!1665 = !{!"812"}
!1666 = !{!"813"}
!1667 = !DILocation(line: 50, column: 16, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1660, file: !32, line: 50, column: 2)
!1669 = !{!"814"}
!1670 = !DILocation(line: 50, column: 2, scope: !1660)
!1671 = !{!"815"}
!1672 = !DILocation(line: 72, column: 12, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !32, line: 50, column: 29)
!1674 = !{!"816"}
!1675 = !DILocation(line: 72, column: 8, scope: !1673)
!1676 = !{!"817"}
!1677 = !{!"818"}
!1678 = !DILocalVariable(name: "xu", scope: !1673, file: !32, line: 65, type: !6)
!1679 = !DILocation(line: 0, scope: !1673)
!1680 = !{!"819"}
!1681 = !DILocation(line: 73, column: 7, scope: !1673)
!1682 = !{!"820"}
!1683 = !{!"821"}
!1684 = !{!"822"}
!1685 = !{!"823"}
!1686 = !{!"824"}
!1687 = !{!"825"}
!1688 = !{!"826"}
!1689 = !{!"827"}
!1690 = !{!"828"}
!1691 = !{!"829"}
!1692 = !{!"830"}
!1693 = !{!"831"}
!1694 = !DILocalVariable(name: "f", scope: !1673, file: !32, line: 65, type: !6)
!1695 = !{!"832"}
!1696 = !DILocalVariable(name: "r", scope: !1673, file: !32, line: 67, type: !25)
!1697 = !{!"833"}
!1698 = !DILocalVariable(name: "v", scope: !1621, file: !32, line: 43, type: !34)
!1699 = !{!"834"}
!1700 = !DILocation(line: 76, column: 8, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1673, file: !32, line: 76, column: 3)
!1702 = !{!"835"}
!1703 = !DILocation(line: 0, scope: !1701)
!1704 = !{!"836"}
!1705 = !{!"837"}
!1706 = !{!"838"}
!1707 = !{!"839"}
!1708 = !DILocation(line: 76, column: 17, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1701, file: !32, line: 76, column: 3)
!1710 = !{!"840"}
!1711 = !DILocation(line: 76, column: 3, scope: !1701)
!1712 = !{!"841"}
!1713 = !DILocation(line: 79, column: 22, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !32, line: 76, column: 33)
!1715 = !{!"842"}
!1716 = !DILocation(line: 79, column: 18, scope: !1714)
!1717 = !{!"843"}
!1718 = !{!"844"}
!1719 = !DILocation(line: 79, column: 8, scope: !1714)
!1720 = !{!"845"}
!1721 = !DILocation(line: 79, column: 29, scope: !1714)
!1722 = !{!"846"}
!1723 = !{!"847"}
!1724 = !{!"848"}
!1725 = !{!"849"}
!1726 = !{!"850"}
!1727 = !{!"851"}
!1728 = !DILocation(line: 79, column: 27, scope: !1714)
!1729 = !{!"852"}
!1730 = !DILocation(line: 80, column: 7, scope: !1714)
!1731 = !{!"853"}
!1732 = !{!"854"}
!1733 = !{!"855"}
!1734 = !{!"856"}
!1735 = !{!"857"}
!1736 = !{!"858"}
!1737 = !DILocation(line: 80, column: 5, scope: !1714)
!1738 = !{!"859"}
!1739 = !DILocation(line: 80, column: 26, scope: !1714)
!1740 = !{!"860"}
!1741 = !DILocalVariable(name: "z", scope: !1714, file: !32, line: 77, type: !25)
!1742 = !DILocation(line: 0, scope: !1714)
!1743 = !{!"861"}
!1744 = !DILocation(line: 81, column: 10, scope: !1714)
!1745 = !{!"862"}
!1746 = !{!"863"}
!1747 = !DILocation(line: 82, column: 15, scope: !1714)
!1748 = !{!"864"}
!1749 = !DILocation(line: 82, column: 27, scope: !1714)
!1750 = !{!"865"}
!1751 = !DILocation(line: 82, column: 8, scope: !1714)
!1752 = !{!"866"}
!1753 = !DILocation(line: 82, column: 4, scope: !1714)
!1754 = !{!"867"}
!1755 = !DILocation(line: 82, column: 13, scope: !1714)
!1756 = !{!"868"}
!1757 = !DILocation(line: 83, column: 22, scope: !1714)
!1758 = !{!"869"}
!1759 = !DILocation(line: 83, column: 18, scope: !1714)
!1760 = !{!"870"}
!1761 = !{!"871"}
!1762 = !DILocation(line: 83, column: 8, scope: !1714)
!1763 = !{!"872"}
!1764 = !DILocation(line: 83, column: 29, scope: !1714)
!1765 = !{!"873"}
!1766 = !{!"874"}
!1767 = !{!"875"}
!1768 = !{!"876"}
!1769 = !{!"877"}
!1770 = !{!"878"}
!1771 = !DILocation(line: 83, column: 27, scope: !1714)
!1772 = !{!"879"}
!1773 = !DILocation(line: 84, column: 7, scope: !1714)
!1774 = !{!"880"}
!1775 = !{!"881"}
!1776 = !{!"882"}
!1777 = !{!"883"}
!1778 = !{!"884"}
!1779 = !{!"885"}
!1780 = !DILocation(line: 84, column: 5, scope: !1714)
!1781 = !{!"886"}
!1782 = !DILocation(line: 84, column: 26, scope: !1714)
!1783 = !{!"887"}
!1784 = !{!"888"}
!1785 = !DILocation(line: 85, column: 10, scope: !1714)
!1786 = !{!"889"}
!1787 = !{!"890"}
!1788 = !DILocation(line: 86, column: 15, scope: !1714)
!1789 = !{!"891"}
!1790 = !DILocation(line: 86, column: 27, scope: !1714)
!1791 = !{!"892"}
!1792 = !DILocation(line: 86, column: 8, scope: !1714)
!1793 = !{!"893"}
!1794 = !DILocation(line: 86, column: 4, scope: !1714)
!1795 = !{!"894"}
!1796 = !DILocation(line: 86, column: 13, scope: !1714)
!1797 = !{!"895"}
!1798 = !DILocation(line: 87, column: 22, scope: !1714)
!1799 = !{!"896"}
!1800 = !DILocation(line: 87, column: 18, scope: !1714)
!1801 = !{!"897"}
!1802 = !{!"898"}
!1803 = !DILocation(line: 87, column: 8, scope: !1714)
!1804 = !{!"899"}
!1805 = !DILocation(line: 87, column: 29, scope: !1714)
!1806 = !{!"900"}
!1807 = !{!"901"}
!1808 = !{!"902"}
!1809 = !{!"903"}
!1810 = !{!"904"}
!1811 = !{!"905"}
!1812 = !DILocation(line: 87, column: 27, scope: !1714)
!1813 = !{!"906"}
!1814 = !DILocation(line: 88, column: 7, scope: !1714)
!1815 = !{!"907"}
!1816 = !{!"908"}
!1817 = !{!"909"}
!1818 = !{!"910"}
!1819 = !{!"911"}
!1820 = !{!"912"}
!1821 = !DILocation(line: 88, column: 5, scope: !1714)
!1822 = !{!"913"}
!1823 = !DILocation(line: 88, column: 26, scope: !1714)
!1824 = !{!"914"}
!1825 = !{!"915"}
!1826 = !DILocation(line: 89, column: 10, scope: !1714)
!1827 = !{!"916"}
!1828 = !{!"917"}
!1829 = !DILocation(line: 90, column: 15, scope: !1714)
!1830 = !{!"918"}
!1831 = !DILocation(line: 90, column: 27, scope: !1714)
!1832 = !{!"919"}
!1833 = !DILocation(line: 90, column: 8, scope: !1714)
!1834 = !{!"920"}
!1835 = !DILocation(line: 90, column: 4, scope: !1714)
!1836 = !{!"921"}
!1837 = !DILocation(line: 90, column: 13, scope: !1714)
!1838 = !{!"922"}
!1839 = !DILocation(line: 91, column: 22, scope: !1714)
!1840 = !{!"923"}
!1841 = !DILocation(line: 91, column: 18, scope: !1714)
!1842 = !{!"924"}
!1843 = !{!"925"}
!1844 = !DILocation(line: 91, column: 8, scope: !1714)
!1845 = !{!"926"}
!1846 = !DILocation(line: 91, column: 29, scope: !1714)
!1847 = !{!"927"}
!1848 = !{!"928"}
!1849 = !{!"929"}
!1850 = !{!"930"}
!1851 = !{!"931"}
!1852 = !{!"932"}
!1853 = !DILocation(line: 91, column: 27, scope: !1714)
!1854 = !{!"933"}
!1855 = !DILocation(line: 92, column: 7, scope: !1714)
!1856 = !{!"934"}
!1857 = !{!"935"}
!1858 = !{!"936"}
!1859 = !{!"937"}
!1860 = !{!"938"}
!1861 = !{!"939"}
!1862 = !DILocation(line: 92, column: 5, scope: !1714)
!1863 = !{!"940"}
!1864 = !DILocation(line: 92, column: 26, scope: !1714)
!1865 = !{!"941"}
!1866 = !{!"942"}
!1867 = !DILocation(line: 93, column: 10, scope: !1714)
!1868 = !{!"943"}
!1869 = !{!"944"}
!1870 = !DILocation(line: 94, column: 15, scope: !1714)
!1871 = !{!"945"}
!1872 = !DILocation(line: 94, column: 27, scope: !1714)
!1873 = !{!"946"}
!1874 = !DILocation(line: 94, column: 8, scope: !1714)
!1875 = !{!"947"}
!1876 = !DILocation(line: 94, column: 4, scope: !1714)
!1877 = !{!"948"}
!1878 = !DILocation(line: 94, column: 13, scope: !1714)
!1879 = !{!"949"}
!1880 = !DILocation(line: 95, column: 3, scope: !1714)
!1881 = !{!"950"}
!1882 = !DILocation(line: 76, column: 27, scope: !1709)
!1883 = !{!"951"}
!1884 = !{!"952"}
!1885 = !DILocation(line: 76, column: 3, scope: !1709)
!1886 = distinct !{!1886, !1711, !1887, !131}
!1887 = !DILocation(line: 95, column: 3, scope: !1701)
!1888 = !{!"953"}
!1889 = !DILocation(line: 96, column: 3, scope: !1673)
!1890 = !{!"954"}
!1891 = !{!"955"}
!1892 = !{!"956"}
!1893 = !{!"957"}
!1894 = !{!"958"}
!1895 = !DILocation(line: 96, column: 12, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !32, line: 96, column: 3)
!1897 = distinct !DILexicalBlock(scope: !1673, file: !32, line: 96, column: 3)
!1898 = !{!"959"}
!1899 = !DILocation(line: 96, column: 3, scope: !1897)
!1900 = !{!"960"}
!1901 = !DILocation(line: 99, column: 22, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1896, file: !32, line: 96, column: 25)
!1903 = !{!"961"}
!1904 = !DILocation(line: 99, column: 18, scope: !1902)
!1905 = !{!"962"}
!1906 = !{!"963"}
!1907 = !DILocation(line: 99, column: 8, scope: !1902)
!1908 = !{!"964"}
!1909 = !DILocation(line: 99, column: 29, scope: !1902)
!1910 = !{!"965"}
!1911 = !{!"966"}
!1912 = !{!"967"}
!1913 = !{!"968"}
!1914 = !{!"969"}
!1915 = !{!"970"}
!1916 = !DILocation(line: 99, column: 27, scope: !1902)
!1917 = !{!"971"}
!1918 = !DILocation(line: 100, column: 7, scope: !1902)
!1919 = !{!"972"}
!1920 = !{!"973"}
!1921 = !{!"974"}
!1922 = !{!"975"}
!1923 = !{!"976"}
!1924 = !{!"977"}
!1925 = !DILocation(line: 100, column: 5, scope: !1902)
!1926 = !{!"978"}
!1927 = !DILocation(line: 100, column: 26, scope: !1902)
!1928 = !{!"979"}
!1929 = !DILocalVariable(name: "z", scope: !1902, file: !32, line: 97, type: !25)
!1930 = !DILocation(line: 0, scope: !1902)
!1931 = !{!"980"}
!1932 = !DILocation(line: 101, column: 10, scope: !1902)
!1933 = !{!"981"}
!1934 = !{!"982"}
!1935 = !DILocation(line: 102, column: 11, scope: !1902)
!1936 = !{!"983"}
!1937 = !DILocation(line: 102, column: 23, scope: !1902)
!1938 = !{!"984"}
!1939 = !DILocation(line: 102, column: 4, scope: !1902)
!1940 = !{!"985"}
!1941 = !DILocation(line: 102, column: 9, scope: !1902)
!1942 = !{!"986"}
!1943 = !DILocation(line: 103, column: 3, scope: !1902)
!1944 = !{!"987"}
!1945 = !DILocation(line: 96, column: 21, scope: !1896)
!1946 = !{!"988"}
!1947 = !{!"989"}
!1948 = !DILocation(line: 96, column: 3, scope: !1896)
!1949 = distinct !{!1949, !1899, !1950, !131}
!1950 = !DILocation(line: 103, column: 3, scope: !1897)
!1951 = !{!"990"}
!1952 = !DILocation(line: 110, column: 6, scope: !1673)
!1953 = !{!"991"}
!1954 = !{!"992"}
!1955 = !{!"993"}
!1956 = !{!"994"}
!1957 = !DILocation(line: 111, column: 15, scope: !1673)
!1958 = !{!"995"}
!1959 = !DILocation(line: 111, column: 3, scope: !1673)
!1960 = !{!"996"}
!1961 = !DILocation(line: 111, column: 10, scope: !1673)
!1962 = !{!"997"}
!1963 = !DILocation(line: 112, column: 6, scope: !1673)
!1964 = !{!"998"}
!1965 = !{!"999"}
!1966 = !DILocation(line: 113, column: 2, scope: !1673)
!1967 = !DILocation(line: 50, column: 25, scope: !1668)
!1968 = !{!"1001"}
!1969 = !{!"1002"}
!1970 = !DILocation(line: 50, column: 2, scope: !1668)
!1971 = distinct !{!1971, !1670, !1972, !131}
!1972 = !DILocation(line: 113, column: 2, scope: !1660)
!1973 = !{!"1003"}
!1974 = !DILocation(line: 120, column: 9, scope: !1621)
!1975 = !{!"1004"}
!1976 = !{!"1005"}
!1977 = !DILocation(line: 120, column: 2, scope: !1621)
!1978 = !{!"1006"}
!1979 = !DILocation(line: 120, column: 7, scope: !1621)
!1980 = !{!"1007"}
!1981 = !DILocation(line: 126, column: 19, scope: !1621)
!1982 = !{!"1008"}
!1983 = !DILocation(line: 126, column: 36, scope: !1621)
!1984 = !{!"1009"}
!1985 = !DILocation(line: 126, column: 32, scope: !1621)
!1986 = !DILocation(line: 126, column: 30, scope: !1621)
!1987 = !{!"1011"}
!1988 = !DILocation(line: 126, column: 2, scope: !1621)
!1989 = !{!"1012"}
!1990 = !DILocation(line: 127, column: 1, scope: !1621)
!1991 = !{!"1013"}
!1992 = distinct !DISubprogram(name: "br_i31_zero", scope: !136, file: !136, line: 1383, type: !764, scopeLine: 1384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !31, retainedNodes: !2)
!1993 = !DILocalVariable(name: "x", arg: 1, scope: !1992, file: !136, line: 1383, type: !159)
!1994 = !DILocation(line: 0, scope: !1992)
!1995 = !{!"1014"}
!1996 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1992, file: !136, line: 1383, type: !6)
!1997 = !{!"1015"}
!1998 = !DILocation(line: 1385, column: 5, scope: !1992)
!1999 = !{!"1016"}
!2000 = !{!"1017"}
!2001 = !DILocation(line: 1385, column: 8, scope: !1992)
!2002 = !{!"1018"}
!2003 = !DILocation(line: 1386, column: 2, scope: !1992)
!2004 = !{!"1019"}
!2005 = !DILocation(line: 1386, column: 25, scope: !1992)
!2006 = !{!"1020"}
!2007 = !DILocation(line: 1386, column: 31, scope: !1992)
!2008 = !{!"1021"}
!2009 = !DILocation(line: 1386, column: 15, scope: !1992)
!2010 = !{!"1022"}
!2011 = !DILocation(line: 1386, column: 37, scope: !1992)
!2012 = !{!"1023"}
!2013 = !{!"1024"}
!2014 = !DILocation(line: 1387, column: 1, scope: !1992)
!2015 = !{!"1025"}
!2016 = distinct !DISubprogram(name: "NEQ", scope: !136, file: !136, line: 791, type: !312, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !31, retainedNodes: !2)
!2017 = !DILocalVariable(name: "x", arg: 1, scope: !2016, file: !136, line: 791, type: !6)
!2018 = !DILocation(line: 0, scope: !2016)
!2019 = !{!"1026"}
!2020 = !DILocalVariable(name: "y", arg: 2, scope: !2016, file: !136, line: 791, type: !6)
!2021 = !{!"1027"}
!2022 = !DILocation(line: 795, column: 8, scope: !2016)
!2023 = !{!"1028"}
!2024 = !DILocalVariable(name: "q", scope: !2016, file: !136, line: 793, type: !6)
!2025 = !{!"1029"}
!2026 = !DILocation(line: 796, column: 14, scope: !2016)
!2027 = !{!"1030"}
!2028 = !DILocation(line: 796, column: 12, scope: !2016)
!2029 = !{!"1031"}
!2030 = !DILocation(line: 796, column: 18, scope: !2016)
!2031 = !{!"1032"}
!2032 = !DILocation(line: 796, column: 2, scope: !2016)
!2033 = !{!"1033"}
!2034 = distinct !DISubprogram(name: "NOT", scope: !136, file: !136, line: 761, type: !352, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !31, retainedNodes: !2)
!2035 = !DILocalVariable(name: "ctl", arg: 1, scope: !2034, file: !136, line: 761, type: !6)
!2036 = !DILocation(line: 0, scope: !2034)
!2037 = !{!"1034"}
!2038 = !DILocation(line: 763, column: 13, scope: !2034)
!2039 = !{!"1035"}
!2040 = !DILocation(line: 763, column: 2, scope: !2034)
!2041 = !{!"1036"}
!2042 = distinct !DISubprogram(name: "br_i31_mulacc", scope: !37, file: !37, line: 29, type: !2043, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !2)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !159, !160, !160}
!2045 = !DILocalVariable(name: "d", arg: 1, scope: !2042, file: !37, line: 29, type: !159)
!2046 = !DILocation(line: 0, scope: !2042)
!2047 = !{!"1037"}
!2048 = !DILocalVariable(name: "a", arg: 2, scope: !2042, file: !37, line: 29, type: !160)
!2049 = !{!"1038"}
!2050 = !DILocalVariable(name: "b", arg: 3, scope: !2042, file: !37, line: 29, type: !160)
!2051 = !{!"1039"}
!2052 = !DILocation(line: 34, column: 10, scope: !2042)
!2053 = !{!"1040"}
!2054 = !{!"1041"}
!2055 = !DILocation(line: 34, column: 15, scope: !2042)
!2056 = !{!"1042"}
!2057 = !DILocation(line: 34, column: 21, scope: !2042)
!2058 = !{!"1043"}
!2059 = !DILocation(line: 34, column: 9, scope: !2042)
!2060 = !{!"1044"}
!2061 = !DILocalVariable(name: "alen", scope: !2042, file: !37, line: 31, type: !34)
!2062 = !{!"1045"}
!2063 = !DILocation(line: 35, column: 10, scope: !2042)
!2064 = !{!"1046"}
!2065 = !{!"1047"}
!2066 = !DILocation(line: 35, column: 15, scope: !2042)
!2067 = !{!"1048"}
!2068 = !DILocation(line: 35, column: 21, scope: !2042)
!2069 = !{!"1049"}
!2070 = !DILocation(line: 35, column: 9, scope: !2042)
!2071 = !{!"1050"}
!2072 = !DILocalVariable(name: "blen", scope: !2042, file: !37, line: 31, type: !34)
!2073 = !{!"1051"}
!2074 = !DILocation(line: 41, column: 8, scope: !2042)
!2075 = !{!"1052"}
!2076 = !{!"1053"}
!2077 = !DILocation(line: 41, column: 13, scope: !2042)
!2078 = !{!"1054"}
!2079 = !DILocation(line: 41, column: 22, scope: !2042)
!2080 = !{!"1055"}
!2081 = !{!"1056"}
!2082 = !DILocation(line: 41, column: 27, scope: !2042)
!2083 = !{!"1057"}
!2084 = !DILocation(line: 41, column: 19, scope: !2042)
!2085 = !{!"1058"}
!2086 = !DILocalVariable(name: "dl", scope: !2042, file: !37, line: 32, type: !6)
!2087 = !{!"1059"}
!2088 = !DILocation(line: 42, column: 8, scope: !2042)
!2089 = !{!"1060"}
!2090 = !{!"1061"}
!2091 = !DILocation(line: 42, column: 13, scope: !2042)
!2092 = !{!"1062"}
!2093 = !DILocation(line: 42, column: 22, scope: !2042)
!2094 = !{!"1063"}
!2095 = !{!"1064"}
!2096 = !DILocation(line: 42, column: 27, scope: !2042)
!2097 = !{!"1065"}
!2098 = !DILocation(line: 42, column: 19, scope: !2042)
!2099 = !{!"1066"}
!2100 = !DILocalVariable(name: "dh", scope: !2042, file: !37, line: 32, type: !6)
!2101 = !{!"1067"}
!2102 = !DILocation(line: 43, column: 13, scope: !2042)
!2103 = !{!"1068"}
!2104 = !DILocation(line: 43, column: 19, scope: !2042)
!2105 = !{!"1069"}
!2106 = !DILocation(line: 43, column: 42, scope: !2042)
!2107 = !{!"1070"}
!2108 = !DILocation(line: 43, column: 27, scope: !2042)
!2109 = !{!"1071"}
!2110 = !DILocation(line: 43, column: 48, scope: !2042)
!2111 = !{!"1072"}
!2112 = !DILocation(line: 43, column: 24, scope: !2042)
!2113 = !{!"1073"}
!2114 = !DILocation(line: 43, column: 2, scope: !2042)
!2115 = !{!"1074"}
!2116 = !DILocation(line: 43, column: 7, scope: !2042)
!2117 = !{!"1075"}
!2118 = !DILocalVariable(name: "u", scope: !2042, file: !37, line: 31, type: !34)
!2119 = !{!"1076"}
!2120 = !DILocation(line: 45, column: 7, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2042, file: !37, line: 45, column: 2)
!2122 = !{!"1077"}
!2123 = !DILocation(line: 0, scope: !2121)
!2124 = !{!"1078"}
!2125 = !{!"1079"}
!2126 = !DILocation(line: 45, column: 16, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2121, file: !37, line: 45, column: 2)
!2128 = !{!"1080"}
!2129 = !DILocation(line: 45, column: 2, scope: !2121)
!2130 = !{!"1081"}
!2131 = !DILocation(line: 63, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2127, file: !37, line: 45, column: 30)
!2133 = !{!"1082"}
!2134 = !DILocation(line: 63, column: 7, scope: !2132)
!2135 = !{!"1083"}
!2136 = !{!"1084"}
!2137 = !DILocalVariable(name: "f", scope: !2132, file: !37, line: 46, type: !6)
!2138 = !DILocation(line: 0, scope: !2132)
!2139 = !{!"1085"}
!2140 = !DILocalVariable(name: "cc", scope: !2132, file: !37, line: 58, type: !25)
!2141 = !{!"1086"}
!2142 = !DILocalVariable(name: "v", scope: !2132, file: !37, line: 47, type: !34)
!2143 = !{!"1087"}
!2144 = !DILocation(line: 65, column: 8, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2132, file: !37, line: 65, column: 3)
!2146 = !{!"1088"}
!2147 = !DILocation(line: 0, scope: !2145)
!2148 = !{!"1089"}
!2149 = !{!"1090"}
!2150 = !{!"1091"}
!2151 = !{!"1092"}
!2152 = !DILocation(line: 65, column: 17, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2145, file: !37, line: 65, column: 3)
!2154 = !{!"1093"}
!2155 = !DILocation(line: 65, column: 3, scope: !2145)
!2156 = !{!"1094"}
!2157 = !DILocation(line: 68, column: 22, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !37, line: 65, column: 31)
!2159 = !{!"1095"}
!2160 = !DILocation(line: 68, column: 26, scope: !2158)
!2161 = !{!"1096"}
!2162 = !DILocation(line: 68, column: 18, scope: !2158)
!2163 = !{!"1097"}
!2164 = !{!"1098"}
!2165 = !DILocation(line: 68, column: 8, scope: !2158)
!2166 = !{!"1099"}
!2167 = !DILocation(line: 68, column: 33, scope: !2158)
!2168 = !{!"1100"}
!2169 = !{!"1101"}
!2170 = !{!"1102"}
!2171 = !{!"1103"}
!2172 = !{!"1104"}
!2173 = !{!"1105"}
!2174 = !DILocation(line: 68, column: 31, scope: !2158)
!2175 = !{!"1106"}
!2176 = !DILocation(line: 68, column: 52, scope: !2158)
!2177 = !{!"1107"}
!2178 = !DILocalVariable(name: "z", scope: !2158, file: !37, line: 66, type: !25)
!2179 = !DILocation(line: 0, scope: !2158)
!2180 = !{!"1108"}
!2181 = !DILocation(line: 69, column: 11, scope: !2158)
!2182 = !{!"1109"}
!2183 = !{!"1110"}
!2184 = !DILocation(line: 70, column: 19, scope: !2158)
!2185 = !{!"1111"}
!2186 = !DILocation(line: 70, column: 31, scope: !2158)
!2187 = !{!"1112"}
!2188 = !DILocation(line: 70, column: 8, scope: !2158)
!2189 = !{!"1113"}
!2190 = !DILocation(line: 70, column: 12, scope: !2158)
!2191 = !{!"1114"}
!2192 = !DILocation(line: 70, column: 4, scope: !2158)
!2193 = !{!"1115"}
!2194 = !DILocation(line: 70, column: 17, scope: !2158)
!2195 = !{!"1116"}
!2196 = !DILocation(line: 71, column: 3, scope: !2158)
!2197 = !{!"1117"}
!2198 = !DILocation(line: 65, column: 27, scope: !2153)
!2199 = !{!"1118"}
!2200 = !{!"1119"}
!2201 = !DILocation(line: 65, column: 3, scope: !2153)
!2202 = distinct !{!2202, !2155, !2203, !131}
!2203 = !DILocation(line: 71, column: 3, scope: !2145)
!2204 = !{!"1120"}
!2205 = !DILocation(line: 72, column: 21, scope: !2132)
!2206 = !{!"1121"}
!2207 = !DILocation(line: 72, column: 7, scope: !2132)
!2208 = !{!"1122"}
!2209 = !DILocation(line: 72, column: 11, scope: !2132)
!2210 = !{!"1123"}
!2211 = !DILocation(line: 72, column: 3, scope: !2132)
!2212 = !{!"1124"}
!2213 = !DILocation(line: 72, column: 19, scope: !2132)
!2214 = !{!"1125"}
!2215 = !DILocation(line: 73, column: 2, scope: !2132)
!2216 = !{!"1126"}
!2217 = !DILocation(line: 45, column: 26, scope: !2127)
!2218 = !{!"1127"}
!2219 = !{!"1128"}
!2220 = !DILocation(line: 45, column: 2, scope: !2127)
!2221 = distinct !{!2221, !2129, !2222, !131}
!2222 = !DILocation(line: 73, column: 2, scope: !2121)
!2223 = !{!"1129"}
!2224 = !DILocation(line: 74, column: 1, scope: !2042)
!2225 = !{!"1130"}
!2226 = distinct !DISubprogram(name: "br_i31_muladd_small", scope: !39, file: !39, line: 29, type: !2227, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !2)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !159, !6, !160}
!2229 = !DILocalVariable(name: "x", arg: 1, scope: !2226, file: !39, line: 29, type: !159)
!2230 = !DILocation(line: 0, scope: !2226)
!2231 = !{!"1131"}
!2232 = !DILocalVariable(name: "z", arg: 2, scope: !2226, file: !39, line: 29, type: !6)
!2233 = !{!"1132"}
!2234 = !DILocalVariable(name: "m", arg: 3, scope: !2226, file: !39, line: 29, type: !160)
!2235 = !{!"1133"}
!2236 = !DILocation(line: 42, column: 13, scope: !2226)
!2237 = !{!"1134"}
!2238 = !{!"1135"}
!2239 = !DILocalVariable(name: "m_bitlen", scope: !2226, file: !39, line: 31, type: !6)
!2240 = !{!"1136"}
!2241 = !DILocation(line: 43, column: 15, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2226, file: !39, line: 43, column: 6)
!2243 = !{!"1137"}
!2244 = !DILocation(line: 43, column: 6, scope: !2226)
!2245 = !{!"1138"}
!2246 = !DILocation(line: 44, column: 3, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2242, file: !39, line: 43, column: 21)
!2248 = !{!"1139"}
!2249 = !DILocation(line: 46, column: 15, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2226, file: !39, line: 46, column: 6)
!2251 = !{!"1140"}
!2252 = !DILocation(line: 46, column: 6, scope: !2226)
!2253 = !{!"1141"}
!2254 = !DILocation(line: 49, column: 8, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2250, file: !39, line: 46, column: 22)
!2256 = !{!"1142"}
!2257 = !{!"1143"}
!2258 = !DILocation(line: 49, column: 13, scope: !2255)
!2259 = !{!"1144"}
!2260 = !DILocalVariable(name: "hi", scope: !2226, file: !39, line: 34, type: !6)
!2261 = !{!"1145"}
!2262 = !DILocation(line: 50, column: 9, scope: !2255)
!2263 = !{!"1146"}
!2264 = !{!"1147"}
!2265 = !DILocation(line: 50, column: 14, scope: !2255)
!2266 = !{!"1148"}
!2267 = !DILocation(line: 50, column: 21, scope: !2255)
!2268 = !{!"1149"}
!2269 = !DILocalVariable(name: "lo", scope: !2255, file: !39, line: 47, type: !6)
!2270 = !DILocation(line: 0, scope: !2255)
!2271 = !{!"1150"}
!2272 = !DILocation(line: 51, column: 25, scope: !2255)
!2273 = !{!"1151"}
!2274 = !{!"1152"}
!2275 = !DILocation(line: 51, column: 10, scope: !2255)
!2276 = !{!"1153"}
!2277 = !DILocation(line: 51, column: 3, scope: !2255)
!2278 = !{!"1154"}
!2279 = !DILocation(line: 51, column: 8, scope: !2255)
!2280 = !{!"1155"}
!2281 = !DILocation(line: 52, column: 3, scope: !2255)
!2282 = !{!"1156"}
!2283 = !DILocation(line: 54, column: 19, scope: !2226)
!2284 = !{!"1157"}
!2285 = !DILocation(line: 54, column: 25, scope: !2226)
!2286 = !{!"1158"}
!2287 = !DILocation(line: 54, column: 9, scope: !2226)
!2288 = !{!"1159"}
!2289 = !DILocalVariable(name: "mlen", scope: !2226, file: !39, line: 33, type: !34)
!2290 = !{!"1160"}
!2291 = !DILocation(line: 55, column: 28, scope: !2226)
!2292 = !{!"1161"}
!2293 = !DILocalVariable(name: "mblr", scope: !2226, file: !39, line: 32, type: !10)
!2294 = !{!"1162"}
!2295 = !DILocation(line: 83, column: 7, scope: !2226)
!2296 = !{!"1163"}
!2297 = !{!"1164"}
!2298 = !{!"1165"}
!2299 = !DILocation(line: 84, column: 11, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2226, file: !39, line: 84, column: 6)
!2301 = !{!"1166"}
!2302 = !DILocation(line: 84, column: 6, scope: !2226)
!2303 = !{!"1167"}
!2304 = !DILocation(line: 85, column: 8, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !39, line: 84, column: 17)
!2306 = !{!"1168"}
!2307 = !{!"1169"}
!2308 = !DILocalVariable(name: "a0", scope: !2226, file: !39, line: 34, type: !6)
!2309 = !{!"1170"}
!2310 = !DILocation(line: 86, column: 13, scope: !2305)
!2311 = !{!"1171"}
!2312 = !DILocation(line: 86, column: 3, scope: !2305)
!2313 = !{!"1172"}
!2314 = !DILocation(line: 86, column: 20, scope: !2305)
!2315 = !{!"1173"}
!2316 = !{!"1174"}
!2317 = !DILocation(line: 86, column: 31, scope: !2305)
!2318 = !{!"1175"}
!2319 = !DILocation(line: 86, column: 36, scope: !2305)
!2320 = !{!"1176"}
!2321 = !{!"1177"}
!2322 = !DILocation(line: 87, column: 3, scope: !2305)
!2323 = !{!"1178"}
!2324 = !DILocation(line: 87, column: 8, scope: !2305)
!2325 = !{!"1179"}
!2326 = !DILocation(line: 88, column: 8, scope: !2305)
!2327 = !{!"1180"}
!2328 = !{!"1181"}
!2329 = !DILocalVariable(name: "a1", scope: !2226, file: !39, line: 34, type: !6)
!2330 = !{!"1182"}
!2331 = !DILocation(line: 89, column: 8, scope: !2305)
!2332 = !{!"1183"}
!2333 = !{!"1184"}
!2334 = !DILocalVariable(name: "b0", scope: !2226, file: !39, line: 34, type: !6)
!2335 = !{!"1185"}
!2336 = !DILocation(line: 90, column: 2, scope: !2305)
!2337 = !{!"1186"}
!2338 = !DILocation(line: 91, column: 10, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2300, file: !39, line: 90, column: 9)
!2340 = !{!"1187"}
!2341 = !{!"1188"}
!2342 = !DILocation(line: 91, column: 25, scope: !2339)
!2343 = !{!"1189"}
!2344 = !DILocation(line: 91, column: 18, scope: !2339)
!2345 = !{!"1190"}
!2346 = !DILocation(line: 91, column: 44, scope: !2339)
!2347 = !{!"1191"}
!2348 = !DILocation(line: 91, column: 37, scope: !2339)
!2349 = !{!"1192"}
!2350 = !{!"1193"}
!2351 = !DILocation(line: 91, column: 49, scope: !2339)
!2352 = !{!"1194"}
!2353 = !DILocation(line: 91, column: 34, scope: !2339)
!2354 = !{!"1195"}
!2355 = !DILocation(line: 92, column: 4, scope: !2339)
!2356 = !{!"1196"}
!2357 = !{!"1197"}
!2358 = !DILocation(line: 93, column: 13, scope: !2339)
!2359 = !{!"1198"}
!2360 = !DILocation(line: 93, column: 3, scope: !2339)
!2361 = !{!"1199"}
!2362 = !DILocation(line: 93, column: 20, scope: !2339)
!2363 = !{!"1200"}
!2364 = !{!"1201"}
!2365 = !DILocation(line: 93, column: 31, scope: !2339)
!2366 = !{!"1202"}
!2367 = !DILocation(line: 93, column: 36, scope: !2339)
!2368 = !{!"1203"}
!2369 = !{!"1204"}
!2370 = !DILocation(line: 94, column: 3, scope: !2339)
!2371 = !{!"1205"}
!2372 = !DILocation(line: 94, column: 8, scope: !2339)
!2373 = !{!"1206"}
!2374 = !DILocation(line: 95, column: 10, scope: !2339)
!2375 = !{!"1207"}
!2376 = !{!"1208"}
!2377 = !DILocation(line: 95, column: 25, scope: !2339)
!2378 = !{!"1209"}
!2379 = !DILocation(line: 95, column: 18, scope: !2339)
!2380 = !{!"1210"}
!2381 = !DILocation(line: 95, column: 44, scope: !2339)
!2382 = !{!"1211"}
!2383 = !DILocation(line: 95, column: 37, scope: !2339)
!2384 = !{!"1212"}
!2385 = !{!"1213"}
!2386 = !DILocation(line: 95, column: 49, scope: !2339)
!2387 = !{!"1214"}
!2388 = !DILocation(line: 95, column: 34, scope: !2339)
!2389 = !{!"1215"}
!2390 = !DILocation(line: 96, column: 4, scope: !2339)
!2391 = !{!"1216"}
!2392 = !{!"1217"}
!2393 = !DILocation(line: 97, column: 10, scope: !2339)
!2394 = !{!"1218"}
!2395 = !{!"1219"}
!2396 = !DILocation(line: 97, column: 25, scope: !2339)
!2397 = !{!"1220"}
!2398 = !DILocation(line: 97, column: 18, scope: !2339)
!2399 = !{!"1221"}
!2400 = !DILocation(line: 97, column: 44, scope: !2339)
!2401 = !{!"1222"}
!2402 = !DILocation(line: 97, column: 37, scope: !2339)
!2403 = !{!"1223"}
!2404 = !{!"1224"}
!2405 = !DILocation(line: 97, column: 49, scope: !2339)
!2406 = !{!"1225"}
!2407 = !DILocation(line: 97, column: 34, scope: !2339)
!2408 = !{!"1226"}
!2409 = !DILocation(line: 98, column: 4, scope: !2339)
!2410 = !{!"1227"}
!2411 = !{!"1228"}
!2412 = !{!"1229"}
!2413 = !DILocation(line: 0, scope: !2300)
!2414 = !{!"1230"}
!2415 = !{!"1231"}
!2416 = !{!"1232"}
!2417 = !{!"1233"}
!2418 = !{!"1234"}
!2419 = !{!"1235"}
!2420 = !DILocation(line: 114, column: 16, scope: !2226)
!2421 = !{!"1236"}
!2422 = !DILocation(line: 114, column: 31, scope: !2226)
!2423 = !{!"1237"}
!2424 = !DILocation(line: 114, column: 25, scope: !2226)
!2425 = !{!"1238"}
!2426 = !DILocation(line: 114, column: 6, scope: !2226)
!2427 = !{!"1239"}
!2428 = !DILocalVariable(name: "g", scope: !2226, file: !39, line: 34, type: !6)
!2429 = !{!"1240"}
!2430 = !DILocation(line: 115, column: 10, scope: !2226)
!2431 = !{!"1241"}
!2432 = !DILocation(line: 115, column: 38, scope: !2226)
!2433 = !{!"1242"}
!2434 = !DILocation(line: 115, column: 53, scope: !2226)
!2435 = !{!"1243"}
!2436 = !DILocation(line: 115, column: 34, scope: !2226)
!2437 = !{!"1244"}
!2438 = !DILocation(line: 115, column: 6, scope: !2226)
!2439 = !{!"1245"}
!2440 = !DILocalVariable(name: "q", scope: !2226, file: !39, line: 34, type: !6)
!2441 = !{!"1246"}
!2442 = !DILocalVariable(name: "cc", scope: !2226, file: !39, line: 36, type: !6)
!2443 = !{!"1247"}
!2444 = !DILocalVariable(name: "tb", scope: !2226, file: !39, line: 34, type: !6)
!2445 = !{!"1248"}
!2446 = !DILocalVariable(name: "u", scope: !2226, file: !39, line: 33, type: !34)
!2447 = !{!"1249"}
!2448 = !DILocation(line: 128, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2226, file: !39, line: 128, column: 2)
!2450 = !{!"1250"}
!2451 = !DILocation(line: 0, scope: !2449)
!2452 = !{!"1251"}
!2453 = !{!"1252"}
!2454 = !{!"1253"}
!2455 = !{!"1254"}
!2456 = !{!"1255"}
!2457 = !{!"1256"}
!2458 = !DILocation(line: 128, column: 16, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2449, file: !39, line: 128, column: 2)
!2460 = !{!"1257"}
!2461 = !DILocation(line: 128, column: 2, scope: !2449)
!2462 = !{!"1258"}
!2463 = !DILocation(line: 132, column: 8, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2459, file: !39, line: 128, column: 31)
!2465 = !{!"1259"}
!2466 = !{!"1260"}
!2467 = !DILocalVariable(name: "mw", scope: !2464, file: !39, line: 129, type: !6)
!2468 = !DILocation(line: 0, scope: !2464)
!2469 = !{!"1261"}
!2470 = !DILocation(line: 133, column: 8, scope: !2464)
!2471 = !{!"1262"}
!2472 = !{!"1263"}
!2473 = !{!"1264"}
!2474 = !DILocation(line: 133, column: 23, scope: !2464)
!2475 = !{!"1265"}
!2476 = !DILocation(line: 133, column: 21, scope: !2464)
!2477 = !{!"1266"}
!2478 = !DILocalVariable(name: "zl", scope: !2464, file: !39, line: 130, type: !25)
!2479 = !{!"1267"}
!2480 = !DILocation(line: 134, column: 22, scope: !2464)
!2481 = !{!"1268"}
!2482 = !DILocation(line: 134, column: 8, scope: !2464)
!2483 = !{!"1269"}
!2484 = !{!"1270"}
!2485 = !DILocation(line: 135, column: 8, scope: !2464)
!2486 = !{!"1271"}
!2487 = !DILocation(line: 135, column: 21, scope: !2464)
!2488 = !{!"1272"}
!2489 = !DILocalVariable(name: "zw", scope: !2464, file: !39, line: 129, type: !6)
!2490 = !{!"1273"}
!2491 = !DILocation(line: 136, column: 8, scope: !2464)
!2492 = !{!"1274"}
!2493 = !{!"1275"}
!2494 = !DILocalVariable(name: "xw", scope: !2464, file: !39, line: 129, type: !6)
!2495 = !{!"1276"}
!2496 = !DILocation(line: 137, column: 12, scope: !2464)
!2497 = !{!"1277"}
!2498 = !DILocalVariable(name: "nxw", scope: !2464, file: !39, line: 129, type: !6)
!2499 = !{!"1278"}
!2500 = !DILocation(line: 138, column: 13, scope: !2464)
!2501 = !{!"1279"}
!2502 = !DILocation(line: 138, column: 6, scope: !2464)
!2503 = !{!"1280"}
!2504 = !{!"1281"}
!2505 = !DILocation(line: 139, column: 7, scope: !2464)
!2506 = !{!"1282"}
!2507 = !{!"1283"}
!2508 = !DILocation(line: 140, column: 3, scope: !2464)
!2509 = !{!"1284"}
!2510 = !DILocation(line: 140, column: 8, scope: !2464)
!2511 = !{!"1285"}
!2512 = !DILocation(line: 141, column: 12, scope: !2464)
!2513 = !{!"1286"}
!2514 = !DILocation(line: 141, column: 29, scope: !2464)
!2515 = !{!"1287"}
!2516 = !DILocation(line: 141, column: 8, scope: !2464)
!2517 = !{!"1288"}
!2518 = !{!"1289"}
!2519 = !DILocation(line: 142, column: 2, scope: !2464)
!2520 = !{!"1290"}
!2521 = !DILocation(line: 128, column: 27, scope: !2459)
!2522 = !{!"1291"}
!2523 = !{!"1292"}
!2524 = !DILocation(line: 128, column: 2, scope: !2459)
!2525 = distinct !{!2525, !2461, !2526, !131}
!2526 = !DILocation(line: 142, column: 2, scope: !2449)
!2527 = !{!"1293"}
!2528 = !DILocation(line: 153, column: 9, scope: !2226)
!2529 = !{!"1294"}
!2530 = !DILocalVariable(name: "over", scope: !2226, file: !39, line: 35, type: !6)
!2531 = !{!"1295"}
!2532 = !DILocation(line: 154, column: 10, scope: !2226)
!2533 = !{!"1296"}
!2534 = !DILocation(line: 154, column: 24, scope: !2226)
!2535 = !{!"1297"}
!2536 = !DILocation(line: 154, column: 22, scope: !2226)
!2537 = !{!"1298"}
!2538 = !DILocation(line: 154, column: 16, scope: !2226)
!2539 = !{!"1299"}
!2540 = !DILocalVariable(name: "under", scope: !2226, file: !39, line: 35, type: !6)
!2541 = !{!"1300"}
!2542 = !DILocation(line: 155, column: 2, scope: !2226)
!2543 = !{!"1301"}
!2544 = !DILocation(line: 156, column: 2, scope: !2226)
!2545 = !{!"1302"}
!2546 = !DILocation(line: 157, column: 1, scope: !2226)
!2547 = !{!"1303"}
!2548 = !{!"1304"}
!2549 = distinct !DISubprogram(name: "br_rem", scope: !136, file: !136, line: 1050, type: !137, scopeLine: 1051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!2550 = !{!"1305"}
!2551 = !DILocalVariable(name: "hi", arg: 1, scope: !2549, file: !136, line: 1050, type: !6)
!2552 = !DILocation(line: 0, scope: !2549)
!2553 = !{!"1306"}
!2554 = !DILocalVariable(name: "lo", arg: 2, scope: !2549, file: !136, line: 1050, type: !6)
!2555 = !{!"1307"}
!2556 = !DILocalVariable(name: "d", arg: 3, scope: !2549, file: !136, line: 1050, type: !6)
!2557 = !{!"1308"}
!2558 = !DILocalVariable(name: "r", scope: !2549, file: !136, line: 1052, type: !6)
!2559 = !DILocation(line: 1052, column: 11, scope: !2549)
!2560 = !{!"1309"}
!2561 = !DILocation(line: 1054, column: 2, scope: !2549)
!2562 = !{!"1310"}
!2563 = !DILocation(line: 1055, column: 9, scope: !2549)
!2564 = !{!"1311"}
!2565 = !DILocation(line: 1055, column: 2, scope: !2549)
!2566 = !{!"1312"}
!2567 = distinct !DISubprogram(name: "br_div", scope: !136, file: !136, line: 1063, type: !137, scopeLine: 1064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!2568 = !{!"1313"}
!2569 = !DILocalVariable(name: "hi", arg: 1, scope: !2567, file: !136, line: 1063, type: !6)
!2570 = !DILocation(line: 0, scope: !2567)
!2571 = !{!"1314"}
!2572 = !DILocalVariable(name: "lo", arg: 2, scope: !2567, file: !136, line: 1063, type: !6)
!2573 = !{!"1315"}
!2574 = !DILocalVariable(name: "d", arg: 3, scope: !2567, file: !136, line: 1063, type: !6)
!2575 = !{!"1316"}
!2576 = !DILocalVariable(name: "r", scope: !2567, file: !136, line: 1065, type: !6)
!2577 = !DILocation(line: 1065, column: 11, scope: !2567)
!2578 = !{!"1317"}
!2579 = !DILocation(line: 1067, column: 9, scope: !2567)
!2580 = !{!"1318"}
!2581 = !DILocation(line: 1067, column: 2, scope: !2567)
!2582 = !{!"1319"}
!2583 = distinct !DISubprogram(name: "EQ", scope: !136, file: !136, line: 779, type: !312, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!2584 = !DILocalVariable(name: "x", arg: 1, scope: !2583, file: !136, line: 779, type: !6)
!2585 = !DILocation(line: 0, scope: !2583)
!2586 = !{!"1320"}
!2587 = !DILocalVariable(name: "y", arg: 2, scope: !2583, file: !136, line: 779, type: !6)
!2588 = !{!"1321"}
!2589 = !DILocation(line: 783, column: 8, scope: !2583)
!2590 = !{!"1322"}
!2591 = !DILocalVariable(name: "q", scope: !2583, file: !136, line: 781, type: !6)
!2592 = !{!"1323"}
!2593 = !DILocation(line: 784, column: 18, scope: !2583)
!2594 = !{!"1324"}
!2595 = !DILocation(line: 784, column: 16, scope: !2583)
!2596 = !{!"1325"}
!2597 = !DILocation(line: 784, column: 22, scope: !2583)
!2598 = !{!"1326"}
!2599 = !DILocation(line: 784, column: 9, scope: !2583)
!2600 = !{!"1327"}
!2601 = !DILocation(line: 784, column: 2, scope: !2583)
!2602 = !{!"1328"}
!2603 = distinct !DISubprogram(name: "MUX", scope: !136, file: !136, line: 770, type: !137, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!2604 = !DILocalVariable(name: "ctl", arg: 1, scope: !2603, file: !136, line: 770, type: !6)
!2605 = !DILocation(line: 0, scope: !2603)
!2606 = !{!"1329"}
!2607 = !DILocalVariable(name: "x", arg: 2, scope: !2603, file: !136, line: 770, type: !6)
!2608 = !{!"1330"}
!2609 = !DILocalVariable(name: "y", arg: 3, scope: !2603, file: !136, line: 770, type: !6)
!2610 = !{!"1331"}
!2611 = !DILocation(line: 772, column: 14, scope: !2603)
!2612 = !{!"1332"}
!2613 = !DILocation(line: 772, column: 24, scope: !2603)
!2614 = !{!"1333"}
!2615 = !DILocation(line: 772, column: 19, scope: !2603)
!2616 = !{!"1334"}
!2617 = !DILocation(line: 772, column: 11, scope: !2603)
!2618 = !{!"1335"}
!2619 = !DILocation(line: 772, column: 2, scope: !2603)
!2620 = !{!"1336"}
!2621 = distinct !DISubprogram(name: "GT", scope: !136, file: !136, line: 803, type: !312, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!2622 = !DILocalVariable(name: "x", arg: 1, scope: !2621, file: !136, line: 803, type: !6)
!2623 = !DILocation(line: 0, scope: !2621)
!2624 = !{!"1337"}
!2625 = !DILocalVariable(name: "y", arg: 2, scope: !2621, file: !136, line: 803, type: !6)
!2626 = !{!"1338"}
!2627 = !DILocation(line: 819, column: 8, scope: !2621)
!2628 = !{!"1339"}
!2629 = !DILocalVariable(name: "z", scope: !2621, file: !136, line: 817, type: !6)
!2630 = !{!"1340"}
!2631 = !DILocation(line: 820, column: 18, scope: !2621)
!2632 = !{!"1341"}
!2633 = !DILocation(line: 820, column: 28, scope: !2621)
!2634 = !{!"1342"}
!2635 = !DILocation(line: 820, column: 23, scope: !2621)
!2636 = !{!"1343"}
!2637 = !DILocation(line: 820, column: 12, scope: !2621)
!2638 = !{!"1344"}
!2639 = !DILocation(line: 820, column: 35, scope: !2621)
!2640 = !{!"1345"}
!2641 = !DILocation(line: 820, column: 2, scope: !2621)
!2642 = !{!"1346"}
!2643 = distinct !DISubprogram(name: "NOT", scope: !136, file: !136, line: 761, type: !352, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !38, retainedNodes: !2)
!2644 = !DILocalVariable(name: "ctl", arg: 1, scope: !2643, file: !136, line: 761, type: !6)
!2645 = !DILocation(line: 0, scope: !2643)
!2646 = !{!"1347"}
!2647 = !DILocation(line: 763, column: 13, scope: !2643)
!2648 = !{!"1348"}
!2649 = !DILocation(line: 763, column: 2, scope: !2643)
!2650 = !{!"1349"}
!2651 = distinct !DISubprogram(name: "br_i31_ninv31", scope: !42, file: !42, line: 29, type: !352, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !2)
!2652 = !DILocalVariable(name: "x", arg: 1, scope: !2651, file: !42, line: 29, type: !6)
!2653 = !DILocation(line: 0, scope: !2651)
!2654 = !{!"1350"}
!2655 = !DILocation(line: 33, column: 8, scope: !2651)
!2656 = !{!"1351"}
!2657 = !DILocalVariable(name: "y", scope: !2651, file: !42, line: 31, type: !6)
!2658 = !{!"1352"}
!2659 = !DILocation(line: 34, column: 13, scope: !2651)
!2660 = !{!"1353"}
!2661 = !DILocation(line: 34, column: 9, scope: !2651)
!2662 = !{!"1354"}
!2663 = !DILocation(line: 34, column: 4, scope: !2651)
!2664 = !{!"1355"}
!2665 = !{!"1356"}
!2666 = !DILocation(line: 35, column: 13, scope: !2651)
!2667 = !{!"1357"}
!2668 = !DILocation(line: 35, column: 9, scope: !2651)
!2669 = !{!"1358"}
!2670 = !DILocation(line: 35, column: 4, scope: !2651)
!2671 = !{!"1359"}
!2672 = !{!"1360"}
!2673 = !DILocation(line: 36, column: 13, scope: !2651)
!2674 = !{!"1361"}
!2675 = !DILocation(line: 36, column: 9, scope: !2651)
!2676 = !{!"1362"}
!2677 = !DILocation(line: 36, column: 4, scope: !2651)
!2678 = !{!"1363"}
!2679 = !{!"1364"}
!2680 = !DILocation(line: 37, column: 13, scope: !2651)
!2681 = !{!"1365"}
!2682 = !DILocation(line: 37, column: 9, scope: !2651)
!2683 = !{!"1366"}
!2684 = !DILocation(line: 37, column: 4, scope: !2651)
!2685 = !{!"1367"}
!2686 = !{!"1368"}
!2687 = !DILocation(line: 38, column: 15, scope: !2651)
!2688 = !{!"1369"}
!2689 = !DILocation(line: 38, column: 20, scope: !2651)
!2690 = !{!"1370"}
!2691 = !DILocation(line: 38, column: 9, scope: !2651)
!2692 = !{!"1371"}
!2693 = !DILocation(line: 38, column: 27, scope: !2651)
!2694 = !{!"1372"}
!2695 = !DILocation(line: 38, column: 2, scope: !2651)
!2696 = !{!"1373"}
!2697 = distinct !DISubprogram(name: "MUX", scope: !136, file: !136, line: 770, type: !137, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !41, retainedNodes: !2)
!2698 = !DILocalVariable(name: "ctl", arg: 1, scope: !2697, file: !136, line: 770, type: !6)
!2699 = !DILocation(line: 0, scope: !2697)
!2700 = !{!"1374"}
!2701 = !DILocalVariable(name: "x", arg: 2, scope: !2697, file: !136, line: 770, type: !6)
!2702 = !{!"1375"}
!2703 = !DILocalVariable(name: "y", arg: 3, scope: !2697, file: !136, line: 770, type: !6)
!2704 = !{!"1376"}
!2705 = !DILocation(line: 772, column: 14, scope: !2697)
!2706 = !{!"1377"}
!2707 = !DILocation(line: 772, column: 24, scope: !2697)
!2708 = !{!"1378"}
!2709 = !DILocation(line: 772, column: 19, scope: !2697)
!2710 = !{!"1379"}
!2711 = !DILocation(line: 772, column: 11, scope: !2697)
!2712 = !{!"1380"}
!2713 = !DILocation(line: 772, column: 2, scope: !2697)
!2714 = !{!"1381"}
!2715 = distinct !DISubprogram(name: "br_i31_reduce", scope: !44, file: !44, line: 29, type: !2043, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !2)
!2716 = !DILocalVariable(name: "x", arg: 1, scope: !2715, file: !44, line: 29, type: !159)
!2717 = !DILocation(line: 0, scope: !2715)
!2718 = !{!"1382"}
!2719 = !DILocalVariable(name: "a", arg: 2, scope: !2715, file: !44, line: 29, type: !160)
!2720 = !{!"1383"}
!2721 = !DILocalVariable(name: "m", arg: 3, scope: !2715, file: !44, line: 29, type: !160)
!2722 = !{!"1384"}
!2723 = !DILocation(line: 34, column: 13, scope: !2715)
!2724 = !{!"1385"}
!2725 = !{!"1386"}
!2726 = !DILocalVariable(name: "m_bitlen", scope: !2715, file: !44, line: 31, type: !6)
!2727 = !{!"1387"}
!2728 = !DILocation(line: 35, column: 19, scope: !2715)
!2729 = !{!"1388"}
!2730 = !DILocation(line: 35, column: 25, scope: !2715)
!2731 = !{!"1389"}
!2732 = !DILocation(line: 35, column: 9, scope: !2715)
!2733 = !{!"1390"}
!2734 = !DILocalVariable(name: "mlen", scope: !2715, file: !44, line: 32, type: !34)
!2735 = !{!"1391"}
!2736 = !DILocation(line: 37, column: 2, scope: !2715)
!2737 = !{!"1392"}
!2738 = !DILocation(line: 37, column: 7, scope: !2715)
!2739 = !{!"1393"}
!2740 = !DILocation(line: 38, column: 15, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2715, file: !44, line: 38, column: 6)
!2742 = !{!"1394"}
!2743 = !DILocation(line: 38, column: 6, scope: !2715)
!2744 = !{!"1395"}
!2745 = !DILocation(line: 39, column: 3, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2741, file: !44, line: 38, column: 21)
!2747 = !{!"1396"}
!2748 = !DILocation(line: 46, column: 13, scope: !2715)
!2749 = !{!"1397"}
!2750 = !{!"1398"}
!2751 = !DILocalVariable(name: "a_bitlen", scope: !2715, file: !44, line: 31, type: !6)
!2752 = !{!"1399"}
!2753 = !DILocation(line: 47, column: 19, scope: !2715)
!2754 = !{!"1400"}
!2755 = !DILocation(line: 47, column: 25, scope: !2715)
!2756 = !{!"1401"}
!2757 = !DILocation(line: 47, column: 9, scope: !2715)
!2758 = !{!"1402"}
!2759 = !DILocalVariable(name: "alen", scope: !2715, file: !44, line: 32, type: !34)
!2760 = !{!"1403"}
!2761 = !DILocation(line: 48, column: 15, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2715, file: !44, line: 48, column: 6)
!2763 = !{!"1404"}
!2764 = !DILocation(line: 48, column: 6, scope: !2715)
!2765 = !{!"1405"}
!2766 = !DILocation(line: 49, column: 12, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2762, file: !44, line: 48, column: 27)
!2768 = !{!"1406"}
!2769 = !DILocation(line: 49, column: 3, scope: !2767)
!2770 = !{!"1407"}
!2771 = !DILocation(line: 49, column: 19, scope: !2767)
!2772 = !{!"1408"}
!2773 = !{!"1409"}
!2774 = !DILocation(line: 49, column: 29, scope: !2767)
!2775 = !{!"1410"}
!2776 = !{!"1411"}
!2777 = !DILocalVariable(name: "u", scope: !2715, file: !44, line: 32, type: !34)
!2778 = !{!"1412"}
!2779 = !DILocation(line: 50, column: 8, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2767, file: !44, line: 50, column: 3)
!2781 = !{!"1413"}
!2782 = !DILocation(line: 0, scope: !2780)
!2783 = !{!"1414"}
!2784 = !{!"1415"}
!2785 = !DILocation(line: 50, column: 20, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2780, file: !44, line: 50, column: 3)
!2787 = !{!"1416"}
!2788 = !DILocation(line: 50, column: 3, scope: !2780)
!2789 = !{!"1417"}
!2790 = !DILocation(line: 51, column: 8, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2786, file: !44, line: 50, column: 34)
!2792 = !{!"1418"}
!2793 = !DILocation(line: 51, column: 4, scope: !2791)
!2794 = !{!"1419"}
!2795 = !DILocation(line: 51, column: 13, scope: !2791)
!2796 = !{!"1420"}
!2797 = !DILocation(line: 52, column: 3, scope: !2791)
!2798 = !{!"1421"}
!2799 = !DILocation(line: 50, column: 30, scope: !2786)
!2800 = !{!"1422"}
!2801 = !{!"1423"}
!2802 = !DILocation(line: 50, column: 3, scope: !2786)
!2803 = distinct !{!2803, !2788, !2804, !131}
!2804 = !DILocation(line: 52, column: 3, scope: !2780)
!2805 = !{!"1424"}
!2806 = !DILocation(line: 53, column: 3, scope: !2767)
!2807 = !{!"1425"}
!2808 = !DILocation(line: 61, column: 11, scope: !2715)
!2809 = !{!"1426"}
!2810 = !DILocation(line: 61, column: 2, scope: !2715)
!2811 = !{!"1427"}
!2812 = !DILocation(line: 61, column: 18, scope: !2715)
!2813 = !{!"1428"}
!2814 = !DILocation(line: 61, column: 30, scope: !2715)
!2815 = !{!"1429"}
!2816 = !DILocation(line: 61, column: 22, scope: !2715)
!2817 = !{!"1430"}
!2818 = !{!"1431"}
!2819 = !DILocation(line: 61, column: 45, scope: !2715)
!2820 = !{!"1432"}
!2821 = !DILocation(line: 61, column: 50, scope: !2715)
!2822 = !{!"1433"}
!2823 = !{!"1434"}
!2824 = !{!"0110"}
!2825 = !DILocation(line: 62, column: 2, scope: !2715)
!2826 = !{!"1435"}
!2827 = !DILocation(line: 62, column: 10, scope: !2715)
!2828 = !{!"1436"}
!2829 = !DILocation(line: 63, column: 13, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2715, file: !44, line: 63, column: 2)
!2831 = !{!"1437"}
!2832 = !DILocation(line: 63, column: 20, scope: !2830)
!2833 = !{!"1438"}
!2834 = !{!"1439"}
!2835 = !DILocation(line: 63, column: 7, scope: !2830)
!2836 = !{!"1440"}
!2837 = !DILocation(line: 0, scope: !2830)
!2838 = !{!"1441"}
!2839 = !{!"1442"}
!2840 = !DILocation(line: 63, column: 30, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2830, file: !44, line: 63, column: 2)
!2842 = !{!"1443"}
!2843 = !DILocation(line: 63, column: 2, scope: !2830)
!2844 = !{!"1444"}
!2845 = !DILocation(line: 64, column: 26, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2841, file: !44, line: 63, column: 41)
!2847 = !{!"1445"}
!2848 = !{!"1446"}
!2849 = !DILocation(line: 64, column: 3, scope: !2846)
!2850 = !{!"1447"}
!2851 = !DILocation(line: 65, column: 2, scope: !2846)
!2852 = !{!"1448"}
!2853 = !DILocation(line: 63, column: 37, scope: !2841)
!2854 = !{!"1449"}
!2855 = !{!"1450"}
!2856 = !DILocation(line: 63, column: 2, scope: !2841)
!2857 = distinct !{!2857, !2843, !2858, !131}
!2858 = !DILocation(line: 65, column: 2, scope: !2830)
!2859 = !{!"1451"}
!2860 = !DILocation(line: 66, column: 1, scope: !2715)
!2861 = !{!"1452"}
!2862 = distinct !DISubprogram(name: "br_i31_rshift", scope: !46, file: !46, line: 29, type: !2863, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !2)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{null, !159, !488}
!2865 = !DILocalVariable(name: "x", arg: 1, scope: !2862, file: !46, line: 29, type: !159)
!2866 = !DILocation(line: 0, scope: !2862)
!2867 = !{!"1453"}
!2868 = !DILocalVariable(name: "count", arg: 2, scope: !2862, file: !46, line: 29, type: !488)
!2869 = !{!"1454"}
!2870 = !DILocation(line: 34, column: 9, scope: !2862)
!2871 = !{!"1455"}
!2872 = !{!"1456"}
!2873 = !DILocation(line: 34, column: 14, scope: !2862)
!2874 = !{!"1457"}
!2875 = !DILocation(line: 34, column: 20, scope: !2862)
!2876 = !{!"1458"}
!2877 = !DILocation(line: 34, column: 8, scope: !2862)
!2878 = !{!"1459"}
!2879 = !DILocalVariable(name: "len", scope: !2862, file: !46, line: 31, type: !34)
!2880 = !{!"1460"}
!2881 = !DILocation(line: 35, column: 10, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2862, file: !46, line: 35, column: 6)
!2883 = !{!"1461"}
!2884 = !DILocation(line: 35, column: 6, scope: !2862)
!2885 = !{!"1462"}
!2886 = !DILocation(line: 36, column: 3, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2882, file: !46, line: 35, column: 16)
!2888 = !{!"1463"}
!2889 = !DILocation(line: 38, column: 6, scope: !2862)
!2890 = !{!"1464"}
!2891 = !{!"1465"}
!2892 = !DILocation(line: 38, column: 11, scope: !2862)
!2893 = !{!"1466"}
!2894 = !DILocalVariable(name: "r", scope: !2862, file: !46, line: 32, type: !6)
!2895 = !{!"1467"}
!2896 = !DILocalVariable(name: "u", scope: !2862, file: !46, line: 31, type: !34)
!2897 = !{!"1468"}
!2898 = !DILocation(line: 39, column: 7, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2862, file: !46, line: 39, column: 2)
!2900 = !{!"1469"}
!2901 = !DILocation(line: 0, scope: !2899)
!2902 = !{!"1470"}
!2903 = !{!"1471"}
!2904 = !{!"1472"}
!2905 = !{!"1473"}
!2906 = !DILocation(line: 39, column: 16, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2899, file: !46, line: 39, column: 2)
!2908 = !{!"1474"}
!2909 = !DILocation(line: 39, column: 2, scope: !2899)
!2910 = !{!"1475"}
!2911 = !DILocation(line: 42, column: 7, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2907, file: !46, line: 39, column: 30)
!2913 = !{!"1476"}
!2914 = !{!"1477"}
!2915 = !DILocalVariable(name: "w", scope: !2912, file: !46, line: 40, type: !6)
!2916 = !DILocation(line: 0, scope: !2912)
!2917 = !{!"1478"}
!2918 = !DILocation(line: 43, column: 25, scope: !2912)
!2919 = !{!"1479"}
!2920 = !DILocation(line: 43, column: 18, scope: !2912)
!2921 = !{!"1480"}
!2922 = !DILocation(line: 43, column: 35, scope: !2912)
!2923 = !{!"1481"}
!2924 = !DILocation(line: 43, column: 40, scope: !2912)
!2925 = !{!"1482"}
!2926 = !DILocation(line: 43, column: 7, scope: !2912)
!2927 = !{!"1483"}
!2928 = !DILocation(line: 43, column: 3, scope: !2912)
!2929 = !{!"1484"}
!2930 = !DILocation(line: 43, column: 12, scope: !2912)
!2931 = !{!"1485"}
!2932 = !DILocation(line: 44, column: 9, scope: !2912)
!2933 = !{!"1486"}
!2934 = !{!"1487"}
!2935 = !DILocation(line: 45, column: 2, scope: !2912)
!2936 = !{!"1488"}
!2937 = !DILocation(line: 39, column: 26, scope: !2907)
!2938 = !{!"1489"}
!2939 = !{!"1490"}
!2940 = !DILocation(line: 39, column: 2, scope: !2907)
!2941 = distinct !{!2941, !2909, !2942, !131}
!2942 = !DILocation(line: 45, column: 2, scope: !2899)
!2943 = !{!"1491"}
!2944 = !DILocation(line: 46, column: 2, scope: !2862)
!2945 = !{!"1492"}
!2946 = !DILocation(line: 46, column: 9, scope: !2862)
!2947 = !{!"1493"}
!2948 = !DILocation(line: 47, column: 1, scope: !2862)
!2949 = !{!"1494"}
!2950 = !{!"1495"}
!2951 = distinct !DISubprogram(name: "br_i31_sub", scope: !48, file: !48, line: 29, type: !157, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !2)
!2952 = !DILocalVariable(name: "a", arg: 1, scope: !2951, file: !48, line: 29, type: !159)
!2953 = !DILocation(line: 0, scope: !2951)
!2954 = !{!"1496"}
!2955 = !DILocalVariable(name: "b", arg: 2, scope: !2951, file: !48, line: 29, type: !160)
!2956 = !{!"1497"}
!2957 = !DILocalVariable(name: "ctl", arg: 3, scope: !2951, file: !48, line: 29, type: !6)
!2958 = !{!"1498"}
!2959 = !DILocalVariable(name: "cc", scope: !2951, file: !48, line: 31, type: !6)
!2960 = !{!"1499"}
!2961 = !DILocation(line: 36, column: 7, scope: !2951)
!2962 = !{!"1500"}
!2963 = !{!"1501"}
!2964 = !DILocation(line: 36, column: 12, scope: !2951)
!2965 = !{!"1502"}
!2966 = !DILocation(line: 36, column: 18, scope: !2951)
!2967 = !{!"1503"}
!2968 = !DILocation(line: 36, column: 6, scope: !2951)
!2969 = !{!"1504"}
!2970 = !DILocalVariable(name: "m", scope: !2951, file: !48, line: 32, type: !34)
!2971 = !{!"1505"}
!2972 = !DILocalVariable(name: "u", scope: !2951, file: !48, line: 32, type: !34)
!2973 = !{!"1506"}
!2974 = !DILocation(line: 37, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2951, file: !48, line: 37, column: 2)
!2976 = !{!"1507"}
!2977 = !{!"1508"}
!2978 = !DILocation(line: 0, scope: !2975)
!2979 = !{!"1509"}
!2980 = !{!"1510"}
!2981 = !{!"1511"}
!2982 = !DILocation(line: 37, column: 16, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2975, file: !48, line: 37, column: 2)
!2984 = !{!"1512"}
!2985 = !DILocation(line: 37, column: 2, scope: !2975)
!2986 = !{!"1513"}
!2987 = !DILocation(line: 40, column: 8, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2983, file: !48, line: 37, column: 27)
!2989 = !{!"1514"}
!2990 = !{!"1515"}
!2991 = !DILocalVariable(name: "aw", scope: !2988, file: !48, line: 38, type: !6)
!2992 = !DILocation(line: 0, scope: !2988)
!2993 = !{!"1516"}
!2994 = !DILocation(line: 41, column: 8, scope: !2988)
!2995 = !{!"1517"}
!2996 = !{!"1518"}
!2997 = !DILocalVariable(name: "bw", scope: !2988, file: !48, line: 38, type: !6)
!2998 = !{!"1519"}
!2999 = !DILocation(line: 42, column: 12, scope: !2988)
!3000 = !{!"1520"}
!3001 = !DILocation(line: 42, column: 17, scope: !2988)
!3002 = !{!"1521"}
!3003 = !DILocalVariable(name: "naw", scope: !2988, file: !48, line: 38, type: !6)
!3004 = !{!"1522"}
!3005 = !DILocation(line: 43, column: 12, scope: !2988)
!3006 = !{!"1523"}
!3007 = !{!"1524"}
!3008 = !DILocation(line: 44, column: 23, scope: !2988)
!3009 = !{!"1525"}
!3010 = !DILocation(line: 44, column: 10, scope: !2988)
!3011 = !{!"1526"}
!3012 = !DILocation(line: 44, column: 3, scope: !2988)
!3013 = !{!"1527"}
!3014 = !DILocation(line: 44, column: 8, scope: !2988)
!3015 = !{!"1528"}
!3016 = !DILocation(line: 45, column: 2, scope: !2988)
!3017 = !{!"1529"}
!3018 = !DILocation(line: 37, column: 23, scope: !2983)
!3019 = !{!"1530"}
!3020 = !{!"1531"}
!3021 = !DILocation(line: 37, column: 2, scope: !2983)
!3022 = distinct !{!3022, !2985, !3023, !131}
!3023 = !DILocation(line: 45, column: 2, scope: !2975)
!3024 = !{!"1532"}
!3025 = !DILocation(line: 46, column: 2, scope: !2951)
!3026 = !{!"1533"}
!3027 = distinct !DISubprogram(name: "MUX", scope: !136, file: !136, line: 770, type: !137, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !47, retainedNodes: !2)
!3028 = !DILocalVariable(name: "ctl", arg: 1, scope: !3027, file: !136, line: 770, type: !6)
!3029 = !DILocation(line: 0, scope: !3027)
!3030 = !{!"1534"}
!3031 = !DILocalVariable(name: "x", arg: 2, scope: !3027, file: !136, line: 770, type: !6)
!3032 = !{!"1535"}
!3033 = !DILocalVariable(name: "y", arg: 3, scope: !3027, file: !136, line: 770, type: !6)
!3034 = !{!"1536"}
!3035 = !DILocation(line: 772, column: 14, scope: !3027)
!3036 = !{!"1537"}
!3037 = !DILocation(line: 772, column: 24, scope: !3027)
!3038 = !{!"1538"}
!3039 = !DILocation(line: 772, column: 19, scope: !3027)
!3040 = !{!"1539"}
!3041 = !DILocation(line: 772, column: 11, scope: !3027)
!3042 = !{!"1540"}
!3043 = !DILocation(line: 772, column: 2, scope: !3027)
!3044 = !{!"1541"}
!3045 = distinct !DISubprogram(name: "br_i31_to_monty", scope: !50, file: !50, line: 29, type: !3046, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !2)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !159, !160}
!3048 = !DILocalVariable(name: "x", arg: 1, scope: !3045, file: !50, line: 29, type: !159)
!3049 = !DILocation(line: 0, scope: !3045)
!3050 = !{!"1542"}
!3051 = !DILocalVariable(name: "m", arg: 2, scope: !3045, file: !50, line: 29, type: !160)
!3052 = !{!"1543"}
!3053 = !DILocation(line: 33, column: 12, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3045, file: !50, line: 33, column: 2)
!3055 = !{!"1544"}
!3056 = !{!"1545"}
!3057 = !DILocation(line: 33, column: 17, scope: !3054)
!3058 = !{!"1546"}
!3059 = !DILocation(line: 33, column: 23, scope: !3054)
!3060 = !{!"1547"}
!3061 = !DILocalVariable(name: "k", scope: !3045, file: !50, line: 31, type: !6)
!3062 = !{!"1548"}
!3063 = !DILocation(line: 33, column: 7, scope: !3054)
!3064 = !{!"1549"}
!3065 = !DILocation(line: 0, scope: !3054)
!3066 = !{!"1550"}
!3067 = !{!"1551"}
!3068 = !DILocation(line: 33, column: 31, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3054, file: !50, line: 33, column: 2)
!3070 = !{!"1552"}
!3071 = !DILocation(line: 33, column: 2, scope: !3054)
!3072 = !{!"1553"}
!3073 = !DILocation(line: 34, column: 3, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3069, file: !50, line: 33, column: 42)
!3075 = !{!"1554"}
!3076 = !DILocation(line: 35, column: 2, scope: !3074)
!3077 = !{!"1555"}
!3078 = !DILocation(line: 33, column: 38, scope: !3069)
!3079 = !{!"1556"}
!3080 = !{!"1557"}
!3081 = !DILocation(line: 33, column: 2, scope: !3069)
!3082 = distinct !{!3082, !3071, !3083, !131}
!3083 = !DILocation(line: 35, column: 2, scope: !3054)
!3084 = !{!"1558"}
!3085 = !DILocation(line: 36, column: 1, scope: !3045)
!3086 = !{!"1559"}
!3087 = distinct !DISubprogram(name: "br_divrem", scope: !52, file: !52, line: 29, type: !3088, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !2)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!6, !6, !6, !6, !159}
!3090 = !DILocalVariable(name: "hi", arg: 1, scope: !3087, file: !52, line: 29, type: !6)
!3091 = !DILocation(line: 0, scope: !3087)
!3092 = !{!"1560"}
!3093 = !DILocalVariable(name: "lo", arg: 2, scope: !3087, file: !52, line: 29, type: !6)
!3094 = !{!"1561"}
!3095 = !DILocalVariable(name: "d", arg: 3, scope: !3087, file: !52, line: 29, type: !6)
!3096 = !{!"1562"}
!3097 = !DILocalVariable(name: "r", arg: 4, scope: !3087, file: !52, line: 29, type: !159)
!3098 = !{!"1563"}
!3099 = !DILocalVariable(name: "q", scope: !3087, file: !52, line: 32, type: !6)
!3100 = !{!"1564"}
!3101 = !DILocation(line: 37, column: 7, scope: !3087)
!3102 = !{!"1565"}
!3103 = !DILocalVariable(name: "ch", scope: !3087, file: !52, line: 33, type: !6)
!3104 = !{!"1566"}
!3105 = !DILocation(line: 38, column: 7, scope: !3087)
!3106 = !{!"1567"}
!3107 = !{!"1568"}
!3108 = !DILocalVariable(name: "k", scope: !3087, file: !52, line: 34, type: !488)
!3109 = !{!"1569"}
!3110 = !DILocation(line: 39, column: 7, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3087, file: !52, line: 39, column: 2)
!3112 = !{!"1570"}
!3113 = !{!"1571"}
!3114 = !DILocation(line: 0, scope: !3111)
!3115 = !{!"1572"}
!3116 = !{!"1573"}
!3117 = !{!"1574"}
!3118 = !{!"1575"}
!3119 = !{!"1576"}
!3120 = !{!"1577"}
!3121 = !{!"1578"}
!3122 = !DILocation(line: 39, column: 17, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3111, file: !52, line: 39, column: 2)
!3124 = !{!"1579"}
!3125 = !DILocation(line: 39, column: 2, scope: !3111)
!3126 = !{!"1580"}
!3127 = !DILocation(line: 43, column: 10, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3123, file: !52, line: 39, column: 28)
!3129 = !{!"1581"}
!3130 = !DILocalVariable(name: "j", scope: !3128, file: !52, line: 40, type: !488)
!3131 = !DILocation(line: 0, scope: !3128)
!3132 = !{!"1582"}
!3133 = !DILocation(line: 44, column: 11, scope: !3128)
!3134 = !{!"1583"}
!3135 = !DILocation(line: 44, column: 23, scope: !3128)
!3136 = !{!"1584"}
!3137 = !DILocation(line: 44, column: 17, scope: !3128)
!3138 = !{!"1585"}
!3139 = !DILocalVariable(name: "w", scope: !3128, file: !52, line: 41, type: !6)
!3140 = !{!"1586"}
!3141 = !DILocation(line: 45, column: 9, scope: !3128)
!3142 = !{!"1587"}
!3143 = !{!"1588"}
!3144 = !DILocation(line: 45, column: 24, scope: !3128)
!3145 = !{!"1589"}
!3146 = !DILocation(line: 45, column: 18, scope: !3128)
!3147 = !{!"1590"}
!3148 = !DILocalVariable(name: "ctl", scope: !3128, file: !52, line: 41, type: !6)
!3149 = !{!"1591"}
!3150 = !DILocation(line: 46, column: 12, scope: !3128)
!3151 = !{!"1592"}
!3152 = !DILocation(line: 46, column: 17, scope: !3128)
!3153 = !{!"1593"}
!3154 = !DILocalVariable(name: "hi2", scope: !3128, file: !52, line: 41, type: !6)
!3155 = !{!"1594"}
!3156 = !DILocation(line: 47, column: 17, scope: !3128)
!3157 = !{!"1595"}
!3158 = !DILocation(line: 47, column: 12, scope: !3128)
!3159 = !{!"1596"}
!3160 = !DILocalVariable(name: "lo2", scope: !3128, file: !52, line: 41, type: !6)
!3161 = !{!"1597"}
!3162 = !DILocation(line: 48, column: 8, scope: !3128)
!3163 = !{!"1598"}
!3164 = !{!"1599"}
!3165 = !DILocation(line: 49, column: 8, scope: !3128)
!3166 = !{!"1600"}
!3167 = !{!"1601"}
!3168 = !DILocation(line: 50, column: 12, scope: !3128)
!3169 = !{!"1602"}
!3170 = !DILocation(line: 50, column: 5, scope: !3128)
!3171 = !{!"1603"}
!3172 = !{!"1604"}
!3173 = !DILocation(line: 51, column: 2, scope: !3128)
!3174 = !{!"1605"}
!3175 = !DILocation(line: 39, column: 24, scope: !3123)
!3176 = !{!"1606"}
!3177 = !{!"1607"}
!3178 = !DILocation(line: 39, column: 2, scope: !3123)
!3179 = distinct !{!3179, !3125, !3180, !131}
!3180 = !DILocation(line: 51, column: 2, scope: !3111)
!3181 = !{!"1608"}
!3182 = !DILocation(line: 52, column: 7, scope: !3087)
!3183 = !{!"1609"}
!3184 = !{!"1610"}
!3185 = !DILocation(line: 52, column: 17, scope: !3087)
!3186 = !{!"1611"}
!3187 = !DILocalVariable(name: "cf", scope: !3087, file: !52, line: 33, type: !6)
!3188 = !{!"1612"}
!3189 = !DILocation(line: 53, column: 4, scope: !3087)
!3190 = !{!"1613"}
!3191 = !{!"1614"}
!3192 = !DILocation(line: 54, column: 18, scope: !3087)
!3193 = !{!"1615"}
!3194 = !DILocation(line: 54, column: 7, scope: !3087)
!3195 = !{!"1616"}
!3196 = !DILocation(line: 54, column: 5, scope: !3087)
!3197 = !{!"1617"}
!3198 = !DILocation(line: 55, column: 2, scope: !3087)
!3199 = !{!"1618"}
!3200 = distinct !DISubprogram(name: "EQ", scope: !136, file: !136, line: 779, type: !312, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !2)
!3201 = !DILocalVariable(name: "x", arg: 1, scope: !3200, file: !136, line: 779, type: !6)
!3202 = !DILocation(line: 0, scope: !3200)
!3203 = !{!"1619"}
!3204 = !DILocalVariable(name: "y", arg: 2, scope: !3200, file: !136, line: 779, type: !6)
!3205 = !{!"1620"}
!3206 = !DILocation(line: 783, column: 8, scope: !3200)
!3207 = !{!"1621"}
!3208 = !DILocalVariable(name: "q", scope: !3200, file: !136, line: 781, type: !6)
!3209 = !{!"1622"}
!3210 = !DILocation(line: 784, column: 18, scope: !3200)
!3211 = !{!"1623"}
!3212 = !DILocation(line: 784, column: 16, scope: !3200)
!3213 = !{!"1624"}
!3214 = !DILocation(line: 784, column: 22, scope: !3200)
!3215 = !{!"1625"}
!3216 = !DILocation(line: 784, column: 9, scope: !3200)
!3217 = !{!"1626"}
!3218 = !DILocation(line: 784, column: 2, scope: !3200)
!3219 = !{!"1627"}
!3220 = distinct !DISubprogram(name: "MUX", scope: !136, file: !136, line: 770, type: !137, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !2)
!3221 = !DILocalVariable(name: "ctl", arg: 1, scope: !3220, file: !136, line: 770, type: !6)
!3222 = !DILocation(line: 0, scope: !3220)
!3223 = !{!"1628"}
!3224 = !DILocalVariable(name: "x", arg: 2, scope: !3220, file: !136, line: 770, type: !6)
!3225 = !{!"1629"}
!3226 = !DILocalVariable(name: "y", arg: 3, scope: !3220, file: !136, line: 770, type: !6)
!3227 = !{!"1630"}
!3228 = !DILocation(line: 772, column: 14, scope: !3220)
!3229 = !{!"1631"}
!3230 = !DILocation(line: 772, column: 24, scope: !3220)
!3231 = !{!"1632"}
!3232 = !DILocation(line: 772, column: 19, scope: !3220)
!3233 = !{!"1633"}
!3234 = !DILocation(line: 772, column: 11, scope: !3220)
!3235 = !{!"1634"}
!3236 = !DILocation(line: 772, column: 2, scope: !3220)
!3237 = !{!"1635"}
!3238 = distinct !DISubprogram(name: "GT", scope: !136, file: !136, line: 803, type: !312, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !2)
!3239 = !DILocalVariable(name: "x", arg: 1, scope: !3238, file: !136, line: 803, type: !6)
!3240 = !DILocation(line: 0, scope: !3238)
!3241 = !{!"1636"}
!3242 = !DILocalVariable(name: "y", arg: 2, scope: !3238, file: !136, line: 803, type: !6)
!3243 = !{!"1637"}
!3244 = !DILocation(line: 819, column: 8, scope: !3238)
!3245 = !{!"1638"}
!3246 = !DILocalVariable(name: "z", scope: !3238, file: !136, line: 817, type: !6)
!3247 = !{!"1639"}
!3248 = !DILocation(line: 820, column: 18, scope: !3238)
!3249 = !{!"1640"}
!3250 = !DILocation(line: 820, column: 28, scope: !3238)
!3251 = !{!"1641"}
!3252 = !DILocation(line: 820, column: 23, scope: !3238)
!3253 = !{!"1642"}
!3254 = !DILocation(line: 820, column: 12, scope: !3238)
!3255 = !{!"1643"}
!3256 = !DILocation(line: 820, column: 35, scope: !3238)
!3257 = !{!"1644"}
!3258 = !DILocation(line: 820, column: 2, scope: !3238)
!3259 = !{!"1645"}
!3260 = distinct !DISubprogram(name: "NOT", scope: !136, file: !136, line: 761, type: !352, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !2)
!3261 = !DILocalVariable(name: "ctl", arg: 1, scope: !3260, file: !136, line: 761, type: !6)
!3262 = !DILocation(line: 0, scope: !3260)
!3263 = !{!"1646"}
!3264 = !DILocation(line: 763, column: 13, scope: !3260)
!3265 = !{!"1647"}
!3266 = !DILocation(line: 763, column: 2, scope: !3260)
!3267 = !{!"1648"}
!3268 = distinct !DISubprogram(name: "br_rsa_i31_pkcs1_sign", scope: !54, file: !54, line: 29, type: !3269, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !53, retainedNodes: !2)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!6, !86, !86, !34, !3271, !20}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3273)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !3274, line: 205, baseType: !3275)
!3274 = !DIFile(filename: "../BearSSL/inc/bearssl_rsa.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i31_pkcs1")
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3274, line: 182, size: 704, elements: !3276)
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !3275, file: !3274, line: 184, baseType: !6, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3275, file: !3274, line: 186, baseType: !20, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !3275, file: !3274, line: 188, baseType: !34, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3275, file: !3274, line: 190, baseType: !20, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !3275, file: !3274, line: 192, baseType: !34, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !3275, file: !3274, line: 194, baseType: !20, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !3275, file: !3274, line: 196, baseType: !34, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !3275, file: !3274, line: 198, baseType: !20, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !3275, file: !3274, line: 200, baseType: !34, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !3275, file: !3274, line: 202, baseType: !20, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !3275, file: !3274, line: 204, baseType: !34, size: 64, offset: 640)
!3288 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !3268, file: !54, line: 29, type: !86)
!3289 = !DILocation(line: 0, scope: !3268)
!3290 = !{!"1649"}
!3291 = !DILocalVariable(name: "hash", arg: 2, scope: !3268, file: !54, line: 30, type: !86)
!3292 = !{!"1650"}
!3293 = !DILocalVariable(name: "hash_len", arg: 3, scope: !3268, file: !54, line: 30, type: !34)
!3294 = !{!"1651"}
!3295 = !DILocalVariable(name: "sk", arg: 4, scope: !3268, file: !54, line: 31, type: !3271)
!3296 = !{!"1652"}
!3297 = !DILocalVariable(name: "x", arg: 5, scope: !3268, file: !54, line: 31, type: !20)
!3298 = !{!"1653"}
!3299 = !DILocation(line: 33, column: 58, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3268, file: !54, line: 33, column: 6)
!3301 = !{!"1654"}
!3302 = !{!"1655"}
!3303 = !DILocation(line: 33, column: 7, scope: !3300)
!3304 = !{!"1656"}
!3305 = !{!"1657"}
!3306 = !DILocation(line: 33, column: 6, scope: !3268)
!3307 = !{!"1658"}
!3308 = !DILocation(line: 34, column: 3, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3300, file: !54, line: 33, column: 72)
!3310 = !{!"1659"}
!3311 = !DILocation(line: 36, column: 9, scope: !3268)
!3312 = !{!"1660"}
!3313 = !DILocation(line: 36, column: 2, scope: !3268)
!3314 = !{!"1661"}
!3315 = !{!"1662"}
!3316 = !DILocation(line: 37, column: 1, scope: !3268)
!3317 = !{!"1663"}
!3318 = distinct !DISubprogram(name: "br_rsa_i31_private", scope: !56, file: !56, line: 32, type: !3319, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !2)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!6, !20, !3321}
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3323)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !3274, line: 205, baseType: !3324)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3274, line: 182, size: 704, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !3324, file: !3274, line: 184, baseType: !6, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3324, file: !3274, line: 186, baseType: !20, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !3324, file: !3274, line: 188, baseType: !34, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3324, file: !3274, line: 190, baseType: !20, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !3324, file: !3274, line: 192, baseType: !34, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !3324, file: !3274, line: 194, baseType: !20, size: 64, offset: 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !3324, file: !3274, line: 196, baseType: !34, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !3324, file: !3274, line: 198, baseType: !20, size: 64, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !3324, file: !3274, line: 200, baseType: !34, size: 64, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !3324, file: !3274, line: 202, baseType: !20, size: 64, offset: 576)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !3324, file: !3274, line: 204, baseType: !34, size: 64, offset: 640)
!3337 = !{!"1664"}
!3338 = !DILocalVariable(name: "x", arg: 1, scope: !3318, file: !56, line: 32, type: !20)
!3339 = !DILocation(line: 0, scope: !3318)
!3340 = !{!"1665"}
!3341 = !DILocalVariable(name: "sk", arg: 2, scope: !3318, file: !56, line: 32, type: !3321)
!3342 = !{!"1666"}
!3343 = !DILocalVariable(name: "tmp", scope: !3318, file: !56, line: 39, type: !3344)
!3344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 17952, elements: !3345)
!3345 = !{!3346}
!3346 = !DISubrange(count: 561)
!3347 = !DILocation(line: 39, column: 11, scope: !3318)
!3348 = !{!"1667"}
!3349 = !DILocation(line: 49, column: 10, scope: !3318)
!3350 = !{!"1668"}
!3351 = !{!"1669"}
!3352 = !DILocalVariable(name: "p", scope: !3318, file: !56, line: 34, type: !86)
!3353 = !{!"1670"}
!3354 = !DILocation(line: 50, column: 13, scope: !3318)
!3355 = !{!"1671"}
!3356 = !{!"1672"}
!3357 = !DILocalVariable(name: "plen", scope: !3318, file: !56, line: 35, type: !34)
!3358 = !{!"1673"}
!3359 = !DILocation(line: 51, column: 2, scope: !3318)
!3360 = !{!"1674"}
!3361 = !{!"1675"}
!3362 = !{!"1676"}
!3363 = !{!"1677"}
!3364 = !{!"1678"}
!3365 = !DILocation(line: 51, column: 14, scope: !3318)
!3366 = !{!"1679"}
!3367 = !DILocation(line: 51, column: 18, scope: !3318)
!3368 = !{!"1680"}
!3369 = !DILocation(line: 51, column: 21, scope: !3318)
!3370 = !{!"1681"}
!3371 = !{!"1682"}
!3372 = !DILocation(line: 51, column: 24, scope: !3318)
!3373 = !{!"1683"}
!3374 = !{!"1684"}
!3375 = !{!"1685"}
!3376 = !{!"1686"}
!3377 = !DILocation(line: 52, column: 5, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3318, file: !56, line: 51, column: 30)
!3379 = !{!"1687"}
!3380 = !{!"1688"}
!3381 = !DILocation(line: 53, column: 8, scope: !3378)
!3382 = !{!"1689"}
!3383 = !{!"1690"}
!3384 = distinct !{!3384, !3359, !3385, !131}
!3385 = !DILocation(line: 54, column: 2, scope: !3318)
!3386 = !{!"1691"}
!3387 = !DILocation(line: 55, column: 10, scope: !3318)
!3388 = !{!"1692"}
!3389 = !{!"1693"}
!3390 = !DILocalVariable(name: "q", scope: !3318, file: !56, line: 34, type: !86)
!3391 = !{!"1694"}
!3392 = !DILocation(line: 56, column: 13, scope: !3318)
!3393 = !{!"1695"}
!3394 = !{!"1696"}
!3395 = !DILocalVariable(name: "qlen", scope: !3318, file: !56, line: 35, type: !34)
!3396 = !{!"1697"}
!3397 = !DILocation(line: 57, column: 2, scope: !3318)
!3398 = !{!"1698"}
!3399 = !{!"1699"}
!3400 = !{!"1700"}
!3401 = !{!"1701"}
!3402 = !{!"1702"}
!3403 = !DILocation(line: 57, column: 14, scope: !3318)
!3404 = !{!"1703"}
!3405 = !DILocation(line: 57, column: 18, scope: !3318)
!3406 = !{!"1704"}
!3407 = !DILocation(line: 57, column: 21, scope: !3318)
!3408 = !{!"1705"}
!3409 = !{!"1706"}
!3410 = !DILocation(line: 57, column: 24, scope: !3318)
!3411 = !{!"1707"}
!3412 = !{!"1708"}
!3413 = !{!"1709"}
!3414 = !{!"1710"}
!3415 = !DILocation(line: 58, column: 5, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3318, file: !56, line: 57, column: 30)
!3417 = !{!"1711"}
!3418 = !{!"1712"}
!3419 = !DILocation(line: 59, column: 8, scope: !3416)
!3420 = !{!"1713"}
!3421 = !{!"1714"}
!3422 = distinct !{!3422, !3397, !3423, !131}
!3423 = !DILocation(line: 60, column: 2, scope: !3318)
!3424 = !{!"1715"}
!3425 = !DILocation(line: 65, column: 18, scope: !3318)
!3426 = !{!"1716"}
!3427 = !DILocation(line: 65, column: 13, scope: !3318)
!3428 = !{!"1717"}
!3429 = !{!"1718"}
!3430 = !{!"1719"}
!3431 = !{!"1720"}
!3432 = !DILocation(line: 65, column: 40, scope: !3318)
!3433 = !{!"1721"}
!3434 = !DILocalVariable(name: "z", scope: !3318, file: !56, line: 40, type: !58)
!3435 = !{!"1722"}
!3436 = !DILocalVariable(name: "fwlen", scope: !3318, file: !56, line: 36, type: !34)
!3437 = !{!"1723"}
!3438 = !DILocation(line: 67, column: 2, scope: !3318)
!3439 = !{!"1724"}
!3440 = !{!"1725"}
!3441 = !{!"1726"}
!3442 = !{!"1727"}
!3443 = !{!"1728"}
!3444 = !DILocation(line: 67, column: 11, scope: !3318)
!3445 = !{!"1729"}
!3446 = !{!"1730"}
!3447 = !DILocation(line: 68, column: 5, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3318, file: !56, line: 67, column: 16)
!3449 = !{!"1731"}
!3450 = !{!"1732"}
!3451 = !DILocation(line: 69, column: 9, scope: !3448)
!3452 = !{!"1733"}
!3453 = !{!"1734"}
!3454 = distinct !{!3454, !3438, !3455, !131}
!3455 = !DILocation(line: 70, column: 2, scope: !3318)
!3456 = !{!"1735"}
!3457 = !DILocation(line: 75, column: 18, scope: !3318)
!3458 = !{!"1736"}
!3459 = !DILocation(line: 75, column: 8, scope: !3318)
!3460 = !{!"1737"}
!3461 = !{!"1738"}
!3462 = !DILocation(line: 80, column: 8, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3318, file: !56, line: 80, column: 6)
!3464 = !{!"1739"}
!3465 = !DILocation(line: 80, column: 16, scope: !3463)
!3466 = !{!"1740"}
!3467 = !DILocation(line: 80, column: 6, scope: !3318)
!3468 = !{!"1741"}
!3469 = !DILocation(line: 81, column: 3, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3463, file: !56, line: 80, column: 24)
!3471 = !{!"1742"}
!3472 = !DILocation(line: 87, column: 14, scope: !3318)
!3473 = !{!"1743"}
!3474 = !{!"1744"}
!3475 = !DILocation(line: 87, column: 23, scope: !3318)
!3476 = !{!"1745"}
!3477 = !DILocation(line: 87, column: 28, scope: !3318)
!3478 = !{!"1746"}
!3479 = !DILocation(line: 87, column: 9, scope: !3318)
!3480 = !{!"1747"}
!3481 = !DILocalVariable(name: "xlen", scope: !3318, file: !56, line: 38, type: !34)
!3482 = !{!"1748"}
!3483 = !DILocation(line: 92, column: 7, scope: !3318)
!3484 = !{!"1749"}
!3485 = !DILocalVariable(name: "mq", scope: !3318, file: !56, line: 41, type: !159)
!3486 = !{!"1750"}
!3487 = !DILocation(line: 93, column: 2, scope: !3318)
!3488 = !{!"1751"}
!3489 = !DILocation(line: 98, column: 10, scope: !3318)
!3490 = !{!"1752"}
!3491 = !DILocalVariable(name: "t1", scope: !3318, file: !56, line: 41, type: !159)
!3492 = !{!"1753"}
!3493 = !DILocation(line: 99, column: 2, scope: !3318)
!3494 = !{!"1754"}
!3495 = !DILocation(line: 106, column: 14, scope: !3318)
!3496 = !{!"1755"}
!3497 = !DILocation(line: 106, column: 10, scope: !3318)
!3498 = !{!"1756"}
!3499 = !DILocalVariable(name: "t2", scope: !3318, file: !56, line: 41, type: !159)
!3500 = !{!"1757"}
!3501 = !DILocation(line: 107, column: 18, scope: !3318)
!3502 = !{!"1758"}
!3503 = !{!"1759"}
!3504 = !DILocation(line: 107, column: 2, scope: !3318)
!3505 = !{!"1760"}
!3506 = !DILocation(line: 108, column: 2, scope: !3318)
!3507 = !{!"1761"}
!3508 = !DILocation(line: 119, column: 14, scope: !3318)
!3509 = !{!"1762"}
!3510 = !DILocation(line: 119, column: 10, scope: !3318)
!3511 = !{!"1763"}
!3512 = !DILocalVariable(name: "t3", scope: !3318, file: !56, line: 41, type: !159)
!3513 = !{!"1764"}
!3514 = !DILocation(line: 120, column: 16, scope: !3318)
!3515 = !{!"1765"}
!3516 = !DILocation(line: 120, column: 2, scope: !3318)
!3517 = !{!"1766"}
!3518 = !DILocalVariable(name: "u", scope: !3318, file: !56, line: 38, type: !34)
!3519 = !{!"1767"}
!3520 = !DILocalVariable(name: "r", scope: !3318, file: !56, line: 42, type: !6)
!3521 = !{!"1768"}
!3522 = !DILocation(line: 123, column: 2, scope: !3318)
!3523 = !{!"1769"}
!3524 = !{!"1770"}
!3525 = !{!"1771"}
!3526 = !{!"1772"}
!3527 = !{!"1773"}
!3528 = !DILocation(line: 123, column: 11, scope: !3318)
!3529 = !{!"1774"}
!3530 = !{!"1775"}
!3531 = !DILocation(line: 126, column: 5, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3318, file: !56, line: 123, column: 16)
!3533 = !{!"1776"}
!3534 = !{!"1777"}
!3535 = !DILocation(line: 127, column: 8, scope: !3532)
!3536 = !{!"1778"}
!3537 = !{!"1779"}
!3538 = !{!"1780"}
!3539 = !{!"1781"}
!3540 = !DILocalVariable(name: "wn", scope: !3532, file: !56, line: 124, type: !6)
!3541 = !DILocation(line: 0, scope: !3532)
!3542 = !{!"1782"}
!3543 = !DILocation(line: 128, column: 8, scope: !3532)
!3544 = !{!"1783"}
!3545 = !{!"1784"}
!3546 = !{!"1785"}
!3547 = !DILocalVariable(name: "wx", scope: !3532, file: !56, line: 124, type: !6)
!3548 = !{!"1786"}
!3549 = !DILocation(line: 129, column: 18, scope: !3532)
!3550 = !{!"1787"}
!3551 = !DILocation(line: 129, column: 12, scope: !3532)
!3552 = !{!"1788"}
!3553 = !DILocation(line: 129, column: 24, scope: !3532)
!3554 = !{!"1789"}
!3555 = !DILocation(line: 129, column: 30, scope: !3532)
!3556 = !{!"1790"}
!3557 = !{!"1791"}
!3558 = distinct !{!3558, !3522, !3559, !131}
!3559 = !DILocation(line: 130, column: 2, scope: !3318)
!3560 = !{!"1792"}
!3561 = !DILocation(line: 135, column: 14, scope: !3318)
!3562 = !{!"1793"}
!3563 = !DILocation(line: 135, column: 10, scope: !3318)
!3564 = !{!"1794"}
!3565 = !DILocalVariable(name: "mp", scope: !3318, file: !56, line: 41, type: !159)
!3566 = !{!"1795"}
!3567 = !DILocation(line: 136, column: 2, scope: !3318)
!3568 = !{!"1796"}
!3569 = !{!"1797"}
!3570 = !DILocation(line: 136, column: 24, scope: !3318)
!3571 = !{!"1798"}
!3572 = !{!"1799"}
!3573 = !DILocation(line: 141, column: 22, scope: !3318)
!3574 = !{!"1800"}
!3575 = !{!"1801"}
!3576 = !DILocation(line: 141, column: 8, scope: !3318)
!3577 = !{!"1802"}
!3578 = !DILocalVariable(name: "q0i", scope: !3318, file: !56, line: 37, type: !6)
!3579 = !{!"1803"}
!3580 = !DILocation(line: 142, column: 10, scope: !3318)
!3581 = !{!"1804"}
!3582 = !DILocalVariable(name: "s2", scope: !3318, file: !56, line: 41, type: !159)
!3583 = !{!"1805"}
!3584 = !DILocation(line: 143, column: 2, scope: !3318)
!3585 = !{!"1806"}
!3586 = !DILocation(line: 144, column: 33, scope: !3318)
!3587 = !{!"1807"}
!3588 = !{!"1808"}
!3589 = !DILocation(line: 144, column: 41, scope: !3318)
!3590 = !{!"1809"}
!3591 = !{!"1810"}
!3592 = !DILocation(line: 145, column: 10, scope: !3318)
!3593 = !{!"1811"}
!3594 = !DILocation(line: 145, column: 6, scope: !3318)
!3595 = !{!"1812"}
!3596 = !DILocation(line: 145, column: 28, scope: !3318)
!3597 = !{!"1813"}
!3598 = !DILocation(line: 145, column: 24, scope: !3318)
!3599 = !{!"1814"}
!3600 = !DILocation(line: 144, column: 7, scope: !3318)
!3601 = !{!"1815"}
!3602 = !DILocation(line: 144, column: 4, scope: !3318)
!3603 = !{!"1816"}
!3604 = !{!"1817"}
!3605 = !DILocation(line: 150, column: 22, scope: !3318)
!3606 = !{!"1818"}
!3607 = !{!"1819"}
!3608 = !DILocation(line: 150, column: 8, scope: !3318)
!3609 = !{!"1820"}
!3610 = !DILocalVariable(name: "p0i", scope: !3318, file: !56, line: 37, type: !6)
!3611 = !{!"1821"}
!3612 = !DILocation(line: 151, column: 14, scope: !3318)
!3613 = !{!"1822"}
!3614 = !DILocation(line: 151, column: 10, scope: !3318)
!3615 = !{!"1823"}
!3616 = !DILocalVariable(name: "s1", scope: !3318, file: !56, line: 41, type: !159)
!3617 = !{!"1824"}
!3618 = !DILocation(line: 152, column: 2, scope: !3318)
!3619 = !{!"1825"}
!3620 = !DILocation(line: 153, column: 33, scope: !3318)
!3621 = !{!"1826"}
!3622 = !{!"1827"}
!3623 = !DILocation(line: 153, column: 41, scope: !3318)
!3624 = !{!"1828"}
!3625 = !{!"1829"}
!3626 = !DILocation(line: 154, column: 10, scope: !3318)
!3627 = !{!"1830"}
!3628 = !DILocation(line: 154, column: 6, scope: !3318)
!3629 = !{!"1831"}
!3630 = !DILocation(line: 154, column: 28, scope: !3318)
!3631 = !{!"1832"}
!3632 = !DILocation(line: 154, column: 24, scope: !3318)
!3633 = !{!"1833"}
!3634 = !DILocation(line: 153, column: 7, scope: !3318)
!3635 = !{!"1834"}
!3636 = !DILocation(line: 153, column: 4, scope: !3318)
!3637 = !{!"1835"}
!3638 = !{!"1836"}
!3639 = !DILocation(line: 169, column: 14, scope: !3318)
!3640 = !{!"1837"}
!3641 = !DILocation(line: 169, column: 10, scope: !3318)
!3642 = !{!"1838"}
!3643 = !{!"1839"}
!3644 = !DILocation(line: 170, column: 14, scope: !3318)
!3645 = !{!"1840"}
!3646 = !DILocation(line: 170, column: 10, scope: !3318)
!3647 = !{!"1841"}
!3648 = !{!"1842"}
!3649 = !DILocation(line: 171, column: 2, scope: !3318)
!3650 = !{!"1843"}
!3651 = !DILocation(line: 172, column: 21, scope: !3318)
!3652 = !{!"1844"}
!3653 = !DILocation(line: 172, column: 2, scope: !3318)
!3654 = !{!"1845"}
!3655 = !DILocation(line: 173, column: 2, scope: !3318)
!3656 = !{!"1846"}
!3657 = !DILocation(line: 174, column: 31, scope: !3318)
!3658 = !{!"1847"}
!3659 = !{!"1848"}
!3660 = !DILocation(line: 174, column: 39, scope: !3318)
!3661 = !{!"1849"}
!3662 = !{!"1850"}
!3663 = !DILocation(line: 174, column: 2, scope: !3318)
!3664 = !{!"1851"}
!3665 = !DILocation(line: 175, column: 2, scope: !3318)
!3666 = !{!"1852"}
!3667 = !{!"1853"}
!3668 = !DILocation(line: 190, column: 2, scope: !3318)
!3669 = !{!"1854"}
!3670 = !DILocation(line: 196, column: 2, scope: !3318)
!3671 = !{!"1855"}
!3672 = !DILocation(line: 202, column: 13, scope: !3318)
!3673 = !{!"1856"}
!3674 = !DILocation(line: 202, column: 19, scope: !3318)
!3675 = !{!"1857"}
!3676 = !DILocation(line: 202, column: 2, scope: !3318)
!3677 = !{!"1858"}
!3678 = !{!"1859"}
!3679 = !DILocation(line: 203, column: 1, scope: !3318)
!3680 = !{!"1860"}
!3681 = distinct !DISubprogram(name: "br_i31_zero", scope: !136, file: !136, line: 1383, type: !764, scopeLine: 1384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !2)
!3682 = !DILocalVariable(name: "x", arg: 1, scope: !3681, file: !136, line: 1383, type: !159)
!3683 = !DILocation(line: 0, scope: !3681)
!3684 = !{!"1861"}
!3685 = !DILocalVariable(name: "bit_len", arg: 2, scope: !3681, file: !136, line: 1383, type: !6)
!3686 = !{!"1862"}
!3687 = !DILocation(line: 1385, column: 5, scope: !3681)
!3688 = !{!"1863"}
!3689 = !{!"1864"}
!3690 = !DILocation(line: 1385, column: 8, scope: !3681)
!3691 = !{!"1865"}
!3692 = !DILocation(line: 1386, column: 2, scope: !3681)
!3693 = !{!"1866"}
!3694 = !DILocation(line: 1386, column: 25, scope: !3681)
!3695 = !{!"1867"}
!3696 = !DILocation(line: 1386, column: 31, scope: !3681)
!3697 = !{!"1868"}
!3698 = !DILocation(line: 1386, column: 15, scope: !3681)
!3699 = !{!"1869"}
!3700 = !DILocation(line: 1386, column: 37, scope: !3681)
!3701 = !{!"1870"}
!3702 = !{!"1871"}
!3703 = !DILocation(line: 1387, column: 1, scope: !3681)
!3704 = !{!"1872"}
!3705 = distinct !DISubprogram(name: "br_rsa_pkcs1_sig_pad", scope: !60, file: !60, line: 29, type: !3706, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !2)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!6, !86, !86, !34, !6, !20}
!3708 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !3705, file: !60, line: 29, type: !86)
!3709 = !DILocation(line: 0, scope: !3705)
!3710 = !{!"1873"}
!3711 = !DILocalVariable(name: "hash", arg: 2, scope: !3705, file: !60, line: 30, type: !86)
!3712 = !{!"1874"}
!3713 = !DILocalVariable(name: "hash_len", arg: 3, scope: !3705, file: !60, line: 30, type: !34)
!3714 = !{!"1875"}
!3715 = !DILocalVariable(name: "n_bitlen", arg: 4, scope: !3705, file: !60, line: 31, type: !6)
!3716 = !{!"1876"}
!3717 = !DILocalVariable(name: "x", arg: 5, scope: !3705, file: !60, line: 31, type: !20)
!3718 = !{!"1877"}
!3719 = !DILocation(line: 60, column: 19, scope: !3705)
!3720 = !{!"1878"}
!3721 = !DILocation(line: 60, column: 24, scope: !3705)
!3722 = !{!"1879"}
!3723 = !DILocation(line: 60, column: 9, scope: !3705)
!3724 = !{!"1880"}
!3725 = !DILocalVariable(name: "xlen", scope: !3705, file: !60, line: 33, type: !34)
!3726 = !{!"1881"}
!3727 = !DILocation(line: 62, column: 15, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3705, file: !60, line: 62, column: 6)
!3729 = !{!"1882"}
!3730 = !DILocation(line: 62, column: 6, scope: !3705)
!3731 = !{!"1883"}
!3732 = !DILocation(line: 63, column: 23, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !60, line: 63, column: 7)
!3734 = distinct !DILexicalBlock(scope: !3728, file: !60, line: 62, column: 24)
!3735 = !{!"1884"}
!3736 = !DILocation(line: 63, column: 12, scope: !3733)
!3737 = !{!"1885"}
!3738 = !DILocation(line: 63, column: 7, scope: !3734)
!3739 = !{!"1886"}
!3740 = !DILocation(line: 64, column: 4, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3733, file: !60, line: 63, column: 29)
!3742 = !{!"1887"}
!3743 = !DILocation(line: 66, column: 3, scope: !3734)
!3744 = !{!"1888"}
!3745 = !DILocation(line: 66, column: 8, scope: !3734)
!3746 = !{!"1889"}
!3747 = !DILocation(line: 67, column: 3, scope: !3734)
!3748 = !{!"1890"}
!3749 = !DILocation(line: 67, column: 8, scope: !3734)
!3750 = !{!"1891"}
!3751 = !DILocation(line: 68, column: 12, scope: !3734)
!3752 = !{!"1892"}
!3753 = !DILocalVariable(name: "u", scope: !3705, file: !60, line: 33, type: !34)
!3754 = !{!"1893"}
!3755 = !DILocation(line: 69, column: 12, scope: !3734)
!3756 = !{!"1894"}
!3757 = !DILocation(line: 69, column: 25, scope: !3734)
!3758 = !{!"1895"}
!3759 = !DILocation(line: 69, column: 3, scope: !3734)
!3760 = !{!"1896"}
!3761 = !DILocation(line: 70, column: 7, scope: !3734)
!3762 = !{!"1897"}
!3763 = !DILocation(line: 70, column: 3, scope: !3734)
!3764 = !{!"1898"}
!3765 = !DILocation(line: 70, column: 12, scope: !3734)
!3766 = !{!"1899"}
!3767 = !DILocation(line: 71, column: 2, scope: !3734)
!3768 = !{!"1900"}
!3769 = !DILocation(line: 72, column: 8, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3728, file: !60, line: 71, column: 9)
!3771 = !{!"1901"}
!3772 = !{!"1902"}
!3773 = !{!"1903"}
!3774 = !DILocalVariable(name: "x3", scope: !3705, file: !60, line: 33, type: !34)
!3775 = !{!"1904"}
!3776 = !DILocation(line: 78, column: 18, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3770, file: !60, line: 78, column: 7)
!3778 = !{!"1905"}
!3779 = !DILocation(line: 78, column: 29, scope: !3777)
!3780 = !{!"1906"}
!3781 = !DILocation(line: 78, column: 12, scope: !3777)
!3782 = !{!"1907"}
!3783 = !DILocation(line: 78, column: 7, scope: !3770)
!3784 = !{!"1908"}
!3785 = !DILocation(line: 79, column: 4, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3777, file: !60, line: 78, column: 36)
!3787 = !{!"1909"}
!3788 = !DILocation(line: 81, column: 3, scope: !3770)
!3789 = !{!"1910"}
!3790 = !DILocation(line: 81, column: 8, scope: !3770)
!3791 = !{!"1911"}
!3792 = !DILocation(line: 82, column: 3, scope: !3770)
!3793 = !{!"1912"}
!3794 = !DILocation(line: 82, column: 8, scope: !3770)
!3795 = !{!"1913"}
!3796 = !DILocation(line: 83, column: 12, scope: !3770)
!3797 = !{!"1914"}
!3798 = !DILocation(line: 83, column: 17, scope: !3770)
!3799 = !{!"1915"}
!3800 = !DILocation(line: 83, column: 28, scope: !3770)
!3801 = !{!"1916"}
!3802 = !{!"1917"}
!3803 = !DILocation(line: 84, column: 12, scope: !3770)
!3804 = !{!"1918"}
!3805 = !DILocation(line: 84, column: 25, scope: !3770)
!3806 = !{!"1919"}
!3807 = !DILocation(line: 84, column: 3, scope: !3770)
!3808 = !{!"1920"}
!3809 = !DILocation(line: 85, column: 3, scope: !3770)
!3810 = !{!"1921"}
!3811 = !DILocation(line: 85, column: 8, scope: !3770)
!3812 = !{!"1922"}
!3813 = !DILocation(line: 86, column: 7, scope: !3770)
!3814 = !{!"1923"}
!3815 = !DILocation(line: 86, column: 3, scope: !3770)
!3816 = !{!"1924"}
!3817 = !DILocation(line: 86, column: 12, scope: !3770)
!3818 = !{!"1925"}
!3819 = !DILocation(line: 87, column: 17, scope: !3770)
!3820 = !{!"1926"}
!3821 = !DILocation(line: 87, column: 28, scope: !3770)
!3822 = !{!"1927"}
!3823 = !DILocation(line: 87, column: 14, scope: !3770)
!3824 = !{!"1928"}
!3825 = !DILocation(line: 87, column: 7, scope: !3770)
!3826 = !{!"1929"}
!3827 = !DILocation(line: 87, column: 3, scope: !3770)
!3828 = !{!"1930"}
!3829 = !DILocation(line: 87, column: 12, scope: !3770)
!3830 = !{!"1931"}
!3831 = !DILocation(line: 88, column: 7, scope: !3770)
!3832 = !{!"1932"}
!3833 = !DILocation(line: 88, column: 3, scope: !3770)
!3834 = !{!"1933"}
!3835 = !DILocation(line: 88, column: 12, scope: !3770)
!3836 = !{!"1934"}
!3837 = !DILocation(line: 89, column: 17, scope: !3770)
!3838 = !{!"1935"}
!3839 = !DILocation(line: 89, column: 14, scope: !3770)
!3840 = !{!"1936"}
!3841 = !DILocation(line: 89, column: 7, scope: !3770)
!3842 = !{!"1937"}
!3843 = !DILocation(line: 89, column: 3, scope: !3770)
!3844 = !{!"1938"}
!3845 = !DILocation(line: 89, column: 12, scope: !3770)
!3846 = !{!"1939"}
!3847 = !DILocation(line: 90, column: 7, scope: !3770)
!3848 = !{!"1940"}
!3849 = !DILocation(line: 90, column: 3, scope: !3770)
!3850 = !{!"1941"}
!3851 = !DILocation(line: 90, column: 12, scope: !3770)
!3852 = !{!"1942"}
!3853 = !DILocation(line: 91, column: 12, scope: !3770)
!3854 = !{!"1943"}
!3855 = !DILocation(line: 91, column: 16, scope: !3770)
!3856 = !{!"1944"}
!3857 = !DILocation(line: 91, column: 34, scope: !3770)
!3858 = !{!"1945"}
!3859 = !DILocation(line: 91, column: 3, scope: !3770)
!3860 = !{!"1946"}
!3861 = !DILocation(line: 92, column: 11, scope: !3770)
!3862 = !{!"1947"}
!3863 = !DILocation(line: 92, column: 5, scope: !3770)
!3864 = !{!"1948"}
!3865 = !{!"1949"}
!3866 = !DILocation(line: 93, column: 7, scope: !3770)
!3867 = !{!"1950"}
!3868 = !{!"1951"}
!3869 = !DILocation(line: 93, column: 3, scope: !3770)
!3870 = !{!"1952"}
!3871 = !DILocation(line: 93, column: 11, scope: !3770)
!3872 = !{!"1953"}
!3873 = !DILocation(line: 94, column: 7, scope: !3770)
!3874 = !{!"1954"}
!3875 = !{!"1955"}
!3876 = !DILocation(line: 94, column: 3, scope: !3770)
!3877 = !{!"1956"}
!3878 = !DILocation(line: 94, column: 11, scope: !3770)
!3879 = !{!"1957"}
!3880 = !DILocation(line: 95, column: 7, scope: !3770)
!3881 = !{!"1958"}
!3882 = !{!"1959"}
!3883 = !DILocation(line: 95, column: 3, scope: !3770)
!3884 = !{!"1960"}
!3885 = !DILocation(line: 95, column: 11, scope: !3770)
!3886 = !{!"1961"}
!3887 = !DILocation(line: 96, column: 13, scope: !3770)
!3888 = !{!"1962"}
!3889 = !DILocation(line: 96, column: 7, scope: !3770)
!3890 = !{!"1963"}
!3891 = !{!"1964"}
!3892 = !DILocation(line: 96, column: 3, scope: !3770)
!3893 = !{!"1965"}
!3894 = !DILocation(line: 96, column: 11, scope: !3770)
!3895 = !{!"1966"}
!3896 = !{!"1967"}
!3897 = !DILocation(line: 0, scope: !3728)
!3898 = !{!"1968"}
!3899 = !{!"1969"}
!3900 = !DILocation(line: 98, column: 11, scope: !3705)
!3901 = !{!"1970"}
!3902 = !DILocation(line: 98, column: 2, scope: !3705)
!3903 = !{!"1971"}
!3904 = !DILocation(line: 99, column: 2, scope: !3705)
!3905 = !{!"1972"}
!3906 = !{!"1973"}
!3907 = !DILocation(line: 100, column: 1, scope: !3705)
!3908 = !{!"1974"}
!3909 = distinct !DISubprogram(name: "sign_wrapper", scope: !64, file: !64, line: 3, type: !3910, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !2)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !86, !86, !34, !3912, !20}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3914)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !3274, line: 205, baseType: !3915)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3274, line: 182, size: 704, elements: !3916)
!3916 = !{!3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !3915, file: !3274, line: 184, baseType: !6, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3915, file: !3274, line: 186, baseType: !20, size: 64, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !3915, file: !3274, line: 188, baseType: !34, size: 64, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3915, file: !3274, line: 190, baseType: !20, size: 64, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !3915, file: !3274, line: 192, baseType: !34, size: 64, offset: 256)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !3915, file: !3274, line: 194, baseType: !20, size: 64, offset: 320)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !3915, file: !3274, line: 196, baseType: !34, size: 64, offset: 384)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !3915, file: !3274, line: 198, baseType: !20, size: 64, offset: 448)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !3915, file: !3274, line: 200, baseType: !34, size: 64, offset: 512)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !3915, file: !3274, line: 202, baseType: !20, size: 64, offset: 576)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !3915, file: !3274, line: 204, baseType: !34, size: 64, offset: 640)
!3928 = !DILocalVariable(name: "hash_oid", arg: 1, scope: !3909, file: !64, line: 3, type: !86)
!3929 = !DILocation(line: 0, scope: !3909)
!3930 = !{!"1975"}
!3931 = !DILocalVariable(name: "hash", arg: 2, scope: !3909, file: !64, line: 4, type: !86)
!3932 = !{!"1976"}
!3933 = !DILocalVariable(name: "hash_len", arg: 3, scope: !3909, file: !64, line: 4, type: !34)
!3934 = !{!"1977"}
!3935 = !DILocalVariable(name: "sk", arg: 4, scope: !3909, file: !64, line: 5, type: !3912)
!3936 = !{!"1978"}
!3937 = !DILocalVariable(name: "x", arg: 5, scope: !3909, file: !64, line: 5, type: !20)
!3938 = !{!"1979"}
!3939 = !DILocation(line: 6, column: 12, scope: !3909)
!3940 = !{!"1980"}
!3941 = !DILocation(line: 6, column: 2, scope: !3909)
!3942 = !{!"1981"}
!3943 = !DILocation(line: 7, column: 12, scope: !3909)
!3944 = !{!"1982"}
!3945 = !DILocation(line: 7, column: 2, scope: !3909)
!3946 = !{!"1983"}
!3947 = !DILocation(line: 8, column: 12, scope: !3909)
!3948 = !{!"1984"}
!3949 = !DILocation(line: 8, column: 2, scope: !3909)
!3950 = !{!"1985"}
!3951 = !DILocation(line: 9, column: 12, scope: !3909)
!3952 = !{!"1986"}
!3953 = !DILocation(line: 9, column: 2, scope: !3909)
!3954 = !{!"1987"}
!3955 = !DILocation(line: 10, column: 12, scope: !3909)
!3956 = !{!"1988"}
!3957 = !DILocation(line: 10, column: 2, scope: !3909)
!3958 = !{!"1989"}
!3959 = !DILocation(line: 12, column: 30, scope: !3909)
!3960 = !{!"1990"}
!3961 = !{!"1991"}
!3962 = !DILocation(line: 12, column: 12, scope: !3909)
!3963 = !{!"1992"}
!3964 = !DILocation(line: 12, column: 2, scope: !3909)
!3965 = !{!"1993"}
!3966 = !DILocation(line: 13, column: 30, scope: !3909)
!3967 = !{!"1994"}
!3968 = !{!"1995"}
!3969 = !DILocation(line: 13, column: 12, scope: !3909)
!3970 = !{!"1996"}
!3971 = !DILocation(line: 13, column: 2, scope: !3909)
!3972 = !{!"1997"}
!3973 = !DILocation(line: 14, column: 30, scope: !3909)
!3974 = !{!"1998"}
!3975 = !{!"1999"}
!3976 = !DILocation(line: 14, column: 12, scope: !3909)
!3977 = !{!"2000"}
!3978 = !DILocation(line: 14, column: 2, scope: !3909)
!3979 = !{!"2001"}
!3980 = !DILocation(line: 15, column: 30, scope: !3909)
!3981 = !{!"2002"}
!3982 = !{!"2003"}
!3983 = !DILocation(line: 15, column: 12, scope: !3909)
!3984 = !{!"2004"}
!3985 = !DILocation(line: 15, column: 2, scope: !3909)
!3986 = !{!"2005"}
!3987 = !DILocation(line: 16, column: 30, scope: !3909)
!3988 = !{!"2006"}
!3989 = !{!"2007"}
!3990 = !DILocation(line: 16, column: 12, scope: !3909)
!3991 = !{!"2008"}
!3992 = !DILocation(line: 16, column: 2, scope: !3909)
!3993 = !{!"2009"}
!3994 = !DILocation(line: 18, column: 30, scope: !3909)
!3995 = !{!"2010"}
!3996 = !{!"2011"}
!3997 = !DILocation(line: 18, column: 12, scope: !3909)
!3998 = !{!"2012"}
!3999 = !DILocation(line: 18, column: 2, scope: !3909)
!4000 = !{!"2013"}
!4001 = !DILocation(line: 19, column: 30, scope: !3909)
!4002 = !{!"2014"}
!4003 = !{!"2015"}
!4004 = !DILocation(line: 19, column: 12, scope: !3909)
!4005 = !{!"2016"}
!4006 = !DILocation(line: 19, column: 2, scope: !3909)
!4007 = !{!"2017"}
!4008 = !DILocation(line: 20, column: 30, scope: !3909)
!4009 = !{!"2018"}
!4010 = !{!"2019"}
!4011 = !DILocation(line: 20, column: 12, scope: !3909)
!4012 = !{!"2020"}
!4013 = !DILocation(line: 20, column: 2, scope: !3909)
!4014 = !{!"2021"}
!4015 = !DILocation(line: 21, column: 30, scope: !3909)
!4016 = !{!"2022"}
!4017 = !{!"2023"}
!4018 = !DILocation(line: 21, column: 12, scope: !3909)
!4019 = !{!"2024"}
!4020 = !DILocation(line: 21, column: 2, scope: !3909)
!4021 = !{!"2025"}
!4022 = !DILocation(line: 22, column: 30, scope: !3909)
!4023 = !{!"2026"}
!4024 = !{!"2027"}
!4025 = !DILocation(line: 22, column: 12, scope: !3909)
!4026 = !{!"2028"}
!4027 = !DILocation(line: 22, column: 2, scope: !3909)
!4028 = !{!"2029"}
!4029 = !DILocation(line: 23, column: 30, scope: !3909)
!4030 = !{!"2030"}
!4031 = !{!"2031"}
!4032 = !DILocation(line: 23, column: 12, scope: !3909)
!4033 = !{!"2032"}
!4034 = !DILocation(line: 23, column: 2, scope: !3909)
!4035 = !{!"2033"}
!4036 = !DILocation(line: 25, column: 12, scope: !3909)
!4037 = !{!"2034"}
!4038 = !DILocation(line: 25, column: 2, scope: !3909)
!4039 = !{!"2035"}
!4040 = !DILocation(line: 26, column: 12, scope: !3909)
!4041 = !{!"2036"}
!4042 = !DILocation(line: 26, column: 2, scope: !3909)
!4043 = !{!"2037"}
!4044 = !DILocation(line: 27, column: 12, scope: !3909)
!4045 = !{!"2038"}
!4046 = !DILocation(line: 27, column: 2, scope: !3909)
!4047 = !{!"2039"}
!4048 = !DILocation(line: 30, column: 2, scope: !3909)
!4049 = !{!"2040"}
!4050 = !DILocation(line: 31, column: 1, scope: !3909)
!4051 = !{!"2041"}
!4052 = distinct !DISubprogram(name: "sign_wrapper_t", scope: !64, file: !64, line: 50, type: !4053, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !2)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{null}
!4055 = !{!"2042"}
!4056 = !DILocation(line: 52, column: 33, scope: !4052)
!4057 = !{!"2043"}
!4058 = !DILocalVariable(name: "hash_oid", scope: !4052, file: !64, line: 52, type: !86)
!4059 = !DILocation(line: 0, scope: !4052)
!4060 = !{!"2044"}
!4061 = !DILocation(line: 53, column: 30, scope: !4052)
!4062 = !{!"2045"}
!4063 = !DILocalVariable(name: "hash", scope: !4052, file: !64, line: 53, type: !86)
!4064 = !{!"2046"}
!4065 = !DILocation(line: 54, column: 20, scope: !4052)
!4066 = !{!"2047"}
!4067 = !DILocalVariable(name: "hash_len", scope: !4052, file: !64, line: 54, type: !34)
!4068 = !{!"2048"}
!4069 = !DILocalVariable(name: "key", scope: !4052, file: !64, line: 55, type: !3914)
!4070 = !DILocation(line: 55, column: 21, scope: !4052)
!4071 = !{!"2049"}
!4072 = !DILocation(line: 55, column: 27, scope: !4052)
!4073 = !{!"2050"}
!4074 = !DILocalVariable(name: "sk", scope: !4052, file: !64, line: 56, type: !4075)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!4076 = !{!"2051"}
!4077 = !DILocation(line: 57, column: 22, scope: !4052)
!4078 = !{!"2052"}
!4079 = !DILocalVariable(name: "x", scope: !4052, file: !64, line: 57, type: !20)
!4080 = !{!"2053"}
!4081 = !DILocation(line: 58, column: 24, scope: !4052)
!4082 = !{!"2054"}
!4083 = !{!"2055"}
!4084 = !DILocalVariable(name: "p", scope: !4052, file: !64, line: 58, type: !20)
!4085 = !{!"2056"}
!4086 = !DILocation(line: 59, column: 24, scope: !4052)
!4087 = !{!"2057"}
!4088 = !{!"2058"}
!4089 = !DILocalVariable(name: "q", scope: !4052, file: !64, line: 59, type: !20)
!4090 = !{!"2059"}
!4091 = !DILocation(line: 60, column: 25, scope: !4052)
!4092 = !{!"2060"}
!4093 = !{!"2061"}
!4094 = !DILocalVariable(name: "dp", scope: !4052, file: !64, line: 60, type: !20)
!4095 = !{!"2062"}
!4096 = !DILocation(line: 61, column: 25, scope: !4052)
!4097 = !{!"2063"}
!4098 = !{!"2064"}
!4099 = !DILocalVariable(name: "dq", scope: !4052, file: !64, line: 61, type: !20)
!4100 = !{!"2065"}
!4101 = !DILocation(line: 62, column: 25, scope: !4052)
!4102 = !{!"2066"}
!4103 = !{!"2067"}
!4104 = !DILocalVariable(name: "iq", scope: !4052, file: !64, line: 62, type: !20)
!4105 = !{!"2068"}
!4106 = !DILocation(line: 64, column: 1, scope: !4052)
!4107 = !{!"2069"}
!4108 = !DILocation(line: 66, column: 5, scope: !4052)
!4109 = !{!"2070"}
!4110 = !DILocation(line: 66, column: 7, scope: !4052)
!4111 = !{!"2071"}
!4112 = !DILocation(line: 67, column: 5, scope: !4052)
!4113 = !{!"2072"}
!4114 = !DILocation(line: 67, column: 7, scope: !4052)
!4115 = !{!"2073"}
!4116 = !DILocation(line: 68, column: 5, scope: !4052)
!4117 = !{!"2074"}
!4118 = !DILocation(line: 68, column: 8, scope: !4052)
!4119 = !{!"2075"}
!4120 = !DILocation(line: 69, column: 5, scope: !4052)
!4121 = !{!"2076"}
!4122 = !DILocation(line: 69, column: 8, scope: !4052)
!4123 = !{!"2077"}
!4124 = !DILocation(line: 70, column: 5, scope: !4052)
!4125 = !{!"2078"}
!4126 = !DILocation(line: 70, column: 8, scope: !4052)
!4127 = !{!"2079"}
!4128 = !DILocation(line: 71, column: 1, scope: !4052)
!4129 = !{!"2080"}
!4130 = !DILocation(line: 84, column: 1, scope: !4052)
!4131 = !{!"2081"}
