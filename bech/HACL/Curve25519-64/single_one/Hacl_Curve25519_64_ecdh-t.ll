; ModuleID = 'Hacl_Curve25519_64_ecdh-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@g25519 = internal constant <{ i8, [31 x i8] }> <{ i8 9, [31 x i8] zeroinitializer }>, align 16, !dbg !0, !psr.id !22

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_64_scalarmult(i8* %0, i8* %1, i8* %2) #0 !dbg !29 {
  %4 = alloca [8 x i64], align 16, !psr.id !33
  %5 = alloca [4 x i64], align 16, !psr.id !34
  call void @llvm.dbg.value(metadata i8* %0, metadata !35, metadata !DIExpression()), !dbg !36, !psr.id !37
  call void @llvm.dbg.value(metadata i8* %1, metadata !38, metadata !DIExpression()), !dbg !36, !psr.id !39
  call void @llvm.dbg.value(metadata i8* %2, metadata !40, metadata !DIExpression()), !dbg !36, !psr.id !41
  call void @llvm.dbg.declare(metadata [8 x i64]* %4, metadata !42, metadata !DIExpression()), !dbg !46, !psr.id !47
  %6 = bitcast [8 x i64]* %4 to i8*, !dbg !46, !psr.id !48
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 64, i1 false), !dbg !46, !psr.id !49
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !50, metadata !DIExpression()), !dbg !54, !psr.id !55
  %7 = bitcast [4 x i64]* %5 to i8*, !dbg !54, !psr.id !56
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false), !dbg !54, !psr.id !57
  br label %8, !dbg !58, !psr.id !59

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !60, metadata !DIExpression()), !dbg !62, !psr.id !63
  %9 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !64, !psr.id !66
  call void @llvm.dbg.value(metadata i64* %9, metadata !67, metadata !DIExpression()), !dbg !69, !psr.id !70
  %10 = mul i32 0, 8, !dbg !64, !psr.id !71
  %11 = zext i32 %10 to i64, !dbg !64, !psr.id !72
  %12 = getelementptr inbounds i8, i8* %2, i64 %11, !dbg !64, !psr.id !73
  call void @llvm.dbg.value(metadata i8* %12, metadata !74, metadata !DIExpression()), !dbg !69, !psr.id !75
  %13 = call i64 @load64(i8* %12), !dbg !64, !psr.id !76
  %14 = call i64 @__uint64_identity(i64 %13), !dbg !64, !psr.id !77
  call void @llvm.dbg.value(metadata i64 %14, metadata !78, metadata !DIExpression()), !dbg !69, !psr.id !79
  call void @llvm.dbg.value(metadata i64 %14, metadata !80, metadata !DIExpression()), !dbg !69, !psr.id !81
  call void @llvm.dbg.value(metadata i64 %14, metadata !82, metadata !DIExpression()), !dbg !69, !psr.id !83
  %15 = zext i32 0 to i64, !dbg !64, !psr.id !84
  %16 = getelementptr inbounds i64, i64* %9, i64 %15, !dbg !64, !psr.id !85
  store i64 %14, i64* %16, align 8, !dbg !64, !psr.id !86
  %17 = add i32 0, 1, !dbg !64, !psr.id !87
  call void @llvm.dbg.value(metadata i32 %17, metadata !60, metadata !DIExpression()), !dbg !62, !psr.id !88
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !89, !psr.id !91
  call void @llvm.dbg.value(metadata i64* %18, metadata !92, metadata !DIExpression()), !dbg !93, !psr.id !94
  %19 = mul i32 %17, 8, !dbg !89, !psr.id !95
  %20 = zext i32 %19 to i64, !dbg !89, !psr.id !96
  %21 = getelementptr inbounds i8, i8* %2, i64 %20, !dbg !89, !psr.id !97
  call void @llvm.dbg.value(metadata i8* %21, metadata !98, metadata !DIExpression()), !dbg !93, !psr.id !99
  %22 = call i64 @load64(i8* %21), !dbg !89, !psr.id !100
  %23 = call i64 @__uint64_identity(i64 %22), !dbg !89, !psr.id !101
  call void @llvm.dbg.value(metadata i64 %23, metadata !102, metadata !DIExpression()), !dbg !93, !psr.id !103
  call void @llvm.dbg.value(metadata i64 %23, metadata !104, metadata !DIExpression()), !dbg !93, !psr.id !105
  call void @llvm.dbg.value(metadata i64 %23, metadata !106, metadata !DIExpression()), !dbg !93, !psr.id !107
  %24 = zext i32 %17 to i64, !dbg !89, !psr.id !108
  %25 = getelementptr inbounds i64, i64* %18, i64 %24, !dbg !89, !psr.id !109
  store i64 %23, i64* %25, align 8, !dbg !89, !psr.id !110
  %26 = add i32 %17, 1, !dbg !89, !psr.id !111
  call void @llvm.dbg.value(metadata i32 %26, metadata !60, metadata !DIExpression()), !dbg !62, !psr.id !112
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !113, !psr.id !115
  call void @llvm.dbg.value(metadata i64* %27, metadata !116, metadata !DIExpression()), !dbg !117, !psr.id !118
  %28 = mul i32 %26, 8, !dbg !113, !psr.id !119
  %29 = zext i32 %28 to i64, !dbg !113, !psr.id !120
  %30 = getelementptr inbounds i8, i8* %2, i64 %29, !dbg !113, !psr.id !121
  call void @llvm.dbg.value(metadata i8* %30, metadata !122, metadata !DIExpression()), !dbg !117, !psr.id !123
  %31 = call i64 @load64(i8* %30), !dbg !113, !psr.id !124
  %32 = call i64 @__uint64_identity(i64 %31), !dbg !113, !psr.id !125
  call void @llvm.dbg.value(metadata i64 %32, metadata !126, metadata !DIExpression()), !dbg !117, !psr.id !127
  call void @llvm.dbg.value(metadata i64 %32, metadata !128, metadata !DIExpression()), !dbg !117, !psr.id !129
  call void @llvm.dbg.value(metadata i64 %32, metadata !130, metadata !DIExpression()), !dbg !117, !psr.id !131
  %33 = zext i32 %26 to i64, !dbg !113, !psr.id !132
  %34 = getelementptr inbounds i64, i64* %27, i64 %33, !dbg !113, !psr.id !133
  store i64 %32, i64* %34, align 8, !dbg !113, !psr.id !134
  %35 = add i32 %26, 1, !dbg !113, !psr.id !135
  call void @llvm.dbg.value(metadata i32 %35, metadata !60, metadata !DIExpression()), !dbg !62, !psr.id !136
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !137, !psr.id !139
  call void @llvm.dbg.value(metadata i64* %36, metadata !140, metadata !DIExpression()), !dbg !141, !psr.id !142
  %37 = mul i32 %35, 8, !dbg !137, !psr.id !143
  %38 = zext i32 %37 to i64, !dbg !137, !psr.id !144
  %39 = getelementptr inbounds i8, i8* %2, i64 %38, !dbg !137, !psr.id !145
  call void @llvm.dbg.value(metadata i8* %39, metadata !146, metadata !DIExpression()), !dbg !141, !psr.id !147
  %40 = call i64 @load64(i8* %39), !dbg !137, !psr.id !148
  %41 = call i64 @__uint64_identity(i64 %40), !dbg !137, !psr.id !149
  call void @llvm.dbg.value(metadata i64 %41, metadata !150, metadata !DIExpression()), !dbg !141, !psr.id !151
  call void @llvm.dbg.value(metadata i64 %41, metadata !152, metadata !DIExpression()), !dbg !141, !psr.id !153
  call void @llvm.dbg.value(metadata i64 %41, metadata !154, metadata !DIExpression()), !dbg !141, !psr.id !155
  %42 = zext i32 %35 to i64, !dbg !137, !psr.id !156
  %43 = getelementptr inbounds i64, i64* %36, i64 %42, !dbg !137, !psr.id !157
  store i64 %41, i64* %43, align 8, !dbg !137, !psr.id !158
  %44 = add i32 %35, 1, !dbg !137, !psr.id !159
  call void @llvm.dbg.value(metadata i32 %44, metadata !60, metadata !DIExpression()), !dbg !62, !psr.id !160
  br label %45, !dbg !161, !psr.id !162

45:                                               ; preds = %8
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !163, !psr.id !164
  %47 = load i64, i64* %46, align 8, !dbg !163, !psr.id !165
  call void @llvm.dbg.value(metadata i64 %47, metadata !166, metadata !DIExpression()), !dbg !36, !psr.id !167
  %48 = and i64 %47, 9223372036854775807, !dbg !168, !psr.id !169
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !170, !psr.id !171
  store i64 %48, i64* %49, align 8, !dbg !172, !psr.id !173
  %50 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !174, !psr.id !175
  call void @llvm.dbg.value(metadata i64* %50, metadata !176, metadata !DIExpression()), !dbg !36, !psr.id !177
  %51 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !178, !psr.id !179
  %52 = getelementptr inbounds i64, i64* %51, i64 4, !dbg !180, !psr.id !181
  call void @llvm.dbg.value(metadata i64* %52, metadata !182, metadata !DIExpression()), !dbg !36, !psr.id !183
  %53 = getelementptr inbounds i64, i64* %52, i64 0, !dbg !184, !psr.id !185
  store i64 1, i64* %53, align 8, !dbg !186, !psr.id !187
  %54 = getelementptr inbounds i64, i64* %52, i64 1, !dbg !188, !psr.id !189
  store i64 0, i64* %54, align 8, !dbg !190, !psr.id !191
  %55 = getelementptr inbounds i64, i64* %52, i64 2, !dbg !192, !psr.id !193
  store i64 0, i64* %55, align 8, !dbg !194, !psr.id !195
  %56 = getelementptr inbounds i64, i64* %52, i64 3, !dbg !196, !psr.id !197
  store i64 0, i64* %56, align 8, !dbg !198, !psr.id !199
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0, !dbg !200, !psr.id !201
  %58 = load i64, i64* %57, align 16, !dbg !200, !psr.id !202
  %59 = getelementptr inbounds i64, i64* %50, i64 0, !dbg !203, !psr.id !204
  store i64 %58, i64* %59, align 8, !dbg !205, !psr.id !206
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1, !dbg !207, !psr.id !208
  %61 = load i64, i64* %60, align 8, !dbg !207, !psr.id !209
  %62 = getelementptr inbounds i64, i64* %50, i64 1, !dbg !210, !psr.id !211
  store i64 %61, i64* %62, align 8, !dbg !212, !psr.id !213
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2, !dbg !214, !psr.id !215
  %64 = load i64, i64* %63, align 16, !dbg !214, !psr.id !216
  %65 = getelementptr inbounds i64, i64* %50, i64 2, !dbg !217, !psr.id !218
  store i64 %64, i64* %65, align 8, !dbg !219, !psr.id !220
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3, !dbg !221, !psr.id !222
  %67 = load i64, i64* %66, align 8, !dbg !221, !psr.id !223
  %68 = getelementptr inbounds i64, i64* %50, i64 3, !dbg !224, !psr.id !225
  store i64 %67, i64* %68, align 8, !dbg !226, !psr.id !227
  %69 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !228, !psr.id !229
  %70 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !230, !psr.id !231
  call void @montgomery_ladder(i64* %69, i8* %1, i64* %70), !dbg !232, !psr.id !233
  %71 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !234, !psr.id !235
  call void @encode_point(i8* %0, i64* %71), !dbg !236, !psr.id !237
  ret void, !dbg !238, !psr.id !239
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @load64(i8* %0) #0 !dbg !240 {
  %2 = alloca i64, align 8, !psr.id !244
  call void @llvm.dbg.value(metadata i8* %0, metadata !245, metadata !DIExpression()), !dbg !246, !psr.id !247
  call void @llvm.dbg.declare(metadata i64* %2, metadata !248, metadata !DIExpression()), !dbg !249, !psr.id !250
  %3 = bitcast i64* %2 to i8*, !dbg !251, !psr.id !252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 1 %0, i64 8, i1 false), !dbg !251, !psr.id !253
  %4 = load i64, i64* %2, align 8, !dbg !254, !psr.id !255
  ret i64 %4, !dbg !256, !psr.id !257
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @__uint64_identity(i64 %0) #0 !dbg !258 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !262, metadata !DIExpression()), !dbg !263, !psr.id !264
  ret i64 %0, !dbg !265, !psr.id !266
}

; Function Attrs: noinline nounwind uwtable
define internal void @montgomery_ladder(i64* %0, i8* %1, i64* %2) #0 !dbg !267 {
  %4 = alloca [16 x i64], align 16, !psr.id !270
  %5 = alloca [33 x i64], align 16, !psr.id !271
  call void @llvm.dbg.value(metadata i64* %0, metadata !272, metadata !DIExpression()), !dbg !273, !psr.id !274
  call void @llvm.dbg.value(metadata i8* %1, metadata !275, metadata !DIExpression()), !dbg !273, !psr.id !276
  call void @llvm.dbg.value(metadata i64* %2, metadata !277, metadata !DIExpression()), !dbg !273, !psr.id !278
  call void @llvm.dbg.declare(metadata [16 x i64]* %4, metadata !279, metadata !DIExpression()), !dbg !283, !psr.id !284
  %6 = bitcast [16 x i64]* %4 to i8*, !dbg !283, !psr.id !285
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 128, i1 false), !dbg !283, !psr.id !286
  call void @llvm.dbg.declare(metadata [33 x i64]* %5, metadata !287, metadata !DIExpression()), !dbg !291, !psr.id !292
  %7 = bitcast [33 x i64]* %5 to i8*, !dbg !291, !psr.id !293
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 264, i1 false), !dbg !291, !psr.id !294
  %8 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !295, !psr.id !296
  call void @llvm.dbg.value(metadata i64* %8, metadata !297, metadata !DIExpression()), !dbg !273, !psr.id !298
  %9 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !299, !psr.id !300
  call void @llvm.dbg.value(metadata i64* %9, metadata !301, metadata !DIExpression()), !dbg !273, !psr.id !302
  call void @llvm.dbg.value(metadata i64* %9, metadata !303, metadata !DIExpression()), !dbg !273, !psr.id !304
  %10 = getelementptr inbounds i64, i64* %9, i64 8, !dbg !305, !psr.id !306
  call void @llvm.dbg.value(metadata i64* %10, metadata !307, metadata !DIExpression()), !dbg !273, !psr.id !308
  %11 = bitcast i64* %10 to i8*, !dbg !309, !psr.id !310
  %12 = bitcast i64* %2 to i8*, !dbg !309, !psr.id !311
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 64, i1 false), !dbg !309, !psr.id !312
  call void @llvm.dbg.value(metadata i64* %9, metadata !313, metadata !DIExpression()), !dbg !273, !psr.id !314
  %13 = getelementptr inbounds i64, i64* %9, i64 4, !dbg !315, !psr.id !316
  call void @llvm.dbg.value(metadata i64* %13, metadata !317, metadata !DIExpression()), !dbg !273, !psr.id !318
  %14 = getelementptr inbounds i64, i64* %9, i64 0, !dbg !319, !psr.id !320
  store i64 1, i64* %14, align 8, !dbg !321, !psr.id !322
  %15 = getelementptr inbounds i64, i64* %9, i64 1, !dbg !323, !psr.id !324
  store i64 0, i64* %15, align 8, !dbg !325, !psr.id !326
  %16 = getelementptr inbounds i64, i64* %9, i64 2, !dbg !327, !psr.id !328
  store i64 0, i64* %16, align 8, !dbg !329, !psr.id !330
  %17 = getelementptr inbounds i64, i64* %9, i64 3, !dbg !331, !psr.id !332
  store i64 0, i64* %17, align 8, !dbg !333, !psr.id !334
  %18 = getelementptr inbounds i64, i64* %13, i64 0, !dbg !335, !psr.id !336
  store i64 0, i64* %18, align 8, !dbg !337, !psr.id !338
  %19 = getelementptr inbounds i64, i64* %13, i64 1, !dbg !339, !psr.id !340
  store i64 0, i64* %19, align 8, !dbg !341, !psr.id !342
  %20 = getelementptr inbounds i64, i64* %13, i64 2, !dbg !343, !psr.id !344
  store i64 0, i64* %20, align 8, !dbg !345, !psr.id !346
  %21 = getelementptr inbounds i64, i64* %13, i64 3, !dbg !347, !psr.id !348
  store i64 0, i64* %21, align 8, !dbg !349, !psr.id !350
  %22 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !351, !psr.id !352
  call void @llvm.dbg.value(metadata i64* %22, metadata !353, metadata !DIExpression()), !dbg !273, !psr.id !354
  %23 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !355, !psr.id !356
  call void @llvm.dbg.value(metadata i64* %23, metadata !357, metadata !DIExpression()), !dbg !273, !psr.id !358
  %24 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !359, !psr.id !360
  call void @llvm.dbg.value(metadata i64* %24, metadata !361, metadata !DIExpression()), !dbg !273, !psr.id !362
  %25 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !363, !psr.id !364
  %26 = getelementptr inbounds i64, i64* %25, i64 8, !dbg !365, !psr.id !366
  call void @llvm.dbg.value(metadata i64* %26, metadata !367, metadata !DIExpression()), !dbg !273, !psr.id !368
  %27 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !369, !psr.id !370
  %28 = getelementptr inbounds i64, i64* %27, i64 32, !dbg !371, !psr.id !372
  call void @llvm.dbg.value(metadata i64* %28, metadata !373, metadata !DIExpression()), !dbg !273, !psr.id !374
  call void @cswap20(i64 1, i64* %24, i64* %26), !dbg !375, !psr.id !376
  %29 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !377, !psr.id !378
  call void @point_add_and_double(i64* %2, i64* %23, i64* %29), !dbg !379, !psr.id !380
  %30 = getelementptr inbounds i64, i64* %28, i64 0, !dbg !381, !psr.id !382
  store i64 1, i64* %30, align 8, !dbg !383, !psr.id !384
  call void @llvm.dbg.value(metadata i32 0, metadata !385, metadata !DIExpression()), !dbg !387, !psr.id !388
  br label %31, !dbg !389, !psr.id !390

31:                                               ; preds = %54, %3
  %.0 = phi i32 [ 0, %3 ], [ %55, %54 ], !dbg !387, !psr.id !391
  call void @llvm.dbg.value(metadata i32 %.0, metadata !385, metadata !DIExpression()), !dbg !387, !psr.id !392
  %32 = icmp ult i32 %.0, 251, !dbg !393, !psr.id !395
  br i1 %32, label %33, label %56, !dbg !396, !psr.id !397

33:                                               ; preds = %31
  %34 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !398, !psr.id !400
  call void @llvm.dbg.value(metadata i64* %34, metadata !401, metadata !DIExpression()), !dbg !402, !psr.id !403
  %35 = getelementptr inbounds [33 x i64], [33 x i64]* %5, i64 0, i64 0, !dbg !404, !psr.id !405
  %36 = getelementptr inbounds i64, i64* %35, i64 32, !dbg !406, !psr.id !407
  call void @llvm.dbg.value(metadata i64* %36, metadata !408, metadata !DIExpression()), !dbg !402, !psr.id !409
  call void @llvm.dbg.value(metadata i64* %34, metadata !410, metadata !DIExpression()), !dbg !402, !psr.id !411
  %37 = getelementptr inbounds i64, i64* %34, i64 8, !dbg !412, !psr.id !413
  call void @llvm.dbg.value(metadata i64* %37, metadata !414, metadata !DIExpression()), !dbg !402, !psr.id !415
  %38 = sub i32 253, %.0, !dbg !416, !psr.id !417
  %39 = udiv i32 %38, 8, !dbg !418, !psr.id !419
  %40 = zext i32 %39 to i64, !dbg !420, !psr.id !421
  %41 = getelementptr inbounds i8, i8* %1, i64 %40, !dbg !420, !psr.id !422, !PointTainted !423
  %42 = load i8, i8* %41, align 1, !dbg !420, !psr.id !424, !ValueTainted !425
  %43 = zext i8 %42 to i32, !dbg !420, !psr.id !426, !ValueTainted !425
  %44 = sub i32 253, %.0, !dbg !427, !psr.id !428
  %45 = urem i32 %44, 8, !dbg !429, !psr.id !430
  %46 = ashr i32 %43, %45, !dbg !431, !psr.id !432, !ValueTainted !425
  %47 = and i32 %46, 1, !dbg !433, !psr.id !434, !ValueTainted !425
  %48 = sext i32 %47 to i64, !dbg !435, !psr.id !436, !ValueTainted !425
  call void @llvm.dbg.value(metadata i64 %48, metadata !437, metadata !DIExpression()), !dbg !402, !psr.id !438
  %49 = getelementptr inbounds i64, i64* %36, i64 0, !dbg !439, !psr.id !440
  %50 = load i64, i64* %49, align 8, !dbg !439, !psr.id !441, !ValueTainted !425
  %51 = xor i64 %50, %48, !dbg !442, !psr.id !443, !ValueTainted !425
  call void @llvm.dbg.value(metadata i64 %51, metadata !444, metadata !DIExpression()), !dbg !402, !psr.id !445
  call void @cswap20(i64 %51, i64* %34, i64* %37), !dbg !446, !psr.id !447
  %52 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !448, !psr.id !449
  call void @point_add_and_double(i64* %2, i64* %34, i64* %52), !dbg !450, !psr.id !451
  %53 = getelementptr inbounds i64, i64* %36, i64 0, !dbg !452, !psr.id !453, !PointTainted !423
  store i64 %48, i64* %53, align 8, !dbg !454, !psr.id !455
  br label %54, !dbg !456, !psr.id !457

54:                                               ; preds = %33
  %55 = add i32 %.0, 1, !dbg !458, !psr.id !459
  call void @llvm.dbg.value(metadata i32 %55, metadata !385, metadata !DIExpression()), !dbg !387, !psr.id !460
  br label %31, !dbg !461, !llvm.loop !462, !psr.id !465

56:                                               ; preds = %31
  %57 = getelementptr inbounds i64, i64* %28, i64 0, !dbg !466, !psr.id !467
  %58 = load i64, i64* %57, align 8, !dbg !466, !psr.id !468, !ValueTainted !425
  call void @llvm.dbg.value(metadata i64 %58, metadata !469, metadata !DIExpression()), !dbg !273, !psr.id !470
  call void @cswap20(i64 %58, i64* %24, i64* %26), !dbg !471, !psr.id !472
  call void @llvm.dbg.value(metadata i64* %22, metadata !473, metadata !DIExpression()), !dbg !273, !psr.id !474
  %59 = getelementptr inbounds i64, i64* %22, i64 16, !dbg !475, !psr.id !476
  call void @llvm.dbg.value(metadata i64* %59, metadata !477, metadata !DIExpression()), !dbg !273, !psr.id !478
  %60 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !479, !psr.id !480
  call void @point_double(i64* %22, i64* %59, i64* %60), !dbg !481, !psr.id !482
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !483, !psr.id !484
  call void @point_double(i64* %22, i64* %59, i64* %61), !dbg !485, !psr.id !486
  %62 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !487, !psr.id !488
  call void @point_double(i64* %22, i64* %59, i64* %62), !dbg !489, !psr.id !490
  %63 = bitcast i64* %0 to i8*, !dbg !491, !psr.id !492
  %64 = bitcast i64* %8 to i8*, !dbg !491, !psr.id !493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 64, i1 false), !dbg !491, !psr.id !494
  ret void, !dbg !495, !psr.id !496
}

; Function Attrs: noinline nounwind uwtable
define internal void @encode_point(i8* %0, i64* %1) #0 !dbg !497 {
  %3 = alloca [4 x i64], align 16, !psr.id !500
  %4 = alloca [4 x i64], align 16, !psr.id !501
  %5 = alloca [16 x i64], align 16, !psr.id !502
  call void @llvm.dbg.value(metadata i8* %0, metadata !503, metadata !DIExpression()), !dbg !504, !psr.id !505
  call void @llvm.dbg.value(metadata i64* %1, metadata !506, metadata !DIExpression()), !dbg !504, !psr.id !507
  call void @llvm.dbg.value(metadata i64* %1, metadata !508, metadata !DIExpression()), !dbg !504, !psr.id !509
  %6 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !510, !psr.id !511
  call void @llvm.dbg.value(metadata i64* %6, metadata !512, metadata !DIExpression()), !dbg !504, !psr.id !513
  call void @llvm.dbg.declare(metadata [4 x i64]* %3, metadata !514, metadata !DIExpression()), !dbg !515, !psr.id !516
  %7 = bitcast [4 x i64]* %3 to i8*, !dbg !515, !psr.id !517
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false), !dbg !515, !psr.id !518
  call void @llvm.dbg.declare(metadata [4 x i64]* %4, metadata !519, metadata !DIExpression()), !dbg !520, !psr.id !521
  %8 = bitcast [4 x i64]* %4 to i8*, !dbg !520, !psr.id !522
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 32, i1 false), !dbg !520, !psr.id !523
  call void @llvm.dbg.declare(metadata [16 x i64]* %5, metadata !524, metadata !DIExpression()), !dbg !525, !psr.id !526
  %9 = bitcast [16 x i64]* %5 to i8*, !dbg !525, !psr.id !527
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 128, i1 false), !dbg !525, !psr.id !528
  %10 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !529, !psr.id !530
  %11 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0, !dbg !531, !psr.id !532
  call void @finv(i64* %10, i64* %6, i64* %11), !dbg !533, !psr.id !534
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !535, !psr.id !536
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !537, !psr.id !538
  %14 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0, !dbg !539, !psr.id !540
  call void @fmul0(i64* %12, i64* %13, i64* %1, i64* %14), !dbg !541, !psr.id !542
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0, !dbg !543, !psr.id !544
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0, !dbg !545, !psr.id !546
  call void @store_felem(i64* %15, i64* %16), !dbg !547, !psr.id !548
  br label %17, !dbg !549, !psr.id !550

17:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !551, metadata !DIExpression()), !dbg !553, !psr.id !554
  %18 = mul i32 0, 8, !dbg !555, !psr.id !557
  %19 = zext i32 %18 to i64, !dbg !555, !psr.id !558
  %20 = getelementptr inbounds i8, i8* %0, i64 %19, !dbg !555, !psr.id !559, !PointTainted !423
  %21 = zext i32 0 to i64, !dbg !555, !psr.id !560
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %21, !dbg !555, !psr.id !561
  %23 = load i64, i64* %22, align 8, !dbg !555, !psr.id !562
  %24 = call i64 @__uint64_identity(i64 %23), !dbg !555, !psr.id !563
  call void @store64(i8* %20, i64 %24), !dbg !555, !psr.id !564
  %25 = add i32 0, 1, !dbg !555, !psr.id !565
  call void @llvm.dbg.value(metadata i32 %25, metadata !551, metadata !DIExpression()), !dbg !553, !psr.id !566
  %26 = mul i32 %25, 8, !dbg !567, !psr.id !569
  %27 = zext i32 %26 to i64, !dbg !567, !psr.id !570
  %28 = getelementptr inbounds i8, i8* %0, i64 %27, !dbg !567, !psr.id !571, !PointTainted !423
  %29 = zext i32 %25 to i64, !dbg !567, !psr.id !572
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %29, !dbg !567, !psr.id !573
  %31 = load i64, i64* %30, align 8, !dbg !567, !psr.id !574
  %32 = call i64 @__uint64_identity(i64 %31), !dbg !567, !psr.id !575
  call void @store64(i8* %28, i64 %32), !dbg !567, !psr.id !576
  %33 = add i32 %25, 1, !dbg !567, !psr.id !577
  call void @llvm.dbg.value(metadata i32 %33, metadata !551, metadata !DIExpression()), !dbg !553, !psr.id !578
  %34 = mul i32 %33, 8, !dbg !579, !psr.id !581
  %35 = zext i32 %34 to i64, !dbg !579, !psr.id !582
  %36 = getelementptr inbounds i8, i8* %0, i64 %35, !dbg !579, !psr.id !583, !PointTainted !423
  %37 = zext i32 %33 to i64, !dbg !579, !psr.id !584
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %37, !dbg !579, !psr.id !585
  %39 = load i64, i64* %38, align 8, !dbg !579, !psr.id !586
  %40 = call i64 @__uint64_identity(i64 %39), !dbg !579, !psr.id !587
  call void @store64(i8* %36, i64 %40), !dbg !579, !psr.id !588
  %41 = add i32 %33, 1, !dbg !579, !psr.id !589
  call void @llvm.dbg.value(metadata i32 %41, metadata !551, metadata !DIExpression()), !dbg !553, !psr.id !590
  %42 = mul i32 %41, 8, !dbg !591, !psr.id !593
  %43 = zext i32 %42 to i64, !dbg !591, !psr.id !594
  %44 = getelementptr inbounds i8, i8* %0, i64 %43, !dbg !591, !psr.id !595, !PointTainted !423
  %45 = zext i32 %41 to i64, !dbg !591, !psr.id !596
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 %45, !dbg !591, !psr.id !597
  %47 = load i64, i64* %46, align 8, !dbg !591, !psr.id !598
  %48 = call i64 @__uint64_identity(i64 %47), !dbg !591, !psr.id !599
  call void @store64(i8* %44, i64 %48), !dbg !591, !psr.id !600
  %49 = add i32 %41, 1, !dbg !591, !psr.id !601
  call void @llvm.dbg.value(metadata i32 %49, metadata !551, metadata !DIExpression()), !dbg !553, !psr.id !602
  br label %50, !dbg !603, !psr.id !604

50:                                               ; preds = %17
  ret void, !dbg !605, !psr.id !606
}

; Function Attrs: noinline nounwind uwtable
define internal void @finv(i64* %0, i64* %1, i64* %2) #0 !dbg !607 {
  %4 = alloca [16 x i64], align 16, !psr.id !610
  call void @llvm.dbg.value(metadata i64* %0, metadata !611, metadata !DIExpression()), !dbg !612, !psr.id !613
  call void @llvm.dbg.value(metadata i64* %1, metadata !614, metadata !DIExpression()), !dbg !612, !psr.id !615
  call void @llvm.dbg.value(metadata i64* %2, metadata !616, metadata !DIExpression()), !dbg !612, !psr.id !617
  call void @llvm.dbg.declare(metadata [16 x i64]* %4, metadata !618, metadata !DIExpression()), !dbg !619, !psr.id !620
  %5 = bitcast [16 x i64]* %4 to i8*, !dbg !619, !psr.id !621
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 128, i1 false), !dbg !619, !psr.id !622
  %6 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !623, !psr.id !624
  call void @llvm.dbg.value(metadata i64* %6, metadata !625, metadata !DIExpression()), !dbg !612, !psr.id !626
  %7 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !627, !psr.id !628
  %8 = getelementptr inbounds i64, i64* %7, i64 4, !dbg !629, !psr.id !630
  call void @llvm.dbg.value(metadata i64* %8, metadata !631, metadata !DIExpression()), !dbg !612, !psr.id !632
  %9 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !633, !psr.id !634
  %10 = getelementptr inbounds i64, i64* %9, i64 12, !dbg !635, !psr.id !636
  call void @llvm.dbg.value(metadata i64* %10, metadata !637, metadata !DIExpression()), !dbg !612, !psr.id !638
  call void @llvm.dbg.value(metadata i64* %2, metadata !639, metadata !DIExpression()), !dbg !612, !psr.id !640
  call void @fsquare_times(i64* %6, i64* %1, i64* %2, i32 1), !dbg !641, !psr.id !642
  call void @fsquare_times(i64* %10, i64* %6, i64* %2, i32 2), !dbg !643, !psr.id !644
  call void @fmul0(i64* %8, i64* %10, i64* %1, i64* %2), !dbg !645, !psr.id !646
  call void @fmul0(i64* %6, i64* %8, i64* %6, i64* %2), !dbg !647, !psr.id !648
  call void @fsquare_times(i64* %10, i64* %6, i64* %2, i32 1), !dbg !649, !psr.id !650
  call void @fmul0(i64* %8, i64* %10, i64* %8, i64* %2), !dbg !651, !psr.id !652
  call void @fsquare_times(i64* %10, i64* %8, i64* %2, i32 5), !dbg !653, !psr.id !654
  call void @fmul0(i64* %8, i64* %10, i64* %8, i64* %2), !dbg !655, !psr.id !656
  %11 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !657, !psr.id !658
  %12 = getelementptr inbounds i64, i64* %11, i64 4, !dbg !659, !psr.id !660
  call void @llvm.dbg.value(metadata i64* %12, metadata !661, metadata !DIExpression()), !dbg !612, !psr.id !662
  %13 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !663, !psr.id !664
  %14 = getelementptr inbounds i64, i64* %13, i64 8, !dbg !665, !psr.id !666
  call void @llvm.dbg.value(metadata i64* %14, metadata !667, metadata !DIExpression()), !dbg !612, !psr.id !668
  %15 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !669, !psr.id !670
  %16 = getelementptr inbounds i64, i64* %15, i64 12, !dbg !671, !psr.id !672
  call void @llvm.dbg.value(metadata i64* %16, metadata !673, metadata !DIExpression()), !dbg !612, !psr.id !674
  call void @llvm.dbg.value(metadata i64* %2, metadata !675, metadata !DIExpression()), !dbg !612, !psr.id !676
  call void @fsquare_times(i64* %16, i64* %12, i64* %2, i32 10), !dbg !677, !psr.id !678
  call void @fmul0(i64* %14, i64* %16, i64* %12, i64* %2), !dbg !679, !psr.id !680
  call void @fsquare_times(i64* %16, i64* %14, i64* %2, i32 20), !dbg !681, !psr.id !682
  call void @fmul0(i64* %16, i64* %16, i64* %14, i64* %2), !dbg !683, !psr.id !684
  call void @fsquare_times(i64* %16, i64* %16, i64* %2, i32 10), !dbg !685, !psr.id !686
  call void @fmul0(i64* %12, i64* %16, i64* %12, i64* %2), !dbg !687, !psr.id !688
  call void @fsquare_times(i64* %16, i64* %12, i64* %2, i32 50), !dbg !689, !psr.id !690
  call void @fmul0(i64* %14, i64* %16, i64* %12, i64* %2), !dbg !691, !psr.id !692
  %17 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !693, !psr.id !694
  %18 = getelementptr inbounds i64, i64* %17, i64 4, !dbg !695, !psr.id !696
  call void @llvm.dbg.value(metadata i64* %18, metadata !697, metadata !DIExpression()), !dbg !612, !psr.id !698
  %19 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !699, !psr.id !700
  %20 = getelementptr inbounds i64, i64* %19, i64 8, !dbg !701, !psr.id !702
  call void @llvm.dbg.value(metadata i64* %20, metadata !703, metadata !DIExpression()), !dbg !612, !psr.id !704
  %21 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !705, !psr.id !706
  %22 = getelementptr inbounds i64, i64* %21, i64 12, !dbg !707, !psr.id !708
  call void @llvm.dbg.value(metadata i64* %22, metadata !709, metadata !DIExpression()), !dbg !612, !psr.id !710
  call void @llvm.dbg.value(metadata i64* %2, metadata !711, metadata !DIExpression()), !dbg !612, !psr.id !712
  call void @fsquare_times(i64* %22, i64* %20, i64* %2, i32 100), !dbg !713, !psr.id !714
  call void @fmul0(i64* %22, i64* %22, i64* %20, i64* %2), !dbg !715, !psr.id !716
  call void @fsquare_times(i64* %22, i64* %22, i64* %2, i32 50), !dbg !717, !psr.id !718
  call void @fmul0(i64* %22, i64* %22, i64* %18, i64* %2), !dbg !719, !psr.id !720
  call void @fsquare_times(i64* %22, i64* %22, i64* %2, i32 5), !dbg !721, !psr.id !722
  %23 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !723, !psr.id !724
  call void @llvm.dbg.value(metadata i64* %23, metadata !725, metadata !DIExpression()), !dbg !612, !psr.id !726
  %24 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0, !dbg !727, !psr.id !728
  %25 = getelementptr inbounds i64, i64* %24, i64 12, !dbg !729, !psr.id !730
  call void @llvm.dbg.value(metadata i64* %25, metadata !731, metadata !DIExpression()), !dbg !612, !psr.id !732
  call void @fmul0(i64* %0, i64* %25, i64* %23, i64* %2), !dbg !733, !psr.id !734
  ret void, !dbg !735, !psr.id !736
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul0(i64* %0, i64* %1, i64* %2, i64* %3) #0 !dbg !737 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !740, metadata !DIExpression()), !dbg !741, !psr.id !742
  call void @llvm.dbg.value(metadata i64* %1, metadata !743, metadata !DIExpression()), !dbg !741, !psr.id !744
  call void @llvm.dbg.value(metadata i64* %2, metadata !745, metadata !DIExpression()), !dbg !741, !psr.id !746
  call void @llvm.dbg.value(metadata i64* %3, metadata !747, metadata !DIExpression()), !dbg !741, !psr.id !748
  call void @fmul(i64* %0, i64* %1, i64* %2, i64* %3), !dbg !749, !psr.id !750
  ret void, !dbg !751, !psr.id !752
}

; Function Attrs: noinline nounwind uwtable
define internal void @store_felem(i64* %0, i64* %1) #0 !dbg !753 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !756, metadata !DIExpression()), !dbg !757, !psr.id !758
  call void @llvm.dbg.value(metadata i64* %1, metadata !759, metadata !DIExpression()), !dbg !757, !psr.id !760
  %3 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !761, !psr.id !762
  %4 = load i64, i64* %3, align 8, !dbg !761, !psr.id !763
  call void @llvm.dbg.value(metadata i64 %4, metadata !764, metadata !DIExpression()), !dbg !757, !psr.id !765
  %5 = lshr i64 %4, 63, !dbg !766, !psr.id !767
  call void @llvm.dbg.value(metadata i64 %5, metadata !768, metadata !DIExpression()), !dbg !757, !psr.id !769
  %6 = and i64 %4, 9223372036854775807, !dbg !770, !psr.id !771
  %7 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !772, !psr.id !773
  store i64 %6, i64* %7, align 8, !dbg !774, !psr.id !775
  %8 = mul i64 19, %5, !dbg !776, !psr.id !777
  call void @add_scalar0(i64* %1, i64* %1, i64 %8), !dbg !778, !psr.id !779
  %9 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !780, !psr.id !781
  %10 = load i64, i64* %9, align 8, !dbg !780, !psr.id !782
  call void @llvm.dbg.value(metadata i64 %10, metadata !783, metadata !DIExpression()), !dbg !757, !psr.id !784
  %11 = lshr i64 %10, 63, !dbg !785, !psr.id !786
  call void @llvm.dbg.value(metadata i64 %11, metadata !787, metadata !DIExpression()), !dbg !757, !psr.id !788
  %12 = and i64 %10, 9223372036854775807, !dbg !789, !psr.id !790
  %13 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !791, !psr.id !792
  store i64 %12, i64* %13, align 8, !dbg !793, !psr.id !794
  %14 = mul i64 19, %11, !dbg !795, !psr.id !796
  call void @add_scalar0(i64* %1, i64* %1, i64 %14), !dbg !797, !psr.id !798
  %15 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !799, !psr.id !800
  %16 = load i64, i64* %15, align 8, !dbg !799, !psr.id !801
  call void @llvm.dbg.value(metadata i64 %16, metadata !802, metadata !DIExpression()), !dbg !757, !psr.id !803
  %17 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !804, !psr.id !805
  %18 = load i64, i64* %17, align 8, !dbg !804, !psr.id !806
  call void @llvm.dbg.value(metadata i64 %18, metadata !807, metadata !DIExpression()), !dbg !757, !psr.id !808
  %19 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !809, !psr.id !810
  %20 = load i64, i64* %19, align 8, !dbg !809, !psr.id !811
  call void @llvm.dbg.value(metadata i64 %20, metadata !812, metadata !DIExpression()), !dbg !757, !psr.id !813
  %21 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !814, !psr.id !815
  %22 = load i64, i64* %21, align 8, !dbg !814, !psr.id !816
  call void @llvm.dbg.value(metadata i64 %22, metadata !817, metadata !DIExpression()), !dbg !757, !psr.id !818
  %23 = call i64 @FStar_UInt64_gte_mask(i64 %16, i64 -19), !dbg !819, !psr.id !820
  call void @llvm.dbg.value(metadata i64 %23, metadata !821, metadata !DIExpression()), !dbg !757, !psr.id !822
  %24 = call i64 @FStar_UInt64_eq_mask(i64 %18, i64 -1), !dbg !823, !psr.id !824
  call void @llvm.dbg.value(metadata i64 %24, metadata !825, metadata !DIExpression()), !dbg !757, !psr.id !826
  %25 = call i64 @FStar_UInt64_eq_mask(i64 %20, i64 -1), !dbg !827, !psr.id !828
  call void @llvm.dbg.value(metadata i64 %25, metadata !829, metadata !DIExpression()), !dbg !757, !psr.id !830
  %26 = call i64 @FStar_UInt64_eq_mask(i64 %22, i64 9223372036854775807), !dbg !831, !psr.id !832
  call void @llvm.dbg.value(metadata i64 %26, metadata !833, metadata !DIExpression()), !dbg !757, !psr.id !834
  %27 = and i64 %23, %24, !dbg !835, !psr.id !836
  %28 = and i64 %27, %25, !dbg !837, !psr.id !838
  %29 = and i64 %28, %26, !dbg !839, !psr.id !840
  call void @llvm.dbg.value(metadata i64 %29, metadata !841, metadata !DIExpression()), !dbg !757, !psr.id !842
  %30 = and i64 %29, -19, !dbg !843, !psr.id !844
  %31 = sub i64 %16, %30, !dbg !845, !psr.id !846
  call void @llvm.dbg.value(metadata i64 %31, metadata !847, metadata !DIExpression()), !dbg !757, !psr.id !848
  %32 = sub i64 %18, %29, !dbg !849, !psr.id !850
  call void @llvm.dbg.value(metadata i64 %32, metadata !851, metadata !DIExpression()), !dbg !757, !psr.id !852
  %33 = sub i64 %20, %29, !dbg !853, !psr.id !854
  call void @llvm.dbg.value(metadata i64 %33, metadata !855, metadata !DIExpression()), !dbg !757, !psr.id !856
  %34 = and i64 %29, 9223372036854775807, !dbg !857, !psr.id !858
  %35 = sub i64 %22, %34, !dbg !859, !psr.id !860
  call void @llvm.dbg.value(metadata i64 %35, metadata !861, metadata !DIExpression()), !dbg !757, !psr.id !862
  call void @llvm.dbg.value(metadata i64 %31, metadata !863, metadata !DIExpression()), !dbg !757, !psr.id !864
  call void @llvm.dbg.value(metadata i64 %32, metadata !865, metadata !DIExpression()), !dbg !757, !psr.id !866
  call void @llvm.dbg.value(metadata i64 %33, metadata !867, metadata !DIExpression()), !dbg !757, !psr.id !868
  call void @llvm.dbg.value(metadata i64 %35, metadata !869, metadata !DIExpression()), !dbg !757, !psr.id !870
  %36 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !871, !psr.id !872
  store i64 %31, i64* %36, align 8, !dbg !873, !psr.id !874
  %37 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !875, !psr.id !876
  store i64 %32, i64* %37, align 8, !dbg !877, !psr.id !878
  %38 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !879, !psr.id !880
  store i64 %33, i64* %38, align 8, !dbg !881, !psr.id !882
  %39 = getelementptr inbounds i64, i64* %0, i64 3, !dbg !883, !psr.id !884
  store i64 %35, i64* %39, align 8, !dbg !885, !psr.id !886
  ret void, !dbg !887, !psr.id !888
}

; Function Attrs: noinline nounwind uwtable
define internal void @store64(i8* %0, i64 %1) #0 !dbg !889 {
  %3 = alloca i64, align 8, !psr.id !892
  call void @llvm.dbg.value(metadata i8* %0, metadata !893, metadata !DIExpression()), !dbg !894, !psr.id !895
  store i64 %1, i64* %3, align 8, !psr.id !896
  call void @llvm.dbg.declare(metadata i64* %3, metadata !897, metadata !DIExpression()), !dbg !898, !psr.id !899
  %4 = bitcast i64* %3 to i8*, !dbg !900, !psr.id !901
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 8 %4, i64 8, i1 false), !dbg !900, !psr.id !902
  ret void, !dbg !903, !psr.id !904
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @add_scalar0(i64* %0, i64* %1, i64 %2) #0 !dbg !905 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !908, metadata !DIExpression()), !dbg !909, !psr.id !910
  call void @llvm.dbg.value(metadata i64* %1, metadata !911, metadata !DIExpression()), !dbg !909, !psr.id !912
  call void @llvm.dbg.value(metadata i64 %2, metadata !913, metadata !DIExpression()), !dbg !909, !psr.id !914
  call void @add_scalar(i64* %0, i64* %1, i64 %2), !dbg !915, !psr.id !916
  ret void, !dbg !917, !psr.id !918
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt64_gte_mask(i64 %0, i64 %1) #0 !dbg !919 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !923, metadata !DIExpression()), !dbg !924, !psr.id !925
  call void @llvm.dbg.value(metadata i64 %1, metadata !926, metadata !DIExpression()), !dbg !924, !psr.id !927
  call void @llvm.dbg.value(metadata i64 %0, metadata !928, metadata !DIExpression()), !dbg !924, !psr.id !929
  call void @llvm.dbg.value(metadata i64 %1, metadata !930, metadata !DIExpression()), !dbg !924, !psr.id !931
  %3 = xor i64 %0, %1, !dbg !932, !psr.id !933
  call void @llvm.dbg.value(metadata i64 %3, metadata !934, metadata !DIExpression()), !dbg !924, !psr.id !935
  %4 = sub i64 %0, %1, !dbg !936, !psr.id !937
  call void @llvm.dbg.value(metadata i64 %4, metadata !938, metadata !DIExpression()), !dbg !924, !psr.id !939
  %5 = xor i64 %4, %1, !dbg !940, !psr.id !941
  call void @llvm.dbg.value(metadata i64 %5, metadata !942, metadata !DIExpression()), !dbg !924, !psr.id !943
  %6 = or i64 %3, %5, !dbg !944, !psr.id !945
  call void @llvm.dbg.value(metadata i64 %6, metadata !946, metadata !DIExpression()), !dbg !924, !psr.id !947
  %7 = xor i64 %0, %6, !dbg !948, !psr.id !949
  call void @llvm.dbg.value(metadata i64 %7, metadata !950, metadata !DIExpression()), !dbg !924, !psr.id !951
  %8 = lshr i64 %7, 63, !dbg !952, !psr.id !953
  call void @llvm.dbg.value(metadata i64 %8, metadata !954, metadata !DIExpression()), !dbg !924, !psr.id !955
  %9 = sub i64 %8, 1, !dbg !956, !psr.id !957
  ret i64 %9, !dbg !958, !psr.id !959
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @FStar_UInt64_eq_mask(i64 %0, i64 %1) #0 !dbg !960 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !961, metadata !DIExpression()), !dbg !962, !psr.id !963
  call void @llvm.dbg.value(metadata i64 %1, metadata !964, metadata !DIExpression()), !dbg !962, !psr.id !965
  %3 = xor i64 %0, %1, !dbg !966, !psr.id !967
  call void @llvm.dbg.value(metadata i64 %3, metadata !968, metadata !DIExpression()), !dbg !962, !psr.id !969
  %4 = xor i64 %3, -1, !dbg !970, !psr.id !971
  %5 = add i64 %4, 1, !dbg !972, !psr.id !973
  call void @llvm.dbg.value(metadata i64 %5, metadata !974, metadata !DIExpression()), !dbg !962, !psr.id !975
  %6 = or i64 %3, %5, !dbg !976, !psr.id !977
  call void @llvm.dbg.value(metadata i64 %6, metadata !978, metadata !DIExpression()), !dbg !962, !psr.id !979
  %7 = lshr i64 %6, 63, !dbg !980, !psr.id !981
  call void @llvm.dbg.value(metadata i64 %7, metadata !982, metadata !DIExpression()), !dbg !962, !psr.id !983
  %8 = sub i64 %7, 1, !dbg !984, !psr.id !985
  ret i64 %8, !dbg !986, !psr.id !987
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_scalar(i64* %0, i64* %1, i64 %2) #0 !dbg !988 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !990, metadata !DIExpression()), !dbg !991, !psr.id !992
  call void @llvm.dbg.value(metadata i64* %1, metadata !993, metadata !DIExpression()), !dbg !991, !psr.id !994
  call void @llvm.dbg.value(metadata i64 %2, metadata !995, metadata !DIExpression()), !dbg !991, !psr.id !996
  %4 = call i64 asm sideeffect "  xor %r8d, %r8d;  xor %r9d, %r9d;  xor %r10d, %r10d;  xor %r11d, %r11d;  xor %eax, %eax;  addq 0($2), $0;  movq $0, 0($1);  adcxq 8($2), %r8;  movq %r8, 8($1);  adcxq 16($2), %r9;  movq %r9, 16($1);  adcxq 24($2), %r10;  movq %r10, 24($1);  adcx %r11, %rax;", "=&r,r,r,0,~{rax},~{r8},~{r9},~{r10},~{r11},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64 %2) #5, !dbg !997, !srcloc !998, !psr.id !999, !ValueTainted !425, !PointTainted !423
  call void @llvm.dbg.value(metadata i64 %4, metadata !995, metadata !DIExpression()), !dbg !991, !psr.id !1000
  ret void, !dbg !1001, !psr.id !1002
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul(i64* %0, i64* %1, i64* %2, i64* %3) #0 !dbg !1003 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1004, metadata !DIExpression()), !dbg !1005, !psr.id !1006
  call void @llvm.dbg.value(metadata i64* %1, metadata !1007, metadata !DIExpression()), !dbg !1005, !psr.id !1008
  call void @llvm.dbg.value(metadata i64* %2, metadata !1009, metadata !DIExpression()), !dbg !1005, !psr.id !1010
  call void @llvm.dbg.value(metadata i64* %3, metadata !1011, metadata !DIExpression()), !dbg !1005, !psr.id !1012
  %5 = call { i64*, i64*, i64* } asm sideeffect "  movq 0($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  movq %r8, 0($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  movq %r10, 8($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  mov $$0, %rax;  adox %rdx, %rax;  movq 8($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 8($2), %r8;  movq %r8, 8($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 16($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 16($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 16($2), %r8;  movq %r8, 16($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 24($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 24($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 24($2), %r8;  movq %r8, 24($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 32($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  movq %rbx, 40($2);  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  movq %r14, 48($2);  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq %rax, 56($2);  mov $2, $0;  mov $3, $2;  mov $$38, %rdx;  mulxq 32($0), %r8, %r13;  xor ${1:k}, ${1:k};  adoxq 0($0), %r8;  mulxq 40($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 8($0), %r9;  mulxq 48($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 16($0), %r10;  mulxq 56($0), %r11, %rax;  adcx %r13, %r11;  adoxq 24($0), %r11;  adcx $1, %rax;  adox $1, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx $1, %r9;  movq %r9, 8($2);  adcx $1, %r10;  movq %r10, 16($2);  adcx $1, %r11;  movq %r11, 24($2);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 0($2);", "=&r,=&r,=&r,r,0,1,2,~{rax},~{rbx},~{rdx},~{r8},~{r9},~{r10},~{r11},~{r13},~{r14},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2, i64* %3) #5, !dbg !1013, !srcloc !1014, !psr.id !1015, !ValueTainted !425, !PointTainted !423
  %6 = extractvalue { i64*, i64*, i64* } %5, 0, !dbg !1013, !psr.id !1016
  %7 = extractvalue { i64*, i64*, i64* } %5, 1, !dbg !1013, !psr.id !1017
  %8 = extractvalue { i64*, i64*, i64* } %5, 2, !dbg !1013, !psr.id !1018
  call void @llvm.dbg.value(metadata i64* %6, metadata !1007, metadata !DIExpression()), !dbg !1005, !psr.id !1019
  call void @llvm.dbg.value(metadata i64* %7, metadata !1009, metadata !DIExpression()), !dbg !1005, !psr.id !1020
  call void @llvm.dbg.value(metadata i64* %8, metadata !1011, metadata !DIExpression()), !dbg !1005, !psr.id !1021
  ret void, !dbg !1022, !psr.id !1023
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsquare_times(i64* %0, i64* %1, i64* %2, i32 %3) #0 !dbg !1024 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1027, metadata !DIExpression()), !dbg !1028, !psr.id !1029
  call void @llvm.dbg.value(metadata i64* %1, metadata !1030, metadata !DIExpression()), !dbg !1028, !psr.id !1031
  call void @llvm.dbg.value(metadata i64* %2, metadata !1032, metadata !DIExpression()), !dbg !1028, !psr.id !1033
  call void @llvm.dbg.value(metadata i32 %3, metadata !1034, metadata !DIExpression()), !dbg !1028, !psr.id !1035
  call void @fsqr0(i64* %0, i64* %1, i64* %2), !dbg !1036, !psr.id !1037
  call void @llvm.dbg.value(metadata i32 0, metadata !1038, metadata !DIExpression()), !dbg !1040, !psr.id !1041
  br label %5, !dbg !1042, !psr.id !1043

5:                                                ; preds = %9, %4
  %.0 = phi i32 [ 0, %4 ], [ %10, %9 ], !dbg !1040, !psr.id !1044
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1038, metadata !DIExpression()), !dbg !1040, !psr.id !1045
  %6 = sub i32 %3, 1, !dbg !1046, !psr.id !1048
  %7 = icmp ult i32 %.0, %6, !dbg !1049, !psr.id !1050
  br i1 %7, label %8, label %11, !dbg !1051, !psr.id !1052

8:                                                ; preds = %5
  call void @fsqr0(i64* %0, i64* %0, i64* %2), !dbg !1053, !psr.id !1055
  br label %9, !dbg !1056, !psr.id !1057

9:                                                ; preds = %8
  %10 = add i32 %.0, 1, !dbg !1058, !psr.id !1059
  call void @llvm.dbg.value(metadata i32 %10, metadata !1038, metadata !DIExpression()), !dbg !1040, !psr.id !1060
  br label %5, !dbg !1061, !llvm.loop !1062, !psr.id !1064

11:                                               ; preds = %5
  ret void, !dbg !1065, !psr.id !1066
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsqr0(i64* %0, i64* %1, i64* %2) #0 !dbg !1067 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1068, metadata !DIExpression()), !dbg !1069, !psr.id !1070
  call void @llvm.dbg.value(metadata i64* %1, metadata !1071, metadata !DIExpression()), !dbg !1069, !psr.id !1072
  call void @llvm.dbg.value(metadata i64* %2, metadata !1073, metadata !DIExpression()), !dbg !1069, !psr.id !1074
  call void @fsqr(i64* %0, i64* %1, i64* %2), !dbg !1075, !psr.id !1076
  ret void, !dbg !1077, !psr.id !1078
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsqr(i64* %0, i64* %1, i64* %2) #0 !dbg !1079 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1080, metadata !DIExpression()), !dbg !1081, !psr.id !1082
  call void @llvm.dbg.value(metadata i64* %1, metadata !1083, metadata !DIExpression()), !dbg !1081, !psr.id !1084
  call void @llvm.dbg.value(metadata i64* %2, metadata !1085, metadata !DIExpression()), !dbg !1081, !psr.id !1086
  %4 = call { i64*, i64* } asm sideeffect "  movq 0($0), %rdx;  mulxq 8($0), %r8, %r14;  xor %r15d, %r15d;  mulxq 16($0), %r9, %r10;  adcx %r14, %r9;  mulxq 24($0), %rax, %rcx;  adcx %rax, %r10;  movq 24($0), %rdx;  mulxq 8($0), %r11, %rbx;  adcx %rcx, %r11;  mulxq 16($0), %rax, %r13;  adcx %rax, %rbx;  movq 8($0), %rdx;  adcx %r15, %r13;  mulxq 16($0), %rax, %rcx;  mov $$0, %r14;  xor %r15d, %r15d;  adox %rax, %r10;  adcx %r8, %r8;  adox %rcx, %r11;  adcx %r9, %r9;  adox %r15, %rbx;  adcx %r10, %r10;  adox %r15, %r13;  adcx %r11, %r11;  adox %r15, %r14;  adcx %rbx, %rbx;  adcx %r13, %r13;  adcx %r14, %r14;  movq 0($0), %rdx;  mulx %rdx, %rax, %rcx;  movq %rax, 0($1);  add %rcx, %r8;  movq %r8, 8($1);  movq 8($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r9;  movq %r9, 16($1);  adcx %rcx, %r10;  movq %r10, 24($1);  movq 16($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r11;  movq %r11, 32($1);  adcx %rcx, %rbx;  movq %rbx, 40($1);  movq 24($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r13;  movq %r13, 48($1);  adcx %rcx, %r14;  movq %r14, 56($1);  mov $1, $0;  mov $2, $1;  mov $$38, %rdx;  mulxq 32($0), %r8, %r13;  xor %ecx, %ecx;  adoxq 0($0), %r8;  mulxq 40($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 8($0), %r9;  mulxq 48($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 16($0), %r10;  mulxq 56($0), %r11, %rax;  adcx %r13, %r11;  adoxq 24($0), %r11;  adcx %rcx, %rax;  adox %rcx, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx %rcx, %r9;  movq %r9, 8($1);  adcx %rcx, %r10;  movq %r10, 16($1);  adcx %rcx, %r11;  movq %r11, 24($1);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 0($1);", "=&r,=&r,r,0,1,~{rax},~{rbx},~{rcx},~{rdx},~{r8},~{r9},~{r10},~{r11},~{r13},~{r14},~{r15},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2) #5, !dbg !1087, !srcloc !1088, !psr.id !1089, !ValueTainted !425, !PointTainted !423
  %5 = extractvalue { i64*, i64* } %4, 0, !dbg !1087, !psr.id !1090
  %6 = extractvalue { i64*, i64* } %4, 1, !dbg !1087, !psr.id !1091
  call void @llvm.dbg.value(metadata i64* %5, metadata !1083, metadata !DIExpression()), !dbg !1081, !psr.id !1092
  call void @llvm.dbg.value(metadata i64* %6, metadata !1085, metadata !DIExpression()), !dbg !1081, !psr.id !1093
  ret void, !dbg !1094, !psr.id !1095
}

; Function Attrs: noinline nounwind uwtable
define internal void @cswap20(i64 %0, i64* %1, i64* %2) #0 !dbg !1096 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1099, metadata !DIExpression()), !dbg !1100, !psr.id !1101
  call void @llvm.dbg.value(metadata i64* %1, metadata !1102, metadata !DIExpression()), !dbg !1100, !psr.id !1103
  call void @llvm.dbg.value(metadata i64* %2, metadata !1104, metadata !DIExpression()), !dbg !1100, !psr.id !1105
  call void @cswap2(i64 %0, i64* %1, i64* %2), !dbg !1106, !psr.id !1107
  ret void, !dbg !1108, !psr.id !1109
}

; Function Attrs: noinline nounwind uwtable
define internal void @point_add_and_double(i64* %0, i64* %1, i64* %2) #0 !dbg !1110 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1111, metadata !DIExpression()), !dbg !1112, !psr.id !1113
  call void @llvm.dbg.value(metadata i64* %1, metadata !1114, metadata !DIExpression()), !dbg !1112, !psr.id !1115
  call void @llvm.dbg.value(metadata i64* %2, metadata !1116, metadata !DIExpression()), !dbg !1112, !psr.id !1117
  call void @llvm.dbg.value(metadata i64* %1, metadata !1118, metadata !DIExpression()), !dbg !1112, !psr.id !1119
  %4 = getelementptr inbounds i64, i64* %1, i64 8, !dbg !1120, !psr.id !1121
  call void @llvm.dbg.value(metadata i64* %4, metadata !1122, metadata !DIExpression()), !dbg !1112, !psr.id !1123
  %5 = getelementptr inbounds i64, i64* %1, i64 16, !dbg !1124, !psr.id !1125
  call void @llvm.dbg.value(metadata i64* %5, metadata !1126, metadata !DIExpression()), !dbg !1112, !psr.id !1127
  call void @llvm.dbg.value(metadata i64* %0, metadata !1128, metadata !DIExpression()), !dbg !1112, !psr.id !1129
  call void @llvm.dbg.value(metadata i64* %1, metadata !1130, metadata !DIExpression()), !dbg !1112, !psr.id !1131
  %6 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1132, !psr.id !1133
  call void @llvm.dbg.value(metadata i64* %6, metadata !1134, metadata !DIExpression()), !dbg !1112, !psr.id !1135
  %7 = getelementptr inbounds i64, i64* %4, i64 4, !dbg !1136, !psr.id !1137
  call void @llvm.dbg.value(metadata i64* %7, metadata !1138, metadata !DIExpression()), !dbg !1112, !psr.id !1139
  call void @llvm.dbg.value(metadata i64* %5, metadata !1140, metadata !DIExpression()), !dbg !1112, !psr.id !1141
  %8 = getelementptr inbounds i64, i64* %5, i64 4, !dbg !1142, !psr.id !1143
  call void @llvm.dbg.value(metadata i64* %8, metadata !1144, metadata !DIExpression()), !dbg !1112, !psr.id !1145
  call void @llvm.dbg.value(metadata i64* %5, metadata !1146, metadata !DIExpression()), !dbg !1112, !psr.id !1147
  %9 = getelementptr inbounds i64, i64* %5, i64 8, !dbg !1148, !psr.id !1149
  call void @llvm.dbg.value(metadata i64* %9, metadata !1150, metadata !DIExpression()), !dbg !1112, !psr.id !1151
  call void @fadd0(i64* %5, i64* %1, i64* %6), !dbg !1152, !psr.id !1153
  call void @fsub0(i64* %8, i64* %1, i64* %6), !dbg !1154, !psr.id !1155
  call void @llvm.dbg.value(metadata i64* %4, metadata !1156, metadata !DIExpression()), !dbg !1112, !psr.id !1157
  %10 = getelementptr inbounds i64, i64* %4, i64 4, !dbg !1158, !psr.id !1159
  call void @llvm.dbg.value(metadata i64* %10, metadata !1160, metadata !DIExpression()), !dbg !1112, !psr.id !1161
  call void @llvm.dbg.value(metadata i64* %9, metadata !1162, metadata !DIExpression()), !dbg !1112, !psr.id !1163
  %11 = getelementptr inbounds i64, i64* %9, i64 4, !dbg !1164, !psr.id !1165
  call void @llvm.dbg.value(metadata i64* %11, metadata !1166, metadata !DIExpression()), !dbg !1112, !psr.id !1167
  call void @fadd0(i64* %11, i64* %4, i64* %10), !dbg !1168, !psr.id !1169
  call void @fsub0(i64* %9, i64* %4, i64* %10), !dbg !1170, !psr.id !1171
  call void @fmul20(i64* %9, i64* %9, i64* %5, i64* %2), !dbg !1172, !psr.id !1173
  call void @fadd0(i64* %4, i64* %9, i64* %11), !dbg !1174, !psr.id !1175
  call void @fsub0(i64* %10, i64* %9, i64* %11), !dbg !1176, !psr.id !1177
  call void @llvm.dbg.value(metadata i64* %5, metadata !1178, metadata !DIExpression()), !dbg !1112, !psr.id !1179
  %12 = getelementptr inbounds i64, i64* %5, i64 4, !dbg !1180, !psr.id !1181
  call void @llvm.dbg.value(metadata i64* %12, metadata !1182, metadata !DIExpression()), !dbg !1112, !psr.id !1183
  %13 = getelementptr inbounds i64, i64* %5, i64 8, !dbg !1184, !psr.id !1185
  call void @llvm.dbg.value(metadata i64* %13, metadata !1186, metadata !DIExpression()), !dbg !1112, !psr.id !1187
  %14 = getelementptr inbounds i64, i64* %5, i64 12, !dbg !1188, !psr.id !1189
  call void @llvm.dbg.value(metadata i64* %14, metadata !1190, metadata !DIExpression()), !dbg !1112, !psr.id !1191
  call void @llvm.dbg.value(metadata i64* %5, metadata !1192, metadata !DIExpression()), !dbg !1112, !psr.id !1193
  %15 = getelementptr inbounds i64, i64* %5, i64 8, !dbg !1194, !psr.id !1195
  call void @llvm.dbg.value(metadata i64* %15, metadata !1196, metadata !DIExpression()), !dbg !1112, !psr.id !1197
  call void @fsqr20(i64* %15, i64* %5, i64* %2), !dbg !1198, !psr.id !1199
  call void @fsqr20(i64* %4, i64* %4, i64* %2), !dbg !1200, !psr.id !1201
  %16 = getelementptr inbounds i64, i64* %14, i64 0, !dbg !1202, !psr.id !1203
  %17 = load i64, i64* %16, align 8, !dbg !1202, !psr.id !1204, !ValueTainted !425
  %18 = getelementptr inbounds i64, i64* %5, i64 0, !dbg !1205, !psr.id !1206
  store i64 %17, i64* %18, align 8, !dbg !1207, !psr.id !1208
  %19 = getelementptr inbounds i64, i64* %14, i64 1, !dbg !1209, !psr.id !1210
  %20 = load i64, i64* %19, align 8, !dbg !1209, !psr.id !1211, !ValueTainted !425
  %21 = getelementptr inbounds i64, i64* %5, i64 1, !dbg !1212, !psr.id !1213
  store i64 %20, i64* %21, align 8, !dbg !1214, !psr.id !1215
  %22 = getelementptr inbounds i64, i64* %14, i64 2, !dbg !1216, !psr.id !1217
  %23 = load i64, i64* %22, align 8, !dbg !1216, !psr.id !1218, !ValueTainted !425
  %24 = getelementptr inbounds i64, i64* %5, i64 2, !dbg !1219, !psr.id !1220
  store i64 %23, i64* %24, align 8, !dbg !1221, !psr.id !1222
  %25 = getelementptr inbounds i64, i64* %14, i64 3, !dbg !1223, !psr.id !1224
  %26 = load i64, i64* %25, align 8, !dbg !1223, !psr.id !1225, !ValueTainted !425
  %27 = getelementptr inbounds i64, i64* %5, i64 3, !dbg !1226, !psr.id !1227
  store i64 %26, i64* %27, align 8, !dbg !1228, !psr.id !1229
  call void @fsub0(i64* %14, i64* %13, i64* %14), !dbg !1230, !psr.id !1231
  call void @fmul_scalar0(i64* %12, i64* %14, i64 121665), !dbg !1232, !psr.id !1233
  call void @fadd0(i64* %12, i64* %12, i64* %13), !dbg !1234, !psr.id !1235
  call void @fmul20(i64* %1, i64* %15, i64* %5, i64* %2), !dbg !1236, !psr.id !1237
  call void @fmul0(i64* %7, i64* %7, i64* %0, i64* %2), !dbg !1238, !psr.id !1239
  ret void, !dbg !1240, !psr.id !1241
}

; Function Attrs: noinline nounwind uwtable
define internal void @point_double(i64* %0, i64* %1, i64* %2) #0 !dbg !1242 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1243, metadata !DIExpression()), !dbg !1244, !psr.id !1245
  call void @llvm.dbg.value(metadata i64* %1, metadata !1246, metadata !DIExpression()), !dbg !1244, !psr.id !1247
  call void @llvm.dbg.value(metadata i64* %2, metadata !1248, metadata !DIExpression()), !dbg !1244, !psr.id !1249
  call void @llvm.dbg.value(metadata i64* %0, metadata !1250, metadata !DIExpression()), !dbg !1244, !psr.id !1251
  %4 = getelementptr inbounds i64, i64* %0, i64 4, !dbg !1252, !psr.id !1253
  call void @llvm.dbg.value(metadata i64* %4, metadata !1254, metadata !DIExpression()), !dbg !1244, !psr.id !1255
  call void @llvm.dbg.value(metadata i64* %1, metadata !1256, metadata !DIExpression()), !dbg !1244, !psr.id !1257
  %5 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1258, !psr.id !1259
  call void @llvm.dbg.value(metadata i64* %5, metadata !1260, metadata !DIExpression()), !dbg !1244, !psr.id !1261
  %6 = getelementptr inbounds i64, i64* %1, i64 8, !dbg !1262, !psr.id !1263
  call void @llvm.dbg.value(metadata i64* %6, metadata !1264, metadata !DIExpression()), !dbg !1244, !psr.id !1265
  %7 = getelementptr inbounds i64, i64* %1, i64 12, !dbg !1266, !psr.id !1267
  call void @llvm.dbg.value(metadata i64* %7, metadata !1268, metadata !DIExpression()), !dbg !1244, !psr.id !1269
  call void @llvm.dbg.value(metadata i64* %1, metadata !1270, metadata !DIExpression()), !dbg !1244, !psr.id !1271
  %8 = getelementptr inbounds i64, i64* %1, i64 8, !dbg !1272, !psr.id !1273
  call void @llvm.dbg.value(metadata i64* %8, metadata !1274, metadata !DIExpression()), !dbg !1244, !psr.id !1275
  call void @fadd0(i64* %1, i64* %0, i64* %4), !dbg !1276, !psr.id !1277
  call void @fsub0(i64* %5, i64* %0, i64* %4), !dbg !1278, !psr.id !1279
  call void @fsqr20(i64* %8, i64* %1, i64* %2), !dbg !1280, !psr.id !1281
  %9 = getelementptr inbounds i64, i64* %7, i64 0, !dbg !1282, !psr.id !1283
  %10 = load i64, i64* %9, align 8, !dbg !1282, !psr.id !1284, !ValueTainted !425
  %11 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1285, !psr.id !1286
  store i64 %10, i64* %11, align 8, !dbg !1287, !psr.id !1288
  %12 = getelementptr inbounds i64, i64* %7, i64 1, !dbg !1289, !psr.id !1290
  %13 = load i64, i64* %12, align 8, !dbg !1289, !psr.id !1291, !ValueTainted !425
  %14 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1292, !psr.id !1293
  store i64 %13, i64* %14, align 8, !dbg !1294, !psr.id !1295
  %15 = getelementptr inbounds i64, i64* %7, i64 2, !dbg !1296, !psr.id !1297
  %16 = load i64, i64* %15, align 8, !dbg !1296, !psr.id !1298, !ValueTainted !425
  %17 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1299, !psr.id !1300
  store i64 %16, i64* %17, align 8, !dbg !1301, !psr.id !1302
  %18 = getelementptr inbounds i64, i64* %7, i64 3, !dbg !1303, !psr.id !1304
  %19 = load i64, i64* %18, align 8, !dbg !1303, !psr.id !1305, !ValueTainted !425
  %20 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1306, !psr.id !1307
  store i64 %19, i64* %20, align 8, !dbg !1308, !psr.id !1309
  call void @fsub0(i64* %7, i64* %6, i64* %7), !dbg !1310, !psr.id !1311
  call void @fmul_scalar0(i64* %5, i64* %7, i64 121665), !dbg !1312, !psr.id !1313
  call void @fadd0(i64* %5, i64* %5, i64* %6), !dbg !1314, !psr.id !1315
  call void @fmul20(i64* %0, i64* %8, i64* %1, i64* %2), !dbg !1316, !psr.id !1317
  ret void, !dbg !1318, !psr.id !1319
}

; Function Attrs: noinline nounwind uwtable
define internal void @fadd0(i64* %0, i64* %1, i64* %2) #0 !dbg !1320 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1321, metadata !DIExpression()), !dbg !1322, !psr.id !1323
  call void @llvm.dbg.value(metadata i64* %1, metadata !1324, metadata !DIExpression()), !dbg !1322, !psr.id !1325
  call void @llvm.dbg.value(metadata i64* %2, metadata !1326, metadata !DIExpression()), !dbg !1322, !psr.id !1327
  call void @fadd(i64* %0, i64* %1, i64* %2), !dbg !1328, !psr.id !1329
  ret void, !dbg !1330, !psr.id !1331
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsub0(i64* %0, i64* %1, i64* %2) #0 !dbg !1332 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1333, metadata !DIExpression()), !dbg !1334, !psr.id !1335
  call void @llvm.dbg.value(metadata i64* %1, metadata !1336, metadata !DIExpression()), !dbg !1334, !psr.id !1337
  call void @llvm.dbg.value(metadata i64* %2, metadata !1338, metadata !DIExpression()), !dbg !1334, !psr.id !1339
  call void @fsub(i64* %0, i64* %1, i64* %2), !dbg !1340, !psr.id !1341
  ret void, !dbg !1342, !psr.id !1343
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsqr20(i64* %0, i64* %1, i64* %2) #0 !dbg !1344 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1345, metadata !DIExpression()), !dbg !1346, !psr.id !1347
  call void @llvm.dbg.value(metadata i64* %1, metadata !1348, metadata !DIExpression()), !dbg !1346, !psr.id !1349
  call void @llvm.dbg.value(metadata i64* %2, metadata !1350, metadata !DIExpression()), !dbg !1346, !psr.id !1351
  call void @fsqr2(i64* %0, i64* %1, i64* %2), !dbg !1352, !psr.id !1353
  ret void, !dbg !1354, !psr.id !1355
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul_scalar0(i64* %0, i64* %1, i64 %2) #0 !dbg !1356 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1357, metadata !DIExpression()), !dbg !1358, !psr.id !1359
  call void @llvm.dbg.value(metadata i64* %1, metadata !1360, metadata !DIExpression()), !dbg !1358, !psr.id !1361
  call void @llvm.dbg.value(metadata i64 %2, metadata !1362, metadata !DIExpression()), !dbg !1358, !psr.id !1363
  call void @fmul_scalar(i64* %0, i64* %1, i64 %2), !dbg !1364, !psr.id !1365
  ret void, !dbg !1366, !psr.id !1367
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul20(i64* %0, i64* %1, i64* %2, i64* %3) #0 !dbg !1368 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1369, metadata !DIExpression()), !dbg !1370, !psr.id !1371
  call void @llvm.dbg.value(metadata i64* %1, metadata !1372, metadata !DIExpression()), !dbg !1370, !psr.id !1373
  call void @llvm.dbg.value(metadata i64* %2, metadata !1374, metadata !DIExpression()), !dbg !1370, !psr.id !1375
  call void @llvm.dbg.value(metadata i64* %3, metadata !1376, metadata !DIExpression()), !dbg !1370, !psr.id !1377
  call void @fmul2(i64* %0, i64* %1, i64* %2, i64* %3), !dbg !1378, !psr.id !1379
  ret void, !dbg !1380, !psr.id !1381
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul2(i64* %0, i64* %1, i64* %2, i64* %3) #0 !dbg !1382 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1383, metadata !DIExpression()), !dbg !1384, !psr.id !1385
  call void @llvm.dbg.value(metadata i64* %1, metadata !1386, metadata !DIExpression()), !dbg !1384, !psr.id !1387
  call void @llvm.dbg.value(metadata i64* %2, metadata !1388, metadata !DIExpression()), !dbg !1384, !psr.id !1389
  call void @llvm.dbg.value(metadata i64* %3, metadata !1390, metadata !DIExpression()), !dbg !1384, !psr.id !1391
  %5 = call { i64*, i64*, i64* } asm sideeffect "  movq 0($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  movq %r8, 0($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  movq %r10, 8($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  mov $$0, %rax;  adox %rdx, %rax;  movq 8($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 8($2), %r8;  movq %r8, 8($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 16($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 16($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 16($2), %r8;  movq %r8, 16($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 24($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 24($0), %rdx;  mulxq 0($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 24($2), %r8;  movq %r8, 24($2);  mulxq 8($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 32($2);  mulxq 16($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  movq %rbx, 40($2);  mov $$0, %r8;  mulxq 24($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  movq %r14, 48($2);  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq %rax, 56($2);  movq 32($0), %rdx;  mulxq 32($1), %r8, %r9;  xor %r10d, %r10d;  movq %r8, 64($2);  mulxq 40($1), %r10, %r11;  adox %r9, %r10;  movq %r10, 72($2);  mulxq 48($1), %rbx, %r13;  adox %r11, %rbx;  mulxq 56($1), %r14, %rdx;  adox %r13, %r14;  mov $$0, %rax;  adox %rdx, %rax;  movq 40($0), %rdx;  mulxq 32($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 72($2), %r8;  movq %r8, 72($2);  mulxq 40($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 80($2);  mulxq 48($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 56($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 48($0), %rdx;  mulxq 32($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 80($2), %r8;  movq %r8, 80($2);  mulxq 40($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 88($2);  mulxq 48($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  mov $$0, %r8;  mulxq 56($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq 56($0), %rdx;  mulxq 32($1), %r8, %r9;  xor %r10d, %r10d;  adcxq 88($2), %r8;  movq %r8, 88($2);  mulxq 40($1), %r10, %r11;  adox %r9, %r10;  adcx %rbx, %r10;  movq %r10, 96($2);  mulxq 48($1), %rbx, %r13;  adox %r11, %rbx;  adcx %r14, %rbx;  movq %rbx, 104($2);  mov $$0, %r8;  mulxq 56($1), %r14, %rdx;  adox %r13, %r14;  adcx %rax, %r14;  movq %r14, 112($2);  mov $$0, %rax;  adox %rdx, %rax;  adcx %r8, %rax;  movq %rax, 120($2);  mov $2, $0;  mov $3, $2;  mov $$38, %rdx;  mulxq 32($0), %r8, %r13;  xor ${1:k}, ${1:k};  adoxq 0($0), %r8;  mulxq 40($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 8($0), %r9;  mulxq 48($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 16($0), %r10;  mulxq 56($0), %r11, %rax;  adcx %r13, %r11;  adoxq 24($0), %r11;  adcx $1, %rax;  adox $1, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx $1, %r9;  movq %r9, 8($2);  adcx $1, %r10;  movq %r10, 16($2);  adcx $1, %r11;  movq %r11, 24($2);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 0($2);  mov $$38, %rdx;  mulxq 96($0), %r8, %r13;  xor ${1:k}, ${1:k};  adoxq 64($0), %r8;  mulxq 104($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 72($0), %r9;  mulxq 112($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 80($0), %r10;  mulxq 120($0), %r11, %rax;  adcx %r13, %r11;  adoxq 88($0), %r11;  adcx $1, %rax;  adox $1, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx $1, %r9;  movq %r9, 40($2);  adcx $1, %r10;  movq %r10, 48($2);  adcx $1, %r11;  movq %r11, 56($2);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 32($2);", "=&r,=&r,=&r,r,0,1,2,~{rax},~{rbx},~{rdx},~{r8},~{r9},~{r10},~{r11},~{r13},~{r14},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2, i64* %3) #5, !dbg !1392, !srcloc !1393, !psr.id !1394, !ValueTainted !425, !PointTainted !423
  %6 = extractvalue { i64*, i64*, i64* } %5, 0, !dbg !1392, !psr.id !1395
  %7 = extractvalue { i64*, i64*, i64* } %5, 1, !dbg !1392, !psr.id !1396
  %8 = extractvalue { i64*, i64*, i64* } %5, 2, !dbg !1392, !psr.id !1397
  call void @llvm.dbg.value(metadata i64* %6, metadata !1386, metadata !DIExpression()), !dbg !1384, !psr.id !1398
  call void @llvm.dbg.value(metadata i64* %7, metadata !1388, metadata !DIExpression()), !dbg !1384, !psr.id !1399
  call void @llvm.dbg.value(metadata i64* %8, metadata !1390, metadata !DIExpression()), !dbg !1384, !psr.id !1400
  ret void, !dbg !1401, !psr.id !1402
}

; Function Attrs: noinline nounwind uwtable
define internal void @fmul_scalar(i64* %0, i64* %1, i64 %2) #0 !dbg !1403 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1404, metadata !DIExpression()), !dbg !1405, !psr.id !1406
  call void @llvm.dbg.value(metadata i64* %1, metadata !1407, metadata !DIExpression()), !dbg !1405, !psr.id !1408
  call void @llvm.dbg.value(metadata i64 %2, metadata !1409, metadata !DIExpression()), !dbg !1405, !psr.id !1410
  call void @llvm.dbg.value(metadata i64 %2, metadata !1411, metadata !DIExpression()), !dbg !1405, !psr.id !1412
  %4 = call i64 asm sideeffect "  mulxq 0($2), %r8, %rcx;  mulxq 8($2), %r9, %rbx;  add %rcx, %r9;  mov $$0, %rcx;  mulxq 16($2), %r10, %r13;  adcx %rbx, %r10;  mulxq 24($2), %r11, %rax;  adcx %r13, %r11;  adcx %rcx, %rax;  mov $$38, %rdx;  imul %rdx, %rax;  add %rax, %r8;  adcx %rcx, %r9;  movq %r9, 8($1);  adcx %rcx, %r10;  movq %r10, 16($1);  adcx %rcx, %r11;  movq %r11, 24($1);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 0($1);", "=&{rdx},r,r,0,~{rax},~{rbx},~{rcx},~{r8},~{r9},~{r10},~{r11},~{r13},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64 %2) #5, !dbg !1413, !srcloc !1414, !psr.id !1415, !ValueTainted !425, !PointTainted !423
  call void @llvm.dbg.value(metadata i64 %4, metadata !1411, metadata !DIExpression()), !dbg !1405, !psr.id !1416
  ret void, !dbg !1417, !psr.id !1418
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsqr2(i64* %0, i64* %1, i64* %2) #0 !dbg !1419 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1420, metadata !DIExpression()), !dbg !1421, !psr.id !1422
  call void @llvm.dbg.value(metadata i64* %1, metadata !1423, metadata !DIExpression()), !dbg !1421, !psr.id !1424
  call void @llvm.dbg.value(metadata i64* %2, metadata !1425, metadata !DIExpression()), !dbg !1421, !psr.id !1426
  %4 = call { i64*, i64* } asm sideeffect "  movq 0($0), %rdx;  mulxq 8($0), %r8, %r14;  xor %r15d, %r15d;  mulxq 16($0), %r9, %r10;  adcx %r14, %r9;  mulxq 24($0), %rax, %rcx;  adcx %rax, %r10;  movq 24($0), %rdx;  mulxq 8($0), %r11, %rbx;  adcx %rcx, %r11;  mulxq 16($0), %rax, %r13;  adcx %rax, %rbx;  movq 8($0), %rdx;  adcx %r15, %r13;  mulxq 16($0), %rax, %rcx;  mov $$0, %r14;  xor %r15d, %r15d;  adox %rax, %r10;  adcx %r8, %r8;  adox %rcx, %r11;  adcx %r9, %r9;  adox %r15, %rbx;  adcx %r10, %r10;  adox %r15, %r13;  adcx %r11, %r11;  adox %r15, %r14;  adcx %rbx, %rbx;  adcx %r13, %r13;  adcx %r14, %r14;  movq 0($0), %rdx;  mulx %rdx, %rax, %rcx;  movq %rax, 0($1);  add %rcx, %r8;  movq %r8, 8($1);  movq 8($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r9;  movq %r9, 16($1);  adcx %rcx, %r10;  movq %r10, 24($1);  movq 16($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r11;  movq %r11, 32($1);  adcx %rcx, %rbx;  movq %rbx, 40($1);  movq 24($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r13;  movq %r13, 48($1);  adcx %rcx, %r14;  movq %r14, 56($1);  movq 32($0), %rdx;  mulxq 40($0), %r8, %r14;  xor %r15d, %r15d;  mulxq 48($0), %r9, %r10;  adcx %r14, %r9;  mulxq 56($0), %rax, %rcx;  adcx %rax, %r10;  movq 56($0), %rdx;  mulxq 40($0), %r11, %rbx;  adcx %rcx, %r11;  mulxq 48($0), %rax, %r13;  adcx %rax, %rbx;  movq 40($0), %rdx;  adcx %r15, %r13;  mulxq 48($0), %rax, %rcx;  mov $$0, %r14;  xor %r15d, %r15d;  adox %rax, %r10;  adcx %r8, %r8;  adox %rcx, %r11;  adcx %r9, %r9;  adox %r15, %rbx;  adcx %r10, %r10;  adox %r15, %r13;  adcx %r11, %r11;  adox %r15, %r14;  adcx %rbx, %rbx;  adcx %r13, %r13;  adcx %r14, %r14;  movq 32($0), %rdx;  mulx %rdx, %rax, %rcx;  movq %rax, 64($1);  add %rcx, %r8;  movq %r8, 72($1);  movq 40($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r9;  movq %r9, 80($1);  adcx %rcx, %r10;  movq %r10, 88($1);  movq 48($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r11;  movq %r11, 96($1);  adcx %rcx, %rbx;  movq %rbx, 104($1);  movq 56($0), %rdx;  mulx %rdx, %rax, %rcx;  adcx %rax, %r13;  movq %r13, 112($1);  adcx %rcx, %r14;  movq %r14, 120($1);  mov $1, $0;  mov $2, $1;  mov $$38, %rdx;  mulxq 32($0), %r8, %r13;  xor %ecx, %ecx;  adoxq 0($0), %r8;  mulxq 40($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 8($0), %r9;  mulxq 48($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 16($0), %r10;  mulxq 56($0), %r11, %rax;  adcx %r13, %r11;  adoxq 24($0), %r11;  adcx %rcx, %rax;  adox %rcx, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx %rcx, %r9;  movq %r9, 8($1);  adcx %rcx, %r10;  movq %r10, 16($1);  adcx %rcx, %r11;  movq %r11, 24($1);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 0($1);  mov $$38, %rdx;  mulxq 96($0), %r8, %r13;  xor %ecx, %ecx;  adoxq 64($0), %r8;  mulxq 104($0), %r9, %rbx;  adcx %r13, %r9;  adoxq 72($0), %r9;  mulxq 112($0), %r10, %r13;  adcx %rbx, %r10;  adoxq 80($0), %r10;  mulxq 120($0), %r11, %rax;  adcx %r13, %r11;  adoxq 88($0), %r11;  adcx %rcx, %rax;  adox %rcx, %rax;  imul %rdx, %rax;  add %rax, %r8;  adcx %rcx, %r9;  movq %r9, 40($1);  adcx %rcx, %r10;  movq %r10, 48($1);  adcx %rcx, %r11;  movq %r11, 56($1);  mov $$0, %rax;  cmovc %rdx, %rax;  add %rax, %r8;  movq %r8, 32($1);", "=&r,=&r,r,0,1,~{rax},~{rbx},~{rcx},~{rdx},~{r8},~{r9},~{r10},~{r11},~{r13},~{r14},~{r15},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2) #5, !dbg !1427, !srcloc !1428, !psr.id !1429, !ValueTainted !425, !PointTainted !423
  %5 = extractvalue { i64*, i64* } %4, 0, !dbg !1427, !psr.id !1430
  %6 = extractvalue { i64*, i64* } %4, 1, !dbg !1427, !psr.id !1431
  call void @llvm.dbg.value(metadata i64* %5, metadata !1423, metadata !DIExpression()), !dbg !1421, !psr.id !1432
  call void @llvm.dbg.value(metadata i64* %6, metadata !1425, metadata !DIExpression()), !dbg !1421, !psr.id !1433
  ret void, !dbg !1434, !psr.id !1435
}

; Function Attrs: noinline nounwind uwtable
define internal void @fsub(i64* %0, i64* %1, i64* %2) #0 !dbg !1436 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1437, metadata !DIExpression()), !dbg !1438, !psr.id !1439
  call void @llvm.dbg.value(metadata i64* %1, metadata !1440, metadata !DIExpression()), !dbg !1438, !psr.id !1441
  call void @llvm.dbg.value(metadata i64* %2, metadata !1442, metadata !DIExpression()), !dbg !1438, !psr.id !1443
  call void asm sideeffect "  movq 0($1), %r8;  subq 0($2), %r8;  movq 8($1), %r9;  sbbq 8($2), %r9;  movq 16($1), %r10;  sbbq 16($2), %r10;  movq 24($1), %r11;  sbbq 24($2), %r11;  mov $$0, %rax;  mov $$38, %rcx;  cmovc %rcx, %rax;  sub %rax, %r8;  sbb $$0, %r9;  sbb $$0, %r10;  sbb $$0, %r11;  mov $$0, %rax;  cmovc %rcx, %rax;  sub %rax, %r8;  movq %r8, 0($0);  movq %r9, 8($0);  movq %r10, 16($0);  movq %r11, 24($0);", "r,r,r,~{rax},~{rcx},~{r8},~{r9},~{r10},~{r11},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2) #5, !dbg !1444, !srcloc !1445, !psr.id !1446
  ret void, !dbg !1447, !psr.id !1448
}

; Function Attrs: noinline nounwind uwtable
define internal void @fadd(i64* %0, i64* %1, i64* %2) #0 !dbg !1449 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1450, metadata !DIExpression()), !dbg !1451, !psr.id !1452
  call void @llvm.dbg.value(metadata i64* %1, metadata !1453, metadata !DIExpression()), !dbg !1451, !psr.id !1454
  call void @llvm.dbg.value(metadata i64* %2, metadata !1455, metadata !DIExpression()), !dbg !1451, !psr.id !1456
  %4 = call i64* asm sideeffect "  movq 0($0), %r8;  addq 0($2), %r8;  movq 8($0), %r9;  adcxq 8($2), %r9;  movq 16($0), %r10;  adcxq 16($2), %r10;  movq 24($0), %r11;  adcxq 24($2), %r11;  mov $$0, %rax;  mov $$38, $0;  cmovc $0, %rax;  xor %ecx, %ecx;  add %rax, %r8;  adcx %rcx, %r9;  movq %r9, 8($1);  adcx %rcx, %r10;  movq %r10, 16($1);  adcx %rcx, %r11;  movq %r11, 24($1);  mov $$0, %rax;  cmovc $0, %rax;  add %rax, %r8;  movq %r8, 0($1);", "=&r,r,r,0,~{rax},~{rcx},~{r8},~{r9},~{r10},~{r11},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64* %1, i64* %2) #5, !dbg !1457, !srcloc !1458, !psr.id !1459, !ValueTainted !425, !PointTainted !423
  call void @llvm.dbg.value(metadata i64* %4, metadata !1455, metadata !DIExpression()), !dbg !1451, !psr.id !1460
  ret void, !dbg !1461, !psr.id !1462
}

; Function Attrs: noinline nounwind uwtable
define internal void @cswap2(i64 %0, i64* %1, i64* %2) #0 !dbg !1463 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1464, metadata !DIExpression()), !dbg !1465, !psr.id !1466
  call void @llvm.dbg.value(metadata i64* %1, metadata !1467, metadata !DIExpression()), !dbg !1465, !psr.id !1468
  call void @llvm.dbg.value(metadata i64* %2, metadata !1469, metadata !DIExpression()), !dbg !1465, !psr.id !1470
  %4 = call i64 asm sideeffect "  add $$18446744073709551615, $0;  movq 0($1), %r8;  movq 0($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 0($1);  movq %r9, 0($2);  movq 8($1), %r8;  movq 8($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 8($1);  movq %r9, 8($2);  movq 16($1), %r8;  movq 16($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 16($1);  movq %r9, 16($2);  movq 24($1), %r8;  movq 24($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 24($1);  movq %r9, 24($2);  movq 32($1), %r8;  movq 32($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 32($1);  movq %r9, 32($2);  movq 40($1), %r8;  movq 40($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 40($1);  movq %r9, 40($2);  movq 48($1), %r8;  movq 48($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 48($1);  movq %r9, 48($2);  movq 56($1), %r8;  movq 56($2), %r9;  mov %r8, %r10;  cmovc %r9, %r8;  cmovc %r10, %r9;  movq %r8, 56($1);  movq %r9, 56($2);", "=&r,r,r,0,~{r8},~{r9},~{r10},~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %1, i64* %2, i64 %0) #5, !dbg !1471, !srcloc !1472, !psr.id !1473, !ValueTainted !425, !PointTainted !423
  call void @llvm.dbg.value(metadata i64 %4, metadata !1464, metadata !DIExpression()), !dbg !1465, !psr.id !1474
  ret void, !dbg !1475, !psr.id !1476
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_64_secret_to_public(i8* %0, i8* %1) #0 !dbg !1477 {
  %3 = alloca [32 x i8], align 16, !psr.id !1480
  call void @llvm.dbg.value(metadata i8* %0, metadata !1481, metadata !DIExpression()), !dbg !1482, !psr.id !1483
  call void @llvm.dbg.value(metadata i8* %1, metadata !1484, metadata !DIExpression()), !dbg !1482, !psr.id !1485
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !1486, metadata !DIExpression()), !dbg !1488, !psr.id !1489
  %4 = bitcast [32 x i8]* %3 to i8*, !dbg !1488, !psr.id !1490
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 32, i1 false), !dbg !1488, !psr.id !1491
  call void @llvm.dbg.value(metadata i32 0, metadata !1492, metadata !DIExpression()), !dbg !1494, !psr.id !1495
  br label %5, !dbg !1496, !psr.id !1497

5:                                                ; preds = %14, %2
  %.0 = phi i32 [ 0, %2 ], [ %15, %14 ], !dbg !1494, !psr.id !1498
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1492, metadata !DIExpression()), !dbg !1494, !psr.id !1499
  %6 = icmp ult i32 %.0, 32, !dbg !1500, !psr.id !1502
  br i1 %6, label %7, label %16, !dbg !1503, !psr.id !1504

7:                                                ; preds = %5
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !1505, !psr.id !1507
  call void @llvm.dbg.value(metadata i8* %8, metadata !1508, metadata !DIExpression()), !dbg !1509, !psr.id !1510
  %9 = zext i32 %.0 to i64, !dbg !1511, !psr.id !1512
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* bitcast (<{ i8, [31 x i8] }>* @g25519 to [32 x i8]*), i64 0, i64 %9, !dbg !1511, !psr.id !1513
  %11 = load i8, i8* %10, align 1, !dbg !1511, !psr.id !1514
  call void @llvm.dbg.value(metadata i8 %11, metadata !1515, metadata !DIExpression()), !dbg !1509, !psr.id !1516
  %12 = zext i32 %.0 to i64, !dbg !1517, !psr.id !1518
  %13 = getelementptr inbounds i8, i8* %8, i64 %12, !dbg !1517, !psr.id !1519
  store i8 %11, i8* %13, align 1, !dbg !1520, !psr.id !1521
  br label %14, !dbg !1522, !psr.id !1523

14:                                               ; preds = %7
  %15 = add i32 %.0, 1, !dbg !1524, !psr.id !1525
  call void @llvm.dbg.value(metadata i32 %15, metadata !1492, metadata !DIExpression()), !dbg !1494, !psr.id !1526
  br label %5, !dbg !1527, !llvm.loop !1528, !psr.id !1530

16:                                               ; preds = %5
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !1531, !psr.id !1532
  call void @Hacl_Curve25519_64_scalarmult(i8* %0, i8* %1, i8* %17), !dbg !1533, !psr.id !1534
  ret void, !dbg !1535, !psr.id !1536
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Hacl_Curve25519_64_ecdh(i8* %0, i8* %1, i8* %2) #0 !dbg !1537 {
  %4 = alloca [32 x i8], align 16, !psr.id !1541
  call void @llvm.dbg.value(metadata i8* %0, metadata !1542, metadata !DIExpression()), !dbg !1543, !psr.id !1544
  call void @llvm.dbg.value(metadata i8* %1, metadata !1545, metadata !DIExpression()), !dbg !1543, !psr.id !1546
  call void @llvm.dbg.value(metadata i8* %2, metadata !1547, metadata !DIExpression()), !dbg !1543, !psr.id !1548
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !1549, metadata !DIExpression()), !dbg !1550, !psr.id !1551
  %5 = bitcast [32 x i8]* %4 to i8*, !dbg !1550, !psr.id !1552
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 32, i1 false), !dbg !1550, !psr.id !1553
  call void @Hacl_Curve25519_64_scalarmult(i8* %0, i8* %1, i8* %2), !dbg !1554, !psr.id !1555
  call void @llvm.dbg.value(metadata i8 -1, metadata !1556, metadata !DIExpression()), !dbg !1543, !psr.id !1557
  call void @llvm.dbg.value(metadata i32 0, metadata !1558, metadata !DIExpression()), !dbg !1560, !psr.id !1561
  br label %6, !dbg !1562, !psr.id !1563

6:                                                ; preds = %20, %3
  %.01 = phi i8 [ -1, %3 ], [ %19, %20 ], !dbg !1543, !psr.id !1564, !ValueTainted !425
  %.0 = phi i32 [ 0, %3 ], [ %21, %20 ], !dbg !1560, !psr.id !1565
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1558, metadata !DIExpression()), !dbg !1560, !psr.id !1566
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1556, metadata !DIExpression()), !dbg !1543, !psr.id !1567
  %7 = icmp ult i32 %.0, 32, !dbg !1568, !psr.id !1570
  br i1 %7, label %8, label %22, !dbg !1571, !psr.id !1572

8:                                                ; preds = %6
  %9 = zext i32 %.0 to i64, !dbg !1573, !psr.id !1575
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1573, !psr.id !1576, !PointTainted !423
  %11 = load i8, i8* %10, align 1, !dbg !1573, !psr.id !1577, !ValueTainted !425
  %12 = zext i32 %.0 to i64, !dbg !1578, !psr.id !1579
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %12, !dbg !1578, !psr.id !1580
  %14 = load i8, i8* %13, align 1, !dbg !1578, !psr.id !1581
  %15 = call zeroext i8 @FStar_UInt8_eq_mask(i8 zeroext %11, i8 zeroext %14), !dbg !1582, !psr.id !1583, !ValueTainted !425
  call void @llvm.dbg.value(metadata i8 %15, metadata !1584, metadata !DIExpression()), !dbg !1585, !psr.id !1586
  %16 = zext i8 %15 to i32, !dbg !1587, !psr.id !1588, !ValueTainted !425
  %17 = zext i8 %.01 to i32, !dbg !1589, !psr.id !1590, !ValueTainted !425
  %18 = and i32 %16, %17, !dbg !1591, !psr.id !1592, !ValueTainted !425
  %19 = trunc i32 %18 to i8, !dbg !1587, !psr.id !1593, !ValueTainted !425
  call void @llvm.dbg.value(metadata i8 %19, metadata !1556, metadata !DIExpression()), !dbg !1543, !psr.id !1594
  br label %20, !dbg !1595, !psr.id !1596

20:                                               ; preds = %8
  %21 = add i32 %.0, 1, !dbg !1597, !psr.id !1598
  call void @llvm.dbg.value(metadata i32 %21, metadata !1558, metadata !DIExpression()), !dbg !1560, !psr.id !1599
  br label %6, !dbg !1600, !llvm.loop !1601, !psr.id !1603

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1604, metadata !DIExpression()), !dbg !1543, !psr.id !1605
  %23 = zext i8 %.01 to i32, !dbg !1606, !psr.id !1607, !ValueTainted !425
  %24 = icmp eq i32 %23, 255, !dbg !1608, !psr.id !1609, !ValueTainted !425
  %25 = zext i1 %24 to i8, !dbg !1610, !psr.id !1611, !ValueTainted !425
  call void @llvm.dbg.value(metadata i8 %25, metadata !1612, metadata !DIExpression()), !dbg !1543, !psr.id !1613
  %26 = trunc i8 %25 to i1, !dbg !1614, !psr.id !1615, !ValueTainted !425
  %27 = xor i1 %26, true, !dbg !1616, !psr.id !1617, !ValueTainted !425
  ret i1 %27, !dbg !1618, !psr.id !1619
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @FStar_UInt8_eq_mask(i8 zeroext %0, i8 zeroext %1) #0 !dbg !1620 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1623, metadata !DIExpression()), !dbg !1624, !psr.id !1625
  call void @llvm.dbg.value(metadata i8 %1, metadata !1626, metadata !DIExpression()), !dbg !1624, !psr.id !1627
  %3 = zext i8 %0 to i32, !dbg !1628, !psr.id !1629, !ValueTainted !425
  %4 = zext i8 %1 to i32, !dbg !1630, !psr.id !1631
  %5 = xor i32 %3, %4, !dbg !1632, !psr.id !1633, !ValueTainted !425
  %6 = trunc i32 %5 to i8, !dbg !1628, !psr.id !1634, !ValueTainted !425
  call void @llvm.dbg.value(metadata i8 %6, metadata !1635, metadata !DIExpression()), !dbg !1624, !psr.id !1636
  %7 = zext i8 %6 to i32, !dbg !1637, !psr.id !1638, !ValueTainted !425
  %8 = xor i32 %7, -1, !dbg !1639, !psr.id !1640, !ValueTainted !425
  %9 = add nsw i32 %8, 1, !dbg !1641, !psr.id !1642, !ValueTainted !425
  %10 = trunc i32 %9 to i8, !dbg !1639, !psr.id !1643, !ValueTainted !425
  call void @llvm.dbg.value(metadata i8 %10, metadata !1644, metadata !DIExpression()), !dbg !1624, !psr.id !1645
  %11 = zext i8 %6 to i32, !dbg !1646, !psr.id !1647, !ValueTainted !425
  %12 = zext i8 %10 to i32, !dbg !1648, !psr.id !1649, !ValueTainted !425
  %13 = or i32 %11, %12, !dbg !1650, !psr.id !1651, !ValueTainted !425
  %14 = trunc i32 %13 to i8, !dbg !1646, !psr.id !1652, !ValueTainted !425
  call void @llvm.dbg.value(metadata i8 %14, metadata !1653, metadata !DIExpression()), !dbg !1624, !psr.id !1654
  %15 = zext i8 %14 to i32, !dbg !1655, !psr.id !1656, !ValueTainted !425
  %16 = ashr i32 %15, 7, !dbg !1657, !psr.id !1658, !ValueTainted !425
  %17 = trunc i32 %16 to i8, !dbg !1655, !psr.id !1659, !ValueTainted !425
  call void @llvm.dbg.value(metadata i8 %17, metadata !1660, metadata !DIExpression()), !dbg !1624, !psr.id !1661
  %18 = zext i8 %17 to i32, !dbg !1662, !psr.id !1663, !ValueTainted !425
  %19 = sub nsw i32 %18, 1, !dbg !1664, !psr.id !1665, !ValueTainted !425
  %20 = trunc i32 %19 to i8, !dbg !1662, !psr.id !1666, !ValueTainted !425
  ret i8 %20, !dbg !1667, !psr.id !1668
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_64_ecdh_wrapper(i8* %0, i8* %1, i8* %2) #0 !dbg !1669 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1670, metadata !DIExpression()), !dbg !1671, !psr.id !1672
  call void @llvm.dbg.value(metadata i8* %1, metadata !1673, metadata !DIExpression()), !dbg !1671, !psr.id !1674
  call void @llvm.dbg.value(metadata i8* %2, metadata !1675, metadata !DIExpression()), !dbg !1671, !psr.id !1676
  %4 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1677, !psr.id !1678
  call void @public_in(%struct.smack_value* %4), !dbg !1679, !psr.id !1680
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1681, !psr.id !1682
  call void @public_in(%struct.smack_value* %5), !dbg !1683, !psr.id !1684
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1685, !psr.id !1686
  call void @public_in(%struct.smack_value* %6), !dbg !1687, !psr.id !1688
  %7 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !1689, !psr.id !1690
  call void @public_in(%struct.smack_value* %7), !dbg !1691, !psr.id !1692
  %8 = call zeroext i1 @Hacl_Curve25519_64_ecdh(i8* %0, i8* %1, i8* %2), !dbg !1693, !psr.id !1694
  ret void, !dbg !1695, !psr.id !1696
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Hacl_Curve25519_64_ecdh_wrapper_t() #0 !dbg !1697 {
  %1 = call i8* (...) @getpt1(), !dbg !1700, !psr.id !1701
  call void @llvm.dbg.value(metadata i8* %1, metadata !1702, metadata !DIExpression()), !dbg !1703, !psr.id !1704
  %2 = call i8* (...) @getpt2(), !dbg !1705, !psr.id !1706
  call void @llvm.dbg.value(metadata i8* %2, metadata !1707, metadata !DIExpression()), !dbg !1703, !psr.id !1708
  %3 = call i8* (...) @getpt3(), !dbg !1709, !psr.id !1710
  call void @llvm.dbg.value(metadata i8* %3, metadata !1711, metadata !DIExpression()), !dbg !1703, !psr.id !1712
  %4 = call zeroext i1 @Hacl_Curve25519_64_ecdh(i8* %3, i8* %2, i8* %1), !dbg !1713, !psr.id !1714
  ret void, !dbg !1715, !psr.id !1716
}

declare dso_local i8* @getpt1(...) #4

declare dso_local i8* @getpt2(...) #4

declare dso_local i8* @getpt3(...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @Hacl_Curve25519_64_ecdh_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2, !23}
!llvm.ident = !{!25, !25}
!llvm.module.flags = !{!26, !27, !28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g25519", scope: !2, file: !3, line: 114, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../hacl-star/dist/gcc-compatible/Hacl_Curve25519_64.c", directory: "/home/luwei/bech-back/HACL/Curve25519-64")
!4 = !{}
!5 = !{!6, !11, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !13)
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!0}
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !20)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!20 = !{!21}
!21 = !DISubrange(count: 32)
!22 = !{!"0"}
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "Hacl_Curve25519_64_ecdh.c", directory: "/home/luwei/bech-back/HACL/Curve25519-64")
!25 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = distinct !DISubprogram(name: "Hacl_Curve25519_64_scalarmult", scope: !3, file: !3, line: 343, type: !30, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!33 = !{!"1"}
!34 = !{!"2"}
!35 = !DILocalVariable(name: "out", arg: 1, scope: !29, file: !3, line: 343, type: !32)
!36 = !DILocation(line: 0, scope: !29)
!37 = !{!"3"}
!38 = !DILocalVariable(name: "priv", arg: 2, scope: !29, file: !3, line: 343, type: !32)
!39 = !{!"4"}
!40 = !DILocalVariable(name: "pub", arg: 3, scope: !29, file: !3, line: 343, type: !32)
!41 = !{!"5"}
!42 = !DILocalVariable(name: "init", scope: !29, file: !3, line: 345, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 8)
!46 = !DILocation(line: 345, column: 12, scope: !29)
!47 = !{!"6"}
!48 = !{!"7"}
!49 = !{!"8"}
!50 = !DILocalVariable(name: "tmp", scope: !29, file: !3, line: 346, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 4)
!54 = !DILocation(line: 346, column: 12, scope: !29)
!55 = !{!"9"}
!56 = !{!"10"}
!57 = !{!"11"}
!58 = !DILocation(line: 347, column: 3, scope: !29)
!59 = !{!"12"}
!60 = !DILocalVariable(name: "i", scope: !61, file: !3, line: 347, type: !6)
!61 = distinct !DILexicalBlock(scope: !29, file: !3, line: 347, column: 3)
!62 = !DILocation(line: 0, scope: !61)
!63 = !{!"13"}
!64 = !DILocation(line: 347, column: 3, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !3, line: 347, column: 3)
!66 = !{!"14"}
!67 = !DILocalVariable(name: "os", scope: !65, file: !3, line: 347, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!69 = !DILocation(line: 0, scope: !65)
!70 = !{!"15"}
!71 = !{!"16"}
!72 = !{!"17"}
!73 = !{!"18"}
!74 = !DILocalVariable(name: "bj", scope: !65, file: !3, line: 347, type: !32)
!75 = !{!"19"}
!76 = !{!"20"}
!77 = !{!"21"}
!78 = !DILocalVariable(name: "u", scope: !65, file: !3, line: 347, type: !11)
!79 = !{!"22"}
!80 = !DILocalVariable(name: "r", scope: !65, file: !3, line: 347, type: !11)
!81 = !{!"23"}
!82 = !DILocalVariable(name: "x", scope: !65, file: !3, line: 347, type: !11)
!83 = !{!"24"}
!84 = !{!"25"}
!85 = !{!"26"}
!86 = !{!"27"}
!87 = !{!"28"}
!88 = !{!"29"}
!89 = !DILocation(line: 347, column: 3, scope: !90)
!90 = distinct !DILexicalBlock(scope: !61, file: !3, line: 347, column: 3)
!91 = !{!"30"}
!92 = !DILocalVariable(name: "os", scope: !90, file: !3, line: 347, type: !68)
!93 = !DILocation(line: 0, scope: !90)
!94 = !{!"31"}
!95 = !{!"32"}
!96 = !{!"33"}
!97 = !{!"34"}
!98 = !DILocalVariable(name: "bj", scope: !90, file: !3, line: 347, type: !32)
!99 = !{!"35"}
!100 = !{!"36"}
!101 = !{!"37"}
!102 = !DILocalVariable(name: "u", scope: !90, file: !3, line: 347, type: !11)
!103 = !{!"38"}
!104 = !DILocalVariable(name: "r", scope: !90, file: !3, line: 347, type: !11)
!105 = !{!"39"}
!106 = !DILocalVariable(name: "x", scope: !90, file: !3, line: 347, type: !11)
!107 = !{!"40"}
!108 = !{!"41"}
!109 = !{!"42"}
!110 = !{!"43"}
!111 = !{!"44"}
!112 = !{!"45"}
!113 = !DILocation(line: 347, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !61, file: !3, line: 347, column: 3)
!115 = !{!"46"}
!116 = !DILocalVariable(name: "os", scope: !114, file: !3, line: 347, type: !68)
!117 = !DILocation(line: 0, scope: !114)
!118 = !{!"47"}
!119 = !{!"48"}
!120 = !{!"49"}
!121 = !{!"50"}
!122 = !DILocalVariable(name: "bj", scope: !114, file: !3, line: 347, type: !32)
!123 = !{!"51"}
!124 = !{!"52"}
!125 = !{!"53"}
!126 = !DILocalVariable(name: "u", scope: !114, file: !3, line: 347, type: !11)
!127 = !{!"54"}
!128 = !DILocalVariable(name: "r", scope: !114, file: !3, line: 347, type: !11)
!129 = !{!"55"}
!130 = !DILocalVariable(name: "x", scope: !114, file: !3, line: 347, type: !11)
!131 = !{!"56"}
!132 = !{!"57"}
!133 = !{!"58"}
!134 = !{!"59"}
!135 = !{!"60"}
!136 = !{!"61"}
!137 = !DILocation(line: 347, column: 3, scope: !138)
!138 = distinct !DILexicalBlock(scope: !61, file: !3, line: 347, column: 3)
!139 = !{!"62"}
!140 = !DILocalVariable(name: "os", scope: !138, file: !3, line: 347, type: !68)
!141 = !DILocation(line: 0, scope: !138)
!142 = !{!"63"}
!143 = !{!"64"}
!144 = !{!"65"}
!145 = !{!"66"}
!146 = !DILocalVariable(name: "bj", scope: !138, file: !3, line: 347, type: !32)
!147 = !{!"67"}
!148 = !{!"68"}
!149 = !{!"69"}
!150 = !DILocalVariable(name: "u", scope: !138, file: !3, line: 347, type: !11)
!151 = !{!"70"}
!152 = !DILocalVariable(name: "r", scope: !138, file: !3, line: 347, type: !11)
!153 = !{!"71"}
!154 = !DILocalVariable(name: "x", scope: !138, file: !3, line: 347, type: !11)
!155 = !{!"72"}
!156 = !{!"73"}
!157 = !{!"74"}
!158 = !{!"75"}
!159 = !{!"76"}
!160 = !{!"77"}
!161 = !DILocation(line: 347, column: 3, scope: !61)
!162 = !{!"78"}
!163 = !DILocation(line: 357, column: 19, scope: !29)
!164 = !{!"79"}
!165 = !{!"80"}
!166 = !DILocalVariable(name: "tmp3", scope: !29, file: !3, line: 357, type: !11)
!167 = !{!"81"}
!168 = !DILocation(line: 358, column: 18, scope: !29)
!169 = !{!"82"}
!170 = !DILocation(line: 358, column: 3, scope: !29)
!171 = !{!"83"}
!172 = !DILocation(line: 358, column: 11, scope: !29)
!173 = !{!"84"}
!174 = !DILocation(line: 359, column: 17, scope: !29)
!175 = !{!"85"}
!176 = !DILocalVariable(name: "x", scope: !29, file: !3, line: 359, type: !68)
!177 = !{!"86"}
!178 = !DILocation(line: 360, column: 17, scope: !29)
!179 = !{!"87"}
!180 = !DILocation(line: 360, column: 22, scope: !29)
!181 = !{!"88"}
!182 = !DILocalVariable(name: "z", scope: !29, file: !3, line: 360, type: !68)
!183 = !{!"89"}
!184 = !DILocation(line: 361, column: 3, scope: !29)
!185 = !{!"90"}
!186 = !DILocation(line: 361, column: 9, scope: !29)
!187 = !{!"91"}
!188 = !DILocation(line: 362, column: 3, scope: !29)
!189 = !{!"92"}
!190 = !DILocation(line: 362, column: 9, scope: !29)
!191 = !{!"93"}
!192 = !DILocation(line: 363, column: 3, scope: !29)
!193 = !{!"94"}
!194 = !DILocation(line: 363, column: 9, scope: !29)
!195 = !{!"95"}
!196 = !DILocation(line: 364, column: 3, scope: !29)
!197 = !{!"96"}
!198 = !DILocation(line: 364, column: 9, scope: !29)
!199 = !{!"97"}
!200 = !DILocation(line: 365, column: 11, scope: !29)
!201 = !{!"98"}
!202 = !{!"99"}
!203 = !DILocation(line: 365, column: 3, scope: !29)
!204 = !{!"100"}
!205 = !DILocation(line: 365, column: 9, scope: !29)
!206 = !{!"101"}
!207 = !DILocation(line: 366, column: 11, scope: !29)
!208 = !{!"102"}
!209 = !{!"103"}
!210 = !DILocation(line: 366, column: 3, scope: !29)
!211 = !{!"104"}
!212 = !DILocation(line: 366, column: 9, scope: !29)
!213 = !{!"105"}
!214 = !DILocation(line: 367, column: 11, scope: !29)
!215 = !{!"106"}
!216 = !{!"107"}
!217 = !DILocation(line: 367, column: 3, scope: !29)
!218 = !{!"108"}
!219 = !DILocation(line: 367, column: 9, scope: !29)
!220 = !{!"109"}
!221 = !DILocation(line: 368, column: 11, scope: !29)
!222 = !{!"110"}
!223 = !{!"111"}
!224 = !DILocation(line: 368, column: 3, scope: !29)
!225 = !{!"112"}
!226 = !DILocation(line: 368, column: 9, scope: !29)
!227 = !{!"113"}
!228 = !DILocation(line: 369, column: 21, scope: !29)
!229 = !{!"114"}
!230 = !DILocation(line: 369, column: 33, scope: !29)
!231 = !{!"115"}
!232 = !DILocation(line: 369, column: 3, scope: !29)
!233 = !{!"116"}
!234 = !DILocation(line: 370, column: 21, scope: !29)
!235 = !{!"117"}
!236 = !DILocation(line: 370, column: 3, scope: !29)
!237 = !{!"118"}
!238 = !DILocation(line: 371, column: 1, scope: !29)
!239 = !{!"119"}
!240 = distinct !DISubprogram(name: "load64", scope: !241, file: !241, line: 172, type: !242, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!241 = !DIFile(filename: "../hacl-star/dist/karamel/include/krml/lowstar_endianness.h", directory: "/home/luwei/bech-back/HACL/Curve25519-64")
!242 = !DISubroutineType(types: !243)
!243 = !{!11, !32}
!244 = !{!"120"}
!245 = !DILocalVariable(name: "b", arg: 1, scope: !240, file: !241, line: 172, type: !32)
!246 = !DILocation(line: 0, scope: !240)
!247 = !{!"121"}
!248 = !DILocalVariable(name: "x", scope: !240, file: !241, line: 173, type: !11)
!249 = !DILocation(line: 173, column: 12, scope: !240)
!250 = !{!"122"}
!251 = !DILocation(line: 174, column: 3, scope: !240)
!252 = !{!"123"}
!253 = !{!"124"}
!254 = !DILocation(line: 175, column: 10, scope: !240)
!255 = !{!"125"}
!256 = !DILocation(line: 175, column: 3, scope: !240)
!257 = !{!"126"}
!258 = distinct !DISubprogram(name: "__uint64_identity", scope: !259, file: !259, line: 45, type: !260, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h", directory: "")
!260 = !DISubroutineType(types: !261)
!261 = !{!12, !12}
!262 = !DILocalVariable(name: "__x", arg: 1, scope: !258, file: !259, line: 45, type: !12)
!263 = !DILocation(line: 0, scope: !258)
!264 = !{!"127"}
!265 = !DILocation(line: 47, column: 3, scope: !258)
!266 = !{!"128"}
!267 = distinct !DISubprogram(name: "montgomery_ladder", scope: !3, file: !3, line: 182, type: !268, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !68, !32, !68}
!270 = !{!"129"}
!271 = !{!"130"}
!272 = !DILocalVariable(name: "out", arg: 1, scope: !267, file: !3, line: 182, type: !68)
!273 = !DILocation(line: 0, scope: !267)
!274 = !{!"131"}
!275 = !DILocalVariable(name: "key", arg: 2, scope: !267, file: !3, line: 182, type: !32)
!276 = !{!"132"}
!277 = !DILocalVariable(name: "init", arg: 3, scope: !267, file: !3, line: 182, type: !68)
!278 = !{!"133"}
!279 = !DILocalVariable(name: "tmp2", scope: !267, file: !3, line: 184, type: !280)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 16)
!283 = !DILocation(line: 184, column: 12, scope: !267)
!284 = !{!"134"}
!285 = !{!"135"}
!286 = !{!"136"}
!287 = !DILocalVariable(name: "p01_tmp1_swap", scope: !267, file: !3, line: 185, type: !288)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2112, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 33)
!291 = !DILocation(line: 185, column: 12, scope: !267)
!292 = !{!"137"}
!293 = !{!"138"}
!294 = !{!"139"}
!295 = !DILocation(line: 186, column: 18, scope: !267)
!296 = !{!"140"}
!297 = !DILocalVariable(name: "p0", scope: !267, file: !3, line: 186, type: !68)
!298 = !{!"141"}
!299 = !DILocation(line: 187, column: 19, scope: !267)
!300 = !{!"142"}
!301 = !DILocalVariable(name: "p01", scope: !267, file: !3, line: 187, type: !68)
!302 = !{!"143"}
!303 = !DILocalVariable(name: "p03", scope: !267, file: !3, line: 188, type: !68)
!304 = !{!"144"}
!305 = !DILocation(line: 189, column: 23, scope: !267)
!306 = !{!"145"}
!307 = !DILocalVariable(name: "p11", scope: !267, file: !3, line: 189, type: !68)
!308 = !{!"146"}
!309 = !DILocation(line: 190, column: 3, scope: !267)
!310 = !{!"147"}
!311 = !{!"148"}
!312 = !{!"149"}
!313 = !DILocalVariable(name: "x0", scope: !267, file: !3, line: 191, type: !68)
!314 = !{!"150"}
!315 = !DILocation(line: 192, column: 22, scope: !267)
!316 = !{!"151"}
!317 = !DILocalVariable(name: "z0", scope: !267, file: !3, line: 192, type: !68)
!318 = !{!"152"}
!319 = !DILocation(line: 193, column: 3, scope: !267)
!320 = !{!"153"}
!321 = !DILocation(line: 193, column: 10, scope: !267)
!322 = !{!"154"}
!323 = !DILocation(line: 194, column: 3, scope: !267)
!324 = !{!"155"}
!325 = !DILocation(line: 194, column: 10, scope: !267)
!326 = !{!"156"}
!327 = !DILocation(line: 195, column: 3, scope: !267)
!328 = !{!"157"}
!329 = !DILocation(line: 195, column: 10, scope: !267)
!330 = !{!"158"}
!331 = !DILocation(line: 196, column: 3, scope: !267)
!332 = !{!"159"}
!333 = !DILocation(line: 196, column: 10, scope: !267)
!334 = !{!"160"}
!335 = !DILocation(line: 197, column: 3, scope: !267)
!336 = !{!"161"}
!337 = !DILocation(line: 197, column: 10, scope: !267)
!338 = !{!"162"}
!339 = !DILocation(line: 198, column: 3, scope: !267)
!340 = !{!"163"}
!341 = !DILocation(line: 198, column: 10, scope: !267)
!342 = !{!"164"}
!343 = !DILocation(line: 199, column: 3, scope: !267)
!344 = !{!"165"}
!345 = !DILocation(line: 199, column: 10, scope: !267)
!346 = !{!"166"}
!347 = !DILocation(line: 200, column: 3, scope: !267)
!348 = !{!"167"}
!349 = !DILocation(line: 200, column: 10, scope: !267)
!350 = !{!"168"}
!351 = !DILocation(line: 201, column: 24, scope: !267)
!352 = !{!"169"}
!353 = !DILocalVariable(name: "p01_tmp1", scope: !267, file: !3, line: 201, type: !68)
!354 = !{!"170"}
!355 = !DILocation(line: 202, column: 25, scope: !267)
!356 = !{!"171"}
!357 = !DILocalVariable(name: "p01_tmp11", scope: !267, file: !3, line: 202, type: !68)
!358 = !{!"172"}
!359 = !DILocation(line: 203, column: 19, scope: !267)
!360 = !{!"173"}
!361 = !DILocalVariable(name: "nq1", scope: !267, file: !3, line: 203, type: !68)
!362 = !{!"174"}
!363 = !DILocation(line: 204, column: 22, scope: !267)
!364 = !{!"175"}
!365 = !DILocation(line: 204, column: 36, scope: !267)
!366 = !{!"176"}
!367 = !DILocalVariable(name: "nq_p11", scope: !267, file: !3, line: 204, type: !68)
!368 = !{!"177"}
!369 = !DILocation(line: 205, column: 20, scope: !267)
!370 = !{!"178"}
!371 = !DILocation(line: 205, column: 34, scope: !267)
!372 = !{!"179"}
!373 = !DILocalVariable(name: "swap", scope: !267, file: !3, line: 205, type: !68)
!374 = !{!"180"}
!375 = !DILocation(line: 206, column: 3, scope: !267)
!376 = !{!"181"}
!377 = !DILocation(line: 207, column: 41, scope: !267)
!378 = !{!"182"}
!379 = !DILocation(line: 207, column: 3, scope: !267)
!380 = !{!"183"}
!381 = !DILocation(line: 208, column: 3, scope: !267)
!382 = !{!"184"}
!383 = !DILocation(line: 208, column: 12, scope: !267)
!384 = !{!"185"}
!385 = !DILocalVariable(name: "i", scope: !386, file: !3, line: 209, type: !6)
!386 = distinct !DILexicalBlock(scope: !267, file: !3, line: 209, column: 3)
!387 = !DILocation(line: 0, scope: !386)
!388 = !{!"186"}
!389 = !DILocation(line: 209, column: 8, scope: !386)
!390 = !{!"187"}
!391 = !{!"188"}
!392 = !{!"189"}
!393 = !DILocation(line: 209, column: 37, scope: !394)
!394 = distinct !DILexicalBlock(scope: !386, file: !3, line: 209, column: 3)
!395 = !{!"190"}
!396 = !DILocation(line: 209, column: 3, scope: !386)
!397 = !{!"191"}
!398 = !DILocation(line: 211, column: 27, scope: !399)
!399 = distinct !DILexicalBlock(scope: !394, file: !3, line: 210, column: 3)
!400 = !{!"192"}
!401 = !DILocalVariable(name: "p01_tmp12", scope: !399, file: !3, line: 211, type: !68)
!402 = !DILocation(line: 0, scope: !399)
!403 = !{!"193"}
!404 = !DILocation(line: 212, column: 23, scope: !399)
!405 = !{!"194"}
!406 = !DILocation(line: 212, column: 37, scope: !399)
!407 = !{!"195"}
!408 = !DILocalVariable(name: "swap1", scope: !399, file: !3, line: 212, type: !68)
!409 = !{!"196"}
!410 = !DILocalVariable(name: "nq2", scope: !399, file: !3, line: 213, type: !68)
!411 = !{!"197"}
!412 = !DILocation(line: 214, column: 34, scope: !399)
!413 = !{!"198"}
!414 = !DILocalVariable(name: "nq_p12", scope: !399, file: !3, line: 214, type: !68)
!415 = !{!"199"}
!416 = !DILocation(line: 217, column: 38, scope: !399)
!417 = !{!"200"}
!418 = !DILocation(line: 218, column: 7, scope: !399)
!419 = !{!"201"}
!420 = !DILocation(line: 217, column: 18, scope: !399)
!421 = !{!"202"}
!422 = !{!"203"}
!423 = !{!"PointTainted"}
!424 = !{!"204"}
!425 = !{!"ValueTainted"}
!426 = !{!"205"}
!427 = !DILocation(line: 219, column: 26, scope: !399)
!428 = !{!"206"}
!429 = !DILocation(line: 219, column: 31, scope: !399)
!430 = !{!"207"}
!431 = !DILocation(line: 219, column: 7, scope: !399)
!432 = !{!"208"}
!433 = !DILocation(line: 220, column: 7, scope: !399)
!434 = !{!"209"}
!435 = !DILocation(line: 217, column: 7, scope: !399)
!436 = !{!"210"}
!437 = !DILocalVariable(name: "bit", scope: !399, file: !3, line: 216, type: !11)
!438 = !{!"211"}
!439 = !DILocation(line: 221, column: 19, scope: !399)
!440 = !{!"212"}
!441 = !{!"213"}
!442 = !DILocation(line: 221, column: 29, scope: !399)
!443 = !{!"214"}
!444 = !DILocalVariable(name: "sw", scope: !399, file: !3, line: 221, type: !11)
!445 = !{!"215"}
!446 = !DILocation(line: 222, column: 5, scope: !399)
!447 = !{!"216"}
!448 = !DILocation(line: 223, column: 43, scope: !399)
!449 = !{!"217"}
!450 = !DILocation(line: 223, column: 5, scope: !399)
!451 = !{!"218"}
!452 = !DILocation(line: 224, column: 5, scope: !399)
!453 = !{!"219"}
!454 = !DILocation(line: 224, column: 15, scope: !399)
!455 = !{!"220"}
!456 = !DILocation(line: 225, column: 3, scope: !399)
!457 = !{!"221"}
!458 = !DILocation(line: 209, column: 56, scope: !394)
!459 = !{!"222"}
!460 = !{!"223"}
!461 = !DILocation(line: 209, column: 3, scope: !394)
!462 = distinct !{!462, !396, !463, !464}
!463 = !DILocation(line: 225, column: 3, scope: !386)
!464 = !{!"llvm.loop.mustprogress"}
!465 = !{!"224"}
!466 = !DILocation(line: 226, column: 17, scope: !267)
!467 = !{!"225"}
!468 = !{!"226"}
!469 = !DILocalVariable(name: "sw", scope: !267, file: !3, line: 226, type: !11)
!470 = !{!"227"}
!471 = !DILocation(line: 227, column: 3, scope: !267)
!472 = !{!"228"}
!473 = !DILocalVariable(name: "nq10", scope: !267, file: !3, line: 228, type: !68)
!474 = !{!"229"}
!475 = !DILocation(line: 229, column: 29, scope: !267)
!476 = !{!"230"}
!477 = !DILocalVariable(name: "tmp1", scope: !267, file: !3, line: 229, type: !68)
!478 = !{!"231"}
!479 = !DILocation(line: 230, column: 28, scope: !267)
!480 = !{!"232"}
!481 = !DILocation(line: 230, column: 3, scope: !267)
!482 = !{!"233"}
!483 = !DILocation(line: 231, column: 28, scope: !267)
!484 = !{!"234"}
!485 = !DILocation(line: 231, column: 3, scope: !267)
!486 = !{!"235"}
!487 = !DILocation(line: 232, column: 28, scope: !267)
!488 = !{!"236"}
!489 = !DILocation(line: 232, column: 3, scope: !267)
!490 = !{!"237"}
!491 = !DILocation(line: 233, column: 3, scope: !267)
!492 = !{!"238"}
!493 = !{!"239"}
!494 = !{!"240"}
!495 = !DILocation(line: 234, column: 1, scope: !267)
!496 = !{!"241"}
!497 = distinct !DISubprogram(name: "encode_point", scope: !3, file: !3, line: 319, type: !498, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !32, !68}
!500 = !{!"242"}
!501 = !{!"243"}
!502 = !{!"244"}
!503 = !DILocalVariable(name: "o", arg: 1, scope: !497, file: !3, line: 319, type: !32)
!504 = !DILocation(line: 0, scope: !497)
!505 = !{!"245"}
!506 = !DILocalVariable(name: "i", arg: 2, scope: !497, file: !3, line: 319, type: !68)
!507 = !{!"246"}
!508 = !DILocalVariable(name: "x", scope: !497, file: !3, line: 321, type: !68)
!509 = !{!"247"}
!510 = !DILocation(line: 322, column: 19, scope: !497)
!511 = !{!"248"}
!512 = !DILocalVariable(name: "z", scope: !497, file: !3, line: 322, type: !68)
!513 = !{!"249"}
!514 = !DILocalVariable(name: "tmp", scope: !497, file: !3, line: 323, type: !51)
!515 = !DILocation(line: 323, column: 12, scope: !497)
!516 = !{!"250"}
!517 = !{!"251"}
!518 = !{!"252"}
!519 = !DILocalVariable(name: "u64s", scope: !497, file: !3, line: 324, type: !51)
!520 = !DILocation(line: 324, column: 12, scope: !497)
!521 = !{!"253"}
!522 = !{!"254"}
!523 = !{!"255"}
!524 = !DILocalVariable(name: "tmp_w", scope: !497, file: !3, line: 325, type: !280)
!525 = !DILocation(line: 325, column: 12, scope: !497)
!526 = !{!"256"}
!527 = !{!"257"}
!528 = !{!"258"}
!529 = !DILocation(line: 326, column: 8, scope: !497)
!530 = !{!"259"}
!531 = !DILocation(line: 326, column: 16, scope: !497)
!532 = !{!"260"}
!533 = !DILocation(line: 326, column: 3, scope: !497)
!534 = !{!"261"}
!535 = !DILocation(line: 327, column: 9, scope: !497)
!536 = !{!"262"}
!537 = !DILocation(line: 327, column: 14, scope: !497)
!538 = !{!"263"}
!539 = !DILocation(line: 327, column: 22, scope: !497)
!540 = !{!"264"}
!541 = !DILocation(line: 327, column: 3, scope: !497)
!542 = !{!"265"}
!543 = !DILocation(line: 328, column: 15, scope: !497)
!544 = !{!"266"}
!545 = !DILocation(line: 328, column: 21, scope: !497)
!546 = !{!"267"}
!547 = !DILocation(line: 328, column: 3, scope: !497)
!548 = !{!"268"}
!549 = !DILocation(line: 329, column: 3, scope: !497)
!550 = !{!"269"}
!551 = !DILocalVariable(name: "i0", scope: !552, file: !3, line: 329, type: !6)
!552 = distinct !DILexicalBlock(scope: !497, file: !3, line: 329, column: 3)
!553 = !DILocation(line: 0, scope: !552)
!554 = !{!"270"}
!555 = !DILocation(line: 329, column: 3, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !3, line: 329, column: 3)
!557 = !{!"271"}
!558 = !{!"272"}
!559 = !{!"273"}
!560 = !{!"274"}
!561 = !{!"275"}
!562 = !{!"276"}
!563 = !{!"277"}
!564 = !{!"278"}
!565 = !{!"279"}
!566 = !{!"280"}
!567 = !DILocation(line: 329, column: 3, scope: !568)
!568 = distinct !DILexicalBlock(scope: !552, file: !3, line: 329, column: 3)
!569 = !{!"281"}
!570 = !{!"282"}
!571 = !{!"283"}
!572 = !{!"284"}
!573 = !{!"285"}
!574 = !{!"286"}
!575 = !{!"287"}
!576 = !{!"288"}
!577 = !{!"289"}
!578 = !{!"290"}
!579 = !DILocation(line: 329, column: 3, scope: !580)
!580 = distinct !DILexicalBlock(scope: !552, file: !3, line: 329, column: 3)
!581 = !{!"291"}
!582 = !{!"292"}
!583 = !{!"293"}
!584 = !{!"294"}
!585 = !{!"295"}
!586 = !{!"296"}
!587 = !{!"297"}
!588 = !{!"298"}
!589 = !{!"299"}
!590 = !{!"300"}
!591 = !DILocation(line: 329, column: 3, scope: !592)
!592 = distinct !DILexicalBlock(scope: !552, file: !3, line: 329, column: 3)
!593 = !{!"301"}
!594 = !{!"302"}
!595 = !{!"303"}
!596 = !{!"304"}
!597 = !{!"305"}
!598 = !{!"306"}
!599 = !{!"307"}
!600 = !{!"308"}
!601 = !{!"309"}
!602 = !{!"310"}
!603 = !DILocation(line: 329, column: 3, scope: !552)
!604 = !{!"311"}
!605 = !DILocation(line: 334, column: 1, scope: !497)
!606 = !{!"312"}
!607 = distinct !DISubprogram(name: "finv", scope: !3, file: !3, line: 245, type: !608, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !68, !68, !68}
!610 = !{!"313"}
!611 = !DILocalVariable(name: "o", arg: 1, scope: !607, file: !3, line: 245, type: !68)
!612 = !DILocation(line: 0, scope: !607)
!613 = !{!"314"}
!614 = !DILocalVariable(name: "i", arg: 2, scope: !607, file: !3, line: 245, type: !68)
!615 = !{!"315"}
!616 = !DILocalVariable(name: "tmp", arg: 3, scope: !607, file: !3, line: 245, type: !68)
!617 = !{!"316"}
!618 = !DILocalVariable(name: "t1", scope: !607, file: !3, line: 247, type: !280)
!619 = !DILocation(line: 247, column: 12, scope: !607)
!620 = !{!"317"}
!621 = !{!"318"}
!622 = !{!"319"}
!623 = !DILocation(line: 248, column: 18, scope: !607)
!624 = !{!"320"}
!625 = !DILocalVariable(name: "a1", scope: !607, file: !3, line: 248, type: !68)
!626 = !{!"321"}
!627 = !DILocation(line: 249, column: 18, scope: !607)
!628 = !{!"322"}
!629 = !DILocation(line: 249, column: 21, scope: !607)
!630 = !{!"323"}
!631 = !DILocalVariable(name: "b1", scope: !607, file: !3, line: 249, type: !68)
!632 = !{!"324"}
!633 = !DILocation(line: 250, column: 20, scope: !607)
!634 = !{!"325"}
!635 = !DILocation(line: 250, column: 23, scope: !607)
!636 = !{!"326"}
!637 = !DILocalVariable(name: "t010", scope: !607, file: !3, line: 250, type: !68)
!638 = !{!"327"}
!639 = !DILocalVariable(name: "tmp10", scope: !607, file: !3, line: 251, type: !68)
!640 = !{!"328"}
!641 = !DILocation(line: 252, column: 3, scope: !607)
!642 = !{!"329"}
!643 = !DILocation(line: 253, column: 3, scope: !607)
!644 = !{!"330"}
!645 = !DILocation(line: 254, column: 3, scope: !607)
!646 = !{!"331"}
!647 = !DILocation(line: 255, column: 3, scope: !607)
!648 = !{!"332"}
!649 = !DILocation(line: 256, column: 3, scope: !607)
!650 = !{!"333"}
!651 = !DILocation(line: 257, column: 3, scope: !607)
!652 = !{!"334"}
!653 = !DILocation(line: 258, column: 3, scope: !607)
!654 = !{!"335"}
!655 = !DILocation(line: 259, column: 3, scope: !607)
!656 = !{!"336"}
!657 = !DILocation(line: 260, column: 19, scope: !607)
!658 = !{!"337"}
!659 = !DILocation(line: 260, column: 22, scope: !607)
!660 = !{!"338"}
!661 = !DILocalVariable(name: "b10", scope: !607, file: !3, line: 260, type: !68)
!662 = !{!"339"}
!663 = !DILocation(line: 261, column: 19, scope: !607)
!664 = !{!"340"}
!665 = !DILocation(line: 261, column: 22, scope: !607)
!666 = !{!"341"}
!667 = !DILocalVariable(name: "c10", scope: !607, file: !3, line: 261, type: !68)
!668 = !{!"342"}
!669 = !DILocation(line: 262, column: 20, scope: !607)
!670 = !{!"343"}
!671 = !DILocation(line: 262, column: 23, scope: !607)
!672 = !{!"344"}
!673 = !DILocalVariable(name: "t011", scope: !607, file: !3, line: 262, type: !68)
!674 = !{!"345"}
!675 = !DILocalVariable(name: "tmp11", scope: !607, file: !3, line: 263, type: !68)
!676 = !{!"346"}
!677 = !DILocation(line: 264, column: 3, scope: !607)
!678 = !{!"347"}
!679 = !DILocation(line: 265, column: 3, scope: !607)
!680 = !{!"348"}
!681 = !DILocation(line: 266, column: 3, scope: !607)
!682 = !{!"349"}
!683 = !DILocation(line: 267, column: 3, scope: !607)
!684 = !{!"350"}
!685 = !DILocation(line: 268, column: 3, scope: !607)
!686 = !{!"351"}
!687 = !DILocation(line: 269, column: 3, scope: !607)
!688 = !{!"352"}
!689 = !DILocation(line: 270, column: 3, scope: !607)
!690 = !{!"353"}
!691 = !DILocation(line: 271, column: 3, scope: !607)
!692 = !{!"354"}
!693 = !DILocation(line: 272, column: 19, scope: !607)
!694 = !{!"355"}
!695 = !DILocation(line: 272, column: 22, scope: !607)
!696 = !{!"356"}
!697 = !DILocalVariable(name: "b11", scope: !607, file: !3, line: 272, type: !68)
!698 = !{!"357"}
!699 = !DILocation(line: 273, column: 18, scope: !607)
!700 = !{!"358"}
!701 = !DILocation(line: 273, column: 21, scope: !607)
!702 = !{!"359"}
!703 = !DILocalVariable(name: "c1", scope: !607, file: !3, line: 273, type: !68)
!704 = !{!"360"}
!705 = !DILocation(line: 274, column: 19, scope: !607)
!706 = !{!"361"}
!707 = !DILocation(line: 274, column: 22, scope: !607)
!708 = !{!"362"}
!709 = !DILocalVariable(name: "t01", scope: !607, file: !3, line: 274, type: !68)
!710 = !{!"363"}
!711 = !DILocalVariable(name: "tmp1", scope: !607, file: !3, line: 275, type: !68)
!712 = !{!"364"}
!713 = !DILocation(line: 276, column: 3, scope: !607)
!714 = !{!"365"}
!715 = !DILocation(line: 277, column: 3, scope: !607)
!716 = !{!"366"}
!717 = !DILocation(line: 278, column: 3, scope: !607)
!718 = !{!"367"}
!719 = !DILocation(line: 279, column: 3, scope: !607)
!720 = !{!"368"}
!721 = !DILocation(line: 280, column: 3, scope: !607)
!722 = !{!"369"}
!723 = !DILocation(line: 281, column: 17, scope: !607)
!724 = !{!"370"}
!725 = !DILocalVariable(name: "a", scope: !607, file: !3, line: 281, type: !68)
!726 = !{!"371"}
!727 = !DILocation(line: 282, column: 18, scope: !607)
!728 = !{!"372"}
!729 = !DILocation(line: 282, column: 21, scope: !607)
!730 = !{!"373"}
!731 = !DILocalVariable(name: "t0", scope: !607, file: !3, line: 282, type: !68)
!732 = !{!"374"}
!733 = !DILocation(line: 283, column: 3, scope: !607)
!734 = !{!"375"}
!735 = !DILocation(line: 284, column: 1, scope: !607)
!736 = !{!"376"}
!737 = distinct !DISubprogram(name: "fmul0", scope: !3, file: !3, line: 60, type: !738, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !68, !68, !68, !68}
!740 = !DILocalVariable(name: "out", arg: 1, scope: !737, file: !3, line: 60, type: !68)
!741 = !DILocation(line: 0, scope: !737)
!742 = !{!"377"}
!743 = !DILocalVariable(name: "f1", arg: 2, scope: !737, file: !3, line: 60, type: !68)
!744 = !{!"378"}
!745 = !DILocalVariable(name: "f2", arg: 3, scope: !737, file: !3, line: 60, type: !68)
!746 = !{!"379"}
!747 = !DILocalVariable(name: "tmp", arg: 4, scope: !737, file: !3, line: 60, type: !68)
!748 = !{!"380"}
!749 = !DILocation(line: 63, column: 3, scope: !737)
!750 = !{!"381"}
!751 = !DILocation(line: 67, column: 1, scope: !737)
!752 = !{!"382"}
!753 = distinct !DISubprogram(name: "store_felem", scope: !3, file: !3, line: 286, type: !754, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !68, !68}
!756 = !DILocalVariable(name: "b", arg: 1, scope: !753, file: !3, line: 286, type: !68)
!757 = !DILocation(line: 0, scope: !753)
!758 = !{!"383"}
!759 = !DILocalVariable(name: "f", arg: 2, scope: !753, file: !3, line: 286, type: !68)
!760 = !{!"384"}
!761 = !DILocation(line: 288, column: 18, scope: !753)
!762 = !{!"385"}
!763 = !{!"386"}
!764 = !DILocalVariable(name: "f30", scope: !753, file: !3, line: 288, type: !11)
!765 = !{!"387"}
!766 = !DILocation(line: 289, column: 27, scope: !753)
!767 = !{!"388"}
!768 = !DILocalVariable(name: "top_bit0", scope: !753, file: !3, line: 289, type: !11)
!769 = !{!"389"}
!770 = !DILocation(line: 290, column: 15, scope: !753)
!771 = !{!"390"}
!772 = !DILocation(line: 290, column: 3, scope: !753)
!773 = !{!"391"}
!774 = !DILocation(line: 290, column: 9, scope: !753)
!775 = !{!"392"}
!776 = !DILocation(line: 291, column: 35, scope: !753)
!777 = !{!"393"}
!778 = !DILocation(line: 291, column: 3, scope: !753)
!779 = !{!"394"}
!780 = !DILocation(line: 292, column: 18, scope: !753)
!781 = !{!"395"}
!782 = !{!"396"}
!783 = !DILocalVariable(name: "f31", scope: !753, file: !3, line: 292, type: !11)
!784 = !{!"397"}
!785 = !DILocation(line: 293, column: 26, scope: !753)
!786 = !{!"398"}
!787 = !DILocalVariable(name: "top_bit", scope: !753, file: !3, line: 293, type: !11)
!788 = !{!"399"}
!789 = !DILocation(line: 294, column: 15, scope: !753)
!790 = !{!"400"}
!791 = !DILocation(line: 294, column: 3, scope: !753)
!792 = !{!"401"}
!793 = !DILocation(line: 294, column: 9, scope: !753)
!794 = !{!"402"}
!795 = !DILocation(line: 295, column: 35, scope: !753)
!796 = !{!"403"}
!797 = !DILocation(line: 295, column: 3, scope: !753)
!798 = !{!"404"}
!799 = !DILocation(line: 296, column: 17, scope: !753)
!800 = !{!"405"}
!801 = !{!"406"}
!802 = !DILocalVariable(name: "f0", scope: !753, file: !3, line: 296, type: !11)
!803 = !{!"407"}
!804 = !DILocation(line: 297, column: 17, scope: !753)
!805 = !{!"408"}
!806 = !{!"409"}
!807 = !DILocalVariable(name: "f1", scope: !753, file: !3, line: 297, type: !11)
!808 = !{!"410"}
!809 = !DILocation(line: 298, column: 17, scope: !753)
!810 = !{!"411"}
!811 = !{!"412"}
!812 = !DILocalVariable(name: "f2", scope: !753, file: !3, line: 298, type: !11)
!813 = !{!"413"}
!814 = !DILocation(line: 299, column: 17, scope: !753)
!815 = !{!"414"}
!816 = !{!"415"}
!817 = !DILocalVariable(name: "f3", scope: !753, file: !3, line: 299, type: !11)
!818 = !{!"416"}
!819 = !DILocation(line: 300, column: 17, scope: !753)
!820 = !{!"417"}
!821 = !DILocalVariable(name: "m0", scope: !753, file: !3, line: 300, type: !11)
!822 = !{!"418"}
!823 = !DILocation(line: 301, column: 17, scope: !753)
!824 = !{!"419"}
!825 = !DILocalVariable(name: "m1", scope: !753, file: !3, line: 301, type: !11)
!826 = !{!"420"}
!827 = !DILocation(line: 302, column: 17, scope: !753)
!828 = !{!"421"}
!829 = !DILocalVariable(name: "m2", scope: !753, file: !3, line: 302, type: !11)
!830 = !{!"422"}
!831 = !DILocation(line: 303, column: 17, scope: !753)
!832 = !{!"423"}
!833 = !DILocalVariable(name: "m3", scope: !753, file: !3, line: 303, type: !11)
!834 = !{!"424"}
!835 = !DILocation(line: 304, column: 24, scope: !753)
!836 = !{!"425"}
!837 = !DILocation(line: 304, column: 30, scope: !753)
!838 = !{!"426"}
!839 = !DILocation(line: 304, column: 36, scope: !753)
!840 = !{!"427"}
!841 = !DILocalVariable(name: "mask", scope: !753, file: !3, line: 304, type: !11)
!842 = !{!"428"}
!843 = !DILocation(line: 305, column: 29, scope: !753)
!844 = !{!"429"}
!845 = !DILocation(line: 305, column: 21, scope: !753)
!846 = !{!"430"}
!847 = !DILocalVariable(name: "f0_", scope: !753, file: !3, line: 305, type: !11)
!848 = !{!"431"}
!849 = !DILocation(line: 306, column: 21, scope: !753)
!850 = !{!"432"}
!851 = !DILocalVariable(name: "f1_", scope: !753, file: !3, line: 306, type: !11)
!852 = !{!"433"}
!853 = !DILocation(line: 307, column: 21, scope: !753)
!854 = !{!"434"}
!855 = !DILocalVariable(name: "f2_", scope: !753, file: !3, line: 307, type: !11)
!856 = !{!"435"}
!857 = !DILocation(line: 308, column: 29, scope: !753)
!858 = !{!"436"}
!859 = !DILocation(line: 308, column: 21, scope: !753)
!860 = !{!"437"}
!861 = !DILocalVariable(name: "f3_", scope: !753, file: !3, line: 308, type: !11)
!862 = !{!"438"}
!863 = !DILocalVariable(name: "o0", scope: !753, file: !3, line: 309, type: !11)
!864 = !{!"439"}
!865 = !DILocalVariable(name: "o1", scope: !753, file: !3, line: 310, type: !11)
!866 = !{!"440"}
!867 = !DILocalVariable(name: "o2", scope: !753, file: !3, line: 311, type: !11)
!868 = !{!"441"}
!869 = !DILocalVariable(name: "o3", scope: !753, file: !3, line: 312, type: !11)
!870 = !{!"442"}
!871 = !DILocation(line: 313, column: 3, scope: !753)
!872 = !{!"443"}
!873 = !DILocation(line: 313, column: 9, scope: !753)
!874 = !{!"444"}
!875 = !DILocation(line: 314, column: 3, scope: !753)
!876 = !{!"445"}
!877 = !DILocation(line: 314, column: 9, scope: !753)
!878 = !{!"446"}
!879 = !DILocation(line: 315, column: 3, scope: !753)
!880 = !{!"447"}
!881 = !DILocation(line: 315, column: 9, scope: !753)
!882 = !{!"448"}
!883 = !DILocation(line: 316, column: 3, scope: !753)
!884 = !{!"449"}
!885 = !DILocation(line: 316, column: 9, scope: !753)
!886 = !{!"450"}
!887 = !DILocation(line: 317, column: 1, scope: !753)
!888 = !{!"451"}
!889 = distinct !DISubprogram(name: "store64", scope: !241, file: !241, line: 186, type: !890, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !32, !11}
!892 = !{!"452"}
!893 = !DILocalVariable(name: "b", arg: 1, scope: !889, file: !241, line: 186, type: !32)
!894 = !DILocation(line: 0, scope: !889)
!895 = !{!"453"}
!896 = !{!"454"}
!897 = !DILocalVariable(name: "i", arg: 2, scope: !889, file: !241, line: 186, type: !11)
!898 = !DILocation(line: 186, column: 49, scope: !889)
!899 = !{!"455"}
!900 = !DILocation(line: 187, column: 3, scope: !889)
!901 = !{!"456"}
!902 = !{!"457"}
!903 = !DILocation(line: 188, column: 1, scope: !889)
!904 = !{!"458"}
!905 = distinct !DISubprogram(name: "add_scalar0", scope: !3, file: !3, line: 33, type: !906, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !68, !68, !11}
!908 = !DILocalVariable(name: "out", arg: 1, scope: !905, file: !3, line: 33, type: !68)
!909 = !DILocation(line: 0, scope: !905)
!910 = !{!"459"}
!911 = !DILocalVariable(name: "f1", arg: 2, scope: !905, file: !3, line: 33, type: !68)
!912 = !{!"460"}
!913 = !DILocalVariable(name: "f2", arg: 3, scope: !905, file: !3, line: 33, type: !11)
!914 = !{!"461"}
!915 = !DILocation(line: 36, column: 3, scope: !905)
!916 = !{!"462"}
!917 = !DILocation(line: 40, column: 1, scope: !905)
!918 = !{!"463"}
!919 = distinct !DISubprogram(name: "FStar_UInt64_gte_mask", scope: !920, file: !920, line: 44, type: !921, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!920 = !DIFile(filename: "../hacl-star/dist/karamel/krmllib/dist/minimal/FStar_UInt_8_16_32_64.h", directory: "/home/luwei/bech-back/HACL/Curve25519-64")
!921 = !DISubroutineType(types: !922)
!922 = !{!11, !11, !11}
!923 = !DILocalVariable(name: "a", arg: 1, scope: !919, file: !920, line: 44, type: !11)
!924 = !DILocation(line: 0, scope: !919)
!925 = !{!"464"}
!926 = !DILocalVariable(name: "b", arg: 2, scope: !919, file: !920, line: 44, type: !11)
!927 = !{!"465"}
!928 = !DILocalVariable(name: "x", scope: !919, file: !920, line: 46, type: !11)
!929 = !{!"466"}
!930 = !DILocalVariable(name: "y", scope: !919, file: !920, line: 47, type: !11)
!931 = !{!"467"}
!932 = !DILocation(line: 48, column: 24, scope: !919)
!933 = !{!"468"}
!934 = !DILocalVariable(name: "x_xor_y", scope: !919, file: !920, line: 48, type: !11)
!935 = !{!"469"}
!936 = !DILocation(line: 49, column: 24, scope: !919)
!937 = !{!"470"}
!938 = !DILocalVariable(name: "x_sub_y", scope: !919, file: !920, line: 49, type: !11)
!939 = !{!"471"}
!940 = !DILocation(line: 50, column: 36, scope: !919)
!941 = !{!"472"}
!942 = !DILocalVariable(name: "x_sub_y_xor_y", scope: !919, file: !920, line: 50, type: !11)
!943 = !{!"473"}
!944 = !DILocation(line: 51, column: 24, scope: !919)
!945 = !{!"474"}
!946 = !DILocalVariable(name: "q", scope: !919, file: !920, line: 51, type: !11)
!947 = !{!"475"}
!948 = !DILocation(line: 52, column: 24, scope: !919)
!949 = !{!"476"}
!950 = !DILocalVariable(name: "x_xor_q", scope: !919, file: !920, line: 52, type: !11)
!951 = !{!"477"}
!952 = !DILocation(line: 53, column: 31, scope: !919)
!953 = !{!"478"}
!954 = !DILocalVariable(name: "x_xor_q_", scope: !919, file: !920, line: 53, type: !11)
!955 = !{!"479"}
!956 = !DILocation(line: 54, column: 19, scope: !919)
!957 = !{!"480"}
!958 = !DILocation(line: 54, column: 3, scope: !919)
!959 = !{!"481"}
!960 = distinct !DISubprogram(name: "FStar_UInt64_eq_mask", scope: !920, file: !920, line: 35, type: !921, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!961 = !DILocalVariable(name: "a", arg: 1, scope: !960, file: !920, line: 35, type: !11)
!962 = !DILocation(line: 0, scope: !960)
!963 = !{!"482"}
!964 = !DILocalVariable(name: "b", arg: 2, scope: !960, file: !920, line: 35, type: !11)
!965 = !{!"483"}
!966 = !DILocation(line: 37, column: 18, scope: !960)
!967 = !{!"484"}
!968 = !DILocalVariable(name: "x", scope: !960, file: !920, line: 37, type: !11)
!969 = !{!"485"}
!970 = !DILocation(line: 38, column: 22, scope: !960)
!971 = !{!"486"}
!972 = !DILocation(line: 38, column: 25, scope: !960)
!973 = !{!"487"}
!974 = !DILocalVariable(name: "minus_x", scope: !960, file: !920, line: 38, type: !11)
!975 = !{!"488"}
!976 = !DILocation(line: 39, column: 29, scope: !960)
!977 = !{!"489"}
!978 = !DILocalVariable(name: "x_or_minus_x", scope: !960, file: !920, line: 39, type: !11)
!979 = !{!"490"}
!980 = !DILocation(line: 40, column: 31, scope: !960)
!981 = !{!"491"}
!982 = !DILocalVariable(name: "xnx", scope: !960, file: !920, line: 40, type: !11)
!983 = !{!"492"}
!984 = !DILocation(line: 41, column: 14, scope: !960)
!985 = !{!"493"}
!986 = !DILocation(line: 41, column: 3, scope: !960)
!987 = !{!"494"}
!988 = distinct !DISubprogram(name: "add_scalar", scope: !989, file: !989, line: 8, type: !906, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!989 = !DIFile(filename: "../hacl-star/dist/gcc-compatible/curve25519-inline.h", directory: "/home/luwei/bech-back/HACL/Curve25519-64")
!990 = !DILocalVariable(name: "out", arg: 1, scope: !988, file: !989, line: 8, type: !68)
!991 = !DILocation(line: 0, scope: !988)
!992 = !{!"495"}
!993 = !DILocalVariable(name: "f1", arg: 2, scope: !988, file: !989, line: 8, type: !68)
!994 = !{!"496"}
!995 = !DILocalVariable(name: "f2", arg: 3, scope: !988, file: !989, line: 8, type: !11)
!996 = !{!"497"}
!997 = !DILocation(line: 10, column: 3, scope: !988)
!998 = !{i32 493920}
!999 = !{!"498"}
!1000 = !{!"499"}
!1001 = !DILocation(line: 34, column: 1, scope: !988)
!1002 = !{!"500"}
!1003 = distinct !DISubprogram(name: "fmul", scope: !989, file: !989, line: 123, type: !738, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1004 = !DILocalVariable(name: "out", arg: 1, scope: !1003, file: !989, line: 123, type: !68)
!1005 = !DILocation(line: 0, scope: !1003)
!1006 = !{!"501"}
!1007 = !DILocalVariable(name: "f1", arg: 2, scope: !1003, file: !989, line: 123, type: !68)
!1008 = !{!"502"}
!1009 = !DILocalVariable(name: "f2", arg: 3, scope: !1003, file: !989, line: 123, type: !68)
!1010 = !{!"503"}
!1011 = !DILocalVariable(name: "tmp", arg: 4, scope: !1003, file: !989, line: 123, type: !68)
!1012 = !{!"504"}
!1013 = !DILocation(line: 125, column: 3, scope: !1003)
!1014 = !{i32 497042}
!1015 = !{!"505"}
!1016 = !{!"506"}
!1017 = !{!"507"}
!1018 = !{!"508"}
!1019 = !{!"509"}
!1020 = !{!"510"}
!1021 = !{!"511"}
!1022 = !DILocation(line: 205, column: 1, scope: !1003)
!1023 = !{!"512"}
!1024 = distinct !DISubprogram(name: "fsquare_times", scope: !3, file: !3, line: 236, type: !1025, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !68, !68, !68, !6}
!1027 = !DILocalVariable(name: "o", arg: 1, scope: !1024, file: !3, line: 236, type: !68)
!1028 = !DILocation(line: 0, scope: !1024)
!1029 = !{!"513"}
!1030 = !DILocalVariable(name: "inp", arg: 2, scope: !1024, file: !3, line: 236, type: !68)
!1031 = !{!"514"}
!1032 = !DILocalVariable(name: "tmp", arg: 3, scope: !1024, file: !3, line: 236, type: !68)
!1033 = !{!"515"}
!1034 = !DILocalVariable(name: "n", arg: 4, scope: !1024, file: !3, line: 236, type: !6)
!1035 = !{!"516"}
!1036 = !DILocation(line: 238, column: 3, scope: !1024)
!1037 = !{!"517"}
!1038 = !DILocalVariable(name: "i", scope: !1039, file: !3, line: 239, type: !6)
!1039 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 239, column: 3)
!1040 = !DILocation(line: 0, scope: !1039)
!1041 = !{!"518"}
!1042 = !DILocation(line: 239, column: 8, scope: !1039)
!1043 = !{!"519"}
!1044 = !{!"520"}
!1045 = !{!"521"}
!1046 = !DILocation(line: 239, column: 41, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 239, column: 3)
!1048 = !{!"522"}
!1049 = !DILocation(line: 239, column: 37, scope: !1047)
!1050 = !{!"523"}
!1051 = !DILocation(line: 239, column: 3, scope: !1039)
!1052 = !{!"524"}
!1053 = !DILocation(line: 241, column: 5, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 240, column: 3)
!1055 = !{!"525"}
!1056 = !DILocation(line: 242, column: 3, scope: !1054)
!1057 = !{!"526"}
!1058 = !DILocation(line: 239, column: 58, scope: !1047)
!1059 = !{!"527"}
!1060 = !{!"528"}
!1061 = !DILocation(line: 239, column: 3, scope: !1047)
!1062 = distinct !{!1062, !1051, !1063, !464}
!1063 = !DILocation(line: 242, column: 3, scope: !1039)
!1064 = !{!"529"}
!1065 = !DILocation(line: 243, column: 1, scope: !1024)
!1066 = !{!"530"}
!1067 = distinct !DISubprogram(name: "fsqr0", scope: !3, file: !3, line: 87, type: !608, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1068 = !DILocalVariable(name: "out", arg: 1, scope: !1067, file: !3, line: 87, type: !68)
!1069 = !DILocation(line: 0, scope: !1067)
!1070 = !{!"531"}
!1071 = !DILocalVariable(name: "f1", arg: 2, scope: !1067, file: !3, line: 87, type: !68)
!1072 = !{!"532"}
!1073 = !DILocalVariable(name: "tmp", arg: 3, scope: !1067, file: !3, line: 87, type: !68)
!1074 = !{!"533"}
!1075 = !DILocation(line: 90, column: 3, scope: !1067)
!1076 = !{!"534"}
!1077 = !DILocation(line: 94, column: 1, scope: !1067)
!1078 = !{!"535"}
!1079 = distinct !DISubprogram(name: "fsqr", scope: !989, file: !989, line: 494, type: !608, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1080 = !DILocalVariable(name: "out", arg: 1, scope: !1079, file: !989, line: 494, type: !68)
!1081 = !DILocation(line: 0, scope: !1079)
!1082 = !{!"536"}
!1083 = !DILocalVariable(name: "f", arg: 2, scope: !1079, file: !989, line: 494, type: !68)
!1084 = !{!"537"}
!1085 = !DILocalVariable(name: "tmp", arg: 3, scope: !1079, file: !989, line: 494, type: !68)
!1086 = !{!"538"}
!1087 = !DILocation(line: 496, column: 3, scope: !1079)
!1088 = !{i32 511339}
!1089 = !{!"539"}
!1090 = !{!"540"}
!1091 = !{!"541"}
!1092 = !{!"542"}
!1093 = !{!"543"}
!1094 = !DILocation(line: 582, column: 1, scope: !1079)
!1095 = !{!"544"}
!1096 = distinct !DISubprogram(name: "cswap20", scope: !3, file: !3, line: 105, type: !1097, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !11, !68, !68}
!1099 = !DILocalVariable(name: "bit", arg: 1, scope: !1096, file: !3, line: 105, type: !11)
!1100 = !DILocation(line: 0, scope: !1096)
!1101 = !{!"545"}
!1102 = !DILocalVariable(name: "p1", arg: 2, scope: !1096, file: !3, line: 105, type: !68)
!1103 = !{!"546"}
!1104 = !DILocalVariable(name: "p2", arg: 3, scope: !1096, file: !3, line: 105, type: !68)
!1105 = !{!"547"}
!1106 = !DILocation(line: 108, column: 3, scope: !1096)
!1107 = !{!"548"}
!1108 = !DILocation(line: 112, column: 1, scope: !1096)
!1109 = !{!"549"}
!1110 = distinct !DISubprogram(name: "point_add_and_double", scope: !3, file: !3, line: 116, type: !608, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1111 = !DILocalVariable(name: "q", arg: 1, scope: !1110, file: !3, line: 116, type: !68)
!1112 = !DILocation(line: 0, scope: !1110)
!1113 = !{!"550"}
!1114 = !DILocalVariable(name: "p01_tmp1", arg: 2, scope: !1110, file: !3, line: 116, type: !68)
!1115 = !{!"551"}
!1116 = !DILocalVariable(name: "tmp2", arg: 3, scope: !1110, file: !3, line: 116, type: !68)
!1117 = !{!"552"}
!1118 = !DILocalVariable(name: "nq", scope: !1110, file: !3, line: 118, type: !68)
!1119 = !{!"553"}
!1120 = !DILocation(line: 119, column: 30, scope: !1110)
!1121 = !{!"554"}
!1122 = !DILocalVariable(name: "nq_p1", scope: !1110, file: !3, line: 119, type: !68)
!1123 = !{!"555"}
!1124 = !DILocation(line: 120, column: 29, scope: !1110)
!1125 = !{!"556"}
!1126 = !DILocalVariable(name: "tmp1", scope: !1110, file: !3, line: 120, type: !68)
!1127 = !{!"557"}
!1128 = !DILocalVariable(name: "x1", scope: !1110, file: !3, line: 121, type: !68)
!1129 = !{!"558"}
!1130 = !DILocalVariable(name: "x2", scope: !1110, file: !3, line: 122, type: !68)
!1131 = !{!"559"}
!1132 = !DILocation(line: 123, column: 21, scope: !1110)
!1133 = !{!"560"}
!1134 = !DILocalVariable(name: "z2", scope: !1110, file: !3, line: 123, type: !68)
!1135 = !{!"561"}
!1136 = !DILocation(line: 124, column: 24, scope: !1110)
!1137 = !{!"562"}
!1138 = !DILocalVariable(name: "z3", scope: !1110, file: !3, line: 124, type: !68)
!1139 = !{!"563"}
!1140 = !DILocalVariable(name: "a", scope: !1110, file: !3, line: 125, type: !68)
!1141 = !{!"564"}
!1142 = !DILocation(line: 126, column: 22, scope: !1110)
!1143 = !{!"565"}
!1144 = !DILocalVariable(name: "b", scope: !1110, file: !3, line: 126, type: !68)
!1145 = !{!"566"}
!1146 = !DILocalVariable(name: "ab", scope: !1110, file: !3, line: 127, type: !68)
!1147 = !{!"567"}
!1148 = !DILocation(line: 128, column: 23, scope: !1110)
!1149 = !{!"568"}
!1150 = !DILocalVariable(name: "dc", scope: !1110, file: !3, line: 128, type: !68)
!1151 = !{!"569"}
!1152 = !DILocation(line: 129, column: 3, scope: !1110)
!1153 = !{!"570"}
!1154 = !DILocation(line: 130, column: 3, scope: !1110)
!1155 = !{!"571"}
!1156 = !DILocalVariable(name: "x3", scope: !1110, file: !3, line: 131, type: !68)
!1157 = !{!"572"}
!1158 = !DILocation(line: 132, column: 25, scope: !1110)
!1159 = !{!"573"}
!1160 = !DILocalVariable(name: "z31", scope: !1110, file: !3, line: 132, type: !68)
!1161 = !{!"574"}
!1162 = !DILocalVariable(name: "d0", scope: !1110, file: !3, line: 133, type: !68)
!1163 = !{!"575"}
!1164 = !DILocation(line: 134, column: 21, scope: !1110)
!1165 = !{!"576"}
!1166 = !DILocalVariable(name: "c0", scope: !1110, file: !3, line: 134, type: !68)
!1167 = !{!"577"}
!1168 = !DILocation(line: 135, column: 3, scope: !1110)
!1169 = !{!"578"}
!1170 = !DILocation(line: 136, column: 3, scope: !1110)
!1171 = !{!"579"}
!1172 = !DILocation(line: 137, column: 3, scope: !1110)
!1173 = !{!"580"}
!1174 = !DILocation(line: 138, column: 3, scope: !1110)
!1175 = !{!"581"}
!1176 = !DILocation(line: 139, column: 3, scope: !1110)
!1177 = !{!"582"}
!1178 = !DILocalVariable(name: "a1", scope: !1110, file: !3, line: 140, type: !68)
!1179 = !{!"583"}
!1180 = !DILocation(line: 141, column: 23, scope: !1110)
!1181 = !{!"584"}
!1182 = !DILocalVariable(name: "b1", scope: !1110, file: !3, line: 141, type: !68)
!1183 = !{!"585"}
!1184 = !DILocation(line: 142, column: 22, scope: !1110)
!1185 = !{!"586"}
!1186 = !DILocalVariable(name: "d", scope: !1110, file: !3, line: 142, type: !68)
!1187 = !{!"587"}
!1188 = !DILocation(line: 143, column: 22, scope: !1110)
!1189 = !{!"588"}
!1190 = !DILocalVariable(name: "c", scope: !1110, file: !3, line: 143, type: !68)
!1191 = !{!"589"}
!1192 = !DILocalVariable(name: "ab1", scope: !1110, file: !3, line: 144, type: !68)
!1193 = !{!"590"}
!1194 = !DILocation(line: 145, column: 24, scope: !1110)
!1195 = !{!"591"}
!1196 = !DILocalVariable(name: "dc1", scope: !1110, file: !3, line: 145, type: !68)
!1197 = !{!"592"}
!1198 = !DILocation(line: 146, column: 3, scope: !1110)
!1199 = !{!"593"}
!1200 = !DILocation(line: 147, column: 3, scope: !1110)
!1201 = !{!"594"}
!1202 = !DILocation(line: 148, column: 12, scope: !1110)
!1203 = !{!"595"}
!1204 = !{!"596"}
!1205 = !DILocation(line: 148, column: 3, scope: !1110)
!1206 = !{!"597"}
!1207 = !DILocation(line: 148, column: 10, scope: !1110)
!1208 = !{!"598"}
!1209 = !DILocation(line: 149, column: 12, scope: !1110)
!1210 = !{!"599"}
!1211 = !{!"600"}
!1212 = !DILocation(line: 149, column: 3, scope: !1110)
!1213 = !{!"601"}
!1214 = !DILocation(line: 149, column: 10, scope: !1110)
!1215 = !{!"602"}
!1216 = !DILocation(line: 150, column: 12, scope: !1110)
!1217 = !{!"603"}
!1218 = !{!"604"}
!1219 = !DILocation(line: 150, column: 3, scope: !1110)
!1220 = !{!"605"}
!1221 = !DILocation(line: 150, column: 10, scope: !1110)
!1222 = !{!"606"}
!1223 = !DILocation(line: 151, column: 12, scope: !1110)
!1224 = !{!"607"}
!1225 = !{!"608"}
!1226 = !DILocation(line: 151, column: 3, scope: !1110)
!1227 = !{!"609"}
!1228 = !DILocation(line: 151, column: 10, scope: !1110)
!1229 = !{!"610"}
!1230 = !DILocation(line: 152, column: 3, scope: !1110)
!1231 = !{!"611"}
!1232 = !DILocation(line: 153, column: 3, scope: !1110)
!1233 = !{!"612"}
!1234 = !DILocation(line: 154, column: 3, scope: !1110)
!1235 = !{!"613"}
!1236 = !DILocation(line: 155, column: 3, scope: !1110)
!1237 = !{!"614"}
!1238 = !DILocation(line: 156, column: 3, scope: !1110)
!1239 = !{!"615"}
!1240 = !DILocation(line: 157, column: 1, scope: !1110)
!1241 = !{!"616"}
!1242 = distinct !DISubprogram(name: "point_double", scope: !3, file: !3, line: 159, type: !608, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1243 = !DILocalVariable(name: "nq", arg: 1, scope: !1242, file: !3, line: 159, type: !68)
!1244 = !DILocation(line: 0, scope: !1242)
!1245 = !{!"617"}
!1246 = !DILocalVariable(name: "tmp1", arg: 2, scope: !1242, file: !3, line: 159, type: !68)
!1247 = !{!"618"}
!1248 = !DILocalVariable(name: "tmp2", arg: 3, scope: !1242, file: !3, line: 159, type: !68)
!1249 = !{!"619"}
!1250 = !DILocalVariable(name: "x2", scope: !1242, file: !3, line: 161, type: !68)
!1251 = !{!"620"}
!1252 = !DILocation(line: 162, column: 21, scope: !1242)
!1253 = !{!"621"}
!1254 = !DILocalVariable(name: "z2", scope: !1242, file: !3, line: 162, type: !68)
!1255 = !{!"622"}
!1256 = !DILocalVariable(name: "a", scope: !1242, file: !3, line: 163, type: !68)
!1257 = !{!"623"}
!1258 = !DILocation(line: 164, column: 22, scope: !1242)
!1259 = !{!"624"}
!1260 = !DILocalVariable(name: "b", scope: !1242, file: !3, line: 164, type: !68)
!1261 = !{!"625"}
!1262 = !DILocation(line: 165, column: 22, scope: !1242)
!1263 = !{!"626"}
!1264 = !DILocalVariable(name: "d", scope: !1242, file: !3, line: 165, type: !68)
!1265 = !{!"627"}
!1266 = !DILocation(line: 166, column: 22, scope: !1242)
!1267 = !{!"628"}
!1268 = !DILocalVariable(name: "c", scope: !1242, file: !3, line: 166, type: !68)
!1269 = !{!"629"}
!1270 = !DILocalVariable(name: "ab", scope: !1242, file: !3, line: 167, type: !68)
!1271 = !{!"630"}
!1272 = !DILocation(line: 168, column: 23, scope: !1242)
!1273 = !{!"631"}
!1274 = !DILocalVariable(name: "dc", scope: !1242, file: !3, line: 168, type: !68)
!1275 = !{!"632"}
!1276 = !DILocation(line: 169, column: 3, scope: !1242)
!1277 = !{!"633"}
!1278 = !DILocation(line: 170, column: 3, scope: !1242)
!1279 = !{!"634"}
!1280 = !DILocation(line: 171, column: 3, scope: !1242)
!1281 = !{!"635"}
!1282 = !DILocation(line: 172, column: 11, scope: !1242)
!1283 = !{!"636"}
!1284 = !{!"637"}
!1285 = !DILocation(line: 172, column: 3, scope: !1242)
!1286 = !{!"638"}
!1287 = !DILocation(line: 172, column: 9, scope: !1242)
!1288 = !{!"639"}
!1289 = !DILocation(line: 173, column: 11, scope: !1242)
!1290 = !{!"640"}
!1291 = !{!"641"}
!1292 = !DILocation(line: 173, column: 3, scope: !1242)
!1293 = !{!"642"}
!1294 = !DILocation(line: 173, column: 9, scope: !1242)
!1295 = !{!"643"}
!1296 = !DILocation(line: 174, column: 11, scope: !1242)
!1297 = !{!"644"}
!1298 = !{!"645"}
!1299 = !DILocation(line: 174, column: 3, scope: !1242)
!1300 = !{!"646"}
!1301 = !DILocation(line: 174, column: 9, scope: !1242)
!1302 = !{!"647"}
!1303 = !DILocation(line: 175, column: 11, scope: !1242)
!1304 = !{!"648"}
!1305 = !{!"649"}
!1306 = !DILocation(line: 175, column: 3, scope: !1242)
!1307 = !{!"650"}
!1308 = !DILocation(line: 175, column: 9, scope: !1242)
!1309 = !{!"651"}
!1310 = !DILocation(line: 176, column: 3, scope: !1242)
!1311 = !{!"652"}
!1312 = !DILocation(line: 177, column: 3, scope: !1242)
!1313 = !{!"653"}
!1314 = !DILocation(line: 178, column: 3, scope: !1242)
!1315 = !{!"654"}
!1316 = !DILocation(line: 179, column: 3, scope: !1242)
!1317 = !{!"655"}
!1318 = !DILocation(line: 180, column: 1, scope: !1242)
!1319 = !{!"656"}
!1320 = distinct !DISubprogram(name: "fadd0", scope: !3, file: !3, line: 42, type: !608, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1321 = !DILocalVariable(name: "out", arg: 1, scope: !1320, file: !3, line: 42, type: !68)
!1322 = !DILocation(line: 0, scope: !1320)
!1323 = !{!"657"}
!1324 = !DILocalVariable(name: "f1", arg: 2, scope: !1320, file: !3, line: 42, type: !68)
!1325 = !{!"658"}
!1326 = !DILocalVariable(name: "f2", arg: 3, scope: !1320, file: !3, line: 42, type: !68)
!1327 = !{!"659"}
!1328 = !DILocation(line: 45, column: 3, scope: !1320)
!1329 = !{!"660"}
!1330 = !DILocation(line: 49, column: 1, scope: !1320)
!1331 = !{!"661"}
!1332 = distinct !DISubprogram(name: "fsub0", scope: !3, file: !3, line: 51, type: !608, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1333 = !DILocalVariable(name: "out", arg: 1, scope: !1332, file: !3, line: 51, type: !68)
!1334 = !DILocation(line: 0, scope: !1332)
!1335 = !{!"662"}
!1336 = !DILocalVariable(name: "f1", arg: 2, scope: !1332, file: !3, line: 51, type: !68)
!1337 = !{!"663"}
!1338 = !DILocalVariable(name: "f2", arg: 3, scope: !1332, file: !3, line: 51, type: !68)
!1339 = !{!"664"}
!1340 = !DILocation(line: 54, column: 3, scope: !1332)
!1341 = !{!"665"}
!1342 = !DILocation(line: 58, column: 1, scope: !1332)
!1343 = !{!"666"}
!1344 = distinct !DISubprogram(name: "fsqr20", scope: !3, file: !3, line: 96, type: !608, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1345 = !DILocalVariable(name: "out", arg: 1, scope: !1344, file: !3, line: 96, type: !68)
!1346 = !DILocation(line: 0, scope: !1344)
!1347 = !{!"667"}
!1348 = !DILocalVariable(name: "f", arg: 2, scope: !1344, file: !3, line: 96, type: !68)
!1349 = !{!"668"}
!1350 = !DILocalVariable(name: "tmp", arg: 3, scope: !1344, file: !3, line: 96, type: !68)
!1351 = !{!"669"}
!1352 = !DILocation(line: 99, column: 3, scope: !1344)
!1353 = !{!"670"}
!1354 = !DILocation(line: 103, column: 1, scope: !1344)
!1355 = !{!"671"}
!1356 = distinct !DISubprogram(name: "fmul_scalar0", scope: !3, file: !3, line: 78, type: !906, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1357 = !DILocalVariable(name: "out", arg: 1, scope: !1356, file: !3, line: 78, type: !68)
!1358 = !DILocation(line: 0, scope: !1356)
!1359 = !{!"672"}
!1360 = !DILocalVariable(name: "f1", arg: 2, scope: !1356, file: !3, line: 78, type: !68)
!1361 = !{!"673"}
!1362 = !DILocalVariable(name: "f2", arg: 3, scope: !1356, file: !3, line: 78, type: !11)
!1363 = !{!"674"}
!1364 = !DILocation(line: 81, column: 3, scope: !1356)
!1365 = !{!"675"}
!1366 = !DILocation(line: 85, column: 1, scope: !1356)
!1367 = !{!"676"}
!1368 = distinct !DISubprogram(name: "fmul20", scope: !3, file: !3, line: 69, type: !738, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1369 = !DILocalVariable(name: "out", arg: 1, scope: !1368, file: !3, line: 69, type: !68)
!1370 = !DILocation(line: 0, scope: !1368)
!1371 = !{!"677"}
!1372 = !DILocalVariable(name: "f1", arg: 2, scope: !1368, file: !3, line: 69, type: !68)
!1373 = !{!"678"}
!1374 = !DILocalVariable(name: "f2", arg: 3, scope: !1368, file: !3, line: 69, type: !68)
!1375 = !{!"679"}
!1376 = !DILocalVariable(name: "tmp", arg: 4, scope: !1368, file: !3, line: 69, type: !68)
!1377 = !{!"680"}
!1378 = !DILocation(line: 72, column: 3, scope: !1368)
!1379 = !{!"681"}
!1380 = !DILocation(line: 76, column: 1, scope: !1368)
!1381 = !{!"682"}
!1382 = distinct !DISubprogram(name: "fmul2", scope: !989, file: !989, line: 211, type: !738, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1383 = !DILocalVariable(name: "out", arg: 1, scope: !1382, file: !989, line: 211, type: !68)
!1384 = !DILocation(line: 0, scope: !1382)
!1385 = !{!"683"}
!1386 = !DILocalVariable(name: "f1", arg: 2, scope: !1382, file: !989, line: 211, type: !68)
!1387 = !{!"684"}
!1388 = !DILocalVariable(name: "f2", arg: 3, scope: !1382, file: !989, line: 211, type: !68)
!1389 = !{!"685"}
!1390 = !DILocalVariable(name: "tmp", arg: 4, scope: !1382, file: !989, line: 211, type: !68)
!1391 = !{!"686"}
!1392 = !DILocation(line: 213, column: 3, scope: !1382)
!1393 = !{i32 500890}
!1394 = !{!"687"}
!1395 = !{!"688"}
!1396 = !{!"689"}
!1397 = !{!"690"}
!1398 = !{!"691"}
!1399 = !{!"692"}
!1400 = !{!"693"}
!1401 = !DILocation(line: 362, column: 1, scope: !1382)
!1402 = !{!"694"}
!1403 = distinct !DISubprogram(name: "fmul_scalar", scope: !989, file: !989, line: 366, type: !906, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1404 = !DILocalVariable(name: "out", arg: 1, scope: !1403, file: !989, line: 366, type: !68)
!1405 = !DILocation(line: 0, scope: !1403)
!1406 = !{!"695"}
!1407 = !DILocalVariable(name: "f1", arg: 2, scope: !1403, file: !989, line: 366, type: !68)
!1408 = !{!"696"}
!1409 = !DILocalVariable(name: "f2", arg: 3, scope: !1403, file: !989, line: 366, type: !11)
!1410 = !{!"697"}
!1411 = !DILocalVariable(name: "f2_r", scope: !1403, file: !989, line: 368, type: !11)
!1412 = !{!"698"}
!1413 = !DILocation(line: 370, column: 3, scope: !1403)
!1414 = !{i32 508006}
!1415 = !{!"699"}
!1416 = !{!"700"}
!1417 = !DILocation(line: 406, column: 1, scope: !1403)
!1418 = !{!"701"}
!1419 = distinct !DISubprogram(name: "fsqr2", scope: !989, file: !989, line: 588, type: !608, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1420 = !DILocalVariable(name: "out", arg: 1, scope: !1419, file: !989, line: 588, type: !68)
!1421 = !DILocation(line: 0, scope: !1419)
!1422 = !{!"702"}
!1423 = !DILocalVariable(name: "f", arg: 2, scope: !1419, file: !989, line: 588, type: !68)
!1424 = !{!"703"}
!1425 = !DILocalVariable(name: "tmp", arg: 3, scope: !1419, file: !989, line: 588, type: !68)
!1426 = !{!"704"}
!1427 = !DILocation(line: 590, column: 3, scope: !1419)
!1428 = !{i32 514700}
!1429 = !{!"705"}
!1430 = !{!"706"}
!1431 = !{!"707"}
!1432 = !{!"708"}
!1433 = !{!"709"}
!1434 = !DILocation(line: 744, column: 1, scope: !1419)
!1435 = !{!"710"}
!1436 = distinct !DISubprogram(name: "fsub", scope: !989, file: !989, line: 79, type: !608, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1437 = !DILocalVariable(name: "out", arg: 1, scope: !1436, file: !989, line: 79, type: !68)
!1438 = !DILocation(line: 0, scope: !1436)
!1439 = !{!"711"}
!1440 = !DILocalVariable(name: "f1", arg: 2, scope: !1436, file: !989, line: 79, type: !68)
!1441 = !{!"712"}
!1442 = !DILocalVariable(name: "f2", arg: 3, scope: !1436, file: !989, line: 79, type: !68)
!1443 = !{!"713"}
!1444 = !DILocation(line: 81, column: 3, scope: !1436)
!1445 = !{i32 495783}
!1446 = !{!"714"}
!1447 = !DILocation(line: 119, column: 1, scope: !1436)
!1448 = !{!"715"}
!1449 = distinct !DISubprogram(name: "fadd", scope: !989, file: !989, line: 37, type: !608, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1450 = !DILocalVariable(name: "out", arg: 1, scope: !1449, file: !989, line: 37, type: !68)
!1451 = !DILocation(line: 0, scope: !1449)
!1452 = !{!"716"}
!1453 = !DILocalVariable(name: "f1", arg: 2, scope: !1449, file: !989, line: 37, type: !68)
!1454 = !{!"717"}
!1455 = !DILocalVariable(name: "f2", arg: 3, scope: !1449, file: !989, line: 37, type: !68)
!1456 = !{!"718"}
!1457 = !DILocation(line: 39, column: 3, scope: !1449)
!1458 = !{i32 494657}
!1459 = !{!"719"}
!1460 = !{!"720"}
!1461 = !DILocation(line: 76, column: 1, scope: !1449)
!1462 = !{!"721"}
!1463 = distinct !DISubprogram(name: "cswap2", scope: !989, file: !989, line: 409, type: !1097, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1464 = !DILocalVariable(name: "bit", arg: 1, scope: !1463, file: !989, line: 409, type: !11)
!1465 = !DILocation(line: 0, scope: !1463)
!1466 = !{!"722"}
!1467 = !DILocalVariable(name: "p1", arg: 2, scope: !1463, file: !989, line: 409, type: !68)
!1468 = !{!"723"}
!1469 = !DILocalVariable(name: "p2", arg: 3, scope: !1463, file: !989, line: 409, type: !68)
!1470 = !{!"724"}
!1471 = !DILocation(line: 411, column: 3, scope: !1463)
!1472 = !{i32 509200}
!1473 = !{!"725"}
!1474 = !{!"726"}
!1475 = !DILocation(line: 490, column: 1, scope: !1463)
!1476 = !{!"727"}
!1477 = distinct !DISubprogram(name: "Hacl_Curve25519_64_secret_to_public", scope: !3, file: !3, line: 381, type: !1478, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !32, !32}
!1480 = !{!"728"}
!1481 = !DILocalVariable(name: "pub", arg: 1, scope: !1477, file: !3, line: 381, type: !32)
!1482 = !DILocation(line: 0, scope: !1477)
!1483 = !{!"729"}
!1484 = !DILocalVariable(name: "priv", arg: 2, scope: !1477, file: !3, line: 381, type: !32)
!1485 = !{!"730"}
!1486 = !DILocalVariable(name: "basepoint", scope: !1477, file: !3, line: 383, type: !1487)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !20)
!1488 = !DILocation(line: 383, column: 11, scope: !1477)
!1489 = !{!"731"}
!1490 = !{!"732"}
!1491 = !{!"733"}
!1492 = !DILocalVariable(name: "i", scope: !1493, file: !3, line: 384, type: !6)
!1493 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 384, column: 3)
!1494 = !DILocation(line: 0, scope: !1493)
!1495 = !{!"734"}
!1496 = !DILocation(line: 384, column: 8, scope: !1493)
!1497 = !{!"735"}
!1498 = !{!"736"}
!1499 = !{!"737"}
!1500 = !DILocation(line: 384, column: 37, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 384, column: 3)
!1502 = !{!"738"}
!1503 = !DILocation(line: 384, column: 3, scope: !1493)
!1504 = !{!"739"}
!1505 = !DILocation(line: 386, column: 19, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 385, column: 3)
!1507 = !{!"740"}
!1508 = !DILocalVariable(name: "os", scope: !1506, file: !3, line: 386, type: !32)
!1509 = !DILocation(line: 0, scope: !1506)
!1510 = !{!"741"}
!1511 = !DILocation(line: 387, column: 17, scope: !1506)
!1512 = !{!"742"}
!1513 = !{!"743"}
!1514 = !{!"744"}
!1515 = !DILocalVariable(name: "x", scope: !1506, file: !3, line: 387, type: !14)
!1516 = !{!"745"}
!1517 = !DILocation(line: 388, column: 5, scope: !1506)
!1518 = !{!"746"}
!1519 = !{!"747"}
!1520 = !DILocation(line: 388, column: 11, scope: !1506)
!1521 = !{!"748"}
!1522 = !DILocation(line: 389, column: 3, scope: !1506)
!1523 = !{!"749"}
!1524 = !DILocation(line: 384, column: 55, scope: !1501)
!1525 = !{!"750"}
!1526 = !{!"751"}
!1527 = !DILocation(line: 384, column: 3, scope: !1501)
!1528 = distinct !{!1528, !1503, !1529, !464}
!1529 = !DILocation(line: 389, column: 3, scope: !1493)
!1530 = !{!"752"}
!1531 = !DILocation(line: 390, column: 44, scope: !1477)
!1532 = !{!"753"}
!1533 = !DILocation(line: 390, column: 3, scope: !1477)
!1534 = !{!"754"}
!1535 = !DILocation(line: 391, column: 1, scope: !1477)
!1536 = !{!"755"}
!1537 = distinct !DISubprogram(name: "Hacl_Curve25519_64_ecdh", scope: !3, file: !3, line: 400, type: !1538, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1540, !32, !32, !32}
!1540 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1541 = !{!"756"}
!1542 = !DILocalVariable(name: "out", arg: 1, scope: !1537, file: !3, line: 400, type: !32)
!1543 = !DILocation(line: 0, scope: !1537)
!1544 = !{!"757"}
!1545 = !DILocalVariable(name: "priv", arg: 2, scope: !1537, file: !3, line: 400, type: !32)
!1546 = !{!"758"}
!1547 = !DILocalVariable(name: "pub", arg: 3, scope: !1537, file: !3, line: 400, type: !32)
!1548 = !{!"759"}
!1549 = !DILocalVariable(name: "zeros", scope: !1537, file: !3, line: 402, type: !1487)
!1550 = !DILocation(line: 402, column: 11, scope: !1537)
!1551 = !{!"760"}
!1552 = !{!"761"}
!1553 = !{!"762"}
!1554 = !DILocation(line: 403, column: 3, scope: !1537)
!1555 = !{!"763"}
!1556 = !DILocalVariable(name: "res", scope: !1537, file: !3, line: 404, type: !14)
!1557 = !{!"764"}
!1558 = !DILocalVariable(name: "i", scope: !1559, file: !3, line: 405, type: !6)
!1559 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 405, column: 3)
!1560 = !DILocation(line: 0, scope: !1559)
!1561 = !{!"765"}
!1562 = !DILocation(line: 405, column: 8, scope: !1559)
!1563 = !{!"766"}
!1564 = !{!"767"}
!1565 = !{!"768"}
!1566 = !{!"769"}
!1567 = !{!"770"}
!1568 = !DILocation(line: 405, column: 37, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 405, column: 3)
!1570 = !{!"771"}
!1571 = !DILocation(line: 405, column: 3, scope: !1559)
!1572 = !{!"772"}
!1573 = !DILocation(line: 407, column: 43, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 406, column: 3)
!1575 = !{!"773"}
!1576 = !{!"774"}
!1577 = !{!"775"}
!1578 = !DILocation(line: 407, column: 51, scope: !1574)
!1579 = !{!"776"}
!1580 = !{!"777"}
!1581 = !{!"778"}
!1582 = !DILocation(line: 407, column: 23, scope: !1574)
!1583 = !{!"779"}
!1584 = !DILocalVariable(name: "uu____0", scope: !1574, file: !3, line: 407, type: !14)
!1585 = !DILocation(line: 0, scope: !1574)
!1586 = !{!"780"}
!1587 = !DILocation(line: 408, column: 11, scope: !1574)
!1588 = !{!"781"}
!1589 = !DILocation(line: 408, column: 21, scope: !1574)
!1590 = !{!"782"}
!1591 = !DILocation(line: 408, column: 19, scope: !1574)
!1592 = !{!"783"}
!1593 = !{!"784"}
!1594 = !{!"785"}
!1595 = !DILocation(line: 409, column: 3, scope: !1574)
!1596 = !{!"786"}
!1597 = !DILocation(line: 405, column: 55, scope: !1569)
!1598 = !{!"787"}
!1599 = !{!"788"}
!1600 = !DILocation(line: 405, column: 3, scope: !1569)
!1601 = distinct !{!1601, !1571, !1602, !464}
!1602 = !DILocation(line: 409, column: 3, scope: !1559)
!1603 = !{!"789"}
!1604 = !DILocalVariable(name: "z", scope: !1537, file: !3, line: 410, type: !14)
!1605 = !{!"790"}
!1606 = !DILocation(line: 411, column: 12, scope: !1537)
!1607 = !{!"791"}
!1608 = !DILocation(line: 411, column: 14, scope: !1537)
!1609 = !{!"792"}
!1610 = !DILocation(line: 411, column: 8, scope: !1537)
!1611 = !{!"793"}
!1612 = !DILocalVariable(name: "r", scope: !1537, file: !3, line: 411, type: !1540)
!1613 = !{!"794"}
!1614 = !DILocation(line: 412, column: 11, scope: !1537)
!1615 = !{!"795"}
!1616 = !DILocation(line: 412, column: 10, scope: !1537)
!1617 = !{!"796"}
!1618 = !DILocation(line: 412, column: 3, scope: !1537)
!1619 = !{!"797"}
!1620 = distinct !DISubprogram(name: "FStar_UInt8_eq_mask", scope: !920, file: !920, line: 179, type: !1621, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!14, !14, !14}
!1623 = !DILocalVariable(name: "a", arg: 1, scope: !1620, file: !920, line: 179, type: !14)
!1624 = !DILocation(line: 0, scope: !1620)
!1625 = !{!"798"}
!1626 = !DILocalVariable(name: "b", arg: 2, scope: !1620, file: !920, line: 179, type: !14)
!1627 = !{!"799"}
!1628 = !DILocation(line: 181, column: 15, scope: !1620)
!1629 = !{!"800"}
!1630 = !DILocation(line: 181, column: 19, scope: !1620)
!1631 = !{!"801"}
!1632 = !DILocation(line: 181, column: 17, scope: !1620)
!1633 = !{!"802"}
!1634 = !{!"803"}
!1635 = !DILocalVariable(name: "x", scope: !1620, file: !920, line: 181, type: !14)
!1636 = !{!"804"}
!1637 = !DILocation(line: 182, column: 22, scope: !1620)
!1638 = !{!"805"}
!1639 = !DILocation(line: 182, column: 21, scope: !1620)
!1640 = !{!"806"}
!1641 = !DILocation(line: 182, column: 24, scope: !1620)
!1642 = !{!"807"}
!1643 = !{!"808"}
!1644 = !DILocalVariable(name: "minus_x", scope: !1620, file: !920, line: 182, type: !14)
!1645 = !{!"809"}
!1646 = !DILocation(line: 183, column: 26, scope: !1620)
!1647 = !{!"810"}
!1648 = !DILocation(line: 183, column: 30, scope: !1620)
!1649 = !{!"811"}
!1650 = !DILocation(line: 183, column: 28, scope: !1620)
!1651 = !{!"812"}
!1652 = !{!"813"}
!1653 = !DILocalVariable(name: "x_or_minus_x", scope: !1620, file: !920, line: 183, type: !14)
!1654 = !{!"814"}
!1655 = !DILocation(line: 184, column: 17, scope: !1620)
!1656 = !{!"815"}
!1657 = !DILocation(line: 184, column: 30, scope: !1620)
!1658 = !{!"816"}
!1659 = !{!"817"}
!1660 = !DILocalVariable(name: "xnx", scope: !1620, file: !920, line: 184, type: !14)
!1661 = !{!"818"}
!1662 = !DILocation(line: 185, column: 10, scope: !1620)
!1663 = !{!"819"}
!1664 = !DILocation(line: 185, column: 14, scope: !1620)
!1665 = !{!"820"}
!1666 = !{!"821"}
!1667 = !DILocation(line: 185, column: 3, scope: !1620)
!1668 = !{!"822"}
!1669 = distinct !DISubprogram(name: "Hacl_Curve25519_64_ecdh_wrapper", scope: !24, file: !24, line: 3, type: !30, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !4)
!1670 = !DILocalVariable(name: "out", arg: 1, scope: !1669, file: !24, line: 3, type: !32)
!1671 = !DILocation(line: 0, scope: !1669)
!1672 = !{!"823"}
!1673 = !DILocalVariable(name: "priv", arg: 2, scope: !1669, file: !24, line: 3, type: !32)
!1674 = !{!"824"}
!1675 = !DILocalVariable(name: "pub", arg: 3, scope: !1669, file: !24, line: 3, type: !32)
!1676 = !{!"825"}
!1677 = !DILocation(line: 5, column: 13, scope: !1669)
!1678 = !{!"826"}
!1679 = !DILocation(line: 5, column: 3, scope: !1669)
!1680 = !{!"827"}
!1681 = !DILocation(line: 6, column: 13, scope: !1669)
!1682 = !{!"828"}
!1683 = !DILocation(line: 6, column: 3, scope: !1669)
!1684 = !{!"829"}
!1685 = !DILocation(line: 7, column: 13, scope: !1669)
!1686 = !{!"830"}
!1687 = !DILocation(line: 7, column: 3, scope: !1669)
!1688 = !{!"831"}
!1689 = !DILocation(line: 8, column: 13, scope: !1669)
!1690 = !{!"832"}
!1691 = !DILocation(line: 8, column: 3, scope: !1669)
!1692 = !{!"833"}
!1693 = !DILocation(line: 9, column: 3, scope: !1669)
!1694 = !{!"834"}
!1695 = !DILocation(line: 10, column: 1, scope: !1669)
!1696 = !{!"835"}
!1697 = distinct !DISubprogram(name: "Hacl_Curve25519_64_ecdh_wrapper_t", scope: !24, file: !24, line: 16, type: !1698, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !4)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null}
!1700 = !DILocation(line: 17, column: 17, scope: !1697)
!1701 = !{!"836"}
!1702 = !DILocalVariable(name: "pub", scope: !1697, file: !24, line: 17, type: !32)
!1703 = !DILocation(line: 0, scope: !1697)
!1704 = !{!"837"}
!1705 = !DILocation(line: 18, column: 18, scope: !1697)
!1706 = !{!"838"}
!1707 = !DILocalVariable(name: "priv", scope: !1697, file: !24, line: 18, type: !32)
!1708 = !{!"839"}
!1709 = !DILocation(line: 19, column: 18, scope: !1697)
!1710 = !{!"840"}
!1711 = !DILocalVariable(name: "out", scope: !1697, file: !24, line: 19, type: !32)
!1712 = !{!"841"}
!1713 = !DILocation(line: 20, column: 2, scope: !1697)
!1714 = !{!"842"}
!1715 = !DILocation(line: 21, column: 1, scope: !1697)
!1716 = !{!"843"}
