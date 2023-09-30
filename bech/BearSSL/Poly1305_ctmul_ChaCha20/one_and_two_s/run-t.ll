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
  %6 = alloca [8 x i32], align 16, !psr.id !68
  %7 = alloca [3 x i32], align 4, !psr.id !69
  %8 = alloca [16 x i32], align 16, !psr.id !70
  %9 = alloca [64 x i8], align 16, !psr.id !71
  call void @llvm.dbg.value(metadata i8* %0, metadata !72, metadata !DIExpression()), !dbg !73, !psr.id !74
  call void @llvm.dbg.value(metadata i8* %1, metadata !75, metadata !DIExpression()), !dbg !73, !psr.id !76
  call void @llvm.dbg.value(metadata i32 %2, metadata !77, metadata !DIExpression()), !dbg !73, !psr.id !78
  call void @llvm.dbg.value(metadata i8* %3, metadata !79, metadata !DIExpression()), !dbg !73, !psr.id !80
  call void @llvm.dbg.value(metadata i64 %4, metadata !81, metadata !DIExpression()), !dbg !73, !psr.id !82
  call void @llvm.dbg.declare(metadata [8 x i32]* %6, metadata !83, metadata !DIExpression()), !dbg !85, !psr.id !86
  call void @llvm.dbg.declare(metadata [3 x i32]* %7, metadata !87, metadata !DIExpression()), !dbg !91, !psr.id !92
  call void @llvm.dbg.value(metadata i8* %3, metadata !93, metadata !DIExpression()), !dbg !73, !psr.id !94
  call void @llvm.dbg.value(metadata i64 0, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !96
  br label %10, !dbg !97, !psr.id !99

10:                                               ; preds = %17, %5
  %.01 = phi i64 [ 0, %5 ], [ %18, %17 ], !dbg !100, !psr.id !101
  call void @llvm.dbg.value(metadata i64 %.01, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !102
  %11 = icmp ult i64 %.01, 8, !dbg !103, !psr.id !105
  br i1 %11, label %12, label %19, !dbg !106, !psr.id !107

12:                                               ; preds = %10
  %13 = shl i64 %.01, 2, !dbg !108, !psr.id !110
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !111, !psr.id !112, !PointTainted !113
  %15 = call i32 @br_dec32le(i8* %14), !dbg !114, !psr.id !115, !ValueTainted !116
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %.01, !dbg !117, !psr.id !118, !PointTainted !113
  store i32 %15, i32* %16, align 4, !dbg !119, !psr.id !120
  br label %17, !dbg !121, !psr.id !122

17:                                               ; preds = %12
  %18 = add i64 %.01, 1, !dbg !123, !psr.id !124
  call void @llvm.dbg.value(metadata i64 %18, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !125
  br label %10, !dbg !126, !llvm.loop !127, !psr.id !130

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 0, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !131
  br label %20, !dbg !132, !psr.id !134

20:                                               ; preds = %27, %19
  %.1 = phi i64 [ 0, %19 ], [ %28, %27 ], !dbg !135, !psr.id !136
  call void @llvm.dbg.value(metadata i64 %.1, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !137
  %21 = icmp ult i64 %.1, 3, !dbg !138, !psr.id !140
  br i1 %21, label %22, label %29, !dbg !141, !psr.id !142

22:                                               ; preds = %20
  %23 = shl i64 %.1, 2, !dbg !143, !psr.id !145
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !146, !psr.id !147
  %25 = call i32 @br_dec32le(i8* %24), !dbg !148, !psr.id !149
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %.1, !dbg !150, !psr.id !151
  store i32 %25, i32* %26, align 4, !dbg !152, !psr.id !153
  br label %27, !dbg !154, !psr.id !155

27:                                               ; preds = %22
  %28 = add i64 %.1, 1, !dbg !156, !psr.id !157
  call void @llvm.dbg.value(metadata i64 %28, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !158
  br label %20, !dbg !159, !llvm.loop !160, !psr.id !162

29:                                               ; preds = %20
  br label %30, !dbg !163, !psr.id !164

30:                                               ; preds = %705, %29
  %.04 = phi i64 [ %4, %29 ], [ %707, %705 ], !psr.id !165
  %.03 = phi i8* [ %3, %29 ], [ %706, %705 ], !dbg !73, !psr.id !166
  %.02 = phi i32 [ %2, %29 ], [ %708, %705 ], !psr.id !167
  call void @llvm.dbg.value(metadata i32 %.02, metadata !77, metadata !DIExpression()), !dbg !73, !psr.id !168
  call void @llvm.dbg.value(metadata i8* %.03, metadata !93, metadata !DIExpression()), !dbg !73, !psr.id !169
  call void @llvm.dbg.value(metadata i64 %.04, metadata !81, metadata !DIExpression()), !dbg !73, !psr.id !170
  %31 = icmp ugt i64 %.04, 0, !dbg !171, !psr.id !172
  br i1 %31, label %32, label %709, !dbg !163, !psr.id !173

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i32]* %8, metadata !174, metadata !DIExpression()), !dbg !179, !psr.id !180
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !181, metadata !DIExpression()), !dbg !185, !psr.id !186
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !187, !psr.id !188
  %34 = bitcast i32* %33 to i8*, !dbg !189, !psr.id !190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([4 x i32]* @br_chacha20_ct_run.CW to i8*), i64 16, i1 false), !dbg !189, !psr.id !191
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !192, !psr.id !193
  %36 = bitcast i32* %35 to i8*, !dbg !194, !psr.id !195
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !194, !psr.id !196
  %38 = bitcast i32* %37 to i8*, !dbg !194, !psr.id !197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 %38, i64 32, i1 false), !dbg !194, !psr.id !198
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !199, !psr.id !200
  store i32 %.02, i32* %39, align 16, !dbg !201, !psr.id !202
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !203, !psr.id !204
  %41 = bitcast i32* %40 to i8*, !dbg !205, !psr.id !206
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0, !dbg !205, !psr.id !207
  %43 = bitcast i32* %42 to i8*, !dbg !205, !psr.id !208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %43, i64 12, i1 false), !dbg !205, !psr.id !209
  call void @llvm.dbg.value(metadata i32 0, metadata !210, metadata !DIExpression()), !dbg !212, !psr.id !213
  br label %44, !dbg !214, !psr.id !216

44:                                               ; preds = %639, %32
  %.0 = phi i32 [ 0, %32 ], [ %640, %639 ], !dbg !217, !psr.id !218
  call void @llvm.dbg.value(metadata i32 %.0, metadata !210, metadata !DIExpression()), !dbg !212, !psr.id !219
  %45 = icmp slt i32 %.0, 10, !dbg !220, !psr.id !222
  br i1 %45, label %46, label %641, !dbg !223, !psr.id !224

46:                                               ; preds = %44
  br label %47, !dbg !225, !psr.id !227

47:                                               ; preds = %46
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !228, !psr.id !230
  %49 = load i32, i32* %48, align 16, !dbg !228, !psr.id !231
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !228, !psr.id !232
  %51 = load i32, i32* %50, align 16, !dbg !228, !psr.id !233
  %52 = add i32 %51, %49, !dbg !228, !psr.id !234
  store i32 %52, i32* %50, align 16, !dbg !228, !psr.id !235
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !228, !psr.id !236
  %54 = load i32, i32* %53, align 16, !dbg !228, !psr.id !237
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !228, !psr.id !238
  %56 = load i32, i32* %55, align 16, !dbg !228, !psr.id !239
  %57 = xor i32 %56, %54, !dbg !228, !psr.id !240
  store i32 %57, i32* %55, align 16, !dbg !228, !psr.id !241
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !228, !psr.id !242
  %59 = load i32, i32* %58, align 16, !dbg !228, !psr.id !243
  %60 = shl i32 %59, 16, !dbg !228, !psr.id !244
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !228, !psr.id !245
  %62 = load i32, i32* %61, align 16, !dbg !228, !psr.id !246
  %63 = lshr i32 %62, 16, !dbg !228, !psr.id !247
  %64 = or i32 %60, %63, !dbg !228, !psr.id !248
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !228, !psr.id !249
  store i32 %64, i32* %65, align 16, !dbg !228, !psr.id !250
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !228, !psr.id !251
  %67 = load i32, i32* %66, align 16, !dbg !228, !psr.id !252
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !228, !psr.id !253
  %69 = load i32, i32* %68, align 16, !dbg !228, !psr.id !254
  %70 = add i32 %69, %67, !dbg !228, !psr.id !255
  store i32 %70, i32* %68, align 16, !dbg !228, !psr.id !256
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !228, !psr.id !257
  %72 = load i32, i32* %71, align 16, !dbg !228, !psr.id !258
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !228, !psr.id !259
  %74 = load i32, i32* %73, align 16, !dbg !228, !psr.id !260
  %75 = xor i32 %74, %72, !dbg !228, !psr.id !261
  store i32 %75, i32* %73, align 16, !dbg !228, !psr.id !262
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !228, !psr.id !263
  %77 = load i32, i32* %76, align 16, !dbg !228, !psr.id !264
  %78 = shl i32 %77, 12, !dbg !228, !psr.id !265
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !228, !psr.id !266
  %80 = load i32, i32* %79, align 16, !dbg !228, !psr.id !267
  %81 = lshr i32 %80, 20, !dbg !228, !psr.id !268
  %82 = or i32 %78, %81, !dbg !228, !psr.id !269
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !228, !psr.id !270
  store i32 %82, i32* %83, align 16, !dbg !228, !psr.id !271
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !228, !psr.id !272
  %85 = load i32, i32* %84, align 16, !dbg !228, !psr.id !273
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !228, !psr.id !274
  %87 = load i32, i32* %86, align 16, !dbg !228, !psr.id !275
  %88 = add i32 %87, %85, !dbg !228, !psr.id !276
  store i32 %88, i32* %86, align 16, !dbg !228, !psr.id !277
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !228, !psr.id !278
  %90 = load i32, i32* %89, align 16, !dbg !228, !psr.id !279
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !228, !psr.id !280
  %92 = load i32, i32* %91, align 16, !dbg !228, !psr.id !281
  %93 = xor i32 %92, %90, !dbg !228, !psr.id !282
  store i32 %93, i32* %91, align 16, !dbg !228, !psr.id !283
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !228, !psr.id !284
  %95 = load i32, i32* %94, align 16, !dbg !228, !psr.id !285
  %96 = shl i32 %95, 8, !dbg !228, !psr.id !286
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !228, !psr.id !287
  %98 = load i32, i32* %97, align 16, !dbg !228, !psr.id !288
  %99 = lshr i32 %98, 24, !dbg !228, !psr.id !289
  %100 = or i32 %96, %99, !dbg !228, !psr.id !290
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !228, !psr.id !291
  store i32 %100, i32* %101, align 16, !dbg !228, !psr.id !292
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !228, !psr.id !293
  %103 = load i32, i32* %102, align 16, !dbg !228, !psr.id !294
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !228, !psr.id !295
  %105 = load i32, i32* %104, align 16, !dbg !228, !psr.id !296
  %106 = add i32 %105, %103, !dbg !228, !psr.id !297
  store i32 %106, i32* %104, align 16, !dbg !228, !psr.id !298
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !228, !psr.id !299
  %108 = load i32, i32* %107, align 16, !dbg !228, !psr.id !300
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !228, !psr.id !301
  %110 = load i32, i32* %109, align 16, !dbg !228, !psr.id !302
  %111 = xor i32 %110, %108, !dbg !228, !psr.id !303
  store i32 %111, i32* %109, align 16, !dbg !228, !psr.id !304
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !228, !psr.id !305
  %113 = load i32, i32* %112, align 16, !dbg !228, !psr.id !306
  %114 = shl i32 %113, 7, !dbg !228, !psr.id !307
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !228, !psr.id !308
  %116 = load i32, i32* %115, align 16, !dbg !228, !psr.id !309
  %117 = lshr i32 %116, 25, !dbg !228, !psr.id !310
  %118 = or i32 %114, %117, !dbg !228, !psr.id !311
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !228, !psr.id !312
  store i32 %118, i32* %119, align 16, !dbg !228, !psr.id !313
  br label %120, !dbg !228, !psr.id !314

120:                                              ; preds = %47
  br label %121, !dbg !315, !psr.id !316

121:                                              ; preds = %120
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !317, !psr.id !319
  %123 = load i32, i32* %122, align 4, !dbg !317, !psr.id !320
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !317, !psr.id !321
  %125 = load i32, i32* %124, align 4, !dbg !317, !psr.id !322
  %126 = add i32 %125, %123, !dbg !317, !psr.id !323
  store i32 %126, i32* %124, align 4, !dbg !317, !psr.id !324
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !317, !psr.id !325
  %128 = load i32, i32* %127, align 4, !dbg !317, !psr.id !326
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !317, !psr.id !327
  %130 = load i32, i32* %129, align 4, !dbg !317, !psr.id !328
  %131 = xor i32 %130, %128, !dbg !317, !psr.id !329
  store i32 %131, i32* %129, align 4, !dbg !317, !psr.id !330
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !317, !psr.id !331
  %133 = load i32, i32* %132, align 4, !dbg !317, !psr.id !332
  %134 = shl i32 %133, 16, !dbg !317, !psr.id !333
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !317, !psr.id !334
  %136 = load i32, i32* %135, align 4, !dbg !317, !psr.id !335
  %137 = lshr i32 %136, 16, !dbg !317, !psr.id !336
  %138 = or i32 %134, %137, !dbg !317, !psr.id !337
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !317, !psr.id !338
  store i32 %138, i32* %139, align 4, !dbg !317, !psr.id !339
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !317, !psr.id !340
  %141 = load i32, i32* %140, align 4, !dbg !317, !psr.id !341
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !317, !psr.id !342
  %143 = load i32, i32* %142, align 4, !dbg !317, !psr.id !343
  %144 = add i32 %143, %141, !dbg !317, !psr.id !344
  store i32 %144, i32* %142, align 4, !dbg !317, !psr.id !345
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !317, !psr.id !346
  %146 = load i32, i32* %145, align 4, !dbg !317, !psr.id !347
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !317, !psr.id !348
  %148 = load i32, i32* %147, align 4, !dbg !317, !psr.id !349
  %149 = xor i32 %148, %146, !dbg !317, !psr.id !350
  store i32 %149, i32* %147, align 4, !dbg !317, !psr.id !351
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !317, !psr.id !352
  %151 = load i32, i32* %150, align 4, !dbg !317, !psr.id !353
  %152 = shl i32 %151, 12, !dbg !317, !psr.id !354
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !317, !psr.id !355
  %154 = load i32, i32* %153, align 4, !dbg !317, !psr.id !356
  %155 = lshr i32 %154, 20, !dbg !317, !psr.id !357
  %156 = or i32 %152, %155, !dbg !317, !psr.id !358
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !317, !psr.id !359
  store i32 %156, i32* %157, align 4, !dbg !317, !psr.id !360
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !317, !psr.id !361
  %159 = load i32, i32* %158, align 4, !dbg !317, !psr.id !362
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !317, !psr.id !363
  %161 = load i32, i32* %160, align 4, !dbg !317, !psr.id !364
  %162 = add i32 %161, %159, !dbg !317, !psr.id !365
  store i32 %162, i32* %160, align 4, !dbg !317, !psr.id !366
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !317, !psr.id !367
  %164 = load i32, i32* %163, align 4, !dbg !317, !psr.id !368
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !317, !psr.id !369
  %166 = load i32, i32* %165, align 4, !dbg !317, !psr.id !370
  %167 = xor i32 %166, %164, !dbg !317, !psr.id !371
  store i32 %167, i32* %165, align 4, !dbg !317, !psr.id !372
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !317, !psr.id !373
  %169 = load i32, i32* %168, align 4, !dbg !317, !psr.id !374
  %170 = shl i32 %169, 8, !dbg !317, !psr.id !375
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !317, !psr.id !376
  %172 = load i32, i32* %171, align 4, !dbg !317, !psr.id !377
  %173 = lshr i32 %172, 24, !dbg !317, !psr.id !378
  %174 = or i32 %170, %173, !dbg !317, !psr.id !379
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !317, !psr.id !380
  store i32 %174, i32* %175, align 4, !dbg !317, !psr.id !381
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !317, !psr.id !382
  %177 = load i32, i32* %176, align 4, !dbg !317, !psr.id !383
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !317, !psr.id !384
  %179 = load i32, i32* %178, align 4, !dbg !317, !psr.id !385
  %180 = add i32 %179, %177, !dbg !317, !psr.id !386
  store i32 %180, i32* %178, align 4, !dbg !317, !psr.id !387
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !317, !psr.id !388
  %182 = load i32, i32* %181, align 4, !dbg !317, !psr.id !389
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !317, !psr.id !390
  %184 = load i32, i32* %183, align 4, !dbg !317, !psr.id !391
  %185 = xor i32 %184, %182, !dbg !317, !psr.id !392
  store i32 %185, i32* %183, align 4, !dbg !317, !psr.id !393
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !317, !psr.id !394
  %187 = load i32, i32* %186, align 4, !dbg !317, !psr.id !395
  %188 = shl i32 %187, 7, !dbg !317, !psr.id !396
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !317, !psr.id !397
  %190 = load i32, i32* %189, align 4, !dbg !317, !psr.id !398
  %191 = lshr i32 %190, 25, !dbg !317, !psr.id !399
  %192 = or i32 %188, %191, !dbg !317, !psr.id !400
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !317, !psr.id !401
  store i32 %192, i32* %193, align 4, !dbg !317, !psr.id !402
  br label %194, !dbg !317, !psr.id !403

194:                                              ; preds = %121
  br label %195, !dbg !404, !psr.id !405

195:                                              ; preds = %194
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !408
  %197 = load i32, i32* %196, align 8, !dbg !406, !psr.id !409
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !406, !psr.id !410
  %199 = load i32, i32* %198, align 8, !dbg !406, !psr.id !411
  %200 = add i32 %199, %197, !dbg !406, !psr.id !412
  store i32 %200, i32* %198, align 8, !dbg !406, !psr.id !413
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !406, !psr.id !414
  %202 = load i32, i32* %201, align 8, !dbg !406, !psr.id !415
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !406, !psr.id !416
  %204 = load i32, i32* %203, align 8, !dbg !406, !psr.id !417
  %205 = xor i32 %204, %202, !dbg !406, !psr.id !418
  store i32 %205, i32* %203, align 8, !dbg !406, !psr.id !419
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !406, !psr.id !420
  %207 = load i32, i32* %206, align 8, !dbg !406, !psr.id !421
  %208 = shl i32 %207, 16, !dbg !406, !psr.id !422
  %209 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !406, !psr.id !423
  %210 = load i32, i32* %209, align 8, !dbg !406, !psr.id !424
  %211 = lshr i32 %210, 16, !dbg !406, !psr.id !425
  %212 = or i32 %208, %211, !dbg !406, !psr.id !426
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !406, !psr.id !427
  store i32 %212, i32* %213, align 8, !dbg !406, !psr.id !428
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !406, !psr.id !429
  %215 = load i32, i32* %214, align 8, !dbg !406, !psr.id !430
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !406, !psr.id !431
  %217 = load i32, i32* %216, align 8, !dbg !406, !psr.id !432
  %218 = add i32 %217, %215, !dbg !406, !psr.id !433
  store i32 %218, i32* %216, align 8, !dbg !406, !psr.id !434
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !406, !psr.id !435
  %220 = load i32, i32* %219, align 8, !dbg !406, !psr.id !436
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !437
  %222 = load i32, i32* %221, align 8, !dbg !406, !psr.id !438
  %223 = xor i32 %222, %220, !dbg !406, !psr.id !439
  store i32 %223, i32* %221, align 8, !dbg !406, !psr.id !440
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !441
  %225 = load i32, i32* %224, align 8, !dbg !406, !psr.id !442
  %226 = shl i32 %225, 12, !dbg !406, !psr.id !443
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !444
  %228 = load i32, i32* %227, align 8, !dbg !406, !psr.id !445
  %229 = lshr i32 %228, 20, !dbg !406, !psr.id !446
  %230 = or i32 %226, %229, !dbg !406, !psr.id !447
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !448
  store i32 %230, i32* %231, align 8, !dbg !406, !psr.id !449
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !450
  %233 = load i32, i32* %232, align 8, !dbg !406, !psr.id !451
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !406, !psr.id !452
  %235 = load i32, i32* %234, align 8, !dbg !406, !psr.id !453
  %236 = add i32 %235, %233, !dbg !406, !psr.id !454
  store i32 %236, i32* %234, align 8, !dbg !406, !psr.id !455
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !406, !psr.id !456
  %238 = load i32, i32* %237, align 8, !dbg !406, !psr.id !457
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !406, !psr.id !458
  %240 = load i32, i32* %239, align 8, !dbg !406, !psr.id !459
  %241 = xor i32 %240, %238, !dbg !406, !psr.id !460
  store i32 %241, i32* %239, align 8, !dbg !406, !psr.id !461
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !406, !psr.id !462
  %243 = load i32, i32* %242, align 8, !dbg !406, !psr.id !463
  %244 = shl i32 %243, 8, !dbg !406, !psr.id !464
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !406, !psr.id !465
  %246 = load i32, i32* %245, align 8, !dbg !406, !psr.id !466
  %247 = lshr i32 %246, 24, !dbg !406, !psr.id !467
  %248 = or i32 %244, %247, !dbg !406, !psr.id !468
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !406, !psr.id !469
  store i32 %248, i32* %249, align 8, !dbg !406, !psr.id !470
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !406, !psr.id !471
  %251 = load i32, i32* %250, align 8, !dbg !406, !psr.id !472
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !406, !psr.id !473
  %253 = load i32, i32* %252, align 8, !dbg !406, !psr.id !474
  %254 = add i32 %253, %251, !dbg !406, !psr.id !475
  store i32 %254, i32* %252, align 8, !dbg !406, !psr.id !476
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !406, !psr.id !477
  %256 = load i32, i32* %255, align 8, !dbg !406, !psr.id !478
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !479
  %258 = load i32, i32* %257, align 8, !dbg !406, !psr.id !480
  %259 = xor i32 %258, %256, !dbg !406, !psr.id !481
  store i32 %259, i32* %257, align 8, !dbg !406, !psr.id !482
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !483
  %261 = load i32, i32* %260, align 8, !dbg !406, !psr.id !484
  %262 = shl i32 %261, 7, !dbg !406, !psr.id !485
  %263 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !486
  %264 = load i32, i32* %263, align 8, !dbg !406, !psr.id !487
  %265 = lshr i32 %264, 25, !dbg !406, !psr.id !488
  %266 = or i32 %262, %265, !dbg !406, !psr.id !489
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !406, !psr.id !490
  store i32 %266, i32* %267, align 8, !dbg !406, !psr.id !491
  br label %268, !dbg !406, !psr.id !492

268:                                              ; preds = %195
  br label %269, !dbg !493, !psr.id !494

269:                                              ; preds = %268
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !495, !psr.id !497
  %271 = load i32, i32* %270, align 4, !dbg !495, !psr.id !498
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !495, !psr.id !499
  %273 = load i32, i32* %272, align 4, !dbg !495, !psr.id !500
  %274 = add i32 %273, %271, !dbg !495, !psr.id !501
  store i32 %274, i32* %272, align 4, !dbg !495, !psr.id !502
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !495, !psr.id !503
  %276 = load i32, i32* %275, align 4, !dbg !495, !psr.id !504
  %277 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !495, !psr.id !505
  %278 = load i32, i32* %277, align 4, !dbg !495, !psr.id !506
  %279 = xor i32 %278, %276, !dbg !495, !psr.id !507
  store i32 %279, i32* %277, align 4, !dbg !495, !psr.id !508
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !495, !psr.id !509
  %281 = load i32, i32* %280, align 4, !dbg !495, !psr.id !510
  %282 = shl i32 %281, 16, !dbg !495, !psr.id !511
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !495, !psr.id !512
  %284 = load i32, i32* %283, align 4, !dbg !495, !psr.id !513
  %285 = lshr i32 %284, 16, !dbg !495, !psr.id !514
  %286 = or i32 %282, %285, !dbg !495, !psr.id !515
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !495, !psr.id !516
  store i32 %286, i32* %287, align 4, !dbg !495, !psr.id !517
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !495, !psr.id !518
  %289 = load i32, i32* %288, align 4, !dbg !495, !psr.id !519
  %290 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !495, !psr.id !520
  %291 = load i32, i32* %290, align 4, !dbg !495, !psr.id !521
  %292 = add i32 %291, %289, !dbg !495, !psr.id !522
  store i32 %292, i32* %290, align 4, !dbg !495, !psr.id !523
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !495, !psr.id !524
  %294 = load i32, i32* %293, align 4, !dbg !495, !psr.id !525
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !495, !psr.id !526
  %296 = load i32, i32* %295, align 4, !dbg !495, !psr.id !527
  %297 = xor i32 %296, %294, !dbg !495, !psr.id !528
  store i32 %297, i32* %295, align 4, !dbg !495, !psr.id !529
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !495, !psr.id !530
  %299 = load i32, i32* %298, align 4, !dbg !495, !psr.id !531
  %300 = shl i32 %299, 12, !dbg !495, !psr.id !532
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !495, !psr.id !533
  %302 = load i32, i32* %301, align 4, !dbg !495, !psr.id !534
  %303 = lshr i32 %302, 20, !dbg !495, !psr.id !535
  %304 = or i32 %300, %303, !dbg !495, !psr.id !536
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !495, !psr.id !537
  store i32 %304, i32* %305, align 4, !dbg !495, !psr.id !538
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !495, !psr.id !539
  %307 = load i32, i32* %306, align 4, !dbg !495, !psr.id !540
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !495, !psr.id !541
  %309 = load i32, i32* %308, align 4, !dbg !495, !psr.id !542
  %310 = add i32 %309, %307, !dbg !495, !psr.id !543
  store i32 %310, i32* %308, align 4, !dbg !495, !psr.id !544
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !495, !psr.id !545
  %312 = load i32, i32* %311, align 4, !dbg !495, !psr.id !546
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !495, !psr.id !547
  %314 = load i32, i32* %313, align 4, !dbg !495, !psr.id !548
  %315 = xor i32 %314, %312, !dbg !495, !psr.id !549
  store i32 %315, i32* %313, align 4, !dbg !495, !psr.id !550
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !495, !psr.id !551
  %317 = load i32, i32* %316, align 4, !dbg !495, !psr.id !552
  %318 = shl i32 %317, 8, !dbg !495, !psr.id !553
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !495, !psr.id !554
  %320 = load i32, i32* %319, align 4, !dbg !495, !psr.id !555
  %321 = lshr i32 %320, 24, !dbg !495, !psr.id !556
  %322 = or i32 %318, %321, !dbg !495, !psr.id !557
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !495, !psr.id !558
  store i32 %322, i32* %323, align 4, !dbg !495, !psr.id !559
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !495, !psr.id !560
  %325 = load i32, i32* %324, align 4, !dbg !495, !psr.id !561
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !495, !psr.id !562
  %327 = load i32, i32* %326, align 4, !dbg !495, !psr.id !563
  %328 = add i32 %327, %325, !dbg !495, !psr.id !564
  store i32 %328, i32* %326, align 4, !dbg !495, !psr.id !565
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !495, !psr.id !566
  %330 = load i32, i32* %329, align 4, !dbg !495, !psr.id !567
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !495, !psr.id !568
  %332 = load i32, i32* %331, align 4, !dbg !495, !psr.id !569
  %333 = xor i32 %332, %330, !dbg !495, !psr.id !570
  store i32 %333, i32* %331, align 4, !dbg !495, !psr.id !571
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !495, !psr.id !572
  %335 = load i32, i32* %334, align 4, !dbg !495, !psr.id !573
  %336 = shl i32 %335, 7, !dbg !495, !psr.id !574
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !495, !psr.id !575
  %338 = load i32, i32* %337, align 4, !dbg !495, !psr.id !576
  %339 = lshr i32 %338, 25, !dbg !495, !psr.id !577
  %340 = or i32 %336, %339, !dbg !495, !psr.id !578
  %341 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !495, !psr.id !579
  store i32 %340, i32* %341, align 4, !dbg !495, !psr.id !580
  br label %342, !dbg !495, !psr.id !581

342:                                              ; preds = %269
  br label %343, !dbg !582, !psr.id !583

343:                                              ; preds = %342
  %344 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !584, !psr.id !586
  %345 = load i32, i32* %344, align 4, !dbg !584, !psr.id !587
  %346 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !584, !psr.id !588
  %347 = load i32, i32* %346, align 16, !dbg !584, !psr.id !589
  %348 = add i32 %347, %345, !dbg !584, !psr.id !590
  store i32 %348, i32* %346, align 16, !dbg !584, !psr.id !591
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !584, !psr.id !592
  %350 = load i32, i32* %349, align 16, !dbg !584, !psr.id !593
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !584, !psr.id !594
  %352 = load i32, i32* %351, align 4, !dbg !584, !psr.id !595
  %353 = xor i32 %352, %350, !dbg !584, !psr.id !596
  store i32 %353, i32* %351, align 4, !dbg !584, !psr.id !597
  %354 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !584, !psr.id !598
  %355 = load i32, i32* %354, align 4, !dbg !584, !psr.id !599
  %356 = shl i32 %355, 16, !dbg !584, !psr.id !600
  %357 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !584, !psr.id !601
  %358 = load i32, i32* %357, align 4, !dbg !584, !psr.id !602
  %359 = lshr i32 %358, 16, !dbg !584, !psr.id !603
  %360 = or i32 %356, %359, !dbg !584, !psr.id !604
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !584, !psr.id !605
  store i32 %360, i32* %361, align 4, !dbg !584, !psr.id !606
  %362 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !584, !psr.id !607
  %363 = load i32, i32* %362, align 4, !dbg !584, !psr.id !608
  %364 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !584, !psr.id !609
  %365 = load i32, i32* %364, align 8, !dbg !584, !psr.id !610
  %366 = add i32 %365, %363, !dbg !584, !psr.id !611
  store i32 %366, i32* %364, align 8, !dbg !584, !psr.id !612
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !584, !psr.id !613
  %368 = load i32, i32* %367, align 8, !dbg !584, !psr.id !614
  %369 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !584, !psr.id !615
  %370 = load i32, i32* %369, align 4, !dbg !584, !psr.id !616
  %371 = xor i32 %370, %368, !dbg !584, !psr.id !617
  store i32 %371, i32* %369, align 4, !dbg !584, !psr.id !618
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !584, !psr.id !619
  %373 = load i32, i32* %372, align 4, !dbg !584, !psr.id !620
  %374 = shl i32 %373, 12, !dbg !584, !psr.id !621
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !584, !psr.id !622
  %376 = load i32, i32* %375, align 4, !dbg !584, !psr.id !623
  %377 = lshr i32 %376, 20, !dbg !584, !psr.id !624
  %378 = or i32 %374, %377, !dbg !584, !psr.id !625
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !584, !psr.id !626
  store i32 %378, i32* %379, align 4, !dbg !584, !psr.id !627
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !584, !psr.id !628
  %381 = load i32, i32* %380, align 4, !dbg !584, !psr.id !629
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !584, !psr.id !630
  %383 = load i32, i32* %382, align 16, !dbg !584, !psr.id !631
  %384 = add i32 %383, %381, !dbg !584, !psr.id !632
  store i32 %384, i32* %382, align 16, !dbg !584, !psr.id !633
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !584, !psr.id !634
  %386 = load i32, i32* %385, align 16, !dbg !584, !psr.id !635
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !584, !psr.id !636
  %388 = load i32, i32* %387, align 4, !dbg !584, !psr.id !637
  %389 = xor i32 %388, %386, !dbg !584, !psr.id !638
  store i32 %389, i32* %387, align 4, !dbg !584, !psr.id !639
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !584, !psr.id !640
  %391 = load i32, i32* %390, align 4, !dbg !584, !psr.id !641
  %392 = shl i32 %391, 8, !dbg !584, !psr.id !642
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !584, !psr.id !643
  %394 = load i32, i32* %393, align 4, !dbg !584, !psr.id !644
  %395 = lshr i32 %394, 24, !dbg !584, !psr.id !645
  %396 = or i32 %392, %395, !dbg !584, !psr.id !646
  %397 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !584, !psr.id !647
  store i32 %396, i32* %397, align 4, !dbg !584, !psr.id !648
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !584, !psr.id !649
  %399 = load i32, i32* %398, align 4, !dbg !584, !psr.id !650
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !584, !psr.id !651
  %401 = load i32, i32* %400, align 8, !dbg !584, !psr.id !652
  %402 = add i32 %401, %399, !dbg !584, !psr.id !653
  store i32 %402, i32* %400, align 8, !dbg !584, !psr.id !654
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !584, !psr.id !655
  %404 = load i32, i32* %403, align 8, !dbg !584, !psr.id !656
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !584, !psr.id !657
  %406 = load i32, i32* %405, align 4, !dbg !584, !psr.id !658
  %407 = xor i32 %406, %404, !dbg !584, !psr.id !659
  store i32 %407, i32* %405, align 4, !dbg !584, !psr.id !660
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !584, !psr.id !661
  %409 = load i32, i32* %408, align 4, !dbg !584, !psr.id !662
  %410 = shl i32 %409, 7, !dbg !584, !psr.id !663
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !584, !psr.id !664
  %412 = load i32, i32* %411, align 4, !dbg !584, !psr.id !665
  %413 = lshr i32 %412, 25, !dbg !584, !psr.id !666
  %414 = or i32 %410, %413, !dbg !584, !psr.id !667
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !584, !psr.id !668
  store i32 %414, i32* %415, align 4, !dbg !584, !psr.id !669
  br label %416, !dbg !584, !psr.id !670

416:                                              ; preds = %343
  br label %417, !dbg !671, !psr.id !672

417:                                              ; preds = %416
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !673, !psr.id !675
  %419 = load i32, i32* %418, align 8, !dbg !673, !psr.id !676
  %420 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !673, !psr.id !677
  %421 = load i32, i32* %420, align 4, !dbg !673, !psr.id !678
  %422 = add i32 %421, %419, !dbg !673, !psr.id !679
  store i32 %422, i32* %420, align 4, !dbg !673, !psr.id !680
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !673, !psr.id !681
  %424 = load i32, i32* %423, align 4, !dbg !673, !psr.id !682
  %425 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !673, !psr.id !683
  %426 = load i32, i32* %425, align 16, !dbg !673, !psr.id !684
  %427 = xor i32 %426, %424, !dbg !673, !psr.id !685
  store i32 %427, i32* %425, align 16, !dbg !673, !psr.id !686
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !673, !psr.id !687
  %429 = load i32, i32* %428, align 16, !dbg !673, !psr.id !688
  %430 = shl i32 %429, 16, !dbg !673, !psr.id !689
  %431 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !673, !psr.id !690
  %432 = load i32, i32* %431, align 16, !dbg !673, !psr.id !691
  %433 = lshr i32 %432, 16, !dbg !673, !psr.id !692
  %434 = or i32 %430, %433, !dbg !673, !psr.id !693
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !673, !psr.id !694
  store i32 %434, i32* %435, align 16, !dbg !673, !psr.id !695
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !673, !psr.id !696
  %437 = load i32, i32* %436, align 16, !dbg !673, !psr.id !697
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !673, !psr.id !698
  %439 = load i32, i32* %438, align 4, !dbg !673, !psr.id !699
  %440 = add i32 %439, %437, !dbg !673, !psr.id !700
  store i32 %440, i32* %438, align 4, !dbg !673, !psr.id !701
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !673, !psr.id !702
  %442 = load i32, i32* %441, align 4, !dbg !673, !psr.id !703
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !673, !psr.id !704
  %444 = load i32, i32* %443, align 8, !dbg !673, !psr.id !705
  %445 = xor i32 %444, %442, !dbg !673, !psr.id !706
  store i32 %445, i32* %443, align 8, !dbg !673, !psr.id !707
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !673, !psr.id !708
  %447 = load i32, i32* %446, align 8, !dbg !673, !psr.id !709
  %448 = shl i32 %447, 12, !dbg !673, !psr.id !710
  %449 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !673, !psr.id !711
  %450 = load i32, i32* %449, align 8, !dbg !673, !psr.id !712
  %451 = lshr i32 %450, 20, !dbg !673, !psr.id !713
  %452 = or i32 %448, %451, !dbg !673, !psr.id !714
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !673, !psr.id !715
  store i32 %452, i32* %453, align 8, !dbg !673, !psr.id !716
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !673, !psr.id !717
  %455 = load i32, i32* %454, align 8, !dbg !673, !psr.id !718
  %456 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !673, !psr.id !719
  %457 = load i32, i32* %456, align 4, !dbg !673, !psr.id !720
  %458 = add i32 %457, %455, !dbg !673, !psr.id !721
  store i32 %458, i32* %456, align 4, !dbg !673, !psr.id !722
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !673, !psr.id !723
  %460 = load i32, i32* %459, align 4, !dbg !673, !psr.id !724
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !673, !psr.id !725
  %462 = load i32, i32* %461, align 16, !dbg !673, !psr.id !726
  %463 = xor i32 %462, %460, !dbg !673, !psr.id !727
  store i32 %463, i32* %461, align 16, !dbg !673, !psr.id !728
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !673, !psr.id !729
  %465 = load i32, i32* %464, align 16, !dbg !673, !psr.id !730
  %466 = shl i32 %465, 8, !dbg !673, !psr.id !731
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !673, !psr.id !732
  %468 = load i32, i32* %467, align 16, !dbg !673, !psr.id !733
  %469 = lshr i32 %468, 24, !dbg !673, !psr.id !734
  %470 = or i32 %466, %469, !dbg !673, !psr.id !735
  %471 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !673, !psr.id !736
  store i32 %470, i32* %471, align 16, !dbg !673, !psr.id !737
  %472 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !673, !psr.id !738
  %473 = load i32, i32* %472, align 16, !dbg !673, !psr.id !739
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !673, !psr.id !740
  %475 = load i32, i32* %474, align 4, !dbg !673, !psr.id !741
  %476 = add i32 %475, %473, !dbg !673, !psr.id !742
  store i32 %476, i32* %474, align 4, !dbg !673, !psr.id !743
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !673, !psr.id !744
  %478 = load i32, i32* %477, align 4, !dbg !673, !psr.id !745
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !673, !psr.id !746
  %480 = load i32, i32* %479, align 8, !dbg !673, !psr.id !747
  %481 = xor i32 %480, %478, !dbg !673, !psr.id !748
  store i32 %481, i32* %479, align 8, !dbg !673, !psr.id !749
  %482 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !673, !psr.id !750
  %483 = load i32, i32* %482, align 8, !dbg !673, !psr.id !751
  %484 = shl i32 %483, 7, !dbg !673, !psr.id !752
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !673, !psr.id !753
  %486 = load i32, i32* %485, align 8, !dbg !673, !psr.id !754
  %487 = lshr i32 %486, 25, !dbg !673, !psr.id !755
  %488 = or i32 %484, %487, !dbg !673, !psr.id !756
  %489 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !673, !psr.id !757
  store i32 %488, i32* %489, align 8, !dbg !673, !psr.id !758
  br label %490, !dbg !673, !psr.id !759

490:                                              ; preds = %417
  br label %491, !dbg !760, !psr.id !761

491:                                              ; preds = %490
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !762, !psr.id !764
  %493 = load i32, i32* %492, align 4, !dbg !762, !psr.id !765
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !762, !psr.id !766
  %495 = load i32, i32* %494, align 8, !dbg !762, !psr.id !767
  %496 = add i32 %495, %493, !dbg !762, !psr.id !768
  store i32 %496, i32* %494, align 8, !dbg !762, !psr.id !769
  %497 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !762, !psr.id !770
  %498 = load i32, i32* %497, align 8, !dbg !762, !psr.id !771
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !762, !psr.id !772
  %500 = load i32, i32* %499, align 4, !dbg !762, !psr.id !773
  %501 = xor i32 %500, %498, !dbg !762, !psr.id !774
  store i32 %501, i32* %499, align 4, !dbg !762, !psr.id !775
  %502 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !762, !psr.id !776
  %503 = load i32, i32* %502, align 4, !dbg !762, !psr.id !777
  %504 = shl i32 %503, 16, !dbg !762, !psr.id !778
  %505 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !762, !psr.id !779
  %506 = load i32, i32* %505, align 4, !dbg !762, !psr.id !780
  %507 = lshr i32 %506, 16, !dbg !762, !psr.id !781
  %508 = or i32 %504, %507, !dbg !762, !psr.id !782
  %509 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !762, !psr.id !783
  store i32 %508, i32* %509, align 4, !dbg !762, !psr.id !784
  %510 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !762, !psr.id !785
  %511 = load i32, i32* %510, align 4, !dbg !762, !psr.id !786
  %512 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !762, !psr.id !787
  %513 = load i32, i32* %512, align 16, !dbg !762, !psr.id !788
  %514 = add i32 %513, %511, !dbg !762, !psr.id !789
  store i32 %514, i32* %512, align 16, !dbg !762, !psr.id !790
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !762, !psr.id !791
  %516 = load i32, i32* %515, align 16, !dbg !762, !psr.id !792
  %517 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !762, !psr.id !793
  %518 = load i32, i32* %517, align 4, !dbg !762, !psr.id !794
  %519 = xor i32 %518, %516, !dbg !762, !psr.id !795
  store i32 %519, i32* %517, align 4, !dbg !762, !psr.id !796
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !762, !psr.id !797
  %521 = load i32, i32* %520, align 4, !dbg !762, !psr.id !798
  %522 = shl i32 %521, 12, !dbg !762, !psr.id !799
  %523 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !762, !psr.id !800
  %524 = load i32, i32* %523, align 4, !dbg !762, !psr.id !801
  %525 = lshr i32 %524, 20, !dbg !762, !psr.id !802
  %526 = or i32 %522, %525, !dbg !762, !psr.id !803
  %527 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !762, !psr.id !804
  store i32 %526, i32* %527, align 4, !dbg !762, !psr.id !805
  %528 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !762, !psr.id !806
  %529 = load i32, i32* %528, align 4, !dbg !762, !psr.id !807
  %530 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !762, !psr.id !808
  %531 = load i32, i32* %530, align 8, !dbg !762, !psr.id !809
  %532 = add i32 %531, %529, !dbg !762, !psr.id !810
  store i32 %532, i32* %530, align 8, !dbg !762, !psr.id !811
  %533 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !762, !psr.id !812
  %534 = load i32, i32* %533, align 8, !dbg !762, !psr.id !813
  %535 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !762, !psr.id !814
  %536 = load i32, i32* %535, align 4, !dbg !762, !psr.id !815
  %537 = xor i32 %536, %534, !dbg !762, !psr.id !816
  store i32 %537, i32* %535, align 4, !dbg !762, !psr.id !817
  %538 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !762, !psr.id !818
  %539 = load i32, i32* %538, align 4, !dbg !762, !psr.id !819
  %540 = shl i32 %539, 8, !dbg !762, !psr.id !820
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !762, !psr.id !821
  %542 = load i32, i32* %541, align 4, !dbg !762, !psr.id !822
  %543 = lshr i32 %542, 24, !dbg !762, !psr.id !823
  %544 = or i32 %540, %543, !dbg !762, !psr.id !824
  %545 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !762, !psr.id !825
  store i32 %544, i32* %545, align 4, !dbg !762, !psr.id !826
  %546 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !762, !psr.id !827
  %547 = load i32, i32* %546, align 4, !dbg !762, !psr.id !828
  %548 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !762, !psr.id !829
  %549 = load i32, i32* %548, align 16, !dbg !762, !psr.id !830
  %550 = add i32 %549, %547, !dbg !762, !psr.id !831
  store i32 %550, i32* %548, align 16, !dbg !762, !psr.id !832
  %551 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !762, !psr.id !833
  %552 = load i32, i32* %551, align 16, !dbg !762, !psr.id !834
  %553 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !762, !psr.id !835
  %554 = load i32, i32* %553, align 4, !dbg !762, !psr.id !836
  %555 = xor i32 %554, %552, !dbg !762, !psr.id !837
  store i32 %555, i32* %553, align 4, !dbg !762, !psr.id !838
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !762, !psr.id !839
  %557 = load i32, i32* %556, align 4, !dbg !762, !psr.id !840
  %558 = shl i32 %557, 7, !dbg !762, !psr.id !841
  %559 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !762, !psr.id !842
  %560 = load i32, i32* %559, align 4, !dbg !762, !psr.id !843
  %561 = lshr i32 %560, 25, !dbg !762, !psr.id !844
  %562 = or i32 %558, %561, !dbg !762, !psr.id !845
  %563 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !762, !psr.id !846
  store i32 %562, i32* %563, align 4, !dbg !762, !psr.id !847
  br label %564, !dbg !762, !psr.id !848

564:                                              ; preds = %491
  br label %565, !dbg !849, !psr.id !850

565:                                              ; preds = %564
  %566 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !851, !psr.id !853
  %567 = load i32, i32* %566, align 16, !dbg !851, !psr.id !854
  %568 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !851, !psr.id !855
  %569 = load i32, i32* %568, align 4, !dbg !851, !psr.id !856
  %570 = add i32 %569, %567, !dbg !851, !psr.id !857
  store i32 %570, i32* %568, align 4, !dbg !851, !psr.id !858
  %571 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !851, !psr.id !859
  %572 = load i32, i32* %571, align 4, !dbg !851, !psr.id !860
  %573 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !851, !psr.id !861
  %574 = load i32, i32* %573, align 8, !dbg !851, !psr.id !862
  %575 = xor i32 %574, %572, !dbg !851, !psr.id !863
  store i32 %575, i32* %573, align 8, !dbg !851, !psr.id !864
  %576 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !851, !psr.id !865
  %577 = load i32, i32* %576, align 8, !dbg !851, !psr.id !866
  %578 = shl i32 %577, 16, !dbg !851, !psr.id !867
  %579 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !851, !psr.id !868
  %580 = load i32, i32* %579, align 8, !dbg !851, !psr.id !869
  %581 = lshr i32 %580, 16, !dbg !851, !psr.id !870
  %582 = or i32 %578, %581, !dbg !851, !psr.id !871
  %583 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !851, !psr.id !872
  store i32 %582, i32* %583, align 8, !dbg !851, !psr.id !873
  %584 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !851, !psr.id !874
  %585 = load i32, i32* %584, align 8, !dbg !851, !psr.id !875
  %586 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !851, !psr.id !876
  %587 = load i32, i32* %586, align 4, !dbg !851, !psr.id !877
  %588 = add i32 %587, %585, !dbg !851, !psr.id !878
  store i32 %588, i32* %586, align 4, !dbg !851, !psr.id !879
  %589 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !851, !psr.id !880
  %590 = load i32, i32* %589, align 4, !dbg !851, !psr.id !881
  %591 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !851, !psr.id !882
  %592 = load i32, i32* %591, align 16, !dbg !851, !psr.id !883
  %593 = xor i32 %592, %590, !dbg !851, !psr.id !884
  store i32 %593, i32* %591, align 16, !dbg !851, !psr.id !885
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !851, !psr.id !886
  %595 = load i32, i32* %594, align 16, !dbg !851, !psr.id !887
  %596 = shl i32 %595, 12, !dbg !851, !psr.id !888
  %597 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !851, !psr.id !889
  %598 = load i32, i32* %597, align 16, !dbg !851, !psr.id !890
  %599 = lshr i32 %598, 20, !dbg !851, !psr.id !891
  %600 = or i32 %596, %599, !dbg !851, !psr.id !892
  %601 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !851, !psr.id !893
  store i32 %600, i32* %601, align 16, !dbg !851, !psr.id !894
  %602 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !851, !psr.id !895
  %603 = load i32, i32* %602, align 16, !dbg !851, !psr.id !896
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !851, !psr.id !897
  %605 = load i32, i32* %604, align 4, !dbg !851, !psr.id !898
  %606 = add i32 %605, %603, !dbg !851, !psr.id !899
  store i32 %606, i32* %604, align 4, !dbg !851, !psr.id !900
  %607 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !851, !psr.id !901
  %608 = load i32, i32* %607, align 4, !dbg !851, !psr.id !902
  %609 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !851, !psr.id !903
  %610 = load i32, i32* %609, align 8, !dbg !851, !psr.id !904
  %611 = xor i32 %610, %608, !dbg !851, !psr.id !905
  store i32 %611, i32* %609, align 8, !dbg !851, !psr.id !906
  %612 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !851, !psr.id !907
  %613 = load i32, i32* %612, align 8, !dbg !851, !psr.id !908
  %614 = shl i32 %613, 8, !dbg !851, !psr.id !909
  %615 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !851, !psr.id !910
  %616 = load i32, i32* %615, align 8, !dbg !851, !psr.id !911
  %617 = lshr i32 %616, 24, !dbg !851, !psr.id !912
  %618 = or i32 %614, %617, !dbg !851, !psr.id !913
  %619 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !851, !psr.id !914
  store i32 %618, i32* %619, align 8, !dbg !851, !psr.id !915
  %620 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !851, !psr.id !916
  %621 = load i32, i32* %620, align 8, !dbg !851, !psr.id !917
  %622 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !851, !psr.id !918
  %623 = load i32, i32* %622, align 4, !dbg !851, !psr.id !919
  %624 = add i32 %623, %621, !dbg !851, !psr.id !920
  store i32 %624, i32* %622, align 4, !dbg !851, !psr.id !921
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !851, !psr.id !922
  %626 = load i32, i32* %625, align 4, !dbg !851, !psr.id !923
  %627 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !851, !psr.id !924
  %628 = load i32, i32* %627, align 16, !dbg !851, !psr.id !925
  %629 = xor i32 %628, %626, !dbg !851, !psr.id !926
  store i32 %629, i32* %627, align 16, !dbg !851, !psr.id !927
  %630 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !851, !psr.id !928
  %631 = load i32, i32* %630, align 16, !dbg !851, !psr.id !929
  %632 = shl i32 %631, 7, !dbg !851, !psr.id !930
  %633 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !851, !psr.id !931
  %634 = load i32, i32* %633, align 16, !dbg !851, !psr.id !932
  %635 = lshr i32 %634, 25, !dbg !851, !psr.id !933
  %636 = or i32 %632, %635, !dbg !851, !psr.id !934
  %637 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !851, !psr.id !935
  store i32 %636, i32* %637, align 16, !dbg !851, !psr.id !936
  br label %638, !dbg !851, !psr.id !937

638:                                              ; preds = %565
  br label %639, !dbg !938, !psr.id !939

639:                                              ; preds = %638
  %640 = add nsw i32 %.0, 1, !dbg !940, !psr.id !941
  call void @llvm.dbg.value(metadata i32 %640, metadata !210, metadata !DIExpression()), !dbg !212, !psr.id !942
  br label %44, !dbg !943, !llvm.loop !944, !psr.id !946

641:                                              ; preds = %44
  call void @llvm.dbg.value(metadata i64 0, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !947
  br label %642, !dbg !948, !psr.id !950

642:                                              ; preds = %652, %641
  %.2 = phi i64 [ 0, %641 ], [ %653, %652 ], !dbg !951, !psr.id !952
  call void @llvm.dbg.value(metadata i64 %.2, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !953
  %643 = icmp ult i64 %.2, 4, !dbg !954, !psr.id !956
  br i1 %643, label %644, label %654, !dbg !957, !psr.id !958

644:                                              ; preds = %642
  %645 = shl i64 %.2, 2, !dbg !959, !psr.id !961
  %646 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %645, !dbg !962, !psr.id !963
  %647 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.2, !dbg !964, !psr.id !965
  %648 = load i32, i32* %647, align 4, !dbg !964, !psr.id !966
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 %.2, !dbg !967, !psr.id !968
  %650 = load i32, i32* %649, align 4, !dbg !967, !psr.id !969
  %651 = add i32 %648, %650, !dbg !970, !psr.id !971
  call void @br_enc32le(i8* %646, i32 %651), !dbg !972, !psr.id !973
  br label %652, !dbg !974, !psr.id !975

652:                                              ; preds = %644
  %653 = add i64 %.2, 1, !dbg !976, !psr.id !977
  call void @llvm.dbg.value(metadata i64 %653, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !978
  br label %642, !dbg !979, !llvm.loop !980, !psr.id !982

654:                                              ; preds = %642
  call void @llvm.dbg.value(metadata i64 4, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !983
  br label %655, !dbg !984, !psr.id !986

655:                                              ; preds = %666, %654
  %.3 = phi i64 [ 4, %654 ], [ %667, %666 ], !dbg !987, !psr.id !988
  call void @llvm.dbg.value(metadata i64 %.3, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !989
  %656 = icmp ult i64 %.3, 12, !dbg !990, !psr.id !992
  br i1 %656, label %657, label %668, !dbg !993, !psr.id !994

657:                                              ; preds = %655
  %658 = shl i64 %.3, 2, !dbg !995, !psr.id !997
  %659 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %658, !dbg !998, !psr.id !999
  %660 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.3, !dbg !1000, !psr.id !1001
  %661 = load i32, i32* %660, align 4, !dbg !1000, !psr.id !1002
  %662 = sub i64 %.3, 4, !dbg !1003, !psr.id !1004
  %663 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %662, !dbg !1005, !psr.id !1006
  %664 = load i32, i32* %663, align 4, !dbg !1005, !psr.id !1007, !ValueTainted !116
  %665 = add i32 %661, %664, !dbg !1008, !psr.id !1009, !ValueTainted !116
  call void @br_enc32le(i8* %659, i32 %665), !dbg !1010, !psr.id !1011
  br label %666, !dbg !1012, !psr.id !1013

666:                                              ; preds = %657
  %667 = add i64 %.3, 1, !dbg !1014, !psr.id !1015
  call void @llvm.dbg.value(metadata i64 %667, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !1016
  br label %655, !dbg !1017, !llvm.loop !1018, !psr.id !1020

668:                                              ; preds = %655
  %669 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 48, !dbg !1021, !psr.id !1022
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !1023, !psr.id !1024
  %671 = load i32, i32* %670, align 16, !dbg !1023, !psr.id !1025
  %672 = add i32 %671, %.02, !dbg !1026, !psr.id !1027
  call void @br_enc32le(i8* %669, i32 %672), !dbg !1028, !psr.id !1029
  call void @llvm.dbg.value(metadata i64 13, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !1030
  br label %673, !dbg !1031, !psr.id !1033

673:                                              ; preds = %684, %668
  %.4 = phi i64 [ 13, %668 ], [ %685, %684 ], !dbg !1034, !psr.id !1035
  call void @llvm.dbg.value(metadata i64 %.4, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !1036
  %674 = icmp ult i64 %.4, 16, !dbg !1037, !psr.id !1039
  br i1 %674, label %675, label %686, !dbg !1040, !psr.id !1041

675:                                              ; preds = %673
  %676 = shl i64 %.4, 2, !dbg !1042, !psr.id !1044
  %677 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %676, !dbg !1045, !psr.id !1046
  %678 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.4, !dbg !1047, !psr.id !1048
  %679 = load i32, i32* %678, align 4, !dbg !1047, !psr.id !1049
  %680 = sub i64 %.4, 13, !dbg !1050, !psr.id !1051
  %681 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %680, !dbg !1052, !psr.id !1053
  %682 = load i32, i32* %681, align 4, !dbg !1052, !psr.id !1054
  %683 = add i32 %679, %682, !dbg !1055, !psr.id !1056
  call void @br_enc32le(i8* %677, i32 %683), !dbg !1057, !psr.id !1058
  br label %684, !dbg !1059, !psr.id !1060

684:                                              ; preds = %675
  %685 = add i64 %.4, 1, !dbg !1061, !psr.id !1062
  call void @llvm.dbg.value(metadata i64 %685, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !1063
  br label %673, !dbg !1064, !llvm.loop !1065, !psr.id !1067

686:                                              ; preds = %673
  %687 = icmp ult i64 %.04, 64, !dbg !1068, !psr.id !1069
  br i1 %687, label %688, label %689, !dbg !1070, !psr.id !1071

688:                                              ; preds = %686
  br label %690, !dbg !1070, !psr.id !1072

689:                                              ; preds = %686
  br label %690, !dbg !1070, !psr.id !1073

690:                                              ; preds = %689, %688
  %691 = phi i64 [ %.04, %688 ], [ 64, %689 ], !dbg !1070, !psr.id !1074
  call void @llvm.dbg.value(metadata i64 %691, metadata !1075, metadata !DIExpression()), !dbg !212, !psr.id !1076
  call void @llvm.dbg.value(metadata i64 0, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !1077
  br label %692, !dbg !1078, !psr.id !1080

692:                                              ; preds = %703, %690
  %.5 = phi i64 [ 0, %690 ], [ %704, %703 ], !dbg !1081, !psr.id !1082
  call void @llvm.dbg.value(metadata i64 %.5, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !1083
  %693 = icmp ult i64 %.5, %691, !dbg !1084, !psr.id !1086
  br i1 %693, label %694, label %705, !dbg !1087, !psr.id !1088

694:                                              ; preds = %692
  %695 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %.5, !dbg !1089, !psr.id !1091
  %696 = load i8, i8* %695, align 1, !dbg !1089, !psr.id !1092, !ValueTainted !116
  %697 = zext i8 %696 to i32, !dbg !1089, !psr.id !1093, !ValueTainted !116
  %698 = getelementptr inbounds i8, i8* %.03, i64 %.5, !dbg !1094, !psr.id !1095, !PointTainted !113
  %699 = load i8, i8* %698, align 1, !dbg !1096, !psr.id !1097, !ValueTainted !116
  %700 = zext i8 %699 to i32, !dbg !1096, !psr.id !1098, !ValueTainted !116
  %701 = xor i32 %700, %697, !dbg !1096, !psr.id !1099, !ValueTainted !116
  %702 = trunc i32 %701 to i8, !dbg !1096, !psr.id !1100, !ValueTainted !116
  store i8 %702, i8* %698, align 1, !dbg !1096, !psr.id !1101
  br label %703, !dbg !1102, !psr.id !1103

703:                                              ; preds = %694
  %704 = add i64 %.5, 1, !dbg !1104, !psr.id !1105
  call void @llvm.dbg.value(metadata i64 %704, metadata !95, metadata !DIExpression()), !dbg !73, !psr.id !1106
  br label %692, !dbg !1107, !llvm.loop !1108, !psr.id !1110

705:                                              ; preds = %692
  %706 = getelementptr inbounds i8, i8* %.03, i64 %691, !dbg !1111, !psr.id !1112
  call void @llvm.dbg.value(metadata i8* %706, metadata !93, metadata !DIExpression()), !dbg !73, !psr.id !1113
  %707 = sub i64 %.04, %691, !dbg !1114, !psr.id !1115
  call void @llvm.dbg.value(metadata i64 %707, metadata !81, metadata !DIExpression()), !dbg !73, !psr.id !1116
  %708 = add i32 %.02, 1, !dbg !1117, !psr.id !1118
  call void @llvm.dbg.value(metadata i32 %708, metadata !77, metadata !DIExpression()), !dbg !73, !psr.id !1119
  br label %30, !dbg !163, !llvm.loop !1120, !psr.id !1122

709:                                              ; preds = %30
  ret i32 %.02, !dbg !1123, !psr.id !1124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !1125 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1128, metadata !DIExpression()), !dbg !1129, !psr.id !1130
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1131, !psr.id !1132, !PointTainted !113
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !1133, !psr.id !1134, !PointTainted !113
  %4 = load i32, i32* %3, align 4, !dbg !1133, !psr.id !1135, !ValueTainted !116
  ret i32 %4, !dbg !1136, !psr.id !1137
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* %0, i32 %1) #0 !dbg !1138 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1141, metadata !DIExpression()), !dbg !1142, !psr.id !1143
  call void @llvm.dbg.value(metadata i32 %1, metadata !1144, metadata !DIExpression()), !dbg !1142, !psr.id !1145
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1146, !psr.id !1147
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !1148, !psr.id !1149, !PointTainted !113
  store i32 %1, i32* %4, align 4, !dbg !1150, !psr.id !1151
  ret void, !dbg !1152, !psr.id !1153
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_poly1305_ctmul_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !1154 {
  %10 = alloca [32 x i8], align 16, !psr.id !1160
  %11 = alloca [16 x i8], align 16, !psr.id !1161
  %12 = alloca [5 x i32], align 16, !psr.id !1162
  %13 = alloca [5 x i32], align 16, !psr.id !1163
  call void @llvm.dbg.value(metadata i8* %0, metadata !1164, metadata !DIExpression()), !dbg !1165, !psr.id !1166
  call void @llvm.dbg.value(metadata i8* %1, metadata !1167, metadata !DIExpression()), !dbg !1165, !psr.id !1168
  call void @llvm.dbg.value(metadata i8* %2, metadata !1169, metadata !DIExpression()), !dbg !1165, !psr.id !1170
  call void @llvm.dbg.value(metadata i64 %3, metadata !1171, metadata !DIExpression()), !dbg !1165, !psr.id !1172
  call void @llvm.dbg.value(metadata i8* %4, metadata !1173, metadata !DIExpression()), !dbg !1165, !psr.id !1174
  call void @llvm.dbg.value(metadata i64 %5, metadata !1175, metadata !DIExpression()), !dbg !1165, !psr.id !1176
  call void @llvm.dbg.value(metadata i8* %6, metadata !1177, metadata !DIExpression()), !dbg !1165, !psr.id !1178
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !1179, metadata !DIExpression()), !dbg !1165, !psr.id !1180
  call void @llvm.dbg.value(metadata i32 %8, metadata !1181, metadata !DIExpression()), !dbg !1165, !psr.id !1182
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !1183, metadata !DIExpression()), !dbg !1187, !psr.id !1188
  call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !1189, metadata !DIExpression()), !dbg !1191, !psr.id !1192
  call void @llvm.dbg.declare(metadata [5 x i32]* %12, metadata !1193, metadata !DIExpression()), !dbg !1197, !psr.id !1198
  call void @llvm.dbg.declare(metadata [5 x i32]* %13, metadata !1199, metadata !DIExpression()), !dbg !1200, !psr.id !1201
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1202, !psr.id !1203
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false), !dbg !1202, !psr.id !1204
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1205, !psr.id !1206
  %16 = call i32 %7(i8* %0, i8* %1, i32 0, i8* %15, i64 32), !dbg !1207, !psr.id !1208
  %17 = icmp ne i32 %8, 0, !dbg !1209, !psr.id !1211
  br i1 %17, label %18, label %20, !dbg !1212, !psr.id !1213

18:                                               ; preds = %9
  %19 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !1214, !psr.id !1216
  br label %20, !dbg !1217, !psr.id !1218

20:                                               ; preds = %18, %9
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1219, !psr.id !1220
  %22 = call i32 @br_dec32le.1(i8* %21), !dbg !1221, !psr.id !1222, !ValueTainted !116
  %23 = and i32 %22, 67108863, !dbg !1223, !psr.id !1224, !ValueTainted !116
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !1225, !psr.id !1226
  store i32 %23, i32* %24, align 16, !dbg !1227, !psr.id !1228
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1229, !psr.id !1230
  %26 = getelementptr inbounds i8, i8* %25, i64 3, !dbg !1231, !psr.id !1232
  %27 = call i32 @br_dec32le.1(i8* %26), !dbg !1233, !psr.id !1234
  %28 = lshr i32 %27, 2, !dbg !1235, !psr.id !1236
  %29 = and i32 %28, 67108611, !dbg !1237, !psr.id !1238
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1, !dbg !1239, !psr.id !1240
  store i32 %29, i32* %30, align 4, !dbg !1241, !psr.id !1242
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1243, !psr.id !1244
  %32 = getelementptr inbounds i8, i8* %31, i64 6, !dbg !1245, !psr.id !1246
  %33 = call i32 @br_dec32le.1(i8* %32), !dbg !1247, !psr.id !1248
  %34 = lshr i32 %33, 4, !dbg !1249, !psr.id !1250
  %35 = and i32 %34, 67092735, !dbg !1251, !psr.id !1252
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 2, !dbg !1253, !psr.id !1254
  store i32 %35, i32* %36, align 8, !dbg !1255, !psr.id !1256
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1257, !psr.id !1258
  %38 = getelementptr inbounds i8, i8* %37, i64 9, !dbg !1259, !psr.id !1260
  %39 = call i32 @br_dec32le.1(i8* %38), !dbg !1261, !psr.id !1262
  %40 = lshr i32 %39, 6, !dbg !1263, !psr.id !1264
  %41 = and i32 %40, 66076671, !dbg !1265, !psr.id !1266
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3, !dbg !1267, !psr.id !1268
  store i32 %41, i32* %42, align 4, !dbg !1269, !psr.id !1270
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1271, !psr.id !1272
  %44 = getelementptr inbounds i8, i8* %43, i64 12, !dbg !1273, !psr.id !1274
  %45 = call i32 @br_dec32le.1(i8* %44), !dbg !1275, !psr.id !1276
  %46 = lshr i32 %45, 8, !dbg !1277, !psr.id !1278
  %47 = and i32 %46, 1048575, !dbg !1279, !psr.id !1280
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 4, !dbg !1281, !psr.id !1282
  store i32 %47, i32* %48, align 16, !dbg !1283, !psr.id !1284
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !1285, !psr.id !1286
  %50 = bitcast i32* %49 to i8*, !dbg !1285, !psr.id !1287
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 20, i1 false), !dbg !1285, !psr.id !1288
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !1289, !psr.id !1290
  call void @br_enc64le(i8* %51, i64 %5), !dbg !1291, !psr.id !1292
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !1293, !psr.id !1294
  %53 = getelementptr inbounds i8, i8* %52, i64 8, !dbg !1295, !psr.id !1296
  call void @br_enc64le(i8* %53, i64 %3), !dbg !1297, !psr.id !1298
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !1299, !psr.id !1300
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !1301, !psr.id !1302
  call void @poly1305_inner(i32* %54, i32* %55, i8* %4, i64 %5), !dbg !1303, !psr.id !1304
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !1305, !psr.id !1306
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !1307, !psr.id !1308
  call void @poly1305_inner(i32* %56, i32* %57, i8* %2, i64 %3), !dbg !1309, !psr.id !1310
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !1311, !psr.id !1312
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0, !dbg !1313, !psr.id !1314
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !1315, !psr.id !1316
  call void @poly1305_inner(i32* %58, i32* %59, i8* %60, i64 16), !dbg !1317, !psr.id !1318
  call void @llvm.dbg.value(metadata i32 0, metadata !1319, metadata !DIExpression()), !dbg !1165, !psr.id !1320
  call void @llvm.dbg.value(metadata i32 1, metadata !1321, metadata !DIExpression()), !dbg !1165, !psr.id !1322
  br label %61, !dbg !1323, !psr.id !1325

61:                                               ; preds = %82, %20
  %.02 = phi i32 [ 0, %20 ], [ %77, %82 ], !dbg !1165, !psr.id !1326, !ValueTainted !116
  %.0 = phi i32 [ 1, %20 ], [ %83, %82 ], !dbg !1327, !psr.id !1328
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1321, metadata !DIExpression()), !dbg !1165, !psr.id !1329
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1319, metadata !DIExpression()), !dbg !1165, !psr.id !1330
  %62 = icmp sle i32 %.0, 6, !dbg !1331, !psr.id !1333
  br i1 %62, label %63, label %84, !dbg !1334, !psr.id !1335

63:                                               ; preds = %61
  %64 = icmp sge i32 %.0, 5, !dbg !1336, !psr.id !1338
  br i1 %64, label %65, label %67, !dbg !1339, !psr.id !1340

65:                                               ; preds = %63
  %66 = sub nsw i32 %.0, 5, !dbg !1341, !psr.id !1342
  br label %68, !dbg !1339, !psr.id !1343

67:                                               ; preds = %63
  br label %68, !dbg !1339, !psr.id !1344

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ %.0, %67 ], !dbg !1339, !psr.id !1345
  call void @llvm.dbg.value(metadata i32 %69, metadata !1346, metadata !DIExpression()), !dbg !1347, !psr.id !1348
  %70 = sext i32 %69 to i64, !dbg !1349, !psr.id !1350
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %70, !dbg !1349, !psr.id !1351, !PointTainted !113
  %72 = load i32, i32* %71, align 4, !dbg !1352, !psr.id !1353, !ValueTainted !116
  %73 = add i32 %72, %.02, !dbg !1352, !psr.id !1354, !ValueTainted !116
  store i32 %73, i32* %71, align 4, !dbg !1352, !psr.id !1355
  %74 = sext i32 %69 to i64, !dbg !1356, !psr.id !1357
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %74, !dbg !1356, !psr.id !1358
  %76 = load i32, i32* %75, align 4, !dbg !1356, !psr.id !1359, !ValueTainted !116
  %77 = lshr i32 %76, 26, !dbg !1360, !psr.id !1361, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %77, metadata !1319, metadata !DIExpression()), !dbg !1165, !psr.id !1362
  %78 = sext i32 %69 to i64, !dbg !1363, !psr.id !1364
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %78, !dbg !1363, !psr.id !1365, !PointTainted !113
  %80 = load i32, i32* %79, align 4, !dbg !1366, !psr.id !1367, !ValueTainted !116
  %81 = and i32 %80, 67108863, !dbg !1366, !psr.id !1368, !ValueTainted !116
  store i32 %81, i32* %79, align 4, !dbg !1366, !psr.id !1369
  br label %82, !dbg !1370, !psr.id !1371

82:                                               ; preds = %68
  %83 = add nsw i32 %.0, 1, !dbg !1372, !psr.id !1373
  call void @llvm.dbg.value(metadata i32 %83, metadata !1321, metadata !DIExpression()), !dbg !1165, !psr.id !1374
  br label %61, !dbg !1375, !llvm.loop !1376, !psr.id !1378

84:                                               ; preds = %61
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !1379, !psr.id !1380
  %86 = load i32, i32* %85, align 16, !dbg !1379, !psr.id !1381, !ValueTainted !116
  %87 = call i32 @GT(i32 %86, i32 67108858), !dbg !1382, !psr.id !1383, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %87, metadata !1384, metadata !DIExpression()), !dbg !1165, !psr.id !1385
  call void @llvm.dbg.value(metadata i32 1, metadata !1321, metadata !DIExpression()), !dbg !1165, !psr.id !1386
  br label %88, !dbg !1387, !psr.id !1389

88:                                               ; preds = %96, %84
  %.01 = phi i32 [ %87, %84 ], [ %95, %96 ], !dbg !1165, !psr.id !1390, !ValueTainted !116
  %.1 = phi i32 [ 1, %84 ], [ %97, %96 ], !dbg !1391, !psr.id !1392
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1321, metadata !DIExpression()), !dbg !1165, !psr.id !1393
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1384, metadata !DIExpression()), !dbg !1165, !psr.id !1394
  %89 = icmp slt i32 %.1, 5, !dbg !1395, !psr.id !1397
  br i1 %89, label %90, label %98, !dbg !1398, !psr.id !1399

90:                                               ; preds = %88
  %91 = sext i32 %.1 to i64, !dbg !1400, !psr.id !1402
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %91, !dbg !1400, !psr.id !1403
  %93 = load i32, i32* %92, align 4, !dbg !1400, !psr.id !1404, !ValueTainted !116
  %94 = call i32 @EQ(i32 %93, i32 67108863), !dbg !1405, !psr.id !1406, !ValueTainted !116
  %95 = and i32 %.01, %94, !dbg !1407, !psr.id !1408, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %95, metadata !1384, metadata !DIExpression()), !dbg !1165, !psr.id !1409
  br label %96, !dbg !1410, !psr.id !1411

96:                                               ; preds = %90
  %97 = add nsw i32 %.1, 1, !dbg !1412, !psr.id !1413
  call void @llvm.dbg.value(metadata i32 %97, metadata !1321, metadata !DIExpression()), !dbg !1165, !psr.id !1414
  br label %88, !dbg !1415, !llvm.loop !1416, !psr.id !1418

98:                                               ; preds = %88
  call void @llvm.dbg.value(metadata i32 5, metadata !1319, metadata !DIExpression()), !dbg !1165, !psr.id !1419
  call void @llvm.dbg.value(metadata i32 0, metadata !1321, metadata !DIExpression()), !dbg !1165, !psr.id !1420
  br label %99, !dbg !1421, !psr.id !1423

99:                                               ; preds = %114, %98
  %.13 = phi i32 [ 5, %98 ], [ %106, %114 ], !dbg !1165, !psr.id !1424, !ValueTainted !116
  %.2 = phi i32 [ 0, %98 ], [ %115, %114 ], !dbg !1425, !psr.id !1426
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1321, metadata !DIExpression()), !dbg !1165, !psr.id !1427
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1319, metadata !DIExpression()), !dbg !1165, !psr.id !1428
  %100 = icmp slt i32 %.2, 5, !dbg !1429, !psr.id !1431
  br i1 %100, label %101, label %116, !dbg !1432, !psr.id !1433

101:                                              ; preds = %99
  %102 = sext i32 %.2 to i64, !dbg !1434, !psr.id !1436
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %102, !dbg !1434, !psr.id !1437
  %104 = load i32, i32* %103, align 4, !dbg !1434, !psr.id !1438, !ValueTainted !116
  %105 = add i32 %104, %.13, !dbg !1439, !psr.id !1440, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %105, metadata !1441, metadata !DIExpression()), !dbg !1442, !psr.id !1443
  %106 = lshr i32 %105, 26, !dbg !1444, !psr.id !1445, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %106, metadata !1319, metadata !DIExpression()), !dbg !1165, !psr.id !1446
  %107 = and i32 %105, 67108863, !dbg !1447, !psr.id !1448, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %107, metadata !1441, metadata !DIExpression()), !dbg !1442, !psr.id !1449
  %108 = sext i32 %.2 to i64, !dbg !1450, !psr.id !1451
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %108, !dbg !1450, !psr.id !1452
  %110 = load i32, i32* %109, align 4, !dbg !1450, !psr.id !1453, !ValueTainted !116
  %111 = call i32 @MUX(i32 %.01, i32 %107, i32 %110), !dbg !1454, !psr.id !1455, !ValueTainted !116
  %112 = sext i32 %.2 to i64, !dbg !1456, !psr.id !1457
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 %112, !dbg !1456, !psr.id !1458, !PointTainted !113
  store i32 %111, i32* %113, align 4, !dbg !1459, !psr.id !1460
  br label %114, !dbg !1461, !psr.id !1462

114:                                              ; preds = %101
  %115 = add nsw i32 %.2, 1, !dbg !1463, !psr.id !1464
  call void @llvm.dbg.value(metadata i32 %115, metadata !1321, metadata !DIExpression()), !dbg !1165, !psr.id !1465
  br label %99, !dbg !1466, !llvm.loop !1467, !psr.id !1469

116:                                              ; preds = %99
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0, !dbg !1470, !psr.id !1471
  %118 = load i32, i32* %117, align 16, !dbg !1470, !psr.id !1472, !ValueTainted !116
  %119 = zext i32 %118 to i64, !dbg !1473, !psr.id !1474, !ValueTainted !116
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 1, !dbg !1475, !psr.id !1476
  %121 = load i32, i32* %120, align 4, !dbg !1475, !psr.id !1477, !ValueTainted !116
  %122 = zext i32 %121 to i64, !dbg !1478, !psr.id !1479, !ValueTainted !116
  %123 = shl i64 %122, 26, !dbg !1480, !psr.id !1481, !ValueTainted !116
  %124 = add i64 %119, %123, !dbg !1482, !psr.id !1483, !ValueTainted !116
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1484, !psr.id !1485
  %126 = getelementptr inbounds i8, i8* %125, i64 16, !dbg !1486, !psr.id !1487
  %127 = call i32 @br_dec32le.1(i8* %126), !dbg !1488, !psr.id !1489
  %128 = zext i32 %127 to i64, !dbg !1488, !psr.id !1490
  %129 = add i64 %124, %128, !dbg !1491, !psr.id !1492, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1493, metadata !DIExpression()), !dbg !1165, !psr.id !1494
  %130 = trunc i64 %129 to i32, !dbg !1495, !psr.id !1496, !ValueTainted !116
  call void @br_enc32le.2(i8* %6, i32 %130), !dbg !1497, !psr.id !1498
  %131 = lshr i64 %129, 32, !dbg !1499, !psr.id !1500, !ValueTainted !116
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 2, !dbg !1501, !psr.id !1502
  %133 = load i32, i32* %132, align 8, !dbg !1501, !psr.id !1503, !ValueTainted !116
  %134 = zext i32 %133 to i64, !dbg !1504, !psr.id !1505, !ValueTainted !116
  %135 = shl i64 %134, 20, !dbg !1506, !psr.id !1507, !ValueTainted !116
  %136 = add i64 %131, %135, !dbg !1508, !psr.id !1509, !ValueTainted !116
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1510, !psr.id !1511
  %138 = getelementptr inbounds i8, i8* %137, i64 20, !dbg !1512, !psr.id !1513
  %139 = call i32 @br_dec32le.1(i8* %138), !dbg !1514, !psr.id !1515
  %140 = zext i32 %139 to i64, !dbg !1514, !psr.id !1516
  %141 = add i64 %136, %140, !dbg !1517, !psr.id !1518, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %141, metadata !1493, metadata !DIExpression()), !dbg !1165, !psr.id !1519
  %142 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1520, !psr.id !1521
  %143 = trunc i64 %141 to i32, !dbg !1522, !psr.id !1523, !ValueTainted !116
  call void @br_enc32le.2(i8* %142, i32 %143), !dbg !1524, !psr.id !1525
  %144 = lshr i64 %141, 32, !dbg !1526, !psr.id !1527, !ValueTainted !116
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3, !dbg !1528, !psr.id !1529
  %146 = load i32, i32* %145, align 4, !dbg !1528, !psr.id !1530, !ValueTainted !116
  %147 = zext i32 %146 to i64, !dbg !1531, !psr.id !1532, !ValueTainted !116
  %148 = shl i64 %147, 14, !dbg !1533, !psr.id !1534, !ValueTainted !116
  %149 = add i64 %144, %148, !dbg !1535, !psr.id !1536, !ValueTainted !116
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1537, !psr.id !1538
  %151 = getelementptr inbounds i8, i8* %150, i64 24, !dbg !1539, !psr.id !1540
  %152 = call i32 @br_dec32le.1(i8* %151), !dbg !1541, !psr.id !1542
  %153 = zext i32 %152 to i64, !dbg !1541, !psr.id !1543
  %154 = add i64 %149, %153, !dbg !1544, !psr.id !1545, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %154, metadata !1493, metadata !DIExpression()), !dbg !1165, !psr.id !1546
  %155 = getelementptr inbounds i8, i8* %6, i64 8, !dbg !1547, !psr.id !1548
  %156 = trunc i64 %154 to i32, !dbg !1549, !psr.id !1550, !ValueTainted !116
  call void @br_enc32le.2(i8* %155, i32 %156), !dbg !1551, !psr.id !1552
  %157 = lshr i64 %154, 32, !dbg !1553, !psr.id !1554, !ValueTainted !116
  %158 = trunc i64 %157 to i32, !dbg !1555, !psr.id !1556, !ValueTainted !116
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 4, !dbg !1557, !psr.id !1558
  %160 = load i32, i32* %159, align 16, !dbg !1557, !psr.id !1559, !ValueTainted !116
  %161 = shl i32 %160, 8, !dbg !1560, !psr.id !1561, !ValueTainted !116
  %162 = add i32 %158, %161, !dbg !1562, !psr.id !1563, !ValueTainted !116
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1564, !psr.id !1565
  %164 = getelementptr inbounds i8, i8* %163, i64 28, !dbg !1566, !psr.id !1567
  %165 = call i32 @br_dec32le.1(i8* %164), !dbg !1568, !psr.id !1569
  %166 = add i32 %162, %165, !dbg !1570, !psr.id !1571, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %166, metadata !1572, metadata !DIExpression()), !dbg !1165, !psr.id !1573
  %167 = getelementptr inbounds i8, i8* %6, i64 12, !dbg !1574, !psr.id !1575
  call void @br_enc32le.2(i8* %167, i32 %166), !dbg !1576, !psr.id !1577
  %168 = icmp ne i32 %8, 0, !dbg !1578, !psr.id !1580
  br i1 %168, label %171, label %169, !dbg !1581, !psr.id !1582

169:                                              ; preds = %116
  %170 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !1583, !psr.id !1585
  br label %171, !dbg !1586, !psr.id !1587

171:                                              ; preds = %169, %116
  ret void, !dbg !1588, !psr.id !1589
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le.1(i8* %0) #0 !dbg !1590 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1591, metadata !DIExpression()), !dbg !1592, !psr.id !1593
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1594, !psr.id !1595
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !1596, !psr.id !1597
  %4 = load i32, i32* %3, align 4, !dbg !1596, !psr.id !1598, !ValueTainted !116
  ret i32 %4, !dbg !1599, !psr.id !1600
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64le(i8* %0, i64 %1) #0 !dbg !1601 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1604, metadata !DIExpression()), !dbg !1605, !psr.id !1606
  call void @llvm.dbg.value(metadata i64 %1, metadata !1607, metadata !DIExpression()), !dbg !1605, !psr.id !1608
  %3 = bitcast i8* %0 to %union.br_union_u64*, !dbg !1609, !psr.id !1610
  %4 = bitcast %union.br_union_u64* %3 to i64*, !dbg !1611, !psr.id !1612
  store i64 %1, i64* %4, align 8, !dbg !1613, !psr.id !1614
  ret void, !dbg !1615, !psr.id !1616
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner(i32* %0, i32* %1, i8* %2, i64 %3) #0 !dbg !1617 {
  %5 = alloca [16 x i8], align 16, !psr.id !1622
  call void @llvm.dbg.value(metadata i32* %0, metadata !1623, metadata !DIExpression()), !dbg !1624, !psr.id !1625
  call void @llvm.dbg.value(metadata i32* %1, metadata !1626, metadata !DIExpression()), !dbg !1624, !psr.id !1627
  call void @llvm.dbg.value(metadata i8* %2, metadata !1628, metadata !DIExpression()), !dbg !1624, !psr.id !1629
  call void @llvm.dbg.value(metadata i64 %3, metadata !1630, metadata !DIExpression()), !dbg !1624, !psr.id !1631
  %6 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !1632, !psr.id !1633
  %7 = load i32, i32* %6, align 4, !dbg !1632, !psr.id !1634, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %7, metadata !1635, metadata !DIExpression()), !dbg !1624, !psr.id !1636
  %8 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !1637, !psr.id !1638
  %9 = load i32, i32* %8, align 4, !dbg !1637, !psr.id !1639, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %9, metadata !1640, metadata !DIExpression()), !dbg !1624, !psr.id !1641
  %10 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !1642, !psr.id !1643
  %11 = load i32, i32* %10, align 4, !dbg !1642, !psr.id !1644, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %11, metadata !1645, metadata !DIExpression()), !dbg !1624, !psr.id !1646
  %12 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !1647, !psr.id !1648
  %13 = load i32, i32* %12, align 4, !dbg !1647, !psr.id !1649, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %13, metadata !1650, metadata !DIExpression()), !dbg !1624, !psr.id !1651
  %14 = getelementptr inbounds i32, i32* %1, i64 4, !dbg !1652, !psr.id !1653
  %15 = load i32, i32* %14, align 4, !dbg !1652, !psr.id !1654, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %15, metadata !1655, metadata !DIExpression()), !dbg !1624, !psr.id !1656
  %16 = mul i32 %9, 5, !dbg !1657, !psr.id !1658, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %16, metadata !1659, metadata !DIExpression()), !dbg !1624, !psr.id !1660
  %17 = mul i32 %11, 5, !dbg !1661, !psr.id !1662, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %17, metadata !1663, metadata !DIExpression()), !dbg !1624, !psr.id !1664
  %18 = mul i32 %13, 5, !dbg !1665, !psr.id !1666, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %18, metadata !1667, metadata !DIExpression()), !dbg !1624, !psr.id !1668
  %19 = mul i32 %15, 5, !dbg !1669, !psr.id !1670, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %19, metadata !1671, metadata !DIExpression()), !dbg !1624, !psr.id !1672
  %20 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !1673, !psr.id !1674
  %21 = load i32, i32* %20, align 4, !dbg !1673, !psr.id !1675, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %21, metadata !1676, metadata !DIExpression()), !dbg !1624, !psr.id !1677
  %22 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1678, !psr.id !1679
  %23 = load i32, i32* %22, align 4, !dbg !1678, !psr.id !1680, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %23, metadata !1681, metadata !DIExpression()), !dbg !1624, !psr.id !1682
  %24 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1683, !psr.id !1684
  %25 = load i32, i32* %24, align 4, !dbg !1683, !psr.id !1685, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %25, metadata !1686, metadata !DIExpression()), !dbg !1624, !psr.id !1687
  %26 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1688, !psr.id !1689
  %27 = load i32, i32* %26, align 4, !dbg !1688, !psr.id !1690, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %27, metadata !1691, metadata !DIExpression()), !dbg !1624, !psr.id !1692
  %28 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !1693, !psr.id !1694
  %29 = load i32, i32* %28, align 4, !dbg !1693, !psr.id !1695, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %29, metadata !1696, metadata !DIExpression()), !dbg !1624, !psr.id !1697
  call void @llvm.dbg.value(metadata i8* %2, metadata !1698, metadata !DIExpression()), !dbg !1624, !psr.id !1699
  br label %30, !dbg !1700, !psr.id !1701

30:                                               ; preds = %38, %4
  %.07 = phi i32 [ %23, %4 ], [ %180, %38 ], !dbg !1624, !psr.id !1702, !ValueTainted !116
  %.06 = phi i32 [ %21, %4 ], [ %181, %38 ], !dbg !1624, !psr.id !1703, !ValueTainted !116
  %.04 = phi i8* [ %2, %4 ], [ %182, %38 ], !dbg !1624, !psr.id !1704
  %.03 = phi i64 [ %3, %4 ], [ %183, %38 ], !psr.id !1705
  %.02 = phi i32 [ %25, %4 ], [ %167, %38 ], !dbg !1624, !psr.id !1706, !ValueTainted !116
  %.01 = phi i32 [ %27, %4 ], [ %171, %38 ], !dbg !1624, !psr.id !1707, !ValueTainted !116
  %.0 = phi i32 [ %29, %4 ], [ %175, %38 ], !dbg !1624, !psr.id !1708, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1696, metadata !DIExpression()), !dbg !1624, !psr.id !1709
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1691, metadata !DIExpression()), !dbg !1624, !psr.id !1710
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1686, metadata !DIExpression()), !dbg !1624, !psr.id !1711
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1630, metadata !DIExpression()), !dbg !1624, !psr.id !1712
  call void @llvm.dbg.value(metadata i8* %.04, metadata !1698, metadata !DIExpression()), !dbg !1624, !psr.id !1713
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1676, metadata !DIExpression()), !dbg !1624, !psr.id !1714
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1681, metadata !DIExpression()), !dbg !1624, !psr.id !1715
  %31 = icmp ugt i64 %.03, 0, !dbg !1716, !psr.id !1717
  br i1 %31, label %32, label %184, !dbg !1700, !psr.id !1718

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !1719, metadata !DIExpression()), !dbg !1721, !psr.id !1722
  %33 = icmp ult i64 %.03, 16, !dbg !1723, !psr.id !1725
  br i1 %33, label %34, label %38, !dbg !1726, !psr.id !1727

34:                                               ; preds = %32
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1728, !psr.id !1730
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 16, i1 false), !dbg !1728, !psr.id !1731
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1732, !psr.id !1733
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 1 %.04, i64 %.03, i1 false), !dbg !1732, !psr.id !1734
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1735, !psr.id !1736
  call void @llvm.dbg.value(metadata i8* %37, metadata !1698, metadata !DIExpression()), !dbg !1624, !psr.id !1737
  call void @llvm.dbg.value(metadata i64 16, metadata !1630, metadata !DIExpression()), !dbg !1624, !psr.id !1738
  br label %38, !dbg !1739, !psr.id !1740

38:                                               ; preds = %34, %32
  %.15 = phi i8* [ %37, %34 ], [ %.04, %32 ], !dbg !1624, !psr.id !1741
  %.1 = phi i64 [ 16, %34 ], [ %.03, %32 ], !psr.id !1742
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1630, metadata !DIExpression()), !dbg !1624, !psr.id !1743
  call void @llvm.dbg.value(metadata i8* %.15, metadata !1698, metadata !DIExpression()), !dbg !1624, !psr.id !1744
  %39 = call i32 @br_dec32le.1(i8* %.15), !dbg !1745, !psr.id !1746
  %40 = and i32 %39, 67108863, !dbg !1747, !psr.id !1748
  %41 = add i32 %.06, %40, !dbg !1749, !psr.id !1750, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %41, metadata !1676, metadata !DIExpression()), !dbg !1624, !psr.id !1751
  %42 = getelementptr inbounds i8, i8* %.15, i64 3, !dbg !1752, !psr.id !1753
  %43 = call i32 @br_dec32le.1(i8* %42), !dbg !1754, !psr.id !1755
  %44 = lshr i32 %43, 2, !dbg !1756, !psr.id !1757
  %45 = and i32 %44, 67108863, !dbg !1758, !psr.id !1759
  %46 = add i32 %.07, %45, !dbg !1760, !psr.id !1761, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %46, metadata !1681, metadata !DIExpression()), !dbg !1624, !psr.id !1762
  %47 = getelementptr inbounds i8, i8* %.15, i64 6, !dbg !1763, !psr.id !1764
  %48 = call i32 @br_dec32le.1(i8* %47), !dbg !1765, !psr.id !1766
  %49 = lshr i32 %48, 4, !dbg !1767, !psr.id !1768
  %50 = and i32 %49, 67108863, !dbg !1769, !psr.id !1770
  %51 = add i32 %.02, %50, !dbg !1771, !psr.id !1772, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %51, metadata !1686, metadata !DIExpression()), !dbg !1624, !psr.id !1773
  %52 = getelementptr inbounds i8, i8* %.15, i64 9, !dbg !1774, !psr.id !1775
  %53 = call i32 @br_dec32le.1(i8* %52), !dbg !1776, !psr.id !1777
  %54 = lshr i32 %53, 6, !dbg !1778, !psr.id !1779
  %55 = and i32 %54, 67108863, !dbg !1780, !psr.id !1781
  %56 = add i32 %.01, %55, !dbg !1782, !psr.id !1783, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %56, metadata !1691, metadata !DIExpression()), !dbg !1624, !psr.id !1784
  %57 = getelementptr inbounds i8, i8* %.15, i64 12, !dbg !1785, !psr.id !1786
  %58 = call i32 @br_dec32le.1(i8* %57), !dbg !1787, !psr.id !1788
  %59 = lshr i32 %58, 8, !dbg !1789, !psr.id !1790
  %60 = or i32 %59, 16777216, !dbg !1791, !psr.id !1792
  %61 = add i32 %.0, %60, !dbg !1793, !psr.id !1794, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %61, metadata !1696, metadata !DIExpression()), !dbg !1624, !psr.id !1795
  %62 = zext i32 %41 to i64, !dbg !1796, !psr.id !1797, !ValueTainted !116
  %63 = zext i32 %7 to i64, !dbg !1796, !psr.id !1798, !ValueTainted !116
  %64 = mul i64 %62, %63, !dbg !1796, !psr.id !1799, !ValueTainted !116
  %65 = zext i32 %46 to i64, !dbg !1800, !psr.id !1801, !ValueTainted !116
  %66 = zext i32 %19 to i64, !dbg !1800, !psr.id !1802, !ValueTainted !116
  %67 = mul i64 %65, %66, !dbg !1800, !psr.id !1803, !ValueTainted !116
  %68 = add i64 %64, %67, !dbg !1804, !psr.id !1805, !ValueTainted !116
  %69 = zext i32 %51 to i64, !dbg !1806, !psr.id !1807, !ValueTainted !116
  %70 = zext i32 %18 to i64, !dbg !1806, !psr.id !1808, !ValueTainted !116
  %71 = mul i64 %69, %70, !dbg !1806, !psr.id !1809, !ValueTainted !116
  %72 = add i64 %68, %71, !dbg !1810, !psr.id !1811, !ValueTainted !116
  %73 = zext i32 %56 to i64, !dbg !1812, !psr.id !1813, !ValueTainted !116
  %74 = zext i32 %17 to i64, !dbg !1812, !psr.id !1814, !ValueTainted !116
  %75 = mul i64 %73, %74, !dbg !1812, !psr.id !1815, !ValueTainted !116
  %76 = add i64 %72, %75, !dbg !1816, !psr.id !1817, !ValueTainted !116
  %77 = zext i32 %61 to i64, !dbg !1818, !psr.id !1819, !ValueTainted !116
  %78 = zext i32 %16 to i64, !dbg !1818, !psr.id !1820, !ValueTainted !116
  %79 = mul i64 %77, %78, !dbg !1818, !psr.id !1821, !ValueTainted !116
  %80 = add i64 %76, %79, !dbg !1822, !psr.id !1823, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %80, metadata !1824, metadata !DIExpression()), !dbg !1825, !psr.id !1826
  %81 = zext i32 %41 to i64, !dbg !1827, !psr.id !1828, !ValueTainted !116
  %82 = zext i32 %9 to i64, !dbg !1827, !psr.id !1829, !ValueTainted !116
  %83 = mul i64 %81, %82, !dbg !1827, !psr.id !1830, !ValueTainted !116
  %84 = zext i32 %46 to i64, !dbg !1831, !psr.id !1832, !ValueTainted !116
  %85 = zext i32 %7 to i64, !dbg !1831, !psr.id !1833, !ValueTainted !116
  %86 = mul i64 %84, %85, !dbg !1831, !psr.id !1834, !ValueTainted !116
  %87 = add i64 %83, %86, !dbg !1835, !psr.id !1836, !ValueTainted !116
  %88 = zext i32 %51 to i64, !dbg !1837, !psr.id !1838, !ValueTainted !116
  %89 = zext i32 %19 to i64, !dbg !1837, !psr.id !1839, !ValueTainted !116
  %90 = mul i64 %88, %89, !dbg !1837, !psr.id !1840, !ValueTainted !116
  %91 = add i64 %87, %90, !dbg !1841, !psr.id !1842, !ValueTainted !116
  %92 = zext i32 %56 to i64, !dbg !1843, !psr.id !1844, !ValueTainted !116
  %93 = zext i32 %18 to i64, !dbg !1843, !psr.id !1845, !ValueTainted !116
  %94 = mul i64 %92, %93, !dbg !1843, !psr.id !1846, !ValueTainted !116
  %95 = add i64 %91, %94, !dbg !1847, !psr.id !1848, !ValueTainted !116
  %96 = zext i32 %61 to i64, !dbg !1849, !psr.id !1850, !ValueTainted !116
  %97 = zext i32 %17 to i64, !dbg !1849, !psr.id !1851, !ValueTainted !116
  %98 = mul i64 %96, %97, !dbg !1849, !psr.id !1852, !ValueTainted !116
  %99 = add i64 %95, %98, !dbg !1853, !psr.id !1854, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %99, metadata !1855, metadata !DIExpression()), !dbg !1825, !psr.id !1856
  %100 = zext i32 %41 to i64, !dbg !1857, !psr.id !1858, !ValueTainted !116
  %101 = zext i32 %11 to i64, !dbg !1857, !psr.id !1859, !ValueTainted !116
  %102 = mul i64 %100, %101, !dbg !1857, !psr.id !1860, !ValueTainted !116
  %103 = zext i32 %46 to i64, !dbg !1861, !psr.id !1862, !ValueTainted !116
  %104 = zext i32 %9 to i64, !dbg !1861, !psr.id !1863, !ValueTainted !116
  %105 = mul i64 %103, %104, !dbg !1861, !psr.id !1864, !ValueTainted !116
  %106 = add i64 %102, %105, !dbg !1865, !psr.id !1866, !ValueTainted !116
  %107 = zext i32 %51 to i64, !dbg !1867, !psr.id !1868, !ValueTainted !116
  %108 = zext i32 %7 to i64, !dbg !1867, !psr.id !1869, !ValueTainted !116
  %109 = mul i64 %107, %108, !dbg !1867, !psr.id !1870, !ValueTainted !116
  %110 = add i64 %106, %109, !dbg !1871, !psr.id !1872, !ValueTainted !116
  %111 = zext i32 %56 to i64, !dbg !1873, !psr.id !1874, !ValueTainted !116
  %112 = zext i32 %19 to i64, !dbg !1873, !psr.id !1875, !ValueTainted !116
  %113 = mul i64 %111, %112, !dbg !1873, !psr.id !1876, !ValueTainted !116
  %114 = add i64 %110, %113, !dbg !1877, !psr.id !1878, !ValueTainted !116
  %115 = zext i32 %61 to i64, !dbg !1879, !psr.id !1880, !ValueTainted !116
  %116 = zext i32 %18 to i64, !dbg !1879, !psr.id !1881, !ValueTainted !116
  %117 = mul i64 %115, %116, !dbg !1879, !psr.id !1882, !ValueTainted !116
  %118 = add i64 %114, %117, !dbg !1883, !psr.id !1884, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %118, metadata !1885, metadata !DIExpression()), !dbg !1825, !psr.id !1886
  %119 = zext i32 %41 to i64, !dbg !1887, !psr.id !1888, !ValueTainted !116
  %120 = zext i32 %13 to i64, !dbg !1887, !psr.id !1889, !ValueTainted !116
  %121 = mul i64 %119, %120, !dbg !1887, !psr.id !1890, !ValueTainted !116
  %122 = zext i32 %46 to i64, !dbg !1891, !psr.id !1892, !ValueTainted !116
  %123 = zext i32 %11 to i64, !dbg !1891, !psr.id !1893, !ValueTainted !116
  %124 = mul i64 %122, %123, !dbg !1891, !psr.id !1894, !ValueTainted !116
  %125 = add i64 %121, %124, !dbg !1895, !psr.id !1896, !ValueTainted !116
  %126 = zext i32 %51 to i64, !dbg !1897, !psr.id !1898, !ValueTainted !116
  %127 = zext i32 %9 to i64, !dbg !1897, !psr.id !1899, !ValueTainted !116
  %128 = mul i64 %126, %127, !dbg !1897, !psr.id !1900, !ValueTainted !116
  %129 = add i64 %125, %128, !dbg !1901, !psr.id !1902, !ValueTainted !116
  %130 = zext i32 %56 to i64, !dbg !1903, !psr.id !1904, !ValueTainted !116
  %131 = zext i32 %7 to i64, !dbg !1903, !psr.id !1905, !ValueTainted !116
  %132 = mul i64 %130, %131, !dbg !1903, !psr.id !1906, !ValueTainted !116
  %133 = add i64 %129, %132, !dbg !1907, !psr.id !1908, !ValueTainted !116
  %134 = zext i32 %61 to i64, !dbg !1909, !psr.id !1910, !ValueTainted !116
  %135 = zext i32 %19 to i64, !dbg !1909, !psr.id !1911, !ValueTainted !116
  %136 = mul i64 %134, %135, !dbg !1909, !psr.id !1912, !ValueTainted !116
  %137 = add i64 %133, %136, !dbg !1913, !psr.id !1914, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %137, metadata !1915, metadata !DIExpression()), !dbg !1825, !psr.id !1916
  %138 = zext i32 %41 to i64, !dbg !1917, !psr.id !1918, !ValueTainted !116
  %139 = zext i32 %15 to i64, !dbg !1917, !psr.id !1919, !ValueTainted !116
  %140 = mul i64 %138, %139, !dbg !1917, !psr.id !1920, !ValueTainted !116
  %141 = zext i32 %46 to i64, !dbg !1921, !psr.id !1922, !ValueTainted !116
  %142 = zext i32 %13 to i64, !dbg !1921, !psr.id !1923, !ValueTainted !116
  %143 = mul i64 %141, %142, !dbg !1921, !psr.id !1924, !ValueTainted !116
  %144 = add i64 %140, %143, !dbg !1925, !psr.id !1926, !ValueTainted !116
  %145 = zext i32 %51 to i64, !dbg !1927, !psr.id !1928, !ValueTainted !116
  %146 = zext i32 %11 to i64, !dbg !1927, !psr.id !1929, !ValueTainted !116
  %147 = mul i64 %145, %146, !dbg !1927, !psr.id !1930, !ValueTainted !116
  %148 = add i64 %144, %147, !dbg !1931, !psr.id !1932, !ValueTainted !116
  %149 = zext i32 %56 to i64, !dbg !1933, !psr.id !1934, !ValueTainted !116
  %150 = zext i32 %9 to i64, !dbg !1933, !psr.id !1935, !ValueTainted !116
  %151 = mul i64 %149, %150, !dbg !1933, !psr.id !1936, !ValueTainted !116
  %152 = add i64 %148, %151, !dbg !1937, !psr.id !1938, !ValueTainted !116
  %153 = zext i32 %61 to i64, !dbg !1939, !psr.id !1940, !ValueTainted !116
  %154 = zext i32 %7 to i64, !dbg !1939, !psr.id !1941, !ValueTainted !116
  %155 = mul i64 %153, %154, !dbg !1939, !psr.id !1942, !ValueTainted !116
  %156 = add i64 %152, %155, !dbg !1943, !psr.id !1944, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %156, metadata !1945, metadata !DIExpression()), !dbg !1825, !psr.id !1946
  %157 = lshr i64 %80, 26, !dbg !1947, !psr.id !1948, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %157, metadata !1949, metadata !DIExpression()), !dbg !1825, !psr.id !1950
  %158 = trunc i64 %80 to i32, !dbg !1951, !psr.id !1952, !ValueTainted !116
  %159 = and i32 %158, 67108863, !dbg !1953, !psr.id !1954, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %159, metadata !1676, metadata !DIExpression()), !dbg !1624, !psr.id !1955
  %160 = add i64 %99, %157, !dbg !1956, !psr.id !1957, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %160, metadata !1855, metadata !DIExpression()), !dbg !1825, !psr.id !1958
  %161 = lshr i64 %160, 26, !dbg !1959, !psr.id !1960, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %161, metadata !1949, metadata !DIExpression()), !dbg !1825, !psr.id !1961
  %162 = trunc i64 %160 to i32, !dbg !1962, !psr.id !1963, !ValueTainted !116
  %163 = and i32 %162, 67108863, !dbg !1964, !psr.id !1965, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %163, metadata !1681, metadata !DIExpression()), !dbg !1624, !psr.id !1966
  %164 = add i64 %118, %161, !dbg !1967, !psr.id !1968, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %164, metadata !1885, metadata !DIExpression()), !dbg !1825, !psr.id !1969
  %165 = lshr i64 %164, 26, !dbg !1970, !psr.id !1971, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %165, metadata !1949, metadata !DIExpression()), !dbg !1825, !psr.id !1972
  %166 = trunc i64 %164 to i32, !dbg !1973, !psr.id !1974, !ValueTainted !116
  %167 = and i32 %166, 67108863, !dbg !1975, !psr.id !1976, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %167, metadata !1686, metadata !DIExpression()), !dbg !1624, !psr.id !1977
  %168 = add i64 %137, %165, !dbg !1978, !psr.id !1979, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %168, metadata !1915, metadata !DIExpression()), !dbg !1825, !psr.id !1980
  %169 = lshr i64 %168, 26, !dbg !1981, !psr.id !1982, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %169, metadata !1949, metadata !DIExpression()), !dbg !1825, !psr.id !1983
  %170 = trunc i64 %168 to i32, !dbg !1984, !psr.id !1985, !ValueTainted !116
  %171 = and i32 %170, 67108863, !dbg !1986, !psr.id !1987, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %171, metadata !1691, metadata !DIExpression()), !dbg !1624, !psr.id !1988
  %172 = add i64 %156, %169, !dbg !1989, !psr.id !1990, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %172, metadata !1945, metadata !DIExpression()), !dbg !1825, !psr.id !1991
  %173 = lshr i64 %172, 26, !dbg !1992, !psr.id !1993, !ValueTainted !116
  call void @llvm.dbg.value(metadata i64 %173, metadata !1949, metadata !DIExpression()), !dbg !1825, !psr.id !1994
  %174 = trunc i64 %172 to i32, !dbg !1995, !psr.id !1996, !ValueTainted !116
  %175 = and i32 %174, 67108863, !dbg !1997, !psr.id !1998, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %175, metadata !1696, metadata !DIExpression()), !dbg !1624, !psr.id !1999
  %176 = trunc i64 %173 to i32, !dbg !2000, !psr.id !2001, !ValueTainted !116
  %177 = mul i32 %176, 5, !dbg !2002, !psr.id !2003, !ValueTainted !116
  %178 = add i32 %159, %177, !dbg !2004, !psr.id !2005, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %178, metadata !1676, metadata !DIExpression()), !dbg !1624, !psr.id !2006
  %179 = lshr i32 %178, 26, !dbg !2007, !psr.id !2008, !ValueTainted !116
  %180 = add i32 %163, %179, !dbg !2009, !psr.id !2010, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %180, metadata !1681, metadata !DIExpression()), !dbg !1624, !psr.id !2011
  %181 = and i32 %178, 67108863, !dbg !2012, !psr.id !2013, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %181, metadata !1676, metadata !DIExpression()), !dbg !1624, !psr.id !2014
  %182 = getelementptr inbounds i8, i8* %.15, i64 16, !dbg !2015, !psr.id !2016
  call void @llvm.dbg.value(metadata i8* %182, metadata !1698, metadata !DIExpression()), !dbg !1624, !psr.id !2017
  %183 = sub i64 %.1, 16, !dbg !2018, !psr.id !2019
  call void @llvm.dbg.value(metadata i64 %183, metadata !1630, metadata !DIExpression()), !dbg !1624, !psr.id !2020
  br label %30, !dbg !1700, !llvm.loop !2021, !psr.id !2023

184:                                              ; preds = %30
  %185 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !2024, !psr.id !2025, !PointTainted !113
  store i32 %.06, i32* %185, align 4, !dbg !2026, !psr.id !2027
  %186 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !2028, !psr.id !2029
  store i32 %.07, i32* %186, align 4, !dbg !2030, !psr.id !2031
  %187 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !2032, !psr.id !2033
  store i32 %.02, i32* %187, align 4, !dbg !2034, !psr.id !2035
  %188 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !2036, !psr.id !2037
  store i32 %.01, i32* %188, align 4, !dbg !2038, !psr.id !2039
  %189 = getelementptr inbounds i32, i32* %0, i64 4, !dbg !2040, !psr.id !2041
  store i32 %.0, i32* %189, align 4, !dbg !2042, !psr.id !2043
  ret void, !dbg !2044, !psr.id !2045
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !2046 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2049, metadata !DIExpression()), !dbg !2050, !psr.id !2051
  call void @llvm.dbg.value(metadata i32 %1, metadata !2052, metadata !DIExpression()), !dbg !2050, !psr.id !2053
  %3 = sub i32 %1, %0, !dbg !2054, !psr.id !2055, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %3, metadata !2056, metadata !DIExpression()), !dbg !2050, !psr.id !2057
  %4 = xor i32 %0, %1, !dbg !2058, !psr.id !2059, !ValueTainted !116
  %5 = xor i32 %0, %3, !dbg !2060, !psr.id !2061, !ValueTainted !116
  %6 = and i32 %4, %5, !dbg !2062, !psr.id !2063, !ValueTainted !116
  %7 = xor i32 %3, %6, !dbg !2064, !psr.id !2065, !ValueTainted !116
  %8 = lshr i32 %7, 31, !dbg !2066, !psr.id !2067, !ValueTainted !116
  ret i32 %8, !dbg !2068, !psr.id !2069
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !2070 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2071, metadata !DIExpression()), !dbg !2072, !psr.id !2073
  call void @llvm.dbg.value(metadata i32 %1, metadata !2074, metadata !DIExpression()), !dbg !2072, !psr.id !2075
  %3 = xor i32 %0, %1, !dbg !2076, !psr.id !2077, !ValueTainted !116
  call void @llvm.dbg.value(metadata i32 %3, metadata !2078, metadata !DIExpression()), !dbg !2072, !psr.id !2079
  %4 = sub i32 0, %3, !dbg !2080, !psr.id !2081, !ValueTainted !116
  %5 = or i32 %3, %4, !dbg !2082, !psr.id !2083, !ValueTainted !116
  %6 = lshr i32 %5, 31, !dbg !2084, !psr.id !2085, !ValueTainted !116
  %7 = call i32 @NOT(i32 %6), !dbg !2086, !psr.id !2087, !ValueTainted !116
  ret i32 %7, !dbg !2088, !psr.id !2089
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !2090 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2093, metadata !DIExpression()), !dbg !2094, !psr.id !2095
  call void @llvm.dbg.value(metadata i32 %1, metadata !2096, metadata !DIExpression()), !dbg !2094, !psr.id !2097
  call void @llvm.dbg.value(metadata i32 %2, metadata !2098, metadata !DIExpression()), !dbg !2094, !psr.id !2099
  %4 = sub i32 0, %0, !dbg !2100, !psr.id !2101, !ValueTainted !116
  %5 = xor i32 %1, %2, !dbg !2102, !psr.id !2103, !ValueTainted !116
  %6 = and i32 %4, %5, !dbg !2104, !psr.id !2105, !ValueTainted !116
  %7 = xor i32 %2, %6, !dbg !2106, !psr.id !2107, !ValueTainted !116
  ret i32 %7, !dbg !2108, !psr.id !2109
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le.2(i8* %0, i32 %1) #0 !dbg !2110 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()), !dbg !2112, !psr.id !2113
  call void @llvm.dbg.value(metadata i32 %1, metadata !2114, metadata !DIExpression()), !dbg !2112, !psr.id !2115
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !2116, !psr.id !2117
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !2118, !psr.id !2119
  store i32 %1, i32* %4, align 4, !dbg !2120, !psr.id !2121
  ret void, !dbg !2122, !psr.id !2123
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !2124 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2127, metadata !DIExpression()), !dbg !2128, !psr.id !2129
  %2 = xor i32 %0, 1, !dbg !2130, !psr.id !2131, !ValueTainted !116
  ret i32 %2, !dbg !2132, !psr.id !2133
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !2134 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()), !dbg !2136, !psr.id !2137
  call void @llvm.dbg.value(metadata i8* %1, metadata !2138, metadata !DIExpression()), !dbg !2136, !psr.id !2139
  call void @llvm.dbg.value(metadata i8* %2, metadata !2140, metadata !DIExpression()), !dbg !2136, !psr.id !2141
  call void @llvm.dbg.value(metadata i64 %3, metadata !2142, metadata !DIExpression()), !dbg !2136, !psr.id !2143
  call void @llvm.dbg.value(metadata i8* %4, metadata !2144, metadata !DIExpression()), !dbg !2136, !psr.id !2145
  call void @llvm.dbg.value(metadata i64 %5, metadata !2146, metadata !DIExpression()), !dbg !2136, !psr.id !2147
  call void @llvm.dbg.value(metadata i8* %6, metadata !2148, metadata !DIExpression()), !dbg !2136, !psr.id !2149
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !2150, metadata !DIExpression()), !dbg !2136, !psr.id !2151
  call void @llvm.dbg.value(metadata i32 %8, metadata !2152, metadata !DIExpression()), !dbg !2136, !psr.id !2153
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !2154, !psr.id !2155
  call void @public_in(%struct.smack_value* %10), !dbg !2156, !psr.id !2157
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !2158, !psr.id !2159
  call void @public_in(%struct.smack_value* %11), !dbg !2160, !psr.id !2161
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !2162, !psr.id !2163
  call void @public_in(%struct.smack_value* %12), !dbg !2164, !psr.id !2165
  %13 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !2166, !psr.id !2167
  call void @public_in(%struct.smack_value* %13), !dbg !2168, !psr.id !2169
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !2170, !psr.id !2171
  call void @public_in(%struct.smack_value* %14), !dbg !2172, !psr.id !2173
  %15 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %5), !dbg !2174, !psr.id !2175
  call void @public_in(%struct.smack_value* %15), !dbg !2176, !psr.id !2177
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !2178, !psr.id !2179
  call void @public_in(%struct.smack_value* %16), !dbg !2180, !psr.id !2181
  %17 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !2182, !psr.id !2183
  call void @public_in(%struct.smack_value* %17), !dbg !2184, !psr.id !2185
  %18 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !2186, !psr.id !2187
  call void @public_in(%struct.smack_value* %18), !dbg !2188, !psr.id !2189
  %19 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !2190, !psr.id !2191
  call void @public_in(%struct.smack_value* %19), !dbg !2192, !psr.id !2193
  %20 = call %struct.smack_value* (i8*, i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, i32, ...)*)(i8* %4, i32 32), !dbg !2194, !psr.id !2195
  call void @public_in(%struct.smack_value* %20), !dbg !2196, !psr.id !2197
  call void @br_poly1305_ctmul_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 %8), !dbg !2198, !psr.id !2199
  ret void, !dbg !2200, !psr.id !2201
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !2202 {
  %1 = call i8* (...) @getvoid1(), !dbg !2205, !psr.id !2206
  call void @llvm.dbg.value(metadata i8* %1, metadata !2207, metadata !DIExpression()), !dbg !2208, !psr.id !2209
  %2 = call i8* (...) @getvoid2(), !dbg !2210, !psr.id !2211
  call void @llvm.dbg.value(metadata i8* %2, metadata !2212, metadata !DIExpression()), !dbg !2208, !psr.id !2213
  %3 = call i8* (...) @getvoid5(), !dbg !2214, !psr.id !2215
  call void @llvm.dbg.value(metadata i8* %3, metadata !2216, metadata !DIExpression()), !dbg !2208, !psr.id !2217
  call void @llvm.dbg.value(metadata i64 32, metadata !2218, metadata !DIExpression()), !dbg !2208, !psr.id !2219
  %4 = call i8* (...) @getvoid3(), !dbg !2220, !psr.id !2221
  call void @llvm.dbg.value(metadata i8* %4, metadata !2222, metadata !DIExpression()), !dbg !2208, !psr.id !2223
  call void @llvm.dbg.value(metadata i64 32, metadata !2224, metadata !DIExpression()), !dbg !2208, !psr.id !2225
  %5 = call i8* (...) @getvoid6(), !dbg !2226, !psr.id !2227
  call void @llvm.dbg.value(metadata i8* %5, metadata !2228, metadata !DIExpression()), !dbg !2208, !psr.id !2229
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2208, !psr.id !2231
  call void @br_poly1305_ctmul_run(i8* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 1), !dbg !2232, !psr.id !2233
  ret void, !dbg !2234, !psr.id !2235
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

!llvm.dbg.cu = !{!17, !39, !62}
!llvm.ident = !{!64, !64, !64}
!llvm.module.flags = !{!65, !66, !67}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 36, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_ct_run", scope: !3, file: !3, line: 29, type: !4, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_ct.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmul_ChaCha20")
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
!26 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmul_ChaCha20")
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
!40 = !DIFile(filename: "../BearSSL/src/symcipher/poly1305_ctmul.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmul_ChaCha20")
!41 = !{!42, !44, !6, !45, !52, !61}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !16)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u32", file: !26, line: 480, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 477, size: 32, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !48, file: !26, line: 478, baseType: !6, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !48, file: !26, line: 479, baseType: !31, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u64", file: !26, line: 485, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 482, size: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !54, file: !26, line: 483, baseType: !42, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !54, file: !26, line: 484, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 8)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "run.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmul_ChaCha20")
!64 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!65 = !{i32 7, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{!"1"}
!69 = !{!"2"}
!70 = !{!"3"}
!71 = !{!"4"}
!72 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 29, type: !11)
!73 = !DILocation(line: 0, scope: !2)
!74 = !{!"5"}
!75 = !DILocalVariable(name: "iv", arg: 2, scope: !2, file: !3, line: 30, type: !11)
!76 = !{!"6"}
!77 = !DILocalVariable(name: "cc", arg: 3, scope: !2, file: !3, line: 30, type: !6)
!78 = !{!"7"}
!79 = !DILocalVariable(name: "data", arg: 4, scope: !2, file: !3, line: 30, type: !13)
!80 = !{!"8"}
!81 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 30, type: !14)
!82 = !{!"9"}
!83 = !DILocalVariable(name: "kw", scope: !2, file: !3, line: 33, type: !84)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !59)
!85 = !DILocation(line: 33, column: 11, scope: !2)
!86 = !{!"10"}
!87 = !DILocalVariable(name: "ivw", scope: !2, file: !3, line: 33, type: !88)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 3)
!91 = !DILocation(line: 33, column: 18, scope: !2)
!92 = !{!"11"}
!93 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 32, type: !44)
!94 = !{!"12"}
!95 = !DILocalVariable(name: "u", scope: !2, file: !3, line: 34, type: !14)
!96 = !{!"13"}
!97 = !DILocation(line: 41, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!99 = !{!"14"}
!100 = !DILocation(line: 0, scope: !98)
!101 = !{!"15"}
!102 = !{!"16"}
!103 = !DILocation(line: 41, column: 16, scope: !104)
!104 = distinct !DILexicalBlock(scope: !98, file: !3, line: 41, column: 2)
!105 = !{!"17"}
!106 = !DILocation(line: 41, column: 2, scope: !98)
!107 = !{!"18"}
!108 = !DILocation(line: 42, column: 54, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !3, line: 41, column: 27)
!110 = !{!"19"}
!111 = !DILocation(line: 42, column: 49, scope: !109)
!112 = !{!"20"}
!113 = !{!"PointTainted"}
!114 = !DILocation(line: 42, column: 11, scope: !109)
!115 = !{!"21"}
!116 = !{!"ValueTainted"}
!117 = !DILocation(line: 42, column: 3, scope: !109)
!118 = !{!"22"}
!119 = !DILocation(line: 42, column: 9, scope: !109)
!120 = !{!"23"}
!121 = !DILocation(line: 43, column: 2, scope: !109)
!122 = !{!"24"}
!123 = !DILocation(line: 41, column: 23, scope: !104)
!124 = !{!"25"}
!125 = !{!"26"}
!126 = !DILocation(line: 41, column: 2, scope: !104)
!127 = distinct !{!127, !106, !128, !129}
!128 = !DILocation(line: 43, column: 2, scope: !98)
!129 = !{!"llvm.loop.mustprogress"}
!130 = !{!"27"}
!131 = !{!"28"}
!132 = !DILocation(line: 44, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 2)
!134 = !{!"29"}
!135 = !DILocation(line: 0, scope: !133)
!136 = !{!"30"}
!137 = !{!"31"}
!138 = !DILocation(line: 44, column: 16, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !3, line: 44, column: 2)
!140 = !{!"32"}
!141 = !DILocation(line: 44, column: 2, scope: !133)
!142 = !{!"33"}
!143 = !DILocation(line: 45, column: 54, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 44, column: 27)
!145 = !{!"34"}
!146 = !DILocation(line: 45, column: 49, scope: !144)
!147 = !{!"35"}
!148 = !DILocation(line: 45, column: 12, scope: !144)
!149 = !{!"36"}
!150 = !DILocation(line: 45, column: 3, scope: !144)
!151 = !{!"37"}
!152 = !DILocation(line: 45, column: 10, scope: !144)
!153 = !{!"38"}
!154 = !DILocation(line: 46, column: 2, scope: !144)
!155 = !{!"39"}
!156 = !DILocation(line: 44, column: 23, scope: !139)
!157 = !{!"40"}
!158 = !{!"41"}
!159 = !DILocation(line: 44, column: 2, scope: !139)
!160 = distinct !{!160, !141, !161, !129}
!161 = !DILocation(line: 46, column: 2, scope: !133)
!162 = !{!"42"}
!163 = !DILocation(line: 47, column: 2, scope: !2)
!164 = !{!"43"}
!165 = !{!"44"}
!166 = !{!"45"}
!167 = !{!"46"}
!168 = !{!"47"}
!169 = !{!"48"}
!170 = !{!"49"}
!171 = !DILocation(line: 47, column: 13, scope: !2)
!172 = !{!"50"}
!173 = !{!"51"}
!174 = !DILocalVariable(name: "state", scope: !175, file: !3, line: 48, type: !176)
!175 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 18)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 16)
!179 = !DILocation(line: 48, column: 12, scope: !175)
!180 = !{!"52"}
!181 = !DILocalVariable(name: "tmp", scope: !175, file: !3, line: 51, type: !182)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 64)
!185 = !DILocation(line: 51, column: 17, scope: !175)
!186 = !{!"53"}
!187 = !DILocation(line: 53, column: 11, scope: !175)
!188 = !{!"54"}
!189 = !DILocation(line: 53, column: 3, scope: !175)
!190 = !{!"55"}
!191 = !{!"56"}
!192 = !DILocation(line: 54, column: 11, scope: !175)
!193 = !{!"57"}
!194 = !DILocation(line: 54, column: 3, scope: !175)
!195 = !{!"58"}
!196 = !{!"59"}
!197 = !{!"60"}
!198 = !{!"61"}
!199 = !DILocation(line: 55, column: 3, scope: !175)
!200 = !{!"62"}
!201 = !DILocation(line: 55, column: 13, scope: !175)
!202 = !{!"63"}
!203 = !DILocation(line: 56, column: 11, scope: !175)
!204 = !{!"64"}
!205 = !DILocation(line: 56, column: 3, scope: !175)
!206 = !{!"65"}
!207 = !{!"66"}
!208 = !{!"67"}
!209 = !{!"68"}
!210 = !DILocalVariable(name: "i", scope: !175, file: !3, line: 49, type: !211)
!211 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!212 = !DILocation(line: 0, scope: !175)
!213 = !{!"69"}
!214 = !DILocation(line: 57, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !175, file: !3, line: 57, column: 3)
!216 = !{!"70"}
!217 = !DILocation(line: 0, scope: !215)
!218 = !{!"71"}
!219 = !{!"72"}
!220 = !DILocation(line: 57, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !215, file: !3, line: 57, column: 3)
!222 = !{!"73"}
!223 = !DILocation(line: 57, column: 3, scope: !215)
!224 = !{!"74"}
!225 = !DILocation(line: 74, column: 4, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !3, line: 57, column: 29)
!227 = !{!"75"}
!228 = !DILocation(line: 74, column: 4, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 74, column: 4)
!230 = !{!"76"}
!231 = !{!"77"}
!232 = !{!"78"}
!233 = !{!"79"}
!234 = !{!"80"}
!235 = !{!"81"}
!236 = !{!"82"}
!237 = !{!"83"}
!238 = !{!"84"}
!239 = !{!"85"}
!240 = !{!"86"}
!241 = !{!"87"}
!242 = !{!"88"}
!243 = !{!"89"}
!244 = !{!"90"}
!245 = !{!"91"}
!246 = !{!"92"}
!247 = !{!"93"}
!248 = !{!"94"}
!249 = !{!"95"}
!250 = !{!"96"}
!251 = !{!"97"}
!252 = !{!"98"}
!253 = !{!"99"}
!254 = !{!"100"}
!255 = !{!"101"}
!256 = !{!"102"}
!257 = !{!"103"}
!258 = !{!"104"}
!259 = !{!"105"}
!260 = !{!"106"}
!261 = !{!"107"}
!262 = !{!"108"}
!263 = !{!"109"}
!264 = !{!"110"}
!265 = !{!"111"}
!266 = !{!"112"}
!267 = !{!"113"}
!268 = !{!"114"}
!269 = !{!"115"}
!270 = !{!"116"}
!271 = !{!"117"}
!272 = !{!"118"}
!273 = !{!"119"}
!274 = !{!"120"}
!275 = !{!"121"}
!276 = !{!"122"}
!277 = !{!"123"}
!278 = !{!"124"}
!279 = !{!"125"}
!280 = !{!"126"}
!281 = !{!"127"}
!282 = !{!"128"}
!283 = !{!"129"}
!284 = !{!"130"}
!285 = !{!"131"}
!286 = !{!"132"}
!287 = !{!"133"}
!288 = !{!"134"}
!289 = !{!"135"}
!290 = !{!"136"}
!291 = !{!"137"}
!292 = !{!"138"}
!293 = !{!"139"}
!294 = !{!"140"}
!295 = !{!"141"}
!296 = !{!"142"}
!297 = !{!"143"}
!298 = !{!"144"}
!299 = !{!"145"}
!300 = !{!"146"}
!301 = !{!"147"}
!302 = !{!"148"}
!303 = !{!"149"}
!304 = !{!"150"}
!305 = !{!"151"}
!306 = !{!"152"}
!307 = !{!"153"}
!308 = !{!"154"}
!309 = !{!"155"}
!310 = !{!"156"}
!311 = !{!"157"}
!312 = !{!"158"}
!313 = !{!"159"}
!314 = !{!"160"}
!315 = !DILocation(line: 75, column: 4, scope: !226)
!316 = !{!"161"}
!317 = !DILocation(line: 75, column: 4, scope: !318)
!318 = distinct !DILexicalBlock(scope: !226, file: !3, line: 75, column: 4)
!319 = !{!"162"}
!320 = !{!"163"}
!321 = !{!"164"}
!322 = !{!"165"}
!323 = !{!"166"}
!324 = !{!"167"}
!325 = !{!"168"}
!326 = !{!"169"}
!327 = !{!"170"}
!328 = !{!"171"}
!329 = !{!"172"}
!330 = !{!"173"}
!331 = !{!"174"}
!332 = !{!"175"}
!333 = !{!"176"}
!334 = !{!"177"}
!335 = !{!"178"}
!336 = !{!"179"}
!337 = !{!"180"}
!338 = !{!"181"}
!339 = !{!"182"}
!340 = !{!"183"}
!341 = !{!"184"}
!342 = !{!"185"}
!343 = !{!"186"}
!344 = !{!"187"}
!345 = !{!"188"}
!346 = !{!"189"}
!347 = !{!"190"}
!348 = !{!"191"}
!349 = !{!"192"}
!350 = !{!"193"}
!351 = !{!"194"}
!352 = !{!"195"}
!353 = !{!"196"}
!354 = !{!"197"}
!355 = !{!"198"}
!356 = !{!"199"}
!357 = !{!"200"}
!358 = !{!"201"}
!359 = !{!"202"}
!360 = !{!"203"}
!361 = !{!"204"}
!362 = !{!"205"}
!363 = !{!"206"}
!364 = !{!"207"}
!365 = !{!"208"}
!366 = !{!"209"}
!367 = !{!"210"}
!368 = !{!"211"}
!369 = !{!"212"}
!370 = !{!"213"}
!371 = !{!"214"}
!372 = !{!"215"}
!373 = !{!"216"}
!374 = !{!"217"}
!375 = !{!"218"}
!376 = !{!"219"}
!377 = !{!"220"}
!378 = !{!"221"}
!379 = !{!"222"}
!380 = !{!"223"}
!381 = !{!"224"}
!382 = !{!"225"}
!383 = !{!"226"}
!384 = !{!"227"}
!385 = !{!"228"}
!386 = !{!"229"}
!387 = !{!"230"}
!388 = !{!"231"}
!389 = !{!"232"}
!390 = !{!"233"}
!391 = !{!"234"}
!392 = !{!"235"}
!393 = !{!"236"}
!394 = !{!"237"}
!395 = !{!"238"}
!396 = !{!"239"}
!397 = !{!"240"}
!398 = !{!"241"}
!399 = !{!"242"}
!400 = !{!"243"}
!401 = !{!"244"}
!402 = !{!"245"}
!403 = !{!"246"}
!404 = !DILocation(line: 76, column: 4, scope: !226)
!405 = !{!"247"}
!406 = !DILocation(line: 76, column: 4, scope: !407)
!407 = distinct !DILexicalBlock(scope: !226, file: !3, line: 76, column: 4)
!408 = !{!"248"}
!409 = !{!"249"}
!410 = !{!"250"}
!411 = !{!"251"}
!412 = !{!"252"}
!413 = !{!"253"}
!414 = !{!"254"}
!415 = !{!"255"}
!416 = !{!"256"}
!417 = !{!"257"}
!418 = !{!"258"}
!419 = !{!"259"}
!420 = !{!"260"}
!421 = !{!"261"}
!422 = !{!"262"}
!423 = !{!"263"}
!424 = !{!"264"}
!425 = !{!"265"}
!426 = !{!"266"}
!427 = !{!"267"}
!428 = !{!"268"}
!429 = !{!"269"}
!430 = !{!"270"}
!431 = !{!"271"}
!432 = !{!"272"}
!433 = !{!"273"}
!434 = !{!"274"}
!435 = !{!"275"}
!436 = !{!"276"}
!437 = !{!"277"}
!438 = !{!"278"}
!439 = !{!"279"}
!440 = !{!"280"}
!441 = !{!"281"}
!442 = !{!"282"}
!443 = !{!"283"}
!444 = !{!"284"}
!445 = !{!"285"}
!446 = !{!"286"}
!447 = !{!"287"}
!448 = !{!"288"}
!449 = !{!"289"}
!450 = !{!"290"}
!451 = !{!"291"}
!452 = !{!"292"}
!453 = !{!"293"}
!454 = !{!"294"}
!455 = !{!"295"}
!456 = !{!"296"}
!457 = !{!"297"}
!458 = !{!"298"}
!459 = !{!"299"}
!460 = !{!"300"}
!461 = !{!"301"}
!462 = !{!"302"}
!463 = !{!"303"}
!464 = !{!"304"}
!465 = !{!"305"}
!466 = !{!"306"}
!467 = !{!"307"}
!468 = !{!"308"}
!469 = !{!"309"}
!470 = !{!"310"}
!471 = !{!"311"}
!472 = !{!"312"}
!473 = !{!"313"}
!474 = !{!"314"}
!475 = !{!"315"}
!476 = !{!"316"}
!477 = !{!"317"}
!478 = !{!"318"}
!479 = !{!"319"}
!480 = !{!"320"}
!481 = !{!"321"}
!482 = !{!"322"}
!483 = !{!"323"}
!484 = !{!"324"}
!485 = !{!"325"}
!486 = !{!"326"}
!487 = !{!"327"}
!488 = !{!"328"}
!489 = !{!"329"}
!490 = !{!"330"}
!491 = !{!"331"}
!492 = !{!"332"}
!493 = !DILocation(line: 77, column: 4, scope: !226)
!494 = !{!"333"}
!495 = !DILocation(line: 77, column: 4, scope: !496)
!496 = distinct !DILexicalBlock(scope: !226, file: !3, line: 77, column: 4)
!497 = !{!"334"}
!498 = !{!"335"}
!499 = !{!"336"}
!500 = !{!"337"}
!501 = !{!"338"}
!502 = !{!"339"}
!503 = !{!"340"}
!504 = !{!"341"}
!505 = !{!"342"}
!506 = !{!"343"}
!507 = !{!"344"}
!508 = !{!"345"}
!509 = !{!"346"}
!510 = !{!"347"}
!511 = !{!"348"}
!512 = !{!"349"}
!513 = !{!"350"}
!514 = !{!"351"}
!515 = !{!"352"}
!516 = !{!"353"}
!517 = !{!"354"}
!518 = !{!"355"}
!519 = !{!"356"}
!520 = !{!"357"}
!521 = !{!"358"}
!522 = !{!"359"}
!523 = !{!"360"}
!524 = !{!"361"}
!525 = !{!"362"}
!526 = !{!"363"}
!527 = !{!"364"}
!528 = !{!"365"}
!529 = !{!"366"}
!530 = !{!"367"}
!531 = !{!"368"}
!532 = !{!"369"}
!533 = !{!"370"}
!534 = !{!"371"}
!535 = !{!"372"}
!536 = !{!"373"}
!537 = !{!"374"}
!538 = !{!"375"}
!539 = !{!"376"}
!540 = !{!"377"}
!541 = !{!"378"}
!542 = !{!"379"}
!543 = !{!"380"}
!544 = !{!"381"}
!545 = !{!"382"}
!546 = !{!"383"}
!547 = !{!"384"}
!548 = !{!"385"}
!549 = !{!"386"}
!550 = !{!"387"}
!551 = !{!"388"}
!552 = !{!"389"}
!553 = !{!"390"}
!554 = !{!"391"}
!555 = !{!"392"}
!556 = !{!"393"}
!557 = !{!"394"}
!558 = !{!"395"}
!559 = !{!"396"}
!560 = !{!"397"}
!561 = !{!"398"}
!562 = !{!"399"}
!563 = !{!"400"}
!564 = !{!"401"}
!565 = !{!"402"}
!566 = !{!"403"}
!567 = !{!"404"}
!568 = !{!"405"}
!569 = !{!"406"}
!570 = !{!"407"}
!571 = !{!"408"}
!572 = !{!"409"}
!573 = !{!"410"}
!574 = !{!"411"}
!575 = !{!"412"}
!576 = !{!"413"}
!577 = !{!"414"}
!578 = !{!"415"}
!579 = !{!"416"}
!580 = !{!"417"}
!581 = !{!"418"}
!582 = !DILocation(line: 78, column: 4, scope: !226)
!583 = !{!"419"}
!584 = !DILocation(line: 78, column: 4, scope: !585)
!585 = distinct !DILexicalBlock(scope: !226, file: !3, line: 78, column: 4)
!586 = !{!"420"}
!587 = !{!"421"}
!588 = !{!"422"}
!589 = !{!"423"}
!590 = !{!"424"}
!591 = !{!"425"}
!592 = !{!"426"}
!593 = !{!"427"}
!594 = !{!"428"}
!595 = !{!"429"}
!596 = !{!"430"}
!597 = !{!"431"}
!598 = !{!"432"}
!599 = !{!"433"}
!600 = !{!"434"}
!601 = !{!"435"}
!602 = !{!"436"}
!603 = !{!"437"}
!604 = !{!"438"}
!605 = !{!"439"}
!606 = !{!"440"}
!607 = !{!"441"}
!608 = !{!"442"}
!609 = !{!"443"}
!610 = !{!"444"}
!611 = !{!"445"}
!612 = !{!"446"}
!613 = !{!"447"}
!614 = !{!"448"}
!615 = !{!"449"}
!616 = !{!"450"}
!617 = !{!"451"}
!618 = !{!"452"}
!619 = !{!"453"}
!620 = !{!"454"}
!621 = !{!"455"}
!622 = !{!"456"}
!623 = !{!"457"}
!624 = !{!"458"}
!625 = !{!"459"}
!626 = !{!"460"}
!627 = !{!"461"}
!628 = !{!"462"}
!629 = !{!"463"}
!630 = !{!"464"}
!631 = !{!"465"}
!632 = !{!"466"}
!633 = !{!"467"}
!634 = !{!"468"}
!635 = !{!"469"}
!636 = !{!"470"}
!637 = !{!"471"}
!638 = !{!"472"}
!639 = !{!"473"}
!640 = !{!"474"}
!641 = !{!"475"}
!642 = !{!"476"}
!643 = !{!"477"}
!644 = !{!"478"}
!645 = !{!"479"}
!646 = !{!"480"}
!647 = !{!"481"}
!648 = !{!"482"}
!649 = !{!"483"}
!650 = !{!"484"}
!651 = !{!"485"}
!652 = !{!"486"}
!653 = !{!"487"}
!654 = !{!"488"}
!655 = !{!"489"}
!656 = !{!"490"}
!657 = !{!"491"}
!658 = !{!"492"}
!659 = !{!"493"}
!660 = !{!"494"}
!661 = !{!"495"}
!662 = !{!"496"}
!663 = !{!"497"}
!664 = !{!"498"}
!665 = !{!"499"}
!666 = !{!"500"}
!667 = !{!"501"}
!668 = !{!"502"}
!669 = !{!"503"}
!670 = !{!"504"}
!671 = !DILocation(line: 79, column: 4, scope: !226)
!672 = !{!"505"}
!673 = !DILocation(line: 79, column: 4, scope: !674)
!674 = distinct !DILexicalBlock(scope: !226, file: !3, line: 79, column: 4)
!675 = !{!"506"}
!676 = !{!"507"}
!677 = !{!"508"}
!678 = !{!"509"}
!679 = !{!"510"}
!680 = !{!"511"}
!681 = !{!"512"}
!682 = !{!"513"}
!683 = !{!"514"}
!684 = !{!"515"}
!685 = !{!"516"}
!686 = !{!"517"}
!687 = !{!"518"}
!688 = !{!"519"}
!689 = !{!"520"}
!690 = !{!"521"}
!691 = !{!"522"}
!692 = !{!"523"}
!693 = !{!"524"}
!694 = !{!"525"}
!695 = !{!"526"}
!696 = !{!"527"}
!697 = !{!"528"}
!698 = !{!"529"}
!699 = !{!"530"}
!700 = !{!"531"}
!701 = !{!"532"}
!702 = !{!"533"}
!703 = !{!"534"}
!704 = !{!"535"}
!705 = !{!"536"}
!706 = !{!"537"}
!707 = !{!"538"}
!708 = !{!"539"}
!709 = !{!"540"}
!710 = !{!"541"}
!711 = !{!"542"}
!712 = !{!"543"}
!713 = !{!"544"}
!714 = !{!"545"}
!715 = !{!"546"}
!716 = !{!"547"}
!717 = !{!"548"}
!718 = !{!"549"}
!719 = !{!"550"}
!720 = !{!"551"}
!721 = !{!"552"}
!722 = !{!"553"}
!723 = !{!"554"}
!724 = !{!"555"}
!725 = !{!"556"}
!726 = !{!"557"}
!727 = !{!"558"}
!728 = !{!"559"}
!729 = !{!"560"}
!730 = !{!"561"}
!731 = !{!"562"}
!732 = !{!"563"}
!733 = !{!"564"}
!734 = !{!"565"}
!735 = !{!"566"}
!736 = !{!"567"}
!737 = !{!"568"}
!738 = !{!"569"}
!739 = !{!"570"}
!740 = !{!"571"}
!741 = !{!"572"}
!742 = !{!"573"}
!743 = !{!"574"}
!744 = !{!"575"}
!745 = !{!"576"}
!746 = !{!"577"}
!747 = !{!"578"}
!748 = !{!"579"}
!749 = !{!"580"}
!750 = !{!"581"}
!751 = !{!"582"}
!752 = !{!"583"}
!753 = !{!"584"}
!754 = !{!"585"}
!755 = !{!"586"}
!756 = !{!"587"}
!757 = !{!"588"}
!758 = !{!"589"}
!759 = !{!"590"}
!760 = !DILocation(line: 80, column: 4, scope: !226)
!761 = !{!"591"}
!762 = !DILocation(line: 80, column: 4, scope: !763)
!763 = distinct !DILexicalBlock(scope: !226, file: !3, line: 80, column: 4)
!764 = !{!"592"}
!765 = !{!"593"}
!766 = !{!"594"}
!767 = !{!"595"}
!768 = !{!"596"}
!769 = !{!"597"}
!770 = !{!"598"}
!771 = !{!"599"}
!772 = !{!"600"}
!773 = !{!"601"}
!774 = !{!"602"}
!775 = !{!"603"}
!776 = !{!"604"}
!777 = !{!"605"}
!778 = !{!"606"}
!779 = !{!"607"}
!780 = !{!"608"}
!781 = !{!"609"}
!782 = !{!"610"}
!783 = !{!"611"}
!784 = !{!"612"}
!785 = !{!"613"}
!786 = !{!"614"}
!787 = !{!"615"}
!788 = !{!"616"}
!789 = !{!"617"}
!790 = !{!"618"}
!791 = !{!"619"}
!792 = !{!"620"}
!793 = !{!"621"}
!794 = !{!"622"}
!795 = !{!"623"}
!796 = !{!"624"}
!797 = !{!"625"}
!798 = !{!"626"}
!799 = !{!"627"}
!800 = !{!"628"}
!801 = !{!"629"}
!802 = !{!"630"}
!803 = !{!"631"}
!804 = !{!"632"}
!805 = !{!"633"}
!806 = !{!"634"}
!807 = !{!"635"}
!808 = !{!"636"}
!809 = !{!"637"}
!810 = !{!"638"}
!811 = !{!"639"}
!812 = !{!"640"}
!813 = !{!"641"}
!814 = !{!"642"}
!815 = !{!"643"}
!816 = !{!"644"}
!817 = !{!"645"}
!818 = !{!"646"}
!819 = !{!"647"}
!820 = !{!"648"}
!821 = !{!"649"}
!822 = !{!"650"}
!823 = !{!"651"}
!824 = !{!"652"}
!825 = !{!"653"}
!826 = !{!"654"}
!827 = !{!"655"}
!828 = !{!"656"}
!829 = !{!"657"}
!830 = !{!"658"}
!831 = !{!"659"}
!832 = !{!"660"}
!833 = !{!"661"}
!834 = !{!"662"}
!835 = !{!"663"}
!836 = !{!"664"}
!837 = !{!"665"}
!838 = !{!"666"}
!839 = !{!"667"}
!840 = !{!"668"}
!841 = !{!"669"}
!842 = !{!"670"}
!843 = !{!"671"}
!844 = !{!"672"}
!845 = !{!"673"}
!846 = !{!"674"}
!847 = !{!"675"}
!848 = !{!"676"}
!849 = !DILocation(line: 81, column: 4, scope: !226)
!850 = !{!"677"}
!851 = !DILocation(line: 81, column: 4, scope: !852)
!852 = distinct !DILexicalBlock(scope: !226, file: !3, line: 81, column: 4)
!853 = !{!"678"}
!854 = !{!"679"}
!855 = !{!"680"}
!856 = !{!"681"}
!857 = !{!"682"}
!858 = !{!"683"}
!859 = !{!"684"}
!860 = !{!"685"}
!861 = !{!"686"}
!862 = !{!"687"}
!863 = !{!"688"}
!864 = !{!"689"}
!865 = !{!"690"}
!866 = !{!"691"}
!867 = !{!"692"}
!868 = !{!"693"}
!869 = !{!"694"}
!870 = !{!"695"}
!871 = !{!"696"}
!872 = !{!"697"}
!873 = !{!"698"}
!874 = !{!"699"}
!875 = !{!"700"}
!876 = !{!"701"}
!877 = !{!"702"}
!878 = !{!"703"}
!879 = !{!"704"}
!880 = !{!"705"}
!881 = !{!"706"}
!882 = !{!"707"}
!883 = !{!"708"}
!884 = !{!"709"}
!885 = !{!"710"}
!886 = !{!"711"}
!887 = !{!"712"}
!888 = !{!"713"}
!889 = !{!"714"}
!890 = !{!"715"}
!891 = !{!"716"}
!892 = !{!"717"}
!893 = !{!"718"}
!894 = !{!"719"}
!895 = !{!"720"}
!896 = !{!"721"}
!897 = !{!"722"}
!898 = !{!"723"}
!899 = !{!"724"}
!900 = !{!"725"}
!901 = !{!"726"}
!902 = !{!"727"}
!903 = !{!"728"}
!904 = !{!"729"}
!905 = !{!"730"}
!906 = !{!"731"}
!907 = !{!"732"}
!908 = !{!"733"}
!909 = !{!"734"}
!910 = !{!"735"}
!911 = !{!"736"}
!912 = !{!"737"}
!913 = !{!"738"}
!914 = !{!"739"}
!915 = !{!"740"}
!916 = !{!"741"}
!917 = !{!"742"}
!918 = !{!"743"}
!919 = !{!"744"}
!920 = !{!"745"}
!921 = !{!"746"}
!922 = !{!"747"}
!923 = !{!"748"}
!924 = !{!"749"}
!925 = !{!"750"}
!926 = !{!"751"}
!927 = !{!"752"}
!928 = !{!"753"}
!929 = !{!"754"}
!930 = !{!"755"}
!931 = !{!"756"}
!932 = !{!"757"}
!933 = !{!"758"}
!934 = !{!"759"}
!935 = !{!"760"}
!936 = !{!"761"}
!937 = !{!"762"}
!938 = !DILocation(line: 85, column: 3, scope: !226)
!939 = !{!"763"}
!940 = !DILocation(line: 57, column: 25, scope: !221)
!941 = !{!"764"}
!942 = !{!"765"}
!943 = !DILocation(line: 57, column: 3, scope: !221)
!944 = distinct !{!944, !223, !945, !129}
!945 = !DILocation(line: 85, column: 3, scope: !215)
!946 = !{!"766"}
!947 = !{!"767"}
!948 = !DILocation(line: 86, column: 8, scope: !949)
!949 = distinct !DILexicalBlock(scope: !175, file: !3, line: 86, column: 3)
!950 = !{!"768"}
!951 = !DILocation(line: 0, scope: !949)
!952 = !{!"769"}
!953 = !{!"770"}
!954 = !DILocation(line: 86, column: 17, scope: !955)
!955 = distinct !DILexicalBlock(scope: !949, file: !3, line: 86, column: 3)
!956 = !{!"771"}
!957 = !DILocation(line: 86, column: 3, scope: !949)
!958 = !{!"772"}
!959 = !DILocation(line: 87, column: 22, scope: !960)
!960 = distinct !DILexicalBlock(scope: !955, file: !3, line: 86, column: 28)
!961 = !{!"773"}
!962 = !DILocation(line: 87, column: 16, scope: !960)
!963 = !{!"774"}
!964 = !DILocation(line: 87, column: 29, scope: !960)
!965 = !{!"775"}
!966 = !{!"776"}
!967 = !DILocation(line: 87, column: 40, scope: !960)
!968 = !{!"777"}
!969 = !{!"778"}
!970 = !DILocation(line: 87, column: 38, scope: !960)
!971 = !{!"779"}
!972 = !DILocation(line: 87, column: 4, scope: !960)
!973 = !{!"780"}
!974 = !DILocation(line: 88, column: 3, scope: !960)
!975 = !{!"781"}
!976 = !DILocation(line: 86, column: 24, scope: !955)
!977 = !{!"782"}
!978 = !{!"783"}
!979 = !DILocation(line: 86, column: 3, scope: !955)
!980 = distinct !{!980, !957, !981, !129}
!981 = !DILocation(line: 88, column: 3, scope: !949)
!982 = !{!"784"}
!983 = !{!"785"}
!984 = !DILocation(line: 89, column: 8, scope: !985)
!985 = distinct !DILexicalBlock(scope: !175, file: !3, line: 89, column: 3)
!986 = !{!"786"}
!987 = !DILocation(line: 0, scope: !985)
!988 = !{!"787"}
!989 = !{!"788"}
!990 = !DILocation(line: 89, column: 17, scope: !991)
!991 = distinct !DILexicalBlock(scope: !985, file: !3, line: 89, column: 3)
!992 = !{!"789"}
!993 = !DILocation(line: 89, column: 3, scope: !985)
!994 = !{!"790"}
!995 = !DILocation(line: 90, column: 22, scope: !996)
!996 = distinct !DILexicalBlock(scope: !991, file: !3, line: 89, column: 29)
!997 = !{!"791"}
!998 = !DILocation(line: 90, column: 16, scope: !996)
!999 = !{!"792"}
!1000 = !DILocation(line: 90, column: 29, scope: !996)
!1001 = !{!"793"}
!1002 = !{!"794"}
!1003 = !DILocation(line: 90, column: 45, scope: !996)
!1004 = !{!"795"}
!1005 = !DILocation(line: 90, column: 40, scope: !996)
!1006 = !{!"796"}
!1007 = !{!"797"}
!1008 = !DILocation(line: 90, column: 38, scope: !996)
!1009 = !{!"798"}
!1010 = !DILocation(line: 90, column: 4, scope: !996)
!1011 = !{!"799"}
!1012 = !DILocation(line: 91, column: 3, scope: !996)
!1013 = !{!"800"}
!1014 = !DILocation(line: 89, column: 25, scope: !991)
!1015 = !{!"801"}
!1016 = !{!"802"}
!1017 = !DILocation(line: 89, column: 3, scope: !991)
!1018 = distinct !{!1018, !993, !1019, !129}
!1019 = !DILocation(line: 91, column: 3, scope: !985)
!1020 = !{!"803"}
!1021 = !DILocation(line: 92, column: 15, scope: !175)
!1022 = !{!"804"}
!1023 = !DILocation(line: 92, column: 24, scope: !175)
!1024 = !{!"805"}
!1025 = !{!"806"}
!1026 = !DILocation(line: 92, column: 34, scope: !175)
!1027 = !{!"807"}
!1028 = !DILocation(line: 92, column: 3, scope: !175)
!1029 = !{!"808"}
!1030 = !{!"809"}
!1031 = !DILocation(line: 93, column: 8, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !175, file: !3, line: 93, column: 3)
!1033 = !{!"810"}
!1034 = !DILocation(line: 0, scope: !1032)
!1035 = !{!"811"}
!1036 = !{!"812"}
!1037 = !DILocation(line: 93, column: 18, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 93, column: 3)
!1039 = !{!"813"}
!1040 = !DILocation(line: 93, column: 3, scope: !1032)
!1041 = !{!"814"}
!1042 = !DILocation(line: 94, column: 22, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 93, column: 30)
!1044 = !{!"815"}
!1045 = !DILocation(line: 94, column: 16, scope: !1043)
!1046 = !{!"816"}
!1047 = !DILocation(line: 94, column: 29, scope: !1043)
!1048 = !{!"817"}
!1049 = !{!"818"}
!1050 = !DILocation(line: 94, column: 46, scope: !1043)
!1051 = !{!"819"}
!1052 = !DILocation(line: 94, column: 40, scope: !1043)
!1053 = !{!"820"}
!1054 = !{!"821"}
!1055 = !DILocation(line: 94, column: 38, scope: !1043)
!1056 = !{!"822"}
!1057 = !DILocation(line: 94, column: 4, scope: !1043)
!1058 = !{!"823"}
!1059 = !DILocation(line: 95, column: 3, scope: !1043)
!1060 = !{!"824"}
!1061 = !DILocation(line: 93, column: 26, scope: !1038)
!1062 = !{!"825"}
!1063 = !{!"826"}
!1064 = !DILocation(line: 93, column: 3, scope: !1038)
!1065 = distinct !{!1065, !1040, !1066, !129}
!1066 = !DILocation(line: 95, column: 3, scope: !1032)
!1067 = !{!"827"}
!1068 = !DILocation(line: 97, column: 14, scope: !175)
!1069 = !{!"828"}
!1070 = !DILocation(line: 97, column: 10, scope: !175)
!1071 = !{!"829"}
!1072 = !{!"830"}
!1073 = !{!"831"}
!1074 = !{!"832"}
!1075 = !DILocalVariable(name: "clen", scope: !175, file: !3, line: 50, type: !14)
!1076 = !{!"833"}
!1077 = !{!"834"}
!1078 = !DILocation(line: 98, column: 8, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !175, file: !3, line: 98, column: 3)
!1080 = !{!"835"}
!1081 = !DILocation(line: 0, scope: !1079)
!1082 = !{!"836"}
!1083 = !{!"837"}
!1084 = !DILocation(line: 98, column: 17, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 98, column: 3)
!1086 = !{!"838"}
!1087 = !DILocation(line: 98, column: 3, scope: !1079)
!1088 = !{!"839"}
!1089 = !DILocation(line: 99, column: 14, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 98, column: 31)
!1091 = !{!"840"}
!1092 = !{!"841"}
!1093 = !{!"842"}
!1094 = !DILocation(line: 99, column: 4, scope: !1090)
!1095 = !{!"843"}
!1096 = !DILocation(line: 99, column: 11, scope: !1090)
!1097 = !{!"844"}
!1098 = !{!"845"}
!1099 = !{!"846"}
!1100 = !{!"847"}
!1101 = !{!"848"}
!1102 = !DILocation(line: 100, column: 3, scope: !1090)
!1103 = !{!"849"}
!1104 = !DILocation(line: 98, column: 27, scope: !1085)
!1105 = !{!"850"}
!1106 = !{!"851"}
!1107 = !DILocation(line: 98, column: 3, scope: !1085)
!1108 = distinct !{!1108, !1087, !1109, !129}
!1109 = !DILocation(line: 100, column: 3, scope: !1079)
!1110 = !{!"852"}
!1111 = !DILocation(line: 101, column: 7, scope: !175)
!1112 = !{!"853"}
!1113 = !{!"854"}
!1114 = !DILocation(line: 102, column: 7, scope: !175)
!1115 = !{!"855"}
!1116 = !{!"856"}
!1117 = !DILocation(line: 103, column: 6, scope: !175)
!1118 = !{!"857"}
!1119 = !{!"858"}
!1120 = distinct !{!1120, !163, !1121, !129}
!1121 = !DILocation(line: 104, column: 2, scope: !2)
!1122 = !{!"859"}
!1123 = !DILocation(line: 105, column: 2, scope: !2)
!1124 = !{!"860"}
!1125 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !1126, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!6, !11}
!1128 = !DILocalVariable(name: "src", arg: 1, scope: !1125, file: !26, line: 574, type: !11)
!1129 = !DILocation(line: 0, scope: !1125)
!1130 = !{!"861"}
!1131 = !DILocation(line: 577, column: 10, scope: !1125)
!1132 = !{!"862"}
!1133 = !DILocation(line: 577, column: 38, scope: !1125)
!1134 = !{!"863"}
!1135 = !{!"864"}
!1136 = !DILocation(line: 577, column: 2, scope: !1125)
!1137 = !{!"865"}
!1138 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !1139, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !13, !6}
!1141 = !DILocalVariable(name: "dst", arg: 1, scope: !1138, file: !26, line: 542, type: !13)
!1142 = !DILocation(line: 0, scope: !1138)
!1143 = !{!"866"}
!1144 = !DILocalVariable(name: "x", arg: 2, scope: !1138, file: !26, line: 542, type: !6)
!1145 = !{!"867"}
!1146 = !DILocation(line: 545, column: 3, scope: !1138)
!1147 = !{!"868"}
!1148 = !DILocation(line: 545, column: 25, scope: !1138)
!1149 = !{!"869"}
!1150 = !DILocation(line: 545, column: 27, scope: !1138)
!1151 = !{!"870"}
!1152 = !DILocation(line: 555, column: 1, scope: !1138)
!1153 = !{!"871"}
!1154 = distinct !DISubprogram(name: "br_poly1305_ctmul_run", scope: !40, file: !40, line: 148, type: !1155, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !11, !11, !13, !14, !11, !14, !13, !1157, !211}
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_chacha20_run", file: !1158, line: 2442, baseType: !1159)
!1158 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_ctmul_ChaCha20")
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1160 = !{!"872"}
!1161 = !{!"873"}
!1162 = !{!"874"}
!1163 = !{!"875"}
!1164 = !DILocalVariable(name: "key", arg: 1, scope: !1154, file: !40, line: 148, type: !11)
!1165 = !DILocation(line: 0, scope: !1154)
!1166 = !{!"876"}
!1167 = !DILocalVariable(name: "iv", arg: 2, scope: !1154, file: !40, line: 148, type: !11)
!1168 = !{!"877"}
!1169 = !DILocalVariable(name: "data", arg: 3, scope: !1154, file: !40, line: 149, type: !13)
!1170 = !{!"878"}
!1171 = !DILocalVariable(name: "len", arg: 4, scope: !1154, file: !40, line: 149, type: !14)
!1172 = !{!"879"}
!1173 = !DILocalVariable(name: "aad", arg: 5, scope: !1154, file: !40, line: 149, type: !11)
!1174 = !{!"880"}
!1175 = !DILocalVariable(name: "aad_len", arg: 6, scope: !1154, file: !40, line: 149, type: !14)
!1176 = !{!"881"}
!1177 = !DILocalVariable(name: "tag", arg: 7, scope: !1154, file: !40, line: 150, type: !13)
!1178 = !{!"882"}
!1179 = !DILocalVariable(name: "ichacha", arg: 8, scope: !1154, file: !40, line: 150, type: !1157)
!1180 = !{!"883"}
!1181 = !DILocalVariable(name: "encrypt", arg: 9, scope: !1154, file: !40, line: 150, type: !211)
!1182 = !{!"884"}
!1183 = !DILocalVariable(name: "pkey", scope: !1154, file: !40, line: 152, type: !1184)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 32)
!1187 = !DILocation(line: 152, column: 16, scope: !1154)
!1188 = !{!"885"}
!1189 = !DILocalVariable(name: "foot", scope: !1154, file: !40, line: 152, type: !1190)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !177)
!1191 = !DILocation(line: 152, column: 26, scope: !1154)
!1192 = !{!"886"}
!1193 = !DILocalVariable(name: "r", scope: !1154, file: !40, line: 153, type: !1194)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 5)
!1197 = !DILocation(line: 153, column: 11, scope: !1154)
!1198 = !{!"887"}
!1199 = !DILocalVariable(name: "acc", scope: !1154, file: !40, line: 153, type: !1194)
!1200 = !DILocation(line: 153, column: 17, scope: !1154)
!1201 = !{!"888"}
!1202 = !DILocation(line: 161, column: 2, scope: !1154)
!1203 = !{!"889"}
!1204 = !{!"890"}
!1205 = !DILocation(line: 162, column: 22, scope: !1154)
!1206 = !{!"891"}
!1207 = !DILocation(line: 162, column: 2, scope: !1154)
!1208 = !{!"892"}
!1209 = !DILocation(line: 168, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1154, file: !40, line: 168, column: 6)
!1211 = !{!"893"}
!1212 = !DILocation(line: 168, column: 6, scope: !1154)
!1213 = !{!"894"}
!1214 = !DILocation(line: 169, column: 3, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !40, line: 168, column: 15)
!1216 = !{!"895"}
!1217 = !DILocation(line: 170, column: 2, scope: !1215)
!1218 = !{!"896"}
!1219 = !DILocation(line: 183, column: 20, scope: !1154)
!1220 = !{!"897"}
!1221 = !DILocation(line: 183, column: 9, scope: !1154)
!1222 = !{!"898"}
!1223 = !DILocation(line: 183, column: 26, scope: !1154)
!1224 = !{!"899"}
!1225 = !DILocation(line: 183, column: 2, scope: !1154)
!1226 = !{!"900"}
!1227 = !DILocation(line: 183, column: 7, scope: !1154)
!1228 = !{!"901"}
!1229 = !DILocation(line: 184, column: 21, scope: !1154)
!1230 = !{!"902"}
!1231 = !DILocation(line: 184, column: 26, scope: !1154)
!1232 = !{!"903"}
!1233 = !DILocation(line: 184, column: 10, scope: !1154)
!1234 = !{!"904"}
!1235 = !DILocation(line: 184, column: 32, scope: !1154)
!1236 = !{!"905"}
!1237 = !DILocation(line: 184, column: 38, scope: !1154)
!1238 = !{!"906"}
!1239 = !DILocation(line: 184, column: 2, scope: !1154)
!1240 = !{!"907"}
!1241 = !DILocation(line: 184, column: 7, scope: !1154)
!1242 = !{!"908"}
!1243 = !DILocation(line: 185, column: 21, scope: !1154)
!1244 = !{!"909"}
!1245 = !DILocation(line: 185, column: 26, scope: !1154)
!1246 = !{!"910"}
!1247 = !DILocation(line: 185, column: 10, scope: !1154)
!1248 = !{!"911"}
!1249 = !DILocation(line: 185, column: 32, scope: !1154)
!1250 = !{!"912"}
!1251 = !DILocation(line: 185, column: 38, scope: !1154)
!1252 = !{!"913"}
!1253 = !DILocation(line: 185, column: 2, scope: !1154)
!1254 = !{!"914"}
!1255 = !DILocation(line: 185, column: 7, scope: !1154)
!1256 = !{!"915"}
!1257 = !DILocation(line: 186, column: 21, scope: !1154)
!1258 = !{!"916"}
!1259 = !DILocation(line: 186, column: 26, scope: !1154)
!1260 = !{!"917"}
!1261 = !DILocation(line: 186, column: 10, scope: !1154)
!1262 = !{!"918"}
!1263 = !DILocation(line: 186, column: 32, scope: !1154)
!1264 = !{!"919"}
!1265 = !DILocation(line: 186, column: 38, scope: !1154)
!1266 = !{!"920"}
!1267 = !DILocation(line: 186, column: 2, scope: !1154)
!1268 = !{!"921"}
!1269 = !DILocation(line: 186, column: 7, scope: !1154)
!1270 = !{!"922"}
!1271 = !DILocation(line: 187, column: 21, scope: !1154)
!1272 = !{!"923"}
!1273 = !DILocation(line: 187, column: 26, scope: !1154)
!1274 = !{!"924"}
!1275 = !DILocation(line: 187, column: 10, scope: !1154)
!1276 = !{!"925"}
!1277 = !DILocation(line: 187, column: 32, scope: !1154)
!1278 = !{!"926"}
!1279 = !DILocation(line: 187, column: 38, scope: !1154)
!1280 = !{!"927"}
!1281 = !DILocation(line: 187, column: 2, scope: !1154)
!1282 = !{!"928"}
!1283 = !DILocation(line: 187, column: 7, scope: !1154)
!1284 = !{!"929"}
!1285 = !DILocation(line: 192, column: 2, scope: !1154)
!1286 = !{!"930"}
!1287 = !{!"931"}
!1288 = !{!"932"}
!1289 = !DILocation(line: 198, column: 13, scope: !1154)
!1290 = !{!"933"}
!1291 = !DILocation(line: 198, column: 2, scope: !1154)
!1292 = !{!"934"}
!1293 = !DILocation(line: 199, column: 13, scope: !1154)
!1294 = !{!"935"}
!1295 = !DILocation(line: 199, column: 18, scope: !1154)
!1296 = !{!"936"}
!1297 = !DILocation(line: 199, column: 2, scope: !1154)
!1298 = !{!"937"}
!1299 = !DILocation(line: 200, column: 17, scope: !1154)
!1300 = !{!"938"}
!1301 = !DILocation(line: 200, column: 22, scope: !1154)
!1302 = !{!"939"}
!1303 = !DILocation(line: 200, column: 2, scope: !1154)
!1304 = !{!"940"}
!1305 = !DILocation(line: 201, column: 17, scope: !1154)
!1306 = !{!"941"}
!1307 = !DILocation(line: 201, column: 22, scope: !1154)
!1308 = !{!"942"}
!1309 = !DILocation(line: 201, column: 2, scope: !1154)
!1310 = !{!"943"}
!1311 = !DILocation(line: 202, column: 17, scope: !1154)
!1312 = !{!"944"}
!1313 = !DILocation(line: 202, column: 22, scope: !1154)
!1314 = !{!"945"}
!1315 = !DILocation(line: 202, column: 25, scope: !1154)
!1316 = !{!"946"}
!1317 = !DILocation(line: 202, column: 2, scope: !1154)
!1318 = !{!"947"}
!1319 = !DILocalVariable(name: "cc", scope: !1154, file: !40, line: 153, type: !6)
!1320 = !{!"948"}
!1321 = !DILocalVariable(name: "i", scope: !1154, file: !40, line: 155, type: !211)
!1322 = !{!"949"}
!1323 = !DILocation(line: 212, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1154, file: !40, line: 212, column: 2)
!1325 = !{!"950"}
!1326 = !{!"951"}
!1327 = !DILocation(line: 0, scope: !1324)
!1328 = !{!"952"}
!1329 = !{!"953"}
!1330 = !{!"954"}
!1331 = !DILocation(line: 212, column: 16, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1324, file: !40, line: 212, column: 2)
!1333 = !{!"955"}
!1334 = !DILocation(line: 212, column: 2, scope: !1324)
!1335 = !{!"956"}
!1336 = !DILocation(line: 215, column: 10, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !40, line: 212, column: 28)
!1338 = !{!"957"}
!1339 = !DILocation(line: 215, column: 7, scope: !1337)
!1340 = !{!"958"}
!1341 = !DILocation(line: 215, column: 20, scope: !1337)
!1342 = !{!"959"}
!1343 = !{!"960"}
!1344 = !{!"961"}
!1345 = !{!"962"}
!1346 = !DILocalVariable(name: "j", scope: !1337, file: !40, line: 213, type: !211)
!1347 = !DILocation(line: 0, scope: !1337)
!1348 = !{!"963"}
!1349 = !DILocation(line: 216, column: 3, scope: !1337)
!1350 = !{!"964"}
!1351 = !{!"965"}
!1352 = !DILocation(line: 216, column: 10, scope: !1337)
!1353 = !{!"966"}
!1354 = !{!"967"}
!1355 = !{!"968"}
!1356 = !DILocation(line: 217, column: 8, scope: !1337)
!1357 = !{!"969"}
!1358 = !{!"970"}
!1359 = !{!"971"}
!1360 = !DILocation(line: 217, column: 15, scope: !1337)
!1361 = !{!"972"}
!1362 = !{!"973"}
!1363 = !DILocation(line: 218, column: 3, scope: !1337)
!1364 = !{!"974"}
!1365 = !{!"975"}
!1366 = !DILocation(line: 218, column: 10, scope: !1337)
!1367 = !{!"976"}
!1368 = !{!"977"}
!1369 = !{!"978"}
!1370 = !DILocation(line: 219, column: 2, scope: !1337)
!1371 = !{!"979"}
!1372 = !DILocation(line: 212, column: 24, scope: !1332)
!1373 = !{!"980"}
!1374 = !{!"981"}
!1375 = !DILocation(line: 212, column: 2, scope: !1332)
!1376 = distinct !{!1376, !1334, !1377, !129}
!1377 = !DILocation(line: 219, column: 2, scope: !1324)
!1378 = !{!"982"}
!1379 = !DILocation(line: 226, column: 11, scope: !1154)
!1380 = !{!"983"}
!1381 = !{!"984"}
!1382 = !DILocation(line: 226, column: 8, scope: !1154)
!1383 = !{!"985"}
!1384 = !DILocalVariable(name: "ctl", scope: !1154, file: !40, line: 153, type: !6)
!1385 = !{!"986"}
!1386 = !{!"987"}
!1387 = !DILocation(line: 227, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1154, file: !40, line: 227, column: 2)
!1389 = !{!"988"}
!1390 = !{!"989"}
!1391 = !DILocation(line: 0, scope: !1388)
!1392 = !{!"990"}
!1393 = !{!"991"}
!1394 = !{!"992"}
!1395 = !DILocation(line: 227, column: 16, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1388, file: !40, line: 227, column: 2)
!1397 = !{!"993"}
!1398 = !DILocation(line: 227, column: 2, scope: !1388)
!1399 = !{!"994"}
!1400 = !DILocation(line: 228, column: 13, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !40, line: 227, column: 27)
!1402 = !{!"995"}
!1403 = !{!"996"}
!1404 = !{!"997"}
!1405 = !DILocation(line: 228, column: 10, scope: !1401)
!1406 = !{!"998"}
!1407 = !DILocation(line: 228, column: 7, scope: !1401)
!1408 = !{!"999"}
!1409 = !{!"1000"}
!1410 = !DILocation(line: 229, column: 2, scope: !1401)
!1411 = !{!"1001"}
!1412 = !DILocation(line: 227, column: 23, scope: !1396)
!1413 = !{!"1002"}
!1414 = !{!"1003"}
!1415 = !DILocation(line: 227, column: 2, scope: !1396)
!1416 = distinct !{!1416, !1398, !1417, !129}
!1417 = !DILocation(line: 229, column: 2, scope: !1388)
!1418 = !{!"1004"}
!1419 = !{!"1005"}
!1420 = !{!"1006"}
!1421 = !DILocation(line: 231, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1154, file: !40, line: 231, column: 2)
!1423 = !{!"1007"}
!1424 = !{!"1008"}
!1425 = !DILocation(line: 0, scope: !1422)
!1426 = !{!"1009"}
!1427 = !{!"1010"}
!1428 = !{!"1011"}
!1429 = !DILocation(line: 231, column: 16, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !40, line: 231, column: 2)
!1431 = !{!"1012"}
!1432 = !DILocation(line: 231, column: 2, scope: !1422)
!1433 = !{!"1013"}
!1434 = !DILocation(line: 234, column: 8, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !40, line: 231, column: 27)
!1436 = !{!"1014"}
!1437 = !{!"1015"}
!1438 = !{!"1016"}
!1439 = !DILocation(line: 234, column: 15, scope: !1435)
!1440 = !{!"1017"}
!1441 = !DILocalVariable(name: "t", scope: !1435, file: !40, line: 232, type: !6)
!1442 = !DILocation(line: 0, scope: !1435)
!1443 = !{!"1018"}
!1444 = !DILocation(line: 235, column: 10, scope: !1435)
!1445 = !{!"1019"}
!1446 = !{!"1020"}
!1447 = !DILocation(line: 236, column: 5, scope: !1435)
!1448 = !{!"1021"}
!1449 = !{!"1022"}
!1450 = !DILocation(line: 237, column: 24, scope: !1435)
!1451 = !{!"1023"}
!1452 = !{!"1024"}
!1453 = !{!"1025"}
!1454 = !DILocation(line: 237, column: 12, scope: !1435)
!1455 = !{!"1026"}
!1456 = !DILocation(line: 237, column: 3, scope: !1435)
!1457 = !{!"1027"}
!1458 = !{!"1028"}
!1459 = !DILocation(line: 237, column: 10, scope: !1435)
!1460 = !{!"1029"}
!1461 = !DILocation(line: 238, column: 2, scope: !1435)
!1462 = !{!"1030"}
!1463 = !DILocation(line: 231, column: 23, scope: !1430)
!1464 = !{!"1031"}
!1465 = !{!"1032"}
!1466 = !DILocation(line: 231, column: 2, scope: !1430)
!1467 = distinct !{!1467, !1432, !1468, !129}
!1468 = !DILocation(line: 238, column: 2, scope: !1422)
!1469 = !{!"1033"}
!1470 = !DILocation(line: 245, column: 16, scope: !1154)
!1471 = !{!"1034"}
!1472 = !{!"1035"}
!1473 = !DILocation(line: 245, column: 6, scope: !1154)
!1474 = !{!"1036"}
!1475 = !DILocation(line: 245, column: 36, scope: !1154)
!1476 = !{!"1037"}
!1477 = !{!"1038"}
!1478 = !DILocation(line: 245, column: 26, scope: !1154)
!1479 = !{!"1039"}
!1480 = !DILocation(line: 245, column: 43, scope: !1154)
!1481 = !{!"1040"}
!1482 = !DILocation(line: 245, column: 23, scope: !1154)
!1483 = !{!"1041"}
!1484 = !DILocation(line: 245, column: 63, scope: !1154)
!1485 = !{!"1042"}
!1486 = !DILocation(line: 245, column: 68, scope: !1154)
!1487 = !{!"1043"}
!1488 = !DILocation(line: 245, column: 52, scope: !1154)
!1489 = !{!"1044"}
!1490 = !{!"1045"}
!1491 = !DILocation(line: 245, column: 50, scope: !1154)
!1492 = !{!"1046"}
!1493 = !DILocalVariable(name: "w", scope: !1154, file: !40, line: 154, type: !42)
!1494 = !{!"1047"}
!1495 = !DILocation(line: 246, column: 35, scope: !1154)
!1496 = !{!"1048"}
!1497 = !DILocation(line: 246, column: 2, scope: !1154)
!1498 = !{!"1049"}
!1499 = !DILocation(line: 247, column: 9, scope: !1154)
!1500 = !{!"1050"}
!1501 = !DILocation(line: 247, column: 29, scope: !1154)
!1502 = !{!"1051"}
!1503 = !{!"1052"}
!1504 = !DILocation(line: 247, column: 19, scope: !1154)
!1505 = !{!"1053"}
!1506 = !DILocation(line: 247, column: 36, scope: !1154)
!1507 = !{!"1054"}
!1508 = !DILocation(line: 247, column: 16, scope: !1154)
!1509 = !{!"1055"}
!1510 = !DILocation(line: 247, column: 56, scope: !1154)
!1511 = !{!"1056"}
!1512 = !DILocation(line: 247, column: 61, scope: !1154)
!1513 = !{!"1057"}
!1514 = !DILocation(line: 247, column: 45, scope: !1154)
!1515 = !{!"1058"}
!1516 = !{!"1059"}
!1517 = !DILocation(line: 247, column: 43, scope: !1154)
!1518 = !{!"1060"}
!1519 = !{!"1061"}
!1520 = !DILocation(line: 248, column: 34, scope: !1154)
!1521 = !{!"1062"}
!1522 = !DILocation(line: 248, column: 39, scope: !1154)
!1523 = !{!"1063"}
!1524 = !DILocation(line: 248, column: 2, scope: !1154)
!1525 = !{!"1064"}
!1526 = !DILocation(line: 249, column: 9, scope: !1154)
!1527 = !{!"1065"}
!1528 = !DILocation(line: 249, column: 29, scope: !1154)
!1529 = !{!"1066"}
!1530 = !{!"1067"}
!1531 = !DILocation(line: 249, column: 19, scope: !1154)
!1532 = !{!"1068"}
!1533 = !DILocation(line: 249, column: 36, scope: !1154)
!1534 = !{!"1069"}
!1535 = !DILocation(line: 249, column: 16, scope: !1154)
!1536 = !{!"1070"}
!1537 = !DILocation(line: 249, column: 56, scope: !1154)
!1538 = !{!"1071"}
!1539 = !DILocation(line: 249, column: 61, scope: !1154)
!1540 = !{!"1072"}
!1541 = !DILocation(line: 249, column: 45, scope: !1154)
!1542 = !{!"1073"}
!1543 = !{!"1074"}
!1544 = !DILocation(line: 249, column: 43, scope: !1154)
!1545 = !{!"1075"}
!1546 = !{!"1076"}
!1547 = !DILocation(line: 250, column: 34, scope: !1154)
!1548 = !{!"1077"}
!1549 = !DILocation(line: 250, column: 39, scope: !1154)
!1550 = !{!"1078"}
!1551 = !DILocation(line: 250, column: 2, scope: !1154)
!1552 = !{!"1079"}
!1553 = !DILocation(line: 251, column: 20, scope: !1154)
!1554 = !{!"1080"}
!1555 = !DILocation(line: 251, column: 7, scope: !1154)
!1556 = !{!"1081"}
!1557 = !DILocation(line: 251, column: 30, scope: !1154)
!1558 = !{!"1082"}
!1559 = !{!"1083"}
!1560 = !DILocation(line: 251, column: 37, scope: !1154)
!1561 = !{!"1084"}
!1562 = !DILocation(line: 251, column: 27, scope: !1154)
!1563 = !{!"1085"}
!1564 = !DILocation(line: 251, column: 56, scope: !1154)
!1565 = !{!"1086"}
!1566 = !DILocation(line: 251, column: 61, scope: !1154)
!1567 = !{!"1087"}
!1568 = !DILocation(line: 251, column: 45, scope: !1154)
!1569 = !{!"1088"}
!1570 = !DILocation(line: 251, column: 43, scope: !1154)
!1571 = !{!"1089"}
!1572 = !DILocalVariable(name: "hi", scope: !1154, file: !40, line: 153, type: !6)
!1573 = !{!"1090"}
!1574 = !DILocation(line: 252, column: 34, scope: !1154)
!1575 = !{!"1091"}
!1576 = !DILocation(line: 252, column: 2, scope: !1154)
!1577 = !{!"1092"}
!1578 = !DILocation(line: 257, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1154, file: !40, line: 257, column: 6)
!1580 = !{!"1093"}
!1581 = !DILocation(line: 257, column: 6, scope: !1154)
!1582 = !{!"1094"}
!1583 = !DILocation(line: 258, column: 3, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1579, file: !40, line: 257, column: 16)
!1585 = !{!"1095"}
!1586 = !DILocation(line: 259, column: 2, scope: !1584)
!1587 = !{!"1096"}
!1588 = !DILocation(line: 260, column: 1, scope: !1154)
!1589 = !{!"1097"}
!1590 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !1126, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1591 = !DILocalVariable(name: "src", arg: 1, scope: !1590, file: !26, line: 574, type: !11)
!1592 = !DILocation(line: 0, scope: !1590)
!1593 = !{!"1098"}
!1594 = !DILocation(line: 577, column: 10, scope: !1590)
!1595 = !{!"1099"}
!1596 = !DILocation(line: 577, column: 38, scope: !1590)
!1597 = !{!"1100"}
!1598 = !{!"1101"}
!1599 = !DILocation(line: 577, column: 2, scope: !1590)
!1600 = !{!"1102"}
!1601 = distinct !DISubprogram(name: "br_enc64le", scope: !26, file: !26, line: 606, type: !1602, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !13, !42}
!1604 = !DILocalVariable(name: "dst", arg: 1, scope: !1601, file: !26, line: 606, type: !13)
!1605 = !DILocation(line: 0, scope: !1601)
!1606 = !{!"1103"}
!1607 = !DILocalVariable(name: "x", arg: 2, scope: !1601, file: !26, line: 606, type: !42)
!1608 = !{!"1104"}
!1609 = !DILocation(line: 609, column: 3, scope: !1601)
!1610 = !{!"1105"}
!1611 = !DILocation(line: 609, column: 25, scope: !1601)
!1612 = !{!"1106"}
!1613 = !DILocation(line: 609, column: 27, scope: !1601)
!1614 = !{!"1107"}
!1615 = !DILocation(line: 617, column: 1, scope: !1601)
!1616 = !{!"1108"}
!1617 = distinct !DISubprogram(name: "poly1305_inner", scope: !40, file: !40, line: 36, type: !1618, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1620, !1621, !11, !14}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1622 = !{!"1109"}
!1623 = !DILocalVariable(name: "acc", arg: 1, scope: !1617, file: !40, line: 36, type: !1620)
!1624 = !DILocation(line: 0, scope: !1617)
!1625 = !{!"1110"}
!1626 = !DILocalVariable(name: "r", arg: 2, scope: !1617, file: !40, line: 36, type: !1621)
!1627 = !{!"1111"}
!1628 = !DILocalVariable(name: "data", arg: 3, scope: !1617, file: !40, line: 36, type: !11)
!1629 = !{!"1112"}
!1630 = !DILocalVariable(name: "len", arg: 4, scope: !1617, file: !40, line: 36, type: !14)
!1631 = !{!"1113"}
!1632 = !DILocation(line: 54, column: 7, scope: !1617)
!1633 = !{!"1114"}
!1634 = !{!"1115"}
!1635 = !DILocalVariable(name: "r0", scope: !1617, file: !40, line: 51, type: !6)
!1636 = !{!"1116"}
!1637 = !DILocation(line: 55, column: 7, scope: !1617)
!1638 = !{!"1117"}
!1639 = !{!"1118"}
!1640 = !DILocalVariable(name: "r1", scope: !1617, file: !40, line: 51, type: !6)
!1641 = !{!"1119"}
!1642 = !DILocation(line: 56, column: 7, scope: !1617)
!1643 = !{!"1120"}
!1644 = !{!"1121"}
!1645 = !DILocalVariable(name: "r2", scope: !1617, file: !40, line: 51, type: !6)
!1646 = !{!"1122"}
!1647 = !DILocation(line: 57, column: 7, scope: !1617)
!1648 = !{!"1123"}
!1649 = !{!"1124"}
!1650 = !DILocalVariable(name: "r3", scope: !1617, file: !40, line: 51, type: !6)
!1651 = !{!"1125"}
!1652 = !DILocation(line: 58, column: 7, scope: !1617)
!1653 = !{!"1126"}
!1654 = !{!"1127"}
!1655 = !DILocalVariable(name: "r4", scope: !1617, file: !40, line: 51, type: !6)
!1656 = !{!"1128"}
!1657 = !DILocation(line: 60, column: 10, scope: !1617)
!1658 = !{!"1129"}
!1659 = !DILocalVariable(name: "u1", scope: !1617, file: !40, line: 52, type: !6)
!1660 = !{!"1130"}
!1661 = !DILocation(line: 61, column: 10, scope: !1617)
!1662 = !{!"1131"}
!1663 = !DILocalVariable(name: "u2", scope: !1617, file: !40, line: 52, type: !6)
!1664 = !{!"1132"}
!1665 = !DILocation(line: 62, column: 10, scope: !1617)
!1666 = !{!"1133"}
!1667 = !DILocalVariable(name: "u3", scope: !1617, file: !40, line: 52, type: !6)
!1668 = !{!"1134"}
!1669 = !DILocation(line: 63, column: 10, scope: !1617)
!1670 = !{!"1135"}
!1671 = !DILocalVariable(name: "u4", scope: !1617, file: !40, line: 52, type: !6)
!1672 = !{!"1136"}
!1673 = !DILocation(line: 65, column: 7, scope: !1617)
!1674 = !{!"1137"}
!1675 = !{!"1138"}
!1676 = !DILocalVariable(name: "a0", scope: !1617, file: !40, line: 50, type: !6)
!1677 = !{!"1139"}
!1678 = !DILocation(line: 66, column: 7, scope: !1617)
!1679 = !{!"1140"}
!1680 = !{!"1141"}
!1681 = !DILocalVariable(name: "a1", scope: !1617, file: !40, line: 50, type: !6)
!1682 = !{!"1142"}
!1683 = !DILocation(line: 67, column: 7, scope: !1617)
!1684 = !{!"1143"}
!1685 = !{!"1144"}
!1686 = !DILocalVariable(name: "a2", scope: !1617, file: !40, line: 50, type: !6)
!1687 = !{!"1145"}
!1688 = !DILocation(line: 68, column: 7, scope: !1617)
!1689 = !{!"1146"}
!1690 = !{!"1147"}
!1691 = !DILocalVariable(name: "a3", scope: !1617, file: !40, line: 50, type: !6)
!1692 = !{!"1148"}
!1693 = !DILocation(line: 69, column: 7, scope: !1617)
!1694 = !{!"1149"}
!1695 = !{!"1150"}
!1696 = !DILocalVariable(name: "a4", scope: !1617, file: !40, line: 50, type: !6)
!1697 = !{!"1151"}
!1698 = !DILocalVariable(name: "buf", scope: !1617, file: !40, line: 49, type: !20)
!1699 = !{!"1152"}
!1700 = !DILocation(line: 72, column: 2, scope: !1617)
!1701 = !{!"1153"}
!1702 = !{!"1154"}
!1703 = !{!"1155"}
!1704 = !{!"1156"}
!1705 = !{!"1157"}
!1706 = !{!"1158"}
!1707 = !{!"1159"}
!1708 = !{!"1160"}
!1709 = !{!"1161"}
!1710 = !{!"1162"}
!1711 = !{!"1163"}
!1712 = !{!"1164"}
!1713 = !{!"1165"}
!1714 = !{!"1166"}
!1715 = !{!"1167"}
!1716 = !DILocation(line: 72, column: 13, scope: !1617)
!1717 = !{!"1168"}
!1718 = !{!"1169"}
!1719 = !DILocalVariable(name: "tmp", scope: !1720, file: !40, line: 75, type: !1190)
!1720 = distinct !DILexicalBlock(scope: !1617, file: !40, line: 72, column: 18)
!1721 = !DILocation(line: 75, column: 17, scope: !1720)
!1722 = !{!"1170"}
!1723 = !DILocation(line: 80, column: 11, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !40, line: 80, column: 7)
!1725 = !{!"1171"}
!1726 = !DILocation(line: 80, column: 7, scope: !1720)
!1727 = !{!"1172"}
!1728 = !DILocation(line: 81, column: 4, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1724, file: !40, line: 80, column: 17)
!1730 = !{!"1173"}
!1731 = !{!"1174"}
!1732 = !DILocation(line: 82, column: 4, scope: !1729)
!1733 = !{!"1175"}
!1734 = !{!"1176"}
!1735 = !DILocation(line: 83, column: 10, scope: !1729)
!1736 = !{!"1177"}
!1737 = !{!"1178"}
!1738 = !{!"1179"}
!1739 = !DILocation(line: 85, column: 3, scope: !1729)
!1740 = !{!"1180"}
!1741 = !{!"1181"}
!1742 = !{!"1182"}
!1743 = !{!"1183"}
!1744 = !{!"1184"}
!1745 = !DILocation(line: 91, column: 9, scope: !1720)
!1746 = !{!"1185"}
!1747 = !DILocation(line: 91, column: 25, scope: !1720)
!1748 = !{!"1186"}
!1749 = !DILocation(line: 91, column: 6, scope: !1720)
!1750 = !{!"1187"}
!1751 = !{!"1188"}
!1752 = !DILocation(line: 92, column: 25, scope: !1720)
!1753 = !{!"1189"}
!1754 = !DILocation(line: 92, column: 10, scope: !1720)
!1755 = !{!"1190"}
!1756 = !DILocation(line: 92, column: 31, scope: !1720)
!1757 = !{!"1191"}
!1758 = !DILocation(line: 92, column: 37, scope: !1720)
!1759 = !{!"1192"}
!1760 = !DILocation(line: 92, column: 6, scope: !1720)
!1761 = !{!"1193"}
!1762 = !{!"1194"}
!1763 = !DILocation(line: 93, column: 25, scope: !1720)
!1764 = !{!"1195"}
!1765 = !DILocation(line: 93, column: 10, scope: !1720)
!1766 = !{!"1196"}
!1767 = !DILocation(line: 93, column: 31, scope: !1720)
!1768 = !{!"1197"}
!1769 = !DILocation(line: 93, column: 37, scope: !1720)
!1770 = !{!"1198"}
!1771 = !DILocation(line: 93, column: 6, scope: !1720)
!1772 = !{!"1199"}
!1773 = !{!"1200"}
!1774 = !DILocation(line: 94, column: 25, scope: !1720)
!1775 = !{!"1201"}
!1776 = !DILocation(line: 94, column: 10, scope: !1720)
!1777 = !{!"1202"}
!1778 = !DILocation(line: 94, column: 31, scope: !1720)
!1779 = !{!"1203"}
!1780 = !DILocation(line: 94, column: 37, scope: !1720)
!1781 = !{!"1204"}
!1782 = !DILocation(line: 94, column: 6, scope: !1720)
!1783 = !{!"1205"}
!1784 = !{!"1206"}
!1785 = !DILocation(line: 95, column: 25, scope: !1720)
!1786 = !{!"1207"}
!1787 = !DILocation(line: 95, column: 10, scope: !1720)
!1788 = !{!"1208"}
!1789 = !DILocation(line: 95, column: 31, scope: !1720)
!1790 = !{!"1209"}
!1791 = !DILocation(line: 95, column: 37, scope: !1720)
!1792 = !{!"1210"}
!1793 = !DILocation(line: 95, column: 6, scope: !1720)
!1794 = !{!"1211"}
!1795 = !{!"1212"}
!1796 = !DILocation(line: 102, column: 8, scope: !1720)
!1797 = !{!"1213"}
!1798 = !{!"1214"}
!1799 = !{!"1215"}
!1800 = !DILocation(line: 102, column: 20, scope: !1720)
!1801 = !{!"1216"}
!1802 = !{!"1217"}
!1803 = !{!"1218"}
!1804 = !DILocation(line: 102, column: 18, scope: !1720)
!1805 = !{!"1219"}
!1806 = !DILocation(line: 102, column: 32, scope: !1720)
!1807 = !{!"1220"}
!1808 = !{!"1221"}
!1809 = !{!"1222"}
!1810 = !DILocation(line: 102, column: 30, scope: !1720)
!1811 = !{!"1223"}
!1812 = !DILocation(line: 102, column: 44, scope: !1720)
!1813 = !{!"1224"}
!1814 = !{!"1225"}
!1815 = !{!"1226"}
!1816 = !DILocation(line: 102, column: 42, scope: !1720)
!1817 = !{!"1227"}
!1818 = !DILocation(line: 102, column: 56, scope: !1720)
!1819 = !{!"1228"}
!1820 = !{!"1229"}
!1821 = !{!"1230"}
!1822 = !DILocation(line: 102, column: 54, scope: !1720)
!1823 = !{!"1231"}
!1824 = !DILocalVariable(name: "w0", scope: !1720, file: !40, line: 73, type: !42)
!1825 = !DILocation(line: 0, scope: !1720)
!1826 = !{!"1232"}
!1827 = !DILocation(line: 103, column: 8, scope: !1720)
!1828 = !{!"1233"}
!1829 = !{!"1234"}
!1830 = !{!"1235"}
!1831 = !DILocation(line: 103, column: 20, scope: !1720)
!1832 = !{!"1236"}
!1833 = !{!"1237"}
!1834 = !{!"1238"}
!1835 = !DILocation(line: 103, column: 18, scope: !1720)
!1836 = !{!"1239"}
!1837 = !DILocation(line: 103, column: 32, scope: !1720)
!1838 = !{!"1240"}
!1839 = !{!"1241"}
!1840 = !{!"1242"}
!1841 = !DILocation(line: 103, column: 30, scope: !1720)
!1842 = !{!"1243"}
!1843 = !DILocation(line: 103, column: 44, scope: !1720)
!1844 = !{!"1244"}
!1845 = !{!"1245"}
!1846 = !{!"1246"}
!1847 = !DILocation(line: 103, column: 42, scope: !1720)
!1848 = !{!"1247"}
!1849 = !DILocation(line: 103, column: 56, scope: !1720)
!1850 = !{!"1248"}
!1851 = !{!"1249"}
!1852 = !{!"1250"}
!1853 = !DILocation(line: 103, column: 54, scope: !1720)
!1854 = !{!"1251"}
!1855 = !DILocalVariable(name: "w1", scope: !1720, file: !40, line: 73, type: !42)
!1856 = !{!"1252"}
!1857 = !DILocation(line: 104, column: 8, scope: !1720)
!1858 = !{!"1253"}
!1859 = !{!"1254"}
!1860 = !{!"1255"}
!1861 = !DILocation(line: 104, column: 20, scope: !1720)
!1862 = !{!"1256"}
!1863 = !{!"1257"}
!1864 = !{!"1258"}
!1865 = !DILocation(line: 104, column: 18, scope: !1720)
!1866 = !{!"1259"}
!1867 = !DILocation(line: 104, column: 32, scope: !1720)
!1868 = !{!"1260"}
!1869 = !{!"1261"}
!1870 = !{!"1262"}
!1871 = !DILocation(line: 104, column: 30, scope: !1720)
!1872 = !{!"1263"}
!1873 = !DILocation(line: 104, column: 44, scope: !1720)
!1874 = !{!"1264"}
!1875 = !{!"1265"}
!1876 = !{!"1266"}
!1877 = !DILocation(line: 104, column: 42, scope: !1720)
!1878 = !{!"1267"}
!1879 = !DILocation(line: 104, column: 56, scope: !1720)
!1880 = !{!"1268"}
!1881 = !{!"1269"}
!1882 = !{!"1270"}
!1883 = !DILocation(line: 104, column: 54, scope: !1720)
!1884 = !{!"1271"}
!1885 = !DILocalVariable(name: "w2", scope: !1720, file: !40, line: 73, type: !42)
!1886 = !{!"1272"}
!1887 = !DILocation(line: 105, column: 8, scope: !1720)
!1888 = !{!"1273"}
!1889 = !{!"1274"}
!1890 = !{!"1275"}
!1891 = !DILocation(line: 105, column: 20, scope: !1720)
!1892 = !{!"1276"}
!1893 = !{!"1277"}
!1894 = !{!"1278"}
!1895 = !DILocation(line: 105, column: 18, scope: !1720)
!1896 = !{!"1279"}
!1897 = !DILocation(line: 105, column: 32, scope: !1720)
!1898 = !{!"1280"}
!1899 = !{!"1281"}
!1900 = !{!"1282"}
!1901 = !DILocation(line: 105, column: 30, scope: !1720)
!1902 = !{!"1283"}
!1903 = !DILocation(line: 105, column: 44, scope: !1720)
!1904 = !{!"1284"}
!1905 = !{!"1285"}
!1906 = !{!"1286"}
!1907 = !DILocation(line: 105, column: 42, scope: !1720)
!1908 = !{!"1287"}
!1909 = !DILocation(line: 105, column: 56, scope: !1720)
!1910 = !{!"1288"}
!1911 = !{!"1289"}
!1912 = !{!"1290"}
!1913 = !DILocation(line: 105, column: 54, scope: !1720)
!1914 = !{!"1291"}
!1915 = !DILocalVariable(name: "w3", scope: !1720, file: !40, line: 73, type: !42)
!1916 = !{!"1292"}
!1917 = !DILocation(line: 106, column: 8, scope: !1720)
!1918 = !{!"1293"}
!1919 = !{!"1294"}
!1920 = !{!"1295"}
!1921 = !DILocation(line: 106, column: 20, scope: !1720)
!1922 = !{!"1296"}
!1923 = !{!"1297"}
!1924 = !{!"1298"}
!1925 = !DILocation(line: 106, column: 18, scope: !1720)
!1926 = !{!"1299"}
!1927 = !DILocation(line: 106, column: 32, scope: !1720)
!1928 = !{!"1300"}
!1929 = !{!"1301"}
!1930 = !{!"1302"}
!1931 = !DILocation(line: 106, column: 30, scope: !1720)
!1932 = !{!"1303"}
!1933 = !DILocation(line: 106, column: 44, scope: !1720)
!1934 = !{!"1304"}
!1935 = !{!"1305"}
!1936 = !{!"1306"}
!1937 = !DILocation(line: 106, column: 42, scope: !1720)
!1938 = !{!"1307"}
!1939 = !DILocation(line: 106, column: 56, scope: !1720)
!1940 = !{!"1308"}
!1941 = !{!"1309"}
!1942 = !{!"1310"}
!1943 = !DILocation(line: 106, column: 54, scope: !1720)
!1944 = !{!"1311"}
!1945 = !DILocalVariable(name: "w4", scope: !1720, file: !40, line: 73, type: !42)
!1946 = !{!"1312"}
!1947 = !DILocation(line: 117, column: 10, scope: !1720)
!1948 = !{!"1313"}
!1949 = !DILocalVariable(name: "c", scope: !1720, file: !40, line: 74, type: !42)
!1950 = !{!"1314"}
!1951 = !DILocation(line: 118, column: 8, scope: !1720)
!1952 = !{!"1315"}
!1953 = !DILocation(line: 118, column: 21, scope: !1720)
!1954 = !{!"1316"}
!1955 = !{!"1317"}
!1956 = !DILocation(line: 119, column: 6, scope: !1720)
!1957 = !{!"1318"}
!1958 = !{!"1319"}
!1959 = !DILocation(line: 120, column: 10, scope: !1720)
!1960 = !{!"1320"}
!1961 = !{!"1321"}
!1962 = !DILocation(line: 121, column: 8, scope: !1720)
!1963 = !{!"1322"}
!1964 = !DILocation(line: 121, column: 21, scope: !1720)
!1965 = !{!"1323"}
!1966 = !{!"1324"}
!1967 = !DILocation(line: 122, column: 6, scope: !1720)
!1968 = !{!"1325"}
!1969 = !{!"1326"}
!1970 = !DILocation(line: 123, column: 10, scope: !1720)
!1971 = !{!"1327"}
!1972 = !{!"1328"}
!1973 = !DILocation(line: 124, column: 8, scope: !1720)
!1974 = !{!"1329"}
!1975 = !DILocation(line: 124, column: 21, scope: !1720)
!1976 = !{!"1330"}
!1977 = !{!"1331"}
!1978 = !DILocation(line: 125, column: 6, scope: !1720)
!1979 = !{!"1332"}
!1980 = !{!"1333"}
!1981 = !DILocation(line: 126, column: 10, scope: !1720)
!1982 = !{!"1334"}
!1983 = !{!"1335"}
!1984 = !DILocation(line: 127, column: 8, scope: !1720)
!1985 = !{!"1336"}
!1986 = !DILocation(line: 127, column: 21, scope: !1720)
!1987 = !{!"1337"}
!1988 = !{!"1338"}
!1989 = !DILocation(line: 128, column: 6, scope: !1720)
!1990 = !{!"1339"}
!1991 = !{!"1340"}
!1992 = !DILocation(line: 129, column: 10, scope: !1720)
!1993 = !{!"1341"}
!1994 = !{!"1342"}
!1995 = !DILocation(line: 130, column: 8, scope: !1720)
!1996 = !{!"1343"}
!1997 = !DILocation(line: 130, column: 21, scope: !1720)
!1998 = !{!"1344"}
!1999 = !{!"1345"}
!2000 = !DILocation(line: 131, column: 9, scope: !1720)
!2001 = !{!"1346"}
!2002 = !DILocation(line: 131, column: 21, scope: !1720)
!2003 = !{!"1347"}
!2004 = !DILocation(line: 131, column: 6, scope: !1720)
!2005 = !{!"1348"}
!2006 = !{!"1349"}
!2007 = !DILocation(line: 132, column: 12, scope: !1720)
!2008 = !{!"1350"}
!2009 = !DILocation(line: 132, column: 6, scope: !1720)
!2010 = !{!"1351"}
!2011 = !{!"1352"}
!2012 = !DILocation(line: 133, column: 6, scope: !1720)
!2013 = !{!"1353"}
!2014 = !{!"1354"}
!2015 = !DILocation(line: 135, column: 7, scope: !1720)
!2016 = !{!"1355"}
!2017 = !{!"1356"}
!2018 = !DILocation(line: 136, column: 7, scope: !1720)
!2019 = !{!"1357"}
!2020 = !{!"1358"}
!2021 = distinct !{!2021, !1700, !2022, !129}
!2022 = !DILocation(line: 137, column: 2, scope: !1617)
!2023 = !{!"1359"}
!2024 = !DILocation(line: 139, column: 2, scope: !1617)
!2025 = !{!"1360"}
!2026 = !DILocation(line: 139, column: 9, scope: !1617)
!2027 = !{!"1361"}
!2028 = !DILocation(line: 140, column: 2, scope: !1617)
!2029 = !{!"1362"}
!2030 = !DILocation(line: 140, column: 9, scope: !1617)
!2031 = !{!"1363"}
!2032 = !DILocation(line: 141, column: 2, scope: !1617)
!2033 = !{!"1364"}
!2034 = !DILocation(line: 141, column: 9, scope: !1617)
!2035 = !{!"1365"}
!2036 = !DILocation(line: 142, column: 2, scope: !1617)
!2037 = !{!"1366"}
!2038 = !DILocation(line: 142, column: 9, scope: !1617)
!2039 = !{!"1367"}
!2040 = !DILocation(line: 143, column: 2, scope: !1617)
!2041 = !{!"1368"}
!2042 = !DILocation(line: 143, column: 9, scope: !1617)
!2043 = !{!"1369"}
!2044 = !DILocation(line: 144, column: 1, scope: !1617)
!2045 = !{!"1370"}
!2046 = distinct !DISubprogram(name: "GT", scope: !26, file: !26, line: 803, type: !2047, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!6, !6, !6}
!2049 = !DILocalVariable(name: "x", arg: 1, scope: !2046, file: !26, line: 803, type: !6)
!2050 = !DILocation(line: 0, scope: !2046)
!2051 = !{!"1371"}
!2052 = !DILocalVariable(name: "y", arg: 2, scope: !2046, file: !26, line: 803, type: !6)
!2053 = !{!"1372"}
!2054 = !DILocation(line: 819, column: 8, scope: !2046)
!2055 = !{!"1373"}
!2056 = !DILocalVariable(name: "z", scope: !2046, file: !26, line: 817, type: !6)
!2057 = !{!"1374"}
!2058 = !DILocation(line: 820, column: 18, scope: !2046)
!2059 = !{!"1375"}
!2060 = !DILocation(line: 820, column: 28, scope: !2046)
!2061 = !{!"1376"}
!2062 = !DILocation(line: 820, column: 23, scope: !2046)
!2063 = !{!"1377"}
!2064 = !DILocation(line: 820, column: 12, scope: !2046)
!2065 = !{!"1378"}
!2066 = !DILocation(line: 820, column: 35, scope: !2046)
!2067 = !{!"1379"}
!2068 = !DILocation(line: 820, column: 2, scope: !2046)
!2069 = !{!"1380"}
!2070 = distinct !DISubprogram(name: "EQ", scope: !26, file: !26, line: 779, type: !2047, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2071 = !DILocalVariable(name: "x", arg: 1, scope: !2070, file: !26, line: 779, type: !6)
!2072 = !DILocation(line: 0, scope: !2070)
!2073 = !{!"1381"}
!2074 = !DILocalVariable(name: "y", arg: 2, scope: !2070, file: !26, line: 779, type: !6)
!2075 = !{!"1382"}
!2076 = !DILocation(line: 783, column: 8, scope: !2070)
!2077 = !{!"1383"}
!2078 = !DILocalVariable(name: "q", scope: !2070, file: !26, line: 781, type: !6)
!2079 = !{!"1384"}
!2080 = !DILocation(line: 784, column: 18, scope: !2070)
!2081 = !{!"1385"}
!2082 = !DILocation(line: 784, column: 16, scope: !2070)
!2083 = !{!"1386"}
!2084 = !DILocation(line: 784, column: 22, scope: !2070)
!2085 = !{!"1387"}
!2086 = !DILocation(line: 784, column: 9, scope: !2070)
!2087 = !{!"1388"}
!2088 = !DILocation(line: 784, column: 2, scope: !2070)
!2089 = !{!"1389"}
!2090 = distinct !DISubprogram(name: "MUX", scope: !26, file: !26, line: 770, type: !2091, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!6, !6, !6, !6}
!2093 = !DILocalVariable(name: "ctl", arg: 1, scope: !2090, file: !26, line: 770, type: !6)
!2094 = !DILocation(line: 0, scope: !2090)
!2095 = !{!"1390"}
!2096 = !DILocalVariable(name: "x", arg: 2, scope: !2090, file: !26, line: 770, type: !6)
!2097 = !{!"1391"}
!2098 = !DILocalVariable(name: "y", arg: 3, scope: !2090, file: !26, line: 770, type: !6)
!2099 = !{!"1392"}
!2100 = !DILocation(line: 772, column: 14, scope: !2090)
!2101 = !{!"1393"}
!2102 = !DILocation(line: 772, column: 24, scope: !2090)
!2103 = !{!"1394"}
!2104 = !DILocation(line: 772, column: 19, scope: !2090)
!2105 = !{!"1395"}
!2106 = !DILocation(line: 772, column: 11, scope: !2090)
!2107 = !{!"1396"}
!2108 = !DILocation(line: 772, column: 2, scope: !2090)
!2109 = !{!"1397"}
!2110 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !1139, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2111 = !DILocalVariable(name: "dst", arg: 1, scope: !2110, file: !26, line: 542, type: !13)
!2112 = !DILocation(line: 0, scope: !2110)
!2113 = !{!"1398"}
!2114 = !DILocalVariable(name: "x", arg: 2, scope: !2110, file: !26, line: 542, type: !6)
!2115 = !{!"1399"}
!2116 = !DILocation(line: 545, column: 3, scope: !2110)
!2117 = !{!"1400"}
!2118 = !DILocation(line: 545, column: 25, scope: !2110)
!2119 = !{!"1401"}
!2120 = !DILocation(line: 545, column: 27, scope: !2110)
!2121 = !{!"1402"}
!2122 = !DILocation(line: 555, column: 1, scope: !2110)
!2123 = !{!"1403"}
!2124 = distinct !DISubprogram(name: "NOT", scope: !26, file: !26, line: 761, type: !2125, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !39, retainedNodes: !18)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!6, !6}
!2127 = !DILocalVariable(name: "ctl", arg: 1, scope: !2124, file: !26, line: 761, type: !6)
!2128 = !DILocation(line: 0, scope: !2124)
!2129 = !{!"1404"}
!2130 = !DILocation(line: 763, column: 13, scope: !2124)
!2131 = !{!"1405"}
!2132 = !DILocation(line: 763, column: 2, scope: !2124)
!2133 = !{!"1406"}
!2134 = distinct !DISubprogram(name: "run_wrapper", scope: !63, file: !63, line: 3, type: !1155, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !18)
!2135 = !DILocalVariable(name: "key", arg: 1, scope: !2134, file: !63, line: 3, type: !11)
!2136 = !DILocation(line: 0, scope: !2134)
!2137 = !{!"1407"}
!2138 = !DILocalVariable(name: "iv", arg: 2, scope: !2134, file: !63, line: 3, type: !11)
!2139 = !{!"1408"}
!2140 = !DILocalVariable(name: "data", arg: 3, scope: !2134, file: !63, line: 4, type: !13)
!2141 = !{!"1409"}
!2142 = !DILocalVariable(name: "len", arg: 4, scope: !2134, file: !63, line: 4, type: !14)
!2143 = !{!"1410"}
!2144 = !DILocalVariable(name: "aad", arg: 5, scope: !2134, file: !63, line: 4, type: !11)
!2145 = !{!"1411"}
!2146 = !DILocalVariable(name: "aad_len", arg: 6, scope: !2134, file: !63, line: 4, type: !14)
!2147 = !{!"1412"}
!2148 = !DILocalVariable(name: "tag", arg: 7, scope: !2134, file: !63, line: 5, type: !13)
!2149 = !{!"1413"}
!2150 = !DILocalVariable(name: "ichacha", arg: 8, scope: !2134, file: !63, line: 5, type: !1157)
!2151 = !{!"1414"}
!2152 = !DILocalVariable(name: "encrypt", arg: 9, scope: !2134, file: !63, line: 5, type: !211)
!2153 = !{!"1415"}
!2154 = !DILocation(line: 6, column: 12, scope: !2134)
!2155 = !{!"1416"}
!2156 = !DILocation(line: 6, column: 2, scope: !2134)
!2157 = !{!"1417"}
!2158 = !DILocation(line: 7, column: 12, scope: !2134)
!2159 = !{!"1418"}
!2160 = !DILocation(line: 7, column: 2, scope: !2134)
!2161 = !{!"1419"}
!2162 = !DILocation(line: 8, column: 12, scope: !2134)
!2163 = !{!"1420"}
!2164 = !DILocation(line: 8, column: 2, scope: !2134)
!2165 = !{!"1421"}
!2166 = !DILocation(line: 9, column: 12, scope: !2134)
!2167 = !{!"1422"}
!2168 = !DILocation(line: 9, column: 2, scope: !2134)
!2169 = !{!"1423"}
!2170 = !DILocation(line: 10, column: 12, scope: !2134)
!2171 = !{!"1424"}
!2172 = !DILocation(line: 10, column: 2, scope: !2134)
!2173 = !{!"1425"}
!2174 = !DILocation(line: 11, column: 12, scope: !2134)
!2175 = !{!"1426"}
!2176 = !DILocation(line: 11, column: 2, scope: !2134)
!2177 = !{!"1427"}
!2178 = !DILocation(line: 12, column: 12, scope: !2134)
!2179 = !{!"1428"}
!2180 = !DILocation(line: 12, column: 2, scope: !2134)
!2181 = !{!"1429"}
!2182 = !DILocation(line: 13, column: 12, scope: !2134)
!2183 = !{!"1430"}
!2184 = !DILocation(line: 13, column: 2, scope: !2134)
!2185 = !{!"1431"}
!2186 = !DILocation(line: 16, column: 12, scope: !2134)
!2187 = !{!"1432"}
!2188 = !DILocation(line: 16, column: 2, scope: !2134)
!2189 = !{!"1433"}
!2190 = !DILocation(line: 17, column: 12, scope: !2134)
!2191 = !{!"1434"}
!2192 = !DILocation(line: 17, column: 2, scope: !2134)
!2193 = !{!"1435"}
!2194 = !DILocation(line: 18, column: 12, scope: !2134)
!2195 = !{!"1436"}
!2196 = !DILocation(line: 18, column: 2, scope: !2134)
!2197 = !{!"1437"}
!2198 = !DILocation(line: 21, column: 2, scope: !2134)
!2199 = !{!"1438"}
!2200 = !DILocation(line: 22, column: 1, scope: !2134)
!2201 = !{!"1439"}
!2202 = distinct !DISubprogram(name: "run_wrapper_t", scope: !63, file: !63, line: 32, type: !2203, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !18)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null}
!2205 = !DILocation(line: 34, column: 19, scope: !2202)
!2206 = !{!"1440"}
!2207 = !DILocalVariable(name: "key", scope: !2202, file: !63, line: 34, type: !11)
!2208 = !DILocation(line: 0, scope: !2202)
!2209 = !{!"1441"}
!2210 = !DILocation(line: 35, column: 19, scope: !2202)
!2211 = !{!"1442"}
!2212 = !DILocalVariable(name: "iv", scope: !2202, file: !63, line: 35, type: !11)
!2213 = !{!"1443"}
!2214 = !DILocation(line: 37, column: 15, scope: !2202)
!2215 = !{!"1444"}
!2216 = !DILocalVariable(name: "data", scope: !2202, file: !63, line: 37, type: !13)
!2217 = !{!"1445"}
!2218 = !DILocalVariable(name: "len", scope: !2202, file: !63, line: 38, type: !14)
!2219 = !{!"1446"}
!2220 = !DILocation(line: 39, column: 22, scope: !2202)
!2221 = !{!"1447"}
!2222 = !DILocalVariable(name: "aad", scope: !2202, file: !63, line: 39, type: !11)
!2223 = !{!"1448"}
!2224 = !DILocalVariable(name: "aad_len", scope: !2202, file: !63, line: 40, type: !14)
!2225 = !{!"1449"}
!2226 = !DILocation(line: 41, column: 14, scope: !2202)
!2227 = !{!"1450"}
!2228 = !DILocalVariable(name: "tag", scope: !2202, file: !63, line: 41, type: !13)
!2229 = !{!"1451"}
!2230 = !DILocalVariable(name: "encrypt", scope: !2202, file: !63, line: 42, type: !211)
!2231 = !{!"1452"}
!2232 = !DILocation(line: 44, column: 2, scope: !2202)
!2233 = !{!"1453"}
!2234 = !DILocation(line: 45, column: 1, scope: !2202)
!2235 = !{!"1454"}
