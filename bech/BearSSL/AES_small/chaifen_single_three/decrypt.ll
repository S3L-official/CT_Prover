; ModuleID = 'decrypt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.br_block_cbcdec_class_ = type { i64, i32, i32, void (%struct.br_block_cbcdec_class_**, i8*, i64)*, void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)* }
%struct.br_block_cbcenc_class_ = type { i64, i32, i32, void (%struct.br_block_cbcenc_class_**, i8*, i64)*, void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)* }
%struct.br_block_ctr_class_ = type { i64, i32, i32, void (%struct.br_block_ctr_class_**, i8*, i64)*, i32 (%struct.br_block_ctr_class_**, i8*, i32, i8*, i64)* }
%struct.br_block_ctrcbc_class_ = type { i64, i32, i32, void (%struct.br_block_ctrcbc_class_**, i8*, i64)*, void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)*, void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)*, void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)*, void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)* }
%struct.br_aes_small_cbcdec_keys = type { %struct.br_block_cbcdec_class_*, [60 x i32], i32 }
%struct.br_aes_small_cbcenc_keys = type { %struct.br_block_cbcenc_class_*, [60 x i32], i32 }
%struct.br_aes_small_ctr_keys = type { %struct.br_block_ctr_class_*, [60 x i32], i32 }
%struct.br_aes_small_ctrcbc_keys = type { %struct.br_block_ctrcbc_class_*, [60 x i32], i32 }
%struct.smack_value = type { i8* }

@br_aes_small_cbcdec_vtable = dso_local constant %struct.br_block_cbcdec_class_ { i64 256, i32 16, i32 4, void (%struct.br_block_cbcdec_class_**, i8*, i64)* bitcast (void (%struct.br_aes_small_cbcdec_keys*, i8*, i64)* @br_aes_small_cbcdec_init to void (%struct.br_block_cbcdec_class_**, i8*, i64)*), void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_aes_small_cbcdec_keys*, i8*, i8*, i64)* @br_aes_small_cbcdec_run to void (%struct.br_block_cbcdec_class_**, i8*, i8*, i64)*) }, align 8, !dbg !0
@br_aes_small_cbcenc_vtable = dso_local constant %struct.br_block_cbcenc_class_ { i64 256, i32 16, i32 4, void (%struct.br_block_cbcenc_class_**, i8*, i64)* bitcast (void (%struct.br_aes_small_cbcenc_keys*, i8*, i64)* @br_aes_small_cbcenc_init to void (%struct.br_block_cbcenc_class_**, i8*, i64)*), void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_aes_small_cbcenc_keys*, i8*, i8*, i64)* @br_aes_small_cbcenc_run to void (%struct.br_block_cbcenc_class_**, i8*, i8*, i64)*) }, align 8, !dbg !33
@br_aes_small_ctr_vtable = dso_local constant %struct.br_block_ctr_class_ { i64 256, i32 16, i32 4, void (%struct.br_block_ctr_class_**, i8*, i64)* bitcast (void (%struct.br_aes_small_ctr_keys*, i8*, i64)* @br_aes_small_ctr_init to void (%struct.br_block_ctr_class_**, i8*, i64)*), i32 (%struct.br_block_ctr_class_**, i8*, i32, i8*, i64)* bitcast (i32 (%struct.br_aes_small_ctr_keys*, i8*, i32, i8*, i64)* @br_aes_small_ctr_run to i32 (%struct.br_block_ctr_class_**, i8*, i32, i8*, i64)*) }, align 8, !dbg !57
@br_aes_small_ctrcbc_vtable = dso_local constant %struct.br_block_ctrcbc_class_ { i64 256, i32 16, i32 4, void (%struct.br_block_ctrcbc_class_**, i8*, i64)* bitcast (void (%struct.br_aes_small_ctrcbc_keys*, i8*, i64)* @br_aes_small_ctrcbc_init to void (%struct.br_block_ctrcbc_class_**, i8*, i64)*), void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)* bitcast (void (%struct.br_aes_small_ctrcbc_keys*, i8*, i8*, i8*, i64)* @br_aes_small_ctrcbc_encrypt to void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)*), void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)* bitcast (void (%struct.br_aes_small_ctrcbc_keys*, i8*, i8*, i8*, i64)* @br_aes_small_ctrcbc_decrypt to void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i8*, i64)*), void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_aes_small_ctrcbc_keys*, i8*, i8*, i64)* @br_aes_small_ctrcbc_ctr to void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)*), void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)* bitcast (void (%struct.br_aes_small_ctrcbc_keys*, i8*, i8*, i64)* @br_aes_small_ctrcbc_mac to void (%struct.br_block_ctrcbc_class_**, i8*, i8*, i64)*) }, align 8, !dbg !87
@iS = internal constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\\\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16, !dbg !121
@br_aes_S = external dso_local constant [0 x i8], align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_cbcdec_init(%struct.br_aes_small_cbcdec_keys* %0, i8* %1, i64 %2) #0 !dbg !141 {
  call void @llvm.dbg.value(metadata %struct.br_aes_small_cbcdec_keys* %0, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i8* %1, metadata !156, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i64 %2, metadata !157, metadata !DIExpression()), !dbg !155
  %4 = getelementptr inbounds %struct.br_aes_small_cbcdec_keys, %struct.br_aes_small_cbcdec_keys* %0, i32 0, i32 0, !dbg !158
  store %struct.br_block_cbcdec_class_* @br_aes_small_cbcdec_vtable, %struct.br_block_cbcdec_class_** %4, align 8, !dbg !159
  %5 = getelementptr inbounds %struct.br_aes_small_cbcdec_keys, %struct.br_aes_small_cbcdec_keys* %0, i32 0, i32 1, !dbg !160
  %6 = getelementptr inbounds [60 x i32], [60 x i32]* %5, i64 0, i64 0, !dbg !161
  %7 = call i32 @br_aes_keysched(i32* %6, i8* %1, i64 %2), !dbg !162
  %8 = getelementptr inbounds %struct.br_aes_small_cbcdec_keys, %struct.br_aes_small_cbcdec_keys* %0, i32 0, i32 2, !dbg !163
  store i32 %7, i32* %8, align 8, !dbg !164
  ret void, !dbg !165
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_cbcdec_run(%struct.br_aes_small_cbcdec_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !166 {
  %5 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.br_aes_small_cbcdec_keys* %0, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i8* %1, metadata !173, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i8* %2, metadata !174, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %3, metadata !175, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i8* %1, metadata !176, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i8* %2, metadata !178, metadata !DIExpression()), !dbg !172
  br label %6, !dbg !179

6:                                                ; preds = %29, %4
  %.02 = phi i64 [ %3, %4 ], [ %32, %29 ]
  %.01 = phi i8* [ %2, %4 ], [ %31, %29 ], !dbg !172
  call void @llvm.dbg.value(metadata i8* %.01, metadata !178, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i64 %.02, metadata !175, metadata !DIExpression()), !dbg !172
  %7 = icmp ugt i64 %.02, 0, !dbg !180
  br i1 %7, label %8, label %33, !dbg !179

8:                                                ; preds = %6
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !181, metadata !DIExpression()), !dbg !186
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 1 %.01, i64 16, i1 false), !dbg !187
  %10 = getelementptr inbounds %struct.br_aes_small_cbcdec_keys, %struct.br_aes_small_cbcdec_keys* %0, i32 0, i32 2, !dbg !188
  %11 = load i32, i32* %10, align 8, !dbg !188
  %12 = getelementptr inbounds %struct.br_aes_small_cbcdec_keys, %struct.br_aes_small_cbcdec_keys* %0, i32 0, i32 1, !dbg !189
  %13 = getelementptr inbounds [60 x i32], [60 x i32]* %12, i64 0, i64 0, !dbg !190
  call void @br_aes_small_decrypt(i32 %11, i32* %13, i8* %.01), !dbg !191
  call void @llvm.dbg.value(metadata i32 0, metadata !192, metadata !DIExpression()), !dbg !193
  br label %14, !dbg !194

14:                                               ; preds = %27, %8
  %.0 = phi i32 [ 0, %8 ], [ %28, %27 ], !dbg !196
  call void @llvm.dbg.value(metadata i32 %.0, metadata !192, metadata !DIExpression()), !dbg !193
  %15 = icmp slt i32 %.0, 16, !dbg !197
  br i1 %15, label %16, label %29, !dbg !199

16:                                               ; preds = %14
  %17 = sext i32 %.0 to i64, !dbg !200
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !200
  %19 = load i8, i8* %18, align 1, !dbg !200
  %20 = zext i8 %19 to i32, !dbg !200
  %21 = sext i32 %.0 to i64, !dbg !202
  %22 = getelementptr inbounds i8, i8* %.01, i64 %21, !dbg !202
  %23 = load i8, i8* %22, align 1, !dbg !203
  %24 = zext i8 %23 to i32, !dbg !203
  %25 = xor i32 %24, %20, !dbg !203
  %26 = trunc i32 %25 to i8, !dbg !203
  store i8 %26, i8* %22, align 1, !dbg !203
  br label %27, !dbg !204

27:                                               ; preds = %16
  %28 = add nsw i32 %.0, 1, !dbg !205
  call void @llvm.dbg.value(metadata i32 %28, metadata !192, metadata !DIExpression()), !dbg !193
  br label %14, !dbg !206, !llvm.loop !207

29:                                               ; preds = %14
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !210
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 16 %30, i64 16, i1 false), !dbg !210
  %31 = getelementptr inbounds i8, i8* %.01, i64 16, !dbg !211
  call void @llvm.dbg.value(metadata i8* %31, metadata !178, metadata !DIExpression()), !dbg !172
  %32 = sub i64 %.02, 16, !dbg !212
  call void @llvm.dbg.value(metadata i64 %32, metadata !175, metadata !DIExpression()), !dbg !172
  br label %6, !dbg !179, !llvm.loop !213

33:                                               ; preds = %6
  ret void, !dbg !215
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @br_aes_keysched(i32*, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_cbcenc_init(%struct.br_aes_small_cbcenc_keys* %0, i8* %1, i64 %2) #0 !dbg !216 {
  call void @llvm.dbg.value(metadata %struct.br_aes_small_cbcenc_keys* %0, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i8* %1, metadata !228, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i64 %2, metadata !229, metadata !DIExpression()), !dbg !227
  %4 = getelementptr inbounds %struct.br_aes_small_cbcenc_keys, %struct.br_aes_small_cbcenc_keys* %0, i32 0, i32 0, !dbg !230
  store %struct.br_block_cbcenc_class_* @br_aes_small_cbcenc_vtable, %struct.br_block_cbcenc_class_** %4, align 8, !dbg !231
  %5 = getelementptr inbounds %struct.br_aes_small_cbcenc_keys, %struct.br_aes_small_cbcenc_keys* %0, i32 0, i32 1, !dbg !232
  %6 = getelementptr inbounds [60 x i32], [60 x i32]* %5, i64 0, i64 0, !dbg !233
  %7 = call i32 @br_aes_keysched(i32* %6, i8* %1, i64 %2), !dbg !234
  %8 = getelementptr inbounds %struct.br_aes_small_cbcenc_keys, %struct.br_aes_small_cbcenc_keys* %0, i32 0, i32 2, !dbg !235
  store i32 %7, i32* %8, align 8, !dbg !236
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_cbcenc_run(%struct.br_aes_small_cbcenc_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !238 {
  call void @llvm.dbg.value(metadata %struct.br_aes_small_cbcenc_keys* %0, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8* %1, metadata !245, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8* %2, metadata !246, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i64 %3, metadata !247, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8* %1, metadata !248, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i8* %2, metadata !249, metadata !DIExpression()), !dbg !244
  br label %5, !dbg !250

5:                                                ; preds = %23, %4
  %.02 = phi i64 [ %3, %4 ], [ %29, %23 ]
  %.01 = phi i8* [ %2, %4 ], [ %28, %23 ], !dbg !244
  call void @llvm.dbg.value(metadata i8* %.01, metadata !249, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i64 %.02, metadata !247, metadata !DIExpression()), !dbg !244
  %6 = icmp ugt i64 %.02, 0, !dbg !251
  br i1 %6, label %7, label %30, !dbg !250

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32 0, metadata !252, metadata !DIExpression()), !dbg !254
  br label %8, !dbg !255

8:                                                ; preds = %21, %7
  %.0 = phi i32 [ 0, %7 ], [ %22, %21 ], !dbg !257
  call void @llvm.dbg.value(metadata i32 %.0, metadata !252, metadata !DIExpression()), !dbg !254
  %9 = icmp slt i32 %.0, 16, !dbg !258
  br i1 %9, label %10, label %23, !dbg !260

10:                                               ; preds = %8
  %11 = sext i32 %.0 to i64, !dbg !261
  %12 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !261
  %13 = load i8, i8* %12, align 1, !dbg !261
  %14 = zext i8 %13 to i32, !dbg !261
  %15 = sext i32 %.0 to i64, !dbg !263
  %16 = getelementptr inbounds i8, i8* %.01, i64 %15, !dbg !263
  %17 = load i8, i8* %16, align 1, !dbg !264
  %18 = zext i8 %17 to i32, !dbg !264
  %19 = xor i32 %18, %14, !dbg !264
  %20 = trunc i32 %19 to i8, !dbg !264
  store i8 %20, i8* %16, align 1, !dbg !264
  br label %21, !dbg !265

21:                                               ; preds = %10
  %22 = add nsw i32 %.0, 1, !dbg !266
  call void @llvm.dbg.value(metadata i32 %22, metadata !252, metadata !DIExpression()), !dbg !254
  br label %8, !dbg !267, !llvm.loop !268

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.br_aes_small_cbcenc_keys, %struct.br_aes_small_cbcenc_keys* %0, i32 0, i32 2, !dbg !270
  %25 = load i32, i32* %24, align 8, !dbg !270
  %26 = getelementptr inbounds %struct.br_aes_small_cbcenc_keys, %struct.br_aes_small_cbcenc_keys* %0, i32 0, i32 1, !dbg !271
  %27 = getelementptr inbounds [60 x i32], [60 x i32]* %26, i64 0, i64 0, !dbg !272
  call void @br_aes_small_encrypt(i32 %25, i32* %27, i8* %.01), !dbg !273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %.01, i64 16, i1 false), !dbg !274
  %28 = getelementptr inbounds i8, i8* %.01, i64 16, !dbg !275
  call void @llvm.dbg.value(metadata i8* %28, metadata !249, metadata !DIExpression()), !dbg !244
  %29 = sub i64 %.02, 16, !dbg !276
  call void @llvm.dbg.value(metadata i64 %29, metadata !247, metadata !DIExpression()), !dbg !244
  br label %5, !dbg !250, !llvm.loop !277

30:                                               ; preds = %5
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_ctr_init(%struct.br_aes_small_ctr_keys* %0, i8* %1, i64 %2) #0 !dbg !280 {
  call void @llvm.dbg.value(metadata %struct.br_aes_small_ctr_keys* %0, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i8* %1, metadata !292, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i64 %2, metadata !293, metadata !DIExpression()), !dbg !291
  %4 = getelementptr inbounds %struct.br_aes_small_ctr_keys, %struct.br_aes_small_ctr_keys* %0, i32 0, i32 0, !dbg !294
  store %struct.br_block_ctr_class_* @br_aes_small_ctr_vtable, %struct.br_block_ctr_class_** %4, align 8, !dbg !295
  %5 = getelementptr inbounds %struct.br_aes_small_ctr_keys, %struct.br_aes_small_ctr_keys* %0, i32 0, i32 1, !dbg !296
  %6 = getelementptr inbounds [60 x i32], [60 x i32]* %5, i64 0, i64 0, !dbg !297
  %7 = call i32 @br_aes_keysched(i32* %6, i8* %1, i64 %2), !dbg !298
  %8 = getelementptr inbounds %struct.br_aes_small_ctr_keys, %struct.br_aes_small_ctr_keys* %0, i32 0, i32 2, !dbg !299
  store i32 %7, i32* %8, align 8, !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_small_ctr_run(%struct.br_aes_small_ctr_keys* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 !dbg !302 {
  %6 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.br_aes_small_ctr_keys* %0, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i8* %1, metadata !309, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %2, metadata !310, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i8* %3, metadata !311, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %4, metadata !312, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i8* %3, metadata !313, metadata !DIExpression()), !dbg !308
  br label %7, !dbg !314

7:                                                ; preds = %22, %5
  %.02 = phi i32 [ %2, %5 ], [ %13, %22 ]
  %.01 = phi i64 [ %4, %5 ], [ %25, %22 ]
  %.0 = phi i8* [ %3, %5 ], [ %24, %22 ], !dbg !308
  call void @llvm.dbg.value(metadata i8* %.0, metadata !313, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i64 %.01, metadata !312, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %.02, metadata !310, metadata !DIExpression()), !dbg !308
  %8 = icmp ugt i64 %.01, 0, !dbg !315
  br i1 %8, label %9, label %26, !dbg !314

9:                                                ; preds = %7
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !316, metadata !DIExpression()), !dbg !318
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !319
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 1 %1, i64 12, i1 false), !dbg !319
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !320
  %12 = getelementptr inbounds i8, i8* %11, i64 12, !dbg !321
  %13 = add i32 %.02, 1, !dbg !322
  call void @llvm.dbg.value(metadata i32 %13, metadata !310, metadata !DIExpression()), !dbg !308
  call void @br_enc32be(i8* %12, i32 %.02), !dbg !323
  %14 = getelementptr inbounds %struct.br_aes_small_ctr_keys, %struct.br_aes_small_ctr_keys* %0, i32 0, i32 2, !dbg !324
  %15 = load i32, i32* %14, align 8, !dbg !324
  %16 = getelementptr inbounds %struct.br_aes_small_ctr_keys, %struct.br_aes_small_ctr_keys* %0, i32 0, i32 1, !dbg !325
  %17 = getelementptr inbounds [60 x i32], [60 x i32]* %16, i64 0, i64 0, !dbg !326
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !327
  call void @br_aes_small_encrypt(i32 %15, i32* %17, i8* %18), !dbg !328
  %19 = icmp ule i64 %.01, 16, !dbg !329
  br i1 %19, label %20, label %22, !dbg !331

20:                                               ; preds = %9
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !332
  call void @xorbuf(i8* %.0, i8* %21, i64 %.01), !dbg !334
  br label %26, !dbg !335

22:                                               ; preds = %9
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0, !dbg !336
  call void @xorbuf(i8* %.0, i8* %23, i64 16), !dbg !337
  %24 = getelementptr inbounds i8, i8* %.0, i64 16, !dbg !338
  call void @llvm.dbg.value(metadata i8* %24, metadata !313, metadata !DIExpression()), !dbg !308
  %25 = sub i64 %.01, 16, !dbg !339
  call void @llvm.dbg.value(metadata i64 %25, metadata !312, metadata !DIExpression()), !dbg !308
  br label %7, !dbg !314, !llvm.loop !340

26:                                               ; preds = %20, %7
  %.1 = phi i32 [ %13, %20 ], [ %.02, %7 ]
  call void @llvm.dbg.value(metadata i32 %.1, metadata !310, metadata !DIExpression()), !dbg !308
  ret i32 %.1, !dbg !342
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !343 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i32 %1, metadata !349, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i8* %0, metadata !350, metadata !DIExpression()), !dbg !348
  %3 = lshr i32 %1, 24, !dbg !351
  %4 = trunc i32 %3 to i8, !dbg !352
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !353
  store i8 %4, i8* %5, align 1, !dbg !354
  %6 = lshr i32 %1, 16, !dbg !355
  %7 = trunc i32 %6 to i8, !dbg !356
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !357
  store i8 %7, i8* %8, align 1, !dbg !358
  %9 = lshr i32 %1, 8, !dbg !359
  %10 = trunc i32 %9 to i8, !dbg !360
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !361
  store i8 %10, i8* %11, align 1, !dbg !362
  %12 = trunc i32 %1 to i8, !dbg !363
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !364
  store i8 %12, i8* %13, align 1, !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind uwtable
define internal void @xorbuf(i8* %0, i8* %1, i64 %2) #0 !dbg !367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %1, metadata !372, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64 %2, metadata !373, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %0, metadata !374, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %1, metadata !375, metadata !DIExpression()), !dbg !371
  br label %4, !dbg !377

4:                                                ; preds = %7, %3
  %.02 = phi i64 [ %2, %3 ], [ %5, %7 ]
  %.01 = phi i8* [ %0, %3 ], [ %11, %7 ], !dbg !371
  %.0 = phi i8* [ %1, %3 ], [ %8, %7 ], !dbg !371
  call void @llvm.dbg.value(metadata i8* %.0, metadata !375, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i8* %.01, metadata !374, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata i64 %.02, metadata !373, metadata !DIExpression()), !dbg !371
  %5 = add i64 %.02, -1, !dbg !378
  call void @llvm.dbg.value(metadata i64 %5, metadata !373, metadata !DIExpression()), !dbg !371
  %6 = icmp ugt i64 %.02, 0, !dbg !379
  br i1 %6, label %7, label %16, !dbg !377

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !380
  call void @llvm.dbg.value(metadata i8* %8, metadata !375, metadata !DIExpression()), !dbg !371
  %9 = load i8, i8* %.0, align 1, !dbg !382
  %10 = zext i8 %9 to i32, !dbg !382
  %11 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !383
  call void @llvm.dbg.value(metadata i8* %11, metadata !374, metadata !DIExpression()), !dbg !371
  %12 = load i8, i8* %.01, align 1, !dbg !384
  %13 = zext i8 %12 to i32, !dbg !384
  %14 = xor i32 %13, %10, !dbg !384
  %15 = trunc i32 %14 to i8, !dbg !384
  store i8 %15, i8* %.01, align 1, !dbg !384
  br label %4, !dbg !377, !llvm.loop !385

16:                                               ; preds = %4
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_ctrcbc_init(%struct.br_aes_small_ctrcbc_keys* %0, i8* %1, i64 %2) #0 !dbg !388 {
  call void @llvm.dbg.value(metadata %struct.br_aes_small_ctrcbc_keys* %0, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i8* %1, metadata !400, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i64 %2, metadata !401, metadata !DIExpression()), !dbg !399
  %4 = getelementptr inbounds %struct.br_aes_small_ctrcbc_keys, %struct.br_aes_small_ctrcbc_keys* %0, i32 0, i32 0, !dbg !402
  store %struct.br_block_ctrcbc_class_* @br_aes_small_ctrcbc_vtable, %struct.br_block_ctrcbc_class_** %4, align 8, !dbg !403
  %5 = getelementptr inbounds %struct.br_aes_small_ctrcbc_keys, %struct.br_aes_small_ctrcbc_keys* %0, i32 0, i32 1, !dbg !404
  %6 = getelementptr inbounds [60 x i32], [60 x i32]* %5, i64 0, i64 0, !dbg !405
  %7 = call i32 @br_aes_keysched(i32* %6, i8* %1, i64 %2), !dbg !406
  %8 = getelementptr inbounds %struct.br_aes_small_ctrcbc_keys, %struct.br_aes_small_ctrcbc_keys* %0, i32 0, i32 2, !dbg !407
  store i32 %7, i32* %8, align 8, !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_ctrcbc_encrypt(%struct.br_aes_small_ctrcbc_keys* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 !dbg !410 {
  call void @llvm.dbg.value(metadata %struct.br_aes_small_ctrcbc_keys* %0, metadata !415, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i8* %1, metadata !417, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i8* %2, metadata !418, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i8* %3, metadata !419, metadata !DIExpression()), !dbg !416
  call void @llvm.dbg.value(metadata i64 %4, metadata !420, metadata !DIExpression()), !dbg !416
  call void @br_aes_small_ctrcbc_ctr(%struct.br_aes_small_ctrcbc_keys* %0, i8* %1, i8* %3, i64 %4), !dbg !421
  call void @br_aes_small_ctrcbc_mac(%struct.br_aes_small_ctrcbc_keys* %0, i8* %2, i8* %3, i64 %4), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_ctrcbc_decrypt(%struct.br_aes_small_ctrcbc_keys* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 !dbg !424 {
  call void @llvm.dbg.value(metadata %struct.br_aes_small_ctrcbc_keys* %0, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i8* %1, metadata !427, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i8* %2, metadata !428, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i8* %3, metadata !429, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata i64 %4, metadata !430, metadata !DIExpression()), !dbg !426
  call void @br_aes_small_ctrcbc_mac(%struct.br_aes_small_ctrcbc_keys* %0, i8* %2, i8* %3, i64 %4), !dbg !431
  call void @br_aes_small_ctrcbc_ctr(%struct.br_aes_small_ctrcbc_keys* %0, i8* %1, i8* %3, i64 %4), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_ctrcbc_ctr(%struct.br_aes_small_ctrcbc_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !434 {
  %5 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.br_aes_small_ctrcbc_keys* %0, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i8* %1, metadata !439, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i8* %2, metadata !440, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i64 %3, metadata !441, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i8* %2, metadata !442, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i8* %1, metadata !443, metadata !DIExpression()), !dbg !438
  %6 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !444
  %7 = call i32 @br_dec32be(i8* %6), !dbg !445
  call void @llvm.dbg.value(metadata i32 %7, metadata !446, metadata !DIExpression()), !dbg !438
  %8 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !447
  %9 = call i32 @br_dec32be(i8* %8), !dbg !448
  call void @llvm.dbg.value(metadata i32 %9, metadata !449, metadata !DIExpression()), !dbg !438
  %10 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !450
  %11 = call i32 @br_dec32be(i8* %10), !dbg !451
  call void @llvm.dbg.value(metadata i32 %11, metadata !452, metadata !DIExpression()), !dbg !438
  %12 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !453
  %13 = call i32 @br_dec32be(i8* %12), !dbg !454
  call void @llvm.dbg.value(metadata i32 %13, metadata !455, metadata !DIExpression()), !dbg !438
  br label %14, !dbg !456

14:                                               ; preds = %16, %4
  %.05 = phi i32 [ %13, %4 ], [ %33, %16 ], !dbg !438
  %.04 = phi i8* [ %2, %4 ], [ %31, %16 ], !dbg !438
  %.03 = phi i64 [ %3, %4 ], [ %32, %16 ]
  %.02 = phi i32 [ %11, %4 ], [ %38, %16 ], !dbg !438
  %.01 = phi i32 [ %9, %4 ], [ %44, %16 ], !dbg !438
  %.0 = phi i32 [ %7, %4 ], [ %50, %16 ], !dbg !438
  call void @llvm.dbg.value(metadata i32 %.0, metadata !446, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %.01, metadata !449, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %.02, metadata !452, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i64 %.03, metadata !441, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i8* %.04, metadata !442, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %.05, metadata !455, metadata !DIExpression()), !dbg !438
  %15 = icmp ugt i64 %.03, 0, !dbg !457
  br i1 %15, label %16, label %51, !dbg !456

16:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !458, metadata !DIExpression()), !dbg !460
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !461
  %18 = getelementptr inbounds i8, i8* %17, i64 0, !dbg !462
  call void @br_enc32be.2(i8* %18, i32 %.0), !dbg !463
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !464
  %20 = getelementptr inbounds i8, i8* %19, i64 4, !dbg !465
  call void @br_enc32be.2(i8* %20, i32 %.01), !dbg !466
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !467
  %22 = getelementptr inbounds i8, i8* %21, i64 8, !dbg !468
  call void @br_enc32be.2(i8* %22, i32 %.02), !dbg !469
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !470
  %24 = getelementptr inbounds i8, i8* %23, i64 12, !dbg !471
  call void @br_enc32be.2(i8* %24, i32 %.05), !dbg !472
  %25 = getelementptr inbounds %struct.br_aes_small_ctrcbc_keys, %struct.br_aes_small_ctrcbc_keys* %0, i32 0, i32 2, !dbg !473
  %26 = load i32, i32* %25, align 8, !dbg !473
  %27 = getelementptr inbounds %struct.br_aes_small_ctrcbc_keys, %struct.br_aes_small_ctrcbc_keys* %0, i32 0, i32 1, !dbg !474
  %28 = getelementptr inbounds [60 x i32], [60 x i32]* %27, i64 0, i64 0, !dbg !475
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !476
  call void @br_aes_small_encrypt(i32 %26, i32* %28, i8* %29), !dbg !477
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !478
  call void @xorbuf.1(i8* %.04, i8* %30, i64 16), !dbg !479
  %31 = getelementptr inbounds i8, i8* %.04, i64 16, !dbg !480
  call void @llvm.dbg.value(metadata i8* %31, metadata !442, metadata !DIExpression()), !dbg !438
  %32 = sub i64 %.03, 16, !dbg !481
  call void @llvm.dbg.value(metadata i64 %32, metadata !441, metadata !DIExpression()), !dbg !438
  %33 = add i32 %.05, 1, !dbg !482
  call void @llvm.dbg.value(metadata i32 %33, metadata !455, metadata !DIExpression()), !dbg !438
  %34 = sub i32 0, %33, !dbg !483
  %35 = or i32 %33, %34, !dbg !484
  %36 = xor i32 %35, -1, !dbg !485
  %37 = lshr i32 %36, 31, !dbg !486
  call void @llvm.dbg.value(metadata i32 %37, metadata !487, metadata !DIExpression()), !dbg !488
  %38 = add i32 %.02, %37, !dbg !489
  call void @llvm.dbg.value(metadata i32 %38, metadata !452, metadata !DIExpression()), !dbg !438
  %39 = sub i32 0, %38, !dbg !490
  %40 = or i32 %38, %39, !dbg !491
  %41 = xor i32 %40, -1, !dbg !492
  %42 = lshr i32 %41, 31, !dbg !493
  %43 = and i32 %37, %42, !dbg !494
  call void @llvm.dbg.value(metadata i32 %43, metadata !487, metadata !DIExpression()), !dbg !488
  %44 = add i32 %.01, %43, !dbg !495
  call void @llvm.dbg.value(metadata i32 %44, metadata !449, metadata !DIExpression()), !dbg !438
  %45 = sub i32 0, %44, !dbg !496
  %46 = or i32 %44, %45, !dbg !497
  %47 = xor i32 %46, -1, !dbg !498
  %48 = lshr i32 %47, 31, !dbg !499
  %49 = and i32 %43, %48, !dbg !500
  call void @llvm.dbg.value(metadata i32 %49, metadata !487, metadata !DIExpression()), !dbg !488
  %50 = add i32 %.0, %49, !dbg !501
  call void @llvm.dbg.value(metadata i32 %50, metadata !446, metadata !DIExpression()), !dbg !438
  br label %14, !dbg !456, !llvm.loop !502

51:                                               ; preds = %14
  %52 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !504
  call void @br_enc32be.2(i8* %52, i32 %.0), !dbg !505
  %53 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !506
  call void @br_enc32be.2(i8* %53, i32 %.01), !dbg !507
  %54 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !508
  call void @br_enc32be.2(i8* %54, i32 %.02), !dbg !509
  %55 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !510
  call void @br_enc32be.2(i8* %55, i32 %.05), !dbg !511
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_ctrcbc_mac(%struct.br_aes_small_ctrcbc_keys* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !513 {
  call void @llvm.dbg.value(metadata %struct.br_aes_small_ctrcbc_keys* %0, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i8* %1, metadata !518, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i8* %2, metadata !519, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i64 %3, metadata !520, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i8* %2, metadata !521, metadata !DIExpression()), !dbg !517
  br label %5, !dbg !522

5:                                                ; preds = %7, %4
  %.01 = phi i64 [ %3, %4 ], [ %13, %7 ]
  %.0 = phi i8* [ %2, %4 ], [ %12, %7 ], !dbg !517
  call void @llvm.dbg.value(metadata i8* %.0, metadata !521, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i64 %.01, metadata !520, metadata !DIExpression()), !dbg !517
  %6 = icmp ugt i64 %.01, 0, !dbg !523
  br i1 %6, label %7, label %14, !dbg !522

7:                                                ; preds = %5
  call void @xorbuf.1(i8* %1, i8* %.0, i64 16), !dbg !524
  %8 = getelementptr inbounds %struct.br_aes_small_ctrcbc_keys, %struct.br_aes_small_ctrcbc_keys* %0, i32 0, i32 2, !dbg !526
  %9 = load i32, i32* %8, align 8, !dbg !526
  %10 = getelementptr inbounds %struct.br_aes_small_ctrcbc_keys, %struct.br_aes_small_ctrcbc_keys* %0, i32 0, i32 1, !dbg !527
  %11 = getelementptr inbounds [60 x i32], [60 x i32]* %10, i64 0, i64 0, !dbg !528
  call void @br_aes_small_encrypt(i32 %9, i32* %11, i8* %1), !dbg !529
  %12 = getelementptr inbounds i8, i8* %.0, i64 16, !dbg !530
  call void @llvm.dbg.value(metadata i8* %12, metadata !521, metadata !DIExpression()), !dbg !517
  %13 = sub i64 %.01, 16, !dbg !531
  call void @llvm.dbg.value(metadata i64 %13, metadata !520, metadata !DIExpression()), !dbg !517
  br label %5, !dbg !522, !llvm.loop !532

14:                                               ; preds = %5
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind uwtable
define internal void @xorbuf.1(i8* %0, i8* %1, i64 %2) #0 !dbg !535 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !536, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i8* %1, metadata !538, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i64 %2, metadata !539, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i8* %0, metadata !540, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i8* %1, metadata !541, metadata !DIExpression()), !dbg !537
  br label %4, !dbg !542

4:                                                ; preds = %7, %3
  %.02 = phi i64 [ %2, %3 ], [ %5, %7 ]
  %.01 = phi i8* [ %0, %3 ], [ %11, %7 ], !dbg !537
  %.0 = phi i8* [ %1, %3 ], [ %8, %7 ], !dbg !537
  call void @llvm.dbg.value(metadata i8* %.0, metadata !541, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i8* %.01, metadata !540, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i64 %.02, metadata !539, metadata !DIExpression()), !dbg !537
  %5 = add i64 %.02, -1, !dbg !543
  call void @llvm.dbg.value(metadata i64 %5, metadata !539, metadata !DIExpression()), !dbg !537
  %6 = icmp ugt i64 %.02, 0, !dbg !544
  br i1 %6, label %7, label %16, !dbg !542

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %.0, i32 1, !dbg !545
  call void @llvm.dbg.value(metadata i8* %8, metadata !541, metadata !DIExpression()), !dbg !537
  %9 = load i8, i8* %.0, align 1, !dbg !547
  %10 = zext i8 %9 to i32, !dbg !547
  %11 = getelementptr inbounds i8, i8* %.01, i32 1, !dbg !548
  call void @llvm.dbg.value(metadata i8* %11, metadata !540, metadata !DIExpression()), !dbg !537
  %12 = load i8, i8* %.01, align 1, !dbg !549
  %13 = zext i8 %12 to i32, !dbg !549
  %14 = xor i32 %13, %10, !dbg !549
  %15 = trunc i32 %14 to i8, !dbg !549
  store i8 %15, i8* %.01, align 1, !dbg !549
  br label %4, !dbg !542, !llvm.loop !550

16:                                               ; preds = %4
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !553 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i8* %0, metadata !558, metadata !DIExpression()), !dbg !557
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !559
  %3 = load i8, i8* %2, align 1, !dbg !559
  %4 = zext i8 %3 to i32, !dbg !560
  %5 = shl i32 %4, 24, !dbg !561
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !562
  %7 = load i8, i8* %6, align 1, !dbg !562
  %8 = zext i8 %7 to i32, !dbg !563
  %9 = shl i32 %8, 16, !dbg !564
  %10 = or i32 %5, %9, !dbg !565
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !566
  %12 = load i8, i8* %11, align 1, !dbg !566
  %13 = zext i8 %12 to i32, !dbg !567
  %14 = shl i32 %13, 8, !dbg !568
  %15 = or i32 %10, %14, !dbg !569
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !570
  %17 = load i8, i8* %16, align 1, !dbg !570
  %18 = zext i8 %17 to i32, !dbg !571
  %19 = or i32 %15, %18, !dbg !572
  ret i32 %19, !dbg !573
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be.2(i8* %0, i32 %1) #0 !dbg !574 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !575, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i32 %1, metadata !577, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i8* %0, metadata !578, metadata !DIExpression()), !dbg !576
  %3 = lshr i32 %1, 24, !dbg !579
  %4 = trunc i32 %3 to i8, !dbg !580
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !581
  store i8 %4, i8* %5, align 1, !dbg !582
  %6 = lshr i32 %1, 16, !dbg !583
  %7 = trunc i32 %6 to i8, !dbg !584
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !585
  store i8 %7, i8* %8, align 1, !dbg !586
  %9 = lshr i32 %1, 8, !dbg !587
  %10 = trunc i32 %9 to i8, !dbg !588
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !589
  store i8 %10, i8* %11, align 1, !dbg !590
  %12 = trunc i32 %1 to i8, !dbg !591
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !592
  store i8 %12, i8* %13, align 1, !dbg !593
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_decrypt(i32 %0, i32* %1, i8* %2) #0 !dbg !595 {
  %4 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !600, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i32* %1, metadata !602, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i8* %2, metadata !603, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.declare(metadata [16 x i32]* %4, metadata !604, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i8* %2, metadata !607, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i32 0, metadata !608, metadata !DIExpression()), !dbg !601
  br label %5, !dbg !609

5:                                                ; preds = %14, %3
  %.0 = phi i32 [ 0, %3 ], [ %15, %14 ], !dbg !611
  call void @llvm.dbg.value(metadata i32 %.0, metadata !608, metadata !DIExpression()), !dbg !601
  %6 = icmp ult i32 %.0, 16, !dbg !612
  br i1 %6, label %7, label %16, !dbg !614

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64, !dbg !615
  %9 = getelementptr inbounds i8, i8* %2, i64 %8, !dbg !615
  %10 = load i8, i8* %9, align 1, !dbg !615
  %11 = zext i8 %10 to i32, !dbg !615
  %12 = zext i32 %.0 to i64, !dbg !617
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %12, !dbg !617
  store i32 %11, i32* %13, align 4, !dbg !618
  br label %14, !dbg !619

14:                                               ; preds = %7
  %15 = add i32 %.0, 1, !dbg !620
  call void @llvm.dbg.value(metadata i32 %15, metadata !608, metadata !DIExpression()), !dbg !601
  br label %5, !dbg !621, !llvm.loop !622

16:                                               ; preds = %5
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !624
  %18 = shl i32 %0, 2, !dbg !625
  %19 = zext i32 %18 to i64, !dbg !626
  %20 = getelementptr inbounds i32, i32* %1, i64 %19, !dbg !626
  call void @add_round_key(i32* %17, i32* %20), !dbg !627
  %21 = sub i32 %0, 1, !dbg !628
  call void @llvm.dbg.value(metadata i32 %21, metadata !608, metadata !DIExpression()), !dbg !601
  br label %22, !dbg !630

22:                                               ; preds = %32, %16
  %.1 = phi i32 [ %21, %16 ], [ %33, %32 ], !dbg !631
  call void @llvm.dbg.value(metadata i32 %.1, metadata !608, metadata !DIExpression()), !dbg !601
  %23 = icmp ugt i32 %.1, 0, !dbg !632
  br i1 %23, label %24, label %34, !dbg !634

24:                                               ; preds = %22
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !635
  call void @inv_shift_rows(i32* %25), !dbg !637
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !638
  call void @inv_sub_bytes(i32* %26), !dbg !639
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !640
  %28 = shl i32 %.1, 2, !dbg !641
  %29 = zext i32 %28 to i64, !dbg !642
  %30 = getelementptr inbounds i32, i32* %1, i64 %29, !dbg !642
  call void @add_round_key(i32* %27, i32* %30), !dbg !643
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !644
  call void @inv_mix_columns(i32* %31), !dbg !645
  br label %32, !dbg !646

32:                                               ; preds = %24
  %33 = add i32 %.1, -1, !dbg !647
  call void @llvm.dbg.value(metadata i32 %33, metadata !608, metadata !DIExpression()), !dbg !601
  br label %22, !dbg !648, !llvm.loop !649

34:                                               ; preds = %22
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !651
  call void @inv_shift_rows(i32* %35), !dbg !652
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !653
  call void @inv_sub_bytes(i32* %36), !dbg !654
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !655
  call void @add_round_key(i32* %37, i32* %1), !dbg !656
  call void @llvm.dbg.value(metadata i32 0, metadata !608, metadata !DIExpression()), !dbg !601
  br label %38, !dbg !657

38:                                               ; preds = %47, %34
  %.2 = phi i32 [ 0, %34 ], [ %48, %47 ], !dbg !659
  call void @llvm.dbg.value(metadata i32 %.2, metadata !608, metadata !DIExpression()), !dbg !601
  %39 = icmp ult i32 %.2, 16, !dbg !660
  br i1 %39, label %40, label %49, !dbg !662

40:                                               ; preds = %38
  %41 = zext i32 %.2 to i64, !dbg !663
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %41, !dbg !663
  %43 = load i32, i32* %42, align 4, !dbg !663
  %44 = trunc i32 %43 to i8, !dbg !663
  %45 = zext i32 %.2 to i64, !dbg !665
  %46 = getelementptr inbounds i8, i8* %2, i64 %45, !dbg !665
  store i8 %44, i8* %46, align 1, !dbg !666
  br label %47, !dbg !667

47:                                               ; preds = %40
  %48 = add i32 %.2, 1, !dbg !668
  call void @llvm.dbg.value(metadata i32 %48, metadata !608, metadata !DIExpression()), !dbg !601
  br label %38, !dbg !669, !llvm.loop !670

49:                                               ; preds = %38
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_round_key(i32* %0, i32* %1) #0 !dbg !673 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !677, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32* %1, metadata !679, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 0, metadata !680, metadata !DIExpression()), !dbg !678
  br label %3, !dbg !681

3:                                                ; preds = %34, %2
  %.01 = phi i32* [ %1, %2 ], [ %6, %34 ]
  %.0 = phi i32 [ 0, %2 ], [ %35, %34 ], !dbg !683
  call void @llvm.dbg.value(metadata i32 %.0, metadata !680, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32* %.01, metadata !679, metadata !DIExpression()), !dbg !678
  %4 = icmp slt i32 %.0, 16, !dbg !684
  br i1 %4, label %5, label %36, !dbg !686

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, i32* %.01, i32 1, !dbg !687
  call void @llvm.dbg.value(metadata i32* %6, metadata !679, metadata !DIExpression()), !dbg !678
  %7 = load i32, i32* %.01, align 4, !dbg !689
  call void @llvm.dbg.value(metadata i32 %7, metadata !690, metadata !DIExpression()), !dbg !691
  %8 = lshr i32 %7, 24, !dbg !692
  %9 = add nsw i32 %.0, 0, !dbg !693
  %10 = sext i32 %9 to i64, !dbg !694
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !694
  %12 = load i32, i32* %11, align 4, !dbg !695
  %13 = xor i32 %12, %8, !dbg !695
  store i32 %13, i32* %11, align 4, !dbg !695
  %14 = lshr i32 %7, 16, !dbg !696
  %15 = and i32 %14, 255, !dbg !697
  %16 = add nsw i32 %.0, 1, !dbg !698
  %17 = sext i32 %16 to i64, !dbg !699
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !699
  %19 = load i32, i32* %18, align 4, !dbg !700
  %20 = xor i32 %19, %15, !dbg !700
  store i32 %20, i32* %18, align 4, !dbg !700
  %21 = lshr i32 %7, 8, !dbg !701
  %22 = and i32 %21, 255, !dbg !702
  %23 = add nsw i32 %.0, 2, !dbg !703
  %24 = sext i32 %23 to i64, !dbg !704
  %25 = getelementptr inbounds i32, i32* %0, i64 %24, !dbg !704
  %26 = load i32, i32* %25, align 4, !dbg !705
  %27 = xor i32 %26, %22, !dbg !705
  store i32 %27, i32* %25, align 4, !dbg !705
  %28 = and i32 %7, 255, !dbg !706
  %29 = add nsw i32 %.0, 3, !dbg !707
  %30 = sext i32 %29 to i64, !dbg !708
  %31 = getelementptr inbounds i32, i32* %0, i64 %30, !dbg !708
  %32 = load i32, i32* %31, align 4, !dbg !709
  %33 = xor i32 %32, %28, !dbg !709
  store i32 %33, i32* %31, align 4, !dbg !709
  br label %34, !dbg !710

34:                                               ; preds = %5
  %35 = add nsw i32 %.0, 4, !dbg !711
  call void @llvm.dbg.value(metadata i32 %35, metadata !680, metadata !DIExpression()), !dbg !678
  br label %3, !dbg !712, !llvm.loop !713

36:                                               ; preds = %3
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind uwtable
define internal void @inv_shift_rows(i32* %0) #0 !dbg !716 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !719, metadata !DIExpression()), !dbg !720
  %2 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !721
  %3 = load i32, i32* %2, align 4, !dbg !721
  call void @llvm.dbg.value(metadata i32 %3, metadata !722, metadata !DIExpression()), !dbg !720
  %4 = getelementptr inbounds i32, i32* %0, i64 9, !dbg !723
  %5 = load i32, i32* %4, align 4, !dbg !723
  %6 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !724
  store i32 %5, i32* %6, align 4, !dbg !725
  %7 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !726
  %8 = load i32, i32* %7, align 4, !dbg !726
  %9 = getelementptr inbounds i32, i32* %0, i64 9, !dbg !727
  store i32 %8, i32* %9, align 4, !dbg !728
  %10 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !729
  %11 = load i32, i32* %10, align 4, !dbg !729
  %12 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !730
  store i32 %11, i32* %12, align 4, !dbg !731
  %13 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !732
  store i32 %3, i32* %13, align 4, !dbg !733
  %14 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !734
  %15 = load i32, i32* %14, align 4, !dbg !734
  call void @llvm.dbg.value(metadata i32 %15, metadata !722, metadata !DIExpression()), !dbg !720
  %16 = getelementptr inbounds i32, i32* %0, i64 10, !dbg !735
  %17 = load i32, i32* %16, align 4, !dbg !735
  %18 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !736
  store i32 %17, i32* %18, align 4, !dbg !737
  %19 = getelementptr inbounds i32, i32* %0, i64 10, !dbg !738
  store i32 %15, i32* %19, align 4, !dbg !739
  %20 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !740
  %21 = load i32, i32* %20, align 4, !dbg !740
  call void @llvm.dbg.value(metadata i32 %21, metadata !722, metadata !DIExpression()), !dbg !720
  %22 = getelementptr inbounds i32, i32* %0, i64 14, !dbg !741
  %23 = load i32, i32* %22, align 4, !dbg !741
  %24 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !742
  store i32 %23, i32* %24, align 4, !dbg !743
  %25 = getelementptr inbounds i32, i32* %0, i64 14, !dbg !744
  store i32 %21, i32* %25, align 4, !dbg !745
  %26 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !746
  %27 = load i32, i32* %26, align 4, !dbg !746
  call void @llvm.dbg.value(metadata i32 %27, metadata !722, metadata !DIExpression()), !dbg !720
  %28 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !747
  %29 = load i32, i32* %28, align 4, !dbg !747
  %30 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !748
  store i32 %29, i32* %30, align 4, !dbg !749
  %31 = getelementptr inbounds i32, i32* %0, i64 11, !dbg !750
  %32 = load i32, i32* %31, align 4, !dbg !750
  %33 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !751
  store i32 %32, i32* %33, align 4, !dbg !752
  %34 = getelementptr inbounds i32, i32* %0, i64 15, !dbg !753
  %35 = load i32, i32* %34, align 4, !dbg !753
  %36 = getelementptr inbounds i32, i32* %0, i64 11, !dbg !754
  store i32 %35, i32* %36, align 4, !dbg !755
  %37 = getelementptr inbounds i32, i32* %0, i64 15, !dbg !756
  store i32 %27, i32* %37, align 4, !dbg !757
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind uwtable
define internal void @inv_sub_bytes(i32* %0) #0 !dbg !759 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !760, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 0, metadata !762, metadata !DIExpression()), !dbg !761
  br label %2, !dbg !763

2:                                                ; preds = %14, %1
  %.0 = phi i32 [ 0, %1 ], [ %15, %14 ], !dbg !765
  call void @llvm.dbg.value(metadata i32 %.0, metadata !762, metadata !DIExpression()), !dbg !761
  %3 = icmp slt i32 %.0, 16, !dbg !766
  br i1 %3, label %4, label %16, !dbg !768

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64, !dbg !769
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !769
  %7 = load i32, i32* %6, align 4, !dbg !769
  %8 = zext i32 %7 to i64, !dbg !771
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %8, !dbg !771
  %10 = load i8, i8* %9, align 1, !dbg !771
  %11 = zext i8 %10 to i32, !dbg !771
  %12 = sext i32 %.0 to i64, !dbg !772
  %13 = getelementptr inbounds i32, i32* %0, i64 %12, !dbg !772
  store i32 %11, i32* %13, align 4, !dbg !773
  br label %14, !dbg !774

14:                                               ; preds = %4
  %15 = add nsw i32 %.0, 1, !dbg !775
  call void @llvm.dbg.value(metadata i32 %15, metadata !762, metadata !DIExpression()), !dbg !761
  br label %2, !dbg !776, !llvm.loop !777

16:                                               ; preds = %2
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind uwtable
define internal void @inv_mix_columns(i32* %0) #0 !dbg !780 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !781, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata i32 0, metadata !783, metadata !DIExpression()), !dbg !782
  br label %2, !dbg !784

2:                                                ; preds = %109, %1
  %.0 = phi i32 [ 0, %1 ], [ %110, %109 ], !dbg !786
  call void @llvm.dbg.value(metadata i32 %.0, metadata !783, metadata !DIExpression()), !dbg !782
  %3 = icmp slt i32 %.0, 16, !dbg !787
  br i1 %3, label %4, label %111, !dbg !789

4:                                                ; preds = %2
  %5 = add nsw i32 %.0, 0, !dbg !790
  %6 = sext i32 %5 to i64, !dbg !792
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !792
  %8 = load i32, i32* %7, align 4, !dbg !792
  call void @llvm.dbg.value(metadata i32 %8, metadata !793, metadata !DIExpression()), !dbg !794
  %9 = add nsw i32 %.0, 1, !dbg !795
  %10 = sext i32 %9 to i64, !dbg !796
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !796
  %12 = load i32, i32* %11, align 4, !dbg !796
  call void @llvm.dbg.value(metadata i32 %12, metadata !797, metadata !DIExpression()), !dbg !794
  %13 = add nsw i32 %.0, 2, !dbg !798
  %14 = sext i32 %13 to i64, !dbg !799
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !799
  %16 = load i32, i32* %15, align 4, !dbg !799
  call void @llvm.dbg.value(metadata i32 %16, metadata !800, metadata !DIExpression()), !dbg !794
  %17 = add nsw i32 %.0, 3, !dbg !801
  %18 = sext i32 %17 to i64, !dbg !802
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !802
  %20 = load i32, i32* %19, align 4, !dbg !802
  call void @llvm.dbg.value(metadata i32 %20, metadata !803, metadata !DIExpression()), !dbg !794
  %21 = shl i32 %8, 1, !dbg !804
  %22 = shl i32 %8, 2, !dbg !805
  %23 = xor i32 %21, %22, !dbg !806
  %24 = shl i32 %8, 3, !dbg !807
  %25 = xor i32 %23, %24, !dbg !808
  %26 = xor i32 %25, %12, !dbg !809
  %27 = shl i32 %12, 1, !dbg !810
  %28 = xor i32 %26, %27, !dbg !811
  %29 = shl i32 %12, 3, !dbg !812
  %30 = xor i32 %28, %29, !dbg !813
  %31 = xor i32 %30, %16, !dbg !814
  %32 = shl i32 %16, 2, !dbg !815
  %33 = xor i32 %31, %32, !dbg !816
  %34 = shl i32 %16, 3, !dbg !817
  %35 = xor i32 %33, %34, !dbg !818
  %36 = xor i32 %35, %20, !dbg !819
  %37 = shl i32 %20, 3, !dbg !820
  %38 = xor i32 %36, %37, !dbg !821
  call void @llvm.dbg.value(metadata i32 %38, metadata !822, metadata !DIExpression()), !dbg !794
  %39 = shl i32 %8, 3, !dbg !823
  %40 = xor i32 %8, %39, !dbg !824
  %41 = shl i32 %12, 1, !dbg !825
  %42 = xor i32 %40, %41, !dbg !826
  %43 = shl i32 %12, 2, !dbg !827
  %44 = xor i32 %42, %43, !dbg !828
  %45 = shl i32 %12, 3, !dbg !829
  %46 = xor i32 %44, %45, !dbg !830
  %47 = xor i32 %46, %16, !dbg !831
  %48 = shl i32 %16, 1, !dbg !832
  %49 = xor i32 %47, %48, !dbg !833
  %50 = shl i32 %16, 3, !dbg !834
  %51 = xor i32 %49, %50, !dbg !835
  %52 = xor i32 %51, %20, !dbg !836
  %53 = shl i32 %20, 2, !dbg !837
  %54 = xor i32 %52, %53, !dbg !838
  %55 = shl i32 %20, 3, !dbg !839
  %56 = xor i32 %54, %55, !dbg !840
  call void @llvm.dbg.value(metadata i32 %56, metadata !841, metadata !DIExpression()), !dbg !794
  %57 = shl i32 %8, 2, !dbg !842
  %58 = xor i32 %8, %57, !dbg !843
  %59 = shl i32 %8, 3, !dbg !844
  %60 = xor i32 %58, %59, !dbg !845
  %61 = xor i32 %60, %12, !dbg !846
  %62 = shl i32 %12, 3, !dbg !847
  %63 = xor i32 %61, %62, !dbg !848
  %64 = shl i32 %16, 1, !dbg !849
  %65 = xor i32 %63, %64, !dbg !850
  %66 = shl i32 %16, 2, !dbg !851
  %67 = xor i32 %65, %66, !dbg !852
  %68 = shl i32 %16, 3, !dbg !853
  %69 = xor i32 %67, %68, !dbg !854
  %70 = xor i32 %69, %20, !dbg !855
  %71 = shl i32 %20, 1, !dbg !856
  %72 = xor i32 %70, %71, !dbg !857
  %73 = shl i32 %20, 3, !dbg !858
  %74 = xor i32 %72, %73, !dbg !859
  call void @llvm.dbg.value(metadata i32 %74, metadata !860, metadata !DIExpression()), !dbg !794
  %75 = shl i32 %8, 1, !dbg !861
  %76 = xor i32 %8, %75, !dbg !862
  %77 = shl i32 %8, 3, !dbg !863
  %78 = xor i32 %76, %77, !dbg !864
  %79 = xor i32 %78, %12, !dbg !865
  %80 = shl i32 %12, 2, !dbg !866
  %81 = xor i32 %79, %80, !dbg !867
  %82 = shl i32 %12, 3, !dbg !868
  %83 = xor i32 %81, %82, !dbg !869
  %84 = xor i32 %83, %16, !dbg !870
  %85 = shl i32 %16, 3, !dbg !871
  %86 = xor i32 %84, %85, !dbg !872
  %87 = shl i32 %20, 1, !dbg !873
  %88 = xor i32 %86, %87, !dbg !874
  %89 = shl i32 %20, 2, !dbg !875
  %90 = xor i32 %88, %89, !dbg !876
  %91 = shl i32 %20, 3, !dbg !877
  %92 = xor i32 %90, %91, !dbg !878
  call void @llvm.dbg.value(metadata i32 %92, metadata !879, metadata !DIExpression()), !dbg !794
  %93 = call i32 @gf256red(i32 %38), !dbg !880
  %94 = add nsw i32 %.0, 0, !dbg !881
  %95 = sext i32 %94 to i64, !dbg !882
  %96 = getelementptr inbounds i32, i32* %0, i64 %95, !dbg !882
  store i32 %93, i32* %96, align 4, !dbg !883
  %97 = call i32 @gf256red(i32 %56), !dbg !884
  %98 = add nsw i32 %.0, 1, !dbg !885
  %99 = sext i32 %98 to i64, !dbg !886
  %100 = getelementptr inbounds i32, i32* %0, i64 %99, !dbg !886
  store i32 %97, i32* %100, align 4, !dbg !887
  %101 = call i32 @gf256red(i32 %74), !dbg !888
  %102 = add nsw i32 %.0, 2, !dbg !889
  %103 = sext i32 %102 to i64, !dbg !890
  %104 = getelementptr inbounds i32, i32* %0, i64 %103, !dbg !890
  store i32 %101, i32* %104, align 4, !dbg !891
  %105 = call i32 @gf256red(i32 %92), !dbg !892
  %106 = add nsw i32 %.0, 3, !dbg !893
  %107 = sext i32 %106 to i64, !dbg !894
  %108 = getelementptr inbounds i32, i32* %0, i64 %107, !dbg !894
  store i32 %105, i32* %108, align 4, !dbg !895
  br label %109, !dbg !896

109:                                              ; preds = %4
  %110 = add nsw i32 %.0, 4, !dbg !897
  call void @llvm.dbg.value(metadata i32 %110, metadata !783, metadata !DIExpression()), !dbg !782
  br label %2, !dbg !898, !llvm.loop !899

111:                                              ; preds = %2
  ret void, !dbg !901
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @gf256red(i32 %0) #0 !dbg !902 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !905, metadata !DIExpression()), !dbg !906
  %2 = lshr i32 %0, 8, !dbg !907
  call void @llvm.dbg.value(metadata i32 %2, metadata !908, metadata !DIExpression()), !dbg !906
  %3 = xor i32 %0, %2, !dbg !909
  %4 = shl i32 %2, 1, !dbg !910
  %5 = xor i32 %3, %4, !dbg !911
  %6 = shl i32 %2, 3, !dbg !912
  %7 = xor i32 %5, %6, !dbg !913
  %8 = shl i32 %2, 4, !dbg !914
  %9 = xor i32 %7, %8, !dbg !915
  %10 = and i32 %9, 255, !dbg !916
  ret i32 %10, !dbg !917
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_small_encrypt(i32 %0, i32* %1, i8* %2) #0 !dbg !918 {
  %4 = alloca [16 x i32], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !919, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i32* %1, metadata !921, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i8* %2, metadata !922, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.declare(metadata [16 x i32]* %4, metadata !923, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8* %2, metadata !925, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i32 0, metadata !926, metadata !DIExpression()), !dbg !920
  br label %5, !dbg !927

5:                                                ; preds = %14, %3
  %.0 = phi i32 [ 0, %3 ], [ %15, %14 ], !dbg !929
  call void @llvm.dbg.value(metadata i32 %.0, metadata !926, metadata !DIExpression()), !dbg !920
  %6 = icmp ult i32 %.0, 16, !dbg !930
  br i1 %6, label %7, label %16, !dbg !932

7:                                                ; preds = %5
  %8 = zext i32 %.0 to i64, !dbg !933
  %9 = getelementptr inbounds i8, i8* %2, i64 %8, !dbg !933
  %10 = load i8, i8* %9, align 1, !dbg !933
  %11 = zext i8 %10 to i32, !dbg !933
  %12 = zext i32 %.0 to i64, !dbg !935
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %12, !dbg !935
  store i32 %11, i32* %13, align 4, !dbg !936
  br label %14, !dbg !937

14:                                               ; preds = %7
  %15 = add i32 %.0, 1, !dbg !938
  call void @llvm.dbg.value(metadata i32 %15, metadata !926, metadata !DIExpression()), !dbg !920
  br label %5, !dbg !939, !llvm.loop !940

16:                                               ; preds = %5
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !942
  call void @add_round_key.7(i32* %17, i32* %1), !dbg !943
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()), !dbg !920
  br label %18, !dbg !944

18:                                               ; preds = %28, %16
  %.1 = phi i32 [ 1, %16 ], [ %29, %28 ], !dbg !946
  call void @llvm.dbg.value(metadata i32 %.1, metadata !926, metadata !DIExpression()), !dbg !920
  %19 = icmp ult i32 %.1, %0, !dbg !947
  br i1 %19, label %20, label %30, !dbg !949

20:                                               ; preds = %18
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !950
  call void @sub_bytes(i32* %21), !dbg !952
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !953
  call void @shift_rows(i32* %22), !dbg !954
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !955
  call void @mix_columns(i32* %23), !dbg !956
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !957
  %25 = shl i32 %.1, 2, !dbg !958
  %26 = zext i32 %25 to i64, !dbg !959
  %27 = getelementptr inbounds i32, i32* %1, i64 %26, !dbg !959
  call void @add_round_key.7(i32* %24, i32* %27), !dbg !960
  br label %28, !dbg !961

28:                                               ; preds = %20
  %29 = add i32 %.1, 1, !dbg !962
  call void @llvm.dbg.value(metadata i32 %29, metadata !926, metadata !DIExpression()), !dbg !920
  br label %18, !dbg !963, !llvm.loop !964

30:                                               ; preds = %18
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !966
  call void @sub_bytes(i32* %31), !dbg !967
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !968
  call void @shift_rows(i32* %32), !dbg !969
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0, !dbg !970
  %34 = shl i32 %0, 2, !dbg !971
  %35 = zext i32 %34 to i64, !dbg !972
  %36 = getelementptr inbounds i32, i32* %1, i64 %35, !dbg !972
  call void @add_round_key.7(i32* %33, i32* %36), !dbg !973
  call void @llvm.dbg.value(metadata i32 0, metadata !926, metadata !DIExpression()), !dbg !920
  br label %37, !dbg !974

37:                                               ; preds = %46, %30
  %.2 = phi i32 [ 0, %30 ], [ %47, %46 ], !dbg !976
  call void @llvm.dbg.value(metadata i32 %.2, metadata !926, metadata !DIExpression()), !dbg !920
  %38 = icmp ult i32 %.2, 16, !dbg !977
  br i1 %38, label %39, label %48, !dbg !979

39:                                               ; preds = %37
  %40 = zext i32 %.2 to i64, !dbg !980
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %40, !dbg !980
  %42 = load i32, i32* %41, align 4, !dbg !980
  %43 = trunc i32 %42 to i8, !dbg !980
  %44 = zext i32 %.2 to i64, !dbg !982
  %45 = getelementptr inbounds i8, i8* %2, i64 %44, !dbg !982
  store i8 %43, i8* %45, align 1, !dbg !983
  br label %46, !dbg !984

46:                                               ; preds = %39
  %47 = add i32 %.2, 1, !dbg !985
  call void @llvm.dbg.value(metadata i32 %47, metadata !926, metadata !DIExpression()), !dbg !920
  br label %37, !dbg !986, !llvm.loop !987

48:                                               ; preds = %37
  ret void, !dbg !989
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_round_key.7(i32* %0, i32* %1) #0 !dbg !990 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !991, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32* %1, metadata !993, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32 0, metadata !994, metadata !DIExpression()), !dbg !992
  br label %3, !dbg !995

3:                                                ; preds = %34, %2
  %.01 = phi i32* [ %1, %2 ], [ %6, %34 ]
  %.0 = phi i32 [ 0, %2 ], [ %35, %34 ], !dbg !997
  call void @llvm.dbg.value(metadata i32 %.0, metadata !994, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32* %.01, metadata !993, metadata !DIExpression()), !dbg !992
  %4 = icmp slt i32 %.0, 16, !dbg !998
  br i1 %4, label %5, label %36, !dbg !1000

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, i32* %.01, i32 1, !dbg !1001
  call void @llvm.dbg.value(metadata i32* %6, metadata !993, metadata !DIExpression()), !dbg !992
  %7 = load i32, i32* %.01, align 4, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %7, metadata !1004, metadata !DIExpression()), !dbg !1005
  %8 = lshr i32 %7, 24, !dbg !1006
  %9 = add nsw i32 %.0, 0, !dbg !1007
  %10 = sext i32 %9 to i64, !dbg !1008
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !1008
  %12 = load i32, i32* %11, align 4, !dbg !1009
  %13 = xor i32 %12, %8, !dbg !1009
  store i32 %13, i32* %11, align 4, !dbg !1009
  %14 = lshr i32 %7, 16, !dbg !1010
  %15 = and i32 %14, 255, !dbg !1011
  %16 = add nsw i32 %.0, 1, !dbg !1012
  %17 = sext i32 %16 to i64, !dbg !1013
  %18 = getelementptr inbounds i32, i32* %0, i64 %17, !dbg !1013
  %19 = load i32, i32* %18, align 4, !dbg !1014
  %20 = xor i32 %19, %15, !dbg !1014
  store i32 %20, i32* %18, align 4, !dbg !1014
  %21 = lshr i32 %7, 8, !dbg !1015
  %22 = and i32 %21, 255, !dbg !1016
  %23 = add nsw i32 %.0, 2, !dbg !1017
  %24 = sext i32 %23 to i64, !dbg !1018
  %25 = getelementptr inbounds i32, i32* %0, i64 %24, !dbg !1018
  %26 = load i32, i32* %25, align 4, !dbg !1019
  %27 = xor i32 %26, %22, !dbg !1019
  store i32 %27, i32* %25, align 4, !dbg !1019
  %28 = and i32 %7, 255, !dbg !1020
  %29 = add nsw i32 %.0, 3, !dbg !1021
  %30 = sext i32 %29 to i64, !dbg !1022
  %31 = getelementptr inbounds i32, i32* %0, i64 %30, !dbg !1022
  %32 = load i32, i32* %31, align 4, !dbg !1023
  %33 = xor i32 %32, %28, !dbg !1023
  store i32 %33, i32* %31, align 4, !dbg !1023
  br label %34, !dbg !1024

34:                                               ; preds = %5
  %35 = add nsw i32 %.0, 4, !dbg !1025
  call void @llvm.dbg.value(metadata i32 %35, metadata !994, metadata !DIExpression()), !dbg !992
  br label %3, !dbg !1026, !llvm.loop !1027

36:                                               ; preds = %3
  ret void, !dbg !1029
}

; Function Attrs: noinline nounwind uwtable
define internal void @sub_bytes(i32* %0) #0 !dbg !1030 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1031, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 0, metadata !1033, metadata !DIExpression()), !dbg !1032
  br label %2, !dbg !1034

2:                                                ; preds = %14, %1
  %.0 = phi i32 [ 0, %1 ], [ %15, %14 ], !dbg !1036
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1033, metadata !DIExpression()), !dbg !1032
  %3 = icmp slt i32 %.0, 16, !dbg !1037
  br i1 %3, label %4, label %16, !dbg !1039

4:                                                ; preds = %2
  %5 = sext i32 %.0 to i64, !dbg !1040
  %6 = getelementptr inbounds i32, i32* %0, i64 %5, !dbg !1040
  %7 = load i32, i32* %6, align 4, !dbg !1040
  %8 = zext i32 %7 to i64, !dbg !1042
  %9 = getelementptr inbounds [0 x i8], [0 x i8]* @br_aes_S, i64 0, i64 %8, !dbg !1042
  %10 = load i8, i8* %9, align 1, !dbg !1042
  %11 = zext i8 %10 to i32, !dbg !1042
  %12 = sext i32 %.0 to i64, !dbg !1043
  %13 = getelementptr inbounds i32, i32* %0, i64 %12, !dbg !1043
  store i32 %11, i32* %13, align 4, !dbg !1044
  br label %14, !dbg !1045

14:                                               ; preds = %4
  %15 = add nsw i32 %.0, 1, !dbg !1046
  call void @llvm.dbg.value(metadata i32 %15, metadata !1033, metadata !DIExpression()), !dbg !1032
  br label %2, !dbg !1047, !llvm.loop !1048

16:                                               ; preds = %2
  ret void, !dbg !1050
}

; Function Attrs: noinline nounwind uwtable
define internal void @shift_rows(i32* %0) #0 !dbg !1051 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1052, metadata !DIExpression()), !dbg !1053
  %2 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1054
  %3 = load i32, i32* %2, align 4, !dbg !1054
  call void @llvm.dbg.value(metadata i32 %3, metadata !1055, metadata !DIExpression()), !dbg !1053
  %4 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !1056
  %5 = load i32, i32* %4, align 4, !dbg !1056
  %6 = getelementptr inbounds i32, i32* %0, i64 1, !dbg !1057
  store i32 %5, i32* %6, align 4, !dbg !1058
  %7 = getelementptr inbounds i32, i32* %0, i64 9, !dbg !1059
  %8 = load i32, i32* %7, align 4, !dbg !1059
  %9 = getelementptr inbounds i32, i32* %0, i64 5, !dbg !1060
  store i32 %8, i32* %9, align 4, !dbg !1061
  %10 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !1062
  %11 = load i32, i32* %10, align 4, !dbg !1062
  %12 = getelementptr inbounds i32, i32* %0, i64 9, !dbg !1063
  store i32 %11, i32* %12, align 4, !dbg !1064
  %13 = getelementptr inbounds i32, i32* %0, i64 13, !dbg !1065
  store i32 %3, i32* %13, align 4, !dbg !1066
  %14 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1067
  %15 = load i32, i32* %14, align 4, !dbg !1067
  call void @llvm.dbg.value(metadata i32 %15, metadata !1055, metadata !DIExpression()), !dbg !1053
  %16 = getelementptr inbounds i32, i32* %0, i64 10, !dbg !1068
  %17 = load i32, i32* %16, align 4, !dbg !1068
  %18 = getelementptr inbounds i32, i32* %0, i64 2, !dbg !1069
  store i32 %17, i32* %18, align 4, !dbg !1070
  %19 = getelementptr inbounds i32, i32* %0, i64 10, !dbg !1071
  store i32 %15, i32* %19, align 4, !dbg !1072
  %20 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !1073
  %21 = load i32, i32* %20, align 4, !dbg !1073
  call void @llvm.dbg.value(metadata i32 %21, metadata !1055, metadata !DIExpression()), !dbg !1053
  %22 = getelementptr inbounds i32, i32* %0, i64 14, !dbg !1074
  %23 = load i32, i32* %22, align 4, !dbg !1074
  %24 = getelementptr inbounds i32, i32* %0, i64 6, !dbg !1075
  store i32 %23, i32* %24, align 4, !dbg !1076
  %25 = getelementptr inbounds i32, i32* %0, i64 14, !dbg !1077
  store i32 %21, i32* %25, align 4, !dbg !1078
  %26 = getelementptr inbounds i32, i32* %0, i64 15, !dbg !1079
  %27 = load i32, i32* %26, align 4, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %27, metadata !1055, metadata !DIExpression()), !dbg !1053
  %28 = getelementptr inbounds i32, i32* %0, i64 11, !dbg !1080
  %29 = load i32, i32* %28, align 4, !dbg !1080
  %30 = getelementptr inbounds i32, i32* %0, i64 15, !dbg !1081
  store i32 %29, i32* %30, align 4, !dbg !1082
  %31 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1083
  %32 = load i32, i32* %31, align 4, !dbg !1083
  %33 = getelementptr inbounds i32, i32* %0, i64 11, !dbg !1084
  store i32 %32, i32* %33, align 4, !dbg !1085
  %34 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1086
  %35 = load i32, i32* %34, align 4, !dbg !1086
  %36 = getelementptr inbounds i32, i32* %0, i64 7, !dbg !1087
  store i32 %35, i32* %36, align 4, !dbg !1088
  %37 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !1089
  store i32 %27, i32* %37, align 4, !dbg !1090
  ret void, !dbg !1091
}

; Function Attrs: noinline nounwind uwtable
define internal void @mix_columns(i32* %0) #0 !dbg !1092 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1093, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i32 0, metadata !1095, metadata !DIExpression()), !dbg !1094
  br label %2, !dbg !1096

2:                                                ; preds = %73, %1
  %.0 = phi i32 [ 0, %1 ], [ %74, %73 ], !dbg !1098
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1095, metadata !DIExpression()), !dbg !1094
  %3 = icmp slt i32 %.0, 16, !dbg !1099
  br i1 %3, label %4, label %75, !dbg !1101

4:                                                ; preds = %2
  %5 = add nsw i32 %.0, 0, !dbg !1102
  %6 = sext i32 %5 to i64, !dbg !1104
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !1104
  %8 = load i32, i32* %7, align 4, !dbg !1104
  call void @llvm.dbg.value(metadata i32 %8, metadata !1105, metadata !DIExpression()), !dbg !1106
  %9 = add nsw i32 %.0, 1, !dbg !1107
  %10 = sext i32 %9 to i64, !dbg !1108
  %11 = getelementptr inbounds i32, i32* %0, i64 %10, !dbg !1108
  %12 = load i32, i32* %11, align 4, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %12, metadata !1109, metadata !DIExpression()), !dbg !1106
  %13 = add nsw i32 %.0, 2, !dbg !1110
  %14 = sext i32 %13 to i64, !dbg !1111
  %15 = getelementptr inbounds i32, i32* %0, i64 %14, !dbg !1111
  %16 = load i32, i32* %15, align 4, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %16, metadata !1112, metadata !DIExpression()), !dbg !1106
  %17 = add nsw i32 %.0, 3, !dbg !1113
  %18 = sext i32 %17 to i64, !dbg !1114
  %19 = getelementptr inbounds i32, i32* %0, i64 %18, !dbg !1114
  %20 = load i32, i32* %19, align 4, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %20, metadata !1115, metadata !DIExpression()), !dbg !1106
  %21 = shl i32 %8, 1, !dbg !1116
  %22 = xor i32 %21, %12, !dbg !1117
  %23 = shl i32 %12, 1, !dbg !1118
  %24 = xor i32 %22, %23, !dbg !1119
  %25 = xor i32 %24, %16, !dbg !1120
  %26 = xor i32 %25, %20, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %26, metadata !1122, metadata !DIExpression()), !dbg !1106
  %27 = shl i32 %12, 1, !dbg !1123
  %28 = xor i32 %8, %27, !dbg !1124
  %29 = xor i32 %28, %16, !dbg !1125
  %30 = shl i32 %16, 1, !dbg !1126
  %31 = xor i32 %29, %30, !dbg !1127
  %32 = xor i32 %31, %20, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %32, metadata !1129, metadata !DIExpression()), !dbg !1106
  %33 = xor i32 %8, %12, !dbg !1130
  %34 = shl i32 %16, 1, !dbg !1131
  %35 = xor i32 %33, %34, !dbg !1132
  %36 = xor i32 %35, %20, !dbg !1133
  %37 = shl i32 %20, 1, !dbg !1134
  %38 = xor i32 %36, %37, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %38, metadata !1136, metadata !DIExpression()), !dbg !1106
  %39 = shl i32 %8, 1, !dbg !1137
  %40 = xor i32 %8, %39, !dbg !1138
  %41 = xor i32 %40, %12, !dbg !1139
  %42 = xor i32 %41, %16, !dbg !1140
  %43 = shl i32 %20, 1, !dbg !1141
  %44 = xor i32 %42, %43, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %44, metadata !1143, metadata !DIExpression()), !dbg !1106
  %45 = lshr i32 %26, 8, !dbg !1144
  %46 = sub nsw i32 0, %45, !dbg !1145
  %47 = and i32 %46, 283, !dbg !1146
  %48 = xor i32 %26, %47, !dbg !1147
  %49 = add nsw i32 %.0, 0, !dbg !1148
  %50 = sext i32 %49 to i64, !dbg !1149
  %51 = getelementptr inbounds i32, i32* %0, i64 %50, !dbg !1149
  store i32 %48, i32* %51, align 4, !dbg !1150
  %52 = lshr i32 %32, 8, !dbg !1151
  %53 = sub nsw i32 0, %52, !dbg !1152
  %54 = and i32 %53, 283, !dbg !1153
  %55 = xor i32 %32, %54, !dbg !1154
  %56 = add nsw i32 %.0, 1, !dbg !1155
  %57 = sext i32 %56 to i64, !dbg !1156
  %58 = getelementptr inbounds i32, i32* %0, i64 %57, !dbg !1156
  store i32 %55, i32* %58, align 4, !dbg !1157
  %59 = lshr i32 %38, 8, !dbg !1158
  %60 = sub nsw i32 0, %59, !dbg !1159
  %61 = and i32 %60, 283, !dbg !1160
  %62 = xor i32 %38, %61, !dbg !1161
  %63 = add nsw i32 %.0, 2, !dbg !1162
  %64 = sext i32 %63 to i64, !dbg !1163
  %65 = getelementptr inbounds i32, i32* %0, i64 %64, !dbg !1163
  store i32 %62, i32* %65, align 4, !dbg !1164
  %66 = lshr i32 %44, 8, !dbg !1165
  %67 = sub nsw i32 0, %66, !dbg !1166
  %68 = and i32 %67, 283, !dbg !1167
  %69 = xor i32 %44, %68, !dbg !1168
  %70 = add nsw i32 %.0, 3, !dbg !1169
  %71 = sext i32 %70 to i64, !dbg !1170
  %72 = getelementptr inbounds i32, i32* %0, i64 %71, !dbg !1170
  store i32 %69, i32* %72, align 4, !dbg !1171
  br label %73, !dbg !1172

73:                                               ; preds = %4
  %74 = add nsw i32 %.0, 4, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %74, metadata !1095, metadata !DIExpression()), !dbg !1094
  br label %2, !dbg !1174, !llvm.loop !1175

75:                                               ; preds = %2
  ret void, !dbg !1177
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @decrypt_wrapper(i32 %0, i32* %1, i8* %2) #0 !dbg !1178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1179, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i32* %1, metadata !1181, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %2, metadata !1182, metadata !DIExpression()), !dbg !1180
  %4 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %0), !dbg !1183
  call void @public_in(%struct.smack_value* %4), !dbg !1184
  %5 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %1), !dbg !1185
  call void @public_in(%struct.smack_value* %5), !dbg !1186
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1187
  call void @public_in(%struct.smack_value* %6), !dbg !1188
  %7 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !1189
  call void @public_in(%struct.smack_value* %7), !dbg !1190
  call void @br_aes_small_decrypt(i32 %0, i32* %1, i8* %2), !dbg !1191
  ret void, !dbg !1192
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #3

declare dso_local void @public_in(%struct.smack_value*) #3

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @decrypt_wrapper_t() #0 !dbg !1193 {
  call void @br_aes_small_decrypt(i32 undef, i32* undef, i8* undef), !dbg !1196
  ret void, !dbg !1197
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2, !35, !59, !89, !123, !131, !135}
!llvm.ident = !{!137, !137, !137, !137, !137, !137, !137}
!llvm.module.flags = !{!138, !139, !140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "br_aes_small_cbcdec_vtable", scope: !2, file: !3, line: 61, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/aes_small_cbcdec.c", directory: "/home/luwei/bech-back/BearSSL/AES_small")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcdec_class", file: !8, line: 449, baseType: !9)
!8 = !DIFile(filename: "../BearSSL/inc/bearssl_block.h", directory: "/home/luwei/bech-back/BearSSL/AES_small")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcdec_class_", file: !8, line: 450, size: 256, elements: !10)
!10 = !{!11, !15, !17, !18, !26}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !9, file: !8, line: 455, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 46, baseType: !14)
!13 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !9, file: !8, line: 460, baseType: !16, size: 32, offset: 64)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !9, file: !8, line: 466, baseType: !16, size: 32, offset: 96)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !9, file: !8, line: 479, baseType: !19, size: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !24, !12}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !9, file: !8, line: 495, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !32, !32, !12}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "br_aes_small_cbcenc_vtable", scope: !35, file: !36, line: 59, type: !38, isLocal: false, isDefinition: true)
!35 = distinct !DICompileUnit(language: DW_LANG_C99, file: !36, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !37, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "../BearSSL/src/symcipher/aes_small_cbcenc.c", directory: "/home/luwei/bech-back/BearSSL/AES_small")
!37 = !{!33}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_cbcenc_class", file: !8, line: 393, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_cbcenc_class_", file: !8, line: 394, size: 256, elements: !41)
!41 = !{!42, !43, !44, !45, !51}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !40, file: !8, line: 399, baseType: !12, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !40, file: !8, line: 404, baseType: !16, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !40, file: !8, line: 410, baseType: !16, size: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !40, file: !8, line: 423, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !24, !12}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !40, file: !8, line: 439, baseType: !52, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55, !32, !32, !12}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "br_aes_small_ctr_vtable", scope: !59, file: !60, line: 75, type: !64, isLocal: false, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !61, globals: !63, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "../BearSSL/src/symcipher/aes_small_ctr.c", directory: "/home/luwei/bech-back/BearSSL/AES_small")
!61 = !{!62}
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !{!57}
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_ctr_class", file: !8, line: 506, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_ctr_class_", file: !8, line: 507, size: 256, elements: !67)
!67 = !{!68, !69, !70, !71, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !66, file: !8, line: 512, baseType: !12, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !66, file: !8, line: 517, baseType: !16, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !66, file: !8, line: 523, baseType: !16, size: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !66, file: !8, line: 536, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !24, !12}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !66, file: !8, line: 562, baseType: !78, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !85, !24, !81, !32, !12}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !82, line: 26, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !84, line: 42, baseType: !16)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "br_aes_small_ctrcbc_vtable", scope: !89, file: !90, line: 124, type: !93, isLocal: false, isDefinition: true)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !91, globals: !92, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "../BearSSL/src/symcipher/aes_small_ctrcbc.c", directory: "/home/luwei/bech-back/BearSSL/AES_small")
!91 = !{!81, !62}
!92 = !{!87}
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_block_ctrcbc_class", file: !8, line: 573, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "br_block_ctrcbc_class_", file: !8, line: 574, size: 448, elements: !96)
!96 = !{!97, !98, !99, !100, !106, !112, !113, !117}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "context_size", scope: !95, file: !8, line: 579, baseType: !12, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !95, file: !8, line: 584, baseType: !16, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "log_block_size", scope: !95, file: !8, line: 590, baseType: !16, size: 32, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !95, file: !8, line: 603, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !104, !24, !12}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !95, file: !8, line: 627, baseType: !107, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110, !32, !32, !32, !12}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "decrypt", scope: !95, file: !8, line: 651, baseType: !107, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ctr", scope: !95, file: !8, line: 669, baseType: !114, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !110, !32, !32, !12}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "mac", scope: !95, file: !8, line: 688, baseType: !118, size: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !110, !32, !24, !12}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "iS", scope: !123, file: !124, line: 30, type: !127, isLocal: true, isDefinition: true)
!123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !124, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !126, splitDebugInlining: false, nameTableKind: None)
!124 = !DIFile(filename: "../BearSSL/src/symcipher/aes_small_dec.c", directory: "/home/luwei/bech-back/BearSSL/AES_small")
!125 = !{!16}
!126 = !{!121}
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !129)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!129 = !{!130}
!130 = !DISubrange(count: 256)
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, splitDebugInlining: false, nameTableKind: None)
!132 = !DIFile(filename: "../BearSSL/src/symcipher/aes_small_enc.c", directory: "/home/luwei/bech-back/BearSSL/AES_small")
!133 = !{!16, !134}
!134 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!135 = distinct !DICompileUnit(language: DW_LANG_C99, file: !136, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!136 = !DIFile(filename: "decrypt.c", directory: "/home/luwei/bech-back/BearSSL/AES_small")
!137 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!138 = !{i32 7, !"Dwarf Version", i32 4}
!139 = !{i32 2, !"Debug Info Version", i32 3}
!140 = !{i32 1, !"wchar_size", i32 4}
!141 = distinct !DISubprogram(name: "br_aes_small_cbcdec_init", scope: !3, file: !3, line: 29, type: !142, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !144, !24, !12}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_aes_small_cbcdec_keys", file: !8, line: 951, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 944, size: 2048, elements: !147)
!147 = !{!148, !149, !153}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !146, file: !8, line: 946, baseType: !23, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !146, file: !8, line: 948, baseType: !150, size: 1920, offset: 64)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 1920, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 60)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !146, file: !8, line: 949, baseType: !16, size: 32, offset: 1984)
!154 = !DILocalVariable(name: "ctx", arg: 1, scope: !141, file: !3, line: 29, type: !144)
!155 = !DILocation(line: 0, scope: !141)
!156 = !DILocalVariable(name: "key", arg: 2, scope: !141, file: !3, line: 30, type: !24)
!157 = !DILocalVariable(name: "len", arg: 3, scope: !141, file: !3, line: 30, type: !12)
!158 = !DILocation(line: 32, column: 7, scope: !141)
!159 = !DILocation(line: 32, column: 14, scope: !141)
!160 = !DILocation(line: 33, column: 41, scope: !141)
!161 = !DILocation(line: 33, column: 36, scope: !141)
!162 = !DILocation(line: 33, column: 20, scope: !141)
!163 = !DILocation(line: 33, column: 7, scope: !141)
!164 = !DILocation(line: 33, column: 18, scope: !141)
!165 = !DILocation(line: 34, column: 1, scope: !141)
!166 = distinct !DISubprogram(name: "br_aes_small_cbcdec_run", scope: !3, file: !3, line: 38, type: !167, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169, !32, !32, !12}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!171 = !DILocalVariable(name: "ctx", arg: 1, scope: !166, file: !3, line: 38, type: !169)
!172 = !DILocation(line: 0, scope: !166)
!173 = !DILocalVariable(name: "iv", arg: 2, scope: !166, file: !3, line: 39, type: !32)
!174 = !DILocalVariable(name: "data", arg: 3, scope: !166, file: !3, line: 39, type: !32)
!175 = !DILocalVariable(name: "len", arg: 4, scope: !166, file: !3, line: 39, type: !12)
!176 = !DILocalVariable(name: "ivbuf", scope: !166, file: !3, line: 41, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!178 = !DILocalVariable(name: "buf", scope: !166, file: !3, line: 41, type: !177)
!179 = !DILocation(line: 45, column: 2, scope: !166)
!180 = !DILocation(line: 45, column: 13, scope: !166)
!181 = !DILocalVariable(name: "tmp", scope: !182, file: !3, line: 46, type: !183)
!182 = distinct !DILexicalBlock(scope: !166, file: !3, line: 45, column: 18)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 16)
!186 = !DILocation(line: 46, column: 17, scope: !182)
!187 = !DILocation(line: 49, column: 3, scope: !182)
!188 = !DILocation(line: 50, column: 29, scope: !182)
!189 = !DILocation(line: 50, column: 46, scope: !182)
!190 = !DILocation(line: 50, column: 41, scope: !182)
!191 = !DILocation(line: 50, column: 3, scope: !182)
!192 = !DILocalVariable(name: "i", scope: !182, file: !3, line: 47, type: !134)
!193 = !DILocation(line: 0, scope: !182)
!194 = !DILocation(line: 51, column: 8, scope: !195)
!195 = distinct !DILexicalBlock(scope: !182, file: !3, line: 51, column: 3)
!196 = !DILocation(line: 0, scope: !195)
!197 = !DILocation(line: 51, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !3, line: 51, column: 3)
!199 = !DILocation(line: 51, column: 3, scope: !195)
!200 = !DILocation(line: 52, column: 14, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 51, column: 29)
!202 = !DILocation(line: 52, column: 4, scope: !201)
!203 = !DILocation(line: 52, column: 11, scope: !201)
!204 = !DILocation(line: 53, column: 3, scope: !201)
!205 = !DILocation(line: 51, column: 25, scope: !198)
!206 = !DILocation(line: 51, column: 3, scope: !198)
!207 = distinct !{!207, !199, !208, !209}
!208 = !DILocation(line: 53, column: 3, scope: !195)
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 54, column: 3, scope: !182)
!211 = !DILocation(line: 55, column: 7, scope: !182)
!212 = !DILocation(line: 56, column: 7, scope: !182)
!213 = distinct !{!213, !179, !214, !209}
!214 = !DILocation(line: 57, column: 2, scope: !166)
!215 = !DILocation(line: 58, column: 1, scope: !166)
!216 = distinct !DISubprogram(name: "br_aes_small_cbcenc_init", scope: !36, file: !36, line: 29, type: !217, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219, !24, !12}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_aes_small_cbcenc_keys", file: !8, line: 936, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 929, size: 2048, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !221, file: !8, line: 931, baseType: !50, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !221, file: !8, line: 933, baseType: !150, size: 1920, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !221, file: !8, line: 934, baseType: !16, size: 32, offset: 1984)
!226 = !DILocalVariable(name: "ctx", arg: 1, scope: !216, file: !36, line: 29, type: !219)
!227 = !DILocation(line: 0, scope: !216)
!228 = !DILocalVariable(name: "key", arg: 2, scope: !216, file: !36, line: 30, type: !24)
!229 = !DILocalVariable(name: "len", arg: 3, scope: !216, file: !36, line: 30, type: !12)
!230 = !DILocation(line: 32, column: 7, scope: !216)
!231 = !DILocation(line: 32, column: 14, scope: !216)
!232 = !DILocation(line: 33, column: 41, scope: !216)
!233 = !DILocation(line: 33, column: 36, scope: !216)
!234 = !DILocation(line: 33, column: 20, scope: !216)
!235 = !DILocation(line: 33, column: 7, scope: !216)
!236 = !DILocation(line: 33, column: 18, scope: !216)
!237 = !DILocation(line: 34, column: 1, scope: !216)
!238 = distinct !DISubprogram(name: "br_aes_small_cbcenc_run", scope: !36, file: !36, line: 38, type: !239, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !4)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !241, !32, !32, !12}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!243 = !DILocalVariable(name: "ctx", arg: 1, scope: !238, file: !36, line: 38, type: !241)
!244 = !DILocation(line: 0, scope: !238)
!245 = !DILocalVariable(name: "iv", arg: 2, scope: !238, file: !36, line: 39, type: !32)
!246 = !DILocalVariable(name: "data", arg: 3, scope: !238, file: !36, line: 39, type: !32)
!247 = !DILocalVariable(name: "len", arg: 4, scope: !238, file: !36, line: 39, type: !12)
!248 = !DILocalVariable(name: "ivbuf", scope: !238, file: !36, line: 41, type: !177)
!249 = !DILocalVariable(name: "buf", scope: !238, file: !36, line: 41, type: !177)
!250 = !DILocation(line: 45, column: 2, scope: !238)
!251 = !DILocation(line: 45, column: 13, scope: !238)
!252 = !DILocalVariable(name: "i", scope: !253, file: !36, line: 46, type: !134)
!253 = distinct !DILexicalBlock(scope: !238, file: !36, line: 45, column: 18)
!254 = !DILocation(line: 0, scope: !253)
!255 = !DILocation(line: 48, column: 8, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !36, line: 48, column: 3)
!257 = !DILocation(line: 0, scope: !256)
!258 = !DILocation(line: 48, column: 17, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !36, line: 48, column: 3)
!260 = !DILocation(line: 48, column: 3, scope: !256)
!261 = !DILocation(line: 49, column: 14, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !36, line: 48, column: 29)
!263 = !DILocation(line: 49, column: 4, scope: !262)
!264 = !DILocation(line: 49, column: 11, scope: !262)
!265 = !DILocation(line: 50, column: 3, scope: !262)
!266 = !DILocation(line: 48, column: 25, scope: !259)
!267 = !DILocation(line: 48, column: 3, scope: !259)
!268 = distinct !{!268, !260, !269, !209}
!269 = !DILocation(line: 50, column: 3, scope: !256)
!270 = !DILocation(line: 51, column: 29, scope: !253)
!271 = !DILocation(line: 51, column: 46, scope: !253)
!272 = !DILocation(line: 51, column: 41, scope: !253)
!273 = !DILocation(line: 51, column: 3, scope: !253)
!274 = !DILocation(line: 52, column: 3, scope: !253)
!275 = !DILocation(line: 53, column: 7, scope: !253)
!276 = !DILocation(line: 54, column: 7, scope: !253)
!277 = distinct !{!277, !250, !278, !209}
!278 = !DILocation(line: 55, column: 2, scope: !238)
!279 = !DILocation(line: 56, column: 1, scope: !238)
!280 = distinct !DISubprogram(name: "br_aes_small_ctr_init", scope: !60, file: !60, line: 29, type: !281, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !283, !24, !12}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_aes_small_ctr_keys", file: !8, line: 967, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 960, size: 2048, elements: !286)
!286 = !{!287, !288, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !285, file: !8, line: 962, baseType: !76, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !285, file: !8, line: 964, baseType: !150, size: 1920, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !285, file: !8, line: 965, baseType: !16, size: 32, offset: 1984)
!290 = !DILocalVariable(name: "ctx", arg: 1, scope: !280, file: !60, line: 29, type: !283)
!291 = !DILocation(line: 0, scope: !280)
!292 = !DILocalVariable(name: "key", arg: 2, scope: !280, file: !60, line: 30, type: !24)
!293 = !DILocalVariable(name: "len", arg: 3, scope: !280, file: !60, line: 30, type: !12)
!294 = !DILocation(line: 32, column: 7, scope: !280)
!295 = !DILocation(line: 32, column: 14, scope: !280)
!296 = !DILocation(line: 33, column: 41, scope: !280)
!297 = !DILocation(line: 33, column: 36, scope: !280)
!298 = !DILocation(line: 33, column: 20, scope: !280)
!299 = !DILocation(line: 33, column: 7, scope: !280)
!300 = !DILocation(line: 33, column: 18, scope: !280)
!301 = !DILocation(line: 34, column: 1, scope: !280)
!302 = distinct !DISubprogram(name: "br_aes_small_ctr_run", scope: !60, file: !60, line: 51, type: !303, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!303 = !DISubroutineType(types: !304)
!304 = !{!81, !305, !24, !81, !32, !12}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!307 = !DILocalVariable(name: "ctx", arg: 1, scope: !302, file: !60, line: 51, type: !305)
!308 = !DILocation(line: 0, scope: !302)
!309 = !DILocalVariable(name: "iv", arg: 2, scope: !302, file: !60, line: 52, type: !24)
!310 = !DILocalVariable(name: "cc", arg: 3, scope: !302, file: !60, line: 52, type: !81)
!311 = !DILocalVariable(name: "data", arg: 4, scope: !302, file: !60, line: 52, type: !32)
!312 = !DILocalVariable(name: "len", arg: 5, scope: !302, file: !60, line: 52, type: !12)
!313 = !DILocalVariable(name: "buf", scope: !302, file: !60, line: 54, type: !177)
!314 = !DILocation(line: 57, column: 2, scope: !302)
!315 = !DILocation(line: 57, column: 13, scope: !302)
!316 = !DILocalVariable(name: "tmp", scope: !317, file: !60, line: 58, type: !183)
!317 = distinct !DILexicalBlock(scope: !302, file: !60, line: 57, column: 18)
!318 = !DILocation(line: 58, column: 17, scope: !317)
!319 = !DILocation(line: 60, column: 3, scope: !317)
!320 = !DILocation(line: 61, column: 14, scope: !317)
!321 = !DILocation(line: 61, column: 18, scope: !317)
!322 = !DILocation(line: 61, column: 27, scope: !317)
!323 = !DILocation(line: 61, column: 3, scope: !317)
!324 = !DILocation(line: 62, column: 29, scope: !317)
!325 = !DILocation(line: 62, column: 46, scope: !317)
!326 = !DILocation(line: 62, column: 41, scope: !317)
!327 = !DILocation(line: 62, column: 52, scope: !317)
!328 = !DILocation(line: 62, column: 3, scope: !317)
!329 = !DILocation(line: 63, column: 11, scope: !330)
!330 = distinct !DILexicalBlock(scope: !317, file: !60, line: 63, column: 7)
!331 = !DILocation(line: 63, column: 7, scope: !317)
!332 = !DILocation(line: 64, column: 16, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !60, line: 63, column: 18)
!334 = !DILocation(line: 64, column: 4, scope: !333)
!335 = !DILocation(line: 65, column: 4, scope: !333)
!336 = !DILocation(line: 67, column: 15, scope: !317)
!337 = !DILocation(line: 67, column: 3, scope: !317)
!338 = !DILocation(line: 68, column: 7, scope: !317)
!339 = !DILocation(line: 69, column: 7, scope: !317)
!340 = distinct !{!340, !314, !341, !209}
!341 = !DILocation(line: 70, column: 2, scope: !302)
!342 = !DILocation(line: 71, column: 2, scope: !302)
!343 = distinct !DISubprogram(name: "br_enc32be", scope: !344, file: !344, line: 558, type: !345, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!344 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/AES_small")
!345 = !DISubroutineType(types: !346)
!346 = !{null, !32, !81}
!347 = !DILocalVariable(name: "dst", arg: 1, scope: !343, file: !344, line: 558, type: !32)
!348 = !DILocation(line: 0, scope: !343)
!349 = !DILocalVariable(name: "x", arg: 2, scope: !343, file: !344, line: 558, type: !81)
!350 = !DILocalVariable(name: "buf", scope: !343, file: !344, line: 563, type: !177)
!351 = !DILocation(line: 566, column: 29, scope: !343)
!352 = !DILocation(line: 566, column: 11, scope: !343)
!353 = !DILocation(line: 566, column: 2, scope: !343)
!354 = !DILocation(line: 566, column: 9, scope: !343)
!355 = !DILocation(line: 567, column: 29, scope: !343)
!356 = !DILocation(line: 567, column: 11, scope: !343)
!357 = !DILocation(line: 567, column: 2, scope: !343)
!358 = !DILocation(line: 567, column: 9, scope: !343)
!359 = !DILocation(line: 568, column: 29, scope: !343)
!360 = !DILocation(line: 568, column: 11, scope: !343)
!361 = !DILocation(line: 568, column: 2, scope: !343)
!362 = !DILocation(line: 568, column: 9, scope: !343)
!363 = !DILocation(line: 569, column: 11, scope: !343)
!364 = !DILocation(line: 569, column: 2, scope: !343)
!365 = !DILocation(line: 569, column: 9, scope: !343)
!366 = !DILocation(line: 571, column: 1, scope: !343)
!367 = distinct !DISubprogram(name: "xorbuf", scope: !60, file: !60, line: 37, type: !368, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !32, !24, !12}
!370 = !DILocalVariable(name: "dst", arg: 1, scope: !367, file: !60, line: 37, type: !32)
!371 = !DILocation(line: 0, scope: !367)
!372 = !DILocalVariable(name: "src", arg: 2, scope: !367, file: !60, line: 37, type: !24)
!373 = !DILocalVariable(name: "len", arg: 3, scope: !367, file: !60, line: 37, type: !12)
!374 = !DILocalVariable(name: "d", scope: !367, file: !60, line: 39, type: !177)
!375 = !DILocalVariable(name: "s", scope: !367, file: !60, line: 40, type: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!377 = !DILocation(line: 44, column: 2, scope: !367)
!378 = !DILocation(line: 44, column: 13, scope: !367)
!379 = !DILocation(line: 44, column: 16, scope: !367)
!380 = !DILocation(line: 45, column: 15, scope: !381)
!381 = distinct !DILexicalBlock(scope: !367, file: !60, line: 44, column: 21)
!382 = !DILocation(line: 45, column: 12, scope: !381)
!383 = !DILocation(line: 45, column: 6, scope: !381)
!384 = !DILocation(line: 45, column: 9, scope: !381)
!385 = distinct !{!385, !377, !386, !209}
!386 = !DILocation(line: 46, column: 2, scope: !367)
!387 = !DILocation(line: 47, column: 1, scope: !367)
!388 = distinct !DISubprogram(name: "br_aes_small_ctrcbc_init", scope: !90, file: !90, line: 29, type: !389, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391, !24, !12}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "br_aes_small_ctrcbc_keys", file: !8, line: 983, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 976, size: 2048, elements: !394)
!394 = !{!395, !396, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !393, file: !8, line: 978, baseType: !105, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "skey", scope: !393, file: !8, line: 980, baseType: !150, size: 1920, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "num_rounds", scope: !393, file: !8, line: 981, baseType: !16, size: 32, offset: 1984)
!398 = !DILocalVariable(name: "ctx", arg: 1, scope: !388, file: !90, line: 29, type: !391)
!399 = !DILocation(line: 0, scope: !388)
!400 = !DILocalVariable(name: "key", arg: 2, scope: !388, file: !90, line: 30, type: !24)
!401 = !DILocalVariable(name: "len", arg: 3, scope: !388, file: !90, line: 30, type: !12)
!402 = !DILocation(line: 32, column: 7, scope: !388)
!403 = !DILocation(line: 32, column: 14, scope: !388)
!404 = !DILocation(line: 33, column: 41, scope: !388)
!405 = !DILocation(line: 33, column: 36, scope: !388)
!406 = !DILocation(line: 33, column: 20, scope: !388)
!407 = !DILocation(line: 33, column: 7, scope: !388)
!408 = !DILocation(line: 33, column: 18, scope: !388)
!409 = !DILocation(line: 34, column: 1, scope: !388)
!410 = distinct !DISubprogram(name: "br_aes_small_ctrcbc_encrypt", scope: !90, file: !90, line: 107, type: !411, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413, !32, !32, !32, !12}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!415 = !DILocalVariable(name: "ctx", arg: 1, scope: !410, file: !90, line: 107, type: !413)
!416 = !DILocation(line: 0, scope: !410)
!417 = !DILocalVariable(name: "ctr", arg: 2, scope: !410, file: !90, line: 108, type: !32)
!418 = !DILocalVariable(name: "cbcmac", arg: 3, scope: !410, file: !90, line: 108, type: !32)
!419 = !DILocalVariable(name: "data", arg: 4, scope: !410, file: !90, line: 108, type: !32)
!420 = !DILocalVariable(name: "len", arg: 5, scope: !410, file: !90, line: 108, type: !12)
!421 = !DILocation(line: 110, column: 2, scope: !410)
!422 = !DILocation(line: 111, column: 2, scope: !410)
!423 = !DILocation(line: 112, column: 1, scope: !410)
!424 = distinct !DISubprogram(name: "br_aes_small_ctrcbc_decrypt", scope: !90, file: !90, line: 116, type: !411, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!425 = !DILocalVariable(name: "ctx", arg: 1, scope: !424, file: !90, line: 116, type: !413)
!426 = !DILocation(line: 0, scope: !424)
!427 = !DILocalVariable(name: "ctr", arg: 2, scope: !424, file: !90, line: 117, type: !32)
!428 = !DILocalVariable(name: "cbcmac", arg: 3, scope: !424, file: !90, line: 117, type: !32)
!429 = !DILocalVariable(name: "data", arg: 4, scope: !424, file: !90, line: 117, type: !32)
!430 = !DILocalVariable(name: "len", arg: 5, scope: !424, file: !90, line: 117, type: !12)
!431 = !DILocation(line: 119, column: 2, scope: !424)
!432 = !DILocation(line: 120, column: 2, scope: !424)
!433 = !DILocation(line: 121, column: 1, scope: !424)
!434 = distinct !DISubprogram(name: "br_aes_small_ctrcbc_ctr", scope: !90, file: !90, line: 51, type: !435, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !413, !32, !32, !12}
!437 = !DILocalVariable(name: "ctx", arg: 1, scope: !434, file: !90, line: 51, type: !413)
!438 = !DILocation(line: 0, scope: !434)
!439 = !DILocalVariable(name: "ctr", arg: 2, scope: !434, file: !90, line: 52, type: !32)
!440 = !DILocalVariable(name: "data", arg: 3, scope: !434, file: !90, line: 52, type: !32)
!441 = !DILocalVariable(name: "len", arg: 4, scope: !434, file: !90, line: 52, type: !12)
!442 = !DILocalVariable(name: "buf", scope: !434, file: !90, line: 54, type: !177)
!443 = !DILocalVariable(name: "bctr", scope: !434, file: !90, line: 54, type: !177)
!444 = !DILocation(line: 59, column: 24, scope: !434)
!445 = !DILocation(line: 59, column: 8, scope: !434)
!446 = !DILocalVariable(name: "cc3", scope: !434, file: !90, line: 55, type: !81)
!447 = !DILocation(line: 60, column: 24, scope: !434)
!448 = !DILocation(line: 60, column: 8, scope: !434)
!449 = !DILocalVariable(name: "cc2", scope: !434, file: !90, line: 55, type: !81)
!450 = !DILocation(line: 61, column: 24, scope: !434)
!451 = !DILocation(line: 61, column: 8, scope: !434)
!452 = !DILocalVariable(name: "cc1", scope: !434, file: !90, line: 55, type: !81)
!453 = !DILocation(line: 62, column: 24, scope: !434)
!454 = !DILocation(line: 62, column: 8, scope: !434)
!455 = !DILocalVariable(name: "cc0", scope: !434, file: !90, line: 55, type: !81)
!456 = !DILocation(line: 63, column: 2, scope: !434)
!457 = !DILocation(line: 63, column: 13, scope: !434)
!458 = !DILocalVariable(name: "tmp", scope: !459, file: !90, line: 64, type: !183)
!459 = distinct !DILexicalBlock(scope: !434, file: !90, line: 63, column: 18)
!460 = !DILocation(line: 64, column: 17, scope: !459)
!461 = !DILocation(line: 67, column: 14, scope: !459)
!462 = !DILocation(line: 67, column: 18, scope: !459)
!463 = !DILocation(line: 67, column: 3, scope: !459)
!464 = !DILocation(line: 68, column: 14, scope: !459)
!465 = !DILocation(line: 68, column: 18, scope: !459)
!466 = !DILocation(line: 68, column: 3, scope: !459)
!467 = !DILocation(line: 69, column: 14, scope: !459)
!468 = !DILocation(line: 69, column: 18, scope: !459)
!469 = !DILocation(line: 69, column: 3, scope: !459)
!470 = !DILocation(line: 70, column: 14, scope: !459)
!471 = !DILocation(line: 70, column: 18, scope: !459)
!472 = !DILocation(line: 70, column: 3, scope: !459)
!473 = !DILocation(line: 71, column: 29, scope: !459)
!474 = !DILocation(line: 71, column: 46, scope: !459)
!475 = !DILocation(line: 71, column: 41, scope: !459)
!476 = !DILocation(line: 71, column: 52, scope: !459)
!477 = !DILocation(line: 71, column: 3, scope: !459)
!478 = !DILocation(line: 72, column: 15, scope: !459)
!479 = !DILocation(line: 72, column: 3, scope: !459)
!480 = !DILocation(line: 73, column: 7, scope: !459)
!481 = !DILocation(line: 74, column: 7, scope: !459)
!482 = !DILocation(line: 75, column: 7, scope: !459)
!483 = !DILocation(line: 76, column: 20, scope: !459)
!484 = !DILocation(line: 76, column: 18, scope: !459)
!485 = !DILocation(line: 76, column: 12, scope: !459)
!486 = !DILocation(line: 76, column: 27, scope: !459)
!487 = !DILocalVariable(name: "carry", scope: !459, file: !90, line: 65, type: !81)
!488 = !DILocation(line: 0, scope: !459)
!489 = !DILocation(line: 77, column: 7, scope: !459)
!490 = !DILocation(line: 78, column: 21, scope: !459)
!491 = !DILocation(line: 78, column: 19, scope: !459)
!492 = !DILocation(line: 78, column: 13, scope: !459)
!493 = !DILocation(line: 78, column: 28, scope: !459)
!494 = !DILocation(line: 78, column: 9, scope: !459)
!495 = !DILocation(line: 79, column: 7, scope: !459)
!496 = !DILocation(line: 80, column: 21, scope: !459)
!497 = !DILocation(line: 80, column: 19, scope: !459)
!498 = !DILocation(line: 80, column: 13, scope: !459)
!499 = !DILocation(line: 80, column: 28, scope: !459)
!500 = !DILocation(line: 80, column: 9, scope: !459)
!501 = !DILocation(line: 81, column: 7, scope: !459)
!502 = distinct !{!502, !456, !503, !209}
!503 = !DILocation(line: 82, column: 2, scope: !434)
!504 = !DILocation(line: 83, column: 18, scope: !434)
!505 = !DILocation(line: 83, column: 2, scope: !434)
!506 = !DILocation(line: 84, column: 18, scope: !434)
!507 = !DILocation(line: 84, column: 2, scope: !434)
!508 = !DILocation(line: 85, column: 18, scope: !434)
!509 = !DILocation(line: 85, column: 2, scope: !434)
!510 = !DILocation(line: 86, column: 18, scope: !434)
!511 = !DILocation(line: 86, column: 2, scope: !434)
!512 = !DILocation(line: 87, column: 1, scope: !434)
!513 = distinct !DISubprogram(name: "br_aes_small_ctrcbc_mac", scope: !90, file: !90, line: 91, type: !514, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !413, !32, !24, !12}
!516 = !DILocalVariable(name: "ctx", arg: 1, scope: !513, file: !90, line: 91, type: !413)
!517 = !DILocation(line: 0, scope: !513)
!518 = !DILocalVariable(name: "cbcmac", arg: 2, scope: !513, file: !90, line: 92, type: !32)
!519 = !DILocalVariable(name: "data", arg: 3, scope: !513, file: !90, line: 92, type: !24)
!520 = !DILocalVariable(name: "len", arg: 4, scope: !513, file: !90, line: 92, type: !12)
!521 = !DILocalVariable(name: "buf", scope: !513, file: !90, line: 94, type: !376)
!522 = !DILocation(line: 97, column: 2, scope: !513)
!523 = !DILocation(line: 97, column: 13, scope: !513)
!524 = !DILocation(line: 98, column: 3, scope: !525)
!525 = distinct !DILexicalBlock(scope: !513, file: !90, line: 97, column: 18)
!526 = !DILocation(line: 99, column: 29, scope: !525)
!527 = !DILocation(line: 99, column: 46, scope: !525)
!528 = !DILocation(line: 99, column: 41, scope: !525)
!529 = !DILocation(line: 99, column: 3, scope: !525)
!530 = !DILocation(line: 100, column: 7, scope: !525)
!531 = !DILocation(line: 101, column: 7, scope: !525)
!532 = distinct !{!532, !522, !533, !209}
!533 = !DILocation(line: 102, column: 2, scope: !513)
!534 = !DILocation(line: 103, column: 1, scope: !513)
!535 = distinct !DISubprogram(name: "xorbuf", scope: !90, file: !90, line: 37, type: !368, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!536 = !DILocalVariable(name: "dst", arg: 1, scope: !535, file: !90, line: 37, type: !32)
!537 = !DILocation(line: 0, scope: !535)
!538 = !DILocalVariable(name: "src", arg: 2, scope: !535, file: !90, line: 37, type: !24)
!539 = !DILocalVariable(name: "len", arg: 3, scope: !535, file: !90, line: 37, type: !12)
!540 = !DILocalVariable(name: "d", scope: !535, file: !90, line: 39, type: !177)
!541 = !DILocalVariable(name: "s", scope: !535, file: !90, line: 40, type: !376)
!542 = !DILocation(line: 44, column: 2, scope: !535)
!543 = !DILocation(line: 44, column: 13, scope: !535)
!544 = !DILocation(line: 44, column: 16, scope: !535)
!545 = !DILocation(line: 45, column: 15, scope: !546)
!546 = distinct !DILexicalBlock(scope: !535, file: !90, line: 44, column: 21)
!547 = !DILocation(line: 45, column: 12, scope: !546)
!548 = !DILocation(line: 45, column: 6, scope: !546)
!549 = !DILocation(line: 45, column: 9, scope: !546)
!550 = distinct !{!550, !542, !551, !209}
!551 = !DILocation(line: 46, column: 2, scope: !535)
!552 = !DILocation(line: 47, column: 1, scope: !535)
!553 = distinct !DISubprogram(name: "br_dec32be", scope: !344, file: !344, line: 590, type: !554, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!554 = !DISubroutineType(types: !555)
!555 = !{!81, !24}
!556 = !DILocalVariable(name: "src", arg: 1, scope: !553, file: !344, line: 590, type: !24)
!557 = !DILocation(line: 0, scope: !553)
!558 = !DILocalVariable(name: "buf", scope: !553, file: !344, line: 595, type: !376)
!559 = !DILocation(line: 598, column: 20, scope: !553)
!560 = !DILocation(line: 598, column: 10, scope: !553)
!561 = !DILocation(line: 598, column: 27, scope: !553)
!562 = !DILocation(line: 599, column: 16, scope: !553)
!563 = !DILocation(line: 599, column: 6, scope: !553)
!564 = !DILocation(line: 599, column: 23, scope: !553)
!565 = !DILocation(line: 599, column: 3, scope: !553)
!566 = !DILocation(line: 600, column: 16, scope: !553)
!567 = !DILocation(line: 600, column: 6, scope: !553)
!568 = !DILocation(line: 600, column: 23, scope: !553)
!569 = !DILocation(line: 600, column: 3, scope: !553)
!570 = !DILocation(line: 601, column: 15, scope: !553)
!571 = !DILocation(line: 601, column: 5, scope: !553)
!572 = !DILocation(line: 601, column: 3, scope: !553)
!573 = !DILocation(line: 598, column: 2, scope: !553)
!574 = distinct !DISubprogram(name: "br_enc32be", scope: !344, file: !344, line: 558, type: !345, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!575 = !DILocalVariable(name: "dst", arg: 1, scope: !574, file: !344, line: 558, type: !32)
!576 = !DILocation(line: 0, scope: !574)
!577 = !DILocalVariable(name: "x", arg: 2, scope: !574, file: !344, line: 558, type: !81)
!578 = !DILocalVariable(name: "buf", scope: !574, file: !344, line: 563, type: !177)
!579 = !DILocation(line: 566, column: 29, scope: !574)
!580 = !DILocation(line: 566, column: 11, scope: !574)
!581 = !DILocation(line: 566, column: 2, scope: !574)
!582 = !DILocation(line: 566, column: 9, scope: !574)
!583 = !DILocation(line: 567, column: 29, scope: !574)
!584 = !DILocation(line: 567, column: 11, scope: !574)
!585 = !DILocation(line: 567, column: 2, scope: !574)
!586 = !DILocation(line: 567, column: 9, scope: !574)
!587 = !DILocation(line: 568, column: 29, scope: !574)
!588 = !DILocation(line: 568, column: 11, scope: !574)
!589 = !DILocation(line: 568, column: 2, scope: !574)
!590 = !DILocation(line: 568, column: 9, scope: !574)
!591 = !DILocation(line: 569, column: 11, scope: !574)
!592 = !DILocation(line: 569, column: 2, scope: !574)
!593 = !DILocation(line: 569, column: 9, scope: !574)
!594 = !DILocation(line: 571, column: 1, scope: !574)
!595 = distinct !DISubprogram(name: "br_aes_small_decrypt", scope: !124, file: !124, line: 153, type: !596, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !123, retainedNodes: !4)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !16, !598, !32}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!600 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !595, file: !124, line: 153, type: !16)
!601 = !DILocation(line: 0, scope: !595)
!602 = !DILocalVariable(name: "skey", arg: 2, scope: !595, file: !124, line: 153, type: !598)
!603 = !DILocalVariable(name: "data", arg: 3, scope: !595, file: !124, line: 153, type: !32)
!604 = !DILocalVariable(name: "state", scope: !595, file: !124, line: 156, type: !605)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !184)
!606 = !DILocation(line: 156, column: 11, scope: !595)
!607 = !DILocalVariable(name: "buf", scope: !595, file: !124, line: 155, type: !177)
!608 = !DILocalVariable(name: "u", scope: !595, file: !124, line: 157, type: !16)
!609 = !DILocation(line: 160, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !595, file: !124, line: 160, column: 2)
!611 = !DILocation(line: 0, scope: !610)
!612 = !DILocation(line: 160, column: 16, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !124, line: 160, column: 2)
!614 = !DILocation(line: 160, column: 2, scope: !610)
!615 = !DILocation(line: 161, column: 14, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !124, line: 160, column: 28)
!617 = !DILocation(line: 161, column: 3, scope: !616)
!618 = !DILocation(line: 161, column: 12, scope: !616)
!619 = !DILocation(line: 162, column: 2, scope: !616)
!620 = !DILocation(line: 160, column: 24, scope: !613)
!621 = !DILocation(line: 160, column: 2, scope: !613)
!622 = distinct !{!622, !614, !623, !209}
!623 = !DILocation(line: 162, column: 2, scope: !610)
!624 = !DILocation(line: 163, column: 16, scope: !595)
!625 = !DILocation(line: 163, column: 42, scope: !595)
!626 = !DILocation(line: 163, column: 28, scope: !595)
!627 = !DILocation(line: 163, column: 2, scope: !595)
!628 = !DILocation(line: 164, column: 22, scope: !629)
!629 = distinct !DILexicalBlock(scope: !595, file: !124, line: 164, column: 2)
!630 = !DILocation(line: 164, column: 7, scope: !629)
!631 = !DILocation(line: 0, scope: !629)
!632 = !DILocation(line: 164, column: 29, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !124, line: 164, column: 2)
!634 = !DILocation(line: 164, column: 2, scope: !629)
!635 = !DILocation(line: 165, column: 18, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !124, line: 164, column: 40)
!637 = !DILocation(line: 165, column: 3, scope: !636)
!638 = !DILocation(line: 166, column: 17, scope: !636)
!639 = !DILocation(line: 166, column: 3, scope: !636)
!640 = !DILocation(line: 167, column: 17, scope: !636)
!641 = !DILocation(line: 167, column: 34, scope: !636)
!642 = !DILocation(line: 167, column: 29, scope: !636)
!643 = !DILocation(line: 167, column: 3, scope: !636)
!644 = !DILocation(line: 168, column: 19, scope: !636)
!645 = !DILocation(line: 168, column: 3, scope: !636)
!646 = !DILocation(line: 169, column: 2, scope: !636)
!647 = !DILocation(line: 164, column: 36, scope: !633)
!648 = !DILocation(line: 164, column: 2, scope: !633)
!649 = distinct !{!649, !634, !650, !209}
!650 = !DILocation(line: 169, column: 2, scope: !629)
!651 = !DILocation(line: 170, column: 17, scope: !595)
!652 = !DILocation(line: 170, column: 2, scope: !595)
!653 = !DILocation(line: 171, column: 16, scope: !595)
!654 = !DILocation(line: 171, column: 2, scope: !595)
!655 = !DILocation(line: 172, column: 16, scope: !595)
!656 = !DILocation(line: 172, column: 2, scope: !595)
!657 = !DILocation(line: 173, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !595, file: !124, line: 173, column: 2)
!659 = !DILocation(line: 0, scope: !658)
!660 = !DILocation(line: 173, column: 16, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !124, line: 173, column: 2)
!662 = !DILocation(line: 173, column: 2, scope: !658)
!663 = !DILocation(line: 174, column: 12, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !124, line: 173, column: 28)
!665 = !DILocation(line: 174, column: 3, scope: !664)
!666 = !DILocation(line: 174, column: 10, scope: !664)
!667 = !DILocation(line: 175, column: 2, scope: !664)
!668 = !DILocation(line: 173, column: 24, scope: !661)
!669 = !DILocation(line: 173, column: 2, scope: !661)
!670 = distinct !{!670, !662, !671, !209}
!671 = !DILocation(line: 175, column: 2, scope: !658)
!672 = !DILocation(line: 176, column: 1, scope: !595)
!673 = distinct !DISubprogram(name: "add_round_key", scope: !124, file: !124, line: 56, type: !674, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !4)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !676, !598}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!677 = !DILocalVariable(name: "state", arg: 1, scope: !673, file: !124, line: 56, type: !676)
!678 = !DILocation(line: 0, scope: !673)
!679 = !DILocalVariable(name: "skeys", arg: 2, scope: !673, file: !124, line: 56, type: !598)
!680 = !DILocalVariable(name: "i", scope: !673, file: !124, line: 58, type: !134)
!681 = !DILocation(line: 60, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !673, file: !124, line: 60, column: 2)
!683 = !DILocation(line: 0, scope: !682)
!684 = !DILocation(line: 60, column: 16, scope: !685)
!685 = distinct !DILexicalBlock(scope: !682, file: !124, line: 60, column: 2)
!686 = !DILocation(line: 60, column: 2, scope: !682)
!687 = !DILocation(line: 63, column: 14, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !124, line: 60, column: 30)
!689 = !DILocation(line: 63, column: 7, scope: !688)
!690 = !DILocalVariable(name: "k", scope: !688, file: !124, line: 61, type: !81)
!691 = !DILocation(line: 0, scope: !688)
!692 = !DILocation(line: 64, column: 32, scope: !688)
!693 = !DILocation(line: 64, column: 11, scope: !688)
!694 = !DILocation(line: 64, column: 3, scope: !688)
!695 = !DILocation(line: 64, column: 16, scope: !688)
!696 = !DILocation(line: 65, column: 32, scope: !688)
!697 = !DILocation(line: 65, column: 39, scope: !688)
!698 = !DILocation(line: 65, column: 11, scope: !688)
!699 = !DILocation(line: 65, column: 3, scope: !688)
!700 = !DILocation(line: 65, column: 16, scope: !688)
!701 = !DILocation(line: 66, column: 32, scope: !688)
!702 = !DILocation(line: 66, column: 38, scope: !688)
!703 = !DILocation(line: 66, column: 11, scope: !688)
!704 = !DILocation(line: 66, column: 3, scope: !688)
!705 = !DILocation(line: 66, column: 16, scope: !688)
!706 = !DILocation(line: 67, column: 31, scope: !688)
!707 = !DILocation(line: 67, column: 11, scope: !688)
!708 = !DILocation(line: 67, column: 3, scope: !688)
!709 = !DILocation(line: 67, column: 16, scope: !688)
!710 = !DILocation(line: 68, column: 2, scope: !688)
!711 = !DILocation(line: 60, column: 24, scope: !685)
!712 = !DILocation(line: 60, column: 2, scope: !685)
!713 = distinct !{!713, !686, !714, !209}
!714 = !DILocation(line: 68, column: 2, scope: !682)
!715 = !DILocation(line: 69, column: 1, scope: !673)
!716 = distinct !DISubprogram(name: "inv_shift_rows", scope: !124, file: !124, line: 82, type: !717, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !4)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !676}
!719 = !DILocalVariable(name: "state", arg: 1, scope: !716, file: !124, line: 82, type: !676)
!720 = !DILocation(line: 0, scope: !716)
!721 = !DILocation(line: 86, column: 8, scope: !716)
!722 = !DILocalVariable(name: "tmp", scope: !716, file: !124, line: 84, type: !16)
!723 = !DILocation(line: 87, column: 14, scope: !716)
!724 = !DILocation(line: 87, column: 2, scope: !716)
!725 = !DILocation(line: 87, column: 12, scope: !716)
!726 = !DILocation(line: 88, column: 13, scope: !716)
!727 = !DILocation(line: 88, column: 2, scope: !716)
!728 = !DILocation(line: 88, column: 11, scope: !716)
!729 = !DILocation(line: 89, column: 13, scope: !716)
!730 = !DILocation(line: 89, column: 2, scope: !716)
!731 = !DILocation(line: 89, column: 11, scope: !716)
!732 = !DILocation(line: 90, column: 2, scope: !716)
!733 = !DILocation(line: 90, column: 11, scope: !716)
!734 = !DILocation(line: 92, column: 8, scope: !716)
!735 = !DILocation(line: 93, column: 13, scope: !716)
!736 = !DILocation(line: 93, column: 2, scope: !716)
!737 = !DILocation(line: 93, column: 11, scope: !716)
!738 = !DILocation(line: 94, column: 2, scope: !716)
!739 = !DILocation(line: 94, column: 12, scope: !716)
!740 = !DILocation(line: 95, column: 8, scope: !716)
!741 = !DILocation(line: 96, column: 13, scope: !716)
!742 = !DILocation(line: 96, column: 2, scope: !716)
!743 = !DILocation(line: 96, column: 11, scope: !716)
!744 = !DILocation(line: 97, column: 2, scope: !716)
!745 = !DILocation(line: 97, column: 12, scope: !716)
!746 = !DILocation(line: 99, column: 8, scope: !716)
!747 = !DILocation(line: 100, column: 13, scope: !716)
!748 = !DILocation(line: 100, column: 2, scope: !716)
!749 = !DILocation(line: 100, column: 11, scope: !716)
!750 = !DILocation(line: 101, column: 13, scope: !716)
!751 = !DILocation(line: 101, column: 2, scope: !716)
!752 = !DILocation(line: 101, column: 11, scope: !716)
!753 = !DILocation(line: 102, column: 14, scope: !716)
!754 = !DILocation(line: 102, column: 2, scope: !716)
!755 = !DILocation(line: 102, column: 12, scope: !716)
!756 = !DILocation(line: 103, column: 2, scope: !716)
!757 = !DILocation(line: 103, column: 12, scope: !716)
!758 = !DILocation(line: 104, column: 1, scope: !716)
!759 = distinct !DISubprogram(name: "inv_sub_bytes", scope: !124, file: !124, line: 72, type: !717, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !4)
!760 = !DILocalVariable(name: "state", arg: 1, scope: !759, file: !124, line: 72, type: !676)
!761 = !DILocation(line: 0, scope: !759)
!762 = !DILocalVariable(name: "i", scope: !759, file: !124, line: 74, type: !134)
!763 = !DILocation(line: 76, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !759, file: !124, line: 76, column: 2)
!765 = !DILocation(line: 0, scope: !764)
!766 = !DILocation(line: 76, column: 16, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !124, line: 76, column: 2)
!768 = !DILocation(line: 76, column: 2, scope: !764)
!769 = !DILocation(line: 77, column: 17, scope: !770)
!770 = distinct !DILexicalBlock(scope: !767, file: !124, line: 76, column: 28)
!771 = !DILocation(line: 77, column: 14, scope: !770)
!772 = !DILocation(line: 77, column: 3, scope: !770)
!773 = !DILocation(line: 77, column: 12, scope: !770)
!774 = !DILocation(line: 78, column: 2, scope: !770)
!775 = !DILocation(line: 76, column: 24, scope: !767)
!776 = !DILocation(line: 76, column: 2, scope: !767)
!777 = distinct !{!777, !768, !778, !209}
!778 = !DILocation(line: 78, column: 2, scope: !764)
!779 = !DILocation(line: 79, column: 1, scope: !759)
!780 = distinct !DISubprogram(name: "inv_mix_columns", scope: !124, file: !124, line: 116, type: !717, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !4)
!781 = !DILocalVariable(name: "state", arg: 1, scope: !780, file: !124, line: 116, type: !676)
!782 = !DILocation(line: 0, scope: !780)
!783 = !DILocalVariable(name: "i", scope: !780, file: !124, line: 118, type: !134)
!784 = !DILocation(line: 120, column: 7, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !124, line: 120, column: 2)
!786 = !DILocation(line: 0, scope: !785)
!787 = !DILocation(line: 120, column: 16, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !124, line: 120, column: 2)
!789 = !DILocation(line: 120, column: 2, scope: !785)
!790 = !DILocation(line: 124, column: 16, scope: !791)
!791 = distinct !DILexicalBlock(scope: !788, file: !124, line: 120, column: 30)
!792 = !DILocation(line: 124, column: 8, scope: !791)
!793 = !DILocalVariable(name: "s0", scope: !791, file: !124, line: 121, type: !16)
!794 = !DILocation(line: 0, scope: !791)
!795 = !DILocation(line: 125, column: 16, scope: !791)
!796 = !DILocation(line: 125, column: 8, scope: !791)
!797 = !DILocalVariable(name: "s1", scope: !791, file: !124, line: 121, type: !16)
!798 = !DILocation(line: 126, column: 16, scope: !791)
!799 = !DILocation(line: 126, column: 8, scope: !791)
!800 = !DILocalVariable(name: "s2", scope: !791, file: !124, line: 121, type: !16)
!801 = !DILocation(line: 127, column: 16, scope: !791)
!802 = !DILocation(line: 127, column: 8, scope: !791)
!803 = !DILocalVariable(name: "s3", scope: !791, file: !124, line: 121, type: !16)
!804 = !DILocation(line: 128, column: 12, scope: !791)
!805 = !DILocation(line: 128, column: 24, scope: !791)
!806 = !DILocation(line: 128, column: 18, scope: !791)
!807 = !DILocation(line: 128, column: 36, scope: !791)
!808 = !DILocation(line: 128, column: 30, scope: !791)
!809 = !DILocation(line: 129, column: 4, scope: !791)
!810 = !DILocation(line: 129, column: 15, scope: !791)
!811 = !DILocation(line: 129, column: 9, scope: !791)
!812 = !DILocation(line: 129, column: 27, scope: !791)
!813 = !DILocation(line: 129, column: 21, scope: !791)
!814 = !DILocation(line: 130, column: 4, scope: !791)
!815 = !DILocation(line: 130, column: 15, scope: !791)
!816 = !DILocation(line: 130, column: 9, scope: !791)
!817 = !DILocation(line: 130, column: 27, scope: !791)
!818 = !DILocation(line: 130, column: 21, scope: !791)
!819 = !DILocation(line: 131, column: 4, scope: !791)
!820 = !DILocation(line: 131, column: 15, scope: !791)
!821 = !DILocation(line: 131, column: 9, scope: !791)
!822 = !DILocalVariable(name: "t0", scope: !791, file: !124, line: 122, type: !16)
!823 = !DILocation(line: 132, column: 17, scope: !791)
!824 = !DILocation(line: 132, column: 11, scope: !791)
!825 = !DILocation(line: 133, column: 10, scope: !791)
!826 = !DILocation(line: 133, column: 4, scope: !791)
!827 = !DILocation(line: 133, column: 22, scope: !791)
!828 = !DILocation(line: 133, column: 16, scope: !791)
!829 = !DILocation(line: 133, column: 34, scope: !791)
!830 = !DILocation(line: 133, column: 28, scope: !791)
!831 = !DILocation(line: 134, column: 4, scope: !791)
!832 = !DILocation(line: 134, column: 15, scope: !791)
!833 = !DILocation(line: 134, column: 9, scope: !791)
!834 = !DILocation(line: 134, column: 27, scope: !791)
!835 = !DILocation(line: 134, column: 21, scope: !791)
!836 = !DILocation(line: 135, column: 4, scope: !791)
!837 = !DILocation(line: 135, column: 15, scope: !791)
!838 = !DILocation(line: 135, column: 9, scope: !791)
!839 = !DILocation(line: 135, column: 27, scope: !791)
!840 = !DILocation(line: 135, column: 21, scope: !791)
!841 = !DILocalVariable(name: "t1", scope: !791, file: !124, line: 122, type: !16)
!842 = !DILocation(line: 136, column: 17, scope: !791)
!843 = !DILocation(line: 136, column: 11, scope: !791)
!844 = !DILocation(line: 136, column: 29, scope: !791)
!845 = !DILocation(line: 136, column: 23, scope: !791)
!846 = !DILocation(line: 137, column: 4, scope: !791)
!847 = !DILocation(line: 137, column: 15, scope: !791)
!848 = !DILocation(line: 137, column: 9, scope: !791)
!849 = !DILocation(line: 138, column: 10, scope: !791)
!850 = !DILocation(line: 138, column: 4, scope: !791)
!851 = !DILocation(line: 138, column: 22, scope: !791)
!852 = !DILocation(line: 138, column: 16, scope: !791)
!853 = !DILocation(line: 138, column: 34, scope: !791)
!854 = !DILocation(line: 138, column: 28, scope: !791)
!855 = !DILocation(line: 139, column: 4, scope: !791)
!856 = !DILocation(line: 139, column: 15, scope: !791)
!857 = !DILocation(line: 139, column: 9, scope: !791)
!858 = !DILocation(line: 139, column: 27, scope: !791)
!859 = !DILocation(line: 139, column: 21, scope: !791)
!860 = !DILocalVariable(name: "t2", scope: !791, file: !124, line: 122, type: !16)
!861 = !DILocation(line: 140, column: 17, scope: !791)
!862 = !DILocation(line: 140, column: 11, scope: !791)
!863 = !DILocation(line: 140, column: 29, scope: !791)
!864 = !DILocation(line: 140, column: 23, scope: !791)
!865 = !DILocation(line: 141, column: 4, scope: !791)
!866 = !DILocation(line: 141, column: 15, scope: !791)
!867 = !DILocation(line: 141, column: 9, scope: !791)
!868 = !DILocation(line: 141, column: 27, scope: !791)
!869 = !DILocation(line: 141, column: 21, scope: !791)
!870 = !DILocation(line: 142, column: 4, scope: !791)
!871 = !DILocation(line: 142, column: 15, scope: !791)
!872 = !DILocation(line: 142, column: 9, scope: !791)
!873 = !DILocation(line: 143, column: 10, scope: !791)
!874 = !DILocation(line: 143, column: 4, scope: !791)
!875 = !DILocation(line: 143, column: 22, scope: !791)
!876 = !DILocation(line: 143, column: 16, scope: !791)
!877 = !DILocation(line: 143, column: 34, scope: !791)
!878 = !DILocation(line: 143, column: 28, scope: !791)
!879 = !DILocalVariable(name: "t3", scope: !791, file: !124, line: 122, type: !16)
!880 = !DILocation(line: 144, column: 18, scope: !791)
!881 = !DILocation(line: 144, column: 11, scope: !791)
!882 = !DILocation(line: 144, column: 3, scope: !791)
!883 = !DILocation(line: 144, column: 16, scope: !791)
!884 = !DILocation(line: 145, column: 18, scope: !791)
!885 = !DILocation(line: 145, column: 11, scope: !791)
!886 = !DILocation(line: 145, column: 3, scope: !791)
!887 = !DILocation(line: 145, column: 16, scope: !791)
!888 = !DILocation(line: 146, column: 18, scope: !791)
!889 = !DILocation(line: 146, column: 11, scope: !791)
!890 = !DILocation(line: 146, column: 3, scope: !791)
!891 = !DILocation(line: 146, column: 16, scope: !791)
!892 = !DILocation(line: 147, column: 18, scope: !791)
!893 = !DILocation(line: 147, column: 11, scope: !791)
!894 = !DILocation(line: 147, column: 3, scope: !791)
!895 = !DILocation(line: 147, column: 16, scope: !791)
!896 = !DILocation(line: 148, column: 2, scope: !791)
!897 = !DILocation(line: 120, column: 24, scope: !788)
!898 = !DILocation(line: 120, column: 2, scope: !788)
!899 = distinct !{!899, !789, !900, !209}
!900 = !DILocation(line: 148, column: 2, scope: !785)
!901 = !DILocation(line: 149, column: 1, scope: !780)
!902 = distinct !DISubprogram(name: "gf256red", scope: !124, file: !124, line: 107, type: !903, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !123, retainedNodes: !4)
!903 = !DISubroutineType(types: !904)
!904 = !{!16, !16}
!905 = !DILocalVariable(name: "x", arg: 1, scope: !902, file: !124, line: 107, type: !16)
!906 = !DILocation(line: 0, scope: !902)
!907 = !DILocation(line: 111, column: 8, scope: !902)
!908 = !DILocalVariable(name: "y", scope: !902, file: !124, line: 109, type: !16)
!909 = !DILocation(line: 112, column: 12, scope: !902)
!910 = !DILocation(line: 112, column: 21, scope: !902)
!911 = !DILocation(line: 112, column: 16, scope: !902)
!912 = !DILocation(line: 112, column: 32, scope: !902)
!913 = !DILocation(line: 112, column: 27, scope: !902)
!914 = !DILocation(line: 112, column: 43, scope: !902)
!915 = !DILocation(line: 112, column: 38, scope: !902)
!916 = !DILocation(line: 112, column: 50, scope: !902)
!917 = !DILocation(line: 112, column: 2, scope: !902)
!918 = distinct !DISubprogram(name: "br_aes_small_encrypt", scope: !132, file: !132, line: 106, type: !596, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !131, retainedNodes: !4)
!919 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !918, file: !132, line: 106, type: !16)
!920 = !DILocation(line: 0, scope: !918)
!921 = !DILocalVariable(name: "skey", arg: 2, scope: !918, file: !132, line: 106, type: !598)
!922 = !DILocalVariable(name: "data", arg: 3, scope: !918, file: !132, line: 106, type: !32)
!923 = !DILocalVariable(name: "state", scope: !918, file: !132, line: 109, type: !605)
!924 = !DILocation(line: 109, column: 11, scope: !918)
!925 = !DILocalVariable(name: "buf", scope: !918, file: !132, line: 108, type: !177)
!926 = !DILocalVariable(name: "u", scope: !918, file: !132, line: 110, type: !16)
!927 = !DILocation(line: 113, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !918, file: !132, line: 113, column: 2)
!929 = !DILocation(line: 0, scope: !928)
!930 = !DILocation(line: 113, column: 16, scope: !931)
!931 = distinct !DILexicalBlock(scope: !928, file: !132, line: 113, column: 2)
!932 = !DILocation(line: 113, column: 2, scope: !928)
!933 = !DILocation(line: 114, column: 14, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !132, line: 113, column: 28)
!935 = !DILocation(line: 114, column: 3, scope: !934)
!936 = !DILocation(line: 114, column: 12, scope: !934)
!937 = !DILocation(line: 115, column: 2, scope: !934)
!938 = !DILocation(line: 113, column: 24, scope: !931)
!939 = !DILocation(line: 113, column: 2, scope: !931)
!940 = distinct !{!940, !932, !941, !209}
!941 = !DILocation(line: 115, column: 2, scope: !928)
!942 = !DILocation(line: 116, column: 16, scope: !918)
!943 = !DILocation(line: 116, column: 2, scope: !918)
!944 = !DILocation(line: 117, column: 7, scope: !945)
!945 = distinct !DILexicalBlock(scope: !918, file: !132, line: 117, column: 2)
!946 = !DILocation(line: 0, scope: !945)
!947 = !DILocation(line: 117, column: 16, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !132, line: 117, column: 2)
!949 = !DILocation(line: 117, column: 2, scope: !945)
!950 = !DILocation(line: 118, column: 13, scope: !951)
!951 = distinct !DILexicalBlock(scope: !948, file: !132, line: 117, column: 36)
!952 = !DILocation(line: 118, column: 3, scope: !951)
!953 = !DILocation(line: 119, column: 14, scope: !951)
!954 = !DILocation(line: 119, column: 3, scope: !951)
!955 = !DILocation(line: 120, column: 15, scope: !951)
!956 = !DILocation(line: 120, column: 3, scope: !951)
!957 = !DILocation(line: 121, column: 17, scope: !951)
!958 = !DILocation(line: 121, column: 34, scope: !951)
!959 = !DILocation(line: 121, column: 29, scope: !951)
!960 = !DILocation(line: 121, column: 3, scope: !951)
!961 = !DILocation(line: 122, column: 2, scope: !951)
!962 = !DILocation(line: 117, column: 32, scope: !948)
!963 = !DILocation(line: 117, column: 2, scope: !948)
!964 = distinct !{!964, !949, !965, !209}
!965 = !DILocation(line: 122, column: 2, scope: !945)
!966 = !DILocation(line: 123, column: 12, scope: !918)
!967 = !DILocation(line: 123, column: 2, scope: !918)
!968 = !DILocation(line: 124, column: 13, scope: !918)
!969 = !DILocation(line: 124, column: 2, scope: !918)
!970 = !DILocation(line: 125, column: 16, scope: !918)
!971 = !DILocation(line: 125, column: 42, scope: !918)
!972 = !DILocation(line: 125, column: 28, scope: !918)
!973 = !DILocation(line: 125, column: 2, scope: !918)
!974 = !DILocation(line: 126, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !918, file: !132, line: 126, column: 2)
!976 = !DILocation(line: 0, scope: !975)
!977 = !DILocation(line: 126, column: 16, scope: !978)
!978 = distinct !DILexicalBlock(scope: !975, file: !132, line: 126, column: 2)
!979 = !DILocation(line: 126, column: 2, scope: !975)
!980 = !DILocation(line: 127, column: 12, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !132, line: 126, column: 28)
!982 = !DILocation(line: 127, column: 3, scope: !981)
!983 = !DILocation(line: 127, column: 10, scope: !981)
!984 = !DILocation(line: 128, column: 2, scope: !981)
!985 = !DILocation(line: 126, column: 24, scope: !978)
!986 = !DILocation(line: 126, column: 2, scope: !978)
!987 = distinct !{!987, !979, !988, !209}
!988 = !DILocation(line: 128, column: 2, scope: !975)
!989 = !DILocation(line: 129, column: 1, scope: !918)
!990 = distinct !DISubprogram(name: "add_round_key", scope: !132, file: !132, line: 30, type: !674, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !131, retainedNodes: !4)
!991 = !DILocalVariable(name: "state", arg: 1, scope: !990, file: !132, line: 30, type: !676)
!992 = !DILocation(line: 0, scope: !990)
!993 = !DILocalVariable(name: "skeys", arg: 2, scope: !990, file: !132, line: 30, type: !598)
!994 = !DILocalVariable(name: "i", scope: !990, file: !132, line: 32, type: !134)
!995 = !DILocation(line: 34, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !990, file: !132, line: 34, column: 2)
!997 = !DILocation(line: 0, scope: !996)
!998 = !DILocation(line: 34, column: 16, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !132, line: 34, column: 2)
!1000 = !DILocation(line: 34, column: 2, scope: !996)
!1001 = !DILocation(line: 37, column: 14, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !132, line: 34, column: 30)
!1003 = !DILocation(line: 37, column: 7, scope: !1002)
!1004 = !DILocalVariable(name: "k", scope: !1002, file: !132, line: 35, type: !81)
!1005 = !DILocation(line: 0, scope: !1002)
!1006 = !DILocation(line: 38, column: 32, scope: !1002)
!1007 = !DILocation(line: 38, column: 11, scope: !1002)
!1008 = !DILocation(line: 38, column: 3, scope: !1002)
!1009 = !DILocation(line: 38, column: 16, scope: !1002)
!1010 = !DILocation(line: 39, column: 32, scope: !1002)
!1011 = !DILocation(line: 39, column: 39, scope: !1002)
!1012 = !DILocation(line: 39, column: 11, scope: !1002)
!1013 = !DILocation(line: 39, column: 3, scope: !1002)
!1014 = !DILocation(line: 39, column: 16, scope: !1002)
!1015 = !DILocation(line: 40, column: 32, scope: !1002)
!1016 = !DILocation(line: 40, column: 38, scope: !1002)
!1017 = !DILocation(line: 40, column: 11, scope: !1002)
!1018 = !DILocation(line: 40, column: 3, scope: !1002)
!1019 = !DILocation(line: 40, column: 16, scope: !1002)
!1020 = !DILocation(line: 41, column: 31, scope: !1002)
!1021 = !DILocation(line: 41, column: 11, scope: !1002)
!1022 = !DILocation(line: 41, column: 3, scope: !1002)
!1023 = !DILocation(line: 41, column: 16, scope: !1002)
!1024 = !DILocation(line: 42, column: 2, scope: !1002)
!1025 = !DILocation(line: 34, column: 24, scope: !999)
!1026 = !DILocation(line: 34, column: 2, scope: !999)
!1027 = distinct !{!1027, !1000, !1028, !209}
!1028 = !DILocation(line: 42, column: 2, scope: !996)
!1029 = !DILocation(line: 43, column: 1, scope: !990)
!1030 = distinct !DISubprogram(name: "sub_bytes", scope: !132, file: !132, line: 46, type: !717, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !131, retainedNodes: !4)
!1031 = !DILocalVariable(name: "state", arg: 1, scope: !1030, file: !132, line: 46, type: !676)
!1032 = !DILocation(line: 0, scope: !1030)
!1033 = !DILocalVariable(name: "i", scope: !1030, file: !132, line: 48, type: !134)
!1034 = !DILocation(line: 50, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !132, line: 50, column: 2)
!1036 = !DILocation(line: 0, scope: !1035)
!1037 = !DILocation(line: 50, column: 16, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !132, line: 50, column: 2)
!1039 = !DILocation(line: 50, column: 2, scope: !1035)
!1040 = !DILocation(line: 51, column: 16, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !132, line: 50, column: 28)
!1042 = !DILocation(line: 51, column: 14, scope: !1041)
!1043 = !DILocation(line: 51, column: 3, scope: !1041)
!1044 = !DILocation(line: 51, column: 12, scope: !1041)
!1045 = !DILocation(line: 52, column: 2, scope: !1041)
!1046 = !DILocation(line: 50, column: 24, scope: !1038)
!1047 = !DILocation(line: 50, column: 2, scope: !1038)
!1048 = distinct !{!1048, !1039, !1049, !209}
!1049 = !DILocation(line: 52, column: 2, scope: !1035)
!1050 = !DILocation(line: 53, column: 1, scope: !1030)
!1051 = distinct !DISubprogram(name: "shift_rows", scope: !132, file: !132, line: 56, type: !717, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !131, retainedNodes: !4)
!1052 = !DILocalVariable(name: "state", arg: 1, scope: !1051, file: !132, line: 56, type: !676)
!1053 = !DILocation(line: 0, scope: !1051)
!1054 = !DILocation(line: 60, column: 8, scope: !1051)
!1055 = !DILocalVariable(name: "tmp", scope: !1051, file: !132, line: 58, type: !16)
!1056 = !DILocation(line: 61, column: 13, scope: !1051)
!1057 = !DILocation(line: 61, column: 2, scope: !1051)
!1058 = !DILocation(line: 61, column: 11, scope: !1051)
!1059 = !DILocation(line: 62, column: 13, scope: !1051)
!1060 = !DILocation(line: 62, column: 2, scope: !1051)
!1061 = !DILocation(line: 62, column: 11, scope: !1051)
!1062 = !DILocation(line: 63, column: 13, scope: !1051)
!1063 = !DILocation(line: 63, column: 2, scope: !1051)
!1064 = !DILocation(line: 63, column: 11, scope: !1051)
!1065 = !DILocation(line: 64, column: 2, scope: !1051)
!1066 = !DILocation(line: 64, column: 12, scope: !1051)
!1067 = !DILocation(line: 66, column: 8, scope: !1051)
!1068 = !DILocation(line: 67, column: 13, scope: !1051)
!1069 = !DILocation(line: 67, column: 2, scope: !1051)
!1070 = !DILocation(line: 67, column: 11, scope: !1051)
!1071 = !DILocation(line: 68, column: 2, scope: !1051)
!1072 = !DILocation(line: 68, column: 12, scope: !1051)
!1073 = !DILocation(line: 69, column: 8, scope: !1051)
!1074 = !DILocation(line: 70, column: 13, scope: !1051)
!1075 = !DILocation(line: 70, column: 2, scope: !1051)
!1076 = !DILocation(line: 70, column: 11, scope: !1051)
!1077 = !DILocation(line: 71, column: 2, scope: !1051)
!1078 = !DILocation(line: 71, column: 12, scope: !1051)
!1079 = !DILocation(line: 73, column: 8, scope: !1051)
!1080 = !DILocation(line: 74, column: 14, scope: !1051)
!1081 = !DILocation(line: 74, column: 2, scope: !1051)
!1082 = !DILocation(line: 74, column: 12, scope: !1051)
!1083 = !DILocation(line: 75, column: 14, scope: !1051)
!1084 = !DILocation(line: 75, column: 2, scope: !1051)
!1085 = !DILocation(line: 75, column: 12, scope: !1051)
!1086 = !DILocation(line: 76, column: 13, scope: !1051)
!1087 = !DILocation(line: 76, column: 2, scope: !1051)
!1088 = !DILocation(line: 76, column: 11, scope: !1051)
!1089 = !DILocation(line: 77, column: 2, scope: !1051)
!1090 = !DILocation(line: 77, column: 11, scope: !1051)
!1091 = !DILocation(line: 78, column: 1, scope: !1051)
!1092 = distinct !DISubprogram(name: "mix_columns", scope: !132, file: !132, line: 81, type: !717, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !131, retainedNodes: !4)
!1093 = !DILocalVariable(name: "state", arg: 1, scope: !1092, file: !132, line: 81, type: !676)
!1094 = !DILocation(line: 0, scope: !1092)
!1095 = !DILocalVariable(name: "i", scope: !1092, file: !132, line: 83, type: !134)
!1096 = !DILocation(line: 85, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !132, line: 85, column: 2)
!1098 = !DILocation(line: 0, scope: !1097)
!1099 = !DILocation(line: 85, column: 16, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !132, line: 85, column: 2)
!1101 = !DILocation(line: 85, column: 2, scope: !1097)
!1102 = !DILocation(line: 89, column: 16, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !132, line: 85, column: 30)
!1104 = !DILocation(line: 89, column: 8, scope: !1103)
!1105 = !DILocalVariable(name: "s0", scope: !1103, file: !132, line: 86, type: !16)
!1106 = !DILocation(line: 0, scope: !1103)
!1107 = !DILocation(line: 90, column: 16, scope: !1103)
!1108 = !DILocation(line: 90, column: 8, scope: !1103)
!1109 = !DILocalVariable(name: "s1", scope: !1103, file: !132, line: 86, type: !16)
!1110 = !DILocation(line: 91, column: 16, scope: !1103)
!1111 = !DILocation(line: 91, column: 8, scope: !1103)
!1112 = !DILocalVariable(name: "s2", scope: !1103, file: !132, line: 86, type: !16)
!1113 = !DILocation(line: 92, column: 16, scope: !1103)
!1114 = !DILocation(line: 92, column: 8, scope: !1103)
!1115 = !DILocalVariable(name: "s3", scope: !1103, file: !132, line: 86, type: !16)
!1116 = !DILocation(line: 93, column: 12, scope: !1103)
!1117 = !DILocation(line: 93, column: 18, scope: !1103)
!1118 = !DILocation(line: 93, column: 29, scope: !1103)
!1119 = !DILocation(line: 93, column: 23, scope: !1103)
!1120 = !DILocation(line: 93, column: 35, scope: !1103)
!1121 = !DILocation(line: 93, column: 40, scope: !1103)
!1122 = !DILocalVariable(name: "t0", scope: !1103, file: !132, line: 87, type: !16)
!1123 = !DILocation(line: 94, column: 17, scope: !1103)
!1124 = !DILocation(line: 94, column: 11, scope: !1103)
!1125 = !DILocation(line: 94, column: 23, scope: !1103)
!1126 = !DILocation(line: 94, column: 34, scope: !1103)
!1127 = !DILocation(line: 94, column: 28, scope: !1103)
!1128 = !DILocation(line: 94, column: 40, scope: !1103)
!1129 = !DILocalVariable(name: "t1", scope: !1103, file: !132, line: 87, type: !16)
!1130 = !DILocation(line: 95, column: 11, scope: !1103)
!1131 = !DILocation(line: 95, column: 22, scope: !1103)
!1132 = !DILocation(line: 95, column: 16, scope: !1103)
!1133 = !DILocation(line: 95, column: 28, scope: !1103)
!1134 = !DILocation(line: 95, column: 39, scope: !1103)
!1135 = !DILocation(line: 95, column: 33, scope: !1103)
!1136 = !DILocalVariable(name: "t2", scope: !1103, file: !132, line: 87, type: !16)
!1137 = !DILocation(line: 96, column: 17, scope: !1103)
!1138 = !DILocation(line: 96, column: 11, scope: !1103)
!1139 = !DILocation(line: 96, column: 23, scope: !1103)
!1140 = !DILocation(line: 96, column: 28, scope: !1103)
!1141 = !DILocation(line: 96, column: 39, scope: !1103)
!1142 = !DILocation(line: 96, column: 33, scope: !1103)
!1143 = !DILocalVariable(name: "t3", scope: !1103, file: !132, line: 87, type: !16)
!1144 = !DILocation(line: 97, column: 45, scope: !1103)
!1145 = !DILocation(line: 97, column: 35, scope: !1103)
!1146 = !DILocation(line: 97, column: 52, scope: !1103)
!1147 = !DILocation(line: 97, column: 21, scope: !1103)
!1148 = !DILocation(line: 97, column: 11, scope: !1103)
!1149 = !DILocation(line: 97, column: 3, scope: !1103)
!1150 = !DILocation(line: 97, column: 16, scope: !1103)
!1151 = !DILocation(line: 98, column: 45, scope: !1103)
!1152 = !DILocation(line: 98, column: 35, scope: !1103)
!1153 = !DILocation(line: 98, column: 52, scope: !1103)
!1154 = !DILocation(line: 98, column: 21, scope: !1103)
!1155 = !DILocation(line: 98, column: 11, scope: !1103)
!1156 = !DILocation(line: 98, column: 3, scope: !1103)
!1157 = !DILocation(line: 98, column: 16, scope: !1103)
!1158 = !DILocation(line: 99, column: 45, scope: !1103)
!1159 = !DILocation(line: 99, column: 35, scope: !1103)
!1160 = !DILocation(line: 99, column: 52, scope: !1103)
!1161 = !DILocation(line: 99, column: 21, scope: !1103)
!1162 = !DILocation(line: 99, column: 11, scope: !1103)
!1163 = !DILocation(line: 99, column: 3, scope: !1103)
!1164 = !DILocation(line: 99, column: 16, scope: !1103)
!1165 = !DILocation(line: 100, column: 45, scope: !1103)
!1166 = !DILocation(line: 100, column: 35, scope: !1103)
!1167 = !DILocation(line: 100, column: 52, scope: !1103)
!1168 = !DILocation(line: 100, column: 21, scope: !1103)
!1169 = !DILocation(line: 100, column: 11, scope: !1103)
!1170 = !DILocation(line: 100, column: 3, scope: !1103)
!1171 = !DILocation(line: 100, column: 16, scope: !1103)
!1172 = !DILocation(line: 101, column: 2, scope: !1103)
!1173 = !DILocation(line: 85, column: 24, scope: !1100)
!1174 = !DILocation(line: 85, column: 2, scope: !1100)
!1175 = distinct !{!1175, !1101, !1176, !209}
!1176 = !DILocation(line: 101, column: 2, scope: !1097)
!1177 = !DILocation(line: 102, column: 1, scope: !1092)
!1178 = distinct !DISubprogram(name: "decrypt_wrapper", scope: !136, file: !136, line: 26, type: !596, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !135, retainedNodes: !4)
!1179 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !1178, file: !136, line: 26, type: !16)
!1180 = !DILocation(line: 0, scope: !1178)
!1181 = !DILocalVariable(name: "skey", arg: 2, scope: !1178, file: !136, line: 26, type: !598)
!1182 = !DILocalVariable(name: "data", arg: 3, scope: !1178, file: !136, line: 26, type: !32)
!1183 = !DILocation(line: 27, column: 12, scope: !1178)
!1184 = !DILocation(line: 27, column: 2, scope: !1178)
!1185 = !DILocation(line: 28, column: 12, scope: !1178)
!1186 = !DILocation(line: 28, column: 2, scope: !1178)
!1187 = !DILocation(line: 29, column: 12, scope: !1178)
!1188 = !DILocation(line: 29, column: 2, scope: !1178)
!1189 = !DILocation(line: 31, column: 12, scope: !1178)
!1190 = !DILocation(line: 31, column: 2, scope: !1178)
!1191 = !DILocation(line: 33, column: 2, scope: !1178)
!1192 = !DILocation(line: 34, column: 1, scope: !1178)
!1193 = distinct !DISubprogram(name: "decrypt_wrapper_t", scope: !136, file: !136, line: 37, type: !1194, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !135, retainedNodes: !4)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null}
!1196 = !DILocation(line: 42, column: 2, scope: !1193)
!1197 = !DILocation(line: 43, column: 1, scope: !1193)
