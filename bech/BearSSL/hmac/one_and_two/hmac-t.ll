; ModuleID = 'hmac-k.ll'
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
  call void @llvm.dbg.value(metadata %struct.br_hmac_context* %0, metadata !134, metadata !DIExpression()), !dbg !135, !psr.id !136
  call void @llvm.dbg.value(metadata i8* %1, metadata !137, metadata !DIExpression()), !dbg !135, !psr.id !138
  call void @llvm.dbg.value(metadata i64 %2, metadata !139, metadata !DIExpression()), !dbg !135, !psr.id !140
  call void @llvm.dbg.value(metadata i64 %3, metadata !141, metadata !DIExpression()), !dbg !135, !psr.id !142
  call void @llvm.dbg.value(metadata i64 %4, metadata !143, metadata !DIExpression()), !dbg !135, !psr.id !144
  call void @llvm.dbg.value(metadata i8* %5, metadata !145, metadata !DIExpression()), !dbg !135, !psr.id !146
  %7 = call %struct.smack_value* (%struct.br_hmac_context*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_hmac_context*, ...)*)(%struct.br_hmac_context* %0), !dbg !147, !psr.id !148
  call void @public_in(%struct.smack_value* %7), !dbg !149, !psr.id !150
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !151, !psr.id !152
  call void @public_in(%struct.smack_value* %8), !dbg !153, !psr.id !154
  %9 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !155, !psr.id !156
  call void @public_in(%struct.smack_value* %9), !dbg !157, !psr.id !158
  %10 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !159, !psr.id !160
  call void @public_in(%struct.smack_value* %10), !dbg !161, !psr.id !162
  %11 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %4), !dbg !163, !psr.id !164
  call void @public_in(%struct.smack_value* %11), !dbg !165, !psr.id !166
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %5), !dbg !167, !psr.id !168
  call void @public_in(%struct.smack_value* %12), !dbg !169, !psr.id !170
  %13 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 0, !dbg !171, !psr.id !172
  %14 = call %struct.smack_value* (%union.br_hash_compat_context*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%union.br_hash_compat_context*, ...)*)(%union.br_hash_compat_context* byval(%union.br_hash_compat_context) align 8 %13), !dbg !173, !psr.id !174
  call void @public_in(%struct.smack_value* %14), !dbg !175, !psr.id !176
  %15 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 2, !dbg !177, !psr.id !178
  %16 = load i64, i64* %15, align 8, !dbg !177, !psr.id !179
  %17 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %16), !dbg !180, !psr.id !181
  call void @public_in(%struct.smack_value* %17), !dbg !182, !psr.id !183
  %18 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 1, !dbg !184, !psr.id !185
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0, !dbg !186, !psr.id !187
  %20 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %19), !dbg !188, !psr.id !189
  call void @public_in(%struct.smack_value* %20), !dbg !190, !psr.id !191
  %21 = call %struct.smack_value* @__SMACK_values(i8* %5, i32 64), !dbg !192, !psr.id !193
  call void @public_in(%struct.smack_value* %21), !dbg !194, !psr.id !195
  %22 = call i64 @br_hmac_outCT(%struct.br_hmac_context* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5), !dbg !196, !psr.id !197
  ret void, !dbg !198, !psr.id !199
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @vfct_tmp(i8* %0, %struct.br_hmac_context* %1, i8* %2, i64 %3, i64 %4, i64 %5, i8* %6) #0 !dbg !200 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !204, metadata !DIExpression()), !dbg !205, !psr.id !206
  call void @llvm.dbg.value(metadata %struct.br_hmac_context* %1, metadata !207, metadata !DIExpression()), !dbg !205, !psr.id !208
  call void @llvm.dbg.value(metadata i8* %2, metadata !209, metadata !DIExpression()), !dbg !205, !psr.id !210
  call void @llvm.dbg.value(metadata i64 %3, metadata !211, metadata !DIExpression()), !dbg !205, !psr.id !212
  call void @llvm.dbg.value(metadata i64 %4, metadata !213, metadata !DIExpression()), !dbg !205, !psr.id !214
  call void @llvm.dbg.value(metadata i64 %5, metadata !215, metadata !DIExpression()), !dbg !205, !psr.id !216
  call void @llvm.dbg.value(metadata i8* %6, metadata !217, metadata !DIExpression()), !dbg !205, !psr.id !218
  %8 = call i64 @br_hmac_outCT(%struct.br_hmac_context* %1, i8* %2, i64 %3, i64 %4, i64 %5, i8* %6), !dbg !219, !psr.id !220
  ret void, !dbg !221, !psr.id !222
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hmac_wrapper_t() #0 !dbg !223 {
  %1 = alloca %struct.br_hmac_context, align 8, !psr.id !226
  call void @llvm.dbg.declare(metadata %struct.br_hmac_context* %1, metadata !227, metadata !DIExpression()), !dbg !228, !psr.id !229
  call void (%struct.br_hmac_context*, ...) @getctx(%struct.br_hmac_context* sret(%struct.br_hmac_context) align 8 %1), !dbg !230, !psr.id !231
  call void @llvm.dbg.value(metadata %struct.br_hmac_context* %1, metadata !232, metadata !DIExpression()), !dbg !233, !psr.id !234
  %2 = call i8* (...) @getvoud(), !dbg !235, !psr.id !236
  call void @llvm.dbg.value(metadata i8* %2, metadata !237, metadata !DIExpression()), !dbg !233, !psr.id !238
  %3 = call i64 (...) @getlen(), !dbg !239, !psr.id !240
  call void @llvm.dbg.value(metadata i64 %3, metadata !241, metadata !DIExpression()), !dbg !233, !psr.id !242
  %4 = call i64 (...) @getlen(), !dbg !243, !psr.id !244
  call void @llvm.dbg.value(metadata i64 %4, metadata !245, metadata !DIExpression()), !dbg !233, !psr.id !246
  %5 = call i64 (...) @getlen(), !dbg !247, !psr.id !248
  call void @llvm.dbg.value(metadata i64 %5, metadata !249, metadata !DIExpression()), !dbg !233, !psr.id !250
  %6 = call i8* (...) @getvoud2(), !dbg !251, !psr.id !252
  call void @llvm.dbg.value(metadata i8* %6, metadata !253, metadata !DIExpression()), !dbg !233, !psr.id !254
  %7 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %1, i32 0, i32 1, !dbg !255, !psr.id !256
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0, !dbg !257, !psr.id !258
  call void @llvm.dbg.value(metadata i8* %8, metadata !259, metadata !DIExpression()), !dbg !233, !psr.id !260
  call void @vfct_tmp(i8* %8, %struct.br_hmac_context* %1, i8* %2, i64 %3, i64 %4, i64 %5, i8* %6), !dbg !261, !psr.id !262
  ret void, !dbg !263, !psr.id !264
}

declare dso_local void @getctx(%struct.br_hmac_context* sret(%struct.br_hmac_context) align 8, ...) #2

declare dso_local i8* @getvoud(...) #2

declare dso_local i64 @getlen(...) #2

declare dso_local i8* @getvoud2(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @br_hmac_outCT(%struct.br_hmac_context* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8* %5) #0 !dbg !265 {
  %7 = alloca %union.br_hash_compat_context, align 8, !psr.id !355
  %8 = alloca [64 x i8], align 16, !psr.id !356
  %9 = alloca [64 x i8], align 16, !psr.id !357
  %10 = alloca [1 x i8], align 1, !psr.id !358
  call void @llvm.dbg.value(metadata %struct.br_hmac_context* %0, metadata !359, metadata !DIExpression()), !dbg !360, !psr.id !361
  call void @llvm.dbg.value(metadata i8* %1, metadata !362, metadata !DIExpression()), !dbg !360, !psr.id !363
  call void @llvm.dbg.value(metadata i64 %2, metadata !364, metadata !DIExpression()), !dbg !360, !psr.id !365
  call void @llvm.dbg.value(metadata i64 %3, metadata !366, metadata !DIExpression()), !dbg !360, !psr.id !367
  call void @llvm.dbg.value(metadata i64 %4, metadata !368, metadata !DIExpression()), !dbg !360, !psr.id !369
  call void @llvm.dbg.value(metadata i8* %5, metadata !370, metadata !DIExpression()), !dbg !360, !psr.id !371
  call void @llvm.dbg.declare(metadata %union.br_hash_compat_context* %7, metadata !372, metadata !DIExpression()), !dbg !373, !psr.id !374
  call void @llvm.dbg.declare(metadata [64 x i8]* %8, metadata !375, metadata !DIExpression()), !dbg !376, !psr.id !377
  call void @llvm.dbg.declare(metadata [64 x i8]* %9, metadata !378, metadata !DIExpression()), !dbg !379, !psr.id !380
  %11 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 0, !dbg !381, !psr.id !382
  %12 = bitcast %union.br_hash_compat_context* %7 to i8*, !dbg !381, !psr.id !383
  %13 = bitcast %union.br_hash_compat_context* %11 to i8*, !dbg !381, !psr.id !384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 208, i1 false), !dbg !381, !psr.id !385
  %14 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !386, !psr.id !387
  %15 = load %struct.br_hash_class_*, %struct.br_hash_class_** %14, align 8, !dbg !386, !psr.id !388
  call void @llvm.dbg.value(metadata %struct.br_hash_class_* %15, metadata !389, metadata !DIExpression()), !dbg !360, !psr.id !390
  %16 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 1, !dbg !391, !psr.id !392
  %17 = load i32, i32* %16, align 8, !dbg !391, !psr.id !393
  %18 = and i32 %17, 1073741824, !dbg !394, !psr.id !395
  %19 = icmp ne i32 %18, 0, !dbg !396, !psr.id !397
  %20 = zext i1 %19 to i32, !dbg !396, !psr.id !398
  call void @llvm.dbg.value(metadata i32 %20, metadata !399, metadata !DIExpression()), !dbg !360, !psr.id !401
  call void @llvm.dbg.value(metadata i32 9, metadata !402, metadata !DIExpression()), !dbg !360, !psr.id !403
  %21 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 1, !dbg !404, !psr.id !406
  %22 = load i32, i32* %21, align 8, !dbg !404, !psr.id !407
  %23 = and i32 %22, 536870912, !dbg !408, !psr.id !409
  %24 = icmp ne i32 %23, 0, !dbg !408, !psr.id !410
  br i1 %24, label %25, label %27, !dbg !411, !psr.id !412

25:                                               ; preds = %6
  %26 = add i32 9, 8, !dbg !413, !psr.id !415
  call void @llvm.dbg.value(metadata i32 %26, metadata !402, metadata !DIExpression()), !dbg !360, !psr.id !416
  br label %27, !dbg !417, !psr.id !418

27:                                               ; preds = %25, %6
  %.06 = phi i32 [ %26, %25 ], [ 9, %6 ], !dbg !360, !psr.id !419
  call void @llvm.dbg.value(metadata i32 %.06, metadata !402, metadata !DIExpression()), !dbg !360, !psr.id !420
  %28 = call i64 @block_size(%struct.br_hash_class_* %15), !dbg !421, !psr.id !422
  %29 = trunc i64 %28 to i32, !dbg !421, !psr.id !423
  call void @llvm.dbg.value(metadata i32 %29, metadata !424, metadata !DIExpression()), !dbg !360, !psr.id !425
  %30 = call i64 @hash_size(%struct.br_hash_class_* %15), !dbg !426, !psr.id !427
  call void @llvm.dbg.value(metadata i64 %30, metadata !428, metadata !DIExpression()), !dbg !360, !psr.id !429
  %31 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 5, !dbg !430, !psr.id !431
  %32 = load i64 (%struct.br_hash_class_**, i8*)*, i64 (%struct.br_hash_class_**, i8*)** %31, align 8, !dbg !430, !psr.id !432
  %33 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !433, !psr.id !434
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0, !dbg !435, !psr.id !436
  %35 = call i64 %32(%struct.br_hash_class_** %33, i8* %34), !dbg !437, !psr.id !438, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i64 %35, metadata !441, metadata !DIExpression()), !dbg !360, !psr.id !442
  %36 = add i64 %35, %2, !dbg !443, !psr.id !444, !ValueTainted !439, !PointTainted !440
  %37 = shl i64 %36, 3, !dbg !445, !psr.id !446, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i64 %37, metadata !447, metadata !DIExpression()), !dbg !360, !psr.id !448
  %38 = add i64 %35, %3, !dbg !449, !psr.id !450, !ValueTainted !439, !PointTainted !440
  %39 = sub i32 %29, 1, !dbg !451, !psr.id !452
  %40 = zext i32 %39 to i64, !dbg !453, !psr.id !454
  %41 = xor i64 %40, -1, !dbg !455, !psr.id !456
  %42 = and i64 %38, %41, !dbg !457, !psr.id !458, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i64 %42, metadata !459, metadata !DIExpression()), !dbg !360, !psr.id !460
  %43 = icmp ugt i64 %42, %35, !dbg !461, !psr.id !463, !ValueTainted !439
  br i1 %43, label %44, label %52, !dbg !464, !psr.id !465, !Tainted !466

44:                                               ; preds = %27
  %45 = sub i64 %42, %35, !dbg !467, !psr.id !469, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i64 %45, metadata !470, metadata !DIExpression()), !dbg !471, !psr.id !472
  %46 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 3, !dbg !473, !psr.id !474
  %47 = load void (%struct.br_hash_class_**, i8*, i64)*, void (%struct.br_hash_class_**, i8*, i64)** %46, align 8, !dbg !473, !psr.id !475
  %48 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !476, !psr.id !477
  call void %47(%struct.br_hash_class_** %48, i8* %1, i64 %45), !dbg !478, !psr.id !479
  %49 = getelementptr inbounds i8, i8* %1, i64 %45, !dbg !480, !psr.id !481, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i8* %49, metadata !362, metadata !DIExpression()), !dbg !360, !psr.id !482
  %50 = sub i64 %2, %45, !dbg !483, !psr.id !484, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i64 %50, metadata !364, metadata !DIExpression()), !dbg !360, !psr.id !485
  %51 = sub i64 %4, %45, !dbg !486, !psr.id !487, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i64 %51, metadata !368, metadata !DIExpression()), !dbg !360, !psr.id !488
  call void @llvm.dbg.value(metadata i64 %42, metadata !441, metadata !DIExpression()), !dbg !360, !psr.id !489
  br label %52, !dbg !490, !psr.id !491

52:                                               ; preds = %44, %27
  %.04 = phi i64 [ %51, %44 ], [ %4, %27 ], !psr.id !492, !ValueTainted !439, !PointTainted !440
  %.03 = phi i64 [ %42, %44 ], [ %35, %27 ], !dbg !360, !psr.id !493, !ValueTainted !439, !PointTainted !440
  %.02 = phi i64 [ %50, %44 ], [ %2, %27 ], !psr.id !494, !ValueTainted !439, !PointTainted !440
  %.01 = phi i8* [ %49, %44 ], [ %1, %27 ], !psr.id !495, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i8* %.01, metadata !362, metadata !DIExpression()), !dbg !360, !psr.id !496
  call void @llvm.dbg.value(metadata i64 %.02, metadata !364, metadata !DIExpression()), !dbg !360, !psr.id !497
  call void @llvm.dbg.value(metadata i64 %.03, metadata !441, metadata !DIExpression()), !dbg !360, !psr.id !498
  call void @llvm.dbg.value(metadata i64 %.04, metadata !368, metadata !DIExpression()), !dbg !360, !psr.id !499
  %53 = trunc i64 %.03 to i32, !dbg !500, !psr.id !501, !ValueTainted !439, !PointTainted !440
  %54 = sub i32 %29, 1, !dbg !502, !psr.id !503
  %55 = and i32 %53, %54, !dbg !504, !psr.id !505, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %55, metadata !506, metadata !DIExpression()), !dbg !360, !psr.id !507
  %56 = trunc i64 %.02 to i32, !dbg !508, !psr.id !509, !ValueTainted !439, !PointTainted !440
  %57 = add i32 %55, %56, !dbg !510, !psr.id !511, !ValueTainted !439, !PointTainted !440
  %58 = add i32 %57, %.06, !dbg !512, !psr.id !513, !ValueTainted !439, !PointTainted !440
  %59 = add i32 %58, %29, !dbg !514, !psr.id !515, !ValueTainted !439, !PointTainted !440
  %60 = sub i32 %59, 1, !dbg !516, !psr.id !517, !ValueTainted !439, !PointTainted !440
  %61 = sub i32 %29, 1, !dbg !518, !psr.id !519
  %62 = xor i32 %61, -1, !dbg !520, !psr.id !521
  %63 = and i32 %60, %62, !dbg !522, !psr.id !523, !ValueTainted !439, !PointTainted !440
  %64 = sub i32 %63, 1, !dbg !524, !psr.id !525, !ValueTainted !439, !PointTainted !440
  %65 = sub i32 %64, %55, !dbg !526, !psr.id !527, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %65, metadata !528, metadata !DIExpression()), !dbg !360, !psr.id !529
  %66 = sub i32 %65, 7, !dbg !530, !psr.id !531, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %66, metadata !532, metadata !DIExpression()), !dbg !360, !psr.id !533
  %67 = trunc i64 %.04 to i32, !dbg !534, !psr.id !535, !ValueTainted !439, !PointTainted !440
  %68 = add i32 %55, %67, !dbg !536, !psr.id !537, !ValueTainted !439, !PointTainted !440
  %69 = add i32 %68, %.06, !dbg !538, !psr.id !539, !ValueTainted !439, !PointTainted !440
  %70 = add i32 %69, %29, !dbg !540, !psr.id !541, !ValueTainted !439, !PointTainted !440
  %71 = sub i32 %70, 1, !dbg !542, !psr.id !543, !ValueTainted !439, !PointTainted !440
  %72 = sub i32 %29, 1, !dbg !544, !psr.id !545
  %73 = xor i32 %72, -1, !dbg !546, !psr.id !547
  %74 = and i32 %71, %73, !dbg !548, !psr.id !549, !ValueTainted !439, !PointTainted !440
  %75 = sub i32 %74, %55, !dbg !550, !psr.id !551, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %75, metadata !552, metadata !DIExpression()), !dbg !360, !psr.id !553
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !554, !psr.id !555
  call void @llvm.memset.p0i8.i64(i8* align 16 %76, i8 0, i64 64, i1 false), !dbg !554, !psr.id !556
  call void @llvm.dbg.value(metadata i32 0, metadata !557, metadata !DIExpression()), !dbg !360, !psr.id !558
  br label %77, !dbg !559, !psr.id !561

77:                                               ; preds = %140, %52
  %.05 = phi i32 [ 0, %52 ], [ %141, %140 ], !dbg !562, !psr.id !563
  call void @llvm.dbg.value(metadata i32 %.05, metadata !557, metadata !DIExpression()), !dbg !360, !psr.id !564
  %78 = icmp ult i32 %.05, %75, !dbg !565, !psr.id !567, !ValueTainted !439
  br i1 %78, label %79, label %142, !dbg !568, !psr.id !569, !Tainted !466

79:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata [1 x i8]* %10, metadata !570, metadata !DIExpression()), !dbg !575, !psr.id !576
  %80 = zext i32 %.05 to i64, !dbg !577, !psr.id !578
  %81 = icmp ult i64 %80, %.04, !dbg !579, !psr.id !580, !ValueTainted !439
  br i1 %81, label %82, label %87, !dbg !581, !psr.id !582, !Tainted !466

82:                                               ; preds = %79
  %83 = zext i32 %.05 to i64, !dbg !583, !psr.id !584
  %84 = getelementptr inbounds i8, i8* %.01, i64 %83, !dbg !583, !psr.id !585, !ValueTainted !439, !PointTainted !440
  %85 = load i8, i8* %84, align 1, !dbg !583, !psr.id !586, !Tainted !466, !ValueTainted !439
  %86 = zext i8 %85 to i32, !dbg !583, !psr.id !587, !ValueTainted !439
  br label %88, !dbg !581, !psr.id !588

87:                                               ; preds = %79
  br label %88, !dbg !581, !psr.id !589

88:                                               ; preds = %87, %82
  %89 = phi i32 [ %86, %82 ], [ 0, %87 ], !dbg !581, !psr.id !590, !ValueTainted !439
  call void @llvm.dbg.value(metadata i32 %89, metadata !591, metadata !DIExpression()), !dbg !592, !psr.id !593
  %90 = add i32 %55, %.05, !dbg !594, !psr.id !595, !ValueTainted !439, !PointTainted !440
  %91 = sub i32 %29, 1, !dbg !596, !psr.id !597
  %92 = and i32 %90, %91, !dbg !598, !psr.id !599, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %92, metadata !600, metadata !DIExpression()), !dbg !592, !psr.id !601
  %93 = sub i32 %29, 8, !dbg !602, !psr.id !604
  %94 = icmp uge i32 %92, %93, !dbg !605, !psr.id !606, !ValueTainted !439
  br i1 %94, label %95, label %111, !dbg !607, !psr.id !608, !Tainted !466

95:                                               ; preds = %88
  %96 = sub i32 %29, 8, !dbg !609, !psr.id !611
  %97 = sub i32 %92, %96, !dbg !612, !psr.id !613, !ValueTainted !439, !PointTainted !440
  %98 = shl i32 %97, 3, !dbg !614, !psr.id !615, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %98, metadata !616, metadata !DIExpression()), !dbg !617, !psr.id !618
  %99 = icmp ne i32 %20, 0, !dbg !619, !psr.id !621
  br i1 %99, label %100, label %105, !dbg !622, !psr.id !623

100:                                              ; preds = %95
  %101 = sub i32 56, %98, !dbg !624, !psr.id !626, !ValueTainted !439, !PointTainted !440
  %102 = zext i32 %101 to i64, !dbg !627, !psr.id !628, !ValueTainted !439, !PointTainted !440
  %103 = lshr i64 %37, %102, !dbg !627, !psr.id !629, !ValueTainted !439, !PointTainted !440
  %104 = trunc i64 %103 to i32, !dbg !630, !psr.id !631, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %104, metadata !632, metadata !DIExpression()), !dbg !592, !psr.id !633
  br label %109, !dbg !634, !psr.id !635

105:                                              ; preds = %95
  %106 = zext i32 %98 to i64, !dbg !636, !psr.id !638, !ValueTainted !439, !PointTainted !440
  %107 = lshr i64 %37, %106, !dbg !636, !psr.id !639, !ValueTainted !439, !PointTainted !440
  %108 = trunc i64 %107 to i32, !dbg !640, !psr.id !641, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %108, metadata !632, metadata !DIExpression()), !dbg !592, !psr.id !642
  br label %109, !psr.id !643

109:                                              ; preds = %105, %100
  %.0 = phi i32 [ %104, %100 ], [ %108, %105 ], !dbg !644, !psr.id !645, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %.0, metadata !632, metadata !DIExpression()), !dbg !592, !psr.id !646
  %110 = and i32 %.0, 255, !dbg !647, !psr.id !648, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %110, metadata !632, metadata !DIExpression()), !dbg !592, !psr.id !649
  br label %112, !dbg !650, !psr.id !651

111:                                              ; preds = %88
  call void @llvm.dbg.value(metadata i32 0, metadata !632, metadata !DIExpression()), !dbg !592, !psr.id !652
  br label %112, !psr.id !653

112:                                              ; preds = %111, %109
  %.1 = phi i32 [ %110, %109 ], [ 0, %111 ], !dbg !654, !psr.id !655, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %.1, metadata !632, metadata !DIExpression()), !dbg !592, !psr.id !656
  %113 = trunc i64 %.02 to i32, !dbg !657, !psr.id !658, !ValueTainted !439, !PointTainted !440
  %114 = call i32 @EQ(i32 %.05, i32 %113), !dbg !659, !psr.id !660, !ValueTainted !439, !PointTainted !440
  %115 = call i32 @MUX(i32 %114, i32 128, i32 %89), !dbg !661, !psr.id !662, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %115, metadata !663, metadata !DIExpression()), !dbg !592, !psr.id !664
  %116 = call i32 @GT(i32 %66, i32 %.05), !dbg !665, !psr.id !666, !ValueTainted !439, !PointTainted !440
  %117 = call i32 @MUX(i32 %116, i32 0, i32 %.1), !dbg !667, !psr.id !668, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %117, metadata !669, metadata !DIExpression()), !dbg !592, !psr.id !670
  %118 = trunc i64 %.02 to i32, !dbg !671, !psr.id !672, !ValueTainted !439, !PointTainted !440
  %119 = call i32 @GT(i32 %.05, i32 %118), !dbg !671, !psr.id !673, !ValueTainted !439, !PointTainted !440
  %120 = call i32 @NOT(i32 %119), !dbg !671, !psr.id !674, !ValueTainted !439, !PointTainted !440
  %121 = call i32 @MUX(i32 %120, i32 %115, i32 %117), !dbg !675, !psr.id !676, !ValueTainted !439, !PointTainted !440
  %122 = trunc i32 %121 to i8, !dbg !675, !psr.id !677, !ValueTainted !439, !PointTainted !440
  %123 = getelementptr inbounds [1 x i8], [1 x i8]* %10, i64 0, i64 0, !dbg !678, !psr.id !679, !PointTainted !440
  store i8 %122, i8* %123, align 1, !dbg !680, !psr.id !681
  %124 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 3, !dbg !682, !psr.id !683
  %125 = load void (%struct.br_hash_class_**, i8*, i64)*, void (%struct.br_hash_class_**, i8*, i64)** %124, align 8, !dbg !682, !psr.id !684
  %126 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !685, !psr.id !686
  %127 = getelementptr inbounds [1 x i8], [1 x i8]* %10, i64 0, i64 0, !dbg !687, !psr.id !688
  call void %125(%struct.br_hash_class_** %126, i8* %127, i64 1), !dbg !689, !psr.id !690
  %128 = sub i32 %29, 1, !dbg !691, !psr.id !693
  %129 = icmp eq i32 %92, %128, !dbg !694, !psr.id !695, !ValueTainted !439
  br i1 %129, label %130, label %139, !dbg !696, !psr.id !697, !Tainted !466

130:                                              ; preds = %112
  %131 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 5, !dbg !698, !psr.id !700
  %132 = load i64 (%struct.br_hash_class_**, i8*)*, i64 (%struct.br_hash_class_**, i8*)** %131, align 8, !dbg !698, !psr.id !701
  %133 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !702, !psr.id !703
  %134 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0, !dbg !704, !psr.id !705
  %135 = call i64 %132(%struct.br_hash_class_** %133, i8* %134), !dbg !706, !psr.id !707, !ValueTainted !439, !PointTainted !440
  %136 = call i32 @EQ(i32 %.05, i32 %65), !dbg !708, !psr.id !709, !ValueTainted !439, !PointTainted !440
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !710, !psr.id !711
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0, !dbg !712, !psr.id !713
  call void @br_ccopy(i32 %136, i8* %137, i8* %138, i64 %30), !dbg !714, !psr.id !715
  br label %139, !dbg !716, !psr.id !717

139:                                              ; preds = %130, %112
  br label %140, !dbg !718, !psr.id !719

140:                                              ; preds = %139
  %141 = add i32 %.05, 1, !dbg !720, !psr.id !721
  call void @llvm.dbg.value(metadata i32 %141, metadata !557, metadata !DIExpression()), !dbg !360, !psr.id !722
  br label %77, !dbg !723, !llvm.loop !724, !psr.id !727

142:                                              ; preds = %77
  %143 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 2, !dbg !728, !psr.id !729
  %144 = load void (%struct.br_hash_class_**)*, void (%struct.br_hash_class_**)** %143, align 8, !dbg !728, !psr.id !730
  %145 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !731, !psr.id !732
  call void %144(%struct.br_hash_class_** %145), !dbg !733, !psr.id !734
  %146 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 6, !dbg !735, !psr.id !736
  %147 = load void (%struct.br_hash_class_**, i8*, i64)*, void (%struct.br_hash_class_**, i8*, i64)** %146, align 8, !dbg !735, !psr.id !737
  %148 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !738, !psr.id !739
  %149 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 1, !dbg !740, !psr.id !741
  %150 = getelementptr inbounds [64 x i8], [64 x i8]* %149, i64 0, i64 0, !dbg !742, !psr.id !743
  %151 = zext i32 %29 to i64, !dbg !744, !psr.id !745
  call void %147(%struct.br_hash_class_** %148, i8* %150, i64 %151), !dbg !746, !psr.id !747
  %152 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 3, !dbg !748, !psr.id !749
  %153 = load void (%struct.br_hash_class_**, i8*, i64)*, void (%struct.br_hash_class_**, i8*, i64)** %152, align 8, !dbg !748, !psr.id !750
  %154 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !751, !psr.id !752
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !753, !psr.id !754
  call void %153(%struct.br_hash_class_** %154, i8* %155, i64 %30), !dbg !755, !psr.id !756
  %156 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %15, i32 0, i32 4, !dbg !757, !psr.id !758
  %157 = load void (%struct.br_hash_class_**, i8*)*, void (%struct.br_hash_class_**, i8*)** %156, align 8, !dbg !757, !psr.id !759
  %158 = bitcast %union.br_hash_compat_context* %7 to %struct.br_hash_class_**, !dbg !760, !psr.id !761
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !762, !psr.id !763
  call void %157(%struct.br_hash_class_** %158, i8* %159), !dbg !764, !psr.id !765
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0, !dbg !766, !psr.id !767
  %161 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 2, !dbg !768, !psr.id !769
  %162 = load i64, i64* %161, align 8, !dbg !768, !psr.id !770
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 16 %160, i64 %162, i1 false), !dbg !766, !psr.id !771
  %163 = getelementptr inbounds %struct.br_hmac_context, %struct.br_hmac_context* %0, i32 0, i32 2, !dbg !772, !psr.id !773
  %164 = load i64, i64* %163, align 8, !dbg !772, !psr.id !774
  ret i64 %164, !dbg !775, !psr.id !776
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @block_size(%struct.br_hash_class_* %0) #0 !dbg !777 {
  call void @llvm.dbg.value(metadata %struct.br_hash_class_* %0, metadata !780, metadata !DIExpression()), !dbg !781, !psr.id !782
  %2 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %0, i32 0, i32 1, !dbg !783, !psr.id !784
  %3 = load i32, i32* %2, align 8, !dbg !783, !psr.id !785
  %4 = lshr i32 %3, 23, !dbg !786, !psr.id !787
  %5 = and i32 %4, 15, !dbg !788, !psr.id !789
  call void @llvm.dbg.value(metadata i32 %5, metadata !790, metadata !DIExpression()), !dbg !781, !psr.id !791
  %6 = zext i32 %5 to i64, !dbg !792, !psr.id !793
  %7 = shl i64 1, %6, !dbg !792, !psr.id !794
  ret i64 %7, !dbg !795, !psr.id !796
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @hash_size(%struct.br_hash_class_* %0) #0 !dbg !797 {
  call void @llvm.dbg.value(metadata %struct.br_hash_class_* %0, metadata !798, metadata !DIExpression()), !dbg !799, !psr.id !800
  %2 = getelementptr inbounds %struct.br_hash_class_, %struct.br_hash_class_* %0, i32 0, i32 1, !dbg !801, !psr.id !802
  %3 = load i32, i32* %2, align 8, !dbg !801, !psr.id !803
  %4 = lshr i32 %3, 8, !dbg !804, !psr.id !805
  %5 = and i32 %4, 127, !dbg !806, !psr.id !807
  %6 = zext i32 %5 to i64, !dbg !808, !psr.id !809
  ret i64 %6, !dbg !810, !psr.id !811
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @EQ(i32 %0, i32 %1) #0 !dbg !812 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !816, metadata !DIExpression()), !dbg !817, !psr.id !818
  call void @llvm.dbg.value(metadata i32 %1, metadata !819, metadata !DIExpression()), !dbg !817, !psr.id !820
  %3 = xor i32 %0, %1, !dbg !821, !psr.id !822, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %3, metadata !823, metadata !DIExpression()), !dbg !817, !psr.id !824
  %4 = sub i32 0, %3, !dbg !825, !psr.id !826, !ValueTainted !439, !PointTainted !440
  %5 = or i32 %3, %4, !dbg !827, !psr.id !828, !ValueTainted !439, !PointTainted !440
  %6 = lshr i32 %5, 31, !dbg !829, !psr.id !830, !ValueTainted !439, !PointTainted !440
  %7 = call i32 @NOT(i32 %6), !dbg !831, !psr.id !832, !ValueTainted !439, !PointTainted !440
  ret i32 %7, !dbg !833, !psr.id !834
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @MUX(i32 %0, i32 %1, i32 %2) #0 !dbg !835 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !838, metadata !DIExpression()), !dbg !839, !psr.id !840
  call void @llvm.dbg.value(metadata i32 %1, metadata !841, metadata !DIExpression()), !dbg !839, !psr.id !842
  call void @llvm.dbg.value(metadata i32 %2, metadata !843, metadata !DIExpression()), !dbg !839, !psr.id !844
  %4 = sub i32 0, %0, !dbg !845, !psr.id !846, !ValueTainted !439, !PointTainted !440
  %5 = xor i32 %1, %2, !dbg !847, !psr.id !848, !ValueTainted !439, !PointTainted !440
  %6 = and i32 %4, %5, !dbg !849, !psr.id !850, !ValueTainted !439, !PointTainted !440
  %7 = xor i32 %2, %6, !dbg !851, !psr.id !852, !ValueTainted !439, !PointTainted !440
  ret i32 %7, !dbg !853, !psr.id !854
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GT(i32 %0, i32 %1) #0 !dbg !855 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !856, metadata !DIExpression()), !dbg !857, !psr.id !858
  call void @llvm.dbg.value(metadata i32 %1, metadata !859, metadata !DIExpression()), !dbg !857, !psr.id !860
  %3 = sub i32 %1, %0, !dbg !861, !psr.id !862, !ValueTainted !439, !PointTainted !440
  call void @llvm.dbg.value(metadata i32 %3, metadata !863, metadata !DIExpression()), !dbg !857, !psr.id !864
  %4 = xor i32 %0, %1, !dbg !865, !psr.id !866, !ValueTainted !439, !PointTainted !440
  %5 = xor i32 %0, %3, !dbg !867, !psr.id !868, !ValueTainted !439, !PointTainted !440
  %6 = and i32 %4, %5, !dbg !869, !psr.id !870, !ValueTainted !439, !PointTainted !440
  %7 = xor i32 %3, %6, !dbg !871, !psr.id !872, !ValueTainted !439, !PointTainted !440
  %8 = lshr i32 %7, 31, !dbg !873, !psr.id !874, !ValueTainted !439, !PointTainted !440
  ret i32 %8, !dbg !875, !psr.id !876
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @NOT(i32 %0) #0 !dbg !877 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !880, metadata !DIExpression()), !dbg !881, !psr.id !882
  %2 = xor i32 %0, 1, !dbg !883, !psr.id !884, !ValueTainted !439, !PointTainted !440
  ret i32 %2, !dbg !885, !psr.id !886
}

declare dso_local void @br_ccopy(i32, i8*, i8*, i64) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @hmac_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

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
!136 = !{!"0"}
!137 = !DILocalVariable(name: "data", arg: 2, scope: !23, file: !1, line: 4, type: !54)
!138 = !{!"1"}
!139 = !DILocalVariable(name: "len", arg: 3, scope: !23, file: !1, line: 4, type: !14)
!140 = !{!"2"}
!141 = !DILocalVariable(name: "min_len", arg: 4, scope: !23, file: !1, line: 4, type: !14)
!142 = !{!"3"}
!143 = !DILocalVariable(name: "max_len", arg: 5, scope: !23, file: !1, line: 4, type: !14)
!144 = !{!"4"}
!145 = !DILocalVariable(name: "out", arg: 6, scope: !23, file: !1, line: 5, type: !62)
!146 = !{!"5"}
!147 = !DILocation(line: 6, column: 12, scope: !23)
!148 = !{!"6"}
!149 = !DILocation(line: 6, column: 2, scope: !23)
!150 = !{!"7"}
!151 = !DILocation(line: 7, column: 12, scope: !23)
!152 = !{!"8"}
!153 = !DILocation(line: 7, column: 2, scope: !23)
!154 = !{!"9"}
!155 = !DILocation(line: 8, column: 12, scope: !23)
!156 = !{!"10"}
!157 = !DILocation(line: 8, column: 2, scope: !23)
!158 = !{!"11"}
!159 = !DILocation(line: 9, column: 12, scope: !23)
!160 = !{!"12"}
!161 = !DILocation(line: 9, column: 2, scope: !23)
!162 = !{!"13"}
!163 = !DILocation(line: 10, column: 12, scope: !23)
!164 = !{!"14"}
!165 = !DILocation(line: 10, column: 2, scope: !23)
!166 = !{!"15"}
!167 = !DILocation(line: 11, column: 12, scope: !23)
!168 = !{!"16"}
!169 = !DILocation(line: 11, column: 2, scope: !23)
!170 = !{!"17"}
!171 = !DILocation(line: 13, column: 31, scope: !23)
!172 = !{!"18"}
!173 = !DILocation(line: 13, column: 12, scope: !23)
!174 = !{!"19"}
!175 = !DILocation(line: 13, column: 2, scope: !23)
!176 = !{!"20"}
!177 = !DILocation(line: 14, column: 31, scope: !23)
!178 = !{!"21"}
!179 = !{!"22"}
!180 = !DILocation(line: 14, column: 12, scope: !23)
!181 = !{!"23"}
!182 = !DILocation(line: 14, column: 2, scope: !23)
!183 = !{!"24"}
!184 = !DILocation(line: 15, column: 31, scope: !23)
!185 = !{!"25"}
!186 = !DILocation(line: 15, column: 26, scope: !23)
!187 = !{!"26"}
!188 = !DILocation(line: 15, column: 12, scope: !23)
!189 = !{!"27"}
!190 = !DILocation(line: 15, column: 2, scope: !23)
!191 = !{!"28"}
!192 = !DILocation(line: 26, column: 12, scope: !23)
!193 = !{!"29"}
!194 = !DILocation(line: 26, column: 2, scope: !23)
!195 = !{!"30"}
!196 = !DILocation(line: 28, column: 2, scope: !23)
!197 = !{!"31"}
!198 = !DILocation(line: 30, column: 1, scope: !23)
!199 = !{!"32"}
!200 = distinct !DISubprogram(name: "vfct_tmp", scope: !1, file: !1, line: 33, type: !201, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !203, !26, !54, !14, !14, !14, !62}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!204 = !DILocalVariable(name: "k", arg: 1, scope: !200, file: !1, line: 33, type: !203)
!205 = !DILocation(line: 0, scope: !200)
!206 = !{!"33"}
!207 = !DILocalVariable(name: "ctx", arg: 2, scope: !200, file: !1, line: 33, type: !26)
!208 = !{!"34"}
!209 = !DILocalVariable(name: "data", arg: 3, scope: !200, file: !1, line: 34, type: !54)
!210 = !{!"35"}
!211 = !DILocalVariable(name: "len", arg: 4, scope: !200, file: !1, line: 34, type: !14)
!212 = !{!"36"}
!213 = !DILocalVariable(name: "min_len", arg: 5, scope: !200, file: !1, line: 34, type: !14)
!214 = !{!"37"}
!215 = !DILocalVariable(name: "max_len", arg: 6, scope: !200, file: !1, line: 34, type: !14)
!216 = !{!"38"}
!217 = !DILocalVariable(name: "out", arg: 7, scope: !200, file: !1, line: 35, type: !62)
!218 = !{!"39"}
!219 = !DILocation(line: 36, column: 2, scope: !200)
!220 = !{!"40"}
!221 = !DILocation(line: 38, column: 1, scope: !200)
!222 = !{!"41"}
!223 = distinct !DISubprogram(name: "hmac_wrapper_t", scope: !1, file: !1, line: 45, type: !224, scopeLine: 45, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!224 = !DISubroutineType(types: !225)
!225 = !{null}
!226 = !{!"42"}
!227 = !DILocalVariable(name: "cctx", scope: !223, file: !1, line: 46, type: !28)
!228 = !DILocation(line: 46, column: 18, scope: !223)
!229 = !{!"43"}
!230 = !DILocation(line: 46, column: 25, scope: !223)
!231 = !{!"44"}
!232 = !DILocalVariable(name: "ctx", scope: !223, file: !1, line: 47, type: !26)
!233 = !DILocation(line: 0, scope: !223)
!234 = !{!"45"}
!235 = !DILocation(line: 48, column: 21, scope: !223)
!236 = !{!"46"}
!237 = !DILocalVariable(name: "data", scope: !223, file: !1, line: 48, type: !54)
!238 = !{!"47"}
!239 = !DILocation(line: 49, column: 15, scope: !223)
!240 = !{!"48"}
!241 = !DILocalVariable(name: "len", scope: !223, file: !1, line: 49, type: !14)
!242 = !{!"49"}
!243 = !DILocation(line: 50, column: 19, scope: !223)
!244 = !{!"50"}
!245 = !DILocalVariable(name: "min_len", scope: !223, file: !1, line: 50, type: !14)
!246 = !{!"51"}
!247 = !DILocation(line: 51, column: 19, scope: !223)
!248 = !{!"52"}
!249 = !DILocalVariable(name: "max_len", scope: !223, file: !1, line: 51, type: !14)
!250 = !{!"53"}
!251 = !DILocation(line: 52, column: 14, scope: !223)
!252 = !{!"54"}
!253 = !DILocalVariable(name: "out", scope: !223, file: !1, line: 52, type: !62)
!254 = !{!"55"}
!255 = !DILocation(line: 53, column: 26, scope: !223)
!256 = !{!"56"}
!257 = !DILocation(line: 53, column: 21, scope: !223)
!258 = !{!"57"}
!259 = !DILocalVariable(name: "k", scope: !223, file: !1, line: 53, type: !203)
!260 = !{!"58"}
!261 = !DILocation(line: 54, column: 2, scope: !223)
!262 = !{!"59"}
!263 = !DILocation(line: 56, column: 1, scope: !223)
!264 = !{!"60"}
!265 = distinct !DISubprogram(name: "br_hmac_outCT", scope: !4, file: !4, line: 46, type: !266, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!266 = !DISubroutineType(types: !267)
!267 = !{!14, !268, !54, !14, !14, !14, !62}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_hmac_context", file: !29, line: 116, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 110, size: 2240, elements: !272)
!272 = !{!273, !353, !354}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dig", scope: !271, file: !29, line: 112, baseType: !274, size: 1664)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_hash_compat_context", file: !34, line: 1086, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !34, line: 1077, size: 1664, elements: !276)
!276 = !{!277, !308, !316, !324, !332, !334, !342, !344}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !275, file: !34, line: 1078, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_hash_class", file: !34, line: 221, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_hash_class_", file: !34, line: 222, size: 448, elements: !282)
!282 = !{!283, !284, !285, !290, !294, !300, !304}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !281, file: !34, line: 227, baseType: !14, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !281, file: !34, line: 257, baseType: !6, size: 32, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !281, file: !34, line: 269, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !281, file: !34, line: 285, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !289, !54, !14}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !281, file: !34, line: 300, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298, !62}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !34, line: 316, baseType: !301, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!11, !298, !62}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "set_state", scope: !281, file: !34, line: 327, baseType: !305, size: 64, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !289, !54, !11}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "md5", scope: !275, file: !34, line: 1079, baseType: !309, size: 768)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_md5_context", file: !34, line: 399, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 389, size: 768, elements: !311)
!311 = !{!312, !313, !314, !315}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !310, file: !34, line: 393, baseType: !278, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !310, file: !34, line: 395, baseType: !77, size: 512, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !310, file: !34, line: 396, baseType: !11, size: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !310, file: !34, line: 397, baseType: !82, size: 128, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sha1", scope: !275, file: !34, line: 1080, baseType: !317, size: 832)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha1_context", file: !34, line: 494, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 484, size: 832, elements: !319)
!319 = !{!320, !321, !322, !323}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !318, file: !34, line: 488, baseType: !278, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !318, file: !34, line: 490, baseType: !77, size: 512, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !318, file: !34, line: 491, baseType: !11, size: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !318, file: !34, line: 492, baseType: !93, size: 160, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sha224", scope: !275, file: !34, line: 1081, baseType: !325, size: 896)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha224_context", file: !34, line: 589, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 579, size: 896, elements: !327)
!327 = !{!328, !329, !330, !331}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !326, file: !34, line: 583, baseType: !278, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !326, file: !34, line: 585, baseType: !77, size: 512, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !326, file: !34, line: 586, baseType: !11, size: 64, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !326, file: !34, line: 587, baseType: !104, size: 256, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !275, file: !34, line: 1082, baseType: !333, size: 896)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha256_context", file: !34, line: 683, baseType: !325)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sha384", scope: !275, file: !34, line: 1083, baseType: !335, size: 1664)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha384_context", file: !34, line: 792, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 782, size: 1664, elements: !337)
!337 = !{!338, !339, !340, !341}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !336, file: !34, line: 786, baseType: !278, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !336, file: !34, line: 788, baseType: !115, size: 1024, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !336, file: !34, line: 789, baseType: !11, size: 64, offset: 1088)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !336, file: !34, line: 790, baseType: !120, size: 512, offset: 1152)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sha512", scope: !275, file: !34, line: 1084, baseType: !343, size: 1664)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_sha512_context", file: !34, line: 886, baseType: !335)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "md5sha1", scope: !275, file: !34, line: 1085, baseType: !345, size: 960)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_md5sha1_context", file: !34, line: 1006, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 995, size: 960, elements: !347)
!347 = !{!348, !349, !350, !351, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !346, file: !34, line: 999, baseType: !278, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !346, file: !34, line: 1001, baseType: !77, size: 512, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !346, file: !34, line: 1002, baseType: !11, size: 64, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "val_md5", scope: !346, file: !34, line: 1003, baseType: !82, size: 128, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "val_sha1", scope: !346, file: !34, line: 1004, baseType: !93, size: 160, offset: 768)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "kso", scope: !271, file: !29, line: 113, baseType: !77, size: 512, offset: 1664)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !271, file: !29, line: 114, baseType: !14, size: 64, offset: 2176)
!355 = !{!"61"}
!356 = !{!"62"}
!357 = !{!"63"}
!358 = !{!"64"}
!359 = !DILocalVariable(name: "ctx", arg: 1, scope: !265, file: !4, line: 46, type: !268)
!360 = !DILocation(line: 0, scope: !265)
!361 = !{!"65"}
!362 = !DILocalVariable(name: "data", arg: 2, scope: !265, file: !4, line: 47, type: !54)
!363 = !{!"66"}
!364 = !DILocalVariable(name: "len", arg: 3, scope: !265, file: !4, line: 47, type: !14)
!365 = !{!"67"}
!366 = !DILocalVariable(name: "min_len", arg: 4, scope: !265, file: !4, line: 47, type: !14)
!367 = !{!"68"}
!368 = !DILocalVariable(name: "max_len", arg: 5, scope: !265, file: !4, line: 47, type: !14)
!369 = !{!"69"}
!370 = !DILocalVariable(name: "out", arg: 6, scope: !265, file: !4, line: 48, type: !62)
!371 = !{!"70"}
!372 = !DILocalVariable(name: "hc", scope: !265, file: !4, line: 66, type: !274)
!373 = !DILocation(line: 66, column: 25, scope: !265)
!374 = !{!"71"}
!375 = !DILocalVariable(name: "tmp1", scope: !265, file: !4, line: 71, type: !77)
!376 = !DILocation(line: 71, column: 16, scope: !265)
!377 = !{!"72"}
!378 = !DILocalVariable(name: "tmp2", scope: !265, file: !4, line: 71, type: !77)
!379 = !DILocation(line: 71, column: 26, scope: !265)
!380 = !{!"73"}
!381 = !DILocation(line: 77, column: 12, scope: !265)
!382 = !{!"74"}
!383 = !{!"75"}
!384 = !{!"76"}
!385 = !{!"77"}
!386 = !DILocation(line: 82, column: 11, scope: !265)
!387 = !{!"78"}
!388 = !{!"79"}
!389 = !DILocalVariable(name: "dig", scope: !265, file: !4, line: 65, type: !278)
!390 = !{!"80"}
!391 = !DILocation(line: 83, column: 13, scope: !265)
!392 = !{!"81"}
!393 = !{!"82"}
!394 = !DILocation(line: 83, column: 18, scope: !265)
!395 = !{!"83"}
!396 = !DILocation(line: 83, column: 47, scope: !265)
!397 = !{!"84"}
!398 = !{!"85"}
!399 = !DILocalVariable(name: "be", scope: !265, file: !4, line: 67, type: !400)
!400 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!401 = !{!"86"}
!402 = !DILocalVariable(name: "po", scope: !265, file: !4, line: 68, type: !6)
!403 = !{!"87"}
!404 = !DILocation(line: 85, column: 11, scope: !405)
!405 = distinct !DILexicalBlock(scope: !265, file: !4, line: 85, column: 6)
!406 = !{!"88"}
!407 = !{!"89"}
!408 = !DILocation(line: 85, column: 16, scope: !405)
!409 = !{!"90"}
!410 = !{!"91"}
!411 = !DILocation(line: 85, column: 6, scope: !265)
!412 = !{!"92"}
!413 = !DILocation(line: 86, column: 6, scope: !414)
!414 = distinct !DILexicalBlock(scope: !405, file: !4, line: 85, column: 46)
!415 = !{!"93"}
!416 = !{!"94"}
!417 = !DILocation(line: 87, column: 2, scope: !414)
!418 = !{!"95"}
!419 = !{!"96"}
!420 = !{!"97"}
!421 = !DILocation(line: 88, column: 7, scope: !265)
!422 = !{!"98"}
!423 = !{!"99"}
!424 = !DILocalVariable(name: "bs", scope: !265, file: !4, line: 68, type: !6)
!425 = !{!"100"}
!426 = !DILocation(line: 89, column: 9, scope: !265)
!427 = !{!"101"}
!428 = !DILocalVariable(name: "hlen", scope: !265, file: !4, line: 72, type: !14)
!429 = !{!"102"}
!430 = !DILocation(line: 94, column: 15, scope: !265)
!431 = !{!"103"}
!432 = !{!"104"}
!433 = !DILocation(line: 94, column: 25, scope: !265)
!434 = !{!"105"}
!435 = !DILocation(line: 94, column: 33, scope: !265)
!436 = !{!"106"}
!437 = !DILocation(line: 94, column: 10, scope: !265)
!438 = !{!"107"}
!439 = !{!"ValueTainted"}
!440 = !{!"PointTainted"}
!441 = !DILocalVariable(name: "count", scope: !265, file: !4, line: 70, type: !11)
!442 = !{!"108"}
!443 = !DILocation(line: 95, column: 19, scope: !265)
!444 = !{!"109"}
!445 = !DILocation(line: 95, column: 36, scope: !265)
!446 = !{!"110"}
!447 = !DILocalVariable(name: "bit_len", scope: !265, file: !4, line: 70, type: !11)
!448 = !{!"111"}
!449 = !DILocation(line: 102, column: 18, scope: !265)
!450 = !{!"112"}
!451 = !DILocation(line: 102, column: 56, scope: !265)
!452 = !{!"113"}
!453 = !DILocation(line: 102, column: 42, scope: !265)
!454 = !{!"114"}
!455 = !DILocation(line: 102, column: 41, scope: !265)
!456 = !{!"115"}
!457 = !DILocation(line: 102, column: 39, scope: !265)
!458 = !{!"116"}
!459 = !DILocalVariable(name: "ncount", scope: !265, file: !4, line: 70, type: !11)
!460 = !{!"117"}
!461 = !DILocation(line: 103, column: 13, scope: !462)
!462 = distinct !DILexicalBlock(scope: !265, file: !4, line: 103, column: 6)
!463 = !{!"118"}
!464 = !DILocation(line: 103, column: 6, scope: !265)
!465 = !{!"119"}
!466 = !{!"Tainted"}
!467 = !DILocation(line: 106, column: 26, scope: !468)
!468 = distinct !DILexicalBlock(scope: !462, file: !4, line: 103, column: 22)
!469 = !{!"120"}
!470 = !DILocalVariable(name: "zlen", scope: !468, file: !4, line: 104, type: !14)
!471 = !DILocation(line: 0, scope: !468)
!472 = !{!"121"}
!473 = !DILocation(line: 107, column: 8, scope: !468)
!474 = !{!"122"}
!475 = !{!"123"}
!476 = !DILocation(line: 107, column: 19, scope: !468)
!477 = !{!"124"}
!478 = !DILocation(line: 107, column: 3, scope: !468)
!479 = !{!"125"}
!480 = !DILocation(line: 108, column: 38, scope: !468)
!481 = !{!"126"}
!482 = !{!"127"}
!483 = !DILocation(line: 109, column: 7, scope: !468)
!484 = !{!"128"}
!485 = !{!"129"}
!486 = !DILocation(line: 110, column: 11, scope: !468)
!487 = !{!"130"}
!488 = !{!"131"}
!489 = !{!"132"}
!490 = !DILocation(line: 112, column: 2, scope: !468)
!491 = !{!"133"}
!492 = !{!"134"}
!493 = !{!"135"}
!494 = !{!"136"}
!495 = !{!"137"}
!496 = !{!"138"}
!497 = !{!"139"}
!498 = !{!"140"}
!499 = !{!"141"}
!500 = !DILocation(line: 132, column: 7, scope: !265)
!501 = !{!"142"}
!502 = !DILocation(line: 132, column: 29, scope: !265)
!503 = !{!"143"}
!504 = !DILocation(line: 132, column: 23, scope: !265)
!505 = !{!"144"}
!506 = !DILocalVariable(name: "kr", scope: !265, file: !4, line: 69, type: !6)
!507 = !{!"145"}
!508 = !DILocation(line: 133, column: 14, scope: !265)
!509 = !{!"146"}
!510 = !DILocation(line: 133, column: 12, scope: !265)
!511 = !{!"147"}
!512 = !DILocation(line: 133, column: 28, scope: !265)
!513 = !{!"148"}
!514 = !DILocation(line: 133, column: 33, scope: !265)
!515 = !{!"149"}
!516 = !DILocation(line: 133, column: 38, scope: !265)
!517 = !{!"150"}
!518 = !DILocation(line: 133, column: 50, scope: !265)
!519 = !{!"151"}
!520 = !DILocation(line: 133, column: 45, scope: !265)
!521 = !{!"152"}
!522 = !DILocation(line: 133, column: 43, scope: !265)
!523 = !{!"153"}
!524 = !DILocation(line: 133, column: 56, scope: !265)
!525 = !{!"154"}
!526 = !DILocation(line: 133, column: 60, scope: !265)
!527 = !{!"155"}
!528 = !DILocalVariable(name: "kz", scope: !265, file: !4, line: 69, type: !6)
!529 = !{!"156"}
!530 = !DILocation(line: 134, column: 10, scope: !265)
!531 = !{!"157"}
!532 = !DILocalVariable(name: "kl", scope: !265, file: !4, line: 69, type: !6)
!533 = !{!"158"}
!534 = !DILocation(line: 135, column: 14, scope: !265)
!535 = !{!"159"}
!536 = !DILocation(line: 135, column: 12, scope: !265)
!537 = !{!"160"}
!538 = !DILocation(line: 135, column: 32, scope: !265)
!539 = !{!"161"}
!540 = !DILocation(line: 135, column: 37, scope: !265)
!541 = !{!"162"}
!542 = !DILocation(line: 135, column: 42, scope: !265)
!543 = !{!"163"}
!544 = !DILocation(line: 135, column: 54, scope: !265)
!545 = !{!"164"}
!546 = !DILocation(line: 135, column: 49, scope: !265)
!547 = !{!"165"}
!548 = !DILocation(line: 135, column: 47, scope: !265)
!549 = !{!"166"}
!550 = !DILocation(line: 135, column: 60, scope: !265)
!551 = !{!"167"}
!552 = !DILocalVariable(name: "km", scope: !265, file: !4, line: 69, type: !6)
!553 = !{!"168"}
!554 = !DILocation(line: 153, column: 2, scope: !265)
!555 = !{!"169"}
!556 = !{!"170"}
!557 = !DILocalVariable(name: "u", scope: !265, file: !4, line: 69, type: !6)
!558 = !{!"171"}
!559 = !DILocation(line: 154, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !265, file: !4, line: 154, column: 2)
!561 = !{!"172"}
!562 = !DILocation(line: 0, scope: !560)
!563 = !{!"173"}
!564 = !{!"174"}
!565 = !DILocation(line: 154, column: 16, scope: !566)
!566 = distinct !DILexicalBlock(scope: !560, file: !4, line: 154, column: 2)
!567 = !{!"175"}
!568 = !DILocation(line: 154, column: 2, scope: !560)
!569 = !{!"176"}
!570 = !DILocalVariable(name: "x", scope: !571, file: !4, line: 157, type: !572)
!571 = distinct !DILexicalBlock(scope: !566, file: !4, line: 154, column: 28)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 1)
!575 = !DILocation(line: 157, column: 17, scope: !571)
!576 = !{!"177"}
!577 = !DILocation(line: 159, column: 8, scope: !571)
!578 = !{!"178"}
!579 = !DILocation(line: 159, column: 10, scope: !571)
!580 = !{!"179"}
!581 = !DILocation(line: 159, column: 7, scope: !571)
!582 = !{!"180"}
!583 = !DILocation(line: 159, column: 23, scope: !571)
!584 = !{!"181"}
!585 = !{!"182"}
!586 = !{!"183"}
!587 = !{!"184"}
!588 = !{!"185"}
!589 = !{!"186"}
!590 = !{!"187"}
!591 = !DILocalVariable(name: "d", scope: !571, file: !4, line: 156, type: !6)
!592 = !DILocation(line: 0, scope: !571)
!593 = !{!"188"}
!594 = !DILocation(line: 160, column: 11, scope: !571)
!595 = !{!"189"}
!596 = !DILocation(line: 160, column: 22, scope: !571)
!597 = !{!"190"}
!598 = !DILocation(line: 160, column: 16, scope: !571)
!599 = !{!"191"}
!600 = !DILocalVariable(name: "v", scope: !571, file: !4, line: 155, type: !6)
!601 = !{!"192"}
!602 = !DILocation(line: 161, column: 16, scope: !603)
!603 = distinct !DILexicalBlock(scope: !571, file: !4, line: 161, column: 7)
!604 = !{!"193"}
!605 = !DILocation(line: 161, column: 9, scope: !603)
!606 = !{!"194"}
!607 = !DILocation(line: 161, column: 7, scope: !571)
!608 = !{!"195"}
!609 = !DILocation(line: 164, column: 17, scope: !610)
!610 = distinct !DILexicalBlock(scope: !603, file: !4, line: 161, column: 22)
!611 = !{!"196"}
!612 = !DILocation(line: 164, column: 11, scope: !610)
!613 = !{!"197"}
!614 = !DILocation(line: 164, column: 23, scope: !610)
!615 = !{!"198"}
!616 = !DILocalVariable(name: "j", scope: !610, file: !4, line: 162, type: !10)
!617 = !DILocation(line: 0, scope: !610)
!618 = !{!"199"}
!619 = !DILocation(line: 165, column: 8, scope: !620)
!620 = distinct !DILexicalBlock(scope: !610, file: !4, line: 165, column: 8)
!621 = !{!"200"}
!622 = !DILocation(line: 165, column: 8, scope: !610)
!623 = !{!"201"}
!624 = !DILocation(line: 166, column: 35, scope: !625)
!625 = distinct !DILexicalBlock(scope: !620, file: !4, line: 165, column: 12)
!626 = !{!"202"}
!627 = !DILocation(line: 166, column: 28, scope: !625)
!628 = !{!"203"}
!629 = !{!"204"}
!630 = !DILocation(line: 166, column: 9, scope: !625)
!631 = !{!"205"}
!632 = !DILocalVariable(name: "e", scope: !571, file: !4, line: 156, type: !6)
!633 = !{!"206"}
!634 = !DILocation(line: 167, column: 4, scope: !625)
!635 = !{!"207"}
!636 = !DILocation(line: 168, column: 28, scope: !637)
!637 = distinct !DILexicalBlock(scope: !620, file: !4, line: 167, column: 11)
!638 = !{!"208"}
!639 = !{!"209"}
!640 = !DILocation(line: 168, column: 9, scope: !637)
!641 = !{!"210"}
!642 = !{!"211"}
!643 = !{!"212"}
!644 = !DILocation(line: 0, scope: !620)
!645 = !{!"213"}
!646 = !{!"214"}
!647 = !DILocation(line: 170, column: 6, scope: !610)
!648 = !{!"215"}
!649 = !{!"216"}
!650 = !DILocation(line: 171, column: 3, scope: !610)
!651 = !{!"217"}
!652 = !{!"218"}
!653 = !{!"219"}
!654 = !DILocation(line: 0, scope: !603)
!655 = !{!"220"}
!656 = !{!"221"}
!657 = !DILocation(line: 174, column: 18, scope: !571)
!658 = !{!"222"}
!659 = !DILocation(line: 174, column: 12, scope: !571)
!660 = !{!"223"}
!661 = !DILocation(line: 174, column: 8, scope: !571)
!662 = !{!"224"}
!663 = !DILocalVariable(name: "x0", scope: !571, file: !4, line: 156, type: !6)
!664 = !{!"225"}
!665 = !DILocation(line: 175, column: 12, scope: !571)
!666 = !{!"226"}
!667 = !DILocation(line: 175, column: 8, scope: !571)
!668 = !{!"227"}
!669 = !DILocalVariable(name: "x1", scope: !571, file: !4, line: 156, type: !6)
!670 = !{!"228"}
!671 = !DILocation(line: 176, column: 14, scope: !571)
!672 = !{!"229"}
!673 = !{!"230"}
!674 = !{!"231"}
!675 = !DILocation(line: 176, column: 10, scope: !571)
!676 = !{!"232"}
!677 = !{!"233"}
!678 = !DILocation(line: 176, column: 3, scope: !571)
!679 = !{!"234"}
!680 = !DILocation(line: 176, column: 8, scope: !571)
!681 = !{!"235"}
!682 = !DILocation(line: 177, column: 8, scope: !571)
!683 = !{!"236"}
!684 = !{!"237"}
!685 = !DILocation(line: 177, column: 19, scope: !571)
!686 = !{!"238"}
!687 = !DILocation(line: 177, column: 27, scope: !571)
!688 = !{!"239"}
!689 = !DILocation(line: 177, column: 3, scope: !571)
!690 = !{!"240"}
!691 = !DILocation(line: 178, column: 16, scope: !692)
!692 = distinct !DILexicalBlock(scope: !571, file: !4, line: 178, column: 7)
!693 = !{!"241"}
!694 = !DILocation(line: 178, column: 9, scope: !692)
!695 = !{!"242"}
!696 = !DILocation(line: 178, column: 7, scope: !571)
!697 = !{!"243"}
!698 = !DILocation(line: 179, column: 9, scope: !699)
!699 = distinct !DILexicalBlock(scope: !692, file: !4, line: 178, column: 22)
!700 = !{!"244"}
!701 = !{!"245"}
!702 = !DILocation(line: 179, column: 19, scope: !699)
!703 = !{!"246"}
!704 = !DILocation(line: 179, column: 27, scope: !699)
!705 = !{!"247"}
!706 = !DILocation(line: 179, column: 4, scope: !699)
!707 = !{!"248"}
!708 = !DILocation(line: 180, column: 10, scope: !699)
!709 = !{!"249"}
!710 = !DILocation(line: 180, column: 21, scope: !699)
!711 = !{!"250"}
!712 = !DILocation(line: 180, column: 27, scope: !699)
!713 = !{!"251"}
!714 = !DILocation(line: 180, column: 4, scope: !699)
!715 = !{!"252"}
!716 = !DILocation(line: 181, column: 3, scope: !699)
!717 = !{!"253"}
!718 = !DILocation(line: 182, column: 2, scope: !571)
!719 = !{!"254"}
!720 = !DILocation(line: 154, column: 24, scope: !566)
!721 = !{!"255"}
!722 = !{!"256"}
!723 = !DILocation(line: 154, column: 2, scope: !566)
!724 = distinct !{!724, !568, !725, !726}
!725 = !DILocation(line: 182, column: 2, scope: !560)
!726 = !{!"llvm.loop.mustprogress"}
!727 = !{!"257"}
!728 = !DILocation(line: 187, column: 7, scope: !265)
!729 = !{!"258"}
!730 = !{!"259"}
!731 = !DILocation(line: 187, column: 16, scope: !265)
!732 = !{!"260"}
!733 = !DILocation(line: 187, column: 2, scope: !265)
!734 = !{!"261"}
!735 = !DILocation(line: 188, column: 7, scope: !265)
!736 = !{!"262"}
!737 = !{!"263"}
!738 = !DILocation(line: 188, column: 21, scope: !265)
!739 = !{!"264"}
!740 = !DILocation(line: 188, column: 34, scope: !265)
!741 = !{!"265"}
!742 = !DILocation(line: 188, column: 29, scope: !265)
!743 = !{!"266"}
!744 = !DILocation(line: 188, column: 39, scope: !265)
!745 = !{!"267"}
!746 = !DILocation(line: 188, column: 2, scope: !265)
!747 = !{!"268"}
!748 = !DILocation(line: 189, column: 7, scope: !265)
!749 = !{!"269"}
!750 = !{!"270"}
!751 = !DILocation(line: 189, column: 18, scope: !265)
!752 = !{!"271"}
!753 = !DILocation(line: 189, column: 26, scope: !265)
!754 = !{!"272"}
!755 = !DILocation(line: 189, column: 2, scope: !265)
!756 = !{!"273"}
!757 = !DILocation(line: 190, column: 7, scope: !265)
!758 = !{!"274"}
!759 = !{!"275"}
!760 = !DILocation(line: 190, column: 15, scope: !265)
!761 = !{!"276"}
!762 = !DILocation(line: 190, column: 23, scope: !265)
!763 = !{!"277"}
!764 = !DILocation(line: 190, column: 2, scope: !265)
!765 = !{!"278"}
!766 = !DILocation(line: 191, column: 2, scope: !265)
!767 = !{!"279"}
!768 = !DILocation(line: 191, column: 25, scope: !265)
!769 = !{!"280"}
!770 = !{!"281"}
!771 = !{!"282"}
!772 = !DILocation(line: 192, column: 14, scope: !265)
!773 = !{!"283"}
!774 = !{!"284"}
!775 = !DILocation(line: 192, column: 2, scope: !265)
!776 = !{!"285"}
!777 = distinct !DISubprogram(name: "block_size", scope: !4, file: !4, line: 35, type: !778, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!778 = !DISubroutineType(types: !779)
!779 = !{!14, !278}
!780 = !DILocalVariable(name: "dig", arg: 1, scope: !777, file: !4, line: 35, type: !278)
!781 = !DILocation(line: 0, scope: !777)
!782 = !{!"286"}
!783 = !DILocation(line: 39, column: 23, scope: !777)
!784 = !{!"287"}
!785 = !{!"288"}
!786 = !DILocation(line: 39, column: 28, scope: !777)
!787 = !{!"289"}
!788 = !DILocation(line: 40, column: 3, scope: !777)
!789 = !{!"290"}
!790 = !DILocalVariable(name: "ls", scope: !777, file: !4, line: 37, type: !10)
!791 = !{!"291"}
!792 = !DILocation(line: 41, column: 19, scope: !777)
!793 = !{!"292"}
!794 = !{!"293"}
!795 = !DILocation(line: 41, column: 2, scope: !777)
!796 = !{!"294"}
!797 = distinct !DISubprogram(name: "hash_size", scope: !4, file: !4, line: 28, type: !778, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!798 = !DILocalVariable(name: "dig", arg: 1, scope: !797, file: !4, line: 28, type: !278)
!799 = !DILocation(line: 0, scope: !797)
!800 = !{!"295"}
!801 = !DILocation(line: 30, column: 25, scope: !797)
!802 = !{!"296"}
!803 = !{!"297"}
!804 = !DILocation(line: 30, column: 30, scope: !797)
!805 = !{!"298"}
!806 = !DILocation(line: 31, column: 3, scope: !797)
!807 = !{!"299"}
!808 = !DILocation(line: 30, column: 9, scope: !797)
!809 = !{!"300"}
!810 = !DILocation(line: 30, column: 2, scope: !797)
!811 = !{!"301"}
!812 = distinct !DISubprogram(name: "EQ", scope: !813, file: !813, line: 779, type: !814, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!813 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/hmac")
!814 = !DISubroutineType(types: !815)
!815 = !{!6, !6, !6}
!816 = !DILocalVariable(name: "x", arg: 1, scope: !812, file: !813, line: 779, type: !6)
!817 = !DILocation(line: 0, scope: !812)
!818 = !{!"302"}
!819 = !DILocalVariable(name: "y", arg: 2, scope: !812, file: !813, line: 779, type: !6)
!820 = !{!"303"}
!821 = !DILocation(line: 783, column: 8, scope: !812)
!822 = !{!"304"}
!823 = !DILocalVariable(name: "q", scope: !812, file: !813, line: 781, type: !6)
!824 = !{!"305"}
!825 = !DILocation(line: 784, column: 18, scope: !812)
!826 = !{!"306"}
!827 = !DILocation(line: 784, column: 16, scope: !812)
!828 = !{!"307"}
!829 = !DILocation(line: 784, column: 22, scope: !812)
!830 = !{!"308"}
!831 = !DILocation(line: 784, column: 9, scope: !812)
!832 = !{!"309"}
!833 = !DILocation(line: 784, column: 2, scope: !812)
!834 = !{!"310"}
!835 = distinct !DISubprogram(name: "MUX", scope: !813, file: !813, line: 770, type: !836, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!836 = !DISubroutineType(types: !837)
!837 = !{!6, !6, !6, !6}
!838 = !DILocalVariable(name: "ctl", arg: 1, scope: !835, file: !813, line: 770, type: !6)
!839 = !DILocation(line: 0, scope: !835)
!840 = !{!"311"}
!841 = !DILocalVariable(name: "x", arg: 2, scope: !835, file: !813, line: 770, type: !6)
!842 = !{!"312"}
!843 = !DILocalVariable(name: "y", arg: 3, scope: !835, file: !813, line: 770, type: !6)
!844 = !{!"313"}
!845 = !DILocation(line: 772, column: 14, scope: !835)
!846 = !{!"314"}
!847 = !DILocation(line: 772, column: 24, scope: !835)
!848 = !{!"315"}
!849 = !DILocation(line: 772, column: 19, scope: !835)
!850 = !{!"316"}
!851 = !DILocation(line: 772, column: 11, scope: !835)
!852 = !{!"317"}
!853 = !DILocation(line: 772, column: 2, scope: !835)
!854 = !{!"318"}
!855 = distinct !DISubprogram(name: "GT", scope: !813, file: !813, line: 803, type: !814, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!856 = !DILocalVariable(name: "x", arg: 1, scope: !855, file: !813, line: 803, type: !6)
!857 = !DILocation(line: 0, scope: !855)
!858 = !{!"319"}
!859 = !DILocalVariable(name: "y", arg: 2, scope: !855, file: !813, line: 803, type: !6)
!860 = !{!"320"}
!861 = !DILocation(line: 819, column: 8, scope: !855)
!862 = !{!"321"}
!863 = !DILocalVariable(name: "z", scope: !855, file: !813, line: 817, type: !6)
!864 = !{!"322"}
!865 = !DILocation(line: 820, column: 18, scope: !855)
!866 = !{!"323"}
!867 = !DILocation(line: 820, column: 28, scope: !855)
!868 = !{!"324"}
!869 = !DILocation(line: 820, column: 23, scope: !855)
!870 = !{!"325"}
!871 = !DILocation(line: 820, column: 12, scope: !855)
!872 = !{!"326"}
!873 = !DILocation(line: 820, column: 35, scope: !855)
!874 = !{!"327"}
!875 = !DILocation(line: 820, column: 2, scope: !855)
!876 = !{!"328"}
!877 = distinct !DISubprogram(name: "NOT", scope: !813, file: !813, line: 761, type: !878, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!878 = !DISubroutineType(types: !879)
!879 = !{!6, !6}
!880 = !DILocalVariable(name: "ctl", arg: 1, scope: !877, file: !813, line: 761, type: !6)
!881 = !DILocation(line: 0, scope: !877)
!882 = !{!"329"}
!883 = !DILocation(line: 763, column: 13, scope: !877)
!884 = !{!"330"}
!885 = !DILocation(line: 763, column: 2, scope: !877)
!886 = !{!"331"}
