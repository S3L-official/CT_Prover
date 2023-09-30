; ModuleID = 'crypto_aead_chacha20poly1305_decrypt-k.ll'
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

@crypto_onetimeauth_poly1305_donna_implementation = dso_local global %struct.crypto_onetimeauth_poly1305_implementation { i8* ()* @crypto_onetimeauth_poly1305_donna_implementation_name, i32 (i8*, i8*, i64, i8*)* @crypto_onetimeauth_poly1305_donna, i32 (i8*, i8*, i64, i8*)* @crypto_onetimeauth_poly1305_donna_verify, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)* @crypto_onetimeauth_poly1305_donna_init, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*, i64)* @crypto_onetimeauth_poly1305_donna_update, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)* @crypto_onetimeauth_poly1305_donna_final }, align 8, !dbg !0, !psr.id !77
@.str = private unnamed_addr constant [8 x i8] c"donna32\00", align 1, !psr.id !78
@.str.1 = private unnamed_addr constant [9 x i8] c"poly1305\00", align 1, !psr.id !79
@implementation = internal global %struct.crypto_onetimeauth_poly1305_implementation* @crypto_onetimeauth_poly1305_donna_implementation, align 8, !dbg !80, !psr.id !111
@implementation.12 = internal global %struct.randombytes_implementation* @randombytes_sysrandom_implementation, align 8, !dbg !112, !psr.id !155
@.str.13 = private unnamed_addr constant [20 x i8] c"buf_len <= SIZE_MAX\00", align 1, !psr.id !156
@.str.1.14 = private unnamed_addr constant [53 x i8] c"../libsodium/src/libsodium/randombytes/randombytes.c\00", align 1, !psr.id !157
@__PRETTY_FUNCTION__.randombytes = private unnamed_addr constant [65 x i8] c"void randombytes(unsigned char *const, const unsigned long long)\00", align 1, !psr.id !158
@randombytes_sysrandom_implementation = dso_local global %struct.randombytes_implementation { i8* ()* @randombytes_sysrandom_implementation_name, i32 ()* @randombytes_sysrandom, void ()* @randombytes_sysrandom_stir, i32 (i32)* null, void (i8*, i64)* @randombytes_sysrandom_buf, i32 ()* @randombytes_sysrandom_close }, align 8, !dbg !159, !psr.id !191
@stream = internal global %struct.SysRandom_ { i32 -1, i32 0, i32 0 }, align 4, !dbg !169, !psr.id !192
@.str.6 = private unnamed_addr constant [19 x i8] c"size > (size_t) 0U\00", align 1, !psr.id !193
@.str.4 = private unnamed_addr constant [73 x i8] c"../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c\00", align 1, !psr.id !194
@__PRETTY_FUNCTION__.safe_read = private unnamed_addr constant [50 x i8] c"ssize_t safe_read(const int, void *const, size_t)\00", align 1, !psr.id !195
@.str.3 = private unnamed_addr constant [25 x i8] c"chunk_size > (size_t) 0U\00", align 1, !psr.id !196
@__PRETTY_FUNCTION__.randombytes_linux_getrandom = private unnamed_addr constant [53 x i8] c"int randombytes_linux_getrandom(void *const, size_t)\00", align 1, !psr.id !197
@.str.5 = private unnamed_addr constant [13 x i8] c"size <= 256U\00", align 1, !psr.id !198
@__PRETTY_FUNCTION__._randombytes_linux_getrandom = private unnamed_addr constant [60 x i8] c"int _randombytes_linux_getrandom(void *const, const size_t)\00", align 1, !psr.id !199
@randombytes_sysrandom_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16, !dbg !177, !psr.id !200
@.str.1.17 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1, !psr.id !201
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1, !psr.id !202
@.str.18 = private unnamed_addr constant [10 x i8] c"sysrandom\00", align 1, !psr.id !203
@sigma = internal constant [16 x i8] c"expand 32-byte k", align 16, !dbg !204, !psr.id !215
@canary = internal global [16 x i8] zeroinitializer, align 16, !dbg !216, !psr.id !224

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_aead_chacha20poly1305_encrypt(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i8* %7, i8* %8) #0 !dbg !249 {
  %10 = alloca %struct.crypto_onetimeauth_poly1305_state, align 8, !psr.id !253
  %11 = alloca [64 x i8], align 16, !psr.id !254
  %12 = alloca [8 x i8], align 1, !psr.id !255
  call void @llvm.dbg.value(metadata i8* %0, metadata !256, metadata !DIExpression()), !dbg !257, !psr.id !258
  call void @llvm.dbg.value(metadata i64* %1, metadata !259, metadata !DIExpression()), !dbg !257, !psr.id !260
  call void @llvm.dbg.value(metadata i8* %2, metadata !261, metadata !DIExpression()), !dbg !257, !psr.id !262
  call void @llvm.dbg.value(metadata i64 %3, metadata !263, metadata !DIExpression()), !dbg !257, !psr.id !264
  call void @llvm.dbg.value(metadata i8* %4, metadata !265, metadata !DIExpression()), !dbg !257, !psr.id !266
  call void @llvm.dbg.value(metadata i64 %5, metadata !267, metadata !DIExpression()), !dbg !257, !psr.id !268
  call void @llvm.dbg.value(metadata i8* %6, metadata !269, metadata !DIExpression()), !dbg !257, !psr.id !270
  call void @llvm.dbg.value(metadata i8* %7, metadata !271, metadata !DIExpression()), !dbg !257, !psr.id !272
  call void @llvm.dbg.value(metadata i8* %8, metadata !273, metadata !DIExpression()), !dbg !257, !psr.id !274
  call void @llvm.dbg.declare(metadata %struct.crypto_onetimeauth_poly1305_state* %10, metadata !275, metadata !DIExpression()), !dbg !281, !psr.id !282
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !283, metadata !DIExpression()), !dbg !287, !psr.id !288
  call void @llvm.dbg.declare(metadata [8 x i8]* %12, metadata !289, metadata !DIExpression()), !dbg !293, !psr.id !294
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !295, !psr.id !296
  %14 = call i32 @crypto_stream_chacha20(i8* %13, i64 64, i8* %7, i8* %8), !dbg !297, !psr.id !298
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !299, !psr.id !300
  %16 = call i32 @crypto_onetimeauth_poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %15), !dbg !301, !psr.id !302
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !303, !psr.id !304
  call void @sodium_memzero(i8* %17, i64 64), !dbg !305, !psr.id !306
  %18 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %4, i64 %5), !dbg !307, !psr.id !308
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !309, !psr.id !310
  call void @_u64_le_from_ull(i8* %19, i64 %5), !dbg !311, !psr.id !312
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !313, !psr.id !314
  %21 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %20, i64 8), !dbg !315, !psr.id !316
  %22 = call i32 @crypto_stream_chacha20_xor_ic(i8* %0, i8* %2, i64 %3, i8* %7, i64 1, i8* %8), !dbg !317, !psr.id !318
  %23 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %0, i64 %3), !dbg !319, !psr.id !320
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !321, !psr.id !322
  call void @_u64_le_from_ull(i8* %24, i64 %3), !dbg !323, !psr.id !324
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !325, !psr.id !326
  %26 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %25, i64 8), !dbg !327, !psr.id !328
  %27 = getelementptr inbounds i8, i8* %0, i64 %3, !dbg !329, !psr.id !330
  %28 = call i32 @crypto_onetimeauth_poly1305_final(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %27), !dbg !331, !psr.id !332
  %29 = bitcast %struct.crypto_onetimeauth_poly1305_state* %10 to i8*, !dbg !333, !psr.id !334
  call void @sodium_memzero(i8* %29, i64 144), !dbg !335, !psr.id !336
  %30 = icmp ne i64* %1, null, !dbg !337, !psr.id !339
  br i1 %30, label %31, label %33, !dbg !340, !psr.id !341

31:                                               ; preds = %9
  %32 = add i64 %3, 16, !dbg !342, !psr.id !344
  store i64 %32, i64* %1, align 8, !dbg !345, !psr.id !346
  br label %33, !dbg !347, !psr.id !348

33:                                               ; preds = %31, %9
  ret i32 0, !dbg !349, !psr.id !350
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @_u64_le_from_ull(i8* %0, i64 %1) #0 !dbg !351 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !354, metadata !DIExpression()), !dbg !355, !psr.id !356
  call void @llvm.dbg.value(metadata i64 %1, metadata !357, metadata !DIExpression()), !dbg !355, !psr.id !358
  %3 = and i64 %1, 255, !dbg !359, !psr.id !360
  %4 = trunc i64 %3 to i8, !dbg !361, !psr.id !362
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !363, !psr.id !364
  store i8 %4, i8* %5, align 1, !dbg !365, !psr.id !366
  %6 = lshr i64 %1, 8, !dbg !367, !psr.id !368
  call void @llvm.dbg.value(metadata i64 %6, metadata !357, metadata !DIExpression()), !dbg !355, !psr.id !369
  %7 = and i64 %6, 255, !dbg !370, !psr.id !371
  %8 = trunc i64 %7 to i8, !dbg !372, !psr.id !373
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !374, !psr.id !375
  store i8 %8, i8* %9, align 1, !dbg !376, !psr.id !377
  %10 = lshr i64 %6, 8, !dbg !378, !psr.id !379
  call void @llvm.dbg.value(metadata i64 %10, metadata !357, metadata !DIExpression()), !dbg !355, !psr.id !380
  %11 = and i64 %10, 255, !dbg !381, !psr.id !382
  %12 = trunc i64 %11 to i8, !dbg !383, !psr.id !384
  %13 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !385, !psr.id !386
  store i8 %12, i8* %13, align 1, !dbg !387, !psr.id !388
  %14 = lshr i64 %10, 8, !dbg !389, !psr.id !390
  call void @llvm.dbg.value(metadata i64 %14, metadata !357, metadata !DIExpression()), !dbg !355, !psr.id !391
  %15 = and i64 %14, 255, !dbg !392, !psr.id !393
  %16 = trunc i64 %15 to i8, !dbg !394, !psr.id !395
  %17 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !396, !psr.id !397
  store i8 %16, i8* %17, align 1, !dbg !398, !psr.id !399
  %18 = lshr i64 %14, 8, !dbg !400, !psr.id !401
  call void @llvm.dbg.value(metadata i64 %18, metadata !357, metadata !DIExpression()), !dbg !355, !psr.id !402
  %19 = and i64 %18, 255, !dbg !403, !psr.id !404
  %20 = trunc i64 %19 to i8, !dbg !405, !psr.id !406
  %21 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !407, !psr.id !408
  store i8 %20, i8* %21, align 1, !dbg !409, !psr.id !410
  %22 = lshr i64 %18, 8, !dbg !411, !psr.id !412
  call void @llvm.dbg.value(metadata i64 %22, metadata !357, metadata !DIExpression()), !dbg !355, !psr.id !413
  %23 = and i64 %22, 255, !dbg !414, !psr.id !415
  %24 = trunc i64 %23 to i8, !dbg !416, !psr.id !417
  %25 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !418, !psr.id !419
  store i8 %24, i8* %25, align 1, !dbg !420, !psr.id !421
  %26 = lshr i64 %22, 8, !dbg !422, !psr.id !423
  call void @llvm.dbg.value(metadata i64 %26, metadata !357, metadata !DIExpression()), !dbg !355, !psr.id !424
  %27 = and i64 %26, 255, !dbg !425, !psr.id !426
  %28 = trunc i64 %27 to i8, !dbg !427, !psr.id !428
  %29 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !429, !psr.id !430
  store i8 %28, i8* %29, align 1, !dbg !431, !psr.id !432
  %30 = lshr i64 %26, 8, !dbg !433, !psr.id !434
  call void @llvm.dbg.value(metadata i64 %30, metadata !357, metadata !DIExpression()), !dbg !355, !psr.id !435
  %31 = and i64 %30, 255, !dbg !436, !psr.id !437
  %32 = trunc i64 %31 to i8, !dbg !438, !psr.id !439
  %33 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !440, !psr.id !441
  store i8 %32, i8* %33, align 1, !dbg !442, !psr.id !443
  ret void, !dbg !444, !psr.id !445
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_aead_chacha20poly1305_decrypt(i8* %0, i64* %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i8* %8) #0 !dbg !446 {
  %10 = alloca %struct.crypto_onetimeauth_poly1305_state, align 8, !psr.id !449
  %11 = alloca [64 x i8], align 16, !psr.id !450
  %12 = alloca [8 x i8], align 1, !psr.id !451
  %13 = alloca [16 x i8], align 16, !psr.id !452
  call void @llvm.dbg.value(metadata i8* %0, metadata !453, metadata !DIExpression()), !dbg !454, !psr.id !455
  call void @llvm.dbg.value(metadata i64* %1, metadata !456, metadata !DIExpression()), !dbg !454, !psr.id !457
  call void @llvm.dbg.value(metadata i8* %2, metadata !458, metadata !DIExpression()), !dbg !454, !psr.id !459
  call void @llvm.dbg.value(metadata i8* %3, metadata !460, metadata !DIExpression()), !dbg !454, !psr.id !461
  call void @llvm.dbg.value(metadata i64 %4, metadata !462, metadata !DIExpression()), !dbg !454, !psr.id !463
  call void @llvm.dbg.value(metadata i8* %5, metadata !464, metadata !DIExpression()), !dbg !454, !psr.id !465
  call void @llvm.dbg.value(metadata i64 %6, metadata !466, metadata !DIExpression()), !dbg !454, !psr.id !467
  call void @llvm.dbg.value(metadata i8* %7, metadata !468, metadata !DIExpression()), !dbg !454, !psr.id !469
  call void @llvm.dbg.value(metadata i8* %8, metadata !470, metadata !DIExpression()), !dbg !454, !psr.id !471
  call void @llvm.dbg.declare(metadata %struct.crypto_onetimeauth_poly1305_state* %10, metadata !472, metadata !DIExpression()), !dbg !473, !psr.id !474
  call void @llvm.dbg.declare(metadata [64 x i8]* %11, metadata !475, metadata !DIExpression()), !dbg !476, !psr.id !477
  call void @llvm.dbg.declare(metadata [8 x i8]* %12, metadata !478, metadata !DIExpression()), !dbg !479, !psr.id !480
  call void @llvm.dbg.declare(metadata [16 x i8]* %13, metadata !481, metadata !DIExpression()), !dbg !482, !psr.id !483
  %14 = icmp ne i64* %1, null, !dbg !484, !psr.id !486
  br i1 %14, label %15, label %16, !dbg !487, !psr.id !488

15:                                               ; preds = %9
  store i64 0, i64* %1, align 8, !dbg !489, !psr.id !491
  br label %16, !dbg !492, !psr.id !493

16:                                               ; preds = %15, %9
  %17 = icmp ult i64 %4, 16, !dbg !494, !psr.id !496
  br i1 %17, label %18, label %19, !dbg !497, !psr.id !498

18:                                               ; preds = %16
  br label %53, !dbg !499, !psr.id !501

19:                                               ; preds = %16
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !502, !psr.id !503
  %21 = call i32 @crypto_stream_chacha20(i8* %20, i64 64, i8* %7, i8* %8), !dbg !504, !psr.id !505
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !506, !psr.id !507
  %23 = call i32 @crypto_onetimeauth_poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %22), !dbg !508, !psr.id !509
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0, !dbg !510, !psr.id !511
  call void @sodium_memzero(i8* %24, i64 64), !dbg !512, !psr.id !513
  %25 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %5, i64 %6), !dbg !514, !psr.id !515
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !516, !psr.id !517
  call void @_u64_le_from_ull(i8* %26, i64 %6), !dbg !518, !psr.id !519
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !520, !psr.id !521
  %28 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %27, i64 8), !dbg !522, !psr.id !523
  %29 = sub i64 %4, 16, !dbg !524, !psr.id !525
  %30 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %3, i64 %29), !dbg !526, !psr.id !527
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !528, !psr.id !529
  %32 = sub i64 %4, 16, !dbg !530, !psr.id !531
  call void @_u64_le_from_ull(i8* %31, i64 %32), !dbg !532, !psr.id !533
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !534, !psr.id !535
  %34 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %33, i64 8), !dbg !536, !psr.id !537
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0, !dbg !538, !psr.id !539
  %36 = call i32 @crypto_onetimeauth_poly1305_final(%struct.crypto_onetimeauth_poly1305_state* %10, i8* %35), !dbg !540, !psr.id !541
  %37 = bitcast %struct.crypto_onetimeauth_poly1305_state* %10 to i8*, !dbg !542, !psr.id !543
  call void @sodium_memzero(i8* %37, i64 144), !dbg !544, !psr.id !545
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0, !dbg !546, !psr.id !547
  %39 = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !548, !psr.id !549
  %40 = getelementptr inbounds i8, i8* %39, i64 -16, !dbg !550, !psr.id !551
  %41 = call i32 @crypto_verify_16(i8* %38, i8* %40), !dbg !552, !psr.id !553
  call void @llvm.dbg.value(metadata i32 %41, metadata !554, metadata !DIExpression()), !dbg !454, !psr.id !555
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0, !dbg !556, !psr.id !557
  call void @sodium_memzero(i8* %42, i64 16), !dbg !558, !psr.id !559
  %43 = icmp ne i32 %41, 0, !dbg !560, !psr.id !562
  br i1 %43, label %44, label %46, !dbg !563, !psr.id !564

44:                                               ; preds = %19
  %45 = sub i64 %4, 16, !dbg !565, !psr.id !567
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %45, i1 false), !dbg !568, !psr.id !569
  br label %53, !dbg !570, !psr.id !571

46:                                               ; preds = %19
  %47 = sub i64 %4, 16, !dbg !572, !psr.id !573
  %48 = call i32 @crypto_stream_chacha20_xor_ic(i8* %0, i8* %3, i64 %47, i8* %7, i64 1, i8* %8), !dbg !574, !psr.id !575
  %49 = icmp ne i64* %1, null, !dbg !576, !psr.id !578
  br i1 %49, label %50, label %52, !dbg !579, !psr.id !580

50:                                               ; preds = %46
  %51 = sub i64 %4, 16, !dbg !581, !psr.id !583
  store i64 %51, i64* %1, align 8, !dbg !584, !psr.id !585
  br label %52, !dbg !586, !psr.id !587

52:                                               ; preds = %50, %46
  br label %53, !dbg !588, !psr.id !589

53:                                               ; preds = %52, %44, %18
  %.0 = phi i32 [ -1, %18 ], [ -1, %44 ], [ 0, %52 ], !dbg !454, !psr.id !590
  ret i32 %.0, !dbg !591, !psr.id !592
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_aead_chacha20poly1305_keybytes() #0 !dbg !593 {
  ret i64 32, !dbg !596, !psr.id !597
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_aead_chacha20poly1305_npubbytes() #0 !dbg !598 {
  ret i64 8, !dbg !599, !psr.id !600
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_aead_chacha20poly1305_nsecbytes() #0 !dbg !601 {
  ret i64 0, !dbg !602, !psr.id !603
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_aead_chacha20poly1305_abytes() #0 !dbg !604 {
  ret i64 16, !dbg !605, !psr.id !606
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @crypto_onetimeauth_poly1305_donna_implementation_name() #0 !dbg !607 {
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* @.str, i64 0, i64 0, !psr.id !608
  ret i8* %1, !dbg !609, !psr.id !610
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !611 {
  %5 = alloca %struct.crypto_onetimeauth_poly1305_state, align 8, !psr.id !612
  call void @llvm.dbg.value(metadata i8* %0, metadata !613, metadata !DIExpression()), !dbg !614, !psr.id !615
  call void @llvm.dbg.value(metadata i8* %1, metadata !616, metadata !DIExpression()), !dbg !614, !psr.id !617
  call void @llvm.dbg.value(metadata i64 %2, metadata !618, metadata !DIExpression()), !dbg !614, !psr.id !619
  call void @llvm.dbg.value(metadata i8* %3, metadata !620, metadata !DIExpression()), !dbg !614, !psr.id !621
  call void @llvm.dbg.declare(metadata %struct.crypto_onetimeauth_poly1305_state* %5, metadata !622, metadata !DIExpression()), !dbg !623, !psr.id !624
  call void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %3), !dbg !625, !psr.id !626
  call void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %1, i64 %2), !dbg !627, !psr.id !628
  call void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %0), !dbg !629, !psr.id !630
  ret i32 0, !dbg !631, !psr.id !632
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !633 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !634, metadata !DIExpression()), !dbg !635, !psr.id !636
  call void @llvm.dbg.value(metadata i8* %1, metadata !637, metadata !DIExpression()), !dbg !635, !psr.id !638
  call void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !639, !psr.id !640
  ret i32 0, !dbg !641, !psr.id !642
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !643 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !644, metadata !DIExpression()), !dbg !645, !psr.id !646
  call void @llvm.dbg.value(metadata i8* %1, metadata !647, metadata !DIExpression()), !dbg !645, !psr.id !648
  call void @llvm.dbg.value(metadata i64 %2, metadata !649, metadata !DIExpression()), !dbg !645, !psr.id !650
  call void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2), !dbg !651, !psr.id !652
  ret i32 0, !dbg !653, !psr.id !654
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_final(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !655 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !656, metadata !DIExpression()), !dbg !657, !psr.id !658
  call void @llvm.dbg.value(metadata i8* %1, metadata !659, metadata !DIExpression()), !dbg !657, !psr.id !660
  call void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !661, !psr.id !662
  ret i32 0, !dbg !663, !psr.id !664
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !665 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !668, metadata !DIExpression()), !dbg !669, !psr.id !670
  call void @llvm.dbg.value(metadata i8* %1, metadata !671, metadata !DIExpression()), !dbg !669, !psr.id !672
  %3 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !673, !psr.id !674
  %4 = bitcast i8* %3 to %struct.poly1305_state_internal_t*, !dbg !675, !psr.id !676
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %4, metadata !677, metadata !DIExpression()), !dbg !669, !psr.id !678
  %5 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !679, !psr.id !681
  %6 = load i64, i64* %5, align 8, !dbg !679, !psr.id !682
  %7 = icmp ne i64 %6, 0, !dbg !683, !psr.id !684
  br i1 %7, label %8, label %25, !dbg !685, !psr.id !686

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !687, !psr.id !689
  %10 = load i64, i64* %9, align 8, !dbg !687, !psr.id !690
  call void @llvm.dbg.value(metadata i64 %10, metadata !691, metadata !DIExpression()), !dbg !692, !psr.id !693
  %11 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !694, !psr.id !695
  %12 = add i64 %10, 1, !dbg !696, !psr.id !697
  call void @llvm.dbg.value(metadata i64 %12, metadata !691, metadata !DIExpression()), !dbg !692, !psr.id !698
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %10, !dbg !699, !psr.id !700
  store i8 1, i8* %13, align 1, !dbg !701, !psr.id !702
  br label %14, !dbg !703, !psr.id !704

14:                                               ; preds = %19, %8
  %.0 = phi i64 [ %12, %8 ], [ %20, %19 ], !dbg !692, !psr.id !705
  call void @llvm.dbg.value(metadata i64 %.0, metadata !691, metadata !DIExpression()), !dbg !692, !psr.id !706
  %15 = icmp ult i64 %.0, 16, !dbg !707, !psr.id !710
  br i1 %15, label %16, label %21, !dbg !711, !psr.id !712

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !713, !psr.id !714
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 %.0, !dbg !715, !psr.id !716
  store i8 0, i8* %18, align 1, !dbg !717, !psr.id !718
  br label %19, !dbg !715, !psr.id !719

19:                                               ; preds = %16
  %20 = add i64 %.0, 1, !dbg !720, !psr.id !721
  call void @llvm.dbg.value(metadata i64 %20, metadata !691, metadata !DIExpression()), !dbg !692, !psr.id !722
  br label %14, !dbg !723, !llvm.loop !724, !psr.id !727

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 5, !dbg !728, !psr.id !729
  store i8 1, i8* %22, align 8, !dbg !730, !psr.id !731
  %23 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !732, !psr.id !733
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0, !dbg !734, !psr.id !735
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %4, i8* %24, i64 16), !dbg !736, !psr.id !737
  br label %25, !dbg !738, !psr.id !739

25:                                               ; preds = %21, %2
  %26 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !740, !psr.id !741
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 0, !dbg !742, !psr.id !743
  %28 = load i64, i64* %27, align 8, !dbg !742, !psr.id !744
  call void @llvm.dbg.value(metadata i64 %28, metadata !745, metadata !DIExpression()), !dbg !669, !psr.id !746
  %29 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !747, !psr.id !748
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %29, i64 0, i64 1, !dbg !749, !psr.id !750
  %31 = load i64, i64* %30, align 8, !dbg !749, !psr.id !751
  call void @llvm.dbg.value(metadata i64 %31, metadata !752, metadata !DIExpression()), !dbg !669, !psr.id !753
  %32 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !754, !psr.id !755
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 2, !dbg !756, !psr.id !757
  %34 = load i64, i64* %33, align 8, !dbg !756, !psr.id !758
  call void @llvm.dbg.value(metadata i64 %34, metadata !759, metadata !DIExpression()), !dbg !669, !psr.id !760
  %35 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !761, !psr.id !762
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 3, !dbg !763, !psr.id !764
  %37 = load i64, i64* %36, align 8, !dbg !763, !psr.id !765
  call void @llvm.dbg.value(metadata i64 %37, metadata !766, metadata !DIExpression()), !dbg !669, !psr.id !767
  %38 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !768, !psr.id !769
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %38, i64 0, i64 4, !dbg !770, !psr.id !771
  %40 = load i64, i64* %39, align 8, !dbg !770, !psr.id !772
  call void @llvm.dbg.value(metadata i64 %40, metadata !773, metadata !DIExpression()), !dbg !669, !psr.id !774
  %41 = lshr i64 %31, 26, !dbg !775, !psr.id !776
  call void @llvm.dbg.value(metadata i64 %41, metadata !777, metadata !DIExpression()), !dbg !669, !psr.id !778
  %42 = and i64 %31, 67108863, !dbg !779, !psr.id !780
  call void @llvm.dbg.value(metadata i64 %42, metadata !752, metadata !DIExpression()), !dbg !669, !psr.id !781
  %43 = add i64 %34, %41, !dbg !782, !psr.id !783
  call void @llvm.dbg.value(metadata i64 %43, metadata !759, metadata !DIExpression()), !dbg !669, !psr.id !784
  %44 = lshr i64 %43, 26, !dbg !785, !psr.id !786
  call void @llvm.dbg.value(metadata i64 %44, metadata !777, metadata !DIExpression()), !dbg !669, !psr.id !787
  %45 = and i64 %43, 67108863, !dbg !788, !psr.id !789
  call void @llvm.dbg.value(metadata i64 %45, metadata !759, metadata !DIExpression()), !dbg !669, !psr.id !790
  %46 = add i64 %37, %44, !dbg !791, !psr.id !792
  call void @llvm.dbg.value(metadata i64 %46, metadata !766, metadata !DIExpression()), !dbg !669, !psr.id !793
  %47 = lshr i64 %46, 26, !dbg !794, !psr.id !795
  call void @llvm.dbg.value(metadata i64 %47, metadata !777, metadata !DIExpression()), !dbg !669, !psr.id !796
  %48 = and i64 %46, 67108863, !dbg !797, !psr.id !798
  call void @llvm.dbg.value(metadata i64 %48, metadata !766, metadata !DIExpression()), !dbg !669, !psr.id !799
  %49 = add i64 %40, %47, !dbg !800, !psr.id !801
  call void @llvm.dbg.value(metadata i64 %49, metadata !773, metadata !DIExpression()), !dbg !669, !psr.id !802
  %50 = lshr i64 %49, 26, !dbg !803, !psr.id !804
  call void @llvm.dbg.value(metadata i64 %50, metadata !777, metadata !DIExpression()), !dbg !669, !psr.id !805
  %51 = and i64 %49, 67108863, !dbg !806, !psr.id !807
  call void @llvm.dbg.value(metadata i64 %51, metadata !773, metadata !DIExpression()), !dbg !669, !psr.id !808
  %52 = mul i64 %50, 5, !dbg !809, !psr.id !810
  %53 = add i64 %28, %52, !dbg !811, !psr.id !812
  call void @llvm.dbg.value(metadata i64 %53, metadata !745, metadata !DIExpression()), !dbg !669, !psr.id !813
  %54 = lshr i64 %53, 26, !dbg !814, !psr.id !815
  call void @llvm.dbg.value(metadata i64 %54, metadata !777, metadata !DIExpression()), !dbg !669, !psr.id !816
  %55 = and i64 %53, 67108863, !dbg !817, !psr.id !818
  call void @llvm.dbg.value(metadata i64 %55, metadata !745, metadata !DIExpression()), !dbg !669, !psr.id !819
  %56 = add i64 %42, %54, !dbg !820, !psr.id !821
  call void @llvm.dbg.value(metadata i64 %56, metadata !752, metadata !DIExpression()), !dbg !669, !psr.id !822
  %57 = add i64 %55, 5, !dbg !823, !psr.id !824
  call void @llvm.dbg.value(metadata i64 %57, metadata !825, metadata !DIExpression()), !dbg !669, !psr.id !826
  %58 = lshr i64 %57, 26, !dbg !827, !psr.id !828
  call void @llvm.dbg.value(metadata i64 %58, metadata !777, metadata !DIExpression()), !dbg !669, !psr.id !829
  %59 = and i64 %57, 67108863, !dbg !830, !psr.id !831
  call void @llvm.dbg.value(metadata i64 %59, metadata !825, metadata !DIExpression()), !dbg !669, !psr.id !832
  %60 = add i64 %56, %58, !dbg !833, !psr.id !834
  call void @llvm.dbg.value(metadata i64 %60, metadata !835, metadata !DIExpression()), !dbg !669, !psr.id !836
  %61 = lshr i64 %60, 26, !dbg !837, !psr.id !838
  call void @llvm.dbg.value(metadata i64 %61, metadata !777, metadata !DIExpression()), !dbg !669, !psr.id !839
  %62 = and i64 %60, 67108863, !dbg !840, !psr.id !841
  call void @llvm.dbg.value(metadata i64 %62, metadata !835, metadata !DIExpression()), !dbg !669, !psr.id !842
  %63 = add i64 %45, %61, !dbg !843, !psr.id !844
  call void @llvm.dbg.value(metadata i64 %63, metadata !845, metadata !DIExpression()), !dbg !669, !psr.id !846
  %64 = lshr i64 %63, 26, !dbg !847, !psr.id !848
  call void @llvm.dbg.value(metadata i64 %64, metadata !777, metadata !DIExpression()), !dbg !669, !psr.id !849
  %65 = and i64 %63, 67108863, !dbg !850, !psr.id !851
  call void @llvm.dbg.value(metadata i64 %65, metadata !845, metadata !DIExpression()), !dbg !669, !psr.id !852
  %66 = add i64 %48, %64, !dbg !853, !psr.id !854
  call void @llvm.dbg.value(metadata i64 %66, metadata !855, metadata !DIExpression()), !dbg !669, !psr.id !856
  %67 = lshr i64 %66, 26, !dbg !857, !psr.id !858
  call void @llvm.dbg.value(metadata i64 %67, metadata !777, metadata !DIExpression()), !dbg !669, !psr.id !859
  %68 = and i64 %66, 67108863, !dbg !860, !psr.id !861
  call void @llvm.dbg.value(metadata i64 %68, metadata !855, metadata !DIExpression()), !dbg !669, !psr.id !862
  %69 = add i64 %51, %67, !dbg !863, !psr.id !864
  %70 = sub i64 %69, 67108864, !dbg !865, !psr.id !866
  call void @llvm.dbg.value(metadata i64 %70, metadata !867, metadata !DIExpression()), !dbg !669, !psr.id !868
  %71 = lshr i64 %70, 63, !dbg !869, !psr.id !870
  %72 = sub i64 %71, 1, !dbg !871, !psr.id !872
  call void @llvm.dbg.value(metadata i64 %72, metadata !873, metadata !DIExpression()), !dbg !669, !psr.id !874
  %73 = and i64 %59, %72, !dbg !875, !psr.id !876
  call void @llvm.dbg.value(metadata i64 %73, metadata !825, metadata !DIExpression()), !dbg !669, !psr.id !877
  %74 = and i64 %62, %72, !dbg !878, !psr.id !879
  call void @llvm.dbg.value(metadata i64 %74, metadata !835, metadata !DIExpression()), !dbg !669, !psr.id !880
  %75 = and i64 %65, %72, !dbg !881, !psr.id !882
  call void @llvm.dbg.value(metadata i64 %75, metadata !845, metadata !DIExpression()), !dbg !669, !psr.id !883
  %76 = and i64 %68, %72, !dbg !884, !psr.id !885
  call void @llvm.dbg.value(metadata i64 %76, metadata !855, metadata !DIExpression()), !dbg !669, !psr.id !886
  %77 = and i64 %70, %72, !dbg !887, !psr.id !888
  call void @llvm.dbg.value(metadata i64 %77, metadata !867, metadata !DIExpression()), !dbg !669, !psr.id !889
  %78 = xor i64 %72, -1, !dbg !890, !psr.id !891
  call void @llvm.dbg.value(metadata i64 %78, metadata !873, metadata !DIExpression()), !dbg !669, !psr.id !892
  %79 = and i64 %55, %78, !dbg !893, !psr.id !894
  %80 = or i64 %79, %73, !dbg !895, !psr.id !896
  call void @llvm.dbg.value(metadata i64 %80, metadata !745, metadata !DIExpression()), !dbg !669, !psr.id !897
  %81 = and i64 %56, %78, !dbg !898, !psr.id !899
  %82 = or i64 %81, %74, !dbg !900, !psr.id !901
  call void @llvm.dbg.value(metadata i64 %82, metadata !752, metadata !DIExpression()), !dbg !669, !psr.id !902
  %83 = and i64 %45, %78, !dbg !903, !psr.id !904
  %84 = or i64 %83, %75, !dbg !905, !psr.id !906
  call void @llvm.dbg.value(metadata i64 %84, metadata !759, metadata !DIExpression()), !dbg !669, !psr.id !907
  %85 = and i64 %48, %78, !dbg !908, !psr.id !909
  %86 = or i64 %85, %76, !dbg !910, !psr.id !911
  call void @llvm.dbg.value(metadata i64 %86, metadata !766, metadata !DIExpression()), !dbg !669, !psr.id !912
  %87 = and i64 %51, %78, !dbg !913, !psr.id !914
  %88 = or i64 %87, %77, !dbg !915, !psr.id !916
  call void @llvm.dbg.value(metadata i64 %88, metadata !773, metadata !DIExpression()), !dbg !669, !psr.id !917
  %89 = shl i64 %82, 26, !dbg !918, !psr.id !919
  %90 = or i64 %80, %89, !dbg !920, !psr.id !921
  %91 = and i64 %90, 4294967295, !dbg !922, !psr.id !923
  call void @llvm.dbg.value(metadata i64 %91, metadata !745, metadata !DIExpression()), !dbg !669, !psr.id !924
  %92 = lshr i64 %82, 6, !dbg !925, !psr.id !926
  %93 = shl i64 %84, 20, !dbg !927, !psr.id !928
  %94 = or i64 %92, %93, !dbg !929, !psr.id !930
  %95 = and i64 %94, 4294967295, !dbg !931, !psr.id !932
  call void @llvm.dbg.value(metadata i64 %95, metadata !752, metadata !DIExpression()), !dbg !669, !psr.id !933
  %96 = lshr i64 %84, 12, !dbg !934, !psr.id !935
  %97 = shl i64 %86, 14, !dbg !936, !psr.id !937
  %98 = or i64 %96, %97, !dbg !938, !psr.id !939
  %99 = and i64 %98, 4294967295, !dbg !940, !psr.id !941
  call void @llvm.dbg.value(metadata i64 %99, metadata !759, metadata !DIExpression()), !dbg !669, !psr.id !942
  %100 = lshr i64 %86, 18, !dbg !943, !psr.id !944
  %101 = shl i64 %88, 8, !dbg !945, !psr.id !946
  %102 = or i64 %100, %101, !dbg !947, !psr.id !948
  %103 = and i64 %102, 4294967295, !dbg !949, !psr.id !950
  call void @llvm.dbg.value(metadata i64 %103, metadata !766, metadata !DIExpression()), !dbg !669, !psr.id !951
  %104 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !952, !psr.id !953
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %104, i64 0, i64 0, !dbg !954, !psr.id !955
  %106 = load i64, i64* %105, align 8, !dbg !954, !psr.id !956
  %107 = add i64 %91, %106, !dbg !957, !psr.id !958
  call void @llvm.dbg.value(metadata i64 %107, metadata !959, metadata !DIExpression()), !dbg !669, !psr.id !960
  call void @llvm.dbg.value(metadata i64 %107, metadata !745, metadata !DIExpression()), !dbg !669, !psr.id !961
  %108 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !962, !psr.id !963
  %109 = getelementptr inbounds [4 x i64], [4 x i64]* %108, i64 0, i64 1, !dbg !964, !psr.id !965
  %110 = load i64, i64* %109, align 8, !dbg !964, !psr.id !966
  %111 = add i64 %95, %110, !dbg !967, !psr.id !968
  %112 = lshr i64 %107, 32, !dbg !969, !psr.id !970
  %113 = add i64 %111, %112, !dbg !971, !psr.id !972
  call void @llvm.dbg.value(metadata i64 %113, metadata !959, metadata !DIExpression()), !dbg !669, !psr.id !973
  call void @llvm.dbg.value(metadata i64 %113, metadata !752, metadata !DIExpression()), !dbg !669, !psr.id !974
  %114 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !975, !psr.id !976
  %115 = getelementptr inbounds [4 x i64], [4 x i64]* %114, i64 0, i64 2, !dbg !977, !psr.id !978
  %116 = load i64, i64* %115, align 8, !dbg !977, !psr.id !979
  %117 = add i64 %99, %116, !dbg !980, !psr.id !981
  %118 = lshr i64 %113, 32, !dbg !982, !psr.id !983
  %119 = add i64 %117, %118, !dbg !984, !psr.id !985
  call void @llvm.dbg.value(metadata i64 %119, metadata !959, metadata !DIExpression()), !dbg !669, !psr.id !986
  call void @llvm.dbg.value(metadata i64 %119, metadata !759, metadata !DIExpression()), !dbg !669, !psr.id !987
  %120 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !988, !psr.id !989
  %121 = getelementptr inbounds [4 x i64], [4 x i64]* %120, i64 0, i64 3, !dbg !990, !psr.id !991
  %122 = load i64, i64* %121, align 8, !dbg !990, !psr.id !992
  %123 = add i64 %103, %122, !dbg !993, !psr.id !994
  %124 = lshr i64 %119, 32, !dbg !995, !psr.id !996
  %125 = add i64 %123, %124, !dbg !997, !psr.id !998
  call void @llvm.dbg.value(metadata i64 %125, metadata !959, metadata !DIExpression()), !dbg !669, !psr.id !999
  call void @llvm.dbg.value(metadata i64 %125, metadata !766, metadata !DIExpression()), !dbg !669, !psr.id !1000
  %126 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1001, !psr.id !1002
  call void @U32TO8(i8* %126, i64 %107), !dbg !1003, !psr.id !1004
  %127 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1005, !psr.id !1006
  call void @U32TO8(i8* %127, i64 %113), !dbg !1007, !psr.id !1008
  %128 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1009, !psr.id !1010
  call void @U32TO8(i8* %128, i64 %119), !dbg !1011, !psr.id !1012
  %129 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1013, !psr.id !1014
  call void @U32TO8(i8* %129, i64 %125), !dbg !1015, !psr.id !1016
  %130 = bitcast %struct.poly1305_state_internal_t* %4 to i8*, !dbg !1017, !psr.id !1018
  call void @sodium_memzero(i8* %130, i64 144), !dbg !1019, !psr.id !1020
  ret void, !dbg !1021, !psr.id !1022
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_blocks(%struct.poly1305_state_internal_t* %0, i8* %1, i64 %2) #0 !dbg !1023 {
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %0, metadata !1026, metadata !DIExpression()), !dbg !1027, !psr.id !1028
  call void @llvm.dbg.value(metadata i8* %1, metadata !1029, metadata !DIExpression()), !dbg !1027, !psr.id !1030
  call void @llvm.dbg.value(metadata i64 %2, metadata !1031, metadata !DIExpression()), !dbg !1027, !psr.id !1032
  %4 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 5, !dbg !1033, !psr.id !1034
  %5 = load i8, i8* %4, align 8, !dbg !1033, !psr.id !1035
  %6 = zext i8 %5 to i32, !dbg !1036, !psr.id !1037
  %7 = icmp ne i32 %6, 0, !dbg !1036, !psr.id !1038
  %8 = zext i1 %7 to i64, !dbg !1036, !psr.id !1039
  %9 = select i1 %7, i32 0, i32 16777216, !dbg !1036, !psr.id !1040
  %10 = sext i32 %9 to i64, !dbg !1036, !psr.id !1041
  call void @llvm.dbg.value(metadata i64 %10, metadata !1042, metadata !DIExpression()), !dbg !1027, !psr.id !1044
  %11 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !1045, !psr.id !1046
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 0, !dbg !1047, !psr.id !1048
  %13 = load i64, i64* %12, align 8, !dbg !1047, !psr.id !1049
  call void @llvm.dbg.value(metadata i64 %13, metadata !1050, metadata !DIExpression()), !dbg !1027, !psr.id !1051
  %14 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !1052, !psr.id !1053
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 1, !dbg !1054, !psr.id !1055
  %16 = load i64, i64* %15, align 8, !dbg !1054, !psr.id !1056
  call void @llvm.dbg.value(metadata i64 %16, metadata !1057, metadata !DIExpression()), !dbg !1027, !psr.id !1058
  %17 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !1059, !psr.id !1060
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %17, i64 0, i64 2, !dbg !1061, !psr.id !1062
  %19 = load i64, i64* %18, align 8, !dbg !1061, !psr.id !1063
  call void @llvm.dbg.value(metadata i64 %19, metadata !1064, metadata !DIExpression()), !dbg !1027, !psr.id !1065
  %20 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !1066, !psr.id !1067
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 3, !dbg !1068, !psr.id !1069
  %22 = load i64, i64* %21, align 8, !dbg !1068, !psr.id !1070
  call void @llvm.dbg.value(metadata i64 %22, metadata !1071, metadata !DIExpression()), !dbg !1027, !psr.id !1072
  %23 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !1073, !psr.id !1074
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %23, i64 0, i64 4, !dbg !1075, !psr.id !1076
  %25 = load i64, i64* %24, align 8, !dbg !1075, !psr.id !1077
  call void @llvm.dbg.value(metadata i64 %25, metadata !1078, metadata !DIExpression()), !dbg !1027, !psr.id !1079
  %26 = mul i64 %16, 5, !dbg !1080, !psr.id !1081
  call void @llvm.dbg.value(metadata i64 %26, metadata !1082, metadata !DIExpression()), !dbg !1027, !psr.id !1083
  %27 = mul i64 %19, 5, !dbg !1084, !psr.id !1085
  call void @llvm.dbg.value(metadata i64 %27, metadata !1086, metadata !DIExpression()), !dbg !1027, !psr.id !1087
  %28 = mul i64 %22, 5, !dbg !1088, !psr.id !1089
  call void @llvm.dbg.value(metadata i64 %28, metadata !1090, metadata !DIExpression()), !dbg !1027, !psr.id !1091
  %29 = mul i64 %25, 5, !dbg !1092, !psr.id !1093
  call void @llvm.dbg.value(metadata i64 %29, metadata !1094, metadata !DIExpression()), !dbg !1027, !psr.id !1095
  %30 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !1096, !psr.id !1097
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %30, i64 0, i64 0, !dbg !1098, !psr.id !1099
  %32 = load i64, i64* %31, align 8, !dbg !1098, !psr.id !1100
  call void @llvm.dbg.value(metadata i64 %32, metadata !1101, metadata !DIExpression()), !dbg !1027, !psr.id !1102
  %33 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !1103, !psr.id !1104
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %33, i64 0, i64 1, !dbg !1105, !psr.id !1106
  %35 = load i64, i64* %34, align 8, !dbg !1105, !psr.id !1107
  call void @llvm.dbg.value(metadata i64 %35, metadata !1108, metadata !DIExpression()), !dbg !1027, !psr.id !1109
  %36 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !1110, !psr.id !1111
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %36, i64 0, i64 2, !dbg !1112, !psr.id !1113
  %38 = load i64, i64* %37, align 8, !dbg !1112, !psr.id !1114
  call void @llvm.dbg.value(metadata i64 %38, metadata !1115, metadata !DIExpression()), !dbg !1027, !psr.id !1116
  %39 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !1117, !psr.id !1118
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 3, !dbg !1119, !psr.id !1120
  %41 = load i64, i64* %40, align 8, !dbg !1119, !psr.id !1121
  call void @llvm.dbg.value(metadata i64 %41, metadata !1122, metadata !DIExpression()), !dbg !1027, !psr.id !1123
  %42 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !1124, !psr.id !1125
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 4, !dbg !1126, !psr.id !1127
  %44 = load i64, i64* %43, align 8, !dbg !1126, !psr.id !1128
  call void @llvm.dbg.value(metadata i64 %44, metadata !1129, metadata !DIExpression()), !dbg !1027, !psr.id !1130
  br label %45, !dbg !1131, !psr.id !1132

45:                                               ; preds = %47, %3
  %.06 = phi i64 [ %32, %3 ], [ %134, %47 ], !dbg !1027, !psr.id !1133
  %.05 = phi i64 [ %35, %3 ], [ %135, %47 ], !dbg !1027, !psr.id !1134
  %.04 = phi i64 [ %38, %3 ], [ %124, %47 ], !dbg !1027, !psr.id !1135
  %.03 = phi i64 [ %41, %3 ], [ %127, %47 ], !dbg !1027, !psr.id !1136
  %.02 = phi i64 [ %2, %3 ], [ %137, %47 ], !psr.id !1137
  %.01 = phi i8* [ %1, %3 ], [ %136, %47 ], !psr.id !1138
  %.0 = phi i64 [ %44, %3 ], [ %130, %47 ], !dbg !1027, !psr.id !1139
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1129, metadata !DIExpression()), !dbg !1027, !psr.id !1140
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1029, metadata !DIExpression()), !dbg !1027, !psr.id !1141
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1031, metadata !DIExpression()), !dbg !1027, !psr.id !1142
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1122, metadata !DIExpression()), !dbg !1027, !psr.id !1143
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1115, metadata !DIExpression()), !dbg !1027, !psr.id !1144
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1108, metadata !DIExpression()), !dbg !1027, !psr.id !1145
  call void @llvm.dbg.value(metadata i64 %.06, metadata !1101, metadata !DIExpression()), !dbg !1027, !psr.id !1146
  %46 = icmp uge i64 %.02, 16, !dbg !1147, !psr.id !1148
  br i1 %46, label %47, label %138, !dbg !1131, !psr.id !1149

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, i8* %.01, i64 0, !dbg !1150, !psr.id !1152
  %49 = call i64 @U8TO32(i8* %48), !dbg !1153, !psr.id !1154
  %50 = and i64 %49, 67108863, !dbg !1155, !psr.id !1156
  %51 = add i64 %.06, %50, !dbg !1157, !psr.id !1158
  call void @llvm.dbg.value(metadata i64 %51, metadata !1101, metadata !DIExpression()), !dbg !1027, !psr.id !1159
  %52 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !1160, !psr.id !1161
  %53 = call i64 @U8TO32(i8* %52), !dbg !1162, !psr.id !1163
  %54 = lshr i64 %53, 2, !dbg !1164, !psr.id !1165
  %55 = and i64 %54, 67108863, !dbg !1166, !psr.id !1167
  %56 = add i64 %.05, %55, !dbg !1168, !psr.id !1169
  call void @llvm.dbg.value(metadata i64 %56, metadata !1108, metadata !DIExpression()), !dbg !1027, !psr.id !1170
  %57 = getelementptr inbounds i8, i8* %.01, i64 6, !dbg !1171, !psr.id !1172
  %58 = call i64 @U8TO32(i8* %57), !dbg !1173, !psr.id !1174
  %59 = lshr i64 %58, 4, !dbg !1175, !psr.id !1176
  %60 = and i64 %59, 67108863, !dbg !1177, !psr.id !1178
  %61 = add i64 %.04, %60, !dbg !1179, !psr.id !1180
  call void @llvm.dbg.value(metadata i64 %61, metadata !1115, metadata !DIExpression()), !dbg !1027, !psr.id !1181
  %62 = getelementptr inbounds i8, i8* %.01, i64 9, !dbg !1182, !psr.id !1183
  %63 = call i64 @U8TO32(i8* %62), !dbg !1184, !psr.id !1185
  %64 = lshr i64 %63, 6, !dbg !1186, !psr.id !1187
  %65 = and i64 %64, 67108863, !dbg !1188, !psr.id !1189
  %66 = add i64 %.03, %65, !dbg !1190, !psr.id !1191
  call void @llvm.dbg.value(metadata i64 %66, metadata !1122, metadata !DIExpression()), !dbg !1027, !psr.id !1192
  %67 = getelementptr inbounds i8, i8* %.01, i64 12, !dbg !1193, !psr.id !1194
  %68 = call i64 @U8TO32(i8* %67), !dbg !1195, !psr.id !1196
  %69 = lshr i64 %68, 8, !dbg !1197, !psr.id !1198
  %70 = or i64 %69, %10, !dbg !1199, !psr.id !1200
  %71 = add i64 %.0, %70, !dbg !1201, !psr.id !1202
  call void @llvm.dbg.value(metadata i64 %71, metadata !1129, metadata !DIExpression()), !dbg !1027, !psr.id !1203
  %72 = mul i64 %51, %13, !dbg !1204, !psr.id !1205
  %73 = mul i64 %56, %29, !dbg !1206, !psr.id !1207
  %74 = add i64 %72, %73, !dbg !1208, !psr.id !1209
  %75 = mul i64 %61, %28, !dbg !1210, !psr.id !1211
  %76 = add i64 %74, %75, !dbg !1212, !psr.id !1213
  %77 = mul i64 %66, %27, !dbg !1214, !psr.id !1215
  %78 = add i64 %76, %77, !dbg !1216, !psr.id !1217
  %79 = mul i64 %71, %26, !dbg !1218, !psr.id !1219
  %80 = add i64 %78, %79, !dbg !1220, !psr.id !1221
  call void @llvm.dbg.value(metadata i64 %80, metadata !1222, metadata !DIExpression()), !dbg !1027, !psr.id !1223
  %81 = mul i64 %51, %16, !dbg !1224, !psr.id !1225
  %82 = mul i64 %56, %13, !dbg !1226, !psr.id !1227
  %83 = add i64 %81, %82, !dbg !1228, !psr.id !1229
  %84 = mul i64 %61, %29, !dbg !1230, !psr.id !1231
  %85 = add i64 %83, %84, !dbg !1232, !psr.id !1233
  %86 = mul i64 %66, %28, !dbg !1234, !psr.id !1235
  %87 = add i64 %85, %86, !dbg !1236, !psr.id !1237
  %88 = mul i64 %71, %27, !dbg !1238, !psr.id !1239
  %89 = add i64 %87, %88, !dbg !1240, !psr.id !1241
  call void @llvm.dbg.value(metadata i64 %89, metadata !1242, metadata !DIExpression()), !dbg !1027, !psr.id !1243
  %90 = mul i64 %51, %19, !dbg !1244, !psr.id !1245
  %91 = mul i64 %56, %16, !dbg !1246, !psr.id !1247
  %92 = add i64 %90, %91, !dbg !1248, !psr.id !1249
  %93 = mul i64 %61, %13, !dbg !1250, !psr.id !1251
  %94 = add i64 %92, %93, !dbg !1252, !psr.id !1253
  %95 = mul i64 %66, %29, !dbg !1254, !psr.id !1255
  %96 = add i64 %94, %95, !dbg !1256, !psr.id !1257
  %97 = mul i64 %71, %28, !dbg !1258, !psr.id !1259
  %98 = add i64 %96, %97, !dbg !1260, !psr.id !1261
  call void @llvm.dbg.value(metadata i64 %98, metadata !1262, metadata !DIExpression()), !dbg !1027, !psr.id !1263
  %99 = mul i64 %51, %22, !dbg !1264, !psr.id !1265
  %100 = mul i64 %56, %19, !dbg !1266, !psr.id !1267
  %101 = add i64 %99, %100, !dbg !1268, !psr.id !1269
  %102 = mul i64 %61, %16, !dbg !1270, !psr.id !1271
  %103 = add i64 %101, %102, !dbg !1272, !psr.id !1273
  %104 = mul i64 %66, %13, !dbg !1274, !psr.id !1275
  %105 = add i64 %103, %104, !dbg !1276, !psr.id !1277
  %106 = mul i64 %71, %29, !dbg !1278, !psr.id !1279
  %107 = add i64 %105, %106, !dbg !1280, !psr.id !1281
  call void @llvm.dbg.value(metadata i64 %107, metadata !1282, metadata !DIExpression()), !dbg !1027, !psr.id !1283
  %108 = mul i64 %51, %25, !dbg !1284, !psr.id !1285
  %109 = mul i64 %56, %22, !dbg !1286, !psr.id !1287
  %110 = add i64 %108, %109, !dbg !1288, !psr.id !1289
  %111 = mul i64 %61, %19, !dbg !1290, !psr.id !1291
  %112 = add i64 %110, %111, !dbg !1292, !psr.id !1293
  %113 = mul i64 %66, %16, !dbg !1294, !psr.id !1295
  %114 = add i64 %112, %113, !dbg !1296, !psr.id !1297
  %115 = mul i64 %71, %13, !dbg !1298, !psr.id !1299
  %116 = add i64 %114, %115, !dbg !1300, !psr.id !1301
  call void @llvm.dbg.value(metadata i64 %116, metadata !1302, metadata !DIExpression()), !dbg !1027, !psr.id !1303
  %117 = lshr i64 %80, 26, !dbg !1304, !psr.id !1305
  call void @llvm.dbg.value(metadata i64 %117, metadata !1306, metadata !DIExpression()), !dbg !1027, !psr.id !1307
  %118 = and i64 %80, 67108863, !dbg !1308, !psr.id !1309
  call void @llvm.dbg.value(metadata i64 %118, metadata !1101, metadata !DIExpression()), !dbg !1027, !psr.id !1310
  %119 = add i64 %89, %117, !dbg !1311, !psr.id !1312
  call void @llvm.dbg.value(metadata i64 %119, metadata !1242, metadata !DIExpression()), !dbg !1027, !psr.id !1313
  %120 = lshr i64 %119, 26, !dbg !1314, !psr.id !1315
  call void @llvm.dbg.value(metadata i64 %120, metadata !1306, metadata !DIExpression()), !dbg !1027, !psr.id !1316
  %121 = and i64 %119, 67108863, !dbg !1317, !psr.id !1318
  call void @llvm.dbg.value(metadata i64 %121, metadata !1108, metadata !DIExpression()), !dbg !1027, !psr.id !1319
  %122 = add i64 %98, %120, !dbg !1320, !psr.id !1321
  call void @llvm.dbg.value(metadata i64 %122, metadata !1262, metadata !DIExpression()), !dbg !1027, !psr.id !1322
  %123 = lshr i64 %122, 26, !dbg !1323, !psr.id !1324
  call void @llvm.dbg.value(metadata i64 %123, metadata !1306, metadata !DIExpression()), !dbg !1027, !psr.id !1325
  %124 = and i64 %122, 67108863, !dbg !1326, !psr.id !1327
  call void @llvm.dbg.value(metadata i64 %124, metadata !1115, metadata !DIExpression()), !dbg !1027, !psr.id !1328
  %125 = add i64 %107, %123, !dbg !1329, !psr.id !1330
  call void @llvm.dbg.value(metadata i64 %125, metadata !1282, metadata !DIExpression()), !dbg !1027, !psr.id !1331
  %126 = lshr i64 %125, 26, !dbg !1332, !psr.id !1333
  call void @llvm.dbg.value(metadata i64 %126, metadata !1306, metadata !DIExpression()), !dbg !1027, !psr.id !1334
  %127 = and i64 %125, 67108863, !dbg !1335, !psr.id !1336
  call void @llvm.dbg.value(metadata i64 %127, metadata !1122, metadata !DIExpression()), !dbg !1027, !psr.id !1337
  %128 = add i64 %116, %126, !dbg !1338, !psr.id !1339
  call void @llvm.dbg.value(metadata i64 %128, metadata !1302, metadata !DIExpression()), !dbg !1027, !psr.id !1340
  %129 = lshr i64 %128, 26, !dbg !1341, !psr.id !1342
  call void @llvm.dbg.value(metadata i64 %129, metadata !1306, metadata !DIExpression()), !dbg !1027, !psr.id !1343
  %130 = and i64 %128, 67108863, !dbg !1344, !psr.id !1345
  call void @llvm.dbg.value(metadata i64 %130, metadata !1129, metadata !DIExpression()), !dbg !1027, !psr.id !1346
  %131 = mul i64 %129, 5, !dbg !1347, !psr.id !1348
  %132 = add i64 %118, %131, !dbg !1349, !psr.id !1350
  call void @llvm.dbg.value(metadata i64 %132, metadata !1101, metadata !DIExpression()), !dbg !1027, !psr.id !1351
  %133 = lshr i64 %132, 26, !dbg !1352, !psr.id !1353
  call void @llvm.dbg.value(metadata i64 %133, metadata !1306, metadata !DIExpression()), !dbg !1027, !psr.id !1354
  %134 = and i64 %132, 67108863, !dbg !1355, !psr.id !1356
  call void @llvm.dbg.value(metadata i64 %134, metadata !1101, metadata !DIExpression()), !dbg !1027, !psr.id !1357
  %135 = add i64 %121, %133, !dbg !1358, !psr.id !1359
  call void @llvm.dbg.value(metadata i64 %135, metadata !1108, metadata !DIExpression()), !dbg !1027, !psr.id !1360
  %136 = getelementptr inbounds i8, i8* %.01, i64 16, !dbg !1361, !psr.id !1362
  call void @llvm.dbg.value(metadata i8* %136, metadata !1029, metadata !DIExpression()), !dbg !1027, !psr.id !1363
  %137 = sub i64 %.02, 16, !dbg !1364, !psr.id !1365
  call void @llvm.dbg.value(metadata i64 %137, metadata !1031, metadata !DIExpression()), !dbg !1027, !psr.id !1366
  br label %45, !dbg !1131, !llvm.loop !1367, !psr.id !1369

138:                                              ; preds = %45
  %139 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !1370, !psr.id !1371
  %140 = getelementptr inbounds [5 x i64], [5 x i64]* %139, i64 0, i64 0, !dbg !1372, !psr.id !1373
  store i64 %.06, i64* %140, align 8, !dbg !1374, !psr.id !1375
  %141 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !1376, !psr.id !1377
  %142 = getelementptr inbounds [5 x i64], [5 x i64]* %141, i64 0, i64 1, !dbg !1378, !psr.id !1379
  store i64 %.05, i64* %142, align 8, !dbg !1380, !psr.id !1381
  %143 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !1382, !psr.id !1383
  %144 = getelementptr inbounds [5 x i64], [5 x i64]* %143, i64 0, i64 2, !dbg !1384, !psr.id !1385
  store i64 %.04, i64* %144, align 8, !dbg !1386, !psr.id !1387
  %145 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !1388, !psr.id !1389
  %146 = getelementptr inbounds [5 x i64], [5 x i64]* %145, i64 0, i64 3, !dbg !1390, !psr.id !1391
  store i64 %.03, i64* %146, align 8, !dbg !1392, !psr.id !1393
  %147 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !1394, !psr.id !1395
  %148 = getelementptr inbounds [5 x i64], [5 x i64]* %147, i64 0, i64 4, !dbg !1396, !psr.id !1397
  store i64 %.0, i64* %148, align 8, !dbg !1398, !psr.id !1399
  ret void, !dbg !1400, !psr.id !1401
}

; Function Attrs: noinline nounwind uwtable
define internal void @U32TO8(i8* %0, i64 %1) #0 !dbg !1402 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1405, metadata !DIExpression()), !dbg !1406, !psr.id !1407
  call void @llvm.dbg.value(metadata i64 %1, metadata !1408, metadata !DIExpression()), !dbg !1406, !psr.id !1409
  %3 = and i64 %1, 255, !dbg !1410, !psr.id !1411
  %4 = trunc i64 %3 to i8, !dbg !1412, !psr.id !1413
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1414, !psr.id !1415
  store i8 %4, i8* %5, align 1, !dbg !1416, !psr.id !1417
  %6 = lshr i64 %1, 8, !dbg !1418, !psr.id !1419
  %7 = and i64 %6, 255, !dbg !1420, !psr.id !1421
  %8 = trunc i64 %7 to i8, !dbg !1422, !psr.id !1423
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1424, !psr.id !1425
  store i8 %8, i8* %9, align 1, !dbg !1426, !psr.id !1427
  %10 = lshr i64 %1, 16, !dbg !1428, !psr.id !1429
  %11 = and i64 %10, 255, !dbg !1430, !psr.id !1431
  %12 = trunc i64 %11 to i8, !dbg !1432, !psr.id !1433
  %13 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1434, !psr.id !1435
  store i8 %12, i8* %13, align 1, !dbg !1436, !psr.id !1437
  %14 = lshr i64 %1, 24, !dbg !1438, !psr.id !1439
  %15 = and i64 %14, 255, !dbg !1440, !psr.id !1441
  %16 = trunc i64 %15 to i8, !dbg !1442, !psr.id !1443
  %17 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1444, !psr.id !1445
  store i8 %16, i8* %17, align 1, !dbg !1446, !psr.id !1447
  ret void, !dbg !1448, !psr.id !1449
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @U8TO32(i8* %0) #0 !dbg !1450 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1453, metadata !DIExpression()), !dbg !1454, !psr.id !1455
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1456, !psr.id !1457
  %3 = load i8, i8* %2, align 1, !dbg !1456, !psr.id !1458
  %4 = zext i8 %3 to i32, !dbg !1456, !psr.id !1459
  %5 = and i32 %4, 255, !dbg !1460, !psr.id !1461
  %6 = sext i32 %5 to i64, !dbg !1462, !psr.id !1463
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1464, !psr.id !1465
  %8 = load i8, i8* %7, align 1, !dbg !1464, !psr.id !1466
  %9 = zext i8 %8 to i32, !dbg !1464, !psr.id !1467
  %10 = and i32 %9, 255, !dbg !1468, !psr.id !1469
  %11 = sext i32 %10 to i64, !dbg !1470, !psr.id !1471
  %12 = shl i64 %11, 8, !dbg !1472, !psr.id !1473
  %13 = or i64 %6, %12, !dbg !1474, !psr.id !1475
  %14 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1476, !psr.id !1477
  %15 = load i8, i8* %14, align 1, !dbg !1476, !psr.id !1478
  %16 = zext i8 %15 to i32, !dbg !1476, !psr.id !1479
  %17 = and i32 %16, 255, !dbg !1480, !psr.id !1481
  %18 = sext i32 %17 to i64, !dbg !1482, !psr.id !1483
  %19 = shl i64 %18, 16, !dbg !1484, !psr.id !1485
  %20 = or i64 %13, %19, !dbg !1486, !psr.id !1487
  %21 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1488, !psr.id !1489
  %22 = load i8, i8* %21, align 1, !dbg !1488, !psr.id !1490
  %23 = zext i8 %22 to i32, !dbg !1488, !psr.id !1491
  %24 = and i32 %23, 255, !dbg !1492, !psr.id !1493
  %25 = sext i32 %24 to i64, !dbg !1494, !psr.id !1495
  %26 = shl i64 %25, 24, !dbg !1496, !psr.id !1497
  %27 = or i64 %20, %26, !dbg !1498, !psr.id !1499
  ret i64 %27, !dbg !1500, !psr.id !1501
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !1502 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !1505, metadata !DIExpression()), !dbg !1506, !psr.id !1507
  call void @llvm.dbg.value(metadata i8* %1, metadata !1508, metadata !DIExpression()), !dbg !1506, !psr.id !1509
  call void @llvm.dbg.value(metadata i64 %2, metadata !1510, metadata !DIExpression()), !dbg !1506, !psr.id !1511
  %4 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !1512, !psr.id !1513
  %5 = bitcast i8* %4 to %struct.poly1305_state_internal_t*, !dbg !1514, !psr.id !1515
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %5, metadata !1516, metadata !DIExpression()), !dbg !1506, !psr.id !1517
  %6 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1518, !psr.id !1520
  %7 = load i64, i64* %6, align 8, !dbg !1518, !psr.id !1521
  %8 = icmp ne i64 %7, 0, !dbg !1522, !psr.id !1523
  br i1 %8, label %9, label %42, !dbg !1524, !psr.id !1525

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1526, !psr.id !1528
  %11 = load i64, i64* %10, align 8, !dbg !1526, !psr.id !1529
  %12 = sub i64 16, %11, !dbg !1530, !psr.id !1531
  call void @llvm.dbg.value(metadata i64 %12, metadata !1532, metadata !DIExpression()), !dbg !1533, !psr.id !1534
  %13 = icmp ugt i64 %12, %2, !dbg !1535, !psr.id !1537
  br i1 %13, label %14, label %15, !dbg !1538, !psr.id !1539

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i64 %2, metadata !1532, metadata !DIExpression()), !dbg !1533, !psr.id !1540
  br label %15, !dbg !1541, !psr.id !1542

15:                                               ; preds = %14, %9
  %.0 = phi i64 [ %2, %14 ], [ %12, %9 ], !dbg !1533, !psr.id !1543
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1532, metadata !DIExpression()), !dbg !1533, !psr.id !1544
  call void @llvm.dbg.value(metadata i64 0, metadata !1545, metadata !DIExpression()), !dbg !1506, !psr.id !1546
  br label %16, !dbg !1547, !psr.id !1549

16:                                               ; preds = %26, %15
  %.04 = phi i64 [ 0, %15 ], [ %27, %26 ], !dbg !1550, !psr.id !1551
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1545, metadata !DIExpression()), !dbg !1506, !psr.id !1552
  %17 = icmp ult i64 %.04, %.0, !dbg !1553, !psr.id !1555
  br i1 %17, label %18, label %28, !dbg !1556, !psr.id !1557

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %1, i64 %.04, !dbg !1558, !psr.id !1559
  %20 = load i8, i8* %19, align 1, !dbg !1558, !psr.id !1560
  %21 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !1561, !psr.id !1562
  %22 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1563, !psr.id !1564
  %23 = load i64, i64* %22, align 8, !dbg !1563, !psr.id !1565
  %24 = add i64 %23, %.04, !dbg !1566, !psr.id !1567
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 %24, !dbg !1568, !psr.id !1569
  store i8 %20, i8* %25, align 1, !dbg !1570, !psr.id !1571
  br label %26, !dbg !1568, !psr.id !1572

26:                                               ; preds = %18
  %27 = add i64 %.04, 1, !dbg !1573, !psr.id !1574
  call void @llvm.dbg.value(metadata i64 %27, metadata !1545, metadata !DIExpression()), !dbg !1506, !psr.id !1575
  br label %16, !dbg !1576, !llvm.loop !1577, !psr.id !1579

28:                                               ; preds = %16
  %29 = sub i64 %2, %.0, !dbg !1580, !psr.id !1581
  call void @llvm.dbg.value(metadata i64 %29, metadata !1510, metadata !DIExpression()), !dbg !1506, !psr.id !1582
  %30 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !1583, !psr.id !1584
  call void @llvm.dbg.value(metadata i8* %30, metadata !1508, metadata !DIExpression()), !dbg !1506, !psr.id !1585
  %31 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1586, !psr.id !1587
  %32 = load i64, i64* %31, align 8, !dbg !1588, !psr.id !1589
  %33 = add i64 %32, %.0, !dbg !1588, !psr.id !1590
  store i64 %33, i64* %31, align 8, !dbg !1588, !psr.id !1591
  %34 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1592, !psr.id !1594
  %35 = load i64, i64* %34, align 8, !dbg !1592, !psr.id !1595
  %36 = icmp ult i64 %35, 16, !dbg !1596, !psr.id !1597
  br i1 %36, label %37, label %38, !dbg !1598, !psr.id !1599

37:                                               ; preds = %28
  br label %67, !dbg !1600, !psr.id !1601

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !1602, !psr.id !1603
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %39, i64 0, i64 0, !dbg !1604, !psr.id !1605
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %5, i8* %40, i64 16), !dbg !1606, !psr.id !1607
  %41 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1608, !psr.id !1609
  store i64 0, i64* %41, align 8, !dbg !1610, !psr.id !1611
  br label %42, !dbg !1612, !psr.id !1613

42:                                               ; preds = %38, %3
  %.02 = phi i64 [ %29, %38 ], [ %2, %3 ], !psr.id !1614
  %.01 = phi i8* [ %30, %38 ], [ %1, %3 ], !psr.id !1615
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1508, metadata !DIExpression()), !dbg !1506, !psr.id !1616
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1510, metadata !DIExpression()), !dbg !1506, !psr.id !1617
  %43 = icmp uge i64 %.02, 16, !dbg !1618, !psr.id !1620
  br i1 %43, label %44, label %48, !dbg !1621, !psr.id !1622

44:                                               ; preds = %42
  %45 = and i64 %.02, -16, !dbg !1623, !psr.id !1625
  call void @llvm.dbg.value(metadata i64 %45, metadata !1626, metadata !DIExpression()), !dbg !1627, !psr.id !1628
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %5, i8* %.01, i64 %45), !dbg !1629, !psr.id !1630
  %46 = getelementptr inbounds i8, i8* %.01, i64 %45, !dbg !1631, !psr.id !1632
  call void @llvm.dbg.value(metadata i8* %46, metadata !1508, metadata !DIExpression()), !dbg !1506, !psr.id !1633
  %47 = sub i64 %.02, %45, !dbg !1634, !psr.id !1635
  call void @llvm.dbg.value(metadata i64 %47, metadata !1510, metadata !DIExpression()), !dbg !1506, !psr.id !1636
  br label %48, !dbg !1637, !psr.id !1638

48:                                               ; preds = %44, %42
  %.13 = phi i64 [ %47, %44 ], [ %.02, %42 ], !dbg !1506, !psr.id !1639
  %.1 = phi i8* [ %46, %44 ], [ %.01, %42 ], !dbg !1506, !psr.id !1640
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1508, metadata !DIExpression()), !dbg !1506, !psr.id !1641
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1510, metadata !DIExpression()), !dbg !1506, !psr.id !1642
  %49 = icmp ne i64 %.13, 0, !dbg !1643, !psr.id !1645
  br i1 %49, label %50, label %67, !dbg !1646, !psr.id !1647

50:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i64 0, metadata !1545, metadata !DIExpression()), !dbg !1506, !psr.id !1648
  br label %51, !dbg !1649, !psr.id !1652

51:                                               ; preds = %61, %50
  %.15 = phi i64 [ 0, %50 ], [ %62, %61 ], !dbg !1653, !psr.id !1654
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1545, metadata !DIExpression()), !dbg !1506, !psr.id !1655
  %52 = icmp ult i64 %.15, %.13, !dbg !1656, !psr.id !1658
  br i1 %52, label %53, label %63, !dbg !1659, !psr.id !1660

53:                                               ; preds = %51
  %54 = getelementptr inbounds i8, i8* %.1, i64 %.15, !dbg !1661, !psr.id !1662
  %55 = load i8, i8* %54, align 1, !dbg !1661, !psr.id !1663
  %56 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !1664, !psr.id !1665
  %57 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1666, !psr.id !1667
  %58 = load i64, i64* %57, align 8, !dbg !1666, !psr.id !1668
  %59 = add i64 %58, %.15, !dbg !1669, !psr.id !1670
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %56, i64 0, i64 %59, !dbg !1671, !psr.id !1672
  store i8 %55, i8* %60, align 1, !dbg !1673, !psr.id !1674
  br label %61, !dbg !1671, !psr.id !1675

61:                                               ; preds = %53
  %62 = add i64 %.15, 1, !dbg !1676, !psr.id !1677
  call void @llvm.dbg.value(metadata i64 %62, metadata !1545, metadata !DIExpression()), !dbg !1506, !psr.id !1678
  br label %51, !dbg !1679, !llvm.loop !1680, !psr.id !1682

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1683, !psr.id !1684
  %65 = load i64, i64* %64, align 8, !dbg !1685, !psr.id !1686
  %66 = add i64 %65, %.13, !dbg !1685, !psr.id !1687
  store i64 %66, i64* %64, align 8, !dbg !1685, !psr.id !1688
  br label %67, !dbg !1689, !psr.id !1690

67:                                               ; preds = %63, %48, %37
  ret void, !dbg !1691, !psr.id !1692
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !1693 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !1696, metadata !DIExpression()), !dbg !1697, !psr.id !1698
  call void @llvm.dbg.value(metadata i8* %1, metadata !1699, metadata !DIExpression()), !dbg !1697, !psr.id !1700
  %3 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !1701, !psr.id !1702
  %4 = bitcast i8* %3 to %struct.poly1305_state_internal_t*, !dbg !1703, !psr.id !1704
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %4, metadata !1705, metadata !DIExpression()), !dbg !1697, !psr.id !1706
  %5 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1707, !psr.id !1708
  %6 = call i64 @U8TO32(i8* %5), !dbg !1709, !psr.id !1710
  %7 = and i64 %6, 67108863, !dbg !1711, !psr.id !1712
  %8 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !1713, !psr.id !1714
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1715, !psr.id !1716
  store i64 %7, i64* %9, align 8, !dbg !1717, !psr.id !1718
  %10 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !1719, !psr.id !1720
  %11 = call i64 @U8TO32(i8* %10), !dbg !1721, !psr.id !1722
  %12 = lshr i64 %11, 2, !dbg !1723, !psr.id !1724
  %13 = and i64 %12, 67108611, !dbg !1725, !psr.id !1726
  %14 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !1727, !psr.id !1728
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 1, !dbg !1729, !psr.id !1730
  store i64 %13, i64* %15, align 8, !dbg !1731, !psr.id !1732
  %16 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !1733, !psr.id !1734
  %17 = call i64 @U8TO32(i8* %16), !dbg !1735, !psr.id !1736
  %18 = lshr i64 %17, 4, !dbg !1737, !psr.id !1738
  %19 = and i64 %18, 67092735, !dbg !1739, !psr.id !1740
  %20 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !1741, !psr.id !1742
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 2, !dbg !1743, !psr.id !1744
  store i64 %19, i64* %21, align 8, !dbg !1745, !psr.id !1746
  %22 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !1747, !psr.id !1748
  %23 = call i64 @U8TO32(i8* %22), !dbg !1749, !psr.id !1750
  %24 = lshr i64 %23, 6, !dbg !1751, !psr.id !1752
  %25 = and i64 %24, 66076671, !dbg !1753, !psr.id !1754
  %26 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !1755, !psr.id !1756
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 3, !dbg !1757, !psr.id !1758
  store i64 %25, i64* %27, align 8, !dbg !1759, !psr.id !1760
  %28 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1761, !psr.id !1762
  %29 = call i64 @U8TO32(i8* %28), !dbg !1763, !psr.id !1764
  %30 = lshr i64 %29, 8, !dbg !1765, !psr.id !1766
  %31 = and i64 %30, 1048575, !dbg !1767, !psr.id !1768
  %32 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !1769, !psr.id !1770
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 4, !dbg !1771, !psr.id !1772
  store i64 %31, i64* %33, align 8, !dbg !1773, !psr.id !1774
  %34 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !1775, !psr.id !1776
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %34, i64 0, i64 0, !dbg !1777, !psr.id !1778
  store i64 0, i64* %35, align 8, !dbg !1779, !psr.id !1780
  %36 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !1781, !psr.id !1782
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %36, i64 0, i64 1, !dbg !1783, !psr.id !1784
  store i64 0, i64* %37, align 8, !dbg !1785, !psr.id !1786
  %38 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !1787, !psr.id !1788
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %38, i64 0, i64 2, !dbg !1789, !psr.id !1790
  store i64 0, i64* %39, align 8, !dbg !1791, !psr.id !1792
  %40 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !1793, !psr.id !1794
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %40, i64 0, i64 3, !dbg !1795, !psr.id !1796
  store i64 0, i64* %41, align 8, !dbg !1797, !psr.id !1798
  %42 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !1799, !psr.id !1800
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 4, !dbg !1801, !psr.id !1802
  store i64 0, i64* %43, align 8, !dbg !1803, !psr.id !1804
  %44 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1805, !psr.id !1806
  %45 = call i64 @U8TO32(i8* %44), !dbg !1807, !psr.id !1808
  %46 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !1809, !psr.id !1810
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %46, i64 0, i64 0, !dbg !1811, !psr.id !1812
  store i64 %45, i64* %47, align 8, !dbg !1813, !psr.id !1814
  %48 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1815, !psr.id !1816
  %49 = call i64 @U8TO32(i8* %48), !dbg !1817, !psr.id !1818
  %50 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !1819, !psr.id !1820
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %50, i64 0, i64 1, !dbg !1821, !psr.id !1822
  store i64 %49, i64* %51, align 8, !dbg !1823, !psr.id !1824
  %52 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1825, !psr.id !1826
  %53 = call i64 @U8TO32(i8* %52), !dbg !1827, !psr.id !1828
  %54 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !1829, !psr.id !1830
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %54, i64 0, i64 2, !dbg !1831, !psr.id !1832
  store i64 %53, i64* %55, align 8, !dbg !1833, !psr.id !1834
  %56 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !1835, !psr.id !1836
  %57 = call i64 @U8TO32(i8* %56), !dbg !1837, !psr.id !1838
  %58 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !1839, !psr.id !1840
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %58, i64 0, i64 3, !dbg !1841, !psr.id !1842
  store i64 %57, i64* %59, align 8, !dbg !1843, !psr.id !1844
  %60 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !1845, !psr.id !1846
  store i64 0, i64* %60, align 8, !dbg !1847, !psr.id !1848
  %61 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 5, !dbg !1849, !psr.id !1850
  store i8 0, i8* %61, align 8, !dbg !1851, !psr.id !1852
  ret void, !dbg !1853, !psr.id !1854
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_aead_chacha20poly1305_decrypt_wrapper(i8* %0, i64* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 !dbg !1855 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1858, metadata !DIExpression()), !dbg !1859, !psr.id !1860
  call void @llvm.dbg.value(metadata i64* %1, metadata !1861, metadata !DIExpression()), !dbg !1859, !psr.id !1862
  call void @llvm.dbg.value(metadata i8* %2, metadata !1863, metadata !DIExpression()), !dbg !1859, !psr.id !1864
  call void @llvm.dbg.value(metadata i8* %3, metadata !1865, metadata !DIExpression()), !dbg !1859, !psr.id !1866
  call void @llvm.dbg.value(metadata i8* %4, metadata !1867, metadata !DIExpression()), !dbg !1859, !psr.id !1868
  call void @llvm.dbg.value(metadata i8* %5, metadata !1869, metadata !DIExpression()), !dbg !1859, !psr.id !1870
  call void @llvm.dbg.value(metadata i8* %6, metadata !1871, metadata !DIExpression()), !dbg !1859, !psr.id !1872
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1873, !psr.id !1874
  call void @public_in(%struct.smack_value* %8), !dbg !1875, !psr.id !1876
  %9 = call %struct.smack_value* (i64*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64*, ...)*)(i64* %1), !dbg !1877, !psr.id !1878
  call void @public_in(%struct.smack_value* %9), !dbg !1879, !psr.id !1880
  %10 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1881, !psr.id !1882
  call void @public_in(%struct.smack_value* %10), !dbg !1883, !psr.id !1884
  %11 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !1885, !psr.id !1886
  call void @public_in(%struct.smack_value* %11), !dbg !1887, !psr.id !1888
  %12 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %4), !dbg !1889, !psr.id !1890
  call void @public_in(%struct.smack_value* %12), !dbg !1891, !psr.id !1892
  %13 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %5), !dbg !1893, !psr.id !1894
  call void @public_in(%struct.smack_value* %13), !dbg !1895, !psr.id !1896
  %14 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %6), !dbg !1897, !psr.id !1898
  call void @public_in(%struct.smack_value* %14), !dbg !1899, !psr.id !1900
  %15 = call %struct.smack_value* @__SMACK_values(i8* %3, i32 32), !dbg !1901, !psr.id !1902
  call void @public_in(%struct.smack_value* %15), !dbg !1903, !psr.id !1904
  %16 = call %struct.smack_value* @__SMACK_values(i8* %4, i32 32), !dbg !1905, !psr.id !1906
  call void @public_in(%struct.smack_value* %16), !dbg !1907, !psr.id !1908
  %17 = call %struct.smack_value* @__SMACK_values(i8* %5, i32 8), !dbg !1909, !psr.id !1910
  call void @public_in(%struct.smack_value* %17), !dbg !1911, !psr.id !1912
  %18 = bitcast i64* %1 to i8*, !dbg !1913, !psr.id !1914
  %19 = call %struct.smack_value* @__SMACK_values(i8* %18, i32 1), !dbg !1915, !psr.id !1916
  call void @public_in(%struct.smack_value* %19), !dbg !1917, !psr.id !1918
  %20 = call i32 @crypto_aead_chacha20poly1305_decrypt(i8* %0, i64* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i8* %6), !dbg !1919, !psr.id !1920
  ret i32 %20, !dbg !1921, !psr.id !1922
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #3

declare dso_local void @public_in(%struct.smack_value*) #3

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @vfct_tmp(i8* %0, i64* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 !dbg !1923 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1926, metadata !DIExpression()), !dbg !1927, !psr.id !1928
  call void @llvm.dbg.value(metadata i64* %1, metadata !1929, metadata !DIExpression()), !dbg !1927, !psr.id !1930
  call void @llvm.dbg.value(metadata i8* %2, metadata !1931, metadata !DIExpression()), !dbg !1927, !psr.id !1932
  call void @llvm.dbg.value(metadata i8* %3, metadata !1933, metadata !DIExpression()), !dbg !1927, !psr.id !1934
  call void @llvm.dbg.value(metadata i8* %4, metadata !1935, metadata !DIExpression()), !dbg !1927, !psr.id !1936
  call void @llvm.dbg.value(metadata i8* %5, metadata !1937, metadata !DIExpression()), !dbg !1927, !psr.id !1938
  call void @llvm.dbg.value(metadata i8* %6, metadata !1939, metadata !DIExpression()), !dbg !1927, !psr.id !1940
  %8 = call i32 @crypto_aead_chacha20poly1305_decrypt(i8* %0, i64* %1, i8* %2, i8* %3, i64 32, i8* %4, i64 32, i8* %5, i8* %6), !dbg !1941, !psr.id !1942
  ret void, !dbg !1943, !psr.id !1944
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_aead_chacha20poly1305_decrypt_wrapper_t() #0 !dbg !1945 {
  %1 = alloca i8, align 1, !psr.id !1946
  %2 = alloca i8, align 1, !psr.id !1947
  %3 = alloca i8, align 1, !psr.id !1948
  %4 = alloca i8, align 1, !psr.id !1949
  %5 = alloca i8, align 1, !psr.id !1950
  %6 = alloca i8, align 1, !psr.id !1951
  %7 = alloca i64, align 8, !psr.id !1952
  call void @llvm.dbg.declare(metadata i8* %1, metadata !1953, metadata !DIExpression()), !dbg !1954, !psr.id !1955
  %8 = call zeroext i8 (...) @gout(), !dbg !1956, !psr.id !1957
  store i8 %8, i8* %1, align 1, !dbg !1954, !psr.id !1958
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1959, metadata !DIExpression()), !dbg !1960, !psr.id !1961
  %9 = call zeroext i8 (...) @gin(), !dbg !1962, !psr.id !1963
  store i8 %9, i8* %2, align 1, !dbg !1960, !psr.id !1964
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1965, metadata !DIExpression()), !dbg !1966, !psr.id !1967
  %10 = call zeroext i8 (...) @gk(), !dbg !1968, !psr.id !1969
  store i8 %10, i8* %3, align 1, !dbg !1966, !psr.id !1970
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1971, metadata !DIExpression()), !dbg !1972, !psr.id !1973
  %11 = call zeroext i8 (...) @gc(), !dbg !1974, !psr.id !1975
  store i8 %11, i8* %4, align 1, !dbg !1972, !psr.id !1976
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1977, metadata !DIExpression()), !dbg !1978, !psr.id !1979
  %12 = call zeroext i8 (...) @gsec(), !dbg !1980, !psr.id !1981
  store i8 %12, i8* %5, align 1, !dbg !1978, !psr.id !1982
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1983, metadata !DIExpression()), !dbg !1984, !psr.id !1985
  %13 = call zeroext i8 (...) @gkk(), !dbg !1986, !psr.id !1987
  store i8 %13, i8* %6, align 1, !dbg !1984, !psr.id !1988
  call void @llvm.dbg.value(metadata i8* %5, metadata !1989, metadata !DIExpression()), !dbg !1990, !psr.id !1991
  call void @llvm.dbg.value(metadata i8* %1, metadata !1992, metadata !DIExpression()), !dbg !1990, !psr.id !1993
  call void @llvm.dbg.value(metadata i8* %2, metadata !1994, metadata !DIExpression()), !dbg !1990, !psr.id !1995
  call void @llvm.dbg.value(metadata i8* %3, metadata !1996, metadata !DIExpression()), !dbg !1990, !psr.id !1997
  call void @llvm.dbg.value(metadata i8* %4, metadata !1998, metadata !DIExpression()), !dbg !1990, !psr.id !1999
  call void @llvm.dbg.declare(metadata i64* %7, metadata !2000, metadata !DIExpression()), !dbg !2001, !psr.id !2002
  %14 = call i64* (...) @gclen(), !dbg !2003, !psr.id !2004
  %15 = ptrtoint i64* %14 to i64, !dbg !2003, !psr.id !2005
  store i64 %15, i64* %7, align 8, !dbg !2001, !psr.id !2006
  call void @llvm.dbg.value(metadata i64* %7, metadata !2007, metadata !DIExpression()), !dbg !1990, !psr.id !2008
  call void @llvm.dbg.value(metadata i8* %6, metadata !2009, metadata !DIExpression()), !dbg !1990, !psr.id !2010
  call void @vfct_tmp(i8* %2, i64* %7, i8* %5, i8* %1, i8* %3, i8* %4, i8* %6), !dbg !2011, !psr.id !2012
  ret void, !dbg !2013, !psr.id !2014
}

declare dso_local zeroext i8 @gout(...) #3

declare dso_local zeroext i8 @gin(...) #3

declare dso_local zeroext i8 @gk(...) #3

declare dso_local zeroext i8 @gc(...) #3

declare dso_local zeroext i8 @gsec(...) #3

declare dso_local zeroext i8 @gkk(...) #3

declare dso_local i64* @gclen(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_onetimeauth_statebytes() #0 !dbg !2015 {
  ret i64 144, !dbg !2016, !psr.id !2017
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_onetimeauth_bytes() #0 !dbg !2018 {
  ret i64 16, !dbg !2019, !psr.id !2020
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_onetimeauth_keybytes() #0 !dbg !2021 {
  ret i64 32, !dbg !2022, !psr.id !2023
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !2024 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2025, metadata !DIExpression()), !dbg !2026, !psr.id !2027
  call void @llvm.dbg.value(metadata i8* %1, metadata !2028, metadata !DIExpression()), !dbg !2026, !psr.id !2029
  call void @llvm.dbg.value(metadata i64 %2, metadata !2030, metadata !DIExpression()), !dbg !2026, !psr.id !2031
  call void @llvm.dbg.value(metadata i8* %3, metadata !2032, metadata !DIExpression()), !dbg !2026, !psr.id !2033
  %5 = call i32 @crypto_onetimeauth_poly1305(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !2034, !psr.id !2035
  ret i32 %5, !dbg !2036, !psr.id !2037
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_verify(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !2038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2039, metadata !DIExpression()), !dbg !2040, !psr.id !2041
  call void @llvm.dbg.value(metadata i8* %1, metadata !2042, metadata !DIExpression()), !dbg !2040, !psr.id !2043
  call void @llvm.dbg.value(metadata i64 %2, metadata !2044, metadata !DIExpression()), !dbg !2040, !psr.id !2045
  call void @llvm.dbg.value(metadata i8* %3, metadata !2046, metadata !DIExpression()), !dbg !2040, !psr.id !2047
  %5 = call i32 @crypto_onetimeauth_poly1305_verify(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !2048, !psr.id !2049
  ret i32 %5, !dbg !2050, !psr.id !2051
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !2052 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !2058, metadata !DIExpression()), !dbg !2059, !psr.id !2060
  call void @llvm.dbg.value(metadata i8* %1, metadata !2061, metadata !DIExpression()), !dbg !2059, !psr.id !2062
  %3 = call i32 @crypto_onetimeauth_poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !2063, !psr.id !2064
  ret i32 %3, !dbg !2065, !psr.id !2066
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !2067 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !2070, metadata !DIExpression()), !dbg !2071, !psr.id !2072
  call void @llvm.dbg.value(metadata i8* %1, metadata !2073, metadata !DIExpression()), !dbg !2071, !psr.id !2074
  call void @llvm.dbg.value(metadata i64 %2, metadata !2075, metadata !DIExpression()), !dbg !2071, !psr.id !2076
  %4 = call i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2), !dbg !2077, !psr.id !2078
  ret i32 %4, !dbg !2079, !psr.id !2080
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_final(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !2081 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !2084, metadata !DIExpression()), !dbg !2085, !psr.id !2086
  call void @llvm.dbg.value(metadata i8* %1, metadata !2087, metadata !DIExpression()), !dbg !2085, !psr.id !2088
  %3 = call i32 @crypto_onetimeauth_poly1305_final(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !2089, !psr.id !2090
  ret i32 %3, !dbg !2091, !psr.id !2092
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @crypto_onetimeauth_primitive() #0 !dbg !2093 {
  %1 = getelementptr inbounds [9 x i8], [9 x i8]* @.str.1, i64 0, i64 0, !psr.id !2094
  ret i8* %1, !dbg !2095, !psr.id !2096
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_set_implementation(%struct.crypto_onetimeauth_poly1305_implementation* %0) #0 !dbg !2097 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_implementation* %0, metadata !2101, metadata !DIExpression()), !dbg !2102, !psr.id !2103
  store %struct.crypto_onetimeauth_poly1305_implementation* %0, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !2104, !psr.id !2105
  ret i32 0, !dbg !2106, !psr.id !2107
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @crypto_onetimeauth_poly1305_implementation_name() #0 !dbg !2108 {
  %1 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !2109, !psr.id !2110
  %2 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %1, i32 0, i32 0, !dbg !2111, !psr.id !2112
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !2111, !psr.id !2113
  %4 = call i8* %3(), !dbg !2109, !psr.id !2114
  ret i8* %4, !dbg !2115, !psr.id !2116
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !2117 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2118, metadata !DIExpression()), !dbg !2119, !psr.id !2120
  call void @llvm.dbg.value(metadata i8* %1, metadata !2121, metadata !DIExpression()), !dbg !2119, !psr.id !2122
  call void @llvm.dbg.value(metadata i64 %2, metadata !2123, metadata !DIExpression()), !dbg !2119, !psr.id !2124
  call void @llvm.dbg.value(metadata i8* %3, metadata !2125, metadata !DIExpression()), !dbg !2119, !psr.id !2126
  %5 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !2127, !psr.id !2128
  %6 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %5, i32 0, i32 1, !dbg !2129, !psr.id !2130
  %7 = load i32 (i8*, i8*, i64, i8*)*, i32 (i8*, i8*, i64, i8*)** %6, align 8, !dbg !2129, !psr.id !2131
  %8 = call i32 %7(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !2127, !psr.id !2132
  ret i32 %8, !dbg !2133, !psr.id !2134
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_verify(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !2135 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2136, metadata !DIExpression()), !dbg !2137, !psr.id !2138
  call void @llvm.dbg.value(metadata i8* %1, metadata !2139, metadata !DIExpression()), !dbg !2137, !psr.id !2140
  call void @llvm.dbg.value(metadata i64 %2, metadata !2141, metadata !DIExpression()), !dbg !2137, !psr.id !2142
  call void @llvm.dbg.value(metadata i8* %3, metadata !2143, metadata !DIExpression()), !dbg !2137, !psr.id !2144
  %5 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !2145, !psr.id !2146
  %6 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %5, i32 0, i32 2, !dbg !2147, !psr.id !2148
  %7 = load i32 (i8*, i8*, i64, i8*)*, i32 (i8*, i8*, i64, i8*)** %6, align 8, !dbg !2147, !psr.id !2149
  %8 = call i32 %7(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !2145, !psr.id !2150
  ret i32 %8, !dbg !2151, !psr.id !2152
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !2153 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !2154, metadata !DIExpression()), !dbg !2155, !psr.id !2156
  call void @llvm.dbg.value(metadata i8* %1, metadata !2157, metadata !DIExpression()), !dbg !2155, !psr.id !2158
  %3 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !2159, !psr.id !2160
  %4 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %3, i32 0, i32 3, !dbg !2161, !psr.id !2162
  %5 = load i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)*, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)** %4, align 8, !dbg !2161, !psr.id !2163
  %6 = call i32 %5(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !2159, !psr.id !2164
  ret i32 %6, !dbg !2165, !psr.id !2166
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !2167 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !2168, metadata !DIExpression()), !dbg !2169, !psr.id !2170
  call void @llvm.dbg.value(metadata i8* %1, metadata !2171, metadata !DIExpression()), !dbg !2169, !psr.id !2172
  call void @llvm.dbg.value(metadata i64 %2, metadata !2173, metadata !DIExpression()), !dbg !2169, !psr.id !2174
  %4 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !2175, !psr.id !2176
  %5 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %4, i32 0, i32 4, !dbg !2177, !psr.id !2178
  %6 = load i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*, i64)*, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*, i64)** %5, align 8, !dbg !2177, !psr.id !2179
  %7 = call i32 %6(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2), !dbg !2175, !psr.id !2180
  ret i32 %7, !dbg !2181, !psr.id !2182
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_final(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !2183 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !2184, metadata !DIExpression()), !dbg !2185, !psr.id !2186
  call void @llvm.dbg.value(metadata i8* %1, metadata !2187, metadata !DIExpression()), !dbg !2185, !psr.id !2188
  %3 = load %struct.crypto_onetimeauth_poly1305_implementation*, %struct.crypto_onetimeauth_poly1305_implementation** @implementation, align 8, !dbg !2189, !psr.id !2190
  %4 = getelementptr inbounds %struct.crypto_onetimeauth_poly1305_implementation, %struct.crypto_onetimeauth_poly1305_implementation* %3, i32 0, i32 5, !dbg !2191, !psr.id !2192
  %5 = load i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)*, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)** %4, align 8, !dbg !2191, !psr.id !2193
  %6 = call i32 %5(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !2189, !psr.id !2194
  ret i32 %6, !dbg !2195, !psr.id !2196
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !2197 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !2201, metadata !DIExpression()), !dbg !2202, !psr.id !2203
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2204, !psr.id !2205
  ret i32 0, !dbg !2206, !psr.id !2207
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !2208 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2209, !psr.id !2210
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !2211, !psr.id !2212
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !2211, !psr.id !2213
  %4 = call i8* %3(), !dbg !2209, !psr.id !2214
  ret i8* %4, !dbg !2215, !psr.id !2216
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !2217 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2218, !psr.id !2219
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !2220, !psr.id !2221
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !2220, !psr.id !2222
  %4 = call i32 %3(), !dbg !2218, !psr.id !2223
  ret i32 %4, !dbg !2224, !psr.id !2225
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !2226 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2227, !psr.id !2229
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !2230, !psr.id !2231
  br i1 %2, label %3, label %12, !dbg !2232, !psr.id !2233

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2234, !psr.id !2235
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !2236, !psr.id !2237
  %6 = load void ()*, void ()** %5, align 8, !dbg !2236, !psr.id !2238
  %7 = icmp ne void ()* %6, null, !dbg !2239, !psr.id !2240
  br i1 %7, label %8, label %12, !dbg !2241, !psr.id !2242

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2243, !psr.id !2245
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !2246, !psr.id !2247
  %11 = load void ()*, void ()** %10, align 8, !dbg !2246, !psr.id !2248
  call void %11(), !dbg !2243, !psr.id !2249
  br label %12, !dbg !2250, !psr.id !2251

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !2252, !psr.id !2253
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !2254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2255, metadata !DIExpression()), !dbg !2256, !psr.id !2257
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2258, !psr.id !2260
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !2261, !psr.id !2262
  br i1 %3, label %4, label %14, !dbg !2263, !psr.id !2264

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2265, !psr.id !2266
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !2267, !psr.id !2268
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !2267, !psr.id !2269
  %8 = icmp ne i32 (i32)* %7, null, !dbg !2270, !psr.id !2271
  br i1 %8, label %9, label %14, !dbg !2272, !psr.id !2273

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2274, !psr.id !2276
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !2277, !psr.id !2278
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !2277, !psr.id !2279
  %13 = call i32 %12(i32 %0), !dbg !2274, !psr.id !2280
  br label %26, !dbg !2281, !psr.id !2282

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !2283, !psr.id !2285
  br i1 %15, label %16, label %17, !dbg !2286, !psr.id !2287

16:                                               ; preds = %14
  br label %26, !dbg !2288, !psr.id !2290

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !2291, !psr.id !2292
  %19 = urem i32 %18, %0, !dbg !2293, !psr.id !2294
  call void @llvm.dbg.value(metadata i32 %19, metadata !2295, metadata !DIExpression()), !dbg !2256, !psr.id !2296
  br label %20, !dbg !2297, !psr.id !2298

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !2299, !psr.id !2301
  call void @llvm.dbg.value(metadata i32 %21, metadata !2302, metadata !DIExpression()), !dbg !2256, !psr.id !2303
  br label %22, !dbg !2304, !psr.id !2305

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !2306, !psr.id !2307
  br i1 %23, label %20, label %24, !dbg !2304, !llvm.loop !2308, !psr.id !2310

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !2311, !psr.id !2312
  br label %26, !dbg !2313, !psr.id !2314

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !2256, !psr.id !2315
  ret i32 %.0, !dbg !2316, !psr.id !2317
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !2318 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2319, metadata !DIExpression()), !dbg !2320, !psr.id !2321
  call void @llvm.dbg.value(metadata i64 %1, metadata !2322, metadata !DIExpression()), !dbg !2320, !psr.id !2323
  %3 = icmp ugt i64 %1, 0, !dbg !2324, !psr.id !2326
  br i1 %3, label %4, label %8, !dbg !2327, !psr.id !2328

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2329, !psr.id !2331
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !2332, !psr.id !2333
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !2332, !psr.id !2334
  call void %7(i8* %0, i64 %1), !dbg !2329, !psr.id !2335
  br label %8, !dbg !2336, !psr.id !2337

8:                                                ; preds = %4, %2
  ret void, !dbg !2338, !psr.id !2339
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !2340 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2341, !psr.id !2343
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !2344, !psr.id !2345
  br i1 %2, label %3, label %13, !dbg !2346, !psr.id !2347

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2348, !psr.id !2349
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !2350, !psr.id !2351
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !2350, !psr.id !2352
  %7 = icmp ne i32 ()* %6, null, !dbg !2353, !psr.id !2354
  br i1 %7, label %8, label %13, !dbg !2355, !psr.id !2356

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation.12, align 8, !dbg !2357, !psr.id !2359
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !2360, !psr.id !2361
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !2360, !psr.id !2362
  %12 = call i32 %11(), !dbg !2357, !psr.id !2363
  br label %14, !dbg !2364, !psr.id !2365

13:                                               ; preds = %3, %0
  br label %14, !dbg !2366, !psr.id !2367

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !2368, !psr.id !2369
  ret i32 %.0, !dbg !2370, !psr.id !2371
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !2372 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2377, metadata !DIExpression()), !dbg !2378, !psr.id !2379
  call void @llvm.dbg.value(metadata i64 %1, metadata !2380, metadata !DIExpression()), !dbg !2378, !psr.id !2381
  %3 = icmp ule i64 %1, -1, !dbg !2382, !psr.id !2385
  br i1 %3, label %4, label %5, !dbg !2386, !psr.id !2387

4:                                                ; preds = %2
  br label %9, !dbg !2386, !psr.id !2388

5:                                                ; preds = %2
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* @.str.13, i64 0, i64 0, !psr.id !2389
  %7 = getelementptr inbounds [53 x i8], [53 x i8]* @.str.1.14, i64 0, i64 0, !psr.id !2390
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0, !psr.id !2391
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !2382, !psr.id !2392
  unreachable, !dbg !2382, !psr.id !2393

9:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !2394, !psr.id !2395
  ret void, !dbg !2396, !psr.id !2397
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !2398 {
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.18, i64 0, i64 0, !psr.id !2399
  ret i8* %1, !dbg !2400, !psr.id !2401
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !2402 {
  %1 = alloca i32, align 4, !psr.id !2403
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2404, metadata !DIExpression()), !dbg !2405, !psr.id !2406
  %2 = bitcast i32* %1 to i8*, !dbg !2407, !psr.id !2408
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !2409, !psr.id !2410
  %3 = load i32, i32* %1, align 4, !dbg !2411, !psr.id !2412
  ret i32 %3, !dbg !2413, !psr.id !2414
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !2415 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !2416
  %2 = load i32, i32* %1, align 4, !dbg !2417, !psr.id !2419
  %3 = icmp eq i32 %2, 0, !dbg !2420, !psr.id !2421
  br i1 %3, label %4, label %6, !dbg !2422, !psr.id !2423

4:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !2424, !psr.id !2426
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !2427
  store i32 1, i32* %5, align 4, !dbg !2428, !psr.id !2429
  br label %6, !dbg !2430, !psr.id !2431

6:                                                ; preds = %4, %0
  ret void, !dbg !2432, !psr.id !2433
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !2434 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2435, metadata !DIExpression()), !dbg !2436, !psr.id !2437
  call void @llvm.dbg.value(metadata i64 %1, metadata !2438, metadata !DIExpression()), !dbg !2436, !psr.id !2439
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !2440, !psr.id !2441
  %3 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !2442
  %4 = load i32, i32* %3, align 4, !dbg !2443, !psr.id !2445
  %5 = icmp ne i32 %4, 0, !dbg !2446, !psr.id !2447
  br i1 %5, label %6, label %11, !dbg !2448, !psr.id !2449

6:                                                ; preds = %2
  %7 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !2450, !psr.id !2453
  %8 = icmp ne i32 %7, 0, !dbg !2454, !psr.id !2455
  br i1 %8, label %9, label %10, !dbg !2456, !psr.id !2457

9:                                                ; preds = %6
  call void @abort() #8, !dbg !2458, !psr.id !2460
  br label %UnifiedUnreachableBlock, !psr.id !2461

10:                                               ; preds = %6
  br label %21, !dbg !2462, !psr.id !2463

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !2464
  %13 = load i32, i32* %12, align 4, !dbg !2465, !psr.id !2467
  %14 = icmp eq i32 %13, -1, !dbg !2468, !psr.id !2469
  br i1 %14, label %20, label %15, !dbg !2470, !psr.id !2471

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !2472
  %17 = load i32, i32* %16, align 4, !dbg !2473, !psr.id !2474
  %18 = call i64 @safe_read(i32 %17, i8* %0, i64 %1), !dbg !2475, !psr.id !2476
  %19 = icmp ne i64 %18, %1, !dbg !2477, !psr.id !2478
  br i1 %19, label %20, label %21, !dbg !2479, !psr.id !2480

20:                                               ; preds = %15, %11
  call void @abort() #8, !dbg !2481, !psr.id !2483
  br label %UnifiedUnreachableBlock, !psr.id !2484

21:                                               ; preds = %15, %10
  ret void, !dbg !2485, !psr.id !2486

UnifiedUnreachableBlock:                          ; preds = %20, %9
  unreachable, !psr.id !2487
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !2488 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !2489, metadata !DIExpression()), !dbg !2490, !psr.id !2491
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !2492
  %2 = load i32, i32* %1, align 4, !dbg !2493, !psr.id !2495
  %3 = icmp ne i32 %2, -1, !dbg !2496, !psr.id !2497
  br i1 %3, label %4, label %12, !dbg !2498, !psr.id !2499

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !2500
  %6 = load i32, i32* %5, align 4, !dbg !2501, !psr.id !2502
  %7 = call i32 @close(i32 %6), !dbg !2503, !psr.id !2504
  %8 = icmp eq i32 %7, 0, !dbg !2505, !psr.id !2506
  br i1 %8, label %9, label %12, !dbg !2507, !psr.id !2508

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !2509
  store i32 -1, i32* %10, align 4, !dbg !2510, !psr.id !2512
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !2513
  store i32 0, i32* %11, align 4, !dbg !2514, !psr.id !2515
  call void @llvm.dbg.value(metadata i32 0, metadata !2489, metadata !DIExpression()), !dbg !2490, !psr.id !2516
  br label %12, !dbg !2517, !psr.id !2518

12:                                               ; preds = %9, %4, %0
  %.0 = phi i32 [ 0, %9 ], [ -1, %4 ], [ -1, %0 ], !dbg !2490, !psr.id !2519
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2489, metadata !DIExpression()), !dbg !2490, !psr.id !2520
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !2521
  %14 = load i32, i32* %13, align 4, !dbg !2522, !psr.id !2524
  %15 = icmp ne i32 %14, 0, !dbg !2525, !psr.id !2526
  br i1 %15, label %16, label %17, !dbg !2527, !psr.id !2528

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !2489, metadata !DIExpression()), !dbg !2490, !psr.id !2529
  br label %17, !dbg !2530, !psr.id !2532

17:                                               ; preds = %16, %12
  %.1 = phi i32 [ 0, %16 ], [ %.0, %12 ], !dbg !2490, !psr.id !2533
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2489, metadata !DIExpression()), !dbg !2490, !psr.id !2534
  ret i32 %.1, !dbg !2535, !psr.id !2536
}

declare dso_local i32 @close(i32) #3

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !2537 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !2538
  %2 = load i32, i32* %1, align 4, !dbg !2539, !psr.id !2541
  %3 = icmp eq i32 %2, 0, !dbg !2542, !psr.id !2543
  br i1 %3, label %4, label %5, !dbg !2544, !psr.id !2545

4:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !2546, !psr.id !2548
  br label %5, !dbg !2549, !psr.id !2550

5:                                                ; preds = %4, %0
  ret void, !dbg !2551, !psr.id !2552
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !2553 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2556, metadata !DIExpression()), !dbg !2557, !psr.id !2558
  call void @llvm.dbg.value(metadata i64 %1, metadata !2559, metadata !DIExpression()), !dbg !2557, !psr.id !2560
  call void @llvm.dbg.value(metadata i8* %0, metadata !2561, metadata !DIExpression()), !dbg !2557, !psr.id !2562
  call void @llvm.dbg.value(metadata i64 256, metadata !2563, metadata !DIExpression()), !dbg !2557, !psr.id !2564
  br label %3, !dbg !2565, !psr.id !2566

3:                                                ; preds = %20, %2
  %.03 = phi i8* [ %0, %2 ], [ %19, %20 ], !dbg !2557, !psr.id !2567
  %.02 = phi i64 [ %1, %2 ], [ %18, %20 ], !psr.id !2568
  %.01 = phi i64 [ 256, %2 ], [ %.1, %20 ], !dbg !2557, !psr.id !2569
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2563, metadata !DIExpression()), !dbg !2557, !psr.id !2570
  call void @llvm.dbg.value(metadata i64 %.02, metadata !2559, metadata !DIExpression()), !dbg !2557, !psr.id !2571
  call void @llvm.dbg.value(metadata i8* %.03, metadata !2561, metadata !DIExpression()), !dbg !2557, !psr.id !2572
  %4 = icmp ult i64 %.02, %.01, !dbg !2573, !psr.id !2576
  br i1 %4, label %5, label %13, !dbg !2577, !psr.id !2578

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !2563, metadata !DIExpression()), !dbg !2557, !psr.id !2579
  %6 = icmp ugt i64 %.02, 0, !dbg !2580, !psr.id !2584
  br i1 %6, label %7, label %8, !dbg !2585, !psr.id !2586

7:                                                ; preds = %5
  br label %12, !dbg !2585, !psr.id !2587

8:                                                ; preds = %5
  %9 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.3, i64 0, i64 0, !psr.id !2588
  %10 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !2589
  %11 = getelementptr inbounds [53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0, !psr.id !2590
  call void @__assert_fail(i8* %9, i8* %10, i32 159, i8* %11) #8, !dbg !2580, !psr.id !2591
  unreachable, !dbg !2580, !psr.id !2592

12:                                               ; preds = %7
  br label %13, !dbg !2593, !psr.id !2594

13:                                               ; preds = %12, %3
  %.1 = phi i64 [ %.02, %12 ], [ %.01, %3 ], !dbg !2557, !psr.id !2595
  call void @llvm.dbg.value(metadata i64 %.1, metadata !2563, metadata !DIExpression()), !dbg !2557, !psr.id !2596
  %14 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !2597, !psr.id !2599
  %15 = icmp ne i32 %14, 0, !dbg !2600, !psr.id !2601
  br i1 %15, label %16, label %17, !dbg !2602, !psr.id !2603

16:                                               ; preds = %13
  br label %23, !dbg !2604, !psr.id !2606

17:                                               ; preds = %13
  %18 = sub i64 %.02, %.1, !dbg !2607, !psr.id !2608
  call void @llvm.dbg.value(metadata i64 %18, metadata !2559, metadata !DIExpression()), !dbg !2557, !psr.id !2609
  %19 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !2610, !psr.id !2611
  call void @llvm.dbg.value(metadata i8* %19, metadata !2561, metadata !DIExpression()), !dbg !2557, !psr.id !2612
  br label %20, !dbg !2613, !psr.id !2614

20:                                               ; preds = %17
  %21 = icmp ugt i64 %18, 0, !dbg !2615, !psr.id !2616
  br i1 %21, label %3, label %22, !dbg !2613, !llvm.loop !2617, !psr.id !2619

22:                                               ; preds = %20
  br label %23, !dbg !2620, !psr.id !2621

23:                                               ; preds = %22, %16
  %.0 = phi i32 [ -1, %16 ], [ 0, %22 ], !dbg !2557, !psr.id !2622
  ret i32 %.0, !dbg !2623, !psr.id !2624
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !2625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2630, !psr.id !2631
  call void @llvm.dbg.value(metadata i8* %1, metadata !2632, metadata !DIExpression()), !dbg !2630, !psr.id !2633
  call void @llvm.dbg.value(metadata i64 %2, metadata !2634, metadata !DIExpression()), !dbg !2630, !psr.id !2635
  call void @llvm.dbg.value(metadata i8* %1, metadata !2636, metadata !DIExpression()), !dbg !2630, !psr.id !2637
  %4 = icmp ugt i64 %2, 0, !dbg !2638, !psr.id !2641
  br i1 %4, label %5, label %6, !dbg !2642, !psr.id !2643

5:                                                ; preds = %3
  br label %10, !dbg !2642, !psr.id !2644

6:                                                ; preds = %3
  %7 = getelementptr inbounds [19 x i8], [19 x i8]* @.str.6, i64 0, i64 0, !psr.id !2645
  %8 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !2646
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0, !psr.id !2647
  call void @__assert_fail(i8* %7, i8* %8, i32 82, i8* %9) #8, !dbg !2638, !psr.id !2648
  unreachable, !dbg !2638, !psr.id !2649

10:                                               ; preds = %5
  br label %11, !dbg !2650, !psr.id !2651

11:                                               ; preds = %37, %10
  %.02 = phi i64 [ %2, %10 ], [ %35, %37 ], !psr.id !2652
  %.01 = phi i8* [ %1, %10 ], [ %36, %37 ], !dbg !2630, !psr.id !2653
  call void @llvm.dbg.value(metadata i8* %.01, metadata !2636, metadata !DIExpression()), !dbg !2630, !psr.id !2654
  call void @llvm.dbg.value(metadata i64 %.02, metadata !2634, metadata !DIExpression()), !dbg !2630, !psr.id !2655
  br label %12, !dbg !2656, !psr.id !2658

12:                                               ; preds = %27, %11
  %13 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !2659, !psr.id !2660
  call void @llvm.dbg.value(metadata i64 %13, metadata !2661, metadata !DIExpression()), !dbg !2630, !psr.id !2662
  %14 = icmp slt i64 %13, 0, !dbg !2663, !psr.id !2664
  br i1 %14, label %15, label %25, !dbg !2665, !psr.id !2666

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #9, !dbg !2667, !psr.id !2668
  %17 = load i32, i32* %16, align 4, !dbg !2667, !psr.id !2669
  %18 = icmp eq i32 %17, 4, !dbg !2670, !psr.id !2671
  br i1 %18, label %23, label %19, !dbg !2672, !psr.id !2673

19:                                               ; preds = %15
  %20 = call i32* @__errno_location() #9, !dbg !2674, !psr.id !2675
  %21 = load i32, i32* %20, align 4, !dbg !2674, !psr.id !2676
  %22 = icmp eq i32 %21, 11, !dbg !2677, !psr.id !2678
  br label %23, !dbg !2672, !psr.id !2679

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ], !psr.id !2680
  br label %25, !psr.id !2681

25:                                               ; preds = %23, %12
  %26 = phi i1 [ false, %12 ], [ %24, %23 ], !dbg !2682, !psr.id !2683
  br i1 %26, label %27, label %28, !dbg !2656, !psr.id !2684

27:                                               ; preds = %25
  br label %12, !dbg !2656, !llvm.loop !2685, !psr.id !2687

28:                                               ; preds = %25
  %29 = icmp slt i64 %13, 0, !dbg !2688, !psr.id !2690
  br i1 %29, label %30, label %31, !dbg !2691, !psr.id !2692

30:                                               ; preds = %28
  br label %43, !dbg !2693, !psr.id !2695

31:                                               ; preds = %28
  %32 = icmp eq i64 %13, 0, !dbg !2696, !psr.id !2698
  br i1 %32, label %33, label %34, !dbg !2699, !psr.id !2700

33:                                               ; preds = %31
  br label %39, !dbg !2701, !psr.id !2703

34:                                               ; preds = %31
  %35 = sub i64 %.02, %13, !dbg !2704, !psr.id !2705
  call void @llvm.dbg.value(metadata i64 %35, metadata !2634, metadata !DIExpression()), !dbg !2630, !psr.id !2706
  %36 = getelementptr inbounds i8, i8* %.01, i64 %13, !dbg !2707, !psr.id !2708
  call void @llvm.dbg.value(metadata i8* %36, metadata !2636, metadata !DIExpression()), !dbg !2630, !psr.id !2709
  br label %37, !dbg !2710, !psr.id !2711

37:                                               ; preds = %34
  %38 = icmp ugt i64 %35, 0, !dbg !2712, !psr.id !2713
  br i1 %38, label %11, label %39, !dbg !2710, !llvm.loop !2714, !psr.id !2716

39:                                               ; preds = %37, %33
  %.1 = phi i8* [ %.01, %33 ], [ %36, %37 ], !dbg !2630, !psr.id !2717
  call void @llvm.dbg.value(metadata i8* %.1, metadata !2636, metadata !DIExpression()), !dbg !2630, !psr.id !2718
  %40 = ptrtoint i8* %.1 to i64, !dbg !2719, !psr.id !2720
  %41 = ptrtoint i8* %1 to i64, !dbg !2719, !psr.id !2721
  %42 = sub i64 %40, %41, !dbg !2719, !psr.id !2722
  br label %43, !dbg !2723, !psr.id !2724

43:                                               ; preds = %39, %30
  %.0 = phi i64 [ %13, %30 ], [ %42, %39 ], !dbg !2630, !psr.id !2725
  ret i64 %.0, !dbg !2726, !psr.id !2727
}

declare dso_local i64 @read(i32, i8*, i64) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !2728 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2731, metadata !DIExpression()), !dbg !2732, !psr.id !2733
  call void @llvm.dbg.value(metadata i64 %1, metadata !2734, metadata !DIExpression()), !dbg !2732, !psr.id !2735
  %3 = icmp ule i64 %1, 256, !dbg !2736, !psr.id !2739
  br i1 %3, label %4, label %5, !dbg !2740, !psr.id !2741

4:                                                ; preds = %2
  br label %9, !dbg !2740, !psr.id !2742

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.5, i64 0, i64 0, !psr.id !2743
  %7 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !2744
  %8 = getelementptr inbounds [60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0, !psr.id !2745
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !2736, !psr.id !2746
  unreachable, !dbg !2736, !psr.id !2747

9:                                                ; preds = %4
  br label %10, !dbg !2748, !psr.id !2749

10:                                               ; preds = %26, %9
  %11 = trunc i64 %1 to i32, !dbg !2750, !psr.id !2752
  %12 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %11, i32 0) #10, !dbg !2753, !psr.id !2754
  %13 = trunc i64 %12 to i32, !dbg !2753, !psr.id !2755
  call void @llvm.dbg.value(metadata i32 %13, metadata !2756, metadata !DIExpression()), !dbg !2732, !psr.id !2757
  br label %14, !dbg !2758, !psr.id !2759

14:                                               ; preds = %10
  %15 = icmp slt i32 %13, 0, !dbg !2760, !psr.id !2761
  br i1 %15, label %16, label %26, !dbg !2762, !psr.id !2763

16:                                               ; preds = %14
  %17 = call i32* @__errno_location() #9, !dbg !2764, !psr.id !2765
  %18 = load i32, i32* %17, align 4, !dbg !2764, !psr.id !2766
  %19 = icmp eq i32 %18, 4, !dbg !2767, !psr.id !2768
  br i1 %19, label %24, label %20, !dbg !2769, !psr.id !2770

20:                                               ; preds = %16
  %21 = call i32* @__errno_location() #9, !dbg !2771, !psr.id !2772
  %22 = load i32, i32* %21, align 4, !dbg !2771, !psr.id !2773
  %23 = icmp eq i32 %22, 11, !dbg !2774, !psr.id !2775
  br label %24, !dbg !2769, !psr.id !2776

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ], !psr.id !2777
  br label %26, !psr.id !2778

26:                                               ; preds = %24, %14
  %27 = phi i1 [ false, %14 ], [ %25, %24 ], !dbg !2732, !psr.id !2779
  br i1 %27, label %10, label %28, !dbg !2758, !llvm.loop !2780, !psr.id !2782

28:                                               ; preds = %26
  %29 = trunc i64 %1 to i32, !dbg !2783, !psr.id !2784
  %30 = icmp eq i32 %13, %29, !dbg !2785, !psr.id !2786
  %31 = zext i1 %30 to i32, !dbg !2785, !psr.id !2787
  %32 = sub nsw i32 %31, 1, !dbg !2788, !psr.id !2789
  ret i32 %32, !dbg !2790, !psr.id !2791
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #6

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !2792 {
  %1 = alloca [16 x i8], align 16, !psr.id !2793
  %2 = call i32* @__errno_location() #9, !dbg !2794, !psr.id !2795
  %3 = load i32, i32* %2, align 4, !dbg !2794, !psr.id !2796
  call void @llvm.dbg.value(metadata i32 %3, metadata !2797, metadata !DIExpression()), !dbg !2798, !psr.id !2799
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !2800, metadata !DIExpression()), !dbg !2802, !psr.id !2803
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !2804, !psr.id !2806
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !2807, !psr.id !2808
  %6 = icmp eq i32 %5, 0, !dbg !2809, !psr.id !2810
  br i1 %6, label %7, label %10, !dbg !2811, !psr.id !2812

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !2813
  store i32 1, i32* %8, align 4, !dbg !2814, !psr.id !2816
  %9 = call i32* @__errno_location() #9, !dbg !2817, !psr.id !2818
  store i32 %3, i32* %9, align 4, !dbg !2819, !psr.id !2820
  br label %18, !dbg !2821, !psr.id !2822

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !2823
  store i32 0, i32* %11, align 4, !dbg !2824, !psr.id !2825
  %12 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !2826, !psr.id !2828
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !2829
  store i32 %12, i32* %13, align 4, !dbg !2830, !psr.id !2831
  %14 = icmp eq i32 %12, -1, !dbg !2832, !psr.id !2833
  br i1 %14, label %15, label %16, !dbg !2834, !psr.id !2835

15:                                               ; preds = %10
  call void @abort() #8, !dbg !2836, !psr.id !2838
  unreachable, !dbg !2836, !psr.id !2839

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #9, !dbg !2840, !psr.id !2841
  store i32 %3, i32* %17, align 4, !dbg !2842, !psr.id !2843
  br label %18, !dbg !2844, !psr.id !2845

18:                                               ; preds = %16, %7
  ret void, !dbg !2844, !psr.id !2846
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !179 {
  %1 = alloca %struct.stat, align 8, !psr.id !2847
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !2848, metadata !DIExpression()), !dbg !2884, !psr.id !2885
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !2886, metadata !DIExpression()), !dbg !2888, !psr.id !2889
  %2 = getelementptr inbounds [3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0, !psr.id !2890
  br label %3, !dbg !2891, !psr.id !2892

3:                                                ; preds = %29, %0
  %.01 = phi i8** [ %2, %0 ], [ %.1, %29 ], !dbg !2888, !psr.id !2893
  call void @llvm.dbg.value(metadata i8** %.01, metadata !2886, metadata !DIExpression()), !dbg !2888, !psr.id !2894
  %4 = load i8*, i8** %.01, align 8, !dbg !2895, !psr.id !2897
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 0), !dbg !2898, !psr.id !2899
  call void @llvm.dbg.value(metadata i32 %5, metadata !2900, metadata !DIExpression()), !dbg !2888, !psr.id !2901
  %6 = icmp ne i32 %5, -1, !dbg !2902, !psr.id !2904
  br i1 %6, label %7, label %21, !dbg !2905, !psr.id !2906

7:                                                ; preds = %3
  %8 = call i32 @fstat(i32 %5, %struct.stat* %1) #10, !dbg !2907, !psr.id !2910
  %9 = icmp eq i32 %8, 0, !dbg !2911, !psr.id !2912
  br i1 %9, label %10, label %19, !dbg !2913, !psr.id !2914

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !2915, !psr.id !2916
  %12 = load i32, i32* %11, align 8, !dbg !2915, !psr.id !2917
  %13 = and i32 %12, 61440, !dbg !2915, !psr.id !2918
  %14 = icmp eq i32 %13, 8192, !dbg !2915, !psr.id !2919
  br i1 %14, label %15, label %19, !dbg !2920, !psr.id !2921

15:                                               ; preds = %10
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 1), !dbg !2922, !psr.id !2924
  %17 = or i32 %16, 1, !dbg !2925, !psr.id !2926
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 2, i32 %17), !dbg !2927, !psr.id !2928
  br label %34, !dbg !2929, !psr.id !2930

19:                                               ; preds = %10, %7
  %20 = call i32 @close(i32 %5), !dbg !2931, !psr.id !2932
  br label %27, !dbg !2933, !psr.id !2934

21:                                               ; preds = %3
  %22 = call i32* @__errno_location() #9, !dbg !2935, !psr.id !2937
  %23 = load i32, i32* %22, align 4, !dbg !2935, !psr.id !2938
  %24 = icmp eq i32 %23, 4, !dbg !2939, !psr.id !2940
  br i1 %24, label %25, label %26, !dbg !2941, !psr.id !2942

25:                                               ; preds = %21
  br label %29, !dbg !2943, !psr.id !2945

26:                                               ; preds = %21
  br label %27, !psr.id !2946

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !2947, !psr.id !2948
  call void @llvm.dbg.value(metadata i8** %28, metadata !2886, metadata !DIExpression()), !dbg !2888, !psr.id !2949
  br label %29, !dbg !2950, !psr.id !2951

29:                                               ; preds = %27, %25
  %.1 = phi i8** [ %28, %27 ], [ %.01, %25 ], !dbg !2888, !psr.id !2952
  call void @llvm.dbg.value(metadata i8** %.1, metadata !2886, metadata !DIExpression()), !dbg !2888, !psr.id !2953
  %30 = load i8*, i8** %.1, align 8, !dbg !2954, !psr.id !2955
  %31 = icmp ne i8* %30, null, !dbg !2956, !psr.id !2957
  br i1 %31, label %3, label %32, !dbg !2950, !llvm.loop !2958, !psr.id !2960

32:                                               ; preds = %29
  %33 = call i32* @__errno_location() #9, !dbg !2961, !psr.id !2962
  store i32 5, i32* %33, align 4, !dbg !2963, !psr.id !2964
  br label %34, !dbg !2965, !psr.id !2966

34:                                               ; preds = %32, %15
  %.0 = phi i32 [ %5, %15 ], [ -1, %32 ], !dbg !2888, !psr.id !2967
  ret i32 %.0, !dbg !2968, !psr.id !2969
}

declare dso_local i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #6

declare dso_local i32 @fcntl(i32, i32, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_stream_chacha20_keybytes() #0 !dbg !2970 {
  ret i64 32, !dbg !2971, !psr.id !2972
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_stream_chacha20_noncebytes() #0 !dbg !2973 {
  ret i64 8, !dbg !2974, !psr.id !2975
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20(i8* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !2976 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()), !dbg !2980, !psr.id !2981
  call void @llvm.dbg.value(metadata i64 %1, metadata !2982, metadata !DIExpression()), !dbg !2980, !psr.id !2983
  call void @llvm.dbg.value(metadata i8* %2, metadata !2984, metadata !DIExpression()), !dbg !2980, !psr.id !2985
  call void @llvm.dbg.value(metadata i8* %3, metadata !2986, metadata !DIExpression()), !dbg !2980, !psr.id !2987
  %5 = call i32 @crypto_stream_chacha20_ref(i8* %0, i64 %1, i8* %2, i8* %3), !dbg !2988, !psr.id !2989
  ret i32 %5, !dbg !2990, !psr.id !2991
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 !dbg !2992 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2997, metadata !DIExpression()), !dbg !2998, !psr.id !2999
  call void @llvm.dbg.value(metadata i8* %1, metadata !3000, metadata !DIExpression()), !dbg !2998, !psr.id !3001
  call void @llvm.dbg.value(metadata i64 %2, metadata !3002, metadata !DIExpression()), !dbg !2998, !psr.id !3003
  call void @llvm.dbg.value(metadata i8* %3, metadata !3004, metadata !DIExpression()), !dbg !2998, !psr.id !3005
  call void @llvm.dbg.value(metadata i64 %4, metadata !3006, metadata !DIExpression()), !dbg !2998, !psr.id !3007
  call void @llvm.dbg.value(metadata i8* %5, metadata !3008, metadata !DIExpression()), !dbg !2998, !psr.id !3009
  %7 = call i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5), !dbg !3010, !psr.id !3011
  ret i32 %7, !dbg !3012, !psr.id !3013
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_xor(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 !dbg !3014 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3017, metadata !DIExpression()), !dbg !3018, !psr.id !3019
  call void @llvm.dbg.value(metadata i8* %1, metadata !3020, metadata !DIExpression()), !dbg !3018, !psr.id !3021
  call void @llvm.dbg.value(metadata i64 %2, metadata !3022, metadata !DIExpression()), !dbg !3018, !psr.id !3023
  call void @llvm.dbg.value(metadata i8* %3, metadata !3024, metadata !DIExpression()), !dbg !3018, !psr.id !3025
  call void @llvm.dbg.value(metadata i8* %4, metadata !3026, metadata !DIExpression()), !dbg !3018, !psr.id !3027
  %6 = call i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 0, i8* %4), !dbg !3028, !psr.id !3029
  ret i32 %6, !dbg !3030, !psr.id !3031
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_ref(i8* %0, i64 %1, i8* %2, i8* %3) #0 !dbg !3032 {
  %5 = alloca %struct.chacha_ctx, align 4, !psr.id !3033
  call void @llvm.dbg.value(metadata i8* %0, metadata !3034, metadata !DIExpression()), !dbg !3035, !psr.id !3036
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()), !dbg !3035, !psr.id !3038
  call void @llvm.dbg.value(metadata i8* %2, metadata !3039, metadata !DIExpression()), !dbg !3035, !psr.id !3040
  call void @llvm.dbg.value(metadata i8* %3, metadata !3041, metadata !DIExpression()), !dbg !3035, !psr.id !3042
  call void @llvm.dbg.declare(metadata %struct.chacha_ctx* %5, metadata !3043, metadata !DIExpression()), !dbg !3048, !psr.id !3049
  %6 = icmp ne i64 %1, 0, !dbg !3050, !psr.id !3052
  br i1 %6, label %8, label %7, !dbg !3053, !psr.id !3054

7:                                                ; preds = %4
  br label %10, !dbg !3055, !psr.id !3057

8:                                                ; preds = %4
  call void @chacha_keysetup(%struct.chacha_ctx* %5, i8* %3), !dbg !3058, !psr.id !3059
  call void @chacha_ivsetup(%struct.chacha_ctx* %5, i8* %2, i8* null), !dbg !3060, !psr.id !3061
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %1, i1 false), !dbg !3062, !psr.id !3063
  call void @chacha_encrypt_bytes(%struct.chacha_ctx* %5, i8* %0, i8* %0, i64 %1), !dbg !3064, !psr.id !3065
  %9 = bitcast %struct.chacha_ctx* %5 to i8*, !dbg !3066, !psr.id !3067
  call void @sodium_memzero(i8* %9, i64 64), !dbg !3068, !psr.id !3069
  br label %10, !dbg !3070, !psr.id !3071

10:                                               ; preds = %8, %7
  ret i32 0, !dbg !3072, !psr.id !3073
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_keysetup(%struct.chacha_ctx* %0, i8* %1) #0 !dbg !3074 {
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !3081, metadata !DIExpression()), !dbg !3082, !psr.id !3083
  call void @llvm.dbg.value(metadata i8* %1, metadata !3084, metadata !DIExpression()), !dbg !3082, !psr.id !3085
  %3 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !3086, !psr.id !3087, !PointTainted !3088
  %4 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !3086, !psr.id !3089, !PointTainted !3088
  %5 = load i8, i8* %4, align 1, !dbg !3086, !psr.id !3090, !ValueTainted !3091
  %6 = zext i8 %5 to i32, !dbg !3086, !psr.id !3092, !ValueTainted !3091
  %7 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !3086, !psr.id !3093, !PointTainted !3088
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3086, !psr.id !3094, !PointTainted !3088
  %9 = load i8, i8* %8, align 1, !dbg !3086, !psr.id !3095, !ValueTainted !3091
  %10 = zext i8 %9 to i32, !dbg !3086, !psr.id !3096, !ValueTainted !3091
  %11 = shl i32 %10, 8, !dbg !3086, !psr.id !3097, !ValueTainted !3091
  %12 = or i32 %6, %11, !dbg !3086, !psr.id !3098, !ValueTainted !3091
  %13 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !3086, !psr.id !3099, !PointTainted !3088
  %14 = getelementptr inbounds i8, i8* %13, i64 2, !dbg !3086, !psr.id !3100, !PointTainted !3088
  %15 = load i8, i8* %14, align 1, !dbg !3086, !psr.id !3101, !ValueTainted !3091
  %16 = zext i8 %15 to i32, !dbg !3086, !psr.id !3102, !ValueTainted !3091
  %17 = shl i32 %16, 16, !dbg !3086, !psr.id !3103, !ValueTainted !3091
  %18 = or i32 %12, %17, !dbg !3086, !psr.id !3104, !ValueTainted !3091
  %19 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !3086, !psr.id !3105, !PointTainted !3088
  %20 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !3086, !psr.id !3106, !PointTainted !3088
  %21 = load i8, i8* %20, align 1, !dbg !3086, !psr.id !3107, !ValueTainted !3091
  %22 = zext i8 %21 to i32, !dbg !3086, !psr.id !3108, !ValueTainted !3091
  %23 = shl i32 %22, 24, !dbg !3086, !psr.id !3109, !ValueTainted !3091
  %24 = or i32 %18, %23, !dbg !3086, !psr.id !3110, !ValueTainted !3091
  %25 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3111, !psr.id !3112
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 4, !dbg !3113, !psr.id !3114
  store i32 %24, i32* %26, align 4, !dbg !3115, !psr.id !3116
  %27 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !3117, !psr.id !3118, !PointTainted !3088
  %28 = getelementptr inbounds i8, i8* %27, i64 0, !dbg !3117, !psr.id !3119, !PointTainted !3088
  %29 = load i8, i8* %28, align 1, !dbg !3117, !psr.id !3120, !ValueTainted !3091
  %30 = zext i8 %29 to i32, !dbg !3117, !psr.id !3121, !ValueTainted !3091
  %31 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !3117, !psr.id !3122, !PointTainted !3088
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !3117, !psr.id !3123, !PointTainted !3088
  %33 = load i8, i8* %32, align 1, !dbg !3117, !psr.id !3124, !ValueTainted !3091
  %34 = zext i8 %33 to i32, !dbg !3117, !psr.id !3125, !ValueTainted !3091
  %35 = shl i32 %34, 8, !dbg !3117, !psr.id !3126, !ValueTainted !3091
  %36 = or i32 %30, %35, !dbg !3117, !psr.id !3127, !ValueTainted !3091
  %37 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !3117, !psr.id !3128, !PointTainted !3088
  %38 = getelementptr inbounds i8, i8* %37, i64 2, !dbg !3117, !psr.id !3129, !PointTainted !3088
  %39 = load i8, i8* %38, align 1, !dbg !3117, !psr.id !3130, !ValueTainted !3091
  %40 = zext i8 %39 to i32, !dbg !3117, !psr.id !3131, !ValueTainted !3091
  %41 = shl i32 %40, 16, !dbg !3117, !psr.id !3132, !ValueTainted !3091
  %42 = or i32 %36, %41, !dbg !3117, !psr.id !3133, !ValueTainted !3091
  %43 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !3117, !psr.id !3134, !PointTainted !3088
  %44 = getelementptr inbounds i8, i8* %43, i64 3, !dbg !3117, !psr.id !3135, !PointTainted !3088
  %45 = load i8, i8* %44, align 1, !dbg !3117, !psr.id !3136, !ValueTainted !3091
  %46 = zext i8 %45 to i32, !dbg !3117, !psr.id !3137, !ValueTainted !3091
  %47 = shl i32 %46, 24, !dbg !3117, !psr.id !3138, !ValueTainted !3091
  %48 = or i32 %42, %47, !dbg !3117, !psr.id !3139, !ValueTainted !3091
  %49 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3140, !psr.id !3141
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %49, i64 0, i64 5, !dbg !3142, !psr.id !3143
  store i32 %48, i32* %50, align 4, !dbg !3144, !psr.id !3145
  %51 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3146, !psr.id !3147, !PointTainted !3088
  %52 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !3146, !psr.id !3148, !PointTainted !3088
  %53 = load i8, i8* %52, align 1, !dbg !3146, !psr.id !3149, !ValueTainted !3091
  %54 = zext i8 %53 to i32, !dbg !3146, !psr.id !3150, !ValueTainted !3091
  %55 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3146, !psr.id !3151, !PointTainted !3088
  %56 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !3146, !psr.id !3152, !PointTainted !3088
  %57 = load i8, i8* %56, align 1, !dbg !3146, !psr.id !3153, !ValueTainted !3091
  %58 = zext i8 %57 to i32, !dbg !3146, !psr.id !3154, !ValueTainted !3091
  %59 = shl i32 %58, 8, !dbg !3146, !psr.id !3155, !ValueTainted !3091
  %60 = or i32 %54, %59, !dbg !3146, !psr.id !3156, !ValueTainted !3091
  %61 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3146, !psr.id !3157, !PointTainted !3088
  %62 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !3146, !psr.id !3158, !PointTainted !3088
  %63 = load i8, i8* %62, align 1, !dbg !3146, !psr.id !3159, !ValueTainted !3091
  %64 = zext i8 %63 to i32, !dbg !3146, !psr.id !3160, !ValueTainted !3091
  %65 = shl i32 %64, 16, !dbg !3146, !psr.id !3161, !ValueTainted !3091
  %66 = or i32 %60, %65, !dbg !3146, !psr.id !3162, !ValueTainted !3091
  %67 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3146, !psr.id !3163, !PointTainted !3088
  %68 = getelementptr inbounds i8, i8* %67, i64 3, !dbg !3146, !psr.id !3164, !PointTainted !3088
  %69 = load i8, i8* %68, align 1, !dbg !3146, !psr.id !3165, !ValueTainted !3091
  %70 = zext i8 %69 to i32, !dbg !3146, !psr.id !3166, !ValueTainted !3091
  %71 = shl i32 %70, 24, !dbg !3146, !psr.id !3167, !ValueTainted !3091
  %72 = or i32 %66, %71, !dbg !3146, !psr.id !3168, !ValueTainted !3091
  %73 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3169, !psr.id !3170
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %73, i64 0, i64 6, !dbg !3171, !psr.id !3172
  store i32 %72, i32* %74, align 4, !dbg !3173, !psr.id !3174
  %75 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !3175, !psr.id !3176, !PointTainted !3088
  %76 = getelementptr inbounds i8, i8* %75, i64 0, !dbg !3175, !psr.id !3177, !PointTainted !3088
  %77 = load i8, i8* %76, align 1, !dbg !3175, !psr.id !3178, !ValueTainted !3091
  %78 = zext i8 %77 to i32, !dbg !3175, !psr.id !3179, !ValueTainted !3091
  %79 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !3175, !psr.id !3180, !PointTainted !3088
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !3175, !psr.id !3181, !PointTainted !3088
  %81 = load i8, i8* %80, align 1, !dbg !3175, !psr.id !3182, !ValueTainted !3091
  %82 = zext i8 %81 to i32, !dbg !3175, !psr.id !3183, !ValueTainted !3091
  %83 = shl i32 %82, 8, !dbg !3175, !psr.id !3184, !ValueTainted !3091
  %84 = or i32 %78, %83, !dbg !3175, !psr.id !3185, !ValueTainted !3091
  %85 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !3175, !psr.id !3186, !PointTainted !3088
  %86 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !3175, !psr.id !3187, !PointTainted !3088
  %87 = load i8, i8* %86, align 1, !dbg !3175, !psr.id !3188, !ValueTainted !3091
  %88 = zext i8 %87 to i32, !dbg !3175, !psr.id !3189, !ValueTainted !3091
  %89 = shl i32 %88, 16, !dbg !3175, !psr.id !3190, !ValueTainted !3091
  %90 = or i32 %84, %89, !dbg !3175, !psr.id !3191, !ValueTainted !3091
  %91 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !3175, !psr.id !3192, !PointTainted !3088
  %92 = getelementptr inbounds i8, i8* %91, i64 3, !dbg !3175, !psr.id !3193, !PointTainted !3088
  %93 = load i8, i8* %92, align 1, !dbg !3175, !psr.id !3194, !ValueTainted !3091
  %94 = zext i8 %93 to i32, !dbg !3175, !psr.id !3195, !ValueTainted !3091
  %95 = shl i32 %94, 24, !dbg !3175, !psr.id !3196, !ValueTainted !3091
  %96 = or i32 %90, %95, !dbg !3175, !psr.id !3197, !ValueTainted !3091
  %97 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3198, !psr.id !3199
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %97, i64 0, i64 7, !dbg !3200, !psr.id !3201
  store i32 %96, i32* %98, align 4, !dbg !3202, !psr.id !3203
  %99 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !3204, !psr.id !3205, !PointTainted !3088
  call void @llvm.dbg.value(metadata i8* %99, metadata !3084, metadata !DIExpression()), !dbg !3082, !psr.id !3206
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sigma, i64 0, i64 0), metadata !3207, metadata !DIExpression()), !dbg !3082, !psr.id !3208
  %100 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !3209, !psr.id !3210, !PointTainted !3088
  %101 = getelementptr inbounds i8, i8* %100, i64 0, !dbg !3209, !psr.id !3211, !PointTainted !3088
  %102 = load i8, i8* %101, align 1, !dbg !3209, !psr.id !3212, !ValueTainted !3091
  %103 = zext i8 %102 to i32, !dbg !3209, !psr.id !3213, !ValueTainted !3091
  %104 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !3209, !psr.id !3214, !PointTainted !3088
  %105 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !3209, !psr.id !3215, !PointTainted !3088
  %106 = load i8, i8* %105, align 1, !dbg !3209, !psr.id !3216, !ValueTainted !3091
  %107 = zext i8 %106 to i32, !dbg !3209, !psr.id !3217, !ValueTainted !3091
  %108 = shl i32 %107, 8, !dbg !3209, !psr.id !3218, !ValueTainted !3091
  %109 = or i32 %103, %108, !dbg !3209, !psr.id !3219, !ValueTainted !3091
  %110 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !3209, !psr.id !3220, !PointTainted !3088
  %111 = getelementptr inbounds i8, i8* %110, i64 2, !dbg !3209, !psr.id !3221, !PointTainted !3088
  %112 = load i8, i8* %111, align 1, !dbg !3209, !psr.id !3222, !ValueTainted !3091
  %113 = zext i8 %112 to i32, !dbg !3209, !psr.id !3223, !ValueTainted !3091
  %114 = shl i32 %113, 16, !dbg !3209, !psr.id !3224, !ValueTainted !3091
  %115 = or i32 %109, %114, !dbg !3209, !psr.id !3225, !ValueTainted !3091
  %116 = getelementptr inbounds i8, i8* %99, i64 0, !dbg !3209, !psr.id !3226, !PointTainted !3088
  %117 = getelementptr inbounds i8, i8* %116, i64 3, !dbg !3209, !psr.id !3227, !PointTainted !3088
  %118 = load i8, i8* %117, align 1, !dbg !3209, !psr.id !3228, !ValueTainted !3091
  %119 = zext i8 %118 to i32, !dbg !3209, !psr.id !3229, !ValueTainted !3091
  %120 = shl i32 %119, 24, !dbg !3209, !psr.id !3230, !ValueTainted !3091
  %121 = or i32 %115, %120, !dbg !3209, !psr.id !3231, !ValueTainted !3091
  %122 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3232, !psr.id !3233
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %122, i64 0, i64 8, !dbg !3234, !psr.id !3235
  store i32 %121, i32* %123, align 4, !dbg !3236, !psr.id !3237
  %124 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !3238, !psr.id !3239, !PointTainted !3088
  %125 = getelementptr inbounds i8, i8* %124, i64 0, !dbg !3238, !psr.id !3240, !PointTainted !3088
  %126 = load i8, i8* %125, align 1, !dbg !3238, !psr.id !3241, !ValueTainted !3091
  %127 = zext i8 %126 to i32, !dbg !3238, !psr.id !3242, !ValueTainted !3091
  %128 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !3238, !psr.id !3243, !PointTainted !3088
  %129 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !3238, !psr.id !3244, !PointTainted !3088
  %130 = load i8, i8* %129, align 1, !dbg !3238, !psr.id !3245, !ValueTainted !3091
  %131 = zext i8 %130 to i32, !dbg !3238, !psr.id !3246, !ValueTainted !3091
  %132 = shl i32 %131, 8, !dbg !3238, !psr.id !3247, !ValueTainted !3091
  %133 = or i32 %127, %132, !dbg !3238, !psr.id !3248, !ValueTainted !3091
  %134 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !3238, !psr.id !3249, !PointTainted !3088
  %135 = getelementptr inbounds i8, i8* %134, i64 2, !dbg !3238, !psr.id !3250, !PointTainted !3088
  %136 = load i8, i8* %135, align 1, !dbg !3238, !psr.id !3251, !ValueTainted !3091
  %137 = zext i8 %136 to i32, !dbg !3238, !psr.id !3252, !ValueTainted !3091
  %138 = shl i32 %137, 16, !dbg !3238, !psr.id !3253, !ValueTainted !3091
  %139 = or i32 %133, %138, !dbg !3238, !psr.id !3254, !ValueTainted !3091
  %140 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !3238, !psr.id !3255, !PointTainted !3088
  %141 = getelementptr inbounds i8, i8* %140, i64 3, !dbg !3238, !psr.id !3256, !PointTainted !3088
  %142 = load i8, i8* %141, align 1, !dbg !3238, !psr.id !3257, !ValueTainted !3091
  %143 = zext i8 %142 to i32, !dbg !3238, !psr.id !3258, !ValueTainted !3091
  %144 = shl i32 %143, 24, !dbg !3238, !psr.id !3259, !ValueTainted !3091
  %145 = or i32 %139, %144, !dbg !3238, !psr.id !3260, !ValueTainted !3091
  %146 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3261, !psr.id !3262
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %146, i64 0, i64 9, !dbg !3263, !psr.id !3264
  store i32 %145, i32* %147, align 4, !dbg !3265, !psr.id !3266
  %148 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !3267, !psr.id !3268, !PointTainted !3088
  %149 = getelementptr inbounds i8, i8* %148, i64 0, !dbg !3267, !psr.id !3269, !PointTainted !3088
  %150 = load i8, i8* %149, align 1, !dbg !3267, !psr.id !3270, !ValueTainted !3091
  %151 = zext i8 %150 to i32, !dbg !3267, !psr.id !3271, !ValueTainted !3091
  %152 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !3267, !psr.id !3272, !PointTainted !3088
  %153 = getelementptr inbounds i8, i8* %152, i64 1, !dbg !3267, !psr.id !3273, !PointTainted !3088
  %154 = load i8, i8* %153, align 1, !dbg !3267, !psr.id !3274, !ValueTainted !3091
  %155 = zext i8 %154 to i32, !dbg !3267, !psr.id !3275, !ValueTainted !3091
  %156 = shl i32 %155, 8, !dbg !3267, !psr.id !3276, !ValueTainted !3091
  %157 = or i32 %151, %156, !dbg !3267, !psr.id !3277, !ValueTainted !3091
  %158 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !3267, !psr.id !3278, !PointTainted !3088
  %159 = getelementptr inbounds i8, i8* %158, i64 2, !dbg !3267, !psr.id !3279, !PointTainted !3088
  %160 = load i8, i8* %159, align 1, !dbg !3267, !psr.id !3280, !ValueTainted !3091
  %161 = zext i8 %160 to i32, !dbg !3267, !psr.id !3281, !ValueTainted !3091
  %162 = shl i32 %161, 16, !dbg !3267, !psr.id !3282, !ValueTainted !3091
  %163 = or i32 %157, %162, !dbg !3267, !psr.id !3283, !ValueTainted !3091
  %164 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !3267, !psr.id !3284, !PointTainted !3088
  %165 = getelementptr inbounds i8, i8* %164, i64 3, !dbg !3267, !psr.id !3285, !PointTainted !3088
  %166 = load i8, i8* %165, align 1, !dbg !3267, !psr.id !3286, !ValueTainted !3091
  %167 = zext i8 %166 to i32, !dbg !3267, !psr.id !3287, !ValueTainted !3091
  %168 = shl i32 %167, 24, !dbg !3267, !psr.id !3288, !ValueTainted !3091
  %169 = or i32 %163, %168, !dbg !3267, !psr.id !3289, !ValueTainted !3091
  %170 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3290, !psr.id !3291
  %171 = getelementptr inbounds [16 x i32], [16 x i32]* %170, i64 0, i64 10, !dbg !3292, !psr.id !3293
  store i32 %169, i32* %171, align 4, !dbg !3294, !psr.id !3295
  %172 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !3296, !psr.id !3297, !PointTainted !3088
  %173 = getelementptr inbounds i8, i8* %172, i64 0, !dbg !3296, !psr.id !3298, !PointTainted !3088
  %174 = load i8, i8* %173, align 1, !dbg !3296, !psr.id !3299, !ValueTainted !3091
  %175 = zext i8 %174 to i32, !dbg !3296, !psr.id !3300, !ValueTainted !3091
  %176 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !3296, !psr.id !3301, !PointTainted !3088
  %177 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !3296, !psr.id !3302, !PointTainted !3088
  %178 = load i8, i8* %177, align 1, !dbg !3296, !psr.id !3303, !ValueTainted !3091
  %179 = zext i8 %178 to i32, !dbg !3296, !psr.id !3304, !ValueTainted !3091
  %180 = shl i32 %179, 8, !dbg !3296, !psr.id !3305, !ValueTainted !3091
  %181 = or i32 %175, %180, !dbg !3296, !psr.id !3306, !ValueTainted !3091
  %182 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !3296, !psr.id !3307, !PointTainted !3088
  %183 = getelementptr inbounds i8, i8* %182, i64 2, !dbg !3296, !psr.id !3308, !PointTainted !3088
  %184 = load i8, i8* %183, align 1, !dbg !3296, !psr.id !3309, !ValueTainted !3091
  %185 = zext i8 %184 to i32, !dbg !3296, !psr.id !3310, !ValueTainted !3091
  %186 = shl i32 %185, 16, !dbg !3296, !psr.id !3311, !ValueTainted !3091
  %187 = or i32 %181, %186, !dbg !3296, !psr.id !3312, !ValueTainted !3091
  %188 = getelementptr inbounds i8, i8* %99, i64 12, !dbg !3296, !psr.id !3313, !PointTainted !3088
  %189 = getelementptr inbounds i8, i8* %188, i64 3, !dbg !3296, !psr.id !3314, !PointTainted !3088
  %190 = load i8, i8* %189, align 1, !dbg !3296, !psr.id !3315, !ValueTainted !3091
  %191 = zext i8 %190 to i32, !dbg !3296, !psr.id !3316, !ValueTainted !3091
  %192 = shl i32 %191, 24, !dbg !3296, !psr.id !3317, !ValueTainted !3091
  %193 = or i32 %187, %192, !dbg !3296, !psr.id !3318, !ValueTainted !3091
  %194 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3319, !psr.id !3320
  %195 = getelementptr inbounds [16 x i32], [16 x i32]* %194, i64 0, i64 11, !dbg !3321, !psr.id !3322
  store i32 %193, i32* %195, align 4, !dbg !3323, !psr.id !3324
  %196 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3325
  %197 = getelementptr inbounds i8, i8* %196, i64 0, !dbg !3326, !psr.id !3327
  %198 = getelementptr inbounds i8, i8* %197, i64 0, !dbg !3326, !psr.id !3328
  %199 = load i8, i8* %198, align 1, !dbg !3326, !psr.id !3329
  %200 = zext i8 %199 to i32, !dbg !3326, !psr.id !3330
  %201 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3331
  %202 = getelementptr inbounds i8, i8* %201, i64 0, !dbg !3326, !psr.id !3332
  %203 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !3326, !psr.id !3333
  %204 = load i8, i8* %203, align 1, !dbg !3326, !psr.id !3334
  %205 = zext i8 %204 to i32, !dbg !3326, !psr.id !3335
  %206 = shl i32 %205, 8, !dbg !3326, !psr.id !3336
  %207 = or i32 %200, %206, !dbg !3326, !psr.id !3337
  %208 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3338
  %209 = getelementptr inbounds i8, i8* %208, i64 0, !dbg !3326, !psr.id !3339
  %210 = getelementptr inbounds i8, i8* %209, i64 2, !dbg !3326, !psr.id !3340
  %211 = load i8, i8* %210, align 1, !dbg !3326, !psr.id !3341
  %212 = zext i8 %211 to i32, !dbg !3326, !psr.id !3342
  %213 = shl i32 %212, 16, !dbg !3326, !psr.id !3343
  %214 = or i32 %207, %213, !dbg !3326, !psr.id !3344
  %215 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3345
  %216 = getelementptr inbounds i8, i8* %215, i64 0, !dbg !3326, !psr.id !3346
  %217 = getelementptr inbounds i8, i8* %216, i64 3, !dbg !3326, !psr.id !3347
  %218 = load i8, i8* %217, align 1, !dbg !3326, !psr.id !3348
  %219 = zext i8 %218 to i32, !dbg !3326, !psr.id !3349
  %220 = shl i32 %219, 24, !dbg !3326, !psr.id !3350
  %221 = or i32 %214, %220, !dbg !3326, !psr.id !3351
  %222 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3352, !psr.id !3353
  %223 = getelementptr inbounds [16 x i32], [16 x i32]* %222, i64 0, i64 0, !dbg !3354, !psr.id !3355
  store i32 %221, i32* %223, align 4, !dbg !3356, !psr.id !3357
  %224 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3358
  %225 = getelementptr inbounds i8, i8* %224, i64 4, !dbg !3359, !psr.id !3360
  %226 = getelementptr inbounds i8, i8* %225, i64 0, !dbg !3359, !psr.id !3361
  %227 = load i8, i8* %226, align 1, !dbg !3359, !psr.id !3362
  %228 = zext i8 %227 to i32, !dbg !3359, !psr.id !3363
  %229 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3364
  %230 = getelementptr inbounds i8, i8* %229, i64 4, !dbg !3359, !psr.id !3365
  %231 = getelementptr inbounds i8, i8* %230, i64 1, !dbg !3359, !psr.id !3366
  %232 = load i8, i8* %231, align 1, !dbg !3359, !psr.id !3367
  %233 = zext i8 %232 to i32, !dbg !3359, !psr.id !3368
  %234 = shl i32 %233, 8, !dbg !3359, !psr.id !3369
  %235 = or i32 %228, %234, !dbg !3359, !psr.id !3370
  %236 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3371
  %237 = getelementptr inbounds i8, i8* %236, i64 4, !dbg !3359, !psr.id !3372
  %238 = getelementptr inbounds i8, i8* %237, i64 2, !dbg !3359, !psr.id !3373
  %239 = load i8, i8* %238, align 1, !dbg !3359, !psr.id !3374
  %240 = zext i8 %239 to i32, !dbg !3359, !psr.id !3375
  %241 = shl i32 %240, 16, !dbg !3359, !psr.id !3376
  %242 = or i32 %235, %241, !dbg !3359, !psr.id !3377
  %243 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3378
  %244 = getelementptr inbounds i8, i8* %243, i64 4, !dbg !3359, !psr.id !3379
  %245 = getelementptr inbounds i8, i8* %244, i64 3, !dbg !3359, !psr.id !3380
  %246 = load i8, i8* %245, align 1, !dbg !3359, !psr.id !3381
  %247 = zext i8 %246 to i32, !dbg !3359, !psr.id !3382
  %248 = shl i32 %247, 24, !dbg !3359, !psr.id !3383
  %249 = or i32 %242, %248, !dbg !3359, !psr.id !3384
  %250 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3385, !psr.id !3386
  %251 = getelementptr inbounds [16 x i32], [16 x i32]* %250, i64 0, i64 1, !dbg !3387, !psr.id !3388
  store i32 %249, i32* %251, align 4, !dbg !3389, !psr.id !3390
  %252 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3391
  %253 = getelementptr inbounds i8, i8* %252, i64 8, !dbg !3392, !psr.id !3393
  %254 = getelementptr inbounds i8, i8* %253, i64 0, !dbg !3392, !psr.id !3394
  %255 = load i8, i8* %254, align 1, !dbg !3392, !psr.id !3395
  %256 = zext i8 %255 to i32, !dbg !3392, !psr.id !3396
  %257 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3397
  %258 = getelementptr inbounds i8, i8* %257, i64 8, !dbg !3392, !psr.id !3398
  %259 = getelementptr inbounds i8, i8* %258, i64 1, !dbg !3392, !psr.id !3399
  %260 = load i8, i8* %259, align 1, !dbg !3392, !psr.id !3400
  %261 = zext i8 %260 to i32, !dbg !3392, !psr.id !3401
  %262 = shl i32 %261, 8, !dbg !3392, !psr.id !3402
  %263 = or i32 %256, %262, !dbg !3392, !psr.id !3403
  %264 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3404
  %265 = getelementptr inbounds i8, i8* %264, i64 8, !dbg !3392, !psr.id !3405
  %266 = getelementptr inbounds i8, i8* %265, i64 2, !dbg !3392, !psr.id !3406
  %267 = load i8, i8* %266, align 1, !dbg !3392, !psr.id !3407
  %268 = zext i8 %267 to i32, !dbg !3392, !psr.id !3408
  %269 = shl i32 %268, 16, !dbg !3392, !psr.id !3409
  %270 = or i32 %263, %269, !dbg !3392, !psr.id !3410
  %271 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3411
  %272 = getelementptr inbounds i8, i8* %271, i64 8, !dbg !3392, !psr.id !3412
  %273 = getelementptr inbounds i8, i8* %272, i64 3, !dbg !3392, !psr.id !3413
  %274 = load i8, i8* %273, align 1, !dbg !3392, !psr.id !3414
  %275 = zext i8 %274 to i32, !dbg !3392, !psr.id !3415
  %276 = shl i32 %275, 24, !dbg !3392, !psr.id !3416
  %277 = or i32 %270, %276, !dbg !3392, !psr.id !3417
  %278 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3418, !psr.id !3419
  %279 = getelementptr inbounds [16 x i32], [16 x i32]* %278, i64 0, i64 2, !dbg !3420, !psr.id !3421
  store i32 %277, i32* %279, align 4, !dbg !3422, !psr.id !3423
  %280 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3424
  %281 = getelementptr inbounds i8, i8* %280, i64 12, !dbg !3425, !psr.id !3426
  %282 = getelementptr inbounds i8, i8* %281, i64 0, !dbg !3425, !psr.id !3427
  %283 = load i8, i8* %282, align 1, !dbg !3425, !psr.id !3428
  %284 = zext i8 %283 to i32, !dbg !3425, !psr.id !3429
  %285 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3430
  %286 = getelementptr inbounds i8, i8* %285, i64 12, !dbg !3425, !psr.id !3431
  %287 = getelementptr inbounds i8, i8* %286, i64 1, !dbg !3425, !psr.id !3432
  %288 = load i8, i8* %287, align 1, !dbg !3425, !psr.id !3433
  %289 = zext i8 %288 to i32, !dbg !3425, !psr.id !3434
  %290 = shl i32 %289, 8, !dbg !3425, !psr.id !3435
  %291 = or i32 %284, %290, !dbg !3425, !psr.id !3436
  %292 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3437
  %293 = getelementptr inbounds i8, i8* %292, i64 12, !dbg !3425, !psr.id !3438
  %294 = getelementptr inbounds i8, i8* %293, i64 2, !dbg !3425, !psr.id !3439
  %295 = load i8, i8* %294, align 1, !dbg !3425, !psr.id !3440
  %296 = zext i8 %295 to i32, !dbg !3425, !psr.id !3441
  %297 = shl i32 %296, 16, !dbg !3425, !psr.id !3442
  %298 = or i32 %291, %297, !dbg !3425, !psr.id !3443
  %299 = getelementptr inbounds [16 x i8], [16 x i8]* @sigma, i64 0, i64 0, !psr.id !3444
  %300 = getelementptr inbounds i8, i8* %299, i64 12, !dbg !3425, !psr.id !3445
  %301 = getelementptr inbounds i8, i8* %300, i64 3, !dbg !3425, !psr.id !3446
  %302 = load i8, i8* %301, align 1, !dbg !3425, !psr.id !3447
  %303 = zext i8 %302 to i32, !dbg !3425, !psr.id !3448
  %304 = shl i32 %303, 24, !dbg !3425, !psr.id !3449
  %305 = or i32 %298, %304, !dbg !3425, !psr.id !3450
  %306 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3451, !psr.id !3452
  %307 = getelementptr inbounds [16 x i32], [16 x i32]* %306, i64 0, i64 3, !dbg !3453, !psr.id !3454
  store i32 %305, i32* %307, align 4, !dbg !3455, !psr.id !3456
  ret void, !dbg !3457, !psr.id !3458
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_ivsetup(%struct.chacha_ctx* %0, i8* %1, i8* %2) #0 !dbg !3459 {
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !3462, metadata !DIExpression()), !dbg !3463, !psr.id !3464
  call void @llvm.dbg.value(metadata i8* %1, metadata !3465, metadata !DIExpression()), !dbg !3463, !psr.id !3466
  call void @llvm.dbg.value(metadata i8* %2, metadata !3467, metadata !DIExpression()), !dbg !3463, !psr.id !3468
  %4 = icmp eq i8* %2, null, !dbg !3469, !psr.id !3470
  br i1 %4, label %5, label %6, !dbg !3471, !psr.id !3472

5:                                                ; preds = %3
  br label %29, !dbg !3471, !psr.id !3473

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !3474, !psr.id !3475
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !3474, !psr.id !3476
  %9 = load i8, i8* %8, align 1, !dbg !3474, !psr.id !3477
  %10 = zext i8 %9 to i32, !dbg !3474, !psr.id !3478
  %11 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !3474, !psr.id !3479
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3474, !psr.id !3480
  %13 = load i8, i8* %12, align 1, !dbg !3474, !psr.id !3481
  %14 = zext i8 %13 to i32, !dbg !3474, !psr.id !3482
  %15 = shl i32 %14, 8, !dbg !3474, !psr.id !3483
  %16 = or i32 %10, %15, !dbg !3474, !psr.id !3484
  %17 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !3474, !psr.id !3485
  %18 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !3474, !psr.id !3486
  %19 = load i8, i8* %18, align 1, !dbg !3474, !psr.id !3487
  %20 = zext i8 %19 to i32, !dbg !3474, !psr.id !3488
  %21 = shl i32 %20, 16, !dbg !3474, !psr.id !3489
  %22 = or i32 %16, %21, !dbg !3474, !psr.id !3490
  %23 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !3474, !psr.id !3491
  %24 = getelementptr inbounds i8, i8* %23, i64 3, !dbg !3474, !psr.id !3492
  %25 = load i8, i8* %24, align 1, !dbg !3474, !psr.id !3493
  %26 = zext i8 %25 to i32, !dbg !3474, !psr.id !3494
  %27 = shl i32 %26, 24, !dbg !3474, !psr.id !3495
  %28 = or i32 %22, %27, !dbg !3474, !psr.id !3496
  br label %29, !dbg !3471, !psr.id !3497

29:                                               ; preds = %6, %5
  %30 = phi i32 [ 0, %5 ], [ %28, %6 ], !dbg !3471, !psr.id !3498
  %31 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3499, !psr.id !3500
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i64 0, i64 12, !dbg !3501, !psr.id !3502
  store i32 %30, i32* %32, align 4, !dbg !3503, !psr.id !3504
  %33 = icmp eq i8* %2, null, !dbg !3505, !psr.id !3506
  br i1 %33, label %34, label %35, !dbg !3507, !psr.id !3508

34:                                               ; preds = %29
  br label %58, !dbg !3507, !psr.id !3509

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !3510, !psr.id !3511
  %37 = getelementptr inbounds i8, i8* %36, i64 0, !dbg !3510, !psr.id !3512
  %38 = load i8, i8* %37, align 1, !dbg !3510, !psr.id !3513
  %39 = zext i8 %38 to i32, !dbg !3510, !psr.id !3514
  %40 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !3510, !psr.id !3515
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !3510, !psr.id !3516
  %42 = load i8, i8* %41, align 1, !dbg !3510, !psr.id !3517
  %43 = zext i8 %42 to i32, !dbg !3510, !psr.id !3518
  %44 = shl i32 %43, 8, !dbg !3510, !psr.id !3519
  %45 = or i32 %39, %44, !dbg !3510, !psr.id !3520
  %46 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !3510, !psr.id !3521
  %47 = getelementptr inbounds i8, i8* %46, i64 2, !dbg !3510, !psr.id !3522
  %48 = load i8, i8* %47, align 1, !dbg !3510, !psr.id !3523
  %49 = zext i8 %48 to i32, !dbg !3510, !psr.id !3524
  %50 = shl i32 %49, 16, !dbg !3510, !psr.id !3525
  %51 = or i32 %45, %50, !dbg !3510, !psr.id !3526
  %52 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !3510, !psr.id !3527
  %53 = getelementptr inbounds i8, i8* %52, i64 3, !dbg !3510, !psr.id !3528
  %54 = load i8, i8* %53, align 1, !dbg !3510, !psr.id !3529
  %55 = zext i8 %54 to i32, !dbg !3510, !psr.id !3530
  %56 = shl i32 %55, 24, !dbg !3510, !psr.id !3531
  %57 = or i32 %51, %56, !dbg !3510, !psr.id !3532
  br label %58, !dbg !3507, !psr.id !3533

58:                                               ; preds = %35, %34
  %59 = phi i32 [ 0, %34 ], [ %57, %35 ], !dbg !3507, !psr.id !3534
  %60 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3535, !psr.id !3536
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %60, i64 0, i64 13, !dbg !3537, !psr.id !3538
  store i32 %59, i32* %61, align 4, !dbg !3539, !psr.id !3540
  %62 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !3541, !psr.id !3542
  %63 = getelementptr inbounds i8, i8* %62, i64 0, !dbg !3541, !psr.id !3543
  %64 = load i8, i8* %63, align 1, !dbg !3541, !psr.id !3544
  %65 = zext i8 %64 to i32, !dbg !3541, !psr.id !3545
  %66 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !3541, !psr.id !3546
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !3541, !psr.id !3547
  %68 = load i8, i8* %67, align 1, !dbg !3541, !psr.id !3548
  %69 = zext i8 %68 to i32, !dbg !3541, !psr.id !3549
  %70 = shl i32 %69, 8, !dbg !3541, !psr.id !3550
  %71 = or i32 %65, %70, !dbg !3541, !psr.id !3551
  %72 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !3541, !psr.id !3552
  %73 = getelementptr inbounds i8, i8* %72, i64 2, !dbg !3541, !psr.id !3553
  %74 = load i8, i8* %73, align 1, !dbg !3541, !psr.id !3554
  %75 = zext i8 %74 to i32, !dbg !3541, !psr.id !3555
  %76 = shl i32 %75, 16, !dbg !3541, !psr.id !3556
  %77 = or i32 %71, %76, !dbg !3541, !psr.id !3557
  %78 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !3541, !psr.id !3558
  %79 = getelementptr inbounds i8, i8* %78, i64 3, !dbg !3541, !psr.id !3559
  %80 = load i8, i8* %79, align 1, !dbg !3541, !psr.id !3560
  %81 = zext i8 %80 to i32, !dbg !3541, !psr.id !3561
  %82 = shl i32 %81, 24, !dbg !3541, !psr.id !3562
  %83 = or i32 %77, %82, !dbg !3541, !psr.id !3563
  %84 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3564, !psr.id !3565
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %84, i64 0, i64 14, !dbg !3566, !psr.id !3567
  store i32 %83, i32* %85, align 4, !dbg !3568, !psr.id !3569
  %86 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !3570, !psr.id !3571
  %87 = getelementptr inbounds i8, i8* %86, i64 0, !dbg !3570, !psr.id !3572
  %88 = load i8, i8* %87, align 1, !dbg !3570, !psr.id !3573
  %89 = zext i8 %88 to i32, !dbg !3570, !psr.id !3574
  %90 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !3570, !psr.id !3575
  %91 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !3570, !psr.id !3576
  %92 = load i8, i8* %91, align 1, !dbg !3570, !psr.id !3577
  %93 = zext i8 %92 to i32, !dbg !3570, !psr.id !3578
  %94 = shl i32 %93, 8, !dbg !3570, !psr.id !3579
  %95 = or i32 %89, %94, !dbg !3570, !psr.id !3580
  %96 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !3570, !psr.id !3581
  %97 = getelementptr inbounds i8, i8* %96, i64 2, !dbg !3570, !psr.id !3582
  %98 = load i8, i8* %97, align 1, !dbg !3570, !psr.id !3583
  %99 = zext i8 %98 to i32, !dbg !3570, !psr.id !3584
  %100 = shl i32 %99, 16, !dbg !3570, !psr.id !3585
  %101 = or i32 %95, %100, !dbg !3570, !psr.id !3586
  %102 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !3570, !psr.id !3587
  %103 = getelementptr inbounds i8, i8* %102, i64 3, !dbg !3570, !psr.id !3588
  %104 = load i8, i8* %103, align 1, !dbg !3570, !psr.id !3589
  %105 = zext i8 %104 to i32, !dbg !3570, !psr.id !3590
  %106 = shl i32 %105, 24, !dbg !3570, !psr.id !3591
  %107 = or i32 %101, %106, !dbg !3570, !psr.id !3592
  %108 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3593, !psr.id !3594
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %108, i64 0, i64 15, !dbg !3595, !psr.id !3596
  store i32 %107, i32* %109, align 4, !dbg !3597, !psr.id !3598
  ret void, !dbg !3599, !psr.id !3600
}

; Function Attrs: noinline nounwind uwtable
define internal void @chacha_encrypt_bytes(%struct.chacha_ctx* %0, i8* %1, i8* %2, i64 %3) #0 !dbg !3601 {
  %5 = alloca [64 x i8], align 16, !psr.id !3605
  call void @llvm.dbg.value(metadata %struct.chacha_ctx* %0, metadata !3606, metadata !DIExpression()), !dbg !3607, !psr.id !3608
  call void @llvm.dbg.value(metadata i8* %1, metadata !3609, metadata !DIExpression()), !dbg !3607, !psr.id !3610
  call void @llvm.dbg.value(metadata i8* %2, metadata !3611, metadata !DIExpression()), !dbg !3607, !psr.id !3612
  call void @llvm.dbg.value(metadata i64 %3, metadata !3613, metadata !DIExpression()), !dbg !3607, !psr.id !3614
  call void @llvm.dbg.value(metadata i8* null, metadata !3615, metadata !DIExpression()), !dbg !3607, !psr.id !3616
  call void @llvm.dbg.declare(metadata [64 x i8]* %5, metadata !3617, metadata !DIExpression()), !dbg !3619, !psr.id !3620
  %6 = icmp ne i64 %3, 0, !dbg !3621, !psr.id !3623
  br i1 %6, label %8, label %7, !dbg !3624, !psr.id !3625

7:                                                ; preds = %4
  br label %1151, !dbg !3626, !psr.id !3628

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3629, !psr.id !3630
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0, !dbg !3631, !psr.id !3632
  %11 = load i32, i32* %10, align 4, !dbg !3631, !psr.id !3633, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %11, metadata !3634, metadata !DIExpression()), !dbg !3607, !psr.id !3635
  %12 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3636, !psr.id !3637
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 1, !dbg !3638, !psr.id !3639
  %14 = load i32, i32* %13, align 4, !dbg !3638, !psr.id !3640, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %14, metadata !3641, metadata !DIExpression()), !dbg !3607, !psr.id !3642
  %15 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3643, !psr.id !3644
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 2, !dbg !3645, !psr.id !3646
  %17 = load i32, i32* %16, align 4, !dbg !3645, !psr.id !3647, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %17, metadata !3648, metadata !DIExpression()), !dbg !3607, !psr.id !3649
  %18 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3650, !psr.id !3651
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 3, !dbg !3652, !psr.id !3653
  %20 = load i32, i32* %19, align 4, !dbg !3652, !psr.id !3654, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %20, metadata !3655, metadata !DIExpression()), !dbg !3607, !psr.id !3656
  %21 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3657, !psr.id !3658
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 4, !dbg !3659, !psr.id !3660
  %23 = load i32, i32* %22, align 4, !dbg !3659, !psr.id !3661, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %23, metadata !3662, metadata !DIExpression()), !dbg !3607, !psr.id !3663
  %24 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3664, !psr.id !3665
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 5, !dbg !3666, !psr.id !3667
  %26 = load i32, i32* %25, align 4, !dbg !3666, !psr.id !3668, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %26, metadata !3669, metadata !DIExpression()), !dbg !3607, !psr.id !3670
  %27 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3671, !psr.id !3672
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %27, i64 0, i64 6, !dbg !3673, !psr.id !3674
  %29 = load i32, i32* %28, align 4, !dbg !3673, !psr.id !3675, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %29, metadata !3676, metadata !DIExpression()), !dbg !3607, !psr.id !3677
  %30 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3678, !psr.id !3679
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %30, i64 0, i64 7, !dbg !3680, !psr.id !3681
  %32 = load i32, i32* %31, align 4, !dbg !3680, !psr.id !3682, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %32, metadata !3683, metadata !DIExpression()), !dbg !3607, !psr.id !3684
  %33 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3685, !psr.id !3686
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %33, i64 0, i64 8, !dbg !3687, !psr.id !3688
  %35 = load i32, i32* %34, align 4, !dbg !3687, !psr.id !3689, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %35, metadata !3690, metadata !DIExpression()), !dbg !3607, !psr.id !3691
  %36 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3692, !psr.id !3693
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %36, i64 0, i64 9, !dbg !3694, !psr.id !3695
  %38 = load i32, i32* %37, align 4, !dbg !3694, !psr.id !3696, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %38, metadata !3697, metadata !DIExpression()), !dbg !3607, !psr.id !3698
  %39 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3699, !psr.id !3700
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i64 0, i64 10, !dbg !3701, !psr.id !3702
  %41 = load i32, i32* %40, align 4, !dbg !3701, !psr.id !3703, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %41, metadata !3704, metadata !DIExpression()), !dbg !3607, !psr.id !3705
  %42 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3706, !psr.id !3707
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %42, i64 0, i64 11, !dbg !3708, !psr.id !3709
  %44 = load i32, i32* %43, align 4, !dbg !3708, !psr.id !3710, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %44, metadata !3711, metadata !DIExpression()), !dbg !3607, !psr.id !3712
  %45 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3713, !psr.id !3714
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %45, i64 0, i64 12, !dbg !3715, !psr.id !3716
  %47 = load i32, i32* %46, align 4, !dbg !3715, !psr.id !3717, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %47, metadata !3718, metadata !DIExpression()), !dbg !3607, !psr.id !3719
  %48 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3720, !psr.id !3721
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %48, i64 0, i64 13, !dbg !3722, !psr.id !3723
  %50 = load i32, i32* %49, align 4, !dbg !3722, !psr.id !3724, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %50, metadata !3725, metadata !DIExpression()), !dbg !3607, !psr.id !3726
  %51 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3727, !psr.id !3728
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %51, i64 0, i64 14, !dbg !3729, !psr.id !3730
  %53 = load i32, i32* %52, align 4, !dbg !3729, !psr.id !3731, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %53, metadata !3732, metadata !DIExpression()), !dbg !3607, !psr.id !3733
  %54 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !3734, !psr.id !3735
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %54, i64 0, i64 15, !dbg !3736, !psr.id !3737
  %56 = load i32, i32* %55, align 4, !dbg !3736, !psr.id !3738, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %56, metadata !3739, metadata !DIExpression()), !dbg !3607, !psr.id !3740
  br label %57, !dbg !3741, !psr.id !3742

57:                                               ; preds = %1147, %8
  %.026 = phi i32 [ %47, %8 ], [ %657, %1147 ], !dbg !3607, !psr.id !3743, !ValueTainted !3091
  %.024 = phi i32 [ %50, %8 ], [ %.125, %1147 ], !dbg !3744, !psr.id !3745, !ValueTainted !3091
  %.022 = phi i8* [ null, %8 ], [ %.123, %1147 ], !dbg !3607, !psr.id !3746, !PointTainted !3088
  %.05 = phi i64 [ %3, %8 ], [ %1148, %1147 ], !psr.id !3747
  %.03 = phi i8* [ %2, %8 ], [ %1149, %1147 ], !psr.id !3748, !PointTainted !3088
  %.01 = phi i8* [ %1, %8 ], [ %1150, %1147 ], !psr.id !3749
  call void @llvm.dbg.value(metadata i8* %.01, metadata !3609, metadata !DIExpression()), !dbg !3607, !psr.id !3750
  call void @llvm.dbg.value(metadata i8* %.03, metadata !3611, metadata !DIExpression()), !dbg !3607, !psr.id !3751
  call void @llvm.dbg.value(metadata i64 %.05, metadata !3613, metadata !DIExpression()), !dbg !3607, !psr.id !3752
  call void @llvm.dbg.value(metadata i8* %.022, metadata !3615, metadata !DIExpression()), !dbg !3607, !psr.id !3753
  call void @llvm.dbg.value(metadata i32 %.024, metadata !3725, metadata !DIExpression()), !dbg !3607, !psr.id !3754
  call void @llvm.dbg.value(metadata i32 %.026, metadata !3718, metadata !DIExpression()), !dbg !3607, !psr.id !3755
  %58 = icmp ult i64 %.05, 64, !dbg !3756, !psr.id !3761
  br i1 %58, label %59, label %74, !dbg !3762, !psr.id !3763

59:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i32 0, metadata !3764, metadata !DIExpression()), !dbg !3607, !psr.id !3765
  br label %60, !dbg !3766, !psr.id !3769

60:                                               ; preds = %69, %59
  %.0 = phi i32 [ 0, %59 ], [ %70, %69 ], !dbg !3770, !psr.id !3771
  call void @llvm.dbg.value(metadata i32 %.0, metadata !3764, metadata !DIExpression()), !dbg !3607, !psr.id !3772
  %61 = zext i32 %.0 to i64, !dbg !3773, !psr.id !3775
  %62 = icmp ult i64 %61, %.05, !dbg !3776, !psr.id !3777
  br i1 %62, label %63, label %71, !dbg !3778, !psr.id !3779

63:                                               ; preds = %60
  %64 = zext i32 %.0 to i64, !dbg !3780, !psr.id !3782
  %65 = getelementptr inbounds i8, i8* %.01, i64 %64, !dbg !3780, !psr.id !3783
  %66 = load i8, i8* %65, align 1, !dbg !3780, !psr.id !3784, !ValueTainted !3091
  %67 = zext i32 %.0 to i64, !dbg !3785, !psr.id !3786
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %67, !dbg !3785, !psr.id !3787, !PointTainted !3088
  store i8 %66, i8* %68, align 1, !dbg !3788, !psr.id !3789
  br label %69, !dbg !3790, !psr.id !3791

69:                                               ; preds = %63
  %70 = add i32 %.0, 1, !dbg !3792, !psr.id !3793
  call void @llvm.dbg.value(metadata i32 %70, metadata !3764, metadata !DIExpression()), !dbg !3607, !psr.id !3794
  br label %60, !dbg !3795, !llvm.loop !3796, !psr.id !3798

71:                                               ; preds = %60
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !3799, !psr.id !3800
  call void @llvm.dbg.value(metadata i8* %72, metadata !3609, metadata !DIExpression()), !dbg !3607, !psr.id !3801
  call void @llvm.dbg.value(metadata i8* %.03, metadata !3615, metadata !DIExpression()), !dbg !3607, !psr.id !3802
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0, !dbg !3803, !psr.id !3804
  call void @llvm.dbg.value(metadata i8* %73, metadata !3611, metadata !DIExpression()), !dbg !3607, !psr.id !3805
  br label %74, !dbg !3806, !psr.id !3807

74:                                               ; preds = %71, %57
  %.123 = phi i8* [ %.03, %71 ], [ %.022, %57 ], !dbg !3607, !psr.id !3808, !PointTainted !3088
  %.14 = phi i8* [ %73, %71 ], [ %.03, %57 ], !psr.id !3809, !PointTainted !3088
  %.12 = phi i8* [ %72, %71 ], [ %.01, %57 ], !psr.id !3810
  call void @llvm.dbg.value(metadata i8* %.12, metadata !3609, metadata !DIExpression()), !dbg !3607, !psr.id !3811
  call void @llvm.dbg.value(metadata i8* %.14, metadata !3611, metadata !DIExpression()), !dbg !3607, !psr.id !3812
  call void @llvm.dbg.value(metadata i8* %.123, metadata !3615, metadata !DIExpression()), !dbg !3607, !psr.id !3813
  call void @llvm.dbg.value(metadata i32 %11, metadata !3814, metadata !DIExpression()), !dbg !3607, !psr.id !3815
  call void @llvm.dbg.value(metadata i32 %14, metadata !3816, metadata !DIExpression()), !dbg !3607, !psr.id !3817
  call void @llvm.dbg.value(metadata i32 %17, metadata !3818, metadata !DIExpression()), !dbg !3607, !psr.id !3819
  call void @llvm.dbg.value(metadata i32 %20, metadata !3820, metadata !DIExpression()), !dbg !3607, !psr.id !3821
  call void @llvm.dbg.value(metadata i32 %23, metadata !3822, metadata !DIExpression()), !dbg !3607, !psr.id !3823
  call void @llvm.dbg.value(metadata i32 %26, metadata !3824, metadata !DIExpression()), !dbg !3607, !psr.id !3825
  call void @llvm.dbg.value(metadata i32 %29, metadata !3826, metadata !DIExpression()), !dbg !3607, !psr.id !3827
  call void @llvm.dbg.value(metadata i32 %32, metadata !3828, metadata !DIExpression()), !dbg !3607, !psr.id !3829
  call void @llvm.dbg.value(metadata i32 %35, metadata !3830, metadata !DIExpression()), !dbg !3607, !psr.id !3831
  call void @llvm.dbg.value(metadata i32 %38, metadata !3832, metadata !DIExpression()), !dbg !3607, !psr.id !3833
  call void @llvm.dbg.value(metadata i32 %41, metadata !3834, metadata !DIExpression()), !dbg !3607, !psr.id !3835
  call void @llvm.dbg.value(metadata i32 %44, metadata !3836, metadata !DIExpression()), !dbg !3607, !psr.id !3837
  call void @llvm.dbg.value(metadata i32 %.026, metadata !3838, metadata !DIExpression()), !dbg !3607, !psr.id !3839
  call void @llvm.dbg.value(metadata i32 %.024, metadata !3840, metadata !DIExpression()), !dbg !3607, !psr.id !3841
  call void @llvm.dbg.value(metadata i32 %53, metadata !3842, metadata !DIExpression()), !dbg !3607, !psr.id !3843
  call void @llvm.dbg.value(metadata i32 %56, metadata !3844, metadata !DIExpression()), !dbg !3607, !psr.id !3845
  call void @llvm.dbg.value(metadata i32 20, metadata !3764, metadata !DIExpression()), !dbg !3607, !psr.id !3846
  br label %75, !dbg !3847, !psr.id !3849

75:                                               ; preds = %270, %74
  %.021 = phi i32 [ %56, %74 ], [ %191, %270 ], !dbg !3850, !psr.id !3851, !ValueTainted !3091
  %.020 = phi i32 [ %53, %74 ], [ %263, %270 ], !dbg !3850, !psr.id !3852, !ValueTainted !3091
  %.019 = phi i32 [ %.024, %74 ], [ %239, %270 ], !dbg !3850, !psr.id !3853, !ValueTainted !3091
  %.018 = phi i32 [ %.026, %74 ], [ %215, %270 ], !dbg !3850, !psr.id !3854, !ValueTainted !3091
  %.017 = phi i32 [ %44, %74 ], [ %216, %270 ], !dbg !3850, !psr.id !3855, !ValueTainted !3091
  %.016 = phi i32 [ %41, %74 ], [ %192, %270 ], !dbg !3850, !psr.id !3856, !ValueTainted !3091
  %.015 = phi i32 [ %38, %74 ], [ %264, %270 ], !dbg !3850, !psr.id !3857, !ValueTainted !3091
  %.014 = phi i32 [ %35, %74 ], [ %240, %270 ], !dbg !3850, !psr.id !3858, !ValueTainted !3091
  %.013 = phi i32 [ %32, %74 ], [ %245, %270 ], !dbg !3850, !psr.id !3859, !ValueTainted !3091
  %.012 = phi i32 [ %29, %74 ], [ %221, %270 ], !dbg !3850, !psr.id !3860, !ValueTainted !3091
  %.011 = phi i32 [ %26, %74 ], [ %197, %270 ], !dbg !3850, !psr.id !3861, !ValueTainted !3091
  %.010 = phi i32 [ %23, %74 ], [ %269, %270 ], !dbg !3850, !psr.id !3862, !ValueTainted !3091
  %.09 = phi i32 [ %20, %74 ], [ %258, %270 ], !dbg !3850, !psr.id !3863, !ValueTainted !3091
  %.08 = phi i32 [ %17, %74 ], [ %234, %270 ], !dbg !3850, !psr.id !3864, !ValueTainted !3091
  %.07 = phi i32 [ %14, %74 ], [ %210, %270 ], !dbg !3850, !psr.id !3865, !ValueTainted !3091
  %.06 = phi i32 [ %11, %74 ], [ %186, %270 ], !dbg !3850, !psr.id !3866, !ValueTainted !3091
  %.1 = phi i32 [ 20, %74 ], [ %271, %270 ], !dbg !3867, !psr.id !3868
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3764, metadata !DIExpression()), !dbg !3607, !psr.id !3869
  call void @llvm.dbg.value(metadata i32 %.06, metadata !3814, metadata !DIExpression()), !dbg !3607, !psr.id !3870
  call void @llvm.dbg.value(metadata i32 %.07, metadata !3816, metadata !DIExpression()), !dbg !3607, !psr.id !3871
  call void @llvm.dbg.value(metadata i32 %.08, metadata !3818, metadata !DIExpression()), !dbg !3607, !psr.id !3872
  call void @llvm.dbg.value(metadata i32 %.09, metadata !3820, metadata !DIExpression()), !dbg !3607, !psr.id !3873
  call void @llvm.dbg.value(metadata i32 %.010, metadata !3822, metadata !DIExpression()), !dbg !3607, !psr.id !3874
  call void @llvm.dbg.value(metadata i32 %.011, metadata !3824, metadata !DIExpression()), !dbg !3607, !psr.id !3875
  call void @llvm.dbg.value(metadata i32 %.012, metadata !3826, metadata !DIExpression()), !dbg !3607, !psr.id !3876
  call void @llvm.dbg.value(metadata i32 %.013, metadata !3828, metadata !DIExpression()), !dbg !3607, !psr.id !3877
  call void @llvm.dbg.value(metadata i32 %.014, metadata !3830, metadata !DIExpression()), !dbg !3607, !psr.id !3878
  call void @llvm.dbg.value(metadata i32 %.015, metadata !3832, metadata !DIExpression()), !dbg !3607, !psr.id !3879
  call void @llvm.dbg.value(metadata i32 %.016, metadata !3834, metadata !DIExpression()), !dbg !3607, !psr.id !3880
  call void @llvm.dbg.value(metadata i32 %.017, metadata !3836, metadata !DIExpression()), !dbg !3607, !psr.id !3881
  call void @llvm.dbg.value(metadata i32 %.018, metadata !3838, metadata !DIExpression()), !dbg !3607, !psr.id !3882
  call void @llvm.dbg.value(metadata i32 %.019, metadata !3840, metadata !DIExpression()), !dbg !3607, !psr.id !3883
  call void @llvm.dbg.value(metadata i32 %.020, metadata !3842, metadata !DIExpression()), !dbg !3607, !psr.id !3884
  call void @llvm.dbg.value(metadata i32 %.021, metadata !3844, metadata !DIExpression()), !dbg !3607, !psr.id !3885
  %76 = icmp ugt i32 %.1, 0, !dbg !3886, !psr.id !3888
  br i1 %76, label %77, label %272, !dbg !3889, !psr.id !3890

77:                                               ; preds = %75
  %78 = add i32 %.06, %.010, !dbg !3891, !psr.id !3893, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %78, metadata !3814, metadata !DIExpression()), !dbg !3607, !psr.id !3894
  %79 = xor i32 %.018, %78, !dbg !3891, !psr.id !3895, !ValueTainted !3091
  %80 = shl i32 %79, 16, !dbg !3891, !psr.id !3896, !ValueTainted !3091
  %81 = xor i32 %.018, %78, !dbg !3891, !psr.id !3897, !ValueTainted !3091
  %82 = lshr i32 %81, 16, !dbg !3891, !psr.id !3898, !ValueTainted !3091
  %83 = or i32 %80, %82, !dbg !3891, !psr.id !3899, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %83, metadata !3838, metadata !DIExpression()), !dbg !3607, !psr.id !3900
  %84 = add i32 %.014, %83, !dbg !3891, !psr.id !3901, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %84, metadata !3830, metadata !DIExpression()), !dbg !3607, !psr.id !3902
  %85 = xor i32 %.010, %84, !dbg !3891, !psr.id !3903, !ValueTainted !3091
  %86 = shl i32 %85, 12, !dbg !3891, !psr.id !3904, !ValueTainted !3091
  %87 = xor i32 %.010, %84, !dbg !3891, !psr.id !3905, !ValueTainted !3091
  %88 = lshr i32 %87, 20, !dbg !3891, !psr.id !3906, !ValueTainted !3091
  %89 = or i32 %86, %88, !dbg !3891, !psr.id !3907, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %89, metadata !3822, metadata !DIExpression()), !dbg !3607, !psr.id !3908
  %90 = add i32 %78, %89, !dbg !3891, !psr.id !3909, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %90, metadata !3814, metadata !DIExpression()), !dbg !3607, !psr.id !3910
  %91 = xor i32 %83, %90, !dbg !3891, !psr.id !3911, !ValueTainted !3091
  %92 = shl i32 %91, 8, !dbg !3891, !psr.id !3912, !ValueTainted !3091
  %93 = xor i32 %83, %90, !dbg !3891, !psr.id !3913, !ValueTainted !3091
  %94 = lshr i32 %93, 24, !dbg !3891, !psr.id !3914, !ValueTainted !3091
  %95 = or i32 %92, %94, !dbg !3891, !psr.id !3915, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %95, metadata !3838, metadata !DIExpression()), !dbg !3607, !psr.id !3916
  %96 = add i32 %84, %95, !dbg !3891, !psr.id !3917, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %96, metadata !3830, metadata !DIExpression()), !dbg !3607, !psr.id !3918
  %97 = xor i32 %89, %96, !dbg !3891, !psr.id !3919, !ValueTainted !3091
  %98 = shl i32 %97, 7, !dbg !3891, !psr.id !3920, !ValueTainted !3091
  %99 = xor i32 %89, %96, !dbg !3891, !psr.id !3921, !ValueTainted !3091
  %100 = lshr i32 %99, 25, !dbg !3891, !psr.id !3922, !ValueTainted !3091
  %101 = or i32 %98, %100, !dbg !3891, !psr.id !3923, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %101, metadata !3822, metadata !DIExpression()), !dbg !3607, !psr.id !3924
  %102 = add i32 %.07, %.011, !dbg !3925, !psr.id !3926, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %102, metadata !3816, metadata !DIExpression()), !dbg !3607, !psr.id !3927
  %103 = xor i32 %.019, %102, !dbg !3925, !psr.id !3928, !ValueTainted !3091
  %104 = shl i32 %103, 16, !dbg !3925, !psr.id !3929, !ValueTainted !3091
  %105 = xor i32 %.019, %102, !dbg !3925, !psr.id !3930, !ValueTainted !3091
  %106 = lshr i32 %105, 16, !dbg !3925, !psr.id !3931, !ValueTainted !3091
  %107 = or i32 %104, %106, !dbg !3925, !psr.id !3932, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %107, metadata !3840, metadata !DIExpression()), !dbg !3607, !psr.id !3933
  %108 = add i32 %.015, %107, !dbg !3925, !psr.id !3934, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %108, metadata !3832, metadata !DIExpression()), !dbg !3607, !psr.id !3935
  %109 = xor i32 %.011, %108, !dbg !3925, !psr.id !3936, !ValueTainted !3091
  %110 = shl i32 %109, 12, !dbg !3925, !psr.id !3937, !ValueTainted !3091
  %111 = xor i32 %.011, %108, !dbg !3925, !psr.id !3938, !ValueTainted !3091
  %112 = lshr i32 %111, 20, !dbg !3925, !psr.id !3939, !ValueTainted !3091
  %113 = or i32 %110, %112, !dbg !3925, !psr.id !3940, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %113, metadata !3824, metadata !DIExpression()), !dbg !3607, !psr.id !3941
  %114 = add i32 %102, %113, !dbg !3925, !psr.id !3942, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %114, metadata !3816, metadata !DIExpression()), !dbg !3607, !psr.id !3943
  %115 = xor i32 %107, %114, !dbg !3925, !psr.id !3944, !ValueTainted !3091
  %116 = shl i32 %115, 8, !dbg !3925, !psr.id !3945, !ValueTainted !3091
  %117 = xor i32 %107, %114, !dbg !3925, !psr.id !3946, !ValueTainted !3091
  %118 = lshr i32 %117, 24, !dbg !3925, !psr.id !3947, !ValueTainted !3091
  %119 = or i32 %116, %118, !dbg !3925, !psr.id !3948, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %119, metadata !3840, metadata !DIExpression()), !dbg !3607, !psr.id !3949
  %120 = add i32 %108, %119, !dbg !3925, !psr.id !3950, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %120, metadata !3832, metadata !DIExpression()), !dbg !3607, !psr.id !3951
  %121 = xor i32 %113, %120, !dbg !3925, !psr.id !3952, !ValueTainted !3091
  %122 = shl i32 %121, 7, !dbg !3925, !psr.id !3953, !ValueTainted !3091
  %123 = xor i32 %113, %120, !dbg !3925, !psr.id !3954, !ValueTainted !3091
  %124 = lshr i32 %123, 25, !dbg !3925, !psr.id !3955, !ValueTainted !3091
  %125 = or i32 %122, %124, !dbg !3925, !psr.id !3956, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %125, metadata !3824, metadata !DIExpression()), !dbg !3607, !psr.id !3957
  %126 = add i32 %.08, %.012, !dbg !3958, !psr.id !3959, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %126, metadata !3818, metadata !DIExpression()), !dbg !3607, !psr.id !3960
  %127 = xor i32 %.020, %126, !dbg !3958, !psr.id !3961, !ValueTainted !3091
  %128 = shl i32 %127, 16, !dbg !3958, !psr.id !3962, !ValueTainted !3091
  %129 = xor i32 %.020, %126, !dbg !3958, !psr.id !3963, !ValueTainted !3091
  %130 = lshr i32 %129, 16, !dbg !3958, !psr.id !3964, !ValueTainted !3091
  %131 = or i32 %128, %130, !dbg !3958, !psr.id !3965, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %131, metadata !3842, metadata !DIExpression()), !dbg !3607, !psr.id !3966
  %132 = add i32 %.016, %131, !dbg !3958, !psr.id !3967, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %132, metadata !3834, metadata !DIExpression()), !dbg !3607, !psr.id !3968
  %133 = xor i32 %.012, %132, !dbg !3958, !psr.id !3969, !ValueTainted !3091
  %134 = shl i32 %133, 12, !dbg !3958, !psr.id !3970, !ValueTainted !3091
  %135 = xor i32 %.012, %132, !dbg !3958, !psr.id !3971, !ValueTainted !3091
  %136 = lshr i32 %135, 20, !dbg !3958, !psr.id !3972, !ValueTainted !3091
  %137 = or i32 %134, %136, !dbg !3958, !psr.id !3973, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %137, metadata !3826, metadata !DIExpression()), !dbg !3607, !psr.id !3974
  %138 = add i32 %126, %137, !dbg !3958, !psr.id !3975, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %138, metadata !3818, metadata !DIExpression()), !dbg !3607, !psr.id !3976
  %139 = xor i32 %131, %138, !dbg !3958, !psr.id !3977, !ValueTainted !3091
  %140 = shl i32 %139, 8, !dbg !3958, !psr.id !3978, !ValueTainted !3091
  %141 = xor i32 %131, %138, !dbg !3958, !psr.id !3979, !ValueTainted !3091
  %142 = lshr i32 %141, 24, !dbg !3958, !psr.id !3980, !ValueTainted !3091
  %143 = or i32 %140, %142, !dbg !3958, !psr.id !3981, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %143, metadata !3842, metadata !DIExpression()), !dbg !3607, !psr.id !3982
  %144 = add i32 %132, %143, !dbg !3958, !psr.id !3983, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %144, metadata !3834, metadata !DIExpression()), !dbg !3607, !psr.id !3984
  %145 = xor i32 %137, %144, !dbg !3958, !psr.id !3985, !ValueTainted !3091
  %146 = shl i32 %145, 7, !dbg !3958, !psr.id !3986, !ValueTainted !3091
  %147 = xor i32 %137, %144, !dbg !3958, !psr.id !3987, !ValueTainted !3091
  %148 = lshr i32 %147, 25, !dbg !3958, !psr.id !3988, !ValueTainted !3091
  %149 = or i32 %146, %148, !dbg !3958, !psr.id !3989, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %149, metadata !3826, metadata !DIExpression()), !dbg !3607, !psr.id !3990
  %150 = add i32 %.09, %.013, !dbg !3991, !psr.id !3992, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %150, metadata !3820, metadata !DIExpression()), !dbg !3607, !psr.id !3993
  %151 = xor i32 %.021, %150, !dbg !3991, !psr.id !3994, !ValueTainted !3091
  %152 = shl i32 %151, 16, !dbg !3991, !psr.id !3995, !ValueTainted !3091
  %153 = xor i32 %.021, %150, !dbg !3991, !psr.id !3996, !ValueTainted !3091
  %154 = lshr i32 %153, 16, !dbg !3991, !psr.id !3997, !ValueTainted !3091
  %155 = or i32 %152, %154, !dbg !3991, !psr.id !3998, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %155, metadata !3844, metadata !DIExpression()), !dbg !3607, !psr.id !3999
  %156 = add i32 %.017, %155, !dbg !3991, !psr.id !4000, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %156, metadata !3836, metadata !DIExpression()), !dbg !3607, !psr.id !4001
  %157 = xor i32 %.013, %156, !dbg !3991, !psr.id !4002, !ValueTainted !3091
  %158 = shl i32 %157, 12, !dbg !3991, !psr.id !4003, !ValueTainted !3091
  %159 = xor i32 %.013, %156, !dbg !3991, !psr.id !4004, !ValueTainted !3091
  %160 = lshr i32 %159, 20, !dbg !3991, !psr.id !4005, !ValueTainted !3091
  %161 = or i32 %158, %160, !dbg !3991, !psr.id !4006, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %161, metadata !3828, metadata !DIExpression()), !dbg !3607, !psr.id !4007
  %162 = add i32 %150, %161, !dbg !3991, !psr.id !4008, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %162, metadata !3820, metadata !DIExpression()), !dbg !3607, !psr.id !4009
  %163 = xor i32 %155, %162, !dbg !3991, !psr.id !4010, !ValueTainted !3091
  %164 = shl i32 %163, 8, !dbg !3991, !psr.id !4011, !ValueTainted !3091
  %165 = xor i32 %155, %162, !dbg !3991, !psr.id !4012, !ValueTainted !3091
  %166 = lshr i32 %165, 24, !dbg !3991, !psr.id !4013, !ValueTainted !3091
  %167 = or i32 %164, %166, !dbg !3991, !psr.id !4014, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %167, metadata !3844, metadata !DIExpression()), !dbg !3607, !psr.id !4015
  %168 = add i32 %156, %167, !dbg !3991, !psr.id !4016, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %168, metadata !3836, metadata !DIExpression()), !dbg !3607, !psr.id !4017
  %169 = xor i32 %161, %168, !dbg !3991, !psr.id !4018, !ValueTainted !3091
  %170 = shl i32 %169, 7, !dbg !3991, !psr.id !4019, !ValueTainted !3091
  %171 = xor i32 %161, %168, !dbg !3991, !psr.id !4020, !ValueTainted !3091
  %172 = lshr i32 %171, 25, !dbg !3991, !psr.id !4021, !ValueTainted !3091
  %173 = or i32 %170, %172, !dbg !3991, !psr.id !4022, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %173, metadata !3828, metadata !DIExpression()), !dbg !3607, !psr.id !4023
  %174 = add i32 %90, %125, !dbg !4024, !psr.id !4025, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %174, metadata !3814, metadata !DIExpression()), !dbg !3607, !psr.id !4026
  %175 = xor i32 %167, %174, !dbg !4024, !psr.id !4027, !ValueTainted !3091
  %176 = shl i32 %175, 16, !dbg !4024, !psr.id !4028, !ValueTainted !3091
  %177 = xor i32 %167, %174, !dbg !4024, !psr.id !4029, !ValueTainted !3091
  %178 = lshr i32 %177, 16, !dbg !4024, !psr.id !4030, !ValueTainted !3091
  %179 = or i32 %176, %178, !dbg !4024, !psr.id !4031, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %179, metadata !3844, metadata !DIExpression()), !dbg !3607, !psr.id !4032
  %180 = add i32 %144, %179, !dbg !4024, !psr.id !4033, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %180, metadata !3834, metadata !DIExpression()), !dbg !3607, !psr.id !4034
  %181 = xor i32 %125, %180, !dbg !4024, !psr.id !4035, !ValueTainted !3091
  %182 = shl i32 %181, 12, !dbg !4024, !psr.id !4036, !ValueTainted !3091
  %183 = xor i32 %125, %180, !dbg !4024, !psr.id !4037, !ValueTainted !3091
  %184 = lshr i32 %183, 20, !dbg !4024, !psr.id !4038, !ValueTainted !3091
  %185 = or i32 %182, %184, !dbg !4024, !psr.id !4039, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %185, metadata !3824, metadata !DIExpression()), !dbg !3607, !psr.id !4040
  %186 = add i32 %174, %185, !dbg !4024, !psr.id !4041, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %186, metadata !3814, metadata !DIExpression()), !dbg !3607, !psr.id !4042
  %187 = xor i32 %179, %186, !dbg !4024, !psr.id !4043, !ValueTainted !3091
  %188 = shl i32 %187, 8, !dbg !4024, !psr.id !4044, !ValueTainted !3091
  %189 = xor i32 %179, %186, !dbg !4024, !psr.id !4045, !ValueTainted !3091
  %190 = lshr i32 %189, 24, !dbg !4024, !psr.id !4046, !ValueTainted !3091
  %191 = or i32 %188, %190, !dbg !4024, !psr.id !4047, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %191, metadata !3844, metadata !DIExpression()), !dbg !3607, !psr.id !4048
  %192 = add i32 %180, %191, !dbg !4024, !psr.id !4049, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %192, metadata !3834, metadata !DIExpression()), !dbg !3607, !psr.id !4050
  %193 = xor i32 %185, %192, !dbg !4024, !psr.id !4051, !ValueTainted !3091
  %194 = shl i32 %193, 7, !dbg !4024, !psr.id !4052, !ValueTainted !3091
  %195 = xor i32 %185, %192, !dbg !4024, !psr.id !4053, !ValueTainted !3091
  %196 = lshr i32 %195, 25, !dbg !4024, !psr.id !4054, !ValueTainted !3091
  %197 = or i32 %194, %196, !dbg !4024, !psr.id !4055, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %197, metadata !3824, metadata !DIExpression()), !dbg !3607, !psr.id !4056
  %198 = add i32 %114, %149, !dbg !4057, !psr.id !4058, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %198, metadata !3816, metadata !DIExpression()), !dbg !3607, !psr.id !4059
  %199 = xor i32 %95, %198, !dbg !4057, !psr.id !4060, !ValueTainted !3091
  %200 = shl i32 %199, 16, !dbg !4057, !psr.id !4061, !ValueTainted !3091
  %201 = xor i32 %95, %198, !dbg !4057, !psr.id !4062, !ValueTainted !3091
  %202 = lshr i32 %201, 16, !dbg !4057, !psr.id !4063, !ValueTainted !3091
  %203 = or i32 %200, %202, !dbg !4057, !psr.id !4064, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %203, metadata !3838, metadata !DIExpression()), !dbg !3607, !psr.id !4065
  %204 = add i32 %168, %203, !dbg !4057, !psr.id !4066, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %204, metadata !3836, metadata !DIExpression()), !dbg !3607, !psr.id !4067
  %205 = xor i32 %149, %204, !dbg !4057, !psr.id !4068, !ValueTainted !3091
  %206 = shl i32 %205, 12, !dbg !4057, !psr.id !4069, !ValueTainted !3091
  %207 = xor i32 %149, %204, !dbg !4057, !psr.id !4070, !ValueTainted !3091
  %208 = lshr i32 %207, 20, !dbg !4057, !psr.id !4071, !ValueTainted !3091
  %209 = or i32 %206, %208, !dbg !4057, !psr.id !4072, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %209, metadata !3826, metadata !DIExpression()), !dbg !3607, !psr.id !4073
  %210 = add i32 %198, %209, !dbg !4057, !psr.id !4074, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %210, metadata !3816, metadata !DIExpression()), !dbg !3607, !psr.id !4075
  %211 = xor i32 %203, %210, !dbg !4057, !psr.id !4076, !ValueTainted !3091
  %212 = shl i32 %211, 8, !dbg !4057, !psr.id !4077, !ValueTainted !3091
  %213 = xor i32 %203, %210, !dbg !4057, !psr.id !4078, !ValueTainted !3091
  %214 = lshr i32 %213, 24, !dbg !4057, !psr.id !4079, !ValueTainted !3091
  %215 = or i32 %212, %214, !dbg !4057, !psr.id !4080, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %215, metadata !3838, metadata !DIExpression()), !dbg !3607, !psr.id !4081
  %216 = add i32 %204, %215, !dbg !4057, !psr.id !4082, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %216, metadata !3836, metadata !DIExpression()), !dbg !3607, !psr.id !4083
  %217 = xor i32 %209, %216, !dbg !4057, !psr.id !4084, !ValueTainted !3091
  %218 = shl i32 %217, 7, !dbg !4057, !psr.id !4085, !ValueTainted !3091
  %219 = xor i32 %209, %216, !dbg !4057, !psr.id !4086, !ValueTainted !3091
  %220 = lshr i32 %219, 25, !dbg !4057, !psr.id !4087, !ValueTainted !3091
  %221 = or i32 %218, %220, !dbg !4057, !psr.id !4088, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %221, metadata !3826, metadata !DIExpression()), !dbg !3607, !psr.id !4089
  %222 = add i32 %138, %173, !dbg !4090, !psr.id !4091, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %222, metadata !3818, metadata !DIExpression()), !dbg !3607, !psr.id !4092
  %223 = xor i32 %119, %222, !dbg !4090, !psr.id !4093, !ValueTainted !3091
  %224 = shl i32 %223, 16, !dbg !4090, !psr.id !4094, !ValueTainted !3091
  %225 = xor i32 %119, %222, !dbg !4090, !psr.id !4095, !ValueTainted !3091
  %226 = lshr i32 %225, 16, !dbg !4090, !psr.id !4096, !ValueTainted !3091
  %227 = or i32 %224, %226, !dbg !4090, !psr.id !4097, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %227, metadata !3840, metadata !DIExpression()), !dbg !3607, !psr.id !4098
  %228 = add i32 %96, %227, !dbg !4090, !psr.id !4099, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %228, metadata !3830, metadata !DIExpression()), !dbg !3607, !psr.id !4100
  %229 = xor i32 %173, %228, !dbg !4090, !psr.id !4101, !ValueTainted !3091
  %230 = shl i32 %229, 12, !dbg !4090, !psr.id !4102, !ValueTainted !3091
  %231 = xor i32 %173, %228, !dbg !4090, !psr.id !4103, !ValueTainted !3091
  %232 = lshr i32 %231, 20, !dbg !4090, !psr.id !4104, !ValueTainted !3091
  %233 = or i32 %230, %232, !dbg !4090, !psr.id !4105, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %233, metadata !3828, metadata !DIExpression()), !dbg !3607, !psr.id !4106
  %234 = add i32 %222, %233, !dbg !4090, !psr.id !4107, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %234, metadata !3818, metadata !DIExpression()), !dbg !3607, !psr.id !4108
  %235 = xor i32 %227, %234, !dbg !4090, !psr.id !4109, !ValueTainted !3091
  %236 = shl i32 %235, 8, !dbg !4090, !psr.id !4110, !ValueTainted !3091
  %237 = xor i32 %227, %234, !dbg !4090, !psr.id !4111, !ValueTainted !3091
  %238 = lshr i32 %237, 24, !dbg !4090, !psr.id !4112, !ValueTainted !3091
  %239 = or i32 %236, %238, !dbg !4090, !psr.id !4113, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %239, metadata !3840, metadata !DIExpression()), !dbg !3607, !psr.id !4114
  %240 = add i32 %228, %239, !dbg !4090, !psr.id !4115, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %240, metadata !3830, metadata !DIExpression()), !dbg !3607, !psr.id !4116
  %241 = xor i32 %233, %240, !dbg !4090, !psr.id !4117, !ValueTainted !3091
  %242 = shl i32 %241, 7, !dbg !4090, !psr.id !4118, !ValueTainted !3091
  %243 = xor i32 %233, %240, !dbg !4090, !psr.id !4119, !ValueTainted !3091
  %244 = lshr i32 %243, 25, !dbg !4090, !psr.id !4120, !ValueTainted !3091
  %245 = or i32 %242, %244, !dbg !4090, !psr.id !4121, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %245, metadata !3828, metadata !DIExpression()), !dbg !3607, !psr.id !4122
  %246 = add i32 %162, %101, !dbg !4123, !psr.id !4124, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %246, metadata !3820, metadata !DIExpression()), !dbg !3607, !psr.id !4125
  %247 = xor i32 %143, %246, !dbg !4123, !psr.id !4126, !ValueTainted !3091
  %248 = shl i32 %247, 16, !dbg !4123, !psr.id !4127, !ValueTainted !3091
  %249 = xor i32 %143, %246, !dbg !4123, !psr.id !4128, !ValueTainted !3091
  %250 = lshr i32 %249, 16, !dbg !4123, !psr.id !4129, !ValueTainted !3091
  %251 = or i32 %248, %250, !dbg !4123, !psr.id !4130, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %251, metadata !3842, metadata !DIExpression()), !dbg !3607, !psr.id !4131
  %252 = add i32 %120, %251, !dbg !4123, !psr.id !4132, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %252, metadata !3832, metadata !DIExpression()), !dbg !3607, !psr.id !4133
  %253 = xor i32 %101, %252, !dbg !4123, !psr.id !4134, !ValueTainted !3091
  %254 = shl i32 %253, 12, !dbg !4123, !psr.id !4135, !ValueTainted !3091
  %255 = xor i32 %101, %252, !dbg !4123, !psr.id !4136, !ValueTainted !3091
  %256 = lshr i32 %255, 20, !dbg !4123, !psr.id !4137, !ValueTainted !3091
  %257 = or i32 %254, %256, !dbg !4123, !psr.id !4138, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %257, metadata !3822, metadata !DIExpression()), !dbg !3607, !psr.id !4139
  %258 = add i32 %246, %257, !dbg !4123, !psr.id !4140, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %258, metadata !3820, metadata !DIExpression()), !dbg !3607, !psr.id !4141
  %259 = xor i32 %251, %258, !dbg !4123, !psr.id !4142, !ValueTainted !3091
  %260 = shl i32 %259, 8, !dbg !4123, !psr.id !4143, !ValueTainted !3091
  %261 = xor i32 %251, %258, !dbg !4123, !psr.id !4144, !ValueTainted !3091
  %262 = lshr i32 %261, 24, !dbg !4123, !psr.id !4145, !ValueTainted !3091
  %263 = or i32 %260, %262, !dbg !4123, !psr.id !4146, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %263, metadata !3842, metadata !DIExpression()), !dbg !3607, !psr.id !4147
  %264 = add i32 %252, %263, !dbg !4123, !psr.id !4148, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %264, metadata !3832, metadata !DIExpression()), !dbg !3607, !psr.id !4149
  %265 = xor i32 %257, %264, !dbg !4123, !psr.id !4150, !ValueTainted !3091
  %266 = shl i32 %265, 7, !dbg !4123, !psr.id !4151, !ValueTainted !3091
  %267 = xor i32 %257, %264, !dbg !4123, !psr.id !4152, !ValueTainted !3091
  %268 = lshr i32 %267, 25, !dbg !4123, !psr.id !4153, !ValueTainted !3091
  %269 = or i32 %266, %268, !dbg !4123, !psr.id !4154, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %269, metadata !3822, metadata !DIExpression()), !dbg !3607, !psr.id !4155
  br label %270, !dbg !4156, !psr.id !4157

270:                                              ; preds = %77
  %271 = sub i32 %.1, 2, !dbg !4158, !psr.id !4159
  call void @llvm.dbg.value(metadata i32 %271, metadata !3764, metadata !DIExpression()), !dbg !3607, !psr.id !4160
  br label %75, !dbg !4161, !llvm.loop !4162, !psr.id !4164

272:                                              ; preds = %75
  %273 = add i32 %.06, %11, !dbg !4165, !psr.id !4166, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %273, metadata !3814, metadata !DIExpression()), !dbg !3607, !psr.id !4167
  %274 = add i32 %.07, %14, !dbg !4168, !psr.id !4169, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %274, metadata !3816, metadata !DIExpression()), !dbg !3607, !psr.id !4170
  %275 = add i32 %.08, %17, !dbg !4171, !psr.id !4172, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %275, metadata !3818, metadata !DIExpression()), !dbg !3607, !psr.id !4173
  %276 = add i32 %.09, %20, !dbg !4174, !psr.id !4175, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %276, metadata !3820, metadata !DIExpression()), !dbg !3607, !psr.id !4176
  %277 = add i32 %.010, %23, !dbg !4177, !psr.id !4178, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %277, metadata !3822, metadata !DIExpression()), !dbg !3607, !psr.id !4179
  %278 = add i32 %.011, %26, !dbg !4180, !psr.id !4181, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %278, metadata !3824, metadata !DIExpression()), !dbg !3607, !psr.id !4182
  %279 = add i32 %.012, %29, !dbg !4183, !psr.id !4184, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %279, metadata !3826, metadata !DIExpression()), !dbg !3607, !psr.id !4185
  %280 = add i32 %.013, %32, !dbg !4186, !psr.id !4187, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %280, metadata !3828, metadata !DIExpression()), !dbg !3607, !psr.id !4188
  %281 = add i32 %.014, %35, !dbg !4189, !psr.id !4190, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %281, metadata !3830, metadata !DIExpression()), !dbg !3607, !psr.id !4191
  %282 = add i32 %.015, %38, !dbg !4192, !psr.id !4193, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %282, metadata !3832, metadata !DIExpression()), !dbg !3607, !psr.id !4194
  %283 = add i32 %.016, %41, !dbg !4195, !psr.id !4196, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %283, metadata !3834, metadata !DIExpression()), !dbg !3607, !psr.id !4197
  %284 = add i32 %.017, %44, !dbg !4198, !psr.id !4199, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %284, metadata !3836, metadata !DIExpression()), !dbg !3607, !psr.id !4200
  %285 = add i32 %.018, %.026, !dbg !4201, !psr.id !4202, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %285, metadata !3838, metadata !DIExpression()), !dbg !3607, !psr.id !4203
  %286 = add i32 %.019, %.024, !dbg !4204, !psr.id !4205, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %286, metadata !3840, metadata !DIExpression()), !dbg !3607, !psr.id !4206
  %287 = add i32 %.020, %53, !dbg !4207, !psr.id !4208, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %287, metadata !3842, metadata !DIExpression()), !dbg !3607, !psr.id !4209
  %288 = add i32 %.021, %56, !dbg !4210, !psr.id !4211, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %288, metadata !3844, metadata !DIExpression()), !dbg !3607, !psr.id !4212
  %289 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !4213, !psr.id !4214
  %290 = getelementptr inbounds i8, i8* %289, i64 0, !dbg !4213, !psr.id !4215
  %291 = load i8, i8* %290, align 1, !dbg !4213, !psr.id !4216, !ValueTainted !3091
  %292 = zext i8 %291 to i32, !dbg !4213, !psr.id !4217, !ValueTainted !3091
  %293 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !4213, !psr.id !4218
  %294 = getelementptr inbounds i8, i8* %293, i64 1, !dbg !4213, !psr.id !4219
  %295 = load i8, i8* %294, align 1, !dbg !4213, !psr.id !4220, !ValueTainted !3091
  %296 = zext i8 %295 to i32, !dbg !4213, !psr.id !4221, !ValueTainted !3091
  %297 = shl i32 %296, 8, !dbg !4213, !psr.id !4222, !ValueTainted !3091
  %298 = or i32 %292, %297, !dbg !4213, !psr.id !4223, !ValueTainted !3091
  %299 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !4213, !psr.id !4224
  %300 = getelementptr inbounds i8, i8* %299, i64 2, !dbg !4213, !psr.id !4225
  %301 = load i8, i8* %300, align 1, !dbg !4213, !psr.id !4226, !ValueTainted !3091
  %302 = zext i8 %301 to i32, !dbg !4213, !psr.id !4227, !ValueTainted !3091
  %303 = shl i32 %302, 16, !dbg !4213, !psr.id !4228, !ValueTainted !3091
  %304 = or i32 %298, %303, !dbg !4213, !psr.id !4229, !ValueTainted !3091
  %305 = getelementptr inbounds i8, i8* %.12, i64 0, !dbg !4213, !psr.id !4230
  %306 = getelementptr inbounds i8, i8* %305, i64 3, !dbg !4213, !psr.id !4231
  %307 = load i8, i8* %306, align 1, !dbg !4213, !psr.id !4232, !ValueTainted !3091
  %308 = zext i8 %307 to i32, !dbg !4213, !psr.id !4233, !ValueTainted !3091
  %309 = shl i32 %308, 24, !dbg !4213, !psr.id !4234, !ValueTainted !3091
  %310 = or i32 %304, %309, !dbg !4213, !psr.id !4235, !ValueTainted !3091
  %311 = xor i32 %273, %310, !dbg !4213, !psr.id !4236, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %311, metadata !3814, metadata !DIExpression()), !dbg !3607, !psr.id !4237
  %312 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !4238, !psr.id !4239
  %313 = getelementptr inbounds i8, i8* %312, i64 0, !dbg !4238, !psr.id !4240
  %314 = load i8, i8* %313, align 1, !dbg !4238, !psr.id !4241, !ValueTainted !3091
  %315 = zext i8 %314 to i32, !dbg !4238, !psr.id !4242, !ValueTainted !3091
  %316 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !4238, !psr.id !4243
  %317 = getelementptr inbounds i8, i8* %316, i64 1, !dbg !4238, !psr.id !4244
  %318 = load i8, i8* %317, align 1, !dbg !4238, !psr.id !4245, !ValueTainted !3091
  %319 = zext i8 %318 to i32, !dbg !4238, !psr.id !4246, !ValueTainted !3091
  %320 = shl i32 %319, 8, !dbg !4238, !psr.id !4247, !ValueTainted !3091
  %321 = or i32 %315, %320, !dbg !4238, !psr.id !4248, !ValueTainted !3091
  %322 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !4238, !psr.id !4249
  %323 = getelementptr inbounds i8, i8* %322, i64 2, !dbg !4238, !psr.id !4250
  %324 = load i8, i8* %323, align 1, !dbg !4238, !psr.id !4251, !ValueTainted !3091
  %325 = zext i8 %324 to i32, !dbg !4238, !psr.id !4252, !ValueTainted !3091
  %326 = shl i32 %325, 16, !dbg !4238, !psr.id !4253, !ValueTainted !3091
  %327 = or i32 %321, %326, !dbg !4238, !psr.id !4254, !ValueTainted !3091
  %328 = getelementptr inbounds i8, i8* %.12, i64 4, !dbg !4238, !psr.id !4255
  %329 = getelementptr inbounds i8, i8* %328, i64 3, !dbg !4238, !psr.id !4256
  %330 = load i8, i8* %329, align 1, !dbg !4238, !psr.id !4257, !ValueTainted !3091
  %331 = zext i8 %330 to i32, !dbg !4238, !psr.id !4258, !ValueTainted !3091
  %332 = shl i32 %331, 24, !dbg !4238, !psr.id !4259, !ValueTainted !3091
  %333 = or i32 %327, %332, !dbg !4238, !psr.id !4260, !ValueTainted !3091
  %334 = xor i32 %274, %333, !dbg !4238, !psr.id !4261, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %334, metadata !3816, metadata !DIExpression()), !dbg !3607, !psr.id !4262
  %335 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !4263, !psr.id !4264
  %336 = getelementptr inbounds i8, i8* %335, i64 0, !dbg !4263, !psr.id !4265
  %337 = load i8, i8* %336, align 1, !dbg !4263, !psr.id !4266, !ValueTainted !3091
  %338 = zext i8 %337 to i32, !dbg !4263, !psr.id !4267, !ValueTainted !3091
  %339 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !4263, !psr.id !4268
  %340 = getelementptr inbounds i8, i8* %339, i64 1, !dbg !4263, !psr.id !4269
  %341 = load i8, i8* %340, align 1, !dbg !4263, !psr.id !4270, !ValueTainted !3091
  %342 = zext i8 %341 to i32, !dbg !4263, !psr.id !4271, !ValueTainted !3091
  %343 = shl i32 %342, 8, !dbg !4263, !psr.id !4272, !ValueTainted !3091
  %344 = or i32 %338, %343, !dbg !4263, !psr.id !4273, !ValueTainted !3091
  %345 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !4263, !psr.id !4274
  %346 = getelementptr inbounds i8, i8* %345, i64 2, !dbg !4263, !psr.id !4275
  %347 = load i8, i8* %346, align 1, !dbg !4263, !psr.id !4276, !ValueTainted !3091
  %348 = zext i8 %347 to i32, !dbg !4263, !psr.id !4277, !ValueTainted !3091
  %349 = shl i32 %348, 16, !dbg !4263, !psr.id !4278, !ValueTainted !3091
  %350 = or i32 %344, %349, !dbg !4263, !psr.id !4279, !ValueTainted !3091
  %351 = getelementptr inbounds i8, i8* %.12, i64 8, !dbg !4263, !psr.id !4280
  %352 = getelementptr inbounds i8, i8* %351, i64 3, !dbg !4263, !psr.id !4281
  %353 = load i8, i8* %352, align 1, !dbg !4263, !psr.id !4282, !ValueTainted !3091
  %354 = zext i8 %353 to i32, !dbg !4263, !psr.id !4283, !ValueTainted !3091
  %355 = shl i32 %354, 24, !dbg !4263, !psr.id !4284, !ValueTainted !3091
  %356 = or i32 %350, %355, !dbg !4263, !psr.id !4285, !ValueTainted !3091
  %357 = xor i32 %275, %356, !dbg !4263, !psr.id !4286, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %357, metadata !3818, metadata !DIExpression()), !dbg !3607, !psr.id !4287
  %358 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !4288, !psr.id !4289
  %359 = getelementptr inbounds i8, i8* %358, i64 0, !dbg !4288, !psr.id !4290
  %360 = load i8, i8* %359, align 1, !dbg !4288, !psr.id !4291, !ValueTainted !3091
  %361 = zext i8 %360 to i32, !dbg !4288, !psr.id !4292, !ValueTainted !3091
  %362 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !4288, !psr.id !4293
  %363 = getelementptr inbounds i8, i8* %362, i64 1, !dbg !4288, !psr.id !4294
  %364 = load i8, i8* %363, align 1, !dbg !4288, !psr.id !4295, !ValueTainted !3091
  %365 = zext i8 %364 to i32, !dbg !4288, !psr.id !4296, !ValueTainted !3091
  %366 = shl i32 %365, 8, !dbg !4288, !psr.id !4297, !ValueTainted !3091
  %367 = or i32 %361, %366, !dbg !4288, !psr.id !4298, !ValueTainted !3091
  %368 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !4288, !psr.id !4299
  %369 = getelementptr inbounds i8, i8* %368, i64 2, !dbg !4288, !psr.id !4300
  %370 = load i8, i8* %369, align 1, !dbg !4288, !psr.id !4301, !ValueTainted !3091
  %371 = zext i8 %370 to i32, !dbg !4288, !psr.id !4302, !ValueTainted !3091
  %372 = shl i32 %371, 16, !dbg !4288, !psr.id !4303, !ValueTainted !3091
  %373 = or i32 %367, %372, !dbg !4288, !psr.id !4304, !ValueTainted !3091
  %374 = getelementptr inbounds i8, i8* %.12, i64 12, !dbg !4288, !psr.id !4305
  %375 = getelementptr inbounds i8, i8* %374, i64 3, !dbg !4288, !psr.id !4306
  %376 = load i8, i8* %375, align 1, !dbg !4288, !psr.id !4307, !ValueTainted !3091
  %377 = zext i8 %376 to i32, !dbg !4288, !psr.id !4308, !ValueTainted !3091
  %378 = shl i32 %377, 24, !dbg !4288, !psr.id !4309, !ValueTainted !3091
  %379 = or i32 %373, %378, !dbg !4288, !psr.id !4310, !ValueTainted !3091
  %380 = xor i32 %276, %379, !dbg !4288, !psr.id !4311, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %380, metadata !3820, metadata !DIExpression()), !dbg !3607, !psr.id !4312
  %381 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !4313, !psr.id !4314
  %382 = getelementptr inbounds i8, i8* %381, i64 0, !dbg !4313, !psr.id !4315
  %383 = load i8, i8* %382, align 1, !dbg !4313, !psr.id !4316, !ValueTainted !3091
  %384 = zext i8 %383 to i32, !dbg !4313, !psr.id !4317, !ValueTainted !3091
  %385 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !4313, !psr.id !4318
  %386 = getelementptr inbounds i8, i8* %385, i64 1, !dbg !4313, !psr.id !4319
  %387 = load i8, i8* %386, align 1, !dbg !4313, !psr.id !4320, !ValueTainted !3091
  %388 = zext i8 %387 to i32, !dbg !4313, !psr.id !4321, !ValueTainted !3091
  %389 = shl i32 %388, 8, !dbg !4313, !psr.id !4322, !ValueTainted !3091
  %390 = or i32 %384, %389, !dbg !4313, !psr.id !4323, !ValueTainted !3091
  %391 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !4313, !psr.id !4324
  %392 = getelementptr inbounds i8, i8* %391, i64 2, !dbg !4313, !psr.id !4325
  %393 = load i8, i8* %392, align 1, !dbg !4313, !psr.id !4326, !ValueTainted !3091
  %394 = zext i8 %393 to i32, !dbg !4313, !psr.id !4327, !ValueTainted !3091
  %395 = shl i32 %394, 16, !dbg !4313, !psr.id !4328, !ValueTainted !3091
  %396 = or i32 %390, %395, !dbg !4313, !psr.id !4329, !ValueTainted !3091
  %397 = getelementptr inbounds i8, i8* %.12, i64 16, !dbg !4313, !psr.id !4330
  %398 = getelementptr inbounds i8, i8* %397, i64 3, !dbg !4313, !psr.id !4331
  %399 = load i8, i8* %398, align 1, !dbg !4313, !psr.id !4332, !ValueTainted !3091
  %400 = zext i8 %399 to i32, !dbg !4313, !psr.id !4333, !ValueTainted !3091
  %401 = shl i32 %400, 24, !dbg !4313, !psr.id !4334, !ValueTainted !3091
  %402 = or i32 %396, %401, !dbg !4313, !psr.id !4335, !ValueTainted !3091
  %403 = xor i32 %277, %402, !dbg !4313, !psr.id !4336, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %403, metadata !3822, metadata !DIExpression()), !dbg !3607, !psr.id !4337
  %404 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !4338, !psr.id !4339
  %405 = getelementptr inbounds i8, i8* %404, i64 0, !dbg !4338, !psr.id !4340
  %406 = load i8, i8* %405, align 1, !dbg !4338, !psr.id !4341, !ValueTainted !3091
  %407 = zext i8 %406 to i32, !dbg !4338, !psr.id !4342, !ValueTainted !3091
  %408 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !4338, !psr.id !4343
  %409 = getelementptr inbounds i8, i8* %408, i64 1, !dbg !4338, !psr.id !4344
  %410 = load i8, i8* %409, align 1, !dbg !4338, !psr.id !4345, !ValueTainted !3091
  %411 = zext i8 %410 to i32, !dbg !4338, !psr.id !4346, !ValueTainted !3091
  %412 = shl i32 %411, 8, !dbg !4338, !psr.id !4347, !ValueTainted !3091
  %413 = or i32 %407, %412, !dbg !4338, !psr.id !4348, !ValueTainted !3091
  %414 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !4338, !psr.id !4349
  %415 = getelementptr inbounds i8, i8* %414, i64 2, !dbg !4338, !psr.id !4350
  %416 = load i8, i8* %415, align 1, !dbg !4338, !psr.id !4351, !ValueTainted !3091
  %417 = zext i8 %416 to i32, !dbg !4338, !psr.id !4352, !ValueTainted !3091
  %418 = shl i32 %417, 16, !dbg !4338, !psr.id !4353, !ValueTainted !3091
  %419 = or i32 %413, %418, !dbg !4338, !psr.id !4354, !ValueTainted !3091
  %420 = getelementptr inbounds i8, i8* %.12, i64 20, !dbg !4338, !psr.id !4355
  %421 = getelementptr inbounds i8, i8* %420, i64 3, !dbg !4338, !psr.id !4356
  %422 = load i8, i8* %421, align 1, !dbg !4338, !psr.id !4357, !ValueTainted !3091
  %423 = zext i8 %422 to i32, !dbg !4338, !psr.id !4358, !ValueTainted !3091
  %424 = shl i32 %423, 24, !dbg !4338, !psr.id !4359, !ValueTainted !3091
  %425 = or i32 %419, %424, !dbg !4338, !psr.id !4360, !ValueTainted !3091
  %426 = xor i32 %278, %425, !dbg !4338, !psr.id !4361, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %426, metadata !3824, metadata !DIExpression()), !dbg !3607, !psr.id !4362
  %427 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !4363, !psr.id !4364
  %428 = getelementptr inbounds i8, i8* %427, i64 0, !dbg !4363, !psr.id !4365
  %429 = load i8, i8* %428, align 1, !dbg !4363, !psr.id !4366, !ValueTainted !3091
  %430 = zext i8 %429 to i32, !dbg !4363, !psr.id !4367, !ValueTainted !3091
  %431 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !4363, !psr.id !4368
  %432 = getelementptr inbounds i8, i8* %431, i64 1, !dbg !4363, !psr.id !4369
  %433 = load i8, i8* %432, align 1, !dbg !4363, !psr.id !4370, !ValueTainted !3091
  %434 = zext i8 %433 to i32, !dbg !4363, !psr.id !4371, !ValueTainted !3091
  %435 = shl i32 %434, 8, !dbg !4363, !psr.id !4372, !ValueTainted !3091
  %436 = or i32 %430, %435, !dbg !4363, !psr.id !4373, !ValueTainted !3091
  %437 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !4363, !psr.id !4374
  %438 = getelementptr inbounds i8, i8* %437, i64 2, !dbg !4363, !psr.id !4375
  %439 = load i8, i8* %438, align 1, !dbg !4363, !psr.id !4376, !ValueTainted !3091
  %440 = zext i8 %439 to i32, !dbg !4363, !psr.id !4377, !ValueTainted !3091
  %441 = shl i32 %440, 16, !dbg !4363, !psr.id !4378, !ValueTainted !3091
  %442 = or i32 %436, %441, !dbg !4363, !psr.id !4379, !ValueTainted !3091
  %443 = getelementptr inbounds i8, i8* %.12, i64 24, !dbg !4363, !psr.id !4380
  %444 = getelementptr inbounds i8, i8* %443, i64 3, !dbg !4363, !psr.id !4381
  %445 = load i8, i8* %444, align 1, !dbg !4363, !psr.id !4382, !ValueTainted !3091
  %446 = zext i8 %445 to i32, !dbg !4363, !psr.id !4383, !ValueTainted !3091
  %447 = shl i32 %446, 24, !dbg !4363, !psr.id !4384, !ValueTainted !3091
  %448 = or i32 %442, %447, !dbg !4363, !psr.id !4385, !ValueTainted !3091
  %449 = xor i32 %279, %448, !dbg !4363, !psr.id !4386, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %449, metadata !3826, metadata !DIExpression()), !dbg !3607, !psr.id !4387
  %450 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !4388, !psr.id !4389
  %451 = getelementptr inbounds i8, i8* %450, i64 0, !dbg !4388, !psr.id !4390
  %452 = load i8, i8* %451, align 1, !dbg !4388, !psr.id !4391, !ValueTainted !3091
  %453 = zext i8 %452 to i32, !dbg !4388, !psr.id !4392, !ValueTainted !3091
  %454 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !4388, !psr.id !4393
  %455 = getelementptr inbounds i8, i8* %454, i64 1, !dbg !4388, !psr.id !4394
  %456 = load i8, i8* %455, align 1, !dbg !4388, !psr.id !4395, !ValueTainted !3091
  %457 = zext i8 %456 to i32, !dbg !4388, !psr.id !4396, !ValueTainted !3091
  %458 = shl i32 %457, 8, !dbg !4388, !psr.id !4397, !ValueTainted !3091
  %459 = or i32 %453, %458, !dbg !4388, !psr.id !4398, !ValueTainted !3091
  %460 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !4388, !psr.id !4399
  %461 = getelementptr inbounds i8, i8* %460, i64 2, !dbg !4388, !psr.id !4400
  %462 = load i8, i8* %461, align 1, !dbg !4388, !psr.id !4401, !ValueTainted !3091
  %463 = zext i8 %462 to i32, !dbg !4388, !psr.id !4402, !ValueTainted !3091
  %464 = shl i32 %463, 16, !dbg !4388, !psr.id !4403, !ValueTainted !3091
  %465 = or i32 %459, %464, !dbg !4388, !psr.id !4404, !ValueTainted !3091
  %466 = getelementptr inbounds i8, i8* %.12, i64 28, !dbg !4388, !psr.id !4405
  %467 = getelementptr inbounds i8, i8* %466, i64 3, !dbg !4388, !psr.id !4406
  %468 = load i8, i8* %467, align 1, !dbg !4388, !psr.id !4407, !ValueTainted !3091
  %469 = zext i8 %468 to i32, !dbg !4388, !psr.id !4408, !ValueTainted !3091
  %470 = shl i32 %469, 24, !dbg !4388, !psr.id !4409, !ValueTainted !3091
  %471 = or i32 %465, %470, !dbg !4388, !psr.id !4410, !ValueTainted !3091
  %472 = xor i32 %280, %471, !dbg !4388, !psr.id !4411, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %472, metadata !3828, metadata !DIExpression()), !dbg !3607, !psr.id !4412
  %473 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !4413, !psr.id !4414
  %474 = getelementptr inbounds i8, i8* %473, i64 0, !dbg !4413, !psr.id !4415
  %475 = load i8, i8* %474, align 1, !dbg !4413, !psr.id !4416, !ValueTainted !3091
  %476 = zext i8 %475 to i32, !dbg !4413, !psr.id !4417, !ValueTainted !3091
  %477 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !4413, !psr.id !4418
  %478 = getelementptr inbounds i8, i8* %477, i64 1, !dbg !4413, !psr.id !4419
  %479 = load i8, i8* %478, align 1, !dbg !4413, !psr.id !4420, !ValueTainted !3091
  %480 = zext i8 %479 to i32, !dbg !4413, !psr.id !4421, !ValueTainted !3091
  %481 = shl i32 %480, 8, !dbg !4413, !psr.id !4422, !ValueTainted !3091
  %482 = or i32 %476, %481, !dbg !4413, !psr.id !4423, !ValueTainted !3091
  %483 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !4413, !psr.id !4424
  %484 = getelementptr inbounds i8, i8* %483, i64 2, !dbg !4413, !psr.id !4425
  %485 = load i8, i8* %484, align 1, !dbg !4413, !psr.id !4426, !ValueTainted !3091
  %486 = zext i8 %485 to i32, !dbg !4413, !psr.id !4427, !ValueTainted !3091
  %487 = shl i32 %486, 16, !dbg !4413, !psr.id !4428, !ValueTainted !3091
  %488 = or i32 %482, %487, !dbg !4413, !psr.id !4429, !ValueTainted !3091
  %489 = getelementptr inbounds i8, i8* %.12, i64 32, !dbg !4413, !psr.id !4430
  %490 = getelementptr inbounds i8, i8* %489, i64 3, !dbg !4413, !psr.id !4431
  %491 = load i8, i8* %490, align 1, !dbg !4413, !psr.id !4432, !ValueTainted !3091
  %492 = zext i8 %491 to i32, !dbg !4413, !psr.id !4433, !ValueTainted !3091
  %493 = shl i32 %492, 24, !dbg !4413, !psr.id !4434, !ValueTainted !3091
  %494 = or i32 %488, %493, !dbg !4413, !psr.id !4435, !ValueTainted !3091
  %495 = xor i32 %281, %494, !dbg !4413, !psr.id !4436, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %495, metadata !3830, metadata !DIExpression()), !dbg !3607, !psr.id !4437
  %496 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !4438, !psr.id !4439
  %497 = getelementptr inbounds i8, i8* %496, i64 0, !dbg !4438, !psr.id !4440
  %498 = load i8, i8* %497, align 1, !dbg !4438, !psr.id !4441, !ValueTainted !3091
  %499 = zext i8 %498 to i32, !dbg !4438, !psr.id !4442, !ValueTainted !3091
  %500 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !4438, !psr.id !4443
  %501 = getelementptr inbounds i8, i8* %500, i64 1, !dbg !4438, !psr.id !4444
  %502 = load i8, i8* %501, align 1, !dbg !4438, !psr.id !4445, !ValueTainted !3091
  %503 = zext i8 %502 to i32, !dbg !4438, !psr.id !4446, !ValueTainted !3091
  %504 = shl i32 %503, 8, !dbg !4438, !psr.id !4447, !ValueTainted !3091
  %505 = or i32 %499, %504, !dbg !4438, !psr.id !4448, !ValueTainted !3091
  %506 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !4438, !psr.id !4449
  %507 = getelementptr inbounds i8, i8* %506, i64 2, !dbg !4438, !psr.id !4450
  %508 = load i8, i8* %507, align 1, !dbg !4438, !psr.id !4451, !ValueTainted !3091
  %509 = zext i8 %508 to i32, !dbg !4438, !psr.id !4452, !ValueTainted !3091
  %510 = shl i32 %509, 16, !dbg !4438, !psr.id !4453, !ValueTainted !3091
  %511 = or i32 %505, %510, !dbg !4438, !psr.id !4454, !ValueTainted !3091
  %512 = getelementptr inbounds i8, i8* %.12, i64 36, !dbg !4438, !psr.id !4455
  %513 = getelementptr inbounds i8, i8* %512, i64 3, !dbg !4438, !psr.id !4456
  %514 = load i8, i8* %513, align 1, !dbg !4438, !psr.id !4457, !ValueTainted !3091
  %515 = zext i8 %514 to i32, !dbg !4438, !psr.id !4458, !ValueTainted !3091
  %516 = shl i32 %515, 24, !dbg !4438, !psr.id !4459, !ValueTainted !3091
  %517 = or i32 %511, %516, !dbg !4438, !psr.id !4460, !ValueTainted !3091
  %518 = xor i32 %282, %517, !dbg !4438, !psr.id !4461, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %518, metadata !3832, metadata !DIExpression()), !dbg !3607, !psr.id !4462
  %519 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !4463, !psr.id !4464
  %520 = getelementptr inbounds i8, i8* %519, i64 0, !dbg !4463, !psr.id !4465
  %521 = load i8, i8* %520, align 1, !dbg !4463, !psr.id !4466, !ValueTainted !3091
  %522 = zext i8 %521 to i32, !dbg !4463, !psr.id !4467, !ValueTainted !3091
  %523 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !4463, !psr.id !4468
  %524 = getelementptr inbounds i8, i8* %523, i64 1, !dbg !4463, !psr.id !4469
  %525 = load i8, i8* %524, align 1, !dbg !4463, !psr.id !4470, !ValueTainted !3091
  %526 = zext i8 %525 to i32, !dbg !4463, !psr.id !4471, !ValueTainted !3091
  %527 = shl i32 %526, 8, !dbg !4463, !psr.id !4472, !ValueTainted !3091
  %528 = or i32 %522, %527, !dbg !4463, !psr.id !4473, !ValueTainted !3091
  %529 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !4463, !psr.id !4474
  %530 = getelementptr inbounds i8, i8* %529, i64 2, !dbg !4463, !psr.id !4475
  %531 = load i8, i8* %530, align 1, !dbg !4463, !psr.id !4476, !ValueTainted !3091
  %532 = zext i8 %531 to i32, !dbg !4463, !psr.id !4477, !ValueTainted !3091
  %533 = shl i32 %532, 16, !dbg !4463, !psr.id !4478, !ValueTainted !3091
  %534 = or i32 %528, %533, !dbg !4463, !psr.id !4479, !ValueTainted !3091
  %535 = getelementptr inbounds i8, i8* %.12, i64 40, !dbg !4463, !psr.id !4480
  %536 = getelementptr inbounds i8, i8* %535, i64 3, !dbg !4463, !psr.id !4481
  %537 = load i8, i8* %536, align 1, !dbg !4463, !psr.id !4482, !ValueTainted !3091
  %538 = zext i8 %537 to i32, !dbg !4463, !psr.id !4483, !ValueTainted !3091
  %539 = shl i32 %538, 24, !dbg !4463, !psr.id !4484, !ValueTainted !3091
  %540 = or i32 %534, %539, !dbg !4463, !psr.id !4485, !ValueTainted !3091
  %541 = xor i32 %283, %540, !dbg !4463, !psr.id !4486, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %541, metadata !3834, metadata !DIExpression()), !dbg !3607, !psr.id !4487
  %542 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !4488, !psr.id !4489
  %543 = getelementptr inbounds i8, i8* %542, i64 0, !dbg !4488, !psr.id !4490
  %544 = load i8, i8* %543, align 1, !dbg !4488, !psr.id !4491, !ValueTainted !3091
  %545 = zext i8 %544 to i32, !dbg !4488, !psr.id !4492, !ValueTainted !3091
  %546 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !4488, !psr.id !4493
  %547 = getelementptr inbounds i8, i8* %546, i64 1, !dbg !4488, !psr.id !4494
  %548 = load i8, i8* %547, align 1, !dbg !4488, !psr.id !4495, !ValueTainted !3091
  %549 = zext i8 %548 to i32, !dbg !4488, !psr.id !4496, !ValueTainted !3091
  %550 = shl i32 %549, 8, !dbg !4488, !psr.id !4497, !ValueTainted !3091
  %551 = or i32 %545, %550, !dbg !4488, !psr.id !4498, !ValueTainted !3091
  %552 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !4488, !psr.id !4499
  %553 = getelementptr inbounds i8, i8* %552, i64 2, !dbg !4488, !psr.id !4500
  %554 = load i8, i8* %553, align 1, !dbg !4488, !psr.id !4501, !ValueTainted !3091
  %555 = zext i8 %554 to i32, !dbg !4488, !psr.id !4502, !ValueTainted !3091
  %556 = shl i32 %555, 16, !dbg !4488, !psr.id !4503, !ValueTainted !3091
  %557 = or i32 %551, %556, !dbg !4488, !psr.id !4504, !ValueTainted !3091
  %558 = getelementptr inbounds i8, i8* %.12, i64 44, !dbg !4488, !psr.id !4505
  %559 = getelementptr inbounds i8, i8* %558, i64 3, !dbg !4488, !psr.id !4506
  %560 = load i8, i8* %559, align 1, !dbg !4488, !psr.id !4507, !ValueTainted !3091
  %561 = zext i8 %560 to i32, !dbg !4488, !psr.id !4508, !ValueTainted !3091
  %562 = shl i32 %561, 24, !dbg !4488, !psr.id !4509, !ValueTainted !3091
  %563 = or i32 %557, %562, !dbg !4488, !psr.id !4510, !ValueTainted !3091
  %564 = xor i32 %284, %563, !dbg !4488, !psr.id !4511, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %564, metadata !3836, metadata !DIExpression()), !dbg !3607, !psr.id !4512
  %565 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !4513, !psr.id !4514
  %566 = getelementptr inbounds i8, i8* %565, i64 0, !dbg !4513, !psr.id !4515
  %567 = load i8, i8* %566, align 1, !dbg !4513, !psr.id !4516, !ValueTainted !3091
  %568 = zext i8 %567 to i32, !dbg !4513, !psr.id !4517, !ValueTainted !3091
  %569 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !4513, !psr.id !4518
  %570 = getelementptr inbounds i8, i8* %569, i64 1, !dbg !4513, !psr.id !4519
  %571 = load i8, i8* %570, align 1, !dbg !4513, !psr.id !4520, !ValueTainted !3091
  %572 = zext i8 %571 to i32, !dbg !4513, !psr.id !4521, !ValueTainted !3091
  %573 = shl i32 %572, 8, !dbg !4513, !psr.id !4522, !ValueTainted !3091
  %574 = or i32 %568, %573, !dbg !4513, !psr.id !4523, !ValueTainted !3091
  %575 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !4513, !psr.id !4524
  %576 = getelementptr inbounds i8, i8* %575, i64 2, !dbg !4513, !psr.id !4525
  %577 = load i8, i8* %576, align 1, !dbg !4513, !psr.id !4526, !ValueTainted !3091
  %578 = zext i8 %577 to i32, !dbg !4513, !psr.id !4527, !ValueTainted !3091
  %579 = shl i32 %578, 16, !dbg !4513, !psr.id !4528, !ValueTainted !3091
  %580 = or i32 %574, %579, !dbg !4513, !psr.id !4529, !ValueTainted !3091
  %581 = getelementptr inbounds i8, i8* %.12, i64 48, !dbg !4513, !psr.id !4530
  %582 = getelementptr inbounds i8, i8* %581, i64 3, !dbg !4513, !psr.id !4531
  %583 = load i8, i8* %582, align 1, !dbg !4513, !psr.id !4532, !ValueTainted !3091
  %584 = zext i8 %583 to i32, !dbg !4513, !psr.id !4533, !ValueTainted !3091
  %585 = shl i32 %584, 24, !dbg !4513, !psr.id !4534, !ValueTainted !3091
  %586 = or i32 %580, %585, !dbg !4513, !psr.id !4535, !ValueTainted !3091
  %587 = xor i32 %285, %586, !dbg !4513, !psr.id !4536, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %587, metadata !3838, metadata !DIExpression()), !dbg !3607, !psr.id !4537
  %588 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !4538, !psr.id !4539
  %589 = getelementptr inbounds i8, i8* %588, i64 0, !dbg !4538, !psr.id !4540
  %590 = load i8, i8* %589, align 1, !dbg !4538, !psr.id !4541, !ValueTainted !3091
  %591 = zext i8 %590 to i32, !dbg !4538, !psr.id !4542, !ValueTainted !3091
  %592 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !4538, !psr.id !4543
  %593 = getelementptr inbounds i8, i8* %592, i64 1, !dbg !4538, !psr.id !4544
  %594 = load i8, i8* %593, align 1, !dbg !4538, !psr.id !4545, !ValueTainted !3091
  %595 = zext i8 %594 to i32, !dbg !4538, !psr.id !4546, !ValueTainted !3091
  %596 = shl i32 %595, 8, !dbg !4538, !psr.id !4547, !ValueTainted !3091
  %597 = or i32 %591, %596, !dbg !4538, !psr.id !4548, !ValueTainted !3091
  %598 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !4538, !psr.id !4549
  %599 = getelementptr inbounds i8, i8* %598, i64 2, !dbg !4538, !psr.id !4550
  %600 = load i8, i8* %599, align 1, !dbg !4538, !psr.id !4551, !ValueTainted !3091
  %601 = zext i8 %600 to i32, !dbg !4538, !psr.id !4552, !ValueTainted !3091
  %602 = shl i32 %601, 16, !dbg !4538, !psr.id !4553, !ValueTainted !3091
  %603 = or i32 %597, %602, !dbg !4538, !psr.id !4554, !ValueTainted !3091
  %604 = getelementptr inbounds i8, i8* %.12, i64 52, !dbg !4538, !psr.id !4555
  %605 = getelementptr inbounds i8, i8* %604, i64 3, !dbg !4538, !psr.id !4556
  %606 = load i8, i8* %605, align 1, !dbg !4538, !psr.id !4557, !ValueTainted !3091
  %607 = zext i8 %606 to i32, !dbg !4538, !psr.id !4558, !ValueTainted !3091
  %608 = shl i32 %607, 24, !dbg !4538, !psr.id !4559, !ValueTainted !3091
  %609 = or i32 %603, %608, !dbg !4538, !psr.id !4560, !ValueTainted !3091
  %610 = xor i32 %286, %609, !dbg !4538, !psr.id !4561, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %610, metadata !3840, metadata !DIExpression()), !dbg !3607, !psr.id !4562
  %611 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !4563, !psr.id !4564
  %612 = getelementptr inbounds i8, i8* %611, i64 0, !dbg !4563, !psr.id !4565
  %613 = load i8, i8* %612, align 1, !dbg !4563, !psr.id !4566, !ValueTainted !3091
  %614 = zext i8 %613 to i32, !dbg !4563, !psr.id !4567, !ValueTainted !3091
  %615 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !4563, !psr.id !4568
  %616 = getelementptr inbounds i8, i8* %615, i64 1, !dbg !4563, !psr.id !4569
  %617 = load i8, i8* %616, align 1, !dbg !4563, !psr.id !4570, !ValueTainted !3091
  %618 = zext i8 %617 to i32, !dbg !4563, !psr.id !4571, !ValueTainted !3091
  %619 = shl i32 %618, 8, !dbg !4563, !psr.id !4572, !ValueTainted !3091
  %620 = or i32 %614, %619, !dbg !4563, !psr.id !4573, !ValueTainted !3091
  %621 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !4563, !psr.id !4574
  %622 = getelementptr inbounds i8, i8* %621, i64 2, !dbg !4563, !psr.id !4575
  %623 = load i8, i8* %622, align 1, !dbg !4563, !psr.id !4576, !ValueTainted !3091
  %624 = zext i8 %623 to i32, !dbg !4563, !psr.id !4577, !ValueTainted !3091
  %625 = shl i32 %624, 16, !dbg !4563, !psr.id !4578, !ValueTainted !3091
  %626 = or i32 %620, %625, !dbg !4563, !psr.id !4579, !ValueTainted !3091
  %627 = getelementptr inbounds i8, i8* %.12, i64 56, !dbg !4563, !psr.id !4580
  %628 = getelementptr inbounds i8, i8* %627, i64 3, !dbg !4563, !psr.id !4581
  %629 = load i8, i8* %628, align 1, !dbg !4563, !psr.id !4582, !ValueTainted !3091
  %630 = zext i8 %629 to i32, !dbg !4563, !psr.id !4583, !ValueTainted !3091
  %631 = shl i32 %630, 24, !dbg !4563, !psr.id !4584, !ValueTainted !3091
  %632 = or i32 %626, %631, !dbg !4563, !psr.id !4585, !ValueTainted !3091
  %633 = xor i32 %287, %632, !dbg !4563, !psr.id !4586, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %633, metadata !3842, metadata !DIExpression()), !dbg !3607, !psr.id !4587
  %634 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !4588, !psr.id !4589
  %635 = getelementptr inbounds i8, i8* %634, i64 0, !dbg !4588, !psr.id !4590
  %636 = load i8, i8* %635, align 1, !dbg !4588, !psr.id !4591, !ValueTainted !3091
  %637 = zext i8 %636 to i32, !dbg !4588, !psr.id !4592, !ValueTainted !3091
  %638 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !4588, !psr.id !4593
  %639 = getelementptr inbounds i8, i8* %638, i64 1, !dbg !4588, !psr.id !4594
  %640 = load i8, i8* %639, align 1, !dbg !4588, !psr.id !4595, !ValueTainted !3091
  %641 = zext i8 %640 to i32, !dbg !4588, !psr.id !4596, !ValueTainted !3091
  %642 = shl i32 %641, 8, !dbg !4588, !psr.id !4597, !ValueTainted !3091
  %643 = or i32 %637, %642, !dbg !4588, !psr.id !4598, !ValueTainted !3091
  %644 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !4588, !psr.id !4599
  %645 = getelementptr inbounds i8, i8* %644, i64 2, !dbg !4588, !psr.id !4600
  %646 = load i8, i8* %645, align 1, !dbg !4588, !psr.id !4601, !ValueTainted !3091
  %647 = zext i8 %646 to i32, !dbg !4588, !psr.id !4602, !ValueTainted !3091
  %648 = shl i32 %647, 16, !dbg !4588, !psr.id !4603, !ValueTainted !3091
  %649 = or i32 %643, %648, !dbg !4588, !psr.id !4604, !ValueTainted !3091
  %650 = getelementptr inbounds i8, i8* %.12, i64 60, !dbg !4588, !psr.id !4605
  %651 = getelementptr inbounds i8, i8* %650, i64 3, !dbg !4588, !psr.id !4606
  %652 = load i8, i8* %651, align 1, !dbg !4588, !psr.id !4607, !ValueTainted !3091
  %653 = zext i8 %652 to i32, !dbg !4588, !psr.id !4608, !ValueTainted !3091
  %654 = shl i32 %653, 24, !dbg !4588, !psr.id !4609, !ValueTainted !3091
  %655 = or i32 %649, %654, !dbg !4588, !psr.id !4610, !ValueTainted !3091
  %656 = xor i32 %288, %655, !dbg !4588, !psr.id !4611, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %656, metadata !3844, metadata !DIExpression()), !dbg !3607, !psr.id !4612
  %657 = add i32 %.026, 1, !dbg !4613, !psr.id !4614, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %657, metadata !3718, metadata !DIExpression()), !dbg !3607, !psr.id !4615
  %658 = icmp ne i32 %657, 0, !dbg !4616, !psr.id !4618, !ValueTainted !3091
  br i1 %658, label %661, label %659, !dbg !4619, !psr.id !4620, !Tainted !4621

659:                                              ; preds = %272
  %660 = add i32 %.024, 1, !dbg !4622, !psr.id !4624, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %660, metadata !3725, metadata !DIExpression()), !dbg !3607, !psr.id !4625
  br label %661, !dbg !4626, !psr.id !4627

661:                                              ; preds = %659, %272
  %.125 = phi i32 [ %.024, %272 ], [ %660, %659 ], !dbg !3607, !psr.id !4628, !ValueTainted !3091
  call void @llvm.dbg.value(metadata i32 %.125, metadata !3725, metadata !DIExpression()), !dbg !3607, !psr.id !4629
  br label %662, !dbg !4630, !psr.id !4631

662:                                              ; preds = %661
  %663 = trunc i32 %311 to i8, !dbg !4632, !psr.id !4634, !ValueTainted !3091
  %664 = zext i8 %663 to i32, !dbg !4632, !psr.id !4635, !ValueTainted !3091
  %665 = and i32 %664, 255, !dbg !4632, !psr.id !4636, !ValueTainted !3091
  %666 = trunc i32 %665 to i8, !dbg !4632, !psr.id !4637, !ValueTainted !3091
  %667 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !4632, !psr.id !4638, !PointTainted !3088
  %668 = getelementptr inbounds i8, i8* %667, i64 0, !dbg !4632, !psr.id !4639, !PointTainted !3088
  store i8 %666, i8* %668, align 1, !dbg !4632, !psr.id !4640
  %669 = lshr i32 %311, 8, !dbg !4632, !psr.id !4641, !ValueTainted !3091
  %670 = trunc i32 %669 to i8, !dbg !4632, !psr.id !4642, !ValueTainted !3091
  %671 = zext i8 %670 to i32, !dbg !4632, !psr.id !4643, !ValueTainted !3091
  %672 = and i32 %671, 255, !dbg !4632, !psr.id !4644, !ValueTainted !3091
  %673 = trunc i32 %672 to i8, !dbg !4632, !psr.id !4645, !ValueTainted !3091
  %674 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !4632, !psr.id !4646, !PointTainted !3088
  %675 = getelementptr inbounds i8, i8* %674, i64 1, !dbg !4632, !psr.id !4647, !PointTainted !3088
  store i8 %673, i8* %675, align 1, !dbg !4632, !psr.id !4648
  %676 = lshr i32 %311, 16, !dbg !4632, !psr.id !4649, !ValueTainted !3091
  %677 = trunc i32 %676 to i8, !dbg !4632, !psr.id !4650, !ValueTainted !3091
  %678 = zext i8 %677 to i32, !dbg !4632, !psr.id !4651, !ValueTainted !3091
  %679 = and i32 %678, 255, !dbg !4632, !psr.id !4652, !ValueTainted !3091
  %680 = trunc i32 %679 to i8, !dbg !4632, !psr.id !4653, !ValueTainted !3091
  %681 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !4632, !psr.id !4654, !PointTainted !3088
  %682 = getelementptr inbounds i8, i8* %681, i64 2, !dbg !4632, !psr.id !4655, !PointTainted !3088
  store i8 %680, i8* %682, align 1, !dbg !4632, !psr.id !4656
  %683 = lshr i32 %311, 24, !dbg !4632, !psr.id !4657, !ValueTainted !3091
  %684 = trunc i32 %683 to i8, !dbg !4632, !psr.id !4658, !ValueTainted !3091
  %685 = zext i8 %684 to i32, !dbg !4632, !psr.id !4659, !ValueTainted !3091
  %686 = and i32 %685, 255, !dbg !4632, !psr.id !4660, !ValueTainted !3091
  %687 = trunc i32 %686 to i8, !dbg !4632, !psr.id !4661, !ValueTainted !3091
  %688 = getelementptr inbounds i8, i8* %.14, i64 0, !dbg !4632, !psr.id !4662, !PointTainted !3088
  %689 = getelementptr inbounds i8, i8* %688, i64 3, !dbg !4632, !psr.id !4663, !PointTainted !3088
  store i8 %687, i8* %689, align 1, !dbg !4632, !psr.id !4664
  br label %690, !dbg !4632, !psr.id !4665

690:                                              ; preds = %662
  br label %691, !dbg !4666, !psr.id !4667

691:                                              ; preds = %690
  %692 = trunc i32 %334 to i8, !dbg !4668, !psr.id !4670, !ValueTainted !3091
  %693 = zext i8 %692 to i32, !dbg !4668, !psr.id !4671, !ValueTainted !3091
  %694 = and i32 %693, 255, !dbg !4668, !psr.id !4672, !ValueTainted !3091
  %695 = trunc i32 %694 to i8, !dbg !4668, !psr.id !4673, !ValueTainted !3091
  %696 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !4668, !psr.id !4674, !PointTainted !3088
  %697 = getelementptr inbounds i8, i8* %696, i64 0, !dbg !4668, !psr.id !4675, !PointTainted !3088
  store i8 %695, i8* %697, align 1, !dbg !4668, !psr.id !4676
  %698 = lshr i32 %334, 8, !dbg !4668, !psr.id !4677, !ValueTainted !3091
  %699 = trunc i32 %698 to i8, !dbg !4668, !psr.id !4678, !ValueTainted !3091
  %700 = zext i8 %699 to i32, !dbg !4668, !psr.id !4679, !ValueTainted !3091
  %701 = and i32 %700, 255, !dbg !4668, !psr.id !4680, !ValueTainted !3091
  %702 = trunc i32 %701 to i8, !dbg !4668, !psr.id !4681, !ValueTainted !3091
  %703 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !4668, !psr.id !4682, !PointTainted !3088
  %704 = getelementptr inbounds i8, i8* %703, i64 1, !dbg !4668, !psr.id !4683, !PointTainted !3088
  store i8 %702, i8* %704, align 1, !dbg !4668, !psr.id !4684
  %705 = lshr i32 %334, 16, !dbg !4668, !psr.id !4685, !ValueTainted !3091
  %706 = trunc i32 %705 to i8, !dbg !4668, !psr.id !4686, !ValueTainted !3091
  %707 = zext i8 %706 to i32, !dbg !4668, !psr.id !4687, !ValueTainted !3091
  %708 = and i32 %707, 255, !dbg !4668, !psr.id !4688, !ValueTainted !3091
  %709 = trunc i32 %708 to i8, !dbg !4668, !psr.id !4689, !ValueTainted !3091
  %710 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !4668, !psr.id !4690, !PointTainted !3088
  %711 = getelementptr inbounds i8, i8* %710, i64 2, !dbg !4668, !psr.id !4691, !PointTainted !3088
  store i8 %709, i8* %711, align 1, !dbg !4668, !psr.id !4692
  %712 = lshr i32 %334, 24, !dbg !4668, !psr.id !4693, !ValueTainted !3091
  %713 = trunc i32 %712 to i8, !dbg !4668, !psr.id !4694, !ValueTainted !3091
  %714 = zext i8 %713 to i32, !dbg !4668, !psr.id !4695, !ValueTainted !3091
  %715 = and i32 %714, 255, !dbg !4668, !psr.id !4696, !ValueTainted !3091
  %716 = trunc i32 %715 to i8, !dbg !4668, !psr.id !4697, !ValueTainted !3091
  %717 = getelementptr inbounds i8, i8* %.14, i64 4, !dbg !4668, !psr.id !4698, !PointTainted !3088
  %718 = getelementptr inbounds i8, i8* %717, i64 3, !dbg !4668, !psr.id !4699, !PointTainted !3088
  store i8 %716, i8* %718, align 1, !dbg !4668, !psr.id !4700
  br label %719, !dbg !4668, !psr.id !4701

719:                                              ; preds = %691
  br label %720, !dbg !4702, !psr.id !4703

720:                                              ; preds = %719
  %721 = trunc i32 %357 to i8, !dbg !4704, !psr.id !4706, !ValueTainted !3091
  %722 = zext i8 %721 to i32, !dbg !4704, !psr.id !4707, !ValueTainted !3091
  %723 = and i32 %722, 255, !dbg !4704, !psr.id !4708, !ValueTainted !3091
  %724 = trunc i32 %723 to i8, !dbg !4704, !psr.id !4709, !ValueTainted !3091
  %725 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !4704, !psr.id !4710, !PointTainted !3088
  %726 = getelementptr inbounds i8, i8* %725, i64 0, !dbg !4704, !psr.id !4711, !PointTainted !3088
  store i8 %724, i8* %726, align 1, !dbg !4704, !psr.id !4712
  %727 = lshr i32 %357, 8, !dbg !4704, !psr.id !4713, !ValueTainted !3091
  %728 = trunc i32 %727 to i8, !dbg !4704, !psr.id !4714, !ValueTainted !3091
  %729 = zext i8 %728 to i32, !dbg !4704, !psr.id !4715, !ValueTainted !3091
  %730 = and i32 %729, 255, !dbg !4704, !psr.id !4716, !ValueTainted !3091
  %731 = trunc i32 %730 to i8, !dbg !4704, !psr.id !4717, !ValueTainted !3091
  %732 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !4704, !psr.id !4718, !PointTainted !3088
  %733 = getelementptr inbounds i8, i8* %732, i64 1, !dbg !4704, !psr.id !4719, !PointTainted !3088
  store i8 %731, i8* %733, align 1, !dbg !4704, !psr.id !4720
  %734 = lshr i32 %357, 16, !dbg !4704, !psr.id !4721, !ValueTainted !3091
  %735 = trunc i32 %734 to i8, !dbg !4704, !psr.id !4722, !ValueTainted !3091
  %736 = zext i8 %735 to i32, !dbg !4704, !psr.id !4723, !ValueTainted !3091
  %737 = and i32 %736, 255, !dbg !4704, !psr.id !4724, !ValueTainted !3091
  %738 = trunc i32 %737 to i8, !dbg !4704, !psr.id !4725, !ValueTainted !3091
  %739 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !4704, !psr.id !4726, !PointTainted !3088
  %740 = getelementptr inbounds i8, i8* %739, i64 2, !dbg !4704, !psr.id !4727, !PointTainted !3088
  store i8 %738, i8* %740, align 1, !dbg !4704, !psr.id !4728
  %741 = lshr i32 %357, 24, !dbg !4704, !psr.id !4729, !ValueTainted !3091
  %742 = trunc i32 %741 to i8, !dbg !4704, !psr.id !4730, !ValueTainted !3091
  %743 = zext i8 %742 to i32, !dbg !4704, !psr.id !4731, !ValueTainted !3091
  %744 = and i32 %743, 255, !dbg !4704, !psr.id !4732, !ValueTainted !3091
  %745 = trunc i32 %744 to i8, !dbg !4704, !psr.id !4733, !ValueTainted !3091
  %746 = getelementptr inbounds i8, i8* %.14, i64 8, !dbg !4704, !psr.id !4734, !PointTainted !3088
  %747 = getelementptr inbounds i8, i8* %746, i64 3, !dbg !4704, !psr.id !4735, !PointTainted !3088
  store i8 %745, i8* %747, align 1, !dbg !4704, !psr.id !4736
  br label %748, !dbg !4704, !psr.id !4737

748:                                              ; preds = %720
  br label %749, !dbg !4738, !psr.id !4739

749:                                              ; preds = %748
  %750 = trunc i32 %380 to i8, !dbg !4740, !psr.id !4742, !ValueTainted !3091
  %751 = zext i8 %750 to i32, !dbg !4740, !psr.id !4743, !ValueTainted !3091
  %752 = and i32 %751, 255, !dbg !4740, !psr.id !4744, !ValueTainted !3091
  %753 = trunc i32 %752 to i8, !dbg !4740, !psr.id !4745, !ValueTainted !3091
  %754 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !4740, !psr.id !4746, !PointTainted !3088
  %755 = getelementptr inbounds i8, i8* %754, i64 0, !dbg !4740, !psr.id !4747, !PointTainted !3088
  store i8 %753, i8* %755, align 1, !dbg !4740, !psr.id !4748
  %756 = lshr i32 %380, 8, !dbg !4740, !psr.id !4749, !ValueTainted !3091
  %757 = trunc i32 %756 to i8, !dbg !4740, !psr.id !4750, !ValueTainted !3091
  %758 = zext i8 %757 to i32, !dbg !4740, !psr.id !4751, !ValueTainted !3091
  %759 = and i32 %758, 255, !dbg !4740, !psr.id !4752, !ValueTainted !3091
  %760 = trunc i32 %759 to i8, !dbg !4740, !psr.id !4753, !ValueTainted !3091
  %761 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !4740, !psr.id !4754, !PointTainted !3088
  %762 = getelementptr inbounds i8, i8* %761, i64 1, !dbg !4740, !psr.id !4755, !PointTainted !3088
  store i8 %760, i8* %762, align 1, !dbg !4740, !psr.id !4756
  %763 = lshr i32 %380, 16, !dbg !4740, !psr.id !4757, !ValueTainted !3091
  %764 = trunc i32 %763 to i8, !dbg !4740, !psr.id !4758, !ValueTainted !3091
  %765 = zext i8 %764 to i32, !dbg !4740, !psr.id !4759, !ValueTainted !3091
  %766 = and i32 %765, 255, !dbg !4740, !psr.id !4760, !ValueTainted !3091
  %767 = trunc i32 %766 to i8, !dbg !4740, !psr.id !4761, !ValueTainted !3091
  %768 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !4740, !psr.id !4762, !PointTainted !3088
  %769 = getelementptr inbounds i8, i8* %768, i64 2, !dbg !4740, !psr.id !4763, !PointTainted !3088
  store i8 %767, i8* %769, align 1, !dbg !4740, !psr.id !4764
  %770 = lshr i32 %380, 24, !dbg !4740, !psr.id !4765, !ValueTainted !3091
  %771 = trunc i32 %770 to i8, !dbg !4740, !psr.id !4766, !ValueTainted !3091
  %772 = zext i8 %771 to i32, !dbg !4740, !psr.id !4767, !ValueTainted !3091
  %773 = and i32 %772, 255, !dbg !4740, !psr.id !4768, !ValueTainted !3091
  %774 = trunc i32 %773 to i8, !dbg !4740, !psr.id !4769, !ValueTainted !3091
  %775 = getelementptr inbounds i8, i8* %.14, i64 12, !dbg !4740, !psr.id !4770, !PointTainted !3088
  %776 = getelementptr inbounds i8, i8* %775, i64 3, !dbg !4740, !psr.id !4771, !PointTainted !3088
  store i8 %774, i8* %776, align 1, !dbg !4740, !psr.id !4772
  br label %777, !dbg !4740, !psr.id !4773

777:                                              ; preds = %749
  br label %778, !dbg !4774, !psr.id !4775

778:                                              ; preds = %777
  %779 = trunc i32 %403 to i8, !dbg !4776, !psr.id !4778, !ValueTainted !3091
  %780 = zext i8 %779 to i32, !dbg !4776, !psr.id !4779, !ValueTainted !3091
  %781 = and i32 %780, 255, !dbg !4776, !psr.id !4780, !ValueTainted !3091
  %782 = trunc i32 %781 to i8, !dbg !4776, !psr.id !4781, !ValueTainted !3091
  %783 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !4776, !psr.id !4782, !PointTainted !3088
  %784 = getelementptr inbounds i8, i8* %783, i64 0, !dbg !4776, !psr.id !4783, !PointTainted !3088
  store i8 %782, i8* %784, align 1, !dbg !4776, !psr.id !4784
  %785 = lshr i32 %403, 8, !dbg !4776, !psr.id !4785, !ValueTainted !3091
  %786 = trunc i32 %785 to i8, !dbg !4776, !psr.id !4786, !ValueTainted !3091
  %787 = zext i8 %786 to i32, !dbg !4776, !psr.id !4787, !ValueTainted !3091
  %788 = and i32 %787, 255, !dbg !4776, !psr.id !4788, !ValueTainted !3091
  %789 = trunc i32 %788 to i8, !dbg !4776, !psr.id !4789, !ValueTainted !3091
  %790 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !4776, !psr.id !4790, !PointTainted !3088
  %791 = getelementptr inbounds i8, i8* %790, i64 1, !dbg !4776, !psr.id !4791, !PointTainted !3088
  store i8 %789, i8* %791, align 1, !dbg !4776, !psr.id !4792
  %792 = lshr i32 %403, 16, !dbg !4776, !psr.id !4793, !ValueTainted !3091
  %793 = trunc i32 %792 to i8, !dbg !4776, !psr.id !4794, !ValueTainted !3091
  %794 = zext i8 %793 to i32, !dbg !4776, !psr.id !4795, !ValueTainted !3091
  %795 = and i32 %794, 255, !dbg !4776, !psr.id !4796, !ValueTainted !3091
  %796 = trunc i32 %795 to i8, !dbg !4776, !psr.id !4797, !ValueTainted !3091
  %797 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !4776, !psr.id !4798, !PointTainted !3088
  %798 = getelementptr inbounds i8, i8* %797, i64 2, !dbg !4776, !psr.id !4799, !PointTainted !3088
  store i8 %796, i8* %798, align 1, !dbg !4776, !psr.id !4800
  %799 = lshr i32 %403, 24, !dbg !4776, !psr.id !4801, !ValueTainted !3091
  %800 = trunc i32 %799 to i8, !dbg !4776, !psr.id !4802, !ValueTainted !3091
  %801 = zext i8 %800 to i32, !dbg !4776, !psr.id !4803, !ValueTainted !3091
  %802 = and i32 %801, 255, !dbg !4776, !psr.id !4804, !ValueTainted !3091
  %803 = trunc i32 %802 to i8, !dbg !4776, !psr.id !4805, !ValueTainted !3091
  %804 = getelementptr inbounds i8, i8* %.14, i64 16, !dbg !4776, !psr.id !4806, !PointTainted !3088
  %805 = getelementptr inbounds i8, i8* %804, i64 3, !dbg !4776, !psr.id !4807, !PointTainted !3088
  store i8 %803, i8* %805, align 1, !dbg !4776, !psr.id !4808
  br label %806, !dbg !4776, !psr.id !4809

806:                                              ; preds = %778
  br label %807, !dbg !4810, !psr.id !4811

807:                                              ; preds = %806
  %808 = trunc i32 %426 to i8, !dbg !4812, !psr.id !4814, !ValueTainted !3091
  %809 = zext i8 %808 to i32, !dbg !4812, !psr.id !4815, !ValueTainted !3091
  %810 = and i32 %809, 255, !dbg !4812, !psr.id !4816, !ValueTainted !3091
  %811 = trunc i32 %810 to i8, !dbg !4812, !psr.id !4817, !ValueTainted !3091
  %812 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !4812, !psr.id !4818, !PointTainted !3088
  %813 = getelementptr inbounds i8, i8* %812, i64 0, !dbg !4812, !psr.id !4819, !PointTainted !3088
  store i8 %811, i8* %813, align 1, !dbg !4812, !psr.id !4820
  %814 = lshr i32 %426, 8, !dbg !4812, !psr.id !4821, !ValueTainted !3091
  %815 = trunc i32 %814 to i8, !dbg !4812, !psr.id !4822, !ValueTainted !3091
  %816 = zext i8 %815 to i32, !dbg !4812, !psr.id !4823, !ValueTainted !3091
  %817 = and i32 %816, 255, !dbg !4812, !psr.id !4824, !ValueTainted !3091
  %818 = trunc i32 %817 to i8, !dbg !4812, !psr.id !4825, !ValueTainted !3091
  %819 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !4812, !psr.id !4826, !PointTainted !3088
  %820 = getelementptr inbounds i8, i8* %819, i64 1, !dbg !4812, !psr.id !4827, !PointTainted !3088
  store i8 %818, i8* %820, align 1, !dbg !4812, !psr.id !4828
  %821 = lshr i32 %426, 16, !dbg !4812, !psr.id !4829, !ValueTainted !3091
  %822 = trunc i32 %821 to i8, !dbg !4812, !psr.id !4830, !ValueTainted !3091
  %823 = zext i8 %822 to i32, !dbg !4812, !psr.id !4831, !ValueTainted !3091
  %824 = and i32 %823, 255, !dbg !4812, !psr.id !4832, !ValueTainted !3091
  %825 = trunc i32 %824 to i8, !dbg !4812, !psr.id !4833, !ValueTainted !3091
  %826 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !4812, !psr.id !4834, !PointTainted !3088
  %827 = getelementptr inbounds i8, i8* %826, i64 2, !dbg !4812, !psr.id !4835, !PointTainted !3088
  store i8 %825, i8* %827, align 1, !dbg !4812, !psr.id !4836
  %828 = lshr i32 %426, 24, !dbg !4812, !psr.id !4837, !ValueTainted !3091
  %829 = trunc i32 %828 to i8, !dbg !4812, !psr.id !4838, !ValueTainted !3091
  %830 = zext i8 %829 to i32, !dbg !4812, !psr.id !4839, !ValueTainted !3091
  %831 = and i32 %830, 255, !dbg !4812, !psr.id !4840, !ValueTainted !3091
  %832 = trunc i32 %831 to i8, !dbg !4812, !psr.id !4841, !ValueTainted !3091
  %833 = getelementptr inbounds i8, i8* %.14, i64 20, !dbg !4812, !psr.id !4842, !PointTainted !3088
  %834 = getelementptr inbounds i8, i8* %833, i64 3, !dbg !4812, !psr.id !4843, !PointTainted !3088
  store i8 %832, i8* %834, align 1, !dbg !4812, !psr.id !4844
  br label %835, !dbg !4812, !psr.id !4845

835:                                              ; preds = %807
  br label %836, !dbg !4846, !psr.id !4847

836:                                              ; preds = %835
  %837 = trunc i32 %449 to i8, !dbg !4848, !psr.id !4850, !ValueTainted !3091
  %838 = zext i8 %837 to i32, !dbg !4848, !psr.id !4851, !ValueTainted !3091
  %839 = and i32 %838, 255, !dbg !4848, !psr.id !4852, !ValueTainted !3091
  %840 = trunc i32 %839 to i8, !dbg !4848, !psr.id !4853, !ValueTainted !3091
  %841 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !4848, !psr.id !4854, !PointTainted !3088
  %842 = getelementptr inbounds i8, i8* %841, i64 0, !dbg !4848, !psr.id !4855, !PointTainted !3088
  store i8 %840, i8* %842, align 1, !dbg !4848, !psr.id !4856
  %843 = lshr i32 %449, 8, !dbg !4848, !psr.id !4857, !ValueTainted !3091
  %844 = trunc i32 %843 to i8, !dbg !4848, !psr.id !4858, !ValueTainted !3091
  %845 = zext i8 %844 to i32, !dbg !4848, !psr.id !4859, !ValueTainted !3091
  %846 = and i32 %845, 255, !dbg !4848, !psr.id !4860, !ValueTainted !3091
  %847 = trunc i32 %846 to i8, !dbg !4848, !psr.id !4861, !ValueTainted !3091
  %848 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !4848, !psr.id !4862, !PointTainted !3088
  %849 = getelementptr inbounds i8, i8* %848, i64 1, !dbg !4848, !psr.id !4863, !PointTainted !3088
  store i8 %847, i8* %849, align 1, !dbg !4848, !psr.id !4864
  %850 = lshr i32 %449, 16, !dbg !4848, !psr.id !4865, !ValueTainted !3091
  %851 = trunc i32 %850 to i8, !dbg !4848, !psr.id !4866, !ValueTainted !3091
  %852 = zext i8 %851 to i32, !dbg !4848, !psr.id !4867, !ValueTainted !3091
  %853 = and i32 %852, 255, !dbg !4848, !psr.id !4868, !ValueTainted !3091
  %854 = trunc i32 %853 to i8, !dbg !4848, !psr.id !4869, !ValueTainted !3091
  %855 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !4848, !psr.id !4870, !PointTainted !3088
  %856 = getelementptr inbounds i8, i8* %855, i64 2, !dbg !4848, !psr.id !4871, !PointTainted !3088
  store i8 %854, i8* %856, align 1, !dbg !4848, !psr.id !4872
  %857 = lshr i32 %449, 24, !dbg !4848, !psr.id !4873, !ValueTainted !3091
  %858 = trunc i32 %857 to i8, !dbg !4848, !psr.id !4874, !ValueTainted !3091
  %859 = zext i8 %858 to i32, !dbg !4848, !psr.id !4875, !ValueTainted !3091
  %860 = and i32 %859, 255, !dbg !4848, !psr.id !4876, !ValueTainted !3091
  %861 = trunc i32 %860 to i8, !dbg !4848, !psr.id !4877, !ValueTainted !3091
  %862 = getelementptr inbounds i8, i8* %.14, i64 24, !dbg !4848, !psr.id !4878, !PointTainted !3088
  %863 = getelementptr inbounds i8, i8* %862, i64 3, !dbg !4848, !psr.id !4879, !PointTainted !3088
  store i8 %861, i8* %863, align 1, !dbg !4848, !psr.id !4880
  br label %864, !dbg !4848, !psr.id !4881

864:                                              ; preds = %836
  br label %865, !dbg !4882, !psr.id !4883

865:                                              ; preds = %864
  %866 = trunc i32 %472 to i8, !dbg !4884, !psr.id !4886, !ValueTainted !3091
  %867 = zext i8 %866 to i32, !dbg !4884, !psr.id !4887, !ValueTainted !3091
  %868 = and i32 %867, 255, !dbg !4884, !psr.id !4888, !ValueTainted !3091
  %869 = trunc i32 %868 to i8, !dbg !4884, !psr.id !4889, !ValueTainted !3091
  %870 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !4884, !psr.id !4890, !PointTainted !3088
  %871 = getelementptr inbounds i8, i8* %870, i64 0, !dbg !4884, !psr.id !4891, !PointTainted !3088
  store i8 %869, i8* %871, align 1, !dbg !4884, !psr.id !4892
  %872 = lshr i32 %472, 8, !dbg !4884, !psr.id !4893, !ValueTainted !3091
  %873 = trunc i32 %872 to i8, !dbg !4884, !psr.id !4894, !ValueTainted !3091
  %874 = zext i8 %873 to i32, !dbg !4884, !psr.id !4895, !ValueTainted !3091
  %875 = and i32 %874, 255, !dbg !4884, !psr.id !4896, !ValueTainted !3091
  %876 = trunc i32 %875 to i8, !dbg !4884, !psr.id !4897, !ValueTainted !3091
  %877 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !4884, !psr.id !4898, !PointTainted !3088
  %878 = getelementptr inbounds i8, i8* %877, i64 1, !dbg !4884, !psr.id !4899, !PointTainted !3088
  store i8 %876, i8* %878, align 1, !dbg !4884, !psr.id !4900
  %879 = lshr i32 %472, 16, !dbg !4884, !psr.id !4901, !ValueTainted !3091
  %880 = trunc i32 %879 to i8, !dbg !4884, !psr.id !4902, !ValueTainted !3091
  %881 = zext i8 %880 to i32, !dbg !4884, !psr.id !4903, !ValueTainted !3091
  %882 = and i32 %881, 255, !dbg !4884, !psr.id !4904, !ValueTainted !3091
  %883 = trunc i32 %882 to i8, !dbg !4884, !psr.id !4905, !ValueTainted !3091
  %884 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !4884, !psr.id !4906, !PointTainted !3088
  %885 = getelementptr inbounds i8, i8* %884, i64 2, !dbg !4884, !psr.id !4907, !PointTainted !3088
  store i8 %883, i8* %885, align 1, !dbg !4884, !psr.id !4908
  %886 = lshr i32 %472, 24, !dbg !4884, !psr.id !4909, !ValueTainted !3091
  %887 = trunc i32 %886 to i8, !dbg !4884, !psr.id !4910, !ValueTainted !3091
  %888 = zext i8 %887 to i32, !dbg !4884, !psr.id !4911, !ValueTainted !3091
  %889 = and i32 %888, 255, !dbg !4884, !psr.id !4912, !ValueTainted !3091
  %890 = trunc i32 %889 to i8, !dbg !4884, !psr.id !4913, !ValueTainted !3091
  %891 = getelementptr inbounds i8, i8* %.14, i64 28, !dbg !4884, !psr.id !4914, !PointTainted !3088
  %892 = getelementptr inbounds i8, i8* %891, i64 3, !dbg !4884, !psr.id !4915, !PointTainted !3088
  store i8 %890, i8* %892, align 1, !dbg !4884, !psr.id !4916
  br label %893, !dbg !4884, !psr.id !4917

893:                                              ; preds = %865
  br label %894, !dbg !4918, !psr.id !4919

894:                                              ; preds = %893
  %895 = trunc i32 %495 to i8, !dbg !4920, !psr.id !4922, !ValueTainted !3091
  %896 = zext i8 %895 to i32, !dbg !4920, !psr.id !4923, !ValueTainted !3091
  %897 = and i32 %896, 255, !dbg !4920, !psr.id !4924, !ValueTainted !3091
  %898 = trunc i32 %897 to i8, !dbg !4920, !psr.id !4925, !ValueTainted !3091
  %899 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !4920, !psr.id !4926, !PointTainted !3088
  %900 = getelementptr inbounds i8, i8* %899, i64 0, !dbg !4920, !psr.id !4927, !PointTainted !3088
  store i8 %898, i8* %900, align 1, !dbg !4920, !psr.id !4928
  %901 = lshr i32 %495, 8, !dbg !4920, !psr.id !4929, !ValueTainted !3091
  %902 = trunc i32 %901 to i8, !dbg !4920, !psr.id !4930, !ValueTainted !3091
  %903 = zext i8 %902 to i32, !dbg !4920, !psr.id !4931, !ValueTainted !3091
  %904 = and i32 %903, 255, !dbg !4920, !psr.id !4932, !ValueTainted !3091
  %905 = trunc i32 %904 to i8, !dbg !4920, !psr.id !4933, !ValueTainted !3091
  %906 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !4920, !psr.id !4934, !PointTainted !3088
  %907 = getelementptr inbounds i8, i8* %906, i64 1, !dbg !4920, !psr.id !4935, !PointTainted !3088
  store i8 %905, i8* %907, align 1, !dbg !4920, !psr.id !4936
  %908 = lshr i32 %495, 16, !dbg !4920, !psr.id !4937, !ValueTainted !3091
  %909 = trunc i32 %908 to i8, !dbg !4920, !psr.id !4938, !ValueTainted !3091
  %910 = zext i8 %909 to i32, !dbg !4920, !psr.id !4939, !ValueTainted !3091
  %911 = and i32 %910, 255, !dbg !4920, !psr.id !4940, !ValueTainted !3091
  %912 = trunc i32 %911 to i8, !dbg !4920, !psr.id !4941, !ValueTainted !3091
  %913 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !4920, !psr.id !4942, !PointTainted !3088
  %914 = getelementptr inbounds i8, i8* %913, i64 2, !dbg !4920, !psr.id !4943, !PointTainted !3088
  store i8 %912, i8* %914, align 1, !dbg !4920, !psr.id !4944
  %915 = lshr i32 %495, 24, !dbg !4920, !psr.id !4945, !ValueTainted !3091
  %916 = trunc i32 %915 to i8, !dbg !4920, !psr.id !4946, !ValueTainted !3091
  %917 = zext i8 %916 to i32, !dbg !4920, !psr.id !4947, !ValueTainted !3091
  %918 = and i32 %917, 255, !dbg !4920, !psr.id !4948, !ValueTainted !3091
  %919 = trunc i32 %918 to i8, !dbg !4920, !psr.id !4949, !ValueTainted !3091
  %920 = getelementptr inbounds i8, i8* %.14, i64 32, !dbg !4920, !psr.id !4950, !PointTainted !3088
  %921 = getelementptr inbounds i8, i8* %920, i64 3, !dbg !4920, !psr.id !4951, !PointTainted !3088
  store i8 %919, i8* %921, align 1, !dbg !4920, !psr.id !4952
  br label %922, !dbg !4920, !psr.id !4953

922:                                              ; preds = %894
  br label %923, !dbg !4954, !psr.id !4955

923:                                              ; preds = %922
  %924 = trunc i32 %518 to i8, !dbg !4956, !psr.id !4958, !ValueTainted !3091
  %925 = zext i8 %924 to i32, !dbg !4956, !psr.id !4959, !ValueTainted !3091
  %926 = and i32 %925, 255, !dbg !4956, !psr.id !4960, !ValueTainted !3091
  %927 = trunc i32 %926 to i8, !dbg !4956, !psr.id !4961, !ValueTainted !3091
  %928 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !4956, !psr.id !4962, !PointTainted !3088
  %929 = getelementptr inbounds i8, i8* %928, i64 0, !dbg !4956, !psr.id !4963, !PointTainted !3088
  store i8 %927, i8* %929, align 1, !dbg !4956, !psr.id !4964
  %930 = lshr i32 %518, 8, !dbg !4956, !psr.id !4965, !ValueTainted !3091
  %931 = trunc i32 %930 to i8, !dbg !4956, !psr.id !4966, !ValueTainted !3091
  %932 = zext i8 %931 to i32, !dbg !4956, !psr.id !4967, !ValueTainted !3091
  %933 = and i32 %932, 255, !dbg !4956, !psr.id !4968, !ValueTainted !3091
  %934 = trunc i32 %933 to i8, !dbg !4956, !psr.id !4969, !ValueTainted !3091
  %935 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !4956, !psr.id !4970, !PointTainted !3088
  %936 = getelementptr inbounds i8, i8* %935, i64 1, !dbg !4956, !psr.id !4971, !PointTainted !3088
  store i8 %934, i8* %936, align 1, !dbg !4956, !psr.id !4972
  %937 = lshr i32 %518, 16, !dbg !4956, !psr.id !4973, !ValueTainted !3091
  %938 = trunc i32 %937 to i8, !dbg !4956, !psr.id !4974, !ValueTainted !3091
  %939 = zext i8 %938 to i32, !dbg !4956, !psr.id !4975, !ValueTainted !3091
  %940 = and i32 %939, 255, !dbg !4956, !psr.id !4976, !ValueTainted !3091
  %941 = trunc i32 %940 to i8, !dbg !4956, !psr.id !4977, !ValueTainted !3091
  %942 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !4956, !psr.id !4978, !PointTainted !3088
  %943 = getelementptr inbounds i8, i8* %942, i64 2, !dbg !4956, !psr.id !4979, !PointTainted !3088
  store i8 %941, i8* %943, align 1, !dbg !4956, !psr.id !4980
  %944 = lshr i32 %518, 24, !dbg !4956, !psr.id !4981, !ValueTainted !3091
  %945 = trunc i32 %944 to i8, !dbg !4956, !psr.id !4982, !ValueTainted !3091
  %946 = zext i8 %945 to i32, !dbg !4956, !psr.id !4983, !ValueTainted !3091
  %947 = and i32 %946, 255, !dbg !4956, !psr.id !4984, !ValueTainted !3091
  %948 = trunc i32 %947 to i8, !dbg !4956, !psr.id !4985, !ValueTainted !3091
  %949 = getelementptr inbounds i8, i8* %.14, i64 36, !dbg !4956, !psr.id !4986, !PointTainted !3088
  %950 = getelementptr inbounds i8, i8* %949, i64 3, !dbg !4956, !psr.id !4987, !PointTainted !3088
  store i8 %948, i8* %950, align 1, !dbg !4956, !psr.id !4988
  br label %951, !dbg !4956, !psr.id !4989

951:                                              ; preds = %923
  br label %952, !dbg !4990, !psr.id !4991

952:                                              ; preds = %951
  %953 = trunc i32 %541 to i8, !dbg !4992, !psr.id !4994, !ValueTainted !3091
  %954 = zext i8 %953 to i32, !dbg !4992, !psr.id !4995, !ValueTainted !3091
  %955 = and i32 %954, 255, !dbg !4992, !psr.id !4996, !ValueTainted !3091
  %956 = trunc i32 %955 to i8, !dbg !4992, !psr.id !4997, !ValueTainted !3091
  %957 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !4992, !psr.id !4998, !PointTainted !3088
  %958 = getelementptr inbounds i8, i8* %957, i64 0, !dbg !4992, !psr.id !4999, !PointTainted !3088
  store i8 %956, i8* %958, align 1, !dbg !4992, !psr.id !5000
  %959 = lshr i32 %541, 8, !dbg !4992, !psr.id !5001, !ValueTainted !3091
  %960 = trunc i32 %959 to i8, !dbg !4992, !psr.id !5002, !ValueTainted !3091
  %961 = zext i8 %960 to i32, !dbg !4992, !psr.id !5003, !ValueTainted !3091
  %962 = and i32 %961, 255, !dbg !4992, !psr.id !5004, !ValueTainted !3091
  %963 = trunc i32 %962 to i8, !dbg !4992, !psr.id !5005, !ValueTainted !3091
  %964 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !4992, !psr.id !5006, !PointTainted !3088
  %965 = getelementptr inbounds i8, i8* %964, i64 1, !dbg !4992, !psr.id !5007, !PointTainted !3088
  store i8 %963, i8* %965, align 1, !dbg !4992, !psr.id !5008
  %966 = lshr i32 %541, 16, !dbg !4992, !psr.id !5009, !ValueTainted !3091
  %967 = trunc i32 %966 to i8, !dbg !4992, !psr.id !5010, !ValueTainted !3091
  %968 = zext i8 %967 to i32, !dbg !4992, !psr.id !5011, !ValueTainted !3091
  %969 = and i32 %968, 255, !dbg !4992, !psr.id !5012, !ValueTainted !3091
  %970 = trunc i32 %969 to i8, !dbg !4992, !psr.id !5013, !ValueTainted !3091
  %971 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !4992, !psr.id !5014, !PointTainted !3088
  %972 = getelementptr inbounds i8, i8* %971, i64 2, !dbg !4992, !psr.id !5015, !PointTainted !3088
  store i8 %970, i8* %972, align 1, !dbg !4992, !psr.id !5016
  %973 = lshr i32 %541, 24, !dbg !4992, !psr.id !5017, !ValueTainted !3091
  %974 = trunc i32 %973 to i8, !dbg !4992, !psr.id !5018, !ValueTainted !3091
  %975 = zext i8 %974 to i32, !dbg !4992, !psr.id !5019, !ValueTainted !3091
  %976 = and i32 %975, 255, !dbg !4992, !psr.id !5020, !ValueTainted !3091
  %977 = trunc i32 %976 to i8, !dbg !4992, !psr.id !5021, !ValueTainted !3091
  %978 = getelementptr inbounds i8, i8* %.14, i64 40, !dbg !4992, !psr.id !5022, !PointTainted !3088
  %979 = getelementptr inbounds i8, i8* %978, i64 3, !dbg !4992, !psr.id !5023, !PointTainted !3088
  store i8 %977, i8* %979, align 1, !dbg !4992, !psr.id !5024
  br label %980, !dbg !4992, !psr.id !5025

980:                                              ; preds = %952
  br label %981, !dbg !5026, !psr.id !5027

981:                                              ; preds = %980
  %982 = trunc i32 %564 to i8, !dbg !5028, !psr.id !5030, !ValueTainted !3091
  %983 = zext i8 %982 to i32, !dbg !5028, !psr.id !5031, !ValueTainted !3091
  %984 = and i32 %983, 255, !dbg !5028, !psr.id !5032, !ValueTainted !3091
  %985 = trunc i32 %984 to i8, !dbg !5028, !psr.id !5033, !ValueTainted !3091
  %986 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !5028, !psr.id !5034, !PointTainted !3088
  %987 = getelementptr inbounds i8, i8* %986, i64 0, !dbg !5028, !psr.id !5035, !PointTainted !3088
  store i8 %985, i8* %987, align 1, !dbg !5028, !psr.id !5036
  %988 = lshr i32 %564, 8, !dbg !5028, !psr.id !5037, !ValueTainted !3091
  %989 = trunc i32 %988 to i8, !dbg !5028, !psr.id !5038, !ValueTainted !3091
  %990 = zext i8 %989 to i32, !dbg !5028, !psr.id !5039, !ValueTainted !3091
  %991 = and i32 %990, 255, !dbg !5028, !psr.id !5040, !ValueTainted !3091
  %992 = trunc i32 %991 to i8, !dbg !5028, !psr.id !5041, !ValueTainted !3091
  %993 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !5028, !psr.id !5042, !PointTainted !3088
  %994 = getelementptr inbounds i8, i8* %993, i64 1, !dbg !5028, !psr.id !5043, !PointTainted !3088
  store i8 %992, i8* %994, align 1, !dbg !5028, !psr.id !5044
  %995 = lshr i32 %564, 16, !dbg !5028, !psr.id !5045, !ValueTainted !3091
  %996 = trunc i32 %995 to i8, !dbg !5028, !psr.id !5046, !ValueTainted !3091
  %997 = zext i8 %996 to i32, !dbg !5028, !psr.id !5047, !ValueTainted !3091
  %998 = and i32 %997, 255, !dbg !5028, !psr.id !5048, !ValueTainted !3091
  %999 = trunc i32 %998 to i8, !dbg !5028, !psr.id !5049, !ValueTainted !3091
  %1000 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !5028, !psr.id !5050, !PointTainted !3088
  %1001 = getelementptr inbounds i8, i8* %1000, i64 2, !dbg !5028, !psr.id !5051, !PointTainted !3088
  store i8 %999, i8* %1001, align 1, !dbg !5028, !psr.id !5052
  %1002 = lshr i32 %564, 24, !dbg !5028, !psr.id !5053, !ValueTainted !3091
  %1003 = trunc i32 %1002 to i8, !dbg !5028, !psr.id !5054, !ValueTainted !3091
  %1004 = zext i8 %1003 to i32, !dbg !5028, !psr.id !5055, !ValueTainted !3091
  %1005 = and i32 %1004, 255, !dbg !5028, !psr.id !5056, !ValueTainted !3091
  %1006 = trunc i32 %1005 to i8, !dbg !5028, !psr.id !5057, !ValueTainted !3091
  %1007 = getelementptr inbounds i8, i8* %.14, i64 44, !dbg !5028, !psr.id !5058, !PointTainted !3088
  %1008 = getelementptr inbounds i8, i8* %1007, i64 3, !dbg !5028, !psr.id !5059, !PointTainted !3088
  store i8 %1006, i8* %1008, align 1, !dbg !5028, !psr.id !5060
  br label %1009, !dbg !5028, !psr.id !5061

1009:                                             ; preds = %981
  br label %1010, !dbg !5062, !psr.id !5063

1010:                                             ; preds = %1009
  %1011 = trunc i32 %587 to i8, !dbg !5064, !psr.id !5066, !ValueTainted !3091
  %1012 = zext i8 %1011 to i32, !dbg !5064, !psr.id !5067, !ValueTainted !3091
  %1013 = and i32 %1012, 255, !dbg !5064, !psr.id !5068, !ValueTainted !3091
  %1014 = trunc i32 %1013 to i8, !dbg !5064, !psr.id !5069, !ValueTainted !3091
  %1015 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !5064, !psr.id !5070, !PointTainted !3088
  %1016 = getelementptr inbounds i8, i8* %1015, i64 0, !dbg !5064, !psr.id !5071, !PointTainted !3088
  store i8 %1014, i8* %1016, align 1, !dbg !5064, !psr.id !5072
  %1017 = lshr i32 %587, 8, !dbg !5064, !psr.id !5073, !ValueTainted !3091
  %1018 = trunc i32 %1017 to i8, !dbg !5064, !psr.id !5074, !ValueTainted !3091
  %1019 = zext i8 %1018 to i32, !dbg !5064, !psr.id !5075, !ValueTainted !3091
  %1020 = and i32 %1019, 255, !dbg !5064, !psr.id !5076, !ValueTainted !3091
  %1021 = trunc i32 %1020 to i8, !dbg !5064, !psr.id !5077, !ValueTainted !3091
  %1022 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !5064, !psr.id !5078, !PointTainted !3088
  %1023 = getelementptr inbounds i8, i8* %1022, i64 1, !dbg !5064, !psr.id !5079, !PointTainted !3088
  store i8 %1021, i8* %1023, align 1, !dbg !5064, !psr.id !5080
  %1024 = lshr i32 %587, 16, !dbg !5064, !psr.id !5081, !ValueTainted !3091
  %1025 = trunc i32 %1024 to i8, !dbg !5064, !psr.id !5082, !ValueTainted !3091
  %1026 = zext i8 %1025 to i32, !dbg !5064, !psr.id !5083, !ValueTainted !3091
  %1027 = and i32 %1026, 255, !dbg !5064, !psr.id !5084, !ValueTainted !3091
  %1028 = trunc i32 %1027 to i8, !dbg !5064, !psr.id !5085, !ValueTainted !3091
  %1029 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !5064, !psr.id !5086, !PointTainted !3088
  %1030 = getelementptr inbounds i8, i8* %1029, i64 2, !dbg !5064, !psr.id !5087, !PointTainted !3088
  store i8 %1028, i8* %1030, align 1, !dbg !5064, !psr.id !5088
  %1031 = lshr i32 %587, 24, !dbg !5064, !psr.id !5089, !ValueTainted !3091
  %1032 = trunc i32 %1031 to i8, !dbg !5064, !psr.id !5090, !ValueTainted !3091
  %1033 = zext i8 %1032 to i32, !dbg !5064, !psr.id !5091, !ValueTainted !3091
  %1034 = and i32 %1033, 255, !dbg !5064, !psr.id !5092, !ValueTainted !3091
  %1035 = trunc i32 %1034 to i8, !dbg !5064, !psr.id !5093, !ValueTainted !3091
  %1036 = getelementptr inbounds i8, i8* %.14, i64 48, !dbg !5064, !psr.id !5094, !PointTainted !3088
  %1037 = getelementptr inbounds i8, i8* %1036, i64 3, !dbg !5064, !psr.id !5095, !PointTainted !3088
  store i8 %1035, i8* %1037, align 1, !dbg !5064, !psr.id !5096
  br label %1038, !dbg !5064, !psr.id !5097

1038:                                             ; preds = %1010
  br label %1039, !dbg !5098, !psr.id !5099

1039:                                             ; preds = %1038
  %1040 = trunc i32 %610 to i8, !dbg !5100, !psr.id !5102, !ValueTainted !3091
  %1041 = zext i8 %1040 to i32, !dbg !5100, !psr.id !5103, !ValueTainted !3091
  %1042 = and i32 %1041, 255, !dbg !5100, !psr.id !5104, !ValueTainted !3091
  %1043 = trunc i32 %1042 to i8, !dbg !5100, !psr.id !5105, !ValueTainted !3091
  %1044 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !5100, !psr.id !5106, !PointTainted !3088
  %1045 = getelementptr inbounds i8, i8* %1044, i64 0, !dbg !5100, !psr.id !5107, !PointTainted !3088
  store i8 %1043, i8* %1045, align 1, !dbg !5100, !psr.id !5108
  %1046 = lshr i32 %610, 8, !dbg !5100, !psr.id !5109, !ValueTainted !3091
  %1047 = trunc i32 %1046 to i8, !dbg !5100, !psr.id !5110, !ValueTainted !3091
  %1048 = zext i8 %1047 to i32, !dbg !5100, !psr.id !5111, !ValueTainted !3091
  %1049 = and i32 %1048, 255, !dbg !5100, !psr.id !5112, !ValueTainted !3091
  %1050 = trunc i32 %1049 to i8, !dbg !5100, !psr.id !5113, !ValueTainted !3091
  %1051 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !5100, !psr.id !5114, !PointTainted !3088
  %1052 = getelementptr inbounds i8, i8* %1051, i64 1, !dbg !5100, !psr.id !5115, !PointTainted !3088
  store i8 %1050, i8* %1052, align 1, !dbg !5100, !psr.id !5116
  %1053 = lshr i32 %610, 16, !dbg !5100, !psr.id !5117, !ValueTainted !3091
  %1054 = trunc i32 %1053 to i8, !dbg !5100, !psr.id !5118, !ValueTainted !3091
  %1055 = zext i8 %1054 to i32, !dbg !5100, !psr.id !5119, !ValueTainted !3091
  %1056 = and i32 %1055, 255, !dbg !5100, !psr.id !5120, !ValueTainted !3091
  %1057 = trunc i32 %1056 to i8, !dbg !5100, !psr.id !5121, !ValueTainted !3091
  %1058 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !5100, !psr.id !5122, !PointTainted !3088
  %1059 = getelementptr inbounds i8, i8* %1058, i64 2, !dbg !5100, !psr.id !5123, !PointTainted !3088
  store i8 %1057, i8* %1059, align 1, !dbg !5100, !psr.id !5124
  %1060 = lshr i32 %610, 24, !dbg !5100, !psr.id !5125, !ValueTainted !3091
  %1061 = trunc i32 %1060 to i8, !dbg !5100, !psr.id !5126, !ValueTainted !3091
  %1062 = zext i8 %1061 to i32, !dbg !5100, !psr.id !5127, !ValueTainted !3091
  %1063 = and i32 %1062, 255, !dbg !5100, !psr.id !5128, !ValueTainted !3091
  %1064 = trunc i32 %1063 to i8, !dbg !5100, !psr.id !5129, !ValueTainted !3091
  %1065 = getelementptr inbounds i8, i8* %.14, i64 52, !dbg !5100, !psr.id !5130, !PointTainted !3088
  %1066 = getelementptr inbounds i8, i8* %1065, i64 3, !dbg !5100, !psr.id !5131, !PointTainted !3088
  store i8 %1064, i8* %1066, align 1, !dbg !5100, !psr.id !5132
  br label %1067, !dbg !5100, !psr.id !5133

1067:                                             ; preds = %1039
  br label %1068, !dbg !5134, !psr.id !5135

1068:                                             ; preds = %1067
  %1069 = trunc i32 %633 to i8, !dbg !5136, !psr.id !5138, !ValueTainted !3091
  %1070 = zext i8 %1069 to i32, !dbg !5136, !psr.id !5139, !ValueTainted !3091
  %1071 = and i32 %1070, 255, !dbg !5136, !psr.id !5140, !ValueTainted !3091
  %1072 = trunc i32 %1071 to i8, !dbg !5136, !psr.id !5141, !ValueTainted !3091
  %1073 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !5136, !psr.id !5142, !PointTainted !3088
  %1074 = getelementptr inbounds i8, i8* %1073, i64 0, !dbg !5136, !psr.id !5143, !PointTainted !3088
  store i8 %1072, i8* %1074, align 1, !dbg !5136, !psr.id !5144
  %1075 = lshr i32 %633, 8, !dbg !5136, !psr.id !5145, !ValueTainted !3091
  %1076 = trunc i32 %1075 to i8, !dbg !5136, !psr.id !5146, !ValueTainted !3091
  %1077 = zext i8 %1076 to i32, !dbg !5136, !psr.id !5147, !ValueTainted !3091
  %1078 = and i32 %1077, 255, !dbg !5136, !psr.id !5148, !ValueTainted !3091
  %1079 = trunc i32 %1078 to i8, !dbg !5136, !psr.id !5149, !ValueTainted !3091
  %1080 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !5136, !psr.id !5150, !PointTainted !3088
  %1081 = getelementptr inbounds i8, i8* %1080, i64 1, !dbg !5136, !psr.id !5151, !PointTainted !3088
  store i8 %1079, i8* %1081, align 1, !dbg !5136, !psr.id !5152
  %1082 = lshr i32 %633, 16, !dbg !5136, !psr.id !5153, !ValueTainted !3091
  %1083 = trunc i32 %1082 to i8, !dbg !5136, !psr.id !5154, !ValueTainted !3091
  %1084 = zext i8 %1083 to i32, !dbg !5136, !psr.id !5155, !ValueTainted !3091
  %1085 = and i32 %1084, 255, !dbg !5136, !psr.id !5156, !ValueTainted !3091
  %1086 = trunc i32 %1085 to i8, !dbg !5136, !psr.id !5157, !ValueTainted !3091
  %1087 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !5136, !psr.id !5158, !PointTainted !3088
  %1088 = getelementptr inbounds i8, i8* %1087, i64 2, !dbg !5136, !psr.id !5159, !PointTainted !3088
  store i8 %1086, i8* %1088, align 1, !dbg !5136, !psr.id !5160
  %1089 = lshr i32 %633, 24, !dbg !5136, !psr.id !5161, !ValueTainted !3091
  %1090 = trunc i32 %1089 to i8, !dbg !5136, !psr.id !5162, !ValueTainted !3091
  %1091 = zext i8 %1090 to i32, !dbg !5136, !psr.id !5163, !ValueTainted !3091
  %1092 = and i32 %1091, 255, !dbg !5136, !psr.id !5164, !ValueTainted !3091
  %1093 = trunc i32 %1092 to i8, !dbg !5136, !psr.id !5165, !ValueTainted !3091
  %1094 = getelementptr inbounds i8, i8* %.14, i64 56, !dbg !5136, !psr.id !5166, !PointTainted !3088
  %1095 = getelementptr inbounds i8, i8* %1094, i64 3, !dbg !5136, !psr.id !5167, !PointTainted !3088
  store i8 %1093, i8* %1095, align 1, !dbg !5136, !psr.id !5168
  br label %1096, !dbg !5136, !psr.id !5169

1096:                                             ; preds = %1068
  br label %1097, !dbg !5170, !psr.id !5171

1097:                                             ; preds = %1096
  %1098 = trunc i32 %656 to i8, !dbg !5172, !psr.id !5174, !ValueTainted !3091
  %1099 = zext i8 %1098 to i32, !dbg !5172, !psr.id !5175, !ValueTainted !3091
  %1100 = and i32 %1099, 255, !dbg !5172, !psr.id !5176, !ValueTainted !3091
  %1101 = trunc i32 %1100 to i8, !dbg !5172, !psr.id !5177, !ValueTainted !3091
  %1102 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !5172, !psr.id !5178, !PointTainted !3088
  %1103 = getelementptr inbounds i8, i8* %1102, i64 0, !dbg !5172, !psr.id !5179, !PointTainted !3088
  store i8 %1101, i8* %1103, align 1, !dbg !5172, !psr.id !5180
  %1104 = lshr i32 %656, 8, !dbg !5172, !psr.id !5181, !ValueTainted !3091
  %1105 = trunc i32 %1104 to i8, !dbg !5172, !psr.id !5182, !ValueTainted !3091
  %1106 = zext i8 %1105 to i32, !dbg !5172, !psr.id !5183, !ValueTainted !3091
  %1107 = and i32 %1106, 255, !dbg !5172, !psr.id !5184, !ValueTainted !3091
  %1108 = trunc i32 %1107 to i8, !dbg !5172, !psr.id !5185, !ValueTainted !3091
  %1109 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !5172, !psr.id !5186, !PointTainted !3088
  %1110 = getelementptr inbounds i8, i8* %1109, i64 1, !dbg !5172, !psr.id !5187, !PointTainted !3088
  store i8 %1108, i8* %1110, align 1, !dbg !5172, !psr.id !5188
  %1111 = lshr i32 %656, 16, !dbg !5172, !psr.id !5189, !ValueTainted !3091
  %1112 = trunc i32 %1111 to i8, !dbg !5172, !psr.id !5190, !ValueTainted !3091
  %1113 = zext i8 %1112 to i32, !dbg !5172, !psr.id !5191, !ValueTainted !3091
  %1114 = and i32 %1113, 255, !dbg !5172, !psr.id !5192, !ValueTainted !3091
  %1115 = trunc i32 %1114 to i8, !dbg !5172, !psr.id !5193, !ValueTainted !3091
  %1116 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !5172, !psr.id !5194, !PointTainted !3088
  %1117 = getelementptr inbounds i8, i8* %1116, i64 2, !dbg !5172, !psr.id !5195, !PointTainted !3088
  store i8 %1115, i8* %1117, align 1, !dbg !5172, !psr.id !5196
  %1118 = lshr i32 %656, 24, !dbg !5172, !psr.id !5197, !ValueTainted !3091
  %1119 = trunc i32 %1118 to i8, !dbg !5172, !psr.id !5198, !ValueTainted !3091
  %1120 = zext i8 %1119 to i32, !dbg !5172, !psr.id !5199, !ValueTainted !3091
  %1121 = and i32 %1120, 255, !dbg !5172, !psr.id !5200, !ValueTainted !3091
  %1122 = trunc i32 %1121 to i8, !dbg !5172, !psr.id !5201, !ValueTainted !3091
  %1123 = getelementptr inbounds i8, i8* %.14, i64 60, !dbg !5172, !psr.id !5202, !PointTainted !3088
  %1124 = getelementptr inbounds i8, i8* %1123, i64 3, !dbg !5172, !psr.id !5203, !PointTainted !3088
  store i8 %1122, i8* %1124, align 1, !dbg !5172, !psr.id !5204
  br label %1125, !dbg !5172, !psr.id !5205

1125:                                             ; preds = %1097
  %1126 = icmp ule i64 %.05, 64, !dbg !5206, !psr.id !5208
  br i1 %1126, label %1127, label %1147, !dbg !5209, !psr.id !5210

1127:                                             ; preds = %1125
  %1128 = icmp ult i64 %.05, 64, !dbg !5211, !psr.id !5214
  br i1 %1128, label %1129, label %1142, !dbg !5215, !psr.id !5216

1129:                                             ; preds = %1127
  call void @llvm.dbg.value(metadata i32 0, metadata !3764, metadata !DIExpression()), !dbg !3607, !psr.id !5217
  br label %1130, !dbg !5218, !psr.id !5221

1130:                                             ; preds = %1139, %1129
  %.2 = phi i32 [ 0, %1129 ], [ %1140, %1139 ], !dbg !5222, !psr.id !5223
  call void @llvm.dbg.value(metadata i32 %.2, metadata !3764, metadata !DIExpression()), !dbg !3607, !psr.id !5224
  %1131 = trunc i64 %.05 to i32, !dbg !5225, !psr.id !5227
  %1132 = icmp ult i32 %.2, %1131, !dbg !5228, !psr.id !5229
  br i1 %1132, label %1133, label %1141, !dbg !5230, !psr.id !5231

1133:                                             ; preds = %1130
  %1134 = zext i32 %.2 to i64, !dbg !5232, !psr.id !5234
  %1135 = getelementptr inbounds i8, i8* %.14, i64 %1134, !dbg !5232, !psr.id !5235, !PointTainted !3088
  %1136 = load i8, i8* %1135, align 1, !dbg !5232, !psr.id !5236, !ValueTainted !3091
  %1137 = zext i32 %.2 to i64, !dbg !5237, !psr.id !5238
  %1138 = getelementptr inbounds i8, i8* %.123, i64 %1137, !dbg !5237, !psr.id !5239, !PointTainted !3088
  store i8 %1136, i8* %1138, align 1, !dbg !5240, !psr.id !5241
  br label %1139, !dbg !5242, !psr.id !5243

1139:                                             ; preds = %1133
  %1140 = add i32 %.2, 1, !dbg !5244, !psr.id !5245
  call void @llvm.dbg.value(metadata i32 %1140, metadata !3764, metadata !DIExpression()), !dbg !3607, !psr.id !5246
  br label %1130, !dbg !5247, !llvm.loop !5248, !psr.id !5250

1141:                                             ; preds = %1130
  br label %1142, !dbg !5251, !psr.id !5252

1142:                                             ; preds = %1141, %1127
  %1143 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !5253, !psr.id !5254
  %1144 = getelementptr inbounds [16 x i32], [16 x i32]* %1143, i64 0, i64 12, !dbg !5255, !psr.id !5256
  store i32 %657, i32* %1144, align 4, !dbg !5257, !psr.id !5258
  %1145 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %0, i32 0, i32 0, !dbg !5259, !psr.id !5260
  %1146 = getelementptr inbounds [16 x i32], [16 x i32]* %1145, i64 0, i64 13, !dbg !5261, !psr.id !5262
  store i32 %.125, i32* %1146, align 4, !dbg !5263, !psr.id !5264
  br label %1151, !dbg !5265, !psr.id !5266

1147:                                             ; preds = %1125
  %1148 = sub i64 %.05, 64, !dbg !5267, !psr.id !5268
  call void @llvm.dbg.value(metadata i64 %1148, metadata !3613, metadata !DIExpression()), !dbg !3607, !psr.id !5269
  %1149 = getelementptr inbounds i8, i8* %.14, i64 64, !dbg !5270, !psr.id !5271, !PointTainted !3088
  call void @llvm.dbg.value(metadata i8* %1149, metadata !3611, metadata !DIExpression()), !dbg !3607, !psr.id !5272
  %1150 = getelementptr inbounds i8, i8* %.12, i64 64, !dbg !5273, !psr.id !5274
  call void @llvm.dbg.value(metadata i8* %1150, metadata !3609, metadata !DIExpression()), !dbg !3607, !psr.id !5275
  br label %57, !dbg !5276, !llvm.loop !5277, !psr.id !5280

1151:                                             ; preds = %1142, %7
  ret void, !dbg !5281, !psr.id !5282
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_stream_chacha20_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 !dbg !5283 {
  %7 = alloca %struct.chacha_ctx, align 4, !psr.id !5284
  %8 = alloca [8 x i8], align 1, !psr.id !5285
  call void @llvm.dbg.value(metadata i8* %0, metadata !5286, metadata !DIExpression()), !dbg !5287, !psr.id !5288
  call void @llvm.dbg.value(metadata i8* %1, metadata !5289, metadata !DIExpression()), !dbg !5287, !psr.id !5290
  call void @llvm.dbg.value(metadata i64 %2, metadata !5291, metadata !DIExpression()), !dbg !5287, !psr.id !5292
  call void @llvm.dbg.value(metadata i8* %3, metadata !5293, metadata !DIExpression()), !dbg !5287, !psr.id !5294
  call void @llvm.dbg.value(metadata i64 %4, metadata !5295, metadata !DIExpression()), !dbg !5287, !psr.id !5296
  call void @llvm.dbg.value(metadata i8* %5, metadata !5297, metadata !DIExpression()), !dbg !5287, !psr.id !5298
  call void @llvm.dbg.declare(metadata %struct.chacha_ctx* %7, metadata !5299, metadata !DIExpression()), !dbg !5300, !psr.id !5301
  call void @llvm.dbg.declare(metadata [8 x i8]* %8, metadata !5302, metadata !DIExpression()), !dbg !5304, !psr.id !5305
  %9 = icmp ne i64 %2, 0, !dbg !5306, !psr.id !5308
  br i1 %9, label %11, label %10, !dbg !5309, !psr.id !5310

10:                                               ; preds = %6
  br label %76, !dbg !5311, !psr.id !5313

11:                                               ; preds = %6
  %12 = lshr i64 %4, 32, !dbg !5314, !psr.id !5315
  %13 = trunc i64 %12 to i32, !dbg !5314, !psr.id !5316
  call void @llvm.dbg.value(metadata i32 %13, metadata !5317, metadata !DIExpression()), !dbg !5287, !psr.id !5318
  %14 = trunc i64 %4 to i32, !dbg !5319, !psr.id !5320
  call void @llvm.dbg.value(metadata i32 %14, metadata !5321, metadata !DIExpression()), !dbg !5287, !psr.id !5322
  br label %15, !dbg !5323, !psr.id !5324

15:                                               ; preds = %11
  %16 = trunc i32 %14 to i8, !dbg !5325, !psr.id !5327
  %17 = zext i8 %16 to i32, !dbg !5325, !psr.id !5328
  %18 = and i32 %17, 255, !dbg !5325, !psr.id !5329
  %19 = trunc i32 %18 to i8, !dbg !5325, !psr.id !5330
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !5325, !psr.id !5331
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !5325, !psr.id !5332
  store i8 %19, i8* %21, align 1, !dbg !5325, !psr.id !5333
  %22 = lshr i32 %14, 8, !dbg !5325, !psr.id !5334
  %23 = trunc i32 %22 to i8, !dbg !5325, !psr.id !5335
  %24 = zext i8 %23 to i32, !dbg !5325, !psr.id !5336
  %25 = and i32 %24, 255, !dbg !5325, !psr.id !5337
  %26 = trunc i32 %25 to i8, !dbg !5325, !psr.id !5338
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !5325, !psr.id !5339
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !5325, !psr.id !5340
  store i8 %26, i8* %28, align 1, !dbg !5325, !psr.id !5341
  %29 = lshr i32 %14, 16, !dbg !5325, !psr.id !5342
  %30 = trunc i32 %29 to i8, !dbg !5325, !psr.id !5343
  %31 = zext i8 %30 to i32, !dbg !5325, !psr.id !5344
  %32 = and i32 %31, 255, !dbg !5325, !psr.id !5345
  %33 = trunc i32 %32 to i8, !dbg !5325, !psr.id !5346
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !5325, !psr.id !5347
  %35 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !5325, !psr.id !5348
  store i8 %33, i8* %35, align 1, !dbg !5325, !psr.id !5349
  %36 = lshr i32 %14, 24, !dbg !5325, !psr.id !5350
  %37 = trunc i32 %36 to i8, !dbg !5325, !psr.id !5351
  %38 = zext i8 %37 to i32, !dbg !5325, !psr.id !5352
  %39 = and i32 %38, 255, !dbg !5325, !psr.id !5353
  %40 = trunc i32 %39 to i8, !dbg !5325, !psr.id !5354
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !5325, !psr.id !5355
  %42 = getelementptr inbounds i8, i8* %41, i64 3, !dbg !5325, !psr.id !5356
  store i8 %40, i8* %42, align 1, !dbg !5325, !psr.id !5357
  br label %43, !dbg !5325, !psr.id !5358

43:                                               ; preds = %15
  br label %44, !dbg !5359, !psr.id !5360

44:                                               ; preds = %43
  %45 = trunc i32 %13 to i8, !dbg !5361, !psr.id !5363
  %46 = zext i8 %45 to i32, !dbg !5361, !psr.id !5364
  %47 = and i32 %46, 255, !dbg !5361, !psr.id !5365
  %48 = trunc i32 %47 to i8, !dbg !5361, !psr.id !5366
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !5361, !psr.id !5367
  %50 = getelementptr inbounds i8, i8* %49, i64 0, !dbg !5361, !psr.id !5368
  store i8 %48, i8* %50, align 1, !dbg !5361, !psr.id !5369
  %51 = lshr i32 %13, 8, !dbg !5361, !psr.id !5370
  %52 = trunc i32 %51 to i8, !dbg !5361, !psr.id !5371
  %53 = zext i8 %52 to i32, !dbg !5361, !psr.id !5372
  %54 = and i32 %53, 255, !dbg !5361, !psr.id !5373
  %55 = trunc i32 %54 to i8, !dbg !5361, !psr.id !5374
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !5361, !psr.id !5375
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !5361, !psr.id !5376
  store i8 %55, i8* %57, align 1, !dbg !5361, !psr.id !5377
  %58 = lshr i32 %13, 16, !dbg !5361, !psr.id !5378
  %59 = trunc i32 %58 to i8, !dbg !5361, !psr.id !5379
  %60 = zext i8 %59 to i32, !dbg !5361, !psr.id !5380
  %61 = and i32 %60, 255, !dbg !5361, !psr.id !5381
  %62 = trunc i32 %61 to i8, !dbg !5361, !psr.id !5382
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !5361, !psr.id !5383
  %64 = getelementptr inbounds i8, i8* %63, i64 2, !dbg !5361, !psr.id !5384
  store i8 %62, i8* %64, align 1, !dbg !5361, !psr.id !5385
  %65 = lshr i32 %13, 24, !dbg !5361, !psr.id !5386
  %66 = trunc i32 %65 to i8, !dbg !5361, !psr.id !5387
  %67 = zext i8 %66 to i32, !dbg !5361, !psr.id !5388
  %68 = and i32 %67, 255, !dbg !5361, !psr.id !5389
  %69 = trunc i32 %68 to i8, !dbg !5361, !psr.id !5390
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4, !dbg !5361, !psr.id !5391
  %71 = getelementptr inbounds i8, i8* %70, i64 3, !dbg !5361, !psr.id !5392
  store i8 %69, i8* %71, align 1, !dbg !5361, !psr.id !5393
  br label %72, !dbg !5361, !psr.id !5394

72:                                               ; preds = %44
  call void @chacha_keysetup(%struct.chacha_ctx* %7, i8* %5), !dbg !5395, !psr.id !5396
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !5397, !psr.id !5398
  call void @chacha_ivsetup(%struct.chacha_ctx* %7, i8* %3, i8* %73), !dbg !5399, !psr.id !5400
  call void @chacha_encrypt_bytes(%struct.chacha_ctx* %7, i8* %1, i8* %0, i64 %2), !dbg !5401, !psr.id !5402
  %74 = bitcast %struct.chacha_ctx* %7 to i8*, !dbg !5403, !psr.id !5404
  call void @sodium_memzero(i8* %74, i64 64), !dbg !5405, !psr.id !5406
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !5407, !psr.id !5408
  call void @sodium_memzero(i8* %75, i64 8), !dbg !5409, !psr.id !5410
  br label %76, !dbg !5411, !psr.id !5412

76:                                               ; preds = %72, %10
  ret i32 0, !dbg !5413, !psr.id !5414
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !5415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5416, metadata !DIExpression()), !dbg !5417, !psr.id !5418
  call void @llvm.dbg.value(metadata i64 %1, metadata !5419, metadata !DIExpression()), !dbg !5417, !psr.id !5420
  call void @llvm.dbg.value(metadata i8* %0, metadata !5421, metadata !DIExpression()), !dbg !5417, !psr.id !5422
  call void @llvm.dbg.value(metadata i64 0, metadata !5423, metadata !DIExpression()), !dbg !5417, !psr.id !5424
  br label %3, !dbg !5425, !psr.id !5426

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !5417, !psr.id !5427
  call void @llvm.dbg.value(metadata i64 %.0, metadata !5423, metadata !DIExpression()), !dbg !5417, !psr.id !5428
  %4 = icmp ult i64 %.0, %1, !dbg !5429, !psr.id !5430
  br i1 %4, label %5, label %8, !dbg !5425, !psr.id !5431

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !5432, !psr.id !5434
  call void @llvm.dbg.value(metadata i64 %6, metadata !5423, metadata !DIExpression()), !dbg !5417, !psr.id !5435
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !5436, !psr.id !5437
  store volatile i8 0, i8* %7, align 1, !dbg !5438, !psr.id !5439
  br label %3, !dbg !5425, !llvm.loop !5440, !psr.id !5442

8:                                                ; preds = %3
  ret void, !dbg !5443, !psr.id !5444
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !5445 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5451, metadata !DIExpression()), !dbg !5452, !psr.id !5453
  call void @llvm.dbg.value(metadata i8* %1, metadata !5454, metadata !DIExpression()), !dbg !5452, !psr.id !5455
  call void @llvm.dbg.value(metadata i64 %2, metadata !5456, metadata !DIExpression()), !dbg !5452, !psr.id !5457
  call void @llvm.dbg.value(metadata i8* %0, metadata !5458, metadata !DIExpression()), !dbg !5452, !psr.id !5459
  call void @llvm.dbg.value(metadata i8* %1, metadata !5460, metadata !DIExpression()), !dbg !5452, !psr.id !5461
  call void @llvm.dbg.value(metadata i8 0, metadata !5462, metadata !DIExpression()), !dbg !5452, !psr.id !5463
  call void @llvm.dbg.value(metadata i64 0, metadata !5464, metadata !DIExpression()), !dbg !5452, !psr.id !5465
  br label %4, !dbg !5466, !psr.id !5468

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !5469, !psr.id !5470
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !5452, !psr.id !5471
  call void @llvm.dbg.value(metadata i8 %.0, metadata !5462, metadata !DIExpression()), !dbg !5452, !psr.id !5472
  call void @llvm.dbg.value(metadata i64 %.01, metadata !5464, metadata !DIExpression()), !dbg !5452, !psr.id !5473
  %5 = icmp ult i64 %.01, %2, !dbg !5474, !psr.id !5476
  br i1 %5, label %6, label %19, !dbg !5477, !psr.id !5478

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !5479, !psr.id !5481
  %8 = load i8, i8* %7, align 1, !dbg !5479, !psr.id !5482
  %9 = zext i8 %8 to i32, !dbg !5479, !psr.id !5483
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !5484, !psr.id !5485
  %11 = load i8, i8* %10, align 1, !dbg !5484, !psr.id !5486
  %12 = zext i8 %11 to i32, !dbg !5484, !psr.id !5487
  %13 = xor i32 %9, %12, !dbg !5488, !psr.id !5489
  %14 = zext i8 %.0 to i32, !dbg !5490, !psr.id !5491
  %15 = or i32 %14, %13, !dbg !5490, !psr.id !5492
  %16 = trunc i32 %15 to i8, !dbg !5490, !psr.id !5493
  call void @llvm.dbg.value(metadata i8 %16, metadata !5462, metadata !DIExpression()), !dbg !5452, !psr.id !5494
  br label %17, !dbg !5495, !psr.id !5496

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !5497, !psr.id !5498
  call void @llvm.dbg.value(metadata i64 %18, metadata !5464, metadata !DIExpression()), !dbg !5452, !psr.id !5499
  br label %4, !dbg !5500, !llvm.loop !5501, !psr.id !5503

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !5504, !psr.id !5505
  %21 = sub nsw i32 %20, 1, !dbg !5506, !psr.id !5507
  %22 = ashr i32 %21, 8, !dbg !5508, !psr.id !5509
  %23 = and i32 1, %22, !dbg !5510, !psr.id !5511
  %24 = sub nsw i32 %23, 1, !dbg !5512, !psr.id !5513
  ret i32 %24, !dbg !5514, !psr.id !5515
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !5516 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5522, metadata !DIExpression()), !dbg !5523, !psr.id !5524
  call void @llvm.dbg.value(metadata i64 %1, metadata !5525, metadata !DIExpression()), !dbg !5523, !psr.id !5526
  call void @llvm.dbg.value(metadata i8* %2, metadata !5527, metadata !DIExpression()), !dbg !5523, !psr.id !5528
  call void @llvm.dbg.value(metadata i64 %3, metadata !5529, metadata !DIExpression()), !dbg !5523, !psr.id !5530
  call void @llvm.dbg.value(metadata i64 0, metadata !5531, metadata !DIExpression()), !dbg !5523, !psr.id !5532
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !5533, !psr.id !5535
  br i1 %5, label %9, label %6, !dbg !5536, !psr.id !5537

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !5538, !psr.id !5539
  %8 = icmp ult i64 %1, %7, !dbg !5540, !psr.id !5541
  br i1 %8, label %9, label %10, !dbg !5542, !psr.id !5543

9:                                                ; preds = %6, %4
  call void @abort() #8, !dbg !5544, !psr.id !5546
  unreachable, !dbg !5544, !psr.id !5547

10:                                               ; preds = %6
  br label %11, !dbg !5548, !psr.id !5549

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !5523, !psr.id !5550
  call void @llvm.dbg.value(metadata i64 %.0, metadata !5531, metadata !DIExpression()), !dbg !5523, !psr.id !5551
  %12 = icmp ult i64 %.0, %3, !dbg !5552, !psr.id !5553
  br i1 %12, label %13, label %47, !dbg !5548, !psr.id !5554

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !5555, !psr.id !5557
  %15 = load i8, i8* %14, align 1, !dbg !5555, !psr.id !5558
  %16 = zext i8 %15 to i32, !dbg !5555, !psr.id !5559
  %17 = and i32 %16, 15, !dbg !5560, !psr.id !5561
  call void @llvm.dbg.value(metadata i32 %17, metadata !5562, metadata !DIExpression()), !dbg !5523, !psr.id !5563
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !5564, !psr.id !5565
  %19 = load i8, i8* %18, align 1, !dbg !5564, !psr.id !5566
  %20 = zext i8 %19 to i32, !dbg !5564, !psr.id !5567
  %21 = ashr i32 %20, 4, !dbg !5568, !psr.id !5569
  call void @llvm.dbg.value(metadata i32 %21, metadata !5570, metadata !DIExpression()), !dbg !5523, !psr.id !5571
  %22 = add i32 87, %17, !dbg !5572, !psr.id !5573
  %23 = sub i32 %17, 10, !dbg !5574, !psr.id !5575
  %24 = lshr i32 %23, 8, !dbg !5576, !psr.id !5577
  %25 = and i32 %24, -39, !dbg !5578, !psr.id !5579
  %26 = add i32 %22, %25, !dbg !5580, !psr.id !5581
  %27 = trunc i32 %26 to i8, !dbg !5582, !psr.id !5583
  %28 = zext i8 %27 to i32, !dbg !5582, !psr.id !5584
  %29 = shl i32 %28, 8, !dbg !5585, !psr.id !5586
  %30 = add i32 87, %21, !dbg !5587, !psr.id !5588
  %31 = sub i32 %21, 10, !dbg !5589, !psr.id !5590
  %32 = lshr i32 %31, 8, !dbg !5591, !psr.id !5592
  %33 = and i32 %32, -39, !dbg !5593, !psr.id !5594
  %34 = add i32 %30, %33, !dbg !5595, !psr.id !5596
  %35 = trunc i32 %34 to i8, !dbg !5597, !psr.id !5598
  %36 = zext i8 %35 to i32, !dbg !5597, !psr.id !5599
  %37 = or i32 %29, %36, !dbg !5600, !psr.id !5601
  call void @llvm.dbg.value(metadata i32 %37, metadata !5602, metadata !DIExpression()), !dbg !5523, !psr.id !5603
  %38 = trunc i32 %37 to i8, !dbg !5604, !psr.id !5605
  %39 = mul i64 %.0, 2, !dbg !5606, !psr.id !5607
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !5608, !psr.id !5609
  store i8 %38, i8* %40, align 1, !dbg !5610, !psr.id !5611
  %41 = lshr i32 %37, 8, !dbg !5612, !psr.id !5613
  call void @llvm.dbg.value(metadata i32 %41, metadata !5602, metadata !DIExpression()), !dbg !5523, !psr.id !5614
  %42 = trunc i32 %41 to i8, !dbg !5615, !psr.id !5616
  %43 = mul i64 %.0, 2, !dbg !5617, !psr.id !5618
  %44 = add i64 %43, 1, !dbg !5619, !psr.id !5620
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !5621, !psr.id !5622
  store i8 %42, i8* %45, align 1, !dbg !5623, !psr.id !5624
  %46 = add i64 %.0, 1, !dbg !5625, !psr.id !5626
  call void @llvm.dbg.value(metadata i64 %46, metadata !5531, metadata !DIExpression()), !dbg !5523, !psr.id !5627
  br label %11, !dbg !5548, !llvm.loop !5628, !psr.id !5630

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !5631, !psr.id !5632
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !5633, !psr.id !5634
  store i8 0, i8* %49, align 1, !dbg !5635, !psr.id !5636
  ret i8* %0, !dbg !5637, !psr.id !5638
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !5639 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5646, metadata !DIExpression()), !dbg !5647, !psr.id !5648
  call void @llvm.dbg.value(metadata i64 %1, metadata !5649, metadata !DIExpression()), !dbg !5647, !psr.id !5650
  call void @llvm.dbg.value(metadata i8* %2, metadata !5651, metadata !DIExpression()), !dbg !5647, !psr.id !5652
  call void @llvm.dbg.value(metadata i64 %3, metadata !5653, metadata !DIExpression()), !dbg !5647, !psr.id !5654
  call void @llvm.dbg.value(metadata i8* %4, metadata !5655, metadata !DIExpression()), !dbg !5647, !psr.id !5656
  call void @llvm.dbg.value(metadata i64* %5, metadata !5657, metadata !DIExpression()), !dbg !5647, !psr.id !5658
  call void @llvm.dbg.value(metadata i8** %6, metadata !5659, metadata !DIExpression()), !dbg !5647, !psr.id !5660
  call void @llvm.dbg.value(metadata i64 0, metadata !5661, metadata !DIExpression()), !dbg !5647, !psr.id !5662
  call void @llvm.dbg.value(metadata i64 0, metadata !5663, metadata !DIExpression()), !dbg !5647, !psr.id !5664
  call void @llvm.dbg.value(metadata i32 0, metadata !5665, metadata !DIExpression()), !dbg !5647, !psr.id !5666
  call void @llvm.dbg.value(metadata i8 0, metadata !5667, metadata !DIExpression()), !dbg !5647, !psr.id !5668
  call void @llvm.dbg.value(metadata i8 0, metadata !5669, metadata !DIExpression()), !dbg !5647, !psr.id !5670
  br label %8, !dbg !5671, !psr.id !5672

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !5673, !psr.id !5674
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !5647, !psr.id !5675
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !5647, !psr.id !5676
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !5647, !psr.id !5677
  call void @llvm.dbg.value(metadata i8 %.0, metadata !5669, metadata !DIExpression()), !dbg !5647, !psr.id !5678
  call void @llvm.dbg.value(metadata i8 %.01, metadata !5667, metadata !DIExpression()), !dbg !5647, !psr.id !5679
  call void @llvm.dbg.value(metadata i64 %.03, metadata !5663, metadata !DIExpression()), !dbg !5647, !psr.id !5680
  call void @llvm.dbg.value(metadata i64 %.05, metadata !5661, metadata !DIExpression()), !dbg !5647, !psr.id !5681
  %9 = icmp ult i64 %.03, %3, !dbg !5682, !psr.id !5683
  br i1 %9, label %10, label %78, !dbg !5671, !psr.id !5684

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !5685, !psr.id !5687
  %12 = load i8, i8* %11, align 1, !dbg !5685, !psr.id !5688
  call void @llvm.dbg.value(metadata i8 %12, metadata !5689, metadata !DIExpression()), !dbg !5647, !psr.id !5690
  %13 = zext i8 %12 to i32, !dbg !5691, !psr.id !5692
  %14 = xor i32 %13, 48, !dbg !5693, !psr.id !5694
  %15 = trunc i32 %14 to i8, !dbg !5691, !psr.id !5695
  call void @llvm.dbg.value(metadata i8 %15, metadata !5696, metadata !DIExpression()), !dbg !5647, !psr.id !5697
  %16 = zext i8 %15 to i32, !dbg !5698, !psr.id !5699
  %17 = sub i32 %16, 10, !dbg !5700, !psr.id !5701
  %18 = lshr i32 %17, 8, !dbg !5702, !psr.id !5703
  %19 = trunc i32 %18 to i8, !dbg !5704, !psr.id !5705
  call void @llvm.dbg.value(metadata i8 %19, metadata !5706, metadata !DIExpression()), !dbg !5647, !psr.id !5707
  %20 = zext i8 %12 to i32, !dbg !5708, !psr.id !5709
  %21 = and i32 %20, -33, !dbg !5710, !psr.id !5711
  %22 = sub i32 %21, 55, !dbg !5712, !psr.id !5713
  %23 = trunc i32 %22 to i8, !dbg !5714, !psr.id !5715
  call void @llvm.dbg.value(metadata i8 %23, metadata !5716, metadata !DIExpression()), !dbg !5647, !psr.id !5717
  %24 = zext i8 %23 to i32, !dbg !5718, !psr.id !5719
  %25 = sub i32 %24, 10, !dbg !5720, !psr.id !5721
  %26 = zext i8 %23 to i32, !dbg !5722, !psr.id !5723
  %27 = sub i32 %26, 16, !dbg !5724, !psr.id !5725
  %28 = xor i32 %25, %27, !dbg !5726, !psr.id !5727
  %29 = lshr i32 %28, 8, !dbg !5728, !psr.id !5729
  %30 = trunc i32 %29 to i8, !dbg !5730, !psr.id !5731
  call void @llvm.dbg.value(metadata i8 %30, metadata !5732, metadata !DIExpression()), !dbg !5647, !psr.id !5733
  %31 = zext i8 %19 to i32, !dbg !5734, !psr.id !5736
  %32 = zext i8 %30 to i32, !dbg !5737, !psr.id !5738
  %33 = or i32 %31, %32, !dbg !5739, !psr.id !5740
  %34 = icmp eq i32 %33, 0, !dbg !5741, !psr.id !5742
  br i1 %34, label %35, label %47, !dbg !5743, !psr.id !5744

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !5745, !psr.id !5748
  br i1 %36, label %37, label %46, !dbg !5749, !psr.id !5750

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !5751, !psr.id !5752
  %39 = icmp eq i32 %38, 0, !dbg !5753, !psr.id !5754
  br i1 %39, label %40, label %46, !dbg !5755, !psr.id !5756

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !5757, !psr.id !5758
  %42 = call i8* @strchr(i8* %4, i32 %41) #11, !dbg !5759, !psr.id !5760
  %43 = icmp ne i8* %42, null, !dbg !5761, !psr.id !5762
  br i1 %43, label %44, label %46, !dbg !5763, !psr.id !5764

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !5765, !psr.id !5767
  call void @llvm.dbg.value(metadata i64 %45, metadata !5663, metadata !DIExpression()), !dbg !5647, !psr.id !5768
  br label %8, !dbg !5769, !llvm.loop !5770, !psr.id !5772

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !5773, !psr.id !5774

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !5775, !psr.id !5776
  %49 = zext i8 %15 to i32, !dbg !5777, !psr.id !5778
  %50 = and i32 %48, %49, !dbg !5779, !psr.id !5780
  %51 = zext i8 %30 to i32, !dbg !5781, !psr.id !5782
  %52 = zext i8 %23 to i32, !dbg !5783, !psr.id !5784
  %53 = and i32 %51, %52, !dbg !5785, !psr.id !5786
  %54 = or i32 %50, %53, !dbg !5787, !psr.id !5788
  %55 = trunc i32 %54 to i8, !dbg !5789, !psr.id !5790
  call void @llvm.dbg.value(metadata i8 %55, metadata !5791, metadata !DIExpression()), !dbg !5647, !psr.id !5792
  %56 = icmp uge i64 %.05, %1, !dbg !5793, !psr.id !5795
  br i1 %56, label %57, label %59, !dbg !5796, !psr.id !5797

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !5665, metadata !DIExpression()), !dbg !5647, !psr.id !5798
  %58 = call i32* @__errno_location() #9, !dbg !5799, !psr.id !5801
  store i32 34, i32* %58, align 4, !dbg !5802, !psr.id !5803
  br label %78, !dbg !5804, !psr.id !5805

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !5806, !psr.id !5808
  %61 = icmp eq i32 %60, 0, !dbg !5809, !psr.id !5810
  br i1 %61, label %62, label %66, !dbg !5811, !psr.id !5812

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !5813, !psr.id !5815
  %64 = mul i32 %63, 16, !dbg !5816, !psr.id !5817
  %65 = trunc i32 %64 to i8, !dbg !5813, !psr.id !5818
  call void @llvm.dbg.value(metadata i8 %65, metadata !5667, metadata !DIExpression()), !dbg !5647, !psr.id !5819
  br label %73, !dbg !5820, !psr.id !5821

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !5822, !psr.id !5824
  %68 = zext i8 %55 to i32, !dbg !5825, !psr.id !5826
  %69 = or i32 %67, %68, !dbg !5827, !psr.id !5828
  %70 = trunc i32 %69 to i8, !dbg !5822, !psr.id !5829
  %71 = add i64 %.05, 1, !dbg !5830, !psr.id !5831
  call void @llvm.dbg.value(metadata i64 %71, metadata !5661, metadata !DIExpression()), !dbg !5647, !psr.id !5832
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !5833, !psr.id !5834
  store i8 %70, i8* %72, align 1, !dbg !5835, !psr.id !5836
  br label %73, !psr.id !5837

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !5647, !psr.id !5838
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !5647, !psr.id !5839
  call void @llvm.dbg.value(metadata i8 %.1, metadata !5667, metadata !DIExpression()), !dbg !5647, !psr.id !5840
  call void @llvm.dbg.value(metadata i64 %.16, metadata !5661, metadata !DIExpression()), !dbg !5647, !psr.id !5841
  %74 = zext i8 %.0 to i32, !dbg !5842, !psr.id !5843
  %75 = xor i32 %74, -1, !dbg !5844, !psr.id !5845
  %76 = trunc i32 %75 to i8, !dbg !5844, !psr.id !5846
  call void @llvm.dbg.value(metadata i8 %76, metadata !5669, metadata !DIExpression()), !dbg !5647, !psr.id !5847
  %77 = add i64 %.03, 1, !dbg !5848, !psr.id !5849
  call void @llvm.dbg.value(metadata i64 %77, metadata !5663, metadata !DIExpression()), !dbg !5647, !psr.id !5850
  br label %8, !dbg !5671, !llvm.loop !5770, !psr.id !5851

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !5647, !psr.id !5852
  call void @llvm.dbg.value(metadata i32 %.02, metadata !5665, metadata !DIExpression()), !dbg !5647, !psr.id !5853
  %79 = zext i8 %.0 to i32, !dbg !5854, !psr.id !5856
  %80 = icmp ne i32 %79, 0, !dbg !5857, !psr.id !5858
  br i1 %80, label %81, label %83, !dbg !5859, !psr.id !5860

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !5861, !psr.id !5863
  call void @llvm.dbg.value(metadata i64 %82, metadata !5663, metadata !DIExpression()), !dbg !5647, !psr.id !5864
  br label %83, !dbg !5865, !psr.id !5866

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !5647, !psr.id !5867
  call void @llvm.dbg.value(metadata i64 %.14, metadata !5663, metadata !DIExpression()), !dbg !5647, !psr.id !5868
  %84 = icmp ne i8** %6, null, !dbg !5869, !psr.id !5871
  br i1 %84, label %85, label %87, !dbg !5872, !psr.id !5873

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !5874, !psr.id !5876
  store i8* %86, i8** %6, align 8, !dbg !5877, !psr.id !5878
  br label %87, !dbg !5879, !psr.id !5880

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !5881, !psr.id !5883
  br i1 %88, label %89, label %90, !dbg !5884, !psr.id !5885

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !5886, !psr.id !5888
  br label %90, !dbg !5889, !psr.id !5890

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !5891, !psr.id !5892
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !5893 {
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* @canary, i64 0, i64 0, !psr.id !5894
  call void @randombytes_buf(i8* %1, i64 16), !dbg !5895, !psr.id !5896
  ret i32 0, !dbg !5897, !psr.id !5898
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !5899 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5900, metadata !DIExpression()), !dbg !5901, !psr.id !5902
  call void @llvm.dbg.value(metadata i64 %1, metadata !5903, metadata !DIExpression()), !dbg !5901, !psr.id !5904
  %3 = call i32* @__errno_location() #9, !dbg !5905, !psr.id !5906
  store i32 38, i32* %3, align 4, !dbg !5907, !psr.id !5908
  ret i32 -1, !dbg !5909, !psr.id !5910
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !5911 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5912, metadata !DIExpression()), !dbg !5913, !psr.id !5914
  call void @llvm.dbg.value(metadata i64 %1, metadata !5915, metadata !DIExpression()), !dbg !5913, !psr.id !5916
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !5917, !psr.id !5918
  %3 = call i32* @__errno_location() #9, !dbg !5919, !psr.id !5920
  store i32 38, i32* %3, align 4, !dbg !5921, !psr.id !5922
  ret i32 -1, !dbg !5923, !psr.id !5924
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !5925 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5928, metadata !DIExpression()), !dbg !5929, !psr.id !5930
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !5931, !psr.id !5933
  call void @llvm.dbg.value(metadata i8* %2, metadata !5934, metadata !DIExpression()), !dbg !5929, !psr.id !5935
  %3 = icmp eq i8* %2, null, !dbg !5936, !psr.id !5937
  br i1 %3, label %4, label %5, !dbg !5938, !psr.id !5939

4:                                                ; preds = %1
  br label %6, !dbg !5940, !psr.id !5942

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !5943, !psr.id !5944
  br label %6, !dbg !5945, !psr.id !5946

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !5929, !psr.id !5947
  ret i8* %.0, !dbg !5948, !psr.id !5949
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !5950 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5951, metadata !DIExpression()), !dbg !5952, !psr.id !5953
  %2 = call noalias i8* @malloc(i64 %0) #10, !dbg !5954, !psr.id !5955
  ret i8* %2, !dbg !5956, !psr.id !5957
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !5958 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !5961, metadata !DIExpression()), !dbg !5962, !psr.id !5963
  call void @llvm.dbg.value(metadata i64 %1, metadata !5964, metadata !DIExpression()), !dbg !5962, !psr.id !5965
  %3 = icmp ugt i64 %0, 0, !dbg !5966, !psr.id !5968
  br i1 %3, label %4, label %9, !dbg !5969, !psr.id !5970

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !5971, !psr.id !5972
  %6 = icmp uge i64 %1, %5, !dbg !5973, !psr.id !5974
  br i1 %6, label %7, label %9, !dbg !5975, !psr.id !5976

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #9, !dbg !5977, !psr.id !5979
  store i32 12, i32* %8, align 4, !dbg !5980, !psr.id !5981
  br label %12, !dbg !5982, !psr.id !5983

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !5984, !psr.id !5985
  call void @llvm.dbg.value(metadata i64 %10, metadata !5986, metadata !DIExpression()), !dbg !5962, !psr.id !5987
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !5988, !psr.id !5989
  br label %12, !dbg !5990, !psr.id !5991

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !5962, !psr.id !5992
  ret i8* %.0, !dbg !5993, !psr.id !5994
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !5995 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5998, metadata !DIExpression()), !dbg !5999, !psr.id !6000
  call void @free(i8* %0) #10, !dbg !6001, !psr.id !6002
  ret void, !dbg !6003, !psr.id !6004
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !6005 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6008, metadata !DIExpression()), !dbg !6009, !psr.id !6010
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !6011, !psr.id !6012
  ret i32 %2, !dbg !6013, !psr.id !6014
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !6015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6018, metadata !DIExpression()), !dbg !6019, !psr.id !6020
  call void @llvm.dbg.value(metadata i64 %1, metadata !6021, metadata !DIExpression()), !dbg !6019, !psr.id !6022
  %3 = call i32* @__errno_location() #9, !dbg !6023, !psr.id !6024
  store i32 38, i32* %3, align 4, !dbg !6025, !psr.id !6026
  ret i32 -1, !dbg !6027, !psr.id !6028
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !6029 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6033, metadata !DIExpression()), !dbg !6034, !psr.id !6035
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !6036, metadata !DIExpression()), !dbg !6034, !psr.id !6037
  %3 = call i32* @__errno_location() #9, !dbg !6038, !psr.id !6039
  store i32 38, i32* %3, align 4, !dbg !6040, !psr.id !6041
  ret i32 -1, !dbg !6042, !psr.id !6043
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !6044 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6045, metadata !DIExpression()), !dbg !6046, !psr.id !6047
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !6048, !psr.id !6049
  ret i32 %2, !dbg !6050, !psr.id !6051
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !6052 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6053, metadata !DIExpression()), !dbg !6054, !psr.id !6055
  call void @llvm.dbg.value(metadata i64 %1, metadata !6056, metadata !DIExpression()), !dbg !6054, !psr.id !6057
  %3 = call i32* @__errno_location() #9, !dbg !6058, !psr.id !6059
  store i32 38, i32* %3, align 4, !dbg !6060, !psr.id !6061
  ret i32 -1, !dbg !6062, !psr.id !6063
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !6064 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6065, metadata !DIExpression()), !dbg !6066, !psr.id !6067
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !6068, !psr.id !6069
  ret i32 %2, !dbg !6070, !psr.id !6071
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !6072 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6073, metadata !DIExpression()), !dbg !6074, !psr.id !6075
  call void @llvm.dbg.value(metadata i64 %1, metadata !6076, metadata !DIExpression()), !dbg !6074, !psr.id !6077
  %3 = call i32* @__errno_location() #9, !dbg !6078, !psr.id !6079
  store i32 38, i32* %3, align 4, !dbg !6080, !psr.id !6081
  ret i32 -1, !dbg !6082, !psr.id !6083
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_verify_16(i8* %0, i8* %1) #0 !dbg !6084 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6087, metadata !DIExpression()), !dbg !6088, !psr.id !6089
  call void @llvm.dbg.value(metadata i8* %1, metadata !6090, metadata !DIExpression()), !dbg !6088, !psr.id !6091
  call void @llvm.dbg.value(metadata i32 0, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6093
  %3 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !6094, !psr.id !6095
  %4 = load i8, i8* %3, align 1, !dbg !6094, !psr.id !6096
  %5 = zext i8 %4 to i32, !dbg !6094, !psr.id !6097
  %6 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !6094, !psr.id !6098
  %7 = load i8, i8* %6, align 1, !dbg !6094, !psr.id !6099
  %8 = zext i8 %7 to i32, !dbg !6094, !psr.id !6100
  %9 = xor i32 %5, %8, !dbg !6094, !psr.id !6101
  %10 = or i32 0, %9, !dbg !6094, !psr.id !6102
  call void @llvm.dbg.value(metadata i32 %10, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6103
  %11 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !6104, !psr.id !6105
  %12 = load i8, i8* %11, align 1, !dbg !6104, !psr.id !6106
  %13 = zext i8 %12 to i32, !dbg !6104, !psr.id !6107
  %14 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !6104, !psr.id !6108
  %15 = load i8, i8* %14, align 1, !dbg !6104, !psr.id !6109
  %16 = zext i8 %15 to i32, !dbg !6104, !psr.id !6110
  %17 = xor i32 %13, %16, !dbg !6104, !psr.id !6111
  %18 = or i32 %10, %17, !dbg !6104, !psr.id !6112
  call void @llvm.dbg.value(metadata i32 %18, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6113
  %19 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !6114, !psr.id !6115
  %20 = load i8, i8* %19, align 1, !dbg !6114, !psr.id !6116
  %21 = zext i8 %20 to i32, !dbg !6114, !psr.id !6117
  %22 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !6114, !psr.id !6118
  %23 = load i8, i8* %22, align 1, !dbg !6114, !psr.id !6119
  %24 = zext i8 %23 to i32, !dbg !6114, !psr.id !6120
  %25 = xor i32 %21, %24, !dbg !6114, !psr.id !6121
  %26 = or i32 %18, %25, !dbg !6114, !psr.id !6122
  call void @llvm.dbg.value(metadata i32 %26, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6123
  %27 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !6124, !psr.id !6125
  %28 = load i8, i8* %27, align 1, !dbg !6124, !psr.id !6126
  %29 = zext i8 %28 to i32, !dbg !6124, !psr.id !6127
  %30 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !6124, !psr.id !6128
  %31 = load i8, i8* %30, align 1, !dbg !6124, !psr.id !6129
  %32 = zext i8 %31 to i32, !dbg !6124, !psr.id !6130
  %33 = xor i32 %29, %32, !dbg !6124, !psr.id !6131
  %34 = or i32 %26, %33, !dbg !6124, !psr.id !6132
  call void @llvm.dbg.value(metadata i32 %34, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6133
  %35 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !6134, !psr.id !6135
  %36 = load i8, i8* %35, align 1, !dbg !6134, !psr.id !6136
  %37 = zext i8 %36 to i32, !dbg !6134, !psr.id !6137
  %38 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !6134, !psr.id !6138
  %39 = load i8, i8* %38, align 1, !dbg !6134, !psr.id !6139
  %40 = zext i8 %39 to i32, !dbg !6134, !psr.id !6140
  %41 = xor i32 %37, %40, !dbg !6134, !psr.id !6141
  %42 = or i32 %34, %41, !dbg !6134, !psr.id !6142
  call void @llvm.dbg.value(metadata i32 %42, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6143
  %43 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !6144, !psr.id !6145
  %44 = load i8, i8* %43, align 1, !dbg !6144, !psr.id !6146
  %45 = zext i8 %44 to i32, !dbg !6144, !psr.id !6147
  %46 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !6144, !psr.id !6148
  %47 = load i8, i8* %46, align 1, !dbg !6144, !psr.id !6149
  %48 = zext i8 %47 to i32, !dbg !6144, !psr.id !6150
  %49 = xor i32 %45, %48, !dbg !6144, !psr.id !6151
  %50 = or i32 %42, %49, !dbg !6144, !psr.id !6152
  call void @llvm.dbg.value(metadata i32 %50, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6153
  %51 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !6154, !psr.id !6155
  %52 = load i8, i8* %51, align 1, !dbg !6154, !psr.id !6156
  %53 = zext i8 %52 to i32, !dbg !6154, !psr.id !6157
  %54 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !6154, !psr.id !6158
  %55 = load i8, i8* %54, align 1, !dbg !6154, !psr.id !6159
  %56 = zext i8 %55 to i32, !dbg !6154, !psr.id !6160
  %57 = xor i32 %53, %56, !dbg !6154, !psr.id !6161
  %58 = or i32 %50, %57, !dbg !6154, !psr.id !6162
  call void @llvm.dbg.value(metadata i32 %58, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6163
  %59 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !6164, !psr.id !6165
  %60 = load i8, i8* %59, align 1, !dbg !6164, !psr.id !6166
  %61 = zext i8 %60 to i32, !dbg !6164, !psr.id !6167
  %62 = getelementptr inbounds i8, i8* %1, i64 7, !dbg !6164, !psr.id !6168
  %63 = load i8, i8* %62, align 1, !dbg !6164, !psr.id !6169
  %64 = zext i8 %63 to i32, !dbg !6164, !psr.id !6170
  %65 = xor i32 %61, %64, !dbg !6164, !psr.id !6171
  %66 = or i32 %58, %65, !dbg !6164, !psr.id !6172
  call void @llvm.dbg.value(metadata i32 %66, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6173
  %67 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !6174, !psr.id !6175
  %68 = load i8, i8* %67, align 1, !dbg !6174, !psr.id !6176
  %69 = zext i8 %68 to i32, !dbg !6174, !psr.id !6177
  %70 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !6174, !psr.id !6178
  %71 = load i8, i8* %70, align 1, !dbg !6174, !psr.id !6179
  %72 = zext i8 %71 to i32, !dbg !6174, !psr.id !6180
  %73 = xor i32 %69, %72, !dbg !6174, !psr.id !6181
  %74 = or i32 %66, %73, !dbg !6174, !psr.id !6182
  call void @llvm.dbg.value(metadata i32 %74, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6183
  %75 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !6184, !psr.id !6185
  %76 = load i8, i8* %75, align 1, !dbg !6184, !psr.id !6186
  %77 = zext i8 %76 to i32, !dbg !6184, !psr.id !6187
  %78 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !6184, !psr.id !6188
  %79 = load i8, i8* %78, align 1, !dbg !6184, !psr.id !6189
  %80 = zext i8 %79 to i32, !dbg !6184, !psr.id !6190
  %81 = xor i32 %77, %80, !dbg !6184, !psr.id !6191
  %82 = or i32 %74, %81, !dbg !6184, !psr.id !6192
  call void @llvm.dbg.value(metadata i32 %82, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6193
  %83 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !6194, !psr.id !6195
  %84 = load i8, i8* %83, align 1, !dbg !6194, !psr.id !6196
  %85 = zext i8 %84 to i32, !dbg !6194, !psr.id !6197
  %86 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !6194, !psr.id !6198
  %87 = load i8, i8* %86, align 1, !dbg !6194, !psr.id !6199
  %88 = zext i8 %87 to i32, !dbg !6194, !psr.id !6200
  %89 = xor i32 %85, %88, !dbg !6194, !psr.id !6201
  %90 = or i32 %82, %89, !dbg !6194, !psr.id !6202
  call void @llvm.dbg.value(metadata i32 %90, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6203
  %91 = getelementptr inbounds i8, i8* %0, i64 11, !dbg !6204, !psr.id !6205
  %92 = load i8, i8* %91, align 1, !dbg !6204, !psr.id !6206
  %93 = zext i8 %92 to i32, !dbg !6204, !psr.id !6207
  %94 = getelementptr inbounds i8, i8* %1, i64 11, !dbg !6204, !psr.id !6208
  %95 = load i8, i8* %94, align 1, !dbg !6204, !psr.id !6209
  %96 = zext i8 %95 to i32, !dbg !6204, !psr.id !6210
  %97 = xor i32 %93, %96, !dbg !6204, !psr.id !6211
  %98 = or i32 %90, %97, !dbg !6204, !psr.id !6212
  call void @llvm.dbg.value(metadata i32 %98, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6213
  %99 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !6214, !psr.id !6215
  %100 = load i8, i8* %99, align 1, !dbg !6214, !psr.id !6216
  %101 = zext i8 %100 to i32, !dbg !6214, !psr.id !6217
  %102 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !6214, !psr.id !6218
  %103 = load i8, i8* %102, align 1, !dbg !6214, !psr.id !6219
  %104 = zext i8 %103 to i32, !dbg !6214, !psr.id !6220
  %105 = xor i32 %101, %104, !dbg !6214, !psr.id !6221
  %106 = or i32 %98, %105, !dbg !6214, !psr.id !6222
  call void @llvm.dbg.value(metadata i32 %106, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6223
  %107 = getelementptr inbounds i8, i8* %0, i64 13, !dbg !6224, !psr.id !6225
  %108 = load i8, i8* %107, align 1, !dbg !6224, !psr.id !6226
  %109 = zext i8 %108 to i32, !dbg !6224, !psr.id !6227
  %110 = getelementptr inbounds i8, i8* %1, i64 13, !dbg !6224, !psr.id !6228
  %111 = load i8, i8* %110, align 1, !dbg !6224, !psr.id !6229
  %112 = zext i8 %111 to i32, !dbg !6224, !psr.id !6230
  %113 = xor i32 %109, %112, !dbg !6224, !psr.id !6231
  %114 = or i32 %106, %113, !dbg !6224, !psr.id !6232
  call void @llvm.dbg.value(metadata i32 %114, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6233
  %115 = getelementptr inbounds i8, i8* %0, i64 14, !dbg !6234, !psr.id !6235
  %116 = load i8, i8* %115, align 1, !dbg !6234, !psr.id !6236
  %117 = zext i8 %116 to i32, !dbg !6234, !psr.id !6237
  %118 = getelementptr inbounds i8, i8* %1, i64 14, !dbg !6234, !psr.id !6238
  %119 = load i8, i8* %118, align 1, !dbg !6234, !psr.id !6239
  %120 = zext i8 %119 to i32, !dbg !6234, !psr.id !6240
  %121 = xor i32 %117, %120, !dbg !6234, !psr.id !6241
  %122 = or i32 %114, %121, !dbg !6234, !psr.id !6242
  call void @llvm.dbg.value(metadata i32 %122, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6243
  %123 = getelementptr inbounds i8, i8* %0, i64 15, !dbg !6244, !psr.id !6245
  %124 = load i8, i8* %123, align 1, !dbg !6244, !psr.id !6246
  %125 = zext i8 %124 to i32, !dbg !6244, !psr.id !6247
  %126 = getelementptr inbounds i8, i8* %1, i64 15, !dbg !6244, !psr.id !6248
  %127 = load i8, i8* %126, align 1, !dbg !6244, !psr.id !6249
  %128 = zext i8 %127 to i32, !dbg !6244, !psr.id !6250
  %129 = xor i32 %125, %128, !dbg !6244, !psr.id !6251
  %130 = or i32 %122, %129, !dbg !6244, !psr.id !6252
  call void @llvm.dbg.value(metadata i32 %130, metadata !6092, metadata !DIExpression()), !dbg !6088, !psr.id !6253
  %131 = sub i32 %130, 1, !dbg !6254, !psr.id !6255
  %132 = lshr i32 %131, 8, !dbg !6256, !psr.id !6257
  %133 = and i32 1, %132, !dbg !6258, !psr.id !6259
  %134 = sub i32 %133, 1, !dbg !6260, !psr.id !6261
  ret i32 %134, !dbg !6262, !psr.id !6263
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_verify(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !6264 {
  %5 = alloca [16 x i8], align 16, !psr.id !6265
  call void @llvm.dbg.value(metadata i8* %0, metadata !6266, metadata !DIExpression()), !dbg !6267, !psr.id !6268
  call void @llvm.dbg.value(metadata i8* %1, metadata !6269, metadata !DIExpression()), !dbg !6267, !psr.id !6270
  call void @llvm.dbg.value(metadata i64 %2, metadata !6271, metadata !DIExpression()), !dbg !6267, !psr.id !6272
  call void @llvm.dbg.value(metadata i8* %3, metadata !6273, metadata !DIExpression()), !dbg !6267, !psr.id !6274
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !6275, metadata !DIExpression()), !dbg !6276, !psr.id !6277
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !6278, !psr.id !6279
  %7 = call i32 @crypto_onetimeauth_poly1305_donna(i8* %6, i8* %1, i64 %2, i8* %3), !dbg !6280, !psr.id !6281
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !6282, !psr.id !6283
  %9 = call i32 @crypto_verify_16(i8* %0, i8* %8), !dbg !6284, !psr.id !6285
  ret i32 %9, !dbg !6286, !psr.id !6287
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @crypto_aead_chacha20poly1305_decrypt_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!225, !2, !228, !230, !82, !114, !161, !239, !206, !218, !241, !243}
!llvm.ident = !{!245, !245, !245, !245, !245, !245, !245, !245, !245, !245, !245, !245}
!llvm.module.flags = !{!246, !247, !248}

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
!77 = !{!"0"}
!78 = !{!"1"}
!79 = !{!"2"}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "implementation", scope: !82, file: !83, line: 6, type: !85, isLocal: true, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !84, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/onetimeauth_poly1305.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!84 = !{!80}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_poly1305_implementation", file: !10, line: 41, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_onetimeauth_poly1305_implementation", file: !10, line: 24, size: 384, elements: !89)
!89 = !{!90, !91, !92, !93, !103, !107}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !88, file: !10, line: 25, baseType: !46, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth", scope: !88, file: !10, line: 26, baseType: !53, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_verify", scope: !88, file: !10, line: 30, baseType: !61, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_init", scope: !88, file: !10, line: 34, baseType: !94, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!56, !97, !58}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 22, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 19, size: 1152, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !99, file: !10, line: 20, baseType: !14, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !99, file: !10, line: 21, baseType: !16, size: 1088, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_update", scope: !88, file: !10, line: 36, baseType: !104, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!56, !97, !58, !14}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "onetimeauth_final", scope: !88, file: !10, line: 39, baseType: !108, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!56, !97, !57}
!111 = !{!"3"}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "implementation", scope: !114, file: !115, line: 16, type: !125, isLocal: true, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !116, globals: !124, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/randombytes.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!116 = !{!41, !117, !122}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !118, line: 26, baseType: !119)
!118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !120, line: 42, baseType: !121)
!120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!121 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 46, baseType: !27)
!123 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!124 = !{!112}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "randombytes_implementation", file: !128, line: 26, baseType: !129)
!128 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/randombytes.h", directory: "/home/luwei/bech-back/libsodium/Aead")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !128, line: 19, size: 384, elements: !130)
!130 = !{!131, !132, !136, !140, !145, !151}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !129, file: !128, line: 20, baseType: !46, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !129, file: !128, line: 21, baseType: !133, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!117}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !129, file: !128, line: 22, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{null}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !129, file: !128, line: 23, baseType: !141, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!117, !144}
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !129, file: !128, line: 24, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !149, !150}
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !129, file: !128, line: 25, baseType: !152, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!56}
!155 = !{!"4"}
!156 = !{!"5"}
!157 = !{!"6"}
!158 = !{!"7"}
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "randombytes_sysrandom_implementation", scope: !161, file: !162, line: 297, type: !183, isLocal: false, isDefinition: true)
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !163, globals: !168, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!163 = !{!164, !41, !57, !122, !56}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !165, line: 108, baseType: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !120, line: 193, baseType: !167)
!167 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!168 = !{!159, !169, !177}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "stream", scope: !161, file: !162, line: 69, type: !171, isLocal: true, isDefinition: true)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysRandom", file: !162, line: 67, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SysRandom_", file: !162, line: 63, size: 96, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "random_data_source_fd", scope: !172, file: !162, line: 64, baseType: !56, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !172, file: !162, line: 65, baseType: !56, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "getrandom_available", scope: !172, file: !162, line: 66, baseType: !56, size: 32, offset: 64)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "devices", scope: !179, file: !162, line: 106, type: !180, isLocal: true, isDefinition: true)
!179 = distinct !DISubprogram(name: "randombytes_sysrandom_random_dev_open", scope: !162, file: !162, line: 102, type: !153, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !161, retainedNodes: !4)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 3)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !128, line: 19, size: 384, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !183, file: !128, line: 20, baseType: !46, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !183, file: !128, line: 21, baseType: !133, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !183, file: !128, line: 22, baseType: !137, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !183, file: !128, line: 23, baseType: !141, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !183, file: !128, line: 24, baseType: !146, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !183, file: !128, line: 25, baseType: !152, size: 64, offset: 320)
!191 = !{!"8"}
!192 = !{!"9"}
!193 = !{!"10"}
!194 = !{!"11"}
!195 = !{!"12"}
!196 = !{!"13"}
!197 = !{!"14"}
!198 = !{!"15"}
!199 = !{!"16"}
!200 = !{!"17"}
!201 = !{!"18"}
!202 = !{!"19"}
!203 = !{!"20"}
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "sigma", scope: !206, file: !207, line: 60, type: !214, isLocal: true, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !208, globals: !213, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "../libsodium/src/libsodium/crypto_stream/chacha20/ref/stream_chacha20_ref.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!208 = !{!209, !210, !41, !121}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !207, line: 22, baseType: !117)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !207, line: 21, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !118, line: 24, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !120, line: 38, baseType: !17)
!213 = !{!204}
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !38)
!215 = !{!"21"}
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "canary", scope: !218, file: !219, line: 46, type: !37, isLocal: true, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !220, globals: !223, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!220 = !{!221, !122, !58, !17, !56, !51, !41}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!223 = !{!216}
!224 = !{!"22"}
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !227, splitDebugInlining: false, nameTableKind: None)
!226 = !DIFile(filename: "../libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!227 = !{!41, !17}
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!229 = !DIFile(filename: "crypto_aead_chacha20poly1305_decrypt.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !232, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/crypto_onetimeauth.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 22, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 19, size: 1152, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !235, file: !10, line: 20, baseType: !14, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !235, file: !10, line: 21, baseType: !16, size: 1088, offset: 64)
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "../libsodium/src/libsodium/crypto_stream/chacha20/stream_chacha20_api.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "../libsodium/src/libsodium/crypto_verify/16/ref/verify_16.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!244 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/verify_poly1305_donna.c", directory: "/home/luwei/bech-back/libsodium/Aead")
!245 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!246 = !{i32 7, !"Dwarf Version", i32 4}
!247 = !{i32 2, !"Debug Info Version", i32 3}
!248 = !{i32 1, !"wchar_size", i32 4}
!249 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_encrypt", scope: !226, file: !226, line: 25, type: !250, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !225, retainedNodes: !4)
!250 = !DISubroutineType(types: !251)
!251 = !{!56, !57, !252, !58, !14, !58, !14, !58, !58, !58}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!253 = !{!"23"}
!254 = !{!"24"}
!255 = !{!"25"}
!256 = !DILocalVariable(name: "c", arg: 1, scope: !249, file: !226, line: 25, type: !57)
!257 = !DILocation(line: 0, scope: !249)
!258 = !{!"26"}
!259 = !DILocalVariable(name: "clen", arg: 2, scope: !249, file: !226, line: 26, type: !252)
!260 = !{!"27"}
!261 = !DILocalVariable(name: "m", arg: 3, scope: !249, file: !226, line: 27, type: !58)
!262 = !{!"28"}
!263 = !DILocalVariable(name: "mlen", arg: 4, scope: !249, file: !226, line: 28, type: !14)
!264 = !{!"29"}
!265 = !DILocalVariable(name: "ad", arg: 5, scope: !249, file: !226, line: 29, type: !58)
!266 = !{!"30"}
!267 = !DILocalVariable(name: "adlen", arg: 6, scope: !249, file: !226, line: 30, type: !14)
!268 = !{!"31"}
!269 = !DILocalVariable(name: "nsec", arg: 7, scope: !249, file: !226, line: 31, type: !58)
!270 = !{!"32"}
!271 = !DILocalVariable(name: "npub", arg: 8, scope: !249, file: !226, line: 32, type: !58)
!272 = !{!"33"}
!273 = !DILocalVariable(name: "k", arg: 9, scope: !249, file: !226, line: 33, type: !58)
!274 = !{!"34"}
!275 = !DILocalVariable(name: "state", scope: !249, file: !226, line: 35, type: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 22, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 19, size: 1152, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !277, file: !10, line: 20, baseType: !14, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !277, file: !10, line: 21, baseType: !16, size: 1088, offset: 64)
!281 = !DILocation(line: 35, column: 39, scope: !249)
!282 = !{!"35"}
!283 = !DILocalVariable(name: "block0", scope: !249, file: !226, line: 36, type: !284)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 64)
!287 = !DILocation(line: 36, column: 39, scope: !249)
!288 = !{!"36"}
!289 = !DILocalVariable(name: "slen", scope: !249, file: !226, line: 37, type: !290)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 8)
!293 = !DILocation(line: 37, column: 39, scope: !249)
!294 = !{!"37"}
!295 = !DILocation(line: 51, column: 28, scope: !249)
!296 = !{!"38"}
!297 = !DILocation(line: 51, column: 5, scope: !249)
!298 = !{!"39"}
!299 = !DILocation(line: 52, column: 46, scope: !249)
!300 = !{!"40"}
!301 = !DILocation(line: 52, column: 5, scope: !249)
!302 = !{!"41"}
!303 = !DILocation(line: 53, column: 20, scope: !249)
!304 = !{!"42"}
!305 = !DILocation(line: 53, column: 5, scope: !249)
!306 = !{!"43"}
!307 = !DILocation(line: 55, column: 5, scope: !249)
!308 = !{!"44"}
!309 = !DILocation(line: 56, column: 22, scope: !249)
!310 = !{!"45"}
!311 = !DILocation(line: 56, column: 5, scope: !249)
!312 = !{!"46"}
!313 = !DILocation(line: 57, column: 48, scope: !249)
!314 = !{!"47"}
!315 = !DILocation(line: 57, column: 5, scope: !249)
!316 = !{!"48"}
!317 = !DILocation(line: 59, column: 5, scope: !249)
!318 = !{!"49"}
!319 = !DILocation(line: 61, column: 5, scope: !249)
!320 = !{!"50"}
!321 = !DILocation(line: 62, column: 22, scope: !249)
!322 = !{!"51"}
!323 = !DILocation(line: 62, column: 5, scope: !249)
!324 = !{!"52"}
!325 = !DILocation(line: 63, column: 48, scope: !249)
!326 = !{!"53"}
!327 = !DILocation(line: 63, column: 5, scope: !249)
!328 = !{!"54"}
!329 = !DILocation(line: 65, column: 49, scope: !249)
!330 = !{!"55"}
!331 = !DILocation(line: 65, column: 5, scope: !249)
!332 = !{!"56"}
!333 = !DILocation(line: 66, column: 20, scope: !249)
!334 = !{!"57"}
!335 = !DILocation(line: 66, column: 5, scope: !249)
!336 = !{!"58"}
!337 = !DILocation(line: 68, column: 14, scope: !338)
!338 = distinct !DILexicalBlock(scope: !249, file: !226, line: 68, column: 9)
!339 = !{!"59"}
!340 = !DILocation(line: 68, column: 9, scope: !249)
!341 = !{!"60"}
!342 = !DILocation(line: 69, column: 22, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !226, line: 68, column: 23)
!344 = !{!"61"}
!345 = !DILocation(line: 69, column: 15, scope: !343)
!346 = !{!"62"}
!347 = !DILocation(line: 70, column: 5, scope: !343)
!348 = !{!"63"}
!349 = !DILocation(line: 71, column: 5, scope: !249)
!350 = !{!"64"}
!351 = distinct !DISubprogram(name: "_u64_le_from_ull", scope: !226, file: !226, line: 12, type: !352, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !225, retainedNodes: !4)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !57, !14}
!354 = !DILocalVariable(name: "out", arg: 1, scope: !351, file: !226, line: 12, type: !57)
!355 = !DILocation(line: 0, scope: !351)
!356 = !{!"65"}
!357 = !DILocalVariable(name: "x", arg: 2, scope: !351, file: !226, line: 12, type: !14)
!358 = !{!"66"}
!359 = !DILocation(line: 14, column: 33, scope: !351)
!360 = !{!"67"}
!361 = !DILocation(line: 14, column: 14, scope: !351)
!362 = !{!"68"}
!363 = !DILocation(line: 14, column: 5, scope: !351)
!364 = !{!"69"}
!365 = !DILocation(line: 14, column: 12, scope: !351)
!366 = !{!"70"}
!367 = !DILocation(line: 14, column: 44, scope: !351)
!368 = !{!"71"}
!369 = !{!"72"}
!370 = !DILocation(line: 15, column: 33, scope: !351)
!371 = !{!"73"}
!372 = !DILocation(line: 15, column: 14, scope: !351)
!373 = !{!"74"}
!374 = !DILocation(line: 15, column: 5, scope: !351)
!375 = !{!"75"}
!376 = !DILocation(line: 15, column: 12, scope: !351)
!377 = !{!"76"}
!378 = !DILocation(line: 15, column: 44, scope: !351)
!379 = !{!"77"}
!380 = !{!"78"}
!381 = !DILocation(line: 16, column: 33, scope: !351)
!382 = !{!"79"}
!383 = !DILocation(line: 16, column: 14, scope: !351)
!384 = !{!"80"}
!385 = !DILocation(line: 16, column: 5, scope: !351)
!386 = !{!"81"}
!387 = !DILocation(line: 16, column: 12, scope: !351)
!388 = !{!"82"}
!389 = !DILocation(line: 16, column: 44, scope: !351)
!390 = !{!"83"}
!391 = !{!"84"}
!392 = !DILocation(line: 17, column: 33, scope: !351)
!393 = !{!"85"}
!394 = !DILocation(line: 17, column: 14, scope: !351)
!395 = !{!"86"}
!396 = !DILocation(line: 17, column: 5, scope: !351)
!397 = !{!"87"}
!398 = !DILocation(line: 17, column: 12, scope: !351)
!399 = !{!"88"}
!400 = !DILocation(line: 17, column: 44, scope: !351)
!401 = !{!"89"}
!402 = !{!"90"}
!403 = !DILocation(line: 18, column: 33, scope: !351)
!404 = !{!"91"}
!405 = !DILocation(line: 18, column: 14, scope: !351)
!406 = !{!"92"}
!407 = !DILocation(line: 18, column: 5, scope: !351)
!408 = !{!"93"}
!409 = !DILocation(line: 18, column: 12, scope: !351)
!410 = !{!"94"}
!411 = !DILocation(line: 18, column: 44, scope: !351)
!412 = !{!"95"}
!413 = !{!"96"}
!414 = !DILocation(line: 19, column: 33, scope: !351)
!415 = !{!"97"}
!416 = !DILocation(line: 19, column: 14, scope: !351)
!417 = !{!"98"}
!418 = !DILocation(line: 19, column: 5, scope: !351)
!419 = !{!"99"}
!420 = !DILocation(line: 19, column: 12, scope: !351)
!421 = !{!"100"}
!422 = !DILocation(line: 19, column: 44, scope: !351)
!423 = !{!"101"}
!424 = !{!"102"}
!425 = !DILocation(line: 20, column: 33, scope: !351)
!426 = !{!"103"}
!427 = !DILocation(line: 20, column: 14, scope: !351)
!428 = !{!"104"}
!429 = !DILocation(line: 20, column: 5, scope: !351)
!430 = !{!"105"}
!431 = !DILocation(line: 20, column: 12, scope: !351)
!432 = !{!"106"}
!433 = !DILocation(line: 20, column: 44, scope: !351)
!434 = !{!"107"}
!435 = !{!"108"}
!436 = !DILocation(line: 21, column: 33, scope: !351)
!437 = !{!"109"}
!438 = !DILocation(line: 21, column: 14, scope: !351)
!439 = !{!"110"}
!440 = !DILocation(line: 21, column: 5, scope: !351)
!441 = !{!"111"}
!442 = !DILocation(line: 21, column: 12, scope: !351)
!443 = !{!"112"}
!444 = !DILocation(line: 22, column: 1, scope: !351)
!445 = !{!"113"}
!446 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_decrypt", scope: !226, file: !226, line: 75, type: !447, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !225, retainedNodes: !4)
!447 = !DISubroutineType(types: !448)
!448 = !{!56, !57, !252, !57, !58, !14, !58, !14, !58, !58}
!449 = !{!"114"}
!450 = !{!"115"}
!451 = !{!"116"}
!452 = !{!"117"}
!453 = !DILocalVariable(name: "m", arg: 1, scope: !446, file: !226, line: 75, type: !57)
!454 = !DILocation(line: 0, scope: !446)
!455 = !{!"118"}
!456 = !DILocalVariable(name: "mlen", arg: 2, scope: !446, file: !226, line: 76, type: !252)
!457 = !{!"119"}
!458 = !DILocalVariable(name: "nsec", arg: 3, scope: !446, file: !226, line: 77, type: !57)
!459 = !{!"120"}
!460 = !DILocalVariable(name: "c", arg: 4, scope: !446, file: !226, line: 78, type: !58)
!461 = !{!"121"}
!462 = !DILocalVariable(name: "clen", arg: 5, scope: !446, file: !226, line: 79, type: !14)
!463 = !{!"122"}
!464 = !DILocalVariable(name: "ad", arg: 6, scope: !446, file: !226, line: 80, type: !58)
!465 = !{!"123"}
!466 = !DILocalVariable(name: "adlen", arg: 7, scope: !446, file: !226, line: 81, type: !14)
!467 = !{!"124"}
!468 = !DILocalVariable(name: "npub", arg: 8, scope: !446, file: !226, line: 82, type: !58)
!469 = !{!"125"}
!470 = !DILocalVariable(name: "k", arg: 9, scope: !446, file: !226, line: 83, type: !58)
!471 = !{!"126"}
!472 = !DILocalVariable(name: "state", scope: !446, file: !226, line: 85, type: !276)
!473 = !DILocation(line: 85, column: 39, scope: !446)
!474 = !{!"127"}
!475 = !DILocalVariable(name: "block0", scope: !446, file: !226, line: 86, type: !284)
!476 = !DILocation(line: 86, column: 39, scope: !446)
!477 = !{!"128"}
!478 = !DILocalVariable(name: "slen", scope: !446, file: !226, line: 87, type: !290)
!479 = !DILocation(line: 87, column: 39, scope: !446)
!480 = !{!"129"}
!481 = !DILocalVariable(name: "mac", scope: !446, file: !226, line: 88, type: !37)
!482 = !DILocation(line: 88, column: 39, scope: !446)
!483 = !{!"130"}
!484 = !DILocation(line: 92, column: 14, scope: !485)
!485 = distinct !DILexicalBlock(scope: !446, file: !226, line: 92, column: 9)
!486 = !{!"131"}
!487 = !DILocation(line: 92, column: 9, scope: !446)
!488 = !{!"132"}
!489 = !DILocation(line: 93, column: 15, scope: !490)
!490 = distinct !DILexicalBlock(scope: !485, file: !226, line: 92, column: 23)
!491 = !{!"133"}
!492 = !DILocation(line: 94, column: 5, scope: !490)
!493 = !{!"134"}
!494 = !DILocation(line: 95, column: 14, scope: !495)
!495 = distinct !DILexicalBlock(scope: !446, file: !226, line: 95, column: 9)
!496 = !{!"135"}
!497 = !DILocation(line: 95, column: 9, scope: !446)
!498 = !{!"136"}
!499 = !DILocation(line: 96, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !226, line: 95, column: 53)
!501 = !{!"137"}
!502 = !DILocation(line: 98, column: 28, scope: !446)
!503 = !{!"138"}
!504 = !DILocation(line: 98, column: 5, scope: !446)
!505 = !{!"139"}
!506 = !DILocation(line: 99, column: 46, scope: !446)
!507 = !{!"140"}
!508 = !DILocation(line: 99, column: 5, scope: !446)
!509 = !{!"141"}
!510 = !DILocation(line: 100, column: 20, scope: !446)
!511 = !{!"142"}
!512 = !DILocation(line: 100, column: 5, scope: !446)
!513 = !{!"143"}
!514 = !DILocation(line: 102, column: 5, scope: !446)
!515 = !{!"144"}
!516 = !DILocation(line: 103, column: 22, scope: !446)
!517 = !{!"145"}
!518 = !DILocation(line: 103, column: 5, scope: !446)
!519 = !{!"146"}
!520 = !DILocation(line: 104, column: 48, scope: !446)
!521 = !{!"147"}
!522 = !DILocation(line: 104, column: 5, scope: !446)
!523 = !{!"148"}
!524 = !DILocation(line: 107, column: 26, scope: !446)
!525 = !{!"149"}
!526 = !DILocation(line: 106, column: 5, scope: !446)
!527 = !{!"150"}
!528 = !DILocation(line: 108, column: 22, scope: !446)
!529 = !{!"151"}
!530 = !DILocation(line: 108, column: 33, scope: !446)
!531 = !{!"152"}
!532 = !DILocation(line: 108, column: 5, scope: !446)
!533 = !{!"153"}
!534 = !DILocation(line: 109, column: 48, scope: !446)
!535 = !{!"154"}
!536 = !DILocation(line: 109, column: 5, scope: !446)
!537 = !{!"155"}
!538 = !DILocation(line: 111, column: 47, scope: !446)
!539 = !{!"156"}
!540 = !DILocation(line: 111, column: 5, scope: !446)
!541 = !{!"157"}
!542 = !DILocation(line: 112, column: 20, scope: !446)
!543 = !{!"158"}
!544 = !DILocation(line: 112, column: 5, scope: !446)
!545 = !{!"159"}
!546 = !DILocation(line: 115, column: 28, scope: !446)
!547 = !{!"160"}
!548 = !DILocation(line: 116, column: 30, scope: !446)
!549 = !{!"161"}
!550 = !DILocation(line: 116, column: 37, scope: !446)
!551 = !{!"162"}
!552 = !DILocation(line: 115, column: 11, scope: !446)
!553 = !{!"163"}
!554 = !DILocalVariable(name: "ret", scope: !446, file: !226, line: 89, type: !56)
!555 = !{!"164"}
!556 = !DILocation(line: 117, column: 20, scope: !446)
!557 = !{!"165"}
!558 = !DILocation(line: 117, column: 5, scope: !446)
!559 = !{!"166"}
!560 = !DILocation(line: 118, column: 13, scope: !561)
!561 = distinct !DILexicalBlock(scope: !446, file: !226, line: 118, column: 9)
!562 = !{!"167"}
!563 = !DILocation(line: 118, column: 9, scope: !446)
!564 = !{!"168"}
!565 = !DILocation(line: 119, column: 27, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !226, line: 118, column: 19)
!567 = !{!"169"}
!568 = !DILocation(line: 119, column: 9, scope: !566)
!569 = !{!"170"}
!570 = !DILocation(line: 120, column: 9, scope: !566)
!571 = !{!"171"}
!572 = !DILocation(line: 123, column: 22, scope: !446)
!573 = !{!"172"}
!574 = !DILocation(line: 122, column: 5, scope: !446)
!575 = !{!"173"}
!576 = !DILocation(line: 124, column: 14, scope: !577)
!577 = distinct !DILexicalBlock(scope: !446, file: !226, line: 124, column: 9)
!578 = !{!"174"}
!579 = !DILocation(line: 124, column: 9, scope: !446)
!580 = !{!"175"}
!581 = !DILocation(line: 125, column: 22, scope: !582)
!582 = distinct !DILexicalBlock(scope: !577, file: !226, line: 124, column: 23)
!583 = !{!"176"}
!584 = !DILocation(line: 125, column: 15, scope: !582)
!585 = !{!"177"}
!586 = !DILocation(line: 126, column: 5, scope: !582)
!587 = !{!"178"}
!588 = !DILocation(line: 127, column: 5, scope: !446)
!589 = !{!"179"}
!590 = !{!"180"}
!591 = !DILocation(line: 128, column: 1, scope: !446)
!592 = !{!"181"}
!593 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_keybytes", scope: !226, file: !226, line: 131, type: !594, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !225, retainedNodes: !4)
!594 = !DISubroutineType(types: !595)
!595 = !{!122}
!596 = !DILocation(line: 132, column: 5, scope: !593)
!597 = !{!"182"}
!598 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_npubbytes", scope: !226, file: !226, line: 136, type: !594, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !225, retainedNodes: !4)
!599 = !DILocation(line: 137, column: 5, scope: !598)
!600 = !{!"183"}
!601 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_nsecbytes", scope: !226, file: !226, line: 141, type: !594, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !225, retainedNodes: !4)
!602 = !DILocation(line: 142, column: 5, scope: !601)
!603 = !{!"184"}
!604 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_abytes", scope: !226, file: !226, line: 146, type: !594, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !225, retainedNodes: !4)
!605 = !DILocation(line: 147, column: 5, scope: !604)
!606 = !{!"185"}
!607 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_implementation_name", scope: !3, file: !3, line: 91, type: !47, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!608 = !{!"186"}
!609 = !DILocation(line: 93, column: 5, scope: !607)
!610 = !{!"187"}
!611 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna", scope: !3, file: !3, line: 49, type: !54, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!612 = !{!"188"}
!613 = !DILocalVariable(name: "out", arg: 1, scope: !611, file: !3, line: 49, type: !57)
!614 = !DILocation(line: 0, scope: !611)
!615 = !{!"189"}
!616 = !DILocalVariable(name: "m", arg: 2, scope: !611, file: !3, line: 49, type: !58)
!617 = !{!"190"}
!618 = !DILocalVariable(name: "inlen", arg: 3, scope: !611, file: !3, line: 50, type: !14)
!619 = !{!"191"}
!620 = !DILocalVariable(name: "key", arg: 4, scope: !611, file: !3, line: 51, type: !58)
!621 = !{!"192"}
!622 = !DILocalVariable(name: "ctx", scope: !611, file: !3, line: 53, type: !7)
!623 = !DILocation(line: 53, column: 22, scope: !611)
!624 = !{!"193"}
!625 = !DILocation(line: 54, column: 5, scope: !611)
!626 = !{!"194"}
!627 = !DILocation(line: 55, column: 5, scope: !611)
!628 = !{!"195"}
!629 = !DILocation(line: 56, column: 5, scope: !611)
!630 = !{!"196"}
!631 = !DILocation(line: 58, column: 5, scope: !611)
!632 = !{!"197"}
!633 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_init", scope: !3, file: !3, line: 62, type: !66, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!634 = !DILocalVariable(name: "state", arg: 1, scope: !633, file: !3, line: 62, type: !68)
!635 = !DILocation(line: 0, scope: !633)
!636 = !{!"198"}
!637 = !DILocalVariable(name: "key", arg: 2, scope: !633, file: !3, line: 63, type: !58)
!638 = !{!"199"}
!639 = !DILocation(line: 65, column: 5, scope: !633)
!640 = !{!"200"}
!641 = !DILocation(line: 67, column: 5, scope: !633)
!642 = !{!"201"}
!643 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_update", scope: !3, file: !3, line: 71, type: !71, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!644 = !DILocalVariable(name: "state", arg: 1, scope: !643, file: !3, line: 71, type: !68)
!645 = !DILocation(line: 0, scope: !643)
!646 = !{!"202"}
!647 = !DILocalVariable(name: "in", arg: 2, scope: !643, file: !3, line: 72, type: !58)
!648 = !{!"203"}
!649 = !DILocalVariable(name: "inlen", arg: 3, scope: !643, file: !3, line: 73, type: !14)
!650 = !{!"204"}
!651 = !DILocation(line: 75, column: 5, scope: !643)
!652 = !{!"205"}
!653 = !DILocation(line: 77, column: 5, scope: !643)
!654 = !{!"206"}
!655 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_final", scope: !3, file: !3, line: 81, type: !75, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!656 = !DILocalVariable(name: "state", arg: 1, scope: !655, file: !3, line: 81, type: !68)
!657 = !DILocation(line: 0, scope: !655)
!658 = !{!"207"}
!659 = !DILocalVariable(name: "out", arg: 2, scope: !655, file: !3, line: 82, type: !57)
!660 = !{!"208"}
!661 = !DILocation(line: 84, column: 5, scope: !655)
!662 = !{!"209"}
!663 = !DILocation(line: 86, column: 5, scope: !655)
!664 = !{!"210"}
!665 = distinct !DISubprogram(name: "poly1305_finish", scope: !22, file: !22, line: 136, type: !666, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !6, !57}
!668 = !DILocalVariable(name: "ctx", arg: 1, scope: !665, file: !22, line: 136, type: !6)
!669 = !DILocation(line: 0, scope: !665)
!670 = !{!"211"}
!671 = !DILocalVariable(name: "mac", arg: 2, scope: !665, file: !22, line: 136, type: !57)
!672 = !{!"212"}
!673 = !DILocation(line: 137, column: 70, scope: !665)
!674 = !{!"213"}
!675 = !DILocation(line: 137, column: 41, scope: !665)
!676 = !{!"214"}
!677 = !DILocalVariable(name: "st", scope: !665, file: !22, line: 137, type: !20)
!678 = !{!"215"}
!679 = !DILocation(line: 144, column: 17, scope: !680)
!680 = distinct !DILexicalBlock(scope: !665, file: !22, line: 144, column: 13)
!681 = !{!"216"}
!682 = !{!"217"}
!683 = !DILocation(line: 144, column: 13, scope: !680)
!684 = !{!"218"}
!685 = !DILocation(line: 144, column: 13, scope: !665)
!686 = !{!"219"}
!687 = !DILocation(line: 145, column: 44, scope: !688)
!688 = distinct !DILexicalBlock(scope: !680, file: !22, line: 144, column: 27)
!689 = !{!"220"}
!690 = !{!"221"}
!691 = !DILocalVariable(name: "i", scope: !688, file: !22, line: 145, type: !14)
!692 = !DILocation(line: 0, scope: !688)
!693 = !{!"222"}
!694 = !DILocation(line: 146, column: 21, scope: !688)
!695 = !{!"223"}
!696 = !DILocation(line: 146, column: 29, scope: !688)
!697 = !{!"224"}
!698 = !{!"225"}
!699 = !DILocation(line: 146, column: 17, scope: !688)
!700 = !{!"226"}
!701 = !DILocation(line: 146, column: 33, scope: !688)
!702 = !{!"227"}
!703 = !DILocation(line: 147, column: 17, scope: !688)
!704 = !{!"228"}
!705 = !{!"229"}
!706 = !{!"230"}
!707 = !DILocation(line: 147, column: 26, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !22, line: 147, column: 17)
!709 = distinct !DILexicalBlock(scope: !688, file: !22, line: 147, column: 17)
!710 = !{!"231"}
!711 = !DILocation(line: 147, column: 17, scope: !709)
!712 = !{!"232"}
!713 = !DILocation(line: 148, column: 29, scope: !708)
!714 = !{!"233"}
!715 = !DILocation(line: 148, column: 25, scope: !708)
!716 = !{!"234"}
!717 = !DILocation(line: 148, column: 39, scope: !708)
!718 = !{!"235"}
!719 = !{!"236"}
!720 = !DILocation(line: 147, column: 50, scope: !708)
!721 = !{!"237"}
!722 = !{!"238"}
!723 = !DILocation(line: 147, column: 17, scope: !708)
!724 = distinct !{!724, !711, !725, !726}
!725 = !DILocation(line: 148, column: 41, scope: !709)
!726 = !{!"llvm.loop.mustprogress"}
!727 = !{!"239"}
!728 = !DILocation(line: 149, column: 21, scope: !688)
!729 = !{!"240"}
!730 = !DILocation(line: 149, column: 27, scope: !688)
!731 = !{!"241"}
!732 = !DILocation(line: 150, column: 41, scope: !688)
!733 = !{!"242"}
!734 = !DILocation(line: 150, column: 37, scope: !688)
!735 = !{!"243"}
!736 = !DILocation(line: 150, column: 17, scope: !688)
!737 = !{!"244"}
!738 = !DILocation(line: 151, column: 9, scope: !688)
!739 = !{!"245"}
!740 = !DILocation(line: 154, column: 18, scope: !665)
!741 = !{!"246"}
!742 = !DILocation(line: 154, column: 14, scope: !665)
!743 = !{!"247"}
!744 = !{!"248"}
!745 = !DILocalVariable(name: "h0", scope: !665, file: !22, line: 138, type: !27)
!746 = !{!"249"}
!747 = !DILocation(line: 155, column: 18, scope: !665)
!748 = !{!"250"}
!749 = !DILocation(line: 155, column: 14, scope: !665)
!750 = !{!"251"}
!751 = !{!"252"}
!752 = !DILocalVariable(name: "h1", scope: !665, file: !22, line: 138, type: !27)
!753 = !{!"253"}
!754 = !DILocation(line: 156, column: 18, scope: !665)
!755 = !{!"254"}
!756 = !DILocation(line: 156, column: 14, scope: !665)
!757 = !{!"255"}
!758 = !{!"256"}
!759 = !DILocalVariable(name: "h2", scope: !665, file: !22, line: 138, type: !27)
!760 = !{!"257"}
!761 = !DILocation(line: 157, column: 18, scope: !665)
!762 = !{!"258"}
!763 = !DILocation(line: 157, column: 14, scope: !665)
!764 = !{!"259"}
!765 = !{!"260"}
!766 = !DILocalVariable(name: "h3", scope: !665, file: !22, line: 138, type: !27)
!767 = !{!"261"}
!768 = !DILocation(line: 158, column: 18, scope: !665)
!769 = !{!"262"}
!770 = !DILocation(line: 158, column: 14, scope: !665)
!771 = !{!"263"}
!772 = !{!"264"}
!773 = !DILocalVariable(name: "h4", scope: !665, file: !22, line: 138, type: !27)
!774 = !{!"265"}
!775 = !DILocation(line: 160, column: 29, scope: !665)
!776 = !{!"266"}
!777 = !DILocalVariable(name: "c", scope: !665, file: !22, line: 138, type: !27)
!778 = !{!"267"}
!779 = !DILocation(line: 160, column: 44, scope: !665)
!780 = !{!"268"}
!781 = !{!"269"}
!782 = !DILocation(line: 161, column: 12, scope: !665)
!783 = !{!"270"}
!784 = !{!"271"}
!785 = !DILocation(line: 161, column: 29, scope: !665)
!786 = !{!"272"}
!787 = !{!"273"}
!788 = !DILocation(line: 161, column: 44, scope: !665)
!789 = !{!"274"}
!790 = !{!"275"}
!791 = !DILocation(line: 162, column: 12, scope: !665)
!792 = !{!"276"}
!793 = !{!"277"}
!794 = !DILocation(line: 162, column: 29, scope: !665)
!795 = !{!"278"}
!796 = !{!"279"}
!797 = !DILocation(line: 162, column: 44, scope: !665)
!798 = !{!"280"}
!799 = !{!"281"}
!800 = !DILocation(line: 163, column: 12, scope: !665)
!801 = !{!"282"}
!802 = !{!"283"}
!803 = !DILocation(line: 163, column: 29, scope: !665)
!804 = !{!"284"}
!805 = !{!"285"}
!806 = !DILocation(line: 163, column: 44, scope: !665)
!807 = !{!"286"}
!808 = !{!"287"}
!809 = !DILocation(line: 164, column: 17, scope: !665)
!810 = !{!"288"}
!811 = !DILocation(line: 164, column: 12, scope: !665)
!812 = !{!"289"}
!813 = !{!"290"}
!814 = !DILocation(line: 164, column: 29, scope: !665)
!815 = !{!"291"}
!816 = !{!"292"}
!817 = !DILocation(line: 164, column: 44, scope: !665)
!818 = !{!"293"}
!819 = !{!"294"}
!820 = !DILocation(line: 165, column: 12, scope: !665)
!821 = !{!"295"}
!822 = !{!"296"}
!823 = !DILocation(line: 168, column: 17, scope: !665)
!824 = !{!"297"}
!825 = !DILocalVariable(name: "g0", scope: !665, file: !22, line: 139, type: !27)
!826 = !{!"298"}
!827 = !DILocation(line: 168, column: 29, scope: !665)
!828 = !{!"299"}
!829 = !{!"300"}
!830 = !DILocation(line: 168, column: 39, scope: !665)
!831 = !{!"301"}
!832 = !{!"302"}
!833 = !DILocation(line: 169, column: 17, scope: !665)
!834 = !{!"303"}
!835 = !DILocalVariable(name: "g1", scope: !665, file: !22, line: 139, type: !27)
!836 = !{!"304"}
!837 = !DILocation(line: 169, column: 29, scope: !665)
!838 = !{!"305"}
!839 = !{!"306"}
!840 = !DILocation(line: 169, column: 39, scope: !665)
!841 = !{!"307"}
!842 = !{!"308"}
!843 = !DILocation(line: 170, column: 17, scope: !665)
!844 = !{!"309"}
!845 = !DILocalVariable(name: "g2", scope: !665, file: !22, line: 139, type: !27)
!846 = !{!"310"}
!847 = !DILocation(line: 170, column: 29, scope: !665)
!848 = !{!"311"}
!849 = !{!"312"}
!850 = !DILocation(line: 170, column: 39, scope: !665)
!851 = !{!"313"}
!852 = !{!"314"}
!853 = !DILocation(line: 171, column: 17, scope: !665)
!854 = !{!"315"}
!855 = !DILocalVariable(name: "g3", scope: !665, file: !22, line: 139, type: !27)
!856 = !{!"316"}
!857 = !DILocation(line: 171, column: 29, scope: !665)
!858 = !{!"317"}
!859 = !{!"318"}
!860 = !DILocation(line: 171, column: 39, scope: !665)
!861 = !{!"319"}
!862 = !{!"320"}
!863 = !DILocation(line: 172, column: 17, scope: !665)
!864 = !{!"321"}
!865 = !DILocation(line: 172, column: 21, scope: !665)
!866 = !{!"322"}
!867 = !DILocalVariable(name: "g4", scope: !665, file: !22, line: 139, type: !27)
!868 = !{!"323"}
!869 = !DILocation(line: 175, column: 20, scope: !665)
!870 = !{!"324"}
!871 = !DILocation(line: 175, column: 58, scope: !665)
!872 = !{!"325"}
!873 = !DILocalVariable(name: "mask", scope: !665, file: !22, line: 141, type: !27)
!874 = !{!"326"}
!875 = !DILocation(line: 176, column: 12, scope: !665)
!876 = !{!"327"}
!877 = !{!"328"}
!878 = !DILocation(line: 177, column: 12, scope: !665)
!879 = !{!"329"}
!880 = !{!"330"}
!881 = !DILocation(line: 178, column: 12, scope: !665)
!882 = !{!"331"}
!883 = !{!"332"}
!884 = !DILocation(line: 179, column: 12, scope: !665)
!885 = !{!"333"}
!886 = !{!"334"}
!887 = !DILocation(line: 180, column: 12, scope: !665)
!888 = !{!"335"}
!889 = !{!"336"}
!890 = !DILocation(line: 181, column: 16, scope: !665)
!891 = !{!"337"}
!892 = !{!"338"}
!893 = !DILocation(line: 182, column: 18, scope: !665)
!894 = !{!"339"}
!895 = !DILocation(line: 182, column: 26, scope: !665)
!896 = !{!"340"}
!897 = !{!"341"}
!898 = !DILocation(line: 183, column: 18, scope: !665)
!899 = !{!"342"}
!900 = !DILocation(line: 183, column: 26, scope: !665)
!901 = !{!"343"}
!902 = !{!"344"}
!903 = !DILocation(line: 184, column: 18, scope: !665)
!904 = !{!"345"}
!905 = !DILocation(line: 184, column: 26, scope: !665)
!906 = !{!"346"}
!907 = !{!"347"}
!908 = !DILocation(line: 185, column: 18, scope: !665)
!909 = !{!"348"}
!910 = !DILocation(line: 185, column: 26, scope: !665)
!911 = !{!"349"}
!912 = !{!"350"}
!913 = !DILocation(line: 186, column: 18, scope: !665)
!914 = !{!"351"}
!915 = !DILocation(line: 186, column: 26, scope: !665)
!916 = !{!"352"}
!917 = !{!"353"}
!918 = !DILocation(line: 189, column: 32, scope: !665)
!919 = !{!"354"}
!920 = !DILocation(line: 189, column: 26, scope: !665)
!921 = !{!"355"}
!922 = !DILocation(line: 189, column: 40, scope: !665)
!923 = !{!"356"}
!924 = !{!"357"}
!925 = !DILocation(line: 190, column: 19, scope: !665)
!926 = !{!"358"}
!927 = !DILocation(line: 190, column: 32, scope: !665)
!928 = !{!"359"}
!929 = !DILocation(line: 190, column: 26, scope: !665)
!930 = !{!"360"}
!931 = !DILocation(line: 190, column: 40, scope: !665)
!932 = !{!"361"}
!933 = !{!"362"}
!934 = !DILocation(line: 191, column: 19, scope: !665)
!935 = !{!"363"}
!936 = !DILocation(line: 191, column: 32, scope: !665)
!937 = !{!"364"}
!938 = !DILocation(line: 191, column: 26, scope: !665)
!939 = !{!"365"}
!940 = !DILocation(line: 191, column: 40, scope: !665)
!941 = !{!"366"}
!942 = !{!"367"}
!943 = !DILocation(line: 192, column: 19, scope: !665)
!944 = !{!"368"}
!945 = !DILocation(line: 192, column: 32, scope: !665)
!946 = !{!"369"}
!947 = !DILocation(line: 192, column: 26, scope: !665)
!948 = !{!"370"}
!949 = !DILocation(line: 192, column: 40, scope: !665)
!950 = !{!"371"}
!951 = !{!"372"}
!952 = !DILocation(line: 195, column: 42, scope: !665)
!953 = !{!"373"}
!954 = !DILocation(line: 195, column: 38, scope: !665)
!955 = !{!"374"}
!956 = !{!"375"}
!957 = !DILocation(line: 195, column: 36, scope: !665)
!958 = !{!"376"}
!959 = !DILocalVariable(name: "f", scope: !665, file: !22, line: 140, type: !14)
!960 = !{!"377"}
!961 = !{!"378"}
!962 = !DILocation(line: 196, column: 42, scope: !665)
!963 = !{!"379"}
!964 = !DILocation(line: 196, column: 38, scope: !665)
!965 = !{!"380"}
!966 = !{!"381"}
!967 = !DILocation(line: 196, column: 36, scope: !665)
!968 = !{!"382"}
!969 = !DILocation(line: 196, column: 54, scope: !665)
!970 = !{!"383"}
!971 = !DILocation(line: 196, column: 49, scope: !665)
!972 = !{!"384"}
!973 = !{!"385"}
!974 = !{!"386"}
!975 = !DILocation(line: 197, column: 42, scope: !665)
!976 = !{!"387"}
!977 = !DILocation(line: 197, column: 38, scope: !665)
!978 = !{!"388"}
!979 = !{!"389"}
!980 = !DILocation(line: 197, column: 36, scope: !665)
!981 = !{!"390"}
!982 = !DILocation(line: 197, column: 54, scope: !665)
!983 = !{!"391"}
!984 = !DILocation(line: 197, column: 49, scope: !665)
!985 = !{!"392"}
!986 = !{!"393"}
!987 = !{!"394"}
!988 = !DILocation(line: 198, column: 42, scope: !665)
!989 = !{!"395"}
!990 = !DILocation(line: 198, column: 38, scope: !665)
!991 = !{!"396"}
!992 = !{!"397"}
!993 = !DILocation(line: 198, column: 36, scope: !665)
!994 = !{!"398"}
!995 = !DILocation(line: 198, column: 54, scope: !665)
!996 = !{!"399"}
!997 = !DILocation(line: 198, column: 49, scope: !665)
!998 = !{!"400"}
!999 = !{!"401"}
!1000 = !{!"402"}
!1001 = !DILocation(line: 200, column: 20, scope: !665)
!1002 = !{!"403"}
!1003 = !DILocation(line: 200, column: 9, scope: !665)
!1004 = !{!"404"}
!1005 = !DILocation(line: 201, column: 20, scope: !665)
!1006 = !{!"405"}
!1007 = !DILocation(line: 201, column: 9, scope: !665)
!1008 = !{!"406"}
!1009 = !DILocation(line: 202, column: 20, scope: !665)
!1010 = !{!"407"}
!1011 = !DILocation(line: 202, column: 9, scope: !665)
!1012 = !{!"408"}
!1013 = !DILocation(line: 203, column: 20, scope: !665)
!1014 = !{!"409"}
!1015 = !DILocation(line: 203, column: 9, scope: !665)
!1016 = !{!"410"}
!1017 = !DILocation(line: 206, column: 24, scope: !665)
!1018 = !{!"411"}
!1019 = !DILocation(line: 206, column: 9, scope: !665)
!1020 = !{!"412"}
!1021 = !DILocation(line: 207, column: 1, scope: !665)
!1022 = !{!"413"}
!1023 = distinct !DISubprogram(name: "poly1305_blocks", scope: !22, file: !22, line: 75, type: !1024, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !20, !58, !14}
!1026 = !DILocalVariable(name: "st", arg: 1, scope: !1023, file: !22, line: 75, type: !20)
!1027 = !DILocation(line: 0, scope: !1023)
!1028 = !{!"414"}
!1029 = !DILocalVariable(name: "m", arg: 2, scope: !1023, file: !22, line: 75, type: !58)
!1030 = !{!"415"}
!1031 = !DILocalVariable(name: "bytes", arg: 3, scope: !1023, file: !22, line: 75, type: !14)
!1032 = !{!"416"}
!1033 = !DILocation(line: 76, column: 42, scope: !1023)
!1034 = !{!"417"}
!1035 = !{!"418"}
!1036 = !DILocation(line: 76, column: 37, scope: !1023)
!1037 = !{!"419"}
!1038 = !{!"420"}
!1039 = !{!"421"}
!1040 = !{!"422"}
!1041 = !{!"423"}
!1042 = !DILocalVariable(name: "hibit", scope: !1023, file: !22, line: 76, type: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!1044 = !{!"424"}
!1045 = !DILocation(line: 83, column: 18, scope: !1023)
!1046 = !{!"425"}
!1047 = !DILocation(line: 83, column: 14, scope: !1023)
!1048 = !{!"426"}
!1049 = !{!"427"}
!1050 = !DILocalVariable(name: "r0", scope: !1023, file: !22, line: 77, type: !27)
!1051 = !{!"428"}
!1052 = !DILocation(line: 84, column: 18, scope: !1023)
!1053 = !{!"429"}
!1054 = !DILocation(line: 84, column: 14, scope: !1023)
!1055 = !{!"430"}
!1056 = !{!"431"}
!1057 = !DILocalVariable(name: "r1", scope: !1023, file: !22, line: 77, type: !27)
!1058 = !{!"432"}
!1059 = !DILocation(line: 85, column: 18, scope: !1023)
!1060 = !{!"433"}
!1061 = !DILocation(line: 85, column: 14, scope: !1023)
!1062 = !{!"434"}
!1063 = !{!"435"}
!1064 = !DILocalVariable(name: "r2", scope: !1023, file: !22, line: 77, type: !27)
!1065 = !{!"436"}
!1066 = !DILocation(line: 86, column: 18, scope: !1023)
!1067 = !{!"437"}
!1068 = !DILocation(line: 86, column: 14, scope: !1023)
!1069 = !{!"438"}
!1070 = !{!"439"}
!1071 = !DILocalVariable(name: "r3", scope: !1023, file: !22, line: 77, type: !27)
!1072 = !{!"440"}
!1073 = !DILocation(line: 87, column: 18, scope: !1023)
!1074 = !{!"441"}
!1075 = !DILocation(line: 87, column: 14, scope: !1023)
!1076 = !{!"442"}
!1077 = !{!"443"}
!1078 = !DILocalVariable(name: "r4", scope: !1023, file: !22, line: 77, type: !27)
!1079 = !{!"444"}
!1080 = !DILocation(line: 89, column: 17, scope: !1023)
!1081 = !{!"445"}
!1082 = !DILocalVariable(name: "s1", scope: !1023, file: !22, line: 78, type: !27)
!1083 = !{!"446"}
!1084 = !DILocation(line: 90, column: 17, scope: !1023)
!1085 = !{!"447"}
!1086 = !DILocalVariable(name: "s2", scope: !1023, file: !22, line: 78, type: !27)
!1087 = !{!"448"}
!1088 = !DILocation(line: 91, column: 17, scope: !1023)
!1089 = !{!"449"}
!1090 = !DILocalVariable(name: "s3", scope: !1023, file: !22, line: 78, type: !27)
!1091 = !{!"450"}
!1092 = !DILocation(line: 92, column: 17, scope: !1023)
!1093 = !{!"451"}
!1094 = !DILocalVariable(name: "s4", scope: !1023, file: !22, line: 78, type: !27)
!1095 = !{!"452"}
!1096 = !DILocation(line: 94, column: 18, scope: !1023)
!1097 = !{!"453"}
!1098 = !DILocation(line: 94, column: 14, scope: !1023)
!1099 = !{!"454"}
!1100 = !{!"455"}
!1101 = !DILocalVariable(name: "h0", scope: !1023, file: !22, line: 79, type: !27)
!1102 = !{!"456"}
!1103 = !DILocation(line: 95, column: 18, scope: !1023)
!1104 = !{!"457"}
!1105 = !DILocation(line: 95, column: 14, scope: !1023)
!1106 = !{!"458"}
!1107 = !{!"459"}
!1108 = !DILocalVariable(name: "h1", scope: !1023, file: !22, line: 79, type: !27)
!1109 = !{!"460"}
!1110 = !DILocation(line: 96, column: 18, scope: !1023)
!1111 = !{!"461"}
!1112 = !DILocation(line: 96, column: 14, scope: !1023)
!1113 = !{!"462"}
!1114 = !{!"463"}
!1115 = !DILocalVariable(name: "h2", scope: !1023, file: !22, line: 79, type: !27)
!1116 = !{!"464"}
!1117 = !DILocation(line: 97, column: 18, scope: !1023)
!1118 = !{!"465"}
!1119 = !DILocation(line: 97, column: 14, scope: !1023)
!1120 = !{!"466"}
!1121 = !{!"467"}
!1122 = !DILocalVariable(name: "h3", scope: !1023, file: !22, line: 79, type: !27)
!1123 = !{!"468"}
!1124 = !DILocation(line: 98, column: 18, scope: !1023)
!1125 = !{!"469"}
!1126 = !DILocation(line: 98, column: 14, scope: !1023)
!1127 = !{!"470"}
!1128 = !{!"471"}
!1129 = !DILocalVariable(name: "h4", scope: !1023, file: !22, line: 79, type: !27)
!1130 = !{!"472"}
!1131 = !DILocation(line: 100, column: 9, scope: !1023)
!1132 = !{!"473"}
!1133 = !{!"474"}
!1134 = !{!"475"}
!1135 = !{!"476"}
!1136 = !{!"477"}
!1137 = !{!"478"}
!1138 = !{!"479"}
!1139 = !{!"480"}
!1140 = !{!"481"}
!1141 = !{!"482"}
!1142 = !{!"483"}
!1143 = !{!"484"}
!1144 = !{!"485"}
!1145 = !{!"486"}
!1146 = !{!"487"}
!1147 = !DILocation(line: 100, column: 22, scope: !1023)
!1148 = !{!"488"}
!1149 = !{!"489"}
!1150 = !DILocation(line: 102, column: 32, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1023, file: !22, line: 100, column: 46)
!1152 = !{!"490"}
!1153 = !DILocation(line: 102, column: 24, scope: !1151)
!1154 = !{!"491"}
!1155 = !DILocation(line: 102, column: 43, scope: !1151)
!1156 = !{!"492"}
!1157 = !DILocation(line: 102, column: 20, scope: !1151)
!1158 = !{!"493"}
!1159 = !{!"494"}
!1160 = !DILocation(line: 103, column: 32, scope: !1151)
!1161 = !{!"495"}
!1162 = !DILocation(line: 103, column: 24, scope: !1151)
!1163 = !{!"496"}
!1164 = !DILocation(line: 103, column: 37, scope: !1151)
!1165 = !{!"497"}
!1166 = !DILocation(line: 103, column: 43, scope: !1151)
!1167 = !{!"498"}
!1168 = !DILocation(line: 103, column: 20, scope: !1151)
!1169 = !{!"499"}
!1170 = !{!"500"}
!1171 = !DILocation(line: 104, column: 32, scope: !1151)
!1172 = !{!"501"}
!1173 = !DILocation(line: 104, column: 24, scope: !1151)
!1174 = !{!"502"}
!1175 = !DILocation(line: 104, column: 37, scope: !1151)
!1176 = !{!"503"}
!1177 = !DILocation(line: 104, column: 43, scope: !1151)
!1178 = !{!"504"}
!1179 = !DILocation(line: 104, column: 20, scope: !1151)
!1180 = !{!"505"}
!1181 = !{!"506"}
!1182 = !DILocation(line: 105, column: 32, scope: !1151)
!1183 = !{!"507"}
!1184 = !DILocation(line: 105, column: 24, scope: !1151)
!1185 = !{!"508"}
!1186 = !DILocation(line: 105, column: 37, scope: !1151)
!1187 = !{!"509"}
!1188 = !DILocation(line: 105, column: 43, scope: !1151)
!1189 = !{!"510"}
!1190 = !DILocation(line: 105, column: 20, scope: !1151)
!1191 = !{!"511"}
!1192 = !{!"512"}
!1193 = !DILocation(line: 106, column: 32, scope: !1151)
!1194 = !{!"513"}
!1195 = !DILocation(line: 106, column: 24, scope: !1151)
!1196 = !{!"514"}
!1197 = !DILocation(line: 106, column: 37, scope: !1151)
!1198 = !{!"515"}
!1199 = !DILocation(line: 106, column: 43, scope: !1151)
!1200 = !{!"516"}
!1201 = !DILocation(line: 106, column: 20, scope: !1151)
!1202 = !{!"517"}
!1203 = !{!"518"}
!1204 = !DILocation(line: 109, column: 46, scope: !1151)
!1205 = !{!"519"}
!1206 = !DILocation(line: 109, column: 78, scope: !1151)
!1207 = !{!"520"}
!1208 = !DILocation(line: 109, column: 52, scope: !1151)
!1209 = !{!"521"}
!1210 = !DILocation(line: 109, column: 110, scope: !1151)
!1211 = !{!"522"}
!1212 = !DILocation(line: 109, column: 84, scope: !1151)
!1213 = !{!"523"}
!1214 = !DILocation(line: 109, column: 142, scope: !1151)
!1215 = !{!"524"}
!1216 = !DILocation(line: 109, column: 116, scope: !1151)
!1217 = !{!"525"}
!1218 = !DILocation(line: 109, column: 174, scope: !1151)
!1219 = !{!"526"}
!1220 = !DILocation(line: 109, column: 148, scope: !1151)
!1221 = !{!"527"}
!1222 = !DILocalVariable(name: "d0", scope: !1023, file: !22, line: 80, type: !14)
!1223 = !{!"528"}
!1224 = !DILocation(line: 110, column: 46, scope: !1151)
!1225 = !{!"529"}
!1226 = !DILocation(line: 110, column: 78, scope: !1151)
!1227 = !{!"530"}
!1228 = !DILocation(line: 110, column: 52, scope: !1151)
!1229 = !{!"531"}
!1230 = !DILocation(line: 110, column: 110, scope: !1151)
!1231 = !{!"532"}
!1232 = !DILocation(line: 110, column: 84, scope: !1151)
!1233 = !{!"533"}
!1234 = !DILocation(line: 110, column: 142, scope: !1151)
!1235 = !{!"534"}
!1236 = !DILocation(line: 110, column: 116, scope: !1151)
!1237 = !{!"535"}
!1238 = !DILocation(line: 110, column: 174, scope: !1151)
!1239 = !{!"536"}
!1240 = !DILocation(line: 110, column: 148, scope: !1151)
!1241 = !{!"537"}
!1242 = !DILocalVariable(name: "d1", scope: !1023, file: !22, line: 80, type: !14)
!1243 = !{!"538"}
!1244 = !DILocation(line: 111, column: 46, scope: !1151)
!1245 = !{!"539"}
!1246 = !DILocation(line: 111, column: 78, scope: !1151)
!1247 = !{!"540"}
!1248 = !DILocation(line: 111, column: 52, scope: !1151)
!1249 = !{!"541"}
!1250 = !DILocation(line: 111, column: 110, scope: !1151)
!1251 = !{!"542"}
!1252 = !DILocation(line: 111, column: 84, scope: !1151)
!1253 = !{!"543"}
!1254 = !DILocation(line: 111, column: 142, scope: !1151)
!1255 = !{!"544"}
!1256 = !DILocation(line: 111, column: 116, scope: !1151)
!1257 = !{!"545"}
!1258 = !DILocation(line: 111, column: 174, scope: !1151)
!1259 = !{!"546"}
!1260 = !DILocation(line: 111, column: 148, scope: !1151)
!1261 = !{!"547"}
!1262 = !DILocalVariable(name: "d2", scope: !1023, file: !22, line: 80, type: !14)
!1263 = !{!"548"}
!1264 = !DILocation(line: 112, column: 46, scope: !1151)
!1265 = !{!"549"}
!1266 = !DILocation(line: 112, column: 78, scope: !1151)
!1267 = !{!"550"}
!1268 = !DILocation(line: 112, column: 52, scope: !1151)
!1269 = !{!"551"}
!1270 = !DILocation(line: 112, column: 110, scope: !1151)
!1271 = !{!"552"}
!1272 = !DILocation(line: 112, column: 84, scope: !1151)
!1273 = !{!"553"}
!1274 = !DILocation(line: 112, column: 142, scope: !1151)
!1275 = !{!"554"}
!1276 = !DILocation(line: 112, column: 116, scope: !1151)
!1277 = !{!"555"}
!1278 = !DILocation(line: 112, column: 174, scope: !1151)
!1279 = !{!"556"}
!1280 = !DILocation(line: 112, column: 148, scope: !1151)
!1281 = !{!"557"}
!1282 = !DILocalVariable(name: "d3", scope: !1023, file: !22, line: 80, type: !14)
!1283 = !{!"558"}
!1284 = !DILocation(line: 113, column: 46, scope: !1151)
!1285 = !{!"559"}
!1286 = !DILocation(line: 113, column: 78, scope: !1151)
!1287 = !{!"560"}
!1288 = !DILocation(line: 113, column: 52, scope: !1151)
!1289 = !{!"561"}
!1290 = !DILocation(line: 113, column: 110, scope: !1151)
!1291 = !{!"562"}
!1292 = !DILocation(line: 113, column: 84, scope: !1151)
!1293 = !{!"563"}
!1294 = !DILocation(line: 113, column: 142, scope: !1151)
!1295 = !{!"564"}
!1296 = !DILocation(line: 113, column: 116, scope: !1151)
!1297 = !{!"565"}
!1298 = !DILocation(line: 113, column: 174, scope: !1151)
!1299 = !{!"566"}
!1300 = !DILocation(line: 113, column: 148, scope: !1151)
!1301 = !{!"567"}
!1302 = !DILocalVariable(name: "d4", scope: !1023, file: !22, line: 80, type: !14)
!1303 = !{!"568"}
!1304 = !DILocation(line: 116, column: 54, scope: !1151)
!1305 = !{!"569"}
!1306 = !DILocalVariable(name: "c", scope: !1023, file: !22, line: 81, type: !27)
!1307 = !{!"570"}
!1308 = !DILocation(line: 116, column: 85, scope: !1151)
!1309 = !{!"571"}
!1310 = !{!"572"}
!1311 = !DILocation(line: 117, column: 20, scope: !1151)
!1312 = !{!"573"}
!1313 = !{!"574"}
!1314 = !DILocation(line: 117, column: 54, scope: !1151)
!1315 = !{!"575"}
!1316 = !{!"576"}
!1317 = !DILocation(line: 117, column: 85, scope: !1151)
!1318 = !{!"577"}
!1319 = !{!"578"}
!1320 = !DILocation(line: 118, column: 20, scope: !1151)
!1321 = !{!"579"}
!1322 = !{!"580"}
!1323 = !DILocation(line: 118, column: 54, scope: !1151)
!1324 = !{!"581"}
!1325 = !{!"582"}
!1326 = !DILocation(line: 118, column: 85, scope: !1151)
!1327 = !{!"583"}
!1328 = !{!"584"}
!1329 = !DILocation(line: 119, column: 20, scope: !1151)
!1330 = !{!"585"}
!1331 = !{!"586"}
!1332 = !DILocation(line: 119, column: 54, scope: !1151)
!1333 = !{!"587"}
!1334 = !{!"588"}
!1335 = !DILocation(line: 119, column: 85, scope: !1151)
!1336 = !{!"589"}
!1337 = !{!"590"}
!1338 = !DILocation(line: 120, column: 20, scope: !1151)
!1339 = !{!"591"}
!1340 = !{!"592"}
!1341 = !DILocation(line: 120, column: 54, scope: !1151)
!1342 = !{!"593"}
!1343 = !{!"594"}
!1344 = !DILocation(line: 120, column: 85, scope: !1151)
!1345 = !{!"595"}
!1346 = !{!"596"}
!1347 = !DILocation(line: 121, column: 25, scope: !1151)
!1348 = !{!"597"}
!1349 = !DILocation(line: 121, column: 20, scope: !1151)
!1350 = !{!"598"}
!1351 = !{!"599"}
!1352 = !DILocation(line: 121, column: 54, scope: !1151)
!1353 = !{!"600"}
!1354 = !{!"601"}
!1355 = !DILocation(line: 121, column: 85, scope: !1151)
!1356 = !{!"602"}
!1357 = !{!"603"}
!1358 = !DILocation(line: 122, column: 20, scope: !1151)
!1359 = !{!"604"}
!1360 = !{!"605"}
!1361 = !DILocation(line: 124, column: 19, scope: !1151)
!1362 = !{!"606"}
!1363 = !{!"607"}
!1364 = !DILocation(line: 125, column: 23, scope: !1151)
!1365 = !{!"608"}
!1366 = !{!"609"}
!1367 = distinct !{!1367, !1131, !1368, !726}
!1368 = !DILocation(line: 126, column: 9, scope: !1023)
!1369 = !{!"610"}
!1370 = !DILocation(line: 128, column: 13, scope: !1023)
!1371 = !{!"611"}
!1372 = !DILocation(line: 128, column: 9, scope: !1023)
!1373 = !{!"612"}
!1374 = !DILocation(line: 128, column: 18, scope: !1023)
!1375 = !{!"613"}
!1376 = !DILocation(line: 129, column: 13, scope: !1023)
!1377 = !{!"614"}
!1378 = !DILocation(line: 129, column: 9, scope: !1023)
!1379 = !{!"615"}
!1380 = !DILocation(line: 129, column: 18, scope: !1023)
!1381 = !{!"616"}
!1382 = !DILocation(line: 130, column: 13, scope: !1023)
!1383 = !{!"617"}
!1384 = !DILocation(line: 130, column: 9, scope: !1023)
!1385 = !{!"618"}
!1386 = !DILocation(line: 130, column: 18, scope: !1023)
!1387 = !{!"619"}
!1388 = !DILocation(line: 131, column: 13, scope: !1023)
!1389 = !{!"620"}
!1390 = !DILocation(line: 131, column: 9, scope: !1023)
!1391 = !{!"621"}
!1392 = !DILocation(line: 131, column: 18, scope: !1023)
!1393 = !{!"622"}
!1394 = !DILocation(line: 132, column: 13, scope: !1023)
!1395 = !{!"623"}
!1396 = !DILocation(line: 132, column: 9, scope: !1023)
!1397 = !{!"624"}
!1398 = !DILocation(line: 132, column: 18, scope: !1023)
!1399 = !{!"625"}
!1400 = !DILocation(line: 133, column: 1, scope: !1023)
!1401 = !{!"626"}
!1402 = distinct !DISubprogram(name: "U32TO8", scope: !22, file: !22, line: 39, type: !1403, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{null, !57, !27}
!1405 = !DILocalVariable(name: "p", arg: 1, scope: !1402, file: !22, line: 39, type: !57)
!1406 = !DILocation(line: 0, scope: !1402)
!1407 = !{!"627"}
!1408 = !DILocalVariable(name: "v", arg: 2, scope: !1402, file: !22, line: 39, type: !27)
!1409 = !{!"628"}
!1410 = !DILocation(line: 40, column: 26, scope: !1402)
!1411 = !{!"629"}
!1412 = !DILocation(line: 40, column: 16, scope: !1402)
!1413 = !{!"630"}
!1414 = !DILocation(line: 40, column: 9, scope: !1402)
!1415 = !{!"631"}
!1416 = !DILocation(line: 40, column: 14, scope: !1402)
!1417 = !{!"632"}
!1418 = !DILocation(line: 41, column: 19, scope: !1402)
!1419 = !{!"633"}
!1420 = !DILocation(line: 41, column: 26, scope: !1402)
!1421 = !{!"634"}
!1422 = !DILocation(line: 41, column: 16, scope: !1402)
!1423 = !{!"635"}
!1424 = !DILocation(line: 41, column: 9, scope: !1402)
!1425 = !{!"636"}
!1426 = !DILocation(line: 41, column: 14, scope: !1402)
!1427 = !{!"637"}
!1428 = !DILocation(line: 42, column: 19, scope: !1402)
!1429 = !{!"638"}
!1430 = !DILocation(line: 42, column: 26, scope: !1402)
!1431 = !{!"639"}
!1432 = !DILocation(line: 42, column: 16, scope: !1402)
!1433 = !{!"640"}
!1434 = !DILocation(line: 42, column: 9, scope: !1402)
!1435 = !{!"641"}
!1436 = !DILocation(line: 42, column: 14, scope: !1402)
!1437 = !{!"642"}
!1438 = !DILocation(line: 43, column: 19, scope: !1402)
!1439 = !{!"643"}
!1440 = !DILocation(line: 43, column: 26, scope: !1402)
!1441 = !{!"644"}
!1442 = !DILocation(line: 43, column: 16, scope: !1402)
!1443 = !{!"645"}
!1444 = !DILocation(line: 43, column: 9, scope: !1402)
!1445 = !{!"646"}
!1446 = !DILocation(line: 43, column: 14, scope: !1402)
!1447 = !{!"647"}
!1448 = !DILocation(line: 44, column: 1, scope: !1402)
!1449 = !{!"648"}
!1450 = distinct !DISubprogram(name: "U8TO32", scope: !22, file: !22, line: 29, type: !1451, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!27, !58}
!1453 = !DILocalVariable(name: "p", arg: 1, scope: !1450, file: !22, line: 29, type: !58)
!1454 = !DILocation(line: 0, scope: !1450)
!1455 = !{!"649"}
!1456 = !DILocation(line: 31, column: 27, scope: !1450)
!1457 = !{!"650"}
!1458 = !{!"651"}
!1459 = !{!"652"}
!1460 = !DILocation(line: 31, column: 32, scope: !1450)
!1461 = !{!"653"}
!1462 = !DILocation(line: 31, column: 11, scope: !1450)
!1463 = !{!"654"}
!1464 = !DILocation(line: 32, column: 27, scope: !1450)
!1465 = !{!"655"}
!1466 = !{!"656"}
!1467 = !{!"657"}
!1468 = !DILocation(line: 32, column: 32, scope: !1450)
!1469 = !{!"658"}
!1470 = !DILocation(line: 32, column: 11, scope: !1450)
!1471 = !{!"659"}
!1472 = !DILocation(line: 32, column: 40, scope: !1450)
!1473 = !{!"660"}
!1474 = !DILocation(line: 31, column: 47, scope: !1450)
!1475 = !{!"661"}
!1476 = !DILocation(line: 33, column: 27, scope: !1450)
!1477 = !{!"662"}
!1478 = !{!"663"}
!1479 = !{!"664"}
!1480 = !DILocation(line: 33, column: 32, scope: !1450)
!1481 = !{!"665"}
!1482 = !DILocation(line: 33, column: 11, scope: !1450)
!1483 = !{!"666"}
!1484 = !DILocation(line: 33, column: 40, scope: !1450)
!1485 = !{!"667"}
!1486 = !DILocation(line: 32, column: 47, scope: !1450)
!1487 = !{!"668"}
!1488 = !DILocation(line: 34, column: 27, scope: !1450)
!1489 = !{!"669"}
!1490 = !{!"670"}
!1491 = !{!"671"}
!1492 = !DILocation(line: 34, column: 32, scope: !1450)
!1493 = !{!"672"}
!1494 = !DILocation(line: 34, column: 11, scope: !1450)
!1495 = !{!"673"}
!1496 = !DILocation(line: 34, column: 40, scope: !1450)
!1497 = !{!"674"}
!1498 = !DILocation(line: 33, column: 47, scope: !1450)
!1499 = !{!"675"}
!1500 = !DILocation(line: 30, column: 9, scope: !1450)
!1501 = !{!"676"}
!1502 = distinct !DISubprogram(name: "poly1305_update", scope: !3, file: !3, line: 11, type: !1503, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !6, !58, !14}
!1505 = !DILocalVariable(name: "ctx", arg: 1, scope: !1502, file: !3, line: 11, type: !6)
!1506 = !DILocation(line: 0, scope: !1502)
!1507 = !{!"677"}
!1508 = !DILocalVariable(name: "m", arg: 2, scope: !1502, file: !3, line: 11, type: !58)
!1509 = !{!"678"}
!1510 = !DILocalVariable(name: "bytes", arg: 3, scope: !1502, file: !3, line: 12, type: !14)
!1511 = !{!"679"}
!1512 = !DILocation(line: 13, column: 66, scope: !1502)
!1513 = !{!"680"}
!1514 = !DILocation(line: 13, column: 37, scope: !1502)
!1515 = !{!"681"}
!1516 = !DILocalVariable(name: "st", scope: !1502, file: !3, line: 13, type: !20)
!1517 = !{!"682"}
!1518 = !DILocation(line: 17, column: 13, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 17, column: 9)
!1520 = !{!"683"}
!1521 = !{!"684"}
!1522 = !DILocation(line: 17, column: 9, scope: !1519)
!1523 = !{!"685"}
!1524 = !DILocation(line: 17, column: 9, scope: !1502)
!1525 = !{!"686"}
!1526 = !DILocation(line: 18, column: 62, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 17, column: 23)
!1528 = !{!"687"}
!1529 = !{!"688"}
!1530 = !DILocation(line: 18, column: 56, scope: !1527)
!1531 = !{!"689"}
!1532 = !DILocalVariable(name: "want", scope: !1527, file: !3, line: 18, type: !14)
!1533 = !DILocation(line: 0, scope: !1527)
!1534 = !{!"690"}
!1535 = !DILocation(line: 19, column: 18, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 19, column: 13)
!1537 = !{!"691"}
!1538 = !DILocation(line: 19, column: 13, scope: !1527)
!1539 = !{!"692"}
!1540 = !{!"693"}
!1541 = !DILocation(line: 20, column: 13, scope: !1536)
!1542 = !{!"694"}
!1543 = !{!"695"}
!1544 = !{!"696"}
!1545 = !DILocalVariable(name: "i", scope: !1502, file: !3, line: 14, type: !14)
!1546 = !{!"697"}
!1547 = !DILocation(line: 21, column: 14, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 21, column: 9)
!1549 = !{!"698"}
!1550 = !DILocation(line: 0, scope: !1548)
!1551 = !{!"699"}
!1552 = !{!"700"}
!1553 = !DILocation(line: 21, column: 23, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 21, column: 9)
!1555 = !{!"701"}
!1556 = !DILocation(line: 21, column: 9, scope: !1548)
!1557 = !{!"702"}
!1558 = !DILocation(line: 22, column: 44, scope: !1554)
!1559 = !{!"703"}
!1560 = !{!"704"}
!1561 = !DILocation(line: 22, column: 17, scope: !1554)
!1562 = !{!"705"}
!1563 = !DILocation(line: 22, column: 28, scope: !1554)
!1564 = !{!"706"}
!1565 = !{!"707"}
!1566 = !DILocation(line: 22, column: 37, scope: !1554)
!1567 = !{!"708"}
!1568 = !DILocation(line: 22, column: 13, scope: !1554)
!1569 = !{!"709"}
!1570 = !DILocation(line: 22, column: 42, scope: !1554)
!1571 = !{!"710"}
!1572 = !{!"711"}
!1573 = !DILocation(line: 21, column: 32, scope: !1554)
!1574 = !{!"712"}
!1575 = !{!"713"}
!1576 = !DILocation(line: 21, column: 9, scope: !1554)
!1577 = distinct !{!1577, !1556, !1578, !726}
!1578 = !DILocation(line: 22, column: 47, scope: !1548)
!1579 = !{!"714"}
!1580 = !DILocation(line: 23, column: 15, scope: !1527)
!1581 = !{!"715"}
!1582 = !{!"716"}
!1583 = !DILocation(line: 24, column: 11, scope: !1527)
!1584 = !{!"717"}
!1585 = !{!"718"}
!1586 = !DILocation(line: 25, column: 13, scope: !1527)
!1587 = !{!"719"}
!1588 = !DILocation(line: 25, column: 22, scope: !1527)
!1589 = !{!"720"}
!1590 = !{!"721"}
!1591 = !{!"722"}
!1592 = !DILocation(line: 26, column: 17, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 26, column: 13)
!1594 = !{!"723"}
!1595 = !{!"724"}
!1596 = !DILocation(line: 26, column: 26, scope: !1593)
!1597 = !{!"725"}
!1598 = !DILocation(line: 26, column: 13, scope: !1527)
!1599 = !{!"726"}
!1600 = !DILocation(line: 27, column: 13, scope: !1593)
!1601 = !{!"727"}
!1602 = !DILocation(line: 28, column: 33, scope: !1527)
!1603 = !{!"728"}
!1604 = !DILocation(line: 28, column: 29, scope: !1527)
!1605 = !{!"729"}
!1606 = !DILocation(line: 28, column: 9, scope: !1527)
!1607 = !{!"730"}
!1608 = !DILocation(line: 29, column: 13, scope: !1527)
!1609 = !{!"731"}
!1610 = !DILocation(line: 29, column: 22, scope: !1527)
!1611 = !{!"732"}
!1612 = !DILocation(line: 30, column: 5, scope: !1527)
!1613 = !{!"733"}
!1614 = !{!"734"}
!1615 = !{!"735"}
!1616 = !{!"736"}
!1617 = !{!"737"}
!1618 = !DILocation(line: 33, column: 15, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 33, column: 9)
!1620 = !{!"738"}
!1621 = !DILocation(line: 33, column: 9, scope: !1502)
!1622 = !{!"739"}
!1623 = !DILocation(line: 34, column: 42, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 33, column: 39)
!1625 = !{!"740"}
!1626 = !DILocalVariable(name: "want", scope: !1624, file: !3, line: 34, type: !14)
!1627 = !DILocation(line: 0, scope: !1624)
!1628 = !{!"741"}
!1629 = !DILocation(line: 35, column: 9, scope: !1624)
!1630 = !{!"742"}
!1631 = !DILocation(line: 36, column: 11, scope: !1624)
!1632 = !{!"743"}
!1633 = !{!"744"}
!1634 = !DILocation(line: 37, column: 15, scope: !1624)
!1635 = !{!"745"}
!1636 = !{!"746"}
!1637 = !DILocation(line: 38, column: 5, scope: !1624)
!1638 = !{!"747"}
!1639 = !{!"748"}
!1640 = !{!"749"}
!1641 = !{!"750"}
!1642 = !{!"751"}
!1643 = !DILocation(line: 41, column: 9, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 41, column: 9)
!1645 = !{!"752"}
!1646 = !DILocation(line: 41, column: 9, scope: !1502)
!1647 = !{!"753"}
!1648 = !{!"754"}
!1649 = !DILocation(line: 42, column: 14, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 42, column: 9)
!1651 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 41, column: 16)
!1652 = !{!"755"}
!1653 = !DILocation(line: 0, scope: !1650)
!1654 = !{!"756"}
!1655 = !{!"757"}
!1656 = !DILocation(line: 42, column: 23, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 42, column: 9)
!1658 = !{!"758"}
!1659 = !DILocation(line: 42, column: 9, scope: !1650)
!1660 = !{!"759"}
!1661 = !DILocation(line: 43, column: 44, scope: !1657)
!1662 = !{!"760"}
!1663 = !{!"761"}
!1664 = !DILocation(line: 43, column: 17, scope: !1657)
!1665 = !{!"762"}
!1666 = !DILocation(line: 43, column: 28, scope: !1657)
!1667 = !{!"763"}
!1668 = !{!"764"}
!1669 = !DILocation(line: 43, column: 37, scope: !1657)
!1670 = !{!"765"}
!1671 = !DILocation(line: 43, column: 13, scope: !1657)
!1672 = !{!"766"}
!1673 = !DILocation(line: 43, column: 42, scope: !1657)
!1674 = !{!"767"}
!1675 = !{!"768"}
!1676 = !DILocation(line: 42, column: 33, scope: !1657)
!1677 = !{!"769"}
!1678 = !{!"770"}
!1679 = !DILocation(line: 42, column: 9, scope: !1657)
!1680 = distinct !{!1680, !1659, !1681, !726}
!1681 = !DILocation(line: 43, column: 47, scope: !1650)
!1682 = !{!"771"}
!1683 = !DILocation(line: 44, column: 13, scope: !1651)
!1684 = !{!"772"}
!1685 = !DILocation(line: 44, column: 22, scope: !1651)
!1686 = !{!"773"}
!1687 = !{!"774"}
!1688 = !{!"775"}
!1689 = !DILocation(line: 45, column: 5, scope: !1651)
!1690 = !{!"776"}
!1691 = !DILocation(line: 46, column: 1, scope: !1502)
!1692 = !{!"777"}
!1693 = distinct !DISubprogram(name: "poly1305_init", scope: !22, file: !22, line: 47, type: !1694, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !6, !58}
!1696 = !DILocalVariable(name: "ctx", arg: 1, scope: !1693, file: !22, line: 47, type: !6)
!1697 = !DILocation(line: 0, scope: !1693)
!1698 = !{!"778"}
!1699 = !DILocalVariable(name: "key", arg: 2, scope: !1693, file: !22, line: 47, type: !58)
!1700 = !{!"779"}
!1701 = !DILocation(line: 48, column: 70, scope: !1693)
!1702 = !{!"780"}
!1703 = !DILocation(line: 48, column: 41, scope: !1693)
!1704 = !{!"781"}
!1705 = !DILocalVariable(name: "st", scope: !1693, file: !22, line: 48, type: !20)
!1706 = !{!"782"}
!1707 = !DILocation(line: 51, column: 29, scope: !1693)
!1708 = !{!"783"}
!1709 = !DILocation(line: 51, column: 21, scope: !1693)
!1710 = !{!"784"}
!1711 = !DILocation(line: 51, column: 44, scope: !1693)
!1712 = !{!"785"}
!1713 = !DILocation(line: 51, column: 13, scope: !1693)
!1714 = !{!"786"}
!1715 = !DILocation(line: 51, column: 9, scope: !1693)
!1716 = !{!"787"}
!1717 = !DILocation(line: 51, column: 18, scope: !1693)
!1718 = !{!"788"}
!1719 = !DILocation(line: 52, column: 29, scope: !1693)
!1720 = !{!"789"}
!1721 = !DILocation(line: 52, column: 21, scope: !1693)
!1722 = !{!"790"}
!1723 = !DILocation(line: 52, column: 38, scope: !1693)
!1724 = !{!"791"}
!1725 = !DILocation(line: 52, column: 44, scope: !1693)
!1726 = !{!"792"}
!1727 = !DILocation(line: 52, column: 13, scope: !1693)
!1728 = !{!"793"}
!1729 = !DILocation(line: 52, column: 9, scope: !1693)
!1730 = !{!"794"}
!1731 = !DILocation(line: 52, column: 18, scope: !1693)
!1732 = !{!"795"}
!1733 = !DILocation(line: 53, column: 29, scope: !1693)
!1734 = !{!"796"}
!1735 = !DILocation(line: 53, column: 21, scope: !1693)
!1736 = !{!"797"}
!1737 = !DILocation(line: 53, column: 38, scope: !1693)
!1738 = !{!"798"}
!1739 = !DILocation(line: 53, column: 44, scope: !1693)
!1740 = !{!"799"}
!1741 = !DILocation(line: 53, column: 13, scope: !1693)
!1742 = !{!"800"}
!1743 = !DILocation(line: 53, column: 9, scope: !1693)
!1744 = !{!"801"}
!1745 = !DILocation(line: 53, column: 18, scope: !1693)
!1746 = !{!"802"}
!1747 = !DILocation(line: 54, column: 29, scope: !1693)
!1748 = !{!"803"}
!1749 = !DILocation(line: 54, column: 21, scope: !1693)
!1750 = !{!"804"}
!1751 = !DILocation(line: 54, column: 38, scope: !1693)
!1752 = !{!"805"}
!1753 = !DILocation(line: 54, column: 44, scope: !1693)
!1754 = !{!"806"}
!1755 = !DILocation(line: 54, column: 13, scope: !1693)
!1756 = !{!"807"}
!1757 = !DILocation(line: 54, column: 9, scope: !1693)
!1758 = !{!"808"}
!1759 = !DILocation(line: 54, column: 18, scope: !1693)
!1760 = !{!"809"}
!1761 = !DILocation(line: 55, column: 29, scope: !1693)
!1762 = !{!"810"}
!1763 = !DILocation(line: 55, column: 21, scope: !1693)
!1764 = !{!"811"}
!1765 = !DILocation(line: 55, column: 38, scope: !1693)
!1766 = !{!"812"}
!1767 = !DILocation(line: 55, column: 44, scope: !1693)
!1768 = !{!"813"}
!1769 = !DILocation(line: 55, column: 13, scope: !1693)
!1770 = !{!"814"}
!1771 = !DILocation(line: 55, column: 9, scope: !1693)
!1772 = !{!"815"}
!1773 = !DILocation(line: 55, column: 18, scope: !1693)
!1774 = !{!"816"}
!1775 = !DILocation(line: 58, column: 13, scope: !1693)
!1776 = !{!"817"}
!1777 = !DILocation(line: 58, column: 9, scope: !1693)
!1778 = !{!"818"}
!1779 = !DILocation(line: 58, column: 18, scope: !1693)
!1780 = !{!"819"}
!1781 = !DILocation(line: 59, column: 13, scope: !1693)
!1782 = !{!"820"}
!1783 = !DILocation(line: 59, column: 9, scope: !1693)
!1784 = !{!"821"}
!1785 = !DILocation(line: 59, column: 18, scope: !1693)
!1786 = !{!"822"}
!1787 = !DILocation(line: 60, column: 13, scope: !1693)
!1788 = !{!"823"}
!1789 = !DILocation(line: 60, column: 9, scope: !1693)
!1790 = !{!"824"}
!1791 = !DILocation(line: 60, column: 18, scope: !1693)
!1792 = !{!"825"}
!1793 = !DILocation(line: 61, column: 13, scope: !1693)
!1794 = !{!"826"}
!1795 = !DILocation(line: 61, column: 9, scope: !1693)
!1796 = !{!"827"}
!1797 = !DILocation(line: 61, column: 18, scope: !1693)
!1798 = !{!"828"}
!1799 = !DILocation(line: 62, column: 13, scope: !1693)
!1800 = !{!"829"}
!1801 = !DILocation(line: 62, column: 9, scope: !1693)
!1802 = !{!"830"}
!1803 = !DILocation(line: 62, column: 18, scope: !1693)
!1804 = !{!"831"}
!1805 = !DILocation(line: 65, column: 30, scope: !1693)
!1806 = !{!"832"}
!1807 = !DILocation(line: 65, column: 22, scope: !1693)
!1808 = !{!"833"}
!1809 = !DILocation(line: 65, column: 13, scope: !1693)
!1810 = !{!"834"}
!1811 = !DILocation(line: 65, column: 9, scope: !1693)
!1812 = !{!"835"}
!1813 = !DILocation(line: 65, column: 20, scope: !1693)
!1814 = !{!"836"}
!1815 = !DILocation(line: 66, column: 30, scope: !1693)
!1816 = !{!"837"}
!1817 = !DILocation(line: 66, column: 22, scope: !1693)
!1818 = !{!"838"}
!1819 = !DILocation(line: 66, column: 13, scope: !1693)
!1820 = !{!"839"}
!1821 = !DILocation(line: 66, column: 9, scope: !1693)
!1822 = !{!"840"}
!1823 = !DILocation(line: 66, column: 20, scope: !1693)
!1824 = !{!"841"}
!1825 = !DILocation(line: 67, column: 30, scope: !1693)
!1826 = !{!"842"}
!1827 = !DILocation(line: 67, column: 22, scope: !1693)
!1828 = !{!"843"}
!1829 = !DILocation(line: 67, column: 13, scope: !1693)
!1830 = !{!"844"}
!1831 = !DILocation(line: 67, column: 9, scope: !1693)
!1832 = !{!"845"}
!1833 = !DILocation(line: 67, column: 20, scope: !1693)
!1834 = !{!"846"}
!1835 = !DILocation(line: 68, column: 30, scope: !1693)
!1836 = !{!"847"}
!1837 = !DILocation(line: 68, column: 22, scope: !1693)
!1838 = !{!"848"}
!1839 = !DILocation(line: 68, column: 13, scope: !1693)
!1840 = !{!"849"}
!1841 = !DILocation(line: 68, column: 9, scope: !1693)
!1842 = !{!"850"}
!1843 = !DILocation(line: 68, column: 20, scope: !1693)
!1844 = !{!"851"}
!1845 = !DILocation(line: 70, column: 13, scope: !1693)
!1846 = !{!"852"}
!1847 = !DILocation(line: 70, column: 22, scope: !1693)
!1848 = !{!"853"}
!1849 = !DILocation(line: 71, column: 13, scope: !1693)
!1850 = !{!"854"}
!1851 = !DILocation(line: 71, column: 19, scope: !1693)
!1852 = !{!"855"}
!1853 = !DILocation(line: 72, column: 1, scope: !1693)
!1854 = !{!"856"}
!1855 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_decrypt_wrapper", scope: !229, file: !229, line: 5, type: !1856, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !4)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!56, !57, !252, !57, !58, !58, !58, !58}
!1858 = !DILocalVariable(name: "m", arg: 1, scope: !1855, file: !229, line: 5, type: !57)
!1859 = !DILocation(line: 0, scope: !1855)
!1860 = !{!"857"}
!1861 = !DILocalVariable(name: "mlen_p", arg: 2, scope: !1855, file: !229, line: 6, type: !252)
!1862 = !{!"858"}
!1863 = !DILocalVariable(name: "nsec", arg: 3, scope: !1855, file: !229, line: 7, type: !57)
!1864 = !{!"859"}
!1865 = !DILocalVariable(name: "c", arg: 4, scope: !1855, file: !229, line: 8, type: !58)
!1866 = !{!"860"}
!1867 = !DILocalVariable(name: "ad", arg: 5, scope: !1855, file: !229, line: 9, type: !58)
!1868 = !{!"861"}
!1869 = !DILocalVariable(name: "npub", arg: 6, scope: !1855, file: !229, line: 10, type: !58)
!1870 = !{!"862"}
!1871 = !DILocalVariable(name: "k", arg: 7, scope: !1855, file: !229, line: 11, type: !58)
!1872 = !{!"863"}
!1873 = !DILocation(line: 14, column: 13, scope: !1855)
!1874 = !{!"864"}
!1875 = !DILocation(line: 14, column: 3, scope: !1855)
!1876 = !{!"865"}
!1877 = !DILocation(line: 15, column: 13, scope: !1855)
!1878 = !{!"866"}
!1879 = !DILocation(line: 15, column: 3, scope: !1855)
!1880 = !{!"867"}
!1881 = !DILocation(line: 16, column: 13, scope: !1855)
!1882 = !{!"868"}
!1883 = !DILocation(line: 16, column: 3, scope: !1855)
!1884 = !{!"869"}
!1885 = !DILocation(line: 17, column: 13, scope: !1855)
!1886 = !{!"870"}
!1887 = !DILocation(line: 17, column: 3, scope: !1855)
!1888 = !{!"871"}
!1889 = !DILocation(line: 18, column: 13, scope: !1855)
!1890 = !{!"872"}
!1891 = !DILocation(line: 18, column: 3, scope: !1855)
!1892 = !{!"873"}
!1893 = !DILocation(line: 19, column: 13, scope: !1855)
!1894 = !{!"874"}
!1895 = !DILocation(line: 19, column: 3, scope: !1855)
!1896 = !{!"875"}
!1897 = !DILocation(line: 20, column: 13, scope: !1855)
!1898 = !{!"876"}
!1899 = !DILocation(line: 20, column: 3, scope: !1855)
!1900 = !{!"877"}
!1901 = !DILocation(line: 23, column: 13, scope: !1855)
!1902 = !{!"878"}
!1903 = !DILocation(line: 23, column: 3, scope: !1855)
!1904 = !{!"879"}
!1905 = !DILocation(line: 24, column: 13, scope: !1855)
!1906 = !{!"880"}
!1907 = !DILocation(line: 24, column: 3, scope: !1855)
!1908 = !{!"881"}
!1909 = !DILocation(line: 25, column: 13, scope: !1855)
!1910 = !{!"882"}
!1911 = !DILocation(line: 25, column: 3, scope: !1855)
!1912 = !{!"883"}
!1913 = !DILocation(line: 30, column: 30, scope: !1855)
!1914 = !{!"884"}
!1915 = !DILocation(line: 30, column: 15, scope: !1855)
!1916 = !{!"885"}
!1917 = !DILocation(line: 30, column: 5, scope: !1855)
!1918 = !{!"886"}
!1919 = !DILocation(line: 32, column: 11, scope: !1855)
!1920 = !{!"887"}
!1921 = !DILocation(line: 32, column: 3, scope: !1855)
!1922 = !{!"888"}
!1923 = distinct !DISubprogram(name: "vfct_tmp", scope: !229, file: !229, line: 48, type: !1924, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !4)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !57, !252, !57, !58, !58, !58, !58}
!1926 = !DILocalVariable(name: "m", arg: 1, scope: !1923, file: !229, line: 48, type: !57)
!1927 = !DILocation(line: 0, scope: !1923)
!1928 = !{!"889"}
!1929 = !DILocalVariable(name: "mlen_p", arg: 2, scope: !1923, file: !229, line: 49, type: !252)
!1930 = !{!"890"}
!1931 = !DILocalVariable(name: "nsec", arg: 3, scope: !1923, file: !229, line: 50, type: !57)
!1932 = !{!"891"}
!1933 = !DILocalVariable(name: "c", arg: 4, scope: !1923, file: !229, line: 51, type: !58)
!1934 = !{!"892"}
!1935 = !DILocalVariable(name: "ad", arg: 5, scope: !1923, file: !229, line: 53, type: !58)
!1936 = !{!"893"}
!1937 = !DILocalVariable(name: "npub", arg: 6, scope: !1923, file: !229, line: 55, type: !58)
!1938 = !{!"894"}
!1939 = !DILocalVariable(name: "k", arg: 7, scope: !1923, file: !229, line: 56, type: !58)
!1940 = !{!"895"}
!1941 = !DILocation(line: 57, column: 3, scope: !1923)
!1942 = !{!"896"}
!1943 = !DILocation(line: 62, column: 1, scope: !1923)
!1944 = !{!"897"}
!1945 = distinct !DISubprogram(name: "crypto_aead_chacha20poly1305_decrypt_wrapper_t", scope: !229, file: !229, line: 65, type: !138, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !228, retainedNodes: !4)
!1946 = !{!"898"}
!1947 = !{!"899"}
!1948 = !{!"900"}
!1949 = !{!"901"}
!1950 = !{!"902"}
!1951 = !{!"903"}
!1952 = !{!"904"}
!1953 = !DILocalVariable(name: "dout", scope: !1945, file: !229, line: 67, type: !17)
!1954 = !DILocation(line: 67, column: 17, scope: !1945)
!1955 = !{!"905"}
!1956 = !DILocation(line: 67, column: 24, scope: !1945)
!1957 = !{!"906"}
!1958 = !{!"907"}
!1959 = !DILocalVariable(name: "din", scope: !1945, file: !229, line: 68, type: !17)
!1960 = !DILocation(line: 68, column: 19, scope: !1945)
!1961 = !{!"908"}
!1962 = !DILocation(line: 68, column: 25, scope: !1945)
!1963 = !{!"909"}
!1964 = !{!"910"}
!1965 = !DILocalVariable(name: "dk", scope: !1945, file: !229, line: 69, type: !59)
!1966 = !DILocation(line: 69, column: 21, scope: !1945)
!1967 = !{!"911"}
!1968 = !DILocation(line: 69, column: 26, scope: !1945)
!1969 = !{!"912"}
!1970 = !{!"913"}
!1971 = !DILocalVariable(name: "dc", scope: !1945, file: !229, line: 70, type: !59)
!1972 = !DILocation(line: 70, column: 22, scope: !1945)
!1973 = !{!"914"}
!1974 = !DILocation(line: 70, column: 27, scope: !1945)
!1975 = !{!"915"}
!1976 = !{!"916"}
!1977 = !DILocalVariable(name: "dsec", scope: !1945, file: !229, line: 71, type: !17)
!1978 = !DILocation(line: 71, column: 16, scope: !1945)
!1979 = !{!"917"}
!1980 = !DILocation(line: 71, column: 23, scope: !1945)
!1981 = !{!"918"}
!1982 = !{!"919"}
!1983 = !DILocalVariable(name: "dkk", scope: !1945, file: !229, line: 72, type: !59)
!1984 = !DILocation(line: 72, column: 23, scope: !1945)
!1985 = !{!"920"}
!1986 = !DILocation(line: 72, column: 29, scope: !1945)
!1987 = !{!"921"}
!1988 = !{!"922"}
!1989 = !DILocalVariable(name: "nsec", scope: !1945, file: !229, line: 74, type: !57)
!1990 = !DILocation(line: 0, scope: !1945)
!1991 = !{!"923"}
!1992 = !DILocalVariable(name: "c", scope: !1945, file: !229, line: 75, type: !57)
!1993 = !{!"924"}
!1994 = !DILocalVariable(name: "m", scope: !1945, file: !229, line: 76, type: !57)
!1995 = !{!"925"}
!1996 = !DILocalVariable(name: "ad", scope: !1945, file: !229, line: 77, type: !58)
!1997 = !{!"926"}
!1998 = !DILocalVariable(name: "npub", scope: !1945, file: !229, line: 78, type: !58)
!1999 = !{!"927"}
!2000 = !DILocalVariable(name: "clen", scope: !1945, file: !229, line: 79, type: !14)
!2001 = !DILocation(line: 79, column: 20, scope: !1945)
!2002 = !{!"928"}
!2003 = !DILocation(line: 79, column: 27, scope: !1945)
!2004 = !{!"929"}
!2005 = !{!"930"}
!2006 = !{!"931"}
!2007 = !DILocalVariable(name: "mlen_p", scope: !1945, file: !229, line: 80, type: !252)
!2008 = !{!"932"}
!2009 = !DILocalVariable(name: "k", scope: !1945, file: !229, line: 81, type: !58)
!2010 = !{!"933"}
!2011 = !DILocation(line: 82, column: 3, scope: !1945)
!2012 = !{!"934"}
!2013 = !DILocation(line: 87, column: 1, scope: !1945)
!2014 = !{!"935"}
!2015 = distinct !DISubprogram(name: "crypto_onetimeauth_statebytes", scope: !231, file: !231, line: 5, type: !594, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !4)
!2016 = !DILocation(line: 7, column: 5, scope: !2015)
!2017 = !{!"936"}
!2018 = distinct !DISubprogram(name: "crypto_onetimeauth_bytes", scope: !231, file: !231, line: 11, type: !594, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !4)
!2019 = !DILocation(line: 13, column: 5, scope: !2018)
!2020 = !{!"937"}
!2021 = distinct !DISubprogram(name: "crypto_onetimeauth_keybytes", scope: !231, file: !231, line: 17, type: !594, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !4)
!2022 = !DILocation(line: 19, column: 5, scope: !2021)
!2023 = !{!"938"}
!2024 = distinct !DISubprogram(name: "crypto_onetimeauth", scope: !231, file: !231, line: 23, type: !54, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !4)
!2025 = !DILocalVariable(name: "out", arg: 1, scope: !2024, file: !231, line: 23, type: !57)
!2026 = !DILocation(line: 0, scope: !2024)
!2027 = !{!"939"}
!2028 = !DILocalVariable(name: "in", arg: 2, scope: !2024, file: !231, line: 23, type: !58)
!2029 = !{!"940"}
!2030 = !DILocalVariable(name: "inlen", arg: 3, scope: !2024, file: !231, line: 24, type: !14)
!2031 = !{!"941"}
!2032 = !DILocalVariable(name: "k", arg: 4, scope: !2024, file: !231, line: 24, type: !58)
!2033 = !{!"942"}
!2034 = !DILocation(line: 26, column: 12, scope: !2024)
!2035 = !{!"943"}
!2036 = !DILocation(line: 26, column: 5, scope: !2024)
!2037 = !{!"944"}
!2038 = distinct !DISubprogram(name: "crypto_onetimeauth_verify", scope: !231, file: !231, line: 30, type: !62, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !4)
!2039 = !DILocalVariable(name: "h", arg: 1, scope: !2038, file: !231, line: 30, type: !58)
!2040 = !DILocation(line: 0, scope: !2038)
!2041 = !{!"945"}
!2042 = !DILocalVariable(name: "in", arg: 2, scope: !2038, file: !231, line: 30, type: !58)
!2043 = !{!"946"}
!2044 = !DILocalVariable(name: "inlen", arg: 3, scope: !2038, file: !231, line: 31, type: !14)
!2045 = !{!"947"}
!2046 = !DILocalVariable(name: "k", arg: 4, scope: !2038, file: !231, line: 31, type: !58)
!2047 = !{!"948"}
!2048 = !DILocation(line: 33, column: 12, scope: !2038)
!2049 = !{!"949"}
!2050 = !DILocation(line: 33, column: 5, scope: !2038)
!2051 = !{!"950"}
!2052 = distinct !DISubprogram(name: "crypto_onetimeauth_init", scope: !231, file: !231, line: 37, type: !2053, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !4)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!56, !2055, !58}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_state", file: !2057, line: 16, baseType: !234)
!2057 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/crypto_onetimeauth.h", directory: "/home/luwei/bech-back/libsodium/Aead")
!2058 = !DILocalVariable(name: "state", arg: 1, scope: !2052, file: !231, line: 37, type: !2055)
!2059 = !DILocation(line: 0, scope: !2052)
!2060 = !{!"951"}
!2061 = !DILocalVariable(name: "key", arg: 2, scope: !2052, file: !231, line: 38, type: !58)
!2062 = !{!"952"}
!2063 = !DILocation(line: 40, column: 12, scope: !2052)
!2064 = !{!"953"}
!2065 = !DILocation(line: 40, column: 5, scope: !2052)
!2066 = !{!"954"}
!2067 = distinct !DISubprogram(name: "crypto_onetimeauth_update", scope: !231, file: !231, line: 45, type: !2068, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !4)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!56, !2055, !58, !14}
!2070 = !DILocalVariable(name: "state", arg: 1, scope: !2067, file: !231, line: 45, type: !2055)
!2071 = !DILocation(line: 0, scope: !2067)
!2072 = !{!"955"}
!2073 = !DILocalVariable(name: "in", arg: 2, scope: !2067, file: !231, line: 46, type: !58)
!2074 = !{!"956"}
!2075 = !DILocalVariable(name: "inlen", arg: 3, scope: !2067, file: !231, line: 47, type: !14)
!2076 = !{!"957"}
!2077 = !DILocation(line: 49, column: 12, scope: !2067)
!2078 = !{!"958"}
!2079 = !DILocation(line: 49, column: 5, scope: !2067)
!2080 = !{!"959"}
!2081 = distinct !DISubprogram(name: "crypto_onetimeauth_final", scope: !231, file: !231, line: 54, type: !2082, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !4)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!56, !2055, !57}
!2084 = !DILocalVariable(name: "state", arg: 1, scope: !2081, file: !231, line: 54, type: !2055)
!2085 = !DILocation(line: 0, scope: !2081)
!2086 = !{!"960"}
!2087 = !DILocalVariable(name: "out", arg: 2, scope: !2081, file: !231, line: 55, type: !57)
!2088 = !{!"961"}
!2089 = !DILocation(line: 57, column: 12, scope: !2081)
!2090 = !{!"962"}
!2091 = !DILocation(line: 57, column: 5, scope: !2081)
!2092 = !{!"963"}
!2093 = distinct !DISubprogram(name: "crypto_onetimeauth_primitive", scope: !231, file: !231, line: 62, type: !47, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !230, retainedNodes: !4)
!2094 = !{!"964"}
!2095 = !DILocation(line: 64, column: 5, scope: !2093)
!2096 = !{!"965"}
!2097 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_set_implementation", scope: !83, file: !83, line: 10, type: !2098, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !4)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!56, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2101 = !DILocalVariable(name: "impl", arg: 1, scope: !2097, file: !83, line: 10, type: !2100)
!2102 = !DILocation(line: 0, scope: !2097)
!2103 = !{!"966"}
!2104 = !DILocation(line: 12, column: 20, scope: !2097)
!2105 = !{!"967"}
!2106 = !DILocation(line: 14, column: 5, scope: !2097)
!2107 = !{!"968"}
!2108 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_implementation_name", scope: !83, file: !83, line: 18, type: !47, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !4)
!2109 = !DILocation(line: 20, column: 12, scope: !2108)
!2110 = !{!"969"}
!2111 = !DILocation(line: 20, column: 28, scope: !2108)
!2112 = !{!"970"}
!2113 = !{!"971"}
!2114 = !{!"972"}
!2115 = !DILocation(line: 20, column: 5, scope: !2108)
!2116 = !{!"973"}
!2117 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305", scope: !83, file: !83, line: 25, type: !54, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !4)
!2118 = !DILocalVariable(name: "out", arg: 1, scope: !2117, file: !83, line: 25, type: !57)
!2119 = !DILocation(line: 0, scope: !2117)
!2120 = !{!"974"}
!2121 = !DILocalVariable(name: "in", arg: 2, scope: !2117, file: !83, line: 25, type: !58)
!2122 = !{!"975"}
!2123 = !DILocalVariable(name: "inlen", arg: 3, scope: !2117, file: !83, line: 26, type: !14)
!2124 = !{!"976"}
!2125 = !DILocalVariable(name: "k", arg: 4, scope: !2117, file: !83, line: 26, type: !58)
!2126 = !{!"977"}
!2127 = !DILocation(line: 28, column: 12, scope: !2117)
!2128 = !{!"978"}
!2129 = !DILocation(line: 28, column: 28, scope: !2117)
!2130 = !{!"979"}
!2131 = !{!"980"}
!2132 = !{!"981"}
!2133 = !DILocation(line: 28, column: 5, scope: !2117)
!2134 = !{!"982"}
!2135 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_verify", scope: !83, file: !83, line: 32, type: !62, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !4)
!2136 = !DILocalVariable(name: "h", arg: 1, scope: !2135, file: !83, line: 32, type: !58)
!2137 = !DILocation(line: 0, scope: !2135)
!2138 = !{!"983"}
!2139 = !DILocalVariable(name: "in", arg: 2, scope: !2135, file: !83, line: 33, type: !58)
!2140 = !{!"984"}
!2141 = !DILocalVariable(name: "inlen", arg: 3, scope: !2135, file: !83, line: 34, type: !14)
!2142 = !{!"985"}
!2143 = !DILocalVariable(name: "k", arg: 4, scope: !2135, file: !83, line: 35, type: !58)
!2144 = !{!"986"}
!2145 = !DILocation(line: 37, column: 12, scope: !2135)
!2146 = !{!"987"}
!2147 = !DILocation(line: 37, column: 28, scope: !2135)
!2148 = !{!"988"}
!2149 = !{!"989"}
!2150 = !{!"990"}
!2151 = !DILocation(line: 37, column: 5, scope: !2135)
!2152 = !{!"991"}
!2153 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_init", scope: !83, file: !83, line: 41, type: !95, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !4)
!2154 = !DILocalVariable(name: "state", arg: 1, scope: !2153, file: !83, line: 41, type: !97)
!2155 = !DILocation(line: 0, scope: !2153)
!2156 = !{!"992"}
!2157 = !DILocalVariable(name: "key", arg: 2, scope: !2153, file: !83, line: 42, type: !58)
!2158 = !{!"993"}
!2159 = !DILocation(line: 44, column: 12, scope: !2153)
!2160 = !{!"994"}
!2161 = !DILocation(line: 44, column: 28, scope: !2153)
!2162 = !{!"995"}
!2163 = !{!"996"}
!2164 = !{!"997"}
!2165 = !DILocation(line: 44, column: 5, scope: !2153)
!2166 = !{!"998"}
!2167 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_update", scope: !83, file: !83, line: 48, type: !105, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !4)
!2168 = !DILocalVariable(name: "state", arg: 1, scope: !2167, file: !83, line: 48, type: !97)
!2169 = !DILocation(line: 0, scope: !2167)
!2170 = !{!"999"}
!2171 = !DILocalVariable(name: "in", arg: 2, scope: !2167, file: !83, line: 49, type: !58)
!2172 = !{!"1000"}
!2173 = !DILocalVariable(name: "inlen", arg: 3, scope: !2167, file: !83, line: 50, type: !14)
!2174 = !{!"1001"}
!2175 = !DILocation(line: 52, column: 12, scope: !2167)
!2176 = !{!"1002"}
!2177 = !DILocation(line: 52, column: 28, scope: !2167)
!2178 = !{!"1003"}
!2179 = !{!"1004"}
!2180 = !{!"1005"}
!2181 = !DILocation(line: 52, column: 5, scope: !2167)
!2182 = !{!"1006"}
!2183 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_final", scope: !83, file: !83, line: 56, type: !109, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !4)
!2184 = !DILocalVariable(name: "state", arg: 1, scope: !2183, file: !83, line: 56, type: !97)
!2185 = !DILocation(line: 0, scope: !2183)
!2186 = !{!"1007"}
!2187 = !DILocalVariable(name: "out", arg: 2, scope: !2183, file: !83, line: 57, type: !57)
!2188 = !{!"1008"}
!2189 = !DILocation(line: 59, column: 12, scope: !2183)
!2190 = !{!"1009"}
!2191 = !DILocation(line: 59, column: 28, scope: !2183)
!2192 = !{!"1010"}
!2193 = !{!"1011"}
!2194 = !{!"1012"}
!2195 = !DILocation(line: 59, column: 5, scope: !2183)
!2196 = !{!"1013"}
!2197 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !115, file: !115, line: 23, type: !2198, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !4)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!56, !2200}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!2201 = !DILocalVariable(name: "impl", arg: 1, scope: !2197, file: !115, line: 23, type: !2200)
!2202 = !DILocation(line: 0, scope: !2197)
!2203 = !{!"1014"}
!2204 = !DILocation(line: 25, column: 20, scope: !2197)
!2205 = !{!"1015"}
!2206 = !DILocation(line: 27, column: 5, scope: !2197)
!2207 = !{!"1016"}
!2208 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !115, file: !115, line: 31, type: !47, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !4)
!2209 = !DILocation(line: 34, column: 12, scope: !2208)
!2210 = !{!"1017"}
!2211 = !DILocation(line: 34, column: 28, scope: !2208)
!2212 = !{!"1018"}
!2213 = !{!"1019"}
!2214 = !{!"1020"}
!2215 = !DILocation(line: 34, column: 5, scope: !2208)
!2216 = !{!"1021"}
!2217 = distinct !DISubprogram(name: "randombytes_random", scope: !115, file: !115, line: 41, type: !134, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !4)
!2218 = !DILocation(line: 44, column: 12, scope: !2217)
!2219 = !{!"1022"}
!2220 = !DILocation(line: 44, column: 28, scope: !2217)
!2221 = !{!"1023"}
!2222 = !{!"1024"}
!2223 = !{!"1025"}
!2224 = !DILocation(line: 44, column: 5, scope: !2217)
!2225 = !{!"1026"}
!2226 = distinct !DISubprogram(name: "randombytes_stir", scope: !115, file: !115, line: 53, type: !138, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !4)
!2227 = !DILocation(line: 56, column: 9, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2226, file: !115, line: 56, column: 9)
!2229 = !{!"1027"}
!2230 = !DILocation(line: 56, column: 24, scope: !2228)
!2231 = !{!"1028"}
!2232 = !DILocation(line: 56, column: 32, scope: !2228)
!2233 = !{!"1029"}
!2234 = !DILocation(line: 56, column: 35, scope: !2228)
!2235 = !{!"1030"}
!2236 = !DILocation(line: 56, column: 51, scope: !2228)
!2237 = !{!"1031"}
!2238 = !{!"1032"}
!2239 = !DILocation(line: 56, column: 56, scope: !2228)
!2240 = !{!"1033"}
!2241 = !DILocation(line: 56, column: 9, scope: !2226)
!2242 = !{!"1034"}
!2243 = !DILocation(line: 57, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2228, file: !115, line: 56, column: 65)
!2245 = !{!"1035"}
!2246 = !DILocation(line: 57, column: 25, scope: !2244)
!2247 = !{!"1036"}
!2248 = !{!"1037"}
!2249 = !{!"1038"}
!2250 = !DILocation(line: 58, column: 5, scope: !2244)
!2251 = !{!"1039"}
!2252 = !DILocation(line: 87, column: 1, scope: !2226)
!2253 = !{!"1040"}
!2254 = distinct !DISubprogram(name: "randombytes_uniform", scope: !115, file: !115, line: 94, type: !142, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !4)
!2255 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !2254, file: !115, line: 94, type: !144)
!2256 = !DILocation(line: 0, scope: !2254)
!2257 = !{!"1041"}
!2258 = !DILocation(line: 99, column: 9, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2254, file: !115, line: 99, column: 9)
!2260 = !{!"1042"}
!2261 = !DILocation(line: 99, column: 24, scope: !2259)
!2262 = !{!"1043"}
!2263 = !DILocation(line: 99, column: 32, scope: !2259)
!2264 = !{!"1044"}
!2265 = !DILocation(line: 99, column: 35, scope: !2259)
!2266 = !{!"1045"}
!2267 = !DILocation(line: 99, column: 51, scope: !2259)
!2268 = !{!"1046"}
!2269 = !{!"1047"}
!2270 = !DILocation(line: 99, column: 59, scope: !2259)
!2271 = !{!"1048"}
!2272 = !DILocation(line: 99, column: 9, scope: !2254)
!2273 = !{!"1049"}
!2274 = !DILocation(line: 100, column: 16, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2259, file: !115, line: 99, column: 68)
!2276 = !{!"1050"}
!2277 = !DILocation(line: 100, column: 32, scope: !2275)
!2278 = !{!"1051"}
!2279 = !{!"1052"}
!2280 = !{!"1053"}
!2281 = !DILocation(line: 100, column: 9, scope: !2275)
!2282 = !{!"1054"}
!2283 = !DILocation(line: 102, column: 21, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2254, file: !115, line: 102, column: 9)
!2285 = !{!"1055"}
!2286 = !DILocation(line: 102, column: 9, scope: !2254)
!2287 = !{!"1056"}
!2288 = !DILocation(line: 103, column: 9, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2284, file: !115, line: 102, column: 26)
!2290 = !{!"1057"}
!2291 = !DILocation(line: 105, column: 23, scope: !2254)
!2292 = !{!"1058"}
!2293 = !DILocation(line: 105, column: 36, scope: !2254)
!2294 = !{!"1059"}
!2295 = !DILocalVariable(name: "min", scope: !2254, file: !115, line: 96, type: !117)
!2296 = !{!"1060"}
!2297 = !DILocation(line: 106, column: 5, scope: !2254)
!2298 = !{!"1061"}
!2299 = !DILocation(line: 107, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2254, file: !115, line: 106, column: 8)
!2301 = !{!"1062"}
!2302 = !DILocalVariable(name: "r", scope: !2254, file: !115, line: 97, type: !117)
!2303 = !{!"1063"}
!2304 = !DILocation(line: 108, column: 5, scope: !2300)
!2305 = !{!"1064"}
!2306 = !DILocation(line: 108, column: 16, scope: !2254)
!2307 = !{!"1065"}
!2308 = distinct !{!2308, !2297, !2309, !726}
!2309 = !DILocation(line: 108, column: 21, scope: !2254)
!2310 = !{!"1066"}
!2311 = !DILocation(line: 110, column: 14, scope: !2254)
!2312 = !{!"1067"}
!2313 = !DILocation(line: 110, column: 5, scope: !2254)
!2314 = !{!"1068"}
!2315 = !{!"1069"}
!2316 = !DILocation(line: 111, column: 1, scope: !2254)
!2317 = !{!"1070"}
!2318 = distinct !DISubprogram(name: "randombytes_buf", scope: !115, file: !115, line: 114, type: !147, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !4)
!2319 = !DILocalVariable(name: "buf", arg: 1, scope: !2318, file: !115, line: 114, type: !149)
!2320 = !DILocation(line: 0, scope: !2318)
!2321 = !{!"1071"}
!2322 = !DILocalVariable(name: "size", arg: 2, scope: !2318, file: !115, line: 114, type: !150)
!2323 = !{!"1072"}
!2324 = !DILocation(line: 117, column: 14, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2318, file: !115, line: 117, column: 9)
!2326 = !{!"1073"}
!2327 = !DILocation(line: 117, column: 9, scope: !2318)
!2328 = !{!"1074"}
!2329 = !DILocation(line: 118, column: 9, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2325, file: !115, line: 117, column: 29)
!2331 = !{!"1075"}
!2332 = !DILocation(line: 118, column: 25, scope: !2330)
!2333 = !{!"1076"}
!2334 = !{!"1077"}
!2335 = !{!"1078"}
!2336 = !DILocation(line: 119, column: 5, scope: !2330)
!2337 = !{!"1079"}
!2338 = !DILocation(line: 128, column: 1, scope: !2318)
!2339 = !{!"1080"}
!2340 = distinct !DISubprogram(name: "randombytes_close", scope: !115, file: !115, line: 131, type: !153, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !4)
!2341 = !DILocation(line: 133, column: 9, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2340, file: !115, line: 133, column: 9)
!2343 = !{!"1081"}
!2344 = !DILocation(line: 133, column: 24, scope: !2342)
!2345 = !{!"1082"}
!2346 = !DILocation(line: 133, column: 32, scope: !2342)
!2347 = !{!"1083"}
!2348 = !DILocation(line: 133, column: 35, scope: !2342)
!2349 = !{!"1084"}
!2350 = !DILocation(line: 133, column: 51, scope: !2342)
!2351 = !{!"1085"}
!2352 = !{!"1086"}
!2353 = !DILocation(line: 133, column: 57, scope: !2342)
!2354 = !{!"1087"}
!2355 = !DILocation(line: 133, column: 9, scope: !2340)
!2356 = !{!"1088"}
!2357 = !DILocation(line: 134, column: 16, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2342, file: !115, line: 133, column: 66)
!2359 = !{!"1089"}
!2360 = !DILocation(line: 134, column: 32, scope: !2358)
!2361 = !{!"1090"}
!2362 = !{!"1091"}
!2363 = !{!"1092"}
!2364 = !DILocation(line: 134, column: 9, scope: !2358)
!2365 = !{!"1093"}
!2366 = !DILocation(line: 136, column: 5, scope: !2340)
!2367 = !{!"1094"}
!2368 = !DILocation(line: 0, scope: !2340)
!2369 = !{!"1095"}
!2370 = !DILocation(line: 137, column: 1, scope: !2340)
!2371 = !{!"1096"}
!2372 = distinct !DISubprogram(name: "randombytes", scope: !115, file: !115, line: 140, type: !2373, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !4)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !2375, !2376}
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!2377 = !DILocalVariable(name: "buf", arg: 1, scope: !2372, file: !115, line: 140, type: !2375)
!2378 = !DILocation(line: 0, scope: !2372)
!2379 = !{!"1097"}
!2380 = !DILocalVariable(name: "buf_len", arg: 2, scope: !2372, file: !115, line: 140, type: !2376)
!2381 = !{!"1098"}
!2382 = !DILocation(line: 142, column: 5, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !115, line: 142, column: 5)
!2384 = distinct !DILexicalBlock(scope: !2372, file: !115, line: 142, column: 5)
!2385 = !{!"1099"}
!2386 = !DILocation(line: 142, column: 5, scope: !2384)
!2387 = !{!"1100"}
!2388 = !{!"1101"}
!2389 = !{!"1102"}
!2390 = !{!"1103"}
!2391 = !{!"1104"}
!2392 = !{!"1105"}
!2393 = !{!"1106"}
!2394 = !DILocation(line: 143, column: 5, scope: !2372)
!2395 = !{!"1107"}
!2396 = !DILocation(line: 144, column: 1, scope: !2372)
!2397 = !{!"1108"}
!2398 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !162, file: !162, line: 292, type: !47, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !161, retainedNodes: !4)
!2399 = !{!"1109"}
!2400 = !DILocation(line: 294, column: 5, scope: !2398)
!2401 = !{!"1110"}
!2402 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !162, file: !162, line: 249, type: !134, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !161, retainedNodes: !4)
!2403 = !{!"1111"}
!2404 = !DILocalVariable(name: "r", scope: !2402, file: !162, line: 251, type: !117)
!2405 = !DILocation(line: 251, column: 14, scope: !2402)
!2406 = !{!"1112"}
!2407 = !DILocation(line: 253, column: 31, scope: !2402)
!2408 = !{!"1113"}
!2409 = !DILocation(line: 253, column: 5, scope: !2402)
!2410 = !{!"1114"}
!2411 = !DILocation(line: 255, column: 12, scope: !2402)
!2412 = !{!"1115"}
!2413 = !DILocation(line: 255, column: 5, scope: !2402)
!2414 = !{!"1116"}
!2415 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !162, file: !162, line: 206, type: !138, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !161, retainedNodes: !4)
!2416 = !{!"1117"}
!2417 = !DILocation(line: 208, column: 16, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2415, file: !162, line: 208, column: 9)
!2419 = !{!"1118"}
!2420 = !DILocation(line: 208, column: 28, scope: !2418)
!2421 = !{!"1119"}
!2422 = !DILocation(line: 208, column: 9, scope: !2415)
!2423 = !{!"1120"}
!2424 = !DILocation(line: 209, column: 9, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2418, file: !162, line: 208, column: 34)
!2426 = !{!"1121"}
!2427 = !{!"1122"}
!2428 = !DILocation(line: 210, column: 28, scope: !2425)
!2429 = !{!"1123"}
!2430 = !DILocation(line: 211, column: 5, scope: !2425)
!2431 = !{!"1124"}
!2432 = !DILocation(line: 212, column: 1, scope: !2415)
!2433 = !{!"1125"}
!2434 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !162, file: !162, line: 259, type: !147, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !161, retainedNodes: !4)
!2435 = !DILocalVariable(name: "buf", arg: 1, scope: !2434, file: !162, line: 259, type: !149)
!2436 = !DILocation(line: 0, scope: !2434)
!2437 = !{!"1126"}
!2438 = !DILocalVariable(name: "size", arg: 2, scope: !2434, file: !162, line: 259, type: !150)
!2439 = !{!"1127"}
!2440 = !DILocation(line: 261, column: 5, scope: !2434)
!2441 = !{!"1128"}
!2442 = !{!"1129"}
!2443 = !DILocation(line: 268, column: 16, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2434, file: !162, line: 268, column: 9)
!2445 = !{!"1130"}
!2446 = !DILocation(line: 268, column: 36, scope: !2444)
!2447 = !{!"1131"}
!2448 = !DILocation(line: 268, column: 9, scope: !2434)
!2449 = !{!"1132"}
!2450 = !DILocation(line: 269, column: 13, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !162, line: 269, column: 13)
!2452 = distinct !DILexicalBlock(scope: !2444, file: !162, line: 268, column: 42)
!2453 = !{!"1133"}
!2454 = !DILocation(line: 269, column: 52, scope: !2451)
!2455 = !{!"1134"}
!2456 = !DILocation(line: 269, column: 13, scope: !2452)
!2457 = !{!"1135"}
!2458 = !DILocation(line: 270, column: 13, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2451, file: !162, line: 269, column: 58)
!2460 = !{!"1136"}
!2461 = !{!"1137"}
!2462 = !DILocation(line: 272, column: 9, scope: !2452)
!2463 = !{!"1138"}
!2464 = !{!"1139"}
!2465 = !DILocation(line: 275, column: 16, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2434, file: !162, line: 275, column: 9)
!2467 = !{!"1140"}
!2468 = !DILocation(line: 275, column: 38, scope: !2466)
!2469 = !{!"1141"}
!2470 = !DILocation(line: 275, column: 44, scope: !2466)
!2471 = !{!"1142"}
!2472 = !{!"1143"}
!2473 = !DILocation(line: 276, column: 26, scope: !2466)
!2474 = !{!"1144"}
!2475 = !DILocation(line: 276, column: 9, scope: !2466)
!2476 = !{!"1145"}
!2477 = !DILocation(line: 276, column: 60, scope: !2466)
!2478 = !{!"1146"}
!2479 = !DILocation(line: 275, column: 9, scope: !2434)
!2480 = !{!"1147"}
!2481 = !DILocation(line: 277, column: 9, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2466, file: !162, line: 276, column: 79)
!2483 = !{!"1148"}
!2484 = !{!"1149"}
!2485 = !DILocation(line: 287, column: 1, scope: !2434)
!2486 = !{!"1150"}
!2487 = !{!"1151"}
!2488 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !162, file: !162, line: 223, type: !153, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !161, retainedNodes: !4)
!2489 = !DILocalVariable(name: "ret", scope: !2488, file: !162, line: 225, type: !56)
!2490 = !DILocation(line: 0, scope: !2488)
!2491 = !{!"1152"}
!2492 = !{!"1153"}
!2493 = !DILocation(line: 228, column: 16, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2488, file: !162, line: 228, column: 9)
!2495 = !{!"1154"}
!2496 = !DILocation(line: 228, column: 38, scope: !2494)
!2497 = !{!"1155"}
!2498 = !DILocation(line: 228, column: 44, scope: !2494)
!2499 = !{!"1156"}
!2500 = !{!"1157"}
!2501 = !DILocation(line: 229, column: 22, scope: !2494)
!2502 = !{!"1158"}
!2503 = !DILocation(line: 229, column: 9, scope: !2494)
!2504 = !{!"1159"}
!2505 = !DILocation(line: 229, column: 45, scope: !2494)
!2506 = !{!"1160"}
!2507 = !DILocation(line: 228, column: 9, scope: !2488)
!2508 = !{!"1161"}
!2509 = !{!"1162"}
!2510 = !DILocation(line: 230, column: 38, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2494, file: !162, line: 229, column: 51)
!2512 = !{!"1163"}
!2513 = !{!"1164"}
!2514 = !DILocation(line: 231, column: 28, scope: !2511)
!2515 = !{!"1165"}
!2516 = !{!"1166"}
!2517 = !DILocation(line: 233, column: 5, scope: !2511)
!2518 = !{!"1167"}
!2519 = !{!"1168"}
!2520 = !{!"1169"}
!2521 = !{!"1170"}
!2522 = !DILocation(line: 235, column: 16, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2488, file: !162, line: 235, column: 9)
!2524 = !{!"1171"}
!2525 = !DILocation(line: 235, column: 36, scope: !2523)
!2526 = !{!"1172"}
!2527 = !DILocation(line: 235, column: 9, scope: !2488)
!2528 = !{!"1173"}
!2529 = !{!"1174"}
!2530 = !DILocation(line: 237, column: 5, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2523, file: !162, line: 235, column: 42)
!2532 = !{!"1175"}
!2533 = !{!"1176"}
!2534 = !{!"1177"}
!2535 = !DILocation(line: 245, column: 5, scope: !2488)
!2536 = !{!"1178"}
!2537 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !162, file: !162, line: 215, type: !138, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !161, retainedNodes: !4)
!2538 = !{!"1179"}
!2539 = !DILocation(line: 217, column: 16, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !162, line: 217, column: 9)
!2541 = !{!"1180"}
!2542 = !DILocation(line: 217, column: 28, scope: !2540)
!2543 = !{!"1181"}
!2544 = !DILocation(line: 217, column: 9, scope: !2537)
!2545 = !{!"1182"}
!2546 = !DILocation(line: 218, column: 9, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2540, file: !162, line: 217, column: 34)
!2548 = !{!"1183"}
!2549 = !DILocation(line: 219, column: 5, scope: !2547)
!2550 = !{!"1184"}
!2551 = !DILocation(line: 220, column: 1, scope: !2537)
!2552 = !{!"1185"}
!2553 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !162, file: !162, line: 151, type: !2554, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !161, retainedNodes: !4)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!56, !149, !122}
!2556 = !DILocalVariable(name: "buf_", arg: 1, scope: !2553, file: !162, line: 151, type: !149)
!2557 = !DILocation(line: 0, scope: !2553)
!2558 = !{!"1186"}
!2559 = !DILocalVariable(name: "size", arg: 2, scope: !2553, file: !162, line: 151, type: !122)
!2560 = !{!"1187"}
!2561 = !DILocalVariable(name: "buf", scope: !2553, file: !162, line: 153, type: !57)
!2562 = !{!"1188"}
!2563 = !DILocalVariable(name: "chunk_size", scope: !2553, file: !162, line: 154, type: !122)
!2564 = !{!"1189"}
!2565 = !DILocation(line: 156, column: 5, scope: !2553)
!2566 = !{!"1190"}
!2567 = !{!"1191"}
!2568 = !{!"1192"}
!2569 = !{!"1193"}
!2570 = !{!"1194"}
!2571 = !{!"1195"}
!2572 = !{!"1196"}
!2573 = !DILocation(line: 157, column: 18, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !162, line: 157, column: 13)
!2575 = distinct !DILexicalBlock(scope: !2553, file: !162, line: 156, column: 8)
!2576 = !{!"1197"}
!2577 = !DILocation(line: 157, column: 13, scope: !2575)
!2578 = !{!"1198"}
!2579 = !{!"1199"}
!2580 = !DILocation(line: 159, column: 13, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !162, line: 159, column: 13)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !162, line: 159, column: 13)
!2583 = distinct !DILexicalBlock(scope: !2574, file: !162, line: 157, column: 32)
!2584 = !{!"1200"}
!2585 = !DILocation(line: 159, column: 13, scope: !2582)
!2586 = !{!"1201"}
!2587 = !{!"1202"}
!2588 = !{!"1203"}
!2589 = !{!"1204"}
!2590 = !{!"1205"}
!2591 = !{!"1206"}
!2592 = !{!"1207"}
!2593 = !DILocation(line: 160, column: 9, scope: !2583)
!2594 = !{!"1208"}
!2595 = !{!"1209"}
!2596 = !{!"1210"}
!2597 = !DILocation(line: 161, column: 13, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2575, file: !162, line: 161, column: 13)
!2599 = !{!"1211"}
!2600 = !DILocation(line: 161, column: 59, scope: !2598)
!2601 = !{!"1212"}
!2602 = !DILocation(line: 161, column: 13, scope: !2575)
!2603 = !{!"1213"}
!2604 = !DILocation(line: 162, column: 13, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2598, file: !162, line: 161, column: 65)
!2606 = !{!"1214"}
!2607 = !DILocation(line: 164, column: 14, scope: !2575)
!2608 = !{!"1215"}
!2609 = !{!"1216"}
!2610 = !DILocation(line: 165, column: 13, scope: !2575)
!2611 = !{!"1217"}
!2612 = !{!"1218"}
!2613 = !DILocation(line: 166, column: 5, scope: !2575)
!2614 = !{!"1219"}
!2615 = !DILocation(line: 166, column: 19, scope: !2553)
!2616 = !{!"1220"}
!2617 = distinct !{!2617, !2565, !2618, !726}
!2618 = !DILocation(line: 166, column: 32, scope: !2553)
!2619 = !{!"1221"}
!2620 = !DILocation(line: 168, column: 5, scope: !2553)
!2621 = !{!"1222"}
!2622 = !{!"1223"}
!2623 = !DILocation(line: 169, column: 1, scope: !2553)
!2624 = !{!"1224"}
!2625 = distinct !DISubprogram(name: "safe_read", scope: !162, file: !162, line: 77, type: !2626, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !161, retainedNodes: !4)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!164, !2628, !149, !122}
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!2629 = !DILocalVariable(name: "fd", arg: 1, scope: !2625, file: !162, line: 77, type: !2628)
!2630 = !DILocation(line: 0, scope: !2625)
!2631 = !{!"1225"}
!2632 = !DILocalVariable(name: "buf_", arg: 2, scope: !2625, file: !162, line: 77, type: !149)
!2633 = !{!"1226"}
!2634 = !DILocalVariable(name: "size", arg: 3, scope: !2625, file: !162, line: 77, type: !122)
!2635 = !{!"1227"}
!2636 = !DILocalVariable(name: "buf", scope: !2625, file: !162, line: 79, type: !57)
!2637 = !{!"1228"}
!2638 = !DILocation(line: 82, column: 5, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !162, line: 82, column: 5)
!2640 = distinct !DILexicalBlock(scope: !2625, file: !162, line: 82, column: 5)
!2641 = !{!"1229"}
!2642 = !DILocation(line: 82, column: 5, scope: !2640)
!2643 = !{!"1230"}
!2644 = !{!"1231"}
!2645 = !{!"1232"}
!2646 = !{!"1233"}
!2647 = !{!"1234"}
!2648 = !{!"1235"}
!2649 = !{!"1236"}
!2650 = !DILocation(line: 83, column: 5, scope: !2625)
!2651 = !{!"1237"}
!2652 = !{!"1238"}
!2653 = !{!"1239"}
!2654 = !{!"1240"}
!2655 = !{!"1241"}
!2656 = !DILocation(line: 84, column: 9, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2625, file: !162, line: 83, column: 8)
!2658 = !{!"1242"}
!2659 = !DILocation(line: 84, column: 26, scope: !2657)
!2660 = !{!"1243"}
!2661 = !DILocalVariable(name: "readnb", scope: !2625, file: !162, line: 80, type: !164)
!2662 = !{!"1244"}
!2663 = !DILocation(line: 84, column: 47, scope: !2657)
!2664 = !{!"1245"}
!2665 = !DILocation(line: 84, column: 61, scope: !2657)
!2666 = !{!"1246"}
!2667 = !DILocation(line: 85, column: 17, scope: !2657)
!2668 = !{!"1247"}
!2669 = !{!"1248"}
!2670 = !DILocation(line: 85, column: 23, scope: !2657)
!2671 = !{!"1249"}
!2672 = !DILocation(line: 85, column: 32, scope: !2657)
!2673 = !{!"1250"}
!2674 = !DILocation(line: 85, column: 35, scope: !2657)
!2675 = !{!"1251"}
!2676 = !{!"1252"}
!2677 = !DILocation(line: 85, column: 41, scope: !2657)
!2678 = !{!"1253"}
!2679 = !{!"1254"}
!2680 = !{!"1255"}
!2681 = !{!"1256"}
!2682 = !DILocation(line: 0, scope: !2657)
!2683 = !{!"1257"}
!2684 = !{!"1258"}
!2685 = distinct !{!2685, !2656, !2686, !726}
!2686 = !DILocation(line: 85, column: 52, scope: !2657)
!2687 = !{!"1259"}
!2688 = !DILocation(line: 86, column: 20, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2657, file: !162, line: 86, column: 13)
!2690 = !{!"1260"}
!2691 = !DILocation(line: 86, column: 13, scope: !2657)
!2692 = !{!"1261"}
!2693 = !DILocation(line: 87, column: 13, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !162, line: 86, column: 35)
!2695 = !{!"1262"}
!2696 = !DILocation(line: 89, column: 20, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2657, file: !162, line: 89, column: 13)
!2698 = !{!"1263"}
!2699 = !DILocation(line: 89, column: 13, scope: !2657)
!2700 = !{!"1264"}
!2701 = !DILocation(line: 90, column: 13, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2697, file: !162, line: 89, column: 36)
!2703 = !{!"1265"}
!2704 = !DILocation(line: 92, column: 14, scope: !2657)
!2705 = !{!"1266"}
!2706 = !{!"1267"}
!2707 = !DILocation(line: 93, column: 13, scope: !2657)
!2708 = !{!"1268"}
!2709 = !{!"1269"}
!2710 = !DILocation(line: 94, column: 5, scope: !2657)
!2711 = !{!"1270"}
!2712 = !DILocation(line: 94, column: 19, scope: !2625)
!2713 = !{!"1271"}
!2714 = distinct !{!2714, !2650, !2715, !726}
!2715 = !DILocation(line: 94, column: 32, scope: !2625)
!2716 = !{!"1272"}
!2717 = !{!"1273"}
!2718 = !{!"1274"}
!2719 = !DILocation(line: 96, column: 27, scope: !2625)
!2720 = !{!"1275"}
!2721 = !{!"1276"}
!2722 = !{!"1277"}
!2723 = !DILocation(line: 96, column: 5, scope: !2625)
!2724 = !{!"1278"}
!2725 = !{!"1279"}
!2726 = !DILocation(line: 97, column: 1, scope: !2625)
!2727 = !{!"1280"}
!2728 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !162, file: !162, line: 138, type: !2729, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !161, retainedNodes: !4)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!56, !149, !150}
!2731 = !DILocalVariable(name: "buf", arg: 1, scope: !2728, file: !162, line: 138, type: !149)
!2732 = !DILocation(line: 0, scope: !2728)
!2733 = !{!"1281"}
!2734 = !DILocalVariable(name: "size", arg: 2, scope: !2728, file: !162, line: 138, type: !150)
!2735 = !{!"1282"}
!2736 = !DILocation(line: 142, column: 5, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !162, line: 142, column: 5)
!2738 = distinct !DILexicalBlock(scope: !2728, file: !162, line: 142, column: 5)
!2739 = !{!"1283"}
!2740 = !DILocation(line: 142, column: 5, scope: !2738)
!2741 = !{!"1284"}
!2742 = !{!"1285"}
!2743 = !{!"1286"}
!2744 = !{!"1287"}
!2745 = !{!"1288"}
!2746 = !{!"1289"}
!2747 = !{!"1290"}
!2748 = !DILocation(line: 143, column: 5, scope: !2728)
!2749 = !{!"1291"}
!2750 = !DILocation(line: 144, column: 46, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2728, file: !162, line: 143, column: 8)
!2752 = !{!"1292"}
!2753 = !DILocation(line: 144, column: 18, scope: !2751)
!2754 = !{!"1293"}
!2755 = !{!"1294"}
!2756 = !DILocalVariable(name: "readnb", scope: !2728, file: !162, line: 140, type: !56)
!2757 = !{!"1295"}
!2758 = !DILocation(line: 145, column: 5, scope: !2751)
!2759 = !{!"1296"}
!2760 = !DILocation(line: 145, column: 21, scope: !2728)
!2761 = !{!"1297"}
!2762 = !DILocation(line: 145, column: 25, scope: !2728)
!2763 = !{!"1298"}
!2764 = !DILocation(line: 145, column: 29, scope: !2728)
!2765 = !{!"1299"}
!2766 = !{!"1300"}
!2767 = !DILocation(line: 145, column: 35, scope: !2728)
!2768 = !{!"1301"}
!2769 = !DILocation(line: 145, column: 44, scope: !2728)
!2770 = !{!"1302"}
!2771 = !DILocation(line: 145, column: 47, scope: !2728)
!2772 = !{!"1303"}
!2773 = !{!"1304"}
!2774 = !DILocation(line: 145, column: 53, scope: !2728)
!2775 = !{!"1305"}
!2776 = !{!"1306"}
!2777 = !{!"1307"}
!2778 = !{!"1308"}
!2779 = !{!"1309"}
!2780 = distinct !{!2780, !2748, !2781, !726}
!2781 = !DILocation(line: 145, column: 63, scope: !2728)
!2782 = !{!"1310"}
!2783 = !DILocation(line: 147, column: 23, scope: !2728)
!2784 = !{!"1311"}
!2785 = !DILocation(line: 147, column: 20, scope: !2728)
!2786 = !{!"1312"}
!2787 = !{!"1313"}
!2788 = !DILocation(line: 147, column: 35, scope: !2728)
!2789 = !{!"1314"}
!2790 = !DILocation(line: 147, column: 5, scope: !2728)
!2791 = !{!"1315"}
!2792 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !162, file: !162, line: 173, type: !138, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !161, retainedNodes: !4)
!2793 = !{!"1316"}
!2794 = !DILocation(line: 175, column: 32, scope: !2792)
!2795 = !{!"1317"}
!2796 = !{!"1318"}
!2797 = !DILocalVariable(name: "errno_save", scope: !2792, file: !162, line: 175, type: !2628)
!2798 = !DILocation(line: 0, scope: !2792)
!2799 = !{!"1319"}
!2800 = !DILocalVariable(name: "fodder", scope: !2801, file: !162, line: 179, type: !37)
!2801 = distinct !DILexicalBlock(scope: !2792, file: !162, line: 178, column: 5)
!2802 = !DILocation(line: 179, column: 16, scope: !2801)
!2803 = !{!"1320"}
!2804 = !DILocation(line: 181, column: 34, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2801, file: !162, line: 181, column: 6)
!2806 = !{!"1321"}
!2807 = !DILocation(line: 181, column: 6, scope: !2805)
!2808 = !{!"1322"}
!2809 = !DILocation(line: 181, column: 57, scope: !2805)
!2810 = !{!"1323"}
!2811 = !DILocation(line: 181, column: 6, scope: !2801)
!2812 = !{!"1324"}
!2813 = !{!"1325"}
!2814 = !DILocation(line: 182, column: 33, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2805, file: !162, line: 181, column: 63)
!2816 = !{!"1326"}
!2817 = !DILocation(line: 183, column: 6, scope: !2815)
!2818 = !{!"1327"}
!2819 = !DILocation(line: 183, column: 12, scope: !2815)
!2820 = !{!"1328"}
!2821 = !DILocation(line: 184, column: 6, scope: !2815)
!2822 = !{!"1329"}
!2823 = !{!"1330"}
!2824 = !DILocation(line: 186, column: 29, scope: !2801)
!2825 = !{!"1331"}
!2826 = !DILocation(line: 191, column: 10, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2792, file: !162, line: 190, column: 9)
!2828 = !{!"1332"}
!2829 = !{!"1333"}
!2830 = !DILocation(line: 190, column: 39, scope: !2827)
!2831 = !{!"1334"}
!2832 = !DILocation(line: 191, column: 51, scope: !2827)
!2833 = !{!"1335"}
!2834 = !DILocation(line: 190, column: 9, scope: !2792)
!2835 = !{!"1336"}
!2836 = !DILocation(line: 192, column: 9, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2827, file: !162, line: 191, column: 58)
!2838 = !{!"1337"}
!2839 = !{!"1338"}
!2840 = !DILocation(line: 194, column: 5, scope: !2792)
!2841 = !{!"1339"}
!2842 = !DILocation(line: 194, column: 11, scope: !2792)
!2843 = !{!"1340"}
!2844 = !DILocation(line: 195, column: 1, scope: !2792)
!2845 = !{!"1341"}
!2846 = !{!"1342"}
!2847 = !{!"1343"}
!2848 = !DILocalVariable(name: "st", scope: !179, file: !162, line: 105, type: !2849)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2850, line: 46, size: 1152, elements: !2851)
!2850 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2851 = !{!2852, !2854, !2856, !2858, !2860, !2862, !2864, !2865, !2866, !2868, !2870, !2872, !2880, !2881, !2882}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2849, file: !2850, line: 48, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !120, line: 145, baseType: !27)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2849, file: !2850, line: 53, baseType: !2855, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !120, line: 148, baseType: !27)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2849, file: !2850, line: 61, baseType: !2857, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !120, line: 151, baseType: !27)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2849, file: !2850, line: 62, baseType: !2859, size: 32, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !120, line: 150, baseType: !121)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2849, file: !2850, line: 64, baseType: !2861, size: 32, offset: 224)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !120, line: 146, baseType: !121)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2849, file: !2850, line: 65, baseType: !2863, size: 32, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !120, line: 147, baseType: !121)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2849, file: !2850, line: 67, baseType: !56, size: 32, offset: 288)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2849, file: !2850, line: 69, baseType: !2853, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2849, file: !2850, line: 74, baseType: !2867, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !120, line: 152, baseType: !167)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2849, file: !2850, line: 78, baseType: !2869, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !120, line: 174, baseType: !167)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2849, file: !2850, line: 80, baseType: !2871, size: 64, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !120, line: 179, baseType: !167)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2849, file: !2850, line: 91, baseType: !2873, size: 128, offset: 576)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2874, line: 10, size: 128, elements: !2875)
!2874 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2875 = !{!2876, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2873, file: !2874, line: 12, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !120, line: 160, baseType: !167)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2873, file: !2874, line: 16, baseType: !2879, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !120, line: 196, baseType: !167)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2849, file: !2850, line: 92, baseType: !2873, size: 128, offset: 704)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2849, file: !2850, line: 93, baseType: !2873, size: 128, offset: 832)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2849, file: !2850, line: 106, baseType: !2883, size: 192, offset: 960)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2879, size: 192, elements: !181)
!2884 = !DILocation(line: 105, column: 24, scope: !179)
!2885 = !{!"1344"}
!2886 = !DILocalVariable(name: "device", scope: !179, file: !162, line: 112, type: !2887)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!2888 = !DILocation(line: 0, scope: !179)
!2889 = !{!"1345"}
!2890 = !{!"1346"}
!2891 = !DILocation(line: 115, column: 5, scope: !179)
!2892 = !{!"1347"}
!2893 = !{!"1348"}
!2894 = !{!"1349"}
!2895 = !DILocation(line: 116, column: 19, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !179, file: !162, line: 115, column: 8)
!2897 = !{!"1350"}
!2898 = !DILocation(line: 116, column: 14, scope: !2896)
!2899 = !{!"1351"}
!2900 = !DILocalVariable(name: "fd", scope: !179, file: !162, line: 113, type: !56)
!2901 = !{!"1352"}
!2902 = !DILocation(line: 117, column: 16, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2896, file: !162, line: 117, column: 13)
!2904 = !{!"1353"}
!2905 = !DILocation(line: 117, column: 13, scope: !2896)
!2906 = !{!"1354"}
!2907 = !DILocation(line: 118, column: 17, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !162, line: 118, column: 17)
!2909 = distinct !DILexicalBlock(scope: !2903, file: !162, line: 117, column: 23)
!2910 = !{!"1355"}
!2911 = !DILocation(line: 118, column: 32, scope: !2908)
!2912 = !{!"1356"}
!2913 = !DILocation(line: 118, column: 37, scope: !2908)
!2914 = !{!"1357"}
!2915 = !DILocation(line: 118, column: 40, scope: !2908)
!2916 = !{!"1358"}
!2917 = !{!"1359"}
!2918 = !{!"1360"}
!2919 = !{!"1361"}
!2920 = !DILocation(line: 118, column: 17, scope: !2909)
!2921 = !{!"1362"}
!2922 = !DILocation(line: 120, column: 43, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2908, file: !162, line: 118, column: 61)
!2924 = !{!"1363"}
!2925 = !DILocation(line: 120, column: 62, scope: !2923)
!2926 = !{!"1364"}
!2927 = !DILocation(line: 120, column: 24, scope: !2923)
!2928 = !{!"1365"}
!2929 = !DILocation(line: 122, column: 17, scope: !2923)
!2930 = !{!"1366"}
!2931 = !DILocation(line: 124, column: 20, scope: !2909)
!2932 = !{!"1367"}
!2933 = !DILocation(line: 125, column: 9, scope: !2909)
!2934 = !{!"1368"}
!2935 = !DILocation(line: 125, column: 20, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2903, file: !162, line: 125, column: 20)
!2937 = !{!"1369"}
!2938 = !{!"1370"}
!2939 = !DILocation(line: 125, column: 26, scope: !2936)
!2940 = !{!"1371"}
!2941 = !DILocation(line: 125, column: 20, scope: !2903)
!2942 = !{!"1372"}
!2943 = !DILocation(line: 126, column: 13, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2936, file: !162, line: 125, column: 36)
!2945 = !{!"1373"}
!2946 = !{!"1374"}
!2947 = !DILocation(line: 128, column: 15, scope: !2896)
!2948 = !{!"1375"}
!2949 = !{!"1376"}
!2950 = !DILocation(line: 129, column: 5, scope: !2896)
!2951 = !{!"1377"}
!2952 = !{!"1378"}
!2953 = !{!"1379"}
!2954 = !DILocation(line: 129, column: 14, scope: !179)
!2955 = !{!"1380"}
!2956 = !DILocation(line: 129, column: 22, scope: !179)
!2957 = !{!"1381"}
!2958 = distinct !{!2958, !2891, !2959, !726}
!2959 = !DILocation(line: 129, column: 29, scope: !179)
!2960 = !{!"1382"}
!2961 = !DILocation(line: 131, column: 5, scope: !179)
!2962 = !{!"1383"}
!2963 = !DILocation(line: 131, column: 11, scope: !179)
!2964 = !{!"1384"}
!2965 = !DILocation(line: 132, column: 5, scope: !179)
!2966 = !{!"1385"}
!2967 = !{!"1386"}
!2968 = !DILocation(line: 134, column: 1, scope: !179)
!2969 = !{!"1387"}
!2970 = distinct !DISubprogram(name: "crypto_stream_chacha20_keybytes", scope: !240, file: !240, line: 5, type: !594, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!2971 = !DILocation(line: 6, column: 5, scope: !2970)
!2972 = !{!"1388"}
!2973 = distinct !DISubprogram(name: "crypto_stream_chacha20_noncebytes", scope: !240, file: !240, line: 10, type: !594, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!2974 = !DILocation(line: 11, column: 5, scope: !2973)
!2975 = !{!"1389"}
!2976 = distinct !DISubprogram(name: "crypto_stream_chacha20", scope: !240, file: !240, line: 15, type: !2977, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!56, !57, !14, !58, !58}
!2979 = !DILocalVariable(name: "c", arg: 1, scope: !2976, file: !240, line: 15, type: !57)
!2980 = !DILocation(line: 0, scope: !2976)
!2981 = !{!"1390"}
!2982 = !DILocalVariable(name: "clen", arg: 2, scope: !2976, file: !240, line: 15, type: !14)
!2983 = !{!"1391"}
!2984 = !DILocalVariable(name: "n", arg: 3, scope: !2976, file: !240, line: 16, type: !58)
!2985 = !{!"1392"}
!2986 = !DILocalVariable(name: "k", arg: 4, scope: !2976, file: !240, line: 16, type: !58)
!2987 = !{!"1393"}
!2988 = !DILocation(line: 18, column: 12, scope: !2976)
!2989 = !{!"1394"}
!2990 = !DILocation(line: 18, column: 5, scope: !2976)
!2991 = !{!"1395"}
!2992 = distinct !DISubprogram(name: "crypto_stream_chacha20_xor_ic", scope: !240, file: !240, line: 22, type: !2993, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!56, !57, !58, !14, !58, !2995, !58}
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !118, line: 27, baseType: !2996)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !120, line: 45, baseType: !27)
!2997 = !DILocalVariable(name: "c", arg: 1, scope: !2992, file: !240, line: 22, type: !57)
!2998 = !DILocation(line: 0, scope: !2992)
!2999 = !{!"1396"}
!3000 = !DILocalVariable(name: "m", arg: 2, scope: !2992, file: !240, line: 22, type: !58)
!3001 = !{!"1397"}
!3002 = !DILocalVariable(name: "mlen", arg: 3, scope: !2992, file: !240, line: 23, type: !14)
!3003 = !{!"1398"}
!3004 = !DILocalVariable(name: "n", arg: 4, scope: !2992, file: !240, line: 24, type: !58)
!3005 = !{!"1399"}
!3006 = !DILocalVariable(name: "ic", arg: 5, scope: !2992, file: !240, line: 24, type: !2995)
!3007 = !{!"1400"}
!3008 = !DILocalVariable(name: "k", arg: 6, scope: !2992, file: !240, line: 25, type: !58)
!3009 = !{!"1401"}
!3010 = !DILocation(line: 27, column: 12, scope: !2992)
!3011 = !{!"1402"}
!3012 = !DILocation(line: 27, column: 5, scope: !2992)
!3013 = !{!"1403"}
!3014 = distinct !DISubprogram(name: "crypto_stream_chacha20_xor", scope: !240, file: !240, line: 31, type: !3015, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !239, retainedNodes: !4)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!56, !57, !58, !14, !58, !58}
!3017 = !DILocalVariable(name: "c", arg: 1, scope: !3014, file: !240, line: 31, type: !57)
!3018 = !DILocation(line: 0, scope: !3014)
!3019 = !{!"1404"}
!3020 = !DILocalVariable(name: "m", arg: 2, scope: !3014, file: !240, line: 31, type: !58)
!3021 = !{!"1405"}
!3022 = !DILocalVariable(name: "mlen", arg: 3, scope: !3014, file: !240, line: 32, type: !14)
!3023 = !{!"1406"}
!3024 = !DILocalVariable(name: "n", arg: 4, scope: !3014, file: !240, line: 32, type: !58)
!3025 = !{!"1407"}
!3026 = !DILocalVariable(name: "k", arg: 5, scope: !3014, file: !240, line: 33, type: !58)
!3027 = !{!"1408"}
!3028 = !DILocation(line: 35, column: 12, scope: !3014)
!3029 = !{!"1409"}
!3030 = !DILocation(line: 35, column: 5, scope: !3014)
!3031 = !{!"1410"}
!3032 = distinct !DISubprogram(name: "crypto_stream_chacha20_ref", scope: !207, file: !207, line: 233, type: !2977, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !206, retainedNodes: !4)
!3033 = !{!"1411"}
!3034 = !DILocalVariable(name: "c", arg: 1, scope: !3032, file: !207, line: 233, type: !57)
!3035 = !DILocation(line: 0, scope: !3032)
!3036 = !{!"1412"}
!3037 = !DILocalVariable(name: "clen", arg: 2, scope: !3032, file: !207, line: 233, type: !14)
!3038 = !{!"1413"}
!3039 = !DILocalVariable(name: "n", arg: 3, scope: !3032, file: !207, line: 234, type: !58)
!3040 = !{!"1414"}
!3041 = !DILocalVariable(name: "k", arg: 4, scope: !3032, file: !207, line: 234, type: !58)
!3042 = !{!"1415"}
!3043 = !DILocalVariable(name: "ctx", scope: !3032, file: !207, line: 236, type: !3044)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chacha_ctx", file: !207, line: 17, size: 512, elements: !3045)
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !3044, file: !207, line: 18, baseType: !3047, size: 512)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 512, elements: !38)
!3048 = !DILocation(line: 236, column: 23, scope: !3032)
!3049 = !{!"1416"}
!3050 = !DILocation(line: 238, column: 10, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3032, file: !207, line: 238, column: 9)
!3052 = !{!"1417"}
!3053 = !DILocation(line: 238, column: 9, scope: !3032)
!3054 = !{!"1418"}
!3055 = !DILocation(line: 239, column: 9, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3051, file: !207, line: 238, column: 16)
!3057 = !{!"1419"}
!3058 = !DILocation(line: 242, column: 5, scope: !3032)
!3059 = !{!"1420"}
!3060 = !DILocation(line: 243, column: 5, scope: !3032)
!3061 = !{!"1421"}
!3062 = !DILocation(line: 244, column: 5, scope: !3032)
!3063 = !{!"1422"}
!3064 = !DILocation(line: 245, column: 5, scope: !3032)
!3065 = !{!"1423"}
!3066 = !DILocation(line: 246, column: 20, scope: !3032)
!3067 = !{!"1424"}
!3068 = !DILocation(line: 246, column: 5, scope: !3032)
!3069 = !{!"1425"}
!3070 = !DILocation(line: 248, column: 5, scope: !3032)
!3071 = !{!"1426"}
!3072 = !DILocation(line: 249, column: 1, scope: !3032)
!3073 = !{!"1427"}
!3074 = distinct !DISubprogram(name: "chacha_keysetup", scope: !207, file: !207, line: 65, type: !3075, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !206, retainedNodes: !4)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !3077, !3079}
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "chacha_ctx", file: !207, line: 24, baseType: !3044)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!3081 = !DILocalVariable(name: "x", arg: 1, scope: !3074, file: !207, line: 65, type: !3077)
!3082 = !DILocation(line: 0, scope: !3074)
!3083 = !{!"1428"}
!3084 = !DILocalVariable(name: "k", arg: 2, scope: !3074, file: !207, line: 65, type: !3079)
!3085 = !{!"1429"}
!3086 = !DILocation(line: 69, column: 19, scope: !3074)
!3087 = !{!"1430"}
!3088 = !{!"PointTainted"}
!3089 = !{!"1431"}
!3090 = !{!"1432"}
!3091 = !{!"ValueTainted"}
!3092 = !{!"1433"}
!3093 = !{!"1434"}
!3094 = !{!"1435"}
!3095 = !{!"1436"}
!3096 = !{!"1437"}
!3097 = !{!"1438"}
!3098 = !{!"1439"}
!3099 = !{!"1440"}
!3100 = !{!"1441"}
!3101 = !{!"1442"}
!3102 = !{!"1443"}
!3103 = !{!"1444"}
!3104 = !{!"1445"}
!3105 = !{!"1446"}
!3106 = !{!"1447"}
!3107 = !{!"1448"}
!3108 = !{!"1449"}
!3109 = !{!"1450"}
!3110 = !{!"1451"}
!3111 = !DILocation(line: 69, column: 8, scope: !3074)
!3112 = !{!"1452"}
!3113 = !DILocation(line: 69, column: 5, scope: !3074)
!3114 = !{!"1453"}
!3115 = !DILocation(line: 69, column: 17, scope: !3074)
!3116 = !{!"1454"}
!3117 = !DILocation(line: 70, column: 19, scope: !3074)
!3118 = !{!"1455"}
!3119 = !{!"1456"}
!3120 = !{!"1457"}
!3121 = !{!"1458"}
!3122 = !{!"1459"}
!3123 = !{!"1460"}
!3124 = !{!"1461"}
!3125 = !{!"1462"}
!3126 = !{!"1463"}
!3127 = !{!"1464"}
!3128 = !{!"1465"}
!3129 = !{!"1466"}
!3130 = !{!"1467"}
!3131 = !{!"1468"}
!3132 = !{!"1469"}
!3133 = !{!"1470"}
!3134 = !{!"1471"}
!3135 = !{!"1472"}
!3136 = !{!"1473"}
!3137 = !{!"1474"}
!3138 = !{!"1475"}
!3139 = !{!"1476"}
!3140 = !DILocation(line: 70, column: 8, scope: !3074)
!3141 = !{!"1477"}
!3142 = !DILocation(line: 70, column: 5, scope: !3074)
!3143 = !{!"1478"}
!3144 = !DILocation(line: 70, column: 17, scope: !3074)
!3145 = !{!"1479"}
!3146 = !DILocation(line: 71, column: 19, scope: !3074)
!3147 = !{!"1480"}
!3148 = !{!"1481"}
!3149 = !{!"1482"}
!3150 = !{!"1483"}
!3151 = !{!"1484"}
!3152 = !{!"1485"}
!3153 = !{!"1486"}
!3154 = !{!"1487"}
!3155 = !{!"1488"}
!3156 = !{!"1489"}
!3157 = !{!"1490"}
!3158 = !{!"1491"}
!3159 = !{!"1492"}
!3160 = !{!"1493"}
!3161 = !{!"1494"}
!3162 = !{!"1495"}
!3163 = !{!"1496"}
!3164 = !{!"1497"}
!3165 = !{!"1498"}
!3166 = !{!"1499"}
!3167 = !{!"1500"}
!3168 = !{!"1501"}
!3169 = !DILocation(line: 71, column: 8, scope: !3074)
!3170 = !{!"1502"}
!3171 = !DILocation(line: 71, column: 5, scope: !3074)
!3172 = !{!"1503"}
!3173 = !DILocation(line: 71, column: 17, scope: !3074)
!3174 = !{!"1504"}
!3175 = !DILocation(line: 72, column: 19, scope: !3074)
!3176 = !{!"1505"}
!3177 = !{!"1506"}
!3178 = !{!"1507"}
!3179 = !{!"1508"}
!3180 = !{!"1509"}
!3181 = !{!"1510"}
!3182 = !{!"1511"}
!3183 = !{!"1512"}
!3184 = !{!"1513"}
!3185 = !{!"1514"}
!3186 = !{!"1515"}
!3187 = !{!"1516"}
!3188 = !{!"1517"}
!3189 = !{!"1518"}
!3190 = !{!"1519"}
!3191 = !{!"1520"}
!3192 = !{!"1521"}
!3193 = !{!"1522"}
!3194 = !{!"1523"}
!3195 = !{!"1524"}
!3196 = !{!"1525"}
!3197 = !{!"1526"}
!3198 = !DILocation(line: 72, column: 8, scope: !3074)
!3199 = !{!"1527"}
!3200 = !DILocation(line: 72, column: 5, scope: !3074)
!3201 = !{!"1528"}
!3202 = !DILocation(line: 72, column: 17, scope: !3074)
!3203 = !{!"1529"}
!3204 = !DILocation(line: 73, column: 7, scope: !3074)
!3205 = !{!"1530"}
!3206 = !{!"1531"}
!3207 = !DILocalVariable(name: "constants", scope: !3074, file: !207, line: 67, type: !58)
!3208 = !{!"1532"}
!3209 = !DILocation(line: 75, column: 19, scope: !3074)
!3210 = !{!"1533"}
!3211 = !{!"1534"}
!3212 = !{!"1535"}
!3213 = !{!"1536"}
!3214 = !{!"1537"}
!3215 = !{!"1538"}
!3216 = !{!"1539"}
!3217 = !{!"1540"}
!3218 = !{!"1541"}
!3219 = !{!"1542"}
!3220 = !{!"1543"}
!3221 = !{!"1544"}
!3222 = !{!"1545"}
!3223 = !{!"1546"}
!3224 = !{!"1547"}
!3225 = !{!"1548"}
!3226 = !{!"1549"}
!3227 = !{!"1550"}
!3228 = !{!"1551"}
!3229 = !{!"1552"}
!3230 = !{!"1553"}
!3231 = !{!"1554"}
!3232 = !DILocation(line: 75, column: 8, scope: !3074)
!3233 = !{!"1555"}
!3234 = !DILocation(line: 75, column: 5, scope: !3074)
!3235 = !{!"1556"}
!3236 = !DILocation(line: 75, column: 17, scope: !3074)
!3237 = !{!"1557"}
!3238 = !DILocation(line: 76, column: 19, scope: !3074)
!3239 = !{!"1558"}
!3240 = !{!"1559"}
!3241 = !{!"1560"}
!3242 = !{!"1561"}
!3243 = !{!"1562"}
!3244 = !{!"1563"}
!3245 = !{!"1564"}
!3246 = !{!"1565"}
!3247 = !{!"1566"}
!3248 = !{!"1567"}
!3249 = !{!"1568"}
!3250 = !{!"1569"}
!3251 = !{!"1570"}
!3252 = !{!"1571"}
!3253 = !{!"1572"}
!3254 = !{!"1573"}
!3255 = !{!"1574"}
!3256 = !{!"1575"}
!3257 = !{!"1576"}
!3258 = !{!"1577"}
!3259 = !{!"1578"}
!3260 = !{!"1579"}
!3261 = !DILocation(line: 76, column: 8, scope: !3074)
!3262 = !{!"1580"}
!3263 = !DILocation(line: 76, column: 5, scope: !3074)
!3264 = !{!"1581"}
!3265 = !DILocation(line: 76, column: 17, scope: !3074)
!3266 = !{!"1582"}
!3267 = !DILocation(line: 77, column: 20, scope: !3074)
!3268 = !{!"1583"}
!3269 = !{!"1584"}
!3270 = !{!"1585"}
!3271 = !{!"1586"}
!3272 = !{!"1587"}
!3273 = !{!"1588"}
!3274 = !{!"1589"}
!3275 = !{!"1590"}
!3276 = !{!"1591"}
!3277 = !{!"1592"}
!3278 = !{!"1593"}
!3279 = !{!"1594"}
!3280 = !{!"1595"}
!3281 = !{!"1596"}
!3282 = !{!"1597"}
!3283 = !{!"1598"}
!3284 = !{!"1599"}
!3285 = !{!"1600"}
!3286 = !{!"1601"}
!3287 = !{!"1602"}
!3288 = !{!"1603"}
!3289 = !{!"1604"}
!3290 = !DILocation(line: 77, column: 8, scope: !3074)
!3291 = !{!"1605"}
!3292 = !DILocation(line: 77, column: 5, scope: !3074)
!3293 = !{!"1606"}
!3294 = !DILocation(line: 77, column: 18, scope: !3074)
!3295 = !{!"1607"}
!3296 = !DILocation(line: 78, column: 20, scope: !3074)
!3297 = !{!"1608"}
!3298 = !{!"1609"}
!3299 = !{!"1610"}
!3300 = !{!"1611"}
!3301 = !{!"1612"}
!3302 = !{!"1613"}
!3303 = !{!"1614"}
!3304 = !{!"1615"}
!3305 = !{!"1616"}
!3306 = !{!"1617"}
!3307 = !{!"1618"}
!3308 = !{!"1619"}
!3309 = !{!"1620"}
!3310 = !{!"1621"}
!3311 = !{!"1622"}
!3312 = !{!"1623"}
!3313 = !{!"1624"}
!3314 = !{!"1625"}
!3315 = !{!"1626"}
!3316 = !{!"1627"}
!3317 = !{!"1628"}
!3318 = !{!"1629"}
!3319 = !DILocation(line: 78, column: 8, scope: !3074)
!3320 = !{!"1630"}
!3321 = !DILocation(line: 78, column: 5, scope: !3074)
!3322 = !{!"1631"}
!3323 = !DILocation(line: 78, column: 18, scope: !3074)
!3324 = !{!"1632"}
!3325 = !{!"1633"}
!3326 = !DILocation(line: 79, column: 19, scope: !3074)
!3327 = !{!"1634"}
!3328 = !{!"1635"}
!3329 = !{!"1636"}
!3330 = !{!"1637"}
!3331 = !{!"1638"}
!3332 = !{!"1639"}
!3333 = !{!"1640"}
!3334 = !{!"1641"}
!3335 = !{!"1642"}
!3336 = !{!"1643"}
!3337 = !{!"1644"}
!3338 = !{!"1645"}
!3339 = !{!"1646"}
!3340 = !{!"1647"}
!3341 = !{!"1648"}
!3342 = !{!"1649"}
!3343 = !{!"1650"}
!3344 = !{!"1651"}
!3345 = !{!"1652"}
!3346 = !{!"1653"}
!3347 = !{!"1654"}
!3348 = !{!"1655"}
!3349 = !{!"1656"}
!3350 = !{!"1657"}
!3351 = !{!"1658"}
!3352 = !DILocation(line: 79, column: 8, scope: !3074)
!3353 = !{!"1659"}
!3354 = !DILocation(line: 79, column: 5, scope: !3074)
!3355 = !{!"1660"}
!3356 = !DILocation(line: 79, column: 17, scope: !3074)
!3357 = !{!"1661"}
!3358 = !{!"1662"}
!3359 = !DILocation(line: 80, column: 19, scope: !3074)
!3360 = !{!"1663"}
!3361 = !{!"1664"}
!3362 = !{!"1665"}
!3363 = !{!"1666"}
!3364 = !{!"1667"}
!3365 = !{!"1668"}
!3366 = !{!"1669"}
!3367 = !{!"1670"}
!3368 = !{!"1671"}
!3369 = !{!"1672"}
!3370 = !{!"1673"}
!3371 = !{!"1674"}
!3372 = !{!"1675"}
!3373 = !{!"1676"}
!3374 = !{!"1677"}
!3375 = !{!"1678"}
!3376 = !{!"1679"}
!3377 = !{!"1680"}
!3378 = !{!"1681"}
!3379 = !{!"1682"}
!3380 = !{!"1683"}
!3381 = !{!"1684"}
!3382 = !{!"1685"}
!3383 = !{!"1686"}
!3384 = !{!"1687"}
!3385 = !DILocation(line: 80, column: 8, scope: !3074)
!3386 = !{!"1688"}
!3387 = !DILocation(line: 80, column: 5, scope: !3074)
!3388 = !{!"1689"}
!3389 = !DILocation(line: 80, column: 17, scope: !3074)
!3390 = !{!"1690"}
!3391 = !{!"1691"}
!3392 = !DILocation(line: 81, column: 19, scope: !3074)
!3393 = !{!"1692"}
!3394 = !{!"1693"}
!3395 = !{!"1694"}
!3396 = !{!"1695"}
!3397 = !{!"1696"}
!3398 = !{!"1697"}
!3399 = !{!"1698"}
!3400 = !{!"1699"}
!3401 = !{!"1700"}
!3402 = !{!"1701"}
!3403 = !{!"1702"}
!3404 = !{!"1703"}
!3405 = !{!"1704"}
!3406 = !{!"1705"}
!3407 = !{!"1706"}
!3408 = !{!"1707"}
!3409 = !{!"1708"}
!3410 = !{!"1709"}
!3411 = !{!"1710"}
!3412 = !{!"1711"}
!3413 = !{!"1712"}
!3414 = !{!"1713"}
!3415 = !{!"1714"}
!3416 = !{!"1715"}
!3417 = !{!"1716"}
!3418 = !DILocation(line: 81, column: 8, scope: !3074)
!3419 = !{!"1717"}
!3420 = !DILocation(line: 81, column: 5, scope: !3074)
!3421 = !{!"1718"}
!3422 = !DILocation(line: 81, column: 17, scope: !3074)
!3423 = !{!"1719"}
!3424 = !{!"1720"}
!3425 = !DILocation(line: 82, column: 19, scope: !3074)
!3426 = !{!"1721"}
!3427 = !{!"1722"}
!3428 = !{!"1723"}
!3429 = !{!"1724"}
!3430 = !{!"1725"}
!3431 = !{!"1726"}
!3432 = !{!"1727"}
!3433 = !{!"1728"}
!3434 = !{!"1729"}
!3435 = !{!"1730"}
!3436 = !{!"1731"}
!3437 = !{!"1732"}
!3438 = !{!"1733"}
!3439 = !{!"1734"}
!3440 = !{!"1735"}
!3441 = !{!"1736"}
!3442 = !{!"1737"}
!3443 = !{!"1738"}
!3444 = !{!"1739"}
!3445 = !{!"1740"}
!3446 = !{!"1741"}
!3447 = !{!"1742"}
!3448 = !{!"1743"}
!3449 = !{!"1744"}
!3450 = !{!"1745"}
!3451 = !DILocation(line: 82, column: 8, scope: !3074)
!3452 = !{!"1746"}
!3453 = !DILocation(line: 82, column: 5, scope: !3074)
!3454 = !{!"1747"}
!3455 = !DILocation(line: 82, column: 17, scope: !3074)
!3456 = !{!"1748"}
!3457 = !DILocation(line: 83, column: 1, scope: !3074)
!3458 = !{!"1749"}
!3459 = distinct !DISubprogram(name: "chacha_ivsetup", scope: !207, file: !207, line: 86, type: !3460, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !206, retainedNodes: !4)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{null, !3077, !3079, !3079}
!3462 = !DILocalVariable(name: "x", arg: 1, scope: !3459, file: !207, line: 86, type: !3077)
!3463 = !DILocation(line: 0, scope: !3459)
!3464 = !{!"1750"}
!3465 = !DILocalVariable(name: "iv", arg: 2, scope: !3459, file: !207, line: 86, type: !3079)
!3466 = !{!"1751"}
!3467 = !DILocalVariable(name: "counter", arg: 3, scope: !3459, file: !207, line: 86, type: !3079)
!3468 = !{!"1752"}
!3469 = !DILocation(line: 88, column: 28, scope: !3459)
!3470 = !{!"1753"}
!3471 = !DILocation(line: 88, column: 20, scope: !3459)
!3472 = !{!"1754"}
!3473 = !{!"1755"}
!3474 = !DILocation(line: 88, column: 42, scope: !3459)
!3475 = !{!"1756"}
!3476 = !{!"1757"}
!3477 = !{!"1758"}
!3478 = !{!"1759"}
!3479 = !{!"1760"}
!3480 = !{!"1761"}
!3481 = !{!"1762"}
!3482 = !{!"1763"}
!3483 = !{!"1764"}
!3484 = !{!"1765"}
!3485 = !{!"1766"}
!3486 = !{!"1767"}
!3487 = !{!"1768"}
!3488 = !{!"1769"}
!3489 = !{!"1770"}
!3490 = !{!"1771"}
!3491 = !{!"1772"}
!3492 = !{!"1773"}
!3493 = !{!"1774"}
!3494 = !{!"1775"}
!3495 = !{!"1776"}
!3496 = !{!"1777"}
!3497 = !{!"1778"}
!3498 = !{!"1779"}
!3499 = !DILocation(line: 88, column: 8, scope: !3459)
!3500 = !{!"1780"}
!3501 = !DILocation(line: 88, column: 5, scope: !3459)
!3502 = !{!"1781"}
!3503 = !DILocation(line: 88, column: 18, scope: !3459)
!3504 = !{!"1782"}
!3505 = !DILocation(line: 89, column: 28, scope: !3459)
!3506 = !{!"1783"}
!3507 = !DILocation(line: 89, column: 20, scope: !3459)
!3508 = !{!"1784"}
!3509 = !{!"1785"}
!3510 = !DILocation(line: 89, column: 42, scope: !3459)
!3511 = !{!"1786"}
!3512 = !{!"1787"}
!3513 = !{!"1788"}
!3514 = !{!"1789"}
!3515 = !{!"1790"}
!3516 = !{!"1791"}
!3517 = !{!"1792"}
!3518 = !{!"1793"}
!3519 = !{!"1794"}
!3520 = !{!"1795"}
!3521 = !{!"1796"}
!3522 = !{!"1797"}
!3523 = !{!"1798"}
!3524 = !{!"1799"}
!3525 = !{!"1800"}
!3526 = !{!"1801"}
!3527 = !{!"1802"}
!3528 = !{!"1803"}
!3529 = !{!"1804"}
!3530 = !{!"1805"}
!3531 = !{!"1806"}
!3532 = !{!"1807"}
!3533 = !{!"1808"}
!3534 = !{!"1809"}
!3535 = !DILocation(line: 89, column: 8, scope: !3459)
!3536 = !{!"1810"}
!3537 = !DILocation(line: 89, column: 5, scope: !3459)
!3538 = !{!"1811"}
!3539 = !DILocation(line: 89, column: 18, scope: !3459)
!3540 = !{!"1812"}
!3541 = !DILocation(line: 90, column: 20, scope: !3459)
!3542 = !{!"1813"}
!3543 = !{!"1814"}
!3544 = !{!"1815"}
!3545 = !{!"1816"}
!3546 = !{!"1817"}
!3547 = !{!"1818"}
!3548 = !{!"1819"}
!3549 = !{!"1820"}
!3550 = !{!"1821"}
!3551 = !{!"1822"}
!3552 = !{!"1823"}
!3553 = !{!"1824"}
!3554 = !{!"1825"}
!3555 = !{!"1826"}
!3556 = !{!"1827"}
!3557 = !{!"1828"}
!3558 = !{!"1829"}
!3559 = !{!"1830"}
!3560 = !{!"1831"}
!3561 = !{!"1832"}
!3562 = !{!"1833"}
!3563 = !{!"1834"}
!3564 = !DILocation(line: 90, column: 8, scope: !3459)
!3565 = !{!"1835"}
!3566 = !DILocation(line: 90, column: 5, scope: !3459)
!3567 = !{!"1836"}
!3568 = !DILocation(line: 90, column: 18, scope: !3459)
!3569 = !{!"1837"}
!3570 = !DILocation(line: 91, column: 20, scope: !3459)
!3571 = !{!"1838"}
!3572 = !{!"1839"}
!3573 = !{!"1840"}
!3574 = !{!"1841"}
!3575 = !{!"1842"}
!3576 = !{!"1843"}
!3577 = !{!"1844"}
!3578 = !{!"1845"}
!3579 = !{!"1846"}
!3580 = !{!"1847"}
!3581 = !{!"1848"}
!3582 = !{!"1849"}
!3583 = !{!"1850"}
!3584 = !{!"1851"}
!3585 = !{!"1852"}
!3586 = !{!"1853"}
!3587 = !{!"1854"}
!3588 = !{!"1855"}
!3589 = !{!"1856"}
!3590 = !{!"1857"}
!3591 = !{!"1858"}
!3592 = !{!"1859"}
!3593 = !DILocation(line: 91, column: 8, scope: !3459)
!3594 = !{!"1860"}
!3595 = !DILocation(line: 91, column: 5, scope: !3459)
!3596 = !{!"1861"}
!3597 = !DILocation(line: 91, column: 18, scope: !3459)
!3598 = !{!"1862"}
!3599 = !DILocation(line: 92, column: 1, scope: !3459)
!3600 = !{!"1863"}
!3601 = distinct !DISubprogram(name: "chacha_encrypt_bytes", scope: !207, file: !207, line: 95, type: !3602, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !206, retainedNodes: !4)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !3077, !3079, !3604, !14}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!3605 = !{!"1864"}
!3606 = !DILocalVariable(name: "x", arg: 1, scope: !3601, file: !207, line: 95, type: !3077)
!3607 = !DILocation(line: 0, scope: !3601)
!3608 = !{!"1865"}
!3609 = !DILocalVariable(name: "m", arg: 2, scope: !3601, file: !207, line: 95, type: !3079)
!3610 = !{!"1866"}
!3611 = !DILocalVariable(name: "c", arg: 3, scope: !3601, file: !207, line: 95, type: !3604)
!3612 = !{!"1867"}
!3613 = !DILocalVariable(name: "bytes", arg: 4, scope: !3601, file: !207, line: 95, type: !14)
!3614 = !{!"1868"}
!3615 = !DILocalVariable(name: "ctarget", scope: !3601, file: !207, line: 99, type: !3604)
!3616 = !{!"1869"}
!3617 = !DILocalVariable(name: "tmp", scope: !3601, file: !207, line: 100, type: !3618)
!3618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 512, elements: !285)
!3619 = !DILocation(line: 100, column: 8, scope: !3601)
!3620 = !{!"1870"}
!3621 = !DILocation(line: 103, column: 10, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3601, file: !207, line: 103, column: 9)
!3623 = !{!"1871"}
!3624 = !DILocation(line: 103, column: 9, scope: !3601)
!3625 = !{!"1872"}
!3626 = !DILocation(line: 104, column: 9, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3622, file: !207, line: 103, column: 17)
!3628 = !{!"1873"}
!3629 = !DILocation(line: 106, column: 13, scope: !3601)
!3630 = !{!"1874"}
!3631 = !DILocation(line: 106, column: 10, scope: !3601)
!3632 = !{!"1875"}
!3633 = !{!"1876"}
!3634 = !DILocalVariable(name: "j0", scope: !3601, file: !207, line: 98, type: !209)
!3635 = !{!"1877"}
!3636 = !DILocation(line: 107, column: 13, scope: !3601)
!3637 = !{!"1878"}
!3638 = !DILocation(line: 107, column: 10, scope: !3601)
!3639 = !{!"1879"}
!3640 = !{!"1880"}
!3641 = !DILocalVariable(name: "j1", scope: !3601, file: !207, line: 98, type: !209)
!3642 = !{!"1881"}
!3643 = !DILocation(line: 108, column: 13, scope: !3601)
!3644 = !{!"1882"}
!3645 = !DILocation(line: 108, column: 10, scope: !3601)
!3646 = !{!"1883"}
!3647 = !{!"1884"}
!3648 = !DILocalVariable(name: "j2", scope: !3601, file: !207, line: 98, type: !209)
!3649 = !{!"1885"}
!3650 = !DILocation(line: 109, column: 13, scope: !3601)
!3651 = !{!"1886"}
!3652 = !DILocation(line: 109, column: 10, scope: !3601)
!3653 = !{!"1887"}
!3654 = !{!"1888"}
!3655 = !DILocalVariable(name: "j3", scope: !3601, file: !207, line: 98, type: !209)
!3656 = !{!"1889"}
!3657 = !DILocation(line: 110, column: 13, scope: !3601)
!3658 = !{!"1890"}
!3659 = !DILocation(line: 110, column: 10, scope: !3601)
!3660 = !{!"1891"}
!3661 = !{!"1892"}
!3662 = !DILocalVariable(name: "j4", scope: !3601, file: !207, line: 98, type: !209)
!3663 = !{!"1893"}
!3664 = !DILocation(line: 111, column: 13, scope: !3601)
!3665 = !{!"1894"}
!3666 = !DILocation(line: 111, column: 10, scope: !3601)
!3667 = !{!"1895"}
!3668 = !{!"1896"}
!3669 = !DILocalVariable(name: "j5", scope: !3601, file: !207, line: 98, type: !209)
!3670 = !{!"1897"}
!3671 = !DILocation(line: 112, column: 13, scope: !3601)
!3672 = !{!"1898"}
!3673 = !DILocation(line: 112, column: 10, scope: !3601)
!3674 = !{!"1899"}
!3675 = !{!"1900"}
!3676 = !DILocalVariable(name: "j6", scope: !3601, file: !207, line: 98, type: !209)
!3677 = !{!"1901"}
!3678 = !DILocation(line: 113, column: 13, scope: !3601)
!3679 = !{!"1902"}
!3680 = !DILocation(line: 113, column: 10, scope: !3601)
!3681 = !{!"1903"}
!3682 = !{!"1904"}
!3683 = !DILocalVariable(name: "j7", scope: !3601, file: !207, line: 98, type: !209)
!3684 = !{!"1905"}
!3685 = !DILocation(line: 114, column: 13, scope: !3601)
!3686 = !{!"1906"}
!3687 = !DILocation(line: 114, column: 10, scope: !3601)
!3688 = !{!"1907"}
!3689 = !{!"1908"}
!3690 = !DILocalVariable(name: "j8", scope: !3601, file: !207, line: 98, type: !209)
!3691 = !{!"1909"}
!3692 = !DILocation(line: 115, column: 13, scope: !3601)
!3693 = !{!"1910"}
!3694 = !DILocation(line: 115, column: 10, scope: !3601)
!3695 = !{!"1911"}
!3696 = !{!"1912"}
!3697 = !DILocalVariable(name: "j9", scope: !3601, file: !207, line: 98, type: !209)
!3698 = !{!"1913"}
!3699 = !DILocation(line: 116, column: 14, scope: !3601)
!3700 = !{!"1914"}
!3701 = !DILocation(line: 116, column: 11, scope: !3601)
!3702 = !{!"1915"}
!3703 = !{!"1916"}
!3704 = !DILocalVariable(name: "j10", scope: !3601, file: !207, line: 98, type: !209)
!3705 = !{!"1917"}
!3706 = !DILocation(line: 117, column: 14, scope: !3601)
!3707 = !{!"1918"}
!3708 = !DILocation(line: 117, column: 11, scope: !3601)
!3709 = !{!"1919"}
!3710 = !{!"1920"}
!3711 = !DILocalVariable(name: "j11", scope: !3601, file: !207, line: 98, type: !209)
!3712 = !{!"1921"}
!3713 = !DILocation(line: 118, column: 14, scope: !3601)
!3714 = !{!"1922"}
!3715 = !DILocation(line: 118, column: 11, scope: !3601)
!3716 = !{!"1923"}
!3717 = !{!"1924"}
!3718 = !DILocalVariable(name: "j12", scope: !3601, file: !207, line: 98, type: !209)
!3719 = !{!"1925"}
!3720 = !DILocation(line: 119, column: 14, scope: !3601)
!3721 = !{!"1926"}
!3722 = !DILocation(line: 119, column: 11, scope: !3601)
!3723 = !{!"1927"}
!3724 = !{!"1928"}
!3725 = !DILocalVariable(name: "j13", scope: !3601, file: !207, line: 98, type: !209)
!3726 = !{!"1929"}
!3727 = !DILocation(line: 120, column: 14, scope: !3601)
!3728 = !{!"1930"}
!3729 = !DILocation(line: 120, column: 11, scope: !3601)
!3730 = !{!"1931"}
!3731 = !{!"1932"}
!3732 = !DILocalVariable(name: "j14", scope: !3601, file: !207, line: 98, type: !209)
!3733 = !{!"1933"}
!3734 = !DILocation(line: 121, column: 14, scope: !3601)
!3735 = !{!"1934"}
!3736 = !DILocation(line: 121, column: 11, scope: !3601)
!3737 = !{!"1935"}
!3738 = !{!"1936"}
!3739 = !DILocalVariable(name: "j15", scope: !3601, file: !207, line: 98, type: !209)
!3740 = !{!"1937"}
!3741 = !DILocation(line: 123, column: 5, scope: !3601)
!3742 = !{!"1938"}
!3743 = !{!"1939"}
!3744 = !DILocation(line: 119, column: 9, scope: !3601)
!3745 = !{!"1940"}
!3746 = !{!"1941"}
!3747 = !{!"1942"}
!3748 = !{!"1943"}
!3749 = !{!"1944"}
!3750 = !{!"1945"}
!3751 = !{!"1946"}
!3752 = !{!"1947"}
!3753 = !{!"1948"}
!3754 = !{!"1949"}
!3755 = !{!"1950"}
!3756 = !DILocation(line: 124, column: 19, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 124, column: 13)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !207, line: 123, column: 14)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !207, line: 123, column: 5)
!3760 = distinct !DILexicalBlock(scope: !3601, file: !207, line: 123, column: 5)
!3761 = !{!"1951"}
!3762 = !DILocation(line: 124, column: 13, scope: !3758)
!3763 = !{!"1952"}
!3764 = !DILocalVariable(name: "i", scope: !3601, file: !207, line: 101, type: !121)
!3765 = !{!"1953"}
!3766 = !DILocation(line: 125, column: 18, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !207, line: 125, column: 13)
!3768 = distinct !DILexicalBlock(scope: !3757, file: !207, line: 124, column: 25)
!3769 = !{!"1954"}
!3770 = !DILocation(line: 0, scope: !3767)
!3771 = !{!"1955"}
!3772 = !{!"1956"}
!3773 = !DILocation(line: 125, column: 25, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3767, file: !207, line: 125, column: 13)
!3775 = !{!"1957"}
!3776 = !DILocation(line: 125, column: 27, scope: !3774)
!3777 = !{!"1958"}
!3778 = !DILocation(line: 125, column: 13, scope: !3767)
!3779 = !{!"1959"}
!3780 = !DILocation(line: 126, column: 26, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3774, file: !207, line: 125, column: 41)
!3782 = !{!"1960"}
!3783 = !{!"1961"}
!3784 = !{!"1962"}
!3785 = !DILocation(line: 126, column: 17, scope: !3781)
!3786 = !{!"1963"}
!3787 = !{!"1964"}
!3788 = !DILocation(line: 126, column: 24, scope: !3781)
!3789 = !{!"1965"}
!3790 = !DILocation(line: 127, column: 13, scope: !3781)
!3791 = !{!"1966"}
!3792 = !DILocation(line: 125, column: 36, scope: !3774)
!3793 = !{!"1967"}
!3794 = !{!"1968"}
!3795 = !DILocation(line: 125, column: 13, scope: !3774)
!3796 = distinct !{!3796, !3778, !3797, !726}
!3797 = !DILocation(line: 127, column: 13, scope: !3767)
!3798 = !{!"1969"}
!3799 = !DILocation(line: 128, column: 17, scope: !3768)
!3800 = !{!"1970"}
!3801 = !{!"1971"}
!3802 = !{!"1972"}
!3803 = !DILocation(line: 130, column: 17, scope: !3768)
!3804 = !{!"1973"}
!3805 = !{!"1974"}
!3806 = !DILocation(line: 131, column: 9, scope: !3768)
!3807 = !{!"1975"}
!3808 = !{!"1976"}
!3809 = !{!"1977"}
!3810 = !{!"1978"}
!3811 = !{!"1979"}
!3812 = !{!"1980"}
!3813 = !{!"1981"}
!3814 = !DILocalVariable(name: "x0", scope: !3601, file: !207, line: 97, type: !209)
!3815 = !{!"1982"}
!3816 = !DILocalVariable(name: "x1", scope: !3601, file: !207, line: 97, type: !209)
!3817 = !{!"1983"}
!3818 = !DILocalVariable(name: "x2", scope: !3601, file: !207, line: 97, type: !209)
!3819 = !{!"1984"}
!3820 = !DILocalVariable(name: "x3", scope: !3601, file: !207, line: 97, type: !209)
!3821 = !{!"1985"}
!3822 = !DILocalVariable(name: "x4", scope: !3601, file: !207, line: 97, type: !209)
!3823 = !{!"1986"}
!3824 = !DILocalVariable(name: "x5", scope: !3601, file: !207, line: 97, type: !209)
!3825 = !{!"1987"}
!3826 = !DILocalVariable(name: "x6", scope: !3601, file: !207, line: 97, type: !209)
!3827 = !{!"1988"}
!3828 = !DILocalVariable(name: "x7", scope: !3601, file: !207, line: 97, type: !209)
!3829 = !{!"1989"}
!3830 = !DILocalVariable(name: "x8", scope: !3601, file: !207, line: 97, type: !209)
!3831 = !{!"1990"}
!3832 = !DILocalVariable(name: "x9", scope: !3601, file: !207, line: 97, type: !209)
!3833 = !{!"1991"}
!3834 = !DILocalVariable(name: "x10", scope: !3601, file: !207, line: 97, type: !209)
!3835 = !{!"1992"}
!3836 = !DILocalVariable(name: "x11", scope: !3601, file: !207, line: 97, type: !209)
!3837 = !{!"1993"}
!3838 = !DILocalVariable(name: "x12", scope: !3601, file: !207, line: 97, type: !209)
!3839 = !{!"1994"}
!3840 = !DILocalVariable(name: "x13", scope: !3601, file: !207, line: 97, type: !209)
!3841 = !{!"1995"}
!3842 = !DILocalVariable(name: "x14", scope: !3601, file: !207, line: 97, type: !209)
!3843 = !{!"1996"}
!3844 = !DILocalVariable(name: "x15", scope: !3601, file: !207, line: 97, type: !209)
!3845 = !{!"1997"}
!3846 = !{!"1998"}
!3847 = !DILocation(line: 148, column: 14, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 148, column: 9)
!3849 = !{!"1999"}
!3850 = !DILocation(line: 0, scope: !3758)
!3851 = !{!"2000"}
!3852 = !{!"2001"}
!3853 = !{!"2002"}
!3854 = !{!"2003"}
!3855 = !{!"2004"}
!3856 = !{!"2005"}
!3857 = !{!"2006"}
!3858 = !{!"2007"}
!3859 = !{!"2008"}
!3860 = !{!"2009"}
!3861 = !{!"2010"}
!3862 = !{!"2011"}
!3863 = !{!"2012"}
!3864 = !{!"2013"}
!3865 = !{!"2014"}
!3866 = !{!"2015"}
!3867 = !DILocation(line: 0, scope: !3848)
!3868 = !{!"2016"}
!3869 = !{!"2017"}
!3870 = !{!"2018"}
!3871 = !{!"2019"}
!3872 = !{!"2020"}
!3873 = !{!"2021"}
!3874 = !{!"2022"}
!3875 = !{!"2023"}
!3876 = !{!"2024"}
!3877 = !{!"2025"}
!3878 = !{!"2026"}
!3879 = !{!"2027"}
!3880 = !{!"2028"}
!3881 = !{!"2029"}
!3882 = !{!"2030"}
!3883 = !{!"2031"}
!3884 = !{!"2032"}
!3885 = !{!"2033"}
!3886 = !DILocation(line: 148, column: 24, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3848, file: !207, line: 148, column: 9)
!3888 = !{!"2034"}
!3889 = !DILocation(line: 148, column: 9, scope: !3848)
!3890 = !{!"2035"}
!3891 = !DILocation(line: 149, column: 13, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3887, file: !207, line: 148, column: 37)
!3893 = !{!"2036"}
!3894 = !{!"2037"}
!3895 = !{!"2038"}
!3896 = !{!"2039"}
!3897 = !{!"2040"}
!3898 = !{!"2041"}
!3899 = !{!"2042"}
!3900 = !{!"2043"}
!3901 = !{!"2044"}
!3902 = !{!"2045"}
!3903 = !{!"2046"}
!3904 = !{!"2047"}
!3905 = !{!"2048"}
!3906 = !{!"2049"}
!3907 = !{!"2050"}
!3908 = !{!"2051"}
!3909 = !{!"2052"}
!3910 = !{!"2053"}
!3911 = !{!"2054"}
!3912 = !{!"2055"}
!3913 = !{!"2056"}
!3914 = !{!"2057"}
!3915 = !{!"2058"}
!3916 = !{!"2059"}
!3917 = !{!"2060"}
!3918 = !{!"2061"}
!3919 = !{!"2062"}
!3920 = !{!"2063"}
!3921 = !{!"2064"}
!3922 = !{!"2065"}
!3923 = !{!"2066"}
!3924 = !{!"2067"}
!3925 = !DILocation(line: 150, column: 13, scope: !3892)
!3926 = !{!"2068"}
!3927 = !{!"2069"}
!3928 = !{!"2070"}
!3929 = !{!"2071"}
!3930 = !{!"2072"}
!3931 = !{!"2073"}
!3932 = !{!"2074"}
!3933 = !{!"2075"}
!3934 = !{!"2076"}
!3935 = !{!"2077"}
!3936 = !{!"2078"}
!3937 = !{!"2079"}
!3938 = !{!"2080"}
!3939 = !{!"2081"}
!3940 = !{!"2082"}
!3941 = !{!"2083"}
!3942 = !{!"2084"}
!3943 = !{!"2085"}
!3944 = !{!"2086"}
!3945 = !{!"2087"}
!3946 = !{!"2088"}
!3947 = !{!"2089"}
!3948 = !{!"2090"}
!3949 = !{!"2091"}
!3950 = !{!"2092"}
!3951 = !{!"2093"}
!3952 = !{!"2094"}
!3953 = !{!"2095"}
!3954 = !{!"2096"}
!3955 = !{!"2097"}
!3956 = !{!"2098"}
!3957 = !{!"2099"}
!3958 = !DILocation(line: 151, column: 13, scope: !3892)
!3959 = !{!"2100"}
!3960 = !{!"2101"}
!3961 = !{!"2102"}
!3962 = !{!"2103"}
!3963 = !{!"2104"}
!3964 = !{!"2105"}
!3965 = !{!"2106"}
!3966 = !{!"2107"}
!3967 = !{!"2108"}
!3968 = !{!"2109"}
!3969 = !{!"2110"}
!3970 = !{!"2111"}
!3971 = !{!"2112"}
!3972 = !{!"2113"}
!3973 = !{!"2114"}
!3974 = !{!"2115"}
!3975 = !{!"2116"}
!3976 = !{!"2117"}
!3977 = !{!"2118"}
!3978 = !{!"2119"}
!3979 = !{!"2120"}
!3980 = !{!"2121"}
!3981 = !{!"2122"}
!3982 = !{!"2123"}
!3983 = !{!"2124"}
!3984 = !{!"2125"}
!3985 = !{!"2126"}
!3986 = !{!"2127"}
!3987 = !{!"2128"}
!3988 = !{!"2129"}
!3989 = !{!"2130"}
!3990 = !{!"2131"}
!3991 = !DILocation(line: 152, column: 13, scope: !3892)
!3992 = !{!"2132"}
!3993 = !{!"2133"}
!3994 = !{!"2134"}
!3995 = !{!"2135"}
!3996 = !{!"2136"}
!3997 = !{!"2137"}
!3998 = !{!"2138"}
!3999 = !{!"2139"}
!4000 = !{!"2140"}
!4001 = !{!"2141"}
!4002 = !{!"2142"}
!4003 = !{!"2143"}
!4004 = !{!"2144"}
!4005 = !{!"2145"}
!4006 = !{!"2146"}
!4007 = !{!"2147"}
!4008 = !{!"2148"}
!4009 = !{!"2149"}
!4010 = !{!"2150"}
!4011 = !{!"2151"}
!4012 = !{!"2152"}
!4013 = !{!"2153"}
!4014 = !{!"2154"}
!4015 = !{!"2155"}
!4016 = !{!"2156"}
!4017 = !{!"2157"}
!4018 = !{!"2158"}
!4019 = !{!"2159"}
!4020 = !{!"2160"}
!4021 = !{!"2161"}
!4022 = !{!"2162"}
!4023 = !{!"2163"}
!4024 = !DILocation(line: 153, column: 13, scope: !3892)
!4025 = !{!"2164"}
!4026 = !{!"2165"}
!4027 = !{!"2166"}
!4028 = !{!"2167"}
!4029 = !{!"2168"}
!4030 = !{!"2169"}
!4031 = !{!"2170"}
!4032 = !{!"2171"}
!4033 = !{!"2172"}
!4034 = !{!"2173"}
!4035 = !{!"2174"}
!4036 = !{!"2175"}
!4037 = !{!"2176"}
!4038 = !{!"2177"}
!4039 = !{!"2178"}
!4040 = !{!"2179"}
!4041 = !{!"2180"}
!4042 = !{!"2181"}
!4043 = !{!"2182"}
!4044 = !{!"2183"}
!4045 = !{!"2184"}
!4046 = !{!"2185"}
!4047 = !{!"2186"}
!4048 = !{!"2187"}
!4049 = !{!"2188"}
!4050 = !{!"2189"}
!4051 = !{!"2190"}
!4052 = !{!"2191"}
!4053 = !{!"2192"}
!4054 = !{!"2193"}
!4055 = !{!"2194"}
!4056 = !{!"2195"}
!4057 = !DILocation(line: 154, column: 13, scope: !3892)
!4058 = !{!"2196"}
!4059 = !{!"2197"}
!4060 = !{!"2198"}
!4061 = !{!"2199"}
!4062 = !{!"2200"}
!4063 = !{!"2201"}
!4064 = !{!"2202"}
!4065 = !{!"2203"}
!4066 = !{!"2204"}
!4067 = !{!"2205"}
!4068 = !{!"2206"}
!4069 = !{!"2207"}
!4070 = !{!"2208"}
!4071 = !{!"2209"}
!4072 = !{!"2210"}
!4073 = !{!"2211"}
!4074 = !{!"2212"}
!4075 = !{!"2213"}
!4076 = !{!"2214"}
!4077 = !{!"2215"}
!4078 = !{!"2216"}
!4079 = !{!"2217"}
!4080 = !{!"2218"}
!4081 = !{!"2219"}
!4082 = !{!"2220"}
!4083 = !{!"2221"}
!4084 = !{!"2222"}
!4085 = !{!"2223"}
!4086 = !{!"2224"}
!4087 = !{!"2225"}
!4088 = !{!"2226"}
!4089 = !{!"2227"}
!4090 = !DILocation(line: 155, column: 13, scope: !3892)
!4091 = !{!"2228"}
!4092 = !{!"2229"}
!4093 = !{!"2230"}
!4094 = !{!"2231"}
!4095 = !{!"2232"}
!4096 = !{!"2233"}
!4097 = !{!"2234"}
!4098 = !{!"2235"}
!4099 = !{!"2236"}
!4100 = !{!"2237"}
!4101 = !{!"2238"}
!4102 = !{!"2239"}
!4103 = !{!"2240"}
!4104 = !{!"2241"}
!4105 = !{!"2242"}
!4106 = !{!"2243"}
!4107 = !{!"2244"}
!4108 = !{!"2245"}
!4109 = !{!"2246"}
!4110 = !{!"2247"}
!4111 = !{!"2248"}
!4112 = !{!"2249"}
!4113 = !{!"2250"}
!4114 = !{!"2251"}
!4115 = !{!"2252"}
!4116 = !{!"2253"}
!4117 = !{!"2254"}
!4118 = !{!"2255"}
!4119 = !{!"2256"}
!4120 = !{!"2257"}
!4121 = !{!"2258"}
!4122 = !{!"2259"}
!4123 = !DILocation(line: 156, column: 13, scope: !3892)
!4124 = !{!"2260"}
!4125 = !{!"2261"}
!4126 = !{!"2262"}
!4127 = !{!"2263"}
!4128 = !{!"2264"}
!4129 = !{!"2265"}
!4130 = !{!"2266"}
!4131 = !{!"2267"}
!4132 = !{!"2268"}
!4133 = !{!"2269"}
!4134 = !{!"2270"}
!4135 = !{!"2271"}
!4136 = !{!"2272"}
!4137 = !{!"2273"}
!4138 = !{!"2274"}
!4139 = !{!"2275"}
!4140 = !{!"2276"}
!4141 = !{!"2277"}
!4142 = !{!"2278"}
!4143 = !{!"2279"}
!4144 = !{!"2280"}
!4145 = !{!"2281"}
!4146 = !{!"2282"}
!4147 = !{!"2283"}
!4148 = !{!"2284"}
!4149 = !{!"2285"}
!4150 = !{!"2286"}
!4151 = !{!"2287"}
!4152 = !{!"2288"}
!4153 = !{!"2289"}
!4154 = !{!"2290"}
!4155 = !{!"2291"}
!4156 = !DILocation(line: 157, column: 9, scope: !3892)
!4157 = !{!"2292"}
!4158 = !DILocation(line: 148, column: 31, scope: !3887)
!4159 = !{!"2293"}
!4160 = !{!"2294"}
!4161 = !DILocation(line: 148, column: 9, scope: !3887)
!4162 = distinct !{!4162, !3889, !4163, !726}
!4163 = !DILocation(line: 157, column: 9, scope: !3848)
!4164 = !{!"2295"}
!4165 = !DILocation(line: 158, column: 14, scope: !3758)
!4166 = !{!"2296"}
!4167 = !{!"2297"}
!4168 = !DILocation(line: 159, column: 14, scope: !3758)
!4169 = !{!"2298"}
!4170 = !{!"2299"}
!4171 = !DILocation(line: 160, column: 14, scope: !3758)
!4172 = !{!"2300"}
!4173 = !{!"2301"}
!4174 = !DILocation(line: 161, column: 14, scope: !3758)
!4175 = !{!"2302"}
!4176 = !{!"2303"}
!4177 = !DILocation(line: 162, column: 14, scope: !3758)
!4178 = !{!"2304"}
!4179 = !{!"2305"}
!4180 = !DILocation(line: 163, column: 14, scope: !3758)
!4181 = !{!"2306"}
!4182 = !{!"2307"}
!4183 = !DILocation(line: 164, column: 14, scope: !3758)
!4184 = !{!"2308"}
!4185 = !{!"2309"}
!4186 = !DILocation(line: 165, column: 14, scope: !3758)
!4187 = !{!"2310"}
!4188 = !{!"2311"}
!4189 = !DILocation(line: 166, column: 14, scope: !3758)
!4190 = !{!"2312"}
!4191 = !{!"2313"}
!4192 = !DILocation(line: 167, column: 14, scope: !3758)
!4193 = !{!"2314"}
!4194 = !{!"2315"}
!4195 = !DILocation(line: 168, column: 15, scope: !3758)
!4196 = !{!"2316"}
!4197 = !{!"2317"}
!4198 = !DILocation(line: 169, column: 15, scope: !3758)
!4199 = !{!"2318"}
!4200 = !{!"2319"}
!4201 = !DILocation(line: 170, column: 15, scope: !3758)
!4202 = !{!"2320"}
!4203 = !{!"2321"}
!4204 = !DILocation(line: 171, column: 15, scope: !3758)
!4205 = !{!"2322"}
!4206 = !{!"2323"}
!4207 = !DILocation(line: 172, column: 15, scope: !3758)
!4208 = !{!"2324"}
!4209 = !{!"2325"}
!4210 = !DILocation(line: 173, column: 15, scope: !3758)
!4211 = !{!"2326"}
!4212 = !{!"2327"}
!4213 = !DILocation(line: 175, column: 14, scope: !3758)
!4214 = !{!"2328"}
!4215 = !{!"2329"}
!4216 = !{!"2330"}
!4217 = !{!"2331"}
!4218 = !{!"2332"}
!4219 = !{!"2333"}
!4220 = !{!"2334"}
!4221 = !{!"2335"}
!4222 = !{!"2336"}
!4223 = !{!"2337"}
!4224 = !{!"2338"}
!4225 = !{!"2339"}
!4226 = !{!"2340"}
!4227 = !{!"2341"}
!4228 = !{!"2342"}
!4229 = !{!"2343"}
!4230 = !{!"2344"}
!4231 = !{!"2345"}
!4232 = !{!"2346"}
!4233 = !{!"2347"}
!4234 = !{!"2348"}
!4235 = !{!"2349"}
!4236 = !{!"2350"}
!4237 = !{!"2351"}
!4238 = !DILocation(line: 176, column: 14, scope: !3758)
!4239 = !{!"2352"}
!4240 = !{!"2353"}
!4241 = !{!"2354"}
!4242 = !{!"2355"}
!4243 = !{!"2356"}
!4244 = !{!"2357"}
!4245 = !{!"2358"}
!4246 = !{!"2359"}
!4247 = !{!"2360"}
!4248 = !{!"2361"}
!4249 = !{!"2362"}
!4250 = !{!"2363"}
!4251 = !{!"2364"}
!4252 = !{!"2365"}
!4253 = !{!"2366"}
!4254 = !{!"2367"}
!4255 = !{!"2368"}
!4256 = !{!"2369"}
!4257 = !{!"2370"}
!4258 = !{!"2371"}
!4259 = !{!"2372"}
!4260 = !{!"2373"}
!4261 = !{!"2374"}
!4262 = !{!"2375"}
!4263 = !DILocation(line: 177, column: 14, scope: !3758)
!4264 = !{!"2376"}
!4265 = !{!"2377"}
!4266 = !{!"2378"}
!4267 = !{!"2379"}
!4268 = !{!"2380"}
!4269 = !{!"2381"}
!4270 = !{!"2382"}
!4271 = !{!"2383"}
!4272 = !{!"2384"}
!4273 = !{!"2385"}
!4274 = !{!"2386"}
!4275 = !{!"2387"}
!4276 = !{!"2388"}
!4277 = !{!"2389"}
!4278 = !{!"2390"}
!4279 = !{!"2391"}
!4280 = !{!"2392"}
!4281 = !{!"2393"}
!4282 = !{!"2394"}
!4283 = !{!"2395"}
!4284 = !{!"2396"}
!4285 = !{!"2397"}
!4286 = !{!"2398"}
!4287 = !{!"2399"}
!4288 = !DILocation(line: 178, column: 14, scope: !3758)
!4289 = !{!"2400"}
!4290 = !{!"2401"}
!4291 = !{!"2402"}
!4292 = !{!"2403"}
!4293 = !{!"2404"}
!4294 = !{!"2405"}
!4295 = !{!"2406"}
!4296 = !{!"2407"}
!4297 = !{!"2408"}
!4298 = !{!"2409"}
!4299 = !{!"2410"}
!4300 = !{!"2411"}
!4301 = !{!"2412"}
!4302 = !{!"2413"}
!4303 = !{!"2414"}
!4304 = !{!"2415"}
!4305 = !{!"2416"}
!4306 = !{!"2417"}
!4307 = !{!"2418"}
!4308 = !{!"2419"}
!4309 = !{!"2420"}
!4310 = !{!"2421"}
!4311 = !{!"2422"}
!4312 = !{!"2423"}
!4313 = !DILocation(line: 179, column: 14, scope: !3758)
!4314 = !{!"2424"}
!4315 = !{!"2425"}
!4316 = !{!"2426"}
!4317 = !{!"2427"}
!4318 = !{!"2428"}
!4319 = !{!"2429"}
!4320 = !{!"2430"}
!4321 = !{!"2431"}
!4322 = !{!"2432"}
!4323 = !{!"2433"}
!4324 = !{!"2434"}
!4325 = !{!"2435"}
!4326 = !{!"2436"}
!4327 = !{!"2437"}
!4328 = !{!"2438"}
!4329 = !{!"2439"}
!4330 = !{!"2440"}
!4331 = !{!"2441"}
!4332 = !{!"2442"}
!4333 = !{!"2443"}
!4334 = !{!"2444"}
!4335 = !{!"2445"}
!4336 = !{!"2446"}
!4337 = !{!"2447"}
!4338 = !DILocation(line: 180, column: 14, scope: !3758)
!4339 = !{!"2448"}
!4340 = !{!"2449"}
!4341 = !{!"2450"}
!4342 = !{!"2451"}
!4343 = !{!"2452"}
!4344 = !{!"2453"}
!4345 = !{!"2454"}
!4346 = !{!"2455"}
!4347 = !{!"2456"}
!4348 = !{!"2457"}
!4349 = !{!"2458"}
!4350 = !{!"2459"}
!4351 = !{!"2460"}
!4352 = !{!"2461"}
!4353 = !{!"2462"}
!4354 = !{!"2463"}
!4355 = !{!"2464"}
!4356 = !{!"2465"}
!4357 = !{!"2466"}
!4358 = !{!"2467"}
!4359 = !{!"2468"}
!4360 = !{!"2469"}
!4361 = !{!"2470"}
!4362 = !{!"2471"}
!4363 = !DILocation(line: 181, column: 14, scope: !3758)
!4364 = !{!"2472"}
!4365 = !{!"2473"}
!4366 = !{!"2474"}
!4367 = !{!"2475"}
!4368 = !{!"2476"}
!4369 = !{!"2477"}
!4370 = !{!"2478"}
!4371 = !{!"2479"}
!4372 = !{!"2480"}
!4373 = !{!"2481"}
!4374 = !{!"2482"}
!4375 = !{!"2483"}
!4376 = !{!"2484"}
!4377 = !{!"2485"}
!4378 = !{!"2486"}
!4379 = !{!"2487"}
!4380 = !{!"2488"}
!4381 = !{!"2489"}
!4382 = !{!"2490"}
!4383 = !{!"2491"}
!4384 = !{!"2492"}
!4385 = !{!"2493"}
!4386 = !{!"2494"}
!4387 = !{!"2495"}
!4388 = !DILocation(line: 182, column: 14, scope: !3758)
!4389 = !{!"2496"}
!4390 = !{!"2497"}
!4391 = !{!"2498"}
!4392 = !{!"2499"}
!4393 = !{!"2500"}
!4394 = !{!"2501"}
!4395 = !{!"2502"}
!4396 = !{!"2503"}
!4397 = !{!"2504"}
!4398 = !{!"2505"}
!4399 = !{!"2506"}
!4400 = !{!"2507"}
!4401 = !{!"2508"}
!4402 = !{!"2509"}
!4403 = !{!"2510"}
!4404 = !{!"2511"}
!4405 = !{!"2512"}
!4406 = !{!"2513"}
!4407 = !{!"2514"}
!4408 = !{!"2515"}
!4409 = !{!"2516"}
!4410 = !{!"2517"}
!4411 = !{!"2518"}
!4412 = !{!"2519"}
!4413 = !DILocation(line: 183, column: 14, scope: !3758)
!4414 = !{!"2520"}
!4415 = !{!"2521"}
!4416 = !{!"2522"}
!4417 = !{!"2523"}
!4418 = !{!"2524"}
!4419 = !{!"2525"}
!4420 = !{!"2526"}
!4421 = !{!"2527"}
!4422 = !{!"2528"}
!4423 = !{!"2529"}
!4424 = !{!"2530"}
!4425 = !{!"2531"}
!4426 = !{!"2532"}
!4427 = !{!"2533"}
!4428 = !{!"2534"}
!4429 = !{!"2535"}
!4430 = !{!"2536"}
!4431 = !{!"2537"}
!4432 = !{!"2538"}
!4433 = !{!"2539"}
!4434 = !{!"2540"}
!4435 = !{!"2541"}
!4436 = !{!"2542"}
!4437 = !{!"2543"}
!4438 = !DILocation(line: 184, column: 14, scope: !3758)
!4439 = !{!"2544"}
!4440 = !{!"2545"}
!4441 = !{!"2546"}
!4442 = !{!"2547"}
!4443 = !{!"2548"}
!4444 = !{!"2549"}
!4445 = !{!"2550"}
!4446 = !{!"2551"}
!4447 = !{!"2552"}
!4448 = !{!"2553"}
!4449 = !{!"2554"}
!4450 = !{!"2555"}
!4451 = !{!"2556"}
!4452 = !{!"2557"}
!4453 = !{!"2558"}
!4454 = !{!"2559"}
!4455 = !{!"2560"}
!4456 = !{!"2561"}
!4457 = !{!"2562"}
!4458 = !{!"2563"}
!4459 = !{!"2564"}
!4460 = !{!"2565"}
!4461 = !{!"2566"}
!4462 = !{!"2567"}
!4463 = !DILocation(line: 185, column: 15, scope: !3758)
!4464 = !{!"2568"}
!4465 = !{!"2569"}
!4466 = !{!"2570"}
!4467 = !{!"2571"}
!4468 = !{!"2572"}
!4469 = !{!"2573"}
!4470 = !{!"2574"}
!4471 = !{!"2575"}
!4472 = !{!"2576"}
!4473 = !{!"2577"}
!4474 = !{!"2578"}
!4475 = !{!"2579"}
!4476 = !{!"2580"}
!4477 = !{!"2581"}
!4478 = !{!"2582"}
!4479 = !{!"2583"}
!4480 = !{!"2584"}
!4481 = !{!"2585"}
!4482 = !{!"2586"}
!4483 = !{!"2587"}
!4484 = !{!"2588"}
!4485 = !{!"2589"}
!4486 = !{!"2590"}
!4487 = !{!"2591"}
!4488 = !DILocation(line: 186, column: 15, scope: !3758)
!4489 = !{!"2592"}
!4490 = !{!"2593"}
!4491 = !{!"2594"}
!4492 = !{!"2595"}
!4493 = !{!"2596"}
!4494 = !{!"2597"}
!4495 = !{!"2598"}
!4496 = !{!"2599"}
!4497 = !{!"2600"}
!4498 = !{!"2601"}
!4499 = !{!"2602"}
!4500 = !{!"2603"}
!4501 = !{!"2604"}
!4502 = !{!"2605"}
!4503 = !{!"2606"}
!4504 = !{!"2607"}
!4505 = !{!"2608"}
!4506 = !{!"2609"}
!4507 = !{!"2610"}
!4508 = !{!"2611"}
!4509 = !{!"2612"}
!4510 = !{!"2613"}
!4511 = !{!"2614"}
!4512 = !{!"2615"}
!4513 = !DILocation(line: 187, column: 15, scope: !3758)
!4514 = !{!"2616"}
!4515 = !{!"2617"}
!4516 = !{!"2618"}
!4517 = !{!"2619"}
!4518 = !{!"2620"}
!4519 = !{!"2621"}
!4520 = !{!"2622"}
!4521 = !{!"2623"}
!4522 = !{!"2624"}
!4523 = !{!"2625"}
!4524 = !{!"2626"}
!4525 = !{!"2627"}
!4526 = !{!"2628"}
!4527 = !{!"2629"}
!4528 = !{!"2630"}
!4529 = !{!"2631"}
!4530 = !{!"2632"}
!4531 = !{!"2633"}
!4532 = !{!"2634"}
!4533 = !{!"2635"}
!4534 = !{!"2636"}
!4535 = !{!"2637"}
!4536 = !{!"2638"}
!4537 = !{!"2639"}
!4538 = !DILocation(line: 188, column: 15, scope: !3758)
!4539 = !{!"2640"}
!4540 = !{!"2641"}
!4541 = !{!"2642"}
!4542 = !{!"2643"}
!4543 = !{!"2644"}
!4544 = !{!"2645"}
!4545 = !{!"2646"}
!4546 = !{!"2647"}
!4547 = !{!"2648"}
!4548 = !{!"2649"}
!4549 = !{!"2650"}
!4550 = !{!"2651"}
!4551 = !{!"2652"}
!4552 = !{!"2653"}
!4553 = !{!"2654"}
!4554 = !{!"2655"}
!4555 = !{!"2656"}
!4556 = !{!"2657"}
!4557 = !{!"2658"}
!4558 = !{!"2659"}
!4559 = !{!"2660"}
!4560 = !{!"2661"}
!4561 = !{!"2662"}
!4562 = !{!"2663"}
!4563 = !DILocation(line: 189, column: 15, scope: !3758)
!4564 = !{!"2664"}
!4565 = !{!"2665"}
!4566 = !{!"2666"}
!4567 = !{!"2667"}
!4568 = !{!"2668"}
!4569 = !{!"2669"}
!4570 = !{!"2670"}
!4571 = !{!"2671"}
!4572 = !{!"2672"}
!4573 = !{!"2673"}
!4574 = !{!"2674"}
!4575 = !{!"2675"}
!4576 = !{!"2676"}
!4577 = !{!"2677"}
!4578 = !{!"2678"}
!4579 = !{!"2679"}
!4580 = !{!"2680"}
!4581 = !{!"2681"}
!4582 = !{!"2682"}
!4583 = !{!"2683"}
!4584 = !{!"2684"}
!4585 = !{!"2685"}
!4586 = !{!"2686"}
!4587 = !{!"2687"}
!4588 = !DILocation(line: 190, column: 15, scope: !3758)
!4589 = !{!"2688"}
!4590 = !{!"2689"}
!4591 = !{!"2690"}
!4592 = !{!"2691"}
!4593 = !{!"2692"}
!4594 = !{!"2693"}
!4595 = !{!"2694"}
!4596 = !{!"2695"}
!4597 = !{!"2696"}
!4598 = !{!"2697"}
!4599 = !{!"2698"}
!4600 = !{!"2699"}
!4601 = !{!"2700"}
!4602 = !{!"2701"}
!4603 = !{!"2702"}
!4604 = !{!"2703"}
!4605 = !{!"2704"}
!4606 = !{!"2705"}
!4607 = !{!"2706"}
!4608 = !{!"2707"}
!4609 = !{!"2708"}
!4610 = !{!"2709"}
!4611 = !{!"2710"}
!4612 = !{!"2711"}
!4613 = !DILocation(line: 192, column: 15, scope: !3758)
!4614 = !{!"2712"}
!4615 = !{!"2713"}
!4616 = !DILocation(line: 194, column: 14, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 194, column: 13)
!4618 = !{!"2714"}
!4619 = !DILocation(line: 194, column: 13, scope: !3758)
!4620 = !{!"2715"}
!4621 = !{!"Tainted"}
!4622 = !DILocation(line: 195, column: 19, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4617, file: !207, line: 194, column: 19)
!4624 = !{!"2716"}
!4625 = !{!"2717"}
!4626 = !DILocation(line: 196, column: 9, scope: !4623)
!4627 = !{!"2718"}
!4628 = !{!"2719"}
!4629 = !{!"2720"}
!4630 = !DILocation(line: 199, column: 9, scope: !3758)
!4631 = !{!"2721"}
!4632 = !DILocation(line: 199, column: 9, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 199, column: 9)
!4634 = !{!"2722"}
!4635 = !{!"2723"}
!4636 = !{!"2724"}
!4637 = !{!"2725"}
!4638 = !{!"2726"}
!4639 = !{!"2727"}
!4640 = !{!"2728"}
!4641 = !{!"2729"}
!4642 = !{!"2730"}
!4643 = !{!"2731"}
!4644 = !{!"2732"}
!4645 = !{!"2733"}
!4646 = !{!"2734"}
!4647 = !{!"2735"}
!4648 = !{!"2736"}
!4649 = !{!"2737"}
!4650 = !{!"2738"}
!4651 = !{!"2739"}
!4652 = !{!"2740"}
!4653 = !{!"2741"}
!4654 = !{!"2742"}
!4655 = !{!"2743"}
!4656 = !{!"2744"}
!4657 = !{!"2745"}
!4658 = !{!"2746"}
!4659 = !{!"2747"}
!4660 = !{!"2748"}
!4661 = !{!"2749"}
!4662 = !{!"2750"}
!4663 = !{!"2751"}
!4664 = !{!"2752"}
!4665 = !{!"2753"}
!4666 = !DILocation(line: 200, column: 9, scope: !3758)
!4667 = !{!"2754"}
!4668 = !DILocation(line: 200, column: 9, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 200, column: 9)
!4670 = !{!"2755"}
!4671 = !{!"2756"}
!4672 = !{!"2757"}
!4673 = !{!"2758"}
!4674 = !{!"2759"}
!4675 = !{!"2760"}
!4676 = !{!"2761"}
!4677 = !{!"2762"}
!4678 = !{!"2763"}
!4679 = !{!"2764"}
!4680 = !{!"2765"}
!4681 = !{!"2766"}
!4682 = !{!"2767"}
!4683 = !{!"2768"}
!4684 = !{!"2769"}
!4685 = !{!"2770"}
!4686 = !{!"2771"}
!4687 = !{!"2772"}
!4688 = !{!"2773"}
!4689 = !{!"2774"}
!4690 = !{!"2775"}
!4691 = !{!"2776"}
!4692 = !{!"2777"}
!4693 = !{!"2778"}
!4694 = !{!"2779"}
!4695 = !{!"2780"}
!4696 = !{!"2781"}
!4697 = !{!"2782"}
!4698 = !{!"2783"}
!4699 = !{!"2784"}
!4700 = !{!"2785"}
!4701 = !{!"2786"}
!4702 = !DILocation(line: 201, column: 9, scope: !3758)
!4703 = !{!"2787"}
!4704 = !DILocation(line: 201, column: 9, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 201, column: 9)
!4706 = !{!"2788"}
!4707 = !{!"2789"}
!4708 = !{!"2790"}
!4709 = !{!"2791"}
!4710 = !{!"2792"}
!4711 = !{!"2793"}
!4712 = !{!"2794"}
!4713 = !{!"2795"}
!4714 = !{!"2796"}
!4715 = !{!"2797"}
!4716 = !{!"2798"}
!4717 = !{!"2799"}
!4718 = !{!"2800"}
!4719 = !{!"2801"}
!4720 = !{!"2802"}
!4721 = !{!"2803"}
!4722 = !{!"2804"}
!4723 = !{!"2805"}
!4724 = !{!"2806"}
!4725 = !{!"2807"}
!4726 = !{!"2808"}
!4727 = !{!"2809"}
!4728 = !{!"2810"}
!4729 = !{!"2811"}
!4730 = !{!"2812"}
!4731 = !{!"2813"}
!4732 = !{!"2814"}
!4733 = !{!"2815"}
!4734 = !{!"2816"}
!4735 = !{!"2817"}
!4736 = !{!"2818"}
!4737 = !{!"2819"}
!4738 = !DILocation(line: 202, column: 9, scope: !3758)
!4739 = !{!"2820"}
!4740 = !DILocation(line: 202, column: 9, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 202, column: 9)
!4742 = !{!"2821"}
!4743 = !{!"2822"}
!4744 = !{!"2823"}
!4745 = !{!"2824"}
!4746 = !{!"2825"}
!4747 = !{!"2826"}
!4748 = !{!"2827"}
!4749 = !{!"2828"}
!4750 = !{!"2829"}
!4751 = !{!"2830"}
!4752 = !{!"2831"}
!4753 = !{!"2832"}
!4754 = !{!"2833"}
!4755 = !{!"2834"}
!4756 = !{!"2835"}
!4757 = !{!"2836"}
!4758 = !{!"2837"}
!4759 = !{!"2838"}
!4760 = !{!"2839"}
!4761 = !{!"2840"}
!4762 = !{!"2841"}
!4763 = !{!"2842"}
!4764 = !{!"2843"}
!4765 = !{!"2844"}
!4766 = !{!"2845"}
!4767 = !{!"2846"}
!4768 = !{!"2847"}
!4769 = !{!"2848"}
!4770 = !{!"2849"}
!4771 = !{!"2850"}
!4772 = !{!"2851"}
!4773 = !{!"2852"}
!4774 = !DILocation(line: 203, column: 9, scope: !3758)
!4775 = !{!"2853"}
!4776 = !DILocation(line: 203, column: 9, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 203, column: 9)
!4778 = !{!"2854"}
!4779 = !{!"2855"}
!4780 = !{!"2856"}
!4781 = !{!"2857"}
!4782 = !{!"2858"}
!4783 = !{!"2859"}
!4784 = !{!"2860"}
!4785 = !{!"2861"}
!4786 = !{!"2862"}
!4787 = !{!"2863"}
!4788 = !{!"2864"}
!4789 = !{!"2865"}
!4790 = !{!"2866"}
!4791 = !{!"2867"}
!4792 = !{!"2868"}
!4793 = !{!"2869"}
!4794 = !{!"2870"}
!4795 = !{!"2871"}
!4796 = !{!"2872"}
!4797 = !{!"2873"}
!4798 = !{!"2874"}
!4799 = !{!"2875"}
!4800 = !{!"2876"}
!4801 = !{!"2877"}
!4802 = !{!"2878"}
!4803 = !{!"2879"}
!4804 = !{!"2880"}
!4805 = !{!"2881"}
!4806 = !{!"2882"}
!4807 = !{!"2883"}
!4808 = !{!"2884"}
!4809 = !{!"2885"}
!4810 = !DILocation(line: 204, column: 9, scope: !3758)
!4811 = !{!"2886"}
!4812 = !DILocation(line: 204, column: 9, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 204, column: 9)
!4814 = !{!"2887"}
!4815 = !{!"2888"}
!4816 = !{!"2889"}
!4817 = !{!"2890"}
!4818 = !{!"2891"}
!4819 = !{!"2892"}
!4820 = !{!"2893"}
!4821 = !{!"2894"}
!4822 = !{!"2895"}
!4823 = !{!"2896"}
!4824 = !{!"2897"}
!4825 = !{!"2898"}
!4826 = !{!"2899"}
!4827 = !{!"2900"}
!4828 = !{!"2901"}
!4829 = !{!"2902"}
!4830 = !{!"2903"}
!4831 = !{!"2904"}
!4832 = !{!"2905"}
!4833 = !{!"2906"}
!4834 = !{!"2907"}
!4835 = !{!"2908"}
!4836 = !{!"2909"}
!4837 = !{!"2910"}
!4838 = !{!"2911"}
!4839 = !{!"2912"}
!4840 = !{!"2913"}
!4841 = !{!"2914"}
!4842 = !{!"2915"}
!4843 = !{!"2916"}
!4844 = !{!"2917"}
!4845 = !{!"2918"}
!4846 = !DILocation(line: 205, column: 9, scope: !3758)
!4847 = !{!"2919"}
!4848 = !DILocation(line: 205, column: 9, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 205, column: 9)
!4850 = !{!"2920"}
!4851 = !{!"2921"}
!4852 = !{!"2922"}
!4853 = !{!"2923"}
!4854 = !{!"2924"}
!4855 = !{!"2925"}
!4856 = !{!"2926"}
!4857 = !{!"2927"}
!4858 = !{!"2928"}
!4859 = !{!"2929"}
!4860 = !{!"2930"}
!4861 = !{!"2931"}
!4862 = !{!"2932"}
!4863 = !{!"2933"}
!4864 = !{!"2934"}
!4865 = !{!"2935"}
!4866 = !{!"2936"}
!4867 = !{!"2937"}
!4868 = !{!"2938"}
!4869 = !{!"2939"}
!4870 = !{!"2940"}
!4871 = !{!"2941"}
!4872 = !{!"2942"}
!4873 = !{!"2943"}
!4874 = !{!"2944"}
!4875 = !{!"2945"}
!4876 = !{!"2946"}
!4877 = !{!"2947"}
!4878 = !{!"2948"}
!4879 = !{!"2949"}
!4880 = !{!"2950"}
!4881 = !{!"2951"}
!4882 = !DILocation(line: 206, column: 9, scope: !3758)
!4883 = !{!"2952"}
!4884 = !DILocation(line: 206, column: 9, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 206, column: 9)
!4886 = !{!"2953"}
!4887 = !{!"2954"}
!4888 = !{!"2955"}
!4889 = !{!"2956"}
!4890 = !{!"2957"}
!4891 = !{!"2958"}
!4892 = !{!"2959"}
!4893 = !{!"2960"}
!4894 = !{!"2961"}
!4895 = !{!"2962"}
!4896 = !{!"2963"}
!4897 = !{!"2964"}
!4898 = !{!"2965"}
!4899 = !{!"2966"}
!4900 = !{!"2967"}
!4901 = !{!"2968"}
!4902 = !{!"2969"}
!4903 = !{!"2970"}
!4904 = !{!"2971"}
!4905 = !{!"2972"}
!4906 = !{!"2973"}
!4907 = !{!"2974"}
!4908 = !{!"2975"}
!4909 = !{!"2976"}
!4910 = !{!"2977"}
!4911 = !{!"2978"}
!4912 = !{!"2979"}
!4913 = !{!"2980"}
!4914 = !{!"2981"}
!4915 = !{!"2982"}
!4916 = !{!"2983"}
!4917 = !{!"2984"}
!4918 = !DILocation(line: 207, column: 9, scope: !3758)
!4919 = !{!"2985"}
!4920 = !DILocation(line: 207, column: 9, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 207, column: 9)
!4922 = !{!"2986"}
!4923 = !{!"2987"}
!4924 = !{!"2988"}
!4925 = !{!"2989"}
!4926 = !{!"2990"}
!4927 = !{!"2991"}
!4928 = !{!"2992"}
!4929 = !{!"2993"}
!4930 = !{!"2994"}
!4931 = !{!"2995"}
!4932 = !{!"2996"}
!4933 = !{!"2997"}
!4934 = !{!"2998"}
!4935 = !{!"2999"}
!4936 = !{!"3000"}
!4937 = !{!"3001"}
!4938 = !{!"3002"}
!4939 = !{!"3003"}
!4940 = !{!"3004"}
!4941 = !{!"3005"}
!4942 = !{!"3006"}
!4943 = !{!"3007"}
!4944 = !{!"3008"}
!4945 = !{!"3009"}
!4946 = !{!"3010"}
!4947 = !{!"3011"}
!4948 = !{!"3012"}
!4949 = !{!"3013"}
!4950 = !{!"3014"}
!4951 = !{!"3015"}
!4952 = !{!"3016"}
!4953 = !{!"3017"}
!4954 = !DILocation(line: 208, column: 9, scope: !3758)
!4955 = !{!"3018"}
!4956 = !DILocation(line: 208, column: 9, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 208, column: 9)
!4958 = !{!"3019"}
!4959 = !{!"3020"}
!4960 = !{!"3021"}
!4961 = !{!"3022"}
!4962 = !{!"3023"}
!4963 = !{!"3024"}
!4964 = !{!"3025"}
!4965 = !{!"3026"}
!4966 = !{!"3027"}
!4967 = !{!"3028"}
!4968 = !{!"3029"}
!4969 = !{!"3030"}
!4970 = !{!"3031"}
!4971 = !{!"3032"}
!4972 = !{!"3033"}
!4973 = !{!"3034"}
!4974 = !{!"3035"}
!4975 = !{!"3036"}
!4976 = !{!"3037"}
!4977 = !{!"3038"}
!4978 = !{!"3039"}
!4979 = !{!"3040"}
!4980 = !{!"3041"}
!4981 = !{!"3042"}
!4982 = !{!"3043"}
!4983 = !{!"3044"}
!4984 = !{!"3045"}
!4985 = !{!"3046"}
!4986 = !{!"3047"}
!4987 = !{!"3048"}
!4988 = !{!"3049"}
!4989 = !{!"3050"}
!4990 = !DILocation(line: 209, column: 9, scope: !3758)
!4991 = !{!"3051"}
!4992 = !DILocation(line: 209, column: 9, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 209, column: 9)
!4994 = !{!"3052"}
!4995 = !{!"3053"}
!4996 = !{!"3054"}
!4997 = !{!"3055"}
!4998 = !{!"3056"}
!4999 = !{!"3057"}
!5000 = !{!"3058"}
!5001 = !{!"3059"}
!5002 = !{!"3060"}
!5003 = !{!"3061"}
!5004 = !{!"3062"}
!5005 = !{!"3063"}
!5006 = !{!"3064"}
!5007 = !{!"3065"}
!5008 = !{!"3066"}
!5009 = !{!"3067"}
!5010 = !{!"3068"}
!5011 = !{!"3069"}
!5012 = !{!"3070"}
!5013 = !{!"3071"}
!5014 = !{!"3072"}
!5015 = !{!"3073"}
!5016 = !{!"3074"}
!5017 = !{!"3075"}
!5018 = !{!"3076"}
!5019 = !{!"3077"}
!5020 = !{!"3078"}
!5021 = !{!"3079"}
!5022 = !{!"3080"}
!5023 = !{!"3081"}
!5024 = !{!"3082"}
!5025 = !{!"3083"}
!5026 = !DILocation(line: 210, column: 9, scope: !3758)
!5027 = !{!"3084"}
!5028 = !DILocation(line: 210, column: 9, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 210, column: 9)
!5030 = !{!"3085"}
!5031 = !{!"3086"}
!5032 = !{!"3087"}
!5033 = !{!"3088"}
!5034 = !{!"3089"}
!5035 = !{!"3090"}
!5036 = !{!"3091"}
!5037 = !{!"3092"}
!5038 = !{!"3093"}
!5039 = !{!"3094"}
!5040 = !{!"3095"}
!5041 = !{!"3096"}
!5042 = !{!"3097"}
!5043 = !{!"3098"}
!5044 = !{!"3099"}
!5045 = !{!"3100"}
!5046 = !{!"3101"}
!5047 = !{!"3102"}
!5048 = !{!"3103"}
!5049 = !{!"3104"}
!5050 = !{!"3105"}
!5051 = !{!"3106"}
!5052 = !{!"3107"}
!5053 = !{!"3108"}
!5054 = !{!"3109"}
!5055 = !{!"3110"}
!5056 = !{!"3111"}
!5057 = !{!"3112"}
!5058 = !{!"3113"}
!5059 = !{!"3114"}
!5060 = !{!"3115"}
!5061 = !{!"3116"}
!5062 = !DILocation(line: 211, column: 9, scope: !3758)
!5063 = !{!"3117"}
!5064 = !DILocation(line: 211, column: 9, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 211, column: 9)
!5066 = !{!"3118"}
!5067 = !{!"3119"}
!5068 = !{!"3120"}
!5069 = !{!"3121"}
!5070 = !{!"3122"}
!5071 = !{!"3123"}
!5072 = !{!"3124"}
!5073 = !{!"3125"}
!5074 = !{!"3126"}
!5075 = !{!"3127"}
!5076 = !{!"3128"}
!5077 = !{!"3129"}
!5078 = !{!"3130"}
!5079 = !{!"3131"}
!5080 = !{!"3132"}
!5081 = !{!"3133"}
!5082 = !{!"3134"}
!5083 = !{!"3135"}
!5084 = !{!"3136"}
!5085 = !{!"3137"}
!5086 = !{!"3138"}
!5087 = !{!"3139"}
!5088 = !{!"3140"}
!5089 = !{!"3141"}
!5090 = !{!"3142"}
!5091 = !{!"3143"}
!5092 = !{!"3144"}
!5093 = !{!"3145"}
!5094 = !{!"3146"}
!5095 = !{!"3147"}
!5096 = !{!"3148"}
!5097 = !{!"3149"}
!5098 = !DILocation(line: 212, column: 9, scope: !3758)
!5099 = !{!"3150"}
!5100 = !DILocation(line: 212, column: 9, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 212, column: 9)
!5102 = !{!"3151"}
!5103 = !{!"3152"}
!5104 = !{!"3153"}
!5105 = !{!"3154"}
!5106 = !{!"3155"}
!5107 = !{!"3156"}
!5108 = !{!"3157"}
!5109 = !{!"3158"}
!5110 = !{!"3159"}
!5111 = !{!"3160"}
!5112 = !{!"3161"}
!5113 = !{!"3162"}
!5114 = !{!"3163"}
!5115 = !{!"3164"}
!5116 = !{!"3165"}
!5117 = !{!"3166"}
!5118 = !{!"3167"}
!5119 = !{!"3168"}
!5120 = !{!"3169"}
!5121 = !{!"3170"}
!5122 = !{!"3171"}
!5123 = !{!"3172"}
!5124 = !{!"3173"}
!5125 = !{!"3174"}
!5126 = !{!"3175"}
!5127 = !{!"3176"}
!5128 = !{!"3177"}
!5129 = !{!"3178"}
!5130 = !{!"3179"}
!5131 = !{!"3180"}
!5132 = !{!"3181"}
!5133 = !{!"3182"}
!5134 = !DILocation(line: 213, column: 9, scope: !3758)
!5135 = !{!"3183"}
!5136 = !DILocation(line: 213, column: 9, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 213, column: 9)
!5138 = !{!"3184"}
!5139 = !{!"3185"}
!5140 = !{!"3186"}
!5141 = !{!"3187"}
!5142 = !{!"3188"}
!5143 = !{!"3189"}
!5144 = !{!"3190"}
!5145 = !{!"3191"}
!5146 = !{!"3192"}
!5147 = !{!"3193"}
!5148 = !{!"3194"}
!5149 = !{!"3195"}
!5150 = !{!"3196"}
!5151 = !{!"3197"}
!5152 = !{!"3198"}
!5153 = !{!"3199"}
!5154 = !{!"3200"}
!5155 = !{!"3201"}
!5156 = !{!"3202"}
!5157 = !{!"3203"}
!5158 = !{!"3204"}
!5159 = !{!"3205"}
!5160 = !{!"3206"}
!5161 = !{!"3207"}
!5162 = !{!"3208"}
!5163 = !{!"3209"}
!5164 = !{!"3210"}
!5165 = !{!"3211"}
!5166 = !{!"3212"}
!5167 = !{!"3213"}
!5168 = !{!"3214"}
!5169 = !{!"3215"}
!5170 = !DILocation(line: 214, column: 9, scope: !3758)
!5171 = !{!"3216"}
!5172 = !DILocation(line: 214, column: 9, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 214, column: 9)
!5174 = !{!"3217"}
!5175 = !{!"3218"}
!5176 = !{!"3219"}
!5177 = !{!"3220"}
!5178 = !{!"3221"}
!5179 = !{!"3222"}
!5180 = !{!"3223"}
!5181 = !{!"3224"}
!5182 = !{!"3225"}
!5183 = !{!"3226"}
!5184 = !{!"3227"}
!5185 = !{!"3228"}
!5186 = !{!"3229"}
!5187 = !{!"3230"}
!5188 = !{!"3231"}
!5189 = !{!"3232"}
!5190 = !{!"3233"}
!5191 = !{!"3234"}
!5192 = !{!"3235"}
!5193 = !{!"3236"}
!5194 = !{!"3237"}
!5195 = !{!"3238"}
!5196 = !{!"3239"}
!5197 = !{!"3240"}
!5198 = !{!"3241"}
!5199 = !{!"3242"}
!5200 = !{!"3243"}
!5201 = !{!"3244"}
!5202 = !{!"3245"}
!5203 = !{!"3246"}
!5204 = !{!"3247"}
!5205 = !{!"3248"}
!5206 = !DILocation(line: 216, column: 19, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !3758, file: !207, line: 216, column: 13)
!5208 = !{!"3249"}
!5209 = !DILocation(line: 216, column: 13, scope: !3758)
!5210 = !{!"3250"}
!5211 = !DILocation(line: 217, column: 23, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !207, line: 217, column: 17)
!5213 = distinct !DILexicalBlock(scope: !5207, file: !207, line: 216, column: 26)
!5214 = !{!"3251"}
!5215 = !DILocation(line: 217, column: 17, scope: !5213)
!5216 = !{!"3252"}
!5217 = !{!"3253"}
!5218 = !DILocation(line: 218, column: 22, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5220, file: !207, line: 218, column: 17)
!5220 = distinct !DILexicalBlock(scope: !5212, file: !207, line: 217, column: 29)
!5221 = !{!"3254"}
!5222 = !DILocation(line: 0, scope: !5219)
!5223 = !{!"3255"}
!5224 = !{!"3256"}
!5225 = !DILocation(line: 218, column: 33, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5219, file: !207, line: 218, column: 17)
!5227 = !{!"3257"}
!5228 = !DILocation(line: 218, column: 31, scope: !5226)
!5229 = !{!"3258"}
!5230 = !DILocation(line: 218, column: 17, scope: !5219)
!5231 = !{!"3259"}
!5232 = !DILocation(line: 219, column: 34, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5226, file: !207, line: 218, column: 60)
!5234 = !{!"3260"}
!5235 = !{!"3261"}
!5236 = !{!"3262"}
!5237 = !DILocation(line: 219, column: 21, scope: !5233)
!5238 = !{!"3263"}
!5239 = !{!"3264"}
!5240 = !DILocation(line: 219, column: 32, scope: !5233)
!5241 = !{!"3265"}
!5242 = !DILocation(line: 220, column: 17, scope: !5233)
!5243 = !{!"3266"}
!5244 = !DILocation(line: 218, column: 55, scope: !5226)
!5245 = !{!"3267"}
!5246 = !{!"3268"}
!5247 = !DILocation(line: 218, column: 17, scope: !5226)
!5248 = distinct !{!5248, !5230, !5249, !726}
!5249 = !DILocation(line: 220, column: 17, scope: !5219)
!5250 = !{!"3269"}
!5251 = !DILocation(line: 221, column: 13, scope: !5220)
!5252 = !{!"3270"}
!5253 = !DILocation(line: 222, column: 16, scope: !5213)
!5254 = !{!"3271"}
!5255 = !DILocation(line: 222, column: 13, scope: !5213)
!5256 = !{!"3272"}
!5257 = !DILocation(line: 222, column: 26, scope: !5213)
!5258 = !{!"3273"}
!5259 = !DILocation(line: 223, column: 16, scope: !5213)
!5260 = !{!"3274"}
!5261 = !DILocation(line: 223, column: 13, scope: !5213)
!5262 = !{!"3275"}
!5263 = !DILocation(line: 223, column: 26, scope: !5213)
!5264 = !{!"3276"}
!5265 = !DILocation(line: 224, column: 13, scope: !5213)
!5266 = !{!"3277"}
!5267 = !DILocation(line: 226, column: 15, scope: !3758)
!5268 = !{!"3278"}
!5269 = !{!"3279"}
!5270 = !DILocation(line: 227, column: 11, scope: !3758)
!5271 = !{!"3280"}
!5272 = !{!"3281"}
!5273 = !DILocation(line: 228, column: 11, scope: !3758)
!5274 = !{!"3282"}
!5275 = !{!"3283"}
!5276 = !DILocation(line: 123, column: 5, scope: !3759)
!5277 = distinct !{!5277, !5278, !5279}
!5278 = !DILocation(line: 123, column: 5, scope: !3760)
!5279 = !DILocation(line: 229, column: 5, scope: !3760)
!5280 = !{!"3284"}
!5281 = !DILocation(line: 230, column: 1, scope: !3601)
!5282 = !{!"3285"}
!5283 = distinct !DISubprogram(name: "crypto_stream_chacha20_ref_xor_ic", scope: !207, file: !207, line: 252, type: !2993, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !206, retainedNodes: !4)
!5284 = !{!"3286"}
!5285 = !{!"3287"}
!5286 = !DILocalVariable(name: "c", arg: 1, scope: !5283, file: !207, line: 252, type: !57)
!5287 = !DILocation(line: 0, scope: !5283)
!5288 = !{!"3288"}
!5289 = !DILocalVariable(name: "m", arg: 2, scope: !5283, file: !207, line: 252, type: !58)
!5290 = !{!"3289"}
!5291 = !DILocalVariable(name: "mlen", arg: 3, scope: !5283, file: !207, line: 253, type: !14)
!5292 = !{!"3290"}
!5293 = !DILocalVariable(name: "n", arg: 4, scope: !5283, file: !207, line: 254, type: !58)
!5294 = !{!"3291"}
!5295 = !DILocalVariable(name: "ic", arg: 5, scope: !5283, file: !207, line: 254, type: !2995)
!5296 = !{!"3292"}
!5297 = !DILocalVariable(name: "k", arg: 6, scope: !5283, file: !207, line: 255, type: !58)
!5298 = !{!"3293"}
!5299 = !DILocalVariable(name: "ctx", scope: !5283, file: !207, line: 257, type: !3044)
!5300 = !DILocation(line: 257, column: 23, scope: !5283)
!5301 = !{!"3294"}
!5302 = !DILocalVariable(name: "ic_bytes", scope: !5283, file: !207, line: 258, type: !5303)
!5303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 64, elements: !291)
!5304 = !DILocation(line: 258, column: 23, scope: !5283)
!5305 = !{!"3295"}
!5306 = !DILocation(line: 262, column: 10, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5283, file: !207, line: 262, column: 9)
!5308 = !{!"3296"}
!5309 = !DILocation(line: 262, column: 9, scope: !5283)
!5310 = !{!"3297"}
!5311 = !DILocation(line: 263, column: 9, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5307, file: !207, line: 262, column: 16)
!5313 = !{!"3298"}
!5314 = !DILocation(line: 265, column: 15, scope: !5283)
!5315 = !{!"3299"}
!5316 = !{!"3300"}
!5317 = !DILocalVariable(name: "ic_high", scope: !5283, file: !207, line: 259, type: !117)
!5318 = !{!"3301"}
!5319 = !DILocation(line: 266, column: 14, scope: !5283)
!5320 = !{!"3302"}
!5321 = !DILocalVariable(name: "ic_low", scope: !5283, file: !207, line: 260, type: !117)
!5322 = !{!"3303"}
!5323 = !DILocation(line: 267, column: 5, scope: !5283)
!5324 = !{!"3304"}
!5325 = !DILocation(line: 267, column: 5, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5283, file: !207, line: 267, column: 5)
!5327 = !{!"3305"}
!5328 = !{!"3306"}
!5329 = !{!"3307"}
!5330 = !{!"3308"}
!5331 = !{!"3309"}
!5332 = !{!"3310"}
!5333 = !{!"3311"}
!5334 = !{!"3312"}
!5335 = !{!"3313"}
!5336 = !{!"3314"}
!5337 = !{!"3315"}
!5338 = !{!"3316"}
!5339 = !{!"3317"}
!5340 = !{!"3318"}
!5341 = !{!"3319"}
!5342 = !{!"3320"}
!5343 = !{!"3321"}
!5344 = !{!"3322"}
!5345 = !{!"3323"}
!5346 = !{!"3324"}
!5347 = !{!"3325"}
!5348 = !{!"3326"}
!5349 = !{!"3327"}
!5350 = !{!"3328"}
!5351 = !{!"3329"}
!5352 = !{!"3330"}
!5353 = !{!"3331"}
!5354 = !{!"3332"}
!5355 = !{!"3333"}
!5356 = !{!"3334"}
!5357 = !{!"3335"}
!5358 = !{!"3336"}
!5359 = !DILocation(line: 268, column: 5, scope: !5283)
!5360 = !{!"3337"}
!5361 = !DILocation(line: 268, column: 5, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5283, file: !207, line: 268, column: 5)
!5363 = !{!"3338"}
!5364 = !{!"3339"}
!5365 = !{!"3340"}
!5366 = !{!"3341"}
!5367 = !{!"3342"}
!5368 = !{!"3343"}
!5369 = !{!"3344"}
!5370 = !{!"3345"}
!5371 = !{!"3346"}
!5372 = !{!"3347"}
!5373 = !{!"3348"}
!5374 = !{!"3349"}
!5375 = !{!"3350"}
!5376 = !{!"3351"}
!5377 = !{!"3352"}
!5378 = !{!"3353"}
!5379 = !{!"3354"}
!5380 = !{!"3355"}
!5381 = !{!"3356"}
!5382 = !{!"3357"}
!5383 = !{!"3358"}
!5384 = !{!"3359"}
!5385 = !{!"3360"}
!5386 = !{!"3361"}
!5387 = !{!"3362"}
!5388 = !{!"3363"}
!5389 = !{!"3364"}
!5390 = !{!"3365"}
!5391 = !{!"3366"}
!5392 = !{!"3367"}
!5393 = !{!"3368"}
!5394 = !{!"3369"}
!5395 = !DILocation(line: 269, column: 5, scope: !5283)
!5396 = !{!"3370"}
!5397 = !DILocation(line: 270, column: 29, scope: !5283)
!5398 = !{!"3371"}
!5399 = !DILocation(line: 270, column: 5, scope: !5283)
!5400 = !{!"3372"}
!5401 = !DILocation(line: 271, column: 5, scope: !5283)
!5402 = !{!"3373"}
!5403 = !DILocation(line: 272, column: 20, scope: !5283)
!5404 = !{!"3374"}
!5405 = !DILocation(line: 272, column: 5, scope: !5283)
!5406 = !{!"3375"}
!5407 = !DILocation(line: 273, column: 20, scope: !5283)
!5408 = !{!"3376"}
!5409 = !DILocation(line: 273, column: 5, scope: !5283)
!5410 = !{!"3377"}
!5411 = !DILocation(line: 275, column: 5, scope: !5283)
!5412 = !{!"3378"}
!5413 = !DILocation(line: 276, column: 1, scope: !5283)
!5414 = !{!"3379"}
!5415 = distinct !DISubprogram(name: "sodium_memzero", scope: !219, file: !219, line: 58, type: !147, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5416 = !DILocalVariable(name: "pnt", arg: 1, scope: !5415, file: !219, line: 58, type: !149)
!5417 = !DILocation(line: 0, scope: !5415)
!5418 = !{!"3380"}
!5419 = !DILocalVariable(name: "len", arg: 2, scope: !5415, file: !219, line: 58, type: !150)
!5420 = !{!"3381"}
!5421 = !DILocalVariable(name: "pnt_", scope: !5415, file: !219, line: 72, type: !221)
!5422 = !{!"3382"}
!5423 = !DILocalVariable(name: "i", scope: !5415, file: !219, line: 73, type: !122)
!5424 = !{!"3383"}
!5425 = !DILocation(line: 75, column: 5, scope: !5415)
!5426 = !{!"3384"}
!5427 = !{!"3385"}
!5428 = !{!"3386"}
!5429 = !DILocation(line: 75, column: 14, scope: !5415)
!5430 = !{!"3387"}
!5431 = !{!"3388"}
!5432 = !DILocation(line: 76, column: 15, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5415, file: !219, line: 75, column: 21)
!5434 = !{!"3389"}
!5435 = !{!"3390"}
!5436 = !DILocation(line: 76, column: 9, scope: !5433)
!5437 = !{!"3391"}
!5438 = !DILocation(line: 76, column: 19, scope: !5433)
!5439 = !{!"3392"}
!5440 = distinct !{!5440, !5425, !5441, !726}
!5441 = !DILocation(line: 77, column: 5, scope: !5415)
!5442 = !{!"3393"}
!5443 = !DILocation(line: 79, column: 1, scope: !5415)
!5444 = !{!"3394"}
!5445 = distinct !DISubprogram(name: "sodium_memcmp", scope: !219, file: !219, line: 82, type: !5446, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!56, !5448, !5448, !122}
!5448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5449)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!5451 = !DILocalVariable(name: "b1_", arg: 1, scope: !5445, file: !219, line: 82, type: !5448)
!5452 = !DILocation(line: 0, scope: !5445)
!5453 = !{!"3395"}
!5454 = !DILocalVariable(name: "b2_", arg: 2, scope: !5445, file: !219, line: 82, type: !5448)
!5455 = !{!"3396"}
!5456 = !DILocalVariable(name: "len", arg: 3, scope: !5445, file: !219, line: 82, type: !122)
!5457 = !{!"3397"}
!5458 = !DILocalVariable(name: "b1", scope: !5445, file: !219, line: 84, type: !58)
!5459 = !{!"3398"}
!5460 = !DILocalVariable(name: "b2", scope: !5445, file: !219, line: 85, type: !58)
!5461 = !{!"3399"}
!5462 = !DILocalVariable(name: "d", scope: !5445, file: !219, line: 87, type: !17)
!5463 = !{!"3400"}
!5464 = !DILocalVariable(name: "i", scope: !5445, file: !219, line: 86, type: !122)
!5465 = !{!"3401"}
!5466 = !DILocation(line: 89, column: 10, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5445, file: !219, line: 89, column: 5)
!5468 = !{!"3402"}
!5469 = !DILocation(line: 0, scope: !5467)
!5470 = !{!"3403"}
!5471 = !{!"3404"}
!5472 = !{!"3405"}
!5473 = !{!"3406"}
!5474 = !DILocation(line: 89, column: 20, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5467, file: !219, line: 89, column: 5)
!5476 = !{!"3407"}
!5477 = !DILocation(line: 89, column: 5, scope: !5467)
!5478 = !{!"3408"}
!5479 = !DILocation(line: 90, column: 14, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5475, file: !219, line: 89, column: 32)
!5481 = !{!"3409"}
!5482 = !{!"3410"}
!5483 = !{!"3411"}
!5484 = !DILocation(line: 90, column: 22, scope: !5480)
!5485 = !{!"3412"}
!5486 = !{!"3413"}
!5487 = !{!"3414"}
!5488 = !DILocation(line: 90, column: 20, scope: !5480)
!5489 = !{!"3415"}
!5490 = !DILocation(line: 90, column: 11, scope: !5480)
!5491 = !{!"3416"}
!5492 = !{!"3417"}
!5493 = !{!"3418"}
!5494 = !{!"3419"}
!5495 = !DILocation(line: 91, column: 5, scope: !5480)
!5496 = !{!"3420"}
!5497 = !DILocation(line: 89, column: 28, scope: !5475)
!5498 = !{!"3421"}
!5499 = !{!"3422"}
!5500 = !DILocation(line: 89, column: 5, scope: !5475)
!5501 = distinct !{!5501, !5477, !5502, !726}
!5502 = !DILocation(line: 91, column: 5, scope: !5467)
!5503 = !{!"3423"}
!5504 = !DILocation(line: 92, column: 26, scope: !5445)
!5505 = !{!"3424"}
!5506 = !DILocation(line: 92, column: 28, scope: !5445)
!5507 = !{!"3425"}
!5508 = !DILocation(line: 92, column: 33, scope: !5445)
!5509 = !{!"3426"}
!5510 = !DILocation(line: 92, column: 22, scope: !5445)
!5511 = !{!"3427"}
!5512 = !DILocation(line: 92, column: 40, scope: !5445)
!5513 = !{!"3428"}
!5514 = !DILocation(line: 92, column: 5, scope: !5445)
!5515 = !{!"3429"}
!5516 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !219, file: !219, line: 97, type: !5517, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5517 = !DISubroutineType(types: !5518)
!5518 = !{!5519, !5520, !150, !5521, !150}
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5519)
!5521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!5522 = !DILocalVariable(name: "hex", arg: 1, scope: !5516, file: !219, line: 97, type: !5520)
!5523 = !DILocation(line: 0, scope: !5516)
!5524 = !{!"3430"}
!5525 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !5516, file: !219, line: 97, type: !150)
!5526 = !{!"3431"}
!5527 = !DILocalVariable(name: "bin", arg: 3, scope: !5516, file: !219, line: 98, type: !5521)
!5528 = !{!"3432"}
!5529 = !DILocalVariable(name: "bin_len", arg: 4, scope: !5516, file: !219, line: 98, type: !150)
!5530 = !{!"3433"}
!5531 = !DILocalVariable(name: "i", scope: !5516, file: !219, line: 100, type: !122)
!5532 = !{!"3434"}
!5533 = !DILocation(line: 105, column: 17, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5516, file: !219, line: 105, column: 9)
!5535 = !{!"3435"}
!5536 = !DILocation(line: 105, column: 33, scope: !5534)
!5537 = !{!"3436"}
!5538 = !DILocation(line: 105, column: 57, scope: !5534)
!5539 = !{!"3437"}
!5540 = !DILocation(line: 105, column: 47, scope: !5534)
!5541 = !{!"3438"}
!5542 = !DILocation(line: 105, column: 9, scope: !5516)
!5543 = !{!"3439"}
!5544 = !DILocation(line: 106, column: 9, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5534, file: !219, line: 105, column: 63)
!5546 = !{!"3440"}
!5547 = !{!"3441"}
!5548 = !DILocation(line: 108, column: 5, scope: !5516)
!5549 = !{!"3442"}
!5550 = !{!"3443"}
!5551 = !{!"3444"}
!5552 = !DILocation(line: 108, column: 14, scope: !5516)
!5553 = !{!"3445"}
!5554 = !{!"3446"}
!5555 = !DILocation(line: 109, column: 13, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5516, file: !219, line: 108, column: 25)
!5557 = !{!"3447"}
!5558 = !{!"3448"}
!5559 = !{!"3449"}
!5560 = !DILocation(line: 109, column: 20, scope: !5556)
!5561 = !{!"3450"}
!5562 = !DILocalVariable(name: "c", scope: !5516, file: !219, line: 103, type: !56)
!5563 = !{!"3451"}
!5564 = !DILocation(line: 110, column: 13, scope: !5556)
!5565 = !{!"3452"}
!5566 = !{!"3453"}
!5567 = !{!"3454"}
!5568 = !DILocation(line: 110, column: 20, scope: !5556)
!5569 = !{!"3455"}
!5570 = !DILocalVariable(name: "b", scope: !5516, file: !219, line: 102, type: !56)
!5571 = !{!"3456"}
!5572 = !DILocation(line: 111, column: 34, scope: !5556)
!5573 = !{!"3457"}
!5574 = !DILocation(line: 111, column: 45, scope: !5556)
!5575 = !{!"3458"}
!5576 = !DILocation(line: 111, column: 52, scope: !5556)
!5577 = !{!"3459"}
!5578 = !DILocation(line: 111, column: 58, scope: !5556)
!5579 = !{!"3460"}
!5580 = !DILocation(line: 111, column: 38, scope: !5556)
!5581 = !{!"3461"}
!5582 = !DILocation(line: 111, column: 13, scope: !5556)
!5583 = !{!"3462"}
!5584 = !{!"3463"}
!5585 = !DILocation(line: 111, column: 67, scope: !5556)
!5586 = !{!"3464"}
!5587 = !DILocation(line: 112, column: 34, scope: !5556)
!5588 = !{!"3465"}
!5589 = !DILocation(line: 112, column: 45, scope: !5556)
!5590 = !{!"3466"}
!5591 = !DILocation(line: 112, column: 52, scope: !5556)
!5592 = !{!"3467"}
!5593 = !DILocation(line: 112, column: 58, scope: !5556)
!5594 = !{!"3468"}
!5595 = !DILocation(line: 112, column: 38, scope: !5556)
!5596 = !{!"3469"}
!5597 = !DILocation(line: 112, column: 13, scope: !5556)
!5598 = !{!"3470"}
!5599 = !{!"3471"}
!5600 = !DILocation(line: 111, column: 72, scope: !5556)
!5601 = !{!"3472"}
!5602 = !DILocalVariable(name: "x", scope: !5516, file: !219, line: 101, type: !121)
!5603 = !{!"3473"}
!5604 = !DILocation(line: 113, column: 23, scope: !5556)
!5605 = !{!"3474"}
!5606 = !DILocation(line: 113, column: 15, scope: !5556)
!5607 = !{!"3475"}
!5608 = !DILocation(line: 113, column: 9, scope: !5556)
!5609 = !{!"3476"}
!5610 = !DILocation(line: 113, column: 21, scope: !5556)
!5611 = !{!"3477"}
!5612 = !DILocation(line: 114, column: 11, scope: !5556)
!5613 = !{!"3478"}
!5614 = !{!"3479"}
!5615 = !DILocation(line: 115, column: 28, scope: !5556)
!5616 = !{!"3480"}
!5617 = !DILocation(line: 115, column: 15, scope: !5556)
!5618 = !{!"3481"}
!5619 = !DILocation(line: 115, column: 20, scope: !5556)
!5620 = !{!"3482"}
!5621 = !DILocation(line: 115, column: 9, scope: !5556)
!5622 = !{!"3483"}
!5623 = !DILocation(line: 115, column: 26, scope: !5556)
!5624 = !{!"3484"}
!5625 = !DILocation(line: 116, column: 10, scope: !5556)
!5626 = !{!"3485"}
!5627 = !{!"3486"}
!5628 = distinct !{!5628, !5548, !5629, !726}
!5629 = !DILocation(line: 117, column: 5, scope: !5516)
!5630 = !{!"3487"}
!5631 = !DILocation(line: 118, column: 11, scope: !5516)
!5632 = !{!"3488"}
!5633 = !DILocation(line: 118, column: 5, scope: !5516)
!5634 = !{!"3489"}
!5635 = !DILocation(line: 118, column: 17, scope: !5516)
!5636 = !{!"3490"}
!5637 = !DILocation(line: 120, column: 5, scope: !5516)
!5638 = !{!"3491"}
!5639 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !219, file: !219, line: 124, type: !5640, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!56, !2375, !150, !5642, !150, !5642, !5643, !5645}
!5642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!5643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5644)
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!5645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2887)
!5646 = !DILocalVariable(name: "bin", arg: 1, scope: !5639, file: !219, line: 124, type: !2375)
!5647 = !DILocation(line: 0, scope: !5639)
!5648 = !{!"3492"}
!5649 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !5639, file: !219, line: 124, type: !150)
!5650 = !{!"3493"}
!5651 = !DILocalVariable(name: "hex", arg: 3, scope: !5639, file: !219, line: 125, type: !5642)
!5652 = !{!"3494"}
!5653 = !DILocalVariable(name: "hex_len", arg: 4, scope: !5639, file: !219, line: 125, type: !150)
!5654 = !{!"3495"}
!5655 = !DILocalVariable(name: "ignore", arg: 5, scope: !5639, file: !219, line: 126, type: !5642)
!5656 = !{!"3496"}
!5657 = !DILocalVariable(name: "bin_len", arg: 6, scope: !5639, file: !219, line: 126, type: !5643)
!5658 = !{!"3497"}
!5659 = !DILocalVariable(name: "hex_end", arg: 7, scope: !5639, file: !219, line: 127, type: !5645)
!5660 = !{!"3498"}
!5661 = !DILocalVariable(name: "bin_pos", scope: !5639, file: !219, line: 129, type: !122)
!5662 = !{!"3499"}
!5663 = !DILocalVariable(name: "hex_pos", scope: !5639, file: !219, line: 130, type: !122)
!5664 = !{!"3500"}
!5665 = !DILocalVariable(name: "ret", scope: !5639, file: !219, line: 131, type: !56)
!5666 = !{!"3501"}
!5667 = !DILocalVariable(name: "c_acc", scope: !5639, file: !219, line: 133, type: !17)
!5668 = !{!"3502"}
!5669 = !DILocalVariable(name: "state", scope: !5639, file: !219, line: 137, type: !17)
!5670 = !{!"3503"}
!5671 = !DILocation(line: 139, column: 5, scope: !5639)
!5672 = !{!"3504"}
!5673 = !DILocation(line: 129, column: 19, scope: !5639)
!5674 = !{!"3505"}
!5675 = !{!"3506"}
!5676 = !{!"3507"}
!5677 = !{!"3508"}
!5678 = !{!"3509"}
!5679 = !{!"3510"}
!5680 = !{!"3511"}
!5681 = !{!"3512"}
!5682 = !DILocation(line: 139, column: 20, scope: !5639)
!5683 = !{!"3513"}
!5684 = !{!"3514"}
!5685 = !DILocation(line: 140, column: 29, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5639, file: !219, line: 139, column: 31)
!5687 = !{!"3515"}
!5688 = !{!"3516"}
!5689 = !DILocalVariable(name: "c", scope: !5639, file: !219, line: 132, type: !17)
!5690 = !{!"3517"}
!5691 = !DILocation(line: 141, column: 17, scope: !5686)
!5692 = !{!"3518"}
!5693 = !DILocation(line: 141, column: 19, scope: !5686)
!5694 = !{!"3519"}
!5695 = !{!"3520"}
!5696 = !DILocalVariable(name: "c_num", scope: !5639, file: !219, line: 135, type: !17)
!5697 = !{!"3521"}
!5698 = !DILocation(line: 142, column: 19, scope: !5686)
!5699 = !{!"3522"}
!5700 = !DILocation(line: 142, column: 25, scope: !5686)
!5701 = !{!"3523"}
!5702 = !DILocation(line: 142, column: 32, scope: !5686)
!5703 = !{!"3524"}
!5704 = !DILocation(line: 142, column: 18, scope: !5686)
!5705 = !{!"3525"}
!5706 = !DILocalVariable(name: "c_num0", scope: !5639, file: !219, line: 135, type: !17)
!5707 = !{!"3526"}
!5708 = !DILocation(line: 143, column: 20, scope: !5686)
!5709 = !{!"3527"}
!5710 = !DILocation(line: 143, column: 22, scope: !5686)
!5711 = !{!"3528"}
!5712 = !DILocation(line: 143, column: 30, scope: !5686)
!5713 = !{!"3529"}
!5714 = !DILocation(line: 143, column: 19, scope: !5686)
!5715 = !{!"3530"}
!5716 = !DILocalVariable(name: "c_alpha", scope: !5639, file: !219, line: 134, type: !17)
!5717 = !{!"3531"}
!5718 = !DILocation(line: 144, column: 22, scope: !5686)
!5719 = !{!"3532"}
!5720 = !DILocation(line: 144, column: 30, scope: !5686)
!5721 = !{!"3533"}
!5722 = !DILocation(line: 144, column: 40, scope: !5686)
!5723 = !{!"3534"}
!5724 = !DILocation(line: 144, column: 48, scope: !5686)
!5725 = !{!"3535"}
!5726 = !DILocation(line: 144, column: 37, scope: !5686)
!5727 = !{!"3536"}
!5728 = !DILocation(line: 144, column: 56, scope: !5686)
!5729 = !{!"3537"}
!5730 = !DILocation(line: 144, column: 20, scope: !5686)
!5731 = !{!"3538"}
!5732 = !DILocalVariable(name: "c_alpha0", scope: !5639, file: !219, line: 134, type: !17)
!5733 = !{!"3539"}
!5734 = !DILocation(line: 145, column: 14, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5686, file: !219, line: 145, column: 13)
!5736 = !{!"3540"}
!5737 = !DILocation(line: 145, column: 23, scope: !5735)
!5738 = !{!"3541"}
!5739 = !DILocation(line: 145, column: 21, scope: !5735)
!5740 = !{!"3542"}
!5741 = !DILocation(line: 145, column: 33, scope: !5735)
!5742 = !{!"3543"}
!5743 = !DILocation(line: 145, column: 13, scope: !5686)
!5744 = !{!"3544"}
!5745 = !DILocation(line: 146, column: 24, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5747, file: !219, line: 146, column: 17)
!5747 = distinct !DILexicalBlock(scope: !5735, file: !219, line: 145, column: 40)
!5748 = !{!"3545"}
!5749 = !DILocation(line: 146, column: 32, scope: !5746)
!5750 = !{!"3546"}
!5751 = !DILocation(line: 146, column: 35, scope: !5746)
!5752 = !{!"3547"}
!5753 = !DILocation(line: 146, column: 41, scope: !5746)
!5754 = !{!"3548"}
!5755 = !DILocation(line: 146, column: 47, scope: !5746)
!5756 = !{!"3549"}
!5757 = !DILocation(line: 146, column: 65, scope: !5746)
!5758 = !{!"3550"}
!5759 = !DILocation(line: 146, column: 50, scope: !5746)
!5760 = !{!"3551"}
!5761 = !DILocation(line: 146, column: 68, scope: !5746)
!5762 = !{!"3552"}
!5763 = !DILocation(line: 146, column: 17, scope: !5747)
!5764 = !{!"3553"}
!5765 = !DILocation(line: 147, column: 24, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5746, file: !219, line: 146, column: 77)
!5767 = !{!"3554"}
!5768 = !{!"3555"}
!5769 = !DILocation(line: 148, column: 17, scope: !5766)
!5770 = distinct !{!5770, !5671, !5771, !726}
!5771 = !DILocation(line: 165, column: 5, scope: !5639)
!5772 = !{!"3556"}
!5773 = !DILocation(line: 150, column: 13, scope: !5747)
!5774 = !{!"3557"}
!5775 = !DILocation(line: 152, column: 18, scope: !5686)
!5776 = !{!"3558"}
!5777 = !DILocation(line: 152, column: 27, scope: !5686)
!5778 = !{!"3559"}
!5779 = !DILocation(line: 152, column: 25, scope: !5686)
!5780 = !{!"3560"}
!5781 = !DILocation(line: 152, column: 37, scope: !5686)
!5782 = !{!"3561"}
!5783 = !DILocation(line: 152, column: 48, scope: !5686)
!5784 = !{!"3562"}
!5785 = !DILocation(line: 152, column: 46, scope: !5686)
!5786 = !{!"3563"}
!5787 = !DILocation(line: 152, column: 34, scope: !5686)
!5788 = !{!"3564"}
!5789 = !DILocation(line: 152, column: 17, scope: !5686)
!5790 = !{!"3565"}
!5791 = !DILocalVariable(name: "c_val", scope: !5639, file: !219, line: 136, type: !17)
!5792 = !{!"3566"}
!5793 = !DILocation(line: 153, column: 21, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5686, file: !219, line: 153, column: 13)
!5795 = !{!"3567"}
!5796 = !DILocation(line: 153, column: 13, scope: !5686)
!5797 = !{!"3568"}
!5798 = !{!"3569"}
!5799 = !DILocation(line: 155, column: 13, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5794, file: !219, line: 153, column: 36)
!5801 = !{!"3570"}
!5802 = !DILocation(line: 155, column: 19, scope: !5800)
!5803 = !{!"3571"}
!5804 = !DILocation(line: 156, column: 13, scope: !5800)
!5805 = !{!"3572"}
!5806 = !DILocation(line: 158, column: 13, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5686, file: !219, line: 158, column: 13)
!5808 = !{!"3573"}
!5809 = !DILocation(line: 158, column: 19, scope: !5807)
!5810 = !{!"3574"}
!5811 = !DILocation(line: 158, column: 13, scope: !5686)
!5812 = !{!"3575"}
!5813 = !DILocation(line: 159, column: 21, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5807, file: !219, line: 158, column: 26)
!5815 = !{!"3576"}
!5816 = !DILocation(line: 159, column: 27, scope: !5814)
!5817 = !{!"3577"}
!5818 = !{!"3578"}
!5819 = !{!"3579"}
!5820 = !DILocation(line: 160, column: 9, scope: !5814)
!5821 = !{!"3580"}
!5822 = !DILocation(line: 161, column: 30, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5807, file: !219, line: 160, column: 16)
!5824 = !{!"3581"}
!5825 = !DILocation(line: 161, column: 38, scope: !5823)
!5826 = !{!"3582"}
!5827 = !DILocation(line: 161, column: 36, scope: !5823)
!5828 = !{!"3583"}
!5829 = !{!"3584"}
!5830 = !DILocation(line: 161, column: 24, scope: !5823)
!5831 = !{!"3585"}
!5832 = !{!"3586"}
!5833 = !DILocation(line: 161, column: 13, scope: !5823)
!5834 = !{!"3587"}
!5835 = !DILocation(line: 161, column: 28, scope: !5823)
!5836 = !{!"3588"}
!5837 = !{!"3589"}
!5838 = !{!"3590"}
!5839 = !{!"3591"}
!5840 = !{!"3592"}
!5841 = !{!"3593"}
!5842 = !DILocation(line: 163, column: 18, scope: !5686)
!5843 = !{!"3594"}
!5844 = !DILocation(line: 163, column: 17, scope: !5686)
!5845 = !{!"3595"}
!5846 = !{!"3596"}
!5847 = !{!"3597"}
!5848 = !DILocation(line: 164, column: 16, scope: !5686)
!5849 = !{!"3598"}
!5850 = !{!"3599"}
!5851 = !{!"3600"}
!5852 = !{!"3601"}
!5853 = !{!"3602"}
!5854 = !DILocation(line: 166, column: 9, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5639, file: !219, line: 166, column: 9)
!5856 = !{!"3603"}
!5857 = !DILocation(line: 166, column: 15, scope: !5855)
!5858 = !{!"3604"}
!5859 = !DILocation(line: 166, column: 9, scope: !5639)
!5860 = !{!"3605"}
!5861 = !DILocation(line: 167, column: 16, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5855, file: !219, line: 166, column: 22)
!5863 = !{!"3606"}
!5864 = !{!"3607"}
!5865 = !DILocation(line: 168, column: 5, scope: !5862)
!5866 = !{!"3608"}
!5867 = !{!"3609"}
!5868 = !{!"3610"}
!5869 = !DILocation(line: 169, column: 17, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5639, file: !219, line: 169, column: 9)
!5871 = !{!"3611"}
!5872 = !DILocation(line: 169, column: 9, scope: !5639)
!5873 = !{!"3612"}
!5874 = !DILocation(line: 170, column: 21, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5870, file: !219, line: 169, column: 26)
!5876 = !{!"3613"}
!5877 = !DILocation(line: 170, column: 18, scope: !5875)
!5878 = !{!"3614"}
!5879 = !DILocation(line: 171, column: 5, scope: !5875)
!5880 = !{!"3615"}
!5881 = !DILocation(line: 172, column: 17, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5639, file: !219, line: 172, column: 9)
!5883 = !{!"3616"}
!5884 = !DILocation(line: 172, column: 9, scope: !5639)
!5885 = !{!"3617"}
!5886 = !DILocation(line: 173, column: 18, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5882, file: !219, line: 172, column: 26)
!5888 = !{!"3618"}
!5889 = !DILocation(line: 174, column: 5, scope: !5887)
!5890 = !{!"3619"}
!5891 = !DILocation(line: 175, column: 5, scope: !5639)
!5892 = !{!"3620"}
!5893 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !219, file: !219, line: 179, type: !153, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5894 = !{!"3621"}
!5895 = !DILocation(line: 196, column: 5, scope: !5893)
!5896 = !{!"3622"}
!5897 = !DILocation(line: 198, column: 5, scope: !5893)
!5898 = !{!"3623"}
!5899 = distinct !DISubprogram(name: "sodium_mlock", scope: !219, file: !219, line: 202, type: !2729, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5900 = !DILocalVariable(name: "addr", arg: 1, scope: !5899, file: !219, line: 202, type: !149)
!5901 = !DILocation(line: 0, scope: !5899)
!5902 = !{!"3624"}
!5903 = !DILocalVariable(name: "len", arg: 2, scope: !5899, file: !219, line: 202, type: !150)
!5904 = !{!"3625"}
!5905 = !DILocation(line: 212, column: 5, scope: !5899)
!5906 = !{!"3626"}
!5907 = !DILocation(line: 212, column: 11, scope: !5899)
!5908 = !{!"3627"}
!5909 = !DILocation(line: 213, column: 5, scope: !5899)
!5910 = !{!"3628"}
!5911 = distinct !DISubprogram(name: "sodium_munlock", scope: !219, file: !219, line: 218, type: !2729, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5912 = !DILocalVariable(name: "addr", arg: 1, scope: !5911, file: !219, line: 218, type: !149)
!5913 = !DILocation(line: 0, scope: !5911)
!5914 = !{!"3629"}
!5915 = !DILocalVariable(name: "len", arg: 2, scope: !5911, file: !219, line: 218, type: !150)
!5916 = !{!"3630"}
!5917 = !DILocation(line: 220, column: 5, scope: !5911)
!5918 = !{!"3631"}
!5919 = !DILocation(line: 229, column: 5, scope: !5911)
!5920 = !{!"3632"}
!5921 = !DILocation(line: 229, column: 11, scope: !5911)
!5922 = !{!"3633"}
!5923 = !DILocation(line: 230, column: 5, scope: !5911)
!5924 = !{!"3634"}
!5925 = distinct !DISubprogram(name: "sodium_malloc", scope: !219, file: !219, line: 402, type: !5926, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5926 = !DISubroutineType(types: !5927)
!5927 = !{!41, !150}
!5928 = !DILocalVariable(name: "size", arg: 1, scope: !5925, file: !219, line: 402, type: !150)
!5929 = !DILocation(line: 0, scope: !5925)
!5930 = !{!"3635"}
!5931 = !DILocation(line: 406, column: 16, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5925, file: !219, line: 406, column: 9)
!5933 = !{!"3636"}
!5934 = !DILocalVariable(name: "ptr", scope: !5925, file: !219, line: 404, type: !41)
!5935 = !{!"3637"}
!5936 = !DILocation(line: 406, column: 38, scope: !5932)
!5937 = !{!"3638"}
!5938 = !DILocation(line: 406, column: 9, scope: !5925)
!5939 = !{!"3639"}
!5940 = !DILocation(line: 407, column: 9, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5932, file: !219, line: 406, column: 47)
!5942 = !{!"3640"}
!5943 = !DILocation(line: 409, column: 5, scope: !5925)
!5944 = !{!"3641"}
!5945 = !DILocation(line: 411, column: 5, scope: !5925)
!5946 = !{!"3642"}
!5947 = !{!"3643"}
!5948 = !DILocation(line: 412, column: 1, scope: !5925)
!5949 = !{!"3644"}
!5950 = distinct !DISubprogram(name: "_sodium_malloc", scope: !219, file: !219, line: 353, type: !5926, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5951 = !DILocalVariable(name: "size", arg: 1, scope: !5950, file: !219, line: 353, type: !150)
!5952 = !DILocation(line: 0, scope: !5950)
!5953 = !{!"3645"}
!5954 = !DILocation(line: 355, column: 12, scope: !5950)
!5955 = !{!"3646"}
!5956 = !DILocation(line: 355, column: 5, scope: !5950)
!5957 = !{!"3647"}
!5958 = distinct !DISubprogram(name: "sodium_allocarray", scope: !219, file: !219, line: 415, type: !5959, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!41, !122, !122}
!5961 = !DILocalVariable(name: "count", arg: 1, scope: !5958, file: !219, line: 415, type: !122)
!5962 = !DILocation(line: 0, scope: !5958)
!5963 = !{!"3648"}
!5964 = !DILocalVariable(name: "size", arg: 2, scope: !5958, file: !219, line: 415, type: !122)
!5965 = !{!"3649"}
!5966 = !DILocation(line: 419, column: 15, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5958, file: !219, line: 419, column: 9)
!5968 = !{!"3650"}
!5969 = !DILocation(line: 419, column: 29, scope: !5967)
!5970 = !{!"3651"}
!5971 = !DILocation(line: 419, column: 58, scope: !5967)
!5972 = !{!"3652"}
!5973 = !DILocation(line: 419, column: 37, scope: !5967)
!5974 = !{!"3653"}
!5975 = !DILocation(line: 419, column: 9, scope: !5958)
!5976 = !{!"3654"}
!5977 = !DILocation(line: 420, column: 9, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5967, file: !219, line: 419, column: 67)
!5979 = !{!"3655"}
!5980 = !DILocation(line: 420, column: 15, scope: !5978)
!5981 = !{!"3656"}
!5982 = !DILocation(line: 421, column: 9, scope: !5978)
!5983 = !{!"3657"}
!5984 = !DILocation(line: 423, column: 24, scope: !5958)
!5985 = !{!"3658"}
!5986 = !DILocalVariable(name: "total_size", scope: !5958, file: !219, line: 417, type: !122)
!5987 = !{!"3659"}
!5988 = !DILocation(line: 425, column: 12, scope: !5958)
!5989 = !{!"3660"}
!5990 = !DILocation(line: 425, column: 5, scope: !5958)
!5991 = !{!"3661"}
!5992 = !{!"3662"}
!5993 = !DILocation(line: 426, column: 1, scope: !5958)
!5994 = !{!"3663"}
!5995 = distinct !DISubprogram(name: "sodium_free", scope: !219, file: !219, line: 430, type: !5996, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!5996 = !DISubroutineType(types: !5997)
!5997 = !{null, !41}
!5998 = !DILocalVariable(name: "ptr", arg: 1, scope: !5995, file: !219, line: 430, type: !41)
!5999 = !DILocation(line: 0, scope: !5995)
!6000 = !{!"3664"}
!6001 = !DILocation(line: 432, column: 5, scope: !5995)
!6002 = !{!"3665"}
!6003 = !DILocation(line: 433, column: 1, scope: !5995)
!6004 = !{!"3666"}
!6005 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !219, file: !219, line: 493, type: !6006, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!56, !41}
!6008 = !DILocalVariable(name: "ptr", arg: 1, scope: !6005, file: !219, line: 493, type: !41)
!6009 = !DILocation(line: 0, scope: !6005)
!6010 = !{!"3667"}
!6011 = !DILocation(line: 495, column: 12, scope: !6005)
!6012 = !{!"3668"}
!6013 = !DILocation(line: 495, column: 5, scope: !6005)
!6014 = !{!"3669"}
!6015 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !219, file: !219, line: 235, type: !6016, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !218, retainedNodes: !4)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!56, !41, !122}
!6018 = !DILocalVariable(name: "ptr", arg: 1, scope: !6015, file: !219, line: 235, type: !41)
!6019 = !DILocation(line: 0, scope: !6015)
!6020 = !{!"3670"}
!6021 = !DILocalVariable(name: "size", arg: 2, scope: !6015, file: !219, line: 235, type: !122)
!6022 = !{!"3671"}
!6023 = !DILocation(line: 243, column: 5, scope: !6015)
!6024 = !{!"3672"}
!6025 = !DILocation(line: 243, column: 11, scope: !6015)
!6026 = !{!"3673"}
!6027 = !DILocation(line: 244, column: 5, scope: !6015)
!6028 = !{!"3674"}
!6029 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !219, file: !219, line: 469, type: !6030, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !218, retainedNodes: !4)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!56, !41, !6032}
!6032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6016, size: 64)
!6033 = !DILocalVariable(name: "ptr", arg: 1, scope: !6029, file: !219, line: 469, type: !41)
!6034 = !DILocation(line: 0, scope: !6029)
!6035 = !{!"3675"}
!6036 = !DILocalVariable(name: "cb", arg: 2, scope: !6029, file: !219, line: 469, type: !6032)
!6037 = !{!"3676"}
!6038 = !DILocation(line: 473, column: 5, scope: !6029)
!6039 = !{!"3677"}
!6040 = !DILocation(line: 473, column: 11, scope: !6029)
!6041 = !{!"3678"}
!6042 = !DILocation(line: 474, column: 5, scope: !6029)
!6043 = !{!"3679"}
!6044 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !219, file: !219, line: 499, type: !6006, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!6045 = !DILocalVariable(name: "ptr", arg: 1, scope: !6044, file: !219, line: 499, type: !41)
!6046 = !DILocation(line: 0, scope: !6044)
!6047 = !{!"3680"}
!6048 = !DILocation(line: 501, column: 12, scope: !6044)
!6049 = !{!"3681"}
!6050 = !DILocation(line: 501, column: 5, scope: !6044)
!6051 = !{!"3682"}
!6052 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !219, file: !219, line: 249, type: !6016, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !218, retainedNodes: !4)
!6053 = !DILocalVariable(name: "ptr", arg: 1, scope: !6052, file: !219, line: 249, type: !41)
!6054 = !DILocation(line: 0, scope: !6052)
!6055 = !{!"3683"}
!6056 = !DILocalVariable(name: "size", arg: 2, scope: !6052, file: !219, line: 249, type: !122)
!6057 = !{!"3684"}
!6058 = !DILocation(line: 257, column: 5, scope: !6052)
!6059 = !{!"3685"}
!6060 = !DILocation(line: 257, column: 11, scope: !6052)
!6061 = !{!"3686"}
!6062 = !DILocation(line: 258, column: 5, scope: !6052)
!6063 = !{!"3687"}
!6064 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !219, file: !219, line: 505, type: !6006, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !218, retainedNodes: !4)
!6065 = !DILocalVariable(name: "ptr", arg: 1, scope: !6064, file: !219, line: 505, type: !41)
!6066 = !DILocation(line: 0, scope: !6064)
!6067 = !{!"3688"}
!6068 = !DILocation(line: 507, column: 12, scope: !6064)
!6069 = !{!"3689"}
!6070 = !DILocation(line: 507, column: 5, scope: !6064)
!6071 = !{!"3690"}
!6072 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !219, file: !219, line: 263, type: !6016, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !218, retainedNodes: !4)
!6073 = !DILocalVariable(name: "ptr", arg: 1, scope: !6072, file: !219, line: 263, type: !41)
!6074 = !DILocation(line: 0, scope: !6072)
!6075 = !{!"3691"}
!6076 = !DILocalVariable(name: "size", arg: 2, scope: !6072, file: !219, line: 263, type: !122)
!6077 = !{!"3692"}
!6078 = !DILocation(line: 271, column: 5, scope: !6072)
!6079 = !{!"3693"}
!6080 = !DILocation(line: 271, column: 11, scope: !6072)
!6081 = !{!"3694"}
!6082 = !DILocation(line: 272, column: 5, scope: !6072)
!6083 = !{!"3695"}
!6084 = distinct !DISubprogram(name: "crypto_verify_16", scope: !242, file: !242, line: 3, type: !6085, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !241, retainedNodes: !4)
!6085 = !DISubroutineType(types: !6086)
!6086 = !{!56, !58, !58}
!6087 = !DILocalVariable(name: "x", arg: 1, scope: !6084, file: !242, line: 3, type: !58)
!6088 = !DILocation(line: 0, scope: !6084)
!6089 = !{!"3696"}
!6090 = !DILocalVariable(name: "y", arg: 2, scope: !6084, file: !242, line: 3, type: !58)
!6091 = !{!"3697"}
!6092 = !DILocalVariable(name: "differentbits", scope: !6084, file: !242, line: 5, type: !121)
!6093 = !{!"3698"}
!6094 = !DILocation(line: 7, column: 3, scope: !6084)
!6095 = !{!"3699"}
!6096 = !{!"3700"}
!6097 = !{!"3701"}
!6098 = !{!"3702"}
!6099 = !{!"3703"}
!6100 = !{!"3704"}
!6101 = !{!"3705"}
!6102 = !{!"3706"}
!6103 = !{!"3707"}
!6104 = !DILocation(line: 8, column: 3, scope: !6084)
!6105 = !{!"3708"}
!6106 = !{!"3709"}
!6107 = !{!"3710"}
!6108 = !{!"3711"}
!6109 = !{!"3712"}
!6110 = !{!"3713"}
!6111 = !{!"3714"}
!6112 = !{!"3715"}
!6113 = !{!"3716"}
!6114 = !DILocation(line: 9, column: 3, scope: !6084)
!6115 = !{!"3717"}
!6116 = !{!"3718"}
!6117 = !{!"3719"}
!6118 = !{!"3720"}
!6119 = !{!"3721"}
!6120 = !{!"3722"}
!6121 = !{!"3723"}
!6122 = !{!"3724"}
!6123 = !{!"3725"}
!6124 = !DILocation(line: 10, column: 3, scope: !6084)
!6125 = !{!"3726"}
!6126 = !{!"3727"}
!6127 = !{!"3728"}
!6128 = !{!"3729"}
!6129 = !{!"3730"}
!6130 = !{!"3731"}
!6131 = !{!"3732"}
!6132 = !{!"3733"}
!6133 = !{!"3734"}
!6134 = !DILocation(line: 11, column: 3, scope: !6084)
!6135 = !{!"3735"}
!6136 = !{!"3736"}
!6137 = !{!"3737"}
!6138 = !{!"3738"}
!6139 = !{!"3739"}
!6140 = !{!"3740"}
!6141 = !{!"3741"}
!6142 = !{!"3742"}
!6143 = !{!"3743"}
!6144 = !DILocation(line: 12, column: 3, scope: !6084)
!6145 = !{!"3744"}
!6146 = !{!"3745"}
!6147 = !{!"3746"}
!6148 = !{!"3747"}
!6149 = !{!"3748"}
!6150 = !{!"3749"}
!6151 = !{!"3750"}
!6152 = !{!"3751"}
!6153 = !{!"3752"}
!6154 = !DILocation(line: 13, column: 3, scope: !6084)
!6155 = !{!"3753"}
!6156 = !{!"3754"}
!6157 = !{!"3755"}
!6158 = !{!"3756"}
!6159 = !{!"3757"}
!6160 = !{!"3758"}
!6161 = !{!"3759"}
!6162 = !{!"3760"}
!6163 = !{!"3761"}
!6164 = !DILocation(line: 14, column: 3, scope: !6084)
!6165 = !{!"3762"}
!6166 = !{!"3763"}
!6167 = !{!"3764"}
!6168 = !{!"3765"}
!6169 = !{!"3766"}
!6170 = !{!"3767"}
!6171 = !{!"3768"}
!6172 = !{!"3769"}
!6173 = !{!"3770"}
!6174 = !DILocation(line: 15, column: 3, scope: !6084)
!6175 = !{!"3771"}
!6176 = !{!"3772"}
!6177 = !{!"3773"}
!6178 = !{!"3774"}
!6179 = !{!"3775"}
!6180 = !{!"3776"}
!6181 = !{!"3777"}
!6182 = !{!"3778"}
!6183 = !{!"3779"}
!6184 = !DILocation(line: 16, column: 3, scope: !6084)
!6185 = !{!"3780"}
!6186 = !{!"3781"}
!6187 = !{!"3782"}
!6188 = !{!"3783"}
!6189 = !{!"3784"}
!6190 = !{!"3785"}
!6191 = !{!"3786"}
!6192 = !{!"3787"}
!6193 = !{!"3788"}
!6194 = !DILocation(line: 17, column: 3, scope: !6084)
!6195 = !{!"3789"}
!6196 = !{!"3790"}
!6197 = !{!"3791"}
!6198 = !{!"3792"}
!6199 = !{!"3793"}
!6200 = !{!"3794"}
!6201 = !{!"3795"}
!6202 = !{!"3796"}
!6203 = !{!"3797"}
!6204 = !DILocation(line: 18, column: 3, scope: !6084)
!6205 = !{!"3798"}
!6206 = !{!"3799"}
!6207 = !{!"3800"}
!6208 = !{!"3801"}
!6209 = !{!"3802"}
!6210 = !{!"3803"}
!6211 = !{!"3804"}
!6212 = !{!"3805"}
!6213 = !{!"3806"}
!6214 = !DILocation(line: 19, column: 3, scope: !6084)
!6215 = !{!"3807"}
!6216 = !{!"3808"}
!6217 = !{!"3809"}
!6218 = !{!"3810"}
!6219 = !{!"3811"}
!6220 = !{!"3812"}
!6221 = !{!"3813"}
!6222 = !{!"3814"}
!6223 = !{!"3815"}
!6224 = !DILocation(line: 20, column: 3, scope: !6084)
!6225 = !{!"3816"}
!6226 = !{!"3817"}
!6227 = !{!"3818"}
!6228 = !{!"3819"}
!6229 = !{!"3820"}
!6230 = !{!"3821"}
!6231 = !{!"3822"}
!6232 = !{!"3823"}
!6233 = !{!"3824"}
!6234 = !DILocation(line: 21, column: 3, scope: !6084)
!6235 = !{!"3825"}
!6236 = !{!"3826"}
!6237 = !{!"3827"}
!6238 = !{!"3828"}
!6239 = !{!"3829"}
!6240 = !{!"3830"}
!6241 = !{!"3831"}
!6242 = !{!"3832"}
!6243 = !{!"3833"}
!6244 = !DILocation(line: 22, column: 3, scope: !6084)
!6245 = !{!"3834"}
!6246 = !{!"3835"}
!6247 = !{!"3836"}
!6248 = !{!"3837"}
!6249 = !{!"3838"}
!6250 = !{!"3839"}
!6251 = !{!"3840"}
!6252 = !{!"3841"}
!6253 = !{!"3842"}
!6254 = !DILocation(line: 23, column: 31, scope: !6084)
!6255 = !{!"3843"}
!6256 = !DILocation(line: 23, column: 36, scope: !6084)
!6257 = !{!"3844"}
!6258 = !DILocation(line: 23, column: 13, scope: !6084)
!6259 = !{!"3845"}
!6260 = !DILocation(line: 23, column: 43, scope: !6084)
!6261 = !{!"3846"}
!6262 = !DILocation(line: 23, column: 3, scope: !6084)
!6263 = !{!"3847"}
!6264 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_verify", scope: !244, file: !244, line: 6, type: !62, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !243, retainedNodes: !4)
!6265 = !{!"3848"}
!6266 = !DILocalVariable(name: "h", arg: 1, scope: !6264, file: !244, line: 6, type: !58)
!6267 = !DILocation(line: 0, scope: !6264)
!6268 = !{!"3849"}
!6269 = !DILocalVariable(name: "in", arg: 2, scope: !6264, file: !244, line: 7, type: !58)
!6270 = !{!"3850"}
!6271 = !DILocalVariable(name: "inlen", arg: 3, scope: !6264, file: !244, line: 8, type: !14)
!6272 = !{!"3851"}
!6273 = !DILocalVariable(name: "k", arg: 4, scope: !6264, file: !244, line: 9, type: !58)
!6274 = !{!"3852"}
!6275 = !DILocalVariable(name: "correct", scope: !6264, file: !244, line: 11, type: !37)
!6276 = !DILocation(line: 11, column: 19, scope: !6264)
!6277 = !{!"3853"}
!6278 = !DILocation(line: 13, column: 39, scope: !6264)
!6279 = !{!"3854"}
!6280 = !DILocation(line: 13, column: 5, scope: !6264)
!6281 = !{!"3855"}
!6282 = !DILocation(line: 14, column: 31, scope: !6264)
!6283 = !{!"3856"}
!6284 = !DILocation(line: 14, column: 12, scope: !6264)
!6285 = !{!"3857"}
!6286 = !DILocation(line: 14, column: 5, scope: !6264)
!6287 = !{!"3858"}
