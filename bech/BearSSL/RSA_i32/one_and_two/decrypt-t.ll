; ModuleID = 'decrypt-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_rsa_private_key = type { i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64 }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !58 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !64, metadata !DIExpression()), !dbg !65, !psr.id !66
  call void @llvm.dbg.value(metadata i8* %1, metadata !67, metadata !DIExpression()), !dbg !65, !psr.id !68
  call void @llvm.dbg.value(metadata i8* %2, metadata !69, metadata !DIExpression()), !dbg !65, !psr.id !70
  call void @llvm.dbg.value(metadata i64 %3, metadata !71, metadata !DIExpression()), !dbg !65, !psr.id !72
  call void @llvm.dbg.value(metadata i8* %1, metadata !73, metadata !DIExpression()), !dbg !65, !psr.id !74
  call void @llvm.dbg.value(metadata i8* %2, metadata !75, metadata !DIExpression()), !dbg !65, !psr.id !78
  br label %5, !dbg !79, !psr.id !80

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ], !psr.id !81, !ValueTainted !82
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !65, !psr.id !83, !PointTainted !84
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !65, !psr.id !85, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %.0, metadata !75, metadata !DIExpression()), !dbg !65, !psr.id !86
  call void @llvm.dbg.value(metadata i8* %.01, metadata !73, metadata !DIExpression()), !dbg !65, !psr.id !87
  call void @llvm.dbg.value(metadata i64 %.02, metadata !71, metadata !DIExpression()), !dbg !65, !psr.id !88
  %6 = add i64 %.02, -1, !dbg !89, !psr.id !90, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %6, metadata !71, metadata !DIExpression()), !dbg !65, !psr.id !91
  %7 = icmp ugt i64 %.02, 0, !dbg !92, !psr.id !93, !ValueTainted !82
  br i1 %7, label %8, label %17, !dbg !79, !psr.id !94, !Tainted !95

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !96, !psr.id !98, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %9, metadata !75, metadata !DIExpression()), !dbg !65, !psr.id !99
  %10 = load i8, i8* %.0, align 1, !dbg !100, !psr.id !101, !ValueTainted !82
  %11 = zext i8 %10 to i32, !dbg !100, !psr.id !102, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %11, metadata !103, metadata !DIExpression()), !dbg !104, !psr.id !105
  %12 = load i8, i8* %.01, align 1, !dbg !106, !psr.id !107, !ValueTainted !82
  %13 = zext i8 %12 to i32, !dbg !106, !psr.id !108, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %13, metadata !109, metadata !DIExpression()), !dbg !104, !psr.id !110
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !111, !psr.id !112, !ValueTainted !82
  %15 = trunc i32 %14 to i8, !dbg !111, !psr.id !113, !ValueTainted !82
  store i8 %15, i8* %.01, align 1, !dbg !114, !psr.id !115
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !116, !psr.id !117, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %16, metadata !73, metadata !DIExpression()), !dbg !65, !psr.id !118
  br label %5, !dbg !79, !llvm.loop !119, !psr.id !122

17:                                               ; preds = %5
  ret void, !dbg !123, !psr.id !124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !125 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !129, metadata !DIExpression()), !dbg !130, !psr.id !131
  call void @llvm.dbg.value(metadata i32 %1, metadata !132, metadata !DIExpression()), !dbg !130, !psr.id !133
  call void @llvm.dbg.value(metadata i32 %2, metadata !134, metadata !DIExpression()), !dbg !130, !psr.id !135
  %4 = sub i32 0, %0, !dbg !136, !psr.id !137, !ValueTainted !82
  %5 = xor i32 %1, %2, !dbg !138, !psr.id !139, !ValueTainted !82
  %6 = and i32 %4, %5, !dbg !140, !psr.id !141, !ValueTainted !82
  %7 = xor i32 %2, %6, !dbg !142, !psr.id !143, !ValueTainted !82
  ret i32 %7, !dbg !144, !psr.id !145
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @decrypt_wrapper(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !166, metadata !DIExpression()), !dbg !167, !psr.id !168
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !169, metadata !DIExpression()), !dbg !167, !psr.id !170
  %3 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !171, !psr.id !172
  call void @public_in(%struct.smack_value* %3), !dbg !173, !psr.id !174
  %4 = call %struct.smack_value* (%struct.br_rsa_private_key*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_rsa_private_key*, ...)*)(%struct.br_rsa_private_key* %1), !dbg !175, !psr.id !176
  call void @public_in(%struct.smack_value* %4), !dbg !177, !psr.id !178
  %5 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !179, !psr.id !180
  %6 = load i8*, i8** %5, align 8, !dbg !179, !psr.id !181
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !182, !psr.id !183
  call void @public_in(%struct.smack_value* %7), !dbg !184, !psr.id !185
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !186, !psr.id !187
  %9 = load i8*, i8** %8, align 8, !dbg !186, !psr.id !188
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %9), !dbg !189, !psr.id !190
  call void @public_in(%struct.smack_value* %10), !dbg !191, !psr.id !192
  %11 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !193, !psr.id !194
  %12 = load i8*, i8** %11, align 8, !dbg !193, !psr.id !195
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %12), !dbg !196, !psr.id !197
  call void @public_in(%struct.smack_value* %13), !dbg !198, !psr.id !199
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !200, !psr.id !201
  %15 = load i8*, i8** %14, align 8, !dbg !200, !psr.id !202
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %15), !dbg !203, !psr.id !204
  call void @public_in(%struct.smack_value* %16), !dbg !205, !psr.id !206
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !207, !psr.id !208
  %18 = load i8*, i8** %17, align 8, !dbg !207, !psr.id !209
  %19 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %18), !dbg !210, !psr.id !211
  call void @public_in(%struct.smack_value* %19), !dbg !212, !psr.id !213
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !214, !psr.id !215
  %21 = load i64, i64* %20, align 8, !dbg !214, !psr.id !216
  %22 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %21), !dbg !217, !psr.id !218
  call void @public_in(%struct.smack_value* %22), !dbg !219, !psr.id !220
  %23 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !221, !psr.id !222
  %24 = load i64, i64* %23, align 8, !dbg !221, !psr.id !223
  %25 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %24), !dbg !224, !psr.id !225
  call void @public_in(%struct.smack_value* %25), !dbg !226, !psr.id !227
  %26 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !228, !psr.id !229
  %27 = load i64, i64* %26, align 8, !dbg !228, !psr.id !230
  %28 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %27), !dbg !231, !psr.id !232
  call void @public_in(%struct.smack_value* %28), !dbg !233, !psr.id !234
  %29 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !235, !psr.id !236
  %30 = load i64, i64* %29, align 8, !dbg !235, !psr.id !237
  %31 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %30), !dbg !238, !psr.id !239
  call void @public_in(%struct.smack_value* %31), !dbg !240, !psr.id !241
  %32 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !242, !psr.id !243
  %33 = load i64, i64* %32, align 8, !dbg !242, !psr.id !244
  %34 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %33), !dbg !245, !psr.id !246
  call void @public_in(%struct.smack_value* %34), !dbg !247, !psr.id !248
  %35 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !249, !psr.id !250
  %36 = load i32, i32* %35, align 8, !dbg !249, !psr.id !251
  %37 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %36), !dbg !252, !psr.id !253
  call void @public_in(%struct.smack_value* %37), !dbg !254, !psr.id !255
  %38 = call i32 @br_rsa_i32_private(i8* %0, %struct.br_rsa_private_key* %1), !dbg !256, !psr.id !257
  ret void, !dbg !258, !psr.id !259
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @decrypt_wrapper_t() #0 !dbg !260 {
  %1 = alloca i8, align 1, !psr.id !263
  %2 = alloca %struct.br_rsa_private_key, align 8, !psr.id !264
  call void @llvm.dbg.declare(metadata i8* %1, metadata !265, metadata !DIExpression()), !dbg !266, !psr.id !267
  %3 = call zeroext i8 (...) @getcharpt(), !dbg !268, !psr.id !269, !ValueTainted !82, !PointTainted !84
  store i8 %3, i8* %1, align 1, !dbg !266, !psr.id !270
  call void @llvm.dbg.value(metadata i8* %1, metadata !271, metadata !DIExpression()), !dbg !272, !psr.id !273
  call void @llvm.dbg.declare(metadata %struct.br_rsa_private_key* %2, metadata !274, metadata !DIExpression()), !dbg !275, !psr.id !276
  call void (%struct.br_rsa_private_key*, ...) @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8 %2), !dbg !277, !psr.id !278
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %2, metadata !279, metadata !DIExpression()), !dbg !272, !psr.id !281
  %4 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 1, !dbg !282, !psr.id !283
  %5 = load i8*, i8** %4, align 8, !dbg !282, !psr.id !284, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %5, metadata !285, metadata !DIExpression()), !dbg !272, !psr.id !286
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 3, !dbg !287, !psr.id !288
  %7 = load i8*, i8** %6, align 8, !dbg !287, !psr.id !289, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %7, metadata !290, metadata !DIExpression()), !dbg !272, !psr.id !291
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 5, !dbg !292, !psr.id !293
  %9 = load i8*, i8** %8, align 8, !dbg !292, !psr.id !294, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %9, metadata !295, metadata !DIExpression()), !dbg !272, !psr.id !296
  %10 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 7, !dbg !297, !psr.id !298
  %11 = load i8*, i8** %10, align 8, !dbg !297, !psr.id !299, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %11, metadata !300, metadata !DIExpression()), !dbg !272, !psr.id !301
  %12 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 9, !dbg !302, !psr.id !303
  %13 = load i8*, i8** %12, align 8, !dbg !302, !psr.id !304, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %13, metadata !305, metadata !DIExpression()), !dbg !272, !psr.id !306
  call void @vfct_taintseed(i8* %5, i8* %7, i8* %9, i8* %11, i8* %13), !dbg !307, !psr.id !308
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 1, !dbg !309, !psr.id !310
  store i8* %5, i8** %14, align 8, !dbg !311, !psr.id !312
  %15 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 3, !dbg !313, !psr.id !314
  store i8* %7, i8** %15, align 8, !dbg !315, !psr.id !316
  %16 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 5, !dbg !317, !psr.id !318
  store i8* %9, i8** %16, align 8, !dbg !319, !psr.id !320
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 7, !dbg !321, !psr.id !322
  store i8* %11, i8** %17, align 8, !dbg !323, !psr.id !324
  %18 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 9, !dbg !325, !psr.id !326
  store i8* %13, i8** %18, align 8, !dbg !327, !psr.id !328
  %19 = call i32 @br_rsa_i32_private(i8* %1, %struct.br_rsa_private_key* %2), !dbg !329, !psr.id !330, !ValueTainted !82
  ret void, !dbg !331, !psr.id !332
}

declare dso_local zeroext i8 @getcharpt(...) #2

declare dso_local void @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8, ...) #2

declare dso_local void @vfct_taintseed(i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i32_add(i32* %0, i32* %1, i32 %2) #0 !dbg !333 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !339, metadata !DIExpression()), !dbg !340, !psr.id !341
  call void @llvm.dbg.value(metadata i32* %1, metadata !342, metadata !DIExpression()), !dbg !340, !psr.id !343
  call void @llvm.dbg.value(metadata i32 %2, metadata !344, metadata !DIExpression()), !dbg !340, !psr.id !345
  call void @llvm.dbg.value(metadata i32 0, metadata !346, metadata !DIExpression()), !dbg !340, !psr.id !347
  %4 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !348, !psr.id !349, !PointTainted !84
  %5 = load i32, i32* %4, align 4, !dbg !348, !psr.id !350, !ValueTainted !82
  %6 = add i32 %5, 63, !dbg !351, !psr.id !352, !ValueTainted !82
  %7 = lshr i32 %6, 5, !dbg !353, !psr.id !354, !ValueTainted !82
  %8 = zext i32 %7 to i64, !dbg !355, !psr.id !356, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %8, metadata !357, metadata !DIExpression()), !dbg !340, !psr.id !358
  call void @llvm.dbg.value(metadata i64 1, metadata !359, metadata !DIExpression()), !dbg !340, !psr.id !360
  br label %9, !dbg !361, !psr.id !363

9:                                                ; preds = %24, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %24 ], !dbg !340, !psr.id !364, !ValueTainted !82
  %.0 = phi i64 [ 1, %3 ], [ %25, %24 ], !dbg !365, !psr.id !366
  call void @llvm.dbg.value(metadata i64 %.0, metadata !359, metadata !DIExpression()), !dbg !340, !psr.id !367
  call void @llvm.dbg.value(metadata i32 %.01, metadata !346, metadata !DIExpression()), !dbg !340, !psr.id !368
  %10 = icmp ult i64 %.0, %8, !dbg !369, !psr.id !371, !ValueTainted !82
  br i1 %10, label %11, label %26, !dbg !372, !psr.id !373, !Tainted !95

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !374, !psr.id !376, !PointTainted !84
  %13 = load i32, i32* %12, align 4, !dbg !374, !psr.id !377, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %13, metadata !378, metadata !DIExpression()), !dbg !379, !psr.id !380
  %14 = getelementptr inbounds i32, i32* %1, i64 %.0, !dbg !381, !psr.id !382
  %15 = load i32, i32* %14, align 4, !dbg !381, !psr.id !383, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %15, metadata !384, metadata !DIExpression()), !dbg !379, !psr.id !385
  %16 = add i32 %13, %15, !dbg !386, !psr.id !387, !ValueTainted !82
  %17 = add i32 %16, %.01, !dbg !388, !psr.id !389, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %17, metadata !390, metadata !DIExpression()), !dbg !379, !psr.id !391
  %18 = call i32 @EQ(i32 %17, i32 %13), !dbg !392, !psr.id !393, !ValueTainted !82
  %19 = and i32 %.01, %18, !dbg !394, !psr.id !395, !ValueTainted !82
  %20 = call i32 @GT(i32 %13, i32 %17), !dbg !396, !psr.id !397, !ValueTainted !82
  %21 = or i32 %19, %20, !dbg !398, !psr.id !399, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %21, metadata !346, metadata !DIExpression()), !dbg !340, !psr.id !400
  %22 = call i32 @MUX.1(i32 %2, i32 %17, i32 %13), !dbg !401, !psr.id !402, !ValueTainted !82, !PointTainted !84
  %23 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !403, !psr.id !404, !PointTainted !84
  store i32 %22, i32* %23, align 4, !dbg !405, !psr.id !406
  br label %24, !dbg !407, !psr.id !408

24:                                               ; preds = %11
  %25 = add i64 %.0, 1, !dbg !409, !psr.id !410
  call void @llvm.dbg.value(metadata i64 %25, metadata !359, metadata !DIExpression()), !dbg !340, !psr.id !411
  br label %9, !dbg !412, !llvm.loop !413, !psr.id !415

26:                                               ; preds = %9
  ret i32 %.01, !dbg !416, !psr.id !417
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !418 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !421, metadata !DIExpression()), !dbg !422, !psr.id !423
  call void @llvm.dbg.value(metadata i32 %1, metadata !424, metadata !DIExpression()), !dbg !422, !psr.id !425
  %3 = xor i32 %0, %1, !dbg !426, !psr.id !427, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %3, metadata !428, metadata !DIExpression()), !dbg !422, !psr.id !429
  %4 = sub i32 0, %3, !dbg !430, !psr.id !431, !ValueTainted !82
  %5 = or i32 %3, %4, !dbg !432, !psr.id !433, !ValueTainted !82
  %6 = lshr i32 %5, 31, !dbg !434, !psr.id !435, !ValueTainted !82
  %7 = call i32 @NOT(i32 %6), !dbg !436, !psr.id !437, !ValueTainted !82
  ret i32 %7, !dbg !438, !psr.id !439
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !440 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !441, metadata !DIExpression()), !dbg !442, !psr.id !443
  call void @llvm.dbg.value(metadata i32 %1, metadata !444, metadata !DIExpression()), !dbg !442, !psr.id !445
  %3 = sub i32 %1, %0, !dbg !446, !psr.id !447, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %3, metadata !448, metadata !DIExpression()), !dbg !442, !psr.id !449
  %4 = xor i32 %0, %1, !dbg !450, !psr.id !451, !ValueTainted !82
  %5 = xor i32 %0, %3, !dbg !452, !psr.id !453, !ValueTainted !82
  %6 = and i32 %4, %5, !dbg !454, !psr.id !455, !ValueTainted !82
  %7 = xor i32 %3, %6, !dbg !456, !psr.id !457, !ValueTainted !82
  %8 = lshr i32 %7, 31, !dbg !458, !psr.id !459, !ValueTainted !82
  ret i32 %8, !dbg !460, !psr.id !461
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.1(i32 %0, i32 %1, i32 %2) #0 !dbg !462 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !463, metadata !DIExpression()), !dbg !464, !psr.id !465
  call void @llvm.dbg.value(metadata i32 %1, metadata !466, metadata !DIExpression()), !dbg !464, !psr.id !467
  call void @llvm.dbg.value(metadata i32 %2, metadata !468, metadata !DIExpression()), !dbg !464, !psr.id !469
  %4 = sub i32 0, %0, !dbg !470, !psr.id !471, !ValueTainted !82, !PointTainted !84
  %5 = xor i32 %1, %2, !dbg !472, !psr.id !473, !ValueTainted !82
  %6 = and i32 %4, %5, !dbg !474, !psr.id !475, !ValueTainted !82, !PointTainted !84
  %7 = xor i32 %2, %6, !dbg !476, !psr.id !477, !ValueTainted !82, !PointTainted !84
  ret i32 %7, !dbg !478, !psr.id !479
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !480 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !483, metadata !DIExpression()), !dbg !484, !psr.id !485
  %2 = xor i32 %0, 1, !dbg !486, !psr.id !487, !ValueTainted !82
  ret i32 %2, !dbg !488, !psr.id !489
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i32_bit_length(i32* %0, i64 %1) #0 !dbg !490 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !493, metadata !DIExpression()), !dbg !494, !psr.id !495
  call void @llvm.dbg.value(metadata i64 %1, metadata !496, metadata !DIExpression()), !dbg !494, !psr.id !497
  call void @llvm.dbg.value(metadata i32 0, metadata !498, metadata !DIExpression()), !dbg !494, !psr.id !499
  call void @llvm.dbg.value(metadata i32 0, metadata !500, metadata !DIExpression()), !dbg !494, !psr.id !501
  br label %3, !dbg !502, !psr.id !503

3:                                                ; preds = %6, %2
  %.02 = phi i32 [ 0, %2 ], [ %10, %6 ], !dbg !494, !psr.id !504
  %.01 = phi i64 [ %1, %2 ], [ %4, %6 ], !psr.id !505
  %.0 = phi i32 [ 0, %2 ], [ %12, %6 ], !dbg !494, !psr.id !506
  call void @llvm.dbg.value(metadata i32 %.0, metadata !500, metadata !DIExpression()), !dbg !494, !psr.id !507
  call void @llvm.dbg.value(metadata i64 %.01, metadata !496, metadata !DIExpression()), !dbg !494, !psr.id !508
  call void @llvm.dbg.value(metadata i32 %.02, metadata !498, metadata !DIExpression()), !dbg !494, !psr.id !509
  %4 = add i64 %.01, -1, !dbg !510, !psr.id !511
  call void @llvm.dbg.value(metadata i64 %4, metadata !496, metadata !DIExpression()), !dbg !494, !psr.id !512
  %5 = icmp ugt i64 %.01, 0, !dbg !513, !psr.id !514
  br i1 %5, label %6, label %13, !dbg !502, !psr.id !515

6:                                                ; preds = %3
  %7 = call i32 @EQ.2(i32 %.02, i32 0), !dbg !516, !psr.id !518
  call void @llvm.dbg.value(metadata i32 %7, metadata !519, metadata !DIExpression()), !dbg !520, !psr.id !521
  %8 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !522, !psr.id !523
  %9 = load i32, i32* %8, align 4, !dbg !522, !psr.id !524
  call void @llvm.dbg.value(metadata i32 %9, metadata !525, metadata !DIExpression()), !dbg !520, !psr.id !526
  %10 = call i32 @MUX.3(i32 %7, i32 %9, i32 %.02), !dbg !527, !psr.id !528
  call void @llvm.dbg.value(metadata i32 %10, metadata !498, metadata !DIExpression()), !dbg !494, !psr.id !529
  %11 = trunc i64 %4 to i32, !dbg !530, !psr.id !531
  %12 = call i32 @MUX.3(i32 %7, i32 %11, i32 %.0), !dbg !532, !psr.id !533
  call void @llvm.dbg.value(metadata i32 %12, metadata !500, metadata !DIExpression()), !dbg !494, !psr.id !534
  br label %3, !dbg !502, !llvm.loop !535, !psr.id !537

13:                                               ; preds = %3
  %14 = shl i32 %.0, 5, !dbg !538, !psr.id !539
  %15 = call i32 @BIT_LENGTH(i32 %.02), !dbg !540, !psr.id !541
  %16 = add i32 %14, %15, !dbg !542, !psr.id !543
  ret i32 %16, !dbg !544, !psr.id !545
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.2(i32 %0, i32 %1) #0 !dbg !546 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !547, metadata !DIExpression()), !dbg !548, !psr.id !549
  call void @llvm.dbg.value(metadata i32 %1, metadata !550, metadata !DIExpression()), !dbg !548, !psr.id !551
  %3 = xor i32 %0, %1, !dbg !552, !psr.id !553
  call void @llvm.dbg.value(metadata i32 %3, metadata !554, metadata !DIExpression()), !dbg !548, !psr.id !555
  %4 = sub i32 0, %3, !dbg !556, !psr.id !557
  %5 = or i32 %3, %4, !dbg !558, !psr.id !559
  %6 = lshr i32 %5, 31, !dbg !560, !psr.id !561
  %7 = call i32 @NOT.5(i32 %6), !dbg !562, !psr.id !563
  ret i32 %7, !dbg !564, !psr.id !565
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.3(i32 %0, i32 %1, i32 %2) #0 !dbg !566 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !567, metadata !DIExpression()), !dbg !568, !psr.id !569
  call void @llvm.dbg.value(metadata i32 %1, metadata !570, metadata !DIExpression()), !dbg !568, !psr.id !571
  call void @llvm.dbg.value(metadata i32 %2, metadata !572, metadata !DIExpression()), !dbg !568, !psr.id !573
  %4 = sub i32 0, %0, !dbg !574, !psr.id !575
  %5 = xor i32 %1, %2, !dbg !576, !psr.id !577
  %6 = and i32 %4, %5, !dbg !578, !psr.id !579
  %7 = xor i32 %2, %6, !dbg !580, !psr.id !581
  ret i32 %7, !dbg !582, !psr.id !583
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @BIT_LENGTH(i32 %0) #0 !dbg !584 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !585, metadata !DIExpression()), !dbg !586, !psr.id !587
  %2 = call i32 @NEQ(i32 %0, i32 0), !dbg !588, !psr.id !589
  call void @llvm.dbg.value(metadata i32 %2, metadata !590, metadata !DIExpression()), !dbg !586, !psr.id !591
  %3 = call i32 @GT.4(i32 %0, i32 65535), !dbg !592, !psr.id !593
  call void @llvm.dbg.value(metadata i32 %3, metadata !594, metadata !DIExpression()), !dbg !586, !psr.id !595
  %4 = lshr i32 %0, 16, !dbg !596, !psr.id !597
  %5 = call i32 @MUX.3(i32 %3, i32 %4, i32 %0), !dbg !598, !psr.id !599
  call void @llvm.dbg.value(metadata i32 %5, metadata !585, metadata !DIExpression()), !dbg !586, !psr.id !600
  %6 = shl i32 %3, 4, !dbg !601, !psr.id !602
  %7 = add i32 %2, %6, !dbg !603, !psr.id !604
  call void @llvm.dbg.value(metadata i32 %7, metadata !590, metadata !DIExpression()), !dbg !586, !psr.id !605
  %8 = call i32 @GT.4(i32 %5, i32 255), !dbg !606, !psr.id !607
  call void @llvm.dbg.value(metadata i32 %8, metadata !594, metadata !DIExpression()), !dbg !586, !psr.id !608
  %9 = lshr i32 %5, 8, !dbg !609, !psr.id !610
  %10 = call i32 @MUX.3(i32 %8, i32 %9, i32 %5), !dbg !611, !psr.id !612
  call void @llvm.dbg.value(metadata i32 %10, metadata !585, metadata !DIExpression()), !dbg !586, !psr.id !613
  %11 = shl i32 %8, 3, !dbg !614, !psr.id !615
  %12 = add i32 %7, %11, !dbg !616, !psr.id !617
  call void @llvm.dbg.value(metadata i32 %12, metadata !590, metadata !DIExpression()), !dbg !586, !psr.id !618
  %13 = call i32 @GT.4(i32 %10, i32 15), !dbg !619, !psr.id !620
  call void @llvm.dbg.value(metadata i32 %13, metadata !594, metadata !DIExpression()), !dbg !586, !psr.id !621
  %14 = lshr i32 %10, 4, !dbg !622, !psr.id !623
  %15 = call i32 @MUX.3(i32 %13, i32 %14, i32 %10), !dbg !624, !psr.id !625
  call void @llvm.dbg.value(metadata i32 %15, metadata !585, metadata !DIExpression()), !dbg !586, !psr.id !626
  %16 = shl i32 %13, 2, !dbg !627, !psr.id !628
  %17 = add i32 %12, %16, !dbg !629, !psr.id !630
  call void @llvm.dbg.value(metadata i32 %17, metadata !590, metadata !DIExpression()), !dbg !586, !psr.id !631
  %18 = call i32 @GT.4(i32 %15, i32 3), !dbg !632, !psr.id !633
  call void @llvm.dbg.value(metadata i32 %18, metadata !594, metadata !DIExpression()), !dbg !586, !psr.id !634
  %19 = lshr i32 %15, 2, !dbg !635, !psr.id !636
  %20 = call i32 @MUX.3(i32 %18, i32 %19, i32 %15), !dbg !637, !psr.id !638
  call void @llvm.dbg.value(metadata i32 %20, metadata !585, metadata !DIExpression()), !dbg !586, !psr.id !639
  %21 = shl i32 %18, 1, !dbg !640, !psr.id !641
  %22 = add i32 %17, %21, !dbg !642, !psr.id !643
  call void @llvm.dbg.value(metadata i32 %22, metadata !590, metadata !DIExpression()), !dbg !586, !psr.id !644
  %23 = call i32 @GT.4(i32 %20, i32 1), !dbg !645, !psr.id !646
  %24 = add i32 %22, %23, !dbg !647, !psr.id !648
  call void @llvm.dbg.value(metadata i32 %24, metadata !590, metadata !DIExpression()), !dbg !586, !psr.id !649
  ret i32 %24, !dbg !650, !psr.id !651
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !653, metadata !DIExpression()), !dbg !654, !psr.id !655
  call void @llvm.dbg.value(metadata i32 %1, metadata !656, metadata !DIExpression()), !dbg !654, !psr.id !657
  %3 = xor i32 %0, %1, !dbg !658, !psr.id !659
  call void @llvm.dbg.value(metadata i32 %3, metadata !660, metadata !DIExpression()), !dbg !654, !psr.id !661
  %4 = sub i32 0, %3, !dbg !662, !psr.id !663
  %5 = or i32 %3, %4, !dbg !664, !psr.id !665
  %6 = lshr i32 %5, 31, !dbg !666, !psr.id !667
  ret i32 %6, !dbg !668, !psr.id !669
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.4(i32 %0, i32 %1) #0 !dbg !670 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !671, metadata !DIExpression()), !dbg !672, !psr.id !673
  call void @llvm.dbg.value(metadata i32 %1, metadata !674, metadata !DIExpression()), !dbg !672, !psr.id !675
  %3 = sub i32 %1, %0, !dbg !676, !psr.id !677
  call void @llvm.dbg.value(metadata i32 %3, metadata !678, metadata !DIExpression()), !dbg !672, !psr.id !679
  %4 = xor i32 %0, %1, !dbg !680, !psr.id !681
  %5 = xor i32 %0, %3, !dbg !682, !psr.id !683
  %6 = and i32 %4, %5, !dbg !684, !psr.id !685
  %7 = xor i32 %3, %6, !dbg !686, !psr.id !687
  %8 = lshr i32 %7, 31, !dbg !688, !psr.id !689
  ret i32 %8, !dbg !690, !psr.id !691
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.5(i32 %0) #0 !dbg !692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !693, metadata !DIExpression()), !dbg !694, !psr.id !695
  %2 = xor i32 %0, 1, !dbg !696, !psr.id !697
  ret i32 %2, !dbg !698, !psr.id !699
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_decode(i32* %0, i8* %1, i64 %2) #0 !dbg !700 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !703, metadata !DIExpression()), !dbg !704, !psr.id !705
  call void @llvm.dbg.value(metadata i8* %1, metadata !706, metadata !DIExpression()), !dbg !704, !psr.id !707
  call void @llvm.dbg.value(metadata i64 %2, metadata !708, metadata !DIExpression()), !dbg !704, !psr.id !709
  call void @llvm.dbg.value(metadata i8* %1, metadata !710, metadata !DIExpression()), !dbg !704, !psr.id !711
  call void @llvm.dbg.value(metadata i64 %2, metadata !712, metadata !DIExpression()), !dbg !704, !psr.id !713
  call void @llvm.dbg.value(metadata i64 1, metadata !714, metadata !DIExpression()), !dbg !704, !psr.id !715
  br label %4, !dbg !716, !psr.id !717

4:                                                ; preds = %38, %3
  %.02 = phi i64 [ %2, %3 ], [ %33, %38 ], !dbg !704, !psr.id !718, !ValueTainted !82
  %.01 = phi i64 [ 1, %3 ], [ %36, %38 ], !dbg !704, !psr.id !719
  call void @llvm.dbg.value(metadata i64 %.01, metadata !714, metadata !DIExpression()), !dbg !704, !psr.id !720
  call void @llvm.dbg.value(metadata i64 %.02, metadata !712, metadata !DIExpression()), !dbg !704, !psr.id !721
  %5 = icmp ult i64 %.02, 4, !dbg !722, !psr.id !727, !ValueTainted !82
  br i1 %5, label %6, label %32, !dbg !728, !psr.id !729, !Tainted !95

6:                                                ; preds = %4
  %7 = icmp ult i64 %.02, 2, !dbg !730, !psr.id !733, !ValueTainted !82
  br i1 %7, label %8, label %16, !dbg !734, !psr.id !735, !Tainted !95

8:                                                ; preds = %6
  %9 = icmp eq i64 %.02, 0, !dbg !736, !psr.id !739, !ValueTainted !82
  br i1 %9, label %10, label %11, !dbg !740, !psr.id !741, !Tainted !95

10:                                               ; preds = %8
  br label %39, !dbg !742, !psr.id !744

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !745, !psr.id !747, !PointTainted !84
  %13 = load i8, i8* %12, align 1, !dbg !745, !psr.id !748, !ValueTainted !82
  %14 = zext i8 %13 to i32, !dbg !745, !psr.id !749, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %14, metadata !750, metadata !DIExpression()), !dbg !751, !psr.id !752
  br label %15, !psr.id !753

15:                                               ; preds = %11
  br label %29, !dbg !754, !psr.id !755

16:                                               ; preds = %6
  %17 = icmp eq i64 %.02, 2, !dbg !756, !psr.id !759, !ValueTainted !82
  br i1 %17, label %18, label %20, !dbg !760, !psr.id !761, !Tainted !95

18:                                               ; preds = %16
  %19 = call i32 @br_dec16be(i8* %1), !dbg !762, !psr.id !764, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %19, metadata !750, metadata !DIExpression()), !dbg !751, !psr.id !765
  br label %28, !dbg !766, !psr.id !767

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !768, !psr.id !770, !PointTainted !84
  %22 = load i8, i8* %21, align 1, !dbg !768, !psr.id !771, !ValueTainted !82
  %23 = zext i8 %22 to i32, !dbg !772, !psr.id !773, !ValueTainted !82
  %24 = shl i32 %23, 16, !dbg !774, !psr.id !775, !ValueTainted !82
  %25 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !776, !psr.id !777
  %26 = call i32 @br_dec16be(i8* %25), !dbg !778, !psr.id !779, !ValueTainted !82
  %27 = or i32 %24, %26, !dbg !780, !psr.id !781, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %27, metadata !750, metadata !DIExpression()), !dbg !751, !psr.id !782
  br label %28, !psr.id !783

28:                                               ; preds = %20, %18
  %.0 = phi i32 [ %19, %18 ], [ %27, %20 ], !dbg !784, !psr.id !785, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %.0, metadata !750, metadata !DIExpression()), !dbg !751, !psr.id !786
  br label %29, !psr.id !787

29:                                               ; preds = %28, %15
  %.1 = phi i32 [ %14, %15 ], [ %.0, %28 ], !dbg !788, !psr.id !789, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %.1, metadata !750, metadata !DIExpression()), !dbg !751, !psr.id !790
  %30 = add i64 %.01, 1, !dbg !791, !psr.id !792
  call void @llvm.dbg.value(metadata i64 %30, metadata !714, metadata !DIExpression()), !dbg !704, !psr.id !793
  %31 = getelementptr inbounds i32, i32* %0, i64 %.01, !dbg !794, !psr.id !795, !PointTainted !84
  store i32 %.1, i32* %31, align 4, !dbg !796, !psr.id !797
  br label %39, !dbg !798, !psr.id !799

32:                                               ; preds = %4
  %33 = sub i64 %.02, 4, !dbg !800, !psr.id !802, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %33, metadata !712, metadata !DIExpression()), !dbg !704, !psr.id !803
  %34 = getelementptr inbounds i8, i8* %1, i64 %33, !dbg !804, !psr.id !805
  %35 = call i32 @br_dec32be(i8* %34), !dbg !806, !psr.id !807, !ValueTainted !82
  %36 = add i64 %.01, 1, !dbg !808, !psr.id !809
  call void @llvm.dbg.value(metadata i64 %36, metadata !714, metadata !DIExpression()), !dbg !704, !psr.id !810
  %37 = getelementptr inbounds i32, i32* %0, i64 %.01, !dbg !811, !psr.id !812, !PointTainted !84
  store i32 %35, i32* %37, align 4, !dbg !813, !psr.id !814
  br label %38, !psr.id !815

38:                                               ; preds = %32
  br label %4, !dbg !816, !llvm.loop !817, !psr.id !820

39:                                               ; preds = %29, %10
  %40 = udiv i64 %2, 4, !dbg !821, !psr.id !822, !ValueTainted !82
  %41 = shl i64 %40, 37, !dbg !823, !psr.id !824, !ValueTainted !82
  %42 = trunc i64 %41 to i32, !dbg !825, !psr.id !826, !ValueTainted !82
  %43 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !827, !psr.id !828, !PointTainted !84
  store i32 %42, i32* %43, align 4, !dbg !829, !psr.id !830
  ret void, !dbg !831, !psr.id !832
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec16be(i8* %0) #0 !dbg !833 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !836, metadata !DIExpression()), !dbg !837, !psr.id !838
  call void @llvm.dbg.value(metadata i8* %0, metadata !839, metadata !DIExpression()), !dbg !837, !psr.id !840
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !841, !psr.id !842, !PointTainted !84
  %3 = load i8, i8* %2, align 1, !dbg !841, !psr.id !843, !ValueTainted !82
  %4 = zext i8 %3 to i32, !dbg !844, !psr.id !845, !ValueTainted !82
  %5 = shl i32 %4, 8, !dbg !846, !psr.id !847, !ValueTainted !82
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !848, !psr.id !849, !PointTainted !84
  %7 = load i8, i8* %6, align 1, !dbg !848, !psr.id !850, !ValueTainted !82
  %8 = zext i8 %7 to i32, !dbg !851, !psr.id !852, !ValueTainted !82
  %9 = or i32 %5, %8, !dbg !853, !psr.id !854, !ValueTainted !82
  ret i32 %9, !dbg !855, !psr.id !856
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !860, metadata !DIExpression()), !dbg !861, !psr.id !862
  call void @llvm.dbg.value(metadata i8* %0, metadata !863, metadata !DIExpression()), !dbg !861, !psr.id !864
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !865, !psr.id !866, !ValueTainted !82, !PointTainted !84
  %3 = load i8, i8* %2, align 1, !dbg !865, !psr.id !867, !Tainted !95, !ValueTainted !82
  %4 = zext i8 %3 to i32, !dbg !868, !psr.id !869, !ValueTainted !82
  %5 = shl i32 %4, 24, !dbg !870, !psr.id !871, !ValueTainted !82
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !872, !psr.id !873, !ValueTainted !82, !PointTainted !84
  %7 = load i8, i8* %6, align 1, !dbg !872, !psr.id !874, !Tainted !95, !ValueTainted !82
  %8 = zext i8 %7 to i32, !dbg !875, !psr.id !876, !ValueTainted !82
  %9 = shl i32 %8, 16, !dbg !877, !psr.id !878, !ValueTainted !82
  %10 = or i32 %5, %9, !dbg !879, !psr.id !880, !ValueTainted !82
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !881, !psr.id !882, !ValueTainted !82, !PointTainted !84
  %12 = load i8, i8* %11, align 1, !dbg !881, !psr.id !883, !Tainted !95, !ValueTainted !82
  %13 = zext i8 %12 to i32, !dbg !884, !psr.id !885, !ValueTainted !82
  %14 = shl i32 %13, 8, !dbg !886, !psr.id !887, !ValueTainted !82
  %15 = or i32 %10, %14, !dbg !888, !psr.id !889, !ValueTainted !82
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !890, !psr.id !891, !ValueTainted !82, !PointTainted !84
  %17 = load i8, i8* %16, align 1, !dbg !890, !psr.id !892, !Tainted !95, !ValueTainted !82
  %18 = zext i8 %17 to i32, !dbg !893, !psr.id !894, !ValueTainted !82
  %19 = or i32 %15, %18, !dbg !895, !psr.id !896, !ValueTainted !82
  ret i32 %19, !dbg !897, !psr.id !898
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_decode_reduce(i32* %0, i8* %1, i64 %2, i32* %3) #0 !dbg !899 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !902, metadata !DIExpression()), !dbg !903, !psr.id !904
  call void @llvm.dbg.value(metadata i8* %1, metadata !905, metadata !DIExpression()), !dbg !903, !psr.id !906
  call void @llvm.dbg.value(metadata i64 %2, metadata !907, metadata !DIExpression()), !dbg !903, !psr.id !908
  call void @llvm.dbg.value(metadata i32* %3, metadata !909, metadata !DIExpression()), !dbg !903, !psr.id !910
  %5 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !911, !psr.id !912
  %6 = load i32, i32* %5, align 4, !dbg !911, !psr.id !913, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %6, metadata !914, metadata !DIExpression()), !dbg !903, !psr.id !915
  %7 = icmp eq i32 %6, 0, !dbg !916, !psr.id !918, !ValueTainted !82
  br i1 %7, label %8, label %10, !dbg !919, !psr.id !920, !Tainted !95

8:                                                ; preds = %4
  %9 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !921, !psr.id !923
  store i32 0, i32* %9, align 4, !dbg !924, !psr.id !925
  br label %52, !dbg !926, !psr.id !927

10:                                               ; preds = %4
  call void @br_i32_zero(i32* %0, i32 %6), !dbg !928, !psr.id !929
  %11 = add i32 %6, 7, !dbg !930, !psr.id !931, !ValueTainted !82
  %12 = lshr i32 %11, 3, !dbg !932, !psr.id !933, !ValueTainted !82
  %13 = zext i32 %12 to i64, !dbg !934, !psr.id !935, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %13, metadata !936, metadata !DIExpression()), !dbg !903, !psr.id !937
  %14 = sub i64 %13, 1, !dbg !938, !psr.id !939, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %14, metadata !940, metadata !DIExpression()), !dbg !903, !psr.id !941
  %15 = icmp uge i64 %14, %2, !dbg !942, !psr.id !944, !ValueTainted !82
  br i1 %15, label %16, label %18, !dbg !945, !psr.id !946, !Tainted !95

16:                                               ; preds = %10
  call void @br_i32_decode(i32* %0, i8* %1, i64 %2), !dbg !947, !psr.id !949
  %17 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !950, !psr.id !951, !PointTainted !84
  store i32 %6, i32* %17, align 4, !dbg !952, !psr.id !953
  br label %52, !dbg !954, !psr.id !955

18:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %1, metadata !956, metadata !DIExpression()), !dbg !903, !psr.id !957
  %19 = sub i64 %2, %14, !dbg !958, !psr.id !959, !ValueTainted !82
  %20 = add i64 %19, 3, !dbg !960, !psr.id !961, !ValueTainted !82
  %21 = and i64 %20, -4, !dbg !962, !psr.id !963, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %21, metadata !964, metadata !DIExpression()), !dbg !903, !psr.id !965
  %22 = icmp ugt i64 %21, %2, !dbg !966, !psr.id !968, !ValueTainted !82
  br i1 %22, label %23, label %40, !dbg !969, !psr.id !970, !Tainted !95

23:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 0, metadata !971, metadata !DIExpression()), !dbg !973, !psr.id !974
  call void @llvm.dbg.value(metadata i32 0, metadata !975, metadata !DIExpression()), !dbg !973, !psr.id !977
  br label %24, !dbg !978, !psr.id !980

24:                                               ; preds = %37, %23
  %.02 = phi i64 [ %21, %23 ], [ %36, %37 ], !dbg !903, !psr.id !981, !ValueTainted !82
  %.01 = phi i32 [ 0, %23 ], [ %38, %37 ], !dbg !982, !psr.id !983
  %.0 = phi i32 [ 0, %23 ], [ %.1, %37 ], !dbg !973, !psr.id !984, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %.0, metadata !971, metadata !DIExpression()), !dbg !973, !psr.id !985
  call void @llvm.dbg.value(metadata i32 %.01, metadata !975, metadata !DIExpression()), !dbg !973, !psr.id !986
  call void @llvm.dbg.value(metadata i64 %.02, metadata !964, metadata !DIExpression()), !dbg !903, !psr.id !987
  %25 = icmp slt i32 %.01, 4, !dbg !988, !psr.id !990
  br i1 %25, label %26, label %39, !dbg !991, !psr.id !992

26:                                               ; preds = %24
  %27 = shl i32 %.0, 8, !dbg !993, !psr.id !995, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %27, metadata !971, metadata !DIExpression()), !dbg !973, !psr.id !996
  %28 = icmp ule i64 %.02, %2, !dbg !997, !psr.id !999, !ValueTainted !82
  br i1 %28, label %29, label %35, !dbg !1000, !psr.id !1001, !Tainted !95

29:                                               ; preds = %26
  %30 = sub i64 %2, %.02, !dbg !1002, !psr.id !1004, !ValueTainted !82
  %31 = getelementptr inbounds i8, i8* %1, i64 %30, !dbg !1005, !psr.id !1006, !ValueTainted !82, !PointTainted !84
  %32 = load i8, i8* %31, align 1, !dbg !1005, !psr.id !1007, !Tainted !95, !ValueTainted !82
  %33 = zext i8 %32 to i32, !dbg !1005, !psr.id !1008, !ValueTainted !82
  %34 = or i32 %27, %33, !dbg !1009, !psr.id !1010, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %34, metadata !971, metadata !DIExpression()), !dbg !973, !psr.id !1011
  br label %35, !dbg !1012, !psr.id !1013

35:                                               ; preds = %29, %26
  %.1 = phi i32 [ %34, %29 ], [ %27, %26 ], !dbg !1014, !psr.id !1015, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %.1, metadata !971, metadata !DIExpression()), !dbg !973, !psr.id !1016
  %36 = add i64 %.02, -1, !dbg !1017, !psr.id !1018, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %36, metadata !964, metadata !DIExpression()), !dbg !903, !psr.id !1019
  br label %37, !dbg !1020, !psr.id !1021

37:                                               ; preds = %35
  %38 = add nsw i32 %.01, 1, !dbg !1022, !psr.id !1023
  call void @llvm.dbg.value(metadata i32 %38, metadata !975, metadata !DIExpression()), !dbg !973, !psr.id !1024
  br label %24, !dbg !1025, !llvm.loop !1026, !psr.id !1028

39:                                               ; preds = %24
  call void @br_i32_muladd_small(i32* %0, i32 %.0, i32* %3), !dbg !1029, !psr.id !1030
  br label %43, !dbg !1031, !psr.id !1032

40:                                               ; preds = %18
  %41 = sub i64 %2, %21, !dbg !1033, !psr.id !1035, !ValueTainted !82
  call void @br_i32_decode(i32* %0, i8* %1, i64 %41), !dbg !1036, !psr.id !1037
  %42 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1038, !psr.id !1039, !PointTainted !84
  store i32 %6, i32* %42, align 4, !dbg !1040, !psr.id !1041
  br label %43, !psr.id !1042

43:                                               ; preds = %40, %39
  %.13 = phi i64 [ %.02, %39 ], [ %21, %40 ], !dbg !1043, !psr.id !1044, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %.13, metadata !964, metadata !DIExpression()), !dbg !903, !psr.id !1045
  %44 = sub i64 %2, %.13, !dbg !1046, !psr.id !1048, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %44, metadata !940, metadata !DIExpression()), !dbg !903, !psr.id !1049
  br label %45, !dbg !1050, !psr.id !1051

45:                                               ; preds = %50, %43
  %.04 = phi i64 [ %44, %43 ], [ %51, %50 ], !dbg !1052, !psr.id !1053, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %.04, metadata !940, metadata !DIExpression()), !dbg !903, !psr.id !1054
  %46 = icmp ult i64 %.04, %2, !dbg !1055, !psr.id !1057, !ValueTainted !82
  br i1 %46, label %47, label %52, !dbg !1058, !psr.id !1059, !Tainted !95

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, i8* %1, i64 %.04, !dbg !1060, !psr.id !1062
  %49 = call i32 @br_dec32be.6(i8* %48), !dbg !1063, !psr.id !1064, !ValueTainted !82
  call void @br_i32_muladd_small(i32* %0, i32 %49, i32* %3), !dbg !1065, !psr.id !1066
  br label %50, !dbg !1067, !psr.id !1068

50:                                               ; preds = %47
  %51 = add i64 %.04, 4, !dbg !1069, !psr.id !1070, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %51, metadata !940, metadata !DIExpression()), !dbg !903, !psr.id !1071
  br label %45, !dbg !1072, !llvm.loop !1073, !psr.id !1075

52:                                               ; preds = %45, %16, %8
  ret void, !dbg !1076, !psr.id !1077
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i32_zero(i32* %0, i32 %1) #0 !dbg !1078 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1081, metadata !DIExpression()), !dbg !1082, !psr.id !1083
  call void @llvm.dbg.value(metadata i32 %1, metadata !1084, metadata !DIExpression()), !dbg !1082, !psr.id !1085
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !1086, !psr.id !1087
  call void @llvm.dbg.value(metadata i32* %3, metadata !1081, metadata !DIExpression()), !dbg !1082, !psr.id !1088
  store i32 %1, i32* %0, align 4, !dbg !1089, !psr.id !1090
  %4 = bitcast i32* %3 to i8*, !dbg !1091, !psr.id !1092
  %5 = add i32 %1, 31, !dbg !1093, !psr.id !1094, !ValueTainted !82
  %6 = lshr i32 %5, 5, !dbg !1095, !psr.id !1096, !ValueTainted !82
  %7 = zext i32 %6 to i64, !dbg !1097, !psr.id !1098, !ValueTainted !82
  %8 = mul i64 %7, 4, !dbg !1099, !psr.id !1100, !ValueTainted !82
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !1091, !psr.id !1101, !CalledTainted !1102
  ret void, !dbg !1103, !psr.id !1104
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.6(i8* %0) #0 !dbg !1105 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1106, metadata !DIExpression()), !dbg !1107, !psr.id !1108
  call void @llvm.dbg.value(metadata i8* %0, metadata !1109, metadata !DIExpression()), !dbg !1107, !psr.id !1110
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1111, !psr.id !1112, !ValueTainted !82, !PointTainted !84
  %3 = load i8, i8* %2, align 1, !dbg !1111, !psr.id !1113, !Tainted !95, !ValueTainted !82
  %4 = zext i8 %3 to i32, !dbg !1114, !psr.id !1115, !ValueTainted !82
  %5 = shl i32 %4, 24, !dbg !1116, !psr.id !1117, !ValueTainted !82
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1118, !psr.id !1119, !ValueTainted !82, !PointTainted !84
  %7 = load i8, i8* %6, align 1, !dbg !1118, !psr.id !1120, !Tainted !95, !ValueTainted !82
  %8 = zext i8 %7 to i32, !dbg !1121, !psr.id !1122, !ValueTainted !82
  %9 = shl i32 %8, 16, !dbg !1123, !psr.id !1124, !ValueTainted !82
  %10 = or i32 %5, %9, !dbg !1125, !psr.id !1126, !ValueTainted !82
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1127, !psr.id !1128, !ValueTainted !82, !PointTainted !84
  %12 = load i8, i8* %11, align 1, !dbg !1127, !psr.id !1129, !Tainted !95, !ValueTainted !82
  %13 = zext i8 %12 to i32, !dbg !1130, !psr.id !1131, !ValueTainted !82
  %14 = shl i32 %13, 8, !dbg !1132, !psr.id !1133, !ValueTainted !82
  %15 = or i32 %10, %14, !dbg !1134, !psr.id !1135, !ValueTainted !82
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1136, !psr.id !1137, !ValueTainted !82, !PointTainted !84
  %17 = load i8, i8* %16, align 1, !dbg !1136, !psr.id !1138, !Tainted !95, !ValueTainted !82
  %18 = zext i8 %17 to i32, !dbg !1139, !psr.id !1140, !ValueTainted !82
  %19 = or i32 %15, %18, !dbg !1141, !psr.id !1142, !ValueTainted !82
  ret i32 %19, !dbg !1143, !psr.id !1144
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_encode(i8* %0, i64 %1, i32* %2) #0 !dbg !1145 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1148, metadata !DIExpression()), !dbg !1149, !psr.id !1150
  call void @llvm.dbg.value(metadata i64 %1, metadata !1151, metadata !DIExpression()), !dbg !1149, !psr.id !1152
  call void @llvm.dbg.value(metadata i32* %2, metadata !1153, metadata !DIExpression()), !dbg !1149, !psr.id !1154
  call void @llvm.dbg.value(metadata i8* %0, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1156
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1157, !psr.id !1158, !PointTainted !84
  %5 = load i32, i32* %4, align 4, !dbg !1157, !psr.id !1159, !ValueTainted !82
  %6 = add i32 %5, 7, !dbg !1160, !psr.id !1161, !ValueTainted !82
  %7 = lshr i32 %6, 3, !dbg !1162, !psr.id !1163, !ValueTainted !82
  %8 = zext i32 %7 to i64, !dbg !1164, !psr.id !1165, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %8, metadata !1166, metadata !DIExpression()), !dbg !1149, !psr.id !1167
  br label %9, !dbg !1168, !psr.id !1169

9:                                                ; preds = %11, %3
  %.02 = phi i8* [ %0, %3 ], [ %12, %11 ], !dbg !1149, !psr.id !1170, !PointTainted !84
  %.01 = phi i64 [ %1, %3 ], [ %13, %11 ], !psr.id !1171
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1151, metadata !DIExpression()), !dbg !1149, !psr.id !1172
  call void @llvm.dbg.value(metadata i8* %.02, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1173
  %10 = icmp ugt i64 %.01, %8, !dbg !1174, !psr.id !1175, !ValueTainted !82
  br i1 %10, label %11, label %14, !dbg !1168, !psr.id !1176, !Tainted !95

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !1177, !psr.id !1179, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %12, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1180
  store i8 0, i8* %.02, align 1, !dbg !1181, !psr.id !1182
  %13 = add i64 %.01, -1, !dbg !1183, !psr.id !1184
  call void @llvm.dbg.value(metadata i64 %13, metadata !1151, metadata !DIExpression()), !dbg !1149, !psr.id !1185
  br label %9, !dbg !1168, !llvm.loop !1186, !psr.id !1188

14:                                               ; preds = %9
  %15 = add i64 %.01, 3, !dbg !1189, !psr.id !1190
  %16 = lshr i64 %15, 2, !dbg !1191, !psr.id !1192
  call void @llvm.dbg.value(metadata i64 %16, metadata !1166, metadata !DIExpression()), !dbg !1149, !psr.id !1193
  %17 = and i64 %.01, 3, !dbg !1194, !psr.id !1195
  switch i64 %17, label %36 [
    i64 3, label %18
    i64 2, label %24
    i64 1, label %30
  ], !dbg !1196, !psr.id !1197

18:                                               ; preds = %14
  %19 = getelementptr inbounds i32, i32* %2, i64 %16, !dbg !1198, !psr.id !1200, !PointTainted !84
  %20 = load i32, i32* %19, align 4, !dbg !1198, !psr.id !1201, !ValueTainted !82
  %21 = lshr i32 %20, 16, !dbg !1202, !psr.id !1203, !ValueTainted !82
  %22 = trunc i32 %21 to i8, !dbg !1198, !psr.id !1204, !ValueTainted !82
  %23 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !1205, !psr.id !1206, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %23, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1207
  store i8 %22, i8* %.02, align 1, !dbg !1208, !psr.id !1209
  br label %24, !dbg !1210, !psr.id !1211

24:                                               ; preds = %18, %14
  %.13 = phi i8* [ %.02, %14 ], [ %23, %18 ], !dbg !1149, !psr.id !1212, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %.13, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1213
  %25 = getelementptr inbounds i32, i32* %2, i64 %16, !dbg !1214, !psr.id !1215, !PointTainted !84
  %26 = load i32, i32* %25, align 4, !dbg !1214, !psr.id !1216, !ValueTainted !82
  %27 = lshr i32 %26, 8, !dbg !1217, !psr.id !1218, !ValueTainted !82
  %28 = trunc i32 %27 to i8, !dbg !1214, !psr.id !1219, !ValueTainted !82
  %29 = getelementptr inbounds i8, i8* %.13, i32 1, !dbg !1220, !psr.id !1221, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %29, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1222
  store i8 %28, i8* %.13, align 1, !dbg !1223, !psr.id !1224
  br label %30, !dbg !1225, !psr.id !1226

30:                                               ; preds = %24, %14
  %.2 = phi i8* [ %.02, %14 ], [ %29, %24 ], !dbg !1149, !psr.id !1227, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %.2, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1228
  %31 = getelementptr inbounds i32, i32* %2, i64 %16, !dbg !1229, !psr.id !1230, !PointTainted !84
  %32 = load i32, i32* %31, align 4, !dbg !1229, !psr.id !1231, !ValueTainted !82
  %33 = trunc i32 %32 to i8, !dbg !1229, !psr.id !1232, !ValueTainted !82
  %34 = getelementptr inbounds i8, i8* %.2, i32 1, !dbg !1233, !psr.id !1234, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %34, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1235
  store i8 %33, i8* %.2, align 1, !dbg !1236, !psr.id !1237
  %35 = add i64 %16, -1, !dbg !1238, !psr.id !1239
  call void @llvm.dbg.value(metadata i64 %35, metadata !1166, metadata !DIExpression()), !dbg !1149, !psr.id !1240
  br label %36, !dbg !1241, !psr.id !1242

36:                                               ; preds = %30, %14
  %.3 = phi i8* [ %.02, %14 ], [ %34, %30 ], !dbg !1149, !psr.id !1243, !PointTainted !84
  %.0 = phi i64 [ %16, %14 ], [ %35, %30 ], !dbg !1149, !psr.id !1244
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1166, metadata !DIExpression()), !dbg !1149, !psr.id !1245
  call void @llvm.dbg.value(metadata i8* %.3, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1246
  br label %37, !dbg !1247, !psr.id !1248

37:                                               ; preds = %39, %36
  %.4 = phi i8* [ %.3, %36 ], [ %43, %39 ], !dbg !1149, !psr.id !1249, !PointTainted !84
  %.1 = phi i64 [ %.0, %36 ], [ %42, %39 ], !dbg !1149, !psr.id !1250
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1166, metadata !DIExpression()), !dbg !1149, !psr.id !1251
  call void @llvm.dbg.value(metadata i8* %.4, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1252
  %38 = icmp ugt i64 %.1, 0, !dbg !1253, !psr.id !1254
  br i1 %38, label %39, label %44, !dbg !1247, !psr.id !1255

39:                                               ; preds = %37
  %40 = getelementptr inbounds i32, i32* %2, i64 %.1, !dbg !1256, !psr.id !1258, !PointTainted !84
  %41 = load i32, i32* %40, align 4, !dbg !1256, !psr.id !1259, !ValueTainted !82
  call void @br_enc32be(i8* %.4, i32 %41), !dbg !1260, !psr.id !1261
  %42 = add i64 %.1, -1, !dbg !1262, !psr.id !1263
  call void @llvm.dbg.value(metadata i64 %42, metadata !1166, metadata !DIExpression()), !dbg !1149, !psr.id !1264
  %43 = getelementptr inbounds i8, i8* %.4, i64 4, !dbg !1265, !psr.id !1266, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %43, metadata !1155, metadata !DIExpression()), !dbg !1149, !psr.id !1267
  br label %37, !dbg !1247, !llvm.loop !1268, !psr.id !1270

44:                                               ; preds = %37
  ret void, !dbg !1271, !psr.id !1272
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !1273 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1276, metadata !DIExpression()), !dbg !1277, !psr.id !1278
  call void @llvm.dbg.value(metadata i32 %1, metadata !1279, metadata !DIExpression()), !dbg !1277, !psr.id !1280
  call void @llvm.dbg.value(metadata i8* %0, metadata !1281, metadata !DIExpression()), !dbg !1277, !psr.id !1282
  %3 = lshr i32 %1, 24, !dbg !1283, !psr.id !1284, !ValueTainted !82
  %4 = trunc i32 %3 to i8, !dbg !1285, !psr.id !1286, !ValueTainted !82
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1287, !psr.id !1288, !PointTainted !84
  store i8 %4, i8* %5, align 1, !dbg !1289, !psr.id !1290
  %6 = lshr i32 %1, 16, !dbg !1291, !psr.id !1292, !ValueTainted !82
  %7 = trunc i32 %6 to i8, !dbg !1293, !psr.id !1294, !ValueTainted !82
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1295, !psr.id !1296, !PointTainted !84
  store i8 %7, i8* %8, align 1, !dbg !1297, !psr.id !1298
  %9 = lshr i32 %1, 8, !dbg !1299, !psr.id !1300, !ValueTainted !82
  %10 = trunc i32 %9 to i8, !dbg !1301, !psr.id !1302, !ValueTainted !82
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1303, !psr.id !1304, !PointTainted !84
  store i8 %10, i8* %11, align 1, !dbg !1305, !psr.id !1306
  %12 = trunc i32 %1 to i8, !dbg !1307, !psr.id !1308, !ValueTainted !82
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1309, !psr.id !1310, !PointTainted !84
  store i8 %12, i8* %13, align 1, !dbg !1311, !psr.id !1312
  ret void, !dbg !1313, !psr.id !1314
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_from_monty(i32* %0, i32* %1, i32 %2) #0 !dbg !1315 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1318, metadata !DIExpression()), !dbg !1319, !psr.id !1320
  call void @llvm.dbg.value(metadata i32* %1, metadata !1321, metadata !DIExpression()), !dbg !1319, !psr.id !1322
  call void @llvm.dbg.value(metadata i32 %2, metadata !1323, metadata !DIExpression()), !dbg !1319, !psr.id !1324
  %4 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1325, !psr.id !1326
  %5 = load i32, i32* %4, align 4, !dbg !1325, !psr.id !1327
  %6 = add i32 %5, 31, !dbg !1328, !psr.id !1329
  %7 = lshr i32 %6, 5, !dbg !1330, !psr.id !1331
  %8 = zext i32 %7 to i64, !dbg !1332, !psr.id !1333
  call void @llvm.dbg.value(metadata i64 %8, metadata !1334, metadata !DIExpression()), !dbg !1319, !psr.id !1335
  call void @llvm.dbg.value(metadata i64 0, metadata !1336, metadata !DIExpression()), !dbg !1319, !psr.id !1337
  br label %9, !dbg !1338, !psr.id !1340

9:                                                ; preds = %41, %3
  %.02 = phi i64 [ 0, %3 ], [ %42, %41 ], !dbg !1341, !psr.id !1342
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1336, metadata !DIExpression()), !dbg !1319, !psr.id !1343
  %10 = icmp ult i64 %.02, %8, !dbg !1344, !psr.id !1346
  br i1 %10, label %11, label %43, !dbg !1347, !psr.id !1348

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1349, !psr.id !1351
  %13 = load i32, i32* %12, align 4, !dbg !1349, !psr.id !1352
  %14 = mul i32 %13, %2, !dbg !1353, !psr.id !1354
  call void @llvm.dbg.value(metadata i32 %14, metadata !1355, metadata !DIExpression()), !dbg !1356, !psr.id !1357
  call void @llvm.dbg.value(metadata i64 0, metadata !1358, metadata !DIExpression()), !dbg !1356, !psr.id !1359
  call void @llvm.dbg.value(metadata i64 0, metadata !1360, metadata !DIExpression()), !dbg !1319, !psr.id !1361
  br label %15, !dbg !1362, !psr.id !1364

15:                                               ; preds = %36, %11
  %.01 = phi i64 [ 0, %11 ], [ %37, %36 ], !dbg !1365, !psr.id !1366
  %.0 = phi i64 [ 0, %11 ], [ %30, %36 ], !dbg !1356, !psr.id !1367
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1358, metadata !DIExpression()), !dbg !1356, !psr.id !1368
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1360, metadata !DIExpression()), !dbg !1319, !psr.id !1369
  %16 = icmp ult i64 %.01, %8, !dbg !1370, !psr.id !1372
  br i1 %16, label %17, label %38, !dbg !1373, !psr.id !1374

17:                                               ; preds = %15
  %18 = add i64 %.01, 1, !dbg !1375, !psr.id !1377
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !1378, !psr.id !1379
  %20 = load i32, i32* %19, align 4, !dbg !1378, !psr.id !1380
  %21 = zext i32 %20 to i64, !dbg !1381, !psr.id !1382
  %22 = zext i32 %14 to i64, !dbg !1383, !psr.id !1384
  %23 = add i64 %.01, 1, !dbg !1383, !psr.id !1385
  %24 = getelementptr inbounds i32, i32* %1, i64 %23, !dbg !1383, !psr.id !1386
  %25 = load i32, i32* %24, align 4, !dbg !1383, !psr.id !1387
  %26 = zext i32 %25 to i64, !dbg !1383, !psr.id !1388
  %27 = mul i64 %22, %26, !dbg !1383, !psr.id !1389
  %28 = add i64 %21, %27, !dbg !1390, !psr.id !1391
  %29 = add i64 %28, %.0, !dbg !1392, !psr.id !1393
  call void @llvm.dbg.value(metadata i64 %29, metadata !1394, metadata !DIExpression()), !dbg !1395, !psr.id !1396
  %30 = lshr i64 %29, 32, !dbg !1397, !psr.id !1398
  call void @llvm.dbg.value(metadata i64 %30, metadata !1358, metadata !DIExpression()), !dbg !1356, !psr.id !1399
  %31 = icmp ne i64 %.01, 0, !dbg !1400, !psr.id !1402
  br i1 %31, label %32, label %35, !dbg !1403, !psr.id !1404

32:                                               ; preds = %17
  %33 = trunc i64 %29 to i32, !dbg !1405, !psr.id !1407
  %34 = getelementptr inbounds i32, i32* %0, i64 %.01, !dbg !1408, !psr.id !1409
  store i32 %33, i32* %34, align 4, !dbg !1410, !psr.id !1411
  br label %35, !dbg !1412, !psr.id !1413

35:                                               ; preds = %32, %17
  br label %36, !dbg !1414, !psr.id !1415

36:                                               ; preds = %35
  %37 = add i64 %.01, 1, !dbg !1416, !psr.id !1417
  call void @llvm.dbg.value(metadata i64 %37, metadata !1360, metadata !DIExpression()), !dbg !1319, !psr.id !1418
  br label %15, !dbg !1419, !llvm.loop !1420, !psr.id !1422

38:                                               ; preds = %15
  %39 = trunc i64 %.0 to i32, !dbg !1423, !psr.id !1424
  %40 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !1425, !psr.id !1426
  store i32 %39, i32* %40, align 4, !dbg !1427, !psr.id !1428
  br label %41, !dbg !1429, !psr.id !1430

41:                                               ; preds = %38
  %42 = add i64 %.02, 1, !dbg !1431, !psr.id !1432
  call void @llvm.dbg.value(metadata i64 %42, metadata !1336, metadata !DIExpression()), !dbg !1319, !psr.id !1433
  br label %9, !dbg !1434, !llvm.loop !1435, !psr.id !1437

43:                                               ; preds = %9
  %44 = call i32 @br_i32_sub(i32* %0, i32* %1, i32 0), !dbg !1438, !psr.id !1439
  %45 = call i32 @NOT.7(i32 %44), !dbg !1440, !psr.id !1441
  %46 = call i32 @br_i32_sub(i32* %0, i32* %1, i32 %45), !dbg !1442, !psr.id !1443
  ret void, !dbg !1444, !psr.id !1445
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.7(i32 %0) #0 !dbg !1446 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1447, metadata !DIExpression()), !dbg !1448, !psr.id !1449
  %2 = xor i32 %0, 1, !dbg !1450, !psr.id !1451
  ret i32 %2, !dbg !1452, !psr.id !1453
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_modpow(i32* %0, i8* %1, i64 %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 !dbg !1454 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1457, metadata !DIExpression()), !dbg !1458, !psr.id !1459
  call void @llvm.dbg.value(metadata i8* %1, metadata !1460, metadata !DIExpression()), !dbg !1458, !psr.id !1461
  call void @llvm.dbg.value(metadata i64 %2, metadata !1462, metadata !DIExpression()), !dbg !1458, !psr.id !1463
  call void @llvm.dbg.value(metadata i32* %3, metadata !1464, metadata !DIExpression()), !dbg !1458, !psr.id !1465
  call void @llvm.dbg.value(metadata i32 %4, metadata !1466, metadata !DIExpression()), !dbg !1458, !psr.id !1467
  call void @llvm.dbg.value(metadata i32* %5, metadata !1468, metadata !DIExpression()), !dbg !1458, !psr.id !1469
  call void @llvm.dbg.value(metadata i32* %6, metadata !1470, metadata !DIExpression()), !dbg !1458, !psr.id !1471
  %8 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1472, !psr.id !1473
  %9 = load i32, i32* %8, align 4, !dbg !1472, !psr.id !1474, !ValueTainted !82
  %10 = add i32 %9, 63, !dbg !1475, !psr.id !1476, !ValueTainted !82
  %11 = lshr i32 %10, 5, !dbg !1477, !psr.id !1478, !ValueTainted !82
  %12 = zext i32 %11 to i64, !dbg !1479, !psr.id !1480, !ValueTainted !82
  %13 = mul i64 %12, 4, !dbg !1481, !psr.id !1482, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %13, metadata !1483, metadata !DIExpression()), !dbg !1458, !psr.id !1484
  %14 = bitcast i32* %5 to i8*, !dbg !1485, !psr.id !1486
  %15 = bitcast i32* %0 to i8*, !dbg !1485, !psr.id !1487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 %13, i1 false), !dbg !1485, !psr.id !1488
  call void @br_i32_to_monty(i32* %5, i32* %3), !dbg !1489, !psr.id !1490
  %16 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1491, !psr.id !1492
  %17 = load i32, i32* %16, align 4, !dbg !1491, !psr.id !1493, !ValueTainted !82
  call void @br_i32_zero.8(i32* %0, i32 %17), !dbg !1494, !psr.id !1495
  %18 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1496, !psr.id !1497, !PointTainted !84
  store i32 1, i32* %18, align 4, !dbg !1498, !psr.id !1499
  call void @llvm.dbg.value(metadata i32 0, metadata !1500, metadata !DIExpression()), !dbg !1458, !psr.id !1501
  br label %19, !dbg !1502, !psr.id !1504

19:                                               ; preds = %38, %7
  %.0 = phi i32 [ 0, %7 ], [ %39, %38 ], !dbg !1505, !psr.id !1506
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1500, metadata !DIExpression()), !dbg !1458, !psr.id !1507
  %20 = trunc i64 %2 to i32, !dbg !1508, !psr.id !1510
  %21 = shl i32 %20, 3, !dbg !1511, !psr.id !1512
  %22 = icmp ult i32 %.0, %21, !dbg !1513, !psr.id !1514
  br i1 %22, label %23, label %40, !dbg !1515, !psr.id !1516

23:                                               ; preds = %19
  %24 = sub i64 %2, 1, !dbg !1517, !psr.id !1519
  %25 = lshr i32 %.0, 3, !dbg !1520, !psr.id !1521
  %26 = zext i32 %25 to i64, !dbg !1522, !psr.id !1523
  %27 = sub i64 %24, %26, !dbg !1524, !psr.id !1525
  %28 = getelementptr inbounds i8, i8* %1, i64 %27, !dbg !1526, !psr.id !1527, !PointTainted !84
  %29 = load i8, i8* %28, align 1, !dbg !1526, !psr.id !1528, !ValueTainted !82
  %30 = zext i8 %29 to i32, !dbg !1526, !psr.id !1529, !ValueTainted !82
  %31 = and i32 %.0, 7, !dbg !1530, !psr.id !1531
  %32 = ashr i32 %30, %31, !dbg !1532, !psr.id !1533, !ValueTainted !82
  %33 = and i32 %32, 1, !dbg !1534, !psr.id !1535
  call void @llvm.dbg.value(metadata i32 %33, metadata !1536, metadata !DIExpression()), !dbg !1537, !psr.id !1538
  call void @br_i32_montymul(i32* %6, i32* %0, i32* %5, i32* %3, i32 %4), !dbg !1539, !psr.id !1540
  %34 = bitcast i32* %0 to i8*, !dbg !1541, !psr.id !1542, !PointTainted !84
  %35 = bitcast i32* %6 to i8*, !dbg !1543, !psr.id !1544
  call void @br_ccopy(i32 %33, i8* %34, i8* %35, i64 %13), !dbg !1545, !psr.id !1546
  call void @br_i32_montymul(i32* %6, i32* %5, i32* %5, i32* %3, i32 %4), !dbg !1547, !psr.id !1548
  %36 = bitcast i32* %5 to i8*, !dbg !1549, !psr.id !1550
  %37 = bitcast i32* %6 to i8*, !dbg !1549, !psr.id !1551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 %13, i1 false), !dbg !1549, !psr.id !1552, !CalledTainted !1102
  br label %38, !dbg !1553, !psr.id !1554

38:                                               ; preds = %23
  %39 = add i32 %.0, 1, !dbg !1555, !psr.id !1556
  call void @llvm.dbg.value(metadata i32 %39, metadata !1500, metadata !DIExpression()), !dbg !1458, !psr.id !1557
  br label %19, !dbg !1558, !llvm.loop !1559, !psr.id !1561

40:                                               ; preds = %19
  ret void, !dbg !1562, !psr.id !1563
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @br_i32_zero.8(i32* %0, i32 %1) #0 !dbg !1564 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1565, metadata !DIExpression()), !dbg !1566, !psr.id !1567
  call void @llvm.dbg.value(metadata i32 %1, metadata !1568, metadata !DIExpression()), !dbg !1566, !psr.id !1569
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !1570, !psr.id !1571
  call void @llvm.dbg.value(metadata i32* %3, metadata !1565, metadata !DIExpression()), !dbg !1566, !psr.id !1572
  store i32 %1, i32* %0, align 4, !dbg !1573, !psr.id !1574
  %4 = bitcast i32* %3 to i8*, !dbg !1575, !psr.id !1576
  %5 = add i32 %1, 31, !dbg !1577, !psr.id !1578, !ValueTainted !82
  %6 = lshr i32 %5, 5, !dbg !1579, !psr.id !1580, !ValueTainted !82
  %7 = zext i32 %6 to i64, !dbg !1581, !psr.id !1582, !ValueTainted !82
  %8 = mul i64 %7, 4, !dbg !1583, !psr.id !1584, !ValueTainted !82
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !1575, !psr.id !1585, !CalledTainted !1102
  ret void, !dbg !1586, !psr.id !1587
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_montymul(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 !dbg !1588 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1591, metadata !DIExpression()), !dbg !1592, !psr.id !1593
  call void @llvm.dbg.value(metadata i32* %1, metadata !1594, metadata !DIExpression()), !dbg !1592, !psr.id !1595
  call void @llvm.dbg.value(metadata i32* %2, metadata !1596, metadata !DIExpression()), !dbg !1592, !psr.id !1597
  call void @llvm.dbg.value(metadata i32* %3, metadata !1598, metadata !DIExpression()), !dbg !1592, !psr.id !1599
  call void @llvm.dbg.value(metadata i32 %4, metadata !1600, metadata !DIExpression()), !dbg !1592, !psr.id !1601
  %6 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1602, !psr.id !1603
  %7 = load i32, i32* %6, align 4, !dbg !1602, !psr.id !1604, !ValueTainted !82
  %8 = add i32 %7, 31, !dbg !1605, !psr.id !1606, !ValueTainted !82
  %9 = lshr i32 %8, 5, !dbg !1607, !psr.id !1608, !ValueTainted !82
  %10 = zext i32 %9 to i64, !dbg !1609, !psr.id !1610, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %10, metadata !1611, metadata !DIExpression()), !dbg !1592, !psr.id !1612
  %11 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !1613, !psr.id !1614
  %12 = load i32, i32* %11, align 4, !dbg !1613, !psr.id !1615, !ValueTainted !82
  call void @br_i32_zero.11(i32* %0, i32 %12), !dbg !1616, !psr.id !1617
  call void @llvm.dbg.value(metadata i64 0, metadata !1618, metadata !DIExpression()), !dbg !1592, !psr.id !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !1620, metadata !DIExpression()), !dbg !1592, !psr.id !1621
  br label %13, !dbg !1622, !psr.id !1624

13:                                               ; preds = %69, %5
  %.04 = phi i64 [ 0, %5 ], [ %70, %69 ], !dbg !1625, !psr.id !1626
  %.02 = phi i64 [ 0, %5 ], [ %68, %69 ], !dbg !1592, !psr.id !1627, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1618, metadata !DIExpression()), !dbg !1592, !psr.id !1628
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1620, metadata !DIExpression()), !dbg !1592, !psr.id !1629
  %14 = icmp ult i64 %.04, %10, !dbg !1630, !psr.id !1632, !ValueTainted !82
  br i1 %14, label %15, label %71, !dbg !1633, !psr.id !1634, !Tainted !95

15:                                               ; preds = %13
  %16 = add i64 %.04, 1, !dbg !1635, !psr.id !1637
  %17 = getelementptr inbounds i32, i32* %1, i64 %16, !dbg !1638, !psr.id !1639, !PointTainted !84
  %18 = load i32, i32* %17, align 4, !dbg !1638, !psr.id !1640, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %18, metadata !1641, metadata !DIExpression()), !dbg !1642, !psr.id !1643
  %19 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1644, !psr.id !1645, !PointTainted !84
  %20 = load i32, i32* %19, align 4, !dbg !1644, !psr.id !1646, !ValueTainted !82
  %21 = add i64 %.04, 1, !dbg !1647, !psr.id !1648
  %22 = getelementptr inbounds i32, i32* %1, i64 %21, !dbg !1649, !psr.id !1650, !PointTainted !84
  %23 = load i32, i32* %22, align 4, !dbg !1649, !psr.id !1651, !ValueTainted !82
  %24 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !1652, !psr.id !1653, !PointTainted !84
  %25 = load i32, i32* %24, align 4, !dbg !1652, !psr.id !1654, !ValueTainted !82
  %26 = mul i32 %23, %25, !dbg !1655, !psr.id !1656, !ValueTainted !82
  %27 = add i32 %20, %26, !dbg !1657, !psr.id !1658, !ValueTainted !82
  %28 = mul i32 %27, %4, !dbg !1659, !psr.id !1660, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %28, metadata !1661, metadata !DIExpression()), !dbg !1642, !psr.id !1662
  call void @llvm.dbg.value(metadata i64 0, metadata !1663, metadata !DIExpression()), !dbg !1642, !psr.id !1664
  call void @llvm.dbg.value(metadata i64 0, metadata !1665, metadata !DIExpression()), !dbg !1642, !psr.id !1666
  call void @llvm.dbg.value(metadata i64 0, metadata !1667, metadata !DIExpression()), !dbg !1592, !psr.id !1668
  br label %29, !dbg !1669, !psr.id !1671

29:                                               ; preds = %61, %15
  %.03 = phi i64 [ 0, %15 ], [ %62, %61 ], !dbg !1672, !psr.id !1673
  %.01 = phi i64 [ 0, %15 ], [ %44, %61 ], !dbg !1642, !psr.id !1674, !ValueTainted !82
  %.0 = phi i64 [ 0, %15 ], [ %55, %61 ], !dbg !1642, !psr.id !1675, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1665, metadata !DIExpression()), !dbg !1642, !psr.id !1676
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1663, metadata !DIExpression()), !dbg !1642, !psr.id !1677
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1667, metadata !DIExpression()), !dbg !1592, !psr.id !1678
  %30 = icmp ult i64 %.03, %10, !dbg !1679, !psr.id !1681, !ValueTainted !82
  br i1 %30, label %31, label %63, !dbg !1682, !psr.id !1683, !Tainted !95

31:                                               ; preds = %29
  %32 = add i64 %.03, 1, !dbg !1684, !psr.id !1686
  %33 = getelementptr inbounds i32, i32* %0, i64 %32, !dbg !1687, !psr.id !1688, !PointTainted !84
  %34 = load i32, i32* %33, align 4, !dbg !1687, !psr.id !1689, !ValueTainted !82
  %35 = zext i32 %34 to i64, !dbg !1690, !psr.id !1691, !ValueTainted !82
  %36 = zext i32 %18 to i64, !dbg !1692, !psr.id !1693, !ValueTainted !82
  %37 = add i64 %.03, 1, !dbg !1692, !psr.id !1694
  %38 = getelementptr inbounds i32, i32* %2, i64 %37, !dbg !1692, !psr.id !1695, !PointTainted !84
  %39 = load i32, i32* %38, align 4, !dbg !1692, !psr.id !1696, !ValueTainted !82
  %40 = zext i32 %39 to i64, !dbg !1692, !psr.id !1697, !ValueTainted !82
  %41 = mul i64 %36, %40, !dbg !1692, !psr.id !1698, !ValueTainted !82
  %42 = add i64 %35, %41, !dbg !1699, !psr.id !1700, !ValueTainted !82
  %43 = add i64 %42, %.01, !dbg !1701, !psr.id !1702, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %43, metadata !1703, metadata !DIExpression()), !dbg !1704, !psr.id !1705
  %44 = lshr i64 %43, 32, !dbg !1706, !psr.id !1707, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %44, metadata !1663, metadata !DIExpression()), !dbg !1642, !psr.id !1708
  %45 = trunc i64 %43 to i32, !dbg !1709, !psr.id !1710, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %45, metadata !1711, metadata !DIExpression()), !dbg !1704, !psr.id !1712
  %46 = zext i32 %45 to i64, !dbg !1713, !psr.id !1714, !ValueTainted !82
  %47 = zext i32 %28 to i64, !dbg !1715, !psr.id !1716, !ValueTainted !82
  %48 = add i64 %.03, 1, !dbg !1715, !psr.id !1717
  %49 = getelementptr inbounds i32, i32* %3, i64 %48, !dbg !1715, !psr.id !1718
  %50 = load i32, i32* %49, align 4, !dbg !1715, !psr.id !1719, !ValueTainted !82
  %51 = zext i32 %50 to i64, !dbg !1715, !psr.id !1720, !ValueTainted !82
  %52 = mul i64 %47, %51, !dbg !1715, !psr.id !1721, !ValueTainted !82
  %53 = add i64 %46, %52, !dbg !1722, !psr.id !1723, !ValueTainted !82
  %54 = add i64 %53, %.0, !dbg !1724, !psr.id !1725, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %54, metadata !1703, metadata !DIExpression()), !dbg !1704, !psr.id !1726
  %55 = lshr i64 %54, 32, !dbg !1727, !psr.id !1728, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %55, metadata !1665, metadata !DIExpression()), !dbg !1642, !psr.id !1729
  %56 = icmp ne i64 %.03, 0, !dbg !1730, !psr.id !1732
  br i1 %56, label %57, label %60, !dbg !1733, !psr.id !1734

57:                                               ; preds = %31
  %58 = trunc i64 %54 to i32, !dbg !1735, !psr.id !1737, !ValueTainted !82
  %59 = getelementptr inbounds i32, i32* %0, i64 %.03, !dbg !1738, !psr.id !1739, !PointTainted !84
  store i32 %58, i32* %59, align 4, !dbg !1740, !psr.id !1741
  br label %60, !dbg !1742, !psr.id !1743

60:                                               ; preds = %57, %31
  br label %61, !dbg !1744, !psr.id !1745

61:                                               ; preds = %60
  %62 = add i64 %.03, 1, !dbg !1746, !psr.id !1747
  call void @llvm.dbg.value(metadata i64 %62, metadata !1667, metadata !DIExpression()), !dbg !1592, !psr.id !1748
  br label %29, !dbg !1749, !llvm.loop !1750, !psr.id !1752

63:                                               ; preds = %29
  %64 = add i64 %.02, %.01, !dbg !1753, !psr.id !1754, !ValueTainted !82
  %65 = add i64 %64, %.0, !dbg !1755, !psr.id !1756, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %65, metadata !1757, metadata !DIExpression()), !dbg !1642, !psr.id !1758
  %66 = trunc i64 %65 to i32, !dbg !1759, !psr.id !1760, !ValueTainted !82
  %67 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !1761, !psr.id !1762, !ValueTainted !82, !PointTainted !84
  store i32 %66, i32* %67, align 4, !dbg !1763, !psr.id !1764, !Tainted !95
  %68 = lshr i64 %65, 32, !dbg !1765, !psr.id !1766, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %68, metadata !1618, metadata !DIExpression()), !dbg !1592, !psr.id !1767
  br label %69, !dbg !1768, !psr.id !1769

69:                                               ; preds = %63
  %70 = add i64 %.04, 1, !dbg !1770, !psr.id !1771
  call void @llvm.dbg.value(metadata i64 %70, metadata !1620, metadata !DIExpression()), !dbg !1592, !psr.id !1772
  br label %13, !dbg !1773, !llvm.loop !1774, !psr.id !1776

71:                                               ; preds = %13
  %72 = trunc i64 %.02 to i32, !dbg !1777, !psr.id !1778
  %73 = call i32 @NEQ.12(i32 %72, i32 0), !dbg !1779, !psr.id !1780, !ValueTainted !82
  %74 = call i32 @br_i32_sub(i32* %0, i32* %3, i32 0), !dbg !1781, !psr.id !1782, !ValueTainted !82
  %75 = call i32 @NOT.13(i32 %74), !dbg !1783, !psr.id !1784, !ValueTainted !82
  %76 = or i32 %73, %75, !dbg !1785, !psr.id !1786, !ValueTainted !82
  %77 = call i32 @br_i32_sub(i32* %0, i32* %3, i32 %76), !dbg !1787, !psr.id !1788, !ValueTainted !82
  ret void, !dbg !1789, !psr.id !1790
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i32_zero.11(i32* %0, i32 %1) #0 !dbg !1791 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1792, metadata !DIExpression()), !dbg !1793, !psr.id !1794
  call void @llvm.dbg.value(metadata i32 %1, metadata !1795, metadata !DIExpression()), !dbg !1793, !psr.id !1796
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !1797, !psr.id !1798, !PointTainted !84
  call void @llvm.dbg.value(metadata i32* %3, metadata !1792, metadata !DIExpression()), !dbg !1793, !psr.id !1799
  store i32 %1, i32* %0, align 4, !dbg !1800, !psr.id !1801
  %4 = bitcast i32* %3 to i8*, !dbg !1802, !psr.id !1803, !PointTainted !84
  %5 = add i32 %1, 31, !dbg !1804, !psr.id !1805, !ValueTainted !82
  %6 = lshr i32 %5, 5, !dbg !1806, !psr.id !1807, !ValueTainted !82
  %7 = zext i32 %6 to i64, !dbg !1808, !psr.id !1809, !ValueTainted !82
  %8 = mul i64 %7, 4, !dbg !1810, !psr.id !1811, !ValueTainted !82
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !1802, !psr.id !1812, !CalledTainted !1102
  ret void, !dbg !1813, !psr.id !1814
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.12(i32 %0, i32 %1) #0 !dbg !1815 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1816, metadata !DIExpression()), !dbg !1817, !psr.id !1818
  call void @llvm.dbg.value(metadata i32 %1, metadata !1819, metadata !DIExpression()), !dbg !1817, !psr.id !1820
  %3 = xor i32 %0, %1, !dbg !1821, !psr.id !1822, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %3, metadata !1823, metadata !DIExpression()), !dbg !1817, !psr.id !1824
  %4 = sub i32 0, %3, !dbg !1825, !psr.id !1826, !ValueTainted !82
  %5 = or i32 %3, %4, !dbg !1827, !psr.id !1828, !ValueTainted !82
  %6 = lshr i32 %5, 31, !dbg !1829, !psr.id !1830, !ValueTainted !82
  ret i32 %6, !dbg !1831, !psr.id !1832
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.13(i32 %0) #0 !dbg !1833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1834, metadata !DIExpression()), !dbg !1835, !psr.id !1836
  %2 = xor i32 %0, 1, !dbg !1837, !psr.id !1838, !ValueTainted !82
  ret i32 %2, !dbg !1839, !psr.id !1840
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_mulacc(i32* %0, i32* %1, i32* %2) #0 !dbg !1841 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1844, metadata !DIExpression()), !dbg !1845, !psr.id !1846
  call void @llvm.dbg.value(metadata i32* %1, metadata !1847, metadata !DIExpression()), !dbg !1845, !psr.id !1848
  call void @llvm.dbg.value(metadata i32* %2, metadata !1849, metadata !DIExpression()), !dbg !1845, !psr.id !1850
  %4 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1851, !psr.id !1852
  %5 = load i32, i32* %4, align 4, !dbg !1851, !psr.id !1853, !ValueTainted !82
  %6 = add i32 %5, 31, !dbg !1854, !psr.id !1855, !ValueTainted !82
  %7 = lshr i32 %6, 5, !dbg !1856, !psr.id !1857, !ValueTainted !82
  %8 = zext i32 %7 to i64, !dbg !1858, !psr.id !1859, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %8, metadata !1860, metadata !DIExpression()), !dbg !1845, !psr.id !1861
  %9 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1862, !psr.id !1863, !PointTainted !84
  %10 = load i32, i32* %9, align 4, !dbg !1862, !psr.id !1864, !ValueTainted !82
  %11 = add i32 %10, 31, !dbg !1865, !psr.id !1866, !ValueTainted !82
  %12 = lshr i32 %11, 5, !dbg !1867, !psr.id !1868, !ValueTainted !82
  %13 = zext i32 %12 to i64, !dbg !1869, !psr.id !1870, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %13, metadata !1871, metadata !DIExpression()), !dbg !1845, !psr.id !1872
  %14 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1873, !psr.id !1874
  %15 = load i32, i32* %14, align 4, !dbg !1873, !psr.id !1875, !ValueTainted !82
  %16 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !1876, !psr.id !1877, !PointTainted !84
  %17 = load i32, i32* %16, align 4, !dbg !1876, !psr.id !1878, !ValueTainted !82
  %18 = add i32 %15, %17, !dbg !1879, !psr.id !1880, !ValueTainted !82
  %19 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1881, !psr.id !1882, !PointTainted !84
  store i32 %18, i32* %19, align 4, !dbg !1883, !psr.id !1884
  call void @llvm.dbg.value(metadata i64 0, metadata !1885, metadata !DIExpression()), !dbg !1845, !psr.id !1886
  br label %20, !dbg !1887, !psr.id !1889

20:                                               ; preds = %54, %3
  %.02 = phi i64 [ 0, %3 ], [ %55, %54 ], !dbg !1890, !psr.id !1891
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1885, metadata !DIExpression()), !dbg !1845, !psr.id !1892
  %21 = icmp ult i64 %.02, %13, !dbg !1893, !psr.id !1895, !ValueTainted !82
  br i1 %21, label %22, label %56, !dbg !1896, !psr.id !1897, !Tainted !95

22:                                               ; preds = %20
  %23 = add i64 1, %.02, !dbg !1898, !psr.id !1900
  %24 = getelementptr inbounds i32, i32* %2, i64 %23, !dbg !1901, !psr.id !1902, !PointTainted !84
  %25 = load i32, i32* %24, align 4, !dbg !1901, !psr.id !1903, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %25, metadata !1904, metadata !DIExpression()), !dbg !1905, !psr.id !1906
  call void @llvm.dbg.value(metadata i64 0, metadata !1907, metadata !DIExpression()), !dbg !1905, !psr.id !1908
  call void @llvm.dbg.value(metadata i64 0, metadata !1909, metadata !DIExpression()), !dbg !1905, !psr.id !1910
  br label %26, !dbg !1911, !psr.id !1913

26:                                               ; preds = %47, %22
  %.01 = phi i64 [ 0, %22 ], [ %48, %47 ], !dbg !1914, !psr.id !1915
  %.0 = phi i64 [ 0, %22 ], [ %42, %47 ], !dbg !1905, !psr.id !1916, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1907, metadata !DIExpression()), !dbg !1905, !psr.id !1917
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1909, metadata !DIExpression()), !dbg !1905, !psr.id !1918
  %27 = icmp ult i64 %.01, %8, !dbg !1919, !psr.id !1921, !ValueTainted !82
  br i1 %27, label %28, label %49, !dbg !1922, !psr.id !1923, !Tainted !95

28:                                               ; preds = %26
  %29 = add i64 1, %.02, !dbg !1924, !psr.id !1926
  %30 = add i64 %29, %.01, !dbg !1927, !psr.id !1928
  %31 = getelementptr inbounds i32, i32* %0, i64 %30, !dbg !1929, !psr.id !1930, !PointTainted !84
  %32 = load i32, i32* %31, align 4, !dbg !1929, !psr.id !1931, !ValueTainted !82
  %33 = zext i32 %32 to i64, !dbg !1932, !psr.id !1933, !ValueTainted !82
  %34 = zext i32 %25 to i64, !dbg !1934, !psr.id !1935, !ValueTainted !82
  %35 = add i64 1, %.01, !dbg !1934, !psr.id !1936
  %36 = getelementptr inbounds i32, i32* %1, i64 %35, !dbg !1934, !psr.id !1937
  %37 = load i32, i32* %36, align 4, !dbg !1934, !psr.id !1938, !ValueTainted !82
  %38 = zext i32 %37 to i64, !dbg !1934, !psr.id !1939, !ValueTainted !82
  %39 = mul i64 %34, %38, !dbg !1934, !psr.id !1940, !ValueTainted !82
  %40 = add i64 %33, %39, !dbg !1941, !psr.id !1942, !ValueTainted !82
  %41 = add i64 %40, %.0, !dbg !1943, !psr.id !1944, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %41, metadata !1945, metadata !DIExpression()), !dbg !1946, !psr.id !1947
  %42 = lshr i64 %41, 32, !dbg !1948, !psr.id !1949, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %42, metadata !1907, metadata !DIExpression()), !dbg !1905, !psr.id !1950
  %43 = trunc i64 %41 to i32, !dbg !1951, !psr.id !1952, !ValueTainted !82
  %44 = add i64 1, %.02, !dbg !1953, !psr.id !1954
  %45 = add i64 %44, %.01, !dbg !1955, !psr.id !1956
  %46 = getelementptr inbounds i32, i32* %0, i64 %45, !dbg !1957, !psr.id !1958, !PointTainted !84
  store i32 %43, i32* %46, align 4, !dbg !1959, !psr.id !1960
  br label %47, !dbg !1961, !psr.id !1962

47:                                               ; preds = %28
  %48 = add i64 %.01, 1, !dbg !1963, !psr.id !1964
  call void @llvm.dbg.value(metadata i64 %48, metadata !1909, metadata !DIExpression()), !dbg !1905, !psr.id !1965
  br label %26, !dbg !1966, !llvm.loop !1967, !psr.id !1969

49:                                               ; preds = %26
  %50 = trunc i64 %.0 to i32, !dbg !1970, !psr.id !1971, !ValueTainted !82
  %51 = add i64 1, %.02, !dbg !1972, !psr.id !1973
  %52 = add i64 %51, %8, !dbg !1974, !psr.id !1975, !ValueTainted !82
  %53 = getelementptr inbounds i32, i32* %0, i64 %52, !dbg !1976, !psr.id !1977, !ValueTainted !82, !PointTainted !84
  store i32 %50, i32* %53, align 4, !dbg !1978, !psr.id !1979, !Tainted !95
  br label %54, !dbg !1980, !psr.id !1981

54:                                               ; preds = %49
  %55 = add i64 %.02, 1, !dbg !1982, !psr.id !1983
  call void @llvm.dbg.value(metadata i64 %55, metadata !1885, metadata !DIExpression()), !dbg !1845, !psr.id !1984
  br label %20, !dbg !1985, !llvm.loop !1986, !psr.id !1988

56:                                               ; preds = %20
  ret void, !dbg !1989, !psr.id !1990
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_muladd_small(i32* %0, i32 %1, i32* %2) #0 !dbg !1991 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1994, metadata !DIExpression()), !dbg !1995, !psr.id !1996
  call void @llvm.dbg.value(metadata i32 %1, metadata !1997, metadata !DIExpression()), !dbg !1995, !psr.id !1998
  call void @llvm.dbg.value(metadata i32* %2, metadata !1999, metadata !DIExpression()), !dbg !1995, !psr.id !2000
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !2001, !psr.id !2002
  %5 = load i32, i32* %4, align 4, !dbg !2001, !psr.id !2003, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %5, metadata !2004, metadata !DIExpression()), !dbg !1995, !psr.id !2005
  %6 = icmp eq i32 %5, 0, !dbg !2006, !psr.id !2008, !ValueTainted !82
  br i1 %6, label %7, label %8, !dbg !2009, !psr.id !2010, !Tainted !95

7:                                                ; preds = %3
  br label %81, !dbg !2011, !psr.id !2013

8:                                                ; preds = %3
  %9 = icmp ule i32 %5, 32, !dbg !2014, !psr.id !2016, !ValueTainted !82
  br i1 %9, label %10, label %17, !dbg !2017, !psr.id !2018, !Tainted !95

10:                                               ; preds = %8
  %11 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2019, !psr.id !2021, !PointTainted !84
  %12 = load i32, i32* %11, align 4, !dbg !2019, !psr.id !2022, !ValueTainted !82
  %13 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !2023, !psr.id !2024
  %14 = load i32, i32* %13, align 4, !dbg !2023, !psr.id !2025, !ValueTainted !82
  %15 = call i32 @br_rem(i32 %12, i32 %1, i32 %14), !dbg !2026, !psr.id !2027
  %16 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2028, !psr.id !2029, !PointTainted !84
  store i32 %15, i32* %16, align 4, !dbg !2030, !psr.id !2031
  br label %81, !dbg !2032, !psr.id !2033

17:                                               ; preds = %8
  %18 = add i32 %5, 31, !dbg !2034, !psr.id !2035, !ValueTainted !82
  %19 = lshr i32 %18, 5, !dbg !2036, !psr.id !2037, !ValueTainted !82
  %20 = zext i32 %19 to i64, !dbg !2038, !psr.id !2039, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %20, metadata !2040, metadata !DIExpression()), !dbg !1995, !psr.id !2041
  %21 = sub i32 %5, 32, !dbg !2042, !psr.id !2043, !ValueTainted !82
  %22 = call i32 @br_i32_word(i32* %0, i32 %21), !dbg !2044, !psr.id !2045
  call void @llvm.dbg.value(metadata i32 %22, metadata !2046, metadata !DIExpression()), !dbg !1995, !psr.id !2047
  %23 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !2048, !psr.id !2049, !ValueTainted !82, !PointTainted !84
  %24 = load i32, i32* %23, align 4, !dbg !2048, !psr.id !2050, !Tainted !95, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %24, metadata !2051, metadata !DIExpression()), !dbg !1995, !psr.id !2052
  %25 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !2053, !psr.id !2054, !PointTainted !84
  %26 = bitcast i32* %25 to i8*, !dbg !2055, !psr.id !2056, !PointTainted !84
  %27 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2057, !psr.id !2058, !PointTainted !84
  %28 = bitcast i32* %27 to i8*, !dbg !2055, !psr.id !2059, !PointTainted !84
  %29 = sub i64 %20, 1, !dbg !2060, !psr.id !2061, !ValueTainted !82
  %30 = mul i64 %29, 4, !dbg !2062, !psr.id !2063, !ValueTainted !82
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %28, i64 %30, i1 false), !dbg !2055, !psr.id !2064
  %31 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2065, !psr.id !2066, !PointTainted !84
  store i32 %1, i32* %31, align 4, !dbg !2067, !psr.id !2068
  %32 = sub i32 %5, 32, !dbg !2069, !psr.id !2070, !ValueTainted !82
  %33 = call i32 @br_i32_word(i32* %0, i32 %32), !dbg !2071, !psr.id !2072
  call void @llvm.dbg.value(metadata i32 %33, metadata !2073, metadata !DIExpression()), !dbg !1995, !psr.id !2074
  %34 = sub i32 %5, 32, !dbg !2075, !psr.id !2076
  %35 = call i32 @br_i32_word(i32* %2, i32 %34), !dbg !2077, !psr.id !2078
  call void @llvm.dbg.value(metadata i32 %35, metadata !2079, metadata !DIExpression()), !dbg !1995, !psr.id !2080
  %36 = call i32 @br_div(i32 %22, i32 %33, i32 %35), !dbg !2081, !psr.id !2082, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i32 %36, metadata !2083, metadata !DIExpression()), !dbg !1995, !psr.id !2084
  %37 = call i32 @EQ.16(i32 %22, i32 %35), !dbg !2085, !psr.id !2086, !ValueTainted !82
  %38 = call i32 @EQ.16(i32 %36, i32 0), !dbg !2087, !psr.id !2088
  %39 = sub i32 %36, 1, !dbg !2089, !psr.id !2090
  %40 = call i32 @MUX.17(i32 %38, i32 0, i32 %39), !dbg !2091, !psr.id !2092, !ValueTainted !82, !PointTainted !84
  %41 = call i32 @MUX.17(i32 %37, i32 -1, i32 %40), !dbg !2093, !psr.id !2094, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i32 %41, metadata !2095, metadata !DIExpression()), !dbg !1995, !psr.id !2096
  call void @llvm.dbg.value(metadata i64 0, metadata !2097, metadata !DIExpression()), !dbg !1995, !psr.id !2098
  call void @llvm.dbg.value(metadata i32 1, metadata !2099, metadata !DIExpression()), !dbg !1995, !psr.id !2100
  call void @llvm.dbg.value(metadata i64 1, metadata !2101, metadata !DIExpression()), !dbg !1995, !psr.id !2102
  br label %42, !dbg !2103, !psr.id !2105

42:                                               ; preds = %65, %17
  %.02 = phi i64 [ 1, %17 ], [ %66, %65 ], !dbg !2106, !psr.id !2107
  %.01 = phi i32 [ 1, %17 ], [ %64, %65 ], !dbg !1995, !psr.id !2108, !ValueTainted !82, !PointTainted !84
  %.0 = phi i64 [ 0, %17 ], [ %60, %65 ], !dbg !1995, !psr.id !2109, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2097, metadata !DIExpression()), !dbg !1995, !psr.id !2110
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2099, metadata !DIExpression()), !dbg !1995, !psr.id !2111
  call void @llvm.dbg.value(metadata i64 %.02, metadata !2101, metadata !DIExpression()), !dbg !1995, !psr.id !2112
  %43 = icmp ule i64 %.02, %20, !dbg !2113, !psr.id !2115, !ValueTainted !82
  br i1 %43, label %44, label %67, !dbg !2116, !psr.id !2117, !Tainted !95

44:                                               ; preds = %42
  %45 = getelementptr inbounds i32, i32* %2, i64 %.02, !dbg !2118, !psr.id !2120
  %46 = load i32, i32* %45, align 4, !dbg !2118, !psr.id !2121
  call void @llvm.dbg.value(metadata i32 %46, metadata !2122, metadata !DIExpression()), !dbg !2123, !psr.id !2124
  %47 = zext i32 %46 to i64, !dbg !2125, !psr.id !2126, !ValueTainted !82
  %48 = zext i32 %41 to i64, !dbg !2125, !psr.id !2127, !ValueTainted !82, !PointTainted !84
  %49 = mul i64 %47, %48, !dbg !2125, !psr.id !2128, !ValueTainted !82, !PointTainted !84
  %50 = add i64 %49, %.0, !dbg !2129, !psr.id !2130, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i64 %50, metadata !2131, metadata !DIExpression()), !dbg !2123, !psr.id !2132
  %51 = lshr i64 %50, 32, !dbg !2133, !psr.id !2134, !ValueTainted !82, !PointTainted !84
  %52 = trunc i64 %51 to i32, !dbg !2135, !psr.id !2136, !ValueTainted !82, !PointTainted !84
  %53 = zext i32 %52 to i64, !dbg !2135, !psr.id !2137, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i64 %53, metadata !2097, metadata !DIExpression()), !dbg !1995, !psr.id !2138
  %54 = trunc i64 %50 to i32, !dbg !2139, !psr.id !2140, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i32 %54, metadata !2141, metadata !DIExpression()), !dbg !2123, !psr.id !2142
  %55 = getelementptr inbounds i32, i32* %0, i64 %.02, !dbg !2143, !psr.id !2144, !PointTainted !84
  %56 = load i32, i32* %55, align 4, !dbg !2143, !psr.id !2145, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %56, metadata !2146, metadata !DIExpression()), !dbg !2123, !psr.id !2147
  %57 = sub i32 %56, %54, !dbg !2148, !psr.id !2149
  call void @llvm.dbg.value(metadata i32 %57, metadata !2150, metadata !DIExpression()), !dbg !2123, !psr.id !2151
  %58 = call i32 @GT.18(i32 %57, i32 %56), !dbg !2152, !psr.id !2153, !ValueTainted !82, !PointTainted !84
  %59 = zext i32 %58 to i64, !dbg !2154, !psr.id !2155, !ValueTainted !82, !PointTainted !84
  %60 = add i64 %53, %59, !dbg !2156, !psr.id !2157, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i64 %60, metadata !2097, metadata !DIExpression()), !dbg !1995, !psr.id !2158
  %61 = getelementptr inbounds i32, i32* %0, i64 %.02, !dbg !2159, !psr.id !2160, !PointTainted !84
  store i32 %57, i32* %61, align 4, !dbg !2161, !psr.id !2162
  %62 = call i32 @EQ.16(i32 %57, i32 %46), !dbg !2163, !psr.id !2164, !ValueTainted !82, !PointTainted !84
  %63 = call i32 @GT.18(i32 %57, i32 %46), !dbg !2165, !psr.id !2166, !ValueTainted !82, !PointTainted !84
  %64 = call i32 @MUX.17(i32 %62, i32 %.01, i32 %63), !dbg !2167, !psr.id !2168, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i32 %64, metadata !2099, metadata !DIExpression()), !dbg !1995, !psr.id !2169
  br label %65, !dbg !2170, !psr.id !2171

65:                                               ; preds = %44
  %66 = add i64 %.02, 1, !dbg !2172, !psr.id !2173
  call void @llvm.dbg.value(metadata i64 %66, metadata !2101, metadata !DIExpression()), !dbg !1995, !psr.id !2174
  br label %42, !dbg !2175, !llvm.loop !2176, !psr.id !2178

67:                                               ; preds = %42
  %68 = lshr i64 %.0, 32, !dbg !2179, !psr.id !2180, !ValueTainted !82, !PointTainted !84
  %69 = trunc i64 %68 to i32, !dbg !2181, !psr.id !2182, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i32 %69, metadata !2183, metadata !DIExpression()), !dbg !1995, !psr.id !2184
  %70 = trunc i64 %.0 to i32, !dbg !2185, !psr.id !2186, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i32 %70, metadata !2187, metadata !DIExpression()), !dbg !1995, !psr.id !2188
  %71 = call i32 @GT.18(i32 %70, i32 %24), !dbg !2189, !psr.id !2190, !ValueTainted !82, !PointTainted !84
  %72 = or i32 %69, %71, !dbg !2191, !psr.id !2192
  call void @llvm.dbg.value(metadata i32 %72, metadata !2193, metadata !DIExpression()), !dbg !1995, !psr.id !2194
  %73 = xor i32 %72, -1, !dbg !2195, !psr.id !2196, !ValueTainted !82, !PointTainted !84
  %74 = xor i32 %69, -1, !dbg !2197, !psr.id !2198, !ValueTainted !82, !PointTainted !84
  %75 = call i32 @GT.18(i32 %24, i32 %70), !dbg !2199, !psr.id !2200, !ValueTainted !82, !PointTainted !84
  %76 = and i32 %74, %75, !dbg !2201, !psr.id !2202, !ValueTainted !82, !PointTainted !84
  %77 = or i32 %.01, %76, !dbg !2203, !psr.id !2204, !ValueTainted !82, !PointTainted !84
  %78 = and i32 %73, %77, !dbg !2205, !psr.id !2206, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i32 %78, metadata !2207, metadata !DIExpression()), !dbg !1995, !psr.id !2208
  %79 = call i32 @br_i32_add(i32* %0, i32* %2, i32 %72), !dbg !2209, !psr.id !2210
  %80 = call i32 @br_i32_sub(i32* %0, i32* %2, i32 %78), !dbg !2211, !psr.id !2212, !ValueTainted !82
  br label %81, !dbg !2213, !psr.id !2214

81:                                               ; preds = %67, %10, %7
  ret void, !dbg !2213, !psr.id !2215
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_rem(i32 %0, i32 %1, i32 %2) #0 !dbg !2216 {
  %4 = alloca i32, align 4, !psr.id !2217
  call void @llvm.dbg.value(metadata i32 %0, metadata !2218, metadata !DIExpression()), !dbg !2219, !psr.id !2220
  call void @llvm.dbg.value(metadata i32 %1, metadata !2221, metadata !DIExpression()), !dbg !2219, !psr.id !2222
  call void @llvm.dbg.value(metadata i32 %2, metadata !2223, metadata !DIExpression()), !dbg !2219, !psr.id !2224
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2225, metadata !DIExpression()), !dbg !2226, !psr.id !2227
  %5 = call i32 @br_divrem(i32 %0, i32 %1, i32 %2, i32* %4), !dbg !2228, !psr.id !2229, !ValueTainted !82, !PointTainted !84
  %6 = load i32, i32* %4, align 4, !dbg !2230, !psr.id !2231
  ret i32 %6, !dbg !2232, !psr.id !2233
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_i32_word(i32* %0, i32 %1) #0 !dbg !2234 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2237, metadata !DIExpression()), !dbg !2238, !psr.id !2239
  call void @llvm.dbg.value(metadata i32 %1, metadata !2240, metadata !DIExpression()), !dbg !2238, !psr.id !2241
  %3 = lshr i32 %1, 5, !dbg !2242, !psr.id !2243, !ValueTainted !82
  %4 = zext i32 %3 to i64, !dbg !2244, !psr.id !2245, !ValueTainted !82
  %5 = add i64 %4, 1, !dbg !2246, !psr.id !2247, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %5, metadata !2248, metadata !DIExpression()), !dbg !2238, !psr.id !2249
  %6 = and i32 %1, 31, !dbg !2250, !psr.id !2251, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %6, metadata !2252, metadata !DIExpression()), !dbg !2238, !psr.id !2253
  %7 = icmp eq i32 %6, 0, !dbg !2254, !psr.id !2256, !ValueTainted !82
  br i1 %7, label %8, label %11, !dbg !2257, !psr.id !2258, !Tainted !95

8:                                                ; preds = %2
  %9 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !2259, !psr.id !2261, !ValueTainted !82, !PointTainted !84
  %10 = load i32, i32* %9, align 4, !dbg !2259, !psr.id !2262, !Tainted !95, !ValueTainted !82
  br label %21, !dbg !2263, !psr.id !2264

11:                                               ; preds = %2
  %12 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !2265, !psr.id !2267, !ValueTainted !82, !PointTainted !84
  %13 = load i32, i32* %12, align 4, !dbg !2265, !psr.id !2268, !Tainted !95, !ValueTainted !82
  %14 = lshr i32 %13, %6, !dbg !2269, !psr.id !2270, !ValueTainted !82
  %15 = add i64 %5, 1, !dbg !2271, !psr.id !2272, !ValueTainted !82
  %16 = getelementptr inbounds i32, i32* %0, i64 %15, !dbg !2273, !psr.id !2274, !ValueTainted !82, !PointTainted !84
  %17 = load i32, i32* %16, align 4, !dbg !2273, !psr.id !2275, !Tainted !95, !ValueTainted !82
  %18 = sub i32 32, %6, !dbg !2276, !psr.id !2277, !ValueTainted !82
  %19 = shl i32 %17, %18, !dbg !2278, !psr.id !2279, !ValueTainted !82
  %20 = or i32 %14, %19, !dbg !2280, !psr.id !2281, !ValueTainted !82
  br label %21, !dbg !2282, !psr.id !2283

21:                                               ; preds = %11, %8
  %.0 = phi i32 [ %10, %8 ], [ %20, %11 ], !dbg !2284, !psr.id !2285, !ValueTainted !82
  ret i32 %.0, !dbg !2286, !psr.id !2287
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_div(i32 %0, i32 %1, i32 %2) #0 !dbg !2288 {
  %4 = alloca i32, align 4, !psr.id !2289
  call void @llvm.dbg.value(metadata i32 %0, metadata !2290, metadata !DIExpression()), !dbg !2291, !psr.id !2292
  call void @llvm.dbg.value(metadata i32 %1, metadata !2293, metadata !DIExpression()), !dbg !2291, !psr.id !2294
  call void @llvm.dbg.value(metadata i32 %2, metadata !2295, metadata !DIExpression()), !dbg !2291, !psr.id !2296
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2297, metadata !DIExpression()), !dbg !2298, !psr.id !2299
  %5 = call i32 @br_divrem(i32 %0, i32 %1, i32 %2, i32* %4), !dbg !2300, !psr.id !2301, !ValueTainted !82, !PointTainted !84
  ret i32 %5, !dbg !2302, !psr.id !2303
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.16(i32 %0, i32 %1) #0 !dbg !2304 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2305, metadata !DIExpression()), !dbg !2306, !psr.id !2307
  call void @llvm.dbg.value(metadata i32 %1, metadata !2308, metadata !DIExpression()), !dbg !2306, !psr.id !2309
  %3 = xor i32 %0, %1, !dbg !2310, !psr.id !2311, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !2312, metadata !DIExpression()), !dbg !2306, !psr.id !2313
  %4 = sub i32 0, %3, !dbg !2314, !psr.id !2315, !ValueTainted !82, !PointTainted !84
  %5 = or i32 %3, %4, !dbg !2316, !psr.id !2317, !ValueTainted !82, !PointTainted !84
  %6 = lshr i32 %5, 31, !dbg !2318, !psr.id !2319, !ValueTainted !82, !PointTainted !84
  %7 = call i32 @NOT.19(i32 %6), !dbg !2320, !psr.id !2321, !ValueTainted !82, !PointTainted !84
  ret i32 %7, !dbg !2322, !psr.id !2323
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.17(i32 %0, i32 %1, i32 %2) #0 !dbg !2324 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2325, metadata !DIExpression()), !dbg !2326, !psr.id !2327
  call void @llvm.dbg.value(metadata i32 %1, metadata !2328, metadata !DIExpression()), !dbg !2326, !psr.id !2329
  call void @llvm.dbg.value(metadata i32 %2, metadata !2330, metadata !DIExpression()), !dbg !2326, !psr.id !2331
  %4 = sub i32 0, %0, !dbg !2332, !psr.id !2333, !ValueTainted !82, !PointTainted !84
  %5 = xor i32 %1, %2, !dbg !2334, !psr.id !2335, !ValueTainted !82, !PointTainted !84
  %6 = and i32 %4, %5, !dbg !2336, !psr.id !2337, !ValueTainted !82, !PointTainted !84
  %7 = xor i32 %2, %6, !dbg !2338, !psr.id !2339, !ValueTainted !82, !PointTainted !84
  ret i32 %7, !dbg !2340, !psr.id !2341
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.18(i32 %0, i32 %1) #0 !dbg !2342 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2343, metadata !DIExpression()), !dbg !2344, !psr.id !2345
  call void @llvm.dbg.value(metadata i32 %1, metadata !2346, metadata !DIExpression()), !dbg !2344, !psr.id !2347
  %3 = sub i32 %1, %0, !dbg !2348, !psr.id !2349, !ValueTainted !82, !PointTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !2350, metadata !DIExpression()), !dbg !2344, !psr.id !2351
  %4 = xor i32 %0, %1, !dbg !2352, !psr.id !2353, !ValueTainted !82, !PointTainted !84
  %5 = xor i32 %0, %3, !dbg !2354, !psr.id !2355, !ValueTainted !82, !PointTainted !84
  %6 = and i32 %4, %5, !dbg !2356, !psr.id !2357, !ValueTainted !82, !PointTainted !84
  %7 = xor i32 %3, %6, !dbg !2358, !psr.id !2359, !ValueTainted !82, !PointTainted !84
  %8 = lshr i32 %7, 31, !dbg !2360, !psr.id !2361, !ValueTainted !82, !PointTainted !84
  ret i32 %8, !dbg !2362, !psr.id !2363
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.19(i32 %0) #0 !dbg !2364 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2365, metadata !DIExpression()), !dbg !2366, !psr.id !2367
  %2 = xor i32 %0, 1, !dbg !2368, !psr.id !2369, !ValueTainted !82, !PointTainted !84
  ret i32 %2, !dbg !2370, !psr.id !2371
}

declare dso_local i32 @br_divrem(i32, i32, i32, i32*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i32_ninv32(i32 %0) #0 !dbg !2372 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()), !dbg !2374, !psr.id !2375
  %2 = sub i32 2, %0, !dbg !2376, !psr.id !2377, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %2, metadata !2378, metadata !DIExpression()), !dbg !2374, !psr.id !2379
  %3 = mul i32 %2, %0, !dbg !2380, !psr.id !2381, !ValueTainted !82
  %4 = sub i32 2, %3, !dbg !2382, !psr.id !2383, !ValueTainted !82
  %5 = mul i32 %2, %4, !dbg !2384, !psr.id !2385, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %5, metadata !2378, metadata !DIExpression()), !dbg !2374, !psr.id !2386
  %6 = mul i32 %5, %0, !dbg !2387, !psr.id !2388, !ValueTainted !82
  %7 = sub i32 2, %6, !dbg !2389, !psr.id !2390, !ValueTainted !82
  %8 = mul i32 %5, %7, !dbg !2391, !psr.id !2392, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %8, metadata !2378, metadata !DIExpression()), !dbg !2374, !psr.id !2393
  %9 = mul i32 %8, %0, !dbg !2394, !psr.id !2395, !ValueTainted !82
  %10 = sub i32 2, %9, !dbg !2396, !psr.id !2397, !ValueTainted !82
  %11 = mul i32 %8, %10, !dbg !2398, !psr.id !2399, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %11, metadata !2378, metadata !DIExpression()), !dbg !2374, !psr.id !2400
  %12 = mul i32 %11, %0, !dbg !2401, !psr.id !2402, !ValueTainted !82
  %13 = sub i32 2, %12, !dbg !2403, !psr.id !2404, !ValueTainted !82
  %14 = mul i32 %11, %13, !dbg !2405, !psr.id !2406, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %14, metadata !2378, metadata !DIExpression()), !dbg !2374, !psr.id !2407
  %15 = and i32 %0, 1, !dbg !2408, !psr.id !2409, !ValueTainted !82
  %16 = sub i32 0, %14, !dbg !2410, !psr.id !2411, !ValueTainted !82
  %17 = call i32 @MUX.20(i32 %15, i32 %16, i32 0), !dbg !2412, !psr.id !2413, !ValueTainted !82
  ret i32 %17, !dbg !2414, !psr.id !2415
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.20(i32 %0, i32 %1, i32 %2) #0 !dbg !2416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()), !dbg !2418, !psr.id !2419
  call void @llvm.dbg.value(metadata i32 %1, metadata !2420, metadata !DIExpression()), !dbg !2418, !psr.id !2421
  call void @llvm.dbg.value(metadata i32 %2, metadata !2422, metadata !DIExpression()), !dbg !2418, !psr.id !2423
  %4 = sub i32 0, %0, !dbg !2424, !psr.id !2425, !ValueTainted !82
  %5 = xor i32 %1, %2, !dbg !2426, !psr.id !2427, !ValueTainted !82
  %6 = and i32 %4, %5, !dbg !2428, !psr.id !2429, !ValueTainted !82
  %7 = xor i32 %2, %6, !dbg !2430, !psr.id !2431, !ValueTainted !82
  ret i32 %7, !dbg !2432, !psr.id !2433
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_reduce(i32* %0, i32* %1, i32* %2) #0 !dbg !2434 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2435, metadata !DIExpression()), !dbg !2436, !psr.id !2437
  call void @llvm.dbg.value(metadata i32* %1, metadata !2438, metadata !DIExpression()), !dbg !2436, !psr.id !2439
  call void @llvm.dbg.value(metadata i32* %2, metadata !2440, metadata !DIExpression()), !dbg !2436, !psr.id !2441
  %4 = getelementptr inbounds i32, i32* %2, i64 0, !dbg !2442, !psr.id !2443
  %5 = load i32, i32* %4, align 4, !dbg !2442, !psr.id !2444, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %5, metadata !2445, metadata !DIExpression()), !dbg !2436, !psr.id !2446
  %6 = add i32 %5, 31, !dbg !2447, !psr.id !2448, !ValueTainted !82
  %7 = lshr i32 %6, 5, !dbg !2449, !psr.id !2450, !ValueTainted !82
  %8 = zext i32 %7 to i64, !dbg !2451, !psr.id !2452, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %8, metadata !2453, metadata !DIExpression()), !dbg !2436, !psr.id !2454
  %9 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !2455, !psr.id !2456, !PointTainted !84
  store i32 %5, i32* %9, align 4, !dbg !2457, !psr.id !2458
  %10 = icmp eq i32 %5, 0, !dbg !2459, !psr.id !2461, !ValueTainted !82
  br i1 %10, label %11, label %12, !dbg !2462, !psr.id !2463, !Tainted !95

11:                                               ; preds = %3
  br label %52, !dbg !2464, !psr.id !2466

12:                                               ; preds = %3
  %13 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !2467, !psr.id !2468, !PointTainted !84
  %14 = load i32, i32* %13, align 4, !dbg !2467, !psr.id !2469, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %14, metadata !2470, metadata !DIExpression()), !dbg !2436, !psr.id !2471
  %15 = add i32 %14, 31, !dbg !2472, !psr.id !2473, !ValueTainted !82
  %16 = lshr i32 %15, 5, !dbg !2474, !psr.id !2475, !ValueTainted !82
  %17 = zext i32 %16 to i64, !dbg !2476, !psr.id !2477, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %17, metadata !2478, metadata !DIExpression()), !dbg !2436, !psr.id !2479
  %18 = icmp ult i32 %14, %5, !dbg !2480, !psr.id !2482, !ValueTainted !82
  br i1 %18, label %19, label %33, !dbg !2483, !psr.id !2484, !Tainted !95

19:                                               ; preds = %12
  %20 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2485, !psr.id !2487, !PointTainted !84
  %21 = bitcast i32* %20 to i8*, !dbg !2488, !psr.id !2489, !PointTainted !84
  %22 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !2490, !psr.id !2491, !PointTainted !84
  %23 = bitcast i32* %22 to i8*, !dbg !2488, !psr.id !2492, !PointTainted !84
  %24 = mul i64 %17, 4, !dbg !2493, !psr.id !2494, !ValueTainted !82
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %23, i64 %24, i1 false), !dbg !2488, !psr.id !2495, !CalledTainted !1102
  call void @llvm.dbg.value(metadata i64 %17, metadata !2496, metadata !DIExpression()), !dbg !2436, !psr.id !2497
  br label %25, !dbg !2498, !psr.id !2500

25:                                               ; preds = %30, %19
  %.0 = phi i64 [ %17, %19 ], [ %31, %30 ], !dbg !2501, !psr.id !2502, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2496, metadata !DIExpression()), !dbg !2436, !psr.id !2503
  %26 = icmp ult i64 %.0, %8, !dbg !2504, !psr.id !2506, !ValueTainted !82
  br i1 %26, label %27, label %32, !dbg !2507, !psr.id !2508, !Tainted !95

27:                                               ; preds = %25
  %28 = add i64 %.0, 1, !dbg !2509, !psr.id !2511, !ValueTainted !82
  %29 = getelementptr inbounds i32, i32* %0, i64 %28, !dbg !2512, !psr.id !2513, !ValueTainted !82, !PointTainted !84
  store i32 0, i32* %29, align 4, !dbg !2514, !psr.id !2515, !Tainted !95
  br label %30, !dbg !2516, !psr.id !2517

30:                                               ; preds = %27
  %31 = add i64 %.0, 1, !dbg !2518, !psr.id !2519, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %31, metadata !2496, metadata !DIExpression()), !dbg !2436, !psr.id !2520
  br label %25, !dbg !2521, !llvm.loop !2522, !psr.id !2524

32:                                               ; preds = %25
  br label %52, !dbg !2525, !psr.id !2526

33:                                               ; preds = %12
  %34 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2527, !psr.id !2528, !PointTainted !84
  %35 = bitcast i32* %34 to i8*, !dbg !2529, !psr.id !2530, !PointTainted !84
  %36 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !2531, !psr.id !2532, !PointTainted !84
  %37 = sub i64 %17, %8, !dbg !2533, !psr.id !2534, !ValueTainted !82
  %38 = getelementptr inbounds i32, i32* %36, i64 %37, !dbg !2535, !psr.id !2536, !ValueTainted !82, !PointTainted !84
  %39 = bitcast i32* %38 to i8*, !dbg !2529, !psr.id !2537, !ValueTainted !82, !PointTainted !84
  %40 = sub i64 %8, 1, !dbg !2538, !psr.id !2539, !ValueTainted !82
  %41 = mul i64 %40, 4, !dbg !2540, !psr.id !2541, !ValueTainted !82
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %39, i64 %41, i1 false), !dbg !2529, !psr.id !2542, !CalledTainted !2543
  %42 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !2544, !psr.id !2545, !ValueTainted !82, !PointTainted !84
  store i32 0, i32* %42, align 4, !dbg !2546, !psr.id !2547, !Tainted !95
  %43 = add i64 1, %17, !dbg !2548, !psr.id !2550, !ValueTainted !82
  %44 = sub i64 %43, %8, !dbg !2551, !psr.id !2552, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %44, metadata !2496, metadata !DIExpression()), !dbg !2436, !psr.id !2553
  br label %45, !dbg !2554, !psr.id !2555

45:                                               ; preds = %50, %33
  %.1 = phi i64 [ %44, %33 ], [ %51, %50 ], !dbg !2556, !psr.id !2557, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %.1, metadata !2496, metadata !DIExpression()), !dbg !2436, !psr.id !2558
  %46 = icmp ugt i64 %.1, 0, !dbg !2559, !psr.id !2561, !ValueTainted !82
  br i1 %46, label %47, label %52, !dbg !2562, !psr.id !2563, !Tainted !95

47:                                               ; preds = %45
  %48 = getelementptr inbounds i32, i32* %1, i64 %.1, !dbg !2564, !psr.id !2566, !ValueTainted !82, !PointTainted !84
  %49 = load i32, i32* %48, align 4, !dbg !2564, !psr.id !2567, !Tainted !95, !ValueTainted !82
  call void @br_i32_muladd_small(i32* %0, i32 %49, i32* %2), !dbg !2568, !psr.id !2569
  br label %50, !dbg !2570, !psr.id !2571

50:                                               ; preds = %47
  %51 = add i64 %.1, -1, !dbg !2572, !psr.id !2573, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %51, metadata !2496, metadata !DIExpression()), !dbg !2436, !psr.id !2574
  br label %45, !dbg !2575, !llvm.loop !2576, !psr.id !2578

52:                                               ; preds = %45, %32, %11
  ret void, !dbg !2579, !psr.id !2580
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i32_sub(i32* %0, i32* %1, i32 %2) #0 !dbg !2581 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2582, metadata !DIExpression()), !dbg !2583, !psr.id !2584
  call void @llvm.dbg.value(metadata i32* %1, metadata !2585, metadata !DIExpression()), !dbg !2583, !psr.id !2586
  call void @llvm.dbg.value(metadata i32 %2, metadata !2587, metadata !DIExpression()), !dbg !2583, !psr.id !2588
  call void @llvm.dbg.value(metadata i32 0, metadata !2589, metadata !DIExpression()), !dbg !2583, !psr.id !2590
  %4 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !2591, !psr.id !2592, !PointTainted !84
  %5 = load i32, i32* %4, align 4, !dbg !2591, !psr.id !2593, !ValueTainted !82
  %6 = add i32 %5, 63, !dbg !2594, !psr.id !2595, !ValueTainted !82
  %7 = lshr i32 %6, 5, !dbg !2596, !psr.id !2597, !ValueTainted !82
  %8 = zext i32 %7 to i64, !dbg !2598, !psr.id !2599, !ValueTainted !82
  call void @llvm.dbg.value(metadata i64 %8, metadata !2600, metadata !DIExpression()), !dbg !2583, !psr.id !2601
  call void @llvm.dbg.value(metadata i64 1, metadata !2602, metadata !DIExpression()), !dbg !2583, !psr.id !2603
  br label %9, !dbg !2604, !psr.id !2606

9:                                                ; preds = %24, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %24 ], !dbg !2583, !psr.id !2607, !ValueTainted !82
  %.0 = phi i64 [ 1, %3 ], [ %25, %24 ], !dbg !2608, !psr.id !2609
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2602, metadata !DIExpression()), !dbg !2583, !psr.id !2610
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2589, metadata !DIExpression()), !dbg !2583, !psr.id !2611
  %10 = icmp ult i64 %.0, %8, !dbg !2612, !psr.id !2614, !ValueTainted !82
  br i1 %10, label %11, label %26, !dbg !2615, !psr.id !2616, !Tainted !95

11:                                               ; preds = %9
  %12 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !2617, !psr.id !2619, !PointTainted !84
  %13 = load i32, i32* %12, align 4, !dbg !2617, !psr.id !2620, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %13, metadata !2621, metadata !DIExpression()), !dbg !2622, !psr.id !2623
  %14 = getelementptr inbounds i32, i32* %1, i64 %.0, !dbg !2624, !psr.id !2625, !PointTainted !84
  %15 = load i32, i32* %14, align 4, !dbg !2624, !psr.id !2626, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %15, metadata !2627, metadata !DIExpression()), !dbg !2622, !psr.id !2628
  %16 = sub i32 %13, %15, !dbg !2629, !psr.id !2630, !ValueTainted !82
  %17 = sub i32 %16, %.01, !dbg !2631, !psr.id !2632, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %17, metadata !2633, metadata !DIExpression()), !dbg !2622, !psr.id !2634
  %18 = call i32 @EQ.23(i32 %17, i32 %13), !dbg !2635, !psr.id !2636, !ValueTainted !82
  %19 = and i32 %.01, %18, !dbg !2637, !psr.id !2638, !ValueTainted !82
  %20 = call i32 @GT.24(i32 %17, i32 %13), !dbg !2639, !psr.id !2640, !ValueTainted !82
  %21 = or i32 %19, %20, !dbg !2641, !psr.id !2642, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %21, metadata !2589, metadata !DIExpression()), !dbg !2583, !psr.id !2643
  %22 = call i32 @MUX.25(i32 %2, i32 %17, i32 %13), !dbg !2644, !psr.id !2645, !ValueTainted !82, !PointTainted !84
  %23 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !2646, !psr.id !2647, !PointTainted !84
  store i32 %22, i32* %23, align 4, !dbg !2648, !psr.id !2649
  br label %24, !dbg !2650, !psr.id !2651

24:                                               ; preds = %11
  %25 = add i64 %.0, 1, !dbg !2652, !psr.id !2653
  call void @llvm.dbg.value(metadata i64 %25, metadata !2602, metadata !DIExpression()), !dbg !2583, !psr.id !2654
  br label %9, !dbg !2655, !llvm.loop !2656, !psr.id !2658

26:                                               ; preds = %9
  ret i32 %.01, !dbg !2659, !psr.id !2660
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.23(i32 %0, i32 %1) #0 !dbg !2661 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2662, metadata !DIExpression()), !dbg !2663, !psr.id !2664
  call void @llvm.dbg.value(metadata i32 %1, metadata !2665, metadata !DIExpression()), !dbg !2663, !psr.id !2666
  %3 = xor i32 %0, %1, !dbg !2667, !psr.id !2668, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %3, metadata !2669, metadata !DIExpression()), !dbg !2663, !psr.id !2670
  %4 = sub i32 0, %3, !dbg !2671, !psr.id !2672, !ValueTainted !82
  %5 = or i32 %3, %4, !dbg !2673, !psr.id !2674, !ValueTainted !82
  %6 = lshr i32 %5, 31, !dbg !2675, !psr.id !2676, !ValueTainted !82
  %7 = call i32 @NOT.26(i32 %6), !dbg !2677, !psr.id !2678, !ValueTainted !82
  ret i32 %7, !dbg !2679, !psr.id !2680
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.24(i32 %0, i32 %1) #0 !dbg !2681 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2682, metadata !DIExpression()), !dbg !2683, !psr.id !2684
  call void @llvm.dbg.value(metadata i32 %1, metadata !2685, metadata !DIExpression()), !dbg !2683, !psr.id !2686
  %3 = sub i32 %1, %0, !dbg !2687, !psr.id !2688, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %3, metadata !2689, metadata !DIExpression()), !dbg !2683, !psr.id !2690
  %4 = xor i32 %0, %1, !dbg !2691, !psr.id !2692, !ValueTainted !82
  %5 = xor i32 %0, %3, !dbg !2693, !psr.id !2694, !ValueTainted !82
  %6 = and i32 %4, %5, !dbg !2695, !psr.id !2696, !ValueTainted !82
  %7 = xor i32 %3, %6, !dbg !2697, !psr.id !2698, !ValueTainted !82
  %8 = lshr i32 %7, 31, !dbg !2699, !psr.id !2700, !ValueTainted !82
  ret i32 %8, !dbg !2701, !psr.id !2702
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.25(i32 %0, i32 %1, i32 %2) #0 !dbg !2703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2704, metadata !DIExpression()), !dbg !2705, !psr.id !2706
  call void @llvm.dbg.value(metadata i32 %1, metadata !2707, metadata !DIExpression()), !dbg !2705, !psr.id !2708
  call void @llvm.dbg.value(metadata i32 %2, metadata !2709, metadata !DIExpression()), !dbg !2705, !psr.id !2710
  %4 = sub i32 0, %0, !dbg !2711, !psr.id !2712, !ValueTainted !82, !PointTainted !84
  %5 = xor i32 %1, %2, !dbg !2713, !psr.id !2714, !ValueTainted !82
  %6 = and i32 %4, %5, !dbg !2715, !psr.id !2716, !ValueTainted !82, !PointTainted !84
  %7 = xor i32 %2, %6, !dbg !2717, !psr.id !2718, !ValueTainted !82, !PointTainted !84
  ret i32 %7, !dbg !2719, !psr.id !2720
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.26(i32 %0) #0 !dbg !2721 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2722, metadata !DIExpression()), !dbg !2723, !psr.id !2724
  %2 = xor i32 %0, 1, !dbg !2725, !psr.id !2726, !ValueTainted !82
  ret i32 %2, !dbg !2727, !psr.id !2728
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i32_to_monty(i32* %0, i32* %1) #0 !dbg !2729 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2732, metadata !DIExpression()), !dbg !2733, !psr.id !2734
  call void @llvm.dbg.value(metadata i32* %1, metadata !2735, metadata !DIExpression()), !dbg !2733, !psr.id !2736
  %3 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !2737, !psr.id !2739
  %4 = load i32, i32* %3, align 4, !dbg !2737, !psr.id !2740, !ValueTainted !82
  %5 = add i32 %4, 31, !dbg !2741, !psr.id !2742, !ValueTainted !82
  %6 = lshr i32 %5, 5, !dbg !2743, !psr.id !2744, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %6, metadata !2745, metadata !DIExpression()), !dbg !2733, !psr.id !2746
  br label %7, !dbg !2747, !psr.id !2748

7:                                                ; preds = %10, %2
  %.0 = phi i32 [ %6, %2 ], [ %11, %10 ], !dbg !2749, !psr.id !2750, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2745, metadata !DIExpression()), !dbg !2733, !psr.id !2751
  %8 = icmp ugt i32 %.0, 0, !dbg !2752, !psr.id !2754, !ValueTainted !82
  br i1 %8, label %9, label %12, !dbg !2755, !psr.id !2756, !Tainted !95

9:                                                ; preds = %7
  call void @br_i32_muladd_small(i32* %0, i32 0, i32* %1), !dbg !2757, !psr.id !2759
  br label %10, !dbg !2760, !psr.id !2761

10:                                               ; preds = %9
  %11 = add i32 %.0, -1, !dbg !2762, !psr.id !2763, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %11, metadata !2745, metadata !DIExpression()), !dbg !2733, !psr.id !2764
  br label %7, !dbg !2765, !llvm.loop !2766, !psr.id !2768

12:                                               ; preds = %7
  ret void, !dbg !2769, !psr.id !2770
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i32_private(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !2771 {
  %3 = alloca [396 x i32], align 16, !psr.id !2790
  call void @llvm.dbg.value(metadata i8* %0, metadata !2791, metadata !DIExpression()), !dbg !2792, !psr.id !2793
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !2794, metadata !DIExpression()), !dbg !2792, !psr.id !2795
  call void @llvm.dbg.declare(metadata [396 x i32]* %3, metadata !2796, metadata !DIExpression()), !dbg !2800, !psr.id !2801
  %4 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !2802, !psr.id !2803
  call void @llvm.dbg.value(metadata i32* %4, metadata !2804, metadata !DIExpression()), !dbg !2792, !psr.id !2805
  %5 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !2806, !psr.id !2807
  %6 = getelementptr inbounds i32, i32* %5, i64 66, !dbg !2808, !psr.id !2809
  call void @llvm.dbg.value(metadata i32* %6, metadata !2810, metadata !DIExpression()), !dbg !2792, !psr.id !2811
  %7 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !2812, !psr.id !2813
  %8 = getelementptr inbounds i32, i32* %7, i64 132, !dbg !2814, !psr.id !2815
  call void @llvm.dbg.value(metadata i32* %8, metadata !2816, metadata !DIExpression()), !dbg !2792, !psr.id !2817
  %9 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !2818, !psr.id !2819
  %10 = getelementptr inbounds i32, i32* %9, i64 198, !dbg !2820, !psr.id !2821
  call void @llvm.dbg.value(metadata i32* %10, metadata !2822, metadata !DIExpression()), !dbg !2792, !psr.id !2823
  %11 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !2824, !psr.id !2825
  %12 = getelementptr inbounds i32, i32* %11, i64 264, !dbg !2826, !psr.id !2827
  call void @llvm.dbg.value(metadata i32* %12, metadata !2828, metadata !DIExpression()), !dbg !2792, !psr.id !2829
  %13 = getelementptr inbounds [396 x i32], [396 x i32]* %3, i64 0, i64 0, !dbg !2830, !psr.id !2831
  %14 = getelementptr inbounds i32, i32* %13, i64 330, !dbg !2832, !psr.id !2833
  call void @llvm.dbg.value(metadata i32* %14, metadata !2834, metadata !DIExpression()), !dbg !2792, !psr.id !2835
  call void @llvm.dbg.value(metadata i32* %10, metadata !2836, metadata !DIExpression()), !dbg !2792, !psr.id !2837
  %15 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !2838, !psr.id !2839
  %16 = load i8*, i8** %15, align 8, !dbg !2838, !psr.id !2840, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %16, metadata !2841, metadata !DIExpression()), !dbg !2792, !psr.id !2842
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !2843, !psr.id !2844
  %18 = load i64, i64* %17, align 8, !dbg !2843, !psr.id !2845
  call void @llvm.dbg.value(metadata i64 %18, metadata !2846, metadata !DIExpression()), !dbg !2792, !psr.id !2847
  br label %19, !dbg !2848, !psr.id !2849

19:                                               ; preds = %27, %2
  %.05 = phi i64 [ %18, %2 ], [ %29, %27 ], !dbg !2792, !psr.id !2850
  %.03 = phi i8* [ %16, %2 ], [ %28, %27 ], !dbg !2792, !psr.id !2851, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %.03, metadata !2841, metadata !DIExpression()), !dbg !2792, !psr.id !2852
  call void @llvm.dbg.value(metadata i64 %.05, metadata !2846, metadata !DIExpression()), !dbg !2792, !psr.id !2853
  %20 = icmp ugt i64 %.05, 0, !dbg !2854, !psr.id !2855
  br i1 %20, label %21, label %25, !dbg !2856, !psr.id !2857

21:                                               ; preds = %19
  %22 = load i8, i8* %.03, align 1, !dbg !2858, !psr.id !2859, !ValueTainted !82
  %23 = zext i8 %22 to i32, !dbg !2858, !psr.id !2860, !ValueTainted !82
  %24 = icmp eq i32 %23, 0, !dbg !2861, !psr.id !2862, !ValueTainted !82
  br label %25, !psr.id !2863

25:                                               ; preds = %21, %19
  %26 = phi i1 [ false, %19 ], [ %24, %21 ], !dbg !2792, !psr.id !2864, !ValueTainted !82
  br i1 %26, label %27, label %30, !dbg !2848, !psr.id !2865, !Tainted !95

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, i8* %.03, i32 1, !dbg !2866, !psr.id !2868, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %28, metadata !2841, metadata !DIExpression()), !dbg !2792, !psr.id !2869
  %29 = add i64 %.05, -1, !dbg !2870, !psr.id !2871
  call void @llvm.dbg.value(metadata i64 %29, metadata !2846, metadata !DIExpression()), !dbg !2792, !psr.id !2872
  br label %19, !dbg !2848, !llvm.loop !2873, !psr.id !2875

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !2876, !psr.id !2877
  %32 = load i8*, i8** %31, align 8, !dbg !2876, !psr.id !2878, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %32, metadata !2879, metadata !DIExpression()), !dbg !2792, !psr.id !2880
  %33 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !2881, !psr.id !2882
  %34 = load i64, i64* %33, align 8, !dbg !2881, !psr.id !2883
  call void @llvm.dbg.value(metadata i64 %34, metadata !2884, metadata !DIExpression()), !dbg !2792, !psr.id !2885
  br label %35, !dbg !2886, !psr.id !2887

35:                                               ; preds = %43, %30
  %.06 = phi i64 [ %34, %30 ], [ %45, %43 ], !dbg !2792, !psr.id !2888
  %.04 = phi i8* [ %32, %30 ], [ %44, %43 ], !dbg !2792, !psr.id !2889, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %.04, metadata !2879, metadata !DIExpression()), !dbg !2792, !psr.id !2890
  call void @llvm.dbg.value(metadata i64 %.06, metadata !2884, metadata !DIExpression()), !dbg !2792, !psr.id !2891
  %36 = icmp ugt i64 %.06, 0, !dbg !2892, !psr.id !2893
  br i1 %36, label %37, label %41, !dbg !2894, !psr.id !2895

37:                                               ; preds = %35
  %38 = load i8, i8* %.04, align 1, !dbg !2896, !psr.id !2897, !ValueTainted !82
  %39 = zext i8 %38 to i32, !dbg !2896, !psr.id !2898, !ValueTainted !82
  %40 = icmp eq i32 %39, 0, !dbg !2899, !psr.id !2900, !ValueTainted !82
  br label %41, !psr.id !2901

41:                                               ; preds = %37, %35
  %42 = phi i1 [ false, %35 ], [ %40, %37 ], !dbg !2792, !psr.id !2902, !ValueTainted !82
  br i1 %42, label %43, label %46, !dbg !2886, !psr.id !2903, !Tainted !95

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, i8* %.04, i32 1, !dbg !2904, !psr.id !2906, !PointTainted !84
  call void @llvm.dbg.value(metadata i8* %44, metadata !2879, metadata !DIExpression()), !dbg !2792, !psr.id !2907
  %45 = add i64 %.06, -1, !dbg !2908, !psr.id !2909
  call void @llvm.dbg.value(metadata i64 %45, metadata !2884, metadata !DIExpression()), !dbg !2792, !psr.id !2910
  br label %35, !dbg !2886, !llvm.loop !2911, !psr.id !2913

46:                                               ; preds = %41
  %47 = icmp ugt i64 %.05, 260, !dbg !2914, !psr.id !2916
  br i1 %47, label %50, label %48, !dbg !2917, !psr.id !2918

48:                                               ; preds = %46
  %49 = icmp ugt i64 %.06, 260, !dbg !2919, !psr.id !2920
  br i1 %49, label %50, label %51, !dbg !2921, !psr.id !2922

50:                                               ; preds = %48, %46
  br label %100, !dbg !2923, !psr.id !2925

51:                                               ; preds = %48
  call void @br_i32_decode(i32* %6, i8* %.03, i64 %.05), !dbg !2926, !psr.id !2927
  %52 = getelementptr inbounds i32, i32* %6, i64 0, !dbg !2928, !psr.id !2929
  %53 = load i32, i32* %52, align 4, !dbg !2928, !psr.id !2930
  call void @br_i32_zero.31(i32* %8, i32 %53), !dbg !2931, !psr.id !2932
  call void @br_i32_decode(i32* %4, i8* %.04, i64 %.06), !dbg !2933, !psr.id !2934
  call void @br_i32_mulacc(i32* %8, i32* %6, i32* %4), !dbg !2935, !psr.id !2936
  %54 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !2937, !psr.id !2938
  %55 = load i32, i32* %54, align 8, !dbg !2937, !psr.id !2939
  %56 = add i32 %55, 7, !dbg !2940, !psr.id !2941
  %57 = lshr i32 %56, 3, !dbg !2942, !psr.id !2943
  %58 = zext i32 %57 to i64, !dbg !2944, !psr.id !2945
  call void @llvm.dbg.value(metadata i64 %58, metadata !2946, metadata !DIExpression()), !dbg !2792, !psr.id !2947
  %59 = getelementptr inbounds i32, i32* %8, i64 132, !dbg !2948, !psr.id !2949, !PointTainted !84
  %60 = bitcast i32* %59 to i8*, !dbg !2950, !psr.id !2951
  call void @br_i32_encode(i8* %60, i64 %58, i32* %8), !dbg !2952, !psr.id !2953
  call void @llvm.dbg.value(metadata i64 %58, metadata !2954, metadata !DIExpression()), !dbg !2792, !psr.id !2955
  call void @llvm.dbg.value(metadata i32 0, metadata !2956, metadata !DIExpression()), !dbg !2792, !psr.id !2957
  br label %61, !dbg !2958, !psr.id !2959

61:                                               ; preds = %63, %51
  %.02 = phi i64 [ %58, %51 ], [ %64, %63 ], !dbg !2792, !psr.id !2960
  %.01 = phi i32 [ 0, %51 ], [ %76, %63 ], !dbg !2792, !psr.id !2961, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2956, metadata !DIExpression()), !dbg !2792, !psr.id !2962
  call void @llvm.dbg.value(metadata i64 %.02, metadata !2954, metadata !DIExpression()), !dbg !2792, !psr.id !2963
  %62 = icmp ugt i64 %.02, 0, !dbg !2964, !psr.id !2965
  br i1 %62, label %63, label %77, !dbg !2958, !psr.id !2966

63:                                               ; preds = %61
  %64 = add i64 %.02, -1, !dbg !2967, !psr.id !2969
  call void @llvm.dbg.value(metadata i64 %64, metadata !2954, metadata !DIExpression()), !dbg !2792, !psr.id !2970
  %65 = getelementptr inbounds i32, i32* %8, i64 132, !dbg !2971, !psr.id !2972, !PointTainted !84
  %66 = bitcast i32* %65 to i8*, !dbg !2973, !psr.id !2974, !PointTainted !84
  %67 = getelementptr inbounds i8, i8* %66, i64 %64, !dbg !2973, !psr.id !2975, !PointTainted !84
  %68 = load i8, i8* %67, align 1, !dbg !2973, !psr.id !2976, !ValueTainted !82
  %69 = zext i8 %68 to i32, !dbg !2973, !psr.id !2977, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %69, metadata !2978, metadata !DIExpression()), !dbg !2979, !psr.id !2980
  %70 = getelementptr inbounds i8, i8* %0, i64 %64, !dbg !2981, !psr.id !2982, !PointTainted !84
  %71 = load i8, i8* %70, align 1, !dbg !2981, !psr.id !2983, !ValueTainted !82
  %72 = zext i8 %71 to i32, !dbg !2981, !psr.id !2984, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %72, metadata !2985, metadata !DIExpression()), !dbg !2979, !psr.id !2986
  %73 = add i32 %69, %.01, !dbg !2987, !psr.id !2988, !ValueTainted !82
  %74 = sub i32 %72, %73, !dbg !2989, !psr.id !2990, !ValueTainted !82
  %75 = lshr i32 %74, 8, !dbg !2991, !psr.id !2992, !ValueTainted !82
  %76 = and i32 %75, 1, !dbg !2993, !psr.id !2994, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %76, metadata !2956, metadata !DIExpression()), !dbg !2792, !psr.id !2995
  br label %61, !dbg !2958, !llvm.loop !2996, !psr.id !2998

77:                                               ; preds = %61
  %78 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !2999, !psr.id !3000
  %79 = load i32, i32* %78, align 4, !dbg !2999, !psr.id !3001
  %80 = call i32 @br_i32_ninv32(i32 %79), !dbg !3002, !psr.id !3003, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %80, metadata !3004, metadata !DIExpression()), !dbg !2792, !psr.id !3005
  call void @br_i32_decode_reduce(i32* %12, i8* %0, i64 %58, i32* %6), !dbg !3006, !psr.id !3007
  %81 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !3008, !psr.id !3009
  %82 = load i8*, i8** %81, align 8, !dbg !3008, !psr.id !3010, !PointTainted !84
  %83 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !3011, !psr.id !3012
  %84 = load i64, i64* %83, align 8, !dbg !3011, !psr.id !3013
  call void @br_i32_modpow(i32* %12, i8* %82, i64 %84, i32* %6, i32 %80, i32* %14, i32* %8), !dbg !3014, !psr.id !3015
  %85 = getelementptr inbounds i32, i32* %4, i64 1, !dbg !3016, !psr.id !3017
  %86 = load i32, i32* %85, align 4, !dbg !3016, !psr.id !3018, !ValueTainted !82
  %87 = call i32 @br_i32_ninv32(i32 %86), !dbg !3019, !psr.id !3020, !ValueTainted !82
  call void @llvm.dbg.value(metadata i32 %87, metadata !3021, metadata !DIExpression()), !dbg !2792, !psr.id !3022
  call void @br_i32_decode_reduce(i32* %10, i8* %0, i64 %58, i32* %4), !dbg !3023, !psr.id !3024
  %88 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !3025, !psr.id !3026
  %89 = load i8*, i8** %88, align 8, !dbg !3025, !psr.id !3027, !PointTainted !84
  %90 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !3028, !psr.id !3029
  %91 = load i64, i64* %90, align 8, !dbg !3028, !psr.id !3030
  call void @br_i32_modpow(i32* %10, i8* %89, i64 %91, i32* %4, i32 %87, i32* %14, i32* %8), !dbg !3031, !psr.id !3032
  call void @br_i32_reduce(i32* %8, i32* %10, i32* %6), !dbg !3033, !psr.id !3034
  %92 = call i32 @br_i32_sub(i32* %12, i32* %8, i32 1), !dbg !3035, !psr.id !3036, !ValueTainted !82
  %93 = call i32 @br_i32_add(i32* %12, i32* %6, i32 %92), !dbg !3037, !psr.id !3038, !ValueTainted !82
  call void @br_i32_to_monty(i32* %12, i32* %6), !dbg !3039, !psr.id !3040
  %94 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !3041, !psr.id !3042
  %95 = load i8*, i8** %94, align 8, !dbg !3041, !psr.id !3043, !PointTainted !84
  %96 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !3044, !psr.id !3045
  %97 = load i64, i64* %96, align 8, !dbg !3044, !psr.id !3046
  call void @br_i32_decode_reduce(i32* %14, i8* %95, i64 %97, i32* %6), !dbg !3047, !psr.id !3048
  call void @br_i32_montymul(i32* %8, i32* %12, i32* %14, i32* %6, i32 %80), !dbg !3049, !psr.id !3050
  call void @br_i32_mulacc(i32* %10, i32* %4, i32* %8), !dbg !3051, !psr.id !3052
  call void @br_i32_encode(i8* %0, i64 %58, i32* %10), !dbg !3053, !psr.id !3054
  %98 = and i32 %80, %87, !dbg !3055, !psr.id !3056, !ValueTainted !82
  %99 = and i32 %98, %.01, !dbg !3057, !psr.id !3058, !ValueTainted !82
  br label %100, !dbg !3059, !psr.id !3060

100:                                              ; preds = %77, %50
  %.0 = phi i32 [ 0, %50 ], [ %99, %77 ], !dbg !2792, !psr.id !3061, !ValueTainted !82
  ret i32 %.0, !dbg !3062, !psr.id !3063
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i32_zero.31(i32* %0, i32 %1) #0 !dbg !3064 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3065, metadata !DIExpression()), !dbg !3066, !psr.id !3067
  call void @llvm.dbg.value(metadata i32 %1, metadata !3068, metadata !DIExpression()), !dbg !3066, !psr.id !3069
  %3 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !3070, !psr.id !3071
  call void @llvm.dbg.value(metadata i32* %3, metadata !3065, metadata !DIExpression()), !dbg !3066, !psr.id !3072
  store i32 %1, i32* %0, align 4, !dbg !3073, !psr.id !3074
  %4 = bitcast i32* %3 to i8*, !dbg !3075, !psr.id !3076
  %5 = add i32 %1, 31, !dbg !3077, !psr.id !3078, !ValueTainted !82
  %6 = lshr i32 %5, 5, !dbg !3079, !psr.id !3080, !ValueTainted !82
  %7 = zext i32 %6 to i64, !dbg !3081, !psr.id !3082, !ValueTainted !82
  %8 = mul i64 %7, 4, !dbg !3083, !psr.id !3084, !ValueTainted !82
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 %8, i1 false), !dbg !3075, !psr.id !3085, !CalledTainted !1102
  ret void, !dbg !3086, !psr.id !3087
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @decrypt_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0, !3, !5, !7, !15, !18, !24, !28, !33, !35, !37, !39, !42, !44, !46, !48, !50}
!llvm.ident = !{!54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54, !54}
!llvm.module.flags = !{!55, !56, !57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "decrypt.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "../BearSSL/src/int/i32_add.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "../BearSSL/src/int/i32_bitlen.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 26, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 42, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !17, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "../BearSSL/src/int/i32_decode.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!17 = !{!10, !14}
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !20, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../BearSSL/src/int/i32_decred.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!20 = !{!21, !10}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 46, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !26, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../BearSSL/src/int/i32_encode.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!26 = !{!27}
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../BearSSL/src/int/i32_fmont.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!30 = !{!31, !10}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 27, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 45, baseType: !23)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "../BearSSL/src/int/i32_modpow.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "../BearSSL/src/int/i32_montmul.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "../BearSSL/src/int/i32_mulacc.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "../BearSSL/src/int/i32_muladd.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!41 = !{!31, !10, !21, !14}
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../BearSSL/src/int/i32_ninv32.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../BearSSL/src/int/i32_reduce.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../BearSSL/src/int/i32_sub.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../BearSSL/src/int/i32_tmont.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !52, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../BearSSL/src/rsa/rsa_i32_priv.c", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!54 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = distinct !DISubprogram(name: "br_ccopy", scope: !1, file: !1, line: 29, type: !59, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !10, !61, !62, !21}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!64 = !DILocalVariable(name: "ctl", arg: 1, scope: !58, file: !1, line: 29, type: !10)
!65 = !DILocation(line: 0, scope: !58)
!66 = !{!"0"}
!67 = !DILocalVariable(name: "dst", arg: 2, scope: !58, file: !1, line: 29, type: !61)
!68 = !{!"1"}
!69 = !DILocalVariable(name: "src", arg: 3, scope: !58, file: !1, line: 29, type: !62)
!70 = !{!"2"}
!71 = !DILocalVariable(name: "len", arg: 4, scope: !58, file: !1, line: 29, type: !21)
!72 = !{!"3"}
!73 = !DILocalVariable(name: "d", scope: !58, file: !1, line: 31, type: !53)
!74 = !{!"4"}
!75 = !DILocalVariable(name: "s", scope: !58, file: !1, line: 32, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!78 = !{!"5"}
!79 = !DILocation(line: 36, column: 2, scope: !58)
!80 = !{!"6"}
!81 = !{!"7"}
!82 = !{!"ValueTainted"}
!83 = !{!"8"}
!84 = !{!"PointTainted"}
!85 = !{!"9"}
!86 = !{!"10"}
!87 = !{!"11"}
!88 = !{!"12"}
!89 = !DILocation(line: 36, column: 13, scope: !58)
!90 = !{!"13"}
!91 = !{!"14"}
!92 = !DILocation(line: 36, column: 16, scope: !58)
!93 = !{!"15"}
!94 = !{!"16"}
!95 = !{!"Tainted"}
!96 = !DILocation(line: 39, column: 10, scope: !97)
!97 = distinct !DILexicalBlock(scope: !58, file: !1, line: 36, column: 21)
!98 = !{!"17"}
!99 = !{!"18"}
!100 = !DILocation(line: 39, column: 7, scope: !97)
!101 = !{!"19"}
!102 = !{!"20"}
!103 = !DILocalVariable(name: "x", scope: !97, file: !1, line: 37, type: !10)
!104 = !DILocation(line: 0, scope: !97)
!105 = !{!"21"}
!106 = !DILocation(line: 40, column: 7, scope: !97)
!107 = !{!"22"}
!108 = !{!"23"}
!109 = !DILocalVariable(name: "y", scope: !97, file: !1, line: 37, type: !10)
!110 = !{!"24"}
!111 = !DILocation(line: 41, column: 8, scope: !97)
!112 = !{!"25"}
!113 = !{!"26"}
!114 = !DILocation(line: 41, column: 6, scope: !97)
!115 = !{!"27"}
!116 = !DILocation(line: 42, column: 5, scope: !97)
!117 = !{!"28"}
!118 = !{!"29"}
!119 = distinct !{!119, !79, !120, !121}
!120 = !DILocation(line: 43, column: 2, scope: !58)
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!"30"}
!123 = !DILocation(line: 44, column: 1, scope: !58)
!124 = !{!"31"}
!125 = distinct !DISubprogram(name: "MUX", scope: !126, file: !126, line: 770, type: !127, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!126 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!127 = !DISubroutineType(types: !128)
!128 = !{!10, !10, !10, !10}
!129 = !DILocalVariable(name: "ctl", arg: 1, scope: !125, file: !126, line: 770, type: !10)
!130 = !DILocation(line: 0, scope: !125)
!131 = !{!"32"}
!132 = !DILocalVariable(name: "x", arg: 2, scope: !125, file: !126, line: 770, type: !10)
!133 = !{!"33"}
!134 = !DILocalVariable(name: "y", arg: 3, scope: !125, file: !126, line: 770, type: !10)
!135 = !{!"34"}
!136 = !DILocation(line: 772, column: 14, scope: !125)
!137 = !{!"35"}
!138 = !DILocation(line: 772, column: 24, scope: !125)
!139 = !{!"36"}
!140 = !DILocation(line: 772, column: 19, scope: !125)
!141 = !{!"37"}
!142 = !DILocation(line: 772, column: 11, scope: !125)
!143 = !{!"38"}
!144 = !DILocation(line: 772, column: 2, scope: !125)
!145 = !{!"39"}
!146 = distinct !DISubprogram(name: "decrypt_wrapper", scope: !4, file: !4, line: 3, type: !147, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !53, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !152, line: 205, baseType: !153)
!152 = !DIFile(filename: "../BearSSL/inc/bearssl_rsa.h", directory: "/home/luwei/bech-back/BearSSL/RSA_i32")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 182, size: 704, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !153, file: !152, line: 184, baseType: !10, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !153, file: !152, line: 186, baseType: !53, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !153, file: !152, line: 188, baseType: !21, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !153, file: !152, line: 190, baseType: !53, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !153, file: !152, line: 192, baseType: !21, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !153, file: !152, line: 194, baseType: !53, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !153, file: !152, line: 196, baseType: !21, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !153, file: !152, line: 198, baseType: !53, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !153, file: !152, line: 200, baseType: !21, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !153, file: !152, line: 202, baseType: !53, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !153, file: !152, line: 204, baseType: !21, size: 64, offset: 640)
!166 = !DILocalVariable(name: "x", arg: 1, scope: !146, file: !4, line: 3, type: !53)
!167 = !DILocation(line: 0, scope: !146)
!168 = !{!"40"}
!169 = !DILocalVariable(name: "sk", arg: 2, scope: !146, file: !4, line: 3, type: !149)
!170 = !{!"41"}
!171 = !DILocation(line: 4, column: 12, scope: !146)
!172 = !{!"42"}
!173 = !DILocation(line: 4, column: 2, scope: !146)
!174 = !{!"43"}
!175 = !DILocation(line: 5, column: 12, scope: !146)
!176 = !{!"44"}
!177 = !DILocation(line: 5, column: 2, scope: !146)
!178 = !{!"45"}
!179 = !DILocation(line: 6, column: 30, scope: !146)
!180 = !{!"46"}
!181 = !{!"47"}
!182 = !DILocation(line: 6, column: 12, scope: !146)
!183 = !{!"48"}
!184 = !DILocation(line: 6, column: 2, scope: !146)
!185 = !{!"49"}
!186 = !DILocation(line: 7, column: 30, scope: !146)
!187 = !{!"50"}
!188 = !{!"51"}
!189 = !DILocation(line: 7, column: 12, scope: !146)
!190 = !{!"52"}
!191 = !DILocation(line: 7, column: 2, scope: !146)
!192 = !{!"53"}
!193 = !DILocation(line: 8, column: 30, scope: !146)
!194 = !{!"54"}
!195 = !{!"55"}
!196 = !DILocation(line: 8, column: 12, scope: !146)
!197 = !{!"56"}
!198 = !DILocation(line: 8, column: 2, scope: !146)
!199 = !{!"57"}
!200 = !DILocation(line: 9, column: 30, scope: !146)
!201 = !{!"58"}
!202 = !{!"59"}
!203 = !DILocation(line: 9, column: 12, scope: !146)
!204 = !{!"60"}
!205 = !DILocation(line: 9, column: 2, scope: !146)
!206 = !{!"61"}
!207 = !DILocation(line: 10, column: 30, scope: !146)
!208 = !{!"62"}
!209 = !{!"63"}
!210 = !DILocation(line: 10, column: 12, scope: !146)
!211 = !{!"64"}
!212 = !DILocation(line: 10, column: 2, scope: !146)
!213 = !{!"65"}
!214 = !DILocation(line: 12, column: 30, scope: !146)
!215 = !{!"66"}
!216 = !{!"67"}
!217 = !DILocation(line: 12, column: 12, scope: !146)
!218 = !{!"68"}
!219 = !DILocation(line: 12, column: 2, scope: !146)
!220 = !{!"69"}
!221 = !DILocation(line: 13, column: 30, scope: !146)
!222 = !{!"70"}
!223 = !{!"71"}
!224 = !DILocation(line: 13, column: 12, scope: !146)
!225 = !{!"72"}
!226 = !DILocation(line: 13, column: 2, scope: !146)
!227 = !{!"73"}
!228 = !DILocation(line: 14, column: 30, scope: !146)
!229 = !{!"74"}
!230 = !{!"75"}
!231 = !DILocation(line: 14, column: 12, scope: !146)
!232 = !{!"76"}
!233 = !DILocation(line: 14, column: 2, scope: !146)
!234 = !{!"77"}
!235 = !DILocation(line: 15, column: 30, scope: !146)
!236 = !{!"78"}
!237 = !{!"79"}
!238 = !DILocation(line: 15, column: 12, scope: !146)
!239 = !{!"80"}
!240 = !DILocation(line: 15, column: 2, scope: !146)
!241 = !{!"81"}
!242 = !DILocation(line: 16, column: 30, scope: !146)
!243 = !{!"82"}
!244 = !{!"83"}
!245 = !DILocation(line: 16, column: 12, scope: !146)
!246 = !{!"84"}
!247 = !DILocation(line: 16, column: 2, scope: !146)
!248 = !{!"85"}
!249 = !DILocation(line: 18, column: 30, scope: !146)
!250 = !{!"86"}
!251 = !{!"87"}
!252 = !DILocation(line: 18, column: 12, scope: !146)
!253 = !{!"88"}
!254 = !DILocation(line: 18, column: 2, scope: !146)
!255 = !{!"89"}
!256 = !DILocation(line: 21, column: 2, scope: !146)
!257 = !{!"90"}
!258 = !DILocation(line: 22, column: 1, scope: !146)
!259 = !{!"91"}
!260 = distinct !DISubprogram(name: "decrypt_wrapper_t", scope: !4, file: !4, line: 34, type: !261, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!261 = !DISubroutineType(types: !262)
!262 = !{null}
!263 = !{!"92"}
!264 = !{!"93"}
!265 = !DILocalVariable(name: "xx", scope: !260, file: !4, line: 35, type: !27)
!266 = !DILocation(line: 35, column: 15, scope: !260)
!267 = !{!"94"}
!268 = !DILocation(line: 35, column: 20, scope: !260)
!269 = !{!"95"}
!270 = !{!"96"}
!271 = !DILocalVariable(name: "x", scope: !260, file: !4, line: 36, type: !53)
!272 = !DILocation(line: 0, scope: !260)
!273 = !{!"97"}
!274 = !DILocalVariable(name: "key", scope: !260, file: !4, line: 37, type: !151)
!275 = !DILocation(line: 37, column: 20, scope: !260)
!276 = !{!"98"}
!277 = !DILocation(line: 37, column: 26, scope: !260)
!278 = !{!"99"}
!279 = !DILocalVariable(name: "sk", scope: !260, file: !4, line: 38, type: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!281 = !{!"100"}
!282 = !DILocation(line: 39, column: 24, scope: !260)
!283 = !{!"101"}
!284 = !{!"102"}
!285 = !DILocalVariable(name: "p", scope: !260, file: !4, line: 39, type: !53)
!286 = !{!"103"}
!287 = !DILocation(line: 40, column: 24, scope: !260)
!288 = !{!"104"}
!289 = !{!"105"}
!290 = !DILocalVariable(name: "q", scope: !260, file: !4, line: 40, type: !53)
!291 = !{!"106"}
!292 = !DILocation(line: 41, column: 25, scope: !260)
!293 = !{!"107"}
!294 = !{!"108"}
!295 = !DILocalVariable(name: "dp", scope: !260, file: !4, line: 41, type: !53)
!296 = !{!"109"}
!297 = !DILocation(line: 42, column: 25, scope: !260)
!298 = !{!"110"}
!299 = !{!"111"}
!300 = !DILocalVariable(name: "dq", scope: !260, file: !4, line: 42, type: !53)
!301 = !{!"112"}
!302 = !DILocation(line: 43, column: 25, scope: !260)
!303 = !{!"113"}
!304 = !{!"114"}
!305 = !DILocalVariable(name: "iq", scope: !260, file: !4, line: 43, type: !53)
!306 = !{!"115"}
!307 = !DILocation(line: 45, column: 1, scope: !260)
!308 = !{!"116"}
!309 = !DILocation(line: 47, column: 5, scope: !260)
!310 = !{!"117"}
!311 = !DILocation(line: 47, column: 7, scope: !260)
!312 = !{!"118"}
!313 = !DILocation(line: 48, column: 5, scope: !260)
!314 = !{!"119"}
!315 = !DILocation(line: 48, column: 7, scope: !260)
!316 = !{!"120"}
!317 = !DILocation(line: 49, column: 5, scope: !260)
!318 = !{!"121"}
!319 = !DILocation(line: 49, column: 8, scope: !260)
!320 = !{!"122"}
!321 = !DILocation(line: 50, column: 5, scope: !260)
!322 = !{!"123"}
!323 = !DILocation(line: 50, column: 8, scope: !260)
!324 = !{!"124"}
!325 = !DILocation(line: 51, column: 5, scope: !260)
!326 = !{!"125"}
!327 = !DILocation(line: 51, column: 8, scope: !260)
!328 = !{!"126"}
!329 = !DILocation(line: 52, column: 1, scope: !260)
!330 = !{!"127"}
!331 = !DILocation(line: 54, column: 1, scope: !260)
!332 = !{!"128"}
!333 = distinct !DISubprogram(name: "br_i32_add", scope: !6, file: !6, line: 29, type: !334, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !2)
!334 = !DISubroutineType(types: !335)
!335 = !{!10, !336, !337, !10}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!339 = !DILocalVariable(name: "a", arg: 1, scope: !333, file: !6, line: 29, type: !336)
!340 = !DILocation(line: 0, scope: !333)
!341 = !{!"129"}
!342 = !DILocalVariable(name: "b", arg: 2, scope: !333, file: !6, line: 29, type: !337)
!343 = !{!"130"}
!344 = !DILocalVariable(name: "ctl", arg: 3, scope: !333, file: !6, line: 29, type: !10)
!345 = !{!"131"}
!346 = !DILocalVariable(name: "cc", scope: !333, file: !6, line: 31, type: !10)
!347 = !{!"132"}
!348 = !DILocation(line: 35, column: 7, scope: !333)
!349 = !{!"133"}
!350 = !{!"134"}
!351 = !DILocation(line: 35, column: 12, scope: !333)
!352 = !{!"135"}
!353 = !DILocation(line: 35, column: 18, scope: !333)
!354 = !{!"136"}
!355 = !DILocation(line: 35, column: 6, scope: !333)
!356 = !{!"137"}
!357 = !DILocalVariable(name: "m", scope: !333, file: !6, line: 32, type: !21)
!358 = !{!"138"}
!359 = !DILocalVariable(name: "u", scope: !333, file: !6, line: 32, type: !21)
!360 = !{!"139"}
!361 = !DILocation(line: 36, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !333, file: !6, line: 36, column: 2)
!363 = !{!"140"}
!364 = !{!"141"}
!365 = !DILocation(line: 0, scope: !362)
!366 = !{!"142"}
!367 = !{!"143"}
!368 = !{!"144"}
!369 = !DILocation(line: 36, column: 16, scope: !370)
!370 = distinct !DILexicalBlock(scope: !362, file: !6, line: 36, column: 2)
!371 = !{!"145"}
!372 = !DILocation(line: 36, column: 2, scope: !362)
!373 = !{!"146"}
!374 = !DILocation(line: 39, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !6, line: 36, column: 27)
!376 = !{!"147"}
!377 = !{!"148"}
!378 = !DILocalVariable(name: "aw", scope: !375, file: !6, line: 37, type: !10)
!379 = !DILocation(line: 0, scope: !375)
!380 = !{!"149"}
!381 = !DILocation(line: 40, column: 8, scope: !375)
!382 = !{!"150"}
!383 = !{!"151"}
!384 = !DILocalVariable(name: "bw", scope: !375, file: !6, line: 37, type: !10)
!385 = !{!"152"}
!386 = !DILocation(line: 41, column: 12, scope: !375)
!387 = !{!"153"}
!388 = !DILocation(line: 41, column: 17, scope: !375)
!389 = !{!"154"}
!390 = !DILocalVariable(name: "naw", scope: !375, file: !6, line: 37, type: !10)
!391 = !{!"155"}
!392 = !DILocation(line: 47, column: 14, scope: !375)
!393 = !{!"156"}
!394 = !DILocation(line: 47, column: 12, scope: !375)
!395 = !{!"157"}
!396 = !DILocation(line: 47, column: 29, scope: !375)
!397 = !{!"158"}
!398 = !DILocation(line: 47, column: 27, scope: !375)
!399 = !{!"159"}
!400 = !{!"160"}
!401 = !DILocation(line: 48, column: 10, scope: !375)
!402 = !{!"161"}
!403 = !DILocation(line: 48, column: 3, scope: !375)
!404 = !{!"162"}
!405 = !DILocation(line: 48, column: 8, scope: !375)
!406 = !{!"163"}
!407 = !DILocation(line: 49, column: 2, scope: !375)
!408 = !{!"164"}
!409 = !DILocation(line: 36, column: 23, scope: !370)
!410 = !{!"165"}
!411 = !{!"166"}
!412 = !DILocation(line: 36, column: 2, scope: !370)
!413 = distinct !{!413, !372, !414, !121}
!414 = !DILocation(line: 49, column: 2, scope: !362)
!415 = !{!"167"}
!416 = !DILocation(line: 50, column: 2, scope: !333)
!417 = !{!"168"}
!418 = distinct !DISubprogram(name: "EQ", scope: !126, file: !126, line: 779, type: !419, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!419 = !DISubroutineType(types: !420)
!420 = !{!10, !10, !10}
!421 = !DILocalVariable(name: "x", arg: 1, scope: !418, file: !126, line: 779, type: !10)
!422 = !DILocation(line: 0, scope: !418)
!423 = !{!"169"}
!424 = !DILocalVariable(name: "y", arg: 2, scope: !418, file: !126, line: 779, type: !10)
!425 = !{!"170"}
!426 = !DILocation(line: 783, column: 8, scope: !418)
!427 = !{!"171"}
!428 = !DILocalVariable(name: "q", scope: !418, file: !126, line: 781, type: !10)
!429 = !{!"172"}
!430 = !DILocation(line: 784, column: 18, scope: !418)
!431 = !{!"173"}
!432 = !DILocation(line: 784, column: 16, scope: !418)
!433 = !{!"174"}
!434 = !DILocation(line: 784, column: 22, scope: !418)
!435 = !{!"175"}
!436 = !DILocation(line: 784, column: 9, scope: !418)
!437 = !{!"176"}
!438 = !DILocation(line: 784, column: 2, scope: !418)
!439 = !{!"177"}
!440 = distinct !DISubprogram(name: "GT", scope: !126, file: !126, line: 803, type: !419, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!441 = !DILocalVariable(name: "x", arg: 1, scope: !440, file: !126, line: 803, type: !10)
!442 = !DILocation(line: 0, scope: !440)
!443 = !{!"178"}
!444 = !DILocalVariable(name: "y", arg: 2, scope: !440, file: !126, line: 803, type: !10)
!445 = !{!"179"}
!446 = !DILocation(line: 819, column: 8, scope: !440)
!447 = !{!"180"}
!448 = !DILocalVariable(name: "z", scope: !440, file: !126, line: 817, type: !10)
!449 = !{!"181"}
!450 = !DILocation(line: 820, column: 18, scope: !440)
!451 = !{!"182"}
!452 = !DILocation(line: 820, column: 28, scope: !440)
!453 = !{!"183"}
!454 = !DILocation(line: 820, column: 23, scope: !440)
!455 = !{!"184"}
!456 = !DILocation(line: 820, column: 12, scope: !440)
!457 = !{!"185"}
!458 = !DILocation(line: 820, column: 35, scope: !440)
!459 = !{!"186"}
!460 = !DILocation(line: 820, column: 2, scope: !440)
!461 = !{!"187"}
!462 = distinct !DISubprogram(name: "MUX", scope: !126, file: !126, line: 770, type: !127, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!463 = !DILocalVariable(name: "ctl", arg: 1, scope: !462, file: !126, line: 770, type: !10)
!464 = !DILocation(line: 0, scope: !462)
!465 = !{!"188"}
!466 = !DILocalVariable(name: "x", arg: 2, scope: !462, file: !126, line: 770, type: !10)
!467 = !{!"189"}
!468 = !DILocalVariable(name: "y", arg: 3, scope: !462, file: !126, line: 770, type: !10)
!469 = !{!"190"}
!470 = !DILocation(line: 772, column: 14, scope: !462)
!471 = !{!"191"}
!472 = !DILocation(line: 772, column: 24, scope: !462)
!473 = !{!"192"}
!474 = !DILocation(line: 772, column: 19, scope: !462)
!475 = !{!"193"}
!476 = !DILocation(line: 772, column: 11, scope: !462)
!477 = !{!"194"}
!478 = !DILocation(line: 772, column: 2, scope: !462)
!479 = !{!"195"}
!480 = distinct !DISubprogram(name: "NOT", scope: !126, file: !126, line: 761, type: !481, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!481 = !DISubroutineType(types: !482)
!482 = !{!10, !10}
!483 = !DILocalVariable(name: "ctl", arg: 1, scope: !480, file: !126, line: 761, type: !10)
!484 = !DILocation(line: 0, scope: !480)
!485 = !{!"196"}
!486 = !DILocation(line: 763, column: 13, scope: !480)
!487 = !{!"197"}
!488 = !DILocation(line: 763, column: 2, scope: !480)
!489 = !{!"198"}
!490 = distinct !DISubprogram(name: "br_i32_bit_length", scope: !8, file: !8, line: 29, type: !491, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!491 = !DISubroutineType(types: !492)
!492 = !{!10, !336, !21}
!493 = !DILocalVariable(name: "x", arg: 1, scope: !490, file: !8, line: 29, type: !336)
!494 = !DILocation(line: 0, scope: !490)
!495 = !{!"199"}
!496 = !DILocalVariable(name: "xlen", arg: 2, scope: !490, file: !8, line: 29, type: !21)
!497 = !{!"200"}
!498 = !DILocalVariable(name: "tw", scope: !490, file: !8, line: 31, type: !10)
!499 = !{!"201"}
!500 = !DILocalVariable(name: "twk", scope: !490, file: !8, line: 31, type: !10)
!501 = !{!"202"}
!502 = !DILocation(line: 35, column: 2, scope: !490)
!503 = !{!"203"}
!504 = !{!"204"}
!505 = !{!"205"}
!506 = !{!"206"}
!507 = !{!"207"}
!508 = !{!"208"}
!509 = !{!"209"}
!510 = !DILocation(line: 35, column: 14, scope: !490)
!511 = !{!"210"}
!512 = !{!"211"}
!513 = !DILocation(line: 35, column: 17, scope: !490)
!514 = !{!"212"}
!515 = !{!"213"}
!516 = !DILocation(line: 38, column: 7, scope: !517)
!517 = distinct !DILexicalBlock(scope: !490, file: !8, line: 35, column: 22)
!518 = !{!"214"}
!519 = !DILocalVariable(name: "c", scope: !517, file: !8, line: 36, type: !10)
!520 = !DILocation(line: 0, scope: !517)
!521 = !{!"215"}
!522 = !DILocation(line: 39, column: 7, scope: !517)
!523 = !{!"216"}
!524 = !{!"217"}
!525 = !DILocalVariable(name: "w", scope: !517, file: !8, line: 36, type: !10)
!526 = !{!"218"}
!527 = !DILocation(line: 40, column: 8, scope: !517)
!528 = !{!"219"}
!529 = !{!"220"}
!530 = !DILocation(line: 41, column: 16, scope: !517)
!531 = !{!"221"}
!532 = !DILocation(line: 41, column: 9, scope: !517)
!533 = !{!"222"}
!534 = !{!"223"}
!535 = distinct !{!535, !502, !536, !121}
!536 = !DILocation(line: 42, column: 2, scope: !490)
!537 = !{!"224"}
!538 = !DILocation(line: 43, column: 14, scope: !490)
!539 = !{!"225"}
!540 = !DILocation(line: 43, column: 22, scope: !490)
!541 = !{!"226"}
!542 = !DILocation(line: 43, column: 20, scope: !490)
!543 = !{!"227"}
!544 = !DILocation(line: 43, column: 2, scope: !490)
!545 = !{!"228"}
!546 = distinct !DISubprogram(name: "EQ", scope: !126, file: !126, line: 779, type: !419, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!547 = !DILocalVariable(name: "x", arg: 1, scope: !546, file: !126, line: 779, type: !10)
!548 = !DILocation(line: 0, scope: !546)
!549 = !{!"229"}
!550 = !DILocalVariable(name: "y", arg: 2, scope: !546, file: !126, line: 779, type: !10)
!551 = !{!"230"}
!552 = !DILocation(line: 783, column: 8, scope: !546)
!553 = !{!"231"}
!554 = !DILocalVariable(name: "q", scope: !546, file: !126, line: 781, type: !10)
!555 = !{!"232"}
!556 = !DILocation(line: 784, column: 18, scope: !546)
!557 = !{!"233"}
!558 = !DILocation(line: 784, column: 16, scope: !546)
!559 = !{!"234"}
!560 = !DILocation(line: 784, column: 22, scope: !546)
!561 = !{!"235"}
!562 = !DILocation(line: 784, column: 9, scope: !546)
!563 = !{!"236"}
!564 = !DILocation(line: 784, column: 2, scope: !546)
!565 = !{!"237"}
!566 = distinct !DISubprogram(name: "MUX", scope: !126, file: !126, line: 770, type: !127, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!567 = !DILocalVariable(name: "ctl", arg: 1, scope: !566, file: !126, line: 770, type: !10)
!568 = !DILocation(line: 0, scope: !566)
!569 = !{!"238"}
!570 = !DILocalVariable(name: "x", arg: 2, scope: !566, file: !126, line: 770, type: !10)
!571 = !{!"239"}
!572 = !DILocalVariable(name: "y", arg: 3, scope: !566, file: !126, line: 770, type: !10)
!573 = !{!"240"}
!574 = !DILocation(line: 772, column: 14, scope: !566)
!575 = !{!"241"}
!576 = !DILocation(line: 772, column: 24, scope: !566)
!577 = !{!"242"}
!578 = !DILocation(line: 772, column: 19, scope: !566)
!579 = !{!"243"}
!580 = !DILocation(line: 772, column: 11, scope: !566)
!581 = !{!"244"}
!582 = !DILocation(line: 772, column: 2, scope: !566)
!583 = !{!"245"}
!584 = distinct !DISubprogram(name: "BIT_LENGTH", scope: !126, file: !126, line: 915, type: !481, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!585 = !DILocalVariable(name: "x", arg: 1, scope: !584, file: !126, line: 915, type: !10)
!586 = !DILocation(line: 0, scope: !584)
!587 = !{!"246"}
!588 = !DILocation(line: 919, column: 6, scope: !584)
!589 = !{!"247"}
!590 = !DILocalVariable(name: "k", scope: !584, file: !126, line: 917, type: !10)
!591 = !{!"248"}
!592 = !DILocation(line: 920, column: 6, scope: !584)
!593 = !{!"249"}
!594 = !DILocalVariable(name: "c", scope: !584, file: !126, line: 917, type: !10)
!595 = !{!"250"}
!596 = !DILocation(line: 920, column: 34, scope: !584)
!597 = !{!"251"}
!598 = !DILocation(line: 920, column: 25, scope: !584)
!599 = !{!"252"}
!600 = !{!"253"}
!601 = !DILocation(line: 920, column: 52, scope: !584)
!602 = !{!"254"}
!603 = !DILocation(line: 920, column: 47, scope: !584)
!604 = !{!"255"}
!605 = !{!"256"}
!606 = !DILocation(line: 921, column: 6, scope: !584)
!607 = !{!"257"}
!608 = !{!"258"}
!609 = !DILocation(line: 921, column: 34, scope: !584)
!610 = !{!"259"}
!611 = !DILocation(line: 921, column: 25, scope: !584)
!612 = !{!"260"}
!613 = !{!"261"}
!614 = !DILocation(line: 921, column: 52, scope: !584)
!615 = !{!"262"}
!616 = !DILocation(line: 921, column: 47, scope: !584)
!617 = !{!"263"}
!618 = !{!"264"}
!619 = !DILocation(line: 922, column: 6, scope: !584)
!620 = !{!"265"}
!621 = !{!"266"}
!622 = !DILocation(line: 922, column: 34, scope: !584)
!623 = !{!"267"}
!624 = !DILocation(line: 922, column: 25, scope: !584)
!625 = !{!"268"}
!626 = !{!"269"}
!627 = !DILocation(line: 922, column: 52, scope: !584)
!628 = !{!"270"}
!629 = !DILocation(line: 922, column: 47, scope: !584)
!630 = !{!"271"}
!631 = !{!"272"}
!632 = !DILocation(line: 923, column: 6, scope: !584)
!633 = !{!"273"}
!634 = !{!"274"}
!635 = !DILocation(line: 923, column: 34, scope: !584)
!636 = !{!"275"}
!637 = !DILocation(line: 923, column: 25, scope: !584)
!638 = !{!"276"}
!639 = !{!"277"}
!640 = !DILocation(line: 923, column: 52, scope: !584)
!641 = !{!"278"}
!642 = !DILocation(line: 923, column: 47, scope: !584)
!643 = !{!"279"}
!644 = !{!"280"}
!645 = !DILocation(line: 924, column: 7, scope: !584)
!646 = !{!"281"}
!647 = !DILocation(line: 924, column: 4, scope: !584)
!648 = !{!"282"}
!649 = !{!"283"}
!650 = !DILocation(line: 925, column: 2, scope: !584)
!651 = !{!"284"}
!652 = distinct !DISubprogram(name: "NEQ", scope: !126, file: !126, line: 791, type: !419, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!653 = !DILocalVariable(name: "x", arg: 1, scope: !652, file: !126, line: 791, type: !10)
!654 = !DILocation(line: 0, scope: !652)
!655 = !{!"285"}
!656 = !DILocalVariable(name: "y", arg: 2, scope: !652, file: !126, line: 791, type: !10)
!657 = !{!"286"}
!658 = !DILocation(line: 795, column: 8, scope: !652)
!659 = !{!"287"}
!660 = !DILocalVariable(name: "q", scope: !652, file: !126, line: 793, type: !10)
!661 = !{!"288"}
!662 = !DILocation(line: 796, column: 14, scope: !652)
!663 = !{!"289"}
!664 = !DILocation(line: 796, column: 12, scope: !652)
!665 = !{!"290"}
!666 = !DILocation(line: 796, column: 18, scope: !652)
!667 = !{!"291"}
!668 = !DILocation(line: 796, column: 2, scope: !652)
!669 = !{!"292"}
!670 = distinct !DISubprogram(name: "GT", scope: !126, file: !126, line: 803, type: !419, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!671 = !DILocalVariable(name: "x", arg: 1, scope: !670, file: !126, line: 803, type: !10)
!672 = !DILocation(line: 0, scope: !670)
!673 = !{!"293"}
!674 = !DILocalVariable(name: "y", arg: 2, scope: !670, file: !126, line: 803, type: !10)
!675 = !{!"294"}
!676 = !DILocation(line: 819, column: 8, scope: !670)
!677 = !{!"295"}
!678 = !DILocalVariable(name: "z", scope: !670, file: !126, line: 817, type: !10)
!679 = !{!"296"}
!680 = !DILocation(line: 820, column: 18, scope: !670)
!681 = !{!"297"}
!682 = !DILocation(line: 820, column: 28, scope: !670)
!683 = !{!"298"}
!684 = !DILocation(line: 820, column: 23, scope: !670)
!685 = !{!"299"}
!686 = !DILocation(line: 820, column: 12, scope: !670)
!687 = !{!"300"}
!688 = !DILocation(line: 820, column: 35, scope: !670)
!689 = !{!"301"}
!690 = !DILocation(line: 820, column: 2, scope: !670)
!691 = !{!"302"}
!692 = distinct !DISubprogram(name: "NOT", scope: !126, file: !126, line: 761, type: !481, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!693 = !DILocalVariable(name: "ctl", arg: 1, scope: !692, file: !126, line: 761, type: !10)
!694 = !DILocation(line: 0, scope: !692)
!695 = !{!"303"}
!696 = !DILocation(line: 763, column: 13, scope: !692)
!697 = !{!"304"}
!698 = !DILocation(line: 763, column: 2, scope: !692)
!699 = !{!"305"}
!700 = distinct !DISubprogram(name: "br_i32_decode", scope: !16, file: !16, line: 29, type: !701, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !2)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !336, !62, !21}
!703 = !DILocalVariable(name: "x", arg: 1, scope: !700, file: !16, line: 29, type: !336)
!704 = !DILocation(line: 0, scope: !700)
!705 = !{!"306"}
!706 = !DILocalVariable(name: "src", arg: 2, scope: !700, file: !16, line: 29, type: !62)
!707 = !{!"307"}
!708 = !DILocalVariable(name: "len", arg: 3, scope: !700, file: !16, line: 29, type: !21)
!709 = !{!"308"}
!710 = !DILocalVariable(name: "buf", scope: !700, file: !16, line: 31, type: !76)
!711 = !{!"309"}
!712 = !DILocalVariable(name: "u", scope: !700, file: !16, line: 32, type: !21)
!713 = !{!"310"}
!714 = !DILocalVariable(name: "v", scope: !700, file: !16, line: 32, type: !21)
!715 = !{!"311"}
!716 = !DILocation(line: 37, column: 2, scope: !700)
!717 = !{!"312"}
!718 = !{!"313"}
!719 = !{!"314"}
!720 = !{!"315"}
!721 = !{!"316"}
!722 = !DILocation(line: 38, column: 9, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !16, line: 38, column: 7)
!724 = distinct !DILexicalBlock(scope: !725, file: !16, line: 37, column: 11)
!725 = distinct !DILexicalBlock(scope: !726, file: !16, line: 37, column: 2)
!726 = distinct !DILexicalBlock(scope: !700, file: !16, line: 37, column: 2)
!727 = !{!"317"}
!728 = !DILocation(line: 38, column: 7, scope: !724)
!729 = !{!"318"}
!730 = !DILocation(line: 41, column: 10, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !16, line: 41, column: 8)
!732 = distinct !DILexicalBlock(scope: !723, file: !16, line: 38, column: 14)
!733 = !{!"319"}
!734 = !DILocation(line: 41, column: 8, scope: !732)
!735 = !{!"320"}
!736 = !DILocation(line: 42, column: 11, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !16, line: 42, column: 9)
!738 = distinct !DILexicalBlock(scope: !731, file: !16, line: 41, column: 15)
!739 = !{!"321"}
!740 = !DILocation(line: 42, column: 9, scope: !738)
!741 = !{!"322"}
!742 = !DILocation(line: 43, column: 6, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !16, line: 42, column: 17)
!744 = !{!"323"}
!745 = !DILocation(line: 45, column: 10, scope: !746)
!746 = distinct !DILexicalBlock(scope: !737, file: !16, line: 44, column: 12)
!747 = !{!"324"}
!748 = !{!"325"}
!749 = !{!"326"}
!750 = !DILocalVariable(name: "w", scope: !732, file: !16, line: 39, type: !10)
!751 = !DILocation(line: 0, scope: !732)
!752 = !{!"327"}
!753 = !{!"328"}
!754 = !DILocation(line: 47, column: 4, scope: !738)
!755 = !{!"329"}
!756 = !DILocation(line: 48, column: 11, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !16, line: 48, column: 9)
!758 = distinct !DILexicalBlock(scope: !731, file: !16, line: 47, column: 11)
!759 = !{!"330"}
!760 = !DILocation(line: 48, column: 9, scope: !758)
!761 = !{!"331"}
!762 = !DILocation(line: 49, column: 10, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !16, line: 48, column: 17)
!764 = !{!"332"}
!765 = !{!"333"}
!766 = !DILocation(line: 50, column: 5, scope: !763)
!767 = !{!"334"}
!768 = !DILocation(line: 51, column: 21, scope: !769)
!769 = distinct !DILexicalBlock(scope: !757, file: !16, line: 50, column: 12)
!770 = !{!"335"}
!771 = !{!"336"}
!772 = !DILocation(line: 51, column: 11, scope: !769)
!773 = !{!"337"}
!774 = !DILocation(line: 51, column: 28, scope: !769)
!775 = !{!"338"}
!776 = !DILocation(line: 52, column: 24, scope: !769)
!777 = !{!"339"}
!778 = !DILocation(line: 52, column: 9, scope: !769)
!779 = !{!"340"}
!780 = !DILocation(line: 52, column: 7, scope: !769)
!781 = !{!"341"}
!782 = !{!"342"}
!783 = !{!"343"}
!784 = !DILocation(line: 0, scope: !757)
!785 = !{!"344"}
!786 = !{!"345"}
!787 = !{!"346"}
!788 = !DILocation(line: 0, scope: !731)
!789 = !{!"347"}
!790 = !{!"348"}
!791 = !DILocation(line: 55, column: 8, scope: !732)
!792 = !{!"349"}
!793 = !{!"350"}
!794 = !DILocation(line: 55, column: 4, scope: !732)
!795 = !{!"351"}
!796 = !DILocation(line: 55, column: 12, scope: !732)
!797 = !{!"352"}
!798 = !DILocation(line: 56, column: 4, scope: !732)
!799 = !{!"353"}
!800 = !DILocation(line: 58, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !723, file: !16, line: 57, column: 10)
!802 = !{!"354"}
!803 = !{!"355"}
!804 = !DILocation(line: 59, column: 29, scope: !801)
!805 = !{!"356"}
!806 = !DILocation(line: 59, column: 14, scope: !801)
!807 = !{!"357"}
!808 = !DILocation(line: 59, column: 8, scope: !801)
!809 = !{!"358"}
!810 = !{!"359"}
!811 = !DILocation(line: 59, column: 4, scope: !801)
!812 = !{!"360"}
!813 = !DILocation(line: 59, column: 12, scope: !801)
!814 = !{!"361"}
!815 = !{!"362"}
!816 = !DILocation(line: 37, column: 2, scope: !725)
!817 = distinct !{!817, !818, !819}
!818 = !DILocation(line: 37, column: 2, scope: !726)
!819 = !DILocation(line: 61, column: 2, scope: !726)
!820 = !{!"363"}
!821 = !DILocation(line: 62, column: 14, scope: !700)
!822 = !{!"364"}
!823 = !DILocation(line: 62, column: 19, scope: !700)
!824 = !{!"365"}
!825 = !DILocation(line: 62, column: 9, scope: !700)
!826 = !{!"366"}
!827 = !DILocation(line: 62, column: 2, scope: !700)
!828 = !{!"367"}
!829 = !DILocation(line: 62, column: 7, scope: !700)
!830 = !{!"368"}
!831 = !DILocation(line: 63, column: 1, scope: !700)
!832 = !{!"369"}
!833 = distinct !DISubprogram(name: "br_dec16be", scope: !126, file: !126, line: 529, type: !834, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!834 = !DISubroutineType(types: !835)
!835 = !{!14, !62}
!836 = !DILocalVariable(name: "src", arg: 1, scope: !833, file: !126, line: 529, type: !62)
!837 = !DILocation(line: 0, scope: !833)
!838 = !{!"370"}
!839 = !DILocalVariable(name: "buf", scope: !833, file: !126, line: 534, type: !76)
!840 = !{!"371"}
!841 = !DILocation(line: 537, column: 20, scope: !833)
!842 = !{!"372"}
!843 = !{!"373"}
!844 = !DILocation(line: 537, column: 10, scope: !833)
!845 = !{!"374"}
!846 = !DILocation(line: 537, column: 27, scope: !833)
!847 = !{!"375"}
!848 = !DILocation(line: 537, column: 45, scope: !833)
!849 = !{!"376"}
!850 = !{!"377"}
!851 = !DILocation(line: 537, column: 35, scope: !833)
!852 = !{!"378"}
!853 = !DILocation(line: 537, column: 33, scope: !833)
!854 = !{!"379"}
!855 = !DILocation(line: 537, column: 2, scope: !833)
!856 = !{!"380"}
!857 = distinct !DISubprogram(name: "br_dec32be", scope: !126, file: !126, line: 590, type: !858, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !2)
!858 = !DISubroutineType(types: !859)
!859 = !{!10, !62}
!860 = !DILocalVariable(name: "src", arg: 1, scope: !857, file: !126, line: 590, type: !62)
!861 = !DILocation(line: 0, scope: !857)
!862 = !{!"381"}
!863 = !DILocalVariable(name: "buf", scope: !857, file: !126, line: 595, type: !76)
!864 = !{!"382"}
!865 = !DILocation(line: 598, column: 20, scope: !857)
!866 = !{!"383"}
!867 = !{!"384"}
!868 = !DILocation(line: 598, column: 10, scope: !857)
!869 = !{!"385"}
!870 = !DILocation(line: 598, column: 27, scope: !857)
!871 = !{!"386"}
!872 = !DILocation(line: 599, column: 16, scope: !857)
!873 = !{!"387"}
!874 = !{!"388"}
!875 = !DILocation(line: 599, column: 6, scope: !857)
!876 = !{!"389"}
!877 = !DILocation(line: 599, column: 23, scope: !857)
!878 = !{!"390"}
!879 = !DILocation(line: 599, column: 3, scope: !857)
!880 = !{!"391"}
!881 = !DILocation(line: 600, column: 16, scope: !857)
!882 = !{!"392"}
!883 = !{!"393"}
!884 = !DILocation(line: 600, column: 6, scope: !857)
!885 = !{!"394"}
!886 = !DILocation(line: 600, column: 23, scope: !857)
!887 = !{!"395"}
!888 = !DILocation(line: 600, column: 3, scope: !857)
!889 = !{!"396"}
!890 = !DILocation(line: 601, column: 15, scope: !857)
!891 = !{!"397"}
!892 = !{!"398"}
!893 = !DILocation(line: 601, column: 5, scope: !857)
!894 = !{!"399"}
!895 = !DILocation(line: 601, column: 3, scope: !857)
!896 = !{!"400"}
!897 = !DILocation(line: 598, column: 2, scope: !857)
!898 = !{!"401"}
!899 = distinct !DISubprogram(name: "br_i32_decode_reduce", scope: !19, file: !19, line: 29, type: !900, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !2)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !336, !62, !21, !337}
!902 = !DILocalVariable(name: "x", arg: 1, scope: !899, file: !19, line: 29, type: !336)
!903 = !DILocation(line: 0, scope: !899)
!904 = !{!"402"}
!905 = !DILocalVariable(name: "src", arg: 2, scope: !899, file: !19, line: 30, type: !62)
!906 = !{!"403"}
!907 = !DILocalVariable(name: "len", arg: 3, scope: !899, file: !19, line: 30, type: !21)
!908 = !{!"404"}
!909 = !DILocalVariable(name: "m", arg: 4, scope: !899, file: !19, line: 30, type: !337)
!910 = !{!"405"}
!911 = !DILocation(line: 36, column: 13, scope: !899)
!912 = !{!"406"}
!913 = !{!"407"}
!914 = !DILocalVariable(name: "m_bitlen", scope: !899, file: !19, line: 32, type: !10)
!915 = !{!"408"}
!916 = !DILocation(line: 41, column: 15, scope: !917)
!917 = distinct !DILexicalBlock(scope: !899, file: !19, line: 41, column: 6)
!918 = !{!"409"}
!919 = !DILocation(line: 41, column: 6, scope: !899)
!920 = !{!"410"}
!921 = !DILocation(line: 42, column: 3, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !19, line: 41, column: 21)
!923 = !{!"411"}
!924 = !DILocation(line: 42, column: 8, scope: !922)
!925 = !{!"412"}
!926 = !DILocation(line: 43, column: 3, scope: !922)
!927 = !{!"413"}
!928 = !DILocation(line: 49, column: 2, scope: !899)
!929 = !{!"414"}
!930 = !DILocation(line: 56, column: 20, scope: !899)
!931 = !{!"415"}
!932 = !DILocation(line: 56, column: 25, scope: !899)
!933 = !{!"416"}
!934 = !DILocation(line: 56, column: 10, scope: !899)
!935 = !{!"417"}
!936 = !DILocalVariable(name: "mblen", scope: !899, file: !19, line: 33, type: !21)
!937 = !{!"418"}
!938 = !DILocation(line: 57, column: 12, scope: !899)
!939 = !{!"419"}
!940 = !DILocalVariable(name: "k", scope: !899, file: !19, line: 33, type: !21)
!941 = !{!"420"}
!942 = !DILocation(line: 62, column: 8, scope: !943)
!943 = distinct !DILexicalBlock(scope: !899, file: !19, line: 62, column: 6)
!944 = !{!"421"}
!945 = !DILocation(line: 62, column: 6, scope: !899)
!946 = !{!"422"}
!947 = !DILocation(line: 63, column: 3, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !19, line: 62, column: 16)
!949 = !{!"423"}
!950 = !DILocation(line: 64, column: 3, scope: !948)
!951 = !{!"424"}
!952 = !DILocation(line: 64, column: 8, scope: !948)
!953 = !{!"425"}
!954 = !DILocation(line: 65, column: 3, scope: !948)
!955 = !{!"426"}
!956 = !DILocalVariable(name: "buf", scope: !899, file: !19, line: 34, type: !76)
!957 = !{!"427"}
!958 = !DILocation(line: 74, column: 11, scope: !899)
!959 = !{!"428"}
!960 = !DILocation(line: 74, column: 15, scope: !899)
!961 = !{!"429"}
!962 = !DILocation(line: 74, column: 20, scope: !899)
!963 = !{!"430"}
!964 = !DILocalVariable(name: "q", scope: !899, file: !19, line: 33, type: !21)
!965 = !{!"431"}
!966 = !DILocation(line: 82, column: 8, scope: !967)
!967 = distinct !DILexicalBlock(scope: !899, file: !19, line: 82, column: 6)
!968 = !{!"432"}
!969 = !DILocation(line: 82, column: 6, scope: !899)
!970 = !{!"433"}
!971 = !DILocalVariable(name: "w", scope: !972, file: !19, line: 84, type: !10)
!972 = distinct !DILexicalBlock(scope: !967, file: !19, line: 82, column: 15)
!973 = !DILocation(line: 0, scope: !972)
!974 = !{!"434"}
!975 = !DILocalVariable(name: "i", scope: !972, file: !19, line: 83, type: !976)
!976 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!977 = !{!"435"}
!978 = !DILocation(line: 87, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !972, file: !19, line: 87, column: 3)
!980 = !{!"436"}
!981 = !{!"437"}
!982 = !DILocation(line: 0, scope: !979)
!983 = !{!"438"}
!984 = !{!"439"}
!985 = !{!"440"}
!986 = !{!"441"}
!987 = !{!"442"}
!988 = !DILocation(line: 87, column: 17, scope: !989)
!989 = distinct !DILexicalBlock(scope: !979, file: !19, line: 87, column: 3)
!990 = !{!"443"}
!991 = !DILocation(line: 87, column: 3, scope: !979)
!992 = !{!"444"}
!993 = !DILocation(line: 88, column: 6, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !19, line: 87, column: 28)
!995 = !{!"445"}
!996 = !{!"446"}
!997 = !DILocation(line: 89, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !19, line: 89, column: 8)
!999 = !{!"447"}
!1000 = !DILocation(line: 89, column: 8, scope: !994)
!1001 = !{!"448"}
!1002 = !DILocation(line: 90, column: 18, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !998, file: !19, line: 89, column: 18)
!1004 = !{!"449"}
!1005 = !DILocation(line: 90, column: 10, scope: !1003)
!1006 = !{!"450"}
!1007 = !{!"451"}
!1008 = !{!"452"}
!1009 = !DILocation(line: 90, column: 7, scope: !1003)
!1010 = !{!"453"}
!1011 = !{!"454"}
!1012 = !DILocation(line: 91, column: 4, scope: !1003)
!1013 = !{!"455"}
!1014 = !DILocation(line: 0, scope: !994)
!1015 = !{!"456"}
!1016 = !{!"457"}
!1017 = !DILocation(line: 92, column: 6, scope: !994)
!1018 = !{!"458"}
!1019 = !{!"459"}
!1020 = !DILocation(line: 93, column: 3, scope: !994)
!1021 = !{!"460"}
!1022 = !DILocation(line: 87, column: 24, scope: !989)
!1023 = !{!"461"}
!1024 = !{!"462"}
!1025 = !DILocation(line: 87, column: 3, scope: !989)
!1026 = distinct !{!1026, !991, !1027, !121}
!1027 = !DILocation(line: 93, column: 3, scope: !979)
!1028 = !{!"463"}
!1029 = !DILocation(line: 94, column: 3, scope: !972)
!1030 = !{!"464"}
!1031 = !DILocation(line: 95, column: 2, scope: !972)
!1032 = !{!"465"}
!1033 = !DILocation(line: 96, column: 29, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !967, file: !19, line: 95, column: 9)
!1035 = !{!"466"}
!1036 = !DILocation(line: 96, column: 3, scope: !1034)
!1037 = !{!"467"}
!1038 = !DILocation(line: 97, column: 3, scope: !1034)
!1039 = !{!"468"}
!1040 = !DILocation(line: 97, column: 8, scope: !1034)
!1041 = !{!"469"}
!1042 = !{!"470"}
!1043 = !DILocation(line: 74, column: 4, scope: !899)
!1044 = !{!"471"}
!1045 = !{!"472"}
!1046 = !DILocation(line: 104, column: 15, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !899, file: !19, line: 104, column: 2)
!1048 = !{!"473"}
!1049 = !{!"474"}
!1050 = !DILocation(line: 104, column: 7, scope: !1047)
!1051 = !{!"475"}
!1052 = !DILocation(line: 0, scope: !1047)
!1053 = !{!"476"}
!1054 = !{!"477"}
!1055 = !DILocation(line: 104, column: 22, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1047, file: !19, line: 104, column: 2)
!1057 = !{!"478"}
!1058 = !DILocation(line: 104, column: 2, scope: !1047)
!1059 = !{!"479"}
!1060 = !DILocation(line: 105, column: 41, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !19, line: 104, column: 37)
!1062 = !{!"480"}
!1063 = !DILocation(line: 105, column: 26, scope: !1061)
!1064 = !{!"481"}
!1065 = !DILocation(line: 105, column: 3, scope: !1061)
!1066 = !{!"482"}
!1067 = !DILocation(line: 106, column: 2, scope: !1061)
!1068 = !{!"483"}
!1069 = !DILocation(line: 104, column: 31, scope: !1056)
!1070 = !{!"484"}
!1071 = !{!"485"}
!1072 = !DILocation(line: 104, column: 2, scope: !1056)
!1073 = distinct !{!1073, !1058, !1074, !121}
!1074 = !DILocation(line: 106, column: 2, scope: !1047)
!1075 = !{!"486"}
!1076 = !DILocation(line: 107, column: 1, scope: !899)
!1077 = !{!"487"}
!1078 = distinct !DISubprogram(name: "br_i32_zero", scope: !126, file: !126, line: 1235, type: !1079, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !2)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !336, !10}
!1081 = !DILocalVariable(name: "x", arg: 1, scope: !1078, file: !126, line: 1235, type: !336)
!1082 = !DILocation(line: 0, scope: !1078)
!1083 = !{!"488"}
!1084 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1078, file: !126, line: 1235, type: !10)
!1085 = !{!"489"}
!1086 = !DILocation(line: 1237, column: 5, scope: !1078)
!1087 = !{!"490"}
!1088 = !{!"491"}
!1089 = !DILocation(line: 1237, column: 8, scope: !1078)
!1090 = !{!"492"}
!1091 = !DILocation(line: 1238, column: 2, scope: !1078)
!1092 = !{!"493"}
!1093 = !DILocation(line: 1238, column: 25, scope: !1078)
!1094 = !{!"494"}
!1095 = !DILocation(line: 1238, column: 31, scope: !1078)
!1096 = !{!"495"}
!1097 = !DILocation(line: 1238, column: 15, scope: !1078)
!1098 = !{!"496"}
!1099 = !DILocation(line: 1238, column: 37, scope: !1078)
!1100 = !{!"497"}
!1101 = !{!"498"}
!1102 = !{!"0010"}
!1103 = !DILocation(line: 1239, column: 1, scope: !1078)
!1104 = !{!"499"}
!1105 = distinct !DISubprogram(name: "br_dec32be", scope: !126, file: !126, line: 590, type: !858, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !18, retainedNodes: !2)
!1106 = !DILocalVariable(name: "src", arg: 1, scope: !1105, file: !126, line: 590, type: !62)
!1107 = !DILocation(line: 0, scope: !1105)
!1108 = !{!"500"}
!1109 = !DILocalVariable(name: "buf", scope: !1105, file: !126, line: 595, type: !76)
!1110 = !{!"501"}
!1111 = !DILocation(line: 598, column: 20, scope: !1105)
!1112 = !{!"502"}
!1113 = !{!"503"}
!1114 = !DILocation(line: 598, column: 10, scope: !1105)
!1115 = !{!"504"}
!1116 = !DILocation(line: 598, column: 27, scope: !1105)
!1117 = !{!"505"}
!1118 = !DILocation(line: 599, column: 16, scope: !1105)
!1119 = !{!"506"}
!1120 = !{!"507"}
!1121 = !DILocation(line: 599, column: 6, scope: !1105)
!1122 = !{!"508"}
!1123 = !DILocation(line: 599, column: 23, scope: !1105)
!1124 = !{!"509"}
!1125 = !DILocation(line: 599, column: 3, scope: !1105)
!1126 = !{!"510"}
!1127 = !DILocation(line: 600, column: 16, scope: !1105)
!1128 = !{!"511"}
!1129 = !{!"512"}
!1130 = !DILocation(line: 600, column: 6, scope: !1105)
!1131 = !{!"513"}
!1132 = !DILocation(line: 600, column: 23, scope: !1105)
!1133 = !{!"514"}
!1134 = !DILocation(line: 600, column: 3, scope: !1105)
!1135 = !{!"515"}
!1136 = !DILocation(line: 601, column: 15, scope: !1105)
!1137 = !{!"516"}
!1138 = !{!"517"}
!1139 = !DILocation(line: 601, column: 5, scope: !1105)
!1140 = !{!"518"}
!1141 = !DILocation(line: 601, column: 3, scope: !1105)
!1142 = !{!"519"}
!1143 = !DILocation(line: 598, column: 2, scope: !1105)
!1144 = !{!"520"}
!1145 = distinct !DISubprogram(name: "br_i32_encode", scope: !25, file: !25, line: 29, type: !1146, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !2)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !61, !21, !337}
!1148 = !DILocalVariable(name: "dst", arg: 1, scope: !1145, file: !25, line: 29, type: !61)
!1149 = !DILocation(line: 0, scope: !1145)
!1150 = !{!"521"}
!1151 = !DILocalVariable(name: "len", arg: 2, scope: !1145, file: !25, line: 29, type: !21)
!1152 = !{!"522"}
!1153 = !DILocalVariable(name: "x", arg: 3, scope: !1145, file: !25, line: 29, type: !337)
!1154 = !{!"523"}
!1155 = !DILocalVariable(name: "buf", scope: !1145, file: !25, line: 31, type: !53)
!1156 = !{!"524"}
!1157 = !DILocation(line: 40, column: 7, scope: !1145)
!1158 = !{!"525"}
!1159 = !{!"526"}
!1160 = !DILocation(line: 40, column: 12, scope: !1145)
!1161 = !{!"527"}
!1162 = !DILocation(line: 40, column: 17, scope: !1145)
!1163 = !{!"528"}
!1164 = !DILocation(line: 40, column: 6, scope: !1145)
!1165 = !{!"529"}
!1166 = !DILocalVariable(name: "k", scope: !1145, file: !25, line: 32, type: !21)
!1167 = !{!"530"}
!1168 = !DILocation(line: 41, column: 2, scope: !1145)
!1169 = !{!"531"}
!1170 = !{!"532"}
!1171 = !{!"533"}
!1172 = !{!"534"}
!1173 = !{!"535"}
!1174 = !DILocation(line: 41, column: 13, scope: !1145)
!1175 = !{!"536"}
!1176 = !{!"537"}
!1177 = !DILocation(line: 42, column: 8, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1145, file: !25, line: 41, column: 18)
!1179 = !{!"538"}
!1180 = !{!"539"}
!1181 = !DILocation(line: 42, column: 11, scope: !1178)
!1182 = !{!"540"}
!1183 = !DILocation(line: 43, column: 7, scope: !1178)
!1184 = !{!"541"}
!1185 = !{!"542"}
!1186 = distinct !{!1186, !1168, !1187, !121}
!1187 = !DILocation(line: 44, column: 2, scope: !1145)
!1188 = !{!"543"}
!1189 = !DILocation(line: 51, column: 11, scope: !1145)
!1190 = !{!"544"}
!1191 = !DILocation(line: 51, column: 16, scope: !1145)
!1192 = !{!"545"}
!1193 = !{!"546"}
!1194 = !DILocation(line: 52, column: 14, scope: !1145)
!1195 = !{!"547"}
!1196 = !DILocation(line: 52, column: 2, scope: !1145)
!1197 = !{!"548"}
!1198 = !DILocation(line: 54, column: 13, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1145, file: !25, line: 52, column: 19)
!1200 = !{!"549"}
!1201 = !{!"550"}
!1202 = !DILocation(line: 54, column: 18, scope: !1199)
!1203 = !{!"551"}
!1204 = !{!"552"}
!1205 = !DILocation(line: 54, column: 8, scope: !1199)
!1206 = !{!"553"}
!1207 = !{!"554"}
!1208 = !DILocation(line: 54, column: 11, scope: !1199)
!1209 = !{!"555"}
!1210 = !DILocation(line: 54, column: 3, scope: !1199)
!1211 = !{!"556"}
!1212 = !{!"557"}
!1213 = !{!"558"}
!1214 = !DILocation(line: 57, column: 13, scope: !1199)
!1215 = !{!"559"}
!1216 = !{!"560"}
!1217 = !DILocation(line: 57, column: 18, scope: !1199)
!1218 = !{!"561"}
!1219 = !{!"562"}
!1220 = !DILocation(line: 57, column: 8, scope: !1199)
!1221 = !{!"563"}
!1222 = !{!"564"}
!1223 = !DILocation(line: 57, column: 11, scope: !1199)
!1224 = !{!"565"}
!1225 = !DILocation(line: 57, column: 3, scope: !1199)
!1226 = !{!"566"}
!1227 = !{!"567"}
!1228 = !{!"568"}
!1229 = !DILocation(line: 60, column: 13, scope: !1199)
!1230 = !{!"569"}
!1231 = !{!"570"}
!1232 = !{!"571"}
!1233 = !DILocation(line: 60, column: 8, scope: !1199)
!1234 = !{!"572"}
!1235 = !{!"573"}
!1236 = !DILocation(line: 60, column: 11, scope: !1199)
!1237 = !{!"574"}
!1238 = !DILocation(line: 61, column: 5, scope: !1199)
!1239 = !{!"575"}
!1240 = !{!"576"}
!1241 = !DILocation(line: 62, column: 2, scope: !1199)
!1242 = !{!"577"}
!1243 = !{!"578"}
!1244 = !{!"579"}
!1245 = !{!"580"}
!1246 = !{!"581"}
!1247 = !DILocation(line: 67, column: 2, scope: !1145)
!1248 = !{!"582"}
!1249 = !{!"583"}
!1250 = !{!"584"}
!1251 = !{!"585"}
!1252 = !{!"586"}
!1253 = !DILocation(line: 67, column: 11, scope: !1145)
!1254 = !{!"587"}
!1255 = !{!"588"}
!1256 = !DILocation(line: 68, column: 19, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1145, file: !25, line: 67, column: 16)
!1258 = !{!"589"}
!1259 = !{!"590"}
!1260 = !DILocation(line: 68, column: 3, scope: !1257)
!1261 = !{!"591"}
!1262 = !DILocation(line: 69, column: 5, scope: !1257)
!1263 = !{!"592"}
!1264 = !{!"593"}
!1265 = !DILocation(line: 70, column: 7, scope: !1257)
!1266 = !{!"594"}
!1267 = !{!"595"}
!1268 = distinct !{!1268, !1247, !1269, !121}
!1269 = !DILocation(line: 71, column: 2, scope: !1145)
!1270 = !{!"596"}
!1271 = !DILocation(line: 72, column: 1, scope: !1145)
!1272 = !{!"597"}
!1273 = distinct !DISubprogram(name: "br_enc32be", scope: !126, file: !126, line: 558, type: !1274, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !2)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !61, !10}
!1276 = !DILocalVariable(name: "dst", arg: 1, scope: !1273, file: !126, line: 558, type: !61)
!1277 = !DILocation(line: 0, scope: !1273)
!1278 = !{!"598"}
!1279 = !DILocalVariable(name: "x", arg: 2, scope: !1273, file: !126, line: 558, type: !10)
!1280 = !{!"599"}
!1281 = !DILocalVariable(name: "buf", scope: !1273, file: !126, line: 563, type: !53)
!1282 = !{!"600"}
!1283 = !DILocation(line: 566, column: 29, scope: !1273)
!1284 = !{!"601"}
!1285 = !DILocation(line: 566, column: 11, scope: !1273)
!1286 = !{!"602"}
!1287 = !DILocation(line: 566, column: 2, scope: !1273)
!1288 = !{!"603"}
!1289 = !DILocation(line: 566, column: 9, scope: !1273)
!1290 = !{!"604"}
!1291 = !DILocation(line: 567, column: 29, scope: !1273)
!1292 = !{!"605"}
!1293 = !DILocation(line: 567, column: 11, scope: !1273)
!1294 = !{!"606"}
!1295 = !DILocation(line: 567, column: 2, scope: !1273)
!1296 = !{!"607"}
!1297 = !DILocation(line: 567, column: 9, scope: !1273)
!1298 = !{!"608"}
!1299 = !DILocation(line: 568, column: 29, scope: !1273)
!1300 = !{!"609"}
!1301 = !DILocation(line: 568, column: 11, scope: !1273)
!1302 = !{!"610"}
!1303 = !DILocation(line: 568, column: 2, scope: !1273)
!1304 = !{!"611"}
!1305 = !DILocation(line: 568, column: 9, scope: !1273)
!1306 = !{!"612"}
!1307 = !DILocation(line: 569, column: 11, scope: !1273)
!1308 = !{!"613"}
!1309 = !DILocation(line: 569, column: 2, scope: !1273)
!1310 = !{!"614"}
!1311 = !DILocation(line: 569, column: 9, scope: !1273)
!1312 = !{!"615"}
!1313 = !DILocation(line: 571, column: 1, scope: !1273)
!1314 = !{!"616"}
!1315 = distinct !DISubprogram(name: "br_i32_from_monty", scope: !29, file: !29, line: 29, type: !1316, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !336, !337, !10}
!1318 = !DILocalVariable(name: "x", arg: 1, scope: !1315, file: !29, line: 29, type: !336)
!1319 = !DILocation(line: 0, scope: !1315)
!1320 = !{!"617"}
!1321 = !DILocalVariable(name: "m", arg: 2, scope: !1315, file: !29, line: 29, type: !337)
!1322 = !{!"618"}
!1323 = !DILocalVariable(name: "m0i", arg: 3, scope: !1315, file: !29, line: 29, type: !10)
!1324 = !{!"619"}
!1325 = !DILocation(line: 33, column: 9, scope: !1315)
!1326 = !{!"620"}
!1327 = !{!"621"}
!1328 = !DILocation(line: 33, column: 14, scope: !1315)
!1329 = !{!"622"}
!1330 = !DILocation(line: 33, column: 20, scope: !1315)
!1331 = !{!"623"}
!1332 = !DILocation(line: 33, column: 8, scope: !1315)
!1333 = !{!"624"}
!1334 = !DILocalVariable(name: "len", scope: !1315, file: !29, line: 31, type: !21)
!1335 = !{!"625"}
!1336 = !DILocalVariable(name: "u", scope: !1315, file: !29, line: 31, type: !21)
!1337 = !{!"626"}
!1338 = !DILocation(line: 34, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1315, file: !29, line: 34, column: 2)
!1340 = !{!"627"}
!1341 = !DILocation(line: 0, scope: !1339)
!1342 = !{!"628"}
!1343 = !{!"629"}
!1344 = !DILocation(line: 34, column: 16, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !29, line: 34, column: 2)
!1346 = !{!"630"}
!1347 = !DILocation(line: 34, column: 2, scope: !1339)
!1348 = !{!"631"}
!1349 = !DILocation(line: 38, column: 7, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !29, line: 34, column: 29)
!1351 = !{!"632"}
!1352 = !{!"633"}
!1353 = !DILocation(line: 38, column: 12, scope: !1350)
!1354 = !{!"634"}
!1355 = !DILocalVariable(name: "f", scope: !1350, file: !29, line: 35, type: !10)
!1356 = !DILocation(line: 0, scope: !1350)
!1357 = !{!"635"}
!1358 = !DILocalVariable(name: "cc", scope: !1350, file: !29, line: 36, type: !31)
!1359 = !{!"636"}
!1360 = !DILocalVariable(name: "v", scope: !1315, file: !29, line: 31, type: !21)
!1361 = !{!"637"}
!1362 = !DILocation(line: 40, column: 8, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1350, file: !29, line: 40, column: 3)
!1364 = !{!"638"}
!1365 = !DILocation(line: 0, scope: !1363)
!1366 = !{!"639"}
!1367 = !{!"640"}
!1368 = !{!"641"}
!1369 = !{!"642"}
!1370 = !DILocation(line: 40, column: 17, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1363, file: !29, line: 40, column: 3)
!1372 = !{!"643"}
!1373 = !DILocation(line: 40, column: 3, scope: !1363)
!1374 = !{!"644"}
!1375 = !DILocation(line: 43, column: 22, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !29, line: 40, column: 30)
!1377 = !{!"645"}
!1378 = !DILocation(line: 43, column: 18, scope: !1376)
!1379 = !{!"646"}
!1380 = !{!"647"}
!1381 = !DILocation(line: 43, column: 8, scope: !1376)
!1382 = !{!"648"}
!1383 = !DILocation(line: 43, column: 29, scope: !1376)
!1384 = !{!"649"}
!1385 = !{!"650"}
!1386 = !{!"651"}
!1387 = !{!"652"}
!1388 = !{!"653"}
!1389 = !{!"654"}
!1390 = !DILocation(line: 43, column: 27, scope: !1376)
!1391 = !{!"655"}
!1392 = !DILocation(line: 43, column: 46, scope: !1376)
!1393 = !{!"656"}
!1394 = !DILocalVariable(name: "z", scope: !1376, file: !29, line: 41, type: !31)
!1395 = !DILocation(line: 0, scope: !1376)
!1396 = !{!"657"}
!1397 = !DILocation(line: 44, column: 11, scope: !1376)
!1398 = !{!"658"}
!1399 = !{!"659"}
!1400 = !DILocation(line: 45, column: 10, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1376, file: !29, line: 45, column: 8)
!1402 = !{!"660"}
!1403 = !DILocation(line: 45, column: 8, scope: !1376)
!1404 = !{!"661"}
!1405 = !DILocation(line: 46, column: 12, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !29, line: 45, column: 16)
!1407 = !{!"662"}
!1408 = !DILocation(line: 46, column: 5, scope: !1406)
!1409 = !{!"663"}
!1410 = !DILocation(line: 46, column: 10, scope: !1406)
!1411 = !{!"664"}
!1412 = !DILocation(line: 47, column: 4, scope: !1406)
!1413 = !{!"665"}
!1414 = !DILocation(line: 48, column: 3, scope: !1376)
!1415 = !{!"666"}
!1416 = !DILocation(line: 40, column: 26, scope: !1371)
!1417 = !{!"667"}
!1418 = !{!"668"}
!1419 = !DILocation(line: 40, column: 3, scope: !1371)
!1420 = distinct !{!1420, !1373, !1421, !121}
!1421 = !DILocation(line: 48, column: 3, scope: !1363)
!1422 = !{!"669"}
!1423 = !DILocation(line: 49, column: 12, scope: !1350)
!1424 = !{!"670"}
!1425 = !DILocation(line: 49, column: 3, scope: !1350)
!1426 = !{!"671"}
!1427 = !DILocation(line: 49, column: 10, scope: !1350)
!1428 = !{!"672"}
!1429 = !DILocation(line: 50, column: 2, scope: !1350)
!1430 = !{!"673"}
!1431 = !DILocation(line: 34, column: 25, scope: !1345)
!1432 = !{!"674"}
!1433 = !{!"675"}
!1434 = !DILocation(line: 34, column: 2, scope: !1345)
!1435 = distinct !{!1435, !1347, !1436, !121}
!1436 = !DILocation(line: 50, column: 2, scope: !1339)
!1437 = !{!"676"}
!1438 = !DILocation(line: 59, column: 23, scope: !1315)
!1439 = !{!"677"}
!1440 = !DILocation(line: 59, column: 19, scope: !1315)
!1441 = !{!"678"}
!1442 = !DILocation(line: 59, column: 2, scope: !1315)
!1443 = !{!"679"}
!1444 = !DILocation(line: 60, column: 1, scope: !1315)
!1445 = !{!"680"}
!1446 = distinct !DISubprogram(name: "NOT", scope: !126, file: !126, line: 761, type: !481, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1447 = !DILocalVariable(name: "ctl", arg: 1, scope: !1446, file: !126, line: 761, type: !10)
!1448 = !DILocation(line: 0, scope: !1446)
!1449 = !{!"681"}
!1450 = !DILocation(line: 763, column: 13, scope: !1446)
!1451 = !{!"682"}
!1452 = !DILocation(line: 763, column: 2, scope: !1446)
!1453 = !{!"683"}
!1454 = distinct !DISubprogram(name: "br_i32_modpow", scope: !34, file: !34, line: 29, type: !1455, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !2)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !336, !76, !21, !337, !10, !336, !336}
!1457 = !DILocalVariable(name: "x", arg: 1, scope: !1454, file: !34, line: 29, type: !336)
!1458 = !DILocation(line: 0, scope: !1454)
!1459 = !{!"684"}
!1460 = !DILocalVariable(name: "e", arg: 2, scope: !1454, file: !34, line: 30, type: !76)
!1461 = !{!"685"}
!1462 = !DILocalVariable(name: "elen", arg: 3, scope: !1454, file: !34, line: 30, type: !21)
!1463 = !{!"686"}
!1464 = !DILocalVariable(name: "m", arg: 4, scope: !1454, file: !34, line: 31, type: !337)
!1465 = !{!"687"}
!1466 = !DILocalVariable(name: "m0i", arg: 5, scope: !1454, file: !34, line: 31, type: !10)
!1467 = !{!"688"}
!1468 = !DILocalVariable(name: "t1", arg: 6, scope: !1454, file: !34, line: 31, type: !336)
!1469 = !{!"689"}
!1470 = !DILocalVariable(name: "t2", arg: 7, scope: !1454, file: !34, line: 31, type: !336)
!1471 = !{!"690"}
!1472 = !DILocation(line: 40, column: 11, scope: !1454)
!1473 = !{!"691"}
!1474 = !{!"692"}
!1475 = !DILocation(line: 40, column: 16, scope: !1454)
!1476 = !{!"693"}
!1477 = !DILocation(line: 40, column: 22, scope: !1454)
!1478 = !{!"694"}
!1479 = !DILocation(line: 40, column: 9, scope: !1454)
!1480 = !{!"695"}
!1481 = !DILocation(line: 40, column: 28, scope: !1454)
!1482 = !{!"696"}
!1483 = !DILocalVariable(name: "mlen", scope: !1454, file: !34, line: 33, type: !21)
!1484 = !{!"697"}
!1485 = !DILocation(line: 52, column: 2, scope: !1454)
!1486 = !{!"698"}
!1487 = !{!"699"}
!1488 = !{!"700"}
!1489 = !DILocation(line: 53, column: 2, scope: !1454)
!1490 = !{!"701"}
!1491 = !DILocation(line: 54, column: 17, scope: !1454)
!1492 = !{!"702"}
!1493 = !{!"703"}
!1494 = !DILocation(line: 54, column: 2, scope: !1454)
!1495 = !{!"704"}
!1496 = !DILocation(line: 55, column: 2, scope: !1454)
!1497 = !{!"705"}
!1498 = !DILocation(line: 55, column: 7, scope: !1454)
!1499 = !{!"706"}
!1500 = !DILocalVariable(name: "k", scope: !1454, file: !34, line: 34, type: !10)
!1501 = !{!"707"}
!1502 = !DILocation(line: 56, column: 7, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1454, file: !34, line: 56, column: 2)
!1504 = !{!"708"}
!1505 = !DILocation(line: 0, scope: !1503)
!1506 = !{!"709"}
!1507 = !{!"710"}
!1508 = !DILocation(line: 56, column: 19, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1503, file: !34, line: 56, column: 2)
!1510 = !{!"711"}
!1511 = !DILocation(line: 56, column: 34, scope: !1509)
!1512 = !{!"712"}
!1513 = !DILocation(line: 56, column: 16, scope: !1509)
!1514 = !{!"713"}
!1515 = !DILocation(line: 56, column: 2, scope: !1503)
!1516 = !{!"714"}
!1517 = !DILocation(line: 59, column: 17, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1509, file: !34, line: 56, column: 47)
!1519 = !{!"715"}
!1520 = !DILocation(line: 59, column: 26, scope: !1518)
!1521 = !{!"716"}
!1522 = !DILocation(line: 59, column: 23, scope: !1518)
!1523 = !{!"717"}
!1524 = !DILocation(line: 59, column: 21, scope: !1518)
!1525 = !{!"718"}
!1526 = !DILocation(line: 59, column: 10, scope: !1518)
!1527 = !{!"719"}
!1528 = !{!"720"}
!1529 = !{!"721"}
!1530 = !DILocation(line: 59, column: 39, scope: !1518)
!1531 = !{!"722"}
!1532 = !DILocation(line: 59, column: 33, scope: !1518)
!1533 = !{!"723"}
!1534 = !DILocation(line: 59, column: 45, scope: !1518)
!1535 = !{!"724"}
!1536 = !DILocalVariable(name: "ctl", scope: !1518, file: !34, line: 57, type: !10)
!1537 = !DILocation(line: 0, scope: !1518)
!1538 = !{!"725"}
!1539 = !DILocation(line: 60, column: 3, scope: !1518)
!1540 = !{!"726"}
!1541 = !DILocation(line: 61, column: 14, scope: !1518)
!1542 = !{!"727"}
!1543 = !DILocation(line: 61, column: 17, scope: !1518)
!1544 = !{!"728"}
!1545 = !DILocation(line: 61, column: 3, scope: !1518)
!1546 = !{!"729"}
!1547 = !DILocation(line: 62, column: 3, scope: !1518)
!1548 = !{!"730"}
!1549 = !DILocation(line: 63, column: 3, scope: !1518)
!1550 = !{!"731"}
!1551 = !{!"732"}
!1552 = !{!"733"}
!1553 = !DILocation(line: 64, column: 2, scope: !1518)
!1554 = !{!"734"}
!1555 = !DILocation(line: 56, column: 43, scope: !1509)
!1556 = !{!"735"}
!1557 = !{!"736"}
!1558 = !DILocation(line: 56, column: 2, scope: !1509)
!1559 = distinct !{!1559, !1515, !1560, !121}
!1560 = !DILocation(line: 64, column: 2, scope: !1503)
!1561 = !{!"737"}
!1562 = !DILocation(line: 65, column: 1, scope: !1454)
!1563 = !{!"738"}
!1564 = distinct !DISubprogram(name: "br_i32_zero", scope: !126, file: !126, line: 1235, type: !1079, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !33, retainedNodes: !2)
!1565 = !DILocalVariable(name: "x", arg: 1, scope: !1564, file: !126, line: 1235, type: !336)
!1566 = !DILocation(line: 0, scope: !1564)
!1567 = !{!"739"}
!1568 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1564, file: !126, line: 1235, type: !10)
!1569 = !{!"740"}
!1570 = !DILocation(line: 1237, column: 5, scope: !1564)
!1571 = !{!"741"}
!1572 = !{!"742"}
!1573 = !DILocation(line: 1237, column: 8, scope: !1564)
!1574 = !{!"743"}
!1575 = !DILocation(line: 1238, column: 2, scope: !1564)
!1576 = !{!"744"}
!1577 = !DILocation(line: 1238, column: 25, scope: !1564)
!1578 = !{!"745"}
!1579 = !DILocation(line: 1238, column: 31, scope: !1564)
!1580 = !{!"746"}
!1581 = !DILocation(line: 1238, column: 15, scope: !1564)
!1582 = !{!"747"}
!1583 = !DILocation(line: 1238, column: 37, scope: !1564)
!1584 = !{!"748"}
!1585 = !{!"749"}
!1586 = !DILocation(line: 1239, column: 1, scope: !1564)
!1587 = !{!"750"}
!1588 = distinct !DISubprogram(name: "br_i32_montymul", scope: !36, file: !36, line: 29, type: !1589, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !2)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !336, !337, !337, !337, !10}
!1591 = !DILocalVariable(name: "d", arg: 1, scope: !1588, file: !36, line: 29, type: !336)
!1592 = !DILocation(line: 0, scope: !1588)
!1593 = !{!"751"}
!1594 = !DILocalVariable(name: "x", arg: 2, scope: !1588, file: !36, line: 29, type: !337)
!1595 = !{!"752"}
!1596 = !DILocalVariable(name: "y", arg: 3, scope: !1588, file: !36, line: 29, type: !337)
!1597 = !{!"753"}
!1598 = !DILocalVariable(name: "m", arg: 4, scope: !1588, file: !36, line: 30, type: !337)
!1599 = !{!"754"}
!1600 = !DILocalVariable(name: "m0i", arg: 5, scope: !1588, file: !36, line: 30, type: !10)
!1601 = !{!"755"}
!1602 = !DILocation(line: 35, column: 9, scope: !1588)
!1603 = !{!"756"}
!1604 = !{!"757"}
!1605 = !DILocation(line: 35, column: 14, scope: !1588)
!1606 = !{!"758"}
!1607 = !DILocation(line: 35, column: 20, scope: !1588)
!1608 = !{!"759"}
!1609 = !DILocation(line: 35, column: 8, scope: !1588)
!1610 = !{!"760"}
!1611 = !DILocalVariable(name: "len", scope: !1588, file: !36, line: 32, type: !21)
!1612 = !{!"761"}
!1613 = !DILocation(line: 36, column: 17, scope: !1588)
!1614 = !{!"762"}
!1615 = !{!"763"}
!1616 = !DILocation(line: 36, column: 2, scope: !1588)
!1617 = !{!"764"}
!1618 = !DILocalVariable(name: "dh", scope: !1588, file: !36, line: 33, type: !31)
!1619 = !{!"765"}
!1620 = !DILocalVariable(name: "u", scope: !1588, file: !36, line: 32, type: !21)
!1621 = !{!"766"}
!1622 = !DILocation(line: 38, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1588, file: !36, line: 38, column: 2)
!1624 = !{!"767"}
!1625 = !DILocation(line: 0, scope: !1623)
!1626 = !{!"768"}
!1627 = !{!"769"}
!1628 = !{!"770"}
!1629 = !{!"771"}
!1630 = !DILocation(line: 38, column: 16, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1623, file: !36, line: 38, column: 2)
!1632 = !{!"772"}
!1633 = !DILocation(line: 38, column: 2, scope: !1623)
!1634 = !{!"773"}
!1635 = !DILocation(line: 42, column: 12, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !36, line: 38, column: 29)
!1637 = !{!"774"}
!1638 = !DILocation(line: 42, column: 8, scope: !1636)
!1639 = !{!"775"}
!1640 = !{!"776"}
!1641 = !DILocalVariable(name: "xu", scope: !1636, file: !36, line: 39, type: !10)
!1642 = !DILocation(line: 0, scope: !1636)
!1643 = !{!"777"}
!1644 = !DILocation(line: 43, column: 8, scope: !1636)
!1645 = !{!"778"}
!1646 = !{!"779"}
!1647 = !DILocation(line: 43, column: 19, scope: !1636)
!1648 = !{!"780"}
!1649 = !DILocation(line: 43, column: 15, scope: !1636)
!1650 = !{!"781"}
!1651 = !{!"782"}
!1652 = !DILocation(line: 43, column: 26, scope: !1636)
!1653 = !{!"783"}
!1654 = !{!"784"}
!1655 = !DILocation(line: 43, column: 24, scope: !1636)
!1656 = !{!"785"}
!1657 = !DILocation(line: 43, column: 13, scope: !1636)
!1658 = !{!"786"}
!1659 = !DILocation(line: 43, column: 32, scope: !1636)
!1660 = !{!"787"}
!1661 = !DILocalVariable(name: "f", scope: !1636, file: !36, line: 39, type: !10)
!1662 = !{!"788"}
!1663 = !DILocalVariable(name: "r1", scope: !1636, file: !36, line: 40, type: !31)
!1664 = !{!"789"}
!1665 = !DILocalVariable(name: "r2", scope: !1636, file: !36, line: 40, type: !31)
!1666 = !{!"790"}
!1667 = !DILocalVariable(name: "v", scope: !1588, file: !36, line: 32, type: !21)
!1668 = !{!"791"}
!1669 = !DILocation(line: 46, column: 8, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1636, file: !36, line: 46, column: 3)
!1671 = !{!"792"}
!1672 = !DILocation(line: 0, scope: !1670)
!1673 = !{!"793"}
!1674 = !{!"794"}
!1675 = !{!"795"}
!1676 = !{!"796"}
!1677 = !{!"797"}
!1678 = !{!"798"}
!1679 = !DILocation(line: 46, column: 17, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1670, file: !36, line: 46, column: 3)
!1681 = !{!"799"}
!1682 = !DILocation(line: 46, column: 3, scope: !1670)
!1683 = !{!"800"}
!1684 = !DILocation(line: 50, column: 22, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1680, file: !36, line: 46, column: 30)
!1686 = !{!"801"}
!1687 = !DILocation(line: 50, column: 18, scope: !1685)
!1688 = !{!"802"}
!1689 = !{!"803"}
!1690 = !DILocation(line: 50, column: 8, scope: !1685)
!1691 = !{!"804"}
!1692 = !DILocation(line: 50, column: 29, scope: !1685)
!1693 = !{!"805"}
!1694 = !{!"806"}
!1695 = !{!"807"}
!1696 = !{!"808"}
!1697 = !{!"809"}
!1698 = !{!"810"}
!1699 = !DILocation(line: 50, column: 27, scope: !1685)
!1700 = !{!"811"}
!1701 = !DILocation(line: 50, column: 47, scope: !1685)
!1702 = !{!"812"}
!1703 = !DILocalVariable(name: "z", scope: !1685, file: !36, line: 47, type: !31)
!1704 = !DILocation(line: 0, scope: !1685)
!1705 = !{!"813"}
!1706 = !DILocation(line: 51, column: 11, scope: !1685)
!1707 = !{!"814"}
!1708 = !{!"815"}
!1709 = !DILocation(line: 52, column: 8, scope: !1685)
!1710 = !{!"816"}
!1711 = !DILocalVariable(name: "t", scope: !1685, file: !36, line: 48, type: !10)
!1712 = !{!"817"}
!1713 = !DILocation(line: 53, column: 8, scope: !1685)
!1714 = !{!"818"}
!1715 = !DILocation(line: 53, column: 22, scope: !1685)
!1716 = !{!"819"}
!1717 = !{!"820"}
!1718 = !{!"821"}
!1719 = !{!"822"}
!1720 = !{!"823"}
!1721 = !{!"824"}
!1722 = !DILocation(line: 53, column: 20, scope: !1685)
!1723 = !{!"825"}
!1724 = !DILocation(line: 53, column: 39, scope: !1685)
!1725 = !{!"826"}
!1726 = !{!"827"}
!1727 = !DILocation(line: 54, column: 11, scope: !1685)
!1728 = !{!"828"}
!1729 = !{!"829"}
!1730 = !DILocation(line: 55, column: 10, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1685, file: !36, line: 55, column: 8)
!1732 = !{!"830"}
!1733 = !DILocation(line: 55, column: 8, scope: !1685)
!1734 = !{!"831"}
!1735 = !DILocation(line: 56, column: 12, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !36, line: 55, column: 16)
!1737 = !{!"832"}
!1738 = !DILocation(line: 56, column: 5, scope: !1736)
!1739 = !{!"833"}
!1740 = !DILocation(line: 56, column: 10, scope: !1736)
!1741 = !{!"834"}
!1742 = !DILocation(line: 57, column: 4, scope: !1736)
!1743 = !{!"835"}
!1744 = !DILocation(line: 58, column: 3, scope: !1685)
!1745 = !{!"836"}
!1746 = !DILocation(line: 46, column: 26, scope: !1680)
!1747 = !{!"837"}
!1748 = !{!"838"}
!1749 = !DILocation(line: 46, column: 3, scope: !1680)
!1750 = distinct !{!1750, !1682, !1751, !121}
!1751 = !DILocation(line: 58, column: 3, scope: !1670)
!1752 = !{!"839"}
!1753 = !DILocation(line: 59, column: 11, scope: !1636)
!1754 = !{!"840"}
!1755 = !DILocation(line: 59, column: 16, scope: !1636)
!1756 = !{!"841"}
!1757 = !DILocalVariable(name: "zh", scope: !1636, file: !36, line: 40, type: !31)
!1758 = !{!"842"}
!1759 = !DILocation(line: 60, column: 12, scope: !1636)
!1760 = !{!"843"}
!1761 = !DILocation(line: 60, column: 3, scope: !1636)
!1762 = !{!"844"}
!1763 = !DILocation(line: 60, column: 10, scope: !1636)
!1764 = !{!"845"}
!1765 = !DILocation(line: 61, column: 11, scope: !1636)
!1766 = !{!"846"}
!1767 = !{!"847"}
!1768 = !DILocation(line: 62, column: 2, scope: !1636)
!1769 = !{!"848"}
!1770 = !DILocation(line: 38, column: 25, scope: !1631)
!1771 = !{!"849"}
!1772 = !{!"850"}
!1773 = !DILocation(line: 38, column: 2, scope: !1631)
!1774 = distinct !{!1774, !1633, !1775, !121}
!1775 = !DILocation(line: 62, column: 2, scope: !1623)
!1776 = !{!"851"}
!1777 = !DILocation(line: 68, column: 23, scope: !1588)
!1778 = !{!"852"}
!1779 = !DILocation(line: 68, column: 19, scope: !1588)
!1780 = !{!"853"}
!1781 = !DILocation(line: 68, column: 36, scope: !1588)
!1782 = !{!"854"}
!1783 = !DILocation(line: 68, column: 32, scope: !1588)
!1784 = !{!"855"}
!1785 = !DILocation(line: 68, column: 30, scope: !1588)
!1786 = !{!"856"}
!1787 = !DILocation(line: 68, column: 2, scope: !1588)
!1788 = !{!"857"}
!1789 = !DILocation(line: 69, column: 1, scope: !1588)
!1790 = !{!"858"}
!1791 = distinct !DISubprogram(name: "br_i32_zero", scope: !126, file: !126, line: 1235, type: !1079, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !2)
!1792 = !DILocalVariable(name: "x", arg: 1, scope: !1791, file: !126, line: 1235, type: !336)
!1793 = !DILocation(line: 0, scope: !1791)
!1794 = !{!"859"}
!1795 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1791, file: !126, line: 1235, type: !10)
!1796 = !{!"860"}
!1797 = !DILocation(line: 1237, column: 5, scope: !1791)
!1798 = !{!"861"}
!1799 = !{!"862"}
!1800 = !DILocation(line: 1237, column: 8, scope: !1791)
!1801 = !{!"863"}
!1802 = !DILocation(line: 1238, column: 2, scope: !1791)
!1803 = !{!"864"}
!1804 = !DILocation(line: 1238, column: 25, scope: !1791)
!1805 = !{!"865"}
!1806 = !DILocation(line: 1238, column: 31, scope: !1791)
!1807 = !{!"866"}
!1808 = !DILocation(line: 1238, column: 15, scope: !1791)
!1809 = !{!"867"}
!1810 = !DILocation(line: 1238, column: 37, scope: !1791)
!1811 = !{!"868"}
!1812 = !{!"869"}
!1813 = !DILocation(line: 1239, column: 1, scope: !1791)
!1814 = !{!"870"}
!1815 = distinct !DISubprogram(name: "NEQ", scope: !126, file: !126, line: 791, type: !419, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !2)
!1816 = !DILocalVariable(name: "x", arg: 1, scope: !1815, file: !126, line: 791, type: !10)
!1817 = !DILocation(line: 0, scope: !1815)
!1818 = !{!"871"}
!1819 = !DILocalVariable(name: "y", arg: 2, scope: !1815, file: !126, line: 791, type: !10)
!1820 = !{!"872"}
!1821 = !DILocation(line: 795, column: 8, scope: !1815)
!1822 = !{!"873"}
!1823 = !DILocalVariable(name: "q", scope: !1815, file: !126, line: 793, type: !10)
!1824 = !{!"874"}
!1825 = !DILocation(line: 796, column: 14, scope: !1815)
!1826 = !{!"875"}
!1827 = !DILocation(line: 796, column: 12, scope: !1815)
!1828 = !{!"876"}
!1829 = !DILocation(line: 796, column: 18, scope: !1815)
!1830 = !{!"877"}
!1831 = !DILocation(line: 796, column: 2, scope: !1815)
!1832 = !{!"878"}
!1833 = distinct !DISubprogram(name: "NOT", scope: !126, file: !126, line: 761, type: !481, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !2)
!1834 = !DILocalVariable(name: "ctl", arg: 1, scope: !1833, file: !126, line: 761, type: !10)
!1835 = !DILocation(line: 0, scope: !1833)
!1836 = !{!"879"}
!1837 = !DILocation(line: 763, column: 13, scope: !1833)
!1838 = !{!"880"}
!1839 = !DILocation(line: 763, column: 2, scope: !1833)
!1840 = !{!"881"}
!1841 = distinct !DISubprogram(name: "br_i32_mulacc", scope: !38, file: !38, line: 29, type: !1842, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !2)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !336, !337, !337}
!1844 = !DILocalVariable(name: "d", arg: 1, scope: !1841, file: !38, line: 29, type: !336)
!1845 = !DILocation(line: 0, scope: !1841)
!1846 = !{!"882"}
!1847 = !DILocalVariable(name: "a", arg: 2, scope: !1841, file: !38, line: 29, type: !337)
!1848 = !{!"883"}
!1849 = !DILocalVariable(name: "b", arg: 3, scope: !1841, file: !38, line: 29, type: !337)
!1850 = !{!"884"}
!1851 = !DILocation(line: 33, column: 10, scope: !1841)
!1852 = !{!"885"}
!1853 = !{!"886"}
!1854 = !DILocation(line: 33, column: 15, scope: !1841)
!1855 = !{!"887"}
!1856 = !DILocation(line: 33, column: 21, scope: !1841)
!1857 = !{!"888"}
!1858 = !DILocation(line: 33, column: 9, scope: !1841)
!1859 = !{!"889"}
!1860 = !DILocalVariable(name: "alen", scope: !1841, file: !38, line: 31, type: !21)
!1861 = !{!"890"}
!1862 = !DILocation(line: 34, column: 10, scope: !1841)
!1863 = !{!"891"}
!1864 = !{!"892"}
!1865 = !DILocation(line: 34, column: 15, scope: !1841)
!1866 = !{!"893"}
!1867 = !DILocation(line: 34, column: 21, scope: !1841)
!1868 = !{!"894"}
!1869 = !DILocation(line: 34, column: 9, scope: !1841)
!1870 = !{!"895"}
!1871 = !DILocalVariable(name: "blen", scope: !1841, file: !38, line: 31, type: !21)
!1872 = !{!"896"}
!1873 = !DILocation(line: 35, column: 9, scope: !1841)
!1874 = !{!"897"}
!1875 = !{!"898"}
!1876 = !DILocation(line: 35, column: 16, scope: !1841)
!1877 = !{!"899"}
!1878 = !{!"900"}
!1879 = !DILocation(line: 35, column: 14, scope: !1841)
!1880 = !{!"901"}
!1881 = !DILocation(line: 35, column: 2, scope: !1841)
!1882 = !{!"902"}
!1883 = !DILocation(line: 35, column: 7, scope: !1841)
!1884 = !{!"903"}
!1885 = !DILocalVariable(name: "u", scope: !1841, file: !38, line: 31, type: !21)
!1886 = !{!"904"}
!1887 = !DILocation(line: 36, column: 7, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1841, file: !38, line: 36, column: 2)
!1889 = !{!"905"}
!1890 = !DILocation(line: 0, scope: !1888)
!1891 = !{!"906"}
!1892 = !{!"907"}
!1893 = !DILocation(line: 36, column: 16, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1888, file: !38, line: 36, column: 2)
!1895 = !{!"908"}
!1896 = !DILocation(line: 36, column: 2, scope: !1888)
!1897 = !{!"909"}
!1898 = !DILocation(line: 45, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !38, line: 36, column: 30)
!1900 = !{!"910"}
!1901 = !DILocation(line: 45, column: 7, scope: !1899)
!1902 = !{!"911"}
!1903 = !{!"912"}
!1904 = !DILocalVariable(name: "f", scope: !1899, file: !38, line: 37, type: !10)
!1905 = !DILocation(line: 0, scope: !1899)
!1906 = !{!"913"}
!1907 = !DILocalVariable(name: "cc", scope: !1899, file: !38, line: 40, type: !31)
!1908 = !{!"914"}
!1909 = !DILocalVariable(name: "v", scope: !1899, file: !38, line: 38, type: !21)
!1910 = !{!"915"}
!1911 = !DILocation(line: 47, column: 8, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1899, file: !38, line: 47, column: 3)
!1913 = !{!"916"}
!1914 = !DILocation(line: 0, scope: !1912)
!1915 = !{!"917"}
!1916 = !{!"918"}
!1917 = !{!"919"}
!1918 = !{!"920"}
!1919 = !DILocation(line: 47, column: 17, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1912, file: !38, line: 47, column: 3)
!1921 = !{!"921"}
!1922 = !DILocation(line: 47, column: 3, scope: !1912)
!1923 = !{!"922"}
!1924 = !DILocation(line: 50, column: 22, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1920, file: !38, line: 47, column: 31)
!1926 = !{!"923"}
!1927 = !DILocation(line: 50, column: 26, scope: !1925)
!1928 = !{!"924"}
!1929 = !DILocation(line: 50, column: 18, scope: !1925)
!1930 = !{!"925"}
!1931 = !{!"926"}
!1932 = !DILocation(line: 50, column: 8, scope: !1925)
!1933 = !{!"927"}
!1934 = !DILocation(line: 50, column: 33, scope: !1925)
!1935 = !{!"928"}
!1936 = !{!"929"}
!1937 = !{!"930"}
!1938 = !{!"931"}
!1939 = !{!"932"}
!1940 = !{!"933"}
!1941 = !DILocation(line: 50, column: 31, scope: !1925)
!1942 = !{!"934"}
!1943 = !DILocation(line: 50, column: 50, scope: !1925)
!1944 = !{!"935"}
!1945 = !DILocalVariable(name: "z", scope: !1925, file: !38, line: 48, type: !31)
!1946 = !DILocation(line: 0, scope: !1925)
!1947 = !{!"936"}
!1948 = !DILocation(line: 51, column: 11, scope: !1925)
!1949 = !{!"937"}
!1950 = !{!"938"}
!1951 = !DILocation(line: 52, column: 19, scope: !1925)
!1952 = !{!"939"}
!1953 = !DILocation(line: 52, column: 8, scope: !1925)
!1954 = !{!"940"}
!1955 = !DILocation(line: 52, column: 12, scope: !1925)
!1956 = !{!"941"}
!1957 = !DILocation(line: 52, column: 4, scope: !1925)
!1958 = !{!"942"}
!1959 = !DILocation(line: 52, column: 17, scope: !1925)
!1960 = !{!"943"}
!1961 = !DILocation(line: 53, column: 3, scope: !1925)
!1962 = !{!"944"}
!1963 = !DILocation(line: 47, column: 27, scope: !1920)
!1964 = !{!"945"}
!1965 = !{!"946"}
!1966 = !DILocation(line: 47, column: 3, scope: !1920)
!1967 = distinct !{!1967, !1922, !1968, !121}
!1968 = !DILocation(line: 53, column: 3, scope: !1912)
!1969 = !{!"947"}
!1970 = !DILocation(line: 54, column: 21, scope: !1899)
!1971 = !{!"948"}
!1972 = !DILocation(line: 54, column: 7, scope: !1899)
!1973 = !{!"949"}
!1974 = !DILocation(line: 54, column: 11, scope: !1899)
!1975 = !{!"950"}
!1976 = !DILocation(line: 54, column: 3, scope: !1899)
!1977 = !{!"951"}
!1978 = !DILocation(line: 54, column: 19, scope: !1899)
!1979 = !{!"952"}
!1980 = !DILocation(line: 55, column: 2, scope: !1899)
!1981 = !{!"953"}
!1982 = !DILocation(line: 36, column: 26, scope: !1894)
!1983 = !{!"954"}
!1984 = !{!"955"}
!1985 = !DILocation(line: 36, column: 2, scope: !1894)
!1986 = distinct !{!1986, !1896, !1987, !121}
!1987 = !DILocation(line: 55, column: 2, scope: !1888)
!1988 = !{!"956"}
!1989 = !DILocation(line: 56, column: 1, scope: !1841)
!1990 = !{!"957"}
!1991 = distinct !DISubprogram(name: "br_i32_muladd_small", scope: !40, file: !40, line: 29, type: !1992, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !2)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !336, !10, !337}
!1994 = !DILocalVariable(name: "x", arg: 1, scope: !1991, file: !40, line: 29, type: !336)
!1995 = !DILocation(line: 0, scope: !1991)
!1996 = !{!"958"}
!1997 = !DILocalVariable(name: "z", arg: 2, scope: !1991, file: !40, line: 29, type: !10)
!1998 = !{!"959"}
!1999 = !DILocalVariable(name: "m", arg: 3, scope: !1991, file: !40, line: 29, type: !337)
!2000 = !{!"960"}
!2001 = !DILocation(line: 41, column: 13, scope: !1991)
!2002 = !{!"961"}
!2003 = !{!"962"}
!2004 = !DILocalVariable(name: "m_bitlen", scope: !1991, file: !40, line: 31, type: !10)
!2005 = !{!"963"}
!2006 = !DILocation(line: 42, column: 15, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1991, file: !40, line: 42, column: 6)
!2008 = !{!"964"}
!2009 = !DILocation(line: 42, column: 6, scope: !1991)
!2010 = !{!"965"}
!2011 = !DILocation(line: 43, column: 3, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !40, line: 42, column: 21)
!2013 = !{!"966"}
!2014 = !DILocation(line: 45, column: 15, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1991, file: !40, line: 45, column: 6)
!2016 = !{!"967"}
!2017 = !DILocation(line: 45, column: 6, scope: !1991)
!2018 = !{!"968"}
!2019 = !DILocation(line: 46, column: 17, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2015, file: !40, line: 45, column: 22)
!2021 = !{!"969"}
!2022 = !{!"970"}
!2023 = !DILocation(line: 46, column: 26, scope: !2020)
!2024 = !{!"971"}
!2025 = !{!"972"}
!2026 = !DILocation(line: 46, column: 10, scope: !2020)
!2027 = !{!"973"}
!2028 = !DILocation(line: 46, column: 3, scope: !2020)
!2029 = !{!"974"}
!2030 = !DILocation(line: 46, column: 8, scope: !2020)
!2031 = !{!"975"}
!2032 = !DILocation(line: 47, column: 3, scope: !2020)
!2033 = !{!"976"}
!2034 = !DILocation(line: 49, column: 19, scope: !1991)
!2035 = !{!"977"}
!2036 = !DILocation(line: 49, column: 25, scope: !1991)
!2037 = !{!"978"}
!2038 = !DILocation(line: 49, column: 9, scope: !1991)
!2039 = !{!"979"}
!2040 = !DILocalVariable(name: "mlen", scope: !1991, file: !40, line: 32, type: !21)
!2041 = !{!"980"}
!2042 = !DILocation(line: 77, column: 31, scope: !1991)
!2043 = !{!"981"}
!2044 = !DILocation(line: 77, column: 7, scope: !1991)
!2045 = !{!"982"}
!2046 = !DILocalVariable(name: "a0", scope: !1991, file: !40, line: 33, type: !10)
!2047 = !{!"983"}
!2048 = !DILocation(line: 78, column: 7, scope: !1991)
!2049 = !{!"984"}
!2050 = !{!"985"}
!2051 = !DILocalVariable(name: "hi", scope: !1991, file: !40, line: 33, type: !10)
!2052 = !{!"986"}
!2053 = !DILocation(line: 79, column: 12, scope: !1991)
!2054 = !{!"987"}
!2055 = !DILocation(line: 79, column: 2, scope: !1991)
!2056 = !{!"988"}
!2057 = !DILocation(line: 79, column: 19, scope: !1991)
!2058 = !{!"989"}
!2059 = !{!"990"}
!2060 = !DILocation(line: 79, column: 30, scope: !1991)
!2061 = !{!"991"}
!2062 = !DILocation(line: 79, column: 35, scope: !1991)
!2063 = !{!"992"}
!2064 = !{!"993"}
!2065 = !DILocation(line: 80, column: 2, scope: !1991)
!2066 = !{!"994"}
!2067 = !DILocation(line: 80, column: 7, scope: !1991)
!2068 = !{!"995"}
!2069 = !DILocation(line: 81, column: 31, scope: !1991)
!2070 = !{!"996"}
!2071 = !DILocation(line: 81, column: 7, scope: !1991)
!2072 = !{!"997"}
!2073 = !DILocalVariable(name: "a1", scope: !1991, file: !40, line: 33, type: !10)
!2074 = !{!"998"}
!2075 = !DILocation(line: 82, column: 31, scope: !1991)
!2076 = !{!"999"}
!2077 = !DILocation(line: 82, column: 7, scope: !1991)
!2078 = !{!"1000"}
!2079 = !DILocalVariable(name: "b0", scope: !1991, file: !40, line: 33, type: !10)
!2080 = !{!"1001"}
!2081 = !DILocation(line: 94, column: 6, scope: !1991)
!2082 = !{!"1002"}
!2083 = !DILocalVariable(name: "g", scope: !1991, file: !40, line: 33, type: !10)
!2084 = !{!"1003"}
!2085 = !DILocation(line: 95, column: 10, scope: !1991)
!2086 = !{!"1004"}
!2087 = !DILocation(line: 95, column: 38, scope: !1991)
!2088 = !{!"1005"}
!2089 = !DILocation(line: 95, column: 53, scope: !1991)
!2090 = !{!"1006"}
!2091 = !DILocation(line: 95, column: 34, scope: !1991)
!2092 = !{!"1007"}
!2093 = !DILocation(line: 95, column: 6, scope: !1991)
!2094 = !{!"1008"}
!2095 = !DILocalVariable(name: "q", scope: !1991, file: !40, line: 33, type: !10)
!2096 = !{!"1009"}
!2097 = !DILocalVariable(name: "cc", scope: !1991, file: !40, line: 35, type: !31)
!2098 = !{!"1010"}
!2099 = !DILocalVariable(name: "tb", scope: !1991, file: !40, line: 33, type: !10)
!2100 = !{!"1011"}
!2101 = !DILocalVariable(name: "u", scope: !1991, file: !40, line: 32, type: !21)
!2102 = !{!"1012"}
!2103 = !DILocation(line: 108, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1991, file: !40, line: 108, column: 2)
!2105 = !{!"1013"}
!2106 = !DILocation(line: 0, scope: !2104)
!2107 = !{!"1014"}
!2108 = !{!"1015"}
!2109 = !{!"1016"}
!2110 = !{!"1017"}
!2111 = !{!"1018"}
!2112 = !{!"1019"}
!2113 = !DILocation(line: 108, column: 16, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2104, file: !40, line: 108, column: 2)
!2115 = !{!"1020"}
!2116 = !DILocation(line: 108, column: 2, scope: !2104)
!2117 = !{!"1021"}
!2118 = !DILocation(line: 112, column: 8, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2114, file: !40, line: 108, column: 31)
!2120 = !{!"1022"}
!2121 = !{!"1023"}
!2122 = !DILocalVariable(name: "mw", scope: !2119, file: !40, line: 109, type: !10)
!2123 = !DILocation(line: 0, scope: !2119)
!2124 = !{!"1024"}
!2125 = !DILocation(line: 113, column: 8, scope: !2119)
!2126 = !{!"1025"}
!2127 = !{!"1026"}
!2128 = !{!"1027"}
!2129 = !DILocation(line: 113, column: 19, scope: !2119)
!2130 = !{!"1028"}
!2131 = !DILocalVariable(name: "zl", scope: !2119, file: !40, line: 110, type: !31)
!2132 = !{!"1029"}
!2133 = !DILocation(line: 114, column: 22, scope: !2119)
!2134 = !{!"1030"}
!2135 = !DILocation(line: 114, column: 8, scope: !2119)
!2136 = !{!"1031"}
!2137 = !{!"1032"}
!2138 = !{!"1033"}
!2139 = !DILocation(line: 115, column: 8, scope: !2119)
!2140 = !{!"1034"}
!2141 = !DILocalVariable(name: "zw", scope: !2119, file: !40, line: 109, type: !10)
!2142 = !{!"1035"}
!2143 = !DILocation(line: 116, column: 8, scope: !2119)
!2144 = !{!"1036"}
!2145 = !{!"1037"}
!2146 = !DILocalVariable(name: "xw", scope: !2119, file: !40, line: 109, type: !10)
!2147 = !{!"1038"}
!2148 = !DILocation(line: 117, column: 12, scope: !2119)
!2149 = !{!"1039"}
!2150 = !DILocalVariable(name: "nxw", scope: !2119, file: !40, line: 109, type: !10)
!2151 = !{!"1040"}
!2152 = !DILocation(line: 118, column: 19, scope: !2119)
!2153 = !{!"1041"}
!2154 = !DILocation(line: 118, column: 9, scope: !2119)
!2155 = !{!"1042"}
!2156 = !DILocation(line: 118, column: 6, scope: !2119)
!2157 = !{!"1043"}
!2158 = !{!"1044"}
!2159 = !DILocation(line: 119, column: 3, scope: !2119)
!2160 = !{!"1045"}
!2161 = !DILocation(line: 119, column: 8, scope: !2119)
!2162 = !{!"1046"}
!2163 = !DILocation(line: 120, column: 12, scope: !2119)
!2164 = !{!"1047"}
!2165 = !DILocation(line: 120, column: 29, scope: !2119)
!2166 = !{!"1048"}
!2167 = !DILocation(line: 120, column: 8, scope: !2119)
!2168 = !{!"1049"}
!2169 = !{!"1050"}
!2170 = !DILocation(line: 121, column: 2, scope: !2119)
!2171 = !{!"1051"}
!2172 = !DILocation(line: 108, column: 27, scope: !2114)
!2173 = !{!"1052"}
!2174 = !{!"1053"}
!2175 = !DILocation(line: 108, column: 2, scope: !2114)
!2176 = distinct !{!2176, !2116, !2177, !121}
!2177 = !DILocation(line: 121, column: 2, scope: !2104)
!2178 = !{!"1054"}
!2179 = !DILocation(line: 132, column: 22, scope: !1991)
!2180 = !{!"1055"}
!2181 = !DILocation(line: 132, column: 8, scope: !1991)
!2182 = !{!"1056"}
!2183 = !DILocalVariable(name: "chf", scope: !1991, file: !40, line: 34, type: !10)
!2184 = !{!"1057"}
!2185 = !DILocation(line: 133, column: 9, scope: !1991)
!2186 = !{!"1058"}
!2187 = !DILocalVariable(name: "clow", scope: !1991, file: !40, line: 34, type: !10)
!2188 = !{!"1059"}
!2189 = !DILocation(line: 134, column: 15, scope: !1991)
!2190 = !{!"1060"}
!2191 = !DILocation(line: 134, column: 13, scope: !1991)
!2192 = !{!"1061"}
!2193 = !DILocalVariable(name: "over", scope: !1991, file: !40, line: 34, type: !10)
!2194 = !{!"1062"}
!2195 = !DILocation(line: 135, column: 10, scope: !1991)
!2196 = !{!"1063"}
!2197 = !DILocation(line: 135, column: 25, scope: !1991)
!2198 = !{!"1064"}
!2199 = !DILocation(line: 135, column: 32, scope: !1991)
!2200 = !{!"1065"}
!2201 = !DILocation(line: 135, column: 30, scope: !1991)
!2202 = !{!"1066"}
!2203 = !DILocation(line: 135, column: 22, scope: !1991)
!2204 = !{!"1067"}
!2205 = !DILocation(line: 135, column: 16, scope: !1991)
!2206 = !{!"1068"}
!2207 = !DILocalVariable(name: "under", scope: !1991, file: !40, line: 34, type: !10)
!2208 = !{!"1069"}
!2209 = !DILocation(line: 136, column: 2, scope: !1991)
!2210 = !{!"1070"}
!2211 = !DILocation(line: 137, column: 2, scope: !1991)
!2212 = !{!"1071"}
!2213 = !DILocation(line: 138, column: 1, scope: !1991)
!2214 = !{!"1072"}
!2215 = !{!"1073"}
!2216 = distinct !DISubprogram(name: "br_rem", scope: !126, file: !126, line: 1050, type: !127, scopeLine: 1051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!2217 = !{!"1074"}
!2218 = !DILocalVariable(name: "hi", arg: 1, scope: !2216, file: !126, line: 1050, type: !10)
!2219 = !DILocation(line: 0, scope: !2216)
!2220 = !{!"1075"}
!2221 = !DILocalVariable(name: "lo", arg: 2, scope: !2216, file: !126, line: 1050, type: !10)
!2222 = !{!"1076"}
!2223 = !DILocalVariable(name: "d", arg: 3, scope: !2216, file: !126, line: 1050, type: !10)
!2224 = !{!"1077"}
!2225 = !DILocalVariable(name: "r", scope: !2216, file: !126, line: 1052, type: !10)
!2226 = !DILocation(line: 1052, column: 11, scope: !2216)
!2227 = !{!"1078"}
!2228 = !DILocation(line: 1054, column: 2, scope: !2216)
!2229 = !{!"1079"}
!2230 = !DILocation(line: 1055, column: 9, scope: !2216)
!2231 = !{!"1080"}
!2232 = !DILocation(line: 1055, column: 2, scope: !2216)
!2233 = !{!"1081"}
!2234 = distinct !DISubprogram(name: "br_i32_word", scope: !126, file: !126, line: 1180, type: !2235, scopeLine: 1181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!10, !337, !10}
!2237 = !DILocalVariable(name: "a", arg: 1, scope: !2234, file: !126, line: 1180, type: !337)
!2238 = !DILocation(line: 0, scope: !2234)
!2239 = !{!"1082"}
!2240 = !DILocalVariable(name: "off", arg: 2, scope: !2234, file: !126, line: 1180, type: !10)
!2241 = !{!"1083"}
!2242 = !DILocation(line: 1185, column: 19, scope: !2234)
!2243 = !{!"1084"}
!2244 = !DILocation(line: 1185, column: 6, scope: !2234)
!2245 = !{!"1085"}
!2246 = !DILocation(line: 1185, column: 25, scope: !2234)
!2247 = !{!"1086"}
!2248 = !DILocalVariable(name: "u", scope: !2234, file: !126, line: 1182, type: !21)
!2249 = !{!"1087"}
!2250 = !DILocation(line: 1186, column: 20, scope: !2234)
!2251 = !{!"1088"}
!2252 = !DILocalVariable(name: "j", scope: !2234, file: !126, line: 1183, type: !14)
!2253 = !{!"1089"}
!2254 = !DILocation(line: 1187, column: 8, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2234, file: !126, line: 1187, column: 6)
!2256 = !{!"1090"}
!2257 = !DILocation(line: 1187, column: 6, scope: !2234)
!2258 = !{!"1091"}
!2259 = !DILocation(line: 1188, column: 10, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2255, file: !126, line: 1187, column: 14)
!2261 = !{!"1092"}
!2262 = !{!"1093"}
!2263 = !DILocation(line: 1188, column: 3, scope: !2260)
!2264 = !{!"1094"}
!2265 = !DILocation(line: 1190, column: 11, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2255, file: !126, line: 1189, column: 9)
!2267 = !{!"1095"}
!2268 = !{!"1096"}
!2269 = !DILocation(line: 1190, column: 16, scope: !2266)
!2270 = !{!"1097"}
!2271 = !DILocation(line: 1190, column: 29, scope: !2266)
!2272 = !{!"1098"}
!2273 = !DILocation(line: 1190, column: 25, scope: !2266)
!2274 = !{!"1099"}
!2275 = !{!"1100"}
!2276 = !DILocation(line: 1190, column: 41, scope: !2266)
!2277 = !{!"1101"}
!2278 = !DILocation(line: 1190, column: 34, scope: !2266)
!2279 = !{!"1102"}
!2280 = !DILocation(line: 1190, column: 22, scope: !2266)
!2281 = !{!"1103"}
!2282 = !DILocation(line: 1190, column: 3, scope: !2266)
!2283 = !{!"1104"}
!2284 = !DILocation(line: 0, scope: !2255)
!2285 = !{!"1105"}
!2286 = !DILocation(line: 1192, column: 1, scope: !2234)
!2287 = !{!"1106"}
!2288 = distinct !DISubprogram(name: "br_div", scope: !126, file: !126, line: 1063, type: !127, scopeLine: 1064, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!2289 = !{!"1107"}
!2290 = !DILocalVariable(name: "hi", arg: 1, scope: !2288, file: !126, line: 1063, type: !10)
!2291 = !DILocation(line: 0, scope: !2288)
!2292 = !{!"1108"}
!2293 = !DILocalVariable(name: "lo", arg: 2, scope: !2288, file: !126, line: 1063, type: !10)
!2294 = !{!"1109"}
!2295 = !DILocalVariable(name: "d", arg: 3, scope: !2288, file: !126, line: 1063, type: !10)
!2296 = !{!"1110"}
!2297 = !DILocalVariable(name: "r", scope: !2288, file: !126, line: 1065, type: !10)
!2298 = !DILocation(line: 1065, column: 11, scope: !2288)
!2299 = !{!"1111"}
!2300 = !DILocation(line: 1067, column: 9, scope: !2288)
!2301 = !{!"1112"}
!2302 = !DILocation(line: 1067, column: 2, scope: !2288)
!2303 = !{!"1113"}
!2304 = distinct !DISubprogram(name: "EQ", scope: !126, file: !126, line: 779, type: !419, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!2305 = !DILocalVariable(name: "x", arg: 1, scope: !2304, file: !126, line: 779, type: !10)
!2306 = !DILocation(line: 0, scope: !2304)
!2307 = !{!"1114"}
!2308 = !DILocalVariable(name: "y", arg: 2, scope: !2304, file: !126, line: 779, type: !10)
!2309 = !{!"1115"}
!2310 = !DILocation(line: 783, column: 8, scope: !2304)
!2311 = !{!"1116"}
!2312 = !DILocalVariable(name: "q", scope: !2304, file: !126, line: 781, type: !10)
!2313 = !{!"1117"}
!2314 = !DILocation(line: 784, column: 18, scope: !2304)
!2315 = !{!"1118"}
!2316 = !DILocation(line: 784, column: 16, scope: !2304)
!2317 = !{!"1119"}
!2318 = !DILocation(line: 784, column: 22, scope: !2304)
!2319 = !{!"1120"}
!2320 = !DILocation(line: 784, column: 9, scope: !2304)
!2321 = !{!"1121"}
!2322 = !DILocation(line: 784, column: 2, scope: !2304)
!2323 = !{!"1122"}
!2324 = distinct !DISubprogram(name: "MUX", scope: !126, file: !126, line: 770, type: !127, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!2325 = !DILocalVariable(name: "ctl", arg: 1, scope: !2324, file: !126, line: 770, type: !10)
!2326 = !DILocation(line: 0, scope: !2324)
!2327 = !{!"1123"}
!2328 = !DILocalVariable(name: "x", arg: 2, scope: !2324, file: !126, line: 770, type: !10)
!2329 = !{!"1124"}
!2330 = !DILocalVariable(name: "y", arg: 3, scope: !2324, file: !126, line: 770, type: !10)
!2331 = !{!"1125"}
!2332 = !DILocation(line: 772, column: 14, scope: !2324)
!2333 = !{!"1126"}
!2334 = !DILocation(line: 772, column: 24, scope: !2324)
!2335 = !{!"1127"}
!2336 = !DILocation(line: 772, column: 19, scope: !2324)
!2337 = !{!"1128"}
!2338 = !DILocation(line: 772, column: 11, scope: !2324)
!2339 = !{!"1129"}
!2340 = !DILocation(line: 772, column: 2, scope: !2324)
!2341 = !{!"1130"}
!2342 = distinct !DISubprogram(name: "GT", scope: !126, file: !126, line: 803, type: !419, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!2343 = !DILocalVariable(name: "x", arg: 1, scope: !2342, file: !126, line: 803, type: !10)
!2344 = !DILocation(line: 0, scope: !2342)
!2345 = !{!"1131"}
!2346 = !DILocalVariable(name: "y", arg: 2, scope: !2342, file: !126, line: 803, type: !10)
!2347 = !{!"1132"}
!2348 = !DILocation(line: 819, column: 8, scope: !2342)
!2349 = !{!"1133"}
!2350 = !DILocalVariable(name: "z", scope: !2342, file: !126, line: 817, type: !10)
!2351 = !{!"1134"}
!2352 = !DILocation(line: 820, column: 18, scope: !2342)
!2353 = !{!"1135"}
!2354 = !DILocation(line: 820, column: 28, scope: !2342)
!2355 = !{!"1136"}
!2356 = !DILocation(line: 820, column: 23, scope: !2342)
!2357 = !{!"1137"}
!2358 = !DILocation(line: 820, column: 12, scope: !2342)
!2359 = !{!"1138"}
!2360 = !DILocation(line: 820, column: 35, scope: !2342)
!2361 = !{!"1139"}
!2362 = !DILocation(line: 820, column: 2, scope: !2342)
!2363 = !{!"1140"}
!2364 = distinct !DISubprogram(name: "NOT", scope: !126, file: !126, line: 761, type: !481, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !2)
!2365 = !DILocalVariable(name: "ctl", arg: 1, scope: !2364, file: !126, line: 761, type: !10)
!2366 = !DILocation(line: 0, scope: !2364)
!2367 = !{!"1141"}
!2368 = !DILocation(line: 763, column: 13, scope: !2364)
!2369 = !{!"1142"}
!2370 = !DILocation(line: 763, column: 2, scope: !2364)
!2371 = !{!"1143"}
!2372 = distinct !DISubprogram(name: "br_i32_ninv32", scope: !43, file: !43, line: 29, type: !481, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !2)
!2373 = !DILocalVariable(name: "x", arg: 1, scope: !2372, file: !43, line: 29, type: !10)
!2374 = !DILocation(line: 0, scope: !2372)
!2375 = !{!"1144"}
!2376 = !DILocation(line: 33, column: 8, scope: !2372)
!2377 = !{!"1145"}
!2378 = !DILocalVariable(name: "y", scope: !2372, file: !43, line: 31, type: !10)
!2379 = !{!"1146"}
!2380 = !DILocation(line: 34, column: 13, scope: !2372)
!2381 = !{!"1147"}
!2382 = !DILocation(line: 34, column: 9, scope: !2372)
!2383 = !{!"1148"}
!2384 = !DILocation(line: 34, column: 4, scope: !2372)
!2385 = !{!"1149"}
!2386 = !{!"1150"}
!2387 = !DILocation(line: 35, column: 13, scope: !2372)
!2388 = !{!"1151"}
!2389 = !DILocation(line: 35, column: 9, scope: !2372)
!2390 = !{!"1152"}
!2391 = !DILocation(line: 35, column: 4, scope: !2372)
!2392 = !{!"1153"}
!2393 = !{!"1154"}
!2394 = !DILocation(line: 36, column: 13, scope: !2372)
!2395 = !{!"1155"}
!2396 = !DILocation(line: 36, column: 9, scope: !2372)
!2397 = !{!"1156"}
!2398 = !DILocation(line: 36, column: 4, scope: !2372)
!2399 = !{!"1157"}
!2400 = !{!"1158"}
!2401 = !DILocation(line: 37, column: 13, scope: !2372)
!2402 = !{!"1159"}
!2403 = !DILocation(line: 37, column: 9, scope: !2372)
!2404 = !{!"1160"}
!2405 = !DILocation(line: 37, column: 4, scope: !2372)
!2406 = !{!"1161"}
!2407 = !{!"1162"}
!2408 = !DILocation(line: 38, column: 15, scope: !2372)
!2409 = !{!"1163"}
!2410 = !DILocation(line: 38, column: 20, scope: !2372)
!2411 = !{!"1164"}
!2412 = !DILocation(line: 38, column: 9, scope: !2372)
!2413 = !{!"1165"}
!2414 = !DILocation(line: 38, column: 2, scope: !2372)
!2415 = !{!"1166"}
!2416 = distinct !DISubprogram(name: "MUX", scope: !126, file: !126, line: 770, type: !127, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !42, retainedNodes: !2)
!2417 = !DILocalVariable(name: "ctl", arg: 1, scope: !2416, file: !126, line: 770, type: !10)
!2418 = !DILocation(line: 0, scope: !2416)
!2419 = !{!"1167"}
!2420 = !DILocalVariable(name: "x", arg: 2, scope: !2416, file: !126, line: 770, type: !10)
!2421 = !{!"1168"}
!2422 = !DILocalVariable(name: "y", arg: 3, scope: !2416, file: !126, line: 770, type: !10)
!2423 = !{!"1169"}
!2424 = !DILocation(line: 772, column: 14, scope: !2416)
!2425 = !{!"1170"}
!2426 = !DILocation(line: 772, column: 24, scope: !2416)
!2427 = !{!"1171"}
!2428 = !DILocation(line: 772, column: 19, scope: !2416)
!2429 = !{!"1172"}
!2430 = !DILocation(line: 772, column: 11, scope: !2416)
!2431 = !{!"1173"}
!2432 = !DILocation(line: 772, column: 2, scope: !2416)
!2433 = !{!"1174"}
!2434 = distinct !DISubprogram(name: "br_i32_reduce", scope: !45, file: !45, line: 29, type: !1842, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !2)
!2435 = !DILocalVariable(name: "x", arg: 1, scope: !2434, file: !45, line: 29, type: !336)
!2436 = !DILocation(line: 0, scope: !2434)
!2437 = !{!"1175"}
!2438 = !DILocalVariable(name: "a", arg: 2, scope: !2434, file: !45, line: 29, type: !337)
!2439 = !{!"1176"}
!2440 = !DILocalVariable(name: "m", arg: 3, scope: !2434, file: !45, line: 29, type: !337)
!2441 = !{!"1177"}
!2442 = !DILocation(line: 34, column: 13, scope: !2434)
!2443 = !{!"1178"}
!2444 = !{!"1179"}
!2445 = !DILocalVariable(name: "m_bitlen", scope: !2434, file: !45, line: 31, type: !10)
!2446 = !{!"1180"}
!2447 = !DILocation(line: 35, column: 19, scope: !2434)
!2448 = !{!"1181"}
!2449 = !DILocation(line: 35, column: 25, scope: !2434)
!2450 = !{!"1182"}
!2451 = !DILocation(line: 35, column: 9, scope: !2434)
!2452 = !{!"1183"}
!2453 = !DILocalVariable(name: "mlen", scope: !2434, file: !45, line: 32, type: !21)
!2454 = !{!"1184"}
!2455 = !DILocation(line: 37, column: 2, scope: !2434)
!2456 = !{!"1185"}
!2457 = !DILocation(line: 37, column: 7, scope: !2434)
!2458 = !{!"1186"}
!2459 = !DILocation(line: 38, column: 15, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2434, file: !45, line: 38, column: 6)
!2461 = !{!"1187"}
!2462 = !DILocation(line: 38, column: 6, scope: !2434)
!2463 = !{!"1188"}
!2464 = !DILocation(line: 39, column: 3, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2460, file: !45, line: 38, column: 21)
!2466 = !{!"1189"}
!2467 = !DILocation(line: 46, column: 13, scope: !2434)
!2468 = !{!"1190"}
!2469 = !{!"1191"}
!2470 = !DILocalVariable(name: "a_bitlen", scope: !2434, file: !45, line: 31, type: !10)
!2471 = !{!"1192"}
!2472 = !DILocation(line: 47, column: 19, scope: !2434)
!2473 = !{!"1193"}
!2474 = !DILocation(line: 47, column: 25, scope: !2434)
!2475 = !{!"1194"}
!2476 = !DILocation(line: 47, column: 9, scope: !2434)
!2477 = !{!"1195"}
!2478 = !DILocalVariable(name: "alen", scope: !2434, file: !45, line: 32, type: !21)
!2479 = !{!"1196"}
!2480 = !DILocation(line: 48, column: 15, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2434, file: !45, line: 48, column: 6)
!2482 = !{!"1197"}
!2483 = !DILocation(line: 48, column: 6, scope: !2434)
!2484 = !{!"1198"}
!2485 = !DILocation(line: 49, column: 12, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !45, line: 48, column: 27)
!2487 = !{!"1199"}
!2488 = !DILocation(line: 49, column: 3, scope: !2486)
!2489 = !{!"1200"}
!2490 = !DILocation(line: 49, column: 19, scope: !2486)
!2491 = !{!"1201"}
!2492 = !{!"1202"}
!2493 = !DILocation(line: 49, column: 29, scope: !2486)
!2494 = !{!"1203"}
!2495 = !{!"1204"}
!2496 = !DILocalVariable(name: "u", scope: !2434, file: !45, line: 32, type: !21)
!2497 = !{!"1205"}
!2498 = !DILocation(line: 50, column: 8, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2486, file: !45, line: 50, column: 3)
!2500 = !{!"1206"}
!2501 = !DILocation(line: 0, scope: !2499)
!2502 = !{!"1207"}
!2503 = !{!"1208"}
!2504 = !DILocation(line: 50, column: 20, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2499, file: !45, line: 50, column: 3)
!2506 = !{!"1209"}
!2507 = !DILocation(line: 50, column: 3, scope: !2499)
!2508 = !{!"1210"}
!2509 = !DILocation(line: 51, column: 8, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2505, file: !45, line: 50, column: 34)
!2511 = !{!"1211"}
!2512 = !DILocation(line: 51, column: 4, scope: !2510)
!2513 = !{!"1212"}
!2514 = !DILocation(line: 51, column: 13, scope: !2510)
!2515 = !{!"1213"}
!2516 = !DILocation(line: 52, column: 3, scope: !2510)
!2517 = !{!"1214"}
!2518 = !DILocation(line: 50, column: 30, scope: !2505)
!2519 = !{!"1215"}
!2520 = !{!"1216"}
!2521 = !DILocation(line: 50, column: 3, scope: !2505)
!2522 = distinct !{!2522, !2507, !2523, !121}
!2523 = !DILocation(line: 52, column: 3, scope: !2499)
!2524 = !{!"1217"}
!2525 = !DILocation(line: 53, column: 3, scope: !2486)
!2526 = !{!"1218"}
!2527 = !DILocation(line: 61, column: 11, scope: !2434)
!2528 = !{!"1219"}
!2529 = !DILocation(line: 61, column: 2, scope: !2434)
!2530 = !{!"1220"}
!2531 = !DILocation(line: 61, column: 18, scope: !2434)
!2532 = !{!"1221"}
!2533 = !DILocation(line: 61, column: 30, scope: !2434)
!2534 = !{!"1222"}
!2535 = !DILocation(line: 61, column: 22, scope: !2434)
!2536 = !{!"1223"}
!2537 = !{!"1224"}
!2538 = !DILocation(line: 61, column: 45, scope: !2434)
!2539 = !{!"1225"}
!2540 = !DILocation(line: 61, column: 50, scope: !2434)
!2541 = !{!"1226"}
!2542 = !{!"1227"}
!2543 = !{!"0110"}
!2544 = !DILocation(line: 62, column: 2, scope: !2434)
!2545 = !{!"1228"}
!2546 = !DILocation(line: 62, column: 10, scope: !2434)
!2547 = !{!"1229"}
!2548 = !DILocation(line: 63, column: 13, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2434, file: !45, line: 63, column: 2)
!2550 = !{!"1230"}
!2551 = !DILocation(line: 63, column: 20, scope: !2549)
!2552 = !{!"1231"}
!2553 = !{!"1232"}
!2554 = !DILocation(line: 63, column: 7, scope: !2549)
!2555 = !{!"1233"}
!2556 = !DILocation(line: 0, scope: !2549)
!2557 = !{!"1234"}
!2558 = !{!"1235"}
!2559 = !DILocation(line: 63, column: 30, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2549, file: !45, line: 63, column: 2)
!2561 = !{!"1236"}
!2562 = !DILocation(line: 63, column: 2, scope: !2549)
!2563 = !{!"1237"}
!2564 = !DILocation(line: 64, column: 26, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2560, file: !45, line: 63, column: 41)
!2566 = !{!"1238"}
!2567 = !{!"1239"}
!2568 = !DILocation(line: 64, column: 3, scope: !2565)
!2569 = !{!"1240"}
!2570 = !DILocation(line: 65, column: 2, scope: !2565)
!2571 = !{!"1241"}
!2572 = !DILocation(line: 63, column: 37, scope: !2560)
!2573 = !{!"1242"}
!2574 = !{!"1243"}
!2575 = !DILocation(line: 63, column: 2, scope: !2560)
!2576 = distinct !{!2576, !2562, !2577, !121}
!2577 = !DILocation(line: 65, column: 2, scope: !2549)
!2578 = !{!"1244"}
!2579 = !DILocation(line: 66, column: 1, scope: !2434)
!2580 = !{!"1245"}
!2581 = distinct !DISubprogram(name: "br_i32_sub", scope: !47, file: !47, line: 29, type: !334, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !2)
!2582 = !DILocalVariable(name: "a", arg: 1, scope: !2581, file: !47, line: 29, type: !336)
!2583 = !DILocation(line: 0, scope: !2581)
!2584 = !{!"1246"}
!2585 = !DILocalVariable(name: "b", arg: 2, scope: !2581, file: !47, line: 29, type: !337)
!2586 = !{!"1247"}
!2587 = !DILocalVariable(name: "ctl", arg: 3, scope: !2581, file: !47, line: 29, type: !10)
!2588 = !{!"1248"}
!2589 = !DILocalVariable(name: "cc", scope: !2581, file: !47, line: 31, type: !10)
!2590 = !{!"1249"}
!2591 = !DILocation(line: 35, column: 7, scope: !2581)
!2592 = !{!"1250"}
!2593 = !{!"1251"}
!2594 = !DILocation(line: 35, column: 12, scope: !2581)
!2595 = !{!"1252"}
!2596 = !DILocation(line: 35, column: 18, scope: !2581)
!2597 = !{!"1253"}
!2598 = !DILocation(line: 35, column: 6, scope: !2581)
!2599 = !{!"1254"}
!2600 = !DILocalVariable(name: "m", scope: !2581, file: !47, line: 32, type: !21)
!2601 = !{!"1255"}
!2602 = !DILocalVariable(name: "u", scope: !2581, file: !47, line: 32, type: !21)
!2603 = !{!"1256"}
!2604 = !DILocation(line: 36, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2581, file: !47, line: 36, column: 2)
!2606 = !{!"1257"}
!2607 = !{!"1258"}
!2608 = !DILocation(line: 0, scope: !2605)
!2609 = !{!"1259"}
!2610 = !{!"1260"}
!2611 = !{!"1261"}
!2612 = !DILocation(line: 36, column: 16, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2605, file: !47, line: 36, column: 2)
!2614 = !{!"1262"}
!2615 = !DILocation(line: 36, column: 2, scope: !2605)
!2616 = !{!"1263"}
!2617 = !DILocation(line: 39, column: 8, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2613, file: !47, line: 36, column: 27)
!2619 = !{!"1264"}
!2620 = !{!"1265"}
!2621 = !DILocalVariable(name: "aw", scope: !2618, file: !47, line: 37, type: !10)
!2622 = !DILocation(line: 0, scope: !2618)
!2623 = !{!"1266"}
!2624 = !DILocation(line: 40, column: 8, scope: !2618)
!2625 = !{!"1267"}
!2626 = !{!"1268"}
!2627 = !DILocalVariable(name: "bw", scope: !2618, file: !47, line: 37, type: !10)
!2628 = !{!"1269"}
!2629 = !DILocation(line: 41, column: 12, scope: !2618)
!2630 = !{!"1270"}
!2631 = !DILocation(line: 41, column: 17, scope: !2618)
!2632 = !{!"1271"}
!2633 = !DILocalVariable(name: "naw", scope: !2618, file: !47, line: 37, type: !10)
!2634 = !{!"1272"}
!2635 = !DILocation(line: 47, column: 14, scope: !2618)
!2636 = !{!"1273"}
!2637 = !DILocation(line: 47, column: 12, scope: !2618)
!2638 = !{!"1274"}
!2639 = !DILocation(line: 47, column: 29, scope: !2618)
!2640 = !{!"1275"}
!2641 = !DILocation(line: 47, column: 27, scope: !2618)
!2642 = !{!"1276"}
!2643 = !{!"1277"}
!2644 = !DILocation(line: 48, column: 10, scope: !2618)
!2645 = !{!"1278"}
!2646 = !DILocation(line: 48, column: 3, scope: !2618)
!2647 = !{!"1279"}
!2648 = !DILocation(line: 48, column: 8, scope: !2618)
!2649 = !{!"1280"}
!2650 = !DILocation(line: 49, column: 2, scope: !2618)
!2651 = !{!"1281"}
!2652 = !DILocation(line: 36, column: 23, scope: !2613)
!2653 = !{!"1282"}
!2654 = !{!"1283"}
!2655 = !DILocation(line: 36, column: 2, scope: !2613)
!2656 = distinct !{!2656, !2615, !2657, !121}
!2657 = !DILocation(line: 49, column: 2, scope: !2605)
!2658 = !{!"1284"}
!2659 = !DILocation(line: 50, column: 2, scope: !2581)
!2660 = !{!"1285"}
!2661 = distinct !DISubprogram(name: "EQ", scope: !126, file: !126, line: 779, type: !419, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !46, retainedNodes: !2)
!2662 = !DILocalVariable(name: "x", arg: 1, scope: !2661, file: !126, line: 779, type: !10)
!2663 = !DILocation(line: 0, scope: !2661)
!2664 = !{!"1286"}
!2665 = !DILocalVariable(name: "y", arg: 2, scope: !2661, file: !126, line: 779, type: !10)
!2666 = !{!"1287"}
!2667 = !DILocation(line: 783, column: 8, scope: !2661)
!2668 = !{!"1288"}
!2669 = !DILocalVariable(name: "q", scope: !2661, file: !126, line: 781, type: !10)
!2670 = !{!"1289"}
!2671 = !DILocation(line: 784, column: 18, scope: !2661)
!2672 = !{!"1290"}
!2673 = !DILocation(line: 784, column: 16, scope: !2661)
!2674 = !{!"1291"}
!2675 = !DILocation(line: 784, column: 22, scope: !2661)
!2676 = !{!"1292"}
!2677 = !DILocation(line: 784, column: 9, scope: !2661)
!2678 = !{!"1293"}
!2679 = !DILocation(line: 784, column: 2, scope: !2661)
!2680 = !{!"1294"}
!2681 = distinct !DISubprogram(name: "GT", scope: !126, file: !126, line: 803, type: !419, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !46, retainedNodes: !2)
!2682 = !DILocalVariable(name: "x", arg: 1, scope: !2681, file: !126, line: 803, type: !10)
!2683 = !DILocation(line: 0, scope: !2681)
!2684 = !{!"1295"}
!2685 = !DILocalVariable(name: "y", arg: 2, scope: !2681, file: !126, line: 803, type: !10)
!2686 = !{!"1296"}
!2687 = !DILocation(line: 819, column: 8, scope: !2681)
!2688 = !{!"1297"}
!2689 = !DILocalVariable(name: "z", scope: !2681, file: !126, line: 817, type: !10)
!2690 = !{!"1298"}
!2691 = !DILocation(line: 820, column: 18, scope: !2681)
!2692 = !{!"1299"}
!2693 = !DILocation(line: 820, column: 28, scope: !2681)
!2694 = !{!"1300"}
!2695 = !DILocation(line: 820, column: 23, scope: !2681)
!2696 = !{!"1301"}
!2697 = !DILocation(line: 820, column: 12, scope: !2681)
!2698 = !{!"1302"}
!2699 = !DILocation(line: 820, column: 35, scope: !2681)
!2700 = !{!"1303"}
!2701 = !DILocation(line: 820, column: 2, scope: !2681)
!2702 = !{!"1304"}
!2703 = distinct !DISubprogram(name: "MUX", scope: !126, file: !126, line: 770, type: !127, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !46, retainedNodes: !2)
!2704 = !DILocalVariable(name: "ctl", arg: 1, scope: !2703, file: !126, line: 770, type: !10)
!2705 = !DILocation(line: 0, scope: !2703)
!2706 = !{!"1305"}
!2707 = !DILocalVariable(name: "x", arg: 2, scope: !2703, file: !126, line: 770, type: !10)
!2708 = !{!"1306"}
!2709 = !DILocalVariable(name: "y", arg: 3, scope: !2703, file: !126, line: 770, type: !10)
!2710 = !{!"1307"}
!2711 = !DILocation(line: 772, column: 14, scope: !2703)
!2712 = !{!"1308"}
!2713 = !DILocation(line: 772, column: 24, scope: !2703)
!2714 = !{!"1309"}
!2715 = !DILocation(line: 772, column: 19, scope: !2703)
!2716 = !{!"1310"}
!2717 = !DILocation(line: 772, column: 11, scope: !2703)
!2718 = !{!"1311"}
!2719 = !DILocation(line: 772, column: 2, scope: !2703)
!2720 = !{!"1312"}
!2721 = distinct !DISubprogram(name: "NOT", scope: !126, file: !126, line: 761, type: !481, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !46, retainedNodes: !2)
!2722 = !DILocalVariable(name: "ctl", arg: 1, scope: !2721, file: !126, line: 761, type: !10)
!2723 = !DILocation(line: 0, scope: !2721)
!2724 = !{!"1313"}
!2725 = !DILocation(line: 763, column: 13, scope: !2721)
!2726 = !{!"1314"}
!2727 = !DILocation(line: 763, column: 2, scope: !2721)
!2728 = !{!"1315"}
!2729 = distinct !DISubprogram(name: "br_i32_to_monty", scope: !49, file: !49, line: 29, type: !2730, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !2)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !336, !337}
!2732 = !DILocalVariable(name: "x", arg: 1, scope: !2729, file: !49, line: 29, type: !336)
!2733 = !DILocation(line: 0, scope: !2729)
!2734 = !{!"1316"}
!2735 = !DILocalVariable(name: "m", arg: 2, scope: !2729, file: !49, line: 29, type: !337)
!2736 = !{!"1317"}
!2737 = !DILocation(line: 33, column: 12, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2729, file: !49, line: 33, column: 2)
!2739 = !{!"1318"}
!2740 = !{!"1319"}
!2741 = !DILocation(line: 33, column: 17, scope: !2738)
!2742 = !{!"1320"}
!2743 = !DILocation(line: 33, column: 23, scope: !2738)
!2744 = !{!"1321"}
!2745 = !DILocalVariable(name: "k", scope: !2729, file: !49, line: 31, type: !10)
!2746 = !{!"1322"}
!2747 = !DILocation(line: 33, column: 7, scope: !2738)
!2748 = !{!"1323"}
!2749 = !DILocation(line: 0, scope: !2738)
!2750 = !{!"1324"}
!2751 = !{!"1325"}
!2752 = !DILocation(line: 33, column: 31, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2738, file: !49, line: 33, column: 2)
!2754 = !{!"1326"}
!2755 = !DILocation(line: 33, column: 2, scope: !2738)
!2756 = !{!"1327"}
!2757 = !DILocation(line: 34, column: 3, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2753, file: !49, line: 33, column: 42)
!2759 = !{!"1328"}
!2760 = !DILocation(line: 35, column: 2, scope: !2758)
!2761 = !{!"1329"}
!2762 = !DILocation(line: 33, column: 38, scope: !2753)
!2763 = !{!"1330"}
!2764 = !{!"1331"}
!2765 = !DILocation(line: 33, column: 2, scope: !2753)
!2766 = distinct !{!2766, !2755, !2767, !121}
!2767 = !DILocation(line: 35, column: 2, scope: !2738)
!2768 = !{!"1332"}
!2769 = !DILocation(line: 36, column: 1, scope: !2729)
!2770 = !{!"1333"}
!2771 = distinct !DISubprogram(name: "br_rsa_i32_private", scope: !51, file: !51, line: 31, type: !2772, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !2)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!10, !53, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2776)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !152, line: 205, baseType: !2777)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 182, size: 704, elements: !2778)
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !2777, file: !152, line: 184, baseType: !10, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2777, file: !152, line: 186, baseType: !53, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !2777, file: !152, line: 188, baseType: !21, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2777, file: !152, line: 190, baseType: !53, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !2777, file: !152, line: 192, baseType: !21, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !2777, file: !152, line: 194, baseType: !53, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !2777, file: !152, line: 196, baseType: !21, size: 64, offset: 384)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !2777, file: !152, line: 198, baseType: !53, size: 64, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !2777, file: !152, line: 200, baseType: !21, size: 64, offset: 512)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !2777, file: !152, line: 202, baseType: !53, size: 64, offset: 576)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !2777, file: !152, line: 204, baseType: !21, size: 64, offset: 640)
!2790 = !{!"1334"}
!2791 = !DILocalVariable(name: "x", arg: 1, scope: !2771, file: !51, line: 31, type: !53)
!2792 = !DILocation(line: 0, scope: !2771)
!2793 = !{!"1335"}
!2794 = !DILocalVariable(name: "sk", arg: 2, scope: !2771, file: !51, line: 31, type: !2774)
!2795 = !{!"1336"}
!2796 = !DILocalVariable(name: "tmp", scope: !2771, file: !51, line: 35, type: !2797)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 12672, elements: !2798)
!2798 = !{!2799}
!2799 = !DISubrange(count: 396)
!2800 = !DILocation(line: 35, column: 11, scope: !2771)
!2801 = !{!"1337"}
!2802 = !DILocation(line: 49, column: 7, scope: !2771)
!2803 = !{!"1338"}
!2804 = !DILocalVariable(name: "mq", scope: !2771, file: !51, line: 36, type: !336)
!2805 = !{!"1339"}
!2806 = !DILocation(line: 50, column: 7, scope: !2771)
!2807 = !{!"1340"}
!2808 = !DILocation(line: 50, column: 11, scope: !2771)
!2809 = !{!"1341"}
!2810 = !DILocalVariable(name: "mp", scope: !2771, file: !51, line: 36, type: !336)
!2811 = !{!"1342"}
!2812 = !DILocation(line: 51, column: 7, scope: !2771)
!2813 = !{!"1343"}
!2814 = !DILocation(line: 51, column: 11, scope: !2771)
!2815 = !{!"1344"}
!2816 = !DILocalVariable(name: "t2", scope: !2771, file: !51, line: 36, type: !336)
!2817 = !{!"1345"}
!2818 = !DILocation(line: 52, column: 7, scope: !2771)
!2819 = !{!"1346"}
!2820 = !DILocation(line: 52, column: 11, scope: !2771)
!2821 = !{!"1347"}
!2822 = !DILocalVariable(name: "s2", scope: !2771, file: !51, line: 36, type: !336)
!2823 = !{!"1348"}
!2824 = !DILocation(line: 53, column: 7, scope: !2771)
!2825 = !{!"1349"}
!2826 = !DILocation(line: 53, column: 11, scope: !2771)
!2827 = !{!"1350"}
!2828 = !DILocalVariable(name: "s1", scope: !2771, file: !51, line: 36, type: !336)
!2829 = !{!"1351"}
!2830 = !DILocation(line: 54, column: 7, scope: !2771)
!2831 = !{!"1352"}
!2832 = !DILocation(line: 54, column: 11, scope: !2771)
!2833 = !{!"1353"}
!2834 = !DILocalVariable(name: "t1", scope: !2771, file: !51, line: 36, type: !336)
!2835 = !{!"1354"}
!2836 = !DILocalVariable(name: "t3", scope: !2771, file: !51, line: 36, type: !336)
!2837 = !{!"1355"}
!2838 = !DILocation(line: 61, column: 10, scope: !2771)
!2839 = !{!"1356"}
!2840 = !{!"1357"}
!2841 = !DILocalVariable(name: "p", scope: !2771, file: !51, line: 33, type: !76)
!2842 = !{!"1358"}
!2843 = !DILocation(line: 62, column: 13, scope: !2771)
!2844 = !{!"1359"}
!2845 = !{!"1360"}
!2846 = !DILocalVariable(name: "plen", scope: !2771, file: !51, line: 34, type: !21)
!2847 = !{!"1361"}
!2848 = !DILocation(line: 63, column: 2, scope: !2771)
!2849 = !{!"1362"}
!2850 = !{!"1363"}
!2851 = !{!"1364"}
!2852 = !{!"1365"}
!2853 = !{!"1366"}
!2854 = !DILocation(line: 63, column: 14, scope: !2771)
!2855 = !{!"1367"}
!2856 = !DILocation(line: 63, column: 18, scope: !2771)
!2857 = !{!"1368"}
!2858 = !DILocation(line: 63, column: 21, scope: !2771)
!2859 = !{!"1369"}
!2860 = !{!"1370"}
!2861 = !DILocation(line: 63, column: 24, scope: !2771)
!2862 = !{!"1371"}
!2863 = !{!"1372"}
!2864 = !{!"1373"}
!2865 = !{!"1374"}
!2866 = !DILocation(line: 64, column: 5, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2771, file: !51, line: 63, column: 30)
!2868 = !{!"1375"}
!2869 = !{!"1376"}
!2870 = !DILocation(line: 65, column: 8, scope: !2867)
!2871 = !{!"1377"}
!2872 = !{!"1378"}
!2873 = distinct !{!2873, !2848, !2874, !121}
!2874 = !DILocation(line: 66, column: 2, scope: !2771)
!2875 = !{!"1379"}
!2876 = !DILocation(line: 67, column: 10, scope: !2771)
!2877 = !{!"1380"}
!2878 = !{!"1381"}
!2879 = !DILocalVariable(name: "q", scope: !2771, file: !51, line: 33, type: !76)
!2880 = !{!"1382"}
!2881 = !DILocation(line: 68, column: 13, scope: !2771)
!2882 = !{!"1383"}
!2883 = !{!"1384"}
!2884 = !DILocalVariable(name: "qlen", scope: !2771, file: !51, line: 34, type: !21)
!2885 = !{!"1385"}
!2886 = !DILocation(line: 69, column: 2, scope: !2771)
!2887 = !{!"1386"}
!2888 = !{!"1387"}
!2889 = !{!"1388"}
!2890 = !{!"1389"}
!2891 = !{!"1390"}
!2892 = !DILocation(line: 69, column: 14, scope: !2771)
!2893 = !{!"1391"}
!2894 = !DILocation(line: 69, column: 18, scope: !2771)
!2895 = !{!"1392"}
!2896 = !DILocation(line: 69, column: 21, scope: !2771)
!2897 = !{!"1393"}
!2898 = !{!"1394"}
!2899 = !DILocation(line: 69, column: 24, scope: !2771)
!2900 = !{!"1395"}
!2901 = !{!"1396"}
!2902 = !{!"1397"}
!2903 = !{!"1398"}
!2904 = !DILocation(line: 70, column: 5, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2771, file: !51, line: 69, column: 30)
!2906 = !{!"1399"}
!2907 = !{!"1400"}
!2908 = !DILocation(line: 71, column: 8, scope: !2905)
!2909 = !{!"1401"}
!2910 = !{!"1402"}
!2911 = distinct !{!2911, !2886, !2912, !121}
!2912 = !DILocation(line: 72, column: 2, scope: !2771)
!2913 = !{!"1403"}
!2914 = !DILocation(line: 73, column: 11, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2771, file: !51, line: 73, column: 6)
!2916 = !{!"1404"}
!2917 = !DILocation(line: 74, column: 3, scope: !2915)
!2918 = !{!"1405"}
!2919 = !DILocation(line: 74, column: 11, scope: !2915)
!2920 = !{!"1406"}
!2921 = !DILocation(line: 73, column: 6, scope: !2771)
!2922 = !{!"1407"}
!2923 = !DILocation(line: 76, column: 3, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2915, file: !51, line: 75, column: 2)
!2925 = !{!"1408"}
!2926 = !DILocation(line: 82, column: 2, scope: !2771)
!2927 = !{!"1409"}
!2928 = !DILocation(line: 83, column: 18, scope: !2771)
!2929 = !{!"1410"}
!2930 = !{!"1411"}
!2931 = !DILocation(line: 83, column: 2, scope: !2771)
!2932 = !{!"1412"}
!2933 = !DILocation(line: 84, column: 2, scope: !2771)
!2934 = !{!"1413"}
!2935 = !DILocation(line: 90, column: 2, scope: !2771)
!2936 = !{!"1414"}
!2937 = !DILocation(line: 91, column: 14, scope: !2771)
!2938 = !{!"1415"}
!2939 = !{!"1416"}
!2940 = !DILocation(line: 91, column: 23, scope: !2771)
!2941 = !{!"1417"}
!2942 = !DILocation(line: 91, column: 28, scope: !2771)
!2943 = !{!"1418"}
!2944 = !DILocation(line: 91, column: 9, scope: !2771)
!2945 = !{!"1419"}
!2946 = !DILocalVariable(name: "xlen", scope: !2771, file: !51, line: 38, type: !21)
!2947 = !{!"1420"}
!2948 = !DILocation(line: 92, column: 19, scope: !2771)
!2949 = !{!"1421"}
!2950 = !DILocation(line: 92, column: 16, scope: !2771)
!2951 = !{!"1422"}
!2952 = !DILocation(line: 92, column: 2, scope: !2771)
!2953 = !{!"1423"}
!2954 = !DILocalVariable(name: "u", scope: !2771, file: !51, line: 38, type: !21)
!2955 = !{!"1424"}
!2956 = !DILocalVariable(name: "r", scope: !2771, file: !51, line: 39, type: !10)
!2957 = !{!"1425"}
!2958 = !DILocation(line: 95, column: 2, scope: !2771)
!2959 = !{!"1426"}
!2960 = !{!"1427"}
!2961 = !{!"1428"}
!2962 = !{!"1429"}
!2963 = !{!"1430"}
!2964 = !DILocation(line: 95, column: 11, scope: !2771)
!2965 = !{!"1431"}
!2966 = !{!"1432"}
!2967 = !DILocation(line: 98, column: 5, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2771, file: !51, line: 95, column: 16)
!2969 = !{!"1433"}
!2970 = !{!"1434"}
!2971 = !DILocation(line: 99, column: 30, scope: !2968)
!2972 = !{!"1435"}
!2973 = !DILocation(line: 99, column: 8, scope: !2968)
!2974 = !{!"1436"}
!2975 = !{!"1437"}
!2976 = !{!"1438"}
!2977 = !{!"1439"}
!2978 = !DILocalVariable(name: "wn", scope: !2968, file: !51, line: 96, type: !10)
!2979 = !DILocation(line: 0, scope: !2968)
!2980 = !{!"1440"}
!2981 = !DILocation(line: 100, column: 8, scope: !2968)
!2982 = !{!"1441"}
!2983 = !{!"1442"}
!2984 = !{!"1443"}
!2985 = !DILocalVariable(name: "wx", scope: !2968, file: !51, line: 96, type: !10)
!2986 = !{!"1444"}
!2987 = !DILocation(line: 101, column: 18, scope: !2968)
!2988 = !{!"1445"}
!2989 = !DILocation(line: 101, column: 12, scope: !2968)
!2990 = !{!"1446"}
!2991 = !DILocation(line: 101, column: 24, scope: !2968)
!2992 = !{!"1447"}
!2993 = !DILocation(line: 101, column: 30, scope: !2968)
!2994 = !{!"1448"}
!2995 = !{!"1449"}
!2996 = distinct !{!2996, !2958, !2997, !121}
!2997 = !DILocation(line: 102, column: 2, scope: !2771)
!2998 = !{!"1450"}
!2999 = !DILocation(line: 107, column: 22, scope: !2771)
!3000 = !{!"1451"}
!3001 = !{!"1452"}
!3002 = !DILocation(line: 107, column: 8, scope: !2771)
!3003 = !{!"1453"}
!3004 = !DILocalVariable(name: "p0i", scope: !2771, file: !51, line: 37, type: !10)
!3005 = !{!"1454"}
!3006 = !DILocation(line: 108, column: 2, scope: !2771)
!3007 = !{!"1455"}
!3008 = !DILocation(line: 109, column: 24, scope: !2771)
!3009 = !{!"1456"}
!3010 = !{!"1457"}
!3011 = !DILocation(line: 109, column: 32, scope: !2771)
!3012 = !{!"1458"}
!3013 = !{!"1459"}
!3014 = !DILocation(line: 109, column: 2, scope: !2771)
!3015 = !{!"1460"}
!3016 = !DILocation(line: 114, column: 22, scope: !2771)
!3017 = !{!"1461"}
!3018 = !{!"1462"}
!3019 = !DILocation(line: 114, column: 8, scope: !2771)
!3020 = !{!"1463"}
!3021 = !DILocalVariable(name: "q0i", scope: !2771, file: !51, line: 37, type: !10)
!3022 = !{!"1464"}
!3023 = !DILocation(line: 115, column: 2, scope: !2771)
!3024 = !{!"1465"}
!3025 = !DILocation(line: 116, column: 24, scope: !2771)
!3026 = !{!"1466"}
!3027 = !{!"1467"}
!3028 = !DILocation(line: 116, column: 32, scope: !2771)
!3029 = !{!"1468"}
!3030 = !{!"1469"}
!3031 = !DILocation(line: 116, column: 2, scope: !2771)
!3032 = !{!"1470"}
!3033 = !DILocation(line: 131, column: 2, scope: !2771)
!3034 = !{!"1471"}
!3035 = !DILocation(line: 132, column: 21, scope: !2771)
!3036 = !{!"1472"}
!3037 = !DILocation(line: 132, column: 2, scope: !2771)
!3038 = !{!"1473"}
!3039 = !DILocation(line: 133, column: 2, scope: !2771)
!3040 = !{!"1474"}
!3041 = !DILocation(line: 134, column: 31, scope: !2771)
!3042 = !{!"1475"}
!3043 = !{!"1476"}
!3044 = !DILocation(line: 134, column: 39, scope: !2771)
!3045 = !{!"1477"}
!3046 = !{!"1478"}
!3047 = !DILocation(line: 134, column: 2, scope: !2771)
!3048 = !{!"1479"}
!3049 = !DILocation(line: 135, column: 2, scope: !2771)
!3050 = !{!"1480"}
!3051 = !DILocation(line: 148, column: 2, scope: !2771)
!3052 = !{!"1481"}
!3053 = !DILocation(line: 154, column: 2, scope: !2771)
!3054 = !{!"1482"}
!3055 = !DILocation(line: 160, column: 13, scope: !2771)
!3056 = !{!"1483"}
!3057 = !DILocation(line: 160, column: 19, scope: !2771)
!3058 = !{!"1484"}
!3059 = !DILocation(line: 160, column: 2, scope: !2771)
!3060 = !{!"1485"}
!3061 = !{!"1486"}
!3062 = !DILocation(line: 161, column: 1, scope: !2771)
!3063 = !{!"1487"}
!3064 = distinct !DISubprogram(name: "br_i32_zero", scope: !126, file: !126, line: 1235, type: !1079, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !2)
!3065 = !DILocalVariable(name: "x", arg: 1, scope: !3064, file: !126, line: 1235, type: !336)
!3066 = !DILocation(line: 0, scope: !3064)
!3067 = !{!"1488"}
!3068 = !DILocalVariable(name: "bit_len", arg: 2, scope: !3064, file: !126, line: 1235, type: !10)
!3069 = !{!"1489"}
!3070 = !DILocation(line: 1237, column: 5, scope: !3064)
!3071 = !{!"1490"}
!3072 = !{!"1491"}
!3073 = !DILocation(line: 1237, column: 8, scope: !3064)
!3074 = !{!"1492"}
!3075 = !DILocation(line: 1238, column: 2, scope: !3064)
!3076 = !{!"1493"}
!3077 = !DILocation(line: 1238, column: 25, scope: !3064)
!3078 = !{!"1494"}
!3079 = !DILocation(line: 1238, column: 31, scope: !3064)
!3080 = !{!"1495"}
!3081 = !DILocation(line: 1238, column: 15, scope: !3064)
!3082 = !{!"1496"}
!3083 = !DILocation(line: 1238, column: 37, scope: !3064)
!3084 = !{!"1497"}
!3085 = !{!"1498"}
!3086 = !DILocation(line: 1239, column: 1, scope: !3064)
!3087 = !{!"1499"}
