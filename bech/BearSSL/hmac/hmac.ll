; ModuleID = 'hmac.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_hmac_context = type { %union.br_hash_compat_context, [64 x i8], i64 }
%union.br_hash_compat_context = type { %struct.br_sha384_context }
%struct.br_sha384_context = type { %struct.br_hash_class_*, [128 x i8], i64, [8 x i64] }
%struct.br_hash_class_ = type { i64, i32, void (%struct.br_hash_class_**)*, void (%struct.br_hash_class_**, i8*, i64)*, void (%struct.br_hash_class_**, i8*)*, i64 (%struct.br_hash_class_**, i8*)*, void (%struct.br_hash_class_**, i8*, i64)* }
%struct.smack_value = type { i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @hmac_wrapper(%struct.br_hmac_context* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5) #0 !dbg !23 {
  call void @llvm.dbg.value(metadata %struct.br_hmac_context* %0, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i8* %1, metadata !136, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i64 %2, metadata !137, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i64 %3, metadata !138, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i64 %4, metadata !139, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i8* %5, metadata !140, metadata !DIExpression()), !dbg !135
  %7 = call %struct.smack_value* (%struct.br_hmac_context*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_hmac_context*, ...)*)(%struct.br_hmac_context* %0), !dbg !141
  call void @public_in(%struct.smack_value* %7), !dbg !142
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !143
  call void @public_in(%struct.smack_value* %8), !dbg !144
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !145
  call void @public_in(%struct.smack_value* %9), !dbg !146
  %10 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !147
  call void @public_in(%struct.smack_value* %10), !dbg !148
  %11 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %4), !dbg !149
  call void @public_in(%struct.smack_value* %11), !dbg !150
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %5), !dbg !151
  call void @public_in(%struct.smack_value* %12), !dbg !152
  %13 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 0, !dbg !153
  %14 = call %struct.smack_value* (%union.br_hash_compat_context*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%union.br_hash_compat_context*, ...)*)(%union.br_hash_compat_context* byval(%union.br_hash_compat_context) align 8 %13), !dbg !154
  call void @public_in(%struct.smack_value* %14), !dbg !155
  %15 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 2, !dbg !156
  %16 = load i64, i64* %15, align 8, !dbg !156
  %17 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %16), !dbg !157
  call void @public_in(%struct.smack_value* %17), !dbg !158
  %18 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 1, !dbg !159
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0, !dbg !160
  %20 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %19), !dbg !161
  call void @public_in(%struct.smack_value* %20), !dbg !162
  %21 = call %struct.smack_value* @__SMACK_values(i8* %5, i32 64), !dbg !163
  call void @public_in(%struct.smack_value* %21), !dbg !164
  %22 = call i64 @br_hmac_outCT(%struct.br_hmac_context* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5), !dbg !165
  ret void, !dbg !166
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vfct_tmp(i8* %0, %struct.br_hmac_context* %1, i8* %2, i64 %3, i64 %4, i64 %5, i8* %6) #0 !dbg !167 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata %struct.br_hmac_context* %1, metadata !173, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i8* %2, metadata !174, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %3, metadata !175, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %4, metadata !176, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %5, metadata !177, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i8* %6, metadata !178, metadata !DIExpression()), !dbg !172
  %8 = call i64 @br_hmac_outCT(%struct.br_hmac_context* %1, i8* %2, i64 %3, i64 %4, i64 %5, i8* %6), !dbg !179
  ret void, !dbg !180
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hmac_wrapper_t() #0 !dbg !181 {
  %1 = alloca %struct.br_hmac_context, align 8
  call void @llvm.dbg.declare(metadata %struct.br_hmac_context* %1, metadata !184, metadata !DIExpression()), !dbg !185
  call void (%struct.br_hmac_context*, ...) @getctx(%struct.br_hmac_context* sret(%struct.br_hmac_context) align 8 %1), !dbg !186
  call void @llvm.dbg.value(metadata %struct.br_hmac_context* %1, metadata !187, metadata !DIExpression()), !dbg !188
  %2 = call i8* (...) @getvoud(), !dbg !189
  call void @llvm.dbg.value(metadata i8* %2, metadata !190, metadata !DIExpression()), !dbg !188
  %3 = call i64 (...) @getlen(), !dbg !191
  call void @llvm.dbg.value(metadata i64 %3, metadata !192, metadata !DIExpression()), !dbg !188
  %4 = call i64 (...) @getlen(), !dbg !193
  call void @llvm.dbg.value(metadata i64 %4, metadata !194, metadata !DIExpression()), !dbg !188
  %5 = call i64 (...) @getlen(), !dbg !195
  call void @llvm.dbg.value(metadata i64 %5, metadata !196, metadata !DIExpression()), !dbg !188
  %6 = call i8* (...) @getvoud2(), !dbg !197
  call void @llvm.dbg.value(metadata i8* %6, metadata !198, metadata !DIExpression()), !dbg !188
  %7 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %1, i32 0, i32 1, !dbg !199
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !200
  call void @llvm.dbg.value(metadata i8* %8, metadata !201, metadata !DIExpression()), !dbg !188
  call void @vfct_tmp(i8* %8, %struct.br_hmac_context* %1, i8* %2, i64 %3, i64 %4, i64 %5, i8* %6), !dbg !202
  ret void, !dbg !203
}

declare dso_local void @getctx(%struct.br_hmac_context* sret(%struct.br_hmac_context) align 8, ...) #2

declare dso_local i8* @getvoud(...) #2

declare dso_local i64 @getlen(...) #2

declare dso_local i8* @getvoud2(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @br_hmac_outCT(%struct.br_hmac_context* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5) #0 !dbg !204 {
  %7 = alloca %union.br_hash_compat_context, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca [64 x i8], align 16
  %10 = alloca [1 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.br_hmac_context* %0, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8* %1, metadata !296, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 %2, metadata !297, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 %3, metadata !298, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 %4, metadata !299, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i8* %5, metadata !300, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata %union.br_hash_compat_context* %7, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata [64 x i8]* %8, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !305, metadata !DIExpression()), !dbg !306
  %11 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 0, !dbg !307
  %12 = bitcast %union.br_hash_compat_context* %7 to i8*, !dbg !307
  %13 = bitcast %union.br_hash_compat_context* %11 to i8*, !dbg !307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 208, i1 false), !dbg !307
  %14 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !308
  %15 = load %struct.br_hash_class_*, %struct.br_hash_class_** %14, align 8, !dbg !308
  call void @llvm.dbg.value(metadata %struct.br_hash_class_* %15, metadata !309, metadata !DIExpression()), !dbg !295
  %16 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 1, !dbg !310
  %17 = load i32, i32* %16, align 8, !dbg !310
  %18 = and i32 %17, 1073741824, !dbg !311
  %19 = icmp ne i32 %18, 0, !dbg !312
  %20 = zext i1 %19 to i32, !dbg !312
  call void @llvm.dbg.value(metadata i32 %20, metadata !313, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32 9, metadata !315, metadata !DIExpression()), !dbg !295
  %21 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 1, !dbg !316
  %22 = load i32, i32* %21, align 8, !dbg !316
  %23 = and i32 %22, 536870912, !dbg !318
  %24 = icmp ne i32 %23, 0, !dbg !318
  br i1 %24, label %25, label %27, !dbg !319

25:                                               ; preds = %6
  %26 = add i32 9, 8, !dbg !320
  call void @llvm.dbg.value(metadata i32 %26, metadata !315, metadata !DIExpression()), !dbg !295
  br label %27, !dbg !322

27:                                               ; preds = %25, %6
  %.06 = phi i32 [ %26, %25 ], [ 9, %6 ], !dbg !295
  call void @llvm.dbg.value(metadata i32 %.06, metadata !315, metadata !DIExpression()), !dbg !295
  %28 = call i64 @block_size(%struct.br_hash_class_* %15), !dbg !323
  %29 = trunc i64 %28 to i32, !dbg !323
  call void @llvm.dbg.value(metadata i32 %29, metadata !324, metadata !DIExpression()), !dbg !295
  %30 = call i64 @hash_size(%struct.br_hash_class_* %15), !dbg !325
  call void @llvm.dbg.value(metadata i64 %30, metadata !326, metadata !DIExpression()), !dbg !295
  %31 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 5, !dbg !327
  %32 = load i64 (%struct.br_hash_class_**, i8*)*, i64 (%struct.br_hash_class_**, i8*)** %31, align 8, !dbg !327
  %33 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !328
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0, !dbg !329
  %35 = call i64 %32(%struct.br_hash_class_** %33, i8* %34), !dbg !330
  call void @llvm.dbg.value(metadata i64 %35, metadata !331, metadata !DIExpression()), !dbg !295
  %36 = add i64 %35, %2, !dbg !332
  %37 = shl i64 %36, 3, !dbg !333
  call void @llvm.dbg.value(metadata i64 %37, metadata !334, metadata !DIExpression()), !dbg !295
  %38 = add i64 %35, %3, !dbg !335
  %39 = sub i32 %29, 1, !dbg !336
  %40 = zext i32 %39 to i64, !dbg !337
  %41 = xor i64 %40, -1, !dbg !338
  %42 = and i64 %38, %41, !dbg !339
  call void @llvm.dbg.value(metadata i64 %42, metadata !340, metadata !DIExpression()), !dbg !295
  %43 = icmp ugt i64 %42, %35, !dbg !341
  br i1 %43, label %44, label %52, !dbg !343

44:                                               ; preds = %27
  %45 = sub i64 %42, %35, !dbg !344
  call void @llvm.dbg.value(metadata i64 %45, metadata !346, metadata !DIExpression()), !dbg !347
  %46 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 3, !dbg !348
  %47 = load void (%struct.br_hash_class_**, i8*, i64)*, void (%struct.br_hash_class_**, i8*, i64)** %46, align 8, !dbg !348
  %48 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !349
  call void %47(%struct.br_hash_class_** %48, i8* %1, i64 %45), !dbg !350
  %49 = getelementptr inbounds i8, i8* %1, i64 %45, !dbg !351
  call void @llvm.dbg.value(metadata i8* %49, metadata !296, metadata !DIExpression()), !dbg !295
  %50 = sub i64 %2, %45, !dbg !352
  call void @llvm.dbg.value(metadata i64 %50, metadata !297, metadata !DIExpression()), !dbg !295
  %51 = sub i64 %4, %45, !dbg !353
  call void @llvm.dbg.value(metadata i64 %51, metadata !299, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 %42, metadata !331, metadata !DIExpression()), !dbg !295
  br label %52, !dbg !354

52:                                               ; preds = %44, %27
  %.04 = phi i64 [ %51, %44 ], [ %4, %27 ]
  %.03 = phi i64 [ %42, %44 ], [ %35, %27 ], !dbg !295
  %.02 = phi i64 [ %50, %44 ], [ %2, %27 ]
  %.01 = phi i8* [ %49, %44 ], [ %1, %27 ]
  call void @llvm.dbg.value(metadata i8* %.01, metadata !296, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 %.02, metadata !297, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 %.03, metadata !331, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i64 %.04, metadata !299, metadata !DIExpression()), !dbg !295
  %53 = trunc i64 %.03 to i32, !dbg !355
  %54 = sub i32 %29, 1, !dbg !356
  %55 = and i32 %53, %54, !dbg !357
  call void @llvm.dbg.value(metadata i32 %55, metadata !358, metadata !DIExpression()), !dbg !295
  %56 = trunc i64 %.02 to i32, !dbg !359
  %57 = add i32 %55, %56, !dbg !360
  %58 = add i32 %57, %.06, !dbg !361
  %59 = add i32 %58, %29, !dbg !362
  %60 = sub i32 %59, 1, !dbg !363
  %61 = sub i32 %29, 1, !dbg !364
  %62 = xor i32 %61, -1, !dbg !365
  %63 = and i32 %60, %62, !dbg !366
  %64 = sub i32 %63, 1, !dbg !367
  %65 = sub i32 %64, %55, !dbg !368
  call void @llvm.dbg.value(metadata i32 %65, metadata !369, metadata !DIExpression()), !dbg !295
  %66 = sub i32 %65, 7, !dbg !370
  call void @llvm.dbg.value(metadata i32 %66, metadata !371, metadata !DIExpression()), !dbg !295
  %67 = trunc i64 %.04 to i32, !dbg !372
  %68 = add i32 %55, %67, !dbg !373
  %69 = add i32 %68, %.06, !dbg !374
  %70 = add i32 %69, %29, !dbg !375
  %71 = sub i32 %70, 1, !dbg !376
  %72 = sub i32 %29, 1, !dbg !377
  %73 = xor i32 %72, -1, !dbg !378
  %74 = and i32 %71, %73, !dbg !379
  %75 = sub i32 %74, %55, !dbg !380
  call void @llvm.dbg.value(metadata i32 %75, metadata !381, metadata !DIExpression()), !dbg !295
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !382
  call void @llvm.memset.p0i8.i64(i8* align 16 %76, i8 0, i64 64, i1 false), !dbg !382
  call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !295
  br label %77, !dbg !384

77:                                               ; preds = %140, %52
  %.05 = phi i32 [ 0, %52 ], [ %141, %140 ], !dbg !386
  call void @llvm.dbg.value(metadata i32 %.05, metadata !383, metadata !DIExpression()), !dbg !295
  %78 = icmp ult i32 %.05, %75, !dbg !387
  br i1 %78, label %79, label %142, !dbg !389

79:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata [1 x i8]* %10, metadata !390, metadata !DIExpression()), !dbg !395
  %80 = zext i32 %.05 to i64, !dbg !396
  %81 = icmp ult i64 %80, %.04, !dbg !397
  br i1 %81, label %82, label %87, !dbg !398

82:                                               ; preds = %79
  %83 = zext i32 %.05 to i64, !dbg !399
  %84 = getelementptr inbounds i8, i8* %.01, i64 %83, !dbg !399
  %85 = load i8, i8* %84, align 1, !dbg !399
  %86 = zext i8 %85 to i32, !dbg !399
  br label %88, !dbg !398

87:                                               ; preds = %79
  br label %88, !dbg !398

88:                                               ; preds = %87, %82
  %89 = phi i32 [ %86, %82 ], [ 0, %87 ], !dbg !398
  call void @llvm.dbg.value(metadata i32 %89, metadata !400, metadata !DIExpression()), !dbg !401
  %90 = add i32 %55, %.05, !dbg !402
  %91 = sub i32 %29, 1, !dbg !403
  %92 = and i32 %90, %91, !dbg !404
  call void @llvm.dbg.value(metadata i32 %92, metadata !405, metadata !DIExpression()), !dbg !401
  %93 = sub i32 %29, 8, !dbg !406
  %94 = icmp uge i32 %92, %93, !dbg !408
  br i1 %94, label %95, label %111, !dbg !409

95:                                               ; preds = %88
  %96 = sub i32 %29, 8, !dbg !410
  %97 = sub i32 %92, %96, !dbg !412
  %98 = shl i32 %97, 3, !dbg !413
  call void @llvm.dbg.value(metadata i32 %98, metadata !414, metadata !DIExpression()), !dbg !415
  %99 = icmp ne i32 %20, 0, !dbg !416
  br i1 %99, label %100, label %105, !dbg !418

100:                                              ; preds = %95
  %101 = sub i32 56, %98, !dbg !419
  %102 = zext i32 %101 to i64, !dbg !421
  %103 = lshr i64 %37, %102, !dbg !421
  %104 = trunc i64 %103 to i32, !dbg !422
  call void @llvm.dbg.value(metadata i32 %104, metadata !423, metadata !DIExpression()), !dbg !401
  br label %109, !dbg !424

105:                                              ; preds = %95
  %106 = zext i32 %98 to i64, !dbg !425
  %107 = lshr i64 %37, %106, !dbg !425
  %108 = trunc i64 %107 to i32, !dbg !427
  call void @llvm.dbg.value(metadata i32 %108, metadata !423, metadata !DIExpression()), !dbg !401
  br label %109

109:                                              ; preds = %105, %100
  %.0 = phi i32 [ %104, %100 ], [ %108, %105 ], !dbg !428
  call void @llvm.dbg.value(metadata i32 %.0, metadata !423, metadata !DIExpression()), !dbg !401
  %110 = and i32 %.0, 255, !dbg !429
  call void @llvm.dbg.value(metadata i32 %110, metadata !423, metadata !DIExpression()), !dbg !401
  br label %112, !dbg !430

111:                                              ; preds = %88
  call void @llvm.dbg.value(metadata i32 0, metadata !423, metadata !DIExpression()), !dbg !401
  br label %112

112:                                              ; preds = %111, %109
  %.1 = phi i32 [ %110, %109 ], [ 0, %111 ], !dbg !431
  call void @llvm.dbg.value(metadata i32 %.1, metadata !423, metadata !DIExpression()), !dbg !401
  %113 = trunc i64 %.02 to i32, !dbg !432
  %114 = call i32 @EQ(i32 %.05, i32 %113), !dbg !433
  %115 = call i32 @MUX(i32 %114, i32 128, i32 %89), !dbg !434
  call void @llvm.dbg.value(metadata i32 %115, metadata !435, metadata !DIExpression()), !dbg !401
  %116 = call i32 @GT(i32 %66, i32 %.05), !dbg !436
  %117 = call i32 @MUX(i32 %116, i32 0, i32 %.1), !dbg !437
  call void @llvm.dbg.value(metadata i32 %117, metadata !438, metadata !DIExpression()), !dbg !401
  %118 = trunc i64 %.02 to i32, !dbg !439
  %119 = call i32 @GT(i32 %.05, i32 %118), !dbg !439
  %120 = call i32 @NOT(i32 %119), !dbg !439
  %121 = call i32 @MUX(i32 %120, i32 %115, i32 %117), !dbg !440
  %122 = trunc i32 %121 to i8, !dbg !440
  %123 = getelementptr inbounds [1 x i8], [1 x i8]* %10, i64 0, i64 0, !dbg !441
  store i8 %122, i8* %123, align 1, !dbg !442
  %124 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 3, !dbg !443
  %125 = load void (%struct.br_hash_class_**, i8*, i64)*, void (%struct.br_hash_class_**, i8*, i64)** %124, align 8, !dbg !443
  %126 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !444
  %127 = getelementptr inbounds [1 x i8], [1 x i8]* %10, i64 0, i64 0, !dbg !445
  call void %125(%struct.br_hash_class_** %126, i8* %127, i64 1), !dbg !446
  %128 = sub i32 %29, 1, !dbg !447
  %129 = icmp eq i32 %92, %128, !dbg !449
  br i1 %129, label %130, label %139, !dbg !450

130:                                              ; preds = %112
  %131 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 5, !dbg !451
  %132 = load i64 (%struct.br_hash_class_**, i8*)*, i64 (%struct.br_hash_class_**, i8*)** %131, align 8, !dbg !451
  %133 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !453
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0, !dbg !454
  %135 = call i64 %132(%struct.br_hash_class_** %133, i8* %134), !dbg !455
  %136 = call i32 @EQ(i32 %.05, i32 %65), !dbg !456
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !457
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0, !dbg !458
  call void @br_ccopy(i32 %136, i8* %137, i8* %138, i64 %30), !dbg !459
  br label %139, !dbg !460

139:                                              ; preds = %130, %112
  br label %140, !dbg !461

140:                                              ; preds = %139
  %141 = add i32 %.05, 1, !dbg !462
  call void @llvm.dbg.value(metadata i32 %141, metadata !383, metadata !DIExpression()), !dbg !295
  br label %77, !dbg !463, !llvm.loop !464

142:                                              ; preds = %77
  %143 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 2, !dbg !467
  %144 = load void (%struct.br_hash_class_**)*, void (%struct.br_hash_class_**)** %143, align 8, !dbg !467
  %145 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !468
  call void %144(%struct.br_hash_class_** %145), !dbg !469
  %146 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 6, !dbg !470
  %147 = load void (%struct.br_hash_class_**, i8*, i64)*, void (%struct.br_hash_class_**, i8*, i64)** %146, align 8, !dbg !470
  %148 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !471
  %149 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 1, !dbg !472
  %150 = getelementptr inbounds [64 x i8], [64 x i8]* %149, i64 0, i64 0, !dbg !473
  %151 = zext i32 %29 to i64, !dbg !474
  call void %147(%struct.br_hash_class_** %148, i8* %150, i64 %151), !dbg !475
  %152 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 3, !dbg !476
  %153 = load void (%struct.br_hash_class_**, i8*, i64)*, void (%struct.br_hash_class_**, i8*, i64)** %152, align 8, !dbg !476
  %154 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !477
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !478
  call void %153(%struct.br_hash_class_** %154, i8* %155, i64 %30), !dbg !479
  %156 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 4, !dbg !480
  %157 = load void (%struct.br_hash_class_**, i8*)*, void (%struct.br_hash_class_**, i8*)** %156, align 8, !dbg !480
  %158 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !481
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !482
  call void %157(%struct.br_hash_class_** %158, i8* %159), !dbg !483
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !484
  %161 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 2, !dbg !485
  %162 = load i64, i64* %161, align 8, !dbg !485
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 16 %160, i64 %162, i1 false), !dbg !484
  %163 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 2, !dbg !486
  %164 = load i64, i64* %163, align 8, !dbg !486
  ret i64 %164, !dbg !487
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @block_size(%struct.br_hash_class_* %0) #0 !dbg !488 {
  call void @llvm.dbg.value(metadata %struct.br_hash_class_* %0, metadata !491, metadata !DIExpression()), !dbg !492
  %2 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %0, i32 0, i32 1, !dbg !493
  %3 = load i32, i32* %2, align 8, !dbg !493
  %4 = lshr i32 %3, 23, !dbg !494
  %5 = and i32 %4, 15, !dbg !495
  call void @llvm.dbg.value(metadata i32 %5, metadata !496, metadata !DIExpression()), !dbg !492
  %6 = zext i32 %5 to i64, !dbg !497
  %7 = shl i64 1, %6, !dbg !497
  ret i64 %7, !dbg !498
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @hash_size(%struct.br_hash_class_* %0) #0 !dbg !499 {
  call void @llvm.dbg.value(metadata %struct.br_hash_class_* %0, metadata !500, metadata !DIExpression()), !dbg !501
  %2 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %0, i32 0, i32 1, !dbg !502
  %3 = load i32, i32* %2, align 8, !dbg !502
  %4 = lshr i32 %3, 8, !dbg !503
  %5 = and i32 %4, 127, !dbg !504
  %6 = zext i32 %5 to i64, !dbg !505
  ret i64 %6, !dbg !506
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !507 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata i32 %1, metadata !513, metadata !DIExpression()), !dbg !512
  %3 = xor i32 %0, %1, !dbg !514
  call void @llvm.dbg.value(metadata i32 %3, metadata !515, metadata !DIExpression()), !dbg !512
  %4 = sub i32 0, %3, !dbg !516
  %5 = or i32 %3, %4, !dbg !517
  %6 = lshr i32 %5, 31, !dbg !518
  %7 = call i32 @NOT(i32 %6), !dbg !519
  ret i32 %7, !dbg !520
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !521 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i32 %1, metadata !526, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i32 %2, metadata !527, metadata !DIExpression()), !dbg !525
  %4 = sub i32 0, %0, !dbg !528
  %5 = xor i32 %1, %2, !dbg !529
  %6 = and i32 %4, %5, !dbg !530
  %7 = xor i32 %2, %6, !dbg !531
  ret i32 %7, !dbg !532
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !533 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !534, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i32 %1, metadata !536, metadata !DIExpression()), !dbg !535
  %3 = sub i32 %1, %0, !dbg !537
  call void @llvm.dbg.value(metadata i32 %3, metadata !538, metadata !DIExpression()), !dbg !535
  %4 = xor i32 %0, %1, !dbg !539
  %5 = xor i32 %0, %3, !dbg !540
  %6 = and i32 %4, %5, !dbg !541
  %7 = xor i32 %3, %6, !dbg !542
  %8 = lshr i32 %7, 31, !dbg !543
  ret i32 %8, !dbg !544
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !545 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !548, metadata !DIExpression()), !dbg !549
  %2 = xor i32 %0, 1, !dbg !550
  ret i32 %2, !dbg !551
}

declare dso_local void @br_ccopy(i32, i8*, i8*, i64) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0, !3}
!llvm.ident = !{!19, !19}
!llvm.module.flags = !{!20, !21, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "hmac.c", directory: "/home/luwei/bech-back/BearSSL/hmac")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "../BearSSL/src/mac/hmac_ct.c", directory: "/home/luwei/bech-back/BearSSL/hmac")
!5 = !{!6, !11, !14, !16, !10}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !13)
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 46, baseType: !13)
!15 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!20 = !{i32 7, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = distinct !DISubprogram(name: "hmac_wrapper", scope: !1, file: !1, line: 3, type: !24, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !54, !14, !14, !14, !62}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_hmac_context", file: !29, line: 116, baseType: !30)
!29 = !DIFile(filename: "../BearSSL/inc/bearssl_hmac.h", directory: "/home/luwei/bech-back/BearSSL/hmac")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 110, size: 2240, elements: !31)
!31 = !{!32, !132, !133}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dig", scope: !30, file: !29, line: 112, baseType: !33, size: 1664)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_hash_compat_context", file: !34, line: 1086, baseType: !35)
!34 = !DIFile(filename: "../BearSSL/inc/bearssl_hash.h", directory: "/home/luwei/bech-back/BearSSL/hmac")
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !34, line: 1077, size: 1664, elements: !36)
!36 = !{!37, !71, !85, !96, !107, !109, !121, !123}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !35, file: !34, line: 1078, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_hash_class", file: !34, line: 221, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_hash_class_", file: !34, line: 222, size: 448, elements: !42)
!42 = !{!43, !44, !45, !50, !56, !63, !67}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !41, file: !34, line: 227, baseType: !14, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !41, file: !34, line: 257, baseType: !6, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !41, file: !34, line: 269, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !41, file: !34, line: 285, baseType: !51, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !49, !54, !14}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !41, file: !34, line: 300, baseType: !57, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !62}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !41, file: !34, line: 316, baseType: !64, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!11, !60, !62}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "set_state", scope: !41, file: !34, line: 327, baseType: !68, size: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !49, !54, !11}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !35, file: !34, line: 1079, baseType: !72, size: 768)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_md5_context", file: !34, line: 399, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 389, size: 768, elements: !74)
!74 = !{!75, !76, !80, !81}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !73, file: !34, line: 393, baseType: !38, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !73, file: !34, line: 395, baseType: !77, size: 512, offset: 64)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !73, file: !34, line: 396, baseType: !11, size: 64, offset: 576)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !73, file: !34, line: 397, baseType: !82, size: 128, offset: 640)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 4)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !35, file: !34, line: 1080, baseType: !86, size: 832)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha1_context", file: !34, line: 494, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 484, size: 832, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !87, file: !34, line: 488, baseType: !38, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !87, file: !34, line: 490, baseType: !77, size: 512, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !87, file: !34, line: 491, baseType: !11, size: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !87, file: !34, line: 492, baseType: !93, size: 160, offset: 640)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 5)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "sha224", scope: !35, file: !34, line: 1081, baseType: !97, size: 896)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha224_context", file: !34, line: 589, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 579, size: 896, elements: !99)
!99 = !{!100, !101, !102, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !98, file: !34, line: 583, baseType: !38, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !98, file: !34, line: 585, baseType: !77, size: 512, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !98, file: !34, line: 586, baseType: !11, size: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !98, file: !34, line: 587, baseType: !104, size: 256, offset: 640)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 8)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !35, file: !34, line: 1082, baseType: !108, size: 896)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha256_context", file: !34, line: 683, baseType: !97)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sha384", scope: !35, file: !34, line: 1083, baseType: !110, size: 1664)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha384_context", file: !34, line: 792, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 782, size: 1664, elements: !112)
!112 = !{!113, !114, !118, !119}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !111, file: !34, line: 786, baseType: !38, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !111, file: !34, line: 788, baseType: !115, size: 1024, offset: 64)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !111, file: !34, line: 789, baseType: !11, size: 64, offset: 1088)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !111, file: !34, line: 790, baseType: !120, size: 512, offset: 1152)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !105)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sha512", scope: !35, file: !34, line: 1084, baseType: !122, size: 1664)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha512_context", file: !34, line: 886, baseType: !110)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "md5sha1", scope: !35, file: !34, line: 1085, baseType: !124, size: 960)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_md5sha1_context", file: !34, line: 1006, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 995, size: 960, elements: !126)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !125, file: !34, line: 999, baseType: !38, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !125, file: !34, line: 1001, baseType: !77, size: 512, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !125, file: !34, line: 1002, baseType: !11, size: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val_md5", scope: !125, file: !34, line: 1003, baseType: !82, size: 128, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "val_sha1", scope: !125, file: !34, line: 1004, baseType: !93, size: 160, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "kso", scope: !30, file: !29, line: 113, baseType: !77, size: 512, offset: 1664)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !30, file: !29, line: 114, baseType: !14, size: 64, offset: 2176)
!134 = !DILocalVariable(name: "ctx", arg: 1, scope: !23, file: !1, line: 3, type: !26)
!135 = !DILocation(line: 0, scope: !23)
!136 = !DILocalVariable(name: "data", arg: 2, scope: !23, file: !1, line: 4, type: !54)
!137 = !DILocalVariable(name: "len", arg: 3, scope: !23, file: !1, line: 4, type: !14)
!138 = !DILocalVariable(name: "min_len", arg: 4, scope: !23, file: !1, line: 4, type: !14)
!139 = !DILocalVariable(name: "max_len", arg: 5, scope: !23, file: !1, line: 4, type: !14)
!140 = !DILocalVariable(name: "out", arg: 6, scope: !23, file: !1, line: 5, type: !62)
!141 = !DILocation(line: 6, column: 12, scope: !23)
!142 = !DILocation(line: 6, column: 2, scope: !23)
!143 = !DILocation(line: 7, column: 12, scope: !23)
!144 = !DILocation(line: 7, column: 2, scope: !23)
!145 = !DILocation(line: 8, column: 12, scope: !23)
!146 = !DILocation(line: 8, column: 2, scope: !23)
!147 = !DILocation(line: 9, column: 12, scope: !23)
!148 = !DILocation(line: 9, column: 2, scope: !23)
!149 = !DILocation(line: 10, column: 12, scope: !23)
!150 = !DILocation(line: 10, column: 2, scope: !23)
!151 = !DILocation(line: 11, column: 12, scope: !23)
!152 = !DILocation(line: 11, column: 2, scope: !23)
!153 = !DILocation(line: 13, column: 31, scope: !23)
!154 = !DILocation(line: 13, column: 12, scope: !23)
!155 = !DILocation(line: 13, column: 2, scope: !23)
!156 = !DILocation(line: 14, column: 31, scope: !23)
!157 = !DILocation(line: 14, column: 12, scope: !23)
!158 = !DILocation(line: 14, column: 2, scope: !23)
!159 = !DILocation(line: 15, column: 31, scope: !23)
!160 = !DILocation(line: 15, column: 26, scope: !23)
!161 = !DILocation(line: 15, column: 12, scope: !23)
!162 = !DILocation(line: 15, column: 2, scope: !23)
!163 = !DILocation(line: 26, column: 12, scope: !23)
!164 = !DILocation(line: 26, column: 2, scope: !23)
!165 = !DILocation(line: 28, column: 2, scope: !23)
!166 = !DILocation(line: 30, column: 1, scope: !23)
!167 = distinct !DISubprogram(name: "vfct_tmp", scope: !1, file: !1, line: 33, type: !168, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !170, !26, !54, !14, !14, !14, !62}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!171 = !DILocalVariable(name: "k", arg: 1, scope: !167, file: !1, line: 33, type: !170)
!172 = !DILocation(line: 0, scope: !167)
!173 = !DILocalVariable(name: "ctx", arg: 2, scope: !167, file: !1, line: 33, type: !26)
!174 = !DILocalVariable(name: "data", arg: 3, scope: !167, file: !1, line: 34, type: !54)
!175 = !DILocalVariable(name: "len", arg: 4, scope: !167, file: !1, line: 34, type: !14)
!176 = !DILocalVariable(name: "min_len", arg: 5, scope: !167, file: !1, line: 34, type: !14)
!177 = !DILocalVariable(name: "max_len", arg: 6, scope: !167, file: !1, line: 34, type: !14)
!178 = !DILocalVariable(name: "out", arg: 7, scope: !167, file: !1, line: 35, type: !62)
!179 = !DILocation(line: 36, column: 2, scope: !167)
!180 = !DILocation(line: 38, column: 1, scope: !167)
!181 = distinct !DISubprogram(name: "hmac_wrapper_t", scope: !1, file: !1, line: 45, type: !182, scopeLine: 45, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!182 = !DISubroutineType(types: !183)
!183 = !{null}
!184 = !DILocalVariable(name: "cctx", scope: !181, file: !1, line: 46, type: !28)
!185 = !DILocation(line: 46, column: 18, scope: !181)
!186 = !DILocation(line: 46, column: 25, scope: !181)
!187 = !DILocalVariable(name: "ctx", scope: !181, file: !1, line: 47, type: !26)
!188 = !DILocation(line: 0, scope: !181)
!189 = !DILocation(line: 48, column: 21, scope: !181)
!190 = !DILocalVariable(name: "data", scope: !181, file: !1, line: 48, type: !54)
!191 = !DILocation(line: 49, column: 15, scope: !181)
!192 = !DILocalVariable(name: "len", scope: !181, file: !1, line: 49, type: !14)
!193 = !DILocation(line: 50, column: 19, scope: !181)
!194 = !DILocalVariable(name: "min_len", scope: !181, file: !1, line: 50, type: !14)
!195 = !DILocation(line: 51, column: 19, scope: !181)
!196 = !DILocalVariable(name: "max_len", scope: !181, file: !1, line: 51, type: !14)
!197 = !DILocation(line: 52, column: 14, scope: !181)
!198 = !DILocalVariable(name: "out", scope: !181, file: !1, line: 52, type: !62)
!199 = !DILocation(line: 53, column: 26, scope: !181)
!200 = !DILocation(line: 53, column: 21, scope: !181)
!201 = !DILocalVariable(name: "k", scope: !181, file: !1, line: 53, type: !170)
!202 = !DILocation(line: 54, column: 2, scope: !181)
!203 = !DILocation(line: 56, column: 1, scope: !181)
!204 = distinct !DISubprogram(name: "br_hmac_outCT", scope: !4, file: !4, line: 46, type: !205, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!205 = !DISubroutineType(types: !206)
!206 = !{!14, !207, !54, !14, !14, !14, !62}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_hmac_context", file: !29, line: 116, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 110, size: 2240, elements: !211)
!211 = !{!212, !292, !293}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dig", scope: !210, file: !29, line: 112, baseType: !213, size: 1664)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_hash_compat_context", file: !34, line: 1086, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !34, line: 1077, size: 1664, elements: !215)
!215 = !{!216, !247, !255, !263, !271, !273, !281, !283}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !214, file: !34, line: 1078, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_hash_class", file: !34, line: 221, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_hash_class_", file: !34, line: 222, size: 448, elements: !221)
!221 = !{!222, !223, !224, !229, !233, !239, !243}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !220, file: !34, line: 227, baseType: !14, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !220, file: !34, line: 257, baseType: !6, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !220, file: !34, line: 269, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !220, file: !34, line: 285, baseType: !230, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !228, !54, !14}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !220, file: !34, line: 300, baseType: !234, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !237, !62}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !220, file: !34, line: 316, baseType: !240, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!11, !237, !62}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "set_state", scope: !220, file: !34, line: 327, baseType: !244, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !228, !54, !11}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !214, file: !34, line: 1079, baseType: !248, size: 768)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_md5_context", file: !34, line: 399, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 389, size: 768, elements: !250)
!250 = !{!251, !252, !253, !254}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !249, file: !34, line: 393, baseType: !217, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !249, file: !34, line: 395, baseType: !77, size: 512, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !249, file: !34, line: 396, baseType: !11, size: 64, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !249, file: !34, line: 397, baseType: !82, size: 128, offset: 640)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !214, file: !34, line: 1080, baseType: !256, size: 832)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha1_context", file: !34, line: 494, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 484, size: 832, elements: !258)
!258 = !{!259, !260, !261, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !257, file: !34, line: 488, baseType: !217, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !257, file: !34, line: 490, baseType: !77, size: 512, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !257, file: !34, line: 491, baseType: !11, size: 64, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !257, file: !34, line: 492, baseType: !93, size: 160, offset: 640)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sha224", scope: !214, file: !34, line: 1081, baseType: !264, size: 896)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha224_context", file: !34, line: 589, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 579, size: 896, elements: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !265, file: !34, line: 583, baseType: !217, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !265, file: !34, line: 585, baseType: !77, size: 512, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !265, file: !34, line: 586, baseType: !11, size: 64, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !265, file: !34, line: 587, baseType: !104, size: 256, offset: 640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !214, file: !34, line: 1082, baseType: !272, size: 896)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha256_context", file: !34, line: 683, baseType: !264)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sha384", scope: !214, file: !34, line: 1083, baseType: !274, size: 1664)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha384_context", file: !34, line: 792, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 782, size: 1664, elements: !276)
!276 = !{!277, !278, !279, !280}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !275, file: !34, line: 786, baseType: !217, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !275, file: !34, line: 788, baseType: !115, size: 1024, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !275, file: !34, line: 789, baseType: !11, size: 64, offset: 1088)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !275, file: !34, line: 790, baseType: !120, size: 512, offset: 1152)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sha512", scope: !214, file: !34, line: 1084, baseType: !282, size: 1664)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha512_context", file: !34, line: 886, baseType: !274)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "md5sha1", scope: !214, file: !34, line: 1085, baseType: !284, size: 960)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_md5sha1_context", file: !34, line: 1006, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 995, size: 960, elements: !286)
!286 = !{!287, !288, !289, !290, !291}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !285, file: !34, line: 999, baseType: !217, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !285, file: !34, line: 1001, baseType: !77, size: 512, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !285, file: !34, line: 1002, baseType: !11, size: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "val_md5", scope: !285, file: !34, line: 1003, baseType: !82, size: 128, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "val_sha1", scope: !285, file: !34, line: 1004, baseType: !93, size: 160, offset: 768)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "kso", scope: !210, file: !29, line: 113, baseType: !77, size: 512, offset: 1664)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !210, file: !29, line: 114, baseType: !14, size: 64, offset: 2176)
!294 = !DILocalVariable(name: "ctx", arg: 1, scope: !204, file: !4, line: 46, type: !207)
!295 = !DILocation(line: 0, scope: !204)
!296 = !DILocalVariable(name: "data", arg: 2, scope: !204, file: !4, line: 47, type: !54)
!297 = !DILocalVariable(name: "len", arg: 3, scope: !204, file: !4, line: 47, type: !14)
!298 = !DILocalVariable(name: "min_len", arg: 4, scope: !204, file: !4, line: 47, type: !14)
!299 = !DILocalVariable(name: "max_len", arg: 5, scope: !204, file: !4, line: 47, type: !14)
!300 = !DILocalVariable(name: "out", arg: 6, scope: !204, file: !4, line: 48, type: !62)
!301 = !DILocalVariable(name: "hc", scope: !204, file: !4, line: 66, type: !213)
!302 = !DILocation(line: 66, column: 25, scope: !204)
!303 = !DILocalVariable(name: "tmp1", scope: !204, file: !4, line: 71, type: !77)
!304 = !DILocation(line: 71, column: 16, scope: !204)
!305 = !DILocalVariable(name: "tmp2", scope: !204, file: !4, line: 71, type: !77)
!306 = !DILocation(line: 71, column: 26, scope: !204)
!307 = !DILocation(line: 77, column: 12, scope: !204)
!308 = !DILocation(line: 82, column: 11, scope: !204)
!309 = !DILocalVariable(name: "dig", scope: !204, file: !4, line: 65, type: !217)
!310 = !DILocation(line: 83, column: 13, scope: !204)
!311 = !DILocation(line: 83, column: 18, scope: !204)
!312 = !DILocation(line: 83, column: 47, scope: !204)
!313 = !DILocalVariable(name: "be", scope: !204, file: !4, line: 67, type: !314)
!314 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!315 = !DILocalVariable(name: "po", scope: !204, file: !4, line: 68, type: !6)
!316 = !DILocation(line: 85, column: 11, scope: !317)
!317 = distinct !DILexicalBlock(scope: !204, file: !4, line: 85, column: 6)
!318 = !DILocation(line: 85, column: 16, scope: !317)
!319 = !DILocation(line: 85, column: 6, scope: !204)
!320 = !DILocation(line: 86, column: 6, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !4, line: 85, column: 46)
!322 = !DILocation(line: 87, column: 2, scope: !321)
!323 = !DILocation(line: 88, column: 7, scope: !204)
!324 = !DILocalVariable(name: "bs", scope: !204, file: !4, line: 68, type: !6)
!325 = !DILocation(line: 89, column: 9, scope: !204)
!326 = !DILocalVariable(name: "hlen", scope: !204, file: !4, line: 72, type: !14)
!327 = !DILocation(line: 94, column: 15, scope: !204)
!328 = !DILocation(line: 94, column: 25, scope: !204)
!329 = !DILocation(line: 94, column: 33, scope: !204)
!330 = !DILocation(line: 94, column: 10, scope: !204)
!331 = !DILocalVariable(name: "count", scope: !204, file: !4, line: 70, type: !11)
!332 = !DILocation(line: 95, column: 19, scope: !204)
!333 = !DILocation(line: 95, column: 36, scope: !204)
!334 = !DILocalVariable(name: "bit_len", scope: !204, file: !4, line: 70, type: !11)
!335 = !DILocation(line: 102, column: 18, scope: !204)
!336 = !DILocation(line: 102, column: 56, scope: !204)
!337 = !DILocation(line: 102, column: 42, scope: !204)
!338 = !DILocation(line: 102, column: 41, scope: !204)
!339 = !DILocation(line: 102, column: 39, scope: !204)
!340 = !DILocalVariable(name: "ncount", scope: !204, file: !4, line: 70, type: !11)
!341 = !DILocation(line: 103, column: 13, scope: !342)
!342 = distinct !DILexicalBlock(scope: !204, file: !4, line: 103, column: 6)
!343 = !DILocation(line: 103, column: 6, scope: !204)
!344 = !DILocation(line: 106, column: 26, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !4, line: 103, column: 22)
!346 = !DILocalVariable(name: "zlen", scope: !345, file: !4, line: 104, type: !14)
!347 = !DILocation(line: 0, scope: !345)
!348 = !DILocation(line: 107, column: 8, scope: !345)
!349 = !DILocation(line: 107, column: 19, scope: !345)
!350 = !DILocation(line: 107, column: 3, scope: !345)
!351 = !DILocation(line: 108, column: 38, scope: !345)
!352 = !DILocation(line: 109, column: 7, scope: !345)
!353 = !DILocation(line: 110, column: 11, scope: !345)
!354 = !DILocation(line: 112, column: 2, scope: !345)
!355 = !DILocation(line: 132, column: 7, scope: !204)
!356 = !DILocation(line: 132, column: 29, scope: !204)
!357 = !DILocation(line: 132, column: 23, scope: !204)
!358 = !DILocalVariable(name: "kr", scope: !204, file: !4, line: 69, type: !6)
!359 = !DILocation(line: 133, column: 14, scope: !204)
!360 = !DILocation(line: 133, column: 12, scope: !204)
!361 = !DILocation(line: 133, column: 28, scope: !204)
!362 = !DILocation(line: 133, column: 33, scope: !204)
!363 = !DILocation(line: 133, column: 38, scope: !204)
!364 = !DILocation(line: 133, column: 50, scope: !204)
!365 = !DILocation(line: 133, column: 45, scope: !204)
!366 = !DILocation(line: 133, column: 43, scope: !204)
!367 = !DILocation(line: 133, column: 56, scope: !204)
!368 = !DILocation(line: 133, column: 60, scope: !204)
!369 = !DILocalVariable(name: "kz", scope: !204, file: !4, line: 69, type: !6)
!370 = !DILocation(line: 134, column: 10, scope: !204)
!371 = !DILocalVariable(name: "kl", scope: !204, file: !4, line: 69, type: !6)
!372 = !DILocation(line: 135, column: 14, scope: !204)
!373 = !DILocation(line: 135, column: 12, scope: !204)
!374 = !DILocation(line: 135, column: 32, scope: !204)
!375 = !DILocation(line: 135, column: 37, scope: !204)
!376 = !DILocation(line: 135, column: 42, scope: !204)
!377 = !DILocation(line: 135, column: 54, scope: !204)
!378 = !DILocation(line: 135, column: 49, scope: !204)
!379 = !DILocation(line: 135, column: 47, scope: !204)
!380 = !DILocation(line: 135, column: 60, scope: !204)
!381 = !DILocalVariable(name: "km", scope: !204, file: !4, line: 69, type: !6)
!382 = !DILocation(line: 153, column: 2, scope: !204)
!383 = !DILocalVariable(name: "u", scope: !204, file: !4, line: 69, type: !6)
!384 = !DILocation(line: 154, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !204, file: !4, line: 154, column: 2)
!386 = !DILocation(line: 0, scope: !385)
!387 = !DILocation(line: 154, column: 16, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !4, line: 154, column: 2)
!389 = !DILocation(line: 154, column: 2, scope: !385)
!390 = !DILocalVariable(name: "x", scope: !391, file: !4, line: 157, type: !392)
!391 = distinct !DILexicalBlock(scope: !388, file: !4, line: 154, column: 28)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 1)
!395 = !DILocation(line: 157, column: 17, scope: !391)
!396 = !DILocation(line: 159, column: 8, scope: !391)
!397 = !DILocation(line: 159, column: 10, scope: !391)
!398 = !DILocation(line: 159, column: 7, scope: !391)
!399 = !DILocation(line: 159, column: 23, scope: !391)
!400 = !DILocalVariable(name: "d", scope: !391, file: !4, line: 156, type: !6)
!401 = !DILocation(line: 0, scope: !391)
!402 = !DILocation(line: 160, column: 11, scope: !391)
!403 = !DILocation(line: 160, column: 22, scope: !391)
!404 = !DILocation(line: 160, column: 16, scope: !391)
!405 = !DILocalVariable(name: "v", scope: !391, file: !4, line: 155, type: !6)
!406 = !DILocation(line: 161, column: 16, scope: !407)
!407 = distinct !DILexicalBlock(scope: !391, file: !4, line: 161, column: 7)
!408 = !DILocation(line: 161, column: 9, scope: !407)
!409 = !DILocation(line: 161, column: 7, scope: !391)
!410 = !DILocation(line: 164, column: 17, scope: !411)
!411 = distinct !DILexicalBlock(scope: !407, file: !4, line: 161, column: 22)
!412 = !DILocation(line: 164, column: 11, scope: !411)
!413 = !DILocation(line: 164, column: 23, scope: !411)
!414 = !DILocalVariable(name: "j", scope: !411, file: !4, line: 162, type: !10)
!415 = !DILocation(line: 0, scope: !411)
!416 = !DILocation(line: 165, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !411, file: !4, line: 165, column: 8)
!418 = !DILocation(line: 165, column: 8, scope: !411)
!419 = !DILocation(line: 166, column: 35, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !4, line: 165, column: 12)
!421 = !DILocation(line: 166, column: 28, scope: !420)
!422 = !DILocation(line: 166, column: 9, scope: !420)
!423 = !DILocalVariable(name: "e", scope: !391, file: !4, line: 156, type: !6)
!424 = !DILocation(line: 167, column: 4, scope: !420)
!425 = !DILocation(line: 168, column: 28, scope: !426)
!426 = distinct !DILexicalBlock(scope: !417, file: !4, line: 167, column: 11)
!427 = !DILocation(line: 168, column: 9, scope: !426)
!428 = !DILocation(line: 0, scope: !417)
!429 = !DILocation(line: 170, column: 6, scope: !411)
!430 = !DILocation(line: 171, column: 3, scope: !411)
!431 = !DILocation(line: 0, scope: !407)
!432 = !DILocation(line: 174, column: 18, scope: !391)
!433 = !DILocation(line: 174, column: 12, scope: !391)
!434 = !DILocation(line: 174, column: 8, scope: !391)
!435 = !DILocalVariable(name: "x0", scope: !391, file: !4, line: 156, type: !6)
!436 = !DILocation(line: 175, column: 12, scope: !391)
!437 = !DILocation(line: 175, column: 8, scope: !391)
!438 = !DILocalVariable(name: "x1", scope: !391, file: !4, line: 156, type: !6)
!439 = !DILocation(line: 176, column: 14, scope: !391)
!440 = !DILocation(line: 176, column: 10, scope: !391)
!441 = !DILocation(line: 176, column: 3, scope: !391)
!442 = !DILocation(line: 176, column: 8, scope: !391)
!443 = !DILocation(line: 177, column: 8, scope: !391)
!444 = !DILocation(line: 177, column: 19, scope: !391)
!445 = !DILocation(line: 177, column: 27, scope: !391)
!446 = !DILocation(line: 177, column: 3, scope: !391)
!447 = !DILocation(line: 178, column: 16, scope: !448)
!448 = distinct !DILexicalBlock(scope: !391, file: !4, line: 178, column: 7)
!449 = !DILocation(line: 178, column: 9, scope: !448)
!450 = !DILocation(line: 178, column: 7, scope: !391)
!451 = !DILocation(line: 179, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !4, line: 178, column: 22)
!453 = !DILocation(line: 179, column: 19, scope: !452)
!454 = !DILocation(line: 179, column: 27, scope: !452)
!455 = !DILocation(line: 179, column: 4, scope: !452)
!456 = !DILocation(line: 180, column: 10, scope: !452)
!457 = !DILocation(line: 180, column: 21, scope: !452)
!458 = !DILocation(line: 180, column: 27, scope: !452)
!459 = !DILocation(line: 180, column: 4, scope: !452)
!460 = !DILocation(line: 181, column: 3, scope: !452)
!461 = !DILocation(line: 182, column: 2, scope: !391)
!462 = !DILocation(line: 154, column: 24, scope: !388)
!463 = !DILocation(line: 154, column: 2, scope: !388)
!464 = distinct !{!464, !389, !465, !466}
!465 = !DILocation(line: 182, column: 2, scope: !385)
!466 = !{!"llvm.loop.mustprogress"}
!467 = !DILocation(line: 187, column: 7, scope: !204)
!468 = !DILocation(line: 187, column: 16, scope: !204)
!469 = !DILocation(line: 187, column: 2, scope: !204)
!470 = !DILocation(line: 188, column: 7, scope: !204)
!471 = !DILocation(line: 188, column: 21, scope: !204)
!472 = !DILocation(line: 188, column: 34, scope: !204)
!473 = !DILocation(line: 188, column: 29, scope: !204)
!474 = !DILocation(line: 188, column: 39, scope: !204)
!475 = !DILocation(line: 188, column: 2, scope: !204)
!476 = !DILocation(line: 189, column: 7, scope: !204)
!477 = !DILocation(line: 189, column: 18, scope: !204)
!478 = !DILocation(line: 189, column: 26, scope: !204)
!479 = !DILocation(line: 189, column: 2, scope: !204)
!480 = !DILocation(line: 190, column: 7, scope: !204)
!481 = !DILocation(line: 190, column: 15, scope: !204)
!482 = !DILocation(line: 190, column: 23, scope: !204)
!483 = !DILocation(line: 190, column: 2, scope: !204)
!484 = !DILocation(line: 191, column: 2, scope: !204)
!485 = !DILocation(line: 191, column: 25, scope: !204)
!486 = !DILocation(line: 192, column: 14, scope: !204)
!487 = !DILocation(line: 192, column: 2, scope: !204)
!488 = distinct !DISubprogram(name: "block_size", scope: !4, file: !4, line: 35, type: !489, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!489 = !DISubroutineType(types: !490)
!490 = !{!14, !217}
!491 = !DILocalVariable(name: "dig", arg: 1, scope: !488, file: !4, line: 35, type: !217)
!492 = !DILocation(line: 0, scope: !488)
!493 = !DILocation(line: 39, column: 23, scope: !488)
!494 = !DILocation(line: 39, column: 28, scope: !488)
!495 = !DILocation(line: 40, column: 3, scope: !488)
!496 = !DILocalVariable(name: "ls", scope: !488, file: !4, line: 37, type: !10)
!497 = !DILocation(line: 41, column: 19, scope: !488)
!498 = !DILocation(line: 41, column: 2, scope: !488)
!499 = distinct !DISubprogram(name: "hash_size", scope: !4, file: !4, line: 28, type: !489, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!500 = !DILocalVariable(name: "dig", arg: 1, scope: !499, file: !4, line: 28, type: !217)
!501 = !DILocation(line: 0, scope: !499)
!502 = !DILocation(line: 30, column: 25, scope: !499)
!503 = !DILocation(line: 30, column: 30, scope: !499)
!504 = !DILocation(line: 31, column: 3, scope: !499)
!505 = !DILocation(line: 30, column: 9, scope: !499)
!506 = !DILocation(line: 30, column: 2, scope: !499)
!507 = distinct !DISubprogram(name: "EQ", scope: !508, file: !508, line: 779, type: !509, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!508 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/hmac")
!509 = !DISubroutineType(types: !510)
!510 = !{!6, !6, !6}
!511 = !DILocalVariable(name: "x", arg: 1, scope: !507, file: !508, line: 779, type: !6)
!512 = !DILocation(line: 0, scope: !507)
!513 = !DILocalVariable(name: "y", arg: 2, scope: !507, file: !508, line: 779, type: !6)
!514 = !DILocation(line: 783, column: 8, scope: !507)
!515 = !DILocalVariable(name: "q", scope: !507, file: !508, line: 781, type: !6)
!516 = !DILocation(line: 784, column: 18, scope: !507)
!517 = !DILocation(line: 784, column: 16, scope: !507)
!518 = !DILocation(line: 784, column: 22, scope: !507)
!519 = !DILocation(line: 784, column: 9, scope: !507)
!520 = !DILocation(line: 784, column: 2, scope: !507)
!521 = distinct !DISubprogram(name: "MUX", scope: !508, file: !508, line: 770, type: !522, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!522 = !DISubroutineType(types: !523)
!523 = !{!6, !6, !6, !6}
!524 = !DILocalVariable(name: "ctl", arg: 1, scope: !521, file: !508, line: 770, type: !6)
!525 = !DILocation(line: 0, scope: !521)
!526 = !DILocalVariable(name: "x", arg: 2, scope: !521, file: !508, line: 770, type: !6)
!527 = !DILocalVariable(name: "y", arg: 3, scope: !521, file: !508, line: 770, type: !6)
!528 = !DILocation(line: 772, column: 14, scope: !521)
!529 = !DILocation(line: 772, column: 24, scope: !521)
!530 = !DILocation(line: 772, column: 19, scope: !521)
!531 = !DILocation(line: 772, column: 11, scope: !521)
!532 = !DILocation(line: 772, column: 2, scope: !521)
!533 = distinct !DISubprogram(name: "GT", scope: !508, file: !508, line: 803, type: !509, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!534 = !DILocalVariable(name: "x", arg: 1, scope: !533, file: !508, line: 803, type: !6)
!535 = !DILocation(line: 0, scope: !533)
!536 = !DILocalVariable(name: "y", arg: 2, scope: !533, file: !508, line: 803, type: !6)
!537 = !DILocation(line: 819, column: 8, scope: !533)
!538 = !DILocalVariable(name: "z", scope: !533, file: !508, line: 817, type: !6)
!539 = !DILocation(line: 820, column: 18, scope: !533)
!540 = !DILocation(line: 820, column: 28, scope: !533)
!541 = !DILocation(line: 820, column: 23, scope: !533)
!542 = !DILocation(line: 820, column: 12, scope: !533)
!543 = !DILocation(line: 820, column: 35, scope: !533)
!544 = !DILocation(line: 820, column: 2, scope: !533)
!545 = distinct !DISubprogram(name: "NOT", scope: !508, file: !508, line: 761, type: !546, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!546 = !DISubroutineType(types: !547)
!547 = !{!6, !6}
!548 = !DILocalVariable(name: "ctl", arg: 1, scope: !545, file: !508, line: 761, type: !6)
!549 = !DILocation(line: 0, scope: !545)
!550 = !DILocation(line: 763, column: 13, scope: !545)
!551 = !DILocation(line: 763, column: 2, scope: !545)
