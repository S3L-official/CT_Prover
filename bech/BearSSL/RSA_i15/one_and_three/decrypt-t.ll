; ModuleID = 'decrypt-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_rsa_private_key = type { i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64 }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ccopy(i32 %0, i8* %1, i8* %2, i64 %3) #0 !dbg !61 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !66, metadata !DIExpression()), !dbg !67, !psr.id !68
  call void @llvm.dbg.value(metadata i8* %1, metadata !69, metadata !DIExpression()), !dbg !67, !psr.id !70
  call void @llvm.dbg.value(metadata i8* %2, metadata !71, metadata !DIExpression()), !dbg !67, !psr.id !72
  call void @llvm.dbg.value(metadata i64 %3, metadata !73, metadata !DIExpression()), !dbg !67, !psr.id !74
  call void @llvm.dbg.value(metadata i8* %1, metadata !75, metadata !DIExpression()), !dbg !67, !psr.id !76
  call void @llvm.dbg.value(metadata i8* %2, metadata !77, metadata !DIExpression()), !dbg !67, !psr.id !80
  br label %5, !dbg !81, !psr.id !82

5:                                                ; preds = %8, %4
  %.02 = phi i64 [ %3, %4 ], [ %6, %8 ], !psr.id !83, !ValueTainted !84
  %.01 = phi i8* [ %1, %4 ], [ %16, %8 ], !dbg !67, !psr.id !85, !PointTainted !86
  %.0 = phi i8* [ %2, %4 ], [ %9, %8 ], !dbg !67, !psr.id !87, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %.0, metadata !77, metadata !DIExpression()), !dbg !67, !psr.id !88
  call void @llvm.dbg.value(metadata i8* %.01, metadata !75, metadata !DIExpression()), !dbg !67, !psr.id !89
  call void @llvm.dbg.value(metadata i64 %.02, metadata !73, metadata !DIExpression()), !dbg !67, !psr.id !90
  %6 = add i64 %.02, -1, !dbg !91, !psr.id !92, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %6, metadata !73, metadata !DIExpression()), !dbg !67, !psr.id !93
  %7 = icmp ugt i64 %.02, 0, !dbg !94, !psr.id !95, !ValueTainted !84
  br i1 %7, label %8, label %17, !dbg !81, !psr.id !96, !Tainted !97

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !98, !psr.id !100, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %9, metadata !77, metadata !DIExpression()), !dbg !67, !psr.id !101
  %10 = load i8, i8* %.0, align 1, !dbg !102, !psr.id !103, !ValueTainted !84
  %11 = zext i8 %10 to i32, !dbg !102, !psr.id !104, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %11, metadata !105, metadata !DIExpression()), !dbg !106, !psr.id !107
  %12 = load i8, i8* %.01, align 1, !dbg !108, !psr.id !109, !ValueTainted !84
  %13 = zext i8 %12 to i32, !dbg !108, !psr.id !110, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %13, metadata !111, metadata !DIExpression()), !dbg !106, !psr.id !112
  %14 = call i32 @MUX(i32 %0, i32 %11, i32 %13), !dbg !113, !psr.id !114, !ValueTainted !84
  %15 = trunc i32 %14 to i8, !dbg !113, !psr.id !115, !ValueTainted !84
  store i8 %15, i8* %.01, align 1, !dbg !116, !psr.id !117
  %16 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !118, !psr.id !119, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %16, metadata !75, metadata !DIExpression()), !dbg !67, !psr.id !120
  br label %5, !dbg !81, !llvm.loop !121, !psr.id !124

17:                                               ; preds = %5
  ret void, !dbg !125, !psr.id !126
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !127 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !131, metadata !DIExpression()), !dbg !132, !psr.id !133
  call void @llvm.dbg.value(metadata i32 %1, metadata !134, metadata !DIExpression()), !dbg !132, !psr.id !135
  call void @llvm.dbg.value(metadata i32 %2, metadata !136, metadata !DIExpression()), !dbg !132, !psr.id !137
  %4 = sub i32 0, %0, !dbg !138, !psr.id !139, !ValueTainted !84
  %5 = xor i32 %1, %2, !dbg !140, !psr.id !141, !ValueTainted !84
  %6 = and i32 %4, %5, !dbg !142, !psr.id !143, !ValueTainted !84
  %7 = xor i32 %2, %6, !dbg !144, !psr.id !145, !ValueTainted !84
  ret i32 %7, !dbg !146, !psr.id !147
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @decrypt_wrapper(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !148 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !168, metadata !DIExpression()), !dbg !169, !psr.id !170
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !171, metadata !DIExpression()), !dbg !169, !psr.id !172
  %3 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !173, !psr.id !174
  call void @public_in(%struct.smack_value* %3), !dbg !175, !psr.id !176
  %4 = call %struct.smack_value* (%struct.br_rsa_private_key*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_rsa_private_key*, ...)*)(%struct.br_rsa_private_key* %1), !dbg !177, !psr.id !178
  call void @public_in(%struct.smack_value* %4), !dbg !179, !psr.id !180
  %5 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !181, !psr.id !182
  %6 = load i8*, i8** %5, align 8, !dbg !181, !psr.id !183
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !184, !psr.id !185
  call void @public_in(%struct.smack_value* %7), !dbg !186, !psr.id !187
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !188, !psr.id !189
  %9 = load i8*, i8** %8, align 8, !dbg !188, !psr.id !190
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %9), !dbg !191, !psr.id !192
  call void @public_in(%struct.smack_value* %10), !dbg !193, !psr.id !194
  %11 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !195, !psr.id !196
  %12 = load i8*, i8** %11, align 8, !dbg !195, !psr.id !197
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %12), !dbg !198, !psr.id !199
  call void @public_in(%struct.smack_value* %13), !dbg !200, !psr.id !201
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !202, !psr.id !203
  %15 = load i8*, i8** %14, align 8, !dbg !202, !psr.id !204
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %15), !dbg !205, !psr.id !206
  call void @public_in(%struct.smack_value* %16), !dbg !207, !psr.id !208
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !209, !psr.id !210
  %18 = load i8*, i8** %17, align 8, !dbg !209, !psr.id !211
  %19 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %18), !dbg !212, !psr.id !213
  call void @public_in(%struct.smack_value* %19), !dbg !214, !psr.id !215
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !216, !psr.id !217
  %21 = load i64, i64* %20, align 8, !dbg !216, !psr.id !218
  %22 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %21), !dbg !219, !psr.id !220
  call void @public_in(%struct.smack_value* %22), !dbg !221, !psr.id !222
  %23 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !223, !psr.id !224
  %24 = load i64, i64* %23, align 8, !dbg !223, !psr.id !225
  %25 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %24), !dbg !226, !psr.id !227
  call void @public_in(%struct.smack_value* %25), !dbg !228, !psr.id !229
  %26 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !230, !psr.id !231
  %27 = load i64, i64* %26, align 8, !dbg !230, !psr.id !232
  %28 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %27), !dbg !233, !psr.id !234
  call void @public_in(%struct.smack_value* %28), !dbg !235, !psr.id !236
  %29 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !237, !psr.id !238
  %30 = load i64, i64* %29, align 8, !dbg !237, !psr.id !239
  %31 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %30), !dbg !240, !psr.id !241
  call void @public_in(%struct.smack_value* %31), !dbg !242, !psr.id !243
  %32 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !244, !psr.id !245
  %33 = load i64, i64* %32, align 8, !dbg !244, !psr.id !246
  %34 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %33), !dbg !247, !psr.id !248
  call void @public_in(%struct.smack_value* %34), !dbg !249, !psr.id !250
  %35 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !251, !psr.id !252
  %36 = load i32, i32* %35, align 8, !dbg !251, !psr.id !253
  %37 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %36), !dbg !254, !psr.id !255
  call void @public_in(%struct.smack_value* %37), !dbg !256, !psr.id !257
  %38 = call i32 @br_rsa_i15_private(i8* %0, %struct.br_rsa_private_key* %1), !dbg !258, !psr.id !259
  ret void, !dbg !260, !psr.id !261
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @decrypt_wrapper_t() #0 !dbg !262 {
  %1 = alloca i8, align 1, !psr.id !265
  %2 = alloca %struct.br_rsa_private_key, align 8, !psr.id !266
  call void @llvm.dbg.declare(metadata i8* %1, metadata !267, metadata !DIExpression()), !dbg !268, !psr.id !269
  %3 = call zeroext i8 (...) @getcharpt(), !dbg !270, !psr.id !271, !ValueTainted !84, !PointTainted !86
  store i8 %3, i8* %1, align 1, !dbg !268, !psr.id !272
  call void @llvm.dbg.value(metadata i8* %1, metadata !273, metadata !DIExpression()), !dbg !274, !psr.id !275
  call void @llvm.dbg.declare(metadata %struct.br_rsa_private_key* %2, metadata !276, metadata !DIExpression()), !dbg !277, !psr.id !278
  call void (%struct.br_rsa_private_key*, ...) @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8 %2), !dbg !279, !psr.id !280
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %2, metadata !281, metadata !DIExpression()), !dbg !274, !psr.id !283
  %4 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 1, !dbg !284, !psr.id !285
  %5 = load i8*, i8** %4, align 8, !dbg !284, !psr.id !286, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %5, metadata !287, metadata !DIExpression()), !dbg !274, !psr.id !288
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 3, !dbg !289, !psr.id !290
  %7 = load i8*, i8** %6, align 8, !dbg !289, !psr.id !291, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %7, metadata !292, metadata !DIExpression()), !dbg !274, !psr.id !293
  %8 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 5, !dbg !294, !psr.id !295
  %9 = load i8*, i8** %8, align 8, !dbg !294, !psr.id !296, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %9, metadata !297, metadata !DIExpression()), !dbg !274, !psr.id !298
  %10 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 7, !dbg !299, !psr.id !300
  %11 = load i8*, i8** %10, align 8, !dbg !299, !psr.id !301, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %11, metadata !302, metadata !DIExpression()), !dbg !274, !psr.id !303
  %12 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 9, !dbg !304, !psr.id !305
  %13 = load i8*, i8** %12, align 8, !dbg !304, !psr.id !306, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %13, metadata !307, metadata !DIExpression()), !dbg !274, !psr.id !308
  call void @vfct_taintseed(i8* %5, i8* %7, i8* %9, i8* %11, i8* %13), !dbg !309, !psr.id !310
  %14 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 1, !dbg !311, !psr.id !312
  store i8* %5, i8** %14, align 8, !dbg !313, !psr.id !314
  %15 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 3, !dbg !315, !psr.id !316
  store i8* %7, i8** %15, align 8, !dbg !317, !psr.id !318
  %16 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 5, !dbg !319, !psr.id !320
  store i8* %9, i8** %16, align 8, !dbg !321, !psr.id !322
  %17 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 7, !dbg !323, !psr.id !324
  store i8* %11, i8** %17, align 8, !dbg !325, !psr.id !326
  %18 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %2, i32 0, i32 9, !dbg !327, !psr.id !328
  store i8* %13, i8** %18, align 8, !dbg !329, !psr.id !330
  %19 = call i32 @br_rsa_i15_private(i8* %1, %struct.br_rsa_private_key* %2), !dbg !331, !psr.id !332, !ValueTainted !84
  ret void, !dbg !333, !psr.id !334
}

declare dso_local zeroext i8 @getcharpt(...) #2

declare dso_local void @getpk(%struct.br_rsa_private_key* sret(%struct.br_rsa_private_key) align 8, ...) #2

declare dso_local void @vfct_taintseed(i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_add(i16* %0, i16* %1, i32 %2) #0 !dbg !335 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !344, metadata !DIExpression()), !dbg !345, !psr.id !346
  call void @llvm.dbg.value(metadata i16* %1, metadata !347, metadata !DIExpression()), !dbg !345, !psr.id !348
  call void @llvm.dbg.value(metadata i32 %2, metadata !349, metadata !DIExpression()), !dbg !345, !psr.id !350
  call void @llvm.dbg.value(metadata i32 0, metadata !351, metadata !DIExpression()), !dbg !345, !psr.id !352
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !353, !psr.id !354, !PointTainted !86
  %5 = load i16, i16* %4, align 2, !dbg !353, !psr.id !355, !ValueTainted !84
  %6 = zext i16 %5 to i32, !dbg !353, !psr.id !356, !ValueTainted !84
  %7 = add nsw i32 %6, 31, !dbg !357, !psr.id !358, !ValueTainted !84
  %8 = ashr i32 %7, 4, !dbg !359, !psr.id !360, !ValueTainted !84
  %9 = sext i32 %8 to i64, !dbg !361, !psr.id !362, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %9, metadata !363, metadata !DIExpression()), !dbg !345, !psr.id !364
  call void @llvm.dbg.value(metadata i64 1, metadata !365, metadata !DIExpression()), !dbg !345, !psr.id !366
  br label %10, !dbg !367, !psr.id !369

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !345, !psr.id !370, !ValueTainted !84
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !371, !psr.id !372
  call void @llvm.dbg.value(metadata i64 %.0, metadata !365, metadata !DIExpression()), !dbg !345, !psr.id !373
  call void @llvm.dbg.value(metadata i32 %.01, metadata !351, metadata !DIExpression()), !dbg !345, !psr.id !374
  %11 = icmp ult i64 %.0, %9, !dbg !375, !psr.id !377, !ValueTainted !84
  br i1 %11, label %12, label %28, !dbg !378, !psr.id !379, !Tainted !97

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !380, !psr.id !382, !PointTainted !86
  %14 = load i16, i16* %13, align 2, !dbg !380, !psr.id !383, !ValueTainted !84
  %15 = zext i16 %14 to i32, !dbg !380, !psr.id !384, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %15, metadata !385, metadata !DIExpression()), !dbg !386, !psr.id !387
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !388, !psr.id !389
  %17 = load i16, i16* %16, align 2, !dbg !388, !psr.id !390, !ValueTainted !84
  %18 = zext i16 %17 to i32, !dbg !388, !psr.id !391, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %18, metadata !392, metadata !DIExpression()), !dbg !386, !psr.id !393
  %19 = add i32 %15, %18, !dbg !394, !psr.id !395, !ValueTainted !84
  %20 = add i32 %19, %.01, !dbg !396, !psr.id !397, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %20, metadata !398, metadata !DIExpression()), !dbg !386, !psr.id !399
  %21 = lshr i32 %20, 15, !dbg !400, !psr.id !401, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %21, metadata !351, metadata !DIExpression()), !dbg !345, !psr.id !402
  %22 = and i32 %20, 32767, !dbg !403, !psr.id !404, !ValueTainted !84
  %23 = call i32 @MUX.1(i32 %2, i32 %22, i32 %15), !dbg !405, !psr.id !406, !ValueTainted !84
  %24 = trunc i32 %23 to i16, !dbg !405, !psr.id !407, !ValueTainted !84
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !408, !psr.id !409, !PointTainted !86
  store i16 %24, i16* %25, align 2, !dbg !410, !psr.id !411
  br label %26, !dbg !412, !psr.id !413

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !414, !psr.id !415
  call void @llvm.dbg.value(metadata i64 %27, metadata !365, metadata !DIExpression()), !dbg !345, !psr.id !416
  br label %10, !dbg !417, !llvm.loop !418, !psr.id !420

28:                                               ; preds = %10
  ret i32 %.01, !dbg !421, !psr.id !422
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.1(i32 %0, i32 %1, i32 %2) #0 !dbg !423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !424, metadata !DIExpression()), !dbg !425, !psr.id !426
  call void @llvm.dbg.value(metadata i32 %1, metadata !427, metadata !DIExpression()), !dbg !425, !psr.id !428
  call void @llvm.dbg.value(metadata i32 %2, metadata !429, metadata !DIExpression()), !dbg !425, !psr.id !430
  %4 = sub i32 0, %0, !dbg !431, !psr.id !432, !ValueTainted !84
  %5 = xor i32 %1, %2, !dbg !433, !psr.id !434, !ValueTainted !84
  %6 = and i32 %4, %5, !dbg !435, !psr.id !436, !ValueTainted !84
  %7 = xor i32 %2, %6, !dbg !437, !psr.id !438, !ValueTainted !84
  ret i32 %7, !dbg !439, !psr.id !440
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_bit_length(i16* %0, i64 %1) #0 !dbg !441 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !444, metadata !DIExpression()), !dbg !445, !psr.id !446
  call void @llvm.dbg.value(metadata i64 %1, metadata !447, metadata !DIExpression()), !dbg !445, !psr.id !448
  call void @llvm.dbg.value(metadata i32 0, metadata !449, metadata !DIExpression()), !dbg !445, !psr.id !450
  call void @llvm.dbg.value(metadata i32 0, metadata !451, metadata !DIExpression()), !dbg !445, !psr.id !452
  br label %3, !dbg !453, !psr.id !454

3:                                                ; preds = %6, %2
  %.02 = phi i32 [ 0, %2 ], [ %11, %6 ], !dbg !445, !psr.id !455, !ValueTainted !84
  %.01 = phi i64 [ %1, %2 ], [ %4, %6 ], !psr.id !456
  %.0 = phi i32 [ 0, %2 ], [ %13, %6 ], !dbg !445, !psr.id !457, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.0, metadata !451, metadata !DIExpression()), !dbg !445, !psr.id !458
  call void @llvm.dbg.value(metadata i64 %.01, metadata !447, metadata !DIExpression()), !dbg !445, !psr.id !459
  call void @llvm.dbg.value(metadata i32 %.02, metadata !449, metadata !DIExpression()), !dbg !445, !psr.id !460
  %4 = add i64 %.01, -1, !dbg !461, !psr.id !462
  call void @llvm.dbg.value(metadata i64 %4, metadata !447, metadata !DIExpression()), !dbg !445, !psr.id !463
  %5 = icmp ugt i64 %.01, 0, !dbg !464, !psr.id !465
  br i1 %5, label %6, label %14, !dbg !453, !psr.id !466

6:                                                ; preds = %3
  %7 = call i32 @EQ(i32 %.02, i32 0), !dbg !467, !psr.id !469, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %7, metadata !470, metadata !DIExpression()), !dbg !471, !psr.id !472
  %8 = getelementptr inbounds i16, i16* %0, i64 %4, !dbg !473, !psr.id !474, !PointTainted !86
  %9 = load i16, i16* %8, align 2, !dbg !473, !psr.id !475, !ValueTainted !84
  %10 = zext i16 %9 to i32, !dbg !473, !psr.id !476, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %10, metadata !477, metadata !DIExpression()), !dbg !471, !psr.id !478
  %11 = call i32 @MUX.2(i32 %7, i32 %10, i32 %.02), !dbg !479, !psr.id !480, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %11, metadata !449, metadata !DIExpression()), !dbg !445, !psr.id !481
  %12 = trunc i64 %4 to i32, !dbg !482, !psr.id !483
  %13 = call i32 @MUX.2(i32 %7, i32 %12, i32 %.0), !dbg !484, !psr.id !485, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %13, metadata !451, metadata !DIExpression()), !dbg !445, !psr.id !486
  br label %3, !dbg !453, !llvm.loop !487, !psr.id !489

14:                                               ; preds = %3
  %15 = shl i32 %.0, 4, !dbg !490, !psr.id !491, !ValueTainted !84
  %16 = call i32 @BIT_LENGTH(i32 %.02), !dbg !492, !psr.id !493, !ValueTainted !84
  %17 = add i32 %15, %16, !dbg !494, !psr.id !495, !ValueTainted !84
  ret i32 %17, !dbg !496, !psr.id !497
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !498 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !501, metadata !DIExpression()), !dbg !502, !psr.id !503
  call void @llvm.dbg.value(metadata i32 %1, metadata !504, metadata !DIExpression()), !dbg !502, !psr.id !505
  %3 = xor i32 %0, %1, !dbg !506, !psr.id !507, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !508, metadata !DIExpression()), !dbg !502, !psr.id !509
  %4 = sub i32 0, %3, !dbg !510, !psr.id !511, !ValueTainted !84
  %5 = or i32 %3, %4, !dbg !512, !psr.id !513, !ValueTainted !84
  %6 = lshr i32 %5, 31, !dbg !514, !psr.id !515, !ValueTainted !84
  %7 = call i32 @NOT(i32 %6), !dbg !516, !psr.id !517, !ValueTainted !84
  ret i32 %7, !dbg !518, !psr.id !519
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.2(i32 %0, i32 %1, i32 %2) #0 !dbg !520 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !521, metadata !DIExpression()), !dbg !522, !psr.id !523
  call void @llvm.dbg.value(metadata i32 %1, metadata !524, metadata !DIExpression()), !dbg !522, !psr.id !525
  call void @llvm.dbg.value(metadata i32 %2, metadata !526, metadata !DIExpression()), !dbg !522, !psr.id !527
  %4 = sub i32 0, %0, !dbg !528, !psr.id !529, !ValueTainted !84
  %5 = xor i32 %1, %2, !dbg !530, !psr.id !531, !ValueTainted !84
  %6 = and i32 %4, %5, !dbg !532, !psr.id !533, !ValueTainted !84
  %7 = xor i32 %2, %6, !dbg !534, !psr.id !535, !ValueTainted !84
  ret i32 %7, !dbg !536, !psr.id !537
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @BIT_LENGTH(i32 %0) #0 !dbg !538 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !541, metadata !DIExpression()), !dbg !542, !psr.id !543
  %2 = call i32 @NEQ(i32 %0, i32 0), !dbg !544, !psr.id !545, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %2, metadata !546, metadata !DIExpression()), !dbg !542, !psr.id !547
  %3 = call i32 @GT(i32 %0, i32 65535), !dbg !548, !psr.id !549, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !550, metadata !DIExpression()), !dbg !542, !psr.id !551
  %4 = lshr i32 %0, 16, !dbg !552, !psr.id !553, !ValueTainted !84
  %5 = call i32 @MUX.2(i32 %3, i32 %4, i32 %0), !dbg !554, !psr.id !555, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %5, metadata !541, metadata !DIExpression()), !dbg !542, !psr.id !556
  %6 = shl i32 %3, 4, !dbg !557, !psr.id !558, !ValueTainted !84
  %7 = add i32 %2, %6, !dbg !559, !psr.id !560, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %7, metadata !546, metadata !DIExpression()), !dbg !542, !psr.id !561
  %8 = call i32 @GT(i32 %5, i32 255), !dbg !562, !psr.id !563, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %8, metadata !550, metadata !DIExpression()), !dbg !542, !psr.id !564
  %9 = lshr i32 %5, 8, !dbg !565, !psr.id !566, !ValueTainted !84
  %10 = call i32 @MUX.2(i32 %8, i32 %9, i32 %5), !dbg !567, !psr.id !568, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %10, metadata !541, metadata !DIExpression()), !dbg !542, !psr.id !569
  %11 = shl i32 %8, 3, !dbg !570, !psr.id !571, !ValueTainted !84
  %12 = add i32 %7, %11, !dbg !572, !psr.id !573, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %12, metadata !546, metadata !DIExpression()), !dbg !542, !psr.id !574
  %13 = call i32 @GT(i32 %10, i32 15), !dbg !575, !psr.id !576, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %13, metadata !550, metadata !DIExpression()), !dbg !542, !psr.id !577
  %14 = lshr i32 %10, 4, !dbg !578, !psr.id !579, !ValueTainted !84
  %15 = call i32 @MUX.2(i32 %13, i32 %14, i32 %10), !dbg !580, !psr.id !581, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %15, metadata !541, metadata !DIExpression()), !dbg !542, !psr.id !582
  %16 = shl i32 %13, 2, !dbg !583, !psr.id !584, !ValueTainted !84
  %17 = add i32 %12, %16, !dbg !585, !psr.id !586, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %17, metadata !546, metadata !DIExpression()), !dbg !542, !psr.id !587
  %18 = call i32 @GT(i32 %15, i32 3), !dbg !588, !psr.id !589, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %18, metadata !550, metadata !DIExpression()), !dbg !542, !psr.id !590
  %19 = lshr i32 %15, 2, !dbg !591, !psr.id !592, !ValueTainted !84
  %20 = call i32 @MUX.2(i32 %18, i32 %19, i32 %15), !dbg !593, !psr.id !594, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %20, metadata !541, metadata !DIExpression()), !dbg !542, !psr.id !595
  %21 = shl i32 %18, 1, !dbg !596, !psr.id !597, !ValueTainted !84
  %22 = add i32 %17, %21, !dbg !598, !psr.id !599, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %22, metadata !546, metadata !DIExpression()), !dbg !542, !psr.id !600
  %23 = call i32 @GT(i32 %20, i32 1), !dbg !601, !psr.id !602, !ValueTainted !84
  %24 = add i32 %22, %23, !dbg !603, !psr.id !604, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %24, metadata !546, metadata !DIExpression()), !dbg !542, !psr.id !605
  ret i32 %24, !dbg !606, !psr.id !607
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ(i32 %0, i32 %1) #0 !dbg !608 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !609, metadata !DIExpression()), !dbg !610, !psr.id !611
  call void @llvm.dbg.value(metadata i32 %1, metadata !612, metadata !DIExpression()), !dbg !610, !psr.id !613
  %3 = xor i32 %0, %1, !dbg !614, !psr.id !615, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !616, metadata !DIExpression()), !dbg !610, !psr.id !617
  %4 = sub i32 0, %3, !dbg !618, !psr.id !619, !ValueTainted !84
  %5 = or i32 %3, %4, !dbg !620, !psr.id !621, !ValueTainted !84
  %6 = lshr i32 %5, 31, !dbg !622, !psr.id !623, !ValueTainted !84
  ret i32 %6, !dbg !624, !psr.id !625
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !626 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !627, metadata !DIExpression()), !dbg !628, !psr.id !629
  call void @llvm.dbg.value(metadata i32 %1, metadata !630, metadata !DIExpression()), !dbg !628, !psr.id !631
  %3 = sub i32 %1, %0, !dbg !632, !psr.id !633, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !634, metadata !DIExpression()), !dbg !628, !psr.id !635
  %4 = xor i32 %0, %1, !dbg !636, !psr.id !637, !ValueTainted !84
  %5 = xor i32 %0, %3, !dbg !638, !psr.id !639, !ValueTainted !84
  %6 = and i32 %4, %5, !dbg !640, !psr.id !641, !ValueTainted !84
  %7 = xor i32 %3, %6, !dbg !642, !psr.id !643, !ValueTainted !84
  %8 = lshr i32 %7, 31, !dbg !644, !psr.id !645, !ValueTainted !84
  ret i32 %8, !dbg !646, !psr.id !647
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !648 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !649, metadata !DIExpression()), !dbg !650, !psr.id !651
  %2 = xor i32 %0, 1, !dbg !652, !psr.id !653, !ValueTainted !84
  ret i32 %2, !dbg !654, !psr.id !655
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_decode(i16* %0, i8* %1, i64 %2) #0 !dbg !656 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !659, metadata !DIExpression()), !dbg !660, !psr.id !661
  call void @llvm.dbg.value(metadata i8* %1, metadata !662, metadata !DIExpression()), !dbg !660, !psr.id !663
  call void @llvm.dbg.value(metadata i64 %2, metadata !664, metadata !DIExpression()), !dbg !660, !psr.id !665
  call void @llvm.dbg.value(metadata i8* %1, metadata !666, metadata !DIExpression()), !dbg !660, !psr.id !667
  call void @llvm.dbg.value(metadata i64 1, metadata !668, metadata !DIExpression()), !dbg !660, !psr.id !669
  call void @llvm.dbg.value(metadata i32 0, metadata !670, metadata !DIExpression()), !dbg !660, !psr.id !671
  call void @llvm.dbg.value(metadata i32 0, metadata !672, metadata !DIExpression()), !dbg !660, !psr.id !674
  br label %4, !dbg !675, !psr.id !676

4:                                                ; preds = %22, %3
  %.04 = phi i64 [ 1, %3 ], [ %.15, %22 ], !dbg !660, !psr.id !677
  %.03 = phi i64 [ %2, %3 ], [ %5, %22 ], !psr.id !678, !ValueTainted !84
  %.01 = phi i32 [ 0, %3 ], [ %.12, %22 ], !dbg !660, !psr.id !679, !ValueTainted !84
  %.0 = phi i32 [ 0, %3 ], [ %.1, %22 ], !dbg !660, !psr.id !680
  call void @llvm.dbg.value(metadata i32 %.0, metadata !672, metadata !DIExpression()), !dbg !660, !psr.id !681
  call void @llvm.dbg.value(metadata i32 %.01, metadata !670, metadata !DIExpression()), !dbg !660, !psr.id !682
  call void @llvm.dbg.value(metadata i64 %.03, metadata !664, metadata !DIExpression()), !dbg !660, !psr.id !683
  call void @llvm.dbg.value(metadata i64 %.04, metadata !668, metadata !DIExpression()), !dbg !660, !psr.id !684
  %5 = add i64 %.03, -1, !dbg !685, !psr.id !686, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %5, metadata !664, metadata !DIExpression()), !dbg !660, !psr.id !687
  %6 = icmp ugt i64 %.03, 0, !dbg !688, !psr.id !689, !ValueTainted !84
  br i1 %6, label %7, label %23, !dbg !675, !psr.id !690, !Tainted !97

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %1, i64 %5, !dbg !691, !psr.id !693, !ValueTainted !84, !PointTainted !86
  %9 = load i8, i8* %8, align 1, !dbg !691, !psr.id !694, !Tainted !97, !ValueTainted !84
  %10 = zext i8 %9 to i32, !dbg !691, !psr.id !695, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %10, metadata !696, metadata !DIExpression()), !dbg !697, !psr.id !698
  %11 = shl i32 %10, %.0, !dbg !699, !psr.id !700, !ValueTainted !84
  %12 = or i32 %.01, %11, !dbg !701, !psr.id !702, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %12, metadata !670, metadata !DIExpression()), !dbg !660, !psr.id !703
  %13 = add nsw i32 %.0, 8, !dbg !704, !psr.id !705
  call void @llvm.dbg.value(metadata i32 %13, metadata !672, metadata !DIExpression()), !dbg !660, !psr.id !706
  %14 = icmp sge i32 %13, 15, !dbg !707, !psr.id !709
  br i1 %14, label %15, label %22, !dbg !710, !psr.id !711

15:                                               ; preds = %7
  %16 = and i32 %12, 32767, !dbg !712, !psr.id !714, !ValueTainted !84
  %17 = trunc i32 %16 to i16, !dbg !715, !psr.id !716, !ValueTainted !84
  %18 = add i64 %.04, 1, !dbg !717, !psr.id !718
  call void @llvm.dbg.value(metadata i64 %18, metadata !668, metadata !DIExpression()), !dbg !660, !psr.id !719
  %19 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !720, !psr.id !721, !PointTainted !86
  store i16 %17, i16* %19, align 2, !dbg !722, !psr.id !723
  %20 = sub nsw i32 %13, 15, !dbg !724, !psr.id !725
  call void @llvm.dbg.value(metadata i32 %20, metadata !672, metadata !DIExpression()), !dbg !660, !psr.id !726
  %21 = lshr i32 %12, 15, !dbg !727, !psr.id !728, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %21, metadata !670, metadata !DIExpression()), !dbg !660, !psr.id !729
  br label %22, !dbg !730, !psr.id !731

22:                                               ; preds = %15, %7
  %.15 = phi i64 [ %18, %15 ], [ %.04, %7 ], !dbg !660, !psr.id !732
  %.12 = phi i32 [ %21, %15 ], [ %12, %7 ], !dbg !697, !psr.id !733, !ValueTainted !84
  %.1 = phi i32 [ %20, %15 ], [ %13, %7 ], !dbg !697, !psr.id !734
  call void @llvm.dbg.value(metadata i32 %.1, metadata !672, metadata !DIExpression()), !dbg !660, !psr.id !735
  call void @llvm.dbg.value(metadata i32 %.12, metadata !670, metadata !DIExpression()), !dbg !660, !psr.id !736
  call void @llvm.dbg.value(metadata i64 %.15, metadata !668, metadata !DIExpression()), !dbg !660, !psr.id !737
  br label %4, !dbg !675, !llvm.loop !738, !psr.id !740

23:                                               ; preds = %4
  %24 = icmp ne i32 %.0, 0, !dbg !741, !psr.id !743
  br i1 %24, label %25, label %29, !dbg !744, !psr.id !745

25:                                               ; preds = %23
  %26 = trunc i32 %.01 to i16, !dbg !746, !psr.id !748, !ValueTainted !84
  %27 = add i64 %.04, 1, !dbg !749, !psr.id !750
  call void @llvm.dbg.value(metadata i64 %27, metadata !668, metadata !DIExpression()), !dbg !660, !psr.id !751
  %28 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !752, !psr.id !753, !PointTainted !86
  store i16 %26, i16* %28, align 2, !dbg !754, !psr.id !755
  br label %29, !dbg !756, !psr.id !757

29:                                               ; preds = %25, %23
  %.2 = phi i64 [ %27, %25 ], [ %.04, %23 ], !dbg !660, !psr.id !758
  call void @llvm.dbg.value(metadata i64 %.2, metadata !668, metadata !DIExpression()), !dbg !660, !psr.id !759
  %30 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !760, !psr.id !761, !PointTainted !86
  %31 = sub i64 %.2, 1, !dbg !762, !psr.id !763
  %32 = call i32 @br_i15_bit_length(i16* %30, i64 %31), !dbg !764, !psr.id !765, !ValueTainted !84
  %33 = trunc i32 %32 to i16, !dbg !764, !psr.id !766, !ValueTainted !84
  %34 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !767, !psr.id !768, !PointTainted !86
  store i16 %33, i16* %34, align 2, !dbg !769, !psr.id !770
  ret void, !dbg !771, !psr.id !772
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_decode_reduce(i16* %0, i8* %1, i64 %2, i16* %3) #0 !dbg !773 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !776, metadata !DIExpression()), !dbg !777, !psr.id !778
  call void @llvm.dbg.value(metadata i8* %1, metadata !779, metadata !DIExpression()), !dbg !777, !psr.id !780
  call void @llvm.dbg.value(metadata i64 %2, metadata !781, metadata !DIExpression()), !dbg !777, !psr.id !782
  call void @llvm.dbg.value(metadata i16* %3, metadata !783, metadata !DIExpression()), !dbg !777, !psr.id !784
  %5 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !785, !psr.id !786
  %6 = load i16, i16* %5, align 2, !dbg !785, !psr.id !787, !ValueTainted !84
  %7 = zext i16 %6 to i32, !dbg !785, !psr.id !788, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %7, metadata !789, metadata !DIExpression()), !dbg !777, !psr.id !790
  %8 = icmp eq i32 %7, 0, !dbg !791, !psr.id !793, !ValueTainted !84
  br i1 %8, label %9, label %11, !dbg !794, !psr.id !795, !Tainted !97

9:                                                ; preds = %4
  %10 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !796, !psr.id !798
  store i16 0, i16* %10, align 2, !dbg !799, !psr.id !800
  br label %60, !dbg !801, !psr.id !802

11:                                               ; preds = %4
  %12 = trunc i32 %7 to i16, !dbg !803, !psr.id !804, !ValueTainted !84
  call void @br_i15_zero(i16* %0, i16 zeroext %12), !dbg !805, !psr.id !806
  %13 = lshr i32 %7, 4, !dbg !807, !psr.id !808, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %13, metadata !809, metadata !DIExpression()), !dbg !777, !psr.id !810
  %14 = and i32 %7, 15, !dbg !811, !psr.id !812, !ValueTainted !84
  %15 = shl i32 %13, 4, !dbg !813, !psr.id !814, !ValueTainted !84
  %16 = add i32 %14, %15, !dbg !815, !psr.id !816, !ValueTainted !84
  %17 = sub i32 %16, %13, !dbg !817, !psr.id !818, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %17, metadata !809, metadata !DIExpression()), !dbg !777, !psr.id !819
  %18 = add i32 %17, 7, !dbg !820, !psr.id !821, !ValueTainted !84
  %19 = lshr i32 %18, 3, !dbg !822, !psr.id !823, !ValueTainted !84
  %20 = zext i32 %19 to i64, !dbg !824, !psr.id !825, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %20, metadata !826, metadata !DIExpression()), !dbg !777, !psr.id !827
  %21 = sub i64 %20, 1, !dbg !828, !psr.id !829, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %21, metadata !830, metadata !DIExpression()), !dbg !777, !psr.id !831
  %22 = icmp uge i64 %21, %2, !dbg !832, !psr.id !834, !ValueTainted !84
  br i1 %22, label %23, label %26, !dbg !835, !psr.id !836, !Tainted !97

23:                                               ; preds = %11
  call void @br_i15_decode(i16* %0, i8* %1, i64 %2), !dbg !837, !psr.id !839
  %24 = trunc i32 %7 to i16, !dbg !840, !psr.id !841, !ValueTainted !84
  %25 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !842, !psr.id !843, !PointTainted !86
  store i16 %24, i16* %25, align 2, !dbg !844, !psr.id !845
  br label %60, !dbg !846, !psr.id !847

26:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* %1, metadata !848, metadata !DIExpression()), !dbg !777, !psr.id !849
  call void @br_i15_decode(i16* %0, i8* %1, i64 %21), !dbg !850, !psr.id !851
  %27 = trunc i32 %7 to i16, !dbg !852, !psr.id !853, !ValueTainted !84
  %28 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !854, !psr.id !855, !PointTainted !86
  store i16 %27, i16* %28, align 2, !dbg !856, !psr.id !857
  call void @llvm.dbg.value(metadata i32 0, metadata !858, metadata !DIExpression()), !dbg !777, !psr.id !859
  call void @llvm.dbg.value(metadata i32 0, metadata !860, metadata !DIExpression()), !dbg !777, !psr.id !861
  br label %29, !dbg !862, !psr.id !863

29:                                               ; preds = %48, %26
  %.03 = phi i64 [ %21, %26 ], [ %32, %48 ], !dbg !777, !psr.id !864, !ValueTainted !84
  %.01 = phi i32 [ 0, %26 ], [ %.12, %48 ], !dbg !777, !psr.id !865, !ValueTainted !84
  %.0 = phi i32 [ 0, %26 ], [ %.1, %48 ], !dbg !777, !psr.id !866
  call void @llvm.dbg.value(metadata i32 %.0, metadata !860, metadata !DIExpression()), !dbg !777, !psr.id !867
  call void @llvm.dbg.value(metadata i32 %.01, metadata !858, metadata !DIExpression()), !dbg !777, !psr.id !868
  call void @llvm.dbg.value(metadata i64 %.03, metadata !830, metadata !DIExpression()), !dbg !777, !psr.id !869
  %30 = icmp ult i64 %.03, %2, !dbg !870, !psr.id !871, !ValueTainted !84
  br i1 %30, label %31, label %49, !dbg !862, !psr.id !872, !Tainted !97

31:                                               ; preds = %29
  %32 = add i64 %.03, 1, !dbg !873, !psr.id !875, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %32, metadata !830, metadata !DIExpression()), !dbg !777, !psr.id !876
  %33 = getelementptr inbounds i8, i8* %1, i64 %.03, !dbg !877, !psr.id !878, !ValueTainted !84, !PointTainted !86
  %34 = load i8, i8* %33, align 1, !dbg !877, !psr.id !879, !Tainted !97, !ValueTainted !84
  %35 = zext i8 %34 to i32, !dbg !877, !psr.id !880, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %35, metadata !881, metadata !DIExpression()), !dbg !882, !psr.id !883
  %36 = shl i32 %.01, 8, !dbg !884, !psr.id !885, !ValueTainted !84
  %37 = or i32 %36, %35, !dbg !886, !psr.id !887, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %37, metadata !858, metadata !DIExpression()), !dbg !777, !psr.id !888
  %38 = add nsw i32 %.0, 8, !dbg !889, !psr.id !890
  call void @llvm.dbg.value(metadata i32 %38, metadata !860, metadata !DIExpression()), !dbg !777, !psr.id !891
  %39 = icmp sge i32 %38, 15, !dbg !892, !psr.id !894
  br i1 %39, label %40, label %48, !dbg !895, !psr.id !896

40:                                               ; preds = %31
  %41 = sub nsw i32 %38, 15, !dbg !897, !psr.id !899
  %42 = lshr i32 %37, %41, !dbg !900, !psr.id !901, !ValueTainted !84
  %43 = trunc i32 %42 to i16, !dbg !902, !psr.id !903, !ValueTainted !84
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %43, i16* %3), !dbg !904, !psr.id !905
  %44 = sub nsw i32 %38, 15, !dbg !906, !psr.id !907
  call void @llvm.dbg.value(metadata i32 %44, metadata !860, metadata !DIExpression()), !dbg !777, !psr.id !908
  %45 = shl i32 -1, %44, !dbg !909, !psr.id !910
  %46 = xor i32 %45, -1, !dbg !911, !psr.id !912
  %47 = and i32 %37, %46, !dbg !913, !psr.id !914, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %47, metadata !858, metadata !DIExpression()), !dbg !777, !psr.id !915
  br label %48, !dbg !916, !psr.id !917

48:                                               ; preds = %40, %31
  %.12 = phi i32 [ %47, %40 ], [ %37, %31 ], !dbg !882, !psr.id !918, !ValueTainted !84
  %.1 = phi i32 [ %44, %40 ], [ %38, %31 ], !dbg !882, !psr.id !919
  call void @llvm.dbg.value(metadata i32 %.1, metadata !860, metadata !DIExpression()), !dbg !777, !psr.id !920
  call void @llvm.dbg.value(metadata i32 %.12, metadata !858, metadata !DIExpression()), !dbg !777, !psr.id !921
  br label %29, !dbg !862, !llvm.loop !922, !psr.id !924

49:                                               ; preds = %29
  %50 = icmp ne i32 %.0, 0, !dbg !925, !psr.id !927
  br i1 %50, label %51, label %60, !dbg !928, !psr.id !929

51:                                               ; preds = %49
  %52 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !930, !psr.id !932, !PointTainted !86
  %53 = load i16, i16* %52, align 2, !dbg !930, !psr.id !933, !ValueTainted !84
  %54 = zext i16 %53 to i32, !dbg !930, !psr.id !934, !ValueTainted !84
  %55 = shl i32 %54, %.0, !dbg !935, !psr.id !936, !ValueTainted !84
  %56 = or i32 %.01, %55, !dbg !937, !psr.id !938, !ValueTainted !84
  %57 = and i32 %56, 32767, !dbg !939, !psr.id !940, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %57, metadata !858, metadata !DIExpression()), !dbg !777, !psr.id !941
  %58 = sub nsw i32 15, %.0, !dbg !942, !psr.id !943
  call void @br_i15_rshift(i16* %0, i32 %58), !dbg !944, !psr.id !945
  %59 = trunc i32 %57 to i16, !dbg !946, !psr.id !947, !ValueTainted !84
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %59, i16* %3), !dbg !948, !psr.id !949
  br label %60, !dbg !950, !psr.id !951

60:                                               ; preds = %51, %49, %23, %9
  ret void, !dbg !952, !psr.id !953
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero(i16* %0, i16 zeroext %1) #0 !dbg !954 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !957, metadata !DIExpression()), !dbg !958, !psr.id !959
  call void @llvm.dbg.value(metadata i16 %1, metadata !960, metadata !DIExpression()), !dbg !958, !psr.id !961
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !962, !psr.id !963
  call void @llvm.dbg.value(metadata i16* %3, metadata !957, metadata !DIExpression()), !dbg !958, !psr.id !964
  store i16 %1, i16* %0, align 2, !dbg !965, !psr.id !966
  %4 = bitcast i16* %3 to i8*, !dbg !967, !psr.id !968
  %5 = zext i16 %1 to i32, !dbg !969, !psr.id !970, !ValueTainted !84
  %6 = add nsw i32 %5, 15, !dbg !971, !psr.id !972, !ValueTainted !84
  %7 = ashr i32 %6, 4, !dbg !973, !psr.id !974, !ValueTainted !84
  %8 = sext i32 %7 to i64, !dbg !975, !psr.id !976, !ValueTainted !84
  %9 = mul i64 %8, 2, !dbg !977, !psr.id !978, !ValueTainted !84
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !967, !psr.id !979, !CalledTainted !980
  ret void, !dbg !981, !psr.id !982
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_encode(i8* %0, i64 %1, i16* %2) #0 !dbg !983 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !986, metadata !DIExpression()), !dbg !987, !psr.id !988
  call void @llvm.dbg.value(metadata i64 %1, metadata !989, metadata !DIExpression()), !dbg !987, !psr.id !990
  call void @llvm.dbg.value(metadata i16* %2, metadata !991, metadata !DIExpression()), !dbg !987, !psr.id !992
  %4 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !993, !psr.id !994, !PointTainted !86
  %5 = load i16, i16* %4, align 2, !dbg !993, !psr.id !995, !ValueTainted !84
  %6 = zext i16 %5 to i32, !dbg !993, !psr.id !996, !ValueTainted !84
  %7 = add nsw i32 %6, 15, !dbg !997, !psr.id !998, !ValueTainted !84
  %8 = ashr i32 %7, 4, !dbg !999, !psr.id !1000, !ValueTainted !84
  %9 = sext i32 %8 to i64, !dbg !1001, !psr.id !1002, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %9, metadata !1003, metadata !DIExpression()), !dbg !987, !psr.id !1004
  %10 = icmp eq i64 %9, 0, !dbg !1005, !psr.id !1007, !ValueTainted !84
  br i1 %10, label %11, label %12, !dbg !1008, !psr.id !1009, !Tainted !97

11:                                               ; preds = %3
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !1010, !psr.id !1012
  br label %34, !dbg !1013, !psr.id !1014

12:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i64 1, metadata !1015, metadata !DIExpression()), !dbg !987, !psr.id !1016
  call void @llvm.dbg.value(metadata i32 0, metadata !1017, metadata !DIExpression()), !dbg !987, !psr.id !1018
  call void @llvm.dbg.value(metadata i32 0, metadata !1019, metadata !DIExpression()), !dbg !987, !psr.id !1020
  call void @llvm.dbg.value(metadata i8* %0, metadata !1021, metadata !DIExpression()), !dbg !987, !psr.id !1022
  br label %13, !dbg !1023, !psr.id !1024

13:                                               ; preds = %29, %12
  %.04 = phi i64 [ 1, %12 ], [ %.26, %29 ], !dbg !987, !psr.id !1025
  %.02 = phi i32 [ 0, %12 ], [ %32, %29 ], !dbg !987, !psr.id !1026, !ValueTainted !84
  %.01 = phi i64 [ %1, %12 ], [ %14, %29 ], !psr.id !1027
  %.0 = phi i32 [ 0, %12 ], [ %33, %29 ], !dbg !987, !psr.id !1028
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1019, metadata !DIExpression()), !dbg !987, !psr.id !1029
  call void @llvm.dbg.value(metadata i64 %.01, metadata !989, metadata !DIExpression()), !dbg !987, !psr.id !1030
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1017, metadata !DIExpression()), !dbg !987, !psr.id !1031
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1015, metadata !DIExpression()), !dbg !987, !psr.id !1032
  %14 = add i64 %.01, -1, !dbg !1033, !psr.id !1034
  call void @llvm.dbg.value(metadata i64 %14, metadata !989, metadata !DIExpression()), !dbg !987, !psr.id !1035
  %15 = icmp ugt i64 %.01, 0, !dbg !1036, !psr.id !1037
  br i1 %15, label %16, label %34, !dbg !1023, !psr.id !1038

16:                                               ; preds = %13
  %17 = icmp slt i32 %.0, 8, !dbg !1039, !psr.id !1042
  br i1 %17, label %18, label %29, !dbg !1043, !psr.id !1044

18:                                               ; preds = %16
  %19 = icmp ule i64 %.04, %9, !dbg !1045, !psr.id !1048, !ValueTainted !84
  br i1 %19, label %20, label %27, !dbg !1049, !psr.id !1050, !Tainted !97

20:                                               ; preds = %18
  %21 = add i64 %.04, 1, !dbg !1051, !psr.id !1053
  call void @llvm.dbg.value(metadata i64 %21, metadata !1015, metadata !DIExpression()), !dbg !987, !psr.id !1054
  %22 = getelementptr inbounds i16, i16* %2, i64 %.04, !dbg !1055, !psr.id !1056, !PointTainted !86
  %23 = load i16, i16* %22, align 2, !dbg !1055, !psr.id !1057, !ValueTainted !84
  %24 = zext i16 %23 to i32, !dbg !1058, !psr.id !1059, !ValueTainted !84
  %25 = shl i32 %24, %.0, !dbg !1060, !psr.id !1061, !ValueTainted !84
  %26 = add i32 %.02, %25, !dbg !1062, !psr.id !1063, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %26, metadata !1017, metadata !DIExpression()), !dbg !987, !psr.id !1064
  br label %27, !dbg !1065, !psr.id !1066

27:                                               ; preds = %20, %18
  %.15 = phi i64 [ %21, %20 ], [ %.04, %18 ], !dbg !987, !psr.id !1067
  %.13 = phi i32 [ %26, %20 ], [ %.02, %18 ], !dbg !987, !psr.id !1068, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1017, metadata !DIExpression()), !dbg !987, !psr.id !1069
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1015, metadata !DIExpression()), !dbg !987, !psr.id !1070
  %28 = add nsw i32 %.0, 15, !dbg !1071, !psr.id !1072
  call void @llvm.dbg.value(metadata i32 %28, metadata !1019, metadata !DIExpression()), !dbg !987, !psr.id !1073
  br label %29, !dbg !1074, !psr.id !1075

29:                                               ; preds = %27, %16
  %.26 = phi i64 [ %.15, %27 ], [ %.04, %16 ], !dbg !987, !psr.id !1076
  %.2 = phi i32 [ %.13, %27 ], [ %.02, %16 ], !dbg !987, !psr.id !1077, !ValueTainted !84
  %.1 = phi i32 [ %28, %27 ], [ %.0, %16 ], !dbg !987, !psr.id !1078
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1019, metadata !DIExpression()), !dbg !987, !psr.id !1079
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1017, metadata !DIExpression()), !dbg !987, !psr.id !1080
  call void @llvm.dbg.value(metadata i64 %.26, metadata !1015, metadata !DIExpression()), !dbg !987, !psr.id !1081
  %30 = trunc i32 %.2 to i8, !dbg !1082, !psr.id !1083, !ValueTainted !84
  %31 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !1084, !psr.id !1085, !PointTainted !86
  store i8 %30, i8* %31, align 1, !dbg !1086, !psr.id !1087
  %32 = lshr i32 %.2, 8, !dbg !1088, !psr.id !1089, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %32, metadata !1017, metadata !DIExpression()), !dbg !987, !psr.id !1090
  %33 = sub nsw i32 %.1, 8, !dbg !1091, !psr.id !1092
  call void @llvm.dbg.value(metadata i32 %33, metadata !1019, metadata !DIExpression()), !dbg !987, !psr.id !1093
  br label %13, !dbg !1023, !llvm.loop !1094, !psr.id !1096

34:                                               ; preds = %13, %11
  ret void, !dbg !1097, !psr.id !1098
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_from_monty(i16* %0, i16* %1, i16 zeroext %2) #0 !dbg !1099 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1102, metadata !DIExpression()), !dbg !1103, !psr.id !1104
  call void @llvm.dbg.value(metadata i16* %1, metadata !1105, metadata !DIExpression()), !dbg !1103, !psr.id !1106
  call void @llvm.dbg.value(metadata i16 %2, metadata !1107, metadata !DIExpression()), !dbg !1103, !psr.id !1108
  %4 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !1109, !psr.id !1110
  %5 = load i16, i16* %4, align 2, !dbg !1109, !psr.id !1111, !ValueTainted !84
  %6 = zext i16 %5 to i32, !dbg !1109, !psr.id !1112, !ValueTainted !84
  %7 = add nsw i32 %6, 15, !dbg !1113, !psr.id !1114, !ValueTainted !84
  %8 = ashr i32 %7, 4, !dbg !1115, !psr.id !1116, !ValueTainted !84
  %9 = sext i32 %8 to i64, !dbg !1117, !psr.id !1118, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %9, metadata !1119, metadata !DIExpression()), !dbg !1103, !psr.id !1120
  call void @llvm.dbg.value(metadata i64 0, metadata !1121, metadata !DIExpression()), !dbg !1103, !psr.id !1122
  br label %10, !dbg !1123, !psr.id !1125

10:                                               ; preds = %45, %3
  %.02 = phi i64 [ 0, %3 ], [ %46, %45 ], !dbg !1126, !psr.id !1127
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1121, metadata !DIExpression()), !dbg !1103, !psr.id !1128
  %11 = icmp ult i64 %.02, %9, !dbg !1129, !psr.id !1131, !ValueTainted !84
  br i1 %11, label %12, label %47, !dbg !1132, !psr.id !1133, !Tainted !97

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1134, !psr.id !1136, !PointTainted !86
  %14 = load i16, i16* %13, align 2, !dbg !1134, !psr.id !1137, !ValueTainted !84
  %15 = zext i16 %14 to i32, !dbg !1134, !psr.id !1138, !ValueTainted !84
  %16 = zext i16 %2 to i32, !dbg !1134, !psr.id !1139, !ValueTainted !84
  %17 = mul i32 %15, %16, !dbg !1134, !psr.id !1140, !ValueTainted !84
  %18 = and i32 %17, 32767, !dbg !1141, !psr.id !1142, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %18, metadata !1143, metadata !DIExpression()), !dbg !1144, !psr.id !1145
  call void @llvm.dbg.value(metadata i32 0, metadata !1146, metadata !DIExpression()), !dbg !1144, !psr.id !1147
  call void @llvm.dbg.value(metadata i64 0, metadata !1148, metadata !DIExpression()), !dbg !1103, !psr.id !1149
  br label %19, !dbg !1150, !psr.id !1152

19:                                               ; preds = %40, %12
  %.01 = phi i64 [ 0, %12 ], [ %41, %40 ], !dbg !1153, !psr.id !1154
  %.0 = phi i32 [ 0, %12 ], [ %33, %40 ], !dbg !1144, !psr.id !1155, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1146, metadata !DIExpression()), !dbg !1144, !psr.id !1156
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1148, metadata !DIExpression()), !dbg !1103, !psr.id !1157
  %20 = icmp ult i64 %.01, %9, !dbg !1158, !psr.id !1160, !ValueTainted !84
  br i1 %20, label %21, label %42, !dbg !1161, !psr.id !1162, !Tainted !97

21:                                               ; preds = %19
  %22 = add i64 %.01, 1, !dbg !1163, !psr.id !1165
  %23 = getelementptr inbounds i16, i16* %0, i64 %22, !dbg !1166, !psr.id !1167, !PointTainted !86
  %24 = load i16, i16* %23, align 2, !dbg !1166, !psr.id !1168, !ValueTainted !84
  %25 = zext i16 %24 to i32, !dbg !1169, !psr.id !1170, !ValueTainted !84
  %26 = add i64 %.01, 1, !dbg !1171, !psr.id !1172
  %27 = getelementptr inbounds i16, i16* %1, i64 %26, !dbg !1171, !psr.id !1173
  %28 = load i16, i16* %27, align 2, !dbg !1171, !psr.id !1174, !ValueTainted !84
  %29 = zext i16 %28 to i32, !dbg !1171, !psr.id !1175, !ValueTainted !84
  %30 = mul i32 %18, %29, !dbg !1171, !psr.id !1176, !ValueTainted !84
  %31 = add i32 %25, %30, !dbg !1177, !psr.id !1178, !ValueTainted !84
  %32 = add i32 %31, %.0, !dbg !1179, !psr.id !1180, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %32, metadata !1181, metadata !DIExpression()), !dbg !1182, !psr.id !1183
  %33 = lshr i32 %32, 15, !dbg !1184, !psr.id !1185, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %33, metadata !1146, metadata !DIExpression()), !dbg !1144, !psr.id !1186
  %34 = icmp ne i64 %.01, 0, !dbg !1187, !psr.id !1189
  br i1 %34, label %35, label %39, !dbg !1190, !psr.id !1191

35:                                               ; preds = %21
  %36 = and i32 %32, 32767, !dbg !1192, !psr.id !1194, !ValueTainted !84
  %37 = trunc i32 %36 to i16, !dbg !1195, !psr.id !1196, !ValueTainted !84
  %38 = getelementptr inbounds i16, i16* %0, i64 %.01, !dbg !1197, !psr.id !1198, !PointTainted !86
  store i16 %37, i16* %38, align 2, !dbg !1199, !psr.id !1200
  br label %39, !dbg !1201, !psr.id !1202

39:                                               ; preds = %35, %21
  br label %40, !dbg !1203, !psr.id !1204

40:                                               ; preds = %39
  %41 = add i64 %.01, 1, !dbg !1205, !psr.id !1206
  call void @llvm.dbg.value(metadata i64 %41, metadata !1148, metadata !DIExpression()), !dbg !1103, !psr.id !1207
  br label %19, !dbg !1208, !llvm.loop !1209, !psr.id !1211

42:                                               ; preds = %19
  %43 = trunc i32 %.0 to i16, !dbg !1212, !psr.id !1213, !ValueTainted !84
  %44 = getelementptr inbounds i16, i16* %0, i64 %9, !dbg !1214, !psr.id !1215, !ValueTainted !84, !PointTainted !86
  store i16 %43, i16* %44, align 2, !dbg !1216, !psr.id !1217, !Tainted !97
  br label %45, !dbg !1218, !psr.id !1219

45:                                               ; preds = %42
  %46 = add i64 %.02, 1, !dbg !1220, !psr.id !1221
  call void @llvm.dbg.value(metadata i64 %46, metadata !1121, metadata !DIExpression()), !dbg !1103, !psr.id !1222
  br label %10, !dbg !1223, !llvm.loop !1224, !psr.id !1226

47:                                               ; preds = %10
  %48 = call i32 @br_i15_sub(i16* %0, i16* %1, i32 0), !dbg !1227, !psr.id !1228
  %49 = call i32 @NOT.3(i32 %48), !dbg !1229, !psr.id !1230, !ValueTainted !84
  %50 = call i32 @br_i15_sub(i16* %0, i16* %1, i32 %49), !dbg !1231, !psr.id !1232, !ValueTainted !84
  ret void, !dbg !1233, !psr.id !1234
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.3(i32 %0) #0 !dbg !1235 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1236, metadata !DIExpression()), !dbg !1237, !psr.id !1238
  %2 = xor i32 %0, 1, !dbg !1239, !psr.id !1240, !ValueTainted !84
  ret i32 %2, !dbg !1241, !psr.id !1242
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_modpow_opt(i16* %0, i8* %1, i64 %2, i16* %3, i16 zeroext %4, i16* %5, i64 %6) #0 !dbg !1243 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1246, metadata !DIExpression()), !dbg !1247, !psr.id !1248
  call void @llvm.dbg.value(metadata i8* %1, metadata !1249, metadata !DIExpression()), !dbg !1247, !psr.id !1250
  call void @llvm.dbg.value(metadata i64 %2, metadata !1251, metadata !DIExpression()), !dbg !1247, !psr.id !1252
  call void @llvm.dbg.value(metadata i16* %3, metadata !1253, metadata !DIExpression()), !dbg !1247, !psr.id !1254
  call void @llvm.dbg.value(metadata i16 %4, metadata !1255, metadata !DIExpression()), !dbg !1247, !psr.id !1256
  call void @llvm.dbg.value(metadata i16* %5, metadata !1257, metadata !DIExpression()), !dbg !1247, !psr.id !1258
  call void @llvm.dbg.value(metadata i64 %6, metadata !1259, metadata !DIExpression()), !dbg !1247, !psr.id !1260
  %8 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1261, !psr.id !1262
  %9 = load i16, i16* %8, align 2, !dbg !1261, !psr.id !1263, !ValueTainted !84
  %10 = zext i16 %9 to i32, !dbg !1261, !psr.id !1264, !ValueTainted !84
  %11 = add nsw i32 %10, 31, !dbg !1265, !psr.id !1266, !ValueTainted !84
  %12 = ashr i32 %11, 4, !dbg !1267, !psr.id !1268, !ValueTainted !84
  %13 = sext i32 %12 to i64, !dbg !1269, !psr.id !1270, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %13, metadata !1271, metadata !DIExpression()), !dbg !1247, !psr.id !1272
  %14 = mul i64 %13, 2, !dbg !1273, !psr.id !1274, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %14, metadata !1275, metadata !DIExpression()), !dbg !1247, !psr.id !1276
  %15 = and i64 %13, 1, !dbg !1277, !psr.id !1278, !ValueTainted !84
  %16 = add i64 %13, %15, !dbg !1279, !psr.id !1280, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %16, metadata !1271, metadata !DIExpression()), !dbg !1247, !psr.id !1281
  call void @llvm.dbg.value(metadata i16* %5, metadata !1282, metadata !DIExpression()), !dbg !1247, !psr.id !1283
  %17 = getelementptr inbounds i16, i16* %5, i64 %16, !dbg !1284, !psr.id !1285, !ValueTainted !84
  call void @llvm.dbg.value(metadata i16* %17, metadata !1286, metadata !DIExpression()), !dbg !1247, !psr.id !1287
  %18 = shl i64 %16, 1, !dbg !1288, !psr.id !1290, !ValueTainted !84
  %19 = icmp ult i64 %6, %18, !dbg !1291, !psr.id !1292, !ValueTainted !84
  br i1 %19, label %20, label %21, !dbg !1293, !psr.id !1294, !Tainted !97

20:                                               ; preds = %7
  br label %136, !dbg !1295, !psr.id !1297

21:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 5, metadata !1298, metadata !DIExpression()), !dbg !1247, !psr.id !1299
  br label %22, !dbg !1300, !psr.id !1302

22:                                               ; preds = %32, %21
  %.08 = phi i32 [ 5, %21 ], [ %33, %32 ], !dbg !1303, !psr.id !1304
  call void @llvm.dbg.value(metadata i32 %.08, metadata !1298, metadata !DIExpression()), !dbg !1247, !psr.id !1305
  %23 = icmp sgt i32 %.08, 1, !dbg !1306, !psr.id !1308
  br i1 %23, label %24, label %34, !dbg !1309, !psr.id !1310

24:                                               ; preds = %22
  %25 = shl i32 1, %.08, !dbg !1311, !psr.id !1314
  %26 = add i32 %25, 1, !dbg !1315, !psr.id !1316
  %27 = zext i32 %26 to i64, !dbg !1317, !psr.id !1318
  %28 = mul i64 %27, %16, !dbg !1319, !psr.id !1320, !ValueTainted !84
  %29 = icmp ule i64 %28, %6, !dbg !1321, !psr.id !1322, !ValueTainted !84
  br i1 %29, label %30, label %31, !dbg !1323, !psr.id !1324, !Tainted !97

30:                                               ; preds = %24
  br label %34, !dbg !1325, !psr.id !1327

31:                                               ; preds = %24
  br label %32, !dbg !1328, !psr.id !1329

32:                                               ; preds = %31
  %33 = add nsw i32 %.08, -1, !dbg !1330, !psr.id !1331
  call void @llvm.dbg.value(metadata i32 %33, metadata !1298, metadata !DIExpression()), !dbg !1247, !psr.id !1332
  br label %22, !dbg !1333, !llvm.loop !1334, !psr.id !1336

34:                                               ; preds = %30, %22
  call void @br_i15_to_monty(i16* %0, i16* %3), !dbg !1337, !psr.id !1338
  %35 = icmp eq i32 %.08, 1, !dbg !1339, !psr.id !1341
  br i1 %35, label %36, label %39, !dbg !1342, !psr.id !1343

36:                                               ; preds = %34
  %37 = bitcast i16* %17 to i8*, !dbg !1344, !psr.id !1346, !ValueTainted !84
  %38 = bitcast i16* %0 to i8*, !dbg !1344, !psr.id !1347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %37, i8* align 2 %38, i64 %14, i1 false), !dbg !1344, !psr.id !1348, !CalledTainted !1349
  br label %54, !dbg !1350, !psr.id !1351

39:                                               ; preds = %34
  %40 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !1352, !psr.id !1354, !ValueTainted !84
  %41 = bitcast i16* %40 to i8*, !dbg !1355, !psr.id !1356, !ValueTainted !84
  %42 = bitcast i16* %0 to i8*, !dbg !1355, !psr.id !1357
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %41, i8* align 2 %42, i64 %14, i1 false), !dbg !1355, !psr.id !1358, !CalledTainted !1349
  %43 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !1359, !psr.id !1360, !ValueTainted !84
  call void @llvm.dbg.value(metadata i16* %43, metadata !1361, metadata !DIExpression()), !dbg !1247, !psr.id !1362
  call void @llvm.dbg.value(metadata i64 2, metadata !1363, metadata !DIExpression()), !dbg !1247, !psr.id !1364
  br label %44, !dbg !1365, !psr.id !1367

44:                                               ; preds = %51, %39
  %.018 = phi i16* [ %43, %39 ], [ %50, %51 ], !dbg !1368, !psr.id !1369, !ValueTainted !84
  %.016 = phi i64 [ 2, %39 ], [ %52, %51 ], !dbg !1370, !psr.id !1371
  call void @llvm.dbg.value(metadata i64 %.016, metadata !1363, metadata !DIExpression()), !dbg !1247, !psr.id !1372
  call void @llvm.dbg.value(metadata i16* %.018, metadata !1361, metadata !DIExpression()), !dbg !1247, !psr.id !1373
  %45 = shl i32 1, %.08, !dbg !1374, !psr.id !1376
  %46 = zext i32 %45 to i64, !dbg !1377, !psr.id !1378
  %47 = icmp ult i64 %.016, %46, !dbg !1379, !psr.id !1380
  br i1 %47, label %48, label %53, !dbg !1381, !psr.id !1382

48:                                               ; preds = %44
  %49 = getelementptr inbounds i16, i16* %.018, i64 %16, !dbg !1383, !psr.id !1385
  call void @br_i15_montymul(i16* %49, i16* %.018, i16* %0, i16* %3, i16 zeroext %4), !dbg !1386, !psr.id !1387
  %50 = getelementptr inbounds i16, i16* %.018, i64 %16, !dbg !1388, !psr.id !1389, !ValueTainted !84
  call void @llvm.dbg.value(metadata i16* %50, metadata !1361, metadata !DIExpression()), !dbg !1247, !psr.id !1390
  br label %51, !dbg !1391, !psr.id !1392

51:                                               ; preds = %48
  %52 = add i64 %.016, 1, !dbg !1393, !psr.id !1394
  call void @llvm.dbg.value(metadata i64 %52, metadata !1363, metadata !DIExpression()), !dbg !1247, !psr.id !1395
  br label %44, !dbg !1396, !llvm.loop !1397, !psr.id !1399

53:                                               ; preds = %44
  br label %54, !psr.id !1400

54:                                               ; preds = %53, %36
  %55 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1401, !psr.id !1402
  %56 = load i16, i16* %55, align 2, !dbg !1401, !psr.id !1403, !ValueTainted !84
  call void @br_i15_zero.4(i16* %0, i16 zeroext %56), !dbg !1404, !psr.id !1405
  %57 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1406, !psr.id !1407
  %58 = load i16, i16* %57, align 2, !dbg !1406, !psr.id !1408, !ValueTainted !84
  %59 = zext i16 %58 to i32, !dbg !1406, !psr.id !1409, !ValueTainted !84
  %60 = add nsw i32 %59, 15, !dbg !1410, !psr.id !1411, !ValueTainted !84
  %61 = ashr i32 %60, 4, !dbg !1412, !psr.id !1413, !ValueTainted !84
  %62 = sext i32 %61 to i64, !dbg !1414, !psr.id !1415, !ValueTainted !84
  %63 = getelementptr inbounds i16, i16* %0, i64 %62, !dbg !1414, !psr.id !1416, !ValueTainted !84, !PointTainted !86
  store i16 1, i16* %63, align 2, !dbg !1417, !psr.id !1418, !Tainted !97
  call void @br_i15_muladd_small(i16* %0, i16 zeroext 0, i16* %3), !dbg !1419, !psr.id !1420
  call void @llvm.dbg.value(metadata i32 0, metadata !1421, metadata !DIExpression()), !dbg !1247, !psr.id !1422
  call void @llvm.dbg.value(metadata i32 0, metadata !1423, metadata !DIExpression()), !dbg !1247, !psr.id !1424
  br label %64, !dbg !1425, !psr.id !1426

64:                                               ; preds = %131, %54
  %.012 = phi i32 [ 0, %54 ], [ %.214, %131 ], !dbg !1247, !psr.id !1427, !ValueTainted !84
  %.09 = phi i32 [ 0, %54 ], [ %90, %131 ], !dbg !1247, !psr.id !1428
  %.04 = phi i64 [ %2, %54 ], [ %.26, %131 ], !psr.id !1429
  %.02 = phi i8* [ %1, %54 ], [ %.2, %131 ], !psr.id !1430, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %.02, metadata !1249, metadata !DIExpression()), !dbg !1247, !psr.id !1431
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1251, metadata !DIExpression()), !dbg !1247, !psr.id !1432
  call void @llvm.dbg.value(metadata i32 %.09, metadata !1423, metadata !DIExpression()), !dbg !1247, !psr.id !1433
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1421, metadata !DIExpression()), !dbg !1247, !psr.id !1434
  %65 = icmp sgt i32 %.09, 0, !dbg !1435, !psr.id !1436
  br i1 %65, label %68, label %66, !dbg !1437, !psr.id !1438

66:                                               ; preds = %64
  %67 = icmp ugt i64 %.04, 0, !dbg !1439, !psr.id !1440
  br label %68, !dbg !1437, !psr.id !1441

68:                                               ; preds = %66, %64
  %69 = phi i1 [ true, %64 ], [ %67, %66 ], !psr.id !1442
  br i1 %69, label %70, label %135, !dbg !1425, !psr.id !1443

70:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 %.08, metadata !1444, metadata !DIExpression()), !dbg !1446, !psr.id !1447
  %71 = icmp slt i32 %.09, %.08, !dbg !1448, !psr.id !1450
  br i1 %71, label %72, label %84, !dbg !1451, !psr.id !1452

72:                                               ; preds = %70
  %73 = icmp ugt i64 %.04, 0, !dbg !1453, !psr.id !1456
  br i1 %73, label %74, label %82, !dbg !1457, !psr.id !1458

74:                                               ; preds = %72
  %75 = shl i32 %.012, 8, !dbg !1459, !psr.id !1461, !ValueTainted !84
  %76 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !1462, !psr.id !1463, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %76, metadata !1249, metadata !DIExpression()), !dbg !1247, !psr.id !1464
  %77 = load i8, i8* %.02, align 1, !dbg !1465, !psr.id !1466, !ValueTainted !84
  %78 = zext i8 %77 to i32, !dbg !1465, !psr.id !1467, !ValueTainted !84
  %79 = or i32 %75, %78, !dbg !1468, !psr.id !1469, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %79, metadata !1421, metadata !DIExpression()), !dbg !1247, !psr.id !1470
  %80 = add i64 %.04, -1, !dbg !1471, !psr.id !1472
  call void @llvm.dbg.value(metadata i64 %80, metadata !1251, metadata !DIExpression()), !dbg !1247, !psr.id !1473
  %81 = add nsw i32 %.09, 8, !dbg !1474, !psr.id !1475
  call void @llvm.dbg.value(metadata i32 %81, metadata !1423, metadata !DIExpression()), !dbg !1247, !psr.id !1476
  br label %83, !dbg !1477, !psr.id !1478

82:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 %.09, metadata !1444, metadata !DIExpression()), !dbg !1446, !psr.id !1479
  br label %83, !psr.id !1480

83:                                               ; preds = %82, %74
  %.113 = phi i32 [ %79, %74 ], [ %.012, %82 ], !dbg !1247, !psr.id !1481, !ValueTainted !84
  %.110 = phi i32 [ %81, %74 ], [ %.09, %82 ], !dbg !1247, !psr.id !1482
  %.15 = phi i64 [ %80, %74 ], [ %.04, %82 ], !psr.id !1483
  %.13 = phi i8* [ %76, %74 ], [ %.02, %82 ], !psr.id !1484, !PointTainted !86
  %.01 = phi i32 [ %.08, %74 ], [ %.09, %82 ], !dbg !1446, !psr.id !1485
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1444, metadata !DIExpression()), !dbg !1446, !psr.id !1486
  call void @llvm.dbg.value(metadata i8* %.13, metadata !1249, metadata !DIExpression()), !dbg !1247, !psr.id !1487
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1251, metadata !DIExpression()), !dbg !1247, !psr.id !1488
  call void @llvm.dbg.value(metadata i32 %.110, metadata !1423, metadata !DIExpression()), !dbg !1247, !psr.id !1489
  call void @llvm.dbg.value(metadata i32 %.113, metadata !1421, metadata !DIExpression()), !dbg !1247, !psr.id !1490
  br label %84, !dbg !1491, !psr.id !1492

84:                                               ; preds = %83, %70
  %.214 = phi i32 [ %.113, %83 ], [ %.012, %70 ], !dbg !1247, !psr.id !1493, !ValueTainted !84
  %.211 = phi i32 [ %.110, %83 ], [ %.09, %70 ], !dbg !1247, !psr.id !1494
  %.26 = phi i64 [ %.15, %83 ], [ %.04, %70 ], !psr.id !1495
  %.2 = phi i8* [ %.13, %83 ], [ %.02, %70 ], !psr.id !1496, !PointTainted !86
  %.1 = phi i32 [ %.01, %83 ], [ %.08, %70 ], !dbg !1497, !psr.id !1498
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1444, metadata !DIExpression()), !dbg !1446, !psr.id !1499
  call void @llvm.dbg.value(metadata i8* %.2, metadata !1249, metadata !DIExpression()), !dbg !1247, !psr.id !1500
  call void @llvm.dbg.value(metadata i64 %.26, metadata !1251, metadata !DIExpression()), !dbg !1247, !psr.id !1501
  call void @llvm.dbg.value(metadata i32 %.211, metadata !1423, metadata !DIExpression()), !dbg !1247, !psr.id !1502
  call void @llvm.dbg.value(metadata i32 %.214, metadata !1421, metadata !DIExpression()), !dbg !1247, !psr.id !1503
  %85 = sub nsw i32 %.211, %.1, !dbg !1504, !psr.id !1505
  %86 = lshr i32 %.214, %85, !dbg !1506, !psr.id !1507, !ValueTainted !84
  %87 = shl i32 1, %.1, !dbg !1508, !psr.id !1509
  %88 = sub i32 %87, 1, !dbg !1510, !psr.id !1511
  %89 = and i32 %86, %88, !dbg !1512, !psr.id !1513, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %89, metadata !1514, metadata !DIExpression()), !dbg !1446, !psr.id !1515
  %90 = sub nsw i32 %.211, %.1, !dbg !1516, !psr.id !1517
  call void @llvm.dbg.value(metadata i32 %90, metadata !1423, metadata !DIExpression()), !dbg !1247, !psr.id !1518
  call void @llvm.dbg.value(metadata i32 0, metadata !1519, metadata !DIExpression()), !dbg !1446, !psr.id !1520
  br label %91, !dbg !1521, !psr.id !1523

91:                                               ; preds = %96, %84
  %.07 = phi i32 [ 0, %84 ], [ %97, %96 ], !dbg !1524, !psr.id !1525
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1519, metadata !DIExpression()), !dbg !1446, !psr.id !1526
  %92 = icmp slt i32 %.07, %.1, !dbg !1527, !psr.id !1529
  br i1 %92, label %93, label %98, !dbg !1530, !psr.id !1531

93:                                               ; preds = %91
  call void @br_i15_montymul(i16* %5, i16* %0, i16* %0, i16* %3, i16 zeroext %4), !dbg !1532, !psr.id !1534
  %94 = bitcast i16* %0 to i8*, !dbg !1535, !psr.id !1536, !PointTainted !86
  %95 = bitcast i16* %5 to i8*, !dbg !1535, !psr.id !1537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %94, i8* align 2 %95, i64 %14, i1 false), !dbg !1535, !psr.id !1538, !CalledTainted !980
  br label %96, !dbg !1539, !psr.id !1540

96:                                               ; preds = %93
  %97 = add nsw i32 %.07, 1, !dbg !1541, !psr.id !1542
  call void @llvm.dbg.value(metadata i32 %97, metadata !1519, metadata !DIExpression()), !dbg !1446, !psr.id !1543
  br label %91, !dbg !1544, !llvm.loop !1545, !psr.id !1547

98:                                               ; preds = %91
  %99 = icmp sgt i32 %.08, 1, !dbg !1548, !psr.id !1550
  br i1 %99, label %100, label %131, !dbg !1551, !psr.id !1552

100:                                              ; preds = %98
  %101 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1553, !psr.id !1555
  %102 = load i16, i16* %101, align 2, !dbg !1553, !psr.id !1556, !ValueTainted !84
  call void @br_i15_zero.4(i16* %17, i16 zeroext %102), !dbg !1557, !psr.id !1558
  %103 = getelementptr inbounds i16, i16* %17, i64 %16, !dbg !1559, !psr.id !1560, !ValueTainted !84, !PointTainted !86
  call void @llvm.dbg.value(metadata i16* %103, metadata !1361, metadata !DIExpression()), !dbg !1247, !psr.id !1561
  call void @llvm.dbg.value(metadata i64 1, metadata !1363, metadata !DIExpression()), !dbg !1247, !psr.id !1562
  br label %104, !dbg !1563, !psr.id !1565

104:                                              ; preds = %128, %100
  %.119 = phi i16* [ %103, %100 ], [ %127, %128 ], !dbg !1566, !psr.id !1567, !ValueTainted !84, !PointTainted !86
  %.117 = phi i64 [ 1, %100 ], [ %129, %128 ], !dbg !1568, !psr.id !1569
  call void @llvm.dbg.value(metadata i64 %.117, metadata !1363, metadata !DIExpression()), !dbg !1247, !psr.id !1570
  call void @llvm.dbg.value(metadata i16* %.119, metadata !1361, metadata !DIExpression()), !dbg !1247, !psr.id !1571
  %105 = shl i32 1, %.1, !dbg !1572, !psr.id !1574
  %106 = zext i32 %105 to i64, !dbg !1575, !psr.id !1576
  %107 = icmp ult i64 %.117, %106, !dbg !1577, !psr.id !1578
  br i1 %107, label %108, label %130, !dbg !1579, !psr.id !1580

108:                                              ; preds = %104
  %109 = trunc i64 %.117 to i32, !dbg !1581, !psr.id !1583
  %110 = call i32 @EQ.5(i32 %109, i32 %89), !dbg !1584, !psr.id !1585, !ValueTainted !84
  %111 = sub i32 0, %110, !dbg !1586, !psr.id !1587, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %111, metadata !1588, metadata !DIExpression()), !dbg !1589, !psr.id !1590
  call void @llvm.dbg.value(metadata i64 1, metadata !1591, metadata !DIExpression()), !dbg !1247, !psr.id !1592
  br label %112, !dbg !1593, !psr.id !1595

112:                                              ; preds = %124, %108
  %.015 = phi i64 [ 1, %108 ], [ %125, %124 ], !dbg !1596, !psr.id !1597
  call void @llvm.dbg.value(metadata i64 %.015, metadata !1591, metadata !DIExpression()), !dbg !1247, !psr.id !1598
  %113 = icmp ult i64 %.015, %16, !dbg !1599, !psr.id !1601, !ValueTainted !84
  br i1 %113, label %114, label %126, !dbg !1602, !psr.id !1603, !Tainted !97

114:                                              ; preds = %112
  %115 = getelementptr inbounds i16, i16* %.119, i64 %.015, !dbg !1604, !psr.id !1606, !ValueTainted !84, !PointTainted !86
  %116 = load i16, i16* %115, align 2, !dbg !1604, !psr.id !1607, !Tainted !97, !ValueTainted !84
  %117 = zext i16 %116 to i32, !dbg !1604, !psr.id !1608, !ValueTainted !84
  %118 = and i32 %111, %117, !dbg !1609, !psr.id !1610, !ValueTainted !84
  %119 = getelementptr inbounds i16, i16* %17, i64 %.015, !dbg !1611, !psr.id !1612, !ValueTainted !84, !PointTainted !86
  %120 = load i16, i16* %119, align 2, !dbg !1613, !psr.id !1614, !Tainted !97, !ValueTainted !84
  %121 = zext i16 %120 to i32, !dbg !1613, !psr.id !1615, !ValueTainted !84
  %122 = or i32 %121, %118, !dbg !1613, !psr.id !1616, !ValueTainted !84
  %123 = trunc i32 %122 to i16, !dbg !1613, !psr.id !1617, !ValueTainted !84
  store i16 %123, i16* %119, align 2, !dbg !1613, !psr.id !1618, !Tainted !97
  br label %124, !dbg !1619, !psr.id !1620

124:                                              ; preds = %114
  %125 = add i64 %.015, 1, !dbg !1621, !psr.id !1622
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1247, !psr.id !1623
  br label %112, !dbg !1624, !llvm.loop !1625, !psr.id !1627

126:                                              ; preds = %112
  %127 = getelementptr inbounds i16, i16* %.119, i64 %16, !dbg !1628, !psr.id !1629, !ValueTainted !84, !PointTainted !86
  call void @llvm.dbg.value(metadata i16* %127, metadata !1361, metadata !DIExpression()), !dbg !1247, !psr.id !1630
  br label %128, !dbg !1631, !psr.id !1632

128:                                              ; preds = %126
  %129 = add i64 %.117, 1, !dbg !1633, !psr.id !1634
  call void @llvm.dbg.value(metadata i64 %129, metadata !1363, metadata !DIExpression()), !dbg !1247, !psr.id !1635
  br label %104, !dbg !1636, !llvm.loop !1637, !psr.id !1639

130:                                              ; preds = %104
  br label %131, !dbg !1640, !psr.id !1641

131:                                              ; preds = %130, %98
  call void @br_i15_montymul(i16* %5, i16* %0, i16* %17, i16* %3, i16 zeroext %4), !dbg !1642, !psr.id !1643
  %132 = call i32 @NEQ.6(i32 %89, i32 0), !dbg !1644, !psr.id !1645, !ValueTainted !84
  %133 = bitcast i16* %0 to i8*, !dbg !1646, !psr.id !1647, !PointTainted !86
  %134 = bitcast i16* %5 to i8*, !dbg !1648, !psr.id !1649
  call void @br_ccopy(i32 %132, i8* %133, i8* %134, i64 %14), !dbg !1650, !psr.id !1651
  br label %64, !dbg !1425, !llvm.loop !1652, !psr.id !1654

135:                                              ; preds = %68
  call void @br_i15_from_monty(i16* %0, i16* %3, i16 zeroext %4), !dbg !1655, !psr.id !1656
  br label %136, !dbg !1657, !psr.id !1658

136:                                              ; preds = %135, %20
  %.0 = phi i32 [ 0, %20 ], [ 1, %135 ], !dbg !1247, !psr.id !1659
  ret i32 %.0, !dbg !1660, !psr.id !1661
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.4(i16* %0, i16 zeroext %1) #0 !dbg !1662 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1663, metadata !DIExpression()), !dbg !1664, !psr.id !1665
  call void @llvm.dbg.value(metadata i16 %1, metadata !1666, metadata !DIExpression()), !dbg !1664, !psr.id !1667
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !1668, !psr.id !1669, !ValueTainted !84, !PointTainted !86
  call void @llvm.dbg.value(metadata i16* %3, metadata !1663, metadata !DIExpression()), !dbg !1664, !psr.id !1670
  store i16 %1, i16* %0, align 2, !dbg !1671, !psr.id !1672, !Tainted !97
  %4 = bitcast i16* %3 to i8*, !dbg !1673, !psr.id !1674, !ValueTainted !84, !PointTainted !86
  %5 = zext i16 %1 to i32, !dbg !1675, !psr.id !1676, !ValueTainted !84
  %6 = add nsw i32 %5, 15, !dbg !1677, !psr.id !1678, !ValueTainted !84
  %7 = ashr i32 %6, 4, !dbg !1679, !psr.id !1680, !ValueTainted !84
  %8 = sext i32 %7 to i64, !dbg !1681, !psr.id !1682, !ValueTainted !84
  %9 = mul i64 %8, 2, !dbg !1683, !psr.id !1684, !ValueTainted !84
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !1673, !psr.id !1685, !CalledTainted !1349
  ret void, !dbg !1686, !psr.id !1687
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.5(i32 %0, i32 %1) #0 !dbg !1688 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1689, metadata !DIExpression()), !dbg !1690, !psr.id !1691
  call void @llvm.dbg.value(metadata i32 %1, metadata !1692, metadata !DIExpression()), !dbg !1690, !psr.id !1693
  %3 = xor i32 %0, %1, !dbg !1694, !psr.id !1695, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !1696, metadata !DIExpression()), !dbg !1690, !psr.id !1697
  %4 = sub i32 0, %3, !dbg !1698, !psr.id !1699, !ValueTainted !84
  %5 = or i32 %3, %4, !dbg !1700, !psr.id !1701, !ValueTainted !84
  %6 = lshr i32 %5, 31, !dbg !1702, !psr.id !1703, !ValueTainted !84
  %7 = call i32 @NOT.7(i32 %6), !dbg !1704, !psr.id !1705, !ValueTainted !84
  ret i32 %7, !dbg !1706, !psr.id !1707
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.6(i32 %0, i32 %1) #0 !dbg !1708 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1709, metadata !DIExpression()), !dbg !1710, !psr.id !1711
  call void @llvm.dbg.value(metadata i32 %1, metadata !1712, metadata !DIExpression()), !dbg !1710, !psr.id !1713
  %3 = xor i32 %0, %1, !dbg !1714, !psr.id !1715, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !1716, metadata !DIExpression()), !dbg !1710, !psr.id !1717
  %4 = sub i32 0, %3, !dbg !1718, !psr.id !1719, !ValueTainted !84
  %5 = or i32 %3, %4, !dbg !1720, !psr.id !1721, !ValueTainted !84
  %6 = lshr i32 %5, 31, !dbg !1722, !psr.id !1723, !ValueTainted !84
  ret i32 %6, !dbg !1724, !psr.id !1725
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.7(i32 %0) #0 !dbg !1726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1727, metadata !DIExpression()), !dbg !1728, !psr.id !1729
  %2 = xor i32 %0, 1, !dbg !1730, !psr.id !1731, !ValueTainted !84
  ret i32 %2, !dbg !1732, !psr.id !1733
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_montymul(i16* %0, i16* %1, i16* %2, i16* %3, i16 zeroext %4) #0 !dbg !1734 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1737, metadata !DIExpression()), !dbg !1738, !psr.id !1739
  call void @llvm.dbg.value(metadata i16* %1, metadata !1740, metadata !DIExpression()), !dbg !1738, !psr.id !1741
  call void @llvm.dbg.value(metadata i16* %2, metadata !1742, metadata !DIExpression()), !dbg !1738, !psr.id !1743
  call void @llvm.dbg.value(metadata i16* %3, metadata !1744, metadata !DIExpression()), !dbg !1738, !psr.id !1745
  call void @llvm.dbg.value(metadata i16 %4, metadata !1746, metadata !DIExpression()), !dbg !1738, !psr.id !1747
  %6 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1748, !psr.id !1749
  %7 = load i16, i16* %6, align 2, !dbg !1748, !psr.id !1750, !ValueTainted !84
  %8 = zext i16 %7 to i32, !dbg !1748, !psr.id !1751, !ValueTainted !84
  %9 = add nsw i32 %8, 15, !dbg !1752, !psr.id !1753, !ValueTainted !84
  %10 = ashr i32 %9, 4, !dbg !1754, !psr.id !1755, !ValueTainted !84
  %11 = sext i32 %10 to i64, !dbg !1756, !psr.id !1757, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %11, metadata !1758, metadata !DIExpression()), !dbg !1738, !psr.id !1759
  %12 = and i64 %11, -4, !dbg !1760, !psr.id !1761, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %12, metadata !1762, metadata !DIExpression()), !dbg !1738, !psr.id !1763
  %13 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !1764, !psr.id !1765
  %14 = load i16, i16* %13, align 2, !dbg !1764, !psr.id !1766, !ValueTainted !84
  call void @br_i15_zero.10(i16* %0, i16 zeroext %14), !dbg !1767, !psr.id !1768
  call void @llvm.dbg.value(metadata i32 0, metadata !1769, metadata !DIExpression()), !dbg !1738, !psr.id !1770
  call void @llvm.dbg.value(metadata i64 0, metadata !1771, metadata !DIExpression()), !dbg !1738, !psr.id !1772
  br label %15, !dbg !1773, !psr.id !1775

15:                                               ; preds = %165, %5
  %.04 = phi i64 [ 0, %5 ], [ %166, %165 ], !dbg !1776, !psr.id !1777
  %.01 = phi i32 [ 0, %5 ], [ %164, %165 ], !dbg !1738, !psr.id !1778
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1769, metadata !DIExpression()), !dbg !1738, !psr.id !1779
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1771, metadata !DIExpression()), !dbg !1738, !psr.id !1780
  %16 = icmp ult i64 %.04, %11, !dbg !1781, !psr.id !1783, !ValueTainted !84
  br i1 %16, label %17, label %167, !dbg !1784, !psr.id !1785, !Tainted !97

17:                                               ; preds = %15
  %18 = add i64 %.04, 1, !dbg !1786, !psr.id !1788
  %19 = getelementptr inbounds i16, i16* %1, i64 %18, !dbg !1789, !psr.id !1790, !ValueTainted !84, !PointTainted !86
  %20 = load i16, i16* %19, align 2, !dbg !1789, !psr.id !1791, !Tainted !97, !ValueTainted !84
  %21 = zext i16 %20 to i32, !dbg !1789, !psr.id !1792, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %21, metadata !1793, metadata !DIExpression()), !dbg !1794, !psr.id !1795
  %22 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1796, !psr.id !1797, !ValueTainted !84, !PointTainted !86
  %23 = load i16, i16* %22, align 2, !dbg !1796, !psr.id !1798, !Tainted !97, !ValueTainted !84
  %24 = zext i16 %23 to i32, !dbg !1796, !psr.id !1799, !ValueTainted !84
  %25 = add i64 %.04, 1, !dbg !1796, !psr.id !1800
  %26 = getelementptr inbounds i16, i16* %1, i64 %25, !dbg !1796, !psr.id !1801, !ValueTainted !84, !PointTainted !86
  %27 = load i16, i16* %26, align 2, !dbg !1796, !psr.id !1802, !Tainted !97, !ValueTainted !84
  %28 = zext i16 %27 to i32, !dbg !1796, !psr.id !1803, !ValueTainted !84
  %29 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !1796, !psr.id !1804, !ValueTainted !84, !PointTainted !86
  %30 = load i16, i16* %29, align 2, !dbg !1796, !psr.id !1805, !Tainted !97, !ValueTainted !84
  %31 = zext i16 %30 to i32, !dbg !1796, !psr.id !1806, !ValueTainted !84
  %32 = mul i32 %28, %31, !dbg !1796, !psr.id !1807, !ValueTainted !84
  %33 = add i32 %24, %32, !dbg !1796, !psr.id !1808, !ValueTainted !84
  %34 = and i32 %33, 32767, !dbg !1796, !psr.id !1809, !ValueTainted !84
  %35 = zext i16 %4 to i32, !dbg !1796, !psr.id !1810, !ValueTainted !84
  %36 = mul i32 %34, %35, !dbg !1796, !psr.id !1811, !ValueTainted !84
  %37 = and i32 %36, 32767, !dbg !1812, !psr.id !1813, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %37, metadata !1814, metadata !DIExpression()), !dbg !1794, !psr.id !1815
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !1794, !psr.id !1817
  call void @llvm.dbg.value(metadata i64 0, metadata !1818, metadata !DIExpression()), !dbg !1738, !psr.id !1819
  br label %38, !dbg !1820, !psr.id !1822

38:                                               ; preds = %129, %17
  %.02 = phi i64 [ 0, %17 ], [ %130, %129 ], !dbg !1823, !psr.id !1824
  %.0 = phi i32 [ 0, %17 ], [ %124, %129 ], !dbg !1794, !psr.id !1825, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1816, metadata !DIExpression()), !dbg !1794, !psr.id !1826
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1818, metadata !DIExpression()), !dbg !1738, !psr.id !1827
  %39 = icmp ult i64 %.02, %12, !dbg !1828, !psr.id !1830, !ValueTainted !84
  br i1 %39, label %40, label %131, !dbg !1831, !psr.id !1832, !Tainted !97

40:                                               ; preds = %38
  %41 = add i64 %.02, 1, !dbg !1833, !psr.id !1835
  %42 = getelementptr inbounds i16, i16* %0, i64 %41, !dbg !1836, !psr.id !1837, !ValueTainted !84, !PointTainted !86
  %43 = load i16, i16* %42, align 2, !dbg !1836, !psr.id !1838, !Tainted !97, !ValueTainted !84
  %44 = zext i16 %43 to i32, !dbg !1836, !psr.id !1839, !ValueTainted !84
  %45 = add i64 %.02, 1, !dbg !1840, !psr.id !1841
  %46 = getelementptr inbounds i16, i16* %2, i64 %45, !dbg !1840, !psr.id !1842, !ValueTainted !84, !PointTainted !86
  %47 = load i16, i16* %46, align 2, !dbg !1840, !psr.id !1843, !Tainted !97, !ValueTainted !84
  %48 = zext i16 %47 to i32, !dbg !1840, !psr.id !1844, !ValueTainted !84
  %49 = mul i32 %21, %48, !dbg !1840, !psr.id !1845, !ValueTainted !84
  %50 = add i32 %44, %49, !dbg !1846, !psr.id !1847, !ValueTainted !84
  %51 = add i64 %.02, 1, !dbg !1848, !psr.id !1849
  %52 = getelementptr inbounds i16, i16* %3, i64 %51, !dbg !1848, !psr.id !1850
  %53 = load i16, i16* %52, align 2, !dbg !1848, !psr.id !1851, !ValueTainted !84
  %54 = zext i16 %53 to i32, !dbg !1848, !psr.id !1852, !ValueTainted !84
  %55 = mul i32 %37, %54, !dbg !1848, !psr.id !1853, !ValueTainted !84
  %56 = add i32 %50, %55, !dbg !1854, !psr.id !1855, !ValueTainted !84
  %57 = add i32 %56, %.0, !dbg !1856, !psr.id !1857, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %57, metadata !1858, metadata !DIExpression()), !dbg !1859, !psr.id !1860
  %58 = lshr i32 %57, 15, !dbg !1861, !psr.id !1862, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %58, metadata !1816, metadata !DIExpression()), !dbg !1794, !psr.id !1863
  %59 = and i32 %57, 32767, !dbg !1864, !psr.id !1865, !ValueTainted !84
  %60 = trunc i32 %59 to i16, !dbg !1866, !psr.id !1867, !ValueTainted !84
  %61 = add i64 %.02, 0, !dbg !1868, !psr.id !1869
  %62 = getelementptr inbounds i16, i16* %0, i64 %61, !dbg !1870, !psr.id !1871, !ValueTainted !84, !PointTainted !86
  store i16 %60, i16* %62, align 2, !dbg !1872, !psr.id !1873, !Tainted !97
  %63 = add i64 %.02, 2, !dbg !1874, !psr.id !1875
  %64 = getelementptr inbounds i16, i16* %0, i64 %63, !dbg !1876, !psr.id !1877, !ValueTainted !84, !PointTainted !86
  %65 = load i16, i16* %64, align 2, !dbg !1876, !psr.id !1878, !Tainted !97, !ValueTainted !84
  %66 = zext i16 %65 to i32, !dbg !1876, !psr.id !1879, !ValueTainted !84
  %67 = add i64 %.02, 2, !dbg !1880, !psr.id !1881
  %68 = getelementptr inbounds i16, i16* %2, i64 %67, !dbg !1880, !psr.id !1882, !ValueTainted !84, !PointTainted !86
  %69 = load i16, i16* %68, align 2, !dbg !1880, !psr.id !1883, !Tainted !97, !ValueTainted !84
  %70 = zext i16 %69 to i32, !dbg !1880, !psr.id !1884, !ValueTainted !84
  %71 = mul i32 %21, %70, !dbg !1880, !psr.id !1885, !ValueTainted !84
  %72 = add i32 %66, %71, !dbg !1886, !psr.id !1887, !ValueTainted !84
  %73 = add i64 %.02, 2, !dbg !1888, !psr.id !1889
  %74 = getelementptr inbounds i16, i16* %3, i64 %73, !dbg !1888, !psr.id !1890
  %75 = load i16, i16* %74, align 2, !dbg !1888, !psr.id !1891, !ValueTainted !84
  %76 = zext i16 %75 to i32, !dbg !1888, !psr.id !1892, !ValueTainted !84
  %77 = mul i32 %37, %76, !dbg !1888, !psr.id !1893, !ValueTainted !84
  %78 = add i32 %72, %77, !dbg !1894, !psr.id !1895, !ValueTainted !84
  %79 = add i32 %78, %58, !dbg !1896, !psr.id !1897, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %79, metadata !1858, metadata !DIExpression()), !dbg !1859, !psr.id !1898
  %80 = lshr i32 %79, 15, !dbg !1899, !psr.id !1900, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %80, metadata !1816, metadata !DIExpression()), !dbg !1794, !psr.id !1901
  %81 = and i32 %79, 32767, !dbg !1902, !psr.id !1903, !ValueTainted !84
  %82 = trunc i32 %81 to i16, !dbg !1904, !psr.id !1905, !ValueTainted !84
  %83 = add i64 %.02, 1, !dbg !1906, !psr.id !1907
  %84 = getelementptr inbounds i16, i16* %0, i64 %83, !dbg !1908, !psr.id !1909, !ValueTainted !84, !PointTainted !86
  store i16 %82, i16* %84, align 2, !dbg !1910, !psr.id !1911, !Tainted !97
  %85 = add i64 %.02, 3, !dbg !1912, !psr.id !1913
  %86 = getelementptr inbounds i16, i16* %0, i64 %85, !dbg !1914, !psr.id !1915, !ValueTainted !84, !PointTainted !86
  %87 = load i16, i16* %86, align 2, !dbg !1914, !psr.id !1916, !Tainted !97, !ValueTainted !84
  %88 = zext i16 %87 to i32, !dbg !1914, !psr.id !1917, !ValueTainted !84
  %89 = add i64 %.02, 3, !dbg !1918, !psr.id !1919
  %90 = getelementptr inbounds i16, i16* %2, i64 %89, !dbg !1918, !psr.id !1920, !ValueTainted !84, !PointTainted !86
  %91 = load i16, i16* %90, align 2, !dbg !1918, !psr.id !1921, !Tainted !97, !ValueTainted !84
  %92 = zext i16 %91 to i32, !dbg !1918, !psr.id !1922, !ValueTainted !84
  %93 = mul i32 %21, %92, !dbg !1918, !psr.id !1923, !ValueTainted !84
  %94 = add i32 %88, %93, !dbg !1924, !psr.id !1925, !ValueTainted !84
  %95 = add i64 %.02, 3, !dbg !1926, !psr.id !1927
  %96 = getelementptr inbounds i16, i16* %3, i64 %95, !dbg !1926, !psr.id !1928
  %97 = load i16, i16* %96, align 2, !dbg !1926, !psr.id !1929, !ValueTainted !84
  %98 = zext i16 %97 to i32, !dbg !1926, !psr.id !1930, !ValueTainted !84
  %99 = mul i32 %37, %98, !dbg !1926, !psr.id !1931, !ValueTainted !84
  %100 = add i32 %94, %99, !dbg !1932, !psr.id !1933, !ValueTainted !84
  %101 = add i32 %100, %80, !dbg !1934, !psr.id !1935, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %101, metadata !1858, metadata !DIExpression()), !dbg !1859, !psr.id !1936
  %102 = lshr i32 %101, 15, !dbg !1937, !psr.id !1938, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %102, metadata !1816, metadata !DIExpression()), !dbg !1794, !psr.id !1939
  %103 = and i32 %101, 32767, !dbg !1940, !psr.id !1941, !ValueTainted !84
  %104 = trunc i32 %103 to i16, !dbg !1942, !psr.id !1943, !ValueTainted !84
  %105 = add i64 %.02, 2, !dbg !1944, !psr.id !1945
  %106 = getelementptr inbounds i16, i16* %0, i64 %105, !dbg !1946, !psr.id !1947, !ValueTainted !84, !PointTainted !86
  store i16 %104, i16* %106, align 2, !dbg !1948, !psr.id !1949, !Tainted !97
  %107 = add i64 %.02, 4, !dbg !1950, !psr.id !1951
  %108 = getelementptr inbounds i16, i16* %0, i64 %107, !dbg !1952, !psr.id !1953, !ValueTainted !84, !PointTainted !86
  %109 = load i16, i16* %108, align 2, !dbg !1952, !psr.id !1954, !Tainted !97, !ValueTainted !84
  %110 = zext i16 %109 to i32, !dbg !1952, !psr.id !1955, !ValueTainted !84
  %111 = add i64 %.02, 4, !dbg !1956, !psr.id !1957
  %112 = getelementptr inbounds i16, i16* %2, i64 %111, !dbg !1956, !psr.id !1958, !ValueTainted !84, !PointTainted !86
  %113 = load i16, i16* %112, align 2, !dbg !1956, !psr.id !1959, !Tainted !97, !ValueTainted !84
  %114 = zext i16 %113 to i32, !dbg !1956, !psr.id !1960, !ValueTainted !84
  %115 = mul i32 %21, %114, !dbg !1956, !psr.id !1961, !ValueTainted !84
  %116 = add i32 %110, %115, !dbg !1962, !psr.id !1963, !ValueTainted !84
  %117 = add i64 %.02, 4, !dbg !1964, !psr.id !1965
  %118 = getelementptr inbounds i16, i16* %3, i64 %117, !dbg !1964, !psr.id !1966
  %119 = load i16, i16* %118, align 2, !dbg !1964, !psr.id !1967, !ValueTainted !84
  %120 = zext i16 %119 to i32, !dbg !1964, !psr.id !1968, !ValueTainted !84
  %121 = mul i32 %37, %120, !dbg !1964, !psr.id !1969, !ValueTainted !84
  %122 = add i32 %116, %121, !dbg !1970, !psr.id !1971, !ValueTainted !84
  %123 = add i32 %122, %102, !dbg !1972, !psr.id !1973, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %123, metadata !1858, metadata !DIExpression()), !dbg !1859, !psr.id !1974
  %124 = lshr i32 %123, 15, !dbg !1975, !psr.id !1976, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %124, metadata !1816, metadata !DIExpression()), !dbg !1794, !psr.id !1977
  %125 = and i32 %123, 32767, !dbg !1978, !psr.id !1979, !ValueTainted !84
  %126 = trunc i32 %125 to i16, !dbg !1980, !psr.id !1981, !ValueTainted !84
  %127 = add i64 %.02, 3, !dbg !1982, !psr.id !1983
  %128 = getelementptr inbounds i16, i16* %0, i64 %127, !dbg !1984, !psr.id !1349, !ValueTainted !84, !PointTainted !86
  store i16 %126, i16* %128, align 2, !dbg !1985, !psr.id !1986, !Tainted !97
  br label %129, !dbg !1987, !psr.id !1988

129:                                              ; preds = %40
  %130 = add i64 %.02, 4, !dbg !1989, !psr.id !1990
  call void @llvm.dbg.value(metadata i64 %130, metadata !1818, metadata !DIExpression()), !dbg !1738, !psr.id !1991
  br label %38, !dbg !1992, !llvm.loop !1993, !psr.id !1995

131:                                              ; preds = %38
  br label %132, !dbg !1996, !psr.id !1997

132:                                              ; preds = %157, %131
  %.13 = phi i64 [ %.02, %131 ], [ %158, %157 ], !dbg !1794, !psr.id !1998
  %.1 = phi i32 [ %.0, %131 ], [ %152, %157 ], !dbg !1794, !psr.id !1999, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1816, metadata !DIExpression()), !dbg !1794, !psr.id !2000
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1818, metadata !DIExpression()), !dbg !1738, !psr.id !2001
  %133 = icmp ult i64 %.13, %11, !dbg !2002, !psr.id !2005, !ValueTainted !84
  br i1 %133, label %134, label %159, !dbg !2006, !psr.id !2007, !Tainted !97

134:                                              ; preds = %132
  %135 = add i64 %.13, 1, !dbg !2008, !psr.id !2010
  %136 = getelementptr inbounds i16, i16* %0, i64 %135, !dbg !2011, !psr.id !2012, !ValueTainted !84, !PointTainted !86
  %137 = load i16, i16* %136, align 2, !dbg !2011, !psr.id !2013, !Tainted !97, !ValueTainted !84
  %138 = zext i16 %137 to i32, !dbg !2011, !psr.id !2014, !ValueTainted !84
  %139 = add i64 %.13, 1, !dbg !2015, !psr.id !2016
  %140 = getelementptr inbounds i16, i16* %2, i64 %139, !dbg !2015, !psr.id !2017, !ValueTainted !84, !PointTainted !86
  %141 = load i16, i16* %140, align 2, !dbg !2015, !psr.id !2018, !Tainted !97, !ValueTainted !84
  %142 = zext i16 %141 to i32, !dbg !2015, !psr.id !2019, !ValueTainted !84
  %143 = mul i32 %21, %142, !dbg !2015, !psr.id !2020, !ValueTainted !84
  %144 = add i32 %138, %143, !dbg !2021, !psr.id !2022, !ValueTainted !84
  %145 = add i64 %.13, 1, !dbg !2023, !psr.id !2024
  %146 = getelementptr inbounds i16, i16* %3, i64 %145, !dbg !2023, !psr.id !2025
  %147 = load i16, i16* %146, align 2, !dbg !2023, !psr.id !2026, !ValueTainted !84
  %148 = zext i16 %147 to i32, !dbg !2023, !psr.id !2027, !ValueTainted !84
  %149 = mul i32 %37, %148, !dbg !2023, !psr.id !2028, !ValueTainted !84
  %150 = add i32 %144, %149, !dbg !2029, !psr.id !2030, !ValueTainted !84
  %151 = add i32 %150, %.1, !dbg !2031, !psr.id !2032, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %151, metadata !2033, metadata !DIExpression()), !dbg !2034, !psr.id !2035
  %152 = lshr i32 %151, 15, !dbg !2036, !psr.id !2037, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %152, metadata !1816, metadata !DIExpression()), !dbg !1794, !psr.id !2038
  %153 = and i32 %151, 32767, !dbg !2039, !psr.id !2040, !ValueTainted !84
  %154 = trunc i32 %153 to i16, !dbg !2041, !psr.id !2042, !ValueTainted !84
  %155 = add i64 %.13, 0, !dbg !2043, !psr.id !2044
  %156 = getelementptr inbounds i16, i16* %0, i64 %155, !dbg !2045, !psr.id !2046, !ValueTainted !84, !PointTainted !86
  store i16 %154, i16* %156, align 2, !dbg !2047, !psr.id !2048, !Tainted !97
  br label %157, !dbg !2049, !psr.id !2050

157:                                              ; preds = %134
  %158 = add i64 %.13, 1, !dbg !2051, !psr.id !2052
  call void @llvm.dbg.value(metadata i64 %158, metadata !1818, metadata !DIExpression()), !dbg !1738, !psr.id !2053
  br label %132, !dbg !2054, !llvm.loop !2055, !psr.id !2057

159:                                              ; preds = %132
  %160 = add i32 %.01, %.1, !dbg !2058, !psr.id !2059, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %160, metadata !2060, metadata !DIExpression()), !dbg !1794, !psr.id !2061
  %161 = and i32 %160, 32767, !dbg !2062, !psr.id !2063, !ValueTainted !84
  %162 = trunc i32 %161 to i16, !dbg !2064, !psr.id !2065, !ValueTainted !84
  %163 = getelementptr inbounds i16, i16* %0, i64 %11, !dbg !2066, !psr.id !2067, !ValueTainted !84, !PointTainted !86
  store i16 %162, i16* %163, align 2, !dbg !2068, !psr.id !2069, !Tainted !97
  %164 = lshr i32 %160, 15, !dbg !2070, !psr.id !2071, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %164, metadata !1769, metadata !DIExpression()), !dbg !1738, !psr.id !2072
  br label %165, !dbg !2073, !psr.id !2074

165:                                              ; preds = %159
  %166 = add i64 %.04, 1, !dbg !2075, !psr.id !2076
  call void @llvm.dbg.value(metadata i64 %166, metadata !1771, metadata !DIExpression()), !dbg !1738, !psr.id !2077
  br label %15, !dbg !2078, !llvm.loop !2079, !psr.id !2081

167:                                              ; preds = %15
  %168 = getelementptr inbounds i16, i16* %3, i64 0, !dbg !2082, !psr.id !2083
  %169 = load i16, i16* %168, align 2, !dbg !2082, !psr.id !2084, !ValueTainted !84
  %170 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !2085, !psr.id !2086, !ValueTainted !84, !PointTainted !86
  store i16 %169, i16* %170, align 2, !dbg !2087, !psr.id !2088, !Tainted !97
  %171 = call i32 @NEQ.11(i32 %.01, i32 0), !dbg !2089, !psr.id !2090, !ValueTainted !84
  %172 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 0), !dbg !2091, !psr.id !2092, !ValueTainted !84
  %173 = call i32 @NOT.12(i32 %172), !dbg !2093, !psr.id !2094, !ValueTainted !84
  %174 = or i32 %171, %173, !dbg !2095, !psr.id !2096, !ValueTainted !84
  %175 = call i32 @br_i15_sub(i16* %0, i16* %3, i32 %174), !dbg !2097, !psr.id !2098, !ValueTainted !84
  ret void, !dbg !2099, !psr.id !2100
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.10(i16* %0, i16 zeroext %1) #0 !dbg !2101 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !2102, metadata !DIExpression()), !dbg !2103, !psr.id !2104
  call void @llvm.dbg.value(metadata i16 %1, metadata !2105, metadata !DIExpression()), !dbg !2103, !psr.id !2106
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !2107, !psr.id !2108, !ValueTainted !84, !PointTainted !86
  call void @llvm.dbg.value(metadata i16* %3, metadata !2102, metadata !DIExpression()), !dbg !2103, !psr.id !2109
  store i16 %1, i16* %0, align 2, !dbg !2110, !psr.id !2111, !Tainted !97
  %4 = bitcast i16* %3 to i8*, !dbg !2112, !psr.id !2113, !ValueTainted !84, !PointTainted !86
  %5 = zext i16 %1 to i32, !dbg !2114, !psr.id !2115, !ValueTainted !84
  %6 = add nsw i32 %5, 15, !dbg !2116, !psr.id !2117, !ValueTainted !84
  %7 = ashr i32 %6, 4, !dbg !2118, !psr.id !2119, !ValueTainted !84
  %8 = sext i32 %7 to i64, !dbg !2120, !psr.id !2121, !ValueTainted !84
  %9 = mul i64 %8, 2, !dbg !2122, !psr.id !2123, !ValueTainted !84
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !2112, !psr.id !2124, !CalledTainted !1349
  ret void, !dbg !2125, !psr.id !2126
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NEQ.11(i32 %0, i32 %1) #0 !dbg !2127 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2128, metadata !DIExpression()), !dbg !2129, !psr.id !2130
  call void @llvm.dbg.value(metadata i32 %1, metadata !2131, metadata !DIExpression()), !dbg !2129, !psr.id !2132
  %3 = xor i32 %0, %1, !dbg !2133, !psr.id !2134, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !2135, metadata !DIExpression()), !dbg !2129, !psr.id !2136
  %4 = sub i32 0, %3, !dbg !2137, !psr.id !2138, !ValueTainted !84
  %5 = or i32 %3, %4, !dbg !2139, !psr.id !2140, !ValueTainted !84
  %6 = lshr i32 %5, 31, !dbg !2141, !psr.id !2142, !ValueTainted !84
  ret i32 %6, !dbg !2143, !psr.id !2144
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.12(i32 %0) #0 !dbg !2145 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2146, metadata !DIExpression()), !dbg !2147, !psr.id !2148
  %2 = xor i32 %0, 1, !dbg !2149, !psr.id !2150, !ValueTainted !84
  ret i32 %2, !dbg !2151, !psr.id !2152
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_mulacc(i16* %0, i16* %1, i16* %2) #0 !dbg !2153 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !2156, metadata !DIExpression()), !dbg !2157, !psr.id !2158
  call void @llvm.dbg.value(metadata i16* %1, metadata !2159, metadata !DIExpression()), !dbg !2157, !psr.id !2160
  call void @llvm.dbg.value(metadata i16* %2, metadata !2161, metadata !DIExpression()), !dbg !2157, !psr.id !2162
  %4 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !2163, !psr.id !2164
  %5 = load i16, i16* %4, align 2, !dbg !2163, !psr.id !2165, !ValueTainted !84
  %6 = zext i16 %5 to i32, !dbg !2163, !psr.id !2166, !ValueTainted !84
  %7 = add nsw i32 %6, 15, !dbg !2167, !psr.id !2168, !ValueTainted !84
  %8 = ashr i32 %7, 4, !dbg !2169, !psr.id !2170, !ValueTainted !84
  %9 = sext i32 %8 to i64, !dbg !2171, !psr.id !2172, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %9, metadata !2173, metadata !DIExpression()), !dbg !2157, !psr.id !2174
  %10 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !2175, !psr.id !2176, !PointTainted !86
  %11 = load i16, i16* %10, align 2, !dbg !2175, !psr.id !2177, !ValueTainted !84
  %12 = zext i16 %11 to i32, !dbg !2175, !psr.id !2178, !ValueTainted !84
  %13 = add nsw i32 %12, 15, !dbg !2179, !psr.id !2180, !ValueTainted !84
  %14 = ashr i32 %13, 4, !dbg !2181, !psr.id !2182, !ValueTainted !84
  %15 = sext i32 %14 to i64, !dbg !2183, !psr.id !2184, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %15, metadata !2185, metadata !DIExpression()), !dbg !2157, !psr.id !2186
  %16 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !2187, !psr.id !2188
  %17 = load i16, i16* %16, align 2, !dbg !2187, !psr.id !2189, !ValueTainted !84
  %18 = zext i16 %17 to i32, !dbg !2187, !psr.id !2190, !ValueTainted !84
  %19 = and i32 %18, 15, !dbg !2191, !psr.id !2192, !ValueTainted !84
  %20 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !2193, !psr.id !2194, !PointTainted !86
  %21 = load i16, i16* %20, align 2, !dbg !2193, !psr.id !2195, !ValueTainted !84
  %22 = zext i16 %21 to i32, !dbg !2193, !psr.id !2196, !ValueTainted !84
  %23 = and i32 %22, 15, !dbg !2197, !psr.id !2198, !ValueTainted !84
  %24 = add nsw i32 %19, %23, !dbg !2199, !psr.id !2200, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %24, metadata !2201, metadata !DIExpression()), !dbg !2157, !psr.id !2202
  %25 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !2203, !psr.id !2204
  %26 = load i16, i16* %25, align 2, !dbg !2203, !psr.id !2205, !ValueTainted !84
  %27 = zext i16 %26 to i32, !dbg !2203, !psr.id !2206, !ValueTainted !84
  %28 = ashr i32 %27, 4, !dbg !2207, !psr.id !2208, !ValueTainted !84
  %29 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !2209, !psr.id !2210, !PointTainted !86
  %30 = load i16, i16* %29, align 2, !dbg !2209, !psr.id !2211, !ValueTainted !84
  %31 = zext i16 %30 to i32, !dbg !2209, !psr.id !2212, !ValueTainted !84
  %32 = ashr i32 %31, 4, !dbg !2213, !psr.id !2214, !ValueTainted !84
  %33 = add nsw i32 %28, %32, !dbg !2215, !psr.id !2216, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %33, metadata !2217, metadata !DIExpression()), !dbg !2157, !psr.id !2218
  %34 = shl i32 %33, 4, !dbg !2219, !psr.id !2220, !ValueTainted !84
  %35 = add i32 %34, %24, !dbg !2221, !psr.id !2222, !ValueTainted !84
  %36 = sub i32 %24, 15, !dbg !2223, !psr.id !2224, !ValueTainted !84
  %37 = xor i32 %36, -1, !dbg !2225, !psr.id !2226, !ValueTainted !84
  %38 = lshr i32 %37, 31, !dbg !2227, !psr.id !2228, !ValueTainted !84
  %39 = add i32 %35, %38, !dbg !2229, !psr.id !2230, !ValueTainted !84
  %40 = trunc i32 %39 to i16, !dbg !2231, !psr.id !2232, !ValueTainted !84
  %41 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !2233, !psr.id !2234, !PointTainted !86
  store i16 %40, i16* %41, align 2, !dbg !2235, !psr.id !2236
  call void @llvm.dbg.value(metadata i64 0, metadata !2237, metadata !DIExpression()), !dbg !2157, !psr.id !2238
  br label %42, !dbg !2239, !psr.id !2241

42:                                               ; preds = %77, %3
  %.02 = phi i64 [ 0, %3 ], [ %78, %77 ], !dbg !2242, !psr.id !2243
  call void @llvm.dbg.value(metadata i64 %.02, metadata !2237, metadata !DIExpression()), !dbg !2157, !psr.id !2244
  %43 = icmp ult i64 %.02, %15, !dbg !2245, !psr.id !2247, !ValueTainted !84
  br i1 %43, label %44, label %79, !dbg !2248, !psr.id !2249, !Tainted !97

44:                                               ; preds = %42
  %45 = add i64 1, %.02, !dbg !2250, !psr.id !2252
  %46 = getelementptr inbounds i16, i16* %2, i64 %45, !dbg !2253, !psr.id !2254, !PointTainted !86
  %47 = load i16, i16* %46, align 2, !dbg !2253, !psr.id !2255, !ValueTainted !84
  %48 = zext i16 %47 to i32, !dbg !2253, !psr.id !2256, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %48, metadata !2257, metadata !DIExpression()), !dbg !2258, !psr.id !2259
  call void @llvm.dbg.value(metadata i32 0, metadata !2260, metadata !DIExpression()), !dbg !2258, !psr.id !2261
  call void @llvm.dbg.value(metadata i64 0, metadata !2262, metadata !DIExpression()), !dbg !2258, !psr.id !2263
  br label %49, !dbg !2264, !psr.id !2266

49:                                               ; preds = %70, %44
  %.01 = phi i64 [ 0, %44 ], [ %71, %70 ], !dbg !2267, !psr.id !2268
  %.0 = phi i32 [ 0, %44 ], [ %64, %70 ], !dbg !2258, !psr.id !2269, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2260, metadata !DIExpression()), !dbg !2258, !psr.id !2270
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2262, metadata !DIExpression()), !dbg !2258, !psr.id !2271
  %50 = icmp ult i64 %.01, %9, !dbg !2272, !psr.id !2274, !ValueTainted !84
  br i1 %50, label %51, label %72, !dbg !2275, !psr.id !2276, !Tainted !97

51:                                               ; preds = %49
  %52 = add i64 1, %.02, !dbg !2277, !psr.id !2279
  %53 = add i64 %52, %.01, !dbg !2280, !psr.id !2281
  %54 = getelementptr inbounds i16, i16* %0, i64 %53, !dbg !2282, !psr.id !2283, !PointTainted !86
  %55 = load i16, i16* %54, align 2, !dbg !2282, !psr.id !2284, !ValueTainted !84
  %56 = zext i16 %55 to i32, !dbg !2285, !psr.id !2286, !ValueTainted !84
  %57 = add i64 1, %.01, !dbg !2287, !psr.id !2288
  %58 = getelementptr inbounds i16, i16* %1, i64 %57, !dbg !2287, !psr.id !2289
  %59 = load i16, i16* %58, align 2, !dbg !2287, !psr.id !2290, !ValueTainted !84
  %60 = zext i16 %59 to i32, !dbg !2287, !psr.id !2291, !ValueTainted !84
  %61 = mul i32 %48, %60, !dbg !2287, !psr.id !2292, !ValueTainted !84
  %62 = add i32 %56, %61, !dbg !2293, !psr.id !2294, !ValueTainted !84
  %63 = add i32 %62, %.0, !dbg !2295, !psr.id !2296, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %63, metadata !2297, metadata !DIExpression()), !dbg !2298, !psr.id !2299
  %64 = lshr i32 %63, 15, !dbg !2300, !psr.id !2301, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %64, metadata !2260, metadata !DIExpression()), !dbg !2258, !psr.id !2302
  %65 = and i32 %63, 32767, !dbg !2303, !psr.id !2304, !ValueTainted !84
  %66 = trunc i32 %65 to i16, !dbg !2305, !psr.id !2306, !ValueTainted !84
  %67 = add i64 1, %.02, !dbg !2307, !psr.id !2308
  %68 = add i64 %67, %.01, !dbg !2309, !psr.id !2310
  %69 = getelementptr inbounds i16, i16* %0, i64 %68, !dbg !2311, !psr.id !2312, !PointTainted !86
  store i16 %66, i16* %69, align 2, !dbg !2313, !psr.id !2314
  br label %70, !dbg !2315, !psr.id !2316

70:                                               ; preds = %51
  %71 = add i64 %.01, 1, !dbg !2317, !psr.id !2318
  call void @llvm.dbg.value(metadata i64 %71, metadata !2262, metadata !DIExpression()), !dbg !2258, !psr.id !2319
  br label %49, !dbg !2320, !llvm.loop !2321, !psr.id !2323

72:                                               ; preds = %49
  %73 = trunc i32 %.0 to i16, !dbg !2324, !psr.id !2325, !ValueTainted !84
  %74 = add i64 1, %.02, !dbg !2326, !psr.id !2327
  %75 = add i64 %74, %9, !dbg !2328, !psr.id !2329, !ValueTainted !84
  %76 = getelementptr inbounds i16, i16* %0, i64 %75, !dbg !2330, !psr.id !2331, !ValueTainted !84, !PointTainted !86
  store i16 %73, i16* %76, align 2, !dbg !2332, !psr.id !2333, !Tainted !97
  br label %77, !dbg !2334, !psr.id !2335

77:                                               ; preds = %72
  %78 = add i64 %.02, 1, !dbg !2336, !psr.id !2337
  call void @llvm.dbg.value(metadata i64 %78, metadata !2237, metadata !DIExpression()), !dbg !2157, !psr.id !2338
  br label %42, !dbg !2339, !llvm.loop !2340, !psr.id !2342

79:                                               ; preds = %42
  ret void, !dbg !2343, !psr.id !2344
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_muladd_small(i16* %0, i16 zeroext %1, i16* %2) #0 !dbg !2345 {
  %4 = alloca i32, align 4, !psr.id !2348
  call void @llvm.dbg.value(metadata i16* %0, metadata !2349, metadata !DIExpression()), !dbg !2350, !psr.id !2351
  call void @llvm.dbg.value(metadata i16 %1, metadata !2352, metadata !DIExpression()), !dbg !2350, !psr.id !2353
  call void @llvm.dbg.value(metadata i16* %2, metadata !2354, metadata !DIExpression()), !dbg !2350, !psr.id !2355
  %5 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !2356, !psr.id !2357
  %6 = load i16, i16* %5, align 2, !dbg !2356, !psr.id !2358, !ValueTainted !84
  %7 = zext i16 %6 to i32, !dbg !2356, !psr.id !2359, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %7, metadata !2360, metadata !DIExpression()), !dbg !2350, !psr.id !2361
  %8 = icmp eq i32 %7, 0, !dbg !2362, !psr.id !2364, !ValueTainted !84
  br i1 %8, label %9, label %10, !dbg !2365, !psr.id !2366, !Tainted !97

9:                                                ; preds = %3
  br label %138, !dbg !2367, !psr.id !2369

10:                                               ; preds = %3
  %11 = icmp ule i32 %7, 15, !dbg !2370, !psr.id !2372, !ValueTainted !84
  br i1 %11, label %12, label %26, !dbg !2373, !psr.id !2374, !Tainted !97

12:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2375, metadata !DIExpression()), !dbg !2377, !psr.id !2378
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2379, !psr.id !2380, !PointTainted !86
  %14 = load i16, i16* %13, align 2, !dbg !2379, !psr.id !2381, !ValueTainted !84
  %15 = zext i16 %14 to i32, !dbg !2382, !psr.id !2383, !ValueTainted !84
  %16 = shl i32 %15, 15, !dbg !2384, !psr.id !2385, !ValueTainted !84
  %17 = zext i16 %1 to i32, !dbg !2386, !psr.id !2387, !ValueTainted !84
  %18 = or i32 %16, %17, !dbg !2388, !psr.id !2389, !ValueTainted !84
  %19 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2390, !psr.id !2391
  %20 = load i16, i16* %19, align 2, !dbg !2390, !psr.id !2392, !ValueTainted !84
  %21 = zext i16 %20 to i32, !dbg !2390, !psr.id !2393, !ValueTainted !84
  %22 = call i32 @divrem16(i32 %18, i32 %21, i32* %4), !dbg !2394, !psr.id !2395, !ValueTainted !84
  %23 = load i32, i32* %4, align 4, !dbg !2396, !psr.id !2397, !ValueTainted !84
  %24 = trunc i32 %23 to i16, !dbg !2396, !psr.id !2398, !ValueTainted !84
  %25 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2399, !psr.id !2400, !PointTainted !86
  store i16 %24, i16* %25, align 2, !dbg !2401, !psr.id !2402
  br label %138, !dbg !2403, !psr.id !2404

26:                                               ; preds = %10
  %27 = add i32 %7, 15, !dbg !2405, !psr.id !2406, !ValueTainted !84
  %28 = lshr i32 %27, 4, !dbg !2407, !psr.id !2408, !ValueTainted !84
  %29 = zext i32 %28 to i64, !dbg !2409, !psr.id !2410, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %29, metadata !2411, metadata !DIExpression()), !dbg !2350, !psr.id !2412
  %30 = and i32 %7, 15, !dbg !2413, !psr.id !2414, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %30, metadata !2415, metadata !DIExpression()), !dbg !2350, !psr.id !2416
  %31 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !2417, !psr.id !2418, !ValueTainted !84, !PointTainted !86
  %32 = load i16, i16* %31, align 2, !dbg !2417, !psr.id !2419, !Tainted !97, !ValueTainted !84
  %33 = zext i16 %32 to i32, !dbg !2417, !psr.id !2420, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %33, metadata !2421, metadata !DIExpression()), !dbg !2350, !psr.id !2422
  %34 = icmp eq i32 %30, 0, !dbg !2423, !psr.id !2425, !ValueTainted !84
  br i1 %34, label %35, label %54, !dbg !2426, !psr.id !2427, !Tainted !97

35:                                               ; preds = %26
  %36 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !2428, !psr.id !2430, !ValueTainted !84, !PointTainted !86
  %37 = load i16, i16* %36, align 2, !dbg !2428, !psr.id !2431, !Tainted !97, !ValueTainted !84
  %38 = zext i16 %37 to i32, !dbg !2428, !psr.id !2432, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %38, metadata !2433, metadata !DIExpression()), !dbg !2350, !psr.id !2434
  %39 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2435, !psr.id !2436, !PointTainted !86
  %40 = bitcast i16* %39 to i8*, !dbg !2437, !psr.id !2438, !PointTainted !86
  %41 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2439, !psr.id !2440, !PointTainted !86
  %42 = bitcast i16* %41 to i8*, !dbg !2437, !psr.id !2441, !PointTainted !86
  %43 = sub i64 %29, 1, !dbg !2442, !psr.id !2443, !ValueTainted !84
  %44 = mul i64 %43, 2, !dbg !2444, !psr.id !2445, !ValueTainted !84
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %40, i8* align 2 %42, i64 %44, i1 false), !dbg !2437, !psr.id !2446
  %45 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2447, !psr.id !2448, !PointTainted !86
  store i16 %1, i16* %45, align 2, !dbg !2449, !psr.id !2450
  %46 = shl i32 %38, 15, !dbg !2451, !psr.id !2452, !ValueTainted !84
  %47 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !2453, !psr.id !2454, !ValueTainted !84, !PointTainted !86
  %48 = load i16, i16* %47, align 2, !dbg !2453, !psr.id !2455, !Tainted !97, !ValueTainted !84
  %49 = zext i16 %48 to i32, !dbg !2453, !psr.id !2456, !ValueTainted !84
  %50 = add i32 %46, %49, !dbg !2457, !psr.id !2458, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %50, metadata !2459, metadata !DIExpression()), !dbg !2350, !psr.id !2460
  %51 = getelementptr inbounds i16, i16* %2, i64 %29, !dbg !2461, !psr.id !2462, !ValueTainted !84
  %52 = load i16, i16* %51, align 2, !dbg !2461, !psr.id !2463, !Tainted !97, !ValueTainted !84
  %53 = zext i16 %52 to i32, !dbg !2461, !psr.id !2464, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %53, metadata !2465, metadata !DIExpression()), !dbg !2350, !psr.id !2466
  br label %98, !dbg !2467, !psr.id !2468

54:                                               ; preds = %26
  %55 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !2469, !psr.id !2471, !ValueTainted !84, !PointTainted !86
  %56 = load i16, i16* %55, align 2, !dbg !2469, !psr.id !2472, !Tainted !97, !ValueTainted !84
  %57 = zext i16 %56 to i32, !dbg !2469, !psr.id !2473, !ValueTainted !84
  %58 = sub i32 15, %30, !dbg !2474, !psr.id !2475, !ValueTainted !84
  %59 = shl i32 %57, %58, !dbg !2476, !psr.id !2477, !ValueTainted !84
  %60 = sub i64 %29, 1, !dbg !2478, !psr.id !2479, !ValueTainted !84
  %61 = getelementptr inbounds i16, i16* %0, i64 %60, !dbg !2480, !psr.id !2481, !ValueTainted !84, !PointTainted !86
  %62 = load i16, i16* %61, align 2, !dbg !2480, !psr.id !2482, !Tainted !97, !ValueTainted !84
  %63 = zext i16 %62 to i32, !dbg !2480, !psr.id !2483, !ValueTainted !84
  %64 = ashr i32 %63, %30, !dbg !2484, !psr.id !2485, !ValueTainted !84
  %65 = or i32 %59, %64, !dbg !2486, !psr.id !2487, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %65, metadata !2433, metadata !DIExpression()), !dbg !2350, !psr.id !2488
  %66 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2489, !psr.id !2490, !PointTainted !86
  %67 = bitcast i16* %66 to i8*, !dbg !2491, !psr.id !2492, !PointTainted !86
  %68 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2493, !psr.id !2494, !PointTainted !86
  %69 = bitcast i16* %68 to i8*, !dbg !2491, !psr.id !2495, !PointTainted !86
  %70 = sub i64 %29, 1, !dbg !2496, !psr.id !2497, !ValueTainted !84
  %71 = mul i64 %70, 2, !dbg !2498, !psr.id !2499, !ValueTainted !84
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %67, i8* align 2 %69, i64 %71, i1 false), !dbg !2491, !psr.id !2500
  %72 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2501, !psr.id !2502, !PointTainted !86
  store i16 %1, i16* %72, align 2, !dbg !2503, !psr.id !2504
  %73 = shl i32 %65, 15, !dbg !2505, !psr.id !2506, !ValueTainted !84
  %74 = getelementptr inbounds i16, i16* %0, i64 %29, !dbg !2507, !psr.id !2508, !ValueTainted !84, !PointTainted !86
  %75 = load i16, i16* %74, align 2, !dbg !2507, !psr.id !2509, !Tainted !97, !ValueTainted !84
  %76 = zext i16 %75 to i32, !dbg !2507, !psr.id !2510, !ValueTainted !84
  %77 = sub i32 15, %30, !dbg !2511, !psr.id !2512, !ValueTainted !84
  %78 = shl i32 %76, %77, !dbg !2513, !psr.id !2514, !ValueTainted !84
  %79 = sub i64 %29, 1, !dbg !2515, !psr.id !2516, !ValueTainted !84
  %80 = getelementptr inbounds i16, i16* %0, i64 %79, !dbg !2517, !psr.id !2518, !ValueTainted !84, !PointTainted !86
  %81 = load i16, i16* %80, align 2, !dbg !2517, !psr.id !2519, !Tainted !97, !ValueTainted !84
  %82 = zext i16 %81 to i32, !dbg !2517, !psr.id !2520, !ValueTainted !84
  %83 = ashr i32 %82, %30, !dbg !2521, !psr.id !2522, !ValueTainted !84
  %84 = or i32 %78, %83, !dbg !2523, !psr.id !2524, !ValueTainted !84
  %85 = and i32 %84, 32767, !dbg !2525, !psr.id !2526, !ValueTainted !84
  %86 = or i32 %73, %85, !dbg !2527, !psr.id !2528, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %86, metadata !2459, metadata !DIExpression()), !dbg !2350, !psr.id !2529
  %87 = getelementptr inbounds i16, i16* %2, i64 %29, !dbg !2530, !psr.id !2531, !ValueTainted !84
  %88 = load i16, i16* %87, align 2, !dbg !2530, !psr.id !2532, !Tainted !97, !ValueTainted !84
  %89 = zext i16 %88 to i32, !dbg !2530, !psr.id !2533, !ValueTainted !84
  %90 = sub i32 15, %30, !dbg !2534, !psr.id !2535, !ValueTainted !84
  %91 = shl i32 %89, %90, !dbg !2536, !psr.id !2537, !ValueTainted !84
  %92 = sub i64 %29, 1, !dbg !2538, !psr.id !2539, !ValueTainted !84
  %93 = getelementptr inbounds i16, i16* %2, i64 %92, !dbg !2540, !psr.id !2541, !ValueTainted !84
  %94 = load i16, i16* %93, align 2, !dbg !2540, !psr.id !2542, !Tainted !97, !ValueTainted !84
  %95 = zext i16 %94 to i32, !dbg !2540, !psr.id !2543, !ValueTainted !84
  %96 = ashr i32 %95, %30, !dbg !2544, !psr.id !2545, !ValueTainted !84
  %97 = or i32 %91, %96, !dbg !2546, !psr.id !2547, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %97, metadata !2465, metadata !DIExpression()), !dbg !2350, !psr.id !2548
  br label %98, !psr.id !2549

98:                                               ; preds = %54, %35
  %.05 = phi i32 [ %38, %35 ], [ %65, %54 ], !dbg !2550, !psr.id !2551, !ValueTainted !84
  %.03 = phi i32 [ %50, %35 ], [ %86, %54 ], !dbg !2550, !psr.id !2552
  %.02 = phi i32 [ %53, %35 ], [ %97, %54 ], !dbg !2550, !psr.id !2553, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2465, metadata !DIExpression()), !dbg !2350, !psr.id !2554
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2459, metadata !DIExpression()), !dbg !2350, !psr.id !2555
  call void @llvm.dbg.value(metadata i32 %.05, metadata !2433, metadata !DIExpression()), !dbg !2350, !psr.id !2556
  %99 = call i32 @divrem16(i32 %.03, i32 %.02, i32* null), !dbg !2557, !psr.id !2558, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %99, metadata !2559, metadata !DIExpression()), !dbg !2350, !psr.id !2560
  %100 = call i32 @EQ.15(i32 %.02, i32 %.05), !dbg !2561, !psr.id !2562, !ValueTainted !84
  %101 = sub i32 %99, 1, !dbg !2563, !psr.id !2564, !ValueTainted !84
  %102 = sub i32 %99, 1, !dbg !2565, !psr.id !2566, !ValueTainted !84
  %103 = lshr i32 %102, 31, !dbg !2567, !psr.id !2568, !ValueTainted !84
  %104 = add i32 %101, %103, !dbg !2569, !psr.id !2570, !ValueTainted !84
  %105 = call i32 @MUX.16(i32 %100, i32 32767, i32 %104), !dbg !2571, !psr.id !2572, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %105, metadata !2559, metadata !DIExpression()), !dbg !2350, !psr.id !2573
  call void @llvm.dbg.value(metadata i32 0, metadata !2574, metadata !DIExpression()), !dbg !2350, !psr.id !2575
  call void @llvm.dbg.value(metadata i32 1, metadata !2576, metadata !DIExpression()), !dbg !2350, !psr.id !2577
  call void @llvm.dbg.value(metadata i64 1, metadata !2578, metadata !DIExpression()), !dbg !2350, !psr.id !2579
  br label %106, !dbg !2580, !psr.id !2582

106:                                              ; preds = %128, %98
  %.04 = phi i64 [ 1, %98 ], [ %129, %128 ], !dbg !2583, !psr.id !2584
  %.01 = phi i32 [ 0, %98 ], [ %121, %128 ], !dbg !2350, !psr.id !2585, !ValueTainted !84
  %.0 = phi i32 [ 1, %98 ], [ %127, %128 ], !dbg !2350, !psr.id !2586, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2576, metadata !DIExpression()), !dbg !2350, !psr.id !2587
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2574, metadata !DIExpression()), !dbg !2350, !psr.id !2588
  call void @llvm.dbg.value(metadata i64 %.04, metadata !2578, metadata !DIExpression()), !dbg !2350, !psr.id !2589
  %107 = icmp ule i64 %.04, %29, !dbg !2590, !psr.id !2592, !ValueTainted !84
  br i1 %107, label %108, label %130, !dbg !2593, !psr.id !2594, !Tainted !97

108:                                              ; preds = %106
  %109 = getelementptr inbounds i16, i16* %2, i64 %.04, !dbg !2595, !psr.id !2597
  %110 = load i16, i16* %109, align 2, !dbg !2595, !psr.id !2598, !ValueTainted !84
  %111 = zext i16 %110 to i32, !dbg !2595, !psr.id !2599
  call void @llvm.dbg.value(metadata i32 %111, metadata !2600, metadata !DIExpression()), !dbg !2601, !psr.id !2602
  %112 = mul i32 %111, %105, !dbg !2603, !psr.id !2604, !ValueTainted !84
  %113 = add i32 %112, %.01, !dbg !2605, !psr.id !2606, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %113, metadata !2607, metadata !DIExpression()), !dbg !2601, !psr.id !2608
  %114 = lshr i32 %113, 15, !dbg !2609, !psr.id !2610, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %114, metadata !2574, metadata !DIExpression()), !dbg !2350, !psr.id !2611
  %115 = and i32 %113, 32767, !dbg !2612, !psr.id !2613, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %115, metadata !2607, metadata !DIExpression()), !dbg !2601, !psr.id !2614
  %116 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !2615, !psr.id !2616, !PointTainted !86
  %117 = load i16, i16* %116, align 2, !dbg !2615, !psr.id !2617, !ValueTainted !84
  %118 = zext i16 %117 to i32, !dbg !2615, !psr.id !2618, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %118, metadata !2619, metadata !DIExpression()), !dbg !2601, !psr.id !2620
  %119 = sub i32 %118, %115, !dbg !2621, !psr.id !2622, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %119, metadata !2623, metadata !DIExpression()), !dbg !2601, !psr.id !2624
  %120 = lshr i32 %119, 31, !dbg !2625, !psr.id !2626, !ValueTainted !84
  %121 = add i32 %114, %120, !dbg !2627, !psr.id !2628, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %121, metadata !2574, metadata !DIExpression()), !dbg !2350, !psr.id !2629
  %122 = and i32 %119, 32767, !dbg !2630, !psr.id !2631
  call void @llvm.dbg.value(metadata i32 %122, metadata !2623, metadata !DIExpression()), !dbg !2601, !psr.id !2632
  %123 = trunc i32 %122 to i16, !dbg !2633, !psr.id !2634, !ValueTainted !84
  %124 = getelementptr inbounds i16, i16* %0, i64 %.04, !dbg !2635, !psr.id !2636, !PointTainted !86
  store i16 %123, i16* %124, align 2, !dbg !2637, !psr.id !2638
  %125 = call i32 @EQ.15(i32 %122, i32 %111), !dbg !2639, !psr.id !2640, !ValueTainted !84
  %126 = call i32 @GT.17(i32 %122, i32 %111), !dbg !2641, !psr.id !2642, !ValueTainted !84
  %127 = call i32 @MUX.16(i32 %125, i32 %.0, i32 %126), !dbg !2643, !psr.id !2644, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %127, metadata !2576, metadata !DIExpression()), !dbg !2350, !psr.id !2645
  br label %128, !dbg !2646, !psr.id !2647

128:                                              ; preds = %108
  %129 = add i64 %.04, 1, !dbg !2648, !psr.id !2649
  call void @llvm.dbg.value(metadata i64 %129, metadata !2578, metadata !DIExpression()), !dbg !2350, !psr.id !2650
  br label %106, !dbg !2651, !llvm.loop !2652, !psr.id !2654

130:                                              ; preds = %106
  %131 = call i32 @GT.17(i32 %.01, i32 %33), !dbg !2655, !psr.id !2656
  call void @llvm.dbg.value(metadata i32 %131, metadata !2657, metadata !DIExpression()), !dbg !2350, !psr.id !2658
  %132 = xor i32 %131, -1, !dbg !2659, !psr.id !2660, !ValueTainted !84
  %133 = call i32 @GT.17(i32 %33, i32 %.01), !dbg !2661, !psr.id !2662, !ValueTainted !84
  %134 = or i32 %.0, %133, !dbg !2663, !psr.id !2664, !ValueTainted !84
  %135 = and i32 %132, %134, !dbg !2665, !psr.id !2666, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %135, metadata !2667, metadata !DIExpression()), !dbg !2350, !psr.id !2668
  %136 = call i32 @br_i15_add(i16* %0, i16* %2, i32 %131), !dbg !2669, !psr.id !2670
  %137 = call i32 @br_i15_sub(i16* %0, i16* %2, i32 %135), !dbg !2671, !psr.id !2672, !ValueTainted !84
  br label %138, !dbg !2673, !psr.id !2674

138:                                              ; preds = %130, %12, %9
  ret void, !dbg !2673, !psr.id !2675
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @divrem16(i32 %0, i32 %1, i32* %2) #0 !dbg !2676 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2680, metadata !DIExpression()), !dbg !2681, !psr.id !2682
  call void @llvm.dbg.value(metadata i32 %1, metadata !2683, metadata !DIExpression()), !dbg !2681, !psr.id !2684
  call void @llvm.dbg.value(metadata i32* %2, metadata !2685, metadata !DIExpression()), !dbg !2681, !psr.id !2686
  call void @llvm.dbg.value(metadata i32 0, metadata !2687, metadata !DIExpression()), !dbg !2681, !psr.id !2688
  %4 = shl i32 %1, 16, !dbg !2689, !psr.id !2690, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %4, metadata !2683, metadata !DIExpression()), !dbg !2681, !psr.id !2691
  call void @llvm.dbg.value(metadata i32 16, metadata !2692, metadata !DIExpression()), !dbg !2681, !psr.id !2693
  br label %5, !dbg !2694, !psr.id !2696

5:                                                ; preds = %16, %3
  %.03 = phi i32 [ 16, %3 ], [ %17, %16 ], !dbg !2697, !psr.id !2698
  %.02 = phi i32 [ 0, %3 ], [ %11, %16 ], !dbg !2681, !psr.id !2699, !ValueTainted !84
  %.01 = phi i32 [ %4, %3 ], [ %15, %16 ], !dbg !2681, !psr.id !2700, !ValueTainted !84
  %.0 = phi i32 [ %0, %3 ], [ %14, %16 ], !psr.id !2701, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2680, metadata !DIExpression()), !dbg !2681, !psr.id !2702
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2683, metadata !DIExpression()), !dbg !2681, !psr.id !2703
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2687, metadata !DIExpression()), !dbg !2681, !psr.id !2704
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2692, metadata !DIExpression()), !dbg !2681, !psr.id !2705
  %6 = icmp sge i32 %.03, 0, !dbg !2706, !psr.id !2708
  br i1 %6, label %7, label %18, !dbg !2709, !psr.id !2710

7:                                                ; preds = %5
  %8 = call i32 @GT.17(i32 %.01, i32 %.0), !dbg !2711, !psr.id !2713, !ValueTainted !84
  %9 = call i32 @NOT.18(i32 %8), !dbg !2711, !psr.id !2714, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %9, metadata !2715, metadata !DIExpression()), !dbg !2716, !psr.id !2717
  %10 = shl i32 %9, %.03, !dbg !2718, !psr.id !2719, !ValueTainted !84
  %11 = or i32 %.02, %10, !dbg !2720, !psr.id !2721, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %11, metadata !2687, metadata !DIExpression()), !dbg !2681, !psr.id !2722
  %12 = sub i32 0, %9, !dbg !2723, !psr.id !2724, !ValueTainted !84
  %13 = and i32 %12, %.01, !dbg !2725, !psr.id !2726, !ValueTainted !84
  %14 = sub i32 %.0, %13, !dbg !2727, !psr.id !2728, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %14, metadata !2680, metadata !DIExpression()), !dbg !2681, !psr.id !2729
  %15 = lshr i32 %.01, 1, !dbg !2730, !psr.id !2731, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %15, metadata !2683, metadata !DIExpression()), !dbg !2681, !psr.id !2732
  br label %16, !dbg !2733, !psr.id !2734

16:                                               ; preds = %7
  %17 = add nsw i32 %.03, -1, !dbg !2735, !psr.id !2736
  call void @llvm.dbg.value(metadata i32 %17, metadata !2692, metadata !DIExpression()), !dbg !2681, !psr.id !2737
  br label %5, !dbg !2738, !llvm.loop !2739, !psr.id !2741

18:                                               ; preds = %5
  %19 = icmp ne i32* %2, null, !dbg !2742, !psr.id !2744
  br i1 %19, label %20, label %21, !dbg !2745, !psr.id !2746

20:                                               ; preds = %18
  store i32 %.0, i32* %2, align 4, !dbg !2747, !psr.id !2749
  br label %21, !dbg !2750, !psr.id !2751

21:                                               ; preds = %20, %18
  ret i32 %.02, !dbg !2752, !psr.id !2753
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ.15(i32 %0, i32 %1) #0 !dbg !2754 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2755, metadata !DIExpression()), !dbg !2756, !psr.id !2757
  call void @llvm.dbg.value(metadata i32 %1, metadata !2758, metadata !DIExpression()), !dbg !2756, !psr.id !2759
  %3 = xor i32 %0, %1, !dbg !2760, !psr.id !2761, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !2762, metadata !DIExpression()), !dbg !2756, !psr.id !2763
  %4 = sub i32 0, %3, !dbg !2764, !psr.id !2765, !ValueTainted !84
  %5 = or i32 %3, %4, !dbg !2766, !psr.id !2767, !ValueTainted !84
  %6 = lshr i32 %5, 31, !dbg !2768, !psr.id !2769, !ValueTainted !84
  %7 = call i32 @NOT.18(i32 %6), !dbg !2770, !psr.id !2771, !ValueTainted !84
  ret i32 %7, !dbg !2772, !psr.id !2773
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.16(i32 %0, i32 %1, i32 %2) #0 !dbg !2774 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2775, metadata !DIExpression()), !dbg !2776, !psr.id !2777
  call void @llvm.dbg.value(metadata i32 %1, metadata !2778, metadata !DIExpression()), !dbg !2776, !psr.id !2779
  call void @llvm.dbg.value(metadata i32 %2, metadata !2780, metadata !DIExpression()), !dbg !2776, !psr.id !2781
  %4 = sub i32 0, %0, !dbg !2782, !psr.id !2783, !ValueTainted !84
  %5 = xor i32 %1, %2, !dbg !2784, !psr.id !2785, !ValueTainted !84
  %6 = and i32 %4, %5, !dbg !2786, !psr.id !2787, !ValueTainted !84
  %7 = xor i32 %2, %6, !dbg !2788, !psr.id !2789, !ValueTainted !84
  ret i32 %7, !dbg !2790, !psr.id !2791
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT.17(i32 %0, i32 %1) #0 !dbg !2792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2793, metadata !DIExpression()), !dbg !2794, !psr.id !2795
  call void @llvm.dbg.value(metadata i32 %1, metadata !2796, metadata !DIExpression()), !dbg !2794, !psr.id !2797
  %3 = sub i32 %1, %0, !dbg !2798, !psr.id !2799, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !2800, metadata !DIExpression()), !dbg !2794, !psr.id !2801
  %4 = xor i32 %0, %1, !dbg !2802, !psr.id !2803, !ValueTainted !84
  %5 = xor i32 %0, %3, !dbg !2804, !psr.id !2805, !ValueTainted !84
  %6 = and i32 %4, %5, !dbg !2806, !psr.id !2807, !ValueTainted !84
  %7 = xor i32 %3, %6, !dbg !2808, !psr.id !2809, !ValueTainted !84
  %8 = lshr i32 %7, 31, !dbg !2810, !psr.id !2811, !ValueTainted !84
  ret i32 %8, !dbg !2812, !psr.id !2813
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT.18(i32 %0) #0 !dbg !2814 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2815, metadata !DIExpression()), !dbg !2816, !psr.id !2817
  %2 = xor i32 %0, 1, !dbg !2818, !psr.id !2819, !ValueTainted !84
  ret i32 %2, !dbg !2820, !psr.id !2821
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @br_i15_ninv15(i16 zeroext %0) #0 !dbg !2822 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2825, metadata !DIExpression()), !dbg !2826, !psr.id !2827
  %2 = zext i16 %0 to i32, !dbg !2828, !psr.id !2829, !ValueTainted !84
  %3 = sub nsw i32 2, %2, !dbg !2830, !psr.id !2831, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %3, metadata !2832, metadata !DIExpression()), !dbg !2826, !psr.id !2833
  %4 = zext i16 %0 to i32, !dbg !2834, !psr.id !2835, !ValueTainted !84
  %5 = mul i32 %4, %3, !dbg !2834, !psr.id !2836, !ValueTainted !84
  %6 = sub i32 2, %5, !dbg !2834, !psr.id !2837, !ValueTainted !84
  %7 = mul i32 %3, %6, !dbg !2834, !psr.id !2838, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %7, metadata !2832, metadata !DIExpression()), !dbg !2826, !psr.id !2839
  %8 = zext i16 %0 to i32, !dbg !2840, !psr.id !2841, !ValueTainted !84
  %9 = mul i32 %8, %7, !dbg !2840, !psr.id !2842, !ValueTainted !84
  %10 = sub i32 2, %9, !dbg !2840, !psr.id !2843, !ValueTainted !84
  %11 = mul i32 %7, %10, !dbg !2840, !psr.id !2844, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %11, metadata !2832, metadata !DIExpression()), !dbg !2826, !psr.id !2845
  %12 = zext i16 %0 to i32, !dbg !2846, !psr.id !2847, !ValueTainted !84
  %13 = mul i32 %12, %11, !dbg !2846, !psr.id !2848, !ValueTainted !84
  %14 = sub i32 2, %13, !dbg !2846, !psr.id !2849, !ValueTainted !84
  %15 = mul i32 %11, %14, !dbg !2846, !psr.id !2850, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %15, metadata !2832, metadata !DIExpression()), !dbg !2826, !psr.id !2851
  %16 = zext i16 %0 to i32, !dbg !2852, !psr.id !2853, !ValueTainted !84
  %17 = and i32 %16, 1, !dbg !2854, !psr.id !2855, !ValueTainted !84
  %18 = sub i32 0, %15, !dbg !2856, !psr.id !2857, !ValueTainted !84
  %19 = call i32 @MUX.19(i32 %17, i32 %18, i32 0), !dbg !2858, !psr.id !2859, !ValueTainted !84
  %20 = and i32 %19, 32767, !dbg !2860, !psr.id !2861, !ValueTainted !84
  %21 = trunc i32 %20 to i16, !dbg !2858, !psr.id !2862, !ValueTainted !84
  ret i16 %21, !dbg !2863, !psr.id !2864
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.19(i32 %0, i32 %1, i32 %2) #0 !dbg !2865 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2866, metadata !DIExpression()), !dbg !2867, !psr.id !2868
  call void @llvm.dbg.value(metadata i32 %1, metadata !2869, metadata !DIExpression()), !dbg !2867, !psr.id !2870
  call void @llvm.dbg.value(metadata i32 %2, metadata !2871, metadata !DIExpression()), !dbg !2867, !psr.id !2872
  %4 = sub i32 0, %0, !dbg !2873, !psr.id !2874, !ValueTainted !84
  %5 = xor i32 %1, %2, !dbg !2875, !psr.id !2876, !ValueTainted !84
  %6 = and i32 %4, %5, !dbg !2877, !psr.id !2878, !ValueTainted !84
  %7 = xor i32 %2, %6, !dbg !2879, !psr.id !2880, !ValueTainted !84
  ret i32 %7, !dbg !2881, !psr.id !2882
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_reduce(i16* %0, i16* %1, i16* %2) #0 !dbg !2883 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !2884, metadata !DIExpression()), !dbg !2885, !psr.id !2886
  call void @llvm.dbg.value(metadata i16* %1, metadata !2887, metadata !DIExpression()), !dbg !2885, !psr.id !2888
  call void @llvm.dbg.value(metadata i16* %2, metadata !2889, metadata !DIExpression()), !dbg !2885, !psr.id !2890
  %4 = getelementptr inbounds i16, i16* %2, i64 0, !dbg !2891, !psr.id !2892
  %5 = load i16, i16* %4, align 2, !dbg !2891, !psr.id !2893, !ValueTainted !84
  %6 = zext i16 %5 to i32, !dbg !2891, !psr.id !2894, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %6, metadata !2895, metadata !DIExpression()), !dbg !2885, !psr.id !2896
  %7 = add i32 %6, 15, !dbg !2897, !psr.id !2898, !ValueTainted !84
  %8 = lshr i32 %7, 4, !dbg !2899, !psr.id !2900, !ValueTainted !84
  %9 = zext i32 %8 to i64, !dbg !2901, !psr.id !2902, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %9, metadata !2903, metadata !DIExpression()), !dbg !2885, !psr.id !2904
  %10 = trunc i32 %6 to i16, !dbg !2905, !psr.id !2906, !ValueTainted !84
  %11 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !2907, !psr.id !2908
  store i16 %10, i16* %11, align 2, !dbg !2909, !psr.id !2910
  %12 = icmp eq i32 %6, 0, !dbg !2911, !psr.id !2913, !ValueTainted !84
  br i1 %12, label %13, label %14, !dbg !2914, !psr.id !2915, !Tainted !97

13:                                               ; preds = %3
  br label %55, !dbg !2916, !psr.id !2918

14:                                               ; preds = %3
  %15 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !2919, !psr.id !2920, !PointTainted !86
  %16 = load i16, i16* %15, align 2, !dbg !2919, !psr.id !2921, !ValueTainted !84
  %17 = zext i16 %16 to i32, !dbg !2919, !psr.id !2922, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %17, metadata !2923, metadata !DIExpression()), !dbg !2885, !psr.id !2924
  %18 = add i32 %17, 15, !dbg !2925, !psr.id !2926, !ValueTainted !84
  %19 = lshr i32 %18, 4, !dbg !2927, !psr.id !2928, !ValueTainted !84
  %20 = zext i32 %19 to i64, !dbg !2929, !psr.id !2930, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %20, metadata !2931, metadata !DIExpression()), !dbg !2885, !psr.id !2932
  %21 = icmp ult i32 %17, %6, !dbg !2933, !psr.id !2935, !ValueTainted !84
  br i1 %21, label %22, label %36, !dbg !2936, !psr.id !2937, !Tainted !97

22:                                               ; preds = %14
  %23 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2938, !psr.id !2940
  %24 = bitcast i16* %23 to i8*, !dbg !2941, !psr.id !2942
  %25 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2943, !psr.id !2944, !PointTainted !86
  %26 = bitcast i16* %25 to i8*, !dbg !2941, !psr.id !2945, !PointTainted !86
  %27 = mul i64 %20, 2, !dbg !2946, !psr.id !2947, !ValueTainted !84
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %24, i8* align 2 %26, i64 %27, i1 false), !dbg !2941, !psr.id !2948, !CalledTainted !980
  call void @llvm.dbg.value(metadata i64 %20, metadata !2949, metadata !DIExpression()), !dbg !2885, !psr.id !2950
  br label %28, !dbg !2951, !psr.id !2953

28:                                               ; preds = %33, %22
  %.0 = phi i64 [ %20, %22 ], [ %34, %33 ], !dbg !2954, !psr.id !2955, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2949, metadata !DIExpression()), !dbg !2885, !psr.id !2956
  %29 = icmp ult i64 %.0, %9, !dbg !2957, !psr.id !2959, !ValueTainted !84
  br i1 %29, label %30, label %35, !dbg !2960, !psr.id !2961, !Tainted !97

30:                                               ; preds = %28
  %31 = add i64 %.0, 1, !dbg !2962, !psr.id !2964, !ValueTainted !84
  %32 = getelementptr inbounds i16, i16* %0, i64 %31, !dbg !2965, !psr.id !2966, !ValueTainted !84
  store i16 0, i16* %32, align 2, !dbg !2967, !psr.id !2968, !Tainted !97
  br label %33, !dbg !2969, !psr.id !2970

33:                                               ; preds = %30
  %34 = add i64 %.0, 1, !dbg !2971, !psr.id !2972, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %34, metadata !2949, metadata !DIExpression()), !dbg !2885, !psr.id !2973
  br label %28, !dbg !2974, !llvm.loop !2975, !psr.id !2977

35:                                               ; preds = %28
  br label %55, !dbg !2978, !psr.id !2979

36:                                               ; preds = %14
  %37 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2980, !psr.id !2981
  %38 = bitcast i16* %37 to i8*, !dbg !2982, !psr.id !2983
  %39 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2984, !psr.id !2985, !PointTainted !86
  %40 = sub i64 %20, %9, !dbg !2986, !psr.id !2987, !ValueTainted !84
  %41 = getelementptr inbounds i16, i16* %39, i64 %40, !dbg !2988, !psr.id !2989, !ValueTainted !84, !PointTainted !86
  %42 = bitcast i16* %41 to i8*, !dbg !2982, !psr.id !2990, !ValueTainted !84, !PointTainted !86
  %43 = sub i64 %9, 1, !dbg !2991, !psr.id !2992, !ValueTainted !84
  %44 = mul i64 %43, 2, !dbg !2993, !psr.id !2994, !ValueTainted !84
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %38, i8* align 2 %42, i64 %44, i1 false), !dbg !2982, !psr.id !2995, !CalledTainted !2996
  %45 = getelementptr inbounds i16, i16* %0, i64 %9, !dbg !2997, !psr.id !2998, !ValueTainted !84
  store i16 0, i16* %45, align 2, !dbg !2999, !psr.id !3000, !Tainted !97
  %46 = add i64 1, %20, !dbg !3001, !psr.id !3003, !ValueTainted !84
  %47 = sub i64 %46, %9, !dbg !3004, !psr.id !3005, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %47, metadata !2949, metadata !DIExpression()), !dbg !2885, !psr.id !3006
  br label %48, !dbg !3007, !psr.id !3008

48:                                               ; preds = %53, %36
  %.1 = phi i64 [ %47, %36 ], [ %54, %53 ], !dbg !3009, !psr.id !3010, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %.1, metadata !2949, metadata !DIExpression()), !dbg !2885, !psr.id !3011
  %49 = icmp ugt i64 %.1, 0, !dbg !3012, !psr.id !3014, !ValueTainted !84
  br i1 %49, label %50, label %55, !dbg !3015, !psr.id !3016, !Tainted !97

50:                                               ; preds = %48
  %51 = getelementptr inbounds i16, i16* %1, i64 %.1, !dbg !3017, !psr.id !3019, !ValueTainted !84, !PointTainted !86
  %52 = load i16, i16* %51, align 2, !dbg !3017, !psr.id !3020, !Tainted !97, !ValueTainted !84
  call void @br_i15_muladd_small(i16* %0, i16 zeroext %52, i16* %2), !dbg !3021, !psr.id !3022
  br label %53, !dbg !3023, !psr.id !3024

53:                                               ; preds = %50
  %54 = add i64 %.1, -1, !dbg !3025, !psr.id !3026, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %54, metadata !2949, metadata !DIExpression()), !dbg !2885, !psr.id !3027
  br label %48, !dbg !3028, !llvm.loop !3029, !psr.id !3031

55:                                               ; preds = %48, %35, %13
  ret void, !dbg !3032, !psr.id !3033
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_rshift(i16* %0, i32 %1) #0 !dbg !3034 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !3037, metadata !DIExpression()), !dbg !3038, !psr.id !3039
  call void @llvm.dbg.value(metadata i32 %1, metadata !3040, metadata !DIExpression()), !dbg !3038, !psr.id !3041
  %3 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !3042, !psr.id !3043, !PointTainted !86
  %4 = load i16, i16* %3, align 2, !dbg !3042, !psr.id !3044, !ValueTainted !84
  %5 = zext i16 %4 to i32, !dbg !3042, !psr.id !3045, !ValueTainted !84
  %6 = add nsw i32 %5, 15, !dbg !3046, !psr.id !3047, !ValueTainted !84
  %7 = ashr i32 %6, 4, !dbg !3048, !psr.id !3049, !ValueTainted !84
  %8 = sext i32 %7 to i64, !dbg !3050, !psr.id !3051, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %8, metadata !3052, metadata !DIExpression()), !dbg !3038, !psr.id !3053
  %9 = icmp eq i64 %8, 0, !dbg !3054, !psr.id !3056, !ValueTainted !84
  br i1 %9, label %10, label %11, !dbg !3057, !psr.id !3058, !Tainted !97

10:                                               ; preds = %2
  br label %35, !dbg !3059, !psr.id !3061

11:                                               ; preds = %2
  %12 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !3062, !psr.id !3063, !PointTainted !86
  %13 = load i16, i16* %12, align 2, !dbg !3062, !psr.id !3064, !ValueTainted !84
  %14 = zext i16 %13 to i32, !dbg !3062, !psr.id !3065, !ValueTainted !84
  %15 = ashr i32 %14, %1, !dbg !3066, !psr.id !3067, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %15, metadata !3068, metadata !DIExpression()), !dbg !3038, !psr.id !3069
  call void @llvm.dbg.value(metadata i64 2, metadata !3070, metadata !DIExpression()), !dbg !3038, !psr.id !3071
  br label %16, !dbg !3072, !psr.id !3074

16:                                               ; preds = %30, %11
  %.01 = phi i64 [ 2, %11 ], [ %31, %30 ], !dbg !3075, !psr.id !3076
  %.0 = phi i32 [ %15, %11 ], [ %29, %30 ], !dbg !3038, !psr.id !3077, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3068, metadata !DIExpression()), !dbg !3038, !psr.id !3078
  call void @llvm.dbg.value(metadata i64 %.01, metadata !3070, metadata !DIExpression()), !dbg !3038, !psr.id !3079
  %17 = icmp ule i64 %.01, %8, !dbg !3080, !psr.id !3082, !ValueTainted !84
  br i1 %17, label %18, label %32, !dbg !3083, !psr.id !3084, !Tainted !97

18:                                               ; preds = %16
  %19 = getelementptr inbounds i16, i16* %0, i64 %.01, !dbg !3085, !psr.id !3087, !PointTainted !86
  %20 = load i16, i16* %19, align 2, !dbg !3085, !psr.id !3088, !ValueTainted !84
  %21 = zext i16 %20 to i32, !dbg !3085, !psr.id !3089, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %21, metadata !3090, metadata !DIExpression()), !dbg !3091, !psr.id !3092
  %22 = sub nsw i32 15, %1, !dbg !3093, !psr.id !3094
  %23 = shl i32 %21, %22, !dbg !3095, !psr.id !3096, !ValueTainted !84
  %24 = or i32 %23, %.0, !dbg !3097, !psr.id !3098, !ValueTainted !84
  %25 = and i32 %24, 32767, !dbg !3099, !psr.id !3100, !ValueTainted !84
  %26 = trunc i32 %25 to i16, !dbg !3101, !psr.id !3102, !ValueTainted !84
  %27 = sub i64 %.01, 1, !dbg !3103, !psr.id !3104
  %28 = getelementptr inbounds i16, i16* %0, i64 %27, !dbg !3105, !psr.id !3106, !PointTainted !86
  store i16 %26, i16* %28, align 2, !dbg !3107, !psr.id !3108
  %29 = lshr i32 %21, %1, !dbg !3109, !psr.id !3110, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %29, metadata !3068, metadata !DIExpression()), !dbg !3038, !psr.id !3111
  br label %30, !dbg !3112, !psr.id !3113

30:                                               ; preds = %18
  %31 = add i64 %.01, 1, !dbg !3114, !psr.id !3115
  call void @llvm.dbg.value(metadata i64 %31, metadata !3070, metadata !DIExpression()), !dbg !3038, !psr.id !3116
  br label %16, !dbg !3117, !llvm.loop !3118, !psr.id !3120

32:                                               ; preds = %16
  %33 = trunc i32 %.0 to i16, !dbg !3121, !psr.id !3122, !ValueTainted !84
  %34 = getelementptr inbounds i16, i16* %0, i64 %8, !dbg !3123, !psr.id !3124, !ValueTainted !84, !PointTainted !86
  store i16 %33, i16* %34, align 2, !dbg !3125, !psr.id !3126, !Tainted !97
  br label %35, !dbg !3127, !psr.id !3128

35:                                               ; preds = %32, %10
  ret void, !dbg !3127, !psr.id !3129
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_i15_sub(i16* %0, i16* %1, i32 %2) #0 !dbg !3130 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !3131, metadata !DIExpression()), !dbg !3132, !psr.id !3133
  call void @llvm.dbg.value(metadata i16* %1, metadata !3134, metadata !DIExpression()), !dbg !3132, !psr.id !3135
  call void @llvm.dbg.value(metadata i32 %2, metadata !3136, metadata !DIExpression()), !dbg !3132, !psr.id !3137
  call void @llvm.dbg.value(metadata i32 0, metadata !3138, metadata !DIExpression()), !dbg !3132, !psr.id !3139
  %4 = getelementptr inbounds i16, i16* %0, i64 0, !dbg !3140, !psr.id !3141, !ValueTainted !84, !PointTainted !86
  %5 = load i16, i16* %4, align 2, !dbg !3140, !psr.id !3142, !Tainted !97, !ValueTainted !84
  %6 = zext i16 %5 to i32, !dbg !3140, !psr.id !3143, !ValueTainted !84
  %7 = add nsw i32 %6, 31, !dbg !3144, !psr.id !3145, !ValueTainted !84
  %8 = ashr i32 %7, 4, !dbg !3146, !psr.id !3147, !ValueTainted !84
  %9 = sext i32 %8 to i64, !dbg !3148, !psr.id !3149, !ValueTainted !84
  call void @llvm.dbg.value(metadata i64 %9, metadata !3150, metadata !DIExpression()), !dbg !3132, !psr.id !3151
  call void @llvm.dbg.value(metadata i64 1, metadata !3152, metadata !DIExpression()), !dbg !3132, !psr.id !3153
  br label %10, !dbg !3154, !psr.id !3156

10:                                               ; preds = %26, %3
  %.01 = phi i32 [ 0, %3 ], [ %21, %26 ], !dbg !3132, !psr.id !3157, !ValueTainted !84
  %.0 = phi i64 [ 1, %3 ], [ %27, %26 ], !dbg !3158, !psr.id !3159
  call void @llvm.dbg.value(metadata i64 %.0, metadata !3152, metadata !DIExpression()), !dbg !3132, !psr.id !3160
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3138, metadata !DIExpression()), !dbg !3132, !psr.id !3161
  %11 = icmp ult i64 %.0, %9, !dbg !3162, !psr.id !3164, !ValueTainted !84
  br i1 %11, label %12, label %28, !dbg !3165, !psr.id !3166, !Tainted !97

12:                                               ; preds = %10
  %13 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !3167, !psr.id !3169, !ValueTainted !84, !PointTainted !86
  %14 = load i16, i16* %13, align 2, !dbg !3167, !psr.id !3170, !Tainted !97, !ValueTainted !84
  %15 = zext i16 %14 to i32, !dbg !3167, !psr.id !3171, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %15, metadata !3172, metadata !DIExpression()), !dbg !3173, !psr.id !3174
  %16 = getelementptr inbounds i16, i16* %1, i64 %.0, !dbg !3175, !psr.id !3176
  %17 = load i16, i16* %16, align 2, !dbg !3175, !psr.id !3177, !ValueTainted !84
  %18 = zext i16 %17 to i32, !dbg !3175, !psr.id !3178, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %18, metadata !3179, metadata !DIExpression()), !dbg !3173, !psr.id !3180
  %19 = sub i32 %15, %18, !dbg !3181, !psr.id !3182, !ValueTainted !84
  %20 = sub i32 %19, %.01, !dbg !3183, !psr.id !3184, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %20, metadata !3185, metadata !DIExpression()), !dbg !3173, !psr.id !3186
  %21 = lshr i32 %20, 31, !dbg !3187, !psr.id !3188, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %21, metadata !3138, metadata !DIExpression()), !dbg !3132, !psr.id !3189
  %22 = and i32 %20, 32767, !dbg !3190, !psr.id !3191, !ValueTainted !84
  %23 = call i32 @MUX.24(i32 %2, i32 %22, i32 %15), !dbg !3192, !psr.id !3193, !ValueTainted !84
  %24 = trunc i32 %23 to i16, !dbg !3192, !psr.id !3194, !ValueTainted !84
  %25 = getelementptr inbounds i16, i16* %0, i64 %.0, !dbg !3195, !psr.id !3196, !ValueTainted !84, !PointTainted !86
  store i16 %24, i16* %25, align 2, !dbg !3197, !psr.id !3198, !Tainted !97
  br label %26, !dbg !3199, !psr.id !3200

26:                                               ; preds = %12
  %27 = add i64 %.0, 1, !dbg !3201, !psr.id !3202
  call void @llvm.dbg.value(metadata i64 %27, metadata !3152, metadata !DIExpression()), !dbg !3132, !psr.id !3203
  br label %10, !dbg !3204, !llvm.loop !3205, !psr.id !3207

28:                                               ; preds = %10
  ret i32 %.01, !dbg !3208, !psr.id !3209
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX.24(i32 %0, i32 %1, i32 %2) #0 !dbg !3210 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3211, metadata !DIExpression()), !dbg !3212, !psr.id !3213
  call void @llvm.dbg.value(metadata i32 %1, metadata !3214, metadata !DIExpression()), !dbg !3212, !psr.id !3215
  call void @llvm.dbg.value(metadata i32 %2, metadata !3216, metadata !DIExpression()), !dbg !3212, !psr.id !3217
  %4 = sub i32 0, %0, !dbg !3218, !psr.id !3219, !ValueTainted !84
  %5 = xor i32 %1, %2, !dbg !3220, !psr.id !3221, !ValueTainted !84
  %6 = and i32 %4, %5, !dbg !3222, !psr.id !3223, !ValueTainted !84
  %7 = xor i32 %2, %6, !dbg !3224, !psr.id !3225, !ValueTainted !84
  ret i32 %7, !dbg !3226, !psr.id !3227
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_i15_to_monty(i16* %0, i16* %1) #0 !dbg !3228 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !3231, metadata !DIExpression()), !dbg !3232, !psr.id !3233
  call void @llvm.dbg.value(metadata i16* %1, metadata !3234, metadata !DIExpression()), !dbg !3232, !psr.id !3235
  %3 = getelementptr inbounds i16, i16* %1, i64 0, !dbg !3236, !psr.id !3238
  %4 = load i16, i16* %3, align 2, !dbg !3236, !psr.id !3239, !ValueTainted !84
  %5 = zext i16 %4 to i32, !dbg !3236, !psr.id !3240, !ValueTainted !84
  %6 = add nsw i32 %5, 15, !dbg !3241, !psr.id !3242, !ValueTainted !84
  %7 = ashr i32 %6, 4, !dbg !3243, !psr.id !3244, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %7, metadata !3245, metadata !DIExpression()), !dbg !3232, !psr.id !3246
  br label %8, !dbg !3247, !psr.id !3248

8:                                                ; preds = %11, %2
  %.0 = phi i32 [ %7, %2 ], [ %12, %11 ], !dbg !3249, !psr.id !3250, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3245, metadata !DIExpression()), !dbg !3232, !psr.id !3251
  %9 = icmp ugt i32 %.0, 0, !dbg !3252, !psr.id !3254, !ValueTainted !84
  br i1 %9, label %10, label %13, !dbg !3255, !psr.id !3256, !Tainted !97

10:                                               ; preds = %8
  call void @br_i15_muladd_small(i16* %0, i16 zeroext 0, i16* %1), !dbg !3257, !psr.id !3259
  br label %11, !dbg !3260, !psr.id !3261

11:                                               ; preds = %10
  %12 = add i32 %.0, -1, !dbg !3262, !psr.id !3263, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %12, metadata !3245, metadata !DIExpression()), !dbg !3232, !psr.id !3264
  br label %8, !dbg !3265, !llvm.loop !3266, !psr.id !3268

13:                                               ; preds = %8
  ret void, !dbg !3269, !psr.id !3270
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_rsa_i15_private(i8* %0, %struct.br_rsa_private_key* %1) #0 !dbg !3271 {
  %3 = alloca [1129 x i16], align 16, !psr.id !3290
  call void @llvm.dbg.value(metadata i8* %0, metadata !3291, metadata !DIExpression()), !dbg !3292, !psr.id !3293
  call void @llvm.dbg.value(metadata %struct.br_rsa_private_key* %1, metadata !3294, metadata !DIExpression()), !dbg !3292, !psr.id !3295
  call void @llvm.dbg.declare(metadata [1129 x i16]* %3, metadata !3296, metadata !DIExpression()), !dbg !3300, !psr.id !3301
  %4 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 1, !dbg !3302, !psr.id !3303
  %5 = load i8*, i8** %4, align 8, !dbg !3302, !psr.id !3304, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %5, metadata !3305, metadata !DIExpression()), !dbg !3292, !psr.id !3306
  %6 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 2, !dbg !3307, !psr.id !3308
  %7 = load i64, i64* %6, align 8, !dbg !3307, !psr.id !3309
  call void @llvm.dbg.value(metadata i64 %7, metadata !3310, metadata !DIExpression()), !dbg !3292, !psr.id !3311
  br label %8, !dbg !3312, !psr.id !3313

8:                                                ; preds = %16, %2
  %.04 = phi i64 [ %7, %2 ], [ %18, %16 ], !dbg !3292, !psr.id !3314
  %.02 = phi i8* [ %5, %2 ], [ %17, %16 ], !dbg !3292, !psr.id !3315, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %.02, metadata !3305, metadata !DIExpression()), !dbg !3292, !psr.id !3316
  call void @llvm.dbg.value(metadata i64 %.04, metadata !3310, metadata !DIExpression()), !dbg !3292, !psr.id !3317
  %9 = icmp ugt i64 %.04, 0, !dbg !3318, !psr.id !3319
  br i1 %9, label %10, label %14, !dbg !3320, !psr.id !3321

10:                                               ; preds = %8
  %11 = load i8, i8* %.02, align 1, !dbg !3322, !psr.id !3323, !ValueTainted !84
  %12 = zext i8 %11 to i32, !dbg !3322, !psr.id !3324, !ValueTainted !84
  %13 = icmp eq i32 %12, 0, !dbg !3325, !psr.id !3326, !ValueTainted !84
  br label %14, !psr.id !3327

14:                                               ; preds = %10, %8
  %15 = phi i1 [ false, %8 ], [ %13, %10 ], !dbg !3292, !psr.id !3328, !ValueTainted !84
  br i1 %15, label %16, label %19, !dbg !3312, !psr.id !3329, !Tainted !97

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, i8* %.02, i32 1, !dbg !3330, !psr.id !3332, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %17, metadata !3305, metadata !DIExpression()), !dbg !3292, !psr.id !3333
  %18 = add i64 %.04, -1, !dbg !3334, !psr.id !3335
  call void @llvm.dbg.value(metadata i64 %18, metadata !3310, metadata !DIExpression()), !dbg !3292, !psr.id !3336
  br label %8, !dbg !3312, !llvm.loop !3337, !psr.id !3339

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 3, !dbg !3340, !psr.id !3341
  %21 = load i8*, i8** %20, align 8, !dbg !3340, !psr.id !3342, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %21, metadata !3343, metadata !DIExpression()), !dbg !3292, !psr.id !3344
  %22 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 4, !dbg !3345, !psr.id !3346
  %23 = load i64, i64* %22, align 8, !dbg !3345, !psr.id !3347
  call void @llvm.dbg.value(metadata i64 %23, metadata !3348, metadata !DIExpression()), !dbg !3292, !psr.id !3349
  br label %24, !dbg !3350, !psr.id !3351

24:                                               ; preds = %32, %19
  %.05 = phi i64 [ %23, %19 ], [ %34, %32 ], !dbg !3292, !psr.id !3352
  %.03 = phi i8* [ %21, %19 ], [ %33, %32 ], !dbg !3292, !psr.id !3353, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %.03, metadata !3343, metadata !DIExpression()), !dbg !3292, !psr.id !3354
  call void @llvm.dbg.value(metadata i64 %.05, metadata !3348, metadata !DIExpression()), !dbg !3292, !psr.id !3355
  %25 = icmp ugt i64 %.05, 0, !dbg !3356, !psr.id !3357
  br i1 %25, label %26, label %30, !dbg !3358, !psr.id !3359

26:                                               ; preds = %24
  %27 = load i8, i8* %.03, align 1, !dbg !3360, !psr.id !3361, !ValueTainted !84
  %28 = zext i8 %27 to i32, !dbg !3360, !psr.id !3362, !ValueTainted !84
  %29 = icmp eq i32 %28, 0, !dbg !3363, !psr.id !3364, !ValueTainted !84
  br label %30, !psr.id !3365

30:                                               ; preds = %26, %24
  %31 = phi i1 [ false, %24 ], [ %29, %26 ], !dbg !3292, !psr.id !3366, !ValueTainted !84
  br i1 %31, label %32, label %35, !dbg !3350, !psr.id !3367, !Tainted !97

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, i8* %.03, i32 1, !dbg !3368, !psr.id !3370, !PointTainted !86
  call void @llvm.dbg.value(metadata i8* %33, metadata !3343, metadata !DIExpression()), !dbg !3292, !psr.id !3371
  %34 = add i64 %.05, -1, !dbg !3372, !psr.id !3373
  call void @llvm.dbg.value(metadata i64 %34, metadata !3348, metadata !DIExpression()), !dbg !3292, !psr.id !3374
  br label %24, !dbg !3350, !llvm.loop !3375, !psr.id !3377

35:                                               ; preds = %30
  %36 = icmp ugt i64 %.04, %.05, !dbg !3378, !psr.id !3379
  br i1 %36, label %37, label %38, !dbg !3380, !psr.id !3381

37:                                               ; preds = %35
  br label %39, !dbg !3380, !psr.id !3382

38:                                               ; preds = %35
  br label %39, !dbg !3380, !psr.id !3383

39:                                               ; preds = %38, %37
  %40 = phi i64 [ %.04, %37 ], [ %.05, %38 ], !dbg !3380, !psr.id !3384
  %41 = shl i64 %40, 3, !dbg !3385, !psr.id !3386
  call void @llvm.dbg.value(metadata i64 %41, metadata !3387, metadata !DIExpression()), !dbg !3292, !psr.id !3388
  call void @llvm.dbg.value(metadata i64 1, metadata !3389, metadata !DIExpression()), !dbg !3292, !psr.id !3390
  br label %42, !dbg !3391, !psr.id !3392

42:                                               ; preds = %44, %39
  %.09 = phi i64 [ %41, %39 ], [ %45, %44 ], !dbg !3292, !psr.id !3393
  %.06 = phi i64 [ 1, %39 ], [ %46, %44 ], !dbg !3292, !psr.id !3394
  call void @llvm.dbg.value(metadata i64 %.06, metadata !3389, metadata !DIExpression()), !dbg !3292, !psr.id !3395
  call void @llvm.dbg.value(metadata i64 %.09, metadata !3387, metadata !DIExpression()), !dbg !3292, !psr.id !3396
  %43 = icmp sgt i64 %.09, 0, !dbg !3397, !psr.id !3398
  br i1 %43, label %44, label %47, !dbg !3391, !psr.id !3399

44:                                               ; preds = %42
  %45 = sub nsw i64 %.09, 15, !dbg !3400, !psr.id !3402
  call void @llvm.dbg.value(metadata i64 %45, metadata !3387, metadata !DIExpression()), !dbg !3292, !psr.id !3403
  %46 = add i64 %.06, 1, !dbg !3404, !psr.id !3405
  call void @llvm.dbg.value(metadata i64 %46, metadata !3389, metadata !DIExpression()), !dbg !3292, !psr.id !3406
  br label %42, !dbg !3391, !llvm.loop !3407, !psr.id !3409

47:                                               ; preds = %42
  %48 = and i64 %.06, 1, !dbg !3410, !psr.id !3411
  %49 = add i64 %.06, %48, !dbg !3412, !psr.id !3413
  call void @llvm.dbg.value(metadata i64 %49, metadata !3389, metadata !DIExpression()), !dbg !3292, !psr.id !3414
  %50 = mul i64 6, %49, !dbg !3415, !psr.id !3417
  %51 = icmp ugt i64 %50, 1128, !dbg !3418, !psr.id !3419
  br i1 %51, label %52, label %53, !dbg !3420, !psr.id !3421

52:                                               ; preds = %47
  br label %138, !dbg !3422, !psr.id !3424

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 0, !dbg !3425, !psr.id !3426
  %55 = load i32, i32* %54, align 8, !dbg !3425, !psr.id !3427
  %56 = add i32 %55, 7, !dbg !3428, !psr.id !3429
  %57 = lshr i32 %56, 3, !dbg !3430, !psr.id !3431
  %58 = zext i32 %57 to i64, !dbg !3432, !psr.id !3433
  call void @llvm.dbg.value(metadata i64 %58, metadata !3434, metadata !DIExpression()), !dbg !3292, !psr.id !3435
  %59 = getelementptr inbounds [1129 x i16], [1129 x i16]* %3, i64 0, i64 0, !dbg !3436, !psr.id !3437
  call void @llvm.dbg.value(metadata i16* %59, metadata !3438, metadata !DIExpression()), !dbg !3292, !psr.id !3439
  %60 = ptrtoint i16* %59 to i64, !dbg !3440, !psr.id !3442
  %61 = and i64 %60, 2, !dbg !3443, !psr.id !3444
  %62 = icmp eq i64 %61, 0, !dbg !3445, !psr.id !3446
  br i1 %62, label %63, label %65, !dbg !3447, !psr.id !3448

63:                                               ; preds = %53
  %64 = getelementptr inbounds i16, i16* %59, i32 1, !dbg !3449, !psr.id !3451
  call void @llvm.dbg.value(metadata i16* %64, metadata !3438, metadata !DIExpression()), !dbg !3292, !psr.id !3452
  br label %65, !dbg !3453, !psr.id !3454

65:                                               ; preds = %63, %53
  %.07 = phi i16* [ %64, %63 ], [ %59, %53 ], !dbg !3292, !psr.id !3455
  call void @llvm.dbg.value(metadata i16* %.07, metadata !3438, metadata !DIExpression()), !dbg !3292, !psr.id !3456
  call void @br_i15_decode(i16* %.07, i8* %.03, i64 %.05), !dbg !3457, !psr.id !3458
  %66 = getelementptr inbounds i16, i16* %.07, i64 %49, !dbg !3459, !psr.id !3460
  call void @llvm.dbg.value(metadata i16* %66, metadata !3461, metadata !DIExpression()), !dbg !3292, !psr.id !3462
  call void @br_i15_decode(i16* %66, i8* %.02, i64 %.04), !dbg !3463, !psr.id !3464
  %67 = mul i64 2, %49, !dbg !3465, !psr.id !3466
  %68 = getelementptr inbounds i16, i16* %.07, i64 %67, !dbg !3467, !psr.id !3468
  call void @llvm.dbg.value(metadata i16* %68, metadata !3469, metadata !DIExpression()), !dbg !3292, !psr.id !3470
  %69 = getelementptr inbounds i16, i16* %.07, i64 0, !dbg !3471, !psr.id !3472
  %70 = load i16, i16* %69, align 2, !dbg !3471, !psr.id !3473
  call void @br_i15_zero.29(i16* %68, i16 zeroext %70), !dbg !3474, !psr.id !3475
  call void @br_i15_mulacc(i16* %68, i16* %.07, i16* %66), !dbg !3476, !psr.id !3477
  %71 = mul i64 4, %49, !dbg !3478, !psr.id !3479
  %72 = getelementptr inbounds i16, i16* %.07, i64 %71, !dbg !3480, !psr.id !3481
  call void @llvm.dbg.value(metadata i16* %72, metadata !3482, metadata !DIExpression()), !dbg !3292, !psr.id !3483
  %73 = bitcast i16* %72 to i8*, !dbg !3484, !psr.id !3485
  call void @br_i15_encode(i8* %73, i64 %58, i16* %68), !dbg !3486, !psr.id !3487
  call void @llvm.dbg.value(metadata i64 %58, metadata !3488, metadata !DIExpression()), !dbg !3292, !psr.id !3489
  call void @llvm.dbg.value(metadata i32 0, metadata !3490, metadata !DIExpression()), !dbg !3292, !psr.id !3491
  br label %74, !dbg !3492, !psr.id !3493

74:                                               ; preds = %76, %65
  %.08 = phi i64 [ %58, %65 ], [ %77, %76 ], !dbg !3292, !psr.id !3494
  %.01 = phi i32 [ 0, %65 ], [ %88, %76 ], !dbg !3292, !psr.id !3495, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3490, metadata !DIExpression()), !dbg !3292, !psr.id !3496
  call void @llvm.dbg.value(metadata i64 %.08, metadata !3488, metadata !DIExpression()), !dbg !3292, !psr.id !3497
  %75 = icmp ugt i64 %.08, 0, !dbg !3498, !psr.id !3499
  br i1 %75, label %76, label %89, !dbg !3492, !psr.id !3500

76:                                               ; preds = %74
  %77 = add i64 %.08, -1, !dbg !3501, !psr.id !3503
  call void @llvm.dbg.value(metadata i64 %77, metadata !3488, metadata !DIExpression()), !dbg !3292, !psr.id !3504
  %78 = bitcast i16* %72 to i8*, !dbg !3505, !psr.id !3506
  %79 = getelementptr inbounds i8, i8* %78, i64 %77, !dbg !3505, !psr.id !3507
  %80 = load i8, i8* %79, align 1, !dbg !3505, !psr.id !3508, !ValueTainted !84
  %81 = zext i8 %80 to i32, !dbg !3505, !psr.id !3509, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %81, metadata !3510, metadata !DIExpression()), !dbg !3511, !psr.id !3512
  %82 = getelementptr inbounds i8, i8* %0, i64 %77, !dbg !3513, !psr.id !3514, !PointTainted !86
  %83 = load i8, i8* %82, align 1, !dbg !3513, !psr.id !3515, !ValueTainted !84
  %84 = zext i8 %83 to i32, !dbg !3513, !psr.id !3516, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %84, metadata !3517, metadata !DIExpression()), !dbg !3511, !psr.id !3518
  %85 = add i32 %81, %.01, !dbg !3519, !psr.id !3520, !ValueTainted !84
  %86 = sub i32 %84, %85, !dbg !3521, !psr.id !3522, !ValueTainted !84
  %87 = lshr i32 %86, 8, !dbg !3523, !psr.id !3524, !ValueTainted !84
  %88 = and i32 %87, 1, !dbg !3525, !psr.id !3526, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %88, metadata !3490, metadata !DIExpression()), !dbg !3292, !psr.id !3527
  br label %74, !dbg !3492, !llvm.loop !3528, !psr.id !3530

89:                                               ; preds = %74
  %90 = mul i64 2, %49, !dbg !3531, !psr.id !3532
  %91 = getelementptr inbounds i16, i16* %.07, i64 %90, !dbg !3533, !psr.id !3534
  call void @llvm.dbg.value(metadata i16* %91, metadata !3535, metadata !DIExpression()), !dbg !3292, !psr.id !3536
  %92 = bitcast i16* %91 to i8*, !dbg !3537, !psr.id !3538
  %93 = bitcast i16* %66 to i8*, !dbg !3537, !psr.id !3539
  %94 = mul i64 %49, 2, !dbg !3540, !psr.id !3541
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %92, i8* align 2 %93, i64 %94, i1 false), !dbg !3537, !psr.id !3542
  %95 = getelementptr inbounds i16, i16* %.07, i64 1, !dbg !3543, !psr.id !3544
  %96 = load i16, i16* %95, align 2, !dbg !3543, !psr.id !3545, !ValueTainted !84
  %97 = call zeroext i16 @br_i15_ninv15(i16 zeroext %96), !dbg !3546, !psr.id !3547, !ValueTainted !84
  call void @llvm.dbg.value(metadata i16 %97, metadata !3548, metadata !DIExpression()), !dbg !3292, !psr.id !3549
  %98 = getelementptr inbounds i16, i16* %.07, i64 %49, !dbg !3550, !psr.id !3551
  call void @llvm.dbg.value(metadata i16* %98, metadata !3552, metadata !DIExpression()), !dbg !3292, !psr.id !3553
  call void @br_i15_decode_reduce(i16* %98, i8* %0, i64 %58, i16* %.07), !dbg !3554, !psr.id !3555
  %99 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 7, !dbg !3556, !psr.id !3557
  %100 = load i8*, i8** %99, align 8, !dbg !3556, !psr.id !3558, !PointTainted !86
  %101 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 8, !dbg !3559, !psr.id !3560
  %102 = load i64, i64* %101, align 8, !dbg !3559, !psr.id !3561
  %103 = mul i64 3, %49, !dbg !3562, !psr.id !3563
  %104 = getelementptr inbounds i16, i16* %.07, i64 %103, !dbg !3564, !psr.id !3565
  %105 = mul i64 3, %49, !dbg !3566, !psr.id !3567
  %106 = sub i64 1128, %105, !dbg !3568, !psr.id !3569
  %107 = call i32 @br_i15_modpow_opt(i16* %98, i8* %100, i64 %102, i16* %.07, i16 zeroext %97, i16* %104, i64 %106), !dbg !3570, !psr.id !3571
  %108 = and i32 %.01, %107, !dbg !3572, !psr.id !3573, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %108, metadata !3490, metadata !DIExpression()), !dbg !3292, !psr.id !3574
  %109 = getelementptr inbounds i16, i16* %91, i64 1, !dbg !3575, !psr.id !3576
  %110 = load i16, i16* %109, align 2, !dbg !3575, !psr.id !3577, !ValueTainted !84
  %111 = call zeroext i16 @br_i15_ninv15(i16 zeroext %110), !dbg !3578, !psr.id !3579, !ValueTainted !84
  call void @llvm.dbg.value(metadata i16 %111, metadata !3580, metadata !DIExpression()), !dbg !3292, !psr.id !3581
  %112 = mul i64 3, %49, !dbg !3582, !psr.id !3583
  %113 = getelementptr inbounds i16, i16* %.07, i64 %112, !dbg !3584, !psr.id !3585
  call void @llvm.dbg.value(metadata i16* %113, metadata !3586, metadata !DIExpression()), !dbg !3292, !psr.id !3587
  call void @br_i15_decode_reduce(i16* %113, i8* %0, i64 %58, i16* %91), !dbg !3588, !psr.id !3589
  %114 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 5, !dbg !3590, !psr.id !3591
  %115 = load i8*, i8** %114, align 8, !dbg !3590, !psr.id !3592, !PointTainted !86
  %116 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 6, !dbg !3593, !psr.id !3594
  %117 = load i64, i64* %116, align 8, !dbg !3593, !psr.id !3595
  %118 = mul i64 4, %49, !dbg !3596, !psr.id !3597
  %119 = getelementptr inbounds i16, i16* %.07, i64 %118, !dbg !3598, !psr.id !3599
  %120 = mul i64 4, %49, !dbg !3600, !psr.id !3601
  %121 = sub i64 1128, %120, !dbg !3602, !psr.id !3603
  %122 = call i32 @br_i15_modpow_opt(i16* %113, i8* %115, i64 %117, i16* %91, i16 zeroext %111, i16* %119, i64 %121), !dbg !3604, !psr.id !3605
  %123 = and i32 %108, %122, !dbg !3606, !psr.id !3607, !ValueTainted !84
  call void @llvm.dbg.value(metadata i32 %123, metadata !3490, metadata !DIExpression()), !dbg !3292, !psr.id !3608
  %124 = mul i64 4, %49, !dbg !3609, !psr.id !3610
  %125 = getelementptr inbounds i16, i16* %.07, i64 %124, !dbg !3611, !psr.id !3612
  call void @llvm.dbg.value(metadata i16* %125, metadata !3461, metadata !DIExpression()), !dbg !3292, !psr.id !3613
  %126 = mul i64 5, %49, !dbg !3614, !psr.id !3615
  %127 = getelementptr inbounds i16, i16* %.07, i64 %126, !dbg !3616, !psr.id !3617
  call void @llvm.dbg.value(metadata i16* %127, metadata !3469, metadata !DIExpression()), !dbg !3292, !psr.id !3618
  call void @br_i15_reduce(i16* %127, i16* %98, i16* %91), !dbg !3619, !psr.id !3620
  %128 = call i32 @br_i15_sub(i16* %113, i16* %127, i32 1), !dbg !3621, !psr.id !3622
  %129 = call i32 @br_i15_add(i16* %113, i16* %91, i32 %128), !dbg !3623, !psr.id !3624
  call void @br_i15_to_monty(i16* %113, i16* %91), !dbg !3625, !psr.id !3626
  %130 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 9, !dbg !3627, !psr.id !3628
  %131 = load i8*, i8** %130, align 8, !dbg !3627, !psr.id !3629, !PointTainted !86
  %132 = getelementptr inbounds %struct.br_rsa_private_key, %struct.br_rsa_private_key* %1, i32 0, i32 10, !dbg !3630, !psr.id !3631
  %133 = load i64, i64* %132, align 8, !dbg !3630, !psr.id !3632
  call void @br_i15_decode_reduce(i16* %125, i8* %131, i64 %133, i16* %91), !dbg !3633, !psr.id !3634
  call void @br_i15_montymul(i16* %127, i16* %113, i16* %125, i16* %91, i16 zeroext %111), !dbg !3635, !psr.id !3636
  call void @llvm.dbg.value(metadata i16* %98, metadata !3482, metadata !DIExpression()), !dbg !3292, !psr.id !3637
  call void @br_i15_mulacc(i16* %98, i16* %.07, i16* %127), !dbg !3638, !psr.id !3639
  call void @br_i15_encode(i8* %0, i64 %58, i16* %98), !dbg !3640, !psr.id !3641
  %134 = zext i16 %111 to i32, !dbg !3642, !psr.id !3643, !ValueTainted !84
  %135 = zext i16 %97 to i32, !dbg !3644, !psr.id !3645, !ValueTainted !84
  %136 = and i32 %134, %135, !dbg !3646, !psr.id !3647, !ValueTainted !84
  %137 = and i32 %136, %123, !dbg !3648, !psr.id !3649, !ValueTainted !84
  br label %138, !dbg !3650, !psr.id !3651

138:                                              ; preds = %89, %52
  %.0 = phi i32 [ 0, %52 ], [ %137, %89 ], !dbg !3292, !psr.id !3652, !ValueTainted !84
  ret i32 %.0, !dbg !3653, !psr.id !3654
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero.29(i16* %0, i16 zeroext %1) #0 !dbg !3655 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !3656, metadata !DIExpression()), !dbg !3657, !psr.id !3658
  call void @llvm.dbg.value(metadata i16 %1, metadata !3659, metadata !DIExpression()), !dbg !3657, !psr.id !3660
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !3661, !psr.id !3662
  call void @llvm.dbg.value(metadata i16* %3, metadata !3656, metadata !DIExpression()), !dbg !3657, !psr.id !3663
  store i16 %1, i16* %0, align 2, !dbg !3664, !psr.id !3665
  %4 = bitcast i16* %3 to i8*, !dbg !3666, !psr.id !3667
  %5 = zext i16 %1 to i32, !dbg !3668, !psr.id !3669, !ValueTainted !84
  %6 = add nsw i32 %5, 15, !dbg !3670, !psr.id !3671, !ValueTainted !84
  %7 = ashr i32 %6, 4, !dbg !3672, !psr.id !3673, !ValueTainted !84
  %8 = sext i32 %7 to i64, !dbg !3674, !psr.id !3675, !ValueTainted !84
  %9 = mul i64 %8, 2, !dbg !3676, !psr.id !3677, !ValueTainted !84
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !3666, !psr.id !3678, !CalledTainted !980
  ret void, !dbg !3679, !psr.id !3680
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

!llvm.dbg.cu = !{!0, !3, !5, !7, !15, !17, !19, !23, !25, !28, !34, !36, !40, !42, !44, !46, !48, !50}
!llvm.ident = !{!57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../BearSSL/src/codec/ccopy.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "decrypt.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "../BearSSL/src/int/i15_add.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "../BearSSL/src/int/i15_bitlen.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 26, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 42, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "../BearSSL/src/int/i15_decode.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "../BearSSL/src/int/i15_decred.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "../BearSSL/src/int/i15_encode.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!21 = !{!10, !22}
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "../BearSSL/src/int/i15_fmont.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !27, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "../BearSSL/src/int/i15_modpow2.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!27 = !{!10, !14}
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../BearSSL/src/int/i15_montmul.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!30 = !{!31, !10}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../BearSSL/src/int/i15_mulacc.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !38, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../BearSSL/src/int/i15_muladd.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!38 = !{!10, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../BearSSL/src/int/i15_ninv15.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../BearSSL/src/int/i15_reduce.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../BearSSL/src/int/i15_rshift.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../BearSSL/src/int/i15_sub.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../BearSSL/src/int/i15_tmont.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !52, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../BearSSL/src/rsa/rsa_i15_priv.c", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!52 = !{!53, !54, !56}
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 90, baseType: !33)
!55 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!57 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "br_ccopy", scope: !1, file: !1, line: 29, type: !62, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !10, !39, !64, !31}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!66 = !DILocalVariable(name: "ctl", arg: 1, scope: !61, file: !1, line: 29, type: !10)
!67 = !DILocation(line: 0, scope: !61)
!68 = !{!"0"}
!69 = !DILocalVariable(name: "dst", arg: 2, scope: !61, file: !1, line: 29, type: !39)
!70 = !{!"1"}
!71 = !DILocalVariable(name: "src", arg: 3, scope: !61, file: !1, line: 29, type: !64)
!72 = !{!"2"}
!73 = !DILocalVariable(name: "len", arg: 4, scope: !61, file: !1, line: 29, type: !31)
!74 = !{!"3"}
!75 = !DILocalVariable(name: "d", scope: !61, file: !1, line: 31, type: !56)
!76 = !{!"4"}
!77 = !DILocalVariable(name: "s", scope: !61, file: !1, line: 32, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!80 = !{!"5"}
!81 = !DILocation(line: 36, column: 2, scope: !61)
!82 = !{!"6"}
!83 = !{!"7"}
!84 = !{!"ValueTainted"}
!85 = !{!"8"}
!86 = !{!"PointTainted"}
!87 = !{!"9"}
!88 = !{!"10"}
!89 = !{!"11"}
!90 = !{!"12"}
!91 = !DILocation(line: 36, column: 13, scope: !61)
!92 = !{!"13"}
!93 = !{!"14"}
!94 = !DILocation(line: 36, column: 16, scope: !61)
!95 = !{!"15"}
!96 = !{!"16"}
!97 = !{!"Tainted"}
!98 = !DILocation(line: 39, column: 10, scope: !99)
!99 = distinct !DILexicalBlock(scope: !61, file: !1, line: 36, column: 21)
!100 = !{!"17"}
!101 = !{!"18"}
!102 = !DILocation(line: 39, column: 7, scope: !99)
!103 = !{!"19"}
!104 = !{!"20"}
!105 = !DILocalVariable(name: "x", scope: !99, file: !1, line: 37, type: !10)
!106 = !DILocation(line: 0, scope: !99)
!107 = !{!"21"}
!108 = !DILocation(line: 40, column: 7, scope: !99)
!109 = !{!"22"}
!110 = !{!"23"}
!111 = !DILocalVariable(name: "y", scope: !99, file: !1, line: 37, type: !10)
!112 = !{!"24"}
!113 = !DILocation(line: 41, column: 8, scope: !99)
!114 = !{!"25"}
!115 = !{!"26"}
!116 = !DILocation(line: 41, column: 6, scope: !99)
!117 = !{!"27"}
!118 = !DILocation(line: 42, column: 5, scope: !99)
!119 = !{!"28"}
!120 = !{!"29"}
!121 = distinct !{!121, !81, !122, !123}
!122 = !DILocation(line: 43, column: 2, scope: !61)
!123 = !{!"llvm.loop.mustprogress"}
!124 = !{!"30"}
!125 = !DILocation(line: 44, column: 1, scope: !61)
!126 = !{!"31"}
!127 = distinct !DISubprogram(name: "MUX", scope: !128, file: !128, line: 770, type: !129, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!128 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!129 = !DISubroutineType(types: !130)
!130 = !{!10, !10, !10, !10}
!131 = !DILocalVariable(name: "ctl", arg: 1, scope: !127, file: !128, line: 770, type: !10)
!132 = !DILocation(line: 0, scope: !127)
!133 = !{!"32"}
!134 = !DILocalVariable(name: "x", arg: 2, scope: !127, file: !128, line: 770, type: !10)
!135 = !{!"33"}
!136 = !DILocalVariable(name: "y", arg: 3, scope: !127, file: !128, line: 770, type: !10)
!137 = !{!"34"}
!138 = !DILocation(line: 772, column: 14, scope: !127)
!139 = !{!"35"}
!140 = !DILocation(line: 772, column: 24, scope: !127)
!141 = !{!"36"}
!142 = !DILocation(line: 772, column: 19, scope: !127)
!143 = !{!"37"}
!144 = !DILocation(line: 772, column: 11, scope: !127)
!145 = !{!"38"}
!146 = !DILocation(line: 772, column: 2, scope: !127)
!147 = !{!"39"}
!148 = distinct !DISubprogram(name: "decrypt_wrapper", scope: !4, file: !4, line: 3, type: !149, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !56, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !154, line: 205, baseType: !155)
!154 = !DIFile(filename: "../BearSSL/inc/bearssl_rsa.h", directory: "/home/luwei/bech-back/BearSSL/rsa_i15")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 182, size: 704, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !155, file: !154, line: 184, baseType: !10, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !155, file: !154, line: 186, baseType: !56, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !155, file: !154, line: 188, baseType: !31, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !155, file: !154, line: 190, baseType: !56, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !155, file: !154, line: 192, baseType: !31, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !155, file: !154, line: 194, baseType: !56, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !155, file: !154, line: 196, baseType: !31, size: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !155, file: !154, line: 198, baseType: !56, size: 64, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !155, file: !154, line: 200, baseType: !31, size: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !155, file: !154, line: 202, baseType: !56, size: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !155, file: !154, line: 204, baseType: !31, size: 64, offset: 640)
!168 = !DILocalVariable(name: "x", arg: 1, scope: !148, file: !4, line: 3, type: !56)
!169 = !DILocation(line: 0, scope: !148)
!170 = !{!"40"}
!171 = !DILocalVariable(name: "sk", arg: 2, scope: !148, file: !4, line: 3, type: !151)
!172 = !{!"41"}
!173 = !DILocation(line: 4, column: 12, scope: !148)
!174 = !{!"42"}
!175 = !DILocation(line: 4, column: 2, scope: !148)
!176 = !{!"43"}
!177 = !DILocation(line: 5, column: 12, scope: !148)
!178 = !{!"44"}
!179 = !DILocation(line: 5, column: 2, scope: !148)
!180 = !{!"45"}
!181 = !DILocation(line: 6, column: 30, scope: !148)
!182 = !{!"46"}
!183 = !{!"47"}
!184 = !DILocation(line: 6, column: 12, scope: !148)
!185 = !{!"48"}
!186 = !DILocation(line: 6, column: 2, scope: !148)
!187 = !{!"49"}
!188 = !DILocation(line: 7, column: 30, scope: !148)
!189 = !{!"50"}
!190 = !{!"51"}
!191 = !DILocation(line: 7, column: 12, scope: !148)
!192 = !{!"52"}
!193 = !DILocation(line: 7, column: 2, scope: !148)
!194 = !{!"53"}
!195 = !DILocation(line: 8, column: 30, scope: !148)
!196 = !{!"54"}
!197 = !{!"55"}
!198 = !DILocation(line: 8, column: 12, scope: !148)
!199 = !{!"56"}
!200 = !DILocation(line: 8, column: 2, scope: !148)
!201 = !{!"57"}
!202 = !DILocation(line: 9, column: 30, scope: !148)
!203 = !{!"58"}
!204 = !{!"59"}
!205 = !DILocation(line: 9, column: 12, scope: !148)
!206 = !{!"60"}
!207 = !DILocation(line: 9, column: 2, scope: !148)
!208 = !{!"61"}
!209 = !DILocation(line: 10, column: 30, scope: !148)
!210 = !{!"62"}
!211 = !{!"63"}
!212 = !DILocation(line: 10, column: 12, scope: !148)
!213 = !{!"64"}
!214 = !DILocation(line: 10, column: 2, scope: !148)
!215 = !{!"65"}
!216 = !DILocation(line: 12, column: 30, scope: !148)
!217 = !{!"66"}
!218 = !{!"67"}
!219 = !DILocation(line: 12, column: 12, scope: !148)
!220 = !{!"68"}
!221 = !DILocation(line: 12, column: 2, scope: !148)
!222 = !{!"69"}
!223 = !DILocation(line: 13, column: 30, scope: !148)
!224 = !{!"70"}
!225 = !{!"71"}
!226 = !DILocation(line: 13, column: 12, scope: !148)
!227 = !{!"72"}
!228 = !DILocation(line: 13, column: 2, scope: !148)
!229 = !{!"73"}
!230 = !DILocation(line: 14, column: 30, scope: !148)
!231 = !{!"74"}
!232 = !{!"75"}
!233 = !DILocation(line: 14, column: 12, scope: !148)
!234 = !{!"76"}
!235 = !DILocation(line: 14, column: 2, scope: !148)
!236 = !{!"77"}
!237 = !DILocation(line: 15, column: 30, scope: !148)
!238 = !{!"78"}
!239 = !{!"79"}
!240 = !DILocation(line: 15, column: 12, scope: !148)
!241 = !{!"80"}
!242 = !DILocation(line: 15, column: 2, scope: !148)
!243 = !{!"81"}
!244 = !DILocation(line: 16, column: 30, scope: !148)
!245 = !{!"82"}
!246 = !{!"83"}
!247 = !DILocation(line: 16, column: 12, scope: !148)
!248 = !{!"84"}
!249 = !DILocation(line: 16, column: 2, scope: !148)
!250 = !{!"85"}
!251 = !DILocation(line: 18, column: 30, scope: !148)
!252 = !{!"86"}
!253 = !{!"87"}
!254 = !DILocation(line: 18, column: 12, scope: !148)
!255 = !{!"88"}
!256 = !DILocation(line: 18, column: 2, scope: !148)
!257 = !{!"89"}
!258 = !DILocation(line: 21, column: 2, scope: !148)
!259 = !{!"90"}
!260 = !DILocation(line: 22, column: 1, scope: !148)
!261 = !{!"91"}
!262 = distinct !DISubprogram(name: "decrypt_wrapper_t", scope: !4, file: !4, line: 34, type: !263, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!263 = !DISubroutineType(types: !264)
!264 = !{null}
!265 = !{!"92"}
!266 = !{!"93"}
!267 = !DILocalVariable(name: "xx", scope: !262, file: !4, line: 35, type: !22)
!268 = !DILocation(line: 35, column: 15, scope: !262)
!269 = !{!"94"}
!270 = !DILocation(line: 35, column: 20, scope: !262)
!271 = !{!"95"}
!272 = !{!"96"}
!273 = !DILocalVariable(name: "x", scope: !262, file: !4, line: 36, type: !56)
!274 = !DILocation(line: 0, scope: !262)
!275 = !{!"97"}
!276 = !DILocalVariable(name: "key", scope: !262, file: !4, line: 37, type: !153)
!277 = !DILocation(line: 37, column: 20, scope: !262)
!278 = !{!"98"}
!279 = !DILocation(line: 37, column: 26, scope: !262)
!280 = !{!"99"}
!281 = !DILocalVariable(name: "sk", scope: !262, file: !4, line: 38, type: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!283 = !{!"100"}
!284 = !DILocation(line: 39, column: 24, scope: !262)
!285 = !{!"101"}
!286 = !{!"102"}
!287 = !DILocalVariable(name: "p", scope: !262, file: !4, line: 39, type: !56)
!288 = !{!"103"}
!289 = !DILocation(line: 40, column: 24, scope: !262)
!290 = !{!"104"}
!291 = !{!"105"}
!292 = !DILocalVariable(name: "q", scope: !262, file: !4, line: 40, type: !56)
!293 = !{!"106"}
!294 = !DILocation(line: 41, column: 25, scope: !262)
!295 = !{!"107"}
!296 = !{!"108"}
!297 = !DILocalVariable(name: "dp", scope: !262, file: !4, line: 41, type: !56)
!298 = !{!"109"}
!299 = !DILocation(line: 42, column: 25, scope: !262)
!300 = !{!"110"}
!301 = !{!"111"}
!302 = !DILocalVariable(name: "dq", scope: !262, file: !4, line: 42, type: !56)
!303 = !{!"112"}
!304 = !DILocation(line: 43, column: 25, scope: !262)
!305 = !{!"113"}
!306 = !{!"114"}
!307 = !DILocalVariable(name: "iq", scope: !262, file: !4, line: 43, type: !56)
!308 = !{!"115"}
!309 = !DILocation(line: 45, column: 1, scope: !262)
!310 = !{!"116"}
!311 = !DILocation(line: 47, column: 5, scope: !262)
!312 = !{!"117"}
!313 = !DILocation(line: 47, column: 7, scope: !262)
!314 = !{!"118"}
!315 = !DILocation(line: 48, column: 5, scope: !262)
!316 = !{!"119"}
!317 = !DILocation(line: 48, column: 7, scope: !262)
!318 = !{!"120"}
!319 = !DILocation(line: 49, column: 5, scope: !262)
!320 = !{!"121"}
!321 = !DILocation(line: 49, column: 8, scope: !262)
!322 = !{!"122"}
!323 = !DILocation(line: 50, column: 5, scope: !262)
!324 = !{!"123"}
!325 = !DILocation(line: 50, column: 8, scope: !262)
!326 = !{!"124"}
!327 = !DILocation(line: 51, column: 5, scope: !262)
!328 = !{!"125"}
!329 = !DILocation(line: 51, column: 8, scope: !262)
!330 = !{!"126"}
!331 = !DILocation(line: 52, column: 1, scope: !262)
!332 = !{!"127"}
!333 = !DILocation(line: 54, column: 1, scope: !262)
!334 = !{!"128"}
!335 = distinct !DISubprogram(name: "br_i15_add", scope: !6, file: !6, line: 29, type: !336, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !2)
!336 = !DISubroutineType(types: !337)
!337 = !{!10, !338, !342, !10}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !11, line: 25, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !13, line: 40, baseType: !341)
!341 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!344 = !DILocalVariable(name: "a", arg: 1, scope: !335, file: !6, line: 29, type: !338)
!345 = !DILocation(line: 0, scope: !335)
!346 = !{!"129"}
!347 = !DILocalVariable(name: "b", arg: 2, scope: !335, file: !6, line: 29, type: !342)
!348 = !{!"130"}
!349 = !DILocalVariable(name: "ctl", arg: 3, scope: !335, file: !6, line: 29, type: !10)
!350 = !{!"131"}
!351 = !DILocalVariable(name: "cc", scope: !335, file: !6, line: 31, type: !10)
!352 = !{!"132"}
!353 = !DILocation(line: 35, column: 7, scope: !335)
!354 = !{!"133"}
!355 = !{!"134"}
!356 = !{!"135"}
!357 = !DILocation(line: 35, column: 12, scope: !335)
!358 = !{!"136"}
!359 = !DILocation(line: 35, column: 18, scope: !335)
!360 = !{!"137"}
!361 = !DILocation(line: 35, column: 6, scope: !335)
!362 = !{!"138"}
!363 = !DILocalVariable(name: "m", scope: !335, file: !6, line: 32, type: !31)
!364 = !{!"139"}
!365 = !DILocalVariable(name: "u", scope: !335, file: !6, line: 32, type: !31)
!366 = !{!"140"}
!367 = !DILocation(line: 36, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !335, file: !6, line: 36, column: 2)
!369 = !{!"141"}
!370 = !{!"142"}
!371 = !DILocation(line: 0, scope: !368)
!372 = !{!"143"}
!373 = !{!"144"}
!374 = !{!"145"}
!375 = !DILocation(line: 36, column: 16, scope: !376)
!376 = distinct !DILexicalBlock(scope: !368, file: !6, line: 36, column: 2)
!377 = !{!"146"}
!378 = !DILocation(line: 36, column: 2, scope: !368)
!379 = !{!"147"}
!380 = !DILocation(line: 39, column: 8, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !6, line: 36, column: 27)
!382 = !{!"148"}
!383 = !{!"149"}
!384 = !{!"150"}
!385 = !DILocalVariable(name: "aw", scope: !381, file: !6, line: 37, type: !10)
!386 = !DILocation(line: 0, scope: !381)
!387 = !{!"151"}
!388 = !DILocation(line: 40, column: 8, scope: !381)
!389 = !{!"152"}
!390 = !{!"153"}
!391 = !{!"154"}
!392 = !DILocalVariable(name: "bw", scope: !381, file: !6, line: 37, type: !10)
!393 = !{!"155"}
!394 = !DILocation(line: 41, column: 12, scope: !381)
!395 = !{!"156"}
!396 = !DILocation(line: 41, column: 17, scope: !381)
!397 = !{!"157"}
!398 = !DILocalVariable(name: "naw", scope: !381, file: !6, line: 37, type: !10)
!399 = !{!"158"}
!400 = !DILocation(line: 42, column: 12, scope: !381)
!401 = !{!"159"}
!402 = !{!"160"}
!403 = !DILocation(line: 43, column: 23, scope: !381)
!404 = !{!"161"}
!405 = !DILocation(line: 43, column: 10, scope: !381)
!406 = !{!"162"}
!407 = !{!"163"}
!408 = !DILocation(line: 43, column: 3, scope: !381)
!409 = !{!"164"}
!410 = !DILocation(line: 43, column: 8, scope: !381)
!411 = !{!"165"}
!412 = !DILocation(line: 44, column: 2, scope: !381)
!413 = !{!"166"}
!414 = !DILocation(line: 36, column: 23, scope: !376)
!415 = !{!"167"}
!416 = !{!"168"}
!417 = !DILocation(line: 36, column: 2, scope: !376)
!418 = distinct !{!418, !378, !419, !123}
!419 = !DILocation(line: 44, column: 2, scope: !368)
!420 = !{!"169"}
!421 = !DILocation(line: 45, column: 2, scope: !335)
!422 = !{!"170"}
!423 = distinct !DISubprogram(name: "MUX", scope: !128, file: !128, line: 770, type: !129, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !5, retainedNodes: !2)
!424 = !DILocalVariable(name: "ctl", arg: 1, scope: !423, file: !128, line: 770, type: !10)
!425 = !DILocation(line: 0, scope: !423)
!426 = !{!"171"}
!427 = !DILocalVariable(name: "x", arg: 2, scope: !423, file: !128, line: 770, type: !10)
!428 = !{!"172"}
!429 = !DILocalVariable(name: "y", arg: 3, scope: !423, file: !128, line: 770, type: !10)
!430 = !{!"173"}
!431 = !DILocation(line: 772, column: 14, scope: !423)
!432 = !{!"174"}
!433 = !DILocation(line: 772, column: 24, scope: !423)
!434 = !{!"175"}
!435 = !DILocation(line: 772, column: 19, scope: !423)
!436 = !{!"176"}
!437 = !DILocation(line: 772, column: 11, scope: !423)
!438 = !{!"177"}
!439 = !DILocation(line: 772, column: 2, scope: !423)
!440 = !{!"178"}
!441 = distinct !DISubprogram(name: "br_i15_bit_length", scope: !8, file: !8, line: 29, type: !442, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !2)
!442 = !DISubroutineType(types: !443)
!443 = !{!10, !338, !31}
!444 = !DILocalVariable(name: "x", arg: 1, scope: !441, file: !8, line: 29, type: !338)
!445 = !DILocation(line: 0, scope: !441)
!446 = !{!"179"}
!447 = !DILocalVariable(name: "xlen", arg: 2, scope: !441, file: !8, line: 29, type: !31)
!448 = !{!"180"}
!449 = !DILocalVariable(name: "tw", scope: !441, file: !8, line: 31, type: !10)
!450 = !{!"181"}
!451 = !DILocalVariable(name: "twk", scope: !441, file: !8, line: 31, type: !10)
!452 = !{!"182"}
!453 = !DILocation(line: 35, column: 2, scope: !441)
!454 = !{!"183"}
!455 = !{!"184"}
!456 = !{!"185"}
!457 = !{!"186"}
!458 = !{!"187"}
!459 = !{!"188"}
!460 = !{!"189"}
!461 = !DILocation(line: 35, column: 14, scope: !441)
!462 = !{!"190"}
!463 = !{!"191"}
!464 = !DILocation(line: 35, column: 17, scope: !441)
!465 = !{!"192"}
!466 = !{!"193"}
!467 = !DILocation(line: 38, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !441, file: !8, line: 35, column: 22)
!469 = !{!"194"}
!470 = !DILocalVariable(name: "c", scope: !468, file: !8, line: 36, type: !10)
!471 = !DILocation(line: 0, scope: !468)
!472 = !{!"195"}
!473 = !DILocation(line: 39, column: 7, scope: !468)
!474 = !{!"196"}
!475 = !{!"197"}
!476 = !{!"198"}
!477 = !DILocalVariable(name: "w", scope: !468, file: !8, line: 36, type: !10)
!478 = !{!"199"}
!479 = !DILocation(line: 40, column: 8, scope: !468)
!480 = !{!"200"}
!481 = !{!"201"}
!482 = !DILocation(line: 41, column: 16, scope: !468)
!483 = !{!"202"}
!484 = !DILocation(line: 41, column: 9, scope: !468)
!485 = !{!"203"}
!486 = !{!"204"}
!487 = distinct !{!487, !453, !488, !123}
!488 = !DILocation(line: 42, column: 2, scope: !441)
!489 = !{!"205"}
!490 = !DILocation(line: 43, column: 14, scope: !441)
!491 = !{!"206"}
!492 = !DILocation(line: 43, column: 22, scope: !441)
!493 = !{!"207"}
!494 = !DILocation(line: 43, column: 20, scope: !441)
!495 = !{!"208"}
!496 = !DILocation(line: 43, column: 2, scope: !441)
!497 = !{!"209"}
!498 = distinct !DISubprogram(name: "EQ", scope: !128, file: !128, line: 779, type: !499, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!499 = !DISubroutineType(types: !500)
!500 = !{!10, !10, !10}
!501 = !DILocalVariable(name: "x", arg: 1, scope: !498, file: !128, line: 779, type: !10)
!502 = !DILocation(line: 0, scope: !498)
!503 = !{!"210"}
!504 = !DILocalVariable(name: "y", arg: 2, scope: !498, file: !128, line: 779, type: !10)
!505 = !{!"211"}
!506 = !DILocation(line: 783, column: 8, scope: !498)
!507 = !{!"212"}
!508 = !DILocalVariable(name: "q", scope: !498, file: !128, line: 781, type: !10)
!509 = !{!"213"}
!510 = !DILocation(line: 784, column: 18, scope: !498)
!511 = !{!"214"}
!512 = !DILocation(line: 784, column: 16, scope: !498)
!513 = !{!"215"}
!514 = !DILocation(line: 784, column: 22, scope: !498)
!515 = !{!"216"}
!516 = !DILocation(line: 784, column: 9, scope: !498)
!517 = !{!"217"}
!518 = !DILocation(line: 784, column: 2, scope: !498)
!519 = !{!"218"}
!520 = distinct !DISubprogram(name: "MUX", scope: !128, file: !128, line: 770, type: !129, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!521 = !DILocalVariable(name: "ctl", arg: 1, scope: !520, file: !128, line: 770, type: !10)
!522 = !DILocation(line: 0, scope: !520)
!523 = !{!"219"}
!524 = !DILocalVariable(name: "x", arg: 2, scope: !520, file: !128, line: 770, type: !10)
!525 = !{!"220"}
!526 = !DILocalVariable(name: "y", arg: 3, scope: !520, file: !128, line: 770, type: !10)
!527 = !{!"221"}
!528 = !DILocation(line: 772, column: 14, scope: !520)
!529 = !{!"222"}
!530 = !DILocation(line: 772, column: 24, scope: !520)
!531 = !{!"223"}
!532 = !DILocation(line: 772, column: 19, scope: !520)
!533 = !{!"224"}
!534 = !DILocation(line: 772, column: 11, scope: !520)
!535 = !{!"225"}
!536 = !DILocation(line: 772, column: 2, scope: !520)
!537 = !{!"226"}
!538 = distinct !DISubprogram(name: "BIT_LENGTH", scope: !128, file: !128, line: 915, type: !539, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!539 = !DISubroutineType(types: !540)
!540 = !{!10, !10}
!541 = !DILocalVariable(name: "x", arg: 1, scope: !538, file: !128, line: 915, type: !10)
!542 = !DILocation(line: 0, scope: !538)
!543 = !{!"227"}
!544 = !DILocation(line: 919, column: 6, scope: !538)
!545 = !{!"228"}
!546 = !DILocalVariable(name: "k", scope: !538, file: !128, line: 917, type: !10)
!547 = !{!"229"}
!548 = !DILocation(line: 920, column: 6, scope: !538)
!549 = !{!"230"}
!550 = !DILocalVariable(name: "c", scope: !538, file: !128, line: 917, type: !10)
!551 = !{!"231"}
!552 = !DILocation(line: 920, column: 34, scope: !538)
!553 = !{!"232"}
!554 = !DILocation(line: 920, column: 25, scope: !538)
!555 = !{!"233"}
!556 = !{!"234"}
!557 = !DILocation(line: 920, column: 52, scope: !538)
!558 = !{!"235"}
!559 = !DILocation(line: 920, column: 47, scope: !538)
!560 = !{!"236"}
!561 = !{!"237"}
!562 = !DILocation(line: 921, column: 6, scope: !538)
!563 = !{!"238"}
!564 = !{!"239"}
!565 = !DILocation(line: 921, column: 34, scope: !538)
!566 = !{!"240"}
!567 = !DILocation(line: 921, column: 25, scope: !538)
!568 = !{!"241"}
!569 = !{!"242"}
!570 = !DILocation(line: 921, column: 52, scope: !538)
!571 = !{!"243"}
!572 = !DILocation(line: 921, column: 47, scope: !538)
!573 = !{!"244"}
!574 = !{!"245"}
!575 = !DILocation(line: 922, column: 6, scope: !538)
!576 = !{!"246"}
!577 = !{!"247"}
!578 = !DILocation(line: 922, column: 34, scope: !538)
!579 = !{!"248"}
!580 = !DILocation(line: 922, column: 25, scope: !538)
!581 = !{!"249"}
!582 = !{!"250"}
!583 = !DILocation(line: 922, column: 52, scope: !538)
!584 = !{!"251"}
!585 = !DILocation(line: 922, column: 47, scope: !538)
!586 = !{!"252"}
!587 = !{!"253"}
!588 = !DILocation(line: 923, column: 6, scope: !538)
!589 = !{!"254"}
!590 = !{!"255"}
!591 = !DILocation(line: 923, column: 34, scope: !538)
!592 = !{!"256"}
!593 = !DILocation(line: 923, column: 25, scope: !538)
!594 = !{!"257"}
!595 = !{!"258"}
!596 = !DILocation(line: 923, column: 52, scope: !538)
!597 = !{!"259"}
!598 = !DILocation(line: 923, column: 47, scope: !538)
!599 = !{!"260"}
!600 = !{!"261"}
!601 = !DILocation(line: 924, column: 7, scope: !538)
!602 = !{!"262"}
!603 = !DILocation(line: 924, column: 4, scope: !538)
!604 = !{!"263"}
!605 = !{!"264"}
!606 = !DILocation(line: 925, column: 2, scope: !538)
!607 = !{!"265"}
!608 = distinct !DISubprogram(name: "NEQ", scope: !128, file: !128, line: 791, type: !499, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!609 = !DILocalVariable(name: "x", arg: 1, scope: !608, file: !128, line: 791, type: !10)
!610 = !DILocation(line: 0, scope: !608)
!611 = !{!"266"}
!612 = !DILocalVariable(name: "y", arg: 2, scope: !608, file: !128, line: 791, type: !10)
!613 = !{!"267"}
!614 = !DILocation(line: 795, column: 8, scope: !608)
!615 = !{!"268"}
!616 = !DILocalVariable(name: "q", scope: !608, file: !128, line: 793, type: !10)
!617 = !{!"269"}
!618 = !DILocation(line: 796, column: 14, scope: !608)
!619 = !{!"270"}
!620 = !DILocation(line: 796, column: 12, scope: !608)
!621 = !{!"271"}
!622 = !DILocation(line: 796, column: 18, scope: !608)
!623 = !{!"272"}
!624 = !DILocation(line: 796, column: 2, scope: !608)
!625 = !{!"273"}
!626 = distinct !DISubprogram(name: "GT", scope: !128, file: !128, line: 803, type: !499, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!627 = !DILocalVariable(name: "x", arg: 1, scope: !626, file: !128, line: 803, type: !10)
!628 = !DILocation(line: 0, scope: !626)
!629 = !{!"274"}
!630 = !DILocalVariable(name: "y", arg: 2, scope: !626, file: !128, line: 803, type: !10)
!631 = !{!"275"}
!632 = !DILocation(line: 819, column: 8, scope: !626)
!633 = !{!"276"}
!634 = !DILocalVariable(name: "z", scope: !626, file: !128, line: 817, type: !10)
!635 = !{!"277"}
!636 = !DILocation(line: 820, column: 18, scope: !626)
!637 = !{!"278"}
!638 = !DILocation(line: 820, column: 28, scope: !626)
!639 = !{!"279"}
!640 = !DILocation(line: 820, column: 23, scope: !626)
!641 = !{!"280"}
!642 = !DILocation(line: 820, column: 12, scope: !626)
!643 = !{!"281"}
!644 = !DILocation(line: 820, column: 35, scope: !626)
!645 = !{!"282"}
!646 = !DILocation(line: 820, column: 2, scope: !626)
!647 = !{!"283"}
!648 = distinct !DISubprogram(name: "NOT", scope: !128, file: !128, line: 761, type: !539, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !2)
!649 = !DILocalVariable(name: "ctl", arg: 1, scope: !648, file: !128, line: 761, type: !10)
!650 = !DILocation(line: 0, scope: !648)
!651 = !{!"284"}
!652 = !DILocation(line: 763, column: 13, scope: !648)
!653 = !{!"285"}
!654 = !DILocation(line: 763, column: 2, scope: !648)
!655 = !{!"286"}
!656 = distinct !DISubprogram(name: "br_i15_decode", scope: !16, file: !16, line: 29, type: !657, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !2)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !338, !64, !31}
!659 = !DILocalVariable(name: "x", arg: 1, scope: !656, file: !16, line: 29, type: !338)
!660 = !DILocation(line: 0, scope: !656)
!661 = !{!"287"}
!662 = !DILocalVariable(name: "src", arg: 2, scope: !656, file: !16, line: 29, type: !64)
!663 = !{!"288"}
!664 = !DILocalVariable(name: "len", arg: 3, scope: !656, file: !16, line: 29, type: !31)
!665 = !{!"289"}
!666 = !DILocalVariable(name: "buf", scope: !656, file: !16, line: 31, type: !78)
!667 = !{!"290"}
!668 = !DILocalVariable(name: "v", scope: !656, file: !16, line: 32, type: !31)
!669 = !{!"291"}
!670 = !DILocalVariable(name: "acc", scope: !656, file: !16, line: 33, type: !10)
!671 = !{!"292"}
!672 = !DILocalVariable(name: "acc_len", scope: !656, file: !16, line: 34, type: !673)
!673 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!674 = !{!"293"}
!675 = !DILocation(line: 40, column: 2, scope: !656)
!676 = !{!"294"}
!677 = !{!"295"}
!678 = !{!"296"}
!679 = !{!"297"}
!680 = !{!"298"}
!681 = !{!"299"}
!682 = !{!"300"}
!683 = !{!"301"}
!684 = !{!"302"}
!685 = !DILocation(line: 40, column: 13, scope: !656)
!686 = !{!"303"}
!687 = !{!"304"}
!688 = !DILocation(line: 40, column: 16, scope: !656)
!689 = !{!"305"}
!690 = !{!"306"}
!691 = !DILocation(line: 43, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !656, file: !16, line: 40, column: 21)
!693 = !{!"307"}
!694 = !{!"308"}
!695 = !{!"309"}
!696 = !DILocalVariable(name: "b", scope: !692, file: !16, line: 41, type: !10)
!697 = !DILocation(line: 0, scope: !692)
!698 = !{!"310"}
!699 = !DILocation(line: 44, column: 13, scope: !692)
!700 = !{!"311"}
!701 = !DILocation(line: 44, column: 7, scope: !692)
!702 = !{!"312"}
!703 = !{!"313"}
!704 = !DILocation(line: 45, column: 11, scope: !692)
!705 = !{!"314"}
!706 = !{!"315"}
!707 = !DILocation(line: 46, column: 15, scope: !708)
!708 = distinct !DILexicalBlock(scope: !692, file: !16, line: 46, column: 7)
!709 = !{!"316"}
!710 = !DILocation(line: 46, column: 7, scope: !692)
!711 = !{!"317"}
!712 = !DILocation(line: 47, column: 18, scope: !713)
!713 = distinct !DILexicalBlock(scope: !708, file: !16, line: 46, column: 22)
!714 = !{!"318"}
!715 = !DILocation(line: 47, column: 14, scope: !713)
!716 = !{!"319"}
!717 = !DILocation(line: 47, column: 8, scope: !713)
!718 = !{!"320"}
!719 = !{!"321"}
!720 = !DILocation(line: 47, column: 4, scope: !713)
!721 = !{!"322"}
!722 = !DILocation(line: 47, column: 12, scope: !713)
!723 = !{!"323"}
!724 = !DILocation(line: 48, column: 12, scope: !713)
!725 = !{!"324"}
!726 = !{!"325"}
!727 = !DILocation(line: 49, column: 8, scope: !713)
!728 = !{!"326"}
!729 = !{!"327"}
!730 = !DILocation(line: 50, column: 3, scope: !713)
!731 = !{!"328"}
!732 = !{!"329"}
!733 = !{!"330"}
!734 = !{!"331"}
!735 = !{!"332"}
!736 = !{!"333"}
!737 = !{!"334"}
!738 = distinct !{!738, !675, !739, !123}
!739 = !DILocation(line: 51, column: 2, scope: !656)
!740 = !{!"335"}
!741 = !DILocation(line: 52, column: 14, scope: !742)
!742 = distinct !DILexicalBlock(scope: !656, file: !16, line: 52, column: 6)
!743 = !{!"336"}
!744 = !DILocation(line: 52, column: 6, scope: !656)
!745 = !{!"337"}
!746 = !DILocation(line: 53, column: 13, scope: !747)
!747 = distinct !DILexicalBlock(scope: !742, file: !16, line: 52, column: 20)
!748 = !{!"338"}
!749 = !DILocation(line: 53, column: 7, scope: !747)
!750 = !{!"339"}
!751 = !{!"340"}
!752 = !DILocation(line: 53, column: 3, scope: !747)
!753 = !{!"341"}
!754 = !DILocation(line: 53, column: 11, scope: !747)
!755 = !{!"342"}
!756 = !DILocation(line: 54, column: 2, scope: !747)
!757 = !{!"343"}
!758 = !{!"344"}
!759 = !{!"345"}
!760 = !DILocation(line: 55, column: 29, scope: !656)
!761 = !{!"346"}
!762 = !DILocation(line: 55, column: 36, scope: !656)
!763 = !{!"347"}
!764 = !DILocation(line: 55, column: 9, scope: !656)
!765 = !{!"348"}
!766 = !{!"349"}
!767 = !DILocation(line: 55, column: 2, scope: !656)
!768 = !{!"350"}
!769 = !DILocation(line: 55, column: 7, scope: !656)
!770 = !{!"351"}
!771 = !DILocation(line: 56, column: 1, scope: !656)
!772 = !{!"352"}
!773 = distinct !DISubprogram(name: "br_i15_decode_reduce", scope: !18, file: !18, line: 29, type: !774, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !2)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !338, !64, !31, !342}
!776 = !DILocalVariable(name: "x", arg: 1, scope: !773, file: !18, line: 29, type: !338)
!777 = !DILocation(line: 0, scope: !773)
!778 = !{!"353"}
!779 = !DILocalVariable(name: "src", arg: 2, scope: !773, file: !18, line: 30, type: !64)
!780 = !{!"354"}
!781 = !DILocalVariable(name: "len", arg: 3, scope: !773, file: !18, line: 30, type: !31)
!782 = !{!"355"}
!783 = !DILocalVariable(name: "m", arg: 4, scope: !773, file: !18, line: 30, type: !342)
!784 = !{!"356"}
!785 = !DILocation(line: 41, column: 14, scope: !773)
!786 = !{!"357"}
!787 = !{!"358"}
!788 = !{!"359"}
!789 = !DILocalVariable(name: "m_ebitlen", scope: !773, file: !18, line: 32, type: !10)
!790 = !{!"360"}
!791 = !DILocation(line: 46, column: 16, scope: !792)
!792 = distinct !DILexicalBlock(scope: !773, file: !18, line: 46, column: 6)
!793 = !{!"361"}
!794 = !DILocation(line: 46, column: 6, scope: !773)
!795 = !{!"362"}
!796 = !DILocation(line: 47, column: 3, scope: !797)
!797 = distinct !DILexicalBlock(scope: !792, file: !18, line: 46, column: 22)
!798 = !{!"363"}
!799 = !DILocation(line: 47, column: 8, scope: !797)
!800 = !{!"364"}
!801 = !DILocation(line: 48, column: 3, scope: !797)
!802 = !{!"365"}
!803 = !DILocation(line: 54, column: 17, scope: !773)
!804 = !{!"366"}
!805 = !DILocation(line: 54, column: 2, scope: !773)
!806 = !{!"367"}
!807 = !DILocation(line: 60, column: 24, scope: !773)
!808 = !{!"368"}
!809 = !DILocalVariable(name: "m_rbitlen", scope: !773, file: !18, line: 32, type: !10)
!810 = !{!"369"}
!811 = !DILocation(line: 61, column: 25, scope: !773)
!812 = !{!"370"}
!813 = !DILocation(line: 61, column: 44, scope: !773)
!814 = !{!"371"}
!815 = !DILocation(line: 61, column: 31, scope: !773)
!816 = !{!"372"}
!817 = !DILocation(line: 61, column: 50, scope: !773)
!818 = !{!"373"}
!819 = !{!"374"}
!820 = !DILocation(line: 62, column: 21, scope: !773)
!821 = !{!"375"}
!822 = !DILocation(line: 62, column: 26, scope: !773)
!823 = !{!"376"}
!824 = !DILocation(line: 62, column: 10, scope: !773)
!825 = !{!"377"}
!826 = !DILocalVariable(name: "mblen", scope: !773, file: !18, line: 33, type: !31)
!827 = !{!"378"}
!828 = !DILocation(line: 63, column: 12, scope: !773)
!829 = !{!"379"}
!830 = !DILocalVariable(name: "k", scope: !773, file: !18, line: 33, type: !31)
!831 = !{!"380"}
!832 = !DILocation(line: 64, column: 8, scope: !833)
!833 = distinct !DILexicalBlock(scope: !773, file: !18, line: 64, column: 6)
!834 = !{!"381"}
!835 = !DILocation(line: 64, column: 6, scope: !773)
!836 = !{!"382"}
!837 = !DILocation(line: 65, column: 3, scope: !838)
!838 = distinct !DILexicalBlock(scope: !833, file: !18, line: 64, column: 16)
!839 = !{!"383"}
!840 = !DILocation(line: 66, column: 10, scope: !838)
!841 = !{!"384"}
!842 = !DILocation(line: 66, column: 3, scope: !838)
!843 = !{!"385"}
!844 = !DILocation(line: 66, column: 8, scope: !838)
!845 = !{!"386"}
!846 = !DILocation(line: 67, column: 3, scope: !838)
!847 = !{!"387"}
!848 = !DILocalVariable(name: "buf", scope: !773, file: !18, line: 34, type: !78)
!849 = !{!"388"}
!850 = !DILocation(line: 70, column: 2, scope: !773)
!851 = !{!"389"}
!852 = !DILocation(line: 71, column: 9, scope: !773)
!853 = !{!"390"}
!854 = !DILocation(line: 71, column: 2, scope: !773)
!855 = !{!"391"}
!856 = !DILocation(line: 71, column: 7, scope: !773)
!857 = !{!"392"}
!858 = !DILocalVariable(name: "acc", scope: !773, file: !18, line: 35, type: !10)
!859 = !{!"393"}
!860 = !DILocalVariable(name: "acc_len", scope: !773, file: !18, line: 36, type: !673)
!861 = !{!"394"}
!862 = !DILocation(line: 78, column: 2, scope: !773)
!863 = !{!"395"}
!864 = !{!"396"}
!865 = !{!"397"}
!866 = !{!"398"}
!867 = !{!"399"}
!868 = !{!"400"}
!869 = !{!"401"}
!870 = !DILocation(line: 78, column: 11, scope: !773)
!871 = !{!"402"}
!872 = !{!"403"}
!873 = !DILocation(line: 81, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !773, file: !18, line: 78, column: 18)
!875 = !{!"404"}
!876 = !{!"405"}
!877 = !DILocation(line: 81, column: 7, scope: !874)
!878 = !{!"406"}
!879 = !{!"407"}
!880 = !{!"408"}
!881 = !DILocalVariable(name: "v", scope: !874, file: !18, line: 79, type: !10)
!882 = !DILocation(line: 0, scope: !874)
!883 = !{!"409"}
!884 = !DILocation(line: 82, column: 14, scope: !874)
!885 = !{!"410"}
!886 = !DILocation(line: 82, column: 20, scope: !874)
!887 = !{!"411"}
!888 = !{!"412"}
!889 = !DILocation(line: 83, column: 11, scope: !874)
!890 = !{!"413"}
!891 = !{!"414"}
!892 = !DILocation(line: 84, column: 15, scope: !893)
!893 = distinct !DILexicalBlock(scope: !874, file: !18, line: 84, column: 7)
!894 = !{!"415"}
!895 = !DILocation(line: 84, column: 7, scope: !874)
!896 = !{!"416"}
!897 = !DILocation(line: 85, column: 43, scope: !898)
!898 = distinct !DILexicalBlock(scope: !893, file: !18, line: 84, column: 22)
!899 = !{!"417"}
!900 = !DILocation(line: 85, column: 31, scope: !898)
!901 = !{!"418"}
!902 = !DILocation(line: 85, column: 27, scope: !898)
!903 = !{!"419"}
!904 = !DILocation(line: 85, column: 4, scope: !898)
!905 = !{!"420"}
!906 = !DILocation(line: 86, column: 12, scope: !898)
!907 = !{!"421"}
!908 = !{!"422"}
!909 = !DILocation(line: 87, column: 26, scope: !898)
!910 = !{!"423"}
!911 = !DILocation(line: 87, column: 11, scope: !898)
!912 = !{!"424"}
!913 = !DILocation(line: 87, column: 8, scope: !898)
!914 = !{!"425"}
!915 = !{!"426"}
!916 = !DILocation(line: 88, column: 3, scope: !898)
!917 = !{!"427"}
!918 = !{!"428"}
!919 = !{!"429"}
!920 = !{!"430"}
!921 = !{!"431"}
!922 = distinct !{!922, !862, !923, !123}
!923 = !DILocation(line: 89, column: 2, scope: !773)
!924 = !{!"432"}
!925 = !DILocation(line: 95, column: 14, scope: !926)
!926 = distinct !DILexicalBlock(scope: !773, file: !18, line: 95, column: 6)
!927 = !{!"433"}
!928 = !DILocation(line: 95, column: 6, scope: !773)
!929 = !{!"434"}
!930 = !DILocation(line: 96, column: 17, scope: !931)
!931 = distinct !DILexicalBlock(scope: !926, file: !18, line: 95, column: 20)
!932 = !{!"435"}
!933 = !{!"436"}
!934 = !{!"437"}
!935 = !DILocation(line: 96, column: 22, scope: !931)
!936 = !{!"438"}
!937 = !DILocation(line: 96, column: 14, scope: !931)
!938 = !{!"439"}
!939 = !DILocation(line: 96, column: 35, scope: !931)
!940 = !{!"440"}
!941 = !{!"441"}
!942 = !DILocation(line: 97, column: 23, scope: !931)
!943 = !{!"442"}
!944 = !DILocation(line: 97, column: 3, scope: !931)
!945 = !{!"443"}
!946 = !DILocation(line: 98, column: 26, scope: !931)
!947 = !{!"444"}
!948 = !DILocation(line: 98, column: 3, scope: !931)
!949 = !{!"445"}
!950 = !DILocation(line: 99, column: 2, scope: !931)
!951 = !{!"446"}
!952 = !DILocation(line: 100, column: 1, scope: !773)
!953 = !{!"447"}
!954 = distinct !DISubprogram(name: "br_i15_zero", scope: !128, file: !128, line: 1537, type: !955, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !2)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !338, !339}
!957 = !DILocalVariable(name: "x", arg: 1, scope: !954, file: !128, line: 1537, type: !338)
!958 = !DILocation(line: 0, scope: !954)
!959 = !{!"448"}
!960 = !DILocalVariable(name: "bit_len", arg: 2, scope: !954, file: !128, line: 1537, type: !339)
!961 = !{!"449"}
!962 = !DILocation(line: 1539, column: 5, scope: !954)
!963 = !{!"450"}
!964 = !{!"451"}
!965 = !DILocation(line: 1539, column: 8, scope: !954)
!966 = !{!"452"}
!967 = !DILocation(line: 1540, column: 2, scope: !954)
!968 = !{!"453"}
!969 = !DILocation(line: 1540, column: 17, scope: !954)
!970 = !{!"454"}
!971 = !DILocation(line: 1540, column: 25, scope: !954)
!972 = !{!"455"}
!973 = !DILocation(line: 1540, column: 31, scope: !954)
!974 = !{!"456"}
!975 = !DILocation(line: 1540, column: 15, scope: !954)
!976 = !{!"457"}
!977 = !DILocation(line: 1540, column: 37, scope: !954)
!978 = !{!"458"}
!979 = !{!"459"}
!980 = !{!"0010"}
!981 = !DILocation(line: 1541, column: 1, scope: !954)
!982 = !{!"460"}
!983 = distinct !DISubprogram(name: "br_i15_encode", scope: !20, file: !20, line: 29, type: !984, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !2)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !39, !31, !342}
!986 = !DILocalVariable(name: "dst", arg: 1, scope: !983, file: !20, line: 29, type: !39)
!987 = !DILocation(line: 0, scope: !983)
!988 = !{!"461"}
!989 = !DILocalVariable(name: "len", arg: 2, scope: !983, file: !20, line: 29, type: !31)
!990 = !{!"462"}
!991 = !DILocalVariable(name: "x", arg: 3, scope: !983, file: !20, line: 29, type: !342)
!992 = !{!"463"}
!993 = !DILocation(line: 36, column: 10, scope: !983)
!994 = !{!"464"}
!995 = !{!"465"}
!996 = !{!"466"}
!997 = !DILocation(line: 36, column: 15, scope: !983)
!998 = !{!"467"}
!999 = !DILocation(line: 36, column: 21, scope: !983)
!1000 = !{!"468"}
!1001 = !DILocation(line: 36, column: 9, scope: !983)
!1002 = !{!"469"}
!1003 = !DILocalVariable(name: "xlen", scope: !983, file: !20, line: 32, type: !31)
!1004 = !{!"470"}
!1005 = !DILocation(line: 37, column: 11, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !983, file: !20, line: 37, column: 6)
!1007 = !{!"471"}
!1008 = !DILocation(line: 37, column: 6, scope: !983)
!1009 = !{!"472"}
!1010 = !DILocation(line: 38, column: 3, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !20, line: 37, column: 17)
!1012 = !{!"473"}
!1013 = !DILocation(line: 39, column: 3, scope: !1011)
!1014 = !{!"474"}
!1015 = !DILocalVariable(name: "u", scope: !983, file: !20, line: 32, type: !31)
!1016 = !{!"475"}
!1017 = !DILocalVariable(name: "acc", scope: !983, file: !20, line: 33, type: !10)
!1018 = !{!"476"}
!1019 = !DILocalVariable(name: "acc_len", scope: !983, file: !20, line: 34, type: !673)
!1020 = !{!"477"}
!1021 = !DILocalVariable(name: "buf", scope: !983, file: !20, line: 31, type: !56)
!1022 = !{!"478"}
!1023 = !DILocation(line: 45, column: 2, scope: !983)
!1024 = !{!"479"}
!1025 = !{!"480"}
!1026 = !{!"481"}
!1027 = !{!"482"}
!1028 = !{!"483"}
!1029 = !{!"484"}
!1030 = !{!"485"}
!1031 = !{!"486"}
!1032 = !{!"487"}
!1033 = !DILocation(line: 45, column: 13, scope: !983)
!1034 = !{!"488"}
!1035 = !{!"489"}
!1036 = !DILocation(line: 45, column: 16, scope: !983)
!1037 = !{!"490"}
!1038 = !{!"491"}
!1039 = !DILocation(line: 46, column: 15, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !20, line: 46, column: 7)
!1041 = distinct !DILexicalBlock(scope: !983, file: !20, line: 45, column: 21)
!1042 = !{!"492"}
!1043 = !DILocation(line: 46, column: 7, scope: !1041)
!1044 = !{!"493"}
!1045 = !DILocation(line: 47, column: 10, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !20, line: 47, column: 8)
!1047 = distinct !DILexicalBlock(scope: !1040, file: !20, line: 46, column: 20)
!1048 = !{!"494"}
!1049 = !DILocation(line: 47, column: 8, scope: !1047)
!1050 = !{!"495"}
!1051 = !DILocation(line: 48, column: 26, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1046, file: !20, line: 47, column: 19)
!1053 = !{!"496"}
!1054 = !{!"497"}
!1055 = !DILocation(line: 48, column: 22, scope: !1052)
!1056 = !{!"498"}
!1057 = !{!"499"}
!1058 = !DILocation(line: 48, column: 12, scope: !1052)
!1059 = !{!"500"}
!1060 = !DILocation(line: 48, column: 30, scope: !1052)
!1061 = !{!"501"}
!1062 = !DILocation(line: 48, column: 9, scope: !1052)
!1063 = !{!"502"}
!1064 = !{!"503"}
!1065 = !DILocation(line: 49, column: 4, scope: !1052)
!1066 = !{!"504"}
!1067 = !{!"505"}
!1068 = !{!"506"}
!1069 = !{!"507"}
!1070 = !{!"508"}
!1071 = !DILocation(line: 50, column: 12, scope: !1047)
!1072 = !{!"509"}
!1073 = !{!"510"}
!1074 = !DILocation(line: 51, column: 3, scope: !1047)
!1075 = !{!"511"}
!1076 = !{!"512"}
!1077 = !{!"513"}
!1078 = !{!"514"}
!1079 = !{!"515"}
!1080 = !{!"516"}
!1081 = !{!"517"}
!1082 = !DILocation(line: 52, column: 14, scope: !1041)
!1083 = !{!"518"}
!1084 = !DILocation(line: 52, column: 3, scope: !1041)
!1085 = !{!"519"}
!1086 = !DILocation(line: 52, column: 12, scope: !1041)
!1087 = !{!"520"}
!1088 = !DILocation(line: 53, column: 7, scope: !1041)
!1089 = !{!"521"}
!1090 = !{!"522"}
!1091 = !DILocation(line: 54, column: 11, scope: !1041)
!1092 = !{!"523"}
!1093 = !{!"524"}
!1094 = distinct !{!1094, !1023, !1095, !123}
!1095 = !DILocation(line: 55, column: 2, scope: !983)
!1096 = !{!"525"}
!1097 = !DILocation(line: 56, column: 1, scope: !983)
!1098 = !{!"526"}
!1099 = distinct !DISubprogram(name: "br_i15_from_monty", scope: !24, file: !24, line: 29, type: !1100, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !338, !342, !339}
!1102 = !DILocalVariable(name: "x", arg: 1, scope: !1099, file: !24, line: 29, type: !338)
!1103 = !DILocation(line: 0, scope: !1099)
!1104 = !{!"527"}
!1105 = !DILocalVariable(name: "m", arg: 2, scope: !1099, file: !24, line: 29, type: !342)
!1106 = !{!"528"}
!1107 = !DILocalVariable(name: "m0i", arg: 3, scope: !1099, file: !24, line: 29, type: !339)
!1108 = !{!"529"}
!1109 = !DILocation(line: 33, column: 9, scope: !1099)
!1110 = !{!"530"}
!1111 = !{!"531"}
!1112 = !{!"532"}
!1113 = !DILocation(line: 33, column: 14, scope: !1099)
!1114 = !{!"533"}
!1115 = !DILocation(line: 33, column: 20, scope: !1099)
!1116 = !{!"534"}
!1117 = !DILocation(line: 33, column: 8, scope: !1099)
!1118 = !{!"535"}
!1119 = !DILocalVariable(name: "len", scope: !1099, file: !24, line: 31, type: !31)
!1120 = !{!"536"}
!1121 = !DILocalVariable(name: "u", scope: !1099, file: !24, line: 31, type: !31)
!1122 = !{!"537"}
!1123 = !DILocation(line: 34, column: 7, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1099, file: !24, line: 34, column: 2)
!1125 = !{!"538"}
!1126 = !DILocation(line: 0, scope: !1124)
!1127 = !{!"539"}
!1128 = !{!"540"}
!1129 = !DILocation(line: 34, column: 16, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1124, file: !24, line: 34, column: 2)
!1131 = !{!"541"}
!1132 = !DILocation(line: 34, column: 2, scope: !1124)
!1133 = !{!"542"}
!1134 = !DILocation(line: 37, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !24, line: 34, column: 29)
!1136 = !{!"543"}
!1137 = !{!"544"}
!1138 = !{!"545"}
!1139 = !{!"546"}
!1140 = !{!"547"}
!1141 = !DILocation(line: 37, column: 24, scope: !1135)
!1142 = !{!"548"}
!1143 = !DILocalVariable(name: "f", scope: !1135, file: !24, line: 35, type: !10)
!1144 = !DILocation(line: 0, scope: !1135)
!1145 = !{!"549"}
!1146 = !DILocalVariable(name: "cc", scope: !1135, file: !24, line: 35, type: !10)
!1147 = !{!"550"}
!1148 = !DILocalVariable(name: "v", scope: !1099, file: !24, line: 31, type: !31)
!1149 = !{!"551"}
!1150 = !DILocation(line: 39, column: 8, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1135, file: !24, line: 39, column: 3)
!1152 = !{!"552"}
!1153 = !DILocation(line: 0, scope: !1151)
!1154 = !{!"553"}
!1155 = !{!"554"}
!1156 = !{!"555"}
!1157 = !{!"556"}
!1158 = !DILocation(line: 39, column: 17, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1151, file: !24, line: 39, column: 3)
!1160 = !{!"557"}
!1161 = !DILocation(line: 39, column: 3, scope: !1151)
!1162 = !{!"558"}
!1163 = !DILocation(line: 42, column: 22, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !24, line: 39, column: 30)
!1165 = !{!"559"}
!1166 = !DILocation(line: 42, column: 18, scope: !1164)
!1167 = !{!"560"}
!1168 = !{!"561"}
!1169 = !DILocation(line: 42, column: 8, scope: !1164)
!1170 = !{!"562"}
!1171 = !DILocation(line: 42, column: 29, scope: !1164)
!1172 = !{!"563"}
!1173 = !{!"564"}
!1174 = !{!"565"}
!1175 = !{!"566"}
!1176 = !{!"567"}
!1177 = !DILocation(line: 42, column: 27, scope: !1164)
!1178 = !{!"568"}
!1179 = !DILocation(line: 42, column: 48, scope: !1164)
!1180 = !{!"569"}
!1181 = !DILocalVariable(name: "z", scope: !1164, file: !24, line: 40, type: !10)
!1182 = !DILocation(line: 0, scope: !1164)
!1183 = !{!"570"}
!1184 = !DILocation(line: 43, column: 11, scope: !1164)
!1185 = !{!"571"}
!1186 = !{!"572"}
!1187 = !DILocation(line: 44, column: 10, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1164, file: !24, line: 44, column: 8)
!1189 = !{!"573"}
!1190 = !DILocation(line: 44, column: 8, scope: !1164)
!1191 = !{!"574"}
!1192 = !DILocation(line: 45, column: 14, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !24, line: 44, column: 16)
!1194 = !{!"575"}
!1195 = !DILocation(line: 45, column: 12, scope: !1193)
!1196 = !{!"576"}
!1197 = !DILocation(line: 45, column: 5, scope: !1193)
!1198 = !{!"577"}
!1199 = !DILocation(line: 45, column: 10, scope: !1193)
!1200 = !{!"578"}
!1201 = !DILocation(line: 46, column: 4, scope: !1193)
!1202 = !{!"579"}
!1203 = !DILocation(line: 47, column: 3, scope: !1164)
!1204 = !{!"580"}
!1205 = !DILocation(line: 39, column: 26, scope: !1159)
!1206 = !{!"581"}
!1207 = !{!"582"}
!1208 = !DILocation(line: 39, column: 3, scope: !1159)
!1209 = distinct !{!1209, !1161, !1210, !123}
!1210 = !DILocation(line: 47, column: 3, scope: !1151)
!1211 = !{!"583"}
!1212 = !DILocation(line: 48, column: 12, scope: !1135)
!1213 = !{!"584"}
!1214 = !DILocation(line: 48, column: 3, scope: !1135)
!1215 = !{!"585"}
!1216 = !DILocation(line: 48, column: 10, scope: !1135)
!1217 = !{!"586"}
!1218 = !DILocation(line: 49, column: 2, scope: !1135)
!1219 = !{!"587"}
!1220 = !DILocation(line: 34, column: 25, scope: !1130)
!1221 = !{!"588"}
!1222 = !{!"589"}
!1223 = !DILocation(line: 34, column: 2, scope: !1130)
!1224 = distinct !{!1224, !1132, !1225, !123}
!1225 = !DILocation(line: 49, column: 2, scope: !1124)
!1226 = !{!"590"}
!1227 = !DILocation(line: 58, column: 23, scope: !1099)
!1228 = !{!"591"}
!1229 = !DILocation(line: 58, column: 19, scope: !1099)
!1230 = !{!"592"}
!1231 = !DILocation(line: 58, column: 2, scope: !1099)
!1232 = !{!"593"}
!1233 = !DILocation(line: 59, column: 1, scope: !1099)
!1234 = !{!"594"}
!1235 = distinct !DISubprogram(name: "NOT", scope: !128, file: !128, line: 761, type: !539, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !23, retainedNodes: !2)
!1236 = !DILocalVariable(name: "ctl", arg: 1, scope: !1235, file: !128, line: 761, type: !10)
!1237 = !DILocation(line: 0, scope: !1235)
!1238 = !{!"595"}
!1239 = !DILocation(line: 763, column: 13, scope: !1235)
!1240 = !{!"596"}
!1241 = !DILocation(line: 763, column: 2, scope: !1235)
!1242 = !{!"597"}
!1243 = distinct !DISubprogram(name: "br_i15_modpow_opt", scope: !26, file: !26, line: 29, type: !1244, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !2)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!10, !338, !78, !31, !342, !339, !338, !31}
!1246 = !DILocalVariable(name: "x", arg: 1, scope: !1243, file: !26, line: 29, type: !338)
!1247 = !DILocation(line: 0, scope: !1243)
!1248 = !{!"598"}
!1249 = !DILocalVariable(name: "e", arg: 2, scope: !1243, file: !26, line: 30, type: !78)
!1250 = !{!"599"}
!1251 = !DILocalVariable(name: "elen", arg: 3, scope: !1243, file: !26, line: 30, type: !31)
!1252 = !{!"600"}
!1253 = !DILocalVariable(name: "m", arg: 4, scope: !1243, file: !26, line: 31, type: !342)
!1254 = !{!"601"}
!1255 = !DILocalVariable(name: "m0i", arg: 5, scope: !1243, file: !26, line: 31, type: !339)
!1256 = !{!"602"}
!1257 = !DILocalVariable(name: "tmp", arg: 6, scope: !1243, file: !26, line: 31, type: !338)
!1258 = !{!"603"}
!1259 = !DILocalVariable(name: "twlen", arg: 7, scope: !1243, file: !26, line: 31, type: !31)
!1260 = !{!"604"}
!1261 = !DILocation(line: 42, column: 11, scope: !1243)
!1262 = !{!"605"}
!1263 = !{!"606"}
!1264 = !{!"607"}
!1265 = !DILocation(line: 42, column: 16, scope: !1243)
!1266 = !{!"608"}
!1267 = !DILocation(line: 42, column: 22, scope: !1243)
!1268 = !{!"609"}
!1269 = !DILocation(line: 42, column: 10, scope: !1243)
!1270 = !{!"610"}
!1271 = !DILocalVariable(name: "mwlen", scope: !1243, file: !26, line: 33, type: !31)
!1272 = !{!"611"}
!1273 = !DILocation(line: 43, column: 15, scope: !1243)
!1274 = !{!"612"}
!1275 = !DILocalVariable(name: "mlen", scope: !1243, file: !26, line: 33, type: !31)
!1276 = !{!"613"}
!1277 = !DILocation(line: 44, column: 18, scope: !1243)
!1278 = !{!"614"}
!1279 = !DILocation(line: 44, column: 8, scope: !1243)
!1280 = !{!"615"}
!1281 = !{!"616"}
!1282 = !DILocalVariable(name: "t1", scope: !1243, file: !26, line: 34, type: !338)
!1283 = !{!"617"}
!1284 = !DILocation(line: 46, column: 11, scope: !1243)
!1285 = !{!"618"}
!1286 = !DILocalVariable(name: "t2", scope: !1243, file: !26, line: 34, type: !338)
!1287 = !{!"619"}
!1288 = !DILocation(line: 54, column: 21, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1243, file: !26, line: 54, column: 6)
!1290 = !{!"620"}
!1291 = !DILocation(line: 54, column: 12, scope: !1289)
!1292 = !{!"621"}
!1293 = !DILocation(line: 54, column: 6, scope: !1243)
!1294 = !{!"622"}
!1295 = !DILocation(line: 55, column: 3, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1289, file: !26, line: 54, column: 28)
!1297 = !{!"623"}
!1298 = !DILocalVariable(name: "win_len", scope: !1243, file: !26, line: 37, type: !673)
!1299 = !{!"624"}
!1300 = !DILocation(line: 57, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1243, file: !26, line: 57, column: 2)
!1302 = !{!"625"}
!1303 = !DILocation(line: 0, scope: !1301)
!1304 = !{!"626"}
!1305 = !{!"627"}
!1306 = !DILocation(line: 57, column: 28, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !26, line: 57, column: 2)
!1308 = !{!"628"}
!1309 = !DILocation(line: 57, column: 2, scope: !1301)
!1310 = !{!"629"}
!1311 = !DILocation(line: 58, column: 21, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !26, line: 58, column: 7)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !26, line: 57, column: 45)
!1314 = !{!"630"}
!1315 = !DILocation(line: 58, column: 33, scope: !1312)
!1316 = !{!"631"}
!1317 = !DILocation(line: 58, column: 7, scope: !1312)
!1318 = !{!"632"}
!1319 = !DILocation(line: 58, column: 38, scope: !1312)
!1320 = !{!"633"}
!1321 = !DILocation(line: 58, column: 46, scope: !1312)
!1322 = !{!"634"}
!1323 = !DILocation(line: 58, column: 7, scope: !1313)
!1324 = !{!"635"}
!1325 = !DILocation(line: 59, column: 4, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1312, file: !26, line: 58, column: 56)
!1327 = !{!"636"}
!1328 = !DILocation(line: 61, column: 2, scope: !1313)
!1329 = !{!"637"}
!1330 = !DILocation(line: 57, column: 41, scope: !1307)
!1331 = !{!"638"}
!1332 = !{!"639"}
!1333 = !DILocation(line: 57, column: 2, scope: !1307)
!1334 = distinct !{!1334, !1309, !1335, !123}
!1335 = !DILocation(line: 61, column: 2, scope: !1301)
!1336 = !{!"640"}
!1337 = !DILocation(line: 66, column: 2, scope: !1243)
!1338 = !{!"641"}
!1339 = !DILocation(line: 73, column: 14, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1243, file: !26, line: 73, column: 6)
!1341 = !{!"642"}
!1342 = !DILocation(line: 73, column: 6, scope: !1243)
!1343 = !{!"643"}
!1344 = !DILocation(line: 74, column: 3, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !26, line: 73, column: 20)
!1346 = !{!"644"}
!1347 = !{!"645"}
!1348 = !{!"646"}
!1349 = !{!"1010"}
!1350 = !DILocation(line: 75, column: 2, scope: !1345)
!1351 = !{!"647"}
!1352 = !DILocation(line: 76, column: 13, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1340, file: !26, line: 75, column: 9)
!1354 = !{!"648"}
!1355 = !DILocation(line: 76, column: 3, scope: !1353)
!1356 = !{!"649"}
!1357 = !{!"650"}
!1358 = !{!"651"}
!1359 = !DILocation(line: 77, column: 13, scope: !1353)
!1360 = !{!"652"}
!1361 = !DILocalVariable(name: "base", scope: !1243, file: !26, line: 34, type: !338)
!1362 = !{!"653"}
!1363 = !DILocalVariable(name: "u", scope: !1243, file: !26, line: 35, type: !31)
!1364 = !{!"654"}
!1365 = !DILocation(line: 78, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1353, file: !26, line: 78, column: 3)
!1367 = !{!"655"}
!1368 = !DILocation(line: 0, scope: !1353)
!1369 = !{!"656"}
!1370 = !DILocation(line: 0, scope: !1366)
!1371 = !{!"657"}
!1372 = !{!"658"}
!1373 = !{!"659"}
!1374 = !DILocation(line: 78, column: 32, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1366, file: !26, line: 78, column: 3)
!1376 = !{!"660"}
!1377 = !DILocation(line: 78, column: 19, scope: !1375)
!1378 = !{!"661"}
!1379 = !DILocation(line: 78, column: 17, scope: !1375)
!1380 = !{!"662"}
!1381 = !DILocation(line: 78, column: 3, scope: !1366)
!1382 = !{!"663"}
!1383 = !DILocation(line: 79, column: 25, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1375, file: !26, line: 78, column: 51)
!1385 = !{!"664"}
!1386 = !DILocation(line: 79, column: 4, scope: !1384)
!1387 = !{!"665"}
!1388 = !DILocation(line: 80, column: 9, scope: !1384)
!1389 = !{!"666"}
!1390 = !{!"667"}
!1391 = !DILocation(line: 81, column: 3, scope: !1384)
!1392 = !{!"668"}
!1393 = !DILocation(line: 78, column: 47, scope: !1375)
!1394 = !{!"669"}
!1395 = !{!"670"}
!1396 = !DILocation(line: 78, column: 3, scope: !1375)
!1397 = distinct !{!1397, !1381, !1398, !123}
!1398 = !DILocation(line: 81, column: 3, scope: !1366)
!1399 = !{!"671"}
!1400 = !{!"672"}
!1401 = !DILocation(line: 89, column: 17, scope: !1243)
!1402 = !{!"673"}
!1403 = !{!"674"}
!1404 = !DILocation(line: 89, column: 2, scope: !1243)
!1405 = !{!"675"}
!1406 = !DILocation(line: 90, column: 5, scope: !1243)
!1407 = !{!"676"}
!1408 = !{!"677"}
!1409 = !{!"678"}
!1410 = !DILocation(line: 90, column: 10, scope: !1243)
!1411 = !{!"679"}
!1412 = !DILocation(line: 90, column: 16, scope: !1243)
!1413 = !{!"680"}
!1414 = !DILocation(line: 90, column: 2, scope: !1243)
!1415 = !{!"681"}
!1416 = !{!"682"}
!1417 = !DILocation(line: 90, column: 22, scope: !1243)
!1418 = !{!"683"}
!1419 = !DILocation(line: 91, column: 2, scope: !1243)
!1420 = !{!"684"}
!1421 = !DILocalVariable(name: "acc", scope: !1243, file: !26, line: 36, type: !10)
!1422 = !{!"685"}
!1423 = !DILocalVariable(name: "acc_len", scope: !1243, file: !26, line: 37, type: !673)
!1424 = !{!"686"}
!1425 = !DILocation(line: 99, column: 2, scope: !1243)
!1426 = !{!"687"}
!1427 = !{!"688"}
!1428 = !{!"689"}
!1429 = !{!"690"}
!1430 = !{!"691"}
!1431 = !{!"692"}
!1432 = !{!"693"}
!1433 = !{!"694"}
!1434 = !{!"695"}
!1435 = !DILocation(line: 99, column: 17, scope: !1243)
!1436 = !{!"696"}
!1437 = !DILocation(line: 99, column: 21, scope: !1243)
!1438 = !{!"697"}
!1439 = !DILocation(line: 99, column: 29, scope: !1243)
!1440 = !{!"698"}
!1441 = !{!"699"}
!1442 = !{!"700"}
!1443 = !{!"701"}
!1444 = !DILocalVariable(name: "k", scope: !1445, file: !26, line: 100, type: !673)
!1445 = distinct !DILexicalBlock(scope: !1243, file: !26, line: 99, column: 34)
!1446 = !DILocation(line: 0, scope: !1445)
!1447 = !{!"702"}
!1448 = !DILocation(line: 107, column: 15, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !26, line: 107, column: 7)
!1450 = !{!"703"}
!1451 = !DILocation(line: 107, column: 7, scope: !1445)
!1452 = !{!"704"}
!1453 = !DILocation(line: 108, column: 13, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !26, line: 108, column: 8)
!1455 = distinct !DILexicalBlock(scope: !1449, file: !26, line: 107, column: 26)
!1456 = !{!"705"}
!1457 = !DILocation(line: 108, column: 8, scope: !1455)
!1458 = !{!"706"}
!1459 = !DILocation(line: 109, column: 16, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1454, file: !26, line: 108, column: 18)
!1461 = !{!"707"}
!1462 = !DILocation(line: 109, column: 27, scope: !1460)
!1463 = !{!"708"}
!1464 = !{!"709"}
!1465 = !DILocation(line: 109, column: 24, scope: !1460)
!1466 = !{!"710"}
!1467 = !{!"711"}
!1468 = !DILocation(line: 109, column: 22, scope: !1460)
!1469 = !{!"712"}
!1470 = !{!"713"}
!1471 = !DILocation(line: 110, column: 10, scope: !1460)
!1472 = !{!"714"}
!1473 = !{!"715"}
!1474 = !DILocation(line: 111, column: 13, scope: !1460)
!1475 = !{!"716"}
!1476 = !{!"717"}
!1477 = !DILocation(line: 112, column: 4, scope: !1460)
!1478 = !{!"718"}
!1479 = !{!"719"}
!1480 = !{!"720"}
!1481 = !{!"721"}
!1482 = !{!"722"}
!1483 = !{!"723"}
!1484 = !{!"724"}
!1485 = !{!"725"}
!1486 = !{!"726"}
!1487 = !{!"727"}
!1488 = !{!"728"}
!1489 = !{!"729"}
!1490 = !{!"730"}
!1491 = !DILocation(line: 115, column: 3, scope: !1455)
!1492 = !{!"731"}
!1493 = !{!"732"}
!1494 = !{!"733"}
!1495 = !{!"734"}
!1496 = !{!"735"}
!1497 = !DILocation(line: 106, column: 5, scope: !1445)
!1498 = !{!"736"}
!1499 = !{!"737"}
!1500 = !{!"738"}
!1501 = !{!"739"}
!1502 = !{!"740"}
!1503 = !{!"741"}
!1504 = !DILocation(line: 116, column: 27, scope: !1445)
!1505 = !{!"742"}
!1506 = !DILocation(line: 116, column: 15, scope: !1445)
!1507 = !{!"743"}
!1508 = !DILocation(line: 116, column: 49, scope: !1445)
!1509 = !{!"744"}
!1510 = !DILocation(line: 116, column: 55, scope: !1445)
!1511 = !{!"745"}
!1512 = !DILocation(line: 116, column: 33, scope: !1445)
!1513 = !{!"746"}
!1514 = !DILocalVariable(name: "bits", scope: !1445, file: !26, line: 101, type: !10)
!1515 = !{!"747"}
!1516 = !DILocation(line: 117, column: 11, scope: !1445)
!1517 = !{!"748"}
!1518 = !{!"749"}
!1519 = !DILocalVariable(name: "i", scope: !1445, file: !26, line: 100, type: !673)
!1520 = !{!"750"}
!1521 = !DILocation(line: 122, column: 8, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1445, file: !26, line: 122, column: 3)
!1523 = !{!"751"}
!1524 = !DILocation(line: 0, scope: !1522)
!1525 = !{!"752"}
!1526 = !{!"753"}
!1527 = !DILocation(line: 122, column: 17, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1522, file: !26, line: 122, column: 3)
!1529 = !{!"754"}
!1530 = !DILocation(line: 122, column: 3, scope: !1522)
!1531 = !{!"755"}
!1532 = !DILocation(line: 123, column: 4, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1528, file: !26, line: 122, column: 28)
!1534 = !{!"756"}
!1535 = !DILocation(line: 124, column: 4, scope: !1533)
!1536 = !{!"757"}
!1537 = !{!"758"}
!1538 = !{!"759"}
!1539 = !DILocation(line: 125, column: 3, scope: !1533)
!1540 = !{!"760"}
!1541 = !DILocation(line: 122, column: 24, scope: !1528)
!1542 = !{!"761"}
!1543 = !{!"762"}
!1544 = !DILocation(line: 122, column: 3, scope: !1528)
!1545 = distinct !{!1545, !1530, !1546, !123}
!1546 = !DILocation(line: 125, column: 3, scope: !1522)
!1547 = !{!"763"}
!1548 = !DILocation(line: 133, column: 15, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1445, file: !26, line: 133, column: 7)
!1550 = !{!"764"}
!1551 = !DILocation(line: 133, column: 7, scope: !1445)
!1552 = !{!"765"}
!1553 = !DILocation(line: 134, column: 20, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1549, file: !26, line: 133, column: 20)
!1555 = !{!"766"}
!1556 = !{!"767"}
!1557 = !DILocation(line: 134, column: 4, scope: !1554)
!1558 = !{!"768"}
!1559 = !DILocation(line: 135, column: 14, scope: !1554)
!1560 = !{!"769"}
!1561 = !{!"770"}
!1562 = !{!"771"}
!1563 = !DILocation(line: 136, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1554, file: !26, line: 136, column: 4)
!1565 = !{!"772"}
!1566 = !DILocation(line: 0, scope: !1554)
!1567 = !{!"773"}
!1568 = !DILocation(line: 0, scope: !1564)
!1569 = !{!"774"}
!1570 = !{!"775"}
!1571 = !{!"776"}
!1572 = !DILocation(line: 136, column: 33, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1564, file: !26, line: 136, column: 4)
!1574 = !{!"777"}
!1575 = !DILocation(line: 136, column: 20, scope: !1573)
!1576 = !{!"778"}
!1577 = !DILocation(line: 136, column: 18, scope: !1573)
!1578 = !{!"779"}
!1579 = !DILocation(line: 136, column: 4, scope: !1564)
!1580 = !{!"780"}
!1581 = !DILocation(line: 139, column: 16, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1573, file: !26, line: 136, column: 46)
!1583 = !{!"781"}
!1584 = !DILocation(line: 139, column: 13, scope: !1582)
!1585 = !{!"782"}
!1586 = !DILocation(line: 139, column: 12, scope: !1582)
!1587 = !{!"783"}
!1588 = !DILocalVariable(name: "mask", scope: !1582, file: !26, line: 137, type: !10)
!1589 = !DILocation(line: 0, scope: !1582)
!1590 = !{!"784"}
!1591 = !DILocalVariable(name: "v", scope: !1243, file: !26, line: 35, type: !31)
!1592 = !{!"785"}
!1593 = !DILocation(line: 140, column: 10, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1582, file: !26, line: 140, column: 5)
!1595 = !{!"786"}
!1596 = !DILocation(line: 0, scope: !1594)
!1597 = !{!"787"}
!1598 = !{!"788"}
!1599 = !DILocation(line: 140, column: 19, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1594, file: !26, line: 140, column: 5)
!1601 = !{!"789"}
!1602 = !DILocation(line: 140, column: 5, scope: !1594)
!1603 = !{!"790"}
!1604 = !DILocation(line: 141, column: 22, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1600, file: !26, line: 140, column: 34)
!1606 = !{!"791"}
!1607 = !{!"792"}
!1608 = !{!"793"}
!1609 = !DILocation(line: 141, column: 20, scope: !1605)
!1610 = !{!"794"}
!1611 = !DILocation(line: 141, column: 6, scope: !1605)
!1612 = !{!"795"}
!1613 = !DILocation(line: 141, column: 12, scope: !1605)
!1614 = !{!"796"}
!1615 = !{!"797"}
!1616 = !{!"798"}
!1617 = !{!"799"}
!1618 = !{!"800"}
!1619 = !DILocation(line: 142, column: 5, scope: !1605)
!1620 = !{!"801"}
!1621 = !DILocation(line: 140, column: 30, scope: !1600)
!1622 = !{!"802"}
!1623 = !{!"803"}
!1624 = !DILocation(line: 140, column: 5, scope: !1600)
!1625 = distinct !{!1625, !1602, !1626, !123}
!1626 = !DILocation(line: 142, column: 5, scope: !1594)
!1627 = !{!"804"}
!1628 = !DILocation(line: 143, column: 10, scope: !1582)
!1629 = !{!"805"}
!1630 = !{!"806"}
!1631 = !DILocation(line: 144, column: 4, scope: !1582)
!1632 = !{!"807"}
!1633 = !DILocation(line: 136, column: 42, scope: !1573)
!1634 = !{!"808"}
!1635 = !{!"809"}
!1636 = !DILocation(line: 136, column: 4, scope: !1573)
!1637 = distinct !{!1637, !1579, !1638, !123}
!1638 = !DILocation(line: 144, column: 4, scope: !1564)
!1639 = !{!"810"}
!1640 = !DILocation(line: 145, column: 3, scope: !1554)
!1641 = !{!"811"}
!1642 = !DILocation(line: 151, column: 3, scope: !1445)
!1643 = !{!"812"}
!1644 = !DILocation(line: 152, column: 9, scope: !1445)
!1645 = !{!"813"}
!1646 = !DILocation(line: 152, column: 23, scope: !1445)
!1647 = !{!"814"}
!1648 = !DILocation(line: 152, column: 26, scope: !1445)
!1649 = !{!"815"}
!1650 = !DILocation(line: 152, column: 3, scope: !1445)
!1651 = !{!"816"}
!1652 = distinct !{!1652, !1425, !1653, !123}
!1653 = !DILocation(line: 153, column: 2, scope: !1243)
!1654 = !{!"817"}
!1655 = !DILocation(line: 158, column: 2, scope: !1243)
!1656 = !{!"818"}
!1657 = !DILocation(line: 159, column: 2, scope: !1243)
!1658 = !{!"819"}
!1659 = !{!"820"}
!1660 = !DILocation(line: 160, column: 1, scope: !1243)
!1661 = !{!"821"}
!1662 = distinct !DISubprogram(name: "br_i15_zero", scope: !128, file: !128, line: 1537, type: !955, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !25, retainedNodes: !2)
!1663 = !DILocalVariable(name: "x", arg: 1, scope: !1662, file: !128, line: 1537, type: !338)
!1664 = !DILocation(line: 0, scope: !1662)
!1665 = !{!"822"}
!1666 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1662, file: !128, line: 1537, type: !339)
!1667 = !{!"823"}
!1668 = !DILocation(line: 1539, column: 5, scope: !1662)
!1669 = !{!"824"}
!1670 = !{!"825"}
!1671 = !DILocation(line: 1539, column: 8, scope: !1662)
!1672 = !{!"826"}
!1673 = !DILocation(line: 1540, column: 2, scope: !1662)
!1674 = !{!"827"}
!1675 = !DILocation(line: 1540, column: 17, scope: !1662)
!1676 = !{!"828"}
!1677 = !DILocation(line: 1540, column: 25, scope: !1662)
!1678 = !{!"829"}
!1679 = !DILocation(line: 1540, column: 31, scope: !1662)
!1680 = !{!"830"}
!1681 = !DILocation(line: 1540, column: 15, scope: !1662)
!1682 = !{!"831"}
!1683 = !DILocation(line: 1540, column: 37, scope: !1662)
!1684 = !{!"832"}
!1685 = !{!"833"}
!1686 = !DILocation(line: 1541, column: 1, scope: !1662)
!1687 = !{!"834"}
!1688 = distinct !DISubprogram(name: "EQ", scope: !128, file: !128, line: 779, type: !499, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !25, retainedNodes: !2)
!1689 = !DILocalVariable(name: "x", arg: 1, scope: !1688, file: !128, line: 779, type: !10)
!1690 = !DILocation(line: 0, scope: !1688)
!1691 = !{!"835"}
!1692 = !DILocalVariable(name: "y", arg: 2, scope: !1688, file: !128, line: 779, type: !10)
!1693 = !{!"836"}
!1694 = !DILocation(line: 783, column: 8, scope: !1688)
!1695 = !{!"837"}
!1696 = !DILocalVariable(name: "q", scope: !1688, file: !128, line: 781, type: !10)
!1697 = !{!"838"}
!1698 = !DILocation(line: 784, column: 18, scope: !1688)
!1699 = !{!"839"}
!1700 = !DILocation(line: 784, column: 16, scope: !1688)
!1701 = !{!"840"}
!1702 = !DILocation(line: 784, column: 22, scope: !1688)
!1703 = !{!"841"}
!1704 = !DILocation(line: 784, column: 9, scope: !1688)
!1705 = !{!"842"}
!1706 = !DILocation(line: 784, column: 2, scope: !1688)
!1707 = !{!"843"}
!1708 = distinct !DISubprogram(name: "NEQ", scope: !128, file: !128, line: 791, type: !499, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !25, retainedNodes: !2)
!1709 = !DILocalVariable(name: "x", arg: 1, scope: !1708, file: !128, line: 791, type: !10)
!1710 = !DILocation(line: 0, scope: !1708)
!1711 = !{!"844"}
!1712 = !DILocalVariable(name: "y", arg: 2, scope: !1708, file: !128, line: 791, type: !10)
!1713 = !{!"845"}
!1714 = !DILocation(line: 795, column: 8, scope: !1708)
!1715 = !{!"846"}
!1716 = !DILocalVariable(name: "q", scope: !1708, file: !128, line: 793, type: !10)
!1717 = !{!"847"}
!1718 = !DILocation(line: 796, column: 14, scope: !1708)
!1719 = !{!"848"}
!1720 = !DILocation(line: 796, column: 12, scope: !1708)
!1721 = !{!"849"}
!1722 = !DILocation(line: 796, column: 18, scope: !1708)
!1723 = !{!"850"}
!1724 = !DILocation(line: 796, column: 2, scope: !1708)
!1725 = !{!"851"}
!1726 = distinct !DISubprogram(name: "NOT", scope: !128, file: !128, line: 761, type: !539, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !25, retainedNodes: !2)
!1727 = !DILocalVariable(name: "ctl", arg: 1, scope: !1726, file: !128, line: 761, type: !10)
!1728 = !DILocation(line: 0, scope: !1726)
!1729 = !{!"852"}
!1730 = !DILocation(line: 763, column: 13, scope: !1726)
!1731 = !{!"853"}
!1732 = !DILocation(line: 763, column: 2, scope: !1726)
!1733 = !{!"854"}
!1734 = distinct !DISubprogram(name: "br_i15_montymul", scope: !29, file: !29, line: 29, type: !1735, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !2)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !338, !342, !342, !342, !339}
!1737 = !DILocalVariable(name: "d", arg: 1, scope: !1734, file: !29, line: 29, type: !338)
!1738 = !DILocation(line: 0, scope: !1734)
!1739 = !{!"855"}
!1740 = !DILocalVariable(name: "x", arg: 2, scope: !1734, file: !29, line: 29, type: !342)
!1741 = !{!"856"}
!1742 = !DILocalVariable(name: "y", arg: 3, scope: !1734, file: !29, line: 29, type: !342)
!1743 = !{!"857"}
!1744 = !DILocalVariable(name: "m", arg: 4, scope: !1734, file: !29, line: 30, type: !342)
!1745 = !{!"858"}
!1746 = !DILocalVariable(name: "m0i", arg: 5, scope: !1734, file: !29, line: 30, type: !339)
!1747 = !{!"859"}
!1748 = !DILocation(line: 35, column: 9, scope: !1734)
!1749 = !{!"860"}
!1750 = !{!"861"}
!1751 = !{!"862"}
!1752 = !DILocation(line: 35, column: 14, scope: !1734)
!1753 = !{!"863"}
!1754 = !DILocation(line: 35, column: 20, scope: !1734)
!1755 = !{!"864"}
!1756 = !DILocation(line: 35, column: 8, scope: !1734)
!1757 = !{!"865"}
!1758 = !DILocalVariable(name: "len", scope: !1734, file: !29, line: 32, type: !31)
!1759 = !{!"866"}
!1760 = !DILocation(line: 36, column: 13, scope: !1734)
!1761 = !{!"867"}
!1762 = !DILocalVariable(name: "len4", scope: !1734, file: !29, line: 32, type: !31)
!1763 = !{!"868"}
!1764 = !DILocation(line: 37, column: 17, scope: !1734)
!1765 = !{!"869"}
!1766 = !{!"870"}
!1767 = !DILocation(line: 37, column: 2, scope: !1734)
!1768 = !{!"871"}
!1769 = !DILocalVariable(name: "dh", scope: !1734, file: !29, line: 33, type: !10)
!1770 = !{!"872"}
!1771 = !DILocalVariable(name: "u", scope: !1734, file: !29, line: 32, type: !31)
!1772 = !{!"873"}
!1773 = !DILocation(line: 39, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1734, file: !29, line: 39, column: 2)
!1775 = !{!"874"}
!1776 = !DILocation(line: 0, scope: !1774)
!1777 = !{!"875"}
!1778 = !{!"876"}
!1779 = !{!"877"}
!1780 = !{!"878"}
!1781 = !DILocation(line: 39, column: 16, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1774, file: !29, line: 39, column: 2)
!1783 = !{!"879"}
!1784 = !DILocation(line: 39, column: 2, scope: !1774)
!1785 = !{!"880"}
!1786 = !DILocation(line: 42, column: 12, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !29, line: 39, column: 29)
!1788 = !{!"881"}
!1789 = !DILocation(line: 42, column: 8, scope: !1787)
!1790 = !{!"882"}
!1791 = !{!"883"}
!1792 = !{!"884"}
!1793 = !DILocalVariable(name: "xu", scope: !1787, file: !29, line: 40, type: !10)
!1794 = !DILocation(line: 0, scope: !1787)
!1795 = !{!"885"}
!1796 = !DILocation(line: 43, column: 7, scope: !1787)
!1797 = !{!"886"}
!1798 = !{!"887"}
!1799 = !{!"888"}
!1800 = !{!"889"}
!1801 = !{!"890"}
!1802 = !{!"891"}
!1803 = !{!"892"}
!1804 = !{!"893"}
!1805 = !{!"894"}
!1806 = !{!"895"}
!1807 = !{!"896"}
!1808 = !{!"897"}
!1809 = !{!"898"}
!1810 = !{!"899"}
!1811 = !{!"900"}
!1812 = !DILocation(line: 44, column: 4, scope: !1787)
!1813 = !{!"901"}
!1814 = !DILocalVariable(name: "f", scope: !1787, file: !29, line: 40, type: !10)
!1815 = !{!"902"}
!1816 = !DILocalVariable(name: "r", scope: !1787, file: !29, line: 40, type: !10)
!1817 = !{!"903"}
!1818 = !DILocalVariable(name: "v", scope: !1734, file: !29, line: 32, type: !31)
!1819 = !{!"904"}
!1820 = !DILocation(line: 139, column: 8, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1787, file: !29, line: 139, column: 3)
!1822 = !{!"905"}
!1823 = !DILocation(line: 0, scope: !1821)
!1824 = !{!"906"}
!1825 = !{!"907"}
!1826 = !{!"908"}
!1827 = !{!"909"}
!1828 = !DILocation(line: 139, column: 17, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1821, file: !29, line: 139, column: 3)
!1830 = !{!"910"}
!1831 = !DILocation(line: 139, column: 3, scope: !1821)
!1832 = !{!"911"}
!1833 = !DILocation(line: 142, column: 12, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1829, file: !29, line: 139, column: 33)
!1835 = !{!"912"}
!1836 = !DILocation(line: 142, column: 8, scope: !1834)
!1837 = !{!"913"}
!1838 = !{!"914"}
!1839 = !{!"915"}
!1840 = !DILocation(line: 142, column: 19, scope: !1834)
!1841 = !{!"916"}
!1842 = !{!"917"}
!1843 = !{!"918"}
!1844 = !{!"919"}
!1845 = !{!"920"}
!1846 = !DILocation(line: 142, column: 17, scope: !1834)
!1847 = !{!"921"}
!1848 = !DILocation(line: 143, column: 7, scope: !1834)
!1849 = !{!"922"}
!1850 = !{!"923"}
!1851 = !{!"924"}
!1852 = !{!"925"}
!1853 = !{!"926"}
!1854 = !DILocation(line: 143, column: 5, scope: !1834)
!1855 = !{!"927"}
!1856 = !DILocation(line: 143, column: 26, scope: !1834)
!1857 = !{!"928"}
!1858 = !DILocalVariable(name: "z", scope: !1834, file: !29, line: 140, type: !10)
!1859 = !DILocation(line: 0, scope: !1834)
!1860 = !{!"929"}
!1861 = !DILocation(line: 144, column: 10, scope: !1834)
!1862 = !{!"930"}
!1863 = !{!"931"}
!1864 = !DILocation(line: 145, column: 17, scope: !1834)
!1865 = !{!"932"}
!1866 = !DILocation(line: 145, column: 15, scope: !1834)
!1867 = !{!"933"}
!1868 = !DILocation(line: 145, column: 8, scope: !1834)
!1869 = !{!"934"}
!1870 = !DILocation(line: 145, column: 4, scope: !1834)
!1871 = !{!"935"}
!1872 = !DILocation(line: 145, column: 13, scope: !1834)
!1873 = !{!"936"}
!1874 = !DILocation(line: 146, column: 12, scope: !1834)
!1875 = !{!"937"}
!1876 = !DILocation(line: 146, column: 8, scope: !1834)
!1877 = !{!"938"}
!1878 = !{!"939"}
!1879 = !{!"940"}
!1880 = !DILocation(line: 146, column: 19, scope: !1834)
!1881 = !{!"941"}
!1882 = !{!"942"}
!1883 = !{!"943"}
!1884 = !{!"944"}
!1885 = !{!"945"}
!1886 = !DILocation(line: 146, column: 17, scope: !1834)
!1887 = !{!"946"}
!1888 = !DILocation(line: 147, column: 7, scope: !1834)
!1889 = !{!"947"}
!1890 = !{!"948"}
!1891 = !{!"949"}
!1892 = !{!"950"}
!1893 = !{!"951"}
!1894 = !DILocation(line: 147, column: 5, scope: !1834)
!1895 = !{!"952"}
!1896 = !DILocation(line: 147, column: 26, scope: !1834)
!1897 = !{!"953"}
!1898 = !{!"954"}
!1899 = !DILocation(line: 148, column: 10, scope: !1834)
!1900 = !{!"955"}
!1901 = !{!"956"}
!1902 = !DILocation(line: 149, column: 17, scope: !1834)
!1903 = !{!"957"}
!1904 = !DILocation(line: 149, column: 15, scope: !1834)
!1905 = !{!"958"}
!1906 = !DILocation(line: 149, column: 8, scope: !1834)
!1907 = !{!"959"}
!1908 = !DILocation(line: 149, column: 4, scope: !1834)
!1909 = !{!"960"}
!1910 = !DILocation(line: 149, column: 13, scope: !1834)
!1911 = !{!"961"}
!1912 = !DILocation(line: 150, column: 12, scope: !1834)
!1913 = !{!"962"}
!1914 = !DILocation(line: 150, column: 8, scope: !1834)
!1915 = !{!"963"}
!1916 = !{!"964"}
!1917 = !{!"965"}
!1918 = !DILocation(line: 150, column: 19, scope: !1834)
!1919 = !{!"966"}
!1920 = !{!"967"}
!1921 = !{!"968"}
!1922 = !{!"969"}
!1923 = !{!"970"}
!1924 = !DILocation(line: 150, column: 17, scope: !1834)
!1925 = !{!"971"}
!1926 = !DILocation(line: 151, column: 7, scope: !1834)
!1927 = !{!"972"}
!1928 = !{!"973"}
!1929 = !{!"974"}
!1930 = !{!"975"}
!1931 = !{!"976"}
!1932 = !DILocation(line: 151, column: 5, scope: !1834)
!1933 = !{!"977"}
!1934 = !DILocation(line: 151, column: 26, scope: !1834)
!1935 = !{!"978"}
!1936 = !{!"979"}
!1937 = !DILocation(line: 152, column: 10, scope: !1834)
!1938 = !{!"980"}
!1939 = !{!"981"}
!1940 = !DILocation(line: 153, column: 17, scope: !1834)
!1941 = !{!"982"}
!1942 = !DILocation(line: 153, column: 15, scope: !1834)
!1943 = !{!"983"}
!1944 = !DILocation(line: 153, column: 8, scope: !1834)
!1945 = !{!"984"}
!1946 = !DILocation(line: 153, column: 4, scope: !1834)
!1947 = !{!"985"}
!1948 = !DILocation(line: 153, column: 13, scope: !1834)
!1949 = !{!"986"}
!1950 = !DILocation(line: 154, column: 12, scope: !1834)
!1951 = !{!"987"}
!1952 = !DILocation(line: 154, column: 8, scope: !1834)
!1953 = !{!"988"}
!1954 = !{!"989"}
!1955 = !{!"990"}
!1956 = !DILocation(line: 154, column: 19, scope: !1834)
!1957 = !{!"991"}
!1958 = !{!"992"}
!1959 = !{!"993"}
!1960 = !{!"994"}
!1961 = !{!"995"}
!1962 = !DILocation(line: 154, column: 17, scope: !1834)
!1963 = !{!"996"}
!1964 = !DILocation(line: 155, column: 7, scope: !1834)
!1965 = !{!"997"}
!1966 = !{!"998"}
!1967 = !{!"999"}
!1968 = !{!"1000"}
!1969 = !{!"1001"}
!1970 = !DILocation(line: 155, column: 5, scope: !1834)
!1971 = !{!"1002"}
!1972 = !DILocation(line: 155, column: 26, scope: !1834)
!1973 = !{!"1003"}
!1974 = !{!"1004"}
!1975 = !DILocation(line: 156, column: 10, scope: !1834)
!1976 = !{!"1005"}
!1977 = !{!"1006"}
!1978 = !DILocation(line: 157, column: 17, scope: !1834)
!1979 = !{!"1007"}
!1980 = !DILocation(line: 157, column: 15, scope: !1834)
!1981 = !{!"1008"}
!1982 = !DILocation(line: 157, column: 8, scope: !1834)
!1983 = !{!"1009"}
!1984 = !DILocation(line: 157, column: 4, scope: !1834)
!1985 = !DILocation(line: 157, column: 13, scope: !1834)
!1986 = !{!"1011"}
!1987 = !DILocation(line: 158, column: 3, scope: !1834)
!1988 = !{!"1012"}
!1989 = !DILocation(line: 139, column: 27, scope: !1829)
!1990 = !{!"1013"}
!1991 = !{!"1014"}
!1992 = !DILocation(line: 139, column: 3, scope: !1829)
!1993 = distinct !{!1993, !1831, !1994, !123}
!1994 = !DILocation(line: 158, column: 3, scope: !1821)
!1995 = !{!"1015"}
!1996 = !DILocation(line: 160, column: 3, scope: !1787)
!1997 = !{!"1016"}
!1998 = !{!"1017"}
!1999 = !{!"1018"}
!2000 = !{!"1019"}
!2001 = !{!"1020"}
!2002 = !DILocation(line: 160, column: 12, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !29, line: 160, column: 3)
!2004 = distinct !DILexicalBlock(scope: !1787, file: !29, line: 160, column: 3)
!2005 = !{!"1021"}
!2006 = !DILocation(line: 160, column: 3, scope: !2004)
!2007 = !{!"1022"}
!2008 = !DILocation(line: 163, column: 12, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2003, file: !29, line: 160, column: 25)
!2010 = !{!"1023"}
!2011 = !DILocation(line: 163, column: 8, scope: !2009)
!2012 = !{!"1024"}
!2013 = !{!"1025"}
!2014 = !{!"1026"}
!2015 = !DILocation(line: 163, column: 19, scope: !2009)
!2016 = !{!"1027"}
!2017 = !{!"1028"}
!2018 = !{!"1029"}
!2019 = !{!"1030"}
!2020 = !{!"1031"}
!2021 = !DILocation(line: 163, column: 17, scope: !2009)
!2022 = !{!"1032"}
!2023 = !DILocation(line: 164, column: 7, scope: !2009)
!2024 = !{!"1033"}
!2025 = !{!"1034"}
!2026 = !{!"1035"}
!2027 = !{!"1036"}
!2028 = !{!"1037"}
!2029 = !DILocation(line: 164, column: 5, scope: !2009)
!2030 = !{!"1038"}
!2031 = !DILocation(line: 164, column: 26, scope: !2009)
!2032 = !{!"1039"}
!2033 = !DILocalVariable(name: "z", scope: !2009, file: !29, line: 161, type: !10)
!2034 = !DILocation(line: 0, scope: !2009)
!2035 = !{!"1040"}
!2036 = !DILocation(line: 165, column: 10, scope: !2009)
!2037 = !{!"1041"}
!2038 = !{!"1042"}
!2039 = !DILocation(line: 166, column: 17, scope: !2009)
!2040 = !{!"1043"}
!2041 = !DILocation(line: 166, column: 15, scope: !2009)
!2042 = !{!"1044"}
!2043 = !DILocation(line: 166, column: 8, scope: !2009)
!2044 = !{!"1045"}
!2045 = !DILocation(line: 166, column: 4, scope: !2009)
!2046 = !{!"1046"}
!2047 = !DILocation(line: 166, column: 13, scope: !2009)
!2048 = !{!"1047"}
!2049 = !DILocation(line: 167, column: 3, scope: !2009)
!2050 = !{!"1048"}
!2051 = !DILocation(line: 160, column: 21, scope: !2003)
!2052 = !{!"1049"}
!2053 = !{!"1050"}
!2054 = !DILocation(line: 160, column: 3, scope: !2003)
!2055 = distinct !{!2055, !2006, !2056, !123}
!2056 = !DILocation(line: 167, column: 3, scope: !2004)
!2057 = !{!"1051"}
!2058 = !DILocation(line: 169, column: 11, scope: !1787)
!2059 = !{!"1052"}
!2060 = !DILocalVariable(name: "zh", scope: !1787, file: !29, line: 40, type: !10)
!2061 = !{!"1053"}
!2062 = !DILocation(line: 170, column: 15, scope: !1787)
!2063 = !{!"1054"}
!2064 = !DILocation(line: 170, column: 12, scope: !1787)
!2065 = !{!"1055"}
!2066 = !DILocation(line: 170, column: 3, scope: !1787)
!2067 = !{!"1056"}
!2068 = !DILocation(line: 170, column: 10, scope: !1787)
!2069 = !{!"1057"}
!2070 = !DILocation(line: 171, column: 11, scope: !1787)
!2071 = !{!"1058"}
!2072 = !{!"1059"}
!2073 = !DILocation(line: 172, column: 2, scope: !1787)
!2074 = !{!"1060"}
!2075 = !DILocation(line: 39, column: 25, scope: !1782)
!2076 = !{!"1061"}
!2077 = !{!"1062"}
!2078 = !DILocation(line: 39, column: 2, scope: !1782)
!2079 = distinct !{!2079, !1784, !2080, !123}
!2080 = !DILocation(line: 172, column: 2, scope: !1774)
!2081 = !{!"1063"}
!2082 = !DILocation(line: 177, column: 9, scope: !1734)
!2083 = !{!"1064"}
!2084 = !{!"1065"}
!2085 = !DILocation(line: 177, column: 2, scope: !1734)
!2086 = !{!"1066"}
!2087 = !DILocation(line: 177, column: 7, scope: !1734)
!2088 = !{!"1067"}
!2089 = !DILocation(line: 183, column: 19, scope: !1734)
!2090 = !{!"1068"}
!2091 = !DILocation(line: 183, column: 36, scope: !1734)
!2092 = !{!"1069"}
!2093 = !DILocation(line: 183, column: 32, scope: !1734)
!2094 = !{!"1070"}
!2095 = !DILocation(line: 183, column: 30, scope: !1734)
!2096 = !{!"1071"}
!2097 = !DILocation(line: 183, column: 2, scope: !1734)
!2098 = !{!"1072"}
!2099 = !DILocation(line: 184, column: 1, scope: !1734)
!2100 = !{!"1073"}
!2101 = distinct !DISubprogram(name: "br_i15_zero", scope: !128, file: !128, line: 1537, type: !955, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!2102 = !DILocalVariable(name: "x", arg: 1, scope: !2101, file: !128, line: 1537, type: !338)
!2103 = !DILocation(line: 0, scope: !2101)
!2104 = !{!"1074"}
!2105 = !DILocalVariable(name: "bit_len", arg: 2, scope: !2101, file: !128, line: 1537, type: !339)
!2106 = !{!"1075"}
!2107 = !DILocation(line: 1539, column: 5, scope: !2101)
!2108 = !{!"1076"}
!2109 = !{!"1077"}
!2110 = !DILocation(line: 1539, column: 8, scope: !2101)
!2111 = !{!"1078"}
!2112 = !DILocation(line: 1540, column: 2, scope: !2101)
!2113 = !{!"1079"}
!2114 = !DILocation(line: 1540, column: 17, scope: !2101)
!2115 = !{!"1080"}
!2116 = !DILocation(line: 1540, column: 25, scope: !2101)
!2117 = !{!"1081"}
!2118 = !DILocation(line: 1540, column: 31, scope: !2101)
!2119 = !{!"1082"}
!2120 = !DILocation(line: 1540, column: 15, scope: !2101)
!2121 = !{!"1083"}
!2122 = !DILocation(line: 1540, column: 37, scope: !2101)
!2123 = !{!"1084"}
!2124 = !{!"1085"}
!2125 = !DILocation(line: 1541, column: 1, scope: !2101)
!2126 = !{!"1086"}
!2127 = distinct !DISubprogram(name: "NEQ", scope: !128, file: !128, line: 791, type: !499, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!2128 = !DILocalVariable(name: "x", arg: 1, scope: !2127, file: !128, line: 791, type: !10)
!2129 = !DILocation(line: 0, scope: !2127)
!2130 = !{!"1087"}
!2131 = !DILocalVariable(name: "y", arg: 2, scope: !2127, file: !128, line: 791, type: !10)
!2132 = !{!"1088"}
!2133 = !DILocation(line: 795, column: 8, scope: !2127)
!2134 = !{!"1089"}
!2135 = !DILocalVariable(name: "q", scope: !2127, file: !128, line: 793, type: !10)
!2136 = !{!"1090"}
!2137 = !DILocation(line: 796, column: 14, scope: !2127)
!2138 = !{!"1091"}
!2139 = !DILocation(line: 796, column: 12, scope: !2127)
!2140 = !{!"1092"}
!2141 = !DILocation(line: 796, column: 18, scope: !2127)
!2142 = !{!"1093"}
!2143 = !DILocation(line: 796, column: 2, scope: !2127)
!2144 = !{!"1094"}
!2145 = distinct !DISubprogram(name: "NOT", scope: !128, file: !128, line: 761, type: !539, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !2)
!2146 = !DILocalVariable(name: "ctl", arg: 1, scope: !2145, file: !128, line: 761, type: !10)
!2147 = !DILocation(line: 0, scope: !2145)
!2148 = !{!"1095"}
!2149 = !DILocation(line: 763, column: 13, scope: !2145)
!2150 = !{!"1096"}
!2151 = !DILocation(line: 763, column: 2, scope: !2145)
!2152 = !{!"1097"}
!2153 = distinct !DISubprogram(name: "br_i15_mulacc", scope: !35, file: !35, line: 29, type: !2154, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !2)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !338, !342, !342}
!2156 = !DILocalVariable(name: "d", arg: 1, scope: !2153, file: !35, line: 29, type: !338)
!2157 = !DILocation(line: 0, scope: !2153)
!2158 = !{!"1098"}
!2159 = !DILocalVariable(name: "a", arg: 2, scope: !2153, file: !35, line: 29, type: !342)
!2160 = !{!"1099"}
!2161 = !DILocalVariable(name: "b", arg: 3, scope: !2153, file: !35, line: 29, type: !342)
!2162 = !{!"1100"}
!2163 = !DILocation(line: 34, column: 10, scope: !2153)
!2164 = !{!"1101"}
!2165 = !{!"1102"}
!2166 = !{!"1103"}
!2167 = !DILocation(line: 34, column: 15, scope: !2153)
!2168 = !{!"1104"}
!2169 = !DILocation(line: 34, column: 21, scope: !2153)
!2170 = !{!"1105"}
!2171 = !DILocation(line: 34, column: 9, scope: !2153)
!2172 = !{!"1106"}
!2173 = !DILocalVariable(name: "alen", scope: !2153, file: !35, line: 31, type: !31)
!2174 = !{!"1107"}
!2175 = !DILocation(line: 35, column: 10, scope: !2153)
!2176 = !{!"1108"}
!2177 = !{!"1109"}
!2178 = !{!"1110"}
!2179 = !DILocation(line: 35, column: 15, scope: !2153)
!2180 = !{!"1111"}
!2181 = !DILocation(line: 35, column: 21, scope: !2153)
!2182 = !{!"1112"}
!2183 = !DILocation(line: 35, column: 9, scope: !2153)
!2184 = !{!"1113"}
!2185 = !DILocalVariable(name: "blen", scope: !2153, file: !35, line: 31, type: !31)
!2186 = !{!"1114"}
!2187 = !DILocation(line: 41, column: 8, scope: !2153)
!2188 = !{!"1115"}
!2189 = !{!"1116"}
!2190 = !{!"1117"}
!2191 = !DILocation(line: 41, column: 13, scope: !2153)
!2192 = !{!"1118"}
!2193 = !DILocation(line: 41, column: 22, scope: !2153)
!2194 = !{!"1119"}
!2195 = !{!"1120"}
!2196 = !{!"1121"}
!2197 = !DILocation(line: 41, column: 27, scope: !2153)
!2198 = !{!"1122"}
!2199 = !DILocation(line: 41, column: 19, scope: !2153)
!2200 = !{!"1123"}
!2201 = !DILocalVariable(name: "dl", scope: !2153, file: !35, line: 32, type: !14)
!2202 = !{!"1124"}
!2203 = !DILocation(line: 42, column: 8, scope: !2153)
!2204 = !{!"1125"}
!2205 = !{!"1126"}
!2206 = !{!"1127"}
!2207 = !DILocation(line: 42, column: 13, scope: !2153)
!2208 = !{!"1128"}
!2209 = !DILocation(line: 42, column: 22, scope: !2153)
!2210 = !{!"1129"}
!2211 = !{!"1130"}
!2212 = !{!"1131"}
!2213 = !DILocation(line: 42, column: 27, scope: !2153)
!2214 = !{!"1132"}
!2215 = !DILocation(line: 42, column: 19, scope: !2153)
!2216 = !{!"1133"}
!2217 = !DILocalVariable(name: "dh", scope: !2153, file: !35, line: 32, type: !14)
!2218 = !{!"1134"}
!2219 = !DILocation(line: 43, column: 13, scope: !2153)
!2220 = !{!"1135"}
!2221 = !DILocation(line: 43, column: 19, scope: !2153)
!2222 = !{!"1136"}
!2223 = !DILocation(line: 43, column: 42, scope: !2153)
!2224 = !{!"1137"}
!2225 = !DILocation(line: 43, column: 27, scope: !2153)
!2226 = !{!"1138"}
!2227 = !DILocation(line: 43, column: 48, scope: !2153)
!2228 = !{!"1139"}
!2229 = !DILocation(line: 43, column: 24, scope: !2153)
!2230 = !{!"1140"}
!2231 = !DILocation(line: 43, column: 9, scope: !2153)
!2232 = !{!"1141"}
!2233 = !DILocation(line: 43, column: 2, scope: !2153)
!2234 = !{!"1142"}
!2235 = !DILocation(line: 43, column: 7, scope: !2153)
!2236 = !{!"1143"}
!2237 = !DILocalVariable(name: "u", scope: !2153, file: !35, line: 31, type: !31)
!2238 = !{!"1144"}
!2239 = !DILocation(line: 45, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2153, file: !35, line: 45, column: 2)
!2241 = !{!"1145"}
!2242 = !DILocation(line: 0, scope: !2240)
!2243 = !{!"1146"}
!2244 = !{!"1147"}
!2245 = !DILocation(line: 45, column: 16, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2240, file: !35, line: 45, column: 2)
!2247 = !{!"1148"}
!2248 = !DILocation(line: 45, column: 2, scope: !2240)
!2249 = !{!"1149"}
!2250 = !DILocation(line: 50, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2246, file: !35, line: 45, column: 30)
!2252 = !{!"1150"}
!2253 = !DILocation(line: 50, column: 7, scope: !2251)
!2254 = !{!"1151"}
!2255 = !{!"1152"}
!2256 = !{!"1153"}
!2257 = !DILocalVariable(name: "f", scope: !2251, file: !35, line: 46, type: !10)
!2258 = !DILocation(line: 0, scope: !2251)
!2259 = !{!"1154"}
!2260 = !DILocalVariable(name: "cc", scope: !2251, file: !35, line: 48, type: !10)
!2261 = !{!"1155"}
!2262 = !DILocalVariable(name: "v", scope: !2251, file: !35, line: 47, type: !31)
!2263 = !{!"1156"}
!2264 = !DILocation(line: 52, column: 8, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2251, file: !35, line: 52, column: 3)
!2266 = !{!"1157"}
!2267 = !DILocation(line: 0, scope: !2265)
!2268 = !{!"1158"}
!2269 = !{!"1159"}
!2270 = !{!"1160"}
!2271 = !{!"1161"}
!2272 = !DILocation(line: 52, column: 17, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2265, file: !35, line: 52, column: 3)
!2274 = !{!"1162"}
!2275 = !DILocation(line: 52, column: 3, scope: !2265)
!2276 = !{!"1163"}
!2277 = !DILocation(line: 55, column: 22, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !35, line: 52, column: 31)
!2279 = !{!"1164"}
!2280 = !DILocation(line: 55, column: 26, scope: !2278)
!2281 = !{!"1165"}
!2282 = !DILocation(line: 55, column: 18, scope: !2278)
!2283 = !{!"1166"}
!2284 = !{!"1167"}
!2285 = !DILocation(line: 55, column: 8, scope: !2278)
!2286 = !{!"1168"}
!2287 = !DILocation(line: 55, column: 33, scope: !2278)
!2288 = !{!"1169"}
!2289 = !{!"1170"}
!2290 = !{!"1171"}
!2291 = !{!"1172"}
!2292 = !{!"1173"}
!2293 = !DILocation(line: 55, column: 31, scope: !2278)
!2294 = !{!"1174"}
!2295 = !DILocation(line: 55, column: 52, scope: !2278)
!2296 = !{!"1175"}
!2297 = !DILocalVariable(name: "z", scope: !2278, file: !35, line: 53, type: !10)
!2298 = !DILocation(line: 0, scope: !2278)
!2299 = !{!"1176"}
!2300 = !DILocation(line: 56, column: 11, scope: !2278)
!2301 = !{!"1177"}
!2302 = !{!"1178"}
!2303 = !DILocation(line: 57, column: 21, scope: !2278)
!2304 = !{!"1179"}
!2305 = !DILocation(line: 57, column: 19, scope: !2278)
!2306 = !{!"1180"}
!2307 = !DILocation(line: 57, column: 8, scope: !2278)
!2308 = !{!"1181"}
!2309 = !DILocation(line: 57, column: 12, scope: !2278)
!2310 = !{!"1182"}
!2311 = !DILocation(line: 57, column: 4, scope: !2278)
!2312 = !{!"1183"}
!2313 = !DILocation(line: 57, column: 17, scope: !2278)
!2314 = !{!"1184"}
!2315 = !DILocation(line: 58, column: 3, scope: !2278)
!2316 = !{!"1185"}
!2317 = !DILocation(line: 52, column: 27, scope: !2273)
!2318 = !{!"1186"}
!2319 = !{!"1187"}
!2320 = !DILocation(line: 52, column: 3, scope: !2273)
!2321 = distinct !{!2321, !2275, !2322, !123}
!2322 = !DILocation(line: 58, column: 3, scope: !2265)
!2323 = !{!"1188"}
!2324 = !DILocation(line: 59, column: 21, scope: !2251)
!2325 = !{!"1189"}
!2326 = !DILocation(line: 59, column: 7, scope: !2251)
!2327 = !{!"1190"}
!2328 = !DILocation(line: 59, column: 11, scope: !2251)
!2329 = !{!"1191"}
!2330 = !DILocation(line: 59, column: 3, scope: !2251)
!2331 = !{!"1192"}
!2332 = !DILocation(line: 59, column: 19, scope: !2251)
!2333 = !{!"1193"}
!2334 = !DILocation(line: 60, column: 2, scope: !2251)
!2335 = !{!"1194"}
!2336 = !DILocation(line: 45, column: 26, scope: !2246)
!2337 = !{!"1195"}
!2338 = !{!"1196"}
!2339 = !DILocation(line: 45, column: 2, scope: !2246)
!2340 = distinct !{!2340, !2248, !2341, !123}
!2341 = !DILocation(line: 60, column: 2, scope: !2240)
!2342 = !{!"1197"}
!2343 = !DILocation(line: 61, column: 1, scope: !2153)
!2344 = !{!"1198"}
!2345 = distinct !DISubprogram(name: "br_i15_muladd_small", scope: !37, file: !37, line: 55, type: !2346, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !2)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !338, !339, !342}
!2348 = !{!"1199"}
!2349 = !DILocalVariable(name: "x", arg: 1, scope: !2345, file: !37, line: 55, type: !338)
!2350 = !DILocation(line: 0, scope: !2345)
!2351 = !{!"1200"}
!2352 = !DILocalVariable(name: "z", arg: 2, scope: !2345, file: !37, line: 55, type: !339)
!2353 = !{!"1201"}
!2354 = !DILocalVariable(name: "m", arg: 3, scope: !2345, file: !37, line: 55, type: !342)
!2355 = !{!"1202"}
!2356 = !DILocation(line: 69, column: 13, scope: !2345)
!2357 = !{!"1203"}
!2358 = !{!"1204"}
!2359 = !{!"1205"}
!2360 = !DILocalVariable(name: "m_bitlen", scope: !2345, file: !37, line: 61, type: !14)
!2361 = !{!"1206"}
!2362 = !DILocation(line: 70, column: 15, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2345, file: !37, line: 70, column: 6)
!2364 = !{!"1207"}
!2365 = !DILocation(line: 70, column: 6, scope: !2345)
!2366 = !{!"1208"}
!2367 = !DILocation(line: 71, column: 3, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2363, file: !37, line: 70, column: 21)
!2369 = !{!"1209"}
!2370 = !DILocation(line: 73, column: 15, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2345, file: !37, line: 73, column: 6)
!2372 = !{!"1210"}
!2373 = !DILocation(line: 73, column: 6, scope: !2345)
!2374 = !{!"1211"}
!2375 = !DILocalVariable(name: "rem", scope: !2376, file: !37, line: 74, type: !10)
!2376 = distinct !DILexicalBlock(scope: !2371, file: !37, line: 73, column: 22)
!2377 = !DILocation(line: 74, column: 12, scope: !2376)
!2378 = !{!"1212"}
!2379 = !DILocation(line: 76, column: 23, scope: !2376)
!2380 = !{!"1213"}
!2381 = !{!"1214"}
!2382 = !DILocation(line: 76, column: 13, scope: !2376)
!2383 = !{!"1215"}
!2384 = !DILocation(line: 76, column: 28, scope: !2376)
!2385 = !{!"1216"}
!2386 = !DILocation(line: 76, column: 37, scope: !2376)
!2387 = !{!"1217"}
!2388 = !DILocation(line: 76, column: 35, scope: !2376)
!2389 = !{!"1218"}
!2390 = !DILocation(line: 76, column: 40, scope: !2376)
!2391 = !{!"1219"}
!2392 = !{!"1220"}
!2393 = !{!"1221"}
!2394 = !DILocation(line: 76, column: 3, scope: !2376)
!2395 = !{!"1222"}
!2396 = !DILocation(line: 77, column: 10, scope: !2376)
!2397 = !{!"1223"}
!2398 = !{!"1224"}
!2399 = !DILocation(line: 77, column: 3, scope: !2376)
!2400 = !{!"1225"}
!2401 = !DILocation(line: 77, column: 8, scope: !2376)
!2402 = !{!"1226"}
!2403 = !DILocation(line: 78, column: 3, scope: !2376)
!2404 = !{!"1227"}
!2405 = !DILocation(line: 80, column: 19, scope: !2345)
!2406 = !{!"1228"}
!2407 = !DILocation(line: 80, column: 25, scope: !2345)
!2408 = !{!"1229"}
!2409 = !DILocation(line: 80, column: 9, scope: !2345)
!2410 = !{!"1230"}
!2411 = !DILocalVariable(name: "mlen", scope: !2345, file: !37, line: 62, type: !31)
!2412 = !{!"1231"}
!2413 = !DILocation(line: 81, column: 18, scope: !2345)
!2414 = !{!"1232"}
!2415 = !DILocalVariable(name: "mblr", scope: !2345, file: !37, line: 61, type: !14)
!2416 = !{!"1233"}
!2417 = !DILocation(line: 109, column: 7, scope: !2345)
!2418 = !{!"1234"}
!2419 = !{!"1235"}
!2420 = !{!"1236"}
!2421 = !DILocalVariable(name: "hi", scope: !2345, file: !37, line: 63, type: !10)
!2422 = !{!"1237"}
!2423 = !DILocation(line: 110, column: 11, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2345, file: !37, line: 110, column: 6)
!2425 = !{!"1238"}
!2426 = !DILocation(line: 110, column: 6, scope: !2345)
!2427 = !{!"1239"}
!2428 = !DILocation(line: 111, column: 8, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2424, file: !37, line: 110, column: 17)
!2430 = !{!"1240"}
!2431 = !{!"1241"}
!2432 = !{!"1242"}
!2433 = !DILocalVariable(name: "a0", scope: !2345, file: !37, line: 63, type: !10)
!2434 = !{!"1243"}
!2435 = !DILocation(line: 112, column: 13, scope: !2429)
!2436 = !{!"1244"}
!2437 = !DILocation(line: 112, column: 3, scope: !2429)
!2438 = !{!"1245"}
!2439 = !DILocation(line: 112, column: 20, scope: !2429)
!2440 = !{!"1246"}
!2441 = !{!"1247"}
!2442 = !DILocation(line: 112, column: 31, scope: !2429)
!2443 = !{!"1248"}
!2444 = !DILocation(line: 112, column: 36, scope: !2429)
!2445 = !{!"1249"}
!2446 = !{!"1250"}
!2447 = !DILocation(line: 113, column: 3, scope: !2429)
!2448 = !{!"1251"}
!2449 = !DILocation(line: 113, column: 8, scope: !2429)
!2450 = !{!"1252"}
!2451 = !DILocation(line: 114, column: 11, scope: !2429)
!2452 = !{!"1253"}
!2453 = !DILocation(line: 114, column: 20, scope: !2429)
!2454 = !{!"1254"}
!2455 = !{!"1255"}
!2456 = !{!"1256"}
!2457 = !DILocation(line: 114, column: 18, scope: !2429)
!2458 = !{!"1257"}
!2459 = !DILocalVariable(name: "a", scope: !2345, file: !37, line: 63, type: !10)
!2460 = !{!"1258"}
!2461 = !DILocation(line: 115, column: 7, scope: !2429)
!2462 = !{!"1259"}
!2463 = !{!"1260"}
!2464 = !{!"1261"}
!2465 = !DILocalVariable(name: "b", scope: !2345, file: !37, line: 63, type: !10)
!2466 = !{!"1262"}
!2467 = !DILocation(line: 116, column: 2, scope: !2429)
!2468 = !{!"1263"}
!2469 = !DILocation(line: 117, column: 9, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2424, file: !37, line: 116, column: 9)
!2471 = !{!"1264"}
!2472 = !{!"1265"}
!2473 = !{!"1266"}
!2474 = !DILocation(line: 117, column: 24, scope: !2470)
!2475 = !{!"1267"}
!2476 = !DILocation(line: 117, column: 17, scope: !2470)
!2477 = !{!"1268"}
!2478 = !DILocation(line: 117, column: 43, scope: !2470)
!2479 = !{!"1269"}
!2480 = !DILocation(line: 117, column: 36, scope: !2470)
!2481 = !{!"1270"}
!2482 = !{!"1271"}
!2483 = !{!"1272"}
!2484 = !DILocation(line: 117, column: 48, scope: !2470)
!2485 = !{!"1273"}
!2486 = !DILocation(line: 117, column: 33, scope: !2470)
!2487 = !{!"1274"}
!2488 = !{!"1275"}
!2489 = !DILocation(line: 118, column: 13, scope: !2470)
!2490 = !{!"1276"}
!2491 = !DILocation(line: 118, column: 3, scope: !2470)
!2492 = !{!"1277"}
!2493 = !DILocation(line: 118, column: 20, scope: !2470)
!2494 = !{!"1278"}
!2495 = !{!"1279"}
!2496 = !DILocation(line: 118, column: 31, scope: !2470)
!2497 = !{!"1280"}
!2498 = !DILocation(line: 118, column: 36, scope: !2470)
!2499 = !{!"1281"}
!2500 = !{!"1282"}
!2501 = !DILocation(line: 119, column: 3, scope: !2470)
!2502 = !{!"1283"}
!2503 = !DILocation(line: 119, column: 8, scope: !2470)
!2504 = !{!"1284"}
!2505 = !DILocation(line: 120, column: 11, scope: !2470)
!2506 = !{!"1285"}
!2507 = !DILocation(line: 120, column: 23, scope: !2470)
!2508 = !{!"1286"}
!2509 = !{!"1287"}
!2510 = !{!"1288"}
!2511 = !DILocation(line: 120, column: 38, scope: !2470)
!2512 = !{!"1289"}
!2513 = !DILocation(line: 120, column: 31, scope: !2470)
!2514 = !{!"1290"}
!2515 = !DILocation(line: 121, column: 14, scope: !2470)
!2516 = !{!"1291"}
!2517 = !DILocation(line: 121, column: 7, scope: !2470)
!2518 = !{!"1292"}
!2519 = !{!"1293"}
!2520 = !{!"1294"}
!2521 = !DILocation(line: 121, column: 19, scope: !2470)
!2522 = !{!"1295"}
!2523 = !DILocation(line: 121, column: 4, scope: !2470)
!2524 = !{!"1296"}
!2525 = !DILocation(line: 121, column: 29, scope: !2470)
!2526 = !{!"1297"}
!2527 = !DILocation(line: 120, column: 18, scope: !2470)
!2528 = !{!"1298"}
!2529 = !{!"1299"}
!2530 = !DILocation(line: 122, column: 8, scope: !2470)
!2531 = !{!"1300"}
!2532 = !{!"1301"}
!2533 = !{!"1302"}
!2534 = !DILocation(line: 122, column: 23, scope: !2470)
!2535 = !{!"1303"}
!2536 = !DILocation(line: 122, column: 16, scope: !2470)
!2537 = !{!"1304"}
!2538 = !DILocation(line: 122, column: 42, scope: !2470)
!2539 = !{!"1305"}
!2540 = !DILocation(line: 122, column: 35, scope: !2470)
!2541 = !{!"1306"}
!2542 = !{!"1307"}
!2543 = !{!"1308"}
!2544 = !DILocation(line: 122, column: 47, scope: !2470)
!2545 = !{!"1309"}
!2546 = !DILocation(line: 122, column: 32, scope: !2470)
!2547 = !{!"1310"}
!2548 = !{!"1311"}
!2549 = !{!"1312"}
!2550 = !DILocation(line: 0, scope: !2424)
!2551 = !{!"1313"}
!2552 = !{!"1314"}
!2553 = !{!"1315"}
!2554 = !{!"1316"}
!2555 = !{!"1317"}
!2556 = !{!"1318"}
!2557 = !DILocation(line: 124, column: 6, scope: !2345)
!2558 = !{!"1319"}
!2559 = !DILocalVariable(name: "q", scope: !2345, file: !37, line: 63, type: !10)
!2560 = !{!"1320"}
!2561 = !DILocation(line: 134, column: 10, scope: !2345)
!2562 = !{!"1321"}
!2563 = !DILocation(line: 134, column: 31, scope: !2345)
!2564 = !{!"1322"}
!2565 = !DILocation(line: 134, column: 41, scope: !2345)
!2566 = !{!"1323"}
!2567 = !DILocation(line: 134, column: 46, scope: !2345)
!2568 = !{!"1324"}
!2569 = !DILocation(line: 134, column: 35, scope: !2345)
!2570 = !{!"1325"}
!2571 = !DILocation(line: 134, column: 6, scope: !2345)
!2572 = !{!"1326"}
!2573 = !{!"1327"}
!2574 = !DILocalVariable(name: "cc", scope: !2345, file: !37, line: 64, type: !10)
!2575 = !{!"1328"}
!2576 = !DILocalVariable(name: "tb", scope: !2345, file: !37, line: 64, type: !10)
!2577 = !{!"1329"}
!2578 = !DILocalVariable(name: "u", scope: !2345, file: !37, line: 62, type: !31)
!2579 = !{!"1330"}
!2580 = !DILocation(line: 147, column: 7, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2345, file: !37, line: 147, column: 2)
!2582 = !{!"1331"}
!2583 = !DILocation(line: 0, scope: !2581)
!2584 = !{!"1332"}
!2585 = !{!"1333"}
!2586 = !{!"1334"}
!2587 = !{!"1335"}
!2588 = !{!"1336"}
!2589 = !{!"1337"}
!2590 = !DILocation(line: 147, column: 16, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2581, file: !37, line: 147, column: 2)
!2592 = !{!"1338"}
!2593 = !DILocation(line: 147, column: 2, scope: !2581)
!2594 = !{!"1339"}
!2595 = !DILocation(line: 150, column: 8, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2591, file: !37, line: 147, column: 31)
!2597 = !{!"1340"}
!2598 = !{!"1341"}
!2599 = !{!"1342"}
!2600 = !DILocalVariable(name: "mw", scope: !2596, file: !37, line: 148, type: !10)
!2601 = !DILocation(line: 0, scope: !2596)
!2602 = !{!"1343"}
!2603 = !DILocation(line: 151, column: 8, scope: !2596)
!2604 = !{!"1344"}
!2605 = !DILocation(line: 151, column: 21, scope: !2596)
!2606 = !{!"1345"}
!2607 = !DILocalVariable(name: "zl", scope: !2596, file: !37, line: 148, type: !10)
!2608 = !{!"1346"}
!2609 = !DILocation(line: 152, column: 11, scope: !2596)
!2610 = !{!"1347"}
!2611 = !{!"1348"}
!2612 = !DILocation(line: 153, column: 6, scope: !2596)
!2613 = !{!"1349"}
!2614 = !{!"1350"}
!2615 = !DILocation(line: 154, column: 8, scope: !2596)
!2616 = !{!"1351"}
!2617 = !{!"1352"}
!2618 = !{!"1353"}
!2619 = !DILocalVariable(name: "xw", scope: !2596, file: !37, line: 148, type: !10)
!2620 = !{!"1354"}
!2621 = !DILocation(line: 155, column: 12, scope: !2596)
!2622 = !{!"1355"}
!2623 = !DILocalVariable(name: "nxw", scope: !2596, file: !37, line: 148, type: !10)
!2624 = !{!"1356"}
!2625 = !DILocation(line: 156, column: 13, scope: !2596)
!2626 = !{!"1357"}
!2627 = !DILocation(line: 156, column: 6, scope: !2596)
!2628 = !{!"1358"}
!2629 = !{!"1359"}
!2630 = !DILocation(line: 157, column: 7, scope: !2596)
!2631 = !{!"1360"}
!2632 = !{!"1361"}
!2633 = !DILocation(line: 158, column: 10, scope: !2596)
!2634 = !{!"1362"}
!2635 = !DILocation(line: 158, column: 3, scope: !2596)
!2636 = !{!"1363"}
!2637 = !DILocation(line: 158, column: 8, scope: !2596)
!2638 = !{!"1364"}
!2639 = !DILocation(line: 159, column: 12, scope: !2596)
!2640 = !{!"1365"}
!2641 = !DILocation(line: 159, column: 29, scope: !2596)
!2642 = !{!"1366"}
!2643 = !DILocation(line: 159, column: 8, scope: !2596)
!2644 = !{!"1367"}
!2645 = !{!"1368"}
!2646 = !DILocation(line: 160, column: 2, scope: !2596)
!2647 = !{!"1369"}
!2648 = !DILocation(line: 147, column: 27, scope: !2591)
!2649 = !{!"1370"}
!2650 = !{!"1371"}
!2651 = !DILocation(line: 147, column: 2, scope: !2591)
!2652 = distinct !{!2652, !2593, !2653, !123}
!2653 = !DILocation(line: 160, column: 2, scope: !2581)
!2654 = !{!"1372"}
!2655 = !DILocation(line: 169, column: 9, scope: !2345)
!2656 = !{!"1373"}
!2657 = !DILocalVariable(name: "over", scope: !2345, file: !37, line: 64, type: !10)
!2658 = !{!"1374"}
!2659 = !DILocation(line: 170, column: 10, scope: !2345)
!2660 = !{!"1375"}
!2661 = !DILocation(line: 170, column: 24, scope: !2345)
!2662 = !{!"1376"}
!2663 = !DILocation(line: 170, column: 22, scope: !2345)
!2664 = !{!"1377"}
!2665 = !DILocation(line: 170, column: 16, scope: !2345)
!2666 = !{!"1378"}
!2667 = !DILocalVariable(name: "under", scope: !2345, file: !37, line: 64, type: !10)
!2668 = !{!"1379"}
!2669 = !DILocation(line: 171, column: 2, scope: !2345)
!2670 = !{!"1380"}
!2671 = !DILocation(line: 172, column: 2, scope: !2345)
!2672 = !{!"1381"}
!2673 = !DILocation(line: 173, column: 1, scope: !2345)
!2674 = !{!"1382"}
!2675 = !{!"1383"}
!2676 = distinct !DISubprogram(name: "divrem16", scope: !37, file: !37, line: 32, type: !2677, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !2)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!10, !10, !10, !2679}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!2680 = !DILocalVariable(name: "x", arg: 1, scope: !2676, file: !37, line: 32, type: !10)
!2681 = !DILocation(line: 0, scope: !2676)
!2682 = !{!"1384"}
!2683 = !DILocalVariable(name: "d", arg: 2, scope: !2676, file: !37, line: 32, type: !10)
!2684 = !{!"1385"}
!2685 = !DILocalVariable(name: "r", arg: 3, scope: !2676, file: !37, line: 32, type: !2679)
!2686 = !{!"1386"}
!2687 = !DILocalVariable(name: "q", scope: !2676, file: !37, line: 35, type: !10)
!2688 = !{!"1387"}
!2689 = !DILocation(line: 38, column: 4, scope: !2676)
!2690 = !{!"1388"}
!2691 = !{!"1389"}
!2692 = !DILocalVariable(name: "i", scope: !2676, file: !37, line: 34, type: !673)
!2693 = !{!"1390"}
!2694 = !DILocation(line: 39, column: 7, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2676, file: !37, line: 39, column: 2)
!2696 = !{!"1391"}
!2697 = !DILocation(line: 0, scope: !2695)
!2698 = !{!"1392"}
!2699 = !{!"1393"}
!2700 = !{!"1394"}
!2701 = !{!"1395"}
!2702 = !{!"1396"}
!2703 = !{!"1397"}
!2704 = !{!"1398"}
!2705 = !{!"1399"}
!2706 = !DILocation(line: 39, column: 17, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2695, file: !37, line: 39, column: 2)
!2708 = !{!"1400"}
!2709 = !DILocation(line: 39, column: 2, scope: !2695)
!2710 = !{!"1401"}
!2711 = !DILocation(line: 42, column: 9, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2707, file: !37, line: 39, column: 29)
!2713 = !{!"1402"}
!2714 = !{!"1403"}
!2715 = !DILocalVariable(name: "ctl", scope: !2712, file: !37, line: 40, type: !10)
!2716 = !DILocation(line: 0, scope: !2712)
!2717 = !{!"1404"}
!2718 = !DILocation(line: 43, column: 12, scope: !2712)
!2719 = !{!"1405"}
!2720 = !DILocation(line: 43, column: 5, scope: !2712)
!2721 = !{!"1406"}
!2722 = !{!"1407"}
!2723 = !DILocation(line: 44, column: 9, scope: !2712)
!2724 = !{!"1408"}
!2725 = !DILocation(line: 44, column: 15, scope: !2712)
!2726 = !{!"1409"}
!2727 = !DILocation(line: 44, column: 5, scope: !2712)
!2728 = !{!"1410"}
!2729 = !{!"1411"}
!2730 = !DILocation(line: 45, column: 5, scope: !2712)
!2731 = !{!"1412"}
!2732 = !{!"1413"}
!2733 = !DILocation(line: 46, column: 2, scope: !2712)
!2734 = !{!"1414"}
!2735 = !DILocation(line: 39, column: 25, scope: !2707)
!2736 = !{!"1415"}
!2737 = !{!"1416"}
!2738 = !DILocation(line: 39, column: 2, scope: !2707)
!2739 = distinct !{!2739, !2709, !2740, !123}
!2740 = !DILocation(line: 46, column: 2, scope: !2695)
!2741 = !{!"1417"}
!2742 = !DILocation(line: 47, column: 8, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2676, file: !37, line: 47, column: 6)
!2744 = !{!"1418"}
!2745 = !DILocation(line: 47, column: 6, scope: !2676)
!2746 = !{!"1419"}
!2747 = !DILocation(line: 48, column: 6, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2743, file: !37, line: 47, column: 17)
!2749 = !{!"1420"}
!2750 = !DILocation(line: 49, column: 2, scope: !2748)
!2751 = !{!"1421"}
!2752 = !DILocation(line: 50, column: 2, scope: !2676)
!2753 = !{!"1422"}
!2754 = distinct !DISubprogram(name: "EQ", scope: !128, file: !128, line: 779, type: !499, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !2)
!2755 = !DILocalVariable(name: "x", arg: 1, scope: !2754, file: !128, line: 779, type: !10)
!2756 = !DILocation(line: 0, scope: !2754)
!2757 = !{!"1423"}
!2758 = !DILocalVariable(name: "y", arg: 2, scope: !2754, file: !128, line: 779, type: !10)
!2759 = !{!"1424"}
!2760 = !DILocation(line: 783, column: 8, scope: !2754)
!2761 = !{!"1425"}
!2762 = !DILocalVariable(name: "q", scope: !2754, file: !128, line: 781, type: !10)
!2763 = !{!"1426"}
!2764 = !DILocation(line: 784, column: 18, scope: !2754)
!2765 = !{!"1427"}
!2766 = !DILocation(line: 784, column: 16, scope: !2754)
!2767 = !{!"1428"}
!2768 = !DILocation(line: 784, column: 22, scope: !2754)
!2769 = !{!"1429"}
!2770 = !DILocation(line: 784, column: 9, scope: !2754)
!2771 = !{!"1430"}
!2772 = !DILocation(line: 784, column: 2, scope: !2754)
!2773 = !{!"1431"}
!2774 = distinct !DISubprogram(name: "MUX", scope: !128, file: !128, line: 770, type: !129, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !2)
!2775 = !DILocalVariable(name: "ctl", arg: 1, scope: !2774, file: !128, line: 770, type: !10)
!2776 = !DILocation(line: 0, scope: !2774)
!2777 = !{!"1432"}
!2778 = !DILocalVariable(name: "x", arg: 2, scope: !2774, file: !128, line: 770, type: !10)
!2779 = !{!"1433"}
!2780 = !DILocalVariable(name: "y", arg: 3, scope: !2774, file: !128, line: 770, type: !10)
!2781 = !{!"1434"}
!2782 = !DILocation(line: 772, column: 14, scope: !2774)
!2783 = !{!"1435"}
!2784 = !DILocation(line: 772, column: 24, scope: !2774)
!2785 = !{!"1436"}
!2786 = !DILocation(line: 772, column: 19, scope: !2774)
!2787 = !{!"1437"}
!2788 = !DILocation(line: 772, column: 11, scope: !2774)
!2789 = !{!"1438"}
!2790 = !DILocation(line: 772, column: 2, scope: !2774)
!2791 = !{!"1439"}
!2792 = distinct !DISubprogram(name: "GT", scope: !128, file: !128, line: 803, type: !499, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !2)
!2793 = !DILocalVariable(name: "x", arg: 1, scope: !2792, file: !128, line: 803, type: !10)
!2794 = !DILocation(line: 0, scope: !2792)
!2795 = !{!"1440"}
!2796 = !DILocalVariable(name: "y", arg: 2, scope: !2792, file: !128, line: 803, type: !10)
!2797 = !{!"1441"}
!2798 = !DILocation(line: 819, column: 8, scope: !2792)
!2799 = !{!"1442"}
!2800 = !DILocalVariable(name: "z", scope: !2792, file: !128, line: 817, type: !10)
!2801 = !{!"1443"}
!2802 = !DILocation(line: 820, column: 18, scope: !2792)
!2803 = !{!"1444"}
!2804 = !DILocation(line: 820, column: 28, scope: !2792)
!2805 = !{!"1445"}
!2806 = !DILocation(line: 820, column: 23, scope: !2792)
!2807 = !{!"1446"}
!2808 = !DILocation(line: 820, column: 12, scope: !2792)
!2809 = !{!"1447"}
!2810 = !DILocation(line: 820, column: 35, scope: !2792)
!2811 = !{!"1448"}
!2812 = !DILocation(line: 820, column: 2, scope: !2792)
!2813 = !{!"1449"}
!2814 = distinct !DISubprogram(name: "NOT", scope: !128, file: !128, line: 761, type: !539, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !36, retainedNodes: !2)
!2815 = !DILocalVariable(name: "ctl", arg: 1, scope: !2814, file: !128, line: 761, type: !10)
!2816 = !DILocation(line: 0, scope: !2814)
!2817 = !{!"1450"}
!2818 = !DILocation(line: 763, column: 13, scope: !2814)
!2819 = !{!"1451"}
!2820 = !DILocation(line: 763, column: 2, scope: !2814)
!2821 = !{!"1452"}
!2822 = distinct !DISubprogram(name: "br_i15_ninv15", scope: !41, file: !41, line: 29, type: !2823, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !2)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!339, !339}
!2825 = !DILocalVariable(name: "x", arg: 1, scope: !2822, file: !41, line: 29, type: !339)
!2826 = !DILocation(line: 0, scope: !2822)
!2827 = !{!"1453"}
!2828 = !DILocation(line: 33, column: 10, scope: !2822)
!2829 = !{!"1454"}
!2830 = !DILocation(line: 33, column: 8, scope: !2822)
!2831 = !{!"1455"}
!2832 = !DILocalVariable(name: "y", scope: !2822, file: !41, line: 31, type: !10)
!2833 = !{!"1456"}
!2834 = !DILocation(line: 34, column: 6, scope: !2822)
!2835 = !{!"1457"}
!2836 = !{!"1458"}
!2837 = !{!"1459"}
!2838 = !{!"1460"}
!2839 = !{!"1461"}
!2840 = !DILocation(line: 35, column: 6, scope: !2822)
!2841 = !{!"1462"}
!2842 = !{!"1463"}
!2843 = !{!"1464"}
!2844 = !{!"1465"}
!2845 = !{!"1466"}
!2846 = !DILocation(line: 36, column: 6, scope: !2822)
!2847 = !{!"1467"}
!2848 = !{!"1468"}
!2849 = !{!"1469"}
!2850 = !{!"1470"}
!2851 = !{!"1471"}
!2852 = !DILocation(line: 37, column: 13, scope: !2822)
!2853 = !{!"1472"}
!2854 = !DILocation(line: 37, column: 15, scope: !2822)
!2855 = !{!"1473"}
!2856 = !DILocation(line: 37, column: 20, scope: !2822)
!2857 = !{!"1474"}
!2858 = !DILocation(line: 37, column: 9, scope: !2822)
!2859 = !{!"1475"}
!2860 = !DILocation(line: 37, column: 27, scope: !2822)
!2861 = !{!"1476"}
!2862 = !{!"1477"}
!2863 = !DILocation(line: 37, column: 2, scope: !2822)
!2864 = !{!"1478"}
!2865 = distinct !DISubprogram(name: "MUX", scope: !128, file: !128, line: 770, type: !129, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !2)
!2866 = !DILocalVariable(name: "ctl", arg: 1, scope: !2865, file: !128, line: 770, type: !10)
!2867 = !DILocation(line: 0, scope: !2865)
!2868 = !{!"1479"}
!2869 = !DILocalVariable(name: "x", arg: 2, scope: !2865, file: !128, line: 770, type: !10)
!2870 = !{!"1480"}
!2871 = !DILocalVariable(name: "y", arg: 3, scope: !2865, file: !128, line: 770, type: !10)
!2872 = !{!"1481"}
!2873 = !DILocation(line: 772, column: 14, scope: !2865)
!2874 = !{!"1482"}
!2875 = !DILocation(line: 772, column: 24, scope: !2865)
!2876 = !{!"1483"}
!2877 = !DILocation(line: 772, column: 19, scope: !2865)
!2878 = !{!"1484"}
!2879 = !DILocation(line: 772, column: 11, scope: !2865)
!2880 = !{!"1485"}
!2881 = !DILocation(line: 772, column: 2, scope: !2865)
!2882 = !{!"1486"}
!2883 = distinct !DISubprogram(name: "br_i15_reduce", scope: !43, file: !43, line: 29, type: !2154, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !2)
!2884 = !DILocalVariable(name: "x", arg: 1, scope: !2883, file: !43, line: 29, type: !338)
!2885 = !DILocation(line: 0, scope: !2883)
!2886 = !{!"1487"}
!2887 = !DILocalVariable(name: "a", arg: 2, scope: !2883, file: !43, line: 29, type: !342)
!2888 = !{!"1488"}
!2889 = !DILocalVariable(name: "m", arg: 3, scope: !2883, file: !43, line: 29, type: !342)
!2890 = !{!"1489"}
!2891 = !DILocation(line: 34, column: 13, scope: !2883)
!2892 = !{!"1490"}
!2893 = !{!"1491"}
!2894 = !{!"1492"}
!2895 = !DILocalVariable(name: "m_bitlen", scope: !2883, file: !43, line: 31, type: !10)
!2896 = !{!"1493"}
!2897 = !DILocation(line: 35, column: 19, scope: !2883)
!2898 = !{!"1494"}
!2899 = !DILocation(line: 35, column: 25, scope: !2883)
!2900 = !{!"1495"}
!2901 = !DILocation(line: 35, column: 9, scope: !2883)
!2902 = !{!"1496"}
!2903 = !DILocalVariable(name: "mlen", scope: !2883, file: !43, line: 32, type: !31)
!2904 = !{!"1497"}
!2905 = !DILocation(line: 37, column: 9, scope: !2883)
!2906 = !{!"1498"}
!2907 = !DILocation(line: 37, column: 2, scope: !2883)
!2908 = !{!"1499"}
!2909 = !DILocation(line: 37, column: 7, scope: !2883)
!2910 = !{!"1500"}
!2911 = !DILocation(line: 38, column: 15, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2883, file: !43, line: 38, column: 6)
!2913 = !{!"1501"}
!2914 = !DILocation(line: 38, column: 6, scope: !2883)
!2915 = !{!"1502"}
!2916 = !DILocation(line: 39, column: 3, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2912, file: !43, line: 38, column: 21)
!2918 = !{!"1503"}
!2919 = !DILocation(line: 46, column: 13, scope: !2883)
!2920 = !{!"1504"}
!2921 = !{!"1505"}
!2922 = !{!"1506"}
!2923 = !DILocalVariable(name: "a_bitlen", scope: !2883, file: !43, line: 31, type: !10)
!2924 = !{!"1507"}
!2925 = !DILocation(line: 47, column: 19, scope: !2883)
!2926 = !{!"1508"}
!2927 = !DILocation(line: 47, column: 25, scope: !2883)
!2928 = !{!"1509"}
!2929 = !DILocation(line: 47, column: 9, scope: !2883)
!2930 = !{!"1510"}
!2931 = !DILocalVariable(name: "alen", scope: !2883, file: !43, line: 32, type: !31)
!2932 = !{!"1511"}
!2933 = !DILocation(line: 48, column: 15, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2883, file: !43, line: 48, column: 6)
!2935 = !{!"1512"}
!2936 = !DILocation(line: 48, column: 6, scope: !2883)
!2937 = !{!"1513"}
!2938 = !DILocation(line: 49, column: 12, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !43, line: 48, column: 27)
!2940 = !{!"1514"}
!2941 = !DILocation(line: 49, column: 3, scope: !2939)
!2942 = !{!"1515"}
!2943 = !DILocation(line: 49, column: 19, scope: !2939)
!2944 = !{!"1516"}
!2945 = !{!"1517"}
!2946 = !DILocation(line: 49, column: 29, scope: !2939)
!2947 = !{!"1518"}
!2948 = !{!"1519"}
!2949 = !DILocalVariable(name: "u", scope: !2883, file: !43, line: 32, type: !31)
!2950 = !{!"1520"}
!2951 = !DILocation(line: 50, column: 8, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2939, file: !43, line: 50, column: 3)
!2953 = !{!"1521"}
!2954 = !DILocation(line: 0, scope: !2952)
!2955 = !{!"1522"}
!2956 = !{!"1523"}
!2957 = !DILocation(line: 50, column: 20, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2952, file: !43, line: 50, column: 3)
!2959 = !{!"1524"}
!2960 = !DILocation(line: 50, column: 3, scope: !2952)
!2961 = !{!"1525"}
!2962 = !DILocation(line: 51, column: 8, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2958, file: !43, line: 50, column: 34)
!2964 = !{!"1526"}
!2965 = !DILocation(line: 51, column: 4, scope: !2963)
!2966 = !{!"1527"}
!2967 = !DILocation(line: 51, column: 13, scope: !2963)
!2968 = !{!"1528"}
!2969 = !DILocation(line: 52, column: 3, scope: !2963)
!2970 = !{!"1529"}
!2971 = !DILocation(line: 50, column: 30, scope: !2958)
!2972 = !{!"1530"}
!2973 = !{!"1531"}
!2974 = !DILocation(line: 50, column: 3, scope: !2958)
!2975 = distinct !{!2975, !2960, !2976, !123}
!2976 = !DILocation(line: 52, column: 3, scope: !2952)
!2977 = !{!"1532"}
!2978 = !DILocation(line: 53, column: 3, scope: !2939)
!2979 = !{!"1533"}
!2980 = !DILocation(line: 61, column: 11, scope: !2883)
!2981 = !{!"1534"}
!2982 = !DILocation(line: 61, column: 2, scope: !2883)
!2983 = !{!"1535"}
!2984 = !DILocation(line: 61, column: 18, scope: !2883)
!2985 = !{!"1536"}
!2986 = !DILocation(line: 61, column: 30, scope: !2883)
!2987 = !{!"1537"}
!2988 = !DILocation(line: 61, column: 22, scope: !2883)
!2989 = !{!"1538"}
!2990 = !{!"1539"}
!2991 = !DILocation(line: 61, column: 45, scope: !2883)
!2992 = !{!"1540"}
!2993 = !DILocation(line: 61, column: 50, scope: !2883)
!2994 = !{!"1541"}
!2995 = !{!"1542"}
!2996 = !{!"0110"}
!2997 = !DILocation(line: 62, column: 2, scope: !2883)
!2998 = !{!"1543"}
!2999 = !DILocation(line: 62, column: 10, scope: !2883)
!3000 = !{!"1544"}
!3001 = !DILocation(line: 63, column: 13, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2883, file: !43, line: 63, column: 2)
!3003 = !{!"1545"}
!3004 = !DILocation(line: 63, column: 20, scope: !3002)
!3005 = !{!"1546"}
!3006 = !{!"1547"}
!3007 = !DILocation(line: 63, column: 7, scope: !3002)
!3008 = !{!"1548"}
!3009 = !DILocation(line: 0, scope: !3002)
!3010 = !{!"1549"}
!3011 = !{!"1550"}
!3012 = !DILocation(line: 63, column: 30, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3002, file: !43, line: 63, column: 2)
!3014 = !{!"1551"}
!3015 = !DILocation(line: 63, column: 2, scope: !3002)
!3016 = !{!"1552"}
!3017 = !DILocation(line: 64, column: 26, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3013, file: !43, line: 63, column: 41)
!3019 = !{!"1553"}
!3020 = !{!"1554"}
!3021 = !DILocation(line: 64, column: 3, scope: !3018)
!3022 = !{!"1555"}
!3023 = !DILocation(line: 65, column: 2, scope: !3018)
!3024 = !{!"1556"}
!3025 = !DILocation(line: 63, column: 37, scope: !3013)
!3026 = !{!"1557"}
!3027 = !{!"1558"}
!3028 = !DILocation(line: 63, column: 2, scope: !3013)
!3029 = distinct !{!3029, !3015, !3030, !123}
!3030 = !DILocation(line: 65, column: 2, scope: !3002)
!3031 = !{!"1559"}
!3032 = !DILocation(line: 66, column: 1, scope: !2883)
!3033 = !{!"1560"}
!3034 = distinct !DISubprogram(name: "br_i15_rshift", scope: !45, file: !45, line: 29, type: !3035, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !2)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !338, !673}
!3037 = !DILocalVariable(name: "x", arg: 1, scope: !3034, file: !45, line: 29, type: !338)
!3038 = !DILocation(line: 0, scope: !3034)
!3039 = !{!"1561"}
!3040 = !DILocalVariable(name: "count", arg: 2, scope: !3034, file: !45, line: 29, type: !673)
!3041 = !{!"1562"}
!3042 = !DILocation(line: 34, column: 9, scope: !3034)
!3043 = !{!"1563"}
!3044 = !{!"1564"}
!3045 = !{!"1565"}
!3046 = !DILocation(line: 34, column: 14, scope: !3034)
!3047 = !{!"1566"}
!3048 = !DILocation(line: 34, column: 20, scope: !3034)
!3049 = !{!"1567"}
!3050 = !DILocation(line: 34, column: 8, scope: !3034)
!3051 = !{!"1568"}
!3052 = !DILocalVariable(name: "len", scope: !3034, file: !45, line: 31, type: !31)
!3053 = !{!"1569"}
!3054 = !DILocation(line: 35, column: 10, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3034, file: !45, line: 35, column: 6)
!3056 = !{!"1570"}
!3057 = !DILocation(line: 35, column: 6, scope: !3034)
!3058 = !{!"1571"}
!3059 = !DILocation(line: 36, column: 3, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3055, file: !45, line: 35, column: 16)
!3061 = !{!"1572"}
!3062 = !DILocation(line: 38, column: 6, scope: !3034)
!3063 = !{!"1573"}
!3064 = !{!"1574"}
!3065 = !{!"1575"}
!3066 = !DILocation(line: 38, column: 11, scope: !3034)
!3067 = !{!"1576"}
!3068 = !DILocalVariable(name: "r", scope: !3034, file: !45, line: 32, type: !14)
!3069 = !{!"1577"}
!3070 = !DILocalVariable(name: "u", scope: !3034, file: !45, line: 31, type: !31)
!3071 = !{!"1578"}
!3072 = !DILocation(line: 39, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3034, file: !45, line: 39, column: 2)
!3074 = !{!"1579"}
!3075 = !DILocation(line: 0, scope: !3073)
!3076 = !{!"1580"}
!3077 = !{!"1581"}
!3078 = !{!"1582"}
!3079 = !{!"1583"}
!3080 = !DILocation(line: 39, column: 16, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3073, file: !45, line: 39, column: 2)
!3082 = !{!"1584"}
!3083 = !DILocation(line: 39, column: 2, scope: !3073)
!3084 = !{!"1585"}
!3085 = !DILocation(line: 42, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !45, line: 39, column: 30)
!3087 = !{!"1586"}
!3088 = !{!"1587"}
!3089 = !{!"1588"}
!3090 = !DILocalVariable(name: "w", scope: !3086, file: !45, line: 40, type: !14)
!3091 = !DILocation(line: 0, scope: !3086)
!3092 = !{!"1589"}
!3093 = !DILocation(line: 43, column: 25, scope: !3086)
!3094 = !{!"1590"}
!3095 = !DILocation(line: 43, column: 18, scope: !3086)
!3096 = !{!"1591"}
!3097 = !DILocation(line: 43, column: 35, scope: !3086)
!3098 = !{!"1592"}
!3099 = !DILocation(line: 43, column: 40, scope: !3086)
!3100 = !{!"1593"}
!3101 = !DILocation(line: 43, column: 14, scope: !3086)
!3102 = !{!"1594"}
!3103 = !DILocation(line: 43, column: 7, scope: !3086)
!3104 = !{!"1595"}
!3105 = !DILocation(line: 43, column: 3, scope: !3086)
!3106 = !{!"1596"}
!3107 = !DILocation(line: 43, column: 12, scope: !3086)
!3108 = !{!"1597"}
!3109 = !DILocation(line: 44, column: 9, scope: !3086)
!3110 = !{!"1598"}
!3111 = !{!"1599"}
!3112 = !DILocation(line: 45, column: 2, scope: !3086)
!3113 = !{!"1600"}
!3114 = !DILocation(line: 39, column: 26, scope: !3081)
!3115 = !{!"1601"}
!3116 = !{!"1602"}
!3117 = !DILocation(line: 39, column: 2, scope: !3081)
!3118 = distinct !{!3118, !3083, !3119, !123}
!3119 = !DILocation(line: 45, column: 2, scope: !3073)
!3120 = !{!"1603"}
!3121 = !DILocation(line: 46, column: 11, scope: !3034)
!3122 = !{!"1604"}
!3123 = !DILocation(line: 46, column: 2, scope: !3034)
!3124 = !{!"1605"}
!3125 = !DILocation(line: 46, column: 9, scope: !3034)
!3126 = !{!"1606"}
!3127 = !DILocation(line: 47, column: 1, scope: !3034)
!3128 = !{!"1607"}
!3129 = !{!"1608"}
!3130 = distinct !DISubprogram(name: "br_i15_sub", scope: !47, file: !47, line: 29, type: !336, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !2)
!3131 = !DILocalVariable(name: "a", arg: 1, scope: !3130, file: !47, line: 29, type: !338)
!3132 = !DILocation(line: 0, scope: !3130)
!3133 = !{!"1609"}
!3134 = !DILocalVariable(name: "b", arg: 2, scope: !3130, file: !47, line: 29, type: !342)
!3135 = !{!"1610"}
!3136 = !DILocalVariable(name: "ctl", arg: 3, scope: !3130, file: !47, line: 29, type: !10)
!3137 = !{!"1611"}
!3138 = !DILocalVariable(name: "cc", scope: !3130, file: !47, line: 31, type: !10)
!3139 = !{!"1612"}
!3140 = !DILocation(line: 35, column: 7, scope: !3130)
!3141 = !{!"1613"}
!3142 = !{!"1614"}
!3143 = !{!"1615"}
!3144 = !DILocation(line: 35, column: 12, scope: !3130)
!3145 = !{!"1616"}
!3146 = !DILocation(line: 35, column: 18, scope: !3130)
!3147 = !{!"1617"}
!3148 = !DILocation(line: 35, column: 6, scope: !3130)
!3149 = !{!"1618"}
!3150 = !DILocalVariable(name: "m", scope: !3130, file: !47, line: 32, type: !31)
!3151 = !{!"1619"}
!3152 = !DILocalVariable(name: "u", scope: !3130, file: !47, line: 32, type: !31)
!3153 = !{!"1620"}
!3154 = !DILocation(line: 36, column: 7, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3130, file: !47, line: 36, column: 2)
!3156 = !{!"1621"}
!3157 = !{!"1622"}
!3158 = !DILocation(line: 0, scope: !3155)
!3159 = !{!"1623"}
!3160 = !{!"1624"}
!3161 = !{!"1625"}
!3162 = !DILocation(line: 36, column: 16, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3155, file: !47, line: 36, column: 2)
!3164 = !{!"1626"}
!3165 = !DILocation(line: 36, column: 2, scope: !3155)
!3166 = !{!"1627"}
!3167 = !DILocation(line: 39, column: 8, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3163, file: !47, line: 36, column: 27)
!3169 = !{!"1628"}
!3170 = !{!"1629"}
!3171 = !{!"1630"}
!3172 = !DILocalVariable(name: "aw", scope: !3168, file: !47, line: 37, type: !10)
!3173 = !DILocation(line: 0, scope: !3168)
!3174 = !{!"1631"}
!3175 = !DILocation(line: 40, column: 8, scope: !3168)
!3176 = !{!"1632"}
!3177 = !{!"1633"}
!3178 = !{!"1634"}
!3179 = !DILocalVariable(name: "bw", scope: !3168, file: !47, line: 37, type: !10)
!3180 = !{!"1635"}
!3181 = !DILocation(line: 41, column: 12, scope: !3168)
!3182 = !{!"1636"}
!3183 = !DILocation(line: 41, column: 17, scope: !3168)
!3184 = !{!"1637"}
!3185 = !DILocalVariable(name: "naw", scope: !3168, file: !47, line: 37, type: !10)
!3186 = !{!"1638"}
!3187 = !DILocation(line: 42, column: 12, scope: !3168)
!3188 = !{!"1639"}
!3189 = !{!"1640"}
!3190 = !DILocation(line: 43, column: 23, scope: !3168)
!3191 = !{!"1641"}
!3192 = !DILocation(line: 43, column: 10, scope: !3168)
!3193 = !{!"1642"}
!3194 = !{!"1643"}
!3195 = !DILocation(line: 43, column: 3, scope: !3168)
!3196 = !{!"1644"}
!3197 = !DILocation(line: 43, column: 8, scope: !3168)
!3198 = !{!"1645"}
!3199 = !DILocation(line: 44, column: 2, scope: !3168)
!3200 = !{!"1646"}
!3201 = !DILocation(line: 36, column: 23, scope: !3163)
!3202 = !{!"1647"}
!3203 = !{!"1648"}
!3204 = !DILocation(line: 36, column: 2, scope: !3163)
!3205 = distinct !{!3205, !3165, !3206, !123}
!3206 = !DILocation(line: 44, column: 2, scope: !3155)
!3207 = !{!"1649"}
!3208 = !DILocation(line: 45, column: 2, scope: !3130)
!3209 = !{!"1650"}
!3210 = distinct !DISubprogram(name: "MUX", scope: !128, file: !128, line: 770, type: !129, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !46, retainedNodes: !2)
!3211 = !DILocalVariable(name: "ctl", arg: 1, scope: !3210, file: !128, line: 770, type: !10)
!3212 = !DILocation(line: 0, scope: !3210)
!3213 = !{!"1651"}
!3214 = !DILocalVariable(name: "x", arg: 2, scope: !3210, file: !128, line: 770, type: !10)
!3215 = !{!"1652"}
!3216 = !DILocalVariable(name: "y", arg: 3, scope: !3210, file: !128, line: 770, type: !10)
!3217 = !{!"1653"}
!3218 = !DILocation(line: 772, column: 14, scope: !3210)
!3219 = !{!"1654"}
!3220 = !DILocation(line: 772, column: 24, scope: !3210)
!3221 = !{!"1655"}
!3222 = !DILocation(line: 772, column: 19, scope: !3210)
!3223 = !{!"1656"}
!3224 = !DILocation(line: 772, column: 11, scope: !3210)
!3225 = !{!"1657"}
!3226 = !DILocation(line: 772, column: 2, scope: !3210)
!3227 = !{!"1658"}
!3228 = distinct !DISubprogram(name: "br_i15_to_monty", scope: !49, file: !49, line: 29, type: !3229, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !2)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !338, !342}
!3231 = !DILocalVariable(name: "x", arg: 1, scope: !3228, file: !49, line: 29, type: !338)
!3232 = !DILocation(line: 0, scope: !3228)
!3233 = !{!"1659"}
!3234 = !DILocalVariable(name: "m", arg: 2, scope: !3228, file: !49, line: 29, type: !342)
!3235 = !{!"1660"}
!3236 = !DILocation(line: 33, column: 12, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3228, file: !49, line: 33, column: 2)
!3238 = !{!"1661"}
!3239 = !{!"1662"}
!3240 = !{!"1663"}
!3241 = !DILocation(line: 33, column: 17, scope: !3237)
!3242 = !{!"1664"}
!3243 = !DILocation(line: 33, column: 23, scope: !3237)
!3244 = !{!"1665"}
!3245 = !DILocalVariable(name: "k", scope: !3228, file: !49, line: 31, type: !14)
!3246 = !{!"1666"}
!3247 = !DILocation(line: 33, column: 7, scope: !3237)
!3248 = !{!"1667"}
!3249 = !DILocation(line: 0, scope: !3237)
!3250 = !{!"1668"}
!3251 = !{!"1669"}
!3252 = !DILocation(line: 33, column: 31, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3237, file: !49, line: 33, column: 2)
!3254 = !{!"1670"}
!3255 = !DILocation(line: 33, column: 2, scope: !3237)
!3256 = !{!"1671"}
!3257 = !DILocation(line: 34, column: 3, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3253, file: !49, line: 33, column: 42)
!3259 = !{!"1672"}
!3260 = !DILocation(line: 35, column: 2, scope: !3258)
!3261 = !{!"1673"}
!3262 = !DILocation(line: 33, column: 38, scope: !3253)
!3263 = !{!"1674"}
!3264 = !{!"1675"}
!3265 = !DILocation(line: 33, column: 2, scope: !3253)
!3266 = distinct !{!3266, !3255, !3267, !123}
!3267 = !DILocation(line: 35, column: 2, scope: !3237)
!3268 = !{!"1676"}
!3269 = !DILocation(line: 36, column: 1, scope: !3228)
!3270 = !{!"1677"}
!3271 = distinct !DISubprogram(name: "br_rsa_i15_private", scope: !51, file: !51, line: 32, type: !3272, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !2)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!10, !56, !3274}
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3276)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_rsa_private_key", file: !154, line: 205, baseType: !3277)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 182, size: 704, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "n_bitlen", scope: !3277, file: !154, line: 184, baseType: !10, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3277, file: !154, line: 186, baseType: !56, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !3277, file: !154, line: 188, baseType: !31, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3277, file: !154, line: 190, baseType: !56, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "qlen", scope: !3277, file: !154, line: 192, baseType: !31, size: 64, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !3277, file: !154, line: 194, baseType: !56, size: 64, offset: 320)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "dplen", scope: !3277, file: !154, line: 196, baseType: !31, size: 64, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !3277, file: !154, line: 198, baseType: !56, size: 64, offset: 448)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "dqlen", scope: !3277, file: !154, line: 200, baseType: !31, size: 64, offset: 512)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "iq", scope: !3277, file: !154, line: 202, baseType: !56, size: 64, offset: 576)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "iqlen", scope: !3277, file: !154, line: 204, baseType: !31, size: 64, offset: 640)
!3290 = !{!"1678"}
!3291 = !DILocalVariable(name: "x", arg: 1, scope: !3271, file: !51, line: 32, type: !56)
!3292 = !DILocation(line: 0, scope: !3271)
!3293 = !{!"1679"}
!3294 = !DILocalVariable(name: "sk", arg: 2, scope: !3271, file: !51, line: 32, type: !3274)
!3295 = !{!"1680"}
!3296 = !DILocalVariable(name: "tmp", scope: !3271, file: !51, line: 39, type: !3297)
!3297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 18064, elements: !3298)
!3298 = !{!3299}
!3299 = !DISubrange(count: 1129)
!3300 = !DILocation(line: 39, column: 11, scope: !3271)
!3301 = !{!"1681"}
!3302 = !DILocation(line: 49, column: 10, scope: !3271)
!3303 = !{!"1682"}
!3304 = !{!"1683"}
!3305 = !DILocalVariable(name: "p", scope: !3271, file: !51, line: 34, type: !78)
!3306 = !{!"1684"}
!3307 = !DILocation(line: 50, column: 13, scope: !3271)
!3308 = !{!"1685"}
!3309 = !{!"1686"}
!3310 = !DILocalVariable(name: "plen", scope: !3271, file: !51, line: 35, type: !31)
!3311 = !{!"1687"}
!3312 = !DILocation(line: 51, column: 2, scope: !3271)
!3313 = !{!"1688"}
!3314 = !{!"1689"}
!3315 = !{!"1690"}
!3316 = !{!"1691"}
!3317 = !{!"1692"}
!3318 = !DILocation(line: 51, column: 14, scope: !3271)
!3319 = !{!"1693"}
!3320 = !DILocation(line: 51, column: 18, scope: !3271)
!3321 = !{!"1694"}
!3322 = !DILocation(line: 51, column: 21, scope: !3271)
!3323 = !{!"1695"}
!3324 = !{!"1696"}
!3325 = !DILocation(line: 51, column: 24, scope: !3271)
!3326 = !{!"1697"}
!3327 = !{!"1698"}
!3328 = !{!"1699"}
!3329 = !{!"1700"}
!3330 = !DILocation(line: 52, column: 5, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3271, file: !51, line: 51, column: 30)
!3332 = !{!"1701"}
!3333 = !{!"1702"}
!3334 = !DILocation(line: 53, column: 8, scope: !3331)
!3335 = !{!"1703"}
!3336 = !{!"1704"}
!3337 = distinct !{!3337, !3312, !3338, !123}
!3338 = !DILocation(line: 54, column: 2, scope: !3271)
!3339 = !{!"1705"}
!3340 = !DILocation(line: 55, column: 10, scope: !3271)
!3341 = !{!"1706"}
!3342 = !{!"1707"}
!3343 = !DILocalVariable(name: "q", scope: !3271, file: !51, line: 34, type: !78)
!3344 = !{!"1708"}
!3345 = !DILocation(line: 56, column: 13, scope: !3271)
!3346 = !{!"1709"}
!3347 = !{!"1710"}
!3348 = !DILocalVariable(name: "qlen", scope: !3271, file: !51, line: 35, type: !31)
!3349 = !{!"1711"}
!3350 = !DILocation(line: 57, column: 2, scope: !3271)
!3351 = !{!"1712"}
!3352 = !{!"1713"}
!3353 = !{!"1714"}
!3354 = !{!"1715"}
!3355 = !{!"1716"}
!3356 = !DILocation(line: 57, column: 14, scope: !3271)
!3357 = !{!"1717"}
!3358 = !DILocation(line: 57, column: 18, scope: !3271)
!3359 = !{!"1718"}
!3360 = !DILocation(line: 57, column: 21, scope: !3271)
!3361 = !{!"1719"}
!3362 = !{!"1720"}
!3363 = !DILocation(line: 57, column: 24, scope: !3271)
!3364 = !{!"1721"}
!3365 = !{!"1722"}
!3366 = !{!"1723"}
!3367 = !{!"1724"}
!3368 = !DILocation(line: 58, column: 5, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3271, file: !51, line: 57, column: 30)
!3370 = !{!"1725"}
!3371 = !{!"1726"}
!3372 = !DILocation(line: 59, column: 8, scope: !3369)
!3373 = !{!"1727"}
!3374 = !{!"1728"}
!3375 = distinct !{!3375, !3350, !3376, !123}
!3376 = !DILocation(line: 60, column: 2, scope: !3271)
!3377 = !{!"1729"}
!3378 = !DILocation(line: 65, column: 18, scope: !3271)
!3379 = !{!"1730"}
!3380 = !DILocation(line: 65, column: 13, scope: !3271)
!3381 = !{!"1731"}
!3382 = !{!"1732"}
!3383 = !{!"1733"}
!3384 = !{!"1734"}
!3385 = !DILocation(line: 65, column: 40, scope: !3271)
!3386 = !{!"1735"}
!3387 = !DILocalVariable(name: "z", scope: !3271, file: !51, line: 40, type: !53)
!3388 = !{!"1736"}
!3389 = !DILocalVariable(name: "fwlen", scope: !3271, file: !51, line: 36, type: !31)
!3390 = !{!"1737"}
!3391 = !DILocation(line: 67, column: 2, scope: !3271)
!3392 = !{!"1738"}
!3393 = !{!"1739"}
!3394 = !{!"1740"}
!3395 = !{!"1741"}
!3396 = !{!"1742"}
!3397 = !DILocation(line: 67, column: 11, scope: !3271)
!3398 = !{!"1743"}
!3399 = !{!"1744"}
!3400 = !DILocation(line: 68, column: 5, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3271, file: !51, line: 67, column: 16)
!3402 = !{!"1745"}
!3403 = !{!"1746"}
!3404 = !DILocation(line: 69, column: 9, scope: !3401)
!3405 = !{!"1747"}
!3406 = !{!"1748"}
!3407 = distinct !{!3407, !3391, !3408, !123}
!3408 = !DILocation(line: 70, column: 2, scope: !3271)
!3409 = !{!"1749"}
!3410 = !DILocation(line: 74, column: 18, scope: !3271)
!3411 = !{!"1750"}
!3412 = !DILocation(line: 74, column: 8, scope: !3271)
!3413 = !{!"1751"}
!3414 = !{!"1752"}
!3415 = !DILocation(line: 79, column: 8, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3271, file: !51, line: 79, column: 6)
!3417 = !{!"1753"}
!3418 = !DILocation(line: 79, column: 16, scope: !3416)
!3419 = !{!"1754"}
!3420 = !DILocation(line: 79, column: 6, scope: !3271)
!3421 = !{!"1755"}
!3422 = !DILocation(line: 80, column: 3, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3416, file: !51, line: 79, column: 24)
!3424 = !{!"1756"}
!3425 = !DILocation(line: 86, column: 14, scope: !3271)
!3426 = !{!"1757"}
!3427 = !{!"1758"}
!3428 = !DILocation(line: 86, column: 23, scope: !3271)
!3429 = !{!"1759"}
!3430 = !DILocation(line: 86, column: 28, scope: !3271)
!3431 = !{!"1760"}
!3432 = !DILocation(line: 86, column: 9, scope: !3271)
!3433 = !{!"1761"}
!3434 = !DILocalVariable(name: "xlen", scope: !3271, file: !51, line: 38, type: !31)
!3435 = !{!"1762"}
!3436 = !DILocation(line: 91, column: 7, scope: !3271)
!3437 = !{!"1763"}
!3438 = !DILocalVariable(name: "mq", scope: !3271, file: !51, line: 41, type: !338)
!3439 = !{!"1764"}
!3440 = !DILocation(line: 92, column: 7, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3271, file: !51, line: 92, column: 6)
!3442 = !{!"1765"}
!3443 = !DILocation(line: 92, column: 21, scope: !3441)
!3444 = !{!"1766"}
!3445 = !DILocation(line: 92, column: 26, scope: !3441)
!3446 = !{!"1767"}
!3447 = !DILocation(line: 92, column: 6, scope: !3271)
!3448 = !{!"1768"}
!3449 = !DILocation(line: 93, column: 6, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3441, file: !51, line: 92, column: 32)
!3451 = !{!"1769"}
!3452 = !{!"1770"}
!3453 = !DILocation(line: 94, column: 2, scope: !3450)
!3454 = !{!"1771"}
!3455 = !{!"1772"}
!3456 = !{!"1773"}
!3457 = !DILocation(line: 99, column: 2, scope: !3271)
!3458 = !{!"1774"}
!3459 = !DILocation(line: 104, column: 10, scope: !3271)
!3460 = !{!"1775"}
!3461 = !DILocalVariable(name: "t1", scope: !3271, file: !51, line: 41, type: !338)
!3462 = !{!"1776"}
!3463 = !DILocation(line: 105, column: 2, scope: !3271)
!3464 = !{!"1777"}
!3465 = !DILocation(line: 112, column: 14, scope: !3271)
!3466 = !{!"1778"}
!3467 = !DILocation(line: 112, column: 10, scope: !3271)
!3468 = !{!"1779"}
!3469 = !DILocalVariable(name: "t2", scope: !3271, file: !51, line: 41, type: !338)
!3470 = !{!"1780"}
!3471 = !DILocation(line: 113, column: 18, scope: !3271)
!3472 = !{!"1781"}
!3473 = !{!"1782"}
!3474 = !DILocation(line: 113, column: 2, scope: !3271)
!3475 = !{!"1783"}
!3476 = !DILocation(line: 114, column: 2, scope: !3271)
!3477 = !{!"1784"}
!3478 = !DILocation(line: 125, column: 14, scope: !3271)
!3479 = !{!"1785"}
!3480 = !DILocation(line: 125, column: 10, scope: !3271)
!3481 = !{!"1786"}
!3482 = !DILocalVariable(name: "t3", scope: !3271, file: !51, line: 41, type: !338)
!3483 = !{!"1787"}
!3484 = !DILocation(line: 126, column: 16, scope: !3271)
!3485 = !{!"1788"}
!3486 = !DILocation(line: 126, column: 2, scope: !3271)
!3487 = !{!"1789"}
!3488 = !DILocalVariable(name: "u", scope: !3271, file: !51, line: 38, type: !31)
!3489 = !{!"1790"}
!3490 = !DILocalVariable(name: "r", scope: !3271, file: !51, line: 42, type: !10)
!3491 = !{!"1791"}
!3492 = !DILocation(line: 129, column: 2, scope: !3271)
!3493 = !{!"1792"}
!3494 = !{!"1793"}
!3495 = !{!"1794"}
!3496 = !{!"1795"}
!3497 = !{!"1796"}
!3498 = !DILocation(line: 129, column: 11, scope: !3271)
!3499 = !{!"1797"}
!3500 = !{!"1798"}
!3501 = !DILocation(line: 132, column: 5, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3271, file: !51, line: 129, column: 16)
!3503 = !{!"1799"}
!3504 = !{!"1800"}
!3505 = !DILocation(line: 133, column: 8, scope: !3502)
!3506 = !{!"1801"}
!3507 = !{!"1802"}
!3508 = !{!"1803"}
!3509 = !{!"1804"}
!3510 = !DILocalVariable(name: "wn", scope: !3502, file: !51, line: 130, type: !10)
!3511 = !DILocation(line: 0, scope: !3502)
!3512 = !{!"1805"}
!3513 = !DILocation(line: 134, column: 8, scope: !3502)
!3514 = !{!"1806"}
!3515 = !{!"1807"}
!3516 = !{!"1808"}
!3517 = !DILocalVariable(name: "wx", scope: !3502, file: !51, line: 130, type: !10)
!3518 = !{!"1809"}
!3519 = !DILocation(line: 135, column: 18, scope: !3502)
!3520 = !{!"1810"}
!3521 = !DILocation(line: 135, column: 12, scope: !3502)
!3522 = !{!"1811"}
!3523 = !DILocation(line: 135, column: 24, scope: !3502)
!3524 = !{!"1812"}
!3525 = !DILocation(line: 135, column: 30, scope: !3502)
!3526 = !{!"1813"}
!3527 = !{!"1814"}
!3528 = distinct !{!3528, !3492, !3529, !123}
!3529 = !DILocation(line: 136, column: 2, scope: !3271)
!3530 = !{!"1815"}
!3531 = !DILocation(line: 141, column: 14, scope: !3271)
!3532 = !{!"1816"}
!3533 = !DILocation(line: 141, column: 10, scope: !3271)
!3534 = !{!"1817"}
!3535 = !DILocalVariable(name: "mp", scope: !3271, file: !51, line: 41, type: !338)
!3536 = !{!"1818"}
!3537 = !DILocation(line: 142, column: 2, scope: !3271)
!3538 = !{!"1819"}
!3539 = !{!"1820"}
!3540 = !DILocation(line: 142, column: 24, scope: !3271)
!3541 = !{!"1821"}
!3542 = !{!"1822"}
!3543 = !DILocation(line: 147, column: 22, scope: !3271)
!3544 = !{!"1823"}
!3545 = !{!"1824"}
!3546 = !DILocation(line: 147, column: 8, scope: !3271)
!3547 = !{!"1825"}
!3548 = !DILocalVariable(name: "q0i", scope: !3271, file: !51, line: 37, type: !339)
!3549 = !{!"1826"}
!3550 = !DILocation(line: 148, column: 10, scope: !3271)
!3551 = !{!"1827"}
!3552 = !DILocalVariable(name: "s2", scope: !3271, file: !51, line: 41, type: !338)
!3553 = !{!"1828"}
!3554 = !DILocation(line: 149, column: 2, scope: !3271)
!3555 = !{!"1829"}
!3556 = !DILocation(line: 150, column: 33, scope: !3271)
!3557 = !{!"1830"}
!3558 = !{!"1831"}
!3559 = !DILocation(line: 150, column: 41, scope: !3271)
!3560 = !{!"1832"}
!3561 = !{!"1833"}
!3562 = !DILocation(line: 151, column: 10, scope: !3271)
!3563 = !{!"1834"}
!3564 = !DILocation(line: 151, column: 6, scope: !3271)
!3565 = !{!"1835"}
!3566 = !DILocation(line: 151, column: 28, scope: !3271)
!3567 = !{!"1836"}
!3568 = !DILocation(line: 151, column: 24, scope: !3271)
!3569 = !{!"1837"}
!3570 = !DILocation(line: 150, column: 7, scope: !3271)
!3571 = !{!"1838"}
!3572 = !DILocation(line: 150, column: 4, scope: !3271)
!3573 = !{!"1839"}
!3574 = !{!"1840"}
!3575 = !DILocation(line: 156, column: 22, scope: !3271)
!3576 = !{!"1841"}
!3577 = !{!"1842"}
!3578 = !DILocation(line: 156, column: 8, scope: !3271)
!3579 = !{!"1843"}
!3580 = !DILocalVariable(name: "p0i", scope: !3271, file: !51, line: 37, type: !339)
!3581 = !{!"1844"}
!3582 = !DILocation(line: 157, column: 14, scope: !3271)
!3583 = !{!"1845"}
!3584 = !DILocation(line: 157, column: 10, scope: !3271)
!3585 = !{!"1846"}
!3586 = !DILocalVariable(name: "s1", scope: !3271, file: !51, line: 41, type: !338)
!3587 = !{!"1847"}
!3588 = !DILocation(line: 158, column: 2, scope: !3271)
!3589 = !{!"1848"}
!3590 = !DILocation(line: 159, column: 33, scope: !3271)
!3591 = !{!"1849"}
!3592 = !{!"1850"}
!3593 = !DILocation(line: 159, column: 41, scope: !3271)
!3594 = !{!"1851"}
!3595 = !{!"1852"}
!3596 = !DILocation(line: 160, column: 10, scope: !3271)
!3597 = !{!"1853"}
!3598 = !DILocation(line: 160, column: 6, scope: !3271)
!3599 = !{!"1854"}
!3600 = !DILocation(line: 160, column: 28, scope: !3271)
!3601 = !{!"1855"}
!3602 = !DILocation(line: 160, column: 24, scope: !3271)
!3603 = !{!"1856"}
!3604 = !DILocation(line: 159, column: 7, scope: !3271)
!3605 = !{!"1857"}
!3606 = !DILocation(line: 159, column: 4, scope: !3271)
!3607 = !{!"1858"}
!3608 = !{!"1859"}
!3609 = !DILocation(line: 175, column: 14, scope: !3271)
!3610 = !{!"1860"}
!3611 = !DILocation(line: 175, column: 10, scope: !3271)
!3612 = !{!"1861"}
!3613 = !{!"1862"}
!3614 = !DILocation(line: 176, column: 14, scope: !3271)
!3615 = !{!"1863"}
!3616 = !DILocation(line: 176, column: 10, scope: !3271)
!3617 = !{!"1864"}
!3618 = !{!"1865"}
!3619 = !DILocation(line: 177, column: 2, scope: !3271)
!3620 = !{!"1866"}
!3621 = !DILocation(line: 178, column: 21, scope: !3271)
!3622 = !{!"1867"}
!3623 = !DILocation(line: 178, column: 2, scope: !3271)
!3624 = !{!"1868"}
!3625 = !DILocation(line: 179, column: 2, scope: !3271)
!3626 = !{!"1869"}
!3627 = !DILocation(line: 180, column: 31, scope: !3271)
!3628 = !{!"1870"}
!3629 = !{!"1871"}
!3630 = !DILocation(line: 180, column: 39, scope: !3271)
!3631 = !{!"1872"}
!3632 = !{!"1873"}
!3633 = !DILocation(line: 180, column: 2, scope: !3271)
!3634 = !{!"1874"}
!3635 = !DILocation(line: 181, column: 2, scope: !3271)
!3636 = !{!"1875"}
!3637 = !{!"1876"}
!3638 = !DILocation(line: 196, column: 2, scope: !3271)
!3639 = !{!"1877"}
!3640 = !DILocation(line: 202, column: 2, scope: !3271)
!3641 = !{!"1878"}
!3642 = !DILocation(line: 208, column: 9, scope: !3271)
!3643 = !{!"1879"}
!3644 = !DILocation(line: 208, column: 15, scope: !3271)
!3645 = !{!"1880"}
!3646 = !DILocation(line: 208, column: 13, scope: !3271)
!3647 = !{!"1881"}
!3648 = !DILocation(line: 208, column: 19, scope: !3271)
!3649 = !{!"1882"}
!3650 = !DILocation(line: 208, column: 2, scope: !3271)
!3651 = !{!"1883"}
!3652 = !{!"1884"}
!3653 = !DILocation(line: 209, column: 1, scope: !3271)
!3654 = !{!"1885"}
!3655 = distinct !DISubprogram(name: "br_i15_zero", scope: !128, file: !128, line: 1537, type: !955, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !50, retainedNodes: !2)
!3656 = !DILocalVariable(name: "x", arg: 1, scope: !3655, file: !128, line: 1537, type: !338)
!3657 = !DILocation(line: 0, scope: !3655)
!3658 = !{!"1886"}
!3659 = !DILocalVariable(name: "bit_len", arg: 2, scope: !3655, file: !128, line: 1537, type: !339)
!3660 = !{!"1887"}
!3661 = !DILocation(line: 1539, column: 5, scope: !3655)
!3662 = !{!"1888"}
!3663 = !{!"1889"}
!3664 = !DILocation(line: 1539, column: 8, scope: !3655)
!3665 = !{!"1890"}
!3666 = !DILocation(line: 1540, column: 2, scope: !3655)
!3667 = !{!"1891"}
!3668 = !DILocation(line: 1540, column: 17, scope: !3655)
!3669 = !{!"1892"}
!3670 = !DILocation(line: 1540, column: 25, scope: !3655)
!3671 = !{!"1893"}
!3672 = !DILocation(line: 1540, column: 31, scope: !3655)
!3673 = !{!"1894"}
!3674 = !DILocation(line: 1540, column: 15, scope: !3655)
!3675 = !{!"1895"}
!3676 = !DILocation(line: 1540, column: 37, scope: !3655)
!3677 = !{!"1896"}
!3678 = !{!"1897"}
!3679 = !DILocation(line: 1541, column: 1, scope: !3655)
!3680 = !{!"1898"}
