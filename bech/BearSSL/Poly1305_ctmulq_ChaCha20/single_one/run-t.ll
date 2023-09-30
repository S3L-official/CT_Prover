; ModuleID = 'run-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.br_union_u32 = type { i32 }
%union.br_union_u64 = type { i64 }
%struct.smack_value = type { i8* }

@br_chacha20_ct_run.CW = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0, !psr.id !38

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_chacha20_ct_run(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 !dbg !2 {
  %6 = alloca [8 x i32], align 16, !psr.id !71
  %7 = alloca [3 x i32], align 4, !psr.id !72
  %8 = alloca [16 x i32], align 16, !psr.id !73
  %9 = alloca [64 x i8], align 16, !psr.id !74
  call void @llvm.dbg.value(metadata i8* %0, metadata !75, metadata !DIExpression()), !dbg !76, !psr.id !77
  call void @llvm.dbg.value(metadata i8* %1, metadata !78, metadata !DIExpression()), !dbg !76, !psr.id !79
  call void @llvm.dbg.value(metadata i32 %2, metadata !80, metadata !DIExpression()), !dbg !76, !psr.id !81
  call void @llvm.dbg.value(metadata i8* %3, metadata !82, metadata !DIExpression()), !dbg !76, !psr.id !83
  call void @llvm.dbg.value(metadata i64 %4, metadata !84, metadata !DIExpression()), !dbg !76, !psr.id !85
  call void @llvm.dbg.declare(metadata [8 x i32]* %6, metadata !86, metadata !DIExpression()), !dbg !88, !psr.id !89
  call void @llvm.dbg.declare(metadata [3 x i32]* %7, metadata !90, metadata !DIExpression()), !dbg !94, !psr.id !95
  call void @llvm.dbg.value(metadata i8* %3, metadata !96, metadata !DIExpression()), !dbg !76, !psr.id !97
  call void @llvm.dbg.value(metadata i64 0, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !99
  br label %10, !dbg !100, !psr.id !102

10:                                               ; preds = %17, %5
  %.01 = phi i64 [ 0, %5 ], [ %18, %17 ], !dbg !103, !psr.id !104
  call void @llvm.dbg.value(metadata i64 %.01, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !105
  %11 = icmp ult i64 %.01, 8, !dbg !106, !psr.id !108
  br i1 %11, label %12, label %19, !dbg !109, !psr.id !110

12:                                               ; preds = %10
  %13 = shl i64 %.01, 2, !dbg !111, !psr.id !113
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !114, !psr.id !115, !PointTainted !116
  %15 = call i32 @br_dec32le(i8* %14), !dbg !117, !psr.id !118, !ValueTainted !119
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %.01, !dbg !120, !psr.id !121, !PointTainted !116
  store i32 %15, i32* %16, align 4, !dbg !122, !psr.id !123
  br label %17, !dbg !124, !psr.id !125

17:                                               ; preds = %12
  %18 = add i64 %.01, 1, !dbg !126, !psr.id !127
  call void @llvm.dbg.value(metadata i64 %18, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !128
  br label %10, !dbg !129, !llvm.loop !130, !psr.id !133

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 0, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !134
  br label %20, !dbg !135, !psr.id !137

20:                                               ; preds = %27, %19
  %.1 = phi i64 [ 0, %19 ], [ %28, %27 ], !dbg !138, !psr.id !139
  call void @llvm.dbg.value(metadata i64 %.1, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !140
  %21 = icmp ult i64 %.1, 3, !dbg !141, !psr.id !143
  br i1 %21, label %22, label %29, !dbg !144, !psr.id !145

22:                                               ; preds = %20
  %23 = shl i64 %.1, 2, !dbg !146, !psr.id !148
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !149, !psr.id !150
  %25 = call i32 @br_dec32le(i8* %24), !dbg !151, !psr.id !152
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %.1, !dbg !153, !psr.id !154
  store i32 %25, i32* %26, align 4, !dbg !155, !psr.id !156
  br label %27, !dbg !157, !psr.id !158

27:                                               ; preds = %22
  %28 = add i64 %.1, 1, !dbg !159, !psr.id !160
  call void @llvm.dbg.value(metadata i64 %28, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !161
  br label %20, !dbg !162, !llvm.loop !163, !psr.id !165

29:                                               ; preds = %20
  br label %30, !dbg !166, !psr.id !167

30:                                               ; preds = %705, %29
  %.04 = phi i64 [ %4, %29 ], [ %707, %705 ], !psr.id !168
  %.03 = phi i8* [ %3, %29 ], [ %706, %705 ], !dbg !76, !psr.id !169
  %.02 = phi i32 [ %2, %29 ], [ %708, %705 ], !psr.id !170
  call void @llvm.dbg.value(metadata i32 %.02, metadata !80, metadata !DIExpression()), !dbg !76, !psr.id !171
  call void @llvm.dbg.value(metadata i8* %.03, metadata !96, metadata !DIExpression()), !dbg !76, !psr.id !172
  call void @llvm.dbg.value(metadata i64 %.04, metadata !84, metadata !DIExpression()), !dbg !76, !psr.id !173
  %31 = icmp ugt i64 %.04, 0, !dbg !174, !psr.id !175
  br i1 %31, label %32, label %709, !dbg !166, !psr.id !176

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i32]* %8, metadata !177, metadata !DIExpression()), !dbg !182, !psr.id !183
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !184, metadata !DIExpression()), !dbg !188, !psr.id !189
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !190, !psr.id !191
  %34 = bitcast i32* %33 to i8*, !dbg !192, !psr.id !193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([4 x i32]* @br_chacha20_ct_run.CW to i8*), i64 16, i1 false), !dbg !192, !psr.id !194
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !195, !psr.id !196
  %36 = bitcast i32* %35 to i8*, !dbg !197, !psr.id !198
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !197, !psr.id !199
  %38 = bitcast i32* %37 to i8*, !dbg !197, !psr.id !200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 %38, i64 32, i1 false), !dbg !197, !psr.id !201
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !202, !psr.id !203
  store i32 %.02, i32* %39, align 16, !dbg !204, !psr.id !205
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !206, !psr.id !207
  %41 = bitcast i32* %40 to i8*, !dbg !208, !psr.id !209
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0, !dbg !208, !psr.id !210
  %43 = bitcast i32* %42 to i8*, !dbg !208, !psr.id !211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %43, i64 12, i1 false), !dbg !208, !psr.id !212
  call void @llvm.dbg.value(metadata i32 0, metadata !213, metadata !DIExpression()), !dbg !215, !psr.id !216
  br label %44, !dbg !217, !psr.id !219

44:                                               ; preds = %639, %32
  %.0 = phi i32 [ 0, %32 ], [ %640, %639 ], !dbg !220, !psr.id !221
  call void @llvm.dbg.value(metadata i32 %.0, metadata !213, metadata !DIExpression()), !dbg !215, !psr.id !222
  %45 = icmp slt i32 %.0, 10, !dbg !223, !psr.id !225
  br i1 %45, label %46, label %641, !dbg !226, !psr.id !227

46:                                               ; preds = %44
  br label %47, !dbg !228, !psr.id !230

47:                                               ; preds = %46
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !231, !psr.id !233
  %49 = load i32, i32* %48, align 16, !dbg !231, !psr.id !234
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !231, !psr.id !235
  %51 = load i32, i32* %50, align 16, !dbg !231, !psr.id !236
  %52 = add i32 %51, %49, !dbg !231, !psr.id !237
  store i32 %52, i32* %50, align 16, !dbg !231, !psr.id !238
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !231, !psr.id !239
  %54 = load i32, i32* %53, align 16, !dbg !231, !psr.id !240
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !231, !psr.id !241
  %56 = load i32, i32* %55, align 16, !dbg !231, !psr.id !242
  %57 = xor i32 %56, %54, !dbg !231, !psr.id !243
  store i32 %57, i32* %55, align 16, !dbg !231, !psr.id !244
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !231, !psr.id !245
  %59 = load i32, i32* %58, align 16, !dbg !231, !psr.id !246
  %60 = shl i32 %59, 16, !dbg !231, !psr.id !247
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !231, !psr.id !248
  %62 = load i32, i32* %61, align 16, !dbg !231, !psr.id !249
  %63 = lshr i32 %62, 16, !dbg !231, !psr.id !250
  %64 = or i32 %60, %63, !dbg !231, !psr.id !251
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !231, !psr.id !252
  store i32 %64, i32* %65, align 16, !dbg !231, !psr.id !253
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !231, !psr.id !254
  %67 = load i32, i32* %66, align 16, !dbg !231, !psr.id !255
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !231, !psr.id !256
  %69 = load i32, i32* %68, align 16, !dbg !231, !psr.id !257
  %70 = add i32 %69, %67, !dbg !231, !psr.id !258
  store i32 %70, i32* %68, align 16, !dbg !231, !psr.id !259
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !231, !psr.id !260
  %72 = load i32, i32* %71, align 16, !dbg !231, !psr.id !261
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !231, !psr.id !262
  %74 = load i32, i32* %73, align 16, !dbg !231, !psr.id !263
  %75 = xor i32 %74, %72, !dbg !231, !psr.id !264
  store i32 %75, i32* %73, align 16, !dbg !231, !psr.id !265
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !231, !psr.id !266
  %77 = load i32, i32* %76, align 16, !dbg !231, !psr.id !267
  %78 = shl i32 %77, 12, !dbg !231, !psr.id !268
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !231, !psr.id !269
  %80 = load i32, i32* %79, align 16, !dbg !231, !psr.id !270
  %81 = lshr i32 %80, 20, !dbg !231, !psr.id !271
  %82 = or i32 %78, %81, !dbg !231, !psr.id !272
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !231, !psr.id !273
  store i32 %82, i32* %83, align 16, !dbg !231, !psr.id !274
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !231, !psr.id !275
  %85 = load i32, i32* %84, align 16, !dbg !231, !psr.id !276
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !231, !psr.id !277
  %87 = load i32, i32* %86, align 16, !dbg !231, !psr.id !278
  %88 = add i32 %87, %85, !dbg !231, !psr.id !279
  store i32 %88, i32* %86, align 16, !dbg !231, !psr.id !280
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !231, !psr.id !281
  %90 = load i32, i32* %89, align 16, !dbg !231, !psr.id !282
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !231, !psr.id !283
  %92 = load i32, i32* %91, align 16, !dbg !231, !psr.id !284
  %93 = xor i32 %92, %90, !dbg !231, !psr.id !285
  store i32 %93, i32* %91, align 16, !dbg !231, !psr.id !286
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !231, !psr.id !287
  %95 = load i32, i32* %94, align 16, !dbg !231, !psr.id !288
  %96 = shl i32 %95, 8, !dbg !231, !psr.id !289
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !231, !psr.id !290
  %98 = load i32, i32* %97, align 16, !dbg !231, !psr.id !291
  %99 = lshr i32 %98, 24, !dbg !231, !psr.id !292
  %100 = or i32 %96, %99, !dbg !231, !psr.id !293
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !231, !psr.id !294
  store i32 %100, i32* %101, align 16, !dbg !231, !psr.id !295
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !231, !psr.id !296
  %103 = load i32, i32* %102, align 16, !dbg !231, !psr.id !297
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !231, !psr.id !298
  %105 = load i32, i32* %104, align 16, !dbg !231, !psr.id !299
  %106 = add i32 %105, %103, !dbg !231, !psr.id !300
  store i32 %106, i32* %104, align 16, !dbg !231, !psr.id !301
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !231, !psr.id !302
  %108 = load i32, i32* %107, align 16, !dbg !231, !psr.id !303
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !231, !psr.id !304
  %110 = load i32, i32* %109, align 16, !dbg !231, !psr.id !305
  %111 = xor i32 %110, %108, !dbg !231, !psr.id !306
  store i32 %111, i32* %109, align 16, !dbg !231, !psr.id !307
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !231, !psr.id !308
  %113 = load i32, i32* %112, align 16, !dbg !231, !psr.id !309
  %114 = shl i32 %113, 7, !dbg !231, !psr.id !310
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !231, !psr.id !311
  %116 = load i32, i32* %115, align 16, !dbg !231, !psr.id !312
  %117 = lshr i32 %116, 25, !dbg !231, !psr.id !313
  %118 = or i32 %114, %117, !dbg !231, !psr.id !314
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !231, !psr.id !315
  store i32 %118, i32* %119, align 16, !dbg !231, !psr.id !316
  br label %120, !dbg !231, !psr.id !317

120:                                              ; preds = %47
  br label %121, !dbg !318, !psr.id !319

121:                                              ; preds = %120
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !320, !psr.id !322
  %123 = load i32, i32* %122, align 4, !dbg !320, !psr.id !323
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !320, !psr.id !324
  %125 = load i32, i32* %124, align 4, !dbg !320, !psr.id !325
  %126 = add i32 %125, %123, !dbg !320, !psr.id !326
  store i32 %126, i32* %124, align 4, !dbg !320, !psr.id !327
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !320, !psr.id !328
  %128 = load i32, i32* %127, align 4, !dbg !320, !psr.id !329
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !320, !psr.id !330
  %130 = load i32, i32* %129, align 4, !dbg !320, !psr.id !331
  %131 = xor i32 %130, %128, !dbg !320, !psr.id !332
  store i32 %131, i32* %129, align 4, !dbg !320, !psr.id !333
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !320, !psr.id !334
  %133 = load i32, i32* %132, align 4, !dbg !320, !psr.id !335
  %134 = shl i32 %133, 16, !dbg !320, !psr.id !336
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !320, !psr.id !337
  %136 = load i32, i32* %135, align 4, !dbg !320, !psr.id !338
  %137 = lshr i32 %136, 16, !dbg !320, !psr.id !339
  %138 = or i32 %134, %137, !dbg !320, !psr.id !340
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !320, !psr.id !341
  store i32 %138, i32* %139, align 4, !dbg !320, !psr.id !342
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !320, !psr.id !343
  %141 = load i32, i32* %140, align 4, !dbg !320, !psr.id !344
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !320, !psr.id !345
  %143 = load i32, i32* %142, align 4, !dbg !320, !psr.id !346
  %144 = add i32 %143, %141, !dbg !320, !psr.id !347
  store i32 %144, i32* %142, align 4, !dbg !320, !psr.id !348
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !320, !psr.id !349
  %146 = load i32, i32* %145, align 4, !dbg !320, !psr.id !350
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !320, !psr.id !351
  %148 = load i32, i32* %147, align 4, !dbg !320, !psr.id !352
  %149 = xor i32 %148, %146, !dbg !320, !psr.id !353
  store i32 %149, i32* %147, align 4, !dbg !320, !psr.id !354
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !320, !psr.id !355
  %151 = load i32, i32* %150, align 4, !dbg !320, !psr.id !356
  %152 = shl i32 %151, 12, !dbg !320, !psr.id !357
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !320, !psr.id !358
  %154 = load i32, i32* %153, align 4, !dbg !320, !psr.id !359
  %155 = lshr i32 %154, 20, !dbg !320, !psr.id !360
  %156 = or i32 %152, %155, !dbg !320, !psr.id !361
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !320, !psr.id !362
  store i32 %156, i32* %157, align 4, !dbg !320, !psr.id !363
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !320, !psr.id !364
  %159 = load i32, i32* %158, align 4, !dbg !320, !psr.id !365
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !320, !psr.id !366
  %161 = load i32, i32* %160, align 4, !dbg !320, !psr.id !367
  %162 = add i32 %161, %159, !dbg !320, !psr.id !368
  store i32 %162, i32* %160, align 4, !dbg !320, !psr.id !369
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !320, !psr.id !370
  %164 = load i32, i32* %163, align 4, !dbg !320, !psr.id !371
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !320, !psr.id !372
  %166 = load i32, i32* %165, align 4, !dbg !320, !psr.id !373
  %167 = xor i32 %166, %164, !dbg !320, !psr.id !374
  store i32 %167, i32* %165, align 4, !dbg !320, !psr.id !375
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !320, !psr.id !376
  %169 = load i32, i32* %168, align 4, !dbg !320, !psr.id !377
  %170 = shl i32 %169, 8, !dbg !320, !psr.id !378
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !320, !psr.id !379
  %172 = load i32, i32* %171, align 4, !dbg !320, !psr.id !380
  %173 = lshr i32 %172, 24, !dbg !320, !psr.id !381
  %174 = or i32 %170, %173, !dbg !320, !psr.id !382
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !320, !psr.id !383
  store i32 %174, i32* %175, align 4, !dbg !320, !psr.id !384
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !320, !psr.id !385
  %177 = load i32, i32* %176, align 4, !dbg !320, !psr.id !386
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !320, !psr.id !387
  %179 = load i32, i32* %178, align 4, !dbg !320, !psr.id !388
  %180 = add i32 %179, %177, !dbg !320, !psr.id !389
  store i32 %180, i32* %178, align 4, !dbg !320, !psr.id !390
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !320, !psr.id !391
  %182 = load i32, i32* %181, align 4, !dbg !320, !psr.id !392
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !320, !psr.id !393
  %184 = load i32, i32* %183, align 4, !dbg !320, !psr.id !394
  %185 = xor i32 %184, %182, !dbg !320, !psr.id !395
  store i32 %185, i32* %183, align 4, !dbg !320, !psr.id !396
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !320, !psr.id !397
  %187 = load i32, i32* %186, align 4, !dbg !320, !psr.id !398
  %188 = shl i32 %187, 7, !dbg !320, !psr.id !399
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !320, !psr.id !400
  %190 = load i32, i32* %189, align 4, !dbg !320, !psr.id !401
  %191 = lshr i32 %190, 25, !dbg !320, !psr.id !402
  %192 = or i32 %188, %191, !dbg !320, !psr.id !403
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !320, !psr.id !404
  store i32 %192, i32* %193, align 4, !dbg !320, !psr.id !405
  br label %194, !dbg !320, !psr.id !406

194:                                              ; preds = %121
  br label %195, !dbg !407, !psr.id !408

195:                                              ; preds = %194
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !409, !psr.id !411
  %197 = load i32, i32* %196, align 8, !dbg !409, !psr.id !412
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !409, !psr.id !413
  %199 = load i32, i32* %198, align 8, !dbg !409, !psr.id !414
  %200 = add i32 %199, %197, !dbg !409, !psr.id !415
  store i32 %200, i32* %198, align 8, !dbg !409, !psr.id !416
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !409, !psr.id !417
  %202 = load i32, i32* %201, align 8, !dbg !409, !psr.id !418
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !409, !psr.id !419
  %204 = load i32, i32* %203, align 8, !dbg !409, !psr.id !420
  %205 = xor i32 %204, %202, !dbg !409, !psr.id !421
  store i32 %205, i32* %203, align 8, !dbg !409, !psr.id !422
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !409, !psr.id !423
  %207 = load i32, i32* %206, align 8, !dbg !409, !psr.id !424
  %208 = shl i32 %207, 16, !dbg !409, !psr.id !425
  %209 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !409, !psr.id !426
  %210 = load i32, i32* %209, align 8, !dbg !409, !psr.id !427
  %211 = lshr i32 %210, 16, !dbg !409, !psr.id !428
  %212 = or i32 %208, %211, !dbg !409, !psr.id !429
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !409, !psr.id !430
  store i32 %212, i32* %213, align 8, !dbg !409, !psr.id !431
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !409, !psr.id !432
  %215 = load i32, i32* %214, align 8, !dbg !409, !psr.id !433
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !409, !psr.id !434
  %217 = load i32, i32* %216, align 8, !dbg !409, !psr.id !435
  %218 = add i32 %217, %215, !dbg !409, !psr.id !436
  store i32 %218, i32* %216, align 8, !dbg !409, !psr.id !437
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !409, !psr.id !438
  %220 = load i32, i32* %219, align 8, !dbg !409, !psr.id !439
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !409, !psr.id !440
  %222 = load i32, i32* %221, align 8, !dbg !409, !psr.id !441
  %223 = xor i32 %222, %220, !dbg !409, !psr.id !442
  store i32 %223, i32* %221, align 8, !dbg !409, !psr.id !443
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !409, !psr.id !444
  %225 = load i32, i32* %224, align 8, !dbg !409, !psr.id !445
  %226 = shl i32 %225, 12, !dbg !409, !psr.id !446
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !409, !psr.id !447
  %228 = load i32, i32* %227, align 8, !dbg !409, !psr.id !448
  %229 = lshr i32 %228, 20, !dbg !409, !psr.id !449
  %230 = or i32 %226, %229, !dbg !409, !psr.id !450
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !409, !psr.id !451
  store i32 %230, i32* %231, align 8, !dbg !409, !psr.id !452
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !409, !psr.id !453
  %233 = load i32, i32* %232, align 8, !dbg !409, !psr.id !454
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !409, !psr.id !455
  %235 = load i32, i32* %234, align 8, !dbg !409, !psr.id !456
  %236 = add i32 %235, %233, !dbg !409, !psr.id !457
  store i32 %236, i32* %234, align 8, !dbg !409, !psr.id !458
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !409, !psr.id !459
  %238 = load i32, i32* %237, align 8, !dbg !409, !psr.id !460
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !409, !psr.id !461
  %240 = load i32, i32* %239, align 8, !dbg !409, !psr.id !462
  %241 = xor i32 %240, %238, !dbg !409, !psr.id !463
  store i32 %241, i32* %239, align 8, !dbg !409, !psr.id !464
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !409, !psr.id !465
  %243 = load i32, i32* %242, align 8, !dbg !409, !psr.id !466
  %244 = shl i32 %243, 8, !dbg !409, !psr.id !467
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !409, !psr.id !468
  %246 = load i32, i32* %245, align 8, !dbg !409, !psr.id !469
  %247 = lshr i32 %246, 24, !dbg !409, !psr.id !470
  %248 = or i32 %244, %247, !dbg !409, !psr.id !471
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !409, !psr.id !472
  store i32 %248, i32* %249, align 8, !dbg !409, !psr.id !473
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !409, !psr.id !474
  %251 = load i32, i32* %250, align 8, !dbg !409, !psr.id !475
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !409, !psr.id !476
  %253 = load i32, i32* %252, align 8, !dbg !409, !psr.id !477
  %254 = add i32 %253, %251, !dbg !409, !psr.id !478
  store i32 %254, i32* %252, align 8, !dbg !409, !psr.id !479
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !409, !psr.id !480
  %256 = load i32, i32* %255, align 8, !dbg !409, !psr.id !481
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !409, !psr.id !482
  %258 = load i32, i32* %257, align 8, !dbg !409, !psr.id !483
  %259 = xor i32 %258, %256, !dbg !409, !psr.id !484
  store i32 %259, i32* %257, align 8, !dbg !409, !psr.id !485
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !409, !psr.id !486
  %261 = load i32, i32* %260, align 8, !dbg !409, !psr.id !487
  %262 = shl i32 %261, 7, !dbg !409, !psr.id !488
  %263 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !409, !psr.id !489
  %264 = load i32, i32* %263, align 8, !dbg !409, !psr.id !490
  %265 = lshr i32 %264, 25, !dbg !409, !psr.id !491
  %266 = or i32 %262, %265, !dbg !409, !psr.id !492
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !409, !psr.id !493
  store i32 %266, i32* %267, align 8, !dbg !409, !psr.id !494
  br label %268, !dbg !409, !psr.id !495

268:                                              ; preds = %195
  br label %269, !dbg !496, !psr.id !497

269:                                              ; preds = %268
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !498, !psr.id !500
  %271 = load i32, i32* %270, align 4, !dbg !498, !psr.id !501
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !498, !psr.id !502
  %273 = load i32, i32* %272, align 4, !dbg !498, !psr.id !503
  %274 = add i32 %273, %271, !dbg !498, !psr.id !504
  store i32 %274, i32* %272, align 4, !dbg !498, !psr.id !505
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !498, !psr.id !506
  %276 = load i32, i32* %275, align 4, !dbg !498, !psr.id !507
  %277 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !498, !psr.id !508
  %278 = load i32, i32* %277, align 4, !dbg !498, !psr.id !509
  %279 = xor i32 %278, %276, !dbg !498, !psr.id !510
  store i32 %279, i32* %277, align 4, !dbg !498, !psr.id !511
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !498, !psr.id !512
  %281 = load i32, i32* %280, align 4, !dbg !498, !psr.id !513
  %282 = shl i32 %281, 16, !dbg !498, !psr.id !514
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !498, !psr.id !515
  %284 = load i32, i32* %283, align 4, !dbg !498, !psr.id !516
  %285 = lshr i32 %284, 16, !dbg !498, !psr.id !517
  %286 = or i32 %282, %285, !dbg !498, !psr.id !518
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !498, !psr.id !519
  store i32 %286, i32* %287, align 4, !dbg !498, !psr.id !520
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !498, !psr.id !521
  %289 = load i32, i32* %288, align 4, !dbg !498, !psr.id !522
  %290 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !498, !psr.id !523
  %291 = load i32, i32* %290, align 4, !dbg !498, !psr.id !524
  %292 = add i32 %291, %289, !dbg !498, !psr.id !525
  store i32 %292, i32* %290, align 4, !dbg !498, !psr.id !526
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !498, !psr.id !527
  %294 = load i32, i32* %293, align 4, !dbg !498, !psr.id !528
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !498, !psr.id !529
  %296 = load i32, i32* %295, align 4, !dbg !498, !psr.id !530
  %297 = xor i32 %296, %294, !dbg !498, !psr.id !531
  store i32 %297, i32* %295, align 4, !dbg !498, !psr.id !532
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !498, !psr.id !533
  %299 = load i32, i32* %298, align 4, !dbg !498, !psr.id !534
  %300 = shl i32 %299, 12, !dbg !498, !psr.id !535
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !498, !psr.id !536
  %302 = load i32, i32* %301, align 4, !dbg !498, !psr.id !537
  %303 = lshr i32 %302, 20, !dbg !498, !psr.id !538
  %304 = or i32 %300, %303, !dbg !498, !psr.id !539
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !498, !psr.id !540
  store i32 %304, i32* %305, align 4, !dbg !498, !psr.id !541
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !498, !psr.id !542
  %307 = load i32, i32* %306, align 4, !dbg !498, !psr.id !543
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !498, !psr.id !544
  %309 = load i32, i32* %308, align 4, !dbg !498, !psr.id !545
  %310 = add i32 %309, %307, !dbg !498, !psr.id !546
  store i32 %310, i32* %308, align 4, !dbg !498, !psr.id !547
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !498, !psr.id !548
  %312 = load i32, i32* %311, align 4, !dbg !498, !psr.id !549
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !498, !psr.id !550
  %314 = load i32, i32* %313, align 4, !dbg !498, !psr.id !551
  %315 = xor i32 %314, %312, !dbg !498, !psr.id !552
  store i32 %315, i32* %313, align 4, !dbg !498, !psr.id !553
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !498, !psr.id !554
  %317 = load i32, i32* %316, align 4, !dbg !498, !psr.id !555
  %318 = shl i32 %317, 8, !dbg !498, !psr.id !556
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !498, !psr.id !557
  %320 = load i32, i32* %319, align 4, !dbg !498, !psr.id !558
  %321 = lshr i32 %320, 24, !dbg !498, !psr.id !559
  %322 = or i32 %318, %321, !dbg !498, !psr.id !560
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !498, !psr.id !561
  store i32 %322, i32* %323, align 4, !dbg !498, !psr.id !562
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !498, !psr.id !563
  %325 = load i32, i32* %324, align 4, !dbg !498, !psr.id !564
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !498, !psr.id !565
  %327 = load i32, i32* %326, align 4, !dbg !498, !psr.id !566
  %328 = add i32 %327, %325, !dbg !498, !psr.id !567
  store i32 %328, i32* %326, align 4, !dbg !498, !psr.id !568
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !498, !psr.id !569
  %330 = load i32, i32* %329, align 4, !dbg !498, !psr.id !570
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !498, !psr.id !571
  %332 = load i32, i32* %331, align 4, !dbg !498, !psr.id !572
  %333 = xor i32 %332, %330, !dbg !498, !psr.id !573
  store i32 %333, i32* %331, align 4, !dbg !498, !psr.id !574
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !498, !psr.id !575
  %335 = load i32, i32* %334, align 4, !dbg !498, !psr.id !576
  %336 = shl i32 %335, 7, !dbg !498, !psr.id !577
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !498, !psr.id !578
  %338 = load i32, i32* %337, align 4, !dbg !498, !psr.id !579
  %339 = lshr i32 %338, 25, !dbg !498, !psr.id !580
  %340 = or i32 %336, %339, !dbg !498, !psr.id !581
  %341 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !498, !psr.id !582
  store i32 %340, i32* %341, align 4, !dbg !498, !psr.id !583
  br label %342, !dbg !498, !psr.id !584

342:                                              ; preds = %269
  br label %343, !dbg !585, !psr.id !586

343:                                              ; preds = %342
  %344 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !587, !psr.id !589
  %345 = load i32, i32* %344, align 4, !dbg !587, !psr.id !590
  %346 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !587, !psr.id !591
  %347 = load i32, i32* %346, align 16, !dbg !587, !psr.id !592
  %348 = add i32 %347, %345, !dbg !587, !psr.id !593
  store i32 %348, i32* %346, align 16, !dbg !587, !psr.id !594
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !587, !psr.id !595
  %350 = load i32, i32* %349, align 16, !dbg !587, !psr.id !596
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !587, !psr.id !597
  %352 = load i32, i32* %351, align 4, !dbg !587, !psr.id !598
  %353 = xor i32 %352, %350, !dbg !587, !psr.id !599
  store i32 %353, i32* %351, align 4, !dbg !587, !psr.id !600
  %354 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !587, !psr.id !601
  %355 = load i32, i32* %354, align 4, !dbg !587, !psr.id !602
  %356 = shl i32 %355, 16, !dbg !587, !psr.id !603
  %357 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !587, !psr.id !604
  %358 = load i32, i32* %357, align 4, !dbg !587, !psr.id !605
  %359 = lshr i32 %358, 16, !dbg !587, !psr.id !606
  %360 = or i32 %356, %359, !dbg !587, !psr.id !607
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !587, !psr.id !608
  store i32 %360, i32* %361, align 4, !dbg !587, !psr.id !609
  %362 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !587, !psr.id !610
  %363 = load i32, i32* %362, align 4, !dbg !587, !psr.id !611
  %364 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !587, !psr.id !612
  %365 = load i32, i32* %364, align 8, !dbg !587, !psr.id !613
  %366 = add i32 %365, %363, !dbg !587, !psr.id !614
  store i32 %366, i32* %364, align 8, !dbg !587, !psr.id !615
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !587, !psr.id !616
  %368 = load i32, i32* %367, align 8, !dbg !587, !psr.id !617
  %369 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !587, !psr.id !618
  %370 = load i32, i32* %369, align 4, !dbg !587, !psr.id !619
  %371 = xor i32 %370, %368, !dbg !587, !psr.id !620
  store i32 %371, i32* %369, align 4, !dbg !587, !psr.id !621
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !587, !psr.id !622
  %373 = load i32, i32* %372, align 4, !dbg !587, !psr.id !623
  %374 = shl i32 %373, 12, !dbg !587, !psr.id !624
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !587, !psr.id !625
  %376 = load i32, i32* %375, align 4, !dbg !587, !psr.id !626
  %377 = lshr i32 %376, 20, !dbg !587, !psr.id !627
  %378 = or i32 %374, %377, !dbg !587, !psr.id !628
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !587, !psr.id !629
  store i32 %378, i32* %379, align 4, !dbg !587, !psr.id !630
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !587, !psr.id !631
  %381 = load i32, i32* %380, align 4, !dbg !587, !psr.id !632
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !587, !psr.id !633
  %383 = load i32, i32* %382, align 16, !dbg !587, !psr.id !634
  %384 = add i32 %383, %381, !dbg !587, !psr.id !635
  store i32 %384, i32* %382, align 16, !dbg !587, !psr.id !636
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !587, !psr.id !637
  %386 = load i32, i32* %385, align 16, !dbg !587, !psr.id !638
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !587, !psr.id !639
  %388 = load i32, i32* %387, align 4, !dbg !587, !psr.id !640
  %389 = xor i32 %388, %386, !dbg !587, !psr.id !641
  store i32 %389, i32* %387, align 4, !dbg !587, !psr.id !642
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !587, !psr.id !643
  %391 = load i32, i32* %390, align 4, !dbg !587, !psr.id !644
  %392 = shl i32 %391, 8, !dbg !587, !psr.id !645
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !587, !psr.id !646
  %394 = load i32, i32* %393, align 4, !dbg !587, !psr.id !647
  %395 = lshr i32 %394, 24, !dbg !587, !psr.id !648
  %396 = or i32 %392, %395, !dbg !587, !psr.id !649
  %397 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !587, !psr.id !650
  store i32 %396, i32* %397, align 4, !dbg !587, !psr.id !651
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !587, !psr.id !652
  %399 = load i32, i32* %398, align 4, !dbg !587, !psr.id !653
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !587, !psr.id !654
  %401 = load i32, i32* %400, align 8, !dbg !587, !psr.id !655
  %402 = add i32 %401, %399, !dbg !587, !psr.id !656
  store i32 %402, i32* %400, align 8, !dbg !587, !psr.id !657
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !587, !psr.id !658
  %404 = load i32, i32* %403, align 8, !dbg !587, !psr.id !659
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !587, !psr.id !660
  %406 = load i32, i32* %405, align 4, !dbg !587, !psr.id !661
  %407 = xor i32 %406, %404, !dbg !587, !psr.id !662
  store i32 %407, i32* %405, align 4, !dbg !587, !psr.id !663
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !587, !psr.id !664
  %409 = load i32, i32* %408, align 4, !dbg !587, !psr.id !665
  %410 = shl i32 %409, 7, !dbg !587, !psr.id !666
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !587, !psr.id !667
  %412 = load i32, i32* %411, align 4, !dbg !587, !psr.id !668
  %413 = lshr i32 %412, 25, !dbg !587, !psr.id !669
  %414 = or i32 %410, %413, !dbg !587, !psr.id !670
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !587, !psr.id !671
  store i32 %414, i32* %415, align 4, !dbg !587, !psr.id !672
  br label %416, !dbg !587, !psr.id !673

416:                                              ; preds = %343
  br label %417, !dbg !674, !psr.id !675

417:                                              ; preds = %416
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !676, !psr.id !678
  %419 = load i32, i32* %418, align 8, !dbg !676, !psr.id !679
  %420 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !676, !psr.id !680
  %421 = load i32, i32* %420, align 4, !dbg !676, !psr.id !681
  %422 = add i32 %421, %419, !dbg !676, !psr.id !682
  store i32 %422, i32* %420, align 4, !dbg !676, !psr.id !683
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !676, !psr.id !684
  %424 = load i32, i32* %423, align 4, !dbg !676, !psr.id !685
  %425 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !676, !psr.id !686
  %426 = load i32, i32* %425, align 16, !dbg !676, !psr.id !687
  %427 = xor i32 %426, %424, !dbg !676, !psr.id !688
  store i32 %427, i32* %425, align 16, !dbg !676, !psr.id !689
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !676, !psr.id !690
  %429 = load i32, i32* %428, align 16, !dbg !676, !psr.id !691
  %430 = shl i32 %429, 16, !dbg !676, !psr.id !692
  %431 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !676, !psr.id !693
  %432 = load i32, i32* %431, align 16, !dbg !676, !psr.id !694
  %433 = lshr i32 %432, 16, !dbg !676, !psr.id !695
  %434 = or i32 %430, %433, !dbg !676, !psr.id !696
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !676, !psr.id !697
  store i32 %434, i32* %435, align 16, !dbg !676, !psr.id !698
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !676, !psr.id !699
  %437 = load i32, i32* %436, align 16, !dbg !676, !psr.id !700
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !676, !psr.id !701
  %439 = load i32, i32* %438, align 4, !dbg !676, !psr.id !702
  %440 = add i32 %439, %437, !dbg !676, !psr.id !703
  store i32 %440, i32* %438, align 4, !dbg !676, !psr.id !704
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !676, !psr.id !705
  %442 = load i32, i32* %441, align 4, !dbg !676, !psr.id !706
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !676, !psr.id !707
  %444 = load i32, i32* %443, align 8, !dbg !676, !psr.id !708
  %445 = xor i32 %444, %442, !dbg !676, !psr.id !709
  store i32 %445, i32* %443, align 8, !dbg !676, !psr.id !710
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !676, !psr.id !711
  %447 = load i32, i32* %446, align 8, !dbg !676, !psr.id !712
  %448 = shl i32 %447, 12, !dbg !676, !psr.id !713
  %449 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !676, !psr.id !714
  %450 = load i32, i32* %449, align 8, !dbg !676, !psr.id !715
  %451 = lshr i32 %450, 20, !dbg !676, !psr.id !716
  %452 = or i32 %448, %451, !dbg !676, !psr.id !717
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !676, !psr.id !718
  store i32 %452, i32* %453, align 8, !dbg !676, !psr.id !719
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !676, !psr.id !720
  %455 = load i32, i32* %454, align 8, !dbg !676, !psr.id !721
  %456 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !676, !psr.id !722
  %457 = load i32, i32* %456, align 4, !dbg !676, !psr.id !723
  %458 = add i32 %457, %455, !dbg !676, !psr.id !724
  store i32 %458, i32* %456, align 4, !dbg !676, !psr.id !725
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !676, !psr.id !726
  %460 = load i32, i32* %459, align 4, !dbg !676, !psr.id !727
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !676, !psr.id !728
  %462 = load i32, i32* %461, align 16, !dbg !676, !psr.id !729
  %463 = xor i32 %462, %460, !dbg !676, !psr.id !730
  store i32 %463, i32* %461, align 16, !dbg !676, !psr.id !731
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !676, !psr.id !732
  %465 = load i32, i32* %464, align 16, !dbg !676, !psr.id !733
  %466 = shl i32 %465, 8, !dbg !676, !psr.id !734
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !676, !psr.id !735
  %468 = load i32, i32* %467, align 16, !dbg !676, !psr.id !736
  %469 = lshr i32 %468, 24, !dbg !676, !psr.id !737
  %470 = or i32 %466, %469, !dbg !676, !psr.id !738
  %471 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !676, !psr.id !739
  store i32 %470, i32* %471, align 16, !dbg !676, !psr.id !740
  %472 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !676, !psr.id !741
  %473 = load i32, i32* %472, align 16, !dbg !676, !psr.id !742
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !676, !psr.id !743
  %475 = load i32, i32* %474, align 4, !dbg !676, !psr.id !744
  %476 = add i32 %475, %473, !dbg !676, !psr.id !745
  store i32 %476, i32* %474, align 4, !dbg !676, !psr.id !746
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !676, !psr.id !747
  %478 = load i32, i32* %477, align 4, !dbg !676, !psr.id !748
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !676, !psr.id !749
  %480 = load i32, i32* %479, align 8, !dbg !676, !psr.id !750
  %481 = xor i32 %480, %478, !dbg !676, !psr.id !751
  store i32 %481, i32* %479, align 8, !dbg !676, !psr.id !752
  %482 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !676, !psr.id !753
  %483 = load i32, i32* %482, align 8, !dbg !676, !psr.id !754
  %484 = shl i32 %483, 7, !dbg !676, !psr.id !755
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !676, !psr.id !756
  %486 = load i32, i32* %485, align 8, !dbg !676, !psr.id !757
  %487 = lshr i32 %486, 25, !dbg !676, !psr.id !758
  %488 = or i32 %484, %487, !dbg !676, !psr.id !759
  %489 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !676, !psr.id !760
  store i32 %488, i32* %489, align 8, !dbg !676, !psr.id !761
  br label %490, !dbg !676, !psr.id !762

490:                                              ; preds = %417
  br label %491, !dbg !763, !psr.id !764

491:                                              ; preds = %490
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !765, !psr.id !767
  %493 = load i32, i32* %492, align 4, !dbg !765, !psr.id !768
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !765, !psr.id !769
  %495 = load i32, i32* %494, align 8, !dbg !765, !psr.id !770
  %496 = add i32 %495, %493, !dbg !765, !psr.id !771
  store i32 %496, i32* %494, align 8, !dbg !765, !psr.id !772
  %497 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !765, !psr.id !773
  %498 = load i32, i32* %497, align 8, !dbg !765, !psr.id !774
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !765, !psr.id !775
  %500 = load i32, i32* %499, align 4, !dbg !765, !psr.id !776
  %501 = xor i32 %500, %498, !dbg !765, !psr.id !777
  store i32 %501, i32* %499, align 4, !dbg !765, !psr.id !778
  %502 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !765, !psr.id !779
  %503 = load i32, i32* %502, align 4, !dbg !765, !psr.id !780
  %504 = shl i32 %503, 16, !dbg !765, !psr.id !781
  %505 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !765, !psr.id !782
  %506 = load i32, i32* %505, align 4, !dbg !765, !psr.id !783
  %507 = lshr i32 %506, 16, !dbg !765, !psr.id !784
  %508 = or i32 %504, %507, !dbg !765, !psr.id !785
  %509 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !765, !psr.id !786
  store i32 %508, i32* %509, align 4, !dbg !765, !psr.id !787
  %510 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !765, !psr.id !788
  %511 = load i32, i32* %510, align 4, !dbg !765, !psr.id !789
  %512 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !765, !psr.id !790
  %513 = load i32, i32* %512, align 16, !dbg !765, !psr.id !791
  %514 = add i32 %513, %511, !dbg !765, !psr.id !792
  store i32 %514, i32* %512, align 16, !dbg !765, !psr.id !793
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !765, !psr.id !794
  %516 = load i32, i32* %515, align 16, !dbg !765, !psr.id !795
  %517 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !765, !psr.id !796
  %518 = load i32, i32* %517, align 4, !dbg !765, !psr.id !797
  %519 = xor i32 %518, %516, !dbg !765, !psr.id !798
  store i32 %519, i32* %517, align 4, !dbg !765, !psr.id !799
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !765, !psr.id !800
  %521 = load i32, i32* %520, align 4, !dbg !765, !psr.id !801
  %522 = shl i32 %521, 12, !dbg !765, !psr.id !802
  %523 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !765, !psr.id !803
  %524 = load i32, i32* %523, align 4, !dbg !765, !psr.id !804
  %525 = lshr i32 %524, 20, !dbg !765, !psr.id !805
  %526 = or i32 %522, %525, !dbg !765, !psr.id !806
  %527 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !765, !psr.id !807
  store i32 %526, i32* %527, align 4, !dbg !765, !psr.id !808
  %528 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !765, !psr.id !809
  %529 = load i32, i32* %528, align 4, !dbg !765, !psr.id !810
  %530 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !765, !psr.id !811
  %531 = load i32, i32* %530, align 8, !dbg !765, !psr.id !812
  %532 = add i32 %531, %529, !dbg !765, !psr.id !813
  store i32 %532, i32* %530, align 8, !dbg !765, !psr.id !814
  %533 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !765, !psr.id !815
  %534 = load i32, i32* %533, align 8, !dbg !765, !psr.id !816
  %535 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !765, !psr.id !817
  %536 = load i32, i32* %535, align 4, !dbg !765, !psr.id !818
  %537 = xor i32 %536, %534, !dbg !765, !psr.id !819
  store i32 %537, i32* %535, align 4, !dbg !765, !psr.id !820
  %538 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !765, !psr.id !821
  %539 = load i32, i32* %538, align 4, !dbg !765, !psr.id !822
  %540 = shl i32 %539, 8, !dbg !765, !psr.id !823
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !765, !psr.id !824
  %542 = load i32, i32* %541, align 4, !dbg !765, !psr.id !825
  %543 = lshr i32 %542, 24, !dbg !765, !psr.id !826
  %544 = or i32 %540, %543, !dbg !765, !psr.id !827
  %545 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !765, !psr.id !828
  store i32 %544, i32* %545, align 4, !dbg !765, !psr.id !829
  %546 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !765, !psr.id !830
  %547 = load i32, i32* %546, align 4, !dbg !765, !psr.id !831
  %548 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !765, !psr.id !832
  %549 = load i32, i32* %548, align 16, !dbg !765, !psr.id !833
  %550 = add i32 %549, %547, !dbg !765, !psr.id !834
  store i32 %550, i32* %548, align 16, !dbg !765, !psr.id !835
  %551 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !765, !psr.id !836
  %552 = load i32, i32* %551, align 16, !dbg !765, !psr.id !837
  %553 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !765, !psr.id !838
  %554 = load i32, i32* %553, align 4, !dbg !765, !psr.id !839
  %555 = xor i32 %554, %552, !dbg !765, !psr.id !840
  store i32 %555, i32* %553, align 4, !dbg !765, !psr.id !841
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !765, !psr.id !842
  %557 = load i32, i32* %556, align 4, !dbg !765, !psr.id !843
  %558 = shl i32 %557, 7, !dbg !765, !psr.id !844
  %559 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !765, !psr.id !845
  %560 = load i32, i32* %559, align 4, !dbg !765, !psr.id !846
  %561 = lshr i32 %560, 25, !dbg !765, !psr.id !847
  %562 = or i32 %558, %561, !dbg !765, !psr.id !848
  %563 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !765, !psr.id !849
  store i32 %562, i32* %563, align 4, !dbg !765, !psr.id !850
  br label %564, !dbg !765, !psr.id !851

564:                                              ; preds = %491
  br label %565, !dbg !852, !psr.id !853

565:                                              ; preds = %564
  %566 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !854, !psr.id !856
  %567 = load i32, i32* %566, align 16, !dbg !854, !psr.id !857
  %568 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !854, !psr.id !858
  %569 = load i32, i32* %568, align 4, !dbg !854, !psr.id !859
  %570 = add i32 %569, %567, !dbg !854, !psr.id !860
  store i32 %570, i32* %568, align 4, !dbg !854, !psr.id !861
  %571 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !854, !psr.id !862
  %572 = load i32, i32* %571, align 4, !dbg !854, !psr.id !863
  %573 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !854, !psr.id !864
  %574 = load i32, i32* %573, align 8, !dbg !854, !psr.id !865
  %575 = xor i32 %574, %572, !dbg !854, !psr.id !866
  store i32 %575, i32* %573, align 8, !dbg !854, !psr.id !867
  %576 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !854, !psr.id !868
  %577 = load i32, i32* %576, align 8, !dbg !854, !psr.id !869
  %578 = shl i32 %577, 16, !dbg !854, !psr.id !870
  %579 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !854, !psr.id !871
  %580 = load i32, i32* %579, align 8, !dbg !854, !psr.id !872
  %581 = lshr i32 %580, 16, !dbg !854, !psr.id !873
  %582 = or i32 %578, %581, !dbg !854, !psr.id !874
  %583 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !854, !psr.id !875
  store i32 %582, i32* %583, align 8, !dbg !854, !psr.id !876
  %584 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !854, !psr.id !877
  %585 = load i32, i32* %584, align 8, !dbg !854, !psr.id !878
  %586 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !854, !psr.id !879
  %587 = load i32, i32* %586, align 4, !dbg !854, !psr.id !880
  %588 = add i32 %587, %585, !dbg !854, !psr.id !881
  store i32 %588, i32* %586, align 4, !dbg !854, !psr.id !882
  %589 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !854, !psr.id !883
  %590 = load i32, i32* %589, align 4, !dbg !854, !psr.id !884
  %591 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !854, !psr.id !885
  %592 = load i32, i32* %591, align 16, !dbg !854, !psr.id !886
  %593 = xor i32 %592, %590, !dbg !854, !psr.id !887
  store i32 %593, i32* %591, align 16, !dbg !854, !psr.id !888
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !854, !psr.id !889
  %595 = load i32, i32* %594, align 16, !dbg !854, !psr.id !890
  %596 = shl i32 %595, 12, !dbg !854, !psr.id !891
  %597 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !854, !psr.id !892
  %598 = load i32, i32* %597, align 16, !dbg !854, !psr.id !893
  %599 = lshr i32 %598, 20, !dbg !854, !psr.id !894
  %600 = or i32 %596, %599, !dbg !854, !psr.id !895
  %601 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !854, !psr.id !896
  store i32 %600, i32* %601, align 16, !dbg !854, !psr.id !897
  %602 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !854, !psr.id !898
  %603 = load i32, i32* %602, align 16, !dbg !854, !psr.id !899
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !854, !psr.id !900
  %605 = load i32, i32* %604, align 4, !dbg !854, !psr.id !901
  %606 = add i32 %605, %603, !dbg !854, !psr.id !902
  store i32 %606, i32* %604, align 4, !dbg !854, !psr.id !903
  %607 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !854, !psr.id !904
  %608 = load i32, i32* %607, align 4, !dbg !854, !psr.id !905
  %609 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !854, !psr.id !906
  %610 = load i32, i32* %609, align 8, !dbg !854, !psr.id !907
  %611 = xor i32 %610, %608, !dbg !854, !psr.id !908
  store i32 %611, i32* %609, align 8, !dbg !854, !psr.id !909
  %612 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !854, !psr.id !910
  %613 = load i32, i32* %612, align 8, !dbg !854, !psr.id !911
  %614 = shl i32 %613, 8, !dbg !854, !psr.id !912
  %615 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !854, !psr.id !913
  %616 = load i32, i32* %615, align 8, !dbg !854, !psr.id !914
  %617 = lshr i32 %616, 24, !dbg !854, !psr.id !915
  %618 = or i32 %614, %617, !dbg !854, !psr.id !916
  %619 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !854, !psr.id !917
  store i32 %618, i32* %619, align 8, !dbg !854, !psr.id !918
  %620 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !854, !psr.id !919
  %621 = load i32, i32* %620, align 8, !dbg !854, !psr.id !920
  %622 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !854, !psr.id !921
  %623 = load i32, i32* %622, align 4, !dbg !854, !psr.id !922
  %624 = add i32 %623, %621, !dbg !854, !psr.id !923
  store i32 %624, i32* %622, align 4, !dbg !854, !psr.id !924
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !854, !psr.id !925
  %626 = load i32, i32* %625, align 4, !dbg !854, !psr.id !926
  %627 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !854, !psr.id !927
  %628 = load i32, i32* %627, align 16, !dbg !854, !psr.id !928
  %629 = xor i32 %628, %626, !dbg !854, !psr.id !929
  store i32 %629, i32* %627, align 16, !dbg !854, !psr.id !930
  %630 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !854, !psr.id !931
  %631 = load i32, i32* %630, align 16, !dbg !854, !psr.id !932
  %632 = shl i32 %631, 7, !dbg !854, !psr.id !933
  %633 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !854, !psr.id !934
  %634 = load i32, i32* %633, align 16, !dbg !854, !psr.id !935
  %635 = lshr i32 %634, 25, !dbg !854, !psr.id !936
  %636 = or i32 %632, %635, !dbg !854, !psr.id !937
  %637 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !854, !psr.id !938
  store i32 %636, i32* %637, align 16, !dbg !854, !psr.id !939
  br label %638, !dbg !854, !psr.id !940

638:                                              ; preds = %565
  br label %639, !dbg !941, !psr.id !942

639:                                              ; preds = %638
  %640 = add nsw i32 %.0, 1, !dbg !943, !psr.id !944
  call void @llvm.dbg.value(metadata i32 %640, metadata !213, metadata !DIExpression()), !dbg !215, !psr.id !945
  br label %44, !dbg !946, !llvm.loop !947, !psr.id !949

641:                                              ; preds = %44
  call void @llvm.dbg.value(metadata i64 0, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !950
  br label %642, !dbg !951, !psr.id !953

642:                                              ; preds = %652, %641
  %.2 = phi i64 [ 0, %641 ], [ %653, %652 ], !dbg !954, !psr.id !955
  call void @llvm.dbg.value(metadata i64 %.2, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !956
  %643 = icmp ult i64 %.2, 4, !dbg !957, !psr.id !959
  br i1 %643, label %644, label %654, !dbg !960, !psr.id !961

644:                                              ; preds = %642
  %645 = shl i64 %.2, 2, !dbg !962, !psr.id !964
  %646 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %645, !dbg !965, !psr.id !966
  %647 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.2, !dbg !967, !psr.id !968
  %648 = load i32, i32* %647, align 4, !dbg !967, !psr.id !969
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 %.2, !dbg !970, !psr.id !971
  %650 = load i32, i32* %649, align 4, !dbg !970, !psr.id !972
  %651 = add i32 %648, %650, !dbg !973, !psr.id !974
  call void @br_enc32le(i8* %646, i32 %651), !dbg !975, !psr.id !976
  br label %652, !dbg !977, !psr.id !978

652:                                              ; preds = %644
  %653 = add i64 %.2, 1, !dbg !979, !psr.id !980
  call void @llvm.dbg.value(metadata i64 %653, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !981
  br label %642, !dbg !982, !llvm.loop !983, !psr.id !985

654:                                              ; preds = %642
  call void @llvm.dbg.value(metadata i64 4, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !986
  br label %655, !dbg !987, !psr.id !989

655:                                              ; preds = %666, %654
  %.3 = phi i64 [ 4, %654 ], [ %667, %666 ], !dbg !990, !psr.id !991
  call void @llvm.dbg.value(metadata i64 %.3, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !992
  %656 = icmp ult i64 %.3, 12, !dbg !993, !psr.id !995
  br i1 %656, label %657, label %668, !dbg !996, !psr.id !997

657:                                              ; preds = %655
  %658 = shl i64 %.3, 2, !dbg !998, !psr.id !1000
  %659 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %658, !dbg !1001, !psr.id !1002
  %660 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.3, !dbg !1003, !psr.id !1004
  %661 = load i32, i32* %660, align 4, !dbg !1003, !psr.id !1005
  %662 = sub i64 %.3, 4, !dbg !1006, !psr.id !1007
  %663 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %662, !dbg !1008, !psr.id !1009
  %664 = load i32, i32* %663, align 4, !dbg !1008, !psr.id !1010, !ValueTainted !119
  %665 = add i32 %661, %664, !dbg !1011, !psr.id !1012, !ValueTainted !119
  call void @br_enc32le(i8* %659, i32 %665), !dbg !1013, !psr.id !1014
  br label %666, !dbg !1015, !psr.id !1016

666:                                              ; preds = %657
  %667 = add i64 %.3, 1, !dbg !1017, !psr.id !1018
  call void @llvm.dbg.value(metadata i64 %667, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !1019
  br label %655, !dbg !1020, !llvm.loop !1021, !psr.id !1023

668:                                              ; preds = %655
  %669 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 48, !dbg !1024, !psr.id !1025
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !1026, !psr.id !1027
  %671 = load i32, i32* %670, align 16, !dbg !1026, !psr.id !1028
  %672 = add i32 %671, %.02, !dbg !1029, !psr.id !1030
  call void @br_enc32le(i8* %669, i32 %672), !dbg !1031, !psr.id !1032
  call void @llvm.dbg.value(metadata i64 13, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !1033
  br label %673, !dbg !1034, !psr.id !1036

673:                                              ; preds = %684, %668
  %.4 = phi i64 [ 13, %668 ], [ %685, %684 ], !dbg !1037, !psr.id !1038
  call void @llvm.dbg.value(metadata i64 %.4, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !1039
  %674 = icmp ult i64 %.4, 16, !dbg !1040, !psr.id !1042
  br i1 %674, label %675, label %686, !dbg !1043, !psr.id !1044

675:                                              ; preds = %673
  %676 = shl i64 %.4, 2, !dbg !1045, !psr.id !1047
  %677 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %676, !dbg !1048, !psr.id !1049
  %678 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.4, !dbg !1050, !psr.id !1051
  %679 = load i32, i32* %678, align 4, !dbg !1050, !psr.id !1052
  %680 = sub i64 %.4, 13, !dbg !1053, !psr.id !1054
  %681 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %680, !dbg !1055, !psr.id !1056
  %682 = load i32, i32* %681, align 4, !dbg !1055, !psr.id !1057
  %683 = add i32 %679, %682, !dbg !1058, !psr.id !1059
  call void @br_enc32le(i8* %677, i32 %683), !dbg !1060, !psr.id !1061
  br label %684, !dbg !1062, !psr.id !1063

684:                                              ; preds = %675
  %685 = add i64 %.4, 1, !dbg !1064, !psr.id !1065
  call void @llvm.dbg.value(metadata i64 %685, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !1066
  br label %673, !dbg !1067, !llvm.loop !1068, !psr.id !1070

686:                                              ; preds = %673
  %687 = icmp ult i64 %.04, 64, !dbg !1071, !psr.id !1072
  br i1 %687, label %688, label %689, !dbg !1073, !psr.id !1074

688:                                              ; preds = %686
  br label %690, !dbg !1073, !psr.id !1075

689:                                              ; preds = %686
  br label %690, !dbg !1073, !psr.id !1076

690:                                              ; preds = %689, %688
  %691 = phi i64 [ %.04, %688 ], [ 64, %689 ], !dbg !1073, !psr.id !1077
  call void @llvm.dbg.value(metadata i64 %691, metadata !1078, metadata !DIExpression()), !dbg !215, !psr.id !1079
  call void @llvm.dbg.value(metadata i64 0, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !1080
  br label %692, !dbg !1081, !psr.id !1083

692:                                              ; preds = %703, %690
  %.5 = phi i64 [ 0, %690 ], [ %704, %703 ], !dbg !1084, !psr.id !1085
  call void @llvm.dbg.value(metadata i64 %.5, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !1086
  %693 = icmp ult i64 %.5, %691, !dbg !1087, !psr.id !1089
  br i1 %693, label %694, label %705, !dbg !1090, !psr.id !1091

694:                                              ; preds = %692
  %695 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %.5, !dbg !1092, !psr.id !1094
  %696 = load i8, i8* %695, align 1, !dbg !1092, !psr.id !1095, !ValueTainted !119
  %697 = zext i8 %696 to i32, !dbg !1092, !psr.id !1096, !ValueTainted !119
  %698 = getelementptr inbounds i8, i8* %.03, i64 %.5, !dbg !1097, !psr.id !1098, !PointTainted !116
  %699 = load i8, i8* %698, align 1, !dbg !1099, !psr.id !1100, !ValueTainted !119
  %700 = zext i8 %699 to i32, !dbg !1099, !psr.id !1101, !ValueTainted !119
  %701 = xor i32 %700, %697, !dbg !1099, !psr.id !1102, !ValueTainted !119
  %702 = trunc i32 %701 to i8, !dbg !1099, !psr.id !1103, !ValueTainted !119
  store i8 %702, i8* %698, align 1, !dbg !1099, !psr.id !1104
  br label %703, !dbg !1105, !psr.id !1106

703:                                              ; preds = %694
  %704 = add i64 %.5, 1, !dbg !1107, !psr.id !1108
  call void @llvm.dbg.value(metadata i64 %704, metadata !98, metadata !DIExpression()), !dbg !76, !psr.id !1109
  br label %692, !dbg !1110, !llvm.loop !1111, !psr.id !1113

705:                                              ; preds = %692
  %706 = getelementptr inbounds i8, i8* %.03, i64 %691, !dbg !1114, !psr.id !1115
  call void @llvm.dbg.value(metadata i8* %706, metadata !96, metadata !DIExpression()), !dbg !76, !psr.id !1116
  %707 = sub i64 %.04, %691, !dbg !1117, !psr.id !1118
  call void @llvm.dbg.value(metadata i64 %707, metadata !84, metadata !DIExpression()), !dbg !76, !psr.id !1119
  %708 = add i32 %.02, 1, !dbg !1120, !psr.id !1121
  call void @llvm.dbg.value(metadata i32 %708, metadata !80, metadata !DIExpression()), !dbg !76, !psr.id !1122
  br label %30, !dbg !166, !llvm.loop !1123, !psr.id !1125

709:                                              ; preds = %30
  ret i32 %.02, !dbg !1126, !psr.id !1127
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !1128 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1131, metadata !DIExpression()), !dbg !1132, !psr.id !1133
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1134, !psr.id !1135, !PointTainted !116
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !1136, !psr.id !1137, !PointTainted !116
  %4 = load i32, i32* %3, align 4, !dbg !1136, !psr.id !1138, !ValueTainted !119
  ret i32 %4, !dbg !1139, !psr.id !1140
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* %0, i32 %1) #0 !dbg !1141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1144, metadata !DIExpression()), !dbg !1145, !psr.id !1146
  call void @llvm.dbg.value(metadata i32 %1, metadata !1147, metadata !DIExpression()), !dbg !1145, !psr.id !1148
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1149, !psr.id !1150
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !1151, !psr.id !1152, !PointTainted !116
  store i32 %1, i32* %4, align 4, !dbg !1153, !psr.id !1154
  ret void, !dbg !1155, !psr.id !1156
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_poly1305_ctmulq_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !1157 {
  %10 = alloca [32 x i8], align 16, !psr.id !1163
  %11 = alloca [16 x i8], align 16, !psr.id !1164
  %12 = alloca [6 x i64], align 16, !psr.id !1165
  %13 = alloca [3 x i64], align 16, !psr.id !1166
  call void @llvm.dbg.value(metadata i8* %0, metadata !1167, metadata !DIExpression()), !dbg !1168, !psr.id !1169
  call void @llvm.dbg.value(metadata i8* %1, metadata !1170, metadata !DIExpression()), !dbg !1168, !psr.id !1171
  call void @llvm.dbg.value(metadata i8* %2, metadata !1172, metadata !DIExpression()), !dbg !1168, !psr.id !1173
  call void @llvm.dbg.value(metadata i64 %3, metadata !1174, metadata !DIExpression()), !dbg !1168, !psr.id !1175
  call void @llvm.dbg.value(metadata i8* %4, metadata !1176, metadata !DIExpression()), !dbg !1168, !psr.id !1177
  call void @llvm.dbg.value(metadata i64 %5, metadata !1178, metadata !DIExpression()), !dbg !1168, !psr.id !1179
  call void @llvm.dbg.value(metadata i8* %6, metadata !1180, metadata !DIExpression()), !dbg !1168, !psr.id !1181
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !1182, metadata !DIExpression()), !dbg !1168, !psr.id !1183
  call void @llvm.dbg.value(metadata i32 %8, metadata !1184, metadata !DIExpression()), !dbg !1168, !psr.id !1185
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !1186, metadata !DIExpression()), !dbg !1190, !psr.id !1191
  call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !1192, metadata !DIExpression()), !dbg !1194, !psr.id !1195
  call void @llvm.dbg.declare(metadata [6 x i64]* %12, metadata !1196, metadata !DIExpression()), !dbg !1200, !psr.id !1201
  call void @llvm.dbg.declare(metadata [3 x i64]* %13, metadata !1202, metadata !DIExpression()), !dbg !1204, !psr.id !1205
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1206, !psr.id !1207
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false), !dbg !1206, !psr.id !1208
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1209, !psr.id !1210
  %16 = call i32 %7(i8* %0, i8* %1, i32 0, i8* %15, i64 32), !dbg !1211, !psr.id !1212
  %17 = icmp ne i32 %8, 0, !dbg !1213, !psr.id !1215
  br i1 %17, label %18, label %20, !dbg !1216, !psr.id !1217

18:                                               ; preds = %9
  %19 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !1218, !psr.id !1220
  br label %20, !dbg !1221, !psr.id !1222

20:                                               ; preds = %18, %9
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 3, !dbg !1223, !psr.id !1224
  %22 = load i8, i8* %21, align 1, !dbg !1225, !psr.id !1226, !ValueTainted !119
  %23 = zext i8 %22 to i32, !dbg !1225, !psr.id !1227, !ValueTainted !119
  %24 = and i32 %23, 15, !dbg !1225, !psr.id !1228, !ValueTainted !119
  %25 = trunc i32 %24 to i8, !dbg !1225, !psr.id !1229, !ValueTainted !119
  store i8 %25, i8* %21, align 1, !dbg !1225, !psr.id !1230
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 4, !dbg !1231, !psr.id !1232
  %27 = load i8, i8* %26, align 4, !dbg !1233, !psr.id !1234, !ValueTainted !119
  %28 = zext i8 %27 to i32, !dbg !1233, !psr.id !1235, !ValueTainted !119
  %29 = and i32 %28, 252, !dbg !1233, !psr.id !1236, !ValueTainted !119
  %30 = trunc i32 %29 to i8, !dbg !1233, !psr.id !1237, !ValueTainted !119
  store i8 %30, i8* %26, align 4, !dbg !1233, !psr.id !1238
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 7, !dbg !1239, !psr.id !1240
  %32 = load i8, i8* %31, align 1, !dbg !1241, !psr.id !1242, !ValueTainted !119
  %33 = zext i8 %32 to i32, !dbg !1241, !psr.id !1243, !ValueTainted !119
  %34 = and i32 %33, 15, !dbg !1241, !psr.id !1244, !ValueTainted !119
  %35 = trunc i32 %34 to i8, !dbg !1241, !psr.id !1245, !ValueTainted !119
  store i8 %35, i8* %31, align 1, !dbg !1241, !psr.id !1246
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 8, !dbg !1247, !psr.id !1248
  %37 = load i8, i8* %36, align 8, !dbg !1249, !psr.id !1250, !ValueTainted !119
  %38 = zext i8 %37 to i32, !dbg !1249, !psr.id !1251, !ValueTainted !119
  %39 = and i32 %38, 252, !dbg !1249, !psr.id !1252, !ValueTainted !119
  %40 = trunc i32 %39 to i8, !dbg !1249, !psr.id !1253, !ValueTainted !119
  store i8 %40, i8* %36, align 8, !dbg !1249, !psr.id !1254
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 11, !dbg !1255, !psr.id !1256
  %42 = load i8, i8* %41, align 1, !dbg !1257, !psr.id !1258, !ValueTainted !119
  %43 = zext i8 %42 to i32, !dbg !1257, !psr.id !1259, !ValueTainted !119
  %44 = and i32 %43, 15, !dbg !1257, !psr.id !1260, !ValueTainted !119
  %45 = trunc i32 %44 to i8, !dbg !1257, !psr.id !1261, !ValueTainted !119
  store i8 %45, i8* %41, align 1, !dbg !1257, !psr.id !1262
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 12, !dbg !1263, !psr.id !1264
  %47 = load i8, i8* %46, align 4, !dbg !1265, !psr.id !1266, !ValueTainted !119
  %48 = zext i8 %47 to i32, !dbg !1265, !psr.id !1267, !ValueTainted !119
  %49 = and i32 %48, 252, !dbg !1265, !psr.id !1268, !ValueTainted !119
  %50 = trunc i32 %49 to i8, !dbg !1265, !psr.id !1269, !ValueTainted !119
  store i8 %50, i8* %46, align 4, !dbg !1265, !psr.id !1270
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 15, !dbg !1271, !psr.id !1272
  %52 = load i8, i8* %51, align 1, !dbg !1273, !psr.id !1274, !ValueTainted !119
  %53 = zext i8 %52 to i32, !dbg !1273, !psr.id !1275, !ValueTainted !119
  %54 = and i32 %53, 15, !dbg !1273, !psr.id !1276, !ValueTainted !119
  %55 = trunc i32 %54 to i8, !dbg !1273, !psr.id !1277, !ValueTainted !119
  store i8 %55, i8* %51, align 1, !dbg !1273, !psr.id !1278
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1279, !psr.id !1280
  %57 = getelementptr inbounds i8, i8* %56, i64 0, !dbg !1281, !psr.id !1282
  %58 = call i64 @br_dec64le(i8* %57), !dbg !1283, !psr.id !1284, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %58, metadata !1285, metadata !DIExpression()), !dbg !1168, !psr.id !1286
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1287, !psr.id !1288
  %60 = getelementptr inbounds i8, i8* %59, i64 8, !dbg !1289, !psr.id !1290
  %61 = call i64 @br_dec64le(i8* %60), !dbg !1291, !psr.id !1292
  call void @llvm.dbg.value(metadata i64 %61, metadata !1293, metadata !DIExpression()), !dbg !1168, !psr.id !1294
  %62 = shl i64 %58, 20, !dbg !1295, !psr.id !1296, !ValueTainted !119
  %63 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0, !dbg !1297, !psr.id !1298
  store i64 %62, i64* %63, align 16, !dbg !1299, !psr.id !1300
  %64 = lshr i64 %58, 24, !dbg !1301, !psr.id !1302, !ValueTainted !119
  %65 = shl i64 %61, 40, !dbg !1303, !psr.id !1304
  %66 = or i64 %64, %65, !dbg !1305, !psr.id !1306, !ValueTainted !119
  %67 = and i64 %66, -1048576, !dbg !1307, !psr.id !1308, !ValueTainted !119
  %68 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 1, !dbg !1309, !psr.id !1310
  store i64 %67, i64* %68, align 8, !dbg !1311, !psr.id !1312
  %69 = lshr i64 %61, 4, !dbg !1313, !psr.id !1314
  %70 = and i64 %69, -1048576, !dbg !1315, !psr.id !1316
  %71 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 2, !dbg !1317, !psr.id !1318
  store i64 %70, i64* %71, align 16, !dbg !1319, !psr.id !1320
  %72 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 1, !dbg !1321, !psr.id !1322
  %73 = load i64, i64* %72, align 8, !dbg !1321, !psr.id !1323, !ValueTainted !119
  %74 = lshr i64 %73, 20, !dbg !1324, !psr.id !1325, !ValueTainted !119
  %75 = mul i64 20, %74, !dbg !1326, !psr.id !1327, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %75, metadata !1293, metadata !DIExpression()), !dbg !1168, !psr.id !1328
  %76 = shl i64 %75, 20, !dbg !1329, !psr.id !1330, !ValueTainted !119
  %77 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 3, !dbg !1331, !psr.id !1332
  store i64 %76, i64* %77, align 8, !dbg !1333, !psr.id !1334
  %78 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 2, !dbg !1335, !psr.id !1336
  %79 = load i64, i64* %78, align 16, !dbg !1335, !psr.id !1337, !ValueTainted !119
  %80 = mul i64 20, %79, !dbg !1338, !psr.id !1339, !ValueTainted !119
  %81 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 5, !dbg !1340, !psr.id !1341
  store i64 %80, i64* %81, align 8, !dbg !1342, !psr.id !1343
  %82 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 5, !dbg !1344, !psr.id !1345
  %83 = load i64, i64* %82, align 8, !dbg !1344, !psr.id !1346, !ValueTainted !119
  %84 = lshr i64 %75, 24, !dbg !1347, !psr.id !1348, !ValueTainted !119
  %85 = add i64 %83, %84, !dbg !1349, !psr.id !1350, !ValueTainted !119
  %86 = and i64 %85, -1048576, !dbg !1351, !psr.id !1352, !ValueTainted !119
  %87 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 4, !dbg !1353, !psr.id !1354
  store i64 %86, i64* %87, align 16, !dbg !1355, !psr.id !1356
  %88 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1357, !psr.id !1358
  store i64 0, i64* %88, align 16, !dbg !1359, !psr.id !1360
  %89 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !1361, !psr.id !1362
  store i64 0, i64* %89, align 8, !dbg !1363, !psr.id !1364
  %90 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !1365, !psr.id !1366
  store i64 0, i64* %90, align 16, !dbg !1367, !psr.id !1368
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !1369, !psr.id !1370
  call void @br_enc64le(i8* %91, i64 %5), !dbg !1371, !psr.id !1372
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !1373, !psr.id !1374
  %93 = getelementptr inbounds i8, i8* %92, i64 8, !dbg !1375, !psr.id !1376
  call void @br_enc64le(i8* %93, i64 %3), !dbg !1377, !psr.id !1378
  %94 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1379, !psr.id !1380
  %95 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0, !dbg !1381, !psr.id !1382
  call void @poly1305_inner(i64* %94, i64* %95, i8* %4, i64 %5), !dbg !1383, !psr.id !1384
  %96 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1385, !psr.id !1386
  %97 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0, !dbg !1387, !psr.id !1388
  call void @poly1305_inner(i64* %96, i64* %97, i8* %2, i64 %3), !dbg !1389, !psr.id !1390
  %98 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1391, !psr.id !1392
  %99 = getelementptr inbounds [6 x i64], [6 x i64]* %12, i64 0, i64 0, !dbg !1393, !psr.id !1394
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !1395, !psr.id !1396
  call void @poly1305_inner_small(i64* %98, i64* %99, i8* %100, i64 16), !dbg !1397, !psr.id !1398
  %101 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1399, !psr.id !1400
  %102 = load i64, i64* %101, align 16, !dbg !1399, !psr.id !1401, !ValueTainted !119
  %103 = lshr i64 %102, 44, !dbg !1402, !psr.id !1403, !ValueTainted !119
  %104 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !1404, !psr.id !1405
  %105 = load i64, i64* %104, align 8, !dbg !1406, !psr.id !1407, !ValueTainted !119
  %106 = add i64 %105, %103, !dbg !1406, !psr.id !1408, !ValueTainted !119
  store i64 %106, i64* %104, align 8, !dbg !1406, !psr.id !1409
  %107 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1410, !psr.id !1411
  %108 = load i64, i64* %107, align 16, !dbg !1412, !psr.id !1413, !ValueTainted !119
  %109 = and i64 %108, 17592186044415, !dbg !1412, !psr.id !1414, !ValueTainted !119
  store i64 %109, i64* %107, align 16, !dbg !1412, !psr.id !1415
  %110 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !1416, !psr.id !1417
  %111 = load i64, i64* %110, align 8, !dbg !1416, !psr.id !1418, !ValueTainted !119
  %112 = lshr i64 %111, 44, !dbg !1419, !psr.id !1420, !ValueTainted !119
  %113 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !1421, !psr.id !1422
  %114 = load i64, i64* %113, align 16, !dbg !1423, !psr.id !1424, !ValueTainted !119
  %115 = add i64 %114, %112, !dbg !1423, !psr.id !1425, !ValueTainted !119
  store i64 %115, i64* %113, align 16, !dbg !1423, !psr.id !1426
  %116 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !1427, !psr.id !1428
  %117 = load i64, i64* %116, align 8, !dbg !1429, !psr.id !1430, !ValueTainted !119
  %118 = and i64 %117, 17592186044415, !dbg !1429, !psr.id !1431, !ValueTainted !119
  store i64 %118, i64* %116, align 8, !dbg !1429, !psr.id !1432
  %119 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !1433, !psr.id !1434
  %120 = load i64, i64* %119, align 16, !dbg !1433, !psr.id !1435, !ValueTainted !119
  %121 = lshr i64 %120, 42, !dbg !1436, !psr.id !1437, !ValueTainted !119
  %122 = mul i64 5, %121, !dbg !1438, !psr.id !1439, !ValueTainted !119
  %123 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1440, !psr.id !1441
  %124 = load i64, i64* %123, align 16, !dbg !1442, !psr.id !1443, !ValueTainted !119
  %125 = add i64 %124, %122, !dbg !1442, !psr.id !1444, !ValueTainted !119
  store i64 %125, i64* %123, align 16, !dbg !1442, !psr.id !1445
  %126 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !1446, !psr.id !1447
  %127 = load i64, i64* %126, align 16, !dbg !1448, !psr.id !1449, !ValueTainted !119
  %128 = and i64 %127, 4398046511103, !dbg !1448, !psr.id !1450, !ValueTainted !119
  store i64 %128, i64* %126, align 16, !dbg !1448, !psr.id !1451
  %129 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1452, !psr.id !1453
  %130 = load i64, i64* %129, align 16, !dbg !1452, !psr.id !1454, !ValueTainted !119
  %131 = lshr i64 %130, 44, !dbg !1455, !psr.id !1456, !ValueTainted !119
  %132 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !1457, !psr.id !1458
  %133 = load i64, i64* %132, align 8, !dbg !1459, !psr.id !1460, !ValueTainted !119
  %134 = add i64 %133, %131, !dbg !1459, !psr.id !1461, !ValueTainted !119
  store i64 %134, i64* %132, align 8, !dbg !1459, !psr.id !1462
  %135 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1463, !psr.id !1464
  %136 = load i64, i64* %135, align 16, !dbg !1465, !psr.id !1466, !ValueTainted !119
  %137 = and i64 %136, 17592186044415, !dbg !1465, !psr.id !1467, !ValueTainted !119
  store i64 %137, i64* %135, align 16, !dbg !1465, !psr.id !1468
  %138 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !1469, !psr.id !1470
  %139 = load i64, i64* %138, align 8, !dbg !1469, !psr.id !1471, !ValueTainted !119
  %140 = lshr i64 %139, 44, !dbg !1472, !psr.id !1473, !ValueTainted !119
  %141 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !1474, !psr.id !1475
  %142 = load i64, i64* %141, align 16, !dbg !1476, !psr.id !1477, !ValueTainted !119
  %143 = add i64 %142, %140, !dbg !1476, !psr.id !1478, !ValueTainted !119
  store i64 %143, i64* %141, align 16, !dbg !1476, !psr.id !1479
  %144 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !1480, !psr.id !1481
  %145 = load i64, i64* %144, align 8, !dbg !1482, !psr.id !1483, !ValueTainted !119
  %146 = and i64 %145, 17592186044415, !dbg !1482, !psr.id !1484, !ValueTainted !119
  store i64 %146, i64* %144, align 8, !dbg !1482, !psr.id !1485
  %147 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !1486, !psr.id !1487
  %148 = load i64, i64* %147, align 16, !dbg !1486, !psr.id !1488, !ValueTainted !119
  %149 = lshr i64 %148, 42, !dbg !1489, !psr.id !1490, !ValueTainted !119
  %150 = mul i64 5, %149, !dbg !1491, !psr.id !1492, !ValueTainted !119
  %151 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1493, !psr.id !1494
  %152 = load i64, i64* %151, align 16, !dbg !1495, !psr.id !1496, !ValueTainted !119
  %153 = add i64 %152, %150, !dbg !1495, !psr.id !1497, !ValueTainted !119
  store i64 %153, i64* %151, align 16, !dbg !1495, !psr.id !1498
  %154 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !1499, !psr.id !1500
  %155 = load i64, i64* %154, align 16, !dbg !1501, !psr.id !1502, !ValueTainted !119
  %156 = and i64 %155, 4398046511103, !dbg !1501, !psr.id !1503, !ValueTainted !119
  store i64 %156, i64* %154, align 16, !dbg !1501, !psr.id !1504
  %157 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1505, !psr.id !1506
  %158 = load i64, i64* %157, align 16, !dbg !1505, !psr.id !1507, !ValueTainted !119
  %159 = trunc i64 %158 to i32, !dbg !1508, !psr.id !1509, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %159, metadata !1510, metadata !DIExpression()), !dbg !1168, !psr.id !1511
  %160 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0, !dbg !1512, !psr.id !1513
  %161 = load i64, i64* %160, align 16, !dbg !1512, !psr.id !1514, !ValueTainted !119
  %162 = lshr i64 %161, 32, !dbg !1515, !psr.id !1516, !ValueTainted !119
  %163 = trunc i64 %162 to i32, !dbg !1517, !psr.id !1518, !ValueTainted !119
  %164 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !1519, !psr.id !1520
  %165 = load i64, i64* %164, align 8, !dbg !1519, !psr.id !1521, !ValueTainted !119
  %166 = trunc i64 %165 to i32, !dbg !1522, !psr.id !1523, !ValueTainted !119
  %167 = shl i32 %166, 12, !dbg !1524, !psr.id !1525, !ValueTainted !119
  %168 = or i32 %163, %167, !dbg !1526, !psr.id !1527, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %168, metadata !1528, metadata !DIExpression()), !dbg !1168, !psr.id !1529
  %169 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1, !dbg !1530, !psr.id !1531
  %170 = load i64, i64* %169, align 8, !dbg !1530, !psr.id !1532, !ValueTainted !119
  %171 = lshr i64 %170, 20, !dbg !1533, !psr.id !1534, !ValueTainted !119
  %172 = trunc i64 %171 to i32, !dbg !1535, !psr.id !1536, !ValueTainted !119
  %173 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !1537, !psr.id !1538
  %174 = load i64, i64* %173, align 16, !dbg !1537, !psr.id !1539, !ValueTainted !119
  %175 = trunc i64 %174 to i32, !dbg !1540, !psr.id !1541, !ValueTainted !119
  %176 = shl i32 %175, 24, !dbg !1542, !psr.id !1543, !ValueTainted !119
  %177 = or i32 %172, %176, !dbg !1544, !psr.id !1545, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %177, metadata !1546, metadata !DIExpression()), !dbg !1168, !psr.id !1547
  %178 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !1548, !psr.id !1549
  %179 = load i64, i64* %178, align 16, !dbg !1548, !psr.id !1550, !ValueTainted !119
  %180 = lshr i64 %179, 8, !dbg !1551, !psr.id !1552, !ValueTainted !119
  %181 = trunc i64 %180 to i32, !dbg !1553, !psr.id !1554, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %181, metadata !1555, metadata !DIExpression()), !dbg !1168, !psr.id !1556
  %182 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2, !dbg !1557, !psr.id !1558
  %183 = load i64, i64* %182, align 16, !dbg !1557, !psr.id !1559, !ValueTainted !119
  %184 = lshr i64 %183, 40, !dbg !1560, !psr.id !1561, !ValueTainted !119
  %185 = trunc i64 %184 to i32, !dbg !1562, !psr.id !1563, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %185, metadata !1564, metadata !DIExpression()), !dbg !1168, !psr.id !1565
  %186 = call i32 @GT(i32 %159, i32 -6), !dbg !1566, !psr.id !1567, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %186, metadata !1568, metadata !DIExpression()), !dbg !1168, !psr.id !1569
  %187 = call i32 @EQ(i32 %168, i32 -1), !dbg !1570, !psr.id !1571, !ValueTainted !119
  %188 = and i32 %186, %187, !dbg !1572, !psr.id !1573, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %188, metadata !1568, metadata !DIExpression()), !dbg !1168, !psr.id !1574
  %189 = call i32 @EQ(i32 %177, i32 -1), !dbg !1575, !psr.id !1576, !ValueTainted !119
  %190 = and i32 %188, %189, !dbg !1577, !psr.id !1578, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %190, metadata !1568, metadata !DIExpression()), !dbg !1168, !psr.id !1579
  %191 = call i32 @EQ(i32 %181, i32 -1), !dbg !1580, !psr.id !1581, !ValueTainted !119
  %192 = and i32 %190, %191, !dbg !1582, !psr.id !1583, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %192, metadata !1568, metadata !DIExpression()), !dbg !1168, !psr.id !1584
  %193 = call i32 @EQ(i32 %185, i32 3), !dbg !1585, !psr.id !1586, !ValueTainted !119
  %194 = and i32 %192, %193, !dbg !1587, !psr.id !1588, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %194, metadata !1568, metadata !DIExpression()), !dbg !1168, !psr.id !1589
  %195 = add i32 %159, 5, !dbg !1590, !psr.id !1591, !ValueTainted !119
  %196 = call i32 @MUX(i32 %194, i32 %195, i32 %159), !dbg !1592, !psr.id !1593, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %196, metadata !1510, metadata !DIExpression()), !dbg !1168, !psr.id !1594
  %197 = call i32 @MUX(i32 %194, i32 0, i32 %168), !dbg !1595, !psr.id !1596, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %197, metadata !1528, metadata !DIExpression()), !dbg !1168, !psr.id !1597
  %198 = call i32 @MUX(i32 %194, i32 0, i32 %177), !dbg !1598, !psr.id !1599, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %198, metadata !1546, metadata !DIExpression()), !dbg !1168, !psr.id !1600
  %199 = call i32 @MUX(i32 %194, i32 0, i32 %181), !dbg !1601, !psr.id !1602, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %199, metadata !1555, metadata !DIExpression()), !dbg !1168, !psr.id !1603
  %200 = zext i32 %196 to i64, !dbg !1604, !psr.id !1605, !ValueTainted !119
  %201 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1606, !psr.id !1607
  %202 = getelementptr inbounds i8, i8* %201, i64 16, !dbg !1608, !psr.id !1609
  %203 = call i32 @br_dec32le.1(i8* %202), !dbg !1610, !psr.id !1611, !ValueTainted !119
  %204 = zext i32 %203 to i64, !dbg !1612, !psr.id !1613, !ValueTainted !119
  %205 = add i64 %200, %204, !dbg !1614, !psr.id !1615, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %205, metadata !1616, metadata !DIExpression()), !dbg !1168, !psr.id !1617
  %206 = zext i32 %197 to i64, !dbg !1618, !psr.id !1619, !ValueTainted !119
  %207 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1620, !psr.id !1621
  %208 = getelementptr inbounds i8, i8* %207, i64 20, !dbg !1622, !psr.id !1623
  %209 = call i32 @br_dec32le.1(i8* %208), !dbg !1624, !psr.id !1625
  %210 = zext i32 %209 to i64, !dbg !1626, !psr.id !1627
  %211 = add i64 %206, %210, !dbg !1628, !psr.id !1629, !ValueTainted !119
  %212 = lshr i64 %205, 32, !dbg !1630, !psr.id !1631, !ValueTainted !119
  %213 = add i64 %211, %212, !dbg !1632, !psr.id !1633, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %213, metadata !1634, metadata !DIExpression()), !dbg !1168, !psr.id !1635
  %214 = zext i32 %198 to i64, !dbg !1636, !psr.id !1637, !ValueTainted !119
  %215 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1638, !psr.id !1639
  %216 = getelementptr inbounds i8, i8* %215, i64 24, !dbg !1640, !psr.id !1641
  %217 = call i32 @br_dec32le.1(i8* %216), !dbg !1642, !psr.id !1643
  %218 = zext i32 %217 to i64, !dbg !1644, !psr.id !1645
  %219 = add i64 %214, %218, !dbg !1646, !psr.id !1647, !ValueTainted !119
  %220 = lshr i64 %213, 32, !dbg !1648, !psr.id !1649, !ValueTainted !119
  %221 = add i64 %219, %220, !dbg !1650, !psr.id !1651, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %221, metadata !1652, metadata !DIExpression()), !dbg !1168, !psr.id !1653
  %222 = zext i32 %199 to i64, !dbg !1654, !psr.id !1655, !ValueTainted !119
  %223 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1656, !psr.id !1657
  %224 = getelementptr inbounds i8, i8* %223, i64 28, !dbg !1658, !psr.id !1659
  %225 = call i32 @br_dec32le.1(i8* %224), !dbg !1660, !psr.id !1661
  %226 = zext i32 %225 to i64, !dbg !1662, !psr.id !1663
  %227 = add i64 %222, %226, !dbg !1664, !psr.id !1665, !ValueTainted !119
  %228 = lshr i64 %221, 32, !dbg !1666, !psr.id !1667, !ValueTainted !119
  %229 = add i64 %227, %228, !dbg !1668, !psr.id !1669, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %229, metadata !1670, metadata !DIExpression()), !dbg !1168, !psr.id !1671
  %230 = trunc i64 %205 to i32, !dbg !1672, !psr.id !1673, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %230, metadata !1510, metadata !DIExpression()), !dbg !1168, !psr.id !1674
  %231 = trunc i64 %213 to i32, !dbg !1675, !psr.id !1676, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %231, metadata !1528, metadata !DIExpression()), !dbg !1168, !psr.id !1677
  %232 = trunc i64 %221 to i32, !dbg !1678, !psr.id !1679, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %232, metadata !1546, metadata !DIExpression()), !dbg !1168, !psr.id !1680
  %233 = trunc i64 %229 to i32, !dbg !1681, !psr.id !1682, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %233, metadata !1555, metadata !DIExpression()), !dbg !1168, !psr.id !1683
  %234 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !1684, !psr.id !1685
  call void @br_enc32le.2(i8* %234, i32 %230), !dbg !1686, !psr.id !1687
  %235 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1688, !psr.id !1689
  call void @br_enc32le.2(i8* %235, i32 %231), !dbg !1690, !psr.id !1691
  %236 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !1692, !psr.id !1693
  call void @br_enc32le.2(i8* %236, i32 %232), !dbg !1694, !psr.id !1695
  %237 = getelementptr inbounds i8, i8* %6, i64 12, !dbg !1696, !psr.id !1697
  call void @br_enc32le.2(i8* %237, i32 %233), !dbg !1698, !psr.id !1699
  %238 = icmp ne i32 %8, 0, !dbg !1700, !psr.id !1702
  br i1 %238, label %241, label %239, !dbg !1703, !psr.id !1704

239:                                              ; preds = %20
  %240 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !1705, !psr.id !1707
  br label %241, !dbg !1708, !psr.id !1709

241:                                              ; preds = %239, %20
  ret void, !dbg !1710, !psr.id !1711
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @br_dec64le(i8* %0) #0 !dbg !1712 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1715, metadata !DIExpression()), !dbg !1716, !psr.id !1717
  %2 = bitcast i8* %0 to %union.br_union_u64*, !dbg !1718, !psr.id !1719
  %3 = bitcast %union.br_union_u64* %2 to i64*, !dbg !1720, !psr.id !1721
  %4 = load i64, i64* %3, align 8, !dbg !1720, !psr.id !1722, !ValueTainted !119
  ret i64 %4, !dbg !1723, !psr.id !1724
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64le(i8* %0, i64 %1) #0 !dbg !1725 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1728, metadata !DIExpression()), !dbg !1729, !psr.id !1730
  call void @llvm.dbg.value(metadata i64 %1, metadata !1731, metadata !DIExpression()), !dbg !1729, !psr.id !1732
  %3 = bitcast i8* %0 to %union.br_union_u64*, !dbg !1733, !psr.id !1734
  %4 = bitcast %union.br_union_u64* %3 to i64*, !dbg !1735, !psr.id !1736
  store i64 %1, i64* %4, align 8, !dbg !1737, !psr.id !1738
  ret void, !dbg !1739, !psr.id !1740
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner(i64* %0, i64* %1, i8* %2, i64 %3) #0 !dbg !1741 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !1745, metadata !DIExpression()), !dbg !1746, !psr.id !1747
  call void @llvm.dbg.value(metadata i64* %1, metadata !1748, metadata !DIExpression()), !dbg !1746, !psr.id !1749
  call void @llvm.dbg.value(metadata i8* %2, metadata !1750, metadata !DIExpression()), !dbg !1746, !psr.id !1751
  call void @llvm.dbg.value(metadata i64 %3, metadata !1752, metadata !DIExpression()), !dbg !1746, !psr.id !1753
  %5 = icmp uge i64 %3, 64, !dbg !1754, !psr.id !1756
  br i1 %5, label %6, label %10, !dbg !1757, !psr.id !1758

6:                                                ; preds = %4
  %7 = and i64 %3, -64, !dbg !1759, !psr.id !1761
  call void @llvm.dbg.value(metadata i64 %7, metadata !1762, metadata !DIExpression()), !dbg !1763, !psr.id !1764
  call void @poly1305_inner_big(i64* %0, i64* %1, i8* %2, i64 %7), !dbg !1765, !psr.id !1766
  %8 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !1767, !psr.id !1768
  call void @llvm.dbg.value(metadata i8* %8, metadata !1750, metadata !DIExpression()), !dbg !1746, !psr.id !1769
  %9 = sub i64 %3, %7, !dbg !1770, !psr.id !1771
  call void @llvm.dbg.value(metadata i64 %9, metadata !1752, metadata !DIExpression()), !dbg !1746, !psr.id !1772
  br label %10, !dbg !1773, !psr.id !1774

10:                                               ; preds = %6, %4
  %.01 = phi i8* [ %8, %6 ], [ %2, %4 ], !psr.id !1775
  %.0 = phi i64 [ %9, %6 ], [ %3, %4 ], !psr.id !1776
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1752, metadata !DIExpression()), !dbg !1746, !psr.id !1777
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1750, metadata !DIExpression()), !dbg !1746, !psr.id !1778
  %11 = icmp ugt i64 %.0, 0, !dbg !1779, !psr.id !1781
  br i1 %11, label %12, label %13, !dbg !1782, !psr.id !1783

12:                                               ; preds = %10
  call void @poly1305_inner_small(i64* %0, i64* %1, i8* %.01, i64 %.0), !dbg !1784, !psr.id !1786
  br label %13, !dbg !1787, !psr.id !1788

13:                                               ; preds = %12, %10
  ret void, !dbg !1789, !psr.id !1790
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner_small(i64* %0, i64* %1, i8* %2, i64 %3) #0 !dbg !1791 {
  %5 = alloca [16 x i8], align 16, !psr.id !1792
  call void @llvm.dbg.value(metadata i64* %0, metadata !1793, metadata !DIExpression()), !dbg !1794, !psr.id !1795
  call void @llvm.dbg.value(metadata i64* %1, metadata !1796, metadata !DIExpression()), !dbg !1794, !psr.id !1797
  call void @llvm.dbg.value(metadata i8* %2, metadata !1798, metadata !DIExpression()), !dbg !1794, !psr.id !1799
  call void @llvm.dbg.value(metadata i64 %3, metadata !1800, metadata !DIExpression()), !dbg !1794, !psr.id !1801
  %6 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !1802, !psr.id !1803
  %7 = load i64, i64* %6, align 8, !dbg !1802, !psr.id !1804, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %7, metadata !1805, metadata !DIExpression()), !dbg !1794, !psr.id !1806
  %8 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !1807, !psr.id !1808
  %9 = load i64, i64* %8, align 8, !dbg !1807, !psr.id !1809, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %9, metadata !1810, metadata !DIExpression()), !dbg !1794, !psr.id !1811
  %10 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !1812, !psr.id !1813
  %11 = load i64, i64* %10, align 8, !dbg !1812, !psr.id !1814, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %11, metadata !1815, metadata !DIExpression()), !dbg !1794, !psr.id !1816
  %12 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !1817, !psr.id !1818
  %13 = load i64, i64* %12, align 8, !dbg !1817, !psr.id !1819, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %13, metadata !1820, metadata !DIExpression()), !dbg !1794, !psr.id !1821
  %14 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !1822, !psr.id !1823
  %15 = load i64, i64* %14, align 8, !dbg !1822, !psr.id !1824, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %15, metadata !1825, metadata !DIExpression()), !dbg !1794, !psr.id !1826
  %16 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !1827, !psr.id !1828
  %17 = load i64, i64* %16, align 8, !dbg !1827, !psr.id !1829, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %17, metadata !1830, metadata !DIExpression()), !dbg !1794, !psr.id !1831
  %18 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !1832, !psr.id !1833
  %19 = load i64, i64* %18, align 8, !dbg !1832, !psr.id !1834, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %19, metadata !1835, metadata !DIExpression()), !dbg !1794, !psr.id !1836
  %20 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !1837, !psr.id !1838
  %21 = load i64, i64* %20, align 8, !dbg !1837, !psr.id !1839, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %21, metadata !1840, metadata !DIExpression()), !dbg !1794, !psr.id !1841
  %22 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !1842, !psr.id !1843
  %23 = load i64, i64* %22, align 8, !dbg !1842, !psr.id !1844, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %23, metadata !1845, metadata !DIExpression()), !dbg !1794, !psr.id !1846
  call void @llvm.dbg.value(metadata i8* %2, metadata !1847, metadata !DIExpression()), !dbg !1794, !psr.id !1848
  br label %24, !dbg !1849, !psr.id !1850

24:                                               ; preds = %147, %4
  %.05 = phi i64 [ %23, %4 ], [ %161, %147 ], !dbg !1794, !psr.id !1851, !ValueTainted !119
  %.04 = phi i64 [ %21, %4 ], [ %157, %147 ], !dbg !1794, !psr.id !1852, !ValueTainted !119
  %.03 = phi i64 [ %19, %4 ], [ %160, %147 ], !dbg !1794, !psr.id !1853, !ValueTainted !119
  %.01 = phi i8* [ %2, %4 ], [ %162, %147 ], !dbg !1794, !psr.id !1854
  %.0 = phi i64 [ %3, %4 ], [ %163, %147 ], !psr.id !1855
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1800, metadata !DIExpression()), !dbg !1794, !psr.id !1856
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1847, metadata !DIExpression()), !dbg !1794, !psr.id !1857
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1835, metadata !DIExpression()), !dbg !1794, !psr.id !1858
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1840, metadata !DIExpression()), !dbg !1794, !psr.id !1859
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1845, metadata !DIExpression()), !dbg !1794, !psr.id !1860
  %25 = icmp ugt i64 %.0, 0, !dbg !1861, !psr.id !1862
  br i1 %25, label %26, label %164, !dbg !1849, !psr.id !1863

26:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !1864, metadata !DIExpression()), !dbg !1866, !psr.id !1867
  %27 = icmp ult i64 %.0, 16, !dbg !1868, !psr.id !1870
  br i1 %27, label %28, label %34, !dbg !1871, !psr.id !1872

28:                                               ; preds = %26
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1873, !psr.id !1875
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 1 %.01, i64 %.0, i1 false), !dbg !1873, !psr.id !1876
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1877, !psr.id !1878
  %31 = getelementptr inbounds i8, i8* %30, i64 %.0, !dbg !1879, !psr.id !1880
  %32 = sub i64 16, %.0, !dbg !1881, !psr.id !1882
  call void @llvm.memset.p0i8.i64(i8* align 1 %31, i8 0, i64 %32, i1 false), !dbg !1883, !psr.id !1884
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1885, !psr.id !1886
  call void @llvm.dbg.value(metadata i8* %33, metadata !1847, metadata !DIExpression()), !dbg !1794, !psr.id !1887
  call void @llvm.dbg.value(metadata i64 16, metadata !1800, metadata !DIExpression()), !dbg !1794, !psr.id !1888
  br label %34, !dbg !1889, !psr.id !1890

34:                                               ; preds = %28, %26
  %.12 = phi i8* [ %33, %28 ], [ %.01, %26 ], !dbg !1794, !psr.id !1891
  %.1 = phi i64 [ 16, %28 ], [ %.0, %26 ], !psr.id !1892
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1800, metadata !DIExpression()), !dbg !1794, !psr.id !1893
  call void @llvm.dbg.value(metadata i8* %.12, metadata !1847, metadata !DIExpression()), !dbg !1794, !psr.id !1894
  %35 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !1895, !psr.id !1896
  %36 = call i64 @br_dec64le(i8* %35), !dbg !1897, !psr.id !1898
  call void @llvm.dbg.value(metadata i64 %36, metadata !1899, metadata !DIExpression()), !dbg !1900, !psr.id !1901
  %37 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !1902, !psr.id !1903
  %38 = call i64 @br_dec64le(i8* %37), !dbg !1904, !psr.id !1905
  call void @llvm.dbg.value(metadata i64 %38, metadata !1906, metadata !DIExpression()), !dbg !1900, !psr.id !1907
  %39 = lshr i64 %38, 24, !dbg !1908, !psr.id !1909
  call void @llvm.dbg.value(metadata i64 %39, metadata !1910, metadata !DIExpression()), !dbg !1900, !psr.id !1911
  %40 = lshr i64 %36, 44, !dbg !1912, !psr.id !1913
  %41 = shl i64 %38, 20, !dbg !1914, !psr.id !1915
  %42 = or i64 %40, %41, !dbg !1916, !psr.id !1917
  %43 = and i64 %42, 17592186044415, !dbg !1918, !psr.id !1919
  call void @llvm.dbg.value(metadata i64 %43, metadata !1906, metadata !DIExpression()), !dbg !1900, !psr.id !1920
  %44 = and i64 %36, 17592186044415, !dbg !1921, !psr.id !1922
  call void @llvm.dbg.value(metadata i64 %44, metadata !1899, metadata !DIExpression()), !dbg !1900, !psr.id !1923
  %45 = add i64 %.03, %44, !dbg !1924, !psr.id !1925, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %45, metadata !1835, metadata !DIExpression()), !dbg !1794, !psr.id !1926
  %46 = add i64 %.04, %43, !dbg !1927, !psr.id !1928, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %46, metadata !1840, metadata !DIExpression()), !dbg !1794, !psr.id !1929
  %47 = add i64 %39, 1099511627776, !dbg !1930, !psr.id !1931
  %48 = add i64 %.05, %47, !dbg !1932, !psr.id !1933, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %48, metadata !1845, metadata !DIExpression()), !dbg !1794, !psr.id !1934
  br label %49, !dbg !1935, !psr.id !1936

49:                                               ; preds = %34
  br label %50, !dbg !1937, !psr.id !1939

50:                                               ; preds = %49
  %51 = zext i64 %45 to i128, !dbg !1940, !psr.id !1942, !ValueTainted !119
  %52 = zext i64 %7 to i128, !dbg !1940, !psr.id !1943, !ValueTainted !119
  %53 = mul i128 %51, %52, !dbg !1940, !psr.id !1944, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %53, metadata !1945, metadata !DIExpression()), !dbg !1946, !psr.id !1947
  %54 = lshr i128 %53, 64, !dbg !1940, !psr.id !1948, !ValueTainted !119
  %55 = trunc i128 %54 to i64, !dbg !1940, !psr.id !1949, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %55, metadata !1950, metadata !DIExpression()), !dbg !1951, !psr.id !1952
  %56 = trunc i128 %53 to i64, !dbg !1940, !psr.id !1953, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %56, metadata !1954, metadata !DIExpression()), !dbg !1951, !psr.id !1955
  br label %57, !dbg !1940, !psr.id !1956

57:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %55, metadata !1957, metadata !DIExpression()), !dbg !1900, !psr.id !1958
  %58 = lshr i64 %56, 20, !dbg !1937, !psr.id !1959, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %58, metadata !1960, metadata !DIExpression()), !dbg !1900, !psr.id !1961
  br label %59, !dbg !1937, !psr.id !1962

59:                                               ; preds = %57
  %60 = zext i64 %46 to i128, !dbg !1963, !psr.id !1965, !ValueTainted !119
  %61 = zext i64 %17 to i128, !dbg !1963, !psr.id !1966, !ValueTainted !119
  %62 = mul i128 %60, %61, !dbg !1963, !psr.id !1967, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %62, metadata !1968, metadata !DIExpression()), !dbg !1969, !psr.id !1970
  %63 = lshr i128 %62, 64, !dbg !1963, !psr.id !1971, !ValueTainted !119
  %64 = trunc i128 %63 to i64, !dbg !1963, !psr.id !1972, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %64, metadata !1950, metadata !DIExpression()), !dbg !1951, !psr.id !1973
  %65 = trunc i128 %62 to i64, !dbg !1963, !psr.id !1974, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %65, metadata !1954, metadata !DIExpression()), !dbg !1951, !psr.id !1975
  br label %66, !dbg !1963, !psr.id !1976

66:                                               ; preds = %59
  %67 = add i64 %55, %64, !dbg !1937, !psr.id !1977, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %67, metadata !1957, metadata !DIExpression()), !dbg !1900, !psr.id !1978
  %68 = lshr i64 %65, 20, !dbg !1937, !psr.id !1979, !ValueTainted !119
  %69 = add i64 %58, %68, !dbg !1937, !psr.id !1980, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %69, metadata !1960, metadata !DIExpression()), !dbg !1900, !psr.id !1981
  br label %70, !dbg !1937, !psr.id !1982

70:                                               ; preds = %66
  %71 = zext i64 %48 to i128, !dbg !1983, !psr.id !1985, !ValueTainted !119
  %72 = zext i64 %13 to i128, !dbg !1983, !psr.id !1986, !ValueTainted !119
  %73 = mul i128 %71, %72, !dbg !1983, !psr.id !1987, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %73, metadata !1988, metadata !DIExpression()), !dbg !1989, !psr.id !1990
  %74 = lshr i128 %73, 64, !dbg !1983, !psr.id !1991, !ValueTainted !119
  %75 = trunc i128 %74 to i64, !dbg !1983, !psr.id !1992, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %75, metadata !1950, metadata !DIExpression()), !dbg !1951, !psr.id !1993
  %76 = trunc i128 %73 to i64, !dbg !1983, !psr.id !1994, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %76, metadata !1954, metadata !DIExpression()), !dbg !1951, !psr.id !1995
  br label %77, !dbg !1983, !psr.id !1996

77:                                               ; preds = %70
  %78 = add i64 %67, %75, !dbg !1937, !psr.id !1997, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %78, metadata !1957, metadata !DIExpression()), !dbg !1900, !psr.id !1998
  %79 = lshr i64 %76, 20, !dbg !1937, !psr.id !1999, !ValueTainted !119
  %80 = add i64 %69, %79, !dbg !1937, !psr.id !2000, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %80, metadata !1960, metadata !DIExpression()), !dbg !1900, !psr.id !2001
  br label %81, !dbg !1937, !psr.id !2002

81:                                               ; preds = %77
  br label %82, !dbg !2003, !psr.id !2004

82:                                               ; preds = %81
  br label %83, !dbg !2005, !psr.id !2007

83:                                               ; preds = %82
  %84 = zext i64 %45 to i128, !dbg !2008, !psr.id !2010, !ValueTainted !119
  %85 = zext i64 %9 to i128, !dbg !2008, !psr.id !2011, !ValueTainted !119
  %86 = mul i128 %84, %85, !dbg !2008, !psr.id !2012, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %86, metadata !2013, metadata !DIExpression()), !dbg !2014, !psr.id !2015
  %87 = lshr i128 %86, 64, !dbg !2008, !psr.id !2016, !ValueTainted !119
  %88 = trunc i128 %87 to i64, !dbg !2008, !psr.id !2017, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %88, metadata !2018, metadata !DIExpression()), !dbg !2019, !psr.id !2020
  %89 = trunc i128 %86 to i64, !dbg !2008, !psr.id !2021, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %89, metadata !2022, metadata !DIExpression()), !dbg !2019, !psr.id !2023
  br label %90, !dbg !2008, !psr.id !2024

90:                                               ; preds = %83
  call void @llvm.dbg.value(metadata i64 %88, metadata !2025, metadata !DIExpression()), !dbg !1900, !psr.id !2026
  %91 = lshr i64 %89, 20, !dbg !2005, !psr.id !2027, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %91, metadata !2028, metadata !DIExpression()), !dbg !1900, !psr.id !2029
  br label %92, !dbg !2005, !psr.id !2030

92:                                               ; preds = %90
  %93 = zext i64 %46 to i128, !dbg !2031, !psr.id !2033, !ValueTainted !119
  %94 = zext i64 %7 to i128, !dbg !2031, !psr.id !2034, !ValueTainted !119
  %95 = mul i128 %93, %94, !dbg !2031, !psr.id !2035, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %95, metadata !2036, metadata !DIExpression()), !dbg !2037, !psr.id !2038
  %96 = lshr i128 %95, 64, !dbg !2031, !psr.id !2039, !ValueTainted !119
  %97 = trunc i128 %96 to i64, !dbg !2031, !psr.id !2040, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %97, metadata !2018, metadata !DIExpression()), !dbg !2019, !psr.id !2041
  %98 = trunc i128 %95 to i64, !dbg !2031, !psr.id !2042, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %98, metadata !2022, metadata !DIExpression()), !dbg !2019, !psr.id !2043
  br label %99, !dbg !2031, !psr.id !2044

99:                                               ; preds = %92
  %100 = add i64 %88, %97, !dbg !2005, !psr.id !2045, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %100, metadata !2025, metadata !DIExpression()), !dbg !1900, !psr.id !2046
  %101 = lshr i64 %98, 20, !dbg !2005, !psr.id !2047, !ValueTainted !119
  %102 = add i64 %91, %101, !dbg !2005, !psr.id !2048, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %102, metadata !2028, metadata !DIExpression()), !dbg !1900, !psr.id !2049
  br label %103, !dbg !2005, !psr.id !2050

103:                                              ; preds = %99
  %104 = zext i64 %48 to i128, !dbg !2051, !psr.id !2053, !ValueTainted !119
  %105 = zext i64 %15 to i128, !dbg !2051, !psr.id !2054, !ValueTainted !119
  %106 = mul i128 %104, %105, !dbg !2051, !psr.id !2055, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %106, metadata !2056, metadata !DIExpression()), !dbg !2057, !psr.id !2058
  %107 = lshr i128 %106, 64, !dbg !2051, !psr.id !2059, !ValueTainted !119
  %108 = trunc i128 %107 to i64, !dbg !2051, !psr.id !2060, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %108, metadata !2018, metadata !DIExpression()), !dbg !2019, !psr.id !2061
  %109 = trunc i128 %106 to i64, !dbg !2051, !psr.id !2062, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %109, metadata !2022, metadata !DIExpression()), !dbg !2019, !psr.id !2063
  br label %110, !dbg !2051, !psr.id !2064

110:                                              ; preds = %103
  %111 = add i64 %100, %108, !dbg !2005, !psr.id !2065, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %111, metadata !2025, metadata !DIExpression()), !dbg !1900, !psr.id !2066
  %112 = lshr i64 %109, 20, !dbg !2005, !psr.id !2067, !ValueTainted !119
  %113 = add i64 %102, %112, !dbg !2005, !psr.id !2068, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %113, metadata !2028, metadata !DIExpression()), !dbg !1900, !psr.id !2069
  br label %114, !dbg !2005, !psr.id !2070

114:                                              ; preds = %110
  br label %115, !dbg !2071, !psr.id !2072

115:                                              ; preds = %114
  br label %116, !dbg !2073, !psr.id !2075

116:                                              ; preds = %115
  %117 = zext i64 %45 to i128, !dbg !2076, !psr.id !2078, !ValueTainted !119
  %118 = zext i64 %11 to i128, !dbg !2076, !psr.id !2079, !ValueTainted !119
  %119 = mul i128 %117, %118, !dbg !2076, !psr.id !2080, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %119, metadata !2081, metadata !DIExpression()), !dbg !2082, !psr.id !2083
  %120 = lshr i128 %119, 64, !dbg !2076, !psr.id !2084, !ValueTainted !119
  %121 = trunc i128 %120 to i64, !dbg !2076, !psr.id !2085, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %121, metadata !2086, metadata !DIExpression()), !dbg !2087, !psr.id !2088
  %122 = trunc i128 %119 to i64, !dbg !2076, !psr.id !2089, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %122, metadata !2090, metadata !DIExpression()), !dbg !2087, !psr.id !2091
  br label %123, !dbg !2076, !psr.id !2092

123:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 %121, metadata !2093, metadata !DIExpression()), !dbg !1900, !psr.id !2094
  %124 = lshr i64 %122, 20, !dbg !2073, !psr.id !2095, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %124, metadata !2096, metadata !DIExpression()), !dbg !1900, !psr.id !2097
  br label %125, !dbg !2073, !psr.id !2098

125:                                              ; preds = %123
  %126 = zext i64 %46 to i128, !dbg !2099, !psr.id !2101, !ValueTainted !119
  %127 = zext i64 %9 to i128, !dbg !2099, !psr.id !2102, !ValueTainted !119
  %128 = mul i128 %126, %127, !dbg !2099, !psr.id !2103, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %128, metadata !2104, metadata !DIExpression()), !dbg !2105, !psr.id !2106
  %129 = lshr i128 %128, 64, !dbg !2099, !psr.id !2107, !ValueTainted !119
  %130 = trunc i128 %129 to i64, !dbg !2099, !psr.id !2108, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %130, metadata !2086, metadata !DIExpression()), !dbg !2087, !psr.id !2109
  %131 = trunc i128 %128 to i64, !dbg !2099, !psr.id !2110, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %131, metadata !2090, metadata !DIExpression()), !dbg !2087, !psr.id !2111
  br label %132, !dbg !2099, !psr.id !2112

132:                                              ; preds = %125
  %133 = add i64 %121, %130, !dbg !2073, !psr.id !2113, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %133, metadata !2093, metadata !DIExpression()), !dbg !1900, !psr.id !2114
  %134 = lshr i64 %131, 20, !dbg !2073, !psr.id !2115, !ValueTainted !119
  %135 = add i64 %124, %134, !dbg !2073, !psr.id !2116, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %135, metadata !2096, metadata !DIExpression()), !dbg !1900, !psr.id !2117
  br label %136, !dbg !2073, !psr.id !2118

136:                                              ; preds = %132
  %137 = zext i64 %48 to i128, !dbg !2119, !psr.id !2121, !ValueTainted !119
  %138 = zext i64 %7 to i128, !dbg !2119, !psr.id !2122, !ValueTainted !119
  %139 = mul i128 %137, %138, !dbg !2119, !psr.id !2123, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %139, metadata !2124, metadata !DIExpression()), !dbg !2125, !psr.id !2126
  %140 = lshr i128 %139, 64, !dbg !2119, !psr.id !2127, !ValueTainted !119
  %141 = trunc i128 %140 to i64, !dbg !2119, !psr.id !2128, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %141, metadata !2086, metadata !DIExpression()), !dbg !2087, !psr.id !2129
  %142 = trunc i128 %139 to i64, !dbg !2119, !psr.id !2130, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %142, metadata !2090, metadata !DIExpression()), !dbg !2087, !psr.id !2131
  br label %143, !dbg !2119, !psr.id !2132

143:                                              ; preds = %136
  %144 = add i64 %133, %141, !dbg !2073, !psr.id !2133, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %144, metadata !2093, metadata !DIExpression()), !dbg !1900, !psr.id !2134
  %145 = lshr i64 %142, 20, !dbg !2073, !psr.id !2135, !ValueTainted !119
  %146 = add i64 %135, %145, !dbg !2073, !psr.id !2136, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %146, metadata !2096, metadata !DIExpression()), !dbg !1900, !psr.id !2137
  br label %147, !dbg !2073, !psr.id !2138

147:                                              ; preds = %143
  %148 = mul i64 20, %144, !dbg !2139, !psr.id !2140, !ValueTainted !119
  %149 = add i64 %80, %148, !dbg !2141, !psr.id !2142, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %149, metadata !1835, metadata !DIExpression()), !dbg !1794, !psr.id !2143
  %150 = add i64 %113, %78, !dbg !2144, !psr.id !2145, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %150, metadata !1840, metadata !DIExpression()), !dbg !1794, !psr.id !2146
  %151 = add i64 %146, %111, !dbg !2147, !psr.id !2148, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %151, metadata !1845, metadata !DIExpression()), !dbg !1794, !psr.id !2149
  %152 = lshr i64 %149, 44, !dbg !2150, !psr.id !2151, !ValueTainted !119
  %153 = add i64 %150, %152, !dbg !2152, !psr.id !2153, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %153, metadata !1840, metadata !DIExpression()), !dbg !1794, !psr.id !2154
  %154 = and i64 %149, 17592186044415, !dbg !2155, !psr.id !2156, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %154, metadata !1835, metadata !DIExpression()), !dbg !1794, !psr.id !2157
  %155 = lshr i64 %153, 44, !dbg !2158, !psr.id !2159, !ValueTainted !119
  %156 = add i64 %151, %155, !dbg !2160, !psr.id !2161, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %156, metadata !1845, metadata !DIExpression()), !dbg !1794, !psr.id !2162
  %157 = and i64 %153, 17592186044415, !dbg !2163, !psr.id !2164, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %157, metadata !1840, metadata !DIExpression()), !dbg !1794, !psr.id !2165
  %158 = lshr i64 %156, 44, !dbg !2166, !psr.id !2167, !ValueTainted !119
  %159 = mul i64 20, %158, !dbg !2168, !psr.id !2169, !ValueTainted !119
  %160 = add i64 %154, %159, !dbg !2170, !psr.id !2171, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %160, metadata !1835, metadata !DIExpression()), !dbg !1794, !psr.id !2172
  %161 = and i64 %156, 17592186044415, !dbg !2173, !psr.id !2174, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %161, metadata !1845, metadata !DIExpression()), !dbg !1794, !psr.id !2175
  %162 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !2176, !psr.id !2177
  call void @llvm.dbg.value(metadata i8* %162, metadata !1847, metadata !DIExpression()), !dbg !1794, !psr.id !2178
  %163 = sub i64 %.1, 16, !dbg !2179, !psr.id !2180
  call void @llvm.dbg.value(metadata i64 %163, metadata !1800, metadata !DIExpression()), !dbg !1794, !psr.id !2181
  br label %24, !dbg !1849, !llvm.loop !2182, !psr.id !2184

164:                                              ; preds = %24
  %165 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2185, !psr.id !2186
  store i64 %.03, i64* %165, align 8, !dbg !2187, !psr.id !2188
  %166 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2189, !psr.id !2190
  store i64 %.04, i64* %166, align 8, !dbg !2191, !psr.id !2192
  %167 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2193, !psr.id !2194
  store i64 %.05, i64* %167, align 8, !dbg !2195, !psr.id !2196
  ret void, !dbg !2197, !psr.id !2198
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !2199 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2202, metadata !DIExpression()), !dbg !2203, !psr.id !2204
  call void @llvm.dbg.value(metadata i32 %1, metadata !2205, metadata !DIExpression()), !dbg !2203, !psr.id !2206
  %3 = sub i32 %1, %0, !dbg !2207, !psr.id !2208, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %3, metadata !2209, metadata !DIExpression()), !dbg !2203, !psr.id !2210
  %4 = xor i32 %0, %1, !dbg !2211, !psr.id !2212, !ValueTainted !119
  %5 = xor i32 %0, %3, !dbg !2213, !psr.id !2214, !ValueTainted !119
  %6 = and i32 %4, %5, !dbg !2215, !psr.id !2216, !ValueTainted !119
  %7 = xor i32 %3, %6, !dbg !2217, !psr.id !2218, !ValueTainted !119
  %8 = lshr i32 %7, 31, !dbg !2219, !psr.id !2220, !ValueTainted !119
  ret i32 %8, !dbg !2221, !psr.id !2222
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !2223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2224, metadata !DIExpression()), !dbg !2225, !psr.id !2226
  call void @llvm.dbg.value(metadata i32 %1, metadata !2227, metadata !DIExpression()), !dbg !2225, !psr.id !2228
  %3 = xor i32 %0, %1, !dbg !2229, !psr.id !2230, !ValueTainted !119
  call void @llvm.dbg.value(metadata i32 %3, metadata !2231, metadata !DIExpression()), !dbg !2225, !psr.id !2232
  %4 = sub i32 0, %3, !dbg !2233, !psr.id !2234, !ValueTainted !119
  %5 = or i32 %3, %4, !dbg !2235, !psr.id !2236, !ValueTainted !119
  %6 = lshr i32 %5, 31, !dbg !2237, !psr.id !2238, !ValueTainted !119
  %7 = call i32 @NOT(i32 %6), !dbg !2239, !psr.id !2240, !ValueTainted !119
  ret i32 %7, !dbg !2241, !psr.id !2242
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !2243 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2246, metadata !DIExpression()), !dbg !2247, !psr.id !2248
  call void @llvm.dbg.value(metadata i32 %1, metadata !2249, metadata !DIExpression()), !dbg !2247, !psr.id !2250
  call void @llvm.dbg.value(metadata i32 %2, metadata !2251, metadata !DIExpression()), !dbg !2247, !psr.id !2252
  %4 = sub i32 0, %0, !dbg !2253, !psr.id !2254, !ValueTainted !119
  %5 = xor i32 %1, %2, !dbg !2255, !psr.id !2256, !ValueTainted !119
  %6 = and i32 %4, %5, !dbg !2257, !psr.id !2258, !ValueTainted !119
  %7 = xor i32 %2, %6, !dbg !2259, !psr.id !2260, !ValueTainted !119
  ret i32 %7, !dbg !2261, !psr.id !2262
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le.1(i8* %0) #0 !dbg !2263 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2264, metadata !DIExpression()), !dbg !2265, !psr.id !2266
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !2267, !psr.id !2268
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !2269, !psr.id !2270
  %4 = load i32, i32* %3, align 4, !dbg !2269, !psr.id !2271, !ValueTainted !119
  ret i32 %4, !dbg !2272, !psr.id !2273
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le.2(i8* %0, i32 %1) #0 !dbg !2274 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2275, metadata !DIExpression()), !dbg !2276, !psr.id !2277
  call void @llvm.dbg.value(metadata i32 %1, metadata !2278, metadata !DIExpression()), !dbg !2276, !psr.id !2279
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !2280, !psr.id !2281
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !2282, !psr.id !2283
  store i32 %1, i32* %4, align 4, !dbg !2284, !psr.id !2285
  ret void, !dbg !2286, !psr.id !2287
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !2288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2291, metadata !DIExpression()), !dbg !2292, !psr.id !2293
  %2 = xor i32 %0, 1, !dbg !2294, !psr.id !2295, !ValueTainted !119
  ret i32 %2, !dbg !2296, !psr.id !2297
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner_big(i64* %0, i64* %1, i8* %2, i64 %3) #0 !dbg !2298 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !2299, metadata !DIExpression()), !dbg !2300, !psr.id !2301
  call void @llvm.dbg.value(metadata i64* %1, metadata !2302, metadata !DIExpression()), !dbg !2300, !psr.id !2303
  call void @llvm.dbg.value(metadata i8* %2, metadata !2304, metadata !DIExpression()), !dbg !2300, !psr.id !2305
  call void @llvm.dbg.value(metadata i64 %3, metadata !2306, metadata !DIExpression()), !dbg !2300, !psr.id !2307
  %5 = getelementptr inbounds i64, i64* %1, i64 0, !dbg !2308, !psr.id !2309
  %6 = load i64, i64* %5, align 8, !dbg !2308, !psr.id !2310, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %6, metadata !2311, metadata !DIExpression()), !dbg !2300, !psr.id !2312
  %7 = getelementptr inbounds i64, i64* %1, i64 1, !dbg !2313, !psr.id !2314
  %8 = load i64, i64* %7, align 8, !dbg !2313, !psr.id !2315, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %8, metadata !2316, metadata !DIExpression()), !dbg !2300, !psr.id !2317
  %9 = getelementptr inbounds i64, i64* %1, i64 2, !dbg !2318, !psr.id !2319
  %10 = load i64, i64* %9, align 8, !dbg !2318, !psr.id !2320, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %10, metadata !2321, metadata !DIExpression()), !dbg !2300, !psr.id !2322
  %11 = getelementptr inbounds i64, i64* %1, i64 3, !dbg !2323, !psr.id !2324
  %12 = load i64, i64* %11, align 8, !dbg !2323, !psr.id !2325, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %12, metadata !2326, metadata !DIExpression()), !dbg !2300, !psr.id !2327
  %13 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !2328, !psr.id !2329
  %14 = load i64, i64* %13, align 8, !dbg !2328, !psr.id !2330, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %14, metadata !2331, metadata !DIExpression()), !dbg !2300, !psr.id !2332
  %15 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !2333, !psr.id !2334
  %16 = load i64, i64* %15, align 8, !dbg !2333, !psr.id !2335, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %16, metadata !2336, metadata !DIExpression()), !dbg !2300, !psr.id !2337
  %17 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !2338, !psr.id !2339
  %18 = load i64, i64* %17, align 8, !dbg !2338, !psr.id !2340, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %18, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !2342
  %19 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !2343, !psr.id !2344
  %20 = load i64, i64* %19, align 8, !dbg !2343, !psr.id !2345, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %20, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !2347
  %21 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !2348, !psr.id !2349
  %22 = load i64, i64* %21, align 8, !dbg !2348, !psr.id !2350, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %22, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !2352
  call void @llvm.dbg.value(metadata i8* %2, metadata !2353, metadata !DIExpression()), !dbg !2300, !psr.id !2354
  br label %23, !dbg !2355, !psr.id !2356

23:                                               ; preds = %489, %4
  %.04 = phi i64 [ %22, %4 ], [ %503, %489 ], !dbg !2300, !psr.id !2357, !ValueTainted !119
  %.03 = phi i64 [ %20, %4 ], [ %499, %489 ], !dbg !2300, !psr.id !2358, !ValueTainted !119
  %.02 = phi i64 [ %18, %4 ], [ %502, %489 ], !dbg !2300, !psr.id !2359, !ValueTainted !119
  %.01 = phi i8* [ %2, %4 ], [ %504, %489 ], !dbg !2300, !psr.id !2360
  %.0 = phi i64 [ %3, %4 ], [ %505, %489 ], !psr.id !2361
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2306, metadata !DIExpression()), !dbg !2300, !psr.id !2362
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2353, metadata !DIExpression()), !dbg !2300, !psr.id !2363
  call void @llvm.dbg.value(metadata i64 %.02, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !2364
  call void @llvm.dbg.value(metadata i64 %.03, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !2365
  call void @llvm.dbg.value(metadata i64 %.04, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !2366
  %24 = icmp ugt i64 %.0, 0, !dbg !2367, !psr.id !2368
  br i1 %24, label %25, label %506, !dbg !2355, !psr.id !2369

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, i8* %.01, i64 0, !dbg !2370, !psr.id !2372
  %27 = call i64 @br_dec64le(i8* %26), !dbg !2373, !psr.id !2374
  call void @llvm.dbg.value(metadata i64 %27, metadata !2375, metadata !DIExpression()), !dbg !2376, !psr.id !2377
  %28 = getelementptr inbounds i8, i8* %.01, i64 8, !dbg !2378, !psr.id !2379
  %29 = call i64 @br_dec64le(i8* %28), !dbg !2380, !psr.id !2381
  call void @llvm.dbg.value(metadata i64 %29, metadata !2382, metadata !DIExpression()), !dbg !2376, !psr.id !2383
  %30 = lshr i64 %29, 24, !dbg !2384, !psr.id !2385
  call void @llvm.dbg.value(metadata i64 %30, metadata !2386, metadata !DIExpression()), !dbg !2376, !psr.id !2387
  %31 = lshr i64 %27, 44, !dbg !2388, !psr.id !2389
  %32 = shl i64 %29, 20, !dbg !2390, !psr.id !2391
  %33 = or i64 %31, %32, !dbg !2392, !psr.id !2393
  %34 = and i64 %33, 17592186044415, !dbg !2394, !psr.id !2395
  call void @llvm.dbg.value(metadata i64 %34, metadata !2382, metadata !DIExpression()), !dbg !2376, !psr.id !2396
  %35 = and i64 %27, 17592186044415, !dbg !2397, !psr.id !2398
  call void @llvm.dbg.value(metadata i64 %35, metadata !2375, metadata !DIExpression()), !dbg !2376, !psr.id !2399
  %36 = add i64 %.02, %35, !dbg !2400, !psr.id !2401, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %36, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !2402
  %37 = add i64 %.03, %34, !dbg !2403, !psr.id !2404, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %37, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !2405
  %38 = add i64 %30, 1099511627776, !dbg !2406, !psr.id !2407
  %39 = add i64 %.04, %38, !dbg !2408, !psr.id !2409, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %39, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !2410
  br label %40, !dbg !2411, !psr.id !2412

40:                                               ; preds = %25
  br label %41, !dbg !2413, !psr.id !2415

41:                                               ; preds = %40
  %42 = zext i64 %36 to i128, !dbg !2416, !psr.id !2418, !ValueTainted !119
  %43 = zext i64 %6 to i128, !dbg !2416, !psr.id !2419, !ValueTainted !119
  %44 = mul i128 %42, %43, !dbg !2416, !psr.id !2420, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %44, metadata !2421, metadata !DIExpression()), !dbg !2422, !psr.id !2423
  %45 = lshr i128 %44, 64, !dbg !2416, !psr.id !2424, !ValueTainted !119
  %46 = trunc i128 %45 to i64, !dbg !2416, !psr.id !2425, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %46, metadata !2426, metadata !DIExpression()), !dbg !2427, !psr.id !2428
  %47 = trunc i128 %44 to i64, !dbg !2416, !psr.id !2429, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %47, metadata !2430, metadata !DIExpression()), !dbg !2427, !psr.id !2431
  br label %48, !dbg !2416, !psr.id !2432

48:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 %46, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !2434
  %49 = lshr i64 %47, 20, !dbg !2413, !psr.id !2435, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %49, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !2437
  br label %50, !dbg !2413, !psr.id !2438

50:                                               ; preds = %48
  %51 = zext i64 %37 to i128, !dbg !2439, !psr.id !2441, !ValueTainted !119
  %52 = zext i64 %16 to i128, !dbg !2439, !psr.id !2442, !ValueTainted !119
  %53 = mul i128 %51, %52, !dbg !2439, !psr.id !2443, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %53, metadata !2444, metadata !DIExpression()), !dbg !2445, !psr.id !2446
  %54 = lshr i128 %53, 64, !dbg !2439, !psr.id !2447, !ValueTainted !119
  %55 = trunc i128 %54 to i64, !dbg !2439, !psr.id !2448, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %55, metadata !2426, metadata !DIExpression()), !dbg !2427, !psr.id !2449
  %56 = trunc i128 %53 to i64, !dbg !2439, !psr.id !2450, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %56, metadata !2430, metadata !DIExpression()), !dbg !2427, !psr.id !2451
  br label %57, !dbg !2439, !psr.id !2452

57:                                               ; preds = %50
  %58 = add i64 %46, %55, !dbg !2413, !psr.id !2453, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %58, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !2454
  %59 = lshr i64 %56, 20, !dbg !2413, !psr.id !2455, !ValueTainted !119
  %60 = add i64 %49, %59, !dbg !2413, !psr.id !2456, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %60, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !2457
  br label %61, !dbg !2413, !psr.id !2458

61:                                               ; preds = %57
  %62 = zext i64 %39 to i128, !dbg !2459, !psr.id !2461, !ValueTainted !119
  %63 = zext i64 %12 to i128, !dbg !2459, !psr.id !2462, !ValueTainted !119
  %64 = mul i128 %62, %63, !dbg !2459, !psr.id !2463, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %64, metadata !2464, metadata !DIExpression()), !dbg !2465, !psr.id !2466
  %65 = lshr i128 %64, 64, !dbg !2459, !psr.id !2467, !ValueTainted !119
  %66 = trunc i128 %65 to i64, !dbg !2459, !psr.id !2468, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %66, metadata !2426, metadata !DIExpression()), !dbg !2427, !psr.id !2469
  %67 = trunc i128 %64 to i64, !dbg !2459, !psr.id !2470, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %67, metadata !2430, metadata !DIExpression()), !dbg !2427, !psr.id !2471
  br label %68, !dbg !2459, !psr.id !2472

68:                                               ; preds = %61
  %69 = add i64 %58, %66, !dbg !2413, !psr.id !2473, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %69, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !2474
  %70 = lshr i64 %67, 20, !dbg !2413, !psr.id !2475, !ValueTainted !119
  %71 = add i64 %60, %70, !dbg !2413, !psr.id !2476, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %71, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !2477
  br label %72, !dbg !2413, !psr.id !2478

72:                                               ; preds = %68
  br label %73, !dbg !2479, !psr.id !2480

73:                                               ; preds = %72
  br label %74, !dbg !2481, !psr.id !2483

74:                                               ; preds = %73
  %75 = zext i64 %36 to i128, !dbg !2484, !psr.id !2486, !ValueTainted !119
  %76 = zext i64 %8 to i128, !dbg !2484, !psr.id !2487, !ValueTainted !119
  %77 = mul i128 %75, %76, !dbg !2484, !psr.id !2488, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %77, metadata !2489, metadata !DIExpression()), !dbg !2490, !psr.id !2491
  %78 = lshr i128 %77, 64, !dbg !2484, !psr.id !2492, !ValueTainted !119
  %79 = trunc i128 %78 to i64, !dbg !2484, !psr.id !2493, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %79, metadata !2494, metadata !DIExpression()), !dbg !2495, !psr.id !2496
  %80 = trunc i128 %77 to i64, !dbg !2484, !psr.id !2497, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %80, metadata !2498, metadata !DIExpression()), !dbg !2495, !psr.id !2499
  br label %81, !dbg !2484, !psr.id !2500

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 %79, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !2502
  %82 = lshr i64 %80, 20, !dbg !2481, !psr.id !2503, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %82, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !2505
  br label %83, !dbg !2481, !psr.id !2506

83:                                               ; preds = %81
  %84 = zext i64 %37 to i128, !dbg !2507, !psr.id !2509, !ValueTainted !119
  %85 = zext i64 %6 to i128, !dbg !2507, !psr.id !2510, !ValueTainted !119
  %86 = mul i128 %84, %85, !dbg !2507, !psr.id !2511, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %86, metadata !2512, metadata !DIExpression()), !dbg !2513, !psr.id !2514
  %87 = lshr i128 %86, 64, !dbg !2507, !psr.id !2515, !ValueTainted !119
  %88 = trunc i128 %87 to i64, !dbg !2507, !psr.id !2516, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %88, metadata !2494, metadata !DIExpression()), !dbg !2495, !psr.id !2517
  %89 = trunc i128 %86 to i64, !dbg !2507, !psr.id !2518, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %89, metadata !2498, metadata !DIExpression()), !dbg !2495, !psr.id !2519
  br label %90, !dbg !2507, !psr.id !2520

90:                                               ; preds = %83
  %91 = add i64 %79, %88, !dbg !2481, !psr.id !2521, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %91, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !2522
  %92 = lshr i64 %89, 20, !dbg !2481, !psr.id !2523, !ValueTainted !119
  %93 = add i64 %82, %92, !dbg !2481, !psr.id !2524, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %93, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !2525
  br label %94, !dbg !2481, !psr.id !2526

94:                                               ; preds = %90
  %95 = zext i64 %39 to i128, !dbg !2527, !psr.id !2529, !ValueTainted !119
  %96 = zext i64 %14 to i128, !dbg !2527, !psr.id !2530, !ValueTainted !119
  %97 = mul i128 %95, %96, !dbg !2527, !psr.id !2531, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %97, metadata !2532, metadata !DIExpression()), !dbg !2533, !psr.id !2534
  %98 = lshr i128 %97, 64, !dbg !2527, !psr.id !2535, !ValueTainted !119
  %99 = trunc i128 %98 to i64, !dbg !2527, !psr.id !2536, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %99, metadata !2494, metadata !DIExpression()), !dbg !2495, !psr.id !2537
  %100 = trunc i128 %97 to i64, !dbg !2527, !psr.id !2538, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %100, metadata !2498, metadata !DIExpression()), !dbg !2495, !psr.id !2539
  br label %101, !dbg !2527, !psr.id !2540

101:                                              ; preds = %94
  %102 = add i64 %91, %99, !dbg !2481, !psr.id !2541, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %102, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !2542
  %103 = lshr i64 %100, 20, !dbg !2481, !psr.id !2543, !ValueTainted !119
  %104 = add i64 %93, %103, !dbg !2481, !psr.id !2544, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %104, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !2545
  br label %105, !dbg !2481, !psr.id !2546

105:                                              ; preds = %101
  br label %106, !dbg !2547, !psr.id !2548

106:                                              ; preds = %105
  br label %107, !dbg !2549, !psr.id !2551

107:                                              ; preds = %106
  %108 = zext i64 %36 to i128, !dbg !2552, !psr.id !2554, !ValueTainted !119
  %109 = zext i64 %10 to i128, !dbg !2552, !psr.id !2555, !ValueTainted !119
  %110 = mul i128 %108, %109, !dbg !2552, !psr.id !2556, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %110, metadata !2557, metadata !DIExpression()), !dbg !2558, !psr.id !2559
  %111 = lshr i128 %110, 64, !dbg !2552, !psr.id !2560, !ValueTainted !119
  %112 = trunc i128 %111 to i64, !dbg !2552, !psr.id !2561, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %112, metadata !2562, metadata !DIExpression()), !dbg !2563, !psr.id !2564
  %113 = trunc i128 %110 to i64, !dbg !2552, !psr.id !2565, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %113, metadata !2566, metadata !DIExpression()), !dbg !2563, !psr.id !2567
  br label %114, !dbg !2552, !psr.id !2568

114:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i64 %112, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !2570
  %115 = lshr i64 %113, 20, !dbg !2549, !psr.id !2571, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %115, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !2573
  br label %116, !dbg !2549, !psr.id !2574

116:                                              ; preds = %114
  %117 = zext i64 %37 to i128, !dbg !2575, !psr.id !2577, !ValueTainted !119
  %118 = zext i64 %8 to i128, !dbg !2575, !psr.id !2578, !ValueTainted !119
  %119 = mul i128 %117, %118, !dbg !2575, !psr.id !2579, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %119, metadata !2580, metadata !DIExpression()), !dbg !2581, !psr.id !2582
  %120 = lshr i128 %119, 64, !dbg !2575, !psr.id !2583, !ValueTainted !119
  %121 = trunc i128 %120 to i64, !dbg !2575, !psr.id !2584, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %121, metadata !2562, metadata !DIExpression()), !dbg !2563, !psr.id !2585
  %122 = trunc i128 %119 to i64, !dbg !2575, !psr.id !2586, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %122, metadata !2566, metadata !DIExpression()), !dbg !2563, !psr.id !2587
  br label %123, !dbg !2575, !psr.id !2588

123:                                              ; preds = %116
  %124 = add i64 %112, %121, !dbg !2549, !psr.id !2589, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %124, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !2590
  %125 = lshr i64 %122, 20, !dbg !2549, !psr.id !2591, !ValueTainted !119
  %126 = add i64 %115, %125, !dbg !2549, !psr.id !2592, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %126, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !2593
  br label %127, !dbg !2549, !psr.id !2594

127:                                              ; preds = %123
  %128 = zext i64 %39 to i128, !dbg !2595, !psr.id !2597, !ValueTainted !119
  %129 = zext i64 %6 to i128, !dbg !2595, !psr.id !2598, !ValueTainted !119
  %130 = mul i128 %128, %129, !dbg !2595, !psr.id !2599, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %130, metadata !2600, metadata !DIExpression()), !dbg !2601, !psr.id !2602
  %131 = lshr i128 %130, 64, !dbg !2595, !psr.id !2603, !ValueTainted !119
  %132 = trunc i128 %131 to i64, !dbg !2595, !psr.id !2604, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %132, metadata !2562, metadata !DIExpression()), !dbg !2563, !psr.id !2605
  %133 = trunc i128 %130 to i64, !dbg !2595, !psr.id !2606, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %133, metadata !2566, metadata !DIExpression()), !dbg !2563, !psr.id !2607
  br label %134, !dbg !2595, !psr.id !2608

134:                                              ; preds = %127
  %135 = add i64 %124, %132, !dbg !2549, !psr.id !2609, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %135, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !2610
  %136 = lshr i64 %133, 20, !dbg !2549, !psr.id !2611, !ValueTainted !119
  %137 = add i64 %126, %136, !dbg !2549, !psr.id !2612, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %137, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !2613
  br label %138, !dbg !2549, !psr.id !2614

138:                                              ; preds = %134
  %139 = mul i64 20, %135, !dbg !2615, !psr.id !2616, !ValueTainted !119
  %140 = add i64 %71, %139, !dbg !2617, !psr.id !2618, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %140, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !2619
  %141 = add i64 %104, %69, !dbg !2620, !psr.id !2621, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %141, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !2622
  %142 = add i64 %137, %102, !dbg !2623, !psr.id !2624, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %142, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !2625
  %143 = getelementptr inbounds i8, i8* %.01, i64 16, !dbg !2626, !psr.id !2627
  %144 = call i64 @br_dec64le(i8* %143), !dbg !2628, !psr.id !2629
  call void @llvm.dbg.value(metadata i64 %144, metadata !2375, metadata !DIExpression()), !dbg !2376, !psr.id !2630
  %145 = getelementptr inbounds i8, i8* %.01, i64 24, !dbg !2631, !psr.id !2632
  %146 = call i64 @br_dec64le(i8* %145), !dbg !2633, !psr.id !2634
  call void @llvm.dbg.value(metadata i64 %146, metadata !2382, metadata !DIExpression()), !dbg !2376, !psr.id !2635
  %147 = lshr i64 %146, 24, !dbg !2636, !psr.id !2637
  call void @llvm.dbg.value(metadata i64 %147, metadata !2386, metadata !DIExpression()), !dbg !2376, !psr.id !2638
  %148 = lshr i64 %144, 44, !dbg !2639, !psr.id !2640
  %149 = shl i64 %146, 20, !dbg !2641, !psr.id !2642
  %150 = or i64 %148, %149, !dbg !2643, !psr.id !2644
  %151 = and i64 %150, 17592186044415, !dbg !2645, !psr.id !2646
  call void @llvm.dbg.value(metadata i64 %151, metadata !2382, metadata !DIExpression()), !dbg !2376, !psr.id !2647
  %152 = and i64 %144, 17592186044415, !dbg !2648, !psr.id !2649
  call void @llvm.dbg.value(metadata i64 %152, metadata !2375, metadata !DIExpression()), !dbg !2376, !psr.id !2650
  %153 = add i64 %140, %152, !dbg !2651, !psr.id !2652, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %153, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !2653
  %154 = add i64 %141, %151, !dbg !2654, !psr.id !2655, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %154, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !2656
  %155 = add i64 %147, 1099511627776, !dbg !2657, !psr.id !2658
  %156 = add i64 %142, %155, !dbg !2659, !psr.id !2660, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %156, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !2661
  br label %157, !dbg !2662, !psr.id !2663

157:                                              ; preds = %138
  br label %158, !dbg !2664, !psr.id !2666

158:                                              ; preds = %157
  %159 = zext i64 %153 to i128, !dbg !2667, !psr.id !2669, !ValueTainted !119
  %160 = zext i64 %6 to i128, !dbg !2667, !psr.id !2670, !ValueTainted !119
  %161 = mul i128 %159, %160, !dbg !2667, !psr.id !2671, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %161, metadata !2672, metadata !DIExpression()), !dbg !2673, !psr.id !2674
  %162 = lshr i128 %161, 64, !dbg !2667, !psr.id !2675, !ValueTainted !119
  %163 = trunc i128 %162 to i64, !dbg !2667, !psr.id !2676, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %163, metadata !2677, metadata !DIExpression()), !dbg !2678, !psr.id !2679
  %164 = trunc i128 %161 to i64, !dbg !2667, !psr.id !2680, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %164, metadata !2681, metadata !DIExpression()), !dbg !2678, !psr.id !2682
  br label %165, !dbg !2667, !psr.id !2683

165:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i64 %163, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !2684
  %166 = lshr i64 %164, 20, !dbg !2664, !psr.id !2685, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %166, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !2686
  br label %167, !dbg !2664, !psr.id !2687

167:                                              ; preds = %165
  %168 = zext i64 %154 to i128, !dbg !2688, !psr.id !2690, !ValueTainted !119
  %169 = zext i64 %16 to i128, !dbg !2688, !psr.id !2691, !ValueTainted !119
  %170 = mul i128 %168, %169, !dbg !2688, !psr.id !2692, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %170, metadata !2693, metadata !DIExpression()), !dbg !2694, !psr.id !2695
  %171 = lshr i128 %170, 64, !dbg !2688, !psr.id !2696, !ValueTainted !119
  %172 = trunc i128 %171 to i64, !dbg !2688, !psr.id !2697, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %172, metadata !2677, metadata !DIExpression()), !dbg !2678, !psr.id !2698
  %173 = trunc i128 %170 to i64, !dbg !2688, !psr.id !2699, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %173, metadata !2681, metadata !DIExpression()), !dbg !2678, !psr.id !2700
  br label %174, !dbg !2688, !psr.id !2701

174:                                              ; preds = %167
  %175 = add i64 %163, %172, !dbg !2664, !psr.id !2702, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %175, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !2703
  %176 = lshr i64 %173, 20, !dbg !2664, !psr.id !2704, !ValueTainted !119
  %177 = add i64 %166, %176, !dbg !2664, !psr.id !2705, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %177, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !2706
  br label %178, !dbg !2664, !psr.id !2707

178:                                              ; preds = %174
  %179 = zext i64 %156 to i128, !dbg !2708, !psr.id !2710, !ValueTainted !119
  %180 = zext i64 %12 to i128, !dbg !2708, !psr.id !2711, !ValueTainted !119
  %181 = mul i128 %179, %180, !dbg !2708, !psr.id !2712, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %181, metadata !2713, metadata !DIExpression()), !dbg !2714, !psr.id !2715
  %182 = lshr i128 %181, 64, !dbg !2708, !psr.id !2716, !ValueTainted !119
  %183 = trunc i128 %182 to i64, !dbg !2708, !psr.id !2717, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %183, metadata !2677, metadata !DIExpression()), !dbg !2678, !psr.id !2718
  %184 = trunc i128 %181 to i64, !dbg !2708, !psr.id !2719, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %184, metadata !2681, metadata !DIExpression()), !dbg !2678, !psr.id !2720
  br label %185, !dbg !2708, !psr.id !2721

185:                                              ; preds = %178
  %186 = add i64 %175, %183, !dbg !2664, !psr.id !2722, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %186, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !2723
  %187 = lshr i64 %184, 20, !dbg !2664, !psr.id !2724, !ValueTainted !119
  %188 = add i64 %177, %187, !dbg !2664, !psr.id !2725, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %188, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !2726
  br label %189, !dbg !2664, !psr.id !2727

189:                                              ; preds = %185
  br label %190, !dbg !2728, !psr.id !2729

190:                                              ; preds = %189
  br label %191, !dbg !2730, !psr.id !2732

191:                                              ; preds = %190
  %192 = zext i64 %153 to i128, !dbg !2733, !psr.id !2735, !ValueTainted !119
  %193 = zext i64 %8 to i128, !dbg !2733, !psr.id !2736, !ValueTainted !119
  %194 = mul i128 %192, %193, !dbg !2733, !psr.id !2737, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %194, metadata !2738, metadata !DIExpression()), !dbg !2739, !psr.id !2740
  %195 = lshr i128 %194, 64, !dbg !2733, !psr.id !2741, !ValueTainted !119
  %196 = trunc i128 %195 to i64, !dbg !2733, !psr.id !2742, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %196, metadata !2743, metadata !DIExpression()), !dbg !2744, !psr.id !2745
  %197 = trunc i128 %194 to i64, !dbg !2733, !psr.id !2746, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %197, metadata !2747, metadata !DIExpression()), !dbg !2744, !psr.id !2748
  br label %198, !dbg !2733, !psr.id !2749

198:                                              ; preds = %191
  call void @llvm.dbg.value(metadata i64 %196, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !2750
  %199 = lshr i64 %197, 20, !dbg !2730, !psr.id !2751, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %199, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !2752
  br label %200, !dbg !2730, !psr.id !2753

200:                                              ; preds = %198
  %201 = zext i64 %154 to i128, !dbg !2754, !psr.id !2756, !ValueTainted !119
  %202 = zext i64 %6 to i128, !dbg !2754, !psr.id !2757, !ValueTainted !119
  %203 = mul i128 %201, %202, !dbg !2754, !psr.id !2758, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %203, metadata !2759, metadata !DIExpression()), !dbg !2760, !psr.id !2761
  %204 = lshr i128 %203, 64, !dbg !2754, !psr.id !2762, !ValueTainted !119
  %205 = trunc i128 %204 to i64, !dbg !2754, !psr.id !2763, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %205, metadata !2743, metadata !DIExpression()), !dbg !2744, !psr.id !2764
  %206 = trunc i128 %203 to i64, !dbg !2754, !psr.id !2765, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %206, metadata !2747, metadata !DIExpression()), !dbg !2744, !psr.id !2766
  br label %207, !dbg !2754, !psr.id !2767

207:                                              ; preds = %200
  %208 = add i64 %196, %205, !dbg !2730, !psr.id !2768, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %208, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !2769
  %209 = lshr i64 %206, 20, !dbg !2730, !psr.id !2770, !ValueTainted !119
  %210 = add i64 %199, %209, !dbg !2730, !psr.id !2771, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %210, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !2772
  br label %211, !dbg !2730, !psr.id !2773

211:                                              ; preds = %207
  %212 = zext i64 %156 to i128, !dbg !2774, !psr.id !2776, !ValueTainted !119
  %213 = zext i64 %14 to i128, !dbg !2774, !psr.id !2777, !ValueTainted !119
  %214 = mul i128 %212, %213, !dbg !2774, !psr.id !2778, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %214, metadata !2779, metadata !DIExpression()), !dbg !2780, !psr.id !2781
  %215 = lshr i128 %214, 64, !dbg !2774, !psr.id !2782, !ValueTainted !119
  %216 = trunc i128 %215 to i64, !dbg !2774, !psr.id !2783, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %216, metadata !2743, metadata !DIExpression()), !dbg !2744, !psr.id !2784
  %217 = trunc i128 %214 to i64, !dbg !2774, !psr.id !2785, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %217, metadata !2747, metadata !DIExpression()), !dbg !2744, !psr.id !2786
  br label %218, !dbg !2774, !psr.id !2787

218:                                              ; preds = %211
  %219 = add i64 %208, %216, !dbg !2730, !psr.id !2788, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %219, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !2789
  %220 = lshr i64 %217, 20, !dbg !2730, !psr.id !2790, !ValueTainted !119
  %221 = add i64 %210, %220, !dbg !2730, !psr.id !2791, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %221, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !2792
  br label %222, !dbg !2730, !psr.id !2793

222:                                              ; preds = %218
  br label %223, !dbg !2794, !psr.id !2795

223:                                              ; preds = %222
  br label %224, !dbg !2796, !psr.id !2798

224:                                              ; preds = %223
  %225 = zext i64 %153 to i128, !dbg !2799, !psr.id !2801, !ValueTainted !119
  %226 = zext i64 %10 to i128, !dbg !2799, !psr.id !2802, !ValueTainted !119
  %227 = mul i128 %225, %226, !dbg !2799, !psr.id !2803, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %227, metadata !2804, metadata !DIExpression()), !dbg !2805, !psr.id !2806
  %228 = lshr i128 %227, 64, !dbg !2799, !psr.id !2807, !ValueTainted !119
  %229 = trunc i128 %228 to i64, !dbg !2799, !psr.id !2808, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %229, metadata !2809, metadata !DIExpression()), !dbg !2810, !psr.id !2811
  %230 = trunc i128 %227 to i64, !dbg !2799, !psr.id !2812, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %230, metadata !2813, metadata !DIExpression()), !dbg !2810, !psr.id !2814
  br label %231, !dbg !2799, !psr.id !2815

231:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i64 %229, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !2816
  %232 = lshr i64 %230, 20, !dbg !2796, !psr.id !2817, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %232, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !2818
  br label %233, !dbg !2796, !psr.id !2819

233:                                              ; preds = %231
  %234 = zext i64 %154 to i128, !dbg !2820, !psr.id !2822, !ValueTainted !119
  %235 = zext i64 %8 to i128, !dbg !2820, !psr.id !2823, !ValueTainted !119
  %236 = mul i128 %234, %235, !dbg !2820, !psr.id !2824, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %236, metadata !2825, metadata !DIExpression()), !dbg !2826, !psr.id !2827
  %237 = lshr i128 %236, 64, !dbg !2820, !psr.id !2828, !ValueTainted !119
  %238 = trunc i128 %237 to i64, !dbg !2820, !psr.id !2829, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %238, metadata !2809, metadata !DIExpression()), !dbg !2810, !psr.id !2830
  %239 = trunc i128 %236 to i64, !dbg !2820, !psr.id !2831, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %239, metadata !2813, metadata !DIExpression()), !dbg !2810, !psr.id !2832
  br label %240, !dbg !2820, !psr.id !2833

240:                                              ; preds = %233
  %241 = add i64 %229, %238, !dbg !2796, !psr.id !2834, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %241, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !2835
  %242 = lshr i64 %239, 20, !dbg !2796, !psr.id !2836, !ValueTainted !119
  %243 = add i64 %232, %242, !dbg !2796, !psr.id !2837, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %243, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !2838
  br label %244, !dbg !2796, !psr.id !2839

244:                                              ; preds = %240
  %245 = zext i64 %156 to i128, !dbg !2840, !psr.id !2842, !ValueTainted !119
  %246 = zext i64 %6 to i128, !dbg !2840, !psr.id !2843, !ValueTainted !119
  %247 = mul i128 %245, %246, !dbg !2840, !psr.id !2844, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %247, metadata !2845, metadata !DIExpression()), !dbg !2846, !psr.id !2847
  %248 = lshr i128 %247, 64, !dbg !2840, !psr.id !2848, !ValueTainted !119
  %249 = trunc i128 %248 to i64, !dbg !2840, !psr.id !2849, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %249, metadata !2809, metadata !DIExpression()), !dbg !2810, !psr.id !2850
  %250 = trunc i128 %247 to i64, !dbg !2840, !psr.id !2851, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %250, metadata !2813, metadata !DIExpression()), !dbg !2810, !psr.id !2852
  br label %251, !dbg !2840, !psr.id !2853

251:                                              ; preds = %244
  %252 = add i64 %241, %249, !dbg !2796, !psr.id !2854, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %252, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !2855
  %253 = lshr i64 %250, 20, !dbg !2796, !psr.id !2856, !ValueTainted !119
  %254 = add i64 %243, %253, !dbg !2796, !psr.id !2857, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %254, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !2858
  br label %255, !dbg !2796, !psr.id !2859

255:                                              ; preds = %251
  %256 = mul i64 20, %252, !dbg !2860, !psr.id !2861, !ValueTainted !119
  %257 = add i64 %188, %256, !dbg !2862, !psr.id !2863, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %257, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !2864
  %258 = add i64 %221, %186, !dbg !2865, !psr.id !2866, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %258, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !2867
  %259 = add i64 %254, %219, !dbg !2868, !psr.id !2869, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %259, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !2870
  %260 = getelementptr inbounds i8, i8* %.01, i64 32, !dbg !2871, !psr.id !2872
  %261 = call i64 @br_dec64le(i8* %260), !dbg !2873, !psr.id !2874
  call void @llvm.dbg.value(metadata i64 %261, metadata !2375, metadata !DIExpression()), !dbg !2376, !psr.id !2875
  %262 = getelementptr inbounds i8, i8* %.01, i64 40, !dbg !2876, !psr.id !2877
  %263 = call i64 @br_dec64le(i8* %262), !dbg !2878, !psr.id !2879
  call void @llvm.dbg.value(metadata i64 %263, metadata !2382, metadata !DIExpression()), !dbg !2376, !psr.id !2880
  %264 = lshr i64 %263, 24, !dbg !2881, !psr.id !2882
  call void @llvm.dbg.value(metadata i64 %264, metadata !2386, metadata !DIExpression()), !dbg !2376, !psr.id !2883
  %265 = lshr i64 %261, 44, !dbg !2884, !psr.id !2885
  %266 = shl i64 %263, 20, !dbg !2886, !psr.id !2887
  %267 = or i64 %265, %266, !dbg !2888, !psr.id !2889
  %268 = and i64 %267, 17592186044415, !dbg !2890, !psr.id !2891
  call void @llvm.dbg.value(metadata i64 %268, metadata !2382, metadata !DIExpression()), !dbg !2376, !psr.id !2892
  %269 = and i64 %261, 17592186044415, !dbg !2893, !psr.id !2894
  call void @llvm.dbg.value(metadata i64 %269, metadata !2375, metadata !DIExpression()), !dbg !2376, !psr.id !2895
  %270 = add i64 %257, %269, !dbg !2896, !psr.id !2897, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %270, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !2898
  %271 = add i64 %258, %268, !dbg !2899, !psr.id !2900, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %271, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !2901
  %272 = add i64 %264, 1099511627776, !dbg !2902, !psr.id !2903
  %273 = add i64 %259, %272, !dbg !2904, !psr.id !2905, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %273, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !2906
  br label %274, !dbg !2907, !psr.id !2908

274:                                              ; preds = %255
  br label %275, !dbg !2909, !psr.id !2911

275:                                              ; preds = %274
  %276 = zext i64 %270 to i128, !dbg !2912, !psr.id !2914, !ValueTainted !119
  %277 = zext i64 %6 to i128, !dbg !2912, !psr.id !2915, !ValueTainted !119
  %278 = mul i128 %276, %277, !dbg !2912, !psr.id !2916, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %278, metadata !2917, metadata !DIExpression()), !dbg !2918, !psr.id !2919
  %279 = lshr i128 %278, 64, !dbg !2912, !psr.id !2920, !ValueTainted !119
  %280 = trunc i128 %279 to i64, !dbg !2912, !psr.id !2921, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %280, metadata !2922, metadata !DIExpression()), !dbg !2923, !psr.id !2924
  %281 = trunc i128 %278 to i64, !dbg !2912, !psr.id !2925, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %281, metadata !2926, metadata !DIExpression()), !dbg !2923, !psr.id !2927
  br label %282, !dbg !2912, !psr.id !2928

282:                                              ; preds = %275
  call void @llvm.dbg.value(metadata i64 %280, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !2929
  %283 = lshr i64 %281, 20, !dbg !2909, !psr.id !2930, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %283, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !2931
  br label %284, !dbg !2909, !psr.id !2932

284:                                              ; preds = %282
  %285 = zext i64 %271 to i128, !dbg !2933, !psr.id !2935, !ValueTainted !119
  %286 = zext i64 %16 to i128, !dbg !2933, !psr.id !2936, !ValueTainted !119
  %287 = mul i128 %285, %286, !dbg !2933, !psr.id !2937, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %287, metadata !2938, metadata !DIExpression()), !dbg !2939, !psr.id !2940
  %288 = lshr i128 %287, 64, !dbg !2933, !psr.id !2941, !ValueTainted !119
  %289 = trunc i128 %288 to i64, !dbg !2933, !psr.id !2942, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %289, metadata !2922, metadata !DIExpression()), !dbg !2923, !psr.id !2943
  %290 = trunc i128 %287 to i64, !dbg !2933, !psr.id !2944, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %290, metadata !2926, metadata !DIExpression()), !dbg !2923, !psr.id !2945
  br label %291, !dbg !2933, !psr.id !2946

291:                                              ; preds = %284
  %292 = add i64 %280, %289, !dbg !2909, !psr.id !2947, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %292, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !2948
  %293 = lshr i64 %290, 20, !dbg !2909, !psr.id !2949, !ValueTainted !119
  %294 = add i64 %283, %293, !dbg !2909, !psr.id !2950, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %294, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !2951
  br label %295, !dbg !2909, !psr.id !2952

295:                                              ; preds = %291
  %296 = zext i64 %273 to i128, !dbg !2953, !psr.id !2955, !ValueTainted !119
  %297 = zext i64 %12 to i128, !dbg !2953, !psr.id !2956, !ValueTainted !119
  %298 = mul i128 %296, %297, !dbg !2953, !psr.id !2957, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %298, metadata !2958, metadata !DIExpression()), !dbg !2959, !psr.id !2960
  %299 = lshr i128 %298, 64, !dbg !2953, !psr.id !2961, !ValueTainted !119
  %300 = trunc i128 %299 to i64, !dbg !2953, !psr.id !2962, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %300, metadata !2922, metadata !DIExpression()), !dbg !2923, !psr.id !2963
  %301 = trunc i128 %298 to i64, !dbg !2953, !psr.id !2964, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %301, metadata !2926, metadata !DIExpression()), !dbg !2923, !psr.id !2965
  br label %302, !dbg !2953, !psr.id !2966

302:                                              ; preds = %295
  %303 = add i64 %292, %300, !dbg !2909, !psr.id !2967, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %303, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !2968
  %304 = lshr i64 %301, 20, !dbg !2909, !psr.id !2969, !ValueTainted !119
  %305 = add i64 %294, %304, !dbg !2909, !psr.id !2970, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %305, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !2971
  br label %306, !dbg !2909, !psr.id !2972

306:                                              ; preds = %302
  br label %307, !dbg !2973, !psr.id !2974

307:                                              ; preds = %306
  br label %308, !dbg !2975, !psr.id !2977

308:                                              ; preds = %307
  %309 = zext i64 %270 to i128, !dbg !2978, !psr.id !2980, !ValueTainted !119
  %310 = zext i64 %8 to i128, !dbg !2978, !psr.id !2981, !ValueTainted !119
  %311 = mul i128 %309, %310, !dbg !2978, !psr.id !2982, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %311, metadata !2983, metadata !DIExpression()), !dbg !2984, !psr.id !2985
  %312 = lshr i128 %311, 64, !dbg !2978, !psr.id !2986, !ValueTainted !119
  %313 = trunc i128 %312 to i64, !dbg !2978, !psr.id !2987, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %313, metadata !2988, metadata !DIExpression()), !dbg !2989, !psr.id !2990
  %314 = trunc i128 %311 to i64, !dbg !2978, !psr.id !2991, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %314, metadata !2992, metadata !DIExpression()), !dbg !2989, !psr.id !2993
  br label %315, !dbg !2978, !psr.id !2994

315:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 %313, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !2995
  %316 = lshr i64 %314, 20, !dbg !2975, !psr.id !2996, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %316, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !2997
  br label %317, !dbg !2975, !psr.id !2998

317:                                              ; preds = %315
  %318 = zext i64 %271 to i128, !dbg !2999, !psr.id !3001, !ValueTainted !119
  %319 = zext i64 %6 to i128, !dbg !2999, !psr.id !3002, !ValueTainted !119
  %320 = mul i128 %318, %319, !dbg !2999, !psr.id !3003, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %320, metadata !3004, metadata !DIExpression()), !dbg !3005, !psr.id !3006
  %321 = lshr i128 %320, 64, !dbg !2999, !psr.id !3007, !ValueTainted !119
  %322 = trunc i128 %321 to i64, !dbg !2999, !psr.id !3008, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %322, metadata !2988, metadata !DIExpression()), !dbg !2989, !psr.id !3009
  %323 = trunc i128 %320 to i64, !dbg !2999, !psr.id !3010, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %323, metadata !2992, metadata !DIExpression()), !dbg !2989, !psr.id !3011
  br label %324, !dbg !2999, !psr.id !3012

324:                                              ; preds = %317
  %325 = add i64 %313, %322, !dbg !2975, !psr.id !3013, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %325, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !3014
  %326 = lshr i64 %323, 20, !dbg !2975, !psr.id !3015, !ValueTainted !119
  %327 = add i64 %316, %326, !dbg !2975, !psr.id !3016, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %327, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !3017
  br label %328, !dbg !2975, !psr.id !3018

328:                                              ; preds = %324
  %329 = zext i64 %273 to i128, !dbg !3019, !psr.id !3021, !ValueTainted !119
  %330 = zext i64 %14 to i128, !dbg !3019, !psr.id !3022, !ValueTainted !119
  %331 = mul i128 %329, %330, !dbg !3019, !psr.id !3023, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %331, metadata !3024, metadata !DIExpression()), !dbg !3025, !psr.id !3026
  %332 = lshr i128 %331, 64, !dbg !3019, !psr.id !3027, !ValueTainted !119
  %333 = trunc i128 %332 to i64, !dbg !3019, !psr.id !3028, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %333, metadata !2988, metadata !DIExpression()), !dbg !2989, !psr.id !3029
  %334 = trunc i128 %331 to i64, !dbg !3019, !psr.id !3030, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %334, metadata !2992, metadata !DIExpression()), !dbg !2989, !psr.id !3031
  br label %335, !dbg !3019, !psr.id !3032

335:                                              ; preds = %328
  %336 = add i64 %325, %333, !dbg !2975, !psr.id !3033, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %336, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !3034
  %337 = lshr i64 %334, 20, !dbg !2975, !psr.id !3035, !ValueTainted !119
  %338 = add i64 %327, %337, !dbg !2975, !psr.id !3036, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %338, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !3037
  br label %339, !dbg !2975, !psr.id !3038

339:                                              ; preds = %335
  br label %340, !dbg !3039, !psr.id !3040

340:                                              ; preds = %339
  br label %341, !dbg !3041, !psr.id !3043

341:                                              ; preds = %340
  %342 = zext i64 %270 to i128, !dbg !3044, !psr.id !3046, !ValueTainted !119
  %343 = zext i64 %10 to i128, !dbg !3044, !psr.id !3047, !ValueTainted !119
  %344 = mul i128 %342, %343, !dbg !3044, !psr.id !3048, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %344, metadata !3049, metadata !DIExpression()), !dbg !3050, !psr.id !3051
  %345 = lshr i128 %344, 64, !dbg !3044, !psr.id !3052, !ValueTainted !119
  %346 = trunc i128 %345 to i64, !dbg !3044, !psr.id !3053, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %346, metadata !3054, metadata !DIExpression()), !dbg !3055, !psr.id !3056
  %347 = trunc i128 %344 to i64, !dbg !3044, !psr.id !3057, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %347, metadata !3058, metadata !DIExpression()), !dbg !3055, !psr.id !3059
  br label %348, !dbg !3044, !psr.id !3060

348:                                              ; preds = %341
  call void @llvm.dbg.value(metadata i64 %346, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !3061
  %349 = lshr i64 %347, 20, !dbg !3041, !psr.id !3062, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %349, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !3063
  br label %350, !dbg !3041, !psr.id !3064

350:                                              ; preds = %348
  %351 = zext i64 %271 to i128, !dbg !3065, !psr.id !3067, !ValueTainted !119
  %352 = zext i64 %8 to i128, !dbg !3065, !psr.id !3068, !ValueTainted !119
  %353 = mul i128 %351, %352, !dbg !3065, !psr.id !3069, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %353, metadata !3070, metadata !DIExpression()), !dbg !3071, !psr.id !3072
  %354 = lshr i128 %353, 64, !dbg !3065, !psr.id !3073, !ValueTainted !119
  %355 = trunc i128 %354 to i64, !dbg !3065, !psr.id !3074, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %355, metadata !3054, metadata !DIExpression()), !dbg !3055, !psr.id !3075
  %356 = trunc i128 %353 to i64, !dbg !3065, !psr.id !3076, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %356, metadata !3058, metadata !DIExpression()), !dbg !3055, !psr.id !3077
  br label %357, !dbg !3065, !psr.id !3078

357:                                              ; preds = %350
  %358 = add i64 %346, %355, !dbg !3041, !psr.id !3079, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %358, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !3080
  %359 = lshr i64 %356, 20, !dbg !3041, !psr.id !3081, !ValueTainted !119
  %360 = add i64 %349, %359, !dbg !3041, !psr.id !3082, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %360, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !3083
  br label %361, !dbg !3041, !psr.id !3084

361:                                              ; preds = %357
  %362 = zext i64 %273 to i128, !dbg !3085, !psr.id !3087, !ValueTainted !119
  %363 = zext i64 %6 to i128, !dbg !3085, !psr.id !3088, !ValueTainted !119
  %364 = mul i128 %362, %363, !dbg !3085, !psr.id !3089, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %364, metadata !3090, metadata !DIExpression()), !dbg !3091, !psr.id !3092
  %365 = lshr i128 %364, 64, !dbg !3085, !psr.id !3093, !ValueTainted !119
  %366 = trunc i128 %365 to i64, !dbg !3085, !psr.id !3094, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %366, metadata !3054, metadata !DIExpression()), !dbg !3055, !psr.id !3095
  %367 = trunc i128 %364 to i64, !dbg !3085, !psr.id !3096, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %367, metadata !3058, metadata !DIExpression()), !dbg !3055, !psr.id !3097
  br label %368, !dbg !3085, !psr.id !3098

368:                                              ; preds = %361
  %369 = add i64 %358, %366, !dbg !3041, !psr.id !3099, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %369, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !3100
  %370 = lshr i64 %367, 20, !dbg !3041, !psr.id !3101, !ValueTainted !119
  %371 = add i64 %360, %370, !dbg !3041, !psr.id !3102, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %371, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !3103
  br label %372, !dbg !3041, !psr.id !3104

372:                                              ; preds = %368
  %373 = mul i64 20, %369, !dbg !3105, !psr.id !3106, !ValueTainted !119
  %374 = add i64 %305, %373, !dbg !3107, !psr.id !3108, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %374, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !3109
  %375 = add i64 %338, %303, !dbg !3110, !psr.id !3111, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %375, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !3112
  %376 = add i64 %371, %336, !dbg !3113, !psr.id !3114, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %376, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !3115
  %377 = getelementptr inbounds i8, i8* %.01, i64 48, !dbg !3116, !psr.id !3117
  %378 = call i64 @br_dec64le(i8* %377), !dbg !3118, !psr.id !3119
  call void @llvm.dbg.value(metadata i64 %378, metadata !2375, metadata !DIExpression()), !dbg !2376, !psr.id !3120
  %379 = getelementptr inbounds i8, i8* %.01, i64 56, !dbg !3121, !psr.id !3122
  %380 = call i64 @br_dec64le(i8* %379), !dbg !3123, !psr.id !3124
  call void @llvm.dbg.value(metadata i64 %380, metadata !2382, metadata !DIExpression()), !dbg !2376, !psr.id !3125
  %381 = lshr i64 %380, 24, !dbg !3126, !psr.id !3127
  call void @llvm.dbg.value(metadata i64 %381, metadata !2386, metadata !DIExpression()), !dbg !2376, !psr.id !3128
  %382 = lshr i64 %378, 44, !dbg !3129, !psr.id !3130
  %383 = shl i64 %380, 20, !dbg !3131, !psr.id !3132
  %384 = or i64 %382, %383, !dbg !3133, !psr.id !3134
  %385 = and i64 %384, 17592186044415, !dbg !3135, !psr.id !3136
  call void @llvm.dbg.value(metadata i64 %385, metadata !2382, metadata !DIExpression()), !dbg !2376, !psr.id !3137
  %386 = and i64 %378, 17592186044415, !dbg !3138, !psr.id !3139
  call void @llvm.dbg.value(metadata i64 %386, metadata !2375, metadata !DIExpression()), !dbg !2376, !psr.id !3140
  %387 = add i64 %374, %386, !dbg !3141, !psr.id !3142, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %387, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !3143
  %388 = add i64 %375, %385, !dbg !3144, !psr.id !3145, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %388, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !3146
  %389 = add i64 %381, 1099511627776, !dbg !3147, !psr.id !3148
  %390 = add i64 %376, %389, !dbg !3149, !psr.id !3150, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %390, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !3151
  br label %391, !dbg !3152, !psr.id !3153

391:                                              ; preds = %372
  br label %392, !dbg !3154, !psr.id !3156

392:                                              ; preds = %391
  %393 = zext i64 %387 to i128, !dbg !3157, !psr.id !3159, !ValueTainted !119
  %394 = zext i64 %6 to i128, !dbg !3157, !psr.id !3160, !ValueTainted !119
  %395 = mul i128 %393, %394, !dbg !3157, !psr.id !3161, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %395, metadata !3162, metadata !DIExpression()), !dbg !3163, !psr.id !3164
  %396 = lshr i128 %395, 64, !dbg !3157, !psr.id !3165, !ValueTainted !119
  %397 = trunc i128 %396 to i64, !dbg !3157, !psr.id !3166, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %397, metadata !3167, metadata !DIExpression()), !dbg !3168, !psr.id !3169
  %398 = trunc i128 %395 to i64, !dbg !3157, !psr.id !3170, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %398, metadata !3171, metadata !DIExpression()), !dbg !3168, !psr.id !3172
  br label %399, !dbg !3157, !psr.id !3173

399:                                              ; preds = %392
  call void @llvm.dbg.value(metadata i64 %397, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !3174
  %400 = lshr i64 %398, 20, !dbg !3154, !psr.id !3175, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %400, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !3176
  br label %401, !dbg !3154, !psr.id !3177

401:                                              ; preds = %399
  %402 = zext i64 %388 to i128, !dbg !3178, !psr.id !3180, !ValueTainted !119
  %403 = zext i64 %16 to i128, !dbg !3178, !psr.id !3181, !ValueTainted !119
  %404 = mul i128 %402, %403, !dbg !3178, !psr.id !3182, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %404, metadata !3183, metadata !DIExpression()), !dbg !3184, !psr.id !3185
  %405 = lshr i128 %404, 64, !dbg !3178, !psr.id !3186, !ValueTainted !119
  %406 = trunc i128 %405 to i64, !dbg !3178, !psr.id !3187, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %406, metadata !3167, metadata !DIExpression()), !dbg !3168, !psr.id !3188
  %407 = trunc i128 %404 to i64, !dbg !3178, !psr.id !3189, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %407, metadata !3171, metadata !DIExpression()), !dbg !3168, !psr.id !3190
  br label %408, !dbg !3178, !psr.id !3191

408:                                              ; preds = %401
  %409 = add i64 %397, %406, !dbg !3154, !psr.id !3192, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %409, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !3193
  %410 = lshr i64 %407, 20, !dbg !3154, !psr.id !3194, !ValueTainted !119
  %411 = add i64 %400, %410, !dbg !3154, !psr.id !3195, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %411, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !3196
  br label %412, !dbg !3154, !psr.id !3197

412:                                              ; preds = %408
  %413 = zext i64 %390 to i128, !dbg !3198, !psr.id !3200, !ValueTainted !119
  %414 = zext i64 %12 to i128, !dbg !3198, !psr.id !3201, !ValueTainted !119
  %415 = mul i128 %413, %414, !dbg !3198, !psr.id !3202, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %415, metadata !3203, metadata !DIExpression()), !dbg !3204, !psr.id !3205
  %416 = lshr i128 %415, 64, !dbg !3198, !psr.id !3206, !ValueTainted !119
  %417 = trunc i128 %416 to i64, !dbg !3198, !psr.id !3207, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %417, metadata !3167, metadata !DIExpression()), !dbg !3168, !psr.id !3208
  %418 = trunc i128 %415 to i64, !dbg !3198, !psr.id !3209, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %418, metadata !3171, metadata !DIExpression()), !dbg !3168, !psr.id !3210
  br label %419, !dbg !3198, !psr.id !3211

419:                                              ; preds = %412
  %420 = add i64 %409, %417, !dbg !3154, !psr.id !3212, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %420, metadata !2433, metadata !DIExpression()), !dbg !2376, !psr.id !3213
  %421 = lshr i64 %418, 20, !dbg !3154, !psr.id !3214, !ValueTainted !119
  %422 = add i64 %411, %421, !dbg !3154, !psr.id !3215, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %422, metadata !2436, metadata !DIExpression()), !dbg !2376, !psr.id !3216
  br label %423, !dbg !3154, !psr.id !3217

423:                                              ; preds = %419
  br label %424, !dbg !3218, !psr.id !3219

424:                                              ; preds = %423
  br label %425, !dbg !3220, !psr.id !3222

425:                                              ; preds = %424
  %426 = zext i64 %387 to i128, !dbg !3223, !psr.id !3225, !ValueTainted !119
  %427 = zext i64 %8 to i128, !dbg !3223, !psr.id !3226, !ValueTainted !119
  %428 = mul i128 %426, %427, !dbg !3223, !psr.id !3227, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %428, metadata !3228, metadata !DIExpression()), !dbg !3229, !psr.id !3230
  %429 = lshr i128 %428, 64, !dbg !3223, !psr.id !3231, !ValueTainted !119
  %430 = trunc i128 %429 to i64, !dbg !3223, !psr.id !3232, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %430, metadata !3233, metadata !DIExpression()), !dbg !3234, !psr.id !3235
  %431 = trunc i128 %428 to i64, !dbg !3223, !psr.id !3236, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %431, metadata !3237, metadata !DIExpression()), !dbg !3234, !psr.id !3238
  br label %432, !dbg !3223, !psr.id !3239

432:                                              ; preds = %425
  call void @llvm.dbg.value(metadata i64 %430, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !3240
  %433 = lshr i64 %431, 20, !dbg !3220, !psr.id !3241, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %433, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !3242
  br label %434, !dbg !3220, !psr.id !3243

434:                                              ; preds = %432
  %435 = zext i64 %388 to i128, !dbg !3244, !psr.id !3246, !ValueTainted !119
  %436 = zext i64 %6 to i128, !dbg !3244, !psr.id !3247, !ValueTainted !119
  %437 = mul i128 %435, %436, !dbg !3244, !psr.id !3248, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %437, metadata !3249, metadata !DIExpression()), !dbg !3250, !psr.id !3251
  %438 = lshr i128 %437, 64, !dbg !3244, !psr.id !3252, !ValueTainted !119
  %439 = trunc i128 %438 to i64, !dbg !3244, !psr.id !3253, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %439, metadata !3233, metadata !DIExpression()), !dbg !3234, !psr.id !3254
  %440 = trunc i128 %437 to i64, !dbg !3244, !psr.id !3255, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %440, metadata !3237, metadata !DIExpression()), !dbg !3234, !psr.id !3256
  br label %441, !dbg !3244, !psr.id !3257

441:                                              ; preds = %434
  %442 = add i64 %430, %439, !dbg !3220, !psr.id !3258, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %442, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !3259
  %443 = lshr i64 %440, 20, !dbg !3220, !psr.id !3260, !ValueTainted !119
  %444 = add i64 %433, %443, !dbg !3220, !psr.id !3261, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %444, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !3262
  br label %445, !dbg !3220, !psr.id !3263

445:                                              ; preds = %441
  %446 = zext i64 %390 to i128, !dbg !3264, !psr.id !3266, !ValueTainted !119
  %447 = zext i64 %14 to i128, !dbg !3264, !psr.id !3267, !ValueTainted !119
  %448 = mul i128 %446, %447, !dbg !3264, !psr.id !3268, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %448, metadata !3269, metadata !DIExpression()), !dbg !3270, !psr.id !3271
  %449 = lshr i128 %448, 64, !dbg !3264, !psr.id !3272, !ValueTainted !119
  %450 = trunc i128 %449 to i64, !dbg !3264, !psr.id !3273, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %450, metadata !3233, metadata !DIExpression()), !dbg !3234, !psr.id !3274
  %451 = trunc i128 %448 to i64, !dbg !3264, !psr.id !3275, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %451, metadata !3237, metadata !DIExpression()), !dbg !3234, !psr.id !3276
  br label %452, !dbg !3264, !psr.id !3277

452:                                              ; preds = %445
  %453 = add i64 %442, %450, !dbg !3220, !psr.id !3278, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %453, metadata !2501, metadata !DIExpression()), !dbg !2376, !psr.id !3279
  %454 = lshr i64 %451, 20, !dbg !3220, !psr.id !3280, !ValueTainted !119
  %455 = add i64 %444, %454, !dbg !3220, !psr.id !3281, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %455, metadata !2504, metadata !DIExpression()), !dbg !2376, !psr.id !3282
  br label %456, !dbg !3220, !psr.id !3283

456:                                              ; preds = %452
  br label %457, !dbg !3284, !psr.id !3285

457:                                              ; preds = %456
  br label %458, !dbg !3286, !psr.id !3288

458:                                              ; preds = %457
  %459 = zext i64 %387 to i128, !dbg !3289, !psr.id !3291, !ValueTainted !119
  %460 = zext i64 %10 to i128, !dbg !3289, !psr.id !3292, !ValueTainted !119
  %461 = mul i128 %459, %460, !dbg !3289, !psr.id !3293, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %461, metadata !3294, metadata !DIExpression()), !dbg !3295, !psr.id !3296
  %462 = lshr i128 %461, 64, !dbg !3289, !psr.id !3297, !ValueTainted !119
  %463 = trunc i128 %462 to i64, !dbg !3289, !psr.id !3298, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %463, metadata !3299, metadata !DIExpression()), !dbg !3300, !psr.id !3301
  %464 = trunc i128 %461 to i64, !dbg !3289, !psr.id !3302, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %464, metadata !3303, metadata !DIExpression()), !dbg !3300, !psr.id !3304
  br label %465, !dbg !3289, !psr.id !3305

465:                                              ; preds = %458
  call void @llvm.dbg.value(metadata i64 %463, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !3306
  %466 = lshr i64 %464, 20, !dbg !3286, !psr.id !3307, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %466, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !3308
  br label %467, !dbg !3286, !psr.id !3309

467:                                              ; preds = %465
  %468 = zext i64 %388 to i128, !dbg !3310, !psr.id !3312, !ValueTainted !119
  %469 = zext i64 %8 to i128, !dbg !3310, !psr.id !3313, !ValueTainted !119
  %470 = mul i128 %468, %469, !dbg !3310, !psr.id !3314, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %470, metadata !3315, metadata !DIExpression()), !dbg !3316, !psr.id !3317
  %471 = lshr i128 %470, 64, !dbg !3310, !psr.id !3318, !ValueTainted !119
  %472 = trunc i128 %471 to i64, !dbg !3310, !psr.id !3319, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %472, metadata !3299, metadata !DIExpression()), !dbg !3300, !psr.id !3320
  %473 = trunc i128 %470 to i64, !dbg !3310, !psr.id !3321, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %473, metadata !3303, metadata !DIExpression()), !dbg !3300, !psr.id !3322
  br label %474, !dbg !3310, !psr.id !3323

474:                                              ; preds = %467
  %475 = add i64 %463, %472, !dbg !3286, !psr.id !3324, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %475, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !3325
  %476 = lshr i64 %473, 20, !dbg !3286, !psr.id !3326, !ValueTainted !119
  %477 = add i64 %466, %476, !dbg !3286, !psr.id !3327, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %477, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !3328
  br label %478, !dbg !3286, !psr.id !3329

478:                                              ; preds = %474
  %479 = zext i64 %390 to i128, !dbg !3330, !psr.id !3332, !ValueTainted !119
  %480 = zext i64 %6 to i128, !dbg !3330, !psr.id !3333, !ValueTainted !119
  %481 = mul i128 %479, %480, !dbg !3330, !psr.id !3334, !ValueTainted !119
  call void @llvm.dbg.value(metadata i128 %481, metadata !3335, metadata !DIExpression()), !dbg !3336, !psr.id !3337
  %482 = lshr i128 %481, 64, !dbg !3330, !psr.id !3338, !ValueTainted !119
  %483 = trunc i128 %482 to i64, !dbg !3330, !psr.id !3339, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %483, metadata !3299, metadata !DIExpression()), !dbg !3300, !psr.id !3340
  %484 = trunc i128 %481 to i64, !dbg !3330, !psr.id !3341, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %484, metadata !3303, metadata !DIExpression()), !dbg !3300, !psr.id !3342
  br label %485, !dbg !3330, !psr.id !3343

485:                                              ; preds = %478
  %486 = add i64 %475, %483, !dbg !3286, !psr.id !3344, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %486, metadata !2569, metadata !DIExpression()), !dbg !2376, !psr.id !3345
  %487 = lshr i64 %484, 20, !dbg !3286, !psr.id !3346, !ValueTainted !119
  %488 = add i64 %477, %487, !dbg !3286, !psr.id !3347, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %488, metadata !2572, metadata !DIExpression()), !dbg !2376, !psr.id !3348
  br label %489, !dbg !3286, !psr.id !3349

489:                                              ; preds = %485
  %490 = mul i64 20, %486, !dbg !3350, !psr.id !3351, !ValueTainted !119
  %491 = add i64 %422, %490, !dbg !3352, !psr.id !3353, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %491, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !3354
  %492 = add i64 %455, %420, !dbg !3355, !psr.id !3356, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %492, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !3357
  %493 = add i64 %488, %453, !dbg !3358, !psr.id !3359, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %493, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !3360
  %494 = lshr i64 %491, 44, !dbg !3361, !psr.id !3362, !ValueTainted !119
  %495 = add i64 %492, %494, !dbg !3363, !psr.id !3364, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %495, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !3365
  %496 = and i64 %491, 17592186044415, !dbg !3366, !psr.id !3367, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %496, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !3368
  %497 = lshr i64 %495, 44, !dbg !3369, !psr.id !3370, !ValueTainted !119
  %498 = add i64 %493, %497, !dbg !3371, !psr.id !3372, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %498, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !3373
  %499 = and i64 %495, 17592186044415, !dbg !3374, !psr.id !3375, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %499, metadata !2346, metadata !DIExpression()), !dbg !2300, !psr.id !3376
  %500 = lshr i64 %498, 44, !dbg !3377, !psr.id !3378, !ValueTainted !119
  %501 = mul i64 20, %500, !dbg !3379, !psr.id !3380, !ValueTainted !119
  %502 = add i64 %496, %501, !dbg !3381, !psr.id !3382, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %502, metadata !2341, metadata !DIExpression()), !dbg !2300, !psr.id !3383
  %503 = and i64 %498, 17592186044415, !dbg !3384, !psr.id !3385, !ValueTainted !119
  call void @llvm.dbg.value(metadata i64 %503, metadata !2351, metadata !DIExpression()), !dbg !2300, !psr.id !3386
  %504 = getelementptr inbounds i8, i8* %.01, i64 64, !dbg !3387, !psr.id !3388
  call void @llvm.dbg.value(metadata i8* %504, metadata !2353, metadata !DIExpression()), !dbg !2300, !psr.id !3389
  %505 = sub i64 %.0, 64, !dbg !3390, !psr.id !3391
  call void @llvm.dbg.value(metadata i64 %505, metadata !2306, metadata !DIExpression()), !dbg !2300, !psr.id !3392
  br label %23, !dbg !2355, !llvm.loop !3393, !psr.id !3395

506:                                              ; preds = %23
  %507 = getelementptr inbounds i64, i64* %0, i64 0, !dbg !3396, !psr.id !3397
  store i64 %.02, i64* %507, align 8, !dbg !3398, !psr.id !3399
  %508 = getelementptr inbounds i64, i64* %0, i64 1, !dbg !3400, !psr.id !3401
  store i64 %.03, i64* %508, align 8, !dbg !3402, !psr.id !3403
  %509 = getelementptr inbounds i64, i64* %0, i64 2, !dbg !3404, !psr.id !3405, !PointTainted !116
  store i64 %.04, i64* %509, align 8, !dbg !3406, !psr.id !3407
  ret void, !dbg !3408, !psr.id !3409
}

; Function Attrs: noinline nounwind uwtable
define dso_local void (i8*, i8*, i8*, i64, i8*, i64, i8*, i32 (i8*, i8*, i32, i8*, i64)*, i32)* @br_poly1305_ctmulq_get() #0 !dbg !3410 {
  ret void (i8*, i8*, i8*, i64, i8*, i64, i8*, i32 (i8*, i8*, i32, i8*, i64)*, i32)* @br_poly1305_ctmulq_run, !dbg !3415, !psr.id !3416
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !3417 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3418, metadata !DIExpression()), !dbg !3419, !psr.id !3420
  call void @llvm.dbg.value(metadata i8* %1, metadata !3421, metadata !DIExpression()), !dbg !3419, !psr.id !3422
  call void @llvm.dbg.value(metadata i8* %2, metadata !3423, metadata !DIExpression()), !dbg !3419, !psr.id !3424
  call void @llvm.dbg.value(metadata i64 %3, metadata !3425, metadata !DIExpression()), !dbg !3419, !psr.id !3426
  call void @llvm.dbg.value(metadata i8* %4, metadata !3427, metadata !DIExpression()), !dbg !3419, !psr.id !3428
  call void @llvm.dbg.value(metadata i64 %5, metadata !3429, metadata !DIExpression()), !dbg !3419, !psr.id !3430
  call void @llvm.dbg.value(metadata i8* %6, metadata !3431, metadata !DIExpression()), !dbg !3419, !psr.id !3432
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !3433, metadata !DIExpression()), !dbg !3419, !psr.id !3434
  call void @llvm.dbg.value(metadata i32 %8, metadata !3435, metadata !DIExpression()), !dbg !3419, !psr.id !3436
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !3437, !psr.id !3438
  call void @public_in(%struct.smack_value* %10), !dbg !3439, !psr.id !3440
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !3441, !psr.id !3442
  call void @public_in(%struct.smack_value* %11), !dbg !3443, !psr.id !3444
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !3445, !psr.id !3446
  call void @public_in(%struct.smack_value* %12), !dbg !3447, !psr.id !3448
  %13 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !3449, !psr.id !3450
  call void @public_in(%struct.smack_value* %13), !dbg !3451, !psr.id !3452
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !3453, !psr.id !3454
  call void @public_in(%struct.smack_value* %14), !dbg !3455, !psr.id !3456
  %15 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %5), !dbg !3457, !psr.id !3458
  call void @public_in(%struct.smack_value* %15), !dbg !3459, !psr.id !3460
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !3461, !psr.id !3462
  call void @public_in(%struct.smack_value* %16), !dbg !3463, !psr.id !3464
  %17 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !3465, !psr.id !3466
  call void @public_in(%struct.smack_value* %17), !dbg !3467, !psr.id !3468
  %18 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !3469, !psr.id !3470
  call void @public_in(%struct.smack_value* %18), !dbg !3471, !psr.id !3472
  %19 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !3473, !psr.id !3474
  call void @public_in(%struct.smack_value* %19), !dbg !3475, !psr.id !3476
  %20 = call %struct.smack_value* (i8*, i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, i32, ...)*)(i8* %4, i32 32), !dbg !3477, !psr.id !3478
  call void @public_in(%struct.smack_value* %20), !dbg !3479, !psr.id !3480
  call void @br_poly1305_ctmulq_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 %8), !dbg !3481, !psr.id !3482
  ret void, !dbg !3483, !psr.id !3484
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !3485 {
  %1 = call i8* (...) @getvoid1(), !dbg !3488, !psr.id !3489
  call void @llvm.dbg.value(metadata i8* %1, metadata !3490, metadata !DIExpression()), !dbg !3491, !psr.id !3492
  %2 = call i8* (...) @getvoid2(), !dbg !3493, !psr.id !3494
  call void @llvm.dbg.value(metadata i8* %2, metadata !3495, metadata !DIExpression()), !dbg !3491, !psr.id !3496
  %3 = call i8* (...) @getvoid5(), !dbg !3497, !psr.id !3498
  call void @llvm.dbg.value(metadata i8* %3, metadata !3499, metadata !DIExpression()), !dbg !3491, !psr.id !3500
  call void @llvm.dbg.value(metadata i64 32, metadata !3501, metadata !DIExpression()), !dbg !3491, !psr.id !3502
  %4 = call i8* (...) @getvoid3(), !dbg !3503, !psr.id !3504
  call void @llvm.dbg.value(metadata i8* %4, metadata !3505, metadata !DIExpression()), !dbg !3491, !psr.id !3506
  call void @llvm.dbg.value(metadata i64 32, metadata !3507, metadata !DIExpression()), !dbg !3491, !psr.id !3508
  %5 = call i8* (...) @getvoid6(), !dbg !3509, !psr.id !3510
  call void @llvm.dbg.value(metadata i8* %5, metadata !3511, metadata !DIExpression()), !dbg !3491, !psr.id !3512
  call void @llvm.dbg.value(metadata i32 1, metadata !3513, metadata !DIExpression()), !dbg !3491, !psr.id !3514
  call void @br_poly1305_ctmulq_run(i8* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 1), !dbg !3515, !psr.id !3516
  ret void, !dbg !3517, !psr.id !3518
}

declare dso_local i8* @getvoid1(...) #4

declare dso_local i8* @getvoid2(...) #4

declare dso_local i8* @getvoid5(...) #4

declare dso_local i8* @getvoid3(...) #4

declare dso_local i8* @getvoid6(...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

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
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!17, !39, !65}
!llvm.ident = !{!67, !67, !67}
!llvm.module.flags = !{!68, !69, !70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 36, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_ct_run", scope: !3, file: !3, line: 29, type: !4, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_ct.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmulq_ChaCha20")
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
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !19, globals: !35, splitDebugInlining: false, nameTableKind: None)
!18 = !{}
!19 = !{!20, !23, !34}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u32", file: !26, line: 480, baseType: !27)
!26 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmulq_ChaCha20")
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 477, size: 32, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !27, file: !26, line: 478, baseType: !6, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !27, file: !26, line: 479, baseType: !31, size: 32)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 4)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!35 = !{!0}
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !32)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!38 = !{!"0"}
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !41, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "../BearSSL/src/symcipher/poly1305_ctmulq.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmulq_ChaCha20")
!41 = !{!42, !6, !44, !45, !55, !14, !20, !56, !57, !64}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !16)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u64", file: !26, line: 485, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 482, size: 64, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !48, file: !26, line: 483, baseType: !42, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !48, file: !26, line: 484, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 8)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!56 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u32", file: !26, line: 480, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 477, size: 32, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !60, file: !26, line: 478, baseType: !6, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !60, file: !26, line: 479, baseType: !31, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "run.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmulq_ChaCha20")
!67 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!68 = !{i32 7, !"Dwarf Version", i32 4}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{!"1"}
!72 = !{!"2"}
!73 = !{!"3"}
!74 = !{!"4"}
!75 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 29, type: !11)
!76 = !DILocation(line: 0, scope: !2)
!77 = !{!"5"}
!78 = !DILocalVariable(name: "iv", arg: 2, scope: !2, file: !3, line: 30, type: !11)
!79 = !{!"6"}
!80 = !DILocalVariable(name: "cc", arg: 3, scope: !2, file: !3, line: 30, type: !6)
!81 = !{!"7"}
!82 = !DILocalVariable(name: "data", arg: 4, scope: !2, file: !3, line: 30, type: !13)
!83 = !{!"8"}
!84 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 30, type: !14)
!85 = !{!"9"}
!86 = !DILocalVariable(name: "kw", scope: !2, file: !3, line: 33, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !53)
!88 = !DILocation(line: 33, column: 11, scope: !2)
!89 = !{!"10"}
!90 = !DILocalVariable(name: "ivw", scope: !2, file: !3, line: 33, type: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 3)
!94 = !DILocation(line: 33, column: 18, scope: !2)
!95 = !{!"11"}
!96 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 32, type: !44)
!97 = !{!"12"}
!98 = !DILocalVariable(name: "u", scope: !2, file: !3, line: 34, type: !14)
!99 = !{!"13"}
!100 = !DILocation(line: 41, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!102 = !{!"14"}
!103 = !DILocation(line: 0, scope: !101)
!104 = !{!"15"}
!105 = !{!"16"}
!106 = !DILocation(line: 41, column: 16, scope: !107)
!107 = distinct !DILexicalBlock(scope: !101, file: !3, line: 41, column: 2)
!108 = !{!"17"}
!109 = !DILocation(line: 41, column: 2, scope: !101)
!110 = !{!"18"}
!111 = !DILocation(line: 42, column: 54, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !3, line: 41, column: 27)
!113 = !{!"19"}
!114 = !DILocation(line: 42, column: 49, scope: !112)
!115 = !{!"20"}
!116 = !{!"PointTainted"}
!117 = !DILocation(line: 42, column: 11, scope: !112)
!118 = !{!"21"}
!119 = !{!"ValueTainted"}
!120 = !DILocation(line: 42, column: 3, scope: !112)
!121 = !{!"22"}
!122 = !DILocation(line: 42, column: 9, scope: !112)
!123 = !{!"23"}
!124 = !DILocation(line: 43, column: 2, scope: !112)
!125 = !{!"24"}
!126 = !DILocation(line: 41, column: 23, scope: !107)
!127 = !{!"25"}
!128 = !{!"26"}
!129 = !DILocation(line: 41, column: 2, scope: !107)
!130 = distinct !{!130, !109, !131, !132}
!131 = !DILocation(line: 43, column: 2, scope: !101)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{!"27"}
!134 = !{!"28"}
!135 = !DILocation(line: 44, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 2)
!137 = !{!"29"}
!138 = !DILocation(line: 0, scope: !136)
!139 = !{!"30"}
!140 = !{!"31"}
!141 = !DILocation(line: 44, column: 16, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !3, line: 44, column: 2)
!143 = !{!"32"}
!144 = !DILocation(line: 44, column: 2, scope: !136)
!145 = !{!"33"}
!146 = !DILocation(line: 45, column: 54, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !3, line: 44, column: 27)
!148 = !{!"34"}
!149 = !DILocation(line: 45, column: 49, scope: !147)
!150 = !{!"35"}
!151 = !DILocation(line: 45, column: 12, scope: !147)
!152 = !{!"36"}
!153 = !DILocation(line: 45, column: 3, scope: !147)
!154 = !{!"37"}
!155 = !DILocation(line: 45, column: 10, scope: !147)
!156 = !{!"38"}
!157 = !DILocation(line: 46, column: 2, scope: !147)
!158 = !{!"39"}
!159 = !DILocation(line: 44, column: 23, scope: !142)
!160 = !{!"40"}
!161 = !{!"41"}
!162 = !DILocation(line: 44, column: 2, scope: !142)
!163 = distinct !{!163, !144, !164, !132}
!164 = !DILocation(line: 46, column: 2, scope: !136)
!165 = !{!"42"}
!166 = !DILocation(line: 47, column: 2, scope: !2)
!167 = !{!"43"}
!168 = !{!"44"}
!169 = !{!"45"}
!170 = !{!"46"}
!171 = !{!"47"}
!172 = !{!"48"}
!173 = !{!"49"}
!174 = !DILocation(line: 47, column: 13, scope: !2)
!175 = !{!"50"}
!176 = !{!"51"}
!177 = !DILocalVariable(name: "state", scope: !178, file: !3, line: 48, type: !179)
!178 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 18)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 16)
!182 = !DILocation(line: 48, column: 12, scope: !178)
!183 = !{!"52"}
!184 = !DILocalVariable(name: "tmp", scope: !178, file: !3, line: 51, type: !185)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 64)
!188 = !DILocation(line: 51, column: 17, scope: !178)
!189 = !{!"53"}
!190 = !DILocation(line: 53, column: 11, scope: !178)
!191 = !{!"54"}
!192 = !DILocation(line: 53, column: 3, scope: !178)
!193 = !{!"55"}
!194 = !{!"56"}
!195 = !DILocation(line: 54, column: 11, scope: !178)
!196 = !{!"57"}
!197 = !DILocation(line: 54, column: 3, scope: !178)
!198 = !{!"58"}
!199 = !{!"59"}
!200 = !{!"60"}
!201 = !{!"61"}
!202 = !DILocation(line: 55, column: 3, scope: !178)
!203 = !{!"62"}
!204 = !DILocation(line: 55, column: 13, scope: !178)
!205 = !{!"63"}
!206 = !DILocation(line: 56, column: 11, scope: !178)
!207 = !{!"64"}
!208 = !DILocation(line: 56, column: 3, scope: !178)
!209 = !{!"65"}
!210 = !{!"66"}
!211 = !{!"67"}
!212 = !{!"68"}
!213 = !DILocalVariable(name: "i", scope: !178, file: !3, line: 49, type: !214)
!214 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!215 = !DILocation(line: 0, scope: !178)
!216 = !{!"69"}
!217 = !DILocation(line: 57, column: 8, scope: !218)
!218 = distinct !DILexicalBlock(scope: !178, file: !3, line: 57, column: 3)
!219 = !{!"70"}
!220 = !DILocation(line: 0, scope: !218)
!221 = !{!"71"}
!222 = !{!"72"}
!223 = !DILocation(line: 57, column: 17, scope: !224)
!224 = distinct !DILexicalBlock(scope: !218, file: !3, line: 57, column: 3)
!225 = !{!"73"}
!226 = !DILocation(line: 57, column: 3, scope: !218)
!227 = !{!"74"}
!228 = !DILocation(line: 74, column: 4, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !3, line: 57, column: 29)
!230 = !{!"75"}
!231 = !DILocation(line: 74, column: 4, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 74, column: 4)
!233 = !{!"76"}
!234 = !{!"77"}
!235 = !{!"78"}
!236 = !{!"79"}
!237 = !{!"80"}
!238 = !{!"81"}
!239 = !{!"82"}
!240 = !{!"83"}
!241 = !{!"84"}
!242 = !{!"85"}
!243 = !{!"86"}
!244 = !{!"87"}
!245 = !{!"88"}
!246 = !{!"89"}
!247 = !{!"90"}
!248 = !{!"91"}
!249 = !{!"92"}
!250 = !{!"93"}
!251 = !{!"94"}
!252 = !{!"95"}
!253 = !{!"96"}
!254 = !{!"97"}
!255 = !{!"98"}
!256 = !{!"99"}
!257 = !{!"100"}
!258 = !{!"101"}
!259 = !{!"102"}
!260 = !{!"103"}
!261 = !{!"104"}
!262 = !{!"105"}
!263 = !{!"106"}
!264 = !{!"107"}
!265 = !{!"108"}
!266 = !{!"109"}
!267 = !{!"110"}
!268 = !{!"111"}
!269 = !{!"112"}
!270 = !{!"113"}
!271 = !{!"114"}
!272 = !{!"115"}
!273 = !{!"116"}
!274 = !{!"117"}
!275 = !{!"118"}
!276 = !{!"119"}
!277 = !{!"120"}
!278 = !{!"121"}
!279 = !{!"122"}
!280 = !{!"123"}
!281 = !{!"124"}
!282 = !{!"125"}
!283 = !{!"126"}
!284 = !{!"127"}
!285 = !{!"128"}
!286 = !{!"129"}
!287 = !{!"130"}
!288 = !{!"131"}
!289 = !{!"132"}
!290 = !{!"133"}
!291 = !{!"134"}
!292 = !{!"135"}
!293 = !{!"136"}
!294 = !{!"137"}
!295 = !{!"138"}
!296 = !{!"139"}
!297 = !{!"140"}
!298 = !{!"141"}
!299 = !{!"142"}
!300 = !{!"143"}
!301 = !{!"144"}
!302 = !{!"145"}
!303 = !{!"146"}
!304 = !{!"147"}
!305 = !{!"148"}
!306 = !{!"149"}
!307 = !{!"150"}
!308 = !{!"151"}
!309 = !{!"152"}
!310 = !{!"153"}
!311 = !{!"154"}
!312 = !{!"155"}
!313 = !{!"156"}
!314 = !{!"157"}
!315 = !{!"158"}
!316 = !{!"159"}
!317 = !{!"160"}
!318 = !DILocation(line: 75, column: 4, scope: !229)
!319 = !{!"161"}
!320 = !DILocation(line: 75, column: 4, scope: !321)
!321 = distinct !DILexicalBlock(scope: !229, file: !3, line: 75, column: 4)
!322 = !{!"162"}
!323 = !{!"163"}
!324 = !{!"164"}
!325 = !{!"165"}
!326 = !{!"166"}
!327 = !{!"167"}
!328 = !{!"168"}
!329 = !{!"169"}
!330 = !{!"170"}
!331 = !{!"171"}
!332 = !{!"172"}
!333 = !{!"173"}
!334 = !{!"174"}
!335 = !{!"175"}
!336 = !{!"176"}
!337 = !{!"177"}
!338 = !{!"178"}
!339 = !{!"179"}
!340 = !{!"180"}
!341 = !{!"181"}
!342 = !{!"182"}
!343 = !{!"183"}
!344 = !{!"184"}
!345 = !{!"185"}
!346 = !{!"186"}
!347 = !{!"187"}
!348 = !{!"188"}
!349 = !{!"189"}
!350 = !{!"190"}
!351 = !{!"191"}
!352 = !{!"192"}
!353 = !{!"193"}
!354 = !{!"194"}
!355 = !{!"195"}
!356 = !{!"196"}
!357 = !{!"197"}
!358 = !{!"198"}
!359 = !{!"199"}
!360 = !{!"200"}
!361 = !{!"201"}
!362 = !{!"202"}
!363 = !{!"203"}
!364 = !{!"204"}
!365 = !{!"205"}
!366 = !{!"206"}
!367 = !{!"207"}
!368 = !{!"208"}
!369 = !{!"209"}
!370 = !{!"210"}
!371 = !{!"211"}
!372 = !{!"212"}
!373 = !{!"213"}
!374 = !{!"214"}
!375 = !{!"215"}
!376 = !{!"216"}
!377 = !{!"217"}
!378 = !{!"218"}
!379 = !{!"219"}
!380 = !{!"220"}
!381 = !{!"221"}
!382 = !{!"222"}
!383 = !{!"223"}
!384 = !{!"224"}
!385 = !{!"225"}
!386 = !{!"226"}
!387 = !{!"227"}
!388 = !{!"228"}
!389 = !{!"229"}
!390 = !{!"230"}
!391 = !{!"231"}
!392 = !{!"232"}
!393 = !{!"233"}
!394 = !{!"234"}
!395 = !{!"235"}
!396 = !{!"236"}
!397 = !{!"237"}
!398 = !{!"238"}
!399 = !{!"239"}
!400 = !{!"240"}
!401 = !{!"241"}
!402 = !{!"242"}
!403 = !{!"243"}
!404 = !{!"244"}
!405 = !{!"245"}
!406 = !{!"246"}
!407 = !DILocation(line: 76, column: 4, scope: !229)
!408 = !{!"247"}
!409 = !DILocation(line: 76, column: 4, scope: !410)
!410 = distinct !DILexicalBlock(scope: !229, file: !3, line: 76, column: 4)
!411 = !{!"248"}
!412 = !{!"249"}
!413 = !{!"250"}
!414 = !{!"251"}
!415 = !{!"252"}
!416 = !{!"253"}
!417 = !{!"254"}
!418 = !{!"255"}
!419 = !{!"256"}
!420 = !{!"257"}
!421 = !{!"258"}
!422 = !{!"259"}
!423 = !{!"260"}
!424 = !{!"261"}
!425 = !{!"262"}
!426 = !{!"263"}
!427 = !{!"264"}
!428 = !{!"265"}
!429 = !{!"266"}
!430 = !{!"267"}
!431 = !{!"268"}
!432 = !{!"269"}
!433 = !{!"270"}
!434 = !{!"271"}
!435 = !{!"272"}
!436 = !{!"273"}
!437 = !{!"274"}
!438 = !{!"275"}
!439 = !{!"276"}
!440 = !{!"277"}
!441 = !{!"278"}
!442 = !{!"279"}
!443 = !{!"280"}
!444 = !{!"281"}
!445 = !{!"282"}
!446 = !{!"283"}
!447 = !{!"284"}
!448 = !{!"285"}
!449 = !{!"286"}
!450 = !{!"287"}
!451 = !{!"288"}
!452 = !{!"289"}
!453 = !{!"290"}
!454 = !{!"291"}
!455 = !{!"292"}
!456 = !{!"293"}
!457 = !{!"294"}
!458 = !{!"295"}
!459 = !{!"296"}
!460 = !{!"297"}
!461 = !{!"298"}
!462 = !{!"299"}
!463 = !{!"300"}
!464 = !{!"301"}
!465 = !{!"302"}
!466 = !{!"303"}
!467 = !{!"304"}
!468 = !{!"305"}
!469 = !{!"306"}
!470 = !{!"307"}
!471 = !{!"308"}
!472 = !{!"309"}
!473 = !{!"310"}
!474 = !{!"311"}
!475 = !{!"312"}
!476 = !{!"313"}
!477 = !{!"314"}
!478 = !{!"315"}
!479 = !{!"316"}
!480 = !{!"317"}
!481 = !{!"318"}
!482 = !{!"319"}
!483 = !{!"320"}
!484 = !{!"321"}
!485 = !{!"322"}
!486 = !{!"323"}
!487 = !{!"324"}
!488 = !{!"325"}
!489 = !{!"326"}
!490 = !{!"327"}
!491 = !{!"328"}
!492 = !{!"329"}
!493 = !{!"330"}
!494 = !{!"331"}
!495 = !{!"332"}
!496 = !DILocation(line: 77, column: 4, scope: !229)
!497 = !{!"333"}
!498 = !DILocation(line: 77, column: 4, scope: !499)
!499 = distinct !DILexicalBlock(scope: !229, file: !3, line: 77, column: 4)
!500 = !{!"334"}
!501 = !{!"335"}
!502 = !{!"336"}
!503 = !{!"337"}
!504 = !{!"338"}
!505 = !{!"339"}
!506 = !{!"340"}
!507 = !{!"341"}
!508 = !{!"342"}
!509 = !{!"343"}
!510 = !{!"344"}
!511 = !{!"345"}
!512 = !{!"346"}
!513 = !{!"347"}
!514 = !{!"348"}
!515 = !{!"349"}
!516 = !{!"350"}
!517 = !{!"351"}
!518 = !{!"352"}
!519 = !{!"353"}
!520 = !{!"354"}
!521 = !{!"355"}
!522 = !{!"356"}
!523 = !{!"357"}
!524 = !{!"358"}
!525 = !{!"359"}
!526 = !{!"360"}
!527 = !{!"361"}
!528 = !{!"362"}
!529 = !{!"363"}
!530 = !{!"364"}
!531 = !{!"365"}
!532 = !{!"366"}
!533 = !{!"367"}
!534 = !{!"368"}
!535 = !{!"369"}
!536 = !{!"370"}
!537 = !{!"371"}
!538 = !{!"372"}
!539 = !{!"373"}
!540 = !{!"374"}
!541 = !{!"375"}
!542 = !{!"376"}
!543 = !{!"377"}
!544 = !{!"378"}
!545 = !{!"379"}
!546 = !{!"380"}
!547 = !{!"381"}
!548 = !{!"382"}
!549 = !{!"383"}
!550 = !{!"384"}
!551 = !{!"385"}
!552 = !{!"386"}
!553 = !{!"387"}
!554 = !{!"388"}
!555 = !{!"389"}
!556 = !{!"390"}
!557 = !{!"391"}
!558 = !{!"392"}
!559 = !{!"393"}
!560 = !{!"394"}
!561 = !{!"395"}
!562 = !{!"396"}
!563 = !{!"397"}
!564 = !{!"398"}
!565 = !{!"399"}
!566 = !{!"400"}
!567 = !{!"401"}
!568 = !{!"402"}
!569 = !{!"403"}
!570 = !{!"404"}
!571 = !{!"405"}
!572 = !{!"406"}
!573 = !{!"407"}
!574 = !{!"408"}
!575 = !{!"409"}
!576 = !{!"410"}
!577 = !{!"411"}
!578 = !{!"412"}
!579 = !{!"413"}
!580 = !{!"414"}
!581 = !{!"415"}
!582 = !{!"416"}
!583 = !{!"417"}
!584 = !{!"418"}
!585 = !DILocation(line: 78, column: 4, scope: !229)
!586 = !{!"419"}
!587 = !DILocation(line: 78, column: 4, scope: !588)
!588 = distinct !DILexicalBlock(scope: !229, file: !3, line: 78, column: 4)
!589 = !{!"420"}
!590 = !{!"421"}
!591 = !{!"422"}
!592 = !{!"423"}
!593 = !{!"424"}
!594 = !{!"425"}
!595 = !{!"426"}
!596 = !{!"427"}
!597 = !{!"428"}
!598 = !{!"429"}
!599 = !{!"430"}
!600 = !{!"431"}
!601 = !{!"432"}
!602 = !{!"433"}
!603 = !{!"434"}
!604 = !{!"435"}
!605 = !{!"436"}
!606 = !{!"437"}
!607 = !{!"438"}
!608 = !{!"439"}
!609 = !{!"440"}
!610 = !{!"441"}
!611 = !{!"442"}
!612 = !{!"443"}
!613 = !{!"444"}
!614 = !{!"445"}
!615 = !{!"446"}
!616 = !{!"447"}
!617 = !{!"448"}
!618 = !{!"449"}
!619 = !{!"450"}
!620 = !{!"451"}
!621 = !{!"452"}
!622 = !{!"453"}
!623 = !{!"454"}
!624 = !{!"455"}
!625 = !{!"456"}
!626 = !{!"457"}
!627 = !{!"458"}
!628 = !{!"459"}
!629 = !{!"460"}
!630 = !{!"461"}
!631 = !{!"462"}
!632 = !{!"463"}
!633 = !{!"464"}
!634 = !{!"465"}
!635 = !{!"466"}
!636 = !{!"467"}
!637 = !{!"468"}
!638 = !{!"469"}
!639 = !{!"470"}
!640 = !{!"471"}
!641 = !{!"472"}
!642 = !{!"473"}
!643 = !{!"474"}
!644 = !{!"475"}
!645 = !{!"476"}
!646 = !{!"477"}
!647 = !{!"478"}
!648 = !{!"479"}
!649 = !{!"480"}
!650 = !{!"481"}
!651 = !{!"482"}
!652 = !{!"483"}
!653 = !{!"484"}
!654 = !{!"485"}
!655 = !{!"486"}
!656 = !{!"487"}
!657 = !{!"488"}
!658 = !{!"489"}
!659 = !{!"490"}
!660 = !{!"491"}
!661 = !{!"492"}
!662 = !{!"493"}
!663 = !{!"494"}
!664 = !{!"495"}
!665 = !{!"496"}
!666 = !{!"497"}
!667 = !{!"498"}
!668 = !{!"499"}
!669 = !{!"500"}
!670 = !{!"501"}
!671 = !{!"502"}
!672 = !{!"503"}
!673 = !{!"504"}
!674 = !DILocation(line: 79, column: 4, scope: !229)
!675 = !{!"505"}
!676 = !DILocation(line: 79, column: 4, scope: !677)
!677 = distinct !DILexicalBlock(scope: !229, file: !3, line: 79, column: 4)
!678 = !{!"506"}
!679 = !{!"507"}
!680 = !{!"508"}
!681 = !{!"509"}
!682 = !{!"510"}
!683 = !{!"511"}
!684 = !{!"512"}
!685 = !{!"513"}
!686 = !{!"514"}
!687 = !{!"515"}
!688 = !{!"516"}
!689 = !{!"517"}
!690 = !{!"518"}
!691 = !{!"519"}
!692 = !{!"520"}
!693 = !{!"521"}
!694 = !{!"522"}
!695 = !{!"523"}
!696 = !{!"524"}
!697 = !{!"525"}
!698 = !{!"526"}
!699 = !{!"527"}
!700 = !{!"528"}
!701 = !{!"529"}
!702 = !{!"530"}
!703 = !{!"531"}
!704 = !{!"532"}
!705 = !{!"533"}
!706 = !{!"534"}
!707 = !{!"535"}
!708 = !{!"536"}
!709 = !{!"537"}
!710 = !{!"538"}
!711 = !{!"539"}
!712 = !{!"540"}
!713 = !{!"541"}
!714 = !{!"542"}
!715 = !{!"543"}
!716 = !{!"544"}
!717 = !{!"545"}
!718 = !{!"546"}
!719 = !{!"547"}
!720 = !{!"548"}
!721 = !{!"549"}
!722 = !{!"550"}
!723 = !{!"551"}
!724 = !{!"552"}
!725 = !{!"553"}
!726 = !{!"554"}
!727 = !{!"555"}
!728 = !{!"556"}
!729 = !{!"557"}
!730 = !{!"558"}
!731 = !{!"559"}
!732 = !{!"560"}
!733 = !{!"561"}
!734 = !{!"562"}
!735 = !{!"563"}
!736 = !{!"564"}
!737 = !{!"565"}
!738 = !{!"566"}
!739 = !{!"567"}
!740 = !{!"568"}
!741 = !{!"569"}
!742 = !{!"570"}
!743 = !{!"571"}
!744 = !{!"572"}
!745 = !{!"573"}
!746 = !{!"574"}
!747 = !{!"575"}
!748 = !{!"576"}
!749 = !{!"577"}
!750 = !{!"578"}
!751 = !{!"579"}
!752 = !{!"580"}
!753 = !{!"581"}
!754 = !{!"582"}
!755 = !{!"583"}
!756 = !{!"584"}
!757 = !{!"585"}
!758 = !{!"586"}
!759 = !{!"587"}
!760 = !{!"588"}
!761 = !{!"589"}
!762 = !{!"590"}
!763 = !DILocation(line: 80, column: 4, scope: !229)
!764 = !{!"591"}
!765 = !DILocation(line: 80, column: 4, scope: !766)
!766 = distinct !DILexicalBlock(scope: !229, file: !3, line: 80, column: 4)
!767 = !{!"592"}
!768 = !{!"593"}
!769 = !{!"594"}
!770 = !{!"595"}
!771 = !{!"596"}
!772 = !{!"597"}
!773 = !{!"598"}
!774 = !{!"599"}
!775 = !{!"600"}
!776 = !{!"601"}
!777 = !{!"602"}
!778 = !{!"603"}
!779 = !{!"604"}
!780 = !{!"605"}
!781 = !{!"606"}
!782 = !{!"607"}
!783 = !{!"608"}
!784 = !{!"609"}
!785 = !{!"610"}
!786 = !{!"611"}
!787 = !{!"612"}
!788 = !{!"613"}
!789 = !{!"614"}
!790 = !{!"615"}
!791 = !{!"616"}
!792 = !{!"617"}
!793 = !{!"618"}
!794 = !{!"619"}
!795 = !{!"620"}
!796 = !{!"621"}
!797 = !{!"622"}
!798 = !{!"623"}
!799 = !{!"624"}
!800 = !{!"625"}
!801 = !{!"626"}
!802 = !{!"627"}
!803 = !{!"628"}
!804 = !{!"629"}
!805 = !{!"630"}
!806 = !{!"631"}
!807 = !{!"632"}
!808 = !{!"633"}
!809 = !{!"634"}
!810 = !{!"635"}
!811 = !{!"636"}
!812 = !{!"637"}
!813 = !{!"638"}
!814 = !{!"639"}
!815 = !{!"640"}
!816 = !{!"641"}
!817 = !{!"642"}
!818 = !{!"643"}
!819 = !{!"644"}
!820 = !{!"645"}
!821 = !{!"646"}
!822 = !{!"647"}
!823 = !{!"648"}
!824 = !{!"649"}
!825 = !{!"650"}
!826 = !{!"651"}
!827 = !{!"652"}
!828 = !{!"653"}
!829 = !{!"654"}
!830 = !{!"655"}
!831 = !{!"656"}
!832 = !{!"657"}
!833 = !{!"658"}
!834 = !{!"659"}
!835 = !{!"660"}
!836 = !{!"661"}
!837 = !{!"662"}
!838 = !{!"663"}
!839 = !{!"664"}
!840 = !{!"665"}
!841 = !{!"666"}
!842 = !{!"667"}
!843 = !{!"668"}
!844 = !{!"669"}
!845 = !{!"670"}
!846 = !{!"671"}
!847 = !{!"672"}
!848 = !{!"673"}
!849 = !{!"674"}
!850 = !{!"675"}
!851 = !{!"676"}
!852 = !DILocation(line: 81, column: 4, scope: !229)
!853 = !{!"677"}
!854 = !DILocation(line: 81, column: 4, scope: !855)
!855 = distinct !DILexicalBlock(scope: !229, file: !3, line: 81, column: 4)
!856 = !{!"678"}
!857 = !{!"679"}
!858 = !{!"680"}
!859 = !{!"681"}
!860 = !{!"682"}
!861 = !{!"683"}
!862 = !{!"684"}
!863 = !{!"685"}
!864 = !{!"686"}
!865 = !{!"687"}
!866 = !{!"688"}
!867 = !{!"689"}
!868 = !{!"690"}
!869 = !{!"691"}
!870 = !{!"692"}
!871 = !{!"693"}
!872 = !{!"694"}
!873 = !{!"695"}
!874 = !{!"696"}
!875 = !{!"697"}
!876 = !{!"698"}
!877 = !{!"699"}
!878 = !{!"700"}
!879 = !{!"701"}
!880 = !{!"702"}
!881 = !{!"703"}
!882 = !{!"704"}
!883 = !{!"705"}
!884 = !{!"706"}
!885 = !{!"707"}
!886 = !{!"708"}
!887 = !{!"709"}
!888 = !{!"710"}
!889 = !{!"711"}
!890 = !{!"712"}
!891 = !{!"713"}
!892 = !{!"714"}
!893 = !{!"715"}
!894 = !{!"716"}
!895 = !{!"717"}
!896 = !{!"718"}
!897 = !{!"719"}
!898 = !{!"720"}
!899 = !{!"721"}
!900 = !{!"722"}
!901 = !{!"723"}
!902 = !{!"724"}
!903 = !{!"725"}
!904 = !{!"726"}
!905 = !{!"727"}
!906 = !{!"728"}
!907 = !{!"729"}
!908 = !{!"730"}
!909 = !{!"731"}
!910 = !{!"732"}
!911 = !{!"733"}
!912 = !{!"734"}
!913 = !{!"735"}
!914 = !{!"736"}
!915 = !{!"737"}
!916 = !{!"738"}
!917 = !{!"739"}
!918 = !{!"740"}
!919 = !{!"741"}
!920 = !{!"742"}
!921 = !{!"743"}
!922 = !{!"744"}
!923 = !{!"745"}
!924 = !{!"746"}
!925 = !{!"747"}
!926 = !{!"748"}
!927 = !{!"749"}
!928 = !{!"750"}
!929 = !{!"751"}
!930 = !{!"752"}
!931 = !{!"753"}
!932 = !{!"754"}
!933 = !{!"755"}
!934 = !{!"756"}
!935 = !{!"757"}
!936 = !{!"758"}
!937 = !{!"759"}
!938 = !{!"760"}
!939 = !{!"761"}
!940 = !{!"762"}
!941 = !DILocation(line: 85, column: 3, scope: !229)
!942 = !{!"763"}
!943 = !DILocation(line: 57, column: 25, scope: !224)
!944 = !{!"764"}
!945 = !{!"765"}
!946 = !DILocation(line: 57, column: 3, scope: !224)
!947 = distinct !{!947, !226, !948, !132}
!948 = !DILocation(line: 85, column: 3, scope: !218)
!949 = !{!"766"}
!950 = !{!"767"}
!951 = !DILocation(line: 86, column: 8, scope: !952)
!952 = distinct !DILexicalBlock(scope: !178, file: !3, line: 86, column: 3)
!953 = !{!"768"}
!954 = !DILocation(line: 0, scope: !952)
!955 = !{!"769"}
!956 = !{!"770"}
!957 = !DILocation(line: 86, column: 17, scope: !958)
!958 = distinct !DILexicalBlock(scope: !952, file: !3, line: 86, column: 3)
!959 = !{!"771"}
!960 = !DILocation(line: 86, column: 3, scope: !952)
!961 = !{!"772"}
!962 = !DILocation(line: 87, column: 22, scope: !963)
!963 = distinct !DILexicalBlock(scope: !958, file: !3, line: 86, column: 28)
!964 = !{!"773"}
!965 = !DILocation(line: 87, column: 16, scope: !963)
!966 = !{!"774"}
!967 = !DILocation(line: 87, column: 29, scope: !963)
!968 = !{!"775"}
!969 = !{!"776"}
!970 = !DILocation(line: 87, column: 40, scope: !963)
!971 = !{!"777"}
!972 = !{!"778"}
!973 = !DILocation(line: 87, column: 38, scope: !963)
!974 = !{!"779"}
!975 = !DILocation(line: 87, column: 4, scope: !963)
!976 = !{!"780"}
!977 = !DILocation(line: 88, column: 3, scope: !963)
!978 = !{!"781"}
!979 = !DILocation(line: 86, column: 24, scope: !958)
!980 = !{!"782"}
!981 = !{!"783"}
!982 = !DILocation(line: 86, column: 3, scope: !958)
!983 = distinct !{!983, !960, !984, !132}
!984 = !DILocation(line: 88, column: 3, scope: !952)
!985 = !{!"784"}
!986 = !{!"785"}
!987 = !DILocation(line: 89, column: 8, scope: !988)
!988 = distinct !DILexicalBlock(scope: !178, file: !3, line: 89, column: 3)
!989 = !{!"786"}
!990 = !DILocation(line: 0, scope: !988)
!991 = !{!"787"}
!992 = !{!"788"}
!993 = !DILocation(line: 89, column: 17, scope: !994)
!994 = distinct !DILexicalBlock(scope: !988, file: !3, line: 89, column: 3)
!995 = !{!"789"}
!996 = !DILocation(line: 89, column: 3, scope: !988)
!997 = !{!"790"}
!998 = !DILocation(line: 90, column: 22, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !3, line: 89, column: 29)
!1000 = !{!"791"}
!1001 = !DILocation(line: 90, column: 16, scope: !999)
!1002 = !{!"792"}
!1003 = !DILocation(line: 90, column: 29, scope: !999)
!1004 = !{!"793"}
!1005 = !{!"794"}
!1006 = !DILocation(line: 90, column: 45, scope: !999)
!1007 = !{!"795"}
!1008 = !DILocation(line: 90, column: 40, scope: !999)
!1009 = !{!"796"}
!1010 = !{!"797"}
!1011 = !DILocation(line: 90, column: 38, scope: !999)
!1012 = !{!"798"}
!1013 = !DILocation(line: 90, column: 4, scope: !999)
!1014 = !{!"799"}
!1015 = !DILocation(line: 91, column: 3, scope: !999)
!1016 = !{!"800"}
!1017 = !DILocation(line: 89, column: 25, scope: !994)
!1018 = !{!"801"}
!1019 = !{!"802"}
!1020 = !DILocation(line: 89, column: 3, scope: !994)
!1021 = distinct !{!1021, !996, !1022, !132}
!1022 = !DILocation(line: 91, column: 3, scope: !988)
!1023 = !{!"803"}
!1024 = !DILocation(line: 92, column: 15, scope: !178)
!1025 = !{!"804"}
!1026 = !DILocation(line: 92, column: 24, scope: !178)
!1027 = !{!"805"}
!1028 = !{!"806"}
!1029 = !DILocation(line: 92, column: 34, scope: !178)
!1030 = !{!"807"}
!1031 = !DILocation(line: 92, column: 3, scope: !178)
!1032 = !{!"808"}
!1033 = !{!"809"}
!1034 = !DILocation(line: 93, column: 8, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !178, file: !3, line: 93, column: 3)
!1036 = !{!"810"}
!1037 = !DILocation(line: 0, scope: !1035)
!1038 = !{!"811"}
!1039 = !{!"812"}
!1040 = !DILocation(line: 93, column: 18, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 93, column: 3)
!1042 = !{!"813"}
!1043 = !DILocation(line: 93, column: 3, scope: !1035)
!1044 = !{!"814"}
!1045 = !DILocation(line: 94, column: 22, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 93, column: 30)
!1047 = !{!"815"}
!1048 = !DILocation(line: 94, column: 16, scope: !1046)
!1049 = !{!"816"}
!1050 = !DILocation(line: 94, column: 29, scope: !1046)
!1051 = !{!"817"}
!1052 = !{!"818"}
!1053 = !DILocation(line: 94, column: 46, scope: !1046)
!1054 = !{!"819"}
!1055 = !DILocation(line: 94, column: 40, scope: !1046)
!1056 = !{!"820"}
!1057 = !{!"821"}
!1058 = !DILocation(line: 94, column: 38, scope: !1046)
!1059 = !{!"822"}
!1060 = !DILocation(line: 94, column: 4, scope: !1046)
!1061 = !{!"823"}
!1062 = !DILocation(line: 95, column: 3, scope: !1046)
!1063 = !{!"824"}
!1064 = !DILocation(line: 93, column: 26, scope: !1041)
!1065 = !{!"825"}
!1066 = !{!"826"}
!1067 = !DILocation(line: 93, column: 3, scope: !1041)
!1068 = distinct !{!1068, !1043, !1069, !132}
!1069 = !DILocation(line: 95, column: 3, scope: !1035)
!1070 = !{!"827"}
!1071 = !DILocation(line: 97, column: 14, scope: !178)
!1072 = !{!"828"}
!1073 = !DILocation(line: 97, column: 10, scope: !178)
!1074 = !{!"829"}
!1075 = !{!"830"}
!1076 = !{!"831"}
!1077 = !{!"832"}
!1078 = !DILocalVariable(name: "clen", scope: !178, file: !3, line: 50, type: !14)
!1079 = !{!"833"}
!1080 = !{!"834"}
!1081 = !DILocation(line: 98, column: 8, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !178, file: !3, line: 98, column: 3)
!1083 = !{!"835"}
!1084 = !DILocation(line: 0, scope: !1082)
!1085 = !{!"836"}
!1086 = !{!"837"}
!1087 = !DILocation(line: 98, column: 17, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 98, column: 3)
!1089 = !{!"838"}
!1090 = !DILocation(line: 98, column: 3, scope: !1082)
!1091 = !{!"839"}
!1092 = !DILocation(line: 99, column: 14, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 98, column: 31)
!1094 = !{!"840"}
!1095 = !{!"841"}
!1096 = !{!"842"}
!1097 = !DILocation(line: 99, column: 4, scope: !1093)
!1098 = !{!"843"}
!1099 = !DILocation(line: 99, column: 11, scope: !1093)
!1100 = !{!"844"}
!1101 = !{!"845"}
!1102 = !{!"846"}
!1103 = !{!"847"}
!1104 = !{!"848"}
!1105 = !DILocation(line: 100, column: 3, scope: !1093)
!1106 = !{!"849"}
!1107 = !DILocation(line: 98, column: 27, scope: !1088)
!1108 = !{!"850"}
!1109 = !{!"851"}
!1110 = !DILocation(line: 98, column: 3, scope: !1088)
!1111 = distinct !{!1111, !1090, !1112, !132}
!1112 = !DILocation(line: 100, column: 3, scope: !1082)
!1113 = !{!"852"}
!1114 = !DILocation(line: 101, column: 7, scope: !178)
!1115 = !{!"853"}
!1116 = !{!"854"}
!1117 = !DILocation(line: 102, column: 7, scope: !178)
!1118 = !{!"855"}
!1119 = !{!"856"}
!1120 = !DILocation(line: 103, column: 6, scope: !178)
!1121 = !{!"857"}
!1122 = !{!"858"}
!1123 = distinct !{!1123, !166, !1124, !132}
!1124 = !DILocation(line: 104, column: 2, scope: !2)
!1125 = !{!"859"}
!1126 = !DILocation(line: 105, column: 2, scope: !2)
!1127 = !{!"860"}
!1128 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !1129, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!6, !11}
!1131 = !DILocalVariable(name: "src", arg: 1, scope: !1128, file: !26, line: 574, type: !11)
!1132 = !DILocation(line: 0, scope: !1128)
!1133 = !{!"861"}
!1134 = !DILocation(line: 577, column: 10, scope: !1128)
!1135 = !{!"862"}
!1136 = !DILocation(line: 577, column: 38, scope: !1128)
!1137 = !{!"863"}
!1138 = !{!"864"}
!1139 = !DILocation(line: 577, column: 2, scope: !1128)
!1140 = !{!"865"}
!1141 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !1142, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !13, !6}
!1144 = !DILocalVariable(name: "dst", arg: 1, scope: !1141, file: !26, line: 542, type: !13)
!1145 = !DILocation(line: 0, scope: !1141)
!1146 = !{!"866"}
!1147 = !DILocalVariable(name: "x", arg: 2, scope: !1141, file: !26, line: 542, type: !6)
!1148 = !{!"867"}
!1149 = !DILocation(line: 545, column: 3, scope: !1141)
!1150 = !{!"868"}
!1151 = !DILocation(line: 545, column: 25, scope: !1141)
!1152 = !{!"869"}
!1153 = !DILocation(line: 545, column: 27, scope: !1141)
!1154 = !{!"870"}
!1155 = !DILocation(line: 555, column: 1, scope: !1141)
!1156 = !{!"871"}
!1157 = distinct !DISubprogram(name: "br_poly1305_ctmulq_run", scope: !40, file: !40, line: 316, type: !1158, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !11, !11, !13, !14, !11, !14, !13, !1160, !214}
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_chacha20_run", file: !1161, line: 2442, baseType: !1162)
!1161 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmulq_ChaCha20")
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1163 = !{!"872"}
!1164 = !{!"873"}
!1165 = !{!"874"}
!1166 = !{!"875"}
!1167 = !DILocalVariable(name: "key", arg: 1, scope: !1157, file: !40, line: 316, type: !11)
!1168 = !DILocation(line: 0, scope: !1157)
!1169 = !{!"876"}
!1170 = !DILocalVariable(name: "iv", arg: 2, scope: !1157, file: !40, line: 316, type: !11)
!1171 = !{!"877"}
!1172 = !DILocalVariable(name: "data", arg: 3, scope: !1157, file: !40, line: 317, type: !13)
!1173 = !{!"878"}
!1174 = !DILocalVariable(name: "len", arg: 4, scope: !1157, file: !40, line: 317, type: !14)
!1175 = !{!"879"}
!1176 = !DILocalVariable(name: "aad", arg: 5, scope: !1157, file: !40, line: 317, type: !11)
!1177 = !{!"880"}
!1178 = !DILocalVariable(name: "aad_len", arg: 6, scope: !1157, file: !40, line: 317, type: !14)
!1179 = !{!"881"}
!1180 = !DILocalVariable(name: "tag", arg: 7, scope: !1157, file: !40, line: 318, type: !13)
!1181 = !{!"882"}
!1182 = !DILocalVariable(name: "ichacha", arg: 8, scope: !1157, file: !40, line: 318, type: !1160)
!1183 = !{!"883"}
!1184 = !DILocalVariable(name: "encrypt", arg: 9, scope: !1157, file: !40, line: 318, type: !214)
!1185 = !{!"884"}
!1186 = !DILocalVariable(name: "pkey", scope: !1157, file: !40, line: 320, type: !1187)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !1188)
!1188 = !{!1189}
!1189 = !DISubrange(count: 32)
!1190 = !DILocation(line: 320, column: 16, scope: !1157)
!1191 = !{!"885"}
!1192 = !DILocalVariable(name: "foot", scope: !1157, file: !40, line: 320, type: !1193)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !180)
!1194 = !DILocation(line: 320, column: 26, scope: !1157)
!1195 = !{!"886"}
!1196 = !DILocalVariable(name: "r", scope: !1157, file: !40, line: 321, type: !1197)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 384, elements: !1198)
!1198 = !{!1199}
!1199 = !DISubrange(count: 6)
!1200 = !DILocation(line: 321, column: 11, scope: !1157)
!1201 = !{!"887"}
!1202 = !DILocalVariable(name: "acc", scope: !1157, file: !40, line: 321, type: !1203)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 192, elements: !92)
!1204 = !DILocation(line: 321, column: 17, scope: !1157)
!1205 = !{!"888"}
!1206 = !DILocation(line: 330, column: 2, scope: !1157)
!1207 = !{!"889"}
!1208 = !{!"890"}
!1209 = !DILocation(line: 331, column: 22, scope: !1157)
!1210 = !{!"891"}
!1211 = !DILocation(line: 331, column: 2, scope: !1157)
!1212 = !{!"892"}
!1213 = !DILocation(line: 337, column: 6, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1157, file: !40, line: 337, column: 6)
!1215 = !{!"893"}
!1216 = !DILocation(line: 337, column: 6, scope: !1157)
!1217 = !{!"894"}
!1218 = !DILocation(line: 338, column: 3, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !40, line: 337, column: 15)
!1220 = !{!"895"}
!1221 = !DILocation(line: 339, column: 2, scope: !1219)
!1222 = !{!"896"}
!1223 = !DILocation(line: 351, column: 2, scope: !1157)
!1224 = !{!"897"}
!1225 = !DILocation(line: 351, column: 11, scope: !1157)
!1226 = !{!"898"}
!1227 = !{!"899"}
!1228 = !{!"900"}
!1229 = !{!"901"}
!1230 = !{!"902"}
!1231 = !DILocation(line: 352, column: 2, scope: !1157)
!1232 = !{!"903"}
!1233 = !DILocation(line: 352, column: 11, scope: !1157)
!1234 = !{!"904"}
!1235 = !{!"905"}
!1236 = !{!"906"}
!1237 = !{!"907"}
!1238 = !{!"908"}
!1239 = !DILocation(line: 353, column: 2, scope: !1157)
!1240 = !{!"909"}
!1241 = !DILocation(line: 353, column: 11, scope: !1157)
!1242 = !{!"910"}
!1243 = !{!"911"}
!1244 = !{!"912"}
!1245 = !{!"913"}
!1246 = !{!"914"}
!1247 = !DILocation(line: 354, column: 2, scope: !1157)
!1248 = !{!"915"}
!1249 = !DILocation(line: 354, column: 11, scope: !1157)
!1250 = !{!"916"}
!1251 = !{!"917"}
!1252 = !{!"918"}
!1253 = !{!"919"}
!1254 = !{!"920"}
!1255 = !DILocation(line: 355, column: 2, scope: !1157)
!1256 = !{!"921"}
!1257 = !DILocation(line: 355, column: 11, scope: !1157)
!1258 = !{!"922"}
!1259 = !{!"923"}
!1260 = !{!"924"}
!1261 = !{!"925"}
!1262 = !{!"926"}
!1263 = !DILocation(line: 356, column: 2, scope: !1157)
!1264 = !{!"927"}
!1265 = !DILocation(line: 356, column: 11, scope: !1157)
!1266 = !{!"928"}
!1267 = !{!"929"}
!1268 = !{!"930"}
!1269 = !{!"931"}
!1270 = !{!"932"}
!1271 = !DILocation(line: 357, column: 2, scope: !1157)
!1272 = !{!"933"}
!1273 = !DILocation(line: 357, column: 11, scope: !1157)
!1274 = !{!"934"}
!1275 = !{!"935"}
!1276 = !{!"936"}
!1277 = !{!"937"}
!1278 = !{!"938"}
!1279 = !DILocation(line: 363, column: 18, scope: !1157)
!1280 = !{!"939"}
!1281 = !DILocation(line: 363, column: 23, scope: !1157)
!1282 = !{!"940"}
!1283 = !DILocation(line: 363, column: 7, scope: !1157)
!1284 = !{!"941"}
!1285 = !DILocalVariable(name: "r0", scope: !1157, file: !40, line: 321, type: !42)
!1286 = !{!"942"}
!1287 = !DILocation(line: 364, column: 18, scope: !1157)
!1288 = !{!"943"}
!1289 = !DILocation(line: 364, column: 23, scope: !1157)
!1290 = !{!"944"}
!1291 = !DILocation(line: 364, column: 7, scope: !1157)
!1292 = !{!"945"}
!1293 = !DILocalVariable(name: "r1", scope: !1157, file: !40, line: 321, type: !42)
!1294 = !{!"946"}
!1295 = !DILocation(line: 365, column: 12, scope: !1157)
!1296 = !{!"947"}
!1297 = !DILocation(line: 365, column: 2, scope: !1157)
!1298 = !{!"948"}
!1299 = !DILocation(line: 365, column: 7, scope: !1157)
!1300 = !{!"949"}
!1301 = !DILocation(line: 366, column: 14, scope: !1157)
!1302 = !{!"950"}
!1303 = !DILocation(line: 366, column: 27, scope: !1157)
!1304 = !{!"951"}
!1305 = !DILocation(line: 366, column: 21, scope: !1157)
!1306 = !{!"952"}
!1307 = !DILocation(line: 366, column: 35, scope: !1157)
!1308 = !{!"953"}
!1309 = !DILocation(line: 366, column: 2, scope: !1157)
!1310 = !{!"954"}
!1311 = !DILocation(line: 366, column: 7, scope: !1157)
!1312 = !{!"955"}
!1313 = !DILocation(line: 367, column: 13, scope: !1157)
!1314 = !{!"956"}
!1315 = !DILocation(line: 367, column: 19, scope: !1157)
!1316 = !{!"957"}
!1317 = !DILocation(line: 367, column: 2, scope: !1157)
!1318 = !{!"958"}
!1319 = !DILocation(line: 367, column: 7, scope: !1157)
!1320 = !{!"959"}
!1321 = !DILocation(line: 368, column: 13, scope: !1157)
!1322 = !{!"960"}
!1323 = !{!"961"}
!1324 = !DILocation(line: 368, column: 18, scope: !1157)
!1325 = !{!"962"}
!1326 = !DILocation(line: 368, column: 10, scope: !1157)
!1327 = !{!"963"}
!1328 = !{!"964"}
!1329 = !DILocation(line: 369, column: 12, scope: !1157)
!1330 = !{!"965"}
!1331 = !DILocation(line: 369, column: 2, scope: !1157)
!1332 = !{!"966"}
!1333 = !DILocation(line: 369, column: 7, scope: !1157)
!1334 = !{!"967"}
!1335 = !DILocation(line: 370, column: 14, scope: !1157)
!1336 = !{!"968"}
!1337 = !{!"969"}
!1338 = !DILocation(line: 370, column: 12, scope: !1157)
!1339 = !{!"970"}
!1340 = !DILocation(line: 370, column: 2, scope: !1157)
!1341 = !{!"971"}
!1342 = !DILocation(line: 370, column: 7, scope: !1157)
!1343 = !{!"972"}
!1344 = !DILocation(line: 371, column: 10, scope: !1157)
!1345 = !{!"973"}
!1346 = !{!"974"}
!1347 = !DILocation(line: 371, column: 21, scope: !1157)
!1348 = !{!"975"}
!1349 = !DILocation(line: 371, column: 15, scope: !1157)
!1350 = !{!"976"}
!1351 = !DILocation(line: 371, column: 29, scope: !1157)
!1352 = !{!"977"}
!1353 = !DILocation(line: 371, column: 2, scope: !1157)
!1354 = !{!"978"}
!1355 = !DILocation(line: 371, column: 7, scope: !1157)
!1356 = !{!"979"}
!1357 = !DILocation(line: 376, column: 2, scope: !1157)
!1358 = !{!"980"}
!1359 = !DILocation(line: 376, column: 9, scope: !1157)
!1360 = !{!"981"}
!1361 = !DILocation(line: 377, column: 2, scope: !1157)
!1362 = !{!"982"}
!1363 = !DILocation(line: 377, column: 9, scope: !1157)
!1364 = !{!"983"}
!1365 = !DILocation(line: 378, column: 2, scope: !1157)
!1366 = !{!"984"}
!1367 = !DILocation(line: 378, column: 9, scope: !1157)
!1368 = !{!"985"}
!1369 = !DILocation(line: 384, column: 13, scope: !1157)
!1370 = !{!"986"}
!1371 = !DILocation(line: 384, column: 2, scope: !1157)
!1372 = !{!"987"}
!1373 = !DILocation(line: 385, column: 13, scope: !1157)
!1374 = !{!"988"}
!1375 = !DILocation(line: 385, column: 18, scope: !1157)
!1376 = !{!"989"}
!1377 = !DILocation(line: 385, column: 2, scope: !1157)
!1378 = !{!"990"}
!1379 = !DILocation(line: 386, column: 17, scope: !1157)
!1380 = !{!"991"}
!1381 = !DILocation(line: 386, column: 22, scope: !1157)
!1382 = !{!"992"}
!1383 = !DILocation(line: 386, column: 2, scope: !1157)
!1384 = !{!"993"}
!1385 = !DILocation(line: 387, column: 17, scope: !1157)
!1386 = !{!"994"}
!1387 = !DILocation(line: 387, column: 22, scope: !1157)
!1388 = !{!"995"}
!1389 = !DILocation(line: 387, column: 2, scope: !1157)
!1390 = !{!"996"}
!1391 = !DILocation(line: 388, column: 23, scope: !1157)
!1392 = !{!"997"}
!1393 = !DILocation(line: 388, column: 28, scope: !1157)
!1394 = !{!"998"}
!1395 = !DILocation(line: 388, column: 31, scope: !1157)
!1396 = !{!"999"}
!1397 = !DILocation(line: 388, column: 2, scope: !1157)
!1398 = !{!"1000"}
!1399 = !DILocation(line: 395, column: 13, scope: !1157)
!1400 = !{!"1001"}
!1401 = !{!"1002"}
!1402 = !DILocation(line: 395, column: 20, scope: !1157)
!1403 = !{!"1003"}
!1404 = !DILocation(line: 395, column: 2, scope: !1157)
!1405 = !{!"1004"}
!1406 = !DILocation(line: 395, column: 9, scope: !1157)
!1407 = !{!"1005"}
!1408 = !{!"1006"}
!1409 = !{!"1007"}
!1410 = !DILocation(line: 396, column: 2, scope: !1157)
!1411 = !{!"1008"}
!1412 = !DILocation(line: 396, column: 9, scope: !1157)
!1413 = !{!"1009"}
!1414 = !{!"1010"}
!1415 = !{!"1011"}
!1416 = !DILocation(line: 397, column: 13, scope: !1157)
!1417 = !{!"1012"}
!1418 = !{!"1013"}
!1419 = !DILocation(line: 397, column: 20, scope: !1157)
!1420 = !{!"1014"}
!1421 = !DILocation(line: 397, column: 2, scope: !1157)
!1422 = !{!"1015"}
!1423 = !DILocation(line: 397, column: 9, scope: !1157)
!1424 = !{!"1016"}
!1425 = !{!"1017"}
!1426 = !{!"1018"}
!1427 = !DILocation(line: 398, column: 2, scope: !1157)
!1428 = !{!"1019"}
!1429 = !DILocation(line: 398, column: 9, scope: !1157)
!1430 = !{!"1020"}
!1431 = !{!"1021"}
!1432 = !{!"1022"}
!1433 = !DILocation(line: 399, column: 17, scope: !1157)
!1434 = !{!"1023"}
!1435 = !{!"1024"}
!1436 = !DILocation(line: 399, column: 24, scope: !1157)
!1437 = !{!"1025"}
!1438 = !DILocation(line: 399, column: 14, scope: !1157)
!1439 = !{!"1026"}
!1440 = !DILocation(line: 399, column: 2, scope: !1157)
!1441 = !{!"1027"}
!1442 = !DILocation(line: 399, column: 9, scope: !1157)
!1443 = !{!"1028"}
!1444 = !{!"1029"}
!1445 = !{!"1030"}
!1446 = !DILocation(line: 400, column: 2, scope: !1157)
!1447 = !{!"1031"}
!1448 = !DILocation(line: 400, column: 9, scope: !1157)
!1449 = !{!"1032"}
!1450 = !{!"1033"}
!1451 = !{!"1034"}
!1452 = !DILocation(line: 401, column: 13, scope: !1157)
!1453 = !{!"1035"}
!1454 = !{!"1036"}
!1455 = !DILocation(line: 401, column: 20, scope: !1157)
!1456 = !{!"1037"}
!1457 = !DILocation(line: 401, column: 2, scope: !1157)
!1458 = !{!"1038"}
!1459 = !DILocation(line: 401, column: 9, scope: !1157)
!1460 = !{!"1039"}
!1461 = !{!"1040"}
!1462 = !{!"1041"}
!1463 = !DILocation(line: 402, column: 2, scope: !1157)
!1464 = !{!"1042"}
!1465 = !DILocation(line: 402, column: 9, scope: !1157)
!1466 = !{!"1043"}
!1467 = !{!"1044"}
!1468 = !{!"1045"}
!1469 = !DILocation(line: 403, column: 13, scope: !1157)
!1470 = !{!"1046"}
!1471 = !{!"1047"}
!1472 = !DILocation(line: 403, column: 20, scope: !1157)
!1473 = !{!"1048"}
!1474 = !DILocation(line: 403, column: 2, scope: !1157)
!1475 = !{!"1049"}
!1476 = !DILocation(line: 403, column: 9, scope: !1157)
!1477 = !{!"1050"}
!1478 = !{!"1051"}
!1479 = !{!"1052"}
!1480 = !DILocation(line: 404, column: 2, scope: !1157)
!1481 = !{!"1053"}
!1482 = !DILocation(line: 404, column: 9, scope: !1157)
!1483 = !{!"1054"}
!1484 = !{!"1055"}
!1485 = !{!"1056"}
!1486 = !DILocation(line: 405, column: 17, scope: !1157)
!1487 = !{!"1057"}
!1488 = !{!"1058"}
!1489 = !DILocation(line: 405, column: 24, scope: !1157)
!1490 = !{!"1059"}
!1491 = !DILocation(line: 405, column: 14, scope: !1157)
!1492 = !{!"1060"}
!1493 = !DILocation(line: 405, column: 2, scope: !1157)
!1494 = !{!"1061"}
!1495 = !DILocation(line: 405, column: 9, scope: !1157)
!1496 = !{!"1062"}
!1497 = !{!"1063"}
!1498 = !{!"1064"}
!1499 = !DILocation(line: 406, column: 2, scope: !1157)
!1500 = !{!"1065"}
!1501 = !DILocation(line: 406, column: 9, scope: !1157)
!1502 = !{!"1066"}
!1503 = !{!"1067"}
!1504 = !{!"1068"}
!1505 = !DILocation(line: 414, column: 17, scope: !1157)
!1506 = !{!"1069"}
!1507 = !{!"1070"}
!1508 = !DILocation(line: 414, column: 7, scope: !1157)
!1509 = !{!"1071"}
!1510 = !DILocalVariable(name: "v0", scope: !1157, file: !40, line: 322, type: !6)
!1511 = !{!"1072"}
!1512 = !DILocation(line: 415, column: 18, scope: !1157)
!1513 = !{!"1073"}
!1514 = !{!"1074"}
!1515 = !DILocation(line: 415, column: 25, scope: !1157)
!1516 = !{!"1075"}
!1517 = !DILocation(line: 415, column: 7, scope: !1157)
!1518 = !{!"1076"}
!1519 = !DILocation(line: 415, column: 45, scope: !1157)
!1520 = !{!"1077"}
!1521 = !{!"1078"}
!1522 = !DILocation(line: 415, column: 35, scope: !1157)
!1523 = !{!"1079"}
!1524 = !DILocation(line: 415, column: 52, scope: !1157)
!1525 = !{!"1080"}
!1526 = !DILocation(line: 415, column: 32, scope: !1157)
!1527 = !{!"1081"}
!1528 = !DILocalVariable(name: "v1", scope: !1157, file: !40, line: 322, type: !6)
!1529 = !{!"1082"}
!1530 = !DILocation(line: 416, column: 18, scope: !1157)
!1531 = !{!"1083"}
!1532 = !{!"1084"}
!1533 = !DILocation(line: 416, column: 25, scope: !1157)
!1534 = !{!"1085"}
!1535 = !DILocation(line: 416, column: 7, scope: !1157)
!1536 = !{!"1086"}
!1537 = !DILocation(line: 416, column: 45, scope: !1157)
!1538 = !{!"1087"}
!1539 = !{!"1088"}
!1540 = !DILocation(line: 416, column: 35, scope: !1157)
!1541 = !{!"1089"}
!1542 = !DILocation(line: 416, column: 52, scope: !1157)
!1543 = !{!"1090"}
!1544 = !DILocation(line: 416, column: 32, scope: !1157)
!1545 = !{!"1091"}
!1546 = !DILocalVariable(name: "v2", scope: !1157, file: !40, line: 322, type: !6)
!1547 = !{!"1092"}
!1548 = !DILocation(line: 417, column: 18, scope: !1157)
!1549 = !{!"1093"}
!1550 = !{!"1094"}
!1551 = !DILocation(line: 417, column: 25, scope: !1157)
!1552 = !{!"1095"}
!1553 = !DILocation(line: 417, column: 7, scope: !1157)
!1554 = !{!"1096"}
!1555 = !DILocalVariable(name: "v3", scope: !1157, file: !40, line: 322, type: !6)
!1556 = !{!"1097"}
!1557 = !DILocation(line: 418, column: 18, scope: !1157)
!1558 = !{!"1098"}
!1559 = !{!"1099"}
!1560 = !DILocation(line: 418, column: 25, scope: !1157)
!1561 = !{!"1100"}
!1562 = !DILocation(line: 418, column: 7, scope: !1157)
!1563 = !{!"1101"}
!1564 = !DILocalVariable(name: "v4", scope: !1157, file: !40, line: 322, type: !6)
!1565 = !{!"1102"}
!1566 = !DILocation(line: 420, column: 8, scope: !1157)
!1567 = !{!"1103"}
!1568 = !DILocalVariable(name: "ctl", scope: !1157, file: !40, line: 324, type: !6)
!1569 = !{!"1104"}
!1570 = !DILocation(line: 421, column: 9, scope: !1157)
!1571 = !{!"1105"}
!1572 = !DILocation(line: 421, column: 6, scope: !1157)
!1573 = !{!"1106"}
!1574 = !{!"1107"}
!1575 = !DILocation(line: 422, column: 9, scope: !1157)
!1576 = !{!"1108"}
!1577 = !DILocation(line: 422, column: 6, scope: !1157)
!1578 = !{!"1109"}
!1579 = !{!"1110"}
!1580 = !DILocation(line: 423, column: 9, scope: !1157)
!1581 = !{!"1111"}
!1582 = !DILocation(line: 423, column: 6, scope: !1157)
!1583 = !{!"1112"}
!1584 = !{!"1113"}
!1585 = !DILocation(line: 424, column: 9, scope: !1157)
!1586 = !{!"1114"}
!1587 = !DILocation(line: 424, column: 6, scope: !1157)
!1588 = !{!"1115"}
!1589 = !{!"1116"}
!1590 = !DILocation(line: 425, column: 19, scope: !1157)
!1591 = !{!"1117"}
!1592 = !DILocation(line: 425, column: 7, scope: !1157)
!1593 = !{!"1118"}
!1594 = !{!"1119"}
!1595 = !DILocation(line: 426, column: 7, scope: !1157)
!1596 = !{!"1120"}
!1597 = !{!"1121"}
!1598 = !DILocation(line: 427, column: 7, scope: !1157)
!1599 = !{!"1122"}
!1600 = !{!"1123"}
!1601 = !DILocation(line: 428, column: 7, scope: !1157)
!1602 = !{!"1124"}
!1603 = !{!"1125"}
!1604 = !DILocation(line: 434, column: 7, scope: !1157)
!1605 = !{!"1126"}
!1606 = !DILocation(line: 434, column: 43, scope: !1157)
!1607 = !{!"1127"}
!1608 = !DILocation(line: 434, column: 48, scope: !1157)
!1609 = !{!"1128"}
!1610 = !DILocation(line: 434, column: 32, scope: !1157)
!1611 = !{!"1129"}
!1612 = !DILocation(line: 434, column: 22, scope: !1157)
!1613 = !{!"1130"}
!1614 = !DILocation(line: 434, column: 20, scope: !1157)
!1615 = !{!"1131"}
!1616 = !DILocalVariable(name: "w0", scope: !1157, file: !40, line: 323, type: !42)
!1617 = !{!"1132"}
!1618 = !DILocation(line: 435, column: 7, scope: !1157)
!1619 = !{!"1133"}
!1620 = !DILocation(line: 435, column: 43, scope: !1157)
!1621 = !{!"1134"}
!1622 = !DILocation(line: 435, column: 48, scope: !1157)
!1623 = !{!"1135"}
!1624 = !DILocation(line: 435, column: 32, scope: !1157)
!1625 = !{!"1136"}
!1626 = !DILocation(line: 435, column: 22, scope: !1157)
!1627 = !{!"1137"}
!1628 = !DILocation(line: 435, column: 20, scope: !1157)
!1629 = !{!"1138"}
!1630 = !DILocation(line: 435, column: 60, scope: !1157)
!1631 = !{!"1139"}
!1632 = !DILocation(line: 435, column: 54, scope: !1157)
!1633 = !{!"1140"}
!1634 = !DILocalVariable(name: "w1", scope: !1157, file: !40, line: 323, type: !42)
!1635 = !{!"1141"}
!1636 = !DILocation(line: 436, column: 7, scope: !1157)
!1637 = !{!"1142"}
!1638 = !DILocation(line: 436, column: 43, scope: !1157)
!1639 = !{!"1143"}
!1640 = !DILocation(line: 436, column: 48, scope: !1157)
!1641 = !{!"1144"}
!1642 = !DILocation(line: 436, column: 32, scope: !1157)
!1643 = !{!"1145"}
!1644 = !DILocation(line: 436, column: 22, scope: !1157)
!1645 = !{!"1146"}
!1646 = !DILocation(line: 436, column: 20, scope: !1157)
!1647 = !{!"1147"}
!1648 = !DILocation(line: 436, column: 60, scope: !1157)
!1649 = !{!"1148"}
!1650 = !DILocation(line: 436, column: 54, scope: !1157)
!1651 = !{!"1149"}
!1652 = !DILocalVariable(name: "w2", scope: !1157, file: !40, line: 323, type: !42)
!1653 = !{!"1150"}
!1654 = !DILocation(line: 437, column: 7, scope: !1157)
!1655 = !{!"1151"}
!1656 = !DILocation(line: 437, column: 43, scope: !1157)
!1657 = !{!"1152"}
!1658 = !DILocation(line: 437, column: 48, scope: !1157)
!1659 = !{!"1153"}
!1660 = !DILocation(line: 437, column: 32, scope: !1157)
!1661 = !{!"1154"}
!1662 = !DILocation(line: 437, column: 22, scope: !1157)
!1663 = !{!"1155"}
!1664 = !DILocation(line: 437, column: 20, scope: !1157)
!1665 = !{!"1156"}
!1666 = !DILocation(line: 437, column: 60, scope: !1157)
!1667 = !{!"1157"}
!1668 = !DILocation(line: 437, column: 54, scope: !1157)
!1669 = !{!"1158"}
!1670 = !DILocalVariable(name: "w3", scope: !1157, file: !40, line: 323, type: !42)
!1671 = !{!"1159"}
!1672 = !DILocation(line: 438, column: 7, scope: !1157)
!1673 = !{!"1160"}
!1674 = !{!"1161"}
!1675 = !DILocation(line: 439, column: 7, scope: !1157)
!1676 = !{!"1162"}
!1677 = !{!"1163"}
!1678 = !DILocation(line: 440, column: 7, scope: !1157)
!1679 = !{!"1164"}
!1680 = !{!"1165"}
!1681 = !DILocation(line: 441, column: 7, scope: !1157)
!1682 = !{!"1166"}
!1683 = !{!"1167"}
!1684 = !DILocation(line: 446, column: 34, scope: !1157)
!1685 = !{!"1168"}
!1686 = !DILocation(line: 446, column: 2, scope: !1157)
!1687 = !{!"1169"}
!1688 = !DILocation(line: 447, column: 34, scope: !1157)
!1689 = !{!"1170"}
!1690 = !DILocation(line: 447, column: 2, scope: !1157)
!1691 = !{!"1171"}
!1692 = !DILocation(line: 448, column: 34, scope: !1157)
!1693 = !{!"1172"}
!1694 = !DILocation(line: 448, column: 2, scope: !1157)
!1695 = !{!"1173"}
!1696 = !DILocation(line: 449, column: 34, scope: !1157)
!1697 = !{!"1174"}
!1698 = !DILocation(line: 449, column: 2, scope: !1157)
!1699 = !{!"1175"}
!1700 = !DILocation(line: 454, column: 7, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1157, file: !40, line: 454, column: 6)
!1702 = !{!"1176"}
!1703 = !DILocation(line: 454, column: 6, scope: !1157)
!1704 = !{!"1177"}
!1705 = !DILocation(line: 455, column: 3, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1701, file: !40, line: 454, column: 16)
!1707 = !{!"1178"}
!1708 = !DILocation(line: 456, column: 2, scope: !1706)
!1709 = !{!"1179"}
!1710 = !DILocation(line: 457, column: 1, scope: !1157)
!1711 = !{!"1180"}
!1712 = distinct !DISubprogram(name: "br_dec64le", scope: !26, file: !26, line: 634, type: !1713, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!42, !11}
!1715 = !DILocalVariable(name: "src", arg: 1, scope: !1712, file: !26, line: 634, type: !11)
!1716 = !DILocation(line: 0, scope: !1712)
!1717 = !{!"1181"}
!1718 = !DILocation(line: 637, column: 10, scope: !1712)
!1719 = !{!"1182"}
!1720 = !DILocation(line: 637, column: 38, scope: !1712)
!1721 = !{!"1183"}
!1722 = !{!"1184"}
!1723 = !DILocation(line: 637, column: 2, scope: !1712)
!1724 = !{!"1185"}
!1725 = distinct !DISubprogram(name: "br_enc64le", scope: !26, file: !26, line: 606, type: !1726, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !13, !42}
!1728 = !DILocalVariable(name: "dst", arg: 1, scope: !1725, file: !26, line: 606, type: !13)
!1729 = !DILocation(line: 0, scope: !1725)
!1730 = !{!"1186"}
!1731 = !DILocalVariable(name: "x", arg: 2, scope: !1725, file: !26, line: 606, type: !42)
!1732 = !{!"1187"}
!1733 = !DILocation(line: 609, column: 3, scope: !1725)
!1734 = !{!"1188"}
!1735 = !DILocation(line: 609, column: 25, scope: !1725)
!1736 = !{!"1189"}
!1737 = !DILocation(line: 609, column: 27, scope: !1725)
!1738 = !{!"1190"}
!1739 = !DILocation(line: 617, column: 1, scope: !1725)
!1740 = !{!"1191"}
!1741 = distinct !DISubprogram(name: "poly1305_inner", scope: !40, file: !40, line: 299, type: !1742, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1744, !1744, !11, !14}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!1745 = !DILocalVariable(name: "acc", arg: 1, scope: !1741, file: !40, line: 299, type: !1744)
!1746 = !DILocation(line: 0, scope: !1741)
!1747 = !{!"1192"}
!1748 = !DILocalVariable(name: "r", arg: 2, scope: !1741, file: !40, line: 299, type: !1744)
!1749 = !{!"1193"}
!1750 = !DILocalVariable(name: "data", arg: 3, scope: !1741, file: !40, line: 299, type: !11)
!1751 = !{!"1194"}
!1752 = !DILocalVariable(name: "len", arg: 4, scope: !1741, file: !40, line: 299, type: !14)
!1753 = !{!"1195"}
!1754 = !DILocation(line: 301, column: 10, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1741, file: !40, line: 301, column: 6)
!1756 = !{!"1196"}
!1757 = !DILocation(line: 301, column: 6, scope: !1741)
!1758 = !{!"1197"}
!1759 = !DILocation(line: 304, column: 14, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !40, line: 301, column: 17)
!1761 = !{!"1198"}
!1762 = !DILocalVariable(name: "len2", scope: !1760, file: !40, line: 302, type: !14)
!1763 = !DILocation(line: 0, scope: !1760)
!1764 = !{!"1199"}
!1765 = !DILocation(line: 305, column: 3, scope: !1760)
!1766 = !{!"1200"}
!1767 = !DILocation(line: 306, column: 38, scope: !1760)
!1768 = !{!"1201"}
!1769 = !{!"1202"}
!1770 = !DILocation(line: 307, column: 7, scope: !1760)
!1771 = !{!"1203"}
!1772 = !{!"1204"}
!1773 = !DILocation(line: 308, column: 2, scope: !1760)
!1774 = !{!"1205"}
!1775 = !{!"1206"}
!1776 = !{!"1207"}
!1777 = !{!"1208"}
!1778 = !{!"1209"}
!1779 = !DILocation(line: 309, column: 10, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1741, file: !40, line: 309, column: 6)
!1781 = !{!"1210"}
!1782 = !DILocation(line: 309, column: 6, scope: !1741)
!1783 = !{!"1211"}
!1784 = !DILocation(line: 310, column: 3, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1780, file: !40, line: 309, column: 15)
!1786 = !{!"1212"}
!1787 = !DILocation(line: 311, column: 2, scope: !1785)
!1788 = !{!"1213"}
!1789 = !DILocation(line: 312, column: 1, scope: !1741)
!1790 = !{!"1214"}
!1791 = distinct !DISubprogram(name: "poly1305_inner_small", scope: !40, file: !40, line: 221, type: !1742, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1792 = !{!"1215"}
!1793 = !DILocalVariable(name: "acc", arg: 1, scope: !1791, file: !40, line: 221, type: !1744)
!1794 = !DILocation(line: 0, scope: !1791)
!1795 = !{!"1216"}
!1796 = !DILocalVariable(name: "r", arg: 2, scope: !1791, file: !40, line: 221, type: !1744)
!1797 = !{!"1217"}
!1798 = !DILocalVariable(name: "data", arg: 3, scope: !1791, file: !40, line: 221, type: !11)
!1799 = !{!"1218"}
!1800 = !DILocalVariable(name: "len", arg: 4, scope: !1791, file: !40, line: 221, type: !14)
!1801 = !{!"1219"}
!1802 = !DILocation(line: 227, column: 7, scope: !1791)
!1803 = !{!"1220"}
!1804 = !{!"1221"}
!1805 = !DILocalVariable(name: "r0", scope: !1791, file: !40, line: 225, type: !42)
!1806 = !{!"1222"}
!1807 = !DILocation(line: 228, column: 7, scope: !1791)
!1808 = !{!"1223"}
!1809 = !{!"1224"}
!1810 = !DILocalVariable(name: "r1", scope: !1791, file: !40, line: 225, type: !42)
!1811 = !{!"1225"}
!1812 = !DILocation(line: 229, column: 7, scope: !1791)
!1813 = !{!"1226"}
!1814 = !{!"1227"}
!1815 = !DILocalVariable(name: "r2", scope: !1791, file: !40, line: 225, type: !42)
!1816 = !{!"1228"}
!1817 = !DILocation(line: 230, column: 7, scope: !1791)
!1818 = !{!"1229"}
!1819 = !{!"1230"}
!1820 = !DILocalVariable(name: "t1", scope: !1791, file: !40, line: 225, type: !42)
!1821 = !{!"1231"}
!1822 = !DILocation(line: 231, column: 7, scope: !1791)
!1823 = !{!"1232"}
!1824 = !{!"1233"}
!1825 = !DILocalVariable(name: "t2", scope: !1791, file: !40, line: 225, type: !42)
!1826 = !{!"1234"}
!1827 = !DILocation(line: 232, column: 7, scope: !1791)
!1828 = !{!"1235"}
!1829 = !{!"1236"}
!1830 = !DILocalVariable(name: "u2", scope: !1791, file: !40, line: 225, type: !42)
!1831 = !{!"1237"}
!1832 = !DILocation(line: 233, column: 7, scope: !1791)
!1833 = !{!"1238"}
!1834 = !{!"1239"}
!1835 = !DILocalVariable(name: "a0", scope: !1791, file: !40, line: 224, type: !42)
!1836 = !{!"1240"}
!1837 = !DILocation(line: 234, column: 7, scope: !1791)
!1838 = !{!"1241"}
!1839 = !{!"1242"}
!1840 = !DILocalVariable(name: "a1", scope: !1791, file: !40, line: 224, type: !42)
!1841 = !{!"1243"}
!1842 = !DILocation(line: 235, column: 7, scope: !1791)
!1843 = !{!"1244"}
!1844 = !{!"1245"}
!1845 = !DILocalVariable(name: "a2", scope: !1791, file: !40, line: 224, type: !42)
!1846 = !{!"1246"}
!1847 = !DILocalVariable(name: "buf", scope: !1791, file: !40, line: 223, type: !20)
!1848 = !{!"1247"}
!1849 = !DILocation(line: 238, column: 2, scope: !1791)
!1850 = !{!"1248"}
!1851 = !{!"1249"}
!1852 = !{!"1250"}
!1853 = !{!"1251"}
!1854 = !{!"1252"}
!1855 = !{!"1253"}
!1856 = !{!"1254"}
!1857 = !{!"1255"}
!1858 = !{!"1256"}
!1859 = !{!"1257"}
!1860 = !{!"1258"}
!1861 = !DILocation(line: 238, column: 13, scope: !1791)
!1862 = !{!"1259"}
!1863 = !{!"1260"}
!1864 = !DILocalVariable(name: "tmp", scope: !1865, file: !40, line: 241, type: !1193)
!1865 = distinct !DILexicalBlock(scope: !1791, file: !40, line: 238, column: 18)
!1866 = !DILocation(line: 241, column: 17, scope: !1865)
!1867 = !{!"1261"}
!1868 = !DILocation(line: 243, column: 11, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !40, line: 243, column: 7)
!1870 = !{!"1262"}
!1871 = !DILocation(line: 243, column: 7, scope: !1865)
!1872 = !{!"1263"}
!1873 = !DILocation(line: 244, column: 4, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1869, file: !40, line: 243, column: 17)
!1875 = !{!"1264"}
!1876 = !{!"1265"}
!1877 = !DILocation(line: 245, column: 11, scope: !1874)
!1878 = !{!"1266"}
!1879 = !DILocation(line: 245, column: 15, scope: !1874)
!1880 = !{!"1267"}
!1881 = !DILocation(line: 245, column: 38, scope: !1874)
!1882 = !{!"1268"}
!1883 = !DILocation(line: 245, column: 4, scope: !1874)
!1884 = !{!"1269"}
!1885 = !DILocation(line: 246, column: 10, scope: !1874)
!1886 = !{!"1270"}
!1887 = !{!"1271"}
!1888 = !{!"1272"}
!1889 = !DILocation(line: 248, column: 3, scope: !1874)
!1890 = !{!"1273"}
!1891 = !{!"1274"}
!1892 = !{!"1275"}
!1893 = !{!"1276"}
!1894 = !{!"1277"}
!1895 = !DILocation(line: 249, column: 23, scope: !1865)
!1896 = !{!"1278"}
!1897 = !DILocation(line: 249, column: 8, scope: !1865)
!1898 = !{!"1279"}
!1899 = !DILocalVariable(name: "v0", scope: !1865, file: !40, line: 239, type: !42)
!1900 = !DILocation(line: 0, scope: !1865)
!1901 = !{!"1280"}
!1902 = !DILocation(line: 250, column: 23, scope: !1865)
!1903 = !{!"1281"}
!1904 = !DILocation(line: 250, column: 8, scope: !1865)
!1905 = !{!"1282"}
!1906 = !DILocalVariable(name: "v1", scope: !1865, file: !40, line: 239, type: !42)
!1907 = !{!"1283"}
!1908 = !DILocation(line: 252, column: 11, scope: !1865)
!1909 = !{!"1284"}
!1910 = !DILocalVariable(name: "v2", scope: !1865, file: !40, line: 239, type: !42)
!1911 = !{!"1285"}
!1912 = !DILocation(line: 253, column: 13, scope: !1865)
!1913 = !{!"1286"}
!1914 = !DILocation(line: 253, column: 26, scope: !1865)
!1915 = !{!"1287"}
!1916 = !DILocation(line: 253, column: 20, scope: !1865)
!1917 = !{!"1288"}
!1918 = !DILocation(line: 253, column: 34, scope: !1865)
!1919 = !{!"1289"}
!1920 = !{!"1290"}
!1921 = !DILocation(line: 254, column: 6, scope: !1865)
!1922 = !{!"1291"}
!1923 = !{!"1292"}
!1924 = !DILocation(line: 256, column: 6, scope: !1865)
!1925 = !{!"1293"}
!1926 = !{!"1294"}
!1927 = !DILocation(line: 257, column: 6, scope: !1865)
!1928 = !{!"1295"}
!1929 = !{!"1296"}
!1930 = !DILocation(line: 258, column: 12, scope: !1865)
!1931 = !{!"1297"}
!1932 = !DILocation(line: 258, column: 6, scope: !1865)
!1933 = !{!"1298"}
!1934 = !{!"1299"}
!1935 = !DILocation(line: 273, column: 3, scope: !1865)
!1936 = !{!"1300"}
!1937 = !DILocation(line: 273, column: 3, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1865, file: !40, line: 273, column: 3)
!1939 = !{!"1301"}
!1940 = !DILocation(line: 273, column: 3, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !40, line: 273, column: 3)
!1942 = !{!"1302"}
!1943 = !{!"1303"}
!1944 = !{!"1304"}
!1945 = !DILocalVariable(name: "mul128tmp", scope: !1941, file: !40, line: 273, type: !56)
!1946 = !DILocation(line: 0, scope: !1941)
!1947 = !{!"1305"}
!1948 = !{!"1306"}
!1949 = !{!"1307"}
!1950 = !DILocalVariable(name: "mxhi", scope: !1938, file: !40, line: 273, type: !42)
!1951 = !DILocation(line: 0, scope: !1938)
!1952 = !{!"1308"}
!1953 = !{!"1309"}
!1954 = !DILocalVariable(name: "mxlo", scope: !1938, file: !40, line: 273, type: !42)
!1955 = !{!"1310"}
!1956 = !{!"1311"}
!1957 = !DILocalVariable(name: "d0", scope: !1865, file: !40, line: 240, type: !42)
!1958 = !{!"1312"}
!1959 = !{!"1313"}
!1960 = !DILocalVariable(name: "c0", scope: !1865, file: !40, line: 240, type: !42)
!1961 = !{!"1314"}
!1962 = !{!"1315"}
!1963 = !DILocation(line: 273, column: 3, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1938, file: !40, line: 273, column: 3)
!1965 = !{!"1316"}
!1966 = !{!"1317"}
!1967 = !{!"1318"}
!1968 = !DILocalVariable(name: "mul128tmp", scope: !1964, file: !40, line: 273, type: !56)
!1969 = !DILocation(line: 0, scope: !1964)
!1970 = !{!"1319"}
!1971 = !{!"1320"}
!1972 = !{!"1321"}
!1973 = !{!"1322"}
!1974 = !{!"1323"}
!1975 = !{!"1324"}
!1976 = !{!"1325"}
!1977 = !{!"1326"}
!1978 = !{!"1327"}
!1979 = !{!"1328"}
!1980 = !{!"1329"}
!1981 = !{!"1330"}
!1982 = !{!"1331"}
!1983 = !DILocation(line: 273, column: 3, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1938, file: !40, line: 273, column: 3)
!1985 = !{!"1332"}
!1986 = !{!"1333"}
!1987 = !{!"1334"}
!1988 = !DILocalVariable(name: "mul128tmp", scope: !1984, file: !40, line: 273, type: !56)
!1989 = !DILocation(line: 0, scope: !1984)
!1990 = !{!"1335"}
!1991 = !{!"1336"}
!1992 = !{!"1337"}
!1993 = !{!"1338"}
!1994 = !{!"1339"}
!1995 = !{!"1340"}
!1996 = !{!"1341"}
!1997 = !{!"1342"}
!1998 = !{!"1343"}
!1999 = !{!"1344"}
!2000 = !{!"1345"}
!2001 = !{!"1346"}
!2002 = !{!"1347"}
!2003 = !DILocation(line: 274, column: 3, scope: !1865)
!2004 = !{!"1348"}
!2005 = !DILocation(line: 274, column: 3, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1865, file: !40, line: 274, column: 3)
!2007 = !{!"1349"}
!2008 = !DILocation(line: 274, column: 3, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !40, line: 274, column: 3)
!2010 = !{!"1350"}
!2011 = !{!"1351"}
!2012 = !{!"1352"}
!2013 = !DILocalVariable(name: "mul128tmp", scope: !2009, file: !40, line: 274, type: !56)
!2014 = !DILocation(line: 0, scope: !2009)
!2015 = !{!"1353"}
!2016 = !{!"1354"}
!2017 = !{!"1355"}
!2018 = !DILocalVariable(name: "mxhi", scope: !2006, file: !40, line: 274, type: !42)
!2019 = !DILocation(line: 0, scope: !2006)
!2020 = !{!"1356"}
!2021 = !{!"1357"}
!2022 = !DILocalVariable(name: "mxlo", scope: !2006, file: !40, line: 274, type: !42)
!2023 = !{!"1358"}
!2024 = !{!"1359"}
!2025 = !DILocalVariable(name: "d1", scope: !1865, file: !40, line: 240, type: !42)
!2026 = !{!"1360"}
!2027 = !{!"1361"}
!2028 = !DILocalVariable(name: "c1", scope: !1865, file: !40, line: 240, type: !42)
!2029 = !{!"1362"}
!2030 = !{!"1363"}
!2031 = !DILocation(line: 274, column: 3, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2006, file: !40, line: 274, column: 3)
!2033 = !{!"1364"}
!2034 = !{!"1365"}
!2035 = !{!"1366"}
!2036 = !DILocalVariable(name: "mul128tmp", scope: !2032, file: !40, line: 274, type: !56)
!2037 = !DILocation(line: 0, scope: !2032)
!2038 = !{!"1367"}
!2039 = !{!"1368"}
!2040 = !{!"1369"}
!2041 = !{!"1370"}
!2042 = !{!"1371"}
!2043 = !{!"1372"}
!2044 = !{!"1373"}
!2045 = !{!"1374"}
!2046 = !{!"1375"}
!2047 = !{!"1376"}
!2048 = !{!"1377"}
!2049 = !{!"1378"}
!2050 = !{!"1379"}
!2051 = !DILocation(line: 274, column: 3, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2006, file: !40, line: 274, column: 3)
!2053 = !{!"1380"}
!2054 = !{!"1381"}
!2055 = !{!"1382"}
!2056 = !DILocalVariable(name: "mul128tmp", scope: !2052, file: !40, line: 274, type: !56)
!2057 = !DILocation(line: 0, scope: !2052)
!2058 = !{!"1383"}
!2059 = !{!"1384"}
!2060 = !{!"1385"}
!2061 = !{!"1386"}
!2062 = !{!"1387"}
!2063 = !{!"1388"}
!2064 = !{!"1389"}
!2065 = !{!"1390"}
!2066 = !{!"1391"}
!2067 = !{!"1392"}
!2068 = !{!"1393"}
!2069 = !{!"1394"}
!2070 = !{!"1395"}
!2071 = !DILocation(line: 275, column: 3, scope: !1865)
!2072 = !{!"1396"}
!2073 = !DILocation(line: 275, column: 3, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1865, file: !40, line: 275, column: 3)
!2075 = !{!"1397"}
!2076 = !DILocation(line: 275, column: 3, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2074, file: !40, line: 275, column: 3)
!2078 = !{!"1398"}
!2079 = !{!"1399"}
!2080 = !{!"1400"}
!2081 = !DILocalVariable(name: "mul128tmp", scope: !2077, file: !40, line: 275, type: !56)
!2082 = !DILocation(line: 0, scope: !2077)
!2083 = !{!"1401"}
!2084 = !{!"1402"}
!2085 = !{!"1403"}
!2086 = !DILocalVariable(name: "mxhi", scope: !2074, file: !40, line: 275, type: !42)
!2087 = !DILocation(line: 0, scope: !2074)
!2088 = !{!"1404"}
!2089 = !{!"1405"}
!2090 = !DILocalVariable(name: "mxlo", scope: !2074, file: !40, line: 275, type: !42)
!2091 = !{!"1406"}
!2092 = !{!"1407"}
!2093 = !DILocalVariable(name: "d2", scope: !1865, file: !40, line: 240, type: !42)
!2094 = !{!"1408"}
!2095 = !{!"1409"}
!2096 = !DILocalVariable(name: "c2", scope: !1865, file: !40, line: 240, type: !42)
!2097 = !{!"1410"}
!2098 = !{!"1411"}
!2099 = !DILocation(line: 275, column: 3, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2074, file: !40, line: 275, column: 3)
!2101 = !{!"1412"}
!2102 = !{!"1413"}
!2103 = !{!"1414"}
!2104 = !DILocalVariable(name: "mul128tmp", scope: !2100, file: !40, line: 275, type: !56)
!2105 = !DILocation(line: 0, scope: !2100)
!2106 = !{!"1415"}
!2107 = !{!"1416"}
!2108 = !{!"1417"}
!2109 = !{!"1418"}
!2110 = !{!"1419"}
!2111 = !{!"1420"}
!2112 = !{!"1421"}
!2113 = !{!"1422"}
!2114 = !{!"1423"}
!2115 = !{!"1424"}
!2116 = !{!"1425"}
!2117 = !{!"1426"}
!2118 = !{!"1427"}
!2119 = !DILocation(line: 275, column: 3, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2074, file: !40, line: 275, column: 3)
!2121 = !{!"1428"}
!2122 = !{!"1429"}
!2123 = !{!"1430"}
!2124 = !DILocalVariable(name: "mul128tmp", scope: !2120, file: !40, line: 275, type: !56)
!2125 = !DILocation(line: 0, scope: !2120)
!2126 = !{!"1431"}
!2127 = !{!"1432"}
!2128 = !{!"1433"}
!2129 = !{!"1434"}
!2130 = !{!"1435"}
!2131 = !{!"1436"}
!2132 = !{!"1437"}
!2133 = !{!"1438"}
!2134 = !{!"1439"}
!2135 = !{!"1440"}
!2136 = !{!"1441"}
!2137 = !{!"1442"}
!2138 = !{!"1443"}
!2139 = !DILocation(line: 279, column: 16, scope: !1865)
!2140 = !{!"1444"}
!2141 = !DILocation(line: 279, column: 11, scope: !1865)
!2142 = !{!"1445"}
!2143 = !{!"1446"}
!2144 = !DILocation(line: 280, column: 11, scope: !1865)
!2145 = !{!"1447"}
!2146 = !{!"1448"}
!2147 = !DILocation(line: 281, column: 11, scope: !1865)
!2148 = !{!"1449"}
!2149 = !{!"1450"}
!2150 = !DILocation(line: 283, column: 12, scope: !1865)
!2151 = !{!"1451"}
!2152 = !DILocation(line: 283, column: 6, scope: !1865)
!2153 = !{!"1452"}
!2154 = !{!"1453"}
!2155 = !DILocation(line: 284, column: 6, scope: !1865)
!2156 = !{!"1454"}
!2157 = !{!"1455"}
!2158 = !DILocation(line: 285, column: 12, scope: !1865)
!2159 = !{!"1456"}
!2160 = !DILocation(line: 285, column: 6, scope: !1865)
!2161 = !{!"1457"}
!2162 = !{!"1458"}
!2163 = !DILocation(line: 286, column: 6, scope: !1865)
!2164 = !{!"1459"}
!2165 = !{!"1460"}
!2166 = !DILocation(line: 287, column: 18, scope: !1865)
!2167 = !{!"1461"}
!2168 = !DILocation(line: 287, column: 12, scope: !1865)
!2169 = !{!"1462"}
!2170 = !DILocation(line: 287, column: 6, scope: !1865)
!2171 = !{!"1463"}
!2172 = !{!"1464"}
!2173 = !DILocation(line: 288, column: 6, scope: !1865)
!2174 = !{!"1465"}
!2175 = !{!"1466"}
!2176 = !DILocation(line: 290, column: 7, scope: !1865)
!2177 = !{!"1467"}
!2178 = !{!"1468"}
!2179 = !DILocation(line: 291, column: 7, scope: !1865)
!2180 = !{!"1469"}
!2181 = !{!"1470"}
!2182 = distinct !{!2182, !1849, !2183, !132}
!2183 = !DILocation(line: 292, column: 2, scope: !1791)
!2184 = !{!"1471"}
!2185 = !DILocation(line: 293, column: 2, scope: !1791)
!2186 = !{!"1472"}
!2187 = !DILocation(line: 293, column: 9, scope: !1791)
!2188 = !{!"1473"}
!2189 = !DILocation(line: 294, column: 2, scope: !1791)
!2190 = !{!"1474"}
!2191 = !DILocation(line: 294, column: 9, scope: !1791)
!2192 = !{!"1475"}
!2193 = !DILocation(line: 295, column: 2, scope: !1791)
!2194 = !{!"1476"}
!2195 = !DILocation(line: 295, column: 9, scope: !1791)
!2196 = !{!"1477"}
!2197 = !DILocation(line: 296, column: 1, scope: !1791)
!2198 = !{!"1478"}
!2199 = distinct !DISubprogram(name: "GT", scope: !26, file: !26, line: 803, type: !2200, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!6, !6, !6}
!2202 = !DILocalVariable(name: "x", arg: 1, scope: !2199, file: !26, line: 803, type: !6)
!2203 = !DILocation(line: 0, scope: !2199)
!2204 = !{!"1479"}
!2205 = !DILocalVariable(name: "y", arg: 2, scope: !2199, file: !26, line: 803, type: !6)
!2206 = !{!"1480"}
!2207 = !DILocation(line: 819, column: 8, scope: !2199)
!2208 = !{!"1481"}
!2209 = !DILocalVariable(name: "z", scope: !2199, file: !26, line: 817, type: !6)
!2210 = !{!"1482"}
!2211 = !DILocation(line: 820, column: 18, scope: !2199)
!2212 = !{!"1483"}
!2213 = !DILocation(line: 820, column: 28, scope: !2199)
!2214 = !{!"1484"}
!2215 = !DILocation(line: 820, column: 23, scope: !2199)
!2216 = !{!"1485"}
!2217 = !DILocation(line: 820, column: 12, scope: !2199)
!2218 = !{!"1486"}
!2219 = !DILocation(line: 820, column: 35, scope: !2199)
!2220 = !{!"1487"}
!2221 = !DILocation(line: 820, column: 2, scope: !2199)
!2222 = !{!"1488"}
!2223 = distinct !DISubprogram(name: "EQ", scope: !26, file: !26, line: 779, type: !2200, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2224 = !DILocalVariable(name: "x", arg: 1, scope: !2223, file: !26, line: 779, type: !6)
!2225 = !DILocation(line: 0, scope: !2223)
!2226 = !{!"1489"}
!2227 = !DILocalVariable(name: "y", arg: 2, scope: !2223, file: !26, line: 779, type: !6)
!2228 = !{!"1490"}
!2229 = !DILocation(line: 783, column: 8, scope: !2223)
!2230 = !{!"1491"}
!2231 = !DILocalVariable(name: "q", scope: !2223, file: !26, line: 781, type: !6)
!2232 = !{!"1492"}
!2233 = !DILocation(line: 784, column: 18, scope: !2223)
!2234 = !{!"1493"}
!2235 = !DILocation(line: 784, column: 16, scope: !2223)
!2236 = !{!"1494"}
!2237 = !DILocation(line: 784, column: 22, scope: !2223)
!2238 = !{!"1495"}
!2239 = !DILocation(line: 784, column: 9, scope: !2223)
!2240 = !{!"1496"}
!2241 = !DILocation(line: 784, column: 2, scope: !2223)
!2242 = !{!"1497"}
!2243 = distinct !DISubprogram(name: "MUX", scope: !26, file: !26, line: 770, type: !2244, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!6, !6, !6, !6}
!2246 = !DILocalVariable(name: "ctl", arg: 1, scope: !2243, file: !26, line: 770, type: !6)
!2247 = !DILocation(line: 0, scope: !2243)
!2248 = !{!"1498"}
!2249 = !DILocalVariable(name: "x", arg: 2, scope: !2243, file: !26, line: 770, type: !6)
!2250 = !{!"1499"}
!2251 = !DILocalVariable(name: "y", arg: 3, scope: !2243, file: !26, line: 770, type: !6)
!2252 = !{!"1500"}
!2253 = !DILocation(line: 772, column: 14, scope: !2243)
!2254 = !{!"1501"}
!2255 = !DILocation(line: 772, column: 24, scope: !2243)
!2256 = !{!"1502"}
!2257 = !DILocation(line: 772, column: 19, scope: !2243)
!2258 = !{!"1503"}
!2259 = !DILocation(line: 772, column: 11, scope: !2243)
!2260 = !{!"1504"}
!2261 = !DILocation(line: 772, column: 2, scope: !2243)
!2262 = !{!"1505"}
!2263 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !1129, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2264 = !DILocalVariable(name: "src", arg: 1, scope: !2263, file: !26, line: 574, type: !11)
!2265 = !DILocation(line: 0, scope: !2263)
!2266 = !{!"1506"}
!2267 = !DILocation(line: 577, column: 10, scope: !2263)
!2268 = !{!"1507"}
!2269 = !DILocation(line: 577, column: 38, scope: !2263)
!2270 = !{!"1508"}
!2271 = !{!"1509"}
!2272 = !DILocation(line: 577, column: 2, scope: !2263)
!2273 = !{!"1510"}
!2274 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !1142, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2275 = !DILocalVariable(name: "dst", arg: 1, scope: !2274, file: !26, line: 542, type: !13)
!2276 = !DILocation(line: 0, scope: !2274)
!2277 = !{!"1511"}
!2278 = !DILocalVariable(name: "x", arg: 2, scope: !2274, file: !26, line: 542, type: !6)
!2279 = !{!"1512"}
!2280 = !DILocation(line: 545, column: 3, scope: !2274)
!2281 = !{!"1513"}
!2282 = !DILocation(line: 545, column: 25, scope: !2274)
!2283 = !{!"1514"}
!2284 = !DILocation(line: 545, column: 27, scope: !2274)
!2285 = !{!"1515"}
!2286 = !DILocation(line: 555, column: 1, scope: !2274)
!2287 = !{!"1516"}
!2288 = distinct !DISubprogram(name: "NOT", scope: !26, file: !26, line: 761, type: !2289, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!6, !6}
!2291 = !DILocalVariable(name: "ctl", arg: 1, scope: !2288, file: !26, line: 761, type: !6)
!2292 = !DILocation(line: 0, scope: !2288)
!2293 = !{!"1517"}
!2294 = !DILocation(line: 763, column: 13, scope: !2288)
!2295 = !{!"1518"}
!2296 = !DILocation(line: 763, column: 2, scope: !2288)
!2297 = !{!"1519"}
!2298 = distinct !DISubprogram(name: "poly1305_inner_big", scope: !40, file: !40, line: 108, type: !1742, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2299 = !DILocalVariable(name: "acc", arg: 1, scope: !2298, file: !40, line: 108, type: !1744)
!2300 = !DILocation(line: 0, scope: !2298)
!2301 = !{!"1520"}
!2302 = !DILocalVariable(name: "r", arg: 2, scope: !2298, file: !40, line: 108, type: !1744)
!2303 = !{!"1521"}
!2304 = !DILocalVariable(name: "data", arg: 3, scope: !2298, file: !40, line: 108, type: !11)
!2305 = !{!"1522"}
!2306 = !DILocalVariable(name: "len", arg: 4, scope: !2298, file: !40, line: 108, type: !14)
!2307 = !{!"1523"}
!2308 = !DILocation(line: 128, column: 7, scope: !2298)
!2309 = !{!"1524"}
!2310 = !{!"1525"}
!2311 = !DILocalVariable(name: "r0", scope: !2298, file: !40, line: 126, type: !42)
!2312 = !{!"1526"}
!2313 = !DILocation(line: 129, column: 7, scope: !2298)
!2314 = !{!"1527"}
!2315 = !{!"1528"}
!2316 = !DILocalVariable(name: "r1", scope: !2298, file: !40, line: 126, type: !42)
!2317 = !{!"1529"}
!2318 = !DILocation(line: 130, column: 7, scope: !2298)
!2319 = !{!"1530"}
!2320 = !{!"1531"}
!2321 = !DILocalVariable(name: "r2", scope: !2298, file: !40, line: 126, type: !42)
!2322 = !{!"1532"}
!2323 = !DILocation(line: 131, column: 7, scope: !2298)
!2324 = !{!"1533"}
!2325 = !{!"1534"}
!2326 = !DILocalVariable(name: "t1", scope: !2298, file: !40, line: 126, type: !42)
!2327 = !{!"1535"}
!2328 = !DILocation(line: 132, column: 7, scope: !2298)
!2329 = !{!"1536"}
!2330 = !{!"1537"}
!2331 = !DILocalVariable(name: "t2", scope: !2298, file: !40, line: 126, type: !42)
!2332 = !{!"1538"}
!2333 = !DILocation(line: 133, column: 7, scope: !2298)
!2334 = !{!"1539"}
!2335 = !{!"1540"}
!2336 = !DILocalVariable(name: "u2", scope: !2298, file: !40, line: 126, type: !42)
!2337 = !{!"1541"}
!2338 = !DILocation(line: 134, column: 7, scope: !2298)
!2339 = !{!"1542"}
!2340 = !{!"1543"}
!2341 = !DILocalVariable(name: "a0", scope: !2298, file: !40, line: 125, type: !42)
!2342 = !{!"1544"}
!2343 = !DILocation(line: 135, column: 7, scope: !2298)
!2344 = !{!"1545"}
!2345 = !{!"1546"}
!2346 = !DILocalVariable(name: "a1", scope: !2298, file: !40, line: 125, type: !42)
!2347 = !{!"1547"}
!2348 = !DILocation(line: 136, column: 7, scope: !2298)
!2349 = !{!"1548"}
!2350 = !{!"1549"}
!2351 = !DILocalVariable(name: "a2", scope: !2298, file: !40, line: 125, type: !42)
!2352 = !{!"1550"}
!2353 = !DILocalVariable(name: "buf", scope: !2298, file: !40, line: 124, type: !20)
!2354 = !{!"1551"}
!2355 = !DILocation(line: 139, column: 2, scope: !2298)
!2356 = !{!"1552"}
!2357 = !{!"1553"}
!2358 = !{!"1554"}
!2359 = !{!"1555"}
!2360 = !{!"1556"}
!2361 = !{!"1557"}
!2362 = !{!"1558"}
!2363 = !{!"1559"}
!2364 = !{!"1560"}
!2365 = !{!"1561"}
!2366 = !{!"1562"}
!2367 = !DILocation(line: 139, column: 13, scope: !2298)
!2368 = !{!"1563"}
!2369 = !{!"1564"}
!2370 = !DILocation(line: 143, column: 23, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2298, file: !40, line: 139, column: 18)
!2372 = !{!"1565"}
!2373 = !DILocation(line: 143, column: 8, scope: !2371)
!2374 = !{!"1566"}
!2375 = !DILocalVariable(name: "v0", scope: !2371, file: !40, line: 140, type: !42)
!2376 = !DILocation(line: 0, scope: !2371)
!2377 = !{!"1567"}
!2378 = !DILocation(line: 144, column: 23, scope: !2371)
!2379 = !{!"1568"}
!2380 = !DILocation(line: 144, column: 8, scope: !2371)
!2381 = !{!"1569"}
!2382 = !DILocalVariable(name: "v1", scope: !2371, file: !40, line: 140, type: !42)
!2383 = !{!"1570"}
!2384 = !DILocation(line: 145, column: 11, scope: !2371)
!2385 = !{!"1571"}
!2386 = !DILocalVariable(name: "v2", scope: !2371, file: !40, line: 140, type: !42)
!2387 = !{!"1572"}
!2388 = !DILocation(line: 146, column: 13, scope: !2371)
!2389 = !{!"1573"}
!2390 = !DILocation(line: 146, column: 26, scope: !2371)
!2391 = !{!"1574"}
!2392 = !DILocation(line: 146, column: 20, scope: !2371)
!2393 = !{!"1575"}
!2394 = !DILocation(line: 146, column: 34, scope: !2371)
!2395 = !{!"1576"}
!2396 = !{!"1577"}
!2397 = !DILocation(line: 147, column: 6, scope: !2371)
!2398 = !{!"1578"}
!2399 = !{!"1579"}
!2400 = !DILocation(line: 148, column: 6, scope: !2371)
!2401 = !{!"1580"}
!2402 = !{!"1581"}
!2403 = !DILocation(line: 149, column: 6, scope: !2371)
!2404 = !{!"1582"}
!2405 = !{!"1583"}
!2406 = !DILocation(line: 150, column: 12, scope: !2371)
!2407 = !{!"1584"}
!2408 = !DILocation(line: 150, column: 6, scope: !2371)
!2409 = !{!"1585"}
!2410 = !{!"1586"}
!2411 = !DILocation(line: 151, column: 3, scope: !2371)
!2412 = !{!"1587"}
!2413 = !DILocation(line: 151, column: 3, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 151, column: 3)
!2415 = !{!"1588"}
!2416 = !DILocation(line: 151, column: 3, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !40, line: 151, column: 3)
!2418 = !{!"1589"}
!2419 = !{!"1590"}
!2420 = !{!"1591"}
!2421 = !DILocalVariable(name: "mul128tmp", scope: !2417, file: !40, line: 151, type: !56)
!2422 = !DILocation(line: 0, scope: !2417)
!2423 = !{!"1592"}
!2424 = !{!"1593"}
!2425 = !{!"1594"}
!2426 = !DILocalVariable(name: "mxhi", scope: !2414, file: !40, line: 151, type: !42)
!2427 = !DILocation(line: 0, scope: !2414)
!2428 = !{!"1595"}
!2429 = !{!"1596"}
!2430 = !DILocalVariable(name: "mxlo", scope: !2414, file: !40, line: 151, type: !42)
!2431 = !{!"1597"}
!2432 = !{!"1598"}
!2433 = !DILocalVariable(name: "d0", scope: !2371, file: !40, line: 141, type: !42)
!2434 = !{!"1599"}
!2435 = !{!"1600"}
!2436 = !DILocalVariable(name: "c0", scope: !2371, file: !40, line: 141, type: !42)
!2437 = !{!"1601"}
!2438 = !{!"1602"}
!2439 = !DILocation(line: 151, column: 3, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2414, file: !40, line: 151, column: 3)
!2441 = !{!"1603"}
!2442 = !{!"1604"}
!2443 = !{!"1605"}
!2444 = !DILocalVariable(name: "mul128tmp", scope: !2440, file: !40, line: 151, type: !56)
!2445 = !DILocation(line: 0, scope: !2440)
!2446 = !{!"1606"}
!2447 = !{!"1607"}
!2448 = !{!"1608"}
!2449 = !{!"1609"}
!2450 = !{!"1610"}
!2451 = !{!"1611"}
!2452 = !{!"1612"}
!2453 = !{!"1613"}
!2454 = !{!"1614"}
!2455 = !{!"1615"}
!2456 = !{!"1616"}
!2457 = !{!"1617"}
!2458 = !{!"1618"}
!2459 = !DILocation(line: 151, column: 3, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2414, file: !40, line: 151, column: 3)
!2461 = !{!"1619"}
!2462 = !{!"1620"}
!2463 = !{!"1621"}
!2464 = !DILocalVariable(name: "mul128tmp", scope: !2460, file: !40, line: 151, type: !56)
!2465 = !DILocation(line: 0, scope: !2460)
!2466 = !{!"1622"}
!2467 = !{!"1623"}
!2468 = !{!"1624"}
!2469 = !{!"1625"}
!2470 = !{!"1626"}
!2471 = !{!"1627"}
!2472 = !{!"1628"}
!2473 = !{!"1629"}
!2474 = !{!"1630"}
!2475 = !{!"1631"}
!2476 = !{!"1632"}
!2477 = !{!"1633"}
!2478 = !{!"1634"}
!2479 = !DILocation(line: 152, column: 3, scope: !2371)
!2480 = !{!"1635"}
!2481 = !DILocation(line: 152, column: 3, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 152, column: 3)
!2483 = !{!"1636"}
!2484 = !DILocation(line: 152, column: 3, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !40, line: 152, column: 3)
!2486 = !{!"1637"}
!2487 = !{!"1638"}
!2488 = !{!"1639"}
!2489 = !DILocalVariable(name: "mul128tmp", scope: !2485, file: !40, line: 152, type: !56)
!2490 = !DILocation(line: 0, scope: !2485)
!2491 = !{!"1640"}
!2492 = !{!"1641"}
!2493 = !{!"1642"}
!2494 = !DILocalVariable(name: "mxhi", scope: !2482, file: !40, line: 152, type: !42)
!2495 = !DILocation(line: 0, scope: !2482)
!2496 = !{!"1643"}
!2497 = !{!"1644"}
!2498 = !DILocalVariable(name: "mxlo", scope: !2482, file: !40, line: 152, type: !42)
!2499 = !{!"1645"}
!2500 = !{!"1646"}
!2501 = !DILocalVariable(name: "d1", scope: !2371, file: !40, line: 141, type: !42)
!2502 = !{!"1647"}
!2503 = !{!"1648"}
!2504 = !DILocalVariable(name: "c1", scope: !2371, file: !40, line: 141, type: !42)
!2505 = !{!"1649"}
!2506 = !{!"1650"}
!2507 = !DILocation(line: 152, column: 3, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2482, file: !40, line: 152, column: 3)
!2509 = !{!"1651"}
!2510 = !{!"1652"}
!2511 = !{!"1653"}
!2512 = !DILocalVariable(name: "mul128tmp", scope: !2508, file: !40, line: 152, type: !56)
!2513 = !DILocation(line: 0, scope: !2508)
!2514 = !{!"1654"}
!2515 = !{!"1655"}
!2516 = !{!"1656"}
!2517 = !{!"1657"}
!2518 = !{!"1658"}
!2519 = !{!"1659"}
!2520 = !{!"1660"}
!2521 = !{!"1661"}
!2522 = !{!"1662"}
!2523 = !{!"1663"}
!2524 = !{!"1664"}
!2525 = !{!"1665"}
!2526 = !{!"1666"}
!2527 = !DILocation(line: 152, column: 3, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2482, file: !40, line: 152, column: 3)
!2529 = !{!"1667"}
!2530 = !{!"1668"}
!2531 = !{!"1669"}
!2532 = !DILocalVariable(name: "mul128tmp", scope: !2528, file: !40, line: 152, type: !56)
!2533 = !DILocation(line: 0, scope: !2528)
!2534 = !{!"1670"}
!2535 = !{!"1671"}
!2536 = !{!"1672"}
!2537 = !{!"1673"}
!2538 = !{!"1674"}
!2539 = !{!"1675"}
!2540 = !{!"1676"}
!2541 = !{!"1677"}
!2542 = !{!"1678"}
!2543 = !{!"1679"}
!2544 = !{!"1680"}
!2545 = !{!"1681"}
!2546 = !{!"1682"}
!2547 = !DILocation(line: 153, column: 3, scope: !2371)
!2548 = !{!"1683"}
!2549 = !DILocation(line: 153, column: 3, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 153, column: 3)
!2551 = !{!"1684"}
!2552 = !DILocation(line: 153, column: 3, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2550, file: !40, line: 153, column: 3)
!2554 = !{!"1685"}
!2555 = !{!"1686"}
!2556 = !{!"1687"}
!2557 = !DILocalVariable(name: "mul128tmp", scope: !2553, file: !40, line: 153, type: !56)
!2558 = !DILocation(line: 0, scope: !2553)
!2559 = !{!"1688"}
!2560 = !{!"1689"}
!2561 = !{!"1690"}
!2562 = !DILocalVariable(name: "mxhi", scope: !2550, file: !40, line: 153, type: !42)
!2563 = !DILocation(line: 0, scope: !2550)
!2564 = !{!"1691"}
!2565 = !{!"1692"}
!2566 = !DILocalVariable(name: "mxlo", scope: !2550, file: !40, line: 153, type: !42)
!2567 = !{!"1693"}
!2568 = !{!"1694"}
!2569 = !DILocalVariable(name: "d2", scope: !2371, file: !40, line: 141, type: !42)
!2570 = !{!"1695"}
!2571 = !{!"1696"}
!2572 = !DILocalVariable(name: "c2", scope: !2371, file: !40, line: 141, type: !42)
!2573 = !{!"1697"}
!2574 = !{!"1698"}
!2575 = !DILocation(line: 153, column: 3, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2550, file: !40, line: 153, column: 3)
!2577 = !{!"1699"}
!2578 = !{!"1700"}
!2579 = !{!"1701"}
!2580 = !DILocalVariable(name: "mul128tmp", scope: !2576, file: !40, line: 153, type: !56)
!2581 = !DILocation(line: 0, scope: !2576)
!2582 = !{!"1702"}
!2583 = !{!"1703"}
!2584 = !{!"1704"}
!2585 = !{!"1705"}
!2586 = !{!"1706"}
!2587 = !{!"1707"}
!2588 = !{!"1708"}
!2589 = !{!"1709"}
!2590 = !{!"1710"}
!2591 = !{!"1711"}
!2592 = !{!"1712"}
!2593 = !{!"1713"}
!2594 = !{!"1714"}
!2595 = !DILocation(line: 153, column: 3, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2550, file: !40, line: 153, column: 3)
!2597 = !{!"1715"}
!2598 = !{!"1716"}
!2599 = !{!"1717"}
!2600 = !DILocalVariable(name: "mul128tmp", scope: !2596, file: !40, line: 153, type: !56)
!2601 = !DILocation(line: 0, scope: !2596)
!2602 = !{!"1718"}
!2603 = !{!"1719"}
!2604 = !{!"1720"}
!2605 = !{!"1721"}
!2606 = !{!"1722"}
!2607 = !{!"1723"}
!2608 = !{!"1724"}
!2609 = !{!"1725"}
!2610 = !{!"1726"}
!2611 = !{!"1727"}
!2612 = !{!"1728"}
!2613 = !{!"1729"}
!2614 = !{!"1730"}
!2615 = !DILocation(line: 154, column: 16, scope: !2371)
!2616 = !{!"1731"}
!2617 = !DILocation(line: 154, column: 11, scope: !2371)
!2618 = !{!"1732"}
!2619 = !{!"1733"}
!2620 = !DILocation(line: 155, column: 11, scope: !2371)
!2621 = !{!"1734"}
!2622 = !{!"1735"}
!2623 = !DILocation(line: 156, column: 11, scope: !2371)
!2624 = !{!"1736"}
!2625 = !{!"1737"}
!2626 = !DILocation(line: 158, column: 23, scope: !2371)
!2627 = !{!"1738"}
!2628 = !DILocation(line: 158, column: 8, scope: !2371)
!2629 = !{!"1739"}
!2630 = !{!"1740"}
!2631 = !DILocation(line: 159, column: 23, scope: !2371)
!2632 = !{!"1741"}
!2633 = !DILocation(line: 159, column: 8, scope: !2371)
!2634 = !{!"1742"}
!2635 = !{!"1743"}
!2636 = !DILocation(line: 160, column: 11, scope: !2371)
!2637 = !{!"1744"}
!2638 = !{!"1745"}
!2639 = !DILocation(line: 161, column: 13, scope: !2371)
!2640 = !{!"1746"}
!2641 = !DILocation(line: 161, column: 26, scope: !2371)
!2642 = !{!"1747"}
!2643 = !DILocation(line: 161, column: 20, scope: !2371)
!2644 = !{!"1748"}
!2645 = !DILocation(line: 161, column: 34, scope: !2371)
!2646 = !{!"1749"}
!2647 = !{!"1750"}
!2648 = !DILocation(line: 162, column: 6, scope: !2371)
!2649 = !{!"1751"}
!2650 = !{!"1752"}
!2651 = !DILocation(line: 163, column: 6, scope: !2371)
!2652 = !{!"1753"}
!2653 = !{!"1754"}
!2654 = !DILocation(line: 164, column: 6, scope: !2371)
!2655 = !{!"1755"}
!2656 = !{!"1756"}
!2657 = !DILocation(line: 165, column: 12, scope: !2371)
!2658 = !{!"1757"}
!2659 = !DILocation(line: 165, column: 6, scope: !2371)
!2660 = !{!"1758"}
!2661 = !{!"1759"}
!2662 = !DILocation(line: 166, column: 3, scope: !2371)
!2663 = !{!"1760"}
!2664 = !DILocation(line: 166, column: 3, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 166, column: 3)
!2666 = !{!"1761"}
!2667 = !DILocation(line: 166, column: 3, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2665, file: !40, line: 166, column: 3)
!2669 = !{!"1762"}
!2670 = !{!"1763"}
!2671 = !{!"1764"}
!2672 = !DILocalVariable(name: "mul128tmp", scope: !2668, file: !40, line: 166, type: !56)
!2673 = !DILocation(line: 0, scope: !2668)
!2674 = !{!"1765"}
!2675 = !{!"1766"}
!2676 = !{!"1767"}
!2677 = !DILocalVariable(name: "mxhi", scope: !2665, file: !40, line: 166, type: !42)
!2678 = !DILocation(line: 0, scope: !2665)
!2679 = !{!"1768"}
!2680 = !{!"1769"}
!2681 = !DILocalVariable(name: "mxlo", scope: !2665, file: !40, line: 166, type: !42)
!2682 = !{!"1770"}
!2683 = !{!"1771"}
!2684 = !{!"1772"}
!2685 = !{!"1773"}
!2686 = !{!"1774"}
!2687 = !{!"1775"}
!2688 = !DILocation(line: 166, column: 3, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2665, file: !40, line: 166, column: 3)
!2690 = !{!"1776"}
!2691 = !{!"1777"}
!2692 = !{!"1778"}
!2693 = !DILocalVariable(name: "mul128tmp", scope: !2689, file: !40, line: 166, type: !56)
!2694 = !DILocation(line: 0, scope: !2689)
!2695 = !{!"1779"}
!2696 = !{!"1780"}
!2697 = !{!"1781"}
!2698 = !{!"1782"}
!2699 = !{!"1783"}
!2700 = !{!"1784"}
!2701 = !{!"1785"}
!2702 = !{!"1786"}
!2703 = !{!"1787"}
!2704 = !{!"1788"}
!2705 = !{!"1789"}
!2706 = !{!"1790"}
!2707 = !{!"1791"}
!2708 = !DILocation(line: 166, column: 3, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2665, file: !40, line: 166, column: 3)
!2710 = !{!"1792"}
!2711 = !{!"1793"}
!2712 = !{!"1794"}
!2713 = !DILocalVariable(name: "mul128tmp", scope: !2709, file: !40, line: 166, type: !56)
!2714 = !DILocation(line: 0, scope: !2709)
!2715 = !{!"1795"}
!2716 = !{!"1796"}
!2717 = !{!"1797"}
!2718 = !{!"1798"}
!2719 = !{!"1799"}
!2720 = !{!"1800"}
!2721 = !{!"1801"}
!2722 = !{!"1802"}
!2723 = !{!"1803"}
!2724 = !{!"1804"}
!2725 = !{!"1805"}
!2726 = !{!"1806"}
!2727 = !{!"1807"}
!2728 = !DILocation(line: 167, column: 3, scope: !2371)
!2729 = !{!"1808"}
!2730 = !DILocation(line: 167, column: 3, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 167, column: 3)
!2732 = !{!"1809"}
!2733 = !DILocation(line: 167, column: 3, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2731, file: !40, line: 167, column: 3)
!2735 = !{!"1810"}
!2736 = !{!"1811"}
!2737 = !{!"1812"}
!2738 = !DILocalVariable(name: "mul128tmp", scope: !2734, file: !40, line: 167, type: !56)
!2739 = !DILocation(line: 0, scope: !2734)
!2740 = !{!"1813"}
!2741 = !{!"1814"}
!2742 = !{!"1815"}
!2743 = !DILocalVariable(name: "mxhi", scope: !2731, file: !40, line: 167, type: !42)
!2744 = !DILocation(line: 0, scope: !2731)
!2745 = !{!"1816"}
!2746 = !{!"1817"}
!2747 = !DILocalVariable(name: "mxlo", scope: !2731, file: !40, line: 167, type: !42)
!2748 = !{!"1818"}
!2749 = !{!"1819"}
!2750 = !{!"1820"}
!2751 = !{!"1821"}
!2752 = !{!"1822"}
!2753 = !{!"1823"}
!2754 = !DILocation(line: 167, column: 3, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2731, file: !40, line: 167, column: 3)
!2756 = !{!"1824"}
!2757 = !{!"1825"}
!2758 = !{!"1826"}
!2759 = !DILocalVariable(name: "mul128tmp", scope: !2755, file: !40, line: 167, type: !56)
!2760 = !DILocation(line: 0, scope: !2755)
!2761 = !{!"1827"}
!2762 = !{!"1828"}
!2763 = !{!"1829"}
!2764 = !{!"1830"}
!2765 = !{!"1831"}
!2766 = !{!"1832"}
!2767 = !{!"1833"}
!2768 = !{!"1834"}
!2769 = !{!"1835"}
!2770 = !{!"1836"}
!2771 = !{!"1837"}
!2772 = !{!"1838"}
!2773 = !{!"1839"}
!2774 = !DILocation(line: 167, column: 3, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2731, file: !40, line: 167, column: 3)
!2776 = !{!"1840"}
!2777 = !{!"1841"}
!2778 = !{!"1842"}
!2779 = !DILocalVariable(name: "mul128tmp", scope: !2775, file: !40, line: 167, type: !56)
!2780 = !DILocation(line: 0, scope: !2775)
!2781 = !{!"1843"}
!2782 = !{!"1844"}
!2783 = !{!"1845"}
!2784 = !{!"1846"}
!2785 = !{!"1847"}
!2786 = !{!"1848"}
!2787 = !{!"1849"}
!2788 = !{!"1850"}
!2789 = !{!"1851"}
!2790 = !{!"1852"}
!2791 = !{!"1853"}
!2792 = !{!"1854"}
!2793 = !{!"1855"}
!2794 = !DILocation(line: 168, column: 3, scope: !2371)
!2795 = !{!"1856"}
!2796 = !DILocation(line: 168, column: 3, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 168, column: 3)
!2798 = !{!"1857"}
!2799 = !DILocation(line: 168, column: 3, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2797, file: !40, line: 168, column: 3)
!2801 = !{!"1858"}
!2802 = !{!"1859"}
!2803 = !{!"1860"}
!2804 = !DILocalVariable(name: "mul128tmp", scope: !2800, file: !40, line: 168, type: !56)
!2805 = !DILocation(line: 0, scope: !2800)
!2806 = !{!"1861"}
!2807 = !{!"1862"}
!2808 = !{!"1863"}
!2809 = !DILocalVariable(name: "mxhi", scope: !2797, file: !40, line: 168, type: !42)
!2810 = !DILocation(line: 0, scope: !2797)
!2811 = !{!"1864"}
!2812 = !{!"1865"}
!2813 = !DILocalVariable(name: "mxlo", scope: !2797, file: !40, line: 168, type: !42)
!2814 = !{!"1866"}
!2815 = !{!"1867"}
!2816 = !{!"1868"}
!2817 = !{!"1869"}
!2818 = !{!"1870"}
!2819 = !{!"1871"}
!2820 = !DILocation(line: 168, column: 3, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2797, file: !40, line: 168, column: 3)
!2822 = !{!"1872"}
!2823 = !{!"1873"}
!2824 = !{!"1874"}
!2825 = !DILocalVariable(name: "mul128tmp", scope: !2821, file: !40, line: 168, type: !56)
!2826 = !DILocation(line: 0, scope: !2821)
!2827 = !{!"1875"}
!2828 = !{!"1876"}
!2829 = !{!"1877"}
!2830 = !{!"1878"}
!2831 = !{!"1879"}
!2832 = !{!"1880"}
!2833 = !{!"1881"}
!2834 = !{!"1882"}
!2835 = !{!"1883"}
!2836 = !{!"1884"}
!2837 = !{!"1885"}
!2838 = !{!"1886"}
!2839 = !{!"1887"}
!2840 = !DILocation(line: 168, column: 3, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2797, file: !40, line: 168, column: 3)
!2842 = !{!"1888"}
!2843 = !{!"1889"}
!2844 = !{!"1890"}
!2845 = !DILocalVariable(name: "mul128tmp", scope: !2841, file: !40, line: 168, type: !56)
!2846 = !DILocation(line: 0, scope: !2841)
!2847 = !{!"1891"}
!2848 = !{!"1892"}
!2849 = !{!"1893"}
!2850 = !{!"1894"}
!2851 = !{!"1895"}
!2852 = !{!"1896"}
!2853 = !{!"1897"}
!2854 = !{!"1898"}
!2855 = !{!"1899"}
!2856 = !{!"1900"}
!2857 = !{!"1901"}
!2858 = !{!"1902"}
!2859 = !{!"1903"}
!2860 = !DILocation(line: 169, column: 16, scope: !2371)
!2861 = !{!"1904"}
!2862 = !DILocation(line: 169, column: 11, scope: !2371)
!2863 = !{!"1905"}
!2864 = !{!"1906"}
!2865 = !DILocation(line: 170, column: 11, scope: !2371)
!2866 = !{!"1907"}
!2867 = !{!"1908"}
!2868 = !DILocation(line: 171, column: 11, scope: !2371)
!2869 = !{!"1909"}
!2870 = !{!"1910"}
!2871 = !DILocation(line: 173, column: 23, scope: !2371)
!2872 = !{!"1911"}
!2873 = !DILocation(line: 173, column: 8, scope: !2371)
!2874 = !{!"1912"}
!2875 = !{!"1913"}
!2876 = !DILocation(line: 174, column: 23, scope: !2371)
!2877 = !{!"1914"}
!2878 = !DILocation(line: 174, column: 8, scope: !2371)
!2879 = !{!"1915"}
!2880 = !{!"1916"}
!2881 = !DILocation(line: 175, column: 11, scope: !2371)
!2882 = !{!"1917"}
!2883 = !{!"1918"}
!2884 = !DILocation(line: 176, column: 13, scope: !2371)
!2885 = !{!"1919"}
!2886 = !DILocation(line: 176, column: 26, scope: !2371)
!2887 = !{!"1920"}
!2888 = !DILocation(line: 176, column: 20, scope: !2371)
!2889 = !{!"1921"}
!2890 = !DILocation(line: 176, column: 34, scope: !2371)
!2891 = !{!"1922"}
!2892 = !{!"1923"}
!2893 = !DILocation(line: 177, column: 6, scope: !2371)
!2894 = !{!"1924"}
!2895 = !{!"1925"}
!2896 = !DILocation(line: 178, column: 6, scope: !2371)
!2897 = !{!"1926"}
!2898 = !{!"1927"}
!2899 = !DILocation(line: 179, column: 6, scope: !2371)
!2900 = !{!"1928"}
!2901 = !{!"1929"}
!2902 = !DILocation(line: 180, column: 12, scope: !2371)
!2903 = !{!"1930"}
!2904 = !DILocation(line: 180, column: 6, scope: !2371)
!2905 = !{!"1931"}
!2906 = !{!"1932"}
!2907 = !DILocation(line: 181, column: 3, scope: !2371)
!2908 = !{!"1933"}
!2909 = !DILocation(line: 181, column: 3, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 181, column: 3)
!2911 = !{!"1934"}
!2912 = !DILocation(line: 181, column: 3, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !40, line: 181, column: 3)
!2914 = !{!"1935"}
!2915 = !{!"1936"}
!2916 = !{!"1937"}
!2917 = !DILocalVariable(name: "mul128tmp", scope: !2913, file: !40, line: 181, type: !56)
!2918 = !DILocation(line: 0, scope: !2913)
!2919 = !{!"1938"}
!2920 = !{!"1939"}
!2921 = !{!"1940"}
!2922 = !DILocalVariable(name: "mxhi", scope: !2910, file: !40, line: 181, type: !42)
!2923 = !DILocation(line: 0, scope: !2910)
!2924 = !{!"1941"}
!2925 = !{!"1942"}
!2926 = !DILocalVariable(name: "mxlo", scope: !2910, file: !40, line: 181, type: !42)
!2927 = !{!"1943"}
!2928 = !{!"1944"}
!2929 = !{!"1945"}
!2930 = !{!"1946"}
!2931 = !{!"1947"}
!2932 = !{!"1948"}
!2933 = !DILocation(line: 181, column: 3, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2910, file: !40, line: 181, column: 3)
!2935 = !{!"1949"}
!2936 = !{!"1950"}
!2937 = !{!"1951"}
!2938 = !DILocalVariable(name: "mul128tmp", scope: !2934, file: !40, line: 181, type: !56)
!2939 = !DILocation(line: 0, scope: !2934)
!2940 = !{!"1952"}
!2941 = !{!"1953"}
!2942 = !{!"1954"}
!2943 = !{!"1955"}
!2944 = !{!"1956"}
!2945 = !{!"1957"}
!2946 = !{!"1958"}
!2947 = !{!"1959"}
!2948 = !{!"1960"}
!2949 = !{!"1961"}
!2950 = !{!"1962"}
!2951 = !{!"1963"}
!2952 = !{!"1964"}
!2953 = !DILocation(line: 181, column: 3, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2910, file: !40, line: 181, column: 3)
!2955 = !{!"1965"}
!2956 = !{!"1966"}
!2957 = !{!"1967"}
!2958 = !DILocalVariable(name: "mul128tmp", scope: !2954, file: !40, line: 181, type: !56)
!2959 = !DILocation(line: 0, scope: !2954)
!2960 = !{!"1968"}
!2961 = !{!"1969"}
!2962 = !{!"1970"}
!2963 = !{!"1971"}
!2964 = !{!"1972"}
!2965 = !{!"1973"}
!2966 = !{!"1974"}
!2967 = !{!"1975"}
!2968 = !{!"1976"}
!2969 = !{!"1977"}
!2970 = !{!"1978"}
!2971 = !{!"1979"}
!2972 = !{!"1980"}
!2973 = !DILocation(line: 182, column: 3, scope: !2371)
!2974 = !{!"1981"}
!2975 = !DILocation(line: 182, column: 3, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 182, column: 3)
!2977 = !{!"1982"}
!2978 = !DILocation(line: 182, column: 3, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2976, file: !40, line: 182, column: 3)
!2980 = !{!"1983"}
!2981 = !{!"1984"}
!2982 = !{!"1985"}
!2983 = !DILocalVariable(name: "mul128tmp", scope: !2979, file: !40, line: 182, type: !56)
!2984 = !DILocation(line: 0, scope: !2979)
!2985 = !{!"1986"}
!2986 = !{!"1987"}
!2987 = !{!"1988"}
!2988 = !DILocalVariable(name: "mxhi", scope: !2976, file: !40, line: 182, type: !42)
!2989 = !DILocation(line: 0, scope: !2976)
!2990 = !{!"1989"}
!2991 = !{!"1990"}
!2992 = !DILocalVariable(name: "mxlo", scope: !2976, file: !40, line: 182, type: !42)
!2993 = !{!"1991"}
!2994 = !{!"1992"}
!2995 = !{!"1993"}
!2996 = !{!"1994"}
!2997 = !{!"1995"}
!2998 = !{!"1996"}
!2999 = !DILocation(line: 182, column: 3, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2976, file: !40, line: 182, column: 3)
!3001 = !{!"1997"}
!3002 = !{!"1998"}
!3003 = !{!"1999"}
!3004 = !DILocalVariable(name: "mul128tmp", scope: !3000, file: !40, line: 182, type: !56)
!3005 = !DILocation(line: 0, scope: !3000)
!3006 = !{!"2000"}
!3007 = !{!"2001"}
!3008 = !{!"2002"}
!3009 = !{!"2003"}
!3010 = !{!"2004"}
!3011 = !{!"2005"}
!3012 = !{!"2006"}
!3013 = !{!"2007"}
!3014 = !{!"2008"}
!3015 = !{!"2009"}
!3016 = !{!"2010"}
!3017 = !{!"2011"}
!3018 = !{!"2012"}
!3019 = !DILocation(line: 182, column: 3, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2976, file: !40, line: 182, column: 3)
!3021 = !{!"2013"}
!3022 = !{!"2014"}
!3023 = !{!"2015"}
!3024 = !DILocalVariable(name: "mul128tmp", scope: !3020, file: !40, line: 182, type: !56)
!3025 = !DILocation(line: 0, scope: !3020)
!3026 = !{!"2016"}
!3027 = !{!"2017"}
!3028 = !{!"2018"}
!3029 = !{!"2019"}
!3030 = !{!"2020"}
!3031 = !{!"2021"}
!3032 = !{!"2022"}
!3033 = !{!"2023"}
!3034 = !{!"2024"}
!3035 = !{!"2025"}
!3036 = !{!"2026"}
!3037 = !{!"2027"}
!3038 = !{!"2028"}
!3039 = !DILocation(line: 183, column: 3, scope: !2371)
!3040 = !{!"2029"}
!3041 = !DILocation(line: 183, column: 3, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 183, column: 3)
!3043 = !{!"2030"}
!3044 = !DILocation(line: 183, column: 3, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3042, file: !40, line: 183, column: 3)
!3046 = !{!"2031"}
!3047 = !{!"2032"}
!3048 = !{!"2033"}
!3049 = !DILocalVariable(name: "mul128tmp", scope: !3045, file: !40, line: 183, type: !56)
!3050 = !DILocation(line: 0, scope: !3045)
!3051 = !{!"2034"}
!3052 = !{!"2035"}
!3053 = !{!"2036"}
!3054 = !DILocalVariable(name: "mxhi", scope: !3042, file: !40, line: 183, type: !42)
!3055 = !DILocation(line: 0, scope: !3042)
!3056 = !{!"2037"}
!3057 = !{!"2038"}
!3058 = !DILocalVariable(name: "mxlo", scope: !3042, file: !40, line: 183, type: !42)
!3059 = !{!"2039"}
!3060 = !{!"2040"}
!3061 = !{!"2041"}
!3062 = !{!"2042"}
!3063 = !{!"2043"}
!3064 = !{!"2044"}
!3065 = !DILocation(line: 183, column: 3, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3042, file: !40, line: 183, column: 3)
!3067 = !{!"2045"}
!3068 = !{!"2046"}
!3069 = !{!"2047"}
!3070 = !DILocalVariable(name: "mul128tmp", scope: !3066, file: !40, line: 183, type: !56)
!3071 = !DILocation(line: 0, scope: !3066)
!3072 = !{!"2048"}
!3073 = !{!"2049"}
!3074 = !{!"2050"}
!3075 = !{!"2051"}
!3076 = !{!"2052"}
!3077 = !{!"2053"}
!3078 = !{!"2054"}
!3079 = !{!"2055"}
!3080 = !{!"2056"}
!3081 = !{!"2057"}
!3082 = !{!"2058"}
!3083 = !{!"2059"}
!3084 = !{!"2060"}
!3085 = !DILocation(line: 183, column: 3, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3042, file: !40, line: 183, column: 3)
!3087 = !{!"2061"}
!3088 = !{!"2062"}
!3089 = !{!"2063"}
!3090 = !DILocalVariable(name: "mul128tmp", scope: !3086, file: !40, line: 183, type: !56)
!3091 = !DILocation(line: 0, scope: !3086)
!3092 = !{!"2064"}
!3093 = !{!"2065"}
!3094 = !{!"2066"}
!3095 = !{!"2067"}
!3096 = !{!"2068"}
!3097 = !{!"2069"}
!3098 = !{!"2070"}
!3099 = !{!"2071"}
!3100 = !{!"2072"}
!3101 = !{!"2073"}
!3102 = !{!"2074"}
!3103 = !{!"2075"}
!3104 = !{!"2076"}
!3105 = !DILocation(line: 184, column: 16, scope: !2371)
!3106 = !{!"2077"}
!3107 = !DILocation(line: 184, column: 11, scope: !2371)
!3108 = !{!"2078"}
!3109 = !{!"2079"}
!3110 = !DILocation(line: 185, column: 11, scope: !2371)
!3111 = !{!"2080"}
!3112 = !{!"2081"}
!3113 = !DILocation(line: 186, column: 11, scope: !2371)
!3114 = !{!"2082"}
!3115 = !{!"2083"}
!3116 = !DILocation(line: 188, column: 23, scope: !2371)
!3117 = !{!"2084"}
!3118 = !DILocation(line: 188, column: 8, scope: !2371)
!3119 = !{!"2085"}
!3120 = !{!"2086"}
!3121 = !DILocation(line: 189, column: 23, scope: !2371)
!3122 = !{!"2087"}
!3123 = !DILocation(line: 189, column: 8, scope: !2371)
!3124 = !{!"2088"}
!3125 = !{!"2089"}
!3126 = !DILocation(line: 190, column: 11, scope: !2371)
!3127 = !{!"2090"}
!3128 = !{!"2091"}
!3129 = !DILocation(line: 191, column: 13, scope: !2371)
!3130 = !{!"2092"}
!3131 = !DILocation(line: 191, column: 26, scope: !2371)
!3132 = !{!"2093"}
!3133 = !DILocation(line: 191, column: 20, scope: !2371)
!3134 = !{!"2094"}
!3135 = !DILocation(line: 191, column: 34, scope: !2371)
!3136 = !{!"2095"}
!3137 = !{!"2096"}
!3138 = !DILocation(line: 192, column: 6, scope: !2371)
!3139 = !{!"2097"}
!3140 = !{!"2098"}
!3141 = !DILocation(line: 193, column: 6, scope: !2371)
!3142 = !{!"2099"}
!3143 = !{!"2100"}
!3144 = !DILocation(line: 194, column: 6, scope: !2371)
!3145 = !{!"2101"}
!3146 = !{!"2102"}
!3147 = !DILocation(line: 195, column: 12, scope: !2371)
!3148 = !{!"2103"}
!3149 = !DILocation(line: 195, column: 6, scope: !2371)
!3150 = !{!"2104"}
!3151 = !{!"2105"}
!3152 = !DILocation(line: 196, column: 3, scope: !2371)
!3153 = !{!"2106"}
!3154 = !DILocation(line: 196, column: 3, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 196, column: 3)
!3156 = !{!"2107"}
!3157 = !DILocation(line: 196, column: 3, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3155, file: !40, line: 196, column: 3)
!3159 = !{!"2108"}
!3160 = !{!"2109"}
!3161 = !{!"2110"}
!3162 = !DILocalVariable(name: "mul128tmp", scope: !3158, file: !40, line: 196, type: !56)
!3163 = !DILocation(line: 0, scope: !3158)
!3164 = !{!"2111"}
!3165 = !{!"2112"}
!3166 = !{!"2113"}
!3167 = !DILocalVariable(name: "mxhi", scope: !3155, file: !40, line: 196, type: !42)
!3168 = !DILocation(line: 0, scope: !3155)
!3169 = !{!"2114"}
!3170 = !{!"2115"}
!3171 = !DILocalVariable(name: "mxlo", scope: !3155, file: !40, line: 196, type: !42)
!3172 = !{!"2116"}
!3173 = !{!"2117"}
!3174 = !{!"2118"}
!3175 = !{!"2119"}
!3176 = !{!"2120"}
!3177 = !{!"2121"}
!3178 = !DILocation(line: 196, column: 3, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3155, file: !40, line: 196, column: 3)
!3180 = !{!"2122"}
!3181 = !{!"2123"}
!3182 = !{!"2124"}
!3183 = !DILocalVariable(name: "mul128tmp", scope: !3179, file: !40, line: 196, type: !56)
!3184 = !DILocation(line: 0, scope: !3179)
!3185 = !{!"2125"}
!3186 = !{!"2126"}
!3187 = !{!"2127"}
!3188 = !{!"2128"}
!3189 = !{!"2129"}
!3190 = !{!"2130"}
!3191 = !{!"2131"}
!3192 = !{!"2132"}
!3193 = !{!"2133"}
!3194 = !{!"2134"}
!3195 = !{!"2135"}
!3196 = !{!"2136"}
!3197 = !{!"2137"}
!3198 = !DILocation(line: 196, column: 3, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3155, file: !40, line: 196, column: 3)
!3200 = !{!"2138"}
!3201 = !{!"2139"}
!3202 = !{!"2140"}
!3203 = !DILocalVariable(name: "mul128tmp", scope: !3199, file: !40, line: 196, type: !56)
!3204 = !DILocation(line: 0, scope: !3199)
!3205 = !{!"2141"}
!3206 = !{!"2142"}
!3207 = !{!"2143"}
!3208 = !{!"2144"}
!3209 = !{!"2145"}
!3210 = !{!"2146"}
!3211 = !{!"2147"}
!3212 = !{!"2148"}
!3213 = !{!"2149"}
!3214 = !{!"2150"}
!3215 = !{!"2151"}
!3216 = !{!"2152"}
!3217 = !{!"2153"}
!3218 = !DILocation(line: 197, column: 3, scope: !2371)
!3219 = !{!"2154"}
!3220 = !DILocation(line: 197, column: 3, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 197, column: 3)
!3222 = !{!"2155"}
!3223 = !DILocation(line: 197, column: 3, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3221, file: !40, line: 197, column: 3)
!3225 = !{!"2156"}
!3226 = !{!"2157"}
!3227 = !{!"2158"}
!3228 = !DILocalVariable(name: "mul128tmp", scope: !3224, file: !40, line: 197, type: !56)
!3229 = !DILocation(line: 0, scope: !3224)
!3230 = !{!"2159"}
!3231 = !{!"2160"}
!3232 = !{!"2161"}
!3233 = !DILocalVariable(name: "mxhi", scope: !3221, file: !40, line: 197, type: !42)
!3234 = !DILocation(line: 0, scope: !3221)
!3235 = !{!"2162"}
!3236 = !{!"2163"}
!3237 = !DILocalVariable(name: "mxlo", scope: !3221, file: !40, line: 197, type: !42)
!3238 = !{!"2164"}
!3239 = !{!"2165"}
!3240 = !{!"2166"}
!3241 = !{!"2167"}
!3242 = !{!"2168"}
!3243 = !{!"2169"}
!3244 = !DILocation(line: 197, column: 3, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3221, file: !40, line: 197, column: 3)
!3246 = !{!"2170"}
!3247 = !{!"2171"}
!3248 = !{!"2172"}
!3249 = !DILocalVariable(name: "mul128tmp", scope: !3245, file: !40, line: 197, type: !56)
!3250 = !DILocation(line: 0, scope: !3245)
!3251 = !{!"2173"}
!3252 = !{!"2174"}
!3253 = !{!"2175"}
!3254 = !{!"2176"}
!3255 = !{!"2177"}
!3256 = !{!"2178"}
!3257 = !{!"2179"}
!3258 = !{!"2180"}
!3259 = !{!"2181"}
!3260 = !{!"2182"}
!3261 = !{!"2183"}
!3262 = !{!"2184"}
!3263 = !{!"2185"}
!3264 = !DILocation(line: 197, column: 3, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3221, file: !40, line: 197, column: 3)
!3266 = !{!"2186"}
!3267 = !{!"2187"}
!3268 = !{!"2188"}
!3269 = !DILocalVariable(name: "mul128tmp", scope: !3265, file: !40, line: 197, type: !56)
!3270 = !DILocation(line: 0, scope: !3265)
!3271 = !{!"2189"}
!3272 = !{!"2190"}
!3273 = !{!"2191"}
!3274 = !{!"2192"}
!3275 = !{!"2193"}
!3276 = !{!"2194"}
!3277 = !{!"2195"}
!3278 = !{!"2196"}
!3279 = !{!"2197"}
!3280 = !{!"2198"}
!3281 = !{!"2199"}
!3282 = !{!"2200"}
!3283 = !{!"2201"}
!3284 = !DILocation(line: 198, column: 3, scope: !2371)
!3285 = !{!"2202"}
!3286 = !DILocation(line: 198, column: 3, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !2371, file: !40, line: 198, column: 3)
!3288 = !{!"2203"}
!3289 = !DILocation(line: 198, column: 3, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !40, line: 198, column: 3)
!3291 = !{!"2204"}
!3292 = !{!"2205"}
!3293 = !{!"2206"}
!3294 = !DILocalVariable(name: "mul128tmp", scope: !3290, file: !40, line: 198, type: !56)
!3295 = !DILocation(line: 0, scope: !3290)
!3296 = !{!"2207"}
!3297 = !{!"2208"}
!3298 = !{!"2209"}
!3299 = !DILocalVariable(name: "mxhi", scope: !3287, file: !40, line: 198, type: !42)
!3300 = !DILocation(line: 0, scope: !3287)
!3301 = !{!"2210"}
!3302 = !{!"2211"}
!3303 = !DILocalVariable(name: "mxlo", scope: !3287, file: !40, line: 198, type: !42)
!3304 = !{!"2212"}
!3305 = !{!"2213"}
!3306 = !{!"2214"}
!3307 = !{!"2215"}
!3308 = !{!"2216"}
!3309 = !{!"2217"}
!3310 = !DILocation(line: 198, column: 3, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3287, file: !40, line: 198, column: 3)
!3312 = !{!"2218"}
!3313 = !{!"2219"}
!3314 = !{!"2220"}
!3315 = !DILocalVariable(name: "mul128tmp", scope: !3311, file: !40, line: 198, type: !56)
!3316 = !DILocation(line: 0, scope: !3311)
!3317 = !{!"2221"}
!3318 = !{!"2222"}
!3319 = !{!"2223"}
!3320 = !{!"2224"}
!3321 = !{!"2225"}
!3322 = !{!"2226"}
!3323 = !{!"2227"}
!3324 = !{!"2228"}
!3325 = !{!"2229"}
!3326 = !{!"2230"}
!3327 = !{!"2231"}
!3328 = !{!"2232"}
!3329 = !{!"2233"}
!3330 = !DILocation(line: 198, column: 3, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3287, file: !40, line: 198, column: 3)
!3332 = !{!"2234"}
!3333 = !{!"2235"}
!3334 = !{!"2236"}
!3335 = !DILocalVariable(name: "mul128tmp", scope: !3331, file: !40, line: 198, type: !56)
!3336 = !DILocation(line: 0, scope: !3331)
!3337 = !{!"2237"}
!3338 = !{!"2238"}
!3339 = !{!"2239"}
!3340 = !{!"2240"}
!3341 = !{!"2241"}
!3342 = !{!"2242"}
!3343 = !{!"2243"}
!3344 = !{!"2244"}
!3345 = !{!"2245"}
!3346 = !{!"2246"}
!3347 = !{!"2247"}
!3348 = !{!"2248"}
!3349 = !{!"2249"}
!3350 = !DILocation(line: 199, column: 16, scope: !2371)
!3351 = !{!"2250"}
!3352 = !DILocation(line: 199, column: 11, scope: !2371)
!3353 = !{!"2251"}
!3354 = !{!"2252"}
!3355 = !DILocation(line: 200, column: 11, scope: !2371)
!3356 = !{!"2253"}
!3357 = !{!"2254"}
!3358 = !DILocation(line: 201, column: 11, scope: !2371)
!3359 = !{!"2255"}
!3360 = !{!"2256"}
!3361 = !DILocation(line: 203, column: 12, scope: !2371)
!3362 = !{!"2257"}
!3363 = !DILocation(line: 203, column: 6, scope: !2371)
!3364 = !{!"2258"}
!3365 = !{!"2259"}
!3366 = !DILocation(line: 204, column: 6, scope: !2371)
!3367 = !{!"2260"}
!3368 = !{!"2261"}
!3369 = !DILocation(line: 205, column: 12, scope: !2371)
!3370 = !{!"2262"}
!3371 = !DILocation(line: 205, column: 6, scope: !2371)
!3372 = !{!"2263"}
!3373 = !{!"2264"}
!3374 = !DILocation(line: 206, column: 6, scope: !2371)
!3375 = !{!"2265"}
!3376 = !{!"2266"}
!3377 = !DILocation(line: 207, column: 18, scope: !2371)
!3378 = !{!"2267"}
!3379 = !DILocation(line: 207, column: 12, scope: !2371)
!3380 = !{!"2268"}
!3381 = !DILocation(line: 207, column: 6, scope: !2371)
!3382 = !{!"2269"}
!3383 = !{!"2270"}
!3384 = !DILocation(line: 208, column: 6, scope: !2371)
!3385 = !{!"2271"}
!3386 = !{!"2272"}
!3387 = !DILocation(line: 210, column: 7, scope: !2371)
!3388 = !{!"2273"}
!3389 = !{!"2274"}
!3390 = !DILocation(line: 211, column: 7, scope: !2371)
!3391 = !{!"2275"}
!3392 = !{!"2276"}
!3393 = distinct !{!3393, !2355, !3394, !132}
!3394 = !DILocation(line: 212, column: 2, scope: !2298)
!3395 = !{!"2277"}
!3396 = !DILocation(line: 213, column: 2, scope: !2298)
!3397 = !{!"2278"}
!3398 = !DILocation(line: 213, column: 9, scope: !2298)
!3399 = !{!"2279"}
!3400 = !DILocation(line: 214, column: 2, scope: !2298)
!3401 = !{!"2280"}
!3402 = !DILocation(line: 214, column: 9, scope: !2298)
!3403 = !{!"2281"}
!3404 = !DILocation(line: 215, column: 2, scope: !2298)
!3405 = !{!"2282"}
!3406 = !DILocation(line: 215, column: 9, scope: !2298)
!3407 = !{!"2283"}
!3408 = !DILocation(line: 218, column: 1, scope: !2298)
!3409 = !{!"2284"}
!3410 = distinct !DISubprogram(name: "br_poly1305_ctmulq_get", scope: !40, file: !40, line: 461, type: !3411, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !18)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!3413}
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_poly1305_run", file: !1161, line: 2513, baseType: !3414)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!3415 = !DILocation(line: 463, column: 2, scope: !3410)
!3416 = !{!"2285"}
!3417 = distinct !DISubprogram(name: "run_wrapper", scope: !66, file: !66, line: 3, type: !1158, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !18)
!3418 = !DILocalVariable(name: "key", arg: 1, scope: !3417, file: !66, line: 3, type: !11)
!3419 = !DILocation(line: 0, scope: !3417)
!3420 = !{!"2286"}
!3421 = !DILocalVariable(name: "iv", arg: 2, scope: !3417, file: !66, line: 3, type: !11)
!3422 = !{!"2287"}
!3423 = !DILocalVariable(name: "data", arg: 3, scope: !3417, file: !66, line: 4, type: !13)
!3424 = !{!"2288"}
!3425 = !DILocalVariable(name: "len", arg: 4, scope: !3417, file: !66, line: 4, type: !14)
!3426 = !{!"2289"}
!3427 = !DILocalVariable(name: "aad", arg: 5, scope: !3417, file: !66, line: 4, type: !11)
!3428 = !{!"2290"}
!3429 = !DILocalVariable(name: "aad_len", arg: 6, scope: !3417, file: !66, line: 4, type: !14)
!3430 = !{!"2291"}
!3431 = !DILocalVariable(name: "tag", arg: 7, scope: !3417, file: !66, line: 5, type: !13)
!3432 = !{!"2292"}
!3433 = !DILocalVariable(name: "ichacha", arg: 8, scope: !3417, file: !66, line: 5, type: !1160)
!3434 = !{!"2293"}
!3435 = !DILocalVariable(name: "encrypt", arg: 9, scope: !3417, file: !66, line: 5, type: !214)
!3436 = !{!"2294"}
!3437 = !DILocation(line: 6, column: 12, scope: !3417)
!3438 = !{!"2295"}
!3439 = !DILocation(line: 6, column: 2, scope: !3417)
!3440 = !{!"2296"}
!3441 = !DILocation(line: 7, column: 12, scope: !3417)
!3442 = !{!"2297"}
!3443 = !DILocation(line: 7, column: 2, scope: !3417)
!3444 = !{!"2298"}
!3445 = !DILocation(line: 8, column: 12, scope: !3417)
!3446 = !{!"2299"}
!3447 = !DILocation(line: 8, column: 2, scope: !3417)
!3448 = !{!"2300"}
!3449 = !DILocation(line: 9, column: 12, scope: !3417)
!3450 = !{!"2301"}
!3451 = !DILocation(line: 9, column: 2, scope: !3417)
!3452 = !{!"2302"}
!3453 = !DILocation(line: 10, column: 12, scope: !3417)
!3454 = !{!"2303"}
!3455 = !DILocation(line: 10, column: 2, scope: !3417)
!3456 = !{!"2304"}
!3457 = !DILocation(line: 11, column: 12, scope: !3417)
!3458 = !{!"2305"}
!3459 = !DILocation(line: 11, column: 2, scope: !3417)
!3460 = !{!"2306"}
!3461 = !DILocation(line: 12, column: 12, scope: !3417)
!3462 = !{!"2307"}
!3463 = !DILocation(line: 12, column: 2, scope: !3417)
!3464 = !{!"2308"}
!3465 = !DILocation(line: 13, column: 12, scope: !3417)
!3466 = !{!"2309"}
!3467 = !DILocation(line: 13, column: 2, scope: !3417)
!3468 = !{!"2310"}
!3469 = !DILocation(line: 16, column: 12, scope: !3417)
!3470 = !{!"2311"}
!3471 = !DILocation(line: 16, column: 2, scope: !3417)
!3472 = !{!"2312"}
!3473 = !DILocation(line: 17, column: 12, scope: !3417)
!3474 = !{!"2313"}
!3475 = !DILocation(line: 17, column: 2, scope: !3417)
!3476 = !{!"2314"}
!3477 = !DILocation(line: 18, column: 12, scope: !3417)
!3478 = !{!"2315"}
!3479 = !DILocation(line: 18, column: 2, scope: !3417)
!3480 = !{!"2316"}
!3481 = !DILocation(line: 21, column: 2, scope: !3417)
!3482 = !{!"2317"}
!3483 = !DILocation(line: 22, column: 1, scope: !3417)
!3484 = !{!"2318"}
!3485 = distinct !DISubprogram(name: "run_wrapper_t", scope: !66, file: !66, line: 32, type: !3486, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !65, retainedNodes: !18)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null}
!3488 = !DILocation(line: 34, column: 19, scope: !3485)
!3489 = !{!"2319"}
!3490 = !DILocalVariable(name: "key", scope: !3485, file: !66, line: 34, type: !11)
!3491 = !DILocation(line: 0, scope: !3485)
!3492 = !{!"2320"}
!3493 = !DILocation(line: 35, column: 19, scope: !3485)
!3494 = !{!"2321"}
!3495 = !DILocalVariable(name: "iv", scope: !3485, file: !66, line: 35, type: !11)
!3496 = !{!"2322"}
!3497 = !DILocation(line: 37, column: 15, scope: !3485)
!3498 = !{!"2323"}
!3499 = !DILocalVariable(name: "data", scope: !3485, file: !66, line: 37, type: !13)
!3500 = !{!"2324"}
!3501 = !DILocalVariable(name: "len", scope: !3485, file: !66, line: 38, type: !14)
!3502 = !{!"2325"}
!3503 = !DILocation(line: 39, column: 22, scope: !3485)
!3504 = !{!"2326"}
!3505 = !DILocalVariable(name: "aad", scope: !3485, file: !66, line: 39, type: !11)
!3506 = !{!"2327"}
!3507 = !DILocalVariable(name: "aad_len", scope: !3485, file: !66, line: 40, type: !14)
!3508 = !{!"2328"}
!3509 = !DILocation(line: 41, column: 14, scope: !3485)
!3510 = !{!"2329"}
!3511 = !DILocalVariable(name: "tag", scope: !3485, file: !66, line: 41, type: !13)
!3512 = !{!"2330"}
!3513 = !DILocalVariable(name: "encrypt", scope: !3485, file: !66, line: 42, type: !214)
!3514 = !{!"2331"}
!3515 = !DILocation(line: 44, column: 2, scope: !3485)
!3516 = !{!"2332"}
!3517 = !DILocation(line: 45, column: 1, scope: !3485)
!3518 = !{!"2333"}
