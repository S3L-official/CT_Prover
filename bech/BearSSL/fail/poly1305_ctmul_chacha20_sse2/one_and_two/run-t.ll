; ModuleID = 'run-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__loadu_si128 = type { <2 x i64> }
%union.br_union_u32 = type { i32 }
%union.br_union_u64 = type { i64 }
%struct.smack_value = type { i8* }

@br_chacha20_sse2_run.CW = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0, !psr.id !59

; Function Attrs: noinline nounwind uwtable
define dso_local i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_sse2_get() #0 !dbg !89 {
  ret i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_sse2_run, !dbg !95, !psr.id !96
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_chacha20_sse2_run(i8* noalias %0, i8* noalias %1, i32 %2, i8* noalias %3, i64 %4) #1 !dbg !2 {
  %6 = alloca [4 x i32], align 16, !psr.id !97
  %7 = alloca [64 x i8], align 16, !psr.id !98
  call void @llvm.dbg.value(metadata i8* %0, metadata !99, metadata !DIExpression()), !dbg !100, !psr.id !101
  call void @llvm.dbg.value(metadata i8* %1, metadata !102, metadata !DIExpression()), !dbg !100, !psr.id !103
  call void @llvm.dbg.value(metadata i32 %2, metadata !104, metadata !DIExpression()), !dbg !100, !psr.id !105
  call void @llvm.dbg.value(metadata i8* %3, metadata !106, metadata !DIExpression()), !dbg !100, !psr.id !107
  call void @llvm.dbg.value(metadata i64 %4, metadata !108, metadata !DIExpression()), !dbg !100, !psr.id !109
  call void @llvm.dbg.declare(metadata [4 x i32]* %6, metadata !110, metadata !DIExpression()), !dbg !112, !psr.id !113
  call void @llvm.dbg.value(metadata i8* %3, metadata !114, metadata !DIExpression()), !dbg !100, !psr.id !115
  %8 = bitcast i8* %0 to <2 x i64>*, !dbg !116, !psr.id !117
  %9 = bitcast <2 x i64>* %8 to %struct.__loadu_si128*, !dbg !118, !psr.id !119
  %10 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %9, i32 0, i32 0, !dbg !118, !psr.id !120
  %11 = load <2 x i64>, <2 x i64>* %10, align 1, !dbg !118, !psr.id !121
  call void @llvm.dbg.value(metadata <2 x i64> %11, metadata !122, metadata !DIExpression()), !dbg !100, !psr.id !123
  %12 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !124, !psr.id !125
  %13 = bitcast i8* %12 to <2 x i64>*, !dbg !126, !psr.id !127
  %14 = bitcast <2 x i64>* %13 to %struct.__loadu_si128*, !dbg !128, !psr.id !129
  %15 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %14, i32 0, i32 0, !dbg !128, !psr.id !130
  %16 = load <2 x i64>, <2 x i64>* %15, align 1, !dbg !128, !psr.id !131
  call void @llvm.dbg.value(metadata <2 x i64> %16, metadata !132, metadata !DIExpression()), !dbg !100, !psr.id !133
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !134, !psr.id !135
  store i32 %2, i32* %17, align 16, !dbg !136, !psr.id !137
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !138, !psr.id !139
  %19 = getelementptr inbounds i32, i32* %18, i64 1, !dbg !140, !psr.id !141
  %20 = bitcast i32* %19 to i8*, !dbg !142, !psr.id !143
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 1 %1, i64 12, i1 false), !dbg !142, !psr.id !144
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0, !dbg !145, !psr.id !146
  %22 = bitcast i32* %21 to i8*, !dbg !147, !psr.id !148
  %23 = bitcast i8* %22 to <2 x i64>*, !dbg !147, !psr.id !149
  %24 = bitcast <2 x i64>* %23 to %struct.__loadu_si128*, !dbg !150, !psr.id !151
  %25 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %24, i32 0, i32 0, !dbg !150, !psr.id !152
  %26 = load <2 x i64>, <2 x i64>* %25, align 1, !dbg !150, !psr.id !153
  call void @llvm.dbg.value(metadata <2 x i64> %26, metadata !154, metadata !DIExpression()), !dbg !100, !psr.id !155
  %27 = bitcast <2 x i64>* bitcast ([4 x i32]* @br_chacha20_sse2_run.CW to <2 x i64>*) to %struct.__loadu_si128*, !dbg !156, !psr.id !157
  %28 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %27, i32 0, i32 0, !dbg !156, !psr.id !158
  %29 = load <2 x i64>, <2 x i64>* %28, align 1, !dbg !156, !psr.id !159
  call void @llvm.dbg.value(metadata <2 x i64> %29, metadata !160, metadata !DIExpression()), !dbg !100, !psr.id !161
  %30 = insertelement <4 x i32> undef, i32 1, i32 0, !dbg !162, !psr.id !163
  %31 = insertelement <4 x i32> %30, i32 0, i32 1, !dbg !162, !psr.id !164
  %32 = insertelement <4 x i32> %31, i32 0, i32 2, !dbg !162, !psr.id !165
  %33 = insertelement <4 x i32> %32, i32 0, i32 3, !dbg !162, !psr.id !166
  %34 = bitcast <4 x i32> %33 to <2 x i64>, !dbg !162, !psr.id !167
  call void @llvm.dbg.value(metadata <2 x i64> %34, metadata !168, metadata !DIExpression()), !dbg !100, !psr.id !169
  br label %35, !dbg !170, !psr.id !171

35:                                               ; preds = %257, %5
  %.08 = phi i64 [ %4, %5 ], [ %256, %257 ], !psr.id !172
  %.07 = phi i8* [ %3, %5 ], [ %255, %257 ], !dbg !100, !psr.id !173
  %.06 = phi <2 x i64> [ %26, %5 ], [ %177, %257 ], !dbg !100, !psr.id !174
  call void @llvm.dbg.value(metadata <2 x i64> %.06, metadata !154, metadata !DIExpression()), !dbg !100, !psr.id !175
  call void @llvm.dbg.value(metadata i8* %.07, metadata !114, metadata !DIExpression()), !dbg !100, !psr.id !176
  call void @llvm.dbg.value(metadata i64 %.08, metadata !108, metadata !DIExpression()), !dbg !100, !psr.id !177
  %36 = icmp ugt i64 %.08, 0, !dbg !178, !psr.id !179
  br i1 %36, label %37, label %258, !dbg !170, !psr.id !180

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata <2 x i64> %29, metadata !181, metadata !DIExpression()), !dbg !183, !psr.id !184
  call void @llvm.dbg.value(metadata <2 x i64> %11, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !186
  call void @llvm.dbg.value(metadata <2 x i64> %16, metadata !187, metadata !DIExpression()), !dbg !183, !psr.id !188
  call void @llvm.dbg.value(metadata <2 x i64> %.06, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !190
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !183, !psr.id !192
  br label %38, !dbg !193, !psr.id !195

38:                                               ; preds = %155, %37
  %.05 = phi <2 x i64> [ %29, %37 ], [ %125, %155 ], !dbg !183, !psr.id !196
  %.04 = phi <2 x i64> [ %11, %37 ], [ %148, %155 ], !dbg !183, !psr.id !197
  %.03 = phi <2 x i64> [ %16, %37 ], [ %151, %155 ], !dbg !183, !psr.id !198
  %.02 = phi <2 x i64> [ %.06, %37 ], [ %154, %155 ], !dbg !183, !psr.id !199
  %.01 = phi i32 [ 0, %37 ], [ %156, %155 ], !dbg !200, !psr.id !201
  call void @llvm.dbg.value(metadata i32 %.01, metadata !191, metadata !DIExpression()), !dbg !183, !psr.id !202
  call void @llvm.dbg.value(metadata <2 x i64> %.02, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !203
  call void @llvm.dbg.value(metadata <2 x i64> %.03, metadata !187, metadata !DIExpression()), !dbg !183, !psr.id !204
  call void @llvm.dbg.value(metadata <2 x i64> %.04, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !205
  call void @llvm.dbg.value(metadata <2 x i64> %.05, metadata !181, metadata !DIExpression()), !dbg !183, !psr.id !206
  %39 = icmp slt i32 %.01, 10, !dbg !207, !psr.id !209
  br i1 %39, label %40, label %157, !dbg !210, !psr.id !211

40:                                               ; preds = %38
  %41 = bitcast <2 x i64> %.05 to <4 x i32>, !dbg !212, !psr.id !214
  %42 = bitcast <2 x i64> %.04 to <4 x i32>, !dbg !212, !psr.id !215
  %43 = add <4 x i32> %41, %42, !dbg !212, !psr.id !216
  %44 = bitcast <4 x i32> %43 to <2 x i64>, !dbg !212, !psr.id !217
  call void @llvm.dbg.value(metadata <2 x i64> %44, metadata !181, metadata !DIExpression()), !dbg !183, !psr.id !218
  %45 = xor <2 x i64> %.02, %44, !dbg !219, !psr.id !220
  call void @llvm.dbg.value(metadata <2 x i64> %45, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !221
  %46 = bitcast <2 x i64> %45 to <4 x i32>, !dbg !222, !psr.id !223
  %47 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %46, i32 16) #7, !dbg !222, !psr.id !224
  %48 = bitcast <4 x i32> %47 to <2 x i64>, !dbg !222, !psr.id !225
  %49 = bitcast <2 x i64> %45 to <4 x i32>, !dbg !226, !psr.id !227
  %50 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %49, i32 16) #7, !dbg !226, !psr.id !228
  %51 = bitcast <4 x i32> %50 to <2 x i64>, !dbg !226, !psr.id !229
  %52 = or <2 x i64> %48, %51, !dbg !230, !psr.id !231
  call void @llvm.dbg.value(metadata <2 x i64> %52, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !232
  %53 = bitcast <2 x i64> %.03 to <4 x i32>, !dbg !233, !psr.id !234
  %54 = bitcast <2 x i64> %52 to <4 x i32>, !dbg !233, !psr.id !235
  %55 = add <4 x i32> %53, %54, !dbg !233, !psr.id !236
  %56 = bitcast <4 x i32> %55 to <2 x i64>, !dbg !233, !psr.id !237
  call void @llvm.dbg.value(metadata <2 x i64> %56, metadata !187, metadata !DIExpression()), !dbg !183, !psr.id !238
  %57 = xor <2 x i64> %.04, %56, !dbg !239, !psr.id !240
  call void @llvm.dbg.value(metadata <2 x i64> %57, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !241
  %58 = bitcast <2 x i64> %57 to <4 x i32>, !dbg !242, !psr.id !243
  %59 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %58, i32 12) #7, !dbg !242, !psr.id !244
  %60 = bitcast <4 x i32> %59 to <2 x i64>, !dbg !242, !psr.id !245
  %61 = bitcast <2 x i64> %57 to <4 x i32>, !dbg !246, !psr.id !247
  %62 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %61, i32 20) #7, !dbg !246, !psr.id !248
  %63 = bitcast <4 x i32> %62 to <2 x i64>, !dbg !246, !psr.id !249
  %64 = or <2 x i64> %60, %63, !dbg !250, !psr.id !251
  call void @llvm.dbg.value(metadata <2 x i64> %64, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !252
  %65 = bitcast <2 x i64> %44 to <4 x i32>, !dbg !253, !psr.id !254
  %66 = bitcast <2 x i64> %64 to <4 x i32>, !dbg !253, !psr.id !255
  %67 = add <4 x i32> %65, %66, !dbg !253, !psr.id !256
  %68 = bitcast <4 x i32> %67 to <2 x i64>, !dbg !253, !psr.id !257
  call void @llvm.dbg.value(metadata <2 x i64> %68, metadata !181, metadata !DIExpression()), !dbg !183, !psr.id !258
  %69 = xor <2 x i64> %52, %68, !dbg !259, !psr.id !260
  call void @llvm.dbg.value(metadata <2 x i64> %69, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !261
  %70 = bitcast <2 x i64> %69 to <4 x i32>, !dbg !262, !psr.id !263
  %71 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %70, i32 8) #7, !dbg !262, !psr.id !264
  %72 = bitcast <4 x i32> %71 to <2 x i64>, !dbg !262, !psr.id !265
  %73 = bitcast <2 x i64> %69 to <4 x i32>, !dbg !266, !psr.id !267
  %74 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %73, i32 24) #7, !dbg !266, !psr.id !268
  %75 = bitcast <4 x i32> %74 to <2 x i64>, !dbg !266, !psr.id !269
  %76 = or <2 x i64> %72, %75, !dbg !270, !psr.id !271
  call void @llvm.dbg.value(metadata <2 x i64> %76, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !272
  %77 = bitcast <2 x i64> %56 to <4 x i32>, !dbg !273, !psr.id !274
  %78 = bitcast <2 x i64> %76 to <4 x i32>, !dbg !273, !psr.id !275
  %79 = add <4 x i32> %77, %78, !dbg !273, !psr.id !276
  %80 = bitcast <4 x i32> %79 to <2 x i64>, !dbg !273, !psr.id !277
  call void @llvm.dbg.value(metadata <2 x i64> %80, metadata !187, metadata !DIExpression()), !dbg !183, !psr.id !278
  %81 = xor <2 x i64> %64, %80, !dbg !279, !psr.id !280
  call void @llvm.dbg.value(metadata <2 x i64> %81, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !281
  %82 = bitcast <2 x i64> %81 to <4 x i32>, !dbg !282, !psr.id !283
  %83 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %82, i32 7) #7, !dbg !282, !psr.id !284
  %84 = bitcast <4 x i32> %83 to <2 x i64>, !dbg !282, !psr.id !285
  %85 = bitcast <2 x i64> %81 to <4 x i32>, !dbg !286, !psr.id !287
  %86 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %85, i32 25) #7, !dbg !286, !psr.id !288
  %87 = bitcast <4 x i32> %86 to <2 x i64>, !dbg !286, !psr.id !289
  %88 = or <2 x i64> %84, %87, !dbg !290, !psr.id !291
  call void @llvm.dbg.value(metadata <2 x i64> %88, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !292
  %89 = bitcast <2 x i64> %88 to <4 x i32>, !dbg !293, !psr.id !294
  %90 = shufflevector <4 x i32> %89, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !293, !psr.id !295
  %91 = bitcast <4 x i32> %90 to <2 x i64>, !dbg !293, !psr.id !296
  call void @llvm.dbg.value(metadata <2 x i64> %91, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !297
  %92 = bitcast <2 x i64> %80 to <4 x i32>, !dbg !298, !psr.id !299
  %93 = shufflevector <4 x i32> %92, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !298, !psr.id !300
  %94 = bitcast <4 x i32> %93 to <2 x i64>, !dbg !298, !psr.id !301
  call void @llvm.dbg.value(metadata <2 x i64> %94, metadata !187, metadata !DIExpression()), !dbg !183, !psr.id !302
  %95 = bitcast <2 x i64> %76 to <4 x i32>, !dbg !303, !psr.id !304
  %96 = shufflevector <4 x i32> %95, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !303, !psr.id !305
  %97 = bitcast <4 x i32> %96 to <2 x i64>, !dbg !303, !psr.id !306
  call void @llvm.dbg.value(metadata <2 x i64> %97, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !307
  %98 = bitcast <2 x i64> %68 to <4 x i32>, !dbg !308, !psr.id !309
  %99 = bitcast <2 x i64> %91 to <4 x i32>, !dbg !308, !psr.id !310
  %100 = add <4 x i32> %98, %99, !dbg !308, !psr.id !311
  %101 = bitcast <4 x i32> %100 to <2 x i64>, !dbg !308, !psr.id !312
  call void @llvm.dbg.value(metadata <2 x i64> %101, metadata !181, metadata !DIExpression()), !dbg !183, !psr.id !313
  %102 = xor <2 x i64> %97, %101, !dbg !314, !psr.id !315
  call void @llvm.dbg.value(metadata <2 x i64> %102, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !316
  %103 = bitcast <2 x i64> %102 to <4 x i32>, !dbg !317, !psr.id !318
  %104 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %103, i32 16) #7, !dbg !317, !psr.id !319
  %105 = bitcast <4 x i32> %104 to <2 x i64>, !dbg !317, !psr.id !320
  %106 = bitcast <2 x i64> %102 to <4 x i32>, !dbg !321, !psr.id !322
  %107 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %106, i32 16) #7, !dbg !321, !psr.id !323
  %108 = bitcast <4 x i32> %107 to <2 x i64>, !dbg !321, !psr.id !324
  %109 = or <2 x i64> %105, %108, !dbg !325, !psr.id !326
  call void @llvm.dbg.value(metadata <2 x i64> %109, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !327
  %110 = bitcast <2 x i64> %94 to <4 x i32>, !dbg !328, !psr.id !329
  %111 = bitcast <2 x i64> %109 to <4 x i32>, !dbg !328, !psr.id !330
  %112 = add <4 x i32> %110, %111, !dbg !328, !psr.id !331
  %113 = bitcast <4 x i32> %112 to <2 x i64>, !dbg !328, !psr.id !332
  call void @llvm.dbg.value(metadata <2 x i64> %113, metadata !187, metadata !DIExpression()), !dbg !183, !psr.id !333
  %114 = xor <2 x i64> %91, %113, !dbg !334, !psr.id !335
  call void @llvm.dbg.value(metadata <2 x i64> %114, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !336
  %115 = bitcast <2 x i64> %114 to <4 x i32>, !dbg !337, !psr.id !338
  %116 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %115, i32 12) #7, !dbg !337, !psr.id !339
  %117 = bitcast <4 x i32> %116 to <2 x i64>, !dbg !337, !psr.id !340
  %118 = bitcast <2 x i64> %114 to <4 x i32>, !dbg !341, !psr.id !342
  %119 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %118, i32 20) #7, !dbg !341, !psr.id !343
  %120 = bitcast <4 x i32> %119 to <2 x i64>, !dbg !341, !psr.id !344
  %121 = or <2 x i64> %117, %120, !dbg !345, !psr.id !346
  call void @llvm.dbg.value(metadata <2 x i64> %121, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !347
  %122 = bitcast <2 x i64> %101 to <4 x i32>, !dbg !348, !psr.id !349
  %123 = bitcast <2 x i64> %121 to <4 x i32>, !dbg !348, !psr.id !350
  %124 = add <4 x i32> %122, %123, !dbg !348, !psr.id !351
  %125 = bitcast <4 x i32> %124 to <2 x i64>, !dbg !348, !psr.id !352
  call void @llvm.dbg.value(metadata <2 x i64> %125, metadata !181, metadata !DIExpression()), !dbg !183, !psr.id !353
  %126 = xor <2 x i64> %109, %125, !dbg !354, !psr.id !355
  call void @llvm.dbg.value(metadata <2 x i64> %126, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !356
  %127 = bitcast <2 x i64> %126 to <4 x i32>, !dbg !357, !psr.id !358
  %128 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %127, i32 8) #7, !dbg !357, !psr.id !359
  %129 = bitcast <4 x i32> %128 to <2 x i64>, !dbg !357, !psr.id !360
  %130 = bitcast <2 x i64> %126 to <4 x i32>, !dbg !361, !psr.id !362
  %131 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %130, i32 24) #7, !dbg !361, !psr.id !363
  %132 = bitcast <4 x i32> %131 to <2 x i64>, !dbg !361, !psr.id !364
  %133 = or <2 x i64> %129, %132, !dbg !365, !psr.id !366
  call void @llvm.dbg.value(metadata <2 x i64> %133, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !367
  %134 = bitcast <2 x i64> %113 to <4 x i32>, !dbg !368, !psr.id !369
  %135 = bitcast <2 x i64> %133 to <4 x i32>, !dbg !368, !psr.id !370
  %136 = add <4 x i32> %134, %135, !dbg !368, !psr.id !371
  %137 = bitcast <4 x i32> %136 to <2 x i64>, !dbg !368, !psr.id !372
  call void @llvm.dbg.value(metadata <2 x i64> %137, metadata !187, metadata !DIExpression()), !dbg !183, !psr.id !373
  %138 = xor <2 x i64> %121, %137, !dbg !374, !psr.id !375
  call void @llvm.dbg.value(metadata <2 x i64> %138, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !376
  %139 = bitcast <2 x i64> %138 to <4 x i32>, !dbg !377, !psr.id !378
  %140 = call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %139, i32 7) #7, !dbg !377, !psr.id !379
  %141 = bitcast <4 x i32> %140 to <2 x i64>, !dbg !377, !psr.id !380
  %142 = bitcast <2 x i64> %138 to <4 x i32>, !dbg !381, !psr.id !382
  %143 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %142, i32 25) #7, !dbg !381, !psr.id !383
  %144 = bitcast <4 x i32> %143 to <2 x i64>, !dbg !381, !psr.id !384
  %145 = or <2 x i64> %141, %144, !dbg !385, !psr.id !386
  call void @llvm.dbg.value(metadata <2 x i64> %145, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !387
  %146 = bitcast <2 x i64> %145 to <4 x i32>, !dbg !388, !psr.id !389
  %147 = shufflevector <4 x i32> %146, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !388, !psr.id !390
  %148 = bitcast <4 x i32> %147 to <2 x i64>, !dbg !388, !psr.id !391
  call void @llvm.dbg.value(metadata <2 x i64> %148, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !392
  %149 = bitcast <2 x i64> %137 to <4 x i32>, !dbg !393, !psr.id !394
  %150 = shufflevector <4 x i32> %149, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !393, !psr.id !395
  %151 = bitcast <4 x i32> %150 to <2 x i64>, !dbg !393, !psr.id !396
  call void @llvm.dbg.value(metadata <2 x i64> %151, metadata !187, metadata !DIExpression()), !dbg !183, !psr.id !397
  %152 = bitcast <2 x i64> %133 to <4 x i32>, !dbg !398, !psr.id !399
  %153 = shufflevector <4 x i32> %152, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !398, !psr.id !400
  %154 = bitcast <4 x i32> %153 to <2 x i64>, !dbg !398, !psr.id !401
  call void @llvm.dbg.value(metadata <2 x i64> %154, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !402
  br label %155, !dbg !403, !psr.id !404

155:                                              ; preds = %40
  %156 = add nsw i32 %.01, 1, !dbg !405, !psr.id !406
  call void @llvm.dbg.value(metadata i32 %156, metadata !191, metadata !DIExpression()), !dbg !183, !psr.id !407
  br label %38, !dbg !408, !llvm.loop !409, !psr.id !412

157:                                              ; preds = %38
  %158 = bitcast <2 x i64> %.05 to <4 x i32>, !dbg !413, !psr.id !414
  %159 = bitcast <2 x i64> %29 to <4 x i32>, !dbg !413, !psr.id !415
  %160 = add <4 x i32> %158, %159, !dbg !413, !psr.id !416
  %161 = bitcast <4 x i32> %160 to <2 x i64>, !dbg !413, !psr.id !417
  call void @llvm.dbg.value(metadata <2 x i64> %161, metadata !181, metadata !DIExpression()), !dbg !183, !psr.id !418
  %162 = bitcast <2 x i64> %.04 to <4 x i32>, !dbg !419, !psr.id !420
  %163 = bitcast <2 x i64> %11 to <4 x i32>, !dbg !419, !psr.id !421
  %164 = add <4 x i32> %162, %163, !dbg !419, !psr.id !422
  %165 = bitcast <4 x i32> %164 to <2 x i64>, !dbg !419, !psr.id !423
  call void @llvm.dbg.value(metadata <2 x i64> %165, metadata !185, metadata !DIExpression()), !dbg !183, !psr.id !424
  %166 = bitcast <2 x i64> %.03 to <4 x i32>, !dbg !425, !psr.id !426
  %167 = bitcast <2 x i64> %16 to <4 x i32>, !dbg !425, !psr.id !427
  %168 = add <4 x i32> %166, %167, !dbg !425, !psr.id !428
  %169 = bitcast <4 x i32> %168 to <2 x i64>, !dbg !425, !psr.id !429
  call void @llvm.dbg.value(metadata <2 x i64> %169, metadata !187, metadata !DIExpression()), !dbg !183, !psr.id !430
  %170 = bitcast <2 x i64> %.02 to <4 x i32>, !dbg !431, !psr.id !432
  %171 = bitcast <2 x i64> %.06 to <4 x i32>, !dbg !431, !psr.id !433
  %172 = add <4 x i32> %170, %171, !dbg !431, !psr.id !434
  %173 = bitcast <4 x i32> %172 to <2 x i64>, !dbg !431, !psr.id !435
  call void @llvm.dbg.value(metadata <2 x i64> %173, metadata !189, metadata !DIExpression()), !dbg !183, !psr.id !436
  %174 = bitcast <2 x i64> %.06 to <4 x i32>, !dbg !437, !psr.id !438
  %175 = bitcast <2 x i64> %34 to <4 x i32>, !dbg !437, !psr.id !439
  %176 = add <4 x i32> %174, %175, !dbg !437, !psr.id !440
  %177 = bitcast <4 x i32> %176 to <2 x i64>, !dbg !437, !psr.id !441
  call void @llvm.dbg.value(metadata <2 x i64> %177, metadata !154, metadata !DIExpression()), !dbg !100, !psr.id !442
  %178 = icmp ult i64 %.08, 64, !dbg !443, !psr.id !445
  br i1 %178, label %179, label %214, !dbg !446, !psr.id !447

179:                                              ; preds = %157
  call void @llvm.dbg.declare(metadata [64 x i8]* %7, metadata !448, metadata !DIExpression()), !dbg !453, !psr.id !454
  %180 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !455, !psr.id !456
  %181 = getelementptr inbounds i8, i8* %180, i64 0, !dbg !457, !psr.id !458
  %182 = bitcast i8* %181 to <2 x i64>*, !dbg !459, !psr.id !460
  %183 = bitcast <2 x i64>* %182 to %struct.__loadu_si128*, !dbg !461, !psr.id !462
  %184 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %183, i32 0, i32 0, !dbg !461, !psr.id !463
  store <2 x i64> %161, <2 x i64>* %184, align 1, !dbg !461, !psr.id !464
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !465, !psr.id !466
  %186 = getelementptr inbounds i8, i8* %185, i64 16, !dbg !467, !psr.id !468
  %187 = bitcast i8* %186 to <2 x i64>*, !dbg !469, !psr.id !470
  %188 = bitcast <2 x i64>* %187 to %struct.__loadu_si128*, !dbg !471, !psr.id !472
  %189 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %188, i32 0, i32 0, !dbg !471, !psr.id !473
  store <2 x i64> %165, <2 x i64>* %189, align 1, !dbg !471, !psr.id !474
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !475, !psr.id !476
  %191 = getelementptr inbounds i8, i8* %190, i64 32, !dbg !477, !psr.id !478
  %192 = bitcast i8* %191 to <2 x i64>*, !dbg !479, !psr.id !480
  %193 = bitcast <2 x i64>* %192 to %struct.__loadu_si128*, !dbg !481, !psr.id !482
  %194 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %193, i32 0, i32 0, !dbg !481, !psr.id !483
  store <2 x i64> %169, <2 x i64>* %194, align 1, !dbg !481, !psr.id !484
  %195 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !485, !psr.id !486
  %196 = getelementptr inbounds i8, i8* %195, i64 48, !dbg !487, !psr.id !488
  %197 = bitcast i8* %196 to <2 x i64>*, !dbg !489, !psr.id !490
  %198 = bitcast <2 x i64>* %197 to %struct.__loadu_si128*, !dbg !491, !psr.id !492
  %199 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %198, i32 0, i32 0, !dbg !491, !psr.id !493
  store <2 x i64> %173, <2 x i64>* %199, align 1, !dbg !491, !psr.id !494
  call void @llvm.dbg.value(metadata i64 0, metadata !495, metadata !DIExpression()), !dbg !496, !psr.id !497
  br label %200, !dbg !498, !psr.id !500

200:                                              ; preds = %211, %179
  %.0 = phi i64 [ 0, %179 ], [ %212, %211 ], !dbg !501, !psr.id !502
  call void @llvm.dbg.value(metadata i64 %.0, metadata !495, metadata !DIExpression()), !dbg !496, !psr.id !503
  %201 = icmp ult i64 %.0, %.08, !dbg !504, !psr.id !506
  br i1 %201, label %202, label %213, !dbg !507, !psr.id !508

202:                                              ; preds = %200
  %203 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %.0, !dbg !509, !psr.id !511
  %204 = load i8, i8* %203, align 1, !dbg !509, !psr.id !512
  %205 = zext i8 %204 to i32, !dbg !509, !psr.id !513
  %206 = getelementptr inbounds i8, i8* %.07, i64 %.0, !dbg !514, !psr.id !515
  %207 = load i8, i8* %206, align 1, !dbg !516, !psr.id !517
  %208 = zext i8 %207 to i32, !dbg !516, !psr.id !518
  %209 = xor i32 %208, %205, !dbg !516, !psr.id !519
  %210 = trunc i32 %209 to i8, !dbg !516, !psr.id !520
  store i8 %210, i8* %206, align 1, !dbg !516, !psr.id !521
  br label %211, !dbg !522, !psr.id !523

211:                                              ; preds = %202
  %212 = add i64 %.0, 1, !dbg !524, !psr.id !525
  call void @llvm.dbg.value(metadata i64 %212, metadata !495, metadata !DIExpression()), !dbg !496, !psr.id !526
  br label %200, !dbg !527, !llvm.loop !528, !psr.id !530

213:                                              ; preds = %200
  br label %258, !dbg !531, !psr.id !532

214:                                              ; preds = %157
  %215 = getelementptr inbounds i8, i8* %.07, i64 0, !dbg !533, !psr.id !535
  %216 = bitcast i8* %215 to <2 x i64>*, !dbg !536, !psr.id !537
  %217 = bitcast <2 x i64>* %216 to %struct.__loadu_si128*, !dbg !538, !psr.id !539
  %218 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %217, i32 0, i32 0, !dbg !538, !psr.id !540
  %219 = load <2 x i64>, <2 x i64>* %218, align 1, !dbg !538, !psr.id !541
  call void @llvm.dbg.value(metadata <2 x i64> %219, metadata !542, metadata !DIExpression()), !dbg !543, !psr.id !544
  %220 = getelementptr inbounds i8, i8* %.07, i64 16, !dbg !545, !psr.id !546
  %221 = bitcast i8* %220 to <2 x i64>*, !dbg !547, !psr.id !548
  %222 = bitcast <2 x i64>* %221 to %struct.__loadu_si128*, !dbg !549, !psr.id !550
  %223 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %222, i32 0, i32 0, !dbg !549, !psr.id !551
  %224 = load <2 x i64>, <2 x i64>* %223, align 1, !dbg !549, !psr.id !552
  call void @llvm.dbg.value(metadata <2 x i64> %224, metadata !553, metadata !DIExpression()), !dbg !543, !psr.id !554
  %225 = getelementptr inbounds i8, i8* %.07, i64 32, !dbg !555, !psr.id !556
  %226 = bitcast i8* %225 to <2 x i64>*, !dbg !557, !psr.id !558
  %227 = bitcast <2 x i64>* %226 to %struct.__loadu_si128*, !dbg !559, !psr.id !560
  %228 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %227, i32 0, i32 0, !dbg !559, !psr.id !561
  %229 = load <2 x i64>, <2 x i64>* %228, align 1, !dbg !559, !psr.id !562
  call void @llvm.dbg.value(metadata <2 x i64> %229, metadata !563, metadata !DIExpression()), !dbg !543, !psr.id !564
  %230 = getelementptr inbounds i8, i8* %.07, i64 48, !dbg !565, !psr.id !566
  %231 = bitcast i8* %230 to <2 x i64>*, !dbg !567, !psr.id !568
  %232 = bitcast <2 x i64>* %231 to %struct.__loadu_si128*, !dbg !569, !psr.id !570
  %233 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %232, i32 0, i32 0, !dbg !569, !psr.id !571
  %234 = load <2 x i64>, <2 x i64>* %233, align 1, !dbg !569, !psr.id !572
  call void @llvm.dbg.value(metadata <2 x i64> %234, metadata !573, metadata !DIExpression()), !dbg !543, !psr.id !574
  %235 = xor <2 x i64> %219, %161, !dbg !575, !psr.id !576
  call void @llvm.dbg.value(metadata <2 x i64> %235, metadata !542, metadata !DIExpression()), !dbg !543, !psr.id !577
  %236 = xor <2 x i64> %224, %165, !dbg !578, !psr.id !579
  call void @llvm.dbg.value(metadata <2 x i64> %236, metadata !553, metadata !DIExpression()), !dbg !543, !psr.id !580
  %237 = xor <2 x i64> %229, %169, !dbg !581, !psr.id !582
  call void @llvm.dbg.value(metadata <2 x i64> %237, metadata !563, metadata !DIExpression()), !dbg !543, !psr.id !583
  %238 = xor <2 x i64> %234, %173, !dbg !584, !psr.id !585
  call void @llvm.dbg.value(metadata <2 x i64> %238, metadata !573, metadata !DIExpression()), !dbg !543, !psr.id !586
  %239 = getelementptr inbounds i8, i8* %.07, i64 0, !dbg !587, !psr.id !588
  %240 = bitcast i8* %239 to <2 x i64>*, !dbg !589, !psr.id !590
  %241 = bitcast <2 x i64>* %240 to %struct.__loadu_si128*, !dbg !591, !psr.id !592
  %242 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %241, i32 0, i32 0, !dbg !591, !psr.id !593
  store <2 x i64> %235, <2 x i64>* %242, align 1, !dbg !591, !psr.id !594
  %243 = getelementptr inbounds i8, i8* %.07, i64 16, !dbg !595, !psr.id !596
  %244 = bitcast i8* %243 to <2 x i64>*, !dbg !597, !psr.id !598
  %245 = bitcast <2 x i64>* %244 to %struct.__loadu_si128*, !dbg !599, !psr.id !600
  %246 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %245, i32 0, i32 0, !dbg !599, !psr.id !601
  store <2 x i64> %236, <2 x i64>* %246, align 1, !dbg !599, !psr.id !602
  %247 = getelementptr inbounds i8, i8* %.07, i64 32, !dbg !603, !psr.id !604
  %248 = bitcast i8* %247 to <2 x i64>*, !dbg !605, !psr.id !606
  %249 = bitcast <2 x i64>* %248 to %struct.__loadu_si128*, !dbg !607, !psr.id !608
  %250 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %249, i32 0, i32 0, !dbg !607, !psr.id !609
  store <2 x i64> %237, <2 x i64>* %250, align 1, !dbg !607, !psr.id !610
  %251 = getelementptr inbounds i8, i8* %.07, i64 48, !dbg !611, !psr.id !612
  %252 = bitcast i8* %251 to <2 x i64>*, !dbg !613, !psr.id !614
  %253 = bitcast <2 x i64>* %252 to %struct.__loadu_si128*, !dbg !615, !psr.id !616
  %254 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %253, i32 0, i32 0, !dbg !615, !psr.id !617
  store <2 x i64> %238, <2 x i64>* %254, align 1, !dbg !615, !psr.id !618
  %255 = getelementptr inbounds i8, i8* %.07, i64 64, !dbg !619, !psr.id !620
  call void @llvm.dbg.value(metadata i8* %255, metadata !114, metadata !DIExpression()), !dbg !100, !psr.id !621
  %256 = sub i64 %.08, 64, !dbg !622, !psr.id !623
  call void @llvm.dbg.value(metadata i64 %256, metadata !108, metadata !DIExpression()), !dbg !100, !psr.id !624
  br label %257, !psr.id !625

257:                                              ; preds = %214
  br label %35, !dbg !170, !llvm.loop !626, !psr.id !628

258:                                              ; preds = %213, %35
  %.1 = phi <2 x i64> [ %177, %213 ], [ %.06, %35 ], !dbg !100, !psr.id !629
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !154, metadata !DIExpression()), !dbg !100, !psr.id !630
  %259 = bitcast <2 x i64> %.1 to <8 x i16>, !dbg !631, !psr.id !632
  %260 = extractelement <8 x i16> %259, i64 0, !dbg !631, !psr.id !633
  %261 = zext i16 %260 to i32, !dbg !631, !psr.id !634
  %262 = bitcast <2 x i64> %.1 to <8 x i16>, !dbg !635, !psr.id !636
  %263 = extractelement <8 x i16> %262, i64 1, !dbg !635, !psr.id !637
  %264 = zext i16 %263 to i32, !dbg !635, !psr.id !638
  %265 = shl i32 %264, 16, !dbg !639, !psr.id !640
  %266 = or i32 %261, %265, !dbg !641, !psr.id !642
  ret i32 %266, !dbg !643, !psr.id !644
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32>, i32) #4

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_poly1305_ctmul_run(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3, i8* noalias %4, i64 %5, i8* noalias %6, i32 (i8*, i8*, i32, i8*, i64)* noalias %7, i32 %8) #0 !dbg !645 {
  %10 = alloca [32 x i8], align 16, !psr.id !648
  %11 = alloca [16 x i8], align 16, !psr.id !649
  %12 = alloca [5 x i32], align 16, !psr.id !650
  %13 = alloca [5 x i32], align 16, !psr.id !651
  call void @llvm.dbg.value(metadata i8* %0, metadata !652, metadata !DIExpression()), !dbg !653, !psr.id !654
  call void @llvm.dbg.value(metadata i8* %1, metadata !655, metadata !DIExpression()), !dbg !653, !psr.id !656
  call void @llvm.dbg.value(metadata i8* %2, metadata !657, metadata !DIExpression()), !dbg !653, !psr.id !658
  call void @llvm.dbg.value(metadata i64 %3, metadata !659, metadata !DIExpression()), !dbg !653, !psr.id !660
  call void @llvm.dbg.value(metadata i8* %4, metadata !661, metadata !DIExpression()), !dbg !653, !psr.id !662
  call void @llvm.dbg.value(metadata i64 %5, metadata !663, metadata !DIExpression()), !dbg !653, !psr.id !664
  call void @llvm.dbg.value(metadata i8* %6, metadata !665, metadata !DIExpression()), !dbg !653, !psr.id !666
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !667, metadata !DIExpression()), !dbg !653, !psr.id !668
  call void @llvm.dbg.value(metadata i32 %8, metadata !669, metadata !DIExpression()), !dbg !653, !psr.id !670
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !671, metadata !DIExpression()), !dbg !675, !psr.id !676
  call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !677, metadata !DIExpression()), !dbg !681, !psr.id !682
  call void @llvm.dbg.declare(metadata [5 x i32]* %12, metadata !683, metadata !DIExpression()), !dbg !687, !psr.id !688
  call void @llvm.dbg.declare(metadata [5 x i32]* %13, metadata !689, metadata !DIExpression()), !dbg !690, !psr.id !691
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !692, !psr.id !693
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false), !dbg !692, !psr.id !694
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !695, !psr.id !696
  %16 = call i32 %7(i8* %0, i8* %1, i32 0, i8* %15, i64 32), !dbg !697, !psr.id !698
  %17 = icmp ne i32 %8, 0, !dbg !699, !psr.id !701
  br i1 %17, label %18, label %20, !dbg !702, !psr.id !703

18:                                               ; preds = %9
  %19 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !704, !psr.id !706
  br label %20, !dbg !707, !psr.id !708

20:                                               ; preds = %18, %9
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !709, !psr.id !710
  %22 = call i32 @br_dec32le(i8* %21), !dbg !711, !psr.id !712
  %23 = and i32 %22, 67108863, !dbg !713, !psr.id !714
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !715, !psr.id !716
  store i32 %23, i32* %24, align 16, !dbg !717, !psr.id !718
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !719, !psr.id !720
  %26 = getelementptr inbounds i8, i8* %25, i64 3, !dbg !721, !psr.id !722
  %27 = call i32 @br_dec32le(i8* %26), !dbg !723, !psr.id !724
  %28 = lshr i32 %27, 2, !dbg !725, !psr.id !726
  %29 = and i32 %28, 67108611, !dbg !727, !psr.id !728
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1, !dbg !729, !psr.id !730
  store i32 %29, i32* %30, align 4, !dbg !731, !psr.id !732
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !733, !psr.id !734
  %32 = getelementptr inbounds i8, i8* %31, i64 6, !dbg !735, !psr.id !736
  %33 = call i32 @br_dec32le(i8* %32), !dbg !737, !psr.id !738
  %34 = lshr i32 %33, 4, !dbg !739, !psr.id !740
  %35 = and i32 %34, 67092735, !dbg !741, !psr.id !742
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 2, !dbg !743, !psr.id !744
  store i32 %35, i32* %36, align 8, !dbg !745, !psr.id !746
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !747, !psr.id !748
  %38 = getelementptr inbounds i8, i8* %37, i64 9, !dbg !749, !psr.id !750
  %39 = call i32 @br_dec32le(i8* %38), !dbg !751, !psr.id !752
  %40 = lshr i32 %39, 6, !dbg !753, !psr.id !754
  %41 = and i32 %40, 66076671, !dbg !755, !psr.id !756
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3, !dbg !757, !psr.id !758
  store i32 %41, i32* %42, align 4, !dbg !759, !psr.id !760
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !761, !psr.id !762
  %44 = getelementptr inbounds i8, i8* %43, i64 12, !dbg !763, !psr.id !764
  %45 = call i32 @br_dec32le(i8* %44), !dbg !765, !psr.id !766
  %46 = lshr i32 %45, 8, !dbg !767, !psr.id !768
  %47 = and i32 %46, 1048575, !dbg !769, !psr.id !770
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 4, !dbg !771, !psr.id !772
  store i32 %47, i32* %48, align 16, !dbg !773, !psr.id !774
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !775, !psr.id !776
  %50 = bitcast i32* %49 to i8*, !dbg !775, !psr.id !777
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 20, i1 false), !dbg !775, !psr.id !778
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !779, !psr.id !780
  call void @br_enc64le(i8* %51, i64 %5), !dbg !781, !psr.id !782
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !783, !psr.id !784
  %53 = getelementptr inbounds i8, i8* %52, i64 8, !dbg !785, !psr.id !786
  call void @br_enc64le(i8* %53, i64 %3), !dbg !787, !psr.id !788
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !789, !psr.id !790
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !791, !psr.id !792
  call void @poly1305_inner(i32* %54, i32* %55, i8* %4, i64 %5), !dbg !793, !psr.id !794
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !795, !psr.id !796
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !797, !psr.id !798
  call void @poly1305_inner(i32* %56, i32* %57, i8* %2, i64 %3), !dbg !799, !psr.id !800
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !801, !psr.id !802
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !803, !psr.id !804
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !805, !psr.id !806
  call void @poly1305_inner(i32* %58, i32* %59, i8* %60, i64 16), !dbg !807, !psr.id !808
  call void @llvm.dbg.value(metadata i32 0, metadata !809, metadata !DIExpression()), !dbg !653, !psr.id !810
  call void @llvm.dbg.value(metadata i32 1, metadata !811, metadata !DIExpression()), !dbg !653, !psr.id !812
  br label %61, !dbg !813, !psr.id !815

61:                                               ; preds = %82, %20
  %.02 = phi i32 [ 0, %20 ], [ %77, %82 ], !dbg !653, !psr.id !816
  %.0 = phi i32 [ 1, %20 ], [ %83, %82 ], !dbg !817, !psr.id !818
  call void @llvm.dbg.value(metadata i32 %.0, metadata !811, metadata !DIExpression()), !dbg !653, !psr.id !819
  call void @llvm.dbg.value(metadata i32 %.02, metadata !809, metadata !DIExpression()), !dbg !653, !psr.id !820
  %62 = icmp sle i32 %.0, 6, !dbg !821, !psr.id !823
  br i1 %62, label %63, label %84, !dbg !824, !psr.id !825

63:                                               ; preds = %61
  %64 = icmp sge i32 %.0, 5, !dbg !826, !psr.id !828
  br i1 %64, label %65, label %67, !dbg !829, !psr.id !830

65:                                               ; preds = %63
  %66 = sub nsw i32 %.0, 5, !dbg !831, !psr.id !832
  br label %68, !dbg !829, !psr.id !833

67:                                               ; preds = %63
  br label %68, !dbg !829, !psr.id !834

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ %.0, %67 ], !dbg !829, !psr.id !835
  call void @llvm.dbg.value(metadata i32 %69, metadata !836, metadata !DIExpression()), !dbg !837, !psr.id !838
  %70 = sext i32 %69 to i64, !dbg !839, !psr.id !840
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %70, !dbg !839, !psr.id !841
  %72 = load i32, i32* %71, align 4, !dbg !842, !psr.id !843
  %73 = add i32 %72, %.02, !dbg !842, !psr.id !844
  store i32 %73, i32* %71, align 4, !dbg !842, !psr.id !845
  %74 = sext i32 %69 to i64, !dbg !846, !psr.id !847
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %74, !dbg !846, !psr.id !848
  %76 = load i32, i32* %75, align 4, !dbg !846, !psr.id !849
  %77 = lshr i32 %76, 26, !dbg !850, !psr.id !851
  call void @llvm.dbg.value(metadata i32 %77, metadata !809, metadata !DIExpression()), !dbg !653, !psr.id !852
  %78 = sext i32 %69 to i64, !dbg !853, !psr.id !854
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %78, !dbg !853, !psr.id !855
  %80 = load i32, i32* %79, align 4, !dbg !856, !psr.id !857
  %81 = and i32 %80, 67108863, !dbg !856, !psr.id !858
  store i32 %81, i32* %79, align 4, !dbg !856, !psr.id !859
  br label %82, !dbg !860, !psr.id !861

82:                                               ; preds = %68
  %83 = add nsw i32 %.0, 1, !dbg !862, !psr.id !863
  call void @llvm.dbg.value(metadata i32 %83, metadata !811, metadata !DIExpression()), !dbg !653, !psr.id !864
  br label %61, !dbg !865, !llvm.loop !866, !psr.id !868

84:                                               ; preds = %61
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !869, !psr.id !870
  %86 = load i32, i32* %85, align 16, !dbg !869, !psr.id !871
  %87 = call i32 @GT(i32 %86, i32 67108858), !dbg !872, !psr.id !873
  call void @llvm.dbg.value(metadata i32 %87, metadata !874, metadata !DIExpression()), !dbg !653, !psr.id !875
  call void @llvm.dbg.value(metadata i32 1, metadata !811, metadata !DIExpression()), !dbg !653, !psr.id !876
  br label %88, !dbg !877, !psr.id !879

88:                                               ; preds = %96, %84
  %.01 = phi i32 [ %87, %84 ], [ %95, %96 ], !dbg !653, !psr.id !880
  %.1 = phi i32 [ 1, %84 ], [ %97, %96 ], !dbg !881, !psr.id !882
  call void @llvm.dbg.value(metadata i32 %.1, metadata !811, metadata !DIExpression()), !dbg !653, !psr.id !883
  call void @llvm.dbg.value(metadata i32 %.01, metadata !874, metadata !DIExpression()), !dbg !653, !psr.id !884
  %89 = icmp slt i32 %.1, 5, !dbg !885, !psr.id !887
  br i1 %89, label %90, label %98, !dbg !888, !psr.id !889

90:                                               ; preds = %88
  %91 = sext i32 %.1 to i64, !dbg !890, !psr.id !892
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %91, !dbg !890, !psr.id !893
  %93 = load i32, i32* %92, align 4, !dbg !890, !psr.id !894
  %94 = call i32 @EQ(i32 %93, i32 67108863), !dbg !895, !psr.id !896
  %95 = and i32 %.01, %94, !dbg !897, !psr.id !898
  call void @llvm.dbg.value(metadata i32 %95, metadata !874, metadata !DIExpression()), !dbg !653, !psr.id !899
  br label %96, !dbg !900, !psr.id !901

96:                                               ; preds = %90
  %97 = add nsw i32 %.1, 1, !dbg !902, !psr.id !903
  call void @llvm.dbg.value(metadata i32 %97, metadata !811, metadata !DIExpression()), !dbg !653, !psr.id !904
  br label %88, !dbg !905, !llvm.loop !906, !psr.id !908

98:                                               ; preds = %88
  call void @llvm.dbg.value(metadata i32 5, metadata !809, metadata !DIExpression()), !dbg !653, !psr.id !909
  call void @llvm.dbg.value(metadata i32 0, metadata !811, metadata !DIExpression()), !dbg !653, !psr.id !910
  br label %99, !dbg !911, !psr.id !913

99:                                               ; preds = %114, %98
  %.13 = phi i32 [ 5, %98 ], [ %106, %114 ], !dbg !653, !psr.id !914
  %.2 = phi i32 [ 0, %98 ], [ %115, %114 ], !dbg !915, !psr.id !916
  call void @llvm.dbg.value(metadata i32 %.2, metadata !811, metadata !DIExpression()), !dbg !653, !psr.id !917
  call void @llvm.dbg.value(metadata i32 %.13, metadata !809, metadata !DIExpression()), !dbg !653, !psr.id !918
  %100 = icmp slt i32 %.2, 5, !dbg !919, !psr.id !921
  br i1 %100, label %101, label %116, !dbg !922, !psr.id !923

101:                                              ; preds = %99
  %102 = sext i32 %.2 to i64, !dbg !924, !psr.id !926
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %102, !dbg !924, !psr.id !927
  %104 = load i32, i32* %103, align 4, !dbg !924, !psr.id !928
  %105 = add i32 %104, %.13, !dbg !929, !psr.id !930
  call void @llvm.dbg.value(metadata i32 %105, metadata !931, metadata !DIExpression()), !dbg !932, !psr.id !933
  %106 = lshr i32 %105, 26, !dbg !934, !psr.id !935
  call void @llvm.dbg.value(metadata i32 %106, metadata !809, metadata !DIExpression()), !dbg !653, !psr.id !936
  %107 = and i32 %105, 67108863, !dbg !937, !psr.id !938
  call void @llvm.dbg.value(metadata i32 %107, metadata !931, metadata !DIExpression()), !dbg !932, !psr.id !939
  %108 = sext i32 %.2 to i64, !dbg !940, !psr.id !941
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %108, !dbg !940, !psr.id !942
  %110 = load i32, i32* %109, align 4, !dbg !940, !psr.id !943
  %111 = call i32 @MUX(i32 %.01, i32 %107, i32 %110), !dbg !944, !psr.id !945
  %112 = sext i32 %.2 to i64, !dbg !946, !psr.id !947
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %112, !dbg !946, !psr.id !948
  store i32 %111, i32* %113, align 4, !dbg !949, !psr.id !950
  br label %114, !dbg !951, !psr.id !952

114:                                              ; preds = %101
  %115 = add nsw i32 %.2, 1, !dbg !953, !psr.id !954
  call void @llvm.dbg.value(metadata i32 %115, metadata !811, metadata !DIExpression()), !dbg !653, !psr.id !955
  br label %99, !dbg !956, !llvm.loop !957, !psr.id !959

116:                                              ; preds = %99
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !960, !psr.id !961
  %118 = load i32, i32* %117, align 16, !dbg !960, !psr.id !962
  %119 = zext i32 %118 to i64, !dbg !963, !psr.id !964
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 1, !dbg !965, !psr.id !966
  %121 = load i32, i32* %120, align 4, !dbg !965, !psr.id !967
  %122 = zext i32 %121 to i64, !dbg !968, !psr.id !969
  %123 = shl i64 %122, 26, !dbg !970, !psr.id !971
  %124 = add i64 %119, %123, !dbg !972, !psr.id !973
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !974, !psr.id !975
  %126 = getelementptr inbounds i8, i8* %125, i64 16, !dbg !976, !psr.id !977
  %127 = call i32 @br_dec32le(i8* %126), !dbg !978, !psr.id !979
  %128 = zext i32 %127 to i64, !dbg !978, !psr.id !980
  %129 = add i64 %124, %128, !dbg !981, !psr.id !982
  call void @llvm.dbg.value(metadata i64 %129, metadata !983, metadata !DIExpression()), !dbg !653, !psr.id !984
  %130 = trunc i64 %129 to i32, !dbg !985, !psr.id !986
  call void @br_enc32le(i8* %6, i32 %130), !dbg !987, !psr.id !988
  %131 = lshr i64 %129, 32, !dbg !989, !psr.id !990
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 2, !dbg !991, !psr.id !992
  %133 = load i32, i32* %132, align 8, !dbg !991, !psr.id !993
  %134 = zext i32 %133 to i64, !dbg !994, !psr.id !995
  %135 = shl i64 %134, 20, !dbg !996, !psr.id !997
  %136 = add i64 %131, %135, !dbg !998, !psr.id !999
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1000, !psr.id !1001
  %138 = getelementptr inbounds i8, i8* %137, i64 20, !dbg !1002, !psr.id !1003
  %139 = call i32 @br_dec32le(i8* %138), !dbg !1004, !psr.id !1005
  %140 = zext i32 %139 to i64, !dbg !1004, !psr.id !1006
  %141 = add i64 %136, %140, !dbg !1007, !psr.id !1008
  call void @llvm.dbg.value(metadata i64 %141, metadata !983, metadata !DIExpression()), !dbg !653, !psr.id !1009
  %142 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1010, !psr.id !1011
  %143 = trunc i64 %141 to i32, !dbg !1012, !psr.id !1013
  call void @br_enc32le(i8* %142, i32 %143), !dbg !1014, !psr.id !1015
  %144 = lshr i64 %141, 32, !dbg !1016, !psr.id !1017
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3, !dbg !1018, !psr.id !1019
  %146 = load i32, i32* %145, align 4, !dbg !1018, !psr.id !1020
  %147 = zext i32 %146 to i64, !dbg !1021, !psr.id !1022
  %148 = shl i64 %147, 14, !dbg !1023, !psr.id !1024
  %149 = add i64 %144, %148, !dbg !1025, !psr.id !1026
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1027, !psr.id !1028
  %151 = getelementptr inbounds i8, i8* %150, i64 24, !dbg !1029, !psr.id !1030
  %152 = call i32 @br_dec32le(i8* %151), !dbg !1031, !psr.id !1032
  %153 = zext i32 %152 to i64, !dbg !1031, !psr.id !1033
  %154 = add i64 %149, %153, !dbg !1034, !psr.id !1035
  call void @llvm.dbg.value(metadata i64 %154, metadata !983, metadata !DIExpression()), !dbg !653, !psr.id !1036
  %155 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !1037, !psr.id !1038
  %156 = trunc i64 %154 to i32, !dbg !1039, !psr.id !1040
  call void @br_enc32le(i8* %155, i32 %156), !dbg !1041, !psr.id !1042
  %157 = lshr i64 %154, 32, !dbg !1043, !psr.id !1044
  %158 = trunc i64 %157 to i32, !dbg !1045, !psr.id !1046
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 4, !dbg !1047, !psr.id !1048
  %160 = load i32, i32* %159, align 16, !dbg !1047, !psr.id !1049
  %161 = shl i32 %160, 8, !dbg !1050, !psr.id !1051
  %162 = add i32 %158, %161, !dbg !1052, !psr.id !1053
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1054, !psr.id !1055
  %164 = getelementptr inbounds i8, i8* %163, i64 28, !dbg !1056, !psr.id !1057
  %165 = call i32 @br_dec32le(i8* %164), !dbg !1058, !psr.id !1059
  %166 = add i32 %162, %165, !dbg !1060, !psr.id !1061
  call void @llvm.dbg.value(metadata i32 %166, metadata !1062, metadata !DIExpression()), !dbg !653, !psr.id !1063
  %167 = getelementptr inbounds i8, i8* %6, i64 12, !dbg !1064, !psr.id !1065
  call void @br_enc32le(i8* %167, i32 %166), !dbg !1066, !psr.id !1067
  %168 = icmp ne i32 %8, 0, !dbg !1068, !psr.id !1070
  br i1 %168, label %171, label %169, !dbg !1071, !psr.id !1072

169:                                              ; preds = %116
  %170 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !1073, !psr.id !1075
  br label %171, !dbg !1076, !psr.id !1077

171:                                              ; preds = %169, %116
  ret void, !dbg !1078, !psr.id !1079
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* noalias %0) #0 !dbg !1080 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1083, metadata !DIExpression()), !dbg !1084, !psr.id !1085
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1086, !psr.id !1087
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !1088, !psr.id !1089
  %4 = load i32, i32* %3, align 4, !dbg !1088, !psr.id !1090
  ret i32 %4, !dbg !1091, !psr.id !1092
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64le(i8* noalias %0, i64 %1) #0 !dbg !1093 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1096, metadata !DIExpression()), !dbg !1097, !psr.id !1098
  call void @llvm.dbg.value(metadata i64 %1, metadata !1099, metadata !DIExpression()), !dbg !1097, !psr.id !1100
  %3 = bitcast i8* %0 to %union.br_union_u64*, !dbg !1101, !psr.id !1102
  %4 = bitcast %union.br_union_u64* %3 to i64*, !dbg !1103, !psr.id !1104
  store i64 %1, i64* %4, align 8, !dbg !1105, !psr.id !1106
  ret void, !dbg !1107, !psr.id !1108
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner(i32* noalias %0, i32* noalias %1, i8* noalias %2, i64 %3) #0 !dbg !1109 {
  %5 = alloca [16 x i8], align 16, !psr.id !1114
  call void @llvm.dbg.value(metadata i32* %0, metadata !1115, metadata !DIExpression()), !dbg !1116, !psr.id !1117
  call void @llvm.dbg.value(metadata i32* %1, metadata !1118, metadata !DIExpression()), !dbg !1116, !psr.id !1119
  call void @llvm.dbg.value(metadata i8* %2, metadata !1120, metadata !DIExpression()), !dbg !1116, !psr.id !1121
  call void @llvm.dbg.value(metadata i64 %3, metadata !1122, metadata !DIExpression()), !dbg !1116, !psr.id !1123
  %6 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1124, !psr.id !1125
  %7 = load i32, i32* %6, align 4, !dbg !1124, !psr.id !1126
  call void @llvm.dbg.value(metadata i32 %7, metadata !1127, metadata !DIExpression()), !dbg !1116, !psr.id !1128
  %8 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1129, !psr.id !1130
  %9 = load i32, i32* %8, align 4, !dbg !1129, !psr.id !1131
  call void @llvm.dbg.value(metadata i32 %9, metadata !1132, metadata !DIExpression()), !dbg !1116, !psr.id !1133
  %10 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1134, !psr.id !1135
  %11 = load i32, i32* %10, align 4, !dbg !1134, !psr.id !1136
  call void @llvm.dbg.value(metadata i32 %11, metadata !1137, metadata !DIExpression()), !dbg !1116, !psr.id !1138
  %12 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1139, !psr.id !1140
  %13 = load i32, i32* %12, align 4, !dbg !1139, !psr.id !1141
  call void @llvm.dbg.value(metadata i32 %13, metadata !1142, metadata !DIExpression()), !dbg !1116, !psr.id !1143
  %14 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1144, !psr.id !1145
  %15 = load i32, i32* %14, align 4, !dbg !1144, !psr.id !1146
  call void @llvm.dbg.value(metadata i32 %15, metadata !1147, metadata !DIExpression()), !dbg !1116, !psr.id !1148
  %16 = mul i32 %9, 5, !dbg !1149, !psr.id !1150
  call void @llvm.dbg.value(metadata i32 %16, metadata !1151, metadata !DIExpression()), !dbg !1116, !psr.id !1152
  %17 = mul i32 %11, 5, !dbg !1153, !psr.id !1154
  call void @llvm.dbg.value(metadata i32 %17, metadata !1155, metadata !DIExpression()), !dbg !1116, !psr.id !1156
  %18 = mul i32 %13, 5, !dbg !1157, !psr.id !1158
  call void @llvm.dbg.value(metadata i32 %18, metadata !1159, metadata !DIExpression()), !dbg !1116, !psr.id !1160
  %19 = mul i32 %15, 5, !dbg !1161, !psr.id !1162
  call void @llvm.dbg.value(metadata i32 %19, metadata !1163, metadata !DIExpression()), !dbg !1116, !psr.id !1164
  %20 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1165, !psr.id !1166
  %21 = load i32, i32* %20, align 4, !dbg !1165, !psr.id !1167
  call void @llvm.dbg.value(metadata i32 %21, metadata !1168, metadata !DIExpression()), !dbg !1116, !psr.id !1169
  %22 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1170, !psr.id !1171
  %23 = load i32, i32* %22, align 4, !dbg !1170, !psr.id !1172
  call void @llvm.dbg.value(metadata i32 %23, metadata !1173, metadata !DIExpression()), !dbg !1116, !psr.id !1174
  %24 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1175, !psr.id !1176
  %25 = load i32, i32* %24, align 4, !dbg !1175, !psr.id !1177
  call void @llvm.dbg.value(metadata i32 %25, metadata !1178, metadata !DIExpression()), !dbg !1116, !psr.id !1179
  %26 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1180, !psr.id !1181
  %27 = load i32, i32* %26, align 4, !dbg !1180, !psr.id !1182
  call void @llvm.dbg.value(metadata i32 %27, metadata !1183, metadata !DIExpression()), !dbg !1116, !psr.id !1184
  %28 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !1185, !psr.id !1186
  %29 = load i32, i32* %28, align 4, !dbg !1185, !psr.id !1187
  call void @llvm.dbg.value(metadata i32 %29, metadata !1188, metadata !DIExpression()), !dbg !1116, !psr.id !1189
  call void @llvm.dbg.value(metadata i8* %2, metadata !1190, metadata !DIExpression()), !dbg !1116, !psr.id !1191
  br label %30, !dbg !1192, !psr.id !1193

30:                                               ; preds = %38, %4
  %.07 = phi i32 [ %23, %4 ], [ %180, %38 ], !dbg !1116, !psr.id !1194
  %.06 = phi i32 [ %21, %4 ], [ %181, %38 ], !dbg !1116, !psr.id !1195
  %.04 = phi i8* [ %2, %4 ], [ %182, %38 ], !dbg !1116, !psr.id !1196
  %.03 = phi i64 [ %3, %4 ], [ %183, %38 ], !psr.id !1197
  %.02 = phi i32 [ %25, %4 ], [ %167, %38 ], !dbg !1116, !psr.id !1198
  %.01 = phi i32 [ %27, %4 ], [ %171, %38 ], !dbg !1116, !psr.id !1199
  %.0 = phi i32 [ %29, %4 ], [ %175, %38 ], !dbg !1116, !psr.id !1200
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1188, metadata !DIExpression()), !dbg !1116, !psr.id !1201
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1183, metadata !DIExpression()), !dbg !1116, !psr.id !1202
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1178, metadata !DIExpression()), !dbg !1116, !psr.id !1203
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1122, metadata !DIExpression()), !dbg !1116, !psr.id !1204
  call void @llvm.dbg.value(metadata i8* %.04, metadata !1190, metadata !DIExpression()), !dbg !1116, !psr.id !1205
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1168, metadata !DIExpression()), !dbg !1116, !psr.id !1206
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1173, metadata !DIExpression()), !dbg !1116, !psr.id !1207
  %31 = icmp ugt i64 %.03, 0, !dbg !1208, !psr.id !1209
  br i1 %31, label %32, label %184, !dbg !1192, !psr.id !1210

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !1211, metadata !DIExpression()), !dbg !1213, !psr.id !1214
  %33 = icmp ult i64 %.03, 16, !dbg !1215, !psr.id !1217
  br i1 %33, label %34, label %38, !dbg !1218, !psr.id !1219

34:                                               ; preds = %32
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1220, !psr.id !1222
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 16, i1 false), !dbg !1220, !psr.id !1223
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1224, !psr.id !1225
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 1 %.04, i64 %.03, i1 false), !dbg !1224, !psr.id !1226
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1227, !psr.id !1228
  call void @llvm.dbg.value(metadata i8* %37, metadata !1190, metadata !DIExpression()), !dbg !1116, !psr.id !1229
  call void @llvm.dbg.value(metadata i64 16, metadata !1122, metadata !DIExpression()), !dbg !1116, !psr.id !1230
  br label %38, !dbg !1231, !psr.id !1232

38:                                               ; preds = %34, %32
  %.15 = phi i8* [ %37, %34 ], [ %.04, %32 ], !dbg !1116, !psr.id !1233
  %.1 = phi i64 [ 16, %34 ], [ %.03, %32 ], !psr.id !1234
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1122, metadata !DIExpression()), !dbg !1116, !psr.id !1235
  call void @llvm.dbg.value(metadata i8* %.15, metadata !1190, metadata !DIExpression()), !dbg !1116, !psr.id !1236
  %39 = call i32 @br_dec32le(i8* %.15), !dbg !1237, !psr.id !1238
  %40 = and i32 %39, 67108863, !dbg !1239, !psr.id !1240
  %41 = add i32 %.06, %40, !dbg !1241, !psr.id !1242
  call void @llvm.dbg.value(metadata i32 %41, metadata !1168, metadata !DIExpression()), !dbg !1116, !psr.id !1243
  %42 = getelementptr inbounds i8, i8* %.15, i64 3, !dbg !1244, !psr.id !1245
  %43 = call i32 @br_dec32le(i8* %42), !dbg !1246, !psr.id !1247
  %44 = lshr i32 %43, 2, !dbg !1248, !psr.id !1249
  %45 = and i32 %44, 67108863, !dbg !1250, !psr.id !1251
  %46 = add i32 %.07, %45, !dbg !1252, !psr.id !1253
  call void @llvm.dbg.value(metadata i32 %46, metadata !1173, metadata !DIExpression()), !dbg !1116, !psr.id !1254
  %47 = getelementptr inbounds i8, i8* %.15, i64 6, !dbg !1255, !psr.id !1256
  %48 = call i32 @br_dec32le(i8* %47), !dbg !1257, !psr.id !1258
  %49 = lshr i32 %48, 4, !dbg !1259, !psr.id !1260
  %50 = and i32 %49, 67108863, !dbg !1261, !psr.id !1262
  %51 = add i32 %.02, %50, !dbg !1263, !psr.id !1264
  call void @llvm.dbg.value(metadata i32 %51, metadata !1178, metadata !DIExpression()), !dbg !1116, !psr.id !1265
  %52 = getelementptr inbounds i8, i8* %.15, i64 9, !dbg !1266, !psr.id !1267
  %53 = call i32 @br_dec32le(i8* %52), !dbg !1268, !psr.id !1269
  %54 = lshr i32 %53, 6, !dbg !1270, !psr.id !1271
  %55 = and i32 %54, 67108863, !dbg !1272, !psr.id !1273
  %56 = add i32 %.01, %55, !dbg !1274, !psr.id !1275
  call void @llvm.dbg.value(metadata i32 %56, metadata !1183, metadata !DIExpression()), !dbg !1116, !psr.id !1276
  %57 = getelementptr inbounds i8, i8* %.15, i64 12, !dbg !1277, !psr.id !1278
  %58 = call i32 @br_dec32le(i8* %57), !dbg !1279, !psr.id !1280
  %59 = lshr i32 %58, 8, !dbg !1281, !psr.id !1282
  %60 = or i32 %59, 16777216, !dbg !1283, !psr.id !1284
  %61 = add i32 %.0, %60, !dbg !1285, !psr.id !1286
  call void @llvm.dbg.value(metadata i32 %61, metadata !1188, metadata !DIExpression()), !dbg !1116, !psr.id !1287
  %62 = zext i32 %41 to i64, !dbg !1288, !psr.id !1289
  %63 = zext i32 %7 to i64, !dbg !1288, !psr.id !1290
  %64 = mul i64 %62, %63, !dbg !1288, !psr.id !1291
  %65 = zext i32 %46 to i64, !dbg !1292, !psr.id !1293
  %66 = zext i32 %19 to i64, !dbg !1292, !psr.id !1294
  %67 = mul i64 %65, %66, !dbg !1292, !psr.id !1295
  %68 = add i64 %64, %67, !dbg !1296, !psr.id !1297
  %69 = zext i32 %51 to i64, !dbg !1298, !psr.id !1299
  %70 = zext i32 %18 to i64, !dbg !1298, !psr.id !1300
  %71 = mul i64 %69, %70, !dbg !1298, !psr.id !1301
  %72 = add i64 %68, %71, !dbg !1302, !psr.id !1303
  %73 = zext i32 %56 to i64, !dbg !1304, !psr.id !1305
  %74 = zext i32 %17 to i64, !dbg !1304, !psr.id !1306
  %75 = mul i64 %73, %74, !dbg !1304, !psr.id !1307
  %76 = add i64 %72, %75, !dbg !1308, !psr.id !1309
  %77 = zext i32 %61 to i64, !dbg !1310, !psr.id !1311
  %78 = zext i32 %16 to i64, !dbg !1310, !psr.id !1312
  %79 = mul i64 %77, %78, !dbg !1310, !psr.id !1313
  %80 = add i64 %76, %79, !dbg !1314, !psr.id !1315
  call void @llvm.dbg.value(metadata i64 %80, metadata !1316, metadata !DIExpression()), !dbg !1317, !psr.id !1318
  %81 = zext i32 %41 to i64, !dbg !1319, !psr.id !1320
  %82 = zext i32 %9 to i64, !dbg !1319, !psr.id !1321
  %83 = mul i64 %81, %82, !dbg !1319, !psr.id !1322
  %84 = zext i32 %46 to i64, !dbg !1323, !psr.id !1324
  %85 = zext i32 %7 to i64, !dbg !1323, !psr.id !1325
  %86 = mul i64 %84, %85, !dbg !1323, !psr.id !1326
  %87 = add i64 %83, %86, !dbg !1327, !psr.id !1328
  %88 = zext i32 %51 to i64, !dbg !1329, !psr.id !1330
  %89 = zext i32 %19 to i64, !dbg !1329, !psr.id !1331
  %90 = mul i64 %88, %89, !dbg !1329, !psr.id !1332
  %91 = add i64 %87, %90, !dbg !1333, !psr.id !1334
  %92 = zext i32 %56 to i64, !dbg !1335, !psr.id !1336
  %93 = zext i32 %18 to i64, !dbg !1335, !psr.id !1337
  %94 = mul i64 %92, %93, !dbg !1335, !psr.id !1338
  %95 = add i64 %91, %94, !dbg !1339, !psr.id !1340
  %96 = zext i32 %61 to i64, !dbg !1341, !psr.id !1342
  %97 = zext i32 %17 to i64, !dbg !1341, !psr.id !1343
  %98 = mul i64 %96, %97, !dbg !1341, !psr.id !1344
  %99 = add i64 %95, %98, !dbg !1345, !psr.id !1346
  call void @llvm.dbg.value(metadata i64 %99, metadata !1347, metadata !DIExpression()), !dbg !1317, !psr.id !1348
  %100 = zext i32 %41 to i64, !dbg !1349, !psr.id !1350
  %101 = zext i32 %11 to i64, !dbg !1349, !psr.id !1351
  %102 = mul i64 %100, %101, !dbg !1349, !psr.id !1352
  %103 = zext i32 %46 to i64, !dbg !1353, !psr.id !1354
  %104 = zext i32 %9 to i64, !dbg !1353, !psr.id !1355
  %105 = mul i64 %103, %104, !dbg !1353, !psr.id !1356
  %106 = add i64 %102, %105, !dbg !1357, !psr.id !1358
  %107 = zext i32 %51 to i64, !dbg !1359, !psr.id !1360
  %108 = zext i32 %7 to i64, !dbg !1359, !psr.id !1361
  %109 = mul i64 %107, %108, !dbg !1359, !psr.id !1362
  %110 = add i64 %106, %109, !dbg !1363, !psr.id !1364
  %111 = zext i32 %56 to i64, !dbg !1365, !psr.id !1366
  %112 = zext i32 %19 to i64, !dbg !1365, !psr.id !1367
  %113 = mul i64 %111, %112, !dbg !1365, !psr.id !1368
  %114 = add i64 %110, %113, !dbg !1369, !psr.id !1370
  %115 = zext i32 %61 to i64, !dbg !1371, !psr.id !1372
  %116 = zext i32 %18 to i64, !dbg !1371, !psr.id !1373
  %117 = mul i64 %115, %116, !dbg !1371, !psr.id !1374
  %118 = add i64 %114, %117, !dbg !1375, !psr.id !1376
  call void @llvm.dbg.value(metadata i64 %118, metadata !1377, metadata !DIExpression()), !dbg !1317, !psr.id !1378
  %119 = zext i32 %41 to i64, !dbg !1379, !psr.id !1380
  %120 = zext i32 %13 to i64, !dbg !1379, !psr.id !1381
  %121 = mul i64 %119, %120, !dbg !1379, !psr.id !1382
  %122 = zext i32 %46 to i64, !dbg !1383, !psr.id !1384
  %123 = zext i32 %11 to i64, !dbg !1383, !psr.id !1385
  %124 = mul i64 %122, %123, !dbg !1383, !psr.id !1386
  %125 = add i64 %121, %124, !dbg !1387, !psr.id !1388
  %126 = zext i32 %51 to i64, !dbg !1389, !psr.id !1390
  %127 = zext i32 %9 to i64, !dbg !1389, !psr.id !1391
  %128 = mul i64 %126, %127, !dbg !1389, !psr.id !1392
  %129 = add i64 %125, %128, !dbg !1393, !psr.id !1394
  %130 = zext i32 %56 to i64, !dbg !1395, !psr.id !1396
  %131 = zext i32 %7 to i64, !dbg !1395, !psr.id !1397
  %132 = mul i64 %130, %131, !dbg !1395, !psr.id !1398
  %133 = add i64 %129, %132, !dbg !1399, !psr.id !1400
  %134 = zext i32 %61 to i64, !dbg !1401, !psr.id !1402
  %135 = zext i32 %19 to i64, !dbg !1401, !psr.id !1403
  %136 = mul i64 %134, %135, !dbg !1401, !psr.id !1404
  %137 = add i64 %133, %136, !dbg !1405, !psr.id !1406
  call void @llvm.dbg.value(metadata i64 %137, metadata !1407, metadata !DIExpression()), !dbg !1317, !psr.id !1408
  %138 = zext i32 %41 to i64, !dbg !1409, !psr.id !1410
  %139 = zext i32 %15 to i64, !dbg !1409, !psr.id !1411
  %140 = mul i64 %138, %139, !dbg !1409, !psr.id !1412
  %141 = zext i32 %46 to i64, !dbg !1413, !psr.id !1414
  %142 = zext i32 %13 to i64, !dbg !1413, !psr.id !1415
  %143 = mul i64 %141, %142, !dbg !1413, !psr.id !1416
  %144 = add i64 %140, %143, !dbg !1417, !psr.id !1418
  %145 = zext i32 %51 to i64, !dbg !1419, !psr.id !1420
  %146 = zext i32 %11 to i64, !dbg !1419, !psr.id !1421
  %147 = mul i64 %145, %146, !dbg !1419, !psr.id !1422
  %148 = add i64 %144, %147, !dbg !1423, !psr.id !1424
  %149 = zext i32 %56 to i64, !dbg !1425, !psr.id !1426
  %150 = zext i32 %9 to i64, !dbg !1425, !psr.id !1427
  %151 = mul i64 %149, %150, !dbg !1425, !psr.id !1428
  %152 = add i64 %148, %151, !dbg !1429, !psr.id !1430
  %153 = zext i32 %61 to i64, !dbg !1431, !psr.id !1432
  %154 = zext i32 %7 to i64, !dbg !1431, !psr.id !1433
  %155 = mul i64 %153, %154, !dbg !1431, !psr.id !1434
  %156 = add i64 %152, %155, !dbg !1435, !psr.id !1436
  call void @llvm.dbg.value(metadata i64 %156, metadata !1437, metadata !DIExpression()), !dbg !1317, !psr.id !1438
  %157 = lshr i64 %80, 26, !dbg !1439, !psr.id !1440
  call void @llvm.dbg.value(metadata i64 %157, metadata !1441, metadata !DIExpression()), !dbg !1317, !psr.id !1442
  %158 = trunc i64 %80 to i32, !dbg !1443, !psr.id !1444
  %159 = and i32 %158, 67108863, !dbg !1445, !psr.id !1446
  call void @llvm.dbg.value(metadata i32 %159, metadata !1168, metadata !DIExpression()), !dbg !1116, !psr.id !1447
  %160 = add i64 %99, %157, !dbg !1448, !psr.id !1449
  call void @llvm.dbg.value(metadata i64 %160, metadata !1347, metadata !DIExpression()), !dbg !1317, !psr.id !1450
  %161 = lshr i64 %160, 26, !dbg !1451, !psr.id !1452
  call void @llvm.dbg.value(metadata i64 %161, metadata !1441, metadata !DIExpression()), !dbg !1317, !psr.id !1453
  %162 = trunc i64 %160 to i32, !dbg !1454, !psr.id !1455
  %163 = and i32 %162, 67108863, !dbg !1456, !psr.id !1457
  call void @llvm.dbg.value(metadata i32 %163, metadata !1173, metadata !DIExpression()), !dbg !1116, !psr.id !1458
  %164 = add i64 %118, %161, !dbg !1459, !psr.id !1460
  call void @llvm.dbg.value(metadata i64 %164, metadata !1377, metadata !DIExpression()), !dbg !1317, !psr.id !1461
  %165 = lshr i64 %164, 26, !dbg !1462, !psr.id !1463
  call void @llvm.dbg.value(metadata i64 %165, metadata !1441, metadata !DIExpression()), !dbg !1317, !psr.id !1464
  %166 = trunc i64 %164 to i32, !dbg !1465, !psr.id !1466
  %167 = and i32 %166, 67108863, !dbg !1467, !psr.id !1468
  call void @llvm.dbg.value(metadata i32 %167, metadata !1178, metadata !DIExpression()), !dbg !1116, !psr.id !1469
  %168 = add i64 %137, %165, !dbg !1470, !psr.id !1471
  call void @llvm.dbg.value(metadata i64 %168, metadata !1407, metadata !DIExpression()), !dbg !1317, !psr.id !1472
  %169 = lshr i64 %168, 26, !dbg !1473, !psr.id !1474
  call void @llvm.dbg.value(metadata i64 %169, metadata !1441, metadata !DIExpression()), !dbg !1317, !psr.id !1475
  %170 = trunc i64 %168 to i32, !dbg !1476, !psr.id !1477
  %171 = and i32 %170, 67108863, !dbg !1478, !psr.id !1479
  call void @llvm.dbg.value(metadata i32 %171, metadata !1183, metadata !DIExpression()), !dbg !1116, !psr.id !1480
  %172 = add i64 %156, %169, !dbg !1481, !psr.id !1482
  call void @llvm.dbg.value(metadata i64 %172, metadata !1437, metadata !DIExpression()), !dbg !1317, !psr.id !1483
  %173 = lshr i64 %172, 26, !dbg !1484, !psr.id !1485
  call void @llvm.dbg.value(metadata i64 %173, metadata !1441, metadata !DIExpression()), !dbg !1317, !psr.id !1486
  %174 = trunc i64 %172 to i32, !dbg !1487, !psr.id !1488
  %175 = and i32 %174, 67108863, !dbg !1489, !psr.id !1490
  call void @llvm.dbg.value(metadata i32 %175, metadata !1188, metadata !DIExpression()), !dbg !1116, !psr.id !1491
  %176 = trunc i64 %173 to i32, !dbg !1492, !psr.id !1493
  %177 = mul i32 %176, 5, !dbg !1494, !psr.id !1495
  %178 = add i32 %159, %177, !dbg !1496, !psr.id !1497
  call void @llvm.dbg.value(metadata i32 %178, metadata !1168, metadata !DIExpression()), !dbg !1116, !psr.id !1498
  %179 = lshr i32 %178, 26, !dbg !1499, !psr.id !1500
  %180 = add i32 %163, %179, !dbg !1501, !psr.id !1502
  call void @llvm.dbg.value(metadata i32 %180, metadata !1173, metadata !DIExpression()), !dbg !1116, !psr.id !1503
  %181 = and i32 %178, 67108863, !dbg !1504, !psr.id !1505
  call void @llvm.dbg.value(metadata i32 %181, metadata !1168, metadata !DIExpression()), !dbg !1116, !psr.id !1506
  %182 = getelementptr inbounds i8, i8* %.15, i64 16, !dbg !1507, !psr.id !1508
  call void @llvm.dbg.value(metadata i8* %182, metadata !1190, metadata !DIExpression()), !dbg !1116, !psr.id !1509
  %183 = sub i64 %.1, 16, !dbg !1510, !psr.id !1511
  call void @llvm.dbg.value(metadata i64 %183, metadata !1122, metadata !DIExpression()), !dbg !1116, !psr.id !1512
  br label %30, !dbg !1192, !llvm.loop !1513, !psr.id !1515

184:                                              ; preds = %30
  %185 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1516, !psr.id !1517
  store i32 %.06, i32* %185, align 4, !dbg !1518, !psr.id !1519
  %186 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1520, !psr.id !1521
  store i32 %.07, i32* %186, align 4, !dbg !1522, !psr.id !1523
  %187 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1524, !psr.id !1525
  store i32 %.02, i32* %187, align 4, !dbg !1526, !psr.id !1527
  %188 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1528, !psr.id !1529
  store i32 %.01, i32* %188, align 4, !dbg !1530, !psr.id !1531
  %189 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !1532, !psr.id !1533
  store i32 %.0, i32* %189, align 4, !dbg !1534, !psr.id !1535
  ret void, !dbg !1536, !psr.id !1537
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !1538 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1541, metadata !DIExpression()), !dbg !1542, !psr.id !1543
  call void @llvm.dbg.value(metadata i32 %1, metadata !1544, metadata !DIExpression()), !dbg !1542, !psr.id !1545
  %3 = sub i32 %1, %0, !dbg !1546, !psr.id !1547
  call void @llvm.dbg.value(metadata i32 %3, metadata !1548, metadata !DIExpression()), !dbg !1542, !psr.id !1549
  %4 = xor i32 %0, %1, !dbg !1550, !psr.id !1551
  %5 = xor i32 %0, %3, !dbg !1552, !psr.id !1553
  %6 = and i32 %4, %5, !dbg !1554, !psr.id !1555
  %7 = xor i32 %3, %6, !dbg !1556, !psr.id !1557
  %8 = lshr i32 %7, 31, !dbg !1558, !psr.id !1559
  ret i32 %8, !dbg !1560, !psr.id !1561
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !1562 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1563, metadata !DIExpression()), !dbg !1564, !psr.id !1565
  call void @llvm.dbg.value(metadata i32 %1, metadata !1566, metadata !DIExpression()), !dbg !1564, !psr.id !1567
  %3 = xor i32 %0, %1, !dbg !1568, !psr.id !1569
  call void @llvm.dbg.value(metadata i32 %3, metadata !1570, metadata !DIExpression()), !dbg !1564, !psr.id !1571
  %4 = sub i32 0, %3, !dbg !1572, !psr.id !1573
  %5 = or i32 %3, %4, !dbg !1574, !psr.id !1575
  %6 = lshr i32 %5, 31, !dbg !1576, !psr.id !1577
  %7 = call i32 @NOT(i32 %6), !dbg !1578, !psr.id !1579
  ret i32 %7, !dbg !1580, !psr.id !1581
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !1582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1585, metadata !DIExpression()), !dbg !1586, !psr.id !1587
  call void @llvm.dbg.value(metadata i32 %1, metadata !1588, metadata !DIExpression()), !dbg !1586, !psr.id !1589
  call void @llvm.dbg.value(metadata i32 %2, metadata !1590, metadata !DIExpression()), !dbg !1586, !psr.id !1591
  %4 = sub i32 0, %0, !dbg !1592, !psr.id !1593
  %5 = xor i32 %1, %2, !dbg !1594, !psr.id !1595
  %6 = and i32 %4, %5, !dbg !1596, !psr.id !1597
  %7 = xor i32 %2, %6, !dbg !1598, !psr.id !1599
  ret i32 %7, !dbg !1600, !psr.id !1601
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* noalias %0, i32 %1) #0 !dbg !1602 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1605, metadata !DIExpression()), !dbg !1606, !psr.id !1607
  call void @llvm.dbg.value(metadata i32 %1, metadata !1608, metadata !DIExpression()), !dbg !1606, !psr.id !1609
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1610, !psr.id !1611
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !1612, !psr.id !1613
  store i32 %1, i32* %4, align 4, !dbg !1614, !psr.id !1615
  ret void, !dbg !1616, !psr.id !1617
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !1618 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1621, metadata !DIExpression()), !dbg !1622, !psr.id !1623
  %2 = xor i32 %0, 1, !dbg !1624, !psr.id !1625
  ret i32 %2, !dbg !1626, !psr.id !1627
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3, i8* noalias %4, i64 %5, i8* noalias %6, i32 (i8*, i8*, i32, i8*, i64)* noalias %7, i32 %8) #0 !dbg !1628 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1629, metadata !DIExpression()), !dbg !1630, !psr.id !1631
  call void @llvm.dbg.value(metadata i8* %1, metadata !1632, metadata !DIExpression()), !dbg !1630, !psr.id !1633
  call void @llvm.dbg.value(metadata i8* %2, metadata !1634, metadata !DIExpression()), !dbg !1630, !psr.id !1635
  call void @llvm.dbg.value(metadata i64 %3, metadata !1636, metadata !DIExpression()), !dbg !1630, !psr.id !1637
  call void @llvm.dbg.value(metadata i8* %4, metadata !1638, metadata !DIExpression()), !dbg !1630, !psr.id !1639
  call void @llvm.dbg.value(metadata i64 %5, metadata !1640, metadata !DIExpression()), !dbg !1630, !psr.id !1641
  call void @llvm.dbg.value(metadata i8* %6, metadata !1642, metadata !DIExpression()), !dbg !1630, !psr.id !1643
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !1644, metadata !DIExpression()), !dbg !1630, !psr.id !1645
  call void @llvm.dbg.value(metadata i32 %8, metadata !1646, metadata !DIExpression()), !dbg !1630, !psr.id !1647
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1648, !psr.id !1649
  call void @public_in(%struct.smack_value* %10), !dbg !1650, !psr.id !1651
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1652, !psr.id !1653
  call void @public_in(%struct.smack_value* %11), !dbg !1654, !psr.id !1655
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1656, !psr.id !1657
  call void @public_in(%struct.smack_value* %12), !dbg !1658, !psr.id !1659
  %13 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !1660, !psr.id !1661
  call void @public_in(%struct.smack_value* %13), !dbg !1662, !psr.id !1663
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !1664, !psr.id !1665
  call void @public_in(%struct.smack_value* %14), !dbg !1666, !psr.id !1667
  %15 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %5), !dbg !1668, !psr.id !1669
  call void @public_in(%struct.smack_value* %15), !dbg !1670, !psr.id !1671
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !1672, !psr.id !1673
  call void @public_in(%struct.smack_value* %16), !dbg !1674, !psr.id !1675
  %17 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !1676, !psr.id !1677
  call void @public_in(%struct.smack_value* %17), !dbg !1678, !psr.id !1679
  %18 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !1680, !psr.id !1681
  call void @public_in(%struct.smack_value* %18), !dbg !1682, !psr.id !1683
  %19 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !1684, !psr.id !1685
  call void @public_in(%struct.smack_value* %19), !dbg !1686, !psr.id !1687
  %20 = call %struct.smack_value* (i8*, i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, i32, ...)*)(i8* %4, i32 32), !dbg !1688, !psr.id !1689
  call void @public_in(%struct.smack_value* %20), !dbg !1690, !psr.id !1691
  call void @br_poly1305_ctmul_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_sse2_run, i32 %8), !dbg !1692, !psr.id !1693
  ret void, !dbg !1694, !psr.id !1695
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #6

declare dso_local void @public_in(%struct.smack_value*) #6

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !1696 {
  %1 = call i8* (...) @getvoid1(), !dbg !1699, !psr.id !1700
  call void @llvm.dbg.value(metadata i8* %1, metadata !1701, metadata !DIExpression()), !dbg !1702, !psr.id !1703
  %2 = call i8* (...) @getvoid2(), !dbg !1704, !psr.id !1705
  call void @llvm.dbg.value(metadata i8* %2, metadata !1706, metadata !DIExpression()), !dbg !1702, !psr.id !1707
  %3 = call i8* (...) @getvoid5(), !dbg !1708, !psr.id !1709
  call void @llvm.dbg.value(metadata i8* %3, metadata !1710, metadata !DIExpression()), !dbg !1702, !psr.id !1711
  call void @llvm.dbg.value(metadata i64 32, metadata !1712, metadata !DIExpression()), !dbg !1702, !psr.id !1713
  %4 = call i8* (...) @getvoid3(), !dbg !1714, !psr.id !1715
  call void @llvm.dbg.value(metadata i8* %4, metadata !1716, metadata !DIExpression()), !dbg !1702, !psr.id !1717
  call void @llvm.dbg.value(metadata i64 32, metadata !1718, metadata !DIExpression()), !dbg !1702, !psr.id !1719
  %5 = call i8* (...) @getvoid6(), !dbg !1720, !psr.id !1721
  call void @llvm.dbg.value(metadata i8* %5, metadata !1722, metadata !DIExpression()), !dbg !1702, !psr.id !1723
  call void @llvm.dbg.value(metadata i32 1, metadata !1724, metadata !DIExpression()), !dbg !1702, !psr.id !1725
  call void @br_poly1305_ctmul_run(i8* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_sse2_run, i32 1), !dbg !1726, !psr.id !1727
  ret void, !dbg !1728, !psr.id !1729
}

declare dso_local i8* @getvoid1(...) #6

declare dso_local i8* @getvoid2(...) #6

declare dso_local i8* @getvoid5(...) #6

declare dso_local i8* @getvoid3(...) #6

declare dso_local i8* @getvoid6(...) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @run_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readnone }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!17, !60, !83}
!llvm.ident = !{!85, !85, !85}
!llvm.module.flags = !{!86, !87, !88}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 75, type: !57, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_sse2_run", scope: !3, file: !3, line: 66, type: !4, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_sse2.c", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20_sse2")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !11, !11, !6, !13, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 46, baseType: !16)
!15 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !19, globals: !56, splitDebugInlining: false, nameTableKind: None)
!18 = !{}
!19 = !{!11, !20, !23, !29, !13, !6, !32, !35, !36, !41, !47, !49, !52}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i", file: !24, line: 16, baseType: !25, align: 128)
!24 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/emmintrin.h", directory: "")
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, flags: DIFlagVector, elements: !27)
!26 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!27 = !{!28}
!28 = !DISubrange(count: 2)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v4si", file: !30, line: 15, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/xmmintrin.h", directory: "")
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, flags: DIFlagVector, elements: !33)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{!34}
!34 = !DISubrange(count: 4)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v8hi", file: !24, line: 24, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, flags: DIFlagVector, elements: !39)
!38 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!39 = !{!40}
!40 = !DISubrange(count: 8)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !24, line: 3550, size: 128, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !43, file: !24, line: 3551, baseType: !46, size: 128, align: 8)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i_u", file: !24, line: 19, baseType: !25, align: 8)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v4su", file: !30, line: 22, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, flags: DIFlagVector, elements: !33)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2du", file: !24, line: 28, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, flags: DIFlagVector, elements: !27)
!51 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_si128", file: !24, line: 4013, size: 128, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !53, file: !24, line: 4014, baseType: !46, size: 128, align: 8)
!56 = !{!0}
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 128, elements: !33)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!59 = !{!"0"}
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !62, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../BearSSL/src/symcipher/poly1305_ctmul.c", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20_sse2")
!62 = !{!63, !65, !6, !66, !75, !82}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !16)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u32", file: !69, line: 480, baseType: !70)
!69 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20_sse2")
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !69, line: 477, size: 32, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !70, file: !69, line: 478, baseType: !6, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !70, file: !69, line: 479, baseType: !74, size: 32)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !33)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u64", file: !69, line: 485, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !69, line: 482, size: 64, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !77, file: !69, line: 483, baseType: !63, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !77, file: !69, line: 484, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !39)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "run.c", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20_sse2")
!85 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!86 = !{i32 7, !"Dwarf Version", i32 4}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 4}
!89 = distinct !DISubprogram(name: "br_chacha20_sse2_get", scope: !3, file: !3, line: 37, type: !90, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!90 = !DISubroutineType(types: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_chacha20_run", file: !93, line: 2442, baseType: !94)
!93 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech/BearSSL/poly1305_ctmul_chacha20_sse2")
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!95 = !DILocation(line: 47, column: 2, scope: !89)
!96 = !{!"1"}
!97 = !{!"2"}
!98 = !{!"3"}
!99 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 66, type: !11)
!100 = !DILocation(line: 0, scope: !2)
!101 = !{!"4"}
!102 = !DILocalVariable(name: "iv", arg: 2, scope: !2, file: !3, line: 67, type: !11)
!103 = !{!"5"}
!104 = !DILocalVariable(name: "cc", arg: 3, scope: !2, file: !3, line: 67, type: !6)
!105 = !{!"6"}
!106 = !DILocalVariable(name: "data", arg: 4, scope: !2, file: !3, line: 67, type: !13)
!107 = !{!"7"}
!108 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 67, type: !14)
!109 = !{!"8"}
!110 = !DILocalVariable(name: "ivtmp", scope: !2, file: !3, line: 70, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !33)
!112 = !DILocation(line: 70, column: 11, scope: !2)
!113 = !{!"9"}
!114 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 69, type: !65)
!115 = !{!"10"}
!116 = !DILocation(line: 80, column: 24, scope: !2)
!117 = !{!"11"}
!118 = !DILocation(line: 80, column: 8, scope: !2)
!119 = !{!"12"}
!120 = !{!"13"}
!121 = !{!"14"}
!122 = !DILocalVariable(name: "kw0", scope: !2, file: !3, line: 71, type: !23)
!123 = !{!"15"}
!124 = !DILocation(line: 81, column: 66, scope: !2)
!125 = !{!"16"}
!126 = !DILocation(line: 81, column: 24, scope: !2)
!127 = !{!"17"}
!128 = !DILocation(line: 81, column: 8, scope: !2)
!129 = !{!"18"}
!130 = !{!"19"}
!131 = !{!"20"}
!132 = !DILocalVariable(name: "kw1", scope: !2, file: !3, line: 71, type: !23)
!133 = !{!"21"}
!134 = !DILocation(line: 82, column: 2, scope: !2)
!135 = !{!"22"}
!136 = !DILocation(line: 82, column: 11, scope: !2)
!137 = !{!"23"}
!138 = !DILocation(line: 83, column: 9, scope: !2)
!139 = !{!"24"}
!140 = !DILocation(line: 83, column: 15, scope: !2)
!141 = !{!"25"}
!142 = !DILocation(line: 83, column: 2, scope: !2)
!143 = !{!"26"}
!144 = !{!"27"}
!145 = !DILocation(line: 84, column: 37, scope: !2)
!146 = !{!"28"}
!147 = !DILocation(line: 84, column: 23, scope: !2)
!148 = !{!"29"}
!149 = !{!"30"}
!150 = !DILocation(line: 84, column: 7, scope: !2)
!151 = !{!"31"}
!152 = !{!"32"}
!153 = !{!"33"}
!154 = !DILocalVariable(name: "iw", scope: !2, file: !3, line: 72, type: !23)
!155 = !{!"34"}
!156 = !DILocation(line: 85, column: 7, scope: !2)
!157 = !{!"35"}
!158 = !{!"36"}
!159 = !{!"37"}
!160 = !DILocalVariable(name: "cw", scope: !2, file: !3, line: 72, type: !23)
!161 = !{!"38"}
!162 = !DILocation(line: 86, column: 8, scope: !2)
!163 = !{!"39"}
!164 = !{!"40"}
!165 = !{!"41"}
!166 = !{!"42"}
!167 = !{!"43"}
!168 = !DILocalVariable(name: "one", scope: !2, file: !3, line: 73, type: !23)
!169 = !{!"44"}
!170 = !DILocation(line: 88, column: 2, scope: !2)
!171 = !{!"45"}
!172 = !{!"46"}
!173 = !{!"47"}
!174 = !{!"48"}
!175 = !{!"49"}
!176 = !{!"50"}
!177 = !{!"51"}
!178 = !DILocation(line: 88, column: 13, scope: !2)
!179 = !{!"52"}
!180 = !{!"53"}
!181 = !DILocalVariable(name: "s0", scope: !182, file: !3, line: 92, type: !23)
!182 = distinct !DILexicalBlock(scope: !2, file: !3, line: 88, column: 18)
!183 = !DILocation(line: 0, scope: !182)
!184 = !{!"54"}
!185 = !DILocalVariable(name: "s1", scope: !182, file: !3, line: 92, type: !23)
!186 = !{!"55"}
!187 = !DILocalVariable(name: "s2", scope: !182, file: !3, line: 92, type: !23)
!188 = !{!"56"}
!189 = !DILocalVariable(name: "s3", scope: !182, file: !3, line: 92, type: !23)
!190 = !{!"57"}
!191 = !DILocalVariable(name: "i", scope: !182, file: !3, line: 93, type: !32)
!192 = !{!"58"}
!193 = !DILocation(line: 99, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !182, file: !3, line: 99, column: 3)
!195 = !{!"59"}
!196 = !{!"60"}
!197 = !{!"61"}
!198 = !{!"62"}
!199 = !{!"63"}
!200 = !DILocation(line: 0, scope: !194)
!201 = !{!"64"}
!202 = !{!"65"}
!203 = !{!"66"}
!204 = !{!"67"}
!205 = !{!"68"}
!206 = !{!"69"}
!207 = !DILocation(line: 99, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !194, file: !3, line: 99, column: 3)
!209 = !{!"70"}
!210 = !DILocation(line: 99, column: 3, scope: !194)
!211 = !{!"71"}
!212 = !DILocation(line: 104, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !208, file: !3, line: 99, column: 29)
!214 = !{!"72"}
!215 = !{!"73"}
!216 = !{!"74"}
!217 = !{!"75"}
!218 = !{!"76"}
!219 = !DILocation(line: 105, column: 9, scope: !213)
!220 = !{!"77"}
!221 = !{!"78"}
!222 = !DILocation(line: 107, column: 5, scope: !213)
!223 = !{!"79"}
!224 = !{!"80"}
!225 = !{!"81"}
!226 = !DILocation(line: 108, column: 5, scope: !213)
!227 = !{!"82"}
!228 = !{!"83"}
!229 = !{!"84"}
!230 = !DILocation(line: 106, column: 9, scope: !213)
!231 = !{!"85"}
!232 = !{!"86"}
!233 = !DILocation(line: 110, column: 9, scope: !213)
!234 = !{!"87"}
!235 = !{!"88"}
!236 = !{!"89"}
!237 = !{!"90"}
!238 = !{!"91"}
!239 = !DILocation(line: 111, column: 9, scope: !213)
!240 = !{!"92"}
!241 = !{!"93"}
!242 = !DILocation(line: 113, column: 5, scope: !213)
!243 = !{!"94"}
!244 = !{!"95"}
!245 = !{!"96"}
!246 = !DILocation(line: 114, column: 5, scope: !213)
!247 = !{!"97"}
!248 = !{!"98"}
!249 = !{!"99"}
!250 = !DILocation(line: 112, column: 9, scope: !213)
!251 = !{!"100"}
!252 = !{!"101"}
!253 = !DILocation(line: 116, column: 9, scope: !213)
!254 = !{!"102"}
!255 = !{!"103"}
!256 = !{!"104"}
!257 = !{!"105"}
!258 = !{!"106"}
!259 = !DILocation(line: 117, column: 9, scope: !213)
!260 = !{!"107"}
!261 = !{!"108"}
!262 = !DILocation(line: 119, column: 5, scope: !213)
!263 = !{!"109"}
!264 = !{!"110"}
!265 = !{!"111"}
!266 = !DILocation(line: 120, column: 5, scope: !213)
!267 = !{!"112"}
!268 = !{!"113"}
!269 = !{!"114"}
!270 = !DILocation(line: 118, column: 9, scope: !213)
!271 = !{!"115"}
!272 = !{!"116"}
!273 = !DILocation(line: 122, column: 9, scope: !213)
!274 = !{!"117"}
!275 = !{!"118"}
!276 = !{!"119"}
!277 = !{!"120"}
!278 = !{!"121"}
!279 = !DILocation(line: 123, column: 9, scope: !213)
!280 = !{!"122"}
!281 = !{!"123"}
!282 = !DILocation(line: 125, column: 5, scope: !213)
!283 = !{!"124"}
!284 = !{!"125"}
!285 = !{!"126"}
!286 = !DILocation(line: 126, column: 5, scope: !213)
!287 = !{!"127"}
!288 = !{!"128"}
!289 = !{!"129"}
!290 = !DILocation(line: 124, column: 9, scope: !213)
!291 = !{!"130"}
!292 = !{!"131"}
!293 = !DILocation(line: 133, column: 9, scope: !213)
!294 = !{!"132"}
!295 = !{!"133"}
!296 = !{!"134"}
!297 = !{!"135"}
!298 = !DILocation(line: 134, column: 9, scope: !213)
!299 = !{!"136"}
!300 = !{!"137"}
!301 = !{!"138"}
!302 = !{!"139"}
!303 = !DILocation(line: 135, column: 9, scope: !213)
!304 = !{!"140"}
!305 = !{!"141"}
!306 = !{!"142"}
!307 = !{!"143"}
!308 = !DILocation(line: 137, column: 9, scope: !213)
!309 = !{!"144"}
!310 = !{!"145"}
!311 = !{!"146"}
!312 = !{!"147"}
!313 = !{!"148"}
!314 = !DILocation(line: 138, column: 9, scope: !213)
!315 = !{!"149"}
!316 = !{!"150"}
!317 = !DILocation(line: 140, column: 5, scope: !213)
!318 = !{!"151"}
!319 = !{!"152"}
!320 = !{!"153"}
!321 = !DILocation(line: 141, column: 5, scope: !213)
!322 = !{!"154"}
!323 = !{!"155"}
!324 = !{!"156"}
!325 = !DILocation(line: 139, column: 9, scope: !213)
!326 = !{!"157"}
!327 = !{!"158"}
!328 = !DILocation(line: 143, column: 9, scope: !213)
!329 = !{!"159"}
!330 = !{!"160"}
!331 = !{!"161"}
!332 = !{!"162"}
!333 = !{!"163"}
!334 = !DILocation(line: 144, column: 9, scope: !213)
!335 = !{!"164"}
!336 = !{!"165"}
!337 = !DILocation(line: 146, column: 5, scope: !213)
!338 = !{!"166"}
!339 = !{!"167"}
!340 = !{!"168"}
!341 = !DILocation(line: 147, column: 5, scope: !213)
!342 = !{!"169"}
!343 = !{!"170"}
!344 = !{!"171"}
!345 = !DILocation(line: 145, column: 9, scope: !213)
!346 = !{!"172"}
!347 = !{!"173"}
!348 = !DILocation(line: 149, column: 9, scope: !213)
!349 = !{!"174"}
!350 = !{!"175"}
!351 = !{!"176"}
!352 = !{!"177"}
!353 = !{!"178"}
!354 = !DILocation(line: 150, column: 9, scope: !213)
!355 = !{!"179"}
!356 = !{!"180"}
!357 = !DILocation(line: 152, column: 5, scope: !213)
!358 = !{!"181"}
!359 = !{!"182"}
!360 = !{!"183"}
!361 = !DILocation(line: 153, column: 5, scope: !213)
!362 = !{!"184"}
!363 = !{!"185"}
!364 = !{!"186"}
!365 = !DILocation(line: 151, column: 9, scope: !213)
!366 = !{!"187"}
!367 = !{!"188"}
!368 = !DILocation(line: 155, column: 9, scope: !213)
!369 = !{!"189"}
!370 = !{!"190"}
!371 = !{!"191"}
!372 = !{!"192"}
!373 = !{!"193"}
!374 = !DILocation(line: 156, column: 9, scope: !213)
!375 = !{!"194"}
!376 = !{!"195"}
!377 = !DILocation(line: 158, column: 5, scope: !213)
!378 = !{!"196"}
!379 = !{!"197"}
!380 = !{!"198"}
!381 = !DILocation(line: 159, column: 5, scope: !213)
!382 = !{!"199"}
!383 = !{!"200"}
!384 = !{!"201"}
!385 = !DILocation(line: 157, column: 9, scope: !213)
!386 = !{!"202"}
!387 = !{!"203"}
!388 = !DILocation(line: 165, column: 9, scope: !213)
!389 = !{!"204"}
!390 = !{!"205"}
!391 = !{!"206"}
!392 = !{!"207"}
!393 = !DILocation(line: 166, column: 9, scope: !213)
!394 = !{!"208"}
!395 = !{!"209"}
!396 = !{!"210"}
!397 = !{!"211"}
!398 = !DILocation(line: 167, column: 9, scope: !213)
!399 = !{!"212"}
!400 = !{!"213"}
!401 = !{!"214"}
!402 = !{!"215"}
!403 = !DILocation(line: 168, column: 3, scope: !213)
!404 = !{!"216"}
!405 = !DILocation(line: 99, column: 25, scope: !208)
!406 = !{!"217"}
!407 = !{!"218"}
!408 = !DILocation(line: 99, column: 3, scope: !208)
!409 = distinct !{!409, !210, !410, !411}
!410 = !DILocation(line: 168, column: 3, scope: !194)
!411 = !{!"llvm.loop.mustprogress"}
!412 = !{!"219"}
!413 = !DILocation(line: 173, column: 8, scope: !182)
!414 = !{!"220"}
!415 = !{!"221"}
!416 = !{!"222"}
!417 = !{!"223"}
!418 = !{!"224"}
!419 = !DILocation(line: 174, column: 8, scope: !182)
!420 = !{!"225"}
!421 = !{!"226"}
!422 = !{!"227"}
!423 = !{!"228"}
!424 = !{!"229"}
!425 = !DILocation(line: 175, column: 8, scope: !182)
!426 = !{!"230"}
!427 = !{!"231"}
!428 = !{!"232"}
!429 = !{!"233"}
!430 = !{!"234"}
!431 = !DILocation(line: 176, column: 8, scope: !182)
!432 = !{!"235"}
!433 = !{!"236"}
!434 = !{!"237"}
!435 = !{!"238"}
!436 = !{!"239"}
!437 = !DILocation(line: 181, column: 8, scope: !182)
!438 = !{!"240"}
!439 = !{!"241"}
!440 = !{!"242"}
!441 = !{!"243"}
!442 = !{!"244"}
!443 = !DILocation(line: 186, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !182, file: !3, line: 186, column: 7)
!445 = !{!"245"}
!446 = !DILocation(line: 186, column: 7, scope: !182)
!447 = !{!"246"}
!448 = !DILocalVariable(name: "tmp", scope: !449, file: !3, line: 187, type: !450)
!449 = distinct !DILexicalBlock(scope: !444, file: !3, line: 186, column: 17)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 64)
!453 = !DILocation(line: 187, column: 18, scope: !449)
!454 = !{!"247"}
!455 = !DILocation(line: 190, column: 30, scope: !449)
!456 = !{!"248"}
!457 = !DILocation(line: 190, column: 34, scope: !449)
!458 = !{!"249"}
!459 = !DILocation(line: 190, column: 21, scope: !449)
!460 = !{!"250"}
!461 = !DILocation(line: 190, column: 4, scope: !449)
!462 = !{!"251"}
!463 = !{!"252"}
!464 = !{!"253"}
!465 = !DILocation(line: 191, column: 30, scope: !449)
!466 = !{!"254"}
!467 = !DILocation(line: 191, column: 34, scope: !449)
!468 = !{!"255"}
!469 = !DILocation(line: 191, column: 21, scope: !449)
!470 = !{!"256"}
!471 = !DILocation(line: 191, column: 4, scope: !449)
!472 = !{!"257"}
!473 = !{!"258"}
!474 = !{!"259"}
!475 = !DILocation(line: 192, column: 30, scope: !449)
!476 = !{!"260"}
!477 = !DILocation(line: 192, column: 34, scope: !449)
!478 = !{!"261"}
!479 = !DILocation(line: 192, column: 21, scope: !449)
!480 = !{!"262"}
!481 = !DILocation(line: 192, column: 4, scope: !449)
!482 = !{!"263"}
!483 = !{!"264"}
!484 = !{!"265"}
!485 = !DILocation(line: 193, column: 30, scope: !449)
!486 = !{!"266"}
!487 = !DILocation(line: 193, column: 34, scope: !449)
!488 = !{!"267"}
!489 = !DILocation(line: 193, column: 21, scope: !449)
!490 = !{!"268"}
!491 = !DILocation(line: 193, column: 4, scope: !449)
!492 = !{!"269"}
!493 = !{!"270"}
!494 = !{!"271"}
!495 = !DILocalVariable(name: "u", scope: !449, file: !3, line: 188, type: !14)
!496 = !DILocation(line: 0, scope: !449)
!497 = !{!"272"}
!498 = !DILocation(line: 194, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !449, file: !3, line: 194, column: 4)
!500 = !{!"273"}
!501 = !DILocation(line: 0, scope: !499)
!502 = !{!"274"}
!503 = !{!"275"}
!504 = !DILocation(line: 194, column: 18, scope: !505)
!505 = distinct !DILexicalBlock(scope: !499, file: !3, line: 194, column: 4)
!506 = !{!"276"}
!507 = !DILocation(line: 194, column: 4, scope: !499)
!508 = !{!"277"}
!509 = !DILocation(line: 195, column: 15, scope: !510)
!510 = distinct !DILexicalBlock(scope: !505, file: !3, line: 194, column: 31)
!511 = !{!"278"}
!512 = !{!"279"}
!513 = !{!"280"}
!514 = !DILocation(line: 195, column: 5, scope: !510)
!515 = !{!"281"}
!516 = !DILocation(line: 195, column: 12, scope: !510)
!517 = !{!"282"}
!518 = !{!"283"}
!519 = !{!"284"}
!520 = !{!"285"}
!521 = !{!"286"}
!522 = !DILocation(line: 196, column: 4, scope: !510)
!523 = !{!"287"}
!524 = !DILocation(line: 194, column: 27, scope: !505)
!525 = !{!"288"}
!526 = !{!"289"}
!527 = !DILocation(line: 194, column: 4, scope: !505)
!528 = distinct !{!528, !507, !529, !411}
!529 = !DILocation(line: 196, column: 4, scope: !499)
!530 = !{!"290"}
!531 = !DILocation(line: 197, column: 4, scope: !449)
!532 = !{!"291"}
!533 = !DILocation(line: 201, column: 44, scope: !534)
!534 = distinct !DILexicalBlock(scope: !444, file: !3, line: 198, column: 10)
!535 = !{!"292"}
!536 = !DILocation(line: 201, column: 25, scope: !534)
!537 = !{!"293"}
!538 = !DILocation(line: 201, column: 9, scope: !534)
!539 = !{!"294"}
!540 = !{!"295"}
!541 = !{!"296"}
!542 = !DILocalVariable(name: "b0", scope: !534, file: !3, line: 199, type: !23)
!543 = !DILocation(line: 0, scope: !534)
!544 = !{!"297"}
!545 = !DILocation(line: 202, column: 44, scope: !534)
!546 = !{!"298"}
!547 = !DILocation(line: 202, column: 25, scope: !534)
!548 = !{!"299"}
!549 = !DILocation(line: 202, column: 9, scope: !534)
!550 = !{!"300"}
!551 = !{!"301"}
!552 = !{!"302"}
!553 = !DILocalVariable(name: "b1", scope: !534, file: !3, line: 199, type: !23)
!554 = !{!"303"}
!555 = !DILocation(line: 203, column: 44, scope: !534)
!556 = !{!"304"}
!557 = !DILocation(line: 203, column: 25, scope: !534)
!558 = !{!"305"}
!559 = !DILocation(line: 203, column: 9, scope: !534)
!560 = !{!"306"}
!561 = !{!"307"}
!562 = !{!"308"}
!563 = !DILocalVariable(name: "b2", scope: !534, file: !3, line: 199, type: !23)
!564 = !{!"309"}
!565 = !DILocation(line: 204, column: 44, scope: !534)
!566 = !{!"310"}
!567 = !DILocation(line: 204, column: 25, scope: !534)
!568 = !{!"311"}
!569 = !DILocation(line: 204, column: 9, scope: !534)
!570 = !{!"312"}
!571 = !{!"313"}
!572 = !{!"314"}
!573 = !DILocalVariable(name: "b3", scope: !534, file: !3, line: 199, type: !23)
!574 = !{!"315"}
!575 = !DILocation(line: 205, column: 9, scope: !534)
!576 = !{!"316"}
!577 = !{!"317"}
!578 = !DILocation(line: 206, column: 9, scope: !534)
!579 = !{!"318"}
!580 = !{!"319"}
!581 = !DILocation(line: 207, column: 9, scope: !534)
!582 = !{!"320"}
!583 = !{!"321"}
!584 = !DILocation(line: 208, column: 9, scope: !534)
!585 = !{!"322"}
!586 = !{!"323"}
!587 = !DILocation(line: 209, column: 34, scope: !534)
!588 = !{!"324"}
!589 = !DILocation(line: 209, column: 21, scope: !534)
!590 = !{!"325"}
!591 = !DILocation(line: 209, column: 4, scope: !534)
!592 = !{!"326"}
!593 = !{!"327"}
!594 = !{!"328"}
!595 = !DILocation(line: 210, column: 34, scope: !534)
!596 = !{!"329"}
!597 = !DILocation(line: 210, column: 21, scope: !534)
!598 = !{!"330"}
!599 = !DILocation(line: 210, column: 4, scope: !534)
!600 = !{!"331"}
!601 = !{!"332"}
!602 = !{!"333"}
!603 = !DILocation(line: 211, column: 34, scope: !534)
!604 = !{!"334"}
!605 = !DILocation(line: 211, column: 21, scope: !534)
!606 = !{!"335"}
!607 = !DILocation(line: 211, column: 4, scope: !534)
!608 = !{!"336"}
!609 = !{!"337"}
!610 = !{!"338"}
!611 = !DILocation(line: 212, column: 34, scope: !534)
!612 = !{!"339"}
!613 = !DILocation(line: 212, column: 21, scope: !534)
!614 = !{!"340"}
!615 = !DILocation(line: 212, column: 4, scope: !534)
!616 = !{!"341"}
!617 = !{!"342"}
!618 = !{!"343"}
!619 = !DILocation(line: 213, column: 8, scope: !534)
!620 = !{!"344"}
!621 = !{!"345"}
!622 = !DILocation(line: 214, column: 8, scope: !534)
!623 = !{!"346"}
!624 = !{!"347"}
!625 = !{!"348"}
!626 = distinct !{!626, !170, !627, !411}
!627 = !DILocation(line: 216, column: 2, scope: !2)
!628 = !{!"349"}
!629 = !{!"350"}
!630 = !{!"351"}
!631 = !DILocation(line: 222, column: 19, scope: !2)
!632 = !{!"352"}
!633 = !{!"353"}
!634 = !{!"354"}
!635 = !DILocation(line: 223, column: 16, scope: !2)
!636 = !{!"355"}
!637 = !{!"356"}
!638 = !{!"357"}
!639 = !DILocation(line: 223, column: 41, scope: !2)
!640 = !{!"358"}
!641 = !DILocation(line: 223, column: 3, scope: !2)
!642 = !{!"359"}
!643 = !DILocation(line: 222, column: 2, scope: !2)
!644 = !{!"360"}
!645 = distinct !DISubprogram(name: "br_poly1305_ctmul_run", scope: !61, file: !61, line: 148, type: !646, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !18)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !11, !11, !13, !14, !11, !14, !13, !92, !32}
!648 = !{!"361"}
!649 = !{!"362"}
!650 = !{!"363"}
!651 = !{!"364"}
!652 = !DILocalVariable(name: "key", arg: 1, scope: !645, file: !61, line: 148, type: !11)
!653 = !DILocation(line: 0, scope: !645)
!654 = !{!"365"}
!655 = !DILocalVariable(name: "iv", arg: 2, scope: !645, file: !61, line: 148, type: !11)
!656 = !{!"366"}
!657 = !DILocalVariable(name: "data", arg: 3, scope: !645, file: !61, line: 149, type: !13)
!658 = !{!"367"}
!659 = !DILocalVariable(name: "len", arg: 4, scope: !645, file: !61, line: 149, type: !14)
!660 = !{!"368"}
!661 = !DILocalVariable(name: "aad", arg: 5, scope: !645, file: !61, line: 149, type: !11)
!662 = !{!"369"}
!663 = !DILocalVariable(name: "aad_len", arg: 6, scope: !645, file: !61, line: 149, type: !14)
!664 = !{!"370"}
!665 = !DILocalVariable(name: "tag", arg: 7, scope: !645, file: !61, line: 150, type: !13)
!666 = !{!"371"}
!667 = !DILocalVariable(name: "ichacha", arg: 8, scope: !645, file: !61, line: 150, type: !92)
!668 = !{!"372"}
!669 = !DILocalVariable(name: "encrypt", arg: 9, scope: !645, file: !61, line: 150, type: !32)
!670 = !{!"373"}
!671 = !DILocalVariable(name: "pkey", scope: !645, file: !61, line: 152, type: !672)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 32)
!675 = !DILocation(line: 152, column: 16, scope: !645)
!676 = !{!"374"}
!677 = !DILocalVariable(name: "foot", scope: !645, file: !61, line: 152, type: !678)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 16)
!681 = !DILocation(line: 152, column: 26, scope: !645)
!682 = !{!"375"}
!683 = !DILocalVariable(name: "r", scope: !645, file: !61, line: 153, type: !684)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 5)
!687 = !DILocation(line: 153, column: 11, scope: !645)
!688 = !{!"376"}
!689 = !DILocalVariable(name: "acc", scope: !645, file: !61, line: 153, type: !684)
!690 = !DILocation(line: 153, column: 17, scope: !645)
!691 = !{!"377"}
!692 = !DILocation(line: 161, column: 2, scope: !645)
!693 = !{!"378"}
!694 = !{!"379"}
!695 = !DILocation(line: 162, column: 22, scope: !645)
!696 = !{!"380"}
!697 = !DILocation(line: 162, column: 2, scope: !645)
!698 = !{!"381"}
!699 = !DILocation(line: 168, column: 6, scope: !700)
!700 = distinct !DILexicalBlock(scope: !645, file: !61, line: 168, column: 6)
!701 = !{!"382"}
!702 = !DILocation(line: 168, column: 6, scope: !645)
!703 = !{!"383"}
!704 = !DILocation(line: 169, column: 3, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !61, line: 168, column: 15)
!706 = !{!"384"}
!707 = !DILocation(line: 170, column: 2, scope: !705)
!708 = !{!"385"}
!709 = !DILocation(line: 183, column: 20, scope: !645)
!710 = !{!"386"}
!711 = !DILocation(line: 183, column: 9, scope: !645)
!712 = !{!"387"}
!713 = !DILocation(line: 183, column: 26, scope: !645)
!714 = !{!"388"}
!715 = !DILocation(line: 183, column: 2, scope: !645)
!716 = !{!"389"}
!717 = !DILocation(line: 183, column: 7, scope: !645)
!718 = !{!"390"}
!719 = !DILocation(line: 184, column: 21, scope: !645)
!720 = !{!"391"}
!721 = !DILocation(line: 184, column: 26, scope: !645)
!722 = !{!"392"}
!723 = !DILocation(line: 184, column: 10, scope: !645)
!724 = !{!"393"}
!725 = !DILocation(line: 184, column: 32, scope: !645)
!726 = !{!"394"}
!727 = !DILocation(line: 184, column: 38, scope: !645)
!728 = !{!"395"}
!729 = !DILocation(line: 184, column: 2, scope: !645)
!730 = !{!"396"}
!731 = !DILocation(line: 184, column: 7, scope: !645)
!732 = !{!"397"}
!733 = !DILocation(line: 185, column: 21, scope: !645)
!734 = !{!"398"}
!735 = !DILocation(line: 185, column: 26, scope: !645)
!736 = !{!"399"}
!737 = !DILocation(line: 185, column: 10, scope: !645)
!738 = !{!"400"}
!739 = !DILocation(line: 185, column: 32, scope: !645)
!740 = !{!"401"}
!741 = !DILocation(line: 185, column: 38, scope: !645)
!742 = !{!"402"}
!743 = !DILocation(line: 185, column: 2, scope: !645)
!744 = !{!"403"}
!745 = !DILocation(line: 185, column: 7, scope: !645)
!746 = !{!"404"}
!747 = !DILocation(line: 186, column: 21, scope: !645)
!748 = !{!"405"}
!749 = !DILocation(line: 186, column: 26, scope: !645)
!750 = !{!"406"}
!751 = !DILocation(line: 186, column: 10, scope: !645)
!752 = !{!"407"}
!753 = !DILocation(line: 186, column: 32, scope: !645)
!754 = !{!"408"}
!755 = !DILocation(line: 186, column: 38, scope: !645)
!756 = !{!"409"}
!757 = !DILocation(line: 186, column: 2, scope: !645)
!758 = !{!"410"}
!759 = !DILocation(line: 186, column: 7, scope: !645)
!760 = !{!"411"}
!761 = !DILocation(line: 187, column: 21, scope: !645)
!762 = !{!"412"}
!763 = !DILocation(line: 187, column: 26, scope: !645)
!764 = !{!"413"}
!765 = !DILocation(line: 187, column: 10, scope: !645)
!766 = !{!"414"}
!767 = !DILocation(line: 187, column: 32, scope: !645)
!768 = !{!"415"}
!769 = !DILocation(line: 187, column: 38, scope: !645)
!770 = !{!"416"}
!771 = !DILocation(line: 187, column: 2, scope: !645)
!772 = !{!"417"}
!773 = !DILocation(line: 187, column: 7, scope: !645)
!774 = !{!"418"}
!775 = !DILocation(line: 192, column: 2, scope: !645)
!776 = !{!"419"}
!777 = !{!"420"}
!778 = !{!"421"}
!779 = !DILocation(line: 198, column: 13, scope: !645)
!780 = !{!"422"}
!781 = !DILocation(line: 198, column: 2, scope: !645)
!782 = !{!"423"}
!783 = !DILocation(line: 199, column: 13, scope: !645)
!784 = !{!"424"}
!785 = !DILocation(line: 199, column: 18, scope: !645)
!786 = !{!"425"}
!787 = !DILocation(line: 199, column: 2, scope: !645)
!788 = !{!"426"}
!789 = !DILocation(line: 200, column: 17, scope: !645)
!790 = !{!"427"}
!791 = !DILocation(line: 200, column: 22, scope: !645)
!792 = !{!"428"}
!793 = !DILocation(line: 200, column: 2, scope: !645)
!794 = !{!"429"}
!795 = !DILocation(line: 201, column: 17, scope: !645)
!796 = !{!"430"}
!797 = !DILocation(line: 201, column: 22, scope: !645)
!798 = !{!"431"}
!799 = !DILocation(line: 201, column: 2, scope: !645)
!800 = !{!"432"}
!801 = !DILocation(line: 202, column: 17, scope: !645)
!802 = !{!"433"}
!803 = !DILocation(line: 202, column: 22, scope: !645)
!804 = !{!"434"}
!805 = !DILocation(line: 202, column: 25, scope: !645)
!806 = !{!"435"}
!807 = !DILocation(line: 202, column: 2, scope: !645)
!808 = !{!"436"}
!809 = !DILocalVariable(name: "cc", scope: !645, file: !61, line: 153, type: !6)
!810 = !{!"437"}
!811 = !DILocalVariable(name: "i", scope: !645, file: !61, line: 155, type: !32)
!812 = !{!"438"}
!813 = !DILocation(line: 212, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !645, file: !61, line: 212, column: 2)
!815 = !{!"439"}
!816 = !{!"440"}
!817 = !DILocation(line: 0, scope: !814)
!818 = !{!"441"}
!819 = !{!"442"}
!820 = !{!"443"}
!821 = !DILocation(line: 212, column: 16, scope: !822)
!822 = distinct !DILexicalBlock(scope: !814, file: !61, line: 212, column: 2)
!823 = !{!"444"}
!824 = !DILocation(line: 212, column: 2, scope: !814)
!825 = !{!"445"}
!826 = !DILocation(line: 215, column: 10, scope: !827)
!827 = distinct !DILexicalBlock(scope: !822, file: !61, line: 212, column: 28)
!828 = !{!"446"}
!829 = !DILocation(line: 215, column: 7, scope: !827)
!830 = !{!"447"}
!831 = !DILocation(line: 215, column: 20, scope: !827)
!832 = !{!"448"}
!833 = !{!"449"}
!834 = !{!"450"}
!835 = !{!"451"}
!836 = !DILocalVariable(name: "j", scope: !827, file: !61, line: 213, type: !32)
!837 = !DILocation(line: 0, scope: !827)
!838 = !{!"452"}
!839 = !DILocation(line: 216, column: 3, scope: !827)
!840 = !{!"453"}
!841 = !{!"454"}
!842 = !DILocation(line: 216, column: 10, scope: !827)
!843 = !{!"455"}
!844 = !{!"456"}
!845 = !{!"457"}
!846 = !DILocation(line: 217, column: 8, scope: !827)
!847 = !{!"458"}
!848 = !{!"459"}
!849 = !{!"460"}
!850 = !DILocation(line: 217, column: 15, scope: !827)
!851 = !{!"461"}
!852 = !{!"462"}
!853 = !DILocation(line: 218, column: 3, scope: !827)
!854 = !{!"463"}
!855 = !{!"464"}
!856 = !DILocation(line: 218, column: 10, scope: !827)
!857 = !{!"465"}
!858 = !{!"466"}
!859 = !{!"467"}
!860 = !DILocation(line: 219, column: 2, scope: !827)
!861 = !{!"468"}
!862 = !DILocation(line: 212, column: 24, scope: !822)
!863 = !{!"469"}
!864 = !{!"470"}
!865 = !DILocation(line: 212, column: 2, scope: !822)
!866 = distinct !{!866, !824, !867, !411}
!867 = !DILocation(line: 219, column: 2, scope: !814)
!868 = !{!"471"}
!869 = !DILocation(line: 226, column: 11, scope: !645)
!870 = !{!"472"}
!871 = !{!"473"}
!872 = !DILocation(line: 226, column: 8, scope: !645)
!873 = !{!"474"}
!874 = !DILocalVariable(name: "ctl", scope: !645, file: !61, line: 153, type: !6)
!875 = !{!"475"}
!876 = !{!"476"}
!877 = !DILocation(line: 227, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !645, file: !61, line: 227, column: 2)
!879 = !{!"477"}
!880 = !{!"478"}
!881 = !DILocation(line: 0, scope: !878)
!882 = !{!"479"}
!883 = !{!"480"}
!884 = !{!"481"}
!885 = !DILocation(line: 227, column: 16, scope: !886)
!886 = distinct !DILexicalBlock(scope: !878, file: !61, line: 227, column: 2)
!887 = !{!"482"}
!888 = !DILocation(line: 227, column: 2, scope: !878)
!889 = !{!"483"}
!890 = !DILocation(line: 228, column: 13, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !61, line: 227, column: 27)
!892 = !{!"484"}
!893 = !{!"485"}
!894 = !{!"486"}
!895 = !DILocation(line: 228, column: 10, scope: !891)
!896 = !{!"487"}
!897 = !DILocation(line: 228, column: 7, scope: !891)
!898 = !{!"488"}
!899 = !{!"489"}
!900 = !DILocation(line: 229, column: 2, scope: !891)
!901 = !{!"490"}
!902 = !DILocation(line: 227, column: 23, scope: !886)
!903 = !{!"491"}
!904 = !{!"492"}
!905 = !DILocation(line: 227, column: 2, scope: !886)
!906 = distinct !{!906, !888, !907, !411}
!907 = !DILocation(line: 229, column: 2, scope: !878)
!908 = !{!"493"}
!909 = !{!"494"}
!910 = !{!"495"}
!911 = !DILocation(line: 231, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !645, file: !61, line: 231, column: 2)
!913 = !{!"496"}
!914 = !{!"497"}
!915 = !DILocation(line: 0, scope: !912)
!916 = !{!"498"}
!917 = !{!"499"}
!918 = !{!"500"}
!919 = !DILocation(line: 231, column: 16, scope: !920)
!920 = distinct !DILexicalBlock(scope: !912, file: !61, line: 231, column: 2)
!921 = !{!"501"}
!922 = !DILocation(line: 231, column: 2, scope: !912)
!923 = !{!"502"}
!924 = !DILocation(line: 234, column: 8, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !61, line: 231, column: 27)
!926 = !{!"503"}
!927 = !{!"504"}
!928 = !{!"505"}
!929 = !DILocation(line: 234, column: 15, scope: !925)
!930 = !{!"506"}
!931 = !DILocalVariable(name: "t", scope: !925, file: !61, line: 232, type: !6)
!932 = !DILocation(line: 0, scope: !925)
!933 = !{!"507"}
!934 = !DILocation(line: 235, column: 10, scope: !925)
!935 = !{!"508"}
!936 = !{!"509"}
!937 = !DILocation(line: 236, column: 5, scope: !925)
!938 = !{!"510"}
!939 = !{!"511"}
!940 = !DILocation(line: 237, column: 24, scope: !925)
!941 = !{!"512"}
!942 = !{!"513"}
!943 = !{!"514"}
!944 = !DILocation(line: 237, column: 12, scope: !925)
!945 = !{!"515"}
!946 = !DILocation(line: 237, column: 3, scope: !925)
!947 = !{!"516"}
!948 = !{!"517"}
!949 = !DILocation(line: 237, column: 10, scope: !925)
!950 = !{!"518"}
!951 = !DILocation(line: 238, column: 2, scope: !925)
!952 = !{!"519"}
!953 = !DILocation(line: 231, column: 23, scope: !920)
!954 = !{!"520"}
!955 = !{!"521"}
!956 = !DILocation(line: 231, column: 2, scope: !920)
!957 = distinct !{!957, !922, !958, !411}
!958 = !DILocation(line: 238, column: 2, scope: !912)
!959 = !{!"522"}
!960 = !DILocation(line: 245, column: 16, scope: !645)
!961 = !{!"523"}
!962 = !{!"524"}
!963 = !DILocation(line: 245, column: 6, scope: !645)
!964 = !{!"525"}
!965 = !DILocation(line: 245, column: 36, scope: !645)
!966 = !{!"526"}
!967 = !{!"527"}
!968 = !DILocation(line: 245, column: 26, scope: !645)
!969 = !{!"528"}
!970 = !DILocation(line: 245, column: 43, scope: !645)
!971 = !{!"529"}
!972 = !DILocation(line: 245, column: 23, scope: !645)
!973 = !{!"530"}
!974 = !DILocation(line: 245, column: 63, scope: !645)
!975 = !{!"531"}
!976 = !DILocation(line: 245, column: 68, scope: !645)
!977 = !{!"532"}
!978 = !DILocation(line: 245, column: 52, scope: !645)
!979 = !{!"533"}
!980 = !{!"534"}
!981 = !DILocation(line: 245, column: 50, scope: !645)
!982 = !{!"535"}
!983 = !DILocalVariable(name: "w", scope: !645, file: !61, line: 154, type: !63)
!984 = !{!"536"}
!985 = !DILocation(line: 246, column: 35, scope: !645)
!986 = !{!"537"}
!987 = !DILocation(line: 246, column: 2, scope: !645)
!988 = !{!"538"}
!989 = !DILocation(line: 247, column: 9, scope: !645)
!990 = !{!"539"}
!991 = !DILocation(line: 247, column: 29, scope: !645)
!992 = !{!"540"}
!993 = !{!"541"}
!994 = !DILocation(line: 247, column: 19, scope: !645)
!995 = !{!"542"}
!996 = !DILocation(line: 247, column: 36, scope: !645)
!997 = !{!"543"}
!998 = !DILocation(line: 247, column: 16, scope: !645)
!999 = !{!"544"}
!1000 = !DILocation(line: 247, column: 56, scope: !645)
!1001 = !{!"545"}
!1002 = !DILocation(line: 247, column: 61, scope: !645)
!1003 = !{!"546"}
!1004 = !DILocation(line: 247, column: 45, scope: !645)
!1005 = !{!"547"}
!1006 = !{!"548"}
!1007 = !DILocation(line: 247, column: 43, scope: !645)
!1008 = !{!"549"}
!1009 = !{!"550"}
!1010 = !DILocation(line: 248, column: 34, scope: !645)
!1011 = !{!"551"}
!1012 = !DILocation(line: 248, column: 39, scope: !645)
!1013 = !{!"552"}
!1014 = !DILocation(line: 248, column: 2, scope: !645)
!1015 = !{!"553"}
!1016 = !DILocation(line: 249, column: 9, scope: !645)
!1017 = !{!"554"}
!1018 = !DILocation(line: 249, column: 29, scope: !645)
!1019 = !{!"555"}
!1020 = !{!"556"}
!1021 = !DILocation(line: 249, column: 19, scope: !645)
!1022 = !{!"557"}
!1023 = !DILocation(line: 249, column: 36, scope: !645)
!1024 = !{!"558"}
!1025 = !DILocation(line: 249, column: 16, scope: !645)
!1026 = !{!"559"}
!1027 = !DILocation(line: 249, column: 56, scope: !645)
!1028 = !{!"560"}
!1029 = !DILocation(line: 249, column: 61, scope: !645)
!1030 = !{!"561"}
!1031 = !DILocation(line: 249, column: 45, scope: !645)
!1032 = !{!"562"}
!1033 = !{!"563"}
!1034 = !DILocation(line: 249, column: 43, scope: !645)
!1035 = !{!"564"}
!1036 = !{!"565"}
!1037 = !DILocation(line: 250, column: 34, scope: !645)
!1038 = !{!"566"}
!1039 = !DILocation(line: 250, column: 39, scope: !645)
!1040 = !{!"567"}
!1041 = !DILocation(line: 250, column: 2, scope: !645)
!1042 = !{!"568"}
!1043 = !DILocation(line: 251, column: 20, scope: !645)
!1044 = !{!"569"}
!1045 = !DILocation(line: 251, column: 7, scope: !645)
!1046 = !{!"570"}
!1047 = !DILocation(line: 251, column: 30, scope: !645)
!1048 = !{!"571"}
!1049 = !{!"572"}
!1050 = !DILocation(line: 251, column: 37, scope: !645)
!1051 = !{!"573"}
!1052 = !DILocation(line: 251, column: 27, scope: !645)
!1053 = !{!"574"}
!1054 = !DILocation(line: 251, column: 56, scope: !645)
!1055 = !{!"575"}
!1056 = !DILocation(line: 251, column: 61, scope: !645)
!1057 = !{!"576"}
!1058 = !DILocation(line: 251, column: 45, scope: !645)
!1059 = !{!"577"}
!1060 = !DILocation(line: 251, column: 43, scope: !645)
!1061 = !{!"578"}
!1062 = !DILocalVariable(name: "hi", scope: !645, file: !61, line: 153, type: !6)
!1063 = !{!"579"}
!1064 = !DILocation(line: 252, column: 34, scope: !645)
!1065 = !{!"580"}
!1066 = !DILocation(line: 252, column: 2, scope: !645)
!1067 = !{!"581"}
!1068 = !DILocation(line: 257, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !645, file: !61, line: 257, column: 6)
!1070 = !{!"582"}
!1071 = !DILocation(line: 257, column: 6, scope: !645)
!1072 = !{!"583"}
!1073 = !DILocation(line: 258, column: 3, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !61, line: 257, column: 16)
!1075 = !{!"584"}
!1076 = !DILocation(line: 259, column: 2, scope: !1074)
!1077 = !{!"585"}
!1078 = !DILocation(line: 260, column: 1, scope: !645)
!1079 = !{!"586"}
!1080 = distinct !DISubprogram(name: "br_dec32le", scope: !69, file: !69, line: 574, type: !1081, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !18)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!6, !11}
!1083 = !DILocalVariable(name: "src", arg: 1, scope: !1080, file: !69, line: 574, type: !11)
!1084 = !DILocation(line: 0, scope: !1080)
!1085 = !{!"587"}
!1086 = !DILocation(line: 577, column: 10, scope: !1080)
!1087 = !{!"588"}
!1088 = !DILocation(line: 577, column: 38, scope: !1080)
!1089 = !{!"589"}
!1090 = !{!"590"}
!1091 = !DILocation(line: 577, column: 2, scope: !1080)
!1092 = !{!"591"}
!1093 = distinct !DISubprogram(name: "br_enc64le", scope: !69, file: !69, line: 606, type: !1094, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !18)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !13, !63}
!1096 = !DILocalVariable(name: "dst", arg: 1, scope: !1093, file: !69, line: 606, type: !13)
!1097 = !DILocation(line: 0, scope: !1093)
!1098 = !{!"592"}
!1099 = !DILocalVariable(name: "x", arg: 2, scope: !1093, file: !69, line: 606, type: !63)
!1100 = !{!"593"}
!1101 = !DILocation(line: 609, column: 3, scope: !1093)
!1102 = !{!"594"}
!1103 = !DILocation(line: 609, column: 25, scope: !1093)
!1104 = !{!"595"}
!1105 = !DILocation(line: 609, column: 27, scope: !1093)
!1106 = !{!"596"}
!1107 = !DILocation(line: 617, column: 1, scope: !1093)
!1108 = !{!"597"}
!1109 = distinct !DISubprogram(name: "poly1305_inner", scope: !61, file: !61, line: 36, type: !1110, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !18)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1112, !1113, !11, !14}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!1114 = !{!"598"}
!1115 = !DILocalVariable(name: "acc", arg: 1, scope: !1109, file: !61, line: 36, type: !1112)
!1116 = !DILocation(line: 0, scope: !1109)
!1117 = !{!"599"}
!1118 = !DILocalVariable(name: "r", arg: 2, scope: !1109, file: !61, line: 36, type: !1113)
!1119 = !{!"600"}
!1120 = !DILocalVariable(name: "data", arg: 3, scope: !1109, file: !61, line: 36, type: !11)
!1121 = !{!"601"}
!1122 = !DILocalVariable(name: "len", arg: 4, scope: !1109, file: !61, line: 36, type: !14)
!1123 = !{!"602"}
!1124 = !DILocation(line: 54, column: 7, scope: !1109)
!1125 = !{!"603"}
!1126 = !{!"604"}
!1127 = !DILocalVariable(name: "r0", scope: !1109, file: !61, line: 51, type: !6)
!1128 = !{!"605"}
!1129 = !DILocation(line: 55, column: 7, scope: !1109)
!1130 = !{!"606"}
!1131 = !{!"607"}
!1132 = !DILocalVariable(name: "r1", scope: !1109, file: !61, line: 51, type: !6)
!1133 = !{!"608"}
!1134 = !DILocation(line: 56, column: 7, scope: !1109)
!1135 = !{!"609"}
!1136 = !{!"610"}
!1137 = !DILocalVariable(name: "r2", scope: !1109, file: !61, line: 51, type: !6)
!1138 = !{!"611"}
!1139 = !DILocation(line: 57, column: 7, scope: !1109)
!1140 = !{!"612"}
!1141 = !{!"613"}
!1142 = !DILocalVariable(name: "r3", scope: !1109, file: !61, line: 51, type: !6)
!1143 = !{!"614"}
!1144 = !DILocation(line: 58, column: 7, scope: !1109)
!1145 = !{!"615"}
!1146 = !{!"616"}
!1147 = !DILocalVariable(name: "r4", scope: !1109, file: !61, line: 51, type: !6)
!1148 = !{!"617"}
!1149 = !DILocation(line: 60, column: 10, scope: !1109)
!1150 = !{!"618"}
!1151 = !DILocalVariable(name: "u1", scope: !1109, file: !61, line: 52, type: !6)
!1152 = !{!"619"}
!1153 = !DILocation(line: 61, column: 10, scope: !1109)
!1154 = !{!"620"}
!1155 = !DILocalVariable(name: "u2", scope: !1109, file: !61, line: 52, type: !6)
!1156 = !{!"621"}
!1157 = !DILocation(line: 62, column: 10, scope: !1109)
!1158 = !{!"622"}
!1159 = !DILocalVariable(name: "u3", scope: !1109, file: !61, line: 52, type: !6)
!1160 = !{!"623"}
!1161 = !DILocation(line: 63, column: 10, scope: !1109)
!1162 = !{!"624"}
!1163 = !DILocalVariable(name: "u4", scope: !1109, file: !61, line: 52, type: !6)
!1164 = !{!"625"}
!1165 = !DILocation(line: 65, column: 7, scope: !1109)
!1166 = !{!"626"}
!1167 = !{!"627"}
!1168 = !DILocalVariable(name: "a0", scope: !1109, file: !61, line: 50, type: !6)
!1169 = !{!"628"}
!1170 = !DILocation(line: 66, column: 7, scope: !1109)
!1171 = !{!"629"}
!1172 = !{!"630"}
!1173 = !DILocalVariable(name: "a1", scope: !1109, file: !61, line: 50, type: !6)
!1174 = !{!"631"}
!1175 = !DILocation(line: 67, column: 7, scope: !1109)
!1176 = !{!"632"}
!1177 = !{!"633"}
!1178 = !DILocalVariable(name: "a2", scope: !1109, file: !61, line: 50, type: !6)
!1179 = !{!"634"}
!1180 = !DILocation(line: 68, column: 7, scope: !1109)
!1181 = !{!"635"}
!1182 = !{!"636"}
!1183 = !DILocalVariable(name: "a3", scope: !1109, file: !61, line: 50, type: !6)
!1184 = !{!"637"}
!1185 = !DILocation(line: 69, column: 7, scope: !1109)
!1186 = !{!"638"}
!1187 = !{!"639"}
!1188 = !DILocalVariable(name: "a4", scope: !1109, file: !61, line: 50, type: !6)
!1189 = !{!"640"}
!1190 = !DILocalVariable(name: "buf", scope: !1109, file: !61, line: 49, type: !20)
!1191 = !{!"641"}
!1192 = !DILocation(line: 72, column: 2, scope: !1109)
!1193 = !{!"642"}
!1194 = !{!"643"}
!1195 = !{!"644"}
!1196 = !{!"645"}
!1197 = !{!"646"}
!1198 = !{!"647"}
!1199 = !{!"648"}
!1200 = !{!"649"}
!1201 = !{!"650"}
!1202 = !{!"651"}
!1203 = !{!"652"}
!1204 = !{!"653"}
!1205 = !{!"654"}
!1206 = !{!"655"}
!1207 = !{!"656"}
!1208 = !DILocation(line: 72, column: 13, scope: !1109)
!1209 = !{!"657"}
!1210 = !{!"658"}
!1211 = !DILocalVariable(name: "tmp", scope: !1212, file: !61, line: 75, type: !678)
!1212 = distinct !DILexicalBlock(scope: !1109, file: !61, line: 72, column: 18)
!1213 = !DILocation(line: 75, column: 17, scope: !1212)
!1214 = !{!"659"}
!1215 = !DILocation(line: 80, column: 11, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !61, line: 80, column: 7)
!1217 = !{!"660"}
!1218 = !DILocation(line: 80, column: 7, scope: !1212)
!1219 = !{!"661"}
!1220 = !DILocation(line: 81, column: 4, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !61, line: 80, column: 17)
!1222 = !{!"662"}
!1223 = !{!"663"}
!1224 = !DILocation(line: 82, column: 4, scope: !1221)
!1225 = !{!"664"}
!1226 = !{!"665"}
!1227 = !DILocation(line: 83, column: 10, scope: !1221)
!1228 = !{!"666"}
!1229 = !{!"667"}
!1230 = !{!"668"}
!1231 = !DILocation(line: 85, column: 3, scope: !1221)
!1232 = !{!"669"}
!1233 = !{!"670"}
!1234 = !{!"671"}
!1235 = !{!"672"}
!1236 = !{!"673"}
!1237 = !DILocation(line: 91, column: 9, scope: !1212)
!1238 = !{!"674"}
!1239 = !DILocation(line: 91, column: 25, scope: !1212)
!1240 = !{!"675"}
!1241 = !DILocation(line: 91, column: 6, scope: !1212)
!1242 = !{!"676"}
!1243 = !{!"677"}
!1244 = !DILocation(line: 92, column: 25, scope: !1212)
!1245 = !{!"678"}
!1246 = !DILocation(line: 92, column: 10, scope: !1212)
!1247 = !{!"679"}
!1248 = !DILocation(line: 92, column: 31, scope: !1212)
!1249 = !{!"680"}
!1250 = !DILocation(line: 92, column: 37, scope: !1212)
!1251 = !{!"681"}
!1252 = !DILocation(line: 92, column: 6, scope: !1212)
!1253 = !{!"682"}
!1254 = !{!"683"}
!1255 = !DILocation(line: 93, column: 25, scope: !1212)
!1256 = !{!"684"}
!1257 = !DILocation(line: 93, column: 10, scope: !1212)
!1258 = !{!"685"}
!1259 = !DILocation(line: 93, column: 31, scope: !1212)
!1260 = !{!"686"}
!1261 = !DILocation(line: 93, column: 37, scope: !1212)
!1262 = !{!"687"}
!1263 = !DILocation(line: 93, column: 6, scope: !1212)
!1264 = !{!"688"}
!1265 = !{!"689"}
!1266 = !DILocation(line: 94, column: 25, scope: !1212)
!1267 = !{!"690"}
!1268 = !DILocation(line: 94, column: 10, scope: !1212)
!1269 = !{!"691"}
!1270 = !DILocation(line: 94, column: 31, scope: !1212)
!1271 = !{!"692"}
!1272 = !DILocation(line: 94, column: 37, scope: !1212)
!1273 = !{!"693"}
!1274 = !DILocation(line: 94, column: 6, scope: !1212)
!1275 = !{!"694"}
!1276 = !{!"695"}
!1277 = !DILocation(line: 95, column: 25, scope: !1212)
!1278 = !{!"696"}
!1279 = !DILocation(line: 95, column: 10, scope: !1212)
!1280 = !{!"697"}
!1281 = !DILocation(line: 95, column: 31, scope: !1212)
!1282 = !{!"698"}
!1283 = !DILocation(line: 95, column: 37, scope: !1212)
!1284 = !{!"699"}
!1285 = !DILocation(line: 95, column: 6, scope: !1212)
!1286 = !{!"700"}
!1287 = !{!"701"}
!1288 = !DILocation(line: 102, column: 8, scope: !1212)
!1289 = !{!"702"}
!1290 = !{!"703"}
!1291 = !{!"704"}
!1292 = !DILocation(line: 102, column: 20, scope: !1212)
!1293 = !{!"705"}
!1294 = !{!"706"}
!1295 = !{!"707"}
!1296 = !DILocation(line: 102, column: 18, scope: !1212)
!1297 = !{!"708"}
!1298 = !DILocation(line: 102, column: 32, scope: !1212)
!1299 = !{!"709"}
!1300 = !{!"710"}
!1301 = !{!"711"}
!1302 = !DILocation(line: 102, column: 30, scope: !1212)
!1303 = !{!"712"}
!1304 = !DILocation(line: 102, column: 44, scope: !1212)
!1305 = !{!"713"}
!1306 = !{!"714"}
!1307 = !{!"715"}
!1308 = !DILocation(line: 102, column: 42, scope: !1212)
!1309 = !{!"716"}
!1310 = !DILocation(line: 102, column: 56, scope: !1212)
!1311 = !{!"717"}
!1312 = !{!"718"}
!1313 = !{!"719"}
!1314 = !DILocation(line: 102, column: 54, scope: !1212)
!1315 = !{!"720"}
!1316 = !DILocalVariable(name: "w0", scope: !1212, file: !61, line: 73, type: !63)
!1317 = !DILocation(line: 0, scope: !1212)
!1318 = !{!"721"}
!1319 = !DILocation(line: 103, column: 8, scope: !1212)
!1320 = !{!"722"}
!1321 = !{!"723"}
!1322 = !{!"724"}
!1323 = !DILocation(line: 103, column: 20, scope: !1212)
!1324 = !{!"725"}
!1325 = !{!"726"}
!1326 = !{!"727"}
!1327 = !DILocation(line: 103, column: 18, scope: !1212)
!1328 = !{!"728"}
!1329 = !DILocation(line: 103, column: 32, scope: !1212)
!1330 = !{!"729"}
!1331 = !{!"730"}
!1332 = !{!"731"}
!1333 = !DILocation(line: 103, column: 30, scope: !1212)
!1334 = !{!"732"}
!1335 = !DILocation(line: 103, column: 44, scope: !1212)
!1336 = !{!"733"}
!1337 = !{!"734"}
!1338 = !{!"735"}
!1339 = !DILocation(line: 103, column: 42, scope: !1212)
!1340 = !{!"736"}
!1341 = !DILocation(line: 103, column: 56, scope: !1212)
!1342 = !{!"737"}
!1343 = !{!"738"}
!1344 = !{!"739"}
!1345 = !DILocation(line: 103, column: 54, scope: !1212)
!1346 = !{!"740"}
!1347 = !DILocalVariable(name: "w1", scope: !1212, file: !61, line: 73, type: !63)
!1348 = !{!"741"}
!1349 = !DILocation(line: 104, column: 8, scope: !1212)
!1350 = !{!"742"}
!1351 = !{!"743"}
!1352 = !{!"744"}
!1353 = !DILocation(line: 104, column: 20, scope: !1212)
!1354 = !{!"745"}
!1355 = !{!"746"}
!1356 = !{!"747"}
!1357 = !DILocation(line: 104, column: 18, scope: !1212)
!1358 = !{!"748"}
!1359 = !DILocation(line: 104, column: 32, scope: !1212)
!1360 = !{!"749"}
!1361 = !{!"750"}
!1362 = !{!"751"}
!1363 = !DILocation(line: 104, column: 30, scope: !1212)
!1364 = !{!"752"}
!1365 = !DILocation(line: 104, column: 44, scope: !1212)
!1366 = !{!"753"}
!1367 = !{!"754"}
!1368 = !{!"755"}
!1369 = !DILocation(line: 104, column: 42, scope: !1212)
!1370 = !{!"756"}
!1371 = !DILocation(line: 104, column: 56, scope: !1212)
!1372 = !{!"757"}
!1373 = !{!"758"}
!1374 = !{!"759"}
!1375 = !DILocation(line: 104, column: 54, scope: !1212)
!1376 = !{!"760"}
!1377 = !DILocalVariable(name: "w2", scope: !1212, file: !61, line: 73, type: !63)
!1378 = !{!"761"}
!1379 = !DILocation(line: 105, column: 8, scope: !1212)
!1380 = !{!"762"}
!1381 = !{!"763"}
!1382 = !{!"764"}
!1383 = !DILocation(line: 105, column: 20, scope: !1212)
!1384 = !{!"765"}
!1385 = !{!"766"}
!1386 = !{!"767"}
!1387 = !DILocation(line: 105, column: 18, scope: !1212)
!1388 = !{!"768"}
!1389 = !DILocation(line: 105, column: 32, scope: !1212)
!1390 = !{!"769"}
!1391 = !{!"770"}
!1392 = !{!"771"}
!1393 = !DILocation(line: 105, column: 30, scope: !1212)
!1394 = !{!"772"}
!1395 = !DILocation(line: 105, column: 44, scope: !1212)
!1396 = !{!"773"}
!1397 = !{!"774"}
!1398 = !{!"775"}
!1399 = !DILocation(line: 105, column: 42, scope: !1212)
!1400 = !{!"776"}
!1401 = !DILocation(line: 105, column: 56, scope: !1212)
!1402 = !{!"777"}
!1403 = !{!"778"}
!1404 = !{!"779"}
!1405 = !DILocation(line: 105, column: 54, scope: !1212)
!1406 = !{!"780"}
!1407 = !DILocalVariable(name: "w3", scope: !1212, file: !61, line: 73, type: !63)
!1408 = !{!"781"}
!1409 = !DILocation(line: 106, column: 8, scope: !1212)
!1410 = !{!"782"}
!1411 = !{!"783"}
!1412 = !{!"784"}
!1413 = !DILocation(line: 106, column: 20, scope: !1212)
!1414 = !{!"785"}
!1415 = !{!"786"}
!1416 = !{!"787"}
!1417 = !DILocation(line: 106, column: 18, scope: !1212)
!1418 = !{!"788"}
!1419 = !DILocation(line: 106, column: 32, scope: !1212)
!1420 = !{!"789"}
!1421 = !{!"790"}
!1422 = !{!"791"}
!1423 = !DILocation(line: 106, column: 30, scope: !1212)
!1424 = !{!"792"}
!1425 = !DILocation(line: 106, column: 44, scope: !1212)
!1426 = !{!"793"}
!1427 = !{!"794"}
!1428 = !{!"795"}
!1429 = !DILocation(line: 106, column: 42, scope: !1212)
!1430 = !{!"796"}
!1431 = !DILocation(line: 106, column: 56, scope: !1212)
!1432 = !{!"797"}
!1433 = !{!"798"}
!1434 = !{!"799"}
!1435 = !DILocation(line: 106, column: 54, scope: !1212)
!1436 = !{!"800"}
!1437 = !DILocalVariable(name: "w4", scope: !1212, file: !61, line: 73, type: !63)
!1438 = !{!"801"}
!1439 = !DILocation(line: 117, column: 10, scope: !1212)
!1440 = !{!"802"}
!1441 = !DILocalVariable(name: "c", scope: !1212, file: !61, line: 74, type: !63)
!1442 = !{!"803"}
!1443 = !DILocation(line: 118, column: 8, scope: !1212)
!1444 = !{!"804"}
!1445 = !DILocation(line: 118, column: 21, scope: !1212)
!1446 = !{!"805"}
!1447 = !{!"806"}
!1448 = !DILocation(line: 119, column: 6, scope: !1212)
!1449 = !{!"807"}
!1450 = !{!"808"}
!1451 = !DILocation(line: 120, column: 10, scope: !1212)
!1452 = !{!"809"}
!1453 = !{!"810"}
!1454 = !DILocation(line: 121, column: 8, scope: !1212)
!1455 = !{!"811"}
!1456 = !DILocation(line: 121, column: 21, scope: !1212)
!1457 = !{!"812"}
!1458 = !{!"813"}
!1459 = !DILocation(line: 122, column: 6, scope: !1212)
!1460 = !{!"814"}
!1461 = !{!"815"}
!1462 = !DILocation(line: 123, column: 10, scope: !1212)
!1463 = !{!"816"}
!1464 = !{!"817"}
!1465 = !DILocation(line: 124, column: 8, scope: !1212)
!1466 = !{!"818"}
!1467 = !DILocation(line: 124, column: 21, scope: !1212)
!1468 = !{!"819"}
!1469 = !{!"820"}
!1470 = !DILocation(line: 125, column: 6, scope: !1212)
!1471 = !{!"821"}
!1472 = !{!"822"}
!1473 = !DILocation(line: 126, column: 10, scope: !1212)
!1474 = !{!"823"}
!1475 = !{!"824"}
!1476 = !DILocation(line: 127, column: 8, scope: !1212)
!1477 = !{!"825"}
!1478 = !DILocation(line: 127, column: 21, scope: !1212)
!1479 = !{!"826"}
!1480 = !{!"827"}
!1481 = !DILocation(line: 128, column: 6, scope: !1212)
!1482 = !{!"828"}
!1483 = !{!"829"}
!1484 = !DILocation(line: 129, column: 10, scope: !1212)
!1485 = !{!"830"}
!1486 = !{!"831"}
!1487 = !DILocation(line: 130, column: 8, scope: !1212)
!1488 = !{!"832"}
!1489 = !DILocation(line: 130, column: 21, scope: !1212)
!1490 = !{!"833"}
!1491 = !{!"834"}
!1492 = !DILocation(line: 131, column: 9, scope: !1212)
!1493 = !{!"835"}
!1494 = !DILocation(line: 131, column: 21, scope: !1212)
!1495 = !{!"836"}
!1496 = !DILocation(line: 131, column: 6, scope: !1212)
!1497 = !{!"837"}
!1498 = !{!"838"}
!1499 = !DILocation(line: 132, column: 12, scope: !1212)
!1500 = !{!"839"}
!1501 = !DILocation(line: 132, column: 6, scope: !1212)
!1502 = !{!"840"}
!1503 = !{!"841"}
!1504 = !DILocation(line: 133, column: 6, scope: !1212)
!1505 = !{!"842"}
!1506 = !{!"843"}
!1507 = !DILocation(line: 135, column: 7, scope: !1212)
!1508 = !{!"844"}
!1509 = !{!"845"}
!1510 = !DILocation(line: 136, column: 7, scope: !1212)
!1511 = !{!"846"}
!1512 = !{!"847"}
!1513 = distinct !{!1513, !1192, !1514, !411}
!1514 = !DILocation(line: 137, column: 2, scope: !1109)
!1515 = !{!"848"}
!1516 = !DILocation(line: 139, column: 2, scope: !1109)
!1517 = !{!"849"}
!1518 = !DILocation(line: 139, column: 9, scope: !1109)
!1519 = !{!"850"}
!1520 = !DILocation(line: 140, column: 2, scope: !1109)
!1521 = !{!"851"}
!1522 = !DILocation(line: 140, column: 9, scope: !1109)
!1523 = !{!"852"}
!1524 = !DILocation(line: 141, column: 2, scope: !1109)
!1525 = !{!"853"}
!1526 = !DILocation(line: 141, column: 9, scope: !1109)
!1527 = !{!"854"}
!1528 = !DILocation(line: 142, column: 2, scope: !1109)
!1529 = !{!"855"}
!1530 = !DILocation(line: 142, column: 9, scope: !1109)
!1531 = !{!"856"}
!1532 = !DILocation(line: 143, column: 2, scope: !1109)
!1533 = !{!"857"}
!1534 = !DILocation(line: 143, column: 9, scope: !1109)
!1535 = !{!"858"}
!1536 = !DILocation(line: 144, column: 1, scope: !1109)
!1537 = !{!"859"}
!1538 = distinct !DISubprogram(name: "GT", scope: !69, file: !69, line: 803, type: !1539, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !18)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!6, !6, !6}
!1541 = !DILocalVariable(name: "x", arg: 1, scope: !1538, file: !69, line: 803, type: !6)
!1542 = !DILocation(line: 0, scope: !1538)
!1543 = !{!"860"}
!1544 = !DILocalVariable(name: "y", arg: 2, scope: !1538, file: !69, line: 803, type: !6)
!1545 = !{!"861"}
!1546 = !DILocation(line: 819, column: 8, scope: !1538)
!1547 = !{!"862"}
!1548 = !DILocalVariable(name: "z", scope: !1538, file: !69, line: 817, type: !6)
!1549 = !{!"863"}
!1550 = !DILocation(line: 820, column: 18, scope: !1538)
!1551 = !{!"864"}
!1552 = !DILocation(line: 820, column: 28, scope: !1538)
!1553 = !{!"865"}
!1554 = !DILocation(line: 820, column: 23, scope: !1538)
!1555 = !{!"866"}
!1556 = !DILocation(line: 820, column: 12, scope: !1538)
!1557 = !{!"867"}
!1558 = !DILocation(line: 820, column: 35, scope: !1538)
!1559 = !{!"868"}
!1560 = !DILocation(line: 820, column: 2, scope: !1538)
!1561 = !{!"869"}
!1562 = distinct !DISubprogram(name: "EQ", scope: !69, file: !69, line: 779, type: !1539, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !18)
!1563 = !DILocalVariable(name: "x", arg: 1, scope: !1562, file: !69, line: 779, type: !6)
!1564 = !DILocation(line: 0, scope: !1562)
!1565 = !{!"870"}
!1566 = !DILocalVariable(name: "y", arg: 2, scope: !1562, file: !69, line: 779, type: !6)
!1567 = !{!"871"}
!1568 = !DILocation(line: 783, column: 8, scope: !1562)
!1569 = !{!"872"}
!1570 = !DILocalVariable(name: "q", scope: !1562, file: !69, line: 781, type: !6)
!1571 = !{!"873"}
!1572 = !DILocation(line: 784, column: 18, scope: !1562)
!1573 = !{!"874"}
!1574 = !DILocation(line: 784, column: 16, scope: !1562)
!1575 = !{!"875"}
!1576 = !DILocation(line: 784, column: 22, scope: !1562)
!1577 = !{!"876"}
!1578 = !DILocation(line: 784, column: 9, scope: !1562)
!1579 = !{!"877"}
!1580 = !DILocation(line: 784, column: 2, scope: !1562)
!1581 = !{!"878"}
!1582 = distinct !DISubprogram(name: "MUX", scope: !69, file: !69, line: 770, type: !1583, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !18)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!6, !6, !6, !6}
!1585 = !DILocalVariable(name: "ctl", arg: 1, scope: !1582, file: !69, line: 770, type: !6)
!1586 = !DILocation(line: 0, scope: !1582)
!1587 = !{!"879"}
!1588 = !DILocalVariable(name: "x", arg: 2, scope: !1582, file: !69, line: 770, type: !6)
!1589 = !{!"880"}
!1590 = !DILocalVariable(name: "y", arg: 3, scope: !1582, file: !69, line: 770, type: !6)
!1591 = !{!"881"}
!1592 = !DILocation(line: 772, column: 14, scope: !1582)
!1593 = !{!"882"}
!1594 = !DILocation(line: 772, column: 24, scope: !1582)
!1595 = !{!"883"}
!1596 = !DILocation(line: 772, column: 19, scope: !1582)
!1597 = !{!"884"}
!1598 = !DILocation(line: 772, column: 11, scope: !1582)
!1599 = !{!"885"}
!1600 = !DILocation(line: 772, column: 2, scope: !1582)
!1601 = !{!"886"}
!1602 = distinct !DISubprogram(name: "br_enc32le", scope: !69, file: !69, line: 542, type: !1603, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !18)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !13, !6}
!1605 = !DILocalVariable(name: "dst", arg: 1, scope: !1602, file: !69, line: 542, type: !13)
!1606 = !DILocation(line: 0, scope: !1602)
!1607 = !{!"887"}
!1608 = !DILocalVariable(name: "x", arg: 2, scope: !1602, file: !69, line: 542, type: !6)
!1609 = !{!"888"}
!1610 = !DILocation(line: 545, column: 3, scope: !1602)
!1611 = !{!"889"}
!1612 = !DILocation(line: 545, column: 25, scope: !1602)
!1613 = !{!"890"}
!1614 = !DILocation(line: 545, column: 27, scope: !1602)
!1615 = !{!"891"}
!1616 = !DILocation(line: 555, column: 1, scope: !1602)
!1617 = !{!"892"}
!1618 = distinct !DISubprogram(name: "NOT", scope: !69, file: !69, line: 761, type: !1619, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !18)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!6, !6}
!1621 = !DILocalVariable(name: "ctl", arg: 1, scope: !1618, file: !69, line: 761, type: !6)
!1622 = !DILocation(line: 0, scope: !1618)
!1623 = !{!"893"}
!1624 = !DILocation(line: 763, column: 13, scope: !1618)
!1625 = !{!"894"}
!1626 = !DILocation(line: 763, column: 2, scope: !1618)
!1627 = !{!"895"}
!1628 = distinct !DISubprogram(name: "run_wrapper", scope: !84, file: !84, line: 3, type: !646, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !18)
!1629 = !DILocalVariable(name: "key", arg: 1, scope: !1628, file: !84, line: 3, type: !11)
!1630 = !DILocation(line: 0, scope: !1628)
!1631 = !{!"896"}
!1632 = !DILocalVariable(name: "iv", arg: 2, scope: !1628, file: !84, line: 3, type: !11)
!1633 = !{!"897"}
!1634 = !DILocalVariable(name: "data", arg: 3, scope: !1628, file: !84, line: 4, type: !13)
!1635 = !{!"898"}
!1636 = !DILocalVariable(name: "len", arg: 4, scope: !1628, file: !84, line: 4, type: !14)
!1637 = !{!"899"}
!1638 = !DILocalVariable(name: "aad", arg: 5, scope: !1628, file: !84, line: 4, type: !11)
!1639 = !{!"900"}
!1640 = !DILocalVariable(name: "aad_len", arg: 6, scope: !1628, file: !84, line: 4, type: !14)
!1641 = !{!"901"}
!1642 = !DILocalVariable(name: "tag", arg: 7, scope: !1628, file: !84, line: 5, type: !13)
!1643 = !{!"902"}
!1644 = !DILocalVariable(name: "ichacha", arg: 8, scope: !1628, file: !84, line: 5, type: !92)
!1645 = !{!"903"}
!1646 = !DILocalVariable(name: "encrypt", arg: 9, scope: !1628, file: !84, line: 5, type: !32)
!1647 = !{!"904"}
!1648 = !DILocation(line: 6, column: 12, scope: !1628)
!1649 = !{!"905"}
!1650 = !DILocation(line: 6, column: 2, scope: !1628)
!1651 = !{!"906"}
!1652 = !DILocation(line: 7, column: 12, scope: !1628)
!1653 = !{!"907"}
!1654 = !DILocation(line: 7, column: 2, scope: !1628)
!1655 = !{!"908"}
!1656 = !DILocation(line: 8, column: 12, scope: !1628)
!1657 = !{!"909"}
!1658 = !DILocation(line: 8, column: 2, scope: !1628)
!1659 = !{!"910"}
!1660 = !DILocation(line: 9, column: 12, scope: !1628)
!1661 = !{!"911"}
!1662 = !DILocation(line: 9, column: 2, scope: !1628)
!1663 = !{!"912"}
!1664 = !DILocation(line: 10, column: 12, scope: !1628)
!1665 = !{!"913"}
!1666 = !DILocation(line: 10, column: 2, scope: !1628)
!1667 = !{!"914"}
!1668 = !DILocation(line: 11, column: 12, scope: !1628)
!1669 = !{!"915"}
!1670 = !DILocation(line: 11, column: 2, scope: !1628)
!1671 = !{!"916"}
!1672 = !DILocation(line: 12, column: 12, scope: !1628)
!1673 = !{!"917"}
!1674 = !DILocation(line: 12, column: 2, scope: !1628)
!1675 = !{!"918"}
!1676 = !DILocation(line: 13, column: 12, scope: !1628)
!1677 = !{!"919"}
!1678 = !DILocation(line: 13, column: 2, scope: !1628)
!1679 = !{!"920"}
!1680 = !DILocation(line: 16, column: 12, scope: !1628)
!1681 = !{!"921"}
!1682 = !DILocation(line: 16, column: 2, scope: !1628)
!1683 = !{!"922"}
!1684 = !DILocation(line: 17, column: 12, scope: !1628)
!1685 = !{!"923"}
!1686 = !DILocation(line: 17, column: 2, scope: !1628)
!1687 = !{!"924"}
!1688 = !DILocation(line: 18, column: 12, scope: !1628)
!1689 = !{!"925"}
!1690 = !DILocation(line: 18, column: 2, scope: !1628)
!1691 = !{!"926"}
!1692 = !DILocation(line: 21, column: 2, scope: !1628)
!1693 = !{!"927"}
!1694 = !DILocation(line: 22, column: 1, scope: !1628)
!1695 = !{!"928"}
!1696 = distinct !DISubprogram(name: "run_wrapper_t", scope: !84, file: !84, line: 32, type: !1697, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !18)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null}
!1699 = !DILocation(line: 34, column: 19, scope: !1696)
!1700 = !{!"929"}
!1701 = !DILocalVariable(name: "key", scope: !1696, file: !84, line: 34, type: !11)
!1702 = !DILocation(line: 0, scope: !1696)
!1703 = !{!"930"}
!1704 = !DILocation(line: 35, column: 19, scope: !1696)
!1705 = !{!"931"}
!1706 = !DILocalVariable(name: "iv", scope: !1696, file: !84, line: 35, type: !11)
!1707 = !{!"932"}
!1708 = !DILocation(line: 37, column: 15, scope: !1696)
!1709 = !{!"933"}
!1710 = !DILocalVariable(name: "data", scope: !1696, file: !84, line: 37, type: !13)
!1711 = !{!"934"}
!1712 = !DILocalVariable(name: "len", scope: !1696, file: !84, line: 38, type: !14)
!1713 = !{!"935"}
!1714 = !DILocation(line: 39, column: 22, scope: !1696)
!1715 = !{!"936"}
!1716 = !DILocalVariable(name: "aad", scope: !1696, file: !84, line: 39, type: !11)
!1717 = !{!"937"}
!1718 = !DILocalVariable(name: "aad_len", scope: !1696, file: !84, line: 40, type: !14)
!1719 = !{!"938"}
!1720 = !DILocation(line: 41, column: 14, scope: !1696)
!1721 = !{!"939"}
!1722 = !DILocalVariable(name: "tag", scope: !1696, file: !84, line: 41, type: !13)
!1723 = !{!"940"}
!1724 = !DILocalVariable(name: "encrypt", scope: !1696, file: !84, line: 42, type: !32)
!1725 = !{!"941"}
!1726 = !DILocation(line: 44, column: 2, scope: !1696)
!1727 = !{!"942"}
!1728 = !DILocation(line: 45, column: 1, scope: !1696)
!1729 = !{!"943"}
