; ModuleID = 'br_ghash_pclmul-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }
%struct.__loadu_si128 = type { <2 x i64> }

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_pclmul_wrapper(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #0 !dbg !42 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !50, metadata !DIExpression()), !dbg !51, !psr.id !52
  call void @llvm.dbg.value(metadata i8* %1, metadata !53, metadata !DIExpression()), !dbg !51, !psr.id !54
  call void @llvm.dbg.value(metadata i8* %2, metadata !55, metadata !DIExpression()), !dbg !51, !psr.id !56
  call void @llvm.dbg.value(metadata i64 %3, metadata !57, metadata !DIExpression()), !dbg !51, !psr.id !58
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !59, !psr.id !60
  call void @public_in(%struct.smack_value* %5), !dbg !61, !psr.id !62
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !63, !psr.id !64
  call void @public_in(%struct.smack_value* %6), !dbg !65, !psr.id !66
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !67, !psr.id !68
  call void @public_in(%struct.smack_value* %7), !dbg !69, !psr.id !70
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !71, !psr.id !72
  call void @public_in(%struct.smack_value* %8), !dbg !73, !psr.id !74
  %9 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !75, !psr.id !76
  call void @public_in(%struct.smack_value* %9), !dbg !77, !psr.id !78
  %10 = call %struct.smack_value* @__SMACK_values(i8* %0, i32 32), !dbg !79, !psr.id !80
  call void @public_in(%struct.smack_value* %10), !dbg !81, !psr.id !82
  call void @br_ghash_pclmul(i8* %0, i8* %1, i8* %2, i64 %3), !dbg !83, !psr.id !84
  ret void, !dbg !85, !psr.id !86
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_pclmul_wrapper_t() #0 !dbg !87 {
  %1 = call i8* (...) @gety(), !dbg !90, !psr.id !91
  call void @llvm.dbg.value(metadata i8* %1, metadata !92, metadata !DIExpression()), !dbg !93, !psr.id !94
  %2 = call i8* (...) @geth(), !dbg !95, !psr.id !96
  call void @llvm.dbg.value(metadata i8* %2, metadata !97, metadata !DIExpression()), !dbg !93, !psr.id !98
  %3 = call i8* (...) @getdata(), !dbg !99, !psr.id !100
  call void @llvm.dbg.value(metadata i8* %3, metadata !101, metadata !DIExpression()), !dbg !93, !psr.id !102
  %4 = call i64 (...) @getlen(), !dbg !103, !psr.id !104
  call void @llvm.dbg.value(metadata i64 %4, metadata !105, metadata !DIExpression()), !dbg !93, !psr.id !106
  call void @br_ghash_pclmul(i8* %1, i8* %2, i8* %3, i64 %4), !dbg !107, !psr.id !108
  ret void, !dbg !109, !psr.id !110
}

declare dso_local i8* @gety(...) #2

declare dso_local i8* @geth(...) #2

declare dso_local i8* @getdata(...) #2

declare dso_local i64 @getlen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void (i8*, i8*, i8*, i64)* @br_ghash_pclmul_get() #0 !dbg !111 {
  %1 = call i32 @pclmul_supported(), !dbg !117, !psr.id !118
  %2 = icmp ne i32 %1, 0, !dbg !117, !psr.id !119
  %3 = zext i1 %2 to i64, !dbg !117, !psr.id !120
  %4 = select i1 %2, void (i8*, i8*, i8*, i64)* @br_ghash_pclmul, void (i8*, i8*, i8*, i64)* null, !dbg !117, !psr.id !121
  ret void (i8*, i8*, i8*, i64)* %4, !dbg !122, !psr.id !123
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pclmul_supported() #0 !dbg !124 {
  %1 = call i32 @br_cpuid(i32 0, i32 0, i32 2, i32 0), !dbg !127, !psr.id !128
  ret i32 %1, !dbg !129, !psr.id !130
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_ghash_pclmul(i8* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #3 !dbg !131 {
  %5 = alloca [64 x i8], align 16, !psr.id !132
  call void @llvm.dbg.value(metadata i8* %0, metadata !133, metadata !DIExpression()), !dbg !134, !psr.id !135
  call void @llvm.dbg.value(metadata i8* %1, metadata !136, metadata !DIExpression()), !dbg !134, !psr.id !137
  call void @llvm.dbg.value(metadata i8* %2, metadata !138, metadata !DIExpression()), !dbg !134, !psr.id !139
  call void @llvm.dbg.value(metadata i64 %3, metadata !140, metadata !DIExpression()), !dbg !134, !psr.id !141
  call void @llvm.dbg.declare(metadata [64 x i8]* %5, metadata !142, metadata !DIExpression()), !dbg !147, !psr.id !148
  call void @llvm.dbg.value(metadata i8* %2, metadata !149, metadata !DIExpression()), !dbg !134, !psr.id !152
  %6 = lshr i64 %3, 6, !dbg !153, !psr.id !154
  call void @llvm.dbg.value(metadata i64 %6, metadata !155, metadata !DIExpression()), !dbg !134, !psr.id !156
  %7 = and i64 %3, 63, !dbg !157, !psr.id !158
  call void @llvm.dbg.value(metadata i64 %7, metadata !140, metadata !DIExpression()), !dbg !134, !psr.id !159
  %8 = shl i64 %6, 6, !dbg !160, !psr.id !161
  %9 = getelementptr inbounds i8, i8* %2, i64 %8, !dbg !162, !psr.id !163
  call void @llvm.dbg.value(metadata i8* %9, metadata !164, metadata !DIExpression()), !dbg !134, !psr.id !165
  %10 = add i64 %7, 15, !dbg !166, !psr.id !167
  %11 = lshr i64 %10, 4, !dbg !168, !psr.id !169
  call void @llvm.dbg.value(metadata i64 %11, metadata !170, metadata !DIExpression()), !dbg !134, !psr.id !171
  %12 = and i64 %7, 15, !dbg !172, !psr.id !174
  %13 = icmp ne i64 %12, 0, !dbg !175, !psr.id !176
  br i1 %13, label %14, label %21, !dbg !177, !psr.id !178

14:                                               ; preds = %4
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !179, !psr.id !181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 1 %9, i64 %7, i1 false), !dbg !179, !psr.id !182
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !183, !psr.id !184
  %17 = getelementptr inbounds i8, i8* %16, i64 %7, !dbg !185, !psr.id !186
  %18 = shl i64 %11, 4, !dbg !187, !psr.id !188
  %19 = sub i64 %18, %7, !dbg !189, !psr.id !190
  call void @llvm.memset.p0i8.i64(i8* align 1 %17, i8 0, i64 %19, i1 false), !dbg !191, !psr.id !192
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !193, !psr.id !194
  call void @llvm.dbg.value(metadata i8* %20, metadata !164, metadata !DIExpression()), !dbg !134, !psr.id !195
  br label %21, !dbg !196, !psr.id !197

21:                                               ; preds = %14, %4
  %.03 = phi i8* [ %20, %14 ], [ %9, %4 ], !dbg !134, !psr.id !198
  call void @llvm.dbg.value(metadata i8* %.03, metadata !164, metadata !DIExpression()), !dbg !134, !psr.id !199
  br label %22, !dbg !200, !psr.id !201

22:                                               ; preds = %21
  %23 = insertelement <16 x i8> undef, i8 15, i32 0, !dbg !202, !psr.id !204
  %24 = insertelement <16 x i8> %23, i8 14, i32 1, !dbg !202, !psr.id !205
  %25 = insertelement <16 x i8> %24, i8 13, i32 2, !dbg !202, !psr.id !206
  %26 = insertelement <16 x i8> %25, i8 12, i32 3, !dbg !202, !psr.id !207
  %27 = insertelement <16 x i8> %26, i8 11, i32 4, !dbg !202, !psr.id !208
  %28 = insertelement <16 x i8> %27, i8 10, i32 5, !dbg !202, !psr.id !209
  %29 = insertelement <16 x i8> %28, i8 9, i32 6, !dbg !202, !psr.id !210
  %30 = insertelement <16 x i8> %29, i8 8, i32 7, !dbg !202, !psr.id !211
  %31 = insertelement <16 x i8> %30, i8 7, i32 8, !dbg !202, !psr.id !212
  %32 = insertelement <16 x i8> %31, i8 6, i32 9, !dbg !202, !psr.id !213
  %33 = insertelement <16 x i8> %32, i8 5, i32 10, !dbg !202, !psr.id !214
  %34 = insertelement <16 x i8> %33, i8 4, i32 11, !dbg !202, !psr.id !215
  %35 = insertelement <16 x i8> %34, i8 3, i32 12, !dbg !202, !psr.id !216
  %36 = insertelement <16 x i8> %35, i8 2, i32 13, !dbg !202, !psr.id !217
  %37 = insertelement <16 x i8> %36, i8 1, i32 14, !dbg !202, !psr.id !218
  %38 = insertelement <16 x i8> %37, i8 0, i32 15, !dbg !202, !psr.id !219
  %39 = bitcast <16 x i8> %38 to <2 x i64>, !dbg !202, !psr.id !220
  call void @llvm.dbg.value(metadata <2 x i64> %39, metadata !221, metadata !DIExpression()), !dbg !134, !psr.id !222
  br label %40, !dbg !202, !psr.id !223

40:                                               ; preds = %22
  %41 = bitcast i8* %0 to <2 x i64>*, !dbg !224, !psr.id !225
  %42 = bitcast <2 x i64>* %41 to %struct.__loadu_si128*, !dbg !226, !psr.id !227
  %43 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %42, i32 0, i32 0, !dbg !226, !psr.id !228
  %44 = load <2 x i64>, <2 x i64>* %43, align 1, !dbg !226, !psr.id !229
  call void @llvm.dbg.value(metadata <2 x i64> %44, metadata !230, metadata !DIExpression()), !dbg !134, !psr.id !231
  %45 = bitcast i8* %1 to <2 x i64>*, !dbg !232, !psr.id !233
  %46 = bitcast <2 x i64>* %45 to %struct.__loadu_si128*, !dbg !234, !psr.id !235
  %47 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %46, i32 0, i32 0, !dbg !234, !psr.id !236
  %48 = load <2 x i64>, <2 x i64>* %47, align 1, !dbg !234, !psr.id !237
  call void @llvm.dbg.value(metadata <2 x i64> %48, metadata !238, metadata !DIExpression()), !dbg !134, !psr.id !239
  br label %49, !dbg !240, !psr.id !241

49:                                               ; preds = %40
  %50 = bitcast <2 x i64> %44 to <16 x i8>, !dbg !242, !psr.id !244
  %51 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !242, !psr.id !245
  %52 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %50, <16 x i8> %51) #8, !dbg !242, !psr.id !246
  %53 = bitcast <16 x i8> %52 to <2 x i64>, !dbg !242, !psr.id !247
  call void @llvm.dbg.value(metadata <2 x i64> %53, metadata !230, metadata !DIExpression()), !dbg !134, !psr.id !248
  br label %54, !dbg !242, !psr.id !249

54:                                               ; preds = %49
  br label %55, !dbg !250, !psr.id !251

55:                                               ; preds = %54
  %56 = bitcast <2 x i64> %48 to <16 x i8>, !dbg !252, !psr.id !254
  %57 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !252, !psr.id !255
  %58 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %56, <16 x i8> %57) #8, !dbg !252, !psr.id !256
  %59 = bitcast <16 x i8> %58 to <2 x i64>, !dbg !252, !psr.id !257
  call void @llvm.dbg.value(metadata <2 x i64> %59, metadata !238, metadata !DIExpression()), !dbg !134, !psr.id !258
  br label %60, !dbg !252, !psr.id !259

60:                                               ; preds = %55
  br label %61, !dbg !260, !psr.id !261

61:                                               ; preds = %60
  %62 = bitcast <2 x i64> %59 to <4 x i32>, !dbg !262, !psr.id !264
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !262, !psr.id !265
  %64 = bitcast <4 x i32> %63 to <2 x i64>, !dbg !262, !psr.id !266
  %65 = xor <2 x i64> %59, %64, !dbg !262, !psr.id !267
  call void @llvm.dbg.value(metadata <2 x i64> %65, metadata !268, metadata !DIExpression()), !dbg !134, !psr.id !269
  br label %66, !dbg !262, !psr.id !270

66:                                               ; preds = %61
  %67 = icmp ugt i64 %6, 0, !dbg !271, !psr.id !273
  br i1 %67, label %68, label %387, !dbg !274, !psr.id !275

68:                                               ; preds = %66
  br label %69, !dbg !276, !psr.id !278

69:                                               ; preds = %68
  %70 = call <2 x i64> @pclmulqdq11(<2 x i64> %59, <2 x i64> %59), !dbg !279, !psr.id !281
  call void @llvm.dbg.value(metadata <2 x i64> %70, metadata !282, metadata !DIExpression()), !dbg !283, !psr.id !284
  %71 = call <2 x i64> @pclmulqdq00(<2 x i64> %59, <2 x i64> %59), !dbg !279, !psr.id !285
  call void @llvm.dbg.value(metadata <2 x i64> %71, metadata !286, metadata !DIExpression()), !dbg !283, !psr.id !287
  %72 = bitcast <2 x i64> %70 to <4 x i32>, !dbg !279, !psr.id !288
  %73 = shufflevector <4 x i32> %72, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !279, !psr.id !289
  %74 = bitcast <4 x i32> %73 to <2 x i64>, !dbg !279, !psr.id !290
  call void @llvm.dbg.value(metadata <2 x i64> %74, metadata !291, metadata !DIExpression()), !dbg !283, !psr.id !292
  %75 = bitcast <2 x i64> %71 to <4 x i32>, !dbg !279, !psr.id !293
  %76 = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !279, !psr.id !294
  %77 = bitcast <4 x i32> %76 to <2 x i64>, !dbg !279, !psr.id !295
  call void @llvm.dbg.value(metadata <2 x i64> %77, metadata !296, metadata !DIExpression()), !dbg !283, !psr.id !297
  br label %78, !dbg !279, !psr.id !298

78:                                               ; preds = %69
  %79 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %74, i32 1) #8, !dbg !299, !psr.id !301
  %80 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %70, i32 63) #8, !dbg !299, !psr.id !302
  %81 = or <2 x i64> %79, %80, !dbg !299, !psr.id !303
  call void @llvm.dbg.value(metadata <2 x i64> %81, metadata !291, metadata !DIExpression()), !dbg !283, !psr.id !304
  %82 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %70, i32 1) #8, !dbg !299, !psr.id !305
  %83 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %77, i32 63) #8, !dbg !299, !psr.id !306
  %84 = or <2 x i64> %82, %83, !dbg !299, !psr.id !307
  call void @llvm.dbg.value(metadata <2 x i64> %84, metadata !282, metadata !DIExpression()), !dbg !283, !psr.id !308
  %85 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %77, i32 1) #8, !dbg !299, !psr.id !309
  %86 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %71, i32 63) #8, !dbg !299, !psr.id !310
  %87 = or <2 x i64> %85, %86, !dbg !299, !psr.id !311
  call void @llvm.dbg.value(metadata <2 x i64> %87, metadata !296, metadata !DIExpression()), !dbg !283, !psr.id !312
  %88 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %71, i32 1) #8, !dbg !299, !psr.id !313
  call void @llvm.dbg.value(metadata <2 x i64> %88, metadata !286, metadata !DIExpression()), !dbg !283, !psr.id !314
  br label %89, !dbg !299, !psr.id !315

89:                                               ; preds = %78
  br label %90, !dbg !279, !psr.id !316

90:                                               ; preds = %89
  %91 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %88, i32 1) #8, !dbg !317, !psr.id !319
  %92 = xor <2 x i64> %88, %91, !dbg !317, !psr.id !320
  %93 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %88, i32 2) #8, !dbg !317, !psr.id !321
  %94 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %88, i32 7) #8, !dbg !317, !psr.id !322
  %95 = xor <2 x i64> %93, %94, !dbg !317, !psr.id !323
  %96 = xor <2 x i64> %92, %95, !dbg !317, !psr.id !324
  %97 = xor <2 x i64> %84, %96, !dbg !317, !psr.id !325
  call void @llvm.dbg.value(metadata <2 x i64> %97, metadata !282, metadata !DIExpression()), !dbg !283, !psr.id !326
  %98 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %88, i32 63) #8, !dbg !317, !psr.id !327
  %99 = xor <2 x i64> %87, %98, !dbg !317, !psr.id !328
  %100 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %88, i32 62) #8, !dbg !317, !psr.id !329
  %101 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %88, i32 57) #8, !dbg !317, !psr.id !330
  %102 = xor <2 x i64> %100, %101, !dbg !317, !psr.id !331
  %103 = xor <2 x i64> %99, %102, !dbg !317, !psr.id !332
  call void @llvm.dbg.value(metadata <2 x i64> %103, metadata !296, metadata !DIExpression()), !dbg !283, !psr.id !333
  %104 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %103, i32 1) #8, !dbg !317, !psr.id !334
  %105 = xor <2 x i64> %103, %104, !dbg !317, !psr.id !335
  %106 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %103, i32 2) #8, !dbg !317, !psr.id !336
  %107 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %103, i32 7) #8, !dbg !317, !psr.id !337
  %108 = xor <2 x i64> %106, %107, !dbg !317, !psr.id !338
  %109 = xor <2 x i64> %105, %108, !dbg !317, !psr.id !339
  %110 = xor <2 x i64> %81, %109, !dbg !317, !psr.id !340
  call void @llvm.dbg.value(metadata <2 x i64> %110, metadata !291, metadata !DIExpression()), !dbg !283, !psr.id !341
  %111 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %103, i32 63) #8, !dbg !317, !psr.id !342
  %112 = xor <2 x i64> %97, %111, !dbg !317, !psr.id !343
  %113 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %103, i32 62) #8, !dbg !317, !psr.id !344
  %114 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %103, i32 57) #8, !dbg !317, !psr.id !345
  %115 = xor <2 x i64> %113, %114, !dbg !317, !psr.id !346
  %116 = xor <2 x i64> %112, %115, !dbg !317, !psr.id !347
  call void @llvm.dbg.value(metadata <2 x i64> %116, metadata !282, metadata !DIExpression()), !dbg !283, !psr.id !348
  br label %117, !dbg !317, !psr.id !349

117:                                              ; preds = %90
  br label %118, !dbg !279, !psr.id !350

118:                                              ; preds = %117
  %119 = shufflevector <2 x i64> %116, <2 x i64> %110, <2 x i32> <i32 0, i32 2>, !dbg !351, !psr.id !353
  call void @llvm.dbg.value(metadata <2 x i64> %119, metadata !354, metadata !DIExpression()), !dbg !355, !psr.id !356
  %120 = xor <2 x i64> %110, %116, !dbg !351, !psr.id !357
  call void @llvm.dbg.value(metadata <2 x i64> %120, metadata !358, metadata !DIExpression()), !dbg !355, !psr.id !359
  br label %121, !dbg !351, !psr.id !360

121:                                              ; preds = %118
  br label %122, !dbg !279, !psr.id !361

122:                                              ; preds = %121
  %123 = call <2 x i64> @pclmulqdq11(<2 x i64> %59, <2 x i64> %119), !dbg !362, !psr.id !363
  call void @llvm.dbg.value(metadata <2 x i64> %123, metadata !364, metadata !DIExpression()), !dbg !355, !psr.id !365
  %124 = call <2 x i64> @pclmulqdq00(<2 x i64> %59, <2 x i64> %119), !dbg !366, !psr.id !367
  call void @llvm.dbg.value(metadata <2 x i64> %124, metadata !368, metadata !DIExpression()), !dbg !355, !psr.id !369
  %125 = call <2 x i64> @pclmulqdq00(<2 x i64> %65, <2 x i64> %120), !dbg !370, !psr.id !371
  %126 = xor <2 x i64> %123, %124, !dbg !372, !psr.id !373
  %127 = xor <2 x i64> %125, %126, !dbg !374, !psr.id !375
  call void @llvm.dbg.value(metadata <2 x i64> %127, metadata !376, metadata !DIExpression()), !dbg !355, !psr.id !377
  %128 = bitcast <2 x i64> %123 to <4 x i32>, !dbg !378, !psr.id !379
  %129 = shufflevector <4 x i32> %128, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !378, !psr.id !380
  %130 = bitcast <4 x i32> %129 to <2 x i64>, !dbg !378, !psr.id !381
  call void @llvm.dbg.value(metadata <2 x i64> %130, metadata !382, metadata !DIExpression()), !dbg !355, !psr.id !383
  %131 = bitcast <2 x i64> %127 to <4 x i32>, !dbg !384, !psr.id !385
  %132 = shufflevector <4 x i32> %131, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !384, !psr.id !386
  %133 = bitcast <4 x i32> %132 to <2 x i64>, !dbg !384, !psr.id !387
  %134 = xor <2 x i64> %123, %133, !dbg !388, !psr.id !389
  call void @llvm.dbg.value(metadata <2 x i64> %134, metadata !364, metadata !DIExpression()), !dbg !355, !psr.id !390
  %135 = bitcast <2 x i64> %124 to <4 x i32>, !dbg !391, !psr.id !392
  %136 = shufflevector <4 x i32> %135, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !391, !psr.id !393
  %137 = bitcast <4 x i32> %136 to <2 x i64>, !dbg !391, !psr.id !394
  %138 = xor <2 x i64> %127, %137, !dbg !395, !psr.id !396
  call void @llvm.dbg.value(metadata <2 x i64> %138, metadata !376, metadata !DIExpression()), !dbg !355, !psr.id !397
  br label %139, !dbg !398, !psr.id !399

139:                                              ; preds = %122
  %140 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %130, i32 1) #8, !dbg !400, !psr.id !402
  %141 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %134, i32 63) #8, !dbg !400, !psr.id !403
  %142 = or <2 x i64> %140, %141, !dbg !400, !psr.id !404
  call void @llvm.dbg.value(metadata <2 x i64> %142, metadata !382, metadata !DIExpression()), !dbg !355, !psr.id !405
  %143 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %134, i32 1) #8, !dbg !400, !psr.id !406
  %144 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %138, i32 63) #8, !dbg !400, !psr.id !407
  %145 = or <2 x i64> %143, %144, !dbg !400, !psr.id !408
  call void @llvm.dbg.value(metadata <2 x i64> %145, metadata !364, metadata !DIExpression()), !dbg !355, !psr.id !409
  %146 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %138, i32 1) #8, !dbg !400, !psr.id !410
  %147 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %124, i32 63) #8, !dbg !400, !psr.id !411
  %148 = or <2 x i64> %146, %147, !dbg !400, !psr.id !412
  call void @llvm.dbg.value(metadata <2 x i64> %148, metadata !376, metadata !DIExpression()), !dbg !355, !psr.id !413
  %149 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %124, i32 1) #8, !dbg !400, !psr.id !414
  call void @llvm.dbg.value(metadata <2 x i64> %149, metadata !368, metadata !DIExpression()), !dbg !355, !psr.id !415
  br label %150, !dbg !400, !psr.id !416

150:                                              ; preds = %139
  br label %151, !dbg !417, !psr.id !418

151:                                              ; preds = %150
  %152 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %149, i32 1) #8, !dbg !419, !psr.id !421
  %153 = xor <2 x i64> %149, %152, !dbg !419, !psr.id !422
  %154 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %149, i32 2) #8, !dbg !419, !psr.id !423
  %155 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %149, i32 7) #8, !dbg !419, !psr.id !424
  %156 = xor <2 x i64> %154, %155, !dbg !419, !psr.id !425
  %157 = xor <2 x i64> %153, %156, !dbg !419, !psr.id !426
  %158 = xor <2 x i64> %145, %157, !dbg !419, !psr.id !427
  call void @llvm.dbg.value(metadata <2 x i64> %158, metadata !364, metadata !DIExpression()), !dbg !355, !psr.id !428
  %159 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %149, i32 63) #8, !dbg !419, !psr.id !429
  %160 = xor <2 x i64> %148, %159, !dbg !419, !psr.id !430
  %161 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %149, i32 62) #8, !dbg !419, !psr.id !431
  %162 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %149, i32 57) #8, !dbg !419, !psr.id !432
  %163 = xor <2 x i64> %161, %162, !dbg !419, !psr.id !433
  %164 = xor <2 x i64> %160, %163, !dbg !419, !psr.id !434
  call void @llvm.dbg.value(metadata <2 x i64> %164, metadata !376, metadata !DIExpression()), !dbg !355, !psr.id !435
  %165 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %164, i32 1) #8, !dbg !419, !psr.id !436
  %166 = xor <2 x i64> %164, %165, !dbg !419, !psr.id !437
  %167 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %164, i32 2) #8, !dbg !419, !psr.id !438
  %168 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %164, i32 7) #8, !dbg !419, !psr.id !439
  %169 = xor <2 x i64> %167, %168, !dbg !419, !psr.id !440
  %170 = xor <2 x i64> %166, %169, !dbg !419, !psr.id !441
  %171 = xor <2 x i64> %142, %170, !dbg !419, !psr.id !442
  call void @llvm.dbg.value(metadata <2 x i64> %171, metadata !382, metadata !DIExpression()), !dbg !355, !psr.id !443
  %172 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %164, i32 63) #8, !dbg !419, !psr.id !444
  %173 = xor <2 x i64> %158, %172, !dbg !419, !psr.id !445
  %174 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %164, i32 62) #8, !dbg !419, !psr.id !446
  %175 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %164, i32 57) #8, !dbg !419, !psr.id !447
  %176 = xor <2 x i64> %174, %175, !dbg !419, !psr.id !448
  %177 = xor <2 x i64> %173, %176, !dbg !419, !psr.id !449
  call void @llvm.dbg.value(metadata <2 x i64> %177, metadata !364, metadata !DIExpression()), !dbg !355, !psr.id !450
  br label %178, !dbg !419, !psr.id !451

178:                                              ; preds = %151
  br label %179, !dbg !452, !psr.id !453

179:                                              ; preds = %178
  %180 = shufflevector <2 x i64> %177, <2 x i64> %171, <2 x i32> <i32 0, i32 2>, !dbg !454, !psr.id !456
  call void @llvm.dbg.value(metadata <2 x i64> %180, metadata !457, metadata !DIExpression()), !dbg !355, !psr.id !458
  %181 = xor <2 x i64> %171, %177, !dbg !454, !psr.id !459
  call void @llvm.dbg.value(metadata <2 x i64> %181, metadata !460, metadata !DIExpression()), !dbg !355, !psr.id !461
  br label %182, !dbg !454, !psr.id !462

182:                                              ; preds = %179
  br label %183, !dbg !463, !psr.id !464

183:                                              ; preds = %182
  %184 = call <2 x i64> @pclmulqdq11(<2 x i64> %119, <2 x i64> %119), !dbg !465, !psr.id !467
  call void @llvm.dbg.value(metadata <2 x i64> %184, metadata !468, metadata !DIExpression()), !dbg !469, !psr.id !470
  %185 = call <2 x i64> @pclmulqdq00(<2 x i64> %119, <2 x i64> %119), !dbg !465, !psr.id !471
  call void @llvm.dbg.value(metadata <2 x i64> %185, metadata !472, metadata !DIExpression()), !dbg !469, !psr.id !473
  %186 = bitcast <2 x i64> %184 to <4 x i32>, !dbg !465, !psr.id !474
  %187 = shufflevector <4 x i32> %186, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !465, !psr.id !475
  %188 = bitcast <4 x i32> %187 to <2 x i64>, !dbg !465, !psr.id !476
  call void @llvm.dbg.value(metadata <2 x i64> %188, metadata !477, metadata !DIExpression()), !dbg !469, !psr.id !478
  %189 = bitcast <2 x i64> %185 to <4 x i32>, !dbg !465, !psr.id !479
  %190 = shufflevector <4 x i32> %189, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !465, !psr.id !480
  %191 = bitcast <4 x i32> %190 to <2 x i64>, !dbg !465, !psr.id !481
  call void @llvm.dbg.value(metadata <2 x i64> %191, metadata !482, metadata !DIExpression()), !dbg !469, !psr.id !483
  br label %192, !dbg !465, !psr.id !484

192:                                              ; preds = %183
  %193 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %188, i32 1) #8, !dbg !485, !psr.id !487
  %194 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %184, i32 63) #8, !dbg !485, !psr.id !488
  %195 = or <2 x i64> %193, %194, !dbg !485, !psr.id !489
  call void @llvm.dbg.value(metadata <2 x i64> %195, metadata !477, metadata !DIExpression()), !dbg !469, !psr.id !490
  %196 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %184, i32 1) #8, !dbg !485, !psr.id !491
  %197 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %191, i32 63) #8, !dbg !485, !psr.id !492
  %198 = or <2 x i64> %196, %197, !dbg !485, !psr.id !493
  call void @llvm.dbg.value(metadata <2 x i64> %198, metadata !468, metadata !DIExpression()), !dbg !469, !psr.id !494
  %199 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %191, i32 1) #8, !dbg !485, !psr.id !495
  %200 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %185, i32 63) #8, !dbg !485, !psr.id !496
  %201 = or <2 x i64> %199, %200, !dbg !485, !psr.id !497
  call void @llvm.dbg.value(metadata <2 x i64> %201, metadata !482, metadata !DIExpression()), !dbg !469, !psr.id !498
  %202 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %185, i32 1) #8, !dbg !485, !psr.id !499
  call void @llvm.dbg.value(metadata <2 x i64> %202, metadata !472, metadata !DIExpression()), !dbg !469, !psr.id !500
  br label %203, !dbg !485, !psr.id !501

203:                                              ; preds = %192
  br label %204, !dbg !465, !psr.id !502

204:                                              ; preds = %203
  %205 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %202, i32 1) #8, !dbg !503, !psr.id !505
  %206 = xor <2 x i64> %202, %205, !dbg !503, !psr.id !506
  %207 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %202, i32 2) #8, !dbg !503, !psr.id !507
  %208 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %202, i32 7) #8, !dbg !503, !psr.id !508
  %209 = xor <2 x i64> %207, %208, !dbg !503, !psr.id !509
  %210 = xor <2 x i64> %206, %209, !dbg !503, !psr.id !510
  %211 = xor <2 x i64> %198, %210, !dbg !503, !psr.id !511
  call void @llvm.dbg.value(metadata <2 x i64> %211, metadata !468, metadata !DIExpression()), !dbg !469, !psr.id !512
  %212 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %202, i32 63) #8, !dbg !503, !psr.id !513
  %213 = xor <2 x i64> %201, %212, !dbg !503, !psr.id !514
  %214 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %202, i32 62) #8, !dbg !503, !psr.id !515
  %215 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %202, i32 57) #8, !dbg !503, !psr.id !516
  %216 = xor <2 x i64> %214, %215, !dbg !503, !psr.id !517
  %217 = xor <2 x i64> %213, %216, !dbg !503, !psr.id !518
  call void @llvm.dbg.value(metadata <2 x i64> %217, metadata !482, metadata !DIExpression()), !dbg !469, !psr.id !519
  %218 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %217, i32 1) #8, !dbg !503, !psr.id !520
  %219 = xor <2 x i64> %217, %218, !dbg !503, !psr.id !521
  %220 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %217, i32 2) #8, !dbg !503, !psr.id !522
  %221 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %217, i32 7) #8, !dbg !503, !psr.id !523
  %222 = xor <2 x i64> %220, %221, !dbg !503, !psr.id !524
  %223 = xor <2 x i64> %219, %222, !dbg !503, !psr.id !525
  %224 = xor <2 x i64> %195, %223, !dbg !503, !psr.id !526
  call void @llvm.dbg.value(metadata <2 x i64> %224, metadata !477, metadata !DIExpression()), !dbg !469, !psr.id !527
  %225 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %217, i32 63) #8, !dbg !503, !psr.id !528
  %226 = xor <2 x i64> %211, %225, !dbg !503, !psr.id !529
  %227 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %217, i32 62) #8, !dbg !503, !psr.id !530
  %228 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %217, i32 57) #8, !dbg !503, !psr.id !531
  %229 = xor <2 x i64> %227, %228, !dbg !503, !psr.id !532
  %230 = xor <2 x i64> %226, %229, !dbg !503, !psr.id !533
  call void @llvm.dbg.value(metadata <2 x i64> %230, metadata !468, metadata !DIExpression()), !dbg !469, !psr.id !534
  br label %231, !dbg !503, !psr.id !535

231:                                              ; preds = %204
  br label %232, !dbg !465, !psr.id !536

232:                                              ; preds = %231
  %233 = shufflevector <2 x i64> %230, <2 x i64> %224, <2 x i32> <i32 0, i32 2>, !dbg !537, !psr.id !539
  call void @llvm.dbg.value(metadata <2 x i64> %233, metadata !540, metadata !DIExpression()), !dbg !355, !psr.id !541
  %234 = xor <2 x i64> %224, %230, !dbg !537, !psr.id !542
  call void @llvm.dbg.value(metadata <2 x i64> %234, metadata !543, metadata !DIExpression()), !dbg !355, !psr.id !544
  br label %235, !dbg !537, !psr.id !545

235:                                              ; preds = %232
  br label %236, !dbg !465, !psr.id !546

236:                                              ; preds = %235
  br label %237, !dbg !547, !psr.id !548

237:                                              ; preds = %384, %236
  %.05 = phi i8* [ %2, %236 ], [ %285, %384 ], !dbg !134, !psr.id !549
  %.02 = phi i64 [ %6, %236 ], [ %238, %384 ], !dbg !134, !psr.id !550
  %.0 = phi <2 x i64> [ %53, %236 ], [ %385, %384 ], !dbg !134, !psr.id !551
  call void @llvm.dbg.value(metadata <2 x i64> %.0, metadata !230, metadata !DIExpression()), !dbg !134, !psr.id !552
  call void @llvm.dbg.value(metadata i64 %.02, metadata !155, metadata !DIExpression()), !dbg !134, !psr.id !553
  call void @llvm.dbg.value(metadata i8* %.05, metadata !149, metadata !DIExpression()), !dbg !134, !psr.id !554
  %238 = add i64 %.02, -1, !dbg !555, !psr.id !556
  call void @llvm.dbg.value(metadata i64 %238, metadata !155, metadata !DIExpression()), !dbg !134, !psr.id !557
  %239 = icmp ugt i64 %.02, 0, !dbg !558, !psr.id !559
  br i1 %239, label %240, label %386, !dbg !547, !psr.id !560

240:                                              ; preds = %237
  %241 = getelementptr inbounds i8, i8* %.05, i64 0, !dbg !561, !psr.id !563
  %242 = bitcast i8* %241 to <2 x i64>*, !dbg !564, !psr.id !565
  %243 = bitcast <2 x i64>* %242 to %struct.__loadu_si128*, !dbg !566, !psr.id !567
  %244 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %243, i32 0, i32 0, !dbg !566, !psr.id !568
  %245 = load <2 x i64>, <2 x i64>* %244, align 1, !dbg !566, !psr.id !569
  call void @llvm.dbg.value(metadata <2 x i64> %245, metadata !570, metadata !DIExpression()), !dbg !571, !psr.id !572
  %246 = getelementptr inbounds i8, i8* %.05, i64 16, !dbg !573, !psr.id !574
  %247 = bitcast i8* %246 to <2 x i64>*, !dbg !575, !psr.id !576
  %248 = bitcast <2 x i64>* %247 to %struct.__loadu_si128*, !dbg !577, !psr.id !578
  %249 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %248, i32 0, i32 0, !dbg !577, !psr.id !579
  %250 = load <2 x i64>, <2 x i64>* %249, align 1, !dbg !577, !psr.id !580
  call void @llvm.dbg.value(metadata <2 x i64> %250, metadata !581, metadata !DIExpression()), !dbg !571, !psr.id !582
  %251 = getelementptr inbounds i8, i8* %.05, i64 32, !dbg !583, !psr.id !584
  %252 = bitcast i8* %251 to <2 x i64>*, !dbg !585, !psr.id !586
  %253 = bitcast <2 x i64>* %252 to %struct.__loadu_si128*, !dbg !587, !psr.id !588
  %254 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %253, i32 0, i32 0, !dbg !587, !psr.id !589
  %255 = load <2 x i64>, <2 x i64>* %254, align 1, !dbg !587, !psr.id !590
  call void @llvm.dbg.value(metadata <2 x i64> %255, metadata !591, metadata !DIExpression()), !dbg !571, !psr.id !592
  %256 = getelementptr inbounds i8, i8* %.05, i64 48, !dbg !593, !psr.id !594
  %257 = bitcast i8* %256 to <2 x i64>*, !dbg !595, !psr.id !596
  %258 = bitcast <2 x i64>* %257 to %struct.__loadu_si128*, !dbg !597, !psr.id !598
  %259 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %258, i32 0, i32 0, !dbg !597, !psr.id !599
  %260 = load <2 x i64>, <2 x i64>* %259, align 1, !dbg !597, !psr.id !600
  call void @llvm.dbg.value(metadata <2 x i64> %260, metadata !601, metadata !DIExpression()), !dbg !571, !psr.id !602
  br label %261, !dbg !603, !psr.id !604

261:                                              ; preds = %240
  %262 = bitcast <2 x i64> %245 to <16 x i8>, !dbg !605, !psr.id !607
  %263 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !605, !psr.id !608
  %264 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %262, <16 x i8> %263) #8, !dbg !605, !psr.id !609
  %265 = bitcast <16 x i8> %264 to <2 x i64>, !dbg !605, !psr.id !610
  call void @llvm.dbg.value(metadata <2 x i64> %265, metadata !570, metadata !DIExpression()), !dbg !571, !psr.id !611
  br label %266, !dbg !605, !psr.id !612

266:                                              ; preds = %261
  br label %267, !dbg !613, !psr.id !614

267:                                              ; preds = %266
  %268 = bitcast <2 x i64> %250 to <16 x i8>, !dbg !615, !psr.id !617
  %269 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !615, !psr.id !618
  %270 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %268, <16 x i8> %269) #8, !dbg !615, !psr.id !619
  %271 = bitcast <16 x i8> %270 to <2 x i64>, !dbg !615, !psr.id !620
  call void @llvm.dbg.value(metadata <2 x i64> %271, metadata !581, metadata !DIExpression()), !dbg !571, !psr.id !621
  br label %272, !dbg !615, !psr.id !622

272:                                              ; preds = %267
  br label %273, !dbg !623, !psr.id !624

273:                                              ; preds = %272
  %274 = bitcast <2 x i64> %255 to <16 x i8>, !dbg !625, !psr.id !627
  %275 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !625, !psr.id !628
  %276 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %274, <16 x i8> %275) #8, !dbg !625, !psr.id !629
  %277 = bitcast <16 x i8> %276 to <2 x i64>, !dbg !625, !psr.id !630
  call void @llvm.dbg.value(metadata <2 x i64> %277, metadata !591, metadata !DIExpression()), !dbg !571, !psr.id !631
  br label %278, !dbg !625, !psr.id !632

278:                                              ; preds = %273
  br label %279, !dbg !633, !psr.id !634

279:                                              ; preds = %278
  %280 = bitcast <2 x i64> %260 to <16 x i8>, !dbg !635, !psr.id !637
  %281 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !635, !psr.id !638
  %282 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %280, <16 x i8> %281) #8, !dbg !635, !psr.id !639
  %283 = bitcast <16 x i8> %282 to <2 x i64>, !dbg !635, !psr.id !640
  call void @llvm.dbg.value(metadata <2 x i64> %283, metadata !601, metadata !DIExpression()), !dbg !571, !psr.id !641
  br label %284, !dbg !635, !psr.id !642

284:                                              ; preds = %279
  %285 = getelementptr inbounds i8, i8* %.05, i64 64, !dbg !643, !psr.id !644
  call void @llvm.dbg.value(metadata i8* %285, metadata !149, metadata !DIExpression()), !dbg !134, !psr.id !645
  %286 = xor <2 x i64> %265, %.0, !dbg !646, !psr.id !647
  call void @llvm.dbg.value(metadata <2 x i64> %286, metadata !570, metadata !DIExpression()), !dbg !571, !psr.id !648
  br label %287, !dbg !649, !psr.id !650

287:                                              ; preds = %284
  %288 = bitcast <2 x i64> %271 to <4 x i32>, !dbg !651, !psr.id !653
  %289 = shufflevector <4 x i32> %288, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !651, !psr.id !654
  %290 = bitcast <4 x i32> %289 to <2 x i64>, !dbg !651, !psr.id !655
  %291 = xor <2 x i64> %271, %290, !dbg !651, !psr.id !656
  call void @llvm.dbg.value(metadata <2 x i64> %291, metadata !657, metadata !DIExpression()), !dbg !571, !psr.id !658
  br label %292, !dbg !651, !psr.id !659

292:                                              ; preds = %287
  br label %293, !dbg !660, !psr.id !661

293:                                              ; preds = %292
  %294 = bitcast <2 x i64> %277 to <4 x i32>, !dbg !662, !psr.id !664
  %295 = shufflevector <4 x i32> %294, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !662, !psr.id !665
  %296 = bitcast <4 x i32> %295 to <2 x i64>, !dbg !662, !psr.id !666
  %297 = xor <2 x i64> %277, %296, !dbg !662, !psr.id !667
  call void @llvm.dbg.value(metadata <2 x i64> %297, metadata !668, metadata !DIExpression()), !dbg !571, !psr.id !669
  br label %298, !dbg !662, !psr.id !670

298:                                              ; preds = %293
  br label %299, !dbg !671, !psr.id !672

299:                                              ; preds = %298
  %300 = bitcast <2 x i64> %283 to <4 x i32>, !dbg !673, !psr.id !675
  %301 = shufflevector <4 x i32> %300, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !673, !psr.id !676
  %302 = bitcast <4 x i32> %301 to <2 x i64>, !dbg !673, !psr.id !677
  %303 = xor <2 x i64> %283, %302, !dbg !673, !psr.id !678
  call void @llvm.dbg.value(metadata <2 x i64> %303, metadata !679, metadata !DIExpression()), !dbg !571, !psr.id !680
  br label %304, !dbg !673, !psr.id !681

304:                                              ; preds = %299
  br label %305, !dbg !682, !psr.id !683

305:                                              ; preds = %304
  %306 = bitcast <2 x i64> %286 to <4 x i32>, !dbg !684, !psr.id !686
  %307 = shufflevector <4 x i32> %306, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !684, !psr.id !687
  %308 = bitcast <4 x i32> %307 to <2 x i64>, !dbg !684, !psr.id !688
  %309 = xor <2 x i64> %286, %308, !dbg !684, !psr.id !689
  call void @llvm.dbg.value(metadata <2 x i64> %309, metadata !690, metadata !DIExpression()), !dbg !571, !psr.id !691
  br label %310, !dbg !684, !psr.id !692

310:                                              ; preds = %305
  %311 = call <2 x i64> @pclmulqdq11(<2 x i64> %286, <2 x i64> %233), !dbg !693, !psr.id !694
  %312 = call <2 x i64> @pclmulqdq11(<2 x i64> %271, <2 x i64> %180), !dbg !695, !psr.id !696
  %313 = xor <2 x i64> %311, %312, !dbg !697, !psr.id !698
  %314 = call <2 x i64> @pclmulqdq11(<2 x i64> %277, <2 x i64> %119), !dbg !699, !psr.id !700
  %315 = call <2 x i64> @pclmulqdq11(<2 x i64> %283, <2 x i64> %59), !dbg !701, !psr.id !702
  %316 = xor <2 x i64> %314, %315, !dbg !703, !psr.id !704
  %317 = xor <2 x i64> %313, %316, !dbg !705, !psr.id !706
  call void @llvm.dbg.value(metadata <2 x i64> %317, metadata !364, metadata !DIExpression()), !dbg !355, !psr.id !707
  %318 = call <2 x i64> @pclmulqdq00(<2 x i64> %286, <2 x i64> %233), !dbg !708, !psr.id !709
  %319 = call <2 x i64> @pclmulqdq00(<2 x i64> %271, <2 x i64> %180), !dbg !710, !psr.id !711
  %320 = xor <2 x i64> %318, %319, !dbg !712, !psr.id !713
  %321 = call <2 x i64> @pclmulqdq00(<2 x i64> %277, <2 x i64> %119), !dbg !714, !psr.id !715
  %322 = call <2 x i64> @pclmulqdq00(<2 x i64> %283, <2 x i64> %59), !dbg !716, !psr.id !717
  %323 = xor <2 x i64> %321, %322, !dbg !718, !psr.id !719
  %324 = xor <2 x i64> %320, %323, !dbg !720, !psr.id !721
  call void @llvm.dbg.value(metadata <2 x i64> %324, metadata !368, metadata !DIExpression()), !dbg !355, !psr.id !722
  %325 = call <2 x i64> @pclmulqdq00(<2 x i64> %309, <2 x i64> %234), !dbg !723, !psr.id !724
  %326 = call <2 x i64> @pclmulqdq00(<2 x i64> %291, <2 x i64> %181), !dbg !725, !psr.id !726
  %327 = xor <2 x i64> %325, %326, !dbg !727, !psr.id !728
  %328 = call <2 x i64> @pclmulqdq00(<2 x i64> %297, <2 x i64> %120), !dbg !729, !psr.id !730
  %329 = call <2 x i64> @pclmulqdq00(<2 x i64> %303, <2 x i64> %65), !dbg !731, !psr.id !732
  %330 = xor <2 x i64> %328, %329, !dbg !733, !psr.id !734
  %331 = xor <2 x i64> %327, %330, !dbg !735, !psr.id !736
  call void @llvm.dbg.value(metadata <2 x i64> %331, metadata !376, metadata !DIExpression()), !dbg !355, !psr.id !737
  %332 = xor <2 x i64> %317, %324, !dbg !738, !psr.id !739
  %333 = xor <2 x i64> %331, %332, !dbg !740, !psr.id !741
  call void @llvm.dbg.value(metadata <2 x i64> %333, metadata !376, metadata !DIExpression()), !dbg !355, !psr.id !742
  %334 = bitcast <2 x i64> %317 to <4 x i32>, !dbg !743, !psr.id !744
  %335 = shufflevector <4 x i32> %334, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !743, !psr.id !745
  %336 = bitcast <4 x i32> %335 to <2 x i64>, !dbg !743, !psr.id !746
  call void @llvm.dbg.value(metadata <2 x i64> %336, metadata !382, metadata !DIExpression()), !dbg !355, !psr.id !747
  %337 = bitcast <2 x i64> %333 to <4 x i32>, !dbg !748, !psr.id !749
  %338 = shufflevector <4 x i32> %337, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !748, !psr.id !750
  %339 = bitcast <4 x i32> %338 to <2 x i64>, !dbg !748, !psr.id !751
  %340 = xor <2 x i64> %317, %339, !dbg !752, !psr.id !753
  call void @llvm.dbg.value(metadata <2 x i64> %340, metadata !364, metadata !DIExpression()), !dbg !355, !psr.id !754
  %341 = bitcast <2 x i64> %324 to <4 x i32>, !dbg !755, !psr.id !756
  %342 = shufflevector <4 x i32> %341, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !755, !psr.id !757
  %343 = bitcast <4 x i32> %342 to <2 x i64>, !dbg !755, !psr.id !758
  %344 = xor <2 x i64> %333, %343, !dbg !759, !psr.id !760
  call void @llvm.dbg.value(metadata <2 x i64> %344, metadata !376, metadata !DIExpression()), !dbg !355, !psr.id !761
  br label %345, !dbg !762, !psr.id !763

345:                                              ; preds = %310
  %346 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %336, i32 1) #8, !dbg !764, !psr.id !766
  %347 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %340, i32 63) #8, !dbg !764, !psr.id !767
  %348 = or <2 x i64> %346, %347, !dbg !764, !psr.id !768
  call void @llvm.dbg.value(metadata <2 x i64> %348, metadata !382, metadata !DIExpression()), !dbg !355, !psr.id !769
  %349 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %340, i32 1) #8, !dbg !764, !psr.id !770
  %350 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %344, i32 63) #8, !dbg !764, !psr.id !771
  %351 = or <2 x i64> %349, %350, !dbg !764, !psr.id !772
  call void @llvm.dbg.value(metadata <2 x i64> %351, metadata !364, metadata !DIExpression()), !dbg !355, !psr.id !773
  %352 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %344, i32 1) #8, !dbg !764, !psr.id !774
  %353 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %324, i32 63) #8, !dbg !764, !psr.id !775
  %354 = or <2 x i64> %352, %353, !dbg !764, !psr.id !776
  call void @llvm.dbg.value(metadata <2 x i64> %354, metadata !376, metadata !DIExpression()), !dbg !355, !psr.id !777
  %355 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %324, i32 1) #8, !dbg !764, !psr.id !778
  call void @llvm.dbg.value(metadata <2 x i64> %355, metadata !368, metadata !DIExpression()), !dbg !355, !psr.id !779
  br label %356, !dbg !764, !psr.id !780

356:                                              ; preds = %345
  br label %357, !dbg !781, !psr.id !782

357:                                              ; preds = %356
  %358 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %355, i32 1) #8, !dbg !783, !psr.id !785
  %359 = xor <2 x i64> %355, %358, !dbg !783, !psr.id !786
  %360 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %355, i32 2) #8, !dbg !783, !psr.id !787
  %361 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %355, i32 7) #8, !dbg !783, !psr.id !788
  %362 = xor <2 x i64> %360, %361, !dbg !783, !psr.id !789
  %363 = xor <2 x i64> %359, %362, !dbg !783, !psr.id !790
  %364 = xor <2 x i64> %351, %363, !dbg !783, !psr.id !791
  call void @llvm.dbg.value(metadata <2 x i64> %364, metadata !364, metadata !DIExpression()), !dbg !355, !psr.id !792
  %365 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %355, i32 63) #8, !dbg !783, !psr.id !793
  %366 = xor <2 x i64> %354, %365, !dbg !783, !psr.id !794
  %367 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %355, i32 62) #8, !dbg !783, !psr.id !795
  %368 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %355, i32 57) #8, !dbg !783, !psr.id !796
  %369 = xor <2 x i64> %367, %368, !dbg !783, !psr.id !797
  %370 = xor <2 x i64> %366, %369, !dbg !783, !psr.id !798
  call void @llvm.dbg.value(metadata <2 x i64> %370, metadata !376, metadata !DIExpression()), !dbg !355, !psr.id !799
  %371 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %370, i32 1) #8, !dbg !783, !psr.id !800
  %372 = xor <2 x i64> %370, %371, !dbg !783, !psr.id !801
  %373 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %370, i32 2) #8, !dbg !783, !psr.id !802
  %374 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %370, i32 7) #8, !dbg !783, !psr.id !803
  %375 = xor <2 x i64> %373, %374, !dbg !783, !psr.id !804
  %376 = xor <2 x i64> %372, %375, !dbg !783, !psr.id !805
  %377 = xor <2 x i64> %348, %376, !dbg !783, !psr.id !806
  call void @llvm.dbg.value(metadata <2 x i64> %377, metadata !382, metadata !DIExpression()), !dbg !355, !psr.id !807
  %378 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %370, i32 63) #8, !dbg !783, !psr.id !808
  %379 = xor <2 x i64> %364, %378, !dbg !783, !psr.id !809
  %380 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %370, i32 62) #8, !dbg !783, !psr.id !810
  %381 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %370, i32 57) #8, !dbg !783, !psr.id !811
  %382 = xor <2 x i64> %380, %381, !dbg !783, !psr.id !812
  %383 = xor <2 x i64> %379, %382, !dbg !783, !psr.id !813
  call void @llvm.dbg.value(metadata <2 x i64> %383, metadata !364, metadata !DIExpression()), !dbg !355, !psr.id !814
  br label %384, !dbg !783, !psr.id !815

384:                                              ; preds = %357
  %385 = shufflevector <2 x i64> %383, <2 x i64> %377, <2 x i32> <i32 0, i32 2>, !dbg !816, !psr.id !817
  call void @llvm.dbg.value(metadata <2 x i64> %385, metadata !230, metadata !DIExpression()), !dbg !134, !psr.id !818
  br label %237, !dbg !547, !llvm.loop !819, !psr.id !822

386:                                              ; preds = %237
  br label %387, !dbg !823, !psr.id !824

387:                                              ; preds = %386, %66
  %.1 = phi <2 x i64> [ %.0, %386 ], [ %53, %66 ], !dbg !242, !psr.id !825
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !230, metadata !DIExpression()), !dbg !134, !psr.id !826
  br label %388, !dbg !827, !psr.id !828

388:                                              ; preds = %465, %387
  %.14 = phi i8* [ %.03, %387 ], [ %402, %465 ], !dbg !134, !psr.id !829
  %.01 = phi i64 [ %11, %387 ], [ %389, %465 ], !dbg !134, !psr.id !830
  %.2 = phi <2 x i64> [ %.1, %387 ], [ %466, %465 ], !dbg !134, !psr.id !831
  call void @llvm.dbg.value(metadata <2 x i64> %.2, metadata !230, metadata !DIExpression()), !dbg !134, !psr.id !832
  call void @llvm.dbg.value(metadata i64 %.01, metadata !170, metadata !DIExpression()), !dbg !134, !psr.id !833
  call void @llvm.dbg.value(metadata i8* %.14, metadata !164, metadata !DIExpression()), !dbg !134, !psr.id !834
  %389 = add i64 %.01, -1, !dbg !835, !psr.id !836
  call void @llvm.dbg.value(metadata i64 %389, metadata !170, metadata !DIExpression()), !dbg !134, !psr.id !837
  %390 = icmp ugt i64 %.01, 0, !dbg !838, !psr.id !839
  br i1 %390, label %391, label %467, !dbg !827, !psr.id !840

391:                                              ; preds = %388
  %392 = bitcast i8* %.14 to <2 x i64>*, !dbg !841, !psr.id !843
  %393 = bitcast <2 x i64>* %392 to %struct.__loadu_si128*, !dbg !844, !psr.id !845
  %394 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %393, i32 0, i32 0, !dbg !844, !psr.id !846
  %395 = load <2 x i64>, <2 x i64>* %394, align 1, !dbg !844, !psr.id !847
  call void @llvm.dbg.value(metadata <2 x i64> %395, metadata !848, metadata !DIExpression()), !dbg !849, !psr.id !850
  br label %396, !dbg !851, !psr.id !852

396:                                              ; preds = %391
  %397 = bitcast <2 x i64> %395 to <16 x i8>, !dbg !853, !psr.id !855
  %398 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !853, !psr.id !856
  %399 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %397, <16 x i8> %398) #8, !dbg !853, !psr.id !857
  %400 = bitcast <16 x i8> %399 to <2 x i64>, !dbg !853, !psr.id !858
  call void @llvm.dbg.value(metadata <2 x i64> %400, metadata !848, metadata !DIExpression()), !dbg !849, !psr.id !859
  br label %401, !dbg !853, !psr.id !860

401:                                              ; preds = %396
  %402 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !861, !psr.id !862
  call void @llvm.dbg.value(metadata i8* %402, metadata !164, metadata !DIExpression()), !dbg !134, !psr.id !863
  %403 = xor <2 x i64> %400, %.2, !dbg !864, !psr.id !865
  call void @llvm.dbg.value(metadata <2 x i64> %403, metadata !848, metadata !DIExpression()), !dbg !849, !psr.id !866
  br label %404, !dbg !867, !psr.id !868

404:                                              ; preds = %401
  %405 = bitcast <2 x i64> %403 to <4 x i32>, !dbg !869, !psr.id !871
  %406 = shufflevector <4 x i32> %405, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !869, !psr.id !872
  %407 = bitcast <4 x i32> %406 to <2 x i64>, !dbg !869, !psr.id !873
  %408 = xor <2 x i64> %403, %407, !dbg !869, !psr.id !874
  call void @llvm.dbg.value(metadata <2 x i64> %408, metadata !875, metadata !DIExpression()), !dbg !849, !psr.id !876
  br label %409, !dbg !869, !psr.id !877

409:                                              ; preds = %404
  %410 = call <2 x i64> @pclmulqdq11(<2 x i64> %403, <2 x i64> %59), !dbg !878, !psr.id !879
  call void @llvm.dbg.value(metadata <2 x i64> %410, metadata !880, metadata !DIExpression()), !dbg !849, !psr.id !881
  %411 = call <2 x i64> @pclmulqdq00(<2 x i64> %403, <2 x i64> %59), !dbg !882, !psr.id !883
  call void @llvm.dbg.value(metadata <2 x i64> %411, metadata !884, metadata !DIExpression()), !dbg !849, !psr.id !885
  %412 = call <2 x i64> @pclmulqdq00(<2 x i64> %408, <2 x i64> %65), !dbg !886, !psr.id !887
  call void @llvm.dbg.value(metadata <2 x i64> %412, metadata !888, metadata !DIExpression()), !dbg !849, !psr.id !889
  %413 = xor <2 x i64> %410, %411, !dbg !890, !psr.id !891
  %414 = xor <2 x i64> %412, %413, !dbg !892, !psr.id !893
  call void @llvm.dbg.value(metadata <2 x i64> %414, metadata !888, metadata !DIExpression()), !dbg !849, !psr.id !894
  %415 = bitcast <2 x i64> %410 to <4 x i32>, !dbg !895, !psr.id !896
  %416 = shufflevector <4 x i32> %415, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !895, !psr.id !897
  %417 = bitcast <4 x i32> %416 to <2 x i64>, !dbg !895, !psr.id !898
  call void @llvm.dbg.value(metadata <2 x i64> %417, metadata !899, metadata !DIExpression()), !dbg !849, !psr.id !900
  %418 = bitcast <2 x i64> %414 to <4 x i32>, !dbg !901, !psr.id !902
  %419 = shufflevector <4 x i32> %418, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !901, !psr.id !903
  %420 = bitcast <4 x i32> %419 to <2 x i64>, !dbg !901, !psr.id !904
  %421 = xor <2 x i64> %410, %420, !dbg !905, !psr.id !906
  call void @llvm.dbg.value(metadata <2 x i64> %421, metadata !880, metadata !DIExpression()), !dbg !849, !psr.id !907
  %422 = bitcast <2 x i64> %411 to <4 x i32>, !dbg !908, !psr.id !909
  %423 = shufflevector <4 x i32> %422, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 0>, !dbg !908, !psr.id !910
  %424 = bitcast <4 x i32> %423 to <2 x i64>, !dbg !908, !psr.id !911
  %425 = xor <2 x i64> %414, %424, !dbg !912, !psr.id !913
  call void @llvm.dbg.value(metadata <2 x i64> %425, metadata !888, metadata !DIExpression()), !dbg !849, !psr.id !914
  br label %426, !dbg !915, !psr.id !916

426:                                              ; preds = %409
  %427 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %417, i32 1) #8, !dbg !917, !psr.id !919
  %428 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %421, i32 63) #8, !dbg !917, !psr.id !920
  %429 = or <2 x i64> %427, %428, !dbg !917, !psr.id !921
  call void @llvm.dbg.value(metadata <2 x i64> %429, metadata !899, metadata !DIExpression()), !dbg !849, !psr.id !922
  %430 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %421, i32 1) #8, !dbg !917, !psr.id !923
  %431 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %425, i32 63) #8, !dbg !917, !psr.id !924
  %432 = or <2 x i64> %430, %431, !dbg !917, !psr.id !925
  call void @llvm.dbg.value(metadata <2 x i64> %432, metadata !880, metadata !DIExpression()), !dbg !849, !psr.id !926
  %433 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %425, i32 1) #8, !dbg !917, !psr.id !927
  %434 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %411, i32 63) #8, !dbg !917, !psr.id !928
  %435 = or <2 x i64> %433, %434, !dbg !917, !psr.id !929
  call void @llvm.dbg.value(metadata <2 x i64> %435, metadata !888, metadata !DIExpression()), !dbg !849, !psr.id !930
  %436 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %411, i32 1) #8, !dbg !917, !psr.id !931
  call void @llvm.dbg.value(metadata <2 x i64> %436, metadata !884, metadata !DIExpression()), !dbg !849, !psr.id !932
  br label %437, !dbg !917, !psr.id !933

437:                                              ; preds = %426
  br label %438, !dbg !934, !psr.id !935

438:                                              ; preds = %437
  %439 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %436, i32 1) #8, !dbg !936, !psr.id !938
  %440 = xor <2 x i64> %436, %439, !dbg !936, !psr.id !939
  %441 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %436, i32 2) #8, !dbg !936, !psr.id !940
  %442 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %436, i32 7) #8, !dbg !936, !psr.id !941
  %443 = xor <2 x i64> %441, %442, !dbg !936, !psr.id !942
  %444 = xor <2 x i64> %440, %443, !dbg !936, !psr.id !943
  %445 = xor <2 x i64> %432, %444, !dbg !936, !psr.id !944
  call void @llvm.dbg.value(metadata <2 x i64> %445, metadata !880, metadata !DIExpression()), !dbg !849, !psr.id !945
  %446 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %436, i32 63) #8, !dbg !936, !psr.id !946
  %447 = xor <2 x i64> %435, %446, !dbg !936, !psr.id !947
  %448 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %436, i32 62) #8, !dbg !936, !psr.id !948
  %449 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %436, i32 57) #8, !dbg !936, !psr.id !949
  %450 = xor <2 x i64> %448, %449, !dbg !936, !psr.id !950
  %451 = xor <2 x i64> %447, %450, !dbg !936, !psr.id !951
  call void @llvm.dbg.value(metadata <2 x i64> %451, metadata !888, metadata !DIExpression()), !dbg !849, !psr.id !952
  %452 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %451, i32 1) #8, !dbg !936, !psr.id !953
  %453 = xor <2 x i64> %451, %452, !dbg !936, !psr.id !954
  %454 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %451, i32 2) #8, !dbg !936, !psr.id !955
  %455 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %451, i32 7) #8, !dbg !936, !psr.id !956
  %456 = xor <2 x i64> %454, %455, !dbg !936, !psr.id !957
  %457 = xor <2 x i64> %453, %456, !dbg !936, !psr.id !958
  %458 = xor <2 x i64> %429, %457, !dbg !936, !psr.id !959
  call void @llvm.dbg.value(metadata <2 x i64> %458, metadata !899, metadata !DIExpression()), !dbg !849, !psr.id !960
  %459 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %451, i32 63) #8, !dbg !936, !psr.id !961
  %460 = xor <2 x i64> %445, %459, !dbg !936, !psr.id !962
  %461 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %451, i32 62) #8, !dbg !936, !psr.id !963
  %462 = call <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64> %451, i32 57) #8, !dbg !936, !psr.id !964
  %463 = xor <2 x i64> %461, %462, !dbg !936, !psr.id !965
  %464 = xor <2 x i64> %460, %463, !dbg !936, !psr.id !966
  call void @llvm.dbg.value(metadata <2 x i64> %464, metadata !880, metadata !DIExpression()), !dbg !849, !psr.id !967
  br label %465, !dbg !936, !psr.id !968

465:                                              ; preds = %438
  %466 = shufflevector <2 x i64> %464, <2 x i64> %458, <2 x i32> <i32 0, i32 2>, !dbg !969, !psr.id !970
  call void @llvm.dbg.value(metadata <2 x i64> %466, metadata !230, metadata !DIExpression()), !dbg !134, !psr.id !971
  br label %388, !dbg !827, !llvm.loop !972, !psr.id !974

467:                                              ; preds = %388
  br label %468, !dbg !975, !psr.id !976

468:                                              ; preds = %467
  %469 = bitcast <2 x i64> %.2 to <16 x i8>, !dbg !977, !psr.id !979
  %470 = bitcast <2 x i64> %39 to <16 x i8>, !dbg !977, !psr.id !980
  %471 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %469, <16 x i8> %470) #8, !dbg !977, !psr.id !981
  %472 = bitcast <16 x i8> %471 to <2 x i64>, !dbg !977, !psr.id !982
  call void @llvm.dbg.value(metadata <2 x i64> %472, metadata !230, metadata !DIExpression()), !dbg !134, !psr.id !983
  br label %473, !dbg !977, !psr.id !984

473:                                              ; preds = %468
  %474 = bitcast i8* %0 to <2 x i64>*, !dbg !985, !psr.id !986
  %475 = bitcast <2 x i64>* %474 to %struct.__loadu_si128*, !dbg !987, !psr.id !988
  %476 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %475, i32 0, i32 0, !dbg !987, !psr.id !989
  store <2 x i64> %472, <2 x i64>* %476, align 1, !dbg !987, !psr.id !990
  ret void, !dbg !991, !psr.id !992
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readnone
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #6

; Function Attrs: noinline nounwind uwtable
define internal <2 x i64> @pclmulqdq11(<2 x i64> %0, <2 x i64> %1) #7 !dbg !993 {
  call void @llvm.dbg.value(metadata <2 x i64> %0, metadata !996, metadata !DIExpression()), !dbg !997, !psr.id !998
  call void @llvm.dbg.value(metadata <2 x i64> %1, metadata !999, metadata !DIExpression()), !dbg !997, !psr.id !1000
  %3 = call <2 x i64> asm "pclmulqdq $$0x11, $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %1, <2 x i64> %0) #6, !dbg !1001, !srcloc !1002, !psr.id !1003
  call void @llvm.dbg.value(metadata <2 x i64> %3, metadata !996, metadata !DIExpression()), !dbg !997, !psr.id !1004
  ret <2 x i64> %3, !dbg !1005, !psr.id !1006
}

; Function Attrs: noinline nounwind uwtable
define internal <2 x i64> @pclmulqdq00(<2 x i64> %0, <2 x i64> %1) #7 !dbg !1007 {
  call void @llvm.dbg.value(metadata <2 x i64> %0, metadata !1008, metadata !DIExpression()), !dbg !1009, !psr.id !1010
  call void @llvm.dbg.value(metadata <2 x i64> %1, metadata !1011, metadata !DIExpression()), !dbg !1009, !psr.id !1012
  %3 = call <2 x i64> asm "pclmulqdq $$0x00, $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x i64> %1, <2 x i64> %0) #6, !dbg !1013, !srcloc !1014, !psr.id !1015
  call void @llvm.dbg.value(metadata <2 x i64> %3, metadata !1008, metadata !DIExpression()), !dbg !1009, !psr.id !1016
  ret <2 x i64> %3, !dbg !1017, !psr.id !1018
}

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.pslli.q(<2 x i64>, i32) #6

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_cpuid(i32 %0, i32 %1, i32 %2, i32 %3) #0 !dbg !1019 {
  %5 = alloca i32, align 4, !psr.id !1028
  %6 = alloca i32, align 4, !psr.id !1029
  %7 = alloca i32, align 4, !psr.id !1030
  %8 = alloca i32, align 4, !psr.id !1031
  call void @llvm.dbg.value(metadata i32 %0, metadata !1032, metadata !DIExpression()), !dbg !1033, !psr.id !1034
  call void @llvm.dbg.value(metadata i32 %1, metadata !1035, metadata !DIExpression()), !dbg !1033, !psr.id !1036
  call void @llvm.dbg.value(metadata i32 %2, metadata !1037, metadata !DIExpression()), !dbg !1033, !psr.id !1038
  call void @llvm.dbg.value(metadata i32 %3, metadata !1039, metadata !DIExpression()), !dbg !1033, !psr.id !1040
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1041, metadata !DIExpression()), !dbg !1042, !psr.id !1043
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1044, metadata !DIExpression()), !dbg !1045, !psr.id !1046
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1047, metadata !DIExpression()), !dbg !1048, !psr.id !1049
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1050, metadata !DIExpression()), !dbg !1051, !psr.id !1052
  %9 = call i32 @__get_cpuid(i32 1, i32* %5, i32* %6, i32* %7, i32* %8), !dbg !1053, !psr.id !1055
  %10 = icmp ne i32 %9, 0, !dbg !1053, !psr.id !1056
  br i1 %10, label %11, label %29, !dbg !1057, !psr.id !1058

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4, !dbg !1059, !psr.id !1062
  %13 = and i32 %12, %0, !dbg !1063, !psr.id !1064
  %14 = icmp eq i32 %13, %0, !dbg !1065, !psr.id !1066
  br i1 %14, label %15, label %28, !dbg !1067, !psr.id !1068

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4, !dbg !1069, !psr.id !1070
  %17 = and i32 %16, %1, !dbg !1071, !psr.id !1072
  %18 = icmp eq i32 %17, %1, !dbg !1073, !psr.id !1074
  br i1 %18, label %19, label %28, !dbg !1075, !psr.id !1076

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4, !dbg !1077, !psr.id !1078
  %21 = and i32 %20, %2, !dbg !1079, !psr.id !1080
  %22 = icmp eq i32 %21, %2, !dbg !1081, !psr.id !1082
  br i1 %22, label %23, label %28, !dbg !1083, !psr.id !1084

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4, !dbg !1085, !psr.id !1086
  %25 = and i32 %24, %3, !dbg !1087, !psr.id !1088
  %26 = icmp eq i32 %25, %3, !dbg !1089, !psr.id !1090
  br i1 %26, label %27, label %28, !dbg !1091, !psr.id !1092

27:                                               ; preds = %23
  br label %30, !dbg !1093, !psr.id !1095

28:                                               ; preds = %23, %19, %15, %11
  br label %29, !dbg !1096, !psr.id !1097

29:                                               ; preds = %28, %4
  br label %30, !dbg !1098, !psr.id !1099

30:                                               ; preds = %29, %27
  %.0 = phi i32 [ 1, %27 ], [ 0, %29 ], !dbg !1033, !psr.id !1100
  ret i32 %.0, !dbg !1101, !psr.id !1102
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @__get_cpuid(i32 %0, i32* noalias %1, i32* noalias %2, i32* noalias %3, i32* noalias %4) #0 !dbg !1103 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1108, metadata !DIExpression()), !dbg !1109, !psr.id !1110
  call void @llvm.dbg.value(metadata i32* %1, metadata !1111, metadata !DIExpression()), !dbg !1109, !psr.id !1112
  call void @llvm.dbg.value(metadata i32* %2, metadata !1113, metadata !DIExpression()), !dbg !1109, !psr.id !1114
  call void @llvm.dbg.value(metadata i32* %3, metadata !1115, metadata !DIExpression()), !dbg !1109, !psr.id !1116
  call void @llvm.dbg.value(metadata i32* %4, metadata !1117, metadata !DIExpression()), !dbg !1109, !psr.id !1118
  %6 = and i32 %0, -2147483648, !dbg !1119, !psr.id !1120
  %7 = call i32 @__get_cpuid_max(i32 %6, i32* null), !dbg !1121, !psr.id !1122
  call void @llvm.dbg.value(metadata i32 %7, metadata !1123, metadata !DIExpression()), !dbg !1109, !psr.id !1124
  %8 = icmp eq i32 %7, 0, !dbg !1125, !psr.id !1127
  br i1 %8, label %11, label %9, !dbg !1128, !psr.id !1129

9:                                                ; preds = %5
  %10 = icmp ult i32 %7, %0, !dbg !1130, !psr.id !1131
  br i1 %10, label %11, label %12, !dbg !1132, !psr.id !1133

11:                                               ; preds = %9, %5
  br label %18, !dbg !1134, !psr.id !1135

12:                                               ; preds = %9
  %13 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !1136, !srcloc !1137, !psr.id !1138
  %14 = extractvalue { i32, i32, i32, i32 } %13, 0, !dbg !1136, !psr.id !1139
  %15 = extractvalue { i32, i32, i32, i32 } %13, 1, !dbg !1136, !psr.id !1140
  %16 = extractvalue { i32, i32, i32, i32 } %13, 2, !dbg !1136, !psr.id !1141
  %17 = extractvalue { i32, i32, i32, i32 } %13, 3, !dbg !1136, !psr.id !1142
  store i32 %14, i32* %1, align 4, !dbg !1136, !psr.id !1143
  store i32 %15, i32* %2, align 4, !dbg !1136, !psr.id !1144
  store i32 %16, i32* %3, align 4, !dbg !1136, !psr.id !1145
  store i32 %17, i32* %4, align 4, !dbg !1136, !psr.id !1146
  br label %18, !dbg !1147, !psr.id !1148

18:                                               ; preds = %12, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %12 ], !dbg !1109, !psr.id !1149
  ret i32 %.0, !dbg !1150, !psr.id !1151
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %0, i32* noalias %1) #0 !dbg !1152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1155, metadata !DIExpression()), !dbg !1156, !psr.id !1157
  call void @llvm.dbg.value(metadata i32* %1, metadata !1158, metadata !DIExpression()), !dbg !1156, !psr.id !1159
  %3 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !1160, !srcloc !1161, !psr.id !1162
  %4 = extractvalue { i32, i32, i32, i32 } %3, 0, !dbg !1160, !psr.id !1163
  %5 = extractvalue { i32, i32, i32, i32 } %3, 1, !dbg !1160, !psr.id !1164
  %6 = extractvalue { i32, i32, i32, i32 } %3, 2, !dbg !1160, !psr.id !1165
  %7 = extractvalue { i32, i32, i32, i32 } %3, 3, !dbg !1160, !psr.id !1166
  call void @llvm.dbg.value(metadata i32 %4, metadata !1167, metadata !DIExpression()), !dbg !1156, !psr.id !1168
  call void @llvm.dbg.value(metadata i32 %5, metadata !1169, metadata !DIExpression()), !dbg !1156, !psr.id !1170
  call void @llvm.dbg.value(metadata i32 %6, metadata !1171, metadata !DIExpression()), !dbg !1156, !psr.id !1172
  call void @llvm.dbg.value(metadata i32 %7, metadata !1173, metadata !DIExpression()), !dbg !1156, !psr.id !1174
  %8 = icmp ne i32* %1, null, !dbg !1175, !psr.id !1177
  br i1 %8, label %9, label %10, !dbg !1178, !psr.id !1179

9:                                                ; preds = %2
  store i32 %5, i32* %1, align 4, !dbg !1180, !psr.id !1181
  br label %10, !dbg !1182, !psr.id !1183

10:                                               ; preds = %9, %2
  ret i32 %4, !dbg !1184, !psr.id !1185
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @br_ghash_pclmul_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+pclmul,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readnone }
attributes #7 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !3}
!llvm.ident = !{!38, !38}
!llvm.module.flags = !{!39, !40, !41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "br_ghash_pclmul.c", directory: "/home/luwei/bech/BearSSL/ghash_pclmul")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !5, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "../BearSSL/src/hash/ghash_pclmul.c", directory: "/home/luwei/bech/BearSSL/ghash_pclmul")
!5 = !{!6, !12, !18, !19, !25, !30, !33, !34}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i", file: !7, line: 16, baseType: !8, align: 128)
!7 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/emmintrin.h", directory: "")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, flags: DIFlagVector, elements: !10)
!9 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v4si", file: !13, line: 15, baseType: !14)
!13 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/xmmintrin.h", directory: "")
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, flags: DIFlagVector, elements: !16)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DISubrange(count: 4)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !7, line: 3550, size: 128, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !21, file: !7, line: 3551, baseType: !24, size: 128, align: 8)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i_u", file: !7, line: 19, baseType: !8, align: 8)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v16qi", file: !7, line: 25, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 128, flags: DIFlagVector, elements: !28)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DISubrange(count: 16)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2du", file: !7, line: 28, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, flags: DIFlagVector, elements: !10)
!32 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2di", file: !7, line: 23, baseType: !8)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_si128", file: !7, line: 4013, size: 128, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !35, file: !7, line: 4014, baseType: !24, size: 128, align: 8)
!38 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!39 = !{i32 7, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = distinct !DISubprogram(name: "br_ghash_pclmul_wrapper", scope: !1, file: !1, line: 3, type: !43, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !18, !45, !45, !47}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!49 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !DILocalVariable(name: "y", arg: 1, scope: !42, file: !1, line: 3, type: !18)
!51 = !DILocation(line: 0, scope: !42)
!52 = !{!"0"}
!53 = !DILocalVariable(name: "h", arg: 2, scope: !42, file: !1, line: 3, type: !45)
!54 = !{!"1"}
!55 = !DILocalVariable(name: "data", arg: 3, scope: !42, file: !1, line: 3, type: !45)
!56 = !{!"2"}
!57 = !DILocalVariable(name: "len", arg: 4, scope: !42, file: !1, line: 3, type: !47)
!58 = !{!"3"}
!59 = !DILocation(line: 4, column: 12, scope: !42)
!60 = !{!"4"}
!61 = !DILocation(line: 4, column: 2, scope: !42)
!62 = !{!"5"}
!63 = !DILocation(line: 5, column: 12, scope: !42)
!64 = !{!"6"}
!65 = !DILocation(line: 5, column: 2, scope: !42)
!66 = !{!"7"}
!67 = !DILocation(line: 6, column: 12, scope: !42)
!68 = !{!"8"}
!69 = !DILocation(line: 6, column: 2, scope: !42)
!70 = !{!"9"}
!71 = !DILocation(line: 7, column: 12, scope: !42)
!72 = !{!"10"}
!73 = !DILocation(line: 7, column: 2, scope: !42)
!74 = !{!"11"}
!75 = !DILocation(line: 9, column: 12, scope: !42)
!76 = !{!"12"}
!77 = !DILocation(line: 9, column: 2, scope: !42)
!78 = !{!"13"}
!79 = !DILocation(line: 10, column: 12, scope: !42)
!80 = !{!"14"}
!81 = !DILocation(line: 10, column: 2, scope: !42)
!82 = !{!"15"}
!83 = !DILocation(line: 12, column: 2, scope: !42)
!84 = !{!"16"}
!85 = !DILocation(line: 13, column: 1, scope: !42)
!86 = !{!"17"}
!87 = distinct !DISubprogram(name: "br_ghash_pclmul_wrapper_t", scope: !1, file: !1, line: 21, type: !88, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!88 = !DISubroutineType(types: !89)
!89 = !{null}
!90 = !DILocation(line: 22, column: 12, scope: !87)
!91 = !{!"18"}
!92 = !DILocalVariable(name: "y", scope: !87, file: !1, line: 22, type: !18)
!93 = !DILocation(line: 0, scope: !87)
!94 = !{!"19"}
!95 = !DILocation(line: 23, column: 19, scope: !87)
!96 = !{!"20"}
!97 = !DILocalVariable(name: "h", scope: !87, file: !1, line: 23, type: !45)
!98 = !{!"21"}
!99 = !DILocation(line: 24, column: 22, scope: !87)
!100 = !{!"22"}
!101 = !DILocalVariable(name: "data", scope: !87, file: !1, line: 24, type: !45)
!102 = !{!"23"}
!103 = !DILocation(line: 25, column: 17, scope: !87)
!104 = !{!"24"}
!105 = !DILocalVariable(name: "len", scope: !87, file: !1, line: 25, type: !47)
!106 = !{!"25"}
!107 = !DILocation(line: 26, column: 2, scope: !87)
!108 = !{!"26"}
!109 = !DILocation(line: 27, column: 1, scope: !87)
!110 = !{!"27"}
!111 = distinct !DISubprogram(name: "br_ghash_pclmul_get", scope: !4, file: !4, line: 50, type: !112, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!112 = !DISubroutineType(types: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_ghash", file: !115, line: 1239, baseType: !116)
!115 = !DIFile(filename: "../BearSSL/inc/bearssl_hash.h", directory: "/home/luwei/bech/BearSSL/ghash_pclmul")
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!117 = !DILocation(line: 52, column: 9, scope: !111)
!118 = !{!"28"}
!119 = !{!"29"}
!120 = !{!"30"}
!121 = !{!"31"}
!122 = !DILocation(line: 52, column: 2, scope: !111)
!123 = !{!"32"}
!124 = distinct !DISubprogram(name: "pclmul_supported", scope: !4, file: !4, line: 39, type: !125, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!125 = !DISubroutineType(types: !126)
!126 = !{!15}
!127 = !DILocation(line: 45, column: 9, scope: !124)
!128 = !{!"33"}
!129 = !DILocation(line: 45, column: 2, scope: !124)
!130 = !{!"34"}
!131 = distinct !DISubprogram(name: "br_ghash_pclmul", scope: !4, file: !4, line: 233, type: !43, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!132 = !{!"35"}
!133 = !DILocalVariable(name: "y", arg: 1, scope: !131, file: !4, line: 233, type: !18)
!134 = !DILocation(line: 0, scope: !131)
!135 = !{!"36"}
!136 = !DILocalVariable(name: "h", arg: 2, scope: !131, file: !4, line: 233, type: !45)
!137 = !{!"37"}
!138 = !DILocalVariable(name: "data", arg: 3, scope: !131, file: !4, line: 233, type: !45)
!139 = !{!"38"}
!140 = !DILocalVariable(name: "len", arg: 4, scope: !131, file: !4, line: 233, type: !47)
!141 = !{!"39"}
!142 = !DILocalVariable(name: "tmp", scope: !131, file: !4, line: 236, type: !143)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 512, elements: !145)
!144 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !{!146}
!146 = !DISubrange(count: 64)
!147 = !DILocation(line: 236, column: 16, scope: !131)
!148 = !{!"40"}
!149 = !DILocalVariable(name: "buf1", scope: !131, file: !4, line: 235, type: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!152 = !{!"41"}
!153 = !DILocation(line: 248, column: 13, scope: !131)
!154 = !{!"42"}
!155 = !DILocalVariable(name: "num4", scope: !131, file: !4, line: 237, type: !47)
!156 = !{!"43"}
!157 = !DILocation(line: 249, column: 6, scope: !131)
!158 = !{!"44"}
!159 = !{!"45"}
!160 = !DILocation(line: 250, column: 22, scope: !131)
!161 = !{!"46"}
!162 = !DILocation(line: 250, column: 14, scope: !131)
!163 = !{!"47"}
!164 = !DILocalVariable(name: "buf2", scope: !131, file: !4, line: 235, type: !150)
!165 = !{!"48"}
!166 = !DILocation(line: 251, column: 14, scope: !131)
!167 = !{!"49"}
!168 = !DILocation(line: 251, column: 20, scope: !131)
!169 = !{!"50"}
!170 = !DILocalVariable(name: "num1", scope: !131, file: !4, line: 237, type: !47)
!171 = !{!"51"}
!172 = !DILocation(line: 252, column: 11, scope: !173)
!173 = distinct !DILexicalBlock(scope: !131, file: !4, line: 252, column: 6)
!174 = !{!"52"}
!175 = !DILocation(line: 252, column: 17, scope: !173)
!176 = !{!"53"}
!177 = !DILocation(line: 252, column: 6, scope: !131)
!178 = !{!"54"}
!179 = !DILocation(line: 253, column: 3, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !4, line: 252, column: 23)
!181 = !{!"55"}
!182 = !{!"56"}
!183 = !DILocation(line: 254, column: 10, scope: !180)
!184 = !{!"57"}
!185 = !DILocation(line: 254, column: 14, scope: !180)
!186 = !{!"58"}
!187 = !DILocation(line: 254, column: 30, scope: !180)
!188 = !{!"59"}
!189 = !DILocation(line: 254, column: 36, scope: !180)
!190 = !{!"60"}
!191 = !DILocation(line: 254, column: 3, scope: !180)
!192 = !{!"61"}
!193 = !DILocation(line: 255, column: 10, scope: !180)
!194 = !{!"62"}
!195 = !{!"63"}
!196 = !DILocation(line: 256, column: 2, scope: !180)
!197 = !{!"64"}
!198 = !{!"65"}
!199 = !{!"66"}
!200 = !DILocation(line: 261, column: 2, scope: !131)
!201 = !{!"67"}
!202 = !DILocation(line: 261, column: 2, scope: !203)
!203 = distinct !DILexicalBlock(scope: !131, file: !4, line: 261, column: 2)
!204 = !{!"68"}
!205 = !{!"69"}
!206 = !{!"70"}
!207 = !{!"71"}
!208 = !{!"72"}
!209 = !{!"73"}
!210 = !{!"74"}
!211 = !{!"75"}
!212 = !{!"76"}
!213 = !{!"77"}
!214 = !{!"78"}
!215 = !{!"79"}
!216 = !{!"80"}
!217 = !{!"81"}
!218 = !{!"82"}
!219 = !{!"83"}
!220 = !{!"84"}
!221 = !DILocalVariable(name: "byteswap_index", scope: !131, file: !4, line: 239, type: !6)
!222 = !{!"85"}
!223 = !{!"86"}
!224 = !DILocation(line: 266, column: 23, scope: !131)
!225 = !{!"87"}
!226 = !DILocation(line: 266, column: 7, scope: !131)
!227 = !{!"88"}
!228 = !{!"89"}
!229 = !{!"90"}
!230 = !DILocalVariable(name: "yw", scope: !131, file: !4, line: 238, type: !6)
!231 = !{!"91"}
!232 = !DILocation(line: 267, column: 24, scope: !131)
!233 = !{!"92"}
!234 = !DILocation(line: 267, column: 8, scope: !131)
!235 = !{!"93"}
!236 = !{!"94"}
!237 = !{!"95"}
!238 = !DILocalVariable(name: "h1w", scope: !131, file: !4, line: 238, type: !6)
!239 = !{!"96"}
!240 = !DILocation(line: 268, column: 2, scope: !131)
!241 = !{!"97"}
!242 = !DILocation(line: 268, column: 2, scope: !243)
!243 = distinct !DILexicalBlock(scope: !131, file: !4, line: 268, column: 2)
!244 = !{!"98"}
!245 = !{!"99"}
!246 = !{!"100"}
!247 = !{!"101"}
!248 = !{!"102"}
!249 = !{!"103"}
!250 = !DILocation(line: 269, column: 2, scope: !131)
!251 = !{!"104"}
!252 = !DILocation(line: 269, column: 2, scope: !253)
!253 = distinct !DILexicalBlock(scope: !131, file: !4, line: 269, column: 2)
!254 = !{!"105"}
!255 = !{!"106"}
!256 = !{!"107"}
!257 = !{!"108"}
!258 = !{!"109"}
!259 = !{!"110"}
!260 = !DILocation(line: 270, column: 2, scope: !131)
!261 = !{!"111"}
!262 = !DILocation(line: 270, column: 2, scope: !263)
!263 = distinct !DILexicalBlock(scope: !131, file: !4, line: 270, column: 2)
!264 = !{!"112"}
!265 = !{!"113"}
!266 = !{!"114"}
!267 = !{!"115"}
!268 = !DILocalVariable(name: "h1x", scope: !131, file: !4, line: 238, type: !6)
!269 = !{!"116"}
!270 = !{!"117"}
!271 = !DILocation(line: 272, column: 11, scope: !272)
!272 = distinct !DILexicalBlock(scope: !131, file: !4, line: 272, column: 6)
!273 = !{!"118"}
!274 = !DILocation(line: 272, column: 6, scope: !131)
!275 = !{!"119"}
!276 = !DILocation(line: 279, column: 3, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !4, line: 272, column: 16)
!278 = !{!"120"}
!279 = !DILocation(line: 279, column: 3, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !4, line: 279, column: 3)
!281 = !{!"121"}
!282 = !DILocalVariable(name: "z1", scope: !280, file: !4, line: 279, type: !6)
!283 = !DILocation(line: 0, scope: !280)
!284 = !{!"122"}
!285 = !{!"123"}
!286 = !DILocalVariable(name: "z3", scope: !280, file: !4, line: 279, type: !6)
!287 = !{!"124"}
!288 = !{!"125"}
!289 = !{!"126"}
!290 = !{!"127"}
!291 = !DILocalVariable(name: "z0", scope: !280, file: !4, line: 279, type: !6)
!292 = !{!"128"}
!293 = !{!"129"}
!294 = !{!"130"}
!295 = !{!"131"}
!296 = !DILocalVariable(name: "z2", scope: !280, file: !4, line: 279, type: !6)
!297 = !{!"132"}
!298 = !{!"133"}
!299 = !DILocation(line: 279, column: 3, scope: !300)
!300 = distinct !DILexicalBlock(scope: !280, file: !4, line: 279, column: 3)
!301 = !{!"134"}
!302 = !{!"135"}
!303 = !{!"136"}
!304 = !{!"137"}
!305 = !{!"138"}
!306 = !{!"139"}
!307 = !{!"140"}
!308 = !{!"141"}
!309 = !{!"142"}
!310 = !{!"143"}
!311 = !{!"144"}
!312 = !{!"145"}
!313 = !{!"146"}
!314 = !{!"147"}
!315 = !{!"148"}
!316 = !{!"149"}
!317 = !DILocation(line: 279, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !280, file: !4, line: 279, column: 3)
!319 = !{!"150"}
!320 = !{!"151"}
!321 = !{!"152"}
!322 = !{!"153"}
!323 = !{!"154"}
!324 = !{!"155"}
!325 = !{!"156"}
!326 = !{!"157"}
!327 = !{!"158"}
!328 = !{!"159"}
!329 = !{!"160"}
!330 = !{!"161"}
!331 = !{!"162"}
!332 = !{!"163"}
!333 = !{!"164"}
!334 = !{!"165"}
!335 = !{!"166"}
!336 = !{!"167"}
!337 = !{!"168"}
!338 = !{!"169"}
!339 = !{!"170"}
!340 = !{!"171"}
!341 = !{!"172"}
!342 = !{!"173"}
!343 = !{!"174"}
!344 = !{!"175"}
!345 = !{!"176"}
!346 = !{!"177"}
!347 = !{!"178"}
!348 = !{!"179"}
!349 = !{!"180"}
!350 = !{!"181"}
!351 = !DILocation(line: 279, column: 3, scope: !352)
!352 = distinct !DILexicalBlock(scope: !280, file: !4, line: 279, column: 3)
!353 = !{!"182"}
!354 = !DILocalVariable(name: "h2w", scope: !277, file: !4, line: 273, type: !6)
!355 = !DILocation(line: 0, scope: !277)
!356 = !{!"183"}
!357 = !{!"184"}
!358 = !DILocalVariable(name: "h2x", scope: !277, file: !4, line: 273, type: !6)
!359 = !{!"185"}
!360 = !{!"186"}
!361 = !{!"187"}
!362 = !DILocation(line: 284, column: 8, scope: !277)
!363 = !{!"188"}
!364 = !DILocalVariable(name: "t1", scope: !277, file: !4, line: 274, type: !6)
!365 = !{!"189"}
!366 = !DILocation(line: 285, column: 8, scope: !277)
!367 = !{!"190"}
!368 = !DILocalVariable(name: "t3", scope: !277, file: !4, line: 274, type: !6)
!369 = !{!"191"}
!370 = !DILocation(line: 286, column: 22, scope: !277)
!371 = !{!"192"}
!372 = !DILocation(line: 287, column: 4, scope: !277)
!373 = !{!"193"}
!374 = !DILocation(line: 286, column: 8, scope: !277)
!375 = !{!"194"}
!376 = !DILocalVariable(name: "t2", scope: !277, file: !4, line: 274, type: !6)
!377 = !{!"195"}
!378 = !DILocation(line: 288, column: 8, scope: !277)
!379 = !{!"196"}
!380 = !{!"197"}
!381 = !{!"198"}
!382 = !DILocalVariable(name: "t0", scope: !277, file: !4, line: 274, type: !6)
!383 = !{!"199"}
!384 = !DILocation(line: 289, column: 26, scope: !277)
!385 = !{!"200"}
!386 = !{!"201"}
!387 = !{!"202"}
!388 = !DILocation(line: 289, column: 8, scope: !277)
!389 = !{!"203"}
!390 = !{!"204"}
!391 = !DILocation(line: 290, column: 26, scope: !277)
!392 = !{!"205"}
!393 = !{!"206"}
!394 = !{!"207"}
!395 = !DILocation(line: 290, column: 8, scope: !277)
!396 = !{!"208"}
!397 = !{!"209"}
!398 = !DILocation(line: 291, column: 3, scope: !277)
!399 = !{!"210"}
!400 = !DILocation(line: 291, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !277, file: !4, line: 291, column: 3)
!402 = !{!"211"}
!403 = !{!"212"}
!404 = !{!"213"}
!405 = !{!"214"}
!406 = !{!"215"}
!407 = !{!"216"}
!408 = !{!"217"}
!409 = !{!"218"}
!410 = !{!"219"}
!411 = !{!"220"}
!412 = !{!"221"}
!413 = !{!"222"}
!414 = !{!"223"}
!415 = !{!"224"}
!416 = !{!"225"}
!417 = !DILocation(line: 292, column: 3, scope: !277)
!418 = !{!"226"}
!419 = !DILocation(line: 292, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !277, file: !4, line: 292, column: 3)
!421 = !{!"227"}
!422 = !{!"228"}
!423 = !{!"229"}
!424 = !{!"230"}
!425 = !{!"231"}
!426 = !{!"232"}
!427 = !{!"233"}
!428 = !{!"234"}
!429 = !{!"235"}
!430 = !{!"236"}
!431 = !{!"237"}
!432 = !{!"238"}
!433 = !{!"239"}
!434 = !{!"240"}
!435 = !{!"241"}
!436 = !{!"242"}
!437 = !{!"243"}
!438 = !{!"244"}
!439 = !{!"245"}
!440 = !{!"246"}
!441 = !{!"247"}
!442 = !{!"248"}
!443 = !{!"249"}
!444 = !{!"250"}
!445 = !{!"251"}
!446 = !{!"252"}
!447 = !{!"253"}
!448 = !{!"254"}
!449 = !{!"255"}
!450 = !{!"256"}
!451 = !{!"257"}
!452 = !DILocation(line: 293, column: 3, scope: !277)
!453 = !{!"258"}
!454 = !DILocation(line: 293, column: 3, scope: !455)
!455 = distinct !DILexicalBlock(scope: !277, file: !4, line: 293, column: 3)
!456 = !{!"259"}
!457 = !DILocalVariable(name: "h3w", scope: !277, file: !4, line: 273, type: !6)
!458 = !{!"260"}
!459 = !{!"261"}
!460 = !DILocalVariable(name: "h3x", scope: !277, file: !4, line: 273, type: !6)
!461 = !{!"262"}
!462 = !{!"263"}
!463 = !DILocation(line: 298, column: 3, scope: !277)
!464 = !{!"264"}
!465 = !DILocation(line: 298, column: 3, scope: !466)
!466 = distinct !DILexicalBlock(scope: !277, file: !4, line: 298, column: 3)
!467 = !{!"265"}
!468 = !DILocalVariable(name: "z1", scope: !466, file: !4, line: 298, type: !6)
!469 = !DILocation(line: 0, scope: !466)
!470 = !{!"266"}
!471 = !{!"267"}
!472 = !DILocalVariable(name: "z3", scope: !466, file: !4, line: 298, type: !6)
!473 = !{!"268"}
!474 = !{!"269"}
!475 = !{!"270"}
!476 = !{!"271"}
!477 = !DILocalVariable(name: "z0", scope: !466, file: !4, line: 298, type: !6)
!478 = !{!"272"}
!479 = !{!"273"}
!480 = !{!"274"}
!481 = !{!"275"}
!482 = !DILocalVariable(name: "z2", scope: !466, file: !4, line: 298, type: !6)
!483 = !{!"276"}
!484 = !{!"277"}
!485 = !DILocation(line: 298, column: 3, scope: !486)
!486 = distinct !DILexicalBlock(scope: !466, file: !4, line: 298, column: 3)
!487 = !{!"278"}
!488 = !{!"279"}
!489 = !{!"280"}
!490 = !{!"281"}
!491 = !{!"282"}
!492 = !{!"283"}
!493 = !{!"284"}
!494 = !{!"285"}
!495 = !{!"286"}
!496 = !{!"287"}
!497 = !{!"288"}
!498 = !{!"289"}
!499 = !{!"290"}
!500 = !{!"291"}
!501 = !{!"292"}
!502 = !{!"293"}
!503 = !DILocation(line: 298, column: 3, scope: !504)
!504 = distinct !DILexicalBlock(scope: !466, file: !4, line: 298, column: 3)
!505 = !{!"294"}
!506 = !{!"295"}
!507 = !{!"296"}
!508 = !{!"297"}
!509 = !{!"298"}
!510 = !{!"299"}
!511 = !{!"300"}
!512 = !{!"301"}
!513 = !{!"302"}
!514 = !{!"303"}
!515 = !{!"304"}
!516 = !{!"305"}
!517 = !{!"306"}
!518 = !{!"307"}
!519 = !{!"308"}
!520 = !{!"309"}
!521 = !{!"310"}
!522 = !{!"311"}
!523 = !{!"312"}
!524 = !{!"313"}
!525 = !{!"314"}
!526 = !{!"315"}
!527 = !{!"316"}
!528 = !{!"317"}
!529 = !{!"318"}
!530 = !{!"319"}
!531 = !{!"320"}
!532 = !{!"321"}
!533 = !{!"322"}
!534 = !{!"323"}
!535 = !{!"324"}
!536 = !{!"325"}
!537 = !DILocation(line: 298, column: 3, scope: !538)
!538 = distinct !DILexicalBlock(scope: !466, file: !4, line: 298, column: 3)
!539 = !{!"326"}
!540 = !DILocalVariable(name: "h4w", scope: !277, file: !4, line: 273, type: !6)
!541 = !{!"327"}
!542 = !{!"328"}
!543 = !DILocalVariable(name: "h4x", scope: !277, file: !4, line: 273, type: !6)
!544 = !{!"329"}
!545 = !{!"330"}
!546 = !{!"331"}
!547 = !DILocation(line: 300, column: 3, scope: !277)
!548 = !{!"332"}
!549 = !{!"333"}
!550 = !{!"334"}
!551 = !{!"335"}
!552 = !{!"336"}
!553 = !{!"337"}
!554 = !{!"338"}
!555 = !DILocation(line: 300, column: 15, scope: !277)
!556 = !{!"339"}
!557 = !{!"340"}
!558 = !DILocation(line: 300, column: 18, scope: !277)
!559 = !{!"341"}
!560 = !{!"342"}
!561 = !DILocation(line: 304, column: 40, scope: !562)
!562 = distinct !DILexicalBlock(scope: !277, file: !4, line: 300, column: 23)
!563 = !{!"343"}
!564 = !DILocation(line: 304, column: 26, scope: !562)
!565 = !{!"344"}
!566 = !DILocation(line: 304, column: 10, scope: !562)
!567 = !{!"345"}
!568 = !{!"346"}
!569 = !{!"347"}
!570 = !DILocalVariable(name: "aw0", scope: !562, file: !4, line: 301, type: !6)
!571 = !DILocation(line: 0, scope: !562)
!572 = !{!"348"}
!573 = !DILocation(line: 305, column: 40, scope: !562)
!574 = !{!"349"}
!575 = !DILocation(line: 305, column: 26, scope: !562)
!576 = !{!"350"}
!577 = !DILocation(line: 305, column: 10, scope: !562)
!578 = !{!"351"}
!579 = !{!"352"}
!580 = !{!"353"}
!581 = !DILocalVariable(name: "aw1", scope: !562, file: !4, line: 301, type: !6)
!582 = !{!"354"}
!583 = !DILocation(line: 306, column: 40, scope: !562)
!584 = !{!"355"}
!585 = !DILocation(line: 306, column: 26, scope: !562)
!586 = !{!"356"}
!587 = !DILocation(line: 306, column: 10, scope: !562)
!588 = !{!"357"}
!589 = !{!"358"}
!590 = !{!"359"}
!591 = !DILocalVariable(name: "aw2", scope: !562, file: !4, line: 301, type: !6)
!592 = !{!"360"}
!593 = !DILocation(line: 307, column: 40, scope: !562)
!594 = !{!"361"}
!595 = !DILocation(line: 307, column: 26, scope: !562)
!596 = !{!"362"}
!597 = !DILocation(line: 307, column: 10, scope: !562)
!598 = !{!"363"}
!599 = !{!"364"}
!600 = !{!"365"}
!601 = !DILocalVariable(name: "aw3", scope: !562, file: !4, line: 301, type: !6)
!602 = !{!"366"}
!603 = !DILocation(line: 308, column: 4, scope: !562)
!604 = !{!"367"}
!605 = !DILocation(line: 308, column: 4, scope: !606)
!606 = distinct !DILexicalBlock(scope: !562, file: !4, line: 308, column: 4)
!607 = !{!"368"}
!608 = !{!"369"}
!609 = !{!"370"}
!610 = !{!"371"}
!611 = !{!"372"}
!612 = !{!"373"}
!613 = !DILocation(line: 309, column: 4, scope: !562)
!614 = !{!"374"}
!615 = !DILocation(line: 309, column: 4, scope: !616)
!616 = distinct !DILexicalBlock(scope: !562, file: !4, line: 309, column: 4)
!617 = !{!"375"}
!618 = !{!"376"}
!619 = !{!"377"}
!620 = !{!"378"}
!621 = !{!"379"}
!622 = !{!"380"}
!623 = !DILocation(line: 310, column: 4, scope: !562)
!624 = !{!"381"}
!625 = !DILocation(line: 310, column: 4, scope: !626)
!626 = distinct !DILexicalBlock(scope: !562, file: !4, line: 310, column: 4)
!627 = !{!"382"}
!628 = !{!"383"}
!629 = !{!"384"}
!630 = !{!"385"}
!631 = !{!"386"}
!632 = !{!"387"}
!633 = !DILocation(line: 311, column: 4, scope: !562)
!634 = !{!"388"}
!635 = !DILocation(line: 311, column: 4, scope: !636)
!636 = distinct !DILexicalBlock(scope: !562, file: !4, line: 311, column: 4)
!637 = !{!"389"}
!638 = !{!"390"}
!639 = !{!"391"}
!640 = !{!"392"}
!641 = !{!"393"}
!642 = !{!"394"}
!643 = !DILocation(line: 312, column: 9, scope: !562)
!644 = !{!"395"}
!645 = !{!"396"}
!646 = !DILocation(line: 314, column: 10, scope: !562)
!647 = !{!"397"}
!648 = !{!"398"}
!649 = !DILocation(line: 315, column: 4, scope: !562)
!650 = !{!"399"}
!651 = !DILocation(line: 315, column: 4, scope: !652)
!652 = distinct !DILexicalBlock(scope: !562, file: !4, line: 315, column: 4)
!653 = !{!"400"}
!654 = !{!"401"}
!655 = !{!"402"}
!656 = !{!"403"}
!657 = !DILocalVariable(name: "ax1", scope: !562, file: !4, line: 302, type: !6)
!658 = !{!"404"}
!659 = !{!"405"}
!660 = !DILocation(line: 316, column: 4, scope: !562)
!661 = !{!"406"}
!662 = !DILocation(line: 316, column: 4, scope: !663)
!663 = distinct !DILexicalBlock(scope: !562, file: !4, line: 316, column: 4)
!664 = !{!"407"}
!665 = !{!"408"}
!666 = !{!"409"}
!667 = !{!"410"}
!668 = !DILocalVariable(name: "ax2", scope: !562, file: !4, line: 302, type: !6)
!669 = !{!"411"}
!670 = !{!"412"}
!671 = !DILocation(line: 317, column: 4, scope: !562)
!672 = !{!"413"}
!673 = !DILocation(line: 317, column: 4, scope: !674)
!674 = distinct !DILexicalBlock(scope: !562, file: !4, line: 317, column: 4)
!675 = !{!"414"}
!676 = !{!"415"}
!677 = !{!"416"}
!678 = !{!"417"}
!679 = !DILocalVariable(name: "ax3", scope: !562, file: !4, line: 302, type: !6)
!680 = !{!"418"}
!681 = !{!"419"}
!682 = !DILocation(line: 318, column: 4, scope: !562)
!683 = !{!"420"}
!684 = !DILocation(line: 318, column: 4, scope: !685)
!685 = distinct !DILexicalBlock(scope: !562, file: !4, line: 318, column: 4)
!686 = !{!"421"}
!687 = !{!"422"}
!688 = !{!"423"}
!689 = !{!"424"}
!690 = !DILocalVariable(name: "ax0", scope: !562, file: !4, line: 302, type: !6)
!691 = !{!"425"}
!692 = !{!"426"}
!693 = !DILocation(line: 322, column: 6, scope: !562)
!694 = !{!"427"}
!695 = !DILocation(line: 323, column: 6, scope: !562)
!696 = !{!"428"}
!697 = !DILocation(line: 321, column: 5, scope: !562)
!698 = !{!"429"}
!699 = !DILocation(line: 325, column: 6, scope: !562)
!700 = !{!"430"}
!701 = !DILocation(line: 326, column: 6, scope: !562)
!702 = !{!"431"}
!703 = !DILocation(line: 324, column: 5, scope: !562)
!704 = !{!"432"}
!705 = !DILocation(line: 320, column: 9, scope: !562)
!706 = !{!"433"}
!707 = !{!"434"}
!708 = !DILocation(line: 329, column: 6, scope: !562)
!709 = !{!"435"}
!710 = !DILocation(line: 330, column: 6, scope: !562)
!711 = !{!"436"}
!712 = !DILocation(line: 328, column: 5, scope: !562)
!713 = !{!"437"}
!714 = !DILocation(line: 332, column: 6, scope: !562)
!715 = !{!"438"}
!716 = !DILocation(line: 333, column: 6, scope: !562)
!717 = !{!"439"}
!718 = !DILocation(line: 331, column: 5, scope: !562)
!719 = !{!"440"}
!720 = !DILocation(line: 327, column: 9, scope: !562)
!721 = !{!"441"}
!722 = !{!"442"}
!723 = !DILocation(line: 336, column: 6, scope: !562)
!724 = !{!"443"}
!725 = !DILocation(line: 337, column: 6, scope: !562)
!726 = !{!"444"}
!727 = !DILocation(line: 335, column: 5, scope: !562)
!728 = !{!"445"}
!729 = !DILocation(line: 339, column: 6, scope: !562)
!730 = !{!"446"}
!731 = !DILocation(line: 340, column: 6, scope: !562)
!732 = !{!"447"}
!733 = !DILocation(line: 338, column: 5, scope: !562)
!734 = !{!"448"}
!735 = !DILocation(line: 334, column: 9, scope: !562)
!736 = !{!"449"}
!737 = !{!"450"}
!738 = !DILocation(line: 341, column: 27, scope: !562)
!739 = !{!"451"}
!740 = !DILocation(line: 341, column: 9, scope: !562)
!741 = !{!"452"}
!742 = !{!"453"}
!743 = !DILocation(line: 342, column: 9, scope: !562)
!744 = !{!"454"}
!745 = !{!"455"}
!746 = !{!"456"}
!747 = !{!"457"}
!748 = !DILocation(line: 343, column: 27, scope: !562)
!749 = !{!"458"}
!750 = !{!"459"}
!751 = !{!"460"}
!752 = !DILocation(line: 343, column: 9, scope: !562)
!753 = !{!"461"}
!754 = !{!"462"}
!755 = !DILocation(line: 344, column: 27, scope: !562)
!756 = !{!"463"}
!757 = !{!"464"}
!758 = !{!"465"}
!759 = !DILocation(line: 344, column: 9, scope: !562)
!760 = !{!"466"}
!761 = !{!"467"}
!762 = !DILocation(line: 345, column: 4, scope: !562)
!763 = !{!"468"}
!764 = !DILocation(line: 345, column: 4, scope: !765)
!765 = distinct !DILexicalBlock(scope: !562, file: !4, line: 345, column: 4)
!766 = !{!"469"}
!767 = !{!"470"}
!768 = !{!"471"}
!769 = !{!"472"}
!770 = !{!"473"}
!771 = !{!"474"}
!772 = !{!"475"}
!773 = !{!"476"}
!774 = !{!"477"}
!775 = !{!"478"}
!776 = !{!"479"}
!777 = !{!"480"}
!778 = !{!"481"}
!779 = !{!"482"}
!780 = !{!"483"}
!781 = !DILocation(line: 346, column: 4, scope: !562)
!782 = !{!"484"}
!783 = !DILocation(line: 346, column: 4, scope: !784)
!784 = distinct !DILexicalBlock(scope: !562, file: !4, line: 346, column: 4)
!785 = !{!"485"}
!786 = !{!"486"}
!787 = !{!"487"}
!788 = !{!"488"}
!789 = !{!"489"}
!790 = !{!"490"}
!791 = !{!"491"}
!792 = !{!"492"}
!793 = !{!"493"}
!794 = !{!"494"}
!795 = !{!"495"}
!796 = !{!"496"}
!797 = !{!"497"}
!798 = !{!"498"}
!799 = !{!"499"}
!800 = !{!"500"}
!801 = !{!"501"}
!802 = !{!"502"}
!803 = !{!"503"}
!804 = !{!"504"}
!805 = !{!"505"}
!806 = !{!"506"}
!807 = !{!"507"}
!808 = !{!"508"}
!809 = !{!"509"}
!810 = !{!"510"}
!811 = !{!"511"}
!812 = !{!"512"}
!813 = !{!"513"}
!814 = !{!"514"}
!815 = !{!"515"}
!816 = !DILocation(line: 347, column: 9, scope: !562)
!817 = !{!"516"}
!818 = !{!"517"}
!819 = distinct !{!819, !547, !820, !821}
!820 = !DILocation(line: 348, column: 3, scope: !277)
!821 = !{!"llvm.loop.mustprogress"}
!822 = !{!"518"}
!823 = !DILocation(line: 349, column: 2, scope: !277)
!824 = !{!"519"}
!825 = !{!"520"}
!826 = !{!"521"}
!827 = !DILocation(line: 351, column: 2, scope: !131)
!828 = !{!"522"}
!829 = !{!"523"}
!830 = !{!"524"}
!831 = !{!"525"}
!832 = !{!"526"}
!833 = !{!"527"}
!834 = !{!"528"}
!835 = !DILocation(line: 351, column: 14, scope: !131)
!836 = !{!"529"}
!837 = !{!"530"}
!838 = !DILocation(line: 351, column: 17, scope: !131)
!839 = !{!"531"}
!840 = !{!"532"}
!841 = !DILocation(line: 355, column: 24, scope: !842)
!842 = distinct !DILexicalBlock(scope: !131, file: !4, line: 351, column: 22)
!843 = !{!"533"}
!844 = !DILocation(line: 355, column: 8, scope: !842)
!845 = !{!"534"}
!846 = !{!"535"}
!847 = !{!"536"}
!848 = !DILocalVariable(name: "aw", scope: !842, file: !4, line: 352, type: !6)
!849 = !DILocation(line: 0, scope: !842)
!850 = !{!"537"}
!851 = !DILocation(line: 356, column: 3, scope: !842)
!852 = !{!"538"}
!853 = !DILocation(line: 356, column: 3, scope: !854)
!854 = distinct !DILexicalBlock(scope: !842, file: !4, line: 356, column: 3)
!855 = !{!"539"}
!856 = !{!"540"}
!857 = !{!"541"}
!858 = !{!"542"}
!859 = !{!"543"}
!860 = !{!"544"}
!861 = !DILocation(line: 357, column: 8, scope: !842)
!862 = !{!"545"}
!863 = !{!"546"}
!864 = !DILocation(line: 359, column: 8, scope: !842)
!865 = !{!"547"}
!866 = !{!"548"}
!867 = !DILocation(line: 360, column: 3, scope: !842)
!868 = !{!"549"}
!869 = !DILocation(line: 360, column: 3, scope: !870)
!870 = distinct !DILexicalBlock(scope: !842, file: !4, line: 360, column: 3)
!871 = !{!"550"}
!872 = !{!"551"}
!873 = !{!"552"}
!874 = !{!"553"}
!875 = !DILocalVariable(name: "ax", scope: !842, file: !4, line: 352, type: !6)
!876 = !{!"554"}
!877 = !{!"555"}
!878 = !DILocation(line: 362, column: 8, scope: !842)
!879 = !{!"556"}
!880 = !DILocalVariable(name: "t1", scope: !842, file: !4, line: 353, type: !6)
!881 = !{!"557"}
!882 = !DILocation(line: 363, column: 8, scope: !842)
!883 = !{!"558"}
!884 = !DILocalVariable(name: "t3", scope: !842, file: !4, line: 353, type: !6)
!885 = !{!"559"}
!886 = !DILocation(line: 364, column: 8, scope: !842)
!887 = !{!"560"}
!888 = !DILocalVariable(name: "t2", scope: !842, file: !4, line: 353, type: !6)
!889 = !{!"561"}
!890 = !DILocation(line: 365, column: 26, scope: !842)
!891 = !{!"562"}
!892 = !DILocation(line: 365, column: 8, scope: !842)
!893 = !{!"563"}
!894 = !{!"564"}
!895 = !DILocation(line: 366, column: 8, scope: !842)
!896 = !{!"565"}
!897 = !{!"566"}
!898 = !{!"567"}
!899 = !DILocalVariable(name: "t0", scope: !842, file: !4, line: 353, type: !6)
!900 = !{!"568"}
!901 = !DILocation(line: 367, column: 26, scope: !842)
!902 = !{!"569"}
!903 = !{!"570"}
!904 = !{!"571"}
!905 = !DILocation(line: 367, column: 8, scope: !842)
!906 = !{!"572"}
!907 = !{!"573"}
!908 = !DILocation(line: 368, column: 26, scope: !842)
!909 = !{!"574"}
!910 = !{!"575"}
!911 = !{!"576"}
!912 = !DILocation(line: 368, column: 8, scope: !842)
!913 = !{!"577"}
!914 = !{!"578"}
!915 = !DILocation(line: 369, column: 3, scope: !842)
!916 = !{!"579"}
!917 = !DILocation(line: 369, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !842, file: !4, line: 369, column: 3)
!919 = !{!"580"}
!920 = !{!"581"}
!921 = !{!"582"}
!922 = !{!"583"}
!923 = !{!"584"}
!924 = !{!"585"}
!925 = !{!"586"}
!926 = !{!"587"}
!927 = !{!"588"}
!928 = !{!"589"}
!929 = !{!"590"}
!930 = !{!"591"}
!931 = !{!"592"}
!932 = !{!"593"}
!933 = !{!"594"}
!934 = !DILocation(line: 370, column: 3, scope: !842)
!935 = !{!"595"}
!936 = !DILocation(line: 370, column: 3, scope: !937)
!937 = distinct !DILexicalBlock(scope: !842, file: !4, line: 370, column: 3)
!938 = !{!"596"}
!939 = !{!"597"}
!940 = !{!"598"}
!941 = !{!"599"}
!942 = !{!"600"}
!943 = !{!"601"}
!944 = !{!"602"}
!945 = !{!"603"}
!946 = !{!"604"}
!947 = !{!"605"}
!948 = !{!"606"}
!949 = !{!"607"}
!950 = !{!"608"}
!951 = !{!"609"}
!952 = !{!"610"}
!953 = !{!"611"}
!954 = !{!"612"}
!955 = !{!"613"}
!956 = !{!"614"}
!957 = !{!"615"}
!958 = !{!"616"}
!959 = !{!"617"}
!960 = !{!"618"}
!961 = !{!"619"}
!962 = !{!"620"}
!963 = !{!"621"}
!964 = !{!"622"}
!965 = !{!"623"}
!966 = !{!"624"}
!967 = !{!"625"}
!968 = !{!"626"}
!969 = !DILocation(line: 371, column: 8, scope: !842)
!970 = !{!"627"}
!971 = !{!"628"}
!972 = distinct !{!972, !827, !973, !821}
!973 = !DILocation(line: 372, column: 2, scope: !131)
!974 = !{!"629"}
!975 = !DILocation(line: 374, column: 2, scope: !131)
!976 = !{!"630"}
!977 = !DILocation(line: 374, column: 2, scope: !978)
!978 = distinct !DILexicalBlock(scope: !131, file: !4, line: 374, column: 2)
!979 = !{!"631"}
!980 = !{!"632"}
!981 = !{!"633"}
!982 = !{!"634"}
!983 = !{!"635"}
!984 = !{!"636"}
!985 = !DILocation(line: 375, column: 19, scope: !131)
!986 = !{!"637"}
!987 = !DILocation(line: 375, column: 2, scope: !131)
!988 = !{!"638"}
!989 = !{!"639"}
!990 = !{!"640"}
!991 = !DILocation(line: 376, column: 1, scope: !131)
!992 = !{!"641"}
!993 = distinct !DISubprogram(name: "pclmulqdq11", scope: !4, file: !4, line: 134, type: !994, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!994 = !DISubroutineType(types: !995)
!995 = !{!6, !6, !6}
!996 = !DILocalVariable(name: "x", arg: 1, scope: !993, file: !4, line: 134, type: !6)
!997 = !DILocation(line: 0, scope: !993)
!998 = !{!"642"}
!999 = !DILocalVariable(name: "y", arg: 2, scope: !993, file: !4, line: 134, type: !6)
!1000 = !{!"643"}
!1001 = !DILocation(line: 136, column: 2, scope: !993)
!1002 = !{i32 4644}
!1003 = !{!"644"}
!1004 = !{!"645"}
!1005 = !DILocation(line: 137, column: 2, scope: !993)
!1006 = !{!"646"}
!1007 = distinct !DISubprogram(name: "pclmulqdq00", scope: !4, file: !4, line: 127, type: !994, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!1008 = !DILocalVariable(name: "x", arg: 1, scope: !1007, file: !4, line: 127, type: !6)
!1009 = !DILocation(line: 0, scope: !1007)
!1010 = !{!"647"}
!1011 = !DILocalVariable(name: "y", arg: 2, scope: !1007, file: !4, line: 127, type: !6)
!1012 = !{!"648"}
!1013 = !DILocation(line: 129, column: 2, scope: !1007)
!1014 = !{i32 4496}
!1015 = !{!"649"}
!1016 = !{!"650"}
!1017 = !DILocation(line: 130, column: 2, scope: !1007)
!1018 = !{!"651"}
!1019 = distinct !DISubprogram(name: "br_cpuid", scope: !1020, file: !1020, line: 2541, type: !1021, scopeLine: 2543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!1020 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech/BearSSL/ghash_pclmul")
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!15, !1023, !1023, !1023, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1024, line: 26, baseType: !1025)
!1024 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !1026, line: 42, baseType: !1027)
!1026 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1027 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1028 = !{!"652"}
!1029 = !{!"653"}
!1030 = !{!"654"}
!1031 = !{!"655"}
!1032 = !DILocalVariable(name: "mask_eax", arg: 1, scope: !1019, file: !1020, line: 2541, type: !1023)
!1033 = !DILocation(line: 0, scope: !1019)
!1034 = !{!"656"}
!1035 = !DILocalVariable(name: "mask_ebx", arg: 2, scope: !1019, file: !1020, line: 2541, type: !1023)
!1036 = !{!"657"}
!1037 = !DILocalVariable(name: "mask_ecx", arg: 3, scope: !1019, file: !1020, line: 2542, type: !1023)
!1038 = !{!"658"}
!1039 = !DILocalVariable(name: "mask_edx", arg: 4, scope: !1019, file: !1020, line: 2542, type: !1023)
!1040 = !{!"659"}
!1041 = !DILocalVariable(name: "eax", scope: !1019, file: !1020, line: 2545, type: !1027)
!1042 = !DILocation(line: 2545, column: 11, scope: !1019)
!1043 = !{!"660"}
!1044 = !DILocalVariable(name: "ebx", scope: !1019, file: !1020, line: 2545, type: !1027)
!1045 = !DILocation(line: 2545, column: 16, scope: !1019)
!1046 = !{!"661"}
!1047 = !DILocalVariable(name: "ecx", scope: !1019, file: !1020, line: 2545, type: !1027)
!1048 = !DILocation(line: 2545, column: 21, scope: !1019)
!1049 = !{!"662"}
!1050 = !DILocalVariable(name: "edx", scope: !1019, file: !1020, line: 2545, type: !1027)
!1051 = !DILocation(line: 2545, column: 26, scope: !1019)
!1052 = !{!"663"}
!1053 = !DILocation(line: 2547, column: 6, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1019, file: !1020, line: 2547, column: 6)
!1055 = !{!"664"}
!1056 = !{!"665"}
!1057 = !DILocation(line: 2547, column: 6, scope: !1019)
!1058 = !{!"666"}
!1059 = !DILocation(line: 2548, column: 8, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !1020, line: 2548, column: 7)
!1061 = distinct !DILexicalBlock(scope: !1054, file: !1020, line: 2547, column: 46)
!1062 = !{!"667"}
!1063 = !DILocation(line: 2548, column: 12, scope: !1060)
!1064 = !{!"668"}
!1065 = !DILocation(line: 2548, column: 24, scope: !1060)
!1066 = !{!"669"}
!1067 = !DILocation(line: 2549, column: 4, scope: !1060)
!1068 = !{!"670"}
!1069 = !DILocation(line: 2549, column: 8, scope: !1060)
!1070 = !{!"671"}
!1071 = !DILocation(line: 2549, column: 12, scope: !1060)
!1072 = !{!"672"}
!1073 = !DILocation(line: 2549, column: 24, scope: !1060)
!1074 = !{!"673"}
!1075 = !DILocation(line: 2550, column: 4, scope: !1060)
!1076 = !{!"674"}
!1077 = !DILocation(line: 2550, column: 8, scope: !1060)
!1078 = !{!"675"}
!1079 = !DILocation(line: 2550, column: 12, scope: !1060)
!1080 = !{!"676"}
!1081 = !DILocation(line: 2550, column: 24, scope: !1060)
!1082 = !{!"677"}
!1083 = !DILocation(line: 2551, column: 4, scope: !1060)
!1084 = !{!"678"}
!1085 = !DILocation(line: 2551, column: 8, scope: !1060)
!1086 = !{!"679"}
!1087 = !DILocation(line: 2551, column: 12, scope: !1060)
!1088 = !{!"680"}
!1089 = !DILocation(line: 2551, column: 24, scope: !1060)
!1090 = !{!"681"}
!1091 = !DILocation(line: 2548, column: 7, scope: !1061)
!1092 = !{!"682"}
!1093 = !DILocation(line: 2553, column: 4, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1060, file: !1020, line: 2552, column: 3)
!1095 = !{!"683"}
!1096 = !DILocation(line: 2555, column: 2, scope: !1061)
!1097 = !{!"684"}
!1098 = !DILocation(line: 2568, column: 2, scope: !1019)
!1099 = !{!"685"}
!1100 = !{!"686"}
!1101 = !DILocation(line: 2569, column: 1, scope: !1019)
!1102 = !{!"687"}
!1103 = distinct !DISubprogram(name: "__get_cpuid", scope: !1104, file: !1104, line: 292, type: !1105, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!1104 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/cpuid.h", directory: "")
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!15, !1027, !1107, !1107, !1107, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1108 = !DILocalVariable(name: "__leaf", arg: 1, scope: !1103, file: !1104, line: 292, type: !1027)
!1109 = !DILocation(line: 0, scope: !1103)
!1110 = !{!"688"}
!1111 = !DILocalVariable(name: "__eax", arg: 2, scope: !1103, file: !1104, line: 292, type: !1107)
!1112 = !{!"689"}
!1113 = !DILocalVariable(name: "__ebx", arg: 3, scope: !1103, file: !1104, line: 293, type: !1107)
!1114 = !{!"690"}
!1115 = !DILocalVariable(name: "__ecx", arg: 4, scope: !1103, file: !1104, line: 293, type: !1107)
!1116 = !{!"691"}
!1117 = !DILocalVariable(name: "__edx", arg: 5, scope: !1103, file: !1104, line: 294, type: !1107)
!1118 = !{!"692"}
!1119 = !DILocation(line: 296, column: 54, scope: !1103)
!1120 = !{!"693"}
!1121 = !DILocation(line: 296, column: 31, scope: !1103)
!1122 = !{!"694"}
!1123 = !DILocalVariable(name: "__max_leaf", scope: !1103, file: !1104, line: 296, type: !1027)
!1124 = !{!"695"}
!1125 = !DILocation(line: 298, column: 20, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1103, file: !1104, line: 298, column: 9)
!1127 = !{!"696"}
!1128 = !DILocation(line: 298, column: 25, scope: !1126)
!1129 = !{!"697"}
!1130 = !DILocation(line: 298, column: 39, scope: !1126)
!1131 = !{!"698"}
!1132 = !DILocation(line: 298, column: 9, scope: !1103)
!1133 = !{!"699"}
!1134 = !DILocation(line: 299, column: 9, scope: !1126)
!1135 = !{!"700"}
!1136 = !DILocation(line: 301, column: 5, scope: !1103)
!1137 = !{i32 -2143833858, i32 -2143833822, i32 -2143833798}
!1138 = !{!"701"}
!1139 = !{!"702"}
!1140 = !{!"703"}
!1141 = !{!"704"}
!1142 = !{!"705"}
!1143 = !{!"706"}
!1144 = !{!"707"}
!1145 = !{!"708"}
!1146 = !{!"709"}
!1147 = !DILocation(line: 302, column: 5, scope: !1103)
!1148 = !{!"710"}
!1149 = !{!"711"}
!1150 = !DILocation(line: 303, column: 1, scope: !1103)
!1151 = !{!"712"}
!1152 = distinct !DISubprogram(name: "__get_cpuid_max", scope: !1104, file: !1104, line: 262, type: !1153, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3, retainedNodes: !2)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!15, !1027, !1107}
!1155 = !DILocalVariable(name: "__leaf", arg: 1, scope: !1152, file: !1104, line: 262, type: !1027)
!1156 = !DILocation(line: 0, scope: !1152)
!1157 = !{!"713"}
!1158 = !DILocalVariable(name: "__sig", arg: 2, scope: !1152, file: !1104, line: 262, type: !1107)
!1159 = !{!"714"}
!1160 = !DILocation(line: 286, column: 5, scope: !1152)
!1161 = !{i32 -2143834064, i32 -2143834028, i32 -2143834004}
!1162 = !{!"715"}
!1163 = !{!"716"}
!1164 = !{!"717"}
!1165 = !{!"718"}
!1166 = !{!"719"}
!1167 = !DILocalVariable(name: "__eax", scope: !1152, file: !1104, line: 264, type: !1027)
!1168 = !{!"720"}
!1169 = !DILocalVariable(name: "__ebx", scope: !1152, file: !1104, line: 264, type: !1027)
!1170 = !{!"721"}
!1171 = !DILocalVariable(name: "__ecx", scope: !1152, file: !1104, line: 264, type: !1027)
!1172 = !{!"722"}
!1173 = !DILocalVariable(name: "__edx", scope: !1152, file: !1104, line: 264, type: !1027)
!1174 = !{!"723"}
!1175 = !DILocation(line: 287, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1152, file: !1104, line: 287, column: 9)
!1177 = !{!"724"}
!1178 = !DILocation(line: 287, column: 9, scope: !1152)
!1179 = !{!"725"}
!1180 = !DILocation(line: 288, column: 16, scope: !1176)
!1181 = !{!"726"}
!1182 = !DILocation(line: 288, column: 9, scope: !1176)
!1183 = !{!"727"}
!1184 = !DILocation(line: 289, column: 5, scope: !1152)
!1185 = !{!"728"}
