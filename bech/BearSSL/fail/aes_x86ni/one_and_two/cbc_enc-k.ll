; ModuleID = 'cbc_enc.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_block_cbcdec_class_ = type { i64, i32, i32, void (%struct.br_block_cbcdec_class_**, i8*, i64)*, void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)* }
%struct.br_block_cbcenc_class_ = type { i64, i32, i32, void (%struct.br_block_cbcenc_class_**, i8*, i64)*, void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)* }
%struct.br_block_ctr_class_ = type { i64, i32, i32, void (%struct.br_block_ctr_class_**, i8*, i64)*, i32 (%struct.br_block_ctr_class_**, i8*, i32, i8*, i64)* }
%struct.br_block_ctrcbc_class_ = type { i64, i32, i32, void (%struct.br_block_ctrcbc_class_**, i8*, i64)*, void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)*, void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)*, void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)*, void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)* }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.br_aes_x86ni_cbcdec_keys = type { %struct.br_block_cbcdec_class_*, %union.anon, i32 }
%union.anon = type { [240 x i8] }
%struct.br_aes_x86ni_cbcenc_keys = type { %struct.br_block_cbcenc_class_*, %union.anon, i32 }
%struct.br_aes_x86ni_ctr_keys = type { %struct.br_block_ctr_class_*, %union.anon, i32 }
%struct.br_aes_x86ni_ctrcbc_keys = type { %struct.br_block_ctrcbc_class_*, %union.anon, i32 }
%struct.smack_value = type { i8* }

@br_aes_x86ni_cbcdec_vtable = dso_local constant %struct.br_block_cbcdec_class_ { i64 256, i32 16, i32 4, void (%struct.br_block_cbcdec_class_**, i8*, i64)* bitcast (void (%struct.br_aes_x86ni_cbcdec_keys*, i8*, i64)* @br_aes_x86ni_cbcdec_init to void (%struct.br_block_cbcdec_class_**, i8*, i64)*), void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_aes_x86ni_cbcdec_keys*, i8*, i8*, i64)* @br_aes_x86ni_cbcdec_run to void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)*) }, align 8, !dbg !0
@br_aes_x86ni_cbcenc_vtable = dso_local constant %struct.br_block_cbcenc_class_ { i64 256, i32 16, i32 4, void (%struct.br_block_cbcenc_class_**, i8*, i64)* bitcast (void (%struct.br_aes_x86ni_cbcenc_keys*, i8*, i64)* @br_aes_x86ni_cbcenc_init to void (%struct.br_block_cbcenc_class_**, i8*, i64)*), void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_aes_x86ni_cbcenc_keys*, i8*, i8*, i64)* @br_aes_x86ni_cbcenc_run to void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)*) }, align 8, !dbg !54
@br_aes_x86ni_ctr_vtable = dso_local constant %struct.br_block_ctr_class_ { i64 256, i32 16, i32 4, void (%struct.br_block_ctr_class_**, i8*, i64)* bitcast (void (%struct.br_aes_x86ni_ctr_keys*, i8*, i64)* @br_aes_x86ni_ctr_init to void (%struct.br_block_ctr_class_**, i8*, i64)*), i32 (%struct.br_block_ctr_class_**, i8*, i32, i8*, i64)* bitcast (i32 (%struct.br_aes_x86ni_ctr_keys*, i8*, i32, i8*, i64)* @br_aes_x86ni_ctr_run to i32 (%struct.br_block_ctr_class_**, i8*, i32, i8*, i64)*) }, align 8, !dbg !88
@br_aes_x86ni_ctrcbc_vtable = dso_local constant %struct.br_block_ctrcbc_class_ { i64 256, i32 16, i32 4, void (%struct.br_block_ctrcbc_class_**, i8*, i64)* bitcast (void (%struct.br_aes_x86ni_ctrcbc_keys*, i8*, i64)* @br_aes_x86ni_ctrcbc_init to void (%struct.br_block_ctrcbc_class_**, i8*, i64)*), void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)* bitcast (void (%struct.br_aes_x86ni_ctrcbc_keys*, i8*, i8*, i8*, i64)* @br_aes_x86ni_ctrcbc_encrypt to void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)*), void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)* bitcast (void (%struct.br_aes_x86ni_ctrcbc_keys*, i8*, i8*, i8*, i64)* @br_aes_x86ni_ctrcbc_decrypt to void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)*), void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_aes_x86ni_ctrcbc_keys*, i8*, i8*, i64)* @br_aes_x86ni_ctrcbc_ctr to void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)*), void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_aes_x86ni_ctrcbc_keys*, i8*, i8*, i64)* @br_aes_x86ni_ctrcbc_mac to void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)*) }, align 8, !dbg !132

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_x86ni_supported() #0 !dbg !202 {
  %1 = call i32 @br_cpuid(i32 0, i32 0, i32 34078720, i32 0), !dbg !205
  ret i32 %1, !dbg !206
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_cpuid(i32 %0, i32 %1, i32 %2, i32 %3) #0 !dbg !207 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 %1, metadata !213, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 %2, metadata !214, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 %3, metadata !215, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %5, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %6, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %7, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %8, metadata !222, metadata !DIExpression()), !dbg !223
  %9 = call i32 @__get_cpuid(i32 1, i32* %5, i32* %6, i32* %7, i32* %8), !dbg !224
  %10 = icmp ne i32 %9, 0, !dbg !224
  br i1 %10, label %11, label %29, !dbg !226

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4, !dbg !227
  %13 = and i32 %12, %0, !dbg !230
  %14 = icmp eq i32 %13, %0, !dbg !231
  br i1 %14, label %15, label %28, !dbg !232

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4, !dbg !233
  %17 = and i32 %16, %1, !dbg !234
  %18 = icmp eq i32 %17, %1, !dbg !235
  br i1 %18, label %19, label %28, !dbg !236

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4, !dbg !237
  %21 = and i32 %20, %2, !dbg !238
  %22 = icmp eq i32 %21, %2, !dbg !239
  br i1 %22, label %23, label %28, !dbg !240

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4, !dbg !241
  %25 = and i32 %24, %3, !dbg !242
  %26 = icmp eq i32 %25, %3, !dbg !243
  br i1 %26, label %27, label %28, !dbg !244

27:                                               ; preds = %23
  br label %30, !dbg !245

28:                                               ; preds = %23, %19, %15, %11
  br label %29, !dbg !247

29:                                               ; preds = %28, %4
  br label %30, !dbg !248

30:                                               ; preds = %29, %27
  %.0 = phi i32 [ 1, %27 ], [ 0, %29 ], !dbg !212
  ret i32 %.0, !dbg !249
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @__get_cpuid(i32 %0, i32* noalias %1, i32* noalias %2, i32* noalias %3, i32* noalias %4) #0 !dbg !250 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32* %1, metadata !257, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32* %2, metadata !258, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32* %3, metadata !259, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32* %4, metadata !260, metadata !DIExpression()), !dbg !256
  %6 = and i32 %0, -2147483648, !dbg !261
  %7 = call i32 @__get_cpuid_max(i32 %6, i32* null), !dbg !262
  call void @llvm.dbg.value(metadata i32 %7, metadata !263, metadata !DIExpression()), !dbg !256
  %8 = icmp eq i32 %7, 0, !dbg !264
  br i1 %8, label %11, label %9, !dbg !266

9:                                                ; preds = %5
  %10 = icmp ult i32 %7, %0, !dbg !267
  br i1 %10, label %11, label %12, !dbg !268

11:                                               ; preds = %9, %5
  br label %18, !dbg !269

12:                                               ; preds = %9
  %13 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #5, !dbg !270, !srcloc !271
  %14 = extractvalue { i32, i32, i32, i32 } %13, 0, !dbg !270
  %15 = extractvalue { i32, i32, i32, i32 } %13, 1, !dbg !270
  %16 = extractvalue { i32, i32, i32, i32 } %13, 2, !dbg !270
  %17 = extractvalue { i32, i32, i32, i32 } %13, 3, !dbg !270
  store i32 %14, i32* %1, align 4, !dbg !270
  store i32 %15, i32* %2, align 4, !dbg !270
  store i32 %16, i32* %3, align 4, !dbg !270
  store i32 %17, i32* %4, align 4, !dbg !270
  br label %18, !dbg !272

18:                                               ; preds = %12, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %12 ], !dbg !256
  ret i32 %.0, !dbg !273
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @__get_cpuid_max(i32 %0, i32* noalias %1) #0 !dbg !274 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i32* %1, metadata !279, metadata !DIExpression()), !dbg !278
  %3 = call { i32, i32, i32, i32 } asm "  xchgq  %rbx,${1:q}\0A  cpuid\0A  xchgq  %rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #5, !dbg !280, !srcloc !281
  %4 = extractvalue { i32, i32, i32, i32 } %3, 0, !dbg !280
  %5 = extractvalue { i32, i32, i32, i32 } %3, 1, !dbg !280
  %6 = extractvalue { i32, i32, i32, i32 } %3, 2, !dbg !280
  %7 = extractvalue { i32, i32, i32, i32 } %3, 3, !dbg !280
  call void @llvm.dbg.value(metadata i32 %4, metadata !282, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i32 %5, metadata !283, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i32 %6, metadata !284, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i32 %7, metadata !285, metadata !DIExpression()), !dbg !278
  %8 = icmp ne i32* %1, null, !dbg !286
  br i1 %8, label %9, label %10, !dbg !288

9:                                                ; preds = %2
  store i32 %5, i32* %1, align 4, !dbg !289
  br label %10, !dbg !290

10:                                               ; preds = %9, %2
  ret i32 %4, !dbg !291
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_x86ni_keysched_enc(i8* noalias %0, i8* noalias %1, i64 %2) #2 !dbg !292 {
  %4 = alloca [15 x <2 x i64>], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i8* %1, metadata !299, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i64 %2, metadata !300, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata [15 x <2 x i64>]* %4, metadata !301, metadata !DIExpression()), !dbg !305
  %5 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %4, i64 0, i64 0, !dbg !306
  %6 = call i32 @x86ni_keysched(<2 x i64>* %5, i8* %1, i64 %2), !dbg !307
  call void @llvm.dbg.value(metadata i32 %6, metadata !308, metadata !DIExpression()), !dbg !298
  %7 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %4, i64 0, i64 0, !dbg !309
  %8 = bitcast <2 x i64>* %7 to i8*, !dbg !309
  %9 = add i32 %6, 1, !dbg !310
  %10 = shl i32 %9, 4, !dbg !311
  %11 = zext i32 %10 to i64, !dbg !312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 16 %8, i64 %11, i1 false), !dbg !309
  ret i32 %6, !dbg !313
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @x86ni_keysched(<2 x i64>* noalias %0, i8* noalias %1, i64 %2) #3 !dbg !314 {
  %4 = alloca <2 x i64>, align 16
  %5 = alloca <2 x i64>, align 16
  %6 = alloca <2 x i64>, align 16
  call void @llvm.dbg.value(metadata <2 x i64>* %0, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i8* %1, metadata !320, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i64 %2, metadata !321, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i8* %1, metadata !322, metadata !DIExpression()), !dbg !319
  switch i64 %2, label %276 [
    i64 16, label %7
    i64 24, label %94
    i64 32, label %210
  ], !dbg !325

7:                                                ; preds = %3
  %8 = bitcast i8* %1 to <2 x i64>*, !dbg !326
  %9 = bitcast <2 x i64>* %8 to %struct.__loadu_si128*, !dbg !328
  %10 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %9, i32 0, i32 0, !dbg !328
  %11 = load <2 x i64>, <2 x i64>* %10, align 1, !dbg !328
  store <2 x i64> %11, <2 x i64>* %4, align 16, !dbg !329
  %12 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !330
  %13 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 0, !dbg !331
  store <2 x i64> %12, <2 x i64>* %13, align 16, !dbg !332
  br label %14, !dbg !333

14:                                               ; preds = %7
  %15 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !334
  %16 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !334
  %17 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %16, i8 1), !dbg !334
  %18 = call <2 x i64> @expand_step128(<2 x i64> %15, <2 x i64> %17), !dbg !334
  store <2 x i64> %18, <2 x i64>* %4, align 16, !dbg !334
  %19 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !334
  %20 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 1, !dbg !334
  store <2 x i64> %19, <2 x i64>* %20, align 16, !dbg !334
  br label %21, !dbg !334

21:                                               ; preds = %14
  br label %22, !dbg !336

22:                                               ; preds = %21
  %23 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !337
  %24 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !337
  %25 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %24, i8 2), !dbg !337
  %26 = call <2 x i64> @expand_step128(<2 x i64> %23, <2 x i64> %25), !dbg !337
  store <2 x i64> %26, <2 x i64>* %4, align 16, !dbg !337
  %27 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !337
  %28 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 2, !dbg !337
  store <2 x i64> %27, <2 x i64>* %28, align 16, !dbg !337
  br label %29, !dbg !337

29:                                               ; preds = %22
  br label %30, !dbg !339

30:                                               ; preds = %29
  %31 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !340
  %32 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !340
  %33 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %32, i8 4), !dbg !340
  %34 = call <2 x i64> @expand_step128(<2 x i64> %31, <2 x i64> %33), !dbg !340
  store <2 x i64> %34, <2 x i64>* %4, align 16, !dbg !340
  %35 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !340
  %36 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 3, !dbg !340
  store <2 x i64> %35, <2 x i64>* %36, align 16, !dbg !340
  br label %37, !dbg !340

37:                                               ; preds = %30
  br label %38, !dbg !342

38:                                               ; preds = %37
  %39 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !343
  %40 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !343
  %41 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %40, i8 8), !dbg !343
  %42 = call <2 x i64> @expand_step128(<2 x i64> %39, <2 x i64> %41), !dbg !343
  store <2 x i64> %42, <2 x i64>* %4, align 16, !dbg !343
  %43 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !343
  %44 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 4, !dbg !343
  store <2 x i64> %43, <2 x i64>* %44, align 16, !dbg !343
  br label %45, !dbg !343

45:                                               ; preds = %38
  br label %46, !dbg !345

46:                                               ; preds = %45
  %47 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !346
  %48 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !346
  %49 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %48, i8 16), !dbg !346
  %50 = call <2 x i64> @expand_step128(<2 x i64> %47, <2 x i64> %49), !dbg !346
  store <2 x i64> %50, <2 x i64>* %4, align 16, !dbg !346
  %51 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !346
  %52 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 5, !dbg !346
  store <2 x i64> %51, <2 x i64>* %52, align 16, !dbg !346
  br label %53, !dbg !346

53:                                               ; preds = %46
  br label %54, !dbg !348

54:                                               ; preds = %53
  %55 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !349
  %56 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !349
  %57 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %56, i8 32), !dbg !349
  %58 = call <2 x i64> @expand_step128(<2 x i64> %55, <2 x i64> %57), !dbg !349
  store <2 x i64> %58, <2 x i64>* %4, align 16, !dbg !349
  %59 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !349
  %60 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 6, !dbg !349
  store <2 x i64> %59, <2 x i64>* %60, align 16, !dbg !349
  br label %61, !dbg !349

61:                                               ; preds = %54
  br label %62, !dbg !351

62:                                               ; preds = %61
  %63 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !352
  %64 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !352
  %65 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %64, i8 64), !dbg !352
  %66 = call <2 x i64> @expand_step128(<2 x i64> %63, <2 x i64> %65), !dbg !352
  store <2 x i64> %66, <2 x i64>* %4, align 16, !dbg !352
  %67 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !352
  %68 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 7, !dbg !352
  store <2 x i64> %67, <2 x i64>* %68, align 16, !dbg !352
  br label %69, !dbg !352

69:                                               ; preds = %62
  br label %70, !dbg !354

70:                                               ; preds = %69
  %71 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !355
  %72 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !355
  %73 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %72, i8 -128), !dbg !355
  %74 = call <2 x i64> @expand_step128(<2 x i64> %71, <2 x i64> %73), !dbg !355
  store <2 x i64> %74, <2 x i64>* %4, align 16, !dbg !355
  %75 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !355
  %76 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 8, !dbg !355
  store <2 x i64> %75, <2 x i64>* %76, align 16, !dbg !355
  br label %77, !dbg !355

77:                                               ; preds = %70
  br label %78, !dbg !357

78:                                               ; preds = %77
  %79 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !358
  %80 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !358
  %81 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %80, i8 27), !dbg !358
  %82 = call <2 x i64> @expand_step128(<2 x i64> %79, <2 x i64> %81), !dbg !358
  store <2 x i64> %82, <2 x i64>* %4, align 16, !dbg !358
  %83 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !358
  %84 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 9, !dbg !358
  store <2 x i64> %83, <2 x i64>* %84, align 16, !dbg !358
  br label %85, !dbg !358

85:                                               ; preds = %78
  br label %86, !dbg !360

86:                                               ; preds = %85
  %87 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !361
  %88 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !361
  %89 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %88, i8 54), !dbg !361
  %90 = call <2 x i64> @expand_step128(<2 x i64> %87, <2 x i64> %89), !dbg !361
  store <2 x i64> %90, <2 x i64>* %4, align 16, !dbg !361
  %91 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !361
  %92 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 10, !dbg !361
  store <2 x i64> %91, <2 x i64>* %92, align 16, !dbg !361
  br label %93, !dbg !361

93:                                               ; preds = %86
  br label %277, !dbg !363

94:                                               ; preds = %3
  %95 = bitcast i8* %1 to <2 x i64>*, !dbg !364
  %96 = bitcast <2 x i64>* %95 to %struct.__loadu_si128*, !dbg !365
  %97 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %96, i32 0, i32 0, !dbg !365
  %98 = load <2 x i64>, <2 x i64>* %97, align 1, !dbg !365
  store <2 x i64> %98, <2 x i64>* %4, align 16, !dbg !366
  %99 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !367
  %100 = bitcast i8* %99 to <2 x i64>*, !dbg !368
  %101 = bitcast <2 x i64>* %100 to %struct.__loadu_si128*, !dbg !369
  %102 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %101, i32 0, i32 0, !dbg !369
  %103 = load <2 x i64>, <2 x i64>* %102, align 1, !dbg !369
  store <2 x i64> %103, <2 x i64>* %6, align 16, !dbg !370
  %104 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !371
  %105 = bitcast <2 x i64> %104 to <4 x i32>, !dbg !371
  %106 = shufflevector <4 x i32> %105, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !371
  %107 = bitcast <4 x i32> %106 to <2 x i64>, !dbg !371
  store <2 x i64> %107, <2 x i64>* %6, align 16, !dbg !372
  br label %108, !dbg !373

108:                                              ; preds = %94
  %109 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !374
  %110 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 0, !dbg !374
  store <2 x i64> %109, <2 x i64>* %110, align 16, !dbg !374
  %111 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !374
  %112 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 1, !dbg !374
  store <2 x i64> %111, <2 x i64>* %112, align 16, !dbg !374
  %113 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !374
  %114 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %113, i8 1), !dbg !374
  store <2 x i64> %114, <2 x i64>* %5, align 16, !dbg !374
  call void @expand_step192(<2 x i64>* %4, <2 x i64>* %5, <2 x i64>* %6), !dbg !374
  %115 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 1, !dbg !374
  %116 = load <2 x i64>, <2 x i64>* %115, align 16, !dbg !374
  %117 = bitcast <2 x i64> %116 to <2 x double>, !dbg !374
  %118 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !374
  %119 = bitcast <2 x i64> %118 to <2 x double>, !dbg !374
  %120 = shufflevector <2 x double> %117, <2 x double> %119, <2 x i32> <i32 0, i32 2>, !dbg !374
  %121 = bitcast <2 x double> %120 to <2 x i64>, !dbg !374
  %122 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 1, !dbg !374
  store <2 x i64> %121, <2 x i64>* %122, align 16, !dbg !374
  %123 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !374
  %124 = bitcast <2 x i64> %123 to <2 x double>, !dbg !374
  %125 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !374
  %126 = bitcast <2 x i64> %125 to <2 x double>, !dbg !374
  %127 = shufflevector <2 x double> %124, <2 x double> %126, <2 x i32> <i32 1, i32 2>, !dbg !374
  %128 = bitcast <2 x double> %127 to <2 x i64>, !dbg !374
  %129 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 2, !dbg !374
  store <2 x i64> %128, <2 x i64>* %129, align 16, !dbg !374
  %130 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !374
  %131 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %130, i8 2), !dbg !374
  store <2 x i64> %131, <2 x i64>* %5, align 16, !dbg !374
  call void @expand_step192(<2 x i64>* %4, <2 x i64>* %5, <2 x i64>* %6), !dbg !374
  br label %132, !dbg !374

132:                                              ; preds = %108
  br label %133, !dbg !376

133:                                              ; preds = %132
  %134 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !377
  %135 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 3, !dbg !377
  store <2 x i64> %134, <2 x i64>* %135, align 16, !dbg !377
  %136 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !377
  %137 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 4, !dbg !377
  store <2 x i64> %136, <2 x i64>* %137, align 16, !dbg !377
  %138 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !377
  %139 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %138, i8 4), !dbg !377
  store <2 x i64> %139, <2 x i64>* %5, align 16, !dbg !377
  call void @expand_step192(<2 x i64>* %4, <2 x i64>* %5, <2 x i64>* %6), !dbg !377
  %140 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 4, !dbg !377
  %141 = load <2 x i64>, <2 x i64>* %140, align 16, !dbg !377
  %142 = bitcast <2 x i64> %141 to <2 x double>, !dbg !377
  %143 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !377
  %144 = bitcast <2 x i64> %143 to <2 x double>, !dbg !377
  %145 = shufflevector <2 x double> %142, <2 x double> %144, <2 x i32> <i32 0, i32 2>, !dbg !377
  %146 = bitcast <2 x double> %145 to <2 x i64>, !dbg !377
  %147 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 4, !dbg !377
  store <2 x i64> %146, <2 x i64>* %147, align 16, !dbg !377
  %148 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !377
  %149 = bitcast <2 x i64> %148 to <2 x double>, !dbg !377
  %150 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !377
  %151 = bitcast <2 x i64> %150 to <2 x double>, !dbg !377
  %152 = shufflevector <2 x double> %149, <2 x double> %151, <2 x i32> <i32 1, i32 2>, !dbg !377
  %153 = bitcast <2 x double> %152 to <2 x i64>, !dbg !377
  %154 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 5, !dbg !377
  store <2 x i64> %153, <2 x i64>* %154, align 16, !dbg !377
  %155 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !377
  %156 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %155, i8 8), !dbg !377
  store <2 x i64> %156, <2 x i64>* %5, align 16, !dbg !377
  call void @expand_step192(<2 x i64>* %4, <2 x i64>* %5, <2 x i64>* %6), !dbg !377
  br label %157, !dbg !377

157:                                              ; preds = %133
  br label %158, !dbg !379

158:                                              ; preds = %157
  %159 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !380
  %160 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 6, !dbg !380
  store <2 x i64> %159, <2 x i64>* %160, align 16, !dbg !380
  %161 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !380
  %162 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 7, !dbg !380
  store <2 x i64> %161, <2 x i64>* %162, align 16, !dbg !380
  %163 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !380
  %164 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %163, i8 16), !dbg !380
  store <2 x i64> %164, <2 x i64>* %5, align 16, !dbg !380
  call void @expand_step192(<2 x i64>* %4, <2 x i64>* %5, <2 x i64>* %6), !dbg !380
  %165 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 7, !dbg !380
  %166 = load <2 x i64>, <2 x i64>* %165, align 16, !dbg !380
  %167 = bitcast <2 x i64> %166 to <2 x double>, !dbg !380
  %168 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !380
  %169 = bitcast <2 x i64> %168 to <2 x double>, !dbg !380
  %170 = shufflevector <2 x double> %167, <2 x double> %169, <2 x i32> <i32 0, i32 2>, !dbg !380
  %171 = bitcast <2 x double> %170 to <2 x i64>, !dbg !380
  %172 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 7, !dbg !380
  store <2 x i64> %171, <2 x i64>* %172, align 16, !dbg !380
  %173 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !380
  %174 = bitcast <2 x i64> %173 to <2 x double>, !dbg !380
  %175 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !380
  %176 = bitcast <2 x i64> %175 to <2 x double>, !dbg !380
  %177 = shufflevector <2 x double> %174, <2 x double> %176, <2 x i32> <i32 1, i32 2>, !dbg !380
  %178 = bitcast <2 x double> %177 to <2 x i64>, !dbg !380
  %179 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 8, !dbg !380
  store <2 x i64> %178, <2 x i64>* %179, align 16, !dbg !380
  %180 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !380
  %181 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %180, i8 32), !dbg !380
  store <2 x i64> %181, <2 x i64>* %5, align 16, !dbg !380
  call void @expand_step192(<2 x i64>* %4, <2 x i64>* %5, <2 x i64>* %6), !dbg !380
  br label %182, !dbg !380

182:                                              ; preds = %158
  br label %183, !dbg !382

183:                                              ; preds = %182
  %184 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !383
  %185 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 9, !dbg !383
  store <2 x i64> %184, <2 x i64>* %185, align 16, !dbg !383
  %186 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !383
  %187 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 10, !dbg !383
  store <2 x i64> %186, <2 x i64>* %187, align 16, !dbg !383
  %188 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !383
  %189 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %188, i8 64), !dbg !383
  store <2 x i64> %189, <2 x i64>* %5, align 16, !dbg !383
  call void @expand_step192(<2 x i64>* %4, <2 x i64>* %5, <2 x i64>* %6), !dbg !383
  %190 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 10, !dbg !383
  %191 = load <2 x i64>, <2 x i64>* %190, align 16, !dbg !383
  %192 = bitcast <2 x i64> %191 to <2 x double>, !dbg !383
  %193 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !383
  %194 = bitcast <2 x i64> %193 to <2 x double>, !dbg !383
  %195 = shufflevector <2 x double> %192, <2 x double> %194, <2 x i32> <i32 0, i32 2>, !dbg !383
  %196 = bitcast <2 x double> %195 to <2 x i64>, !dbg !383
  %197 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 10, !dbg !383
  store <2 x i64> %196, <2 x i64>* %197, align 16, !dbg !383
  %198 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !383
  %199 = bitcast <2 x i64> %198 to <2 x double>, !dbg !383
  %200 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !383
  %201 = bitcast <2 x i64> %200 to <2 x double>, !dbg !383
  %202 = shufflevector <2 x double> %199, <2 x double> %201, <2 x i32> <i32 1, i32 2>, !dbg !383
  %203 = bitcast <2 x double> %202 to <2 x i64>, !dbg !383
  %204 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 11, !dbg !383
  store <2 x i64> %203, <2 x i64>* %204, align 16, !dbg !383
  %205 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !383
  %206 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %205, i8 -128), !dbg !383
  store <2 x i64> %206, <2 x i64>* %5, align 16, !dbg !383
  call void @expand_step192(<2 x i64>* %4, <2 x i64>* %5, <2 x i64>* %6), !dbg !383
  br label %207, !dbg !383

207:                                              ; preds = %183
  %208 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !385
  %209 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 12, !dbg !386
  store <2 x i64> %208, <2 x i64>* %209, align 16, !dbg !387
  br label %277, !dbg !388

210:                                              ; preds = %3
  %211 = bitcast i8* %1 to <2 x i64>*, !dbg !389
  %212 = bitcast <2 x i64>* %211 to %struct.__loadu_si128*, !dbg !390
  %213 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %212, i32 0, i32 0, !dbg !390
  %214 = load <2 x i64>, <2 x i64>* %213, align 1, !dbg !390
  store <2 x i64> %214, <2 x i64>* %4, align 16, !dbg !391
  %215 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !392
  %216 = bitcast i8* %215 to <2 x i64>*, !dbg !393
  %217 = bitcast <2 x i64>* %216 to %struct.__loadu_si128*, !dbg !394
  %218 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %217, i32 0, i32 0, !dbg !394
  %219 = load <2 x i64>, <2 x i64>* %218, align 1, !dbg !394
  store <2 x i64> %219, <2 x i64>* %6, align 16, !dbg !395
  %220 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !396
  %221 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 0, !dbg !397
  store <2 x i64> %220, <2 x i64>* %221, align 16, !dbg !398
  br label %222, !dbg !399

222:                                              ; preds = %210
  %223 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !400
  %224 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 1, !dbg !400
  store <2 x i64> %223, <2 x i64>* %224, align 16, !dbg !400
  %225 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !400
  %226 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %225, i8 1), !dbg !400
  store <2 x i64> %226, <2 x i64>* %5, align 16, !dbg !400
  call void @expand_step256_1(<2 x i64>* %4, <2 x i64>* %5), !dbg !400
  %227 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !400
  %228 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 2, !dbg !400
  store <2 x i64> %227, <2 x i64>* %228, align 16, !dbg !400
  call void @expand_step256_2(<2 x i64>* %4, <2 x i64>* %6), !dbg !400
  br label %229, !dbg !400

229:                                              ; preds = %222
  br label %230, !dbg !402

230:                                              ; preds = %229
  %231 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !403
  %232 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 3, !dbg !403
  store <2 x i64> %231, <2 x i64>* %232, align 16, !dbg !403
  %233 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !403
  %234 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %233, i8 2), !dbg !403
  store <2 x i64> %234, <2 x i64>* %5, align 16, !dbg !403
  call void @expand_step256_1(<2 x i64>* %4, <2 x i64>* %5), !dbg !403
  %235 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !403
  %236 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 4, !dbg !403
  store <2 x i64> %235, <2 x i64>* %236, align 16, !dbg !403
  call void @expand_step256_2(<2 x i64>* %4, <2 x i64>* %6), !dbg !403
  br label %237, !dbg !403

237:                                              ; preds = %230
  br label %238, !dbg !405

238:                                              ; preds = %237
  %239 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !406
  %240 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 5, !dbg !406
  store <2 x i64> %239, <2 x i64>* %240, align 16, !dbg !406
  %241 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !406
  %242 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %241, i8 4), !dbg !406
  store <2 x i64> %242, <2 x i64>* %5, align 16, !dbg !406
  call void @expand_step256_1(<2 x i64>* %4, <2 x i64>* %5), !dbg !406
  %243 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !406
  %244 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 6, !dbg !406
  store <2 x i64> %243, <2 x i64>* %244, align 16, !dbg !406
  call void @expand_step256_2(<2 x i64>* %4, <2 x i64>* %6), !dbg !406
  br label %245, !dbg !406

245:                                              ; preds = %238
  br label %246, !dbg !408

246:                                              ; preds = %245
  %247 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !409
  %248 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 7, !dbg !409
  store <2 x i64> %247, <2 x i64>* %248, align 16, !dbg !409
  %249 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !409
  %250 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %249, i8 8), !dbg !409
  store <2 x i64> %250, <2 x i64>* %5, align 16, !dbg !409
  call void @expand_step256_1(<2 x i64>* %4, <2 x i64>* %5), !dbg !409
  %251 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !409
  %252 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 8, !dbg !409
  store <2 x i64> %251, <2 x i64>* %252, align 16, !dbg !409
  call void @expand_step256_2(<2 x i64>* %4, <2 x i64>* %6), !dbg !409
  br label %253, !dbg !409

253:                                              ; preds = %246
  br label %254, !dbg !411

254:                                              ; preds = %253
  %255 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !412
  %256 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 9, !dbg !412
  store <2 x i64> %255, <2 x i64>* %256, align 16, !dbg !412
  %257 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !412
  %258 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %257, i8 16), !dbg !412
  store <2 x i64> %258, <2 x i64>* %5, align 16, !dbg !412
  call void @expand_step256_1(<2 x i64>* %4, <2 x i64>* %5), !dbg !412
  %259 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !412
  %260 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 10, !dbg !412
  store <2 x i64> %259, <2 x i64>* %260, align 16, !dbg !412
  call void @expand_step256_2(<2 x i64>* %4, <2 x i64>* %6), !dbg !412
  br label %261, !dbg !412

261:                                              ; preds = %254
  br label %262, !dbg !414

262:                                              ; preds = %261
  %263 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !415
  %264 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 11, !dbg !415
  store <2 x i64> %263, <2 x i64>* %264, align 16, !dbg !415
  %265 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !415
  %266 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %265, i8 32), !dbg !415
  store <2 x i64> %266, <2 x i64>* %5, align 16, !dbg !415
  call void @expand_step256_1(<2 x i64>* %4, <2 x i64>* %5), !dbg !415
  %267 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !415
  %268 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 12, !dbg !415
  store <2 x i64> %267, <2 x i64>* %268, align 16, !dbg !415
  call void @expand_step256_2(<2 x i64>* %4, <2 x i64>* %6), !dbg !415
  br label %269, !dbg !415

269:                                              ; preds = %262
  %270 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !417
  %271 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 13, !dbg !418
  store <2 x i64> %270, <2 x i64>* %271, align 16, !dbg !419
  %272 = load <2 x i64>, <2 x i64>* %6, align 16, !dbg !420
  %273 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %272, i8 64), !dbg !420
  store <2 x i64> %273, <2 x i64>* %5, align 16, !dbg !421
  call void @expand_step256_1(<2 x i64>* %4, <2 x i64>* %5), !dbg !422
  %274 = load <2 x i64>, <2 x i64>* %4, align 16, !dbg !423
  %275 = getelementptr inbounds <2 x i64>, <2 x i64>* %0, i64 14, !dbg !424
  store <2 x i64> %274, <2 x i64>* %275, align 16, !dbg !425
  br label %277, !dbg !426

276:                                              ; preds = %3
  br label %277, !dbg !427

277:                                              ; preds = %276, %269, %207, %93
  %.0 = phi i32 [ 0, %276 ], [ 14, %269 ], [ 12, %207 ], [ 10, %93 ], !dbg !428
  ret i32 %.0, !dbg !429
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64>, i8 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal <2 x i64> @expand_step128(<2 x i64> %0, <2 x i64> %1) #3 !dbg !430 {
  call void @llvm.dbg.value(metadata <2 x i64> %0, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata <2 x i64> %1, metadata !435, metadata !DIExpression()), !dbg !434
  %3 = bitcast <2 x i64> %0 to <16 x i8>, !dbg !436
  %4 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %3, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !436
  %5 = bitcast <16 x i8> %4 to <2 x i64>, !dbg !436
  %6 = xor <2 x i64> %0, %5, !dbg !437
  call void @llvm.dbg.value(metadata <2 x i64> %6, metadata !433, metadata !DIExpression()), !dbg !434
  %7 = bitcast <2 x i64> %6 to <16 x i8>, !dbg !438
  %8 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %7, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !438
  %9 = bitcast <16 x i8> %8 to <2 x i64>, !dbg !438
  %10 = xor <2 x i64> %6, %9, !dbg !439
  call void @llvm.dbg.value(metadata <2 x i64> %10, metadata !433, metadata !DIExpression()), !dbg !434
  %11 = bitcast <2 x i64> %10 to <16 x i8>, !dbg !440
  %12 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %11, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !440
  %13 = bitcast <16 x i8> %12 to <2 x i64>, !dbg !440
  %14 = xor <2 x i64> %10, %13, !dbg !441
  call void @llvm.dbg.value(metadata <2 x i64> %14, metadata !433, metadata !DIExpression()), !dbg !434
  %15 = bitcast <2 x i64> %1 to <4 x i32>, !dbg !442
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>, !dbg !442
  %17 = bitcast <4 x i32> %16 to <2 x i64>, !dbg !442
  call void @llvm.dbg.value(metadata <2 x i64> %17, metadata !435, metadata !DIExpression()), !dbg !434
  %18 = xor <2 x i64> %14, %17, !dbg !443
  ret <2 x i64> %18, !dbg !444
}

; Function Attrs: noinline nounwind uwtable
define internal void @expand_step192(<2 x i64>* noalias %0, <2 x i64>* noalias %1, <2 x i64>* noalias %2) #3 !dbg !445 {
  call void @llvm.dbg.value(metadata <2 x i64>* %0, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata <2 x i64>* %1, metadata !450, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata <2 x i64>* %2, metadata !451, metadata !DIExpression()), !dbg !449
  %4 = load <2 x i64>, <2 x i64>* %1, align 16, !dbg !452
  %5 = bitcast <2 x i64> %4 to <4 x i32>, !dbg !452
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, !dbg !452
  %7 = bitcast <4 x i32> %6 to <2 x i64>, !dbg !452
  store <2 x i64> %7, <2 x i64>* %1, align 16, !dbg !453
  %8 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !454
  %9 = bitcast <2 x i64> %8 to <16 x i8>, !dbg !454
  %10 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %9, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !454
  %11 = bitcast <16 x i8> %10 to <2 x i64>, !dbg !454
  call void @llvm.dbg.value(metadata <2 x i64> %11, metadata !455, metadata !DIExpression()), !dbg !449
  %12 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !456
  %13 = xor <2 x i64> %12, %11, !dbg !457
  store <2 x i64> %13, <2 x i64>* %0, align 16, !dbg !458
  %14 = bitcast <2 x i64> %11 to <16 x i8>, !dbg !459
  %15 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %14, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !459
  %16 = bitcast <16 x i8> %15 to <2 x i64>, !dbg !459
  call void @llvm.dbg.value(metadata <2 x i64> %16, metadata !455, metadata !DIExpression()), !dbg !449
  %17 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !460
  %18 = xor <2 x i64> %17, %16, !dbg !461
  store <2 x i64> %18, <2 x i64>* %0, align 16, !dbg !462
  %19 = bitcast <2 x i64> %16 to <16 x i8>, !dbg !463
  %20 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %19, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !463
  %21 = bitcast <16 x i8> %20 to <2 x i64>, !dbg !463
  call void @llvm.dbg.value(metadata <2 x i64> %21, metadata !455, metadata !DIExpression()), !dbg !449
  %22 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !464
  %23 = xor <2 x i64> %22, %21, !dbg !465
  store <2 x i64> %23, <2 x i64>* %0, align 16, !dbg !466
  %24 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !467
  %25 = load <2 x i64>, <2 x i64>* %1, align 16, !dbg !468
  %26 = xor <2 x i64> %24, %25, !dbg !469
  store <2 x i64> %26, <2 x i64>* %0, align 16, !dbg !470
  %27 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !471
  %28 = bitcast <2 x i64> %27 to <4 x i32>, !dbg !471
  %29 = shufflevector <4 x i32> %28, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>, !dbg !471
  %30 = bitcast <4 x i32> %29 to <2 x i64>, !dbg !471
  store <2 x i64> %30, <2 x i64>* %1, align 16, !dbg !472
  %31 = load <2 x i64>, <2 x i64>* %2, align 16, !dbg !473
  %32 = bitcast <2 x i64> %31 to <16 x i8>, !dbg !473
  %33 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %32, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !473
  %34 = bitcast <16 x i8> %33 to <2 x i64>, !dbg !473
  call void @llvm.dbg.value(metadata <2 x i64> %34, metadata !455, metadata !DIExpression()), !dbg !449
  %35 = load <2 x i64>, <2 x i64>* %2, align 16, !dbg !474
  %36 = xor <2 x i64> %35, %34, !dbg !475
  store <2 x i64> %36, <2 x i64>* %2, align 16, !dbg !476
  %37 = load <2 x i64>, <2 x i64>* %2, align 16, !dbg !477
  %38 = load <2 x i64>, <2 x i64>* %1, align 16, !dbg !478
  %39 = xor <2 x i64> %37, %38, !dbg !479
  store <2 x i64> %39, <2 x i64>* %2, align 16, !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind uwtable
define internal void @expand_step256_1(<2 x i64>* noalias %0, <2 x i64>* noalias %1) #3 !dbg !482 {
  call void @llvm.dbg.value(metadata <2 x i64>* %0, metadata !485, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata <2 x i64>* %1, metadata !487, metadata !DIExpression()), !dbg !486
  %3 = load <2 x i64>, <2 x i64>* %1, align 16, !dbg !488
  %4 = bitcast <2 x i64> %3 to <4 x i32>, !dbg !488
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>, !dbg !488
  %6 = bitcast <4 x i32> %5 to <2 x i64>, !dbg !488
  store <2 x i64> %6, <2 x i64>* %1, align 16, !dbg !489
  %7 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !490
  %8 = bitcast <2 x i64> %7 to <16 x i8>, !dbg !490
  %9 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %8, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !490
  %10 = bitcast <16 x i8> %9 to <2 x i64>, !dbg !490
  call void @llvm.dbg.value(metadata <2 x i64> %10, metadata !491, metadata !DIExpression()), !dbg !486
  %11 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !492
  %12 = xor <2 x i64> %11, %10, !dbg !493
  store <2 x i64> %12, <2 x i64>* %0, align 16, !dbg !494
  %13 = bitcast <2 x i64> %10 to <16 x i8>, !dbg !495
  %14 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %13, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !495
  %15 = bitcast <16 x i8> %14 to <2 x i64>, !dbg !495
  call void @llvm.dbg.value(metadata <2 x i64> %15, metadata !491, metadata !DIExpression()), !dbg !486
  %16 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !496
  %17 = xor <2 x i64> %16, %15, !dbg !497
  store <2 x i64> %17, <2 x i64>* %0, align 16, !dbg !498
  %18 = bitcast <2 x i64> %15 to <16 x i8>, !dbg !499
  %19 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %18, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !499
  %20 = bitcast <16 x i8> %19 to <2 x i64>, !dbg !499
  call void @llvm.dbg.value(metadata <2 x i64> %20, metadata !491, metadata !DIExpression()), !dbg !486
  %21 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !500
  %22 = xor <2 x i64> %21, %20, !dbg !501
  store <2 x i64> %22, <2 x i64>* %0, align 16, !dbg !502
  %23 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !503
  %24 = load <2 x i64>, <2 x i64>* %1, align 16, !dbg !504
  %25 = xor <2 x i64> %23, %24, !dbg !505
  store <2 x i64> %25, <2 x i64>* %0, align 16, !dbg !506
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind uwtable
define internal void @expand_step256_2(<2 x i64>* noalias %0, <2 x i64>* noalias %1) #3 !dbg !508 {
  call void @llvm.dbg.value(metadata <2 x i64>* %0, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata <2 x i64>* %1, metadata !511, metadata !DIExpression()), !dbg !510
  %3 = load <2 x i64>, <2 x i64>* %0, align 16, !dbg !512
  %4 = call <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64> %3, i8 0), !dbg !512
  call void @llvm.dbg.value(metadata <2 x i64> %4, metadata !513, metadata !DIExpression()), !dbg !510
  %5 = bitcast <2 x i64> %4 to <4 x i32>, !dbg !514
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>, !dbg !514
  %7 = bitcast <4 x i32> %6 to <2 x i64>, !dbg !514
  call void @llvm.dbg.value(metadata <2 x i64> %7, metadata !515, metadata !DIExpression()), !dbg !510
  %8 = load <2 x i64>, <2 x i64>* %1, align 16, !dbg !516
  %9 = bitcast <2 x i64> %8 to <16 x i8>, !dbg !516
  %10 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %9, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !516
  %11 = bitcast <16 x i8> %10 to <2 x i64>, !dbg !516
  call void @llvm.dbg.value(metadata <2 x i64> %11, metadata !513, metadata !DIExpression()), !dbg !510
  %12 = load <2 x i64>, <2 x i64>* %1, align 16, !dbg !517
  %13 = xor <2 x i64> %12, %11, !dbg !518
  store <2 x i64> %13, <2 x i64>* %1, align 16, !dbg !519
  %14 = bitcast <2 x i64> %11 to <16 x i8>, !dbg !520
  %15 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %14, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !520
  %16 = bitcast <16 x i8> %15 to <2 x i64>, !dbg !520
  call void @llvm.dbg.value(metadata <2 x i64> %16, metadata !513, metadata !DIExpression()), !dbg !510
  %17 = load <2 x i64>, <2 x i64>* %1, align 16, !dbg !521
  %18 = xor <2 x i64> %17, %16, !dbg !522
  store <2 x i64> %18, <2 x i64>* %1, align 16, !dbg !523
  %19 = bitcast <2 x i64> %16 to <16 x i8>, !dbg !524
  %20 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %19, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>, !dbg !524
  %21 = bitcast <16 x i8> %20 to <2 x i64>, !dbg !524
  call void @llvm.dbg.value(metadata <2 x i64> %21, metadata !513, metadata !DIExpression()), !dbg !510
  %22 = load <2 x i64>, <2 x i64>* %1, align 16, !dbg !525
  %23 = xor <2 x i64> %22, %21, !dbg !526
  store <2 x i64> %23, <2 x i64>* %1, align 16, !dbg !527
  %24 = load <2 x i64>, <2 x i64>* %1, align 16, !dbg !528
  %25 = xor <2 x i64> %24, %7, !dbg !529
  store <2 x i64> %25, <2 x i64>* %1, align 16, !dbg !530
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_x86ni_keysched_dec(i8* noalias %0, i8* noalias %1, i64 %2) #3 !dbg !532 {
  %4 = alloca [15 x <2 x i64>], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i8* %1, metadata !535, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i64 %2, metadata !536, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata [15 x <2 x i64>]* %4, metadata !537, metadata !DIExpression()), !dbg !538
  %5 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %4, i64 0, i64 0, !dbg !539
  %6 = call i32 @x86ni_keysched(<2 x i64>* %5, i8* %1, i64 %2), !dbg !540
  call void @llvm.dbg.value(metadata i32 %6, metadata !541, metadata !DIExpression()), !dbg !534
  %7 = bitcast i8* %0 to <2 x i64>*, !dbg !542
  %8 = zext i32 %6 to i64, !dbg !543
  %9 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %4, i64 0, i64 %8, !dbg !543
  %10 = load <2 x i64>, <2 x i64>* %9, align 16, !dbg !543
  %11 = bitcast <2 x i64>* %7 to %struct.__loadu_si128*, !dbg !544
  %12 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %11, i32 0, i32 0, !dbg !544
  store <2 x i64> %10, <2 x i64>* %12, align 1, !dbg !544
  call void @llvm.dbg.value(metadata i32 1, metadata !545, metadata !DIExpression()), !dbg !534
  br label %13, !dbg !546

13:                                               ; preds = %27, %3
  %.0 = phi i32 [ 1, %3 ], [ %28, %27 ], !dbg !548
  call void @llvm.dbg.value(metadata i32 %.0, metadata !545, metadata !DIExpression()), !dbg !534
  %14 = icmp ult i32 %.0, %6, !dbg !549
  br i1 %14, label %15, label %29, !dbg !551

15:                                               ; preds = %13
  %16 = shl i32 %.0, 4, !dbg !552
  %17 = zext i32 %16 to i64, !dbg !554
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !554
  %19 = bitcast i8* %18 to <2 x i64>*, !dbg !555
  %20 = sub i32 %6, %.0, !dbg !556
  %21 = zext i32 %20 to i64, !dbg !557
  %22 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %4, i64 0, i64 %21, !dbg !557
  %23 = load <2 x i64>, <2 x i64>* %22, align 16, !dbg !557
  %24 = call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %23) #8, !dbg !558
  %25 = bitcast <2 x i64>* %19 to %struct.__loadu_si128*, !dbg !559
  %26 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %25, i32 0, i32 0, !dbg !559
  store <2 x i64> %24, <2 x i64>* %26, align 1, !dbg !559
  br label %27, !dbg !560

27:                                               ; preds = %15
  %28 = add i32 %.0, 1, !dbg !561
  call void @llvm.dbg.value(metadata i32 %28, metadata !545, metadata !DIExpression()), !dbg !534
  br label %13, !dbg !562, !llvm.loop !563

29:                                               ; preds = %13
  %30 = shl i32 %6, 4, !dbg !566
  %31 = zext i32 %30 to i64, !dbg !567
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !567
  %33 = bitcast i8* %32 to <2 x i64>*, !dbg !568
  %34 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %4, i64 0, i64 0, !dbg !569
  %35 = load <2 x i64>, <2 x i64>* %34, align 16, !dbg !569
  %36 = bitcast <2 x i64>* %33 to %struct.__loadu_si128*, !dbg !570
  %37 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %36, i32 0, i32 0, !dbg !570
  store <2 x i64> %35, <2 x i64>* %37, align 1, !dbg !570
  ret i32 %6, !dbg !571
}

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64>) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_x86ni_cbcdec_init(%struct.br_aes_x86ni_cbcdec_keys* noalias %0, i8* noalias %1, i64 %2) #0 !dbg !572 {
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_cbcdec_keys* %0, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i8* %1, metadata !590, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i64 %2, metadata !591, metadata !DIExpression()), !dbg !589
  %4 = getelementptr inbounds %struct.br_aes_x86ni_cbcdec_keys, %struct.br_aes_x86ni_cbcdec_keys* %0, i32 0, i32 0, !dbg !592
  store %struct.br_block_cbcdec_class_* @br_aes_x86ni_cbcdec_vtable, %struct.br_block_cbcdec_class_** %4, align 8, !dbg !593
  %5 = getelementptr inbounds %struct.br_aes_x86ni_cbcdec_keys, %struct.br_aes_x86ni_cbcdec_keys* %0, i32 0, i32 1, !dbg !594
  %6 = bitcast %union.anon* %5 to [240 x i8]*, !dbg !595
  %7 = getelementptr inbounds [240 x i8], [240 x i8]* %6, i64 0, i64 0, !dbg !596
  %8 = call i32 @br_aes_x86ni_keysched_dec(i8* %7, i8* %1, i64 %2), !dbg !597
  %9 = getelementptr inbounds %struct.br_aes_x86ni_cbcdec_keys, %struct.br_aes_x86ni_cbcdec_keys* %0, i32 0, i32 2, !dbg !598
  store i32 %8, i32* %9, align 8, !dbg !599
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_x86ni_cbcdec_run(%struct.br_aes_x86ni_cbcdec_keys* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #3 !dbg !601 {
  %5 = alloca [15 x <2 x i64>], align 16
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_cbcdec_keys* %0, metadata !606, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i8* %1, metadata !608, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i8* %2, metadata !609, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i64 %3, metadata !610, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.declare(metadata [15 x <2 x i64>]* %5, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i8* %2, metadata !613, metadata !DIExpression()), !dbg !607
  %6 = bitcast i8* %1 to <2 x i64>*, !dbg !614
  %7 = bitcast <2 x i64>* %6 to %struct.__loadu_si128*, !dbg !615
  %8 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %7, i32 0, i32 0, !dbg !615
  %9 = load <2 x i64>, <2 x i64>* %8, align 1, !dbg !615
  call void @llvm.dbg.value(metadata <2 x i64> %9, metadata !616, metadata !DIExpression()), !dbg !607
  %10 = getelementptr inbounds %struct.br_aes_x86ni_cbcdec_keys, %struct.br_aes_x86ni_cbcdec_keys* %0, i32 0, i32 2, !dbg !617
  %11 = load i32, i32* %10, align 8, !dbg !617
  call void @llvm.dbg.value(metadata i32 %11, metadata !618, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i32 0, metadata !619, metadata !DIExpression()), !dbg !607
  br label %12, !dbg !620

12:                                               ; preds = %27, %4
  %.013 = phi i32 [ 0, %4 ], [ %28, %27 ], !dbg !622
  call void @llvm.dbg.value(metadata i32 %.013, metadata !619, metadata !DIExpression()), !dbg !607
  %13 = icmp ule i32 %.013, %11, !dbg !623
  br i1 %13, label %14, label %29, !dbg !625

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.br_aes_x86ni_cbcdec_keys, %struct.br_aes_x86ni_cbcdec_keys* %0, i32 0, i32 1, !dbg !626
  %16 = bitcast %union.anon* %15 to [240 x i8]*, !dbg !628
  %17 = getelementptr inbounds [240 x i8], [240 x i8]* %16, i64 0, i64 0, !dbg !629
  %18 = shl i32 %.013, 4, !dbg !630
  %19 = zext i32 %18 to i64, !dbg !631
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !631
  %21 = bitcast i8* %20 to <2 x i64>*, !dbg !632
  %22 = bitcast <2 x i64>* %21 to %struct.__loadu_si128*, !dbg !633
  %23 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %22, i32 0, i32 0, !dbg !633
  %24 = load <2 x i64>, <2 x i64>* %23, align 1, !dbg !633
  %25 = zext i32 %.013 to i64, !dbg !634
  %26 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 %25, !dbg !634
  store <2 x i64> %24, <2 x i64>* %26, align 16, !dbg !635
  br label %27, !dbg !636

27:                                               ; preds = %14
  %28 = add i32 %.013, 1, !dbg !637
  call void @llvm.dbg.value(metadata i32 %28, metadata !619, metadata !DIExpression()), !dbg !607
  br label %12, !dbg !638, !llvm.loop !639

29:                                               ; preds = %12
  br label %30, !dbg !641

30:                                               ; preds = %355, %29
  %.017 = phi i64 [ %3, %29 ], [ %339, %355 ]
  %.016 = phi i8* [ %2, %29 ], [ %338, %355 ], !dbg !607
  %.014 = phi <2 x i64> [ %9, %29 ], [ %.2, %355 ], !dbg !607
  call void @llvm.dbg.value(metadata <2 x i64> %.014, metadata !616, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i8* %.016, metadata !613, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata i64 %.017, metadata !610, metadata !DIExpression()), !dbg !607
  %31 = icmp ugt i64 %.017, 0, !dbg !642
  br i1 %31, label %32, label %356, !dbg !641

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, i8* %.016, i64 0, !dbg !643
  %34 = bitcast i8* %33 to <2 x i64>*, !dbg !645
  %35 = bitcast <2 x i64>* %34 to %struct.__loadu_si128*, !dbg !646
  %36 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %35, i32 0, i32 0, !dbg !646
  %37 = load <2 x i64>, <2 x i64>* %36, align 1, !dbg !646
  call void @llvm.dbg.value(metadata <2 x i64> %37, metadata !647, metadata !DIExpression()), !dbg !648
  %38 = icmp uge i64 %.017, 64, !dbg !649
  br i1 %38, label %39, label %55, !dbg !651

39:                                               ; preds = %32
  %40 = getelementptr inbounds i8, i8* %.016, i64 16, !dbg !652
  %41 = bitcast i8* %40 to <2 x i64>*, !dbg !654
  %42 = bitcast <2 x i64>* %41 to %struct.__loadu_si128*, !dbg !655
  %43 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %42, i32 0, i32 0, !dbg !655
  %44 = load <2 x i64>, <2 x i64>* %43, align 1, !dbg !655
  call void @llvm.dbg.value(metadata <2 x i64> %44, metadata !656, metadata !DIExpression()), !dbg !648
  %45 = getelementptr inbounds i8, i8* %.016, i64 32, !dbg !657
  %46 = bitcast i8* %45 to <2 x i64>*, !dbg !658
  %47 = bitcast <2 x i64>* %46 to %struct.__loadu_si128*, !dbg !659
  %48 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %47, i32 0, i32 0, !dbg !659
  %49 = load <2 x i64>, <2 x i64>* %48, align 1, !dbg !659
  call void @llvm.dbg.value(metadata <2 x i64> %49, metadata !660, metadata !DIExpression()), !dbg !648
  %50 = getelementptr inbounds i8, i8* %.016, i64 48, !dbg !661
  %51 = bitcast i8* %50 to <2 x i64>*, !dbg !662
  %52 = bitcast <2 x i64>* %51 to %struct.__loadu_si128*, !dbg !663
  %53 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %52, i32 0, i32 0, !dbg !663
  %54 = load <2 x i64>, <2 x i64>* %53, align 1, !dbg !663
  call void @llvm.dbg.value(metadata <2 x i64> %54, metadata !664, metadata !DIExpression()), !dbg !648
  br label %79, !dbg !665

55:                                               ; preds = %32
  %56 = getelementptr inbounds i8, i8* %.016, i64 0, !dbg !666
  %57 = bitcast i8* %56 to <2 x i64>*, !dbg !668
  %58 = bitcast <2 x i64>* %57 to %struct.__loadu_si128*, !dbg !669
  %59 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %58, i32 0, i32 0, !dbg !669
  %60 = load <2 x i64>, <2 x i64>* %59, align 1, !dbg !669
  call void @llvm.dbg.value(metadata <2 x i64> %60, metadata !647, metadata !DIExpression()), !dbg !648
  %61 = icmp uge i64 %.017, 32, !dbg !670
  br i1 %61, label %62, label %77, !dbg !672

62:                                               ; preds = %55
  %63 = getelementptr inbounds i8, i8* %.016, i64 16, !dbg !673
  %64 = bitcast i8* %63 to <2 x i64>*, !dbg !675
  %65 = bitcast <2 x i64>* %64 to %struct.__loadu_si128*, !dbg !676
  %66 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %65, i32 0, i32 0, !dbg !676
  %67 = load <2 x i64>, <2 x i64>* %66, align 1, !dbg !676
  call void @llvm.dbg.value(metadata <2 x i64> %67, metadata !656, metadata !DIExpression()), !dbg !648
  %68 = icmp uge i64 %.017, 48, !dbg !677
  br i1 %68, label %69, label %75, !dbg !679

69:                                               ; preds = %62
  %70 = getelementptr inbounds i8, i8* %.016, i64 32, !dbg !680
  %71 = bitcast i8* %70 to <2 x i64>*, !dbg !682
  %72 = bitcast <2 x i64>* %71 to %struct.__loadu_si128*, !dbg !683
  %73 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %72, i32 0, i32 0, !dbg !683
  %74 = load <2 x i64>, <2 x i64>* %73, align 1, !dbg !683
  call void @llvm.dbg.value(metadata <2 x i64> %74, metadata !660, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %74, metadata !664, metadata !DIExpression()), !dbg !648
  br label %76, !dbg !684

75:                                               ; preds = %62
  call void @llvm.dbg.value(metadata <2 x i64> %60, metadata !660, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %67, metadata !664, metadata !DIExpression()), !dbg !648
  br label %76

76:                                               ; preds = %75, %69
  %.01 = phi <2 x i64> [ %74, %69 ], [ %60, %75 ], !dbg !685
  %.0 = phi <2 x i64> [ %74, %69 ], [ %67, %75 ], !dbg !685
  call void @llvm.dbg.value(metadata <2 x i64> %.0, metadata !664, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.01, metadata !660, metadata !DIExpression()), !dbg !648
  br label %78, !dbg !686

77:                                               ; preds = %55
  call void @llvm.dbg.value(metadata <2 x i64> %60, metadata !656, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %60, metadata !660, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %60, metadata !664, metadata !DIExpression()), !dbg !648
  br label %78

78:                                               ; preds = %77, %76
  %.06 = phi <2 x i64> [ %67, %76 ], [ %60, %77 ], !dbg !687
  %.12 = phi <2 x i64> [ %.01, %76 ], [ %60, %77 ], !dbg !687
  %.1 = phi <2 x i64> [ %.0, %76 ], [ %60, %77 ], !dbg !687
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !664, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.12, metadata !660, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.06, metadata !656, metadata !DIExpression()), !dbg !648
  br label %79

79:                                               ; preds = %78, %39
  %.010 = phi <2 x i64> [ %37, %39 ], [ %60, %78 ], !dbg !648
  %.17 = phi <2 x i64> [ %44, %39 ], [ %.06, %78 ], !dbg !688
  %.23 = phi <2 x i64> [ %49, %39 ], [ %.12, %78 ], !dbg !688
  %.2 = phi <2 x i64> [ %54, %39 ], [ %.1, %78 ], !dbg !688
  call void @llvm.dbg.value(metadata <2 x i64> %.2, metadata !664, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.23, metadata !660, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.17, metadata !656, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.010, metadata !647, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.010, metadata !689, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.17, metadata !690, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.23, metadata !691, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.2, metadata !692, metadata !DIExpression()), !dbg !648
  %80 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 0, !dbg !693
  %81 = load <2 x i64>, <2 x i64>* %80, align 16, !dbg !693
  %82 = xor <2 x i64> %.010, %81, !dbg !694
  call void @llvm.dbg.value(metadata <2 x i64> %82, metadata !647, metadata !DIExpression()), !dbg !648
  %83 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 0, !dbg !695
  %84 = load <2 x i64>, <2 x i64>* %83, align 16, !dbg !695
  %85 = xor <2 x i64> %.17, %84, !dbg !696
  call void @llvm.dbg.value(metadata <2 x i64> %85, metadata !656, metadata !DIExpression()), !dbg !648
  %86 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 0, !dbg !697
  %87 = load <2 x i64>, <2 x i64>* %86, align 16, !dbg !697
  %88 = xor <2 x i64> %.23, %87, !dbg !698
  call void @llvm.dbg.value(metadata <2 x i64> %88, metadata !660, metadata !DIExpression()), !dbg !648
  %89 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 0, !dbg !699
  %90 = load <2 x i64>, <2 x i64>* %89, align 16, !dbg !699
  %91 = xor <2 x i64> %.2, %90, !dbg !700
  call void @llvm.dbg.value(metadata <2 x i64> %91, metadata !664, metadata !DIExpression()), !dbg !648
  %92 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 1, !dbg !701
  %93 = load <2 x i64>, <2 x i64>* %92, align 16, !dbg !701
  %94 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %82, <2 x i64> %93) #8, !dbg !702
  call void @llvm.dbg.value(metadata <2 x i64> %94, metadata !647, metadata !DIExpression()), !dbg !648
  %95 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 1, !dbg !703
  %96 = load <2 x i64>, <2 x i64>* %95, align 16, !dbg !703
  %97 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %85, <2 x i64> %96) #8, !dbg !704
  call void @llvm.dbg.value(metadata <2 x i64> %97, metadata !656, metadata !DIExpression()), !dbg !648
  %98 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 1, !dbg !705
  %99 = load <2 x i64>, <2 x i64>* %98, align 16, !dbg !705
  %100 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %88, <2 x i64> %99) #8, !dbg !706
  call void @llvm.dbg.value(metadata <2 x i64> %100, metadata !660, metadata !DIExpression()), !dbg !648
  %101 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 1, !dbg !707
  %102 = load <2 x i64>, <2 x i64>* %101, align 16, !dbg !707
  %103 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %91, <2 x i64> %102) #8, !dbg !708
  call void @llvm.dbg.value(metadata <2 x i64> %103, metadata !664, metadata !DIExpression()), !dbg !648
  %104 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 2, !dbg !709
  %105 = load <2 x i64>, <2 x i64>* %104, align 16, !dbg !709
  %106 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %94, <2 x i64> %105) #8, !dbg !710
  call void @llvm.dbg.value(metadata <2 x i64> %106, metadata !647, metadata !DIExpression()), !dbg !648
  %107 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 2, !dbg !711
  %108 = load <2 x i64>, <2 x i64>* %107, align 16, !dbg !711
  %109 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %97, <2 x i64> %108) #8, !dbg !712
  call void @llvm.dbg.value(metadata <2 x i64> %109, metadata !656, metadata !DIExpression()), !dbg !648
  %110 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 2, !dbg !713
  %111 = load <2 x i64>, <2 x i64>* %110, align 16, !dbg !713
  %112 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %100, <2 x i64> %111) #8, !dbg !714
  call void @llvm.dbg.value(metadata <2 x i64> %112, metadata !660, metadata !DIExpression()), !dbg !648
  %113 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 2, !dbg !715
  %114 = load <2 x i64>, <2 x i64>* %113, align 16, !dbg !715
  %115 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %103, <2 x i64> %114) #8, !dbg !716
  call void @llvm.dbg.value(metadata <2 x i64> %115, metadata !664, metadata !DIExpression()), !dbg !648
  %116 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 3, !dbg !717
  %117 = load <2 x i64>, <2 x i64>* %116, align 16, !dbg !717
  %118 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %106, <2 x i64> %117) #8, !dbg !718
  call void @llvm.dbg.value(metadata <2 x i64> %118, metadata !647, metadata !DIExpression()), !dbg !648
  %119 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 3, !dbg !719
  %120 = load <2 x i64>, <2 x i64>* %119, align 16, !dbg !719
  %121 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %109, <2 x i64> %120) #8, !dbg !720
  call void @llvm.dbg.value(metadata <2 x i64> %121, metadata !656, metadata !DIExpression()), !dbg !648
  %122 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 3, !dbg !721
  %123 = load <2 x i64>, <2 x i64>* %122, align 16, !dbg !721
  %124 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %112, <2 x i64> %123) #8, !dbg !722
  call void @llvm.dbg.value(metadata <2 x i64> %124, metadata !660, metadata !DIExpression()), !dbg !648
  %125 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 3, !dbg !723
  %126 = load <2 x i64>, <2 x i64>* %125, align 16, !dbg !723
  %127 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %115, <2 x i64> %126) #8, !dbg !724
  call void @llvm.dbg.value(metadata <2 x i64> %127, metadata !664, metadata !DIExpression()), !dbg !648
  %128 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 4, !dbg !725
  %129 = load <2 x i64>, <2 x i64>* %128, align 16, !dbg !725
  %130 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %118, <2 x i64> %129) #8, !dbg !726
  call void @llvm.dbg.value(metadata <2 x i64> %130, metadata !647, metadata !DIExpression()), !dbg !648
  %131 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 4, !dbg !727
  %132 = load <2 x i64>, <2 x i64>* %131, align 16, !dbg !727
  %133 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %121, <2 x i64> %132) #8, !dbg !728
  call void @llvm.dbg.value(metadata <2 x i64> %133, metadata !656, metadata !DIExpression()), !dbg !648
  %134 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 4, !dbg !729
  %135 = load <2 x i64>, <2 x i64>* %134, align 16, !dbg !729
  %136 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %124, <2 x i64> %135) #8, !dbg !730
  call void @llvm.dbg.value(metadata <2 x i64> %136, metadata !660, metadata !DIExpression()), !dbg !648
  %137 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 4, !dbg !731
  %138 = load <2 x i64>, <2 x i64>* %137, align 16, !dbg !731
  %139 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %127, <2 x i64> %138) #8, !dbg !732
  call void @llvm.dbg.value(metadata <2 x i64> %139, metadata !664, metadata !DIExpression()), !dbg !648
  %140 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 5, !dbg !733
  %141 = load <2 x i64>, <2 x i64>* %140, align 16, !dbg !733
  %142 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %130, <2 x i64> %141) #8, !dbg !734
  call void @llvm.dbg.value(metadata <2 x i64> %142, metadata !647, metadata !DIExpression()), !dbg !648
  %143 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 5, !dbg !735
  %144 = load <2 x i64>, <2 x i64>* %143, align 16, !dbg !735
  %145 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %133, <2 x i64> %144) #8, !dbg !736
  call void @llvm.dbg.value(metadata <2 x i64> %145, metadata !656, metadata !DIExpression()), !dbg !648
  %146 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 5, !dbg !737
  %147 = load <2 x i64>, <2 x i64>* %146, align 16, !dbg !737
  %148 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %136, <2 x i64> %147) #8, !dbg !738
  call void @llvm.dbg.value(metadata <2 x i64> %148, metadata !660, metadata !DIExpression()), !dbg !648
  %149 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 5, !dbg !739
  %150 = load <2 x i64>, <2 x i64>* %149, align 16, !dbg !739
  %151 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %139, <2 x i64> %150) #8, !dbg !740
  call void @llvm.dbg.value(metadata <2 x i64> %151, metadata !664, metadata !DIExpression()), !dbg !648
  %152 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 6, !dbg !741
  %153 = load <2 x i64>, <2 x i64>* %152, align 16, !dbg !741
  %154 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %142, <2 x i64> %153) #8, !dbg !742
  call void @llvm.dbg.value(metadata <2 x i64> %154, metadata !647, metadata !DIExpression()), !dbg !648
  %155 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 6, !dbg !743
  %156 = load <2 x i64>, <2 x i64>* %155, align 16, !dbg !743
  %157 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %145, <2 x i64> %156) #8, !dbg !744
  call void @llvm.dbg.value(metadata <2 x i64> %157, metadata !656, metadata !DIExpression()), !dbg !648
  %158 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 6, !dbg !745
  %159 = load <2 x i64>, <2 x i64>* %158, align 16, !dbg !745
  %160 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %148, <2 x i64> %159) #8, !dbg !746
  call void @llvm.dbg.value(metadata <2 x i64> %160, metadata !660, metadata !DIExpression()), !dbg !648
  %161 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 6, !dbg !747
  %162 = load <2 x i64>, <2 x i64>* %161, align 16, !dbg !747
  %163 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %151, <2 x i64> %162) #8, !dbg !748
  call void @llvm.dbg.value(metadata <2 x i64> %163, metadata !664, metadata !DIExpression()), !dbg !648
  %164 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 7, !dbg !749
  %165 = load <2 x i64>, <2 x i64>* %164, align 16, !dbg !749
  %166 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %154, <2 x i64> %165) #8, !dbg !750
  call void @llvm.dbg.value(metadata <2 x i64> %166, metadata !647, metadata !DIExpression()), !dbg !648
  %167 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 7, !dbg !751
  %168 = load <2 x i64>, <2 x i64>* %167, align 16, !dbg !751
  %169 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %157, <2 x i64> %168) #8, !dbg !752
  call void @llvm.dbg.value(metadata <2 x i64> %169, metadata !656, metadata !DIExpression()), !dbg !648
  %170 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 7, !dbg !753
  %171 = load <2 x i64>, <2 x i64>* %170, align 16, !dbg !753
  %172 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %160, <2 x i64> %171) #8, !dbg !754
  call void @llvm.dbg.value(metadata <2 x i64> %172, metadata !660, metadata !DIExpression()), !dbg !648
  %173 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 7, !dbg !755
  %174 = load <2 x i64>, <2 x i64>* %173, align 16, !dbg !755
  %175 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %163, <2 x i64> %174) #8, !dbg !756
  call void @llvm.dbg.value(metadata <2 x i64> %175, metadata !664, metadata !DIExpression()), !dbg !648
  %176 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 8, !dbg !757
  %177 = load <2 x i64>, <2 x i64>* %176, align 16, !dbg !757
  %178 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %166, <2 x i64> %177) #8, !dbg !758
  call void @llvm.dbg.value(metadata <2 x i64> %178, metadata !647, metadata !DIExpression()), !dbg !648
  %179 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 8, !dbg !759
  %180 = load <2 x i64>, <2 x i64>* %179, align 16, !dbg !759
  %181 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %169, <2 x i64> %180) #8, !dbg !760
  call void @llvm.dbg.value(metadata <2 x i64> %181, metadata !656, metadata !DIExpression()), !dbg !648
  %182 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 8, !dbg !761
  %183 = load <2 x i64>, <2 x i64>* %182, align 16, !dbg !761
  %184 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %172, <2 x i64> %183) #8, !dbg !762
  call void @llvm.dbg.value(metadata <2 x i64> %184, metadata !660, metadata !DIExpression()), !dbg !648
  %185 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 8, !dbg !763
  %186 = load <2 x i64>, <2 x i64>* %185, align 16, !dbg !763
  %187 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %175, <2 x i64> %186) #8, !dbg !764
  call void @llvm.dbg.value(metadata <2 x i64> %187, metadata !664, metadata !DIExpression()), !dbg !648
  %188 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 9, !dbg !765
  %189 = load <2 x i64>, <2 x i64>* %188, align 16, !dbg !765
  %190 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %178, <2 x i64> %189) #8, !dbg !766
  call void @llvm.dbg.value(metadata <2 x i64> %190, metadata !647, metadata !DIExpression()), !dbg !648
  %191 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 9, !dbg !767
  %192 = load <2 x i64>, <2 x i64>* %191, align 16, !dbg !767
  %193 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %181, <2 x i64> %192) #8, !dbg !768
  call void @llvm.dbg.value(metadata <2 x i64> %193, metadata !656, metadata !DIExpression()), !dbg !648
  %194 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 9, !dbg !769
  %195 = load <2 x i64>, <2 x i64>* %194, align 16, !dbg !769
  %196 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %184, <2 x i64> %195) #8, !dbg !770
  call void @llvm.dbg.value(metadata <2 x i64> %196, metadata !660, metadata !DIExpression()), !dbg !648
  %197 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 9, !dbg !771
  %198 = load <2 x i64>, <2 x i64>* %197, align 16, !dbg !771
  %199 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %187, <2 x i64> %198) #8, !dbg !772
  call void @llvm.dbg.value(metadata <2 x i64> %199, metadata !664, metadata !DIExpression()), !dbg !648
  %200 = icmp eq i32 %11, 10, !dbg !773
  br i1 %200, label %201, label %214, !dbg !775

201:                                              ; preds = %79
  %202 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !776
  %203 = load <2 x i64>, <2 x i64>* %202, align 16, !dbg !776
  %204 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %190, <2 x i64> %203) #8, !dbg !778
  call void @llvm.dbg.value(metadata <2 x i64> %204, metadata !647, metadata !DIExpression()), !dbg !648
  %205 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !779
  %206 = load <2 x i64>, <2 x i64>* %205, align 16, !dbg !779
  %207 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %193, <2 x i64> %206) #8, !dbg !780
  call void @llvm.dbg.value(metadata <2 x i64> %207, metadata !656, metadata !DIExpression()), !dbg !648
  %208 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !781
  %209 = load <2 x i64>, <2 x i64>* %208, align 16, !dbg !781
  %210 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %196, <2 x i64> %209) #8, !dbg !782
  call void @llvm.dbg.value(metadata <2 x i64> %210, metadata !660, metadata !DIExpression()), !dbg !648
  %211 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !783
  %212 = load <2 x i64>, <2 x i64>* %211, align 16, !dbg !783
  %213 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %199, <2 x i64> %212) #8, !dbg !784
  call void @llvm.dbg.value(metadata <2 x i64> %213, metadata !664, metadata !DIExpression()), !dbg !648
  br label %315, !dbg !785

214:                                              ; preds = %79
  %215 = icmp eq i32 %11, 12, !dbg !786
  br i1 %215, label %216, label %253, !dbg !788

216:                                              ; preds = %214
  %217 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !789
  %218 = load <2 x i64>, <2 x i64>* %217, align 16, !dbg !789
  %219 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %190, <2 x i64> %218) #8, !dbg !791
  call void @llvm.dbg.value(metadata <2 x i64> %219, metadata !647, metadata !DIExpression()), !dbg !648
  %220 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !792
  %221 = load <2 x i64>, <2 x i64>* %220, align 16, !dbg !792
  %222 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %193, <2 x i64> %221) #8, !dbg !793
  call void @llvm.dbg.value(metadata <2 x i64> %222, metadata !656, metadata !DIExpression()), !dbg !648
  %223 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !794
  %224 = load <2 x i64>, <2 x i64>* %223, align 16, !dbg !794
  %225 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %196, <2 x i64> %224) #8, !dbg !795
  call void @llvm.dbg.value(metadata <2 x i64> %225, metadata !660, metadata !DIExpression()), !dbg !648
  %226 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !796
  %227 = load <2 x i64>, <2 x i64>* %226, align 16, !dbg !796
  %228 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %199, <2 x i64> %227) #8, !dbg !797
  call void @llvm.dbg.value(metadata <2 x i64> %228, metadata !664, metadata !DIExpression()), !dbg !648
  %229 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !798
  %230 = load <2 x i64>, <2 x i64>* %229, align 16, !dbg !798
  %231 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %219, <2 x i64> %230) #8, !dbg !799
  call void @llvm.dbg.value(metadata <2 x i64> %231, metadata !647, metadata !DIExpression()), !dbg !648
  %232 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !800
  %233 = load <2 x i64>, <2 x i64>* %232, align 16, !dbg !800
  %234 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %222, <2 x i64> %233) #8, !dbg !801
  call void @llvm.dbg.value(metadata <2 x i64> %234, metadata !656, metadata !DIExpression()), !dbg !648
  %235 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !802
  %236 = load <2 x i64>, <2 x i64>* %235, align 16, !dbg !802
  %237 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %225, <2 x i64> %236) #8, !dbg !803
  call void @llvm.dbg.value(metadata <2 x i64> %237, metadata !660, metadata !DIExpression()), !dbg !648
  %238 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !804
  %239 = load <2 x i64>, <2 x i64>* %238, align 16, !dbg !804
  %240 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %228, <2 x i64> %239) #8, !dbg !805
  call void @llvm.dbg.value(metadata <2 x i64> %240, metadata !664, metadata !DIExpression()), !dbg !648
  %241 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !806
  %242 = load <2 x i64>, <2 x i64>* %241, align 16, !dbg !806
  %243 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %231, <2 x i64> %242) #8, !dbg !807
  call void @llvm.dbg.value(metadata <2 x i64> %243, metadata !647, metadata !DIExpression()), !dbg !648
  %244 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !808
  %245 = load <2 x i64>, <2 x i64>* %244, align 16, !dbg !808
  %246 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %234, <2 x i64> %245) #8, !dbg !809
  call void @llvm.dbg.value(metadata <2 x i64> %246, metadata !656, metadata !DIExpression()), !dbg !648
  %247 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !810
  %248 = load <2 x i64>, <2 x i64>* %247, align 16, !dbg !810
  %249 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %237, <2 x i64> %248) #8, !dbg !811
  call void @llvm.dbg.value(metadata <2 x i64> %249, metadata !660, metadata !DIExpression()), !dbg !648
  %250 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !812
  %251 = load <2 x i64>, <2 x i64>* %250, align 16, !dbg !812
  %252 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %240, <2 x i64> %251) #8, !dbg !813
  call void @llvm.dbg.value(metadata <2 x i64> %252, metadata !664, metadata !DIExpression()), !dbg !648
  br label %314, !dbg !814

253:                                              ; preds = %214
  %254 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !815
  %255 = load <2 x i64>, <2 x i64>* %254, align 16, !dbg !815
  %256 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %190, <2 x i64> %255) #8, !dbg !817
  call void @llvm.dbg.value(metadata <2 x i64> %256, metadata !647, metadata !DIExpression()), !dbg !648
  %257 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !818
  %258 = load <2 x i64>, <2 x i64>* %257, align 16, !dbg !818
  %259 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %193, <2 x i64> %258) #8, !dbg !819
  call void @llvm.dbg.value(metadata <2 x i64> %259, metadata !656, metadata !DIExpression()), !dbg !648
  %260 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !820
  %261 = load <2 x i64>, <2 x i64>* %260, align 16, !dbg !820
  %262 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %196, <2 x i64> %261) #8, !dbg !821
  call void @llvm.dbg.value(metadata <2 x i64> %262, metadata !660, metadata !DIExpression()), !dbg !648
  %263 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !822
  %264 = load <2 x i64>, <2 x i64>* %263, align 16, !dbg !822
  %265 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %199, <2 x i64> %264) #8, !dbg !823
  call void @llvm.dbg.value(metadata <2 x i64> %265, metadata !664, metadata !DIExpression()), !dbg !648
  %266 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !824
  %267 = load <2 x i64>, <2 x i64>* %266, align 16, !dbg !824
  %268 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %256, <2 x i64> %267) #8, !dbg !825
  call void @llvm.dbg.value(metadata <2 x i64> %268, metadata !647, metadata !DIExpression()), !dbg !648
  %269 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !826
  %270 = load <2 x i64>, <2 x i64>* %269, align 16, !dbg !826
  %271 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %259, <2 x i64> %270) #8, !dbg !827
  call void @llvm.dbg.value(metadata <2 x i64> %271, metadata !656, metadata !DIExpression()), !dbg !648
  %272 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !828
  %273 = load <2 x i64>, <2 x i64>* %272, align 16, !dbg !828
  %274 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %262, <2 x i64> %273) #8, !dbg !829
  call void @llvm.dbg.value(metadata <2 x i64> %274, metadata !660, metadata !DIExpression()), !dbg !648
  %275 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !830
  %276 = load <2 x i64>, <2 x i64>* %275, align 16, !dbg !830
  %277 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %265, <2 x i64> %276) #8, !dbg !831
  call void @llvm.dbg.value(metadata <2 x i64> %277, metadata !664, metadata !DIExpression()), !dbg !648
  %278 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !832
  %279 = load <2 x i64>, <2 x i64>* %278, align 16, !dbg !832
  %280 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %268, <2 x i64> %279) #8, !dbg !833
  call void @llvm.dbg.value(metadata <2 x i64> %280, metadata !647, metadata !DIExpression()), !dbg !648
  %281 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !834
  %282 = load <2 x i64>, <2 x i64>* %281, align 16, !dbg !834
  %283 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %271, <2 x i64> %282) #8, !dbg !835
  call void @llvm.dbg.value(metadata <2 x i64> %283, metadata !656, metadata !DIExpression()), !dbg !648
  %284 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !836
  %285 = load <2 x i64>, <2 x i64>* %284, align 16, !dbg !836
  %286 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %274, <2 x i64> %285) #8, !dbg !837
  call void @llvm.dbg.value(metadata <2 x i64> %286, metadata !660, metadata !DIExpression()), !dbg !648
  %287 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !838
  %288 = load <2 x i64>, <2 x i64>* %287, align 16, !dbg !838
  %289 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %277, <2 x i64> %288) #8, !dbg !839
  call void @llvm.dbg.value(metadata <2 x i64> %289, metadata !664, metadata !DIExpression()), !dbg !648
  %290 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 13, !dbg !840
  %291 = load <2 x i64>, <2 x i64>* %290, align 16, !dbg !840
  %292 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %280, <2 x i64> %291) #8, !dbg !841
  call void @llvm.dbg.value(metadata <2 x i64> %292, metadata !647, metadata !DIExpression()), !dbg !648
  %293 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 13, !dbg !842
  %294 = load <2 x i64>, <2 x i64>* %293, align 16, !dbg !842
  %295 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %283, <2 x i64> %294) #8, !dbg !843
  call void @llvm.dbg.value(metadata <2 x i64> %295, metadata !656, metadata !DIExpression()), !dbg !648
  %296 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 13, !dbg !844
  %297 = load <2 x i64>, <2 x i64>* %296, align 16, !dbg !844
  %298 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %286, <2 x i64> %297) #8, !dbg !845
  call void @llvm.dbg.value(metadata <2 x i64> %298, metadata !660, metadata !DIExpression()), !dbg !648
  %299 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 13, !dbg !846
  %300 = load <2 x i64>, <2 x i64>* %299, align 16, !dbg !846
  %301 = call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %289, <2 x i64> %300) #8, !dbg !847
  call void @llvm.dbg.value(metadata <2 x i64> %301, metadata !664, metadata !DIExpression()), !dbg !648
  %302 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 14, !dbg !848
  %303 = load <2 x i64>, <2 x i64>* %302, align 16, !dbg !848
  %304 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %292, <2 x i64> %303) #8, !dbg !849
  call void @llvm.dbg.value(metadata <2 x i64> %304, metadata !647, metadata !DIExpression()), !dbg !648
  %305 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 14, !dbg !850
  %306 = load <2 x i64>, <2 x i64>* %305, align 16, !dbg !850
  %307 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %295, <2 x i64> %306) #8, !dbg !851
  call void @llvm.dbg.value(metadata <2 x i64> %307, metadata !656, metadata !DIExpression()), !dbg !648
  %308 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 14, !dbg !852
  %309 = load <2 x i64>, <2 x i64>* %308, align 16, !dbg !852
  %310 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %298, <2 x i64> %309) #8, !dbg !853
  call void @llvm.dbg.value(metadata <2 x i64> %310, metadata !660, metadata !DIExpression()), !dbg !648
  %311 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 14, !dbg !854
  %312 = load <2 x i64>, <2 x i64>* %311, align 16, !dbg !854
  %313 = call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %301, <2 x i64> %312) #8, !dbg !855
  call void @llvm.dbg.value(metadata <2 x i64> %313, metadata !664, metadata !DIExpression()), !dbg !648
  br label %314

314:                                              ; preds = %253, %216
  %.111 = phi <2 x i64> [ %243, %216 ], [ %304, %253 ], !dbg !856
  %.28 = phi <2 x i64> [ %246, %216 ], [ %307, %253 ], !dbg !856
  %.34 = phi <2 x i64> [ %249, %216 ], [ %310, %253 ], !dbg !856
  %.3 = phi <2 x i64> [ %252, %216 ], [ %313, %253 ], !dbg !856
  call void @llvm.dbg.value(metadata <2 x i64> %.3, metadata !664, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.34, metadata !660, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.28, metadata !656, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.111, metadata !647, metadata !DIExpression()), !dbg !648
  br label %315

315:                                              ; preds = %314, %201
  %.212 = phi <2 x i64> [ %204, %201 ], [ %.111, %314 ], !dbg !857
  %.39 = phi <2 x i64> [ %207, %201 ], [ %.28, %314 ], !dbg !857
  %.45 = phi <2 x i64> [ %210, %201 ], [ %.34, %314 ], !dbg !857
  %.4 = phi <2 x i64> [ %213, %201 ], [ %.3, %314 ], !dbg !857
  call void @llvm.dbg.value(metadata <2 x i64> %.4, metadata !664, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.45, metadata !660, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.39, metadata !656, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.212, metadata !647, metadata !DIExpression()), !dbg !648
  %316 = xor <2 x i64> %.212, %.014, !dbg !858
  call void @llvm.dbg.value(metadata <2 x i64> %316, metadata !647, metadata !DIExpression()), !dbg !648
  %317 = xor <2 x i64> %.39, %.010, !dbg !859
  call void @llvm.dbg.value(metadata <2 x i64> %317, metadata !656, metadata !DIExpression()), !dbg !648
  %318 = xor <2 x i64> %.45, %.17, !dbg !860
  call void @llvm.dbg.value(metadata <2 x i64> %318, metadata !660, metadata !DIExpression()), !dbg !648
  %319 = xor <2 x i64> %.4, %.23, !dbg !861
  call void @llvm.dbg.value(metadata <2 x i64> %319, metadata !664, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata <2 x i64> %.2, metadata !616, metadata !DIExpression()), !dbg !607
  %320 = getelementptr inbounds i8, i8* %.016, i64 0, !dbg !862
  %321 = bitcast i8* %320 to <2 x i64>*, !dbg !863
  %322 = bitcast <2 x i64>* %321 to %struct.__loadu_si128*, !dbg !864
  %323 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %322, i32 0, i32 0, !dbg !864
  store <2 x i64> %316, <2 x i64>* %323, align 1, !dbg !864
  %324 = icmp uge i64 %.017, 64, !dbg !865
  br i1 %324, label %325, label %340, !dbg !867

325:                                              ; preds = %315
  %326 = getelementptr inbounds i8, i8* %.016, i64 16, !dbg !868
  %327 = bitcast i8* %326 to <2 x i64>*, !dbg !870
  %328 = bitcast <2 x i64>* %327 to %struct.__loadu_si128*, !dbg !871
  %329 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %328, i32 0, i32 0, !dbg !871
  store <2 x i64> %317, <2 x i64>* %329, align 1, !dbg !871
  %330 = getelementptr inbounds i8, i8* %.016, i64 32, !dbg !872
  %331 = bitcast i8* %330 to <2 x i64>*, !dbg !873
  %332 = bitcast <2 x i64>* %331 to %struct.__loadu_si128*, !dbg !874
  %333 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %332, i32 0, i32 0, !dbg !874
  store <2 x i64> %318, <2 x i64>* %333, align 1, !dbg !874
  %334 = getelementptr inbounds i8, i8* %.016, i64 48, !dbg !875
  %335 = bitcast i8* %334 to <2 x i64>*, !dbg !876
  %336 = bitcast <2 x i64>* %335 to %struct.__loadu_si128*, !dbg !877
  %337 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %336, i32 0, i32 0, !dbg !877
  store <2 x i64> %319, <2 x i64>* %337, align 1, !dbg !877
  %338 = getelementptr inbounds i8, i8* %.016, i64 64, !dbg !878
  call void @llvm.dbg.value(metadata i8* %338, metadata !613, metadata !DIExpression()), !dbg !607
  %339 = sub i64 %.017, 64, !dbg !879
  call void @llvm.dbg.value(metadata i64 %339, metadata !610, metadata !DIExpression()), !dbg !607
  br label %355, !dbg !880

340:                                              ; preds = %315
  %341 = icmp uge i64 %.017, 32, !dbg !881
  br i1 %341, label %342, label %354, !dbg !884

342:                                              ; preds = %340
  %343 = getelementptr inbounds i8, i8* %.016, i64 16, !dbg !885
  %344 = bitcast i8* %343 to <2 x i64>*, !dbg !887
  %345 = bitcast <2 x i64>* %344 to %struct.__loadu_si128*, !dbg !888
  %346 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %345, i32 0, i32 0, !dbg !888
  store <2 x i64> %317, <2 x i64>* %346, align 1, !dbg !888
  %347 = icmp uge i64 %.017, 48, !dbg !889
  br i1 %347, label %348, label %353, !dbg !891

348:                                              ; preds = %342
  %349 = getelementptr inbounds i8, i8* %.016, i64 32, !dbg !892
  %350 = bitcast i8* %349 to <2 x i64>*, !dbg !894
  %351 = bitcast <2 x i64>* %350 to %struct.__loadu_si128*, !dbg !895
  %352 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %351, i32 0, i32 0, !dbg !895
  store <2 x i64> %318, <2 x i64>* %352, align 1, !dbg !895
  br label %353, !dbg !896

353:                                              ; preds = %348, %342
  br label %354, !dbg !897

354:                                              ; preds = %353, %340
  br label %356, !dbg !898

355:                                              ; preds = %325
  br label %30, !dbg !641, !llvm.loop !899

356:                                              ; preds = %354, %30
  %.115 = phi <2 x i64> [ %.2, %354 ], [ %.014, %30 ], !dbg !607
  call void @llvm.dbg.value(metadata <2 x i64> %.115, metadata !616, metadata !DIExpression()), !dbg !607
  %357 = bitcast i8* %1 to <2 x i64>*, !dbg !901
  %358 = bitcast <2 x i64>* %357 to %struct.__loadu_si128*, !dbg !902
  %359 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %358, i32 0, i32 0, !dbg !902
  store <2 x i64> %.115, <2 x i64>* %359, align 1, !dbg !902
  ret void, !dbg !903
}

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64>, <2 x i64>) #5

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64>, <2 x i64>) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.br_block_cbcdec_class_* @br_aes_x86ni_cbcdec_get_vtable() #0 !dbg !904 {
  %1 = call i32 @br_aes_x86ni_supported(), !dbg !907
  %2 = icmp ne i32 %1, 0, !dbg !907
  %3 = zext i1 %2 to i64, !dbg !907
  %4 = select i1 %2, %struct.br_block_cbcdec_class_* @br_aes_x86ni_cbcdec_vtable, %struct.br_block_cbcdec_class_* null, !dbg !907
  ret %struct.br_block_cbcdec_class_* %4, !dbg !908
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_x86ni_cbcenc_init(%struct.br_aes_x86ni_cbcenc_keys* noalias %0, i8* noalias %1, i64 %2) #0 !dbg !909 {
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_cbcenc_keys* %0, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i8* %1, metadata !924, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64 %2, metadata !925, metadata !DIExpression()), !dbg !923
  %4 = getelementptr inbounds %struct.br_aes_x86ni_cbcenc_keys, %struct.br_aes_x86ni_cbcenc_keys* %0, i32 0, i32 0, !dbg !926
  store %struct.br_block_cbcenc_class_* @br_aes_x86ni_cbcenc_vtable, %struct.br_block_cbcenc_class_** %4, align 8, !dbg !927
  %5 = getelementptr inbounds %struct.br_aes_x86ni_cbcenc_keys, %struct.br_aes_x86ni_cbcenc_keys* %0, i32 0, i32 1, !dbg !928
  %6 = bitcast %union.anon* %5 to [240 x i8]*, !dbg !929
  %7 = getelementptr inbounds [240 x i8], [240 x i8]* %6, i64 0, i64 0, !dbg !930
  %8 = call i32 @br_aes_x86ni_keysched_enc(i8* %7, i8* %1, i64 %2), !dbg !931
  %9 = getelementptr inbounds %struct.br_aes_x86ni_cbcenc_keys, %struct.br_aes_x86ni_cbcenc_keys* %0, i32 0, i32 2, !dbg !932
  store i32 %8, i32* %9, align 8, !dbg !933
  ret void, !dbg !934
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_x86ni_cbcenc_run(%struct.br_aes_x86ni_cbcenc_keys* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #3 !dbg !935 {
  %5 = alloca [15 x <2 x i64>], align 16
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_cbcenc_keys* %0, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i8* %1, metadata !942, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i8* %2, metadata !943, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i64 %3, metadata !944, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata [15 x <2 x i64>]* %5, metadata !945, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i8* %2, metadata !947, metadata !DIExpression()), !dbg !941
  %6 = bitcast i8* %1 to <2 x i64>*, !dbg !948
  %7 = bitcast <2 x i64>* %6 to %struct.__loadu_si128*, !dbg !949
  %8 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %7, i32 0, i32 0, !dbg !949
  %9 = load <2 x i64>, <2 x i64>* %8, align 1, !dbg !949
  call void @llvm.dbg.value(metadata <2 x i64> %9, metadata !950, metadata !DIExpression()), !dbg !941
  %10 = getelementptr inbounds %struct.br_aes_x86ni_cbcenc_keys, %struct.br_aes_x86ni_cbcenc_keys* %0, i32 0, i32 2, !dbg !951
  %11 = load i32, i32* %10, align 8, !dbg !951
  call void @llvm.dbg.value(metadata i32 %11, metadata !952, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i32 0, metadata !953, metadata !DIExpression()), !dbg !941
  br label %12, !dbg !954

12:                                               ; preds = %27, %4
  %.01 = phi i32 [ 0, %4 ], [ %28, %27 ], !dbg !956
  call void @llvm.dbg.value(metadata i32 %.01, metadata !953, metadata !DIExpression()), !dbg !941
  %13 = icmp ule i32 %.01, %11, !dbg !957
  br i1 %13, label %14, label %29, !dbg !959

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.br_aes_x86ni_cbcenc_keys, %struct.br_aes_x86ni_cbcenc_keys* %0, i32 0, i32 1, !dbg !960
  %16 = bitcast %union.anon* %15 to [240 x i8]*, !dbg !962
  %17 = getelementptr inbounds [240 x i8], [240 x i8]* %16, i64 0, i64 0, !dbg !963
  %18 = shl i32 %.01, 4, !dbg !964
  %19 = zext i32 %18 to i64, !dbg !965
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !965
  %21 = bitcast i8* %20 to <2 x i64>*, !dbg !966
  %22 = bitcast <2 x i64>* %21 to %struct.__loadu_si128*, !dbg !967
  %23 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %22, i32 0, i32 0, !dbg !967
  %24 = load <2 x i64>, <2 x i64>* %23, align 1, !dbg !967
  %25 = zext i32 %.01 to i64, !dbg !968
  %26 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 %25, !dbg !968
  store <2 x i64> %24, <2 x i64>* %26, align 16, !dbg !969
  br label %27, !dbg !970

27:                                               ; preds = %14
  %28 = add i32 %.01, 1, !dbg !971
  call void @llvm.dbg.value(metadata i32 %28, metadata !953, metadata !DIExpression()), !dbg !941
  br label %12, !dbg !972, !llvm.loop !973

29:                                               ; preds = %12
  br label %30, !dbg !975

30:                                               ; preds = %102, %29
  %.04 = phi i64 [ %3, %29 ], [ %107, %102 ]
  %.03 = phi i8* [ %2, %29 ], [ %106, %102 ], !dbg !941
  %.02 = phi <2 x i64> [ %9, %29 ], [ %.1, %102 ], !dbg !941
  call void @llvm.dbg.value(metadata <2 x i64> %.02, metadata !950, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i8* %.03, metadata !947, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i64 %.04, metadata !944, metadata !DIExpression()), !dbg !941
  %31 = icmp ugt i64 %.04, 0, !dbg !976
  br i1 %31, label %32, label %108, !dbg !975

32:                                               ; preds = %30
  %33 = bitcast i8* %.03 to <2 x i64>*, !dbg !977
  %34 = bitcast <2 x i64>* %33 to %struct.__loadu_si128*, !dbg !979
  %35 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %34, i32 0, i32 0, !dbg !979
  %36 = load <2 x i64>, <2 x i64>* %35, align 1, !dbg !979
  %37 = xor <2 x i64> %36, %.02, !dbg !980
  call void @llvm.dbg.value(metadata <2 x i64> %37, metadata !981, metadata !DIExpression()), !dbg !982
  %38 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 0, !dbg !983
  %39 = load <2 x i64>, <2 x i64>* %38, align 16, !dbg !983
  %40 = xor <2 x i64> %37, %39, !dbg !984
  call void @llvm.dbg.value(metadata <2 x i64> %40, metadata !981, metadata !DIExpression()), !dbg !982
  %41 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 1, !dbg !985
  %42 = load <2 x i64>, <2 x i64>* %41, align 16, !dbg !985
  %43 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %40, <2 x i64> %42) #8, !dbg !986
  call void @llvm.dbg.value(metadata <2 x i64> %43, metadata !981, metadata !DIExpression()), !dbg !982
  %44 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 2, !dbg !987
  %45 = load <2 x i64>, <2 x i64>* %44, align 16, !dbg !987
  %46 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %43, <2 x i64> %45) #8, !dbg !988
  call void @llvm.dbg.value(metadata <2 x i64> %46, metadata !981, metadata !DIExpression()), !dbg !982
  %47 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 3, !dbg !989
  %48 = load <2 x i64>, <2 x i64>* %47, align 16, !dbg !989
  %49 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %46, <2 x i64> %48) #8, !dbg !990
  call void @llvm.dbg.value(metadata <2 x i64> %49, metadata !981, metadata !DIExpression()), !dbg !982
  %50 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 4, !dbg !991
  %51 = load <2 x i64>, <2 x i64>* %50, align 16, !dbg !991
  %52 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %49, <2 x i64> %51) #8, !dbg !992
  call void @llvm.dbg.value(metadata <2 x i64> %52, metadata !981, metadata !DIExpression()), !dbg !982
  %53 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 5, !dbg !993
  %54 = load <2 x i64>, <2 x i64>* %53, align 16, !dbg !993
  %55 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %52, <2 x i64> %54) #8, !dbg !994
  call void @llvm.dbg.value(metadata <2 x i64> %55, metadata !981, metadata !DIExpression()), !dbg !982
  %56 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 6, !dbg !995
  %57 = load <2 x i64>, <2 x i64>* %56, align 16, !dbg !995
  %58 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %55, <2 x i64> %57) #8, !dbg !996
  call void @llvm.dbg.value(metadata <2 x i64> %58, metadata !981, metadata !DIExpression()), !dbg !982
  %59 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 7, !dbg !997
  %60 = load <2 x i64>, <2 x i64>* %59, align 16, !dbg !997
  %61 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %58, <2 x i64> %60) #8, !dbg !998
  call void @llvm.dbg.value(metadata <2 x i64> %61, metadata !981, metadata !DIExpression()), !dbg !982
  %62 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 8, !dbg !999
  %63 = load <2 x i64>, <2 x i64>* %62, align 16, !dbg !999
  %64 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %61, <2 x i64> %63) #8, !dbg !1000
  call void @llvm.dbg.value(metadata <2 x i64> %64, metadata !981, metadata !DIExpression()), !dbg !982
  %65 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 9, !dbg !1001
  %66 = load <2 x i64>, <2 x i64>* %65, align 16, !dbg !1001
  %67 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %64, <2 x i64> %66) #8, !dbg !1002
  call void @llvm.dbg.value(metadata <2 x i64> %67, metadata !981, metadata !DIExpression()), !dbg !982
  %68 = icmp eq i32 %11, 10, !dbg !1003
  br i1 %68, label %69, label %73, !dbg !1005

69:                                               ; preds = %32
  %70 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1006
  %71 = load <2 x i64>, <2 x i64>* %70, align 16, !dbg !1006
  %72 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %67, <2 x i64> %71) #8, !dbg !1008
  call void @llvm.dbg.value(metadata <2 x i64> %72, metadata !981, metadata !DIExpression()), !dbg !982
  br label %102, !dbg !1009

73:                                               ; preds = %32
  %74 = icmp eq i32 %11, 12, !dbg !1010
  br i1 %74, label %75, label %85, !dbg !1012

75:                                               ; preds = %73
  %76 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1013
  %77 = load <2 x i64>, <2 x i64>* %76, align 16, !dbg !1013
  %78 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %67, <2 x i64> %77) #8, !dbg !1015
  call void @llvm.dbg.value(metadata <2 x i64> %78, metadata !981, metadata !DIExpression()), !dbg !982
  %79 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !1016
  %80 = load <2 x i64>, <2 x i64>* %79, align 16, !dbg !1016
  %81 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %78, <2 x i64> %80) #8, !dbg !1017
  call void @llvm.dbg.value(metadata <2 x i64> %81, metadata !981, metadata !DIExpression()), !dbg !982
  %82 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !1018
  %83 = load <2 x i64>, <2 x i64>* %82, align 16, !dbg !1018
  %84 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %81, <2 x i64> %83) #8, !dbg !1019
  call void @llvm.dbg.value(metadata <2 x i64> %84, metadata !981, metadata !DIExpression()), !dbg !982
  br label %101, !dbg !1020

85:                                               ; preds = %73
  %86 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1021
  %87 = load <2 x i64>, <2 x i64>* %86, align 16, !dbg !1021
  %88 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %67, <2 x i64> %87) #8, !dbg !1023
  call void @llvm.dbg.value(metadata <2 x i64> %88, metadata !981, metadata !DIExpression()), !dbg !982
  %89 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !1024
  %90 = load <2 x i64>, <2 x i64>* %89, align 16, !dbg !1024
  %91 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %88, <2 x i64> %90) #8, !dbg !1025
  call void @llvm.dbg.value(metadata <2 x i64> %91, metadata !981, metadata !DIExpression()), !dbg !982
  %92 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !1026
  %93 = load <2 x i64>, <2 x i64>* %92, align 16, !dbg !1026
  %94 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %91, <2 x i64> %93) #8, !dbg !1027
  call void @llvm.dbg.value(metadata <2 x i64> %94, metadata !981, metadata !DIExpression()), !dbg !982
  %95 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 13, !dbg !1028
  %96 = load <2 x i64>, <2 x i64>* %95, align 16, !dbg !1028
  %97 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %94, <2 x i64> %96) #8, !dbg !1029
  call void @llvm.dbg.value(metadata <2 x i64> %97, metadata !981, metadata !DIExpression()), !dbg !982
  %98 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 14, !dbg !1030
  %99 = load <2 x i64>, <2 x i64>* %98, align 16, !dbg !1030
  %100 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %97, <2 x i64> %99) #8, !dbg !1031
  call void @llvm.dbg.value(metadata <2 x i64> %100, metadata !981, metadata !DIExpression()), !dbg !982
  br label %101

101:                                              ; preds = %85, %75
  %.0 = phi <2 x i64> [ %84, %75 ], [ %100, %85 ], !dbg !1032
  call void @llvm.dbg.value(metadata <2 x i64> %.0, metadata !981, metadata !DIExpression()), !dbg !982
  br label %102

102:                                              ; preds = %101, %69
  %.1 = phi <2 x i64> [ %72, %69 ], [ %.0, %101 ], !dbg !1033
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !981, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !950, metadata !DIExpression()), !dbg !941
  %103 = bitcast i8* %.03 to <2 x i64>*, !dbg !1034
  %104 = bitcast <2 x i64>* %103 to %struct.__loadu_si128*, !dbg !1035
  %105 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %104, i32 0, i32 0, !dbg !1035
  store <2 x i64> %.1, <2 x i64>* %105, align 1, !dbg !1035
  %106 = getelementptr inbounds i8, i8* %.03, i64 16, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %106, metadata !947, metadata !DIExpression()), !dbg !941
  %107 = sub i64 %.04, 16, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %107, metadata !944, metadata !DIExpression()), !dbg !941
  br label %30, !dbg !975, !llvm.loop !1038

108:                                              ; preds = %30
  %109 = bitcast i8* %1 to <2 x i64>*, !dbg !1040
  %110 = bitcast <2 x i64>* %109 to %struct.__loadu_si128*, !dbg !1041
  %111 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %110, i32 0, i32 0, !dbg !1041
  store <2 x i64> %.02, <2 x i64>* %111, align 1, !dbg !1041
  ret void, !dbg !1042
}

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64>, <2 x i64>) #5

; Function Attrs: nounwind readnone
declare <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64>, <2 x i64>) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.br_block_cbcenc_class_* @br_aes_x86ni_cbcenc_get_vtable() #0 !dbg !1043 {
  %1 = call i32 @br_aes_x86ni_supported(), !dbg !1046
  %2 = icmp ne i32 %1, 0, !dbg !1046
  %3 = zext i1 %2 to i64, !dbg !1046
  %4 = select i1 %2, %struct.br_block_cbcenc_class_* @br_aes_x86ni_cbcenc_vtable, %struct.br_block_cbcenc_class_* null, !dbg !1046
  ret %struct.br_block_cbcenc_class_* %4, !dbg !1047
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_x86ni_ctr_init(%struct.br_aes_x86ni_ctr_keys* noalias %0, i8* noalias %1, i64 %2) #0 !dbg !1048 {
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_ctr_keys* %0, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8* %1, metadata !1063, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %2, metadata !1064, metadata !DIExpression()), !dbg !1062
  %4 = getelementptr inbounds %struct.br_aes_x86ni_ctr_keys, %struct.br_aes_x86ni_ctr_keys* %0, i32 0, i32 0, !dbg !1065
  store %struct.br_block_ctr_class_* @br_aes_x86ni_ctr_vtable, %struct.br_block_ctr_class_** %4, align 8, !dbg !1066
  %5 = getelementptr inbounds %struct.br_aes_x86ni_ctr_keys, %struct.br_aes_x86ni_ctr_keys* %0, i32 0, i32 1, !dbg !1067
  %6 = bitcast %union.anon* %5 to [240 x i8]*, !dbg !1068
  %7 = getelementptr inbounds [240 x i8], [240 x i8]* %6, i64 0, i64 0, !dbg !1069
  %8 = call i32 @br_aes_x86ni_keysched_enc(i8* %7, i8* %1, i64 %2), !dbg !1070
  %9 = getelementptr inbounds %struct.br_aes_x86ni_ctr_keys, %struct.br_aes_x86ni_ctr_keys* %0, i32 0, i32 2, !dbg !1071
  store i32 %8, i32* %9, align 8, !dbg !1072
  ret void, !dbg !1073
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_x86ni_ctr_run(%struct.br_aes_x86ni_ctr_keys* noalias %0, i8* noalias %1, i32 %2, i8* noalias %3, i64 %4) #6 !dbg !1074 {
  %6 = alloca [16 x i8], align 16
  %7 = alloca [15 x <2 x i64>], align 16
  %8 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_ctr_keys* %0, metadata !1079, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i8* %1, metadata !1081, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i32 %2, metadata !1082, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i8* %3, metadata !1083, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 %4, metadata !1084, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !1085, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.declare(metadata [15 x <2 x i64>]* %7, metadata !1088, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8* %3, metadata !1090, metadata !DIExpression()), !dbg !1080
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !1091
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 1 %1, i64 12, i1 false), !dbg !1091
  %10 = getelementptr inbounds %struct.br_aes_x86ni_ctr_keys, %struct.br_aes_x86ni_ctr_keys* %0, i32 0, i32 2, !dbg !1092
  %11 = load i32, i32* %10, align 8, !dbg !1092
  call void @llvm.dbg.value(metadata i32 %11, metadata !1093, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i32 0, metadata !1094, metadata !DIExpression()), !dbg !1080
  br label %12, !dbg !1095

12:                                               ; preds = %27, %5
  %.07 = phi i32 [ 0, %5 ], [ %28, %27 ], !dbg !1097
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1094, metadata !DIExpression()), !dbg !1080
  %13 = icmp ule i32 %.07, %11, !dbg !1098
  br i1 %13, label %14, label %29, !dbg !1100

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.br_aes_x86ni_ctr_keys, %struct.br_aes_x86ni_ctr_keys* %0, i32 0, i32 1, !dbg !1101
  %16 = bitcast %union.anon* %15 to [240 x i8]*, !dbg !1103
  %17 = getelementptr inbounds [240 x i8], [240 x i8]* %16, i64 0, i64 0, !dbg !1104
  %18 = shl i32 %.07, 4, !dbg !1105
  %19 = zext i32 %18 to i64, !dbg !1106
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !1106
  %21 = bitcast i8* %20 to <2 x i64>*, !dbg !1107
  %22 = bitcast <2 x i64>* %21 to %struct.__loadu_si128*, !dbg !1108
  %23 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %22, i32 0, i32 0, !dbg !1108
  %24 = load <2 x i64>, <2 x i64>* %23, align 1, !dbg !1108
  %25 = zext i32 %.07 to i64, !dbg !1109
  %26 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 %25, !dbg !1109
  store <2 x i64> %24, <2 x i64>* %26, align 16, !dbg !1110
  br label %27, !dbg !1111

27:                                               ; preds = %14
  %28 = add i32 %.07, 1, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %28, metadata !1094, metadata !DIExpression()), !dbg !1080
  br label %12, !dbg !1113, !llvm.loop !1114

29:                                               ; preds = %12
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !1116
  %31 = bitcast i8* %30 to <2 x i64>*, !dbg !1117
  %32 = bitcast <2 x i64>* %31 to %struct.__loadu_si128*, !dbg !1118
  %33 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %32, i32 0, i32 0, !dbg !1118
  %34 = load <2 x i64>, <2 x i64>* %33, align 1, !dbg !1118
  call void @llvm.dbg.value(metadata <2 x i64> %34, metadata !1119, metadata !DIExpression()), !dbg !1080
  br label %35, !dbg !1120

35:                                               ; preds = %380, %29
  %.011 = phi i32 [ %2, %29 ], [ %338, %380 ]
  %.010 = phi i64 [ %4, %29 ], [ %337, %380 ]
  %.09 = phi i8* [ %3, %29 ], [ %336, %380 ], !dbg !1080
  call void @llvm.dbg.value(metadata i8* %.09, metadata !1090, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 %.010, metadata !1084, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i32 %.011, metadata !1082, metadata !DIExpression()), !dbg !1080
  %36 = icmp ugt i64 %.010, 0, !dbg !1121
  br i1 %36, label %37, label %381, !dbg !1120

37:                                               ; preds = %35
  %38 = bitcast <2 x i64> %34 to <4 x i32>, !dbg !1122
  %39 = add i32 %.011, 0, !dbg !1122
  %40 = call i32 @llvm.bswap.i32(i32 %39), !dbg !1122
  %41 = insertelement <4 x i32> %38, i32 %40, i64 3, !dbg !1122
  %42 = bitcast <4 x i32> %41 to <2 x i64>, !dbg !1122
  call void @llvm.dbg.value(metadata <2 x i64> %42, metadata !1124, metadata !DIExpression()), !dbg !1125
  %43 = bitcast <2 x i64> %34 to <4 x i32>, !dbg !1126
  %44 = add i32 %.011, 1, !dbg !1126
  %45 = call i32 @llvm.bswap.i32(i32 %44), !dbg !1126
  %46 = insertelement <4 x i32> %43, i32 %45, i64 3, !dbg !1126
  %47 = bitcast <4 x i32> %46 to <2 x i64>, !dbg !1126
  call void @llvm.dbg.value(metadata <2 x i64> %47, metadata !1127, metadata !DIExpression()), !dbg !1125
  %48 = bitcast <2 x i64> %34 to <4 x i32>, !dbg !1128
  %49 = add i32 %.011, 2, !dbg !1128
  %50 = call i32 @llvm.bswap.i32(i32 %49), !dbg !1128
  %51 = insertelement <4 x i32> %48, i32 %50, i64 3, !dbg !1128
  %52 = bitcast <4 x i32> %51 to <2 x i64>, !dbg !1128
  call void @llvm.dbg.value(metadata <2 x i64> %52, metadata !1129, metadata !DIExpression()), !dbg !1125
  %53 = bitcast <2 x i64> %34 to <4 x i32>, !dbg !1130
  %54 = add i32 %.011, 3, !dbg !1130
  %55 = call i32 @llvm.bswap.i32(i32 %54), !dbg !1130
  %56 = insertelement <4 x i32> %53, i32 %55, i64 3, !dbg !1130
  %57 = bitcast <4 x i32> %56 to <2 x i64>, !dbg !1130
  call void @llvm.dbg.value(metadata <2 x i64> %57, metadata !1131, metadata !DIExpression()), !dbg !1125
  %58 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 0, !dbg !1132
  %59 = load <2 x i64>, <2 x i64>* %58, align 16, !dbg !1132
  %60 = xor <2 x i64> %42, %59, !dbg !1133
  call void @llvm.dbg.value(metadata <2 x i64> %60, metadata !1124, metadata !DIExpression()), !dbg !1125
  %61 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 0, !dbg !1134
  %62 = load <2 x i64>, <2 x i64>* %61, align 16, !dbg !1134
  %63 = xor <2 x i64> %47, %62, !dbg !1135
  call void @llvm.dbg.value(metadata <2 x i64> %63, metadata !1127, metadata !DIExpression()), !dbg !1125
  %64 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 0, !dbg !1136
  %65 = load <2 x i64>, <2 x i64>* %64, align 16, !dbg !1136
  %66 = xor <2 x i64> %52, %65, !dbg !1137
  call void @llvm.dbg.value(metadata <2 x i64> %66, metadata !1129, metadata !DIExpression()), !dbg !1125
  %67 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 0, !dbg !1138
  %68 = load <2 x i64>, <2 x i64>* %67, align 16, !dbg !1138
  %69 = xor <2 x i64> %57, %68, !dbg !1139
  call void @llvm.dbg.value(metadata <2 x i64> %69, metadata !1131, metadata !DIExpression()), !dbg !1125
  %70 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 1, !dbg !1140
  %71 = load <2 x i64>, <2 x i64>* %70, align 16, !dbg !1140
  %72 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %60, <2 x i64> %71) #8, !dbg !1141
  call void @llvm.dbg.value(metadata <2 x i64> %72, metadata !1124, metadata !DIExpression()), !dbg !1125
  %73 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 1, !dbg !1142
  %74 = load <2 x i64>, <2 x i64>* %73, align 16, !dbg !1142
  %75 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %63, <2 x i64> %74) #8, !dbg !1143
  call void @llvm.dbg.value(metadata <2 x i64> %75, metadata !1127, metadata !DIExpression()), !dbg !1125
  %76 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 1, !dbg !1144
  %77 = load <2 x i64>, <2 x i64>* %76, align 16, !dbg !1144
  %78 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %66, <2 x i64> %77) #8, !dbg !1145
  call void @llvm.dbg.value(metadata <2 x i64> %78, metadata !1129, metadata !DIExpression()), !dbg !1125
  %79 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 1, !dbg !1146
  %80 = load <2 x i64>, <2 x i64>* %79, align 16, !dbg !1146
  %81 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %69, <2 x i64> %80) #8, !dbg !1147
  call void @llvm.dbg.value(metadata <2 x i64> %81, metadata !1131, metadata !DIExpression()), !dbg !1125
  %82 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 2, !dbg !1148
  %83 = load <2 x i64>, <2 x i64>* %82, align 16, !dbg !1148
  %84 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %72, <2 x i64> %83) #8, !dbg !1149
  call void @llvm.dbg.value(metadata <2 x i64> %84, metadata !1124, metadata !DIExpression()), !dbg !1125
  %85 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 2, !dbg !1150
  %86 = load <2 x i64>, <2 x i64>* %85, align 16, !dbg !1150
  %87 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %75, <2 x i64> %86) #8, !dbg !1151
  call void @llvm.dbg.value(metadata <2 x i64> %87, metadata !1127, metadata !DIExpression()), !dbg !1125
  %88 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 2, !dbg !1152
  %89 = load <2 x i64>, <2 x i64>* %88, align 16, !dbg !1152
  %90 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %78, <2 x i64> %89) #8, !dbg !1153
  call void @llvm.dbg.value(metadata <2 x i64> %90, metadata !1129, metadata !DIExpression()), !dbg !1125
  %91 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 2, !dbg !1154
  %92 = load <2 x i64>, <2 x i64>* %91, align 16, !dbg !1154
  %93 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %81, <2 x i64> %92) #8, !dbg !1155
  call void @llvm.dbg.value(metadata <2 x i64> %93, metadata !1131, metadata !DIExpression()), !dbg !1125
  %94 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 3, !dbg !1156
  %95 = load <2 x i64>, <2 x i64>* %94, align 16, !dbg !1156
  %96 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %84, <2 x i64> %95) #8, !dbg !1157
  call void @llvm.dbg.value(metadata <2 x i64> %96, metadata !1124, metadata !DIExpression()), !dbg !1125
  %97 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 3, !dbg !1158
  %98 = load <2 x i64>, <2 x i64>* %97, align 16, !dbg !1158
  %99 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %87, <2 x i64> %98) #8, !dbg !1159
  call void @llvm.dbg.value(metadata <2 x i64> %99, metadata !1127, metadata !DIExpression()), !dbg !1125
  %100 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 3, !dbg !1160
  %101 = load <2 x i64>, <2 x i64>* %100, align 16, !dbg !1160
  %102 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %90, <2 x i64> %101) #8, !dbg !1161
  call void @llvm.dbg.value(metadata <2 x i64> %102, metadata !1129, metadata !DIExpression()), !dbg !1125
  %103 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 3, !dbg !1162
  %104 = load <2 x i64>, <2 x i64>* %103, align 16, !dbg !1162
  %105 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %93, <2 x i64> %104) #8, !dbg !1163
  call void @llvm.dbg.value(metadata <2 x i64> %105, metadata !1131, metadata !DIExpression()), !dbg !1125
  %106 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 4, !dbg !1164
  %107 = load <2 x i64>, <2 x i64>* %106, align 16, !dbg !1164
  %108 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %96, <2 x i64> %107) #8, !dbg !1165
  call void @llvm.dbg.value(metadata <2 x i64> %108, metadata !1124, metadata !DIExpression()), !dbg !1125
  %109 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 4, !dbg !1166
  %110 = load <2 x i64>, <2 x i64>* %109, align 16, !dbg !1166
  %111 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %99, <2 x i64> %110) #8, !dbg !1167
  call void @llvm.dbg.value(metadata <2 x i64> %111, metadata !1127, metadata !DIExpression()), !dbg !1125
  %112 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 4, !dbg !1168
  %113 = load <2 x i64>, <2 x i64>* %112, align 16, !dbg !1168
  %114 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %102, <2 x i64> %113) #8, !dbg !1169
  call void @llvm.dbg.value(metadata <2 x i64> %114, metadata !1129, metadata !DIExpression()), !dbg !1125
  %115 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 4, !dbg !1170
  %116 = load <2 x i64>, <2 x i64>* %115, align 16, !dbg !1170
  %117 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %105, <2 x i64> %116) #8, !dbg !1171
  call void @llvm.dbg.value(metadata <2 x i64> %117, metadata !1131, metadata !DIExpression()), !dbg !1125
  %118 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 5, !dbg !1172
  %119 = load <2 x i64>, <2 x i64>* %118, align 16, !dbg !1172
  %120 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %108, <2 x i64> %119) #8, !dbg !1173
  call void @llvm.dbg.value(metadata <2 x i64> %120, metadata !1124, metadata !DIExpression()), !dbg !1125
  %121 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 5, !dbg !1174
  %122 = load <2 x i64>, <2 x i64>* %121, align 16, !dbg !1174
  %123 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %111, <2 x i64> %122) #8, !dbg !1175
  call void @llvm.dbg.value(metadata <2 x i64> %123, metadata !1127, metadata !DIExpression()), !dbg !1125
  %124 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 5, !dbg !1176
  %125 = load <2 x i64>, <2 x i64>* %124, align 16, !dbg !1176
  %126 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %114, <2 x i64> %125) #8, !dbg !1177
  call void @llvm.dbg.value(metadata <2 x i64> %126, metadata !1129, metadata !DIExpression()), !dbg !1125
  %127 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 5, !dbg !1178
  %128 = load <2 x i64>, <2 x i64>* %127, align 16, !dbg !1178
  %129 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %117, <2 x i64> %128) #8, !dbg !1179
  call void @llvm.dbg.value(metadata <2 x i64> %129, metadata !1131, metadata !DIExpression()), !dbg !1125
  %130 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 6, !dbg !1180
  %131 = load <2 x i64>, <2 x i64>* %130, align 16, !dbg !1180
  %132 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %120, <2 x i64> %131) #8, !dbg !1181
  call void @llvm.dbg.value(metadata <2 x i64> %132, metadata !1124, metadata !DIExpression()), !dbg !1125
  %133 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 6, !dbg !1182
  %134 = load <2 x i64>, <2 x i64>* %133, align 16, !dbg !1182
  %135 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %123, <2 x i64> %134) #8, !dbg !1183
  call void @llvm.dbg.value(metadata <2 x i64> %135, metadata !1127, metadata !DIExpression()), !dbg !1125
  %136 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 6, !dbg !1184
  %137 = load <2 x i64>, <2 x i64>* %136, align 16, !dbg !1184
  %138 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %126, <2 x i64> %137) #8, !dbg !1185
  call void @llvm.dbg.value(metadata <2 x i64> %138, metadata !1129, metadata !DIExpression()), !dbg !1125
  %139 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 6, !dbg !1186
  %140 = load <2 x i64>, <2 x i64>* %139, align 16, !dbg !1186
  %141 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %129, <2 x i64> %140) #8, !dbg !1187
  call void @llvm.dbg.value(metadata <2 x i64> %141, metadata !1131, metadata !DIExpression()), !dbg !1125
  %142 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 7, !dbg !1188
  %143 = load <2 x i64>, <2 x i64>* %142, align 16, !dbg !1188
  %144 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %132, <2 x i64> %143) #8, !dbg !1189
  call void @llvm.dbg.value(metadata <2 x i64> %144, metadata !1124, metadata !DIExpression()), !dbg !1125
  %145 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 7, !dbg !1190
  %146 = load <2 x i64>, <2 x i64>* %145, align 16, !dbg !1190
  %147 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %135, <2 x i64> %146) #8, !dbg !1191
  call void @llvm.dbg.value(metadata <2 x i64> %147, metadata !1127, metadata !DIExpression()), !dbg !1125
  %148 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 7, !dbg !1192
  %149 = load <2 x i64>, <2 x i64>* %148, align 16, !dbg !1192
  %150 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %138, <2 x i64> %149) #8, !dbg !1193
  call void @llvm.dbg.value(metadata <2 x i64> %150, metadata !1129, metadata !DIExpression()), !dbg !1125
  %151 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 7, !dbg !1194
  %152 = load <2 x i64>, <2 x i64>* %151, align 16, !dbg !1194
  %153 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %141, <2 x i64> %152) #8, !dbg !1195
  call void @llvm.dbg.value(metadata <2 x i64> %153, metadata !1131, metadata !DIExpression()), !dbg !1125
  %154 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 8, !dbg !1196
  %155 = load <2 x i64>, <2 x i64>* %154, align 16, !dbg !1196
  %156 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %144, <2 x i64> %155) #8, !dbg !1197
  call void @llvm.dbg.value(metadata <2 x i64> %156, metadata !1124, metadata !DIExpression()), !dbg !1125
  %157 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 8, !dbg !1198
  %158 = load <2 x i64>, <2 x i64>* %157, align 16, !dbg !1198
  %159 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %147, <2 x i64> %158) #8, !dbg !1199
  call void @llvm.dbg.value(metadata <2 x i64> %159, metadata !1127, metadata !DIExpression()), !dbg !1125
  %160 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 8, !dbg !1200
  %161 = load <2 x i64>, <2 x i64>* %160, align 16, !dbg !1200
  %162 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %150, <2 x i64> %161) #8, !dbg !1201
  call void @llvm.dbg.value(metadata <2 x i64> %162, metadata !1129, metadata !DIExpression()), !dbg !1125
  %163 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 8, !dbg !1202
  %164 = load <2 x i64>, <2 x i64>* %163, align 16, !dbg !1202
  %165 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %153, <2 x i64> %164) #8, !dbg !1203
  call void @llvm.dbg.value(metadata <2 x i64> %165, metadata !1131, metadata !DIExpression()), !dbg !1125
  %166 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 9, !dbg !1204
  %167 = load <2 x i64>, <2 x i64>* %166, align 16, !dbg !1204
  %168 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %156, <2 x i64> %167) #8, !dbg !1205
  call void @llvm.dbg.value(metadata <2 x i64> %168, metadata !1124, metadata !DIExpression()), !dbg !1125
  %169 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 9, !dbg !1206
  %170 = load <2 x i64>, <2 x i64>* %169, align 16, !dbg !1206
  %171 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %159, <2 x i64> %170) #8, !dbg !1207
  call void @llvm.dbg.value(metadata <2 x i64> %171, metadata !1127, metadata !DIExpression()), !dbg !1125
  %172 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 9, !dbg !1208
  %173 = load <2 x i64>, <2 x i64>* %172, align 16, !dbg !1208
  %174 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %162, <2 x i64> %173) #8, !dbg !1209
  call void @llvm.dbg.value(metadata <2 x i64> %174, metadata !1129, metadata !DIExpression()), !dbg !1125
  %175 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 9, !dbg !1210
  %176 = load <2 x i64>, <2 x i64>* %175, align 16, !dbg !1210
  %177 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %165, <2 x i64> %176) #8, !dbg !1211
  call void @llvm.dbg.value(metadata <2 x i64> %177, metadata !1131, metadata !DIExpression()), !dbg !1125
  %178 = icmp eq i32 %11, 10, !dbg !1212
  br i1 %178, label %179, label %192, !dbg !1214

179:                                              ; preds = %37
  %180 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1215
  %181 = load <2 x i64>, <2 x i64>* %180, align 16, !dbg !1215
  %182 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %168, <2 x i64> %181) #8, !dbg !1217
  call void @llvm.dbg.value(metadata <2 x i64> %182, metadata !1124, metadata !DIExpression()), !dbg !1125
  %183 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1218
  %184 = load <2 x i64>, <2 x i64>* %183, align 16, !dbg !1218
  %185 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %171, <2 x i64> %184) #8, !dbg !1219
  call void @llvm.dbg.value(metadata <2 x i64> %185, metadata !1127, metadata !DIExpression()), !dbg !1125
  %186 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1220
  %187 = load <2 x i64>, <2 x i64>* %186, align 16, !dbg !1220
  %188 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %174, <2 x i64> %187) #8, !dbg !1221
  call void @llvm.dbg.value(metadata <2 x i64> %188, metadata !1129, metadata !DIExpression()), !dbg !1125
  %189 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1222
  %190 = load <2 x i64>, <2 x i64>* %189, align 16, !dbg !1222
  %191 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %177, <2 x i64> %190) #8, !dbg !1223
  call void @llvm.dbg.value(metadata <2 x i64> %191, metadata !1131, metadata !DIExpression()), !dbg !1125
  br label %293, !dbg !1224

192:                                              ; preds = %37
  %193 = icmp eq i32 %11, 12, !dbg !1225
  br i1 %193, label %194, label %231, !dbg !1227

194:                                              ; preds = %192
  %195 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1228
  %196 = load <2 x i64>, <2 x i64>* %195, align 16, !dbg !1228
  %197 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %168, <2 x i64> %196) #8, !dbg !1230
  call void @llvm.dbg.value(metadata <2 x i64> %197, metadata !1124, metadata !DIExpression()), !dbg !1125
  %198 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1231
  %199 = load <2 x i64>, <2 x i64>* %198, align 16, !dbg !1231
  %200 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %171, <2 x i64> %199) #8, !dbg !1232
  call void @llvm.dbg.value(metadata <2 x i64> %200, metadata !1127, metadata !DIExpression()), !dbg !1125
  %201 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1233
  %202 = load <2 x i64>, <2 x i64>* %201, align 16, !dbg !1233
  %203 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %174, <2 x i64> %202) #8, !dbg !1234
  call void @llvm.dbg.value(metadata <2 x i64> %203, metadata !1129, metadata !DIExpression()), !dbg !1125
  %204 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1235
  %205 = load <2 x i64>, <2 x i64>* %204, align 16, !dbg !1235
  %206 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %177, <2 x i64> %205) #8, !dbg !1236
  call void @llvm.dbg.value(metadata <2 x i64> %206, metadata !1131, metadata !DIExpression()), !dbg !1125
  %207 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 11, !dbg !1237
  %208 = load <2 x i64>, <2 x i64>* %207, align 16, !dbg !1237
  %209 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %197, <2 x i64> %208) #8, !dbg !1238
  call void @llvm.dbg.value(metadata <2 x i64> %209, metadata !1124, metadata !DIExpression()), !dbg !1125
  %210 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 11, !dbg !1239
  %211 = load <2 x i64>, <2 x i64>* %210, align 16, !dbg !1239
  %212 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %200, <2 x i64> %211) #8, !dbg !1240
  call void @llvm.dbg.value(metadata <2 x i64> %212, metadata !1127, metadata !DIExpression()), !dbg !1125
  %213 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 11, !dbg !1241
  %214 = load <2 x i64>, <2 x i64>* %213, align 16, !dbg !1241
  %215 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %203, <2 x i64> %214) #8, !dbg !1242
  call void @llvm.dbg.value(metadata <2 x i64> %215, metadata !1129, metadata !DIExpression()), !dbg !1125
  %216 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 11, !dbg !1243
  %217 = load <2 x i64>, <2 x i64>* %216, align 16, !dbg !1243
  %218 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %206, <2 x i64> %217) #8, !dbg !1244
  call void @llvm.dbg.value(metadata <2 x i64> %218, metadata !1131, metadata !DIExpression()), !dbg !1125
  %219 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 12, !dbg !1245
  %220 = load <2 x i64>, <2 x i64>* %219, align 16, !dbg !1245
  %221 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %209, <2 x i64> %220) #8, !dbg !1246
  call void @llvm.dbg.value(metadata <2 x i64> %221, metadata !1124, metadata !DIExpression()), !dbg !1125
  %222 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 12, !dbg !1247
  %223 = load <2 x i64>, <2 x i64>* %222, align 16, !dbg !1247
  %224 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %212, <2 x i64> %223) #8, !dbg !1248
  call void @llvm.dbg.value(metadata <2 x i64> %224, metadata !1127, metadata !DIExpression()), !dbg !1125
  %225 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 12, !dbg !1249
  %226 = load <2 x i64>, <2 x i64>* %225, align 16, !dbg !1249
  %227 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %215, <2 x i64> %226) #8, !dbg !1250
  call void @llvm.dbg.value(metadata <2 x i64> %227, metadata !1129, metadata !DIExpression()), !dbg !1125
  %228 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 12, !dbg !1251
  %229 = load <2 x i64>, <2 x i64>* %228, align 16, !dbg !1251
  %230 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %218, <2 x i64> %229) #8, !dbg !1252
  call void @llvm.dbg.value(metadata <2 x i64> %230, metadata !1131, metadata !DIExpression()), !dbg !1125
  br label %292, !dbg !1253

231:                                              ; preds = %192
  %232 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1254
  %233 = load <2 x i64>, <2 x i64>* %232, align 16, !dbg !1254
  %234 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %168, <2 x i64> %233) #8, !dbg !1256
  call void @llvm.dbg.value(metadata <2 x i64> %234, metadata !1124, metadata !DIExpression()), !dbg !1125
  %235 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1257
  %236 = load <2 x i64>, <2 x i64>* %235, align 16, !dbg !1257
  %237 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %171, <2 x i64> %236) #8, !dbg !1258
  call void @llvm.dbg.value(metadata <2 x i64> %237, metadata !1127, metadata !DIExpression()), !dbg !1125
  %238 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1259
  %239 = load <2 x i64>, <2 x i64>* %238, align 16, !dbg !1259
  %240 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %174, <2 x i64> %239) #8, !dbg !1260
  call void @llvm.dbg.value(metadata <2 x i64> %240, metadata !1129, metadata !DIExpression()), !dbg !1125
  %241 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 10, !dbg !1261
  %242 = load <2 x i64>, <2 x i64>* %241, align 16, !dbg !1261
  %243 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %177, <2 x i64> %242) #8, !dbg !1262
  call void @llvm.dbg.value(metadata <2 x i64> %243, metadata !1131, metadata !DIExpression()), !dbg !1125
  %244 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 11, !dbg !1263
  %245 = load <2 x i64>, <2 x i64>* %244, align 16, !dbg !1263
  %246 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %234, <2 x i64> %245) #8, !dbg !1264
  call void @llvm.dbg.value(metadata <2 x i64> %246, metadata !1124, metadata !DIExpression()), !dbg !1125
  %247 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 11, !dbg !1265
  %248 = load <2 x i64>, <2 x i64>* %247, align 16, !dbg !1265
  %249 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %237, <2 x i64> %248) #8, !dbg !1266
  call void @llvm.dbg.value(metadata <2 x i64> %249, metadata !1127, metadata !DIExpression()), !dbg !1125
  %250 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 11, !dbg !1267
  %251 = load <2 x i64>, <2 x i64>* %250, align 16, !dbg !1267
  %252 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %240, <2 x i64> %251) #8, !dbg !1268
  call void @llvm.dbg.value(metadata <2 x i64> %252, metadata !1129, metadata !DIExpression()), !dbg !1125
  %253 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 11, !dbg !1269
  %254 = load <2 x i64>, <2 x i64>* %253, align 16, !dbg !1269
  %255 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %243, <2 x i64> %254) #8, !dbg !1270
  call void @llvm.dbg.value(metadata <2 x i64> %255, metadata !1131, metadata !DIExpression()), !dbg !1125
  %256 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 12, !dbg !1271
  %257 = load <2 x i64>, <2 x i64>* %256, align 16, !dbg !1271
  %258 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %246, <2 x i64> %257) #8, !dbg !1272
  call void @llvm.dbg.value(metadata <2 x i64> %258, metadata !1124, metadata !DIExpression()), !dbg !1125
  %259 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 12, !dbg !1273
  %260 = load <2 x i64>, <2 x i64>* %259, align 16, !dbg !1273
  %261 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %249, <2 x i64> %260) #8, !dbg !1274
  call void @llvm.dbg.value(metadata <2 x i64> %261, metadata !1127, metadata !DIExpression()), !dbg !1125
  %262 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 12, !dbg !1275
  %263 = load <2 x i64>, <2 x i64>* %262, align 16, !dbg !1275
  %264 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %252, <2 x i64> %263) #8, !dbg !1276
  call void @llvm.dbg.value(metadata <2 x i64> %264, metadata !1129, metadata !DIExpression()), !dbg !1125
  %265 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 12, !dbg !1277
  %266 = load <2 x i64>, <2 x i64>* %265, align 16, !dbg !1277
  %267 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %255, <2 x i64> %266) #8, !dbg !1278
  call void @llvm.dbg.value(metadata <2 x i64> %267, metadata !1131, metadata !DIExpression()), !dbg !1125
  %268 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 13, !dbg !1279
  %269 = load <2 x i64>, <2 x i64>* %268, align 16, !dbg !1279
  %270 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %258, <2 x i64> %269) #8, !dbg !1280
  call void @llvm.dbg.value(metadata <2 x i64> %270, metadata !1124, metadata !DIExpression()), !dbg !1125
  %271 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 13, !dbg !1281
  %272 = load <2 x i64>, <2 x i64>* %271, align 16, !dbg !1281
  %273 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %261, <2 x i64> %272) #8, !dbg !1282
  call void @llvm.dbg.value(metadata <2 x i64> %273, metadata !1127, metadata !DIExpression()), !dbg !1125
  %274 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 13, !dbg !1283
  %275 = load <2 x i64>, <2 x i64>* %274, align 16, !dbg !1283
  %276 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %264, <2 x i64> %275) #8, !dbg !1284
  call void @llvm.dbg.value(metadata <2 x i64> %276, metadata !1129, metadata !DIExpression()), !dbg !1125
  %277 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 13, !dbg !1285
  %278 = load <2 x i64>, <2 x i64>* %277, align 16, !dbg !1285
  %279 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %267, <2 x i64> %278) #8, !dbg !1286
  call void @llvm.dbg.value(metadata <2 x i64> %279, metadata !1131, metadata !DIExpression()), !dbg !1125
  %280 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 14, !dbg !1287
  %281 = load <2 x i64>, <2 x i64>* %280, align 16, !dbg !1287
  %282 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %270, <2 x i64> %281) #8, !dbg !1288
  call void @llvm.dbg.value(metadata <2 x i64> %282, metadata !1124, metadata !DIExpression()), !dbg !1125
  %283 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 14, !dbg !1289
  %284 = load <2 x i64>, <2 x i64>* %283, align 16, !dbg !1289
  %285 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %273, <2 x i64> %284) #8, !dbg !1290
  call void @llvm.dbg.value(metadata <2 x i64> %285, metadata !1127, metadata !DIExpression()), !dbg !1125
  %286 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 14, !dbg !1291
  %287 = load <2 x i64>, <2 x i64>* %286, align 16, !dbg !1291
  %288 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %276, <2 x i64> %287) #8, !dbg !1292
  call void @llvm.dbg.value(metadata <2 x i64> %288, metadata !1129, metadata !DIExpression()), !dbg !1125
  %289 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %7, i64 0, i64 14, !dbg !1293
  %290 = load <2 x i64>, <2 x i64>* %289, align 16, !dbg !1293
  %291 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %279, <2 x i64> %290) #8, !dbg !1294
  call void @llvm.dbg.value(metadata <2 x i64> %291, metadata !1131, metadata !DIExpression()), !dbg !1125
  br label %292

292:                                              ; preds = %231, %194
  %.05 = phi <2 x i64> [ %221, %194 ], [ %282, %231 ], !dbg !1295
  %.03 = phi <2 x i64> [ %224, %194 ], [ %285, %231 ], !dbg !1295
  %.01 = phi <2 x i64> [ %227, %194 ], [ %288, %231 ], !dbg !1295
  %.0 = phi <2 x i64> [ %230, %194 ], [ %291, %231 ], !dbg !1295
  call void @llvm.dbg.value(metadata <2 x i64> %.0, metadata !1131, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata <2 x i64> %.01, metadata !1129, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata <2 x i64> %.03, metadata !1127, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata <2 x i64> %.05, metadata !1124, metadata !DIExpression()), !dbg !1125
  br label %293

293:                                              ; preds = %292, %179
  %.16 = phi <2 x i64> [ %182, %179 ], [ %.05, %292 ], !dbg !1296
  %.14 = phi <2 x i64> [ %185, %179 ], [ %.03, %292 ], !dbg !1296
  %.12 = phi <2 x i64> [ %188, %179 ], [ %.01, %292 ], !dbg !1296
  %.1 = phi <2 x i64> [ %191, %179 ], [ %.0, %292 ], !dbg !1296
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !1131, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata <2 x i64> %.12, metadata !1129, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata <2 x i64> %.14, metadata !1127, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata <2 x i64> %.16, metadata !1124, metadata !DIExpression()), !dbg !1125
  %294 = icmp uge i64 %.010, 64, !dbg !1297
  br i1 %294, label %295, label %339, !dbg !1299

295:                                              ; preds = %293
  %296 = getelementptr inbounds i8, i8* %.09, i64 0, !dbg !1300
  %297 = bitcast i8* %296 to <2 x i64>*, !dbg !1302
  %298 = bitcast <2 x i64>* %297 to %struct.__loadu_si128*, !dbg !1303
  %299 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %298, i32 0, i32 0, !dbg !1303
  %300 = load <2 x i64>, <2 x i64>* %299, align 1, !dbg !1303
  %301 = xor <2 x i64> %.16, %300, !dbg !1304
  call void @llvm.dbg.value(metadata <2 x i64> %301, metadata !1124, metadata !DIExpression()), !dbg !1125
  %302 = getelementptr inbounds i8, i8* %.09, i64 16, !dbg !1305
  %303 = bitcast i8* %302 to <2 x i64>*, !dbg !1306
  %304 = bitcast <2 x i64>* %303 to %struct.__loadu_si128*, !dbg !1307
  %305 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %304, i32 0, i32 0, !dbg !1307
  %306 = load <2 x i64>, <2 x i64>* %305, align 1, !dbg !1307
  %307 = xor <2 x i64> %.14, %306, !dbg !1308
  call void @llvm.dbg.value(metadata <2 x i64> %307, metadata !1127, metadata !DIExpression()), !dbg !1125
  %308 = getelementptr inbounds i8, i8* %.09, i64 32, !dbg !1309
  %309 = bitcast i8* %308 to <2 x i64>*, !dbg !1310
  %310 = bitcast <2 x i64>* %309 to %struct.__loadu_si128*, !dbg !1311
  %311 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %310, i32 0, i32 0, !dbg !1311
  %312 = load <2 x i64>, <2 x i64>* %311, align 1, !dbg !1311
  %313 = xor <2 x i64> %.12, %312, !dbg !1312
  call void @llvm.dbg.value(metadata <2 x i64> %313, metadata !1129, metadata !DIExpression()), !dbg !1125
  %314 = getelementptr inbounds i8, i8* %.09, i64 48, !dbg !1313
  %315 = bitcast i8* %314 to <2 x i64>*, !dbg !1314
  %316 = bitcast <2 x i64>* %315 to %struct.__loadu_si128*, !dbg !1315
  %317 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %316, i32 0, i32 0, !dbg !1315
  %318 = load <2 x i64>, <2 x i64>* %317, align 1, !dbg !1315
  %319 = xor <2 x i64> %.1, %318, !dbg !1316
  call void @llvm.dbg.value(metadata <2 x i64> %319, metadata !1131, metadata !DIExpression()), !dbg !1125
  %320 = getelementptr inbounds i8, i8* %.09, i64 0, !dbg !1317
  %321 = bitcast i8* %320 to <2 x i64>*, !dbg !1318
  %322 = bitcast <2 x i64>* %321 to %struct.__loadu_si128*, !dbg !1319
  %323 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %322, i32 0, i32 0, !dbg !1319
  store <2 x i64> %301, <2 x i64>* %323, align 1, !dbg !1319
  %324 = getelementptr inbounds i8, i8* %.09, i64 16, !dbg !1320
  %325 = bitcast i8* %324 to <2 x i64>*, !dbg !1321
  %326 = bitcast <2 x i64>* %325 to %struct.__loadu_si128*, !dbg !1322
  %327 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %326, i32 0, i32 0, !dbg !1322
  store <2 x i64> %307, <2 x i64>* %327, align 1, !dbg !1322
  %328 = getelementptr inbounds i8, i8* %.09, i64 32, !dbg !1323
  %329 = bitcast i8* %328 to <2 x i64>*, !dbg !1324
  %330 = bitcast <2 x i64>* %329 to %struct.__loadu_si128*, !dbg !1325
  %331 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %330, i32 0, i32 0, !dbg !1325
  store <2 x i64> %313, <2 x i64>* %331, align 1, !dbg !1325
  %332 = getelementptr inbounds i8, i8* %.09, i64 48, !dbg !1326
  %333 = bitcast i8* %332 to <2 x i64>*, !dbg !1327
  %334 = bitcast <2 x i64>* %333 to %struct.__loadu_si128*, !dbg !1328
  %335 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %334, i32 0, i32 0, !dbg !1328
  store <2 x i64> %319, <2 x i64>* %335, align 1, !dbg !1328
  %336 = getelementptr inbounds i8, i8* %.09, i64 64, !dbg !1329
  call void @llvm.dbg.value(metadata i8* %336, metadata !1090, metadata !DIExpression()), !dbg !1080
  %337 = sub i64 %.010, 64, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %337, metadata !1084, metadata !DIExpression()), !dbg !1080
  %338 = add i32 %.011, 4, !dbg !1331
  call void @llvm.dbg.value(metadata i32 %338, metadata !1082, metadata !DIExpression()), !dbg !1080
  br label %380, !dbg !1332

339:                                              ; preds = %293
  call void @llvm.dbg.declare(metadata [64 x i8]* %8, metadata !1333, metadata !DIExpression()), !dbg !1338
  %340 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0, !dbg !1339
  %341 = getelementptr inbounds i8, i8* %340, i64 0, !dbg !1340
  %342 = bitcast i8* %341 to <2 x i64>*, !dbg !1341
  %343 = bitcast <2 x i64>* %342 to %struct.__loadu_si128*, !dbg !1342
  %344 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %343, i32 0, i32 0, !dbg !1342
  store <2 x i64> %.16, <2 x i64>* %344, align 1, !dbg !1342
  %345 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0, !dbg !1343
  %346 = getelementptr inbounds i8, i8* %345, i64 16, !dbg !1344
  %347 = bitcast i8* %346 to <2 x i64>*, !dbg !1345
  %348 = bitcast <2 x i64>* %347 to %struct.__loadu_si128*, !dbg !1346
  %349 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %348, i32 0, i32 0, !dbg !1346
  store <2 x i64> %.14, <2 x i64>* %349, align 1, !dbg !1346
  %350 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0, !dbg !1347
  %351 = getelementptr inbounds i8, i8* %350, i64 32, !dbg !1348
  %352 = bitcast i8* %351 to <2 x i64>*, !dbg !1349
  %353 = bitcast <2 x i64>* %352 to %struct.__loadu_si128*, !dbg !1350
  %354 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %353, i32 0, i32 0, !dbg !1350
  store <2 x i64> %.12, <2 x i64>* %354, align 1, !dbg !1350
  %355 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0, !dbg !1351
  %356 = getelementptr inbounds i8, i8* %355, i64 48, !dbg !1352
  %357 = bitcast i8* %356 to <2 x i64>*, !dbg !1353
  %358 = bitcast <2 x i64>* %357 to %struct.__loadu_si128*, !dbg !1354
  %359 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %358, i32 0, i32 0, !dbg !1354
  store <2 x i64> %.1, <2 x i64>* %359, align 1, !dbg !1354
  call void @llvm.dbg.value(metadata i32 0, metadata !1094, metadata !DIExpression()), !dbg !1080
  br label %360, !dbg !1355

360:                                              ; preds = %374, %339
  %.18 = phi i32 [ 0, %339 ], [ %375, %374 ], !dbg !1357
  call void @llvm.dbg.value(metadata i32 %.18, metadata !1094, metadata !DIExpression()), !dbg !1080
  %361 = zext i32 %.18 to i64, !dbg !1358
  %362 = icmp ult i64 %361, %.010, !dbg !1360
  br i1 %362, label %363, label %376, !dbg !1361

363:                                              ; preds = %360
  %364 = zext i32 %.18 to i64, !dbg !1362
  %365 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 %364, !dbg !1362
  %366 = load i8, i8* %365, align 1, !dbg !1362
  %367 = zext i8 %366 to i32, !dbg !1362
  %368 = zext i32 %.18 to i64, !dbg !1364
  %369 = getelementptr inbounds i8, i8* %.09, i64 %368, !dbg !1364
  %370 = load i8, i8* %369, align 1, !dbg !1365
  %371 = zext i8 %370 to i32, !dbg !1365
  %372 = xor i32 %371, %367, !dbg !1365
  %373 = trunc i32 %372 to i8, !dbg !1365
  store i8 %373, i8* %369, align 1, !dbg !1365
  br label %374, !dbg !1366

374:                                              ; preds = %363
  %375 = add i32 %.18, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %375, metadata !1094, metadata !DIExpression()), !dbg !1080
  br label %360, !dbg !1368, !llvm.loop !1369

376:                                              ; preds = %360
  %377 = trunc i64 %.010 to i32, !dbg !1371
  %378 = lshr i32 %377, 4, !dbg !1372
  %379 = add i32 %.011, %378, !dbg !1373
  call void @llvm.dbg.value(metadata i32 %379, metadata !1082, metadata !DIExpression()), !dbg !1080
  br label %381, !dbg !1374

380:                                              ; preds = %295
  br label %35, !dbg !1120, !llvm.loop !1375

381:                                              ; preds = %376, %35
  %.112 = phi i32 [ %379, %376 ], [ %.011, %35 ]
  call void @llvm.dbg.value(metadata i32 %.112, metadata !1082, metadata !DIExpression()), !dbg !1080
  ret i32 %.112, !dbg !1377
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.br_block_ctr_class_* @br_aes_x86ni_ctr_get_vtable() #0 !dbg !1378 {
  %1 = call i32 @br_aes_x86ni_supported(), !dbg !1381
  %2 = icmp ne i32 %1, 0, !dbg !1381
  %3 = zext i1 %2 to i64, !dbg !1381
  %4 = select i1 %2, %struct.br_block_ctr_class_* @br_aes_x86ni_ctr_vtable, %struct.br_block_ctr_class_* null, !dbg !1381
  ret %struct.br_block_ctr_class_* %4, !dbg !1382
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_x86ni_ctrcbc_init(%struct.br_aes_x86ni_ctrcbc_keys* noalias %0, i8* noalias %1, i64 %2) #0 !dbg !1383 {
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_ctrcbc_keys* %0, metadata !1396, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8* %1, metadata !1398, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %2, metadata !1399, metadata !DIExpression()), !dbg !1397
  %4 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 0, !dbg !1400
  store %struct.br_block_ctrcbc_class_* @br_aes_x86ni_ctrcbc_vtable, %struct.br_block_ctrcbc_class_** %4, align 8, !dbg !1401
  %5 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 1, !dbg !1402
  %6 = bitcast %union.anon* %5 to [240 x i8]*, !dbg !1403
  %7 = getelementptr inbounds [240 x i8], [240 x i8]* %6, i64 0, i64 0, !dbg !1404
  %8 = call i32 @br_aes_x86ni_keysched_enc(i8* %7, i8* %1, i64 %2), !dbg !1405
  %9 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 2, !dbg !1406
  store i32 %8, i32* %9, align 8, !dbg !1407
  ret void, !dbg !1408
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_x86ni_ctrcbc_encrypt(%struct.br_aes_x86ni_ctrcbc_keys* noalias %0, i8* noalias %1, i8* noalias %2, i8* noalias %3, i64 %4) #6 !dbg !1409 {
  %6 = alloca [15 x <2 x i64>], align 16
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_ctrcbc_keys* %0, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %1, metadata !1416, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %2, metadata !1417, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %3, metadata !1418, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %4, metadata !1419, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.declare(metadata [15 x <2 x i64>]* %6, metadata !1420, metadata !DIExpression()), !dbg !1421
  %7 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 2, !dbg !1422
  %8 = load i32, i32* %7, align 8, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %8, metadata !1423, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 0, metadata !1424, metadata !DIExpression()), !dbg !1415
  br label %9, !dbg !1425

9:                                                ; preds = %24, %5
  %.05 = phi i32 [ 0, %5 ], [ %25, %24 ], !dbg !1427
  call void @llvm.dbg.value(metadata i32 %.05, metadata !1424, metadata !DIExpression()), !dbg !1415
  %10 = icmp ule i32 %.05, %8, !dbg !1428
  br i1 %10, label %11, label %26, !dbg !1430

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 1, !dbg !1431
  %13 = bitcast %union.anon* %12 to [240 x i8]*, !dbg !1433
  %14 = getelementptr inbounds [240 x i8], [240 x i8]* %13, i64 0, i64 0, !dbg !1434
  %15 = shl i32 %.05, 4, !dbg !1435
  %16 = zext i32 %15 to i64, !dbg !1436
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !1436
  %18 = bitcast i8* %17 to <2 x i64>*, !dbg !1437
  %19 = bitcast <2 x i64>* %18 to %struct.__loadu_si128*, !dbg !1438
  %20 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %19, i32 0, i32 0, !dbg !1438
  %21 = load <2 x i64>, <2 x i64>* %20, align 1, !dbg !1438
  %22 = zext i32 %.05 to i64, !dbg !1439
  %23 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 %22, !dbg !1439
  store <2 x i64> %21, <2 x i64>* %23, align 16, !dbg !1440
  br label %24, !dbg !1441

24:                                               ; preds = %11
  %25 = add i32 %.05, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %25, metadata !1424, metadata !DIExpression()), !dbg !1415
  br label %9, !dbg !1443, !llvm.loop !1444

26:                                               ; preds = %9
  %27 = insertelement <16 x i8> undef, i8 15, i32 0, !dbg !1446
  %28 = insertelement <16 x i8> %27, i8 14, i32 1, !dbg !1446
  %29 = insertelement <16 x i8> %28, i8 13, i32 2, !dbg !1446
  %30 = insertelement <16 x i8> %29, i8 12, i32 3, !dbg !1446
  %31 = insertelement <16 x i8> %30, i8 11, i32 4, !dbg !1446
  %32 = insertelement <16 x i8> %31, i8 10, i32 5, !dbg !1446
  %33 = insertelement <16 x i8> %32, i8 9, i32 6, !dbg !1446
  %34 = insertelement <16 x i8> %33, i8 8, i32 7, !dbg !1446
  %35 = insertelement <16 x i8> %34, i8 7, i32 8, !dbg !1446
  %36 = insertelement <16 x i8> %35, i8 6, i32 9, !dbg !1446
  %37 = insertelement <16 x i8> %36, i8 5, i32 10, !dbg !1446
  %38 = insertelement <16 x i8> %37, i8 4, i32 11, !dbg !1446
  %39 = insertelement <16 x i8> %38, i8 3, i32 12, !dbg !1446
  %40 = insertelement <16 x i8> %39, i8 2, i32 13, !dbg !1446
  %41 = insertelement <16 x i8> %40, i8 1, i32 14, !dbg !1446
  %42 = insertelement <16 x i8> %41, i8 0, i32 15, !dbg !1446
  %43 = bitcast <16 x i8> %42 to <2 x i64>, !dbg !1446
  call void @llvm.dbg.value(metadata <2 x i64> %43, metadata !1447, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata <2 x i64> zeroinitializer, metadata !1448, metadata !DIExpression()), !dbg !1415
  %44 = insertelement <2 x i64> undef, i64 1, i32 0, !dbg !1449
  %45 = insertelement <2 x i64> %44, i64 0, i32 1, !dbg !1449
  call void @llvm.dbg.value(metadata <2 x i64> %45, metadata !1450, metadata !DIExpression()), !dbg !1415
  %46 = bitcast i8* %1 to <2 x i64>*, !dbg !1451
  %47 = bitcast <2 x i64>* %46 to %struct.__loadu_si128*, !dbg !1452
  %48 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %47, i32 0, i32 0, !dbg !1452
  %49 = load <2 x i64>, <2 x i64>* %48, align 1, !dbg !1452
  %50 = bitcast <2 x i64> %49 to <16 x i8>, !dbg !1453
  %51 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1453
  %52 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %50, <16 x i8> %51) #8, !dbg !1453
  %53 = bitcast <16 x i8> %52 to <2 x i64>, !dbg !1453
  call void @llvm.dbg.value(metadata <2 x i64> %53, metadata !1454, metadata !DIExpression()), !dbg !1415
  %54 = bitcast i8* %2 to <2 x i64>*, !dbg !1455
  %55 = bitcast <2 x i64>* %54 to %struct.__loadu_si128*, !dbg !1456
  %56 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %55, i32 0, i32 0, !dbg !1456
  %57 = load <2 x i64>, <2 x i64>* %56, align 1, !dbg !1456
  call void @llvm.dbg.value(metadata <2 x i64> %57, metadata !1457, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %3, metadata !1458, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 1, metadata !1459, metadata !DIExpression()), !dbg !1415
  br label %58, !dbg !1460

58:                                               ; preds = %277, %26
  %.011 = phi i64 [ %4, %26 ], [ %202, %277 ]
  %.010 = phi i8* [ %3, %26 ], [ %201, %277 ], !dbg !1415
  %.08 = phi <2 x i64> [ %53, %26 ], [ %209, %277 ], !dbg !1415
  %.06 = phi <2 x i64> [ %57, %26 ], [ %.17, %277 ], !dbg !1415
  %.03 = phi i32 [ 1, %26 ], [ %.14, %277 ], !dbg !1415
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1459, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata <2 x i64> %.06, metadata !1457, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata <2 x i64> %.08, metadata !1454, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %.010, metadata !1458, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %.011, metadata !1419, metadata !DIExpression()), !dbg !1415
  %59 = icmp ugt i64 %.011, 0, !dbg !1461
  br i1 %59, label %60, label %278, !dbg !1460

60:                                               ; preds = %58
  %61 = bitcast i8* %.010 to <2 x i64>*, !dbg !1462
  %62 = bitcast <2 x i64>* %61 to %struct.__loadu_si128*, !dbg !1464
  %63 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %62, i32 0, i32 0, !dbg !1464
  %64 = load <2 x i64>, <2 x i64>* %63, align 1, !dbg !1464
  call void @llvm.dbg.value(metadata <2 x i64> %64, metadata !1465, metadata !DIExpression()), !dbg !1466
  %65 = bitcast <2 x i64> %.08 to <16 x i8>, !dbg !1467
  %66 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1467
  %67 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %65, <16 x i8> %66) #8, !dbg !1467
  %68 = bitcast <16 x i8> %67 to <2 x i64>, !dbg !1467
  call void @llvm.dbg.value(metadata <2 x i64> %68, metadata !1468, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata <2 x i64> %.06, metadata !1469, metadata !DIExpression()), !dbg !1466
  %69 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 0, !dbg !1470
  %70 = load <2 x i64>, <2 x i64>* %69, align 16, !dbg !1470
  %71 = xor <2 x i64> %68, %70, !dbg !1471
  call void @llvm.dbg.value(metadata <2 x i64> %71, metadata !1468, metadata !DIExpression()), !dbg !1466
  %72 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 0, !dbg !1472
  %73 = load <2 x i64>, <2 x i64>* %72, align 16, !dbg !1472
  %74 = xor <2 x i64> %.06, %73, !dbg !1473
  call void @llvm.dbg.value(metadata <2 x i64> %74, metadata !1469, metadata !DIExpression()), !dbg !1466
  %75 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 1, !dbg !1474
  %76 = load <2 x i64>, <2 x i64>* %75, align 16, !dbg !1474
  %77 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %71, <2 x i64> %76) #8, !dbg !1475
  call void @llvm.dbg.value(metadata <2 x i64> %77, metadata !1468, metadata !DIExpression()), !dbg !1466
  %78 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 1, !dbg !1476
  %79 = load <2 x i64>, <2 x i64>* %78, align 16, !dbg !1476
  %80 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %74, <2 x i64> %79) #8, !dbg !1477
  call void @llvm.dbg.value(metadata <2 x i64> %80, metadata !1469, metadata !DIExpression()), !dbg !1466
  %81 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 2, !dbg !1478
  %82 = load <2 x i64>, <2 x i64>* %81, align 16, !dbg !1478
  %83 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %77, <2 x i64> %82) #8, !dbg !1479
  call void @llvm.dbg.value(metadata <2 x i64> %83, metadata !1468, metadata !DIExpression()), !dbg !1466
  %84 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 2, !dbg !1480
  %85 = load <2 x i64>, <2 x i64>* %84, align 16, !dbg !1480
  %86 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %80, <2 x i64> %85) #8, !dbg !1481
  call void @llvm.dbg.value(metadata <2 x i64> %86, metadata !1469, metadata !DIExpression()), !dbg !1466
  %87 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 3, !dbg !1482
  %88 = load <2 x i64>, <2 x i64>* %87, align 16, !dbg !1482
  %89 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %83, <2 x i64> %88) #8, !dbg !1483
  call void @llvm.dbg.value(metadata <2 x i64> %89, metadata !1468, metadata !DIExpression()), !dbg !1466
  %90 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 3, !dbg !1484
  %91 = load <2 x i64>, <2 x i64>* %90, align 16, !dbg !1484
  %92 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %86, <2 x i64> %91) #8, !dbg !1485
  call void @llvm.dbg.value(metadata <2 x i64> %92, metadata !1469, metadata !DIExpression()), !dbg !1466
  %93 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 4, !dbg !1486
  %94 = load <2 x i64>, <2 x i64>* %93, align 16, !dbg !1486
  %95 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %89, <2 x i64> %94) #8, !dbg !1487
  call void @llvm.dbg.value(metadata <2 x i64> %95, metadata !1468, metadata !DIExpression()), !dbg !1466
  %96 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 4, !dbg !1488
  %97 = load <2 x i64>, <2 x i64>* %96, align 16, !dbg !1488
  %98 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %92, <2 x i64> %97) #8, !dbg !1489
  call void @llvm.dbg.value(metadata <2 x i64> %98, metadata !1469, metadata !DIExpression()), !dbg !1466
  %99 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 5, !dbg !1490
  %100 = load <2 x i64>, <2 x i64>* %99, align 16, !dbg !1490
  %101 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %95, <2 x i64> %100) #8, !dbg !1491
  call void @llvm.dbg.value(metadata <2 x i64> %101, metadata !1468, metadata !DIExpression()), !dbg !1466
  %102 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 5, !dbg !1492
  %103 = load <2 x i64>, <2 x i64>* %102, align 16, !dbg !1492
  %104 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %98, <2 x i64> %103) #8, !dbg !1493
  call void @llvm.dbg.value(metadata <2 x i64> %104, metadata !1469, metadata !DIExpression()), !dbg !1466
  %105 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 6, !dbg !1494
  %106 = load <2 x i64>, <2 x i64>* %105, align 16, !dbg !1494
  %107 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %101, <2 x i64> %106) #8, !dbg !1495
  call void @llvm.dbg.value(metadata <2 x i64> %107, metadata !1468, metadata !DIExpression()), !dbg !1466
  %108 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 6, !dbg !1496
  %109 = load <2 x i64>, <2 x i64>* %108, align 16, !dbg !1496
  %110 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %104, <2 x i64> %109) #8, !dbg !1497
  call void @llvm.dbg.value(metadata <2 x i64> %110, metadata !1469, metadata !DIExpression()), !dbg !1466
  %111 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 7, !dbg !1498
  %112 = load <2 x i64>, <2 x i64>* %111, align 16, !dbg !1498
  %113 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %107, <2 x i64> %112) #8, !dbg !1499
  call void @llvm.dbg.value(metadata <2 x i64> %113, metadata !1468, metadata !DIExpression()), !dbg !1466
  %114 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 7, !dbg !1500
  %115 = load <2 x i64>, <2 x i64>* %114, align 16, !dbg !1500
  %116 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %110, <2 x i64> %115) #8, !dbg !1501
  call void @llvm.dbg.value(metadata <2 x i64> %116, metadata !1469, metadata !DIExpression()), !dbg !1466
  %117 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 8, !dbg !1502
  %118 = load <2 x i64>, <2 x i64>* %117, align 16, !dbg !1502
  %119 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %113, <2 x i64> %118) #8, !dbg !1503
  call void @llvm.dbg.value(metadata <2 x i64> %119, metadata !1468, metadata !DIExpression()), !dbg !1466
  %120 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 8, !dbg !1504
  %121 = load <2 x i64>, <2 x i64>* %120, align 16, !dbg !1504
  %122 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %116, <2 x i64> %121) #8, !dbg !1505
  call void @llvm.dbg.value(metadata <2 x i64> %122, metadata !1469, metadata !DIExpression()), !dbg !1466
  %123 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 9, !dbg !1506
  %124 = load <2 x i64>, <2 x i64>* %123, align 16, !dbg !1506
  %125 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %119, <2 x i64> %124) #8, !dbg !1507
  call void @llvm.dbg.value(metadata <2 x i64> %125, metadata !1468, metadata !DIExpression()), !dbg !1466
  %126 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 9, !dbg !1508
  %127 = load <2 x i64>, <2 x i64>* %126, align 16, !dbg !1508
  %128 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %122, <2 x i64> %127) #8, !dbg !1509
  call void @llvm.dbg.value(metadata <2 x i64> %128, metadata !1469, metadata !DIExpression()), !dbg !1466
  %129 = icmp eq i32 %8, 10, !dbg !1510
  br i1 %129, label %130, label %137, !dbg !1512

130:                                              ; preds = %60
  %131 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1513
  %132 = load <2 x i64>, <2 x i64>* %131, align 16, !dbg !1513
  %133 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %125, <2 x i64> %132) #8, !dbg !1515
  call void @llvm.dbg.value(metadata <2 x i64> %133, metadata !1468, metadata !DIExpression()), !dbg !1466
  %134 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1516
  %135 = load <2 x i64>, <2 x i64>* %134, align 16, !dbg !1516
  %136 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %128, <2 x i64> %135) #8, !dbg !1517
  call void @llvm.dbg.value(metadata <2 x i64> %136, metadata !1469, metadata !DIExpression()), !dbg !1466
  br label %190, !dbg !1518

137:                                              ; preds = %60
  %138 = icmp eq i32 %8, 12, !dbg !1519
  br i1 %138, label %139, label %158, !dbg !1521

139:                                              ; preds = %137
  %140 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1522
  %141 = load <2 x i64>, <2 x i64>* %140, align 16, !dbg !1522
  %142 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %125, <2 x i64> %141) #8, !dbg !1524
  call void @llvm.dbg.value(metadata <2 x i64> %142, metadata !1468, metadata !DIExpression()), !dbg !1466
  %143 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1525
  %144 = load <2 x i64>, <2 x i64>* %143, align 16, !dbg !1525
  %145 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %128, <2 x i64> %144) #8, !dbg !1526
  call void @llvm.dbg.value(metadata <2 x i64> %145, metadata !1469, metadata !DIExpression()), !dbg !1466
  %146 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 11, !dbg !1527
  %147 = load <2 x i64>, <2 x i64>* %146, align 16, !dbg !1527
  %148 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %142, <2 x i64> %147) #8, !dbg !1528
  call void @llvm.dbg.value(metadata <2 x i64> %148, metadata !1468, metadata !DIExpression()), !dbg !1466
  %149 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 11, !dbg !1529
  %150 = load <2 x i64>, <2 x i64>* %149, align 16, !dbg !1529
  %151 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %145, <2 x i64> %150) #8, !dbg !1530
  call void @llvm.dbg.value(metadata <2 x i64> %151, metadata !1469, metadata !DIExpression()), !dbg !1466
  %152 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 12, !dbg !1531
  %153 = load <2 x i64>, <2 x i64>* %152, align 16, !dbg !1531
  %154 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %148, <2 x i64> %153) #8, !dbg !1532
  call void @llvm.dbg.value(metadata <2 x i64> %154, metadata !1468, metadata !DIExpression()), !dbg !1466
  %155 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 12, !dbg !1533
  %156 = load <2 x i64>, <2 x i64>* %155, align 16, !dbg !1533
  %157 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %151, <2 x i64> %156) #8, !dbg !1534
  call void @llvm.dbg.value(metadata <2 x i64> %157, metadata !1469, metadata !DIExpression()), !dbg !1466
  br label %189, !dbg !1535

158:                                              ; preds = %137
  %159 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1536
  %160 = load <2 x i64>, <2 x i64>* %159, align 16, !dbg !1536
  %161 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %125, <2 x i64> %160) #8, !dbg !1538
  call void @llvm.dbg.value(metadata <2 x i64> %161, metadata !1468, metadata !DIExpression()), !dbg !1466
  %162 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1539
  %163 = load <2 x i64>, <2 x i64>* %162, align 16, !dbg !1539
  %164 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %128, <2 x i64> %163) #8, !dbg !1540
  call void @llvm.dbg.value(metadata <2 x i64> %164, metadata !1469, metadata !DIExpression()), !dbg !1466
  %165 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 11, !dbg !1541
  %166 = load <2 x i64>, <2 x i64>* %165, align 16, !dbg !1541
  %167 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %161, <2 x i64> %166) #8, !dbg !1542
  call void @llvm.dbg.value(metadata <2 x i64> %167, metadata !1468, metadata !DIExpression()), !dbg !1466
  %168 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 11, !dbg !1543
  %169 = load <2 x i64>, <2 x i64>* %168, align 16, !dbg !1543
  %170 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %164, <2 x i64> %169) #8, !dbg !1544
  call void @llvm.dbg.value(metadata <2 x i64> %170, metadata !1469, metadata !DIExpression()), !dbg !1466
  %171 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 12, !dbg !1545
  %172 = load <2 x i64>, <2 x i64>* %171, align 16, !dbg !1545
  %173 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %167, <2 x i64> %172) #8, !dbg !1546
  call void @llvm.dbg.value(metadata <2 x i64> %173, metadata !1468, metadata !DIExpression()), !dbg !1466
  %174 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 12, !dbg !1547
  %175 = load <2 x i64>, <2 x i64>* %174, align 16, !dbg !1547
  %176 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %170, <2 x i64> %175) #8, !dbg !1548
  call void @llvm.dbg.value(metadata <2 x i64> %176, metadata !1469, metadata !DIExpression()), !dbg !1466
  %177 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 13, !dbg !1549
  %178 = load <2 x i64>, <2 x i64>* %177, align 16, !dbg !1549
  %179 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %173, <2 x i64> %178) #8, !dbg !1550
  call void @llvm.dbg.value(metadata <2 x i64> %179, metadata !1468, metadata !DIExpression()), !dbg !1466
  %180 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 13, !dbg !1551
  %181 = load <2 x i64>, <2 x i64>* %180, align 16, !dbg !1551
  %182 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %176, <2 x i64> %181) #8, !dbg !1552
  call void @llvm.dbg.value(metadata <2 x i64> %182, metadata !1469, metadata !DIExpression()), !dbg !1466
  %183 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 14, !dbg !1553
  %184 = load <2 x i64>, <2 x i64>* %183, align 16, !dbg !1553
  %185 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %179, <2 x i64> %184) #8, !dbg !1554
  call void @llvm.dbg.value(metadata <2 x i64> %185, metadata !1468, metadata !DIExpression()), !dbg !1466
  %186 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 14, !dbg !1555
  %187 = load <2 x i64>, <2 x i64>* %186, align 16, !dbg !1555
  %188 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %182, <2 x i64> %187) #8, !dbg !1556
  call void @llvm.dbg.value(metadata <2 x i64> %188, metadata !1469, metadata !DIExpression()), !dbg !1466
  br label %189

189:                                              ; preds = %158, %139
  %.01 = phi <2 x i64> [ %154, %139 ], [ %185, %158 ], !dbg !1557
  %.0 = phi <2 x i64> [ %157, %139 ], [ %188, %158 ], !dbg !1557
  call void @llvm.dbg.value(metadata <2 x i64> %.0, metadata !1469, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata <2 x i64> %.01, metadata !1468, metadata !DIExpression()), !dbg !1466
  br label %190

190:                                              ; preds = %189, %130
  %.12 = phi <2 x i64> [ %133, %130 ], [ %.01, %189 ], !dbg !1558
  %.1 = phi <2 x i64> [ %136, %130 ], [ %.0, %189 ], !dbg !1558
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !1469, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata <2 x i64> %.12, metadata !1468, metadata !DIExpression()), !dbg !1466
  %191 = xor <2 x i64> %.12, %64, !dbg !1559
  call void @llvm.dbg.value(metadata <2 x i64> %191, metadata !1468, metadata !DIExpression()), !dbg !1466
  %192 = icmp ne i32 %.03, 0, !dbg !1560
  br i1 %192, label %193, label %195, !dbg !1562

193:                                              ; preds = %190
  %194 = xor <2 x i64> %.06, %191, !dbg !1563
  call void @llvm.dbg.value(metadata <2 x i64> %194, metadata !1457, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 0, metadata !1459, metadata !DIExpression()), !dbg !1415
  br label %197, !dbg !1565

195:                                              ; preds = %190
  %196 = xor <2 x i64> %.1, %191, !dbg !1566
  call void @llvm.dbg.value(metadata <2 x i64> %196, metadata !1457, metadata !DIExpression()), !dbg !1415
  br label %197

197:                                              ; preds = %195, %193
  %.17 = phi <2 x i64> [ %194, %193 ], [ %196, %195 ], !dbg !1568
  %.14 = phi i32 [ 0, %193 ], [ %.03, %195 ], !dbg !1415
  call void @llvm.dbg.value(metadata i32 %.14, metadata !1459, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata <2 x i64> %.17, metadata !1457, metadata !DIExpression()), !dbg !1415
  %198 = bitcast i8* %.010 to <2 x i64>*, !dbg !1569
  %199 = bitcast <2 x i64>* %198 to %struct.__loadu_si128*, !dbg !1570
  %200 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %199, i32 0, i32 0, !dbg !1570
  store <2 x i64> %191, <2 x i64>* %200, align 1, !dbg !1570
  %201 = getelementptr inbounds i8, i8* %.010, i64 16, !dbg !1571
  call void @llvm.dbg.value(metadata i8* %201, metadata !1458, metadata !DIExpression()), !dbg !1415
  %202 = sub i64 %.011, 16, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %202, metadata !1419, metadata !DIExpression()), !dbg !1415
  %203 = add <2 x i64> %.08, %45, !dbg !1573
  call void @llvm.dbg.value(metadata <2 x i64> %203, metadata !1454, metadata !DIExpression()), !dbg !1415
  %204 = icmp eq <2 x i64> %203, zeroinitializer, !dbg !1574
  %205 = sext <2 x i1> %204 to <2 x i64>, !dbg !1574
  %206 = bitcast <2 x i64> %205 to <16 x i8>, !dbg !1574
  %207 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %206, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !1574
  %208 = bitcast <16 x i8> %207 to <2 x i64>, !dbg !1574
  %209 = sub <2 x i64> %203, %208, !dbg !1575
  call void @llvm.dbg.value(metadata <2 x i64> %209, metadata !1454, metadata !DIExpression()), !dbg !1415
  %210 = icmp eq i64 %202, 0, !dbg !1576
  br i1 %210, label %211, label %277, !dbg !1578

211:                                              ; preds = %197
  %212 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 0, !dbg !1579
  %213 = load <2 x i64>, <2 x i64>* %212, align 16, !dbg !1579
  %214 = xor <2 x i64> %.17, %213, !dbg !1581
  call void @llvm.dbg.value(metadata <2 x i64> %214, metadata !1457, metadata !DIExpression()), !dbg !1415
  %215 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 1, !dbg !1582
  %216 = load <2 x i64>, <2 x i64>* %215, align 16, !dbg !1582
  %217 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %214, <2 x i64> %216) #8, !dbg !1583
  call void @llvm.dbg.value(metadata <2 x i64> %217, metadata !1457, metadata !DIExpression()), !dbg !1415
  %218 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 2, !dbg !1584
  %219 = load <2 x i64>, <2 x i64>* %218, align 16, !dbg !1584
  %220 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %217, <2 x i64> %219) #8, !dbg !1585
  call void @llvm.dbg.value(metadata <2 x i64> %220, metadata !1457, metadata !DIExpression()), !dbg !1415
  %221 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 3, !dbg !1586
  %222 = load <2 x i64>, <2 x i64>* %221, align 16, !dbg !1586
  %223 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %220, <2 x i64> %222) #8, !dbg !1587
  call void @llvm.dbg.value(metadata <2 x i64> %223, metadata !1457, metadata !DIExpression()), !dbg !1415
  %224 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 4, !dbg !1588
  %225 = load <2 x i64>, <2 x i64>* %224, align 16, !dbg !1588
  %226 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %223, <2 x i64> %225) #8, !dbg !1589
  call void @llvm.dbg.value(metadata <2 x i64> %226, metadata !1457, metadata !DIExpression()), !dbg !1415
  %227 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 5, !dbg !1590
  %228 = load <2 x i64>, <2 x i64>* %227, align 16, !dbg !1590
  %229 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %226, <2 x i64> %228) #8, !dbg !1591
  call void @llvm.dbg.value(metadata <2 x i64> %229, metadata !1457, metadata !DIExpression()), !dbg !1415
  %230 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 6, !dbg !1592
  %231 = load <2 x i64>, <2 x i64>* %230, align 16, !dbg !1592
  %232 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %229, <2 x i64> %231) #8, !dbg !1593
  call void @llvm.dbg.value(metadata <2 x i64> %232, metadata !1457, metadata !DIExpression()), !dbg !1415
  %233 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 7, !dbg !1594
  %234 = load <2 x i64>, <2 x i64>* %233, align 16, !dbg !1594
  %235 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %232, <2 x i64> %234) #8, !dbg !1595
  call void @llvm.dbg.value(metadata <2 x i64> %235, metadata !1457, metadata !DIExpression()), !dbg !1415
  %236 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 8, !dbg !1596
  %237 = load <2 x i64>, <2 x i64>* %236, align 16, !dbg !1596
  %238 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %235, <2 x i64> %237) #8, !dbg !1597
  call void @llvm.dbg.value(metadata <2 x i64> %238, metadata !1457, metadata !DIExpression()), !dbg !1415
  %239 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 9, !dbg !1598
  %240 = load <2 x i64>, <2 x i64>* %239, align 16, !dbg !1598
  %241 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %238, <2 x i64> %240) #8, !dbg !1599
  call void @llvm.dbg.value(metadata <2 x i64> %241, metadata !1457, metadata !DIExpression()), !dbg !1415
  %242 = icmp eq i32 %8, 10, !dbg !1600
  br i1 %242, label %243, label %247, !dbg !1602

243:                                              ; preds = %211
  %244 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1603
  %245 = load <2 x i64>, <2 x i64>* %244, align 16, !dbg !1603
  %246 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %241, <2 x i64> %245) #8, !dbg !1605
  call void @llvm.dbg.value(metadata <2 x i64> %246, metadata !1457, metadata !DIExpression()), !dbg !1415
  br label %276, !dbg !1606

247:                                              ; preds = %211
  %248 = icmp eq i32 %8, 12, !dbg !1607
  br i1 %248, label %249, label %259, !dbg !1609

249:                                              ; preds = %247
  %250 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1610
  %251 = load <2 x i64>, <2 x i64>* %250, align 16, !dbg !1610
  %252 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %241, <2 x i64> %251) #8, !dbg !1612
  call void @llvm.dbg.value(metadata <2 x i64> %252, metadata !1457, metadata !DIExpression()), !dbg !1415
  %253 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 11, !dbg !1613
  %254 = load <2 x i64>, <2 x i64>* %253, align 16, !dbg !1613
  %255 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %252, <2 x i64> %254) #8, !dbg !1614
  call void @llvm.dbg.value(metadata <2 x i64> %255, metadata !1457, metadata !DIExpression()), !dbg !1415
  %256 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 12, !dbg !1615
  %257 = load <2 x i64>, <2 x i64>* %256, align 16, !dbg !1615
  %258 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %255, <2 x i64> %257) #8, !dbg !1616
  call void @llvm.dbg.value(metadata <2 x i64> %258, metadata !1457, metadata !DIExpression()), !dbg !1415
  br label %275, !dbg !1617

259:                                              ; preds = %247
  %260 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1618
  %261 = load <2 x i64>, <2 x i64>* %260, align 16, !dbg !1618
  %262 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %241, <2 x i64> %261) #8, !dbg !1620
  call void @llvm.dbg.value(metadata <2 x i64> %262, metadata !1457, metadata !DIExpression()), !dbg !1415
  %263 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 11, !dbg !1621
  %264 = load <2 x i64>, <2 x i64>* %263, align 16, !dbg !1621
  %265 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %262, <2 x i64> %264) #8, !dbg !1622
  call void @llvm.dbg.value(metadata <2 x i64> %265, metadata !1457, metadata !DIExpression()), !dbg !1415
  %266 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 12, !dbg !1623
  %267 = load <2 x i64>, <2 x i64>* %266, align 16, !dbg !1623
  %268 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %265, <2 x i64> %267) #8, !dbg !1624
  call void @llvm.dbg.value(metadata <2 x i64> %268, metadata !1457, metadata !DIExpression()), !dbg !1415
  %269 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 13, !dbg !1625
  %270 = load <2 x i64>, <2 x i64>* %269, align 16, !dbg !1625
  %271 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %268, <2 x i64> %270) #8, !dbg !1626
  call void @llvm.dbg.value(metadata <2 x i64> %271, metadata !1457, metadata !DIExpression()), !dbg !1415
  %272 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 14, !dbg !1627
  %273 = load <2 x i64>, <2 x i64>* %272, align 16, !dbg !1627
  %274 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %271, <2 x i64> %273) #8, !dbg !1628
  call void @llvm.dbg.value(metadata <2 x i64> %274, metadata !1457, metadata !DIExpression()), !dbg !1415
  br label %275

275:                                              ; preds = %259, %249
  %.2 = phi <2 x i64> [ %258, %249 ], [ %274, %259 ], !dbg !1629
  call void @llvm.dbg.value(metadata <2 x i64> %.2, metadata !1457, metadata !DIExpression()), !dbg !1415
  br label %276

276:                                              ; preds = %275, %243
  %.3 = phi <2 x i64> [ %246, %243 ], [ %.2, %275 ], !dbg !1630
  call void @llvm.dbg.value(metadata <2 x i64> %.3, metadata !1457, metadata !DIExpression()), !dbg !1415
  br label %278, !dbg !1631

277:                                              ; preds = %197
  br label %58, !dbg !1460, !llvm.loop !1632

278:                                              ; preds = %276, %58
  %.19 = phi <2 x i64> [ %209, %276 ], [ %.08, %58 ], !dbg !1415
  %.4 = phi <2 x i64> [ %.3, %276 ], [ %.06, %58 ], !dbg !1415
  call void @llvm.dbg.value(metadata <2 x i64> %.4, metadata !1457, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata <2 x i64> %.19, metadata !1454, metadata !DIExpression()), !dbg !1415
  %279 = bitcast i8* %1 to <2 x i64>*, !dbg !1634
  %280 = bitcast <2 x i64> %.19 to <16 x i8>, !dbg !1635
  %281 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1635
  %282 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %280, <16 x i8> %281) #8, !dbg !1635
  %283 = bitcast <16 x i8> %282 to <2 x i64>, !dbg !1635
  %284 = bitcast <2 x i64>* %279 to %struct.__loadu_si128*, !dbg !1636
  %285 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %284, i32 0, i32 0, !dbg !1636
  store <2 x i64> %283, <2 x i64>* %285, align 1, !dbg !1636
  %286 = bitcast i8* %2 to <2 x i64>*, !dbg !1637
  %287 = bitcast <2 x i64>* %286 to %struct.__loadu_si128*, !dbg !1638
  %288 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %287, i32 0, i32 0, !dbg !1638
  store <2 x i64> %.4, <2 x i64>* %288, align 1, !dbg !1638
  ret void, !dbg !1639
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_x86ni_ctrcbc_decrypt(%struct.br_aes_x86ni_ctrcbc_keys* noalias %0, i8* noalias %1, i8* noalias %2, i8* noalias %3, i64 %4) #6 !dbg !1640 {
  %6 = alloca [15 x <2 x i64>], align 16
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_ctrcbc_keys* %0, metadata !1641, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %1, metadata !1643, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %2, metadata !1644, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %3, metadata !1645, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i64 %4, metadata !1646, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.declare(metadata [15 x <2 x i64>]* %6, metadata !1647, metadata !DIExpression()), !dbg !1648
  %7 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 2, !dbg !1649
  %8 = load i32, i32* %7, align 8, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %8, metadata !1650, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i32 0, metadata !1651, metadata !DIExpression()), !dbg !1642
  br label %9, !dbg !1652

9:                                                ; preds = %24, %5
  %.03 = phi i32 [ 0, %5 ], [ %25, %24 ], !dbg !1654
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1651, metadata !DIExpression()), !dbg !1642
  %10 = icmp ule i32 %.03, %8, !dbg !1655
  br i1 %10, label %11, label %26, !dbg !1657

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 1, !dbg !1658
  %13 = bitcast %union.anon* %12 to [240 x i8]*, !dbg !1660
  %14 = getelementptr inbounds [240 x i8], [240 x i8]* %13, i64 0, i64 0, !dbg !1661
  %15 = shl i32 %.03, 4, !dbg !1662
  %16 = zext i32 %15 to i64, !dbg !1663
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !1663
  %18 = bitcast i8* %17 to <2 x i64>*, !dbg !1664
  %19 = bitcast <2 x i64>* %18 to %struct.__loadu_si128*, !dbg !1665
  %20 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %19, i32 0, i32 0, !dbg !1665
  %21 = load <2 x i64>, <2 x i64>* %20, align 1, !dbg !1665
  %22 = zext i32 %.03 to i64, !dbg !1666
  %23 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 %22, !dbg !1666
  store <2 x i64> %21, <2 x i64>* %23, align 16, !dbg !1667
  br label %24, !dbg !1668

24:                                               ; preds = %11
  %25 = add i32 %.03, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %25, metadata !1651, metadata !DIExpression()), !dbg !1642
  br label %9, !dbg !1670, !llvm.loop !1671

26:                                               ; preds = %9
  %27 = insertelement <16 x i8> undef, i8 15, i32 0, !dbg !1673
  %28 = insertelement <16 x i8> %27, i8 14, i32 1, !dbg !1673
  %29 = insertelement <16 x i8> %28, i8 13, i32 2, !dbg !1673
  %30 = insertelement <16 x i8> %29, i8 12, i32 3, !dbg !1673
  %31 = insertelement <16 x i8> %30, i8 11, i32 4, !dbg !1673
  %32 = insertelement <16 x i8> %31, i8 10, i32 5, !dbg !1673
  %33 = insertelement <16 x i8> %32, i8 9, i32 6, !dbg !1673
  %34 = insertelement <16 x i8> %33, i8 8, i32 7, !dbg !1673
  %35 = insertelement <16 x i8> %34, i8 7, i32 8, !dbg !1673
  %36 = insertelement <16 x i8> %35, i8 6, i32 9, !dbg !1673
  %37 = insertelement <16 x i8> %36, i8 5, i32 10, !dbg !1673
  %38 = insertelement <16 x i8> %37, i8 4, i32 11, !dbg !1673
  %39 = insertelement <16 x i8> %38, i8 3, i32 12, !dbg !1673
  %40 = insertelement <16 x i8> %39, i8 2, i32 13, !dbg !1673
  %41 = insertelement <16 x i8> %40, i8 1, i32 14, !dbg !1673
  %42 = insertelement <16 x i8> %41, i8 0, i32 15, !dbg !1673
  %43 = bitcast <16 x i8> %42 to <2 x i64>, !dbg !1673
  call void @llvm.dbg.value(metadata <2 x i64> %43, metadata !1674, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata <2 x i64> zeroinitializer, metadata !1675, metadata !DIExpression()), !dbg !1642
  %44 = insertelement <2 x i64> undef, i64 1, i32 0, !dbg !1676
  %45 = insertelement <2 x i64> %44, i64 0, i32 1, !dbg !1676
  call void @llvm.dbg.value(metadata <2 x i64> %45, metadata !1677, metadata !DIExpression()), !dbg !1642
  %46 = bitcast i8* %1 to <2 x i64>*, !dbg !1678
  %47 = bitcast <2 x i64>* %46 to %struct.__loadu_si128*, !dbg !1679
  %48 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %47, i32 0, i32 0, !dbg !1679
  %49 = load <2 x i64>, <2 x i64>* %48, align 1, !dbg !1679
  %50 = bitcast <2 x i64> %49 to <16 x i8>, !dbg !1680
  %51 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1680
  %52 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %50, <16 x i8> %51) #8, !dbg !1680
  %53 = bitcast <16 x i8> %52 to <2 x i64>, !dbg !1680
  call void @llvm.dbg.value(metadata <2 x i64> %53, metadata !1681, metadata !DIExpression()), !dbg !1642
  %54 = bitcast i8* %2 to <2 x i64>*, !dbg !1682
  %55 = bitcast <2 x i64>* %54 to %struct.__loadu_si128*, !dbg !1683
  %56 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %55, i32 0, i32 0, !dbg !1683
  %57 = load <2 x i64>, <2 x i64>* %56, align 1, !dbg !1683
  call void @llvm.dbg.value(metadata <2 x i64> %57, metadata !1684, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %3, metadata !1685, metadata !DIExpression()), !dbg !1642
  br label %58, !dbg !1686

58:                                               ; preds = %191, %26
  %.07 = phi i64 [ %4, %26 ], [ %197, %191 ]
  %.06 = phi i8* [ %3, %26 ], [ %196, %191 ], !dbg !1642
  %.05 = phi <2 x i64> [ %53, %26 ], [ %204, %191 ], !dbg !1642
  %.04 = phi <2 x i64> [ %57, %26 ], [ %.1, %191 ], !dbg !1642
  call void @llvm.dbg.value(metadata <2 x i64> %.04, metadata !1684, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata <2 x i64> %.05, metadata !1681, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* %.06, metadata !1685, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i64 %.07, metadata !1646, metadata !DIExpression()), !dbg !1642
  %59 = icmp ugt i64 %.07, 0, !dbg !1687
  br i1 %59, label %60, label %205, !dbg !1686

60:                                               ; preds = %58
  %61 = bitcast i8* %.06 to <2 x i64>*, !dbg !1688
  %62 = bitcast <2 x i64>* %61 to %struct.__loadu_si128*, !dbg !1690
  %63 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %62, i32 0, i32 0, !dbg !1690
  %64 = load <2 x i64>, <2 x i64>* %63, align 1, !dbg !1690
  call void @llvm.dbg.value(metadata <2 x i64> %64, metadata !1691, metadata !DIExpression()), !dbg !1692
  %65 = bitcast <2 x i64> %.05 to <16 x i8>, !dbg !1693
  %66 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1693
  %67 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %65, <16 x i8> %66) #8, !dbg !1693
  %68 = bitcast <16 x i8> %67 to <2 x i64>, !dbg !1693
  call void @llvm.dbg.value(metadata <2 x i64> %68, metadata !1694, metadata !DIExpression()), !dbg !1692
  %69 = xor <2 x i64> %.04, %64, !dbg !1695
  call void @llvm.dbg.value(metadata <2 x i64> %69, metadata !1696, metadata !DIExpression()), !dbg !1692
  %70 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 0, !dbg !1697
  %71 = load <2 x i64>, <2 x i64>* %70, align 16, !dbg !1697
  %72 = xor <2 x i64> %68, %71, !dbg !1698
  call void @llvm.dbg.value(metadata <2 x i64> %72, metadata !1694, metadata !DIExpression()), !dbg !1692
  %73 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 0, !dbg !1699
  %74 = load <2 x i64>, <2 x i64>* %73, align 16, !dbg !1699
  %75 = xor <2 x i64> %69, %74, !dbg !1700
  call void @llvm.dbg.value(metadata <2 x i64> %75, metadata !1696, metadata !DIExpression()), !dbg !1692
  %76 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 1, !dbg !1701
  %77 = load <2 x i64>, <2 x i64>* %76, align 16, !dbg !1701
  %78 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %72, <2 x i64> %77) #8, !dbg !1702
  call void @llvm.dbg.value(metadata <2 x i64> %78, metadata !1694, metadata !DIExpression()), !dbg !1692
  %79 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 1, !dbg !1703
  %80 = load <2 x i64>, <2 x i64>* %79, align 16, !dbg !1703
  %81 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %75, <2 x i64> %80) #8, !dbg !1704
  call void @llvm.dbg.value(metadata <2 x i64> %81, metadata !1696, metadata !DIExpression()), !dbg !1692
  %82 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 2, !dbg !1705
  %83 = load <2 x i64>, <2 x i64>* %82, align 16, !dbg !1705
  %84 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %78, <2 x i64> %83) #8, !dbg !1706
  call void @llvm.dbg.value(metadata <2 x i64> %84, metadata !1694, metadata !DIExpression()), !dbg !1692
  %85 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 2, !dbg !1707
  %86 = load <2 x i64>, <2 x i64>* %85, align 16, !dbg !1707
  %87 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %81, <2 x i64> %86) #8, !dbg !1708
  call void @llvm.dbg.value(metadata <2 x i64> %87, metadata !1696, metadata !DIExpression()), !dbg !1692
  %88 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 3, !dbg !1709
  %89 = load <2 x i64>, <2 x i64>* %88, align 16, !dbg !1709
  %90 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %84, <2 x i64> %89) #8, !dbg !1710
  call void @llvm.dbg.value(metadata <2 x i64> %90, metadata !1694, metadata !DIExpression()), !dbg !1692
  %91 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 3, !dbg !1711
  %92 = load <2 x i64>, <2 x i64>* %91, align 16, !dbg !1711
  %93 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %87, <2 x i64> %92) #8, !dbg !1712
  call void @llvm.dbg.value(metadata <2 x i64> %93, metadata !1696, metadata !DIExpression()), !dbg !1692
  %94 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 4, !dbg !1713
  %95 = load <2 x i64>, <2 x i64>* %94, align 16, !dbg !1713
  %96 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %90, <2 x i64> %95) #8, !dbg !1714
  call void @llvm.dbg.value(metadata <2 x i64> %96, metadata !1694, metadata !DIExpression()), !dbg !1692
  %97 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 4, !dbg !1715
  %98 = load <2 x i64>, <2 x i64>* %97, align 16, !dbg !1715
  %99 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %93, <2 x i64> %98) #8, !dbg !1716
  call void @llvm.dbg.value(metadata <2 x i64> %99, metadata !1696, metadata !DIExpression()), !dbg !1692
  %100 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 5, !dbg !1717
  %101 = load <2 x i64>, <2 x i64>* %100, align 16, !dbg !1717
  %102 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %96, <2 x i64> %101) #8, !dbg !1718
  call void @llvm.dbg.value(metadata <2 x i64> %102, metadata !1694, metadata !DIExpression()), !dbg !1692
  %103 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 5, !dbg !1719
  %104 = load <2 x i64>, <2 x i64>* %103, align 16, !dbg !1719
  %105 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %99, <2 x i64> %104) #8, !dbg !1720
  call void @llvm.dbg.value(metadata <2 x i64> %105, metadata !1696, metadata !DIExpression()), !dbg !1692
  %106 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 6, !dbg !1721
  %107 = load <2 x i64>, <2 x i64>* %106, align 16, !dbg !1721
  %108 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %102, <2 x i64> %107) #8, !dbg !1722
  call void @llvm.dbg.value(metadata <2 x i64> %108, metadata !1694, metadata !DIExpression()), !dbg !1692
  %109 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 6, !dbg !1723
  %110 = load <2 x i64>, <2 x i64>* %109, align 16, !dbg !1723
  %111 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %105, <2 x i64> %110) #8, !dbg !1724
  call void @llvm.dbg.value(metadata <2 x i64> %111, metadata !1696, metadata !DIExpression()), !dbg !1692
  %112 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 7, !dbg !1725
  %113 = load <2 x i64>, <2 x i64>* %112, align 16, !dbg !1725
  %114 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %108, <2 x i64> %113) #8, !dbg !1726
  call void @llvm.dbg.value(metadata <2 x i64> %114, metadata !1694, metadata !DIExpression()), !dbg !1692
  %115 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 7, !dbg !1727
  %116 = load <2 x i64>, <2 x i64>* %115, align 16, !dbg !1727
  %117 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %111, <2 x i64> %116) #8, !dbg !1728
  call void @llvm.dbg.value(metadata <2 x i64> %117, metadata !1696, metadata !DIExpression()), !dbg !1692
  %118 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 8, !dbg !1729
  %119 = load <2 x i64>, <2 x i64>* %118, align 16, !dbg !1729
  %120 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %114, <2 x i64> %119) #8, !dbg !1730
  call void @llvm.dbg.value(metadata <2 x i64> %120, metadata !1694, metadata !DIExpression()), !dbg !1692
  %121 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 8, !dbg !1731
  %122 = load <2 x i64>, <2 x i64>* %121, align 16, !dbg !1731
  %123 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %117, <2 x i64> %122) #8, !dbg !1732
  call void @llvm.dbg.value(metadata <2 x i64> %123, metadata !1696, metadata !DIExpression()), !dbg !1692
  %124 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 9, !dbg !1733
  %125 = load <2 x i64>, <2 x i64>* %124, align 16, !dbg !1733
  %126 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %120, <2 x i64> %125) #8, !dbg !1734
  call void @llvm.dbg.value(metadata <2 x i64> %126, metadata !1694, metadata !DIExpression()), !dbg !1692
  %127 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 9, !dbg !1735
  %128 = load <2 x i64>, <2 x i64>* %127, align 16, !dbg !1735
  %129 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %123, <2 x i64> %128) #8, !dbg !1736
  call void @llvm.dbg.value(metadata <2 x i64> %129, metadata !1696, metadata !DIExpression()), !dbg !1692
  %130 = icmp eq i32 %8, 10, !dbg !1737
  br i1 %130, label %131, label %138, !dbg !1739

131:                                              ; preds = %60
  %132 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1740
  %133 = load <2 x i64>, <2 x i64>* %132, align 16, !dbg !1740
  %134 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %126, <2 x i64> %133) #8, !dbg !1742
  call void @llvm.dbg.value(metadata <2 x i64> %134, metadata !1694, metadata !DIExpression()), !dbg !1692
  %135 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1743
  %136 = load <2 x i64>, <2 x i64>* %135, align 16, !dbg !1743
  %137 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %129, <2 x i64> %136) #8, !dbg !1744
  call void @llvm.dbg.value(metadata <2 x i64> %137, metadata !1696, metadata !DIExpression()), !dbg !1692
  br label %191, !dbg !1745

138:                                              ; preds = %60
  %139 = icmp eq i32 %8, 12, !dbg !1746
  br i1 %139, label %140, label %159, !dbg !1748

140:                                              ; preds = %138
  %141 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1749
  %142 = load <2 x i64>, <2 x i64>* %141, align 16, !dbg !1749
  %143 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %126, <2 x i64> %142) #8, !dbg !1751
  call void @llvm.dbg.value(metadata <2 x i64> %143, metadata !1694, metadata !DIExpression()), !dbg !1692
  %144 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1752
  %145 = load <2 x i64>, <2 x i64>* %144, align 16, !dbg !1752
  %146 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %129, <2 x i64> %145) #8, !dbg !1753
  call void @llvm.dbg.value(metadata <2 x i64> %146, metadata !1696, metadata !DIExpression()), !dbg !1692
  %147 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 11, !dbg !1754
  %148 = load <2 x i64>, <2 x i64>* %147, align 16, !dbg !1754
  %149 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %143, <2 x i64> %148) #8, !dbg !1755
  call void @llvm.dbg.value(metadata <2 x i64> %149, metadata !1694, metadata !DIExpression()), !dbg !1692
  %150 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 11, !dbg !1756
  %151 = load <2 x i64>, <2 x i64>* %150, align 16, !dbg !1756
  %152 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %146, <2 x i64> %151) #8, !dbg !1757
  call void @llvm.dbg.value(metadata <2 x i64> %152, metadata !1696, metadata !DIExpression()), !dbg !1692
  %153 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 12, !dbg !1758
  %154 = load <2 x i64>, <2 x i64>* %153, align 16, !dbg !1758
  %155 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %149, <2 x i64> %154) #8, !dbg !1759
  call void @llvm.dbg.value(metadata <2 x i64> %155, metadata !1694, metadata !DIExpression()), !dbg !1692
  %156 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 12, !dbg !1760
  %157 = load <2 x i64>, <2 x i64>* %156, align 16, !dbg !1760
  %158 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %152, <2 x i64> %157) #8, !dbg !1761
  call void @llvm.dbg.value(metadata <2 x i64> %158, metadata !1696, metadata !DIExpression()), !dbg !1692
  br label %190, !dbg !1762

159:                                              ; preds = %138
  %160 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1763
  %161 = load <2 x i64>, <2 x i64>* %160, align 16, !dbg !1763
  %162 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %126, <2 x i64> %161) #8, !dbg !1765
  call void @llvm.dbg.value(metadata <2 x i64> %162, metadata !1694, metadata !DIExpression()), !dbg !1692
  %163 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 10, !dbg !1766
  %164 = load <2 x i64>, <2 x i64>* %163, align 16, !dbg !1766
  %165 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %129, <2 x i64> %164) #8, !dbg !1767
  call void @llvm.dbg.value(metadata <2 x i64> %165, metadata !1696, metadata !DIExpression()), !dbg !1692
  %166 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 11, !dbg !1768
  %167 = load <2 x i64>, <2 x i64>* %166, align 16, !dbg !1768
  %168 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %162, <2 x i64> %167) #8, !dbg !1769
  call void @llvm.dbg.value(metadata <2 x i64> %168, metadata !1694, metadata !DIExpression()), !dbg !1692
  %169 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 11, !dbg !1770
  %170 = load <2 x i64>, <2 x i64>* %169, align 16, !dbg !1770
  %171 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %165, <2 x i64> %170) #8, !dbg !1771
  call void @llvm.dbg.value(metadata <2 x i64> %171, metadata !1696, metadata !DIExpression()), !dbg !1692
  %172 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 12, !dbg !1772
  %173 = load <2 x i64>, <2 x i64>* %172, align 16, !dbg !1772
  %174 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %168, <2 x i64> %173) #8, !dbg !1773
  call void @llvm.dbg.value(metadata <2 x i64> %174, metadata !1694, metadata !DIExpression()), !dbg !1692
  %175 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 12, !dbg !1774
  %176 = load <2 x i64>, <2 x i64>* %175, align 16, !dbg !1774
  %177 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %171, <2 x i64> %176) #8, !dbg !1775
  call void @llvm.dbg.value(metadata <2 x i64> %177, metadata !1696, metadata !DIExpression()), !dbg !1692
  %178 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 13, !dbg !1776
  %179 = load <2 x i64>, <2 x i64>* %178, align 16, !dbg !1776
  %180 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %174, <2 x i64> %179) #8, !dbg !1777
  call void @llvm.dbg.value(metadata <2 x i64> %180, metadata !1694, metadata !DIExpression()), !dbg !1692
  %181 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 13, !dbg !1778
  %182 = load <2 x i64>, <2 x i64>* %181, align 16, !dbg !1778
  %183 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %177, <2 x i64> %182) #8, !dbg !1779
  call void @llvm.dbg.value(metadata <2 x i64> %183, metadata !1696, metadata !DIExpression()), !dbg !1692
  %184 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 14, !dbg !1780
  %185 = load <2 x i64>, <2 x i64>* %184, align 16, !dbg !1780
  %186 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %180, <2 x i64> %185) #8, !dbg !1781
  call void @llvm.dbg.value(metadata <2 x i64> %186, metadata !1694, metadata !DIExpression()), !dbg !1692
  %187 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %6, i64 0, i64 14, !dbg !1782
  %188 = load <2 x i64>, <2 x i64>* %187, align 16, !dbg !1782
  %189 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %183, <2 x i64> %188) #8, !dbg !1783
  call void @llvm.dbg.value(metadata <2 x i64> %189, metadata !1696, metadata !DIExpression()), !dbg !1692
  br label %190

190:                                              ; preds = %159, %140
  %.01 = phi <2 x i64> [ %155, %140 ], [ %186, %159 ], !dbg !1784
  %.0 = phi <2 x i64> [ %158, %140 ], [ %189, %159 ], !dbg !1784
  call void @llvm.dbg.value(metadata <2 x i64> %.0, metadata !1696, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata <2 x i64> %.01, metadata !1694, metadata !DIExpression()), !dbg !1692
  br label %191

191:                                              ; preds = %190, %131
  %.12 = phi <2 x i64> [ %134, %131 ], [ %.01, %190 ], !dbg !1785
  %.1 = phi <2 x i64> [ %137, %131 ], [ %.0, %190 ], !dbg !1785
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !1696, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata <2 x i64> %.12, metadata !1694, metadata !DIExpression()), !dbg !1692
  %192 = xor <2 x i64> %.12, %64, !dbg !1786
  call void @llvm.dbg.value(metadata <2 x i64> %192, metadata !1694, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !1684, metadata !DIExpression()), !dbg !1642
  %193 = bitcast i8* %.06 to <2 x i64>*, !dbg !1787
  %194 = bitcast <2 x i64>* %193 to %struct.__loadu_si128*, !dbg !1788
  %195 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %194, i32 0, i32 0, !dbg !1788
  store <2 x i64> %192, <2 x i64>* %195, align 1, !dbg !1788
  %196 = getelementptr inbounds i8, i8* %.06, i64 16, !dbg !1789
  call void @llvm.dbg.value(metadata i8* %196, metadata !1685, metadata !DIExpression()), !dbg !1642
  %197 = sub i64 %.07, 16, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %197, metadata !1646, metadata !DIExpression()), !dbg !1642
  %198 = add <2 x i64> %.05, %45, !dbg !1791
  call void @llvm.dbg.value(metadata <2 x i64> %198, metadata !1681, metadata !DIExpression()), !dbg !1642
  %199 = icmp eq <2 x i64> %198, zeroinitializer, !dbg !1792
  %200 = sext <2 x i1> %199 to <2 x i64>, !dbg !1792
  %201 = bitcast <2 x i64> %200 to <16 x i8>, !dbg !1792
  %202 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %201, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !1792
  %203 = bitcast <16 x i8> %202 to <2 x i64>, !dbg !1792
  %204 = sub <2 x i64> %198, %203, !dbg !1793
  call void @llvm.dbg.value(metadata <2 x i64> %204, metadata !1681, metadata !DIExpression()), !dbg !1642
  br label %58, !dbg !1686, !llvm.loop !1794

205:                                              ; preds = %58
  %206 = bitcast i8* %1 to <2 x i64>*, !dbg !1796
  %207 = bitcast <2 x i64> %.05 to <16 x i8>, !dbg !1797
  %208 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1797
  %209 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %207, <16 x i8> %208) #8, !dbg !1797
  %210 = bitcast <16 x i8> %209 to <2 x i64>, !dbg !1797
  %211 = bitcast <2 x i64>* %206 to %struct.__loadu_si128*, !dbg !1798
  %212 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %211, i32 0, i32 0, !dbg !1798
  store <2 x i64> %210, <2 x i64>* %212, align 1, !dbg !1798
  %213 = bitcast i8* %2 to <2 x i64>*, !dbg !1799
  %214 = bitcast <2 x i64>* %213 to %struct.__loadu_si128*, !dbg !1800
  %215 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %214, i32 0, i32 0, !dbg !1800
  store <2 x i64> %.04, <2 x i64>* %215, align 1, !dbg !1800
  ret void, !dbg !1801
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_x86ni_ctrcbc_ctr(%struct.br_aes_x86ni_ctrcbc_keys* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #6 !dbg !1802 {
  %5 = alloca [15 x <2 x i64>], align 16
  %6 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_ctrcbc_keys* %0, metadata !1805, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8* %1, metadata !1807, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8* %2, metadata !1808, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %3, metadata !1809, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.declare(metadata [15 x <2 x i64>]* %5, metadata !1810, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8* %2, metadata !1812, metadata !DIExpression()), !dbg !1806
  %7 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 2, !dbg !1813
  %8 = load i32, i32* %7, align 8, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %8, metadata !1814, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 0, metadata !1815, metadata !DIExpression()), !dbg !1806
  br label %9, !dbg !1816

9:                                                ; preds = %24, %4
  %.07 = phi i32 [ 0, %4 ], [ %25, %24 ], !dbg !1818
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1815, metadata !DIExpression()), !dbg !1806
  %10 = icmp ule i32 %.07, %8, !dbg !1819
  br i1 %10, label %11, label %26, !dbg !1821

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 1, !dbg !1822
  %13 = bitcast %union.anon* %12 to [240 x i8]*, !dbg !1824
  %14 = getelementptr inbounds [240 x i8], [240 x i8]* %13, i64 0, i64 0, !dbg !1825
  %15 = shl i32 %.07, 4, !dbg !1826
  %16 = zext i32 %15 to i64, !dbg !1827
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !1827
  %18 = bitcast i8* %17 to <2 x i64>*, !dbg !1828
  %19 = bitcast <2 x i64>* %18 to %struct.__loadu_si128*, !dbg !1829
  %20 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %19, i32 0, i32 0, !dbg !1829
  %21 = load <2 x i64>, <2 x i64>* %20, align 1, !dbg !1829
  %22 = zext i32 %.07 to i64, !dbg !1830
  %23 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 %22, !dbg !1830
  store <2 x i64> %21, <2 x i64>* %23, align 16, !dbg !1831
  br label %24, !dbg !1832

24:                                               ; preds = %11
  %25 = add i32 %.07, 1, !dbg !1833
  call void @llvm.dbg.value(metadata i32 %25, metadata !1815, metadata !DIExpression()), !dbg !1806
  br label %9, !dbg !1834, !llvm.loop !1835

26:                                               ; preds = %9
  %27 = insertelement <16 x i8> undef, i8 15, i32 0, !dbg !1837
  %28 = insertelement <16 x i8> %27, i8 14, i32 1, !dbg !1837
  %29 = insertelement <16 x i8> %28, i8 13, i32 2, !dbg !1837
  %30 = insertelement <16 x i8> %29, i8 12, i32 3, !dbg !1837
  %31 = insertelement <16 x i8> %30, i8 11, i32 4, !dbg !1837
  %32 = insertelement <16 x i8> %31, i8 10, i32 5, !dbg !1837
  %33 = insertelement <16 x i8> %32, i8 9, i32 6, !dbg !1837
  %34 = insertelement <16 x i8> %33, i8 8, i32 7, !dbg !1837
  %35 = insertelement <16 x i8> %34, i8 7, i32 8, !dbg !1837
  %36 = insertelement <16 x i8> %35, i8 6, i32 9, !dbg !1837
  %37 = insertelement <16 x i8> %36, i8 5, i32 10, !dbg !1837
  %38 = insertelement <16 x i8> %37, i8 4, i32 11, !dbg !1837
  %39 = insertelement <16 x i8> %38, i8 3, i32 12, !dbg !1837
  %40 = insertelement <16 x i8> %39, i8 2, i32 13, !dbg !1837
  %41 = insertelement <16 x i8> %40, i8 1, i32 14, !dbg !1837
  %42 = insertelement <16 x i8> %41, i8 0, i32 15, !dbg !1837
  %43 = bitcast <16 x i8> %42 to <2 x i64>, !dbg !1837
  call void @llvm.dbg.value(metadata <2 x i64> %43, metadata !1838, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata <2 x i64> zeroinitializer, metadata !1839, metadata !DIExpression()), !dbg !1806
  %44 = insertelement <2 x i64> undef, i64 1, i32 0, !dbg !1840
  %45 = insertelement <2 x i64> %44, i64 0, i32 1, !dbg !1840
  call void @llvm.dbg.value(metadata <2 x i64> %45, metadata !1841, metadata !DIExpression()), !dbg !1806
  %46 = insertelement <2 x i64> undef, i64 4, i32 0, !dbg !1842
  %47 = insertelement <2 x i64> %46, i64 0, i32 1, !dbg !1842
  call void @llvm.dbg.value(metadata <2 x i64> %47, metadata !1843, metadata !DIExpression()), !dbg !1806
  %48 = sub <2 x i64> zeroinitializer, %47, !dbg !1844
  call void @llvm.dbg.value(metadata <2 x i64> %48, metadata !1845, metadata !DIExpression()), !dbg !1806
  %49 = bitcast i8* %1 to <2 x i64>*, !dbg !1846
  %50 = bitcast <2 x i64>* %49 to %struct.__loadu_si128*, !dbg !1847
  %51 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %50, i32 0, i32 0, !dbg !1847
  %52 = load <2 x i64>, <2 x i64>* %51, align 1, !dbg !1847
  %53 = bitcast <2 x i64> %52 to <16 x i8>, !dbg !1848
  %54 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1848
  %55 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %53, <16 x i8> %54) #8, !dbg !1848
  %56 = bitcast <16 x i8> %55 to <2 x i64>, !dbg !1848
  call void @llvm.dbg.value(metadata <2 x i64> %56, metadata !1849, metadata !DIExpression()), !dbg !1806
  %57 = add <2 x i64> %56, %45, !dbg !1850
  call void @llvm.dbg.value(metadata <2 x i64> %57, metadata !1851, metadata !DIExpression()), !dbg !1806
  %58 = icmp eq <2 x i64> %57, zeroinitializer, !dbg !1852
  %59 = sext <2 x i1> %58 to <2 x i64>, !dbg !1852
  %60 = bitcast <2 x i64> %59 to <16 x i8>, !dbg !1852
  %61 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %60, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !1852
  %62 = bitcast <16 x i8> %61 to <2 x i64>, !dbg !1852
  %63 = sub <2 x i64> %57, %62, !dbg !1853
  call void @llvm.dbg.value(metadata <2 x i64> %63, metadata !1851, metadata !DIExpression()), !dbg !1806
  %64 = add <2 x i64> %63, %45, !dbg !1854
  call void @llvm.dbg.value(metadata <2 x i64> %64, metadata !1855, metadata !DIExpression()), !dbg !1806
  %65 = icmp eq <2 x i64> %64, zeroinitializer, !dbg !1856
  %66 = sext <2 x i1> %65 to <2 x i64>, !dbg !1856
  %67 = bitcast <2 x i64> %66 to <16 x i8>, !dbg !1856
  %68 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %67, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !1856
  %69 = bitcast <16 x i8> %68 to <2 x i64>, !dbg !1856
  %70 = sub <2 x i64> %64, %69, !dbg !1857
  call void @llvm.dbg.value(metadata <2 x i64> %70, metadata !1855, metadata !DIExpression()), !dbg !1806
  %71 = add <2 x i64> %70, %45, !dbg !1858
  call void @llvm.dbg.value(metadata <2 x i64> %71, metadata !1859, metadata !DIExpression()), !dbg !1806
  %72 = icmp eq <2 x i64> %71, zeroinitializer, !dbg !1860
  %73 = sext <2 x i1> %72 to <2 x i64>, !dbg !1860
  %74 = bitcast <2 x i64> %73 to <16 x i8>, !dbg !1860
  %75 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %74, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !1860
  %76 = bitcast <16 x i8> %75 to <2 x i64>, !dbg !1860
  %77 = sub <2 x i64> %71, %76, !dbg !1861
  call void @llvm.dbg.value(metadata <2 x i64> %77, metadata !1859, metadata !DIExpression()), !dbg !1806
  br label %78, !dbg !1862

78:                                               ; preds = %419, %26
  %.015 = phi i64 [ %3, %26 ], [ %376, %419 ]
  %.014 = phi i8* [ %2, %26 ], [ %375, %419 ], !dbg !1806
  %.012 = phi <2 x i64> [ %56, %26 ], [ %430, %419 ], !dbg !1806
  %.011 = phi <2 x i64> [ %63, %26 ], [ %437, %419 ], !dbg !1806
  %.010 = phi <2 x i64> [ %70, %26 ], [ %444, %419 ], !dbg !1806
  %.09 = phi <2 x i64> [ %77, %26 ], [ %451, %419 ], !dbg !1806
  call void @llvm.dbg.value(metadata <2 x i64> %.09, metadata !1859, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata <2 x i64> %.010, metadata !1855, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata <2 x i64> %.011, metadata !1851, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata <2 x i64> %.012, metadata !1849, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8* %.014, metadata !1812, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %.015, metadata !1809, metadata !DIExpression()), !dbg !1806
  %79 = icmp ugt i64 %.015, 0, !dbg !1863
  br i1 %79, label %80, label %452, !dbg !1862

80:                                               ; preds = %78
  %81 = bitcast <2 x i64> %.012 to <16 x i8>, !dbg !1864
  %82 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1864
  %83 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %81, <16 x i8> %82) #8, !dbg !1864
  %84 = bitcast <16 x i8> %83 to <2 x i64>, !dbg !1864
  call void @llvm.dbg.value(metadata <2 x i64> %84, metadata !1866, metadata !DIExpression()), !dbg !1867
  %85 = bitcast <2 x i64> %.011 to <16 x i8>, !dbg !1868
  %86 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1868
  %87 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %85, <16 x i8> %86) #8, !dbg !1868
  %88 = bitcast <16 x i8> %87 to <2 x i64>, !dbg !1868
  call void @llvm.dbg.value(metadata <2 x i64> %88, metadata !1869, metadata !DIExpression()), !dbg !1867
  %89 = bitcast <2 x i64> %.010 to <16 x i8>, !dbg !1870
  %90 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1870
  %91 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %89, <16 x i8> %90) #8, !dbg !1870
  %92 = bitcast <16 x i8> %91 to <2 x i64>, !dbg !1870
  call void @llvm.dbg.value(metadata <2 x i64> %92, metadata !1871, metadata !DIExpression()), !dbg !1867
  %93 = bitcast <2 x i64> %.09 to <16 x i8>, !dbg !1872
  %94 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !1872
  %95 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %93, <16 x i8> %94) #8, !dbg !1872
  %96 = bitcast <16 x i8> %95 to <2 x i64>, !dbg !1872
  call void @llvm.dbg.value(metadata <2 x i64> %96, metadata !1873, metadata !DIExpression()), !dbg !1867
  %97 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 0, !dbg !1874
  %98 = load <2 x i64>, <2 x i64>* %97, align 16, !dbg !1874
  %99 = xor <2 x i64> %84, %98, !dbg !1875
  call void @llvm.dbg.value(metadata <2 x i64> %99, metadata !1866, metadata !DIExpression()), !dbg !1867
  %100 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 0, !dbg !1876
  %101 = load <2 x i64>, <2 x i64>* %100, align 16, !dbg !1876
  %102 = xor <2 x i64> %88, %101, !dbg !1877
  call void @llvm.dbg.value(metadata <2 x i64> %102, metadata !1869, metadata !DIExpression()), !dbg !1867
  %103 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 0, !dbg !1878
  %104 = load <2 x i64>, <2 x i64>* %103, align 16, !dbg !1878
  %105 = xor <2 x i64> %92, %104, !dbg !1879
  call void @llvm.dbg.value(metadata <2 x i64> %105, metadata !1871, metadata !DIExpression()), !dbg !1867
  %106 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 0, !dbg !1880
  %107 = load <2 x i64>, <2 x i64>* %106, align 16, !dbg !1880
  %108 = xor <2 x i64> %96, %107, !dbg !1881
  call void @llvm.dbg.value(metadata <2 x i64> %108, metadata !1873, metadata !DIExpression()), !dbg !1867
  %109 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 1, !dbg !1882
  %110 = load <2 x i64>, <2 x i64>* %109, align 16, !dbg !1882
  %111 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %99, <2 x i64> %110) #8, !dbg !1883
  call void @llvm.dbg.value(metadata <2 x i64> %111, metadata !1866, metadata !DIExpression()), !dbg !1867
  %112 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 1, !dbg !1884
  %113 = load <2 x i64>, <2 x i64>* %112, align 16, !dbg !1884
  %114 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %102, <2 x i64> %113) #8, !dbg !1885
  call void @llvm.dbg.value(metadata <2 x i64> %114, metadata !1869, metadata !DIExpression()), !dbg !1867
  %115 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 1, !dbg !1886
  %116 = load <2 x i64>, <2 x i64>* %115, align 16, !dbg !1886
  %117 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %105, <2 x i64> %116) #8, !dbg !1887
  call void @llvm.dbg.value(metadata <2 x i64> %117, metadata !1871, metadata !DIExpression()), !dbg !1867
  %118 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 1, !dbg !1888
  %119 = load <2 x i64>, <2 x i64>* %118, align 16, !dbg !1888
  %120 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %108, <2 x i64> %119) #8, !dbg !1889
  call void @llvm.dbg.value(metadata <2 x i64> %120, metadata !1873, metadata !DIExpression()), !dbg !1867
  %121 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 2, !dbg !1890
  %122 = load <2 x i64>, <2 x i64>* %121, align 16, !dbg !1890
  %123 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %111, <2 x i64> %122) #8, !dbg !1891
  call void @llvm.dbg.value(metadata <2 x i64> %123, metadata !1866, metadata !DIExpression()), !dbg !1867
  %124 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 2, !dbg !1892
  %125 = load <2 x i64>, <2 x i64>* %124, align 16, !dbg !1892
  %126 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %114, <2 x i64> %125) #8, !dbg !1893
  call void @llvm.dbg.value(metadata <2 x i64> %126, metadata !1869, metadata !DIExpression()), !dbg !1867
  %127 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 2, !dbg !1894
  %128 = load <2 x i64>, <2 x i64>* %127, align 16, !dbg !1894
  %129 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %117, <2 x i64> %128) #8, !dbg !1895
  call void @llvm.dbg.value(metadata <2 x i64> %129, metadata !1871, metadata !DIExpression()), !dbg !1867
  %130 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 2, !dbg !1896
  %131 = load <2 x i64>, <2 x i64>* %130, align 16, !dbg !1896
  %132 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %120, <2 x i64> %131) #8, !dbg !1897
  call void @llvm.dbg.value(metadata <2 x i64> %132, metadata !1873, metadata !DIExpression()), !dbg !1867
  %133 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 3, !dbg !1898
  %134 = load <2 x i64>, <2 x i64>* %133, align 16, !dbg !1898
  %135 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %123, <2 x i64> %134) #8, !dbg !1899
  call void @llvm.dbg.value(metadata <2 x i64> %135, metadata !1866, metadata !DIExpression()), !dbg !1867
  %136 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 3, !dbg !1900
  %137 = load <2 x i64>, <2 x i64>* %136, align 16, !dbg !1900
  %138 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %126, <2 x i64> %137) #8, !dbg !1901
  call void @llvm.dbg.value(metadata <2 x i64> %138, metadata !1869, metadata !DIExpression()), !dbg !1867
  %139 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 3, !dbg !1902
  %140 = load <2 x i64>, <2 x i64>* %139, align 16, !dbg !1902
  %141 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %129, <2 x i64> %140) #8, !dbg !1903
  call void @llvm.dbg.value(metadata <2 x i64> %141, metadata !1871, metadata !DIExpression()), !dbg !1867
  %142 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 3, !dbg !1904
  %143 = load <2 x i64>, <2 x i64>* %142, align 16, !dbg !1904
  %144 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %132, <2 x i64> %143) #8, !dbg !1905
  call void @llvm.dbg.value(metadata <2 x i64> %144, metadata !1873, metadata !DIExpression()), !dbg !1867
  %145 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 4, !dbg !1906
  %146 = load <2 x i64>, <2 x i64>* %145, align 16, !dbg !1906
  %147 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %135, <2 x i64> %146) #8, !dbg !1907
  call void @llvm.dbg.value(metadata <2 x i64> %147, metadata !1866, metadata !DIExpression()), !dbg !1867
  %148 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 4, !dbg !1908
  %149 = load <2 x i64>, <2 x i64>* %148, align 16, !dbg !1908
  %150 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %138, <2 x i64> %149) #8, !dbg !1909
  call void @llvm.dbg.value(metadata <2 x i64> %150, metadata !1869, metadata !DIExpression()), !dbg !1867
  %151 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 4, !dbg !1910
  %152 = load <2 x i64>, <2 x i64>* %151, align 16, !dbg !1910
  %153 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %141, <2 x i64> %152) #8, !dbg !1911
  call void @llvm.dbg.value(metadata <2 x i64> %153, metadata !1871, metadata !DIExpression()), !dbg !1867
  %154 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 4, !dbg !1912
  %155 = load <2 x i64>, <2 x i64>* %154, align 16, !dbg !1912
  %156 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %144, <2 x i64> %155) #8, !dbg !1913
  call void @llvm.dbg.value(metadata <2 x i64> %156, metadata !1873, metadata !DIExpression()), !dbg !1867
  %157 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 5, !dbg !1914
  %158 = load <2 x i64>, <2 x i64>* %157, align 16, !dbg !1914
  %159 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %147, <2 x i64> %158) #8, !dbg !1915
  call void @llvm.dbg.value(metadata <2 x i64> %159, metadata !1866, metadata !DIExpression()), !dbg !1867
  %160 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 5, !dbg !1916
  %161 = load <2 x i64>, <2 x i64>* %160, align 16, !dbg !1916
  %162 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %150, <2 x i64> %161) #8, !dbg !1917
  call void @llvm.dbg.value(metadata <2 x i64> %162, metadata !1869, metadata !DIExpression()), !dbg !1867
  %163 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 5, !dbg !1918
  %164 = load <2 x i64>, <2 x i64>* %163, align 16, !dbg !1918
  %165 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %153, <2 x i64> %164) #8, !dbg !1919
  call void @llvm.dbg.value(metadata <2 x i64> %165, metadata !1871, metadata !DIExpression()), !dbg !1867
  %166 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 5, !dbg !1920
  %167 = load <2 x i64>, <2 x i64>* %166, align 16, !dbg !1920
  %168 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %156, <2 x i64> %167) #8, !dbg !1921
  call void @llvm.dbg.value(metadata <2 x i64> %168, metadata !1873, metadata !DIExpression()), !dbg !1867
  %169 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 6, !dbg !1922
  %170 = load <2 x i64>, <2 x i64>* %169, align 16, !dbg !1922
  %171 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %159, <2 x i64> %170) #8, !dbg !1923
  call void @llvm.dbg.value(metadata <2 x i64> %171, metadata !1866, metadata !DIExpression()), !dbg !1867
  %172 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 6, !dbg !1924
  %173 = load <2 x i64>, <2 x i64>* %172, align 16, !dbg !1924
  %174 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %162, <2 x i64> %173) #8, !dbg !1925
  call void @llvm.dbg.value(metadata <2 x i64> %174, metadata !1869, metadata !DIExpression()), !dbg !1867
  %175 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 6, !dbg !1926
  %176 = load <2 x i64>, <2 x i64>* %175, align 16, !dbg !1926
  %177 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %165, <2 x i64> %176) #8, !dbg !1927
  call void @llvm.dbg.value(metadata <2 x i64> %177, metadata !1871, metadata !DIExpression()), !dbg !1867
  %178 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 6, !dbg !1928
  %179 = load <2 x i64>, <2 x i64>* %178, align 16, !dbg !1928
  %180 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %168, <2 x i64> %179) #8, !dbg !1929
  call void @llvm.dbg.value(metadata <2 x i64> %180, metadata !1873, metadata !DIExpression()), !dbg !1867
  %181 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 7, !dbg !1930
  %182 = load <2 x i64>, <2 x i64>* %181, align 16, !dbg !1930
  %183 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %171, <2 x i64> %182) #8, !dbg !1931
  call void @llvm.dbg.value(metadata <2 x i64> %183, metadata !1866, metadata !DIExpression()), !dbg !1867
  %184 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 7, !dbg !1932
  %185 = load <2 x i64>, <2 x i64>* %184, align 16, !dbg !1932
  %186 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %174, <2 x i64> %185) #8, !dbg !1933
  call void @llvm.dbg.value(metadata <2 x i64> %186, metadata !1869, metadata !DIExpression()), !dbg !1867
  %187 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 7, !dbg !1934
  %188 = load <2 x i64>, <2 x i64>* %187, align 16, !dbg !1934
  %189 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %177, <2 x i64> %188) #8, !dbg !1935
  call void @llvm.dbg.value(metadata <2 x i64> %189, metadata !1871, metadata !DIExpression()), !dbg !1867
  %190 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 7, !dbg !1936
  %191 = load <2 x i64>, <2 x i64>* %190, align 16, !dbg !1936
  %192 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %180, <2 x i64> %191) #8, !dbg !1937
  call void @llvm.dbg.value(metadata <2 x i64> %192, metadata !1873, metadata !DIExpression()), !dbg !1867
  %193 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 8, !dbg !1938
  %194 = load <2 x i64>, <2 x i64>* %193, align 16, !dbg !1938
  %195 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %183, <2 x i64> %194) #8, !dbg !1939
  call void @llvm.dbg.value(metadata <2 x i64> %195, metadata !1866, metadata !DIExpression()), !dbg !1867
  %196 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 8, !dbg !1940
  %197 = load <2 x i64>, <2 x i64>* %196, align 16, !dbg !1940
  %198 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %186, <2 x i64> %197) #8, !dbg !1941
  call void @llvm.dbg.value(metadata <2 x i64> %198, metadata !1869, metadata !DIExpression()), !dbg !1867
  %199 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 8, !dbg !1942
  %200 = load <2 x i64>, <2 x i64>* %199, align 16, !dbg !1942
  %201 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %189, <2 x i64> %200) #8, !dbg !1943
  call void @llvm.dbg.value(metadata <2 x i64> %201, metadata !1871, metadata !DIExpression()), !dbg !1867
  %202 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 8, !dbg !1944
  %203 = load <2 x i64>, <2 x i64>* %202, align 16, !dbg !1944
  %204 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %192, <2 x i64> %203) #8, !dbg !1945
  call void @llvm.dbg.value(metadata <2 x i64> %204, metadata !1873, metadata !DIExpression()), !dbg !1867
  %205 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 9, !dbg !1946
  %206 = load <2 x i64>, <2 x i64>* %205, align 16, !dbg !1946
  %207 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %195, <2 x i64> %206) #8, !dbg !1947
  call void @llvm.dbg.value(metadata <2 x i64> %207, metadata !1866, metadata !DIExpression()), !dbg !1867
  %208 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 9, !dbg !1948
  %209 = load <2 x i64>, <2 x i64>* %208, align 16, !dbg !1948
  %210 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %198, <2 x i64> %209) #8, !dbg !1949
  call void @llvm.dbg.value(metadata <2 x i64> %210, metadata !1869, metadata !DIExpression()), !dbg !1867
  %211 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 9, !dbg !1950
  %212 = load <2 x i64>, <2 x i64>* %211, align 16, !dbg !1950
  %213 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %201, <2 x i64> %212) #8, !dbg !1951
  call void @llvm.dbg.value(metadata <2 x i64> %213, metadata !1871, metadata !DIExpression()), !dbg !1867
  %214 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 9, !dbg !1952
  %215 = load <2 x i64>, <2 x i64>* %214, align 16, !dbg !1952
  %216 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %204, <2 x i64> %215) #8, !dbg !1953
  call void @llvm.dbg.value(metadata <2 x i64> %216, metadata !1873, metadata !DIExpression()), !dbg !1867
  %217 = icmp eq i32 %8, 10, !dbg !1954
  br i1 %217, label %218, label %231, !dbg !1956

218:                                              ; preds = %80
  %219 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1957
  %220 = load <2 x i64>, <2 x i64>* %219, align 16, !dbg !1957
  %221 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %207, <2 x i64> %220) #8, !dbg !1959
  call void @llvm.dbg.value(metadata <2 x i64> %221, metadata !1866, metadata !DIExpression()), !dbg !1867
  %222 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1960
  %223 = load <2 x i64>, <2 x i64>* %222, align 16, !dbg !1960
  %224 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %210, <2 x i64> %223) #8, !dbg !1961
  call void @llvm.dbg.value(metadata <2 x i64> %224, metadata !1869, metadata !DIExpression()), !dbg !1867
  %225 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1962
  %226 = load <2 x i64>, <2 x i64>* %225, align 16, !dbg !1962
  %227 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %213, <2 x i64> %226) #8, !dbg !1963
  call void @llvm.dbg.value(metadata <2 x i64> %227, metadata !1871, metadata !DIExpression()), !dbg !1867
  %228 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1964
  %229 = load <2 x i64>, <2 x i64>* %228, align 16, !dbg !1964
  %230 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %216, <2 x i64> %229) #8, !dbg !1965
  call void @llvm.dbg.value(metadata <2 x i64> %230, metadata !1873, metadata !DIExpression()), !dbg !1867
  br label %332, !dbg !1966

231:                                              ; preds = %80
  %232 = icmp eq i32 %8, 12, !dbg !1967
  br i1 %232, label %233, label %270, !dbg !1969

233:                                              ; preds = %231
  %234 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1970
  %235 = load <2 x i64>, <2 x i64>* %234, align 16, !dbg !1970
  %236 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %207, <2 x i64> %235) #8, !dbg !1972
  call void @llvm.dbg.value(metadata <2 x i64> %236, metadata !1866, metadata !DIExpression()), !dbg !1867
  %237 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1973
  %238 = load <2 x i64>, <2 x i64>* %237, align 16, !dbg !1973
  %239 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %210, <2 x i64> %238) #8, !dbg !1974
  call void @llvm.dbg.value(metadata <2 x i64> %239, metadata !1869, metadata !DIExpression()), !dbg !1867
  %240 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1975
  %241 = load <2 x i64>, <2 x i64>* %240, align 16, !dbg !1975
  %242 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %213, <2 x i64> %241) #8, !dbg !1976
  call void @llvm.dbg.value(metadata <2 x i64> %242, metadata !1871, metadata !DIExpression()), !dbg !1867
  %243 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1977
  %244 = load <2 x i64>, <2 x i64>* %243, align 16, !dbg !1977
  %245 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %216, <2 x i64> %244) #8, !dbg !1978
  call void @llvm.dbg.value(metadata <2 x i64> %245, metadata !1873, metadata !DIExpression()), !dbg !1867
  %246 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !1979
  %247 = load <2 x i64>, <2 x i64>* %246, align 16, !dbg !1979
  %248 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %236, <2 x i64> %247) #8, !dbg !1980
  call void @llvm.dbg.value(metadata <2 x i64> %248, metadata !1866, metadata !DIExpression()), !dbg !1867
  %249 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !1981
  %250 = load <2 x i64>, <2 x i64>* %249, align 16, !dbg !1981
  %251 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %239, <2 x i64> %250) #8, !dbg !1982
  call void @llvm.dbg.value(metadata <2 x i64> %251, metadata !1869, metadata !DIExpression()), !dbg !1867
  %252 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !1983
  %253 = load <2 x i64>, <2 x i64>* %252, align 16, !dbg !1983
  %254 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %242, <2 x i64> %253) #8, !dbg !1984
  call void @llvm.dbg.value(metadata <2 x i64> %254, metadata !1871, metadata !DIExpression()), !dbg !1867
  %255 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !1985
  %256 = load <2 x i64>, <2 x i64>* %255, align 16, !dbg !1985
  %257 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %245, <2 x i64> %256) #8, !dbg !1986
  call void @llvm.dbg.value(metadata <2 x i64> %257, metadata !1873, metadata !DIExpression()), !dbg !1867
  %258 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !1987
  %259 = load <2 x i64>, <2 x i64>* %258, align 16, !dbg !1987
  %260 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %248, <2 x i64> %259) #8, !dbg !1988
  call void @llvm.dbg.value(metadata <2 x i64> %260, metadata !1866, metadata !DIExpression()), !dbg !1867
  %261 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !1989
  %262 = load <2 x i64>, <2 x i64>* %261, align 16, !dbg !1989
  %263 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %251, <2 x i64> %262) #8, !dbg !1990
  call void @llvm.dbg.value(metadata <2 x i64> %263, metadata !1869, metadata !DIExpression()), !dbg !1867
  %264 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !1991
  %265 = load <2 x i64>, <2 x i64>* %264, align 16, !dbg !1991
  %266 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %254, <2 x i64> %265) #8, !dbg !1992
  call void @llvm.dbg.value(metadata <2 x i64> %266, metadata !1871, metadata !DIExpression()), !dbg !1867
  %267 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !1993
  %268 = load <2 x i64>, <2 x i64>* %267, align 16, !dbg !1993
  %269 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %257, <2 x i64> %268) #8, !dbg !1994
  call void @llvm.dbg.value(metadata <2 x i64> %269, metadata !1873, metadata !DIExpression()), !dbg !1867
  br label %331, !dbg !1995

270:                                              ; preds = %231
  %271 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1996
  %272 = load <2 x i64>, <2 x i64>* %271, align 16, !dbg !1996
  %273 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %207, <2 x i64> %272) #8, !dbg !1998
  call void @llvm.dbg.value(metadata <2 x i64> %273, metadata !1866, metadata !DIExpression()), !dbg !1867
  %274 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !1999
  %275 = load <2 x i64>, <2 x i64>* %274, align 16, !dbg !1999
  %276 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %210, <2 x i64> %275) #8, !dbg !2000
  call void @llvm.dbg.value(metadata <2 x i64> %276, metadata !1869, metadata !DIExpression()), !dbg !1867
  %277 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !2001
  %278 = load <2 x i64>, <2 x i64>* %277, align 16, !dbg !2001
  %279 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %213, <2 x i64> %278) #8, !dbg !2002
  call void @llvm.dbg.value(metadata <2 x i64> %279, metadata !1871, metadata !DIExpression()), !dbg !1867
  %280 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !2003
  %281 = load <2 x i64>, <2 x i64>* %280, align 16, !dbg !2003
  %282 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %216, <2 x i64> %281) #8, !dbg !2004
  call void @llvm.dbg.value(metadata <2 x i64> %282, metadata !1873, metadata !DIExpression()), !dbg !1867
  %283 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !2005
  %284 = load <2 x i64>, <2 x i64>* %283, align 16, !dbg !2005
  %285 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %273, <2 x i64> %284) #8, !dbg !2006
  call void @llvm.dbg.value(metadata <2 x i64> %285, metadata !1866, metadata !DIExpression()), !dbg !1867
  %286 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !2007
  %287 = load <2 x i64>, <2 x i64>* %286, align 16, !dbg !2007
  %288 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %276, <2 x i64> %287) #8, !dbg !2008
  call void @llvm.dbg.value(metadata <2 x i64> %288, metadata !1869, metadata !DIExpression()), !dbg !1867
  %289 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !2009
  %290 = load <2 x i64>, <2 x i64>* %289, align 16, !dbg !2009
  %291 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %279, <2 x i64> %290) #8, !dbg !2010
  call void @llvm.dbg.value(metadata <2 x i64> %291, metadata !1871, metadata !DIExpression()), !dbg !1867
  %292 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !2011
  %293 = load <2 x i64>, <2 x i64>* %292, align 16, !dbg !2011
  %294 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %282, <2 x i64> %293) #8, !dbg !2012
  call void @llvm.dbg.value(metadata <2 x i64> %294, metadata !1873, metadata !DIExpression()), !dbg !1867
  %295 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !2013
  %296 = load <2 x i64>, <2 x i64>* %295, align 16, !dbg !2013
  %297 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %285, <2 x i64> %296) #8, !dbg !2014
  call void @llvm.dbg.value(metadata <2 x i64> %297, metadata !1866, metadata !DIExpression()), !dbg !1867
  %298 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !2015
  %299 = load <2 x i64>, <2 x i64>* %298, align 16, !dbg !2015
  %300 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %288, <2 x i64> %299) #8, !dbg !2016
  call void @llvm.dbg.value(metadata <2 x i64> %300, metadata !1869, metadata !DIExpression()), !dbg !1867
  %301 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !2017
  %302 = load <2 x i64>, <2 x i64>* %301, align 16, !dbg !2017
  %303 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %291, <2 x i64> %302) #8, !dbg !2018
  call void @llvm.dbg.value(metadata <2 x i64> %303, metadata !1871, metadata !DIExpression()), !dbg !1867
  %304 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !2019
  %305 = load <2 x i64>, <2 x i64>* %304, align 16, !dbg !2019
  %306 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %294, <2 x i64> %305) #8, !dbg !2020
  call void @llvm.dbg.value(metadata <2 x i64> %306, metadata !1873, metadata !DIExpression()), !dbg !1867
  %307 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 13, !dbg !2021
  %308 = load <2 x i64>, <2 x i64>* %307, align 16, !dbg !2021
  %309 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %297, <2 x i64> %308) #8, !dbg !2022
  call void @llvm.dbg.value(metadata <2 x i64> %309, metadata !1866, metadata !DIExpression()), !dbg !1867
  %310 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 13, !dbg !2023
  %311 = load <2 x i64>, <2 x i64>* %310, align 16, !dbg !2023
  %312 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %300, <2 x i64> %311) #8, !dbg !2024
  call void @llvm.dbg.value(metadata <2 x i64> %312, metadata !1869, metadata !DIExpression()), !dbg !1867
  %313 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 13, !dbg !2025
  %314 = load <2 x i64>, <2 x i64>* %313, align 16, !dbg !2025
  %315 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %303, <2 x i64> %314) #8, !dbg !2026
  call void @llvm.dbg.value(metadata <2 x i64> %315, metadata !1871, metadata !DIExpression()), !dbg !1867
  %316 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 13, !dbg !2027
  %317 = load <2 x i64>, <2 x i64>* %316, align 16, !dbg !2027
  %318 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %306, <2 x i64> %317) #8, !dbg !2028
  call void @llvm.dbg.value(metadata <2 x i64> %318, metadata !1873, metadata !DIExpression()), !dbg !1867
  %319 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 14, !dbg !2029
  %320 = load <2 x i64>, <2 x i64>* %319, align 16, !dbg !2029
  %321 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %309, <2 x i64> %320) #8, !dbg !2030
  call void @llvm.dbg.value(metadata <2 x i64> %321, metadata !1866, metadata !DIExpression()), !dbg !1867
  %322 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 14, !dbg !2031
  %323 = load <2 x i64>, <2 x i64>* %322, align 16, !dbg !2031
  %324 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %312, <2 x i64> %323) #8, !dbg !2032
  call void @llvm.dbg.value(metadata <2 x i64> %324, metadata !1869, metadata !DIExpression()), !dbg !1867
  %325 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 14, !dbg !2033
  %326 = load <2 x i64>, <2 x i64>* %325, align 16, !dbg !2033
  %327 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %315, <2 x i64> %326) #8, !dbg !2034
  call void @llvm.dbg.value(metadata <2 x i64> %327, metadata !1871, metadata !DIExpression()), !dbg !1867
  %328 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 14, !dbg !2035
  %329 = load <2 x i64>, <2 x i64>* %328, align 16, !dbg !2035
  %330 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %318, <2 x i64> %329) #8, !dbg !2036
  call void @llvm.dbg.value(metadata <2 x i64> %330, metadata !1873, metadata !DIExpression()), !dbg !1867
  br label %331

331:                                              ; preds = %270, %233
  %.05 = phi <2 x i64> [ %260, %233 ], [ %321, %270 ], !dbg !2037
  %.03 = phi <2 x i64> [ %263, %233 ], [ %324, %270 ], !dbg !2037
  %.01 = phi <2 x i64> [ %266, %233 ], [ %327, %270 ], !dbg !2037
  %.0 = phi <2 x i64> [ %269, %233 ], [ %330, %270 ], !dbg !2037
  call void @llvm.dbg.value(metadata <2 x i64> %.0, metadata !1873, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata <2 x i64> %.01, metadata !1871, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata <2 x i64> %.03, metadata !1869, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata <2 x i64> %.05, metadata !1866, metadata !DIExpression()), !dbg !1867
  br label %332

332:                                              ; preds = %331, %218
  %.16 = phi <2 x i64> [ %221, %218 ], [ %.05, %331 ], !dbg !2038
  %.14 = phi <2 x i64> [ %224, %218 ], [ %.03, %331 ], !dbg !2038
  %.12 = phi <2 x i64> [ %227, %218 ], [ %.01, %331 ], !dbg !2038
  %.1 = phi <2 x i64> [ %230, %218 ], [ %.0, %331 ], !dbg !2038
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !1873, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata <2 x i64> %.12, metadata !1871, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata <2 x i64> %.14, metadata !1869, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata <2 x i64> %.16, metadata !1866, metadata !DIExpression()), !dbg !1867
  %333 = icmp uge i64 %.015, 64, !dbg !2039
  br i1 %333, label %334, label %377, !dbg !2041

334:                                              ; preds = %332
  %335 = getelementptr inbounds i8, i8* %.014, i64 0, !dbg !2042
  %336 = bitcast i8* %335 to <2 x i64>*, !dbg !2044
  %337 = bitcast <2 x i64>* %336 to %struct.__loadu_si128*, !dbg !2045
  %338 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %337, i32 0, i32 0, !dbg !2045
  %339 = load <2 x i64>, <2 x i64>* %338, align 1, !dbg !2045
  %340 = xor <2 x i64> %.16, %339, !dbg !2046
  call void @llvm.dbg.value(metadata <2 x i64> %340, metadata !1866, metadata !DIExpression()), !dbg !1867
  %341 = getelementptr inbounds i8, i8* %.014, i64 16, !dbg !2047
  %342 = bitcast i8* %341 to <2 x i64>*, !dbg !2048
  %343 = bitcast <2 x i64>* %342 to %struct.__loadu_si128*, !dbg !2049
  %344 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %343, i32 0, i32 0, !dbg !2049
  %345 = load <2 x i64>, <2 x i64>* %344, align 1, !dbg !2049
  %346 = xor <2 x i64> %.14, %345, !dbg !2050
  call void @llvm.dbg.value(metadata <2 x i64> %346, metadata !1869, metadata !DIExpression()), !dbg !1867
  %347 = getelementptr inbounds i8, i8* %.014, i64 32, !dbg !2051
  %348 = bitcast i8* %347 to <2 x i64>*, !dbg !2052
  %349 = bitcast <2 x i64>* %348 to %struct.__loadu_si128*, !dbg !2053
  %350 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %349, i32 0, i32 0, !dbg !2053
  %351 = load <2 x i64>, <2 x i64>* %350, align 1, !dbg !2053
  %352 = xor <2 x i64> %.12, %351, !dbg !2054
  call void @llvm.dbg.value(metadata <2 x i64> %352, metadata !1871, metadata !DIExpression()), !dbg !1867
  %353 = getelementptr inbounds i8, i8* %.014, i64 48, !dbg !2055
  %354 = bitcast i8* %353 to <2 x i64>*, !dbg !2056
  %355 = bitcast <2 x i64>* %354 to %struct.__loadu_si128*, !dbg !2057
  %356 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %355, i32 0, i32 0, !dbg !2057
  %357 = load <2 x i64>, <2 x i64>* %356, align 1, !dbg !2057
  %358 = xor <2 x i64> %.1, %357, !dbg !2058
  call void @llvm.dbg.value(metadata <2 x i64> %358, metadata !1873, metadata !DIExpression()), !dbg !1867
  %359 = getelementptr inbounds i8, i8* %.014, i64 0, !dbg !2059
  %360 = bitcast i8* %359 to <2 x i64>*, !dbg !2060
  %361 = bitcast <2 x i64>* %360 to %struct.__loadu_si128*, !dbg !2061
  %362 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %361, i32 0, i32 0, !dbg !2061
  store <2 x i64> %340, <2 x i64>* %362, align 1, !dbg !2061
  %363 = getelementptr inbounds i8, i8* %.014, i64 16, !dbg !2062
  %364 = bitcast i8* %363 to <2 x i64>*, !dbg !2063
  %365 = bitcast <2 x i64>* %364 to %struct.__loadu_si128*, !dbg !2064
  %366 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %365, i32 0, i32 0, !dbg !2064
  store <2 x i64> %346, <2 x i64>* %366, align 1, !dbg !2064
  %367 = getelementptr inbounds i8, i8* %.014, i64 32, !dbg !2065
  %368 = bitcast i8* %367 to <2 x i64>*, !dbg !2066
  %369 = bitcast <2 x i64>* %368 to %struct.__loadu_si128*, !dbg !2067
  %370 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %369, i32 0, i32 0, !dbg !2067
  store <2 x i64> %352, <2 x i64>* %370, align 1, !dbg !2067
  %371 = getelementptr inbounds i8, i8* %.014, i64 48, !dbg !2068
  %372 = bitcast i8* %371 to <2 x i64>*, !dbg !2069
  %373 = bitcast <2 x i64>* %372 to %struct.__loadu_si128*, !dbg !2070
  %374 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %373, i32 0, i32 0, !dbg !2070
  store <2 x i64> %358, <2 x i64>* %374, align 1, !dbg !2070
  %375 = getelementptr inbounds i8, i8* %.014, i64 64, !dbg !2071
  call void @llvm.dbg.value(metadata i8* %375, metadata !1812, metadata !DIExpression()), !dbg !1806
  %376 = sub i64 %.015, 64, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %376, metadata !1809, metadata !DIExpression()), !dbg !1806
  br label %419, !dbg !2073

377:                                              ; preds = %332
  call void @llvm.dbg.declare(metadata [64 x i8]* %6, metadata !2074, metadata !DIExpression()), !dbg !2076
  %378 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !2077
  %379 = getelementptr inbounds i8, i8* %378, i64 0, !dbg !2078
  %380 = bitcast i8* %379 to <2 x i64>*, !dbg !2079
  %381 = bitcast <2 x i64>* %380 to %struct.__loadu_si128*, !dbg !2080
  %382 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %381, i32 0, i32 0, !dbg !2080
  store <2 x i64> %.16, <2 x i64>* %382, align 1, !dbg !2080
  %383 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !2081
  %384 = getelementptr inbounds i8, i8* %383, i64 16, !dbg !2082
  %385 = bitcast i8* %384 to <2 x i64>*, !dbg !2083
  %386 = bitcast <2 x i64>* %385 to %struct.__loadu_si128*, !dbg !2084
  %387 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %386, i32 0, i32 0, !dbg !2084
  store <2 x i64> %.14, <2 x i64>* %387, align 1, !dbg !2084
  %388 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !2085
  %389 = getelementptr inbounds i8, i8* %388, i64 32, !dbg !2086
  %390 = bitcast i8* %389 to <2 x i64>*, !dbg !2087
  %391 = bitcast <2 x i64>* %390 to %struct.__loadu_si128*, !dbg !2088
  %392 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %391, i32 0, i32 0, !dbg !2088
  store <2 x i64> %.12, <2 x i64>* %392, align 1, !dbg !2088
  %393 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !2089
  %394 = getelementptr inbounds i8, i8* %393, i64 48, !dbg !2090
  %395 = bitcast i8* %394 to <2 x i64>*, !dbg !2091
  %396 = bitcast <2 x i64>* %395 to %struct.__loadu_si128*, !dbg !2092
  %397 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %396, i32 0, i32 0, !dbg !2092
  store <2 x i64> %.1, <2 x i64>* %397, align 1, !dbg !2092
  call void @llvm.dbg.value(metadata i32 0, metadata !1815, metadata !DIExpression()), !dbg !1806
  br label %398, !dbg !2093

398:                                              ; preds = %412, %377
  %.18 = phi i32 [ 0, %377 ], [ %413, %412 ], !dbg !2095
  call void @llvm.dbg.value(metadata i32 %.18, metadata !1815, metadata !DIExpression()), !dbg !1806
  %399 = zext i32 %.18 to i64, !dbg !2096
  %400 = icmp ult i64 %399, %.015, !dbg !2098
  br i1 %400, label %401, label %414, !dbg !2099

401:                                              ; preds = %398
  %402 = zext i32 %.18 to i64, !dbg !2100
  %403 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %402, !dbg !2100
  %404 = load i8, i8* %403, align 1, !dbg !2100
  %405 = zext i8 %404 to i32, !dbg !2100
  %406 = zext i32 %.18 to i64, !dbg !2102
  %407 = getelementptr inbounds i8, i8* %.014, i64 %406, !dbg !2102
  %408 = load i8, i8* %407, align 1, !dbg !2103
  %409 = zext i8 %408 to i32, !dbg !2103
  %410 = xor i32 %409, %405, !dbg !2103
  %411 = trunc i32 %410 to i8, !dbg !2103
  store i8 %411, i8* %407, align 1, !dbg !2103
  br label %412, !dbg !2104

412:                                              ; preds = %401
  %413 = add i32 %.18, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %413, metadata !1815, metadata !DIExpression()), !dbg !1806
  br label %398, !dbg !2106, !llvm.loop !2107

414:                                              ; preds = %398
  switch i64 %.015, label %418 [
    i64 16, label %415
    i64 32, label %416
    i64 48, label %417
  ], !dbg !2109

415:                                              ; preds = %414
  call void @llvm.dbg.value(metadata <2 x i64> %.011, metadata !1849, metadata !DIExpression()), !dbg !1806
  br label %418, !dbg !2110

416:                                              ; preds = %414
  call void @llvm.dbg.value(metadata <2 x i64> %.010, metadata !1849, metadata !DIExpression()), !dbg !1806
  br label %418, !dbg !2112

417:                                              ; preds = %414
  call void @llvm.dbg.value(metadata <2 x i64> %.09, metadata !1849, metadata !DIExpression()), !dbg !1806
  br label %418, !dbg !2113

418:                                              ; preds = %417, %416, %415, %414
  %.113 = phi <2 x i64> [ %.012, %414 ], [ %.09, %417 ], [ %.010, %416 ], [ %.011, %415 ], !dbg !1806
  call void @llvm.dbg.value(metadata <2 x i64> %.113, metadata !1849, metadata !DIExpression()), !dbg !1806
  br label %452, !dbg !2114

419:                                              ; preds = %334
  %420 = add <2 x i64> %.012, %47, !dbg !2115
  call void @llvm.dbg.value(metadata <2 x i64> %420, metadata !1849, metadata !DIExpression()), !dbg !1806
  %421 = add <2 x i64> %.011, %47, !dbg !2116
  call void @llvm.dbg.value(metadata <2 x i64> %421, metadata !1851, metadata !DIExpression()), !dbg !1806
  %422 = add <2 x i64> %.010, %47, !dbg !2117
  call void @llvm.dbg.value(metadata <2 x i64> %422, metadata !1855, metadata !DIExpression()), !dbg !1806
  %423 = add <2 x i64> %.09, %47, !dbg !2118
  call void @llvm.dbg.value(metadata <2 x i64> %423, metadata !1859, metadata !DIExpression()), !dbg !1806
  %424 = and <2 x i64> %420, %48, !dbg !2119
  %425 = icmp eq <2 x i64> %424, zeroinitializer, !dbg !2119
  %426 = sext <2 x i1> %425 to <2 x i64>, !dbg !2119
  %427 = bitcast <2 x i64> %426 to <16 x i8>, !dbg !2119
  %428 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %427, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !2119
  %429 = bitcast <16 x i8> %428 to <2 x i64>, !dbg !2119
  %430 = sub <2 x i64> %420, %429, !dbg !2120
  call void @llvm.dbg.value(metadata <2 x i64> %430, metadata !1849, metadata !DIExpression()), !dbg !1806
  %431 = and <2 x i64> %421, %48, !dbg !2121
  %432 = icmp eq <2 x i64> %431, zeroinitializer, !dbg !2121
  %433 = sext <2 x i1> %432 to <2 x i64>, !dbg !2121
  %434 = bitcast <2 x i64> %433 to <16 x i8>, !dbg !2121
  %435 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %434, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !2121
  %436 = bitcast <16 x i8> %435 to <2 x i64>, !dbg !2121
  %437 = sub <2 x i64> %421, %436, !dbg !2122
  call void @llvm.dbg.value(metadata <2 x i64> %437, metadata !1851, metadata !DIExpression()), !dbg !1806
  %438 = and <2 x i64> %422, %48, !dbg !2123
  %439 = icmp eq <2 x i64> %438, zeroinitializer, !dbg !2123
  %440 = sext <2 x i1> %439 to <2 x i64>, !dbg !2123
  %441 = bitcast <2 x i64> %440 to <16 x i8>, !dbg !2123
  %442 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %441, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !2123
  %443 = bitcast <16 x i8> %442 to <2 x i64>, !dbg !2123
  %444 = sub <2 x i64> %422, %443, !dbg !2124
  call void @llvm.dbg.value(metadata <2 x i64> %444, metadata !1855, metadata !DIExpression()), !dbg !1806
  %445 = and <2 x i64> %423, %48, !dbg !2125
  %446 = icmp eq <2 x i64> %445, zeroinitializer, !dbg !2125
  %447 = sext <2 x i1> %446 to <2 x i64>, !dbg !2125
  %448 = bitcast <2 x i64> %447 to <16 x i8>, !dbg !2125
  %449 = shufflevector <16 x i8> zeroinitializer, <16 x i8> %448, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>, !dbg !2125
  %450 = bitcast <16 x i8> %449 to <2 x i64>, !dbg !2125
  %451 = sub <2 x i64> %423, %450, !dbg !2126
  call void @llvm.dbg.value(metadata <2 x i64> %451, metadata !1859, metadata !DIExpression()), !dbg !1806
  br label %78, !dbg !1862, !llvm.loop !2127

452:                                              ; preds = %418, %78
  %.2 = phi <2 x i64> [ %.113, %418 ], [ %.012, %78 ], !dbg !2129
  call void @llvm.dbg.value(metadata <2 x i64> %.2, metadata !1849, metadata !DIExpression()), !dbg !1806
  %453 = bitcast i8* %1 to <2 x i64>*, !dbg !2130
  %454 = bitcast <2 x i64> %.2 to <16 x i8>, !dbg !2131
  %455 = bitcast <2 x i64> %43 to <16 x i8>, !dbg !2131
  %456 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %454, <16 x i8> %455) #8, !dbg !2131
  %457 = bitcast <16 x i8> %456 to <2 x i64>, !dbg !2131
  %458 = bitcast <2 x i64>* %453 to %struct.__loadu_si128*, !dbg !2132
  %459 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %458, i32 0, i32 0, !dbg !2132
  store <2 x i64> %457, <2 x i64>* %459, align 1, !dbg !2132
  ret void, !dbg !2133
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_x86ni_ctrcbc_mac(%struct.br_aes_x86ni_ctrcbc_keys* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #6 !dbg !2134 {
  %5 = alloca [15 x <2 x i64>], align 16
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_ctrcbc_keys* %0, metadata !2137, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8* %1, metadata !2139, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8* %2, metadata !2140, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i64 %3, metadata !2141, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.declare(metadata [15 x <2 x i64>]* %5, metadata !2142, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* %2, metadata !2144, metadata !DIExpression()), !dbg !2138
  %6 = bitcast i8* %1 to <2 x i64>*, !dbg !2145
  %7 = bitcast <2 x i64>* %6 to %struct.__loadu_si128*, !dbg !2146
  %8 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %7, i32 0, i32 0, !dbg !2146
  %9 = load <2 x i64>, <2 x i64>* %8, align 1, !dbg !2146
  call void @llvm.dbg.value(metadata <2 x i64> %9, metadata !2147, metadata !DIExpression()), !dbg !2138
  %10 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 2, !dbg !2148
  %11 = load i32, i32* %10, align 8, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %11, metadata !2149, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 0, metadata !2150, metadata !DIExpression()), !dbg !2138
  br label %12, !dbg !2151

12:                                               ; preds = %27, %4
  %.01 = phi i32 [ 0, %4 ], [ %28, %27 ], !dbg !2153
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2150, metadata !DIExpression()), !dbg !2138
  %13 = icmp ule i32 %.01, %11, !dbg !2154
  br i1 %13, label %14, label %29, !dbg !2156

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.br_aes_x86ni_ctrcbc_keys, %struct.br_aes_x86ni_ctrcbc_keys* %0, i32 0, i32 1, !dbg !2157
  %16 = bitcast %union.anon* %15 to [240 x i8]*, !dbg !2159
  %17 = getelementptr inbounds [240 x i8], [240 x i8]* %16, i64 0, i64 0, !dbg !2160
  %18 = shl i32 %.01, 4, !dbg !2161
  %19 = zext i32 %18 to i64, !dbg !2162
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !2162
  %21 = bitcast i8* %20 to <2 x i64>*, !dbg !2163
  %22 = bitcast <2 x i64>* %21 to %struct.__loadu_si128*, !dbg !2164
  %23 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %22, i32 0, i32 0, !dbg !2164
  %24 = load <2 x i64>, <2 x i64>* %23, align 1, !dbg !2164
  %25 = zext i32 %.01 to i64, !dbg !2165
  %26 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 %25, !dbg !2165
  store <2 x i64> %24, <2 x i64>* %26, align 16, !dbg !2166
  br label %27, !dbg !2167

27:                                               ; preds = %14
  %28 = add i32 %.01, 1, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %28, metadata !2150, metadata !DIExpression()), !dbg !2138
  br label %12, !dbg !2169, !llvm.loop !2170

29:                                               ; preds = %12
  br label %30, !dbg !2172

30:                                               ; preds = %102, %29
  %.04 = phi i64 [ %3, %29 ], [ %104, %102 ]
  %.03 = phi i8* [ %2, %29 ], [ %103, %102 ], !dbg !2138
  %.02 = phi <2 x i64> [ %9, %29 ], [ %.1, %102 ], !dbg !2138
  call void @llvm.dbg.value(metadata <2 x i64> %.02, metadata !2147, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8* %.03, metadata !2144, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i64 %.04, metadata !2141, metadata !DIExpression()), !dbg !2138
  %31 = icmp ugt i64 %.04, 0, !dbg !2173
  br i1 %31, label %32, label %105, !dbg !2172

32:                                               ; preds = %30
  %33 = bitcast i8* %.03 to <2 x i64>*, !dbg !2174
  %34 = bitcast <2 x i64>* %33 to %struct.__loadu_si128*, !dbg !2176
  %35 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %34, i32 0, i32 0, !dbg !2176
  %36 = load <2 x i64>, <2 x i64>* %35, align 1, !dbg !2176
  %37 = xor <2 x i64> %36, %.02, !dbg !2177
  call void @llvm.dbg.value(metadata <2 x i64> %37, metadata !2178, metadata !DIExpression()), !dbg !2179
  %38 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 0, !dbg !2180
  %39 = load <2 x i64>, <2 x i64>* %38, align 16, !dbg !2180
  %40 = xor <2 x i64> %37, %39, !dbg !2181
  call void @llvm.dbg.value(metadata <2 x i64> %40, metadata !2178, metadata !DIExpression()), !dbg !2179
  %41 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 1, !dbg !2182
  %42 = load <2 x i64>, <2 x i64>* %41, align 16, !dbg !2182
  %43 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %40, <2 x i64> %42) #8, !dbg !2183
  call void @llvm.dbg.value(metadata <2 x i64> %43, metadata !2178, metadata !DIExpression()), !dbg !2179
  %44 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 2, !dbg !2184
  %45 = load <2 x i64>, <2 x i64>* %44, align 16, !dbg !2184
  %46 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %43, <2 x i64> %45) #8, !dbg !2185
  call void @llvm.dbg.value(metadata <2 x i64> %46, metadata !2178, metadata !DIExpression()), !dbg !2179
  %47 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 3, !dbg !2186
  %48 = load <2 x i64>, <2 x i64>* %47, align 16, !dbg !2186
  %49 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %46, <2 x i64> %48) #8, !dbg !2187
  call void @llvm.dbg.value(metadata <2 x i64> %49, metadata !2178, metadata !DIExpression()), !dbg !2179
  %50 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 4, !dbg !2188
  %51 = load <2 x i64>, <2 x i64>* %50, align 16, !dbg !2188
  %52 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %49, <2 x i64> %51) #8, !dbg !2189
  call void @llvm.dbg.value(metadata <2 x i64> %52, metadata !2178, metadata !DIExpression()), !dbg !2179
  %53 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 5, !dbg !2190
  %54 = load <2 x i64>, <2 x i64>* %53, align 16, !dbg !2190
  %55 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %52, <2 x i64> %54) #8, !dbg !2191
  call void @llvm.dbg.value(metadata <2 x i64> %55, metadata !2178, metadata !DIExpression()), !dbg !2179
  %56 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 6, !dbg !2192
  %57 = load <2 x i64>, <2 x i64>* %56, align 16, !dbg !2192
  %58 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %55, <2 x i64> %57) #8, !dbg !2193
  call void @llvm.dbg.value(metadata <2 x i64> %58, metadata !2178, metadata !DIExpression()), !dbg !2179
  %59 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 7, !dbg !2194
  %60 = load <2 x i64>, <2 x i64>* %59, align 16, !dbg !2194
  %61 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %58, <2 x i64> %60) #8, !dbg !2195
  call void @llvm.dbg.value(metadata <2 x i64> %61, metadata !2178, metadata !DIExpression()), !dbg !2179
  %62 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 8, !dbg !2196
  %63 = load <2 x i64>, <2 x i64>* %62, align 16, !dbg !2196
  %64 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %61, <2 x i64> %63) #8, !dbg !2197
  call void @llvm.dbg.value(metadata <2 x i64> %64, metadata !2178, metadata !DIExpression()), !dbg !2179
  %65 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 9, !dbg !2198
  %66 = load <2 x i64>, <2 x i64>* %65, align 16, !dbg !2198
  %67 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %64, <2 x i64> %66) #8, !dbg !2199
  call void @llvm.dbg.value(metadata <2 x i64> %67, metadata !2178, metadata !DIExpression()), !dbg !2179
  %68 = icmp eq i32 %11, 10, !dbg !2200
  br i1 %68, label %69, label %73, !dbg !2202

69:                                               ; preds = %32
  %70 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !2203
  %71 = load <2 x i64>, <2 x i64>* %70, align 16, !dbg !2203
  %72 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %67, <2 x i64> %71) #8, !dbg !2205
  call void @llvm.dbg.value(metadata <2 x i64> %72, metadata !2178, metadata !DIExpression()), !dbg !2179
  br label %102, !dbg !2206

73:                                               ; preds = %32
  %74 = icmp eq i32 %11, 12, !dbg !2207
  br i1 %74, label %75, label %85, !dbg !2209

75:                                               ; preds = %73
  %76 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !2210
  %77 = load <2 x i64>, <2 x i64>* %76, align 16, !dbg !2210
  %78 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %67, <2 x i64> %77) #8, !dbg !2212
  call void @llvm.dbg.value(metadata <2 x i64> %78, metadata !2178, metadata !DIExpression()), !dbg !2179
  %79 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !2213
  %80 = load <2 x i64>, <2 x i64>* %79, align 16, !dbg !2213
  %81 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %78, <2 x i64> %80) #8, !dbg !2214
  call void @llvm.dbg.value(metadata <2 x i64> %81, metadata !2178, metadata !DIExpression()), !dbg !2179
  %82 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !2215
  %83 = load <2 x i64>, <2 x i64>* %82, align 16, !dbg !2215
  %84 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %81, <2 x i64> %83) #8, !dbg !2216
  call void @llvm.dbg.value(metadata <2 x i64> %84, metadata !2178, metadata !DIExpression()), !dbg !2179
  br label %101, !dbg !2217

85:                                               ; preds = %73
  %86 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 10, !dbg !2218
  %87 = load <2 x i64>, <2 x i64>* %86, align 16, !dbg !2218
  %88 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %67, <2 x i64> %87) #8, !dbg !2220
  call void @llvm.dbg.value(metadata <2 x i64> %88, metadata !2178, metadata !DIExpression()), !dbg !2179
  %89 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 11, !dbg !2221
  %90 = load <2 x i64>, <2 x i64>* %89, align 16, !dbg !2221
  %91 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %88, <2 x i64> %90) #8, !dbg !2222
  call void @llvm.dbg.value(metadata <2 x i64> %91, metadata !2178, metadata !DIExpression()), !dbg !2179
  %92 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 12, !dbg !2223
  %93 = load <2 x i64>, <2 x i64>* %92, align 16, !dbg !2223
  %94 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %91, <2 x i64> %93) #8, !dbg !2224
  call void @llvm.dbg.value(metadata <2 x i64> %94, metadata !2178, metadata !DIExpression()), !dbg !2179
  %95 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 13, !dbg !2225
  %96 = load <2 x i64>, <2 x i64>* %95, align 16, !dbg !2225
  %97 = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %94, <2 x i64> %96) #8, !dbg !2226
  call void @llvm.dbg.value(metadata <2 x i64> %97, metadata !2178, metadata !DIExpression()), !dbg !2179
  %98 = getelementptr inbounds [15 x <2 x i64>], [15 x <2 x i64>]* %5, i64 0, i64 14, !dbg !2227
  %99 = load <2 x i64>, <2 x i64>* %98, align 16, !dbg !2227
  %100 = call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %97, <2 x i64> %99) #8, !dbg !2228
  call void @llvm.dbg.value(metadata <2 x i64> %100, metadata !2178, metadata !DIExpression()), !dbg !2179
  br label %101

101:                                              ; preds = %85, %75
  %.0 = phi <2 x i64> [ %84, %75 ], [ %100, %85 ], !dbg !2229
  call void @llvm.dbg.value(metadata <2 x i64> %.0, metadata !2178, metadata !DIExpression()), !dbg !2179
  br label %102

102:                                              ; preds = %101, %69
  %.1 = phi <2 x i64> [ %72, %69 ], [ %.0, %101 ], !dbg !2230
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !2178, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata <2 x i64> %.1, metadata !2147, metadata !DIExpression()), !dbg !2138
  %103 = getelementptr inbounds i8, i8* %.03, i64 16, !dbg !2231
  call void @llvm.dbg.value(metadata i8* %103, metadata !2144, metadata !DIExpression()), !dbg !2138
  %104 = sub i64 %.04, 16, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %104, metadata !2141, metadata !DIExpression()), !dbg !2138
  br label %30, !dbg !2172, !llvm.loop !2233

105:                                              ; preds = %30
  %106 = bitcast i8* %1 to <2 x i64>*, !dbg !2235
  %107 = bitcast <2 x i64>* %106 to %struct.__loadu_si128*, !dbg !2236
  %108 = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %107, i32 0, i32 0, !dbg !2236
  store <2 x i64> %.02, <2 x i64>* %108, align 1, !dbg !2236
  ret void, !dbg !2237
}

; Function Attrs: nounwind readnone
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.br_block_ctrcbc_class_* @br_aes_x86ni_ctrcbc_get_vtable() #0 !dbg !2238 {
  %1 = call i32 @br_aes_x86ni_supported(), !dbg !2241
  %2 = icmp ne i32 %1, 0, !dbg !2241
  %3 = zext i1 %2 to i64, !dbg !2241
  %4 = select i1 %2, %struct.br_block_ctrcbc_class_* @br_aes_x86ni_ctrcbc_vtable, %struct.br_block_ctrcbc_class_* null, !dbg !2241
  ret %struct.br_block_ctrcbc_class_* %4, !dbg !2242
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cbc_enc_wrapper(%struct.br_aes_x86ni_cbcenc_keys* noalias %0, i8* noalias %1, i8* noalias %2, i64 %3) #0 !dbg !2243 {
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_cbcenc_keys* %0, metadata !2276, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %1, metadata !2278, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %2, metadata !2279, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %3, metadata !2280, metadata !DIExpression()), !dbg !2277
  %5 = call %struct.smack_value* (%struct.br_aes_x86ni_cbcenc_keys*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (%struct.br_aes_x86ni_cbcenc_keys*, ...)*)(%struct.br_aes_x86ni_cbcenc_keys* %0), !dbg !2281
  call void @public_in(%struct.smack_value* %5), !dbg !2282
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !2283
  call void @public_in(%struct.smack_value* %6), !dbg !2284
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !2285
  call void @public_in(%struct.smack_value* %7), !dbg !2286
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %3), !dbg !2287
  call void @public_in(%struct.smack_value* %8), !dbg !2288
  %9 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 32), !dbg !2289
  call void @public_in(%struct.smack_value* %9), !dbg !2290
  %10 = call %struct.smack_value* @__SMACK_values(i8* %1, i32 32), !dbg !2291
  call void @public_in(%struct.smack_value* %10), !dbg !2292
  call void @br_aes_x86ni_cbcenc_run(%struct.br_aes_x86ni_cbcenc_keys* %0, i8* %1, i8* %2, i64 %3), !dbg !2293
  ret void, !dbg !2294
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #7

declare dso_local void @public_in(%struct.smack_value*) #7

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @cbc_enc_wrapper_t() #0 !dbg !2295 {
  %1 = call %struct.br_aes_x86ni_cbcenc_keys* (...) @getctx(), !dbg !2298
  call void @llvm.dbg.value(metadata %struct.br_aes_x86ni_cbcenc_keys* %1, metadata !2299, metadata !DIExpression()), !dbg !2300
  %2 = call i8* (...) @getiv(), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %2, metadata !2302, metadata !DIExpression()), !dbg !2300
  %3 = call i8* (...) @getdata(), !dbg !2303
  call void @llvm.dbg.value(metadata i8* %3, metadata !2304, metadata !DIExpression()), !dbg !2300
  %4 = call i64 (...) @getlen(), !dbg !2305
  call void @llvm.dbg.value(metadata i64 %4, metadata !2306, metadata !DIExpression()), !dbg !2300
  call void @br_aes_x86ni_cbcenc_run(%struct.br_aes_x86ni_cbcenc_keys* %1, i8* %2, i8* %3, i64 %4), !dbg !2307
  ret void, !dbg !2308
}

declare dso_local %struct.br_aes_x86ni_cbcenc_keys* @getctx(...) #7

declare dso_local i8* @getiv(...) #7

declare dso_local i8* @getdata(...) #7

declare dso_local i64 @getlen(...) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nounwind readnone }
attributes #6 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!180, !2, !56, !90, !134, !196}
!llvm.ident = !{!198, !198, !198, !198, !198, !198}
!llvm.module.flags = !{!199, !200, !201}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "br_aes_x86ni_cbcdec_vtable", scope: !2, file: !3, line: 204, type: !28, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/aes_x86ni_cbcdec.c", directory: "/home/luwei/bech/BearSSL/aes_x86ni")
!4 = !{}
!5 = !{!6, !7, !18, !19, !22, !23}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !10, line: 3550, size: 128, elements: !11)
!10 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/emmintrin.h", directory: "")
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !9, file: !10, line: 3551, baseType: !13, size: 128, align: 8)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i_u", file: !10, line: 19, baseType: !14, align: 8)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, flags: DIFlagVector, elements: !16)
!15 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DISubrange(count: 2)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i", file: !10, line: 16, baseType: !14, align: 128)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2du", file: !10, line: 28, baseType: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, flags: DIFlagVector, elements: !16)
!21 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2di", file: !10, line: 23, baseType: !14)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_si128", file: !10, line: 4013, size: 128, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !24, file: !10, line: 4014, baseType: !13, size: 128, align: 8)
!27 = !{!0}
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcdec_class", file: !30, line: 449, baseType: !31)
!30 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech/BearSSL/aes_x86ni")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcdec_class_", file: !30, line: 450, size: 256, elements: !32)
!32 = !{!33, !37, !39, !40, !48}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !31, file: !30, line: 455, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !31, file: !30, line: 460, baseType: !38, size: 32, offset: 64)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !31, file: !30, line: 466, baseType: !38, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !31, file: !30, line: 479, baseType: !41, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !46, !34}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !31, file: !30, line: 495, baseType: !49, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !6, !6, !34}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "br_aes_x86ni_cbcenc_vtable", scope: !56, file: !57, line: 103, type: !69, isLocal: false, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !58, globals: !68, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../BearSSL/src/symcipher/aes_x86ni_cbcenc.c", directory: "/home/luwei/bech/BearSSL/aes_x86ni")
!58 = !{!6, !59, !18, !19, !22, !64}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !10, line: 3550, size: 128, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !61, file: !10, line: 3551, baseType: !13, size: 128, align: 8)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_si128", file: !10, line: 4013, size: 128, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !65, file: !10, line: 4014, baseType: !13, size: 128, align: 8)
!68 = !{!54}
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcenc_class", file: !30, line: 393, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcenc_class_", file: !30, line: 394, size: 256, elements: !72)
!72 = !{!73, !74, !75, !76, !82}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !71, file: !30, line: 399, baseType: !34, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !71, file: !30, line: 404, baseType: !38, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !71, file: !30, line: 410, baseType: !38, size: 32, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !71, file: !30, line: 423, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80, !46, !34}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !71, file: !30, line: 439, baseType: !83, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !6, !6, !34}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "br_aes_x86ni_ctr_vtable", scope: !90, file: !91, line: 191, type: !113, isLocal: false, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !92, globals: !112, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../BearSSL/src/symcipher/aes_x86ni_ctr.c", directory: "/home/luwei/bech/BearSSL/aes_x86ni")
!92 = !{!6, !18, !93, !96, !99, !103, !19, !22, !108}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v4si", file: !94, line: 15, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/xmmintrin.h", directory: "")
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, flags: DIFlagVector, elements: !97)
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !100, line: 26, baseType: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !102, line: 42, baseType: !38)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !10, line: 3550, size: 128, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !105, file: !10, line: 3551, baseType: !13, size: 128, align: 8)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_si128", file: !10, line: 4013, size: 128, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !109, file: !10, line: 4014, baseType: !13, size: 128, align: 8)
!112 = !{!88}
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_ctr_class", file: !30, line: 506, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_ctr_class_", file: !30, line: 507, size: 256, elements: !116)
!116 = !{!117, !118, !119, !120, !126}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !115, file: !30, line: 512, baseType: !34, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !115, file: !30, line: 517, baseType: !38, size: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !115, file: !30, line: 523, baseType: !38, size: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !115, file: !30, line: 536, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124, !46, !34}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !115, file: !30, line: 562, baseType: !127, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!99, !130, !46, !99, !6, !34}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "br_aes_x86ni_ctrcbc_vtable", scope: !134, file: !135, line: 567, type: !152, isLocal: false, isDefinition: true)
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !151, splitDebugInlining: false, nameTableKind: None)
!135 = !DIFile(filename: "../BearSSL/src/symcipher/aes_x86ni_ctrcbc.c", directory: "/home/luwei/bech/BearSSL/aes_x86ni")
!136 = !{!6, !18, !22, !137, !19, !142, !147}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !10, line: 3550, size: 128, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !139, file: !10, line: 3551, baseType: !13, size: 128, align: 8)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v16qi", file: !10, line: 25, baseType: !143)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, flags: DIFlagVector, elements: !145)
!144 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!145 = !{!146}
!146 = !DISubrange(count: 16)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_si128", file: !10, line: 4013, size: 128, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !148, file: !10, line: 4014, baseType: !13, size: 128, align: 8)
!151 = !{!132}
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_ctrcbc_class", file: !30, line: 573, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_ctrcbc_class_", file: !30, line: 574, size: 448, elements: !155)
!155 = !{!156, !157, !158, !159, !165, !171, !172, !176}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !154, file: !30, line: 579, baseType: !34, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !154, file: !30, line: 584, baseType: !38, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !154, file: !30, line: 590, baseType: !38, size: 32, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !154, file: !30, line: 603, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !163, !46, !34}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !154, file: !30, line: 627, baseType: !166, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169, !6, !6, !6, !34}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "decrypt", scope: !154, file: !30, line: 651, baseType: !166, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ctr", scope: !154, file: !30, line: 669, baseType: !173, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !169, !6, !6, !34}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "mac", scope: !154, file: !30, line: 688, baseType: !177, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !169, !6, !46, !34}
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !182, splitDebugInlining: false, nameTableKind: None)
!181 = !DIFile(filename: "../BearSSL/src/symcipher/aes_x86ni.c", directory: "/home/luwei/bech/BearSSL/aes_x86ni")
!182 = !{!6, !46, !18, !22, !93, !183, !186, !187, !19, !192}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128d", file: !10, line: 15, baseType: !184, align: 128)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 128, flags: DIFlagVector, elements: !16)
!185 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2df", file: !10, line: 22, baseType: !184)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !10, line: 3550, size: 128, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !189, file: !10, line: 3551, baseType: !13, size: 128, align: 8)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__storeu_si128", file: !10, line: 4013, size: 128, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !193, file: !10, line: 4014, baseType: !13, size: 128, align: 8)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "cbc_enc.c", directory: "/home/luwei/bech/BearSSL/aes_x86ni")
!198 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!199 = !{i32 7, !"Dwarf Version", i32 4}
!200 = !{i32 2, !"Debug Info Version", i32 3}
!201 = !{i32 1, !"wchar_size", i32 4}
!202 = distinct !DISubprogram(name: "br_aes_x86ni_supported", scope: !181, file: !181, line: 37, type: !203, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !180, retainedNodes: !4)
!203 = !DISubroutineType(types: !204)
!204 = !{!96}
!205 = !DILocation(line: 44, column: 9, scope: !202)
!206 = !DILocation(line: 44, column: 2, scope: !202)
!207 = distinct !DISubprogram(name: "br_cpuid", scope: !208, file: !208, line: 2541, type: !209, scopeLine: 2543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !180, retainedNodes: !4)
!208 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech/BearSSL/aes_x86ni")
!209 = !DISubroutineType(types: !210)
!210 = !{!96, !99, !99, !99, !99}
!211 = !DILocalVariable(name: "mask_eax", arg: 1, scope: !207, file: !208, line: 2541, type: !99)
!212 = !DILocation(line: 0, scope: !207)
!213 = !DILocalVariable(name: "mask_ebx", arg: 2, scope: !207, file: !208, line: 2541, type: !99)
!214 = !DILocalVariable(name: "mask_ecx", arg: 3, scope: !207, file: !208, line: 2542, type: !99)
!215 = !DILocalVariable(name: "mask_edx", arg: 4, scope: !207, file: !208, line: 2542, type: !99)
!216 = !DILocalVariable(name: "eax", scope: !207, file: !208, line: 2545, type: !38)
!217 = !DILocation(line: 2545, column: 11, scope: !207)
!218 = !DILocalVariable(name: "ebx", scope: !207, file: !208, line: 2545, type: !38)
!219 = !DILocation(line: 2545, column: 16, scope: !207)
!220 = !DILocalVariable(name: "ecx", scope: !207, file: !208, line: 2545, type: !38)
!221 = !DILocation(line: 2545, column: 21, scope: !207)
!222 = !DILocalVariable(name: "edx", scope: !207, file: !208, line: 2545, type: !38)
!223 = !DILocation(line: 2545, column: 26, scope: !207)
!224 = !DILocation(line: 2547, column: 6, scope: !225)
!225 = distinct !DILexicalBlock(scope: !207, file: !208, line: 2547, column: 6)
!226 = !DILocation(line: 2547, column: 6, scope: !207)
!227 = !DILocation(line: 2548, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !208, line: 2548, column: 7)
!229 = distinct !DILexicalBlock(scope: !225, file: !208, line: 2547, column: 46)
!230 = !DILocation(line: 2548, column: 12, scope: !228)
!231 = !DILocation(line: 2548, column: 24, scope: !228)
!232 = !DILocation(line: 2549, column: 4, scope: !228)
!233 = !DILocation(line: 2549, column: 8, scope: !228)
!234 = !DILocation(line: 2549, column: 12, scope: !228)
!235 = !DILocation(line: 2549, column: 24, scope: !228)
!236 = !DILocation(line: 2550, column: 4, scope: !228)
!237 = !DILocation(line: 2550, column: 8, scope: !228)
!238 = !DILocation(line: 2550, column: 12, scope: !228)
!239 = !DILocation(line: 2550, column: 24, scope: !228)
!240 = !DILocation(line: 2551, column: 4, scope: !228)
!241 = !DILocation(line: 2551, column: 8, scope: !228)
!242 = !DILocation(line: 2551, column: 12, scope: !228)
!243 = !DILocation(line: 2551, column: 24, scope: !228)
!244 = !DILocation(line: 2548, column: 7, scope: !229)
!245 = !DILocation(line: 2553, column: 4, scope: !246)
!246 = distinct !DILexicalBlock(scope: !228, file: !208, line: 2552, column: 3)
!247 = !DILocation(line: 2555, column: 2, scope: !229)
!248 = !DILocation(line: 2568, column: 2, scope: !207)
!249 = !DILocation(line: 2569, column: 1, scope: !207)
!250 = distinct !DISubprogram(name: "__get_cpuid", scope: !251, file: !251, line: 292, type: !252, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !180, retainedNodes: !4)
!251 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/cpuid.h", directory: "")
!252 = !DISubroutineType(types: !253)
!253 = !{!96, !38, !254, !254, !254, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!255 = !DILocalVariable(name: "__leaf", arg: 1, scope: !250, file: !251, line: 292, type: !38)
!256 = !DILocation(line: 0, scope: !250)
!257 = !DILocalVariable(name: "__eax", arg: 2, scope: !250, file: !251, line: 292, type: !254)
!258 = !DILocalVariable(name: "__ebx", arg: 3, scope: !250, file: !251, line: 293, type: !254)
!259 = !DILocalVariable(name: "__ecx", arg: 4, scope: !250, file: !251, line: 293, type: !254)
!260 = !DILocalVariable(name: "__edx", arg: 5, scope: !250, file: !251, line: 294, type: !254)
!261 = !DILocation(line: 296, column: 54, scope: !250)
!262 = !DILocation(line: 296, column: 31, scope: !250)
!263 = !DILocalVariable(name: "__max_leaf", scope: !250, file: !251, line: 296, type: !38)
!264 = !DILocation(line: 298, column: 20, scope: !265)
!265 = distinct !DILexicalBlock(scope: !250, file: !251, line: 298, column: 9)
!266 = !DILocation(line: 298, column: 25, scope: !265)
!267 = !DILocation(line: 298, column: 39, scope: !265)
!268 = !DILocation(line: 298, column: 9, scope: !250)
!269 = !DILocation(line: 299, column: 9, scope: !265)
!270 = !DILocation(line: 301, column: 5, scope: !250)
!271 = !{i32 -2143838271, i32 -2143838235, i32 -2143838211}
!272 = !DILocation(line: 302, column: 5, scope: !250)
!273 = !DILocation(line: 303, column: 1, scope: !250)
!274 = distinct !DISubprogram(name: "__get_cpuid_max", scope: !251, file: !251, line: 262, type: !275, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !180, retainedNodes: !4)
!275 = !DISubroutineType(types: !276)
!276 = !{!96, !38, !254}
!277 = !DILocalVariable(name: "__leaf", arg: 1, scope: !274, file: !251, line: 262, type: !38)
!278 = !DILocation(line: 0, scope: !274)
!279 = !DILocalVariable(name: "__sig", arg: 2, scope: !274, file: !251, line: 262, type: !254)
!280 = !DILocation(line: 286, column: 5, scope: !274)
!281 = !{i32 -2143838477, i32 -2143838441, i32 -2143838417}
!282 = !DILocalVariable(name: "__eax", scope: !274, file: !251, line: 264, type: !38)
!283 = !DILocalVariable(name: "__ebx", scope: !274, file: !251, line: 264, type: !38)
!284 = !DILocalVariable(name: "__ecx", scope: !274, file: !251, line: 264, type: !38)
!285 = !DILocalVariable(name: "__edx", scope: !274, file: !251, line: 264, type: !38)
!286 = !DILocation(line: 287, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !274, file: !251, line: 287, column: 9)
!288 = !DILocation(line: 287, column: 9, scope: !274)
!289 = !DILocation(line: 288, column: 16, scope: !287)
!290 = !DILocation(line: 288, column: 9, scope: !287)
!291 = !DILocation(line: 289, column: 5, scope: !274)
!292 = distinct !DISubprogram(name: "br_aes_x86ni_keysched_enc", scope: !181, file: !181, line: 210, type: !293, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !180, retainedNodes: !4)
!293 = !DISubroutineType(types: !294)
!294 = !{!38, !295, !46, !34}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!297 = !DILocalVariable(name: "skni", arg: 1, scope: !292, file: !181, line: 210, type: !295)
!298 = !DILocation(line: 0, scope: !292)
!299 = !DILocalVariable(name: "key", arg: 2, scope: !292, file: !181, line: 210, type: !46)
!300 = !DILocalVariable(name: "len", arg: 3, scope: !292, file: !181, line: 210, type: !34)
!301 = !DILocalVariable(name: "sk", scope: !292, file: !181, line: 212, type: !302)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1920, align: 128, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 15)
!305 = !DILocation(line: 212, column: 10, scope: !292)
!306 = !DILocation(line: 215, column: 30, scope: !292)
!307 = !DILocation(line: 215, column: 15, scope: !292)
!308 = !DILocalVariable(name: "num_rounds", scope: !292, file: !181, line: 213, type: !38)
!309 = !DILocation(line: 216, column: 2, scope: !292)
!310 = !DILocation(line: 216, column: 31, scope: !292)
!311 = !DILocation(line: 216, column: 36, scope: !292)
!312 = !DILocation(line: 216, column: 19, scope: !292)
!313 = !DILocation(line: 217, column: 2, scope: !292)
!314 = distinct !DISubprogram(name: "x86ni_keysched", scope: !181, file: !181, line: 120, type: !315, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !180, retainedNodes: !4)
!315 = !DISubroutineType(types: !316)
!316 = !{!38, !317, !46, !34}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!318 = !DILocalVariable(name: "sk", arg: 1, scope: !314, file: !181, line: 120, type: !317)
!319 = !DILocation(line: 0, scope: !314)
!320 = !DILocalVariable(name: "key", arg: 2, scope: !314, file: !181, line: 120, type: !46)
!321 = !DILocalVariable(name: "len", arg: 3, scope: !314, file: !181, line: 120, type: !34)
!322 = !DILocalVariable(name: "kb", scope: !314, file: !181, line: 122, type: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!325 = !DILocation(line: 153, column: 2, scope: !314)
!326 = !DILocation(line: 157, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !314, file: !181, line: 153, column: 15)
!328 = !DILocation(line: 157, column: 8, scope: !327)
!329 = !DILocation(line: 157, column: 6, scope: !327)
!330 = !DILocation(line: 158, column: 11, scope: !327)
!331 = !DILocation(line: 158, column: 3, scope: !327)
!332 = !DILocation(line: 158, column: 9, scope: !327)
!333 = !DILocation(line: 159, column: 3, scope: !327)
!334 = !DILocation(line: 159, column: 3, scope: !335)
!335 = distinct !DILexicalBlock(scope: !327, file: !181, line: 159, column: 3)
!336 = !DILocation(line: 160, column: 3, scope: !327)
!337 = !DILocation(line: 160, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !327, file: !181, line: 160, column: 3)
!339 = !DILocation(line: 161, column: 3, scope: !327)
!340 = !DILocation(line: 161, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !327, file: !181, line: 161, column: 3)
!342 = !DILocation(line: 162, column: 3, scope: !327)
!343 = !DILocation(line: 162, column: 3, scope: !344)
!344 = distinct !DILexicalBlock(scope: !327, file: !181, line: 162, column: 3)
!345 = !DILocation(line: 163, column: 3, scope: !327)
!346 = !DILocation(line: 163, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !327, file: !181, line: 163, column: 3)
!348 = !DILocation(line: 164, column: 3, scope: !327)
!349 = !DILocation(line: 164, column: 3, scope: !350)
!350 = distinct !DILexicalBlock(scope: !327, file: !181, line: 164, column: 3)
!351 = !DILocation(line: 165, column: 3, scope: !327)
!352 = !DILocation(line: 165, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !327, file: !181, line: 165, column: 3)
!354 = !DILocation(line: 166, column: 3, scope: !327)
!355 = !DILocation(line: 166, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !327, file: !181, line: 166, column: 3)
!357 = !DILocation(line: 167, column: 3, scope: !327)
!358 = !DILocation(line: 167, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !327, file: !181, line: 167, column: 3)
!360 = !DILocation(line: 168, column: 3, scope: !327)
!361 = !DILocation(line: 168, column: 3, scope: !362)
!362 = distinct !DILexicalBlock(scope: !327, file: !181, line: 168, column: 3)
!363 = !DILocation(line: 169, column: 3, scope: !327)
!364 = !DILocation(line: 172, column: 24, scope: !327)
!365 = !DILocation(line: 172, column: 8, scope: !327)
!366 = !DILocation(line: 172, column: 6, scope: !327)
!367 = !DILocation(line: 173, column: 42, scope: !327)
!368 = !DILocation(line: 173, column: 24, scope: !327)
!369 = !DILocation(line: 173, column: 8, scope: !327)
!370 = !DILocation(line: 173, column: 6, scope: !327)
!371 = !DILocation(line: 174, column: 8, scope: !327)
!372 = !DILocation(line: 174, column: 6, scope: !327)
!373 = !DILocation(line: 175, column: 3, scope: !327)
!374 = !DILocation(line: 175, column: 3, scope: !375)
!375 = distinct !DILexicalBlock(scope: !327, file: !181, line: 175, column: 3)
!376 = !DILocation(line: 176, column: 3, scope: !327)
!377 = !DILocation(line: 176, column: 3, scope: !378)
!378 = distinct !DILexicalBlock(scope: !327, file: !181, line: 176, column: 3)
!379 = !DILocation(line: 177, column: 3, scope: !327)
!380 = !DILocation(line: 177, column: 3, scope: !381)
!381 = distinct !DILexicalBlock(scope: !327, file: !181, line: 177, column: 3)
!382 = !DILocation(line: 178, column: 3, scope: !327)
!383 = !DILocation(line: 178, column: 3, scope: !384)
!384 = distinct !DILexicalBlock(scope: !327, file: !181, line: 178, column: 3)
!385 = !DILocation(line: 179, column: 12, scope: !327)
!386 = !DILocation(line: 179, column: 3, scope: !327)
!387 = !DILocation(line: 179, column: 10, scope: !327)
!388 = !DILocation(line: 180, column: 3, scope: !327)
!389 = !DILocation(line: 183, column: 24, scope: !327)
!390 = !DILocation(line: 183, column: 8, scope: !327)
!391 = !DILocation(line: 183, column: 6, scope: !327)
!392 = !DILocation(line: 184, column: 42, scope: !327)
!393 = !DILocation(line: 184, column: 24, scope: !327)
!394 = !DILocation(line: 184, column: 8, scope: !327)
!395 = !DILocation(line: 184, column: 6, scope: !327)
!396 = !DILocation(line: 185, column: 11, scope: !327)
!397 = !DILocation(line: 185, column: 3, scope: !327)
!398 = !DILocation(line: 185, column: 9, scope: !327)
!399 = !DILocation(line: 186, column: 3, scope: !327)
!400 = !DILocation(line: 186, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !327, file: !181, line: 186, column: 3)
!402 = !DILocation(line: 187, column: 3, scope: !327)
!403 = !DILocation(line: 187, column: 3, scope: !404)
!404 = distinct !DILexicalBlock(scope: !327, file: !181, line: 187, column: 3)
!405 = !DILocation(line: 188, column: 3, scope: !327)
!406 = !DILocation(line: 188, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !327, file: !181, line: 188, column: 3)
!408 = !DILocation(line: 189, column: 3, scope: !327)
!409 = !DILocation(line: 189, column: 3, scope: !410)
!410 = distinct !DILexicalBlock(scope: !327, file: !181, line: 189, column: 3)
!411 = !DILocation(line: 190, column: 3, scope: !327)
!412 = !DILocation(line: 190, column: 3, scope: !413)
!413 = distinct !DILexicalBlock(scope: !327, file: !181, line: 190, column: 3)
!414 = !DILocation(line: 191, column: 3, scope: !327)
!415 = !DILocation(line: 191, column: 3, scope: !416)
!416 = distinct !DILexicalBlock(scope: !327, file: !181, line: 191, column: 3)
!417 = !DILocation(line: 192, column: 12, scope: !327)
!418 = !DILocation(line: 192, column: 3, scope: !327)
!419 = !DILocation(line: 192, column: 10, scope: !327)
!420 = !DILocation(line: 193, column: 8, scope: !327)
!421 = !DILocation(line: 193, column: 6, scope: !327)
!422 = !DILocation(line: 194, column: 3, scope: !327)
!423 = !DILocation(line: 195, column: 12, scope: !327)
!424 = !DILocation(line: 195, column: 3, scope: !327)
!425 = !DILocation(line: 195, column: 10, scope: !327)
!426 = !DILocation(line: 196, column: 3, scope: !327)
!427 = !DILocation(line: 199, column: 3, scope: !327)
!428 = !DILocation(line: 0, scope: !327)
!429 = !DILocation(line: 205, column: 1, scope: !314)
!430 = distinct !DISubprogram(name: "expand_step128", scope: !181, file: !181, line: 51, type: !431, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !180, retainedNodes: !4)
!431 = !DISubroutineType(types: !432)
!432 = !{!18, !18, !18}
!433 = !DILocalVariable(name: "k", arg: 1, scope: !430, file: !181, line: 51, type: !18)
!434 = !DILocation(line: 0, scope: !430)
!435 = !DILocalVariable(name: "k2", arg: 2, scope: !430, file: !181, line: 51, type: !18)
!436 = !DILocation(line: 53, column: 23, scope: !430)
!437 = !DILocation(line: 53, column: 6, scope: !430)
!438 = !DILocation(line: 54, column: 23, scope: !430)
!439 = !DILocation(line: 54, column: 6, scope: !430)
!440 = !DILocation(line: 55, column: 23, scope: !430)
!441 = !DILocation(line: 55, column: 6, scope: !430)
!442 = !DILocation(line: 56, column: 7, scope: !430)
!443 = !DILocation(line: 57, column: 9, scope: !430)
!444 = !DILocation(line: 57, column: 2, scope: !430)
!445 = distinct !DISubprogram(name: "expand_step192", scope: !181, file: !181, line: 62, type: !446, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !180, retainedNodes: !4)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !317, !317, !317}
!448 = !DILocalVariable(name: "t1", arg: 1, scope: !445, file: !181, line: 62, type: !317)
!449 = !DILocation(line: 0, scope: !445)
!450 = !DILocalVariable(name: "t2", arg: 2, scope: !445, file: !181, line: 62, type: !317)
!451 = !DILocalVariable(name: "t3", arg: 3, scope: !445, file: !181, line: 62, type: !317)
!452 = !DILocation(line: 66, column: 8, scope: !445)
!453 = !DILocation(line: 66, column: 6, scope: !445)
!454 = !DILocation(line: 67, column: 7, scope: !445)
!455 = !DILocalVariable(name: "t4", scope: !445, file: !181, line: 64, type: !18)
!456 = !DILocation(line: 68, column: 22, scope: !445)
!457 = !DILocation(line: 68, column: 8, scope: !445)
!458 = !DILocation(line: 68, column: 6, scope: !445)
!459 = !DILocation(line: 69, column: 7, scope: !445)
!460 = !DILocation(line: 70, column: 22, scope: !445)
!461 = !DILocation(line: 70, column: 8, scope: !445)
!462 = !DILocation(line: 70, column: 6, scope: !445)
!463 = !DILocation(line: 71, column: 7, scope: !445)
!464 = !DILocation(line: 72, column: 22, scope: !445)
!465 = !DILocation(line: 72, column: 8, scope: !445)
!466 = !DILocation(line: 72, column: 6, scope: !445)
!467 = !DILocation(line: 73, column: 22, scope: !445)
!468 = !DILocation(line: 73, column: 27, scope: !445)
!469 = !DILocation(line: 73, column: 8, scope: !445)
!470 = !DILocation(line: 73, column: 6, scope: !445)
!471 = !DILocation(line: 74, column: 8, scope: !445)
!472 = !DILocation(line: 74, column: 6, scope: !445)
!473 = !DILocation(line: 75, column: 7, scope: !445)
!474 = !DILocation(line: 76, column: 22, scope: !445)
!475 = !DILocation(line: 76, column: 8, scope: !445)
!476 = !DILocation(line: 76, column: 6, scope: !445)
!477 = !DILocation(line: 77, column: 22, scope: !445)
!478 = !DILocation(line: 77, column: 27, scope: !445)
!479 = !DILocation(line: 77, column: 8, scope: !445)
!480 = !DILocation(line: 77, column: 6, scope: !445)
!481 = !DILocation(line: 78, column: 1, scope: !445)
!482 = distinct !DISubprogram(name: "expand_step256_1", scope: !181, file: !181, line: 82, type: !483, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !180, retainedNodes: !4)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !317, !317}
!485 = !DILocalVariable(name: "t1", arg: 1, scope: !482, file: !181, line: 82, type: !317)
!486 = !DILocation(line: 0, scope: !482)
!487 = !DILocalVariable(name: "t2", arg: 2, scope: !482, file: !181, line: 82, type: !317)
!488 = !DILocation(line: 86, column: 8, scope: !482)
!489 = !DILocation(line: 86, column: 6, scope: !482)
!490 = !DILocation(line: 87, column: 7, scope: !482)
!491 = !DILocalVariable(name: "t4", scope: !482, file: !181, line: 84, type: !18)
!492 = !DILocation(line: 88, column: 22, scope: !482)
!493 = !DILocation(line: 88, column: 8, scope: !482)
!494 = !DILocation(line: 88, column: 6, scope: !482)
!495 = !DILocation(line: 89, column: 7, scope: !482)
!496 = !DILocation(line: 90, column: 22, scope: !482)
!497 = !DILocation(line: 90, column: 8, scope: !482)
!498 = !DILocation(line: 90, column: 6, scope: !482)
!499 = !DILocation(line: 91, column: 7, scope: !482)
!500 = !DILocation(line: 92, column: 22, scope: !482)
!501 = !DILocation(line: 92, column: 8, scope: !482)
!502 = !DILocation(line: 92, column: 6, scope: !482)
!503 = !DILocation(line: 93, column: 22, scope: !482)
!504 = !DILocation(line: 93, column: 27, scope: !482)
!505 = !DILocation(line: 93, column: 8, scope: !482)
!506 = !DILocation(line: 93, column: 6, scope: !482)
!507 = !DILocation(line: 94, column: 1, scope: !482)
!508 = distinct !DISubprogram(name: "expand_step256_2", scope: !181, file: !181, line: 98, type: !483, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !180, retainedNodes: !4)
!509 = !DILocalVariable(name: "t1", arg: 1, scope: !508, file: !181, line: 98, type: !317)
!510 = !DILocation(line: 0, scope: !508)
!511 = !DILocalVariable(name: "t3", arg: 2, scope: !508, file: !181, line: 98, type: !317)
!512 = !DILocation(line: 102, column: 7, scope: !508)
!513 = !DILocalVariable(name: "t4", scope: !508, file: !181, line: 100, type: !18)
!514 = !DILocation(line: 103, column: 7, scope: !508)
!515 = !DILocalVariable(name: "t2", scope: !508, file: !181, line: 100, type: !18)
!516 = !DILocation(line: 104, column: 7, scope: !508)
!517 = !DILocation(line: 105, column: 22, scope: !508)
!518 = !DILocation(line: 105, column: 8, scope: !508)
!519 = !DILocation(line: 105, column: 6, scope: !508)
!520 = !DILocation(line: 106, column: 7, scope: !508)
!521 = !DILocation(line: 107, column: 22, scope: !508)
!522 = !DILocation(line: 107, column: 8, scope: !508)
!523 = !DILocation(line: 107, column: 6, scope: !508)
!524 = !DILocation(line: 108, column: 7, scope: !508)
!525 = !DILocation(line: 109, column: 22, scope: !508)
!526 = !DILocation(line: 109, column: 8, scope: !508)
!527 = !DILocation(line: 109, column: 6, scope: !508)
!528 = !DILocation(line: 110, column: 22, scope: !508)
!529 = !DILocation(line: 110, column: 8, scope: !508)
!530 = !DILocation(line: 110, column: 6, scope: !508)
!531 = !DILocation(line: 111, column: 1, scope: !508)
!532 = distinct !DISubprogram(name: "br_aes_x86ni_keysched_dec", scope: !181, file: !181, line: 223, type: !293, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !180, retainedNodes: !4)
!533 = !DILocalVariable(name: "skni", arg: 1, scope: !532, file: !181, line: 223, type: !295)
!534 = !DILocation(line: 0, scope: !532)
!535 = !DILocalVariable(name: "key", arg: 2, scope: !532, file: !181, line: 223, type: !46)
!536 = !DILocalVariable(name: "len", arg: 3, scope: !532, file: !181, line: 223, type: !34)
!537 = !DILocalVariable(name: "sk", scope: !532, file: !181, line: 225, type: !302)
!538 = !DILocation(line: 225, column: 10, scope: !532)
!539 = !DILocation(line: 228, column: 30, scope: !532)
!540 = !DILocation(line: 228, column: 15, scope: !532)
!541 = !DILocalVariable(name: "num_rounds", scope: !532, file: !181, line: 226, type: !38)
!542 = !DILocation(line: 229, column: 19, scope: !532)
!543 = !DILocation(line: 229, column: 33, scope: !532)
!544 = !DILocation(line: 229, column: 2, scope: !532)
!545 = !DILocalVariable(name: "u", scope: !532, file: !181, line: 226, type: !38)
!546 = !DILocation(line: 230, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !532, file: !181, line: 230, column: 2)
!548 = !DILocation(line: 0, scope: !547)
!549 = !DILocation(line: 230, column: 16, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !181, line: 230, column: 2)
!551 = !DILocation(line: 230, column: 2, scope: !547)
!552 = !DILocation(line: 231, column: 39, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !181, line: 230, column: 36)
!554 = !DILocation(line: 231, column: 34, scope: !553)
!555 = !DILocation(line: 231, column: 20, scope: !553)
!556 = !DILocation(line: 232, column: 35, scope: !553)
!557 = !DILocation(line: 232, column: 21, scope: !553)
!558 = !DILocation(line: 232, column: 4, scope: !553)
!559 = !DILocation(line: 231, column: 3, scope: !553)
!560 = !DILocation(line: 233, column: 2, scope: !553)
!561 = !DILocation(line: 230, column: 32, scope: !550)
!562 = !DILocation(line: 230, column: 2, scope: !550)
!563 = distinct !{!563, !551, !564, !565}
!564 = !DILocation(line: 233, column: 2, scope: !547)
!565 = !{!"llvm.loop.mustprogress"}
!566 = !DILocation(line: 234, column: 47, scope: !532)
!567 = !DILocation(line: 234, column: 33, scope: !532)
!568 = !DILocation(line: 234, column: 19, scope: !532)
!569 = !DILocation(line: 234, column: 55, scope: !532)
!570 = !DILocation(line: 234, column: 2, scope: !532)
!571 = !DILocation(line: 235, column: 2, scope: !532)
!572 = distinct !DISubprogram(name: "br_aes_x86ni_cbcdec_init", scope: !3, file: !3, line: 39, type: !573, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !575, !46, !34}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_aes_x86ni_cbcdec_keys", file: !30, line: 1611, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 1602, size: 2048, elements: !578)
!578 = !{!579, !580, !587}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !577, file: !30, line: 1604, baseType: !45, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !577, file: !30, line: 1608, baseType: !581, size: 1920, offset: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !577, file: !30, line: 1606, size: 1920, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "skni", scope: !581, file: !30, line: 1607, baseType: !584, size: 1920)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 1920, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 240)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !577, file: !30, line: 1609, baseType: !38, size: 32, offset: 1984)
!588 = !DILocalVariable(name: "ctx", arg: 1, scope: !572, file: !3, line: 39, type: !575)
!589 = !DILocation(line: 0, scope: !572)
!590 = !DILocalVariable(name: "key", arg: 2, scope: !572, file: !3, line: 40, type: !46)
!591 = !DILocalVariable(name: "len", arg: 3, scope: !572, file: !3, line: 40, type: !34)
!592 = !DILocation(line: 42, column: 7, scope: !572)
!593 = !DILocation(line: 42, column: 14, scope: !572)
!594 = !DILocation(line: 43, column: 51, scope: !572)
!595 = !DILocation(line: 43, column: 56, scope: !572)
!596 = !DILocation(line: 43, column: 46, scope: !572)
!597 = !DILocation(line: 43, column: 20, scope: !572)
!598 = !DILocation(line: 43, column: 7, scope: !572)
!599 = !DILocation(line: 43, column: 18, scope: !572)
!600 = !DILocation(line: 44, column: 1, scope: !572)
!601 = distinct !DISubprogram(name: "br_aes_x86ni_cbcdec_run", scope: !3, file: !3, line: 51, type: !602, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !604, !6, !6, !34}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!606 = !DILocalVariable(name: "ctx", arg: 1, scope: !601, file: !3, line: 51, type: !604)
!607 = !DILocation(line: 0, scope: !601)
!608 = !DILocalVariable(name: "iv", arg: 2, scope: !601, file: !3, line: 52, type: !6)
!609 = !DILocalVariable(name: "data", arg: 3, scope: !601, file: !3, line: 52, type: !6)
!610 = !DILocalVariable(name: "len", arg: 4, scope: !601, file: !3, line: 52, type: !34)
!611 = !DILocalVariable(name: "sk", scope: !601, file: !3, line: 56, type: !302)
!612 = !DILocation(line: 56, column: 10, scope: !601)
!613 = !DILocalVariable(name: "buf", scope: !601, file: !3, line: 54, type: !295)
!614 = !DILocation(line: 60, column: 24, scope: !601)
!615 = !DILocation(line: 60, column: 8, scope: !601)
!616 = !DILocalVariable(name: "ivx", scope: !601, file: !3, line: 56, type: !18)
!617 = !DILocation(line: 61, column: 20, scope: !601)
!618 = !DILocalVariable(name: "num_rounds", scope: !601, file: !3, line: 55, type: !38)
!619 = !DILocalVariable(name: "u", scope: !601, file: !3, line: 57, type: !38)
!620 = !DILocation(line: 62, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !601, file: !3, line: 62, column: 2)
!622 = !DILocation(line: 0, scope: !621)
!623 = !DILocation(line: 62, column: 16, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !3, line: 62, column: 2)
!625 = !DILocation(line: 62, column: 2, scope: !621)
!626 = !DILocation(line: 63, column: 41, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !3, line: 62, column: 37)
!628 = !DILocation(line: 63, column: 46, scope: !627)
!629 = !DILocation(line: 63, column: 36, scope: !627)
!630 = !DILocation(line: 63, column: 56, scope: !627)
!631 = !DILocation(line: 63, column: 51, scope: !627)
!632 = !DILocation(line: 63, column: 27, scope: !627)
!633 = !DILocation(line: 63, column: 11, scope: !627)
!634 = !DILocation(line: 63, column: 3, scope: !627)
!635 = !DILocation(line: 63, column: 9, scope: !627)
!636 = !DILocation(line: 64, column: 2, scope: !627)
!637 = !DILocation(line: 62, column: 33, scope: !624)
!638 = !DILocation(line: 62, column: 2, scope: !624)
!639 = distinct !{!639, !625, !640, !565}
!640 = !DILocation(line: 64, column: 2, scope: !621)
!641 = !DILocation(line: 65, column: 2, scope: !601)
!642 = !DILocation(line: 65, column: 13, scope: !601)
!643 = !DILocation(line: 68, column: 37, scope: !644)
!644 = distinct !DILexicalBlock(scope: !601, file: !3, line: 65, column: 18)
!645 = !DILocation(line: 68, column: 24, scope: !644)
!646 = !DILocation(line: 68, column: 8, scope: !644)
!647 = !DILocalVariable(name: "x0", scope: !644, file: !3, line: 66, type: !18)
!648 = !DILocation(line: 0, scope: !644)
!649 = !DILocation(line: 69, column: 11, scope: !650)
!650 = distinct !DILexicalBlock(scope: !644, file: !3, line: 69, column: 7)
!651 = !DILocation(line: 69, column: 7, scope: !644)
!652 = !DILocation(line: 70, column: 38, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !3, line: 69, column: 18)
!654 = !DILocation(line: 70, column: 25, scope: !653)
!655 = !DILocation(line: 70, column: 9, scope: !653)
!656 = !DILocalVariable(name: "x1", scope: !644, file: !3, line: 66, type: !18)
!657 = !DILocation(line: 71, column: 38, scope: !653)
!658 = !DILocation(line: 71, column: 25, scope: !653)
!659 = !DILocation(line: 71, column: 9, scope: !653)
!660 = !DILocalVariable(name: "x2", scope: !644, file: !3, line: 66, type: !18)
!661 = !DILocation(line: 72, column: 38, scope: !653)
!662 = !DILocation(line: 72, column: 25, scope: !653)
!663 = !DILocation(line: 72, column: 9, scope: !653)
!664 = !DILocalVariable(name: "x3", scope: !644, file: !3, line: 66, type: !18)
!665 = !DILocation(line: 73, column: 3, scope: !653)
!666 = !DILocation(line: 74, column: 38, scope: !667)
!667 = distinct !DILexicalBlock(scope: !650, file: !3, line: 73, column: 10)
!668 = !DILocation(line: 74, column: 25, scope: !667)
!669 = !DILocation(line: 74, column: 9, scope: !667)
!670 = !DILocation(line: 75, column: 12, scope: !671)
!671 = distinct !DILexicalBlock(scope: !667, file: !3, line: 75, column: 8)
!672 = !DILocation(line: 75, column: 8, scope: !667)
!673 = !DILocation(line: 76, column: 39, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !3, line: 75, column: 19)
!675 = !DILocation(line: 76, column: 26, scope: !674)
!676 = !DILocation(line: 76, column: 10, scope: !674)
!677 = !DILocation(line: 77, column: 13, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !3, line: 77, column: 9)
!679 = !DILocation(line: 77, column: 9, scope: !674)
!680 = !DILocation(line: 79, column: 20, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !3, line: 77, column: 20)
!682 = !DILocation(line: 79, column: 7, scope: !681)
!683 = !DILocation(line: 78, column: 11, scope: !681)
!684 = !DILocation(line: 81, column: 5, scope: !681)
!685 = !DILocation(line: 0, scope: !678)
!686 = !DILocation(line: 85, column: 4, scope: !674)
!687 = !DILocation(line: 0, scope: !671)
!688 = !DILocation(line: 0, scope: !650)
!689 = !DILocalVariable(name: "e0", scope: !644, file: !3, line: 66, type: !18)
!690 = !DILocalVariable(name: "e1", scope: !644, file: !3, line: 66, type: !18)
!691 = !DILocalVariable(name: "e2", scope: !644, file: !3, line: 66, type: !18)
!692 = !DILocalVariable(name: "e3", scope: !644, file: !3, line: 66, type: !18)
!693 = !DILocation(line: 95, column: 26, scope: !644)
!694 = !DILocation(line: 95, column: 8, scope: !644)
!695 = !DILocation(line: 96, column: 26, scope: !644)
!696 = !DILocation(line: 96, column: 8, scope: !644)
!697 = !DILocation(line: 97, column: 26, scope: !644)
!698 = !DILocation(line: 97, column: 8, scope: !644)
!699 = !DILocation(line: 98, column: 26, scope: !644)
!700 = !DILocation(line: 98, column: 8, scope: !644)
!701 = !DILocation(line: 99, column: 29, scope: !644)
!702 = !DILocation(line: 99, column: 8, scope: !644)
!703 = !DILocation(line: 100, column: 29, scope: !644)
!704 = !DILocation(line: 100, column: 8, scope: !644)
!705 = !DILocation(line: 101, column: 29, scope: !644)
!706 = !DILocation(line: 101, column: 8, scope: !644)
!707 = !DILocation(line: 102, column: 29, scope: !644)
!708 = !DILocation(line: 102, column: 8, scope: !644)
!709 = !DILocation(line: 103, column: 29, scope: !644)
!710 = !DILocation(line: 103, column: 8, scope: !644)
!711 = !DILocation(line: 104, column: 29, scope: !644)
!712 = !DILocation(line: 104, column: 8, scope: !644)
!713 = !DILocation(line: 105, column: 29, scope: !644)
!714 = !DILocation(line: 105, column: 8, scope: !644)
!715 = !DILocation(line: 106, column: 29, scope: !644)
!716 = !DILocation(line: 106, column: 8, scope: !644)
!717 = !DILocation(line: 107, column: 29, scope: !644)
!718 = !DILocation(line: 107, column: 8, scope: !644)
!719 = !DILocation(line: 108, column: 29, scope: !644)
!720 = !DILocation(line: 108, column: 8, scope: !644)
!721 = !DILocation(line: 109, column: 29, scope: !644)
!722 = !DILocation(line: 109, column: 8, scope: !644)
!723 = !DILocation(line: 110, column: 29, scope: !644)
!724 = !DILocation(line: 110, column: 8, scope: !644)
!725 = !DILocation(line: 111, column: 29, scope: !644)
!726 = !DILocation(line: 111, column: 8, scope: !644)
!727 = !DILocation(line: 112, column: 29, scope: !644)
!728 = !DILocation(line: 112, column: 8, scope: !644)
!729 = !DILocation(line: 113, column: 29, scope: !644)
!730 = !DILocation(line: 113, column: 8, scope: !644)
!731 = !DILocation(line: 114, column: 29, scope: !644)
!732 = !DILocation(line: 114, column: 8, scope: !644)
!733 = !DILocation(line: 115, column: 29, scope: !644)
!734 = !DILocation(line: 115, column: 8, scope: !644)
!735 = !DILocation(line: 116, column: 29, scope: !644)
!736 = !DILocation(line: 116, column: 8, scope: !644)
!737 = !DILocation(line: 117, column: 29, scope: !644)
!738 = !DILocation(line: 117, column: 8, scope: !644)
!739 = !DILocation(line: 118, column: 29, scope: !644)
!740 = !DILocation(line: 118, column: 8, scope: !644)
!741 = !DILocation(line: 119, column: 29, scope: !644)
!742 = !DILocation(line: 119, column: 8, scope: !644)
!743 = !DILocation(line: 120, column: 29, scope: !644)
!744 = !DILocation(line: 120, column: 8, scope: !644)
!745 = !DILocation(line: 121, column: 29, scope: !644)
!746 = !DILocation(line: 121, column: 8, scope: !644)
!747 = !DILocation(line: 122, column: 29, scope: !644)
!748 = !DILocation(line: 122, column: 8, scope: !644)
!749 = !DILocation(line: 123, column: 29, scope: !644)
!750 = !DILocation(line: 123, column: 8, scope: !644)
!751 = !DILocation(line: 124, column: 29, scope: !644)
!752 = !DILocation(line: 124, column: 8, scope: !644)
!753 = !DILocation(line: 125, column: 29, scope: !644)
!754 = !DILocation(line: 125, column: 8, scope: !644)
!755 = !DILocation(line: 126, column: 29, scope: !644)
!756 = !DILocation(line: 126, column: 8, scope: !644)
!757 = !DILocation(line: 127, column: 29, scope: !644)
!758 = !DILocation(line: 127, column: 8, scope: !644)
!759 = !DILocation(line: 128, column: 29, scope: !644)
!760 = !DILocation(line: 128, column: 8, scope: !644)
!761 = !DILocation(line: 129, column: 29, scope: !644)
!762 = !DILocation(line: 129, column: 8, scope: !644)
!763 = !DILocation(line: 130, column: 29, scope: !644)
!764 = !DILocation(line: 130, column: 8, scope: !644)
!765 = !DILocation(line: 131, column: 29, scope: !644)
!766 = !DILocation(line: 131, column: 8, scope: !644)
!767 = !DILocation(line: 132, column: 29, scope: !644)
!768 = !DILocation(line: 132, column: 8, scope: !644)
!769 = !DILocation(line: 133, column: 29, scope: !644)
!770 = !DILocation(line: 133, column: 8, scope: !644)
!771 = !DILocation(line: 134, column: 29, scope: !644)
!772 = !DILocation(line: 134, column: 8, scope: !644)
!773 = !DILocation(line: 135, column: 18, scope: !774)
!774 = distinct !DILexicalBlock(scope: !644, file: !3, line: 135, column: 7)
!775 = !DILocation(line: 135, column: 7, scope: !644)
!776 = !DILocation(line: 136, column: 34, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !3, line: 135, column: 25)
!778 = !DILocation(line: 136, column: 9, scope: !777)
!779 = !DILocation(line: 137, column: 34, scope: !777)
!780 = !DILocation(line: 137, column: 9, scope: !777)
!781 = !DILocation(line: 138, column: 34, scope: !777)
!782 = !DILocation(line: 138, column: 9, scope: !777)
!783 = !DILocation(line: 139, column: 34, scope: !777)
!784 = !DILocation(line: 139, column: 9, scope: !777)
!785 = !DILocation(line: 140, column: 3, scope: !777)
!786 = !DILocation(line: 140, column: 25, scope: !787)
!787 = distinct !DILexicalBlock(scope: !774, file: !3, line: 140, column: 14)
!788 = !DILocation(line: 140, column: 14, scope: !774)
!789 = !DILocation(line: 141, column: 30, scope: !790)
!790 = distinct !DILexicalBlock(scope: !787, file: !3, line: 140, column: 32)
!791 = !DILocation(line: 141, column: 9, scope: !790)
!792 = !DILocation(line: 142, column: 30, scope: !790)
!793 = !DILocation(line: 142, column: 9, scope: !790)
!794 = !DILocation(line: 143, column: 30, scope: !790)
!795 = !DILocation(line: 143, column: 9, scope: !790)
!796 = !DILocation(line: 144, column: 30, scope: !790)
!797 = !DILocation(line: 144, column: 9, scope: !790)
!798 = !DILocation(line: 145, column: 30, scope: !790)
!799 = !DILocation(line: 145, column: 9, scope: !790)
!800 = !DILocation(line: 146, column: 30, scope: !790)
!801 = !DILocation(line: 146, column: 9, scope: !790)
!802 = !DILocation(line: 147, column: 30, scope: !790)
!803 = !DILocation(line: 147, column: 9, scope: !790)
!804 = !DILocation(line: 148, column: 30, scope: !790)
!805 = !DILocation(line: 148, column: 9, scope: !790)
!806 = !DILocation(line: 149, column: 34, scope: !790)
!807 = !DILocation(line: 149, column: 9, scope: !790)
!808 = !DILocation(line: 150, column: 34, scope: !790)
!809 = !DILocation(line: 150, column: 9, scope: !790)
!810 = !DILocation(line: 151, column: 34, scope: !790)
!811 = !DILocation(line: 151, column: 9, scope: !790)
!812 = !DILocation(line: 152, column: 34, scope: !790)
!813 = !DILocation(line: 152, column: 9, scope: !790)
!814 = !DILocation(line: 153, column: 3, scope: !790)
!815 = !DILocation(line: 154, column: 30, scope: !816)
!816 = distinct !DILexicalBlock(scope: !787, file: !3, line: 153, column: 10)
!817 = !DILocation(line: 154, column: 9, scope: !816)
!818 = !DILocation(line: 155, column: 30, scope: !816)
!819 = !DILocation(line: 155, column: 9, scope: !816)
!820 = !DILocation(line: 156, column: 30, scope: !816)
!821 = !DILocation(line: 156, column: 9, scope: !816)
!822 = !DILocation(line: 157, column: 30, scope: !816)
!823 = !DILocation(line: 157, column: 9, scope: !816)
!824 = !DILocation(line: 158, column: 30, scope: !816)
!825 = !DILocation(line: 158, column: 9, scope: !816)
!826 = !DILocation(line: 159, column: 30, scope: !816)
!827 = !DILocation(line: 159, column: 9, scope: !816)
!828 = !DILocation(line: 160, column: 30, scope: !816)
!829 = !DILocation(line: 160, column: 9, scope: !816)
!830 = !DILocation(line: 161, column: 30, scope: !816)
!831 = !DILocation(line: 161, column: 9, scope: !816)
!832 = !DILocation(line: 162, column: 30, scope: !816)
!833 = !DILocation(line: 162, column: 9, scope: !816)
!834 = !DILocation(line: 163, column: 30, scope: !816)
!835 = !DILocation(line: 163, column: 9, scope: !816)
!836 = !DILocation(line: 164, column: 30, scope: !816)
!837 = !DILocation(line: 164, column: 9, scope: !816)
!838 = !DILocation(line: 165, column: 30, scope: !816)
!839 = !DILocation(line: 165, column: 9, scope: !816)
!840 = !DILocation(line: 166, column: 30, scope: !816)
!841 = !DILocation(line: 166, column: 9, scope: !816)
!842 = !DILocation(line: 167, column: 30, scope: !816)
!843 = !DILocation(line: 167, column: 9, scope: !816)
!844 = !DILocation(line: 168, column: 30, scope: !816)
!845 = !DILocation(line: 168, column: 9, scope: !816)
!846 = !DILocation(line: 169, column: 30, scope: !816)
!847 = !DILocation(line: 169, column: 9, scope: !816)
!848 = !DILocation(line: 170, column: 34, scope: !816)
!849 = !DILocation(line: 170, column: 9, scope: !816)
!850 = !DILocation(line: 171, column: 34, scope: !816)
!851 = !DILocation(line: 171, column: 9, scope: !816)
!852 = !DILocation(line: 172, column: 34, scope: !816)
!853 = !DILocation(line: 172, column: 9, scope: !816)
!854 = !DILocation(line: 173, column: 34, scope: !816)
!855 = !DILocation(line: 173, column: 9, scope: !816)
!856 = !DILocation(line: 0, scope: !787)
!857 = !DILocation(line: 0, scope: !774)
!858 = !DILocation(line: 175, column: 8, scope: !644)
!859 = !DILocation(line: 176, column: 8, scope: !644)
!860 = !DILocation(line: 177, column: 8, scope: !644)
!861 = !DILocation(line: 178, column: 8, scope: !644)
!862 = !DILocation(line: 180, column: 33, scope: !644)
!863 = !DILocation(line: 180, column: 20, scope: !644)
!864 = !DILocation(line: 180, column: 3, scope: !644)
!865 = !DILocation(line: 181, column: 11, scope: !866)
!866 = distinct !DILexicalBlock(scope: !644, file: !3, line: 181, column: 7)
!867 = !DILocation(line: 181, column: 7, scope: !644)
!868 = !DILocation(line: 182, column: 34, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !3, line: 181, column: 18)
!870 = !DILocation(line: 182, column: 21, scope: !869)
!871 = !DILocation(line: 182, column: 4, scope: !869)
!872 = !DILocation(line: 183, column: 34, scope: !869)
!873 = !DILocation(line: 183, column: 21, scope: !869)
!874 = !DILocation(line: 183, column: 4, scope: !869)
!875 = !DILocation(line: 184, column: 34, scope: !869)
!876 = !DILocation(line: 184, column: 21, scope: !869)
!877 = !DILocation(line: 184, column: 4, scope: !869)
!878 = !DILocation(line: 185, column: 8, scope: !869)
!879 = !DILocation(line: 186, column: 8, scope: !869)
!880 = !DILocation(line: 187, column: 3, scope: !869)
!881 = !DILocation(line: 188, column: 12, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 188, column: 8)
!883 = distinct !DILexicalBlock(scope: !866, file: !3, line: 187, column: 10)
!884 = !DILocation(line: 188, column: 8, scope: !883)
!885 = !DILocation(line: 189, column: 35, scope: !886)
!886 = distinct !DILexicalBlock(scope: !882, file: !3, line: 188, column: 19)
!887 = !DILocation(line: 189, column: 22, scope: !886)
!888 = !DILocation(line: 189, column: 5, scope: !886)
!889 = !DILocation(line: 190, column: 13, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !3, line: 190, column: 9)
!891 = !DILocation(line: 190, column: 9, scope: !886)
!892 = !DILocation(line: 192, column: 20, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 190, column: 20)
!894 = !DILocation(line: 192, column: 7, scope: !893)
!895 = !DILocation(line: 191, column: 6, scope: !893)
!896 = !DILocation(line: 193, column: 5, scope: !893)
!897 = !DILocation(line: 194, column: 4, scope: !886)
!898 = !DILocation(line: 195, column: 4, scope: !883)
!899 = distinct !{!899, !641, !900, !565}
!900 = !DILocation(line: 197, column: 2, scope: !601)
!901 = !DILocation(line: 198, column: 19, scope: !601)
!902 = !DILocation(line: 198, column: 2, scope: !601)
!903 = !DILocation(line: 199, column: 1, scope: !601)
!904 = distinct !DISubprogram(name: "br_aes_x86ni_cbcdec_get_vtable", scope: !3, file: !3, line: 32, type: !905, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!905 = !DISubroutineType(types: !906)
!906 = !{!45}
!907 = !DILocation(line: 34, column: 9, scope: !904)
!908 = !DILocation(line: 34, column: 2, scope: !904)
!909 = distinct !DISubprogram(name: "br_aes_x86ni_cbcenc_init", scope: !57, file: !57, line: 39, type: !910, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !4)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !912, !46, !34}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_aes_x86ni_cbcenc_keys", file: !30, line: 1594, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 1585, size: 2048, elements: !915)
!915 = !{!916, !917, !921}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !914, file: !30, line: 1587, baseType: !81, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !914, file: !30, line: 1591, baseType: !918, size: 1920, offset: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !914, file: !30, line: 1589, size: 1920, elements: !919)
!919 = !{!920}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "skni", scope: !918, file: !30, line: 1590, baseType: !584, size: 1920)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !914, file: !30, line: 1592, baseType: !38, size: 32, offset: 1984)
!922 = !DILocalVariable(name: "ctx", arg: 1, scope: !909, file: !57, line: 39, type: !912)
!923 = !DILocation(line: 0, scope: !909)
!924 = !DILocalVariable(name: "key", arg: 2, scope: !909, file: !57, line: 40, type: !46)
!925 = !DILocalVariable(name: "len", arg: 3, scope: !909, file: !57, line: 40, type: !34)
!926 = !DILocation(line: 42, column: 7, scope: !909)
!927 = !DILocation(line: 42, column: 14, scope: !909)
!928 = !DILocation(line: 43, column: 51, scope: !909)
!929 = !DILocation(line: 43, column: 56, scope: !909)
!930 = !DILocation(line: 43, column: 46, scope: !909)
!931 = !DILocation(line: 43, column: 20, scope: !909)
!932 = !DILocation(line: 43, column: 7, scope: !909)
!933 = !DILocation(line: 43, column: 18, scope: !909)
!934 = !DILocation(line: 44, column: 1, scope: !909)
!935 = distinct !DISubprogram(name: "br_aes_x86ni_cbcenc_run", scope: !57, file: !57, line: 51, type: !936, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !4)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !938, !6, !6, !34}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!940 = !DILocalVariable(name: "ctx", arg: 1, scope: !935, file: !57, line: 51, type: !938)
!941 = !DILocation(line: 0, scope: !935)
!942 = !DILocalVariable(name: "iv", arg: 2, scope: !935, file: !57, line: 52, type: !6)
!943 = !DILocalVariable(name: "data", arg: 3, scope: !935, file: !57, line: 52, type: !6)
!944 = !DILocalVariable(name: "len", arg: 4, scope: !935, file: !57, line: 52, type: !34)
!945 = !DILocalVariable(name: "sk", scope: !935, file: !57, line: 56, type: !302)
!946 = !DILocation(line: 56, column: 10, scope: !935)
!947 = !DILocalVariable(name: "buf", scope: !935, file: !57, line: 54, type: !295)
!948 = !DILocation(line: 60, column: 24, scope: !935)
!949 = !DILocation(line: 60, column: 8, scope: !935)
!950 = !DILocalVariable(name: "ivx", scope: !935, file: !57, line: 56, type: !18)
!951 = !DILocation(line: 61, column: 20, scope: !935)
!952 = !DILocalVariable(name: "num_rounds", scope: !935, file: !57, line: 55, type: !38)
!953 = !DILocalVariable(name: "u", scope: !935, file: !57, line: 57, type: !38)
!954 = !DILocation(line: 62, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !935, file: !57, line: 62, column: 2)
!956 = !DILocation(line: 0, scope: !955)
!957 = !DILocation(line: 62, column: 16, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !57, line: 62, column: 2)
!959 = !DILocation(line: 62, column: 2, scope: !955)
!960 = !DILocation(line: 63, column: 41, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !57, line: 62, column: 37)
!962 = !DILocation(line: 63, column: 46, scope: !961)
!963 = !DILocation(line: 63, column: 36, scope: !961)
!964 = !DILocation(line: 63, column: 56, scope: !961)
!965 = !DILocation(line: 63, column: 51, scope: !961)
!966 = !DILocation(line: 63, column: 27, scope: !961)
!967 = !DILocation(line: 63, column: 11, scope: !961)
!968 = !DILocation(line: 63, column: 3, scope: !961)
!969 = !DILocation(line: 63, column: 9, scope: !961)
!970 = !DILocation(line: 64, column: 2, scope: !961)
!971 = !DILocation(line: 62, column: 33, scope: !958)
!972 = !DILocation(line: 62, column: 2, scope: !958)
!973 = distinct !{!973, !959, !974, !565}
!974 = !DILocation(line: 64, column: 2, scope: !955)
!975 = !DILocation(line: 65, column: 2, scope: !935)
!976 = !DILocation(line: 65, column: 13, scope: !935)
!977 = !DILocation(line: 68, column: 37, scope: !978)
!978 = distinct !DILexicalBlock(scope: !935, file: !57, line: 65, column: 18)
!979 = !DILocation(line: 68, column: 21, scope: !978)
!980 = !DILocation(line: 68, column: 7, scope: !978)
!981 = !DILocalVariable(name: "x", scope: !978, file: !57, line: 66, type: !18)
!982 = !DILocation(line: 0, scope: !978)
!983 = !DILocation(line: 69, column: 24, scope: !978)
!984 = !DILocation(line: 69, column: 7, scope: !978)
!985 = !DILocation(line: 70, column: 27, scope: !978)
!986 = !DILocation(line: 70, column: 7, scope: !978)
!987 = !DILocation(line: 71, column: 27, scope: !978)
!988 = !DILocation(line: 71, column: 7, scope: !978)
!989 = !DILocation(line: 72, column: 27, scope: !978)
!990 = !DILocation(line: 72, column: 7, scope: !978)
!991 = !DILocation(line: 73, column: 27, scope: !978)
!992 = !DILocation(line: 73, column: 7, scope: !978)
!993 = !DILocation(line: 74, column: 27, scope: !978)
!994 = !DILocation(line: 74, column: 7, scope: !978)
!995 = !DILocation(line: 75, column: 27, scope: !978)
!996 = !DILocation(line: 75, column: 7, scope: !978)
!997 = !DILocation(line: 76, column: 27, scope: !978)
!998 = !DILocation(line: 76, column: 7, scope: !978)
!999 = !DILocation(line: 77, column: 27, scope: !978)
!1000 = !DILocation(line: 77, column: 7, scope: !978)
!1001 = !DILocation(line: 78, column: 27, scope: !978)
!1002 = !DILocation(line: 78, column: 7, scope: !978)
!1003 = !DILocation(line: 79, column: 18, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !978, file: !57, line: 79, column: 7)
!1005 = !DILocation(line: 79, column: 7, scope: !978)
!1006 = !DILocation(line: 80, column: 32, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !57, line: 79, column: 25)
!1008 = !DILocation(line: 80, column: 8, scope: !1007)
!1009 = !DILocation(line: 81, column: 3, scope: !1007)
!1010 = !DILocation(line: 81, column: 25, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1004, file: !57, line: 81, column: 14)
!1012 = !DILocation(line: 81, column: 14, scope: !1004)
!1013 = !DILocation(line: 82, column: 28, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !57, line: 81, column: 32)
!1015 = !DILocation(line: 82, column: 8, scope: !1014)
!1016 = !DILocation(line: 83, column: 28, scope: !1014)
!1017 = !DILocation(line: 83, column: 8, scope: !1014)
!1018 = !DILocation(line: 84, column: 32, scope: !1014)
!1019 = !DILocation(line: 84, column: 8, scope: !1014)
!1020 = !DILocation(line: 85, column: 3, scope: !1014)
!1021 = !DILocation(line: 86, column: 28, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1011, file: !57, line: 85, column: 10)
!1023 = !DILocation(line: 86, column: 8, scope: !1022)
!1024 = !DILocation(line: 87, column: 28, scope: !1022)
!1025 = !DILocation(line: 87, column: 8, scope: !1022)
!1026 = !DILocation(line: 88, column: 28, scope: !1022)
!1027 = !DILocation(line: 88, column: 8, scope: !1022)
!1028 = !DILocation(line: 89, column: 28, scope: !1022)
!1029 = !DILocation(line: 89, column: 8, scope: !1022)
!1030 = !DILocation(line: 90, column: 32, scope: !1022)
!1031 = !DILocation(line: 90, column: 8, scope: !1022)
!1032 = !DILocation(line: 0, scope: !1011)
!1033 = !DILocation(line: 0, scope: !1004)
!1034 = !DILocation(line: 93, column: 20, scope: !978)
!1035 = !DILocation(line: 93, column: 3, scope: !978)
!1036 = !DILocation(line: 94, column: 7, scope: !978)
!1037 = !DILocation(line: 95, column: 7, scope: !978)
!1038 = distinct !{!1038, !975, !1039, !565}
!1039 = !DILocation(line: 96, column: 2, scope: !935)
!1040 = !DILocation(line: 97, column: 19, scope: !935)
!1041 = !DILocation(line: 97, column: 2, scope: !935)
!1042 = !DILocation(line: 98, column: 1, scope: !935)
!1043 = distinct !DISubprogram(name: "br_aes_x86ni_cbcenc_get_vtable", scope: !57, file: !57, line: 32, type: !1044, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !4)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!81}
!1046 = !DILocation(line: 34, column: 9, scope: !1043)
!1047 = !DILocation(line: 34, column: 2, scope: !1043)
!1048 = distinct !DISubprogram(name: "br_aes_x86ni_ctr_init", scope: !91, file: !91, line: 39, type: !1049, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !4)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !1051, !46, !34}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_aes_x86ni_ctr_keys", file: !30, line: 1629, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 1620, size: 2048, elements: !1054)
!1054 = !{!1055, !1056, !1060}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1053, file: !30, line: 1622, baseType: !125, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !1053, file: !30, line: 1626, baseType: !1057, size: 1920, offset: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !30, line: 1624, size: 1920, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "skni", scope: !1057, file: !30, line: 1625, baseType: !584, size: 1920)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !1053, file: !30, line: 1627, baseType: !38, size: 32, offset: 1984)
!1061 = !DILocalVariable(name: "ctx", arg: 1, scope: !1048, file: !91, line: 39, type: !1051)
!1062 = !DILocation(line: 0, scope: !1048)
!1063 = !DILocalVariable(name: "key", arg: 2, scope: !1048, file: !91, line: 40, type: !46)
!1064 = !DILocalVariable(name: "len", arg: 3, scope: !1048, file: !91, line: 40, type: !34)
!1065 = !DILocation(line: 42, column: 7, scope: !1048)
!1066 = !DILocation(line: 42, column: 14, scope: !1048)
!1067 = !DILocation(line: 43, column: 51, scope: !1048)
!1068 = !DILocation(line: 43, column: 56, scope: !1048)
!1069 = !DILocation(line: 43, column: 46, scope: !1048)
!1070 = !DILocation(line: 43, column: 20, scope: !1048)
!1071 = !DILocation(line: 43, column: 7, scope: !1048)
!1072 = !DILocation(line: 43, column: 18, scope: !1048)
!1073 = !DILocation(line: 44, column: 1, scope: !1048)
!1074 = distinct !DISubprogram(name: "br_aes_x86ni_ctr_run", scope: !91, file: !91, line: 51, type: !1075, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !4)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!99, !1077, !46, !99, !6, !34}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1052)
!1079 = !DILocalVariable(name: "ctx", arg: 1, scope: !1074, file: !91, line: 51, type: !1077)
!1080 = !DILocation(line: 0, scope: !1074)
!1081 = !DILocalVariable(name: "iv", arg: 2, scope: !1074, file: !91, line: 52, type: !46)
!1082 = !DILocalVariable(name: "cc", arg: 3, scope: !1074, file: !91, line: 52, type: !99)
!1083 = !DILocalVariable(name: "data", arg: 4, scope: !1074, file: !91, line: 52, type: !6)
!1084 = !DILocalVariable(name: "len", arg: 5, scope: !1074, file: !91, line: 52, type: !34)
!1085 = !DILocalVariable(name: "ivbuf", scope: !1074, file: !91, line: 55, type: !1086)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !145)
!1087 = !DILocation(line: 55, column: 16, scope: !1074)
!1088 = !DILocalVariable(name: "sk", scope: !1074, file: !91, line: 57, type: !302)
!1089 = !DILocation(line: 57, column: 10, scope: !1074)
!1090 = !DILocalVariable(name: "buf", scope: !1074, file: !91, line: 54, type: !295)
!1091 = !DILocation(line: 62, column: 2, scope: !1074)
!1092 = !DILocation(line: 63, column: 20, scope: !1074)
!1093 = !DILocalVariable(name: "num_rounds", scope: !1074, file: !91, line: 56, type: !38)
!1094 = !DILocalVariable(name: "u", scope: !1074, file: !91, line: 59, type: !38)
!1095 = !DILocation(line: 64, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1074, file: !91, line: 64, column: 2)
!1097 = !DILocation(line: 0, scope: !1096)
!1098 = !DILocation(line: 64, column: 16, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !91, line: 64, column: 2)
!1100 = !DILocation(line: 64, column: 2, scope: !1096)
!1101 = !DILocation(line: 65, column: 41, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !91, line: 64, column: 37)
!1103 = !DILocation(line: 65, column: 46, scope: !1102)
!1104 = !DILocation(line: 65, column: 36, scope: !1102)
!1105 = !DILocation(line: 65, column: 56, scope: !1102)
!1106 = !DILocation(line: 65, column: 51, scope: !1102)
!1107 = !DILocation(line: 65, column: 27, scope: !1102)
!1108 = !DILocation(line: 65, column: 11, scope: !1102)
!1109 = !DILocation(line: 65, column: 3, scope: !1102)
!1110 = !DILocation(line: 65, column: 9, scope: !1102)
!1111 = !DILocation(line: 66, column: 2, scope: !1102)
!1112 = !DILocation(line: 64, column: 33, scope: !1099)
!1113 = !DILocation(line: 64, column: 2, scope: !1099)
!1114 = distinct !{!1114, !1100, !1115, !565}
!1115 = !DILocation(line: 66, column: 2, scope: !1096)
!1116 = !DILocation(line: 67, column: 32, scope: !1074)
!1117 = !DILocation(line: 67, column: 24, scope: !1074)
!1118 = !DILocation(line: 67, column: 8, scope: !1074)
!1119 = !DILocalVariable(name: "ivx", scope: !1074, file: !91, line: 58, type: !18)
!1120 = !DILocation(line: 68, column: 2, scope: !1074)
!1121 = !DILocation(line: 68, column: 13, scope: !1074)
!1122 = !DILocation(line: 71, column: 8, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1074, file: !91, line: 68, column: 18)
!1124 = !DILocalVariable(name: "x0", scope: !1123, file: !91, line: 69, type: !18)
!1125 = !DILocation(line: 0, scope: !1123)
!1126 = !DILocation(line: 72, column: 8, scope: !1123)
!1127 = !DILocalVariable(name: "x1", scope: !1123, file: !91, line: 69, type: !18)
!1128 = !DILocation(line: 73, column: 8, scope: !1123)
!1129 = !DILocalVariable(name: "x2", scope: !1123, file: !91, line: 69, type: !18)
!1130 = !DILocation(line: 74, column: 8, scope: !1123)
!1131 = !DILocalVariable(name: "x3", scope: !1123, file: !91, line: 69, type: !18)
!1132 = !DILocation(line: 75, column: 26, scope: !1123)
!1133 = !DILocation(line: 75, column: 8, scope: !1123)
!1134 = !DILocation(line: 76, column: 26, scope: !1123)
!1135 = !DILocation(line: 76, column: 8, scope: !1123)
!1136 = !DILocation(line: 77, column: 26, scope: !1123)
!1137 = !DILocation(line: 77, column: 8, scope: !1123)
!1138 = !DILocation(line: 78, column: 26, scope: !1123)
!1139 = !DILocation(line: 78, column: 8, scope: !1123)
!1140 = !DILocation(line: 79, column: 29, scope: !1123)
!1141 = !DILocation(line: 79, column: 8, scope: !1123)
!1142 = !DILocation(line: 80, column: 29, scope: !1123)
!1143 = !DILocation(line: 80, column: 8, scope: !1123)
!1144 = !DILocation(line: 81, column: 29, scope: !1123)
!1145 = !DILocation(line: 81, column: 8, scope: !1123)
!1146 = !DILocation(line: 82, column: 29, scope: !1123)
!1147 = !DILocation(line: 82, column: 8, scope: !1123)
!1148 = !DILocation(line: 83, column: 29, scope: !1123)
!1149 = !DILocation(line: 83, column: 8, scope: !1123)
!1150 = !DILocation(line: 84, column: 29, scope: !1123)
!1151 = !DILocation(line: 84, column: 8, scope: !1123)
!1152 = !DILocation(line: 85, column: 29, scope: !1123)
!1153 = !DILocation(line: 85, column: 8, scope: !1123)
!1154 = !DILocation(line: 86, column: 29, scope: !1123)
!1155 = !DILocation(line: 86, column: 8, scope: !1123)
!1156 = !DILocation(line: 87, column: 29, scope: !1123)
!1157 = !DILocation(line: 87, column: 8, scope: !1123)
!1158 = !DILocation(line: 88, column: 29, scope: !1123)
!1159 = !DILocation(line: 88, column: 8, scope: !1123)
!1160 = !DILocation(line: 89, column: 29, scope: !1123)
!1161 = !DILocation(line: 89, column: 8, scope: !1123)
!1162 = !DILocation(line: 90, column: 29, scope: !1123)
!1163 = !DILocation(line: 90, column: 8, scope: !1123)
!1164 = !DILocation(line: 91, column: 29, scope: !1123)
!1165 = !DILocation(line: 91, column: 8, scope: !1123)
!1166 = !DILocation(line: 92, column: 29, scope: !1123)
!1167 = !DILocation(line: 92, column: 8, scope: !1123)
!1168 = !DILocation(line: 93, column: 29, scope: !1123)
!1169 = !DILocation(line: 93, column: 8, scope: !1123)
!1170 = !DILocation(line: 94, column: 29, scope: !1123)
!1171 = !DILocation(line: 94, column: 8, scope: !1123)
!1172 = !DILocation(line: 95, column: 29, scope: !1123)
!1173 = !DILocation(line: 95, column: 8, scope: !1123)
!1174 = !DILocation(line: 96, column: 29, scope: !1123)
!1175 = !DILocation(line: 96, column: 8, scope: !1123)
!1176 = !DILocation(line: 97, column: 29, scope: !1123)
!1177 = !DILocation(line: 97, column: 8, scope: !1123)
!1178 = !DILocation(line: 98, column: 29, scope: !1123)
!1179 = !DILocation(line: 98, column: 8, scope: !1123)
!1180 = !DILocation(line: 99, column: 29, scope: !1123)
!1181 = !DILocation(line: 99, column: 8, scope: !1123)
!1182 = !DILocation(line: 100, column: 29, scope: !1123)
!1183 = !DILocation(line: 100, column: 8, scope: !1123)
!1184 = !DILocation(line: 101, column: 29, scope: !1123)
!1185 = !DILocation(line: 101, column: 8, scope: !1123)
!1186 = !DILocation(line: 102, column: 29, scope: !1123)
!1187 = !DILocation(line: 102, column: 8, scope: !1123)
!1188 = !DILocation(line: 103, column: 29, scope: !1123)
!1189 = !DILocation(line: 103, column: 8, scope: !1123)
!1190 = !DILocation(line: 104, column: 29, scope: !1123)
!1191 = !DILocation(line: 104, column: 8, scope: !1123)
!1192 = !DILocation(line: 105, column: 29, scope: !1123)
!1193 = !DILocation(line: 105, column: 8, scope: !1123)
!1194 = !DILocation(line: 106, column: 29, scope: !1123)
!1195 = !DILocation(line: 106, column: 8, scope: !1123)
!1196 = !DILocation(line: 107, column: 29, scope: !1123)
!1197 = !DILocation(line: 107, column: 8, scope: !1123)
!1198 = !DILocation(line: 108, column: 29, scope: !1123)
!1199 = !DILocation(line: 108, column: 8, scope: !1123)
!1200 = !DILocation(line: 109, column: 29, scope: !1123)
!1201 = !DILocation(line: 109, column: 8, scope: !1123)
!1202 = !DILocation(line: 110, column: 29, scope: !1123)
!1203 = !DILocation(line: 110, column: 8, scope: !1123)
!1204 = !DILocation(line: 111, column: 29, scope: !1123)
!1205 = !DILocation(line: 111, column: 8, scope: !1123)
!1206 = !DILocation(line: 112, column: 29, scope: !1123)
!1207 = !DILocation(line: 112, column: 8, scope: !1123)
!1208 = !DILocation(line: 113, column: 29, scope: !1123)
!1209 = !DILocation(line: 113, column: 8, scope: !1123)
!1210 = !DILocation(line: 114, column: 29, scope: !1123)
!1211 = !DILocation(line: 114, column: 8, scope: !1123)
!1212 = !DILocation(line: 115, column: 18, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1123, file: !91, line: 115, column: 7)
!1214 = !DILocation(line: 115, column: 7, scope: !1123)
!1215 = !DILocation(line: 116, column: 34, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !91, line: 115, column: 25)
!1217 = !DILocation(line: 116, column: 9, scope: !1216)
!1218 = !DILocation(line: 117, column: 34, scope: !1216)
!1219 = !DILocation(line: 117, column: 9, scope: !1216)
!1220 = !DILocation(line: 118, column: 34, scope: !1216)
!1221 = !DILocation(line: 118, column: 9, scope: !1216)
!1222 = !DILocation(line: 119, column: 34, scope: !1216)
!1223 = !DILocation(line: 119, column: 9, scope: !1216)
!1224 = !DILocation(line: 120, column: 3, scope: !1216)
!1225 = !DILocation(line: 120, column: 25, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1213, file: !91, line: 120, column: 14)
!1227 = !DILocation(line: 120, column: 14, scope: !1213)
!1228 = !DILocation(line: 121, column: 30, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !91, line: 120, column: 32)
!1230 = !DILocation(line: 121, column: 9, scope: !1229)
!1231 = !DILocation(line: 122, column: 30, scope: !1229)
!1232 = !DILocation(line: 122, column: 9, scope: !1229)
!1233 = !DILocation(line: 123, column: 30, scope: !1229)
!1234 = !DILocation(line: 123, column: 9, scope: !1229)
!1235 = !DILocation(line: 124, column: 30, scope: !1229)
!1236 = !DILocation(line: 124, column: 9, scope: !1229)
!1237 = !DILocation(line: 125, column: 30, scope: !1229)
!1238 = !DILocation(line: 125, column: 9, scope: !1229)
!1239 = !DILocation(line: 126, column: 30, scope: !1229)
!1240 = !DILocation(line: 126, column: 9, scope: !1229)
!1241 = !DILocation(line: 127, column: 30, scope: !1229)
!1242 = !DILocation(line: 127, column: 9, scope: !1229)
!1243 = !DILocation(line: 128, column: 30, scope: !1229)
!1244 = !DILocation(line: 128, column: 9, scope: !1229)
!1245 = !DILocation(line: 129, column: 34, scope: !1229)
!1246 = !DILocation(line: 129, column: 9, scope: !1229)
!1247 = !DILocation(line: 130, column: 34, scope: !1229)
!1248 = !DILocation(line: 130, column: 9, scope: !1229)
!1249 = !DILocation(line: 131, column: 34, scope: !1229)
!1250 = !DILocation(line: 131, column: 9, scope: !1229)
!1251 = !DILocation(line: 132, column: 34, scope: !1229)
!1252 = !DILocation(line: 132, column: 9, scope: !1229)
!1253 = !DILocation(line: 133, column: 3, scope: !1229)
!1254 = !DILocation(line: 134, column: 30, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1226, file: !91, line: 133, column: 10)
!1256 = !DILocation(line: 134, column: 9, scope: !1255)
!1257 = !DILocation(line: 135, column: 30, scope: !1255)
!1258 = !DILocation(line: 135, column: 9, scope: !1255)
!1259 = !DILocation(line: 136, column: 30, scope: !1255)
!1260 = !DILocation(line: 136, column: 9, scope: !1255)
!1261 = !DILocation(line: 137, column: 30, scope: !1255)
!1262 = !DILocation(line: 137, column: 9, scope: !1255)
!1263 = !DILocation(line: 138, column: 30, scope: !1255)
!1264 = !DILocation(line: 138, column: 9, scope: !1255)
!1265 = !DILocation(line: 139, column: 30, scope: !1255)
!1266 = !DILocation(line: 139, column: 9, scope: !1255)
!1267 = !DILocation(line: 140, column: 30, scope: !1255)
!1268 = !DILocation(line: 140, column: 9, scope: !1255)
!1269 = !DILocation(line: 141, column: 30, scope: !1255)
!1270 = !DILocation(line: 141, column: 9, scope: !1255)
!1271 = !DILocation(line: 142, column: 30, scope: !1255)
!1272 = !DILocation(line: 142, column: 9, scope: !1255)
!1273 = !DILocation(line: 143, column: 30, scope: !1255)
!1274 = !DILocation(line: 143, column: 9, scope: !1255)
!1275 = !DILocation(line: 144, column: 30, scope: !1255)
!1276 = !DILocation(line: 144, column: 9, scope: !1255)
!1277 = !DILocation(line: 145, column: 30, scope: !1255)
!1278 = !DILocation(line: 145, column: 9, scope: !1255)
!1279 = !DILocation(line: 146, column: 30, scope: !1255)
!1280 = !DILocation(line: 146, column: 9, scope: !1255)
!1281 = !DILocation(line: 147, column: 30, scope: !1255)
!1282 = !DILocation(line: 147, column: 9, scope: !1255)
!1283 = !DILocation(line: 148, column: 30, scope: !1255)
!1284 = !DILocation(line: 148, column: 9, scope: !1255)
!1285 = !DILocation(line: 149, column: 30, scope: !1255)
!1286 = !DILocation(line: 149, column: 9, scope: !1255)
!1287 = !DILocation(line: 150, column: 34, scope: !1255)
!1288 = !DILocation(line: 150, column: 9, scope: !1255)
!1289 = !DILocation(line: 151, column: 34, scope: !1255)
!1290 = !DILocation(line: 151, column: 9, scope: !1255)
!1291 = !DILocation(line: 152, column: 34, scope: !1255)
!1292 = !DILocation(line: 152, column: 9, scope: !1255)
!1293 = !DILocation(line: 153, column: 34, scope: !1255)
!1294 = !DILocation(line: 153, column: 9, scope: !1255)
!1295 = !DILocation(line: 0, scope: !1226)
!1296 = !DILocation(line: 0, scope: !1213)
!1297 = !DILocation(line: 155, column: 11, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1123, file: !91, line: 155, column: 7)
!1299 = !DILocation(line: 155, column: 7, scope: !1123)
!1300 = !DILocation(line: 157, column: 34, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !91, line: 155, column: 18)
!1302 = !DILocation(line: 157, column: 21, scope: !1301)
!1303 = !DILocation(line: 157, column: 5, scope: !1301)
!1304 = !DILocation(line: 156, column: 9, scope: !1301)
!1305 = !DILocation(line: 159, column: 34, scope: !1301)
!1306 = !DILocation(line: 159, column: 21, scope: !1301)
!1307 = !DILocation(line: 159, column: 5, scope: !1301)
!1308 = !DILocation(line: 158, column: 9, scope: !1301)
!1309 = !DILocation(line: 161, column: 34, scope: !1301)
!1310 = !DILocation(line: 161, column: 21, scope: !1301)
!1311 = !DILocation(line: 161, column: 5, scope: !1301)
!1312 = !DILocation(line: 160, column: 9, scope: !1301)
!1313 = !DILocation(line: 163, column: 34, scope: !1301)
!1314 = !DILocation(line: 163, column: 21, scope: !1301)
!1315 = !DILocation(line: 163, column: 5, scope: !1301)
!1316 = !DILocation(line: 162, column: 9, scope: !1301)
!1317 = !DILocation(line: 164, column: 34, scope: !1301)
!1318 = !DILocation(line: 164, column: 21, scope: !1301)
!1319 = !DILocation(line: 164, column: 4, scope: !1301)
!1320 = !DILocation(line: 165, column: 34, scope: !1301)
!1321 = !DILocation(line: 165, column: 21, scope: !1301)
!1322 = !DILocation(line: 165, column: 4, scope: !1301)
!1323 = !DILocation(line: 166, column: 34, scope: !1301)
!1324 = !DILocation(line: 166, column: 21, scope: !1301)
!1325 = !DILocation(line: 166, column: 4, scope: !1301)
!1326 = !DILocation(line: 167, column: 34, scope: !1301)
!1327 = !DILocation(line: 167, column: 21, scope: !1301)
!1328 = !DILocation(line: 167, column: 4, scope: !1301)
!1329 = !DILocation(line: 168, column: 8, scope: !1301)
!1330 = !DILocation(line: 169, column: 8, scope: !1301)
!1331 = !DILocation(line: 170, column: 7, scope: !1301)
!1332 = !DILocation(line: 171, column: 3, scope: !1301)
!1333 = !DILocalVariable(name: "tmp", scope: !1334, file: !91, line: 172, type: !1335)
!1334 = distinct !DILexicalBlock(scope: !1298, file: !91, line: 171, column: 10)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 512, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: 64)
!1338 = !DILocation(line: 172, column: 18, scope: !1334)
!1339 = !DILocation(line: 174, column: 30, scope: !1334)
!1340 = !DILocation(line: 174, column: 34, scope: !1334)
!1341 = !DILocation(line: 174, column: 21, scope: !1334)
!1342 = !DILocation(line: 174, column: 4, scope: !1334)
!1343 = !DILocation(line: 175, column: 30, scope: !1334)
!1344 = !DILocation(line: 175, column: 34, scope: !1334)
!1345 = !DILocation(line: 175, column: 21, scope: !1334)
!1346 = !DILocation(line: 175, column: 4, scope: !1334)
!1347 = !DILocation(line: 176, column: 30, scope: !1334)
!1348 = !DILocation(line: 176, column: 34, scope: !1334)
!1349 = !DILocation(line: 176, column: 21, scope: !1334)
!1350 = !DILocation(line: 176, column: 4, scope: !1334)
!1351 = !DILocation(line: 177, column: 30, scope: !1334)
!1352 = !DILocation(line: 177, column: 34, scope: !1334)
!1353 = !DILocation(line: 177, column: 21, scope: !1334)
!1354 = !DILocation(line: 177, column: 4, scope: !1334)
!1355 = !DILocation(line: 178, column: 9, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1334, file: !91, line: 178, column: 4)
!1357 = !DILocation(line: 0, scope: !1356)
!1358 = !DILocation(line: 178, column: 16, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !91, line: 178, column: 4)
!1360 = !DILocation(line: 178, column: 18, scope: !1359)
!1361 = !DILocation(line: 178, column: 4, scope: !1356)
!1362 = !DILocation(line: 179, column: 15, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !91, line: 178, column: 31)
!1364 = !DILocation(line: 179, column: 5, scope: !1363)
!1365 = !DILocation(line: 179, column: 12, scope: !1363)
!1366 = !DILocation(line: 180, column: 4, scope: !1363)
!1367 = !DILocation(line: 178, column: 27, scope: !1359)
!1368 = !DILocation(line: 178, column: 4, scope: !1359)
!1369 = distinct !{!1369, !1361, !1370, !565}
!1370 = !DILocation(line: 180, column: 4, scope: !1356)
!1371 = !DILocation(line: 181, column: 10, scope: !1334)
!1372 = !DILocation(line: 181, column: 24, scope: !1334)
!1373 = !DILocation(line: 181, column: 7, scope: !1334)
!1374 = !DILocation(line: 182, column: 4, scope: !1334)
!1375 = distinct !{!1375, !1120, !1376, !565}
!1376 = !DILocation(line: 184, column: 2, scope: !1074)
!1377 = !DILocation(line: 185, column: 2, scope: !1074)
!1378 = distinct !DISubprogram(name: "br_aes_x86ni_ctr_get_vtable", scope: !91, file: !91, line: 32, type: !1379, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !4)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!125}
!1381 = !DILocation(line: 34, column: 9, scope: !1378)
!1382 = !DILocation(line: 34, column: 2, scope: !1378)
!1383 = distinct !DISubprogram(name: "br_aes_x86ni_ctrcbc_init", scope: !135, file: !135, line: 39, type: !1384, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !1386, !46, !34}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_aes_x86ni_ctrcbc_keys", file: !30, line: 1647, baseType: !1388)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 1638, size: 2048, elements: !1389)
!1389 = !{!1390, !1391, !1395}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1388, file: !30, line: 1640, baseType: !164, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !1388, file: !30, line: 1644, baseType: !1392, size: 1920, offset: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !30, line: 1642, size: 1920, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "skni", scope: !1392, file: !30, line: 1643, baseType: !584, size: 1920)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !1388, file: !30, line: 1645, baseType: !38, size: 32, offset: 1984)
!1396 = !DILocalVariable(name: "ctx", arg: 1, scope: !1383, file: !135, line: 39, type: !1386)
!1397 = !DILocation(line: 0, scope: !1383)
!1398 = !DILocalVariable(name: "key", arg: 2, scope: !1383, file: !135, line: 40, type: !46)
!1399 = !DILocalVariable(name: "len", arg: 3, scope: !1383, file: !135, line: 40, type: !34)
!1400 = !DILocation(line: 42, column: 7, scope: !1383)
!1401 = !DILocation(line: 42, column: 14, scope: !1383)
!1402 = !DILocation(line: 43, column: 51, scope: !1383)
!1403 = !DILocation(line: 43, column: 56, scope: !1383)
!1404 = !DILocation(line: 43, column: 46, scope: !1383)
!1405 = !DILocation(line: 43, column: 20, scope: !1383)
!1406 = !DILocation(line: 43, column: 7, scope: !1383)
!1407 = !DILocation(line: 43, column: 18, scope: !1383)
!1408 = !DILocation(line: 44, column: 1, scope: !1383)
!1409 = distinct !DISubprogram(name: "br_aes_x86ni_ctrcbc_encrypt", scope: !135, file: !135, line: 308, type: !1410, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1412, !6, !6, !6, !34}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1414 = !DILocalVariable(name: "ctx", arg: 1, scope: !1409, file: !135, line: 308, type: !1412)
!1415 = !DILocation(line: 0, scope: !1409)
!1416 = !DILocalVariable(name: "ctr", arg: 2, scope: !1409, file: !135, line: 309, type: !6)
!1417 = !DILocalVariable(name: "cbcmac", arg: 3, scope: !1409, file: !135, line: 309, type: !6)
!1418 = !DILocalVariable(name: "data", arg: 4, scope: !1409, file: !135, line: 309, type: !6)
!1419 = !DILocalVariable(name: "len", arg: 5, scope: !1409, file: !135, line: 309, type: !34)
!1420 = !DILocalVariable(name: "sk", scope: !1409, file: !135, line: 313, type: !302)
!1421 = !DILocation(line: 313, column: 10, scope: !1409)
!1422 = !DILocation(line: 319, column: 20, scope: !1409)
!1423 = !DILocalVariable(name: "num_rounds", scope: !1409, file: !135, line: 312, type: !38)
!1424 = !DILocalVariable(name: "u", scope: !1409, file: !135, line: 316, type: !38)
!1425 = !DILocation(line: 320, column: 7, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1409, file: !135, line: 320, column: 2)
!1427 = !DILocation(line: 0, scope: !1426)
!1428 = !DILocation(line: 320, column: 16, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !135, line: 320, column: 2)
!1430 = !DILocation(line: 320, column: 2, scope: !1426)
!1431 = !DILocation(line: 321, column: 41, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !135, line: 320, column: 37)
!1433 = !DILocation(line: 321, column: 46, scope: !1432)
!1434 = !DILocation(line: 321, column: 36, scope: !1432)
!1435 = !DILocation(line: 321, column: 56, scope: !1432)
!1436 = !DILocation(line: 321, column: 51, scope: !1432)
!1437 = !DILocation(line: 321, column: 27, scope: !1432)
!1438 = !DILocation(line: 321, column: 11, scope: !1432)
!1439 = !DILocation(line: 321, column: 3, scope: !1432)
!1440 = !DILocation(line: 321, column: 9, scope: !1432)
!1441 = !DILocation(line: 322, column: 2, scope: !1432)
!1442 = !DILocation(line: 320, column: 33, scope: !1429)
!1443 = !DILocation(line: 320, column: 2, scope: !1429)
!1444 = distinct !{!1444, !1430, !1445, !565}
!1445 = !DILocation(line: 322, column: 2, scope: !1426)
!1446 = !DILocation(line: 327, column: 9, scope: !1409)
!1447 = !DILocalVariable(name: "erev", scope: !1409, file: !135, line: 315, type: !18)
!1448 = !DILocalVariable(name: "zero", scope: !1409, file: !135, line: 315, type: !18)
!1449 = !DILocation(line: 330, column: 8, scope: !1409)
!1450 = !DILocalVariable(name: "one", scope: !1409, file: !135, line: 315, type: !18)
!1451 = !DILocation(line: 335, column: 41, scope: !1409)
!1452 = !DILocation(line: 335, column: 25, scope: !1409)
!1453 = !DILocation(line: 335, column: 8, scope: !1409)
!1454 = !DILocalVariable(name: "ivx", scope: !1409, file: !135, line: 314, type: !18)
!1455 = !DILocation(line: 336, column: 24, scope: !1409)
!1456 = !DILocation(line: 336, column: 8, scope: !1409)
!1457 = !DILocalVariable(name: "cmx", scope: !1409, file: !135, line: 314, type: !18)
!1458 = !DILocalVariable(name: "buf", scope: !1409, file: !135, line: 311, type: !295)
!1459 = !DILocalVariable(name: "first_iter", scope: !1409, file: !135, line: 317, type: !96)
!1460 = !DILocation(line: 340, column: 2, scope: !1409)
!1461 = !DILocation(line: 340, column: 13, scope: !1409)
!1462 = !DILocation(line: 349, column: 24, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1409, file: !135, line: 340, column: 18)
!1464 = !DILocation(line: 349, column: 8, scope: !1463)
!1465 = !DILocalVariable(name: "dx", scope: !1463, file: !135, line: 341, type: !18)
!1466 = !DILocation(line: 0, scope: !1463)
!1467 = !DILocation(line: 350, column: 8, scope: !1463)
!1468 = !DILocalVariable(name: "x0", scope: !1463, file: !135, line: 341, type: !18)
!1469 = !DILocalVariable(name: "x1", scope: !1463, file: !135, line: 341, type: !18)
!1470 = !DILocation(line: 353, column: 26, scope: !1463)
!1471 = !DILocation(line: 353, column: 8, scope: !1463)
!1472 = !DILocation(line: 354, column: 26, scope: !1463)
!1473 = !DILocation(line: 354, column: 8, scope: !1463)
!1474 = !DILocation(line: 355, column: 29, scope: !1463)
!1475 = !DILocation(line: 355, column: 8, scope: !1463)
!1476 = !DILocation(line: 356, column: 29, scope: !1463)
!1477 = !DILocation(line: 356, column: 8, scope: !1463)
!1478 = !DILocation(line: 357, column: 29, scope: !1463)
!1479 = !DILocation(line: 357, column: 8, scope: !1463)
!1480 = !DILocation(line: 358, column: 29, scope: !1463)
!1481 = !DILocation(line: 358, column: 8, scope: !1463)
!1482 = !DILocation(line: 359, column: 29, scope: !1463)
!1483 = !DILocation(line: 359, column: 8, scope: !1463)
!1484 = !DILocation(line: 360, column: 29, scope: !1463)
!1485 = !DILocation(line: 360, column: 8, scope: !1463)
!1486 = !DILocation(line: 361, column: 29, scope: !1463)
!1487 = !DILocation(line: 361, column: 8, scope: !1463)
!1488 = !DILocation(line: 362, column: 29, scope: !1463)
!1489 = !DILocation(line: 362, column: 8, scope: !1463)
!1490 = !DILocation(line: 363, column: 29, scope: !1463)
!1491 = !DILocation(line: 363, column: 8, scope: !1463)
!1492 = !DILocation(line: 364, column: 29, scope: !1463)
!1493 = !DILocation(line: 364, column: 8, scope: !1463)
!1494 = !DILocation(line: 365, column: 29, scope: !1463)
!1495 = !DILocation(line: 365, column: 8, scope: !1463)
!1496 = !DILocation(line: 366, column: 29, scope: !1463)
!1497 = !DILocation(line: 366, column: 8, scope: !1463)
!1498 = !DILocation(line: 367, column: 29, scope: !1463)
!1499 = !DILocation(line: 367, column: 8, scope: !1463)
!1500 = !DILocation(line: 368, column: 29, scope: !1463)
!1501 = !DILocation(line: 368, column: 8, scope: !1463)
!1502 = !DILocation(line: 369, column: 29, scope: !1463)
!1503 = !DILocation(line: 369, column: 8, scope: !1463)
!1504 = !DILocation(line: 370, column: 29, scope: !1463)
!1505 = !DILocation(line: 370, column: 8, scope: !1463)
!1506 = !DILocation(line: 371, column: 29, scope: !1463)
!1507 = !DILocation(line: 371, column: 8, scope: !1463)
!1508 = !DILocation(line: 372, column: 29, scope: !1463)
!1509 = !DILocation(line: 372, column: 8, scope: !1463)
!1510 = !DILocation(line: 373, column: 18, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1463, file: !135, line: 373, column: 7)
!1512 = !DILocation(line: 373, column: 7, scope: !1463)
!1513 = !DILocation(line: 374, column: 34, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !135, line: 373, column: 25)
!1515 = !DILocation(line: 374, column: 9, scope: !1514)
!1516 = !DILocation(line: 375, column: 34, scope: !1514)
!1517 = !DILocation(line: 375, column: 9, scope: !1514)
!1518 = !DILocation(line: 376, column: 3, scope: !1514)
!1519 = !DILocation(line: 376, column: 25, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1511, file: !135, line: 376, column: 14)
!1521 = !DILocation(line: 376, column: 14, scope: !1511)
!1522 = !DILocation(line: 377, column: 30, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !135, line: 376, column: 32)
!1524 = !DILocation(line: 377, column: 9, scope: !1523)
!1525 = !DILocation(line: 378, column: 30, scope: !1523)
!1526 = !DILocation(line: 378, column: 9, scope: !1523)
!1527 = !DILocation(line: 379, column: 30, scope: !1523)
!1528 = !DILocation(line: 379, column: 9, scope: !1523)
!1529 = !DILocation(line: 380, column: 30, scope: !1523)
!1530 = !DILocation(line: 380, column: 9, scope: !1523)
!1531 = !DILocation(line: 381, column: 34, scope: !1523)
!1532 = !DILocation(line: 381, column: 9, scope: !1523)
!1533 = !DILocation(line: 382, column: 34, scope: !1523)
!1534 = !DILocation(line: 382, column: 9, scope: !1523)
!1535 = !DILocation(line: 383, column: 3, scope: !1523)
!1536 = !DILocation(line: 384, column: 30, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1520, file: !135, line: 383, column: 10)
!1538 = !DILocation(line: 384, column: 9, scope: !1537)
!1539 = !DILocation(line: 385, column: 30, scope: !1537)
!1540 = !DILocation(line: 385, column: 9, scope: !1537)
!1541 = !DILocation(line: 386, column: 30, scope: !1537)
!1542 = !DILocation(line: 386, column: 9, scope: !1537)
!1543 = !DILocation(line: 387, column: 30, scope: !1537)
!1544 = !DILocation(line: 387, column: 9, scope: !1537)
!1545 = !DILocation(line: 388, column: 30, scope: !1537)
!1546 = !DILocation(line: 388, column: 9, scope: !1537)
!1547 = !DILocation(line: 389, column: 30, scope: !1537)
!1548 = !DILocation(line: 389, column: 9, scope: !1537)
!1549 = !DILocation(line: 390, column: 30, scope: !1537)
!1550 = !DILocation(line: 390, column: 9, scope: !1537)
!1551 = !DILocation(line: 391, column: 30, scope: !1537)
!1552 = !DILocation(line: 391, column: 9, scope: !1537)
!1553 = !DILocation(line: 392, column: 34, scope: !1537)
!1554 = !DILocation(line: 392, column: 9, scope: !1537)
!1555 = !DILocation(line: 393, column: 34, scope: !1537)
!1556 = !DILocation(line: 393, column: 9, scope: !1537)
!1557 = !DILocation(line: 0, scope: !1520)
!1558 = !DILocation(line: 0, scope: !1511)
!1559 = !DILocation(line: 396, column: 8, scope: !1463)
!1560 = !DILocation(line: 397, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1463, file: !135, line: 397, column: 7)
!1562 = !DILocation(line: 397, column: 7, scope: !1463)
!1563 = !DILocation(line: 398, column: 10, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !135, line: 397, column: 19)
!1565 = !DILocation(line: 400, column: 3, scope: !1564)
!1566 = !DILocation(line: 401, column: 10, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1561, file: !135, line: 400, column: 10)
!1568 = !DILocation(line: 0, scope: !1561)
!1569 = !DILocation(line: 403, column: 20, scope: !1463)
!1570 = !DILocation(line: 403, column: 3, scope: !1463)
!1571 = !DILocation(line: 405, column: 7, scope: !1463)
!1572 = !DILocation(line: 406, column: 7, scope: !1463)
!1573 = !DILocation(line: 411, column: 9, scope: !1463)
!1574 = !DILocation(line: 413, column: 4, scope: !1463)
!1575 = !DILocation(line: 412, column: 9, scope: !1463)
!1576 = !DILocation(line: 419, column: 11, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1463, file: !135, line: 419, column: 7)
!1578 = !DILocation(line: 419, column: 7, scope: !1463)
!1579 = !DILocation(line: 420, column: 29, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !135, line: 419, column: 17)
!1581 = !DILocation(line: 420, column: 10, scope: !1580)
!1582 = !DILocation(line: 421, column: 32, scope: !1580)
!1583 = !DILocation(line: 421, column: 10, scope: !1580)
!1584 = !DILocation(line: 422, column: 32, scope: !1580)
!1585 = !DILocation(line: 422, column: 10, scope: !1580)
!1586 = !DILocation(line: 423, column: 32, scope: !1580)
!1587 = !DILocation(line: 423, column: 10, scope: !1580)
!1588 = !DILocation(line: 424, column: 32, scope: !1580)
!1589 = !DILocation(line: 424, column: 10, scope: !1580)
!1590 = !DILocation(line: 425, column: 32, scope: !1580)
!1591 = !DILocation(line: 425, column: 10, scope: !1580)
!1592 = !DILocation(line: 426, column: 32, scope: !1580)
!1593 = !DILocation(line: 426, column: 10, scope: !1580)
!1594 = !DILocation(line: 427, column: 32, scope: !1580)
!1595 = !DILocation(line: 427, column: 10, scope: !1580)
!1596 = !DILocation(line: 428, column: 32, scope: !1580)
!1597 = !DILocation(line: 428, column: 10, scope: !1580)
!1598 = !DILocation(line: 429, column: 32, scope: !1580)
!1599 = !DILocation(line: 429, column: 10, scope: !1580)
!1600 = !DILocation(line: 430, column: 19, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1580, file: !135, line: 430, column: 8)
!1602 = !DILocation(line: 430, column: 8, scope: !1580)
!1603 = !DILocation(line: 431, column: 37, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !135, line: 430, column: 26)
!1605 = !DILocation(line: 431, column: 11, scope: !1604)
!1606 = !DILocation(line: 432, column: 4, scope: !1604)
!1607 = !DILocation(line: 432, column: 26, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1601, file: !135, line: 432, column: 15)
!1609 = !DILocation(line: 432, column: 15, scope: !1601)
!1610 = !DILocation(line: 433, column: 33, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !135, line: 432, column: 33)
!1612 = !DILocation(line: 433, column: 11, scope: !1611)
!1613 = !DILocation(line: 434, column: 33, scope: !1611)
!1614 = !DILocation(line: 434, column: 11, scope: !1611)
!1615 = !DILocation(line: 435, column: 37, scope: !1611)
!1616 = !DILocation(line: 435, column: 11, scope: !1611)
!1617 = !DILocation(line: 436, column: 4, scope: !1611)
!1618 = !DILocation(line: 437, column: 33, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1608, file: !135, line: 436, column: 11)
!1620 = !DILocation(line: 437, column: 11, scope: !1619)
!1621 = !DILocation(line: 438, column: 33, scope: !1619)
!1622 = !DILocation(line: 438, column: 11, scope: !1619)
!1623 = !DILocation(line: 439, column: 33, scope: !1619)
!1624 = !DILocation(line: 439, column: 11, scope: !1619)
!1625 = !DILocation(line: 440, column: 33, scope: !1619)
!1626 = !DILocation(line: 440, column: 11, scope: !1619)
!1627 = !DILocation(line: 441, column: 37, scope: !1619)
!1628 = !DILocation(line: 441, column: 11, scope: !1619)
!1629 = !DILocation(line: 0, scope: !1608)
!1630 = !DILocation(line: 0, scope: !1601)
!1631 = !DILocation(line: 443, column: 4, scope: !1580)
!1632 = distinct !{!1632, !1460, !1633, !565}
!1633 = !DILocation(line: 445, column: 2, scope: !1409)
!1634 = !DILocation(line: 450, column: 19, scope: !1409)
!1635 = !DILocation(line: 450, column: 24, scope: !1409)
!1636 = !DILocation(line: 450, column: 2, scope: !1409)
!1637 = !DILocation(line: 451, column: 19, scope: !1409)
!1638 = !DILocation(line: 451, column: 2, scope: !1409)
!1639 = !DILocation(line: 452, column: 1, scope: !1409)
!1640 = distinct !DISubprogram(name: "br_aes_x86ni_ctrcbc_decrypt", scope: !135, file: !135, line: 457, type: !1410, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!1641 = !DILocalVariable(name: "ctx", arg: 1, scope: !1640, file: !135, line: 457, type: !1412)
!1642 = !DILocation(line: 0, scope: !1640)
!1643 = !DILocalVariable(name: "ctr", arg: 2, scope: !1640, file: !135, line: 458, type: !6)
!1644 = !DILocalVariable(name: "cbcmac", arg: 3, scope: !1640, file: !135, line: 458, type: !6)
!1645 = !DILocalVariable(name: "data", arg: 4, scope: !1640, file: !135, line: 458, type: !6)
!1646 = !DILocalVariable(name: "len", arg: 5, scope: !1640, file: !135, line: 458, type: !34)
!1647 = !DILocalVariable(name: "sk", scope: !1640, file: !135, line: 462, type: !302)
!1648 = !DILocation(line: 462, column: 10, scope: !1640)
!1649 = !DILocation(line: 467, column: 20, scope: !1640)
!1650 = !DILocalVariable(name: "num_rounds", scope: !1640, file: !135, line: 461, type: !38)
!1651 = !DILocalVariable(name: "u", scope: !1640, file: !135, line: 465, type: !38)
!1652 = !DILocation(line: 468, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1640, file: !135, line: 468, column: 2)
!1654 = !DILocation(line: 0, scope: !1653)
!1655 = !DILocation(line: 468, column: 16, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !135, line: 468, column: 2)
!1657 = !DILocation(line: 468, column: 2, scope: !1653)
!1658 = !DILocation(line: 469, column: 41, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1656, file: !135, line: 468, column: 37)
!1660 = !DILocation(line: 469, column: 46, scope: !1659)
!1661 = !DILocation(line: 469, column: 36, scope: !1659)
!1662 = !DILocation(line: 469, column: 56, scope: !1659)
!1663 = !DILocation(line: 469, column: 51, scope: !1659)
!1664 = !DILocation(line: 469, column: 27, scope: !1659)
!1665 = !DILocation(line: 469, column: 11, scope: !1659)
!1666 = !DILocation(line: 469, column: 3, scope: !1659)
!1667 = !DILocation(line: 469, column: 9, scope: !1659)
!1668 = !DILocation(line: 470, column: 2, scope: !1659)
!1669 = !DILocation(line: 468, column: 33, scope: !1656)
!1670 = !DILocation(line: 468, column: 2, scope: !1656)
!1671 = distinct !{!1671, !1657, !1672, !565}
!1672 = !DILocation(line: 470, column: 2, scope: !1653)
!1673 = !DILocation(line: 475, column: 9, scope: !1640)
!1674 = !DILocalVariable(name: "erev", scope: !1640, file: !135, line: 464, type: !18)
!1675 = !DILocalVariable(name: "zero", scope: !1640, file: !135, line: 464, type: !18)
!1676 = !DILocation(line: 478, column: 8, scope: !1640)
!1677 = !DILocalVariable(name: "one", scope: !1640, file: !135, line: 464, type: !18)
!1678 = !DILocation(line: 483, column: 41, scope: !1640)
!1679 = !DILocation(line: 483, column: 25, scope: !1640)
!1680 = !DILocation(line: 483, column: 8, scope: !1640)
!1681 = !DILocalVariable(name: "ivx", scope: !1640, file: !135, line: 463, type: !18)
!1682 = !DILocation(line: 484, column: 24, scope: !1640)
!1683 = !DILocation(line: 484, column: 8, scope: !1640)
!1684 = !DILocalVariable(name: "cmx", scope: !1640, file: !135, line: 463, type: !18)
!1685 = !DILocalVariable(name: "buf", scope: !1640, file: !135, line: 460, type: !295)
!1686 = !DILocation(line: 487, column: 2, scope: !1640)
!1687 = !DILocation(line: 487, column: 13, scope: !1640)
!1688 = !DILocation(line: 496, column: 24, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1640, file: !135, line: 487, column: 18)
!1690 = !DILocation(line: 496, column: 8, scope: !1689)
!1691 = !DILocalVariable(name: "dx", scope: !1689, file: !135, line: 488, type: !18)
!1692 = !DILocation(line: 0, scope: !1689)
!1693 = !DILocation(line: 497, column: 8, scope: !1689)
!1694 = !DILocalVariable(name: "x0", scope: !1689, file: !135, line: 488, type: !18)
!1695 = !DILocation(line: 498, column: 8, scope: !1689)
!1696 = !DILocalVariable(name: "x1", scope: !1689, file: !135, line: 488, type: !18)
!1697 = !DILocation(line: 500, column: 26, scope: !1689)
!1698 = !DILocation(line: 500, column: 8, scope: !1689)
!1699 = !DILocation(line: 501, column: 26, scope: !1689)
!1700 = !DILocation(line: 501, column: 8, scope: !1689)
!1701 = !DILocation(line: 502, column: 29, scope: !1689)
!1702 = !DILocation(line: 502, column: 8, scope: !1689)
!1703 = !DILocation(line: 503, column: 29, scope: !1689)
!1704 = !DILocation(line: 503, column: 8, scope: !1689)
!1705 = !DILocation(line: 504, column: 29, scope: !1689)
!1706 = !DILocation(line: 504, column: 8, scope: !1689)
!1707 = !DILocation(line: 505, column: 29, scope: !1689)
!1708 = !DILocation(line: 505, column: 8, scope: !1689)
!1709 = !DILocation(line: 506, column: 29, scope: !1689)
!1710 = !DILocation(line: 506, column: 8, scope: !1689)
!1711 = !DILocation(line: 507, column: 29, scope: !1689)
!1712 = !DILocation(line: 507, column: 8, scope: !1689)
!1713 = !DILocation(line: 508, column: 29, scope: !1689)
!1714 = !DILocation(line: 508, column: 8, scope: !1689)
!1715 = !DILocation(line: 509, column: 29, scope: !1689)
!1716 = !DILocation(line: 509, column: 8, scope: !1689)
!1717 = !DILocation(line: 510, column: 29, scope: !1689)
!1718 = !DILocation(line: 510, column: 8, scope: !1689)
!1719 = !DILocation(line: 511, column: 29, scope: !1689)
!1720 = !DILocation(line: 511, column: 8, scope: !1689)
!1721 = !DILocation(line: 512, column: 29, scope: !1689)
!1722 = !DILocation(line: 512, column: 8, scope: !1689)
!1723 = !DILocation(line: 513, column: 29, scope: !1689)
!1724 = !DILocation(line: 513, column: 8, scope: !1689)
!1725 = !DILocation(line: 514, column: 29, scope: !1689)
!1726 = !DILocation(line: 514, column: 8, scope: !1689)
!1727 = !DILocation(line: 515, column: 29, scope: !1689)
!1728 = !DILocation(line: 515, column: 8, scope: !1689)
!1729 = !DILocation(line: 516, column: 29, scope: !1689)
!1730 = !DILocation(line: 516, column: 8, scope: !1689)
!1731 = !DILocation(line: 517, column: 29, scope: !1689)
!1732 = !DILocation(line: 517, column: 8, scope: !1689)
!1733 = !DILocation(line: 518, column: 29, scope: !1689)
!1734 = !DILocation(line: 518, column: 8, scope: !1689)
!1735 = !DILocation(line: 519, column: 29, scope: !1689)
!1736 = !DILocation(line: 519, column: 8, scope: !1689)
!1737 = !DILocation(line: 520, column: 18, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1689, file: !135, line: 520, column: 7)
!1739 = !DILocation(line: 520, column: 7, scope: !1689)
!1740 = !DILocation(line: 521, column: 34, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !135, line: 520, column: 25)
!1742 = !DILocation(line: 521, column: 9, scope: !1741)
!1743 = !DILocation(line: 522, column: 34, scope: !1741)
!1744 = !DILocation(line: 522, column: 9, scope: !1741)
!1745 = !DILocation(line: 523, column: 3, scope: !1741)
!1746 = !DILocation(line: 523, column: 25, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1738, file: !135, line: 523, column: 14)
!1748 = !DILocation(line: 523, column: 14, scope: !1738)
!1749 = !DILocation(line: 524, column: 30, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !135, line: 523, column: 32)
!1751 = !DILocation(line: 524, column: 9, scope: !1750)
!1752 = !DILocation(line: 525, column: 30, scope: !1750)
!1753 = !DILocation(line: 525, column: 9, scope: !1750)
!1754 = !DILocation(line: 526, column: 30, scope: !1750)
!1755 = !DILocation(line: 526, column: 9, scope: !1750)
!1756 = !DILocation(line: 527, column: 30, scope: !1750)
!1757 = !DILocation(line: 527, column: 9, scope: !1750)
!1758 = !DILocation(line: 528, column: 34, scope: !1750)
!1759 = !DILocation(line: 528, column: 9, scope: !1750)
!1760 = !DILocation(line: 529, column: 34, scope: !1750)
!1761 = !DILocation(line: 529, column: 9, scope: !1750)
!1762 = !DILocation(line: 530, column: 3, scope: !1750)
!1763 = !DILocation(line: 531, column: 30, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1747, file: !135, line: 530, column: 10)
!1765 = !DILocation(line: 531, column: 9, scope: !1764)
!1766 = !DILocation(line: 532, column: 30, scope: !1764)
!1767 = !DILocation(line: 532, column: 9, scope: !1764)
!1768 = !DILocation(line: 533, column: 30, scope: !1764)
!1769 = !DILocation(line: 533, column: 9, scope: !1764)
!1770 = !DILocation(line: 534, column: 30, scope: !1764)
!1771 = !DILocation(line: 534, column: 9, scope: !1764)
!1772 = !DILocation(line: 535, column: 30, scope: !1764)
!1773 = !DILocation(line: 535, column: 9, scope: !1764)
!1774 = !DILocation(line: 536, column: 30, scope: !1764)
!1775 = !DILocation(line: 536, column: 9, scope: !1764)
!1776 = !DILocation(line: 537, column: 30, scope: !1764)
!1777 = !DILocation(line: 537, column: 9, scope: !1764)
!1778 = !DILocation(line: 538, column: 30, scope: !1764)
!1779 = !DILocation(line: 538, column: 9, scope: !1764)
!1780 = !DILocation(line: 539, column: 34, scope: !1764)
!1781 = !DILocation(line: 539, column: 9, scope: !1764)
!1782 = !DILocation(line: 540, column: 34, scope: !1764)
!1783 = !DILocation(line: 540, column: 9, scope: !1764)
!1784 = !DILocation(line: 0, scope: !1747)
!1785 = !DILocation(line: 0, scope: !1738)
!1786 = !DILocation(line: 542, column: 8, scope: !1689)
!1787 = !DILocation(line: 544, column: 20, scope: !1689)
!1788 = !DILocation(line: 544, column: 3, scope: !1689)
!1789 = !DILocation(line: 546, column: 7, scope: !1689)
!1790 = !DILocation(line: 547, column: 7, scope: !1689)
!1791 = !DILocation(line: 552, column: 9, scope: !1689)
!1792 = !DILocation(line: 554, column: 4, scope: !1689)
!1793 = !DILocation(line: 553, column: 9, scope: !1689)
!1794 = distinct !{!1794, !1686, !1795, !565}
!1795 = !DILocation(line: 555, column: 2, scope: !1640)
!1796 = !DILocation(line: 560, column: 19, scope: !1640)
!1797 = !DILocation(line: 560, column: 24, scope: !1640)
!1798 = !DILocation(line: 560, column: 2, scope: !1640)
!1799 = !DILocation(line: 561, column: 19, scope: !1640)
!1800 = !DILocation(line: 561, column: 2, scope: !1640)
!1801 = !DILocation(line: 562, column: 1, scope: !1640)
!1802 = distinct !DISubprogram(name: "br_aes_x86ni_ctrcbc_ctr", scope: !135, file: !135, line: 51, type: !1803, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !1412, !6, !6, !34}
!1805 = !DILocalVariable(name: "ctx", arg: 1, scope: !1802, file: !135, line: 51, type: !1412)
!1806 = !DILocation(line: 0, scope: !1802)
!1807 = !DILocalVariable(name: "ctr", arg: 2, scope: !1802, file: !135, line: 52, type: !6)
!1808 = !DILocalVariable(name: "data", arg: 3, scope: !1802, file: !135, line: 52, type: !6)
!1809 = !DILocalVariable(name: "len", arg: 4, scope: !1802, file: !135, line: 52, type: !34)
!1810 = !DILocalVariable(name: "sk", scope: !1802, file: !135, line: 56, type: !302)
!1811 = !DILocation(line: 56, column: 10, scope: !1802)
!1812 = !DILocalVariable(name: "buf", scope: !1802, file: !135, line: 54, type: !295)
!1813 = !DILocation(line: 62, column: 20, scope: !1802)
!1814 = !DILocalVariable(name: "num_rounds", scope: !1802, file: !135, line: 55, type: !38)
!1815 = !DILocalVariable(name: "u", scope: !1802, file: !135, line: 59, type: !38)
!1816 = !DILocation(line: 63, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1802, file: !135, line: 63, column: 2)
!1818 = !DILocation(line: 0, scope: !1817)
!1819 = !DILocation(line: 63, column: 16, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !135, line: 63, column: 2)
!1821 = !DILocation(line: 63, column: 2, scope: !1817)
!1822 = !DILocation(line: 64, column: 41, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !135, line: 63, column: 37)
!1824 = !DILocation(line: 64, column: 46, scope: !1823)
!1825 = !DILocation(line: 64, column: 36, scope: !1823)
!1826 = !DILocation(line: 64, column: 56, scope: !1823)
!1827 = !DILocation(line: 64, column: 51, scope: !1823)
!1828 = !DILocation(line: 64, column: 27, scope: !1823)
!1829 = !DILocation(line: 64, column: 11, scope: !1823)
!1830 = !DILocation(line: 64, column: 3, scope: !1823)
!1831 = !DILocation(line: 64, column: 9, scope: !1823)
!1832 = !DILocation(line: 65, column: 2, scope: !1823)
!1833 = !DILocation(line: 63, column: 33, scope: !1820)
!1834 = !DILocation(line: 63, column: 2, scope: !1820)
!1835 = distinct !{!1835, !1821, !1836, !565}
!1836 = !DILocation(line: 65, column: 2, scope: !1817)
!1837 = !DILocation(line: 70, column: 9, scope: !1802)
!1838 = !DILocalVariable(name: "erev", scope: !1802, file: !135, line: 58, type: !18)
!1839 = !DILocalVariable(name: "zero", scope: !1802, file: !135, line: 58, type: !18)
!1840 = !DILocation(line: 73, column: 8, scope: !1802)
!1841 = !DILocalVariable(name: "one", scope: !1802, file: !135, line: 58, type: !18)
!1842 = !DILocation(line: 74, column: 9, scope: !1802)
!1843 = !DILocalVariable(name: "four", scope: !1802, file: !135, line: 58, type: !18)
!1844 = !DILocation(line: 75, column: 13, scope: !1802)
!1845 = !DILocalVariable(name: "notthree", scope: !1802, file: !135, line: 58, type: !18)
!1846 = !DILocation(line: 81, column: 42, scope: !1802)
!1847 = !DILocation(line: 81, column: 26, scope: !1802)
!1848 = !DILocation(line: 81, column: 9, scope: !1802)
!1849 = !DILocalVariable(name: "ivx0", scope: !1802, file: !135, line: 57, type: !18)
!1850 = !DILocation(line: 82, column: 9, scope: !1802)
!1851 = !DILocalVariable(name: "ivx1", scope: !1802, file: !135, line: 57, type: !18)
!1852 = !DILocation(line: 84, column: 3, scope: !1802)
!1853 = !DILocation(line: 83, column: 9, scope: !1802)
!1854 = !DILocation(line: 85, column: 9, scope: !1802)
!1855 = !DILocalVariable(name: "ivx2", scope: !1802, file: !135, line: 57, type: !18)
!1856 = !DILocation(line: 87, column: 3, scope: !1802)
!1857 = !DILocation(line: 86, column: 9, scope: !1802)
!1858 = !DILocation(line: 88, column: 9, scope: !1802)
!1859 = !DILocalVariable(name: "ivx3", scope: !1802, file: !135, line: 57, type: !18)
!1860 = !DILocation(line: 90, column: 3, scope: !1802)
!1861 = !DILocation(line: 89, column: 9, scope: !1802)
!1862 = !DILocation(line: 91, column: 2, scope: !1802)
!1863 = !DILocation(line: 91, column: 13, scope: !1802)
!1864 = !DILocation(line: 98, column: 8, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1802, file: !135, line: 91, column: 18)
!1866 = !DILocalVariable(name: "x0", scope: !1865, file: !135, line: 92, type: !18)
!1867 = !DILocation(line: 0, scope: !1865)
!1868 = !DILocation(line: 99, column: 8, scope: !1865)
!1869 = !DILocalVariable(name: "x1", scope: !1865, file: !135, line: 92, type: !18)
!1870 = !DILocation(line: 100, column: 8, scope: !1865)
!1871 = !DILocalVariable(name: "x2", scope: !1865, file: !135, line: 92, type: !18)
!1872 = !DILocation(line: 101, column: 8, scope: !1865)
!1873 = !DILocalVariable(name: "x3", scope: !1865, file: !135, line: 92, type: !18)
!1874 = !DILocation(line: 103, column: 26, scope: !1865)
!1875 = !DILocation(line: 103, column: 8, scope: !1865)
!1876 = !DILocation(line: 104, column: 26, scope: !1865)
!1877 = !DILocation(line: 104, column: 8, scope: !1865)
!1878 = !DILocation(line: 105, column: 26, scope: !1865)
!1879 = !DILocation(line: 105, column: 8, scope: !1865)
!1880 = !DILocation(line: 106, column: 26, scope: !1865)
!1881 = !DILocation(line: 106, column: 8, scope: !1865)
!1882 = !DILocation(line: 107, column: 29, scope: !1865)
!1883 = !DILocation(line: 107, column: 8, scope: !1865)
!1884 = !DILocation(line: 108, column: 29, scope: !1865)
!1885 = !DILocation(line: 108, column: 8, scope: !1865)
!1886 = !DILocation(line: 109, column: 29, scope: !1865)
!1887 = !DILocation(line: 109, column: 8, scope: !1865)
!1888 = !DILocation(line: 110, column: 29, scope: !1865)
!1889 = !DILocation(line: 110, column: 8, scope: !1865)
!1890 = !DILocation(line: 111, column: 29, scope: !1865)
!1891 = !DILocation(line: 111, column: 8, scope: !1865)
!1892 = !DILocation(line: 112, column: 29, scope: !1865)
!1893 = !DILocation(line: 112, column: 8, scope: !1865)
!1894 = !DILocation(line: 113, column: 29, scope: !1865)
!1895 = !DILocation(line: 113, column: 8, scope: !1865)
!1896 = !DILocation(line: 114, column: 29, scope: !1865)
!1897 = !DILocation(line: 114, column: 8, scope: !1865)
!1898 = !DILocation(line: 115, column: 29, scope: !1865)
!1899 = !DILocation(line: 115, column: 8, scope: !1865)
!1900 = !DILocation(line: 116, column: 29, scope: !1865)
!1901 = !DILocation(line: 116, column: 8, scope: !1865)
!1902 = !DILocation(line: 117, column: 29, scope: !1865)
!1903 = !DILocation(line: 117, column: 8, scope: !1865)
!1904 = !DILocation(line: 118, column: 29, scope: !1865)
!1905 = !DILocation(line: 118, column: 8, scope: !1865)
!1906 = !DILocation(line: 119, column: 29, scope: !1865)
!1907 = !DILocation(line: 119, column: 8, scope: !1865)
!1908 = !DILocation(line: 120, column: 29, scope: !1865)
!1909 = !DILocation(line: 120, column: 8, scope: !1865)
!1910 = !DILocation(line: 121, column: 29, scope: !1865)
!1911 = !DILocation(line: 121, column: 8, scope: !1865)
!1912 = !DILocation(line: 122, column: 29, scope: !1865)
!1913 = !DILocation(line: 122, column: 8, scope: !1865)
!1914 = !DILocation(line: 123, column: 29, scope: !1865)
!1915 = !DILocation(line: 123, column: 8, scope: !1865)
!1916 = !DILocation(line: 124, column: 29, scope: !1865)
!1917 = !DILocation(line: 124, column: 8, scope: !1865)
!1918 = !DILocation(line: 125, column: 29, scope: !1865)
!1919 = !DILocation(line: 125, column: 8, scope: !1865)
!1920 = !DILocation(line: 126, column: 29, scope: !1865)
!1921 = !DILocation(line: 126, column: 8, scope: !1865)
!1922 = !DILocation(line: 127, column: 29, scope: !1865)
!1923 = !DILocation(line: 127, column: 8, scope: !1865)
!1924 = !DILocation(line: 128, column: 29, scope: !1865)
!1925 = !DILocation(line: 128, column: 8, scope: !1865)
!1926 = !DILocation(line: 129, column: 29, scope: !1865)
!1927 = !DILocation(line: 129, column: 8, scope: !1865)
!1928 = !DILocation(line: 130, column: 29, scope: !1865)
!1929 = !DILocation(line: 130, column: 8, scope: !1865)
!1930 = !DILocation(line: 131, column: 29, scope: !1865)
!1931 = !DILocation(line: 131, column: 8, scope: !1865)
!1932 = !DILocation(line: 132, column: 29, scope: !1865)
!1933 = !DILocation(line: 132, column: 8, scope: !1865)
!1934 = !DILocation(line: 133, column: 29, scope: !1865)
!1935 = !DILocation(line: 133, column: 8, scope: !1865)
!1936 = !DILocation(line: 134, column: 29, scope: !1865)
!1937 = !DILocation(line: 134, column: 8, scope: !1865)
!1938 = !DILocation(line: 135, column: 29, scope: !1865)
!1939 = !DILocation(line: 135, column: 8, scope: !1865)
!1940 = !DILocation(line: 136, column: 29, scope: !1865)
!1941 = !DILocation(line: 136, column: 8, scope: !1865)
!1942 = !DILocation(line: 137, column: 29, scope: !1865)
!1943 = !DILocation(line: 137, column: 8, scope: !1865)
!1944 = !DILocation(line: 138, column: 29, scope: !1865)
!1945 = !DILocation(line: 138, column: 8, scope: !1865)
!1946 = !DILocation(line: 139, column: 29, scope: !1865)
!1947 = !DILocation(line: 139, column: 8, scope: !1865)
!1948 = !DILocation(line: 140, column: 29, scope: !1865)
!1949 = !DILocation(line: 140, column: 8, scope: !1865)
!1950 = !DILocation(line: 141, column: 29, scope: !1865)
!1951 = !DILocation(line: 141, column: 8, scope: !1865)
!1952 = !DILocation(line: 142, column: 29, scope: !1865)
!1953 = !DILocation(line: 142, column: 8, scope: !1865)
!1954 = !DILocation(line: 143, column: 18, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1865, file: !135, line: 143, column: 7)
!1956 = !DILocation(line: 143, column: 7, scope: !1865)
!1957 = !DILocation(line: 144, column: 34, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !135, line: 143, column: 25)
!1959 = !DILocation(line: 144, column: 9, scope: !1958)
!1960 = !DILocation(line: 145, column: 34, scope: !1958)
!1961 = !DILocation(line: 145, column: 9, scope: !1958)
!1962 = !DILocation(line: 146, column: 34, scope: !1958)
!1963 = !DILocation(line: 146, column: 9, scope: !1958)
!1964 = !DILocation(line: 147, column: 34, scope: !1958)
!1965 = !DILocation(line: 147, column: 9, scope: !1958)
!1966 = !DILocation(line: 148, column: 3, scope: !1958)
!1967 = !DILocation(line: 148, column: 25, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1955, file: !135, line: 148, column: 14)
!1969 = !DILocation(line: 148, column: 14, scope: !1955)
!1970 = !DILocation(line: 149, column: 30, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !135, line: 148, column: 32)
!1972 = !DILocation(line: 149, column: 9, scope: !1971)
!1973 = !DILocation(line: 150, column: 30, scope: !1971)
!1974 = !DILocation(line: 150, column: 9, scope: !1971)
!1975 = !DILocation(line: 151, column: 30, scope: !1971)
!1976 = !DILocation(line: 151, column: 9, scope: !1971)
!1977 = !DILocation(line: 152, column: 30, scope: !1971)
!1978 = !DILocation(line: 152, column: 9, scope: !1971)
!1979 = !DILocation(line: 153, column: 30, scope: !1971)
!1980 = !DILocation(line: 153, column: 9, scope: !1971)
!1981 = !DILocation(line: 154, column: 30, scope: !1971)
!1982 = !DILocation(line: 154, column: 9, scope: !1971)
!1983 = !DILocation(line: 155, column: 30, scope: !1971)
!1984 = !DILocation(line: 155, column: 9, scope: !1971)
!1985 = !DILocation(line: 156, column: 30, scope: !1971)
!1986 = !DILocation(line: 156, column: 9, scope: !1971)
!1987 = !DILocation(line: 157, column: 34, scope: !1971)
!1988 = !DILocation(line: 157, column: 9, scope: !1971)
!1989 = !DILocation(line: 158, column: 34, scope: !1971)
!1990 = !DILocation(line: 158, column: 9, scope: !1971)
!1991 = !DILocation(line: 159, column: 34, scope: !1971)
!1992 = !DILocation(line: 159, column: 9, scope: !1971)
!1993 = !DILocation(line: 160, column: 34, scope: !1971)
!1994 = !DILocation(line: 160, column: 9, scope: !1971)
!1995 = !DILocation(line: 161, column: 3, scope: !1971)
!1996 = !DILocation(line: 162, column: 30, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1968, file: !135, line: 161, column: 10)
!1998 = !DILocation(line: 162, column: 9, scope: !1997)
!1999 = !DILocation(line: 163, column: 30, scope: !1997)
!2000 = !DILocation(line: 163, column: 9, scope: !1997)
!2001 = !DILocation(line: 164, column: 30, scope: !1997)
!2002 = !DILocation(line: 164, column: 9, scope: !1997)
!2003 = !DILocation(line: 165, column: 30, scope: !1997)
!2004 = !DILocation(line: 165, column: 9, scope: !1997)
!2005 = !DILocation(line: 166, column: 30, scope: !1997)
!2006 = !DILocation(line: 166, column: 9, scope: !1997)
!2007 = !DILocation(line: 167, column: 30, scope: !1997)
!2008 = !DILocation(line: 167, column: 9, scope: !1997)
!2009 = !DILocation(line: 168, column: 30, scope: !1997)
!2010 = !DILocation(line: 168, column: 9, scope: !1997)
!2011 = !DILocation(line: 169, column: 30, scope: !1997)
!2012 = !DILocation(line: 169, column: 9, scope: !1997)
!2013 = !DILocation(line: 170, column: 30, scope: !1997)
!2014 = !DILocation(line: 170, column: 9, scope: !1997)
!2015 = !DILocation(line: 171, column: 30, scope: !1997)
!2016 = !DILocation(line: 171, column: 9, scope: !1997)
!2017 = !DILocation(line: 172, column: 30, scope: !1997)
!2018 = !DILocation(line: 172, column: 9, scope: !1997)
!2019 = !DILocation(line: 173, column: 30, scope: !1997)
!2020 = !DILocation(line: 173, column: 9, scope: !1997)
!2021 = !DILocation(line: 174, column: 30, scope: !1997)
!2022 = !DILocation(line: 174, column: 9, scope: !1997)
!2023 = !DILocation(line: 175, column: 30, scope: !1997)
!2024 = !DILocation(line: 175, column: 9, scope: !1997)
!2025 = !DILocation(line: 176, column: 30, scope: !1997)
!2026 = !DILocation(line: 176, column: 9, scope: !1997)
!2027 = !DILocation(line: 177, column: 30, scope: !1997)
!2028 = !DILocation(line: 177, column: 9, scope: !1997)
!2029 = !DILocation(line: 178, column: 34, scope: !1997)
!2030 = !DILocation(line: 178, column: 9, scope: !1997)
!2031 = !DILocation(line: 179, column: 34, scope: !1997)
!2032 = !DILocation(line: 179, column: 9, scope: !1997)
!2033 = !DILocation(line: 180, column: 34, scope: !1997)
!2034 = !DILocation(line: 180, column: 9, scope: !1997)
!2035 = !DILocation(line: 181, column: 34, scope: !1997)
!2036 = !DILocation(line: 181, column: 9, scope: !1997)
!2037 = !DILocation(line: 0, scope: !1968)
!2038 = !DILocation(line: 0, scope: !1955)
!2039 = !DILocation(line: 183, column: 11, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1865, file: !135, line: 183, column: 7)
!2041 = !DILocation(line: 183, column: 7, scope: !1865)
!2042 = !DILocation(line: 185, column: 34, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2040, file: !135, line: 183, column: 18)
!2044 = !DILocation(line: 185, column: 21, scope: !2043)
!2045 = !DILocation(line: 185, column: 5, scope: !2043)
!2046 = !DILocation(line: 184, column: 9, scope: !2043)
!2047 = !DILocation(line: 187, column: 34, scope: !2043)
!2048 = !DILocation(line: 187, column: 21, scope: !2043)
!2049 = !DILocation(line: 187, column: 5, scope: !2043)
!2050 = !DILocation(line: 186, column: 9, scope: !2043)
!2051 = !DILocation(line: 189, column: 34, scope: !2043)
!2052 = !DILocation(line: 189, column: 21, scope: !2043)
!2053 = !DILocation(line: 189, column: 5, scope: !2043)
!2054 = !DILocation(line: 188, column: 9, scope: !2043)
!2055 = !DILocation(line: 191, column: 34, scope: !2043)
!2056 = !DILocation(line: 191, column: 21, scope: !2043)
!2057 = !DILocation(line: 191, column: 5, scope: !2043)
!2058 = !DILocation(line: 190, column: 9, scope: !2043)
!2059 = !DILocation(line: 192, column: 34, scope: !2043)
!2060 = !DILocation(line: 192, column: 21, scope: !2043)
!2061 = !DILocation(line: 192, column: 4, scope: !2043)
!2062 = !DILocation(line: 193, column: 34, scope: !2043)
!2063 = !DILocation(line: 193, column: 21, scope: !2043)
!2064 = !DILocation(line: 193, column: 4, scope: !2043)
!2065 = !DILocation(line: 194, column: 34, scope: !2043)
!2066 = !DILocation(line: 194, column: 21, scope: !2043)
!2067 = !DILocation(line: 194, column: 4, scope: !2043)
!2068 = !DILocation(line: 195, column: 34, scope: !2043)
!2069 = !DILocation(line: 195, column: 21, scope: !2043)
!2070 = !DILocation(line: 195, column: 4, scope: !2043)
!2071 = !DILocation(line: 196, column: 8, scope: !2043)
!2072 = !DILocation(line: 197, column: 8, scope: !2043)
!2073 = !DILocation(line: 198, column: 3, scope: !2043)
!2074 = !DILocalVariable(name: "tmp", scope: !2075, file: !135, line: 199, type: !1335)
!2075 = distinct !DILexicalBlock(scope: !2040, file: !135, line: 198, column: 10)
!2076 = !DILocation(line: 199, column: 18, scope: !2075)
!2077 = !DILocation(line: 201, column: 30, scope: !2075)
!2078 = !DILocation(line: 201, column: 34, scope: !2075)
!2079 = !DILocation(line: 201, column: 21, scope: !2075)
!2080 = !DILocation(line: 201, column: 4, scope: !2075)
!2081 = !DILocation(line: 202, column: 30, scope: !2075)
!2082 = !DILocation(line: 202, column: 34, scope: !2075)
!2083 = !DILocation(line: 202, column: 21, scope: !2075)
!2084 = !DILocation(line: 202, column: 4, scope: !2075)
!2085 = !DILocation(line: 203, column: 30, scope: !2075)
!2086 = !DILocation(line: 203, column: 34, scope: !2075)
!2087 = !DILocation(line: 203, column: 21, scope: !2075)
!2088 = !DILocation(line: 203, column: 4, scope: !2075)
!2089 = !DILocation(line: 204, column: 30, scope: !2075)
!2090 = !DILocation(line: 204, column: 34, scope: !2075)
!2091 = !DILocation(line: 204, column: 21, scope: !2075)
!2092 = !DILocation(line: 204, column: 4, scope: !2075)
!2093 = !DILocation(line: 205, column: 9, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2075, file: !135, line: 205, column: 4)
!2095 = !DILocation(line: 0, scope: !2094)
!2096 = !DILocation(line: 205, column: 16, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !135, line: 205, column: 4)
!2098 = !DILocation(line: 205, column: 18, scope: !2097)
!2099 = !DILocation(line: 205, column: 4, scope: !2094)
!2100 = !DILocation(line: 206, column: 15, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !135, line: 205, column: 31)
!2102 = !DILocation(line: 206, column: 5, scope: !2101)
!2103 = !DILocation(line: 206, column: 12, scope: !2101)
!2104 = !DILocation(line: 207, column: 4, scope: !2101)
!2105 = !DILocation(line: 205, column: 27, scope: !2097)
!2106 = !DILocation(line: 205, column: 4, scope: !2097)
!2107 = distinct !{!2107, !2099, !2108, !565}
!2108 = !DILocation(line: 207, column: 4, scope: !2094)
!2109 = !DILocation(line: 208, column: 4, scope: !2075)
!2110 = !DILocation(line: 211, column: 5, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2075, file: !135, line: 208, column: 17)
!2112 = !DILocation(line: 214, column: 5, scope: !2111)
!2113 = !DILocation(line: 217, column: 5, scope: !2111)
!2114 = !DILocation(line: 219, column: 4, scope: !2075)
!2115 = !DILocation(line: 229, column: 10, scope: !1865)
!2116 = !DILocation(line: 230, column: 10, scope: !1865)
!2117 = !DILocation(line: 231, column: 10, scope: !1865)
!2118 = !DILocation(line: 232, column: 10, scope: !1865)
!2119 = !DILocation(line: 234, column: 4, scope: !1865)
!2120 = !DILocation(line: 233, column: 10, scope: !1865)
!2121 = !DILocation(line: 237, column: 4, scope: !1865)
!2122 = !DILocation(line: 236, column: 10, scope: !1865)
!2123 = !DILocation(line: 240, column: 4, scope: !1865)
!2124 = !DILocation(line: 239, column: 10, scope: !1865)
!2125 = !DILocation(line: 243, column: 4, scope: !1865)
!2126 = !DILocation(line: 242, column: 10, scope: !1865)
!2127 = distinct !{!2127, !1862, !2128, !565}
!2128 = !DILocation(line: 245, column: 2, scope: !1802)
!2129 = !DILocation(line: 81, column: 7, scope: !1802)
!2130 = !DILocation(line: 251, column: 19, scope: !1802)
!2131 = !DILocation(line: 251, column: 32, scope: !1802)
!2132 = !DILocation(line: 251, column: 2, scope: !1802)
!2133 = !DILocation(line: 252, column: 1, scope: !1802)
!2134 = distinct !DISubprogram(name: "br_aes_x86ni_ctrcbc_mac", scope: !135, file: !135, line: 257, type: !2135, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !1412, !6, !46, !34}
!2137 = !DILocalVariable(name: "ctx", arg: 1, scope: !2134, file: !135, line: 257, type: !1412)
!2138 = !DILocation(line: 0, scope: !2134)
!2139 = !DILocalVariable(name: "cbcmac", arg: 2, scope: !2134, file: !135, line: 258, type: !6)
!2140 = !DILocalVariable(name: "data", arg: 3, scope: !2134, file: !135, line: 258, type: !46)
!2141 = !DILocalVariable(name: "len", arg: 4, scope: !2134, file: !135, line: 258, type: !34)
!2142 = !DILocalVariable(name: "sk", scope: !2134, file: !135, line: 262, type: !302)
!2143 = !DILocation(line: 262, column: 10, scope: !2134)
!2144 = !DILocalVariable(name: "buf", scope: !2134, file: !135, line: 260, type: !323)
!2145 = !DILocation(line: 266, column: 24, scope: !2134)
!2146 = !DILocation(line: 266, column: 8, scope: !2134)
!2147 = !DILocalVariable(name: "ivx", scope: !2134, file: !135, line: 262, type: !18)
!2148 = !DILocation(line: 267, column: 20, scope: !2134)
!2149 = !DILocalVariable(name: "num_rounds", scope: !2134, file: !135, line: 261, type: !38)
!2150 = !DILocalVariable(name: "u", scope: !2134, file: !135, line: 263, type: !38)
!2151 = !DILocation(line: 268, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2134, file: !135, line: 268, column: 2)
!2153 = !DILocation(line: 0, scope: !2152)
!2154 = !DILocation(line: 268, column: 16, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2152, file: !135, line: 268, column: 2)
!2156 = !DILocation(line: 268, column: 2, scope: !2152)
!2157 = !DILocation(line: 269, column: 41, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2155, file: !135, line: 268, column: 37)
!2159 = !DILocation(line: 269, column: 46, scope: !2158)
!2160 = !DILocation(line: 269, column: 36, scope: !2158)
!2161 = !DILocation(line: 269, column: 56, scope: !2158)
!2162 = !DILocation(line: 269, column: 51, scope: !2158)
!2163 = !DILocation(line: 269, column: 27, scope: !2158)
!2164 = !DILocation(line: 269, column: 11, scope: !2158)
!2165 = !DILocation(line: 269, column: 3, scope: !2158)
!2166 = !DILocation(line: 269, column: 9, scope: !2158)
!2167 = !DILocation(line: 270, column: 2, scope: !2158)
!2168 = !DILocation(line: 268, column: 33, scope: !2155)
!2169 = !DILocation(line: 268, column: 2, scope: !2155)
!2170 = distinct !{!2170, !2156, !2171, !565}
!2171 = !DILocation(line: 270, column: 2, scope: !2152)
!2172 = !DILocation(line: 271, column: 2, scope: !2134)
!2173 = !DILocation(line: 271, column: 13, scope: !2134)
!2174 = !DILocation(line: 274, column: 37, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2134, file: !135, line: 271, column: 18)
!2176 = !DILocation(line: 274, column: 21, scope: !2175)
!2177 = !DILocation(line: 274, column: 7, scope: !2175)
!2178 = !DILocalVariable(name: "x", scope: !2175, file: !135, line: 272, type: !18)
!2179 = !DILocation(line: 0, scope: !2175)
!2180 = !DILocation(line: 275, column: 24, scope: !2175)
!2181 = !DILocation(line: 275, column: 7, scope: !2175)
!2182 = !DILocation(line: 276, column: 27, scope: !2175)
!2183 = !DILocation(line: 276, column: 7, scope: !2175)
!2184 = !DILocation(line: 277, column: 27, scope: !2175)
!2185 = !DILocation(line: 277, column: 7, scope: !2175)
!2186 = !DILocation(line: 278, column: 27, scope: !2175)
!2187 = !DILocation(line: 278, column: 7, scope: !2175)
!2188 = !DILocation(line: 279, column: 27, scope: !2175)
!2189 = !DILocation(line: 279, column: 7, scope: !2175)
!2190 = !DILocation(line: 280, column: 27, scope: !2175)
!2191 = !DILocation(line: 280, column: 7, scope: !2175)
!2192 = !DILocation(line: 281, column: 27, scope: !2175)
!2193 = !DILocation(line: 281, column: 7, scope: !2175)
!2194 = !DILocation(line: 282, column: 27, scope: !2175)
!2195 = !DILocation(line: 282, column: 7, scope: !2175)
!2196 = !DILocation(line: 283, column: 27, scope: !2175)
!2197 = !DILocation(line: 283, column: 7, scope: !2175)
!2198 = !DILocation(line: 284, column: 27, scope: !2175)
!2199 = !DILocation(line: 284, column: 7, scope: !2175)
!2200 = !DILocation(line: 285, column: 18, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2175, file: !135, line: 285, column: 7)
!2202 = !DILocation(line: 285, column: 7, scope: !2175)
!2203 = !DILocation(line: 286, column: 32, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !135, line: 285, column: 25)
!2205 = !DILocation(line: 286, column: 8, scope: !2204)
!2206 = !DILocation(line: 287, column: 3, scope: !2204)
!2207 = !DILocation(line: 287, column: 25, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2201, file: !135, line: 287, column: 14)
!2209 = !DILocation(line: 287, column: 14, scope: !2201)
!2210 = !DILocation(line: 288, column: 28, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !135, line: 287, column: 32)
!2212 = !DILocation(line: 288, column: 8, scope: !2211)
!2213 = !DILocation(line: 289, column: 28, scope: !2211)
!2214 = !DILocation(line: 289, column: 8, scope: !2211)
!2215 = !DILocation(line: 290, column: 32, scope: !2211)
!2216 = !DILocation(line: 290, column: 8, scope: !2211)
!2217 = !DILocation(line: 291, column: 3, scope: !2211)
!2218 = !DILocation(line: 292, column: 28, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2208, file: !135, line: 291, column: 10)
!2220 = !DILocation(line: 292, column: 8, scope: !2219)
!2221 = !DILocation(line: 293, column: 28, scope: !2219)
!2222 = !DILocation(line: 293, column: 8, scope: !2219)
!2223 = !DILocation(line: 294, column: 28, scope: !2219)
!2224 = !DILocation(line: 294, column: 8, scope: !2219)
!2225 = !DILocation(line: 295, column: 28, scope: !2219)
!2226 = !DILocation(line: 295, column: 8, scope: !2219)
!2227 = !DILocation(line: 296, column: 32, scope: !2219)
!2228 = !DILocation(line: 296, column: 8, scope: !2219)
!2229 = !DILocation(line: 0, scope: !2208)
!2230 = !DILocation(line: 0, scope: !2201)
!2231 = !DILocation(line: 299, column: 7, scope: !2175)
!2232 = !DILocation(line: 300, column: 7, scope: !2175)
!2233 = distinct !{!2233, !2172, !2234, !565}
!2234 = !DILocation(line: 301, column: 2, scope: !2134)
!2235 = !DILocation(line: 302, column: 19, scope: !2134)
!2236 = !DILocation(line: 302, column: 2, scope: !2134)
!2237 = !DILocation(line: 303, column: 1, scope: !2134)
!2238 = distinct !DISubprogram(name: "br_aes_x86ni_ctrcbc_get_vtable", scope: !135, file: !135, line: 32, type: !2239, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !4)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!164}
!2241 = !DILocation(line: 34, column: 9, scope: !2238)
!2242 = !DILocation(line: 34, column: 2, scope: !2238)
!2243 = distinct !DISubprogram(name: "cbc_enc_wrapper", scope: !197, file: !197, line: 3, type: !2244, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !2246, !6, !6, !34}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2248)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_aes_x86ni_cbcenc_keys", file: !30, line: 1594, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 1585, size: 2048, elements: !2250)
!2250 = !{!2251, !2271, !2275}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !2249, file: !30, line: 1587, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2254)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcenc_class", file: !30, line: 393, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcenc_class_", file: !30, line: 394, size: 256, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2265}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !2255, file: !30, line: 399, baseType: !34, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !2255, file: !30, line: 404, baseType: !38, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !2255, file: !30, line: 410, baseType: !38, size: 32, offset: 96)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2255, file: !30, line: 423, baseType: !2261, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !2264, !46, !34}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2255, file: !30, line: 439, baseType: !2266, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !2269, !6, !6, !34}
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2252)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !2249, file: !30, line: 1591, baseType: !2272, size: 1920, offset: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !30, line: 1589, size: 1920, elements: !2273)
!2273 = !{!2274}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "skni", scope: !2272, file: !30, line: 1590, baseType: !584, size: 1920)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !2249, file: !30, line: 1592, baseType: !38, size: 32, offset: 1984)
!2276 = !DILocalVariable(name: "ctx", arg: 1, scope: !2243, file: !197, line: 3, type: !2246)
!2277 = !DILocation(line: 0, scope: !2243)
!2278 = !DILocalVariable(name: "iv", arg: 2, scope: !2243, file: !197, line: 4, type: !6)
!2279 = !DILocalVariable(name: "data", arg: 3, scope: !2243, file: !197, line: 4, type: !6)
!2280 = !DILocalVariable(name: "len", arg: 4, scope: !2243, file: !197, line: 4, type: !34)
!2281 = !DILocation(line: 5, column: 12, scope: !2243)
!2282 = !DILocation(line: 5, column: 2, scope: !2243)
!2283 = !DILocation(line: 6, column: 12, scope: !2243)
!2284 = !DILocation(line: 6, column: 2, scope: !2243)
!2285 = !DILocation(line: 7, column: 12, scope: !2243)
!2286 = !DILocation(line: 7, column: 2, scope: !2243)
!2287 = !DILocation(line: 8, column: 12, scope: !2243)
!2288 = !DILocation(line: 8, column: 2, scope: !2243)
!2289 = !DILocation(line: 14, column: 12, scope: !2243)
!2290 = !DILocation(line: 14, column: 2, scope: !2243)
!2291 = !DILocation(line: 15, column: 12, scope: !2243)
!2292 = !DILocation(line: 15, column: 2, scope: !2243)
!2293 = !DILocation(line: 17, column: 2, scope: !2243)
!2294 = !DILocation(line: 18, column: 1, scope: !2243)
!2295 = distinct !DISubprogram(name: "cbc_enc_wrapper_t", scope: !197, file: !197, line: 25, type: !2296, scopeLine: 25, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null}
!2298 = !DILocation(line: 26, column: 40, scope: !2295)
!2299 = !DILocalVariable(name: "ctx", scope: !2295, file: !197, line: 26, type: !2246)
!2300 = !DILocation(line: 0, scope: !2295)
!2301 = !DILocation(line: 27, column: 13, scope: !2295)
!2302 = !DILocalVariable(name: "iv", scope: !2295, file: !197, line: 27, type: !6)
!2303 = !DILocation(line: 28, column: 16, scope: !2295)
!2304 = !DILocalVariable(name: "data", scope: !2295, file: !197, line: 28, type: !6)
!2305 = !DILocation(line: 29, column: 17, scope: !2295)
!2306 = !DILocalVariable(name: "len", scope: !2295, file: !197, line: 29, type: !34)
!2307 = !DILocation(line: 30, column: 2, scope: !2295)
!2308 = !DILocation(line: 31, column: 1, scope: !2295)
