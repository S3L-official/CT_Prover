; ModuleID = 'crypto_aead_chacha20poly1305_decrypt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypto_onetimeauth_poly1305_implementation = type { i8* ()*, i32 (i8*, i8*, i64, i8*)*, i32 (i8*, i8*, i64, i8*)*, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)*, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*, i64)*, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)* }
%struct.crypto_onetimeauth_poly1305_state = type { i64, [136 x i8] }
%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i64)*, i32 ()* }
%struct.SysRandom_ = type { i32, i32, i32 }
%struct.poly1305_state_internal_t = type { [5 x i64], [5 x i64], [4 x i64], i64, [16 x i8], i8 }
%struct.smack_value = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.chacha_ctx = type { [16 x i32] }

@crypto_onetimeauth_poly1305_donna_implementation = dso_local global %struct.crypto_onetimeauth_poly1305_implementation { i8* ()* @crypto_onetimeauth_poly1305_donna_implementation_name, i32 (i8*, i8*, i64, i8*)* @crypto_onetimeauth_poly1305_donna, i32 (i8*, i8*, i64, i8*)* @crypto_onetimeauth_poly1305_donna_verify, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)* @crypto_onetimeauth_poly1305_donna_init, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*, i64)* @crypto_onetimeauth_poly1305_donna_update, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)* @crypto_onetimeauth_poly1305_donna_final }, align 8, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"donna32\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"poly1305\00", align 1
@implementation = internal global %struct.crypto_onetimeauth_poly1305_implementation* @crypto_onetimeauth_poly1305_donna_implementation, align 8, !dbg !77
@implementation.12 = internal global %struct.randombytes_implementation* @randombytes_sysrandom_implementation, align 8, !dbg !108
@.str.13 = private unnamed_addr constant [20 x i8] c"buf_len <= SIZE_MAX\00", align 1
@.str.1.14 = private unnamed_addr constant [53 x i8] c"../libsodium/src/libsodium/randombytes/randombytes.c\00", align 1
@__PRETTY_FUNCTION__.randombytes = private unnamed_addr constant [65 x i8] c"void randombytes(unsigned char *const, const unsigned long long)\00", align 1
@randombytes_sysrandom_implementation = dso_local global %struct.randombytes_implementation { i8* ()* @randombytes_sysrandom_implementation_name, i32 ()* @randombytes_sysrandom, void ()* @randombytes_sysrandom_stir, i32 (i32)* null, void (i8*, i64)* @randombytes_sysrandom_buf, i32 ()* @randombytes_sysrandom_close }, align 8, !dbg !151
@stream = internal global %struct.SysRandom_ { i32 -1, i32 0, i32 0 }, align 4, !dbg !161
@.str.6 = private unnamed_addr constant [19 x i8] c"size > (size_t) 0U\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c\00", align 1
@__PRETTY_FUNCTION__.safe_read = private unnamed_addr constant [50 x i8] c"ssize_t safe_read(const int, void *const, size_t)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"chunk_size > (size_t) 0U\00", align 1
@__PRETTY_FUNCTION__.randombytes_linux_getrandom = private unnamed_addr constant [53 x i8] c"int randombytes_linux_getrandom(void *const, size_t)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"size <= 256U\00", align 1
@__PRETTY_FUNCTION__._randombytes_linux_getrandom = private unnamed_addr constant [60 x i8] c"int _randombytes_linux_getrandom(void *const, const size_t)\00", align 1
@randombytes_sysrandom_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16, !dbg !169
@.str.1.17 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sysrandom\00", align 1
@sigma = internal constant [16 x i8] c"expand 32-byte k", align 16, !dbg !183
@canary = internal global [16 x i8] zeroinitializer, align 16, !dbg !194

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_aead_chacha20poly1305_encrypt(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i8* %7, i8* %8) #0 !dbg !226 {
  %10 = alloca %struct.crypto_onetimeauth_poly1305_state, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i64* %1, metadata !232, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i8* %2, metadata !233, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i64 %3, metadata !234, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i8* %4, metadata !235, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i64 %5, metadata !236, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i8* %6, metadata !237, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i8* %7, metadata !238, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i8* %8, metadata !239, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata %struct.crypto_onetimeauth_poly1305_state* %10, metadata !240, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !247, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata [8 x i8]* %12, metadata !252, metadata !DIExpression()), !dbg !256
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !257
  %14 = call i32 @crypto_stream_chacha20(i8* %13, i64 64, i8* %7, i8* %8), !dbg !258
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !259
  %16 = call i32 @crypto_onetimeauth_poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %15), !dbg !260
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !261
  call void @sodium_memzero(i8* %17, i64 64), !dbg !262
  %18 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %4, i64 %5), !dbg !263
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !264
  call void @_u64_le_from_ull(i8* %19, i64 %5), !dbg !265
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !266
  %21 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %20, i64 8), !dbg !267
  %22 = call i32 @crypto_stream_chacha20_xor_ic(i8* %0, i8* %2, i64 %3, i8* %7, i64 1, i8* %8), !dbg !268
  %23 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %0, i64 %3), !dbg !269
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !270
  call void @_u64_le_from_ull(i8* %24, i64 %3), !dbg !271
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !272
  %26 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %25, i64 8), !dbg !273
  %27 = getelementptr inbounds i8, i8* %0, i64 %3, !dbg !274
  %28 = call i32 @crypto_onetimeauth_poly1305_final(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %27), !dbg !275
  %29 = bitcast %struct.crypto_onetimeauth_poly1305_state* %10 to i8*, !dbg !276
  call void @sodium_memzero(i8* %29, i64 144), !dbg !277
  %30 = icmp ne i64* %1, null, !dbg !278
  br i1 %30, label %31, label %33, !dbg !280

31:                                               ; preds = %9
  %32 = add i64 %3, 16, !dbg !281
  store i64 %32, i64* %1, align 8, !dbg !283
  br label %33, !dbg !284

33:                                               ; preds = %31, %9
  ret i32 0, !dbg !285
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @_u64_le_from_ull(i8* %0, i64 %1) #0 !dbg !286 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %1, metadata !291, metadata !DIExpression()), !dbg !290
  %3 = and i64 %1, 255, !dbg !292
  %4 = trunc i64 %3 to i8, !dbg !293
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !294
  store i8 %4, i8* %5, align 1, !dbg !295
  %6 = lshr i64 %1, 8, !dbg !296
  call void @llvm.dbg.value(metadata i64 %6, metadata !291, metadata !DIExpression()), !dbg !290
  %7 = and i64 %6, 255, !dbg !297
  %8 = trunc i64 %7 to i8, !dbg !298
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !299
  store i8 %8, i8* %9, align 1, !dbg !300
  %10 = lshr i64 %6, 8, !dbg !301
  call void @llvm.dbg.value(metadata i64 %10, metadata !291, metadata !DIExpression()), !dbg !290
  %11 = and i64 %10, 255, !dbg !302
  %12 = trunc i64 %11 to i8, !dbg !303
  %13 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !304
  store i8 %12, i8* %13, align 1, !dbg !305
  %14 = lshr i64 %10, 8, !dbg !306
  call void @llvm.dbg.value(metadata i64 %14, metadata !291, metadata !DIExpression()), !dbg !290
  %15 = and i64 %14, 255, !dbg !307
  %16 = trunc i64 %15 to i8, !dbg !308
  %17 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !309
  store i8 %16, i8* %17, align 1, !dbg !310
  %18 = lshr i64 %14, 8, !dbg !311
  call void @llvm.dbg.value(metadata i64 %18, metadata !291, metadata !DIExpression()), !dbg !290
  %19 = and i64 %18, 255, !dbg !312
  %20 = trunc i64 %19 to i8, !dbg !313
  %21 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !314
  store i8 %20, i8* %21, align 1, !dbg !315
  %22 = lshr i64 %18, 8, !dbg !316
  call void @llvm.dbg.value(metadata i64 %22, metadata !291, metadata !DIExpression()), !dbg !290
  %23 = and i64 %22, 255, !dbg !317
  %24 = trunc i64 %23 to i8, !dbg !318
  %25 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !319
  store i8 %24, i8* %25, align 1, !dbg !320
  %26 = lshr i64 %22, 8, !dbg !321
  call void @llvm.dbg.value(metadata i64 %26, metadata !291, metadata !DIExpression()), !dbg !290
  %27 = and i64 %26, 255, !dbg !322
  %28 = trunc i64 %27 to i8, !dbg !323
  %29 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !324
  store i8 %28, i8* %29, align 1, !dbg !325
  %30 = lshr i64 %26, 8, !dbg !326
  call void @llvm.dbg.value(metadata i64 %30, metadata !291, metadata !DIExpression()), !dbg !290
  %31 = and i64 %30, 255, !dbg !327
  %32 = trunc i64 %31 to i8, !dbg !328
  %33 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !329
  store i8 %32, i8* %33, align 1, !dbg !330
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_aead_chacha20poly1305_decrypt(i8* %0, i64* %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i8* %8) #0 !dbg !332 {
  %10 = alloca %struct.crypto_onetimeauth_poly1305_state, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca [8 x i8], align 1
  %13 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i64* %1, metadata !337, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i8* %2, metadata !338, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i8* %3, metadata !339, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i64 %4, metadata !340, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i8* %5, metadata !341, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i64 %6, metadata !342, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i8* %7, metadata !343, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i8* %8, metadata !344, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata %struct.crypto_onetimeauth_poly1305_state* %10, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata [8 x i8]* %12, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata [16 x i8]* %13, metadata !351, metadata !DIExpression()), !dbg !352
  %14 = icmp ne i64* %1, null, !dbg !353
  br i1 %14, label %15, label %16, !dbg !355

15:                                               ; preds = %9
  store i64 0, i64* %1, align 8, !dbg !356
  br label %16, !dbg !358

16:                                               ; preds = %15, %9
  %17 = icmp ult i64 %4, 16, !dbg !359
  br i1 %17, label %18, label %19, !dbg !361

18:                                               ; preds = %16
  br label %53, !dbg !362

19:                                               ; preds = %16
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !364
  %21 = call i32 @crypto_stream_chacha20(i8* %20, i64 64, i8* %7, i8* %8), !dbg !365
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !366
  %23 = call i32 @crypto_onetimeauth_poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %22), !dbg !367
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !368
  call void @sodium_memzero(i8* %24, i64 64), !dbg !369
  %25 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %5, i64 %6), !dbg !370
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !371
  call void @_u64_le_from_ull(i8* %26, i64 %6), !dbg !372
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !373
  %28 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %27, i64 8), !dbg !374
  %29 = sub i64 %4, 16, !dbg !375
  %30 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %3, i64 %29), !dbg !376
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !377
  %32 = sub i64 %4, 16, !dbg !378
  call void @_u64_le_from_ull(i8* %31, i64 %32), !dbg !379
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !380
  %34 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %33, i64 8), !dbg !381
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0, !dbg !382
  %36 = call i32 @crypto_onetimeauth_poly1305_final(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %35), !dbg !383
  %37 = bitcast %struct.crypto_onetimeauth_poly1305_state* %10 to i8*, !dbg !384
  call void @sodium_memzero(i8* %37, i64 144), !dbg !385
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0, !dbg !386
  %39 = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !387
  %40 = getelementptr inbounds i8, i8* %39, i64 -16, !dbg !388
  %41 = call i32 @crypto_verify_16(i8* %38, i8* %40), !dbg !389
  call void @llvm.dbg.value(metadata i32 %41, metadata !390, metadata !DIExpression()), !dbg !336
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0, !dbg !391
  call void @sodium_memzero(i8* %42, i64 16), !dbg !392
  %43 = icmp ne i32 %41, 0, !dbg !393
  br i1 %43, label %44, label %46, !dbg !395

44:                                               ; preds = %19
  %45 = sub i64 %4, 16, !dbg !396
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %45, i1 false), !dbg !398
  br label %53, !dbg !399

46:                                               ; preds = %19
  %47 = sub i64 %4, 16, !dbg !400
  %48 = call i32 @crypto_stream_chacha20_xor_ic(i8* %0, i8* %3, i64 %47, i8* %7, i64 1, i8* %8), !dbg !401
  %49 = icmp ne i64* %1, null, !dbg !402
  br i1 %49, label %50, label %52, !dbg !404

50:                                               ; preds = %46
  %51 = sub i64 %4, 16, !dbg !405
  store i64 %51, i64* %1, align 8, !dbg !407
  br label %52, !dbg !408

52:                                               ; preds = %50, %46
  br label %53, !dbg !409

53:                                               ; preds = %52, %44, %18
  %.0 = phi i32 [ -1, %18 ], [ -1, %44 ], [ 0, %52 ], !dbg !336
  ret i32 %.0, !dbg !410
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_aead_chacha20poly1305_keybytes() #0 !dbg !411 {
  ret i64 32, !dbg !414
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_aead_chacha20poly1305_npubbytes() #0 !dbg !415 {
  ret i64 8, !dbg !416
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_aead_chacha20poly1305_nsecbytes() #0 !dbg !417 {
  ret i64 0, !dbg !418
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_aead_chacha20poly1305_abytes() #0 !dbg !419 {
  ret i64 16, !dbg !420
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @crypto_onetimeauth_poly1305_donna_implementation_name() #0 !dbg !421 {
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), !dbg !422
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !423 {
  %5 = alloca %struct.crypto_onetimeauth_poly1305_state, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i8* %1, metadata !426, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i64 %2, metadata !427, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata i8* %3, metadata !428, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata %struct.crypto_onetimeauth_poly1305_state* %5, metadata !429, metadata !DIExpression()), !dbg !430
  call void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %3), !dbg !431
  call void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %1, i64 %2), !dbg !432
  call void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %0), !dbg !433
  ret i32 0, !dbg !434
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !435 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i8* %1, metadata !438, metadata !DIExpression()), !dbg !437
  call void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !439
  ret i32 0, !dbg !440
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !441 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i8* %1, metadata !444, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.value(metadata i64 %2, metadata !445, metadata !DIExpression()), !dbg !443
  call void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2), !dbg !446
  ret i32 0, !dbg !447
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_final(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !448 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i8* %1, metadata !451, metadata !DIExpression()), !dbg !450
  call void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !452
  ret i32 0, !dbg !453
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !454 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i8* %1, metadata !459, metadata !DIExpression()), !dbg !458
  %3 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !460
  %4 = bitcast i8* %3 to %struct.poly1305_state_internal_t*, !dbg !461
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %4, metadata !462, metadata !DIExpression()), !dbg !458
  %5 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !463
  %6 = load i64, i64* %5, align 8, !dbg !463
  %7 = icmp ne i64 %6, 0, !dbg !465
  br i1 %7, label %8, label %25, !dbg !466

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !467
  %10 = load i64, i64* %9, align 8, !dbg !467
  call void @llvm.dbg.value(metadata i64 %10, metadata !469, metadata !DIExpression()), !dbg !470
  %11 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !471
  %12 = add i64 %10, 1, !dbg !472
  call void @llvm.dbg.value(metadata i64 %12, metadata !469, metadata !DIExpression()), !dbg !470
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %10, !dbg !473
  store i8 1, i8* %13, align 1, !dbg !474
  br label %14, !dbg !475

14:                                               ; preds = %19, %8
  %.0 = phi i64 [ %12, %8 ], [ %20, %19 ], !dbg !470
  call void @llvm.dbg.value(metadata i64 %.0, metadata !469, metadata !DIExpression()), !dbg !470
  %15 = icmp ult i64 %.0, 16, !dbg !476
  br i1 %15, label %16, label %21, !dbg !479

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !480
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 %.0, !dbg !481
  store i8 0, i8* %18, align 1, !dbg !482
  br label %19, !dbg !481

19:                                               ; preds = %16
  %20 = add i64 %.0, 1, !dbg !483
  call void @llvm.dbg.value(metadata i64 %20, metadata !469, metadata !DIExpression()), !dbg !470
  br label %14, !dbg !484, !llvm.loop !485

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 5, !dbg !488
  store i8 1, i8* %22, align 8, !dbg !489
  %23 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !490
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0, !dbg !491
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %4, i8* %24, i64 16), !dbg !492
  br label %25, !dbg !493

25:                                               ; preds = %21, %2
  %26 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !494
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 0, !dbg !495
  %28 = load i64, i64* %27, align 8, !dbg !495
  call void @llvm.dbg.value(metadata i64 %28, metadata !496, metadata !DIExpression()), !dbg !458
  %29 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !497
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %29, i64 0, i64 1, !dbg !498
  %31 = load i64, i64* %30, align 8, !dbg !498
  call void @llvm.dbg.value(metadata i64 %31, metadata !499, metadata !DIExpression()), !dbg !458
  %32 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !500
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 2, !dbg !501
  %34 = load i64, i64* %33, align 8, !dbg !501
  call void @llvm.dbg.value(metadata i64 %34, metadata !502, metadata !DIExpression()), !dbg !458
  %35 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !503
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 3, !dbg !504
  %37 = load i64, i64* %36, align 8, !dbg !504
  call void @llvm.dbg.value(metadata i64 %37, metadata !505, metadata !DIExpression()), !dbg !458
  %38 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !506
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %38, i64 0, i64 4, !dbg !507
  %40 = load i64, i64* %39, align 8, !dbg !507
  call void @llvm.dbg.value(metadata i64 %40, metadata !508, metadata !DIExpression()), !dbg !458
  %41 = lshr i64 %31, 26, !dbg !509
  call void @llvm.dbg.value(metadata i64 %41, metadata !510, metadata !DIExpression()), !dbg !458
  %42 = and i64 %31, 67108863, !dbg !511
  call void @llvm.dbg.value(metadata i64 %42, metadata !499, metadata !DIExpression()), !dbg !458
  %43 = add i64 %34, %41, !dbg !512
  call void @llvm.dbg.value(metadata i64 %43, metadata !502, metadata !DIExpression()), !dbg !458
  %44 = lshr i64 %43, 26, !dbg !513
  call void @llvm.dbg.value(metadata i64 %44, metadata !510, metadata !DIExpression()), !dbg !458
  %45 = and i64 %43, 67108863, !dbg !514
  call void @llvm.dbg.value(metadata i64 %45, metadata !502, metadata !DIExpression()), !dbg !458
  %46 = add i64 %37, %44, !dbg !515
  call void @llvm.dbg.value(metadata i64 %46, metadata !505, metadata !DIExpression()), !dbg !458
  %47 = lshr i64 %46, 26, !dbg !516
  call void @llvm.dbg.value(metadata i64 %47, metadata !510, metadata !DIExpression()), !dbg !458
  %48 = and i64 %46, 67108863, !dbg !517
  call void @llvm.dbg.value(metadata i64 %48, metadata !505, metadata !DIExpression()), !dbg !458
  %49 = add i64 %40, %47, !dbg !518
  call void @llvm.dbg.value(metadata i64 %49, metadata !508, metadata !DIExpression()), !dbg !458
  %50 = lshr i64 %49, 26, !dbg !519
  call void @llvm.dbg.value(metadata i64 %50, metadata !510, metadata !DIExpression()), !dbg !458
  %51 = and i64 %49, 67108863, !dbg !520
  call void @llvm.dbg.value(metadata i64 %51, metadata !508, metadata !DIExpression()), !dbg !458
  %52 = mul i64 %50, 5, !dbg !521
  %53 = add i64 %28, %52, !dbg !522
  call void @llvm.dbg.value(metadata i64 %53, metadata !496, metadata !DIExpression()), !dbg !458
  %54 = lshr i64 %53, 26, !dbg !523
  call void @llvm.dbg.value(metadata i64 %54, metadata !510, metadata !DIExpression()), !dbg !458
  %55 = and i64 %53, 67108863, !dbg !524
  call void @llvm.dbg.value(metadata i64 %55, metadata !496, metadata !DIExpression()), !dbg !458
  %56 = add i64 %42, %54, !dbg !525
  call void @llvm.dbg.value(metadata i64 %56, metadata !499, metadata !DIExpression()), !dbg !458
  %57 = add i64 %55, 5, !dbg !526
  call void @llvm.dbg.value(metadata i64 %57, metadata !527, metadata !DIExpression()), !dbg !458
  %58 = lshr i64 %57, 26, !dbg !528
  call void @llvm.dbg.value(metadata i64 %58, metadata !510, metadata !DIExpression()), !dbg !458
  %59 = and i64 %57, 67108863, !dbg !529
  call void @llvm.dbg.value(metadata i64 %59, metadata !527, metadata !DIExpression()), !dbg !458
  %60 = add i64 %56, %58, !dbg !530
  call void @llvm.dbg.value(metadata i64 %60, metadata !531, metadata !DIExpression()), !dbg !458
  %61 = lshr i64 %60, 26, !dbg !532
  call void @llvm.dbg.value(metadata i64 %61, metadata !510, metadata !DIExpression()), !dbg !458
  %62 = and i64 %60, 67108863, !dbg !533
  call void @llvm.dbg.value(metadata i64 %62, metadata !531, metadata !DIExpression()), !dbg !458
  %63 = add i64 %45, %61, !dbg !534
  call void @llvm.dbg.value(metadata i64 %63, metadata !535, metadata !DIExpression()), !dbg !458
  %64 = lshr i64 %63, 26, !dbg !536
  call void @llvm.dbg.value(metadata i64 %64, metadata !510, metadata !DIExpression()), !dbg !458
  %65 = and i64 %63, 67108863, !dbg !537
  call void @llvm.dbg.value(metadata i64 %65, metadata !535, metadata !DIExpression()), !dbg !458
  %66 = add i64 %48, %64, !dbg !538
  call void @llvm.dbg.value(metadata i64 %66, metadata !539, metadata !DIExpression()), !dbg !458
  %67 = lshr i64 %66, 26, !dbg !540
  call void @llvm.dbg.value(metadata i64 %67, metadata !510, metadata !DIExpression()), !dbg !458
  %68 = and i64 %66, 67108863, !dbg !541
  call void @llvm.dbg.value(metadata i64 %68, metadata !539, metadata !DIExpression()), !dbg !458
  %69 = add i64 %51, %67, !dbg !542
  %70 = sub i64 %69, 67108864, !dbg !543
  call void @llvm.dbg.value(metadata i64 %70, metadata !544, metadata !DIExpression()), !dbg !458
  %71 = lshr i64 %70, 63, !dbg !545
  %72 = sub i64 %71, 1, !dbg !546
  call void @llvm.dbg.value(metadata i64 %72, metadata !547, metadata !DIExpression()), !dbg !458
  %73 = and i64 %59, %72, !dbg !548
  call void @llvm.dbg.value(metadata i64 %73, metadata !527, metadata !DIExpression()), !dbg !458
  %74 = and i64 %62, %72, !dbg !549
  call void @llvm.dbg.value(metadata i64 %74, metadata !531, metadata !DIExpression()), !dbg !458
  %75 = and i64 %65, %72, !dbg !550
  call void @llvm.dbg.value(metadata i64 %75, metadata !535, metadata !DIExpression()), !dbg !458
  %76 = and i64 %68, %72, !dbg !551
  call void @llvm.dbg.value(metadata i64 %76, metadata !539, metadata !DIExpression()), !dbg !458
  %77 = and i64 %70, %72, !dbg !552
  call void @llvm.dbg.value(metadata i64 %77, metadata !544, metadata !DIExpression()), !dbg !458
  %78 = xor i64 %72, -1, !dbg !553
  call void @llvm.dbg.value(metadata i64 %78, metadata !547, metadata !DIExpression()), !dbg !458
  %79 = and i64 %55, %78, !dbg !554
  %80 = or i64 %79, %73, !dbg !555
  call void @llvm.dbg.value(metadata i64 %80, metadata !496, metadata !DIExpression()), !dbg !458
  %81 = and i64 %56, %78, !dbg !556
  %82 = or i64 %81, %74, !dbg !557
  call void @llvm.dbg.value(metadata i64 %82, metadata !499, metadata !DIExpression()), !dbg !458
  %83 = and i64 %45, %78, !dbg !558
  %84 = or i64 %83, %75, !dbg !559
  call void @llvm.dbg.value(metadata i64 %84, metadata !502, metadata !DIExpression()), !dbg !458
  %85 = and i64 %48, %78, !dbg !560
  %86 = or i64 %85, %76, !dbg !561
  call void @llvm.dbg.value(metadata i64 %86, metadata !505, metadata !DIExpression()), !dbg !458
  %87 = and i64 %51, %78, !dbg !562
  %88 = or i64 %87, %77, !dbg !563
  call void @llvm.dbg.value(metadata i64 %88, metadata !508, metadata !DIExpression()), !dbg !458
  %89 = shl i64 %82, 26, !dbg !564
  %90 = or i64 %80, %89, !dbg !565
  %91 = and i64 %90, 4294967295, !dbg !566
  call void @llvm.dbg.value(metadata i64 %91, metadata !496, metadata !DIExpression()), !dbg !458
  %92 = lshr i64 %82, 6, !dbg !567
  %93 = shl i64 %84, 20, !dbg !568
  %94 = or i64 %92, %93, !dbg !569
  %95 = and i64 %94, 4294967295, !dbg !570
  call void @llvm.dbg.value(metadata i64 %95, metadata !499, metadata !DIExpression()), !dbg !458
  %96 = lshr i64 %84, 12, !dbg !571
  %97 = shl i64 %86, 14, !dbg !572
  %98 = or i64 %96, %97, !dbg !573
  %99 = and i64 %98, 4294967295, !dbg !574
  call void @llvm.dbg.value(metadata i64 %99, metadata !502, metadata !DIExpression()), !dbg !458
  %100 = lshr i64 %86, 18, !dbg !575
  %101 = shl i64 %88, 8, !dbg !576
  %102 = or i64 %100, %101, !dbg !577
  %103 = and i64 %102, 4294967295, !dbg !578
  call void @llvm.dbg.value(metadata i64 %103, metadata !505, metadata !DIExpression()), !dbg !458
  %104 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !579
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %104, i64 0, i64 0, !dbg !580
  %106 = load i64, i64* %105, align 8, !dbg !580
  %107 = add i64 %91, %106, !dbg !581
  call void @llvm.dbg.value(metadata i64 %107, metadata !582, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %107, metadata !496, metadata !DIExpression()), !dbg !458
  %108 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !583
  %109 = getelementptr inbounds [4 x i64], [4 x i64]* %108, i64 0, i64 1, !dbg !584
  %110 = load i64, i64* %109, align 8, !dbg !584
  %111 = add i64 %95, %110, !dbg !585
  %112 = lshr i64 %107, 32, !dbg !586
  %113 = add i64 %111, %112, !dbg !587
  call void @llvm.dbg.value(metadata i64 %113, metadata !582, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %113, metadata !499, metadata !DIExpression()), !dbg !458
  %114 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !588
  %115 = getelementptr inbounds [4 x i64], [4 x i64]* %114, i64 0, i64 2, !dbg !589
  %116 = load i64, i64* %115, align 8, !dbg !589
  %117 = add i64 %99, %116, !dbg !590
  %118 = lshr i64 %113, 32, !dbg !591
  %119 = add i64 %117, %118, !dbg !592
  call void @llvm.dbg.value(metadata i64 %119, metadata !582, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %119, metadata !502, metadata !DIExpression()), !dbg !458
  %120 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !593
  %121 = getelementptr inbounds [4 x i64], [4 x i64]* %120, i64 0, i64 3, !dbg !594
  %122 = load i64, i64* %121, align 8, !dbg !594
  %123 = add i64 %103, %122, !dbg !595
  %124 = lshr i64 %119, 32, !dbg !596
  %125 = add i64 %123, %124, !dbg !597
  call void @llvm.dbg.value(metadata i64 %125, metadata !582, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64 %125, metadata !505, metadata !DIExpression()), !dbg !458
  %126 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !598
  call void @U32TO8(i8* %126, i64 %107), !dbg !599
  %127 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !600
  call void @U32TO8(i8* %127, i64 %113), !dbg !601
  %128 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !602
  call void @U32TO8(i8* %128, i64 %119), !dbg !603
  %129 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !604
  call void @U32TO8(i8* %129, i64 %125), !dbg !605
  %130 = bitcast %struct.poly1305_state_internal_t* %4 to i8*, !dbg !606
  call void @sodium_memzero(i8* %130, i64 144), !dbg !607
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_blocks(%struct.poly1305_state_internal_t* %0, i8* %1, i64 %2) #0 !dbg !609 {
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %0, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i8* %1, metadata !614, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i64 %2, metadata !615, metadata !DIExpression()), !dbg !613
  %4 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 5, !dbg !616
  %5 = load i8, i8* %4, align 8, !dbg !616
  %6 = zext i8 %5 to i32, !dbg !617
  %7 = icmp ne i32 %6, 0, !dbg !617
  %8 = zext i1 %7 to i64, !dbg !617
  %9 = select i1 %7, i32 0, i32 16777216, !dbg !617
  %10 = sext i32 %9 to i64, !dbg !617
  call void @llvm.dbg.value(metadata i64 %10, metadata !618, metadata !DIExpression()), !dbg !613
  %11 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !620
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 0, !dbg !621
  %13 = load i64, i64* %12, align 8, !dbg !621
  call void @llvm.dbg.value(metadata i64 %13, metadata !622, metadata !DIExpression()), !dbg !613
  %14 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !623
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 1, !dbg !624
  %16 = load i64, i64* %15, align 8, !dbg !624
  call void @llvm.dbg.value(metadata i64 %16, metadata !625, metadata !DIExpression()), !dbg !613
  %17 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !626
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %17, i64 0, i64 2, !dbg !627
  %19 = load i64, i64* %18, align 8, !dbg !627
  call void @llvm.dbg.value(metadata i64 %19, metadata !628, metadata !DIExpression()), !dbg !613
  %20 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !629
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 3, !dbg !630
  %22 = load i64, i64* %21, align 8, !dbg !630
  call void @llvm.dbg.value(metadata i64 %22, metadata !631, metadata !DIExpression()), !dbg !613
  %23 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !632
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %23, i64 0, i64 4, !dbg !633
  %25 = load i64, i64* %24, align 8, !dbg !633
  call void @llvm.dbg.value(metadata i64 %25, metadata !634, metadata !DIExpression()), !dbg !613
  %26 = mul i64 %16, 5, !dbg !635
  call void @llvm.dbg.value(metadata i64 %26, metadata !636, metadata !DIExpression()), !dbg !613
  %27 = mul i64 %19, 5, !dbg !637
  call void @llvm.dbg.value(metadata i64 %27, metadata !638, metadata !DIExpression()), !dbg !613
  %28 = mul i64 %22, 5, !dbg !639
  call void @llvm.dbg.value(metadata i64 %28, metadata !640, metadata !DIExpression()), !dbg !613
  %29 = mul i64 %25, 5, !dbg !641
  call void @llvm.dbg.value(metadata i64 %29, metadata !642, metadata !DIExpression()), !dbg !613
  %30 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !643
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %30, i64 0, i64 0, !dbg !644
  %32 = load i64, i64* %31, align 8, !dbg !644
  call void @llvm.dbg.value(metadata i64 %32, metadata !645, metadata !DIExpression()), !dbg !613
  %33 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !646
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %33, i64 0, i64 1, !dbg !647
  %35 = load i64, i64* %34, align 8, !dbg !647
  call void @llvm.dbg.value(metadata i64 %35, metadata !648, metadata !DIExpression()), !dbg !613
  %36 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !649
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %36, i64 0, i64 2, !dbg !650
  %38 = load i64, i64* %37, align 8, !dbg !650
  call void @llvm.dbg.value(metadata i64 %38, metadata !651, metadata !DIExpression()), !dbg !613
  %39 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !652
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 3, !dbg !653
  %41 = load i64, i64* %40, align 8, !dbg !653
  call void @llvm.dbg.value(metadata i64 %41, metadata !654, metadata !DIExpression()), !dbg !613
  %42 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !655
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 4, !dbg !656
  %44 = load i64, i64* %43, align 8, !dbg !656
  call void @llvm.dbg.value(metadata i64 %44, metadata !657, metadata !DIExpression()), !dbg !613
  br label %45, !dbg !658

45:                                               ; preds = %47, %3
  %.06 = phi i64 [ %32, %3 ], [ %134, %47 ], !dbg !613
  %.05 = phi i64 [ %35, %3 ], [ %135, %47 ], !dbg !613
  %.04 = phi i64 [ %38, %3 ], [ %124, %47 ], !dbg !613
  %.03 = phi i64 [ %41, %3 ], [ %127, %47 ], !dbg !613
  %.02 = phi i64 [ %2, %3 ], [ %137, %47 ]
  %.01 = phi i8* [ %1, %3 ], [ %136, %47 ]
  %.0 = phi i64 [ %44, %3 ], [ %130, %47 ], !dbg !613
  call void @llvm.dbg.value(metadata i64 %.0, metadata !657, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i8* %.01, metadata !614, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i64 %.02, metadata !615, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i64 %.03, metadata !654, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i64 %.04, metadata !651, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i64 %.05, metadata !648, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i64 %.06, metadata !645, metadata !DIExpression()), !dbg !613
  %46 = icmp uge i64 %.02, 16, !dbg !659
  br i1 %46, label %47, label %138, !dbg !658

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, i8* %.01, i64 0, !dbg !660
  %49 = call i64 @U8TO32(i8* %48), !dbg !662
  %50 = and i64 %49, 67108863, !dbg !663
  %51 = add i64 %.06, %50, !dbg !664
  call void @llvm.dbg.value(metadata i64 %51, metadata !645, metadata !DIExpression()), !dbg !613
  %52 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !665
  %53 = call i64 @U8TO32(i8* %52), !dbg !666
  %54 = lshr i64 %53, 2, !dbg !667
  %55 = and i64 %54, 67108863, !dbg !668
  %56 = add i64 %.05, %55, !dbg !669
  call void @llvm.dbg.value(metadata i64 %56, metadata !648, metadata !DIExpression()), !dbg !613
  %57 = getelementptr inbounds i8, i8* %.01, i64 6, !dbg !670
  %58 = call i64 @U8TO32(i8* %57), !dbg !671
  %59 = lshr i64 %58, 4, !dbg !672
  %60 = and i64 %59, 67108863, !dbg !673
  %61 = add i64 %.04, %60, !dbg !674
  call void @llvm.dbg.value(metadata i64 %61, metadata !651, metadata !DIExpression()), !dbg !613
  %62 = getelementptr inbounds i8, i8* %.01, i64 9, !dbg !675
  %63 = call i64 @U8TO32(i8* %62), !dbg !676
  %64 = lshr i64 %63, 6, !dbg !677
  %65 = and i64 %64, 67108863, !dbg !678
  %66 = add i64 %.03, %65, !dbg !679
  call void @llvm.dbg.value(metadata i64 %66, metadata !654, metadata !DIExpression()), !dbg !613
  %67 = getelementptr inbounds i8, i8* %.01, i64 12, !dbg !680
  %68 = call i64 @U8TO32(i8* %67), !dbg !681
  %69 = lshr i64 %68, 8, !dbg !682
  %70 = or i64 %69, %10, !dbg !683
  %71 = add i64 %.0, %70, !dbg !684
  call void @llvm.dbg.value(metadata i64 %71, metadata !657, metadata !DIExpression()), !dbg !613
  %72 = mul i64 %51, %13, !dbg !685
  %73 = mul i64 %56, %29, !dbg !686
  %74 = add i64 %72, %73, !dbg !687
  %75 = mul i64 %61, %28, !dbg !688
  %76 = add i64 %74, %75, !dbg !689
  %77 = mul i64 %66, %27, !dbg !690
  %78 = add i64 %76, %77, !dbg !691
  %79 = mul i64 %71, %26, !dbg !692
  %80 = add i64 %78, %79, !dbg !693
  call void @llvm.dbg.value(metadata i64 %80, metadata !694, metadata !DIExpression()), !dbg !613
  %81 = mul i64 %51, %16, !dbg !695
  %82 = mul i64 %56, %13, !dbg !696
  %83 = add i64 %81, %82, !dbg !697
  %84 = mul i64 %61, %29, !dbg !698
  %85 = add i64 %83, %84, !dbg !699
  %86 = mul i64 %66, %28, !dbg !700
  %87 = add i64 %85, %86, !dbg !701
  %88 = mul i64 %71, %27, !dbg !702
  %89 = add i64 %87, %88, !dbg !703
  call void @llvm.dbg.value(metadata i64 %89, metadata !704, metadata !DIExpression()), !dbg !613
  %90 = mul i64 %51, %19, !dbg !705
  %91 = mul i64 %56, %16, !dbg !706
  %92 = add i64 %90, %91, !dbg !707
  %93 = mul i64 %61, %13, !dbg !708
  %94 = add i64 %92, %93, !dbg !709
  %95 = mul i64 %66, %29, !dbg !710
  %96 = add i64 %94, %95, !dbg !711
  %97 = mul i64 %71, %28, !dbg !712
  %98 = add i64 %96, %97, !dbg !713
  call void @llvm.dbg.value(metadata i64 %98, metadata !714, metadata !DIExpression()), !dbg !613
  %99 = mul i64 %51, %22, !dbg !715
  %100 = mul i64 %56, %19, !dbg !716
  %101 = add i64 %99, %100, !dbg !717
  %102 = mul i64 %61, %16, !dbg !718
  %103 = add i64 %101, %102, !dbg !719
  %104 = mul i64 %66, %13, !dbg !720
  %105 = add i64 %103, %104, !dbg !721
  %106 = mul i64 %71, %29, !dbg !722
  %107 = add i64 %105, %106, !dbg !723
  call void @llvm.dbg.value(metadata i64 %107, metadata !724, metadata !DIExpression()), !dbg !613
  %108 = mul i64 %51, %25, !dbg !725
  %109 = mul i64 %56, %22, !dbg !726
  %110 = add i64 %108, %109, !dbg !727
  %111 = mul i64 %61, %19, !dbg !728
  %112 = add i64 %110, %111, !dbg !729
  %113 = mul i64 %66, %16, !dbg !730
  %114 = add i64 %112, %113, !dbg !731
  %115 = mul i64 %71, %13, !dbg !732
  %116 = add i64 %114, %115, !dbg !733
  call void @llvm.dbg.value(metadata i64 %116, metadata !734, metadata !DIExpression()), !dbg !613
  %117 = lshr i64 %80, 26, !dbg !735
  call void @llvm.dbg.value(metadata i64 %117, metadata !736, metadata !DIExpression()), !dbg !613
  %118 = and i64 %80, 67108863, !dbg !737
  call void @llvm.dbg.value(metadata i64 %118, metadata !645, metadata !DIExpression()), !dbg !613
  %119 = add i64 %89, %117, !dbg !738
  call void @llvm.dbg.value(metadata i64 %119, metadata !704, metadata !DIExpression()), !dbg !613
  %120 = lshr i64 %119, 26, !dbg !739
  call void @llvm.dbg.value(metadata i64 %120, metadata !736, metadata !DIExpression()), !dbg !613
  %121 = and i64 %119, 67108863, !dbg !740
  call void @llvm.dbg.value(metadata i64 %121, metadata !648, metadata !DIExpression()), !dbg !613
  %122 = add i64 %98, %120, !dbg !741
  call void @llvm.dbg.value(metadata i64 %122, metadata !714, metadata !DIExpression()), !dbg !613
  %123 = lshr i64 %122, 26, !dbg !742
  call void @llvm.dbg.value(metadata i64 %123, metadata !736, metadata !DIExpression()), !dbg !613
  %124 = and i64 %122, 67108863, !dbg !743
  call void @llvm.dbg.value(metadata i64 %124, metadata !651, metadata !DIExpression()), !dbg !613
  %125 = add i64 %107, %123, !dbg !744
  call void @llvm.dbg.value(metadata i64 %125, metadata !724, metadata !DIExpression()), !dbg !613
  %126 = lshr i64 %125, 26, !dbg !745
  call void @llvm.dbg.value(metadata i64 %126, metadata !736, metadata !DIExpression()), !dbg !613
  %127 = and i64 %125, 67108863, !dbg !746
  call void @llvm.dbg.value(metadata i64 %127, metadata !654, metadata !DIExpression()), !dbg !613
  %128 = add i64 %116, %126, !dbg !747
  call void @llvm.dbg.value(metadata i64 %128, metadata !734, metadata !DIExpression()), !dbg !613
  %129 = lshr i64 %128, 26, !dbg !748
  call void @llvm.dbg.value(metadata i64 %129, metadata !736, metadata !DIExpression()), !dbg !613
  %130 = and i64 %128, 67108863, !dbg !749
  call void @llvm.dbg.value(metadata i64 %130, metadata !657, metadata !DIExpression()), !dbg !613
  %131 = mul i64 %129, 5, !dbg !750
  %132 = add i64 %118, %131, !dbg !751
  call void @llvm.dbg.value(metadata i64 %132, metadata !645, metadata !DIExpression()), !dbg !613
  %133 = lshr i64 %132, 26, !dbg !752
  call void @llvm.dbg.value(metadata i64 %133, metadata !736, metadata !DIExpression()), !dbg !613
  %134 = and i64 %132, 67108863, !dbg !753
  call void @llvm.dbg.value(metadata i64 %134, metadata !645, metadata !DIExpression()), !dbg !613
  %135 = add i64 %121, %133, !dbg !754
  call void @llvm.dbg.value(metadata i64 %135, metadata !648, metadata !DIExpression()), !dbg !613
  %136 = getelementptr inbounds i8, i8* %.01, i64 16, !dbg !755
  call void @llvm.dbg.value(metadata i8* %136, metadata !614, metadata !DIExpression()), !dbg !613
  %137 = sub i64 %.02, 16, !dbg !756
  call void @llvm.dbg.value(metadata i64 %137, metadata !615, metadata !DIExpression()), !dbg !613
  br label %45, !dbg !658, !llvm.loop !757

138:                                              ; preds = %45
  %139 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !759
  %140 = getelementptr inbounds [5 x i64], [5 x i64]* %139, i64 0, i64 0, !dbg !760
  store i64 %.06, i64* %140, align 8, !dbg !761
  %141 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !762
  %142 = getelementptr inbounds [5 x i64], [5 x i64]* %141, i64 0, i64 1, !dbg !763
  store i64 %.05, i64* %142, align 8, !dbg !764
  %143 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !765
  %144 = getelementptr inbounds [5 x i64], [5 x i64]* %143, i64 0, i64 2, !dbg !766
  store i64 %.04, i64* %144, align 8, !dbg !767
  %145 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !768
  %146 = getelementptr inbounds [5 x i64], [5 x i64]* %145, i64 0, i64 3, !dbg !769
  store i64 %.03, i64* %146, align 8, !dbg !770
  %147 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !771
  %148 = getelementptr inbounds [5 x i64], [5 x i64]* %147, i64 0, i64 4, !dbg !772
  store i64 %.0, i64* %148, align 8, !dbg !773
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind uwtable
define internal void @U32TO8(i8* %0, i64 %1) #0 !dbg !775 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !778, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i64 %1, metadata !780, metadata !DIExpression()), !dbg !779
  %3 = and i64 %1, 255, !dbg !781
  %4 = trunc i64 %3 to i8, !dbg !782
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !783
  store i8 %4, i8* %5, align 1, !dbg !784
  %6 = lshr i64 %1, 8, !dbg !785
  %7 = and i64 %6, 255, !dbg !786
  %8 = trunc i64 %7 to i8, !dbg !787
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !788
  store i8 %8, i8* %9, align 1, !dbg !789
  %10 = lshr i64 %1, 16, !dbg !790
  %11 = and i64 %10, 255, !dbg !791
  %12 = trunc i64 %11 to i8, !dbg !792
  %13 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !793
  store i8 %12, i8* %13, align 1, !dbg !794
  %14 = lshr i64 %1, 24, !dbg !795
  %15 = and i64 %14, 255, !dbg !796
  %16 = trunc i64 %15 to i8, !dbg !797
  %17 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !798
  store i8 %16, i8* %17, align 1, !dbg !799
  ret void, !dbg !800
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @U8TO32(i8* %0) #0 !dbg !801 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !804, metadata !DIExpression()), !dbg !805
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !806
  %3 = load i8, i8* %2, align 1, !dbg !806
  %4 = zext i8 %3 to i32, !dbg !806
  %5 = and i32 %4, 255, !dbg !807
  %6 = sext i32 %5 to i64, !dbg !808
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !809
  %8 = load i8, i8* %7, align 1, !dbg !809
  %9 = zext i8 %8 to i32, !dbg !809
  %10 = and i32 %9, 255, !dbg !810
  %11 = sext i32 %10 to i64, !dbg !811
  %12 = shl i64 %11, 8, !dbg !812
  %13 = or i64 %6, %12, !dbg !813
  %14 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !814
  %15 = load i8, i8* %14, align 1, !dbg !814
  %16 = zext i8 %15 to i32, !dbg !814
  %17 = and i32 %16, 255, !dbg !815
  %18 = sext i32 %17 to i64, !dbg !816
  %19 = shl i64 %18, 16, !dbg !817
  %20 = or i64 %13, %19, !dbg !818
  %21 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !819
  %22 = load i8, i8* %21, align 1, !dbg !819
  %23 = zext i8 %22 to i32, !dbg !819
  %24 = and i32 %23, 255, !dbg !820
  %25 = sext i32 %24 to i64, !dbg !821
  %26 = shl i64 %25, 24, !dbg !822
  %27 = or i64 %20, %26, !dbg !823
  ret i64 %27, !dbg !824
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !825 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8* %1, metadata !830, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 %2, metadata !831, metadata !DIExpression()), !dbg !829
  %4 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !832
  %5 = bitcast i8* %4 to %struct.poly1305_state_internal_t*, !dbg !833
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %5, metadata !834, metadata !DIExpression()), !dbg !829
  %6 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !835
  %7 = load i64, i64* %6, align 8, !dbg !835
  %8 = icmp ne i64 %7, 0, !dbg !837
  br i1 %8, label %9, label %42, !dbg !838

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !839
  %11 = load i64, i64* %10, align 8, !dbg !839
  %12 = sub i64 16, %11, !dbg !841
  call void @llvm.dbg.value(metadata i64 %12, metadata !842, metadata !DIExpression()), !dbg !843
  %13 = icmp ugt i64 %12, %2, !dbg !844
  br i1 %13, label %14, label %15, !dbg !846

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i64 %2, metadata !842, metadata !DIExpression()), !dbg !843
  br label %15, !dbg !847

15:                                               ; preds = %14, %9
  %.0 = phi i64 [ %2, %14 ], [ %12, %9 ], !dbg !843
  call void @llvm.dbg.value(metadata i64 %.0, metadata !842, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 0, metadata !848, metadata !DIExpression()), !dbg !829
  br label %16, !dbg !849

16:                                               ; preds = %26, %15
  %.04 = phi i64 [ 0, %15 ], [ %27, %26 ], !dbg !851
  call void @llvm.dbg.value(metadata i64 %.04, metadata !848, metadata !DIExpression()), !dbg !829
  %17 = icmp ult i64 %.04, %.0, !dbg !852
  br i1 %17, label %18, label %28, !dbg !854

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %1, i64 %.04, !dbg !855
  %20 = load i8, i8* %19, align 1, !dbg !855
  %21 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !856
  %22 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !857
  %23 = load i64, i64* %22, align 8, !dbg !857
  %24 = add i64 %23, %.04, !dbg !858
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 %24, !dbg !859
  store i8 %20, i8* %25, align 1, !dbg !860
  br label %26, !dbg !859

26:                                               ; preds = %18
  %27 = add i64 %.04, 1, !dbg !861
  call void @llvm.dbg.value(metadata i64 %27, metadata !848, metadata !DIExpression()), !dbg !829
  br label %16, !dbg !862, !llvm.loop !863

28:                                               ; preds = %16
  %29 = sub i64 %2, %.0, !dbg !865
  call void @llvm.dbg.value(metadata i64 %29, metadata !831, metadata !DIExpression()), !dbg !829
  %30 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !866
  call void @llvm.dbg.value(metadata i8* %30, metadata !830, metadata !DIExpression()), !dbg !829
  %31 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !867
  %32 = load i64, i64* %31, align 8, !dbg !868
  %33 = add i64 %32, %.0, !dbg !868
  store i64 %33, i64* %31, align 8, !dbg !868
  %34 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !869
  %35 = load i64, i64* %34, align 8, !dbg !869
  %36 = icmp ult i64 %35, 16, !dbg !871
  br i1 %36, label %37, label %38, !dbg !872

37:                                               ; preds = %28
  br label %67, !dbg !873

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !874
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %39, i64 0, i64 0, !dbg !875
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %5, i8* %40, i64 16), !dbg !876
  %41 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !877
  store i64 0, i64* %41, align 8, !dbg !878
  br label %42, !dbg !879

42:                                               ; preds = %38, %3
  %.02 = phi i64 [ %29, %38 ], [ %2, %3 ]
  %.01 = phi i8* [ %30, %38 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i8* %.01, metadata !830, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 %.02, metadata !831, metadata !DIExpression()), !dbg !829
  %43 = icmp uge i64 %.02, 16, !dbg !880
  br i1 %43, label %44, label %48, !dbg !882

44:                                               ; preds = %42
  %45 = and i64 %.02, -16, !dbg !883
  call void @llvm.dbg.value(metadata i64 %45, metadata !885, metadata !DIExpression()), !dbg !886
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %5, i8* %.01, i64 %45), !dbg !887
  %46 = getelementptr inbounds i8, i8* %.01, i64 %45, !dbg !888
  call void @llvm.dbg.value(metadata i8* %46, metadata !830, metadata !DIExpression()), !dbg !829
  %47 = sub i64 %.02, %45, !dbg !889
  call void @llvm.dbg.value(metadata i64 %47, metadata !831, metadata !DIExpression()), !dbg !829
  br label %48, !dbg !890

48:                                               ; preds = %44, %42
  %.13 = phi i64 [ %47, %44 ], [ %.02, %42 ], !dbg !829
  %.1 = phi i8* [ %46, %44 ], [ %.01, %42 ], !dbg !829
  call void @llvm.dbg.value(metadata i8* %.1, metadata !830, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 %.13, metadata !831, metadata !DIExpression()), !dbg !829
  %49 = icmp ne i64 %.13, 0, !dbg !891
  br i1 %49, label %50, label %67, !dbg !893

50:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i64 0, metadata !848, metadata !DIExpression()), !dbg !829
  br label %51, !dbg !894

51:                                               ; preds = %61, %50
  %.15 = phi i64 [ 0, %50 ], [ %62, %61 ], !dbg !897
  call void @llvm.dbg.value(metadata i64 %.15, metadata !848, metadata !DIExpression()), !dbg !829
  %52 = icmp ult i64 %.15, %.13, !dbg !898
  br i1 %52, label %53, label %63, !dbg !900

53:                                               ; preds = %51
  %54 = getelementptr inbounds i8, i8* %.1, i64 %.15, !dbg !901
  %55 = load i8, i8* %54, align 1, !dbg !901
  %56 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !902
  %57 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !903
  %58 = load i64, i64* %57, align 8, !dbg !903
  %59 = add i64 %58, %.15, !dbg !904
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %56, i64 0, i64 %59, !dbg !905
  store i8 %55, i8* %60, align 1, !dbg !906
  br label %61, !dbg !905

61:                                               ; preds = %53
  %62 = add i64 %.15, 1, !dbg !907
  call void @llvm.dbg.value(metadata i64 %62, metadata !848, metadata !DIExpression()), !dbg !829
  br label %51, !dbg !908, !llvm.loop !909

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !911
  %65 = load i64, i64* %64, align 8, !dbg !912
  %66 = add i64 %65, %.13, !dbg !912
  store i64 %66, i64* %64, align 8, !dbg !912
  br label %67, !dbg !913

67:                                               ; preds = %63, %48, %37
  ret void, !dbg !914
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !915 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i8* %1, metadata !920, metadata !DIExpression()), !dbg !919
  %3 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !921
  %4 = bitcast i8* %3 to %struct.poly1305_state_internal_t*, !dbg !922
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %4, metadata !923, metadata !DIExpression()), !dbg !919
  %5 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !924
  %6 = call i64 @U8TO32(i8* %5), !dbg !925
  %7 = and i64 %6, 67108863, !dbg !926
  %8 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !927
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !928
  store i64 %7, i64* %9, align 8, !dbg !929
  %10 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !930
  %11 = call i64 @U8TO32(i8* %10), !dbg !931
  %12 = lshr i64 %11, 2, !dbg !932
  %13 = and i64 %12, 67108611, !dbg !933
  %14 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !934
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 1, !dbg !935
  store i64 %13, i64* %15, align 8, !dbg !936
  %16 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !937
  %17 = call i64 @U8TO32(i8* %16), !dbg !938
  %18 = lshr i64 %17, 4, !dbg !939
  %19 = and i64 %18, 67092735, !dbg !940
  %20 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !941
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 2, !dbg !942
  store i64 %19, i64* %21, align 8, !dbg !943
  %22 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !944
  %23 = call i64 @U8TO32(i8* %22), !dbg !945
  %24 = lshr i64 %23, 6, !dbg !946
  %25 = and i64 %24, 66076671, !dbg !947
  %26 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !948
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 3, !dbg !949
  store i64 %25, i64* %27, align 8, !dbg !950
  %28 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !951
  %29 = call i64 @U8TO32(i8* %28), !dbg !952
  %30 = lshr i64 %29, 8, !dbg !953
  %31 = and i64 %30, 1048575, !dbg !954
  %32 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !955
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 4, !dbg !956
  store i64 %31, i64* %33, align 8, !dbg !957
  %34 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !958
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %34, i64 0, i64 0, !dbg !959
  store i64 0, i64* %35, align 8, !dbg !960
  %36 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !961
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %36, i64 0, i64 1, !dbg !962
  store i64 0, i64* %37, align 8, !dbg !963
  %38 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !964
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %38, i64 0, i64 2, !dbg !965
  store i64 0, i64* %39, align 8, !dbg !966
  %40 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !967
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %40, i64 0, i64 3, !dbg !968
  store i64 0, i64* %41, align 8, !dbg !969
  %42 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !970
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 4, !dbg !971
  store i64 0, i64* %43, align 8, !dbg !972
  %44 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !973
  %45 = call i64 @U8TO32(i8* %44), !dbg !974
  %46 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !975
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %46, i64 0, i64 0, !dbg !976
  store i64 %45, i64* %47, align 8, !dbg !977
  %48 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !978
  %49 = call i64 @U8TO32(i8* %48), !dbg !979
  %50 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !980
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %50, i64 0, i64 1, !dbg !981
  store i64 %49, i64* %51, align 8, !dbg !982
  %52 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !983
  %53 = call i64 @U8TO32(i8* %52), !dbg !984
  %54 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !985
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %54, i64 0, i64 2, !dbg !986
  store i64 %53, i64* %55, align 8, !dbg !987
  %56 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !988
  %57 = call i64 @U8TO32(i8* %56), !dbg !989
  %58 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !990
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %58, i64 0, i64 3, !dbg !991
  store i64 %57, i64* %59, align 8, !dbg !992
  %60 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !993
  store i64 0, i64* %60, align 8, !dbg !994
  %61 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 5, !dbg !995
  store i8 0, i8* %61, align 8, !dbg !996
  ret void, !dbg !997
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_aead_chacha20poly1305_decrypt_wrapper(i8* %0, i64* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 !dbg !998 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1001, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i64* %1, metadata !1003, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8* %2, metadata !1004, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8* %3, metadata !1005, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8* %4, metadata !1006, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8* %5, metadata !1007, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8* %6, metadata !1008, metadata !DIExpression()), !dbg !1002
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1009
  call void @public_in(%struct.smack_value* %8), !dbg !1010
  %9 = call %struct.smack_value* (i64*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64*, ...)*)(i64* %1), !dbg !1011
  call void @public_in(%struct.smack_value* %9), !dbg !1012
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1013
  call void @public_in(%struct.smack_value* %10), !dbg !1014
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !1015
  call void @public_in(%struct.smack_value* %11), !dbg !1016
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !1017
  call void @public_in(%struct.smack_value* %12), !dbg !1018
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %5), !dbg !1019
  call void @public_in(%struct.smack_value* %13), !dbg !1020
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !1021
  call void @public_in(%struct.smack_value* %14), !dbg !1022
  %15 = call %struct.smack_value* @__SMACK_values(i8* %3, i32 32), !dbg !1023
  call void @public_in(%struct.smack_value* %15), !dbg !1024
  %16 = call %struct.smack_value* @__SMACK_values(i8* %4, i32 32), !dbg !1025
  call void @public_in(%struct.smack_value* %16), !dbg !1026
  %17 = call %struct.smack_value* @__SMACK_values(i8* %5, i32 8), !dbg !1027
  call void @public_in(%struct.smack_value* %17), !dbg !1028
  %18 = bitcast i64* %1 to i8*, !dbg !1029
  %19 = call %struct.smack_value* @__SMACK_values(i8* %18, i32 1), !dbg !1030
  call void @public_in(%struct.smack_value* %19), !dbg !1031
  %20 = call i32 @crypto_aead_chacha20poly1305_decrypt(i8* %0, i64* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i8* %6), !dbg !1032
  ret i32 %20, !dbg !1033
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #3

declare dso_local void @public_in(%struct.smack_value*) #3

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @vfct_tmp(i8* %0, i64* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 !dbg !1034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1037, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64* %1, metadata !1039, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %2, metadata !1040, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %3, metadata !1041, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %4, metadata !1042, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %5, metadata !1043, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %6, metadata !1044, metadata !DIExpression()), !dbg !1038
  %8 = call i32 @crypto_aead_chacha20poly1305_decrypt(i8* %0, i64* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i8* %6), !dbg !1045
  ret void, !dbg !1046
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_aead_chacha20poly1305_decrypt_wrapper_t() #0 !dbg !1047 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8* %1, metadata !1048, metadata !DIExpression()), !dbg !1049
  %8 = call zeroext i8 (...) @gout(), !dbg !1050
  store i8 %8, i8* %1, align 1, !dbg !1049
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1051, metadata !DIExpression()), !dbg !1052
  %9 = call zeroext i8 (...) @gin(), !dbg !1053
  store i8 %9, i8* %2, align 1, !dbg !1052
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1054, metadata !DIExpression()), !dbg !1055
  %10 = call zeroext i8 (...) @gk(), !dbg !1056
  store i8 %10, i8* %3, align 1, !dbg !1055
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1057, metadata !DIExpression()), !dbg !1058
  %11 = call zeroext i8 (...) @gc(), !dbg !1059
  store i8 %11, i8* %4, align 1, !dbg !1058
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1060, metadata !DIExpression()), !dbg !1061
  %12 = call zeroext i8 (...) @gsec(), !dbg !1062
  store i8 %12, i8* %5, align 1, !dbg !1061
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1063, metadata !DIExpression()), !dbg !1064
  %13 = call zeroext i8 (...) @gkk(), !dbg !1065
  store i8 %13, i8* %6, align 1, !dbg !1064
  call void @llvm.dbg.value(metadata i8* %5, metadata !1066, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %1, metadata !1068, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %2, metadata !1069, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %3, metadata !1070, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %4, metadata !1071, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1072, metadata !DIExpression()), !dbg !1073
  %14 = call i64* (...) @gclen(), !dbg !1074
  %15 = ptrtoint i64* %14 to i64, !dbg !1074
  store i64 %15, i64* %7, align 8, !dbg !1073
  call void @llvm.dbg.value(metadata i64* %7, metadata !1075, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %6, metadata !1076, metadata !DIExpression()), !dbg !1067
  call void @vfct_tmp(i8* %2, i64* %7, i8* %5, i8* %1, i8* %3, i8* %4, i8* %6), !dbg !1077
  ret void, !dbg !1078
}

declare dso_local zeroext i8 @gout(...) #3

declare dso_local zeroext i8 @gin(...) #3

declare dso_local zeroext i8 @gk(...) #3

declare dso_local zeroext i8 @gc(...) #3

declare dso_local zeroext i8 @gsec(...) #3

declare dso_local zeroext i8 @gkk(...) #3

declare dso_local i64* @gclen(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_onetimeauth_statebytes() #0 !dbg !1079 {
  ret i64 144, !dbg !1080
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_onetimeauth_bytes() #0 !dbg !1081 {
  ret i64 16, !dbg !1082
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_onetimeauth_keybytes() #0 !dbg !1083 {
  ret i64 32, !dbg !1084
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !1085 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1086, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %1, metadata !1088, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i64 %2, metadata !1089, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %3, metadata !1090, metadata !DIExpression()), !dbg !1087
  %5 = call i32 @crypto_onetimeauth_poly1305(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !1091
  ret i32 %5, !dbg !1092
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_verify(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !1093 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1094, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* %1, metadata !1096, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %2, metadata !1097, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* %3, metadata !1098, metadata !DIExpression()), !dbg !1095
  %5 = call i32 @crypto_onetimeauth_poly1305_verify(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !1099
  ret i32 %5, !dbg !1100
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !1101 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !1107, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %1, metadata !1109, metadata !DIExpression()), !dbg !1108
  %3 = call i32 @crypto_onetimeauth_poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !1110
  ret i32 %3, !dbg !1111
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !1112 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !1115, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %1, metadata !1117, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %2, metadata !1118, metadata !DIExpression()), !dbg !1116
  %4 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2), !dbg !1119
  ret i32 %4, !dbg !1120
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_final(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !1121 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !1124, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8* %1, metadata !1126, metadata !DIExpression()), !dbg !1125
  %3 = call i32 @crypto_onetimeauth_poly1305_final(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !1127
  ret i32 %3, !dbg !1128
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @crypto_onetimeauth_primitive() #0 !dbg !1129 {
  ret i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), !dbg !1130
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_set_implementation(%struct.crypto_onetimeauth_poly1305_implementation* %0) #0 !dbg !1131 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_implementation* %0, metadata !1135, metadata !DIExpression()), !dbg !1136
  store %struct.crypto_onetimeauth_poly1305_implementation* %0, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !1137
  ret i32 0, !dbg !1138
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @crypto_onetimeauth_poly1305_implementation_name() #0 !dbg !1139 {
  %1 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !1140
  %2 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %1, i32 0, i32 0, !dbg !1141
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !1141
  %4 = call i8* %3(), !dbg !1140
  ret i8* %4, !dbg !1142
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !1143 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i8* %1, metadata !1146, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i64 %2, metadata !1147, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i8* %3, metadata !1148, metadata !DIExpression()), !dbg !1145
  %5 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !1149
  %6 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %5, i32 0, i32 1, !dbg !1150
  %7 = load i32 (i8*, i8*, i64, i8*)*, i32 (i8*, i8*, i64, i8*)** %6, align 8, !dbg !1150
  %8 = call i32 %7(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !1149
  ret i32 %8, !dbg !1151
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_verify(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !1152 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1153, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i8* %1, metadata !1155, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i64 %2, metadata !1156, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata i8* %3, metadata !1157, metadata !DIExpression()), !dbg !1154
  %5 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !1158
  %6 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %5, i32 0, i32 2, !dbg !1159
  %7 = load i32 (i8*, i8*, i64, i8*)*, i32 (i8*, i8*, i64, i8*)** %6, align 8, !dbg !1159
  %8 = call i32 %7(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !1158
  ret i32 %8, !dbg !1160
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !1161 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !1162, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8* %1, metadata !1164, metadata !DIExpression()), !dbg !1163
  %3 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !1165
  %4 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %3, i32 0, i32 3, !dbg !1166
  %5 = load i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)*, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)** %4, align 8, !dbg !1166
  %6 = call i32 %5(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !1165
  ret i32 %6, !dbg !1167
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !1168 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i8* %1, metadata !1171, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i64 %2, metadata !1172, metadata !DIExpression()), !dbg !1170
  %4 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !1173
  %5 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %4, i32 0, i32 4, !dbg !1174
  %6 = load i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*, i64)*, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*, i64)** %5, align 8, !dbg !1174
  %7 = call i32 %6(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2), !dbg !1173
  ret i32 %7, !dbg !1175
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_final(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !1176 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %1, metadata !1179, metadata !DIExpression()), !dbg !1178
  %3 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !1180
  %4 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %3, i32 0, i32 5, !dbg !1181
  %5 = load i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)*, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)** %4, align 8, !dbg !1181
  %6 = call i32 %5(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !1180
  ret i32 %6, !dbg !1182
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !1183 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !1187, metadata !DIExpression()), !dbg !1188
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1189
  ret i32 0, !dbg !1190
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !1191 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1192
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !1193
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !1193
  %4 = call i8* %3(), !dbg !1192
  ret i8* %4, !dbg !1194
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !1195 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1196
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !1197
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !1197
  %4 = call i32 %3(), !dbg !1196
  ret i32 %4, !dbg !1198
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !1199 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1200
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !1202
  br i1 %2, label %3, label %12, !dbg !1203

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1204
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !1205
  %6 = load void ()*, void ()** %5, align 8, !dbg !1205
  %7 = icmp ne void ()* %6, null, !dbg !1206
  br i1 %7, label %8, label %12, !dbg !1207

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1208
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !1210
  %11 = load void ()*, void ()** %10, align 8, !dbg !1210
  call void %11(), !dbg !1208
  br label %12, !dbg !1211

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !1212
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !1213 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1214, metadata !DIExpression()), !dbg !1215
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1216
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !1218
  br i1 %3, label %4, label %14, !dbg !1219

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1220
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !1221
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !1221
  %8 = icmp ne i32 (i32)* %7, null, !dbg !1222
  br i1 %8, label %9, label %14, !dbg !1223

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1224
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !1226
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !1226
  %13 = call i32 %12(i32 %0), !dbg !1224
  br label %26, !dbg !1227

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !1228
  br i1 %15, label %16, label %17, !dbg !1230

16:                                               ; preds = %14
  br label %26, !dbg !1231

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !1233
  %19 = urem i32 %18, %0, !dbg !1234
  call void @llvm.dbg.value(metadata i32 %19, metadata !1235, metadata !DIExpression()), !dbg !1215
  br label %20, !dbg !1236

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !1237
  call void @llvm.dbg.value(metadata i32 %21, metadata !1239, metadata !DIExpression()), !dbg !1215
  br label %22, !dbg !1240

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !1241
  br i1 %23, label %20, label %24, !dbg !1240, !llvm.loop !1242

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !1244
  br label %26, !dbg !1245

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !1215
  ret i32 %.0, !dbg !1246
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !1247 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1248, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %1, metadata !1250, metadata !DIExpression()), !dbg !1249
  %3 = icmp ugt i64 %1, 0, !dbg !1251
  br i1 %3, label %4, label %8, !dbg !1253

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1254
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !1256
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !1256
  call void %7(i8* %0, i64 %1), !dbg !1254
  br label %8, !dbg !1257

8:                                                ; preds = %4, %2
  ret void, !dbg !1258
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !1259 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1260
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !1262
  br i1 %2, label %3, label %13, !dbg !1263

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1264
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !1265
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !1265
  %7 = icmp ne i32 ()* %6, null, !dbg !1266
  br i1 %7, label %8, label %13, !dbg !1267

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !1268
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !1270
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !1270
  %12 = call i32 %11(), !dbg !1268
  br label %14, !dbg !1271

13:                                               ; preds = %3, %0
  br label %14, !dbg !1272

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !1273
  ret i32 %.0, !dbg !1274
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !1275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1280, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i64 %1, metadata !1282, metadata !DIExpression()), !dbg !1281
  %3 = icmp ule i64 %1, -1, !dbg !1283
  br i1 %3, label %4, label %5, !dbg !1286

4:                                                ; preds = %2
  br label %6, !dbg !1286

5:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1.14, i64 0, i64 0), i32 142, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0)) #8, !dbg !1283
  unreachable, !dbg !1283

6:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !1287
  ret void, !dbg !1288
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !1289 {
  ret i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), !dbg !1290
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !1291 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1292, metadata !DIExpression()), !dbg !1293
  %2 = bitcast i32* %1 to i8*, !dbg !1294
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !1295
  %3 = load i32, i32* %1, align 4, !dbg !1296
  ret i32 %3, !dbg !1297
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !1298 {
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !1299
  %2 = icmp eq i32 %1, 0, !dbg !1301
  br i1 %2, label %3, label %4, !dbg !1302

3:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !1303
  store i32 1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !1305
  br label %4, !dbg !1306

4:                                                ; preds = %3, %0
  ret void, !dbg !1307
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !1308 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1309, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %1, metadata !1311, metadata !DIExpression()), !dbg !1310
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !1312
  %3 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !1313
  %4 = icmp ne i32 %3, 0, !dbg !1315
  br i1 %4, label %5, label %10, !dbg !1316

5:                                                ; preds = %2
  %6 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !1317
  %7 = icmp ne i32 %6, 0, !dbg !1320
  br i1 %7, label %8, label %9, !dbg !1321

8:                                                ; preds = %5
  call void @abort() #8, !dbg !1322
  unreachable, !dbg !1322

9:                                                ; preds = %5
  br label %18, !dbg !1324

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !1325
  %12 = icmp eq i32 %11, -1, !dbg !1327
  br i1 %12, label %17, label %13, !dbg !1328

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !1329
  %15 = call i64 @safe_read(i32 %14, i8* %0, i64 %1), !dbg !1330
  %16 = icmp ne i64 %15, %1, !dbg !1331
  br i1 %16, label %17, label %18, !dbg !1332

17:                                               ; preds = %13, %10
  call void @abort() #8, !dbg !1333
  unreachable, !dbg !1333

18:                                               ; preds = %13, %9
  ret void, !dbg !1335
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !1336 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !1337, metadata !DIExpression()), !dbg !1338
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !1339
  %2 = icmp ne i32 %1, -1, !dbg !1341
  br i1 %2, label %3, label %8, !dbg !1342

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !1343
  %5 = call i32 @close(i32 %4), !dbg !1344
  %6 = icmp eq i32 %5, 0, !dbg !1345
  br i1 %6, label %7, label %8, !dbg !1346

7:                                                ; preds = %3
  store i32 -1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !1347
  store i32 0, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !1349
  call void @llvm.dbg.value(metadata i32 0, metadata !1337, metadata !DIExpression()), !dbg !1338
  br label %8, !dbg !1350

8:                                                ; preds = %7, %3, %0
  %.0 = phi i32 [ 0, %7 ], [ -1, %3 ], [ -1, %0 ], !dbg !1338
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1337, metadata !DIExpression()), !dbg !1338
  %9 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !1351
  %10 = icmp ne i32 %9, 0, !dbg !1353
  br i1 %10, label %11, label %12, !dbg !1354

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 0, metadata !1337, metadata !DIExpression()), !dbg !1338
  br label %12, !dbg !1355

12:                                               ; preds = %11, %8
  %.1 = phi i32 [ 0, %11 ], [ %.0, %8 ], !dbg !1338
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1337, metadata !DIExpression()), !dbg !1338
  ret i32 %.1, !dbg !1357
}

declare dso_local i32 @close(i32) #3

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !1358 {
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !1359
  %2 = icmp eq i32 %1, 0, !dbg !1361
  br i1 %2, label %3, label %4, !dbg !1362

3:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !1363
  br label %4, !dbg !1365

4:                                                ; preds = %3, %0
  ret void, !dbg !1366
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !1367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1370, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %1, metadata !1372, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8* %0, metadata !1373, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 256, metadata !1374, metadata !DIExpression()), !dbg !1371
  br label %3, !dbg !1375

3:                                                ; preds = %17, %2
  %.03 = phi i8* [ %0, %2 ], [ %16, %17 ], !dbg !1371
  %.02 = phi i64 [ %1, %2 ], [ %15, %17 ]
  %.01 = phi i64 [ 256, %2 ], [ %.1, %17 ], !dbg !1371
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1374, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1372, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1373, metadata !DIExpression()), !dbg !1371
  %4 = icmp ult i64 %.02, %.01, !dbg !1376
  br i1 %4, label %5, label %10, !dbg !1379

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1374, metadata !DIExpression()), !dbg !1371
  %6 = icmp ugt i64 %.02, 0, !dbg !1380
  br i1 %6, label %7, label %8, !dbg !1384

7:                                                ; preds = %5
  br label %9, !dbg !1384

8:                                                ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0)) #8, !dbg !1380
  unreachable, !dbg !1380

9:                                                ; preds = %7
  br label %10, !dbg !1385

10:                                               ; preds = %9, %3
  %.1 = phi i64 [ %.02, %9 ], [ %.01, %3 ], !dbg !1371
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1374, metadata !DIExpression()), !dbg !1371
  %11 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !1386
  %12 = icmp ne i32 %11, 0, !dbg !1388
  br i1 %12, label %13, label %14, !dbg !1389

13:                                               ; preds = %10
  br label %20, !dbg !1390

14:                                               ; preds = %10
  %15 = sub i64 %.02, %.1, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %15, metadata !1372, metadata !DIExpression()), !dbg !1371
  %16 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %16, metadata !1373, metadata !DIExpression()), !dbg !1371
  br label %17, !dbg !1394

17:                                               ; preds = %14
  %18 = icmp ugt i64 %15, 0, !dbg !1395
  br i1 %18, label %3, label %19, !dbg !1394, !llvm.loop !1396

19:                                               ; preds = %17
  br label %20, !dbg !1398

20:                                               ; preds = %19, %13
  %.0 = phi i32 [ -1, %13 ], [ 0, %19 ], !dbg !1371
  ret i32 %.0, !dbg !1399
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !1400 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1404, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8* %1, metadata !1406, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %2, metadata !1407, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i8* %1, metadata !1408, metadata !DIExpression()), !dbg !1405
  %4 = icmp ugt i64 %2, 0, !dbg !1409
  br i1 %4, label %5, label %6, !dbg !1412

5:                                                ; preds = %3
  br label %7, !dbg !1412

6:                                                ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0)) #8, !dbg !1409
  unreachable, !dbg !1409

7:                                                ; preds = %5
  br label %8, !dbg !1413

8:                                                ; preds = %34, %7
  %.02 = phi i64 [ %2, %7 ], [ %32, %34 ]
  %.01 = phi i8* [ %1, %7 ], [ %33, %34 ], !dbg !1405
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1408, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1407, metadata !DIExpression()), !dbg !1405
  br label %9, !dbg !1414

9:                                                ; preds = %24, %8
  %10 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %10, metadata !1417, metadata !DIExpression()), !dbg !1405
  %11 = icmp slt i64 %10, 0, !dbg !1418
  br i1 %11, label %12, label %22, !dbg !1419

12:                                               ; preds = %9
  %13 = call i32* @__errno_location() #9, !dbg !1420
  %14 = load i32, i32* %13, align 4, !dbg !1420
  %15 = icmp eq i32 %14, 4, !dbg !1421
  br i1 %15, label %20, label %16, !dbg !1422

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #9, !dbg !1423
  %18 = load i32, i32* %17, align 4, !dbg !1423
  %19 = icmp eq i32 %18, 11, !dbg !1424
  br label %20, !dbg !1422

20:                                               ; preds = %16, %12
  %21 = phi i1 [ true, %12 ], [ %19, %16 ]
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi i1 [ false, %9 ], [ %21, %20 ], !dbg !1425
  br i1 %23, label %24, label %25, !dbg !1414

24:                                               ; preds = %22
  br label %9, !dbg !1414, !llvm.loop !1426

25:                                               ; preds = %22
  %26 = icmp slt i64 %10, 0, !dbg !1428
  br i1 %26, label %27, label %28, !dbg !1430

27:                                               ; preds = %25
  br label %40, !dbg !1431

28:                                               ; preds = %25
  %29 = icmp eq i64 %10, 0, !dbg !1433
  br i1 %29, label %30, label %31, !dbg !1435

30:                                               ; preds = %28
  br label %36, !dbg !1436

31:                                               ; preds = %28
  %32 = sub i64 %.02, %10, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %32, metadata !1407, metadata !DIExpression()), !dbg !1405
  %33 = getelementptr inbounds i8, i8* %.01, i64 %10, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %33, metadata !1408, metadata !DIExpression()), !dbg !1405
  br label %34, !dbg !1440

34:                                               ; preds = %31
  %35 = icmp ugt i64 %32, 0, !dbg !1441
  br i1 %35, label %8, label %36, !dbg !1440, !llvm.loop !1442

36:                                               ; preds = %34, %30
  %.1 = phi i8* [ %.01, %30 ], [ %33, %34 ], !dbg !1405
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1408, metadata !DIExpression()), !dbg !1405
  %37 = ptrtoint i8* %.1 to i64, !dbg !1444
  %38 = ptrtoint i8* %1 to i64, !dbg !1444
  %39 = sub i64 %37, %38, !dbg !1444
  br label %40, !dbg !1445

40:                                               ; preds = %36, %27
  %.0 = phi i64 [ %10, %27 ], [ %39, %36 ], !dbg !1405
  ret i64 %.0, !dbg !1446
}

declare dso_local i64 @read(i32, i8*, i64) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !1447 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1450, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i64 %1, metadata !1452, metadata !DIExpression()), !dbg !1451
  %3 = icmp ule i64 %1, 256, !dbg !1453
  br i1 %3, label %4, label %5, !dbg !1456

4:                                                ; preds = %2
  br label %6, !dbg !1456

5:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 142, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0)) #8, !dbg !1453
  unreachable, !dbg !1453

6:                                                ; preds = %4
  br label %7, !dbg !1457

7:                                                ; preds = %23, %6
  %8 = trunc i64 %1 to i32, !dbg !1458
  %9 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %8, i32 0) #10, !dbg !1460
  %10 = trunc i64 %9 to i32, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %10, metadata !1461, metadata !DIExpression()), !dbg !1451
  br label %11, !dbg !1462

11:                                               ; preds = %7
  %12 = icmp slt i32 %10, 0, !dbg !1463
  br i1 %12, label %13, label %23, !dbg !1464

13:                                               ; preds = %11
  %14 = call i32* @__errno_location() #9, !dbg !1465
  %15 = load i32, i32* %14, align 4, !dbg !1465
  %16 = icmp eq i32 %15, 4, !dbg !1466
  br i1 %16, label %21, label %17, !dbg !1467

17:                                               ; preds = %13
  %18 = call i32* @__errno_location() #9, !dbg !1468
  %19 = load i32, i32* %18, align 4, !dbg !1468
  %20 = icmp eq i32 %19, 11, !dbg !1469
  br label %21, !dbg !1467

21:                                               ; preds = %17, %13
  %22 = phi i1 [ true, %13 ], [ %20, %17 ]
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i1 [ false, %11 ], [ %22, %21 ], !dbg !1451
  br i1 %24, label %7, label %25, !dbg !1462, !llvm.loop !1470

25:                                               ; preds = %23
  %26 = trunc i64 %1 to i32, !dbg !1472
  %27 = icmp eq i32 %10, %26, !dbg !1473
  %28 = zext i1 %27 to i32, !dbg !1473
  %29 = sub nsw i32 %28, 1, !dbg !1474
  ret i32 %29, !dbg !1475
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #6

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !1476 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32* @__errno_location() #9, !dbg !1477
  %3 = load i32, i32* %2, align 4, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %3, metadata !1478, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !1480, metadata !DIExpression()), !dbg !1482
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !1483
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !1485
  %6 = icmp eq i32 %5, 0, !dbg !1486
  br i1 %6, label %7, label %9, !dbg !1487

7:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !1488
  %8 = call i32* @__errno_location() #9, !dbg !1490
  store i32 %3, i32* %8, align 4, !dbg !1491
  br label %15, !dbg !1492

9:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !1493
  %10 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !1494
  store i32 %10, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !1496
  %11 = icmp eq i32 %10, -1, !dbg !1497
  br i1 %11, label %12, label %13, !dbg !1498

12:                                               ; preds = %9
  call void @abort() #8, !dbg !1499
  unreachable, !dbg !1499

13:                                               ; preds = %9
  %14 = call i32* @__errno_location() #9, !dbg !1501
  store i32 %3, i32* %14, align 4, !dbg !1502
  br label %15, !dbg !1503

15:                                               ; preds = %13, %7
  ret void, !dbg !1503
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !171 {
  %1 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !1504, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !1541, metadata !DIExpression()), !dbg !1543
  br label %2, !dbg !1544

2:                                                ; preds = %28, %0
  %.01 = phi i8** [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), %0 ], [ %.1, %28 ], !dbg !1543
  call void @llvm.dbg.value(metadata i8** %.01, metadata !1541, metadata !DIExpression()), !dbg !1543
  %3 = load i8*, i8** %.01, align 8, !dbg !1545
  %4 = call i32 (i8*, i32, ...) @open(i8* %3, i32 0), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %4, metadata !1548, metadata !DIExpression()), !dbg !1543
  %5 = icmp ne i32 %4, -1, !dbg !1549
  br i1 %5, label %6, label %20, !dbg !1551

6:                                                ; preds = %2
  %7 = call i32 @fstat(i32 %4, %struct.stat* %1) #10, !dbg !1552
  %8 = icmp eq i32 %7, 0, !dbg !1555
  br i1 %8, label %9, label %18, !dbg !1556

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !1557
  %11 = load i32, i32* %10, align 8, !dbg !1557
  %12 = and i32 %11, 61440, !dbg !1557
  %13 = icmp eq i32 %12, 8192, !dbg !1557
  br i1 %13, label %14, label %18, !dbg !1558

14:                                               ; preds = %9
  %15 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 1), !dbg !1559
  %16 = or i32 %15, 1, !dbg !1561
  %17 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 2, i32 %16), !dbg !1562
  br label %33, !dbg !1563

18:                                               ; preds = %9, %6
  %19 = call i32 @close(i32 %4), !dbg !1564
  br label %26, !dbg !1565

20:                                               ; preds = %2
  %21 = call i32* @__errno_location() #9, !dbg !1566
  %22 = load i32, i32* %21, align 4, !dbg !1566
  %23 = icmp eq i32 %22, 4, !dbg !1568
  br i1 %23, label %24, label %25, !dbg !1569

24:                                               ; preds = %20
  br label %28, !dbg !1570

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %18
  %27 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !1572
  call void @llvm.dbg.value(metadata i8** %27, metadata !1541, metadata !DIExpression()), !dbg !1543
  br label %28, !dbg !1573

28:                                               ; preds = %26, %24
  %.1 = phi i8** [ %27, %26 ], [ %.01, %24 ], !dbg !1543
  call void @llvm.dbg.value(metadata i8** %.1, metadata !1541, metadata !DIExpression()), !dbg !1543
  %29 = load i8*, i8** %.1, align 8, !dbg !1574
  %30 = icmp ne i8* %29, null, !dbg !1575
  br i1 %30, label %2, label %31, !dbg !1573, !llvm.loop !1576

31:                                               ; preds = %28
  %32 = call i32* @__errno_location() #9, !dbg !1578
  store i32 5, i32* %32, align 4, !dbg !1579
  br label %33, !dbg !1580

33:                                               ; preds = %31, %14
  %.0 = phi i32 [ %4, %14 ], [ -1, %31 ], !dbg !1543
  ret i32 %.0, !dbg !1581
}

declare dso_local i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #6

declare dso_local i32 @fcntl(i32, i32, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_stream_chacha20_keybytes() #0 !dbg !1582 {
  ret i64 32, !dbg !1583
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_stream_chacha20_noncebytes() #0 !dbg !1584 {
  ret i64 8, !dbg !1585
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20(i8* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !1586 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1589, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %1, metadata !1591, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8* %2, metadata !1592, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8* %3, metadata !1593, metadata !DIExpression()), !dbg !1590
  %5 = call i32 @crypto_stream_chacha20_ref(i8* %0, i64 %1, i8* %2, i8* %3), !dbg !1594
  ret i32 %5, !dbg !1595
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 !dbg !1596 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1601, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %1, metadata !1603, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %2, metadata !1604, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %3, metadata !1605, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 %4, metadata !1606, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %5, metadata !1607, metadata !DIExpression()), !dbg !1602
  %7 = call i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5), !dbg !1608
  ret i32 %7, !dbg !1609
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_xor(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 !dbg !1610 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1613, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8* %1, metadata !1615, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %2, metadata !1616, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8* %3, metadata !1617, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8* %4, metadata !1618, metadata !DIExpression()), !dbg !1614
  %6 = call i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 0, i8* %4), !dbg !1619
  ret i32 %6, !dbg !1620
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_ref(i8* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !1621 {
  %5 = alloca %struct.chacha_ctx, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1622, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i64 %1, metadata !1624, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8* %2, metadata !1625, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8* %3, metadata !1626, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.declare(metadata %struct.chacha_ctx* %5, metadata !1627, metadata !DIExpression()), !dbg !1632
  %6 = icmp ne i64 %1, 0, !dbg !1633
  br i1 %6, label %8, label %7, !dbg !1635

7:                                                ; preds = %4
  br label %10, !dbg !1636

8:                                                ; preds = %4
  call void @chacha_keysetup(%struct.chacha_ctx* %5, i8* %3), !dbg !1638
  call void @chacha_ivsetup(%struct.chacha_ctx* %5, i8* %2, i8* null), !dbg !1639
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !1640
  call void @chacha_encrypt_bytes(%struct.chacha_ctx* %5, i8* %0, i8* %0, i64 %1), !dbg !1641
  %9 = bitcast %struct.chacha_ctx* %5 to i8*, !dbg !1642
  call void @sodium_memzero(i8* %9, i64 64), !dbg !1643
  br label %10, !dbg !1644

10:                                               ; preds = %8, %7
  ret i32 0, !dbg !1645
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_keysetup(%struct.chacha_ctx* %0, i8* %1) #0 !dbg !1646 {
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %1, metadata !1655, metadata !DIExpression()), !dbg !1654
  %3 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1656
  %4 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !1656
  %5 = load i8, i8* %4, align 1, !dbg !1656
  %6 = zext i8 %5 to i32, !dbg !1656
  %7 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1656
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1656
  %9 = load i8, i8* %8, align 1, !dbg !1656
  %10 = zext i8 %9 to i32, !dbg !1656
  %11 = shl i32 %10, 8, !dbg !1656
  %12 = or i32 %6, %11, !dbg !1656
  %13 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1656
  %14 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !1656
  %15 = load i8, i8* %14, align 1, !dbg !1656
  %16 = zext i8 %15 to i32, !dbg !1656
  %17 = shl i32 %16, 16, !dbg !1656
  %18 = or i32 %12, %17, !dbg !1656
  %19 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1656
  %20 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !1656
  %21 = load i8, i8* %20, align 1, !dbg !1656
  %22 = zext i8 %21 to i32, !dbg !1656
  %23 = shl i32 %22, 24, !dbg !1656
  %24 = or i32 %18, %23, !dbg !1656
  %25 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1657
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 4, !dbg !1658
  store i32 %24, i32* %26, align 4, !dbg !1659
  %27 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1660
  %28 = getelementptr inbounds i8, i8* %27, i64 0, !dbg !1660
  %29 = load i8, i8* %28, align 1, !dbg !1660
  %30 = zext i8 %29 to i32, !dbg !1660
  %31 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1660
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1660
  %33 = load i8, i8* %32, align 1, !dbg !1660
  %34 = zext i8 %33 to i32, !dbg !1660
  %35 = shl i32 %34, 8, !dbg !1660
  %36 = or i32 %30, %35, !dbg !1660
  %37 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1660
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !1660
  %39 = load i8, i8* %38, align 1, !dbg !1660
  %40 = zext i8 %39 to i32, !dbg !1660
  %41 = shl i32 %40, 16, !dbg !1660
  %42 = or i32 %36, %41, !dbg !1660
  %43 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1660
  %44 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !1660
  %45 = load i8, i8* %44, align 1, !dbg !1660
  %46 = zext i8 %45 to i32, !dbg !1660
  %47 = shl i32 %46, 24, !dbg !1660
  %48 = or i32 %42, %47, !dbg !1660
  %49 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1661
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %49, i64 0, i64 5, !dbg !1662
  store i32 %48, i32* %50, align 4, !dbg !1663
  %51 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1664
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !1664
  %53 = load i8, i8* %52, align 1, !dbg !1664
  %54 = zext i8 %53 to i32, !dbg !1664
  %55 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1664
  %56 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1664
  %57 = load i8, i8* %56, align 1, !dbg !1664
  %58 = zext i8 %57 to i32, !dbg !1664
  %59 = shl i32 %58, 8, !dbg !1664
  %60 = or i32 %54, %59, !dbg !1664
  %61 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1664
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !1664
  %63 = load i8, i8* %62, align 1, !dbg !1664
  %64 = zext i8 %63 to i32, !dbg !1664
  %65 = shl i32 %64, 16, !dbg !1664
  %66 = or i32 %60, %65, !dbg !1664
  %67 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1664
  %68 = getelementptr inbounds i8, i8* %67, i64 3, !dbg !1664
  %69 = load i8, i8* %68, align 1, !dbg !1664
  %70 = zext i8 %69 to i32, !dbg !1664
  %71 = shl i32 %70, 24, !dbg !1664
  %72 = or i32 %66, %71, !dbg !1664
  %73 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1665
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %73, i64 0, i64 6, !dbg !1666
  store i32 %72, i32* %74, align 4, !dbg !1667
  %75 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1668
  %76 = getelementptr inbounds i8, i8* %75, i64 0, !dbg !1668
  %77 = load i8, i8* %76, align 1, !dbg !1668
  %78 = zext i8 %77 to i32, !dbg !1668
  %79 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1668
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !1668
  %81 = load i8, i8* %80, align 1, !dbg !1668
  %82 = zext i8 %81 to i32, !dbg !1668
  %83 = shl i32 %82, 8, !dbg !1668
  %84 = or i32 %78, %83, !dbg !1668
  %85 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1668
  %86 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !1668
  %87 = load i8, i8* %86, align 1, !dbg !1668
  %88 = zext i8 %87 to i32, !dbg !1668
  %89 = shl i32 %88, 16, !dbg !1668
  %90 = or i32 %84, %89, !dbg !1668
  %91 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1668
  %92 = getelementptr inbounds i8, i8* %91, i64 3, !dbg !1668
  %93 = load i8, i8* %92, align 1, !dbg !1668
  %94 = zext i8 %93 to i32, !dbg !1668
  %95 = shl i32 %94, 24, !dbg !1668
  %96 = or i32 %90, %95, !dbg !1668
  %97 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1669
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %97, i64 0, i64 7, !dbg !1670
  store i32 %96, i32* %98, align 4, !dbg !1671
  %99 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1672
  call void @llvm.dbg.value(metadata i8* %99, metadata !1655, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), metadata !1673, metadata !DIExpression()), !dbg !1654
  %100 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !1674
  %101 = getelementptr inbounds i8, i8* %100, i64 0, !dbg !1674
  %102 = load i8, i8* %101, align 1, !dbg !1674
  %103 = zext i8 %102 to i32, !dbg !1674
  %104 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !1674
  %105 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !1674
  %106 = load i8, i8* %105, align 1, !dbg !1674
  %107 = zext i8 %106 to i32, !dbg !1674
  %108 = shl i32 %107, 8, !dbg !1674
  %109 = or i32 %103, %108, !dbg !1674
  %110 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !1674
  %111 = getelementptr inbounds i8, i8* %110, i64 2, !dbg !1674
  %112 = load i8, i8* %111, align 1, !dbg !1674
  %113 = zext i8 %112 to i32, !dbg !1674
  %114 = shl i32 %113, 16, !dbg !1674
  %115 = or i32 %109, %114, !dbg !1674
  %116 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !1674
  %117 = getelementptr inbounds i8, i8* %116, i64 3, !dbg !1674
  %118 = load i8, i8* %117, align 1, !dbg !1674
  %119 = zext i8 %118 to i32, !dbg !1674
  %120 = shl i32 %119, 24, !dbg !1674
  %121 = or i32 %115, %120, !dbg !1674
  %122 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1675
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %122, i64 0, i64 8, !dbg !1676
  store i32 %121, i32* %123, align 4, !dbg !1677
  %124 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !1678
  %125 = getelementptr inbounds i8, i8* %124, i64 0, !dbg !1678
  %126 = load i8, i8* %125, align 1, !dbg !1678
  %127 = zext i8 %126 to i32, !dbg !1678
  %128 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !1678
  %129 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !1678
  %130 = load i8, i8* %129, align 1, !dbg !1678
  %131 = zext i8 %130 to i32, !dbg !1678
  %132 = shl i32 %131, 8, !dbg !1678
  %133 = or i32 %127, %132, !dbg !1678
  %134 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !1678
  %135 = getelementptr inbounds i8, i8* %134, i64 2, !dbg !1678
  %136 = load i8, i8* %135, align 1, !dbg !1678
  %137 = zext i8 %136 to i32, !dbg !1678
  %138 = shl i32 %137, 16, !dbg !1678
  %139 = or i32 %133, %138, !dbg !1678
  %140 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !1678
  %141 = getelementptr inbounds i8, i8* %140, i64 3, !dbg !1678
  %142 = load i8, i8* %141, align 1, !dbg !1678
  %143 = zext i8 %142 to i32, !dbg !1678
  %144 = shl i32 %143, 24, !dbg !1678
  %145 = or i32 %139, %144, !dbg !1678
  %146 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1679
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %146, i64 0, i64 9, !dbg !1680
  store i32 %145, i32* %147, align 4, !dbg !1681
  %148 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !1682
  %149 = getelementptr inbounds i8, i8* %148, i64 0, !dbg !1682
  %150 = load i8, i8* %149, align 1, !dbg !1682
  %151 = zext i8 %150 to i32, !dbg !1682
  %152 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !1682
  %153 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !1682
  %154 = load i8, i8* %153, align 1, !dbg !1682
  %155 = zext i8 %154 to i32, !dbg !1682
  %156 = shl i32 %155, 8, !dbg !1682
  %157 = or i32 %151, %156, !dbg !1682
  %158 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !1682
  %159 = getelementptr inbounds i8, i8* %158, i64 2, !dbg !1682
  %160 = load i8, i8* %159, align 1, !dbg !1682
  %161 = zext i8 %160 to i32, !dbg !1682
  %162 = shl i32 %161, 16, !dbg !1682
  %163 = or i32 %157, %162, !dbg !1682
  %164 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !1682
  %165 = getelementptr inbounds i8, i8* %164, i64 3, !dbg !1682
  %166 = load i8, i8* %165, align 1, !dbg !1682
  %167 = zext i8 %166 to i32, !dbg !1682
  %168 = shl i32 %167, 24, !dbg !1682
  %169 = or i32 %163, %168, !dbg !1682
  %170 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1683
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %170, i64 0, i64 10, !dbg !1684
  store i32 %169, i32* %171, align 4, !dbg !1685
  %172 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !1686
  %173 = getelementptr inbounds i8, i8* %172, i64 0, !dbg !1686
  %174 = load i8, i8* %173, align 1, !dbg !1686
  %175 = zext i8 %174 to i32, !dbg !1686
  %176 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !1686
  %177 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !1686
  %178 = load i8, i8* %177, align 1, !dbg !1686
  %179 = zext i8 %178 to i32, !dbg !1686
  %180 = shl i32 %179, 8, !dbg !1686
  %181 = or i32 %175, %180, !dbg !1686
  %182 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !1686
  %183 = getelementptr inbounds i8, i8* %182, i64 2, !dbg !1686
  %184 = load i8, i8* %183, align 1, !dbg !1686
  %185 = zext i8 %184 to i32, !dbg !1686
  %186 = shl i32 %185, 16, !dbg !1686
  %187 = or i32 %181, %186, !dbg !1686
  %188 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !1686
  %189 = getelementptr inbounds i8, i8* %188, i64 3, !dbg !1686
  %190 = load i8, i8* %189, align 1, !dbg !1686
  %191 = zext i8 %190 to i32, !dbg !1686
  %192 = shl i32 %191, 24, !dbg !1686
  %193 = or i32 %187, %192, !dbg !1686
  %194 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1687
  %195 = getelementptr inbounds [16 x i32], [16 x i32]* %194, i64 0, i64 11, !dbg !1688
  store i32 %193, i32* %195, align 4, !dbg !1689
  %196 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 0, !dbg !1690
  %197 = getelementptr inbounds i8, i8* %196, i64 0, !dbg !1690
  %198 = load i8, i8* %197, align 1, !dbg !1690
  %199 = zext i8 %198 to i32, !dbg !1690
  %200 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 0, !dbg !1690
  %201 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !1690
  %202 = load i8, i8* %201, align 1, !dbg !1690
  %203 = zext i8 %202 to i32, !dbg !1690
  %204 = shl i32 %203, 8, !dbg !1690
  %205 = or i32 %199, %204, !dbg !1690
  %206 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 0, !dbg !1690
  %207 = getelementptr inbounds i8, i8* %206, i64 2, !dbg !1690
  %208 = load i8, i8* %207, align 1, !dbg !1690
  %209 = zext i8 %208 to i32, !dbg !1690
  %210 = shl i32 %209, 16, !dbg !1690
  %211 = or i32 %205, %210, !dbg !1690
  %212 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 0, !dbg !1690
  %213 = getelementptr inbounds i8, i8* %212, i64 3, !dbg !1690
  %214 = load i8, i8* %213, align 1, !dbg !1690
  %215 = zext i8 %214 to i32, !dbg !1690
  %216 = shl i32 %215, 24, !dbg !1690
  %217 = or i32 %211, %216, !dbg !1690
  %218 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1691
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %218, i64 0, i64 0, !dbg !1692
  store i32 %217, i32* %219, align 4, !dbg !1693
  %220 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 4, !dbg !1694
  %221 = getelementptr inbounds i8, i8* %220, i64 0, !dbg !1694
  %222 = load i8, i8* %221, align 1, !dbg !1694
  %223 = zext i8 %222 to i32, !dbg !1694
  %224 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 4, !dbg !1694
  %225 = getelementptr inbounds i8, i8* %224, i64 1, !dbg !1694
  %226 = load i8, i8* %225, align 1, !dbg !1694
  %227 = zext i8 %226 to i32, !dbg !1694
  %228 = shl i32 %227, 8, !dbg !1694
  %229 = or i32 %223, %228, !dbg !1694
  %230 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 4, !dbg !1694
  %231 = getelementptr inbounds i8, i8* %230, i64 2, !dbg !1694
  %232 = load i8, i8* %231, align 1, !dbg !1694
  %233 = zext i8 %232 to i32, !dbg !1694
  %234 = shl i32 %233, 16, !dbg !1694
  %235 = or i32 %229, %234, !dbg !1694
  %236 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 4, !dbg !1694
  %237 = getelementptr inbounds i8, i8* %236, i64 3, !dbg !1694
  %238 = load i8, i8* %237, align 1, !dbg !1694
  %239 = zext i8 %238 to i32, !dbg !1694
  %240 = shl i32 %239, 24, !dbg !1694
  %241 = or i32 %235, %240, !dbg !1694
  %242 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1695
  %243 = getelementptr inbounds [16 x i32], [16 x i32]* %242, i64 0, i64 1, !dbg !1696
  store i32 %241, i32* %243, align 4, !dbg !1697
  %244 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 8, !dbg !1698
  %245 = getelementptr inbounds i8, i8* %244, i64 0, !dbg !1698
  %246 = load i8, i8* %245, align 1, !dbg !1698
  %247 = zext i8 %246 to i32, !dbg !1698
  %248 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 8, !dbg !1698
  %249 = getelementptr inbounds i8, i8* %248, i64 1, !dbg !1698
  %250 = load i8, i8* %249, align 1, !dbg !1698
  %251 = zext i8 %250 to i32, !dbg !1698
  %252 = shl i32 %251, 8, !dbg !1698
  %253 = or i32 %247, %252, !dbg !1698
  %254 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 8, !dbg !1698
  %255 = getelementptr inbounds i8, i8* %254, i64 2, !dbg !1698
  %256 = load i8, i8* %255, align 1, !dbg !1698
  %257 = zext i8 %256 to i32, !dbg !1698
  %258 = shl i32 %257, 16, !dbg !1698
  %259 = or i32 %253, %258, !dbg !1698
  %260 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 8, !dbg !1698
  %261 = getelementptr inbounds i8, i8* %260, i64 3, !dbg !1698
  %262 = load i8, i8* %261, align 1, !dbg !1698
  %263 = zext i8 %262 to i32, !dbg !1698
  %264 = shl i32 %263, 24, !dbg !1698
  %265 = or i32 %259, %264, !dbg !1698
  %266 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1699
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %266, i64 0, i64 2, !dbg !1700
  store i32 %265, i32* %267, align 4, !dbg !1701
  %268 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 12, !dbg !1702
  %269 = getelementptr inbounds i8, i8* %268, i64 0, !dbg !1702
  %270 = load i8, i8* %269, align 1, !dbg !1702
  %271 = zext i8 %270 to i32, !dbg !1702
  %272 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 12, !dbg !1702
  %273 = getelementptr inbounds i8, i8* %272, i64 1, !dbg !1702
  %274 = load i8, i8* %273, align 1, !dbg !1702
  %275 = zext i8 %274 to i32, !dbg !1702
  %276 = shl i32 %275, 8, !dbg !1702
  %277 = or i32 %271, %276, !dbg !1702
  %278 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 12, !dbg !1702
  %279 = getelementptr inbounds i8, i8* %278, i64 2, !dbg !1702
  %280 = load i8, i8* %279, align 1, !dbg !1702
  %281 = zext i8 %280 to i32, !dbg !1702
  %282 = shl i32 %281, 16, !dbg !1702
  %283 = or i32 %277, %282, !dbg !1702
  %284 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), i64 12, !dbg !1702
  %285 = getelementptr inbounds i8, i8* %284, i64 3, !dbg !1702
  %286 = load i8, i8* %285, align 1, !dbg !1702
  %287 = zext i8 %286 to i32, !dbg !1702
  %288 = shl i32 %287, 24, !dbg !1702
  %289 = or i32 %283, %288, !dbg !1702
  %290 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1703
  %291 = getelementptr inbounds [16 x i32], [16 x i32]* %290, i64 0, i64 3, !dbg !1704
  store i32 %289, i32* %291, align 4, !dbg !1705
  ret void, !dbg !1706
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_ivsetup(%struct.chacha_ctx* %0, i8* %1, i8* %2) #0 !dbg !1707 {
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !1710, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8* %1, metadata !1712, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8* %2, metadata !1713, metadata !DIExpression()), !dbg !1711
  %4 = icmp eq i8* %2, null, !dbg !1714
  br i1 %4, label %5, label %6, !dbg !1715

5:                                                ; preds = %3
  br label %29, !dbg !1715

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1716
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !1716
  %9 = load i8, i8* %8, align 1, !dbg !1716
  %10 = zext i8 %9 to i32, !dbg !1716
  %11 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1716
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1716
  %13 = load i8, i8* %12, align 1, !dbg !1716
  %14 = zext i8 %13 to i32, !dbg !1716
  %15 = shl i32 %14, 8, !dbg !1716
  %16 = or i32 %10, %15, !dbg !1716
  %17 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1716
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !1716
  %19 = load i8, i8* %18, align 1, !dbg !1716
  %20 = zext i8 %19 to i32, !dbg !1716
  %21 = shl i32 %20, 16, !dbg !1716
  %22 = or i32 %16, %21, !dbg !1716
  %23 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1716
  %24 = getelementptr inbounds i8, i8* %23, i64 3, !dbg !1716
  %25 = load i8, i8* %24, align 1, !dbg !1716
  %26 = zext i8 %25 to i32, !dbg !1716
  %27 = shl i32 %26, 24, !dbg !1716
  %28 = or i32 %22, %27, !dbg !1716
  br label %29, !dbg !1715

29:                                               ; preds = %6, %5
  %30 = phi i32 [ 0, %5 ], [ %28, %6 ], !dbg !1715
  %31 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1717
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i64 0, i64 12, !dbg !1718
  store i32 %30, i32* %32, align 4, !dbg !1719
  %33 = icmp eq i8* %2, null, !dbg !1720
  br i1 %33, label %34, label %35, !dbg !1721

34:                                               ; preds = %29
  br label %58, !dbg !1721

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1722
  %37 = getelementptr inbounds i8, i8* %36, i64 0, !dbg !1722
  %38 = load i8, i8* %37, align 1, !dbg !1722
  %39 = zext i8 %38 to i32, !dbg !1722
  %40 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1722
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1722
  %42 = load i8, i8* %41, align 1, !dbg !1722
  %43 = zext i8 %42 to i32, !dbg !1722
  %44 = shl i32 %43, 8, !dbg !1722
  %45 = or i32 %39, %44, !dbg !1722
  %46 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1722
  %47 = getelementptr inbounds i8, i8* %46, i64 2, !dbg !1722
  %48 = load i8, i8* %47, align 1, !dbg !1722
  %49 = zext i8 %48 to i32, !dbg !1722
  %50 = shl i32 %49, 16, !dbg !1722
  %51 = or i32 %45, %50, !dbg !1722
  %52 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1722
  %53 = getelementptr inbounds i8, i8* %52, i64 3, !dbg !1722
  %54 = load i8, i8* %53, align 1, !dbg !1722
  %55 = zext i8 %54 to i32, !dbg !1722
  %56 = shl i32 %55, 24, !dbg !1722
  %57 = or i32 %51, %56, !dbg !1722
  br label %58, !dbg !1721

58:                                               ; preds = %35, %34
  %59 = phi i32 [ 0, %34 ], [ %57, %35 ], !dbg !1721
  %60 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1723
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %60, i64 0, i64 13, !dbg !1724
  store i32 %59, i32* %61, align 4, !dbg !1725
  %62 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1726
  %63 = getelementptr inbounds i8, i8* %62, i64 0, !dbg !1726
  %64 = load i8, i8* %63, align 1, !dbg !1726
  %65 = zext i8 %64 to i32, !dbg !1726
  %66 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1726
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1726
  %68 = load i8, i8* %67, align 1, !dbg !1726
  %69 = zext i8 %68 to i32, !dbg !1726
  %70 = shl i32 %69, 8, !dbg !1726
  %71 = or i32 %65, %70, !dbg !1726
  %72 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1726
  %73 = getelementptr inbounds i8, i8* %72, i64 2, !dbg !1726
  %74 = load i8, i8* %73, align 1, !dbg !1726
  %75 = zext i8 %74 to i32, !dbg !1726
  %76 = shl i32 %75, 16, !dbg !1726
  %77 = or i32 %71, %76, !dbg !1726
  %78 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1726
  %79 = getelementptr inbounds i8, i8* %78, i64 3, !dbg !1726
  %80 = load i8, i8* %79, align 1, !dbg !1726
  %81 = zext i8 %80 to i32, !dbg !1726
  %82 = shl i32 %81, 24, !dbg !1726
  %83 = or i32 %77, %82, !dbg !1726
  %84 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1727
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %84, i64 0, i64 14, !dbg !1728
  store i32 %83, i32* %85, align 4, !dbg !1729
  %86 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1730
  %87 = getelementptr inbounds i8, i8* %86, i64 0, !dbg !1730
  %88 = load i8, i8* %87, align 1, !dbg !1730
  %89 = zext i8 %88 to i32, !dbg !1730
  %90 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1730
  %91 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1730
  %92 = load i8, i8* %91, align 1, !dbg !1730
  %93 = zext i8 %92 to i32, !dbg !1730
  %94 = shl i32 %93, 8, !dbg !1730
  %95 = or i32 %89, %94, !dbg !1730
  %96 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1730
  %97 = getelementptr inbounds i8, i8* %96, i64 2, !dbg !1730
  %98 = load i8, i8* %97, align 1, !dbg !1730
  %99 = zext i8 %98 to i32, !dbg !1730
  %100 = shl i32 %99, 16, !dbg !1730
  %101 = or i32 %95, %100, !dbg !1730
  %102 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1730
  %103 = getelementptr inbounds i8, i8* %102, i64 3, !dbg !1730
  %104 = load i8, i8* %103, align 1, !dbg !1730
  %105 = zext i8 %104 to i32, !dbg !1730
  %106 = shl i32 %105, 24, !dbg !1730
  %107 = or i32 %101, %106, !dbg !1730
  %108 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1731
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %108, i64 0, i64 15, !dbg !1732
  store i32 %107, i32* %109, align 4, !dbg !1733
  ret void, !dbg !1734
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_encrypt_bytes(%struct.chacha_ctx* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !1735 {
  %5 = alloca [64 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !1739, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8* %1, metadata !1741, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8* %2, metadata !1742, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i64 %3, metadata !1743, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8* null, metadata !1744, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.declare(metadata [64 x i8]* %5, metadata !1745, metadata !DIExpression()), !dbg !1747
  %6 = icmp ne i64 %3, 0, !dbg !1748
  br i1 %6, label %8, label %7, !dbg !1750

7:                                                ; preds = %4
  br label %1151, !dbg !1751

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1753
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0, !dbg !1754
  %11 = load i32, i32* %10, align 4, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %11, metadata !1755, metadata !DIExpression()), !dbg !1740
  %12 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1756
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 1, !dbg !1757
  %14 = load i32, i32* %13, align 4, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %14, metadata !1758, metadata !DIExpression()), !dbg !1740
  %15 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1759
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2, !dbg !1760
  %17 = load i32, i32* %16, align 4, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %17, metadata !1761, metadata !DIExpression()), !dbg !1740
  %18 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1762
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 3, !dbg !1763
  %20 = load i32, i32* %19, align 4, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %20, metadata !1764, metadata !DIExpression()), !dbg !1740
  %21 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1765
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 4, !dbg !1766
  %23 = load i32, i32* %22, align 4, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %23, metadata !1767, metadata !DIExpression()), !dbg !1740
  %24 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1768
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 5, !dbg !1769
  %26 = load i32, i32* %25, align 4, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %26, metadata !1770, metadata !DIExpression()), !dbg !1740
  %27 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1771
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %27, i64 0, i64 6, !dbg !1772
  %29 = load i32, i32* %28, align 4, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %29, metadata !1773, metadata !DIExpression()), !dbg !1740
  %30 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1774
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %30, i64 0, i64 7, !dbg !1775
  %32 = load i32, i32* %31, align 4, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %32, metadata !1776, metadata !DIExpression()), !dbg !1740
  %33 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1777
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %33, i64 0, i64 8, !dbg !1778
  %35 = load i32, i32* %34, align 4, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %35, metadata !1779, metadata !DIExpression()), !dbg !1740
  %36 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1780
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %36, i64 0, i64 9, !dbg !1781
  %38 = load i32, i32* %37, align 4, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %38, metadata !1782, metadata !DIExpression()), !dbg !1740
  %39 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1783
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i64 0, i64 10, !dbg !1784
  %41 = load i32, i32* %40, align 4, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %41, metadata !1785, metadata !DIExpression()), !dbg !1740
  %42 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1786
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %42, i64 0, i64 11, !dbg !1787
  %44 = load i32, i32* %43, align 4, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %44, metadata !1788, metadata !DIExpression()), !dbg !1740
  %45 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1789
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %45, i64 0, i64 12, !dbg !1790
  %47 = load i32, i32* %46, align 4, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %47, metadata !1791, metadata !DIExpression()), !dbg !1740
  %48 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1792
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %48, i64 0, i64 13, !dbg !1793
  %50 = load i32, i32* %49, align 4, !dbg !1793
  call void @llvm.dbg.value(metadata i32 %50, metadata !1794, metadata !DIExpression()), !dbg !1740
  %51 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1795
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %51, i64 0, i64 14, !dbg !1796
  %53 = load i32, i32* %52, align 4, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %53, metadata !1797, metadata !DIExpression()), !dbg !1740
  %54 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1798
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %54, i64 0, i64 15, !dbg !1799
  %56 = load i32, i32* %55, align 4, !dbg !1799
  call void @llvm.dbg.value(metadata i32 %56, metadata !1800, metadata !DIExpression()), !dbg !1740
  br label %57, !dbg !1801

57:                                               ; preds = %1147, %8
  %.026 = phi i32 [ %47, %8 ], [ %657, %1147 ], !dbg !1740
  %.024 = phi i32 [ %50, %8 ], [ %.125, %1147 ], !dbg !1802
  %.022 = phi i8* [ null, %8 ], [ %.123, %1147 ], !dbg !1740
  %.05 = phi i64 [ %3, %8 ], [ %1148, %1147 ]
  %.03 = phi i8* [ %2, %8 ], [ %1149, %1147 ]
  %.01 = phi i8* [ %1, %8 ], [ %1150, %1147 ]
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1741, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1742, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1743, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8* %.022, metadata !1744, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.024, metadata !1794, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.026, metadata !1791, metadata !DIExpression()), !dbg !1740
  %58 = icmp ult i64 %.05, 64, !dbg !1803
  br i1 %58, label %59, label %74, !dbg !1808

59:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i32 0, metadata !1809, metadata !DIExpression()), !dbg !1740
  br label %60, !dbg !1810

60:                                               ; preds = %69, %59
  %.0 = phi i32 [ 0, %59 ], [ %70, %69 ], !dbg !1813
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1809, metadata !DIExpression()), !dbg !1740
  %61 = zext i32 %.0 to i64, !dbg !1814
  %62 = icmp ult i64 %61, %.05, !dbg !1816
  br i1 %62, label %63, label %71, !dbg !1817

63:                                               ; preds = %60
  %64 = zext i32 %.0 to i64, !dbg !1818
  %65 = getelementptr inbounds i8, i8* %.01, i64 %64, !dbg !1818
  %66 = load i8, i8* %65, align 1, !dbg !1818
  %67 = zext i32 %.0 to i64, !dbg !1820
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %67, !dbg !1820
  store i8 %66, i8* %68, align 1, !dbg !1821
  br label %69, !dbg !1822

69:                                               ; preds = %63
  %70 = add i32 %.0, 1, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %70, metadata !1809, metadata !DIExpression()), !dbg !1740
  br label %60, !dbg !1824, !llvm.loop !1825

71:                                               ; preds = %60
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !1827
  call void @llvm.dbg.value(metadata i8* %72, metadata !1741, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1744, metadata !DIExpression()), !dbg !1740
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !1828
  call void @llvm.dbg.value(metadata i8* %73, metadata !1742, metadata !DIExpression()), !dbg !1740
  br label %74, !dbg !1829

74:                                               ; preds = %71, %57
  %.123 = phi i8* [ %.03, %71 ], [ %.022, %57 ], !dbg !1740
  %.14 = phi i8* [ %73, %71 ], [ %.03, %57 ]
  %.12 = phi i8* [ %72, %71 ], [ %.01, %57 ]
  call void @llvm.dbg.value(metadata i8* %.12, metadata !1741, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8* %.14, metadata !1742, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8* %.123, metadata !1744, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %11, metadata !1830, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %14, metadata !1831, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %17, metadata !1832, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %20, metadata !1833, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %23, metadata !1834, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %26, metadata !1835, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %29, metadata !1836, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %32, metadata !1837, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %35, metadata !1838, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %38, metadata !1839, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %41, metadata !1840, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %44, metadata !1841, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.026, metadata !1842, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.024, metadata !1843, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %53, metadata !1844, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %56, metadata !1845, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 20, metadata !1809, metadata !DIExpression()), !dbg !1740
  br label %75, !dbg !1846

75:                                               ; preds = %270, %74
  %.021 = phi i32 [ %56, %74 ], [ %191, %270 ], !dbg !1848
  %.020 = phi i32 [ %53, %74 ], [ %263, %270 ], !dbg !1848
  %.019 = phi i32 [ %.024, %74 ], [ %239, %270 ], !dbg !1848
  %.018 = phi i32 [ %.026, %74 ], [ %215, %270 ], !dbg !1848
  %.017 = phi i32 [ %44, %74 ], [ %216, %270 ], !dbg !1848
  %.016 = phi i32 [ %41, %74 ], [ %192, %270 ], !dbg !1848
  %.015 = phi i32 [ %38, %74 ], [ %264, %270 ], !dbg !1848
  %.014 = phi i32 [ %35, %74 ], [ %240, %270 ], !dbg !1848
  %.013 = phi i32 [ %32, %74 ], [ %245, %270 ], !dbg !1848
  %.012 = phi i32 [ %29, %74 ], [ %221, %270 ], !dbg !1848
  %.011 = phi i32 [ %26, %74 ], [ %197, %270 ], !dbg !1848
  %.010 = phi i32 [ %23, %74 ], [ %269, %270 ], !dbg !1848
  %.09 = phi i32 [ %20, %74 ], [ %258, %270 ], !dbg !1848
  %.08 = phi i32 [ %17, %74 ], [ %234, %270 ], !dbg !1848
  %.07 = phi i32 [ %14, %74 ], [ %210, %270 ], !dbg !1848
  %.06 = phi i32 [ %11, %74 ], [ %186, %270 ], !dbg !1848
  %.1 = phi i32 [ 20, %74 ], [ %271, %270 ], !dbg !1849
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1809, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1830, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1831, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.08, metadata !1832, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.09, metadata !1833, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.010, metadata !1834, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.011, metadata !1835, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1836, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.013, metadata !1837, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.014, metadata !1838, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.015, metadata !1839, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.016, metadata !1840, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.017, metadata !1841, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.018, metadata !1842, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.019, metadata !1843, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.020, metadata !1844, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.021, metadata !1845, metadata !DIExpression()), !dbg !1740
  %76 = icmp ugt i32 %.1, 0, !dbg !1850
  br i1 %76, label %77, label %272, !dbg !1852

77:                                               ; preds = %75
  %78 = add i32 %.06, %.010, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %78, metadata !1830, metadata !DIExpression()), !dbg !1740
  %79 = xor i32 %.018, %78, !dbg !1853
  %80 = shl i32 %79, 16, !dbg !1853
  %81 = xor i32 %.018, %78, !dbg !1853
  %82 = lshr i32 %81, 16, !dbg !1853
  %83 = or i32 %80, %82, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %83, metadata !1842, metadata !DIExpression()), !dbg !1740
  %84 = add i32 %.014, %83, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %84, metadata !1838, metadata !DIExpression()), !dbg !1740
  %85 = xor i32 %.010, %84, !dbg !1853
  %86 = shl i32 %85, 12, !dbg !1853
  %87 = xor i32 %.010, %84, !dbg !1853
  %88 = lshr i32 %87, 20, !dbg !1853
  %89 = or i32 %86, %88, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %89, metadata !1834, metadata !DIExpression()), !dbg !1740
  %90 = add i32 %78, %89, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %90, metadata !1830, metadata !DIExpression()), !dbg !1740
  %91 = xor i32 %83, %90, !dbg !1853
  %92 = shl i32 %91, 8, !dbg !1853
  %93 = xor i32 %83, %90, !dbg !1853
  %94 = lshr i32 %93, 24, !dbg !1853
  %95 = or i32 %92, %94, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %95, metadata !1842, metadata !DIExpression()), !dbg !1740
  %96 = add i32 %84, %95, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %96, metadata !1838, metadata !DIExpression()), !dbg !1740
  %97 = xor i32 %89, %96, !dbg !1853
  %98 = shl i32 %97, 7, !dbg !1853
  %99 = xor i32 %89, %96, !dbg !1853
  %100 = lshr i32 %99, 25, !dbg !1853
  %101 = or i32 %98, %100, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %101, metadata !1834, metadata !DIExpression()), !dbg !1740
  %102 = add i32 %.07, %.011, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %102, metadata !1831, metadata !DIExpression()), !dbg !1740
  %103 = xor i32 %.019, %102, !dbg !1855
  %104 = shl i32 %103, 16, !dbg !1855
  %105 = xor i32 %.019, %102, !dbg !1855
  %106 = lshr i32 %105, 16, !dbg !1855
  %107 = or i32 %104, %106, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %107, metadata !1843, metadata !DIExpression()), !dbg !1740
  %108 = add i32 %.015, %107, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %108, metadata !1839, metadata !DIExpression()), !dbg !1740
  %109 = xor i32 %.011, %108, !dbg !1855
  %110 = shl i32 %109, 12, !dbg !1855
  %111 = xor i32 %.011, %108, !dbg !1855
  %112 = lshr i32 %111, 20, !dbg !1855
  %113 = or i32 %110, %112, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %113, metadata !1835, metadata !DIExpression()), !dbg !1740
  %114 = add i32 %102, %113, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %114, metadata !1831, metadata !DIExpression()), !dbg !1740
  %115 = xor i32 %107, %114, !dbg !1855
  %116 = shl i32 %115, 8, !dbg !1855
  %117 = xor i32 %107, %114, !dbg !1855
  %118 = lshr i32 %117, 24, !dbg !1855
  %119 = or i32 %116, %118, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %119, metadata !1843, metadata !DIExpression()), !dbg !1740
  %120 = add i32 %108, %119, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %120, metadata !1839, metadata !DIExpression()), !dbg !1740
  %121 = xor i32 %113, %120, !dbg !1855
  %122 = shl i32 %121, 7, !dbg !1855
  %123 = xor i32 %113, %120, !dbg !1855
  %124 = lshr i32 %123, 25, !dbg !1855
  %125 = or i32 %122, %124, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %125, metadata !1835, metadata !DIExpression()), !dbg !1740
  %126 = add i32 %.08, %.012, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %126, metadata !1832, metadata !DIExpression()), !dbg !1740
  %127 = xor i32 %.020, %126, !dbg !1856
  %128 = shl i32 %127, 16, !dbg !1856
  %129 = xor i32 %.020, %126, !dbg !1856
  %130 = lshr i32 %129, 16, !dbg !1856
  %131 = or i32 %128, %130, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %131, metadata !1844, metadata !DIExpression()), !dbg !1740
  %132 = add i32 %.016, %131, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %132, metadata !1840, metadata !DIExpression()), !dbg !1740
  %133 = xor i32 %.012, %132, !dbg !1856
  %134 = shl i32 %133, 12, !dbg !1856
  %135 = xor i32 %.012, %132, !dbg !1856
  %136 = lshr i32 %135, 20, !dbg !1856
  %137 = or i32 %134, %136, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %137, metadata !1836, metadata !DIExpression()), !dbg !1740
  %138 = add i32 %126, %137, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %138, metadata !1832, metadata !DIExpression()), !dbg !1740
  %139 = xor i32 %131, %138, !dbg !1856
  %140 = shl i32 %139, 8, !dbg !1856
  %141 = xor i32 %131, %138, !dbg !1856
  %142 = lshr i32 %141, 24, !dbg !1856
  %143 = or i32 %140, %142, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %143, metadata !1844, metadata !DIExpression()), !dbg !1740
  %144 = add i32 %132, %143, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %144, metadata !1840, metadata !DIExpression()), !dbg !1740
  %145 = xor i32 %137, %144, !dbg !1856
  %146 = shl i32 %145, 7, !dbg !1856
  %147 = xor i32 %137, %144, !dbg !1856
  %148 = lshr i32 %147, 25, !dbg !1856
  %149 = or i32 %146, %148, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %149, metadata !1836, metadata !DIExpression()), !dbg !1740
  %150 = add i32 %.09, %.013, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %150, metadata !1833, metadata !DIExpression()), !dbg !1740
  %151 = xor i32 %.021, %150, !dbg !1857
  %152 = shl i32 %151, 16, !dbg !1857
  %153 = xor i32 %.021, %150, !dbg !1857
  %154 = lshr i32 %153, 16, !dbg !1857
  %155 = or i32 %152, %154, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %155, metadata !1845, metadata !DIExpression()), !dbg !1740
  %156 = add i32 %.017, %155, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %156, metadata !1841, metadata !DIExpression()), !dbg !1740
  %157 = xor i32 %.013, %156, !dbg !1857
  %158 = shl i32 %157, 12, !dbg !1857
  %159 = xor i32 %.013, %156, !dbg !1857
  %160 = lshr i32 %159, 20, !dbg !1857
  %161 = or i32 %158, %160, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %161, metadata !1837, metadata !DIExpression()), !dbg !1740
  %162 = add i32 %150, %161, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %162, metadata !1833, metadata !DIExpression()), !dbg !1740
  %163 = xor i32 %155, %162, !dbg !1857
  %164 = shl i32 %163, 8, !dbg !1857
  %165 = xor i32 %155, %162, !dbg !1857
  %166 = lshr i32 %165, 24, !dbg !1857
  %167 = or i32 %164, %166, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %167, metadata !1845, metadata !DIExpression()), !dbg !1740
  %168 = add i32 %156, %167, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %168, metadata !1841, metadata !DIExpression()), !dbg !1740
  %169 = xor i32 %161, %168, !dbg !1857
  %170 = shl i32 %169, 7, !dbg !1857
  %171 = xor i32 %161, %168, !dbg !1857
  %172 = lshr i32 %171, 25, !dbg !1857
  %173 = or i32 %170, %172, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %173, metadata !1837, metadata !DIExpression()), !dbg !1740
  %174 = add i32 %90, %125, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %174, metadata !1830, metadata !DIExpression()), !dbg !1740
  %175 = xor i32 %167, %174, !dbg !1858
  %176 = shl i32 %175, 16, !dbg !1858
  %177 = xor i32 %167, %174, !dbg !1858
  %178 = lshr i32 %177, 16, !dbg !1858
  %179 = or i32 %176, %178, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %179, metadata !1845, metadata !DIExpression()), !dbg !1740
  %180 = add i32 %144, %179, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %180, metadata !1840, metadata !DIExpression()), !dbg !1740
  %181 = xor i32 %125, %180, !dbg !1858
  %182 = shl i32 %181, 12, !dbg !1858
  %183 = xor i32 %125, %180, !dbg !1858
  %184 = lshr i32 %183, 20, !dbg !1858
  %185 = or i32 %182, %184, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %185, metadata !1835, metadata !DIExpression()), !dbg !1740
  %186 = add i32 %174, %185, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %186, metadata !1830, metadata !DIExpression()), !dbg !1740
  %187 = xor i32 %179, %186, !dbg !1858
  %188 = shl i32 %187, 8, !dbg !1858
  %189 = xor i32 %179, %186, !dbg !1858
  %190 = lshr i32 %189, 24, !dbg !1858
  %191 = or i32 %188, %190, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %191, metadata !1845, metadata !DIExpression()), !dbg !1740
  %192 = add i32 %180, %191, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %192, metadata !1840, metadata !DIExpression()), !dbg !1740
  %193 = xor i32 %185, %192, !dbg !1858
  %194 = shl i32 %193, 7, !dbg !1858
  %195 = xor i32 %185, %192, !dbg !1858
  %196 = lshr i32 %195, 25, !dbg !1858
  %197 = or i32 %194, %196, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %197, metadata !1835, metadata !DIExpression()), !dbg !1740
  %198 = add i32 %114, %149, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %198, metadata !1831, metadata !DIExpression()), !dbg !1740
  %199 = xor i32 %95, %198, !dbg !1859
  %200 = shl i32 %199, 16, !dbg !1859
  %201 = xor i32 %95, %198, !dbg !1859
  %202 = lshr i32 %201, 16, !dbg !1859
  %203 = or i32 %200, %202, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %203, metadata !1842, metadata !DIExpression()), !dbg !1740
  %204 = add i32 %168, %203, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %204, metadata !1841, metadata !DIExpression()), !dbg !1740
  %205 = xor i32 %149, %204, !dbg !1859
  %206 = shl i32 %205, 12, !dbg !1859
  %207 = xor i32 %149, %204, !dbg !1859
  %208 = lshr i32 %207, 20, !dbg !1859
  %209 = or i32 %206, %208, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %209, metadata !1836, metadata !DIExpression()), !dbg !1740
  %210 = add i32 %198, %209, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %210, metadata !1831, metadata !DIExpression()), !dbg !1740
  %211 = xor i32 %203, %210, !dbg !1859
  %212 = shl i32 %211, 8, !dbg !1859
  %213 = xor i32 %203, %210, !dbg !1859
  %214 = lshr i32 %213, 24, !dbg !1859
  %215 = or i32 %212, %214, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %215, metadata !1842, metadata !DIExpression()), !dbg !1740
  %216 = add i32 %204, %215, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %216, metadata !1841, metadata !DIExpression()), !dbg !1740
  %217 = xor i32 %209, %216, !dbg !1859
  %218 = shl i32 %217, 7, !dbg !1859
  %219 = xor i32 %209, %216, !dbg !1859
  %220 = lshr i32 %219, 25, !dbg !1859
  %221 = or i32 %218, %220, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %221, metadata !1836, metadata !DIExpression()), !dbg !1740
  %222 = add i32 %138, %173, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %222, metadata !1832, metadata !DIExpression()), !dbg !1740
  %223 = xor i32 %119, %222, !dbg !1860
  %224 = shl i32 %223, 16, !dbg !1860
  %225 = xor i32 %119, %222, !dbg !1860
  %226 = lshr i32 %225, 16, !dbg !1860
  %227 = or i32 %224, %226, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %227, metadata !1843, metadata !DIExpression()), !dbg !1740
  %228 = add i32 %96, %227, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %228, metadata !1838, metadata !DIExpression()), !dbg !1740
  %229 = xor i32 %173, %228, !dbg !1860
  %230 = shl i32 %229, 12, !dbg !1860
  %231 = xor i32 %173, %228, !dbg !1860
  %232 = lshr i32 %231, 20, !dbg !1860
  %233 = or i32 %230, %232, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %233, metadata !1837, metadata !DIExpression()), !dbg !1740
  %234 = add i32 %222, %233, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %234, metadata !1832, metadata !DIExpression()), !dbg !1740
  %235 = xor i32 %227, %234, !dbg !1860
  %236 = shl i32 %235, 8, !dbg !1860
  %237 = xor i32 %227, %234, !dbg !1860
  %238 = lshr i32 %237, 24, !dbg !1860
  %239 = or i32 %236, %238, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %239, metadata !1843, metadata !DIExpression()), !dbg !1740
  %240 = add i32 %228, %239, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %240, metadata !1838, metadata !DIExpression()), !dbg !1740
  %241 = xor i32 %233, %240, !dbg !1860
  %242 = shl i32 %241, 7, !dbg !1860
  %243 = xor i32 %233, %240, !dbg !1860
  %244 = lshr i32 %243, 25, !dbg !1860
  %245 = or i32 %242, %244, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %245, metadata !1837, metadata !DIExpression()), !dbg !1740
  %246 = add i32 %162, %101, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %246, metadata !1833, metadata !DIExpression()), !dbg !1740
  %247 = xor i32 %143, %246, !dbg !1861
  %248 = shl i32 %247, 16, !dbg !1861
  %249 = xor i32 %143, %246, !dbg !1861
  %250 = lshr i32 %249, 16, !dbg !1861
  %251 = or i32 %248, %250, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %251, metadata !1844, metadata !DIExpression()), !dbg !1740
  %252 = add i32 %120, %251, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %252, metadata !1839, metadata !DIExpression()), !dbg !1740
  %253 = xor i32 %101, %252, !dbg !1861
  %254 = shl i32 %253, 12, !dbg !1861
  %255 = xor i32 %101, %252, !dbg !1861
  %256 = lshr i32 %255, 20, !dbg !1861
  %257 = or i32 %254, %256, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %257, metadata !1834, metadata !DIExpression()), !dbg !1740
  %258 = add i32 %246, %257, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %258, metadata !1833, metadata !DIExpression()), !dbg !1740
  %259 = xor i32 %251, %258, !dbg !1861
  %260 = shl i32 %259, 8, !dbg !1861
  %261 = xor i32 %251, %258, !dbg !1861
  %262 = lshr i32 %261, 24, !dbg !1861
  %263 = or i32 %260, %262, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %263, metadata !1844, metadata !DIExpression()), !dbg !1740
  %264 = add i32 %252, %263, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %264, metadata !1839, metadata !DIExpression()), !dbg !1740
  %265 = xor i32 %257, %264, !dbg !1861
  %266 = shl i32 %265, 7, !dbg !1861
  %267 = xor i32 %257, %264, !dbg !1861
  %268 = lshr i32 %267, 25, !dbg !1861
  %269 = or i32 %266, %268, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %269, metadata !1834, metadata !DIExpression()), !dbg !1740
  br label %270, !dbg !1862

270:                                              ; preds = %77
  %271 = sub i32 %.1, 2, !dbg !1863
  call void @llvm.dbg.value(metadata i32 %271, metadata !1809, metadata !DIExpression()), !dbg !1740
  br label %75, !dbg !1864, !llvm.loop !1865

272:                                              ; preds = %75
  %273 = add i32 %.06, %11, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %273, metadata !1830, metadata !DIExpression()), !dbg !1740
  %274 = add i32 %.07, %14, !dbg !1868
  call void @llvm.dbg.value(metadata i32 %274, metadata !1831, metadata !DIExpression()), !dbg !1740
  %275 = add i32 %.08, %17, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %275, metadata !1832, metadata !DIExpression()), !dbg !1740
  %276 = add i32 %.09, %20, !dbg !1870
  call void @llvm.dbg.value(metadata i32 %276, metadata !1833, metadata !DIExpression()), !dbg !1740
  %277 = add i32 %.010, %23, !dbg !1871
  call void @llvm.dbg.value(metadata i32 %277, metadata !1834, metadata !DIExpression()), !dbg !1740
  %278 = add i32 %.011, %26, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %278, metadata !1835, metadata !DIExpression()), !dbg !1740
  %279 = add i32 %.012, %29, !dbg !1873
  call void @llvm.dbg.value(metadata i32 %279, metadata !1836, metadata !DIExpression()), !dbg !1740
  %280 = add i32 %.013, %32, !dbg !1874
  call void @llvm.dbg.value(metadata i32 %280, metadata !1837, metadata !DIExpression()), !dbg !1740
  %281 = add i32 %.014, %35, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %281, metadata !1838, metadata !DIExpression()), !dbg !1740
  %282 = add i32 %.015, %38, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %282, metadata !1839, metadata !DIExpression()), !dbg !1740
  %283 = add i32 %.016, %41, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %283, metadata !1840, metadata !DIExpression()), !dbg !1740
  %284 = add i32 %.017, %44, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %284, metadata !1841, metadata !DIExpression()), !dbg !1740
  %285 = add i32 %.018, %.026, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %285, metadata !1842, metadata !DIExpression()), !dbg !1740
  %286 = add i32 %.019, %.024, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %286, metadata !1843, metadata !DIExpression()), !dbg !1740
  %287 = add i32 %.020, %53, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %287, metadata !1844, metadata !DIExpression()), !dbg !1740
  %288 = add i32 %.021, %56, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %288, metadata !1845, metadata !DIExpression()), !dbg !1740
  %289 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !1883
  %290 = getelementptr inbounds i8, i8* %289, i64 0, !dbg !1883
  %291 = load i8, i8* %290, align 1, !dbg !1883
  %292 = zext i8 %291 to i32, !dbg !1883
  %293 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !1883
  %294 = getelementptr inbounds i8, i8* %293, i64 1, !dbg !1883
  %295 = load i8, i8* %294, align 1, !dbg !1883
  %296 = zext i8 %295 to i32, !dbg !1883
  %297 = shl i32 %296, 8, !dbg !1883
  %298 = or i32 %292, %297, !dbg !1883
  %299 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !1883
  %300 = getelementptr inbounds i8, i8* %299, i64 2, !dbg !1883
  %301 = load i8, i8* %300, align 1, !dbg !1883
  %302 = zext i8 %301 to i32, !dbg !1883
  %303 = shl i32 %302, 16, !dbg !1883
  %304 = or i32 %298, %303, !dbg !1883
  %305 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !1883
  %306 = getelementptr inbounds i8, i8* %305, i64 3, !dbg !1883
  %307 = load i8, i8* %306, align 1, !dbg !1883
  %308 = zext i8 %307 to i32, !dbg !1883
  %309 = shl i32 %308, 24, !dbg !1883
  %310 = or i32 %304, %309, !dbg !1883
  %311 = xor i32 %273, %310, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %311, metadata !1830, metadata !DIExpression()), !dbg !1740
  %312 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !1884
  %313 = getelementptr inbounds i8, i8* %312, i64 0, !dbg !1884
  %314 = load i8, i8* %313, align 1, !dbg !1884
  %315 = zext i8 %314 to i32, !dbg !1884
  %316 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !1884
  %317 = getelementptr inbounds i8, i8* %316, i64 1, !dbg !1884
  %318 = load i8, i8* %317, align 1, !dbg !1884
  %319 = zext i8 %318 to i32, !dbg !1884
  %320 = shl i32 %319, 8, !dbg !1884
  %321 = or i32 %315, %320, !dbg !1884
  %322 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !1884
  %323 = getelementptr inbounds i8, i8* %322, i64 2, !dbg !1884
  %324 = load i8, i8* %323, align 1, !dbg !1884
  %325 = zext i8 %324 to i32, !dbg !1884
  %326 = shl i32 %325, 16, !dbg !1884
  %327 = or i32 %321, %326, !dbg !1884
  %328 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !1884
  %329 = getelementptr inbounds i8, i8* %328, i64 3, !dbg !1884
  %330 = load i8, i8* %329, align 1, !dbg !1884
  %331 = zext i8 %330 to i32, !dbg !1884
  %332 = shl i32 %331, 24, !dbg !1884
  %333 = or i32 %327, %332, !dbg !1884
  %334 = xor i32 %274, %333, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %334, metadata !1831, metadata !DIExpression()), !dbg !1740
  %335 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !1885
  %336 = getelementptr inbounds i8, i8* %335, i64 0, !dbg !1885
  %337 = load i8, i8* %336, align 1, !dbg !1885
  %338 = zext i8 %337 to i32, !dbg !1885
  %339 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !1885
  %340 = getelementptr inbounds i8, i8* %339, i64 1, !dbg !1885
  %341 = load i8, i8* %340, align 1, !dbg !1885
  %342 = zext i8 %341 to i32, !dbg !1885
  %343 = shl i32 %342, 8, !dbg !1885
  %344 = or i32 %338, %343, !dbg !1885
  %345 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !1885
  %346 = getelementptr inbounds i8, i8* %345, i64 2, !dbg !1885
  %347 = load i8, i8* %346, align 1, !dbg !1885
  %348 = zext i8 %347 to i32, !dbg !1885
  %349 = shl i32 %348, 16, !dbg !1885
  %350 = or i32 %344, %349, !dbg !1885
  %351 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !1885
  %352 = getelementptr inbounds i8, i8* %351, i64 3, !dbg !1885
  %353 = load i8, i8* %352, align 1, !dbg !1885
  %354 = zext i8 %353 to i32, !dbg !1885
  %355 = shl i32 %354, 24, !dbg !1885
  %356 = or i32 %350, %355, !dbg !1885
  %357 = xor i32 %275, %356, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %357, metadata !1832, metadata !DIExpression()), !dbg !1740
  %358 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !1886
  %359 = getelementptr inbounds i8, i8* %358, i64 0, !dbg !1886
  %360 = load i8, i8* %359, align 1, !dbg !1886
  %361 = zext i8 %360 to i32, !dbg !1886
  %362 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !1886
  %363 = getelementptr inbounds i8, i8* %362, i64 1, !dbg !1886
  %364 = load i8, i8* %363, align 1, !dbg !1886
  %365 = zext i8 %364 to i32, !dbg !1886
  %366 = shl i32 %365, 8, !dbg !1886
  %367 = or i32 %361, %366, !dbg !1886
  %368 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !1886
  %369 = getelementptr inbounds i8, i8* %368, i64 2, !dbg !1886
  %370 = load i8, i8* %369, align 1, !dbg !1886
  %371 = zext i8 %370 to i32, !dbg !1886
  %372 = shl i32 %371, 16, !dbg !1886
  %373 = or i32 %367, %372, !dbg !1886
  %374 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !1886
  %375 = getelementptr inbounds i8, i8* %374, i64 3, !dbg !1886
  %376 = load i8, i8* %375, align 1, !dbg !1886
  %377 = zext i8 %376 to i32, !dbg !1886
  %378 = shl i32 %377, 24, !dbg !1886
  %379 = or i32 %373, %378, !dbg !1886
  %380 = xor i32 %276, %379, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %380, metadata !1833, metadata !DIExpression()), !dbg !1740
  %381 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !1887
  %382 = getelementptr inbounds i8, i8* %381, i64 0, !dbg !1887
  %383 = load i8, i8* %382, align 1, !dbg !1887
  %384 = zext i8 %383 to i32, !dbg !1887
  %385 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !1887
  %386 = getelementptr inbounds i8, i8* %385, i64 1, !dbg !1887
  %387 = load i8, i8* %386, align 1, !dbg !1887
  %388 = zext i8 %387 to i32, !dbg !1887
  %389 = shl i32 %388, 8, !dbg !1887
  %390 = or i32 %384, %389, !dbg !1887
  %391 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !1887
  %392 = getelementptr inbounds i8, i8* %391, i64 2, !dbg !1887
  %393 = load i8, i8* %392, align 1, !dbg !1887
  %394 = zext i8 %393 to i32, !dbg !1887
  %395 = shl i32 %394, 16, !dbg !1887
  %396 = or i32 %390, %395, !dbg !1887
  %397 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !1887
  %398 = getelementptr inbounds i8, i8* %397, i64 3, !dbg !1887
  %399 = load i8, i8* %398, align 1, !dbg !1887
  %400 = zext i8 %399 to i32, !dbg !1887
  %401 = shl i32 %400, 24, !dbg !1887
  %402 = or i32 %396, %401, !dbg !1887
  %403 = xor i32 %277, %402, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %403, metadata !1834, metadata !DIExpression()), !dbg !1740
  %404 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !1888
  %405 = getelementptr inbounds i8, i8* %404, i64 0, !dbg !1888
  %406 = load i8, i8* %405, align 1, !dbg !1888
  %407 = zext i8 %406 to i32, !dbg !1888
  %408 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !1888
  %409 = getelementptr inbounds i8, i8* %408, i64 1, !dbg !1888
  %410 = load i8, i8* %409, align 1, !dbg !1888
  %411 = zext i8 %410 to i32, !dbg !1888
  %412 = shl i32 %411, 8, !dbg !1888
  %413 = or i32 %407, %412, !dbg !1888
  %414 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !1888
  %415 = getelementptr inbounds i8, i8* %414, i64 2, !dbg !1888
  %416 = load i8, i8* %415, align 1, !dbg !1888
  %417 = zext i8 %416 to i32, !dbg !1888
  %418 = shl i32 %417, 16, !dbg !1888
  %419 = or i32 %413, %418, !dbg !1888
  %420 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !1888
  %421 = getelementptr inbounds i8, i8* %420, i64 3, !dbg !1888
  %422 = load i8, i8* %421, align 1, !dbg !1888
  %423 = zext i8 %422 to i32, !dbg !1888
  %424 = shl i32 %423, 24, !dbg !1888
  %425 = or i32 %419, %424, !dbg !1888
  %426 = xor i32 %278, %425, !dbg !1888
  call void @llvm.dbg.value(metadata i32 %426, metadata !1835, metadata !DIExpression()), !dbg !1740
  %427 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !1889
  %428 = getelementptr inbounds i8, i8* %427, i64 0, !dbg !1889
  %429 = load i8, i8* %428, align 1, !dbg !1889
  %430 = zext i8 %429 to i32, !dbg !1889
  %431 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !1889
  %432 = getelementptr inbounds i8, i8* %431, i64 1, !dbg !1889
  %433 = load i8, i8* %432, align 1, !dbg !1889
  %434 = zext i8 %433 to i32, !dbg !1889
  %435 = shl i32 %434, 8, !dbg !1889
  %436 = or i32 %430, %435, !dbg !1889
  %437 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !1889
  %438 = getelementptr inbounds i8, i8* %437, i64 2, !dbg !1889
  %439 = load i8, i8* %438, align 1, !dbg !1889
  %440 = zext i8 %439 to i32, !dbg !1889
  %441 = shl i32 %440, 16, !dbg !1889
  %442 = or i32 %436, %441, !dbg !1889
  %443 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !1889
  %444 = getelementptr inbounds i8, i8* %443, i64 3, !dbg !1889
  %445 = load i8, i8* %444, align 1, !dbg !1889
  %446 = zext i8 %445 to i32, !dbg !1889
  %447 = shl i32 %446, 24, !dbg !1889
  %448 = or i32 %442, %447, !dbg !1889
  %449 = xor i32 %279, %448, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %449, metadata !1836, metadata !DIExpression()), !dbg !1740
  %450 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !1890
  %451 = getelementptr inbounds i8, i8* %450, i64 0, !dbg !1890
  %452 = load i8, i8* %451, align 1, !dbg !1890
  %453 = zext i8 %452 to i32, !dbg !1890
  %454 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !1890
  %455 = getelementptr inbounds i8, i8* %454, i64 1, !dbg !1890
  %456 = load i8, i8* %455, align 1, !dbg !1890
  %457 = zext i8 %456 to i32, !dbg !1890
  %458 = shl i32 %457, 8, !dbg !1890
  %459 = or i32 %453, %458, !dbg !1890
  %460 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !1890
  %461 = getelementptr inbounds i8, i8* %460, i64 2, !dbg !1890
  %462 = load i8, i8* %461, align 1, !dbg !1890
  %463 = zext i8 %462 to i32, !dbg !1890
  %464 = shl i32 %463, 16, !dbg !1890
  %465 = or i32 %459, %464, !dbg !1890
  %466 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !1890
  %467 = getelementptr inbounds i8, i8* %466, i64 3, !dbg !1890
  %468 = load i8, i8* %467, align 1, !dbg !1890
  %469 = zext i8 %468 to i32, !dbg !1890
  %470 = shl i32 %469, 24, !dbg !1890
  %471 = or i32 %465, %470, !dbg !1890
  %472 = xor i32 %280, %471, !dbg !1890
  call void @llvm.dbg.value(metadata i32 %472, metadata !1837, metadata !DIExpression()), !dbg !1740
  %473 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !1891
  %474 = getelementptr inbounds i8, i8* %473, i64 0, !dbg !1891
  %475 = load i8, i8* %474, align 1, !dbg !1891
  %476 = zext i8 %475 to i32, !dbg !1891
  %477 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !1891
  %478 = getelementptr inbounds i8, i8* %477, i64 1, !dbg !1891
  %479 = load i8, i8* %478, align 1, !dbg !1891
  %480 = zext i8 %479 to i32, !dbg !1891
  %481 = shl i32 %480, 8, !dbg !1891
  %482 = or i32 %476, %481, !dbg !1891
  %483 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !1891
  %484 = getelementptr inbounds i8, i8* %483, i64 2, !dbg !1891
  %485 = load i8, i8* %484, align 1, !dbg !1891
  %486 = zext i8 %485 to i32, !dbg !1891
  %487 = shl i32 %486, 16, !dbg !1891
  %488 = or i32 %482, %487, !dbg !1891
  %489 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !1891
  %490 = getelementptr inbounds i8, i8* %489, i64 3, !dbg !1891
  %491 = load i8, i8* %490, align 1, !dbg !1891
  %492 = zext i8 %491 to i32, !dbg !1891
  %493 = shl i32 %492, 24, !dbg !1891
  %494 = or i32 %488, %493, !dbg !1891
  %495 = xor i32 %281, %494, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %495, metadata !1838, metadata !DIExpression()), !dbg !1740
  %496 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !1892
  %497 = getelementptr inbounds i8, i8* %496, i64 0, !dbg !1892
  %498 = load i8, i8* %497, align 1, !dbg !1892
  %499 = zext i8 %498 to i32, !dbg !1892
  %500 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !1892
  %501 = getelementptr inbounds i8, i8* %500, i64 1, !dbg !1892
  %502 = load i8, i8* %501, align 1, !dbg !1892
  %503 = zext i8 %502 to i32, !dbg !1892
  %504 = shl i32 %503, 8, !dbg !1892
  %505 = or i32 %499, %504, !dbg !1892
  %506 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !1892
  %507 = getelementptr inbounds i8, i8* %506, i64 2, !dbg !1892
  %508 = load i8, i8* %507, align 1, !dbg !1892
  %509 = zext i8 %508 to i32, !dbg !1892
  %510 = shl i32 %509, 16, !dbg !1892
  %511 = or i32 %505, %510, !dbg !1892
  %512 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !1892
  %513 = getelementptr inbounds i8, i8* %512, i64 3, !dbg !1892
  %514 = load i8, i8* %513, align 1, !dbg !1892
  %515 = zext i8 %514 to i32, !dbg !1892
  %516 = shl i32 %515, 24, !dbg !1892
  %517 = or i32 %511, %516, !dbg !1892
  %518 = xor i32 %282, %517, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %518, metadata !1839, metadata !DIExpression()), !dbg !1740
  %519 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !1893
  %520 = getelementptr inbounds i8, i8* %519, i64 0, !dbg !1893
  %521 = load i8, i8* %520, align 1, !dbg !1893
  %522 = zext i8 %521 to i32, !dbg !1893
  %523 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !1893
  %524 = getelementptr inbounds i8, i8* %523, i64 1, !dbg !1893
  %525 = load i8, i8* %524, align 1, !dbg !1893
  %526 = zext i8 %525 to i32, !dbg !1893
  %527 = shl i32 %526, 8, !dbg !1893
  %528 = or i32 %522, %527, !dbg !1893
  %529 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !1893
  %530 = getelementptr inbounds i8, i8* %529, i64 2, !dbg !1893
  %531 = load i8, i8* %530, align 1, !dbg !1893
  %532 = zext i8 %531 to i32, !dbg !1893
  %533 = shl i32 %532, 16, !dbg !1893
  %534 = or i32 %528, %533, !dbg !1893
  %535 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !1893
  %536 = getelementptr inbounds i8, i8* %535, i64 3, !dbg !1893
  %537 = load i8, i8* %536, align 1, !dbg !1893
  %538 = zext i8 %537 to i32, !dbg !1893
  %539 = shl i32 %538, 24, !dbg !1893
  %540 = or i32 %534, %539, !dbg !1893
  %541 = xor i32 %283, %540, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %541, metadata !1840, metadata !DIExpression()), !dbg !1740
  %542 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !1894
  %543 = getelementptr inbounds i8, i8* %542, i64 0, !dbg !1894
  %544 = load i8, i8* %543, align 1, !dbg !1894
  %545 = zext i8 %544 to i32, !dbg !1894
  %546 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !1894
  %547 = getelementptr inbounds i8, i8* %546, i64 1, !dbg !1894
  %548 = load i8, i8* %547, align 1, !dbg !1894
  %549 = zext i8 %548 to i32, !dbg !1894
  %550 = shl i32 %549, 8, !dbg !1894
  %551 = or i32 %545, %550, !dbg !1894
  %552 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !1894
  %553 = getelementptr inbounds i8, i8* %552, i64 2, !dbg !1894
  %554 = load i8, i8* %553, align 1, !dbg !1894
  %555 = zext i8 %554 to i32, !dbg !1894
  %556 = shl i32 %555, 16, !dbg !1894
  %557 = or i32 %551, %556, !dbg !1894
  %558 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !1894
  %559 = getelementptr inbounds i8, i8* %558, i64 3, !dbg !1894
  %560 = load i8, i8* %559, align 1, !dbg !1894
  %561 = zext i8 %560 to i32, !dbg !1894
  %562 = shl i32 %561, 24, !dbg !1894
  %563 = or i32 %557, %562, !dbg !1894
  %564 = xor i32 %284, %563, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %564, metadata !1841, metadata !DIExpression()), !dbg !1740
  %565 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !1895
  %566 = getelementptr inbounds i8, i8* %565, i64 0, !dbg !1895
  %567 = load i8, i8* %566, align 1, !dbg !1895
  %568 = zext i8 %567 to i32, !dbg !1895
  %569 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !1895
  %570 = getelementptr inbounds i8, i8* %569, i64 1, !dbg !1895
  %571 = load i8, i8* %570, align 1, !dbg !1895
  %572 = zext i8 %571 to i32, !dbg !1895
  %573 = shl i32 %572, 8, !dbg !1895
  %574 = or i32 %568, %573, !dbg !1895
  %575 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !1895
  %576 = getelementptr inbounds i8, i8* %575, i64 2, !dbg !1895
  %577 = load i8, i8* %576, align 1, !dbg !1895
  %578 = zext i8 %577 to i32, !dbg !1895
  %579 = shl i32 %578, 16, !dbg !1895
  %580 = or i32 %574, %579, !dbg !1895
  %581 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !1895
  %582 = getelementptr inbounds i8, i8* %581, i64 3, !dbg !1895
  %583 = load i8, i8* %582, align 1, !dbg !1895
  %584 = zext i8 %583 to i32, !dbg !1895
  %585 = shl i32 %584, 24, !dbg !1895
  %586 = or i32 %580, %585, !dbg !1895
  %587 = xor i32 %285, %586, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %587, metadata !1842, metadata !DIExpression()), !dbg !1740
  %588 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !1896
  %589 = getelementptr inbounds i8, i8* %588, i64 0, !dbg !1896
  %590 = load i8, i8* %589, align 1, !dbg !1896
  %591 = zext i8 %590 to i32, !dbg !1896
  %592 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !1896
  %593 = getelementptr inbounds i8, i8* %592, i64 1, !dbg !1896
  %594 = load i8, i8* %593, align 1, !dbg !1896
  %595 = zext i8 %594 to i32, !dbg !1896
  %596 = shl i32 %595, 8, !dbg !1896
  %597 = or i32 %591, %596, !dbg !1896
  %598 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !1896
  %599 = getelementptr inbounds i8, i8* %598, i64 2, !dbg !1896
  %600 = load i8, i8* %599, align 1, !dbg !1896
  %601 = zext i8 %600 to i32, !dbg !1896
  %602 = shl i32 %601, 16, !dbg !1896
  %603 = or i32 %597, %602, !dbg !1896
  %604 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !1896
  %605 = getelementptr inbounds i8, i8* %604, i64 3, !dbg !1896
  %606 = load i8, i8* %605, align 1, !dbg !1896
  %607 = zext i8 %606 to i32, !dbg !1896
  %608 = shl i32 %607, 24, !dbg !1896
  %609 = or i32 %603, %608, !dbg !1896
  %610 = xor i32 %286, %609, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %610, metadata !1843, metadata !DIExpression()), !dbg !1740
  %611 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !1897
  %612 = getelementptr inbounds i8, i8* %611, i64 0, !dbg !1897
  %613 = load i8, i8* %612, align 1, !dbg !1897
  %614 = zext i8 %613 to i32, !dbg !1897
  %615 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !1897
  %616 = getelementptr inbounds i8, i8* %615, i64 1, !dbg !1897
  %617 = load i8, i8* %616, align 1, !dbg !1897
  %618 = zext i8 %617 to i32, !dbg !1897
  %619 = shl i32 %618, 8, !dbg !1897
  %620 = or i32 %614, %619, !dbg !1897
  %621 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !1897
  %622 = getelementptr inbounds i8, i8* %621, i64 2, !dbg !1897
  %623 = load i8, i8* %622, align 1, !dbg !1897
  %624 = zext i8 %623 to i32, !dbg !1897
  %625 = shl i32 %624, 16, !dbg !1897
  %626 = or i32 %620, %625, !dbg !1897
  %627 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !1897
  %628 = getelementptr inbounds i8, i8* %627, i64 3, !dbg !1897
  %629 = load i8, i8* %628, align 1, !dbg !1897
  %630 = zext i8 %629 to i32, !dbg !1897
  %631 = shl i32 %630, 24, !dbg !1897
  %632 = or i32 %626, %631, !dbg !1897
  %633 = xor i32 %287, %632, !dbg !1897
  call void @llvm.dbg.value(metadata i32 %633, metadata !1844, metadata !DIExpression()), !dbg !1740
  %634 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !1898
  %635 = getelementptr inbounds i8, i8* %634, i64 0, !dbg !1898
  %636 = load i8, i8* %635, align 1, !dbg !1898
  %637 = zext i8 %636 to i32, !dbg !1898
  %638 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !1898
  %639 = getelementptr inbounds i8, i8* %638, i64 1, !dbg !1898
  %640 = load i8, i8* %639, align 1, !dbg !1898
  %641 = zext i8 %640 to i32, !dbg !1898
  %642 = shl i32 %641, 8, !dbg !1898
  %643 = or i32 %637, %642, !dbg !1898
  %644 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !1898
  %645 = getelementptr inbounds i8, i8* %644, i64 2, !dbg !1898
  %646 = load i8, i8* %645, align 1, !dbg !1898
  %647 = zext i8 %646 to i32, !dbg !1898
  %648 = shl i32 %647, 16, !dbg !1898
  %649 = or i32 %643, %648, !dbg !1898
  %650 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !1898
  %651 = getelementptr inbounds i8, i8* %650, i64 3, !dbg !1898
  %652 = load i8, i8* %651, align 1, !dbg !1898
  %653 = zext i8 %652 to i32, !dbg !1898
  %654 = shl i32 %653, 24, !dbg !1898
  %655 = or i32 %649, %654, !dbg !1898
  %656 = xor i32 %288, %655, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %656, metadata !1845, metadata !DIExpression()), !dbg !1740
  %657 = add i32 %.026, 1, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %657, metadata !1791, metadata !DIExpression()), !dbg !1740
  %658 = icmp ne i32 %657, 0, !dbg !1900
  br i1 %658, label %661, label %659, !dbg !1902

659:                                              ; preds = %272
  %660 = add i32 %.024, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i32 %660, metadata !1794, metadata !DIExpression()), !dbg !1740
  br label %661, !dbg !1905

661:                                              ; preds = %659, %272
  %.125 = phi i32 [ %.024, %272 ], [ %660, %659 ], !dbg !1740
  call void @llvm.dbg.value(metadata i32 %.125, metadata !1794, metadata !DIExpression()), !dbg !1740
  br label %662, !dbg !1906

662:                                              ; preds = %661
  %663 = trunc i32 %311 to i8, !dbg !1907
  %664 = zext i8 %663 to i32, !dbg !1907
  %665 = and i32 %664, 255, !dbg !1907
  %666 = trunc i32 %665 to i8, !dbg !1907
  %667 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !1907
  %668 = getelementptr inbounds i8, i8* %667, i64 0, !dbg !1907
  store i8 %666, i8* %668, align 1, !dbg !1907
  %669 = lshr i32 %311, 8, !dbg !1907
  %670 = trunc i32 %669 to i8, !dbg !1907
  %671 = zext i8 %670 to i32, !dbg !1907
  %672 = and i32 %671, 255, !dbg !1907
  %673 = trunc i32 %672 to i8, !dbg !1907
  %674 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !1907
  %675 = getelementptr inbounds i8, i8* %674, i64 1, !dbg !1907
  store i8 %673, i8* %675, align 1, !dbg !1907
  %676 = lshr i32 %311, 16, !dbg !1907
  %677 = trunc i32 %676 to i8, !dbg !1907
  %678 = zext i8 %677 to i32, !dbg !1907
  %679 = and i32 %678, 255, !dbg !1907
  %680 = trunc i32 %679 to i8, !dbg !1907
  %681 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !1907
  %682 = getelementptr inbounds i8, i8* %681, i64 2, !dbg !1907
  store i8 %680, i8* %682, align 1, !dbg !1907
  %683 = lshr i32 %311, 24, !dbg !1907
  %684 = trunc i32 %683 to i8, !dbg !1907
  %685 = zext i8 %684 to i32, !dbg !1907
  %686 = and i32 %685, 255, !dbg !1907
  %687 = trunc i32 %686 to i8, !dbg !1907
  %688 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !1907
  %689 = getelementptr inbounds i8, i8* %688, i64 3, !dbg !1907
  store i8 %687, i8* %689, align 1, !dbg !1907
  br label %690, !dbg !1907

690:                                              ; preds = %662
  br label %691, !dbg !1909

691:                                              ; preds = %690
  %692 = trunc i32 %334 to i8, !dbg !1910
  %693 = zext i8 %692 to i32, !dbg !1910
  %694 = and i32 %693, 255, !dbg !1910
  %695 = trunc i32 %694 to i8, !dbg !1910
  %696 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !1910
  %697 = getelementptr inbounds i8, i8* %696, i64 0, !dbg !1910
  store i8 %695, i8* %697, align 1, !dbg !1910
  %698 = lshr i32 %334, 8, !dbg !1910
  %699 = trunc i32 %698 to i8, !dbg !1910
  %700 = zext i8 %699 to i32, !dbg !1910
  %701 = and i32 %700, 255, !dbg !1910
  %702 = trunc i32 %701 to i8, !dbg !1910
  %703 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !1910
  %704 = getelementptr inbounds i8, i8* %703, i64 1, !dbg !1910
  store i8 %702, i8* %704, align 1, !dbg !1910
  %705 = lshr i32 %334, 16, !dbg !1910
  %706 = trunc i32 %705 to i8, !dbg !1910
  %707 = zext i8 %706 to i32, !dbg !1910
  %708 = and i32 %707, 255, !dbg !1910
  %709 = trunc i32 %708 to i8, !dbg !1910
  %710 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !1910
  %711 = getelementptr inbounds i8, i8* %710, i64 2, !dbg !1910
  store i8 %709, i8* %711, align 1, !dbg !1910
  %712 = lshr i32 %334, 24, !dbg !1910
  %713 = trunc i32 %712 to i8, !dbg !1910
  %714 = zext i8 %713 to i32, !dbg !1910
  %715 = and i32 %714, 255, !dbg !1910
  %716 = trunc i32 %715 to i8, !dbg !1910
  %717 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !1910
  %718 = getelementptr inbounds i8, i8* %717, i64 3, !dbg !1910
  store i8 %716, i8* %718, align 1, !dbg !1910
  br label %719, !dbg !1910

719:                                              ; preds = %691
  br label %720, !dbg !1912

720:                                              ; preds = %719
  %721 = trunc i32 %357 to i8, !dbg !1913
  %722 = zext i8 %721 to i32, !dbg !1913
  %723 = and i32 %722, 255, !dbg !1913
  %724 = trunc i32 %723 to i8, !dbg !1913
  %725 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !1913
  %726 = getelementptr inbounds i8, i8* %725, i64 0, !dbg !1913
  store i8 %724, i8* %726, align 1, !dbg !1913
  %727 = lshr i32 %357, 8, !dbg !1913
  %728 = trunc i32 %727 to i8, !dbg !1913
  %729 = zext i8 %728 to i32, !dbg !1913
  %730 = and i32 %729, 255, !dbg !1913
  %731 = trunc i32 %730 to i8, !dbg !1913
  %732 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !1913
  %733 = getelementptr inbounds i8, i8* %732, i64 1, !dbg !1913
  store i8 %731, i8* %733, align 1, !dbg !1913
  %734 = lshr i32 %357, 16, !dbg !1913
  %735 = trunc i32 %734 to i8, !dbg !1913
  %736 = zext i8 %735 to i32, !dbg !1913
  %737 = and i32 %736, 255, !dbg !1913
  %738 = trunc i32 %737 to i8, !dbg !1913
  %739 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !1913
  %740 = getelementptr inbounds i8, i8* %739, i64 2, !dbg !1913
  store i8 %738, i8* %740, align 1, !dbg !1913
  %741 = lshr i32 %357, 24, !dbg !1913
  %742 = trunc i32 %741 to i8, !dbg !1913
  %743 = zext i8 %742 to i32, !dbg !1913
  %744 = and i32 %743, 255, !dbg !1913
  %745 = trunc i32 %744 to i8, !dbg !1913
  %746 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !1913
  %747 = getelementptr inbounds i8, i8* %746, i64 3, !dbg !1913
  store i8 %745, i8* %747, align 1, !dbg !1913
  br label %748, !dbg !1913

748:                                              ; preds = %720
  br label %749, !dbg !1915

749:                                              ; preds = %748
  %750 = trunc i32 %380 to i8, !dbg !1916
  %751 = zext i8 %750 to i32, !dbg !1916
  %752 = and i32 %751, 255, !dbg !1916
  %753 = trunc i32 %752 to i8, !dbg !1916
  %754 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !1916
  %755 = getelementptr inbounds i8, i8* %754, i64 0, !dbg !1916
  store i8 %753, i8* %755, align 1, !dbg !1916
  %756 = lshr i32 %380, 8, !dbg !1916
  %757 = trunc i32 %756 to i8, !dbg !1916
  %758 = zext i8 %757 to i32, !dbg !1916
  %759 = and i32 %758, 255, !dbg !1916
  %760 = trunc i32 %759 to i8, !dbg !1916
  %761 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !1916
  %762 = getelementptr inbounds i8, i8* %761, i64 1, !dbg !1916
  store i8 %760, i8* %762, align 1, !dbg !1916
  %763 = lshr i32 %380, 16, !dbg !1916
  %764 = trunc i32 %763 to i8, !dbg !1916
  %765 = zext i8 %764 to i32, !dbg !1916
  %766 = and i32 %765, 255, !dbg !1916
  %767 = trunc i32 %766 to i8, !dbg !1916
  %768 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !1916
  %769 = getelementptr inbounds i8, i8* %768, i64 2, !dbg !1916
  store i8 %767, i8* %769, align 1, !dbg !1916
  %770 = lshr i32 %380, 24, !dbg !1916
  %771 = trunc i32 %770 to i8, !dbg !1916
  %772 = zext i8 %771 to i32, !dbg !1916
  %773 = and i32 %772, 255, !dbg !1916
  %774 = trunc i32 %773 to i8, !dbg !1916
  %775 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !1916
  %776 = getelementptr inbounds i8, i8* %775, i64 3, !dbg !1916
  store i8 %774, i8* %776, align 1, !dbg !1916
  br label %777, !dbg !1916

777:                                              ; preds = %749
  br label %778, !dbg !1918

778:                                              ; preds = %777
  %779 = trunc i32 %403 to i8, !dbg !1919
  %780 = zext i8 %779 to i32, !dbg !1919
  %781 = and i32 %780, 255, !dbg !1919
  %782 = trunc i32 %781 to i8, !dbg !1919
  %783 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !1919
  %784 = getelementptr inbounds i8, i8* %783, i64 0, !dbg !1919
  store i8 %782, i8* %784, align 1, !dbg !1919
  %785 = lshr i32 %403, 8, !dbg !1919
  %786 = trunc i32 %785 to i8, !dbg !1919
  %787 = zext i8 %786 to i32, !dbg !1919
  %788 = and i32 %787, 255, !dbg !1919
  %789 = trunc i32 %788 to i8, !dbg !1919
  %790 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !1919
  %791 = getelementptr inbounds i8, i8* %790, i64 1, !dbg !1919
  store i8 %789, i8* %791, align 1, !dbg !1919
  %792 = lshr i32 %403, 16, !dbg !1919
  %793 = trunc i32 %792 to i8, !dbg !1919
  %794 = zext i8 %793 to i32, !dbg !1919
  %795 = and i32 %794, 255, !dbg !1919
  %796 = trunc i32 %795 to i8, !dbg !1919
  %797 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !1919
  %798 = getelementptr inbounds i8, i8* %797, i64 2, !dbg !1919
  store i8 %796, i8* %798, align 1, !dbg !1919
  %799 = lshr i32 %403, 24, !dbg !1919
  %800 = trunc i32 %799 to i8, !dbg !1919
  %801 = zext i8 %800 to i32, !dbg !1919
  %802 = and i32 %801, 255, !dbg !1919
  %803 = trunc i32 %802 to i8, !dbg !1919
  %804 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !1919
  %805 = getelementptr inbounds i8, i8* %804, i64 3, !dbg !1919
  store i8 %803, i8* %805, align 1, !dbg !1919
  br label %806, !dbg !1919

806:                                              ; preds = %778
  br label %807, !dbg !1921

807:                                              ; preds = %806
  %808 = trunc i32 %426 to i8, !dbg !1922
  %809 = zext i8 %808 to i32, !dbg !1922
  %810 = and i32 %809, 255, !dbg !1922
  %811 = trunc i32 %810 to i8, !dbg !1922
  %812 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !1922
  %813 = getelementptr inbounds i8, i8* %812, i64 0, !dbg !1922
  store i8 %811, i8* %813, align 1, !dbg !1922
  %814 = lshr i32 %426, 8, !dbg !1922
  %815 = trunc i32 %814 to i8, !dbg !1922
  %816 = zext i8 %815 to i32, !dbg !1922
  %817 = and i32 %816, 255, !dbg !1922
  %818 = trunc i32 %817 to i8, !dbg !1922
  %819 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !1922
  %820 = getelementptr inbounds i8, i8* %819, i64 1, !dbg !1922
  store i8 %818, i8* %820, align 1, !dbg !1922
  %821 = lshr i32 %426, 16, !dbg !1922
  %822 = trunc i32 %821 to i8, !dbg !1922
  %823 = zext i8 %822 to i32, !dbg !1922
  %824 = and i32 %823, 255, !dbg !1922
  %825 = trunc i32 %824 to i8, !dbg !1922
  %826 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !1922
  %827 = getelementptr inbounds i8, i8* %826, i64 2, !dbg !1922
  store i8 %825, i8* %827, align 1, !dbg !1922
  %828 = lshr i32 %426, 24, !dbg !1922
  %829 = trunc i32 %828 to i8, !dbg !1922
  %830 = zext i8 %829 to i32, !dbg !1922
  %831 = and i32 %830, 255, !dbg !1922
  %832 = trunc i32 %831 to i8, !dbg !1922
  %833 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !1922
  %834 = getelementptr inbounds i8, i8* %833, i64 3, !dbg !1922
  store i8 %832, i8* %834, align 1, !dbg !1922
  br label %835, !dbg !1922

835:                                              ; preds = %807
  br label %836, !dbg !1924

836:                                              ; preds = %835
  %837 = trunc i32 %449 to i8, !dbg !1925
  %838 = zext i8 %837 to i32, !dbg !1925
  %839 = and i32 %838, 255, !dbg !1925
  %840 = trunc i32 %839 to i8, !dbg !1925
  %841 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !1925
  %842 = getelementptr inbounds i8, i8* %841, i64 0, !dbg !1925
  store i8 %840, i8* %842, align 1, !dbg !1925
  %843 = lshr i32 %449, 8, !dbg !1925
  %844 = trunc i32 %843 to i8, !dbg !1925
  %845 = zext i8 %844 to i32, !dbg !1925
  %846 = and i32 %845, 255, !dbg !1925
  %847 = trunc i32 %846 to i8, !dbg !1925
  %848 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !1925
  %849 = getelementptr inbounds i8, i8* %848, i64 1, !dbg !1925
  store i8 %847, i8* %849, align 1, !dbg !1925
  %850 = lshr i32 %449, 16, !dbg !1925
  %851 = trunc i32 %850 to i8, !dbg !1925
  %852 = zext i8 %851 to i32, !dbg !1925
  %853 = and i32 %852, 255, !dbg !1925
  %854 = trunc i32 %853 to i8, !dbg !1925
  %855 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !1925
  %856 = getelementptr inbounds i8, i8* %855, i64 2, !dbg !1925
  store i8 %854, i8* %856, align 1, !dbg !1925
  %857 = lshr i32 %449, 24, !dbg !1925
  %858 = trunc i32 %857 to i8, !dbg !1925
  %859 = zext i8 %858 to i32, !dbg !1925
  %860 = and i32 %859, 255, !dbg !1925
  %861 = trunc i32 %860 to i8, !dbg !1925
  %862 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !1925
  %863 = getelementptr inbounds i8, i8* %862, i64 3, !dbg !1925
  store i8 %861, i8* %863, align 1, !dbg !1925
  br label %864, !dbg !1925

864:                                              ; preds = %836
  br label %865, !dbg !1927

865:                                              ; preds = %864
  %866 = trunc i32 %472 to i8, !dbg !1928
  %867 = zext i8 %866 to i32, !dbg !1928
  %868 = and i32 %867, 255, !dbg !1928
  %869 = trunc i32 %868 to i8, !dbg !1928
  %870 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !1928
  %871 = getelementptr inbounds i8, i8* %870, i64 0, !dbg !1928
  store i8 %869, i8* %871, align 1, !dbg !1928
  %872 = lshr i32 %472, 8, !dbg !1928
  %873 = trunc i32 %872 to i8, !dbg !1928
  %874 = zext i8 %873 to i32, !dbg !1928
  %875 = and i32 %874, 255, !dbg !1928
  %876 = trunc i32 %875 to i8, !dbg !1928
  %877 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !1928
  %878 = getelementptr inbounds i8, i8* %877, i64 1, !dbg !1928
  store i8 %876, i8* %878, align 1, !dbg !1928
  %879 = lshr i32 %472, 16, !dbg !1928
  %880 = trunc i32 %879 to i8, !dbg !1928
  %881 = zext i8 %880 to i32, !dbg !1928
  %882 = and i32 %881, 255, !dbg !1928
  %883 = trunc i32 %882 to i8, !dbg !1928
  %884 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !1928
  %885 = getelementptr inbounds i8, i8* %884, i64 2, !dbg !1928
  store i8 %883, i8* %885, align 1, !dbg !1928
  %886 = lshr i32 %472, 24, !dbg !1928
  %887 = trunc i32 %886 to i8, !dbg !1928
  %888 = zext i8 %887 to i32, !dbg !1928
  %889 = and i32 %888, 255, !dbg !1928
  %890 = trunc i32 %889 to i8, !dbg !1928
  %891 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !1928
  %892 = getelementptr inbounds i8, i8* %891, i64 3, !dbg !1928
  store i8 %890, i8* %892, align 1, !dbg !1928
  br label %893, !dbg !1928

893:                                              ; preds = %865
  br label %894, !dbg !1930

894:                                              ; preds = %893
  %895 = trunc i32 %495 to i8, !dbg !1931
  %896 = zext i8 %895 to i32, !dbg !1931
  %897 = and i32 %896, 255, !dbg !1931
  %898 = trunc i32 %897 to i8, !dbg !1931
  %899 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !1931
  %900 = getelementptr inbounds i8, i8* %899, i64 0, !dbg !1931
  store i8 %898, i8* %900, align 1, !dbg !1931
  %901 = lshr i32 %495, 8, !dbg !1931
  %902 = trunc i32 %901 to i8, !dbg !1931
  %903 = zext i8 %902 to i32, !dbg !1931
  %904 = and i32 %903, 255, !dbg !1931
  %905 = trunc i32 %904 to i8, !dbg !1931
  %906 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !1931
  %907 = getelementptr inbounds i8, i8* %906, i64 1, !dbg !1931
  store i8 %905, i8* %907, align 1, !dbg !1931
  %908 = lshr i32 %495, 16, !dbg !1931
  %909 = trunc i32 %908 to i8, !dbg !1931
  %910 = zext i8 %909 to i32, !dbg !1931
  %911 = and i32 %910, 255, !dbg !1931
  %912 = trunc i32 %911 to i8, !dbg !1931
  %913 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !1931
  %914 = getelementptr inbounds i8, i8* %913, i64 2, !dbg !1931
  store i8 %912, i8* %914, align 1, !dbg !1931
  %915 = lshr i32 %495, 24, !dbg !1931
  %916 = trunc i32 %915 to i8, !dbg !1931
  %917 = zext i8 %916 to i32, !dbg !1931
  %918 = and i32 %917, 255, !dbg !1931
  %919 = trunc i32 %918 to i8, !dbg !1931
  %920 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !1931
  %921 = getelementptr inbounds i8, i8* %920, i64 3, !dbg !1931
  store i8 %919, i8* %921, align 1, !dbg !1931
  br label %922, !dbg !1931

922:                                              ; preds = %894
  br label %923, !dbg !1933

923:                                              ; preds = %922
  %924 = trunc i32 %518 to i8, !dbg !1934
  %925 = zext i8 %924 to i32, !dbg !1934
  %926 = and i32 %925, 255, !dbg !1934
  %927 = trunc i32 %926 to i8, !dbg !1934
  %928 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !1934
  %929 = getelementptr inbounds i8, i8* %928, i64 0, !dbg !1934
  store i8 %927, i8* %929, align 1, !dbg !1934
  %930 = lshr i32 %518, 8, !dbg !1934
  %931 = trunc i32 %930 to i8, !dbg !1934
  %932 = zext i8 %931 to i32, !dbg !1934
  %933 = and i32 %932, 255, !dbg !1934
  %934 = trunc i32 %933 to i8, !dbg !1934
  %935 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !1934
  %936 = getelementptr inbounds i8, i8* %935, i64 1, !dbg !1934
  store i8 %934, i8* %936, align 1, !dbg !1934
  %937 = lshr i32 %518, 16, !dbg !1934
  %938 = trunc i32 %937 to i8, !dbg !1934
  %939 = zext i8 %938 to i32, !dbg !1934
  %940 = and i32 %939, 255, !dbg !1934
  %941 = trunc i32 %940 to i8, !dbg !1934
  %942 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !1934
  %943 = getelementptr inbounds i8, i8* %942, i64 2, !dbg !1934
  store i8 %941, i8* %943, align 1, !dbg !1934
  %944 = lshr i32 %518, 24, !dbg !1934
  %945 = trunc i32 %944 to i8, !dbg !1934
  %946 = zext i8 %945 to i32, !dbg !1934
  %947 = and i32 %946, 255, !dbg !1934
  %948 = trunc i32 %947 to i8, !dbg !1934
  %949 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !1934
  %950 = getelementptr inbounds i8, i8* %949, i64 3, !dbg !1934
  store i8 %948, i8* %950, align 1, !dbg !1934
  br label %951, !dbg !1934

951:                                              ; preds = %923
  br label %952, !dbg !1936

952:                                              ; preds = %951
  %953 = trunc i32 %541 to i8, !dbg !1937
  %954 = zext i8 %953 to i32, !dbg !1937
  %955 = and i32 %954, 255, !dbg !1937
  %956 = trunc i32 %955 to i8, !dbg !1937
  %957 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !1937
  %958 = getelementptr inbounds i8, i8* %957, i64 0, !dbg !1937
  store i8 %956, i8* %958, align 1, !dbg !1937
  %959 = lshr i32 %541, 8, !dbg !1937
  %960 = trunc i32 %959 to i8, !dbg !1937
  %961 = zext i8 %960 to i32, !dbg !1937
  %962 = and i32 %961, 255, !dbg !1937
  %963 = trunc i32 %962 to i8, !dbg !1937
  %964 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !1937
  %965 = getelementptr inbounds i8, i8* %964, i64 1, !dbg !1937
  store i8 %963, i8* %965, align 1, !dbg !1937
  %966 = lshr i32 %541, 16, !dbg !1937
  %967 = trunc i32 %966 to i8, !dbg !1937
  %968 = zext i8 %967 to i32, !dbg !1937
  %969 = and i32 %968, 255, !dbg !1937
  %970 = trunc i32 %969 to i8, !dbg !1937
  %971 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !1937
  %972 = getelementptr inbounds i8, i8* %971, i64 2, !dbg !1937
  store i8 %970, i8* %972, align 1, !dbg !1937
  %973 = lshr i32 %541, 24, !dbg !1937
  %974 = trunc i32 %973 to i8, !dbg !1937
  %975 = zext i8 %974 to i32, !dbg !1937
  %976 = and i32 %975, 255, !dbg !1937
  %977 = trunc i32 %976 to i8, !dbg !1937
  %978 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !1937
  %979 = getelementptr inbounds i8, i8* %978, i64 3, !dbg !1937
  store i8 %977, i8* %979, align 1, !dbg !1937
  br label %980, !dbg !1937

980:                                              ; preds = %952
  br label %981, !dbg !1939

981:                                              ; preds = %980
  %982 = trunc i32 %564 to i8, !dbg !1940
  %983 = zext i8 %982 to i32, !dbg !1940
  %984 = and i32 %983, 255, !dbg !1940
  %985 = trunc i32 %984 to i8, !dbg !1940
  %986 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !1940
  %987 = getelementptr inbounds i8, i8* %986, i64 0, !dbg !1940
  store i8 %985, i8* %987, align 1, !dbg !1940
  %988 = lshr i32 %564, 8, !dbg !1940
  %989 = trunc i32 %988 to i8, !dbg !1940
  %990 = zext i8 %989 to i32, !dbg !1940
  %991 = and i32 %990, 255, !dbg !1940
  %992 = trunc i32 %991 to i8, !dbg !1940
  %993 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !1940
  %994 = getelementptr inbounds i8, i8* %993, i64 1, !dbg !1940
  store i8 %992, i8* %994, align 1, !dbg !1940
  %995 = lshr i32 %564, 16, !dbg !1940
  %996 = trunc i32 %995 to i8, !dbg !1940
  %997 = zext i8 %996 to i32, !dbg !1940
  %998 = and i32 %997, 255, !dbg !1940
  %999 = trunc i32 %998 to i8, !dbg !1940
  %1000 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !1940
  %1001 = getelementptr inbounds i8, i8* %1000, i64 2, !dbg !1940
  store i8 %999, i8* %1001, align 1, !dbg !1940
  %1002 = lshr i32 %564, 24, !dbg !1940
  %1003 = trunc i32 %1002 to i8, !dbg !1940
  %1004 = zext i8 %1003 to i32, !dbg !1940
  %1005 = and i32 %1004, 255, !dbg !1940
  %1006 = trunc i32 %1005 to i8, !dbg !1940
  %1007 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !1940
  %1008 = getelementptr inbounds i8, i8* %1007, i64 3, !dbg !1940
  store i8 %1006, i8* %1008, align 1, !dbg !1940
  br label %1009, !dbg !1940

1009:                                             ; preds = %981
  br label %1010, !dbg !1942

1010:                                             ; preds = %1009
  %1011 = trunc i32 %587 to i8, !dbg !1943
  %1012 = zext i8 %1011 to i32, !dbg !1943
  %1013 = and i32 %1012, 255, !dbg !1943
  %1014 = trunc i32 %1013 to i8, !dbg !1943
  %1015 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !1943
  %1016 = getelementptr inbounds i8, i8* %1015, i64 0, !dbg !1943
  store i8 %1014, i8* %1016, align 1, !dbg !1943
  %1017 = lshr i32 %587, 8, !dbg !1943
  %1018 = trunc i32 %1017 to i8, !dbg !1943
  %1019 = zext i8 %1018 to i32, !dbg !1943
  %1020 = and i32 %1019, 255, !dbg !1943
  %1021 = trunc i32 %1020 to i8, !dbg !1943
  %1022 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !1943
  %1023 = getelementptr inbounds i8, i8* %1022, i64 1, !dbg !1943
  store i8 %1021, i8* %1023, align 1, !dbg !1943
  %1024 = lshr i32 %587, 16, !dbg !1943
  %1025 = trunc i32 %1024 to i8, !dbg !1943
  %1026 = zext i8 %1025 to i32, !dbg !1943
  %1027 = and i32 %1026, 255, !dbg !1943
  %1028 = trunc i32 %1027 to i8, !dbg !1943
  %1029 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !1943
  %1030 = getelementptr inbounds i8, i8* %1029, i64 2, !dbg !1943
  store i8 %1028, i8* %1030, align 1, !dbg !1943
  %1031 = lshr i32 %587, 24, !dbg !1943
  %1032 = trunc i32 %1031 to i8, !dbg !1943
  %1033 = zext i8 %1032 to i32, !dbg !1943
  %1034 = and i32 %1033, 255, !dbg !1943
  %1035 = trunc i32 %1034 to i8, !dbg !1943
  %1036 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !1943
  %1037 = getelementptr inbounds i8, i8* %1036, i64 3, !dbg !1943
  store i8 %1035, i8* %1037, align 1, !dbg !1943
  br label %1038, !dbg !1943

1038:                                             ; preds = %1010
  br label %1039, !dbg !1945

1039:                                             ; preds = %1038
  %1040 = trunc i32 %610 to i8, !dbg !1946
  %1041 = zext i8 %1040 to i32, !dbg !1946
  %1042 = and i32 %1041, 255, !dbg !1946
  %1043 = trunc i32 %1042 to i8, !dbg !1946
  %1044 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !1946
  %1045 = getelementptr inbounds i8, i8* %1044, i64 0, !dbg !1946
  store i8 %1043, i8* %1045, align 1, !dbg !1946
  %1046 = lshr i32 %610, 8, !dbg !1946
  %1047 = trunc i32 %1046 to i8, !dbg !1946
  %1048 = zext i8 %1047 to i32, !dbg !1946
  %1049 = and i32 %1048, 255, !dbg !1946
  %1050 = trunc i32 %1049 to i8, !dbg !1946
  %1051 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !1946
  %1052 = getelementptr inbounds i8, i8* %1051, i64 1, !dbg !1946
  store i8 %1050, i8* %1052, align 1, !dbg !1946
  %1053 = lshr i32 %610, 16, !dbg !1946
  %1054 = trunc i32 %1053 to i8, !dbg !1946
  %1055 = zext i8 %1054 to i32, !dbg !1946
  %1056 = and i32 %1055, 255, !dbg !1946
  %1057 = trunc i32 %1056 to i8, !dbg !1946
  %1058 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !1946
  %1059 = getelementptr inbounds i8, i8* %1058, i64 2, !dbg !1946
  store i8 %1057, i8* %1059, align 1, !dbg !1946
  %1060 = lshr i32 %610, 24, !dbg !1946
  %1061 = trunc i32 %1060 to i8, !dbg !1946
  %1062 = zext i8 %1061 to i32, !dbg !1946
  %1063 = and i32 %1062, 255, !dbg !1946
  %1064 = trunc i32 %1063 to i8, !dbg !1946
  %1065 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !1946
  %1066 = getelementptr inbounds i8, i8* %1065, i64 3, !dbg !1946
  store i8 %1064, i8* %1066, align 1, !dbg !1946
  br label %1067, !dbg !1946

1067:                                             ; preds = %1039
  br label %1068, !dbg !1948

1068:                                             ; preds = %1067
  %1069 = trunc i32 %633 to i8, !dbg !1949
  %1070 = zext i8 %1069 to i32, !dbg !1949
  %1071 = and i32 %1070, 255, !dbg !1949
  %1072 = trunc i32 %1071 to i8, !dbg !1949
  %1073 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !1949
  %1074 = getelementptr inbounds i8, i8* %1073, i64 0, !dbg !1949
  store i8 %1072, i8* %1074, align 1, !dbg !1949
  %1075 = lshr i32 %633, 8, !dbg !1949
  %1076 = trunc i32 %1075 to i8, !dbg !1949
  %1077 = zext i8 %1076 to i32, !dbg !1949
  %1078 = and i32 %1077, 255, !dbg !1949
  %1079 = trunc i32 %1078 to i8, !dbg !1949
  %1080 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !1949
  %1081 = getelementptr inbounds i8, i8* %1080, i64 1, !dbg !1949
  store i8 %1079, i8* %1081, align 1, !dbg !1949
  %1082 = lshr i32 %633, 16, !dbg !1949
  %1083 = trunc i32 %1082 to i8, !dbg !1949
  %1084 = zext i8 %1083 to i32, !dbg !1949
  %1085 = and i32 %1084, 255, !dbg !1949
  %1086 = trunc i32 %1085 to i8, !dbg !1949
  %1087 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !1949
  %1088 = getelementptr inbounds i8, i8* %1087, i64 2, !dbg !1949
  store i8 %1086, i8* %1088, align 1, !dbg !1949
  %1089 = lshr i32 %633, 24, !dbg !1949
  %1090 = trunc i32 %1089 to i8, !dbg !1949
  %1091 = zext i8 %1090 to i32, !dbg !1949
  %1092 = and i32 %1091, 255, !dbg !1949
  %1093 = trunc i32 %1092 to i8, !dbg !1949
  %1094 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !1949
  %1095 = getelementptr inbounds i8, i8* %1094, i64 3, !dbg !1949
  store i8 %1093, i8* %1095, align 1, !dbg !1949
  br label %1096, !dbg !1949

1096:                                             ; preds = %1068
  br label %1097, !dbg !1951

1097:                                             ; preds = %1096
  %1098 = trunc i32 %656 to i8, !dbg !1952
  %1099 = zext i8 %1098 to i32, !dbg !1952
  %1100 = and i32 %1099, 255, !dbg !1952
  %1101 = trunc i32 %1100 to i8, !dbg !1952
  %1102 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !1952
  %1103 = getelementptr inbounds i8, i8* %1102, i64 0, !dbg !1952
  store i8 %1101, i8* %1103, align 1, !dbg !1952
  %1104 = lshr i32 %656, 8, !dbg !1952
  %1105 = trunc i32 %1104 to i8, !dbg !1952
  %1106 = zext i8 %1105 to i32, !dbg !1952
  %1107 = and i32 %1106, 255, !dbg !1952
  %1108 = trunc i32 %1107 to i8, !dbg !1952
  %1109 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !1952
  %1110 = getelementptr inbounds i8, i8* %1109, i64 1, !dbg !1952
  store i8 %1108, i8* %1110, align 1, !dbg !1952
  %1111 = lshr i32 %656, 16, !dbg !1952
  %1112 = trunc i32 %1111 to i8, !dbg !1952
  %1113 = zext i8 %1112 to i32, !dbg !1952
  %1114 = and i32 %1113, 255, !dbg !1952
  %1115 = trunc i32 %1114 to i8, !dbg !1952
  %1116 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !1952
  %1117 = getelementptr inbounds i8, i8* %1116, i64 2, !dbg !1952
  store i8 %1115, i8* %1117, align 1, !dbg !1952
  %1118 = lshr i32 %656, 24, !dbg !1952
  %1119 = trunc i32 %1118 to i8, !dbg !1952
  %1120 = zext i8 %1119 to i32, !dbg !1952
  %1121 = and i32 %1120, 255, !dbg !1952
  %1122 = trunc i32 %1121 to i8, !dbg !1952
  %1123 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !1952
  %1124 = getelementptr inbounds i8, i8* %1123, i64 3, !dbg !1952
  store i8 %1122, i8* %1124, align 1, !dbg !1952
  br label %1125, !dbg !1952

1125:                                             ; preds = %1097
  %1126 = icmp ule i64 %.05, 64, !dbg !1954
  br i1 %1126, label %1127, label %1147, !dbg !1956

1127:                                             ; preds = %1125
  %1128 = icmp ult i64 %.05, 64, !dbg !1957
  br i1 %1128, label %1129, label %1142, !dbg !1960

1129:                                             ; preds = %1127
  call void @llvm.dbg.value(metadata i32 0, metadata !1809, metadata !DIExpression()), !dbg !1740
  br label %1130, !dbg !1961

1130:                                             ; preds = %1139, %1129
  %.2 = phi i32 [ 0, %1129 ], [ %1140, %1139 ], !dbg !1964
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1809, metadata !DIExpression()), !dbg !1740
  %1131 = trunc i64 %.05 to i32, !dbg !1965
  %1132 = icmp ult i32 %.2, %1131, !dbg !1967
  br i1 %1132, label %1133, label %1141, !dbg !1968

1133:                                             ; preds = %1130
  %1134 = zext i32 %.2 to i64, !dbg !1969
  %1135 = getelementptr inbounds i8, i8* %.14, i64 %1134, !dbg !1969
  %1136 = load i8, i8* %1135, align 1, !dbg !1969
  %1137 = zext i32 %.2 to i64, !dbg !1971
  %1138 = getelementptr inbounds i8, i8* %.123, i64 %1137, !dbg !1971
  store i8 %1136, i8* %1138, align 1, !dbg !1972
  br label %1139, !dbg !1973

1139:                                             ; preds = %1133
  %1140 = add i32 %.2, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %1140, metadata !1809, metadata !DIExpression()), !dbg !1740
  br label %1130, !dbg !1975, !llvm.loop !1976

1141:                                             ; preds = %1130
  br label %1142, !dbg !1978

1142:                                             ; preds = %1141, %1127
  %1143 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1979
  %1144 = getelementptr inbounds [16 x i32], [16 x i32]* %1143, i64 0, i64 12, !dbg !1980
  store i32 %657, i32* %1144, align 4, !dbg !1981
  %1145 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !1982
  %1146 = getelementptr inbounds [16 x i32], [16 x i32]* %1145, i64 0, i64 13, !dbg !1983
  store i32 %.125, i32* %1146, align 4, !dbg !1984
  br label %1151, !dbg !1985

1147:                                             ; preds = %1125
  %1148 = sub i64 %.05, 64, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %1148, metadata !1743, metadata !DIExpression()), !dbg !1740
  %1149 = getelementptr inbounds i8, i8* %.14, i64 64, !dbg !1987
  call void @llvm.dbg.value(metadata i8* %1149, metadata !1742, metadata !DIExpression()), !dbg !1740
  %1150 = getelementptr inbounds i8, i8* %.12, i64 64, !dbg !1988
  call void @llvm.dbg.value(metadata i8* %1150, metadata !1741, metadata !DIExpression()), !dbg !1740
  br label %57, !dbg !1989, !llvm.loop !1990

1151:                                             ; preds = %1142, %7
  ret void, !dbg !1993
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 !dbg !1994 {
  %7 = alloca %struct.chacha_ctx, align 4
  %8 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1995, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* %1, metadata !1997, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %2, metadata !1998, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* %3, metadata !1999, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i64 %4, metadata !2000, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* %5, metadata !2001, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.declare(metadata %struct.chacha_ctx* %7, metadata !2002, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.declare(metadata [8 x i8]* %8, metadata !2004, metadata !DIExpression()), !dbg !2006
  %9 = icmp ne i64 %2, 0, !dbg !2007
  br i1 %9, label %11, label %10, !dbg !2009

10:                                               ; preds = %6
  br label %76, !dbg !2010

11:                                               ; preds = %6
  %12 = lshr i64 %4, 32, !dbg !2012
  %13 = trunc i64 %12 to i32, !dbg !2012
  call void @llvm.dbg.value(metadata i32 %13, metadata !2013, metadata !DIExpression()), !dbg !1996
  %14 = trunc i64 %4 to i32, !dbg !2014
  call void @llvm.dbg.value(metadata i32 %14, metadata !2015, metadata !DIExpression()), !dbg !1996
  br label %15, !dbg !2016

15:                                               ; preds = %11
  %16 = trunc i32 %14 to i8, !dbg !2017
  %17 = zext i8 %16 to i32, !dbg !2017
  %18 = and i32 %17, 255, !dbg !2017
  %19 = trunc i32 %18 to i8, !dbg !2017
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2017
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !2017
  store i8 %19, i8* %21, align 1, !dbg !2017
  %22 = lshr i32 %14, 8, !dbg !2017
  %23 = trunc i32 %22 to i8, !dbg !2017
  %24 = zext i8 %23 to i32, !dbg !2017
  %25 = and i32 %24, 255, !dbg !2017
  %26 = trunc i32 %25 to i8, !dbg !2017
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2017
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !2017
  store i8 %26, i8* %28, align 1, !dbg !2017
  %29 = lshr i32 %14, 16, !dbg !2017
  %30 = trunc i32 %29 to i8, !dbg !2017
  %31 = zext i8 %30 to i32, !dbg !2017
  %32 = and i32 %31, 255, !dbg !2017
  %33 = trunc i32 %32 to i8, !dbg !2017
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2017
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !2017
  store i8 %33, i8* %35, align 1, !dbg !2017
  %36 = lshr i32 %14, 24, !dbg !2017
  %37 = trunc i32 %36 to i8, !dbg !2017
  %38 = zext i8 %37 to i32, !dbg !2017
  %39 = and i32 %38, 255, !dbg !2017
  %40 = trunc i32 %39 to i8, !dbg !2017
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2017
  %42 = getelementptr inbounds i8, i8* %41, i64 3, !dbg !2017
  store i8 %40, i8* %42, align 1, !dbg !2017
  br label %43, !dbg !2017

43:                                               ; preds = %15
  br label %44, !dbg !2019

44:                                               ; preds = %43
  %45 = trunc i32 %13 to i8, !dbg !2020
  %46 = zext i8 %45 to i32, !dbg !2020
  %47 = and i32 %46, 255, !dbg !2020
  %48 = trunc i32 %47 to i8, !dbg !2020
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !2020
  %50 = getelementptr inbounds i8, i8* %49, i64 0, !dbg !2020
  store i8 %48, i8* %50, align 1, !dbg !2020
  %51 = lshr i32 %13, 8, !dbg !2020
  %52 = trunc i32 %51 to i8, !dbg !2020
  %53 = zext i8 %52 to i32, !dbg !2020
  %54 = and i32 %53, 255, !dbg !2020
  %55 = trunc i32 %54 to i8, !dbg !2020
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !2020
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !2020
  store i8 %55, i8* %57, align 1, !dbg !2020
  %58 = lshr i32 %13, 16, !dbg !2020
  %59 = trunc i32 %58 to i8, !dbg !2020
  %60 = zext i8 %59 to i32, !dbg !2020
  %61 = and i32 %60, 255, !dbg !2020
  %62 = trunc i32 %61 to i8, !dbg !2020
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !2020
  %64 = getelementptr inbounds i8, i8* %63, i64 2, !dbg !2020
  store i8 %62, i8* %64, align 1, !dbg !2020
  %65 = lshr i32 %13, 24, !dbg !2020
  %66 = trunc i32 %65 to i8, !dbg !2020
  %67 = zext i8 %66 to i32, !dbg !2020
  %68 = and i32 %67, 255, !dbg !2020
  %69 = trunc i32 %68 to i8, !dbg !2020
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !2020
  %71 = getelementptr inbounds i8, i8* %70, i64 3, !dbg !2020
  store i8 %69, i8* %71, align 1, !dbg !2020
  br label %72, !dbg !2020

72:                                               ; preds = %44
  call void @chacha_keysetup(%struct.chacha_ctx* %7, i8* %5), !dbg !2022
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2023
  call void @chacha_ivsetup(%struct.chacha_ctx* %7, i8* %3, i8* %73), !dbg !2024
  call void @chacha_encrypt_bytes(%struct.chacha_ctx* %7, i8* %1, i8* %0, i64 %2), !dbg !2025
  %74 = bitcast %struct.chacha_ctx* %7 to i8*, !dbg !2026
  call void @sodium_memzero(i8* %74, i64 64), !dbg !2027
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2028
  call void @sodium_memzero(i8* %75, i64 8), !dbg !2029
  br label %76, !dbg !2030

76:                                               ; preds = %72, %10
  ret i32 0, !dbg !2031
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !2032 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2033, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i64 %1, metadata !2035, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i8* %0, metadata !2036, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i64 0, metadata !2037, metadata !DIExpression()), !dbg !2034
  br label %3, !dbg !2038

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !2034
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2037, metadata !DIExpression()), !dbg !2034
  %4 = icmp ult i64 %.0, %1, !dbg !2039
  br i1 %4, label %5, label %8, !dbg !2038

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %6, metadata !2037, metadata !DIExpression()), !dbg !2034
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !2042
  store volatile i8 0, i8* %7, align 1, !dbg !2043
  br label %3, !dbg !2038, !llvm.loop !2044

8:                                                ; preds = %3
  ret void, !dbg !2046
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !2047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2053, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8* %1, metadata !2055, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %2, metadata !2056, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8* %0, metadata !2057, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8* %1, metadata !2058, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 0, metadata !2060, metadata !DIExpression()), !dbg !2054
  br label %4, !dbg !2061

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !2063
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !2054
  call void @llvm.dbg.value(metadata i8 %.0, metadata !2059, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2060, metadata !DIExpression()), !dbg !2054
  %5 = icmp ult i64 %.01, %2, !dbg !2064
  br i1 %5, label %6, label %19, !dbg !2066

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !2067
  %8 = load i8, i8* %7, align 1, !dbg !2067
  %9 = zext i8 %8 to i32, !dbg !2067
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !2069
  %11 = load i8, i8* %10, align 1, !dbg !2069
  %12 = zext i8 %11 to i32, !dbg !2069
  %13 = xor i32 %9, %12, !dbg !2070
  %14 = zext i8 %.0 to i32, !dbg !2071
  %15 = or i32 %14, %13, !dbg !2071
  %16 = trunc i32 %15 to i8, !dbg !2071
  call void @llvm.dbg.value(metadata i8 %16, metadata !2059, metadata !DIExpression()), !dbg !2054
  br label %17, !dbg !2072

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %18, metadata !2060, metadata !DIExpression()), !dbg !2054
  br label %4, !dbg !2074, !llvm.loop !2075

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !2077
  %21 = sub nsw i32 %20, 1, !dbg !2078
  %22 = ashr i32 %21, 8, !dbg !2079
  %23 = and i32 1, %22, !dbg !2080
  %24 = sub nsw i32 %23, 1, !dbg !2081
  ret i32 %24, !dbg !2082
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !2083 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2089, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i64 %1, metadata !2091, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %2, metadata !2092, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i64 %3, metadata !2093, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i64 0, metadata !2094, metadata !DIExpression()), !dbg !2090
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !2095
  br i1 %5, label %9, label %6, !dbg !2097

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !2098
  %8 = icmp ult i64 %1, %7, !dbg !2099
  br i1 %8, label %9, label %10, !dbg !2100

9:                                                ; preds = %6, %4
  call void @abort() #8, !dbg !2101
  unreachable, !dbg !2101

10:                                               ; preds = %6
  br label %11, !dbg !2103

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !2090
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2094, metadata !DIExpression()), !dbg !2090
  %12 = icmp ult i64 %.0, %3, !dbg !2104
  br i1 %12, label %13, label %47, !dbg !2103

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !2105
  %15 = load i8, i8* %14, align 1, !dbg !2105
  %16 = zext i8 %15 to i32, !dbg !2105
  %17 = and i32 %16, 15, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %17, metadata !2108, metadata !DIExpression()), !dbg !2090
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !2109
  %19 = load i8, i8* %18, align 1, !dbg !2109
  %20 = zext i8 %19 to i32, !dbg !2109
  %21 = ashr i32 %20, 4, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %21, metadata !2111, metadata !DIExpression()), !dbg !2090
  %22 = add i32 87, %17, !dbg !2112
  %23 = sub i32 %17, 10, !dbg !2113
  %24 = lshr i32 %23, 8, !dbg !2114
  %25 = and i32 %24, -39, !dbg !2115
  %26 = add i32 %22, %25, !dbg !2116
  %27 = trunc i32 %26 to i8, !dbg !2117
  %28 = zext i8 %27 to i32, !dbg !2117
  %29 = shl i32 %28, 8, !dbg !2118
  %30 = add i32 87, %21, !dbg !2119
  %31 = sub i32 %21, 10, !dbg !2120
  %32 = lshr i32 %31, 8, !dbg !2121
  %33 = and i32 %32, -39, !dbg !2122
  %34 = add i32 %30, %33, !dbg !2123
  %35 = trunc i32 %34 to i8, !dbg !2124
  %36 = zext i8 %35 to i32, !dbg !2124
  %37 = or i32 %29, %36, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %37, metadata !2126, metadata !DIExpression()), !dbg !2090
  %38 = trunc i32 %37 to i8, !dbg !2127
  %39 = mul i64 %.0, 2, !dbg !2128
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !2129
  store i8 %38, i8* %40, align 1, !dbg !2130
  %41 = lshr i32 %37, 8, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %41, metadata !2126, metadata !DIExpression()), !dbg !2090
  %42 = trunc i32 %41 to i8, !dbg !2132
  %43 = mul i64 %.0, 2, !dbg !2133
  %44 = add i64 %43, 1, !dbg !2134
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !2135
  store i8 %42, i8* %45, align 1, !dbg !2136
  %46 = add i64 %.0, 1, !dbg !2137
  call void @llvm.dbg.value(metadata i64 %46, metadata !2094, metadata !DIExpression()), !dbg !2090
  br label %11, !dbg !2103, !llvm.loop !2138

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !2140
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !2141
  store i8 0, i8* %49, align 1, !dbg !2142
  ret i8* %0, !dbg !2143
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !2144 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2151, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %1, metadata !2153, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %2, metadata !2154, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %3, metadata !2155, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %4, metadata !2156, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64* %5, metadata !2157, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8** %6, metadata !2158, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 0, metadata !2159, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 0, metadata !2160, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i32 0, metadata !2161, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 0, metadata !2163, metadata !DIExpression()), !dbg !2152
  br label %8, !dbg !2164

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !2165
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !2152
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !2152
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8 %.0, metadata !2163, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 %.01, metadata !2162, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %.03, metadata !2160, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %.05, metadata !2159, metadata !DIExpression()), !dbg !2152
  %9 = icmp ult i64 %.03, %3, !dbg !2166
  br i1 %9, label %10, label %78, !dbg !2164

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !2167
  %12 = load i8, i8* %11, align 1, !dbg !2167
  call void @llvm.dbg.value(metadata i8 %12, metadata !2169, metadata !DIExpression()), !dbg !2152
  %13 = zext i8 %12 to i32, !dbg !2170
  %14 = xor i32 %13, 48, !dbg !2171
  %15 = trunc i32 %14 to i8, !dbg !2170
  call void @llvm.dbg.value(metadata i8 %15, metadata !2172, metadata !DIExpression()), !dbg !2152
  %16 = zext i8 %15 to i32, !dbg !2173
  %17 = sub i32 %16, 10, !dbg !2174
  %18 = lshr i32 %17, 8, !dbg !2175
  %19 = trunc i32 %18 to i8, !dbg !2176
  call void @llvm.dbg.value(metadata i8 %19, metadata !2177, metadata !DIExpression()), !dbg !2152
  %20 = zext i8 %12 to i32, !dbg !2178
  %21 = and i32 %20, -33, !dbg !2179
  %22 = sub i32 %21, 55, !dbg !2180
  %23 = trunc i32 %22 to i8, !dbg !2181
  call void @llvm.dbg.value(metadata i8 %23, metadata !2182, metadata !DIExpression()), !dbg !2152
  %24 = zext i8 %23 to i32, !dbg !2183
  %25 = sub i32 %24, 10, !dbg !2184
  %26 = zext i8 %23 to i32, !dbg !2185
  %27 = sub i32 %26, 16, !dbg !2186
  %28 = xor i32 %25, %27, !dbg !2187
  %29 = lshr i32 %28, 8, !dbg !2188
  %30 = trunc i32 %29 to i8, !dbg !2189
  call void @llvm.dbg.value(metadata i8 %30, metadata !2190, metadata !DIExpression()), !dbg !2152
  %31 = zext i8 %19 to i32, !dbg !2191
  %32 = zext i8 %30 to i32, !dbg !2193
  %33 = or i32 %31, %32, !dbg !2194
  %34 = icmp eq i32 %33, 0, !dbg !2195
  br i1 %34, label %35, label %47, !dbg !2196

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !2197
  br i1 %36, label %37, label %46, !dbg !2200

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !2201
  %39 = icmp eq i32 %38, 0, !dbg !2202
  br i1 %39, label %40, label %46, !dbg !2203

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !2204
  %42 = call i8* @strchr(i8* %4, i32 %41) #11, !dbg !2205
  %43 = icmp ne i8* %42, null, !dbg !2206
  br i1 %43, label %44, label %46, !dbg !2207

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %45, metadata !2160, metadata !DIExpression()), !dbg !2152
  br label %8, !dbg !2210, !llvm.loop !2211

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !2213

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !2214
  %49 = zext i8 %15 to i32, !dbg !2215
  %50 = and i32 %48, %49, !dbg !2216
  %51 = zext i8 %30 to i32, !dbg !2217
  %52 = zext i8 %23 to i32, !dbg !2218
  %53 = and i32 %51, %52, !dbg !2219
  %54 = or i32 %50, %53, !dbg !2220
  %55 = trunc i32 %54 to i8, !dbg !2221
  call void @llvm.dbg.value(metadata i8 %55, metadata !2222, metadata !DIExpression()), !dbg !2152
  %56 = icmp uge i64 %.05, %1, !dbg !2223
  br i1 %56, label %57, label %59, !dbg !2225

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !2161, metadata !DIExpression()), !dbg !2152
  %58 = call i32* @__errno_location() #9, !dbg !2226
  store i32 34, i32* %58, align 4, !dbg !2228
  br label %78, !dbg !2229

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !2230
  %61 = icmp eq i32 %60, 0, !dbg !2232
  br i1 %61, label %62, label %66, !dbg !2233

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !2234
  %64 = mul i32 %63, 16, !dbg !2236
  %65 = trunc i32 %64 to i8, !dbg !2234
  call void @llvm.dbg.value(metadata i8 %65, metadata !2162, metadata !DIExpression()), !dbg !2152
  br label %73, !dbg !2237

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !2238
  %68 = zext i8 %55 to i32, !dbg !2240
  %69 = or i32 %67, %68, !dbg !2241
  %70 = trunc i32 %69 to i8, !dbg !2238
  %71 = add i64 %.05, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %71, metadata !2159, metadata !DIExpression()), !dbg !2152
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !2243
  store i8 %70, i8* %72, align 1, !dbg !2244
  br label %73

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !2152
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !2152
  call void @llvm.dbg.value(metadata i8 %.1, metadata !2162, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %.16, metadata !2159, metadata !DIExpression()), !dbg !2152
  %74 = zext i8 %.0 to i32, !dbg !2245
  %75 = xor i32 %74, -1, !dbg !2246
  %76 = trunc i32 %75 to i8, !dbg !2246
  call void @llvm.dbg.value(metadata i8 %76, metadata !2163, metadata !DIExpression()), !dbg !2152
  %77 = add i64 %.03, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %77, metadata !2160, metadata !DIExpression()), !dbg !2152
  br label %8, !dbg !2164, !llvm.loop !2211

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !2152
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2161, metadata !DIExpression()), !dbg !2152
  %79 = zext i8 %.0 to i32, !dbg !2248
  %80 = icmp ne i32 %79, 0, !dbg !2250
  br i1 %80, label %81, label %83, !dbg !2251

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %82, metadata !2160, metadata !DIExpression()), !dbg !2152
  br label %83, !dbg !2254

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !2152
  call void @llvm.dbg.value(metadata i64 %.14, metadata !2160, metadata !DIExpression()), !dbg !2152
  %84 = icmp ne i8** %6, null, !dbg !2255
  br i1 %84, label %85, label %87, !dbg !2257

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !2258
  store i8* %86, i8** %6, align 8, !dbg !2260
  br label %87, !dbg !2261

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !2262
  br i1 %88, label %89, label %90, !dbg !2264

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !2265
  br label %90, !dbg !2267

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !2268
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !2269 {
  call void @randombytes_buf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @canary, i64 0, i64 0), i64 16), !dbg !2270
  ret i32 0, !dbg !2271
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !2272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2273, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 %1, metadata !2275, metadata !DIExpression()), !dbg !2274
  %3 = call i32* @__errno_location() #9, !dbg !2276
  store i32 38, i32* %3, align 4, !dbg !2277
  ret i32 -1, !dbg !2278
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !2279 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2280, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %1, metadata !2282, metadata !DIExpression()), !dbg !2281
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !2283
  %3 = call i32* @__errno_location() #9, !dbg !2284
  store i32 38, i32* %3, align 4, !dbg !2285
  ret i32 -1, !dbg !2286
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !2287 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2290, metadata !DIExpression()), !dbg !2291
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %2, metadata !2294, metadata !DIExpression()), !dbg !2291
  %3 = icmp eq i8* %2, null, !dbg !2295
  br i1 %3, label %4, label %5, !dbg !2296

4:                                                ; preds = %1
  br label %6, !dbg !2297

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !2299
  br label %6, !dbg !2300

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !2291
  ret i8* %.0, !dbg !2301
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !2302 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2303, metadata !DIExpression()), !dbg !2304
  %2 = call noalias i8* @malloc(i64 %0) #10, !dbg !2305
  ret i8* %2, !dbg !2306
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !2307 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2310, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %1, metadata !2312, metadata !DIExpression()), !dbg !2311
  %3 = icmp ugt i64 %0, 0, !dbg !2313
  br i1 %3, label %4, label %9, !dbg !2315

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !2316
  %6 = icmp uge i64 %1, %5, !dbg !2317
  br i1 %6, label %7, label %9, !dbg !2318

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #9, !dbg !2319
  store i32 12, i32* %8, align 4, !dbg !2321
  br label %12, !dbg !2322

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %10, metadata !2324, metadata !DIExpression()), !dbg !2311
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !2325
  br label %12, !dbg !2326

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !2311
  ret i8* %.0, !dbg !2327
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !2328 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2331, metadata !DIExpression()), !dbg !2332
  call void @free(i8* %0) #10, !dbg !2333
  ret void, !dbg !2334
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !2335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2338, metadata !DIExpression()), !dbg !2339
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !2340
  ret i32 %2, !dbg !2341
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !2342 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2345, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %1, metadata !2347, metadata !DIExpression()), !dbg !2346
  %3 = call i32* @__errno_location() #9, !dbg !2348
  store i32 38, i32* %3, align 4, !dbg !2349
  ret i32 -1, !dbg !2350
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !2351 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !2357, metadata !DIExpression()), !dbg !2356
  %3 = call i32* @__errno_location() #9, !dbg !2358
  store i32 38, i32* %3, align 4, !dbg !2359
  ret i32 -1, !dbg !2360
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !2361 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2362, metadata !DIExpression()), !dbg !2363
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !2364
  ret i32 %2, !dbg !2365
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !2366 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2367, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i64 %1, metadata !2369, metadata !DIExpression()), !dbg !2368
  %3 = call i32* @__errno_location() #9, !dbg !2370
  store i32 38, i32* %3, align 4, !dbg !2371
  ret i32 -1, !dbg !2372
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !2373 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2374, metadata !DIExpression()), !dbg !2375
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !2376
  ret i32 %2, !dbg !2377
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !2378 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i64 %1, metadata !2381, metadata !DIExpression()), !dbg !2380
  %3 = call i32* @__errno_location() #9, !dbg !2382
  store i32 38, i32* %3, align 4, !dbg !2383
  ret i32 -1, !dbg !2384
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_verify_16(i8* %0, i8* %1) #0 !dbg !2385 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2388, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %1, metadata !2390, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 0, metadata !2391, metadata !DIExpression()), !dbg !2389
  %3 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2392
  %4 = load i8, i8* %3, align 1, !dbg !2392
  %5 = zext i8 %4 to i32, !dbg !2392
  %6 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !2392
  %7 = load i8, i8* %6, align 1, !dbg !2392
  %8 = zext i8 %7 to i32, !dbg !2392
  %9 = xor i32 %5, %8, !dbg !2392
  %10 = or i32 0, %9, !dbg !2392
  call void @llvm.dbg.value(metadata i32 %10, metadata !2391, metadata !DIExpression()), !dbg !2389
  %11 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2393
  %12 = load i8, i8* %11, align 1, !dbg !2393
  %13 = zext i8 %12 to i32, !dbg !2393
  %14 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2393
  %15 = load i8, i8* %14, align 1, !dbg !2393
  %16 = zext i8 %15 to i32, !dbg !2393
  %17 = xor i32 %13, %16, !dbg !2393
  %18 = or i32 %10, %17, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %18, metadata !2391, metadata !DIExpression()), !dbg !2389
  %19 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2394
  %20 = load i8, i8* %19, align 1, !dbg !2394
  %21 = zext i8 %20 to i32, !dbg !2394
  %22 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !2394
  %23 = load i8, i8* %22, align 1, !dbg !2394
  %24 = zext i8 %23 to i32, !dbg !2394
  %25 = xor i32 %21, %24, !dbg !2394
  %26 = or i32 %18, %25, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %26, metadata !2391, metadata !DIExpression()), !dbg !2389
  %27 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2395
  %28 = load i8, i8* %27, align 1, !dbg !2395
  %29 = zext i8 %28 to i32, !dbg !2395
  %30 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !2395
  %31 = load i8, i8* %30, align 1, !dbg !2395
  %32 = zext i8 %31 to i32, !dbg !2395
  %33 = xor i32 %29, %32, !dbg !2395
  %34 = or i32 %26, %33, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %34, metadata !2391, metadata !DIExpression()), !dbg !2389
  %35 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2396
  %36 = load i8, i8* %35, align 1, !dbg !2396
  %37 = zext i8 %36 to i32, !dbg !2396
  %38 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !2396
  %39 = load i8, i8* %38, align 1, !dbg !2396
  %40 = zext i8 %39 to i32, !dbg !2396
  %41 = xor i32 %37, %40, !dbg !2396
  %42 = or i32 %34, %41, !dbg !2396
  call void @llvm.dbg.value(metadata i32 %42, metadata !2391, metadata !DIExpression()), !dbg !2389
  %43 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !2397
  %44 = load i8, i8* %43, align 1, !dbg !2397
  %45 = zext i8 %44 to i32, !dbg !2397
  %46 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !2397
  %47 = load i8, i8* %46, align 1, !dbg !2397
  %48 = zext i8 %47 to i32, !dbg !2397
  %49 = xor i32 %45, %48, !dbg !2397
  %50 = or i32 %42, %49, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %50, metadata !2391, metadata !DIExpression()), !dbg !2389
  %51 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !2398
  %52 = load i8, i8* %51, align 1, !dbg !2398
  %53 = zext i8 %52 to i32, !dbg !2398
  %54 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !2398
  %55 = load i8, i8* %54, align 1, !dbg !2398
  %56 = zext i8 %55 to i32, !dbg !2398
  %57 = xor i32 %53, %56, !dbg !2398
  %58 = or i32 %50, %57, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %58, metadata !2391, metadata !DIExpression()), !dbg !2389
  %59 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !2399
  %60 = load i8, i8* %59, align 1, !dbg !2399
  %61 = zext i8 %60 to i32, !dbg !2399
  %62 = getelementptr inbounds i8, i8* %1, i64 7, !dbg !2399
  %63 = load i8, i8* %62, align 1, !dbg !2399
  %64 = zext i8 %63 to i32, !dbg !2399
  %65 = xor i32 %61, %64, !dbg !2399
  %66 = or i32 %58, %65, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %66, metadata !2391, metadata !DIExpression()), !dbg !2389
  %67 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2400
  %68 = load i8, i8* %67, align 1, !dbg !2400
  %69 = zext i8 %68 to i32, !dbg !2400
  %70 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !2400
  %71 = load i8, i8* %70, align 1, !dbg !2400
  %72 = zext i8 %71 to i32, !dbg !2400
  %73 = xor i32 %69, %72, !dbg !2400
  %74 = or i32 %66, %73, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %74, metadata !2391, metadata !DIExpression()), !dbg !2389
  %75 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !2401
  %76 = load i8, i8* %75, align 1, !dbg !2401
  %77 = zext i8 %76 to i32, !dbg !2401
  %78 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !2401
  %79 = load i8, i8* %78, align 1, !dbg !2401
  %80 = zext i8 %79 to i32, !dbg !2401
  %81 = xor i32 %77, %80, !dbg !2401
  %82 = or i32 %74, %81, !dbg !2401
  call void @llvm.dbg.value(metadata i32 %82, metadata !2391, metadata !DIExpression()), !dbg !2389
  %83 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !2402
  %84 = load i8, i8* %83, align 1, !dbg !2402
  %85 = zext i8 %84 to i32, !dbg !2402
  %86 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !2402
  %87 = load i8, i8* %86, align 1, !dbg !2402
  %88 = zext i8 %87 to i32, !dbg !2402
  %89 = xor i32 %85, %88, !dbg !2402
  %90 = or i32 %82, %89, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %90, metadata !2391, metadata !DIExpression()), !dbg !2389
  %91 = getelementptr inbounds i8, i8* %0, i64 11, !dbg !2403
  %92 = load i8, i8* %91, align 1, !dbg !2403
  %93 = zext i8 %92 to i32, !dbg !2403
  %94 = getelementptr inbounds i8, i8* %1, i64 11, !dbg !2403
  %95 = load i8, i8* %94, align 1, !dbg !2403
  %96 = zext i8 %95 to i32, !dbg !2403
  %97 = xor i32 %93, %96, !dbg !2403
  %98 = or i32 %90, %97, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %98, metadata !2391, metadata !DIExpression()), !dbg !2389
  %99 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !2404
  %100 = load i8, i8* %99, align 1, !dbg !2404
  %101 = zext i8 %100 to i32, !dbg !2404
  %102 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !2404
  %103 = load i8, i8* %102, align 1, !dbg !2404
  %104 = zext i8 %103 to i32, !dbg !2404
  %105 = xor i32 %101, %104, !dbg !2404
  %106 = or i32 %98, %105, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %106, metadata !2391, metadata !DIExpression()), !dbg !2389
  %107 = getelementptr inbounds i8, i8* %0, i64 13, !dbg !2405
  %108 = load i8, i8* %107, align 1, !dbg !2405
  %109 = zext i8 %108 to i32, !dbg !2405
  %110 = getelementptr inbounds i8, i8* %1, i64 13, !dbg !2405
  %111 = load i8, i8* %110, align 1, !dbg !2405
  %112 = zext i8 %111 to i32, !dbg !2405
  %113 = xor i32 %109, %112, !dbg !2405
  %114 = or i32 %106, %113, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %114, metadata !2391, metadata !DIExpression()), !dbg !2389
  %115 = getelementptr inbounds i8, i8* %0, i64 14, !dbg !2406
  %116 = load i8, i8* %115, align 1, !dbg !2406
  %117 = zext i8 %116 to i32, !dbg !2406
  %118 = getelementptr inbounds i8, i8* %1, i64 14, !dbg !2406
  %119 = load i8, i8* %118, align 1, !dbg !2406
  %120 = zext i8 %119 to i32, !dbg !2406
  %121 = xor i32 %117, %120, !dbg !2406
  %122 = or i32 %114, %121, !dbg !2406
  call void @llvm.dbg.value(metadata i32 %122, metadata !2391, metadata !DIExpression()), !dbg !2389
  %123 = getelementptr inbounds i8, i8* %0, i64 15, !dbg !2407
  %124 = load i8, i8* %123, align 1, !dbg !2407
  %125 = zext i8 %124 to i32, !dbg !2407
  %126 = getelementptr inbounds i8, i8* %1, i64 15, !dbg !2407
  %127 = load i8, i8* %126, align 1, !dbg !2407
  %128 = zext i8 %127 to i32, !dbg !2407
  %129 = xor i32 %125, %128, !dbg !2407
  %130 = or i32 %122, %129, !dbg !2407
  call void @llvm.dbg.value(metadata i32 %130, metadata !2391, metadata !DIExpression()), !dbg !2389
  %131 = sub i32 %130, 1, !dbg !2408
  %132 = lshr i32 %131, 8, !dbg !2409
  %133 = and i32 1, %132, !dbg !2410
  %134 = sub i32 %133, 1, !dbg !2411
  ret i32 %134, !dbg !2412
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_verify(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !2413 {
  %5 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !2414, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8* %1, metadata !2416, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i64 %2, metadata !2417, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8* %3, metadata !2418, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !2419, metadata !DIExpression()), !dbg !2420
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !2421
  %7 = call i32 @crypto_onetimeauth_poly1305_donna(i8* %6, i8* %1, i64 %2, i8* %3), !dbg !2422
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !2423
  %9 = call i32 @crypto_verify_16(i8* %0, i8* %8), !dbg !2424
  ret i32 %9, !dbg !2425
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!202, !2, !205, !207, !79, !110, !153, !216, !185, !196, !218, !220}
!llvm.ident = !{!222, !222, !222, !222, !222, !222, !222, !222, !222, !222, !222, !222}
!llvm.module.flags = !{!223, !224, !225}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crypto_onetimeauth_poly1305_donna_implementation", scope: !2, file: !3, line: 98, type: !43, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !42, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/auth_poly1305_donna.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!4 = !{}
!5 = !{!6, !20, !41, !27, !14}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly1305_context", file: !8, line: 8, baseType: !9)
!8 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.h", directory: "/home/luwei/bech-back/libsodium/Aead")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 22, baseType: !11)
!10 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h", directory: "/home/luwei/bech-back/libsodium/Aead")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 19, size: 1152, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !11, file: !10, line: 20, baseType: !14, size: 64)
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !11, file: !10, line: 21, baseType: !16, size: 1088, offset: 64)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1088, elements: !18)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!19}
!19 = !DISubrange(count: 136)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly1305_state_internal_t", file: !22, line: 25, baseType: !23)
!22 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna32.h", directory: "/home/luwei/bech-back/libsodium/Aead")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poly1305_state_internal_t", file: !22, line: 18, size: 1152, elements: !24)
!24 = !{!25, !30, !31, !35, !36, !40}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !23, file: !22, line: 19, baseType: !26, size: 320)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 320, elements: !28)
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!29}
!29 = !DISubrange(count: 5)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !23, file: !22, line: 20, baseType: !26, size: 320, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !23, file: !22, line: 21, baseType: !32, size: 256, offset: 640)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 4)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !23, file: !22, line: 22, baseType: !14, size: 64, offset: 896)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !23, file: !22, line: 23, baseType: !37, size: 128, offset: 960)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 16)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !23, file: !22, line: 24, baseType: !17, size: 8, offset: 1088)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !{!0}
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_onetimeauth_poly1305_implementation", file: !10, line: 24, size: 384, elements: !44)
!44 = !{!45, !52, !60, !64, !69, !73}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !43, file: !10, line: 25, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth", scope: !43, file: !10, line: 26, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !57, !58, !14, !58}
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_verify", scope: !43, file: !10, line: 30, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!56, !58, !58, !14, !58}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_init", scope: !43, file: !10, line: 34, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!56, !68, !58}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_update", scope: !43, file: !10, line: 36, baseType: !70, size: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!56, !68, !58, !14}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_final", scope: !43, file: !10, line: 39, baseType: !74, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!56, !68, !57}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "implementation", scope: !79, file: !80, line: 6, type: !82, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !81, splitDebugInlining: false, nameTableKind: None)
!80 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/onetimeauth_poly1305.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!81 = !{!77}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_poly1305_implementation", file: !10, line: 41, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_onetimeauth_poly1305_implementation", file: !10, line: 24, size: 384, elements: !86)
!86 = !{!87, !88, !89, !90, !100, !104}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !85, file: !10, line: 25, baseType: !46, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth", scope: !85, file: !10, line: 26, baseType: !53, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_verify", scope: !85, file: !10, line: 30, baseType: !61, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_init", scope: !85, file: !10, line: 34, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!56, !94, !58}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 22, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 19, size: 1152, elements: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !96, file: !10, line: 20, baseType: !14, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !96, file: !10, line: 21, baseType: !16, size: 1088, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_update", scope: !85, file: !10, line: 36, baseType: !101, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!56, !94, !58, !14}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_final", scope: !85, file: !10, line: 39, baseType: !105, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!56, !94, !57}
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "implementation", scope: !110, file: !111, line: 16, type: !121, isLocal: true, isDefinition: true)
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !112, globals: !120, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/randombytes.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!112 = !{!41, !113, !118}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !114, line: 26, baseType: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !116, line: 42, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!117 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 46, baseType: !27)
!119 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!120 = !{!108}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "randombytes_implementation", file: !124, line: 26, baseType: !125)
!124 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/randombytes.h", directory: "/home/luwei/bech-back/libsodium/Aead")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !124, line: 19, size: 384, elements: !126)
!126 = !{!127, !128, !132, !136, !141, !147}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !125, file: !124, line: 20, baseType: !46, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !125, file: !124, line: 21, baseType: !129, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!113}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !125, file: !124, line: 22, baseType: !133, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{null}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !125, file: !124, line: 23, baseType: !137, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!113, !140}
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !125, file: !124, line: 24, baseType: !142, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !145, !146}
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !125, file: !124, line: 25, baseType: !148, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!56}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "randombytes_sysrandom_implementation", scope: !153, file: !154, line: 297, type: !175, isLocal: false, isDefinition: true)
!153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !154, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !155, globals: !160, splitDebugInlining: false, nameTableKind: None)
!154 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!155 = !{!156, !41, !57, !118, !56}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !157, line: 108, baseType: !158)
!157 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !116, line: 193, baseType: !159)
!159 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!160 = !{!151, !161, !169}
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "stream", scope: !153, file: !154, line: 69, type: !163, isLocal: true, isDefinition: true)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysRandom", file: !154, line: 67, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SysRandom_", file: !154, line: 63, size: 96, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "random_data_source_fd", scope: !164, file: !154, line: 64, baseType: !56, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !164, file: !154, line: 65, baseType: !56, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "getrandom_available", scope: !164, file: !154, line: 66, baseType: !56, size: 32, offset: 64)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "devices", scope: !171, file: !154, line: 106, type: !172, isLocal: true, isDefinition: true)
!171 = distinct !DISubprogram(name: "randombytes_sysrandom_random_dev_open", scope: !154, file: !154, line: 102, type: !149, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !4)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 3)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !124, line: 19, size: 384, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !175, file: !124, line: 20, baseType: !46, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !175, file: !124, line: 21, baseType: !129, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !175, file: !124, line: 22, baseType: !133, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !175, file: !124, line: 23, baseType: !137, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !175, file: !124, line: 24, baseType: !142, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !175, file: !124, line: 25, baseType: !148, size: 64, offset: 320)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "sigma", scope: !185, file: !186, line: 60, type: !193, isLocal: true, isDefinition: true)
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !187, globals: !192, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "../libsodium/src/libsodium/crypto_stream/chacha20/ref/stream_chacha20_ref.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!187 = !{!188, !189, !41, !117}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !186, line: 22, baseType: !113)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !186, line: 21, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !114, line: 24, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !116, line: 38, baseType: !17)
!192 = !{!183}
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !38)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "canary", scope: !196, file: !197, line: 46, type: !37, isLocal: true, isDefinition: true)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !198, globals: !201, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!198 = !{!199, !118, !58, !17, !56, !51, !41}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!201 = !{!194}
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !204, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "../libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!204 = !{!41, !17}
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "crypto_aead_chacha20poly1305_decrypt.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !209, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/crypto_onetimeauth.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 22, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 19, size: 1152, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !212, file: !10, line: 20, baseType: !14, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !212, file: !10, line: 21, baseType: !16, size: 1088, offset: 64)
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!217 = !DIFile(filename: "../libsodium/src/libsodium/crypto_stream/chacha20/stream_chacha20_api.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "../libsodium/src/libsodium/crypto_verify/16/ref/verify_16.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/verify_poly1305_donna.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!222 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!223 = !{i32 7, !"Dwarf Version", i32 4}
!224 = !{i32 2, !"Debug Info Version", i32 3}
!225 = !{i32 1, !"wchar_size", i32 4}
!226 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_encrypt", scope: !203, file: !203, line: 25, type: !227, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !202, retainedNodes: !4)
!227 = !DISubroutineType(types: !228)
!228 = !{!56, !57, !229, !58, !14, !58, !14, !58, !58, !58}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!230 = !DILocalVariable(name: "c", arg: 1, scope: !226, file: !203, line: 25, type: !57)
!231 = !DILocation(line: 0, scope: !226)
!232 = !DILocalVariable(name: "clen", arg: 2, scope: !226, file: !203, line: 26, type: !229)
!233 = !DILocalVariable(name: "m", arg: 3, scope: !226, file: !203, line: 27, type: !58)
!234 = !DILocalVariable(name: "mlen", arg: 4, scope: !226, file: !203, line: 28, type: !14)
!235 = !DILocalVariable(name: "ad", arg: 5, scope: !226, file: !203, line: 29, type: !58)
!236 = !DILocalVariable(name: "adlen", arg: 6, scope: !226, file: !203, line: 30, type: !14)
!237 = !DILocalVariable(name: "nsec", arg: 7, scope: !226, file: !203, line: 31, type: !58)
!238 = !DILocalVariable(name: "npub", arg: 8, scope: !226, file: !203, line: 32, type: !58)
!239 = !DILocalVariable(name: "k", arg: 9, scope: !226, file: !203, line: 33, type: !58)
!240 = !DILocalVariable(name: "state", scope: !226, file: !203, line: 35, type: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 22, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 19, size: 1152, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !242, file: !10, line: 20, baseType: !14, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !242, file: !10, line: 21, baseType: !16, size: 1088, offset: 64)
!246 = !DILocation(line: 35, column: 39, scope: !226)
!247 = !DILocalVariable(name: "block0", scope: !226, file: !203, line: 36, type: !248)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 64)
!251 = !DILocation(line: 36, column: 39, scope: !226)
!252 = !DILocalVariable(name: "slen", scope: !226, file: !203, line: 37, type: !253)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 8)
!256 = !DILocation(line: 37, column: 39, scope: !226)
!257 = !DILocation(line: 51, column: 28, scope: !226)
!258 = !DILocation(line: 51, column: 5, scope: !226)
!259 = !DILocation(line: 52, column: 46, scope: !226)
!260 = !DILocation(line: 52, column: 5, scope: !226)
!261 = !DILocation(line: 53, column: 20, scope: !226)
!262 = !DILocation(line: 53, column: 5, scope: !226)
!263 = !DILocation(line: 55, column: 5, scope: !226)
!264 = !DILocation(line: 56, column: 22, scope: !226)
!265 = !DILocation(line: 56, column: 5, scope: !226)
!266 = !DILocation(line: 57, column: 48, scope: !226)
!267 = !DILocation(line: 57, column: 5, scope: !226)
!268 = !DILocation(line: 59, column: 5, scope: !226)
!269 = !DILocation(line: 61, column: 5, scope: !226)
!270 = !DILocation(line: 62, column: 22, scope: !226)
!271 = !DILocation(line: 62, column: 5, scope: !226)
!272 = !DILocation(line: 63, column: 48, scope: !226)
!273 = !DILocation(line: 63, column: 5, scope: !226)
!274 = !DILocation(line: 65, column: 49, scope: !226)
!275 = !DILocation(line: 65, column: 5, scope: !226)
!276 = !DILocation(line: 66, column: 20, scope: !226)
!277 = !DILocation(line: 66, column: 5, scope: !226)
!278 = !DILocation(line: 68, column: 14, scope: !279)
!279 = distinct !DILexicalBlock(scope: !226, file: !203, line: 68, column: 9)
!280 = !DILocation(line: 68, column: 9, scope: !226)
!281 = !DILocation(line: 69, column: 22, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !203, line: 68, column: 23)
!283 = !DILocation(line: 69, column: 15, scope: !282)
!284 = !DILocation(line: 70, column: 5, scope: !282)
!285 = !DILocation(line: 71, column: 5, scope: !226)
!286 = distinct !DISubprogram(name: "_u64_le_from_ull", scope: !203, file: !203, line: 12, type: !287, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !202, retainedNodes: !4)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !57, !14}
!289 = !DILocalVariable(name: "out", arg: 1, scope: !286, file: !203, line: 12, type: !57)
!290 = !DILocation(line: 0, scope: !286)
!291 = !DILocalVariable(name: "x", arg: 2, scope: !286, file: !203, line: 12, type: !14)
!292 = !DILocation(line: 14, column: 33, scope: !286)
!293 = !DILocation(line: 14, column: 14, scope: !286)
!294 = !DILocation(line: 14, column: 5, scope: !286)
!295 = !DILocation(line: 14, column: 12, scope: !286)
!296 = !DILocation(line: 14, column: 44, scope: !286)
!297 = !DILocation(line: 15, column: 33, scope: !286)
!298 = !DILocation(line: 15, column: 14, scope: !286)
!299 = !DILocation(line: 15, column: 5, scope: !286)
!300 = !DILocation(line: 15, column: 12, scope: !286)
!301 = !DILocation(line: 15, column: 44, scope: !286)
!302 = !DILocation(line: 16, column: 33, scope: !286)
!303 = !DILocation(line: 16, column: 14, scope: !286)
!304 = !DILocation(line: 16, column: 5, scope: !286)
!305 = !DILocation(line: 16, column: 12, scope: !286)
!306 = !DILocation(line: 16, column: 44, scope: !286)
!307 = !DILocation(line: 17, column: 33, scope: !286)
!308 = !DILocation(line: 17, column: 14, scope: !286)
!309 = !DILocation(line: 17, column: 5, scope: !286)
!310 = !DILocation(line: 17, column: 12, scope: !286)
!311 = !DILocation(line: 17, column: 44, scope: !286)
!312 = !DILocation(line: 18, column: 33, scope: !286)
!313 = !DILocation(line: 18, column: 14, scope: !286)
!314 = !DILocation(line: 18, column: 5, scope: !286)
!315 = !DILocation(line: 18, column: 12, scope: !286)
!316 = !DILocation(line: 18, column: 44, scope: !286)
!317 = !DILocation(line: 19, column: 33, scope: !286)
!318 = !DILocation(line: 19, column: 14, scope: !286)
!319 = !DILocation(line: 19, column: 5, scope: !286)
!320 = !DILocation(line: 19, column: 12, scope: !286)
!321 = !DILocation(line: 19, column: 44, scope: !286)
!322 = !DILocation(line: 20, column: 33, scope: !286)
!323 = !DILocation(line: 20, column: 14, scope: !286)
!324 = !DILocation(line: 20, column: 5, scope: !286)
!325 = !DILocation(line: 20, column: 12, scope: !286)
!326 = !DILocation(line: 20, column: 44, scope: !286)
!327 = !DILocation(line: 21, column: 33, scope: !286)
!328 = !DILocation(line: 21, column: 14, scope: !286)
!329 = !DILocation(line: 21, column: 5, scope: !286)
!330 = !DILocation(line: 21, column: 12, scope: !286)
!331 = !DILocation(line: 22, column: 1, scope: !286)
!332 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_decrypt", scope: !203, file: !203, line: 75, type: !333, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !202, retainedNodes: !4)
!333 = !DISubroutineType(types: !334)
!334 = !{!56, !57, !229, !57, !58, !14, !58, !14, !58, !58}
!335 = !DILocalVariable(name: "m", arg: 1, scope: !332, file: !203, line: 75, type: !57)
!336 = !DILocation(line: 0, scope: !332)
!337 = !DILocalVariable(name: "mlen", arg: 2, scope: !332, file: !203, line: 76, type: !229)
!338 = !DILocalVariable(name: "nsec", arg: 3, scope: !332, file: !203, line: 77, type: !57)
!339 = !DILocalVariable(name: "c", arg: 4, scope: !332, file: !203, line: 78, type: !58)
!340 = !DILocalVariable(name: "clen", arg: 5, scope: !332, file: !203, line: 79, type: !14)
!341 = !DILocalVariable(name: "ad", arg: 6, scope: !332, file: !203, line: 80, type: !58)
!342 = !DILocalVariable(name: "adlen", arg: 7, scope: !332, file: !203, line: 81, type: !14)
!343 = !DILocalVariable(name: "npub", arg: 8, scope: !332, file: !203, line: 82, type: !58)
!344 = !DILocalVariable(name: "k", arg: 9, scope: !332, file: !203, line: 83, type: !58)
!345 = !DILocalVariable(name: "state", scope: !332, file: !203, line: 85, type: !241)
!346 = !DILocation(line: 85, column: 39, scope: !332)
!347 = !DILocalVariable(name: "block0", scope: !332, file: !203, line: 86, type: !248)
!348 = !DILocation(line: 86, column: 39, scope: !332)
!349 = !DILocalVariable(name: "slen", scope: !332, file: !203, line: 87, type: !253)
!350 = !DILocation(line: 87, column: 39, scope: !332)
!351 = !DILocalVariable(name: "mac", scope: !332, file: !203, line: 88, type: !37)
!352 = !DILocation(line: 88, column: 39, scope: !332)
!353 = !DILocation(line: 92, column: 14, scope: !354)
!354 = distinct !DILexicalBlock(scope: !332, file: !203, line: 92, column: 9)
!355 = !DILocation(line: 92, column: 9, scope: !332)
!356 = !DILocation(line: 93, column: 15, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !203, line: 92, column: 23)
!358 = !DILocation(line: 94, column: 5, scope: !357)
!359 = !DILocation(line: 95, column: 14, scope: !360)
!360 = distinct !DILexicalBlock(scope: !332, file: !203, line: 95, column: 9)
!361 = !DILocation(line: 95, column: 9, scope: !332)
!362 = !DILocation(line: 96, column: 9, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !203, line: 95, column: 53)
!364 = !DILocation(line: 98, column: 28, scope: !332)
!365 = !DILocation(line: 98, column: 5, scope: !332)
!366 = !DILocation(line: 99, column: 46, scope: !332)
!367 = !DILocation(line: 99, column: 5, scope: !332)
!368 = !DILocation(line: 100, column: 20, scope: !332)
!369 = !DILocation(line: 100, column: 5, scope: !332)
!370 = !DILocation(line: 102, column: 5, scope: !332)
!371 = !DILocation(line: 103, column: 22, scope: !332)
!372 = !DILocation(line: 103, column: 5, scope: !332)
!373 = !DILocation(line: 104, column: 48, scope: !332)
!374 = !DILocation(line: 104, column: 5, scope: !332)
!375 = !DILocation(line: 107, column: 26, scope: !332)
!376 = !DILocation(line: 106, column: 5, scope: !332)
!377 = !DILocation(line: 108, column: 22, scope: !332)
!378 = !DILocation(line: 108, column: 33, scope: !332)
!379 = !DILocation(line: 108, column: 5, scope: !332)
!380 = !DILocation(line: 109, column: 48, scope: !332)
!381 = !DILocation(line: 109, column: 5, scope: !332)
!382 = !DILocation(line: 111, column: 47, scope: !332)
!383 = !DILocation(line: 111, column: 5, scope: !332)
!384 = !DILocation(line: 112, column: 20, scope: !332)
!385 = !DILocation(line: 112, column: 5, scope: !332)
!386 = !DILocation(line: 115, column: 28, scope: !332)
!387 = !DILocation(line: 116, column: 30, scope: !332)
!388 = !DILocation(line: 116, column: 37, scope: !332)
!389 = !DILocation(line: 115, column: 11, scope: !332)
!390 = !DILocalVariable(name: "ret", scope: !332, file: !203, line: 89, type: !56)
!391 = !DILocation(line: 117, column: 20, scope: !332)
!392 = !DILocation(line: 117, column: 5, scope: !332)
!393 = !DILocation(line: 118, column: 13, scope: !394)
!394 = distinct !DILexicalBlock(scope: !332, file: !203, line: 118, column: 9)
!395 = !DILocation(line: 118, column: 9, scope: !332)
!396 = !DILocation(line: 119, column: 27, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !203, line: 118, column: 19)
!398 = !DILocation(line: 119, column: 9, scope: !397)
!399 = !DILocation(line: 120, column: 9, scope: !397)
!400 = !DILocation(line: 123, column: 22, scope: !332)
!401 = !DILocation(line: 122, column: 5, scope: !332)
!402 = !DILocation(line: 124, column: 14, scope: !403)
!403 = distinct !DILexicalBlock(scope: !332, file: !203, line: 124, column: 9)
!404 = !DILocation(line: 124, column: 9, scope: !332)
!405 = !DILocation(line: 125, column: 22, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !203, line: 124, column: 23)
!407 = !DILocation(line: 125, column: 15, scope: !406)
!408 = !DILocation(line: 126, column: 5, scope: !406)
!409 = !DILocation(line: 127, column: 5, scope: !332)
!410 = !DILocation(line: 128, column: 1, scope: !332)
!411 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_keybytes", scope: !203, file: !203, line: 131, type: !412, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !202, retainedNodes: !4)
!412 = !DISubroutineType(types: !413)
!413 = !{!118}
!414 = !DILocation(line: 132, column: 5, scope: !411)
!415 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_npubbytes", scope: !203, file: !203, line: 136, type: !412, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !202, retainedNodes: !4)
!416 = !DILocation(line: 137, column: 5, scope: !415)
!417 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_nsecbytes", scope: !203, file: !203, line: 141, type: !412, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !202, retainedNodes: !4)
!418 = !DILocation(line: 142, column: 5, scope: !417)
!419 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_abytes", scope: !203, file: !203, line: 146, type: !412, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !202, retainedNodes: !4)
!420 = !DILocation(line: 147, column: 5, scope: !419)
!421 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_implementation_name", scope: !3, file: !3, line: 91, type: !47, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!422 = !DILocation(line: 93, column: 5, scope: !421)
!423 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna", scope: !3, file: !3, line: 49, type: !54, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!424 = !DILocalVariable(name: "out", arg: 1, scope: !423, file: !3, line: 49, type: !57)
!425 = !DILocation(line: 0, scope: !423)
!426 = !DILocalVariable(name: "m", arg: 2, scope: !423, file: !3, line: 49, type: !58)
!427 = !DILocalVariable(name: "inlen", arg: 3, scope: !423, file: !3, line: 50, type: !14)
!428 = !DILocalVariable(name: "key", arg: 4, scope: !423, file: !3, line: 51, type: !58)
!429 = !DILocalVariable(name: "ctx", scope: !423, file: !3, line: 53, type: !7)
!430 = !DILocation(line: 53, column: 22, scope: !423)
!431 = !DILocation(line: 54, column: 5, scope: !423)
!432 = !DILocation(line: 55, column: 5, scope: !423)
!433 = !DILocation(line: 56, column: 5, scope: !423)
!434 = !DILocation(line: 58, column: 5, scope: !423)
!435 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_init", scope: !3, file: !3, line: 62, type: !66, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!436 = !DILocalVariable(name: "state", arg: 1, scope: !435, file: !3, line: 62, type: !68)
!437 = !DILocation(line: 0, scope: !435)
!438 = !DILocalVariable(name: "key", arg: 2, scope: !435, file: !3, line: 63, type: !58)
!439 = !DILocation(line: 65, column: 5, scope: !435)
!440 = !DILocation(line: 67, column: 5, scope: !435)
!441 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_update", scope: !3, file: !3, line: 71, type: !71, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!442 = !DILocalVariable(name: "state", arg: 1, scope: !441, file: !3, line: 71, type: !68)
!443 = !DILocation(line: 0, scope: !441)
!444 = !DILocalVariable(name: "in", arg: 2, scope: !441, file: !3, line: 72, type: !58)
!445 = !DILocalVariable(name: "inlen", arg: 3, scope: !441, file: !3, line: 73, type: !14)
!446 = !DILocation(line: 75, column: 5, scope: !441)
!447 = !DILocation(line: 77, column: 5, scope: !441)
!448 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_final", scope: !3, file: !3, line: 81, type: !75, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!449 = !DILocalVariable(name: "state", arg: 1, scope: !448, file: !3, line: 81, type: !68)
!450 = !DILocation(line: 0, scope: !448)
!451 = !DILocalVariable(name: "out", arg: 2, scope: !448, file: !3, line: 82, type: !57)
!452 = !DILocation(line: 84, column: 5, scope: !448)
!453 = !DILocation(line: 86, column: 5, scope: !448)
!454 = distinct !DISubprogram(name: "poly1305_finish", scope: !22, file: !22, line: 136, type: !455, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !6, !57}
!457 = !DILocalVariable(name: "ctx", arg: 1, scope: !454, file: !22, line: 136, type: !6)
!458 = !DILocation(line: 0, scope: !454)
!459 = !DILocalVariable(name: "mac", arg: 2, scope: !454, file: !22, line: 136, type: !57)
!460 = !DILocation(line: 137, column: 70, scope: !454)
!461 = !DILocation(line: 137, column: 41, scope: !454)
!462 = !DILocalVariable(name: "st", scope: !454, file: !22, line: 137, type: !20)
!463 = !DILocation(line: 144, column: 17, scope: !464)
!464 = distinct !DILexicalBlock(scope: !454, file: !22, line: 144, column: 13)
!465 = !DILocation(line: 144, column: 13, scope: !464)
!466 = !DILocation(line: 144, column: 13, scope: !454)
!467 = !DILocation(line: 145, column: 44, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !22, line: 144, column: 27)
!469 = !DILocalVariable(name: "i", scope: !468, file: !22, line: 145, type: !14)
!470 = !DILocation(line: 0, scope: !468)
!471 = !DILocation(line: 146, column: 21, scope: !468)
!472 = !DILocation(line: 146, column: 29, scope: !468)
!473 = !DILocation(line: 146, column: 17, scope: !468)
!474 = !DILocation(line: 146, column: 33, scope: !468)
!475 = !DILocation(line: 147, column: 17, scope: !468)
!476 = !DILocation(line: 147, column: 26, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !22, line: 147, column: 17)
!478 = distinct !DILexicalBlock(scope: !468, file: !22, line: 147, column: 17)
!479 = !DILocation(line: 147, column: 17, scope: !478)
!480 = !DILocation(line: 148, column: 29, scope: !477)
!481 = !DILocation(line: 148, column: 25, scope: !477)
!482 = !DILocation(line: 148, column: 39, scope: !477)
!483 = !DILocation(line: 147, column: 50, scope: !477)
!484 = !DILocation(line: 147, column: 17, scope: !477)
!485 = distinct !{!485, !479, !486, !487}
!486 = !DILocation(line: 148, column: 41, scope: !478)
!487 = !{!"llvm.loop.mustprogress"}
!488 = !DILocation(line: 149, column: 21, scope: !468)
!489 = !DILocation(line: 149, column: 27, scope: !468)
!490 = !DILocation(line: 150, column: 41, scope: !468)
!491 = !DILocation(line: 150, column: 37, scope: !468)
!492 = !DILocation(line: 150, column: 17, scope: !468)
!493 = !DILocation(line: 151, column: 9, scope: !468)
!494 = !DILocation(line: 154, column: 18, scope: !454)
!495 = !DILocation(line: 154, column: 14, scope: !454)
!496 = !DILocalVariable(name: "h0", scope: !454, file: !22, line: 138, type: !27)
!497 = !DILocation(line: 155, column: 18, scope: !454)
!498 = !DILocation(line: 155, column: 14, scope: !454)
!499 = !DILocalVariable(name: "h1", scope: !454, file: !22, line: 138, type: !27)
!500 = !DILocation(line: 156, column: 18, scope: !454)
!501 = !DILocation(line: 156, column: 14, scope: !454)
!502 = !DILocalVariable(name: "h2", scope: !454, file: !22, line: 138, type: !27)
!503 = !DILocation(line: 157, column: 18, scope: !454)
!504 = !DILocation(line: 157, column: 14, scope: !454)
!505 = !DILocalVariable(name: "h3", scope: !454, file: !22, line: 138, type: !27)
!506 = !DILocation(line: 158, column: 18, scope: !454)
!507 = !DILocation(line: 158, column: 14, scope: !454)
!508 = !DILocalVariable(name: "h4", scope: !454, file: !22, line: 138, type: !27)
!509 = !DILocation(line: 160, column: 29, scope: !454)
!510 = !DILocalVariable(name: "c", scope: !454, file: !22, line: 138, type: !27)
!511 = !DILocation(line: 160, column: 44, scope: !454)
!512 = !DILocation(line: 161, column: 12, scope: !454)
!513 = !DILocation(line: 161, column: 29, scope: !454)
!514 = !DILocation(line: 161, column: 44, scope: !454)
!515 = !DILocation(line: 162, column: 12, scope: !454)
!516 = !DILocation(line: 162, column: 29, scope: !454)
!517 = !DILocation(line: 162, column: 44, scope: !454)
!518 = !DILocation(line: 163, column: 12, scope: !454)
!519 = !DILocation(line: 163, column: 29, scope: !454)
!520 = !DILocation(line: 163, column: 44, scope: !454)
!521 = !DILocation(line: 164, column: 17, scope: !454)
!522 = !DILocation(line: 164, column: 12, scope: !454)
!523 = !DILocation(line: 164, column: 29, scope: !454)
!524 = !DILocation(line: 164, column: 44, scope: !454)
!525 = !DILocation(line: 165, column: 12, scope: !454)
!526 = !DILocation(line: 168, column: 17, scope: !454)
!527 = !DILocalVariable(name: "g0", scope: !454, file: !22, line: 139, type: !27)
!528 = !DILocation(line: 168, column: 29, scope: !454)
!529 = !DILocation(line: 168, column: 39, scope: !454)
!530 = !DILocation(line: 169, column: 17, scope: !454)
!531 = !DILocalVariable(name: "g1", scope: !454, file: !22, line: 139, type: !27)
!532 = !DILocation(line: 169, column: 29, scope: !454)
!533 = !DILocation(line: 169, column: 39, scope: !454)
!534 = !DILocation(line: 170, column: 17, scope: !454)
!535 = !DILocalVariable(name: "g2", scope: !454, file: !22, line: 139, type: !27)
!536 = !DILocation(line: 170, column: 29, scope: !454)
!537 = !DILocation(line: 170, column: 39, scope: !454)
!538 = !DILocation(line: 171, column: 17, scope: !454)
!539 = !DILocalVariable(name: "g3", scope: !454, file: !22, line: 139, type: !27)
!540 = !DILocation(line: 171, column: 29, scope: !454)
!541 = !DILocation(line: 171, column: 39, scope: !454)
!542 = !DILocation(line: 172, column: 17, scope: !454)
!543 = !DILocation(line: 172, column: 21, scope: !454)
!544 = !DILocalVariable(name: "g4", scope: !454, file: !22, line: 139, type: !27)
!545 = !DILocation(line: 175, column: 20, scope: !454)
!546 = !DILocation(line: 175, column: 58, scope: !454)
!547 = !DILocalVariable(name: "mask", scope: !454, file: !22, line: 141, type: !27)
!548 = !DILocation(line: 176, column: 12, scope: !454)
!549 = !DILocation(line: 177, column: 12, scope: !454)
!550 = !DILocation(line: 178, column: 12, scope: !454)
!551 = !DILocation(line: 179, column: 12, scope: !454)
!552 = !DILocation(line: 180, column: 12, scope: !454)
!553 = !DILocation(line: 181, column: 16, scope: !454)
!554 = !DILocation(line: 182, column: 18, scope: !454)
!555 = !DILocation(line: 182, column: 26, scope: !454)
!556 = !DILocation(line: 183, column: 18, scope: !454)
!557 = !DILocation(line: 183, column: 26, scope: !454)
!558 = !DILocation(line: 184, column: 18, scope: !454)
!559 = !DILocation(line: 184, column: 26, scope: !454)
!560 = !DILocation(line: 185, column: 18, scope: !454)
!561 = !DILocation(line: 185, column: 26, scope: !454)
!562 = !DILocation(line: 186, column: 18, scope: !454)
!563 = !DILocation(line: 186, column: 26, scope: !454)
!564 = !DILocation(line: 189, column: 32, scope: !454)
!565 = !DILocation(line: 189, column: 26, scope: !454)
!566 = !DILocation(line: 189, column: 40, scope: !454)
!567 = !DILocation(line: 190, column: 19, scope: !454)
!568 = !DILocation(line: 190, column: 32, scope: !454)
!569 = !DILocation(line: 190, column: 26, scope: !454)
!570 = !DILocation(line: 190, column: 40, scope: !454)
!571 = !DILocation(line: 191, column: 19, scope: !454)
!572 = !DILocation(line: 191, column: 32, scope: !454)
!573 = !DILocation(line: 191, column: 26, scope: !454)
!574 = !DILocation(line: 191, column: 40, scope: !454)
!575 = !DILocation(line: 192, column: 19, scope: !454)
!576 = !DILocation(line: 192, column: 32, scope: !454)
!577 = !DILocation(line: 192, column: 26, scope: !454)
!578 = !DILocation(line: 192, column: 40, scope: !454)
!579 = !DILocation(line: 195, column: 42, scope: !454)
!580 = !DILocation(line: 195, column: 38, scope: !454)
!581 = !DILocation(line: 195, column: 36, scope: !454)
!582 = !DILocalVariable(name: "f", scope: !454, file: !22, line: 140, type: !14)
!583 = !DILocation(line: 196, column: 42, scope: !454)
!584 = !DILocation(line: 196, column: 38, scope: !454)
!585 = !DILocation(line: 196, column: 36, scope: !454)
!586 = !DILocation(line: 196, column: 54, scope: !454)
!587 = !DILocation(line: 196, column: 49, scope: !454)
!588 = !DILocation(line: 197, column: 42, scope: !454)
!589 = !DILocation(line: 197, column: 38, scope: !454)
!590 = !DILocation(line: 197, column: 36, scope: !454)
!591 = !DILocation(line: 197, column: 54, scope: !454)
!592 = !DILocation(line: 197, column: 49, scope: !454)
!593 = !DILocation(line: 198, column: 42, scope: !454)
!594 = !DILocation(line: 198, column: 38, scope: !454)
!595 = !DILocation(line: 198, column: 36, scope: !454)
!596 = !DILocation(line: 198, column: 54, scope: !454)
!597 = !DILocation(line: 198, column: 49, scope: !454)
!598 = !DILocation(line: 200, column: 20, scope: !454)
!599 = !DILocation(line: 200, column: 9, scope: !454)
!600 = !DILocation(line: 201, column: 20, scope: !454)
!601 = !DILocation(line: 201, column: 9, scope: !454)
!602 = !DILocation(line: 202, column: 20, scope: !454)
!603 = !DILocation(line: 202, column: 9, scope: !454)
!604 = !DILocation(line: 203, column: 20, scope: !454)
!605 = !DILocation(line: 203, column: 9, scope: !454)
!606 = !DILocation(line: 206, column: 24, scope: !454)
!607 = !DILocation(line: 206, column: 9, scope: !454)
!608 = !DILocation(line: 207, column: 1, scope: !454)
!609 = distinct !DISubprogram(name: "poly1305_blocks", scope: !22, file: !22, line: 75, type: !610, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !20, !58, !14}
!612 = !DILocalVariable(name: "st", arg: 1, scope: !609, file: !22, line: 75, type: !20)
!613 = !DILocation(line: 0, scope: !609)
!614 = !DILocalVariable(name: "m", arg: 2, scope: !609, file: !22, line: 75, type: !58)
!615 = !DILocalVariable(name: "bytes", arg: 3, scope: !609, file: !22, line: 75, type: !14)
!616 = !DILocation(line: 76, column: 42, scope: !609)
!617 = !DILocation(line: 76, column: 37, scope: !609)
!618 = !DILocalVariable(name: "hibit", scope: !609, file: !22, line: 76, type: !619)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!620 = !DILocation(line: 83, column: 18, scope: !609)
!621 = !DILocation(line: 83, column: 14, scope: !609)
!622 = !DILocalVariable(name: "r0", scope: !609, file: !22, line: 77, type: !27)
!623 = !DILocation(line: 84, column: 18, scope: !609)
!624 = !DILocation(line: 84, column: 14, scope: !609)
!625 = !DILocalVariable(name: "r1", scope: !609, file: !22, line: 77, type: !27)
!626 = !DILocation(line: 85, column: 18, scope: !609)
!627 = !DILocation(line: 85, column: 14, scope: !609)
!628 = !DILocalVariable(name: "r2", scope: !609, file: !22, line: 77, type: !27)
!629 = !DILocation(line: 86, column: 18, scope: !609)
!630 = !DILocation(line: 86, column: 14, scope: !609)
!631 = !DILocalVariable(name: "r3", scope: !609, file: !22, line: 77, type: !27)
!632 = !DILocation(line: 87, column: 18, scope: !609)
!633 = !DILocation(line: 87, column: 14, scope: !609)
!634 = !DILocalVariable(name: "r4", scope: !609, file: !22, line: 77, type: !27)
!635 = !DILocation(line: 89, column: 17, scope: !609)
!636 = !DILocalVariable(name: "s1", scope: !609, file: !22, line: 78, type: !27)
!637 = !DILocation(line: 90, column: 17, scope: !609)
!638 = !DILocalVariable(name: "s2", scope: !609, file: !22, line: 78, type: !27)
!639 = !DILocation(line: 91, column: 17, scope: !609)
!640 = !DILocalVariable(name: "s3", scope: !609, file: !22, line: 78, type: !27)
!641 = !DILocation(line: 92, column: 17, scope: !609)
!642 = !DILocalVariable(name: "s4", scope: !609, file: !22, line: 78, type: !27)
!643 = !DILocation(line: 94, column: 18, scope: !609)
!644 = !DILocation(line: 94, column: 14, scope: !609)
!645 = !DILocalVariable(name: "h0", scope: !609, file: !22, line: 79, type: !27)
!646 = !DILocation(line: 95, column: 18, scope: !609)
!647 = !DILocation(line: 95, column: 14, scope: !609)
!648 = !DILocalVariable(name: "h1", scope: !609, file: !22, line: 79, type: !27)
!649 = !DILocation(line: 96, column: 18, scope: !609)
!650 = !DILocation(line: 96, column: 14, scope: !609)
!651 = !DILocalVariable(name: "h2", scope: !609, file: !22, line: 79, type: !27)
!652 = !DILocation(line: 97, column: 18, scope: !609)
!653 = !DILocation(line: 97, column: 14, scope: !609)
!654 = !DILocalVariable(name: "h3", scope: !609, file: !22, line: 79, type: !27)
!655 = !DILocation(line: 98, column: 18, scope: !609)
!656 = !DILocation(line: 98, column: 14, scope: !609)
!657 = !DILocalVariable(name: "h4", scope: !609, file: !22, line: 79, type: !27)
!658 = !DILocation(line: 100, column: 9, scope: !609)
!659 = !DILocation(line: 100, column: 22, scope: !609)
!660 = !DILocation(line: 102, column: 32, scope: !661)
!661 = distinct !DILexicalBlock(scope: !609, file: !22, line: 100, column: 46)
!662 = !DILocation(line: 102, column: 24, scope: !661)
!663 = !DILocation(line: 102, column: 43, scope: !661)
!664 = !DILocation(line: 102, column: 20, scope: !661)
!665 = !DILocation(line: 103, column: 32, scope: !661)
!666 = !DILocation(line: 103, column: 24, scope: !661)
!667 = !DILocation(line: 103, column: 37, scope: !661)
!668 = !DILocation(line: 103, column: 43, scope: !661)
!669 = !DILocation(line: 103, column: 20, scope: !661)
!670 = !DILocation(line: 104, column: 32, scope: !661)
!671 = !DILocation(line: 104, column: 24, scope: !661)
!672 = !DILocation(line: 104, column: 37, scope: !661)
!673 = !DILocation(line: 104, column: 43, scope: !661)
!674 = !DILocation(line: 104, column: 20, scope: !661)
!675 = !DILocation(line: 105, column: 32, scope: !661)
!676 = !DILocation(line: 105, column: 24, scope: !661)
!677 = !DILocation(line: 105, column: 37, scope: !661)
!678 = !DILocation(line: 105, column: 43, scope: !661)
!679 = !DILocation(line: 105, column: 20, scope: !661)
!680 = !DILocation(line: 106, column: 32, scope: !661)
!681 = !DILocation(line: 106, column: 24, scope: !661)
!682 = !DILocation(line: 106, column: 37, scope: !661)
!683 = !DILocation(line: 106, column: 43, scope: !661)
!684 = !DILocation(line: 106, column: 20, scope: !661)
!685 = !DILocation(line: 109, column: 46, scope: !661)
!686 = !DILocation(line: 109, column: 78, scope: !661)
!687 = !DILocation(line: 109, column: 52, scope: !661)
!688 = !DILocation(line: 109, column: 110, scope: !661)
!689 = !DILocation(line: 109, column: 84, scope: !661)
!690 = !DILocation(line: 109, column: 142, scope: !661)
!691 = !DILocation(line: 109, column: 116, scope: !661)
!692 = !DILocation(line: 109, column: 174, scope: !661)
!693 = !DILocation(line: 109, column: 148, scope: !661)
!694 = !DILocalVariable(name: "d0", scope: !609, file: !22, line: 80, type: !14)
!695 = !DILocation(line: 110, column: 46, scope: !661)
!696 = !DILocation(line: 110, column: 78, scope: !661)
!697 = !DILocation(line: 110, column: 52, scope: !661)
!698 = !DILocation(line: 110, column: 110, scope: !661)
!699 = !DILocation(line: 110, column: 84, scope: !661)
!700 = !DILocation(line: 110, column: 142, scope: !661)
!701 = !DILocation(line: 110, column: 116, scope: !661)
!702 = !DILocation(line: 110, column: 174, scope: !661)
!703 = !DILocation(line: 110, column: 148, scope: !661)
!704 = !DILocalVariable(name: "d1", scope: !609, file: !22, line: 80, type: !14)
!705 = !DILocation(line: 111, column: 46, scope: !661)
!706 = !DILocation(line: 111, column: 78, scope: !661)
!707 = !DILocation(line: 111, column: 52, scope: !661)
!708 = !DILocation(line: 111, column: 110, scope: !661)
!709 = !DILocation(line: 111, column: 84, scope: !661)
!710 = !DILocation(line: 111, column: 142, scope: !661)
!711 = !DILocation(line: 111, column: 116, scope: !661)
!712 = !DILocation(line: 111, column: 174, scope: !661)
!713 = !DILocation(line: 111, column: 148, scope: !661)
!714 = !DILocalVariable(name: "d2", scope: !609, file: !22, line: 80, type: !14)
!715 = !DILocation(line: 112, column: 46, scope: !661)
!716 = !DILocation(line: 112, column: 78, scope: !661)
!717 = !DILocation(line: 112, column: 52, scope: !661)
!718 = !DILocation(line: 112, column: 110, scope: !661)
!719 = !DILocation(line: 112, column: 84, scope: !661)
!720 = !DILocation(line: 112, column: 142, scope: !661)
!721 = !DILocation(line: 112, column: 116, scope: !661)
!722 = !DILocation(line: 112, column: 174, scope: !661)
!723 = !DILocation(line: 112, column: 148, scope: !661)
!724 = !DILocalVariable(name: "d3", scope: !609, file: !22, line: 80, type: !14)
!725 = !DILocation(line: 113, column: 46, scope: !661)
!726 = !DILocation(line: 113, column: 78, scope: !661)
!727 = !DILocation(line: 113, column: 52, scope: !661)
!728 = !DILocation(line: 113, column: 110, scope: !661)
!729 = !DILocation(line: 113, column: 84, scope: !661)
!730 = !DILocation(line: 113, column: 142, scope: !661)
!731 = !DILocation(line: 113, column: 116, scope: !661)
!732 = !DILocation(line: 113, column: 174, scope: !661)
!733 = !DILocation(line: 113, column: 148, scope: !661)
!734 = !DILocalVariable(name: "d4", scope: !609, file: !22, line: 80, type: !14)
!735 = !DILocation(line: 116, column: 54, scope: !661)
!736 = !DILocalVariable(name: "c", scope: !609, file: !22, line: 81, type: !27)
!737 = !DILocation(line: 116, column: 85, scope: !661)
!738 = !DILocation(line: 117, column: 20, scope: !661)
!739 = !DILocation(line: 117, column: 54, scope: !661)
!740 = !DILocation(line: 117, column: 85, scope: !661)
!741 = !DILocation(line: 118, column: 20, scope: !661)
!742 = !DILocation(line: 118, column: 54, scope: !661)
!743 = !DILocation(line: 118, column: 85, scope: !661)
!744 = !DILocation(line: 119, column: 20, scope: !661)
!745 = !DILocation(line: 119, column: 54, scope: !661)
!746 = !DILocation(line: 119, column: 85, scope: !661)
!747 = !DILocation(line: 120, column: 20, scope: !661)
!748 = !DILocation(line: 120, column: 54, scope: !661)
!749 = !DILocation(line: 120, column: 85, scope: !661)
!750 = !DILocation(line: 121, column: 25, scope: !661)
!751 = !DILocation(line: 121, column: 20, scope: !661)
!752 = !DILocation(line: 121, column: 54, scope: !661)
!753 = !DILocation(line: 121, column: 85, scope: !661)
!754 = !DILocation(line: 122, column: 20, scope: !661)
!755 = !DILocation(line: 124, column: 19, scope: !661)
!756 = !DILocation(line: 125, column: 23, scope: !661)
!757 = distinct !{!757, !658, !758, !487}
!758 = !DILocation(line: 126, column: 9, scope: !609)
!759 = !DILocation(line: 128, column: 13, scope: !609)
!760 = !DILocation(line: 128, column: 9, scope: !609)
!761 = !DILocation(line: 128, column: 18, scope: !609)
!762 = !DILocation(line: 129, column: 13, scope: !609)
!763 = !DILocation(line: 129, column: 9, scope: !609)
!764 = !DILocation(line: 129, column: 18, scope: !609)
!765 = !DILocation(line: 130, column: 13, scope: !609)
!766 = !DILocation(line: 130, column: 9, scope: !609)
!767 = !DILocation(line: 130, column: 18, scope: !609)
!768 = !DILocation(line: 131, column: 13, scope: !609)
!769 = !DILocation(line: 131, column: 9, scope: !609)
!770 = !DILocation(line: 131, column: 18, scope: !609)
!771 = !DILocation(line: 132, column: 13, scope: !609)
!772 = !DILocation(line: 132, column: 9, scope: !609)
!773 = !DILocation(line: 132, column: 18, scope: !609)
!774 = !DILocation(line: 133, column: 1, scope: !609)
!775 = distinct !DISubprogram(name: "U32TO8", scope: !22, file: !22, line: 39, type: !776, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !57, !27}
!778 = !DILocalVariable(name: "p", arg: 1, scope: !775, file: !22, line: 39, type: !57)
!779 = !DILocation(line: 0, scope: !775)
!780 = !DILocalVariable(name: "v", arg: 2, scope: !775, file: !22, line: 39, type: !27)
!781 = !DILocation(line: 40, column: 26, scope: !775)
!782 = !DILocation(line: 40, column: 16, scope: !775)
!783 = !DILocation(line: 40, column: 9, scope: !775)
!784 = !DILocation(line: 40, column: 14, scope: !775)
!785 = !DILocation(line: 41, column: 19, scope: !775)
!786 = !DILocation(line: 41, column: 26, scope: !775)
!787 = !DILocation(line: 41, column: 16, scope: !775)
!788 = !DILocation(line: 41, column: 9, scope: !775)
!789 = !DILocation(line: 41, column: 14, scope: !775)
!790 = !DILocation(line: 42, column: 19, scope: !775)
!791 = !DILocation(line: 42, column: 26, scope: !775)
!792 = !DILocation(line: 42, column: 16, scope: !775)
!793 = !DILocation(line: 42, column: 9, scope: !775)
!794 = !DILocation(line: 42, column: 14, scope: !775)
!795 = !DILocation(line: 43, column: 19, scope: !775)
!796 = !DILocation(line: 43, column: 26, scope: !775)
!797 = !DILocation(line: 43, column: 16, scope: !775)
!798 = !DILocation(line: 43, column: 9, scope: !775)
!799 = !DILocation(line: 43, column: 14, scope: !775)
!800 = !DILocation(line: 44, column: 1, scope: !775)
!801 = distinct !DISubprogram(name: "U8TO32", scope: !22, file: !22, line: 29, type: !802, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!802 = !DISubroutineType(types: !803)
!803 = !{!27, !58}
!804 = !DILocalVariable(name: "p", arg: 1, scope: !801, file: !22, line: 29, type: !58)
!805 = !DILocation(line: 0, scope: !801)
!806 = !DILocation(line: 31, column: 27, scope: !801)
!807 = !DILocation(line: 31, column: 32, scope: !801)
!808 = !DILocation(line: 31, column: 11, scope: !801)
!809 = !DILocation(line: 32, column: 27, scope: !801)
!810 = !DILocation(line: 32, column: 32, scope: !801)
!811 = !DILocation(line: 32, column: 11, scope: !801)
!812 = !DILocation(line: 32, column: 40, scope: !801)
!813 = !DILocation(line: 31, column: 47, scope: !801)
!814 = !DILocation(line: 33, column: 27, scope: !801)
!815 = !DILocation(line: 33, column: 32, scope: !801)
!816 = !DILocation(line: 33, column: 11, scope: !801)
!817 = !DILocation(line: 33, column: 40, scope: !801)
!818 = !DILocation(line: 32, column: 47, scope: !801)
!819 = !DILocation(line: 34, column: 27, scope: !801)
!820 = !DILocation(line: 34, column: 32, scope: !801)
!821 = !DILocation(line: 34, column: 11, scope: !801)
!822 = !DILocation(line: 34, column: 40, scope: !801)
!823 = !DILocation(line: 33, column: 47, scope: !801)
!824 = !DILocation(line: 30, column: 9, scope: !801)
!825 = distinct !DISubprogram(name: "poly1305_update", scope: !3, file: !3, line: 11, type: !826, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !6, !58, !14}
!828 = !DILocalVariable(name: "ctx", arg: 1, scope: !825, file: !3, line: 11, type: !6)
!829 = !DILocation(line: 0, scope: !825)
!830 = !DILocalVariable(name: "m", arg: 2, scope: !825, file: !3, line: 11, type: !58)
!831 = !DILocalVariable(name: "bytes", arg: 3, scope: !825, file: !3, line: 12, type: !14)
!832 = !DILocation(line: 13, column: 66, scope: !825)
!833 = !DILocation(line: 13, column: 37, scope: !825)
!834 = !DILocalVariable(name: "st", scope: !825, file: !3, line: 13, type: !20)
!835 = !DILocation(line: 17, column: 13, scope: !836)
!836 = distinct !DILexicalBlock(scope: !825, file: !3, line: 17, column: 9)
!837 = !DILocation(line: 17, column: 9, scope: !836)
!838 = !DILocation(line: 17, column: 9, scope: !825)
!839 = !DILocation(line: 18, column: 62, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !3, line: 17, column: 23)
!841 = !DILocation(line: 18, column: 56, scope: !840)
!842 = !DILocalVariable(name: "want", scope: !840, file: !3, line: 18, type: !14)
!843 = !DILocation(line: 0, scope: !840)
!844 = !DILocation(line: 19, column: 18, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !3, line: 19, column: 13)
!846 = !DILocation(line: 19, column: 13, scope: !840)
!847 = !DILocation(line: 20, column: 13, scope: !845)
!848 = !DILocalVariable(name: "i", scope: !825, file: !3, line: 14, type: !14)
!849 = !DILocation(line: 21, column: 14, scope: !850)
!850 = distinct !DILexicalBlock(scope: !840, file: !3, line: 21, column: 9)
!851 = !DILocation(line: 0, scope: !850)
!852 = !DILocation(line: 21, column: 23, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 21, column: 9)
!854 = !DILocation(line: 21, column: 9, scope: !850)
!855 = !DILocation(line: 22, column: 44, scope: !853)
!856 = !DILocation(line: 22, column: 17, scope: !853)
!857 = !DILocation(line: 22, column: 28, scope: !853)
!858 = !DILocation(line: 22, column: 37, scope: !853)
!859 = !DILocation(line: 22, column: 13, scope: !853)
!860 = !DILocation(line: 22, column: 42, scope: !853)
!861 = !DILocation(line: 21, column: 32, scope: !853)
!862 = !DILocation(line: 21, column: 9, scope: !853)
!863 = distinct !{!863, !854, !864, !487}
!864 = !DILocation(line: 22, column: 47, scope: !850)
!865 = !DILocation(line: 23, column: 15, scope: !840)
!866 = !DILocation(line: 24, column: 11, scope: !840)
!867 = !DILocation(line: 25, column: 13, scope: !840)
!868 = !DILocation(line: 25, column: 22, scope: !840)
!869 = !DILocation(line: 26, column: 17, scope: !870)
!870 = distinct !DILexicalBlock(scope: !840, file: !3, line: 26, column: 13)
!871 = !DILocation(line: 26, column: 26, scope: !870)
!872 = !DILocation(line: 26, column: 13, scope: !840)
!873 = !DILocation(line: 27, column: 13, scope: !870)
!874 = !DILocation(line: 28, column: 33, scope: !840)
!875 = !DILocation(line: 28, column: 29, scope: !840)
!876 = !DILocation(line: 28, column: 9, scope: !840)
!877 = !DILocation(line: 29, column: 13, scope: !840)
!878 = !DILocation(line: 29, column: 22, scope: !840)
!879 = !DILocation(line: 30, column: 5, scope: !840)
!880 = !DILocation(line: 33, column: 15, scope: !881)
!881 = distinct !DILexicalBlock(scope: !825, file: !3, line: 33, column: 9)
!882 = !DILocation(line: 33, column: 9, scope: !825)
!883 = !DILocation(line: 34, column: 42, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !3, line: 33, column: 39)
!885 = !DILocalVariable(name: "want", scope: !884, file: !3, line: 34, type: !14)
!886 = !DILocation(line: 0, scope: !884)
!887 = !DILocation(line: 35, column: 9, scope: !884)
!888 = !DILocation(line: 36, column: 11, scope: !884)
!889 = !DILocation(line: 37, column: 15, scope: !884)
!890 = !DILocation(line: 38, column: 5, scope: !884)
!891 = !DILocation(line: 41, column: 9, scope: !892)
!892 = distinct !DILexicalBlock(scope: !825, file: !3, line: 41, column: 9)
!893 = !DILocation(line: 41, column: 9, scope: !825)
!894 = !DILocation(line: 42, column: 14, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 42, column: 9)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 41, column: 16)
!897 = !DILocation(line: 0, scope: !895)
!898 = !DILocation(line: 42, column: 23, scope: !899)
!899 = distinct !DILexicalBlock(scope: !895, file: !3, line: 42, column: 9)
!900 = !DILocation(line: 42, column: 9, scope: !895)
!901 = !DILocation(line: 43, column: 44, scope: !899)
!902 = !DILocation(line: 43, column: 17, scope: !899)
!903 = !DILocation(line: 43, column: 28, scope: !899)
!904 = !DILocation(line: 43, column: 37, scope: !899)
!905 = !DILocation(line: 43, column: 13, scope: !899)
!906 = !DILocation(line: 43, column: 42, scope: !899)
!907 = !DILocation(line: 42, column: 33, scope: !899)
!908 = !DILocation(line: 42, column: 9, scope: !899)
!909 = distinct !{!909, !900, !910, !487}
!910 = !DILocation(line: 43, column: 47, scope: !895)
!911 = !DILocation(line: 44, column: 13, scope: !896)
!912 = !DILocation(line: 44, column: 22, scope: !896)
!913 = !DILocation(line: 45, column: 5, scope: !896)
!914 = !DILocation(line: 46, column: 1, scope: !825)
!915 = distinct !DISubprogram(name: "poly1305_init", scope: !22, file: !22, line: 47, type: !916, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !6, !58}
!918 = !DILocalVariable(name: "ctx", arg: 1, scope: !915, file: !22, line: 47, type: !6)
!919 = !DILocation(line: 0, scope: !915)
!920 = !DILocalVariable(name: "key", arg: 2, scope: !915, file: !22, line: 47, type: !58)
!921 = !DILocation(line: 48, column: 70, scope: !915)
!922 = !DILocation(line: 48, column: 41, scope: !915)
!923 = !DILocalVariable(name: "st", scope: !915, file: !22, line: 48, type: !20)
!924 = !DILocation(line: 51, column: 29, scope: !915)
!925 = !DILocation(line: 51, column: 21, scope: !915)
!926 = !DILocation(line: 51, column: 44, scope: !915)
!927 = !DILocation(line: 51, column: 13, scope: !915)
!928 = !DILocation(line: 51, column: 9, scope: !915)
!929 = !DILocation(line: 51, column: 18, scope: !915)
!930 = !DILocation(line: 52, column: 29, scope: !915)
!931 = !DILocation(line: 52, column: 21, scope: !915)
!932 = !DILocation(line: 52, column: 38, scope: !915)
!933 = !DILocation(line: 52, column: 44, scope: !915)
!934 = !DILocation(line: 52, column: 13, scope: !915)
!935 = !DILocation(line: 52, column: 9, scope: !915)
!936 = !DILocation(line: 52, column: 18, scope: !915)
!937 = !DILocation(line: 53, column: 29, scope: !915)
!938 = !DILocation(line: 53, column: 21, scope: !915)
!939 = !DILocation(line: 53, column: 38, scope: !915)
!940 = !DILocation(line: 53, column: 44, scope: !915)
!941 = !DILocation(line: 53, column: 13, scope: !915)
!942 = !DILocation(line: 53, column: 9, scope: !915)
!943 = !DILocation(line: 53, column: 18, scope: !915)
!944 = !DILocation(line: 54, column: 29, scope: !915)
!945 = !DILocation(line: 54, column: 21, scope: !915)
!946 = !DILocation(line: 54, column: 38, scope: !915)
!947 = !DILocation(line: 54, column: 44, scope: !915)
!948 = !DILocation(line: 54, column: 13, scope: !915)
!949 = !DILocation(line: 54, column: 9, scope: !915)
!950 = !DILocation(line: 54, column: 18, scope: !915)
!951 = !DILocation(line: 55, column: 29, scope: !915)
!952 = !DILocation(line: 55, column: 21, scope: !915)
!953 = !DILocation(line: 55, column: 38, scope: !915)
!954 = !DILocation(line: 55, column: 44, scope: !915)
!955 = !DILocation(line: 55, column: 13, scope: !915)
!956 = !DILocation(line: 55, column: 9, scope: !915)
!957 = !DILocation(line: 55, column: 18, scope: !915)
!958 = !DILocation(line: 58, column: 13, scope: !915)
!959 = !DILocation(line: 58, column: 9, scope: !915)
!960 = !DILocation(line: 58, column: 18, scope: !915)
!961 = !DILocation(line: 59, column: 13, scope: !915)
!962 = !DILocation(line: 59, column: 9, scope: !915)
!963 = !DILocation(line: 59, column: 18, scope: !915)
!964 = !DILocation(line: 60, column: 13, scope: !915)
!965 = !DILocation(line: 60, column: 9, scope: !915)
!966 = !DILocation(line: 60, column: 18, scope: !915)
!967 = !DILocation(line: 61, column: 13, scope: !915)
!968 = !DILocation(line: 61, column: 9, scope: !915)
!969 = !DILocation(line: 61, column: 18, scope: !915)
!970 = !DILocation(line: 62, column: 13, scope: !915)
!971 = !DILocation(line: 62, column: 9, scope: !915)
!972 = !DILocation(line: 62, column: 18, scope: !915)
!973 = !DILocation(line: 65, column: 30, scope: !915)
!974 = !DILocation(line: 65, column: 22, scope: !915)
!975 = !DILocation(line: 65, column: 13, scope: !915)
!976 = !DILocation(line: 65, column: 9, scope: !915)
!977 = !DILocation(line: 65, column: 20, scope: !915)
!978 = !DILocation(line: 66, column: 30, scope: !915)
!979 = !DILocation(line: 66, column: 22, scope: !915)
!980 = !DILocation(line: 66, column: 13, scope: !915)
!981 = !DILocation(line: 66, column: 9, scope: !915)
!982 = !DILocation(line: 66, column: 20, scope: !915)
!983 = !DILocation(line: 67, column: 30, scope: !915)
!984 = !DILocation(line: 67, column: 22, scope: !915)
!985 = !DILocation(line: 67, column: 13, scope: !915)
!986 = !DILocation(line: 67, column: 9, scope: !915)
!987 = !DILocation(line: 67, column: 20, scope: !915)
!988 = !DILocation(line: 68, column: 30, scope: !915)
!989 = !DILocation(line: 68, column: 22, scope: !915)
!990 = !DILocation(line: 68, column: 13, scope: !915)
!991 = !DILocation(line: 68, column: 9, scope: !915)
!992 = !DILocation(line: 68, column: 20, scope: !915)
!993 = !DILocation(line: 70, column: 13, scope: !915)
!994 = !DILocation(line: 70, column: 22, scope: !915)
!995 = !DILocation(line: 71, column: 13, scope: !915)
!996 = !DILocation(line: 71, column: 19, scope: !915)
!997 = !DILocation(line: 72, column: 1, scope: !915)
!998 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_decrypt_wrapper", scope: !206, file: !206, line: 5, type: !999, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !205, retainedNodes: !4)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!56, !57, !229, !57, !58, !58, !58, !58}
!1001 = !DILocalVariable(name: "m", arg: 1, scope: !998, file: !206, line: 5, type: !57)
!1002 = !DILocation(line: 0, scope: !998)
!1003 = !DILocalVariable(name: "mlen_p", arg: 2, scope: !998, file: !206, line: 6, type: !229)
!1004 = !DILocalVariable(name: "nsec", arg: 3, scope: !998, file: !206, line: 7, type: !57)
!1005 = !DILocalVariable(name: "c", arg: 4, scope: !998, file: !206, line: 8, type: !58)
!1006 = !DILocalVariable(name: "ad", arg: 5, scope: !998, file: !206, line: 9, type: !58)
!1007 = !DILocalVariable(name: "npub", arg: 6, scope: !998, file: !206, line: 10, type: !58)
!1008 = !DILocalVariable(name: "k", arg: 7, scope: !998, file: !206, line: 11, type: !58)
!1009 = !DILocation(line: 14, column: 13, scope: !998)
!1010 = !DILocation(line: 14, column: 3, scope: !998)
!1011 = !DILocation(line: 15, column: 13, scope: !998)
!1012 = !DILocation(line: 15, column: 3, scope: !998)
!1013 = !DILocation(line: 16, column: 13, scope: !998)
!1014 = !DILocation(line: 16, column: 3, scope: !998)
!1015 = !DILocation(line: 17, column: 13, scope: !998)
!1016 = !DILocation(line: 17, column: 3, scope: !998)
!1017 = !DILocation(line: 18, column: 13, scope: !998)
!1018 = !DILocation(line: 18, column: 3, scope: !998)
!1019 = !DILocation(line: 19, column: 13, scope: !998)
!1020 = !DILocation(line: 19, column: 3, scope: !998)
!1021 = !DILocation(line: 20, column: 13, scope: !998)
!1022 = !DILocation(line: 20, column: 3, scope: !998)
!1023 = !DILocation(line: 23, column: 13, scope: !998)
!1024 = !DILocation(line: 23, column: 3, scope: !998)
!1025 = !DILocation(line: 24, column: 13, scope: !998)
!1026 = !DILocation(line: 24, column: 3, scope: !998)
!1027 = !DILocation(line: 25, column: 13, scope: !998)
!1028 = !DILocation(line: 25, column: 3, scope: !998)
!1029 = !DILocation(line: 30, column: 30, scope: !998)
!1030 = !DILocation(line: 30, column: 15, scope: !998)
!1031 = !DILocation(line: 30, column: 5, scope: !998)
!1032 = !DILocation(line: 32, column: 11, scope: !998)
!1033 = !DILocation(line: 32, column: 3, scope: !998)
!1034 = distinct !DISubprogram(name: "vfct_tmp", scope: !206, file: !206, line: 48, type: !1035, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !205, retainedNodes: !4)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !57, !229, !57, !58, !58, !58, !58}
!1037 = !DILocalVariable(name: "m", arg: 1, scope: !1034, file: !206, line: 48, type: !57)
!1038 = !DILocation(line: 0, scope: !1034)
!1039 = !DILocalVariable(name: "mlen_p", arg: 2, scope: !1034, file: !206, line: 49, type: !229)
!1040 = !DILocalVariable(name: "nsec", arg: 3, scope: !1034, file: !206, line: 50, type: !57)
!1041 = !DILocalVariable(name: "c", arg: 4, scope: !1034, file: !206, line: 51, type: !58)
!1042 = !DILocalVariable(name: "ad", arg: 5, scope: !1034, file: !206, line: 53, type: !58)
!1043 = !DILocalVariable(name: "npub", arg: 6, scope: !1034, file: !206, line: 55, type: !58)
!1044 = !DILocalVariable(name: "k", arg: 7, scope: !1034, file: !206, line: 56, type: !58)
!1045 = !DILocation(line: 57, column: 3, scope: !1034)
!1046 = !DILocation(line: 62, column: 1, scope: !1034)
!1047 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_decrypt_wrapper_t", scope: !206, file: !206, line: 65, type: !134, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !205, retainedNodes: !4)
!1048 = !DILocalVariable(name: "dout", scope: !1047, file: !206, line: 67, type: !17)
!1049 = !DILocation(line: 67, column: 17, scope: !1047)
!1050 = !DILocation(line: 67, column: 24, scope: !1047)
!1051 = !DILocalVariable(name: "din", scope: !1047, file: !206, line: 68, type: !17)
!1052 = !DILocation(line: 68, column: 19, scope: !1047)
!1053 = !DILocation(line: 68, column: 25, scope: !1047)
!1054 = !DILocalVariable(name: "dk", scope: !1047, file: !206, line: 69, type: !59)
!1055 = !DILocation(line: 69, column: 21, scope: !1047)
!1056 = !DILocation(line: 69, column: 26, scope: !1047)
!1057 = !DILocalVariable(name: "dc", scope: !1047, file: !206, line: 70, type: !59)
!1058 = !DILocation(line: 70, column: 22, scope: !1047)
!1059 = !DILocation(line: 70, column: 27, scope: !1047)
!1060 = !DILocalVariable(name: "dsec", scope: !1047, file: !206, line: 71, type: !17)
!1061 = !DILocation(line: 71, column: 16, scope: !1047)
!1062 = !DILocation(line: 71, column: 23, scope: !1047)
!1063 = !DILocalVariable(name: "dkk", scope: !1047, file: !206, line: 72, type: !59)
!1064 = !DILocation(line: 72, column: 23, scope: !1047)
!1065 = !DILocation(line: 72, column: 29, scope: !1047)
!1066 = !DILocalVariable(name: "nsec", scope: !1047, file: !206, line: 74, type: !57)
!1067 = !DILocation(line: 0, scope: !1047)
!1068 = !DILocalVariable(name: "c", scope: !1047, file: !206, line: 75, type: !57)
!1069 = !DILocalVariable(name: "m", scope: !1047, file: !206, line: 76, type: !57)
!1070 = !DILocalVariable(name: "ad", scope: !1047, file: !206, line: 77, type: !58)
!1071 = !DILocalVariable(name: "npub", scope: !1047, file: !206, line: 78, type: !58)
!1072 = !DILocalVariable(name: "clen", scope: !1047, file: !206, line: 79, type: !14)
!1073 = !DILocation(line: 79, column: 20, scope: !1047)
!1074 = !DILocation(line: 79, column: 27, scope: !1047)
!1075 = !DILocalVariable(name: "mlen_p", scope: !1047, file: !206, line: 80, type: !229)
!1076 = !DILocalVariable(name: "k", scope: !1047, file: !206, line: 81, type: !58)
!1077 = !DILocation(line: 82, column: 3, scope: !1047)
!1078 = !DILocation(line: 87, column: 1, scope: !1047)
!1079 = distinct !DISubprogram(name: "crypto_onetimeauth_statebytes", scope: !208, file: !208, line: 5, type: !412, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !207, retainedNodes: !4)
!1080 = !DILocation(line: 7, column: 5, scope: !1079)
!1081 = distinct !DISubprogram(name: "crypto_onetimeauth_bytes", scope: !208, file: !208, line: 11, type: !412, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !207, retainedNodes: !4)
!1082 = !DILocation(line: 13, column: 5, scope: !1081)
!1083 = distinct !DISubprogram(name: "crypto_onetimeauth_keybytes", scope: !208, file: !208, line: 17, type: !412, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !207, retainedNodes: !4)
!1084 = !DILocation(line: 19, column: 5, scope: !1083)
!1085 = distinct !DISubprogram(name: "crypto_onetimeauth", scope: !208, file: !208, line: 23, type: !54, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !207, retainedNodes: !4)
!1086 = !DILocalVariable(name: "out", arg: 1, scope: !1085, file: !208, line: 23, type: !57)
!1087 = !DILocation(line: 0, scope: !1085)
!1088 = !DILocalVariable(name: "in", arg: 2, scope: !1085, file: !208, line: 23, type: !58)
!1089 = !DILocalVariable(name: "inlen", arg: 3, scope: !1085, file: !208, line: 24, type: !14)
!1090 = !DILocalVariable(name: "k", arg: 4, scope: !1085, file: !208, line: 24, type: !58)
!1091 = !DILocation(line: 26, column: 12, scope: !1085)
!1092 = !DILocation(line: 26, column: 5, scope: !1085)
!1093 = distinct !DISubprogram(name: "crypto_onetimeauth_verify", scope: !208, file: !208, line: 30, type: !62, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !207, retainedNodes: !4)
!1094 = !DILocalVariable(name: "h", arg: 1, scope: !1093, file: !208, line: 30, type: !58)
!1095 = !DILocation(line: 0, scope: !1093)
!1096 = !DILocalVariable(name: "in", arg: 2, scope: !1093, file: !208, line: 30, type: !58)
!1097 = !DILocalVariable(name: "inlen", arg: 3, scope: !1093, file: !208, line: 31, type: !14)
!1098 = !DILocalVariable(name: "k", arg: 4, scope: !1093, file: !208, line: 31, type: !58)
!1099 = !DILocation(line: 33, column: 12, scope: !1093)
!1100 = !DILocation(line: 33, column: 5, scope: !1093)
!1101 = distinct !DISubprogram(name: "crypto_onetimeauth_init", scope: !208, file: !208, line: 37, type: !1102, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !207, retainedNodes: !4)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!56, !1104, !58}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_state", file: !1106, line: 16, baseType: !211)
!1106 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/crypto_onetimeauth.h", directory: "/home/luwei/bech-back/libsodium/Aead")
!1107 = !DILocalVariable(name: "state", arg: 1, scope: !1101, file: !208, line: 37, type: !1104)
!1108 = !DILocation(line: 0, scope: !1101)
!1109 = !DILocalVariable(name: "key", arg: 2, scope: !1101, file: !208, line: 38, type: !58)
!1110 = !DILocation(line: 40, column: 12, scope: !1101)
!1111 = !DILocation(line: 40, column: 5, scope: !1101)
!1112 = distinct !DISubprogram(name: "crypto_onetimeauth_update", scope: !208, file: !208, line: 45, type: !1113, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !207, retainedNodes: !4)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!56, !1104, !58, !14}
!1115 = !DILocalVariable(name: "state", arg: 1, scope: !1112, file: !208, line: 45, type: !1104)
!1116 = !DILocation(line: 0, scope: !1112)
!1117 = !DILocalVariable(name: "in", arg: 2, scope: !1112, file: !208, line: 46, type: !58)
!1118 = !DILocalVariable(name: "inlen", arg: 3, scope: !1112, file: !208, line: 47, type: !14)
!1119 = !DILocation(line: 49, column: 12, scope: !1112)
!1120 = !DILocation(line: 49, column: 5, scope: !1112)
!1121 = distinct !DISubprogram(name: "crypto_onetimeauth_final", scope: !208, file: !208, line: 54, type: !1122, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !207, retainedNodes: !4)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!56, !1104, !57}
!1124 = !DILocalVariable(name: "state", arg: 1, scope: !1121, file: !208, line: 54, type: !1104)
!1125 = !DILocation(line: 0, scope: !1121)
!1126 = !DILocalVariable(name: "out", arg: 2, scope: !1121, file: !208, line: 55, type: !57)
!1127 = !DILocation(line: 57, column: 12, scope: !1121)
!1128 = !DILocation(line: 57, column: 5, scope: !1121)
!1129 = distinct !DISubprogram(name: "crypto_onetimeauth_primitive", scope: !208, file: !208, line: 62, type: !47, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !207, retainedNodes: !4)
!1130 = !DILocation(line: 64, column: 5, scope: !1129)
!1131 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_set_implementation", scope: !80, file: !80, line: 10, type: !1132, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!56, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1135 = !DILocalVariable(name: "impl", arg: 1, scope: !1131, file: !80, line: 10, type: !1134)
!1136 = !DILocation(line: 0, scope: !1131)
!1137 = !DILocation(line: 12, column: 20, scope: !1131)
!1138 = !DILocation(line: 14, column: 5, scope: !1131)
!1139 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_implementation_name", scope: !80, file: !80, line: 18, type: !47, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!1140 = !DILocation(line: 20, column: 12, scope: !1139)
!1141 = !DILocation(line: 20, column: 28, scope: !1139)
!1142 = !DILocation(line: 20, column: 5, scope: !1139)
!1143 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305", scope: !80, file: !80, line: 25, type: !54, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!1144 = !DILocalVariable(name: "out", arg: 1, scope: !1143, file: !80, line: 25, type: !57)
!1145 = !DILocation(line: 0, scope: !1143)
!1146 = !DILocalVariable(name: "in", arg: 2, scope: !1143, file: !80, line: 25, type: !58)
!1147 = !DILocalVariable(name: "inlen", arg: 3, scope: !1143, file: !80, line: 26, type: !14)
!1148 = !DILocalVariable(name: "k", arg: 4, scope: !1143, file: !80, line: 26, type: !58)
!1149 = !DILocation(line: 28, column: 12, scope: !1143)
!1150 = !DILocation(line: 28, column: 28, scope: !1143)
!1151 = !DILocation(line: 28, column: 5, scope: !1143)
!1152 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_verify", scope: !80, file: !80, line: 32, type: !62, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!1153 = !DILocalVariable(name: "h", arg: 1, scope: !1152, file: !80, line: 32, type: !58)
!1154 = !DILocation(line: 0, scope: !1152)
!1155 = !DILocalVariable(name: "in", arg: 2, scope: !1152, file: !80, line: 33, type: !58)
!1156 = !DILocalVariable(name: "inlen", arg: 3, scope: !1152, file: !80, line: 34, type: !14)
!1157 = !DILocalVariable(name: "k", arg: 4, scope: !1152, file: !80, line: 35, type: !58)
!1158 = !DILocation(line: 37, column: 12, scope: !1152)
!1159 = !DILocation(line: 37, column: 28, scope: !1152)
!1160 = !DILocation(line: 37, column: 5, scope: !1152)
!1161 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_init", scope: !80, file: !80, line: 41, type: !92, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!1162 = !DILocalVariable(name: "state", arg: 1, scope: !1161, file: !80, line: 41, type: !94)
!1163 = !DILocation(line: 0, scope: !1161)
!1164 = !DILocalVariable(name: "key", arg: 2, scope: !1161, file: !80, line: 42, type: !58)
!1165 = !DILocation(line: 44, column: 12, scope: !1161)
!1166 = !DILocation(line: 44, column: 28, scope: !1161)
!1167 = !DILocation(line: 44, column: 5, scope: !1161)
!1168 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_update", scope: !80, file: !80, line: 48, type: !102, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!1169 = !DILocalVariable(name: "state", arg: 1, scope: !1168, file: !80, line: 48, type: !94)
!1170 = !DILocation(line: 0, scope: !1168)
!1171 = !DILocalVariable(name: "in", arg: 2, scope: !1168, file: !80, line: 49, type: !58)
!1172 = !DILocalVariable(name: "inlen", arg: 3, scope: !1168, file: !80, line: 50, type: !14)
!1173 = !DILocation(line: 52, column: 12, scope: !1168)
!1174 = !DILocation(line: 52, column: 28, scope: !1168)
!1175 = !DILocation(line: 52, column: 5, scope: !1168)
!1176 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_final", scope: !80, file: !80, line: 56, type: !106, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!1177 = !DILocalVariable(name: "state", arg: 1, scope: !1176, file: !80, line: 56, type: !94)
!1178 = !DILocation(line: 0, scope: !1176)
!1179 = !DILocalVariable(name: "out", arg: 2, scope: !1176, file: !80, line: 57, type: !57)
!1180 = !DILocation(line: 59, column: 12, scope: !1176)
!1181 = !DILocation(line: 59, column: 28, scope: !1176)
!1182 = !DILocation(line: 59, column: 5, scope: !1176)
!1183 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !111, file: !111, line: 23, type: !1184, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !4)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!56, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!1187 = !DILocalVariable(name: "impl", arg: 1, scope: !1183, file: !111, line: 23, type: !1186)
!1188 = !DILocation(line: 0, scope: !1183)
!1189 = !DILocation(line: 25, column: 20, scope: !1183)
!1190 = !DILocation(line: 27, column: 5, scope: !1183)
!1191 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !111, file: !111, line: 31, type: !47, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !4)
!1192 = !DILocation(line: 34, column: 12, scope: !1191)
!1193 = !DILocation(line: 34, column: 28, scope: !1191)
!1194 = !DILocation(line: 34, column: 5, scope: !1191)
!1195 = distinct !DISubprogram(name: "randombytes_random", scope: !111, file: !111, line: 41, type: !130, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !4)
!1196 = !DILocation(line: 44, column: 12, scope: !1195)
!1197 = !DILocation(line: 44, column: 28, scope: !1195)
!1198 = !DILocation(line: 44, column: 5, scope: !1195)
!1199 = distinct !DISubprogram(name: "randombytes_stir", scope: !111, file: !111, line: 53, type: !134, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !4)
!1200 = !DILocation(line: 56, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1199, file: !111, line: 56, column: 9)
!1202 = !DILocation(line: 56, column: 24, scope: !1201)
!1203 = !DILocation(line: 56, column: 32, scope: !1201)
!1204 = !DILocation(line: 56, column: 35, scope: !1201)
!1205 = !DILocation(line: 56, column: 51, scope: !1201)
!1206 = !DILocation(line: 56, column: 56, scope: !1201)
!1207 = !DILocation(line: 56, column: 9, scope: !1199)
!1208 = !DILocation(line: 57, column: 9, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1201, file: !111, line: 56, column: 65)
!1210 = !DILocation(line: 57, column: 25, scope: !1209)
!1211 = !DILocation(line: 58, column: 5, scope: !1209)
!1212 = !DILocation(line: 87, column: 1, scope: !1199)
!1213 = distinct !DISubprogram(name: "randombytes_uniform", scope: !111, file: !111, line: 94, type: !138, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !4)
!1214 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !1213, file: !111, line: 94, type: !140)
!1215 = !DILocation(line: 0, scope: !1213)
!1216 = !DILocation(line: 99, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !111, line: 99, column: 9)
!1218 = !DILocation(line: 99, column: 24, scope: !1217)
!1219 = !DILocation(line: 99, column: 32, scope: !1217)
!1220 = !DILocation(line: 99, column: 35, scope: !1217)
!1221 = !DILocation(line: 99, column: 51, scope: !1217)
!1222 = !DILocation(line: 99, column: 59, scope: !1217)
!1223 = !DILocation(line: 99, column: 9, scope: !1213)
!1224 = !DILocation(line: 100, column: 16, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1217, file: !111, line: 99, column: 68)
!1226 = !DILocation(line: 100, column: 32, scope: !1225)
!1227 = !DILocation(line: 100, column: 9, scope: !1225)
!1228 = !DILocation(line: 102, column: 21, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1213, file: !111, line: 102, column: 9)
!1230 = !DILocation(line: 102, column: 9, scope: !1213)
!1231 = !DILocation(line: 103, column: 9, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !111, line: 102, column: 26)
!1233 = !DILocation(line: 105, column: 23, scope: !1213)
!1234 = !DILocation(line: 105, column: 36, scope: !1213)
!1235 = !DILocalVariable(name: "min", scope: !1213, file: !111, line: 96, type: !113)
!1236 = !DILocation(line: 106, column: 5, scope: !1213)
!1237 = !DILocation(line: 107, column: 13, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1213, file: !111, line: 106, column: 8)
!1239 = !DILocalVariable(name: "r", scope: !1213, file: !111, line: 97, type: !113)
!1240 = !DILocation(line: 108, column: 5, scope: !1238)
!1241 = !DILocation(line: 108, column: 16, scope: !1213)
!1242 = distinct !{!1242, !1236, !1243, !487}
!1243 = !DILocation(line: 108, column: 21, scope: !1213)
!1244 = !DILocation(line: 110, column: 14, scope: !1213)
!1245 = !DILocation(line: 110, column: 5, scope: !1213)
!1246 = !DILocation(line: 111, column: 1, scope: !1213)
!1247 = distinct !DISubprogram(name: "randombytes_buf", scope: !111, file: !111, line: 114, type: !143, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !4)
!1248 = !DILocalVariable(name: "buf", arg: 1, scope: !1247, file: !111, line: 114, type: !145)
!1249 = !DILocation(line: 0, scope: !1247)
!1250 = !DILocalVariable(name: "size", arg: 2, scope: !1247, file: !111, line: 114, type: !146)
!1251 = !DILocation(line: 117, column: 14, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !111, line: 117, column: 9)
!1253 = !DILocation(line: 117, column: 9, scope: !1247)
!1254 = !DILocation(line: 118, column: 9, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !111, line: 117, column: 29)
!1256 = !DILocation(line: 118, column: 25, scope: !1255)
!1257 = !DILocation(line: 119, column: 5, scope: !1255)
!1258 = !DILocation(line: 128, column: 1, scope: !1247)
!1259 = distinct !DISubprogram(name: "randombytes_close", scope: !111, file: !111, line: 131, type: !149, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !4)
!1260 = !DILocation(line: 133, column: 9, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1259, file: !111, line: 133, column: 9)
!1262 = !DILocation(line: 133, column: 24, scope: !1261)
!1263 = !DILocation(line: 133, column: 32, scope: !1261)
!1264 = !DILocation(line: 133, column: 35, scope: !1261)
!1265 = !DILocation(line: 133, column: 51, scope: !1261)
!1266 = !DILocation(line: 133, column: 57, scope: !1261)
!1267 = !DILocation(line: 133, column: 9, scope: !1259)
!1268 = !DILocation(line: 134, column: 16, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1261, file: !111, line: 133, column: 66)
!1270 = !DILocation(line: 134, column: 32, scope: !1269)
!1271 = !DILocation(line: 134, column: 9, scope: !1269)
!1272 = !DILocation(line: 136, column: 5, scope: !1259)
!1273 = !DILocation(line: 0, scope: !1259)
!1274 = !DILocation(line: 137, column: 1, scope: !1259)
!1275 = distinct !DISubprogram(name: "randombytes", scope: !111, file: !111, line: 140, type: !1276, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !110, retainedNodes: !4)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1280 = !DILocalVariable(name: "buf", arg: 1, scope: !1275, file: !111, line: 140, type: !1278)
!1281 = !DILocation(line: 0, scope: !1275)
!1282 = !DILocalVariable(name: "buf_len", arg: 2, scope: !1275, file: !111, line: 140, type: !1279)
!1283 = !DILocation(line: 142, column: 5, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !111, line: 142, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1275, file: !111, line: 142, column: 5)
!1286 = !DILocation(line: 142, column: 5, scope: !1285)
!1287 = !DILocation(line: 143, column: 5, scope: !1275)
!1288 = !DILocation(line: 144, column: 1, scope: !1275)
!1289 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !154, file: !154, line: 292, type: !47, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !4)
!1290 = !DILocation(line: 294, column: 5, scope: !1289)
!1291 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !154, file: !154, line: 249, type: !130, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !4)
!1292 = !DILocalVariable(name: "r", scope: !1291, file: !154, line: 251, type: !113)
!1293 = !DILocation(line: 251, column: 14, scope: !1291)
!1294 = !DILocation(line: 253, column: 31, scope: !1291)
!1295 = !DILocation(line: 253, column: 5, scope: !1291)
!1296 = !DILocation(line: 255, column: 12, scope: !1291)
!1297 = !DILocation(line: 255, column: 5, scope: !1291)
!1298 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !154, file: !154, line: 206, type: !134, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !4)
!1299 = !DILocation(line: 208, column: 16, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1298, file: !154, line: 208, column: 9)
!1301 = !DILocation(line: 208, column: 28, scope: !1300)
!1302 = !DILocation(line: 208, column: 9, scope: !1298)
!1303 = !DILocation(line: 209, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !154, line: 208, column: 34)
!1305 = !DILocation(line: 210, column: 28, scope: !1304)
!1306 = !DILocation(line: 211, column: 5, scope: !1304)
!1307 = !DILocation(line: 212, column: 1, scope: !1298)
!1308 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !154, file: !154, line: 259, type: !143, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !4)
!1309 = !DILocalVariable(name: "buf", arg: 1, scope: !1308, file: !154, line: 259, type: !145)
!1310 = !DILocation(line: 0, scope: !1308)
!1311 = !DILocalVariable(name: "size", arg: 2, scope: !1308, file: !154, line: 259, type: !146)
!1312 = !DILocation(line: 261, column: 5, scope: !1308)
!1313 = !DILocation(line: 268, column: 16, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1308, file: !154, line: 268, column: 9)
!1315 = !DILocation(line: 268, column: 36, scope: !1314)
!1316 = !DILocation(line: 268, column: 9, scope: !1308)
!1317 = !DILocation(line: 269, column: 13, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !154, line: 269, column: 13)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !154, line: 268, column: 42)
!1320 = !DILocation(line: 269, column: 52, scope: !1318)
!1321 = !DILocation(line: 269, column: 13, scope: !1319)
!1322 = !DILocation(line: 270, column: 13, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !154, line: 269, column: 58)
!1324 = !DILocation(line: 272, column: 9, scope: !1319)
!1325 = !DILocation(line: 275, column: 16, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1308, file: !154, line: 275, column: 9)
!1327 = !DILocation(line: 275, column: 38, scope: !1326)
!1328 = !DILocation(line: 275, column: 44, scope: !1326)
!1329 = !DILocation(line: 276, column: 26, scope: !1326)
!1330 = !DILocation(line: 276, column: 9, scope: !1326)
!1331 = !DILocation(line: 276, column: 60, scope: !1326)
!1332 = !DILocation(line: 275, column: 9, scope: !1308)
!1333 = !DILocation(line: 277, column: 9, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1326, file: !154, line: 276, column: 79)
!1335 = !DILocation(line: 287, column: 1, scope: !1308)
!1336 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !154, file: !154, line: 223, type: !149, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !153, retainedNodes: !4)
!1337 = !DILocalVariable(name: "ret", scope: !1336, file: !154, line: 225, type: !56)
!1338 = !DILocation(line: 0, scope: !1336)
!1339 = !DILocation(line: 228, column: 16, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !154, line: 228, column: 9)
!1341 = !DILocation(line: 228, column: 38, scope: !1340)
!1342 = !DILocation(line: 228, column: 44, scope: !1340)
!1343 = !DILocation(line: 229, column: 22, scope: !1340)
!1344 = !DILocation(line: 229, column: 9, scope: !1340)
!1345 = !DILocation(line: 229, column: 45, scope: !1340)
!1346 = !DILocation(line: 228, column: 9, scope: !1336)
!1347 = !DILocation(line: 230, column: 38, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1340, file: !154, line: 229, column: 51)
!1349 = !DILocation(line: 231, column: 28, scope: !1348)
!1350 = !DILocation(line: 233, column: 5, scope: !1348)
!1351 = !DILocation(line: 235, column: 16, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1336, file: !154, line: 235, column: 9)
!1353 = !DILocation(line: 235, column: 36, scope: !1352)
!1354 = !DILocation(line: 235, column: 9, scope: !1336)
!1355 = !DILocation(line: 237, column: 5, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !154, line: 235, column: 42)
!1357 = !DILocation(line: 245, column: 5, scope: !1336)
!1358 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !154, file: !154, line: 215, type: !134, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !4)
!1359 = !DILocation(line: 217, column: 16, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1358, file: !154, line: 217, column: 9)
!1361 = !DILocation(line: 217, column: 28, scope: !1360)
!1362 = !DILocation(line: 217, column: 9, scope: !1358)
!1363 = !DILocation(line: 218, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !154, line: 217, column: 34)
!1365 = !DILocation(line: 219, column: 5, scope: !1364)
!1366 = !DILocation(line: 220, column: 1, scope: !1358)
!1367 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !154, file: !154, line: 151, type: !1368, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !4)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!56, !145, !118}
!1370 = !DILocalVariable(name: "buf_", arg: 1, scope: !1367, file: !154, line: 151, type: !145)
!1371 = !DILocation(line: 0, scope: !1367)
!1372 = !DILocalVariable(name: "size", arg: 2, scope: !1367, file: !154, line: 151, type: !118)
!1373 = !DILocalVariable(name: "buf", scope: !1367, file: !154, line: 153, type: !57)
!1374 = !DILocalVariable(name: "chunk_size", scope: !1367, file: !154, line: 154, type: !118)
!1375 = !DILocation(line: 156, column: 5, scope: !1367)
!1376 = !DILocation(line: 157, column: 18, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !154, line: 157, column: 13)
!1378 = distinct !DILexicalBlock(scope: !1367, file: !154, line: 156, column: 8)
!1379 = !DILocation(line: 157, column: 13, scope: !1378)
!1380 = !DILocation(line: 159, column: 13, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !154, line: 159, column: 13)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !154, line: 159, column: 13)
!1383 = distinct !DILexicalBlock(scope: !1377, file: !154, line: 157, column: 32)
!1384 = !DILocation(line: 159, column: 13, scope: !1382)
!1385 = !DILocation(line: 160, column: 9, scope: !1383)
!1386 = !DILocation(line: 161, column: 13, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1378, file: !154, line: 161, column: 13)
!1388 = !DILocation(line: 161, column: 59, scope: !1387)
!1389 = !DILocation(line: 161, column: 13, scope: !1378)
!1390 = !DILocation(line: 162, column: 13, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !154, line: 161, column: 65)
!1392 = !DILocation(line: 164, column: 14, scope: !1378)
!1393 = !DILocation(line: 165, column: 13, scope: !1378)
!1394 = !DILocation(line: 166, column: 5, scope: !1378)
!1395 = !DILocation(line: 166, column: 19, scope: !1367)
!1396 = distinct !{!1396, !1375, !1397, !487}
!1397 = !DILocation(line: 166, column: 32, scope: !1367)
!1398 = !DILocation(line: 168, column: 5, scope: !1367)
!1399 = !DILocation(line: 169, column: 1, scope: !1367)
!1400 = distinct !DISubprogram(name: "safe_read", scope: !154, file: !154, line: 77, type: !1401, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !4)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!156, !1403, !145, !118}
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1404 = !DILocalVariable(name: "fd", arg: 1, scope: !1400, file: !154, line: 77, type: !1403)
!1405 = !DILocation(line: 0, scope: !1400)
!1406 = !DILocalVariable(name: "buf_", arg: 2, scope: !1400, file: !154, line: 77, type: !145)
!1407 = !DILocalVariable(name: "size", arg: 3, scope: !1400, file: !154, line: 77, type: !118)
!1408 = !DILocalVariable(name: "buf", scope: !1400, file: !154, line: 79, type: !57)
!1409 = !DILocation(line: 82, column: 5, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !154, line: 82, column: 5)
!1411 = distinct !DILexicalBlock(scope: !1400, file: !154, line: 82, column: 5)
!1412 = !DILocation(line: 82, column: 5, scope: !1411)
!1413 = !DILocation(line: 83, column: 5, scope: !1400)
!1414 = !DILocation(line: 84, column: 9, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1400, file: !154, line: 83, column: 8)
!1416 = !DILocation(line: 84, column: 26, scope: !1415)
!1417 = !DILocalVariable(name: "readnb", scope: !1400, file: !154, line: 80, type: !156)
!1418 = !DILocation(line: 84, column: 47, scope: !1415)
!1419 = !DILocation(line: 84, column: 61, scope: !1415)
!1420 = !DILocation(line: 85, column: 17, scope: !1415)
!1421 = !DILocation(line: 85, column: 23, scope: !1415)
!1422 = !DILocation(line: 85, column: 32, scope: !1415)
!1423 = !DILocation(line: 85, column: 35, scope: !1415)
!1424 = !DILocation(line: 85, column: 41, scope: !1415)
!1425 = !DILocation(line: 0, scope: !1415)
!1426 = distinct !{!1426, !1414, !1427, !487}
!1427 = !DILocation(line: 85, column: 52, scope: !1415)
!1428 = !DILocation(line: 86, column: 20, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1415, file: !154, line: 86, column: 13)
!1430 = !DILocation(line: 86, column: 13, scope: !1415)
!1431 = !DILocation(line: 87, column: 13, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !154, line: 86, column: 35)
!1433 = !DILocation(line: 89, column: 20, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1415, file: !154, line: 89, column: 13)
!1435 = !DILocation(line: 89, column: 13, scope: !1415)
!1436 = !DILocation(line: 90, column: 13, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !154, line: 89, column: 36)
!1438 = !DILocation(line: 92, column: 14, scope: !1415)
!1439 = !DILocation(line: 93, column: 13, scope: !1415)
!1440 = !DILocation(line: 94, column: 5, scope: !1415)
!1441 = !DILocation(line: 94, column: 19, scope: !1400)
!1442 = distinct !{!1442, !1413, !1443, !487}
!1443 = !DILocation(line: 94, column: 32, scope: !1400)
!1444 = !DILocation(line: 96, column: 27, scope: !1400)
!1445 = !DILocation(line: 96, column: 5, scope: !1400)
!1446 = !DILocation(line: 97, column: 1, scope: !1400)
!1447 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !154, file: !154, line: 138, type: !1448, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !4)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!56, !145, !146}
!1450 = !DILocalVariable(name: "buf", arg: 1, scope: !1447, file: !154, line: 138, type: !145)
!1451 = !DILocation(line: 0, scope: !1447)
!1452 = !DILocalVariable(name: "size", arg: 2, scope: !1447, file: !154, line: 138, type: !146)
!1453 = !DILocation(line: 142, column: 5, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !154, line: 142, column: 5)
!1455 = distinct !DILexicalBlock(scope: !1447, file: !154, line: 142, column: 5)
!1456 = !DILocation(line: 142, column: 5, scope: !1455)
!1457 = !DILocation(line: 143, column: 5, scope: !1447)
!1458 = !DILocation(line: 144, column: 46, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1447, file: !154, line: 143, column: 8)
!1460 = !DILocation(line: 144, column: 18, scope: !1459)
!1461 = !DILocalVariable(name: "readnb", scope: !1447, file: !154, line: 140, type: !56)
!1462 = !DILocation(line: 145, column: 5, scope: !1459)
!1463 = !DILocation(line: 145, column: 21, scope: !1447)
!1464 = !DILocation(line: 145, column: 25, scope: !1447)
!1465 = !DILocation(line: 145, column: 29, scope: !1447)
!1466 = !DILocation(line: 145, column: 35, scope: !1447)
!1467 = !DILocation(line: 145, column: 44, scope: !1447)
!1468 = !DILocation(line: 145, column: 47, scope: !1447)
!1469 = !DILocation(line: 145, column: 53, scope: !1447)
!1470 = distinct !{!1470, !1457, !1471, !487}
!1471 = !DILocation(line: 145, column: 63, scope: !1447)
!1472 = !DILocation(line: 147, column: 23, scope: !1447)
!1473 = !DILocation(line: 147, column: 20, scope: !1447)
!1474 = !DILocation(line: 147, column: 35, scope: !1447)
!1475 = !DILocation(line: 147, column: 5, scope: !1447)
!1476 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !154, file: !154, line: 173, type: !134, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !153, retainedNodes: !4)
!1477 = !DILocation(line: 175, column: 32, scope: !1476)
!1478 = !DILocalVariable(name: "errno_save", scope: !1476, file: !154, line: 175, type: !1403)
!1479 = !DILocation(line: 0, scope: !1476)
!1480 = !DILocalVariable(name: "fodder", scope: !1481, file: !154, line: 179, type: !37)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !154, line: 178, column: 5)
!1482 = !DILocation(line: 179, column: 16, scope: !1481)
!1483 = !DILocation(line: 181, column: 34, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !154, line: 181, column: 6)
!1485 = !DILocation(line: 181, column: 6, scope: !1484)
!1486 = !DILocation(line: 181, column: 57, scope: !1484)
!1487 = !DILocation(line: 181, column: 6, scope: !1481)
!1488 = !DILocation(line: 182, column: 33, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !154, line: 181, column: 63)
!1490 = !DILocation(line: 183, column: 6, scope: !1489)
!1491 = !DILocation(line: 183, column: 12, scope: !1489)
!1492 = !DILocation(line: 184, column: 6, scope: !1489)
!1493 = !DILocation(line: 186, column: 29, scope: !1481)
!1494 = !DILocation(line: 191, column: 10, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1476, file: !154, line: 190, column: 9)
!1496 = !DILocation(line: 190, column: 39, scope: !1495)
!1497 = !DILocation(line: 191, column: 51, scope: !1495)
!1498 = !DILocation(line: 190, column: 9, scope: !1476)
!1499 = !DILocation(line: 192, column: 9, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !154, line: 191, column: 58)
!1501 = !DILocation(line: 194, column: 5, scope: !1476)
!1502 = !DILocation(line: 194, column: 11, scope: !1476)
!1503 = !DILocation(line: 195, column: 1, scope: !1476)
!1504 = !DILocalVariable(name: "st", scope: !171, file: !154, line: 105, type: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1506, line: 46, size: 1152, elements: !1507)
!1506 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1507 = !{!1508, !1510, !1512, !1514, !1516, !1518, !1520, !1521, !1522, !1524, !1526, !1528, !1536, !1537, !1538}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1505, file: !1506, line: 48, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !116, line: 145, baseType: !27)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1505, file: !1506, line: 53, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !116, line: 148, baseType: !27)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1505, file: !1506, line: 61, baseType: !1513, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !116, line: 151, baseType: !27)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1505, file: !1506, line: 62, baseType: !1515, size: 32, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !116, line: 150, baseType: !117)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1505, file: !1506, line: 64, baseType: !1517, size: 32, offset: 224)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !116, line: 146, baseType: !117)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1505, file: !1506, line: 65, baseType: !1519, size: 32, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !116, line: 147, baseType: !117)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1505, file: !1506, line: 67, baseType: !56, size: 32, offset: 288)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1505, file: !1506, line: 69, baseType: !1509, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1505, file: !1506, line: 74, baseType: !1523, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 152, baseType: !159)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1505, file: !1506, line: 78, baseType: !1525, size: 64, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !116, line: 174, baseType: !159)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1505, file: !1506, line: 80, baseType: !1527, size: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !116, line: 179, baseType: !159)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1505, file: !1506, line: 91, baseType: !1529, size: 128, offset: 576)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1530, line: 10, size: 128, elements: !1531)
!1530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1531 = !{!1532, !1534}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1529, file: !1530, line: 12, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !116, line: 160, baseType: !159)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1529, file: !1530, line: 16, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !116, line: 196, baseType: !159)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1505, file: !1506, line: 92, baseType: !1529, size: 128, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1505, file: !1506, line: 93, baseType: !1529, size: 128, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1505, file: !1506, line: 106, baseType: !1539, size: 192, offset: 960)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1535, size: 192, elements: !173)
!1540 = !DILocation(line: 105, column: 24, scope: !171)
!1541 = !DILocalVariable(name: "device", scope: !171, file: !154, line: 112, type: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!1543 = !DILocation(line: 0, scope: !171)
!1544 = !DILocation(line: 115, column: 5, scope: !171)
!1545 = !DILocation(line: 116, column: 19, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !171, file: !154, line: 115, column: 8)
!1547 = !DILocation(line: 116, column: 14, scope: !1546)
!1548 = !DILocalVariable(name: "fd", scope: !171, file: !154, line: 113, type: !56)
!1549 = !DILocation(line: 117, column: 16, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !154, line: 117, column: 13)
!1551 = !DILocation(line: 117, column: 13, scope: !1546)
!1552 = !DILocation(line: 118, column: 17, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !154, line: 118, column: 17)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !154, line: 117, column: 23)
!1555 = !DILocation(line: 118, column: 32, scope: !1553)
!1556 = !DILocation(line: 118, column: 37, scope: !1553)
!1557 = !DILocation(line: 118, column: 40, scope: !1553)
!1558 = !DILocation(line: 118, column: 17, scope: !1554)
!1559 = !DILocation(line: 120, column: 43, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1553, file: !154, line: 118, column: 61)
!1561 = !DILocation(line: 120, column: 62, scope: !1560)
!1562 = !DILocation(line: 120, column: 24, scope: !1560)
!1563 = !DILocation(line: 122, column: 17, scope: !1560)
!1564 = !DILocation(line: 124, column: 20, scope: !1554)
!1565 = !DILocation(line: 125, column: 9, scope: !1554)
!1566 = !DILocation(line: 125, column: 20, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1550, file: !154, line: 125, column: 20)
!1568 = !DILocation(line: 125, column: 26, scope: !1567)
!1569 = !DILocation(line: 125, column: 20, scope: !1550)
!1570 = !DILocation(line: 126, column: 13, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !154, line: 125, column: 36)
!1572 = !DILocation(line: 128, column: 15, scope: !1546)
!1573 = !DILocation(line: 129, column: 5, scope: !1546)
!1574 = !DILocation(line: 129, column: 14, scope: !171)
!1575 = !DILocation(line: 129, column: 22, scope: !171)
!1576 = distinct !{!1576, !1544, !1577, !487}
!1577 = !DILocation(line: 129, column: 29, scope: !171)
!1578 = !DILocation(line: 131, column: 5, scope: !171)
!1579 = !DILocation(line: 131, column: 11, scope: !171)
!1580 = !DILocation(line: 132, column: 5, scope: !171)
!1581 = !DILocation(line: 134, column: 1, scope: !171)
!1582 = distinct !DISubprogram(name: "crypto_stream_chacha20_keybytes", scope: !217, file: !217, line: 5, type: !412, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !216, retainedNodes: !4)
!1583 = !DILocation(line: 6, column: 5, scope: !1582)
!1584 = distinct !DISubprogram(name: "crypto_stream_chacha20_noncebytes", scope: !217, file: !217, line: 10, type: !412, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !216, retainedNodes: !4)
!1585 = !DILocation(line: 11, column: 5, scope: !1584)
!1586 = distinct !DISubprogram(name: "crypto_stream_chacha20", scope: !217, file: !217, line: 15, type: !1587, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !216, retainedNodes: !4)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!56, !57, !14, !58, !58}
!1589 = !DILocalVariable(name: "c", arg: 1, scope: !1586, file: !217, line: 15, type: !57)
!1590 = !DILocation(line: 0, scope: !1586)
!1591 = !DILocalVariable(name: "clen", arg: 2, scope: !1586, file: !217, line: 15, type: !14)
!1592 = !DILocalVariable(name: "n", arg: 3, scope: !1586, file: !217, line: 16, type: !58)
!1593 = !DILocalVariable(name: "k", arg: 4, scope: !1586, file: !217, line: 16, type: !58)
!1594 = !DILocation(line: 18, column: 12, scope: !1586)
!1595 = !DILocation(line: 18, column: 5, scope: !1586)
!1596 = distinct !DISubprogram(name: "crypto_stream_chacha20_xor_ic", scope: !217, file: !217, line: 22, type: !1597, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !216, retainedNodes: !4)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!56, !57, !58, !14, !58, !1599, !58}
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !114, line: 27, baseType: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !116, line: 45, baseType: !27)
!1601 = !DILocalVariable(name: "c", arg: 1, scope: !1596, file: !217, line: 22, type: !57)
!1602 = !DILocation(line: 0, scope: !1596)
!1603 = !DILocalVariable(name: "m", arg: 2, scope: !1596, file: !217, line: 22, type: !58)
!1604 = !DILocalVariable(name: "mlen", arg: 3, scope: !1596, file: !217, line: 23, type: !14)
!1605 = !DILocalVariable(name: "n", arg: 4, scope: !1596, file: !217, line: 24, type: !58)
!1606 = !DILocalVariable(name: "ic", arg: 5, scope: !1596, file: !217, line: 24, type: !1599)
!1607 = !DILocalVariable(name: "k", arg: 6, scope: !1596, file: !217, line: 25, type: !58)
!1608 = !DILocation(line: 27, column: 12, scope: !1596)
!1609 = !DILocation(line: 27, column: 5, scope: !1596)
!1610 = distinct !DISubprogram(name: "crypto_stream_chacha20_xor", scope: !217, file: !217, line: 31, type: !1611, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !216, retainedNodes: !4)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!56, !57, !58, !14, !58, !58}
!1613 = !DILocalVariable(name: "c", arg: 1, scope: !1610, file: !217, line: 31, type: !57)
!1614 = !DILocation(line: 0, scope: !1610)
!1615 = !DILocalVariable(name: "m", arg: 2, scope: !1610, file: !217, line: 31, type: !58)
!1616 = !DILocalVariable(name: "mlen", arg: 3, scope: !1610, file: !217, line: 32, type: !14)
!1617 = !DILocalVariable(name: "n", arg: 4, scope: !1610, file: !217, line: 32, type: !58)
!1618 = !DILocalVariable(name: "k", arg: 5, scope: !1610, file: !217, line: 33, type: !58)
!1619 = !DILocation(line: 35, column: 12, scope: !1610)
!1620 = !DILocation(line: 35, column: 5, scope: !1610)
!1621 = distinct !DISubprogram(name: "crypto_stream_chacha20_ref", scope: !186, file: !186, line: 233, type: !1587, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !185, retainedNodes: !4)
!1622 = !DILocalVariable(name: "c", arg: 1, scope: !1621, file: !186, line: 233, type: !57)
!1623 = !DILocation(line: 0, scope: !1621)
!1624 = !DILocalVariable(name: "clen", arg: 2, scope: !1621, file: !186, line: 233, type: !14)
!1625 = !DILocalVariable(name: "n", arg: 3, scope: !1621, file: !186, line: 234, type: !58)
!1626 = !DILocalVariable(name: "k", arg: 4, scope: !1621, file: !186, line: 234, type: !58)
!1627 = !DILocalVariable(name: "ctx", scope: !1621, file: !186, line: 236, type: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chacha_ctx", file: !186, line: 17, size: 512, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1628, file: !186, line: 18, baseType: !1631, size: 512)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 512, elements: !38)
!1632 = !DILocation(line: 236, column: 23, scope: !1621)
!1633 = !DILocation(line: 238, column: 10, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1621, file: !186, line: 238, column: 9)
!1635 = !DILocation(line: 238, column: 9, scope: !1621)
!1636 = !DILocation(line: 239, column: 9, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !186, line: 238, column: 16)
!1638 = !DILocation(line: 242, column: 5, scope: !1621)
!1639 = !DILocation(line: 243, column: 5, scope: !1621)
!1640 = !DILocation(line: 244, column: 5, scope: !1621)
!1641 = !DILocation(line: 245, column: 5, scope: !1621)
!1642 = !DILocation(line: 246, column: 20, scope: !1621)
!1643 = !DILocation(line: 246, column: 5, scope: !1621)
!1644 = !DILocation(line: 248, column: 5, scope: !1621)
!1645 = !DILocation(line: 249, column: 1, scope: !1621)
!1646 = distinct !DISubprogram(name: "chacha_keysetup", scope: !186, file: !186, line: 65, type: !1647, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !185, retainedNodes: !4)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !1649, !1651}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "chacha_ctx", file: !186, line: 24, baseType: !1628)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!1653 = !DILocalVariable(name: "x", arg: 1, scope: !1646, file: !186, line: 65, type: !1649)
!1654 = !DILocation(line: 0, scope: !1646)
!1655 = !DILocalVariable(name: "k", arg: 2, scope: !1646, file: !186, line: 65, type: !1651)
!1656 = !DILocation(line: 69, column: 19, scope: !1646)
!1657 = !DILocation(line: 69, column: 8, scope: !1646)
!1658 = !DILocation(line: 69, column: 5, scope: !1646)
!1659 = !DILocation(line: 69, column: 17, scope: !1646)
!1660 = !DILocation(line: 70, column: 19, scope: !1646)
!1661 = !DILocation(line: 70, column: 8, scope: !1646)
!1662 = !DILocation(line: 70, column: 5, scope: !1646)
!1663 = !DILocation(line: 70, column: 17, scope: !1646)
!1664 = !DILocation(line: 71, column: 19, scope: !1646)
!1665 = !DILocation(line: 71, column: 8, scope: !1646)
!1666 = !DILocation(line: 71, column: 5, scope: !1646)
!1667 = !DILocation(line: 71, column: 17, scope: !1646)
!1668 = !DILocation(line: 72, column: 19, scope: !1646)
!1669 = !DILocation(line: 72, column: 8, scope: !1646)
!1670 = !DILocation(line: 72, column: 5, scope: !1646)
!1671 = !DILocation(line: 72, column: 17, scope: !1646)
!1672 = !DILocation(line: 73, column: 7, scope: !1646)
!1673 = !DILocalVariable(name: "constants", scope: !1646, file: !186, line: 67, type: !58)
!1674 = !DILocation(line: 75, column: 19, scope: !1646)
!1675 = !DILocation(line: 75, column: 8, scope: !1646)
!1676 = !DILocation(line: 75, column: 5, scope: !1646)
!1677 = !DILocation(line: 75, column: 17, scope: !1646)
!1678 = !DILocation(line: 76, column: 19, scope: !1646)
!1679 = !DILocation(line: 76, column: 8, scope: !1646)
!1680 = !DILocation(line: 76, column: 5, scope: !1646)
!1681 = !DILocation(line: 76, column: 17, scope: !1646)
!1682 = !DILocation(line: 77, column: 20, scope: !1646)
!1683 = !DILocation(line: 77, column: 8, scope: !1646)
!1684 = !DILocation(line: 77, column: 5, scope: !1646)
!1685 = !DILocation(line: 77, column: 18, scope: !1646)
!1686 = !DILocation(line: 78, column: 20, scope: !1646)
!1687 = !DILocation(line: 78, column: 8, scope: !1646)
!1688 = !DILocation(line: 78, column: 5, scope: !1646)
!1689 = !DILocation(line: 78, column: 18, scope: !1646)
!1690 = !DILocation(line: 79, column: 19, scope: !1646)
!1691 = !DILocation(line: 79, column: 8, scope: !1646)
!1692 = !DILocation(line: 79, column: 5, scope: !1646)
!1693 = !DILocation(line: 79, column: 17, scope: !1646)
!1694 = !DILocation(line: 80, column: 19, scope: !1646)
!1695 = !DILocation(line: 80, column: 8, scope: !1646)
!1696 = !DILocation(line: 80, column: 5, scope: !1646)
!1697 = !DILocation(line: 80, column: 17, scope: !1646)
!1698 = !DILocation(line: 81, column: 19, scope: !1646)
!1699 = !DILocation(line: 81, column: 8, scope: !1646)
!1700 = !DILocation(line: 81, column: 5, scope: !1646)
!1701 = !DILocation(line: 81, column: 17, scope: !1646)
!1702 = !DILocation(line: 82, column: 19, scope: !1646)
!1703 = !DILocation(line: 82, column: 8, scope: !1646)
!1704 = !DILocation(line: 82, column: 5, scope: !1646)
!1705 = !DILocation(line: 82, column: 17, scope: !1646)
!1706 = !DILocation(line: 83, column: 1, scope: !1646)
!1707 = distinct !DISubprogram(name: "chacha_ivsetup", scope: !186, file: !186, line: 86, type: !1708, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !185, retainedNodes: !4)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{null, !1649, !1651, !1651}
!1710 = !DILocalVariable(name: "x", arg: 1, scope: !1707, file: !186, line: 86, type: !1649)
!1711 = !DILocation(line: 0, scope: !1707)
!1712 = !DILocalVariable(name: "iv", arg: 2, scope: !1707, file: !186, line: 86, type: !1651)
!1713 = !DILocalVariable(name: "counter", arg: 3, scope: !1707, file: !186, line: 86, type: !1651)
!1714 = !DILocation(line: 88, column: 28, scope: !1707)
!1715 = !DILocation(line: 88, column: 20, scope: !1707)
!1716 = !DILocation(line: 88, column: 42, scope: !1707)
!1717 = !DILocation(line: 88, column: 8, scope: !1707)
!1718 = !DILocation(line: 88, column: 5, scope: !1707)
!1719 = !DILocation(line: 88, column: 18, scope: !1707)
!1720 = !DILocation(line: 89, column: 28, scope: !1707)
!1721 = !DILocation(line: 89, column: 20, scope: !1707)
!1722 = !DILocation(line: 89, column: 42, scope: !1707)
!1723 = !DILocation(line: 89, column: 8, scope: !1707)
!1724 = !DILocation(line: 89, column: 5, scope: !1707)
!1725 = !DILocation(line: 89, column: 18, scope: !1707)
!1726 = !DILocation(line: 90, column: 20, scope: !1707)
!1727 = !DILocation(line: 90, column: 8, scope: !1707)
!1728 = !DILocation(line: 90, column: 5, scope: !1707)
!1729 = !DILocation(line: 90, column: 18, scope: !1707)
!1730 = !DILocation(line: 91, column: 20, scope: !1707)
!1731 = !DILocation(line: 91, column: 8, scope: !1707)
!1732 = !DILocation(line: 91, column: 5, scope: !1707)
!1733 = !DILocation(line: 91, column: 18, scope: !1707)
!1734 = !DILocation(line: 92, column: 1, scope: !1707)
!1735 = distinct !DISubprogram(name: "chacha_encrypt_bytes", scope: !186, file: !186, line: 95, type: !1736, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !185, retainedNodes: !4)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1649, !1651, !1738, !14}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!1739 = !DILocalVariable(name: "x", arg: 1, scope: !1735, file: !186, line: 95, type: !1649)
!1740 = !DILocation(line: 0, scope: !1735)
!1741 = !DILocalVariable(name: "m", arg: 2, scope: !1735, file: !186, line: 95, type: !1651)
!1742 = !DILocalVariable(name: "c", arg: 3, scope: !1735, file: !186, line: 95, type: !1738)
!1743 = !DILocalVariable(name: "bytes", arg: 4, scope: !1735, file: !186, line: 95, type: !14)
!1744 = !DILocalVariable(name: "ctarget", scope: !1735, file: !186, line: 99, type: !1738)
!1745 = !DILocalVariable(name: "tmp", scope: !1735, file: !186, line: 100, type: !1746)
!1746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 512, elements: !249)
!1747 = !DILocation(line: 100, column: 8, scope: !1735)
!1748 = !DILocation(line: 103, column: 10, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1735, file: !186, line: 103, column: 9)
!1750 = !DILocation(line: 103, column: 9, scope: !1735)
!1751 = !DILocation(line: 104, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !186, line: 103, column: 17)
!1753 = !DILocation(line: 106, column: 13, scope: !1735)
!1754 = !DILocation(line: 106, column: 10, scope: !1735)
!1755 = !DILocalVariable(name: "j0", scope: !1735, file: !186, line: 98, type: !188)
!1756 = !DILocation(line: 107, column: 13, scope: !1735)
!1757 = !DILocation(line: 107, column: 10, scope: !1735)
!1758 = !DILocalVariable(name: "j1", scope: !1735, file: !186, line: 98, type: !188)
!1759 = !DILocation(line: 108, column: 13, scope: !1735)
!1760 = !DILocation(line: 108, column: 10, scope: !1735)
!1761 = !DILocalVariable(name: "j2", scope: !1735, file: !186, line: 98, type: !188)
!1762 = !DILocation(line: 109, column: 13, scope: !1735)
!1763 = !DILocation(line: 109, column: 10, scope: !1735)
!1764 = !DILocalVariable(name: "j3", scope: !1735, file: !186, line: 98, type: !188)
!1765 = !DILocation(line: 110, column: 13, scope: !1735)
!1766 = !DILocation(line: 110, column: 10, scope: !1735)
!1767 = !DILocalVariable(name: "j4", scope: !1735, file: !186, line: 98, type: !188)
!1768 = !DILocation(line: 111, column: 13, scope: !1735)
!1769 = !DILocation(line: 111, column: 10, scope: !1735)
!1770 = !DILocalVariable(name: "j5", scope: !1735, file: !186, line: 98, type: !188)
!1771 = !DILocation(line: 112, column: 13, scope: !1735)
!1772 = !DILocation(line: 112, column: 10, scope: !1735)
!1773 = !DILocalVariable(name: "j6", scope: !1735, file: !186, line: 98, type: !188)
!1774 = !DILocation(line: 113, column: 13, scope: !1735)
!1775 = !DILocation(line: 113, column: 10, scope: !1735)
!1776 = !DILocalVariable(name: "j7", scope: !1735, file: !186, line: 98, type: !188)
!1777 = !DILocation(line: 114, column: 13, scope: !1735)
!1778 = !DILocation(line: 114, column: 10, scope: !1735)
!1779 = !DILocalVariable(name: "j8", scope: !1735, file: !186, line: 98, type: !188)
!1780 = !DILocation(line: 115, column: 13, scope: !1735)
!1781 = !DILocation(line: 115, column: 10, scope: !1735)
!1782 = !DILocalVariable(name: "j9", scope: !1735, file: !186, line: 98, type: !188)
!1783 = !DILocation(line: 116, column: 14, scope: !1735)
!1784 = !DILocation(line: 116, column: 11, scope: !1735)
!1785 = !DILocalVariable(name: "j10", scope: !1735, file: !186, line: 98, type: !188)
!1786 = !DILocation(line: 117, column: 14, scope: !1735)
!1787 = !DILocation(line: 117, column: 11, scope: !1735)
!1788 = !DILocalVariable(name: "j11", scope: !1735, file: !186, line: 98, type: !188)
!1789 = !DILocation(line: 118, column: 14, scope: !1735)
!1790 = !DILocation(line: 118, column: 11, scope: !1735)
!1791 = !DILocalVariable(name: "j12", scope: !1735, file: !186, line: 98, type: !188)
!1792 = !DILocation(line: 119, column: 14, scope: !1735)
!1793 = !DILocation(line: 119, column: 11, scope: !1735)
!1794 = !DILocalVariable(name: "j13", scope: !1735, file: !186, line: 98, type: !188)
!1795 = !DILocation(line: 120, column: 14, scope: !1735)
!1796 = !DILocation(line: 120, column: 11, scope: !1735)
!1797 = !DILocalVariable(name: "j14", scope: !1735, file: !186, line: 98, type: !188)
!1798 = !DILocation(line: 121, column: 14, scope: !1735)
!1799 = !DILocation(line: 121, column: 11, scope: !1735)
!1800 = !DILocalVariable(name: "j15", scope: !1735, file: !186, line: 98, type: !188)
!1801 = !DILocation(line: 123, column: 5, scope: !1735)
!1802 = !DILocation(line: 119, column: 9, scope: !1735)
!1803 = !DILocation(line: 124, column: 19, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 124, column: 13)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !186, line: 123, column: 14)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !186, line: 123, column: 5)
!1807 = distinct !DILexicalBlock(scope: !1735, file: !186, line: 123, column: 5)
!1808 = !DILocation(line: 124, column: 13, scope: !1805)
!1809 = !DILocalVariable(name: "i", scope: !1735, file: !186, line: 101, type: !117)
!1810 = !DILocation(line: 125, column: 18, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !186, line: 125, column: 13)
!1812 = distinct !DILexicalBlock(scope: !1804, file: !186, line: 124, column: 25)
!1813 = !DILocation(line: 0, scope: !1811)
!1814 = !DILocation(line: 125, column: 25, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !186, line: 125, column: 13)
!1816 = !DILocation(line: 125, column: 27, scope: !1815)
!1817 = !DILocation(line: 125, column: 13, scope: !1811)
!1818 = !DILocation(line: 126, column: 26, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !186, line: 125, column: 41)
!1820 = !DILocation(line: 126, column: 17, scope: !1819)
!1821 = !DILocation(line: 126, column: 24, scope: !1819)
!1822 = !DILocation(line: 127, column: 13, scope: !1819)
!1823 = !DILocation(line: 125, column: 36, scope: !1815)
!1824 = !DILocation(line: 125, column: 13, scope: !1815)
!1825 = distinct !{!1825, !1817, !1826, !487}
!1826 = !DILocation(line: 127, column: 13, scope: !1811)
!1827 = !DILocation(line: 128, column: 17, scope: !1812)
!1828 = !DILocation(line: 130, column: 17, scope: !1812)
!1829 = !DILocation(line: 131, column: 9, scope: !1812)
!1830 = !DILocalVariable(name: "x0", scope: !1735, file: !186, line: 97, type: !188)
!1831 = !DILocalVariable(name: "x1", scope: !1735, file: !186, line: 97, type: !188)
!1832 = !DILocalVariable(name: "x2", scope: !1735, file: !186, line: 97, type: !188)
!1833 = !DILocalVariable(name: "x3", scope: !1735, file: !186, line: 97, type: !188)
!1834 = !DILocalVariable(name: "x4", scope: !1735, file: !186, line: 97, type: !188)
!1835 = !DILocalVariable(name: "x5", scope: !1735, file: !186, line: 97, type: !188)
!1836 = !DILocalVariable(name: "x6", scope: !1735, file: !186, line: 97, type: !188)
!1837 = !DILocalVariable(name: "x7", scope: !1735, file: !186, line: 97, type: !188)
!1838 = !DILocalVariable(name: "x8", scope: !1735, file: !186, line: 97, type: !188)
!1839 = !DILocalVariable(name: "x9", scope: !1735, file: !186, line: 97, type: !188)
!1840 = !DILocalVariable(name: "x10", scope: !1735, file: !186, line: 97, type: !188)
!1841 = !DILocalVariable(name: "x11", scope: !1735, file: !186, line: 97, type: !188)
!1842 = !DILocalVariable(name: "x12", scope: !1735, file: !186, line: 97, type: !188)
!1843 = !DILocalVariable(name: "x13", scope: !1735, file: !186, line: 97, type: !188)
!1844 = !DILocalVariable(name: "x14", scope: !1735, file: !186, line: 97, type: !188)
!1845 = !DILocalVariable(name: "x15", scope: !1735, file: !186, line: 97, type: !188)
!1846 = !DILocation(line: 148, column: 14, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 148, column: 9)
!1848 = !DILocation(line: 0, scope: !1805)
!1849 = !DILocation(line: 0, scope: !1847)
!1850 = !DILocation(line: 148, column: 24, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !186, line: 148, column: 9)
!1852 = !DILocation(line: 148, column: 9, scope: !1847)
!1853 = !DILocation(line: 149, column: 13, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !186, line: 148, column: 37)
!1855 = !DILocation(line: 150, column: 13, scope: !1854)
!1856 = !DILocation(line: 151, column: 13, scope: !1854)
!1857 = !DILocation(line: 152, column: 13, scope: !1854)
!1858 = !DILocation(line: 153, column: 13, scope: !1854)
!1859 = !DILocation(line: 154, column: 13, scope: !1854)
!1860 = !DILocation(line: 155, column: 13, scope: !1854)
!1861 = !DILocation(line: 156, column: 13, scope: !1854)
!1862 = !DILocation(line: 157, column: 9, scope: !1854)
!1863 = !DILocation(line: 148, column: 31, scope: !1851)
!1864 = !DILocation(line: 148, column: 9, scope: !1851)
!1865 = distinct !{!1865, !1852, !1866, !487}
!1866 = !DILocation(line: 157, column: 9, scope: !1847)
!1867 = !DILocation(line: 158, column: 14, scope: !1805)
!1868 = !DILocation(line: 159, column: 14, scope: !1805)
!1869 = !DILocation(line: 160, column: 14, scope: !1805)
!1870 = !DILocation(line: 161, column: 14, scope: !1805)
!1871 = !DILocation(line: 162, column: 14, scope: !1805)
!1872 = !DILocation(line: 163, column: 14, scope: !1805)
!1873 = !DILocation(line: 164, column: 14, scope: !1805)
!1874 = !DILocation(line: 165, column: 14, scope: !1805)
!1875 = !DILocation(line: 166, column: 14, scope: !1805)
!1876 = !DILocation(line: 167, column: 14, scope: !1805)
!1877 = !DILocation(line: 168, column: 15, scope: !1805)
!1878 = !DILocation(line: 169, column: 15, scope: !1805)
!1879 = !DILocation(line: 170, column: 15, scope: !1805)
!1880 = !DILocation(line: 171, column: 15, scope: !1805)
!1881 = !DILocation(line: 172, column: 15, scope: !1805)
!1882 = !DILocation(line: 173, column: 15, scope: !1805)
!1883 = !DILocation(line: 175, column: 14, scope: !1805)
!1884 = !DILocation(line: 176, column: 14, scope: !1805)
!1885 = !DILocation(line: 177, column: 14, scope: !1805)
!1886 = !DILocation(line: 178, column: 14, scope: !1805)
!1887 = !DILocation(line: 179, column: 14, scope: !1805)
!1888 = !DILocation(line: 180, column: 14, scope: !1805)
!1889 = !DILocation(line: 181, column: 14, scope: !1805)
!1890 = !DILocation(line: 182, column: 14, scope: !1805)
!1891 = !DILocation(line: 183, column: 14, scope: !1805)
!1892 = !DILocation(line: 184, column: 14, scope: !1805)
!1893 = !DILocation(line: 185, column: 15, scope: !1805)
!1894 = !DILocation(line: 186, column: 15, scope: !1805)
!1895 = !DILocation(line: 187, column: 15, scope: !1805)
!1896 = !DILocation(line: 188, column: 15, scope: !1805)
!1897 = !DILocation(line: 189, column: 15, scope: !1805)
!1898 = !DILocation(line: 190, column: 15, scope: !1805)
!1899 = !DILocation(line: 192, column: 15, scope: !1805)
!1900 = !DILocation(line: 194, column: 14, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 194, column: 13)
!1902 = !DILocation(line: 194, column: 13, scope: !1805)
!1903 = !DILocation(line: 195, column: 19, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !186, line: 194, column: 19)
!1905 = !DILocation(line: 196, column: 9, scope: !1904)
!1906 = !DILocation(line: 199, column: 9, scope: !1805)
!1907 = !DILocation(line: 199, column: 9, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 199, column: 9)
!1909 = !DILocation(line: 200, column: 9, scope: !1805)
!1910 = !DILocation(line: 200, column: 9, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 200, column: 9)
!1912 = !DILocation(line: 201, column: 9, scope: !1805)
!1913 = !DILocation(line: 201, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 201, column: 9)
!1915 = !DILocation(line: 202, column: 9, scope: !1805)
!1916 = !DILocation(line: 202, column: 9, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 202, column: 9)
!1918 = !DILocation(line: 203, column: 9, scope: !1805)
!1919 = !DILocation(line: 203, column: 9, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 203, column: 9)
!1921 = !DILocation(line: 204, column: 9, scope: !1805)
!1922 = !DILocation(line: 204, column: 9, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 204, column: 9)
!1924 = !DILocation(line: 205, column: 9, scope: !1805)
!1925 = !DILocation(line: 205, column: 9, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 205, column: 9)
!1927 = !DILocation(line: 206, column: 9, scope: !1805)
!1928 = !DILocation(line: 206, column: 9, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 206, column: 9)
!1930 = !DILocation(line: 207, column: 9, scope: !1805)
!1931 = !DILocation(line: 207, column: 9, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 207, column: 9)
!1933 = !DILocation(line: 208, column: 9, scope: !1805)
!1934 = !DILocation(line: 208, column: 9, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 208, column: 9)
!1936 = !DILocation(line: 209, column: 9, scope: !1805)
!1937 = !DILocation(line: 209, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 209, column: 9)
!1939 = !DILocation(line: 210, column: 9, scope: !1805)
!1940 = !DILocation(line: 210, column: 9, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 210, column: 9)
!1942 = !DILocation(line: 211, column: 9, scope: !1805)
!1943 = !DILocation(line: 211, column: 9, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 211, column: 9)
!1945 = !DILocation(line: 212, column: 9, scope: !1805)
!1946 = !DILocation(line: 212, column: 9, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 212, column: 9)
!1948 = !DILocation(line: 213, column: 9, scope: !1805)
!1949 = !DILocation(line: 213, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 213, column: 9)
!1951 = !DILocation(line: 214, column: 9, scope: !1805)
!1952 = !DILocation(line: 214, column: 9, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 214, column: 9)
!1954 = !DILocation(line: 216, column: 19, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1805, file: !186, line: 216, column: 13)
!1956 = !DILocation(line: 216, column: 13, scope: !1805)
!1957 = !DILocation(line: 217, column: 23, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !186, line: 217, column: 17)
!1959 = distinct !DILexicalBlock(scope: !1955, file: !186, line: 216, column: 26)
!1960 = !DILocation(line: 217, column: 17, scope: !1959)
!1961 = !DILocation(line: 218, column: 22, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !186, line: 218, column: 17)
!1963 = distinct !DILexicalBlock(scope: !1958, file: !186, line: 217, column: 29)
!1964 = !DILocation(line: 0, scope: !1962)
!1965 = !DILocation(line: 218, column: 33, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !186, line: 218, column: 17)
!1967 = !DILocation(line: 218, column: 31, scope: !1966)
!1968 = !DILocation(line: 218, column: 17, scope: !1962)
!1969 = !DILocation(line: 219, column: 34, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !186, line: 218, column: 60)
!1971 = !DILocation(line: 219, column: 21, scope: !1970)
!1972 = !DILocation(line: 219, column: 32, scope: !1970)
!1973 = !DILocation(line: 220, column: 17, scope: !1970)
!1974 = !DILocation(line: 218, column: 55, scope: !1966)
!1975 = !DILocation(line: 218, column: 17, scope: !1966)
!1976 = distinct !{!1976, !1968, !1977, !487}
!1977 = !DILocation(line: 220, column: 17, scope: !1962)
!1978 = !DILocation(line: 221, column: 13, scope: !1963)
!1979 = !DILocation(line: 222, column: 16, scope: !1959)
!1980 = !DILocation(line: 222, column: 13, scope: !1959)
!1981 = !DILocation(line: 222, column: 26, scope: !1959)
!1982 = !DILocation(line: 223, column: 16, scope: !1959)
!1983 = !DILocation(line: 223, column: 13, scope: !1959)
!1984 = !DILocation(line: 223, column: 26, scope: !1959)
!1985 = !DILocation(line: 224, column: 13, scope: !1959)
!1986 = !DILocation(line: 226, column: 15, scope: !1805)
!1987 = !DILocation(line: 227, column: 11, scope: !1805)
!1988 = !DILocation(line: 228, column: 11, scope: !1805)
!1989 = !DILocation(line: 123, column: 5, scope: !1806)
!1990 = distinct !{!1990, !1991, !1992}
!1991 = !DILocation(line: 123, column: 5, scope: !1807)
!1992 = !DILocation(line: 229, column: 5, scope: !1807)
!1993 = !DILocation(line: 230, column: 1, scope: !1735)
!1994 = distinct !DISubprogram(name: "crypto_stream_chacha20_ref_xor_ic", scope: !186, file: !186, line: 252, type: !1597, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !185, retainedNodes: !4)
!1995 = !DILocalVariable(name: "c", arg: 1, scope: !1994, file: !186, line: 252, type: !57)
!1996 = !DILocation(line: 0, scope: !1994)
!1997 = !DILocalVariable(name: "m", arg: 2, scope: !1994, file: !186, line: 252, type: !58)
!1998 = !DILocalVariable(name: "mlen", arg: 3, scope: !1994, file: !186, line: 253, type: !14)
!1999 = !DILocalVariable(name: "n", arg: 4, scope: !1994, file: !186, line: 254, type: !58)
!2000 = !DILocalVariable(name: "ic", arg: 5, scope: !1994, file: !186, line: 254, type: !1599)
!2001 = !DILocalVariable(name: "k", arg: 6, scope: !1994, file: !186, line: 255, type: !58)
!2002 = !DILocalVariable(name: "ctx", scope: !1994, file: !186, line: 257, type: !1628)
!2003 = !DILocation(line: 257, column: 23, scope: !1994)
!2004 = !DILocalVariable(name: "ic_bytes", scope: !1994, file: !186, line: 258, type: !2005)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !254)
!2006 = !DILocation(line: 258, column: 23, scope: !1994)
!2007 = !DILocation(line: 262, column: 10, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1994, file: !186, line: 262, column: 9)
!2009 = !DILocation(line: 262, column: 9, scope: !1994)
!2010 = !DILocation(line: 263, column: 9, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2008, file: !186, line: 262, column: 16)
!2012 = !DILocation(line: 265, column: 15, scope: !1994)
!2013 = !DILocalVariable(name: "ic_high", scope: !1994, file: !186, line: 259, type: !113)
!2014 = !DILocation(line: 266, column: 14, scope: !1994)
!2015 = !DILocalVariable(name: "ic_low", scope: !1994, file: !186, line: 260, type: !113)
!2016 = !DILocation(line: 267, column: 5, scope: !1994)
!2017 = !DILocation(line: 267, column: 5, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1994, file: !186, line: 267, column: 5)
!2019 = !DILocation(line: 268, column: 5, scope: !1994)
!2020 = !DILocation(line: 268, column: 5, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1994, file: !186, line: 268, column: 5)
!2022 = !DILocation(line: 269, column: 5, scope: !1994)
!2023 = !DILocation(line: 270, column: 29, scope: !1994)
!2024 = !DILocation(line: 270, column: 5, scope: !1994)
!2025 = !DILocation(line: 271, column: 5, scope: !1994)
!2026 = !DILocation(line: 272, column: 20, scope: !1994)
!2027 = !DILocation(line: 272, column: 5, scope: !1994)
!2028 = !DILocation(line: 273, column: 20, scope: !1994)
!2029 = !DILocation(line: 273, column: 5, scope: !1994)
!2030 = !DILocation(line: 275, column: 5, scope: !1994)
!2031 = !DILocation(line: 276, column: 1, scope: !1994)
!2032 = distinct !DISubprogram(name: "sodium_memzero", scope: !197, file: !197, line: 58, type: !143, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2033 = !DILocalVariable(name: "pnt", arg: 1, scope: !2032, file: !197, line: 58, type: !145)
!2034 = !DILocation(line: 0, scope: !2032)
!2035 = !DILocalVariable(name: "len", arg: 2, scope: !2032, file: !197, line: 58, type: !146)
!2036 = !DILocalVariable(name: "pnt_", scope: !2032, file: !197, line: 72, type: !199)
!2037 = !DILocalVariable(name: "i", scope: !2032, file: !197, line: 73, type: !118)
!2038 = !DILocation(line: 75, column: 5, scope: !2032)
!2039 = !DILocation(line: 75, column: 14, scope: !2032)
!2040 = !DILocation(line: 76, column: 15, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2032, file: !197, line: 75, column: 21)
!2042 = !DILocation(line: 76, column: 9, scope: !2041)
!2043 = !DILocation(line: 76, column: 19, scope: !2041)
!2044 = distinct !{!2044, !2038, !2045, !487}
!2045 = !DILocation(line: 77, column: 5, scope: !2032)
!2046 = !DILocation(line: 79, column: 1, scope: !2032)
!2047 = distinct !DISubprogram(name: "sodium_memcmp", scope: !197, file: !197, line: 82, type: !2048, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!56, !2050, !2050, !118}
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2053 = !DILocalVariable(name: "b1_", arg: 1, scope: !2047, file: !197, line: 82, type: !2050)
!2054 = !DILocation(line: 0, scope: !2047)
!2055 = !DILocalVariable(name: "b2_", arg: 2, scope: !2047, file: !197, line: 82, type: !2050)
!2056 = !DILocalVariable(name: "len", arg: 3, scope: !2047, file: !197, line: 82, type: !118)
!2057 = !DILocalVariable(name: "b1", scope: !2047, file: !197, line: 84, type: !58)
!2058 = !DILocalVariable(name: "b2", scope: !2047, file: !197, line: 85, type: !58)
!2059 = !DILocalVariable(name: "d", scope: !2047, file: !197, line: 87, type: !17)
!2060 = !DILocalVariable(name: "i", scope: !2047, file: !197, line: 86, type: !118)
!2061 = !DILocation(line: 89, column: 10, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2047, file: !197, line: 89, column: 5)
!2063 = !DILocation(line: 0, scope: !2062)
!2064 = !DILocation(line: 89, column: 20, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !197, line: 89, column: 5)
!2066 = !DILocation(line: 89, column: 5, scope: !2062)
!2067 = !DILocation(line: 90, column: 14, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !197, line: 89, column: 32)
!2069 = !DILocation(line: 90, column: 22, scope: !2068)
!2070 = !DILocation(line: 90, column: 20, scope: !2068)
!2071 = !DILocation(line: 90, column: 11, scope: !2068)
!2072 = !DILocation(line: 91, column: 5, scope: !2068)
!2073 = !DILocation(line: 89, column: 28, scope: !2065)
!2074 = !DILocation(line: 89, column: 5, scope: !2065)
!2075 = distinct !{!2075, !2066, !2076, !487}
!2076 = !DILocation(line: 91, column: 5, scope: !2062)
!2077 = !DILocation(line: 92, column: 26, scope: !2047)
!2078 = !DILocation(line: 92, column: 28, scope: !2047)
!2079 = !DILocation(line: 92, column: 33, scope: !2047)
!2080 = !DILocation(line: 92, column: 22, scope: !2047)
!2081 = !DILocation(line: 92, column: 40, scope: !2047)
!2082 = !DILocation(line: 92, column: 5, scope: !2047)
!2083 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !197, file: !197, line: 97, type: !2084, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!2086, !2087, !146, !2088, !146}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2086)
!2088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!2089 = !DILocalVariable(name: "hex", arg: 1, scope: !2083, file: !197, line: 97, type: !2087)
!2090 = !DILocation(line: 0, scope: !2083)
!2091 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !2083, file: !197, line: 97, type: !146)
!2092 = !DILocalVariable(name: "bin", arg: 3, scope: !2083, file: !197, line: 98, type: !2088)
!2093 = !DILocalVariable(name: "bin_len", arg: 4, scope: !2083, file: !197, line: 98, type: !146)
!2094 = !DILocalVariable(name: "i", scope: !2083, file: !197, line: 100, type: !118)
!2095 = !DILocation(line: 105, column: 17, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2083, file: !197, line: 105, column: 9)
!2097 = !DILocation(line: 105, column: 33, scope: !2096)
!2098 = !DILocation(line: 105, column: 57, scope: !2096)
!2099 = !DILocation(line: 105, column: 47, scope: !2096)
!2100 = !DILocation(line: 105, column: 9, scope: !2083)
!2101 = !DILocation(line: 106, column: 9, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2096, file: !197, line: 105, column: 63)
!2103 = !DILocation(line: 108, column: 5, scope: !2083)
!2104 = !DILocation(line: 108, column: 14, scope: !2083)
!2105 = !DILocation(line: 109, column: 13, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2083, file: !197, line: 108, column: 25)
!2107 = !DILocation(line: 109, column: 20, scope: !2106)
!2108 = !DILocalVariable(name: "c", scope: !2083, file: !197, line: 103, type: !56)
!2109 = !DILocation(line: 110, column: 13, scope: !2106)
!2110 = !DILocation(line: 110, column: 20, scope: !2106)
!2111 = !DILocalVariable(name: "b", scope: !2083, file: !197, line: 102, type: !56)
!2112 = !DILocation(line: 111, column: 34, scope: !2106)
!2113 = !DILocation(line: 111, column: 45, scope: !2106)
!2114 = !DILocation(line: 111, column: 52, scope: !2106)
!2115 = !DILocation(line: 111, column: 58, scope: !2106)
!2116 = !DILocation(line: 111, column: 38, scope: !2106)
!2117 = !DILocation(line: 111, column: 13, scope: !2106)
!2118 = !DILocation(line: 111, column: 67, scope: !2106)
!2119 = !DILocation(line: 112, column: 34, scope: !2106)
!2120 = !DILocation(line: 112, column: 45, scope: !2106)
!2121 = !DILocation(line: 112, column: 52, scope: !2106)
!2122 = !DILocation(line: 112, column: 58, scope: !2106)
!2123 = !DILocation(line: 112, column: 38, scope: !2106)
!2124 = !DILocation(line: 112, column: 13, scope: !2106)
!2125 = !DILocation(line: 111, column: 72, scope: !2106)
!2126 = !DILocalVariable(name: "x", scope: !2083, file: !197, line: 101, type: !117)
!2127 = !DILocation(line: 113, column: 23, scope: !2106)
!2128 = !DILocation(line: 113, column: 15, scope: !2106)
!2129 = !DILocation(line: 113, column: 9, scope: !2106)
!2130 = !DILocation(line: 113, column: 21, scope: !2106)
!2131 = !DILocation(line: 114, column: 11, scope: !2106)
!2132 = !DILocation(line: 115, column: 28, scope: !2106)
!2133 = !DILocation(line: 115, column: 15, scope: !2106)
!2134 = !DILocation(line: 115, column: 20, scope: !2106)
!2135 = !DILocation(line: 115, column: 9, scope: !2106)
!2136 = !DILocation(line: 115, column: 26, scope: !2106)
!2137 = !DILocation(line: 116, column: 10, scope: !2106)
!2138 = distinct !{!2138, !2103, !2139, !487}
!2139 = !DILocation(line: 117, column: 5, scope: !2083)
!2140 = !DILocation(line: 118, column: 11, scope: !2083)
!2141 = !DILocation(line: 118, column: 5, scope: !2083)
!2142 = !DILocation(line: 118, column: 17, scope: !2083)
!2143 = !DILocation(line: 120, column: 5, scope: !2083)
!2144 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !197, file: !197, line: 124, type: !2145, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!56, !1278, !146, !2147, !146, !2147, !2148, !2150}
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2149)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1542)
!2151 = !DILocalVariable(name: "bin", arg: 1, scope: !2144, file: !197, line: 124, type: !1278)
!2152 = !DILocation(line: 0, scope: !2144)
!2153 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !2144, file: !197, line: 124, type: !146)
!2154 = !DILocalVariable(name: "hex", arg: 3, scope: !2144, file: !197, line: 125, type: !2147)
!2155 = !DILocalVariable(name: "hex_len", arg: 4, scope: !2144, file: !197, line: 125, type: !146)
!2156 = !DILocalVariable(name: "ignore", arg: 5, scope: !2144, file: !197, line: 126, type: !2147)
!2157 = !DILocalVariable(name: "bin_len", arg: 6, scope: !2144, file: !197, line: 126, type: !2148)
!2158 = !DILocalVariable(name: "hex_end", arg: 7, scope: !2144, file: !197, line: 127, type: !2150)
!2159 = !DILocalVariable(name: "bin_pos", scope: !2144, file: !197, line: 129, type: !118)
!2160 = !DILocalVariable(name: "hex_pos", scope: !2144, file: !197, line: 130, type: !118)
!2161 = !DILocalVariable(name: "ret", scope: !2144, file: !197, line: 131, type: !56)
!2162 = !DILocalVariable(name: "c_acc", scope: !2144, file: !197, line: 133, type: !17)
!2163 = !DILocalVariable(name: "state", scope: !2144, file: !197, line: 137, type: !17)
!2164 = !DILocation(line: 139, column: 5, scope: !2144)
!2165 = !DILocation(line: 129, column: 19, scope: !2144)
!2166 = !DILocation(line: 139, column: 20, scope: !2144)
!2167 = !DILocation(line: 140, column: 29, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2144, file: !197, line: 139, column: 31)
!2169 = !DILocalVariable(name: "c", scope: !2144, file: !197, line: 132, type: !17)
!2170 = !DILocation(line: 141, column: 17, scope: !2168)
!2171 = !DILocation(line: 141, column: 19, scope: !2168)
!2172 = !DILocalVariable(name: "c_num", scope: !2144, file: !197, line: 135, type: !17)
!2173 = !DILocation(line: 142, column: 19, scope: !2168)
!2174 = !DILocation(line: 142, column: 25, scope: !2168)
!2175 = !DILocation(line: 142, column: 32, scope: !2168)
!2176 = !DILocation(line: 142, column: 18, scope: !2168)
!2177 = !DILocalVariable(name: "c_num0", scope: !2144, file: !197, line: 135, type: !17)
!2178 = !DILocation(line: 143, column: 20, scope: !2168)
!2179 = !DILocation(line: 143, column: 22, scope: !2168)
!2180 = !DILocation(line: 143, column: 30, scope: !2168)
!2181 = !DILocation(line: 143, column: 19, scope: !2168)
!2182 = !DILocalVariable(name: "c_alpha", scope: !2144, file: !197, line: 134, type: !17)
!2183 = !DILocation(line: 144, column: 22, scope: !2168)
!2184 = !DILocation(line: 144, column: 30, scope: !2168)
!2185 = !DILocation(line: 144, column: 40, scope: !2168)
!2186 = !DILocation(line: 144, column: 48, scope: !2168)
!2187 = !DILocation(line: 144, column: 37, scope: !2168)
!2188 = !DILocation(line: 144, column: 56, scope: !2168)
!2189 = !DILocation(line: 144, column: 20, scope: !2168)
!2190 = !DILocalVariable(name: "c_alpha0", scope: !2144, file: !197, line: 134, type: !17)
!2191 = !DILocation(line: 145, column: 14, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2168, file: !197, line: 145, column: 13)
!2193 = !DILocation(line: 145, column: 23, scope: !2192)
!2194 = !DILocation(line: 145, column: 21, scope: !2192)
!2195 = !DILocation(line: 145, column: 33, scope: !2192)
!2196 = !DILocation(line: 145, column: 13, scope: !2168)
!2197 = !DILocation(line: 146, column: 24, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !197, line: 146, column: 17)
!2199 = distinct !DILexicalBlock(scope: !2192, file: !197, line: 145, column: 40)
!2200 = !DILocation(line: 146, column: 32, scope: !2198)
!2201 = !DILocation(line: 146, column: 35, scope: !2198)
!2202 = !DILocation(line: 146, column: 41, scope: !2198)
!2203 = !DILocation(line: 146, column: 47, scope: !2198)
!2204 = !DILocation(line: 146, column: 65, scope: !2198)
!2205 = !DILocation(line: 146, column: 50, scope: !2198)
!2206 = !DILocation(line: 146, column: 68, scope: !2198)
!2207 = !DILocation(line: 146, column: 17, scope: !2199)
!2208 = !DILocation(line: 147, column: 24, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2198, file: !197, line: 146, column: 77)
!2210 = !DILocation(line: 148, column: 17, scope: !2209)
!2211 = distinct !{!2211, !2164, !2212, !487}
!2212 = !DILocation(line: 165, column: 5, scope: !2144)
!2213 = !DILocation(line: 150, column: 13, scope: !2199)
!2214 = !DILocation(line: 152, column: 18, scope: !2168)
!2215 = !DILocation(line: 152, column: 27, scope: !2168)
!2216 = !DILocation(line: 152, column: 25, scope: !2168)
!2217 = !DILocation(line: 152, column: 37, scope: !2168)
!2218 = !DILocation(line: 152, column: 48, scope: !2168)
!2219 = !DILocation(line: 152, column: 46, scope: !2168)
!2220 = !DILocation(line: 152, column: 34, scope: !2168)
!2221 = !DILocation(line: 152, column: 17, scope: !2168)
!2222 = !DILocalVariable(name: "c_val", scope: !2144, file: !197, line: 136, type: !17)
!2223 = !DILocation(line: 153, column: 21, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2168, file: !197, line: 153, column: 13)
!2225 = !DILocation(line: 153, column: 13, scope: !2168)
!2226 = !DILocation(line: 155, column: 13, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !197, line: 153, column: 36)
!2228 = !DILocation(line: 155, column: 19, scope: !2227)
!2229 = !DILocation(line: 156, column: 13, scope: !2227)
!2230 = !DILocation(line: 158, column: 13, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2168, file: !197, line: 158, column: 13)
!2232 = !DILocation(line: 158, column: 19, scope: !2231)
!2233 = !DILocation(line: 158, column: 13, scope: !2168)
!2234 = !DILocation(line: 159, column: 21, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !197, line: 158, column: 26)
!2236 = !DILocation(line: 159, column: 27, scope: !2235)
!2237 = !DILocation(line: 160, column: 9, scope: !2235)
!2238 = !DILocation(line: 161, column: 30, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2231, file: !197, line: 160, column: 16)
!2240 = !DILocation(line: 161, column: 38, scope: !2239)
!2241 = !DILocation(line: 161, column: 36, scope: !2239)
!2242 = !DILocation(line: 161, column: 24, scope: !2239)
!2243 = !DILocation(line: 161, column: 13, scope: !2239)
!2244 = !DILocation(line: 161, column: 28, scope: !2239)
!2245 = !DILocation(line: 163, column: 18, scope: !2168)
!2246 = !DILocation(line: 163, column: 17, scope: !2168)
!2247 = !DILocation(line: 164, column: 16, scope: !2168)
!2248 = !DILocation(line: 166, column: 9, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2144, file: !197, line: 166, column: 9)
!2250 = !DILocation(line: 166, column: 15, scope: !2249)
!2251 = !DILocation(line: 166, column: 9, scope: !2144)
!2252 = !DILocation(line: 167, column: 16, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !197, line: 166, column: 22)
!2254 = !DILocation(line: 168, column: 5, scope: !2253)
!2255 = !DILocation(line: 169, column: 17, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2144, file: !197, line: 169, column: 9)
!2257 = !DILocation(line: 169, column: 9, scope: !2144)
!2258 = !DILocation(line: 170, column: 21, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !197, line: 169, column: 26)
!2260 = !DILocation(line: 170, column: 18, scope: !2259)
!2261 = !DILocation(line: 171, column: 5, scope: !2259)
!2262 = !DILocation(line: 172, column: 17, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2144, file: !197, line: 172, column: 9)
!2264 = !DILocation(line: 172, column: 9, scope: !2144)
!2265 = !DILocation(line: 173, column: 18, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2263, file: !197, line: 172, column: 26)
!2267 = !DILocation(line: 174, column: 5, scope: !2266)
!2268 = !DILocation(line: 175, column: 5, scope: !2144)
!2269 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !197, file: !197, line: 179, type: !149, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2270 = !DILocation(line: 196, column: 5, scope: !2269)
!2271 = !DILocation(line: 198, column: 5, scope: !2269)
!2272 = distinct !DISubprogram(name: "sodium_mlock", scope: !197, file: !197, line: 202, type: !1448, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2273 = !DILocalVariable(name: "addr", arg: 1, scope: !2272, file: !197, line: 202, type: !145)
!2274 = !DILocation(line: 0, scope: !2272)
!2275 = !DILocalVariable(name: "len", arg: 2, scope: !2272, file: !197, line: 202, type: !146)
!2276 = !DILocation(line: 212, column: 5, scope: !2272)
!2277 = !DILocation(line: 212, column: 11, scope: !2272)
!2278 = !DILocation(line: 213, column: 5, scope: !2272)
!2279 = distinct !DISubprogram(name: "sodium_munlock", scope: !197, file: !197, line: 218, type: !1448, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2280 = !DILocalVariable(name: "addr", arg: 1, scope: !2279, file: !197, line: 218, type: !145)
!2281 = !DILocation(line: 0, scope: !2279)
!2282 = !DILocalVariable(name: "len", arg: 2, scope: !2279, file: !197, line: 218, type: !146)
!2283 = !DILocation(line: 220, column: 5, scope: !2279)
!2284 = !DILocation(line: 229, column: 5, scope: !2279)
!2285 = !DILocation(line: 229, column: 11, scope: !2279)
!2286 = !DILocation(line: 230, column: 5, scope: !2279)
!2287 = distinct !DISubprogram(name: "sodium_malloc", scope: !197, file: !197, line: 402, type: !2288, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!41, !146}
!2290 = !DILocalVariable(name: "size", arg: 1, scope: !2287, file: !197, line: 402, type: !146)
!2291 = !DILocation(line: 0, scope: !2287)
!2292 = !DILocation(line: 406, column: 16, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2287, file: !197, line: 406, column: 9)
!2294 = !DILocalVariable(name: "ptr", scope: !2287, file: !197, line: 404, type: !41)
!2295 = !DILocation(line: 406, column: 38, scope: !2293)
!2296 = !DILocation(line: 406, column: 9, scope: !2287)
!2297 = !DILocation(line: 407, column: 9, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2293, file: !197, line: 406, column: 47)
!2299 = !DILocation(line: 409, column: 5, scope: !2287)
!2300 = !DILocation(line: 411, column: 5, scope: !2287)
!2301 = !DILocation(line: 412, column: 1, scope: !2287)
!2302 = distinct !DISubprogram(name: "_sodium_malloc", scope: !197, file: !197, line: 353, type: !2288, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2303 = !DILocalVariable(name: "size", arg: 1, scope: !2302, file: !197, line: 353, type: !146)
!2304 = !DILocation(line: 0, scope: !2302)
!2305 = !DILocation(line: 355, column: 12, scope: !2302)
!2306 = !DILocation(line: 355, column: 5, scope: !2302)
!2307 = distinct !DISubprogram(name: "sodium_allocarray", scope: !197, file: !197, line: 415, type: !2308, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!41, !118, !118}
!2310 = !DILocalVariable(name: "count", arg: 1, scope: !2307, file: !197, line: 415, type: !118)
!2311 = !DILocation(line: 0, scope: !2307)
!2312 = !DILocalVariable(name: "size", arg: 2, scope: !2307, file: !197, line: 415, type: !118)
!2313 = !DILocation(line: 419, column: 15, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2307, file: !197, line: 419, column: 9)
!2315 = !DILocation(line: 419, column: 29, scope: !2314)
!2316 = !DILocation(line: 419, column: 58, scope: !2314)
!2317 = !DILocation(line: 419, column: 37, scope: !2314)
!2318 = !DILocation(line: 419, column: 9, scope: !2307)
!2319 = !DILocation(line: 420, column: 9, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2314, file: !197, line: 419, column: 67)
!2321 = !DILocation(line: 420, column: 15, scope: !2320)
!2322 = !DILocation(line: 421, column: 9, scope: !2320)
!2323 = !DILocation(line: 423, column: 24, scope: !2307)
!2324 = !DILocalVariable(name: "total_size", scope: !2307, file: !197, line: 417, type: !118)
!2325 = !DILocation(line: 425, column: 12, scope: !2307)
!2326 = !DILocation(line: 425, column: 5, scope: !2307)
!2327 = !DILocation(line: 426, column: 1, scope: !2307)
!2328 = distinct !DISubprogram(name: "sodium_free", scope: !197, file: !197, line: 430, type: !2329, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !41}
!2331 = !DILocalVariable(name: "ptr", arg: 1, scope: !2328, file: !197, line: 430, type: !41)
!2332 = !DILocation(line: 0, scope: !2328)
!2333 = !DILocation(line: 432, column: 5, scope: !2328)
!2334 = !DILocation(line: 433, column: 1, scope: !2328)
!2335 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !197, file: !197, line: 493, type: !2336, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!56, !41}
!2338 = !DILocalVariable(name: "ptr", arg: 1, scope: !2335, file: !197, line: 493, type: !41)
!2339 = !DILocation(line: 0, scope: !2335)
!2340 = !DILocation(line: 495, column: 12, scope: !2335)
!2341 = !DILocation(line: 495, column: 5, scope: !2335)
!2342 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !197, file: !197, line: 235, type: !2343, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!56, !41, !118}
!2345 = !DILocalVariable(name: "ptr", arg: 1, scope: !2342, file: !197, line: 235, type: !41)
!2346 = !DILocation(line: 0, scope: !2342)
!2347 = !DILocalVariable(name: "size", arg: 2, scope: !2342, file: !197, line: 235, type: !118)
!2348 = !DILocation(line: 243, column: 5, scope: !2342)
!2349 = !DILocation(line: 243, column: 11, scope: !2342)
!2350 = !DILocation(line: 244, column: 5, scope: !2342)
!2351 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !197, file: !197, line: 469, type: !2352, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!56, !41, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2355 = !DILocalVariable(name: "ptr", arg: 1, scope: !2351, file: !197, line: 469, type: !41)
!2356 = !DILocation(line: 0, scope: !2351)
!2357 = !DILocalVariable(name: "cb", arg: 2, scope: !2351, file: !197, line: 469, type: !2354)
!2358 = !DILocation(line: 473, column: 5, scope: !2351)
!2359 = !DILocation(line: 473, column: 11, scope: !2351)
!2360 = !DILocation(line: 474, column: 5, scope: !2351)
!2361 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !197, file: !197, line: 499, type: !2336, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2362 = !DILocalVariable(name: "ptr", arg: 1, scope: !2361, file: !197, line: 499, type: !41)
!2363 = !DILocation(line: 0, scope: !2361)
!2364 = !DILocation(line: 501, column: 12, scope: !2361)
!2365 = !DILocation(line: 501, column: 5, scope: !2361)
!2366 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !197, file: !197, line: 249, type: !2343, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2367 = !DILocalVariable(name: "ptr", arg: 1, scope: !2366, file: !197, line: 249, type: !41)
!2368 = !DILocation(line: 0, scope: !2366)
!2369 = !DILocalVariable(name: "size", arg: 2, scope: !2366, file: !197, line: 249, type: !118)
!2370 = !DILocation(line: 257, column: 5, scope: !2366)
!2371 = !DILocation(line: 257, column: 11, scope: !2366)
!2372 = !DILocation(line: 258, column: 5, scope: !2366)
!2373 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !197, file: !197, line: 505, type: !2336, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2374 = !DILocalVariable(name: "ptr", arg: 1, scope: !2373, file: !197, line: 505, type: !41)
!2375 = !DILocation(line: 0, scope: !2373)
!2376 = !DILocation(line: 507, column: 12, scope: !2373)
!2377 = !DILocation(line: 507, column: 5, scope: !2373)
!2378 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !197, file: !197, line: 263, type: !2343, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !196, retainedNodes: !4)
!2379 = !DILocalVariable(name: "ptr", arg: 1, scope: !2378, file: !197, line: 263, type: !41)
!2380 = !DILocation(line: 0, scope: !2378)
!2381 = !DILocalVariable(name: "size", arg: 2, scope: !2378, file: !197, line: 263, type: !118)
!2382 = !DILocation(line: 271, column: 5, scope: !2378)
!2383 = !DILocation(line: 271, column: 11, scope: !2378)
!2384 = !DILocation(line: 272, column: 5, scope: !2378)
!2385 = distinct !DISubprogram(name: "crypto_verify_16", scope: !219, file: !219, line: 3, type: !2386, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!56, !58, !58}
!2388 = !DILocalVariable(name: "x", arg: 1, scope: !2385, file: !219, line: 3, type: !58)
!2389 = !DILocation(line: 0, scope: !2385)
!2390 = !DILocalVariable(name: "y", arg: 2, scope: !2385, file: !219, line: 3, type: !58)
!2391 = !DILocalVariable(name: "differentbits", scope: !2385, file: !219, line: 5, type: !117)
!2392 = !DILocation(line: 7, column: 3, scope: !2385)
!2393 = !DILocation(line: 8, column: 3, scope: !2385)
!2394 = !DILocation(line: 9, column: 3, scope: !2385)
!2395 = !DILocation(line: 10, column: 3, scope: !2385)
!2396 = !DILocation(line: 11, column: 3, scope: !2385)
!2397 = !DILocation(line: 12, column: 3, scope: !2385)
!2398 = !DILocation(line: 13, column: 3, scope: !2385)
!2399 = !DILocation(line: 14, column: 3, scope: !2385)
!2400 = !DILocation(line: 15, column: 3, scope: !2385)
!2401 = !DILocation(line: 16, column: 3, scope: !2385)
!2402 = !DILocation(line: 17, column: 3, scope: !2385)
!2403 = !DILocation(line: 18, column: 3, scope: !2385)
!2404 = !DILocation(line: 19, column: 3, scope: !2385)
!2405 = !DILocation(line: 20, column: 3, scope: !2385)
!2406 = !DILocation(line: 21, column: 3, scope: !2385)
!2407 = !DILocation(line: 22, column: 3, scope: !2385)
!2408 = !DILocation(line: 23, column: 31, scope: !2385)
!2409 = !DILocation(line: 23, column: 36, scope: !2385)
!2410 = !DILocation(line: 23, column: 13, scope: !2385)
!2411 = !DILocation(line: 23, column: 43, scope: !2385)
!2412 = !DILocation(line: 23, column: 3, scope: !2385)
!2413 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_verify", scope: !221, file: !221, line: 6, type: !62, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !220, retainedNodes: !4)
!2414 = !DILocalVariable(name: "h", arg: 1, scope: !2413, file: !221, line: 6, type: !58)
!2415 = !DILocation(line: 0, scope: !2413)
!2416 = !DILocalVariable(name: "in", arg: 2, scope: !2413, file: !221, line: 7, type: !58)
!2417 = !DILocalVariable(name: "inlen", arg: 3, scope: !2413, file: !221, line: 8, type: !14)
!2418 = !DILocalVariable(name: "k", arg: 4, scope: !2413, file: !221, line: 9, type: !58)
!2419 = !DILocalVariable(name: "correct", scope: !2413, file: !221, line: 11, type: !37)
!2420 = !DILocation(line: 11, column: 19, scope: !2413)
!2421 = !DILocation(line: 13, column: 39, scope: !2413)
!2422 = !DILocation(line: 13, column: 5, scope: !2413)
!2423 = !DILocation(line: 14, column: 31, scope: !2413)
!2424 = !DILocation(line: 14, column: 12, scope: !2413)
!2425 = !DILocation(line: 14, column: 5, scope: !2413)
