; ModuleID = 'run-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.br_union_u32 = type { i32 }
%struct.smack_value = type { i8* }

@br_chacha20_ct_run.CW = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0, !psr.id !38

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_chacha20_ct_run(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 !dbg !2 {
  %6 = alloca [8 x i32], align 16, !psr.id !45
  %7 = alloca [3 x i32], align 4, !psr.id !46
  %8 = alloca [16 x i32], align 16, !psr.id !47
  %9 = alloca [64 x i8], align 16, !psr.id !48
  call void @llvm.dbg.value(metadata i8* %0, metadata !49, metadata !DIExpression()), !dbg !50, !psr.id !51
  call void @llvm.dbg.value(metadata i8* %1, metadata !52, metadata !DIExpression()), !dbg !50, !psr.id !53
  call void @llvm.dbg.value(metadata i32 %2, metadata !54, metadata !DIExpression()), !dbg !50, !psr.id !55
  call void @llvm.dbg.value(metadata i8* %3, metadata !56, metadata !DIExpression()), !dbg !50, !psr.id !57
  call void @llvm.dbg.value(metadata i64 %4, metadata !58, metadata !DIExpression()), !dbg !50, !psr.id !59
  call void @llvm.dbg.declare(metadata [8 x i32]* %6, metadata !60, metadata !DIExpression()), !dbg !64, !psr.id !65
  call void @llvm.dbg.declare(metadata [3 x i32]* %7, metadata !66, metadata !DIExpression()), !dbg !70, !psr.id !71
  call void @llvm.dbg.value(metadata i8* %3, metadata !72, metadata !DIExpression()), !dbg !50, !psr.id !74
  call void @llvm.dbg.value(metadata i64 0, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !76
  br label %10, !dbg !77, !psr.id !79

10:                                               ; preds = %17, %5
  %.01 = phi i64 [ 0, %5 ], [ %18, %17 ], !dbg !80, !psr.id !81
  call void @llvm.dbg.value(metadata i64 %.01, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !82
  %11 = icmp ult i64 %.01, 8, !dbg !83, !psr.id !85
  br i1 %11, label %12, label %19, !dbg !86, !psr.id !87

12:                                               ; preds = %10
  %13 = shl i64 %.01, 2, !dbg !88, !psr.id !90
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !91, !psr.id !92, !PointTainted !93
  %15 = call i32 @br_dec32le(i8* %14), !dbg !94, !psr.id !95, !ValueTainted !96
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %.01, !dbg !97, !psr.id !98, !PointTainted !93
  store i32 %15, i32* %16, align 4, !dbg !99, !psr.id !100
  br label %17, !dbg !101, !psr.id !102

17:                                               ; preds = %12
  %18 = add i64 %.01, 1, !dbg !103, !psr.id !104
  call void @llvm.dbg.value(metadata i64 %18, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !105
  br label %10, !dbg !106, !llvm.loop !107, !psr.id !110

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 0, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !111
  br label %20, !dbg !112, !psr.id !114

20:                                               ; preds = %27, %19
  %.1 = phi i64 [ 0, %19 ], [ %28, %27 ], !dbg !115, !psr.id !116
  call void @llvm.dbg.value(metadata i64 %.1, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !117
  %21 = icmp ult i64 %.1, 3, !dbg !118, !psr.id !120
  br i1 %21, label %22, label %29, !dbg !121, !psr.id !122

22:                                               ; preds = %20
  %23 = shl i64 %.1, 2, !dbg !123, !psr.id !125
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !126, !psr.id !127
  %25 = call i32 @br_dec32le(i8* %24), !dbg !128, !psr.id !129
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %.1, !dbg !130, !psr.id !131
  store i32 %25, i32* %26, align 4, !dbg !132, !psr.id !133
  br label %27, !dbg !134, !psr.id !135

27:                                               ; preds = %22
  %28 = add i64 %.1, 1, !dbg !136, !psr.id !137
  call void @llvm.dbg.value(metadata i64 %28, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !138
  br label %20, !dbg !139, !llvm.loop !140, !psr.id !142

29:                                               ; preds = %20
  br label %30, !dbg !143, !psr.id !144

30:                                               ; preds = %705, %29
  %.04 = phi i64 [ %4, %29 ], [ %707, %705 ], !psr.id !145
  %.03 = phi i8* [ %3, %29 ], [ %706, %705 ], !dbg !50, !psr.id !146
  %.02 = phi i32 [ %2, %29 ], [ %708, %705 ], !psr.id !147
  call void @llvm.dbg.value(metadata i32 %.02, metadata !54, metadata !DIExpression()), !dbg !50, !psr.id !148
  call void @llvm.dbg.value(metadata i8* %.03, metadata !72, metadata !DIExpression()), !dbg !50, !psr.id !149
  call void @llvm.dbg.value(metadata i64 %.04, metadata !58, metadata !DIExpression()), !dbg !50, !psr.id !150
  %31 = icmp ugt i64 %.04, 0, !dbg !151, !psr.id !152
  br i1 %31, label %32, label %709, !dbg !143, !psr.id !153

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i32]* %8, metadata !154, metadata !DIExpression()), !dbg !159, !psr.id !160
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !161, metadata !DIExpression()), !dbg !165, !psr.id !166
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !167, !psr.id !168
  %34 = bitcast i32* %33 to i8*, !dbg !169, !psr.id !170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([4 x i32]* @br_chacha20_ct_run.CW to i8*), i64 16, i1 false), !dbg !169, !psr.id !171
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !172, !psr.id !173
  %36 = bitcast i32* %35 to i8*, !dbg !174, !psr.id !175
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !174, !psr.id !176
  %38 = bitcast i32* %37 to i8*, !dbg !174, !psr.id !177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 %38, i64 32, i1 false), !dbg !174, !psr.id !178
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !179, !psr.id !180
  store i32 %.02, i32* %39, align 16, !dbg !181, !psr.id !182
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !183, !psr.id !184
  %41 = bitcast i32* %40 to i8*, !dbg !185, !psr.id !186
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0, !dbg !185, !psr.id !187
  %43 = bitcast i32* %42 to i8*, !dbg !185, !psr.id !188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %43, i64 12, i1 false), !dbg !185, !psr.id !189
  call void @llvm.dbg.value(metadata i32 0, metadata !190, metadata !DIExpression()), !dbg !192, !psr.id !193
  br label %44, !dbg !194, !psr.id !196

44:                                               ; preds = %639, %32
  %.0 = phi i32 [ 0, %32 ], [ %640, %639 ], !dbg !197, !psr.id !198
  call void @llvm.dbg.value(metadata i32 %.0, metadata !190, metadata !DIExpression()), !dbg !192, !psr.id !199
  %45 = icmp slt i32 %.0, 10, !dbg !200, !psr.id !202
  br i1 %45, label %46, label %641, !dbg !203, !psr.id !204

46:                                               ; preds = %44
  br label %47, !dbg !205, !psr.id !207

47:                                               ; preds = %46
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !208, !psr.id !210
  %49 = load i32, i32* %48, align 16, !dbg !208, !psr.id !211
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !208, !psr.id !212
  %51 = load i32, i32* %50, align 16, !dbg !208, !psr.id !213
  %52 = add i32 %51, %49, !dbg !208, !psr.id !214
  store i32 %52, i32* %50, align 16, !dbg !208, !psr.id !215
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !208, !psr.id !216
  %54 = load i32, i32* %53, align 16, !dbg !208, !psr.id !217
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !208, !psr.id !218
  %56 = load i32, i32* %55, align 16, !dbg !208, !psr.id !219
  %57 = xor i32 %56, %54, !dbg !208, !psr.id !220
  store i32 %57, i32* %55, align 16, !dbg !208, !psr.id !221
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !208, !psr.id !222
  %59 = load i32, i32* %58, align 16, !dbg !208, !psr.id !223
  %60 = shl i32 %59, 16, !dbg !208, !psr.id !224
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !208, !psr.id !225
  %62 = load i32, i32* %61, align 16, !dbg !208, !psr.id !226
  %63 = lshr i32 %62, 16, !dbg !208, !psr.id !227
  %64 = or i32 %60, %63, !dbg !208, !psr.id !228
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !208, !psr.id !229
  store i32 %64, i32* %65, align 16, !dbg !208, !psr.id !230
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !208, !psr.id !231
  %67 = load i32, i32* %66, align 16, !dbg !208, !psr.id !232
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !208, !psr.id !233
  %69 = load i32, i32* %68, align 16, !dbg !208, !psr.id !234
  %70 = add i32 %69, %67, !dbg !208, !psr.id !235
  store i32 %70, i32* %68, align 16, !dbg !208, !psr.id !236
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !208, !psr.id !237
  %72 = load i32, i32* %71, align 16, !dbg !208, !psr.id !238
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !208, !psr.id !239
  %74 = load i32, i32* %73, align 16, !dbg !208, !psr.id !240
  %75 = xor i32 %74, %72, !dbg !208, !psr.id !241
  store i32 %75, i32* %73, align 16, !dbg !208, !psr.id !242
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !208, !psr.id !243
  %77 = load i32, i32* %76, align 16, !dbg !208, !psr.id !244
  %78 = shl i32 %77, 12, !dbg !208, !psr.id !245
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !208, !psr.id !246
  %80 = load i32, i32* %79, align 16, !dbg !208, !psr.id !247
  %81 = lshr i32 %80, 20, !dbg !208, !psr.id !248
  %82 = or i32 %78, %81, !dbg !208, !psr.id !249
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !208, !psr.id !250
  store i32 %82, i32* %83, align 16, !dbg !208, !psr.id !251
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !208, !psr.id !252
  %85 = load i32, i32* %84, align 16, !dbg !208, !psr.id !253
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !208, !psr.id !254
  %87 = load i32, i32* %86, align 16, !dbg !208, !psr.id !255
  %88 = add i32 %87, %85, !dbg !208, !psr.id !256
  store i32 %88, i32* %86, align 16, !dbg !208, !psr.id !257
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !208, !psr.id !258
  %90 = load i32, i32* %89, align 16, !dbg !208, !psr.id !259
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !208, !psr.id !260
  %92 = load i32, i32* %91, align 16, !dbg !208, !psr.id !261
  %93 = xor i32 %92, %90, !dbg !208, !psr.id !262
  store i32 %93, i32* %91, align 16, !dbg !208, !psr.id !263
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !208, !psr.id !264
  %95 = load i32, i32* %94, align 16, !dbg !208, !psr.id !265
  %96 = shl i32 %95, 8, !dbg !208, !psr.id !266
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !208, !psr.id !267
  %98 = load i32, i32* %97, align 16, !dbg !208, !psr.id !268
  %99 = lshr i32 %98, 24, !dbg !208, !psr.id !269
  %100 = or i32 %96, %99, !dbg !208, !psr.id !270
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !208, !psr.id !271
  store i32 %100, i32* %101, align 16, !dbg !208, !psr.id !272
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !208, !psr.id !273
  %103 = load i32, i32* %102, align 16, !dbg !208, !psr.id !274
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !208, !psr.id !275
  %105 = load i32, i32* %104, align 16, !dbg !208, !psr.id !276
  %106 = add i32 %105, %103, !dbg !208, !psr.id !277
  store i32 %106, i32* %104, align 16, !dbg !208, !psr.id !278
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !208, !psr.id !279
  %108 = load i32, i32* %107, align 16, !dbg !208, !psr.id !280
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !208, !psr.id !281
  %110 = load i32, i32* %109, align 16, !dbg !208, !psr.id !282
  %111 = xor i32 %110, %108, !dbg !208, !psr.id !283
  store i32 %111, i32* %109, align 16, !dbg !208, !psr.id !284
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !208, !psr.id !285
  %113 = load i32, i32* %112, align 16, !dbg !208, !psr.id !286
  %114 = shl i32 %113, 7, !dbg !208, !psr.id !287
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !208, !psr.id !288
  %116 = load i32, i32* %115, align 16, !dbg !208, !psr.id !289
  %117 = lshr i32 %116, 25, !dbg !208, !psr.id !290
  %118 = or i32 %114, %117, !dbg !208, !psr.id !291
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !208, !psr.id !292
  store i32 %118, i32* %119, align 16, !dbg !208, !psr.id !293
  br label %120, !dbg !208, !psr.id !294

120:                                              ; preds = %47
  br label %121, !dbg !295, !psr.id !296

121:                                              ; preds = %120
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !297, !psr.id !299
  %123 = load i32, i32* %122, align 4, !dbg !297, !psr.id !300
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !297, !psr.id !301
  %125 = load i32, i32* %124, align 4, !dbg !297, !psr.id !302
  %126 = add i32 %125, %123, !dbg !297, !psr.id !303
  store i32 %126, i32* %124, align 4, !dbg !297, !psr.id !304
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !297, !psr.id !305
  %128 = load i32, i32* %127, align 4, !dbg !297, !psr.id !306
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !297, !psr.id !307
  %130 = load i32, i32* %129, align 4, !dbg !297, !psr.id !308
  %131 = xor i32 %130, %128, !dbg !297, !psr.id !309
  store i32 %131, i32* %129, align 4, !dbg !297, !psr.id !310
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !297, !psr.id !311
  %133 = load i32, i32* %132, align 4, !dbg !297, !psr.id !312
  %134 = shl i32 %133, 16, !dbg !297, !psr.id !313
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !297, !psr.id !314
  %136 = load i32, i32* %135, align 4, !dbg !297, !psr.id !315
  %137 = lshr i32 %136, 16, !dbg !297, !psr.id !316
  %138 = or i32 %134, %137, !dbg !297, !psr.id !317
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !297, !psr.id !318
  store i32 %138, i32* %139, align 4, !dbg !297, !psr.id !319
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !297, !psr.id !320
  %141 = load i32, i32* %140, align 4, !dbg !297, !psr.id !321
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !297, !psr.id !322
  %143 = load i32, i32* %142, align 4, !dbg !297, !psr.id !323
  %144 = add i32 %143, %141, !dbg !297, !psr.id !324
  store i32 %144, i32* %142, align 4, !dbg !297, !psr.id !325
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !297, !psr.id !326
  %146 = load i32, i32* %145, align 4, !dbg !297, !psr.id !327
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !297, !psr.id !328
  %148 = load i32, i32* %147, align 4, !dbg !297, !psr.id !329
  %149 = xor i32 %148, %146, !dbg !297, !psr.id !330
  store i32 %149, i32* %147, align 4, !dbg !297, !psr.id !331
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !297, !psr.id !332
  %151 = load i32, i32* %150, align 4, !dbg !297, !psr.id !333
  %152 = shl i32 %151, 12, !dbg !297, !psr.id !334
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !297, !psr.id !335
  %154 = load i32, i32* %153, align 4, !dbg !297, !psr.id !336
  %155 = lshr i32 %154, 20, !dbg !297, !psr.id !337
  %156 = or i32 %152, %155, !dbg !297, !psr.id !338
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !297, !psr.id !339
  store i32 %156, i32* %157, align 4, !dbg !297, !psr.id !340
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !297, !psr.id !341
  %159 = load i32, i32* %158, align 4, !dbg !297, !psr.id !342
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !297, !psr.id !343
  %161 = load i32, i32* %160, align 4, !dbg !297, !psr.id !344
  %162 = add i32 %161, %159, !dbg !297, !psr.id !345
  store i32 %162, i32* %160, align 4, !dbg !297, !psr.id !346
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !297, !psr.id !347
  %164 = load i32, i32* %163, align 4, !dbg !297, !psr.id !348
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !297, !psr.id !349
  %166 = load i32, i32* %165, align 4, !dbg !297, !psr.id !350
  %167 = xor i32 %166, %164, !dbg !297, !psr.id !351
  store i32 %167, i32* %165, align 4, !dbg !297, !psr.id !352
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !297, !psr.id !353
  %169 = load i32, i32* %168, align 4, !dbg !297, !psr.id !354
  %170 = shl i32 %169, 8, !dbg !297, !psr.id !355
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !297, !psr.id !356
  %172 = load i32, i32* %171, align 4, !dbg !297, !psr.id !357
  %173 = lshr i32 %172, 24, !dbg !297, !psr.id !358
  %174 = or i32 %170, %173, !dbg !297, !psr.id !359
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !297, !psr.id !360
  store i32 %174, i32* %175, align 4, !dbg !297, !psr.id !361
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !297, !psr.id !362
  %177 = load i32, i32* %176, align 4, !dbg !297, !psr.id !363
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !297, !psr.id !364
  %179 = load i32, i32* %178, align 4, !dbg !297, !psr.id !365
  %180 = add i32 %179, %177, !dbg !297, !psr.id !366
  store i32 %180, i32* %178, align 4, !dbg !297, !psr.id !367
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !297, !psr.id !368
  %182 = load i32, i32* %181, align 4, !dbg !297, !psr.id !369
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !297, !psr.id !370
  %184 = load i32, i32* %183, align 4, !dbg !297, !psr.id !371
  %185 = xor i32 %184, %182, !dbg !297, !psr.id !372
  store i32 %185, i32* %183, align 4, !dbg !297, !psr.id !373
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !297, !psr.id !374
  %187 = load i32, i32* %186, align 4, !dbg !297, !psr.id !375
  %188 = shl i32 %187, 7, !dbg !297, !psr.id !376
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !297, !psr.id !377
  %190 = load i32, i32* %189, align 4, !dbg !297, !psr.id !378
  %191 = lshr i32 %190, 25, !dbg !297, !psr.id !379
  %192 = or i32 %188, %191, !dbg !297, !psr.id !380
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !297, !psr.id !381
  store i32 %192, i32* %193, align 4, !dbg !297, !psr.id !382
  br label %194, !dbg !297, !psr.id !383

194:                                              ; preds = %121
  br label %195, !dbg !384, !psr.id !385

195:                                              ; preds = %194
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !386, !psr.id !388
  %197 = load i32, i32* %196, align 8, !dbg !386, !psr.id !389
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !386, !psr.id !390
  %199 = load i32, i32* %198, align 8, !dbg !386, !psr.id !391
  %200 = add i32 %199, %197, !dbg !386, !psr.id !392
  store i32 %200, i32* %198, align 8, !dbg !386, !psr.id !393
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !386, !psr.id !394
  %202 = load i32, i32* %201, align 8, !dbg !386, !psr.id !395
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !386, !psr.id !396
  %204 = load i32, i32* %203, align 8, !dbg !386, !psr.id !397
  %205 = xor i32 %204, %202, !dbg !386, !psr.id !398
  store i32 %205, i32* %203, align 8, !dbg !386, !psr.id !399
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !386, !psr.id !400
  %207 = load i32, i32* %206, align 8, !dbg !386, !psr.id !401
  %208 = shl i32 %207, 16, !dbg !386, !psr.id !402
  %209 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !386, !psr.id !403
  %210 = load i32, i32* %209, align 8, !dbg !386, !psr.id !404
  %211 = lshr i32 %210, 16, !dbg !386, !psr.id !405
  %212 = or i32 %208, %211, !dbg !386, !psr.id !406
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !386, !psr.id !407
  store i32 %212, i32* %213, align 8, !dbg !386, !psr.id !408
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !386, !psr.id !409
  %215 = load i32, i32* %214, align 8, !dbg !386, !psr.id !410
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !386, !psr.id !411
  %217 = load i32, i32* %216, align 8, !dbg !386, !psr.id !412
  %218 = add i32 %217, %215, !dbg !386, !psr.id !413
  store i32 %218, i32* %216, align 8, !dbg !386, !psr.id !414
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !386, !psr.id !415
  %220 = load i32, i32* %219, align 8, !dbg !386, !psr.id !416
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !386, !psr.id !417
  %222 = load i32, i32* %221, align 8, !dbg !386, !psr.id !418
  %223 = xor i32 %222, %220, !dbg !386, !psr.id !419
  store i32 %223, i32* %221, align 8, !dbg !386, !psr.id !420
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !386, !psr.id !421
  %225 = load i32, i32* %224, align 8, !dbg !386, !psr.id !422
  %226 = shl i32 %225, 12, !dbg !386, !psr.id !423
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !386, !psr.id !424
  %228 = load i32, i32* %227, align 8, !dbg !386, !psr.id !425
  %229 = lshr i32 %228, 20, !dbg !386, !psr.id !426
  %230 = or i32 %226, %229, !dbg !386, !psr.id !427
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !386, !psr.id !428
  store i32 %230, i32* %231, align 8, !dbg !386, !psr.id !429
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !386, !psr.id !430
  %233 = load i32, i32* %232, align 8, !dbg !386, !psr.id !431
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !386, !psr.id !432
  %235 = load i32, i32* %234, align 8, !dbg !386, !psr.id !433
  %236 = add i32 %235, %233, !dbg !386, !psr.id !434
  store i32 %236, i32* %234, align 8, !dbg !386, !psr.id !435
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !386, !psr.id !436
  %238 = load i32, i32* %237, align 8, !dbg !386, !psr.id !437
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !386, !psr.id !438
  %240 = load i32, i32* %239, align 8, !dbg !386, !psr.id !439
  %241 = xor i32 %240, %238, !dbg !386, !psr.id !440
  store i32 %241, i32* %239, align 8, !dbg !386, !psr.id !441
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !386, !psr.id !442
  %243 = load i32, i32* %242, align 8, !dbg !386, !psr.id !443
  %244 = shl i32 %243, 8, !dbg !386, !psr.id !444
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !386, !psr.id !445
  %246 = load i32, i32* %245, align 8, !dbg !386, !psr.id !446
  %247 = lshr i32 %246, 24, !dbg !386, !psr.id !447
  %248 = or i32 %244, %247, !dbg !386, !psr.id !448
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !386, !psr.id !449
  store i32 %248, i32* %249, align 8, !dbg !386, !psr.id !450
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !386, !psr.id !451
  %251 = load i32, i32* %250, align 8, !dbg !386, !psr.id !452
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !386, !psr.id !453
  %253 = load i32, i32* %252, align 8, !dbg !386, !psr.id !454
  %254 = add i32 %253, %251, !dbg !386, !psr.id !455
  store i32 %254, i32* %252, align 8, !dbg !386, !psr.id !456
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !386, !psr.id !457
  %256 = load i32, i32* %255, align 8, !dbg !386, !psr.id !458
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !386, !psr.id !459
  %258 = load i32, i32* %257, align 8, !dbg !386, !psr.id !460
  %259 = xor i32 %258, %256, !dbg !386, !psr.id !461
  store i32 %259, i32* %257, align 8, !dbg !386, !psr.id !462
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !386, !psr.id !463
  %261 = load i32, i32* %260, align 8, !dbg !386, !psr.id !464
  %262 = shl i32 %261, 7, !dbg !386, !psr.id !465
  %263 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !386, !psr.id !466
  %264 = load i32, i32* %263, align 8, !dbg !386, !psr.id !467
  %265 = lshr i32 %264, 25, !dbg !386, !psr.id !468
  %266 = or i32 %262, %265, !dbg !386, !psr.id !469
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !386, !psr.id !470
  store i32 %266, i32* %267, align 8, !dbg !386, !psr.id !471
  br label %268, !dbg !386, !psr.id !472

268:                                              ; preds = %195
  br label %269, !dbg !473, !psr.id !474

269:                                              ; preds = %268
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !475, !psr.id !477
  %271 = load i32, i32* %270, align 4, !dbg !475, !psr.id !478
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !475, !psr.id !479
  %273 = load i32, i32* %272, align 4, !dbg !475, !psr.id !480
  %274 = add i32 %273, %271, !dbg !475, !psr.id !481
  store i32 %274, i32* %272, align 4, !dbg !475, !psr.id !482
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !475, !psr.id !483
  %276 = load i32, i32* %275, align 4, !dbg !475, !psr.id !484
  %277 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !475, !psr.id !485
  %278 = load i32, i32* %277, align 4, !dbg !475, !psr.id !486
  %279 = xor i32 %278, %276, !dbg !475, !psr.id !487
  store i32 %279, i32* %277, align 4, !dbg !475, !psr.id !488
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !475, !psr.id !489
  %281 = load i32, i32* %280, align 4, !dbg !475, !psr.id !490
  %282 = shl i32 %281, 16, !dbg !475, !psr.id !491
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !475, !psr.id !492
  %284 = load i32, i32* %283, align 4, !dbg !475, !psr.id !493
  %285 = lshr i32 %284, 16, !dbg !475, !psr.id !494
  %286 = or i32 %282, %285, !dbg !475, !psr.id !495
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !475, !psr.id !496
  store i32 %286, i32* %287, align 4, !dbg !475, !psr.id !497
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !475, !psr.id !498
  %289 = load i32, i32* %288, align 4, !dbg !475, !psr.id !499
  %290 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !475, !psr.id !500
  %291 = load i32, i32* %290, align 4, !dbg !475, !psr.id !501
  %292 = add i32 %291, %289, !dbg !475, !psr.id !502
  store i32 %292, i32* %290, align 4, !dbg !475, !psr.id !503
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !475, !psr.id !504
  %294 = load i32, i32* %293, align 4, !dbg !475, !psr.id !505
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !475, !psr.id !506
  %296 = load i32, i32* %295, align 4, !dbg !475, !psr.id !507
  %297 = xor i32 %296, %294, !dbg !475, !psr.id !508
  store i32 %297, i32* %295, align 4, !dbg !475, !psr.id !509
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !475, !psr.id !510
  %299 = load i32, i32* %298, align 4, !dbg !475, !psr.id !511
  %300 = shl i32 %299, 12, !dbg !475, !psr.id !512
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !475, !psr.id !513
  %302 = load i32, i32* %301, align 4, !dbg !475, !psr.id !514
  %303 = lshr i32 %302, 20, !dbg !475, !psr.id !515
  %304 = or i32 %300, %303, !dbg !475, !psr.id !516
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !475, !psr.id !517
  store i32 %304, i32* %305, align 4, !dbg !475, !psr.id !518
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !475, !psr.id !519
  %307 = load i32, i32* %306, align 4, !dbg !475, !psr.id !520
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !475, !psr.id !521
  %309 = load i32, i32* %308, align 4, !dbg !475, !psr.id !522
  %310 = add i32 %309, %307, !dbg !475, !psr.id !523
  store i32 %310, i32* %308, align 4, !dbg !475, !psr.id !524
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !475, !psr.id !525
  %312 = load i32, i32* %311, align 4, !dbg !475, !psr.id !526
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !475, !psr.id !527
  %314 = load i32, i32* %313, align 4, !dbg !475, !psr.id !528
  %315 = xor i32 %314, %312, !dbg !475, !psr.id !529
  store i32 %315, i32* %313, align 4, !dbg !475, !psr.id !530
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !475, !psr.id !531
  %317 = load i32, i32* %316, align 4, !dbg !475, !psr.id !532
  %318 = shl i32 %317, 8, !dbg !475, !psr.id !533
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !475, !psr.id !534
  %320 = load i32, i32* %319, align 4, !dbg !475, !psr.id !535
  %321 = lshr i32 %320, 24, !dbg !475, !psr.id !536
  %322 = or i32 %318, %321, !dbg !475, !psr.id !537
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !475, !psr.id !538
  store i32 %322, i32* %323, align 4, !dbg !475, !psr.id !539
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !475, !psr.id !540
  %325 = load i32, i32* %324, align 4, !dbg !475, !psr.id !541
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !475, !psr.id !542
  %327 = load i32, i32* %326, align 4, !dbg !475, !psr.id !543
  %328 = add i32 %327, %325, !dbg !475, !psr.id !544
  store i32 %328, i32* %326, align 4, !dbg !475, !psr.id !545
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !475, !psr.id !546
  %330 = load i32, i32* %329, align 4, !dbg !475, !psr.id !547
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !475, !psr.id !548
  %332 = load i32, i32* %331, align 4, !dbg !475, !psr.id !549
  %333 = xor i32 %332, %330, !dbg !475, !psr.id !550
  store i32 %333, i32* %331, align 4, !dbg !475, !psr.id !551
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !475, !psr.id !552
  %335 = load i32, i32* %334, align 4, !dbg !475, !psr.id !553
  %336 = shl i32 %335, 7, !dbg !475, !psr.id !554
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !475, !psr.id !555
  %338 = load i32, i32* %337, align 4, !dbg !475, !psr.id !556
  %339 = lshr i32 %338, 25, !dbg !475, !psr.id !557
  %340 = or i32 %336, %339, !dbg !475, !psr.id !558
  %341 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !475, !psr.id !559
  store i32 %340, i32* %341, align 4, !dbg !475, !psr.id !560
  br label %342, !dbg !475, !psr.id !561

342:                                              ; preds = %269
  br label %343, !dbg !562, !psr.id !563

343:                                              ; preds = %342
  %344 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !564, !psr.id !566
  %345 = load i32, i32* %344, align 4, !dbg !564, !psr.id !567
  %346 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !564, !psr.id !568
  %347 = load i32, i32* %346, align 16, !dbg !564, !psr.id !569
  %348 = add i32 %347, %345, !dbg !564, !psr.id !570
  store i32 %348, i32* %346, align 16, !dbg !564, !psr.id !571
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !564, !psr.id !572
  %350 = load i32, i32* %349, align 16, !dbg !564, !psr.id !573
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !564, !psr.id !574
  %352 = load i32, i32* %351, align 4, !dbg !564, !psr.id !575
  %353 = xor i32 %352, %350, !dbg !564, !psr.id !576
  store i32 %353, i32* %351, align 4, !dbg !564, !psr.id !577
  %354 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !564, !psr.id !578
  %355 = load i32, i32* %354, align 4, !dbg !564, !psr.id !579
  %356 = shl i32 %355, 16, !dbg !564, !psr.id !580
  %357 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !564, !psr.id !581
  %358 = load i32, i32* %357, align 4, !dbg !564, !psr.id !582
  %359 = lshr i32 %358, 16, !dbg !564, !psr.id !583
  %360 = or i32 %356, %359, !dbg !564, !psr.id !584
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !564, !psr.id !585
  store i32 %360, i32* %361, align 4, !dbg !564, !psr.id !586
  %362 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !564, !psr.id !587
  %363 = load i32, i32* %362, align 4, !dbg !564, !psr.id !588
  %364 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !564, !psr.id !589
  %365 = load i32, i32* %364, align 8, !dbg !564, !psr.id !590
  %366 = add i32 %365, %363, !dbg !564, !psr.id !591
  store i32 %366, i32* %364, align 8, !dbg !564, !psr.id !592
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !564, !psr.id !593
  %368 = load i32, i32* %367, align 8, !dbg !564, !psr.id !594
  %369 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !564, !psr.id !595
  %370 = load i32, i32* %369, align 4, !dbg !564, !psr.id !596
  %371 = xor i32 %370, %368, !dbg !564, !psr.id !597
  store i32 %371, i32* %369, align 4, !dbg !564, !psr.id !598
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !564, !psr.id !599
  %373 = load i32, i32* %372, align 4, !dbg !564, !psr.id !600
  %374 = shl i32 %373, 12, !dbg !564, !psr.id !601
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !564, !psr.id !602
  %376 = load i32, i32* %375, align 4, !dbg !564, !psr.id !603
  %377 = lshr i32 %376, 20, !dbg !564, !psr.id !604
  %378 = or i32 %374, %377, !dbg !564, !psr.id !605
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !564, !psr.id !606
  store i32 %378, i32* %379, align 4, !dbg !564, !psr.id !607
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !564, !psr.id !608
  %381 = load i32, i32* %380, align 4, !dbg !564, !psr.id !609
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !564, !psr.id !610
  %383 = load i32, i32* %382, align 16, !dbg !564, !psr.id !611
  %384 = add i32 %383, %381, !dbg !564, !psr.id !612
  store i32 %384, i32* %382, align 16, !dbg !564, !psr.id !613
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !564, !psr.id !614
  %386 = load i32, i32* %385, align 16, !dbg !564, !psr.id !615
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !564, !psr.id !616
  %388 = load i32, i32* %387, align 4, !dbg !564, !psr.id !617
  %389 = xor i32 %388, %386, !dbg !564, !psr.id !618
  store i32 %389, i32* %387, align 4, !dbg !564, !psr.id !619
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !564, !psr.id !620
  %391 = load i32, i32* %390, align 4, !dbg !564, !psr.id !621
  %392 = shl i32 %391, 8, !dbg !564, !psr.id !622
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !564, !psr.id !623
  %394 = load i32, i32* %393, align 4, !dbg !564, !psr.id !624
  %395 = lshr i32 %394, 24, !dbg !564, !psr.id !625
  %396 = or i32 %392, %395, !dbg !564, !psr.id !626
  %397 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !564, !psr.id !627
  store i32 %396, i32* %397, align 4, !dbg !564, !psr.id !628
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !564, !psr.id !629
  %399 = load i32, i32* %398, align 4, !dbg !564, !psr.id !630
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !564, !psr.id !631
  %401 = load i32, i32* %400, align 8, !dbg !564, !psr.id !632
  %402 = add i32 %401, %399, !dbg !564, !psr.id !633
  store i32 %402, i32* %400, align 8, !dbg !564, !psr.id !634
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !564, !psr.id !635
  %404 = load i32, i32* %403, align 8, !dbg !564, !psr.id !636
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !564, !psr.id !637
  %406 = load i32, i32* %405, align 4, !dbg !564, !psr.id !638
  %407 = xor i32 %406, %404, !dbg !564, !psr.id !639
  store i32 %407, i32* %405, align 4, !dbg !564, !psr.id !640
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !564, !psr.id !641
  %409 = load i32, i32* %408, align 4, !dbg !564, !psr.id !642
  %410 = shl i32 %409, 7, !dbg !564, !psr.id !643
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !564, !psr.id !644
  %412 = load i32, i32* %411, align 4, !dbg !564, !psr.id !645
  %413 = lshr i32 %412, 25, !dbg !564, !psr.id !646
  %414 = or i32 %410, %413, !dbg !564, !psr.id !647
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !564, !psr.id !648
  store i32 %414, i32* %415, align 4, !dbg !564, !psr.id !649
  br label %416, !dbg !564, !psr.id !650

416:                                              ; preds = %343
  br label %417, !dbg !651, !psr.id !652

417:                                              ; preds = %416
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !653, !psr.id !655
  %419 = load i32, i32* %418, align 8, !dbg !653, !psr.id !656
  %420 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !653, !psr.id !657
  %421 = load i32, i32* %420, align 4, !dbg !653, !psr.id !658
  %422 = add i32 %421, %419, !dbg !653, !psr.id !659
  store i32 %422, i32* %420, align 4, !dbg !653, !psr.id !660
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !653, !psr.id !661
  %424 = load i32, i32* %423, align 4, !dbg !653, !psr.id !662
  %425 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !653, !psr.id !663
  %426 = load i32, i32* %425, align 16, !dbg !653, !psr.id !664
  %427 = xor i32 %426, %424, !dbg !653, !psr.id !665
  store i32 %427, i32* %425, align 16, !dbg !653, !psr.id !666
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !653, !psr.id !667
  %429 = load i32, i32* %428, align 16, !dbg !653, !psr.id !668
  %430 = shl i32 %429, 16, !dbg !653, !psr.id !669
  %431 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !653, !psr.id !670
  %432 = load i32, i32* %431, align 16, !dbg !653, !psr.id !671
  %433 = lshr i32 %432, 16, !dbg !653, !psr.id !672
  %434 = or i32 %430, %433, !dbg !653, !psr.id !673
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !653, !psr.id !674
  store i32 %434, i32* %435, align 16, !dbg !653, !psr.id !675
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !653, !psr.id !676
  %437 = load i32, i32* %436, align 16, !dbg !653, !psr.id !677
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !653, !psr.id !678
  %439 = load i32, i32* %438, align 4, !dbg !653, !psr.id !679
  %440 = add i32 %439, %437, !dbg !653, !psr.id !680
  store i32 %440, i32* %438, align 4, !dbg !653, !psr.id !681
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !653, !psr.id !682
  %442 = load i32, i32* %441, align 4, !dbg !653, !psr.id !683
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !653, !psr.id !684
  %444 = load i32, i32* %443, align 8, !dbg !653, !psr.id !685
  %445 = xor i32 %444, %442, !dbg !653, !psr.id !686
  store i32 %445, i32* %443, align 8, !dbg !653, !psr.id !687
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !653, !psr.id !688
  %447 = load i32, i32* %446, align 8, !dbg !653, !psr.id !689
  %448 = shl i32 %447, 12, !dbg !653, !psr.id !690
  %449 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !653, !psr.id !691
  %450 = load i32, i32* %449, align 8, !dbg !653, !psr.id !692
  %451 = lshr i32 %450, 20, !dbg !653, !psr.id !693
  %452 = or i32 %448, %451, !dbg !653, !psr.id !694
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !653, !psr.id !695
  store i32 %452, i32* %453, align 8, !dbg !653, !psr.id !696
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !653, !psr.id !697
  %455 = load i32, i32* %454, align 8, !dbg !653, !psr.id !698
  %456 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !653, !psr.id !699
  %457 = load i32, i32* %456, align 4, !dbg !653, !psr.id !700
  %458 = add i32 %457, %455, !dbg !653, !psr.id !701
  store i32 %458, i32* %456, align 4, !dbg !653, !psr.id !702
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !653, !psr.id !703
  %460 = load i32, i32* %459, align 4, !dbg !653, !psr.id !704
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !653, !psr.id !705
  %462 = load i32, i32* %461, align 16, !dbg !653, !psr.id !706
  %463 = xor i32 %462, %460, !dbg !653, !psr.id !707
  store i32 %463, i32* %461, align 16, !dbg !653, !psr.id !708
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !653, !psr.id !709
  %465 = load i32, i32* %464, align 16, !dbg !653, !psr.id !710
  %466 = shl i32 %465, 8, !dbg !653, !psr.id !711
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !653, !psr.id !712
  %468 = load i32, i32* %467, align 16, !dbg !653, !psr.id !713
  %469 = lshr i32 %468, 24, !dbg !653, !psr.id !714
  %470 = or i32 %466, %469, !dbg !653, !psr.id !715
  %471 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !653, !psr.id !716
  store i32 %470, i32* %471, align 16, !dbg !653, !psr.id !717
  %472 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !653, !psr.id !718
  %473 = load i32, i32* %472, align 16, !dbg !653, !psr.id !719
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !653, !psr.id !720
  %475 = load i32, i32* %474, align 4, !dbg !653, !psr.id !721
  %476 = add i32 %475, %473, !dbg !653, !psr.id !722
  store i32 %476, i32* %474, align 4, !dbg !653, !psr.id !723
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !653, !psr.id !724
  %478 = load i32, i32* %477, align 4, !dbg !653, !psr.id !725
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !653, !psr.id !726
  %480 = load i32, i32* %479, align 8, !dbg !653, !psr.id !727
  %481 = xor i32 %480, %478, !dbg !653, !psr.id !728
  store i32 %481, i32* %479, align 8, !dbg !653, !psr.id !729
  %482 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !653, !psr.id !730
  %483 = load i32, i32* %482, align 8, !dbg !653, !psr.id !731
  %484 = shl i32 %483, 7, !dbg !653, !psr.id !732
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !653, !psr.id !733
  %486 = load i32, i32* %485, align 8, !dbg !653, !psr.id !734
  %487 = lshr i32 %486, 25, !dbg !653, !psr.id !735
  %488 = or i32 %484, %487, !dbg !653, !psr.id !736
  %489 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !653, !psr.id !737
  store i32 %488, i32* %489, align 8, !dbg !653, !psr.id !738
  br label %490, !dbg !653, !psr.id !739

490:                                              ; preds = %417
  br label %491, !dbg !740, !psr.id !741

491:                                              ; preds = %490
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !742, !psr.id !744
  %493 = load i32, i32* %492, align 4, !dbg !742, !psr.id !745
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !742, !psr.id !746
  %495 = load i32, i32* %494, align 8, !dbg !742, !psr.id !747
  %496 = add i32 %495, %493, !dbg !742, !psr.id !748
  store i32 %496, i32* %494, align 8, !dbg !742, !psr.id !749
  %497 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !742, !psr.id !750
  %498 = load i32, i32* %497, align 8, !dbg !742, !psr.id !751
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !742, !psr.id !752
  %500 = load i32, i32* %499, align 4, !dbg !742, !psr.id !753
  %501 = xor i32 %500, %498, !dbg !742, !psr.id !754
  store i32 %501, i32* %499, align 4, !dbg !742, !psr.id !755
  %502 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !742, !psr.id !756
  %503 = load i32, i32* %502, align 4, !dbg !742, !psr.id !757
  %504 = shl i32 %503, 16, !dbg !742, !psr.id !758
  %505 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !742, !psr.id !759
  %506 = load i32, i32* %505, align 4, !dbg !742, !psr.id !760
  %507 = lshr i32 %506, 16, !dbg !742, !psr.id !761
  %508 = or i32 %504, %507, !dbg !742, !psr.id !762
  %509 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !742, !psr.id !763
  store i32 %508, i32* %509, align 4, !dbg !742, !psr.id !764
  %510 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !742, !psr.id !765
  %511 = load i32, i32* %510, align 4, !dbg !742, !psr.id !766
  %512 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !742, !psr.id !767
  %513 = load i32, i32* %512, align 16, !dbg !742, !psr.id !768
  %514 = add i32 %513, %511, !dbg !742, !psr.id !769
  store i32 %514, i32* %512, align 16, !dbg !742, !psr.id !770
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !742, !psr.id !771
  %516 = load i32, i32* %515, align 16, !dbg !742, !psr.id !772
  %517 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !742, !psr.id !773
  %518 = load i32, i32* %517, align 4, !dbg !742, !psr.id !774
  %519 = xor i32 %518, %516, !dbg !742, !psr.id !775
  store i32 %519, i32* %517, align 4, !dbg !742, !psr.id !776
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !742, !psr.id !777
  %521 = load i32, i32* %520, align 4, !dbg !742, !psr.id !778
  %522 = shl i32 %521, 12, !dbg !742, !psr.id !779
  %523 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !742, !psr.id !780
  %524 = load i32, i32* %523, align 4, !dbg !742, !psr.id !781
  %525 = lshr i32 %524, 20, !dbg !742, !psr.id !782
  %526 = or i32 %522, %525, !dbg !742, !psr.id !783
  %527 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !742, !psr.id !784
  store i32 %526, i32* %527, align 4, !dbg !742, !psr.id !785
  %528 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !742, !psr.id !786
  %529 = load i32, i32* %528, align 4, !dbg !742, !psr.id !787
  %530 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !742, !psr.id !788
  %531 = load i32, i32* %530, align 8, !dbg !742, !psr.id !789
  %532 = add i32 %531, %529, !dbg !742, !psr.id !790
  store i32 %532, i32* %530, align 8, !dbg !742, !psr.id !791
  %533 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !742, !psr.id !792
  %534 = load i32, i32* %533, align 8, !dbg !742, !psr.id !793
  %535 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !742, !psr.id !794
  %536 = load i32, i32* %535, align 4, !dbg !742, !psr.id !795
  %537 = xor i32 %536, %534, !dbg !742, !psr.id !796
  store i32 %537, i32* %535, align 4, !dbg !742, !psr.id !797
  %538 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !742, !psr.id !798
  %539 = load i32, i32* %538, align 4, !dbg !742, !psr.id !799
  %540 = shl i32 %539, 8, !dbg !742, !psr.id !800
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !742, !psr.id !801
  %542 = load i32, i32* %541, align 4, !dbg !742, !psr.id !802
  %543 = lshr i32 %542, 24, !dbg !742, !psr.id !803
  %544 = or i32 %540, %543, !dbg !742, !psr.id !804
  %545 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !742, !psr.id !805
  store i32 %544, i32* %545, align 4, !dbg !742, !psr.id !806
  %546 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !742, !psr.id !807
  %547 = load i32, i32* %546, align 4, !dbg !742, !psr.id !808
  %548 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !742, !psr.id !809
  %549 = load i32, i32* %548, align 16, !dbg !742, !psr.id !810
  %550 = add i32 %549, %547, !dbg !742, !psr.id !811
  store i32 %550, i32* %548, align 16, !dbg !742, !psr.id !812
  %551 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !742, !psr.id !813
  %552 = load i32, i32* %551, align 16, !dbg !742, !psr.id !814
  %553 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !742, !psr.id !815
  %554 = load i32, i32* %553, align 4, !dbg !742, !psr.id !816
  %555 = xor i32 %554, %552, !dbg !742, !psr.id !817
  store i32 %555, i32* %553, align 4, !dbg !742, !psr.id !818
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !742, !psr.id !819
  %557 = load i32, i32* %556, align 4, !dbg !742, !psr.id !820
  %558 = shl i32 %557, 7, !dbg !742, !psr.id !821
  %559 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !742, !psr.id !822
  %560 = load i32, i32* %559, align 4, !dbg !742, !psr.id !823
  %561 = lshr i32 %560, 25, !dbg !742, !psr.id !824
  %562 = or i32 %558, %561, !dbg !742, !psr.id !825
  %563 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !742, !psr.id !826
  store i32 %562, i32* %563, align 4, !dbg !742, !psr.id !827
  br label %564, !dbg !742, !psr.id !828

564:                                              ; preds = %491
  br label %565, !dbg !829, !psr.id !830

565:                                              ; preds = %564
  %566 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !831, !psr.id !833
  %567 = load i32, i32* %566, align 16, !dbg !831, !psr.id !834
  %568 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !831, !psr.id !835
  %569 = load i32, i32* %568, align 4, !dbg !831, !psr.id !836
  %570 = add i32 %569, %567, !dbg !831, !psr.id !837
  store i32 %570, i32* %568, align 4, !dbg !831, !psr.id !838
  %571 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !831, !psr.id !839
  %572 = load i32, i32* %571, align 4, !dbg !831, !psr.id !840
  %573 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !831, !psr.id !841
  %574 = load i32, i32* %573, align 8, !dbg !831, !psr.id !842
  %575 = xor i32 %574, %572, !dbg !831, !psr.id !843
  store i32 %575, i32* %573, align 8, !dbg !831, !psr.id !844
  %576 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !831, !psr.id !845
  %577 = load i32, i32* %576, align 8, !dbg !831, !psr.id !846
  %578 = shl i32 %577, 16, !dbg !831, !psr.id !847
  %579 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !831, !psr.id !848
  %580 = load i32, i32* %579, align 8, !dbg !831, !psr.id !849
  %581 = lshr i32 %580, 16, !dbg !831, !psr.id !850
  %582 = or i32 %578, %581, !dbg !831, !psr.id !851
  %583 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !831, !psr.id !852
  store i32 %582, i32* %583, align 8, !dbg !831, !psr.id !853
  %584 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !831, !psr.id !854
  %585 = load i32, i32* %584, align 8, !dbg !831, !psr.id !855
  %586 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !831, !psr.id !856
  %587 = load i32, i32* %586, align 4, !dbg !831, !psr.id !857
  %588 = add i32 %587, %585, !dbg !831, !psr.id !858
  store i32 %588, i32* %586, align 4, !dbg !831, !psr.id !859
  %589 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !831, !psr.id !860
  %590 = load i32, i32* %589, align 4, !dbg !831, !psr.id !861
  %591 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !831, !psr.id !862
  %592 = load i32, i32* %591, align 16, !dbg !831, !psr.id !863
  %593 = xor i32 %592, %590, !dbg !831, !psr.id !864
  store i32 %593, i32* %591, align 16, !dbg !831, !psr.id !865
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !831, !psr.id !866
  %595 = load i32, i32* %594, align 16, !dbg !831, !psr.id !867
  %596 = shl i32 %595, 12, !dbg !831, !psr.id !868
  %597 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !831, !psr.id !869
  %598 = load i32, i32* %597, align 16, !dbg !831, !psr.id !870
  %599 = lshr i32 %598, 20, !dbg !831, !psr.id !871
  %600 = or i32 %596, %599, !dbg !831, !psr.id !872
  %601 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !831, !psr.id !873
  store i32 %600, i32* %601, align 16, !dbg !831, !psr.id !874
  %602 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !831, !psr.id !875
  %603 = load i32, i32* %602, align 16, !dbg !831, !psr.id !876
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !831, !psr.id !877
  %605 = load i32, i32* %604, align 4, !dbg !831, !psr.id !878
  %606 = add i32 %605, %603, !dbg !831, !psr.id !879
  store i32 %606, i32* %604, align 4, !dbg !831, !psr.id !880
  %607 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !831, !psr.id !881
  %608 = load i32, i32* %607, align 4, !dbg !831, !psr.id !882
  %609 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !831, !psr.id !883
  %610 = load i32, i32* %609, align 8, !dbg !831, !psr.id !884
  %611 = xor i32 %610, %608, !dbg !831, !psr.id !885
  store i32 %611, i32* %609, align 8, !dbg !831, !psr.id !886
  %612 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !831, !psr.id !887
  %613 = load i32, i32* %612, align 8, !dbg !831, !psr.id !888
  %614 = shl i32 %613, 8, !dbg !831, !psr.id !889
  %615 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !831, !psr.id !890
  %616 = load i32, i32* %615, align 8, !dbg !831, !psr.id !891
  %617 = lshr i32 %616, 24, !dbg !831, !psr.id !892
  %618 = or i32 %614, %617, !dbg !831, !psr.id !893
  %619 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !831, !psr.id !894
  store i32 %618, i32* %619, align 8, !dbg !831, !psr.id !895
  %620 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !831, !psr.id !896
  %621 = load i32, i32* %620, align 8, !dbg !831, !psr.id !897
  %622 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !831, !psr.id !898
  %623 = load i32, i32* %622, align 4, !dbg !831, !psr.id !899
  %624 = add i32 %623, %621, !dbg !831, !psr.id !900
  store i32 %624, i32* %622, align 4, !dbg !831, !psr.id !901
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !831, !psr.id !902
  %626 = load i32, i32* %625, align 4, !dbg !831, !psr.id !903
  %627 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !831, !psr.id !904
  %628 = load i32, i32* %627, align 16, !dbg !831, !psr.id !905
  %629 = xor i32 %628, %626, !dbg !831, !psr.id !906
  store i32 %629, i32* %627, align 16, !dbg !831, !psr.id !907
  %630 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !831, !psr.id !908
  %631 = load i32, i32* %630, align 16, !dbg !831, !psr.id !909
  %632 = shl i32 %631, 7, !dbg !831, !psr.id !910
  %633 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !831, !psr.id !911
  %634 = load i32, i32* %633, align 16, !dbg !831, !psr.id !912
  %635 = lshr i32 %634, 25, !dbg !831, !psr.id !913
  %636 = or i32 %632, %635, !dbg !831, !psr.id !914
  %637 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !831, !psr.id !915
  store i32 %636, i32* %637, align 16, !dbg !831, !psr.id !916
  br label %638, !dbg !831, !psr.id !917

638:                                              ; preds = %565
  br label %639, !dbg !918, !psr.id !919

639:                                              ; preds = %638
  %640 = add nsw i32 %.0, 1, !dbg !920, !psr.id !921
  call void @llvm.dbg.value(metadata i32 %640, metadata !190, metadata !DIExpression()), !dbg !192, !psr.id !922
  br label %44, !dbg !923, !llvm.loop !924, !psr.id !926

641:                                              ; preds = %44
  call void @llvm.dbg.value(metadata i64 0, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !927
  br label %642, !dbg !928, !psr.id !930

642:                                              ; preds = %652, %641
  %.2 = phi i64 [ 0, %641 ], [ %653, %652 ], !dbg !931, !psr.id !932
  call void @llvm.dbg.value(metadata i64 %.2, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !933
  %643 = icmp ult i64 %.2, 4, !dbg !934, !psr.id !936
  br i1 %643, label %644, label %654, !dbg !937, !psr.id !938

644:                                              ; preds = %642
  %645 = shl i64 %.2, 2, !dbg !939, !psr.id !941
  %646 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %645, !dbg !942, !psr.id !943
  %647 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.2, !dbg !944, !psr.id !945
  %648 = load i32, i32* %647, align 4, !dbg !944, !psr.id !946
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 %.2, !dbg !947, !psr.id !948
  %650 = load i32, i32* %649, align 4, !dbg !947, !psr.id !949
  %651 = add i32 %648, %650, !dbg !950, !psr.id !951
  call void @br_enc32le(i8* %646, i32 %651), !dbg !952, !psr.id !953
  br label %652, !dbg !954, !psr.id !955

652:                                              ; preds = %644
  %653 = add i64 %.2, 1, !dbg !956, !psr.id !957
  call void @llvm.dbg.value(metadata i64 %653, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !958
  br label %642, !dbg !959, !llvm.loop !960, !psr.id !962

654:                                              ; preds = %642
  call void @llvm.dbg.value(metadata i64 4, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !963
  br label %655, !dbg !964, !psr.id !966

655:                                              ; preds = %666, %654
  %.3 = phi i64 [ 4, %654 ], [ %667, %666 ], !dbg !967, !psr.id !968
  call void @llvm.dbg.value(metadata i64 %.3, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !969
  %656 = icmp ult i64 %.3, 12, !dbg !970, !psr.id !972
  br i1 %656, label %657, label %668, !dbg !973, !psr.id !974

657:                                              ; preds = %655
  %658 = shl i64 %.3, 2, !dbg !975, !psr.id !977
  %659 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %658, !dbg !978, !psr.id !979
  %660 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.3, !dbg !980, !psr.id !981
  %661 = load i32, i32* %660, align 4, !dbg !980, !psr.id !982
  %662 = sub i64 %.3, 4, !dbg !983, !psr.id !984
  %663 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %662, !dbg !985, !psr.id !986
  %664 = load i32, i32* %663, align 4, !dbg !985, !psr.id !987, !ValueTainted !96
  %665 = add i32 %661, %664, !dbg !988, !psr.id !989, !ValueTainted !96
  call void @br_enc32le(i8* %659, i32 %665), !dbg !990, !psr.id !991
  br label %666, !dbg !992, !psr.id !993

666:                                              ; preds = %657
  %667 = add i64 %.3, 1, !dbg !994, !psr.id !995
  call void @llvm.dbg.value(metadata i64 %667, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !996
  br label %655, !dbg !997, !llvm.loop !998, !psr.id !1000

668:                                              ; preds = %655
  %669 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 48, !dbg !1001, !psr.id !1002
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !1003, !psr.id !1004
  %671 = load i32, i32* %670, align 16, !dbg !1003, !psr.id !1005
  %672 = add i32 %671, %.02, !dbg !1006, !psr.id !1007
  call void @br_enc32le(i8* %669, i32 %672), !dbg !1008, !psr.id !1009
  call void @llvm.dbg.value(metadata i64 13, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !1010
  br label %673, !dbg !1011, !psr.id !1013

673:                                              ; preds = %684, %668
  %.4 = phi i64 [ 13, %668 ], [ %685, %684 ], !dbg !1014, !psr.id !1015
  call void @llvm.dbg.value(metadata i64 %.4, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !1016
  %674 = icmp ult i64 %.4, 16, !dbg !1017, !psr.id !1019
  br i1 %674, label %675, label %686, !dbg !1020, !psr.id !1021

675:                                              ; preds = %673
  %676 = shl i64 %.4, 2, !dbg !1022, !psr.id !1024
  %677 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %676, !dbg !1025, !psr.id !1026
  %678 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.4, !dbg !1027, !psr.id !1028
  %679 = load i32, i32* %678, align 4, !dbg !1027, !psr.id !1029
  %680 = sub i64 %.4, 13, !dbg !1030, !psr.id !1031
  %681 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %680, !dbg !1032, !psr.id !1033
  %682 = load i32, i32* %681, align 4, !dbg !1032, !psr.id !1034
  %683 = add i32 %679, %682, !dbg !1035, !psr.id !1036
  call void @br_enc32le(i8* %677, i32 %683), !dbg !1037, !psr.id !1038
  br label %684, !dbg !1039, !psr.id !1040

684:                                              ; preds = %675
  %685 = add i64 %.4, 1, !dbg !1041, !psr.id !1042
  call void @llvm.dbg.value(metadata i64 %685, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !1043
  br label %673, !dbg !1044, !llvm.loop !1045, !psr.id !1047

686:                                              ; preds = %673
  %687 = icmp ult i64 %.04, 64, !dbg !1048, !psr.id !1049
  br i1 %687, label %688, label %689, !dbg !1050, !psr.id !1051

688:                                              ; preds = %686
  br label %690, !dbg !1050, !psr.id !1052

689:                                              ; preds = %686
  br label %690, !dbg !1050, !psr.id !1053

690:                                              ; preds = %689, %688
  %691 = phi i64 [ %.04, %688 ], [ 64, %689 ], !dbg !1050, !psr.id !1054
  call void @llvm.dbg.value(metadata i64 %691, metadata !1055, metadata !DIExpression()), !dbg !192, !psr.id !1056
  call void @llvm.dbg.value(metadata i64 0, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !1057
  br label %692, !dbg !1058, !psr.id !1060

692:                                              ; preds = %703, %690
  %.5 = phi i64 [ 0, %690 ], [ %704, %703 ], !dbg !1061, !psr.id !1062
  call void @llvm.dbg.value(metadata i64 %.5, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !1063
  %693 = icmp ult i64 %.5, %691, !dbg !1064, !psr.id !1066
  br i1 %693, label %694, label %705, !dbg !1067, !psr.id !1068

694:                                              ; preds = %692
  %695 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %.5, !dbg !1069, !psr.id !1071
  %696 = load i8, i8* %695, align 1, !dbg !1069, !psr.id !1072, !ValueTainted !96
  %697 = zext i8 %696 to i32, !dbg !1069, !psr.id !1073, !ValueTainted !96
  %698 = getelementptr inbounds i8, i8* %.03, i64 %.5, !dbg !1074, !psr.id !1075, !PointTainted !93
  %699 = load i8, i8* %698, align 1, !dbg !1076, !psr.id !1077, !ValueTainted !96
  %700 = zext i8 %699 to i32, !dbg !1076, !psr.id !1078, !ValueTainted !96
  %701 = xor i32 %700, %697, !dbg !1076, !psr.id !1079, !ValueTainted !96
  %702 = trunc i32 %701 to i8, !dbg !1076, !psr.id !1080, !ValueTainted !96
  store i8 %702, i8* %698, align 1, !dbg !1076, !psr.id !1081
  br label %703, !dbg !1082, !psr.id !1083

703:                                              ; preds = %694
  %704 = add i64 %.5, 1, !dbg !1084, !psr.id !1085
  call void @llvm.dbg.value(metadata i64 %704, metadata !75, metadata !DIExpression()), !dbg !50, !psr.id !1086
  br label %692, !dbg !1087, !llvm.loop !1088, !psr.id !1090

705:                                              ; preds = %692
  %706 = getelementptr inbounds i8, i8* %.03, i64 %691, !dbg !1091, !psr.id !1092
  call void @llvm.dbg.value(metadata i8* %706, metadata !72, metadata !DIExpression()), !dbg !50, !psr.id !1093
  %707 = sub i64 %.04, %691, !dbg !1094, !psr.id !1095
  call void @llvm.dbg.value(metadata i64 %707, metadata !58, metadata !DIExpression()), !dbg !50, !psr.id !1096
  %708 = add i32 %.02, 1, !dbg !1097, !psr.id !1098
  call void @llvm.dbg.value(metadata i32 %708, metadata !54, metadata !DIExpression()), !dbg !50, !psr.id !1099
  br label %30, !dbg !143, !llvm.loop !1100, !psr.id !1102

709:                                              ; preds = %30
  ret i32 %.02, !dbg !1103, !psr.id !1104
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !1105 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1108, metadata !DIExpression()), !dbg !1109, !psr.id !1110
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1111, !psr.id !1112, !PointTainted !93
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !1113, !psr.id !1114, !PointTainted !93
  %4 = load i32, i32* %3, align 4, !dbg !1113, !psr.id !1115, !ValueTainted !96
  ret i32 %4, !dbg !1116, !psr.id !1117
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* %0, i32 %1) #0 !dbg !1118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1121, metadata !DIExpression()), !dbg !1122, !psr.id !1123
  call void @llvm.dbg.value(metadata i32 %1, metadata !1124, metadata !DIExpression()), !dbg !1122, !psr.id !1125
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1126, !psr.id !1127
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !1128, !psr.id !1129, !PointTainted !93
  store i32 %1, i32* %4, align 4, !dbg !1130, !psr.id !1131
  ret void, !dbg !1132, !psr.id !1133
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 !dbg !1134 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1137, metadata !DIExpression()), !dbg !1138, !psr.id !1139
  call void @llvm.dbg.value(metadata i8* %1, metadata !1140, metadata !DIExpression()), !dbg !1138, !psr.id !1141
  call void @llvm.dbg.value(metadata i32 %2, metadata !1142, metadata !DIExpression()), !dbg !1138, !psr.id !1143
  call void @llvm.dbg.value(metadata i8* %3, metadata !1144, metadata !DIExpression()), !dbg !1138, !psr.id !1145
  call void @llvm.dbg.value(metadata i64 %4, metadata !1146, metadata !DIExpression()), !dbg !1138, !psr.id !1147
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1148, !psr.id !1149
  call void @public_in(%struct.smack_value* %6), !dbg !1150, !psr.id !1151
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1152, !psr.id !1153
  call void @public_in(%struct.smack_value* %7), !dbg !1154, !psr.id !1155
  %8 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %2), !dbg !1156, !psr.id !1157
  call void @public_in(%struct.smack_value* %8), !dbg !1158, !psr.id !1159
  %9 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !1160, !psr.id !1161
  call void @public_in(%struct.smack_value* %9), !dbg !1162, !psr.id !1163
  %10 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %4), !dbg !1164, !psr.id !1165
  call void @public_in(%struct.smack_value* %10), !dbg !1166, !psr.id !1167
  %11 = call %struct.smack_value* @__SMACK_values(i8* %3, i32 32), !dbg !1168, !psr.id !1169
  call void @public_in(%struct.smack_value* %11), !dbg !1170, !psr.id !1171
  %12 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !1172, !psr.id !1173
  call void @public_in(%struct.smack_value* %12), !dbg !1174, !psr.id !1175
  %13 = call i32 @br_chacha20_ct_run(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4), !dbg !1176, !psr.id !1177
  ret void, !dbg !1178, !psr.id !1179
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #3

declare dso_local void @public_in(%struct.smack_value*) #3

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !1180 {
  %1 = call i8* (...) @getvoid1(), !dbg !1183, !psr.id !1184
  call void @llvm.dbg.value(metadata i8* %1, metadata !1185, metadata !DIExpression()), !dbg !1186, !psr.id !1187
  %2 = call i8* (...) @getvoid2(), !dbg !1188, !psr.id !1189
  call void @llvm.dbg.value(metadata i8* %2, metadata !1190, metadata !DIExpression()), !dbg !1186, !psr.id !1191
  call void @llvm.dbg.value(metadata i32 32, metadata !1192, metadata !DIExpression()), !dbg !1186, !psr.id !1196
  %3 = call i8* (...) @getvoid5(), !dbg !1197, !psr.id !1198
  call void @llvm.dbg.value(metadata i8* %3, metadata !1199, metadata !DIExpression()), !dbg !1186, !psr.id !1200
  %4 = call i64 (...) @getsize_t(), !dbg !1201, !psr.id !1202
  call void @llvm.dbg.value(metadata i64 %4, metadata !1203, metadata !DIExpression()), !dbg !1186, !psr.id !1204
  %5 = call i32 @br_chacha20_ct_run(i8* %1, i8* %2, i32 32, i8* %3, i64 %4), !dbg !1205, !psr.id !1206
  ret void, !dbg !1207, !psr.id !1208
}

declare dso_local i8* @getvoid1(...) #3

declare dso_local i8* @getvoid2(...) #3

declare dso_local i8* @getvoid5(...) #3

declare dso_local i64 @getsize_t(...) #3

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
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!17, !39}
!llvm.ident = !{!41, !41}
!llvm.module.flags = !{!42, !43, !44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 36, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_ct_run", scope: !3, file: !3, line: 29, type: !4, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_ct.c", directory: "/home/luwei/bech-back/BearSSL/ChaCha20_ct")
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
!26 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/ChaCha20_ct")
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
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "run.c", directory: "/home/luwei/bech-back/BearSSL/ChaCha20_ct")
!41 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!42 = !{i32 7, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{!"1"}
!46 = !{!"2"}
!47 = !{!"3"}
!48 = !{!"4"}
!49 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 29, type: !11)
!50 = !DILocation(line: 0, scope: !2)
!51 = !{!"5"}
!52 = !DILocalVariable(name: "iv", arg: 2, scope: !2, file: !3, line: 30, type: !11)
!53 = !{!"6"}
!54 = !DILocalVariable(name: "cc", arg: 3, scope: !2, file: !3, line: 30, type: !6)
!55 = !{!"7"}
!56 = !DILocalVariable(name: "data", arg: 4, scope: !2, file: !3, line: 30, type: !13)
!57 = !{!"8"}
!58 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 30, type: !14)
!59 = !{!"9"}
!60 = !DILocalVariable(name: "kw", scope: !2, file: !3, line: 33, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 8)
!64 = !DILocation(line: 33, column: 11, scope: !2)
!65 = !{!"10"}
!66 = !DILocalVariable(name: "ivw", scope: !2, file: !3, line: 33, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DILocation(line: 33, column: 18, scope: !2)
!71 = !{!"11"}
!72 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 32, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!74 = !{!"12"}
!75 = !DILocalVariable(name: "u", scope: !2, file: !3, line: 34, type: !14)
!76 = !{!"13"}
!77 = !DILocation(line: 41, column: 7, scope: !78)
!78 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!79 = !{!"14"}
!80 = !DILocation(line: 0, scope: !78)
!81 = !{!"15"}
!82 = !{!"16"}
!83 = !DILocation(line: 41, column: 16, scope: !84)
!84 = distinct !DILexicalBlock(scope: !78, file: !3, line: 41, column: 2)
!85 = !{!"17"}
!86 = !DILocation(line: 41, column: 2, scope: !78)
!87 = !{!"18"}
!88 = !DILocation(line: 42, column: 54, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !3, line: 41, column: 27)
!90 = !{!"19"}
!91 = !DILocation(line: 42, column: 49, scope: !89)
!92 = !{!"20"}
!93 = !{!"PointTainted"}
!94 = !DILocation(line: 42, column: 11, scope: !89)
!95 = !{!"21"}
!96 = !{!"ValueTainted"}
!97 = !DILocation(line: 42, column: 3, scope: !89)
!98 = !{!"22"}
!99 = !DILocation(line: 42, column: 9, scope: !89)
!100 = !{!"23"}
!101 = !DILocation(line: 43, column: 2, scope: !89)
!102 = !{!"24"}
!103 = !DILocation(line: 41, column: 23, scope: !84)
!104 = !{!"25"}
!105 = !{!"26"}
!106 = !DILocation(line: 41, column: 2, scope: !84)
!107 = distinct !{!107, !86, !108, !109}
!108 = !DILocation(line: 43, column: 2, scope: !78)
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"27"}
!111 = !{!"28"}
!112 = !DILocation(line: 44, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 2)
!114 = !{!"29"}
!115 = !DILocation(line: 0, scope: !113)
!116 = !{!"30"}
!117 = !{!"31"}
!118 = !DILocation(line: 44, column: 16, scope: !119)
!119 = distinct !DILexicalBlock(scope: !113, file: !3, line: 44, column: 2)
!120 = !{!"32"}
!121 = !DILocation(line: 44, column: 2, scope: !113)
!122 = !{!"33"}
!123 = !DILocation(line: 45, column: 54, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !3, line: 44, column: 27)
!125 = !{!"34"}
!126 = !DILocation(line: 45, column: 49, scope: !124)
!127 = !{!"35"}
!128 = !DILocation(line: 45, column: 12, scope: !124)
!129 = !{!"36"}
!130 = !DILocation(line: 45, column: 3, scope: !124)
!131 = !{!"37"}
!132 = !DILocation(line: 45, column: 10, scope: !124)
!133 = !{!"38"}
!134 = !DILocation(line: 46, column: 2, scope: !124)
!135 = !{!"39"}
!136 = !DILocation(line: 44, column: 23, scope: !119)
!137 = !{!"40"}
!138 = !{!"41"}
!139 = !DILocation(line: 44, column: 2, scope: !119)
!140 = distinct !{!140, !121, !141, !109}
!141 = !DILocation(line: 46, column: 2, scope: !113)
!142 = !{!"42"}
!143 = !DILocation(line: 47, column: 2, scope: !2)
!144 = !{!"43"}
!145 = !{!"44"}
!146 = !{!"45"}
!147 = !{!"46"}
!148 = !{!"47"}
!149 = !{!"48"}
!150 = !{!"49"}
!151 = !DILocation(line: 47, column: 13, scope: !2)
!152 = !{!"50"}
!153 = !{!"51"}
!154 = !DILocalVariable(name: "state", scope: !155, file: !3, line: 48, type: !156)
!155 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 18)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 16)
!159 = !DILocation(line: 48, column: 12, scope: !155)
!160 = !{!"52"}
!161 = !DILocalVariable(name: "tmp", scope: !155, file: !3, line: 51, type: !162)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 64)
!165 = !DILocation(line: 51, column: 17, scope: !155)
!166 = !{!"53"}
!167 = !DILocation(line: 53, column: 11, scope: !155)
!168 = !{!"54"}
!169 = !DILocation(line: 53, column: 3, scope: !155)
!170 = !{!"55"}
!171 = !{!"56"}
!172 = !DILocation(line: 54, column: 11, scope: !155)
!173 = !{!"57"}
!174 = !DILocation(line: 54, column: 3, scope: !155)
!175 = !{!"58"}
!176 = !{!"59"}
!177 = !{!"60"}
!178 = !{!"61"}
!179 = !DILocation(line: 55, column: 3, scope: !155)
!180 = !{!"62"}
!181 = !DILocation(line: 55, column: 13, scope: !155)
!182 = !{!"63"}
!183 = !DILocation(line: 56, column: 11, scope: !155)
!184 = !{!"64"}
!185 = !DILocation(line: 56, column: 3, scope: !155)
!186 = !{!"65"}
!187 = !{!"66"}
!188 = !{!"67"}
!189 = !{!"68"}
!190 = !DILocalVariable(name: "i", scope: !155, file: !3, line: 49, type: !191)
!191 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!192 = !DILocation(line: 0, scope: !155)
!193 = !{!"69"}
!194 = !DILocation(line: 57, column: 8, scope: !195)
!195 = distinct !DILexicalBlock(scope: !155, file: !3, line: 57, column: 3)
!196 = !{!"70"}
!197 = !DILocation(line: 0, scope: !195)
!198 = !{!"71"}
!199 = !{!"72"}
!200 = !DILocation(line: 57, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !195, file: !3, line: 57, column: 3)
!202 = !{!"73"}
!203 = !DILocation(line: 57, column: 3, scope: !195)
!204 = !{!"74"}
!205 = !DILocation(line: 74, column: 4, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !3, line: 57, column: 29)
!207 = !{!"75"}
!208 = !DILocation(line: 74, column: 4, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !3, line: 74, column: 4)
!210 = !{!"76"}
!211 = !{!"77"}
!212 = !{!"78"}
!213 = !{!"79"}
!214 = !{!"80"}
!215 = !{!"81"}
!216 = !{!"82"}
!217 = !{!"83"}
!218 = !{!"84"}
!219 = !{!"85"}
!220 = !{!"86"}
!221 = !{!"87"}
!222 = !{!"88"}
!223 = !{!"89"}
!224 = !{!"90"}
!225 = !{!"91"}
!226 = !{!"92"}
!227 = !{!"93"}
!228 = !{!"94"}
!229 = !{!"95"}
!230 = !{!"96"}
!231 = !{!"97"}
!232 = !{!"98"}
!233 = !{!"99"}
!234 = !{!"100"}
!235 = !{!"101"}
!236 = !{!"102"}
!237 = !{!"103"}
!238 = !{!"104"}
!239 = !{!"105"}
!240 = !{!"106"}
!241 = !{!"107"}
!242 = !{!"108"}
!243 = !{!"109"}
!244 = !{!"110"}
!245 = !{!"111"}
!246 = !{!"112"}
!247 = !{!"113"}
!248 = !{!"114"}
!249 = !{!"115"}
!250 = !{!"116"}
!251 = !{!"117"}
!252 = !{!"118"}
!253 = !{!"119"}
!254 = !{!"120"}
!255 = !{!"121"}
!256 = !{!"122"}
!257 = !{!"123"}
!258 = !{!"124"}
!259 = !{!"125"}
!260 = !{!"126"}
!261 = !{!"127"}
!262 = !{!"128"}
!263 = !{!"129"}
!264 = !{!"130"}
!265 = !{!"131"}
!266 = !{!"132"}
!267 = !{!"133"}
!268 = !{!"134"}
!269 = !{!"135"}
!270 = !{!"136"}
!271 = !{!"137"}
!272 = !{!"138"}
!273 = !{!"139"}
!274 = !{!"140"}
!275 = !{!"141"}
!276 = !{!"142"}
!277 = !{!"143"}
!278 = !{!"144"}
!279 = !{!"145"}
!280 = !{!"146"}
!281 = !{!"147"}
!282 = !{!"148"}
!283 = !{!"149"}
!284 = !{!"150"}
!285 = !{!"151"}
!286 = !{!"152"}
!287 = !{!"153"}
!288 = !{!"154"}
!289 = !{!"155"}
!290 = !{!"156"}
!291 = !{!"157"}
!292 = !{!"158"}
!293 = !{!"159"}
!294 = !{!"160"}
!295 = !DILocation(line: 75, column: 4, scope: !206)
!296 = !{!"161"}
!297 = !DILocation(line: 75, column: 4, scope: !298)
!298 = distinct !DILexicalBlock(scope: !206, file: !3, line: 75, column: 4)
!299 = !{!"162"}
!300 = !{!"163"}
!301 = !{!"164"}
!302 = !{!"165"}
!303 = !{!"166"}
!304 = !{!"167"}
!305 = !{!"168"}
!306 = !{!"169"}
!307 = !{!"170"}
!308 = !{!"171"}
!309 = !{!"172"}
!310 = !{!"173"}
!311 = !{!"174"}
!312 = !{!"175"}
!313 = !{!"176"}
!314 = !{!"177"}
!315 = !{!"178"}
!316 = !{!"179"}
!317 = !{!"180"}
!318 = !{!"181"}
!319 = !{!"182"}
!320 = !{!"183"}
!321 = !{!"184"}
!322 = !{!"185"}
!323 = !{!"186"}
!324 = !{!"187"}
!325 = !{!"188"}
!326 = !{!"189"}
!327 = !{!"190"}
!328 = !{!"191"}
!329 = !{!"192"}
!330 = !{!"193"}
!331 = !{!"194"}
!332 = !{!"195"}
!333 = !{!"196"}
!334 = !{!"197"}
!335 = !{!"198"}
!336 = !{!"199"}
!337 = !{!"200"}
!338 = !{!"201"}
!339 = !{!"202"}
!340 = !{!"203"}
!341 = !{!"204"}
!342 = !{!"205"}
!343 = !{!"206"}
!344 = !{!"207"}
!345 = !{!"208"}
!346 = !{!"209"}
!347 = !{!"210"}
!348 = !{!"211"}
!349 = !{!"212"}
!350 = !{!"213"}
!351 = !{!"214"}
!352 = !{!"215"}
!353 = !{!"216"}
!354 = !{!"217"}
!355 = !{!"218"}
!356 = !{!"219"}
!357 = !{!"220"}
!358 = !{!"221"}
!359 = !{!"222"}
!360 = !{!"223"}
!361 = !{!"224"}
!362 = !{!"225"}
!363 = !{!"226"}
!364 = !{!"227"}
!365 = !{!"228"}
!366 = !{!"229"}
!367 = !{!"230"}
!368 = !{!"231"}
!369 = !{!"232"}
!370 = !{!"233"}
!371 = !{!"234"}
!372 = !{!"235"}
!373 = !{!"236"}
!374 = !{!"237"}
!375 = !{!"238"}
!376 = !{!"239"}
!377 = !{!"240"}
!378 = !{!"241"}
!379 = !{!"242"}
!380 = !{!"243"}
!381 = !{!"244"}
!382 = !{!"245"}
!383 = !{!"246"}
!384 = !DILocation(line: 76, column: 4, scope: !206)
!385 = !{!"247"}
!386 = !DILocation(line: 76, column: 4, scope: !387)
!387 = distinct !DILexicalBlock(scope: !206, file: !3, line: 76, column: 4)
!388 = !{!"248"}
!389 = !{!"249"}
!390 = !{!"250"}
!391 = !{!"251"}
!392 = !{!"252"}
!393 = !{!"253"}
!394 = !{!"254"}
!395 = !{!"255"}
!396 = !{!"256"}
!397 = !{!"257"}
!398 = !{!"258"}
!399 = !{!"259"}
!400 = !{!"260"}
!401 = !{!"261"}
!402 = !{!"262"}
!403 = !{!"263"}
!404 = !{!"264"}
!405 = !{!"265"}
!406 = !{!"266"}
!407 = !{!"267"}
!408 = !{!"268"}
!409 = !{!"269"}
!410 = !{!"270"}
!411 = !{!"271"}
!412 = !{!"272"}
!413 = !{!"273"}
!414 = !{!"274"}
!415 = !{!"275"}
!416 = !{!"276"}
!417 = !{!"277"}
!418 = !{!"278"}
!419 = !{!"279"}
!420 = !{!"280"}
!421 = !{!"281"}
!422 = !{!"282"}
!423 = !{!"283"}
!424 = !{!"284"}
!425 = !{!"285"}
!426 = !{!"286"}
!427 = !{!"287"}
!428 = !{!"288"}
!429 = !{!"289"}
!430 = !{!"290"}
!431 = !{!"291"}
!432 = !{!"292"}
!433 = !{!"293"}
!434 = !{!"294"}
!435 = !{!"295"}
!436 = !{!"296"}
!437 = !{!"297"}
!438 = !{!"298"}
!439 = !{!"299"}
!440 = !{!"300"}
!441 = !{!"301"}
!442 = !{!"302"}
!443 = !{!"303"}
!444 = !{!"304"}
!445 = !{!"305"}
!446 = !{!"306"}
!447 = !{!"307"}
!448 = !{!"308"}
!449 = !{!"309"}
!450 = !{!"310"}
!451 = !{!"311"}
!452 = !{!"312"}
!453 = !{!"313"}
!454 = !{!"314"}
!455 = !{!"315"}
!456 = !{!"316"}
!457 = !{!"317"}
!458 = !{!"318"}
!459 = !{!"319"}
!460 = !{!"320"}
!461 = !{!"321"}
!462 = !{!"322"}
!463 = !{!"323"}
!464 = !{!"324"}
!465 = !{!"325"}
!466 = !{!"326"}
!467 = !{!"327"}
!468 = !{!"328"}
!469 = !{!"329"}
!470 = !{!"330"}
!471 = !{!"331"}
!472 = !{!"332"}
!473 = !DILocation(line: 77, column: 4, scope: !206)
!474 = !{!"333"}
!475 = !DILocation(line: 77, column: 4, scope: !476)
!476 = distinct !DILexicalBlock(scope: !206, file: !3, line: 77, column: 4)
!477 = !{!"334"}
!478 = !{!"335"}
!479 = !{!"336"}
!480 = !{!"337"}
!481 = !{!"338"}
!482 = !{!"339"}
!483 = !{!"340"}
!484 = !{!"341"}
!485 = !{!"342"}
!486 = !{!"343"}
!487 = !{!"344"}
!488 = !{!"345"}
!489 = !{!"346"}
!490 = !{!"347"}
!491 = !{!"348"}
!492 = !{!"349"}
!493 = !{!"350"}
!494 = !{!"351"}
!495 = !{!"352"}
!496 = !{!"353"}
!497 = !{!"354"}
!498 = !{!"355"}
!499 = !{!"356"}
!500 = !{!"357"}
!501 = !{!"358"}
!502 = !{!"359"}
!503 = !{!"360"}
!504 = !{!"361"}
!505 = !{!"362"}
!506 = !{!"363"}
!507 = !{!"364"}
!508 = !{!"365"}
!509 = !{!"366"}
!510 = !{!"367"}
!511 = !{!"368"}
!512 = !{!"369"}
!513 = !{!"370"}
!514 = !{!"371"}
!515 = !{!"372"}
!516 = !{!"373"}
!517 = !{!"374"}
!518 = !{!"375"}
!519 = !{!"376"}
!520 = !{!"377"}
!521 = !{!"378"}
!522 = !{!"379"}
!523 = !{!"380"}
!524 = !{!"381"}
!525 = !{!"382"}
!526 = !{!"383"}
!527 = !{!"384"}
!528 = !{!"385"}
!529 = !{!"386"}
!530 = !{!"387"}
!531 = !{!"388"}
!532 = !{!"389"}
!533 = !{!"390"}
!534 = !{!"391"}
!535 = !{!"392"}
!536 = !{!"393"}
!537 = !{!"394"}
!538 = !{!"395"}
!539 = !{!"396"}
!540 = !{!"397"}
!541 = !{!"398"}
!542 = !{!"399"}
!543 = !{!"400"}
!544 = !{!"401"}
!545 = !{!"402"}
!546 = !{!"403"}
!547 = !{!"404"}
!548 = !{!"405"}
!549 = !{!"406"}
!550 = !{!"407"}
!551 = !{!"408"}
!552 = !{!"409"}
!553 = !{!"410"}
!554 = !{!"411"}
!555 = !{!"412"}
!556 = !{!"413"}
!557 = !{!"414"}
!558 = !{!"415"}
!559 = !{!"416"}
!560 = !{!"417"}
!561 = !{!"418"}
!562 = !DILocation(line: 78, column: 4, scope: !206)
!563 = !{!"419"}
!564 = !DILocation(line: 78, column: 4, scope: !565)
!565 = distinct !DILexicalBlock(scope: !206, file: !3, line: 78, column: 4)
!566 = !{!"420"}
!567 = !{!"421"}
!568 = !{!"422"}
!569 = !{!"423"}
!570 = !{!"424"}
!571 = !{!"425"}
!572 = !{!"426"}
!573 = !{!"427"}
!574 = !{!"428"}
!575 = !{!"429"}
!576 = !{!"430"}
!577 = !{!"431"}
!578 = !{!"432"}
!579 = !{!"433"}
!580 = !{!"434"}
!581 = !{!"435"}
!582 = !{!"436"}
!583 = !{!"437"}
!584 = !{!"438"}
!585 = !{!"439"}
!586 = !{!"440"}
!587 = !{!"441"}
!588 = !{!"442"}
!589 = !{!"443"}
!590 = !{!"444"}
!591 = !{!"445"}
!592 = !{!"446"}
!593 = !{!"447"}
!594 = !{!"448"}
!595 = !{!"449"}
!596 = !{!"450"}
!597 = !{!"451"}
!598 = !{!"452"}
!599 = !{!"453"}
!600 = !{!"454"}
!601 = !{!"455"}
!602 = !{!"456"}
!603 = !{!"457"}
!604 = !{!"458"}
!605 = !{!"459"}
!606 = !{!"460"}
!607 = !{!"461"}
!608 = !{!"462"}
!609 = !{!"463"}
!610 = !{!"464"}
!611 = !{!"465"}
!612 = !{!"466"}
!613 = !{!"467"}
!614 = !{!"468"}
!615 = !{!"469"}
!616 = !{!"470"}
!617 = !{!"471"}
!618 = !{!"472"}
!619 = !{!"473"}
!620 = !{!"474"}
!621 = !{!"475"}
!622 = !{!"476"}
!623 = !{!"477"}
!624 = !{!"478"}
!625 = !{!"479"}
!626 = !{!"480"}
!627 = !{!"481"}
!628 = !{!"482"}
!629 = !{!"483"}
!630 = !{!"484"}
!631 = !{!"485"}
!632 = !{!"486"}
!633 = !{!"487"}
!634 = !{!"488"}
!635 = !{!"489"}
!636 = !{!"490"}
!637 = !{!"491"}
!638 = !{!"492"}
!639 = !{!"493"}
!640 = !{!"494"}
!641 = !{!"495"}
!642 = !{!"496"}
!643 = !{!"497"}
!644 = !{!"498"}
!645 = !{!"499"}
!646 = !{!"500"}
!647 = !{!"501"}
!648 = !{!"502"}
!649 = !{!"503"}
!650 = !{!"504"}
!651 = !DILocation(line: 79, column: 4, scope: !206)
!652 = !{!"505"}
!653 = !DILocation(line: 79, column: 4, scope: !654)
!654 = distinct !DILexicalBlock(scope: !206, file: !3, line: 79, column: 4)
!655 = !{!"506"}
!656 = !{!"507"}
!657 = !{!"508"}
!658 = !{!"509"}
!659 = !{!"510"}
!660 = !{!"511"}
!661 = !{!"512"}
!662 = !{!"513"}
!663 = !{!"514"}
!664 = !{!"515"}
!665 = !{!"516"}
!666 = !{!"517"}
!667 = !{!"518"}
!668 = !{!"519"}
!669 = !{!"520"}
!670 = !{!"521"}
!671 = !{!"522"}
!672 = !{!"523"}
!673 = !{!"524"}
!674 = !{!"525"}
!675 = !{!"526"}
!676 = !{!"527"}
!677 = !{!"528"}
!678 = !{!"529"}
!679 = !{!"530"}
!680 = !{!"531"}
!681 = !{!"532"}
!682 = !{!"533"}
!683 = !{!"534"}
!684 = !{!"535"}
!685 = !{!"536"}
!686 = !{!"537"}
!687 = !{!"538"}
!688 = !{!"539"}
!689 = !{!"540"}
!690 = !{!"541"}
!691 = !{!"542"}
!692 = !{!"543"}
!693 = !{!"544"}
!694 = !{!"545"}
!695 = !{!"546"}
!696 = !{!"547"}
!697 = !{!"548"}
!698 = !{!"549"}
!699 = !{!"550"}
!700 = !{!"551"}
!701 = !{!"552"}
!702 = !{!"553"}
!703 = !{!"554"}
!704 = !{!"555"}
!705 = !{!"556"}
!706 = !{!"557"}
!707 = !{!"558"}
!708 = !{!"559"}
!709 = !{!"560"}
!710 = !{!"561"}
!711 = !{!"562"}
!712 = !{!"563"}
!713 = !{!"564"}
!714 = !{!"565"}
!715 = !{!"566"}
!716 = !{!"567"}
!717 = !{!"568"}
!718 = !{!"569"}
!719 = !{!"570"}
!720 = !{!"571"}
!721 = !{!"572"}
!722 = !{!"573"}
!723 = !{!"574"}
!724 = !{!"575"}
!725 = !{!"576"}
!726 = !{!"577"}
!727 = !{!"578"}
!728 = !{!"579"}
!729 = !{!"580"}
!730 = !{!"581"}
!731 = !{!"582"}
!732 = !{!"583"}
!733 = !{!"584"}
!734 = !{!"585"}
!735 = !{!"586"}
!736 = !{!"587"}
!737 = !{!"588"}
!738 = !{!"589"}
!739 = !{!"590"}
!740 = !DILocation(line: 80, column: 4, scope: !206)
!741 = !{!"591"}
!742 = !DILocation(line: 80, column: 4, scope: !743)
!743 = distinct !DILexicalBlock(scope: !206, file: !3, line: 80, column: 4)
!744 = !{!"592"}
!745 = !{!"593"}
!746 = !{!"594"}
!747 = !{!"595"}
!748 = !{!"596"}
!749 = !{!"597"}
!750 = !{!"598"}
!751 = !{!"599"}
!752 = !{!"600"}
!753 = !{!"601"}
!754 = !{!"602"}
!755 = !{!"603"}
!756 = !{!"604"}
!757 = !{!"605"}
!758 = !{!"606"}
!759 = !{!"607"}
!760 = !{!"608"}
!761 = !{!"609"}
!762 = !{!"610"}
!763 = !{!"611"}
!764 = !{!"612"}
!765 = !{!"613"}
!766 = !{!"614"}
!767 = !{!"615"}
!768 = !{!"616"}
!769 = !{!"617"}
!770 = !{!"618"}
!771 = !{!"619"}
!772 = !{!"620"}
!773 = !{!"621"}
!774 = !{!"622"}
!775 = !{!"623"}
!776 = !{!"624"}
!777 = !{!"625"}
!778 = !{!"626"}
!779 = !{!"627"}
!780 = !{!"628"}
!781 = !{!"629"}
!782 = !{!"630"}
!783 = !{!"631"}
!784 = !{!"632"}
!785 = !{!"633"}
!786 = !{!"634"}
!787 = !{!"635"}
!788 = !{!"636"}
!789 = !{!"637"}
!790 = !{!"638"}
!791 = !{!"639"}
!792 = !{!"640"}
!793 = !{!"641"}
!794 = !{!"642"}
!795 = !{!"643"}
!796 = !{!"644"}
!797 = !{!"645"}
!798 = !{!"646"}
!799 = !{!"647"}
!800 = !{!"648"}
!801 = !{!"649"}
!802 = !{!"650"}
!803 = !{!"651"}
!804 = !{!"652"}
!805 = !{!"653"}
!806 = !{!"654"}
!807 = !{!"655"}
!808 = !{!"656"}
!809 = !{!"657"}
!810 = !{!"658"}
!811 = !{!"659"}
!812 = !{!"660"}
!813 = !{!"661"}
!814 = !{!"662"}
!815 = !{!"663"}
!816 = !{!"664"}
!817 = !{!"665"}
!818 = !{!"666"}
!819 = !{!"667"}
!820 = !{!"668"}
!821 = !{!"669"}
!822 = !{!"670"}
!823 = !{!"671"}
!824 = !{!"672"}
!825 = !{!"673"}
!826 = !{!"674"}
!827 = !{!"675"}
!828 = !{!"676"}
!829 = !DILocation(line: 81, column: 4, scope: !206)
!830 = !{!"677"}
!831 = !DILocation(line: 81, column: 4, scope: !832)
!832 = distinct !DILexicalBlock(scope: !206, file: !3, line: 81, column: 4)
!833 = !{!"678"}
!834 = !{!"679"}
!835 = !{!"680"}
!836 = !{!"681"}
!837 = !{!"682"}
!838 = !{!"683"}
!839 = !{!"684"}
!840 = !{!"685"}
!841 = !{!"686"}
!842 = !{!"687"}
!843 = !{!"688"}
!844 = !{!"689"}
!845 = !{!"690"}
!846 = !{!"691"}
!847 = !{!"692"}
!848 = !{!"693"}
!849 = !{!"694"}
!850 = !{!"695"}
!851 = !{!"696"}
!852 = !{!"697"}
!853 = !{!"698"}
!854 = !{!"699"}
!855 = !{!"700"}
!856 = !{!"701"}
!857 = !{!"702"}
!858 = !{!"703"}
!859 = !{!"704"}
!860 = !{!"705"}
!861 = !{!"706"}
!862 = !{!"707"}
!863 = !{!"708"}
!864 = !{!"709"}
!865 = !{!"710"}
!866 = !{!"711"}
!867 = !{!"712"}
!868 = !{!"713"}
!869 = !{!"714"}
!870 = !{!"715"}
!871 = !{!"716"}
!872 = !{!"717"}
!873 = !{!"718"}
!874 = !{!"719"}
!875 = !{!"720"}
!876 = !{!"721"}
!877 = !{!"722"}
!878 = !{!"723"}
!879 = !{!"724"}
!880 = !{!"725"}
!881 = !{!"726"}
!882 = !{!"727"}
!883 = !{!"728"}
!884 = !{!"729"}
!885 = !{!"730"}
!886 = !{!"731"}
!887 = !{!"732"}
!888 = !{!"733"}
!889 = !{!"734"}
!890 = !{!"735"}
!891 = !{!"736"}
!892 = !{!"737"}
!893 = !{!"738"}
!894 = !{!"739"}
!895 = !{!"740"}
!896 = !{!"741"}
!897 = !{!"742"}
!898 = !{!"743"}
!899 = !{!"744"}
!900 = !{!"745"}
!901 = !{!"746"}
!902 = !{!"747"}
!903 = !{!"748"}
!904 = !{!"749"}
!905 = !{!"750"}
!906 = !{!"751"}
!907 = !{!"752"}
!908 = !{!"753"}
!909 = !{!"754"}
!910 = !{!"755"}
!911 = !{!"756"}
!912 = !{!"757"}
!913 = !{!"758"}
!914 = !{!"759"}
!915 = !{!"760"}
!916 = !{!"761"}
!917 = !{!"762"}
!918 = !DILocation(line: 85, column: 3, scope: !206)
!919 = !{!"763"}
!920 = !DILocation(line: 57, column: 25, scope: !201)
!921 = !{!"764"}
!922 = !{!"765"}
!923 = !DILocation(line: 57, column: 3, scope: !201)
!924 = distinct !{!924, !203, !925, !109}
!925 = !DILocation(line: 85, column: 3, scope: !195)
!926 = !{!"766"}
!927 = !{!"767"}
!928 = !DILocation(line: 86, column: 8, scope: !929)
!929 = distinct !DILexicalBlock(scope: !155, file: !3, line: 86, column: 3)
!930 = !{!"768"}
!931 = !DILocation(line: 0, scope: !929)
!932 = !{!"769"}
!933 = !{!"770"}
!934 = !DILocation(line: 86, column: 17, scope: !935)
!935 = distinct !DILexicalBlock(scope: !929, file: !3, line: 86, column: 3)
!936 = !{!"771"}
!937 = !DILocation(line: 86, column: 3, scope: !929)
!938 = !{!"772"}
!939 = !DILocation(line: 87, column: 22, scope: !940)
!940 = distinct !DILexicalBlock(scope: !935, file: !3, line: 86, column: 28)
!941 = !{!"773"}
!942 = !DILocation(line: 87, column: 16, scope: !940)
!943 = !{!"774"}
!944 = !DILocation(line: 87, column: 29, scope: !940)
!945 = !{!"775"}
!946 = !{!"776"}
!947 = !DILocation(line: 87, column: 40, scope: !940)
!948 = !{!"777"}
!949 = !{!"778"}
!950 = !DILocation(line: 87, column: 38, scope: !940)
!951 = !{!"779"}
!952 = !DILocation(line: 87, column: 4, scope: !940)
!953 = !{!"780"}
!954 = !DILocation(line: 88, column: 3, scope: !940)
!955 = !{!"781"}
!956 = !DILocation(line: 86, column: 24, scope: !935)
!957 = !{!"782"}
!958 = !{!"783"}
!959 = !DILocation(line: 86, column: 3, scope: !935)
!960 = distinct !{!960, !937, !961, !109}
!961 = !DILocation(line: 88, column: 3, scope: !929)
!962 = !{!"784"}
!963 = !{!"785"}
!964 = !DILocation(line: 89, column: 8, scope: !965)
!965 = distinct !DILexicalBlock(scope: !155, file: !3, line: 89, column: 3)
!966 = !{!"786"}
!967 = !DILocation(line: 0, scope: !965)
!968 = !{!"787"}
!969 = !{!"788"}
!970 = !DILocation(line: 89, column: 17, scope: !971)
!971 = distinct !DILexicalBlock(scope: !965, file: !3, line: 89, column: 3)
!972 = !{!"789"}
!973 = !DILocation(line: 89, column: 3, scope: !965)
!974 = !{!"790"}
!975 = !DILocation(line: 90, column: 22, scope: !976)
!976 = distinct !DILexicalBlock(scope: !971, file: !3, line: 89, column: 29)
!977 = !{!"791"}
!978 = !DILocation(line: 90, column: 16, scope: !976)
!979 = !{!"792"}
!980 = !DILocation(line: 90, column: 29, scope: !976)
!981 = !{!"793"}
!982 = !{!"794"}
!983 = !DILocation(line: 90, column: 45, scope: !976)
!984 = !{!"795"}
!985 = !DILocation(line: 90, column: 40, scope: !976)
!986 = !{!"796"}
!987 = !{!"797"}
!988 = !DILocation(line: 90, column: 38, scope: !976)
!989 = !{!"798"}
!990 = !DILocation(line: 90, column: 4, scope: !976)
!991 = !{!"799"}
!992 = !DILocation(line: 91, column: 3, scope: !976)
!993 = !{!"800"}
!994 = !DILocation(line: 89, column: 25, scope: !971)
!995 = !{!"801"}
!996 = !{!"802"}
!997 = !DILocation(line: 89, column: 3, scope: !971)
!998 = distinct !{!998, !973, !999, !109}
!999 = !DILocation(line: 91, column: 3, scope: !965)
!1000 = !{!"803"}
!1001 = !DILocation(line: 92, column: 15, scope: !155)
!1002 = !{!"804"}
!1003 = !DILocation(line: 92, column: 24, scope: !155)
!1004 = !{!"805"}
!1005 = !{!"806"}
!1006 = !DILocation(line: 92, column: 34, scope: !155)
!1007 = !{!"807"}
!1008 = !DILocation(line: 92, column: 3, scope: !155)
!1009 = !{!"808"}
!1010 = !{!"809"}
!1011 = !DILocation(line: 93, column: 8, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !155, file: !3, line: 93, column: 3)
!1013 = !{!"810"}
!1014 = !DILocation(line: 0, scope: !1012)
!1015 = !{!"811"}
!1016 = !{!"812"}
!1017 = !DILocation(line: 93, column: 18, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 93, column: 3)
!1019 = !{!"813"}
!1020 = !DILocation(line: 93, column: 3, scope: !1012)
!1021 = !{!"814"}
!1022 = !DILocation(line: 94, column: 22, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 93, column: 30)
!1024 = !{!"815"}
!1025 = !DILocation(line: 94, column: 16, scope: !1023)
!1026 = !{!"816"}
!1027 = !DILocation(line: 94, column: 29, scope: !1023)
!1028 = !{!"817"}
!1029 = !{!"818"}
!1030 = !DILocation(line: 94, column: 46, scope: !1023)
!1031 = !{!"819"}
!1032 = !DILocation(line: 94, column: 40, scope: !1023)
!1033 = !{!"820"}
!1034 = !{!"821"}
!1035 = !DILocation(line: 94, column: 38, scope: !1023)
!1036 = !{!"822"}
!1037 = !DILocation(line: 94, column: 4, scope: !1023)
!1038 = !{!"823"}
!1039 = !DILocation(line: 95, column: 3, scope: !1023)
!1040 = !{!"824"}
!1041 = !DILocation(line: 93, column: 26, scope: !1018)
!1042 = !{!"825"}
!1043 = !{!"826"}
!1044 = !DILocation(line: 93, column: 3, scope: !1018)
!1045 = distinct !{!1045, !1020, !1046, !109}
!1046 = !DILocation(line: 95, column: 3, scope: !1012)
!1047 = !{!"827"}
!1048 = !DILocation(line: 97, column: 14, scope: !155)
!1049 = !{!"828"}
!1050 = !DILocation(line: 97, column: 10, scope: !155)
!1051 = !{!"829"}
!1052 = !{!"830"}
!1053 = !{!"831"}
!1054 = !{!"832"}
!1055 = !DILocalVariable(name: "clen", scope: !155, file: !3, line: 50, type: !14)
!1056 = !{!"833"}
!1057 = !{!"834"}
!1058 = !DILocation(line: 98, column: 8, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !155, file: !3, line: 98, column: 3)
!1060 = !{!"835"}
!1061 = !DILocation(line: 0, scope: !1059)
!1062 = !{!"836"}
!1063 = !{!"837"}
!1064 = !DILocation(line: 98, column: 17, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 98, column: 3)
!1066 = !{!"838"}
!1067 = !DILocation(line: 98, column: 3, scope: !1059)
!1068 = !{!"839"}
!1069 = !DILocation(line: 99, column: 14, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 98, column: 31)
!1071 = !{!"840"}
!1072 = !{!"841"}
!1073 = !{!"842"}
!1074 = !DILocation(line: 99, column: 4, scope: !1070)
!1075 = !{!"843"}
!1076 = !DILocation(line: 99, column: 11, scope: !1070)
!1077 = !{!"844"}
!1078 = !{!"845"}
!1079 = !{!"846"}
!1080 = !{!"847"}
!1081 = !{!"848"}
!1082 = !DILocation(line: 100, column: 3, scope: !1070)
!1083 = !{!"849"}
!1084 = !DILocation(line: 98, column: 27, scope: !1065)
!1085 = !{!"850"}
!1086 = !{!"851"}
!1087 = !DILocation(line: 98, column: 3, scope: !1065)
!1088 = distinct !{!1088, !1067, !1089, !109}
!1089 = !DILocation(line: 100, column: 3, scope: !1059)
!1090 = !{!"852"}
!1091 = !DILocation(line: 101, column: 7, scope: !155)
!1092 = !{!"853"}
!1093 = !{!"854"}
!1094 = !DILocation(line: 102, column: 7, scope: !155)
!1095 = !{!"855"}
!1096 = !{!"856"}
!1097 = !DILocation(line: 103, column: 6, scope: !155)
!1098 = !{!"857"}
!1099 = !{!"858"}
!1100 = distinct !{!1100, !143, !1101, !109}
!1101 = !DILocation(line: 104, column: 2, scope: !2)
!1102 = !{!"859"}
!1103 = !DILocation(line: 105, column: 2, scope: !2)
!1104 = !{!"860"}
!1105 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !1106, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!6, !11}
!1108 = !DILocalVariable(name: "src", arg: 1, scope: !1105, file: !26, line: 574, type: !11)
!1109 = !DILocation(line: 0, scope: !1105)
!1110 = !{!"861"}
!1111 = !DILocation(line: 577, column: 10, scope: !1105)
!1112 = !{!"862"}
!1113 = !DILocation(line: 577, column: 38, scope: !1105)
!1114 = !{!"863"}
!1115 = !{!"864"}
!1116 = !DILocation(line: 577, column: 2, scope: !1105)
!1117 = !{!"865"}
!1118 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !1119, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !13, !6}
!1121 = !DILocalVariable(name: "dst", arg: 1, scope: !1118, file: !26, line: 542, type: !13)
!1122 = !DILocation(line: 0, scope: !1118)
!1123 = !{!"866"}
!1124 = !DILocalVariable(name: "x", arg: 2, scope: !1118, file: !26, line: 542, type: !6)
!1125 = !{!"867"}
!1126 = !DILocation(line: 545, column: 3, scope: !1118)
!1127 = !{!"868"}
!1128 = !DILocation(line: 545, column: 25, scope: !1118)
!1129 = !{!"869"}
!1130 = !DILocation(line: 545, column: 27, scope: !1118)
!1131 = !{!"870"}
!1132 = !DILocation(line: 555, column: 1, scope: !1118)
!1133 = !{!"871"}
!1134 = distinct !DISubprogram(name: "run_wrapper", scope: !40, file: !40, line: 3, type: !1135, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !11, !11, !6, !13, !14}
!1137 = !DILocalVariable(name: "key", arg: 1, scope: !1134, file: !40, line: 3, type: !11)
!1138 = !DILocation(line: 0, scope: !1134)
!1139 = !{!"872"}
!1140 = !DILocalVariable(name: "iv", arg: 2, scope: !1134, file: !40, line: 4, type: !11)
!1141 = !{!"873"}
!1142 = !DILocalVariable(name: "cc", arg: 3, scope: !1134, file: !40, line: 4, type: !6)
!1143 = !{!"874"}
!1144 = !DILocalVariable(name: "data", arg: 4, scope: !1134, file: !40, line: 4, type: !13)
!1145 = !{!"875"}
!1146 = !DILocalVariable(name: "len", arg: 5, scope: !1134, file: !40, line: 4, type: !14)
!1147 = !{!"876"}
!1148 = !DILocation(line: 5, column: 12, scope: !1134)
!1149 = !{!"877"}
!1150 = !DILocation(line: 5, column: 2, scope: !1134)
!1151 = !{!"878"}
!1152 = !DILocation(line: 6, column: 12, scope: !1134)
!1153 = !{!"879"}
!1154 = !DILocation(line: 6, column: 2, scope: !1134)
!1155 = !{!"880"}
!1156 = !DILocation(line: 7, column: 12, scope: !1134)
!1157 = !{!"881"}
!1158 = !DILocation(line: 7, column: 2, scope: !1134)
!1159 = !{!"882"}
!1160 = !DILocation(line: 8, column: 12, scope: !1134)
!1161 = !{!"883"}
!1162 = !DILocation(line: 8, column: 2, scope: !1134)
!1163 = !{!"884"}
!1164 = !DILocation(line: 9, column: 12, scope: !1134)
!1165 = !{!"885"}
!1166 = !DILocation(line: 9, column: 2, scope: !1134)
!1167 = !{!"886"}
!1168 = !DILocation(line: 11, column: 12, scope: !1134)
!1169 = !{!"887"}
!1170 = !DILocation(line: 11, column: 2, scope: !1134)
!1171 = !{!"888"}
!1172 = !DILocation(line: 12, column: 12, scope: !1134)
!1173 = !{!"889"}
!1174 = !DILocation(line: 12, column: 2, scope: !1134)
!1175 = !{!"890"}
!1176 = !DILocation(line: 14, column: 2, scope: !1134)
!1177 = !{!"891"}
!1178 = !DILocation(line: 15, column: 1, scope: !1134)
!1179 = !{!"892"}
!1180 = distinct !DISubprogram(name: "run_wrapper_t", scope: !40, file: !40, line: 24, type: !1181, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null}
!1183 = !DILocation(line: 26, column: 20, scope: !1180)
!1184 = !{!"893"}
!1185 = !DILocalVariable(name: "key", scope: !1180, file: !40, line: 26, type: !11)
!1186 = !DILocation(line: 0, scope: !1180)
!1187 = !{!"894"}
!1188 = !DILocation(line: 27, column: 19, scope: !1180)
!1189 = !{!"895"}
!1190 = !DILocalVariable(name: "iv", scope: !1180, file: !40, line: 27, type: !11)
!1191 = !{!"896"}
!1192 = !DILocalVariable(name: "cc", scope: !1180, file: !40, line: 28, type: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1194, line: 26, baseType: !1195)
!1194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !9, line: 41, baseType: !191)
!1196 = !{!"897"}
!1197 = !DILocation(line: 29, column: 17, scope: !1180)
!1198 = !{!"898"}
!1199 = !DILocalVariable(name: "data", scope: !1180, file: !40, line: 29, type: !13)
!1200 = !{!"899"}
!1201 = !DILocation(line: 30, column: 16, scope: !1180)
!1202 = !{!"900"}
!1203 = !DILocalVariable(name: "len", scope: !1180, file: !40, line: 30, type: !14)
!1204 = !{!"901"}
!1205 = !DILocation(line: 32, column: 2, scope: !1180)
!1206 = !{!"902"}
!1207 = !DILocation(line: 33, column: 1, scope: !1180)
!1208 = !{!"903"}
