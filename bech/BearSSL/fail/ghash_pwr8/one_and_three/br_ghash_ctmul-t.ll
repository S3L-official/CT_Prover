; ModuleID = 'br_ghash_ctmul-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul_wrapper(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #0 !dbg !19 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !27, metadata !DIExpression()), !dbg !28, !psr.id !29
  call void @llvm.dbg.value(metadata i8* %1, metadata !30, metadata !DIExpression()), !dbg !28, !psr.id !31
  call void @llvm.dbg.value(metadata i8* %2, metadata !32, metadata !DIExpression()), !dbg !28, !psr.id !33
  call void @llvm.dbg.value(metadata i64 %3, metadata !34, metadata !DIExpression()), !dbg !28, !psr.id !35
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !36, !psr.id !37
  call void @public_in(%struct.smack_value* %5), !dbg !38, !psr.id !39
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !40, !psr.id !41
  call void @public_in(%struct.smack_value* %6), !dbg !42, !psr.id !43
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !44, !psr.id !45
  call void @public_in(%struct.smack_value* %7), !dbg !46, !psr.id !47
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !48, !psr.id !49
  call void @public_in(%struct.smack_value* %8), !dbg !50, !psr.id !51
  %9 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !52, !psr.id !53
  call void @public_in(%struct.smack_value* %9), !dbg !54, !psr.id !55
  %10 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 32), !dbg !56, !psr.id !57
  call void @public_in(%struct.smack_value* %10), !dbg !58, !psr.id !59
  call void @br_ghash_ctmul(i8* %0, i8* %1, i8* %2, i64 %3), !dbg !60, !psr.id !61
  ret void, !dbg !62, !psr.id !63
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul_wrapper_t() #0 !dbg !64 {
  %1 = call i8* (...) @gety(), !dbg !67, !psr.id !68
  call void @llvm.dbg.value(metadata i8* %1, metadata !69, metadata !DIExpression()), !dbg !70, !psr.id !71
  %2 = call i8* (...) @geth(), !dbg !72, !psr.id !73
  call void @llvm.dbg.value(metadata i8* %2, metadata !74, metadata !DIExpression()), !dbg !70, !psr.id !75
  %3 = call i8* (...) @getdata(), !dbg !76, !psr.id !77
  call void @llvm.dbg.value(metadata i8* %3, metadata !78, metadata !DIExpression()), !dbg !70, !psr.id !79
  %4 = call i64 (...) @getlen(), !dbg !80, !psr.id !81
  call void @llvm.dbg.value(metadata i64 %4, metadata !82, metadata !DIExpression()), !dbg !70, !psr.id !83
  call void @br_ghash_ctmul(i8* %1, i8* %2, i8* %3, i64 %4), !dbg !84, !psr.id !85
  ret void, !dbg !86, !psr.id !87
}

declare dso_local i8* @gety(...) #2

declare dso_local i8* @geth(...) #2

declare dso_local i8* @getdata(...) #2

declare dso_local i64 @getlen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_ctmul(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #0 !dbg !88 {
  %5 = alloca [4 x i32], align 16, !psr.id !89
  %6 = alloca [4 x i32], align 16, !psr.id !90
  %7 = alloca [16 x i8], align 16, !psr.id !91
  %8 = alloca [9 x i32], align 16, !psr.id !92
  %9 = alloca [9 x i32], align 16, !psr.id !93
  %10 = alloca [8 x i32], align 16, !psr.id !94
  call void @llvm.dbg.value(metadata i8* %0, metadata !95, metadata !DIExpression()), !dbg !96, !psr.id !97
  call void @llvm.dbg.value(metadata i8* %1, metadata !98, metadata !DIExpression()), !dbg !96, !psr.id !99
  call void @llvm.dbg.value(metadata i8* %2, metadata !100, metadata !DIExpression()), !dbg !96, !psr.id !101
  call void @llvm.dbg.value(metadata i64 %3, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !103
  call void @llvm.dbg.declare(metadata [4 x i32]* %5, metadata !104, metadata !DIExpression()), !dbg !108, !psr.id !109
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !110, metadata !DIExpression()), !dbg !111, !psr.id !112
  call void @llvm.dbg.value(metadata i8* %2, metadata !113, metadata !DIExpression()), !dbg !96, !psr.id !116
  call void @llvm.dbg.value(metadata i8* %0, metadata !117, metadata !DIExpression()), !dbg !96, !psr.id !119
  call void @llvm.dbg.value(metadata i8* %1, metadata !120, metadata !DIExpression()), !dbg !96, !psr.id !121
  %11 = call i32 @br_dec32be(i8* %0), !dbg !122, !psr.id !123
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !124, !psr.id !125
  store i32 %11, i32* %12, align 4, !dbg !126, !psr.id !127
  %13 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !128, !psr.id !129
  %14 = call i32 @br_dec32be(i8* %13), !dbg !130, !psr.id !131
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !132, !psr.id !133
  store i32 %14, i32* %15, align 8, !dbg !134, !psr.id !135
  %16 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !136, !psr.id !137
  %17 = call i32 @br_dec32be(i8* %16), !dbg !138, !psr.id !139
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !140, !psr.id !141
  store i32 %17, i32* %18, align 4, !dbg !142, !psr.id !143
  %19 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !144, !psr.id !145
  %20 = call i32 @br_dec32be(i8* %19), !dbg !146, !psr.id !147
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !148, !psr.id !149
  store i32 %20, i32* %21, align 16, !dbg !150, !psr.id !151
  %22 = call i32 @br_dec32be(i8* %1), !dbg !152, !psr.id !153
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !154, !psr.id !155
  store i32 %22, i32* %23, align 4, !dbg !156, !psr.id !157
  %24 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !158, !psr.id !159
  %25 = call i32 @br_dec32be(i8* %24), !dbg !160, !psr.id !161
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !162, !psr.id !163
  store i32 %25, i32* %26, align 8, !dbg !164, !psr.id !165
  %27 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !166, !psr.id !167
  %28 = call i32 @br_dec32be(i8* %27), !dbg !168, !psr.id !169
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !170, !psr.id !171
  store i32 %28, i32* %29, align 4, !dbg !172, !psr.id !173
  %30 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !174, !psr.id !175
  %31 = call i32 @br_dec32be(i8* %30), !dbg !176, !psr.id !177
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !178, !psr.id !179
  store i32 %31, i32* %32, align 16, !dbg !180, !psr.id !181
  br label %33, !dbg !182, !psr.id !183

33:                                               ; preds = %315, %4
  %.04 = phi i64 [ %3, %4 ], [ %.15, %315 ], !psr.id !184
  %.02 = phi i8* [ %2, %4 ], [ %.13, %315 ], !dbg !96, !psr.id !185
  call void @llvm.dbg.value(metadata i8* %.02, metadata !113, metadata !DIExpression()), !dbg !96, !psr.id !186
  call void @llvm.dbg.value(metadata i64 %.04, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !187
  %34 = icmp ugt i64 %.04, 0, !dbg !188, !psr.id !189
  br i1 %34, label %35, label %321, !dbg !182, !psr.id !190

35:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !191, metadata !DIExpression()), !dbg !196, !psr.id !197
  call void @llvm.dbg.declare(metadata [9 x i32]* %8, metadata !198, metadata !DIExpression()), !dbg !202, !psr.id !203
  call void @llvm.dbg.declare(metadata [9 x i32]* %9, metadata !204, metadata !DIExpression()), !dbg !205, !psr.id !206
  call void @llvm.dbg.declare(metadata [8 x i32]* %10, metadata !207, metadata !DIExpression()), !dbg !211, !psr.id !212
  %36 = icmp uge i64 %.04, 16, !dbg !213, !psr.id !215
  br i1 %36, label %37, label %40, !dbg !216, !psr.id !217

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %.02, metadata !218, metadata !DIExpression()), !dbg !219, !psr.id !220
  %38 = getelementptr inbounds i8, i8* %.02, i64 16, !dbg !221, !psr.id !223
  call void @llvm.dbg.value(metadata i8* %38, metadata !113, metadata !DIExpression()), !dbg !96, !psr.id !224
  %39 = sub i64 %.04, 16, !dbg !225, !psr.id !226
  call void @llvm.dbg.value(metadata i64 %39, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !227
  br label %46, !dbg !228, !psr.id !229

40:                                               ; preds = %35
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !230, !psr.id !232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 1 %.02, i64 %.04, i1 false), !dbg !230, !psr.id !233
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !234, !psr.id !235
  %43 = getelementptr inbounds i8, i8* %42, i64 %.04, !dbg !236, !psr.id !237
  %44 = sub i64 16, %.04, !dbg !238, !psr.id !239
  call void @llvm.memset.p0i8.i64(i8* align 1 %43, i8 0, i64 %44, i1 false), !dbg !240, !psr.id !241
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !242, !psr.id !243
  call void @llvm.dbg.value(metadata i8* %45, metadata !218, metadata !DIExpression()), !dbg !219, !psr.id !244
  call void @llvm.dbg.value(metadata i64 0, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !245
  br label %46, !psr.id !246

46:                                               ; preds = %40, %37
  %.15 = phi i64 [ %39, %37 ], [ 0, %40 ], !dbg !247, !psr.id !248
  %.13 = phi i8* [ %38, %37 ], [ %.02, %40 ], !dbg !96, !psr.id !249
  %.01 = phi i8* [ %.02, %37 ], [ %45, %40 ], !dbg !247, !psr.id !250
  call void @llvm.dbg.value(metadata i8* %.01, metadata !218, metadata !DIExpression()), !dbg !219, !psr.id !251
  call void @llvm.dbg.value(metadata i8* %.13, metadata !113, metadata !DIExpression()), !dbg !96, !psr.id !252
  call void @llvm.dbg.value(metadata i64 %.15, metadata !102, metadata !DIExpression()), !dbg !96, !psr.id !253
  %47 = call i32 @br_dec32be(i8* %.01), !dbg !254, !psr.id !255
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !256, !psr.id !257
  %49 = load i32, i32* %48, align 4, !dbg !258, !psr.id !259
  %50 = xor i32 %49, %47, !dbg !258, !psr.id !260
  store i32 %50, i32* %48, align 4, !dbg !258, !psr.id !261
  %51 = getelementptr inbounds i8, i8* %.01, i64 4, !dbg !262, !psr.id !263
  %52 = call i32 @br_dec32be(i8* %51), !dbg !264, !psr.id !265
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !266, !psr.id !267
  %54 = load i32, i32* %53, align 8, !dbg !268, !psr.id !269
  %55 = xor i32 %54, %52, !dbg !268, !psr.id !270
  store i32 %55, i32* %53, align 8, !dbg !268, !psr.id !271
  %56 = getelementptr inbounds i8, i8* %.01, i64 8, !dbg !272, !psr.id !273
  %57 = call i32 @br_dec32be(i8* %56), !dbg !274, !psr.id !275
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !276, !psr.id !277
  %59 = load i32, i32* %58, align 4, !dbg !278, !psr.id !279
  %60 = xor i32 %59, %57, !dbg !278, !psr.id !280
  store i32 %60, i32* %58, align 4, !dbg !278, !psr.id !281
  %61 = getelementptr inbounds i8, i8* %.01, i64 12, !dbg !282, !psr.id !283
  %62 = call i32 @br_dec32be(i8* %61), !dbg !284, !psr.id !285
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !286, !psr.id !287
  %64 = load i32, i32* %63, align 16, !dbg !288, !psr.id !289
  %65 = xor i32 %64, %62, !dbg !288, !psr.id !290
  store i32 %65, i32* %63, align 16, !dbg !288, !psr.id !291
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !292, !psr.id !293
  %67 = load i32, i32* %66, align 16, !dbg !292, !psr.id !294
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !295, !psr.id !296
  store i32 %67, i32* %68, align 16, !dbg !297, !psr.id !298
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !299, !psr.id !300
  %70 = load i32, i32* %69, align 16, !dbg !299, !psr.id !301
  %71 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !302, !psr.id !303
  store i32 %70, i32* %71, align 16, !dbg !304, !psr.id !305
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !306, !psr.id !307
  %73 = load i32, i32* %72, align 4, !dbg !306, !psr.id !308
  %74 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !309, !psr.id !310
  store i32 %73, i32* %74, align 4, !dbg !311, !psr.id !312
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1, !dbg !313, !psr.id !314
  %76 = load i32, i32* %75, align 4, !dbg !313, !psr.id !315
  %77 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !316, !psr.id !317
  store i32 %76, i32* %77, align 4, !dbg !318, !psr.id !319
  %78 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !320, !psr.id !321
  %79 = load i32, i32* %78, align 16, !dbg !320, !psr.id !322
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !323, !psr.id !324
  %81 = load i32, i32* %80, align 4, !dbg !323, !psr.id !325
  %82 = xor i32 %79, %81, !dbg !326, !psr.id !327
  %83 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 2, !dbg !328, !psr.id !329
  store i32 %82, i32* %83, align 8, !dbg !330, !psr.id !331
  %84 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !332, !psr.id !333
  %85 = load i32, i32* %84, align 16, !dbg !332, !psr.id !334
  %86 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !335, !psr.id !336
  %87 = load i32, i32* %86, align 4, !dbg !335, !psr.id !337
  %88 = xor i32 %85, %87, !dbg !338, !psr.id !339
  %89 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2, !dbg !340, !psr.id !341
  store i32 %88, i32* %89, align 8, !dbg !342, !psr.id !343
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !344, !psr.id !345
  %91 = load i32, i32* %90, align 8, !dbg !344, !psr.id !346
  %92 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !347, !psr.id !348
  store i32 %91, i32* %92, align 4, !dbg !349, !psr.id !350
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2, !dbg !351, !psr.id !352
  %94 = load i32, i32* %93, align 8, !dbg !351, !psr.id !353
  %95 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !354, !psr.id !355
  store i32 %94, i32* %95, align 4, !dbg !356, !psr.id !357
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !358, !psr.id !359
  %97 = load i32, i32* %96, align 4, !dbg !358, !psr.id !360
  %98 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !361, !psr.id !362
  store i32 %97, i32* %98, align 16, !dbg !363, !psr.id !364
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3, !dbg !365, !psr.id !366
  %100 = load i32, i32* %99, align 4, !dbg !365, !psr.id !367
  %101 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !368, !psr.id !369
  store i32 %100, i32* %101, align 16, !dbg !370, !psr.id !371
  %102 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !372, !psr.id !373
  %103 = load i32, i32* %102, align 4, !dbg !372, !psr.id !374
  %104 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !375, !psr.id !376
  %105 = load i32, i32* %104, align 16, !dbg !375, !psr.id !377
  %106 = xor i32 %103, %105, !dbg !378, !psr.id !379
  %107 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 5, !dbg !380, !psr.id !381
  store i32 %106, i32* %107, align 4, !dbg !382, !psr.id !383
  %108 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !384, !psr.id !385
  %109 = load i32, i32* %108, align 4, !dbg !384, !psr.id !386
  %110 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !387, !psr.id !388
  %111 = load i32, i32* %110, align 16, !dbg !387, !psr.id !389
  %112 = xor i32 %109, %111, !dbg !390, !psr.id !391
  %113 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5, !dbg !392, !psr.id !393
  store i32 %112, i32* %113, align 4, !dbg !394, !psr.id !395
  %114 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !396, !psr.id !397
  %115 = load i32, i32* %114, align 16, !dbg !396, !psr.id !398
  %116 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !399, !psr.id !400
  %117 = load i32, i32* %116, align 4, !dbg !399, !psr.id !401
  %118 = xor i32 %115, %117, !dbg !402, !psr.id !403
  %119 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !404, !psr.id !405
  store i32 %118, i32* %119, align 8, !dbg !406, !psr.id !407
  %120 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !408, !psr.id !409
  %121 = load i32, i32* %120, align 16, !dbg !408, !psr.id !410
  %122 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !411, !psr.id !412
  %123 = load i32, i32* %122, align 4, !dbg !411, !psr.id !413
  %124 = xor i32 %121, %123, !dbg !414, !psr.id !415
  %125 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !416, !psr.id !417
  store i32 %124, i32* %125, align 8, !dbg !418, !psr.id !419
  %126 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !420, !psr.id !421
  %127 = load i32, i32* %126, align 4, !dbg !420, !psr.id !422
  %128 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !423, !psr.id !424
  %129 = load i32, i32* %128, align 16, !dbg !423, !psr.id !425
  %130 = xor i32 %127, %129, !dbg !426, !psr.id !427
  %131 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !428, !psr.id !429
  store i32 %130, i32* %131, align 4, !dbg !430, !psr.id !431
  %132 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !432, !psr.id !433
  %133 = load i32, i32* %132, align 4, !dbg !432, !psr.id !434
  %134 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !435, !psr.id !436
  %135 = load i32, i32* %134, align 16, !dbg !435, !psr.id !437
  %136 = xor i32 %133, %135, !dbg !438, !psr.id !439
  %137 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !440, !psr.id !441
  store i32 %136, i32* %137, align 4, !dbg !442, !psr.id !443
  %138 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !444, !psr.id !445
  %139 = load i32, i32* %138, align 8, !dbg !444, !psr.id !446
  %140 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !447, !psr.id !448
  %141 = load i32, i32* %140, align 4, !dbg !447, !psr.id !449
  %142 = xor i32 %139, %141, !dbg !450, !psr.id !451
  %143 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 8, !dbg !452, !psr.id !453
  store i32 %142, i32* %143, align 16, !dbg !454, !psr.id !455
  %144 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !456, !psr.id !457
  %145 = load i32, i32* %144, align 8, !dbg !456, !psr.id !458
  %146 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !459, !psr.id !460
  %147 = load i32, i32* %146, align 4, !dbg !459, !psr.id !461
  %148 = xor i32 %145, %147, !dbg !462, !psr.id !463
  %149 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8, !dbg !464, !psr.id !465
  store i32 %148, i32* %149, align 16, !dbg !466, !psr.id !467
  call void @llvm.dbg.value(metadata i32 0, metadata !468, metadata !DIExpression()), !dbg !219, !psr.id !470
  br label %150, !dbg !471, !psr.id !473

150:                                              ; preds = %163, %46
  %.0 = phi i32 [ 0, %46 ], [ %164, %163 ], !dbg !474, !psr.id !475
  call void @llvm.dbg.value(metadata i32 %.0, metadata !468, metadata !DIExpression()), !dbg !219, !psr.id !476
  %151 = icmp slt i32 %.0, 9, !dbg !477, !psr.id !479
  br i1 %151, label %152, label %165, !dbg !480, !psr.id !481

152:                                              ; preds = %150
  %153 = sext i32 %.0 to i64, !dbg !482, !psr.id !484
  %154 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %153, !dbg !482, !psr.id !485
  %155 = sext i32 %.0 to i64, !dbg !486, !psr.id !487
  %156 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %155, !dbg !486, !psr.id !488
  %157 = sext i32 %.0 to i64, !dbg !489, !psr.id !490
  %158 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %157, !dbg !489, !psr.id !491
  %159 = load i32, i32* %158, align 4, !dbg !489, !psr.id !492
  %160 = sext i32 %.0 to i64, !dbg !493, !psr.id !494
  %161 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %160, !dbg !493, !psr.id !495
  %162 = load i32, i32* %161, align 4, !dbg !493, !psr.id !496
  call void @bmul(i32* %154, i32* %156, i32 %159, i32 %162), !dbg !497, !psr.id !498
  br label %163, !dbg !499, !psr.id !500

163:                                              ; preds = %152
  %164 = add nsw i32 %.0, 1, !dbg !501, !psr.id !502
  call void @llvm.dbg.value(metadata i32 %164, metadata !468, metadata !DIExpression()), !dbg !219, !psr.id !503
  br label %150, !dbg !504, !llvm.loop !505, !psr.id !508

165:                                              ; preds = %150
  %166 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !509, !psr.id !510
  %167 = load i32, i32* %166, align 16, !dbg !509, !psr.id !511
  call void @llvm.dbg.value(metadata i32 %167, metadata !512, metadata !DIExpression()), !dbg !219, !psr.id !513
  %168 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !514, !psr.id !515
  %169 = load i32, i32* %168, align 16, !dbg !514, !psr.id !516
  %170 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 2, !dbg !517, !psr.id !518
  %171 = load i32, i32* %170, align 8, !dbg !517, !psr.id !519
  %172 = xor i32 %169, %171, !dbg !520, !psr.id !521
  %173 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0, !dbg !522, !psr.id !523
  %174 = load i32, i32* %173, align 16, !dbg !522, !psr.id !524
  %175 = xor i32 %172, %174, !dbg !525, !psr.id !526
  %176 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !527, !psr.id !528
  %177 = load i32, i32* %176, align 4, !dbg !527, !psr.id !529
  %178 = xor i32 %175, %177, !dbg !530, !psr.id !531
  call void @llvm.dbg.value(metadata i32 %178, metadata !532, metadata !DIExpression()), !dbg !219, !psr.id !533
  %179 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1, !dbg !534, !psr.id !535
  %180 = load i32, i32* %179, align 4, !dbg !534, !psr.id !536
  %181 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2, !dbg !537, !psr.id !538
  %182 = load i32, i32* %181, align 8, !dbg !537, !psr.id !539
  %183 = xor i32 %180, %182, !dbg !540, !psr.id !541
  %184 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0, !dbg !542, !psr.id !543
  %185 = load i32, i32* %184, align 16, !dbg !542, !psr.id !544
  %186 = xor i32 %183, %185, !dbg !545, !psr.id !546
  %187 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !547, !psr.id !548
  %188 = load i32, i32* %187, align 4, !dbg !547, !psr.id !549
  %189 = xor i32 %186, %188, !dbg !550, !psr.id !551
  call void @llvm.dbg.value(metadata i32 %189, metadata !552, metadata !DIExpression()), !dbg !219, !psr.id !553
  %190 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1, !dbg !554, !psr.id !555
  %191 = load i32, i32* %190, align 4, !dbg !554, !psr.id !556
  call void @llvm.dbg.value(metadata i32 %191, metadata !557, metadata !DIExpression()), !dbg !219, !psr.id !558
  %192 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !559, !psr.id !560
  %193 = load i32, i32* %192, align 4, !dbg !559, !psr.id !561
  call void @llvm.dbg.value(metadata i32 %193, metadata !562, metadata !DIExpression()), !dbg !219, !psr.id !563
  %194 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !564, !psr.id !565
  %195 = load i32, i32* %194, align 4, !dbg !564, !psr.id !566
  %196 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 5, !dbg !567, !psr.id !568
  %197 = load i32, i32* %196, align 4, !dbg !567, !psr.id !569
  %198 = xor i32 %195, %197, !dbg !570, !psr.id !571
  %199 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3, !dbg !572, !psr.id !573
  %200 = load i32, i32* %199, align 4, !dbg !572, !psr.id !574
  %201 = xor i32 %198, %200, !dbg !575, !psr.id !576
  %202 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !577, !psr.id !578
  %203 = load i32, i32* %202, align 16, !dbg !577, !psr.id !579
  %204 = xor i32 %201, %203, !dbg !580, !psr.id !581
  call void @llvm.dbg.value(metadata i32 %204, metadata !582, metadata !DIExpression()), !dbg !219, !psr.id !583
  %205 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4, !dbg !584, !psr.id !585
  %206 = load i32, i32* %205, align 16, !dbg !584, !psr.id !586
  %207 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5, !dbg !587, !psr.id !588
  %208 = load i32, i32* %207, align 4, !dbg !587, !psr.id !589
  %209 = xor i32 %206, %208, !dbg !590, !psr.id !591
  %210 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3, !dbg !592, !psr.id !593
  %211 = load i32, i32* %210, align 4, !dbg !592, !psr.id !594
  %212 = xor i32 %209, %211, !dbg !595, !psr.id !596
  %213 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !597, !psr.id !598
  %214 = load i32, i32* %213, align 16, !dbg !597, !psr.id !599
  %215 = xor i32 %212, %214, !dbg !600, !psr.id !601
  call void @llvm.dbg.value(metadata i32 %215, metadata !602, metadata !DIExpression()), !dbg !219, !psr.id !603
  %216 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4, !dbg !604, !psr.id !605
  %217 = load i32, i32* %216, align 16, !dbg !604, !psr.id !606
  call void @llvm.dbg.value(metadata i32 %217, metadata !607, metadata !DIExpression()), !dbg !219, !psr.id !608
  %218 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !609, !psr.id !610
  %219 = load i32, i32* %218, align 8, !dbg !609, !psr.id !611
  call void @llvm.dbg.value(metadata i32 %219, metadata !612, metadata !DIExpression()), !dbg !219, !psr.id !613
  %220 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !614, !psr.id !615
  %221 = load i32, i32* %220, align 8, !dbg !614, !psr.id !616
  %222 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 8, !dbg !617, !psr.id !618
  %223 = load i32, i32* %222, align 16, !dbg !617, !psr.id !619
  %224 = xor i32 %221, %223, !dbg !620, !psr.id !621
  %225 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6, !dbg !622, !psr.id !623
  %226 = load i32, i32* %225, align 8, !dbg !622, !psr.id !624
  %227 = xor i32 %224, %226, !dbg !625, !psr.id !626
  %228 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !627, !psr.id !628
  %229 = load i32, i32* %228, align 4, !dbg !627, !psr.id !629
  %230 = xor i32 %227, %229, !dbg !630, !psr.id !631
  call void @llvm.dbg.value(metadata i32 %230, metadata !632, metadata !DIExpression()), !dbg !219, !psr.id !633
  %231 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7, !dbg !634, !psr.id !635
  %232 = load i32, i32* %231, align 4, !dbg !634, !psr.id !636
  %233 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8, !dbg !637, !psr.id !638
  %234 = load i32, i32* %233, align 16, !dbg !637, !psr.id !639
  %235 = xor i32 %232, %234, !dbg !640, !psr.id !641
  %236 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6, !dbg !642, !psr.id !643
  %237 = load i32, i32* %236, align 8, !dbg !642, !psr.id !644
  %238 = xor i32 %235, %237, !dbg !645, !psr.id !646
  %239 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !647, !psr.id !648
  %240 = load i32, i32* %239, align 4, !dbg !647, !psr.id !649
  %241 = xor i32 %238, %240, !dbg !650, !psr.id !651
  call void @llvm.dbg.value(metadata i32 %241, metadata !652, metadata !DIExpression()), !dbg !219, !psr.id !653
  %242 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7, !dbg !654, !psr.id !655
  %243 = load i32, i32* %242, align 4, !dbg !654, !psr.id !656
  call void @llvm.dbg.value(metadata i32 %243, metadata !657, metadata !DIExpression()), !dbg !219, !psr.id !658
  %244 = xor i32 %167, %193, !dbg !659, !psr.id !660
  %245 = xor i32 %219, %244, !dbg !661, !psr.id !662
  call void @llvm.dbg.value(metadata i32 %245, metadata !612, metadata !DIExpression()), !dbg !219, !psr.id !663
  %246 = xor i32 %178, %204, !dbg !664, !psr.id !665
  %247 = xor i32 %230, %246, !dbg !666, !psr.id !667
  call void @llvm.dbg.value(metadata i32 %247, metadata !632, metadata !DIExpression()), !dbg !219, !psr.id !668
  %248 = xor i32 %189, %215, !dbg !669, !psr.id !670
  %249 = xor i32 %241, %248, !dbg !671, !psr.id !672
  call void @llvm.dbg.value(metadata i32 %249, metadata !652, metadata !DIExpression()), !dbg !219, !psr.id !673
  %250 = xor i32 %191, %217, !dbg !674, !psr.id !675
  %251 = xor i32 %243, %250, !dbg !676, !psr.id !677
  call void @llvm.dbg.value(metadata i32 %251, metadata !657, metadata !DIExpression()), !dbg !219, !psr.id !678
  %252 = xor i32 %189, %245, !dbg !679, !psr.id !680
  call void @llvm.dbg.value(metadata i32 %252, metadata !552, metadata !DIExpression()), !dbg !219, !psr.id !681
  %253 = xor i32 %191, %247, !dbg !682, !psr.id !683
  call void @llvm.dbg.value(metadata i32 %253, metadata !557, metadata !DIExpression()), !dbg !219, !psr.id !684
  %254 = xor i32 %193, %249, !dbg !685, !psr.id !686
  call void @llvm.dbg.value(metadata i32 %254, metadata !562, metadata !DIExpression()), !dbg !219, !psr.id !687
  %255 = xor i32 %204, %251, !dbg !688, !psr.id !689
  call void @llvm.dbg.value(metadata i32 %255, metadata !582, metadata !DIExpression()), !dbg !219, !psr.id !690
  %256 = shl i32 %167, 1, !dbg !691, !psr.id !692
  %257 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0, !dbg !693, !psr.id !694
  store i32 %256, i32* %257, align 16, !dbg !695, !psr.id !696
  %258 = shl i32 %178, 1, !dbg !697, !psr.id !698
  %259 = lshr i32 %167, 31, !dbg !699, !psr.id !700
  %260 = or i32 %258, %259, !dbg !701, !psr.id !702
  %261 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1, !dbg !703, !psr.id !704
  store i32 %260, i32* %261, align 4, !dbg !705, !psr.id !706
  %262 = shl i32 %252, 1, !dbg !707, !psr.id !708
  %263 = lshr i32 %178, 31, !dbg !709, !psr.id !710
  %264 = or i32 %262, %263, !dbg !711, !psr.id !712
  %265 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2, !dbg !713, !psr.id !714
  store i32 %264, i32* %265, align 8, !dbg !715, !psr.id !716
  %266 = shl i32 %253, 1, !dbg !717, !psr.id !718
  %267 = lshr i32 %252, 31, !dbg !719, !psr.id !720
  %268 = or i32 %266, %267, !dbg !721, !psr.id !722
  %269 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3, !dbg !723, !psr.id !724
  store i32 %268, i32* %269, align 4, !dbg !725, !psr.id !726
  %270 = shl i32 %254, 1, !dbg !727, !psr.id !728
  %271 = lshr i32 %253, 31, !dbg !729, !psr.id !730
  %272 = or i32 %270, %271, !dbg !731, !psr.id !732
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4, !dbg !733, !psr.id !734
  store i32 %272, i32* %273, align 16, !dbg !735, !psr.id !736
  %274 = shl i32 %255, 1, !dbg !737, !psr.id !738
  %275 = lshr i32 %254, 31, !dbg !739, !psr.id !740
  %276 = or i32 %274, %275, !dbg !741, !psr.id !742
  %277 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5, !dbg !743, !psr.id !744
  store i32 %276, i32* %277, align 4, !dbg !745, !psr.id !746
  %278 = shl i32 %215, 1, !dbg !747, !psr.id !748
  %279 = lshr i32 %255, 31, !dbg !749, !psr.id !750
  %280 = or i32 %278, %279, !dbg !751, !psr.id !752
  %281 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 6, !dbg !753, !psr.id !754
  store i32 %280, i32* %281, align 8, !dbg !755, !psr.id !756
  %282 = shl i32 %217, 1, !dbg !757, !psr.id !758
  %283 = lshr i32 %215, 31, !dbg !759, !psr.id !760
  %284 = or i32 %282, %283, !dbg !761, !psr.id !762
  %285 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 7, !dbg !763, !psr.id !764
  store i32 %284, i32* %285, align 4, !dbg !765, !psr.id !766
  call void @llvm.dbg.value(metadata i32 0, metadata !468, metadata !DIExpression()), !dbg !219, !psr.id !767
  br label %286, !dbg !768, !psr.id !770

286:                                              ; preds = %313, %165
  %.1 = phi i32 [ 0, %165 ], [ %314, %313 ], !dbg !771, !psr.id !772
  call void @llvm.dbg.value(metadata i32 %.1, metadata !468, metadata !DIExpression()), !dbg !219, !psr.id !773
  %287 = icmp slt i32 %.1, 4, !dbg !774, !psr.id !776
  br i1 %287, label %288, label %315, !dbg !777, !psr.id !778

288:                                              ; preds = %286
  %289 = sext i32 %.1 to i64, !dbg !779, !psr.id !781
  %290 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %289, !dbg !779, !psr.id !782
  %291 = load i32, i32* %290, align 4, !dbg !779, !psr.id !783
  call void @llvm.dbg.value(metadata i32 %291, metadata !784, metadata !DIExpression()), !dbg !785, !psr.id !786
  %292 = lshr i32 %291, 1, !dbg !787, !psr.id !788
  %293 = xor i32 %291, %292, !dbg !789, !psr.id !790
  %294 = lshr i32 %291, 2, !dbg !791, !psr.id !792
  %295 = xor i32 %293, %294, !dbg !793, !psr.id !794
  %296 = lshr i32 %291, 7, !dbg !795, !psr.id !796
  %297 = xor i32 %295, %296, !dbg !797, !psr.id !798
  %298 = add nsw i32 %.1, 4, !dbg !799, !psr.id !800
  %299 = sext i32 %298 to i64, !dbg !801, !psr.id !802
  %300 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %299, !dbg !801, !psr.id !803
  %301 = load i32, i32* %300, align 4, !dbg !804, !psr.id !805
  %302 = xor i32 %301, %297, !dbg !804, !psr.id !806
  store i32 %302, i32* %300, align 4, !dbg !804, !psr.id !807
  %303 = shl i32 %291, 31, !dbg !808, !psr.id !809
  %304 = shl i32 %291, 30, !dbg !810, !psr.id !811
  %305 = xor i32 %303, %304, !dbg !812, !psr.id !813
  %306 = shl i32 %291, 25, !dbg !814, !psr.id !815
  %307 = xor i32 %305, %306, !dbg !816, !psr.id !817
  %308 = add nsw i32 %.1, 3, !dbg !818, !psr.id !819
  %309 = sext i32 %308 to i64, !dbg !820, !psr.id !821
  %310 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %309, !dbg !820, !psr.id !822
  %311 = load i32, i32* %310, align 4, !dbg !823, !psr.id !824
  %312 = xor i32 %311, %307, !dbg !823, !psr.id !825
  store i32 %312, i32* %310, align 4, !dbg !823, !psr.id !826
  br label %313, !dbg !827, !psr.id !828

313:                                              ; preds = %288
  %314 = add nsw i32 %.1, 1, !dbg !829, !psr.id !830
  call void @llvm.dbg.value(metadata i32 %314, metadata !468, metadata !DIExpression()), !dbg !219, !psr.id !831
  br label %286, !dbg !832, !llvm.loop !833, !psr.id !835

315:                                              ; preds = %286
  %316 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !836, !psr.id !837
  %317 = bitcast i32* %316 to i8*, !dbg !836, !psr.id !838
  %318 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0, !dbg !839, !psr.id !840
  %319 = getelementptr inbounds i32, i32* %318, i64 4, !dbg !841, !psr.id !842
  %320 = bitcast i32* %319 to i8*, !dbg !836, !psr.id !843
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %317, i8* align 4 %320, i64 16, i1 false), !dbg !836, !psr.id !844
  br label %33, !dbg !182, !llvm.loop !845, !psr.id !847

321:                                              ; preds = %33
  %322 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !848, !psr.id !849
  %323 = load i32, i32* %322, align 4, !dbg !848, !psr.id !850
  call void @br_enc32be(i8* %0, i32 %323), !dbg !851, !psr.id !852
  %324 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !853, !psr.id !854
  %325 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2, !dbg !855, !psr.id !856
  %326 = load i32, i32* %325, align 8, !dbg !855, !psr.id !857
  call void @br_enc32be(i8* %324, i32 %326), !dbg !858, !psr.id !859
  %327 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !860, !psr.id !861
  %328 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1, !dbg !862, !psr.id !863
  %329 = load i32, i32* %328, align 4, !dbg !862, !psr.id !864
  call void @br_enc32be(i8* %327, i32 %329), !dbg !865, !psr.id !866
  %330 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !867, !psr.id !868
  %331 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0, !dbg !869, !psr.id !870
  %332 = load i32, i32* %331, align 16, !dbg !869, !psr.id !871
  call void @br_enc32be(i8* %330, i32 %332), !dbg !872, !psr.id !873
  ret void, !dbg !874, !psr.id !875
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* noalias %0) #0 !dbg !876 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !880, metadata !DIExpression()), !dbg !881, !psr.id !882
  call void @llvm.dbg.value(metadata i8* %0, metadata !883, metadata !DIExpression()), !dbg !881, !psr.id !884
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !885, !psr.id !886
  %3 = load i8, i8* %2, align 1, !dbg !885, !psr.id !887
  %4 = zext i8 %3 to i32, !dbg !888, !psr.id !889
  %5 = shl i32 %4, 24, !dbg !890, !psr.id !891
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !892, !psr.id !893
  %7 = load i8, i8* %6, align 1, !dbg !892, !psr.id !894
  %8 = zext i8 %7 to i32, !dbg !895, !psr.id !896
  %9 = shl i32 %8, 16, !dbg !897, !psr.id !898
  %10 = or i32 %5, %9, !dbg !899, !psr.id !900
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !901, !psr.id !902
  %12 = load i8, i8* %11, align 1, !dbg !901, !psr.id !903
  %13 = zext i8 %12 to i32, !dbg !904, !psr.id !905
  %14 = shl i32 %13, 8, !dbg !906, !psr.id !907
  %15 = or i32 %10, %14, !dbg !908, !psr.id !909
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !910, !psr.id !911
  %17 = load i8, i8* %16, align 1, !dbg !910, !psr.id !912
  %18 = zext i8 %17 to i32, !dbg !913, !psr.id !914
  %19 = or i32 %15, %18, !dbg !915, !psr.id !916
  ret i32 %19, !dbg !917, !psr.id !918
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @bmul(i32* noalias %0, i32* noalias %1, i32 %2, i32 %3) #0 !dbg !919 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !923, metadata !DIExpression()), !dbg !924, !psr.id !925
  call void @llvm.dbg.value(metadata i32* %1, metadata !926, metadata !DIExpression()), !dbg !924, !psr.id !927
  call void @llvm.dbg.value(metadata i32 %2, metadata !928, metadata !DIExpression()), !dbg !924, !psr.id !929
  call void @llvm.dbg.value(metadata i32 %3, metadata !930, metadata !DIExpression()), !dbg !924, !psr.id !931
  %5 = and i32 %2, 286331153, !dbg !932, !psr.id !933
  call void @llvm.dbg.value(metadata i32 %5, metadata !934, metadata !DIExpression()), !dbg !924, !psr.id !935
  %6 = and i32 %2, 572662306, !dbg !936, !psr.id !937
  call void @llvm.dbg.value(metadata i32 %6, metadata !938, metadata !DIExpression()), !dbg !924, !psr.id !939
  %7 = and i32 %2, 1145324612, !dbg !940, !psr.id !941
  call void @llvm.dbg.value(metadata i32 %7, metadata !942, metadata !DIExpression()), !dbg !924, !psr.id !943
  %8 = and i32 %2, -2004318072, !dbg !944, !psr.id !945
  call void @llvm.dbg.value(metadata i32 %8, metadata !946, metadata !DIExpression()), !dbg !924, !psr.id !947
  %9 = and i32 %3, 286331153, !dbg !948, !psr.id !949
  call void @llvm.dbg.value(metadata i32 %9, metadata !950, metadata !DIExpression()), !dbg !924, !psr.id !951
  %10 = and i32 %3, 572662306, !dbg !952, !psr.id !953
  call void @llvm.dbg.value(metadata i32 %10, metadata !954, metadata !DIExpression()), !dbg !924, !psr.id !955
  %11 = and i32 %3, 1145324612, !dbg !956, !psr.id !957
  call void @llvm.dbg.value(metadata i32 %11, metadata !958, metadata !DIExpression()), !dbg !924, !psr.id !959
  %12 = and i32 %3, -2004318072, !dbg !960, !psr.id !961
  call void @llvm.dbg.value(metadata i32 %12, metadata !962, metadata !DIExpression()), !dbg !924, !psr.id !963
  %13 = zext i32 %5 to i64, !dbg !964, !psr.id !965
  %14 = zext i32 %9 to i64, !dbg !964, !psr.id !966
  %15 = mul i64 %13, %14, !dbg !964, !psr.id !967
  %16 = zext i32 %6 to i64, !dbg !968, !psr.id !969
  %17 = zext i32 %12 to i64, !dbg !968, !psr.id !970
  %18 = mul i64 %16, %17, !dbg !968, !psr.id !971
  %19 = xor i64 %15, %18, !dbg !972, !psr.id !973
  %20 = zext i32 %7 to i64, !dbg !974, !psr.id !975
  %21 = zext i32 %11 to i64, !dbg !974, !psr.id !976
  %22 = mul i64 %20, %21, !dbg !974, !psr.id !977
  %23 = xor i64 %19, %22, !dbg !978, !psr.id !979
  %24 = zext i32 %8 to i64, !dbg !980, !psr.id !981
  %25 = zext i32 %10 to i64, !dbg !980, !psr.id !982
  %26 = mul i64 %24, %25, !dbg !980, !psr.id !983
  %27 = xor i64 %23, %26, !dbg !984, !psr.id !985
  call void @llvm.dbg.value(metadata i64 %27, metadata !986, metadata !DIExpression()), !dbg !924, !psr.id !987
  %28 = zext i32 %5 to i64, !dbg !988, !psr.id !989
  %29 = zext i32 %10 to i64, !dbg !988, !psr.id !990
  %30 = mul i64 %28, %29, !dbg !988, !psr.id !991
  %31 = zext i32 %6 to i64, !dbg !992, !psr.id !993
  %32 = zext i32 %9 to i64, !dbg !992, !psr.id !994
  %33 = mul i64 %31, %32, !dbg !992, !psr.id !995
  %34 = xor i64 %30, %33, !dbg !996, !psr.id !997
  %35 = zext i32 %7 to i64, !dbg !998, !psr.id !999
  %36 = zext i32 %12 to i64, !dbg !998, !psr.id !1000
  %37 = mul i64 %35, %36, !dbg !998, !psr.id !1001
  %38 = xor i64 %34, %37, !dbg !1002, !psr.id !1003
  %39 = zext i32 %8 to i64, !dbg !1004, !psr.id !1005
  %40 = zext i32 %11 to i64, !dbg !1004, !psr.id !1006
  %41 = mul i64 %39, %40, !dbg !1004, !psr.id !1007
  %42 = xor i64 %38, %41, !dbg !1008, !psr.id !1009
  call void @llvm.dbg.value(metadata i64 %42, metadata !1010, metadata !DIExpression()), !dbg !924, !psr.id !1011
  %43 = zext i32 %5 to i64, !dbg !1012, !psr.id !1013
  %44 = zext i32 %11 to i64, !dbg !1012, !psr.id !1014
  %45 = mul i64 %43, %44, !dbg !1012, !psr.id !1015
  %46 = zext i32 %6 to i64, !dbg !1016, !psr.id !1017
  %47 = zext i32 %10 to i64, !dbg !1016, !psr.id !1018
  %48 = mul i64 %46, %47, !dbg !1016, !psr.id !1019
  %49 = xor i64 %45, %48, !dbg !1020, !psr.id !1021
  %50 = zext i32 %7 to i64, !dbg !1022, !psr.id !1023
  %51 = zext i32 %9 to i64, !dbg !1022, !psr.id !1024
  %52 = mul i64 %50, %51, !dbg !1022, !psr.id !1025
  %53 = xor i64 %49, %52, !dbg !1026, !psr.id !1027
  %54 = zext i32 %8 to i64, !dbg !1028, !psr.id !1029
  %55 = zext i32 %12 to i64, !dbg !1028, !psr.id !1030
  %56 = mul i64 %54, %55, !dbg !1028, !psr.id !1031
  %57 = xor i64 %53, %56, !dbg !1032, !psr.id !1033
  call void @llvm.dbg.value(metadata i64 %57, metadata !1034, metadata !DIExpression()), !dbg !924, !psr.id !1035
  %58 = zext i32 %5 to i64, !dbg !1036, !psr.id !1037
  %59 = zext i32 %12 to i64, !dbg !1036, !psr.id !1038
  %60 = mul i64 %58, %59, !dbg !1036, !psr.id !1039
  %61 = zext i32 %6 to i64, !dbg !1040, !psr.id !1041
  %62 = zext i32 %11 to i64, !dbg !1040, !psr.id !1042
  %63 = mul i64 %61, %62, !dbg !1040, !psr.id !1043
  %64 = xor i64 %60, %63, !dbg !1044, !psr.id !1045
  %65 = zext i32 %7 to i64, !dbg !1046, !psr.id !1047
  %66 = zext i32 %10 to i64, !dbg !1046, !psr.id !1048
  %67 = mul i64 %65, %66, !dbg !1046, !psr.id !1049
  %68 = xor i64 %64, %67, !dbg !1050, !psr.id !1051
  %69 = zext i32 %8 to i64, !dbg !1052, !psr.id !1053
  %70 = zext i32 %9 to i64, !dbg !1052, !psr.id !1054
  %71 = mul i64 %69, %70, !dbg !1052, !psr.id !1055
  %72 = xor i64 %68, %71, !dbg !1056, !psr.id !1057
  call void @llvm.dbg.value(metadata i64 %72, metadata !1058, metadata !DIExpression()), !dbg !924, !psr.id !1059
  %73 = and i64 %27, 1229782938247303441, !dbg !1060, !psr.id !1061
  call void @llvm.dbg.value(metadata i64 %73, metadata !986, metadata !DIExpression()), !dbg !924, !psr.id !1062
  %74 = and i64 %42, 2459565876494606882, !dbg !1063, !psr.id !1064
  call void @llvm.dbg.value(metadata i64 %74, metadata !1010, metadata !DIExpression()), !dbg !924, !psr.id !1065
  %75 = and i64 %57, 4919131752989213764, !dbg !1066, !psr.id !1067
  call void @llvm.dbg.value(metadata i64 %75, metadata !1034, metadata !DIExpression()), !dbg !924, !psr.id !1068
  %76 = and i64 %72, -8608480567731124088, !dbg !1069, !psr.id !1070
  call void @llvm.dbg.value(metadata i64 %76, metadata !1058, metadata !DIExpression()), !dbg !924, !psr.id !1071
  %77 = or i64 %73, %74, !dbg !1072, !psr.id !1073
  %78 = or i64 %77, %75, !dbg !1074, !psr.id !1075
  %79 = or i64 %78, %76, !dbg !1076, !psr.id !1077
  call void @llvm.dbg.value(metadata i64 %79, metadata !1078, metadata !DIExpression()), !dbg !924, !psr.id !1079
  %80 = trunc i64 %79 to i32, !dbg !1080, !psr.id !1081
  store i32 %80, i32* %1, align 4, !dbg !1082, !psr.id !1083
  %81 = lshr i64 %79, 32, !dbg !1084, !psr.id !1085
  %82 = trunc i64 %81 to i32, !dbg !1086, !psr.id !1087
  store i32 %82, i32* %0, align 4, !dbg !1088, !psr.id !1089
  ret void, !dbg !1090, !psr.id !1091
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* noalias %0, i32 %1) #0 !dbg !1092 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1095, metadata !DIExpression()), !dbg !1096, !psr.id !1097
  call void @llvm.dbg.value(metadata i32 %1, metadata !1098, metadata !DIExpression()), !dbg !1096, !psr.id !1099
  call void @llvm.dbg.value(metadata i8* %0, metadata !1100, metadata !DIExpression()), !dbg !1096, !psr.id !1101
  %3 = lshr i32 %1, 24, !dbg !1102, !psr.id !1103
  %4 = trunc i32 %3 to i8, !dbg !1104, !psr.id !1105
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1106, !psr.id !1107
  store i8 %4, i8* %5, align 1, !dbg !1108, !psr.id !1109
  %6 = lshr i32 %1, 16, !dbg !1110, !psr.id !1111
  %7 = trunc i32 %6 to i8, !dbg !1112, !psr.id !1113
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1114, !psr.id !1115
  store i8 %7, i8* %8, align 1, !dbg !1116, !psr.id !1117
  %9 = lshr i32 %1, 8, !dbg !1118, !psr.id !1119
  %10 = trunc i32 %9 to i8, !dbg !1120, !psr.id !1121
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1122, !psr.id !1123
  store i8 %10, i8* %11, align 1, !dbg !1124, !psr.id !1125
  %12 = trunc i32 %1 to i8, !dbg !1126, !psr.id !1127
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1128, !psr.id !1129
  store i8 %12, i8* %13, align 1, !dbg !1130, !psr.id !1131
  ret void, !dbg !1132, !psr.id !1133
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @br_ghash_ctmul_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0, !3}
!llvm.ident = !{!15, !15}
!llvm.module.flags = !{!16, !17, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "br_ghash_ctmul.c", directory: "/home/luwei/bech/BearSSL/ghash_ctmul")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "../BearSSL/src/hash/ghash_ctmul.c", directory: "/home/luwei/bech/BearSSL/ghash_ctmul")
!5 = !{!6, !11, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !13)
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = distinct !DISubprogram(name: "br_ghash_ctmul_wrapper", scope: !1, file: !1, line: 3, type: !20, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !23, !23, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !13)
!26 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!27 = !DILocalVariable(name: "y", arg: 1, scope: !19, file: !1, line: 3, type: !22)
!28 = !DILocation(line: 0, scope: !19)
!29 = !{!"0"}
!30 = !DILocalVariable(name: "h", arg: 2, scope: !19, file: !1, line: 3, type: !23)
!31 = !{!"1"}
!32 = !DILocalVariable(name: "data", arg: 3, scope: !19, file: !1, line: 3, type: !23)
!33 = !{!"2"}
!34 = !DILocalVariable(name: "len", arg: 4, scope: !19, file: !1, line: 3, type: !25)
!35 = !{!"3"}
!36 = !DILocation(line: 4, column: 12, scope: !19)
!37 = !{!"4"}
!38 = !DILocation(line: 4, column: 2, scope: !19)
!39 = !{!"5"}
!40 = !DILocation(line: 5, column: 12, scope: !19)
!41 = !{!"6"}
!42 = !DILocation(line: 5, column: 2, scope: !19)
!43 = !{!"7"}
!44 = !DILocation(line: 6, column: 12, scope: !19)
!45 = !{!"8"}
!46 = !DILocation(line: 6, column: 2, scope: !19)
!47 = !{!"9"}
!48 = !DILocation(line: 7, column: 12, scope: !19)
!49 = !{!"10"}
!50 = !DILocation(line: 7, column: 2, scope: !19)
!51 = !{!"11"}
!52 = !DILocation(line: 9, column: 12, scope: !19)
!53 = !{!"12"}
!54 = !DILocation(line: 9, column: 2, scope: !19)
!55 = !{!"13"}
!56 = !DILocation(line: 10, column: 12, scope: !19)
!57 = !{!"14"}
!58 = !DILocation(line: 10, column: 2, scope: !19)
!59 = !{!"15"}
!60 = !DILocation(line: 12, column: 2, scope: !19)
!61 = !{!"16"}
!62 = !DILocation(line: 13, column: 1, scope: !19)
!63 = !{!"17"}
!64 = distinct !DISubprogram(name: "br_ghash_ctmul_wrapper_t", scope: !1, file: !1, line: 21, type: !65, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DISubroutineType(types: !66)
!66 = !{null}
!67 = !DILocation(line: 22, column: 12, scope: !64)
!68 = !{!"18"}
!69 = !DILocalVariable(name: "y", scope: !64, file: !1, line: 22, type: !22)
!70 = !DILocation(line: 0, scope: !64)
!71 = !{!"19"}
!72 = !DILocation(line: 23, column: 19, scope: !64)
!73 = !{!"20"}
!74 = !DILocalVariable(name: "h", scope: !64, file: !1, line: 23, type: !23)
!75 = !{!"21"}
!76 = !DILocation(line: 24, column: 22, scope: !64)
!77 = !{!"22"}
!78 = !DILocalVariable(name: "data", scope: !64, file: !1, line: 24, type: !23)
!79 = !{!"23"}
!80 = !DILocation(line: 25, column: 17, scope: !64)
!81 = !{!"24"}
!82 = !DILocalVariable(name: "len", scope: !64, file: !1, line: 25, type: !25)
!83 = !{!"25"}
!84 = !DILocation(line: 26, column: 2, scope: !64)
!85 = !{!"26"}
!86 = !DILocation(line: 27, column: 1, scope: !64)
!87 = !{!"27"}
!88 = distinct !DISubprogram(name: "br_ghash_ctmul", scope: !4, file: !4, line: 197, type: !20, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!89 = !{!"28"}
!90 = !{!"29"}
!91 = !{!"30"}
!92 = !{!"31"}
!93 = !{!"32"}
!94 = !{!"33"}
!95 = !DILocalVariable(name: "y", arg: 1, scope: !88, file: !4, line: 197, type: !22)
!96 = !DILocation(line: 0, scope: !88)
!97 = !{!"34"}
!98 = !DILocalVariable(name: "h", arg: 2, scope: !88, file: !4, line: 197, type: !23)
!99 = !{!"35"}
!100 = !DILocalVariable(name: "data", arg: 3, scope: !88, file: !4, line: 197, type: !23)
!101 = !{!"36"}
!102 = !DILocalVariable(name: "len", arg: 4, scope: !88, file: !4, line: 197, type: !25)
!103 = !{!"37"}
!104 = !DILocalVariable(name: "yw", scope: !88, file: !4, line: 201, type: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DILocation(line: 201, column: 11, scope: !88)
!109 = !{!"38"}
!110 = !DILocalVariable(name: "hw", scope: !88, file: !4, line: 202, type: !105)
!111 = !DILocation(line: 202, column: 11, scope: !88)
!112 = !{!"39"}
!113 = !DILocalVariable(name: "buf", scope: !88, file: !4, line: 199, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!116 = !{!"40"}
!117 = !DILocalVariable(name: "yb", scope: !88, file: !4, line: 200, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!119 = !{!"41"}
!120 = !DILocalVariable(name: "hb", scope: !88, file: !4, line: 199, type: !114)
!121 = !{!"42"}
!122 = !DILocation(line: 211, column: 10, scope: !88)
!123 = !{!"43"}
!124 = !DILocation(line: 211, column: 2, scope: !88)
!125 = !{!"44"}
!126 = !DILocation(line: 211, column: 8, scope: !88)
!127 = !{!"45"}
!128 = !DILocation(line: 212, column: 24, scope: !88)
!129 = !{!"46"}
!130 = !DILocation(line: 212, column: 10, scope: !88)
!131 = !{!"47"}
!132 = !DILocation(line: 212, column: 2, scope: !88)
!133 = !{!"48"}
!134 = !DILocation(line: 212, column: 8, scope: !88)
!135 = !{!"49"}
!136 = !DILocation(line: 213, column: 24, scope: !88)
!137 = !{!"50"}
!138 = !DILocation(line: 213, column: 10, scope: !88)
!139 = !{!"51"}
!140 = !DILocation(line: 213, column: 2, scope: !88)
!141 = !{!"52"}
!142 = !DILocation(line: 213, column: 8, scope: !88)
!143 = !{!"53"}
!144 = !DILocation(line: 214, column: 24, scope: !88)
!145 = !{!"54"}
!146 = !DILocation(line: 214, column: 10, scope: !88)
!147 = !{!"55"}
!148 = !DILocation(line: 214, column: 2, scope: !88)
!149 = !{!"56"}
!150 = !DILocation(line: 214, column: 8, scope: !88)
!151 = !{!"57"}
!152 = !DILocation(line: 215, column: 10, scope: !88)
!153 = !{!"58"}
!154 = !DILocation(line: 215, column: 2, scope: !88)
!155 = !{!"59"}
!156 = !DILocation(line: 215, column: 8, scope: !88)
!157 = !{!"60"}
!158 = !DILocation(line: 216, column: 24, scope: !88)
!159 = !{!"61"}
!160 = !DILocation(line: 216, column: 10, scope: !88)
!161 = !{!"62"}
!162 = !DILocation(line: 216, column: 2, scope: !88)
!163 = !{!"63"}
!164 = !DILocation(line: 216, column: 8, scope: !88)
!165 = !{!"64"}
!166 = !DILocation(line: 217, column: 24, scope: !88)
!167 = !{!"65"}
!168 = !DILocation(line: 217, column: 10, scope: !88)
!169 = !{!"66"}
!170 = !DILocation(line: 217, column: 2, scope: !88)
!171 = !{!"67"}
!172 = !DILocation(line: 217, column: 8, scope: !88)
!173 = !{!"68"}
!174 = !DILocation(line: 218, column: 24, scope: !88)
!175 = !{!"69"}
!176 = !DILocation(line: 218, column: 10, scope: !88)
!177 = !{!"70"}
!178 = !DILocation(line: 218, column: 2, scope: !88)
!179 = !{!"71"}
!180 = !DILocation(line: 218, column: 8, scope: !88)
!181 = !{!"72"}
!182 = !DILocation(line: 219, column: 2, scope: !88)
!183 = !{!"73"}
!184 = !{!"74"}
!185 = !{!"75"}
!186 = !{!"76"}
!187 = !{!"77"}
!188 = !DILocation(line: 219, column: 13, scope: !88)
!189 = !{!"78"}
!190 = !{!"79"}
!191 = !DILocalVariable(name: "tmp", scope: !192, file: !4, line: 221, type: !193)
!192 = distinct !DILexicalBlock(scope: !88, file: !4, line: 219, column: 18)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 16)
!196 = !DILocation(line: 221, column: 17, scope: !192)
!197 = !{!"80"}
!198 = !DILocalVariable(name: "a", scope: !192, file: !4, line: 223, type: !199)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 288, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 9)
!202 = !DILocation(line: 223, column: 12, scope: !192)
!203 = !{!"81"}
!204 = !DILocalVariable(name: "b", scope: !192, file: !4, line: 223, type: !199)
!205 = !DILocation(line: 223, column: 18, scope: !192)
!206 = !{!"82"}
!207 = !DILocalVariable(name: "zw", scope: !192, file: !4, line: 223, type: !208)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 8)
!211 = !DILocation(line: 223, column: 24, scope: !192)
!212 = !{!"83"}
!213 = !DILocation(line: 230, column: 11, scope: !214)
!214 = distinct !DILexicalBlock(scope: !192, file: !4, line: 230, column: 7)
!215 = !{!"84"}
!216 = !DILocation(line: 230, column: 7, scope: !192)
!217 = !{!"85"}
!218 = !DILocalVariable(name: "src", scope: !192, file: !4, line: 220, type: !114)
!219 = !DILocation(line: 0, scope: !192)
!220 = !{!"86"}
!221 = !DILocation(line: 232, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !214, file: !4, line: 230, column: 18)
!223 = !{!"87"}
!224 = !{!"88"}
!225 = !DILocation(line: 233, column: 8, scope: !222)
!226 = !{!"89"}
!227 = !{!"90"}
!228 = !DILocation(line: 234, column: 3, scope: !222)
!229 = !{!"91"}
!230 = !DILocation(line: 235, column: 4, scope: !231)
!231 = distinct !DILexicalBlock(scope: !214, file: !4, line: 234, column: 10)
!232 = !{!"92"}
!233 = !{!"93"}
!234 = !DILocation(line: 236, column: 11, scope: !231)
!235 = !{!"94"}
!236 = !DILocation(line: 236, column: 15, scope: !231)
!237 = !{!"95"}
!238 = !DILocation(line: 236, column: 38, scope: !231)
!239 = !{!"96"}
!240 = !DILocation(line: 236, column: 4, scope: !231)
!241 = !{!"97"}
!242 = !DILocation(line: 237, column: 10, scope: !231)
!243 = !{!"98"}
!244 = !{!"99"}
!245 = !{!"100"}
!246 = !{!"101"}
!247 = !DILocation(line: 0, scope: !214)
!248 = !{!"102"}
!249 = !{!"103"}
!250 = !{!"104"}
!251 = !{!"105"}
!252 = !{!"106"}
!253 = !{!"107"}
!254 = !DILocation(line: 245, column: 12, scope: !192)
!255 = !{!"108"}
!256 = !DILocation(line: 245, column: 3, scope: !192)
!257 = !{!"109"}
!258 = !DILocation(line: 245, column: 9, scope: !192)
!259 = !{!"110"}
!260 = !{!"111"}
!261 = !{!"112"}
!262 = !DILocation(line: 246, column: 27, scope: !192)
!263 = !{!"113"}
!264 = !DILocation(line: 246, column: 12, scope: !192)
!265 = !{!"114"}
!266 = !DILocation(line: 246, column: 3, scope: !192)
!267 = !{!"115"}
!268 = !DILocation(line: 246, column: 9, scope: !192)
!269 = !{!"116"}
!270 = !{!"117"}
!271 = !{!"118"}
!272 = !DILocation(line: 247, column: 27, scope: !192)
!273 = !{!"119"}
!274 = !DILocation(line: 247, column: 12, scope: !192)
!275 = !{!"120"}
!276 = !DILocation(line: 247, column: 3, scope: !192)
!277 = !{!"121"}
!278 = !DILocation(line: 247, column: 9, scope: !192)
!279 = !{!"122"}
!280 = !{!"123"}
!281 = !{!"124"}
!282 = !DILocation(line: 248, column: 27, scope: !192)
!283 = !{!"125"}
!284 = !DILocation(line: 248, column: 12, scope: !192)
!285 = !{!"126"}
!286 = !DILocation(line: 248, column: 3, scope: !192)
!287 = !{!"127"}
!288 = !DILocation(line: 248, column: 9, scope: !192)
!289 = !{!"128"}
!290 = !{!"129"}
!291 = !{!"130"}
!292 = !DILocation(line: 262, column: 10, scope: !192)
!293 = !{!"131"}
!294 = !{!"132"}
!295 = !DILocation(line: 262, column: 3, scope: !192)
!296 = !{!"133"}
!297 = !DILocation(line: 262, column: 8, scope: !192)
!298 = !{!"134"}
!299 = !DILocation(line: 263, column: 10, scope: !192)
!300 = !{!"135"}
!301 = !{!"136"}
!302 = !DILocation(line: 263, column: 3, scope: !192)
!303 = !{!"137"}
!304 = !DILocation(line: 263, column: 8, scope: !192)
!305 = !{!"138"}
!306 = !DILocation(line: 264, column: 10, scope: !192)
!307 = !{!"139"}
!308 = !{!"140"}
!309 = !DILocation(line: 264, column: 3, scope: !192)
!310 = !{!"141"}
!311 = !DILocation(line: 264, column: 8, scope: !192)
!312 = !{!"142"}
!313 = !DILocation(line: 265, column: 10, scope: !192)
!314 = !{!"143"}
!315 = !{!"144"}
!316 = !DILocation(line: 265, column: 3, scope: !192)
!317 = !{!"145"}
!318 = !DILocation(line: 265, column: 8, scope: !192)
!319 = !{!"146"}
!320 = !DILocation(line: 266, column: 10, scope: !192)
!321 = !{!"147"}
!322 = !{!"148"}
!323 = !DILocation(line: 266, column: 17, scope: !192)
!324 = !{!"149"}
!325 = !{!"150"}
!326 = !DILocation(line: 266, column: 15, scope: !192)
!327 = !{!"151"}
!328 = !DILocation(line: 266, column: 3, scope: !192)
!329 = !{!"152"}
!330 = !DILocation(line: 266, column: 8, scope: !192)
!331 = !{!"153"}
!332 = !DILocation(line: 267, column: 10, scope: !192)
!333 = !{!"154"}
!334 = !{!"155"}
!335 = !DILocation(line: 267, column: 17, scope: !192)
!336 = !{!"156"}
!337 = !{!"157"}
!338 = !DILocation(line: 267, column: 15, scope: !192)
!339 = !{!"158"}
!340 = !DILocation(line: 267, column: 3, scope: !192)
!341 = !{!"159"}
!342 = !DILocation(line: 267, column: 8, scope: !192)
!343 = !{!"160"}
!344 = !DILocation(line: 269, column: 10, scope: !192)
!345 = !{!"161"}
!346 = !{!"162"}
!347 = !DILocation(line: 269, column: 3, scope: !192)
!348 = !{!"163"}
!349 = !DILocation(line: 269, column: 8, scope: !192)
!350 = !{!"164"}
!351 = !DILocation(line: 270, column: 10, scope: !192)
!352 = !{!"165"}
!353 = !{!"166"}
!354 = !DILocation(line: 270, column: 3, scope: !192)
!355 = !{!"167"}
!356 = !DILocation(line: 270, column: 8, scope: !192)
!357 = !{!"168"}
!358 = !DILocation(line: 271, column: 10, scope: !192)
!359 = !{!"169"}
!360 = !{!"170"}
!361 = !DILocation(line: 271, column: 3, scope: !192)
!362 = !{!"171"}
!363 = !DILocation(line: 271, column: 8, scope: !192)
!364 = !{!"172"}
!365 = !DILocation(line: 272, column: 10, scope: !192)
!366 = !{!"173"}
!367 = !{!"174"}
!368 = !DILocation(line: 272, column: 3, scope: !192)
!369 = !{!"175"}
!370 = !DILocation(line: 272, column: 8, scope: !192)
!371 = !{!"176"}
!372 = !DILocation(line: 273, column: 10, scope: !192)
!373 = !{!"177"}
!374 = !{!"178"}
!375 = !DILocation(line: 273, column: 17, scope: !192)
!376 = !{!"179"}
!377 = !{!"180"}
!378 = !DILocation(line: 273, column: 15, scope: !192)
!379 = !{!"181"}
!380 = !DILocation(line: 273, column: 3, scope: !192)
!381 = !{!"182"}
!382 = !DILocation(line: 273, column: 8, scope: !192)
!383 = !{!"183"}
!384 = !DILocation(line: 274, column: 10, scope: !192)
!385 = !{!"184"}
!386 = !{!"185"}
!387 = !DILocation(line: 274, column: 17, scope: !192)
!388 = !{!"186"}
!389 = !{!"187"}
!390 = !DILocation(line: 274, column: 15, scope: !192)
!391 = !{!"188"}
!392 = !DILocation(line: 274, column: 3, scope: !192)
!393 = !{!"189"}
!394 = !DILocation(line: 274, column: 8, scope: !192)
!395 = !{!"190"}
!396 = !DILocation(line: 276, column: 10, scope: !192)
!397 = !{!"191"}
!398 = !{!"192"}
!399 = !DILocation(line: 276, column: 17, scope: !192)
!400 = !{!"193"}
!401 = !{!"194"}
!402 = !DILocation(line: 276, column: 15, scope: !192)
!403 = !{!"195"}
!404 = !DILocation(line: 276, column: 3, scope: !192)
!405 = !{!"196"}
!406 = !DILocation(line: 276, column: 8, scope: !192)
!407 = !{!"197"}
!408 = !DILocation(line: 277, column: 10, scope: !192)
!409 = !{!"198"}
!410 = !{!"199"}
!411 = !DILocation(line: 277, column: 17, scope: !192)
!412 = !{!"200"}
!413 = !{!"201"}
!414 = !DILocation(line: 277, column: 15, scope: !192)
!415 = !{!"202"}
!416 = !DILocation(line: 277, column: 3, scope: !192)
!417 = !{!"203"}
!418 = !DILocation(line: 277, column: 8, scope: !192)
!419 = !{!"204"}
!420 = !DILocation(line: 278, column: 10, scope: !192)
!421 = !{!"205"}
!422 = !{!"206"}
!423 = !DILocation(line: 278, column: 17, scope: !192)
!424 = !{!"207"}
!425 = !{!"208"}
!426 = !DILocation(line: 278, column: 15, scope: !192)
!427 = !{!"209"}
!428 = !DILocation(line: 278, column: 3, scope: !192)
!429 = !{!"210"}
!430 = !DILocation(line: 278, column: 8, scope: !192)
!431 = !{!"211"}
!432 = !DILocation(line: 279, column: 10, scope: !192)
!433 = !{!"212"}
!434 = !{!"213"}
!435 = !DILocation(line: 279, column: 17, scope: !192)
!436 = !{!"214"}
!437 = !{!"215"}
!438 = !DILocation(line: 279, column: 15, scope: !192)
!439 = !{!"216"}
!440 = !DILocation(line: 279, column: 3, scope: !192)
!441 = !{!"217"}
!442 = !DILocation(line: 279, column: 8, scope: !192)
!443 = !{!"218"}
!444 = !DILocation(line: 280, column: 10, scope: !192)
!445 = !{!"219"}
!446 = !{!"220"}
!447 = !DILocation(line: 280, column: 17, scope: !192)
!448 = !{!"221"}
!449 = !{!"222"}
!450 = !DILocation(line: 280, column: 15, scope: !192)
!451 = !{!"223"}
!452 = !DILocation(line: 280, column: 3, scope: !192)
!453 = !{!"224"}
!454 = !DILocation(line: 280, column: 8, scope: !192)
!455 = !{!"225"}
!456 = !DILocation(line: 281, column: 10, scope: !192)
!457 = !{!"226"}
!458 = !{!"227"}
!459 = !DILocation(line: 281, column: 17, scope: !192)
!460 = !{!"228"}
!461 = !{!"229"}
!462 = !DILocation(line: 281, column: 15, scope: !192)
!463 = !{!"230"}
!464 = !DILocation(line: 281, column: 3, scope: !192)
!465 = !{!"231"}
!466 = !DILocation(line: 281, column: 8, scope: !192)
!467 = !{!"232"}
!468 = !DILocalVariable(name: "i", scope: !192, file: !4, line: 222, type: !469)
!469 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!470 = !{!"233"}
!471 = !DILocation(line: 283, column: 8, scope: !472)
!472 = distinct !DILexicalBlock(scope: !192, file: !4, line: 283, column: 3)
!473 = !{!"234"}
!474 = !DILocation(line: 0, scope: !472)
!475 = !{!"235"}
!476 = !{!"236"}
!477 = !DILocation(line: 283, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !472, file: !4, line: 283, column: 3)
!479 = !{!"237"}
!480 = !DILocation(line: 283, column: 3, scope: !472)
!481 = !{!"238"}
!482 = !DILocation(line: 284, column: 10, scope: !483)
!483 = distinct !DILexicalBlock(scope: !478, file: !4, line: 283, column: 28)
!484 = !{!"239"}
!485 = !{!"240"}
!486 = !DILocation(line: 284, column: 17, scope: !483)
!487 = !{!"241"}
!488 = !{!"242"}
!489 = !DILocation(line: 284, column: 23, scope: !483)
!490 = !{!"243"}
!491 = !{!"244"}
!492 = !{!"245"}
!493 = !DILocation(line: 284, column: 29, scope: !483)
!494 = !{!"246"}
!495 = !{!"247"}
!496 = !{!"248"}
!497 = !DILocation(line: 284, column: 4, scope: !483)
!498 = !{!"249"}
!499 = !DILocation(line: 285, column: 3, scope: !483)
!500 = !{!"250"}
!501 = !DILocation(line: 283, column: 24, scope: !478)
!502 = !{!"251"}
!503 = !{!"252"}
!504 = !DILocation(line: 283, column: 3, scope: !478)
!505 = distinct !{!505, !480, !506, !507}
!506 = !DILocation(line: 285, column: 3, scope: !472)
!507 = !{!"llvm.loop.mustprogress"}
!508 = !{!"253"}
!509 = !DILocation(line: 287, column: 8, scope: !192)
!510 = !{!"254"}
!511 = !{!"255"}
!512 = !DILocalVariable(name: "c0", scope: !192, file: !4, line: 224, type: !6)
!513 = !{!"256"}
!514 = !DILocation(line: 288, column: 8, scope: !192)
!515 = !{!"257"}
!516 = !{!"258"}
!517 = !DILocation(line: 288, column: 15, scope: !192)
!518 = !{!"259"}
!519 = !{!"260"}
!520 = !DILocation(line: 288, column: 13, scope: !192)
!521 = !{!"261"}
!522 = !DILocation(line: 288, column: 22, scope: !192)
!523 = !{!"262"}
!524 = !{!"263"}
!525 = !DILocation(line: 288, column: 20, scope: !192)
!526 = !{!"264"}
!527 = !DILocation(line: 288, column: 29, scope: !192)
!528 = !{!"265"}
!529 = !{!"266"}
!530 = !DILocation(line: 288, column: 27, scope: !192)
!531 = !{!"267"}
!532 = !DILocalVariable(name: "c1", scope: !192, file: !4, line: 224, type: !6)
!533 = !{!"268"}
!534 = !DILocation(line: 289, column: 8, scope: !192)
!535 = !{!"269"}
!536 = !{!"270"}
!537 = !DILocation(line: 289, column: 15, scope: !192)
!538 = !{!"271"}
!539 = !{!"272"}
!540 = !DILocation(line: 289, column: 13, scope: !192)
!541 = !{!"273"}
!542 = !DILocation(line: 289, column: 22, scope: !192)
!543 = !{!"274"}
!544 = !{!"275"}
!545 = !DILocation(line: 289, column: 20, scope: !192)
!546 = !{!"276"}
!547 = !DILocation(line: 289, column: 29, scope: !192)
!548 = !{!"277"}
!549 = !{!"278"}
!550 = !DILocation(line: 289, column: 27, scope: !192)
!551 = !{!"279"}
!552 = !DILocalVariable(name: "c2", scope: !192, file: !4, line: 224, type: !6)
!553 = !{!"280"}
!554 = !DILocation(line: 290, column: 8, scope: !192)
!555 = !{!"281"}
!556 = !{!"282"}
!557 = !DILocalVariable(name: "c3", scope: !192, file: !4, line: 224, type: !6)
!558 = !{!"283"}
!559 = !DILocation(line: 291, column: 8, scope: !192)
!560 = !{!"284"}
!561 = !{!"285"}
!562 = !DILocalVariable(name: "d0", scope: !192, file: !4, line: 224, type: !6)
!563 = !{!"286"}
!564 = !DILocation(line: 292, column: 8, scope: !192)
!565 = !{!"287"}
!566 = !{!"288"}
!567 = !DILocation(line: 292, column: 15, scope: !192)
!568 = !{!"289"}
!569 = !{!"290"}
!570 = !DILocation(line: 292, column: 13, scope: !192)
!571 = !{!"291"}
!572 = !DILocation(line: 292, column: 22, scope: !192)
!573 = !{!"292"}
!574 = !{!"293"}
!575 = !DILocation(line: 292, column: 20, scope: !192)
!576 = !{!"294"}
!577 = !DILocation(line: 292, column: 29, scope: !192)
!578 = !{!"295"}
!579 = !{!"296"}
!580 = !DILocation(line: 292, column: 27, scope: !192)
!581 = !{!"297"}
!582 = !DILocalVariable(name: "d1", scope: !192, file: !4, line: 224, type: !6)
!583 = !{!"298"}
!584 = !DILocation(line: 293, column: 8, scope: !192)
!585 = !{!"299"}
!586 = !{!"300"}
!587 = !DILocation(line: 293, column: 15, scope: !192)
!588 = !{!"301"}
!589 = !{!"302"}
!590 = !DILocation(line: 293, column: 13, scope: !192)
!591 = !{!"303"}
!592 = !DILocation(line: 293, column: 22, scope: !192)
!593 = !{!"304"}
!594 = !{!"305"}
!595 = !DILocation(line: 293, column: 20, scope: !192)
!596 = !{!"306"}
!597 = !DILocation(line: 293, column: 29, scope: !192)
!598 = !{!"307"}
!599 = !{!"308"}
!600 = !DILocation(line: 293, column: 27, scope: !192)
!601 = !{!"309"}
!602 = !DILocalVariable(name: "d2", scope: !192, file: !4, line: 224, type: !6)
!603 = !{!"310"}
!604 = !DILocation(line: 294, column: 8, scope: !192)
!605 = !{!"311"}
!606 = !{!"312"}
!607 = !DILocalVariable(name: "d3", scope: !192, file: !4, line: 224, type: !6)
!608 = !{!"313"}
!609 = !DILocation(line: 295, column: 8, scope: !192)
!610 = !{!"314"}
!611 = !{!"315"}
!612 = !DILocalVariable(name: "e0", scope: !192, file: !4, line: 224, type: !6)
!613 = !{!"316"}
!614 = !DILocation(line: 296, column: 8, scope: !192)
!615 = !{!"317"}
!616 = !{!"318"}
!617 = !DILocation(line: 296, column: 15, scope: !192)
!618 = !{!"319"}
!619 = !{!"320"}
!620 = !DILocation(line: 296, column: 13, scope: !192)
!621 = !{!"321"}
!622 = !DILocation(line: 296, column: 22, scope: !192)
!623 = !{!"322"}
!624 = !{!"323"}
!625 = !DILocation(line: 296, column: 20, scope: !192)
!626 = !{!"324"}
!627 = !DILocation(line: 296, column: 29, scope: !192)
!628 = !{!"325"}
!629 = !{!"326"}
!630 = !DILocation(line: 296, column: 27, scope: !192)
!631 = !{!"327"}
!632 = !DILocalVariable(name: "e1", scope: !192, file: !4, line: 224, type: !6)
!633 = !{!"328"}
!634 = !DILocation(line: 297, column: 8, scope: !192)
!635 = !{!"329"}
!636 = !{!"330"}
!637 = !DILocation(line: 297, column: 15, scope: !192)
!638 = !{!"331"}
!639 = !{!"332"}
!640 = !DILocation(line: 297, column: 13, scope: !192)
!641 = !{!"333"}
!642 = !DILocation(line: 297, column: 22, scope: !192)
!643 = !{!"334"}
!644 = !{!"335"}
!645 = !DILocation(line: 297, column: 20, scope: !192)
!646 = !{!"336"}
!647 = !DILocation(line: 297, column: 29, scope: !192)
!648 = !{!"337"}
!649 = !{!"338"}
!650 = !DILocation(line: 297, column: 27, scope: !192)
!651 = !{!"339"}
!652 = !DILocalVariable(name: "e2", scope: !192, file: !4, line: 224, type: !6)
!653 = !{!"340"}
!654 = !DILocation(line: 298, column: 8, scope: !192)
!655 = !{!"341"}
!656 = !{!"342"}
!657 = !DILocalVariable(name: "e3", scope: !192, file: !4, line: 224, type: !6)
!658 = !{!"343"}
!659 = !DILocation(line: 300, column: 12, scope: !192)
!660 = !{!"344"}
!661 = !DILocation(line: 300, column: 6, scope: !192)
!662 = !{!"345"}
!663 = !{!"346"}
!664 = !DILocation(line: 301, column: 12, scope: !192)
!665 = !{!"347"}
!666 = !DILocation(line: 301, column: 6, scope: !192)
!667 = !{!"348"}
!668 = !{!"349"}
!669 = !DILocation(line: 302, column: 12, scope: !192)
!670 = !{!"350"}
!671 = !DILocation(line: 302, column: 6, scope: !192)
!672 = !{!"351"}
!673 = !{!"352"}
!674 = !DILocation(line: 303, column: 12, scope: !192)
!675 = !{!"353"}
!676 = !DILocation(line: 303, column: 6, scope: !192)
!677 = !{!"354"}
!678 = !{!"355"}
!679 = !DILocation(line: 304, column: 6, scope: !192)
!680 = !{!"356"}
!681 = !{!"357"}
!682 = !DILocation(line: 305, column: 6, scope: !192)
!683 = !{!"358"}
!684 = !{!"359"}
!685 = !DILocation(line: 306, column: 6, scope: !192)
!686 = !{!"360"}
!687 = !{!"361"}
!688 = !DILocation(line: 307, column: 6, scope: !192)
!689 = !{!"362"}
!690 = !{!"363"}
!691 = !DILocation(line: 315, column: 14, scope: !192)
!692 = !{!"364"}
!693 = !DILocation(line: 315, column: 3, scope: !192)
!694 = !{!"365"}
!695 = !DILocation(line: 315, column: 9, scope: !192)
!696 = !{!"366"}
!697 = !DILocation(line: 316, column: 15, scope: !192)
!698 = !{!"367"}
!699 = !DILocation(line: 316, column: 27, scope: !192)
!700 = !{!"368"}
!701 = !DILocation(line: 316, column: 21, scope: !192)
!702 = !{!"369"}
!703 = !DILocation(line: 316, column: 3, scope: !192)
!704 = !{!"370"}
!705 = !DILocation(line: 316, column: 9, scope: !192)
!706 = !{!"371"}
!707 = !DILocation(line: 317, column: 15, scope: !192)
!708 = !{!"372"}
!709 = !DILocation(line: 317, column: 27, scope: !192)
!710 = !{!"373"}
!711 = !DILocation(line: 317, column: 21, scope: !192)
!712 = !{!"374"}
!713 = !DILocation(line: 317, column: 3, scope: !192)
!714 = !{!"375"}
!715 = !DILocation(line: 317, column: 9, scope: !192)
!716 = !{!"376"}
!717 = !DILocation(line: 318, column: 15, scope: !192)
!718 = !{!"377"}
!719 = !DILocation(line: 318, column: 27, scope: !192)
!720 = !{!"378"}
!721 = !DILocation(line: 318, column: 21, scope: !192)
!722 = !{!"379"}
!723 = !DILocation(line: 318, column: 3, scope: !192)
!724 = !{!"380"}
!725 = !DILocation(line: 318, column: 9, scope: !192)
!726 = !{!"381"}
!727 = !DILocation(line: 319, column: 15, scope: !192)
!728 = !{!"382"}
!729 = !DILocation(line: 319, column: 27, scope: !192)
!730 = !{!"383"}
!731 = !DILocation(line: 319, column: 21, scope: !192)
!732 = !{!"384"}
!733 = !DILocation(line: 319, column: 3, scope: !192)
!734 = !{!"385"}
!735 = !DILocation(line: 319, column: 9, scope: !192)
!736 = !{!"386"}
!737 = !DILocation(line: 320, column: 15, scope: !192)
!738 = !{!"387"}
!739 = !DILocation(line: 320, column: 27, scope: !192)
!740 = !{!"388"}
!741 = !DILocation(line: 320, column: 21, scope: !192)
!742 = !{!"389"}
!743 = !DILocation(line: 320, column: 3, scope: !192)
!744 = !{!"390"}
!745 = !DILocation(line: 320, column: 9, scope: !192)
!746 = !{!"391"}
!747 = !DILocation(line: 321, column: 15, scope: !192)
!748 = !{!"392"}
!749 = !DILocation(line: 321, column: 27, scope: !192)
!750 = !{!"393"}
!751 = !DILocation(line: 321, column: 21, scope: !192)
!752 = !{!"394"}
!753 = !DILocation(line: 321, column: 3, scope: !192)
!754 = !{!"395"}
!755 = !DILocation(line: 321, column: 9, scope: !192)
!756 = !{!"396"}
!757 = !DILocation(line: 322, column: 15, scope: !192)
!758 = !{!"397"}
!759 = !DILocation(line: 322, column: 27, scope: !192)
!760 = !{!"398"}
!761 = !DILocation(line: 322, column: 21, scope: !192)
!762 = !{!"399"}
!763 = !DILocation(line: 322, column: 3, scope: !192)
!764 = !{!"400"}
!765 = !DILocation(line: 322, column: 9, scope: !192)
!766 = !{!"401"}
!767 = !{!"402"}
!768 = !DILocation(line: 328, column: 8, scope: !769)
!769 = distinct !DILexicalBlock(scope: !192, file: !4, line: 328, column: 3)
!770 = !{!"403"}
!771 = !DILocation(line: 0, scope: !769)
!772 = !{!"404"}
!773 = !{!"405"}
!774 = !DILocation(line: 328, column: 17, scope: !775)
!775 = distinct !DILexicalBlock(scope: !769, file: !4, line: 328, column: 3)
!776 = !{!"406"}
!777 = !DILocation(line: 328, column: 3, scope: !769)
!778 = !{!"407"}
!779 = !DILocation(line: 331, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !775, file: !4, line: 328, column: 28)
!781 = !{!"408"}
!782 = !{!"409"}
!783 = !{!"410"}
!784 = !DILocalVariable(name: "lw", scope: !780, file: !4, line: 329, type: !6)
!785 = !DILocation(line: 0, scope: !780)
!786 = !{!"411"}
!787 = !DILocation(line: 332, column: 26, scope: !780)
!788 = !{!"412"}
!789 = !DILocation(line: 332, column: 20, scope: !780)
!790 = !{!"413"}
!791 = !DILocation(line: 332, column: 38, scope: !780)
!792 = !{!"414"}
!793 = !DILocation(line: 332, column: 32, scope: !780)
!794 = !{!"415"}
!795 = !DILocation(line: 332, column: 50, scope: !780)
!796 = !{!"416"}
!797 = !DILocation(line: 332, column: 44, scope: !780)
!798 = !{!"417"}
!799 = !DILocation(line: 332, column: 9, scope: !780)
!800 = !{!"418"}
!801 = !DILocation(line: 332, column: 4, scope: !780)
!802 = !{!"419"}
!803 = !{!"420"}
!804 = !DILocation(line: 332, column: 14, scope: !780)
!805 = !{!"421"}
!806 = !{!"422"}
!807 = !{!"423"}
!808 = !DILocation(line: 333, column: 21, scope: !780)
!809 = !{!"424"}
!810 = !DILocation(line: 333, column: 34, scope: !780)
!811 = !{!"425"}
!812 = !DILocation(line: 333, column: 28, scope: !780)
!813 = !{!"426"}
!814 = !DILocation(line: 333, column: 47, scope: !780)
!815 = !{!"427"}
!816 = !DILocation(line: 333, column: 41, scope: !780)
!817 = !{!"428"}
!818 = !DILocation(line: 333, column: 9, scope: !780)
!819 = !{!"429"}
!820 = !DILocation(line: 333, column: 4, scope: !780)
!821 = !{!"430"}
!822 = !{!"431"}
!823 = !DILocation(line: 333, column: 14, scope: !780)
!824 = !{!"432"}
!825 = !{!"433"}
!826 = !{!"434"}
!827 = !DILocation(line: 334, column: 3, scope: !780)
!828 = !{!"435"}
!829 = !DILocation(line: 328, column: 24, scope: !775)
!830 = !{!"436"}
!831 = !{!"437"}
!832 = !DILocation(line: 328, column: 3, scope: !775)
!833 = distinct !{!833, !777, !834, !507}
!834 = !DILocation(line: 334, column: 3, scope: !769)
!835 = !{!"438"}
!836 = !DILocation(line: 335, column: 3, scope: !192)
!837 = !{!"439"}
!838 = !{!"440"}
!839 = !DILocation(line: 335, column: 14, scope: !192)
!840 = !{!"441"}
!841 = !DILocation(line: 335, column: 17, scope: !192)
!842 = !{!"442"}
!843 = !{!"443"}
!844 = !{!"444"}
!845 = distinct !{!845, !182, !846, !507}
!846 = !DILocation(line: 336, column: 2, scope: !88)
!847 = !{!"445"}
!848 = !DILocation(line: 341, column: 17, scope: !88)
!849 = !{!"446"}
!850 = !{!"447"}
!851 = !DILocation(line: 341, column: 2, scope: !88)
!852 = !{!"448"}
!853 = !DILocation(line: 342, column: 16, scope: !88)
!854 = !{!"449"}
!855 = !DILocation(line: 342, column: 21, scope: !88)
!856 = !{!"450"}
!857 = !{!"451"}
!858 = !DILocation(line: 342, column: 2, scope: !88)
!859 = !{!"452"}
!860 = !DILocation(line: 343, column: 16, scope: !88)
!861 = !{!"453"}
!862 = !DILocation(line: 343, column: 21, scope: !88)
!863 = !{!"454"}
!864 = !{!"455"}
!865 = !DILocation(line: 343, column: 2, scope: !88)
!866 = !{!"456"}
!867 = !DILocation(line: 344, column: 16, scope: !88)
!868 = !{!"457"}
!869 = !DILocation(line: 344, column: 22, scope: !88)
!870 = !{!"458"}
!871 = !{!"459"}
!872 = !DILocation(line: 344, column: 2, scope: !88)
!873 = !{!"460"}
!874 = !DILocation(line: 345, column: 1, scope: !88)
!875 = !{!"461"}
!876 = distinct !DISubprogram(name: "br_dec32be", scope: !877, file: !877, line: 590, type: !878, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!877 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech/BearSSL/ghash_ctmul")
!878 = !DISubroutineType(types: !879)
!879 = !{!6, !23}
!880 = !DILocalVariable(name: "src", arg: 1, scope: !876, file: !877, line: 590, type: !23)
!881 = !DILocation(line: 0, scope: !876)
!882 = !{!"462"}
!883 = !DILocalVariable(name: "buf", scope: !876, file: !877, line: 595, type: !114)
!884 = !{!"463"}
!885 = !DILocation(line: 598, column: 20, scope: !876)
!886 = !{!"464"}
!887 = !{!"465"}
!888 = !DILocation(line: 598, column: 10, scope: !876)
!889 = !{!"466"}
!890 = !DILocation(line: 598, column: 27, scope: !876)
!891 = !{!"467"}
!892 = !DILocation(line: 599, column: 16, scope: !876)
!893 = !{!"468"}
!894 = !{!"469"}
!895 = !DILocation(line: 599, column: 6, scope: !876)
!896 = !{!"470"}
!897 = !DILocation(line: 599, column: 23, scope: !876)
!898 = !{!"471"}
!899 = !DILocation(line: 599, column: 3, scope: !876)
!900 = !{!"472"}
!901 = !DILocation(line: 600, column: 16, scope: !876)
!902 = !{!"473"}
!903 = !{!"474"}
!904 = !DILocation(line: 600, column: 6, scope: !876)
!905 = !{!"475"}
!906 = !DILocation(line: 600, column: 23, scope: !876)
!907 = !{!"476"}
!908 = !DILocation(line: 600, column: 3, scope: !876)
!909 = !{!"477"}
!910 = !DILocation(line: 601, column: 15, scope: !876)
!911 = !{!"478"}
!912 = !{!"479"}
!913 = !DILocation(line: 601, column: 5, scope: !876)
!914 = !{!"480"}
!915 = !DILocation(line: 601, column: 3, scope: !876)
!916 = !{!"481"}
!917 = !DILocation(line: 598, column: 2, scope: !876)
!918 = !{!"482"}
!919 = distinct !DISubprogram(name: "bmul", scope: !4, file: !4, line: 165, type: !920, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !922, !922, !6, !6}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!923 = !DILocalVariable(name: "hi", arg: 1, scope: !919, file: !4, line: 165, type: !922)
!924 = !DILocation(line: 0, scope: !919)
!925 = !{!"483"}
!926 = !DILocalVariable(name: "lo", arg: 2, scope: !919, file: !4, line: 165, type: !922)
!927 = !{!"484"}
!928 = !DILocalVariable(name: "x", arg: 3, scope: !919, file: !4, line: 165, type: !6)
!929 = !{!"485"}
!930 = !DILocalVariable(name: "y", arg: 4, scope: !919, file: !4, line: 165, type: !6)
!931 = !{!"486"}
!932 = !DILocation(line: 172, column: 9, scope: !919)
!933 = !{!"487"}
!934 = !DILocalVariable(name: "x0", scope: !919, file: !4, line: 167, type: !6)
!935 = !{!"488"}
!936 = !DILocation(line: 173, column: 9, scope: !919)
!937 = !{!"489"}
!938 = !DILocalVariable(name: "x1", scope: !919, file: !4, line: 167, type: !6)
!939 = !{!"490"}
!940 = !DILocation(line: 174, column: 9, scope: !919)
!941 = !{!"491"}
!942 = !DILocalVariable(name: "x2", scope: !919, file: !4, line: 167, type: !6)
!943 = !{!"492"}
!944 = !DILocation(line: 175, column: 9, scope: !919)
!945 = !{!"493"}
!946 = !DILocalVariable(name: "x3", scope: !919, file: !4, line: 167, type: !6)
!947 = !{!"494"}
!948 = !DILocation(line: 176, column: 9, scope: !919)
!949 = !{!"495"}
!950 = !DILocalVariable(name: "y0", scope: !919, file: !4, line: 168, type: !6)
!951 = !{!"496"}
!952 = !DILocation(line: 177, column: 9, scope: !919)
!953 = !{!"497"}
!954 = !DILocalVariable(name: "y1", scope: !919, file: !4, line: 168, type: !6)
!955 = !{!"498"}
!956 = !DILocation(line: 178, column: 9, scope: !919)
!957 = !{!"499"}
!958 = !DILocalVariable(name: "y2", scope: !919, file: !4, line: 168, type: !6)
!959 = !{!"500"}
!960 = !DILocation(line: 179, column: 9, scope: !919)
!961 = !{!"501"}
!962 = !DILocalVariable(name: "y3", scope: !919, file: !4, line: 168, type: !6)
!963 = !{!"502"}
!964 = !DILocation(line: 180, column: 7, scope: !919)
!965 = !{!"503"}
!966 = !{!"504"}
!967 = !{!"505"}
!968 = !DILocation(line: 180, column: 21, scope: !919)
!969 = !{!"506"}
!970 = !{!"507"}
!971 = !{!"508"}
!972 = !DILocation(line: 180, column: 19, scope: !919)
!973 = !{!"509"}
!974 = !DILocation(line: 180, column: 35, scope: !919)
!975 = !{!"510"}
!976 = !{!"511"}
!977 = !{!"512"}
!978 = !DILocation(line: 180, column: 33, scope: !919)
!979 = !{!"513"}
!980 = !DILocation(line: 180, column: 49, scope: !919)
!981 = !{!"514"}
!982 = !{!"515"}
!983 = !{!"516"}
!984 = !DILocation(line: 180, column: 47, scope: !919)
!985 = !{!"517"}
!986 = !DILocalVariable(name: "z0", scope: !919, file: !4, line: 169, type: !11)
!987 = !{!"518"}
!988 = !DILocation(line: 181, column: 7, scope: !919)
!989 = !{!"519"}
!990 = !{!"520"}
!991 = !{!"521"}
!992 = !DILocation(line: 181, column: 21, scope: !919)
!993 = !{!"522"}
!994 = !{!"523"}
!995 = !{!"524"}
!996 = !DILocation(line: 181, column: 19, scope: !919)
!997 = !{!"525"}
!998 = !DILocation(line: 181, column: 35, scope: !919)
!999 = !{!"526"}
!1000 = !{!"527"}
!1001 = !{!"528"}
!1002 = !DILocation(line: 181, column: 33, scope: !919)
!1003 = !{!"529"}
!1004 = !DILocation(line: 181, column: 49, scope: !919)
!1005 = !{!"530"}
!1006 = !{!"531"}
!1007 = !{!"532"}
!1008 = !DILocation(line: 181, column: 47, scope: !919)
!1009 = !{!"533"}
!1010 = !DILocalVariable(name: "z1", scope: !919, file: !4, line: 169, type: !11)
!1011 = !{!"534"}
!1012 = !DILocation(line: 182, column: 7, scope: !919)
!1013 = !{!"535"}
!1014 = !{!"536"}
!1015 = !{!"537"}
!1016 = !DILocation(line: 182, column: 21, scope: !919)
!1017 = !{!"538"}
!1018 = !{!"539"}
!1019 = !{!"540"}
!1020 = !DILocation(line: 182, column: 19, scope: !919)
!1021 = !{!"541"}
!1022 = !DILocation(line: 182, column: 35, scope: !919)
!1023 = !{!"542"}
!1024 = !{!"543"}
!1025 = !{!"544"}
!1026 = !DILocation(line: 182, column: 33, scope: !919)
!1027 = !{!"545"}
!1028 = !DILocation(line: 182, column: 49, scope: !919)
!1029 = !{!"546"}
!1030 = !{!"547"}
!1031 = !{!"548"}
!1032 = !DILocation(line: 182, column: 47, scope: !919)
!1033 = !{!"549"}
!1034 = !DILocalVariable(name: "z2", scope: !919, file: !4, line: 169, type: !11)
!1035 = !{!"550"}
!1036 = !DILocation(line: 183, column: 7, scope: !919)
!1037 = !{!"551"}
!1038 = !{!"552"}
!1039 = !{!"553"}
!1040 = !DILocation(line: 183, column: 21, scope: !919)
!1041 = !{!"554"}
!1042 = !{!"555"}
!1043 = !{!"556"}
!1044 = !DILocation(line: 183, column: 19, scope: !919)
!1045 = !{!"557"}
!1046 = !DILocation(line: 183, column: 35, scope: !919)
!1047 = !{!"558"}
!1048 = !{!"559"}
!1049 = !{!"560"}
!1050 = !DILocation(line: 183, column: 33, scope: !919)
!1051 = !{!"561"}
!1052 = !DILocation(line: 183, column: 49, scope: !919)
!1053 = !{!"562"}
!1054 = !{!"563"}
!1055 = !{!"564"}
!1056 = !DILocation(line: 183, column: 47, scope: !919)
!1057 = !{!"565"}
!1058 = !DILocalVariable(name: "z3", scope: !919, file: !4, line: 169, type: !11)
!1059 = !{!"566"}
!1060 = !DILocation(line: 184, column: 5, scope: !919)
!1061 = !{!"567"}
!1062 = !{!"568"}
!1063 = !DILocation(line: 185, column: 5, scope: !919)
!1064 = !{!"569"}
!1065 = !{!"570"}
!1066 = !DILocation(line: 186, column: 5, scope: !919)
!1067 = !{!"571"}
!1068 = !{!"572"}
!1069 = !DILocation(line: 187, column: 5, scope: !919)
!1070 = !{!"573"}
!1071 = !{!"574"}
!1072 = !DILocation(line: 188, column: 9, scope: !919)
!1073 = !{!"575"}
!1074 = !DILocation(line: 188, column: 14, scope: !919)
!1075 = !{!"576"}
!1076 = !DILocation(line: 188, column: 19, scope: !919)
!1077 = !{!"577"}
!1078 = !DILocalVariable(name: "z", scope: !919, file: !4, line: 170, type: !11)
!1079 = !{!"578"}
!1080 = !DILocation(line: 189, column: 8, scope: !919)
!1081 = !{!"579"}
!1082 = !DILocation(line: 189, column: 6, scope: !919)
!1083 = !{!"580"}
!1084 = !DILocation(line: 190, column: 21, scope: !919)
!1085 = !{!"581"}
!1086 = !DILocation(line: 190, column: 8, scope: !919)
!1087 = !{!"582"}
!1088 = !DILocation(line: 190, column: 6, scope: !919)
!1089 = !{!"583"}
!1090 = !DILocation(line: 191, column: 1, scope: !919)
!1091 = !{!"584"}
!1092 = distinct !DISubprogram(name: "br_enc32be", scope: !877, file: !877, line: 558, type: !1093, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !22, !6}
!1095 = !DILocalVariable(name: "dst", arg: 1, scope: !1092, file: !877, line: 558, type: !22)
!1096 = !DILocation(line: 0, scope: !1092)
!1097 = !{!"585"}
!1098 = !DILocalVariable(name: "x", arg: 2, scope: !1092, file: !877, line: 558, type: !6)
!1099 = !{!"586"}
!1100 = !DILocalVariable(name: "buf", scope: !1092, file: !877, line: 563, type: !118)
!1101 = !{!"587"}
!1102 = !DILocation(line: 566, column: 29, scope: !1092)
!1103 = !{!"588"}
!1104 = !DILocation(line: 566, column: 11, scope: !1092)
!1105 = !{!"589"}
!1106 = !DILocation(line: 566, column: 2, scope: !1092)
!1107 = !{!"590"}
!1108 = !DILocation(line: 566, column: 9, scope: !1092)
!1109 = !{!"591"}
!1110 = !DILocation(line: 567, column: 29, scope: !1092)
!1111 = !{!"592"}
!1112 = !DILocation(line: 567, column: 11, scope: !1092)
!1113 = !{!"593"}
!1114 = !DILocation(line: 567, column: 2, scope: !1092)
!1115 = !{!"594"}
!1116 = !DILocation(line: 567, column: 9, scope: !1092)
!1117 = !{!"595"}
!1118 = !DILocation(line: 568, column: 29, scope: !1092)
!1119 = !{!"596"}
!1120 = !DILocation(line: 568, column: 11, scope: !1092)
!1121 = !{!"597"}
!1122 = !DILocation(line: 568, column: 2, scope: !1092)
!1123 = !{!"598"}
!1124 = !DILocation(line: 568, column: 9, scope: !1092)
!1125 = !{!"599"}
!1126 = !DILocation(line: 569, column: 11, scope: !1092)
!1127 = !{!"600"}
!1128 = !DILocation(line: 569, column: 2, scope: !1092)
!1129 = !{!"601"}
!1130 = !DILocation(line: 569, column: 9, scope: !1092)
!1131 = !{!"602"}
!1132 = !DILocation(line: 571, column: 1, scope: !1092)
!1133 = !{!"603"}
