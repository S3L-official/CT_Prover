; ModuleID = 'run-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.br_union_u32 = type { i32 }
%union.br_union_u64 = type { i64 }
%struct.smack_value = type { i8* }

@br_chacha20_ct_run.CW = internal constant [4 x i32] [i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236], align 16, !dbg !0, !psr.id !38
@P1305 = internal constant [10 x i16] [i16 138, i16 32763, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 1023], align 16, !dbg !39, !psr.id !65
@R2 = internal constant <{ i16, i16, [8 x i16] }> <{ i16 138, i16 25600, [8 x i16] zeroinitializer }>, align 16, !dbg !56, !psr.id !66

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_chacha20_ct_run(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 !dbg !2 {
  %6 = alloca [8 x i32], align 16, !psr.id !73
  %7 = alloca [3 x i32], align 4, !psr.id !74
  %8 = alloca [16 x i32], align 16, !psr.id !75
  %9 = alloca [64 x i8], align 16, !psr.id !76
  call void @llvm.dbg.value(metadata i8* %0, metadata !77, metadata !DIExpression()), !dbg !78, !psr.id !79
  call void @llvm.dbg.value(metadata i8* %1, metadata !80, metadata !DIExpression()), !dbg !78, !psr.id !81
  call void @llvm.dbg.value(metadata i32 %2, metadata !82, metadata !DIExpression()), !dbg !78, !psr.id !83
  call void @llvm.dbg.value(metadata i8* %3, metadata !84, metadata !DIExpression()), !dbg !78, !psr.id !85
  call void @llvm.dbg.value(metadata i64 %4, metadata !86, metadata !DIExpression()), !dbg !78, !psr.id !87
  call void @llvm.dbg.declare(metadata [8 x i32]* %6, metadata !88, metadata !DIExpression()), !dbg !90, !psr.id !91
  call void @llvm.dbg.declare(metadata [3 x i32]* %7, metadata !92, metadata !DIExpression()), !dbg !96, !psr.id !97
  call void @llvm.dbg.value(metadata i8* %3, metadata !98, metadata !DIExpression()), !dbg !78, !psr.id !100
  call void @llvm.dbg.value(metadata i64 0, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !102
  br label %10, !dbg !103, !psr.id !105

10:                                               ; preds = %17, %5
  %.01 = phi i64 [ 0, %5 ], [ %18, %17 ], !dbg !106, !psr.id !107
  call void @llvm.dbg.value(metadata i64 %.01, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !108
  %11 = icmp ult i64 %.01, 8, !dbg !109, !psr.id !111
  br i1 %11, label %12, label %19, !dbg !112, !psr.id !113

12:                                               ; preds = %10
  %13 = shl i64 %.01, 2, !dbg !114, !psr.id !116
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !117, !psr.id !118, !PointTainted !119
  %15 = call i32 @br_dec32le(i8* %14), !dbg !120, !psr.id !121, !ValueTainted !122
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %.01, !dbg !123, !psr.id !124, !PointTainted !119
  store i32 %15, i32* %16, align 4, !dbg !125, !psr.id !126
  br label %17, !dbg !127, !psr.id !128

17:                                               ; preds = %12
  %18 = add i64 %.01, 1, !dbg !129, !psr.id !130
  call void @llvm.dbg.value(metadata i64 %18, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !131
  br label %10, !dbg !132, !llvm.loop !133, !psr.id !136

19:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i64 0, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !137
  br label %20, !dbg !138, !psr.id !140

20:                                               ; preds = %27, %19
  %.1 = phi i64 [ 0, %19 ], [ %28, %27 ], !dbg !141, !psr.id !142
  call void @llvm.dbg.value(metadata i64 %.1, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !143
  %21 = icmp ult i64 %.1, 3, !dbg !144, !psr.id !146
  br i1 %21, label %22, label %29, !dbg !147, !psr.id !148

22:                                               ; preds = %20
  %23 = shl i64 %.1, 2, !dbg !149, !psr.id !151
  %24 = getelementptr inbounds i8, i8* %1, i64 %23, !dbg !152, !psr.id !153
  %25 = call i32 @br_dec32le(i8* %24), !dbg !154, !psr.id !155
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %.1, !dbg !156, !psr.id !157
  store i32 %25, i32* %26, align 4, !dbg !158, !psr.id !159
  br label %27, !dbg !160, !psr.id !161

27:                                               ; preds = %22
  %28 = add i64 %.1, 1, !dbg !162, !psr.id !163
  call void @llvm.dbg.value(metadata i64 %28, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !164
  br label %20, !dbg !165, !llvm.loop !166, !psr.id !168

29:                                               ; preds = %20
  br label %30, !dbg !169, !psr.id !170

30:                                               ; preds = %705, %29
  %.04 = phi i64 [ %4, %29 ], [ %707, %705 ], !psr.id !171
  %.03 = phi i8* [ %3, %29 ], [ %706, %705 ], !dbg !78, !psr.id !172
  %.02 = phi i32 [ %2, %29 ], [ %708, %705 ], !psr.id !173
  call void @llvm.dbg.value(metadata i32 %.02, metadata !82, metadata !DIExpression()), !dbg !78, !psr.id !174
  call void @llvm.dbg.value(metadata i8* %.03, metadata !98, metadata !DIExpression()), !dbg !78, !psr.id !175
  call void @llvm.dbg.value(metadata i64 %.04, metadata !86, metadata !DIExpression()), !dbg !78, !psr.id !176
  %31 = icmp ugt i64 %.04, 0, !dbg !177, !psr.id !178
  br i1 %31, label %32, label %709, !dbg !169, !psr.id !179

32:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata [16 x i32]* %8, metadata !180, metadata !DIExpression()), !dbg !185, !psr.id !186
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !187, metadata !DIExpression()), !dbg !191, !psr.id !192
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !193, !psr.id !194
  %34 = bitcast i32* %33 to i8*, !dbg !195, !psr.id !196
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %34, i8* align 16 bitcast ([4 x i32]* @br_chacha20_ct_run.CW to i8*), i64 16, i1 false), !dbg !195, !psr.id !197
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !198, !psr.id !199
  %36 = bitcast i32* %35 to i8*, !dbg !200, !psr.id !201
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !200, !psr.id !202
  %38 = bitcast i32* %37 to i8*, !dbg !200, !psr.id !203
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 %38, i64 32, i1 false), !dbg !200, !psr.id !204
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !205, !psr.id !206
  store i32 %.02, i32* %39, align 16, !dbg !207, !psr.id !208
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !209, !psr.id !210
  %41 = bitcast i32* %40 to i8*, !dbg !211, !psr.id !212
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0, !dbg !211, !psr.id !213
  %43 = bitcast i32* %42 to i8*, !dbg !211, !psr.id !214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %43, i64 12, i1 false), !dbg !211, !psr.id !215
  call void @llvm.dbg.value(metadata i32 0, metadata !216, metadata !DIExpression()), !dbg !218, !psr.id !219
  br label %44, !dbg !220, !psr.id !222

44:                                               ; preds = %639, %32
  %.0 = phi i32 [ 0, %32 ], [ %640, %639 ], !dbg !223, !psr.id !224
  call void @llvm.dbg.value(metadata i32 %.0, metadata !216, metadata !DIExpression()), !dbg !218, !psr.id !225
  %45 = icmp slt i32 %.0, 10, !dbg !226, !psr.id !228
  br i1 %45, label %46, label %641, !dbg !229, !psr.id !230

46:                                               ; preds = %44
  br label %47, !dbg !231, !psr.id !233

47:                                               ; preds = %46
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !234, !psr.id !236
  %49 = load i32, i32* %48, align 16, !dbg !234, !psr.id !237
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !234, !psr.id !238
  %51 = load i32, i32* %50, align 16, !dbg !234, !psr.id !239
  %52 = add i32 %51, %49, !dbg !234, !psr.id !240
  store i32 %52, i32* %50, align 16, !dbg !234, !psr.id !241
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !234, !psr.id !242
  %54 = load i32, i32* %53, align 16, !dbg !234, !psr.id !243
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !234, !psr.id !244
  %56 = load i32, i32* %55, align 16, !dbg !234, !psr.id !245
  %57 = xor i32 %56, %54, !dbg !234, !psr.id !246
  store i32 %57, i32* %55, align 16, !dbg !234, !psr.id !247
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !234, !psr.id !248
  %59 = load i32, i32* %58, align 16, !dbg !234, !psr.id !249
  %60 = shl i32 %59, 16, !dbg !234, !psr.id !250
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !234, !psr.id !251
  %62 = load i32, i32* %61, align 16, !dbg !234, !psr.id !252
  %63 = lshr i32 %62, 16, !dbg !234, !psr.id !253
  %64 = or i32 %60, %63, !dbg !234, !psr.id !254
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !234, !psr.id !255
  store i32 %64, i32* %65, align 16, !dbg !234, !psr.id !256
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !234, !psr.id !257
  %67 = load i32, i32* %66, align 16, !dbg !234, !psr.id !258
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !234, !psr.id !259
  %69 = load i32, i32* %68, align 16, !dbg !234, !psr.id !260
  %70 = add i32 %69, %67, !dbg !234, !psr.id !261
  store i32 %70, i32* %68, align 16, !dbg !234, !psr.id !262
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !234, !psr.id !263
  %72 = load i32, i32* %71, align 16, !dbg !234, !psr.id !264
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !234, !psr.id !265
  %74 = load i32, i32* %73, align 16, !dbg !234, !psr.id !266
  %75 = xor i32 %74, %72, !dbg !234, !psr.id !267
  store i32 %75, i32* %73, align 16, !dbg !234, !psr.id !268
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !234, !psr.id !269
  %77 = load i32, i32* %76, align 16, !dbg !234, !psr.id !270
  %78 = shl i32 %77, 12, !dbg !234, !psr.id !271
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !234, !psr.id !272
  %80 = load i32, i32* %79, align 16, !dbg !234, !psr.id !273
  %81 = lshr i32 %80, 20, !dbg !234, !psr.id !274
  %82 = or i32 %78, %81, !dbg !234, !psr.id !275
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !234, !psr.id !276
  store i32 %82, i32* %83, align 16, !dbg !234, !psr.id !277
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !234, !psr.id !278
  %85 = load i32, i32* %84, align 16, !dbg !234, !psr.id !279
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !234, !psr.id !280
  %87 = load i32, i32* %86, align 16, !dbg !234, !psr.id !281
  %88 = add i32 %87, %85, !dbg !234, !psr.id !282
  store i32 %88, i32* %86, align 16, !dbg !234, !psr.id !283
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !234, !psr.id !284
  %90 = load i32, i32* %89, align 16, !dbg !234, !psr.id !285
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !234, !psr.id !286
  %92 = load i32, i32* %91, align 16, !dbg !234, !psr.id !287
  %93 = xor i32 %92, %90, !dbg !234, !psr.id !288
  store i32 %93, i32* %91, align 16, !dbg !234, !psr.id !289
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !234, !psr.id !290
  %95 = load i32, i32* %94, align 16, !dbg !234, !psr.id !291
  %96 = shl i32 %95, 8, !dbg !234, !psr.id !292
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !234, !psr.id !293
  %98 = load i32, i32* %97, align 16, !dbg !234, !psr.id !294
  %99 = lshr i32 %98, 24, !dbg !234, !psr.id !295
  %100 = or i32 %96, %99, !dbg !234, !psr.id !296
  %101 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !234, !psr.id !297
  store i32 %100, i32* %101, align 16, !dbg !234, !psr.id !298
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !234, !psr.id !299
  %103 = load i32, i32* %102, align 16, !dbg !234, !psr.id !300
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !234, !psr.id !301
  %105 = load i32, i32* %104, align 16, !dbg !234, !psr.id !302
  %106 = add i32 %105, %103, !dbg !234, !psr.id !303
  store i32 %106, i32* %104, align 16, !dbg !234, !psr.id !304
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !234, !psr.id !305
  %108 = load i32, i32* %107, align 16, !dbg !234, !psr.id !306
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !234, !psr.id !307
  %110 = load i32, i32* %109, align 16, !dbg !234, !psr.id !308
  %111 = xor i32 %110, %108, !dbg !234, !psr.id !309
  store i32 %111, i32* %109, align 16, !dbg !234, !psr.id !310
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !234, !psr.id !311
  %113 = load i32, i32* %112, align 16, !dbg !234, !psr.id !312
  %114 = shl i32 %113, 7, !dbg !234, !psr.id !313
  %115 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !234, !psr.id !314
  %116 = load i32, i32* %115, align 16, !dbg !234, !psr.id !315
  %117 = lshr i32 %116, 25, !dbg !234, !psr.id !316
  %118 = or i32 %114, %117, !dbg !234, !psr.id !317
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !234, !psr.id !318
  store i32 %118, i32* %119, align 16, !dbg !234, !psr.id !319
  br label %120, !dbg !234, !psr.id !320

120:                                              ; preds = %47
  br label %121, !dbg !321, !psr.id !322

121:                                              ; preds = %120
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !323, !psr.id !325
  %123 = load i32, i32* %122, align 4, !dbg !323, !psr.id !326
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !323, !psr.id !327
  %125 = load i32, i32* %124, align 4, !dbg !323, !psr.id !328
  %126 = add i32 %125, %123, !dbg !323, !psr.id !329
  store i32 %126, i32* %124, align 4, !dbg !323, !psr.id !330
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !323, !psr.id !331
  %128 = load i32, i32* %127, align 4, !dbg !323, !psr.id !332
  %129 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !323, !psr.id !333
  %130 = load i32, i32* %129, align 4, !dbg !323, !psr.id !334
  %131 = xor i32 %130, %128, !dbg !323, !psr.id !335
  store i32 %131, i32* %129, align 4, !dbg !323, !psr.id !336
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !323, !psr.id !337
  %133 = load i32, i32* %132, align 4, !dbg !323, !psr.id !338
  %134 = shl i32 %133, 16, !dbg !323, !psr.id !339
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !323, !psr.id !340
  %136 = load i32, i32* %135, align 4, !dbg !323, !psr.id !341
  %137 = lshr i32 %136, 16, !dbg !323, !psr.id !342
  %138 = or i32 %134, %137, !dbg !323, !psr.id !343
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !323, !psr.id !344
  store i32 %138, i32* %139, align 4, !dbg !323, !psr.id !345
  %140 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !323, !psr.id !346
  %141 = load i32, i32* %140, align 4, !dbg !323, !psr.id !347
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !323, !psr.id !348
  %143 = load i32, i32* %142, align 4, !dbg !323, !psr.id !349
  %144 = add i32 %143, %141, !dbg !323, !psr.id !350
  store i32 %144, i32* %142, align 4, !dbg !323, !psr.id !351
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !323, !psr.id !352
  %146 = load i32, i32* %145, align 4, !dbg !323, !psr.id !353
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !323, !psr.id !354
  %148 = load i32, i32* %147, align 4, !dbg !323, !psr.id !355
  %149 = xor i32 %148, %146, !dbg !323, !psr.id !356
  store i32 %149, i32* %147, align 4, !dbg !323, !psr.id !357
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !323, !psr.id !358
  %151 = load i32, i32* %150, align 4, !dbg !323, !psr.id !359
  %152 = shl i32 %151, 12, !dbg !323, !psr.id !360
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !323, !psr.id !361
  %154 = load i32, i32* %153, align 4, !dbg !323, !psr.id !362
  %155 = lshr i32 %154, 20, !dbg !323, !psr.id !363
  %156 = or i32 %152, %155, !dbg !323, !psr.id !364
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !323, !psr.id !365
  store i32 %156, i32* %157, align 4, !dbg !323, !psr.id !366
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !323, !psr.id !367
  %159 = load i32, i32* %158, align 4, !dbg !323, !psr.id !368
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !323, !psr.id !369
  %161 = load i32, i32* %160, align 4, !dbg !323, !psr.id !370
  %162 = add i32 %161, %159, !dbg !323, !psr.id !371
  store i32 %162, i32* %160, align 4, !dbg !323, !psr.id !372
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !323, !psr.id !373
  %164 = load i32, i32* %163, align 4, !dbg !323, !psr.id !374
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !323, !psr.id !375
  %166 = load i32, i32* %165, align 4, !dbg !323, !psr.id !376
  %167 = xor i32 %166, %164, !dbg !323, !psr.id !377
  store i32 %167, i32* %165, align 4, !dbg !323, !psr.id !378
  %168 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !323, !psr.id !379
  %169 = load i32, i32* %168, align 4, !dbg !323, !psr.id !380
  %170 = shl i32 %169, 8, !dbg !323, !psr.id !381
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !323, !psr.id !382
  %172 = load i32, i32* %171, align 4, !dbg !323, !psr.id !383
  %173 = lshr i32 %172, 24, !dbg !323, !psr.id !384
  %174 = or i32 %170, %173, !dbg !323, !psr.id !385
  %175 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !323, !psr.id !386
  store i32 %174, i32* %175, align 4, !dbg !323, !psr.id !387
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !323, !psr.id !388
  %177 = load i32, i32* %176, align 4, !dbg !323, !psr.id !389
  %178 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !323, !psr.id !390
  %179 = load i32, i32* %178, align 4, !dbg !323, !psr.id !391
  %180 = add i32 %179, %177, !dbg !323, !psr.id !392
  store i32 %180, i32* %178, align 4, !dbg !323, !psr.id !393
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !323, !psr.id !394
  %182 = load i32, i32* %181, align 4, !dbg !323, !psr.id !395
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !323, !psr.id !396
  %184 = load i32, i32* %183, align 4, !dbg !323, !psr.id !397
  %185 = xor i32 %184, %182, !dbg !323, !psr.id !398
  store i32 %185, i32* %183, align 4, !dbg !323, !psr.id !399
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !323, !psr.id !400
  %187 = load i32, i32* %186, align 4, !dbg !323, !psr.id !401
  %188 = shl i32 %187, 7, !dbg !323, !psr.id !402
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !323, !psr.id !403
  %190 = load i32, i32* %189, align 4, !dbg !323, !psr.id !404
  %191 = lshr i32 %190, 25, !dbg !323, !psr.id !405
  %192 = or i32 %188, %191, !dbg !323, !psr.id !406
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !323, !psr.id !407
  store i32 %192, i32* %193, align 4, !dbg !323, !psr.id !408
  br label %194, !dbg !323, !psr.id !409

194:                                              ; preds = %121
  br label %195, !dbg !410, !psr.id !411

195:                                              ; preds = %194
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !412, !psr.id !414
  %197 = load i32, i32* %196, align 8, !dbg !412, !psr.id !415
  %198 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !412, !psr.id !416
  %199 = load i32, i32* %198, align 8, !dbg !412, !psr.id !417
  %200 = add i32 %199, %197, !dbg !412, !psr.id !418
  store i32 %200, i32* %198, align 8, !dbg !412, !psr.id !419
  %201 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !412, !psr.id !420
  %202 = load i32, i32* %201, align 8, !dbg !412, !psr.id !421
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !412, !psr.id !422
  %204 = load i32, i32* %203, align 8, !dbg !412, !psr.id !423
  %205 = xor i32 %204, %202, !dbg !412, !psr.id !424
  store i32 %205, i32* %203, align 8, !dbg !412, !psr.id !425
  %206 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !412, !psr.id !426
  %207 = load i32, i32* %206, align 8, !dbg !412, !psr.id !427
  %208 = shl i32 %207, 16, !dbg !412, !psr.id !428
  %209 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !412, !psr.id !429
  %210 = load i32, i32* %209, align 8, !dbg !412, !psr.id !430
  %211 = lshr i32 %210, 16, !dbg !412, !psr.id !431
  %212 = or i32 %208, %211, !dbg !412, !psr.id !432
  %213 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !412, !psr.id !433
  store i32 %212, i32* %213, align 8, !dbg !412, !psr.id !434
  %214 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !412, !psr.id !435
  %215 = load i32, i32* %214, align 8, !dbg !412, !psr.id !436
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !412, !psr.id !437
  %217 = load i32, i32* %216, align 8, !dbg !412, !psr.id !438
  %218 = add i32 %217, %215, !dbg !412, !psr.id !439
  store i32 %218, i32* %216, align 8, !dbg !412, !psr.id !440
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !412, !psr.id !441
  %220 = load i32, i32* %219, align 8, !dbg !412, !psr.id !442
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !412, !psr.id !443
  %222 = load i32, i32* %221, align 8, !dbg !412, !psr.id !444
  %223 = xor i32 %222, %220, !dbg !412, !psr.id !445
  store i32 %223, i32* %221, align 8, !dbg !412, !psr.id !446
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !412, !psr.id !447
  %225 = load i32, i32* %224, align 8, !dbg !412, !psr.id !448
  %226 = shl i32 %225, 12, !dbg !412, !psr.id !449
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !412, !psr.id !450
  %228 = load i32, i32* %227, align 8, !dbg !412, !psr.id !451
  %229 = lshr i32 %228, 20, !dbg !412, !psr.id !452
  %230 = or i32 %226, %229, !dbg !412, !psr.id !453
  %231 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !412, !psr.id !454
  store i32 %230, i32* %231, align 8, !dbg !412, !psr.id !455
  %232 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !412, !psr.id !456
  %233 = load i32, i32* %232, align 8, !dbg !412, !psr.id !457
  %234 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !412, !psr.id !458
  %235 = load i32, i32* %234, align 8, !dbg !412, !psr.id !459
  %236 = add i32 %235, %233, !dbg !412, !psr.id !460
  store i32 %236, i32* %234, align 8, !dbg !412, !psr.id !461
  %237 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !412, !psr.id !462
  %238 = load i32, i32* %237, align 8, !dbg !412, !psr.id !463
  %239 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !412, !psr.id !464
  %240 = load i32, i32* %239, align 8, !dbg !412, !psr.id !465
  %241 = xor i32 %240, %238, !dbg !412, !psr.id !466
  store i32 %241, i32* %239, align 8, !dbg !412, !psr.id !467
  %242 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !412, !psr.id !468
  %243 = load i32, i32* %242, align 8, !dbg !412, !psr.id !469
  %244 = shl i32 %243, 8, !dbg !412, !psr.id !470
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !412, !psr.id !471
  %246 = load i32, i32* %245, align 8, !dbg !412, !psr.id !472
  %247 = lshr i32 %246, 24, !dbg !412, !psr.id !473
  %248 = or i32 %244, %247, !dbg !412, !psr.id !474
  %249 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !412, !psr.id !475
  store i32 %248, i32* %249, align 8, !dbg !412, !psr.id !476
  %250 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !412, !psr.id !477
  %251 = load i32, i32* %250, align 8, !dbg !412, !psr.id !478
  %252 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !412, !psr.id !479
  %253 = load i32, i32* %252, align 8, !dbg !412, !psr.id !480
  %254 = add i32 %253, %251, !dbg !412, !psr.id !481
  store i32 %254, i32* %252, align 8, !dbg !412, !psr.id !482
  %255 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !412, !psr.id !483
  %256 = load i32, i32* %255, align 8, !dbg !412, !psr.id !484
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !412, !psr.id !485
  %258 = load i32, i32* %257, align 8, !dbg !412, !psr.id !486
  %259 = xor i32 %258, %256, !dbg !412, !psr.id !487
  store i32 %259, i32* %257, align 8, !dbg !412, !psr.id !488
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !412, !psr.id !489
  %261 = load i32, i32* %260, align 8, !dbg !412, !psr.id !490
  %262 = shl i32 %261, 7, !dbg !412, !psr.id !491
  %263 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !412, !psr.id !492
  %264 = load i32, i32* %263, align 8, !dbg !412, !psr.id !493
  %265 = lshr i32 %264, 25, !dbg !412, !psr.id !494
  %266 = or i32 %262, %265, !dbg !412, !psr.id !495
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !412, !psr.id !496
  store i32 %266, i32* %267, align 8, !dbg !412, !psr.id !497
  br label %268, !dbg !412, !psr.id !498

268:                                              ; preds = %195
  br label %269, !dbg !499, !psr.id !500

269:                                              ; preds = %268
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !501, !psr.id !503
  %271 = load i32, i32* %270, align 4, !dbg !501, !psr.id !504
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !501, !psr.id !505
  %273 = load i32, i32* %272, align 4, !dbg !501, !psr.id !506
  %274 = add i32 %273, %271, !dbg !501, !psr.id !507
  store i32 %274, i32* %272, align 4, !dbg !501, !psr.id !508
  %275 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !501, !psr.id !509
  %276 = load i32, i32* %275, align 4, !dbg !501, !psr.id !510
  %277 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !501, !psr.id !511
  %278 = load i32, i32* %277, align 4, !dbg !501, !psr.id !512
  %279 = xor i32 %278, %276, !dbg !501, !psr.id !513
  store i32 %279, i32* %277, align 4, !dbg !501, !psr.id !514
  %280 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !501, !psr.id !515
  %281 = load i32, i32* %280, align 4, !dbg !501, !psr.id !516
  %282 = shl i32 %281, 16, !dbg !501, !psr.id !517
  %283 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !501, !psr.id !518
  %284 = load i32, i32* %283, align 4, !dbg !501, !psr.id !519
  %285 = lshr i32 %284, 16, !dbg !501, !psr.id !520
  %286 = or i32 %282, %285, !dbg !501, !psr.id !521
  %287 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !501, !psr.id !522
  store i32 %286, i32* %287, align 4, !dbg !501, !psr.id !523
  %288 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !501, !psr.id !524
  %289 = load i32, i32* %288, align 4, !dbg !501, !psr.id !525
  %290 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !501, !psr.id !526
  %291 = load i32, i32* %290, align 4, !dbg !501, !psr.id !527
  %292 = add i32 %291, %289, !dbg !501, !psr.id !528
  store i32 %292, i32* %290, align 4, !dbg !501, !psr.id !529
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !501, !psr.id !530
  %294 = load i32, i32* %293, align 4, !dbg !501, !psr.id !531
  %295 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !501, !psr.id !532
  %296 = load i32, i32* %295, align 4, !dbg !501, !psr.id !533
  %297 = xor i32 %296, %294, !dbg !501, !psr.id !534
  store i32 %297, i32* %295, align 4, !dbg !501, !psr.id !535
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !501, !psr.id !536
  %299 = load i32, i32* %298, align 4, !dbg !501, !psr.id !537
  %300 = shl i32 %299, 12, !dbg !501, !psr.id !538
  %301 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !501, !psr.id !539
  %302 = load i32, i32* %301, align 4, !dbg !501, !psr.id !540
  %303 = lshr i32 %302, 20, !dbg !501, !psr.id !541
  %304 = or i32 %300, %303, !dbg !501, !psr.id !542
  %305 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !501, !psr.id !543
  store i32 %304, i32* %305, align 4, !dbg !501, !psr.id !544
  %306 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !501, !psr.id !545
  %307 = load i32, i32* %306, align 4, !dbg !501, !psr.id !546
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !501, !psr.id !547
  %309 = load i32, i32* %308, align 4, !dbg !501, !psr.id !548
  %310 = add i32 %309, %307, !dbg !501, !psr.id !549
  store i32 %310, i32* %308, align 4, !dbg !501, !psr.id !550
  %311 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !501, !psr.id !551
  %312 = load i32, i32* %311, align 4, !dbg !501, !psr.id !552
  %313 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !501, !psr.id !553
  %314 = load i32, i32* %313, align 4, !dbg !501, !psr.id !554
  %315 = xor i32 %314, %312, !dbg !501, !psr.id !555
  store i32 %315, i32* %313, align 4, !dbg !501, !psr.id !556
  %316 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !501, !psr.id !557
  %317 = load i32, i32* %316, align 4, !dbg !501, !psr.id !558
  %318 = shl i32 %317, 8, !dbg !501, !psr.id !559
  %319 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !501, !psr.id !560
  %320 = load i32, i32* %319, align 4, !dbg !501, !psr.id !561
  %321 = lshr i32 %320, 24, !dbg !501, !psr.id !562
  %322 = or i32 %318, %321, !dbg !501, !psr.id !563
  %323 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !501, !psr.id !564
  store i32 %322, i32* %323, align 4, !dbg !501, !psr.id !565
  %324 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !501, !psr.id !566
  %325 = load i32, i32* %324, align 4, !dbg !501, !psr.id !567
  %326 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !501, !psr.id !568
  %327 = load i32, i32* %326, align 4, !dbg !501, !psr.id !569
  %328 = add i32 %327, %325, !dbg !501, !psr.id !570
  store i32 %328, i32* %326, align 4, !dbg !501, !psr.id !571
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !501, !psr.id !572
  %330 = load i32, i32* %329, align 4, !dbg !501, !psr.id !573
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !501, !psr.id !574
  %332 = load i32, i32* %331, align 4, !dbg !501, !psr.id !575
  %333 = xor i32 %332, %330, !dbg !501, !psr.id !576
  store i32 %333, i32* %331, align 4, !dbg !501, !psr.id !577
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !501, !psr.id !578
  %335 = load i32, i32* %334, align 4, !dbg !501, !psr.id !579
  %336 = shl i32 %335, 7, !dbg !501, !psr.id !580
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !501, !psr.id !581
  %338 = load i32, i32* %337, align 4, !dbg !501, !psr.id !582
  %339 = lshr i32 %338, 25, !dbg !501, !psr.id !583
  %340 = or i32 %336, %339, !dbg !501, !psr.id !584
  %341 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !501, !psr.id !585
  store i32 %340, i32* %341, align 4, !dbg !501, !psr.id !586
  br label %342, !dbg !501, !psr.id !587

342:                                              ; preds = %269
  br label %343, !dbg !588, !psr.id !589

343:                                              ; preds = %342
  %344 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !590, !psr.id !592
  %345 = load i32, i32* %344, align 4, !dbg !590, !psr.id !593
  %346 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !590, !psr.id !594
  %347 = load i32, i32* %346, align 16, !dbg !590, !psr.id !595
  %348 = add i32 %347, %345, !dbg !590, !psr.id !596
  store i32 %348, i32* %346, align 16, !dbg !590, !psr.id !597
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !590, !psr.id !598
  %350 = load i32, i32* %349, align 16, !dbg !590, !psr.id !599
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !590, !psr.id !600
  %352 = load i32, i32* %351, align 4, !dbg !590, !psr.id !601
  %353 = xor i32 %352, %350, !dbg !590, !psr.id !602
  store i32 %353, i32* %351, align 4, !dbg !590, !psr.id !603
  %354 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !590, !psr.id !604
  %355 = load i32, i32* %354, align 4, !dbg !590, !psr.id !605
  %356 = shl i32 %355, 16, !dbg !590, !psr.id !606
  %357 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !590, !psr.id !607
  %358 = load i32, i32* %357, align 4, !dbg !590, !psr.id !608
  %359 = lshr i32 %358, 16, !dbg !590, !psr.id !609
  %360 = or i32 %356, %359, !dbg !590, !psr.id !610
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !590, !psr.id !611
  store i32 %360, i32* %361, align 4, !dbg !590, !psr.id !612
  %362 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !590, !psr.id !613
  %363 = load i32, i32* %362, align 4, !dbg !590, !psr.id !614
  %364 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !590, !psr.id !615
  %365 = load i32, i32* %364, align 8, !dbg !590, !psr.id !616
  %366 = add i32 %365, %363, !dbg !590, !psr.id !617
  store i32 %366, i32* %364, align 8, !dbg !590, !psr.id !618
  %367 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !590, !psr.id !619
  %368 = load i32, i32* %367, align 8, !dbg !590, !psr.id !620
  %369 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !590, !psr.id !621
  %370 = load i32, i32* %369, align 4, !dbg !590, !psr.id !622
  %371 = xor i32 %370, %368, !dbg !590, !psr.id !623
  store i32 %371, i32* %369, align 4, !dbg !590, !psr.id !624
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !590, !psr.id !625
  %373 = load i32, i32* %372, align 4, !dbg !590, !psr.id !626
  %374 = shl i32 %373, 12, !dbg !590, !psr.id !627
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !590, !psr.id !628
  %376 = load i32, i32* %375, align 4, !dbg !590, !psr.id !629
  %377 = lshr i32 %376, 20, !dbg !590, !psr.id !630
  %378 = or i32 %374, %377, !dbg !590, !psr.id !631
  %379 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !590, !psr.id !632
  store i32 %378, i32* %379, align 4, !dbg !590, !psr.id !633
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !590, !psr.id !634
  %381 = load i32, i32* %380, align 4, !dbg !590, !psr.id !635
  %382 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !590, !psr.id !636
  %383 = load i32, i32* %382, align 16, !dbg !590, !psr.id !637
  %384 = add i32 %383, %381, !dbg !590, !psr.id !638
  store i32 %384, i32* %382, align 16, !dbg !590, !psr.id !639
  %385 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0, !dbg !590, !psr.id !640
  %386 = load i32, i32* %385, align 16, !dbg !590, !psr.id !641
  %387 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !590, !psr.id !642
  %388 = load i32, i32* %387, align 4, !dbg !590, !psr.id !643
  %389 = xor i32 %388, %386, !dbg !590, !psr.id !644
  store i32 %389, i32* %387, align 4, !dbg !590, !psr.id !645
  %390 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !590, !psr.id !646
  %391 = load i32, i32* %390, align 4, !dbg !590, !psr.id !647
  %392 = shl i32 %391, 8, !dbg !590, !psr.id !648
  %393 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !590, !psr.id !649
  %394 = load i32, i32* %393, align 4, !dbg !590, !psr.id !650
  %395 = lshr i32 %394, 24, !dbg !590, !psr.id !651
  %396 = or i32 %392, %395, !dbg !590, !psr.id !652
  %397 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !590, !psr.id !653
  store i32 %396, i32* %397, align 4, !dbg !590, !psr.id !654
  %398 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15, !dbg !590, !psr.id !655
  %399 = load i32, i32* %398, align 4, !dbg !590, !psr.id !656
  %400 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !590, !psr.id !657
  %401 = load i32, i32* %400, align 8, !dbg !590, !psr.id !658
  %402 = add i32 %401, %399, !dbg !590, !psr.id !659
  store i32 %402, i32* %400, align 8, !dbg !590, !psr.id !660
  %403 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10, !dbg !590, !psr.id !661
  %404 = load i32, i32* %403, align 8, !dbg !590, !psr.id !662
  %405 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !590, !psr.id !663
  %406 = load i32, i32* %405, align 4, !dbg !590, !psr.id !664
  %407 = xor i32 %406, %404, !dbg !590, !psr.id !665
  store i32 %407, i32* %405, align 4, !dbg !590, !psr.id !666
  %408 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !590, !psr.id !667
  %409 = load i32, i32* %408, align 4, !dbg !590, !psr.id !668
  %410 = shl i32 %409, 7, !dbg !590, !psr.id !669
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !590, !psr.id !670
  %412 = load i32, i32* %411, align 4, !dbg !590, !psr.id !671
  %413 = lshr i32 %412, 25, !dbg !590, !psr.id !672
  %414 = or i32 %410, %413, !dbg !590, !psr.id !673
  %415 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5, !dbg !590, !psr.id !674
  store i32 %414, i32* %415, align 4, !dbg !590, !psr.id !675
  br label %416, !dbg !590, !psr.id !676

416:                                              ; preds = %343
  br label %417, !dbg !677, !psr.id !678

417:                                              ; preds = %416
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !679, !psr.id !681
  %419 = load i32, i32* %418, align 8, !dbg !679, !psr.id !682
  %420 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !679, !psr.id !683
  %421 = load i32, i32* %420, align 4, !dbg !679, !psr.id !684
  %422 = add i32 %421, %419, !dbg !679, !psr.id !685
  store i32 %422, i32* %420, align 4, !dbg !679, !psr.id !686
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !679, !psr.id !687
  %424 = load i32, i32* %423, align 4, !dbg !679, !psr.id !688
  %425 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !679, !psr.id !689
  %426 = load i32, i32* %425, align 16, !dbg !679, !psr.id !690
  %427 = xor i32 %426, %424, !dbg !679, !psr.id !691
  store i32 %427, i32* %425, align 16, !dbg !679, !psr.id !692
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !679, !psr.id !693
  %429 = load i32, i32* %428, align 16, !dbg !679, !psr.id !694
  %430 = shl i32 %429, 16, !dbg !679, !psr.id !695
  %431 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !679, !psr.id !696
  %432 = load i32, i32* %431, align 16, !dbg !679, !psr.id !697
  %433 = lshr i32 %432, 16, !dbg !679, !psr.id !698
  %434 = or i32 %430, %433, !dbg !679, !psr.id !699
  %435 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !679, !psr.id !700
  store i32 %434, i32* %435, align 16, !dbg !679, !psr.id !701
  %436 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !679, !psr.id !702
  %437 = load i32, i32* %436, align 16, !dbg !679, !psr.id !703
  %438 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !679, !psr.id !704
  %439 = load i32, i32* %438, align 4, !dbg !679, !psr.id !705
  %440 = add i32 %439, %437, !dbg !679, !psr.id !706
  store i32 %440, i32* %438, align 4, !dbg !679, !psr.id !707
  %441 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !679, !psr.id !708
  %442 = load i32, i32* %441, align 4, !dbg !679, !psr.id !709
  %443 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !679, !psr.id !710
  %444 = load i32, i32* %443, align 8, !dbg !679, !psr.id !711
  %445 = xor i32 %444, %442, !dbg !679, !psr.id !712
  store i32 %445, i32* %443, align 8, !dbg !679, !psr.id !713
  %446 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !679, !psr.id !714
  %447 = load i32, i32* %446, align 8, !dbg !679, !psr.id !715
  %448 = shl i32 %447, 12, !dbg !679, !psr.id !716
  %449 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !679, !psr.id !717
  %450 = load i32, i32* %449, align 8, !dbg !679, !psr.id !718
  %451 = lshr i32 %450, 20, !dbg !679, !psr.id !719
  %452 = or i32 %448, %451, !dbg !679, !psr.id !720
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !679, !psr.id !721
  store i32 %452, i32* %453, align 8, !dbg !679, !psr.id !722
  %454 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !679, !psr.id !723
  %455 = load i32, i32* %454, align 8, !dbg !679, !psr.id !724
  %456 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !679, !psr.id !725
  %457 = load i32, i32* %456, align 4, !dbg !679, !psr.id !726
  %458 = add i32 %457, %455, !dbg !679, !psr.id !727
  store i32 %458, i32* %456, align 4, !dbg !679, !psr.id !728
  %459 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1, !dbg !679, !psr.id !729
  %460 = load i32, i32* %459, align 4, !dbg !679, !psr.id !730
  %461 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !679, !psr.id !731
  %462 = load i32, i32* %461, align 16, !dbg !679, !psr.id !732
  %463 = xor i32 %462, %460, !dbg !679, !psr.id !733
  store i32 %463, i32* %461, align 16, !dbg !679, !psr.id !734
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !679, !psr.id !735
  %465 = load i32, i32* %464, align 16, !dbg !679, !psr.id !736
  %466 = shl i32 %465, 8, !dbg !679, !psr.id !737
  %467 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !679, !psr.id !738
  %468 = load i32, i32* %467, align 16, !dbg !679, !psr.id !739
  %469 = lshr i32 %468, 24, !dbg !679, !psr.id !740
  %470 = or i32 %466, %469, !dbg !679, !psr.id !741
  %471 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !679, !psr.id !742
  store i32 %470, i32* %471, align 16, !dbg !679, !psr.id !743
  %472 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !679, !psr.id !744
  %473 = load i32, i32* %472, align 16, !dbg !679, !psr.id !745
  %474 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !679, !psr.id !746
  %475 = load i32, i32* %474, align 4, !dbg !679, !psr.id !747
  %476 = add i32 %475, %473, !dbg !679, !psr.id !748
  store i32 %476, i32* %474, align 4, !dbg !679, !psr.id !749
  %477 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11, !dbg !679, !psr.id !750
  %478 = load i32, i32* %477, align 4, !dbg !679, !psr.id !751
  %479 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !679, !psr.id !752
  %480 = load i32, i32* %479, align 8, !dbg !679, !psr.id !753
  %481 = xor i32 %480, %478, !dbg !679, !psr.id !754
  store i32 %481, i32* %479, align 8, !dbg !679, !psr.id !755
  %482 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !679, !psr.id !756
  %483 = load i32, i32* %482, align 8, !dbg !679, !psr.id !757
  %484 = shl i32 %483, 7, !dbg !679, !psr.id !758
  %485 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !679, !psr.id !759
  %486 = load i32, i32* %485, align 8, !dbg !679, !psr.id !760
  %487 = lshr i32 %486, 25, !dbg !679, !psr.id !761
  %488 = or i32 %484, %487, !dbg !679, !psr.id !762
  %489 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6, !dbg !679, !psr.id !763
  store i32 %488, i32* %489, align 8, !dbg !679, !psr.id !764
  br label %490, !dbg !679, !psr.id !765

490:                                              ; preds = %417
  br label %491, !dbg !766, !psr.id !767

491:                                              ; preds = %490
  %492 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !768, !psr.id !770
  %493 = load i32, i32* %492, align 4, !dbg !768, !psr.id !771
  %494 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !768, !psr.id !772
  %495 = load i32, i32* %494, align 8, !dbg !768, !psr.id !773
  %496 = add i32 %495, %493, !dbg !768, !psr.id !774
  store i32 %496, i32* %494, align 8, !dbg !768, !psr.id !775
  %497 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !768, !psr.id !776
  %498 = load i32, i32* %497, align 8, !dbg !768, !psr.id !777
  %499 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !768, !psr.id !778
  %500 = load i32, i32* %499, align 4, !dbg !768, !psr.id !779
  %501 = xor i32 %500, %498, !dbg !768, !psr.id !780
  store i32 %501, i32* %499, align 4, !dbg !768, !psr.id !781
  %502 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !768, !psr.id !782
  %503 = load i32, i32* %502, align 4, !dbg !768, !psr.id !783
  %504 = shl i32 %503, 16, !dbg !768, !psr.id !784
  %505 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !768, !psr.id !785
  %506 = load i32, i32* %505, align 4, !dbg !768, !psr.id !786
  %507 = lshr i32 %506, 16, !dbg !768, !psr.id !787
  %508 = or i32 %504, %507, !dbg !768, !psr.id !788
  %509 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !768, !psr.id !789
  store i32 %508, i32* %509, align 4, !dbg !768, !psr.id !790
  %510 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !768, !psr.id !791
  %511 = load i32, i32* %510, align 4, !dbg !768, !psr.id !792
  %512 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !768, !psr.id !793
  %513 = load i32, i32* %512, align 16, !dbg !768, !psr.id !794
  %514 = add i32 %513, %511, !dbg !768, !psr.id !795
  store i32 %514, i32* %512, align 16, !dbg !768, !psr.id !796
  %515 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !768, !psr.id !797
  %516 = load i32, i32* %515, align 16, !dbg !768, !psr.id !798
  %517 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !768, !psr.id !799
  %518 = load i32, i32* %517, align 4, !dbg !768, !psr.id !800
  %519 = xor i32 %518, %516, !dbg !768, !psr.id !801
  store i32 %519, i32* %517, align 4, !dbg !768, !psr.id !802
  %520 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !768, !psr.id !803
  %521 = load i32, i32* %520, align 4, !dbg !768, !psr.id !804
  %522 = shl i32 %521, 12, !dbg !768, !psr.id !805
  %523 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !768, !psr.id !806
  %524 = load i32, i32* %523, align 4, !dbg !768, !psr.id !807
  %525 = lshr i32 %524, 20, !dbg !768, !psr.id !808
  %526 = or i32 %522, %525, !dbg !768, !psr.id !809
  %527 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !768, !psr.id !810
  store i32 %526, i32* %527, align 4, !dbg !768, !psr.id !811
  %528 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !768, !psr.id !812
  %529 = load i32, i32* %528, align 4, !dbg !768, !psr.id !813
  %530 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !768, !psr.id !814
  %531 = load i32, i32* %530, align 8, !dbg !768, !psr.id !815
  %532 = add i32 %531, %529, !dbg !768, !psr.id !816
  store i32 %532, i32* %530, align 8, !dbg !768, !psr.id !817
  %533 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2, !dbg !768, !psr.id !818
  %534 = load i32, i32* %533, align 8, !dbg !768, !psr.id !819
  %535 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !768, !psr.id !820
  %536 = load i32, i32* %535, align 4, !dbg !768, !psr.id !821
  %537 = xor i32 %536, %534, !dbg !768, !psr.id !822
  store i32 %537, i32* %535, align 4, !dbg !768, !psr.id !823
  %538 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !768, !psr.id !824
  %539 = load i32, i32* %538, align 4, !dbg !768, !psr.id !825
  %540 = shl i32 %539, 8, !dbg !768, !psr.id !826
  %541 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !768, !psr.id !827
  %542 = load i32, i32* %541, align 4, !dbg !768, !psr.id !828
  %543 = lshr i32 %542, 24, !dbg !768, !psr.id !829
  %544 = or i32 %540, %543, !dbg !768, !psr.id !830
  %545 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !768, !psr.id !831
  store i32 %544, i32* %545, align 4, !dbg !768, !psr.id !832
  %546 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13, !dbg !768, !psr.id !833
  %547 = load i32, i32* %546, align 4, !dbg !768, !psr.id !834
  %548 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !768, !psr.id !835
  %549 = load i32, i32* %548, align 16, !dbg !768, !psr.id !836
  %550 = add i32 %549, %547, !dbg !768, !psr.id !837
  store i32 %550, i32* %548, align 16, !dbg !768, !psr.id !838
  %551 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8, !dbg !768, !psr.id !839
  %552 = load i32, i32* %551, align 16, !dbg !768, !psr.id !840
  %553 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !768, !psr.id !841
  %554 = load i32, i32* %553, align 4, !dbg !768, !psr.id !842
  %555 = xor i32 %554, %552, !dbg !768, !psr.id !843
  store i32 %555, i32* %553, align 4, !dbg !768, !psr.id !844
  %556 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !768, !psr.id !845
  %557 = load i32, i32* %556, align 4, !dbg !768, !psr.id !846
  %558 = shl i32 %557, 7, !dbg !768, !psr.id !847
  %559 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !768, !psr.id !848
  %560 = load i32, i32* %559, align 4, !dbg !768, !psr.id !849
  %561 = lshr i32 %560, 25, !dbg !768, !psr.id !850
  %562 = or i32 %558, %561, !dbg !768, !psr.id !851
  %563 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7, !dbg !768, !psr.id !852
  store i32 %562, i32* %563, align 4, !dbg !768, !psr.id !853
  br label %564, !dbg !768, !psr.id !854

564:                                              ; preds = %491
  br label %565, !dbg !855, !psr.id !856

565:                                              ; preds = %564
  %566 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !857, !psr.id !859
  %567 = load i32, i32* %566, align 16, !dbg !857, !psr.id !860
  %568 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !857, !psr.id !861
  %569 = load i32, i32* %568, align 4, !dbg !857, !psr.id !862
  %570 = add i32 %569, %567, !dbg !857, !psr.id !863
  store i32 %570, i32* %568, align 4, !dbg !857, !psr.id !864
  %571 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !857, !psr.id !865
  %572 = load i32, i32* %571, align 4, !dbg !857, !psr.id !866
  %573 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !857, !psr.id !867
  %574 = load i32, i32* %573, align 8, !dbg !857, !psr.id !868
  %575 = xor i32 %574, %572, !dbg !857, !psr.id !869
  store i32 %575, i32* %573, align 8, !dbg !857, !psr.id !870
  %576 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !857, !psr.id !871
  %577 = load i32, i32* %576, align 8, !dbg !857, !psr.id !872
  %578 = shl i32 %577, 16, !dbg !857, !psr.id !873
  %579 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !857, !psr.id !874
  %580 = load i32, i32* %579, align 8, !dbg !857, !psr.id !875
  %581 = lshr i32 %580, 16, !dbg !857, !psr.id !876
  %582 = or i32 %578, %581, !dbg !857, !psr.id !877
  %583 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !857, !psr.id !878
  store i32 %582, i32* %583, align 8, !dbg !857, !psr.id !879
  %584 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !857, !psr.id !880
  %585 = load i32, i32* %584, align 8, !dbg !857, !psr.id !881
  %586 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !857, !psr.id !882
  %587 = load i32, i32* %586, align 4, !dbg !857, !psr.id !883
  %588 = add i32 %587, %585, !dbg !857, !psr.id !884
  store i32 %588, i32* %586, align 4, !dbg !857, !psr.id !885
  %589 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !857, !psr.id !886
  %590 = load i32, i32* %589, align 4, !dbg !857, !psr.id !887
  %591 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !857, !psr.id !888
  %592 = load i32, i32* %591, align 16, !dbg !857, !psr.id !889
  %593 = xor i32 %592, %590, !dbg !857, !psr.id !890
  store i32 %593, i32* %591, align 16, !dbg !857, !psr.id !891
  %594 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !857, !psr.id !892
  %595 = load i32, i32* %594, align 16, !dbg !857, !psr.id !893
  %596 = shl i32 %595, 12, !dbg !857, !psr.id !894
  %597 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !857, !psr.id !895
  %598 = load i32, i32* %597, align 16, !dbg !857, !psr.id !896
  %599 = lshr i32 %598, 20, !dbg !857, !psr.id !897
  %600 = or i32 %596, %599, !dbg !857, !psr.id !898
  %601 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !857, !psr.id !899
  store i32 %600, i32* %601, align 16, !dbg !857, !psr.id !900
  %602 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !857, !psr.id !901
  %603 = load i32, i32* %602, align 16, !dbg !857, !psr.id !902
  %604 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !857, !psr.id !903
  %605 = load i32, i32* %604, align 4, !dbg !857, !psr.id !904
  %606 = add i32 %605, %603, !dbg !857, !psr.id !905
  store i32 %606, i32* %604, align 4, !dbg !857, !psr.id !906
  %607 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3, !dbg !857, !psr.id !907
  %608 = load i32, i32* %607, align 4, !dbg !857, !psr.id !908
  %609 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !857, !psr.id !909
  %610 = load i32, i32* %609, align 8, !dbg !857, !psr.id !910
  %611 = xor i32 %610, %608, !dbg !857, !psr.id !911
  store i32 %611, i32* %609, align 8, !dbg !857, !psr.id !912
  %612 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !857, !psr.id !913
  %613 = load i32, i32* %612, align 8, !dbg !857, !psr.id !914
  %614 = shl i32 %613, 8, !dbg !857, !psr.id !915
  %615 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !857, !psr.id !916
  %616 = load i32, i32* %615, align 8, !dbg !857, !psr.id !917
  %617 = lshr i32 %616, 24, !dbg !857, !psr.id !918
  %618 = or i32 %614, %617, !dbg !857, !psr.id !919
  %619 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !857, !psr.id !920
  store i32 %618, i32* %619, align 8, !dbg !857, !psr.id !921
  %620 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14, !dbg !857, !psr.id !922
  %621 = load i32, i32* %620, align 8, !dbg !857, !psr.id !923
  %622 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !857, !psr.id !924
  %623 = load i32, i32* %622, align 4, !dbg !857, !psr.id !925
  %624 = add i32 %623, %621, !dbg !857, !psr.id !926
  store i32 %624, i32* %622, align 4, !dbg !857, !psr.id !927
  %625 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9, !dbg !857, !psr.id !928
  %626 = load i32, i32* %625, align 4, !dbg !857, !psr.id !929
  %627 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !857, !psr.id !930
  %628 = load i32, i32* %627, align 16, !dbg !857, !psr.id !931
  %629 = xor i32 %628, %626, !dbg !857, !psr.id !932
  store i32 %629, i32* %627, align 16, !dbg !857, !psr.id !933
  %630 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !857, !psr.id !934
  %631 = load i32, i32* %630, align 16, !dbg !857, !psr.id !935
  %632 = shl i32 %631, 7, !dbg !857, !psr.id !936
  %633 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !857, !psr.id !937
  %634 = load i32, i32* %633, align 16, !dbg !857, !psr.id !938
  %635 = lshr i32 %634, 25, !dbg !857, !psr.id !939
  %636 = or i32 %632, %635, !dbg !857, !psr.id !940
  %637 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4, !dbg !857, !psr.id !941
  store i32 %636, i32* %637, align 16, !dbg !857, !psr.id !942
  br label %638, !dbg !857, !psr.id !943

638:                                              ; preds = %565
  br label %639, !dbg !944, !psr.id !945

639:                                              ; preds = %638
  %640 = add nsw i32 %.0, 1, !dbg !946, !psr.id !947
  call void @llvm.dbg.value(metadata i32 %640, metadata !216, metadata !DIExpression()), !dbg !218, !psr.id !948
  br label %44, !dbg !949, !llvm.loop !950, !psr.id !952

641:                                              ; preds = %44
  call void @llvm.dbg.value(metadata i64 0, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !953
  br label %642, !dbg !954, !psr.id !956

642:                                              ; preds = %652, %641
  %.2 = phi i64 [ 0, %641 ], [ %653, %652 ], !dbg !957, !psr.id !958
  call void @llvm.dbg.value(metadata i64 %.2, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !959
  %643 = icmp ult i64 %.2, 4, !dbg !960, !psr.id !962
  br i1 %643, label %644, label %654, !dbg !963, !psr.id !964

644:                                              ; preds = %642
  %645 = shl i64 %.2, 2, !dbg !965, !psr.id !967
  %646 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %645, !dbg !968, !psr.id !969
  %647 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.2, !dbg !970, !psr.id !971
  %648 = load i32, i32* %647, align 4, !dbg !970, !psr.id !972
  %649 = getelementptr inbounds [4 x i32], [4 x i32]* @br_chacha20_ct_run.CW, i64 0, i64 %.2, !dbg !973, !psr.id !974
  %650 = load i32, i32* %649, align 4, !dbg !973, !psr.id !975
  %651 = add i32 %648, %650, !dbg !976, !psr.id !977
  call void @br_enc32le(i8* %646, i32 %651), !dbg !978, !psr.id !979
  br label %652, !dbg !980, !psr.id !981

652:                                              ; preds = %644
  %653 = add i64 %.2, 1, !dbg !982, !psr.id !983
  call void @llvm.dbg.value(metadata i64 %653, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !984
  br label %642, !dbg !985, !llvm.loop !986, !psr.id !988

654:                                              ; preds = %642
  call void @llvm.dbg.value(metadata i64 4, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !989
  br label %655, !dbg !990, !psr.id !992

655:                                              ; preds = %666, %654
  %.3 = phi i64 [ 4, %654 ], [ %667, %666 ], !dbg !993, !psr.id !994
  call void @llvm.dbg.value(metadata i64 %.3, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !995
  %656 = icmp ult i64 %.3, 12, !dbg !996, !psr.id !998
  br i1 %656, label %657, label %668, !dbg !999, !psr.id !1000

657:                                              ; preds = %655
  %658 = shl i64 %.3, 2, !dbg !1001, !psr.id !1003
  %659 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %658, !dbg !1004, !psr.id !1005
  %660 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.3, !dbg !1006, !psr.id !1007
  %661 = load i32, i32* %660, align 4, !dbg !1006, !psr.id !1008
  %662 = sub i64 %.3, 4, !dbg !1009, !psr.id !1010
  %663 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %662, !dbg !1011, !psr.id !1012
  %664 = load i32, i32* %663, align 4, !dbg !1011, !psr.id !1013, !ValueTainted !122
  %665 = add i32 %661, %664, !dbg !1014, !psr.id !1015, !ValueTainted !122
  call void @br_enc32le(i8* %659, i32 %665), !dbg !1016, !psr.id !1017
  br label %666, !dbg !1018, !psr.id !1019

666:                                              ; preds = %657
  %667 = add i64 %.3, 1, !dbg !1020, !psr.id !1021
  call void @llvm.dbg.value(metadata i64 %667, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !1022
  br label %655, !dbg !1023, !llvm.loop !1024, !psr.id !1026

668:                                              ; preds = %655
  %669 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 48, !dbg !1027, !psr.id !1028
  %670 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12, !dbg !1029, !psr.id !1030
  %671 = load i32, i32* %670, align 16, !dbg !1029, !psr.id !1031
  %672 = add i32 %671, %.02, !dbg !1032, !psr.id !1033
  call void @br_enc32le(i8* %669, i32 %672), !dbg !1034, !psr.id !1035
  call void @llvm.dbg.value(metadata i64 13, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !1036
  br label %673, !dbg !1037, !psr.id !1039

673:                                              ; preds = %684, %668
  %.4 = phi i64 [ 13, %668 ], [ %685, %684 ], !dbg !1040, !psr.id !1041
  call void @llvm.dbg.value(metadata i64 %.4, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !1042
  %674 = icmp ult i64 %.4, 16, !dbg !1043, !psr.id !1045
  br i1 %674, label %675, label %686, !dbg !1046, !psr.id !1047

675:                                              ; preds = %673
  %676 = shl i64 %.4, 2, !dbg !1048, !psr.id !1050
  %677 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %676, !dbg !1051, !psr.id !1052
  %678 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %.4, !dbg !1053, !psr.id !1054
  %679 = load i32, i32* %678, align 4, !dbg !1053, !psr.id !1055
  %680 = sub i64 %.4, 13, !dbg !1056, !psr.id !1057
  %681 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %680, !dbg !1058, !psr.id !1059
  %682 = load i32, i32* %681, align 4, !dbg !1058, !psr.id !1060
  %683 = add i32 %679, %682, !dbg !1061, !psr.id !1062
  call void @br_enc32le(i8* %677, i32 %683), !dbg !1063, !psr.id !1064
  br label %684, !dbg !1065, !psr.id !1066

684:                                              ; preds = %675
  %685 = add i64 %.4, 1, !dbg !1067, !psr.id !1068
  call void @llvm.dbg.value(metadata i64 %685, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !1069
  br label %673, !dbg !1070, !llvm.loop !1071, !psr.id !1073

686:                                              ; preds = %673
  %687 = icmp ult i64 %.04, 64, !dbg !1074, !psr.id !1075
  br i1 %687, label %688, label %689, !dbg !1076, !psr.id !1077

688:                                              ; preds = %686
  br label %690, !dbg !1076, !psr.id !1078

689:                                              ; preds = %686
  br label %690, !dbg !1076, !psr.id !1079

690:                                              ; preds = %689, %688
  %691 = phi i64 [ %.04, %688 ], [ 64, %689 ], !dbg !1076, !psr.id !1080
  call void @llvm.dbg.value(metadata i64 %691, metadata !1081, metadata !DIExpression()), !dbg !218, !psr.id !1082
  call void @llvm.dbg.value(metadata i64 0, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !1083
  br label %692, !dbg !1084, !psr.id !1086

692:                                              ; preds = %703, %690
  %.5 = phi i64 [ 0, %690 ], [ %704, %703 ], !dbg !1087, !psr.id !1088
  call void @llvm.dbg.value(metadata i64 %.5, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !1089
  %693 = icmp ult i64 %.5, %691, !dbg !1090, !psr.id !1092
  br i1 %693, label %694, label %705, !dbg !1093, !psr.id !1094

694:                                              ; preds = %692
  %695 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 %.5, !dbg !1095, !psr.id !1097
  %696 = load i8, i8* %695, align 1, !dbg !1095, !psr.id !1098, !ValueTainted !122
  %697 = zext i8 %696 to i32, !dbg !1095, !psr.id !1099, !ValueTainted !122
  %698 = getelementptr inbounds i8, i8* %.03, i64 %.5, !dbg !1100, !psr.id !1101, !PointTainted !119
  %699 = load i8, i8* %698, align 1, !dbg !1102, !psr.id !1103, !ValueTainted !122
  %700 = zext i8 %699 to i32, !dbg !1102, !psr.id !1104, !ValueTainted !122
  %701 = xor i32 %700, %697, !dbg !1102, !psr.id !1105, !ValueTainted !122
  %702 = trunc i32 %701 to i8, !dbg !1102, !psr.id !1106, !ValueTainted !122
  store i8 %702, i8* %698, align 1, !dbg !1102, !psr.id !1107
  br label %703, !dbg !1108, !psr.id !1109

703:                                              ; preds = %694
  %704 = add i64 %.5, 1, !dbg !1110, !psr.id !1111
  call void @llvm.dbg.value(metadata i64 %704, metadata !101, metadata !DIExpression()), !dbg !78, !psr.id !1112
  br label %692, !dbg !1113, !llvm.loop !1114, !psr.id !1116

705:                                              ; preds = %692
  %706 = getelementptr inbounds i8, i8* %.03, i64 %691, !dbg !1117, !psr.id !1118
  call void @llvm.dbg.value(metadata i8* %706, metadata !98, metadata !DIExpression()), !dbg !78, !psr.id !1119
  %707 = sub i64 %.04, %691, !dbg !1120, !psr.id !1121
  call void @llvm.dbg.value(metadata i64 %707, metadata !86, metadata !DIExpression()), !dbg !78, !psr.id !1122
  %708 = add i32 %.02, 1, !dbg !1123, !psr.id !1124
  call void @llvm.dbg.value(metadata i32 %708, metadata !82, metadata !DIExpression()), !dbg !78, !psr.id !1125
  br label %30, !dbg !169, !llvm.loop !1126, !psr.id !1128

709:                                              ; preds = %30
  ret i32 %.02, !dbg !1129, !psr.id !1130
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32le(i8* %0) #0 !dbg !1131 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1134, metadata !DIExpression()), !dbg !1135, !psr.id !1136
  %2 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1137, !psr.id !1138, !PointTainted !119
  %3 = bitcast %union.br_union_u32* %2 to i32*, !dbg !1139, !psr.id !1140, !PointTainted !119
  %4 = load i32, i32* %3, align 4, !dbg !1139, !psr.id !1141, !ValueTainted !122
  ret i32 %4, !dbg !1142, !psr.id !1143
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32le(i8* %0, i32 %1) #0 !dbg !1144 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1147, metadata !DIExpression()), !dbg !1148, !psr.id !1149
  call void @llvm.dbg.value(metadata i32 %1, metadata !1150, metadata !DIExpression()), !dbg !1148, !psr.id !1151
  %3 = bitcast i8* %0 to %union.br_union_u32*, !dbg !1152, !psr.id !1153
  %4 = bitcast %union.br_union_u32* %3 to i32*, !dbg !1154, !psr.id !1155, !PointTainted !119
  store i32 %1, i32* %4, align 4, !dbg !1156, !psr.id !1157
  ret void, !dbg !1158, !psr.id !1159
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_poly1305_i15_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !1160 {
  %10 = alloca [32 x i8], align 16, !psr.id !1166
  %11 = alloca [16 x i8], align 16, !psr.id !1167
  %12 = alloca [10 x i16], align 16, !psr.id !1168
  %13 = alloca [10 x i16], align 16, !psr.id !1169
  %14 = alloca [10 x i16], align 16, !psr.id !1170
  call void @llvm.dbg.value(metadata i8* %0, metadata !1171, metadata !DIExpression()), !dbg !1172, !psr.id !1173
  call void @llvm.dbg.value(metadata i8* %1, metadata !1174, metadata !DIExpression()), !dbg !1172, !psr.id !1175
  call void @llvm.dbg.value(metadata i8* %2, metadata !1176, metadata !DIExpression()), !dbg !1172, !psr.id !1177
  call void @llvm.dbg.value(metadata i64 %3, metadata !1178, metadata !DIExpression()), !dbg !1172, !psr.id !1179
  call void @llvm.dbg.value(metadata i8* %4, metadata !1180, metadata !DIExpression()), !dbg !1172, !psr.id !1181
  call void @llvm.dbg.value(metadata i64 %5, metadata !1182, metadata !DIExpression()), !dbg !1172, !psr.id !1183
  call void @llvm.dbg.value(metadata i8* %6, metadata !1184, metadata !DIExpression()), !dbg !1172, !psr.id !1185
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !1186, metadata !DIExpression()), !dbg !1172, !psr.id !1187
  call void @llvm.dbg.value(metadata i32 %8, metadata !1188, metadata !DIExpression()), !dbg !1172, !psr.id !1189
  call void @llvm.dbg.declare(metadata [32 x i8]* %10, metadata !1190, metadata !DIExpression()), !dbg !1194, !psr.id !1195
  call void @llvm.dbg.declare(metadata [16 x i8]* %11, metadata !1196, metadata !DIExpression()), !dbg !1198, !psr.id !1199
  call void @llvm.dbg.declare(metadata [10 x i16]* %12, metadata !1200, metadata !DIExpression()), !dbg !1202, !psr.id !1203
  call void @llvm.dbg.declare(metadata [10 x i16]* %13, metadata !1204, metadata !DIExpression()), !dbg !1205, !psr.id !1206
  call void @llvm.dbg.declare(metadata [10 x i16]* %14, metadata !1207, metadata !DIExpression()), !dbg !1208, !psr.id !1209
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1210, !psr.id !1211
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 32, i1 false), !dbg !1210, !psr.id !1212
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1213, !psr.id !1214
  %17 = call i32 %7(i8* %0, i8* %1, i32 0, i8* %16, i64 32), !dbg !1215, !psr.id !1216
  %18 = icmp ne i32 %8, 0, !dbg !1217, !psr.id !1219
  br i1 %18, label %19, label %21, !dbg !1220, !psr.id !1221

19:                                               ; preds = %9
  %20 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !1222, !psr.id !1224
  br label %21, !dbg !1225, !psr.id !1226

21:                                               ; preds = %19, %9
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 3, !dbg !1227, !psr.id !1228
  %23 = load i8, i8* %22, align 1, !dbg !1229, !psr.id !1230, !ValueTainted !122
  %24 = zext i8 %23 to i32, !dbg !1229, !psr.id !1231, !ValueTainted !122
  %25 = and i32 %24, 15, !dbg !1229, !psr.id !1232, !ValueTainted !122
  %26 = trunc i32 %25 to i8, !dbg !1229, !psr.id !1233, !ValueTainted !122
  store i8 %26, i8* %22, align 1, !dbg !1229, !psr.id !1234
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 7, !dbg !1235, !psr.id !1236
  %28 = load i8, i8* %27, align 1, !dbg !1237, !psr.id !1238, !ValueTainted !122
  %29 = zext i8 %28 to i32, !dbg !1237, !psr.id !1239, !ValueTainted !122
  %30 = and i32 %29, 15, !dbg !1237, !psr.id !1240, !ValueTainted !122
  %31 = trunc i32 %30 to i8, !dbg !1237, !psr.id !1241, !ValueTainted !122
  store i8 %31, i8* %27, align 1, !dbg !1237, !psr.id !1242
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 11, !dbg !1243, !psr.id !1244
  %33 = load i8, i8* %32, align 1, !dbg !1245, !psr.id !1246, !ValueTainted !122
  %34 = zext i8 %33 to i32, !dbg !1245, !psr.id !1247, !ValueTainted !122
  %35 = and i32 %34, 15, !dbg !1245, !psr.id !1248, !ValueTainted !122
  %36 = trunc i32 %35 to i8, !dbg !1245, !psr.id !1249, !ValueTainted !122
  store i8 %36, i8* %32, align 1, !dbg !1245, !psr.id !1250
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 15, !dbg !1251, !psr.id !1252
  %38 = load i8, i8* %37, align 1, !dbg !1253, !psr.id !1254, !ValueTainted !122
  %39 = zext i8 %38 to i32, !dbg !1253, !psr.id !1255, !ValueTainted !122
  %40 = and i32 %39, 15, !dbg !1253, !psr.id !1256, !ValueTainted !122
  %41 = trunc i32 %40 to i8, !dbg !1253, !psr.id !1257, !ValueTainted !122
  store i8 %41, i8* %37, align 1, !dbg !1253, !psr.id !1258
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 4, !dbg !1259, !psr.id !1260
  %43 = load i8, i8* %42, align 4, !dbg !1261, !psr.id !1262, !ValueTainted !122
  %44 = zext i8 %43 to i32, !dbg !1261, !psr.id !1263, !ValueTainted !122
  %45 = and i32 %44, 252, !dbg !1261, !psr.id !1264, !ValueTainted !122
  %46 = trunc i32 %45 to i8, !dbg !1261, !psr.id !1265, !ValueTainted !122
  store i8 %46, i8* %42, align 4, !dbg !1261, !psr.id !1266
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 8, !dbg !1267, !psr.id !1268
  %48 = load i8, i8* %47, align 8, !dbg !1269, !psr.id !1270, !ValueTainted !122
  %49 = zext i8 %48 to i32, !dbg !1269, !psr.id !1271, !ValueTainted !122
  %50 = and i32 %49, 252, !dbg !1269, !psr.id !1272, !ValueTainted !122
  %51 = trunc i32 %50 to i8, !dbg !1269, !psr.id !1273, !ValueTainted !122
  store i8 %51, i8* %47, align 8, !dbg !1269, !psr.id !1274
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 12, !dbg !1275, !psr.id !1276
  %53 = load i8, i8* %52, align 4, !dbg !1277, !psr.id !1278, !ValueTainted !122
  %54 = zext i8 %53 to i32, !dbg !1277, !psr.id !1279, !ValueTainted !122
  %55 = and i32 %54, 252, !dbg !1277, !psr.id !1280, !ValueTainted !122
  %56 = trunc i32 %55 to i8, !dbg !1277, !psr.id !1281, !ValueTainted !122
  store i8 %56, i8* %52, align 4, !dbg !1277, !psr.id !1282
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1283, !psr.id !1284
  call void @byteswap16(i8* %57), !dbg !1285, !psr.id !1286
  %58 = getelementptr inbounds [10 x i16], [10 x i16]* %12, i64 0, i64 0, !dbg !1287, !psr.id !1288
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1289, !psr.id !1290
  %60 = getelementptr inbounds [10 x i16], [10 x i16]* @P1305, i64 0, i64 0, !psr.id !1291
  %61 = call i32 @br_i15_decode_mod(i16* %58, i8* %59, i64 16, i16* %60), !dbg !1292, !psr.id !1293, !ValueTainted !122, !PointTainted !119
  %62 = getelementptr inbounds [10 x i16], [10 x i16]* %13, i64 0, i64 0, !dbg !1294, !psr.id !1295
  %63 = getelementptr inbounds [10 x i16], [10 x i16]* %12, i64 0, i64 0, !dbg !1296, !psr.id !1297
  %64 = getelementptr inbounds [10 x i16], [10 x i16]* bitcast (<{ i16, i16, [8 x i16] }>* @R2 to [10 x i16]*), i64 0, i64 0, !psr.id !1298
  %65 = getelementptr inbounds [10 x i16], [10 x i16]* @P1305, i64 0, i64 0, !psr.id !1299
  call void @br_i15_montymul(i16* %62, i16* %63, i16* %64, i16* %65, i16 zeroext 19661), !dbg !1300, !psr.id !1301
  %66 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !1302, !psr.id !1303
  call void @br_i15_zero(i16* %66, i16 zeroext 138), !dbg !1304, !psr.id !1305
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !1306, !psr.id !1307
  call void @br_enc64le(i8* %67, i64 %5), !dbg !1308, !psr.id !1309
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !1310, !psr.id !1311
  %69 = getelementptr inbounds i8, i8* %68, i64 8, !dbg !1312, !psr.id !1313
  call void @br_enc64le(i8* %69, i64 %3), !dbg !1314, !psr.id !1315
  %70 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !1316, !psr.id !1317
  %71 = getelementptr inbounds [10 x i16], [10 x i16]* %13, i64 0, i64 0, !dbg !1318, !psr.id !1319
  call void @poly1305_inner(i16* %70, i16* %71, i8* %4, i64 %5), !dbg !1320, !psr.id !1321
  %72 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !1322, !psr.id !1323
  %73 = getelementptr inbounds [10 x i16], [10 x i16]* %13, i64 0, i64 0, !dbg !1324, !psr.id !1325
  call void @poly1305_inner(i16* %72, i16* %73, i8* %2, i64 %3), !dbg !1326, !psr.id !1327
  %74 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !1328, !psr.id !1329
  %75 = getelementptr inbounds [10 x i16], [10 x i16]* %13, i64 0, i64 0, !dbg !1330, !psr.id !1331
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0, !dbg !1332, !psr.id !1333
  call void @poly1305_inner(i16* %74, i16* %75, i8* %76, i64 16), !dbg !1334, !psr.id !1335
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1336, !psr.id !1337
  %78 = getelementptr inbounds i8, i8* %77, i64 16, !dbg !1338, !psr.id !1339
  call void @byteswap16(i8* %78), !dbg !1340, !psr.id !1341
  %79 = getelementptr inbounds [10 x i16], [10 x i16]* %12, i64 0, i64 0, !dbg !1342, !psr.id !1343
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0, !dbg !1344, !psr.id !1345
  %81 = getelementptr inbounds i8, i8* %80, i64 16, !dbg !1346, !psr.id !1347
  %82 = getelementptr inbounds [10 x i16], [10 x i16]* @P1305, i64 0, i64 0, !psr.id !1348
  %83 = call i32 @br_i15_decode_mod(i16* %79, i8* %81, i64 16, i16* %82), !dbg !1349, !psr.id !1350, !ValueTainted !122, !PointTainted !119
  %84 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !1351, !psr.id !1352
  %85 = getelementptr inbounds [10 x i16], [10 x i16]* %12, i64 0, i64 0, !dbg !1353, !psr.id !1354
  %86 = call i32 @br_i15_add(i16* %84, i16* %85, i32 1), !dbg !1355, !psr.id !1356, !ValueTainted !122, !PointTainted !119
  %87 = getelementptr inbounds [10 x i16], [10 x i16]* %14, i64 0, i64 0, !dbg !1357, !psr.id !1358
  call void @br_i15_encode(i8* %6, i64 16, i16* %87), !dbg !1359, !psr.id !1360
  call void @byteswap16(i8* %6), !dbg !1361, !psr.id !1362
  %88 = icmp ne i32 %8, 0, !dbg !1363, !psr.id !1365
  br i1 %88, label %91, label %89, !dbg !1366, !psr.id !1367

89:                                               ; preds = %21
  %90 = call i32 %7(i8* %0, i8* %1, i32 1, i8* %2, i64 %3), !dbg !1368, !psr.id !1370
  br label %91, !dbg !1371, !psr.id !1372

91:                                               ; preds = %89, %21
  ret void, !dbg !1373, !psr.id !1374
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @byteswap16(i8* %0) #0 !dbg !1375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1378, metadata !DIExpression()), !dbg !1379, !psr.id !1380
  call void @llvm.dbg.value(metadata i32 0, metadata !1381, metadata !DIExpression()), !dbg !1379, !psr.id !1382
  br label %2, !dbg !1383, !psr.id !1385

2:                                                ; preds = %19, %1
  %.0 = phi i32 [ 0, %1 ], [ %20, %19 ], !dbg !1386, !psr.id !1387
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1381, metadata !DIExpression()), !dbg !1379, !psr.id !1388
  %3 = icmp slt i32 %.0, 8, !dbg !1389, !psr.id !1391
  br i1 %3, label %4, label %21, !dbg !1392, !psr.id !1393

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64, !dbg !1394, !psr.id !1396
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !1394, !psr.id !1397
  %7 = load i8, i8* %6, align 1, !dbg !1394, !psr.id !1398, !ValueTainted !122
  %8 = zext i8 %7 to i32, !dbg !1394, !psr.id !1399, !ValueTainted !122
  call void @llvm.dbg.value(metadata i32 %8, metadata !1400, metadata !DIExpression()), !dbg !1401, !psr.id !1402
  %9 = sub nsw i32 15, %.0, !dbg !1403, !psr.id !1404
  %10 = sext i32 %9 to i64, !dbg !1405, !psr.id !1406
  %11 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !1405, !psr.id !1407
  %12 = load i8, i8* %11, align 1, !dbg !1405, !psr.id !1408, !ValueTainted !122
  %13 = sext i32 %.0 to i64, !dbg !1409, !psr.id !1410
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1409, !psr.id !1411, !PointTainted !119
  store i8 %12, i8* %14, align 1, !dbg !1412, !psr.id !1413
  %15 = trunc i32 %8 to i8, !dbg !1414, !psr.id !1415, !ValueTainted !122
  %16 = sub nsw i32 15, %.0, !dbg !1416, !psr.id !1417
  %17 = sext i32 %16 to i64, !dbg !1418, !psr.id !1419
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !1418, !psr.id !1420, !PointTainted !119
  store i8 %15, i8* %18, align 1, !dbg !1421, !psr.id !1422
  br label %19, !dbg !1423, !psr.id !1424

19:                                               ; preds = %4
  %20 = add nsw i32 %.0, 1, !dbg !1425, !psr.id !1426
  call void @llvm.dbg.value(metadata i32 %20, metadata !1381, metadata !DIExpression()), !dbg !1379, !psr.id !1427
  br label %2, !dbg !1428, !llvm.loop !1429, !psr.id !1431

21:                                               ; preds = %2
  ret void, !dbg !1432, !psr.id !1433
}

declare dso_local i32 @br_i15_decode_mod(i16*, i8*, i64, i16*) #4

declare dso_local void @br_i15_montymul(i16*, i16*, i16*, i16*, i16 zeroext) #4

; Function Attrs: noinline nounwind uwtable
define internal void @br_i15_zero(i16* %0, i16 zeroext %1) #0 !dbg !1434 {
  call void @llvm.dbg.value(metadata i16* %0, metadata !1438, metadata !DIExpression()), !dbg !1439, !psr.id !1440
  call void @llvm.dbg.value(metadata i16 %1, metadata !1441, metadata !DIExpression()), !dbg !1439, !psr.id !1442
  %3 = getelementptr inbounds i16, i16* %0, i32 1, !dbg !1443, !psr.id !1444
  call void @llvm.dbg.value(metadata i16* %3, metadata !1438, metadata !DIExpression()), !dbg !1439, !psr.id !1445
  store i16 %1, i16* %0, align 2, !dbg !1446, !psr.id !1447
  %4 = bitcast i16* %3 to i8*, !dbg !1448, !psr.id !1449
  %5 = zext i16 %1 to i32, !dbg !1450, !psr.id !1451
  %6 = add nsw i32 %5, 15, !dbg !1452, !psr.id !1453
  %7 = ashr i32 %6, 4, !dbg !1454, !psr.id !1455
  %8 = sext i32 %7 to i64, !dbg !1456, !psr.id !1457
  %9 = mul i64 %8, 2, !dbg !1458, !psr.id !1459
  call void @llvm.memset.p0i8.i64(i8* align 2 %4, i8 0, i64 %9, i1 false), !dbg !1448, !psr.id !1460
  ret void, !dbg !1461, !psr.id !1462
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc64le(i8* %0, i64 %1) #0 !dbg !1463 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1466, metadata !DIExpression()), !dbg !1467, !psr.id !1468
  call void @llvm.dbg.value(metadata i64 %1, metadata !1469, metadata !DIExpression()), !dbg !1467, !psr.id !1470
  %3 = bitcast i8* %0 to %union.br_union_u64*, !dbg !1471, !psr.id !1472
  %4 = bitcast %union.br_union_u64* %3 to i64*, !dbg !1473, !psr.id !1474
  store i64 %1, i64* %4, align 8, !dbg !1475, !psr.id !1476
  ret void, !dbg !1477, !psr.id !1478
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_inner(i16* %0, i16* %1, i8* %2, i64 %3) #0 !dbg !1479 {
  %5 = alloca [16 x i8], align 16, !psr.id !1483
  %6 = alloca [16 x i8], align 16, !psr.id !1484
  %7 = alloca [10 x i16], align 16, !psr.id !1485
  call void @llvm.dbg.value(metadata i16* %0, metadata !1486, metadata !DIExpression()), !dbg !1487, !psr.id !1488
  call void @llvm.dbg.value(metadata i16* %1, metadata !1489, metadata !DIExpression()), !dbg !1487, !psr.id !1490
  call void @llvm.dbg.value(metadata i8* %2, metadata !1491, metadata !DIExpression()), !dbg !1487, !psr.id !1492
  call void @llvm.dbg.value(metadata i64 %3, metadata !1493, metadata !DIExpression()), !dbg !1487, !psr.id !1494
  call void @llvm.dbg.value(metadata i8* %2, metadata !1495, metadata !DIExpression()), !dbg !1487, !psr.id !1496
  br label %8, !dbg !1497, !psr.id !1498

8:                                                ; preds = %28, %4
  %.02 = phi i64 [ %3, %4 ], [ %51, %28 ], !psr.id !1499
  %.01 = phi i8* [ %2, %4 ], [ %50, %28 ], !dbg !1487, !psr.id !1500
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1495, metadata !DIExpression()), !dbg !1487, !psr.id !1501
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1493, metadata !DIExpression()), !dbg !1487, !psr.id !1502
  %9 = icmp ugt i64 %.02, 0, !dbg !1503, !psr.id !1504
  br i1 %9, label %10, label %52, !dbg !1497, !psr.id !1505

10:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !1506, metadata !DIExpression()), !dbg !1508, !psr.id !1509
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !1510, metadata !DIExpression()), !dbg !1511, !psr.id !1512
  call void @llvm.dbg.declare(metadata [10 x i16]* %7, metadata !1513, metadata !DIExpression()), !dbg !1514, !psr.id !1515
  %11 = icmp ult i64 %.02, 16, !dbg !1516, !psr.id !1518
  br i1 %11, label %12, label %16, !dbg !1519, !psr.id !1520

12:                                               ; preds = %10
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1521, !psr.id !1523
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false), !dbg !1521, !psr.id !1524
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1525, !psr.id !1526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 1 %.01, i64 %.02, i1 false), !dbg !1525, !psr.id !1527
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1528, !psr.id !1529
  call void @llvm.dbg.value(metadata i8* %15, metadata !1495, metadata !DIExpression()), !dbg !1487, !psr.id !1530
  call void @llvm.dbg.value(metadata i64 16, metadata !1493, metadata !DIExpression()), !dbg !1487, !psr.id !1531
  br label %16, !dbg !1532, !psr.id !1533

16:                                               ; preds = %12, %10
  %.13 = phi i64 [ 16, %12 ], [ %.02, %10 ], !psr.id !1534
  %.1 = phi i8* [ %15, %12 ], [ %.01, %10 ], !dbg !1487, !psr.id !1535
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1495, metadata !DIExpression()), !dbg !1487, !psr.id !1536
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1493, metadata !DIExpression()), !dbg !1487, !psr.id !1537
  call void @llvm.dbg.value(metadata i32 0, metadata !1538, metadata !DIExpression()), !dbg !1539, !psr.id !1540
  br label %17, !dbg !1541, !psr.id !1543

17:                                               ; preds = %26, %16
  %.0 = phi i32 [ 0, %16 ], [ %27, %26 ], !dbg !1544, !psr.id !1545
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1538, metadata !DIExpression()), !dbg !1539, !psr.id !1546
  %18 = icmp slt i32 %.0, 16, !dbg !1547, !psr.id !1549
  br i1 %18, label %19, label %28, !dbg !1550, !psr.id !1551

19:                                               ; preds = %17
  %20 = sub nsw i32 15, %.0, !dbg !1552, !psr.id !1554
  %21 = sext i32 %20 to i64, !dbg !1555, !psr.id !1556
  %22 = getelementptr inbounds i8, i8* %.1, i64 %21, !dbg !1555, !psr.id !1557
  %23 = load i8, i8* %22, align 1, !dbg !1555, !psr.id !1558
  %24 = sext i32 %.0 to i64, !dbg !1559, !psr.id !1560
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %24, !dbg !1559, !psr.id !1561
  store i8 %23, i8* %25, align 1, !dbg !1562, !psr.id !1563
  br label %26, !dbg !1564, !psr.id !1565

26:                                               ; preds = %19
  %27 = add nsw i32 %.0, 1, !dbg !1566, !psr.id !1567
  call void @llvm.dbg.value(metadata i32 %27, metadata !1538, metadata !DIExpression()), !dbg !1539, !psr.id !1568
  br label %17, !dbg !1569, !llvm.loop !1570, !psr.id !1572

28:                                               ; preds = %17
  %29 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 0, !dbg !1573, !psr.id !1574
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !1575, !psr.id !1576
  %31 = getelementptr inbounds [10 x i16], [10 x i16]* @P1305, i64 0, i64 0, !psr.id !1577
  %32 = call i32 @br_i15_decode_mod(i16* %29, i8* %30, i64 16, i16* %31), !dbg !1578, !psr.id !1579, !ValueTainted !122, !PointTainted !119
  %33 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 9, !dbg !1580, !psr.id !1581
  %34 = load i16, i16* %33, align 2, !dbg !1582, !psr.id !1583
  %35 = zext i16 %34 to i32, !dbg !1582, !psr.id !1584
  %36 = or i32 %35, 256, !dbg !1582, !psr.id !1585
  %37 = trunc i32 %36 to i16, !dbg !1582, !psr.id !1586
  store i16 %37, i16* %33, align 2, !dbg !1582, !psr.id !1587
  %38 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 0, !dbg !1588, !psr.id !1589
  %39 = call i32 @br_i15_add(i16* %38, i16* %0, i32 1), !dbg !1590, !psr.id !1591, !ValueTainted !122, !PointTainted !119
  call void @llvm.dbg.value(metadata i32 %39, metadata !1592, metadata !DIExpression()), !dbg !1539, !psr.id !1593
  %40 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 0, !dbg !1594, !psr.id !1595
  %41 = getelementptr inbounds [10 x i16], [10 x i16]* @P1305, i64 0, i64 0, !psr.id !1596
  %42 = call i32 @br_i15_sub(i16* %40, i16* %41, i32 0), !dbg !1597, !psr.id !1598, !ValueTainted !122, !PointTainted !119
  %43 = call i32 @NOT(i32 %42), !dbg !1599, !psr.id !1600, !ValueTainted !122, !PointTainted !119
  %44 = or i32 %39, %43, !dbg !1601, !psr.id !1602, !ValueTainted !122, !PointTainted !119
  call void @llvm.dbg.value(metadata i32 %44, metadata !1592, metadata !DIExpression()), !dbg !1539, !psr.id !1603
  %45 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 0, !dbg !1604, !psr.id !1605
  %46 = getelementptr inbounds [10 x i16], [10 x i16]* @P1305, i64 0, i64 0, !psr.id !1606
  %47 = call i32 @br_i15_sub(i16* %45, i16* %46, i32 %44), !dbg !1607, !psr.id !1608, !ValueTainted !122, !PointTainted !119
  %48 = getelementptr inbounds [10 x i16], [10 x i16]* %7, i64 0, i64 0, !dbg !1609, !psr.id !1610
  %49 = getelementptr inbounds [10 x i16], [10 x i16]* @P1305, i64 0, i64 0, !psr.id !1611
  call void @br_i15_montymul(i16* %0, i16* %48, i16* %1, i16* %49, i16 zeroext 19661), !dbg !1612, !psr.id !1613
  %50 = getelementptr inbounds i8, i8* %.1, i64 16, !dbg !1614, !psr.id !1615
  call void @llvm.dbg.value(metadata i8* %50, metadata !1495, metadata !DIExpression()), !dbg !1487, !psr.id !1616
  %51 = sub i64 %.13, 16, !dbg !1617, !psr.id !1618
  call void @llvm.dbg.value(metadata i64 %51, metadata !1493, metadata !DIExpression()), !dbg !1487, !psr.id !1619
  br label %8, !dbg !1497, !llvm.loop !1620, !psr.id !1622

52:                                               ; preds = %8
  ret void, !dbg !1623, !psr.id !1624
}

declare dso_local i32 @br_i15_add(i16*, i16*, i32) #4

declare dso_local void @br_i15_encode(i8*, i64, i16*) #4

declare dso_local i32 @br_i15_sub(i16*, i16*, i32) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !1625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1628, metadata !DIExpression()), !dbg !1629, !psr.id !1630
  %2 = xor i32 %0, 1, !dbg !1631, !psr.id !1632, !ValueTainted !122, !PointTainted !119
  ret i32 %2, !dbg !1633, !psr.id !1634
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* %7, i32 %8) #0 !dbg !1635 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1636, metadata !DIExpression()), !dbg !1637, !psr.id !1638
  call void @llvm.dbg.value(metadata i8* %1, metadata !1639, metadata !DIExpression()), !dbg !1637, !psr.id !1640
  call void @llvm.dbg.value(metadata i8* %2, metadata !1641, metadata !DIExpression()), !dbg !1637, !psr.id !1642
  call void @llvm.dbg.value(metadata i64 %3, metadata !1643, metadata !DIExpression()), !dbg !1637, !psr.id !1644
  call void @llvm.dbg.value(metadata i8* %4, metadata !1645, metadata !DIExpression()), !dbg !1637, !psr.id !1646
  call void @llvm.dbg.value(metadata i64 %5, metadata !1647, metadata !DIExpression()), !dbg !1637, !psr.id !1648
  call void @llvm.dbg.value(metadata i8* %6, metadata !1649, metadata !DIExpression()), !dbg !1637, !psr.id !1650
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i32, i8*, i64)* %7, metadata !1651, metadata !DIExpression()), !dbg !1637, !psr.id !1652
  call void @llvm.dbg.value(metadata i32 %8, metadata !1653, metadata !DIExpression()), !dbg !1637, !psr.id !1654
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1655, !psr.id !1656
  call void @public_in(%struct.smack_value* %10), !dbg !1657, !psr.id !1658
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1659, !psr.id !1660
  call void @public_in(%struct.smack_value* %11), !dbg !1661, !psr.id !1662
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1663, !psr.id !1664
  call void @public_in(%struct.smack_value* %12), !dbg !1665, !psr.id !1666
  %13 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !1667, !psr.id !1668
  call void @public_in(%struct.smack_value* %13), !dbg !1669, !psr.id !1670
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !1671, !psr.id !1672
  call void @public_in(%struct.smack_value* %14), !dbg !1673, !psr.id !1674
  %15 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %5), !dbg !1675, !psr.id !1676
  call void @public_in(%struct.smack_value* %15), !dbg !1677, !psr.id !1678
  %16 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !1679, !psr.id !1680
  call void @public_in(%struct.smack_value* %16), !dbg !1681, !psr.id !1682
  %17 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %8), !dbg !1683, !psr.id !1684
  call void @public_in(%struct.smack_value* %17), !dbg !1685, !psr.id !1686
  %18 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !1687, !psr.id !1688
  call void @public_in(%struct.smack_value* %18), !dbg !1689, !psr.id !1690
  %19 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !1691, !psr.id !1692
  call void @public_in(%struct.smack_value* %19), !dbg !1693, !psr.id !1694
  %20 = call %struct.smack_value* (i8*, i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, i32, ...)*)(i8* %4, i32 32), !dbg !1695, !psr.id !1696
  call void @public_in(%struct.smack_value* %20), !dbg !1697, !psr.id !1698
  call void @br_poly1305_i15_run(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 %8), !dbg !1699, !psr.id !1700
  ret void, !dbg !1701, !psr.id !1702
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #4

declare dso_local void @public_in(%struct.smack_value*) #4

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @run_wrapper_t() #0 !dbg !1703 {
  %1 = call i8* (...) @getvoid1(), !dbg !1706, !psr.id !1707
  call void @llvm.dbg.value(metadata i8* %1, metadata !1708, metadata !DIExpression()), !dbg !1709, !psr.id !1710
  %2 = call i8* (...) @getvoid2(), !dbg !1711, !psr.id !1712
  call void @llvm.dbg.value(metadata i8* %2, metadata !1713, metadata !DIExpression()), !dbg !1709, !psr.id !1714
  %3 = call i8* (...) @getvoid5(), !dbg !1715, !psr.id !1716
  call void @llvm.dbg.value(metadata i8* %3, metadata !1717, metadata !DIExpression()), !dbg !1709, !psr.id !1718
  call void @llvm.dbg.value(metadata i64 32, metadata !1719, metadata !DIExpression()), !dbg !1709, !psr.id !1720
  %4 = call i8* (...) @getvoid3(), !dbg !1721, !psr.id !1722
  call void @llvm.dbg.value(metadata i8* %4, metadata !1723, metadata !DIExpression()), !dbg !1709, !psr.id !1724
  call void @llvm.dbg.value(metadata i64 32, metadata !1725, metadata !DIExpression()), !dbg !1709, !psr.id !1726
  %5 = call i8* (...) @getvoid6(), !dbg !1727, !psr.id !1728
  call void @llvm.dbg.value(metadata i8* %5, metadata !1729, metadata !DIExpression()), !dbg !1709, !psr.id !1730
  call void @llvm.dbg.value(metadata i32 1, metadata !1731, metadata !DIExpression()), !dbg !1709, !psr.id !1732
  call void @br_poly1305_i15_run(i8* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i32 (i8*, i8*, i32, i8*, i64)* @br_chacha20_ct_run, i32 1), !dbg !1733, !psr.id !1734
  ret void, !dbg !1735, !psr.id !1736
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

!llvm.dbg.cu = !{!17, !41, !67}
!llvm.ident = !{!69, !69, !69}
!llvm.module.flags = !{!70, !71, !72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CW", scope: !2, file: !3, line: 36, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "br_chacha20_ct_run", scope: !3, file: !3, line: 29, type: !4, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !18)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/chacha20_ct.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_i15_ChaCha20")
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
!26 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_i15_ChaCha20")
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
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "P1305", scope: !41, file: !42, line: 37, type: !58, isLocal: true, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !43, globals: !55, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "../BearSSL/src/symcipher/poly1305_i15.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_i15_ChaCha20")
!43 = !{!44, !46}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !16)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_union_u64", file: !26, line: 485, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !26, line: 482, size: 64, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !48, file: !26, line: 483, baseType: !44, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !48, file: !26, line: 484, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 8)
!55 = !{!39, !56}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "R2", scope: !41, file: !42, line: 51, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 160, elements: !63)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 25, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 40, baseType: !62)
!62 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!63 = !{!64}
!64 = !DISubrange(count: 10)
!65 = !{!"1"}
!66 = !{!"2"}
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "run.c", directory: "/home/luwei/bech-back/BearSSL/Poly1305_i15_ChaCha20")
!69 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!70 = !{i32 7, !"Dwarf Version", i32 4}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{i32 1, !"wchar_size", i32 4}
!73 = !{!"3"}
!74 = !{!"4"}
!75 = !{!"5"}
!76 = !{!"6"}
!77 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 29, type: !11)
!78 = !DILocation(line: 0, scope: !2)
!79 = !{!"7"}
!80 = !DILocalVariable(name: "iv", arg: 2, scope: !2, file: !3, line: 30, type: !11)
!81 = !{!"8"}
!82 = !DILocalVariable(name: "cc", arg: 3, scope: !2, file: !3, line: 30, type: !6)
!83 = !{!"9"}
!84 = !DILocalVariable(name: "data", arg: 4, scope: !2, file: !3, line: 30, type: !13)
!85 = !{!"10"}
!86 = !DILocalVariable(name: "len", arg: 5, scope: !2, file: !3, line: 30, type: !14)
!87 = !{!"11"}
!88 = !DILocalVariable(name: "kw", scope: !2, file: !3, line: 33, type: !89)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !53)
!90 = !DILocation(line: 33, column: 11, scope: !2)
!91 = !{!"12"}
!92 = !DILocalVariable(name: "ivw", scope: !2, file: !3, line: 33, type: !93)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 3)
!96 = !DILocation(line: 33, column: 18, scope: !2)
!97 = !{!"13"}
!98 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 32, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!100 = !{!"14"}
!101 = !DILocalVariable(name: "u", scope: !2, file: !3, line: 34, type: !14)
!102 = !{!"15"}
!103 = !DILocation(line: 41, column: 7, scope: !104)
!104 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!105 = !{!"16"}
!106 = !DILocation(line: 0, scope: !104)
!107 = !{!"17"}
!108 = !{!"18"}
!109 = !DILocation(line: 41, column: 16, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !3, line: 41, column: 2)
!111 = !{!"19"}
!112 = !DILocation(line: 41, column: 2, scope: !104)
!113 = !{!"20"}
!114 = !DILocation(line: 42, column: 54, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !3, line: 41, column: 27)
!116 = !{!"21"}
!117 = !DILocation(line: 42, column: 49, scope: !115)
!118 = !{!"22"}
!119 = !{!"PointTainted"}
!120 = !DILocation(line: 42, column: 11, scope: !115)
!121 = !{!"23"}
!122 = !{!"ValueTainted"}
!123 = !DILocation(line: 42, column: 3, scope: !115)
!124 = !{!"24"}
!125 = !DILocation(line: 42, column: 9, scope: !115)
!126 = !{!"25"}
!127 = !DILocation(line: 43, column: 2, scope: !115)
!128 = !{!"26"}
!129 = !DILocation(line: 41, column: 23, scope: !110)
!130 = !{!"27"}
!131 = !{!"28"}
!132 = !DILocation(line: 41, column: 2, scope: !110)
!133 = distinct !{!133, !112, !134, !135}
!134 = !DILocation(line: 43, column: 2, scope: !104)
!135 = !{!"llvm.loop.mustprogress"}
!136 = !{!"29"}
!137 = !{!"30"}
!138 = !DILocation(line: 44, column: 7, scope: !139)
!139 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 2)
!140 = !{!"31"}
!141 = !DILocation(line: 0, scope: !139)
!142 = !{!"32"}
!143 = !{!"33"}
!144 = !DILocation(line: 44, column: 16, scope: !145)
!145 = distinct !DILexicalBlock(scope: !139, file: !3, line: 44, column: 2)
!146 = !{!"34"}
!147 = !DILocation(line: 44, column: 2, scope: !139)
!148 = !{!"35"}
!149 = !DILocation(line: 45, column: 54, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !3, line: 44, column: 27)
!151 = !{!"36"}
!152 = !DILocation(line: 45, column: 49, scope: !150)
!153 = !{!"37"}
!154 = !DILocation(line: 45, column: 12, scope: !150)
!155 = !{!"38"}
!156 = !DILocation(line: 45, column: 3, scope: !150)
!157 = !{!"39"}
!158 = !DILocation(line: 45, column: 10, scope: !150)
!159 = !{!"40"}
!160 = !DILocation(line: 46, column: 2, scope: !150)
!161 = !{!"41"}
!162 = !DILocation(line: 44, column: 23, scope: !145)
!163 = !{!"42"}
!164 = !{!"43"}
!165 = !DILocation(line: 44, column: 2, scope: !145)
!166 = distinct !{!166, !147, !167, !135}
!167 = !DILocation(line: 46, column: 2, scope: !139)
!168 = !{!"44"}
!169 = !DILocation(line: 47, column: 2, scope: !2)
!170 = !{!"45"}
!171 = !{!"46"}
!172 = !{!"47"}
!173 = !{!"48"}
!174 = !{!"49"}
!175 = !{!"50"}
!176 = !{!"51"}
!177 = !DILocation(line: 47, column: 13, scope: !2)
!178 = !{!"52"}
!179 = !{!"53"}
!180 = !DILocalVariable(name: "state", scope: !181, file: !3, line: 48, type: !182)
!181 = distinct !DILexicalBlock(scope: !2, file: !3, line: 47, column: 18)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 16)
!185 = !DILocation(line: 48, column: 12, scope: !181)
!186 = !{!"54"}
!187 = !DILocalVariable(name: "tmp", scope: !181, file: !3, line: 51, type: !188)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 64)
!191 = !DILocation(line: 51, column: 17, scope: !181)
!192 = !{!"55"}
!193 = !DILocation(line: 53, column: 11, scope: !181)
!194 = !{!"56"}
!195 = !DILocation(line: 53, column: 3, scope: !181)
!196 = !{!"57"}
!197 = !{!"58"}
!198 = !DILocation(line: 54, column: 11, scope: !181)
!199 = !{!"59"}
!200 = !DILocation(line: 54, column: 3, scope: !181)
!201 = !{!"60"}
!202 = !{!"61"}
!203 = !{!"62"}
!204 = !{!"63"}
!205 = !DILocation(line: 55, column: 3, scope: !181)
!206 = !{!"64"}
!207 = !DILocation(line: 55, column: 13, scope: !181)
!208 = !{!"65"}
!209 = !DILocation(line: 56, column: 11, scope: !181)
!210 = !{!"66"}
!211 = !DILocation(line: 56, column: 3, scope: !181)
!212 = !{!"67"}
!213 = !{!"68"}
!214 = !{!"69"}
!215 = !{!"70"}
!216 = !DILocalVariable(name: "i", scope: !181, file: !3, line: 49, type: !217)
!217 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!218 = !DILocation(line: 0, scope: !181)
!219 = !{!"71"}
!220 = !DILocation(line: 57, column: 8, scope: !221)
!221 = distinct !DILexicalBlock(scope: !181, file: !3, line: 57, column: 3)
!222 = !{!"72"}
!223 = !DILocation(line: 0, scope: !221)
!224 = !{!"73"}
!225 = !{!"74"}
!226 = !DILocation(line: 57, column: 17, scope: !227)
!227 = distinct !DILexicalBlock(scope: !221, file: !3, line: 57, column: 3)
!228 = !{!"75"}
!229 = !DILocation(line: 57, column: 3, scope: !221)
!230 = !{!"76"}
!231 = !DILocation(line: 74, column: 4, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !3, line: 57, column: 29)
!233 = !{!"77"}
!234 = !DILocation(line: 74, column: 4, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !3, line: 74, column: 4)
!236 = !{!"78"}
!237 = !{!"79"}
!238 = !{!"80"}
!239 = !{!"81"}
!240 = !{!"82"}
!241 = !{!"83"}
!242 = !{!"84"}
!243 = !{!"85"}
!244 = !{!"86"}
!245 = !{!"87"}
!246 = !{!"88"}
!247 = !{!"89"}
!248 = !{!"90"}
!249 = !{!"91"}
!250 = !{!"92"}
!251 = !{!"93"}
!252 = !{!"94"}
!253 = !{!"95"}
!254 = !{!"96"}
!255 = !{!"97"}
!256 = !{!"98"}
!257 = !{!"99"}
!258 = !{!"100"}
!259 = !{!"101"}
!260 = !{!"102"}
!261 = !{!"103"}
!262 = !{!"104"}
!263 = !{!"105"}
!264 = !{!"106"}
!265 = !{!"107"}
!266 = !{!"108"}
!267 = !{!"109"}
!268 = !{!"110"}
!269 = !{!"111"}
!270 = !{!"112"}
!271 = !{!"113"}
!272 = !{!"114"}
!273 = !{!"115"}
!274 = !{!"116"}
!275 = !{!"117"}
!276 = !{!"118"}
!277 = !{!"119"}
!278 = !{!"120"}
!279 = !{!"121"}
!280 = !{!"122"}
!281 = !{!"123"}
!282 = !{!"124"}
!283 = !{!"125"}
!284 = !{!"126"}
!285 = !{!"127"}
!286 = !{!"128"}
!287 = !{!"129"}
!288 = !{!"130"}
!289 = !{!"131"}
!290 = !{!"132"}
!291 = !{!"133"}
!292 = !{!"134"}
!293 = !{!"135"}
!294 = !{!"136"}
!295 = !{!"137"}
!296 = !{!"138"}
!297 = !{!"139"}
!298 = !{!"140"}
!299 = !{!"141"}
!300 = !{!"142"}
!301 = !{!"143"}
!302 = !{!"144"}
!303 = !{!"145"}
!304 = !{!"146"}
!305 = !{!"147"}
!306 = !{!"148"}
!307 = !{!"149"}
!308 = !{!"150"}
!309 = !{!"151"}
!310 = !{!"152"}
!311 = !{!"153"}
!312 = !{!"154"}
!313 = !{!"155"}
!314 = !{!"156"}
!315 = !{!"157"}
!316 = !{!"158"}
!317 = !{!"159"}
!318 = !{!"160"}
!319 = !{!"161"}
!320 = !{!"162"}
!321 = !DILocation(line: 75, column: 4, scope: !232)
!322 = !{!"163"}
!323 = !DILocation(line: 75, column: 4, scope: !324)
!324 = distinct !DILexicalBlock(scope: !232, file: !3, line: 75, column: 4)
!325 = !{!"164"}
!326 = !{!"165"}
!327 = !{!"166"}
!328 = !{!"167"}
!329 = !{!"168"}
!330 = !{!"169"}
!331 = !{!"170"}
!332 = !{!"171"}
!333 = !{!"172"}
!334 = !{!"173"}
!335 = !{!"174"}
!336 = !{!"175"}
!337 = !{!"176"}
!338 = !{!"177"}
!339 = !{!"178"}
!340 = !{!"179"}
!341 = !{!"180"}
!342 = !{!"181"}
!343 = !{!"182"}
!344 = !{!"183"}
!345 = !{!"184"}
!346 = !{!"185"}
!347 = !{!"186"}
!348 = !{!"187"}
!349 = !{!"188"}
!350 = !{!"189"}
!351 = !{!"190"}
!352 = !{!"191"}
!353 = !{!"192"}
!354 = !{!"193"}
!355 = !{!"194"}
!356 = !{!"195"}
!357 = !{!"196"}
!358 = !{!"197"}
!359 = !{!"198"}
!360 = !{!"199"}
!361 = !{!"200"}
!362 = !{!"201"}
!363 = !{!"202"}
!364 = !{!"203"}
!365 = !{!"204"}
!366 = !{!"205"}
!367 = !{!"206"}
!368 = !{!"207"}
!369 = !{!"208"}
!370 = !{!"209"}
!371 = !{!"210"}
!372 = !{!"211"}
!373 = !{!"212"}
!374 = !{!"213"}
!375 = !{!"214"}
!376 = !{!"215"}
!377 = !{!"216"}
!378 = !{!"217"}
!379 = !{!"218"}
!380 = !{!"219"}
!381 = !{!"220"}
!382 = !{!"221"}
!383 = !{!"222"}
!384 = !{!"223"}
!385 = !{!"224"}
!386 = !{!"225"}
!387 = !{!"226"}
!388 = !{!"227"}
!389 = !{!"228"}
!390 = !{!"229"}
!391 = !{!"230"}
!392 = !{!"231"}
!393 = !{!"232"}
!394 = !{!"233"}
!395 = !{!"234"}
!396 = !{!"235"}
!397 = !{!"236"}
!398 = !{!"237"}
!399 = !{!"238"}
!400 = !{!"239"}
!401 = !{!"240"}
!402 = !{!"241"}
!403 = !{!"242"}
!404 = !{!"243"}
!405 = !{!"244"}
!406 = !{!"245"}
!407 = !{!"246"}
!408 = !{!"247"}
!409 = !{!"248"}
!410 = !DILocation(line: 76, column: 4, scope: !232)
!411 = !{!"249"}
!412 = !DILocation(line: 76, column: 4, scope: !413)
!413 = distinct !DILexicalBlock(scope: !232, file: !3, line: 76, column: 4)
!414 = !{!"250"}
!415 = !{!"251"}
!416 = !{!"252"}
!417 = !{!"253"}
!418 = !{!"254"}
!419 = !{!"255"}
!420 = !{!"256"}
!421 = !{!"257"}
!422 = !{!"258"}
!423 = !{!"259"}
!424 = !{!"260"}
!425 = !{!"261"}
!426 = !{!"262"}
!427 = !{!"263"}
!428 = !{!"264"}
!429 = !{!"265"}
!430 = !{!"266"}
!431 = !{!"267"}
!432 = !{!"268"}
!433 = !{!"269"}
!434 = !{!"270"}
!435 = !{!"271"}
!436 = !{!"272"}
!437 = !{!"273"}
!438 = !{!"274"}
!439 = !{!"275"}
!440 = !{!"276"}
!441 = !{!"277"}
!442 = !{!"278"}
!443 = !{!"279"}
!444 = !{!"280"}
!445 = !{!"281"}
!446 = !{!"282"}
!447 = !{!"283"}
!448 = !{!"284"}
!449 = !{!"285"}
!450 = !{!"286"}
!451 = !{!"287"}
!452 = !{!"288"}
!453 = !{!"289"}
!454 = !{!"290"}
!455 = !{!"291"}
!456 = !{!"292"}
!457 = !{!"293"}
!458 = !{!"294"}
!459 = !{!"295"}
!460 = !{!"296"}
!461 = !{!"297"}
!462 = !{!"298"}
!463 = !{!"299"}
!464 = !{!"300"}
!465 = !{!"301"}
!466 = !{!"302"}
!467 = !{!"303"}
!468 = !{!"304"}
!469 = !{!"305"}
!470 = !{!"306"}
!471 = !{!"307"}
!472 = !{!"308"}
!473 = !{!"309"}
!474 = !{!"310"}
!475 = !{!"311"}
!476 = !{!"312"}
!477 = !{!"313"}
!478 = !{!"314"}
!479 = !{!"315"}
!480 = !{!"316"}
!481 = !{!"317"}
!482 = !{!"318"}
!483 = !{!"319"}
!484 = !{!"320"}
!485 = !{!"321"}
!486 = !{!"322"}
!487 = !{!"323"}
!488 = !{!"324"}
!489 = !{!"325"}
!490 = !{!"326"}
!491 = !{!"327"}
!492 = !{!"328"}
!493 = !{!"329"}
!494 = !{!"330"}
!495 = !{!"331"}
!496 = !{!"332"}
!497 = !{!"333"}
!498 = !{!"334"}
!499 = !DILocation(line: 77, column: 4, scope: !232)
!500 = !{!"335"}
!501 = !DILocation(line: 77, column: 4, scope: !502)
!502 = distinct !DILexicalBlock(scope: !232, file: !3, line: 77, column: 4)
!503 = !{!"336"}
!504 = !{!"337"}
!505 = !{!"338"}
!506 = !{!"339"}
!507 = !{!"340"}
!508 = !{!"341"}
!509 = !{!"342"}
!510 = !{!"343"}
!511 = !{!"344"}
!512 = !{!"345"}
!513 = !{!"346"}
!514 = !{!"347"}
!515 = !{!"348"}
!516 = !{!"349"}
!517 = !{!"350"}
!518 = !{!"351"}
!519 = !{!"352"}
!520 = !{!"353"}
!521 = !{!"354"}
!522 = !{!"355"}
!523 = !{!"356"}
!524 = !{!"357"}
!525 = !{!"358"}
!526 = !{!"359"}
!527 = !{!"360"}
!528 = !{!"361"}
!529 = !{!"362"}
!530 = !{!"363"}
!531 = !{!"364"}
!532 = !{!"365"}
!533 = !{!"366"}
!534 = !{!"367"}
!535 = !{!"368"}
!536 = !{!"369"}
!537 = !{!"370"}
!538 = !{!"371"}
!539 = !{!"372"}
!540 = !{!"373"}
!541 = !{!"374"}
!542 = !{!"375"}
!543 = !{!"376"}
!544 = !{!"377"}
!545 = !{!"378"}
!546 = !{!"379"}
!547 = !{!"380"}
!548 = !{!"381"}
!549 = !{!"382"}
!550 = !{!"383"}
!551 = !{!"384"}
!552 = !{!"385"}
!553 = !{!"386"}
!554 = !{!"387"}
!555 = !{!"388"}
!556 = !{!"389"}
!557 = !{!"390"}
!558 = !{!"391"}
!559 = !{!"392"}
!560 = !{!"393"}
!561 = !{!"394"}
!562 = !{!"395"}
!563 = !{!"396"}
!564 = !{!"397"}
!565 = !{!"398"}
!566 = !{!"399"}
!567 = !{!"400"}
!568 = !{!"401"}
!569 = !{!"402"}
!570 = !{!"403"}
!571 = !{!"404"}
!572 = !{!"405"}
!573 = !{!"406"}
!574 = !{!"407"}
!575 = !{!"408"}
!576 = !{!"409"}
!577 = !{!"410"}
!578 = !{!"411"}
!579 = !{!"412"}
!580 = !{!"413"}
!581 = !{!"414"}
!582 = !{!"415"}
!583 = !{!"416"}
!584 = !{!"417"}
!585 = !{!"418"}
!586 = !{!"419"}
!587 = !{!"420"}
!588 = !DILocation(line: 78, column: 4, scope: !232)
!589 = !{!"421"}
!590 = !DILocation(line: 78, column: 4, scope: !591)
!591 = distinct !DILexicalBlock(scope: !232, file: !3, line: 78, column: 4)
!592 = !{!"422"}
!593 = !{!"423"}
!594 = !{!"424"}
!595 = !{!"425"}
!596 = !{!"426"}
!597 = !{!"427"}
!598 = !{!"428"}
!599 = !{!"429"}
!600 = !{!"430"}
!601 = !{!"431"}
!602 = !{!"432"}
!603 = !{!"433"}
!604 = !{!"434"}
!605 = !{!"435"}
!606 = !{!"436"}
!607 = !{!"437"}
!608 = !{!"438"}
!609 = !{!"439"}
!610 = !{!"440"}
!611 = !{!"441"}
!612 = !{!"442"}
!613 = !{!"443"}
!614 = !{!"444"}
!615 = !{!"445"}
!616 = !{!"446"}
!617 = !{!"447"}
!618 = !{!"448"}
!619 = !{!"449"}
!620 = !{!"450"}
!621 = !{!"451"}
!622 = !{!"452"}
!623 = !{!"453"}
!624 = !{!"454"}
!625 = !{!"455"}
!626 = !{!"456"}
!627 = !{!"457"}
!628 = !{!"458"}
!629 = !{!"459"}
!630 = !{!"460"}
!631 = !{!"461"}
!632 = !{!"462"}
!633 = !{!"463"}
!634 = !{!"464"}
!635 = !{!"465"}
!636 = !{!"466"}
!637 = !{!"467"}
!638 = !{!"468"}
!639 = !{!"469"}
!640 = !{!"470"}
!641 = !{!"471"}
!642 = !{!"472"}
!643 = !{!"473"}
!644 = !{!"474"}
!645 = !{!"475"}
!646 = !{!"476"}
!647 = !{!"477"}
!648 = !{!"478"}
!649 = !{!"479"}
!650 = !{!"480"}
!651 = !{!"481"}
!652 = !{!"482"}
!653 = !{!"483"}
!654 = !{!"484"}
!655 = !{!"485"}
!656 = !{!"486"}
!657 = !{!"487"}
!658 = !{!"488"}
!659 = !{!"489"}
!660 = !{!"490"}
!661 = !{!"491"}
!662 = !{!"492"}
!663 = !{!"493"}
!664 = !{!"494"}
!665 = !{!"495"}
!666 = !{!"496"}
!667 = !{!"497"}
!668 = !{!"498"}
!669 = !{!"499"}
!670 = !{!"500"}
!671 = !{!"501"}
!672 = !{!"502"}
!673 = !{!"503"}
!674 = !{!"504"}
!675 = !{!"505"}
!676 = !{!"506"}
!677 = !DILocation(line: 79, column: 4, scope: !232)
!678 = !{!"507"}
!679 = !DILocation(line: 79, column: 4, scope: !680)
!680 = distinct !DILexicalBlock(scope: !232, file: !3, line: 79, column: 4)
!681 = !{!"508"}
!682 = !{!"509"}
!683 = !{!"510"}
!684 = !{!"511"}
!685 = !{!"512"}
!686 = !{!"513"}
!687 = !{!"514"}
!688 = !{!"515"}
!689 = !{!"516"}
!690 = !{!"517"}
!691 = !{!"518"}
!692 = !{!"519"}
!693 = !{!"520"}
!694 = !{!"521"}
!695 = !{!"522"}
!696 = !{!"523"}
!697 = !{!"524"}
!698 = !{!"525"}
!699 = !{!"526"}
!700 = !{!"527"}
!701 = !{!"528"}
!702 = !{!"529"}
!703 = !{!"530"}
!704 = !{!"531"}
!705 = !{!"532"}
!706 = !{!"533"}
!707 = !{!"534"}
!708 = !{!"535"}
!709 = !{!"536"}
!710 = !{!"537"}
!711 = !{!"538"}
!712 = !{!"539"}
!713 = !{!"540"}
!714 = !{!"541"}
!715 = !{!"542"}
!716 = !{!"543"}
!717 = !{!"544"}
!718 = !{!"545"}
!719 = !{!"546"}
!720 = !{!"547"}
!721 = !{!"548"}
!722 = !{!"549"}
!723 = !{!"550"}
!724 = !{!"551"}
!725 = !{!"552"}
!726 = !{!"553"}
!727 = !{!"554"}
!728 = !{!"555"}
!729 = !{!"556"}
!730 = !{!"557"}
!731 = !{!"558"}
!732 = !{!"559"}
!733 = !{!"560"}
!734 = !{!"561"}
!735 = !{!"562"}
!736 = !{!"563"}
!737 = !{!"564"}
!738 = !{!"565"}
!739 = !{!"566"}
!740 = !{!"567"}
!741 = !{!"568"}
!742 = !{!"569"}
!743 = !{!"570"}
!744 = !{!"571"}
!745 = !{!"572"}
!746 = !{!"573"}
!747 = !{!"574"}
!748 = !{!"575"}
!749 = !{!"576"}
!750 = !{!"577"}
!751 = !{!"578"}
!752 = !{!"579"}
!753 = !{!"580"}
!754 = !{!"581"}
!755 = !{!"582"}
!756 = !{!"583"}
!757 = !{!"584"}
!758 = !{!"585"}
!759 = !{!"586"}
!760 = !{!"587"}
!761 = !{!"588"}
!762 = !{!"589"}
!763 = !{!"590"}
!764 = !{!"591"}
!765 = !{!"592"}
!766 = !DILocation(line: 80, column: 4, scope: !232)
!767 = !{!"593"}
!768 = !DILocation(line: 80, column: 4, scope: !769)
!769 = distinct !DILexicalBlock(scope: !232, file: !3, line: 80, column: 4)
!770 = !{!"594"}
!771 = !{!"595"}
!772 = !{!"596"}
!773 = !{!"597"}
!774 = !{!"598"}
!775 = !{!"599"}
!776 = !{!"600"}
!777 = !{!"601"}
!778 = !{!"602"}
!779 = !{!"603"}
!780 = !{!"604"}
!781 = !{!"605"}
!782 = !{!"606"}
!783 = !{!"607"}
!784 = !{!"608"}
!785 = !{!"609"}
!786 = !{!"610"}
!787 = !{!"611"}
!788 = !{!"612"}
!789 = !{!"613"}
!790 = !{!"614"}
!791 = !{!"615"}
!792 = !{!"616"}
!793 = !{!"617"}
!794 = !{!"618"}
!795 = !{!"619"}
!796 = !{!"620"}
!797 = !{!"621"}
!798 = !{!"622"}
!799 = !{!"623"}
!800 = !{!"624"}
!801 = !{!"625"}
!802 = !{!"626"}
!803 = !{!"627"}
!804 = !{!"628"}
!805 = !{!"629"}
!806 = !{!"630"}
!807 = !{!"631"}
!808 = !{!"632"}
!809 = !{!"633"}
!810 = !{!"634"}
!811 = !{!"635"}
!812 = !{!"636"}
!813 = !{!"637"}
!814 = !{!"638"}
!815 = !{!"639"}
!816 = !{!"640"}
!817 = !{!"641"}
!818 = !{!"642"}
!819 = !{!"643"}
!820 = !{!"644"}
!821 = !{!"645"}
!822 = !{!"646"}
!823 = !{!"647"}
!824 = !{!"648"}
!825 = !{!"649"}
!826 = !{!"650"}
!827 = !{!"651"}
!828 = !{!"652"}
!829 = !{!"653"}
!830 = !{!"654"}
!831 = !{!"655"}
!832 = !{!"656"}
!833 = !{!"657"}
!834 = !{!"658"}
!835 = !{!"659"}
!836 = !{!"660"}
!837 = !{!"661"}
!838 = !{!"662"}
!839 = !{!"663"}
!840 = !{!"664"}
!841 = !{!"665"}
!842 = !{!"666"}
!843 = !{!"667"}
!844 = !{!"668"}
!845 = !{!"669"}
!846 = !{!"670"}
!847 = !{!"671"}
!848 = !{!"672"}
!849 = !{!"673"}
!850 = !{!"674"}
!851 = !{!"675"}
!852 = !{!"676"}
!853 = !{!"677"}
!854 = !{!"678"}
!855 = !DILocation(line: 81, column: 4, scope: !232)
!856 = !{!"679"}
!857 = !DILocation(line: 81, column: 4, scope: !858)
!858 = distinct !DILexicalBlock(scope: !232, file: !3, line: 81, column: 4)
!859 = !{!"680"}
!860 = !{!"681"}
!861 = !{!"682"}
!862 = !{!"683"}
!863 = !{!"684"}
!864 = !{!"685"}
!865 = !{!"686"}
!866 = !{!"687"}
!867 = !{!"688"}
!868 = !{!"689"}
!869 = !{!"690"}
!870 = !{!"691"}
!871 = !{!"692"}
!872 = !{!"693"}
!873 = !{!"694"}
!874 = !{!"695"}
!875 = !{!"696"}
!876 = !{!"697"}
!877 = !{!"698"}
!878 = !{!"699"}
!879 = !{!"700"}
!880 = !{!"701"}
!881 = !{!"702"}
!882 = !{!"703"}
!883 = !{!"704"}
!884 = !{!"705"}
!885 = !{!"706"}
!886 = !{!"707"}
!887 = !{!"708"}
!888 = !{!"709"}
!889 = !{!"710"}
!890 = !{!"711"}
!891 = !{!"712"}
!892 = !{!"713"}
!893 = !{!"714"}
!894 = !{!"715"}
!895 = !{!"716"}
!896 = !{!"717"}
!897 = !{!"718"}
!898 = !{!"719"}
!899 = !{!"720"}
!900 = !{!"721"}
!901 = !{!"722"}
!902 = !{!"723"}
!903 = !{!"724"}
!904 = !{!"725"}
!905 = !{!"726"}
!906 = !{!"727"}
!907 = !{!"728"}
!908 = !{!"729"}
!909 = !{!"730"}
!910 = !{!"731"}
!911 = !{!"732"}
!912 = !{!"733"}
!913 = !{!"734"}
!914 = !{!"735"}
!915 = !{!"736"}
!916 = !{!"737"}
!917 = !{!"738"}
!918 = !{!"739"}
!919 = !{!"740"}
!920 = !{!"741"}
!921 = !{!"742"}
!922 = !{!"743"}
!923 = !{!"744"}
!924 = !{!"745"}
!925 = !{!"746"}
!926 = !{!"747"}
!927 = !{!"748"}
!928 = !{!"749"}
!929 = !{!"750"}
!930 = !{!"751"}
!931 = !{!"752"}
!932 = !{!"753"}
!933 = !{!"754"}
!934 = !{!"755"}
!935 = !{!"756"}
!936 = !{!"757"}
!937 = !{!"758"}
!938 = !{!"759"}
!939 = !{!"760"}
!940 = !{!"761"}
!941 = !{!"762"}
!942 = !{!"763"}
!943 = !{!"764"}
!944 = !DILocation(line: 85, column: 3, scope: !232)
!945 = !{!"765"}
!946 = !DILocation(line: 57, column: 25, scope: !227)
!947 = !{!"766"}
!948 = !{!"767"}
!949 = !DILocation(line: 57, column: 3, scope: !227)
!950 = distinct !{!950, !229, !951, !135}
!951 = !DILocation(line: 85, column: 3, scope: !221)
!952 = !{!"768"}
!953 = !{!"769"}
!954 = !DILocation(line: 86, column: 8, scope: !955)
!955 = distinct !DILexicalBlock(scope: !181, file: !3, line: 86, column: 3)
!956 = !{!"770"}
!957 = !DILocation(line: 0, scope: !955)
!958 = !{!"771"}
!959 = !{!"772"}
!960 = !DILocation(line: 86, column: 17, scope: !961)
!961 = distinct !DILexicalBlock(scope: !955, file: !3, line: 86, column: 3)
!962 = !{!"773"}
!963 = !DILocation(line: 86, column: 3, scope: !955)
!964 = !{!"774"}
!965 = !DILocation(line: 87, column: 22, scope: !966)
!966 = distinct !DILexicalBlock(scope: !961, file: !3, line: 86, column: 28)
!967 = !{!"775"}
!968 = !DILocation(line: 87, column: 16, scope: !966)
!969 = !{!"776"}
!970 = !DILocation(line: 87, column: 29, scope: !966)
!971 = !{!"777"}
!972 = !{!"778"}
!973 = !DILocation(line: 87, column: 40, scope: !966)
!974 = !{!"779"}
!975 = !{!"780"}
!976 = !DILocation(line: 87, column: 38, scope: !966)
!977 = !{!"781"}
!978 = !DILocation(line: 87, column: 4, scope: !966)
!979 = !{!"782"}
!980 = !DILocation(line: 88, column: 3, scope: !966)
!981 = !{!"783"}
!982 = !DILocation(line: 86, column: 24, scope: !961)
!983 = !{!"784"}
!984 = !{!"785"}
!985 = !DILocation(line: 86, column: 3, scope: !961)
!986 = distinct !{!986, !963, !987, !135}
!987 = !DILocation(line: 88, column: 3, scope: !955)
!988 = !{!"786"}
!989 = !{!"787"}
!990 = !DILocation(line: 89, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !181, file: !3, line: 89, column: 3)
!992 = !{!"788"}
!993 = !DILocation(line: 0, scope: !991)
!994 = !{!"789"}
!995 = !{!"790"}
!996 = !DILocation(line: 89, column: 17, scope: !997)
!997 = distinct !DILexicalBlock(scope: !991, file: !3, line: 89, column: 3)
!998 = !{!"791"}
!999 = !DILocation(line: 89, column: 3, scope: !991)
!1000 = !{!"792"}
!1001 = !DILocation(line: 90, column: 22, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !3, line: 89, column: 29)
!1003 = !{!"793"}
!1004 = !DILocation(line: 90, column: 16, scope: !1002)
!1005 = !{!"794"}
!1006 = !DILocation(line: 90, column: 29, scope: !1002)
!1007 = !{!"795"}
!1008 = !{!"796"}
!1009 = !DILocation(line: 90, column: 45, scope: !1002)
!1010 = !{!"797"}
!1011 = !DILocation(line: 90, column: 40, scope: !1002)
!1012 = !{!"798"}
!1013 = !{!"799"}
!1014 = !DILocation(line: 90, column: 38, scope: !1002)
!1015 = !{!"800"}
!1016 = !DILocation(line: 90, column: 4, scope: !1002)
!1017 = !{!"801"}
!1018 = !DILocation(line: 91, column: 3, scope: !1002)
!1019 = !{!"802"}
!1020 = !DILocation(line: 89, column: 25, scope: !997)
!1021 = !{!"803"}
!1022 = !{!"804"}
!1023 = !DILocation(line: 89, column: 3, scope: !997)
!1024 = distinct !{!1024, !999, !1025, !135}
!1025 = !DILocation(line: 91, column: 3, scope: !991)
!1026 = !{!"805"}
!1027 = !DILocation(line: 92, column: 15, scope: !181)
!1028 = !{!"806"}
!1029 = !DILocation(line: 92, column: 24, scope: !181)
!1030 = !{!"807"}
!1031 = !{!"808"}
!1032 = !DILocation(line: 92, column: 34, scope: !181)
!1033 = !{!"809"}
!1034 = !DILocation(line: 92, column: 3, scope: !181)
!1035 = !{!"810"}
!1036 = !{!"811"}
!1037 = !DILocation(line: 93, column: 8, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !181, file: !3, line: 93, column: 3)
!1039 = !{!"812"}
!1040 = !DILocation(line: 0, scope: !1038)
!1041 = !{!"813"}
!1042 = !{!"814"}
!1043 = !DILocation(line: 93, column: 18, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 93, column: 3)
!1045 = !{!"815"}
!1046 = !DILocation(line: 93, column: 3, scope: !1038)
!1047 = !{!"816"}
!1048 = !DILocation(line: 94, column: 22, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 93, column: 30)
!1050 = !{!"817"}
!1051 = !DILocation(line: 94, column: 16, scope: !1049)
!1052 = !{!"818"}
!1053 = !DILocation(line: 94, column: 29, scope: !1049)
!1054 = !{!"819"}
!1055 = !{!"820"}
!1056 = !DILocation(line: 94, column: 46, scope: !1049)
!1057 = !{!"821"}
!1058 = !DILocation(line: 94, column: 40, scope: !1049)
!1059 = !{!"822"}
!1060 = !{!"823"}
!1061 = !DILocation(line: 94, column: 38, scope: !1049)
!1062 = !{!"824"}
!1063 = !DILocation(line: 94, column: 4, scope: !1049)
!1064 = !{!"825"}
!1065 = !DILocation(line: 95, column: 3, scope: !1049)
!1066 = !{!"826"}
!1067 = !DILocation(line: 93, column: 26, scope: !1044)
!1068 = !{!"827"}
!1069 = !{!"828"}
!1070 = !DILocation(line: 93, column: 3, scope: !1044)
!1071 = distinct !{!1071, !1046, !1072, !135}
!1072 = !DILocation(line: 95, column: 3, scope: !1038)
!1073 = !{!"829"}
!1074 = !DILocation(line: 97, column: 14, scope: !181)
!1075 = !{!"830"}
!1076 = !DILocation(line: 97, column: 10, scope: !181)
!1077 = !{!"831"}
!1078 = !{!"832"}
!1079 = !{!"833"}
!1080 = !{!"834"}
!1081 = !DILocalVariable(name: "clen", scope: !181, file: !3, line: 50, type: !14)
!1082 = !{!"835"}
!1083 = !{!"836"}
!1084 = !DILocation(line: 98, column: 8, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !181, file: !3, line: 98, column: 3)
!1086 = !{!"837"}
!1087 = !DILocation(line: 0, scope: !1085)
!1088 = !{!"838"}
!1089 = !{!"839"}
!1090 = !DILocation(line: 98, column: 17, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 98, column: 3)
!1092 = !{!"840"}
!1093 = !DILocation(line: 98, column: 3, scope: !1085)
!1094 = !{!"841"}
!1095 = !DILocation(line: 99, column: 14, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 98, column: 31)
!1097 = !{!"842"}
!1098 = !{!"843"}
!1099 = !{!"844"}
!1100 = !DILocation(line: 99, column: 4, scope: !1096)
!1101 = !{!"845"}
!1102 = !DILocation(line: 99, column: 11, scope: !1096)
!1103 = !{!"846"}
!1104 = !{!"847"}
!1105 = !{!"848"}
!1106 = !{!"849"}
!1107 = !{!"850"}
!1108 = !DILocation(line: 100, column: 3, scope: !1096)
!1109 = !{!"851"}
!1110 = !DILocation(line: 98, column: 27, scope: !1091)
!1111 = !{!"852"}
!1112 = !{!"853"}
!1113 = !DILocation(line: 98, column: 3, scope: !1091)
!1114 = distinct !{!1114, !1093, !1115, !135}
!1115 = !DILocation(line: 100, column: 3, scope: !1085)
!1116 = !{!"854"}
!1117 = !DILocation(line: 101, column: 7, scope: !181)
!1118 = !{!"855"}
!1119 = !{!"856"}
!1120 = !DILocation(line: 102, column: 7, scope: !181)
!1121 = !{!"857"}
!1122 = !{!"858"}
!1123 = !DILocation(line: 103, column: 6, scope: !181)
!1124 = !{!"859"}
!1125 = !{!"860"}
!1126 = distinct !{!1126, !169, !1127, !135}
!1127 = !DILocation(line: 104, column: 2, scope: !2)
!1128 = !{!"861"}
!1129 = !DILocation(line: 105, column: 2, scope: !2)
!1130 = !{!"862"}
!1131 = distinct !DISubprogram(name: "br_dec32le", scope: !26, file: !26, line: 574, type: !1132, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!6, !11}
!1134 = !DILocalVariable(name: "src", arg: 1, scope: !1131, file: !26, line: 574, type: !11)
!1135 = !DILocation(line: 0, scope: !1131)
!1136 = !{!"863"}
!1137 = !DILocation(line: 577, column: 10, scope: !1131)
!1138 = !{!"864"}
!1139 = !DILocation(line: 577, column: 38, scope: !1131)
!1140 = !{!"865"}
!1141 = !{!"866"}
!1142 = !DILocation(line: 577, column: 2, scope: !1131)
!1143 = !{!"867"}
!1144 = distinct !DISubprogram(name: "br_enc32le", scope: !26, file: !26, line: 542, type: !1145, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, retainedNodes: !18)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !13, !6}
!1147 = !DILocalVariable(name: "dst", arg: 1, scope: !1144, file: !26, line: 542, type: !13)
!1148 = !DILocation(line: 0, scope: !1144)
!1149 = !{!"868"}
!1150 = !DILocalVariable(name: "x", arg: 2, scope: !1144, file: !26, line: 542, type: !6)
!1151 = !{!"869"}
!1152 = !DILocation(line: 545, column: 3, scope: !1144)
!1153 = !{!"870"}
!1154 = !DILocation(line: 545, column: 25, scope: !1144)
!1155 = !{!"871"}
!1156 = !DILocation(line: 545, column: 27, scope: !1144)
!1157 = !{!"872"}
!1158 = !DILocation(line: 555, column: 1, scope: !1144)
!1159 = !{!"873"}
!1160 = distinct !DISubprogram(name: "br_poly1305_i15_run", scope: !42, file: !42, line: 129, type: !1161, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !18)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !11, !11, !13, !14, !11, !14, !13, !1163, !217}
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_chacha20_run", file: !1164, line: 2442, baseType: !1165)
!1164 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/Poly1305_i15_ChaCha20")
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1166 = !{!"874"}
!1167 = !{!"875"}
!1168 = !{!"876"}
!1169 = !{!"877"}
!1170 = !{!"878"}
!1171 = !DILocalVariable(name: "key", arg: 1, scope: !1160, file: !42, line: 129, type: !11)
!1172 = !DILocation(line: 0, scope: !1160)
!1173 = !{!"879"}
!1174 = !DILocalVariable(name: "iv", arg: 2, scope: !1160, file: !42, line: 129, type: !11)
!1175 = !{!"880"}
!1176 = !DILocalVariable(name: "data", arg: 3, scope: !1160, file: !42, line: 130, type: !13)
!1177 = !{!"881"}
!1178 = !DILocalVariable(name: "len", arg: 4, scope: !1160, file: !42, line: 130, type: !14)
!1179 = !{!"882"}
!1180 = !DILocalVariable(name: "aad", arg: 5, scope: !1160, file: !42, line: 130, type: !11)
!1181 = !{!"883"}
!1182 = !DILocalVariable(name: "aad_len", arg: 6, scope: !1160, file: !42, line: 130, type: !14)
!1183 = !{!"884"}
!1184 = !DILocalVariable(name: "tag", arg: 7, scope: !1160, file: !42, line: 131, type: !13)
!1185 = !{!"885"}
!1186 = !DILocalVariable(name: "ichacha", arg: 8, scope: !1160, file: !42, line: 131, type: !1163)
!1187 = !{!"886"}
!1188 = !DILocalVariable(name: "encrypt", arg: 9, scope: !1160, file: !42, line: 131, type: !217)
!1189 = !{!"887"}
!1190 = !DILocalVariable(name: "pkey", scope: !1160, file: !42, line: 133, type: !1191)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !1192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 32)
!1194 = !DILocation(line: 133, column: 16, scope: !1160)
!1195 = !{!"888"}
!1196 = !DILocalVariable(name: "foot", scope: !1160, file: !42, line: 133, type: !1197)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !183)
!1198 = !DILocation(line: 133, column: 26, scope: !1160)
!1199 = !{!"889"}
!1200 = !DILocalVariable(name: "t", scope: !1160, file: !42, line: 134, type: !1201)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, elements: !63)
!1202 = !DILocation(line: 134, column: 11, scope: !1160)
!1203 = !{!"890"}
!1204 = !DILocalVariable(name: "r", scope: !1160, file: !42, line: 134, type: !1201)
!1205 = !DILocation(line: 134, column: 18, scope: !1160)
!1206 = !{!"891"}
!1207 = !DILocalVariable(name: "acc", scope: !1160, file: !42, line: 134, type: !1201)
!1208 = !DILocation(line: 134, column: 25, scope: !1160)
!1209 = !{!"892"}
!1210 = !DILocation(line: 140, column: 2, scope: !1160)
!1211 = !{!"893"}
!1212 = !{!"894"}
!1213 = !DILocation(line: 141, column: 22, scope: !1160)
!1214 = !{!"895"}
!1215 = !DILocation(line: 141, column: 2, scope: !1160)
!1216 = !{!"896"}
!1217 = !DILocation(line: 147, column: 6, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1160, file: !42, line: 147, column: 6)
!1219 = !{!"897"}
!1220 = !DILocation(line: 147, column: 6, scope: !1160)
!1221 = !{!"898"}
!1222 = !DILocation(line: 148, column: 3, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !42, line: 147, column: 15)
!1224 = !{!"899"}
!1225 = !DILocation(line: 149, column: 2, scope: !1223)
!1226 = !{!"900"}
!1227 = !DILocation(line: 161, column: 2, scope: !1160)
!1228 = !{!"901"}
!1229 = !DILocation(line: 161, column: 11, scope: !1160)
!1230 = !{!"902"}
!1231 = !{!"903"}
!1232 = !{!"904"}
!1233 = !{!"905"}
!1234 = !{!"906"}
!1235 = !DILocation(line: 162, column: 2, scope: !1160)
!1236 = !{!"907"}
!1237 = !DILocation(line: 162, column: 11, scope: !1160)
!1238 = !{!"908"}
!1239 = !{!"909"}
!1240 = !{!"910"}
!1241 = !{!"911"}
!1242 = !{!"912"}
!1243 = !DILocation(line: 163, column: 2, scope: !1160)
!1244 = !{!"913"}
!1245 = !DILocation(line: 163, column: 11, scope: !1160)
!1246 = !{!"914"}
!1247 = !{!"915"}
!1248 = !{!"916"}
!1249 = !{!"917"}
!1250 = !{!"918"}
!1251 = !DILocation(line: 164, column: 2, scope: !1160)
!1252 = !{!"919"}
!1253 = !DILocation(line: 164, column: 11, scope: !1160)
!1254 = !{!"920"}
!1255 = !{!"921"}
!1256 = !{!"922"}
!1257 = !{!"923"}
!1258 = !{!"924"}
!1259 = !DILocation(line: 165, column: 2, scope: !1160)
!1260 = !{!"925"}
!1261 = !DILocation(line: 165, column: 11, scope: !1160)
!1262 = !{!"926"}
!1263 = !{!"927"}
!1264 = !{!"928"}
!1265 = !{!"929"}
!1266 = !{!"930"}
!1267 = !DILocation(line: 166, column: 2, scope: !1160)
!1268 = !{!"931"}
!1269 = !DILocation(line: 166, column: 11, scope: !1160)
!1270 = !{!"932"}
!1271 = !{!"933"}
!1272 = !{!"934"}
!1273 = !{!"935"}
!1274 = !{!"936"}
!1275 = !DILocation(line: 167, column: 2, scope: !1160)
!1276 = !{!"937"}
!1277 = !DILocation(line: 167, column: 11, scope: !1160)
!1278 = !{!"938"}
!1279 = !{!"939"}
!1280 = !{!"940"}
!1281 = !{!"941"}
!1282 = !{!"942"}
!1283 = !DILocation(line: 173, column: 13, scope: !1160)
!1284 = !{!"943"}
!1285 = !DILocation(line: 173, column: 2, scope: !1160)
!1286 = !{!"944"}
!1287 = !DILocation(line: 174, column: 20, scope: !1160)
!1288 = !{!"945"}
!1289 = !DILocation(line: 174, column: 23, scope: !1160)
!1290 = !{!"946"}
!1291 = !{!"947"}
!1292 = !DILocation(line: 174, column: 2, scope: !1160)
!1293 = !{!"948"}
!1294 = !DILocation(line: 179, column: 18, scope: !1160)
!1295 = !{!"949"}
!1296 = !DILocation(line: 179, column: 21, scope: !1160)
!1297 = !{!"950"}
!1298 = !{!"951"}
!1299 = !{!"952"}
!1300 = !DILocation(line: 179, column: 2, scope: !1160)
!1301 = !{!"953"}
!1302 = !DILocation(line: 184, column: 14, scope: !1160)
!1303 = !{!"954"}
!1304 = !DILocation(line: 184, column: 2, scope: !1160)
!1305 = !{!"955"}
!1306 = !DILocation(line: 190, column: 13, scope: !1160)
!1307 = !{!"956"}
!1308 = !DILocation(line: 190, column: 2, scope: !1160)
!1309 = !{!"957"}
!1310 = !DILocation(line: 191, column: 13, scope: !1160)
!1311 = !{!"958"}
!1312 = !DILocation(line: 191, column: 18, scope: !1160)
!1313 = !{!"959"}
!1314 = !DILocation(line: 191, column: 2, scope: !1160)
!1315 = !{!"960"}
!1316 = !DILocation(line: 192, column: 17, scope: !1160)
!1317 = !{!"961"}
!1318 = !DILocation(line: 192, column: 22, scope: !1160)
!1319 = !{!"962"}
!1320 = !DILocation(line: 192, column: 2, scope: !1160)
!1321 = !{!"963"}
!1322 = !DILocation(line: 193, column: 17, scope: !1160)
!1323 = !{!"964"}
!1324 = !DILocation(line: 193, column: 22, scope: !1160)
!1325 = !{!"965"}
!1326 = !DILocation(line: 193, column: 2, scope: !1160)
!1327 = !{!"966"}
!1328 = !DILocation(line: 194, column: 17, scope: !1160)
!1329 = !{!"967"}
!1330 = !DILocation(line: 194, column: 22, scope: !1160)
!1331 = !{!"968"}
!1332 = !DILocation(line: 194, column: 25, scope: !1160)
!1333 = !{!"969"}
!1334 = !DILocation(line: 194, column: 2, scope: !1160)
!1335 = !{!"970"}
!1336 = !DILocation(line: 199, column: 13, scope: !1160)
!1337 = !{!"971"}
!1338 = !DILocation(line: 199, column: 18, scope: !1160)
!1339 = !{!"972"}
!1340 = !DILocation(line: 199, column: 2, scope: !1160)
!1341 = !{!"973"}
!1342 = !DILocation(line: 200, column: 20, scope: !1160)
!1343 = !{!"974"}
!1344 = !DILocation(line: 200, column: 23, scope: !1160)
!1345 = !{!"975"}
!1346 = !DILocation(line: 200, column: 28, scope: !1160)
!1347 = !{!"976"}
!1348 = !{!"977"}
!1349 = !DILocation(line: 200, column: 2, scope: !1160)
!1350 = !{!"978"}
!1351 = !DILocation(line: 206, column: 13, scope: !1160)
!1352 = !{!"979"}
!1353 = !DILocation(line: 206, column: 18, scope: !1160)
!1354 = !{!"980"}
!1355 = !DILocation(line: 206, column: 2, scope: !1160)
!1356 = !{!"981"}
!1357 = !DILocation(line: 212, column: 25, scope: !1160)
!1358 = !{!"982"}
!1359 = !DILocation(line: 212, column: 2, scope: !1160)
!1360 = !{!"983"}
!1361 = !DILocation(line: 213, column: 2, scope: !1160)
!1362 = !{!"984"}
!1363 = !DILocation(line: 218, column: 7, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1160, file: !42, line: 218, column: 6)
!1365 = !{!"985"}
!1366 = !DILocation(line: 218, column: 6, scope: !1160)
!1367 = !{!"986"}
!1368 = !DILocation(line: 219, column: 3, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !42, line: 218, column: 16)
!1370 = !{!"987"}
!1371 = !DILocation(line: 220, column: 2, scope: !1369)
!1372 = !{!"988"}
!1373 = !DILocation(line: 221, column: 1, scope: !1160)
!1374 = !{!"989"}
!1375 = distinct !DISubprogram(name: "byteswap16", scope: !42, file: !42, line: 114, type: !1376, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !41, retainedNodes: !18)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !99}
!1378 = !DILocalVariable(name: "buf", arg: 1, scope: !1375, file: !42, line: 114, type: !99)
!1379 = !DILocation(line: 0, scope: !1375)
!1380 = !{!"990"}
!1381 = !DILocalVariable(name: "i", scope: !1375, file: !42, line: 116, type: !217)
!1382 = !{!"991"}
!1383 = !DILocation(line: 118, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1375, file: !42, line: 118, column: 2)
!1385 = !{!"992"}
!1386 = !DILocation(line: 0, scope: !1384)
!1387 = !{!"993"}
!1388 = !{!"994"}
!1389 = !DILocation(line: 118, column: 16, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1384, file: !42, line: 118, column: 2)
!1391 = !{!"995"}
!1392 = !DILocation(line: 118, column: 2, scope: !1384)
!1393 = !{!"996"}
!1394 = !DILocation(line: 121, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !42, line: 118, column: 27)
!1396 = !{!"997"}
!1397 = !{!"998"}
!1398 = !{!"999"}
!1399 = !{!"1000"}
!1400 = !DILocalVariable(name: "x", scope: !1395, file: !42, line: 119, type: !10)
!1401 = !DILocation(line: 0, scope: !1395)
!1402 = !{!"1001"}
!1403 = !DILocation(line: 122, column: 19, scope: !1395)
!1404 = !{!"1002"}
!1405 = !DILocation(line: 122, column: 12, scope: !1395)
!1406 = !{!"1003"}
!1407 = !{!"1004"}
!1408 = !{!"1005"}
!1409 = !DILocation(line: 122, column: 3, scope: !1395)
!1410 = !{!"1006"}
!1411 = !{!"1007"}
!1412 = !DILocation(line: 122, column: 10, scope: !1395)
!1413 = !{!"1008"}
!1414 = !DILocation(line: 123, column: 17, scope: !1395)
!1415 = !{!"1009"}
!1416 = !DILocation(line: 123, column: 10, scope: !1395)
!1417 = !{!"1010"}
!1418 = !DILocation(line: 123, column: 3, scope: !1395)
!1419 = !{!"1011"}
!1420 = !{!"1012"}
!1421 = !DILocation(line: 123, column: 15, scope: !1395)
!1422 = !{!"1013"}
!1423 = !DILocation(line: 124, column: 2, scope: !1395)
!1424 = !{!"1014"}
!1425 = !DILocation(line: 118, column: 23, scope: !1390)
!1426 = !{!"1015"}
!1427 = !{!"1016"}
!1428 = !DILocation(line: 118, column: 2, scope: !1390)
!1429 = distinct !{!1429, !1392, !1430, !135}
!1430 = !DILocation(line: 124, column: 2, scope: !1384)
!1431 = !{!"1017"}
!1432 = !DILocation(line: 125, column: 1, scope: !1375)
!1433 = !{!"1018"}
!1434 = distinct !DISubprogram(name: "br_i15_zero", scope: !26, file: !26, line: 1537, type: !1435, scopeLine: 1538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !41, retainedNodes: !18)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !1437, !60}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1438 = !DILocalVariable(name: "x", arg: 1, scope: !1434, file: !26, line: 1537, type: !1437)
!1439 = !DILocation(line: 0, scope: !1434)
!1440 = !{!"1019"}
!1441 = !DILocalVariable(name: "bit_len", arg: 2, scope: !1434, file: !26, line: 1537, type: !60)
!1442 = !{!"1020"}
!1443 = !DILocation(line: 1539, column: 5, scope: !1434)
!1444 = !{!"1021"}
!1445 = !{!"1022"}
!1446 = !DILocation(line: 1539, column: 8, scope: !1434)
!1447 = !{!"1023"}
!1448 = !DILocation(line: 1540, column: 2, scope: !1434)
!1449 = !{!"1024"}
!1450 = !DILocation(line: 1540, column: 17, scope: !1434)
!1451 = !{!"1025"}
!1452 = !DILocation(line: 1540, column: 25, scope: !1434)
!1453 = !{!"1026"}
!1454 = !DILocation(line: 1540, column: 31, scope: !1434)
!1455 = !{!"1027"}
!1456 = !DILocation(line: 1540, column: 15, scope: !1434)
!1457 = !{!"1028"}
!1458 = !DILocation(line: 1540, column: 37, scope: !1434)
!1459 = !{!"1029"}
!1460 = !{!"1030"}
!1461 = !DILocation(line: 1541, column: 1, scope: !1434)
!1462 = !{!"1031"}
!1463 = distinct !DISubprogram(name: "br_enc64le", scope: !26, file: !26, line: 606, type: !1464, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !41, retainedNodes: !18)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !13, !44}
!1466 = !DILocalVariable(name: "dst", arg: 1, scope: !1463, file: !26, line: 606, type: !13)
!1467 = !DILocation(line: 0, scope: !1463)
!1468 = !{!"1032"}
!1469 = !DILocalVariable(name: "x", arg: 2, scope: !1463, file: !26, line: 606, type: !44)
!1470 = !{!"1033"}
!1471 = !DILocation(line: 609, column: 3, scope: !1463)
!1472 = !{!"1034"}
!1473 = !DILocation(line: 609, column: 25, scope: !1463)
!1474 = !{!"1035"}
!1475 = !DILocation(line: 609, column: 27, scope: !1463)
!1476 = !{!"1036"}
!1477 = !DILocation(line: 617, column: 1, scope: !1463)
!1478 = !{!"1037"}
!1479 = distinct !DISubprogram(name: "poly1305_inner", scope: !42, file: !42, line: 61, type: !1480, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !41, retainedNodes: !18)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !1437, !1482, !11, !14}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1483 = !{!"1038"}
!1484 = !{!"1039"}
!1485 = !{!"1040"}
!1486 = !DILocalVariable(name: "a", arg: 1, scope: !1479, file: !42, line: 61, type: !1437)
!1487 = !DILocation(line: 0, scope: !1479)
!1488 = !{!"1041"}
!1489 = !DILocalVariable(name: "r", arg: 2, scope: !1479, file: !42, line: 61, type: !1482)
!1490 = !{!"1042"}
!1491 = !DILocalVariable(name: "data", arg: 3, scope: !1479, file: !42, line: 61, type: !11)
!1492 = !{!"1043"}
!1493 = !DILocalVariable(name: "len", arg: 4, scope: !1479, file: !42, line: 61, type: !14)
!1494 = !{!"1044"}
!1495 = !DILocalVariable(name: "buf", scope: !1479, file: !42, line: 63, type: !20)
!1496 = !{!"1045"}
!1497 = !DILocation(line: 66, column: 2, scope: !1479)
!1498 = !{!"1046"}
!1499 = !{!"1047"}
!1500 = !{!"1048"}
!1501 = !{!"1049"}
!1502 = !{!"1050"}
!1503 = !DILocation(line: 66, column: 13, scope: !1479)
!1504 = !{!"1051"}
!1505 = !{!"1052"}
!1506 = !DILocalVariable(name: "tmp", scope: !1507, file: !42, line: 67, type: !1197)
!1507 = distinct !DILexicalBlock(scope: !1479, file: !42, line: 66, column: 18)
!1508 = !DILocation(line: 67, column: 17, scope: !1507)
!1509 = !{!"1053"}
!1510 = !DILocalVariable(name: "rev", scope: !1507, file: !42, line: 67, type: !1197)
!1511 = !DILocation(line: 67, column: 26, scope: !1507)
!1512 = !{!"1054"}
!1513 = !DILocalVariable(name: "b", scope: !1507, file: !42, line: 68, type: !1201)
!1514 = !DILocation(line: 68, column: 12, scope: !1507)
!1515 = !{!"1055"}
!1516 = !DILocation(line: 75, column: 11, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1507, file: !42, line: 75, column: 7)
!1518 = !{!"1056"}
!1519 = !DILocation(line: 75, column: 7, scope: !1507)
!1520 = !{!"1057"}
!1521 = !DILocation(line: 76, column: 4, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !42, line: 75, column: 17)
!1523 = !{!"1058"}
!1524 = !{!"1059"}
!1525 = !DILocation(line: 77, column: 4, scope: !1522)
!1526 = !{!"1060"}
!1527 = !{!"1061"}
!1528 = !DILocation(line: 78, column: 10, scope: !1522)
!1529 = !{!"1062"}
!1530 = !{!"1063"}
!1531 = !{!"1064"}
!1532 = !DILocation(line: 80, column: 3, scope: !1522)
!1533 = !{!"1065"}
!1534 = !{!"1066"}
!1535 = !{!"1067"}
!1536 = !{!"1068"}
!1537 = !{!"1069"}
!1538 = !DILocalVariable(name: "i", scope: !1507, file: !42, line: 70, type: !217)
!1539 = !DILocation(line: 0, scope: !1507)
!1540 = !{!"1070"}
!1541 = !DILocation(line: 86, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1507, file: !42, line: 86, column: 3)
!1543 = !{!"1071"}
!1544 = !DILocation(line: 0, scope: !1542)
!1545 = !{!"1072"}
!1546 = !{!"1073"}
!1547 = !DILocation(line: 86, column: 17, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1542, file: !42, line: 86, column: 3)
!1549 = !{!"1074"}
!1550 = !DILocation(line: 86, column: 3, scope: !1542)
!1551 = !{!"1075"}
!1552 = !DILocation(line: 87, column: 20, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !42, line: 86, column: 29)
!1554 = !{!"1076"}
!1555 = !DILocation(line: 87, column: 13, scope: !1553)
!1556 = !{!"1077"}
!1557 = !{!"1078"}
!1558 = !{!"1079"}
!1559 = !DILocation(line: 87, column: 4, scope: !1553)
!1560 = !{!"1080"}
!1561 = !{!"1081"}
!1562 = !DILocation(line: 87, column: 11, scope: !1553)
!1563 = !{!"1082"}
!1564 = !DILocation(line: 88, column: 3, scope: !1553)
!1565 = !{!"1083"}
!1566 = !DILocation(line: 86, column: 25, scope: !1548)
!1567 = !{!"1084"}
!1568 = !{!"1085"}
!1569 = !DILocation(line: 86, column: 3, scope: !1548)
!1570 = distinct !{!1570, !1550, !1571, !135}
!1571 = !DILocation(line: 88, column: 3, scope: !1542)
!1572 = !{!"1086"}
!1573 = !DILocation(line: 89, column: 21, scope: !1507)
!1574 = !{!"1087"}
!1575 = !DILocation(line: 89, column: 24, scope: !1507)
!1576 = !{!"1088"}
!1577 = !{!"1089"}
!1578 = !DILocation(line: 89, column: 3, scope: !1507)
!1579 = !{!"1090"}
!1580 = !DILocation(line: 90, column: 3, scope: !1507)
!1581 = !{!"1091"}
!1582 = !DILocation(line: 90, column: 8, scope: !1507)
!1583 = !{!"1092"}
!1584 = !{!"1093"}
!1585 = !{!"1094"}
!1586 = !{!"1095"}
!1587 = !{!"1096"}
!1588 = !DILocation(line: 96, column: 20, scope: !1507)
!1589 = !{!"1097"}
!1590 = !DILocation(line: 96, column: 9, scope: !1507)
!1591 = !{!"1098"}
!1592 = !DILocalVariable(name: "ctl", scope: !1507, file: !42, line: 69, type: !6)
!1593 = !{!"1099"}
!1594 = !DILocation(line: 97, column: 25, scope: !1507)
!1595 = !{!"1100"}
!1596 = !{!"1101"}
!1597 = !DILocation(line: 97, column: 14, scope: !1507)
!1598 = !{!"1102"}
!1599 = !DILocation(line: 97, column: 10, scope: !1507)
!1600 = !{!"1103"}
!1601 = !DILocation(line: 97, column: 7, scope: !1507)
!1602 = !{!"1104"}
!1603 = !{!"1105"}
!1604 = !DILocation(line: 98, column: 14, scope: !1507)
!1605 = !{!"1106"}
!1606 = !{!"1107"}
!1607 = !DILocation(line: 98, column: 3, scope: !1507)
!1608 = !{!"1108"}
!1609 = !DILocation(line: 103, column: 22, scope: !1507)
!1610 = !{!"1109"}
!1611 = !{!"1110"}
!1612 = !DILocation(line: 103, column: 3, scope: !1507)
!1613 = !{!"1111"}
!1614 = !DILocation(line: 105, column: 7, scope: !1507)
!1615 = !{!"1112"}
!1616 = !{!"1113"}
!1617 = !DILocation(line: 106, column: 7, scope: !1507)
!1618 = !{!"1114"}
!1619 = !{!"1115"}
!1620 = distinct !{!1620, !1497, !1621, !135}
!1621 = !DILocation(line: 107, column: 2, scope: !1479)
!1622 = !{!"1116"}
!1623 = !DILocation(line: 108, column: 1, scope: !1479)
!1624 = !{!"1117"}
!1625 = distinct !DISubprogram(name: "NOT", scope: !26, file: !26, line: 761, type: !1626, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !41, retainedNodes: !18)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!6, !6}
!1628 = !DILocalVariable(name: "ctl", arg: 1, scope: !1625, file: !26, line: 761, type: !6)
!1629 = !DILocation(line: 0, scope: !1625)
!1630 = !{!"1118"}
!1631 = !DILocation(line: 763, column: 13, scope: !1625)
!1632 = !{!"1119"}
!1633 = !DILocation(line: 763, column: 2, scope: !1625)
!1634 = !{!"1120"}
!1635 = distinct !DISubprogram(name: "run_wrapper", scope: !68, file: !68, line: 3, type: !1161, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !18)
!1636 = !DILocalVariable(name: "key", arg: 1, scope: !1635, file: !68, line: 3, type: !11)
!1637 = !DILocation(line: 0, scope: !1635)
!1638 = !{!"1121"}
!1639 = !DILocalVariable(name: "iv", arg: 2, scope: !1635, file: !68, line: 3, type: !11)
!1640 = !{!"1122"}
!1641 = !DILocalVariable(name: "data", arg: 3, scope: !1635, file: !68, line: 4, type: !13)
!1642 = !{!"1123"}
!1643 = !DILocalVariable(name: "len", arg: 4, scope: !1635, file: !68, line: 4, type: !14)
!1644 = !{!"1124"}
!1645 = !DILocalVariable(name: "aad", arg: 5, scope: !1635, file: !68, line: 4, type: !11)
!1646 = !{!"1125"}
!1647 = !DILocalVariable(name: "aad_len", arg: 6, scope: !1635, file: !68, line: 4, type: !14)
!1648 = !{!"1126"}
!1649 = !DILocalVariable(name: "tag", arg: 7, scope: !1635, file: !68, line: 5, type: !13)
!1650 = !{!"1127"}
!1651 = !DILocalVariable(name: "ichacha", arg: 8, scope: !1635, file: !68, line: 5, type: !1163)
!1652 = !{!"1128"}
!1653 = !DILocalVariable(name: "encrypt", arg: 9, scope: !1635, file: !68, line: 5, type: !217)
!1654 = !{!"1129"}
!1655 = !DILocation(line: 6, column: 12, scope: !1635)
!1656 = !{!"1130"}
!1657 = !DILocation(line: 6, column: 2, scope: !1635)
!1658 = !{!"1131"}
!1659 = !DILocation(line: 7, column: 12, scope: !1635)
!1660 = !{!"1132"}
!1661 = !DILocation(line: 7, column: 2, scope: !1635)
!1662 = !{!"1133"}
!1663 = !DILocation(line: 8, column: 12, scope: !1635)
!1664 = !{!"1134"}
!1665 = !DILocation(line: 8, column: 2, scope: !1635)
!1666 = !{!"1135"}
!1667 = !DILocation(line: 9, column: 12, scope: !1635)
!1668 = !{!"1136"}
!1669 = !DILocation(line: 9, column: 2, scope: !1635)
!1670 = !{!"1137"}
!1671 = !DILocation(line: 10, column: 12, scope: !1635)
!1672 = !{!"1138"}
!1673 = !DILocation(line: 10, column: 2, scope: !1635)
!1674 = !{!"1139"}
!1675 = !DILocation(line: 11, column: 12, scope: !1635)
!1676 = !{!"1140"}
!1677 = !DILocation(line: 11, column: 2, scope: !1635)
!1678 = !{!"1141"}
!1679 = !DILocation(line: 12, column: 12, scope: !1635)
!1680 = !{!"1142"}
!1681 = !DILocation(line: 12, column: 2, scope: !1635)
!1682 = !{!"1143"}
!1683 = !DILocation(line: 13, column: 12, scope: !1635)
!1684 = !{!"1144"}
!1685 = !DILocation(line: 13, column: 2, scope: !1635)
!1686 = !{!"1145"}
!1687 = !DILocation(line: 16, column: 12, scope: !1635)
!1688 = !{!"1146"}
!1689 = !DILocation(line: 16, column: 2, scope: !1635)
!1690 = !{!"1147"}
!1691 = !DILocation(line: 17, column: 12, scope: !1635)
!1692 = !{!"1148"}
!1693 = !DILocation(line: 17, column: 2, scope: !1635)
!1694 = !{!"1149"}
!1695 = !DILocation(line: 18, column: 12, scope: !1635)
!1696 = !{!"1150"}
!1697 = !DILocation(line: 18, column: 2, scope: !1635)
!1698 = !{!"1151"}
!1699 = !DILocation(line: 21, column: 2, scope: !1635)
!1700 = !{!"1152"}
!1701 = !DILocation(line: 22, column: 1, scope: !1635)
!1702 = !{!"1153"}
!1703 = distinct !DISubprogram(name: "run_wrapper_t", scope: !68, file: !68, line: 32, type: !1704, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !67, retainedNodes: !18)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null}
!1706 = !DILocation(line: 34, column: 19, scope: !1703)
!1707 = !{!"1154"}
!1708 = !DILocalVariable(name: "key", scope: !1703, file: !68, line: 34, type: !11)
!1709 = !DILocation(line: 0, scope: !1703)
!1710 = !{!"1155"}
!1711 = !DILocation(line: 35, column: 19, scope: !1703)
!1712 = !{!"1156"}
!1713 = !DILocalVariable(name: "iv", scope: !1703, file: !68, line: 35, type: !11)
!1714 = !{!"1157"}
!1715 = !DILocation(line: 37, column: 15, scope: !1703)
!1716 = !{!"1158"}
!1717 = !DILocalVariable(name: "data", scope: !1703, file: !68, line: 37, type: !13)
!1718 = !{!"1159"}
!1719 = !DILocalVariable(name: "len", scope: !1703, file: !68, line: 38, type: !14)
!1720 = !{!"1160"}
!1721 = !DILocation(line: 39, column: 22, scope: !1703)
!1722 = !{!"1161"}
!1723 = !DILocalVariable(name: "aad", scope: !1703, file: !68, line: 39, type: !11)
!1724 = !{!"1162"}
!1725 = !DILocalVariable(name: "aad_len", scope: !1703, file: !68, line: 40, type: !14)
!1726 = !{!"1163"}
!1727 = !DILocation(line: 41, column: 14, scope: !1703)
!1728 = !{!"1164"}
!1729 = !DILocalVariable(name: "tag", scope: !1703, file: !68, line: 41, type: !13)
!1730 = !{!"1165"}
!1731 = !DILocalVariable(name: "encrypt", scope: !1703, file: !68, line: 42, type: !217)
!1732 = !{!"1166"}
!1733 = !DILocation(line: 44, column: 2, scope: !1703)
!1734 = !{!"1167"}
!1735 = !DILocation(line: 45, column: 1, scope: !1703)
!1736 = !{!"1168"}
