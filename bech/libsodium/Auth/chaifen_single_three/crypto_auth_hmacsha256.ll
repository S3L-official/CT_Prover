; ModuleID = 'crypto_auth_hmacsha256.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i64)*, i32 ()* }
%struct.SysRandom_ = type { i32, i32, i32 }
%struct.smack_value = type { i8* }
%struct.crypto_hash_sha256_state = type { [8 x i32], [2 x i32], [64 x i8] }
%struct.crypto_auth_hmacsha256_state = type { %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@PAD = internal global <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16, !dbg !0
@implementation = internal global %struct.randombytes_implementation* @randombytes_sysrandom_implementation, align 8, !dbg !23
@.str = private unnamed_addr constant [20 x i8] c"buf_len <= SIZE_MAX\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"../libsodium/src/libsodium/randombytes/randombytes.c\00", align 1
@__PRETTY_FUNCTION__.randombytes = private unnamed_addr constant [65 x i8] c"void randombytes(unsigned char *const, const unsigned long long)\00", align 1
@randombytes_sysrandom_implementation = dso_local global %struct.randombytes_implementation { i8* ()* @randombytes_sysrandom_implementation_name, i32 ()* @randombytes_sysrandom, void ()* @randombytes_sysrandom_stir, i32 (i32)* null, void (i8*, i64)* @randombytes_sysrandom_buf, i32 ()* @randombytes_sysrandom_close }, align 8, !dbg !69
@stream = internal global %struct.SysRandom_ { i32 -1, i32 0, i32 0 }, align 4, !dbg !80
@.str.6 = private unnamed_addr constant [19 x i8] c"size > (size_t) 0U\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c\00", align 1
@__PRETTY_FUNCTION__.safe_read = private unnamed_addr constant [50 x i8] c"ssize_t safe_read(const int, void *const, size_t)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"chunk_size > (size_t) 0U\00", align 1
@__PRETTY_FUNCTION__.randombytes_linux_getrandom = private unnamed_addr constant [53 x i8] c"int randombytes_linux_getrandom(void *const, size_t)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"size <= 256U\00", align 1
@__PRETTY_FUNCTION__._randombytes_linux_getrandom = private unnamed_addr constant [60 x i8] c"int _randombytes_linux_getrandom(void *const, const size_t)\00", align 1
@randombytes_sysrandom_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16, !dbg !88
@.str.1.5 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sysrandom\00", align 1
@canary = internal global [16 x i8] zeroinitializer, align 16, !dbg !102

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_auth_hmacsha256_wrapper(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !124 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i8* %1, metadata !129, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i64 %2, metadata !130, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i8* %3, metadata !131, metadata !DIExpression()), !dbg !128
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !132
  call void @public_in(%struct.smack_value* %5), !dbg !133
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !134
  call void @public_in(%struct.smack_value* %6), !dbg !135
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !136
  call void @public_in(%struct.smack_value* %7), !dbg !137
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !138
  call void @public_in(%struct.smack_value* %8), !dbg !139
  %9 = call i32 @crypto_auth_hmacsha256(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !140
  ret i32 %9, !dbg !141
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_auth_hmacsha256_wrapper_t() #0 !dbg !142 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !143, metadata !DIExpression()), !dbg !144
  %4 = call zeroext i8 (...) @gout(), !dbg !145
  store i8 %4, i8* %1, align 1, !dbg !144
  call void @llvm.dbg.declare(metadata i8* %2, metadata !146, metadata !DIExpression()), !dbg !147
  %5 = call zeroext i8 (...) @gin(), !dbg !148
  store i8 %5, i8* %2, align 1, !dbg !147
  call void @llvm.dbg.declare(metadata i8* %3, metadata !149, metadata !DIExpression()), !dbg !150
  %6 = call zeroext i8 (...) @gk(), !dbg !151
  store i8 %6, i8* %3, align 1, !dbg !150
  %7 = call zeroext i8 (...) @gc(), !dbg !152
  call void @llvm.dbg.value(metadata i8 %7, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i8* %1, metadata !155, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i8* %2, metadata !156, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i8* %3, metadata !157, metadata !DIExpression()), !dbg !154
  %8 = call i64 (...) @gclen(), !dbg !158
  call void @llvm.dbg.value(metadata i64 %8, metadata !159, metadata !DIExpression()), !dbg !154
  %9 = call i32 @crypto_auth_hmacsha256(i8* %1, i8* %2, i64 %8, i8* %3), !dbg !160
  ret void, !dbg !161
}

declare dso_local zeroext i8 @gout(...) #2

declare dso_local zeroext i8 @gin(...) #2

declare dso_local zeroext i8 @gk(...) #2

declare dso_local zeroext i8 @gc(...) #2

declare dso_local i64 @gclen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha256_init(%struct.crypto_hash_sha256_state* %0) #0 !dbg !162 {
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha256_state* %0, metadata !179, metadata !DIExpression()), !dbg !180
  %2 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !181
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1, !dbg !182
  store i32 0, i32* %3, align 4, !dbg !183
  %4 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !184
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !185
  store i32 0, i32* %5, align 4, !dbg !186
  %6 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !187
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !188
  store i32 1779033703, i32* %7, align 4, !dbg !189
  %8 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !190
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1, !dbg !191
  store i32 -1150833019, i32* %9, align 4, !dbg !192
  %10 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !193
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2, !dbg !194
  store i32 1013904242, i32* %11, align 4, !dbg !195
  %12 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !196
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3, !dbg !197
  store i32 -1521486534, i32* %13, align 4, !dbg !198
  %14 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !199
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 4, !dbg !200
  store i32 1359893119, i32* %15, align 4, !dbg !201
  %16 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !202
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5, !dbg !203
  store i32 -1694144372, i32* %17, align 4, !dbg !204
  %18 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !205
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 6, !dbg !206
  store i32 528734635, i32* %19, align 4, !dbg !207
  %20 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !208
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 7, !dbg !209
  store i32 1541459225, i32* %21, align 4, !dbg !210
  ret i32 0, !dbg !211
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %0, i8* %1, i64 %2) #0 !dbg !212 {
  %4 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha256_state* %0, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i8* %1, metadata !217, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i64 %2, metadata !218, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata [2 x i32]* %4, metadata !219, metadata !DIExpression()), !dbg !220
  %5 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !221
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !222
  %7 = load i32, i32* %6, align 4, !dbg !222
  %8 = lshr i32 %7, 3, !dbg !223
  %9 = and i32 %8, 63, !dbg !224
  call void @llvm.dbg.value(metadata i32 %9, metadata !225, metadata !DIExpression()), !dbg !216
  %10 = trunc i64 %2 to i32, !dbg !226
  %11 = shl i32 %10, 3, !dbg !227
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !228
  store i32 %11, i32* %12, align 4, !dbg !229
  %13 = lshr i64 %2, 29, !dbg !230
  %14 = trunc i64 %13 to i32, !dbg !231
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !232
  store i32 %14, i32* %15, align 4, !dbg !233
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !234
  %17 = load i32, i32* %16, align 4, !dbg !234
  %18 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !236
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1, !dbg !237
  %20 = load i32, i32* %19, align 4, !dbg !238
  %21 = add i32 %20, %17, !dbg !238
  store i32 %21, i32* %19, align 4, !dbg !238
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !239
  %23 = load i32, i32* %22, align 4, !dbg !239
  %24 = icmp ult i32 %21, %23, !dbg !240
  br i1 %24, label %25, label %30, !dbg !241

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !242
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0, !dbg !244
  %28 = load i32, i32* %27, align 4, !dbg !245
  %29 = add i32 %28, 1, !dbg !245
  store i32 %29, i32* %27, align 4, !dbg !245
  br label %30, !dbg !246

30:                                               ; preds = %25, %3
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !247
  %32 = load i32, i32* %31, align 4, !dbg !247
  %33 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !248
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0, !dbg !249
  %35 = load i32, i32* %34, align 4, !dbg !250
  %36 = add i32 %35, %32, !dbg !250
  store i32 %36, i32* %34, align 4, !dbg !250
  %37 = sub i32 64, %9, !dbg !251
  %38 = zext i32 %37 to i64, !dbg !253
  %39 = icmp ult i64 %2, %38, !dbg !254
  br i1 %39, label %40, label %44, !dbg !255

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 2, !dbg !256
  %42 = zext i32 %9 to i64, !dbg !258
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %41, i64 0, i64 %42, !dbg !258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %1, i64 %2, i1 false), !dbg !259
  br label %70, !dbg !260

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 2, !dbg !261
  %46 = zext i32 %9 to i64, !dbg !262
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %45, i64 0, i64 %46, !dbg !262
  %48 = sub i32 64, %9, !dbg !263
  %49 = zext i32 %48 to i64, !dbg !264
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %1, i64 %49, i1 false), !dbg !265
  %50 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !266
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %50, i64 0, i64 0, !dbg !267
  %52 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 2, !dbg !268
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %52, i64 0, i64 0, !dbg !269
  call void @SHA256_Transform(i32* %51, i8* %53), !dbg !270
  %54 = sub i32 64, %9, !dbg !271
  %55 = zext i32 %54 to i64, !dbg !272
  %56 = getelementptr inbounds i8, i8* %1, i64 %55, !dbg !272
  call void @llvm.dbg.value(metadata i8* %56, metadata !217, metadata !DIExpression()), !dbg !216
  %57 = sub i32 64, %9, !dbg !273
  %58 = zext i32 %57 to i64, !dbg !274
  %59 = sub i64 %2, %58, !dbg !275
  call void @llvm.dbg.value(metadata i64 %59, metadata !218, metadata !DIExpression()), !dbg !216
  br label %60, !dbg !276

60:                                               ; preds = %62, %44
  %.02 = phi i8* [ %56, %44 ], [ %65, %62 ], !dbg !216
  %.01 = phi i64 [ %59, %44 ], [ %66, %62 ], !dbg !216
  call void @llvm.dbg.value(metadata i64 %.01, metadata !218, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i8* %.02, metadata !217, metadata !DIExpression()), !dbg !216
  %61 = icmp uge i64 %.01, 64, !dbg !277
  br i1 %61, label %62, label %67, !dbg !276

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !278
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %63, i64 0, i64 0, !dbg !280
  call void @SHA256_Transform(i32* %64, i8* %.02), !dbg !281
  %65 = getelementptr inbounds i8, i8* %.02, i64 64, !dbg !282
  call void @llvm.dbg.value(metadata i8* %65, metadata !217, metadata !DIExpression()), !dbg !216
  %66 = sub i64 %.01, 64, !dbg !283
  call void @llvm.dbg.value(metadata i64 %66, metadata !218, metadata !DIExpression()), !dbg !216
  br label %60, !dbg !276, !llvm.loop !284

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 2, !dbg !287
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %68, i64 0, i64 0, !dbg !288
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 1 %.02, i64 %.01, i1 false), !dbg !288
  br label %70, !dbg !289

70:                                               ; preds = %67, %40
  ret i32 0, !dbg !290
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @SHA256_Transform(i32* %0, i8* %1) #0 !dbg !291 {
  %3 = alloca [64 x i32], align 16
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.value(metadata i8* %1, metadata !297, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata [64 x i32]* %3, metadata !298, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata [8 x i32]* %4, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %5, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %6, metadata !305, metadata !DIExpression()), !dbg !306
  %7 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !307
  call void @be32dec_vect(i32* %7, i8* %1, i64 64), !dbg !308
  call void @llvm.dbg.value(metadata i32 16, metadata !309, metadata !DIExpression()), !dbg !296
  br label %8, !dbg !310

8:                                                ; preds = %82, %2
  %.0 = phi i32 [ 16, %2 ], [ %83, %82 ], !dbg !312
  call void @llvm.dbg.value(metadata i32 %.0, metadata !309, metadata !DIExpression()), !dbg !296
  %9 = icmp slt i32 %.0, 64, !dbg !313
  br i1 %9, label %10, label %84, !dbg !315

10:                                               ; preds = %8
  %11 = sub nsw i32 %.0, 2, !dbg !316
  %12 = sext i32 %11 to i64, !dbg !316
  %13 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %12, !dbg !316
  %14 = load i32, i32* %13, align 4, !dbg !316
  %15 = lshr i32 %14, 17, !dbg !316
  %16 = sub nsw i32 %.0, 2, !dbg !316
  %17 = sext i32 %16 to i64, !dbg !316
  %18 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %17, !dbg !316
  %19 = load i32, i32* %18, align 4, !dbg !316
  %20 = shl i32 %19, 15, !dbg !316
  %21 = or i32 %15, %20, !dbg !316
  %22 = sub nsw i32 %.0, 2, !dbg !316
  %23 = sext i32 %22 to i64, !dbg !316
  %24 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %23, !dbg !316
  %25 = load i32, i32* %24, align 4, !dbg !316
  %26 = lshr i32 %25, 19, !dbg !316
  %27 = sub nsw i32 %.0, 2, !dbg !316
  %28 = sext i32 %27 to i64, !dbg !316
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %28, !dbg !316
  %30 = load i32, i32* %29, align 4, !dbg !316
  %31 = shl i32 %30, 13, !dbg !316
  %32 = or i32 %26, %31, !dbg !316
  %33 = xor i32 %21, %32, !dbg !316
  %34 = sub nsw i32 %.0, 2, !dbg !316
  %35 = sext i32 %34 to i64, !dbg !316
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %35, !dbg !316
  %37 = load i32, i32* %36, align 4, !dbg !316
  %38 = lshr i32 %37, 10, !dbg !316
  %39 = xor i32 %33, %38, !dbg !316
  %40 = sub nsw i32 %.0, 7, !dbg !318
  %41 = sext i32 %40 to i64, !dbg !319
  %42 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %41, !dbg !319
  %43 = load i32, i32* %42, align 4, !dbg !319
  %44 = add i32 %39, %43, !dbg !320
  %45 = sub nsw i32 %.0, 15, !dbg !321
  %46 = sext i32 %45 to i64, !dbg !321
  %47 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %46, !dbg !321
  %48 = load i32, i32* %47, align 4, !dbg !321
  %49 = lshr i32 %48, 7, !dbg !321
  %50 = sub nsw i32 %.0, 15, !dbg !321
  %51 = sext i32 %50 to i64, !dbg !321
  %52 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %51, !dbg !321
  %53 = load i32, i32* %52, align 4, !dbg !321
  %54 = shl i32 %53, 25, !dbg !321
  %55 = or i32 %49, %54, !dbg !321
  %56 = sub nsw i32 %.0, 15, !dbg !321
  %57 = sext i32 %56 to i64, !dbg !321
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %57, !dbg !321
  %59 = load i32, i32* %58, align 4, !dbg !321
  %60 = lshr i32 %59, 18, !dbg !321
  %61 = sub nsw i32 %.0, 15, !dbg !321
  %62 = sext i32 %61 to i64, !dbg !321
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %62, !dbg !321
  %64 = load i32, i32* %63, align 4, !dbg !321
  %65 = shl i32 %64, 14, !dbg !321
  %66 = or i32 %60, %65, !dbg !321
  %67 = xor i32 %55, %66, !dbg !321
  %68 = sub nsw i32 %.0, 15, !dbg !321
  %69 = sext i32 %68 to i64, !dbg !321
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %69, !dbg !321
  %71 = load i32, i32* %70, align 4, !dbg !321
  %72 = lshr i32 %71, 3, !dbg !321
  %73 = xor i32 %67, %72, !dbg !321
  %74 = add i32 %44, %73, !dbg !322
  %75 = sub nsw i32 %.0, 16, !dbg !323
  %76 = sext i32 %75 to i64, !dbg !324
  %77 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %76, !dbg !324
  %78 = load i32, i32* %77, align 4, !dbg !324
  %79 = add i32 %74, %78, !dbg !325
  %80 = sext i32 %.0 to i64, !dbg !326
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %80, !dbg !326
  store i32 %79, i32* %81, align 4, !dbg !327
  br label %82, !dbg !328

82:                                               ; preds = %10
  %83 = add nsw i32 %.0, 1, !dbg !329
  call void @llvm.dbg.value(metadata i32 %83, metadata !309, metadata !DIExpression()), !dbg !296
  br label %8, !dbg !330, !llvm.loop !331

84:                                               ; preds = %8
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !333
  %86 = bitcast i32* %85 to i8*, !dbg !333
  %87 = bitcast i32* %0 to i8*, !dbg !333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %86, i8* align 4 %87, i64 32, i1 false), !dbg !333
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !334
  %89 = load i32, i32* %88, align 4, !dbg !334
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !334
  %91 = load i32, i32* %90, align 16, !dbg !334
  %92 = lshr i32 %91, 6, !dbg !334
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !334
  %94 = load i32, i32* %93, align 16, !dbg !334
  %95 = shl i32 %94, 26, !dbg !334
  %96 = or i32 %92, %95, !dbg !334
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !334
  %98 = load i32, i32* %97, align 16, !dbg !334
  %99 = lshr i32 %98, 11, !dbg !334
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !334
  %101 = load i32, i32* %100, align 16, !dbg !334
  %102 = shl i32 %101, 21, !dbg !334
  %103 = or i32 %99, %102, !dbg !334
  %104 = xor i32 %96, %103, !dbg !334
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !334
  %106 = load i32, i32* %105, align 16, !dbg !334
  %107 = lshr i32 %106, 25, !dbg !334
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !334
  %109 = load i32, i32* %108, align 16, !dbg !334
  %110 = shl i32 %109, 7, !dbg !334
  %111 = or i32 %107, %110, !dbg !334
  %112 = xor i32 %104, %111, !dbg !334
  %113 = add i32 %89, %112, !dbg !334
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !334
  %115 = load i32, i32* %114, align 16, !dbg !334
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !334
  %117 = load i32, i32* %116, align 4, !dbg !334
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !334
  %119 = load i32, i32* %118, align 8, !dbg !334
  %120 = xor i32 %117, %119, !dbg !334
  %121 = and i32 %115, %120, !dbg !334
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !334
  %123 = load i32, i32* %122, align 8, !dbg !334
  %124 = xor i32 %121, %123, !dbg !334
  %125 = add i32 %113, %124, !dbg !334
  %126 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !334
  %127 = load i32, i32* %126, align 16, !dbg !334
  %128 = add i32 %125, %127, !dbg !334
  %129 = add i32 %128, 1116352408, !dbg !334
  store i32 %129, i32* %5, align 4, !dbg !334
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !334
  %131 = load i32, i32* %130, align 16, !dbg !334
  %132 = lshr i32 %131, 2, !dbg !334
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !334
  %134 = load i32, i32* %133, align 16, !dbg !334
  %135 = shl i32 %134, 30, !dbg !334
  %136 = or i32 %132, %135, !dbg !334
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !334
  %138 = load i32, i32* %137, align 16, !dbg !334
  %139 = lshr i32 %138, 13, !dbg !334
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !334
  %141 = load i32, i32* %140, align 16, !dbg !334
  %142 = shl i32 %141, 19, !dbg !334
  %143 = or i32 %139, %142, !dbg !334
  %144 = xor i32 %136, %143, !dbg !334
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !334
  %146 = load i32, i32* %145, align 16, !dbg !334
  %147 = lshr i32 %146, 22, !dbg !334
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !334
  %149 = load i32, i32* %148, align 16, !dbg !334
  %150 = shl i32 %149, 10, !dbg !334
  %151 = or i32 %147, %150, !dbg !334
  %152 = xor i32 %144, %151, !dbg !334
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !334
  %154 = load i32, i32* %153, align 16, !dbg !334
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !334
  %156 = load i32, i32* %155, align 4, !dbg !334
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !334
  %158 = load i32, i32* %157, align 8, !dbg !334
  %159 = or i32 %156, %158, !dbg !334
  %160 = and i32 %154, %159, !dbg !334
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !334
  %162 = load i32, i32* %161, align 4, !dbg !334
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !334
  %164 = load i32, i32* %163, align 8, !dbg !334
  %165 = and i32 %162, %164, !dbg !334
  %166 = or i32 %160, %165, !dbg !334
  %167 = add i32 %152, %166, !dbg !334
  store i32 %167, i32* %6, align 4, !dbg !334
  %168 = load i32, i32* %5, align 4, !dbg !334
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !334
  %170 = load i32, i32* %169, align 4, !dbg !334
  %171 = add i32 %170, %168, !dbg !334
  store i32 %171, i32* %169, align 4, !dbg !334
  %172 = load i32, i32* %5, align 4, !dbg !334
  %173 = load i32, i32* %6, align 4, !dbg !334
  %174 = add i32 %172, %173, !dbg !334
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !334
  store i32 %174, i32* %175, align 4, !dbg !334
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !335
  %177 = load i32, i32* %176, align 8, !dbg !335
  %178 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !335
  %179 = load i32, i32* %178, align 4, !dbg !335
  %180 = lshr i32 %179, 6, !dbg !335
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !335
  %182 = load i32, i32* %181, align 4, !dbg !335
  %183 = shl i32 %182, 26, !dbg !335
  %184 = or i32 %180, %183, !dbg !335
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !335
  %186 = load i32, i32* %185, align 4, !dbg !335
  %187 = lshr i32 %186, 11, !dbg !335
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !335
  %189 = load i32, i32* %188, align 4, !dbg !335
  %190 = shl i32 %189, 21, !dbg !335
  %191 = or i32 %187, %190, !dbg !335
  %192 = xor i32 %184, %191, !dbg !335
  %193 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !335
  %194 = load i32, i32* %193, align 4, !dbg !335
  %195 = lshr i32 %194, 25, !dbg !335
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !335
  %197 = load i32, i32* %196, align 4, !dbg !335
  %198 = shl i32 %197, 7, !dbg !335
  %199 = or i32 %195, %198, !dbg !335
  %200 = xor i32 %192, %199, !dbg !335
  %201 = add i32 %177, %200, !dbg !335
  %202 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !335
  %203 = load i32, i32* %202, align 4, !dbg !335
  %204 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !335
  %205 = load i32, i32* %204, align 16, !dbg !335
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !335
  %207 = load i32, i32* %206, align 4, !dbg !335
  %208 = xor i32 %205, %207, !dbg !335
  %209 = and i32 %203, %208, !dbg !335
  %210 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !335
  %211 = load i32, i32* %210, align 4, !dbg !335
  %212 = xor i32 %209, %211, !dbg !335
  %213 = add i32 %201, %212, !dbg !335
  %214 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 1, !dbg !335
  %215 = load i32, i32* %214, align 4, !dbg !335
  %216 = add i32 %213, %215, !dbg !335
  %217 = add i32 %216, 1899447441, !dbg !335
  store i32 %217, i32* %5, align 4, !dbg !335
  %218 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !335
  %219 = load i32, i32* %218, align 4, !dbg !335
  %220 = lshr i32 %219, 2, !dbg !335
  %221 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !335
  %222 = load i32, i32* %221, align 4, !dbg !335
  %223 = shl i32 %222, 30, !dbg !335
  %224 = or i32 %220, %223, !dbg !335
  %225 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !335
  %226 = load i32, i32* %225, align 4, !dbg !335
  %227 = lshr i32 %226, 13, !dbg !335
  %228 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !335
  %229 = load i32, i32* %228, align 4, !dbg !335
  %230 = shl i32 %229, 19, !dbg !335
  %231 = or i32 %227, %230, !dbg !335
  %232 = xor i32 %224, %231, !dbg !335
  %233 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !335
  %234 = load i32, i32* %233, align 4, !dbg !335
  %235 = lshr i32 %234, 22, !dbg !335
  %236 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !335
  %237 = load i32, i32* %236, align 4, !dbg !335
  %238 = shl i32 %237, 10, !dbg !335
  %239 = or i32 %235, %238, !dbg !335
  %240 = xor i32 %232, %239, !dbg !335
  %241 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !335
  %242 = load i32, i32* %241, align 4, !dbg !335
  %243 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !335
  %244 = load i32, i32* %243, align 16, !dbg !335
  %245 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !335
  %246 = load i32, i32* %245, align 4, !dbg !335
  %247 = or i32 %244, %246, !dbg !335
  %248 = and i32 %242, %247, !dbg !335
  %249 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !335
  %250 = load i32, i32* %249, align 16, !dbg !335
  %251 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !335
  %252 = load i32, i32* %251, align 4, !dbg !335
  %253 = and i32 %250, %252, !dbg !335
  %254 = or i32 %248, %253, !dbg !335
  %255 = add i32 %240, %254, !dbg !335
  store i32 %255, i32* %6, align 4, !dbg !335
  %256 = load i32, i32* %5, align 4, !dbg !335
  %257 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !335
  %258 = load i32, i32* %257, align 8, !dbg !335
  %259 = add i32 %258, %256, !dbg !335
  store i32 %259, i32* %257, align 8, !dbg !335
  %260 = load i32, i32* %5, align 4, !dbg !335
  %261 = load i32, i32* %6, align 4, !dbg !335
  %262 = add i32 %260, %261, !dbg !335
  %263 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !335
  store i32 %262, i32* %263, align 8, !dbg !335
  %264 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !336
  %265 = load i32, i32* %264, align 4, !dbg !336
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !336
  %267 = load i32, i32* %266, align 8, !dbg !336
  %268 = lshr i32 %267, 6, !dbg !336
  %269 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !336
  %270 = load i32, i32* %269, align 8, !dbg !336
  %271 = shl i32 %270, 26, !dbg !336
  %272 = or i32 %268, %271, !dbg !336
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !336
  %274 = load i32, i32* %273, align 8, !dbg !336
  %275 = lshr i32 %274, 11, !dbg !336
  %276 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !336
  %277 = load i32, i32* %276, align 8, !dbg !336
  %278 = shl i32 %277, 21, !dbg !336
  %279 = or i32 %275, %278, !dbg !336
  %280 = xor i32 %272, %279, !dbg !336
  %281 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !336
  %282 = load i32, i32* %281, align 8, !dbg !336
  %283 = lshr i32 %282, 25, !dbg !336
  %284 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !336
  %285 = load i32, i32* %284, align 8, !dbg !336
  %286 = shl i32 %285, 7, !dbg !336
  %287 = or i32 %283, %286, !dbg !336
  %288 = xor i32 %280, %287, !dbg !336
  %289 = add i32 %265, %288, !dbg !336
  %290 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !336
  %291 = load i32, i32* %290, align 8, !dbg !336
  %292 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !336
  %293 = load i32, i32* %292, align 4, !dbg !336
  %294 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !336
  %295 = load i32, i32* %294, align 16, !dbg !336
  %296 = xor i32 %293, %295, !dbg !336
  %297 = and i32 %291, %296, !dbg !336
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !336
  %299 = load i32, i32* %298, align 16, !dbg !336
  %300 = xor i32 %297, %299, !dbg !336
  %301 = add i32 %289, %300, !dbg !336
  %302 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 2, !dbg !336
  %303 = load i32, i32* %302, align 8, !dbg !336
  %304 = add i32 %301, %303, !dbg !336
  %305 = add i32 %304, -1245643825, !dbg !336
  store i32 %305, i32* %5, align 4, !dbg !336
  %306 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !336
  %307 = load i32, i32* %306, align 8, !dbg !336
  %308 = lshr i32 %307, 2, !dbg !336
  %309 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !336
  %310 = load i32, i32* %309, align 8, !dbg !336
  %311 = shl i32 %310, 30, !dbg !336
  %312 = or i32 %308, %311, !dbg !336
  %313 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !336
  %314 = load i32, i32* %313, align 8, !dbg !336
  %315 = lshr i32 %314, 13, !dbg !336
  %316 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !336
  %317 = load i32, i32* %316, align 8, !dbg !336
  %318 = shl i32 %317, 19, !dbg !336
  %319 = or i32 %315, %318, !dbg !336
  %320 = xor i32 %312, %319, !dbg !336
  %321 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !336
  %322 = load i32, i32* %321, align 8, !dbg !336
  %323 = lshr i32 %322, 22, !dbg !336
  %324 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !336
  %325 = load i32, i32* %324, align 8, !dbg !336
  %326 = shl i32 %325, 10, !dbg !336
  %327 = or i32 %323, %326, !dbg !336
  %328 = xor i32 %320, %327, !dbg !336
  %329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !336
  %330 = load i32, i32* %329, align 8, !dbg !336
  %331 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !336
  %332 = load i32, i32* %331, align 4, !dbg !336
  %333 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !336
  %334 = load i32, i32* %333, align 16, !dbg !336
  %335 = or i32 %332, %334, !dbg !336
  %336 = and i32 %330, %335, !dbg !336
  %337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !336
  %338 = load i32, i32* %337, align 4, !dbg !336
  %339 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !336
  %340 = load i32, i32* %339, align 16, !dbg !336
  %341 = and i32 %338, %340, !dbg !336
  %342 = or i32 %336, %341, !dbg !336
  %343 = add i32 %328, %342, !dbg !336
  store i32 %343, i32* %6, align 4, !dbg !336
  %344 = load i32, i32* %5, align 4, !dbg !336
  %345 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !336
  %346 = load i32, i32* %345, align 4, !dbg !336
  %347 = add i32 %346, %344, !dbg !336
  store i32 %347, i32* %345, align 4, !dbg !336
  %348 = load i32, i32* %5, align 4, !dbg !336
  %349 = load i32, i32* %6, align 4, !dbg !336
  %350 = add i32 %348, %349, !dbg !336
  %351 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !336
  store i32 %350, i32* %351, align 4, !dbg !336
  %352 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !337
  %353 = load i32, i32* %352, align 16, !dbg !337
  %354 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !337
  %355 = load i32, i32* %354, align 4, !dbg !337
  %356 = lshr i32 %355, 6, !dbg !337
  %357 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !337
  %358 = load i32, i32* %357, align 4, !dbg !337
  %359 = shl i32 %358, 26, !dbg !337
  %360 = or i32 %356, %359, !dbg !337
  %361 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !337
  %362 = load i32, i32* %361, align 4, !dbg !337
  %363 = lshr i32 %362, 11, !dbg !337
  %364 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !337
  %365 = load i32, i32* %364, align 4, !dbg !337
  %366 = shl i32 %365, 21, !dbg !337
  %367 = or i32 %363, %366, !dbg !337
  %368 = xor i32 %360, %367, !dbg !337
  %369 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !337
  %370 = load i32, i32* %369, align 4, !dbg !337
  %371 = lshr i32 %370, 25, !dbg !337
  %372 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !337
  %373 = load i32, i32* %372, align 4, !dbg !337
  %374 = shl i32 %373, 7, !dbg !337
  %375 = or i32 %371, %374, !dbg !337
  %376 = xor i32 %368, %375, !dbg !337
  %377 = add i32 %353, %376, !dbg !337
  %378 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !337
  %379 = load i32, i32* %378, align 4, !dbg !337
  %380 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !337
  %381 = load i32, i32* %380, align 8, !dbg !337
  %382 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !337
  %383 = load i32, i32* %382, align 4, !dbg !337
  %384 = xor i32 %381, %383, !dbg !337
  %385 = and i32 %379, %384, !dbg !337
  %386 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !337
  %387 = load i32, i32* %386, align 4, !dbg !337
  %388 = xor i32 %385, %387, !dbg !337
  %389 = add i32 %377, %388, !dbg !337
  %390 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 3, !dbg !337
  %391 = load i32, i32* %390, align 4, !dbg !337
  %392 = add i32 %389, %391, !dbg !337
  %393 = add i32 %392, -373957723, !dbg !337
  store i32 %393, i32* %5, align 4, !dbg !337
  %394 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !337
  %395 = load i32, i32* %394, align 4, !dbg !337
  %396 = lshr i32 %395, 2, !dbg !337
  %397 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !337
  %398 = load i32, i32* %397, align 4, !dbg !337
  %399 = shl i32 %398, 30, !dbg !337
  %400 = or i32 %396, %399, !dbg !337
  %401 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !337
  %402 = load i32, i32* %401, align 4, !dbg !337
  %403 = lshr i32 %402, 13, !dbg !337
  %404 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !337
  %405 = load i32, i32* %404, align 4, !dbg !337
  %406 = shl i32 %405, 19, !dbg !337
  %407 = or i32 %403, %406, !dbg !337
  %408 = xor i32 %400, %407, !dbg !337
  %409 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !337
  %410 = load i32, i32* %409, align 4, !dbg !337
  %411 = lshr i32 %410, 22, !dbg !337
  %412 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !337
  %413 = load i32, i32* %412, align 4, !dbg !337
  %414 = shl i32 %413, 10, !dbg !337
  %415 = or i32 %411, %414, !dbg !337
  %416 = xor i32 %408, %415, !dbg !337
  %417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !337
  %418 = load i32, i32* %417, align 4, !dbg !337
  %419 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !337
  %420 = load i32, i32* %419, align 8, !dbg !337
  %421 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !337
  %422 = load i32, i32* %421, align 4, !dbg !337
  %423 = or i32 %420, %422, !dbg !337
  %424 = and i32 %418, %423, !dbg !337
  %425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !337
  %426 = load i32, i32* %425, align 8, !dbg !337
  %427 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !337
  %428 = load i32, i32* %427, align 4, !dbg !337
  %429 = and i32 %426, %428, !dbg !337
  %430 = or i32 %424, %429, !dbg !337
  %431 = add i32 %416, %430, !dbg !337
  store i32 %431, i32* %6, align 4, !dbg !337
  %432 = load i32, i32* %5, align 4, !dbg !337
  %433 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !337
  %434 = load i32, i32* %433, align 16, !dbg !337
  %435 = add i32 %434, %432, !dbg !337
  store i32 %435, i32* %433, align 16, !dbg !337
  %436 = load i32, i32* %5, align 4, !dbg !337
  %437 = load i32, i32* %6, align 4, !dbg !337
  %438 = add i32 %436, %437, !dbg !337
  %439 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !337
  store i32 %438, i32* %439, align 16, !dbg !337
  %440 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !338
  %441 = load i32, i32* %440, align 4, !dbg !338
  %442 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !338
  %443 = load i32, i32* %442, align 16, !dbg !338
  %444 = lshr i32 %443, 6, !dbg !338
  %445 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !338
  %446 = load i32, i32* %445, align 16, !dbg !338
  %447 = shl i32 %446, 26, !dbg !338
  %448 = or i32 %444, %447, !dbg !338
  %449 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !338
  %450 = load i32, i32* %449, align 16, !dbg !338
  %451 = lshr i32 %450, 11, !dbg !338
  %452 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !338
  %453 = load i32, i32* %452, align 16, !dbg !338
  %454 = shl i32 %453, 21, !dbg !338
  %455 = or i32 %451, %454, !dbg !338
  %456 = xor i32 %448, %455, !dbg !338
  %457 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !338
  %458 = load i32, i32* %457, align 16, !dbg !338
  %459 = lshr i32 %458, 25, !dbg !338
  %460 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !338
  %461 = load i32, i32* %460, align 16, !dbg !338
  %462 = shl i32 %461, 7, !dbg !338
  %463 = or i32 %459, %462, !dbg !338
  %464 = xor i32 %456, %463, !dbg !338
  %465 = add i32 %441, %464, !dbg !338
  %466 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !338
  %467 = load i32, i32* %466, align 16, !dbg !338
  %468 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !338
  %469 = load i32, i32* %468, align 4, !dbg !338
  %470 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !338
  %471 = load i32, i32* %470, align 8, !dbg !338
  %472 = xor i32 %469, %471, !dbg !338
  %473 = and i32 %467, %472, !dbg !338
  %474 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !338
  %475 = load i32, i32* %474, align 8, !dbg !338
  %476 = xor i32 %473, %475, !dbg !338
  %477 = add i32 %465, %476, !dbg !338
  %478 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 4, !dbg !338
  %479 = load i32, i32* %478, align 16, !dbg !338
  %480 = add i32 %477, %479, !dbg !338
  %481 = add i32 %480, 961987163, !dbg !338
  store i32 %481, i32* %5, align 4, !dbg !338
  %482 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !338
  %483 = load i32, i32* %482, align 16, !dbg !338
  %484 = lshr i32 %483, 2, !dbg !338
  %485 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !338
  %486 = load i32, i32* %485, align 16, !dbg !338
  %487 = shl i32 %486, 30, !dbg !338
  %488 = or i32 %484, %487, !dbg !338
  %489 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !338
  %490 = load i32, i32* %489, align 16, !dbg !338
  %491 = lshr i32 %490, 13, !dbg !338
  %492 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !338
  %493 = load i32, i32* %492, align 16, !dbg !338
  %494 = shl i32 %493, 19, !dbg !338
  %495 = or i32 %491, %494, !dbg !338
  %496 = xor i32 %488, %495, !dbg !338
  %497 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !338
  %498 = load i32, i32* %497, align 16, !dbg !338
  %499 = lshr i32 %498, 22, !dbg !338
  %500 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !338
  %501 = load i32, i32* %500, align 16, !dbg !338
  %502 = shl i32 %501, 10, !dbg !338
  %503 = or i32 %499, %502, !dbg !338
  %504 = xor i32 %496, %503, !dbg !338
  %505 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !338
  %506 = load i32, i32* %505, align 16, !dbg !338
  %507 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !338
  %508 = load i32, i32* %507, align 4, !dbg !338
  %509 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !338
  %510 = load i32, i32* %509, align 8, !dbg !338
  %511 = or i32 %508, %510, !dbg !338
  %512 = and i32 %506, %511, !dbg !338
  %513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !338
  %514 = load i32, i32* %513, align 4, !dbg !338
  %515 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !338
  %516 = load i32, i32* %515, align 8, !dbg !338
  %517 = and i32 %514, %516, !dbg !338
  %518 = or i32 %512, %517, !dbg !338
  %519 = add i32 %504, %518, !dbg !338
  store i32 %519, i32* %6, align 4, !dbg !338
  %520 = load i32, i32* %5, align 4, !dbg !338
  %521 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !338
  %522 = load i32, i32* %521, align 4, !dbg !338
  %523 = add i32 %522, %520, !dbg !338
  store i32 %523, i32* %521, align 4, !dbg !338
  %524 = load i32, i32* %5, align 4, !dbg !338
  %525 = load i32, i32* %6, align 4, !dbg !338
  %526 = add i32 %524, %525, !dbg !338
  %527 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !338
  store i32 %526, i32* %527, align 4, !dbg !338
  %528 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !339
  %529 = load i32, i32* %528, align 8, !dbg !339
  %530 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !339
  %531 = load i32, i32* %530, align 4, !dbg !339
  %532 = lshr i32 %531, 6, !dbg !339
  %533 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !339
  %534 = load i32, i32* %533, align 4, !dbg !339
  %535 = shl i32 %534, 26, !dbg !339
  %536 = or i32 %532, %535, !dbg !339
  %537 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !339
  %538 = load i32, i32* %537, align 4, !dbg !339
  %539 = lshr i32 %538, 11, !dbg !339
  %540 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !339
  %541 = load i32, i32* %540, align 4, !dbg !339
  %542 = shl i32 %541, 21, !dbg !339
  %543 = or i32 %539, %542, !dbg !339
  %544 = xor i32 %536, %543, !dbg !339
  %545 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !339
  %546 = load i32, i32* %545, align 4, !dbg !339
  %547 = lshr i32 %546, 25, !dbg !339
  %548 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !339
  %549 = load i32, i32* %548, align 4, !dbg !339
  %550 = shl i32 %549, 7, !dbg !339
  %551 = or i32 %547, %550, !dbg !339
  %552 = xor i32 %544, %551, !dbg !339
  %553 = add i32 %529, %552, !dbg !339
  %554 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !339
  %555 = load i32, i32* %554, align 4, !dbg !339
  %556 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !339
  %557 = load i32, i32* %556, align 16, !dbg !339
  %558 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !339
  %559 = load i32, i32* %558, align 4, !dbg !339
  %560 = xor i32 %557, %559, !dbg !339
  %561 = and i32 %555, %560, !dbg !339
  %562 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !339
  %563 = load i32, i32* %562, align 4, !dbg !339
  %564 = xor i32 %561, %563, !dbg !339
  %565 = add i32 %553, %564, !dbg !339
  %566 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 5, !dbg !339
  %567 = load i32, i32* %566, align 4, !dbg !339
  %568 = add i32 %565, %567, !dbg !339
  %569 = add i32 %568, 1508970993, !dbg !339
  store i32 %569, i32* %5, align 4, !dbg !339
  %570 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !339
  %571 = load i32, i32* %570, align 4, !dbg !339
  %572 = lshr i32 %571, 2, !dbg !339
  %573 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !339
  %574 = load i32, i32* %573, align 4, !dbg !339
  %575 = shl i32 %574, 30, !dbg !339
  %576 = or i32 %572, %575, !dbg !339
  %577 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !339
  %578 = load i32, i32* %577, align 4, !dbg !339
  %579 = lshr i32 %578, 13, !dbg !339
  %580 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !339
  %581 = load i32, i32* %580, align 4, !dbg !339
  %582 = shl i32 %581, 19, !dbg !339
  %583 = or i32 %579, %582, !dbg !339
  %584 = xor i32 %576, %583, !dbg !339
  %585 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !339
  %586 = load i32, i32* %585, align 4, !dbg !339
  %587 = lshr i32 %586, 22, !dbg !339
  %588 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !339
  %589 = load i32, i32* %588, align 4, !dbg !339
  %590 = shl i32 %589, 10, !dbg !339
  %591 = or i32 %587, %590, !dbg !339
  %592 = xor i32 %584, %591, !dbg !339
  %593 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !339
  %594 = load i32, i32* %593, align 4, !dbg !339
  %595 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !339
  %596 = load i32, i32* %595, align 16, !dbg !339
  %597 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !339
  %598 = load i32, i32* %597, align 4, !dbg !339
  %599 = or i32 %596, %598, !dbg !339
  %600 = and i32 %594, %599, !dbg !339
  %601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !339
  %602 = load i32, i32* %601, align 16, !dbg !339
  %603 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !339
  %604 = load i32, i32* %603, align 4, !dbg !339
  %605 = and i32 %602, %604, !dbg !339
  %606 = or i32 %600, %605, !dbg !339
  %607 = add i32 %592, %606, !dbg !339
  store i32 %607, i32* %6, align 4, !dbg !339
  %608 = load i32, i32* %5, align 4, !dbg !339
  %609 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !339
  %610 = load i32, i32* %609, align 8, !dbg !339
  %611 = add i32 %610, %608, !dbg !339
  store i32 %611, i32* %609, align 8, !dbg !339
  %612 = load i32, i32* %5, align 4, !dbg !339
  %613 = load i32, i32* %6, align 4, !dbg !339
  %614 = add i32 %612, %613, !dbg !339
  %615 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !339
  store i32 %614, i32* %615, align 8, !dbg !339
  %616 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !340
  %617 = load i32, i32* %616, align 4, !dbg !340
  %618 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !340
  %619 = load i32, i32* %618, align 8, !dbg !340
  %620 = lshr i32 %619, 6, !dbg !340
  %621 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !340
  %622 = load i32, i32* %621, align 8, !dbg !340
  %623 = shl i32 %622, 26, !dbg !340
  %624 = or i32 %620, %623, !dbg !340
  %625 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !340
  %626 = load i32, i32* %625, align 8, !dbg !340
  %627 = lshr i32 %626, 11, !dbg !340
  %628 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !340
  %629 = load i32, i32* %628, align 8, !dbg !340
  %630 = shl i32 %629, 21, !dbg !340
  %631 = or i32 %627, %630, !dbg !340
  %632 = xor i32 %624, %631, !dbg !340
  %633 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !340
  %634 = load i32, i32* %633, align 8, !dbg !340
  %635 = lshr i32 %634, 25, !dbg !340
  %636 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !340
  %637 = load i32, i32* %636, align 8, !dbg !340
  %638 = shl i32 %637, 7, !dbg !340
  %639 = or i32 %635, %638, !dbg !340
  %640 = xor i32 %632, %639, !dbg !340
  %641 = add i32 %617, %640, !dbg !340
  %642 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !340
  %643 = load i32, i32* %642, align 8, !dbg !340
  %644 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !340
  %645 = load i32, i32* %644, align 4, !dbg !340
  %646 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !340
  %647 = load i32, i32* %646, align 16, !dbg !340
  %648 = xor i32 %645, %647, !dbg !340
  %649 = and i32 %643, %648, !dbg !340
  %650 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !340
  %651 = load i32, i32* %650, align 16, !dbg !340
  %652 = xor i32 %649, %651, !dbg !340
  %653 = add i32 %641, %652, !dbg !340
  %654 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 6, !dbg !340
  %655 = load i32, i32* %654, align 8, !dbg !340
  %656 = add i32 %653, %655, !dbg !340
  %657 = add i32 %656, -1841331548, !dbg !340
  store i32 %657, i32* %5, align 4, !dbg !340
  %658 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !340
  %659 = load i32, i32* %658, align 8, !dbg !340
  %660 = lshr i32 %659, 2, !dbg !340
  %661 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !340
  %662 = load i32, i32* %661, align 8, !dbg !340
  %663 = shl i32 %662, 30, !dbg !340
  %664 = or i32 %660, %663, !dbg !340
  %665 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !340
  %666 = load i32, i32* %665, align 8, !dbg !340
  %667 = lshr i32 %666, 13, !dbg !340
  %668 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !340
  %669 = load i32, i32* %668, align 8, !dbg !340
  %670 = shl i32 %669, 19, !dbg !340
  %671 = or i32 %667, %670, !dbg !340
  %672 = xor i32 %664, %671, !dbg !340
  %673 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !340
  %674 = load i32, i32* %673, align 8, !dbg !340
  %675 = lshr i32 %674, 22, !dbg !340
  %676 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !340
  %677 = load i32, i32* %676, align 8, !dbg !340
  %678 = shl i32 %677, 10, !dbg !340
  %679 = or i32 %675, %678, !dbg !340
  %680 = xor i32 %672, %679, !dbg !340
  %681 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !340
  %682 = load i32, i32* %681, align 8, !dbg !340
  %683 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !340
  %684 = load i32, i32* %683, align 4, !dbg !340
  %685 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !340
  %686 = load i32, i32* %685, align 16, !dbg !340
  %687 = or i32 %684, %686, !dbg !340
  %688 = and i32 %682, %687, !dbg !340
  %689 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !340
  %690 = load i32, i32* %689, align 4, !dbg !340
  %691 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !340
  %692 = load i32, i32* %691, align 16, !dbg !340
  %693 = and i32 %690, %692, !dbg !340
  %694 = or i32 %688, %693, !dbg !340
  %695 = add i32 %680, %694, !dbg !340
  store i32 %695, i32* %6, align 4, !dbg !340
  %696 = load i32, i32* %5, align 4, !dbg !340
  %697 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !340
  %698 = load i32, i32* %697, align 4, !dbg !340
  %699 = add i32 %698, %696, !dbg !340
  store i32 %699, i32* %697, align 4, !dbg !340
  %700 = load i32, i32* %5, align 4, !dbg !340
  %701 = load i32, i32* %6, align 4, !dbg !340
  %702 = add i32 %700, %701, !dbg !340
  %703 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !340
  store i32 %702, i32* %703, align 4, !dbg !340
  %704 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !341
  %705 = load i32, i32* %704, align 16, !dbg !341
  %706 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !341
  %707 = load i32, i32* %706, align 4, !dbg !341
  %708 = lshr i32 %707, 6, !dbg !341
  %709 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !341
  %710 = load i32, i32* %709, align 4, !dbg !341
  %711 = shl i32 %710, 26, !dbg !341
  %712 = or i32 %708, %711, !dbg !341
  %713 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !341
  %714 = load i32, i32* %713, align 4, !dbg !341
  %715 = lshr i32 %714, 11, !dbg !341
  %716 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !341
  %717 = load i32, i32* %716, align 4, !dbg !341
  %718 = shl i32 %717, 21, !dbg !341
  %719 = or i32 %715, %718, !dbg !341
  %720 = xor i32 %712, %719, !dbg !341
  %721 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !341
  %722 = load i32, i32* %721, align 4, !dbg !341
  %723 = lshr i32 %722, 25, !dbg !341
  %724 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !341
  %725 = load i32, i32* %724, align 4, !dbg !341
  %726 = shl i32 %725, 7, !dbg !341
  %727 = or i32 %723, %726, !dbg !341
  %728 = xor i32 %720, %727, !dbg !341
  %729 = add i32 %705, %728, !dbg !341
  %730 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !341
  %731 = load i32, i32* %730, align 4, !dbg !341
  %732 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !341
  %733 = load i32, i32* %732, align 8, !dbg !341
  %734 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !341
  %735 = load i32, i32* %734, align 4, !dbg !341
  %736 = xor i32 %733, %735, !dbg !341
  %737 = and i32 %731, %736, !dbg !341
  %738 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !341
  %739 = load i32, i32* %738, align 4, !dbg !341
  %740 = xor i32 %737, %739, !dbg !341
  %741 = add i32 %729, %740, !dbg !341
  %742 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 7, !dbg !341
  %743 = load i32, i32* %742, align 4, !dbg !341
  %744 = add i32 %741, %743, !dbg !341
  %745 = add i32 %744, -1424204075, !dbg !341
  store i32 %745, i32* %5, align 4, !dbg !341
  %746 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !341
  %747 = load i32, i32* %746, align 4, !dbg !341
  %748 = lshr i32 %747, 2, !dbg !341
  %749 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !341
  %750 = load i32, i32* %749, align 4, !dbg !341
  %751 = shl i32 %750, 30, !dbg !341
  %752 = or i32 %748, %751, !dbg !341
  %753 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !341
  %754 = load i32, i32* %753, align 4, !dbg !341
  %755 = lshr i32 %754, 13, !dbg !341
  %756 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !341
  %757 = load i32, i32* %756, align 4, !dbg !341
  %758 = shl i32 %757, 19, !dbg !341
  %759 = or i32 %755, %758, !dbg !341
  %760 = xor i32 %752, %759, !dbg !341
  %761 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !341
  %762 = load i32, i32* %761, align 4, !dbg !341
  %763 = lshr i32 %762, 22, !dbg !341
  %764 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !341
  %765 = load i32, i32* %764, align 4, !dbg !341
  %766 = shl i32 %765, 10, !dbg !341
  %767 = or i32 %763, %766, !dbg !341
  %768 = xor i32 %760, %767, !dbg !341
  %769 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !341
  %770 = load i32, i32* %769, align 4, !dbg !341
  %771 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !341
  %772 = load i32, i32* %771, align 8, !dbg !341
  %773 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !341
  %774 = load i32, i32* %773, align 4, !dbg !341
  %775 = or i32 %772, %774, !dbg !341
  %776 = and i32 %770, %775, !dbg !341
  %777 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !341
  %778 = load i32, i32* %777, align 8, !dbg !341
  %779 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !341
  %780 = load i32, i32* %779, align 4, !dbg !341
  %781 = and i32 %778, %780, !dbg !341
  %782 = or i32 %776, %781, !dbg !341
  %783 = add i32 %768, %782, !dbg !341
  store i32 %783, i32* %6, align 4, !dbg !341
  %784 = load i32, i32* %5, align 4, !dbg !341
  %785 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !341
  %786 = load i32, i32* %785, align 16, !dbg !341
  %787 = add i32 %786, %784, !dbg !341
  store i32 %787, i32* %785, align 16, !dbg !341
  %788 = load i32, i32* %5, align 4, !dbg !341
  %789 = load i32, i32* %6, align 4, !dbg !341
  %790 = add i32 %788, %789, !dbg !341
  %791 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !341
  store i32 %790, i32* %791, align 16, !dbg !341
  %792 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !342
  %793 = load i32, i32* %792, align 4, !dbg !342
  %794 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !342
  %795 = load i32, i32* %794, align 16, !dbg !342
  %796 = lshr i32 %795, 6, !dbg !342
  %797 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !342
  %798 = load i32, i32* %797, align 16, !dbg !342
  %799 = shl i32 %798, 26, !dbg !342
  %800 = or i32 %796, %799, !dbg !342
  %801 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !342
  %802 = load i32, i32* %801, align 16, !dbg !342
  %803 = lshr i32 %802, 11, !dbg !342
  %804 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !342
  %805 = load i32, i32* %804, align 16, !dbg !342
  %806 = shl i32 %805, 21, !dbg !342
  %807 = or i32 %803, %806, !dbg !342
  %808 = xor i32 %800, %807, !dbg !342
  %809 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !342
  %810 = load i32, i32* %809, align 16, !dbg !342
  %811 = lshr i32 %810, 25, !dbg !342
  %812 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !342
  %813 = load i32, i32* %812, align 16, !dbg !342
  %814 = shl i32 %813, 7, !dbg !342
  %815 = or i32 %811, %814, !dbg !342
  %816 = xor i32 %808, %815, !dbg !342
  %817 = add i32 %793, %816, !dbg !342
  %818 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !342
  %819 = load i32, i32* %818, align 16, !dbg !342
  %820 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !342
  %821 = load i32, i32* %820, align 4, !dbg !342
  %822 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !342
  %823 = load i32, i32* %822, align 8, !dbg !342
  %824 = xor i32 %821, %823, !dbg !342
  %825 = and i32 %819, %824, !dbg !342
  %826 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !342
  %827 = load i32, i32* %826, align 8, !dbg !342
  %828 = xor i32 %825, %827, !dbg !342
  %829 = add i32 %817, %828, !dbg !342
  %830 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 8, !dbg !342
  %831 = load i32, i32* %830, align 16, !dbg !342
  %832 = add i32 %829, %831, !dbg !342
  %833 = add i32 %832, -670586216, !dbg !342
  store i32 %833, i32* %5, align 4, !dbg !342
  %834 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !342
  %835 = load i32, i32* %834, align 16, !dbg !342
  %836 = lshr i32 %835, 2, !dbg !342
  %837 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !342
  %838 = load i32, i32* %837, align 16, !dbg !342
  %839 = shl i32 %838, 30, !dbg !342
  %840 = or i32 %836, %839, !dbg !342
  %841 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !342
  %842 = load i32, i32* %841, align 16, !dbg !342
  %843 = lshr i32 %842, 13, !dbg !342
  %844 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !342
  %845 = load i32, i32* %844, align 16, !dbg !342
  %846 = shl i32 %845, 19, !dbg !342
  %847 = or i32 %843, %846, !dbg !342
  %848 = xor i32 %840, %847, !dbg !342
  %849 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !342
  %850 = load i32, i32* %849, align 16, !dbg !342
  %851 = lshr i32 %850, 22, !dbg !342
  %852 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !342
  %853 = load i32, i32* %852, align 16, !dbg !342
  %854 = shl i32 %853, 10, !dbg !342
  %855 = or i32 %851, %854, !dbg !342
  %856 = xor i32 %848, %855, !dbg !342
  %857 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !342
  %858 = load i32, i32* %857, align 16, !dbg !342
  %859 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !342
  %860 = load i32, i32* %859, align 4, !dbg !342
  %861 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !342
  %862 = load i32, i32* %861, align 8, !dbg !342
  %863 = or i32 %860, %862, !dbg !342
  %864 = and i32 %858, %863, !dbg !342
  %865 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !342
  %866 = load i32, i32* %865, align 4, !dbg !342
  %867 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !342
  %868 = load i32, i32* %867, align 8, !dbg !342
  %869 = and i32 %866, %868, !dbg !342
  %870 = or i32 %864, %869, !dbg !342
  %871 = add i32 %856, %870, !dbg !342
  store i32 %871, i32* %6, align 4, !dbg !342
  %872 = load i32, i32* %5, align 4, !dbg !342
  %873 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !342
  %874 = load i32, i32* %873, align 4, !dbg !342
  %875 = add i32 %874, %872, !dbg !342
  store i32 %875, i32* %873, align 4, !dbg !342
  %876 = load i32, i32* %5, align 4, !dbg !342
  %877 = load i32, i32* %6, align 4, !dbg !342
  %878 = add i32 %876, %877, !dbg !342
  %879 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !342
  store i32 %878, i32* %879, align 4, !dbg !342
  %880 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !343
  %881 = load i32, i32* %880, align 8, !dbg !343
  %882 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !343
  %883 = load i32, i32* %882, align 4, !dbg !343
  %884 = lshr i32 %883, 6, !dbg !343
  %885 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !343
  %886 = load i32, i32* %885, align 4, !dbg !343
  %887 = shl i32 %886, 26, !dbg !343
  %888 = or i32 %884, %887, !dbg !343
  %889 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !343
  %890 = load i32, i32* %889, align 4, !dbg !343
  %891 = lshr i32 %890, 11, !dbg !343
  %892 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !343
  %893 = load i32, i32* %892, align 4, !dbg !343
  %894 = shl i32 %893, 21, !dbg !343
  %895 = or i32 %891, %894, !dbg !343
  %896 = xor i32 %888, %895, !dbg !343
  %897 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !343
  %898 = load i32, i32* %897, align 4, !dbg !343
  %899 = lshr i32 %898, 25, !dbg !343
  %900 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !343
  %901 = load i32, i32* %900, align 4, !dbg !343
  %902 = shl i32 %901, 7, !dbg !343
  %903 = or i32 %899, %902, !dbg !343
  %904 = xor i32 %896, %903, !dbg !343
  %905 = add i32 %881, %904, !dbg !343
  %906 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !343
  %907 = load i32, i32* %906, align 4, !dbg !343
  %908 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !343
  %909 = load i32, i32* %908, align 16, !dbg !343
  %910 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !343
  %911 = load i32, i32* %910, align 4, !dbg !343
  %912 = xor i32 %909, %911, !dbg !343
  %913 = and i32 %907, %912, !dbg !343
  %914 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !343
  %915 = load i32, i32* %914, align 4, !dbg !343
  %916 = xor i32 %913, %915, !dbg !343
  %917 = add i32 %905, %916, !dbg !343
  %918 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 9, !dbg !343
  %919 = load i32, i32* %918, align 4, !dbg !343
  %920 = add i32 %917, %919, !dbg !343
  %921 = add i32 %920, 310598401, !dbg !343
  store i32 %921, i32* %5, align 4, !dbg !343
  %922 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !343
  %923 = load i32, i32* %922, align 4, !dbg !343
  %924 = lshr i32 %923, 2, !dbg !343
  %925 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !343
  %926 = load i32, i32* %925, align 4, !dbg !343
  %927 = shl i32 %926, 30, !dbg !343
  %928 = or i32 %924, %927, !dbg !343
  %929 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !343
  %930 = load i32, i32* %929, align 4, !dbg !343
  %931 = lshr i32 %930, 13, !dbg !343
  %932 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !343
  %933 = load i32, i32* %932, align 4, !dbg !343
  %934 = shl i32 %933, 19, !dbg !343
  %935 = or i32 %931, %934, !dbg !343
  %936 = xor i32 %928, %935, !dbg !343
  %937 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !343
  %938 = load i32, i32* %937, align 4, !dbg !343
  %939 = lshr i32 %938, 22, !dbg !343
  %940 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !343
  %941 = load i32, i32* %940, align 4, !dbg !343
  %942 = shl i32 %941, 10, !dbg !343
  %943 = or i32 %939, %942, !dbg !343
  %944 = xor i32 %936, %943, !dbg !343
  %945 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !343
  %946 = load i32, i32* %945, align 4, !dbg !343
  %947 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !343
  %948 = load i32, i32* %947, align 16, !dbg !343
  %949 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !343
  %950 = load i32, i32* %949, align 4, !dbg !343
  %951 = or i32 %948, %950, !dbg !343
  %952 = and i32 %946, %951, !dbg !343
  %953 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !343
  %954 = load i32, i32* %953, align 16, !dbg !343
  %955 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !343
  %956 = load i32, i32* %955, align 4, !dbg !343
  %957 = and i32 %954, %956, !dbg !343
  %958 = or i32 %952, %957, !dbg !343
  %959 = add i32 %944, %958, !dbg !343
  store i32 %959, i32* %6, align 4, !dbg !343
  %960 = load i32, i32* %5, align 4, !dbg !343
  %961 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !343
  %962 = load i32, i32* %961, align 8, !dbg !343
  %963 = add i32 %962, %960, !dbg !343
  store i32 %963, i32* %961, align 8, !dbg !343
  %964 = load i32, i32* %5, align 4, !dbg !343
  %965 = load i32, i32* %6, align 4, !dbg !343
  %966 = add i32 %964, %965, !dbg !343
  %967 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !343
  store i32 %966, i32* %967, align 8, !dbg !343
  %968 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !344
  %969 = load i32, i32* %968, align 4, !dbg !344
  %970 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !344
  %971 = load i32, i32* %970, align 8, !dbg !344
  %972 = lshr i32 %971, 6, !dbg !344
  %973 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !344
  %974 = load i32, i32* %973, align 8, !dbg !344
  %975 = shl i32 %974, 26, !dbg !344
  %976 = or i32 %972, %975, !dbg !344
  %977 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !344
  %978 = load i32, i32* %977, align 8, !dbg !344
  %979 = lshr i32 %978, 11, !dbg !344
  %980 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !344
  %981 = load i32, i32* %980, align 8, !dbg !344
  %982 = shl i32 %981, 21, !dbg !344
  %983 = or i32 %979, %982, !dbg !344
  %984 = xor i32 %976, %983, !dbg !344
  %985 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !344
  %986 = load i32, i32* %985, align 8, !dbg !344
  %987 = lshr i32 %986, 25, !dbg !344
  %988 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !344
  %989 = load i32, i32* %988, align 8, !dbg !344
  %990 = shl i32 %989, 7, !dbg !344
  %991 = or i32 %987, %990, !dbg !344
  %992 = xor i32 %984, %991, !dbg !344
  %993 = add i32 %969, %992, !dbg !344
  %994 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !344
  %995 = load i32, i32* %994, align 8, !dbg !344
  %996 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !344
  %997 = load i32, i32* %996, align 4, !dbg !344
  %998 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !344
  %999 = load i32, i32* %998, align 16, !dbg !344
  %1000 = xor i32 %997, %999, !dbg !344
  %1001 = and i32 %995, %1000, !dbg !344
  %1002 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !344
  %1003 = load i32, i32* %1002, align 16, !dbg !344
  %1004 = xor i32 %1001, %1003, !dbg !344
  %1005 = add i32 %993, %1004, !dbg !344
  %1006 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 10, !dbg !344
  %1007 = load i32, i32* %1006, align 8, !dbg !344
  %1008 = add i32 %1005, %1007, !dbg !344
  %1009 = add i32 %1008, 607225278, !dbg !344
  store i32 %1009, i32* %5, align 4, !dbg !344
  %1010 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !344
  %1011 = load i32, i32* %1010, align 8, !dbg !344
  %1012 = lshr i32 %1011, 2, !dbg !344
  %1013 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !344
  %1014 = load i32, i32* %1013, align 8, !dbg !344
  %1015 = shl i32 %1014, 30, !dbg !344
  %1016 = or i32 %1012, %1015, !dbg !344
  %1017 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !344
  %1018 = load i32, i32* %1017, align 8, !dbg !344
  %1019 = lshr i32 %1018, 13, !dbg !344
  %1020 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !344
  %1021 = load i32, i32* %1020, align 8, !dbg !344
  %1022 = shl i32 %1021, 19, !dbg !344
  %1023 = or i32 %1019, %1022, !dbg !344
  %1024 = xor i32 %1016, %1023, !dbg !344
  %1025 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !344
  %1026 = load i32, i32* %1025, align 8, !dbg !344
  %1027 = lshr i32 %1026, 22, !dbg !344
  %1028 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !344
  %1029 = load i32, i32* %1028, align 8, !dbg !344
  %1030 = shl i32 %1029, 10, !dbg !344
  %1031 = or i32 %1027, %1030, !dbg !344
  %1032 = xor i32 %1024, %1031, !dbg !344
  %1033 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !344
  %1034 = load i32, i32* %1033, align 8, !dbg !344
  %1035 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !344
  %1036 = load i32, i32* %1035, align 4, !dbg !344
  %1037 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !344
  %1038 = load i32, i32* %1037, align 16, !dbg !344
  %1039 = or i32 %1036, %1038, !dbg !344
  %1040 = and i32 %1034, %1039, !dbg !344
  %1041 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !344
  %1042 = load i32, i32* %1041, align 4, !dbg !344
  %1043 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !344
  %1044 = load i32, i32* %1043, align 16, !dbg !344
  %1045 = and i32 %1042, %1044, !dbg !344
  %1046 = or i32 %1040, %1045, !dbg !344
  %1047 = add i32 %1032, %1046, !dbg !344
  store i32 %1047, i32* %6, align 4, !dbg !344
  %1048 = load i32, i32* %5, align 4, !dbg !344
  %1049 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !344
  %1050 = load i32, i32* %1049, align 4, !dbg !344
  %1051 = add i32 %1050, %1048, !dbg !344
  store i32 %1051, i32* %1049, align 4, !dbg !344
  %1052 = load i32, i32* %5, align 4, !dbg !344
  %1053 = load i32, i32* %6, align 4, !dbg !344
  %1054 = add i32 %1052, %1053, !dbg !344
  %1055 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !344
  store i32 %1054, i32* %1055, align 4, !dbg !344
  %1056 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !345
  %1057 = load i32, i32* %1056, align 16, !dbg !345
  %1058 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !345
  %1059 = load i32, i32* %1058, align 4, !dbg !345
  %1060 = lshr i32 %1059, 6, !dbg !345
  %1061 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !345
  %1062 = load i32, i32* %1061, align 4, !dbg !345
  %1063 = shl i32 %1062, 26, !dbg !345
  %1064 = or i32 %1060, %1063, !dbg !345
  %1065 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !345
  %1066 = load i32, i32* %1065, align 4, !dbg !345
  %1067 = lshr i32 %1066, 11, !dbg !345
  %1068 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !345
  %1069 = load i32, i32* %1068, align 4, !dbg !345
  %1070 = shl i32 %1069, 21, !dbg !345
  %1071 = or i32 %1067, %1070, !dbg !345
  %1072 = xor i32 %1064, %1071, !dbg !345
  %1073 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !345
  %1074 = load i32, i32* %1073, align 4, !dbg !345
  %1075 = lshr i32 %1074, 25, !dbg !345
  %1076 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !345
  %1077 = load i32, i32* %1076, align 4, !dbg !345
  %1078 = shl i32 %1077, 7, !dbg !345
  %1079 = or i32 %1075, %1078, !dbg !345
  %1080 = xor i32 %1072, %1079, !dbg !345
  %1081 = add i32 %1057, %1080, !dbg !345
  %1082 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !345
  %1083 = load i32, i32* %1082, align 4, !dbg !345
  %1084 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !345
  %1085 = load i32, i32* %1084, align 8, !dbg !345
  %1086 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !345
  %1087 = load i32, i32* %1086, align 4, !dbg !345
  %1088 = xor i32 %1085, %1087, !dbg !345
  %1089 = and i32 %1083, %1088, !dbg !345
  %1090 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !345
  %1091 = load i32, i32* %1090, align 4, !dbg !345
  %1092 = xor i32 %1089, %1091, !dbg !345
  %1093 = add i32 %1081, %1092, !dbg !345
  %1094 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 11, !dbg !345
  %1095 = load i32, i32* %1094, align 4, !dbg !345
  %1096 = add i32 %1093, %1095, !dbg !345
  %1097 = add i32 %1096, 1426881987, !dbg !345
  store i32 %1097, i32* %5, align 4, !dbg !345
  %1098 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !345
  %1099 = load i32, i32* %1098, align 4, !dbg !345
  %1100 = lshr i32 %1099, 2, !dbg !345
  %1101 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !345
  %1102 = load i32, i32* %1101, align 4, !dbg !345
  %1103 = shl i32 %1102, 30, !dbg !345
  %1104 = or i32 %1100, %1103, !dbg !345
  %1105 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !345
  %1106 = load i32, i32* %1105, align 4, !dbg !345
  %1107 = lshr i32 %1106, 13, !dbg !345
  %1108 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !345
  %1109 = load i32, i32* %1108, align 4, !dbg !345
  %1110 = shl i32 %1109, 19, !dbg !345
  %1111 = or i32 %1107, %1110, !dbg !345
  %1112 = xor i32 %1104, %1111, !dbg !345
  %1113 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !345
  %1114 = load i32, i32* %1113, align 4, !dbg !345
  %1115 = lshr i32 %1114, 22, !dbg !345
  %1116 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !345
  %1117 = load i32, i32* %1116, align 4, !dbg !345
  %1118 = shl i32 %1117, 10, !dbg !345
  %1119 = or i32 %1115, %1118, !dbg !345
  %1120 = xor i32 %1112, %1119, !dbg !345
  %1121 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !345
  %1122 = load i32, i32* %1121, align 4, !dbg !345
  %1123 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !345
  %1124 = load i32, i32* %1123, align 8, !dbg !345
  %1125 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !345
  %1126 = load i32, i32* %1125, align 4, !dbg !345
  %1127 = or i32 %1124, %1126, !dbg !345
  %1128 = and i32 %1122, %1127, !dbg !345
  %1129 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !345
  %1130 = load i32, i32* %1129, align 8, !dbg !345
  %1131 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !345
  %1132 = load i32, i32* %1131, align 4, !dbg !345
  %1133 = and i32 %1130, %1132, !dbg !345
  %1134 = or i32 %1128, %1133, !dbg !345
  %1135 = add i32 %1120, %1134, !dbg !345
  store i32 %1135, i32* %6, align 4, !dbg !345
  %1136 = load i32, i32* %5, align 4, !dbg !345
  %1137 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !345
  %1138 = load i32, i32* %1137, align 16, !dbg !345
  %1139 = add i32 %1138, %1136, !dbg !345
  store i32 %1139, i32* %1137, align 16, !dbg !345
  %1140 = load i32, i32* %5, align 4, !dbg !345
  %1141 = load i32, i32* %6, align 4, !dbg !345
  %1142 = add i32 %1140, %1141, !dbg !345
  %1143 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !345
  store i32 %1142, i32* %1143, align 16, !dbg !345
  %1144 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !346
  %1145 = load i32, i32* %1144, align 4, !dbg !346
  %1146 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !346
  %1147 = load i32, i32* %1146, align 16, !dbg !346
  %1148 = lshr i32 %1147, 6, !dbg !346
  %1149 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !346
  %1150 = load i32, i32* %1149, align 16, !dbg !346
  %1151 = shl i32 %1150, 26, !dbg !346
  %1152 = or i32 %1148, %1151, !dbg !346
  %1153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !346
  %1154 = load i32, i32* %1153, align 16, !dbg !346
  %1155 = lshr i32 %1154, 11, !dbg !346
  %1156 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !346
  %1157 = load i32, i32* %1156, align 16, !dbg !346
  %1158 = shl i32 %1157, 21, !dbg !346
  %1159 = or i32 %1155, %1158, !dbg !346
  %1160 = xor i32 %1152, %1159, !dbg !346
  %1161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !346
  %1162 = load i32, i32* %1161, align 16, !dbg !346
  %1163 = lshr i32 %1162, 25, !dbg !346
  %1164 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !346
  %1165 = load i32, i32* %1164, align 16, !dbg !346
  %1166 = shl i32 %1165, 7, !dbg !346
  %1167 = or i32 %1163, %1166, !dbg !346
  %1168 = xor i32 %1160, %1167, !dbg !346
  %1169 = add i32 %1145, %1168, !dbg !346
  %1170 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !346
  %1171 = load i32, i32* %1170, align 16, !dbg !346
  %1172 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !346
  %1173 = load i32, i32* %1172, align 4, !dbg !346
  %1174 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !346
  %1175 = load i32, i32* %1174, align 8, !dbg !346
  %1176 = xor i32 %1173, %1175, !dbg !346
  %1177 = and i32 %1171, %1176, !dbg !346
  %1178 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !346
  %1179 = load i32, i32* %1178, align 8, !dbg !346
  %1180 = xor i32 %1177, %1179, !dbg !346
  %1181 = add i32 %1169, %1180, !dbg !346
  %1182 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 12, !dbg !346
  %1183 = load i32, i32* %1182, align 16, !dbg !346
  %1184 = add i32 %1181, %1183, !dbg !346
  %1185 = add i32 %1184, 1925078388, !dbg !346
  store i32 %1185, i32* %5, align 4, !dbg !346
  %1186 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !346
  %1187 = load i32, i32* %1186, align 16, !dbg !346
  %1188 = lshr i32 %1187, 2, !dbg !346
  %1189 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !346
  %1190 = load i32, i32* %1189, align 16, !dbg !346
  %1191 = shl i32 %1190, 30, !dbg !346
  %1192 = or i32 %1188, %1191, !dbg !346
  %1193 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !346
  %1194 = load i32, i32* %1193, align 16, !dbg !346
  %1195 = lshr i32 %1194, 13, !dbg !346
  %1196 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !346
  %1197 = load i32, i32* %1196, align 16, !dbg !346
  %1198 = shl i32 %1197, 19, !dbg !346
  %1199 = or i32 %1195, %1198, !dbg !346
  %1200 = xor i32 %1192, %1199, !dbg !346
  %1201 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !346
  %1202 = load i32, i32* %1201, align 16, !dbg !346
  %1203 = lshr i32 %1202, 22, !dbg !346
  %1204 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !346
  %1205 = load i32, i32* %1204, align 16, !dbg !346
  %1206 = shl i32 %1205, 10, !dbg !346
  %1207 = or i32 %1203, %1206, !dbg !346
  %1208 = xor i32 %1200, %1207, !dbg !346
  %1209 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !346
  %1210 = load i32, i32* %1209, align 16, !dbg !346
  %1211 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !346
  %1212 = load i32, i32* %1211, align 4, !dbg !346
  %1213 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !346
  %1214 = load i32, i32* %1213, align 8, !dbg !346
  %1215 = or i32 %1212, %1214, !dbg !346
  %1216 = and i32 %1210, %1215, !dbg !346
  %1217 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !346
  %1218 = load i32, i32* %1217, align 4, !dbg !346
  %1219 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !346
  %1220 = load i32, i32* %1219, align 8, !dbg !346
  %1221 = and i32 %1218, %1220, !dbg !346
  %1222 = or i32 %1216, %1221, !dbg !346
  %1223 = add i32 %1208, %1222, !dbg !346
  store i32 %1223, i32* %6, align 4, !dbg !346
  %1224 = load i32, i32* %5, align 4, !dbg !346
  %1225 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !346
  %1226 = load i32, i32* %1225, align 4, !dbg !346
  %1227 = add i32 %1226, %1224, !dbg !346
  store i32 %1227, i32* %1225, align 4, !dbg !346
  %1228 = load i32, i32* %5, align 4, !dbg !346
  %1229 = load i32, i32* %6, align 4, !dbg !346
  %1230 = add i32 %1228, %1229, !dbg !346
  %1231 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !346
  store i32 %1230, i32* %1231, align 4, !dbg !346
  %1232 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !347
  %1233 = load i32, i32* %1232, align 8, !dbg !347
  %1234 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !347
  %1235 = load i32, i32* %1234, align 4, !dbg !347
  %1236 = lshr i32 %1235, 6, !dbg !347
  %1237 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !347
  %1238 = load i32, i32* %1237, align 4, !dbg !347
  %1239 = shl i32 %1238, 26, !dbg !347
  %1240 = or i32 %1236, %1239, !dbg !347
  %1241 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !347
  %1242 = load i32, i32* %1241, align 4, !dbg !347
  %1243 = lshr i32 %1242, 11, !dbg !347
  %1244 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !347
  %1245 = load i32, i32* %1244, align 4, !dbg !347
  %1246 = shl i32 %1245, 21, !dbg !347
  %1247 = or i32 %1243, %1246, !dbg !347
  %1248 = xor i32 %1240, %1247, !dbg !347
  %1249 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !347
  %1250 = load i32, i32* %1249, align 4, !dbg !347
  %1251 = lshr i32 %1250, 25, !dbg !347
  %1252 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !347
  %1253 = load i32, i32* %1252, align 4, !dbg !347
  %1254 = shl i32 %1253, 7, !dbg !347
  %1255 = or i32 %1251, %1254, !dbg !347
  %1256 = xor i32 %1248, %1255, !dbg !347
  %1257 = add i32 %1233, %1256, !dbg !347
  %1258 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !347
  %1259 = load i32, i32* %1258, align 4, !dbg !347
  %1260 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !347
  %1261 = load i32, i32* %1260, align 16, !dbg !347
  %1262 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !347
  %1263 = load i32, i32* %1262, align 4, !dbg !347
  %1264 = xor i32 %1261, %1263, !dbg !347
  %1265 = and i32 %1259, %1264, !dbg !347
  %1266 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !347
  %1267 = load i32, i32* %1266, align 4, !dbg !347
  %1268 = xor i32 %1265, %1267, !dbg !347
  %1269 = add i32 %1257, %1268, !dbg !347
  %1270 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 13, !dbg !347
  %1271 = load i32, i32* %1270, align 4, !dbg !347
  %1272 = add i32 %1269, %1271, !dbg !347
  %1273 = add i32 %1272, -2132889090, !dbg !347
  store i32 %1273, i32* %5, align 4, !dbg !347
  %1274 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !347
  %1275 = load i32, i32* %1274, align 4, !dbg !347
  %1276 = lshr i32 %1275, 2, !dbg !347
  %1277 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !347
  %1278 = load i32, i32* %1277, align 4, !dbg !347
  %1279 = shl i32 %1278, 30, !dbg !347
  %1280 = or i32 %1276, %1279, !dbg !347
  %1281 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !347
  %1282 = load i32, i32* %1281, align 4, !dbg !347
  %1283 = lshr i32 %1282, 13, !dbg !347
  %1284 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !347
  %1285 = load i32, i32* %1284, align 4, !dbg !347
  %1286 = shl i32 %1285, 19, !dbg !347
  %1287 = or i32 %1283, %1286, !dbg !347
  %1288 = xor i32 %1280, %1287, !dbg !347
  %1289 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !347
  %1290 = load i32, i32* %1289, align 4, !dbg !347
  %1291 = lshr i32 %1290, 22, !dbg !347
  %1292 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !347
  %1293 = load i32, i32* %1292, align 4, !dbg !347
  %1294 = shl i32 %1293, 10, !dbg !347
  %1295 = or i32 %1291, %1294, !dbg !347
  %1296 = xor i32 %1288, %1295, !dbg !347
  %1297 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !347
  %1298 = load i32, i32* %1297, align 4, !dbg !347
  %1299 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !347
  %1300 = load i32, i32* %1299, align 16, !dbg !347
  %1301 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !347
  %1302 = load i32, i32* %1301, align 4, !dbg !347
  %1303 = or i32 %1300, %1302, !dbg !347
  %1304 = and i32 %1298, %1303, !dbg !347
  %1305 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !347
  %1306 = load i32, i32* %1305, align 16, !dbg !347
  %1307 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !347
  %1308 = load i32, i32* %1307, align 4, !dbg !347
  %1309 = and i32 %1306, %1308, !dbg !347
  %1310 = or i32 %1304, %1309, !dbg !347
  %1311 = add i32 %1296, %1310, !dbg !347
  store i32 %1311, i32* %6, align 4, !dbg !347
  %1312 = load i32, i32* %5, align 4, !dbg !347
  %1313 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !347
  %1314 = load i32, i32* %1313, align 8, !dbg !347
  %1315 = add i32 %1314, %1312, !dbg !347
  store i32 %1315, i32* %1313, align 8, !dbg !347
  %1316 = load i32, i32* %5, align 4, !dbg !347
  %1317 = load i32, i32* %6, align 4, !dbg !347
  %1318 = add i32 %1316, %1317, !dbg !347
  %1319 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !347
  store i32 %1318, i32* %1319, align 8, !dbg !347
  %1320 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !348
  %1321 = load i32, i32* %1320, align 4, !dbg !348
  %1322 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !348
  %1323 = load i32, i32* %1322, align 8, !dbg !348
  %1324 = lshr i32 %1323, 6, !dbg !348
  %1325 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !348
  %1326 = load i32, i32* %1325, align 8, !dbg !348
  %1327 = shl i32 %1326, 26, !dbg !348
  %1328 = or i32 %1324, %1327, !dbg !348
  %1329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !348
  %1330 = load i32, i32* %1329, align 8, !dbg !348
  %1331 = lshr i32 %1330, 11, !dbg !348
  %1332 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !348
  %1333 = load i32, i32* %1332, align 8, !dbg !348
  %1334 = shl i32 %1333, 21, !dbg !348
  %1335 = or i32 %1331, %1334, !dbg !348
  %1336 = xor i32 %1328, %1335, !dbg !348
  %1337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !348
  %1338 = load i32, i32* %1337, align 8, !dbg !348
  %1339 = lshr i32 %1338, 25, !dbg !348
  %1340 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !348
  %1341 = load i32, i32* %1340, align 8, !dbg !348
  %1342 = shl i32 %1341, 7, !dbg !348
  %1343 = or i32 %1339, %1342, !dbg !348
  %1344 = xor i32 %1336, %1343, !dbg !348
  %1345 = add i32 %1321, %1344, !dbg !348
  %1346 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !348
  %1347 = load i32, i32* %1346, align 8, !dbg !348
  %1348 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !348
  %1349 = load i32, i32* %1348, align 4, !dbg !348
  %1350 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !348
  %1351 = load i32, i32* %1350, align 16, !dbg !348
  %1352 = xor i32 %1349, %1351, !dbg !348
  %1353 = and i32 %1347, %1352, !dbg !348
  %1354 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !348
  %1355 = load i32, i32* %1354, align 16, !dbg !348
  %1356 = xor i32 %1353, %1355, !dbg !348
  %1357 = add i32 %1345, %1356, !dbg !348
  %1358 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 14, !dbg !348
  %1359 = load i32, i32* %1358, align 8, !dbg !348
  %1360 = add i32 %1357, %1359, !dbg !348
  %1361 = add i32 %1360, -1680079193, !dbg !348
  store i32 %1361, i32* %5, align 4, !dbg !348
  %1362 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !348
  %1363 = load i32, i32* %1362, align 8, !dbg !348
  %1364 = lshr i32 %1363, 2, !dbg !348
  %1365 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !348
  %1366 = load i32, i32* %1365, align 8, !dbg !348
  %1367 = shl i32 %1366, 30, !dbg !348
  %1368 = or i32 %1364, %1367, !dbg !348
  %1369 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !348
  %1370 = load i32, i32* %1369, align 8, !dbg !348
  %1371 = lshr i32 %1370, 13, !dbg !348
  %1372 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !348
  %1373 = load i32, i32* %1372, align 8, !dbg !348
  %1374 = shl i32 %1373, 19, !dbg !348
  %1375 = or i32 %1371, %1374, !dbg !348
  %1376 = xor i32 %1368, %1375, !dbg !348
  %1377 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !348
  %1378 = load i32, i32* %1377, align 8, !dbg !348
  %1379 = lshr i32 %1378, 22, !dbg !348
  %1380 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !348
  %1381 = load i32, i32* %1380, align 8, !dbg !348
  %1382 = shl i32 %1381, 10, !dbg !348
  %1383 = or i32 %1379, %1382, !dbg !348
  %1384 = xor i32 %1376, %1383, !dbg !348
  %1385 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !348
  %1386 = load i32, i32* %1385, align 8, !dbg !348
  %1387 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !348
  %1388 = load i32, i32* %1387, align 4, !dbg !348
  %1389 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !348
  %1390 = load i32, i32* %1389, align 16, !dbg !348
  %1391 = or i32 %1388, %1390, !dbg !348
  %1392 = and i32 %1386, %1391, !dbg !348
  %1393 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !348
  %1394 = load i32, i32* %1393, align 4, !dbg !348
  %1395 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !348
  %1396 = load i32, i32* %1395, align 16, !dbg !348
  %1397 = and i32 %1394, %1396, !dbg !348
  %1398 = or i32 %1392, %1397, !dbg !348
  %1399 = add i32 %1384, %1398, !dbg !348
  store i32 %1399, i32* %6, align 4, !dbg !348
  %1400 = load i32, i32* %5, align 4, !dbg !348
  %1401 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !348
  %1402 = load i32, i32* %1401, align 4, !dbg !348
  %1403 = add i32 %1402, %1400, !dbg !348
  store i32 %1403, i32* %1401, align 4, !dbg !348
  %1404 = load i32, i32* %5, align 4, !dbg !348
  %1405 = load i32, i32* %6, align 4, !dbg !348
  %1406 = add i32 %1404, %1405, !dbg !348
  %1407 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !348
  store i32 %1406, i32* %1407, align 4, !dbg !348
  %1408 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !349
  %1409 = load i32, i32* %1408, align 16, !dbg !349
  %1410 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !349
  %1411 = load i32, i32* %1410, align 4, !dbg !349
  %1412 = lshr i32 %1411, 6, !dbg !349
  %1413 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !349
  %1414 = load i32, i32* %1413, align 4, !dbg !349
  %1415 = shl i32 %1414, 26, !dbg !349
  %1416 = or i32 %1412, %1415, !dbg !349
  %1417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !349
  %1418 = load i32, i32* %1417, align 4, !dbg !349
  %1419 = lshr i32 %1418, 11, !dbg !349
  %1420 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !349
  %1421 = load i32, i32* %1420, align 4, !dbg !349
  %1422 = shl i32 %1421, 21, !dbg !349
  %1423 = or i32 %1419, %1422, !dbg !349
  %1424 = xor i32 %1416, %1423, !dbg !349
  %1425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !349
  %1426 = load i32, i32* %1425, align 4, !dbg !349
  %1427 = lshr i32 %1426, 25, !dbg !349
  %1428 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !349
  %1429 = load i32, i32* %1428, align 4, !dbg !349
  %1430 = shl i32 %1429, 7, !dbg !349
  %1431 = or i32 %1427, %1430, !dbg !349
  %1432 = xor i32 %1424, %1431, !dbg !349
  %1433 = add i32 %1409, %1432, !dbg !349
  %1434 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !349
  %1435 = load i32, i32* %1434, align 4, !dbg !349
  %1436 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !349
  %1437 = load i32, i32* %1436, align 8, !dbg !349
  %1438 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !349
  %1439 = load i32, i32* %1438, align 4, !dbg !349
  %1440 = xor i32 %1437, %1439, !dbg !349
  %1441 = and i32 %1435, %1440, !dbg !349
  %1442 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !349
  %1443 = load i32, i32* %1442, align 4, !dbg !349
  %1444 = xor i32 %1441, %1443, !dbg !349
  %1445 = add i32 %1433, %1444, !dbg !349
  %1446 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 15, !dbg !349
  %1447 = load i32, i32* %1446, align 4, !dbg !349
  %1448 = add i32 %1445, %1447, !dbg !349
  %1449 = add i32 %1448, -1046744716, !dbg !349
  store i32 %1449, i32* %5, align 4, !dbg !349
  %1450 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !349
  %1451 = load i32, i32* %1450, align 4, !dbg !349
  %1452 = lshr i32 %1451, 2, !dbg !349
  %1453 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !349
  %1454 = load i32, i32* %1453, align 4, !dbg !349
  %1455 = shl i32 %1454, 30, !dbg !349
  %1456 = or i32 %1452, %1455, !dbg !349
  %1457 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !349
  %1458 = load i32, i32* %1457, align 4, !dbg !349
  %1459 = lshr i32 %1458, 13, !dbg !349
  %1460 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !349
  %1461 = load i32, i32* %1460, align 4, !dbg !349
  %1462 = shl i32 %1461, 19, !dbg !349
  %1463 = or i32 %1459, %1462, !dbg !349
  %1464 = xor i32 %1456, %1463, !dbg !349
  %1465 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !349
  %1466 = load i32, i32* %1465, align 4, !dbg !349
  %1467 = lshr i32 %1466, 22, !dbg !349
  %1468 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !349
  %1469 = load i32, i32* %1468, align 4, !dbg !349
  %1470 = shl i32 %1469, 10, !dbg !349
  %1471 = or i32 %1467, %1470, !dbg !349
  %1472 = xor i32 %1464, %1471, !dbg !349
  %1473 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !349
  %1474 = load i32, i32* %1473, align 4, !dbg !349
  %1475 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !349
  %1476 = load i32, i32* %1475, align 8, !dbg !349
  %1477 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !349
  %1478 = load i32, i32* %1477, align 4, !dbg !349
  %1479 = or i32 %1476, %1478, !dbg !349
  %1480 = and i32 %1474, %1479, !dbg !349
  %1481 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !349
  %1482 = load i32, i32* %1481, align 8, !dbg !349
  %1483 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !349
  %1484 = load i32, i32* %1483, align 4, !dbg !349
  %1485 = and i32 %1482, %1484, !dbg !349
  %1486 = or i32 %1480, %1485, !dbg !349
  %1487 = add i32 %1472, %1486, !dbg !349
  store i32 %1487, i32* %6, align 4, !dbg !349
  %1488 = load i32, i32* %5, align 4, !dbg !349
  %1489 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !349
  %1490 = load i32, i32* %1489, align 16, !dbg !349
  %1491 = add i32 %1490, %1488, !dbg !349
  store i32 %1491, i32* %1489, align 16, !dbg !349
  %1492 = load i32, i32* %5, align 4, !dbg !349
  %1493 = load i32, i32* %6, align 4, !dbg !349
  %1494 = add i32 %1492, %1493, !dbg !349
  %1495 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !349
  store i32 %1494, i32* %1495, align 16, !dbg !349
  %1496 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !350
  %1497 = load i32, i32* %1496, align 4, !dbg !350
  %1498 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !350
  %1499 = load i32, i32* %1498, align 16, !dbg !350
  %1500 = lshr i32 %1499, 6, !dbg !350
  %1501 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !350
  %1502 = load i32, i32* %1501, align 16, !dbg !350
  %1503 = shl i32 %1502, 26, !dbg !350
  %1504 = or i32 %1500, %1503, !dbg !350
  %1505 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !350
  %1506 = load i32, i32* %1505, align 16, !dbg !350
  %1507 = lshr i32 %1506, 11, !dbg !350
  %1508 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !350
  %1509 = load i32, i32* %1508, align 16, !dbg !350
  %1510 = shl i32 %1509, 21, !dbg !350
  %1511 = or i32 %1507, %1510, !dbg !350
  %1512 = xor i32 %1504, %1511, !dbg !350
  %1513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !350
  %1514 = load i32, i32* %1513, align 16, !dbg !350
  %1515 = lshr i32 %1514, 25, !dbg !350
  %1516 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !350
  %1517 = load i32, i32* %1516, align 16, !dbg !350
  %1518 = shl i32 %1517, 7, !dbg !350
  %1519 = or i32 %1515, %1518, !dbg !350
  %1520 = xor i32 %1512, %1519, !dbg !350
  %1521 = add i32 %1497, %1520, !dbg !350
  %1522 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !350
  %1523 = load i32, i32* %1522, align 16, !dbg !350
  %1524 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !350
  %1525 = load i32, i32* %1524, align 4, !dbg !350
  %1526 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !350
  %1527 = load i32, i32* %1526, align 8, !dbg !350
  %1528 = xor i32 %1525, %1527, !dbg !350
  %1529 = and i32 %1523, %1528, !dbg !350
  %1530 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !350
  %1531 = load i32, i32* %1530, align 8, !dbg !350
  %1532 = xor i32 %1529, %1531, !dbg !350
  %1533 = add i32 %1521, %1532, !dbg !350
  %1534 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 16, !dbg !350
  %1535 = load i32, i32* %1534, align 16, !dbg !350
  %1536 = add i32 %1533, %1535, !dbg !350
  %1537 = add i32 %1536, -459576895, !dbg !350
  store i32 %1537, i32* %5, align 4, !dbg !350
  %1538 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !350
  %1539 = load i32, i32* %1538, align 16, !dbg !350
  %1540 = lshr i32 %1539, 2, !dbg !350
  %1541 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !350
  %1542 = load i32, i32* %1541, align 16, !dbg !350
  %1543 = shl i32 %1542, 30, !dbg !350
  %1544 = or i32 %1540, %1543, !dbg !350
  %1545 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !350
  %1546 = load i32, i32* %1545, align 16, !dbg !350
  %1547 = lshr i32 %1546, 13, !dbg !350
  %1548 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !350
  %1549 = load i32, i32* %1548, align 16, !dbg !350
  %1550 = shl i32 %1549, 19, !dbg !350
  %1551 = or i32 %1547, %1550, !dbg !350
  %1552 = xor i32 %1544, %1551, !dbg !350
  %1553 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !350
  %1554 = load i32, i32* %1553, align 16, !dbg !350
  %1555 = lshr i32 %1554, 22, !dbg !350
  %1556 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !350
  %1557 = load i32, i32* %1556, align 16, !dbg !350
  %1558 = shl i32 %1557, 10, !dbg !350
  %1559 = or i32 %1555, %1558, !dbg !350
  %1560 = xor i32 %1552, %1559, !dbg !350
  %1561 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !350
  %1562 = load i32, i32* %1561, align 16, !dbg !350
  %1563 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !350
  %1564 = load i32, i32* %1563, align 4, !dbg !350
  %1565 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !350
  %1566 = load i32, i32* %1565, align 8, !dbg !350
  %1567 = or i32 %1564, %1566, !dbg !350
  %1568 = and i32 %1562, %1567, !dbg !350
  %1569 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !350
  %1570 = load i32, i32* %1569, align 4, !dbg !350
  %1571 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !350
  %1572 = load i32, i32* %1571, align 8, !dbg !350
  %1573 = and i32 %1570, %1572, !dbg !350
  %1574 = or i32 %1568, %1573, !dbg !350
  %1575 = add i32 %1560, %1574, !dbg !350
  store i32 %1575, i32* %6, align 4, !dbg !350
  %1576 = load i32, i32* %5, align 4, !dbg !350
  %1577 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !350
  %1578 = load i32, i32* %1577, align 4, !dbg !350
  %1579 = add i32 %1578, %1576, !dbg !350
  store i32 %1579, i32* %1577, align 4, !dbg !350
  %1580 = load i32, i32* %5, align 4, !dbg !350
  %1581 = load i32, i32* %6, align 4, !dbg !350
  %1582 = add i32 %1580, %1581, !dbg !350
  %1583 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !350
  store i32 %1582, i32* %1583, align 4, !dbg !350
  %1584 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !351
  %1585 = load i32, i32* %1584, align 8, !dbg !351
  %1586 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !351
  %1587 = load i32, i32* %1586, align 4, !dbg !351
  %1588 = lshr i32 %1587, 6, !dbg !351
  %1589 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !351
  %1590 = load i32, i32* %1589, align 4, !dbg !351
  %1591 = shl i32 %1590, 26, !dbg !351
  %1592 = or i32 %1588, %1591, !dbg !351
  %1593 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !351
  %1594 = load i32, i32* %1593, align 4, !dbg !351
  %1595 = lshr i32 %1594, 11, !dbg !351
  %1596 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !351
  %1597 = load i32, i32* %1596, align 4, !dbg !351
  %1598 = shl i32 %1597, 21, !dbg !351
  %1599 = or i32 %1595, %1598, !dbg !351
  %1600 = xor i32 %1592, %1599, !dbg !351
  %1601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !351
  %1602 = load i32, i32* %1601, align 4, !dbg !351
  %1603 = lshr i32 %1602, 25, !dbg !351
  %1604 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !351
  %1605 = load i32, i32* %1604, align 4, !dbg !351
  %1606 = shl i32 %1605, 7, !dbg !351
  %1607 = or i32 %1603, %1606, !dbg !351
  %1608 = xor i32 %1600, %1607, !dbg !351
  %1609 = add i32 %1585, %1608, !dbg !351
  %1610 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !351
  %1611 = load i32, i32* %1610, align 4, !dbg !351
  %1612 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !351
  %1613 = load i32, i32* %1612, align 16, !dbg !351
  %1614 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !351
  %1615 = load i32, i32* %1614, align 4, !dbg !351
  %1616 = xor i32 %1613, %1615, !dbg !351
  %1617 = and i32 %1611, %1616, !dbg !351
  %1618 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !351
  %1619 = load i32, i32* %1618, align 4, !dbg !351
  %1620 = xor i32 %1617, %1619, !dbg !351
  %1621 = add i32 %1609, %1620, !dbg !351
  %1622 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 17, !dbg !351
  %1623 = load i32, i32* %1622, align 4, !dbg !351
  %1624 = add i32 %1621, %1623, !dbg !351
  %1625 = add i32 %1624, -272742522, !dbg !351
  store i32 %1625, i32* %5, align 4, !dbg !351
  %1626 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !351
  %1627 = load i32, i32* %1626, align 4, !dbg !351
  %1628 = lshr i32 %1627, 2, !dbg !351
  %1629 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !351
  %1630 = load i32, i32* %1629, align 4, !dbg !351
  %1631 = shl i32 %1630, 30, !dbg !351
  %1632 = or i32 %1628, %1631, !dbg !351
  %1633 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !351
  %1634 = load i32, i32* %1633, align 4, !dbg !351
  %1635 = lshr i32 %1634, 13, !dbg !351
  %1636 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !351
  %1637 = load i32, i32* %1636, align 4, !dbg !351
  %1638 = shl i32 %1637, 19, !dbg !351
  %1639 = or i32 %1635, %1638, !dbg !351
  %1640 = xor i32 %1632, %1639, !dbg !351
  %1641 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !351
  %1642 = load i32, i32* %1641, align 4, !dbg !351
  %1643 = lshr i32 %1642, 22, !dbg !351
  %1644 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !351
  %1645 = load i32, i32* %1644, align 4, !dbg !351
  %1646 = shl i32 %1645, 10, !dbg !351
  %1647 = or i32 %1643, %1646, !dbg !351
  %1648 = xor i32 %1640, %1647, !dbg !351
  %1649 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !351
  %1650 = load i32, i32* %1649, align 4, !dbg !351
  %1651 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !351
  %1652 = load i32, i32* %1651, align 16, !dbg !351
  %1653 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !351
  %1654 = load i32, i32* %1653, align 4, !dbg !351
  %1655 = or i32 %1652, %1654, !dbg !351
  %1656 = and i32 %1650, %1655, !dbg !351
  %1657 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !351
  %1658 = load i32, i32* %1657, align 16, !dbg !351
  %1659 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !351
  %1660 = load i32, i32* %1659, align 4, !dbg !351
  %1661 = and i32 %1658, %1660, !dbg !351
  %1662 = or i32 %1656, %1661, !dbg !351
  %1663 = add i32 %1648, %1662, !dbg !351
  store i32 %1663, i32* %6, align 4, !dbg !351
  %1664 = load i32, i32* %5, align 4, !dbg !351
  %1665 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !351
  %1666 = load i32, i32* %1665, align 8, !dbg !351
  %1667 = add i32 %1666, %1664, !dbg !351
  store i32 %1667, i32* %1665, align 8, !dbg !351
  %1668 = load i32, i32* %5, align 4, !dbg !351
  %1669 = load i32, i32* %6, align 4, !dbg !351
  %1670 = add i32 %1668, %1669, !dbg !351
  %1671 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !351
  store i32 %1670, i32* %1671, align 8, !dbg !351
  %1672 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !352
  %1673 = load i32, i32* %1672, align 4, !dbg !352
  %1674 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !352
  %1675 = load i32, i32* %1674, align 8, !dbg !352
  %1676 = lshr i32 %1675, 6, !dbg !352
  %1677 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !352
  %1678 = load i32, i32* %1677, align 8, !dbg !352
  %1679 = shl i32 %1678, 26, !dbg !352
  %1680 = or i32 %1676, %1679, !dbg !352
  %1681 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !352
  %1682 = load i32, i32* %1681, align 8, !dbg !352
  %1683 = lshr i32 %1682, 11, !dbg !352
  %1684 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !352
  %1685 = load i32, i32* %1684, align 8, !dbg !352
  %1686 = shl i32 %1685, 21, !dbg !352
  %1687 = or i32 %1683, %1686, !dbg !352
  %1688 = xor i32 %1680, %1687, !dbg !352
  %1689 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !352
  %1690 = load i32, i32* %1689, align 8, !dbg !352
  %1691 = lshr i32 %1690, 25, !dbg !352
  %1692 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !352
  %1693 = load i32, i32* %1692, align 8, !dbg !352
  %1694 = shl i32 %1693, 7, !dbg !352
  %1695 = or i32 %1691, %1694, !dbg !352
  %1696 = xor i32 %1688, %1695, !dbg !352
  %1697 = add i32 %1673, %1696, !dbg !352
  %1698 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !352
  %1699 = load i32, i32* %1698, align 8, !dbg !352
  %1700 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !352
  %1701 = load i32, i32* %1700, align 4, !dbg !352
  %1702 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !352
  %1703 = load i32, i32* %1702, align 16, !dbg !352
  %1704 = xor i32 %1701, %1703, !dbg !352
  %1705 = and i32 %1699, %1704, !dbg !352
  %1706 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !352
  %1707 = load i32, i32* %1706, align 16, !dbg !352
  %1708 = xor i32 %1705, %1707, !dbg !352
  %1709 = add i32 %1697, %1708, !dbg !352
  %1710 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 18, !dbg !352
  %1711 = load i32, i32* %1710, align 8, !dbg !352
  %1712 = add i32 %1709, %1711, !dbg !352
  %1713 = add i32 %1712, 264347078, !dbg !352
  store i32 %1713, i32* %5, align 4, !dbg !352
  %1714 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !352
  %1715 = load i32, i32* %1714, align 8, !dbg !352
  %1716 = lshr i32 %1715, 2, !dbg !352
  %1717 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !352
  %1718 = load i32, i32* %1717, align 8, !dbg !352
  %1719 = shl i32 %1718, 30, !dbg !352
  %1720 = or i32 %1716, %1719, !dbg !352
  %1721 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !352
  %1722 = load i32, i32* %1721, align 8, !dbg !352
  %1723 = lshr i32 %1722, 13, !dbg !352
  %1724 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !352
  %1725 = load i32, i32* %1724, align 8, !dbg !352
  %1726 = shl i32 %1725, 19, !dbg !352
  %1727 = or i32 %1723, %1726, !dbg !352
  %1728 = xor i32 %1720, %1727, !dbg !352
  %1729 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !352
  %1730 = load i32, i32* %1729, align 8, !dbg !352
  %1731 = lshr i32 %1730, 22, !dbg !352
  %1732 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !352
  %1733 = load i32, i32* %1732, align 8, !dbg !352
  %1734 = shl i32 %1733, 10, !dbg !352
  %1735 = or i32 %1731, %1734, !dbg !352
  %1736 = xor i32 %1728, %1735, !dbg !352
  %1737 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !352
  %1738 = load i32, i32* %1737, align 8, !dbg !352
  %1739 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !352
  %1740 = load i32, i32* %1739, align 4, !dbg !352
  %1741 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !352
  %1742 = load i32, i32* %1741, align 16, !dbg !352
  %1743 = or i32 %1740, %1742, !dbg !352
  %1744 = and i32 %1738, %1743, !dbg !352
  %1745 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !352
  %1746 = load i32, i32* %1745, align 4, !dbg !352
  %1747 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !352
  %1748 = load i32, i32* %1747, align 16, !dbg !352
  %1749 = and i32 %1746, %1748, !dbg !352
  %1750 = or i32 %1744, %1749, !dbg !352
  %1751 = add i32 %1736, %1750, !dbg !352
  store i32 %1751, i32* %6, align 4, !dbg !352
  %1752 = load i32, i32* %5, align 4, !dbg !352
  %1753 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !352
  %1754 = load i32, i32* %1753, align 4, !dbg !352
  %1755 = add i32 %1754, %1752, !dbg !352
  store i32 %1755, i32* %1753, align 4, !dbg !352
  %1756 = load i32, i32* %5, align 4, !dbg !352
  %1757 = load i32, i32* %6, align 4, !dbg !352
  %1758 = add i32 %1756, %1757, !dbg !352
  %1759 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !352
  store i32 %1758, i32* %1759, align 4, !dbg !352
  %1760 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !353
  %1761 = load i32, i32* %1760, align 16, !dbg !353
  %1762 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !353
  %1763 = load i32, i32* %1762, align 4, !dbg !353
  %1764 = lshr i32 %1763, 6, !dbg !353
  %1765 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !353
  %1766 = load i32, i32* %1765, align 4, !dbg !353
  %1767 = shl i32 %1766, 26, !dbg !353
  %1768 = or i32 %1764, %1767, !dbg !353
  %1769 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !353
  %1770 = load i32, i32* %1769, align 4, !dbg !353
  %1771 = lshr i32 %1770, 11, !dbg !353
  %1772 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !353
  %1773 = load i32, i32* %1772, align 4, !dbg !353
  %1774 = shl i32 %1773, 21, !dbg !353
  %1775 = or i32 %1771, %1774, !dbg !353
  %1776 = xor i32 %1768, %1775, !dbg !353
  %1777 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !353
  %1778 = load i32, i32* %1777, align 4, !dbg !353
  %1779 = lshr i32 %1778, 25, !dbg !353
  %1780 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !353
  %1781 = load i32, i32* %1780, align 4, !dbg !353
  %1782 = shl i32 %1781, 7, !dbg !353
  %1783 = or i32 %1779, %1782, !dbg !353
  %1784 = xor i32 %1776, %1783, !dbg !353
  %1785 = add i32 %1761, %1784, !dbg !353
  %1786 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !353
  %1787 = load i32, i32* %1786, align 4, !dbg !353
  %1788 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !353
  %1789 = load i32, i32* %1788, align 8, !dbg !353
  %1790 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !353
  %1791 = load i32, i32* %1790, align 4, !dbg !353
  %1792 = xor i32 %1789, %1791, !dbg !353
  %1793 = and i32 %1787, %1792, !dbg !353
  %1794 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !353
  %1795 = load i32, i32* %1794, align 4, !dbg !353
  %1796 = xor i32 %1793, %1795, !dbg !353
  %1797 = add i32 %1785, %1796, !dbg !353
  %1798 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 19, !dbg !353
  %1799 = load i32, i32* %1798, align 4, !dbg !353
  %1800 = add i32 %1797, %1799, !dbg !353
  %1801 = add i32 %1800, 604807628, !dbg !353
  store i32 %1801, i32* %5, align 4, !dbg !353
  %1802 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !353
  %1803 = load i32, i32* %1802, align 4, !dbg !353
  %1804 = lshr i32 %1803, 2, !dbg !353
  %1805 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !353
  %1806 = load i32, i32* %1805, align 4, !dbg !353
  %1807 = shl i32 %1806, 30, !dbg !353
  %1808 = or i32 %1804, %1807, !dbg !353
  %1809 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !353
  %1810 = load i32, i32* %1809, align 4, !dbg !353
  %1811 = lshr i32 %1810, 13, !dbg !353
  %1812 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !353
  %1813 = load i32, i32* %1812, align 4, !dbg !353
  %1814 = shl i32 %1813, 19, !dbg !353
  %1815 = or i32 %1811, %1814, !dbg !353
  %1816 = xor i32 %1808, %1815, !dbg !353
  %1817 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !353
  %1818 = load i32, i32* %1817, align 4, !dbg !353
  %1819 = lshr i32 %1818, 22, !dbg !353
  %1820 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !353
  %1821 = load i32, i32* %1820, align 4, !dbg !353
  %1822 = shl i32 %1821, 10, !dbg !353
  %1823 = or i32 %1819, %1822, !dbg !353
  %1824 = xor i32 %1816, %1823, !dbg !353
  %1825 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !353
  %1826 = load i32, i32* %1825, align 4, !dbg !353
  %1827 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !353
  %1828 = load i32, i32* %1827, align 8, !dbg !353
  %1829 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !353
  %1830 = load i32, i32* %1829, align 4, !dbg !353
  %1831 = or i32 %1828, %1830, !dbg !353
  %1832 = and i32 %1826, %1831, !dbg !353
  %1833 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !353
  %1834 = load i32, i32* %1833, align 8, !dbg !353
  %1835 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !353
  %1836 = load i32, i32* %1835, align 4, !dbg !353
  %1837 = and i32 %1834, %1836, !dbg !353
  %1838 = or i32 %1832, %1837, !dbg !353
  %1839 = add i32 %1824, %1838, !dbg !353
  store i32 %1839, i32* %6, align 4, !dbg !353
  %1840 = load i32, i32* %5, align 4, !dbg !353
  %1841 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !353
  %1842 = load i32, i32* %1841, align 16, !dbg !353
  %1843 = add i32 %1842, %1840, !dbg !353
  store i32 %1843, i32* %1841, align 16, !dbg !353
  %1844 = load i32, i32* %5, align 4, !dbg !353
  %1845 = load i32, i32* %6, align 4, !dbg !353
  %1846 = add i32 %1844, %1845, !dbg !353
  %1847 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !353
  store i32 %1846, i32* %1847, align 16, !dbg !353
  %1848 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !354
  %1849 = load i32, i32* %1848, align 4, !dbg !354
  %1850 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !354
  %1851 = load i32, i32* %1850, align 16, !dbg !354
  %1852 = lshr i32 %1851, 6, !dbg !354
  %1853 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !354
  %1854 = load i32, i32* %1853, align 16, !dbg !354
  %1855 = shl i32 %1854, 26, !dbg !354
  %1856 = or i32 %1852, %1855, !dbg !354
  %1857 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !354
  %1858 = load i32, i32* %1857, align 16, !dbg !354
  %1859 = lshr i32 %1858, 11, !dbg !354
  %1860 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !354
  %1861 = load i32, i32* %1860, align 16, !dbg !354
  %1862 = shl i32 %1861, 21, !dbg !354
  %1863 = or i32 %1859, %1862, !dbg !354
  %1864 = xor i32 %1856, %1863, !dbg !354
  %1865 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !354
  %1866 = load i32, i32* %1865, align 16, !dbg !354
  %1867 = lshr i32 %1866, 25, !dbg !354
  %1868 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !354
  %1869 = load i32, i32* %1868, align 16, !dbg !354
  %1870 = shl i32 %1869, 7, !dbg !354
  %1871 = or i32 %1867, %1870, !dbg !354
  %1872 = xor i32 %1864, %1871, !dbg !354
  %1873 = add i32 %1849, %1872, !dbg !354
  %1874 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !354
  %1875 = load i32, i32* %1874, align 16, !dbg !354
  %1876 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !354
  %1877 = load i32, i32* %1876, align 4, !dbg !354
  %1878 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !354
  %1879 = load i32, i32* %1878, align 8, !dbg !354
  %1880 = xor i32 %1877, %1879, !dbg !354
  %1881 = and i32 %1875, %1880, !dbg !354
  %1882 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !354
  %1883 = load i32, i32* %1882, align 8, !dbg !354
  %1884 = xor i32 %1881, %1883, !dbg !354
  %1885 = add i32 %1873, %1884, !dbg !354
  %1886 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 20, !dbg !354
  %1887 = load i32, i32* %1886, align 16, !dbg !354
  %1888 = add i32 %1885, %1887, !dbg !354
  %1889 = add i32 %1888, 770255983, !dbg !354
  store i32 %1889, i32* %5, align 4, !dbg !354
  %1890 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !354
  %1891 = load i32, i32* %1890, align 16, !dbg !354
  %1892 = lshr i32 %1891, 2, !dbg !354
  %1893 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !354
  %1894 = load i32, i32* %1893, align 16, !dbg !354
  %1895 = shl i32 %1894, 30, !dbg !354
  %1896 = or i32 %1892, %1895, !dbg !354
  %1897 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !354
  %1898 = load i32, i32* %1897, align 16, !dbg !354
  %1899 = lshr i32 %1898, 13, !dbg !354
  %1900 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !354
  %1901 = load i32, i32* %1900, align 16, !dbg !354
  %1902 = shl i32 %1901, 19, !dbg !354
  %1903 = or i32 %1899, %1902, !dbg !354
  %1904 = xor i32 %1896, %1903, !dbg !354
  %1905 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !354
  %1906 = load i32, i32* %1905, align 16, !dbg !354
  %1907 = lshr i32 %1906, 22, !dbg !354
  %1908 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !354
  %1909 = load i32, i32* %1908, align 16, !dbg !354
  %1910 = shl i32 %1909, 10, !dbg !354
  %1911 = or i32 %1907, %1910, !dbg !354
  %1912 = xor i32 %1904, %1911, !dbg !354
  %1913 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !354
  %1914 = load i32, i32* %1913, align 16, !dbg !354
  %1915 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !354
  %1916 = load i32, i32* %1915, align 4, !dbg !354
  %1917 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !354
  %1918 = load i32, i32* %1917, align 8, !dbg !354
  %1919 = or i32 %1916, %1918, !dbg !354
  %1920 = and i32 %1914, %1919, !dbg !354
  %1921 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !354
  %1922 = load i32, i32* %1921, align 4, !dbg !354
  %1923 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !354
  %1924 = load i32, i32* %1923, align 8, !dbg !354
  %1925 = and i32 %1922, %1924, !dbg !354
  %1926 = or i32 %1920, %1925, !dbg !354
  %1927 = add i32 %1912, %1926, !dbg !354
  store i32 %1927, i32* %6, align 4, !dbg !354
  %1928 = load i32, i32* %5, align 4, !dbg !354
  %1929 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !354
  %1930 = load i32, i32* %1929, align 4, !dbg !354
  %1931 = add i32 %1930, %1928, !dbg !354
  store i32 %1931, i32* %1929, align 4, !dbg !354
  %1932 = load i32, i32* %5, align 4, !dbg !354
  %1933 = load i32, i32* %6, align 4, !dbg !354
  %1934 = add i32 %1932, %1933, !dbg !354
  %1935 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !354
  store i32 %1934, i32* %1935, align 4, !dbg !354
  %1936 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !355
  %1937 = load i32, i32* %1936, align 8, !dbg !355
  %1938 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !355
  %1939 = load i32, i32* %1938, align 4, !dbg !355
  %1940 = lshr i32 %1939, 6, !dbg !355
  %1941 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !355
  %1942 = load i32, i32* %1941, align 4, !dbg !355
  %1943 = shl i32 %1942, 26, !dbg !355
  %1944 = or i32 %1940, %1943, !dbg !355
  %1945 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !355
  %1946 = load i32, i32* %1945, align 4, !dbg !355
  %1947 = lshr i32 %1946, 11, !dbg !355
  %1948 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !355
  %1949 = load i32, i32* %1948, align 4, !dbg !355
  %1950 = shl i32 %1949, 21, !dbg !355
  %1951 = or i32 %1947, %1950, !dbg !355
  %1952 = xor i32 %1944, %1951, !dbg !355
  %1953 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !355
  %1954 = load i32, i32* %1953, align 4, !dbg !355
  %1955 = lshr i32 %1954, 25, !dbg !355
  %1956 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !355
  %1957 = load i32, i32* %1956, align 4, !dbg !355
  %1958 = shl i32 %1957, 7, !dbg !355
  %1959 = or i32 %1955, %1958, !dbg !355
  %1960 = xor i32 %1952, %1959, !dbg !355
  %1961 = add i32 %1937, %1960, !dbg !355
  %1962 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !355
  %1963 = load i32, i32* %1962, align 4, !dbg !355
  %1964 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !355
  %1965 = load i32, i32* %1964, align 16, !dbg !355
  %1966 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !355
  %1967 = load i32, i32* %1966, align 4, !dbg !355
  %1968 = xor i32 %1965, %1967, !dbg !355
  %1969 = and i32 %1963, %1968, !dbg !355
  %1970 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !355
  %1971 = load i32, i32* %1970, align 4, !dbg !355
  %1972 = xor i32 %1969, %1971, !dbg !355
  %1973 = add i32 %1961, %1972, !dbg !355
  %1974 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 21, !dbg !355
  %1975 = load i32, i32* %1974, align 4, !dbg !355
  %1976 = add i32 %1973, %1975, !dbg !355
  %1977 = add i32 %1976, 1249150122, !dbg !355
  store i32 %1977, i32* %5, align 4, !dbg !355
  %1978 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !355
  %1979 = load i32, i32* %1978, align 4, !dbg !355
  %1980 = lshr i32 %1979, 2, !dbg !355
  %1981 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !355
  %1982 = load i32, i32* %1981, align 4, !dbg !355
  %1983 = shl i32 %1982, 30, !dbg !355
  %1984 = or i32 %1980, %1983, !dbg !355
  %1985 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !355
  %1986 = load i32, i32* %1985, align 4, !dbg !355
  %1987 = lshr i32 %1986, 13, !dbg !355
  %1988 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !355
  %1989 = load i32, i32* %1988, align 4, !dbg !355
  %1990 = shl i32 %1989, 19, !dbg !355
  %1991 = or i32 %1987, %1990, !dbg !355
  %1992 = xor i32 %1984, %1991, !dbg !355
  %1993 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !355
  %1994 = load i32, i32* %1993, align 4, !dbg !355
  %1995 = lshr i32 %1994, 22, !dbg !355
  %1996 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !355
  %1997 = load i32, i32* %1996, align 4, !dbg !355
  %1998 = shl i32 %1997, 10, !dbg !355
  %1999 = or i32 %1995, %1998, !dbg !355
  %2000 = xor i32 %1992, %1999, !dbg !355
  %2001 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !355
  %2002 = load i32, i32* %2001, align 4, !dbg !355
  %2003 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !355
  %2004 = load i32, i32* %2003, align 16, !dbg !355
  %2005 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !355
  %2006 = load i32, i32* %2005, align 4, !dbg !355
  %2007 = or i32 %2004, %2006, !dbg !355
  %2008 = and i32 %2002, %2007, !dbg !355
  %2009 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !355
  %2010 = load i32, i32* %2009, align 16, !dbg !355
  %2011 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !355
  %2012 = load i32, i32* %2011, align 4, !dbg !355
  %2013 = and i32 %2010, %2012, !dbg !355
  %2014 = or i32 %2008, %2013, !dbg !355
  %2015 = add i32 %2000, %2014, !dbg !355
  store i32 %2015, i32* %6, align 4, !dbg !355
  %2016 = load i32, i32* %5, align 4, !dbg !355
  %2017 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !355
  %2018 = load i32, i32* %2017, align 8, !dbg !355
  %2019 = add i32 %2018, %2016, !dbg !355
  store i32 %2019, i32* %2017, align 8, !dbg !355
  %2020 = load i32, i32* %5, align 4, !dbg !355
  %2021 = load i32, i32* %6, align 4, !dbg !355
  %2022 = add i32 %2020, %2021, !dbg !355
  %2023 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !355
  store i32 %2022, i32* %2023, align 8, !dbg !355
  %2024 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !356
  %2025 = load i32, i32* %2024, align 4, !dbg !356
  %2026 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !356
  %2027 = load i32, i32* %2026, align 8, !dbg !356
  %2028 = lshr i32 %2027, 6, !dbg !356
  %2029 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !356
  %2030 = load i32, i32* %2029, align 8, !dbg !356
  %2031 = shl i32 %2030, 26, !dbg !356
  %2032 = or i32 %2028, %2031, !dbg !356
  %2033 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !356
  %2034 = load i32, i32* %2033, align 8, !dbg !356
  %2035 = lshr i32 %2034, 11, !dbg !356
  %2036 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !356
  %2037 = load i32, i32* %2036, align 8, !dbg !356
  %2038 = shl i32 %2037, 21, !dbg !356
  %2039 = or i32 %2035, %2038, !dbg !356
  %2040 = xor i32 %2032, %2039, !dbg !356
  %2041 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !356
  %2042 = load i32, i32* %2041, align 8, !dbg !356
  %2043 = lshr i32 %2042, 25, !dbg !356
  %2044 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !356
  %2045 = load i32, i32* %2044, align 8, !dbg !356
  %2046 = shl i32 %2045, 7, !dbg !356
  %2047 = or i32 %2043, %2046, !dbg !356
  %2048 = xor i32 %2040, %2047, !dbg !356
  %2049 = add i32 %2025, %2048, !dbg !356
  %2050 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !356
  %2051 = load i32, i32* %2050, align 8, !dbg !356
  %2052 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !356
  %2053 = load i32, i32* %2052, align 4, !dbg !356
  %2054 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !356
  %2055 = load i32, i32* %2054, align 16, !dbg !356
  %2056 = xor i32 %2053, %2055, !dbg !356
  %2057 = and i32 %2051, %2056, !dbg !356
  %2058 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !356
  %2059 = load i32, i32* %2058, align 16, !dbg !356
  %2060 = xor i32 %2057, %2059, !dbg !356
  %2061 = add i32 %2049, %2060, !dbg !356
  %2062 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 22, !dbg !356
  %2063 = load i32, i32* %2062, align 8, !dbg !356
  %2064 = add i32 %2061, %2063, !dbg !356
  %2065 = add i32 %2064, 1555081692, !dbg !356
  store i32 %2065, i32* %5, align 4, !dbg !356
  %2066 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !356
  %2067 = load i32, i32* %2066, align 8, !dbg !356
  %2068 = lshr i32 %2067, 2, !dbg !356
  %2069 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !356
  %2070 = load i32, i32* %2069, align 8, !dbg !356
  %2071 = shl i32 %2070, 30, !dbg !356
  %2072 = or i32 %2068, %2071, !dbg !356
  %2073 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !356
  %2074 = load i32, i32* %2073, align 8, !dbg !356
  %2075 = lshr i32 %2074, 13, !dbg !356
  %2076 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !356
  %2077 = load i32, i32* %2076, align 8, !dbg !356
  %2078 = shl i32 %2077, 19, !dbg !356
  %2079 = or i32 %2075, %2078, !dbg !356
  %2080 = xor i32 %2072, %2079, !dbg !356
  %2081 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !356
  %2082 = load i32, i32* %2081, align 8, !dbg !356
  %2083 = lshr i32 %2082, 22, !dbg !356
  %2084 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !356
  %2085 = load i32, i32* %2084, align 8, !dbg !356
  %2086 = shl i32 %2085, 10, !dbg !356
  %2087 = or i32 %2083, %2086, !dbg !356
  %2088 = xor i32 %2080, %2087, !dbg !356
  %2089 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !356
  %2090 = load i32, i32* %2089, align 8, !dbg !356
  %2091 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !356
  %2092 = load i32, i32* %2091, align 4, !dbg !356
  %2093 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !356
  %2094 = load i32, i32* %2093, align 16, !dbg !356
  %2095 = or i32 %2092, %2094, !dbg !356
  %2096 = and i32 %2090, %2095, !dbg !356
  %2097 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !356
  %2098 = load i32, i32* %2097, align 4, !dbg !356
  %2099 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !356
  %2100 = load i32, i32* %2099, align 16, !dbg !356
  %2101 = and i32 %2098, %2100, !dbg !356
  %2102 = or i32 %2096, %2101, !dbg !356
  %2103 = add i32 %2088, %2102, !dbg !356
  store i32 %2103, i32* %6, align 4, !dbg !356
  %2104 = load i32, i32* %5, align 4, !dbg !356
  %2105 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !356
  %2106 = load i32, i32* %2105, align 4, !dbg !356
  %2107 = add i32 %2106, %2104, !dbg !356
  store i32 %2107, i32* %2105, align 4, !dbg !356
  %2108 = load i32, i32* %5, align 4, !dbg !356
  %2109 = load i32, i32* %6, align 4, !dbg !356
  %2110 = add i32 %2108, %2109, !dbg !356
  %2111 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !356
  store i32 %2110, i32* %2111, align 4, !dbg !356
  %2112 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !357
  %2113 = load i32, i32* %2112, align 16, !dbg !357
  %2114 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !357
  %2115 = load i32, i32* %2114, align 4, !dbg !357
  %2116 = lshr i32 %2115, 6, !dbg !357
  %2117 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !357
  %2118 = load i32, i32* %2117, align 4, !dbg !357
  %2119 = shl i32 %2118, 26, !dbg !357
  %2120 = or i32 %2116, %2119, !dbg !357
  %2121 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !357
  %2122 = load i32, i32* %2121, align 4, !dbg !357
  %2123 = lshr i32 %2122, 11, !dbg !357
  %2124 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !357
  %2125 = load i32, i32* %2124, align 4, !dbg !357
  %2126 = shl i32 %2125, 21, !dbg !357
  %2127 = or i32 %2123, %2126, !dbg !357
  %2128 = xor i32 %2120, %2127, !dbg !357
  %2129 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !357
  %2130 = load i32, i32* %2129, align 4, !dbg !357
  %2131 = lshr i32 %2130, 25, !dbg !357
  %2132 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !357
  %2133 = load i32, i32* %2132, align 4, !dbg !357
  %2134 = shl i32 %2133, 7, !dbg !357
  %2135 = or i32 %2131, %2134, !dbg !357
  %2136 = xor i32 %2128, %2135, !dbg !357
  %2137 = add i32 %2113, %2136, !dbg !357
  %2138 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !357
  %2139 = load i32, i32* %2138, align 4, !dbg !357
  %2140 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !357
  %2141 = load i32, i32* %2140, align 8, !dbg !357
  %2142 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !357
  %2143 = load i32, i32* %2142, align 4, !dbg !357
  %2144 = xor i32 %2141, %2143, !dbg !357
  %2145 = and i32 %2139, %2144, !dbg !357
  %2146 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !357
  %2147 = load i32, i32* %2146, align 4, !dbg !357
  %2148 = xor i32 %2145, %2147, !dbg !357
  %2149 = add i32 %2137, %2148, !dbg !357
  %2150 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 23, !dbg !357
  %2151 = load i32, i32* %2150, align 4, !dbg !357
  %2152 = add i32 %2149, %2151, !dbg !357
  %2153 = add i32 %2152, 1996064986, !dbg !357
  store i32 %2153, i32* %5, align 4, !dbg !357
  %2154 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !357
  %2155 = load i32, i32* %2154, align 4, !dbg !357
  %2156 = lshr i32 %2155, 2, !dbg !357
  %2157 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !357
  %2158 = load i32, i32* %2157, align 4, !dbg !357
  %2159 = shl i32 %2158, 30, !dbg !357
  %2160 = or i32 %2156, %2159, !dbg !357
  %2161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !357
  %2162 = load i32, i32* %2161, align 4, !dbg !357
  %2163 = lshr i32 %2162, 13, !dbg !357
  %2164 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !357
  %2165 = load i32, i32* %2164, align 4, !dbg !357
  %2166 = shl i32 %2165, 19, !dbg !357
  %2167 = or i32 %2163, %2166, !dbg !357
  %2168 = xor i32 %2160, %2167, !dbg !357
  %2169 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !357
  %2170 = load i32, i32* %2169, align 4, !dbg !357
  %2171 = lshr i32 %2170, 22, !dbg !357
  %2172 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !357
  %2173 = load i32, i32* %2172, align 4, !dbg !357
  %2174 = shl i32 %2173, 10, !dbg !357
  %2175 = or i32 %2171, %2174, !dbg !357
  %2176 = xor i32 %2168, %2175, !dbg !357
  %2177 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !357
  %2178 = load i32, i32* %2177, align 4, !dbg !357
  %2179 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !357
  %2180 = load i32, i32* %2179, align 8, !dbg !357
  %2181 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !357
  %2182 = load i32, i32* %2181, align 4, !dbg !357
  %2183 = or i32 %2180, %2182, !dbg !357
  %2184 = and i32 %2178, %2183, !dbg !357
  %2185 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !357
  %2186 = load i32, i32* %2185, align 8, !dbg !357
  %2187 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !357
  %2188 = load i32, i32* %2187, align 4, !dbg !357
  %2189 = and i32 %2186, %2188, !dbg !357
  %2190 = or i32 %2184, %2189, !dbg !357
  %2191 = add i32 %2176, %2190, !dbg !357
  store i32 %2191, i32* %6, align 4, !dbg !357
  %2192 = load i32, i32* %5, align 4, !dbg !357
  %2193 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !357
  %2194 = load i32, i32* %2193, align 16, !dbg !357
  %2195 = add i32 %2194, %2192, !dbg !357
  store i32 %2195, i32* %2193, align 16, !dbg !357
  %2196 = load i32, i32* %5, align 4, !dbg !357
  %2197 = load i32, i32* %6, align 4, !dbg !357
  %2198 = add i32 %2196, %2197, !dbg !357
  %2199 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !357
  store i32 %2198, i32* %2199, align 16, !dbg !357
  %2200 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !358
  %2201 = load i32, i32* %2200, align 4, !dbg !358
  %2202 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !358
  %2203 = load i32, i32* %2202, align 16, !dbg !358
  %2204 = lshr i32 %2203, 6, !dbg !358
  %2205 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !358
  %2206 = load i32, i32* %2205, align 16, !dbg !358
  %2207 = shl i32 %2206, 26, !dbg !358
  %2208 = or i32 %2204, %2207, !dbg !358
  %2209 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !358
  %2210 = load i32, i32* %2209, align 16, !dbg !358
  %2211 = lshr i32 %2210, 11, !dbg !358
  %2212 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !358
  %2213 = load i32, i32* %2212, align 16, !dbg !358
  %2214 = shl i32 %2213, 21, !dbg !358
  %2215 = or i32 %2211, %2214, !dbg !358
  %2216 = xor i32 %2208, %2215, !dbg !358
  %2217 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !358
  %2218 = load i32, i32* %2217, align 16, !dbg !358
  %2219 = lshr i32 %2218, 25, !dbg !358
  %2220 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !358
  %2221 = load i32, i32* %2220, align 16, !dbg !358
  %2222 = shl i32 %2221, 7, !dbg !358
  %2223 = or i32 %2219, %2222, !dbg !358
  %2224 = xor i32 %2216, %2223, !dbg !358
  %2225 = add i32 %2201, %2224, !dbg !358
  %2226 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !358
  %2227 = load i32, i32* %2226, align 16, !dbg !358
  %2228 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !358
  %2229 = load i32, i32* %2228, align 4, !dbg !358
  %2230 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !358
  %2231 = load i32, i32* %2230, align 8, !dbg !358
  %2232 = xor i32 %2229, %2231, !dbg !358
  %2233 = and i32 %2227, %2232, !dbg !358
  %2234 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !358
  %2235 = load i32, i32* %2234, align 8, !dbg !358
  %2236 = xor i32 %2233, %2235, !dbg !358
  %2237 = add i32 %2225, %2236, !dbg !358
  %2238 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 24, !dbg !358
  %2239 = load i32, i32* %2238, align 16, !dbg !358
  %2240 = add i32 %2237, %2239, !dbg !358
  %2241 = add i32 %2240, -1740746414, !dbg !358
  store i32 %2241, i32* %5, align 4, !dbg !358
  %2242 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !358
  %2243 = load i32, i32* %2242, align 16, !dbg !358
  %2244 = lshr i32 %2243, 2, !dbg !358
  %2245 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !358
  %2246 = load i32, i32* %2245, align 16, !dbg !358
  %2247 = shl i32 %2246, 30, !dbg !358
  %2248 = or i32 %2244, %2247, !dbg !358
  %2249 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !358
  %2250 = load i32, i32* %2249, align 16, !dbg !358
  %2251 = lshr i32 %2250, 13, !dbg !358
  %2252 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !358
  %2253 = load i32, i32* %2252, align 16, !dbg !358
  %2254 = shl i32 %2253, 19, !dbg !358
  %2255 = or i32 %2251, %2254, !dbg !358
  %2256 = xor i32 %2248, %2255, !dbg !358
  %2257 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !358
  %2258 = load i32, i32* %2257, align 16, !dbg !358
  %2259 = lshr i32 %2258, 22, !dbg !358
  %2260 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !358
  %2261 = load i32, i32* %2260, align 16, !dbg !358
  %2262 = shl i32 %2261, 10, !dbg !358
  %2263 = or i32 %2259, %2262, !dbg !358
  %2264 = xor i32 %2256, %2263, !dbg !358
  %2265 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !358
  %2266 = load i32, i32* %2265, align 16, !dbg !358
  %2267 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !358
  %2268 = load i32, i32* %2267, align 4, !dbg !358
  %2269 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !358
  %2270 = load i32, i32* %2269, align 8, !dbg !358
  %2271 = or i32 %2268, %2270, !dbg !358
  %2272 = and i32 %2266, %2271, !dbg !358
  %2273 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !358
  %2274 = load i32, i32* %2273, align 4, !dbg !358
  %2275 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !358
  %2276 = load i32, i32* %2275, align 8, !dbg !358
  %2277 = and i32 %2274, %2276, !dbg !358
  %2278 = or i32 %2272, %2277, !dbg !358
  %2279 = add i32 %2264, %2278, !dbg !358
  store i32 %2279, i32* %6, align 4, !dbg !358
  %2280 = load i32, i32* %5, align 4, !dbg !358
  %2281 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !358
  %2282 = load i32, i32* %2281, align 4, !dbg !358
  %2283 = add i32 %2282, %2280, !dbg !358
  store i32 %2283, i32* %2281, align 4, !dbg !358
  %2284 = load i32, i32* %5, align 4, !dbg !358
  %2285 = load i32, i32* %6, align 4, !dbg !358
  %2286 = add i32 %2284, %2285, !dbg !358
  %2287 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !358
  store i32 %2286, i32* %2287, align 4, !dbg !358
  %2288 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !359
  %2289 = load i32, i32* %2288, align 8, !dbg !359
  %2290 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !359
  %2291 = load i32, i32* %2290, align 4, !dbg !359
  %2292 = lshr i32 %2291, 6, !dbg !359
  %2293 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !359
  %2294 = load i32, i32* %2293, align 4, !dbg !359
  %2295 = shl i32 %2294, 26, !dbg !359
  %2296 = or i32 %2292, %2295, !dbg !359
  %2297 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !359
  %2298 = load i32, i32* %2297, align 4, !dbg !359
  %2299 = lshr i32 %2298, 11, !dbg !359
  %2300 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !359
  %2301 = load i32, i32* %2300, align 4, !dbg !359
  %2302 = shl i32 %2301, 21, !dbg !359
  %2303 = or i32 %2299, %2302, !dbg !359
  %2304 = xor i32 %2296, %2303, !dbg !359
  %2305 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !359
  %2306 = load i32, i32* %2305, align 4, !dbg !359
  %2307 = lshr i32 %2306, 25, !dbg !359
  %2308 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !359
  %2309 = load i32, i32* %2308, align 4, !dbg !359
  %2310 = shl i32 %2309, 7, !dbg !359
  %2311 = or i32 %2307, %2310, !dbg !359
  %2312 = xor i32 %2304, %2311, !dbg !359
  %2313 = add i32 %2289, %2312, !dbg !359
  %2314 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !359
  %2315 = load i32, i32* %2314, align 4, !dbg !359
  %2316 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !359
  %2317 = load i32, i32* %2316, align 16, !dbg !359
  %2318 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !359
  %2319 = load i32, i32* %2318, align 4, !dbg !359
  %2320 = xor i32 %2317, %2319, !dbg !359
  %2321 = and i32 %2315, %2320, !dbg !359
  %2322 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !359
  %2323 = load i32, i32* %2322, align 4, !dbg !359
  %2324 = xor i32 %2321, %2323, !dbg !359
  %2325 = add i32 %2313, %2324, !dbg !359
  %2326 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 25, !dbg !359
  %2327 = load i32, i32* %2326, align 4, !dbg !359
  %2328 = add i32 %2325, %2327, !dbg !359
  %2329 = add i32 %2328, -1473132947, !dbg !359
  store i32 %2329, i32* %5, align 4, !dbg !359
  %2330 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !359
  %2331 = load i32, i32* %2330, align 4, !dbg !359
  %2332 = lshr i32 %2331, 2, !dbg !359
  %2333 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !359
  %2334 = load i32, i32* %2333, align 4, !dbg !359
  %2335 = shl i32 %2334, 30, !dbg !359
  %2336 = or i32 %2332, %2335, !dbg !359
  %2337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !359
  %2338 = load i32, i32* %2337, align 4, !dbg !359
  %2339 = lshr i32 %2338, 13, !dbg !359
  %2340 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !359
  %2341 = load i32, i32* %2340, align 4, !dbg !359
  %2342 = shl i32 %2341, 19, !dbg !359
  %2343 = or i32 %2339, %2342, !dbg !359
  %2344 = xor i32 %2336, %2343, !dbg !359
  %2345 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !359
  %2346 = load i32, i32* %2345, align 4, !dbg !359
  %2347 = lshr i32 %2346, 22, !dbg !359
  %2348 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !359
  %2349 = load i32, i32* %2348, align 4, !dbg !359
  %2350 = shl i32 %2349, 10, !dbg !359
  %2351 = or i32 %2347, %2350, !dbg !359
  %2352 = xor i32 %2344, %2351, !dbg !359
  %2353 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !359
  %2354 = load i32, i32* %2353, align 4, !dbg !359
  %2355 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !359
  %2356 = load i32, i32* %2355, align 16, !dbg !359
  %2357 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !359
  %2358 = load i32, i32* %2357, align 4, !dbg !359
  %2359 = or i32 %2356, %2358, !dbg !359
  %2360 = and i32 %2354, %2359, !dbg !359
  %2361 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !359
  %2362 = load i32, i32* %2361, align 16, !dbg !359
  %2363 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !359
  %2364 = load i32, i32* %2363, align 4, !dbg !359
  %2365 = and i32 %2362, %2364, !dbg !359
  %2366 = or i32 %2360, %2365, !dbg !359
  %2367 = add i32 %2352, %2366, !dbg !359
  store i32 %2367, i32* %6, align 4, !dbg !359
  %2368 = load i32, i32* %5, align 4, !dbg !359
  %2369 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !359
  %2370 = load i32, i32* %2369, align 8, !dbg !359
  %2371 = add i32 %2370, %2368, !dbg !359
  store i32 %2371, i32* %2369, align 8, !dbg !359
  %2372 = load i32, i32* %5, align 4, !dbg !359
  %2373 = load i32, i32* %6, align 4, !dbg !359
  %2374 = add i32 %2372, %2373, !dbg !359
  %2375 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !359
  store i32 %2374, i32* %2375, align 8, !dbg !359
  %2376 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !360
  %2377 = load i32, i32* %2376, align 4, !dbg !360
  %2378 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !360
  %2379 = load i32, i32* %2378, align 8, !dbg !360
  %2380 = lshr i32 %2379, 6, !dbg !360
  %2381 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !360
  %2382 = load i32, i32* %2381, align 8, !dbg !360
  %2383 = shl i32 %2382, 26, !dbg !360
  %2384 = or i32 %2380, %2383, !dbg !360
  %2385 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !360
  %2386 = load i32, i32* %2385, align 8, !dbg !360
  %2387 = lshr i32 %2386, 11, !dbg !360
  %2388 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !360
  %2389 = load i32, i32* %2388, align 8, !dbg !360
  %2390 = shl i32 %2389, 21, !dbg !360
  %2391 = or i32 %2387, %2390, !dbg !360
  %2392 = xor i32 %2384, %2391, !dbg !360
  %2393 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !360
  %2394 = load i32, i32* %2393, align 8, !dbg !360
  %2395 = lshr i32 %2394, 25, !dbg !360
  %2396 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !360
  %2397 = load i32, i32* %2396, align 8, !dbg !360
  %2398 = shl i32 %2397, 7, !dbg !360
  %2399 = or i32 %2395, %2398, !dbg !360
  %2400 = xor i32 %2392, %2399, !dbg !360
  %2401 = add i32 %2377, %2400, !dbg !360
  %2402 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !360
  %2403 = load i32, i32* %2402, align 8, !dbg !360
  %2404 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !360
  %2405 = load i32, i32* %2404, align 4, !dbg !360
  %2406 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !360
  %2407 = load i32, i32* %2406, align 16, !dbg !360
  %2408 = xor i32 %2405, %2407, !dbg !360
  %2409 = and i32 %2403, %2408, !dbg !360
  %2410 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !360
  %2411 = load i32, i32* %2410, align 16, !dbg !360
  %2412 = xor i32 %2409, %2411, !dbg !360
  %2413 = add i32 %2401, %2412, !dbg !360
  %2414 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 26, !dbg !360
  %2415 = load i32, i32* %2414, align 8, !dbg !360
  %2416 = add i32 %2413, %2415, !dbg !360
  %2417 = add i32 %2416, -1341970488, !dbg !360
  store i32 %2417, i32* %5, align 4, !dbg !360
  %2418 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !360
  %2419 = load i32, i32* %2418, align 8, !dbg !360
  %2420 = lshr i32 %2419, 2, !dbg !360
  %2421 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !360
  %2422 = load i32, i32* %2421, align 8, !dbg !360
  %2423 = shl i32 %2422, 30, !dbg !360
  %2424 = or i32 %2420, %2423, !dbg !360
  %2425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !360
  %2426 = load i32, i32* %2425, align 8, !dbg !360
  %2427 = lshr i32 %2426, 13, !dbg !360
  %2428 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !360
  %2429 = load i32, i32* %2428, align 8, !dbg !360
  %2430 = shl i32 %2429, 19, !dbg !360
  %2431 = or i32 %2427, %2430, !dbg !360
  %2432 = xor i32 %2424, %2431, !dbg !360
  %2433 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !360
  %2434 = load i32, i32* %2433, align 8, !dbg !360
  %2435 = lshr i32 %2434, 22, !dbg !360
  %2436 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !360
  %2437 = load i32, i32* %2436, align 8, !dbg !360
  %2438 = shl i32 %2437, 10, !dbg !360
  %2439 = or i32 %2435, %2438, !dbg !360
  %2440 = xor i32 %2432, %2439, !dbg !360
  %2441 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !360
  %2442 = load i32, i32* %2441, align 8, !dbg !360
  %2443 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !360
  %2444 = load i32, i32* %2443, align 4, !dbg !360
  %2445 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !360
  %2446 = load i32, i32* %2445, align 16, !dbg !360
  %2447 = or i32 %2444, %2446, !dbg !360
  %2448 = and i32 %2442, %2447, !dbg !360
  %2449 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !360
  %2450 = load i32, i32* %2449, align 4, !dbg !360
  %2451 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !360
  %2452 = load i32, i32* %2451, align 16, !dbg !360
  %2453 = and i32 %2450, %2452, !dbg !360
  %2454 = or i32 %2448, %2453, !dbg !360
  %2455 = add i32 %2440, %2454, !dbg !360
  store i32 %2455, i32* %6, align 4, !dbg !360
  %2456 = load i32, i32* %5, align 4, !dbg !360
  %2457 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !360
  %2458 = load i32, i32* %2457, align 4, !dbg !360
  %2459 = add i32 %2458, %2456, !dbg !360
  store i32 %2459, i32* %2457, align 4, !dbg !360
  %2460 = load i32, i32* %5, align 4, !dbg !360
  %2461 = load i32, i32* %6, align 4, !dbg !360
  %2462 = add i32 %2460, %2461, !dbg !360
  %2463 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !360
  store i32 %2462, i32* %2463, align 4, !dbg !360
  %2464 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !361
  %2465 = load i32, i32* %2464, align 16, !dbg !361
  %2466 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !361
  %2467 = load i32, i32* %2466, align 4, !dbg !361
  %2468 = lshr i32 %2467, 6, !dbg !361
  %2469 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !361
  %2470 = load i32, i32* %2469, align 4, !dbg !361
  %2471 = shl i32 %2470, 26, !dbg !361
  %2472 = or i32 %2468, %2471, !dbg !361
  %2473 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !361
  %2474 = load i32, i32* %2473, align 4, !dbg !361
  %2475 = lshr i32 %2474, 11, !dbg !361
  %2476 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !361
  %2477 = load i32, i32* %2476, align 4, !dbg !361
  %2478 = shl i32 %2477, 21, !dbg !361
  %2479 = or i32 %2475, %2478, !dbg !361
  %2480 = xor i32 %2472, %2479, !dbg !361
  %2481 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !361
  %2482 = load i32, i32* %2481, align 4, !dbg !361
  %2483 = lshr i32 %2482, 25, !dbg !361
  %2484 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !361
  %2485 = load i32, i32* %2484, align 4, !dbg !361
  %2486 = shl i32 %2485, 7, !dbg !361
  %2487 = or i32 %2483, %2486, !dbg !361
  %2488 = xor i32 %2480, %2487, !dbg !361
  %2489 = add i32 %2465, %2488, !dbg !361
  %2490 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !361
  %2491 = load i32, i32* %2490, align 4, !dbg !361
  %2492 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !361
  %2493 = load i32, i32* %2492, align 8, !dbg !361
  %2494 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !361
  %2495 = load i32, i32* %2494, align 4, !dbg !361
  %2496 = xor i32 %2493, %2495, !dbg !361
  %2497 = and i32 %2491, %2496, !dbg !361
  %2498 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !361
  %2499 = load i32, i32* %2498, align 4, !dbg !361
  %2500 = xor i32 %2497, %2499, !dbg !361
  %2501 = add i32 %2489, %2500, !dbg !361
  %2502 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 27, !dbg !361
  %2503 = load i32, i32* %2502, align 4, !dbg !361
  %2504 = add i32 %2501, %2503, !dbg !361
  %2505 = add i32 %2504, -1084653625, !dbg !361
  store i32 %2505, i32* %5, align 4, !dbg !361
  %2506 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !361
  %2507 = load i32, i32* %2506, align 4, !dbg !361
  %2508 = lshr i32 %2507, 2, !dbg !361
  %2509 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !361
  %2510 = load i32, i32* %2509, align 4, !dbg !361
  %2511 = shl i32 %2510, 30, !dbg !361
  %2512 = or i32 %2508, %2511, !dbg !361
  %2513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !361
  %2514 = load i32, i32* %2513, align 4, !dbg !361
  %2515 = lshr i32 %2514, 13, !dbg !361
  %2516 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !361
  %2517 = load i32, i32* %2516, align 4, !dbg !361
  %2518 = shl i32 %2517, 19, !dbg !361
  %2519 = or i32 %2515, %2518, !dbg !361
  %2520 = xor i32 %2512, %2519, !dbg !361
  %2521 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !361
  %2522 = load i32, i32* %2521, align 4, !dbg !361
  %2523 = lshr i32 %2522, 22, !dbg !361
  %2524 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !361
  %2525 = load i32, i32* %2524, align 4, !dbg !361
  %2526 = shl i32 %2525, 10, !dbg !361
  %2527 = or i32 %2523, %2526, !dbg !361
  %2528 = xor i32 %2520, %2527, !dbg !361
  %2529 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !361
  %2530 = load i32, i32* %2529, align 4, !dbg !361
  %2531 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !361
  %2532 = load i32, i32* %2531, align 8, !dbg !361
  %2533 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !361
  %2534 = load i32, i32* %2533, align 4, !dbg !361
  %2535 = or i32 %2532, %2534, !dbg !361
  %2536 = and i32 %2530, %2535, !dbg !361
  %2537 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !361
  %2538 = load i32, i32* %2537, align 8, !dbg !361
  %2539 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !361
  %2540 = load i32, i32* %2539, align 4, !dbg !361
  %2541 = and i32 %2538, %2540, !dbg !361
  %2542 = or i32 %2536, %2541, !dbg !361
  %2543 = add i32 %2528, %2542, !dbg !361
  store i32 %2543, i32* %6, align 4, !dbg !361
  %2544 = load i32, i32* %5, align 4, !dbg !361
  %2545 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !361
  %2546 = load i32, i32* %2545, align 16, !dbg !361
  %2547 = add i32 %2546, %2544, !dbg !361
  store i32 %2547, i32* %2545, align 16, !dbg !361
  %2548 = load i32, i32* %5, align 4, !dbg !361
  %2549 = load i32, i32* %6, align 4, !dbg !361
  %2550 = add i32 %2548, %2549, !dbg !361
  %2551 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !361
  store i32 %2550, i32* %2551, align 16, !dbg !361
  %2552 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !362
  %2553 = load i32, i32* %2552, align 4, !dbg !362
  %2554 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !362
  %2555 = load i32, i32* %2554, align 16, !dbg !362
  %2556 = lshr i32 %2555, 6, !dbg !362
  %2557 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !362
  %2558 = load i32, i32* %2557, align 16, !dbg !362
  %2559 = shl i32 %2558, 26, !dbg !362
  %2560 = or i32 %2556, %2559, !dbg !362
  %2561 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !362
  %2562 = load i32, i32* %2561, align 16, !dbg !362
  %2563 = lshr i32 %2562, 11, !dbg !362
  %2564 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !362
  %2565 = load i32, i32* %2564, align 16, !dbg !362
  %2566 = shl i32 %2565, 21, !dbg !362
  %2567 = or i32 %2563, %2566, !dbg !362
  %2568 = xor i32 %2560, %2567, !dbg !362
  %2569 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !362
  %2570 = load i32, i32* %2569, align 16, !dbg !362
  %2571 = lshr i32 %2570, 25, !dbg !362
  %2572 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !362
  %2573 = load i32, i32* %2572, align 16, !dbg !362
  %2574 = shl i32 %2573, 7, !dbg !362
  %2575 = or i32 %2571, %2574, !dbg !362
  %2576 = xor i32 %2568, %2575, !dbg !362
  %2577 = add i32 %2553, %2576, !dbg !362
  %2578 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !362
  %2579 = load i32, i32* %2578, align 16, !dbg !362
  %2580 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !362
  %2581 = load i32, i32* %2580, align 4, !dbg !362
  %2582 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !362
  %2583 = load i32, i32* %2582, align 8, !dbg !362
  %2584 = xor i32 %2581, %2583, !dbg !362
  %2585 = and i32 %2579, %2584, !dbg !362
  %2586 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !362
  %2587 = load i32, i32* %2586, align 8, !dbg !362
  %2588 = xor i32 %2585, %2587, !dbg !362
  %2589 = add i32 %2577, %2588, !dbg !362
  %2590 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 28, !dbg !362
  %2591 = load i32, i32* %2590, align 16, !dbg !362
  %2592 = add i32 %2589, %2591, !dbg !362
  %2593 = add i32 %2592, -958395405, !dbg !362
  store i32 %2593, i32* %5, align 4, !dbg !362
  %2594 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !362
  %2595 = load i32, i32* %2594, align 16, !dbg !362
  %2596 = lshr i32 %2595, 2, !dbg !362
  %2597 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !362
  %2598 = load i32, i32* %2597, align 16, !dbg !362
  %2599 = shl i32 %2598, 30, !dbg !362
  %2600 = or i32 %2596, %2599, !dbg !362
  %2601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !362
  %2602 = load i32, i32* %2601, align 16, !dbg !362
  %2603 = lshr i32 %2602, 13, !dbg !362
  %2604 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !362
  %2605 = load i32, i32* %2604, align 16, !dbg !362
  %2606 = shl i32 %2605, 19, !dbg !362
  %2607 = or i32 %2603, %2606, !dbg !362
  %2608 = xor i32 %2600, %2607, !dbg !362
  %2609 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !362
  %2610 = load i32, i32* %2609, align 16, !dbg !362
  %2611 = lshr i32 %2610, 22, !dbg !362
  %2612 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !362
  %2613 = load i32, i32* %2612, align 16, !dbg !362
  %2614 = shl i32 %2613, 10, !dbg !362
  %2615 = or i32 %2611, %2614, !dbg !362
  %2616 = xor i32 %2608, %2615, !dbg !362
  %2617 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !362
  %2618 = load i32, i32* %2617, align 16, !dbg !362
  %2619 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !362
  %2620 = load i32, i32* %2619, align 4, !dbg !362
  %2621 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !362
  %2622 = load i32, i32* %2621, align 8, !dbg !362
  %2623 = or i32 %2620, %2622, !dbg !362
  %2624 = and i32 %2618, %2623, !dbg !362
  %2625 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !362
  %2626 = load i32, i32* %2625, align 4, !dbg !362
  %2627 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !362
  %2628 = load i32, i32* %2627, align 8, !dbg !362
  %2629 = and i32 %2626, %2628, !dbg !362
  %2630 = or i32 %2624, %2629, !dbg !362
  %2631 = add i32 %2616, %2630, !dbg !362
  store i32 %2631, i32* %6, align 4, !dbg !362
  %2632 = load i32, i32* %5, align 4, !dbg !362
  %2633 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !362
  %2634 = load i32, i32* %2633, align 4, !dbg !362
  %2635 = add i32 %2634, %2632, !dbg !362
  store i32 %2635, i32* %2633, align 4, !dbg !362
  %2636 = load i32, i32* %5, align 4, !dbg !362
  %2637 = load i32, i32* %6, align 4, !dbg !362
  %2638 = add i32 %2636, %2637, !dbg !362
  %2639 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !362
  store i32 %2638, i32* %2639, align 4, !dbg !362
  %2640 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !363
  %2641 = load i32, i32* %2640, align 8, !dbg !363
  %2642 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !363
  %2643 = load i32, i32* %2642, align 4, !dbg !363
  %2644 = lshr i32 %2643, 6, !dbg !363
  %2645 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !363
  %2646 = load i32, i32* %2645, align 4, !dbg !363
  %2647 = shl i32 %2646, 26, !dbg !363
  %2648 = or i32 %2644, %2647, !dbg !363
  %2649 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !363
  %2650 = load i32, i32* %2649, align 4, !dbg !363
  %2651 = lshr i32 %2650, 11, !dbg !363
  %2652 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !363
  %2653 = load i32, i32* %2652, align 4, !dbg !363
  %2654 = shl i32 %2653, 21, !dbg !363
  %2655 = or i32 %2651, %2654, !dbg !363
  %2656 = xor i32 %2648, %2655, !dbg !363
  %2657 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !363
  %2658 = load i32, i32* %2657, align 4, !dbg !363
  %2659 = lshr i32 %2658, 25, !dbg !363
  %2660 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !363
  %2661 = load i32, i32* %2660, align 4, !dbg !363
  %2662 = shl i32 %2661, 7, !dbg !363
  %2663 = or i32 %2659, %2662, !dbg !363
  %2664 = xor i32 %2656, %2663, !dbg !363
  %2665 = add i32 %2641, %2664, !dbg !363
  %2666 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !363
  %2667 = load i32, i32* %2666, align 4, !dbg !363
  %2668 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !363
  %2669 = load i32, i32* %2668, align 16, !dbg !363
  %2670 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !363
  %2671 = load i32, i32* %2670, align 4, !dbg !363
  %2672 = xor i32 %2669, %2671, !dbg !363
  %2673 = and i32 %2667, %2672, !dbg !363
  %2674 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !363
  %2675 = load i32, i32* %2674, align 4, !dbg !363
  %2676 = xor i32 %2673, %2675, !dbg !363
  %2677 = add i32 %2665, %2676, !dbg !363
  %2678 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 29, !dbg !363
  %2679 = load i32, i32* %2678, align 4, !dbg !363
  %2680 = add i32 %2677, %2679, !dbg !363
  %2681 = add i32 %2680, -710438585, !dbg !363
  store i32 %2681, i32* %5, align 4, !dbg !363
  %2682 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !363
  %2683 = load i32, i32* %2682, align 4, !dbg !363
  %2684 = lshr i32 %2683, 2, !dbg !363
  %2685 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !363
  %2686 = load i32, i32* %2685, align 4, !dbg !363
  %2687 = shl i32 %2686, 30, !dbg !363
  %2688 = or i32 %2684, %2687, !dbg !363
  %2689 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !363
  %2690 = load i32, i32* %2689, align 4, !dbg !363
  %2691 = lshr i32 %2690, 13, !dbg !363
  %2692 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !363
  %2693 = load i32, i32* %2692, align 4, !dbg !363
  %2694 = shl i32 %2693, 19, !dbg !363
  %2695 = or i32 %2691, %2694, !dbg !363
  %2696 = xor i32 %2688, %2695, !dbg !363
  %2697 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !363
  %2698 = load i32, i32* %2697, align 4, !dbg !363
  %2699 = lshr i32 %2698, 22, !dbg !363
  %2700 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !363
  %2701 = load i32, i32* %2700, align 4, !dbg !363
  %2702 = shl i32 %2701, 10, !dbg !363
  %2703 = or i32 %2699, %2702, !dbg !363
  %2704 = xor i32 %2696, %2703, !dbg !363
  %2705 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !363
  %2706 = load i32, i32* %2705, align 4, !dbg !363
  %2707 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !363
  %2708 = load i32, i32* %2707, align 16, !dbg !363
  %2709 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !363
  %2710 = load i32, i32* %2709, align 4, !dbg !363
  %2711 = or i32 %2708, %2710, !dbg !363
  %2712 = and i32 %2706, %2711, !dbg !363
  %2713 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !363
  %2714 = load i32, i32* %2713, align 16, !dbg !363
  %2715 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !363
  %2716 = load i32, i32* %2715, align 4, !dbg !363
  %2717 = and i32 %2714, %2716, !dbg !363
  %2718 = or i32 %2712, %2717, !dbg !363
  %2719 = add i32 %2704, %2718, !dbg !363
  store i32 %2719, i32* %6, align 4, !dbg !363
  %2720 = load i32, i32* %5, align 4, !dbg !363
  %2721 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !363
  %2722 = load i32, i32* %2721, align 8, !dbg !363
  %2723 = add i32 %2722, %2720, !dbg !363
  store i32 %2723, i32* %2721, align 8, !dbg !363
  %2724 = load i32, i32* %5, align 4, !dbg !363
  %2725 = load i32, i32* %6, align 4, !dbg !363
  %2726 = add i32 %2724, %2725, !dbg !363
  %2727 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !363
  store i32 %2726, i32* %2727, align 8, !dbg !363
  %2728 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !364
  %2729 = load i32, i32* %2728, align 4, !dbg !364
  %2730 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !364
  %2731 = load i32, i32* %2730, align 8, !dbg !364
  %2732 = lshr i32 %2731, 6, !dbg !364
  %2733 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !364
  %2734 = load i32, i32* %2733, align 8, !dbg !364
  %2735 = shl i32 %2734, 26, !dbg !364
  %2736 = or i32 %2732, %2735, !dbg !364
  %2737 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !364
  %2738 = load i32, i32* %2737, align 8, !dbg !364
  %2739 = lshr i32 %2738, 11, !dbg !364
  %2740 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !364
  %2741 = load i32, i32* %2740, align 8, !dbg !364
  %2742 = shl i32 %2741, 21, !dbg !364
  %2743 = or i32 %2739, %2742, !dbg !364
  %2744 = xor i32 %2736, %2743, !dbg !364
  %2745 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !364
  %2746 = load i32, i32* %2745, align 8, !dbg !364
  %2747 = lshr i32 %2746, 25, !dbg !364
  %2748 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !364
  %2749 = load i32, i32* %2748, align 8, !dbg !364
  %2750 = shl i32 %2749, 7, !dbg !364
  %2751 = or i32 %2747, %2750, !dbg !364
  %2752 = xor i32 %2744, %2751, !dbg !364
  %2753 = add i32 %2729, %2752, !dbg !364
  %2754 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !364
  %2755 = load i32, i32* %2754, align 8, !dbg !364
  %2756 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !364
  %2757 = load i32, i32* %2756, align 4, !dbg !364
  %2758 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !364
  %2759 = load i32, i32* %2758, align 16, !dbg !364
  %2760 = xor i32 %2757, %2759, !dbg !364
  %2761 = and i32 %2755, %2760, !dbg !364
  %2762 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !364
  %2763 = load i32, i32* %2762, align 16, !dbg !364
  %2764 = xor i32 %2761, %2763, !dbg !364
  %2765 = add i32 %2753, %2764, !dbg !364
  %2766 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 30, !dbg !364
  %2767 = load i32, i32* %2766, align 8, !dbg !364
  %2768 = add i32 %2765, %2767, !dbg !364
  %2769 = add i32 %2768, 113926993, !dbg !364
  store i32 %2769, i32* %5, align 4, !dbg !364
  %2770 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !364
  %2771 = load i32, i32* %2770, align 8, !dbg !364
  %2772 = lshr i32 %2771, 2, !dbg !364
  %2773 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !364
  %2774 = load i32, i32* %2773, align 8, !dbg !364
  %2775 = shl i32 %2774, 30, !dbg !364
  %2776 = or i32 %2772, %2775, !dbg !364
  %2777 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !364
  %2778 = load i32, i32* %2777, align 8, !dbg !364
  %2779 = lshr i32 %2778, 13, !dbg !364
  %2780 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !364
  %2781 = load i32, i32* %2780, align 8, !dbg !364
  %2782 = shl i32 %2781, 19, !dbg !364
  %2783 = or i32 %2779, %2782, !dbg !364
  %2784 = xor i32 %2776, %2783, !dbg !364
  %2785 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !364
  %2786 = load i32, i32* %2785, align 8, !dbg !364
  %2787 = lshr i32 %2786, 22, !dbg !364
  %2788 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !364
  %2789 = load i32, i32* %2788, align 8, !dbg !364
  %2790 = shl i32 %2789, 10, !dbg !364
  %2791 = or i32 %2787, %2790, !dbg !364
  %2792 = xor i32 %2784, %2791, !dbg !364
  %2793 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !364
  %2794 = load i32, i32* %2793, align 8, !dbg !364
  %2795 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !364
  %2796 = load i32, i32* %2795, align 4, !dbg !364
  %2797 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !364
  %2798 = load i32, i32* %2797, align 16, !dbg !364
  %2799 = or i32 %2796, %2798, !dbg !364
  %2800 = and i32 %2794, %2799, !dbg !364
  %2801 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !364
  %2802 = load i32, i32* %2801, align 4, !dbg !364
  %2803 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !364
  %2804 = load i32, i32* %2803, align 16, !dbg !364
  %2805 = and i32 %2802, %2804, !dbg !364
  %2806 = or i32 %2800, %2805, !dbg !364
  %2807 = add i32 %2792, %2806, !dbg !364
  store i32 %2807, i32* %6, align 4, !dbg !364
  %2808 = load i32, i32* %5, align 4, !dbg !364
  %2809 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !364
  %2810 = load i32, i32* %2809, align 4, !dbg !364
  %2811 = add i32 %2810, %2808, !dbg !364
  store i32 %2811, i32* %2809, align 4, !dbg !364
  %2812 = load i32, i32* %5, align 4, !dbg !364
  %2813 = load i32, i32* %6, align 4, !dbg !364
  %2814 = add i32 %2812, %2813, !dbg !364
  %2815 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !364
  store i32 %2814, i32* %2815, align 4, !dbg !364
  %2816 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !365
  %2817 = load i32, i32* %2816, align 16, !dbg !365
  %2818 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !365
  %2819 = load i32, i32* %2818, align 4, !dbg !365
  %2820 = lshr i32 %2819, 6, !dbg !365
  %2821 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !365
  %2822 = load i32, i32* %2821, align 4, !dbg !365
  %2823 = shl i32 %2822, 26, !dbg !365
  %2824 = or i32 %2820, %2823, !dbg !365
  %2825 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !365
  %2826 = load i32, i32* %2825, align 4, !dbg !365
  %2827 = lshr i32 %2826, 11, !dbg !365
  %2828 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !365
  %2829 = load i32, i32* %2828, align 4, !dbg !365
  %2830 = shl i32 %2829, 21, !dbg !365
  %2831 = or i32 %2827, %2830, !dbg !365
  %2832 = xor i32 %2824, %2831, !dbg !365
  %2833 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !365
  %2834 = load i32, i32* %2833, align 4, !dbg !365
  %2835 = lshr i32 %2834, 25, !dbg !365
  %2836 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !365
  %2837 = load i32, i32* %2836, align 4, !dbg !365
  %2838 = shl i32 %2837, 7, !dbg !365
  %2839 = or i32 %2835, %2838, !dbg !365
  %2840 = xor i32 %2832, %2839, !dbg !365
  %2841 = add i32 %2817, %2840, !dbg !365
  %2842 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !365
  %2843 = load i32, i32* %2842, align 4, !dbg !365
  %2844 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !365
  %2845 = load i32, i32* %2844, align 8, !dbg !365
  %2846 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !365
  %2847 = load i32, i32* %2846, align 4, !dbg !365
  %2848 = xor i32 %2845, %2847, !dbg !365
  %2849 = and i32 %2843, %2848, !dbg !365
  %2850 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !365
  %2851 = load i32, i32* %2850, align 4, !dbg !365
  %2852 = xor i32 %2849, %2851, !dbg !365
  %2853 = add i32 %2841, %2852, !dbg !365
  %2854 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 31, !dbg !365
  %2855 = load i32, i32* %2854, align 4, !dbg !365
  %2856 = add i32 %2853, %2855, !dbg !365
  %2857 = add i32 %2856, 338241895, !dbg !365
  store i32 %2857, i32* %5, align 4, !dbg !365
  %2858 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !365
  %2859 = load i32, i32* %2858, align 4, !dbg !365
  %2860 = lshr i32 %2859, 2, !dbg !365
  %2861 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !365
  %2862 = load i32, i32* %2861, align 4, !dbg !365
  %2863 = shl i32 %2862, 30, !dbg !365
  %2864 = or i32 %2860, %2863, !dbg !365
  %2865 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !365
  %2866 = load i32, i32* %2865, align 4, !dbg !365
  %2867 = lshr i32 %2866, 13, !dbg !365
  %2868 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !365
  %2869 = load i32, i32* %2868, align 4, !dbg !365
  %2870 = shl i32 %2869, 19, !dbg !365
  %2871 = or i32 %2867, %2870, !dbg !365
  %2872 = xor i32 %2864, %2871, !dbg !365
  %2873 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !365
  %2874 = load i32, i32* %2873, align 4, !dbg !365
  %2875 = lshr i32 %2874, 22, !dbg !365
  %2876 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !365
  %2877 = load i32, i32* %2876, align 4, !dbg !365
  %2878 = shl i32 %2877, 10, !dbg !365
  %2879 = or i32 %2875, %2878, !dbg !365
  %2880 = xor i32 %2872, %2879, !dbg !365
  %2881 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !365
  %2882 = load i32, i32* %2881, align 4, !dbg !365
  %2883 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !365
  %2884 = load i32, i32* %2883, align 8, !dbg !365
  %2885 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !365
  %2886 = load i32, i32* %2885, align 4, !dbg !365
  %2887 = or i32 %2884, %2886, !dbg !365
  %2888 = and i32 %2882, %2887, !dbg !365
  %2889 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !365
  %2890 = load i32, i32* %2889, align 8, !dbg !365
  %2891 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !365
  %2892 = load i32, i32* %2891, align 4, !dbg !365
  %2893 = and i32 %2890, %2892, !dbg !365
  %2894 = or i32 %2888, %2893, !dbg !365
  %2895 = add i32 %2880, %2894, !dbg !365
  store i32 %2895, i32* %6, align 4, !dbg !365
  %2896 = load i32, i32* %5, align 4, !dbg !365
  %2897 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !365
  %2898 = load i32, i32* %2897, align 16, !dbg !365
  %2899 = add i32 %2898, %2896, !dbg !365
  store i32 %2899, i32* %2897, align 16, !dbg !365
  %2900 = load i32, i32* %5, align 4, !dbg !365
  %2901 = load i32, i32* %6, align 4, !dbg !365
  %2902 = add i32 %2900, %2901, !dbg !365
  %2903 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !365
  store i32 %2902, i32* %2903, align 16, !dbg !365
  %2904 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !366
  %2905 = load i32, i32* %2904, align 4, !dbg !366
  %2906 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !366
  %2907 = load i32, i32* %2906, align 16, !dbg !366
  %2908 = lshr i32 %2907, 6, !dbg !366
  %2909 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !366
  %2910 = load i32, i32* %2909, align 16, !dbg !366
  %2911 = shl i32 %2910, 26, !dbg !366
  %2912 = or i32 %2908, %2911, !dbg !366
  %2913 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !366
  %2914 = load i32, i32* %2913, align 16, !dbg !366
  %2915 = lshr i32 %2914, 11, !dbg !366
  %2916 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !366
  %2917 = load i32, i32* %2916, align 16, !dbg !366
  %2918 = shl i32 %2917, 21, !dbg !366
  %2919 = or i32 %2915, %2918, !dbg !366
  %2920 = xor i32 %2912, %2919, !dbg !366
  %2921 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !366
  %2922 = load i32, i32* %2921, align 16, !dbg !366
  %2923 = lshr i32 %2922, 25, !dbg !366
  %2924 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !366
  %2925 = load i32, i32* %2924, align 16, !dbg !366
  %2926 = shl i32 %2925, 7, !dbg !366
  %2927 = or i32 %2923, %2926, !dbg !366
  %2928 = xor i32 %2920, %2927, !dbg !366
  %2929 = add i32 %2905, %2928, !dbg !366
  %2930 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !366
  %2931 = load i32, i32* %2930, align 16, !dbg !366
  %2932 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !366
  %2933 = load i32, i32* %2932, align 4, !dbg !366
  %2934 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !366
  %2935 = load i32, i32* %2934, align 8, !dbg !366
  %2936 = xor i32 %2933, %2935, !dbg !366
  %2937 = and i32 %2931, %2936, !dbg !366
  %2938 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !366
  %2939 = load i32, i32* %2938, align 8, !dbg !366
  %2940 = xor i32 %2937, %2939, !dbg !366
  %2941 = add i32 %2929, %2940, !dbg !366
  %2942 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 32, !dbg !366
  %2943 = load i32, i32* %2942, align 16, !dbg !366
  %2944 = add i32 %2941, %2943, !dbg !366
  %2945 = add i32 %2944, 666307205, !dbg !366
  store i32 %2945, i32* %5, align 4, !dbg !366
  %2946 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !366
  %2947 = load i32, i32* %2946, align 16, !dbg !366
  %2948 = lshr i32 %2947, 2, !dbg !366
  %2949 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !366
  %2950 = load i32, i32* %2949, align 16, !dbg !366
  %2951 = shl i32 %2950, 30, !dbg !366
  %2952 = or i32 %2948, %2951, !dbg !366
  %2953 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !366
  %2954 = load i32, i32* %2953, align 16, !dbg !366
  %2955 = lshr i32 %2954, 13, !dbg !366
  %2956 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !366
  %2957 = load i32, i32* %2956, align 16, !dbg !366
  %2958 = shl i32 %2957, 19, !dbg !366
  %2959 = or i32 %2955, %2958, !dbg !366
  %2960 = xor i32 %2952, %2959, !dbg !366
  %2961 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !366
  %2962 = load i32, i32* %2961, align 16, !dbg !366
  %2963 = lshr i32 %2962, 22, !dbg !366
  %2964 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !366
  %2965 = load i32, i32* %2964, align 16, !dbg !366
  %2966 = shl i32 %2965, 10, !dbg !366
  %2967 = or i32 %2963, %2966, !dbg !366
  %2968 = xor i32 %2960, %2967, !dbg !366
  %2969 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !366
  %2970 = load i32, i32* %2969, align 16, !dbg !366
  %2971 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !366
  %2972 = load i32, i32* %2971, align 4, !dbg !366
  %2973 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !366
  %2974 = load i32, i32* %2973, align 8, !dbg !366
  %2975 = or i32 %2972, %2974, !dbg !366
  %2976 = and i32 %2970, %2975, !dbg !366
  %2977 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !366
  %2978 = load i32, i32* %2977, align 4, !dbg !366
  %2979 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !366
  %2980 = load i32, i32* %2979, align 8, !dbg !366
  %2981 = and i32 %2978, %2980, !dbg !366
  %2982 = or i32 %2976, %2981, !dbg !366
  %2983 = add i32 %2968, %2982, !dbg !366
  store i32 %2983, i32* %6, align 4, !dbg !366
  %2984 = load i32, i32* %5, align 4, !dbg !366
  %2985 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !366
  %2986 = load i32, i32* %2985, align 4, !dbg !366
  %2987 = add i32 %2986, %2984, !dbg !366
  store i32 %2987, i32* %2985, align 4, !dbg !366
  %2988 = load i32, i32* %5, align 4, !dbg !366
  %2989 = load i32, i32* %6, align 4, !dbg !366
  %2990 = add i32 %2988, %2989, !dbg !366
  %2991 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !366
  store i32 %2990, i32* %2991, align 4, !dbg !366
  %2992 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !367
  %2993 = load i32, i32* %2992, align 8, !dbg !367
  %2994 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !367
  %2995 = load i32, i32* %2994, align 4, !dbg !367
  %2996 = lshr i32 %2995, 6, !dbg !367
  %2997 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !367
  %2998 = load i32, i32* %2997, align 4, !dbg !367
  %2999 = shl i32 %2998, 26, !dbg !367
  %3000 = or i32 %2996, %2999, !dbg !367
  %3001 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !367
  %3002 = load i32, i32* %3001, align 4, !dbg !367
  %3003 = lshr i32 %3002, 11, !dbg !367
  %3004 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !367
  %3005 = load i32, i32* %3004, align 4, !dbg !367
  %3006 = shl i32 %3005, 21, !dbg !367
  %3007 = or i32 %3003, %3006, !dbg !367
  %3008 = xor i32 %3000, %3007, !dbg !367
  %3009 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !367
  %3010 = load i32, i32* %3009, align 4, !dbg !367
  %3011 = lshr i32 %3010, 25, !dbg !367
  %3012 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !367
  %3013 = load i32, i32* %3012, align 4, !dbg !367
  %3014 = shl i32 %3013, 7, !dbg !367
  %3015 = or i32 %3011, %3014, !dbg !367
  %3016 = xor i32 %3008, %3015, !dbg !367
  %3017 = add i32 %2993, %3016, !dbg !367
  %3018 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !367
  %3019 = load i32, i32* %3018, align 4, !dbg !367
  %3020 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !367
  %3021 = load i32, i32* %3020, align 16, !dbg !367
  %3022 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !367
  %3023 = load i32, i32* %3022, align 4, !dbg !367
  %3024 = xor i32 %3021, %3023, !dbg !367
  %3025 = and i32 %3019, %3024, !dbg !367
  %3026 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !367
  %3027 = load i32, i32* %3026, align 4, !dbg !367
  %3028 = xor i32 %3025, %3027, !dbg !367
  %3029 = add i32 %3017, %3028, !dbg !367
  %3030 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 33, !dbg !367
  %3031 = load i32, i32* %3030, align 4, !dbg !367
  %3032 = add i32 %3029, %3031, !dbg !367
  %3033 = add i32 %3032, 773529912, !dbg !367
  store i32 %3033, i32* %5, align 4, !dbg !367
  %3034 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !367
  %3035 = load i32, i32* %3034, align 4, !dbg !367
  %3036 = lshr i32 %3035, 2, !dbg !367
  %3037 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !367
  %3038 = load i32, i32* %3037, align 4, !dbg !367
  %3039 = shl i32 %3038, 30, !dbg !367
  %3040 = or i32 %3036, %3039, !dbg !367
  %3041 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !367
  %3042 = load i32, i32* %3041, align 4, !dbg !367
  %3043 = lshr i32 %3042, 13, !dbg !367
  %3044 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !367
  %3045 = load i32, i32* %3044, align 4, !dbg !367
  %3046 = shl i32 %3045, 19, !dbg !367
  %3047 = or i32 %3043, %3046, !dbg !367
  %3048 = xor i32 %3040, %3047, !dbg !367
  %3049 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !367
  %3050 = load i32, i32* %3049, align 4, !dbg !367
  %3051 = lshr i32 %3050, 22, !dbg !367
  %3052 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !367
  %3053 = load i32, i32* %3052, align 4, !dbg !367
  %3054 = shl i32 %3053, 10, !dbg !367
  %3055 = or i32 %3051, %3054, !dbg !367
  %3056 = xor i32 %3048, %3055, !dbg !367
  %3057 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !367
  %3058 = load i32, i32* %3057, align 4, !dbg !367
  %3059 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !367
  %3060 = load i32, i32* %3059, align 16, !dbg !367
  %3061 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !367
  %3062 = load i32, i32* %3061, align 4, !dbg !367
  %3063 = or i32 %3060, %3062, !dbg !367
  %3064 = and i32 %3058, %3063, !dbg !367
  %3065 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !367
  %3066 = load i32, i32* %3065, align 16, !dbg !367
  %3067 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !367
  %3068 = load i32, i32* %3067, align 4, !dbg !367
  %3069 = and i32 %3066, %3068, !dbg !367
  %3070 = or i32 %3064, %3069, !dbg !367
  %3071 = add i32 %3056, %3070, !dbg !367
  store i32 %3071, i32* %6, align 4, !dbg !367
  %3072 = load i32, i32* %5, align 4, !dbg !367
  %3073 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !367
  %3074 = load i32, i32* %3073, align 8, !dbg !367
  %3075 = add i32 %3074, %3072, !dbg !367
  store i32 %3075, i32* %3073, align 8, !dbg !367
  %3076 = load i32, i32* %5, align 4, !dbg !367
  %3077 = load i32, i32* %6, align 4, !dbg !367
  %3078 = add i32 %3076, %3077, !dbg !367
  %3079 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !367
  store i32 %3078, i32* %3079, align 8, !dbg !367
  %3080 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !368
  %3081 = load i32, i32* %3080, align 4, !dbg !368
  %3082 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !368
  %3083 = load i32, i32* %3082, align 8, !dbg !368
  %3084 = lshr i32 %3083, 6, !dbg !368
  %3085 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !368
  %3086 = load i32, i32* %3085, align 8, !dbg !368
  %3087 = shl i32 %3086, 26, !dbg !368
  %3088 = or i32 %3084, %3087, !dbg !368
  %3089 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !368
  %3090 = load i32, i32* %3089, align 8, !dbg !368
  %3091 = lshr i32 %3090, 11, !dbg !368
  %3092 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !368
  %3093 = load i32, i32* %3092, align 8, !dbg !368
  %3094 = shl i32 %3093, 21, !dbg !368
  %3095 = or i32 %3091, %3094, !dbg !368
  %3096 = xor i32 %3088, %3095, !dbg !368
  %3097 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !368
  %3098 = load i32, i32* %3097, align 8, !dbg !368
  %3099 = lshr i32 %3098, 25, !dbg !368
  %3100 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !368
  %3101 = load i32, i32* %3100, align 8, !dbg !368
  %3102 = shl i32 %3101, 7, !dbg !368
  %3103 = or i32 %3099, %3102, !dbg !368
  %3104 = xor i32 %3096, %3103, !dbg !368
  %3105 = add i32 %3081, %3104, !dbg !368
  %3106 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !368
  %3107 = load i32, i32* %3106, align 8, !dbg !368
  %3108 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !368
  %3109 = load i32, i32* %3108, align 4, !dbg !368
  %3110 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !368
  %3111 = load i32, i32* %3110, align 16, !dbg !368
  %3112 = xor i32 %3109, %3111, !dbg !368
  %3113 = and i32 %3107, %3112, !dbg !368
  %3114 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !368
  %3115 = load i32, i32* %3114, align 16, !dbg !368
  %3116 = xor i32 %3113, %3115, !dbg !368
  %3117 = add i32 %3105, %3116, !dbg !368
  %3118 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 34, !dbg !368
  %3119 = load i32, i32* %3118, align 8, !dbg !368
  %3120 = add i32 %3117, %3119, !dbg !368
  %3121 = add i32 %3120, 1294757372, !dbg !368
  store i32 %3121, i32* %5, align 4, !dbg !368
  %3122 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !368
  %3123 = load i32, i32* %3122, align 8, !dbg !368
  %3124 = lshr i32 %3123, 2, !dbg !368
  %3125 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !368
  %3126 = load i32, i32* %3125, align 8, !dbg !368
  %3127 = shl i32 %3126, 30, !dbg !368
  %3128 = or i32 %3124, %3127, !dbg !368
  %3129 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !368
  %3130 = load i32, i32* %3129, align 8, !dbg !368
  %3131 = lshr i32 %3130, 13, !dbg !368
  %3132 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !368
  %3133 = load i32, i32* %3132, align 8, !dbg !368
  %3134 = shl i32 %3133, 19, !dbg !368
  %3135 = or i32 %3131, %3134, !dbg !368
  %3136 = xor i32 %3128, %3135, !dbg !368
  %3137 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !368
  %3138 = load i32, i32* %3137, align 8, !dbg !368
  %3139 = lshr i32 %3138, 22, !dbg !368
  %3140 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !368
  %3141 = load i32, i32* %3140, align 8, !dbg !368
  %3142 = shl i32 %3141, 10, !dbg !368
  %3143 = or i32 %3139, %3142, !dbg !368
  %3144 = xor i32 %3136, %3143, !dbg !368
  %3145 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !368
  %3146 = load i32, i32* %3145, align 8, !dbg !368
  %3147 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !368
  %3148 = load i32, i32* %3147, align 4, !dbg !368
  %3149 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !368
  %3150 = load i32, i32* %3149, align 16, !dbg !368
  %3151 = or i32 %3148, %3150, !dbg !368
  %3152 = and i32 %3146, %3151, !dbg !368
  %3153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !368
  %3154 = load i32, i32* %3153, align 4, !dbg !368
  %3155 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !368
  %3156 = load i32, i32* %3155, align 16, !dbg !368
  %3157 = and i32 %3154, %3156, !dbg !368
  %3158 = or i32 %3152, %3157, !dbg !368
  %3159 = add i32 %3144, %3158, !dbg !368
  store i32 %3159, i32* %6, align 4, !dbg !368
  %3160 = load i32, i32* %5, align 4, !dbg !368
  %3161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !368
  %3162 = load i32, i32* %3161, align 4, !dbg !368
  %3163 = add i32 %3162, %3160, !dbg !368
  store i32 %3163, i32* %3161, align 4, !dbg !368
  %3164 = load i32, i32* %5, align 4, !dbg !368
  %3165 = load i32, i32* %6, align 4, !dbg !368
  %3166 = add i32 %3164, %3165, !dbg !368
  %3167 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !368
  store i32 %3166, i32* %3167, align 4, !dbg !368
  %3168 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !369
  %3169 = load i32, i32* %3168, align 16, !dbg !369
  %3170 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !369
  %3171 = load i32, i32* %3170, align 4, !dbg !369
  %3172 = lshr i32 %3171, 6, !dbg !369
  %3173 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !369
  %3174 = load i32, i32* %3173, align 4, !dbg !369
  %3175 = shl i32 %3174, 26, !dbg !369
  %3176 = or i32 %3172, %3175, !dbg !369
  %3177 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !369
  %3178 = load i32, i32* %3177, align 4, !dbg !369
  %3179 = lshr i32 %3178, 11, !dbg !369
  %3180 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !369
  %3181 = load i32, i32* %3180, align 4, !dbg !369
  %3182 = shl i32 %3181, 21, !dbg !369
  %3183 = or i32 %3179, %3182, !dbg !369
  %3184 = xor i32 %3176, %3183, !dbg !369
  %3185 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !369
  %3186 = load i32, i32* %3185, align 4, !dbg !369
  %3187 = lshr i32 %3186, 25, !dbg !369
  %3188 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !369
  %3189 = load i32, i32* %3188, align 4, !dbg !369
  %3190 = shl i32 %3189, 7, !dbg !369
  %3191 = or i32 %3187, %3190, !dbg !369
  %3192 = xor i32 %3184, %3191, !dbg !369
  %3193 = add i32 %3169, %3192, !dbg !369
  %3194 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !369
  %3195 = load i32, i32* %3194, align 4, !dbg !369
  %3196 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !369
  %3197 = load i32, i32* %3196, align 8, !dbg !369
  %3198 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !369
  %3199 = load i32, i32* %3198, align 4, !dbg !369
  %3200 = xor i32 %3197, %3199, !dbg !369
  %3201 = and i32 %3195, %3200, !dbg !369
  %3202 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !369
  %3203 = load i32, i32* %3202, align 4, !dbg !369
  %3204 = xor i32 %3201, %3203, !dbg !369
  %3205 = add i32 %3193, %3204, !dbg !369
  %3206 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 35, !dbg !369
  %3207 = load i32, i32* %3206, align 4, !dbg !369
  %3208 = add i32 %3205, %3207, !dbg !369
  %3209 = add i32 %3208, 1396182291, !dbg !369
  store i32 %3209, i32* %5, align 4, !dbg !369
  %3210 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !369
  %3211 = load i32, i32* %3210, align 4, !dbg !369
  %3212 = lshr i32 %3211, 2, !dbg !369
  %3213 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !369
  %3214 = load i32, i32* %3213, align 4, !dbg !369
  %3215 = shl i32 %3214, 30, !dbg !369
  %3216 = or i32 %3212, %3215, !dbg !369
  %3217 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !369
  %3218 = load i32, i32* %3217, align 4, !dbg !369
  %3219 = lshr i32 %3218, 13, !dbg !369
  %3220 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !369
  %3221 = load i32, i32* %3220, align 4, !dbg !369
  %3222 = shl i32 %3221, 19, !dbg !369
  %3223 = or i32 %3219, %3222, !dbg !369
  %3224 = xor i32 %3216, %3223, !dbg !369
  %3225 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !369
  %3226 = load i32, i32* %3225, align 4, !dbg !369
  %3227 = lshr i32 %3226, 22, !dbg !369
  %3228 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !369
  %3229 = load i32, i32* %3228, align 4, !dbg !369
  %3230 = shl i32 %3229, 10, !dbg !369
  %3231 = or i32 %3227, %3230, !dbg !369
  %3232 = xor i32 %3224, %3231, !dbg !369
  %3233 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !369
  %3234 = load i32, i32* %3233, align 4, !dbg !369
  %3235 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !369
  %3236 = load i32, i32* %3235, align 8, !dbg !369
  %3237 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !369
  %3238 = load i32, i32* %3237, align 4, !dbg !369
  %3239 = or i32 %3236, %3238, !dbg !369
  %3240 = and i32 %3234, %3239, !dbg !369
  %3241 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !369
  %3242 = load i32, i32* %3241, align 8, !dbg !369
  %3243 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !369
  %3244 = load i32, i32* %3243, align 4, !dbg !369
  %3245 = and i32 %3242, %3244, !dbg !369
  %3246 = or i32 %3240, %3245, !dbg !369
  %3247 = add i32 %3232, %3246, !dbg !369
  store i32 %3247, i32* %6, align 4, !dbg !369
  %3248 = load i32, i32* %5, align 4, !dbg !369
  %3249 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !369
  %3250 = load i32, i32* %3249, align 16, !dbg !369
  %3251 = add i32 %3250, %3248, !dbg !369
  store i32 %3251, i32* %3249, align 16, !dbg !369
  %3252 = load i32, i32* %5, align 4, !dbg !369
  %3253 = load i32, i32* %6, align 4, !dbg !369
  %3254 = add i32 %3252, %3253, !dbg !369
  %3255 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !369
  store i32 %3254, i32* %3255, align 16, !dbg !369
  %3256 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !370
  %3257 = load i32, i32* %3256, align 4, !dbg !370
  %3258 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !370
  %3259 = load i32, i32* %3258, align 16, !dbg !370
  %3260 = lshr i32 %3259, 6, !dbg !370
  %3261 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !370
  %3262 = load i32, i32* %3261, align 16, !dbg !370
  %3263 = shl i32 %3262, 26, !dbg !370
  %3264 = or i32 %3260, %3263, !dbg !370
  %3265 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !370
  %3266 = load i32, i32* %3265, align 16, !dbg !370
  %3267 = lshr i32 %3266, 11, !dbg !370
  %3268 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !370
  %3269 = load i32, i32* %3268, align 16, !dbg !370
  %3270 = shl i32 %3269, 21, !dbg !370
  %3271 = or i32 %3267, %3270, !dbg !370
  %3272 = xor i32 %3264, %3271, !dbg !370
  %3273 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !370
  %3274 = load i32, i32* %3273, align 16, !dbg !370
  %3275 = lshr i32 %3274, 25, !dbg !370
  %3276 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !370
  %3277 = load i32, i32* %3276, align 16, !dbg !370
  %3278 = shl i32 %3277, 7, !dbg !370
  %3279 = or i32 %3275, %3278, !dbg !370
  %3280 = xor i32 %3272, %3279, !dbg !370
  %3281 = add i32 %3257, %3280, !dbg !370
  %3282 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !370
  %3283 = load i32, i32* %3282, align 16, !dbg !370
  %3284 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !370
  %3285 = load i32, i32* %3284, align 4, !dbg !370
  %3286 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !370
  %3287 = load i32, i32* %3286, align 8, !dbg !370
  %3288 = xor i32 %3285, %3287, !dbg !370
  %3289 = and i32 %3283, %3288, !dbg !370
  %3290 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !370
  %3291 = load i32, i32* %3290, align 8, !dbg !370
  %3292 = xor i32 %3289, %3291, !dbg !370
  %3293 = add i32 %3281, %3292, !dbg !370
  %3294 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 36, !dbg !370
  %3295 = load i32, i32* %3294, align 16, !dbg !370
  %3296 = add i32 %3293, %3295, !dbg !370
  %3297 = add i32 %3296, 1695183700, !dbg !370
  store i32 %3297, i32* %5, align 4, !dbg !370
  %3298 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !370
  %3299 = load i32, i32* %3298, align 16, !dbg !370
  %3300 = lshr i32 %3299, 2, !dbg !370
  %3301 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !370
  %3302 = load i32, i32* %3301, align 16, !dbg !370
  %3303 = shl i32 %3302, 30, !dbg !370
  %3304 = or i32 %3300, %3303, !dbg !370
  %3305 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !370
  %3306 = load i32, i32* %3305, align 16, !dbg !370
  %3307 = lshr i32 %3306, 13, !dbg !370
  %3308 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !370
  %3309 = load i32, i32* %3308, align 16, !dbg !370
  %3310 = shl i32 %3309, 19, !dbg !370
  %3311 = or i32 %3307, %3310, !dbg !370
  %3312 = xor i32 %3304, %3311, !dbg !370
  %3313 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !370
  %3314 = load i32, i32* %3313, align 16, !dbg !370
  %3315 = lshr i32 %3314, 22, !dbg !370
  %3316 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !370
  %3317 = load i32, i32* %3316, align 16, !dbg !370
  %3318 = shl i32 %3317, 10, !dbg !370
  %3319 = or i32 %3315, %3318, !dbg !370
  %3320 = xor i32 %3312, %3319, !dbg !370
  %3321 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !370
  %3322 = load i32, i32* %3321, align 16, !dbg !370
  %3323 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !370
  %3324 = load i32, i32* %3323, align 4, !dbg !370
  %3325 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !370
  %3326 = load i32, i32* %3325, align 8, !dbg !370
  %3327 = or i32 %3324, %3326, !dbg !370
  %3328 = and i32 %3322, %3327, !dbg !370
  %3329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !370
  %3330 = load i32, i32* %3329, align 4, !dbg !370
  %3331 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !370
  %3332 = load i32, i32* %3331, align 8, !dbg !370
  %3333 = and i32 %3330, %3332, !dbg !370
  %3334 = or i32 %3328, %3333, !dbg !370
  %3335 = add i32 %3320, %3334, !dbg !370
  store i32 %3335, i32* %6, align 4, !dbg !370
  %3336 = load i32, i32* %5, align 4, !dbg !370
  %3337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !370
  %3338 = load i32, i32* %3337, align 4, !dbg !370
  %3339 = add i32 %3338, %3336, !dbg !370
  store i32 %3339, i32* %3337, align 4, !dbg !370
  %3340 = load i32, i32* %5, align 4, !dbg !370
  %3341 = load i32, i32* %6, align 4, !dbg !370
  %3342 = add i32 %3340, %3341, !dbg !370
  %3343 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !370
  store i32 %3342, i32* %3343, align 4, !dbg !370
  %3344 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !371
  %3345 = load i32, i32* %3344, align 8, !dbg !371
  %3346 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !371
  %3347 = load i32, i32* %3346, align 4, !dbg !371
  %3348 = lshr i32 %3347, 6, !dbg !371
  %3349 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !371
  %3350 = load i32, i32* %3349, align 4, !dbg !371
  %3351 = shl i32 %3350, 26, !dbg !371
  %3352 = or i32 %3348, %3351, !dbg !371
  %3353 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !371
  %3354 = load i32, i32* %3353, align 4, !dbg !371
  %3355 = lshr i32 %3354, 11, !dbg !371
  %3356 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !371
  %3357 = load i32, i32* %3356, align 4, !dbg !371
  %3358 = shl i32 %3357, 21, !dbg !371
  %3359 = or i32 %3355, %3358, !dbg !371
  %3360 = xor i32 %3352, %3359, !dbg !371
  %3361 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !371
  %3362 = load i32, i32* %3361, align 4, !dbg !371
  %3363 = lshr i32 %3362, 25, !dbg !371
  %3364 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !371
  %3365 = load i32, i32* %3364, align 4, !dbg !371
  %3366 = shl i32 %3365, 7, !dbg !371
  %3367 = or i32 %3363, %3366, !dbg !371
  %3368 = xor i32 %3360, %3367, !dbg !371
  %3369 = add i32 %3345, %3368, !dbg !371
  %3370 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !371
  %3371 = load i32, i32* %3370, align 4, !dbg !371
  %3372 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !371
  %3373 = load i32, i32* %3372, align 16, !dbg !371
  %3374 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !371
  %3375 = load i32, i32* %3374, align 4, !dbg !371
  %3376 = xor i32 %3373, %3375, !dbg !371
  %3377 = and i32 %3371, %3376, !dbg !371
  %3378 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !371
  %3379 = load i32, i32* %3378, align 4, !dbg !371
  %3380 = xor i32 %3377, %3379, !dbg !371
  %3381 = add i32 %3369, %3380, !dbg !371
  %3382 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 37, !dbg !371
  %3383 = load i32, i32* %3382, align 4, !dbg !371
  %3384 = add i32 %3381, %3383, !dbg !371
  %3385 = add i32 %3384, 1986661051, !dbg !371
  store i32 %3385, i32* %5, align 4, !dbg !371
  %3386 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !371
  %3387 = load i32, i32* %3386, align 4, !dbg !371
  %3388 = lshr i32 %3387, 2, !dbg !371
  %3389 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !371
  %3390 = load i32, i32* %3389, align 4, !dbg !371
  %3391 = shl i32 %3390, 30, !dbg !371
  %3392 = or i32 %3388, %3391, !dbg !371
  %3393 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !371
  %3394 = load i32, i32* %3393, align 4, !dbg !371
  %3395 = lshr i32 %3394, 13, !dbg !371
  %3396 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !371
  %3397 = load i32, i32* %3396, align 4, !dbg !371
  %3398 = shl i32 %3397, 19, !dbg !371
  %3399 = or i32 %3395, %3398, !dbg !371
  %3400 = xor i32 %3392, %3399, !dbg !371
  %3401 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !371
  %3402 = load i32, i32* %3401, align 4, !dbg !371
  %3403 = lshr i32 %3402, 22, !dbg !371
  %3404 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !371
  %3405 = load i32, i32* %3404, align 4, !dbg !371
  %3406 = shl i32 %3405, 10, !dbg !371
  %3407 = or i32 %3403, %3406, !dbg !371
  %3408 = xor i32 %3400, %3407, !dbg !371
  %3409 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !371
  %3410 = load i32, i32* %3409, align 4, !dbg !371
  %3411 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !371
  %3412 = load i32, i32* %3411, align 16, !dbg !371
  %3413 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !371
  %3414 = load i32, i32* %3413, align 4, !dbg !371
  %3415 = or i32 %3412, %3414, !dbg !371
  %3416 = and i32 %3410, %3415, !dbg !371
  %3417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !371
  %3418 = load i32, i32* %3417, align 16, !dbg !371
  %3419 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !371
  %3420 = load i32, i32* %3419, align 4, !dbg !371
  %3421 = and i32 %3418, %3420, !dbg !371
  %3422 = or i32 %3416, %3421, !dbg !371
  %3423 = add i32 %3408, %3422, !dbg !371
  store i32 %3423, i32* %6, align 4, !dbg !371
  %3424 = load i32, i32* %5, align 4, !dbg !371
  %3425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !371
  %3426 = load i32, i32* %3425, align 8, !dbg !371
  %3427 = add i32 %3426, %3424, !dbg !371
  store i32 %3427, i32* %3425, align 8, !dbg !371
  %3428 = load i32, i32* %5, align 4, !dbg !371
  %3429 = load i32, i32* %6, align 4, !dbg !371
  %3430 = add i32 %3428, %3429, !dbg !371
  %3431 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !371
  store i32 %3430, i32* %3431, align 8, !dbg !371
  %3432 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !372
  %3433 = load i32, i32* %3432, align 4, !dbg !372
  %3434 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !372
  %3435 = load i32, i32* %3434, align 8, !dbg !372
  %3436 = lshr i32 %3435, 6, !dbg !372
  %3437 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !372
  %3438 = load i32, i32* %3437, align 8, !dbg !372
  %3439 = shl i32 %3438, 26, !dbg !372
  %3440 = or i32 %3436, %3439, !dbg !372
  %3441 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !372
  %3442 = load i32, i32* %3441, align 8, !dbg !372
  %3443 = lshr i32 %3442, 11, !dbg !372
  %3444 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !372
  %3445 = load i32, i32* %3444, align 8, !dbg !372
  %3446 = shl i32 %3445, 21, !dbg !372
  %3447 = or i32 %3443, %3446, !dbg !372
  %3448 = xor i32 %3440, %3447, !dbg !372
  %3449 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !372
  %3450 = load i32, i32* %3449, align 8, !dbg !372
  %3451 = lshr i32 %3450, 25, !dbg !372
  %3452 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !372
  %3453 = load i32, i32* %3452, align 8, !dbg !372
  %3454 = shl i32 %3453, 7, !dbg !372
  %3455 = or i32 %3451, %3454, !dbg !372
  %3456 = xor i32 %3448, %3455, !dbg !372
  %3457 = add i32 %3433, %3456, !dbg !372
  %3458 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !372
  %3459 = load i32, i32* %3458, align 8, !dbg !372
  %3460 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !372
  %3461 = load i32, i32* %3460, align 4, !dbg !372
  %3462 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !372
  %3463 = load i32, i32* %3462, align 16, !dbg !372
  %3464 = xor i32 %3461, %3463, !dbg !372
  %3465 = and i32 %3459, %3464, !dbg !372
  %3466 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !372
  %3467 = load i32, i32* %3466, align 16, !dbg !372
  %3468 = xor i32 %3465, %3467, !dbg !372
  %3469 = add i32 %3457, %3468, !dbg !372
  %3470 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 38, !dbg !372
  %3471 = load i32, i32* %3470, align 8, !dbg !372
  %3472 = add i32 %3469, %3471, !dbg !372
  %3473 = add i32 %3472, -2117940946, !dbg !372
  store i32 %3473, i32* %5, align 4, !dbg !372
  %3474 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !372
  %3475 = load i32, i32* %3474, align 8, !dbg !372
  %3476 = lshr i32 %3475, 2, !dbg !372
  %3477 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !372
  %3478 = load i32, i32* %3477, align 8, !dbg !372
  %3479 = shl i32 %3478, 30, !dbg !372
  %3480 = or i32 %3476, %3479, !dbg !372
  %3481 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !372
  %3482 = load i32, i32* %3481, align 8, !dbg !372
  %3483 = lshr i32 %3482, 13, !dbg !372
  %3484 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !372
  %3485 = load i32, i32* %3484, align 8, !dbg !372
  %3486 = shl i32 %3485, 19, !dbg !372
  %3487 = or i32 %3483, %3486, !dbg !372
  %3488 = xor i32 %3480, %3487, !dbg !372
  %3489 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !372
  %3490 = load i32, i32* %3489, align 8, !dbg !372
  %3491 = lshr i32 %3490, 22, !dbg !372
  %3492 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !372
  %3493 = load i32, i32* %3492, align 8, !dbg !372
  %3494 = shl i32 %3493, 10, !dbg !372
  %3495 = or i32 %3491, %3494, !dbg !372
  %3496 = xor i32 %3488, %3495, !dbg !372
  %3497 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !372
  %3498 = load i32, i32* %3497, align 8, !dbg !372
  %3499 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !372
  %3500 = load i32, i32* %3499, align 4, !dbg !372
  %3501 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !372
  %3502 = load i32, i32* %3501, align 16, !dbg !372
  %3503 = or i32 %3500, %3502, !dbg !372
  %3504 = and i32 %3498, %3503, !dbg !372
  %3505 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !372
  %3506 = load i32, i32* %3505, align 4, !dbg !372
  %3507 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !372
  %3508 = load i32, i32* %3507, align 16, !dbg !372
  %3509 = and i32 %3506, %3508, !dbg !372
  %3510 = or i32 %3504, %3509, !dbg !372
  %3511 = add i32 %3496, %3510, !dbg !372
  store i32 %3511, i32* %6, align 4, !dbg !372
  %3512 = load i32, i32* %5, align 4, !dbg !372
  %3513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !372
  %3514 = load i32, i32* %3513, align 4, !dbg !372
  %3515 = add i32 %3514, %3512, !dbg !372
  store i32 %3515, i32* %3513, align 4, !dbg !372
  %3516 = load i32, i32* %5, align 4, !dbg !372
  %3517 = load i32, i32* %6, align 4, !dbg !372
  %3518 = add i32 %3516, %3517, !dbg !372
  %3519 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !372
  store i32 %3518, i32* %3519, align 4, !dbg !372
  %3520 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !373
  %3521 = load i32, i32* %3520, align 16, !dbg !373
  %3522 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !373
  %3523 = load i32, i32* %3522, align 4, !dbg !373
  %3524 = lshr i32 %3523, 6, !dbg !373
  %3525 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !373
  %3526 = load i32, i32* %3525, align 4, !dbg !373
  %3527 = shl i32 %3526, 26, !dbg !373
  %3528 = or i32 %3524, %3527, !dbg !373
  %3529 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !373
  %3530 = load i32, i32* %3529, align 4, !dbg !373
  %3531 = lshr i32 %3530, 11, !dbg !373
  %3532 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !373
  %3533 = load i32, i32* %3532, align 4, !dbg !373
  %3534 = shl i32 %3533, 21, !dbg !373
  %3535 = or i32 %3531, %3534, !dbg !373
  %3536 = xor i32 %3528, %3535, !dbg !373
  %3537 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !373
  %3538 = load i32, i32* %3537, align 4, !dbg !373
  %3539 = lshr i32 %3538, 25, !dbg !373
  %3540 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !373
  %3541 = load i32, i32* %3540, align 4, !dbg !373
  %3542 = shl i32 %3541, 7, !dbg !373
  %3543 = or i32 %3539, %3542, !dbg !373
  %3544 = xor i32 %3536, %3543, !dbg !373
  %3545 = add i32 %3521, %3544, !dbg !373
  %3546 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !373
  %3547 = load i32, i32* %3546, align 4, !dbg !373
  %3548 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !373
  %3549 = load i32, i32* %3548, align 8, !dbg !373
  %3550 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !373
  %3551 = load i32, i32* %3550, align 4, !dbg !373
  %3552 = xor i32 %3549, %3551, !dbg !373
  %3553 = and i32 %3547, %3552, !dbg !373
  %3554 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !373
  %3555 = load i32, i32* %3554, align 4, !dbg !373
  %3556 = xor i32 %3553, %3555, !dbg !373
  %3557 = add i32 %3545, %3556, !dbg !373
  %3558 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 39, !dbg !373
  %3559 = load i32, i32* %3558, align 4, !dbg !373
  %3560 = add i32 %3557, %3559, !dbg !373
  %3561 = add i32 %3560, -1838011259, !dbg !373
  store i32 %3561, i32* %5, align 4, !dbg !373
  %3562 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !373
  %3563 = load i32, i32* %3562, align 4, !dbg !373
  %3564 = lshr i32 %3563, 2, !dbg !373
  %3565 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !373
  %3566 = load i32, i32* %3565, align 4, !dbg !373
  %3567 = shl i32 %3566, 30, !dbg !373
  %3568 = or i32 %3564, %3567, !dbg !373
  %3569 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !373
  %3570 = load i32, i32* %3569, align 4, !dbg !373
  %3571 = lshr i32 %3570, 13, !dbg !373
  %3572 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !373
  %3573 = load i32, i32* %3572, align 4, !dbg !373
  %3574 = shl i32 %3573, 19, !dbg !373
  %3575 = or i32 %3571, %3574, !dbg !373
  %3576 = xor i32 %3568, %3575, !dbg !373
  %3577 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !373
  %3578 = load i32, i32* %3577, align 4, !dbg !373
  %3579 = lshr i32 %3578, 22, !dbg !373
  %3580 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !373
  %3581 = load i32, i32* %3580, align 4, !dbg !373
  %3582 = shl i32 %3581, 10, !dbg !373
  %3583 = or i32 %3579, %3582, !dbg !373
  %3584 = xor i32 %3576, %3583, !dbg !373
  %3585 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !373
  %3586 = load i32, i32* %3585, align 4, !dbg !373
  %3587 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !373
  %3588 = load i32, i32* %3587, align 8, !dbg !373
  %3589 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !373
  %3590 = load i32, i32* %3589, align 4, !dbg !373
  %3591 = or i32 %3588, %3590, !dbg !373
  %3592 = and i32 %3586, %3591, !dbg !373
  %3593 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !373
  %3594 = load i32, i32* %3593, align 8, !dbg !373
  %3595 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !373
  %3596 = load i32, i32* %3595, align 4, !dbg !373
  %3597 = and i32 %3594, %3596, !dbg !373
  %3598 = or i32 %3592, %3597, !dbg !373
  %3599 = add i32 %3584, %3598, !dbg !373
  store i32 %3599, i32* %6, align 4, !dbg !373
  %3600 = load i32, i32* %5, align 4, !dbg !373
  %3601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !373
  %3602 = load i32, i32* %3601, align 16, !dbg !373
  %3603 = add i32 %3602, %3600, !dbg !373
  store i32 %3603, i32* %3601, align 16, !dbg !373
  %3604 = load i32, i32* %5, align 4, !dbg !373
  %3605 = load i32, i32* %6, align 4, !dbg !373
  %3606 = add i32 %3604, %3605, !dbg !373
  %3607 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !373
  store i32 %3606, i32* %3607, align 16, !dbg !373
  %3608 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !374
  %3609 = load i32, i32* %3608, align 4, !dbg !374
  %3610 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !374
  %3611 = load i32, i32* %3610, align 16, !dbg !374
  %3612 = lshr i32 %3611, 6, !dbg !374
  %3613 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !374
  %3614 = load i32, i32* %3613, align 16, !dbg !374
  %3615 = shl i32 %3614, 26, !dbg !374
  %3616 = or i32 %3612, %3615, !dbg !374
  %3617 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !374
  %3618 = load i32, i32* %3617, align 16, !dbg !374
  %3619 = lshr i32 %3618, 11, !dbg !374
  %3620 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !374
  %3621 = load i32, i32* %3620, align 16, !dbg !374
  %3622 = shl i32 %3621, 21, !dbg !374
  %3623 = or i32 %3619, %3622, !dbg !374
  %3624 = xor i32 %3616, %3623, !dbg !374
  %3625 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !374
  %3626 = load i32, i32* %3625, align 16, !dbg !374
  %3627 = lshr i32 %3626, 25, !dbg !374
  %3628 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !374
  %3629 = load i32, i32* %3628, align 16, !dbg !374
  %3630 = shl i32 %3629, 7, !dbg !374
  %3631 = or i32 %3627, %3630, !dbg !374
  %3632 = xor i32 %3624, %3631, !dbg !374
  %3633 = add i32 %3609, %3632, !dbg !374
  %3634 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !374
  %3635 = load i32, i32* %3634, align 16, !dbg !374
  %3636 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !374
  %3637 = load i32, i32* %3636, align 4, !dbg !374
  %3638 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !374
  %3639 = load i32, i32* %3638, align 8, !dbg !374
  %3640 = xor i32 %3637, %3639, !dbg !374
  %3641 = and i32 %3635, %3640, !dbg !374
  %3642 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !374
  %3643 = load i32, i32* %3642, align 8, !dbg !374
  %3644 = xor i32 %3641, %3643, !dbg !374
  %3645 = add i32 %3633, %3644, !dbg !374
  %3646 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 40, !dbg !374
  %3647 = load i32, i32* %3646, align 16, !dbg !374
  %3648 = add i32 %3645, %3647, !dbg !374
  %3649 = add i32 %3648, -1564481375, !dbg !374
  store i32 %3649, i32* %5, align 4, !dbg !374
  %3650 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !374
  %3651 = load i32, i32* %3650, align 16, !dbg !374
  %3652 = lshr i32 %3651, 2, !dbg !374
  %3653 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !374
  %3654 = load i32, i32* %3653, align 16, !dbg !374
  %3655 = shl i32 %3654, 30, !dbg !374
  %3656 = or i32 %3652, %3655, !dbg !374
  %3657 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !374
  %3658 = load i32, i32* %3657, align 16, !dbg !374
  %3659 = lshr i32 %3658, 13, !dbg !374
  %3660 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !374
  %3661 = load i32, i32* %3660, align 16, !dbg !374
  %3662 = shl i32 %3661, 19, !dbg !374
  %3663 = or i32 %3659, %3662, !dbg !374
  %3664 = xor i32 %3656, %3663, !dbg !374
  %3665 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !374
  %3666 = load i32, i32* %3665, align 16, !dbg !374
  %3667 = lshr i32 %3666, 22, !dbg !374
  %3668 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !374
  %3669 = load i32, i32* %3668, align 16, !dbg !374
  %3670 = shl i32 %3669, 10, !dbg !374
  %3671 = or i32 %3667, %3670, !dbg !374
  %3672 = xor i32 %3664, %3671, !dbg !374
  %3673 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !374
  %3674 = load i32, i32* %3673, align 16, !dbg !374
  %3675 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !374
  %3676 = load i32, i32* %3675, align 4, !dbg !374
  %3677 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !374
  %3678 = load i32, i32* %3677, align 8, !dbg !374
  %3679 = or i32 %3676, %3678, !dbg !374
  %3680 = and i32 %3674, %3679, !dbg !374
  %3681 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !374
  %3682 = load i32, i32* %3681, align 4, !dbg !374
  %3683 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !374
  %3684 = load i32, i32* %3683, align 8, !dbg !374
  %3685 = and i32 %3682, %3684, !dbg !374
  %3686 = or i32 %3680, %3685, !dbg !374
  %3687 = add i32 %3672, %3686, !dbg !374
  store i32 %3687, i32* %6, align 4, !dbg !374
  %3688 = load i32, i32* %5, align 4, !dbg !374
  %3689 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !374
  %3690 = load i32, i32* %3689, align 4, !dbg !374
  %3691 = add i32 %3690, %3688, !dbg !374
  store i32 %3691, i32* %3689, align 4, !dbg !374
  %3692 = load i32, i32* %5, align 4, !dbg !374
  %3693 = load i32, i32* %6, align 4, !dbg !374
  %3694 = add i32 %3692, %3693, !dbg !374
  %3695 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !374
  store i32 %3694, i32* %3695, align 4, !dbg !374
  %3696 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !375
  %3697 = load i32, i32* %3696, align 8, !dbg !375
  %3698 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !375
  %3699 = load i32, i32* %3698, align 4, !dbg !375
  %3700 = lshr i32 %3699, 6, !dbg !375
  %3701 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !375
  %3702 = load i32, i32* %3701, align 4, !dbg !375
  %3703 = shl i32 %3702, 26, !dbg !375
  %3704 = or i32 %3700, %3703, !dbg !375
  %3705 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !375
  %3706 = load i32, i32* %3705, align 4, !dbg !375
  %3707 = lshr i32 %3706, 11, !dbg !375
  %3708 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !375
  %3709 = load i32, i32* %3708, align 4, !dbg !375
  %3710 = shl i32 %3709, 21, !dbg !375
  %3711 = or i32 %3707, %3710, !dbg !375
  %3712 = xor i32 %3704, %3711, !dbg !375
  %3713 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !375
  %3714 = load i32, i32* %3713, align 4, !dbg !375
  %3715 = lshr i32 %3714, 25, !dbg !375
  %3716 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !375
  %3717 = load i32, i32* %3716, align 4, !dbg !375
  %3718 = shl i32 %3717, 7, !dbg !375
  %3719 = or i32 %3715, %3718, !dbg !375
  %3720 = xor i32 %3712, %3719, !dbg !375
  %3721 = add i32 %3697, %3720, !dbg !375
  %3722 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !375
  %3723 = load i32, i32* %3722, align 4, !dbg !375
  %3724 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !375
  %3725 = load i32, i32* %3724, align 16, !dbg !375
  %3726 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !375
  %3727 = load i32, i32* %3726, align 4, !dbg !375
  %3728 = xor i32 %3725, %3727, !dbg !375
  %3729 = and i32 %3723, %3728, !dbg !375
  %3730 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !375
  %3731 = load i32, i32* %3730, align 4, !dbg !375
  %3732 = xor i32 %3729, %3731, !dbg !375
  %3733 = add i32 %3721, %3732, !dbg !375
  %3734 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 41, !dbg !375
  %3735 = load i32, i32* %3734, align 4, !dbg !375
  %3736 = add i32 %3733, %3735, !dbg !375
  %3737 = add i32 %3736, -1474664885, !dbg !375
  store i32 %3737, i32* %5, align 4, !dbg !375
  %3738 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !375
  %3739 = load i32, i32* %3738, align 4, !dbg !375
  %3740 = lshr i32 %3739, 2, !dbg !375
  %3741 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !375
  %3742 = load i32, i32* %3741, align 4, !dbg !375
  %3743 = shl i32 %3742, 30, !dbg !375
  %3744 = or i32 %3740, %3743, !dbg !375
  %3745 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !375
  %3746 = load i32, i32* %3745, align 4, !dbg !375
  %3747 = lshr i32 %3746, 13, !dbg !375
  %3748 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !375
  %3749 = load i32, i32* %3748, align 4, !dbg !375
  %3750 = shl i32 %3749, 19, !dbg !375
  %3751 = or i32 %3747, %3750, !dbg !375
  %3752 = xor i32 %3744, %3751, !dbg !375
  %3753 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !375
  %3754 = load i32, i32* %3753, align 4, !dbg !375
  %3755 = lshr i32 %3754, 22, !dbg !375
  %3756 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !375
  %3757 = load i32, i32* %3756, align 4, !dbg !375
  %3758 = shl i32 %3757, 10, !dbg !375
  %3759 = or i32 %3755, %3758, !dbg !375
  %3760 = xor i32 %3752, %3759, !dbg !375
  %3761 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !375
  %3762 = load i32, i32* %3761, align 4, !dbg !375
  %3763 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !375
  %3764 = load i32, i32* %3763, align 16, !dbg !375
  %3765 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !375
  %3766 = load i32, i32* %3765, align 4, !dbg !375
  %3767 = or i32 %3764, %3766, !dbg !375
  %3768 = and i32 %3762, %3767, !dbg !375
  %3769 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !375
  %3770 = load i32, i32* %3769, align 16, !dbg !375
  %3771 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !375
  %3772 = load i32, i32* %3771, align 4, !dbg !375
  %3773 = and i32 %3770, %3772, !dbg !375
  %3774 = or i32 %3768, %3773, !dbg !375
  %3775 = add i32 %3760, %3774, !dbg !375
  store i32 %3775, i32* %6, align 4, !dbg !375
  %3776 = load i32, i32* %5, align 4, !dbg !375
  %3777 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !375
  %3778 = load i32, i32* %3777, align 8, !dbg !375
  %3779 = add i32 %3778, %3776, !dbg !375
  store i32 %3779, i32* %3777, align 8, !dbg !375
  %3780 = load i32, i32* %5, align 4, !dbg !375
  %3781 = load i32, i32* %6, align 4, !dbg !375
  %3782 = add i32 %3780, %3781, !dbg !375
  %3783 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !375
  store i32 %3782, i32* %3783, align 8, !dbg !375
  %3784 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !376
  %3785 = load i32, i32* %3784, align 4, !dbg !376
  %3786 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !376
  %3787 = load i32, i32* %3786, align 8, !dbg !376
  %3788 = lshr i32 %3787, 6, !dbg !376
  %3789 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !376
  %3790 = load i32, i32* %3789, align 8, !dbg !376
  %3791 = shl i32 %3790, 26, !dbg !376
  %3792 = or i32 %3788, %3791, !dbg !376
  %3793 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !376
  %3794 = load i32, i32* %3793, align 8, !dbg !376
  %3795 = lshr i32 %3794, 11, !dbg !376
  %3796 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !376
  %3797 = load i32, i32* %3796, align 8, !dbg !376
  %3798 = shl i32 %3797, 21, !dbg !376
  %3799 = or i32 %3795, %3798, !dbg !376
  %3800 = xor i32 %3792, %3799, !dbg !376
  %3801 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !376
  %3802 = load i32, i32* %3801, align 8, !dbg !376
  %3803 = lshr i32 %3802, 25, !dbg !376
  %3804 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !376
  %3805 = load i32, i32* %3804, align 8, !dbg !376
  %3806 = shl i32 %3805, 7, !dbg !376
  %3807 = or i32 %3803, %3806, !dbg !376
  %3808 = xor i32 %3800, %3807, !dbg !376
  %3809 = add i32 %3785, %3808, !dbg !376
  %3810 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !376
  %3811 = load i32, i32* %3810, align 8, !dbg !376
  %3812 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !376
  %3813 = load i32, i32* %3812, align 4, !dbg !376
  %3814 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !376
  %3815 = load i32, i32* %3814, align 16, !dbg !376
  %3816 = xor i32 %3813, %3815, !dbg !376
  %3817 = and i32 %3811, %3816, !dbg !376
  %3818 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !376
  %3819 = load i32, i32* %3818, align 16, !dbg !376
  %3820 = xor i32 %3817, %3819, !dbg !376
  %3821 = add i32 %3809, %3820, !dbg !376
  %3822 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 42, !dbg !376
  %3823 = load i32, i32* %3822, align 8, !dbg !376
  %3824 = add i32 %3821, %3823, !dbg !376
  %3825 = add i32 %3824, -1035236496, !dbg !376
  store i32 %3825, i32* %5, align 4, !dbg !376
  %3826 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !376
  %3827 = load i32, i32* %3826, align 8, !dbg !376
  %3828 = lshr i32 %3827, 2, !dbg !376
  %3829 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !376
  %3830 = load i32, i32* %3829, align 8, !dbg !376
  %3831 = shl i32 %3830, 30, !dbg !376
  %3832 = or i32 %3828, %3831, !dbg !376
  %3833 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !376
  %3834 = load i32, i32* %3833, align 8, !dbg !376
  %3835 = lshr i32 %3834, 13, !dbg !376
  %3836 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !376
  %3837 = load i32, i32* %3836, align 8, !dbg !376
  %3838 = shl i32 %3837, 19, !dbg !376
  %3839 = or i32 %3835, %3838, !dbg !376
  %3840 = xor i32 %3832, %3839, !dbg !376
  %3841 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !376
  %3842 = load i32, i32* %3841, align 8, !dbg !376
  %3843 = lshr i32 %3842, 22, !dbg !376
  %3844 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !376
  %3845 = load i32, i32* %3844, align 8, !dbg !376
  %3846 = shl i32 %3845, 10, !dbg !376
  %3847 = or i32 %3843, %3846, !dbg !376
  %3848 = xor i32 %3840, %3847, !dbg !376
  %3849 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !376
  %3850 = load i32, i32* %3849, align 8, !dbg !376
  %3851 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !376
  %3852 = load i32, i32* %3851, align 4, !dbg !376
  %3853 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !376
  %3854 = load i32, i32* %3853, align 16, !dbg !376
  %3855 = or i32 %3852, %3854, !dbg !376
  %3856 = and i32 %3850, %3855, !dbg !376
  %3857 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !376
  %3858 = load i32, i32* %3857, align 4, !dbg !376
  %3859 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !376
  %3860 = load i32, i32* %3859, align 16, !dbg !376
  %3861 = and i32 %3858, %3860, !dbg !376
  %3862 = or i32 %3856, %3861, !dbg !376
  %3863 = add i32 %3848, %3862, !dbg !376
  store i32 %3863, i32* %6, align 4, !dbg !376
  %3864 = load i32, i32* %5, align 4, !dbg !376
  %3865 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !376
  %3866 = load i32, i32* %3865, align 4, !dbg !376
  %3867 = add i32 %3866, %3864, !dbg !376
  store i32 %3867, i32* %3865, align 4, !dbg !376
  %3868 = load i32, i32* %5, align 4, !dbg !376
  %3869 = load i32, i32* %6, align 4, !dbg !376
  %3870 = add i32 %3868, %3869, !dbg !376
  %3871 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !376
  store i32 %3870, i32* %3871, align 4, !dbg !376
  %3872 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !377
  %3873 = load i32, i32* %3872, align 16, !dbg !377
  %3874 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !377
  %3875 = load i32, i32* %3874, align 4, !dbg !377
  %3876 = lshr i32 %3875, 6, !dbg !377
  %3877 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !377
  %3878 = load i32, i32* %3877, align 4, !dbg !377
  %3879 = shl i32 %3878, 26, !dbg !377
  %3880 = or i32 %3876, %3879, !dbg !377
  %3881 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !377
  %3882 = load i32, i32* %3881, align 4, !dbg !377
  %3883 = lshr i32 %3882, 11, !dbg !377
  %3884 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !377
  %3885 = load i32, i32* %3884, align 4, !dbg !377
  %3886 = shl i32 %3885, 21, !dbg !377
  %3887 = or i32 %3883, %3886, !dbg !377
  %3888 = xor i32 %3880, %3887, !dbg !377
  %3889 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !377
  %3890 = load i32, i32* %3889, align 4, !dbg !377
  %3891 = lshr i32 %3890, 25, !dbg !377
  %3892 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !377
  %3893 = load i32, i32* %3892, align 4, !dbg !377
  %3894 = shl i32 %3893, 7, !dbg !377
  %3895 = or i32 %3891, %3894, !dbg !377
  %3896 = xor i32 %3888, %3895, !dbg !377
  %3897 = add i32 %3873, %3896, !dbg !377
  %3898 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !377
  %3899 = load i32, i32* %3898, align 4, !dbg !377
  %3900 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !377
  %3901 = load i32, i32* %3900, align 8, !dbg !377
  %3902 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !377
  %3903 = load i32, i32* %3902, align 4, !dbg !377
  %3904 = xor i32 %3901, %3903, !dbg !377
  %3905 = and i32 %3899, %3904, !dbg !377
  %3906 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !377
  %3907 = load i32, i32* %3906, align 4, !dbg !377
  %3908 = xor i32 %3905, %3907, !dbg !377
  %3909 = add i32 %3897, %3908, !dbg !377
  %3910 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 43, !dbg !377
  %3911 = load i32, i32* %3910, align 4, !dbg !377
  %3912 = add i32 %3909, %3911, !dbg !377
  %3913 = add i32 %3912, -949202525, !dbg !377
  store i32 %3913, i32* %5, align 4, !dbg !377
  %3914 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !377
  %3915 = load i32, i32* %3914, align 4, !dbg !377
  %3916 = lshr i32 %3915, 2, !dbg !377
  %3917 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !377
  %3918 = load i32, i32* %3917, align 4, !dbg !377
  %3919 = shl i32 %3918, 30, !dbg !377
  %3920 = or i32 %3916, %3919, !dbg !377
  %3921 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !377
  %3922 = load i32, i32* %3921, align 4, !dbg !377
  %3923 = lshr i32 %3922, 13, !dbg !377
  %3924 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !377
  %3925 = load i32, i32* %3924, align 4, !dbg !377
  %3926 = shl i32 %3925, 19, !dbg !377
  %3927 = or i32 %3923, %3926, !dbg !377
  %3928 = xor i32 %3920, %3927, !dbg !377
  %3929 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !377
  %3930 = load i32, i32* %3929, align 4, !dbg !377
  %3931 = lshr i32 %3930, 22, !dbg !377
  %3932 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !377
  %3933 = load i32, i32* %3932, align 4, !dbg !377
  %3934 = shl i32 %3933, 10, !dbg !377
  %3935 = or i32 %3931, %3934, !dbg !377
  %3936 = xor i32 %3928, %3935, !dbg !377
  %3937 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !377
  %3938 = load i32, i32* %3937, align 4, !dbg !377
  %3939 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !377
  %3940 = load i32, i32* %3939, align 8, !dbg !377
  %3941 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !377
  %3942 = load i32, i32* %3941, align 4, !dbg !377
  %3943 = or i32 %3940, %3942, !dbg !377
  %3944 = and i32 %3938, %3943, !dbg !377
  %3945 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !377
  %3946 = load i32, i32* %3945, align 8, !dbg !377
  %3947 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !377
  %3948 = load i32, i32* %3947, align 4, !dbg !377
  %3949 = and i32 %3946, %3948, !dbg !377
  %3950 = or i32 %3944, %3949, !dbg !377
  %3951 = add i32 %3936, %3950, !dbg !377
  store i32 %3951, i32* %6, align 4, !dbg !377
  %3952 = load i32, i32* %5, align 4, !dbg !377
  %3953 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !377
  %3954 = load i32, i32* %3953, align 16, !dbg !377
  %3955 = add i32 %3954, %3952, !dbg !377
  store i32 %3955, i32* %3953, align 16, !dbg !377
  %3956 = load i32, i32* %5, align 4, !dbg !377
  %3957 = load i32, i32* %6, align 4, !dbg !377
  %3958 = add i32 %3956, %3957, !dbg !377
  %3959 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !377
  store i32 %3958, i32* %3959, align 16, !dbg !377
  %3960 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !378
  %3961 = load i32, i32* %3960, align 4, !dbg !378
  %3962 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !378
  %3963 = load i32, i32* %3962, align 16, !dbg !378
  %3964 = lshr i32 %3963, 6, !dbg !378
  %3965 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !378
  %3966 = load i32, i32* %3965, align 16, !dbg !378
  %3967 = shl i32 %3966, 26, !dbg !378
  %3968 = or i32 %3964, %3967, !dbg !378
  %3969 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !378
  %3970 = load i32, i32* %3969, align 16, !dbg !378
  %3971 = lshr i32 %3970, 11, !dbg !378
  %3972 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !378
  %3973 = load i32, i32* %3972, align 16, !dbg !378
  %3974 = shl i32 %3973, 21, !dbg !378
  %3975 = or i32 %3971, %3974, !dbg !378
  %3976 = xor i32 %3968, %3975, !dbg !378
  %3977 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !378
  %3978 = load i32, i32* %3977, align 16, !dbg !378
  %3979 = lshr i32 %3978, 25, !dbg !378
  %3980 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !378
  %3981 = load i32, i32* %3980, align 16, !dbg !378
  %3982 = shl i32 %3981, 7, !dbg !378
  %3983 = or i32 %3979, %3982, !dbg !378
  %3984 = xor i32 %3976, %3983, !dbg !378
  %3985 = add i32 %3961, %3984, !dbg !378
  %3986 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !378
  %3987 = load i32, i32* %3986, align 16, !dbg !378
  %3988 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !378
  %3989 = load i32, i32* %3988, align 4, !dbg !378
  %3990 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !378
  %3991 = load i32, i32* %3990, align 8, !dbg !378
  %3992 = xor i32 %3989, %3991, !dbg !378
  %3993 = and i32 %3987, %3992, !dbg !378
  %3994 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !378
  %3995 = load i32, i32* %3994, align 8, !dbg !378
  %3996 = xor i32 %3993, %3995, !dbg !378
  %3997 = add i32 %3985, %3996, !dbg !378
  %3998 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 44, !dbg !378
  %3999 = load i32, i32* %3998, align 16, !dbg !378
  %4000 = add i32 %3997, %3999, !dbg !378
  %4001 = add i32 %4000, -778901479, !dbg !378
  store i32 %4001, i32* %5, align 4, !dbg !378
  %4002 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !378
  %4003 = load i32, i32* %4002, align 16, !dbg !378
  %4004 = lshr i32 %4003, 2, !dbg !378
  %4005 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !378
  %4006 = load i32, i32* %4005, align 16, !dbg !378
  %4007 = shl i32 %4006, 30, !dbg !378
  %4008 = or i32 %4004, %4007, !dbg !378
  %4009 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !378
  %4010 = load i32, i32* %4009, align 16, !dbg !378
  %4011 = lshr i32 %4010, 13, !dbg !378
  %4012 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !378
  %4013 = load i32, i32* %4012, align 16, !dbg !378
  %4014 = shl i32 %4013, 19, !dbg !378
  %4015 = or i32 %4011, %4014, !dbg !378
  %4016 = xor i32 %4008, %4015, !dbg !378
  %4017 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !378
  %4018 = load i32, i32* %4017, align 16, !dbg !378
  %4019 = lshr i32 %4018, 22, !dbg !378
  %4020 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !378
  %4021 = load i32, i32* %4020, align 16, !dbg !378
  %4022 = shl i32 %4021, 10, !dbg !378
  %4023 = or i32 %4019, %4022, !dbg !378
  %4024 = xor i32 %4016, %4023, !dbg !378
  %4025 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !378
  %4026 = load i32, i32* %4025, align 16, !dbg !378
  %4027 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !378
  %4028 = load i32, i32* %4027, align 4, !dbg !378
  %4029 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !378
  %4030 = load i32, i32* %4029, align 8, !dbg !378
  %4031 = or i32 %4028, %4030, !dbg !378
  %4032 = and i32 %4026, %4031, !dbg !378
  %4033 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !378
  %4034 = load i32, i32* %4033, align 4, !dbg !378
  %4035 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !378
  %4036 = load i32, i32* %4035, align 8, !dbg !378
  %4037 = and i32 %4034, %4036, !dbg !378
  %4038 = or i32 %4032, %4037, !dbg !378
  %4039 = add i32 %4024, %4038, !dbg !378
  store i32 %4039, i32* %6, align 4, !dbg !378
  %4040 = load i32, i32* %5, align 4, !dbg !378
  %4041 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !378
  %4042 = load i32, i32* %4041, align 4, !dbg !378
  %4043 = add i32 %4042, %4040, !dbg !378
  store i32 %4043, i32* %4041, align 4, !dbg !378
  %4044 = load i32, i32* %5, align 4, !dbg !378
  %4045 = load i32, i32* %6, align 4, !dbg !378
  %4046 = add i32 %4044, %4045, !dbg !378
  %4047 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !378
  store i32 %4046, i32* %4047, align 4, !dbg !378
  %4048 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !379
  %4049 = load i32, i32* %4048, align 8, !dbg !379
  %4050 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !379
  %4051 = load i32, i32* %4050, align 4, !dbg !379
  %4052 = lshr i32 %4051, 6, !dbg !379
  %4053 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !379
  %4054 = load i32, i32* %4053, align 4, !dbg !379
  %4055 = shl i32 %4054, 26, !dbg !379
  %4056 = or i32 %4052, %4055, !dbg !379
  %4057 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !379
  %4058 = load i32, i32* %4057, align 4, !dbg !379
  %4059 = lshr i32 %4058, 11, !dbg !379
  %4060 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !379
  %4061 = load i32, i32* %4060, align 4, !dbg !379
  %4062 = shl i32 %4061, 21, !dbg !379
  %4063 = or i32 %4059, %4062, !dbg !379
  %4064 = xor i32 %4056, %4063, !dbg !379
  %4065 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !379
  %4066 = load i32, i32* %4065, align 4, !dbg !379
  %4067 = lshr i32 %4066, 25, !dbg !379
  %4068 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !379
  %4069 = load i32, i32* %4068, align 4, !dbg !379
  %4070 = shl i32 %4069, 7, !dbg !379
  %4071 = or i32 %4067, %4070, !dbg !379
  %4072 = xor i32 %4064, %4071, !dbg !379
  %4073 = add i32 %4049, %4072, !dbg !379
  %4074 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !379
  %4075 = load i32, i32* %4074, align 4, !dbg !379
  %4076 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !379
  %4077 = load i32, i32* %4076, align 16, !dbg !379
  %4078 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !379
  %4079 = load i32, i32* %4078, align 4, !dbg !379
  %4080 = xor i32 %4077, %4079, !dbg !379
  %4081 = and i32 %4075, %4080, !dbg !379
  %4082 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !379
  %4083 = load i32, i32* %4082, align 4, !dbg !379
  %4084 = xor i32 %4081, %4083, !dbg !379
  %4085 = add i32 %4073, %4084, !dbg !379
  %4086 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 45, !dbg !379
  %4087 = load i32, i32* %4086, align 4, !dbg !379
  %4088 = add i32 %4085, %4087, !dbg !379
  %4089 = add i32 %4088, -694614492, !dbg !379
  store i32 %4089, i32* %5, align 4, !dbg !379
  %4090 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !379
  %4091 = load i32, i32* %4090, align 4, !dbg !379
  %4092 = lshr i32 %4091, 2, !dbg !379
  %4093 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !379
  %4094 = load i32, i32* %4093, align 4, !dbg !379
  %4095 = shl i32 %4094, 30, !dbg !379
  %4096 = or i32 %4092, %4095, !dbg !379
  %4097 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !379
  %4098 = load i32, i32* %4097, align 4, !dbg !379
  %4099 = lshr i32 %4098, 13, !dbg !379
  %4100 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !379
  %4101 = load i32, i32* %4100, align 4, !dbg !379
  %4102 = shl i32 %4101, 19, !dbg !379
  %4103 = or i32 %4099, %4102, !dbg !379
  %4104 = xor i32 %4096, %4103, !dbg !379
  %4105 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !379
  %4106 = load i32, i32* %4105, align 4, !dbg !379
  %4107 = lshr i32 %4106, 22, !dbg !379
  %4108 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !379
  %4109 = load i32, i32* %4108, align 4, !dbg !379
  %4110 = shl i32 %4109, 10, !dbg !379
  %4111 = or i32 %4107, %4110, !dbg !379
  %4112 = xor i32 %4104, %4111, !dbg !379
  %4113 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !379
  %4114 = load i32, i32* %4113, align 4, !dbg !379
  %4115 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !379
  %4116 = load i32, i32* %4115, align 16, !dbg !379
  %4117 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !379
  %4118 = load i32, i32* %4117, align 4, !dbg !379
  %4119 = or i32 %4116, %4118, !dbg !379
  %4120 = and i32 %4114, %4119, !dbg !379
  %4121 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !379
  %4122 = load i32, i32* %4121, align 16, !dbg !379
  %4123 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !379
  %4124 = load i32, i32* %4123, align 4, !dbg !379
  %4125 = and i32 %4122, %4124, !dbg !379
  %4126 = or i32 %4120, %4125, !dbg !379
  %4127 = add i32 %4112, %4126, !dbg !379
  store i32 %4127, i32* %6, align 4, !dbg !379
  %4128 = load i32, i32* %5, align 4, !dbg !379
  %4129 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !379
  %4130 = load i32, i32* %4129, align 8, !dbg !379
  %4131 = add i32 %4130, %4128, !dbg !379
  store i32 %4131, i32* %4129, align 8, !dbg !379
  %4132 = load i32, i32* %5, align 4, !dbg !379
  %4133 = load i32, i32* %6, align 4, !dbg !379
  %4134 = add i32 %4132, %4133, !dbg !379
  %4135 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !379
  store i32 %4134, i32* %4135, align 8, !dbg !379
  %4136 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !380
  %4137 = load i32, i32* %4136, align 4, !dbg !380
  %4138 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !380
  %4139 = load i32, i32* %4138, align 8, !dbg !380
  %4140 = lshr i32 %4139, 6, !dbg !380
  %4141 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !380
  %4142 = load i32, i32* %4141, align 8, !dbg !380
  %4143 = shl i32 %4142, 26, !dbg !380
  %4144 = or i32 %4140, %4143, !dbg !380
  %4145 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !380
  %4146 = load i32, i32* %4145, align 8, !dbg !380
  %4147 = lshr i32 %4146, 11, !dbg !380
  %4148 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !380
  %4149 = load i32, i32* %4148, align 8, !dbg !380
  %4150 = shl i32 %4149, 21, !dbg !380
  %4151 = or i32 %4147, %4150, !dbg !380
  %4152 = xor i32 %4144, %4151, !dbg !380
  %4153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !380
  %4154 = load i32, i32* %4153, align 8, !dbg !380
  %4155 = lshr i32 %4154, 25, !dbg !380
  %4156 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !380
  %4157 = load i32, i32* %4156, align 8, !dbg !380
  %4158 = shl i32 %4157, 7, !dbg !380
  %4159 = or i32 %4155, %4158, !dbg !380
  %4160 = xor i32 %4152, %4159, !dbg !380
  %4161 = add i32 %4137, %4160, !dbg !380
  %4162 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !380
  %4163 = load i32, i32* %4162, align 8, !dbg !380
  %4164 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !380
  %4165 = load i32, i32* %4164, align 4, !dbg !380
  %4166 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !380
  %4167 = load i32, i32* %4166, align 16, !dbg !380
  %4168 = xor i32 %4165, %4167, !dbg !380
  %4169 = and i32 %4163, %4168, !dbg !380
  %4170 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !380
  %4171 = load i32, i32* %4170, align 16, !dbg !380
  %4172 = xor i32 %4169, %4171, !dbg !380
  %4173 = add i32 %4161, %4172, !dbg !380
  %4174 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 46, !dbg !380
  %4175 = load i32, i32* %4174, align 8, !dbg !380
  %4176 = add i32 %4173, %4175, !dbg !380
  %4177 = add i32 %4176, -200395387, !dbg !380
  store i32 %4177, i32* %5, align 4, !dbg !380
  %4178 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !380
  %4179 = load i32, i32* %4178, align 8, !dbg !380
  %4180 = lshr i32 %4179, 2, !dbg !380
  %4181 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !380
  %4182 = load i32, i32* %4181, align 8, !dbg !380
  %4183 = shl i32 %4182, 30, !dbg !380
  %4184 = or i32 %4180, %4183, !dbg !380
  %4185 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !380
  %4186 = load i32, i32* %4185, align 8, !dbg !380
  %4187 = lshr i32 %4186, 13, !dbg !380
  %4188 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !380
  %4189 = load i32, i32* %4188, align 8, !dbg !380
  %4190 = shl i32 %4189, 19, !dbg !380
  %4191 = or i32 %4187, %4190, !dbg !380
  %4192 = xor i32 %4184, %4191, !dbg !380
  %4193 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !380
  %4194 = load i32, i32* %4193, align 8, !dbg !380
  %4195 = lshr i32 %4194, 22, !dbg !380
  %4196 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !380
  %4197 = load i32, i32* %4196, align 8, !dbg !380
  %4198 = shl i32 %4197, 10, !dbg !380
  %4199 = or i32 %4195, %4198, !dbg !380
  %4200 = xor i32 %4192, %4199, !dbg !380
  %4201 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !380
  %4202 = load i32, i32* %4201, align 8, !dbg !380
  %4203 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !380
  %4204 = load i32, i32* %4203, align 4, !dbg !380
  %4205 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !380
  %4206 = load i32, i32* %4205, align 16, !dbg !380
  %4207 = or i32 %4204, %4206, !dbg !380
  %4208 = and i32 %4202, %4207, !dbg !380
  %4209 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !380
  %4210 = load i32, i32* %4209, align 4, !dbg !380
  %4211 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !380
  %4212 = load i32, i32* %4211, align 16, !dbg !380
  %4213 = and i32 %4210, %4212, !dbg !380
  %4214 = or i32 %4208, %4213, !dbg !380
  %4215 = add i32 %4200, %4214, !dbg !380
  store i32 %4215, i32* %6, align 4, !dbg !380
  %4216 = load i32, i32* %5, align 4, !dbg !380
  %4217 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !380
  %4218 = load i32, i32* %4217, align 4, !dbg !380
  %4219 = add i32 %4218, %4216, !dbg !380
  store i32 %4219, i32* %4217, align 4, !dbg !380
  %4220 = load i32, i32* %5, align 4, !dbg !380
  %4221 = load i32, i32* %6, align 4, !dbg !380
  %4222 = add i32 %4220, %4221, !dbg !380
  %4223 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !380
  store i32 %4222, i32* %4223, align 4, !dbg !380
  %4224 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !381
  %4225 = load i32, i32* %4224, align 16, !dbg !381
  %4226 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !381
  %4227 = load i32, i32* %4226, align 4, !dbg !381
  %4228 = lshr i32 %4227, 6, !dbg !381
  %4229 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !381
  %4230 = load i32, i32* %4229, align 4, !dbg !381
  %4231 = shl i32 %4230, 26, !dbg !381
  %4232 = or i32 %4228, %4231, !dbg !381
  %4233 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !381
  %4234 = load i32, i32* %4233, align 4, !dbg !381
  %4235 = lshr i32 %4234, 11, !dbg !381
  %4236 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !381
  %4237 = load i32, i32* %4236, align 4, !dbg !381
  %4238 = shl i32 %4237, 21, !dbg !381
  %4239 = or i32 %4235, %4238, !dbg !381
  %4240 = xor i32 %4232, %4239, !dbg !381
  %4241 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !381
  %4242 = load i32, i32* %4241, align 4, !dbg !381
  %4243 = lshr i32 %4242, 25, !dbg !381
  %4244 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !381
  %4245 = load i32, i32* %4244, align 4, !dbg !381
  %4246 = shl i32 %4245, 7, !dbg !381
  %4247 = or i32 %4243, %4246, !dbg !381
  %4248 = xor i32 %4240, %4247, !dbg !381
  %4249 = add i32 %4225, %4248, !dbg !381
  %4250 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !381
  %4251 = load i32, i32* %4250, align 4, !dbg !381
  %4252 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !381
  %4253 = load i32, i32* %4252, align 8, !dbg !381
  %4254 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !381
  %4255 = load i32, i32* %4254, align 4, !dbg !381
  %4256 = xor i32 %4253, %4255, !dbg !381
  %4257 = and i32 %4251, %4256, !dbg !381
  %4258 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !381
  %4259 = load i32, i32* %4258, align 4, !dbg !381
  %4260 = xor i32 %4257, %4259, !dbg !381
  %4261 = add i32 %4249, %4260, !dbg !381
  %4262 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 47, !dbg !381
  %4263 = load i32, i32* %4262, align 4, !dbg !381
  %4264 = add i32 %4261, %4263, !dbg !381
  %4265 = add i32 %4264, 275423344, !dbg !381
  store i32 %4265, i32* %5, align 4, !dbg !381
  %4266 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !381
  %4267 = load i32, i32* %4266, align 4, !dbg !381
  %4268 = lshr i32 %4267, 2, !dbg !381
  %4269 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !381
  %4270 = load i32, i32* %4269, align 4, !dbg !381
  %4271 = shl i32 %4270, 30, !dbg !381
  %4272 = or i32 %4268, %4271, !dbg !381
  %4273 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !381
  %4274 = load i32, i32* %4273, align 4, !dbg !381
  %4275 = lshr i32 %4274, 13, !dbg !381
  %4276 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !381
  %4277 = load i32, i32* %4276, align 4, !dbg !381
  %4278 = shl i32 %4277, 19, !dbg !381
  %4279 = or i32 %4275, %4278, !dbg !381
  %4280 = xor i32 %4272, %4279, !dbg !381
  %4281 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !381
  %4282 = load i32, i32* %4281, align 4, !dbg !381
  %4283 = lshr i32 %4282, 22, !dbg !381
  %4284 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !381
  %4285 = load i32, i32* %4284, align 4, !dbg !381
  %4286 = shl i32 %4285, 10, !dbg !381
  %4287 = or i32 %4283, %4286, !dbg !381
  %4288 = xor i32 %4280, %4287, !dbg !381
  %4289 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !381
  %4290 = load i32, i32* %4289, align 4, !dbg !381
  %4291 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !381
  %4292 = load i32, i32* %4291, align 8, !dbg !381
  %4293 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !381
  %4294 = load i32, i32* %4293, align 4, !dbg !381
  %4295 = or i32 %4292, %4294, !dbg !381
  %4296 = and i32 %4290, %4295, !dbg !381
  %4297 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !381
  %4298 = load i32, i32* %4297, align 8, !dbg !381
  %4299 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !381
  %4300 = load i32, i32* %4299, align 4, !dbg !381
  %4301 = and i32 %4298, %4300, !dbg !381
  %4302 = or i32 %4296, %4301, !dbg !381
  %4303 = add i32 %4288, %4302, !dbg !381
  store i32 %4303, i32* %6, align 4, !dbg !381
  %4304 = load i32, i32* %5, align 4, !dbg !381
  %4305 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !381
  %4306 = load i32, i32* %4305, align 16, !dbg !381
  %4307 = add i32 %4306, %4304, !dbg !381
  store i32 %4307, i32* %4305, align 16, !dbg !381
  %4308 = load i32, i32* %5, align 4, !dbg !381
  %4309 = load i32, i32* %6, align 4, !dbg !381
  %4310 = add i32 %4308, %4309, !dbg !381
  %4311 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !381
  store i32 %4310, i32* %4311, align 16, !dbg !381
  %4312 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !382
  %4313 = load i32, i32* %4312, align 4, !dbg !382
  %4314 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !382
  %4315 = load i32, i32* %4314, align 16, !dbg !382
  %4316 = lshr i32 %4315, 6, !dbg !382
  %4317 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !382
  %4318 = load i32, i32* %4317, align 16, !dbg !382
  %4319 = shl i32 %4318, 26, !dbg !382
  %4320 = or i32 %4316, %4319, !dbg !382
  %4321 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !382
  %4322 = load i32, i32* %4321, align 16, !dbg !382
  %4323 = lshr i32 %4322, 11, !dbg !382
  %4324 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !382
  %4325 = load i32, i32* %4324, align 16, !dbg !382
  %4326 = shl i32 %4325, 21, !dbg !382
  %4327 = or i32 %4323, %4326, !dbg !382
  %4328 = xor i32 %4320, %4327, !dbg !382
  %4329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !382
  %4330 = load i32, i32* %4329, align 16, !dbg !382
  %4331 = lshr i32 %4330, 25, !dbg !382
  %4332 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !382
  %4333 = load i32, i32* %4332, align 16, !dbg !382
  %4334 = shl i32 %4333, 7, !dbg !382
  %4335 = or i32 %4331, %4334, !dbg !382
  %4336 = xor i32 %4328, %4335, !dbg !382
  %4337 = add i32 %4313, %4336, !dbg !382
  %4338 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !382
  %4339 = load i32, i32* %4338, align 16, !dbg !382
  %4340 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !382
  %4341 = load i32, i32* %4340, align 4, !dbg !382
  %4342 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !382
  %4343 = load i32, i32* %4342, align 8, !dbg !382
  %4344 = xor i32 %4341, %4343, !dbg !382
  %4345 = and i32 %4339, %4344, !dbg !382
  %4346 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !382
  %4347 = load i32, i32* %4346, align 8, !dbg !382
  %4348 = xor i32 %4345, %4347, !dbg !382
  %4349 = add i32 %4337, %4348, !dbg !382
  %4350 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 48, !dbg !382
  %4351 = load i32, i32* %4350, align 16, !dbg !382
  %4352 = add i32 %4349, %4351, !dbg !382
  %4353 = add i32 %4352, 430227734, !dbg !382
  store i32 %4353, i32* %5, align 4, !dbg !382
  %4354 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !382
  %4355 = load i32, i32* %4354, align 16, !dbg !382
  %4356 = lshr i32 %4355, 2, !dbg !382
  %4357 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !382
  %4358 = load i32, i32* %4357, align 16, !dbg !382
  %4359 = shl i32 %4358, 30, !dbg !382
  %4360 = or i32 %4356, %4359, !dbg !382
  %4361 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !382
  %4362 = load i32, i32* %4361, align 16, !dbg !382
  %4363 = lshr i32 %4362, 13, !dbg !382
  %4364 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !382
  %4365 = load i32, i32* %4364, align 16, !dbg !382
  %4366 = shl i32 %4365, 19, !dbg !382
  %4367 = or i32 %4363, %4366, !dbg !382
  %4368 = xor i32 %4360, %4367, !dbg !382
  %4369 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !382
  %4370 = load i32, i32* %4369, align 16, !dbg !382
  %4371 = lshr i32 %4370, 22, !dbg !382
  %4372 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !382
  %4373 = load i32, i32* %4372, align 16, !dbg !382
  %4374 = shl i32 %4373, 10, !dbg !382
  %4375 = or i32 %4371, %4374, !dbg !382
  %4376 = xor i32 %4368, %4375, !dbg !382
  %4377 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !382
  %4378 = load i32, i32* %4377, align 16, !dbg !382
  %4379 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !382
  %4380 = load i32, i32* %4379, align 4, !dbg !382
  %4381 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !382
  %4382 = load i32, i32* %4381, align 8, !dbg !382
  %4383 = or i32 %4380, %4382, !dbg !382
  %4384 = and i32 %4378, %4383, !dbg !382
  %4385 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !382
  %4386 = load i32, i32* %4385, align 4, !dbg !382
  %4387 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !382
  %4388 = load i32, i32* %4387, align 8, !dbg !382
  %4389 = and i32 %4386, %4388, !dbg !382
  %4390 = or i32 %4384, %4389, !dbg !382
  %4391 = add i32 %4376, %4390, !dbg !382
  store i32 %4391, i32* %6, align 4, !dbg !382
  %4392 = load i32, i32* %5, align 4, !dbg !382
  %4393 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !382
  %4394 = load i32, i32* %4393, align 4, !dbg !382
  %4395 = add i32 %4394, %4392, !dbg !382
  store i32 %4395, i32* %4393, align 4, !dbg !382
  %4396 = load i32, i32* %5, align 4, !dbg !382
  %4397 = load i32, i32* %6, align 4, !dbg !382
  %4398 = add i32 %4396, %4397, !dbg !382
  %4399 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !382
  store i32 %4398, i32* %4399, align 4, !dbg !382
  %4400 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !383
  %4401 = load i32, i32* %4400, align 8, !dbg !383
  %4402 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !383
  %4403 = load i32, i32* %4402, align 4, !dbg !383
  %4404 = lshr i32 %4403, 6, !dbg !383
  %4405 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !383
  %4406 = load i32, i32* %4405, align 4, !dbg !383
  %4407 = shl i32 %4406, 26, !dbg !383
  %4408 = or i32 %4404, %4407, !dbg !383
  %4409 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !383
  %4410 = load i32, i32* %4409, align 4, !dbg !383
  %4411 = lshr i32 %4410, 11, !dbg !383
  %4412 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !383
  %4413 = load i32, i32* %4412, align 4, !dbg !383
  %4414 = shl i32 %4413, 21, !dbg !383
  %4415 = or i32 %4411, %4414, !dbg !383
  %4416 = xor i32 %4408, %4415, !dbg !383
  %4417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !383
  %4418 = load i32, i32* %4417, align 4, !dbg !383
  %4419 = lshr i32 %4418, 25, !dbg !383
  %4420 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !383
  %4421 = load i32, i32* %4420, align 4, !dbg !383
  %4422 = shl i32 %4421, 7, !dbg !383
  %4423 = or i32 %4419, %4422, !dbg !383
  %4424 = xor i32 %4416, %4423, !dbg !383
  %4425 = add i32 %4401, %4424, !dbg !383
  %4426 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !383
  %4427 = load i32, i32* %4426, align 4, !dbg !383
  %4428 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !383
  %4429 = load i32, i32* %4428, align 16, !dbg !383
  %4430 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !383
  %4431 = load i32, i32* %4430, align 4, !dbg !383
  %4432 = xor i32 %4429, %4431, !dbg !383
  %4433 = and i32 %4427, %4432, !dbg !383
  %4434 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !383
  %4435 = load i32, i32* %4434, align 4, !dbg !383
  %4436 = xor i32 %4433, %4435, !dbg !383
  %4437 = add i32 %4425, %4436, !dbg !383
  %4438 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 49, !dbg !383
  %4439 = load i32, i32* %4438, align 4, !dbg !383
  %4440 = add i32 %4437, %4439, !dbg !383
  %4441 = add i32 %4440, 506948616, !dbg !383
  store i32 %4441, i32* %5, align 4, !dbg !383
  %4442 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !383
  %4443 = load i32, i32* %4442, align 4, !dbg !383
  %4444 = lshr i32 %4443, 2, !dbg !383
  %4445 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !383
  %4446 = load i32, i32* %4445, align 4, !dbg !383
  %4447 = shl i32 %4446, 30, !dbg !383
  %4448 = or i32 %4444, %4447, !dbg !383
  %4449 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !383
  %4450 = load i32, i32* %4449, align 4, !dbg !383
  %4451 = lshr i32 %4450, 13, !dbg !383
  %4452 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !383
  %4453 = load i32, i32* %4452, align 4, !dbg !383
  %4454 = shl i32 %4453, 19, !dbg !383
  %4455 = or i32 %4451, %4454, !dbg !383
  %4456 = xor i32 %4448, %4455, !dbg !383
  %4457 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !383
  %4458 = load i32, i32* %4457, align 4, !dbg !383
  %4459 = lshr i32 %4458, 22, !dbg !383
  %4460 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !383
  %4461 = load i32, i32* %4460, align 4, !dbg !383
  %4462 = shl i32 %4461, 10, !dbg !383
  %4463 = or i32 %4459, %4462, !dbg !383
  %4464 = xor i32 %4456, %4463, !dbg !383
  %4465 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !383
  %4466 = load i32, i32* %4465, align 4, !dbg !383
  %4467 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !383
  %4468 = load i32, i32* %4467, align 16, !dbg !383
  %4469 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !383
  %4470 = load i32, i32* %4469, align 4, !dbg !383
  %4471 = or i32 %4468, %4470, !dbg !383
  %4472 = and i32 %4466, %4471, !dbg !383
  %4473 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !383
  %4474 = load i32, i32* %4473, align 16, !dbg !383
  %4475 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !383
  %4476 = load i32, i32* %4475, align 4, !dbg !383
  %4477 = and i32 %4474, %4476, !dbg !383
  %4478 = or i32 %4472, %4477, !dbg !383
  %4479 = add i32 %4464, %4478, !dbg !383
  store i32 %4479, i32* %6, align 4, !dbg !383
  %4480 = load i32, i32* %5, align 4, !dbg !383
  %4481 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !383
  %4482 = load i32, i32* %4481, align 8, !dbg !383
  %4483 = add i32 %4482, %4480, !dbg !383
  store i32 %4483, i32* %4481, align 8, !dbg !383
  %4484 = load i32, i32* %5, align 4, !dbg !383
  %4485 = load i32, i32* %6, align 4, !dbg !383
  %4486 = add i32 %4484, %4485, !dbg !383
  %4487 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !383
  store i32 %4486, i32* %4487, align 8, !dbg !383
  %4488 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !384
  %4489 = load i32, i32* %4488, align 4, !dbg !384
  %4490 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !384
  %4491 = load i32, i32* %4490, align 8, !dbg !384
  %4492 = lshr i32 %4491, 6, !dbg !384
  %4493 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !384
  %4494 = load i32, i32* %4493, align 8, !dbg !384
  %4495 = shl i32 %4494, 26, !dbg !384
  %4496 = or i32 %4492, %4495, !dbg !384
  %4497 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !384
  %4498 = load i32, i32* %4497, align 8, !dbg !384
  %4499 = lshr i32 %4498, 11, !dbg !384
  %4500 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !384
  %4501 = load i32, i32* %4500, align 8, !dbg !384
  %4502 = shl i32 %4501, 21, !dbg !384
  %4503 = or i32 %4499, %4502, !dbg !384
  %4504 = xor i32 %4496, %4503, !dbg !384
  %4505 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !384
  %4506 = load i32, i32* %4505, align 8, !dbg !384
  %4507 = lshr i32 %4506, 25, !dbg !384
  %4508 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !384
  %4509 = load i32, i32* %4508, align 8, !dbg !384
  %4510 = shl i32 %4509, 7, !dbg !384
  %4511 = or i32 %4507, %4510, !dbg !384
  %4512 = xor i32 %4504, %4511, !dbg !384
  %4513 = add i32 %4489, %4512, !dbg !384
  %4514 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !384
  %4515 = load i32, i32* %4514, align 8, !dbg !384
  %4516 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !384
  %4517 = load i32, i32* %4516, align 4, !dbg !384
  %4518 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !384
  %4519 = load i32, i32* %4518, align 16, !dbg !384
  %4520 = xor i32 %4517, %4519, !dbg !384
  %4521 = and i32 %4515, %4520, !dbg !384
  %4522 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !384
  %4523 = load i32, i32* %4522, align 16, !dbg !384
  %4524 = xor i32 %4521, %4523, !dbg !384
  %4525 = add i32 %4513, %4524, !dbg !384
  %4526 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 50, !dbg !384
  %4527 = load i32, i32* %4526, align 8, !dbg !384
  %4528 = add i32 %4525, %4527, !dbg !384
  %4529 = add i32 %4528, 659060556, !dbg !384
  store i32 %4529, i32* %5, align 4, !dbg !384
  %4530 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !384
  %4531 = load i32, i32* %4530, align 8, !dbg !384
  %4532 = lshr i32 %4531, 2, !dbg !384
  %4533 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !384
  %4534 = load i32, i32* %4533, align 8, !dbg !384
  %4535 = shl i32 %4534, 30, !dbg !384
  %4536 = or i32 %4532, %4535, !dbg !384
  %4537 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !384
  %4538 = load i32, i32* %4537, align 8, !dbg !384
  %4539 = lshr i32 %4538, 13, !dbg !384
  %4540 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !384
  %4541 = load i32, i32* %4540, align 8, !dbg !384
  %4542 = shl i32 %4541, 19, !dbg !384
  %4543 = or i32 %4539, %4542, !dbg !384
  %4544 = xor i32 %4536, %4543, !dbg !384
  %4545 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !384
  %4546 = load i32, i32* %4545, align 8, !dbg !384
  %4547 = lshr i32 %4546, 22, !dbg !384
  %4548 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !384
  %4549 = load i32, i32* %4548, align 8, !dbg !384
  %4550 = shl i32 %4549, 10, !dbg !384
  %4551 = or i32 %4547, %4550, !dbg !384
  %4552 = xor i32 %4544, %4551, !dbg !384
  %4553 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !384
  %4554 = load i32, i32* %4553, align 8, !dbg !384
  %4555 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !384
  %4556 = load i32, i32* %4555, align 4, !dbg !384
  %4557 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !384
  %4558 = load i32, i32* %4557, align 16, !dbg !384
  %4559 = or i32 %4556, %4558, !dbg !384
  %4560 = and i32 %4554, %4559, !dbg !384
  %4561 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !384
  %4562 = load i32, i32* %4561, align 4, !dbg !384
  %4563 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !384
  %4564 = load i32, i32* %4563, align 16, !dbg !384
  %4565 = and i32 %4562, %4564, !dbg !384
  %4566 = or i32 %4560, %4565, !dbg !384
  %4567 = add i32 %4552, %4566, !dbg !384
  store i32 %4567, i32* %6, align 4, !dbg !384
  %4568 = load i32, i32* %5, align 4, !dbg !384
  %4569 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !384
  %4570 = load i32, i32* %4569, align 4, !dbg !384
  %4571 = add i32 %4570, %4568, !dbg !384
  store i32 %4571, i32* %4569, align 4, !dbg !384
  %4572 = load i32, i32* %5, align 4, !dbg !384
  %4573 = load i32, i32* %6, align 4, !dbg !384
  %4574 = add i32 %4572, %4573, !dbg !384
  %4575 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !384
  store i32 %4574, i32* %4575, align 4, !dbg !384
  %4576 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !385
  %4577 = load i32, i32* %4576, align 16, !dbg !385
  %4578 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !385
  %4579 = load i32, i32* %4578, align 4, !dbg !385
  %4580 = lshr i32 %4579, 6, !dbg !385
  %4581 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !385
  %4582 = load i32, i32* %4581, align 4, !dbg !385
  %4583 = shl i32 %4582, 26, !dbg !385
  %4584 = or i32 %4580, %4583, !dbg !385
  %4585 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !385
  %4586 = load i32, i32* %4585, align 4, !dbg !385
  %4587 = lshr i32 %4586, 11, !dbg !385
  %4588 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !385
  %4589 = load i32, i32* %4588, align 4, !dbg !385
  %4590 = shl i32 %4589, 21, !dbg !385
  %4591 = or i32 %4587, %4590, !dbg !385
  %4592 = xor i32 %4584, %4591, !dbg !385
  %4593 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !385
  %4594 = load i32, i32* %4593, align 4, !dbg !385
  %4595 = lshr i32 %4594, 25, !dbg !385
  %4596 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !385
  %4597 = load i32, i32* %4596, align 4, !dbg !385
  %4598 = shl i32 %4597, 7, !dbg !385
  %4599 = or i32 %4595, %4598, !dbg !385
  %4600 = xor i32 %4592, %4599, !dbg !385
  %4601 = add i32 %4577, %4600, !dbg !385
  %4602 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !385
  %4603 = load i32, i32* %4602, align 4, !dbg !385
  %4604 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !385
  %4605 = load i32, i32* %4604, align 8, !dbg !385
  %4606 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !385
  %4607 = load i32, i32* %4606, align 4, !dbg !385
  %4608 = xor i32 %4605, %4607, !dbg !385
  %4609 = and i32 %4603, %4608, !dbg !385
  %4610 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !385
  %4611 = load i32, i32* %4610, align 4, !dbg !385
  %4612 = xor i32 %4609, %4611, !dbg !385
  %4613 = add i32 %4601, %4612, !dbg !385
  %4614 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 51, !dbg !385
  %4615 = load i32, i32* %4614, align 4, !dbg !385
  %4616 = add i32 %4613, %4615, !dbg !385
  %4617 = add i32 %4616, 883997877, !dbg !385
  store i32 %4617, i32* %5, align 4, !dbg !385
  %4618 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !385
  %4619 = load i32, i32* %4618, align 4, !dbg !385
  %4620 = lshr i32 %4619, 2, !dbg !385
  %4621 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !385
  %4622 = load i32, i32* %4621, align 4, !dbg !385
  %4623 = shl i32 %4622, 30, !dbg !385
  %4624 = or i32 %4620, %4623, !dbg !385
  %4625 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !385
  %4626 = load i32, i32* %4625, align 4, !dbg !385
  %4627 = lshr i32 %4626, 13, !dbg !385
  %4628 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !385
  %4629 = load i32, i32* %4628, align 4, !dbg !385
  %4630 = shl i32 %4629, 19, !dbg !385
  %4631 = or i32 %4627, %4630, !dbg !385
  %4632 = xor i32 %4624, %4631, !dbg !385
  %4633 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !385
  %4634 = load i32, i32* %4633, align 4, !dbg !385
  %4635 = lshr i32 %4634, 22, !dbg !385
  %4636 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !385
  %4637 = load i32, i32* %4636, align 4, !dbg !385
  %4638 = shl i32 %4637, 10, !dbg !385
  %4639 = or i32 %4635, %4638, !dbg !385
  %4640 = xor i32 %4632, %4639, !dbg !385
  %4641 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !385
  %4642 = load i32, i32* %4641, align 4, !dbg !385
  %4643 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !385
  %4644 = load i32, i32* %4643, align 8, !dbg !385
  %4645 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !385
  %4646 = load i32, i32* %4645, align 4, !dbg !385
  %4647 = or i32 %4644, %4646, !dbg !385
  %4648 = and i32 %4642, %4647, !dbg !385
  %4649 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !385
  %4650 = load i32, i32* %4649, align 8, !dbg !385
  %4651 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !385
  %4652 = load i32, i32* %4651, align 4, !dbg !385
  %4653 = and i32 %4650, %4652, !dbg !385
  %4654 = or i32 %4648, %4653, !dbg !385
  %4655 = add i32 %4640, %4654, !dbg !385
  store i32 %4655, i32* %6, align 4, !dbg !385
  %4656 = load i32, i32* %5, align 4, !dbg !385
  %4657 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !385
  %4658 = load i32, i32* %4657, align 16, !dbg !385
  %4659 = add i32 %4658, %4656, !dbg !385
  store i32 %4659, i32* %4657, align 16, !dbg !385
  %4660 = load i32, i32* %5, align 4, !dbg !385
  %4661 = load i32, i32* %6, align 4, !dbg !385
  %4662 = add i32 %4660, %4661, !dbg !385
  %4663 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !385
  store i32 %4662, i32* %4663, align 16, !dbg !385
  %4664 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !386
  %4665 = load i32, i32* %4664, align 4, !dbg !386
  %4666 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !386
  %4667 = load i32, i32* %4666, align 16, !dbg !386
  %4668 = lshr i32 %4667, 6, !dbg !386
  %4669 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !386
  %4670 = load i32, i32* %4669, align 16, !dbg !386
  %4671 = shl i32 %4670, 26, !dbg !386
  %4672 = or i32 %4668, %4671, !dbg !386
  %4673 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !386
  %4674 = load i32, i32* %4673, align 16, !dbg !386
  %4675 = lshr i32 %4674, 11, !dbg !386
  %4676 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !386
  %4677 = load i32, i32* %4676, align 16, !dbg !386
  %4678 = shl i32 %4677, 21, !dbg !386
  %4679 = or i32 %4675, %4678, !dbg !386
  %4680 = xor i32 %4672, %4679, !dbg !386
  %4681 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !386
  %4682 = load i32, i32* %4681, align 16, !dbg !386
  %4683 = lshr i32 %4682, 25, !dbg !386
  %4684 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !386
  %4685 = load i32, i32* %4684, align 16, !dbg !386
  %4686 = shl i32 %4685, 7, !dbg !386
  %4687 = or i32 %4683, %4686, !dbg !386
  %4688 = xor i32 %4680, %4687, !dbg !386
  %4689 = add i32 %4665, %4688, !dbg !386
  %4690 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !386
  %4691 = load i32, i32* %4690, align 16, !dbg !386
  %4692 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !386
  %4693 = load i32, i32* %4692, align 4, !dbg !386
  %4694 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !386
  %4695 = load i32, i32* %4694, align 8, !dbg !386
  %4696 = xor i32 %4693, %4695, !dbg !386
  %4697 = and i32 %4691, %4696, !dbg !386
  %4698 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !386
  %4699 = load i32, i32* %4698, align 8, !dbg !386
  %4700 = xor i32 %4697, %4699, !dbg !386
  %4701 = add i32 %4689, %4700, !dbg !386
  %4702 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 52, !dbg !386
  %4703 = load i32, i32* %4702, align 16, !dbg !386
  %4704 = add i32 %4701, %4703, !dbg !386
  %4705 = add i32 %4704, 958139571, !dbg !386
  store i32 %4705, i32* %5, align 4, !dbg !386
  %4706 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !386
  %4707 = load i32, i32* %4706, align 16, !dbg !386
  %4708 = lshr i32 %4707, 2, !dbg !386
  %4709 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !386
  %4710 = load i32, i32* %4709, align 16, !dbg !386
  %4711 = shl i32 %4710, 30, !dbg !386
  %4712 = or i32 %4708, %4711, !dbg !386
  %4713 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !386
  %4714 = load i32, i32* %4713, align 16, !dbg !386
  %4715 = lshr i32 %4714, 13, !dbg !386
  %4716 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !386
  %4717 = load i32, i32* %4716, align 16, !dbg !386
  %4718 = shl i32 %4717, 19, !dbg !386
  %4719 = or i32 %4715, %4718, !dbg !386
  %4720 = xor i32 %4712, %4719, !dbg !386
  %4721 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !386
  %4722 = load i32, i32* %4721, align 16, !dbg !386
  %4723 = lshr i32 %4722, 22, !dbg !386
  %4724 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !386
  %4725 = load i32, i32* %4724, align 16, !dbg !386
  %4726 = shl i32 %4725, 10, !dbg !386
  %4727 = or i32 %4723, %4726, !dbg !386
  %4728 = xor i32 %4720, %4727, !dbg !386
  %4729 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !386
  %4730 = load i32, i32* %4729, align 16, !dbg !386
  %4731 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !386
  %4732 = load i32, i32* %4731, align 4, !dbg !386
  %4733 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !386
  %4734 = load i32, i32* %4733, align 8, !dbg !386
  %4735 = or i32 %4732, %4734, !dbg !386
  %4736 = and i32 %4730, %4735, !dbg !386
  %4737 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !386
  %4738 = load i32, i32* %4737, align 4, !dbg !386
  %4739 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !386
  %4740 = load i32, i32* %4739, align 8, !dbg !386
  %4741 = and i32 %4738, %4740, !dbg !386
  %4742 = or i32 %4736, %4741, !dbg !386
  %4743 = add i32 %4728, %4742, !dbg !386
  store i32 %4743, i32* %6, align 4, !dbg !386
  %4744 = load i32, i32* %5, align 4, !dbg !386
  %4745 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !386
  %4746 = load i32, i32* %4745, align 4, !dbg !386
  %4747 = add i32 %4746, %4744, !dbg !386
  store i32 %4747, i32* %4745, align 4, !dbg !386
  %4748 = load i32, i32* %5, align 4, !dbg !386
  %4749 = load i32, i32* %6, align 4, !dbg !386
  %4750 = add i32 %4748, %4749, !dbg !386
  %4751 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !386
  store i32 %4750, i32* %4751, align 4, !dbg !386
  %4752 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !387
  %4753 = load i32, i32* %4752, align 8, !dbg !387
  %4754 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !387
  %4755 = load i32, i32* %4754, align 4, !dbg !387
  %4756 = lshr i32 %4755, 6, !dbg !387
  %4757 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !387
  %4758 = load i32, i32* %4757, align 4, !dbg !387
  %4759 = shl i32 %4758, 26, !dbg !387
  %4760 = or i32 %4756, %4759, !dbg !387
  %4761 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !387
  %4762 = load i32, i32* %4761, align 4, !dbg !387
  %4763 = lshr i32 %4762, 11, !dbg !387
  %4764 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !387
  %4765 = load i32, i32* %4764, align 4, !dbg !387
  %4766 = shl i32 %4765, 21, !dbg !387
  %4767 = or i32 %4763, %4766, !dbg !387
  %4768 = xor i32 %4760, %4767, !dbg !387
  %4769 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !387
  %4770 = load i32, i32* %4769, align 4, !dbg !387
  %4771 = lshr i32 %4770, 25, !dbg !387
  %4772 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !387
  %4773 = load i32, i32* %4772, align 4, !dbg !387
  %4774 = shl i32 %4773, 7, !dbg !387
  %4775 = or i32 %4771, %4774, !dbg !387
  %4776 = xor i32 %4768, %4775, !dbg !387
  %4777 = add i32 %4753, %4776, !dbg !387
  %4778 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !387
  %4779 = load i32, i32* %4778, align 4, !dbg !387
  %4780 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !387
  %4781 = load i32, i32* %4780, align 16, !dbg !387
  %4782 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !387
  %4783 = load i32, i32* %4782, align 4, !dbg !387
  %4784 = xor i32 %4781, %4783, !dbg !387
  %4785 = and i32 %4779, %4784, !dbg !387
  %4786 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !387
  %4787 = load i32, i32* %4786, align 4, !dbg !387
  %4788 = xor i32 %4785, %4787, !dbg !387
  %4789 = add i32 %4777, %4788, !dbg !387
  %4790 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 53, !dbg !387
  %4791 = load i32, i32* %4790, align 4, !dbg !387
  %4792 = add i32 %4789, %4791, !dbg !387
  %4793 = add i32 %4792, 1322822218, !dbg !387
  store i32 %4793, i32* %5, align 4, !dbg !387
  %4794 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !387
  %4795 = load i32, i32* %4794, align 4, !dbg !387
  %4796 = lshr i32 %4795, 2, !dbg !387
  %4797 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !387
  %4798 = load i32, i32* %4797, align 4, !dbg !387
  %4799 = shl i32 %4798, 30, !dbg !387
  %4800 = or i32 %4796, %4799, !dbg !387
  %4801 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !387
  %4802 = load i32, i32* %4801, align 4, !dbg !387
  %4803 = lshr i32 %4802, 13, !dbg !387
  %4804 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !387
  %4805 = load i32, i32* %4804, align 4, !dbg !387
  %4806 = shl i32 %4805, 19, !dbg !387
  %4807 = or i32 %4803, %4806, !dbg !387
  %4808 = xor i32 %4800, %4807, !dbg !387
  %4809 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !387
  %4810 = load i32, i32* %4809, align 4, !dbg !387
  %4811 = lshr i32 %4810, 22, !dbg !387
  %4812 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !387
  %4813 = load i32, i32* %4812, align 4, !dbg !387
  %4814 = shl i32 %4813, 10, !dbg !387
  %4815 = or i32 %4811, %4814, !dbg !387
  %4816 = xor i32 %4808, %4815, !dbg !387
  %4817 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !387
  %4818 = load i32, i32* %4817, align 4, !dbg !387
  %4819 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !387
  %4820 = load i32, i32* %4819, align 16, !dbg !387
  %4821 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !387
  %4822 = load i32, i32* %4821, align 4, !dbg !387
  %4823 = or i32 %4820, %4822, !dbg !387
  %4824 = and i32 %4818, %4823, !dbg !387
  %4825 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !387
  %4826 = load i32, i32* %4825, align 16, !dbg !387
  %4827 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !387
  %4828 = load i32, i32* %4827, align 4, !dbg !387
  %4829 = and i32 %4826, %4828, !dbg !387
  %4830 = or i32 %4824, %4829, !dbg !387
  %4831 = add i32 %4816, %4830, !dbg !387
  store i32 %4831, i32* %6, align 4, !dbg !387
  %4832 = load i32, i32* %5, align 4, !dbg !387
  %4833 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !387
  %4834 = load i32, i32* %4833, align 8, !dbg !387
  %4835 = add i32 %4834, %4832, !dbg !387
  store i32 %4835, i32* %4833, align 8, !dbg !387
  %4836 = load i32, i32* %5, align 4, !dbg !387
  %4837 = load i32, i32* %6, align 4, !dbg !387
  %4838 = add i32 %4836, %4837, !dbg !387
  %4839 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !387
  store i32 %4838, i32* %4839, align 8, !dbg !387
  %4840 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !388
  %4841 = load i32, i32* %4840, align 4, !dbg !388
  %4842 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !388
  %4843 = load i32, i32* %4842, align 8, !dbg !388
  %4844 = lshr i32 %4843, 6, !dbg !388
  %4845 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !388
  %4846 = load i32, i32* %4845, align 8, !dbg !388
  %4847 = shl i32 %4846, 26, !dbg !388
  %4848 = or i32 %4844, %4847, !dbg !388
  %4849 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !388
  %4850 = load i32, i32* %4849, align 8, !dbg !388
  %4851 = lshr i32 %4850, 11, !dbg !388
  %4852 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !388
  %4853 = load i32, i32* %4852, align 8, !dbg !388
  %4854 = shl i32 %4853, 21, !dbg !388
  %4855 = or i32 %4851, %4854, !dbg !388
  %4856 = xor i32 %4848, %4855, !dbg !388
  %4857 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !388
  %4858 = load i32, i32* %4857, align 8, !dbg !388
  %4859 = lshr i32 %4858, 25, !dbg !388
  %4860 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !388
  %4861 = load i32, i32* %4860, align 8, !dbg !388
  %4862 = shl i32 %4861, 7, !dbg !388
  %4863 = or i32 %4859, %4862, !dbg !388
  %4864 = xor i32 %4856, %4863, !dbg !388
  %4865 = add i32 %4841, %4864, !dbg !388
  %4866 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !388
  %4867 = load i32, i32* %4866, align 8, !dbg !388
  %4868 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !388
  %4869 = load i32, i32* %4868, align 4, !dbg !388
  %4870 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !388
  %4871 = load i32, i32* %4870, align 16, !dbg !388
  %4872 = xor i32 %4869, %4871, !dbg !388
  %4873 = and i32 %4867, %4872, !dbg !388
  %4874 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !388
  %4875 = load i32, i32* %4874, align 16, !dbg !388
  %4876 = xor i32 %4873, %4875, !dbg !388
  %4877 = add i32 %4865, %4876, !dbg !388
  %4878 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 54, !dbg !388
  %4879 = load i32, i32* %4878, align 8, !dbg !388
  %4880 = add i32 %4877, %4879, !dbg !388
  %4881 = add i32 %4880, 1537002063, !dbg !388
  store i32 %4881, i32* %5, align 4, !dbg !388
  %4882 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !388
  %4883 = load i32, i32* %4882, align 8, !dbg !388
  %4884 = lshr i32 %4883, 2, !dbg !388
  %4885 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !388
  %4886 = load i32, i32* %4885, align 8, !dbg !388
  %4887 = shl i32 %4886, 30, !dbg !388
  %4888 = or i32 %4884, %4887, !dbg !388
  %4889 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !388
  %4890 = load i32, i32* %4889, align 8, !dbg !388
  %4891 = lshr i32 %4890, 13, !dbg !388
  %4892 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !388
  %4893 = load i32, i32* %4892, align 8, !dbg !388
  %4894 = shl i32 %4893, 19, !dbg !388
  %4895 = or i32 %4891, %4894, !dbg !388
  %4896 = xor i32 %4888, %4895, !dbg !388
  %4897 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !388
  %4898 = load i32, i32* %4897, align 8, !dbg !388
  %4899 = lshr i32 %4898, 22, !dbg !388
  %4900 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !388
  %4901 = load i32, i32* %4900, align 8, !dbg !388
  %4902 = shl i32 %4901, 10, !dbg !388
  %4903 = or i32 %4899, %4902, !dbg !388
  %4904 = xor i32 %4896, %4903, !dbg !388
  %4905 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !388
  %4906 = load i32, i32* %4905, align 8, !dbg !388
  %4907 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !388
  %4908 = load i32, i32* %4907, align 4, !dbg !388
  %4909 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !388
  %4910 = load i32, i32* %4909, align 16, !dbg !388
  %4911 = or i32 %4908, %4910, !dbg !388
  %4912 = and i32 %4906, %4911, !dbg !388
  %4913 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !388
  %4914 = load i32, i32* %4913, align 4, !dbg !388
  %4915 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !388
  %4916 = load i32, i32* %4915, align 16, !dbg !388
  %4917 = and i32 %4914, %4916, !dbg !388
  %4918 = or i32 %4912, %4917, !dbg !388
  %4919 = add i32 %4904, %4918, !dbg !388
  store i32 %4919, i32* %6, align 4, !dbg !388
  %4920 = load i32, i32* %5, align 4, !dbg !388
  %4921 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !388
  %4922 = load i32, i32* %4921, align 4, !dbg !388
  %4923 = add i32 %4922, %4920, !dbg !388
  store i32 %4923, i32* %4921, align 4, !dbg !388
  %4924 = load i32, i32* %5, align 4, !dbg !388
  %4925 = load i32, i32* %6, align 4, !dbg !388
  %4926 = add i32 %4924, %4925, !dbg !388
  %4927 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !388
  store i32 %4926, i32* %4927, align 4, !dbg !388
  %4928 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !389
  %4929 = load i32, i32* %4928, align 16, !dbg !389
  %4930 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !389
  %4931 = load i32, i32* %4930, align 4, !dbg !389
  %4932 = lshr i32 %4931, 6, !dbg !389
  %4933 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !389
  %4934 = load i32, i32* %4933, align 4, !dbg !389
  %4935 = shl i32 %4934, 26, !dbg !389
  %4936 = or i32 %4932, %4935, !dbg !389
  %4937 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !389
  %4938 = load i32, i32* %4937, align 4, !dbg !389
  %4939 = lshr i32 %4938, 11, !dbg !389
  %4940 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !389
  %4941 = load i32, i32* %4940, align 4, !dbg !389
  %4942 = shl i32 %4941, 21, !dbg !389
  %4943 = or i32 %4939, %4942, !dbg !389
  %4944 = xor i32 %4936, %4943, !dbg !389
  %4945 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !389
  %4946 = load i32, i32* %4945, align 4, !dbg !389
  %4947 = lshr i32 %4946, 25, !dbg !389
  %4948 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !389
  %4949 = load i32, i32* %4948, align 4, !dbg !389
  %4950 = shl i32 %4949, 7, !dbg !389
  %4951 = or i32 %4947, %4950, !dbg !389
  %4952 = xor i32 %4944, %4951, !dbg !389
  %4953 = add i32 %4929, %4952, !dbg !389
  %4954 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !389
  %4955 = load i32, i32* %4954, align 4, !dbg !389
  %4956 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !389
  %4957 = load i32, i32* %4956, align 8, !dbg !389
  %4958 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !389
  %4959 = load i32, i32* %4958, align 4, !dbg !389
  %4960 = xor i32 %4957, %4959, !dbg !389
  %4961 = and i32 %4955, %4960, !dbg !389
  %4962 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !389
  %4963 = load i32, i32* %4962, align 4, !dbg !389
  %4964 = xor i32 %4961, %4963, !dbg !389
  %4965 = add i32 %4953, %4964, !dbg !389
  %4966 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 55, !dbg !389
  %4967 = load i32, i32* %4966, align 4, !dbg !389
  %4968 = add i32 %4965, %4967, !dbg !389
  %4969 = add i32 %4968, 1747873779, !dbg !389
  store i32 %4969, i32* %5, align 4, !dbg !389
  %4970 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !389
  %4971 = load i32, i32* %4970, align 4, !dbg !389
  %4972 = lshr i32 %4971, 2, !dbg !389
  %4973 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !389
  %4974 = load i32, i32* %4973, align 4, !dbg !389
  %4975 = shl i32 %4974, 30, !dbg !389
  %4976 = or i32 %4972, %4975, !dbg !389
  %4977 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !389
  %4978 = load i32, i32* %4977, align 4, !dbg !389
  %4979 = lshr i32 %4978, 13, !dbg !389
  %4980 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !389
  %4981 = load i32, i32* %4980, align 4, !dbg !389
  %4982 = shl i32 %4981, 19, !dbg !389
  %4983 = or i32 %4979, %4982, !dbg !389
  %4984 = xor i32 %4976, %4983, !dbg !389
  %4985 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !389
  %4986 = load i32, i32* %4985, align 4, !dbg !389
  %4987 = lshr i32 %4986, 22, !dbg !389
  %4988 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !389
  %4989 = load i32, i32* %4988, align 4, !dbg !389
  %4990 = shl i32 %4989, 10, !dbg !389
  %4991 = or i32 %4987, %4990, !dbg !389
  %4992 = xor i32 %4984, %4991, !dbg !389
  %4993 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !389
  %4994 = load i32, i32* %4993, align 4, !dbg !389
  %4995 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !389
  %4996 = load i32, i32* %4995, align 8, !dbg !389
  %4997 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !389
  %4998 = load i32, i32* %4997, align 4, !dbg !389
  %4999 = or i32 %4996, %4998, !dbg !389
  %5000 = and i32 %4994, %4999, !dbg !389
  %5001 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !389
  %5002 = load i32, i32* %5001, align 8, !dbg !389
  %5003 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !389
  %5004 = load i32, i32* %5003, align 4, !dbg !389
  %5005 = and i32 %5002, %5004, !dbg !389
  %5006 = or i32 %5000, %5005, !dbg !389
  %5007 = add i32 %4992, %5006, !dbg !389
  store i32 %5007, i32* %6, align 4, !dbg !389
  %5008 = load i32, i32* %5, align 4, !dbg !389
  %5009 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !389
  %5010 = load i32, i32* %5009, align 16, !dbg !389
  %5011 = add i32 %5010, %5008, !dbg !389
  store i32 %5011, i32* %5009, align 16, !dbg !389
  %5012 = load i32, i32* %5, align 4, !dbg !389
  %5013 = load i32, i32* %6, align 4, !dbg !389
  %5014 = add i32 %5012, %5013, !dbg !389
  %5015 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !389
  store i32 %5014, i32* %5015, align 16, !dbg !389
  %5016 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !390
  %5017 = load i32, i32* %5016, align 4, !dbg !390
  %5018 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !390
  %5019 = load i32, i32* %5018, align 16, !dbg !390
  %5020 = lshr i32 %5019, 6, !dbg !390
  %5021 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !390
  %5022 = load i32, i32* %5021, align 16, !dbg !390
  %5023 = shl i32 %5022, 26, !dbg !390
  %5024 = or i32 %5020, %5023, !dbg !390
  %5025 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !390
  %5026 = load i32, i32* %5025, align 16, !dbg !390
  %5027 = lshr i32 %5026, 11, !dbg !390
  %5028 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !390
  %5029 = load i32, i32* %5028, align 16, !dbg !390
  %5030 = shl i32 %5029, 21, !dbg !390
  %5031 = or i32 %5027, %5030, !dbg !390
  %5032 = xor i32 %5024, %5031, !dbg !390
  %5033 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !390
  %5034 = load i32, i32* %5033, align 16, !dbg !390
  %5035 = lshr i32 %5034, 25, !dbg !390
  %5036 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !390
  %5037 = load i32, i32* %5036, align 16, !dbg !390
  %5038 = shl i32 %5037, 7, !dbg !390
  %5039 = or i32 %5035, %5038, !dbg !390
  %5040 = xor i32 %5032, %5039, !dbg !390
  %5041 = add i32 %5017, %5040, !dbg !390
  %5042 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !390
  %5043 = load i32, i32* %5042, align 16, !dbg !390
  %5044 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !390
  %5045 = load i32, i32* %5044, align 4, !dbg !390
  %5046 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !390
  %5047 = load i32, i32* %5046, align 8, !dbg !390
  %5048 = xor i32 %5045, %5047, !dbg !390
  %5049 = and i32 %5043, %5048, !dbg !390
  %5050 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !390
  %5051 = load i32, i32* %5050, align 8, !dbg !390
  %5052 = xor i32 %5049, %5051, !dbg !390
  %5053 = add i32 %5041, %5052, !dbg !390
  %5054 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 56, !dbg !390
  %5055 = load i32, i32* %5054, align 16, !dbg !390
  %5056 = add i32 %5053, %5055, !dbg !390
  %5057 = add i32 %5056, 1955562222, !dbg !390
  store i32 %5057, i32* %5, align 4, !dbg !390
  %5058 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !390
  %5059 = load i32, i32* %5058, align 16, !dbg !390
  %5060 = lshr i32 %5059, 2, !dbg !390
  %5061 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !390
  %5062 = load i32, i32* %5061, align 16, !dbg !390
  %5063 = shl i32 %5062, 30, !dbg !390
  %5064 = or i32 %5060, %5063, !dbg !390
  %5065 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !390
  %5066 = load i32, i32* %5065, align 16, !dbg !390
  %5067 = lshr i32 %5066, 13, !dbg !390
  %5068 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !390
  %5069 = load i32, i32* %5068, align 16, !dbg !390
  %5070 = shl i32 %5069, 19, !dbg !390
  %5071 = or i32 %5067, %5070, !dbg !390
  %5072 = xor i32 %5064, %5071, !dbg !390
  %5073 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !390
  %5074 = load i32, i32* %5073, align 16, !dbg !390
  %5075 = lshr i32 %5074, 22, !dbg !390
  %5076 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !390
  %5077 = load i32, i32* %5076, align 16, !dbg !390
  %5078 = shl i32 %5077, 10, !dbg !390
  %5079 = or i32 %5075, %5078, !dbg !390
  %5080 = xor i32 %5072, %5079, !dbg !390
  %5081 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !390
  %5082 = load i32, i32* %5081, align 16, !dbg !390
  %5083 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !390
  %5084 = load i32, i32* %5083, align 4, !dbg !390
  %5085 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !390
  %5086 = load i32, i32* %5085, align 8, !dbg !390
  %5087 = or i32 %5084, %5086, !dbg !390
  %5088 = and i32 %5082, %5087, !dbg !390
  %5089 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !390
  %5090 = load i32, i32* %5089, align 4, !dbg !390
  %5091 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !390
  %5092 = load i32, i32* %5091, align 8, !dbg !390
  %5093 = and i32 %5090, %5092, !dbg !390
  %5094 = or i32 %5088, %5093, !dbg !390
  %5095 = add i32 %5080, %5094, !dbg !390
  store i32 %5095, i32* %6, align 4, !dbg !390
  %5096 = load i32, i32* %5, align 4, !dbg !390
  %5097 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !390
  %5098 = load i32, i32* %5097, align 4, !dbg !390
  %5099 = add i32 %5098, %5096, !dbg !390
  store i32 %5099, i32* %5097, align 4, !dbg !390
  %5100 = load i32, i32* %5, align 4, !dbg !390
  %5101 = load i32, i32* %6, align 4, !dbg !390
  %5102 = add i32 %5100, %5101, !dbg !390
  %5103 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !390
  store i32 %5102, i32* %5103, align 4, !dbg !390
  %5104 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !391
  %5105 = load i32, i32* %5104, align 8, !dbg !391
  %5106 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !391
  %5107 = load i32, i32* %5106, align 4, !dbg !391
  %5108 = lshr i32 %5107, 6, !dbg !391
  %5109 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !391
  %5110 = load i32, i32* %5109, align 4, !dbg !391
  %5111 = shl i32 %5110, 26, !dbg !391
  %5112 = or i32 %5108, %5111, !dbg !391
  %5113 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !391
  %5114 = load i32, i32* %5113, align 4, !dbg !391
  %5115 = lshr i32 %5114, 11, !dbg !391
  %5116 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !391
  %5117 = load i32, i32* %5116, align 4, !dbg !391
  %5118 = shl i32 %5117, 21, !dbg !391
  %5119 = or i32 %5115, %5118, !dbg !391
  %5120 = xor i32 %5112, %5119, !dbg !391
  %5121 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !391
  %5122 = load i32, i32* %5121, align 4, !dbg !391
  %5123 = lshr i32 %5122, 25, !dbg !391
  %5124 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !391
  %5125 = load i32, i32* %5124, align 4, !dbg !391
  %5126 = shl i32 %5125, 7, !dbg !391
  %5127 = or i32 %5123, %5126, !dbg !391
  %5128 = xor i32 %5120, %5127, !dbg !391
  %5129 = add i32 %5105, %5128, !dbg !391
  %5130 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !391
  %5131 = load i32, i32* %5130, align 4, !dbg !391
  %5132 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !391
  %5133 = load i32, i32* %5132, align 16, !dbg !391
  %5134 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !391
  %5135 = load i32, i32* %5134, align 4, !dbg !391
  %5136 = xor i32 %5133, %5135, !dbg !391
  %5137 = and i32 %5131, %5136, !dbg !391
  %5138 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !391
  %5139 = load i32, i32* %5138, align 4, !dbg !391
  %5140 = xor i32 %5137, %5139, !dbg !391
  %5141 = add i32 %5129, %5140, !dbg !391
  %5142 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 57, !dbg !391
  %5143 = load i32, i32* %5142, align 4, !dbg !391
  %5144 = add i32 %5141, %5143, !dbg !391
  %5145 = add i32 %5144, 2024104815, !dbg !391
  store i32 %5145, i32* %5, align 4, !dbg !391
  %5146 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !391
  %5147 = load i32, i32* %5146, align 4, !dbg !391
  %5148 = lshr i32 %5147, 2, !dbg !391
  %5149 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !391
  %5150 = load i32, i32* %5149, align 4, !dbg !391
  %5151 = shl i32 %5150, 30, !dbg !391
  %5152 = or i32 %5148, %5151, !dbg !391
  %5153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !391
  %5154 = load i32, i32* %5153, align 4, !dbg !391
  %5155 = lshr i32 %5154, 13, !dbg !391
  %5156 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !391
  %5157 = load i32, i32* %5156, align 4, !dbg !391
  %5158 = shl i32 %5157, 19, !dbg !391
  %5159 = or i32 %5155, %5158, !dbg !391
  %5160 = xor i32 %5152, %5159, !dbg !391
  %5161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !391
  %5162 = load i32, i32* %5161, align 4, !dbg !391
  %5163 = lshr i32 %5162, 22, !dbg !391
  %5164 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !391
  %5165 = load i32, i32* %5164, align 4, !dbg !391
  %5166 = shl i32 %5165, 10, !dbg !391
  %5167 = or i32 %5163, %5166, !dbg !391
  %5168 = xor i32 %5160, %5167, !dbg !391
  %5169 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !391
  %5170 = load i32, i32* %5169, align 4, !dbg !391
  %5171 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !391
  %5172 = load i32, i32* %5171, align 16, !dbg !391
  %5173 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !391
  %5174 = load i32, i32* %5173, align 4, !dbg !391
  %5175 = or i32 %5172, %5174, !dbg !391
  %5176 = and i32 %5170, %5175, !dbg !391
  %5177 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !391
  %5178 = load i32, i32* %5177, align 16, !dbg !391
  %5179 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !391
  %5180 = load i32, i32* %5179, align 4, !dbg !391
  %5181 = and i32 %5178, %5180, !dbg !391
  %5182 = or i32 %5176, %5181, !dbg !391
  %5183 = add i32 %5168, %5182, !dbg !391
  store i32 %5183, i32* %6, align 4, !dbg !391
  %5184 = load i32, i32* %5, align 4, !dbg !391
  %5185 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !391
  %5186 = load i32, i32* %5185, align 8, !dbg !391
  %5187 = add i32 %5186, %5184, !dbg !391
  store i32 %5187, i32* %5185, align 8, !dbg !391
  %5188 = load i32, i32* %5, align 4, !dbg !391
  %5189 = load i32, i32* %6, align 4, !dbg !391
  %5190 = add i32 %5188, %5189, !dbg !391
  %5191 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !391
  store i32 %5190, i32* %5191, align 8, !dbg !391
  %5192 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !392
  %5193 = load i32, i32* %5192, align 4, !dbg !392
  %5194 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !392
  %5195 = load i32, i32* %5194, align 8, !dbg !392
  %5196 = lshr i32 %5195, 6, !dbg !392
  %5197 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !392
  %5198 = load i32, i32* %5197, align 8, !dbg !392
  %5199 = shl i32 %5198, 26, !dbg !392
  %5200 = or i32 %5196, %5199, !dbg !392
  %5201 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !392
  %5202 = load i32, i32* %5201, align 8, !dbg !392
  %5203 = lshr i32 %5202, 11, !dbg !392
  %5204 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !392
  %5205 = load i32, i32* %5204, align 8, !dbg !392
  %5206 = shl i32 %5205, 21, !dbg !392
  %5207 = or i32 %5203, %5206, !dbg !392
  %5208 = xor i32 %5200, %5207, !dbg !392
  %5209 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !392
  %5210 = load i32, i32* %5209, align 8, !dbg !392
  %5211 = lshr i32 %5210, 25, !dbg !392
  %5212 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !392
  %5213 = load i32, i32* %5212, align 8, !dbg !392
  %5214 = shl i32 %5213, 7, !dbg !392
  %5215 = or i32 %5211, %5214, !dbg !392
  %5216 = xor i32 %5208, %5215, !dbg !392
  %5217 = add i32 %5193, %5216, !dbg !392
  %5218 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !392
  %5219 = load i32, i32* %5218, align 8, !dbg !392
  %5220 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !392
  %5221 = load i32, i32* %5220, align 4, !dbg !392
  %5222 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !392
  %5223 = load i32, i32* %5222, align 16, !dbg !392
  %5224 = xor i32 %5221, %5223, !dbg !392
  %5225 = and i32 %5219, %5224, !dbg !392
  %5226 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !392
  %5227 = load i32, i32* %5226, align 16, !dbg !392
  %5228 = xor i32 %5225, %5227, !dbg !392
  %5229 = add i32 %5217, %5228, !dbg !392
  %5230 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 58, !dbg !392
  %5231 = load i32, i32* %5230, align 8, !dbg !392
  %5232 = add i32 %5229, %5231, !dbg !392
  %5233 = add i32 %5232, -2067236844, !dbg !392
  store i32 %5233, i32* %5, align 4, !dbg !392
  %5234 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !392
  %5235 = load i32, i32* %5234, align 8, !dbg !392
  %5236 = lshr i32 %5235, 2, !dbg !392
  %5237 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !392
  %5238 = load i32, i32* %5237, align 8, !dbg !392
  %5239 = shl i32 %5238, 30, !dbg !392
  %5240 = or i32 %5236, %5239, !dbg !392
  %5241 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !392
  %5242 = load i32, i32* %5241, align 8, !dbg !392
  %5243 = lshr i32 %5242, 13, !dbg !392
  %5244 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !392
  %5245 = load i32, i32* %5244, align 8, !dbg !392
  %5246 = shl i32 %5245, 19, !dbg !392
  %5247 = or i32 %5243, %5246, !dbg !392
  %5248 = xor i32 %5240, %5247, !dbg !392
  %5249 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !392
  %5250 = load i32, i32* %5249, align 8, !dbg !392
  %5251 = lshr i32 %5250, 22, !dbg !392
  %5252 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !392
  %5253 = load i32, i32* %5252, align 8, !dbg !392
  %5254 = shl i32 %5253, 10, !dbg !392
  %5255 = or i32 %5251, %5254, !dbg !392
  %5256 = xor i32 %5248, %5255, !dbg !392
  %5257 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !392
  %5258 = load i32, i32* %5257, align 8, !dbg !392
  %5259 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !392
  %5260 = load i32, i32* %5259, align 4, !dbg !392
  %5261 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !392
  %5262 = load i32, i32* %5261, align 16, !dbg !392
  %5263 = or i32 %5260, %5262, !dbg !392
  %5264 = and i32 %5258, %5263, !dbg !392
  %5265 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !392
  %5266 = load i32, i32* %5265, align 4, !dbg !392
  %5267 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !392
  %5268 = load i32, i32* %5267, align 16, !dbg !392
  %5269 = and i32 %5266, %5268, !dbg !392
  %5270 = or i32 %5264, %5269, !dbg !392
  %5271 = add i32 %5256, %5270, !dbg !392
  store i32 %5271, i32* %6, align 4, !dbg !392
  %5272 = load i32, i32* %5, align 4, !dbg !392
  %5273 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !392
  %5274 = load i32, i32* %5273, align 4, !dbg !392
  %5275 = add i32 %5274, %5272, !dbg !392
  store i32 %5275, i32* %5273, align 4, !dbg !392
  %5276 = load i32, i32* %5, align 4, !dbg !392
  %5277 = load i32, i32* %6, align 4, !dbg !392
  %5278 = add i32 %5276, %5277, !dbg !392
  %5279 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !392
  store i32 %5278, i32* %5279, align 4, !dbg !392
  %5280 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !393
  %5281 = load i32, i32* %5280, align 16, !dbg !393
  %5282 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !393
  %5283 = load i32, i32* %5282, align 4, !dbg !393
  %5284 = lshr i32 %5283, 6, !dbg !393
  %5285 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !393
  %5286 = load i32, i32* %5285, align 4, !dbg !393
  %5287 = shl i32 %5286, 26, !dbg !393
  %5288 = or i32 %5284, %5287, !dbg !393
  %5289 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !393
  %5290 = load i32, i32* %5289, align 4, !dbg !393
  %5291 = lshr i32 %5290, 11, !dbg !393
  %5292 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !393
  %5293 = load i32, i32* %5292, align 4, !dbg !393
  %5294 = shl i32 %5293, 21, !dbg !393
  %5295 = or i32 %5291, %5294, !dbg !393
  %5296 = xor i32 %5288, %5295, !dbg !393
  %5297 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !393
  %5298 = load i32, i32* %5297, align 4, !dbg !393
  %5299 = lshr i32 %5298, 25, !dbg !393
  %5300 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !393
  %5301 = load i32, i32* %5300, align 4, !dbg !393
  %5302 = shl i32 %5301, 7, !dbg !393
  %5303 = or i32 %5299, %5302, !dbg !393
  %5304 = xor i32 %5296, %5303, !dbg !393
  %5305 = add i32 %5281, %5304, !dbg !393
  %5306 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !393
  %5307 = load i32, i32* %5306, align 4, !dbg !393
  %5308 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !393
  %5309 = load i32, i32* %5308, align 8, !dbg !393
  %5310 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !393
  %5311 = load i32, i32* %5310, align 4, !dbg !393
  %5312 = xor i32 %5309, %5311, !dbg !393
  %5313 = and i32 %5307, %5312, !dbg !393
  %5314 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !393
  %5315 = load i32, i32* %5314, align 4, !dbg !393
  %5316 = xor i32 %5313, %5315, !dbg !393
  %5317 = add i32 %5305, %5316, !dbg !393
  %5318 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 59, !dbg !393
  %5319 = load i32, i32* %5318, align 4, !dbg !393
  %5320 = add i32 %5317, %5319, !dbg !393
  %5321 = add i32 %5320, -1933114872, !dbg !393
  store i32 %5321, i32* %5, align 4, !dbg !393
  %5322 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !393
  %5323 = load i32, i32* %5322, align 4, !dbg !393
  %5324 = lshr i32 %5323, 2, !dbg !393
  %5325 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !393
  %5326 = load i32, i32* %5325, align 4, !dbg !393
  %5327 = shl i32 %5326, 30, !dbg !393
  %5328 = or i32 %5324, %5327, !dbg !393
  %5329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !393
  %5330 = load i32, i32* %5329, align 4, !dbg !393
  %5331 = lshr i32 %5330, 13, !dbg !393
  %5332 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !393
  %5333 = load i32, i32* %5332, align 4, !dbg !393
  %5334 = shl i32 %5333, 19, !dbg !393
  %5335 = or i32 %5331, %5334, !dbg !393
  %5336 = xor i32 %5328, %5335, !dbg !393
  %5337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !393
  %5338 = load i32, i32* %5337, align 4, !dbg !393
  %5339 = lshr i32 %5338, 22, !dbg !393
  %5340 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !393
  %5341 = load i32, i32* %5340, align 4, !dbg !393
  %5342 = shl i32 %5341, 10, !dbg !393
  %5343 = or i32 %5339, %5342, !dbg !393
  %5344 = xor i32 %5336, %5343, !dbg !393
  %5345 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !393
  %5346 = load i32, i32* %5345, align 4, !dbg !393
  %5347 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !393
  %5348 = load i32, i32* %5347, align 8, !dbg !393
  %5349 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !393
  %5350 = load i32, i32* %5349, align 4, !dbg !393
  %5351 = or i32 %5348, %5350, !dbg !393
  %5352 = and i32 %5346, %5351, !dbg !393
  %5353 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !393
  %5354 = load i32, i32* %5353, align 8, !dbg !393
  %5355 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !393
  %5356 = load i32, i32* %5355, align 4, !dbg !393
  %5357 = and i32 %5354, %5356, !dbg !393
  %5358 = or i32 %5352, %5357, !dbg !393
  %5359 = add i32 %5344, %5358, !dbg !393
  store i32 %5359, i32* %6, align 4, !dbg !393
  %5360 = load i32, i32* %5, align 4, !dbg !393
  %5361 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !393
  %5362 = load i32, i32* %5361, align 16, !dbg !393
  %5363 = add i32 %5362, %5360, !dbg !393
  store i32 %5363, i32* %5361, align 16, !dbg !393
  %5364 = load i32, i32* %5, align 4, !dbg !393
  %5365 = load i32, i32* %6, align 4, !dbg !393
  %5366 = add i32 %5364, %5365, !dbg !393
  %5367 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !393
  store i32 %5366, i32* %5367, align 16, !dbg !393
  %5368 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !394
  %5369 = load i32, i32* %5368, align 4, !dbg !394
  %5370 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !394
  %5371 = load i32, i32* %5370, align 16, !dbg !394
  %5372 = lshr i32 %5371, 6, !dbg !394
  %5373 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !394
  %5374 = load i32, i32* %5373, align 16, !dbg !394
  %5375 = shl i32 %5374, 26, !dbg !394
  %5376 = or i32 %5372, %5375, !dbg !394
  %5377 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !394
  %5378 = load i32, i32* %5377, align 16, !dbg !394
  %5379 = lshr i32 %5378, 11, !dbg !394
  %5380 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !394
  %5381 = load i32, i32* %5380, align 16, !dbg !394
  %5382 = shl i32 %5381, 21, !dbg !394
  %5383 = or i32 %5379, %5382, !dbg !394
  %5384 = xor i32 %5376, %5383, !dbg !394
  %5385 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !394
  %5386 = load i32, i32* %5385, align 16, !dbg !394
  %5387 = lshr i32 %5386, 25, !dbg !394
  %5388 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !394
  %5389 = load i32, i32* %5388, align 16, !dbg !394
  %5390 = shl i32 %5389, 7, !dbg !394
  %5391 = or i32 %5387, %5390, !dbg !394
  %5392 = xor i32 %5384, %5391, !dbg !394
  %5393 = add i32 %5369, %5392, !dbg !394
  %5394 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !394
  %5395 = load i32, i32* %5394, align 16, !dbg !394
  %5396 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !394
  %5397 = load i32, i32* %5396, align 4, !dbg !394
  %5398 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !394
  %5399 = load i32, i32* %5398, align 8, !dbg !394
  %5400 = xor i32 %5397, %5399, !dbg !394
  %5401 = and i32 %5395, %5400, !dbg !394
  %5402 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !394
  %5403 = load i32, i32* %5402, align 8, !dbg !394
  %5404 = xor i32 %5401, %5403, !dbg !394
  %5405 = add i32 %5393, %5404, !dbg !394
  %5406 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 60, !dbg !394
  %5407 = load i32, i32* %5406, align 16, !dbg !394
  %5408 = add i32 %5405, %5407, !dbg !394
  %5409 = add i32 %5408, -1866530822, !dbg !394
  store i32 %5409, i32* %5, align 4, !dbg !394
  %5410 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !394
  %5411 = load i32, i32* %5410, align 16, !dbg !394
  %5412 = lshr i32 %5411, 2, !dbg !394
  %5413 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !394
  %5414 = load i32, i32* %5413, align 16, !dbg !394
  %5415 = shl i32 %5414, 30, !dbg !394
  %5416 = or i32 %5412, %5415, !dbg !394
  %5417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !394
  %5418 = load i32, i32* %5417, align 16, !dbg !394
  %5419 = lshr i32 %5418, 13, !dbg !394
  %5420 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !394
  %5421 = load i32, i32* %5420, align 16, !dbg !394
  %5422 = shl i32 %5421, 19, !dbg !394
  %5423 = or i32 %5419, %5422, !dbg !394
  %5424 = xor i32 %5416, %5423, !dbg !394
  %5425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !394
  %5426 = load i32, i32* %5425, align 16, !dbg !394
  %5427 = lshr i32 %5426, 22, !dbg !394
  %5428 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !394
  %5429 = load i32, i32* %5428, align 16, !dbg !394
  %5430 = shl i32 %5429, 10, !dbg !394
  %5431 = or i32 %5427, %5430, !dbg !394
  %5432 = xor i32 %5424, %5431, !dbg !394
  %5433 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !394
  %5434 = load i32, i32* %5433, align 16, !dbg !394
  %5435 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !394
  %5436 = load i32, i32* %5435, align 4, !dbg !394
  %5437 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !394
  %5438 = load i32, i32* %5437, align 8, !dbg !394
  %5439 = or i32 %5436, %5438, !dbg !394
  %5440 = and i32 %5434, %5439, !dbg !394
  %5441 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !394
  %5442 = load i32, i32* %5441, align 4, !dbg !394
  %5443 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !394
  %5444 = load i32, i32* %5443, align 8, !dbg !394
  %5445 = and i32 %5442, %5444, !dbg !394
  %5446 = or i32 %5440, %5445, !dbg !394
  %5447 = add i32 %5432, %5446, !dbg !394
  store i32 %5447, i32* %6, align 4, !dbg !394
  %5448 = load i32, i32* %5, align 4, !dbg !394
  %5449 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !394
  %5450 = load i32, i32* %5449, align 4, !dbg !394
  %5451 = add i32 %5450, %5448, !dbg !394
  store i32 %5451, i32* %5449, align 4, !dbg !394
  %5452 = load i32, i32* %5, align 4, !dbg !394
  %5453 = load i32, i32* %6, align 4, !dbg !394
  %5454 = add i32 %5452, %5453, !dbg !394
  %5455 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !394
  store i32 %5454, i32* %5455, align 4, !dbg !394
  %5456 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !395
  %5457 = load i32, i32* %5456, align 8, !dbg !395
  %5458 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !395
  %5459 = load i32, i32* %5458, align 4, !dbg !395
  %5460 = lshr i32 %5459, 6, !dbg !395
  %5461 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !395
  %5462 = load i32, i32* %5461, align 4, !dbg !395
  %5463 = shl i32 %5462, 26, !dbg !395
  %5464 = or i32 %5460, %5463, !dbg !395
  %5465 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !395
  %5466 = load i32, i32* %5465, align 4, !dbg !395
  %5467 = lshr i32 %5466, 11, !dbg !395
  %5468 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !395
  %5469 = load i32, i32* %5468, align 4, !dbg !395
  %5470 = shl i32 %5469, 21, !dbg !395
  %5471 = or i32 %5467, %5470, !dbg !395
  %5472 = xor i32 %5464, %5471, !dbg !395
  %5473 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !395
  %5474 = load i32, i32* %5473, align 4, !dbg !395
  %5475 = lshr i32 %5474, 25, !dbg !395
  %5476 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !395
  %5477 = load i32, i32* %5476, align 4, !dbg !395
  %5478 = shl i32 %5477, 7, !dbg !395
  %5479 = or i32 %5475, %5478, !dbg !395
  %5480 = xor i32 %5472, %5479, !dbg !395
  %5481 = add i32 %5457, %5480, !dbg !395
  %5482 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !395
  %5483 = load i32, i32* %5482, align 4, !dbg !395
  %5484 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !395
  %5485 = load i32, i32* %5484, align 16, !dbg !395
  %5486 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !395
  %5487 = load i32, i32* %5486, align 4, !dbg !395
  %5488 = xor i32 %5485, %5487, !dbg !395
  %5489 = and i32 %5483, %5488, !dbg !395
  %5490 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !395
  %5491 = load i32, i32* %5490, align 4, !dbg !395
  %5492 = xor i32 %5489, %5491, !dbg !395
  %5493 = add i32 %5481, %5492, !dbg !395
  %5494 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 61, !dbg !395
  %5495 = load i32, i32* %5494, align 4, !dbg !395
  %5496 = add i32 %5493, %5495, !dbg !395
  %5497 = add i32 %5496, -1538233109, !dbg !395
  store i32 %5497, i32* %5, align 4, !dbg !395
  %5498 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !395
  %5499 = load i32, i32* %5498, align 4, !dbg !395
  %5500 = lshr i32 %5499, 2, !dbg !395
  %5501 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !395
  %5502 = load i32, i32* %5501, align 4, !dbg !395
  %5503 = shl i32 %5502, 30, !dbg !395
  %5504 = or i32 %5500, %5503, !dbg !395
  %5505 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !395
  %5506 = load i32, i32* %5505, align 4, !dbg !395
  %5507 = lshr i32 %5506, 13, !dbg !395
  %5508 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !395
  %5509 = load i32, i32* %5508, align 4, !dbg !395
  %5510 = shl i32 %5509, 19, !dbg !395
  %5511 = or i32 %5507, %5510, !dbg !395
  %5512 = xor i32 %5504, %5511, !dbg !395
  %5513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !395
  %5514 = load i32, i32* %5513, align 4, !dbg !395
  %5515 = lshr i32 %5514, 22, !dbg !395
  %5516 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !395
  %5517 = load i32, i32* %5516, align 4, !dbg !395
  %5518 = shl i32 %5517, 10, !dbg !395
  %5519 = or i32 %5515, %5518, !dbg !395
  %5520 = xor i32 %5512, %5519, !dbg !395
  %5521 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !395
  %5522 = load i32, i32* %5521, align 4, !dbg !395
  %5523 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !395
  %5524 = load i32, i32* %5523, align 16, !dbg !395
  %5525 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !395
  %5526 = load i32, i32* %5525, align 4, !dbg !395
  %5527 = or i32 %5524, %5526, !dbg !395
  %5528 = and i32 %5522, %5527, !dbg !395
  %5529 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !395
  %5530 = load i32, i32* %5529, align 16, !dbg !395
  %5531 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !395
  %5532 = load i32, i32* %5531, align 4, !dbg !395
  %5533 = and i32 %5530, %5532, !dbg !395
  %5534 = or i32 %5528, %5533, !dbg !395
  %5535 = add i32 %5520, %5534, !dbg !395
  store i32 %5535, i32* %6, align 4, !dbg !395
  %5536 = load i32, i32* %5, align 4, !dbg !395
  %5537 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !395
  %5538 = load i32, i32* %5537, align 8, !dbg !395
  %5539 = add i32 %5538, %5536, !dbg !395
  store i32 %5539, i32* %5537, align 8, !dbg !395
  %5540 = load i32, i32* %5, align 4, !dbg !395
  %5541 = load i32, i32* %6, align 4, !dbg !395
  %5542 = add i32 %5540, %5541, !dbg !395
  %5543 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !395
  store i32 %5542, i32* %5543, align 8, !dbg !395
  %5544 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !396
  %5545 = load i32, i32* %5544, align 4, !dbg !396
  %5546 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !396
  %5547 = load i32, i32* %5546, align 8, !dbg !396
  %5548 = lshr i32 %5547, 6, !dbg !396
  %5549 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !396
  %5550 = load i32, i32* %5549, align 8, !dbg !396
  %5551 = shl i32 %5550, 26, !dbg !396
  %5552 = or i32 %5548, %5551, !dbg !396
  %5553 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !396
  %5554 = load i32, i32* %5553, align 8, !dbg !396
  %5555 = lshr i32 %5554, 11, !dbg !396
  %5556 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !396
  %5557 = load i32, i32* %5556, align 8, !dbg !396
  %5558 = shl i32 %5557, 21, !dbg !396
  %5559 = or i32 %5555, %5558, !dbg !396
  %5560 = xor i32 %5552, %5559, !dbg !396
  %5561 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !396
  %5562 = load i32, i32* %5561, align 8, !dbg !396
  %5563 = lshr i32 %5562, 25, !dbg !396
  %5564 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !396
  %5565 = load i32, i32* %5564, align 8, !dbg !396
  %5566 = shl i32 %5565, 7, !dbg !396
  %5567 = or i32 %5563, %5566, !dbg !396
  %5568 = xor i32 %5560, %5567, !dbg !396
  %5569 = add i32 %5545, %5568, !dbg !396
  %5570 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !396
  %5571 = load i32, i32* %5570, align 8, !dbg !396
  %5572 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !396
  %5573 = load i32, i32* %5572, align 4, !dbg !396
  %5574 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !396
  %5575 = load i32, i32* %5574, align 16, !dbg !396
  %5576 = xor i32 %5573, %5575, !dbg !396
  %5577 = and i32 %5571, %5576, !dbg !396
  %5578 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !396
  %5579 = load i32, i32* %5578, align 16, !dbg !396
  %5580 = xor i32 %5577, %5579, !dbg !396
  %5581 = add i32 %5569, %5580, !dbg !396
  %5582 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 62, !dbg !396
  %5583 = load i32, i32* %5582, align 8, !dbg !396
  %5584 = add i32 %5581, %5583, !dbg !396
  %5585 = add i32 %5584, -1090935817, !dbg !396
  store i32 %5585, i32* %5, align 4, !dbg !396
  %5586 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !396
  %5587 = load i32, i32* %5586, align 8, !dbg !396
  %5588 = lshr i32 %5587, 2, !dbg !396
  %5589 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !396
  %5590 = load i32, i32* %5589, align 8, !dbg !396
  %5591 = shl i32 %5590, 30, !dbg !396
  %5592 = or i32 %5588, %5591, !dbg !396
  %5593 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !396
  %5594 = load i32, i32* %5593, align 8, !dbg !396
  %5595 = lshr i32 %5594, 13, !dbg !396
  %5596 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !396
  %5597 = load i32, i32* %5596, align 8, !dbg !396
  %5598 = shl i32 %5597, 19, !dbg !396
  %5599 = or i32 %5595, %5598, !dbg !396
  %5600 = xor i32 %5592, %5599, !dbg !396
  %5601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !396
  %5602 = load i32, i32* %5601, align 8, !dbg !396
  %5603 = lshr i32 %5602, 22, !dbg !396
  %5604 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !396
  %5605 = load i32, i32* %5604, align 8, !dbg !396
  %5606 = shl i32 %5605, 10, !dbg !396
  %5607 = or i32 %5603, %5606, !dbg !396
  %5608 = xor i32 %5600, %5607, !dbg !396
  %5609 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !396
  %5610 = load i32, i32* %5609, align 8, !dbg !396
  %5611 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !396
  %5612 = load i32, i32* %5611, align 4, !dbg !396
  %5613 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !396
  %5614 = load i32, i32* %5613, align 16, !dbg !396
  %5615 = or i32 %5612, %5614, !dbg !396
  %5616 = and i32 %5610, %5615, !dbg !396
  %5617 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !396
  %5618 = load i32, i32* %5617, align 4, !dbg !396
  %5619 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !396
  %5620 = load i32, i32* %5619, align 16, !dbg !396
  %5621 = and i32 %5618, %5620, !dbg !396
  %5622 = or i32 %5616, %5621, !dbg !396
  %5623 = add i32 %5608, %5622, !dbg !396
  store i32 %5623, i32* %6, align 4, !dbg !396
  %5624 = load i32, i32* %5, align 4, !dbg !396
  %5625 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !396
  %5626 = load i32, i32* %5625, align 4, !dbg !396
  %5627 = add i32 %5626, %5624, !dbg !396
  store i32 %5627, i32* %5625, align 4, !dbg !396
  %5628 = load i32, i32* %5, align 4, !dbg !396
  %5629 = load i32, i32* %6, align 4, !dbg !396
  %5630 = add i32 %5628, %5629, !dbg !396
  %5631 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !396
  store i32 %5630, i32* %5631, align 4, !dbg !396
  %5632 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !397
  %5633 = load i32, i32* %5632, align 16, !dbg !397
  %5634 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !397
  %5635 = load i32, i32* %5634, align 4, !dbg !397
  %5636 = lshr i32 %5635, 6, !dbg !397
  %5637 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !397
  %5638 = load i32, i32* %5637, align 4, !dbg !397
  %5639 = shl i32 %5638, 26, !dbg !397
  %5640 = or i32 %5636, %5639, !dbg !397
  %5641 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !397
  %5642 = load i32, i32* %5641, align 4, !dbg !397
  %5643 = lshr i32 %5642, 11, !dbg !397
  %5644 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !397
  %5645 = load i32, i32* %5644, align 4, !dbg !397
  %5646 = shl i32 %5645, 21, !dbg !397
  %5647 = or i32 %5643, %5646, !dbg !397
  %5648 = xor i32 %5640, %5647, !dbg !397
  %5649 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !397
  %5650 = load i32, i32* %5649, align 4, !dbg !397
  %5651 = lshr i32 %5650, 25, !dbg !397
  %5652 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !397
  %5653 = load i32, i32* %5652, align 4, !dbg !397
  %5654 = shl i32 %5653, 7, !dbg !397
  %5655 = or i32 %5651, %5654, !dbg !397
  %5656 = xor i32 %5648, %5655, !dbg !397
  %5657 = add i32 %5633, %5656, !dbg !397
  %5658 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !397
  %5659 = load i32, i32* %5658, align 4, !dbg !397
  %5660 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !397
  %5661 = load i32, i32* %5660, align 8, !dbg !397
  %5662 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !397
  %5663 = load i32, i32* %5662, align 4, !dbg !397
  %5664 = xor i32 %5661, %5663, !dbg !397
  %5665 = and i32 %5659, %5664, !dbg !397
  %5666 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !397
  %5667 = load i32, i32* %5666, align 4, !dbg !397
  %5668 = xor i32 %5665, %5667, !dbg !397
  %5669 = add i32 %5657, %5668, !dbg !397
  %5670 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 63, !dbg !397
  %5671 = load i32, i32* %5670, align 4, !dbg !397
  %5672 = add i32 %5669, %5671, !dbg !397
  %5673 = add i32 %5672, -965641998, !dbg !397
  store i32 %5673, i32* %5, align 4, !dbg !397
  %5674 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !397
  %5675 = load i32, i32* %5674, align 4, !dbg !397
  %5676 = lshr i32 %5675, 2, !dbg !397
  %5677 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !397
  %5678 = load i32, i32* %5677, align 4, !dbg !397
  %5679 = shl i32 %5678, 30, !dbg !397
  %5680 = or i32 %5676, %5679, !dbg !397
  %5681 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !397
  %5682 = load i32, i32* %5681, align 4, !dbg !397
  %5683 = lshr i32 %5682, 13, !dbg !397
  %5684 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !397
  %5685 = load i32, i32* %5684, align 4, !dbg !397
  %5686 = shl i32 %5685, 19, !dbg !397
  %5687 = or i32 %5683, %5686, !dbg !397
  %5688 = xor i32 %5680, %5687, !dbg !397
  %5689 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !397
  %5690 = load i32, i32* %5689, align 4, !dbg !397
  %5691 = lshr i32 %5690, 22, !dbg !397
  %5692 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !397
  %5693 = load i32, i32* %5692, align 4, !dbg !397
  %5694 = shl i32 %5693, 10, !dbg !397
  %5695 = or i32 %5691, %5694, !dbg !397
  %5696 = xor i32 %5688, %5695, !dbg !397
  %5697 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !397
  %5698 = load i32, i32* %5697, align 4, !dbg !397
  %5699 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !397
  %5700 = load i32, i32* %5699, align 8, !dbg !397
  %5701 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !397
  %5702 = load i32, i32* %5701, align 4, !dbg !397
  %5703 = or i32 %5700, %5702, !dbg !397
  %5704 = and i32 %5698, %5703, !dbg !397
  %5705 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !397
  %5706 = load i32, i32* %5705, align 8, !dbg !397
  %5707 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !397
  %5708 = load i32, i32* %5707, align 4, !dbg !397
  %5709 = and i32 %5706, %5708, !dbg !397
  %5710 = or i32 %5704, %5709, !dbg !397
  %5711 = add i32 %5696, %5710, !dbg !397
  store i32 %5711, i32* %6, align 4, !dbg !397
  %5712 = load i32, i32* %5, align 4, !dbg !397
  %5713 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !397
  %5714 = load i32, i32* %5713, align 16, !dbg !397
  %5715 = add i32 %5714, %5712, !dbg !397
  store i32 %5715, i32* %5713, align 16, !dbg !397
  %5716 = load i32, i32* %5, align 4, !dbg !397
  %5717 = load i32, i32* %6, align 4, !dbg !397
  %5718 = add i32 %5716, %5717, !dbg !397
  %5719 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !397
  store i32 %5718, i32* %5719, align 16, !dbg !397
  call void @llvm.dbg.value(metadata i32 0, metadata !309, metadata !DIExpression()), !dbg !296
  br label %5720, !dbg !398

5720:                                             ; preds = %5730, %84
  %.1 = phi i32 [ 0, %84 ], [ %5731, %5730 ], !dbg !400
  call void @llvm.dbg.value(metadata i32 %.1, metadata !309, metadata !DIExpression()), !dbg !296
  %5721 = icmp slt i32 %.1, 8, !dbg !401
  br i1 %5721, label %5722, label %5732, !dbg !403

5722:                                             ; preds = %5720
  %5723 = sext i32 %.1 to i64, !dbg !404
  %5724 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %5723, !dbg !404
  %5725 = load i32, i32* %5724, align 4, !dbg !404
  %5726 = sext i32 %.1 to i64, !dbg !406
  %5727 = getelementptr inbounds i32, i32* %0, i64 %5726, !dbg !406
  %5728 = load i32, i32* %5727, align 4, !dbg !407
  %5729 = add i32 %5728, %5725, !dbg !407
  store i32 %5729, i32* %5727, align 4, !dbg !407
  br label %5730, !dbg !408

5730:                                             ; preds = %5722
  %5731 = add nsw i32 %.1, 1, !dbg !409
  call void @llvm.dbg.value(metadata i32 %5731, metadata !309, metadata !DIExpression()), !dbg !296
  br label %5720, !dbg !410, !llvm.loop !411

5732:                                             ; preds = %5720
  %5733 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !413
  %5734 = bitcast i32* %5733 to i8*, !dbg !414
  call void @sodium_memzero(i8* %5734, i64 256), !dbg !415
  %5735 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !416
  %5736 = bitcast i32* %5735 to i8*, !dbg !417
  call void @sodium_memzero(i8* %5736, i64 32), !dbg !418
  %5737 = bitcast i32* %5 to i8*, !dbg !419
  call void @sodium_memzero(i8* %5737, i64 4), !dbg !420
  %5738 = bitcast i32* %6 to i8*, !dbg !421
  call void @sodium_memzero(i8* %5738, i64 4), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind uwtable
define internal void @be32dec_vect(i32* %0, i8* %1, i64 %2) #0 !dbg !424 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !427, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i8* %1, metadata !429, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i64 %2, metadata !430, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata i64 0, metadata !431, metadata !DIExpression()), !dbg !428
  br label %4, !dbg !432

4:                                                ; preds = %12, %3
  %.0 = phi i64 [ 0, %3 ], [ %13, %12 ], !dbg !434
  call void @llvm.dbg.value(metadata i64 %.0, metadata !431, metadata !DIExpression()), !dbg !428
  %5 = udiv i64 %2, 4, !dbg !435
  %6 = icmp ult i64 %.0, %5, !dbg !437
  br i1 %6, label %7, label %14, !dbg !438

7:                                                ; preds = %4
  %8 = mul i64 %.0, 4, !dbg !439
  %9 = getelementptr inbounds i8, i8* %1, i64 %8, !dbg !441
  %10 = call i32 @_sha256_be32dec(i8* %9), !dbg !442
  %11 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !443
  store i32 %10, i32* %11, align 4, !dbg !444
  br label %12, !dbg !445

12:                                               ; preds = %7
  %13 = add i64 %.0, 1, !dbg !446
  call void @llvm.dbg.value(metadata i64 %13, metadata !431, metadata !DIExpression()), !dbg !428
  br label %4, !dbg !447, !llvm.loop !448

14:                                               ; preds = %4
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sha256_be32dec(i8* %0) #0 !dbg !451 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i8* %0, metadata !458, metadata !DIExpression()), !dbg !457
  %2 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !459
  %3 = load i8, i8* %2, align 1, !dbg !459
  %4 = zext i8 %3 to i32, !dbg !460
  %5 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !461
  %6 = load i8, i8* %5, align 1, !dbg !461
  %7 = zext i8 %6 to i32, !dbg !462
  %8 = shl i32 %7, 8, !dbg !463
  %9 = add i32 %4, %8, !dbg !464
  %10 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !465
  %11 = load i8, i8* %10, align 1, !dbg !465
  %12 = zext i8 %11 to i32, !dbg !466
  %13 = shl i32 %12, 16, !dbg !467
  %14 = add i32 %9, %13, !dbg !468
  %15 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !469
  %16 = load i8, i8* %15, align 1, !dbg !469
  %17 = zext i8 %16 to i32, !dbg !470
  %18 = shl i32 %17, 24, !dbg !471
  %19 = add i32 %14, %18, !dbg !472
  ret i32 %19, !dbg !473
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha256_final(%struct.crypto_hash_sha256_state* %0, i8* %1) #0 !dbg !474 {
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha256_state* %0, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i8* %1, metadata !479, metadata !DIExpression()), !dbg !478
  call void @SHA256_Pad(%struct.crypto_hash_sha256_state* %0), !dbg !480
  %3 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !481
  %4 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0, !dbg !482
  call void @be32enc_vect(i8* %1, i32* %4, i64 32), !dbg !483
  %5 = bitcast %struct.crypto_hash_sha256_state* %0 to i8*, !dbg !484
  call void @sodium_memzero(i8* %5, i64 104), !dbg !485
  ret i32 0, !dbg !486
}

; Function Attrs: noinline nounwind uwtable
define internal void @SHA256_Pad(%struct.crypto_hash_sha256_state* %0) #0 !dbg !487 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha256_state* %0, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata [8 x i8]* %2, metadata !492, metadata !DIExpression()), !dbg !494
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !495
  %4 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !496
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !497
  call void @be32enc_vect(i8* %3, i32* %5, i64 8), !dbg !498
  %6 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !499
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !500
  %8 = load i32, i32* %7, align 4, !dbg !500
  %9 = lshr i32 %8, 3, !dbg !501
  %10 = and i32 %9, 63, !dbg !502
  call void @llvm.dbg.value(metadata i32 %10, metadata !503, metadata !DIExpression()), !dbg !491
  %11 = icmp ult i32 %10, 56, !dbg !504
  br i1 %11, label %12, label %14, !dbg !505

12:                                               ; preds = %1
  %13 = sub i32 56, %10, !dbg !506
  br label %16, !dbg !505

14:                                               ; preds = %1
  %15 = sub i32 120, %10, !dbg !507
  br label %16, !dbg !505

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ], !dbg !505
  call void @llvm.dbg.value(metadata i32 %17, metadata !508, metadata !DIExpression()), !dbg !491
  %18 = zext i32 %17 to i64, !dbg !509
  %19 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* bitcast (<{ i8, [63 x i8] }>* @PAD to [64 x i8]*), i64 0, i64 0), i64 %18), !dbg !510
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !511
  %21 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %0, i8* %20, i64 8), !dbg !512
  ret void, !dbg !513
}

; Function Attrs: noinline nounwind uwtable
define internal void @be32enc_vect(i8* %0, i32* %1, i64 %2) #0 !dbg !514 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i32* %1, metadata !520, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i64 %2, metadata !521, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i64 0, metadata !522, metadata !DIExpression()), !dbg !519
  br label %4, !dbg !523

4:                                                ; preds = %12, %3
  %.0 = phi i64 [ 0, %3 ], [ %13, %12 ], !dbg !525
  call void @llvm.dbg.value(metadata i64 %.0, metadata !522, metadata !DIExpression()), !dbg !519
  %5 = udiv i64 %2, 4, !dbg !526
  %6 = icmp ult i64 %.0, %5, !dbg !528
  br i1 %6, label %7, label %14, !dbg !529

7:                                                ; preds = %4
  %8 = mul i64 %.0, 4, !dbg !530
  %9 = getelementptr inbounds i8, i8* %0, i64 %8, !dbg !532
  %10 = getelementptr inbounds i32, i32* %1, i64 %.0, !dbg !533
  %11 = load i32, i32* %10, align 4, !dbg !533
  call void @_sha256_be32enc(i8* %9, i32 %11), !dbg !534
  br label %12, !dbg !535

12:                                               ; preds = %7
  %13 = add i64 %.0, 1, !dbg !536
  call void @llvm.dbg.value(metadata i64 %13, metadata !522, metadata !DIExpression()), !dbg !519
  br label %4, !dbg !537, !llvm.loop !538

14:                                               ; preds = %4
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind uwtable
define internal void @_sha256_be32enc(i8* %0, i32 %1) #0 !dbg !541 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %1, metadata !546, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i8* %0, metadata !547, metadata !DIExpression()), !dbg !545
  %3 = and i32 %1, 255, !dbg !548
  %4 = trunc i32 %3 to i8, !dbg !549
  %5 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !550
  store i8 %4, i8* %5, align 1, !dbg !551
  %6 = lshr i32 %1, 8, !dbg !552
  %7 = and i32 %6, 255, !dbg !553
  %8 = trunc i32 %7 to i8, !dbg !554
  %9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !555
  store i8 %8, i8* %9, align 1, !dbg !556
  %10 = lshr i32 %1, 16, !dbg !557
  %11 = and i32 %10, 255, !dbg !558
  %12 = trunc i32 %11 to i8, !dbg !559
  %13 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !560
  store i8 %12, i8* %13, align 1, !dbg !561
  %14 = lshr i32 %1, 24, !dbg !562
  %15 = and i32 %14, 255, !dbg !563
  %16 = trunc i32 %15 to i8, !dbg !564
  %17 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !565
  store i8 %16, i8* %17, align 1, !dbg !566
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha256(i8* %0, i8* %1, i64 %2) #0 !dbg !568 {
  %4 = alloca %struct.crypto_hash_sha256_state, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !571, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i8* %1, metadata !573, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.value(metadata i64 %2, metadata !574, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.declare(metadata %struct.crypto_hash_sha256_state* %4, metadata !575, metadata !DIExpression()), !dbg !576
  %5 = call i32 @crypto_hash_sha256_init(%struct.crypto_hash_sha256_state* %4), !dbg !577
  %6 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %4, i8* %1, i64 %2), !dbg !578
  %7 = call i32 @crypto_hash_sha256_final(%struct.crypto_hash_sha256_state* %4, i8* %0), !dbg !579
  ret i32 0, !dbg !580
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_auth_hmacsha256_init(%struct.crypto_auth_hmacsha256_state* %0, i8* %1, i64 %2) #0 !dbg !581 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.crypto_auth_hmacsha256_state* %0, metadata !597, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i8* %1, metadata !599, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i64 %2, metadata !600, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.declare(metadata [64 x i8]* %4, metadata !601, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !603, metadata !DIExpression()), !dbg !607
  %6 = icmp ugt i64 %2, 64, !dbg !608
  br i1 %6, label %7, label %16, !dbg !610

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 0, !dbg !611
  %9 = call i32 @crypto_hash_sha256_init(%struct.crypto_hash_sha256_state* %8), !dbg !613
  %10 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 0, !dbg !614
  %11 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %10, i8* %1, i64 %2), !dbg !615
  %12 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 0, !dbg !616
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !617
  %14 = call i32 @crypto_hash_sha256_final(%struct.crypto_hash_sha256_state* %12, i8* %13), !dbg !618
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !619
  call void @llvm.dbg.value(metadata i8* %15, metadata !599, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i64 32, metadata !600, metadata !DIExpression()), !dbg !598
  br label %16, !dbg !620

16:                                               ; preds = %7, %3
  %.02 = phi i64 [ 32, %7 ], [ %2, %3 ]
  %.01 = phi i8* [ %15, %7 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i8* %.01, metadata !599, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.value(metadata i64 %.02, metadata !600, metadata !DIExpression()), !dbg !598
  %17 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 0, !dbg !621
  %18 = call i32 @crypto_hash_sha256_init(%struct.crypto_hash_sha256_state* %17), !dbg !622
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !623
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 54, i64 64, i1 false), !dbg !623
  call void @llvm.dbg.value(metadata i64 0, metadata !624, metadata !DIExpression()), !dbg !598
  br label %20, !dbg !625

20:                                               ; preds = %31, %16
  %.0 = phi i64 [ 0, %16 ], [ %32, %31 ], !dbg !627
  call void @llvm.dbg.value(metadata i64 %.0, metadata !624, metadata !DIExpression()), !dbg !598
  %21 = icmp ult i64 %.0, %.02, !dbg !628
  br i1 %21, label %22, label %33, !dbg !630

22:                                               ; preds = %20
  %23 = getelementptr inbounds i8, i8* %.01, i64 %.0, !dbg !631
  %24 = load i8, i8* %23, align 1, !dbg !631
  %25 = zext i8 %24 to i32, !dbg !631
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %.0, !dbg !633
  %27 = load i8, i8* %26, align 1, !dbg !634
  %28 = zext i8 %27 to i32, !dbg !634
  %29 = xor i32 %28, %25, !dbg !634
  %30 = trunc i32 %29 to i8, !dbg !634
  store i8 %30, i8* %26, align 1, !dbg !634
  br label %31, !dbg !635

31:                                               ; preds = %22
  %32 = add i64 %.0, 1, !dbg !636
  call void @llvm.dbg.value(metadata i64 %32, metadata !624, metadata !DIExpression()), !dbg !598
  br label %20, !dbg !637, !llvm.loop !638

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 0, !dbg !640
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !641
  %36 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %34, i8* %35, i64 64), !dbg !642
  %37 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 1, !dbg !643
  %38 = call i32 @crypto_hash_sha256_init(%struct.crypto_hash_sha256_state* %37), !dbg !644
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !645
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 92, i64 64, i1 false), !dbg !645
  call void @llvm.dbg.value(metadata i64 0, metadata !624, metadata !DIExpression()), !dbg !598
  br label %40, !dbg !646

40:                                               ; preds = %51, %33
  %.1 = phi i64 [ 0, %33 ], [ %52, %51 ], !dbg !648
  call void @llvm.dbg.value(metadata i64 %.1, metadata !624, metadata !DIExpression()), !dbg !598
  %41 = icmp ult i64 %.1, %.02, !dbg !649
  br i1 %41, label %42, label %53, !dbg !651

42:                                               ; preds = %40
  %43 = getelementptr inbounds i8, i8* %.01, i64 %.1, !dbg !652
  %44 = load i8, i8* %43, align 1, !dbg !652
  %45 = zext i8 %44 to i32, !dbg !652
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %.1, !dbg !654
  %47 = load i8, i8* %46, align 1, !dbg !655
  %48 = zext i8 %47 to i32, !dbg !655
  %49 = xor i32 %48, %45, !dbg !655
  %50 = trunc i32 %49 to i8, !dbg !655
  store i8 %50, i8* %46, align 1, !dbg !655
  br label %51, !dbg !656

51:                                               ; preds = %42
  %52 = add i64 %.1, 1, !dbg !657
  call void @llvm.dbg.value(metadata i64 %52, metadata !624, metadata !DIExpression()), !dbg !598
  br label %40, !dbg !658, !llvm.loop !659

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 1, !dbg !661
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0, !dbg !662
  %56 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %54, i8* %55, i64 64), !dbg !663
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !664
  call void @sodium_memzero(i8* %57, i64 32), !dbg !665
  ret i32 0, !dbg !666
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_auth_hmacsha256_update(%struct.crypto_auth_hmacsha256_state* %0, i8* %1, i64 %2) #0 !dbg !667 {
  call void @llvm.dbg.value(metadata %struct.crypto_auth_hmacsha256_state* %0, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i8* %1, metadata !672, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i64 %2, metadata !673, metadata !DIExpression()), !dbg !671
  %4 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 0, !dbg !674
  %5 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %4, i8* %1, i64 %2), !dbg !675
  ret i32 0, !dbg !676
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_auth_hmacsha256_final(%struct.crypto_auth_hmacsha256_state* %0, i8* %1) #0 !dbg !677 {
  %3 = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.crypto_auth_hmacsha256_state* %0, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i8* %1, metadata !682, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.declare(metadata [32 x i8]* %3, metadata !683, metadata !DIExpression()), !dbg !684
  %4 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 0, !dbg !685
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !686
  %6 = call i32 @crypto_hash_sha256_final(%struct.crypto_hash_sha256_state* %4, i8* %5), !dbg !687
  %7 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 1, !dbg !688
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !689
  %9 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %7, i8* %8, i64 32), !dbg !690
  %10 = getelementptr inbounds %struct.crypto_auth_hmacsha256_state, %struct.crypto_auth_hmacsha256_state* %0, i32 0, i32 1, !dbg !691
  %11 = call i32 @crypto_hash_sha256_final(%struct.crypto_hash_sha256_state* %10, i8* %1), !dbg !692
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !693
  call void @sodium_memzero(i8* %12, i64 32), !dbg !694
  ret i32 0, !dbg !695
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_auth_hmacsha256(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !696 {
  %5 = alloca %struct.crypto_auth_hmacsha256_state, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i8* %1, metadata !699, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i64 %2, metadata !700, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i8* %3, metadata !701, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata %struct.crypto_auth_hmacsha256_state* %5, metadata !702, metadata !DIExpression()), !dbg !703
  %6 = call i32 @crypto_auth_hmacsha256_init(%struct.crypto_auth_hmacsha256_state* %5, i8* %3, i64 32), !dbg !704
  %7 = call i32 @crypto_auth_hmacsha256_update(%struct.crypto_auth_hmacsha256_state* %5, i8* %1, i64 %2), !dbg !705
  %8 = call i32 @crypto_auth_hmacsha256_final(%struct.crypto_auth_hmacsha256_state* %5, i8* %0), !dbg !706
  ret i32 0, !dbg !707
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !708 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !712, metadata !DIExpression()), !dbg !713
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation, align 8, !dbg !714
  ret i32 0, !dbg !715
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !716 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !717
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !718
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !718
  %4 = call i8* %3(), !dbg !717
  ret i8* %4, !dbg !719
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !720 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !721
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !722
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !722
  %4 = call i32 %3(), !dbg !721
  ret i32 %4, !dbg !723
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !724 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !725
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !727
  br i1 %2, label %3, label %12, !dbg !728

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !729
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !730
  %6 = load void ()*, void ()** %5, align 8, !dbg !730
  %7 = icmp ne void ()* %6, null, !dbg !731
  br i1 %7, label %8, label %12, !dbg !732

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !733
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !735
  %11 = load void ()*, void ()** %10, align 8, !dbg !735
  call void %11(), !dbg !733
  br label %12, !dbg !736

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !737
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !739, metadata !DIExpression()), !dbg !740
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !741
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !743
  br i1 %3, label %4, label %14, !dbg !744

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !745
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !746
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !746
  %8 = icmp ne i32 (i32)* %7, null, !dbg !747
  br i1 %8, label %9, label %14, !dbg !748

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !749
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !751
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !751
  %13 = call i32 %12(i32 %0), !dbg !749
  br label %26, !dbg !752

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !753
  br i1 %15, label %16, label %17, !dbg !755

16:                                               ; preds = %14
  br label %26, !dbg !756

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !758
  %19 = urem i32 %18, %0, !dbg !759
  call void @llvm.dbg.value(metadata i32 %19, metadata !760, metadata !DIExpression()), !dbg !740
  br label %20, !dbg !761

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !762
  call void @llvm.dbg.value(metadata i32 %21, metadata !764, metadata !DIExpression()), !dbg !740
  br label %22, !dbg !765

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !766
  br i1 %23, label %20, label %24, !dbg !765, !llvm.loop !767

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !769
  br label %26, !dbg !770

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !740
  ret i32 %.0, !dbg !771
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !772 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !773, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i64 %1, metadata !775, metadata !DIExpression()), !dbg !774
  %3 = icmp ugt i64 %1, 0, !dbg !776
  br i1 %3, label %4, label %8, !dbg !778

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !779
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !781
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !781
  call void %7(i8* %0, i64 %1), !dbg !779
  br label %8, !dbg !782

8:                                                ; preds = %4, %2
  ret void, !dbg !783
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !784 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !785
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !787
  br i1 %2, label %3, label %13, !dbg !788

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !789
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !790
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !790
  %7 = icmp ne i32 ()* %6, null, !dbg !791
  br i1 %7, label %8, label %13, !dbg !792

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !793
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !795
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !795
  %12 = call i32 %11(), !dbg !793
  br label %14, !dbg !796

13:                                               ; preds = %3, %0
  br label %14, !dbg !797

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !798
  ret i32 %.0, !dbg !799
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !800 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !805, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i64 %1, metadata !807, metadata !DIExpression()), !dbg !806
  %3 = icmp ule i64 %1, -1, !dbg !808
  br i1 %3, label %4, label %5, !dbg !811

4:                                                ; preds = %2
  br label %6, !dbg !811

5:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 142, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0)) #9, !dbg !808
  unreachable, !dbg !808

6:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !812
  ret void, !dbg !813
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !814 {
  ret i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), !dbg !815
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !816 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !817, metadata !DIExpression()), !dbg !818
  %2 = bitcast i32* %1 to i8*, !dbg !819
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !820
  %3 = load i32, i32* %1, align 4, !dbg !821
  ret i32 %3, !dbg !822
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !823 {
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !824
  %2 = icmp eq i32 %1, 0, !dbg !826
  br i1 %2, label %3, label %4, !dbg !827

3:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !828
  store i32 1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !830
  br label %4, !dbg !831

4:                                                ; preds = %3, %0
  ret void, !dbg !832
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !833 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !834, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i64 %1, metadata !836, metadata !DIExpression()), !dbg !835
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !837
  %3 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !838
  %4 = icmp ne i32 %3, 0, !dbg !840
  br i1 %4, label %5, label %10, !dbg !841

5:                                                ; preds = %2
  %6 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !842
  %7 = icmp ne i32 %6, 0, !dbg !845
  br i1 %7, label %8, label %9, !dbg !846

8:                                                ; preds = %5
  call void @abort() #9, !dbg !847
  unreachable, !dbg !847

9:                                                ; preds = %5
  br label %18, !dbg !849

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !850
  %12 = icmp eq i32 %11, -1, !dbg !852
  br i1 %12, label %17, label %13, !dbg !853

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !854
  %15 = call i64 @safe_read(i32 %14, i8* %0, i64 %1), !dbg !855
  %16 = icmp ne i64 %15, %1, !dbg !856
  br i1 %16, label %17, label %18, !dbg !857

17:                                               ; preds = %13, %10
  call void @abort() #9, !dbg !858
  unreachable, !dbg !858

18:                                               ; preds = %13, %9
  ret void, !dbg !860
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !861 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !862, metadata !DIExpression()), !dbg !863
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !864
  %2 = icmp ne i32 %1, -1, !dbg !866
  br i1 %2, label %3, label %8, !dbg !867

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !868
  %5 = call i32 @close(i32 %4), !dbg !869
  %6 = icmp eq i32 %5, 0, !dbg !870
  br i1 %6, label %7, label %8, !dbg !871

7:                                                ; preds = %3
  store i32 -1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !872
  store i32 0, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !874
  call void @llvm.dbg.value(metadata i32 0, metadata !862, metadata !DIExpression()), !dbg !863
  br label %8, !dbg !875

8:                                                ; preds = %7, %3, %0
  %.0 = phi i32 [ 0, %7 ], [ -1, %3 ], [ -1, %0 ], !dbg !863
  call void @llvm.dbg.value(metadata i32 %.0, metadata !862, metadata !DIExpression()), !dbg !863
  %9 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !876
  %10 = icmp ne i32 %9, 0, !dbg !878
  br i1 %10, label %11, label %12, !dbg !879

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 0, metadata !862, metadata !DIExpression()), !dbg !863
  br label %12, !dbg !880

12:                                               ; preds = %11, %8
  %.1 = phi i32 [ 0, %11 ], [ %.0, %8 ], !dbg !863
  call void @llvm.dbg.value(metadata i32 %.1, metadata !862, metadata !DIExpression()), !dbg !863
  ret i32 %.1, !dbg !882
}

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !883 {
  %1 = load i32, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1), align 4, !dbg !884
  %2 = icmp eq i32 %1, 0, !dbg !886
  br i1 %2, label %3, label %4, !dbg !887

3:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !888
  br label %4, !dbg !890

4:                                                ; preds = %3, %0
  ret void, !dbg !891
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !895, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 %1, metadata !897, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i8* %0, metadata !898, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 256, metadata !899, metadata !DIExpression()), !dbg !896
  br label %3, !dbg !900

3:                                                ; preds = %17, %2
  %.03 = phi i8* [ %0, %2 ], [ %16, %17 ], !dbg !896
  %.02 = phi i64 [ %1, %2 ], [ %15, %17 ]
  %.01 = phi i64 [ 256, %2 ], [ %.1, %17 ], !dbg !896
  call void @llvm.dbg.value(metadata i64 %.01, metadata !899, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 %.02, metadata !897, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i8* %.03, metadata !898, metadata !DIExpression()), !dbg !896
  %4 = icmp ult i64 %.02, %.01, !dbg !901
  br i1 %4, label %5, label %10, !dbg !904

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !899, metadata !DIExpression()), !dbg !896
  %6 = icmp ugt i64 %.02, 0, !dbg !905
  br i1 %6, label %7, label %8, !dbg !909

7:                                                ; preds = %5
  br label %9, !dbg !909

8:                                                ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0)) #9, !dbg !905
  unreachable, !dbg !905

9:                                                ; preds = %7
  br label %10, !dbg !910

10:                                               ; preds = %9, %3
  %.1 = phi i64 [ %.02, %9 ], [ %.01, %3 ], !dbg !896
  call void @llvm.dbg.value(metadata i64 %.1, metadata !899, metadata !DIExpression()), !dbg !896
  %11 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !911
  %12 = icmp ne i32 %11, 0, !dbg !913
  br i1 %12, label %13, label %14, !dbg !914

13:                                               ; preds = %10
  br label %20, !dbg !915

14:                                               ; preds = %10
  %15 = sub i64 %.02, %.1, !dbg !917
  call void @llvm.dbg.value(metadata i64 %15, metadata !897, metadata !DIExpression()), !dbg !896
  %16 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !918
  call void @llvm.dbg.value(metadata i8* %16, metadata !898, metadata !DIExpression()), !dbg !896
  br label %17, !dbg !919

17:                                               ; preds = %14
  %18 = icmp ugt i64 %15, 0, !dbg !920
  br i1 %18, label %3, label %19, !dbg !919, !llvm.loop !921

19:                                               ; preds = %17
  br label %20, !dbg !923

20:                                               ; preds = %19, %13
  %.0 = phi i32 [ -1, %13 ], [ 0, %19 ], !dbg !896
  ret i32 %.0, !dbg !924
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #5

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !925 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i8* %1, metadata !931, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i64 %2, metadata !932, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i8* %1, metadata !933, metadata !DIExpression()), !dbg !930
  %4 = icmp ugt i64 %2, 0, !dbg !934
  br i1 %4, label %5, label %6, !dbg !937

5:                                                ; preds = %3
  br label %7, !dbg !937

6:                                                ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0)) #9, !dbg !934
  unreachable, !dbg !934

7:                                                ; preds = %5
  br label %8, !dbg !938

8:                                                ; preds = %34, %7
  %.02 = phi i64 [ %2, %7 ], [ %32, %34 ]
  %.01 = phi i8* [ %1, %7 ], [ %33, %34 ], !dbg !930
  call void @llvm.dbg.value(metadata i8* %.01, metadata !933, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i64 %.02, metadata !932, metadata !DIExpression()), !dbg !930
  br label %9, !dbg !939

9:                                                ; preds = %24, %8
  %10 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !941
  call void @llvm.dbg.value(metadata i64 %10, metadata !942, metadata !DIExpression()), !dbg !930
  %11 = icmp slt i64 %10, 0, !dbg !943
  br i1 %11, label %12, label %22, !dbg !944

12:                                               ; preds = %9
  %13 = call i32* @__errno_location() #10, !dbg !945
  %14 = load i32, i32* %13, align 4, !dbg !945
  %15 = icmp eq i32 %14, 4, !dbg !946
  br i1 %15, label %20, label %16, !dbg !947

16:                                               ; preds = %12
  %17 = call i32* @__errno_location() #10, !dbg !948
  %18 = load i32, i32* %17, align 4, !dbg !948
  %19 = icmp eq i32 %18, 11, !dbg !949
  br label %20, !dbg !947

20:                                               ; preds = %16, %12
  %21 = phi i1 [ true, %12 ], [ %19, %16 ]
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi i1 [ false, %9 ], [ %21, %20 ], !dbg !950
  br i1 %23, label %24, label %25, !dbg !939

24:                                               ; preds = %22
  br label %9, !dbg !939, !llvm.loop !951

25:                                               ; preds = %22
  %26 = icmp slt i64 %10, 0, !dbg !953
  br i1 %26, label %27, label %28, !dbg !955

27:                                               ; preds = %25
  br label %40, !dbg !956

28:                                               ; preds = %25
  %29 = icmp eq i64 %10, 0, !dbg !958
  br i1 %29, label %30, label %31, !dbg !960

30:                                               ; preds = %28
  br label %36, !dbg !961

31:                                               ; preds = %28
  %32 = sub i64 %.02, %10, !dbg !963
  call void @llvm.dbg.value(metadata i64 %32, metadata !932, metadata !DIExpression()), !dbg !930
  %33 = getelementptr inbounds i8, i8* %.01, i64 %10, !dbg !964
  call void @llvm.dbg.value(metadata i8* %33, metadata !933, metadata !DIExpression()), !dbg !930
  br label %34, !dbg !965

34:                                               ; preds = %31
  %35 = icmp ugt i64 %32, 0, !dbg !966
  br i1 %35, label %8, label %36, !dbg !965, !llvm.loop !967

36:                                               ; preds = %34, %30
  %.1 = phi i8* [ %.01, %30 ], [ %33, %34 ], !dbg !930
  call void @llvm.dbg.value(metadata i8* %.1, metadata !933, metadata !DIExpression()), !dbg !930
  %37 = ptrtoint i8* %.1 to i64, !dbg !969
  %38 = ptrtoint i8* %1 to i64, !dbg !969
  %39 = sub i64 %37, %38, !dbg !969
  br label %40, !dbg !970

40:                                               ; preds = %36, %27
  %.0 = phi i64 [ %10, %27 ], [ %39, %36 ], !dbg !930
  ret i64 %.0, !dbg !971
}

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !972 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i64 %1, metadata !977, metadata !DIExpression()), !dbg !976
  %3 = icmp ule i64 %1, 256, !dbg !978
  br i1 %3, label %4, label %5, !dbg !981

4:                                                ; preds = %2
  br label %6, !dbg !981

5:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 142, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0)) #9, !dbg !978
  unreachable, !dbg !978

6:                                                ; preds = %4
  br label %7, !dbg !982

7:                                                ; preds = %23, %6
  %8 = trunc i64 %1 to i32, !dbg !983
  %9 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %8, i32 0) #11, !dbg !985
  %10 = trunc i64 %9 to i32, !dbg !985
  call void @llvm.dbg.value(metadata i32 %10, metadata !986, metadata !DIExpression()), !dbg !976
  br label %11, !dbg !987

11:                                               ; preds = %7
  %12 = icmp slt i32 %10, 0, !dbg !988
  br i1 %12, label %13, label %23, !dbg !989

13:                                               ; preds = %11
  %14 = call i32* @__errno_location() #10, !dbg !990
  %15 = load i32, i32* %14, align 4, !dbg !990
  %16 = icmp eq i32 %15, 4, !dbg !991
  br i1 %16, label %21, label %17, !dbg !992

17:                                               ; preds = %13
  %18 = call i32* @__errno_location() #10, !dbg !993
  %19 = load i32, i32* %18, align 4, !dbg !993
  %20 = icmp eq i32 %19, 11, !dbg !994
  br label %21, !dbg !992

21:                                               ; preds = %17, %13
  %22 = phi i1 [ true, %13 ], [ %20, %17 ]
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i1 [ false, %11 ], [ %22, %21 ], !dbg !976
  br i1 %24, label %7, label %25, !dbg !987, !llvm.loop !995

25:                                               ; preds = %23
  %26 = trunc i64 %1 to i32, !dbg !997
  %27 = icmp eq i32 %10, %26, !dbg !998
  %28 = zext i1 %27 to i32, !dbg !998
  %29 = sub nsw i32 %28, 1, !dbg !999
  ret i32 %29, !dbg !1000
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #7

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !1001 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32* @__errno_location() #10, !dbg !1002
  %3 = load i32, i32* %2, align 4, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %3, metadata !1003, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !1005, metadata !DIExpression()), !dbg !1007
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !1008
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !1010
  %6 = icmp eq i32 %5, 0, !dbg !1011
  br i1 %6, label %7, label %9, !dbg !1012

7:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !1013
  %8 = call i32* @__errno_location() #10, !dbg !1015
  store i32 %3, i32* %8, align 4, !dbg !1016
  br label %15, !dbg !1017

9:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2), align 4, !dbg !1018
  %10 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !1019
  store i32 %10, i32* getelementptr inbounds (%struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0), align 4, !dbg !1021
  %11 = icmp eq i32 %10, -1, !dbg !1022
  br i1 %11, label %12, label %13, !dbg !1023

12:                                               ; preds = %9
  call void @abort() #9, !dbg !1024
  unreachable, !dbg !1024

13:                                               ; preds = %9
  %14 = call i32* @__errno_location() #10, !dbg !1026
  store i32 %3, i32* %14, align 4, !dbg !1027
  br label %15, !dbg !1028

15:                                               ; preds = %13, %7
  ret void, !dbg !1028
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !90 {
  %1 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !1029, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !1066, metadata !DIExpression()), !dbg !1068
  br label %2, !dbg !1069

2:                                                ; preds = %28, %0
  %.01 = phi i8** [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), %0 ], [ %.1, %28 ], !dbg !1068
  call void @llvm.dbg.value(metadata i8** %.01, metadata !1066, metadata !DIExpression()), !dbg !1068
  %3 = load i8*, i8** %.01, align 8, !dbg !1070
  %4 = call i32 (i8*, i32, ...) @open(i8* %3, i32 0), !dbg !1072
  call void @llvm.dbg.value(metadata i32 %4, metadata !1073, metadata !DIExpression()), !dbg !1068
  %5 = icmp ne i32 %4, -1, !dbg !1074
  br i1 %5, label %6, label %20, !dbg !1076

6:                                                ; preds = %2
  %7 = call i32 @fstat(i32 %4, %struct.stat* %1) #11, !dbg !1077
  %8 = icmp eq i32 %7, 0, !dbg !1080
  br i1 %8, label %9, label %18, !dbg !1081

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !1082
  %11 = load i32, i32* %10, align 8, !dbg !1082
  %12 = and i32 %11, 61440, !dbg !1082
  %13 = icmp eq i32 %12, 8192, !dbg !1082
  br i1 %13, label %14, label %18, !dbg !1083

14:                                               ; preds = %9
  %15 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 1), !dbg !1084
  %16 = or i32 %15, 1, !dbg !1086
  %17 = call i32 (i32, i32, ...) @fcntl(i32 %4, i32 2, i32 %16), !dbg !1087
  br label %33, !dbg !1088

18:                                               ; preds = %9, %6
  %19 = call i32 @close(i32 %4), !dbg !1089
  br label %26, !dbg !1090

20:                                               ; preds = %2
  %21 = call i32* @__errno_location() #10, !dbg !1091
  %22 = load i32, i32* %21, align 4, !dbg !1091
  %23 = icmp eq i32 %22, 4, !dbg !1093
  br i1 %23, label %24, label %25, !dbg !1094

24:                                               ; preds = %20
  br label %28, !dbg !1095

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %18
  %27 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !1097
  call void @llvm.dbg.value(metadata i8** %27, metadata !1066, metadata !DIExpression()), !dbg !1068
  br label %28, !dbg !1098

28:                                               ; preds = %26, %24
  %.1 = phi i8** [ %27, %26 ], [ %.01, %24 ], !dbg !1068
  call void @llvm.dbg.value(metadata i8** %.1, metadata !1066, metadata !DIExpression()), !dbg !1068
  %29 = load i8*, i8** %.1, align 8, !dbg !1099
  %30 = icmp ne i8* %29, null, !dbg !1100
  br i1 %30, label %2, label %31, !dbg !1098, !llvm.loop !1101

31:                                               ; preds = %28
  %32 = call i32* @__errno_location() #10, !dbg !1103
  store i32 5, i32* %32, align 4, !dbg !1104
  br label %33, !dbg !1105

33:                                               ; preds = %31, %14
  %.0 = phi i32 [ %4, %14 ], [ -1, %31 ], !dbg !1068
  ret i32 %.0, !dbg !1106
}

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #7

declare dso_local i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !1107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %1, metadata !1110, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %0, metadata !1111, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 0, metadata !1112, metadata !DIExpression()), !dbg !1109
  br label %3, !dbg !1113

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !1109
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1112, metadata !DIExpression()), !dbg !1109
  %4 = icmp ult i64 %.0, %1, !dbg !1114
  br i1 %4, label %5, label %8, !dbg !1113

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %6, metadata !1112, metadata !DIExpression()), !dbg !1109
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1117
  store volatile i8 0, i8* %7, align 1, !dbg !1118
  br label %3, !dbg !1113, !llvm.loop !1119

8:                                                ; preds = %3
  ret void, !dbg !1121
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !1122 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1126, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %1, metadata !1128, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %2, metadata !1129, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %0, metadata !1130, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %1, metadata !1131, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8 0, metadata !1132, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 0, metadata !1133, metadata !DIExpression()), !dbg !1127
  br label %4, !dbg !1134

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !1136
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !1127
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1132, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1133, metadata !DIExpression()), !dbg !1127
  %5 = icmp ult i64 %.01, %2, !dbg !1137
  br i1 %5, label %6, label %19, !dbg !1139

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !1140
  %8 = load i8, i8* %7, align 1, !dbg !1140
  %9 = zext i8 %8 to i32, !dbg !1140
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !1142
  %11 = load i8, i8* %10, align 1, !dbg !1142
  %12 = zext i8 %11 to i32, !dbg !1142
  %13 = xor i32 %9, %12, !dbg !1143
  %14 = zext i8 %.0 to i32, !dbg !1144
  %15 = or i32 %14, %13, !dbg !1144
  %16 = trunc i32 %15 to i8, !dbg !1144
  call void @llvm.dbg.value(metadata i8 %16, metadata !1132, metadata !DIExpression()), !dbg !1127
  br label %17, !dbg !1145

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %18, metadata !1133, metadata !DIExpression()), !dbg !1127
  br label %4, !dbg !1147, !llvm.loop !1148

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !1150
  %21 = sub nsw i32 %20, 1, !dbg !1151
  %22 = ashr i32 %21, 8, !dbg !1152
  %23 = and i32 1, %22, !dbg !1153
  %24 = sub nsw i32 %23, 1, !dbg !1154
  ret i32 %24, !dbg !1155
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !1156 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1162, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %1, metadata !1164, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i8* %2, metadata !1165, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %3, metadata !1166, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 0, metadata !1167, metadata !DIExpression()), !dbg !1163
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !1168
  br i1 %5, label %9, label %6, !dbg !1170

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !1171
  %8 = icmp ult i64 %1, %7, !dbg !1172
  br i1 %8, label %9, label %10, !dbg !1173

9:                                                ; preds = %6, %4
  call void @abort() #9, !dbg !1174
  unreachable, !dbg !1174

10:                                               ; preds = %6
  br label %11, !dbg !1176

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !1163
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1167, metadata !DIExpression()), !dbg !1163
  %12 = icmp ult i64 %.0, %3, !dbg !1177
  br i1 %12, label %13, label %47, !dbg !1176

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1178
  %15 = load i8, i8* %14, align 1, !dbg !1178
  %16 = zext i8 %15 to i32, !dbg !1178
  %17 = and i32 %16, 15, !dbg !1180
  call void @llvm.dbg.value(metadata i32 %17, metadata !1181, metadata !DIExpression()), !dbg !1163
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1182
  %19 = load i8, i8* %18, align 1, !dbg !1182
  %20 = zext i8 %19 to i32, !dbg !1182
  %21 = ashr i32 %20, 4, !dbg !1183
  call void @llvm.dbg.value(metadata i32 %21, metadata !1184, metadata !DIExpression()), !dbg !1163
  %22 = add i32 87, %17, !dbg !1185
  %23 = sub i32 %17, 10, !dbg !1186
  %24 = lshr i32 %23, 8, !dbg !1187
  %25 = and i32 %24, -39, !dbg !1188
  %26 = add i32 %22, %25, !dbg !1189
  %27 = trunc i32 %26 to i8, !dbg !1190
  %28 = zext i8 %27 to i32, !dbg !1190
  %29 = shl i32 %28, 8, !dbg !1191
  %30 = add i32 87, %21, !dbg !1192
  %31 = sub i32 %21, 10, !dbg !1193
  %32 = lshr i32 %31, 8, !dbg !1194
  %33 = and i32 %32, -39, !dbg !1195
  %34 = add i32 %30, %33, !dbg !1196
  %35 = trunc i32 %34 to i8, !dbg !1197
  %36 = zext i8 %35 to i32, !dbg !1197
  %37 = or i32 %29, %36, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %37, metadata !1199, metadata !DIExpression()), !dbg !1163
  %38 = trunc i32 %37 to i8, !dbg !1200
  %39 = mul i64 %.0, 2, !dbg !1201
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !1202
  store i8 %38, i8* %40, align 1, !dbg !1203
  %41 = lshr i32 %37, 8, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %41, metadata !1199, metadata !DIExpression()), !dbg !1163
  %42 = trunc i32 %41 to i8, !dbg !1205
  %43 = mul i64 %.0, 2, !dbg !1206
  %44 = add i64 %43, 1, !dbg !1207
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !1208
  store i8 %42, i8* %45, align 1, !dbg !1209
  %46 = add i64 %.0, 1, !dbg !1210
  call void @llvm.dbg.value(metadata i64 %46, metadata !1167, metadata !DIExpression()), !dbg !1163
  br label %11, !dbg !1176, !llvm.loop !1211

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !1213
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !1214
  store i8 0, i8* %49, align 1, !dbg !1215
  ret i8* %0, !dbg !1216
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !1217 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1224, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %1, metadata !1226, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %2, metadata !1227, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %3, metadata !1228, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %4, metadata !1229, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64* %5, metadata !1230, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8** %6, metadata !1231, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 0, metadata !1232, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 0, metadata !1233, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i32 0, metadata !1234, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 0, metadata !1235, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 0, metadata !1236, metadata !DIExpression()), !dbg !1225
  br label %8, !dbg !1237

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !1238
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !1225
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !1225
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !1225
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1236, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1235, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1233, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1232, metadata !DIExpression()), !dbg !1225
  %9 = icmp ult i64 %.03, %3, !dbg !1239
  br i1 %9, label %10, label %78, !dbg !1237

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !1240
  %12 = load i8, i8* %11, align 1, !dbg !1240
  call void @llvm.dbg.value(metadata i8 %12, metadata !1242, metadata !DIExpression()), !dbg !1225
  %13 = zext i8 %12 to i32, !dbg !1243
  %14 = xor i32 %13, 48, !dbg !1244
  %15 = trunc i32 %14 to i8, !dbg !1243
  call void @llvm.dbg.value(metadata i8 %15, metadata !1245, metadata !DIExpression()), !dbg !1225
  %16 = zext i8 %15 to i32, !dbg !1246
  %17 = sub i32 %16, 10, !dbg !1247
  %18 = lshr i32 %17, 8, !dbg !1248
  %19 = trunc i32 %18 to i8, !dbg !1249
  call void @llvm.dbg.value(metadata i8 %19, metadata !1250, metadata !DIExpression()), !dbg !1225
  %20 = zext i8 %12 to i32, !dbg !1251
  %21 = and i32 %20, -33, !dbg !1252
  %22 = sub i32 %21, 55, !dbg !1253
  %23 = trunc i32 %22 to i8, !dbg !1254
  call void @llvm.dbg.value(metadata i8 %23, metadata !1255, metadata !DIExpression()), !dbg !1225
  %24 = zext i8 %23 to i32, !dbg !1256
  %25 = sub i32 %24, 10, !dbg !1257
  %26 = zext i8 %23 to i32, !dbg !1258
  %27 = sub i32 %26, 16, !dbg !1259
  %28 = xor i32 %25, %27, !dbg !1260
  %29 = lshr i32 %28, 8, !dbg !1261
  %30 = trunc i32 %29 to i8, !dbg !1262
  call void @llvm.dbg.value(metadata i8 %30, metadata !1263, metadata !DIExpression()), !dbg !1225
  %31 = zext i8 %19 to i32, !dbg !1264
  %32 = zext i8 %30 to i32, !dbg !1266
  %33 = or i32 %31, %32, !dbg !1267
  %34 = icmp eq i32 %33, 0, !dbg !1268
  br i1 %34, label %35, label %47, !dbg !1269

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !1270
  br i1 %36, label %37, label %46, !dbg !1273

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !1274
  %39 = icmp eq i32 %38, 0, !dbg !1275
  br i1 %39, label %40, label %46, !dbg !1276

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !1277
  %42 = call i8* @strchr(i8* %4, i32 %41) #12, !dbg !1278
  %43 = icmp ne i8* %42, null, !dbg !1279
  br i1 %43, label %44, label %46, !dbg !1280

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %45, metadata !1233, metadata !DIExpression()), !dbg !1225
  br label %8, !dbg !1283, !llvm.loop !1284

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !1286

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !1287
  %49 = zext i8 %15 to i32, !dbg !1288
  %50 = and i32 %48, %49, !dbg !1289
  %51 = zext i8 %30 to i32, !dbg !1290
  %52 = zext i8 %23 to i32, !dbg !1291
  %53 = and i32 %51, %52, !dbg !1292
  %54 = or i32 %50, %53, !dbg !1293
  %55 = trunc i32 %54 to i8, !dbg !1294
  call void @llvm.dbg.value(metadata i8 %55, metadata !1295, metadata !DIExpression()), !dbg !1225
  %56 = icmp uge i64 %.05, %1, !dbg !1296
  br i1 %56, label %57, label %59, !dbg !1298

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !1234, metadata !DIExpression()), !dbg !1225
  %58 = call i32* @__errno_location() #10, !dbg !1299
  store i32 34, i32* %58, align 4, !dbg !1301
  br label %78, !dbg !1302

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !1303
  %61 = icmp eq i32 %60, 0, !dbg !1305
  br i1 %61, label %62, label %66, !dbg !1306

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !1307
  %64 = mul i32 %63, 16, !dbg !1309
  %65 = trunc i32 %64 to i8, !dbg !1307
  call void @llvm.dbg.value(metadata i8 %65, metadata !1235, metadata !DIExpression()), !dbg !1225
  br label %73, !dbg !1310

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !1311
  %68 = zext i8 %55 to i32, !dbg !1313
  %69 = or i32 %67, %68, !dbg !1314
  %70 = trunc i32 %69 to i8, !dbg !1311
  %71 = add i64 %.05, 1, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %71, metadata !1232, metadata !DIExpression()), !dbg !1225
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !1316
  store i8 %70, i8* %72, align 1, !dbg !1317
  br label %73

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !1225
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !1225
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1235, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %.16, metadata !1232, metadata !DIExpression()), !dbg !1225
  %74 = zext i8 %.0 to i32, !dbg !1318
  %75 = xor i32 %74, -1, !dbg !1319
  %76 = trunc i32 %75 to i8, !dbg !1319
  call void @llvm.dbg.value(metadata i8 %76, metadata !1236, metadata !DIExpression()), !dbg !1225
  %77 = add i64 %.03, 1, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %77, metadata !1233, metadata !DIExpression()), !dbg !1225
  br label %8, !dbg !1237, !llvm.loop !1284

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !1225
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1234, metadata !DIExpression()), !dbg !1225
  %79 = zext i8 %.0 to i32, !dbg !1321
  %80 = icmp ne i32 %79, 0, !dbg !1323
  br i1 %80, label %81, label %83, !dbg !1324

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %82, metadata !1233, metadata !DIExpression()), !dbg !1225
  br label %83, !dbg !1327

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !1225
  call void @llvm.dbg.value(metadata i64 %.14, metadata !1233, metadata !DIExpression()), !dbg !1225
  %84 = icmp ne i8** %6, null, !dbg !1328
  br i1 %84, label %85, label %87, !dbg !1330

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !1331
  store i8* %86, i8** %6, align 8, !dbg !1333
  br label %87, !dbg !1334

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !1335
  br i1 %88, label %89, label %90, !dbg !1337

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !1338
  br label %90, !dbg !1340

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !1341
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !1342 {
  call void @randombytes_buf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @canary, i64 0, i64 0), i64 16), !dbg !1343
  ret i32 0, !dbg !1344
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !1345 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1346, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %1, metadata !1348, metadata !DIExpression()), !dbg !1347
  %3 = call i32* @__errno_location() #10, !dbg !1349
  store i32 38, i32* %3, align 4, !dbg !1350
  ret i32 -1, !dbg !1351
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !1352 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1353, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i64 %1, metadata !1355, metadata !DIExpression()), !dbg !1354
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !1356
  %3 = call i32* @__errno_location() #10, !dbg !1357
  store i32 38, i32* %3, align 4, !dbg !1358
  ret i32 -1, !dbg !1359
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !1360 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1363, metadata !DIExpression()), !dbg !1364
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %2, metadata !1367, metadata !DIExpression()), !dbg !1364
  %3 = icmp eq i8* %2, null, !dbg !1368
  br i1 %3, label %4, label %5, !dbg !1369

4:                                                ; preds = %1
  br label %6, !dbg !1370

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !1372
  br label %6, !dbg !1373

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !1364
  ret i8* %.0, !dbg !1374
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !1375 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1376, metadata !DIExpression()), !dbg !1377
  %2 = call noalias i8* @malloc(i64 %0) #11, !dbg !1378
  ret i8* %2, !dbg !1379
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #7

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !1380 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1383, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %1, metadata !1385, metadata !DIExpression()), !dbg !1384
  %3 = icmp ugt i64 %0, 0, !dbg !1386
  br i1 %3, label %4, label %9, !dbg !1388

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !1389
  %6 = icmp uge i64 %1, %5, !dbg !1390
  br i1 %6, label %7, label %9, !dbg !1391

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #10, !dbg !1392
  store i32 12, i32* %8, align 4, !dbg !1394
  br label %12, !dbg !1395

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %10, metadata !1397, metadata !DIExpression()), !dbg !1384
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !1398
  br label %12, !dbg !1399

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !1384
  ret i8* %.0, !dbg !1400
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !1401 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1404, metadata !DIExpression()), !dbg !1405
  call void @free(i8* %0) #11, !dbg !1406
  ret void, !dbg !1407
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !1408 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1411, metadata !DIExpression()), !dbg !1412
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !1413
  ret i32 %2, !dbg !1414
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !1415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1418, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i64 %1, metadata !1420, metadata !DIExpression()), !dbg !1419
  %3 = call i32* @__errno_location() #10, !dbg !1421
  store i32 38, i32* %3, align 4, !dbg !1422
  ret i32 -1, !dbg !1423
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !1424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1428, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !1430, metadata !DIExpression()), !dbg !1429
  %3 = call i32* @__errno_location() #10, !dbg !1431
  store i32 38, i32* %3, align 4, !dbg !1432
  ret i32 -1, !dbg !1433
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !1434 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1435, metadata !DIExpression()), !dbg !1436
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !1437
  ret i32 %2, !dbg !1438
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !1439 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1440, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %1, metadata !1442, metadata !DIExpression()), !dbg !1441
  %3 = call i32* @__errno_location() #10, !dbg !1443
  store i32 38, i32* %3, align 4, !dbg !1444
  ret i32 -1, !dbg !1445
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !1446 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1447, metadata !DIExpression()), !dbg !1448
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !1449
  ret i32 %2, !dbg !1450
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !1451 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1452, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 %1, metadata !1454, metadata !DIExpression()), !dbg !1453
  %3 = call i32* @__errno_location() #10, !dbg !1455
  store i32 38, i32* %3, align 4, !dbg !1456
  ret i32 -1, !dbg !1457
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!115, !2, !117, !25, !71, !104}
!llvm.ident = !{!120, !120, !120, !120, !120, !120}
!llvm.module.flags = !{!121, !122, !123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "PAD", scope: !2, file: !3, line: 196, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../libsodium/src/libsodium/crypto_hash/sha256/cp/hash_sha256.c", directory: "/home/luwei/bech-back/libsodium/Auth")
!4 = !{}
!5 = !{!6, !11, !12, !17, !18}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!19 = !{!0}
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 64)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "implementation", scope: !25, file: !26, line: 16, type: !32, isLocal: true, isDefinition: true)
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !31, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/randombytes.c", directory: "/home/luwei/bech-back/libsodium/Auth")
!27 = !{!11, !6, !28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !{!23}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "randombytes_implementation", file: !35, line: 26, baseType: !36)
!35 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/randombytes.h", directory: "/home/luwei/bech-back/libsodium/Auth")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !35, line: 19, size: 384, elements: !37)
!37 = !{!38, !45, !49, !53, !58, !64}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !36, file: !35, line: 20, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !36, file: !35, line: 21, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!6}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !36, file: !35, line: 22, baseType: !50, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !36, file: !35, line: 23, baseType: !54, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!6, !57}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !36, file: !35, line: 24, baseType: !59, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !63}
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !36, file: !35, line: 25, baseType: !65, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68}
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "randombytes_sysrandom_implementation", scope: !71, file: !72, line: 297, type: !94, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !73, globals: !79, splitDebugInlining: false, nameTableKind: None)
!72 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/Auth")
!73 = !{!74, !11, !78, !28, !68}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !75, line: 108, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !9, line: 193, baseType: !77)
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!79 = !{!69, !80, !88}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "stream", scope: !71, file: !72, line: 69, type: !82, isLocal: true, isDefinition: true)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysRandom", file: !72, line: 67, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SysRandom_", file: !72, line: 63, size: 96, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "random_data_source_fd", scope: !83, file: !72, line: 64, baseType: !68, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !83, file: !72, line: 65, baseType: !68, size: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "getrandom_available", scope: !83, file: !72, line: 66, baseType: !68, size: 32, offset: 64)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "devices", scope: !90, file: !72, line: 106, type: !91, isLocal: true, isDefinition: true)
!90 = distinct !DISubprogram(name: "randombytes_sysrandom_random_dev_open", scope: !72, file: !72, line: 102, type: !66, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 192, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 3)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !35, line: 19, size: 384, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !94, file: !35, line: 20, baseType: !39, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !94, file: !35, line: 21, baseType: !46, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !94, file: !35, line: 22, baseType: !50, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !94, file: !35, line: 23, baseType: !54, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !94, file: !35, line: 24, baseType: !59, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !94, file: !35, line: 25, baseType: !65, size: 64, offset: 320)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "canary", scope: !104, file: !105, line: 46, type: !112, isLocal: true, isDefinition: true)
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !106, globals: !111, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/Auth")
!106 = !{!107, !28, !109, !16, !68, !44, !11}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!111 = !{!102}
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 16)
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !116, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!116 = !DIFile(filename: "crypto_auth_hmacsha256.c", directory: "/home/luwei/bech-back/libsodium/Auth")
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !119, splitDebugInlining: false, nameTableKind: None)
!118 = !DIFile(filename: "../libsodium/src/libsodium/crypto_auth/hmacsha256/cp/hmac_hmacsha256.c", directory: "/home/luwei/bech-back/libsodium/Auth")
!119 = !{!11}
!120 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!121 = !{i32 7, !"Dwarf Version", i32 4}
!122 = !{i32 2, !"Debug Info Version", i32 3}
!123 = !{i32 1, !"wchar_size", i32 4}
!124 = distinct !DISubprogram(name: "crypto_auth_hmacsha256_wrapper", scope: !116, file: !116, line: 5, type: !125, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !4)
!125 = !DISubroutineType(types: !126)
!126 = !{!68, !78, !109, !17, !109}
!127 = !DILocalVariable(name: "out", arg: 1, scope: !124, file: !116, line: 5, type: !78)
!128 = !DILocation(line: 0, scope: !124)
!129 = !DILocalVariable(name: "in", arg: 2, scope: !124, file: !116, line: 5, type: !109)
!130 = !DILocalVariable(name: "inlen", arg: 3, scope: !124, file: !116, line: 6, type: !17)
!131 = !DILocalVariable(name: "k", arg: 4, scope: !124, file: !116, line: 6, type: !109)
!132 = !DILocation(line: 9, column: 13, scope: !124)
!133 = !DILocation(line: 9, column: 3, scope: !124)
!134 = !DILocation(line: 10, column: 13, scope: !124)
!135 = !DILocation(line: 10, column: 3, scope: !124)
!136 = !DILocation(line: 11, column: 13, scope: !124)
!137 = !DILocation(line: 11, column: 3, scope: !124)
!138 = !DILocation(line: 14, column: 13, scope: !124)
!139 = !DILocation(line: 14, column: 3, scope: !124)
!140 = !DILocation(line: 16, column: 10, scope: !124)
!141 = !DILocation(line: 16, column: 3, scope: !124)
!142 = distinct !DISubprogram(name: "crypto_auth_hmacsha256_wrapper_t", scope: !116, file: !116, line: 25, type: !51, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !4)
!143 = !DILocalVariable(name: "dout", scope: !142, file: !116, line: 27, type: !16)
!144 = !DILocation(line: 27, column: 17, scope: !142)
!145 = !DILocation(line: 27, column: 24, scope: !142)
!146 = !DILocalVariable(name: "din", scope: !142, file: !116, line: 28, type: !110)
!147 = !DILocation(line: 28, column: 24, scope: !142)
!148 = !DILocation(line: 28, column: 30, scope: !142)
!149 = !DILocalVariable(name: "dk", scope: !142, file: !116, line: 29, type: !110)
!150 = !DILocation(line: 29, column: 21, scope: !142)
!151 = !DILocation(line: 29, column: 26, scope: !142)
!152 = !DILocation(line: 30, column: 27, scope: !142)
!153 = !DILocalVariable(name: "dc", scope: !142, file: !116, line: 30, type: !110)
!154 = !DILocation(line: 0, scope: !142)
!155 = !DILocalVariable(name: "out", scope: !142, file: !116, line: 31, type: !78)
!156 = !DILocalVariable(name: "in", scope: !142, file: !116, line: 32, type: !109)
!157 = !DILocalVariable(name: "k", scope: !142, file: !116, line: 33, type: !109)
!158 = !DILocation(line: 34, column: 28, scope: !142)
!159 = !DILocalVariable(name: "inlen", scope: !142, file: !116, line: 34, type: !17)
!160 = !DILocation(line: 35, column: 3, scope: !142)
!161 = !DILocation(line: 36, column: 1, scope: !142)
!162 = distinct !DISubprogram(name: "crypto_hash_sha256_init", scope: !3, file: !3, line: 219, type: !163, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!163 = !DISubroutineType(types: !164)
!164 = !{!68, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_hash_sha256_state", file: !167, line: 28, baseType: !168)
!167 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/crypto_hash_sha256.h", directory: "/home/luwei/bech-back/libsodium/Auth")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_hash_sha256_state", file: !167, line: 24, size: 832, elements: !169)
!169 = !{!170, !174, !178}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !168, file: !167, line: 25, baseType: !171, size: 256)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !168, file: !167, line: 26, baseType: !175, size: 64, offset: 256)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 2)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !168, file: !167, line: 27, baseType: !20, size: 512, offset: 320)
!179 = !DILocalVariable(name: "state", arg: 1, scope: !162, file: !3, line: 219, type: !165)
!180 = !DILocation(line: 0, scope: !162)
!181 = !DILocation(line: 221, column: 30, scope: !162)
!182 = !DILocation(line: 221, column: 23, scope: !162)
!183 = !DILocation(line: 221, column: 39, scope: !162)
!184 = !DILocation(line: 221, column: 12, scope: !162)
!185 = !DILocation(line: 221, column: 5, scope: !162)
!186 = !DILocation(line: 221, column: 21, scope: !162)
!187 = !DILocation(line: 223, column: 12, scope: !162)
!188 = !DILocation(line: 223, column: 5, scope: !162)
!189 = !DILocation(line: 223, column: 21, scope: !162)
!190 = !DILocation(line: 224, column: 12, scope: !162)
!191 = !DILocation(line: 224, column: 5, scope: !162)
!192 = !DILocation(line: 224, column: 21, scope: !162)
!193 = !DILocation(line: 225, column: 12, scope: !162)
!194 = !DILocation(line: 225, column: 5, scope: !162)
!195 = !DILocation(line: 225, column: 21, scope: !162)
!196 = !DILocation(line: 226, column: 12, scope: !162)
!197 = !DILocation(line: 226, column: 5, scope: !162)
!198 = !DILocation(line: 226, column: 21, scope: !162)
!199 = !DILocation(line: 227, column: 12, scope: !162)
!200 = !DILocation(line: 227, column: 5, scope: !162)
!201 = !DILocation(line: 227, column: 21, scope: !162)
!202 = !DILocation(line: 228, column: 12, scope: !162)
!203 = !DILocation(line: 228, column: 5, scope: !162)
!204 = !DILocation(line: 228, column: 21, scope: !162)
!205 = !DILocation(line: 229, column: 12, scope: !162)
!206 = !DILocation(line: 229, column: 5, scope: !162)
!207 = !DILocation(line: 229, column: 21, scope: !162)
!208 = !DILocation(line: 230, column: 12, scope: !162)
!209 = !DILocation(line: 230, column: 5, scope: !162)
!210 = !DILocation(line: 230, column: 21, scope: !162)
!211 = !DILocation(line: 232, column: 5, scope: !162)
!212 = distinct !DISubprogram(name: "crypto_hash_sha256_update", scope: !3, file: !3, line: 236, type: !213, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!213 = !DISubroutineType(types: !214)
!214 = !{!68, !165, !109, !17}
!215 = !DILocalVariable(name: "state", arg: 1, scope: !212, file: !3, line: 236, type: !165)
!216 = !DILocation(line: 0, scope: !212)
!217 = !DILocalVariable(name: "in", arg: 2, scope: !212, file: !3, line: 237, type: !109)
!218 = !DILocalVariable(name: "inlen", arg: 3, scope: !212, file: !3, line: 238, type: !17)
!219 = !DILocalVariable(name: "bitlen", scope: !212, file: !3, line: 240, type: !175)
!220 = !DILocation(line: 240, column: 14, scope: !212)
!221 = !DILocation(line: 243, column: 17, scope: !212)
!222 = !DILocation(line: 243, column: 10, scope: !212)
!223 = !DILocation(line: 243, column: 26, scope: !212)
!224 = !DILocation(line: 243, column: 32, scope: !212)
!225 = !DILocalVariable(name: "r", scope: !212, file: !3, line: 241, type: !6)
!226 = !DILocation(line: 245, column: 18, scope: !212)
!227 = !DILocation(line: 245, column: 35, scope: !212)
!228 = !DILocation(line: 245, column: 5, scope: !212)
!229 = !DILocation(line: 245, column: 15, scope: !212)
!230 = !DILocation(line: 246, column: 34, scope: !212)
!231 = !DILocation(line: 246, column: 17, scope: !212)
!232 = !DILocation(line: 246, column: 5, scope: !212)
!233 = !DILocation(line: 246, column: 15, scope: !212)
!234 = !DILocation(line: 249, column: 29, scope: !235)
!235 = distinct !DILexicalBlock(scope: !212, file: !3, line: 249, column: 9)
!236 = !DILocation(line: 249, column: 17, scope: !235)
!237 = !DILocation(line: 249, column: 10, scope: !235)
!238 = !DILocation(line: 249, column: 26, scope: !235)
!239 = !DILocation(line: 249, column: 42, scope: !235)
!240 = !DILocation(line: 249, column: 40, scope: !235)
!241 = !DILocation(line: 249, column: 9, scope: !212)
!242 = !DILocation(line: 250, column: 16, scope: !243)
!243 = distinct !DILexicalBlock(scope: !235, file: !3, line: 249, column: 53)
!244 = !DILocation(line: 250, column: 9, scope: !243)
!245 = !DILocation(line: 250, column: 24, scope: !243)
!246 = !DILocation(line: 251, column: 5, scope: !243)
!247 = !DILocation(line: 253, column: 24, scope: !212)
!248 = !DILocation(line: 253, column: 12, scope: !212)
!249 = !DILocation(line: 253, column: 5, scope: !212)
!250 = !DILocation(line: 253, column: 21, scope: !212)
!251 = !DILocation(line: 255, column: 20, scope: !252)
!252 = distinct !DILexicalBlock(scope: !212, file: !3, line: 255, column: 9)
!253 = !DILocation(line: 255, column: 17, scope: !252)
!254 = !DILocation(line: 255, column: 15, scope: !252)
!255 = !DILocation(line: 255, column: 9, scope: !212)
!256 = !DILocation(line: 256, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !3, line: 255, column: 25)
!258 = !DILocation(line: 256, column: 17, scope: !257)
!259 = !DILocation(line: 256, column: 9, scope: !257)
!260 = !DILocation(line: 257, column: 9, scope: !257)
!261 = !DILocation(line: 259, column: 20, scope: !212)
!262 = !DILocation(line: 259, column: 13, scope: !212)
!263 = !DILocation(line: 259, column: 35, scope: !212)
!264 = !DILocation(line: 259, column: 32, scope: !212)
!265 = !DILocation(line: 259, column: 5, scope: !212)
!266 = !DILocation(line: 260, column: 29, scope: !212)
!267 = !DILocation(line: 260, column: 22, scope: !212)
!268 = !DILocation(line: 260, column: 43, scope: !212)
!269 = !DILocation(line: 260, column: 36, scope: !212)
!270 = !DILocation(line: 260, column: 5, scope: !212)
!271 = !DILocation(line: 261, column: 14, scope: !212)
!272 = !DILocation(line: 261, column: 8, scope: !212)
!273 = !DILocation(line: 262, column: 17, scope: !212)
!274 = !DILocation(line: 262, column: 14, scope: !212)
!275 = !DILocation(line: 262, column: 11, scope: !212)
!276 = !DILocation(line: 264, column: 5, scope: !212)
!277 = !DILocation(line: 264, column: 18, scope: !212)
!278 = !DILocation(line: 265, column: 33, scope: !279)
!279 = distinct !DILexicalBlock(scope: !212, file: !3, line: 264, column: 25)
!280 = !DILocation(line: 265, column: 26, scope: !279)
!281 = !DILocation(line: 265, column: 9, scope: !279)
!282 = !DILocation(line: 266, column: 12, scope: !279)
!283 = !DILocation(line: 267, column: 15, scope: !279)
!284 = distinct !{!284, !276, !285, !286}
!285 = !DILocation(line: 268, column: 5, scope: !212)
!286 = !{!"llvm.loop.mustprogress"}
!287 = !DILocation(line: 269, column: 19, scope: !212)
!288 = !DILocation(line: 269, column: 5, scope: !212)
!289 = !DILocation(line: 271, column: 5, scope: !212)
!290 = !DILocation(line: 272, column: 1, scope: !212)
!291 = distinct !DISubprogram(name: "SHA256_Transform", scope: !3, file: !3, line: 107, type: !292, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294, !109}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!295 = !DILocalVariable(name: "state", arg: 1, scope: !291, file: !3, line: 107, type: !294)
!296 = !DILocation(line: 0, scope: !291)
!297 = !DILocalVariable(name: "block", arg: 2, scope: !291, file: !3, line: 107, type: !109)
!298 = !DILocalVariable(name: "W", scope: !291, file: !3, line: 109, type: !299)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !21)
!300 = !DILocation(line: 109, column: 14, scope: !291)
!301 = !DILocalVariable(name: "S", scope: !291, file: !3, line: 110, type: !171)
!302 = !DILocation(line: 110, column: 14, scope: !291)
!303 = !DILocalVariable(name: "t0", scope: !291, file: !3, line: 111, type: !6)
!304 = !DILocation(line: 111, column: 14, scope: !291)
!305 = !DILocalVariable(name: "t1", scope: !291, file: !3, line: 111, type: !6)
!306 = !DILocation(line: 111, column: 18, scope: !291)
!307 = !DILocation(line: 114, column: 18, scope: !291)
!308 = !DILocation(line: 114, column: 5, scope: !291)
!309 = !DILocalVariable(name: "i", scope: !291, file: !3, line: 112, type: !68)
!310 = !DILocation(line: 115, column: 10, scope: !311)
!311 = distinct !DILexicalBlock(scope: !291, file: !3, line: 115, column: 5)
!312 = !DILocation(line: 0, scope: !311)
!313 = !DILocation(line: 115, column: 20, scope: !314)
!314 = distinct !DILexicalBlock(scope: !311, file: !3, line: 115, column: 5)
!315 = !DILocation(line: 115, column: 5, scope: !311)
!316 = !DILocation(line: 116, column: 16, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !3, line: 115, column: 31)
!318 = !DILocation(line: 116, column: 35, scope: !317)
!319 = !DILocation(line: 116, column: 31, scope: !317)
!320 = !DILocation(line: 116, column: 29, scope: !317)
!321 = !DILocation(line: 116, column: 42, scope: !317)
!322 = !DILocation(line: 116, column: 40, scope: !317)
!323 = !DILocation(line: 116, column: 62, scope: !317)
!324 = !DILocation(line: 116, column: 58, scope: !317)
!325 = !DILocation(line: 116, column: 56, scope: !317)
!326 = !DILocation(line: 116, column: 9, scope: !317)
!327 = !DILocation(line: 116, column: 14, scope: !317)
!328 = !DILocation(line: 117, column: 5, scope: !317)
!329 = !DILocation(line: 115, column: 27, scope: !314)
!330 = !DILocation(line: 115, column: 5, scope: !314)
!331 = distinct !{!331, !315, !332, !286}
!332 = !DILocation(line: 117, column: 5, scope: !311)
!333 = !DILocation(line: 119, column: 5, scope: !291)
!334 = !DILocation(line: 121, column: 5, scope: !291)
!335 = !DILocation(line: 122, column: 5, scope: !291)
!336 = !DILocation(line: 123, column: 5, scope: !291)
!337 = !DILocation(line: 124, column: 5, scope: !291)
!338 = !DILocation(line: 125, column: 5, scope: !291)
!339 = !DILocation(line: 126, column: 5, scope: !291)
!340 = !DILocation(line: 127, column: 5, scope: !291)
!341 = !DILocation(line: 128, column: 5, scope: !291)
!342 = !DILocation(line: 129, column: 5, scope: !291)
!343 = !DILocation(line: 130, column: 5, scope: !291)
!344 = !DILocation(line: 131, column: 5, scope: !291)
!345 = !DILocation(line: 132, column: 5, scope: !291)
!346 = !DILocation(line: 133, column: 5, scope: !291)
!347 = !DILocation(line: 134, column: 5, scope: !291)
!348 = !DILocation(line: 135, column: 5, scope: !291)
!349 = !DILocation(line: 136, column: 5, scope: !291)
!350 = !DILocation(line: 137, column: 5, scope: !291)
!351 = !DILocation(line: 138, column: 5, scope: !291)
!352 = !DILocation(line: 139, column: 5, scope: !291)
!353 = !DILocation(line: 140, column: 5, scope: !291)
!354 = !DILocation(line: 141, column: 5, scope: !291)
!355 = !DILocation(line: 142, column: 5, scope: !291)
!356 = !DILocation(line: 143, column: 5, scope: !291)
!357 = !DILocation(line: 144, column: 5, scope: !291)
!358 = !DILocation(line: 145, column: 5, scope: !291)
!359 = !DILocation(line: 146, column: 5, scope: !291)
!360 = !DILocation(line: 147, column: 5, scope: !291)
!361 = !DILocation(line: 148, column: 5, scope: !291)
!362 = !DILocation(line: 149, column: 5, scope: !291)
!363 = !DILocation(line: 150, column: 5, scope: !291)
!364 = !DILocation(line: 151, column: 5, scope: !291)
!365 = !DILocation(line: 152, column: 5, scope: !291)
!366 = !DILocation(line: 153, column: 5, scope: !291)
!367 = !DILocation(line: 154, column: 5, scope: !291)
!368 = !DILocation(line: 155, column: 5, scope: !291)
!369 = !DILocation(line: 156, column: 5, scope: !291)
!370 = !DILocation(line: 157, column: 5, scope: !291)
!371 = !DILocation(line: 158, column: 5, scope: !291)
!372 = !DILocation(line: 159, column: 5, scope: !291)
!373 = !DILocation(line: 160, column: 5, scope: !291)
!374 = !DILocation(line: 161, column: 5, scope: !291)
!375 = !DILocation(line: 162, column: 5, scope: !291)
!376 = !DILocation(line: 163, column: 5, scope: !291)
!377 = !DILocation(line: 164, column: 5, scope: !291)
!378 = !DILocation(line: 165, column: 5, scope: !291)
!379 = !DILocation(line: 166, column: 5, scope: !291)
!380 = !DILocation(line: 167, column: 5, scope: !291)
!381 = !DILocation(line: 168, column: 5, scope: !291)
!382 = !DILocation(line: 169, column: 5, scope: !291)
!383 = !DILocation(line: 170, column: 5, scope: !291)
!384 = !DILocation(line: 171, column: 5, scope: !291)
!385 = !DILocation(line: 172, column: 5, scope: !291)
!386 = !DILocation(line: 173, column: 5, scope: !291)
!387 = !DILocation(line: 174, column: 5, scope: !291)
!388 = !DILocation(line: 175, column: 5, scope: !291)
!389 = !DILocation(line: 176, column: 5, scope: !291)
!390 = !DILocation(line: 177, column: 5, scope: !291)
!391 = !DILocation(line: 178, column: 5, scope: !291)
!392 = !DILocation(line: 179, column: 5, scope: !291)
!393 = !DILocation(line: 180, column: 5, scope: !291)
!394 = !DILocation(line: 181, column: 5, scope: !291)
!395 = !DILocation(line: 182, column: 5, scope: !291)
!396 = !DILocation(line: 183, column: 5, scope: !291)
!397 = !DILocation(line: 184, column: 5, scope: !291)
!398 = !DILocation(line: 186, column: 10, scope: !399)
!399 = distinct !DILexicalBlock(scope: !291, file: !3, line: 186, column: 5)
!400 = !DILocation(line: 0, scope: !399)
!401 = !DILocation(line: 186, column: 19, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !3, line: 186, column: 5)
!403 = !DILocation(line: 186, column: 5, scope: !399)
!404 = !DILocation(line: 187, column: 21, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 186, column: 29)
!406 = !DILocation(line: 187, column: 9, scope: !405)
!407 = !DILocation(line: 187, column: 18, scope: !405)
!408 = !DILocation(line: 188, column: 5, scope: !405)
!409 = !DILocation(line: 186, column: 25, scope: !402)
!410 = !DILocation(line: 186, column: 5, scope: !402)
!411 = distinct !{!411, !403, !412, !286}
!412 = !DILocation(line: 188, column: 5, scope: !399)
!413 = !DILocation(line: 190, column: 29, scope: !291)
!414 = !DILocation(line: 190, column: 20, scope: !291)
!415 = !DILocation(line: 190, column: 5, scope: !291)
!416 = !DILocation(line: 191, column: 29, scope: !291)
!417 = !DILocation(line: 191, column: 20, scope: !291)
!418 = !DILocation(line: 191, column: 5, scope: !291)
!419 = !DILocation(line: 192, column: 20, scope: !291)
!420 = !DILocation(line: 192, column: 5, scope: !291)
!421 = !DILocation(line: 193, column: 20, scope: !291)
!422 = !DILocation(line: 193, column: 5, scope: !291)
!423 = !DILocation(line: 194, column: 1, scope: !291)
!424 = distinct !DISubprogram(name: "be32dec_vect", scope: !3, file: !3, line: 75, type: !425, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !294, !109, !28}
!427 = !DILocalVariable(name: "dst", arg: 1, scope: !424, file: !3, line: 75, type: !294)
!428 = !DILocation(line: 0, scope: !424)
!429 = !DILocalVariable(name: "src", arg: 2, scope: !424, file: !3, line: 75, type: !109)
!430 = !DILocalVariable(name: "len", arg: 3, scope: !424, file: !3, line: 75, type: !28)
!431 = !DILocalVariable(name: "i", scope: !424, file: !3, line: 77, type: !28)
!432 = !DILocation(line: 79, column: 10, scope: !433)
!433 = distinct !DILexicalBlock(scope: !424, file: !3, line: 79, column: 5)
!434 = !DILocation(line: 0, scope: !433)
!435 = !DILocation(line: 79, column: 25, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !3, line: 79, column: 5)
!437 = !DILocation(line: 79, column: 19, scope: !436)
!438 = !DILocation(line: 79, column: 5, scope: !433)
!439 = !DILocation(line: 80, column: 34, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !3, line: 79, column: 35)
!441 = !DILocation(line: 80, column: 30, scope: !440)
!442 = !DILocation(line: 80, column: 18, scope: !440)
!443 = !DILocation(line: 80, column: 9, scope: !440)
!444 = !DILocation(line: 80, column: 16, scope: !440)
!445 = !DILocation(line: 81, column: 5, scope: !440)
!446 = !DILocation(line: 79, column: 31, scope: !436)
!447 = !DILocation(line: 79, column: 5, scope: !436)
!448 = distinct !{!448, !438, !449, !286}
!449 = !DILocation(line: 81, column: 5, scope: !433)
!450 = !DILocation(line: 82, column: 1, scope: !424)
!451 = distinct !DISubprogram(name: "_sha256_be32dec", scope: !3, file: !3, line: 45, type: !452, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!452 = !DISubroutineType(types: !453)
!453 = !{!6, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!456 = !DILocalVariable(name: "pp", arg: 1, scope: !451, file: !3, line: 45, type: !454)
!457 = !DILocation(line: 0, scope: !451)
!458 = !DILocalVariable(name: "p", scope: !451, file: !3, line: 47, type: !12)
!459 = !DILocation(line: 49, column: 24, scope: !451)
!460 = !DILocation(line: 49, column: 13, scope: !451)
!461 = !DILocation(line: 49, column: 44, scope: !451)
!462 = !DILocation(line: 49, column: 33, scope: !451)
!463 = !DILocation(line: 49, column: 50, scope: !451)
!464 = !DILocation(line: 49, column: 30, scope: !451)
!465 = !DILocation(line: 50, column: 25, scope: !451)
!466 = !DILocation(line: 50, column: 14, scope: !451)
!467 = !DILocation(line: 50, column: 31, scope: !451)
!468 = !DILocation(line: 49, column: 56, scope: !451)
!469 = !DILocation(line: 50, column: 52, scope: !451)
!470 = !DILocation(line: 50, column: 41, scope: !451)
!471 = !DILocation(line: 50, column: 58, scope: !451)
!472 = !DILocation(line: 50, column: 38, scope: !451)
!473 = !DILocation(line: 49, column: 5, scope: !451)
!474 = distinct !DISubprogram(name: "crypto_hash_sha256_final", scope: !3, file: !3, line: 275, type: !475, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!475 = !DISubroutineType(types: !476)
!476 = !{!68, !165, !78}
!477 = !DILocalVariable(name: "state", arg: 1, scope: !474, file: !3, line: 275, type: !165)
!478 = !DILocation(line: 0, scope: !474)
!479 = !DILocalVariable(name: "out", arg: 2, scope: !474, file: !3, line: 276, type: !78)
!480 = !DILocation(line: 278, column: 5, scope: !474)
!481 = !DILocation(line: 279, column: 30, scope: !474)
!482 = !DILocation(line: 279, column: 23, scope: !474)
!483 = !DILocation(line: 279, column: 5, scope: !474)
!484 = !DILocation(line: 280, column: 20, scope: !474)
!485 = !DILocation(line: 280, column: 5, scope: !474)
!486 = !DILocation(line: 282, column: 5, scope: !474)
!487 = distinct !DISubprogram(name: "SHA256_Pad", scope: !3, file: !3, line: 204, type: !488, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !165}
!490 = !DILocalVariable(name: "state", arg: 1, scope: !487, file: !3, line: 204, type: !165)
!491 = !DILocation(line: 0, scope: !487)
!492 = !DILocalVariable(name: "len", scope: !487, file: !3, line: 206, type: !493)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !172)
!494 = !DILocation(line: 206, column: 19, scope: !487)
!495 = !DILocation(line: 209, column: 18, scope: !487)
!496 = !DILocation(line: 209, column: 30, scope: !487)
!497 = !DILocation(line: 209, column: 23, scope: !487)
!498 = !DILocation(line: 209, column: 5, scope: !487)
!499 = !DILocation(line: 211, column: 17, scope: !487)
!500 = !DILocation(line: 211, column: 10, scope: !487)
!501 = !DILocation(line: 211, column: 26, scope: !487)
!502 = !DILocation(line: 211, column: 32, scope: !487)
!503 = !DILocalVariable(name: "r", scope: !487, file: !3, line: 207, type: !6)
!504 = !DILocation(line: 212, column: 15, scope: !487)
!505 = !DILocation(line: 212, column: 12, scope: !487)
!506 = !DILocation(line: 212, column: 27, scope: !487)
!507 = !DILocation(line: 212, column: 39, scope: !487)
!508 = !DILocalVariable(name: "plen", scope: !487, file: !3, line: 207, type: !6)
!509 = !DILocation(line: 213, column: 43, scope: !487)
!510 = !DILocation(line: 213, column: 5, scope: !487)
!511 = !DILocation(line: 215, column: 38, scope: !487)
!512 = !DILocation(line: 215, column: 5, scope: !487)
!513 = !DILocation(line: 216, column: 1, scope: !487)
!514 = distinct !DISubprogram(name: "be32enc_vect", scope: !3, file: !3, line: 65, type: !515, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !78, !517, !28}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!518 = !DILocalVariable(name: "dst", arg: 1, scope: !514, file: !3, line: 65, type: !78)
!519 = !DILocation(line: 0, scope: !514)
!520 = !DILocalVariable(name: "src", arg: 2, scope: !514, file: !3, line: 65, type: !517)
!521 = !DILocalVariable(name: "len", arg: 3, scope: !514, file: !3, line: 65, type: !28)
!522 = !DILocalVariable(name: "i", scope: !514, file: !3, line: 67, type: !28)
!523 = !DILocation(line: 69, column: 10, scope: !524)
!524 = distinct !DILexicalBlock(scope: !514, file: !3, line: 69, column: 5)
!525 = !DILocation(line: 0, scope: !524)
!526 = !DILocation(line: 69, column: 25, scope: !527)
!527 = distinct !DILexicalBlock(scope: !524, file: !3, line: 69, column: 5)
!528 = !DILocation(line: 69, column: 19, scope: !527)
!529 = !DILocation(line: 69, column: 5, scope: !524)
!530 = !DILocation(line: 70, column: 25, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !3, line: 69, column: 35)
!532 = !DILocation(line: 70, column: 21, scope: !531)
!533 = !DILocation(line: 70, column: 30, scope: !531)
!534 = !DILocation(line: 70, column: 9, scope: !531)
!535 = !DILocation(line: 71, column: 5, scope: !531)
!536 = !DILocation(line: 69, column: 31, scope: !527)
!537 = !DILocation(line: 69, column: 5, scope: !527)
!538 = distinct !{!538, !529, !539, !286}
!539 = !DILocation(line: 71, column: 5, scope: !524)
!540 = !DILocation(line: 72, column: 1, scope: !514)
!541 = distinct !DISubprogram(name: "_sha256_be32enc", scope: !3, file: !3, line: 54, type: !542, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !11, !6}
!544 = !DILocalVariable(name: "pp", arg: 1, scope: !541, file: !3, line: 54, type: !11)
!545 = !DILocation(line: 0, scope: !541)
!546 = !DILocalVariable(name: "x", arg: 2, scope: !541, file: !3, line: 54, type: !6)
!547 = !DILocalVariable(name: "p", scope: !541, file: !3, line: 56, type: !18)
!548 = !DILocation(line: 58, column: 14, scope: !541)
!549 = !DILocation(line: 58, column: 12, scope: !541)
!550 = !DILocation(line: 58, column: 5, scope: !541)
!551 = !DILocation(line: 58, column: 10, scope: !541)
!552 = !DILocation(line: 59, column: 15, scope: !541)
!553 = !DILocation(line: 59, column: 21, scope: !541)
!554 = !DILocation(line: 59, column: 12, scope: !541)
!555 = !DILocation(line: 59, column: 5, scope: !541)
!556 = !DILocation(line: 59, column: 10, scope: !541)
!557 = !DILocation(line: 60, column: 15, scope: !541)
!558 = !DILocation(line: 60, column: 22, scope: !541)
!559 = !DILocation(line: 60, column: 12, scope: !541)
!560 = !DILocation(line: 60, column: 5, scope: !541)
!561 = !DILocation(line: 60, column: 10, scope: !541)
!562 = !DILocation(line: 61, column: 15, scope: !541)
!563 = !DILocation(line: 61, column: 22, scope: !541)
!564 = !DILocation(line: 61, column: 12, scope: !541)
!565 = !DILocation(line: 61, column: 5, scope: !541)
!566 = !DILocation(line: 61, column: 10, scope: !541)
!567 = !DILocation(line: 62, column: 1, scope: !541)
!568 = distinct !DISubprogram(name: "crypto_hash_sha256", scope: !3, file: !3, line: 286, type: !569, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!569 = !DISubroutineType(types: !570)
!570 = !{!68, !78, !109, !17}
!571 = !DILocalVariable(name: "out", arg: 1, scope: !568, file: !3, line: 286, type: !78)
!572 = !DILocation(line: 0, scope: !568)
!573 = !DILocalVariable(name: "in", arg: 2, scope: !568, file: !3, line: 286, type: !109)
!574 = !DILocalVariable(name: "inlen", arg: 3, scope: !568, file: !3, line: 287, type: !17)
!575 = !DILocalVariable(name: "state", scope: !568, file: !3, line: 289, type: !166)
!576 = !DILocation(line: 289, column: 30, scope: !568)
!577 = !DILocation(line: 291, column: 5, scope: !568)
!578 = !DILocation(line: 292, column: 5, scope: !568)
!579 = !DILocation(line: 293, column: 5, scope: !568)
!580 = !DILocation(line: 295, column: 5, scope: !568)
!581 = distinct !DISubprogram(name: "crypto_auth_hmacsha256_init", scope: !118, file: !118, line: 40, type: !582, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !117, retainedNodes: !4)
!582 = !DISubroutineType(types: !583)
!583 = !{!68, !584, !109, !28}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_auth_hmacsha256_state", file: !586, line: 40, baseType: !587)
!586 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/crypto_auth_hmacsha256.h", directory: "/home/luwei/bech-back/libsodium/Auth")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_auth_hmacsha256_state", file: !586, line: 37, size: 1664, elements: !588)
!588 = !{!589, !596}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ictx", scope: !587, file: !586, line: 38, baseType: !590, size: 832)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_hash_sha256_state", file: !167, line: 28, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_hash_sha256_state", file: !167, line: 24, size: 832, elements: !592)
!592 = !{!593, !594, !595}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !591, file: !167, line: 25, baseType: !171, size: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !591, file: !167, line: 26, baseType: !175, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !591, file: !167, line: 27, baseType: !20, size: 512, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "octx", scope: !587, file: !586, line: 39, baseType: !590, size: 832, offset: 832)
!597 = !DILocalVariable(name: "state", arg: 1, scope: !581, file: !118, line: 40, type: !584)
!598 = !DILocation(line: 0, scope: !581)
!599 = !DILocalVariable(name: "key", arg: 2, scope: !581, file: !118, line: 41, type: !109)
!600 = !DILocalVariable(name: "keylen", arg: 3, scope: !581, file: !118, line: 42, type: !28)
!601 = !DILocalVariable(name: "pad", scope: !581, file: !118, line: 44, type: !20)
!602 = !DILocation(line: 44, column: 19, scope: !581)
!603 = !DILocalVariable(name: "khash", scope: !581, file: !118, line: 45, type: !604)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 32)
!607 = !DILocation(line: 45, column: 19, scope: !581)
!608 = !DILocation(line: 48, column: 16, scope: !609)
!609 = distinct !DILexicalBlock(scope: !581, file: !118, line: 48, column: 9)
!610 = !DILocation(line: 48, column: 9, scope: !581)
!611 = !DILocation(line: 49, column: 41, scope: !612)
!612 = distinct !DILexicalBlock(scope: !609, file: !118, line: 48, column: 22)
!613 = !DILocation(line: 49, column: 9, scope: !612)
!614 = !DILocation(line: 50, column: 43, scope: !612)
!615 = !DILocation(line: 50, column: 9, scope: !612)
!616 = !DILocation(line: 51, column: 42, scope: !612)
!617 = !DILocation(line: 51, column: 48, scope: !612)
!618 = !DILocation(line: 51, column: 9, scope: !612)
!619 = !DILocation(line: 52, column: 15, scope: !612)
!620 = !DILocation(line: 54, column: 5, scope: !612)
!621 = !DILocation(line: 55, column: 37, scope: !581)
!622 = !DILocation(line: 55, column: 5, scope: !581)
!623 = !DILocation(line: 56, column: 5, scope: !581)
!624 = !DILocalVariable(name: "i", scope: !581, file: !118, line: 46, type: !28)
!625 = !DILocation(line: 57, column: 10, scope: !626)
!626 = distinct !DILexicalBlock(scope: !581, file: !118, line: 57, column: 5)
!627 = !DILocation(line: 0, scope: !626)
!628 = !DILocation(line: 57, column: 19, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !118, line: 57, column: 5)
!630 = !DILocation(line: 57, column: 5, scope: !626)
!631 = !DILocation(line: 58, column: 19, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !118, line: 57, column: 34)
!633 = !DILocation(line: 58, column: 9, scope: !632)
!634 = !DILocation(line: 58, column: 16, scope: !632)
!635 = !DILocation(line: 59, column: 5, scope: !632)
!636 = !DILocation(line: 57, column: 30, scope: !629)
!637 = !DILocation(line: 57, column: 5, scope: !629)
!638 = distinct !{!638, !630, !639, !286}
!639 = !DILocation(line: 59, column: 5, scope: !626)
!640 = !DILocation(line: 60, column: 39, scope: !581)
!641 = !DILocation(line: 60, column: 45, scope: !581)
!642 = !DILocation(line: 60, column: 5, scope: !581)
!643 = !DILocation(line: 62, column: 37, scope: !581)
!644 = !DILocation(line: 62, column: 5, scope: !581)
!645 = !DILocation(line: 63, column: 5, scope: !581)
!646 = !DILocation(line: 64, column: 10, scope: !647)
!647 = distinct !DILexicalBlock(scope: !581, file: !118, line: 64, column: 5)
!648 = !DILocation(line: 0, scope: !647)
!649 = !DILocation(line: 64, column: 19, scope: !650)
!650 = distinct !DILexicalBlock(scope: !647, file: !118, line: 64, column: 5)
!651 = !DILocation(line: 64, column: 5, scope: !647)
!652 = !DILocation(line: 65, column: 19, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !118, line: 64, column: 34)
!654 = !DILocation(line: 65, column: 9, scope: !653)
!655 = !DILocation(line: 65, column: 16, scope: !653)
!656 = !DILocation(line: 66, column: 5, scope: !653)
!657 = !DILocation(line: 64, column: 30, scope: !650)
!658 = !DILocation(line: 64, column: 5, scope: !650)
!659 = distinct !{!659, !651, !660, !286}
!660 = !DILocation(line: 66, column: 5, scope: !647)
!661 = !DILocation(line: 67, column: 39, scope: !581)
!662 = !DILocation(line: 67, column: 45, scope: !581)
!663 = !DILocation(line: 67, column: 5, scope: !581)
!664 = !DILocation(line: 69, column: 29, scope: !581)
!665 = !DILocation(line: 69, column: 5, scope: !581)
!666 = !DILocation(line: 71, column: 5, scope: !581)
!667 = distinct !DISubprogram(name: "crypto_auth_hmacsha256_update", scope: !118, file: !118, line: 75, type: !668, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !117, retainedNodes: !4)
!668 = !DISubroutineType(types: !669)
!669 = !{!68, !584, !109, !17}
!670 = !DILocalVariable(name: "state", arg: 1, scope: !667, file: !118, line: 75, type: !584)
!671 = !DILocation(line: 0, scope: !667)
!672 = !DILocalVariable(name: "in", arg: 2, scope: !667, file: !118, line: 76, type: !109)
!673 = !DILocalVariable(name: "inlen", arg: 3, scope: !667, file: !118, line: 77, type: !17)
!674 = !DILocation(line: 79, column: 39, scope: !667)
!675 = !DILocation(line: 79, column: 5, scope: !667)
!676 = !DILocation(line: 81, column: 5, scope: !667)
!677 = distinct !DISubprogram(name: "crypto_auth_hmacsha256_final", scope: !118, file: !118, line: 85, type: !678, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !117, retainedNodes: !4)
!678 = !DISubroutineType(types: !679)
!679 = !{!68, !584, !78}
!680 = !DILocalVariable(name: "state", arg: 1, scope: !677, file: !118, line: 85, type: !584)
!681 = !DILocation(line: 0, scope: !677)
!682 = !DILocalVariable(name: "out", arg: 2, scope: !677, file: !118, line: 86, type: !78)
!683 = !DILocalVariable(name: "ihash", scope: !677, file: !118, line: 88, type: !604)
!684 = !DILocation(line: 88, column: 19, scope: !677)
!685 = !DILocation(line: 90, column: 38, scope: !677)
!686 = !DILocation(line: 90, column: 44, scope: !677)
!687 = !DILocation(line: 90, column: 5, scope: !677)
!688 = !DILocation(line: 91, column: 39, scope: !677)
!689 = !DILocation(line: 91, column: 45, scope: !677)
!690 = !DILocation(line: 91, column: 5, scope: !677)
!691 = !DILocation(line: 92, column: 38, scope: !677)
!692 = !DILocation(line: 92, column: 5, scope: !677)
!693 = !DILocation(line: 94, column: 29, scope: !677)
!694 = !DILocation(line: 94, column: 5, scope: !677)
!695 = !DILocation(line: 96, column: 5, scope: !677)
!696 = distinct !DISubprogram(name: "crypto_auth_hmacsha256", scope: !118, file: !118, line: 100, type: !125, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !117, retainedNodes: !4)
!697 = !DILocalVariable(name: "out", arg: 1, scope: !696, file: !118, line: 100, type: !78)
!698 = !DILocation(line: 0, scope: !696)
!699 = !DILocalVariable(name: "in", arg: 2, scope: !696, file: !118, line: 100, type: !109)
!700 = !DILocalVariable(name: "inlen", arg: 3, scope: !696, file: !118, line: 101, type: !17)
!701 = !DILocalVariable(name: "k", arg: 4, scope: !696, file: !118, line: 101, type: !109)
!702 = !DILocalVariable(name: "state", scope: !696, file: !118, line: 103, type: !585)
!703 = !DILocation(line: 103, column: 34, scope: !696)
!704 = !DILocation(line: 105, column: 5, scope: !696)
!705 = !DILocation(line: 106, column: 5, scope: !696)
!706 = !DILocation(line: 107, column: 5, scope: !696)
!707 = !DILocation(line: 109, column: 5, scope: !696)
!708 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !26, file: !26, line: 23, type: !709, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!709 = !DISubroutineType(types: !710)
!710 = !{!68, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!712 = !DILocalVariable(name: "impl", arg: 1, scope: !708, file: !26, line: 23, type: !711)
!713 = !DILocation(line: 0, scope: !708)
!714 = !DILocation(line: 25, column: 20, scope: !708)
!715 = !DILocation(line: 27, column: 5, scope: !708)
!716 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !26, file: !26, line: 31, type: !40, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!717 = !DILocation(line: 34, column: 12, scope: !716)
!718 = !DILocation(line: 34, column: 28, scope: !716)
!719 = !DILocation(line: 34, column: 5, scope: !716)
!720 = distinct !DISubprogram(name: "randombytes_random", scope: !26, file: !26, line: 41, type: !47, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!721 = !DILocation(line: 44, column: 12, scope: !720)
!722 = !DILocation(line: 44, column: 28, scope: !720)
!723 = !DILocation(line: 44, column: 5, scope: !720)
!724 = distinct !DISubprogram(name: "randombytes_stir", scope: !26, file: !26, line: 53, type: !51, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!725 = !DILocation(line: 56, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !724, file: !26, line: 56, column: 9)
!727 = !DILocation(line: 56, column: 24, scope: !726)
!728 = !DILocation(line: 56, column: 32, scope: !726)
!729 = !DILocation(line: 56, column: 35, scope: !726)
!730 = !DILocation(line: 56, column: 51, scope: !726)
!731 = !DILocation(line: 56, column: 56, scope: !726)
!732 = !DILocation(line: 56, column: 9, scope: !724)
!733 = !DILocation(line: 57, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !726, file: !26, line: 56, column: 65)
!735 = !DILocation(line: 57, column: 25, scope: !734)
!736 = !DILocation(line: 58, column: 5, scope: !734)
!737 = !DILocation(line: 87, column: 1, scope: !724)
!738 = distinct !DISubprogram(name: "randombytes_uniform", scope: !26, file: !26, line: 94, type: !55, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!739 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !738, file: !26, line: 94, type: !57)
!740 = !DILocation(line: 0, scope: !738)
!741 = !DILocation(line: 99, column: 9, scope: !742)
!742 = distinct !DILexicalBlock(scope: !738, file: !26, line: 99, column: 9)
!743 = !DILocation(line: 99, column: 24, scope: !742)
!744 = !DILocation(line: 99, column: 32, scope: !742)
!745 = !DILocation(line: 99, column: 35, scope: !742)
!746 = !DILocation(line: 99, column: 51, scope: !742)
!747 = !DILocation(line: 99, column: 59, scope: !742)
!748 = !DILocation(line: 99, column: 9, scope: !738)
!749 = !DILocation(line: 100, column: 16, scope: !750)
!750 = distinct !DILexicalBlock(scope: !742, file: !26, line: 99, column: 68)
!751 = !DILocation(line: 100, column: 32, scope: !750)
!752 = !DILocation(line: 100, column: 9, scope: !750)
!753 = !DILocation(line: 102, column: 21, scope: !754)
!754 = distinct !DILexicalBlock(scope: !738, file: !26, line: 102, column: 9)
!755 = !DILocation(line: 102, column: 9, scope: !738)
!756 = !DILocation(line: 103, column: 9, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !26, line: 102, column: 26)
!758 = !DILocation(line: 105, column: 23, scope: !738)
!759 = !DILocation(line: 105, column: 36, scope: !738)
!760 = !DILocalVariable(name: "min", scope: !738, file: !26, line: 96, type: !6)
!761 = !DILocation(line: 106, column: 5, scope: !738)
!762 = !DILocation(line: 107, column: 13, scope: !763)
!763 = distinct !DILexicalBlock(scope: !738, file: !26, line: 106, column: 8)
!764 = !DILocalVariable(name: "r", scope: !738, file: !26, line: 97, type: !6)
!765 = !DILocation(line: 108, column: 5, scope: !763)
!766 = !DILocation(line: 108, column: 16, scope: !738)
!767 = distinct !{!767, !761, !768, !286}
!768 = !DILocation(line: 108, column: 21, scope: !738)
!769 = !DILocation(line: 110, column: 14, scope: !738)
!770 = !DILocation(line: 110, column: 5, scope: !738)
!771 = !DILocation(line: 111, column: 1, scope: !738)
!772 = distinct !DISubprogram(name: "randombytes_buf", scope: !26, file: !26, line: 114, type: !60, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!773 = !DILocalVariable(name: "buf", arg: 1, scope: !772, file: !26, line: 114, type: !62)
!774 = !DILocation(line: 0, scope: !772)
!775 = !DILocalVariable(name: "size", arg: 2, scope: !772, file: !26, line: 114, type: !63)
!776 = !DILocation(line: 117, column: 14, scope: !777)
!777 = distinct !DILexicalBlock(scope: !772, file: !26, line: 117, column: 9)
!778 = !DILocation(line: 117, column: 9, scope: !772)
!779 = !DILocation(line: 118, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !26, line: 117, column: 29)
!781 = !DILocation(line: 118, column: 25, scope: !780)
!782 = !DILocation(line: 119, column: 5, scope: !780)
!783 = !DILocation(line: 128, column: 1, scope: !772)
!784 = distinct !DISubprogram(name: "randombytes_close", scope: !26, file: !26, line: 131, type: !66, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!785 = !DILocation(line: 133, column: 9, scope: !786)
!786 = distinct !DILexicalBlock(scope: !784, file: !26, line: 133, column: 9)
!787 = !DILocation(line: 133, column: 24, scope: !786)
!788 = !DILocation(line: 133, column: 32, scope: !786)
!789 = !DILocation(line: 133, column: 35, scope: !786)
!790 = !DILocation(line: 133, column: 51, scope: !786)
!791 = !DILocation(line: 133, column: 57, scope: !786)
!792 = !DILocation(line: 133, column: 9, scope: !784)
!793 = !DILocation(line: 134, column: 16, scope: !794)
!794 = distinct !DILexicalBlock(scope: !786, file: !26, line: 133, column: 66)
!795 = !DILocation(line: 134, column: 32, scope: !794)
!796 = !DILocation(line: 134, column: 9, scope: !794)
!797 = !DILocation(line: 136, column: 5, scope: !784)
!798 = !DILocation(line: 0, scope: !784)
!799 = !DILocation(line: 137, column: 1, scope: !784)
!800 = distinct !DISubprogram(name: "randombytes", scope: !26, file: !26, line: 140, type: !801, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !803, !804}
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!805 = !DILocalVariable(name: "buf", arg: 1, scope: !800, file: !26, line: 140, type: !803)
!806 = !DILocation(line: 0, scope: !800)
!807 = !DILocalVariable(name: "buf_len", arg: 2, scope: !800, file: !26, line: 140, type: !804)
!808 = !DILocation(line: 142, column: 5, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !26, line: 142, column: 5)
!810 = distinct !DILexicalBlock(scope: !800, file: !26, line: 142, column: 5)
!811 = !DILocation(line: 142, column: 5, scope: !810)
!812 = !DILocation(line: 143, column: 5, scope: !800)
!813 = !DILocation(line: 144, column: 1, scope: !800)
!814 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !72, file: !72, line: 292, type: !40, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!815 = !DILocation(line: 294, column: 5, scope: !814)
!816 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !72, file: !72, line: 249, type: !47, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!817 = !DILocalVariable(name: "r", scope: !816, file: !72, line: 251, type: !6)
!818 = !DILocation(line: 251, column: 14, scope: !816)
!819 = !DILocation(line: 253, column: 31, scope: !816)
!820 = !DILocation(line: 253, column: 5, scope: !816)
!821 = !DILocation(line: 255, column: 12, scope: !816)
!822 = !DILocation(line: 255, column: 5, scope: !816)
!823 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !72, file: !72, line: 206, type: !51, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!824 = !DILocation(line: 208, column: 16, scope: !825)
!825 = distinct !DILexicalBlock(scope: !823, file: !72, line: 208, column: 9)
!826 = !DILocation(line: 208, column: 28, scope: !825)
!827 = !DILocation(line: 208, column: 9, scope: !823)
!828 = !DILocation(line: 209, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !825, file: !72, line: 208, column: 34)
!830 = !DILocation(line: 210, column: 28, scope: !829)
!831 = !DILocation(line: 211, column: 5, scope: !829)
!832 = !DILocation(line: 212, column: 1, scope: !823)
!833 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !72, file: !72, line: 259, type: !60, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!834 = !DILocalVariable(name: "buf", arg: 1, scope: !833, file: !72, line: 259, type: !62)
!835 = !DILocation(line: 0, scope: !833)
!836 = !DILocalVariable(name: "size", arg: 2, scope: !833, file: !72, line: 259, type: !63)
!837 = !DILocation(line: 261, column: 5, scope: !833)
!838 = !DILocation(line: 268, column: 16, scope: !839)
!839 = distinct !DILexicalBlock(scope: !833, file: !72, line: 268, column: 9)
!840 = !DILocation(line: 268, column: 36, scope: !839)
!841 = !DILocation(line: 268, column: 9, scope: !833)
!842 = !DILocation(line: 269, column: 13, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !72, line: 269, column: 13)
!844 = distinct !DILexicalBlock(scope: !839, file: !72, line: 268, column: 42)
!845 = !DILocation(line: 269, column: 52, scope: !843)
!846 = !DILocation(line: 269, column: 13, scope: !844)
!847 = !DILocation(line: 270, column: 13, scope: !848)
!848 = distinct !DILexicalBlock(scope: !843, file: !72, line: 269, column: 58)
!849 = !DILocation(line: 272, column: 9, scope: !844)
!850 = !DILocation(line: 275, column: 16, scope: !851)
!851 = distinct !DILexicalBlock(scope: !833, file: !72, line: 275, column: 9)
!852 = !DILocation(line: 275, column: 38, scope: !851)
!853 = !DILocation(line: 275, column: 44, scope: !851)
!854 = !DILocation(line: 276, column: 26, scope: !851)
!855 = !DILocation(line: 276, column: 9, scope: !851)
!856 = !DILocation(line: 276, column: 60, scope: !851)
!857 = !DILocation(line: 275, column: 9, scope: !833)
!858 = !DILocation(line: 277, column: 9, scope: !859)
!859 = distinct !DILexicalBlock(scope: !851, file: !72, line: 276, column: 79)
!860 = !DILocation(line: 287, column: 1, scope: !833)
!861 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !72, file: !72, line: 223, type: !66, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!862 = !DILocalVariable(name: "ret", scope: !861, file: !72, line: 225, type: !68)
!863 = !DILocation(line: 0, scope: !861)
!864 = !DILocation(line: 228, column: 16, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !72, line: 228, column: 9)
!866 = !DILocation(line: 228, column: 38, scope: !865)
!867 = !DILocation(line: 228, column: 44, scope: !865)
!868 = !DILocation(line: 229, column: 22, scope: !865)
!869 = !DILocation(line: 229, column: 9, scope: !865)
!870 = !DILocation(line: 229, column: 45, scope: !865)
!871 = !DILocation(line: 228, column: 9, scope: !861)
!872 = !DILocation(line: 230, column: 38, scope: !873)
!873 = distinct !DILexicalBlock(scope: !865, file: !72, line: 229, column: 51)
!874 = !DILocation(line: 231, column: 28, scope: !873)
!875 = !DILocation(line: 233, column: 5, scope: !873)
!876 = !DILocation(line: 235, column: 16, scope: !877)
!877 = distinct !DILexicalBlock(scope: !861, file: !72, line: 235, column: 9)
!878 = !DILocation(line: 235, column: 36, scope: !877)
!879 = !DILocation(line: 235, column: 9, scope: !861)
!880 = !DILocation(line: 237, column: 5, scope: !881)
!881 = distinct !DILexicalBlock(scope: !877, file: !72, line: 235, column: 42)
!882 = !DILocation(line: 245, column: 5, scope: !861)
!883 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !72, file: !72, line: 215, type: !51, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!884 = !DILocation(line: 217, column: 16, scope: !885)
!885 = distinct !DILexicalBlock(scope: !883, file: !72, line: 217, column: 9)
!886 = !DILocation(line: 217, column: 28, scope: !885)
!887 = !DILocation(line: 217, column: 9, scope: !883)
!888 = !DILocation(line: 218, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !72, line: 217, column: 34)
!890 = !DILocation(line: 219, column: 5, scope: !889)
!891 = !DILocation(line: 220, column: 1, scope: !883)
!892 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !72, file: !72, line: 151, type: !893, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!893 = !DISubroutineType(types: !894)
!894 = !{!68, !62, !28}
!895 = !DILocalVariable(name: "buf_", arg: 1, scope: !892, file: !72, line: 151, type: !62)
!896 = !DILocation(line: 0, scope: !892)
!897 = !DILocalVariable(name: "size", arg: 2, scope: !892, file: !72, line: 151, type: !28)
!898 = !DILocalVariable(name: "buf", scope: !892, file: !72, line: 153, type: !78)
!899 = !DILocalVariable(name: "chunk_size", scope: !892, file: !72, line: 154, type: !28)
!900 = !DILocation(line: 156, column: 5, scope: !892)
!901 = !DILocation(line: 157, column: 18, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !72, line: 157, column: 13)
!903 = distinct !DILexicalBlock(scope: !892, file: !72, line: 156, column: 8)
!904 = !DILocation(line: 157, column: 13, scope: !903)
!905 = !DILocation(line: 159, column: 13, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !72, line: 159, column: 13)
!907 = distinct !DILexicalBlock(scope: !908, file: !72, line: 159, column: 13)
!908 = distinct !DILexicalBlock(scope: !902, file: !72, line: 157, column: 32)
!909 = !DILocation(line: 159, column: 13, scope: !907)
!910 = !DILocation(line: 160, column: 9, scope: !908)
!911 = !DILocation(line: 161, column: 13, scope: !912)
!912 = distinct !DILexicalBlock(scope: !903, file: !72, line: 161, column: 13)
!913 = !DILocation(line: 161, column: 59, scope: !912)
!914 = !DILocation(line: 161, column: 13, scope: !903)
!915 = !DILocation(line: 162, column: 13, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !72, line: 161, column: 65)
!917 = !DILocation(line: 164, column: 14, scope: !903)
!918 = !DILocation(line: 165, column: 13, scope: !903)
!919 = !DILocation(line: 166, column: 5, scope: !903)
!920 = !DILocation(line: 166, column: 19, scope: !892)
!921 = distinct !{!921, !900, !922, !286}
!922 = !DILocation(line: 166, column: 32, scope: !892)
!923 = !DILocation(line: 168, column: 5, scope: !892)
!924 = !DILocation(line: 169, column: 1, scope: !892)
!925 = distinct !DISubprogram(name: "safe_read", scope: !72, file: !72, line: 77, type: !926, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!926 = !DISubroutineType(types: !927)
!927 = !{!74, !928, !62, !28}
!928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!929 = !DILocalVariable(name: "fd", arg: 1, scope: !925, file: !72, line: 77, type: !928)
!930 = !DILocation(line: 0, scope: !925)
!931 = !DILocalVariable(name: "buf_", arg: 2, scope: !925, file: !72, line: 77, type: !62)
!932 = !DILocalVariable(name: "size", arg: 3, scope: !925, file: !72, line: 77, type: !28)
!933 = !DILocalVariable(name: "buf", scope: !925, file: !72, line: 79, type: !78)
!934 = !DILocation(line: 82, column: 5, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !72, line: 82, column: 5)
!936 = distinct !DILexicalBlock(scope: !925, file: !72, line: 82, column: 5)
!937 = !DILocation(line: 82, column: 5, scope: !936)
!938 = !DILocation(line: 83, column: 5, scope: !925)
!939 = !DILocation(line: 84, column: 9, scope: !940)
!940 = distinct !DILexicalBlock(scope: !925, file: !72, line: 83, column: 8)
!941 = !DILocation(line: 84, column: 26, scope: !940)
!942 = !DILocalVariable(name: "readnb", scope: !925, file: !72, line: 80, type: !74)
!943 = !DILocation(line: 84, column: 47, scope: !940)
!944 = !DILocation(line: 84, column: 61, scope: !940)
!945 = !DILocation(line: 85, column: 17, scope: !940)
!946 = !DILocation(line: 85, column: 23, scope: !940)
!947 = !DILocation(line: 85, column: 32, scope: !940)
!948 = !DILocation(line: 85, column: 35, scope: !940)
!949 = !DILocation(line: 85, column: 41, scope: !940)
!950 = !DILocation(line: 0, scope: !940)
!951 = distinct !{!951, !939, !952, !286}
!952 = !DILocation(line: 85, column: 52, scope: !940)
!953 = !DILocation(line: 86, column: 20, scope: !954)
!954 = distinct !DILexicalBlock(scope: !940, file: !72, line: 86, column: 13)
!955 = !DILocation(line: 86, column: 13, scope: !940)
!956 = !DILocation(line: 87, column: 13, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !72, line: 86, column: 35)
!958 = !DILocation(line: 89, column: 20, scope: !959)
!959 = distinct !DILexicalBlock(scope: !940, file: !72, line: 89, column: 13)
!960 = !DILocation(line: 89, column: 13, scope: !940)
!961 = !DILocation(line: 90, column: 13, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !72, line: 89, column: 36)
!963 = !DILocation(line: 92, column: 14, scope: !940)
!964 = !DILocation(line: 93, column: 13, scope: !940)
!965 = !DILocation(line: 94, column: 5, scope: !940)
!966 = !DILocation(line: 94, column: 19, scope: !925)
!967 = distinct !{!967, !938, !968, !286}
!968 = !DILocation(line: 94, column: 32, scope: !925)
!969 = !DILocation(line: 96, column: 27, scope: !925)
!970 = !DILocation(line: 96, column: 5, scope: !925)
!971 = !DILocation(line: 97, column: 1, scope: !925)
!972 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !72, file: !72, line: 138, type: !973, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!973 = !DISubroutineType(types: !974)
!974 = !{!68, !62, !63}
!975 = !DILocalVariable(name: "buf", arg: 1, scope: !972, file: !72, line: 138, type: !62)
!976 = !DILocation(line: 0, scope: !972)
!977 = !DILocalVariable(name: "size", arg: 2, scope: !972, file: !72, line: 138, type: !63)
!978 = !DILocation(line: 142, column: 5, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !72, line: 142, column: 5)
!980 = distinct !DILexicalBlock(scope: !972, file: !72, line: 142, column: 5)
!981 = !DILocation(line: 142, column: 5, scope: !980)
!982 = !DILocation(line: 143, column: 5, scope: !972)
!983 = !DILocation(line: 144, column: 46, scope: !984)
!984 = distinct !DILexicalBlock(scope: !972, file: !72, line: 143, column: 8)
!985 = !DILocation(line: 144, column: 18, scope: !984)
!986 = !DILocalVariable(name: "readnb", scope: !972, file: !72, line: 140, type: !68)
!987 = !DILocation(line: 145, column: 5, scope: !984)
!988 = !DILocation(line: 145, column: 21, scope: !972)
!989 = !DILocation(line: 145, column: 25, scope: !972)
!990 = !DILocation(line: 145, column: 29, scope: !972)
!991 = !DILocation(line: 145, column: 35, scope: !972)
!992 = !DILocation(line: 145, column: 44, scope: !972)
!993 = !DILocation(line: 145, column: 47, scope: !972)
!994 = !DILocation(line: 145, column: 53, scope: !972)
!995 = distinct !{!995, !982, !996, !286}
!996 = !DILocation(line: 145, column: 63, scope: !972)
!997 = !DILocation(line: 147, column: 23, scope: !972)
!998 = !DILocation(line: 147, column: 20, scope: !972)
!999 = !DILocation(line: 147, column: 35, scope: !972)
!1000 = !DILocation(line: 147, column: 5, scope: !972)
!1001 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !72, file: !72, line: 173, type: !51, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!1002 = !DILocation(line: 175, column: 32, scope: !1001)
!1003 = !DILocalVariable(name: "errno_save", scope: !1001, file: !72, line: 175, type: !928)
!1004 = !DILocation(line: 0, scope: !1001)
!1005 = !DILocalVariable(name: "fodder", scope: !1006, file: !72, line: 179, type: !112)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !72, line: 178, column: 5)
!1007 = !DILocation(line: 179, column: 16, scope: !1006)
!1008 = !DILocation(line: 181, column: 34, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !72, line: 181, column: 6)
!1010 = !DILocation(line: 181, column: 6, scope: !1009)
!1011 = !DILocation(line: 181, column: 57, scope: !1009)
!1012 = !DILocation(line: 181, column: 6, scope: !1006)
!1013 = !DILocation(line: 182, column: 33, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !72, line: 181, column: 63)
!1015 = !DILocation(line: 183, column: 6, scope: !1014)
!1016 = !DILocation(line: 183, column: 12, scope: !1014)
!1017 = !DILocation(line: 184, column: 6, scope: !1014)
!1018 = !DILocation(line: 186, column: 29, scope: !1006)
!1019 = !DILocation(line: 191, column: 10, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1001, file: !72, line: 190, column: 9)
!1021 = !DILocation(line: 190, column: 39, scope: !1020)
!1022 = !DILocation(line: 191, column: 51, scope: !1020)
!1023 = !DILocation(line: 190, column: 9, scope: !1001)
!1024 = !DILocation(line: 192, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !72, line: 191, column: 58)
!1026 = !DILocation(line: 194, column: 5, scope: !1001)
!1027 = !DILocation(line: 194, column: 11, scope: !1001)
!1028 = !DILocation(line: 195, column: 1, scope: !1001)
!1029 = !DILocalVariable(name: "st", scope: !90, file: !72, line: 105, type: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1031, line: 46, size: 1152, elements: !1032)
!1031 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1032 = !{!1033, !1035, !1037, !1039, !1041, !1043, !1045, !1046, !1047, !1049, !1051, !1053, !1061, !1062, !1063}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1030, file: !1031, line: 48, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !9, line: 145, baseType: !30)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1030, file: !1031, line: 53, baseType: !1036, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !9, line: 148, baseType: !30)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1030, file: !1031, line: 61, baseType: !1038, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !9, line: 151, baseType: !30)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1030, file: !1031, line: 62, baseType: !1040, size: 32, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !9, line: 150, baseType: !10)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1030, file: !1031, line: 64, baseType: !1042, size: 32, offset: 224)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !9, line: 146, baseType: !10)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1030, file: !1031, line: 65, baseType: !1044, size: 32, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !9, line: 147, baseType: !10)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1030, file: !1031, line: 67, baseType: !68, size: 32, offset: 288)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1030, file: !1031, line: 69, baseType: !1034, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1030, file: !1031, line: 74, baseType: !1048, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 152, baseType: !77)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1030, file: !1031, line: 78, baseType: !1050, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !9, line: 174, baseType: !77)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1030, file: !1031, line: 80, baseType: !1052, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !9, line: 179, baseType: !77)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1030, file: !1031, line: 91, baseType: !1054, size: 128, offset: 576)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1055, line: 10, size: 128, elements: !1056)
!1055 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1056 = !{!1057, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1054, file: !1055, line: 12, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !9, line: 160, baseType: !77)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1054, file: !1055, line: 16, baseType: !1060, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !9, line: 196, baseType: !77)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1030, file: !1031, line: 92, baseType: !1054, size: 128, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1030, file: !1031, line: 93, baseType: !1054, size: 128, offset: 832)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1030, file: !1031, line: 106, baseType: !1064, size: 192, offset: 960)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 192, elements: !92)
!1065 = !DILocation(line: 105, column: 24, scope: !90)
!1066 = !DILocalVariable(name: "device", scope: !90, file: !72, line: 112, type: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!1068 = !DILocation(line: 0, scope: !90)
!1069 = !DILocation(line: 115, column: 5, scope: !90)
!1070 = !DILocation(line: 116, column: 19, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !90, file: !72, line: 115, column: 8)
!1072 = !DILocation(line: 116, column: 14, scope: !1071)
!1073 = !DILocalVariable(name: "fd", scope: !90, file: !72, line: 113, type: !68)
!1074 = !DILocation(line: 117, column: 16, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !72, line: 117, column: 13)
!1076 = !DILocation(line: 117, column: 13, scope: !1071)
!1077 = !DILocation(line: 118, column: 17, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !72, line: 118, column: 17)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !72, line: 117, column: 23)
!1080 = !DILocation(line: 118, column: 32, scope: !1078)
!1081 = !DILocation(line: 118, column: 37, scope: !1078)
!1082 = !DILocation(line: 118, column: 40, scope: !1078)
!1083 = !DILocation(line: 118, column: 17, scope: !1079)
!1084 = !DILocation(line: 120, column: 43, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1078, file: !72, line: 118, column: 61)
!1086 = !DILocation(line: 120, column: 62, scope: !1085)
!1087 = !DILocation(line: 120, column: 24, scope: !1085)
!1088 = !DILocation(line: 122, column: 17, scope: !1085)
!1089 = !DILocation(line: 124, column: 20, scope: !1079)
!1090 = !DILocation(line: 125, column: 9, scope: !1079)
!1091 = !DILocation(line: 125, column: 20, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1075, file: !72, line: 125, column: 20)
!1093 = !DILocation(line: 125, column: 26, scope: !1092)
!1094 = !DILocation(line: 125, column: 20, scope: !1075)
!1095 = !DILocation(line: 126, column: 13, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !72, line: 125, column: 36)
!1097 = !DILocation(line: 128, column: 15, scope: !1071)
!1098 = !DILocation(line: 129, column: 5, scope: !1071)
!1099 = !DILocation(line: 129, column: 14, scope: !90)
!1100 = !DILocation(line: 129, column: 22, scope: !90)
!1101 = distinct !{!1101, !1069, !1102, !286}
!1102 = !DILocation(line: 129, column: 29, scope: !90)
!1103 = !DILocation(line: 131, column: 5, scope: !90)
!1104 = !DILocation(line: 131, column: 11, scope: !90)
!1105 = !DILocation(line: 132, column: 5, scope: !90)
!1106 = !DILocation(line: 134, column: 1, scope: !90)
!1107 = distinct !DISubprogram(name: "sodium_memzero", scope: !105, file: !105, line: 58, type: !60, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1108 = !DILocalVariable(name: "pnt", arg: 1, scope: !1107, file: !105, line: 58, type: !62)
!1109 = !DILocation(line: 0, scope: !1107)
!1110 = !DILocalVariable(name: "len", arg: 2, scope: !1107, file: !105, line: 58, type: !63)
!1111 = !DILocalVariable(name: "pnt_", scope: !1107, file: !105, line: 72, type: !107)
!1112 = !DILocalVariable(name: "i", scope: !1107, file: !105, line: 73, type: !28)
!1113 = !DILocation(line: 75, column: 5, scope: !1107)
!1114 = !DILocation(line: 75, column: 14, scope: !1107)
!1115 = !DILocation(line: 76, column: 15, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1107, file: !105, line: 75, column: 21)
!1117 = !DILocation(line: 76, column: 9, scope: !1116)
!1118 = !DILocation(line: 76, column: 19, scope: !1116)
!1119 = distinct !{!1119, !1113, !1120, !286}
!1120 = !DILocation(line: 77, column: 5, scope: !1107)
!1121 = !DILocation(line: 79, column: 1, scope: !1107)
!1122 = distinct !DISubprogram(name: "sodium_memcmp", scope: !105, file: !105, line: 82, type: !1123, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!68, !1125, !1125, !28}
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!1126 = !DILocalVariable(name: "b1_", arg: 1, scope: !1122, file: !105, line: 82, type: !1125)
!1127 = !DILocation(line: 0, scope: !1122)
!1128 = !DILocalVariable(name: "b2_", arg: 2, scope: !1122, file: !105, line: 82, type: !1125)
!1129 = !DILocalVariable(name: "len", arg: 3, scope: !1122, file: !105, line: 82, type: !28)
!1130 = !DILocalVariable(name: "b1", scope: !1122, file: !105, line: 84, type: !109)
!1131 = !DILocalVariable(name: "b2", scope: !1122, file: !105, line: 85, type: !109)
!1132 = !DILocalVariable(name: "d", scope: !1122, file: !105, line: 87, type: !16)
!1133 = !DILocalVariable(name: "i", scope: !1122, file: !105, line: 86, type: !28)
!1134 = !DILocation(line: 89, column: 10, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1122, file: !105, line: 89, column: 5)
!1136 = !DILocation(line: 0, scope: !1135)
!1137 = !DILocation(line: 89, column: 20, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !105, line: 89, column: 5)
!1139 = !DILocation(line: 89, column: 5, scope: !1135)
!1140 = !DILocation(line: 90, column: 14, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !105, line: 89, column: 32)
!1142 = !DILocation(line: 90, column: 22, scope: !1141)
!1143 = !DILocation(line: 90, column: 20, scope: !1141)
!1144 = !DILocation(line: 90, column: 11, scope: !1141)
!1145 = !DILocation(line: 91, column: 5, scope: !1141)
!1146 = !DILocation(line: 89, column: 28, scope: !1138)
!1147 = !DILocation(line: 89, column: 5, scope: !1138)
!1148 = distinct !{!1148, !1139, !1149, !286}
!1149 = !DILocation(line: 91, column: 5, scope: !1135)
!1150 = !DILocation(line: 92, column: 26, scope: !1122)
!1151 = !DILocation(line: 92, column: 28, scope: !1122)
!1152 = !DILocation(line: 92, column: 33, scope: !1122)
!1153 = !DILocation(line: 92, column: 22, scope: !1122)
!1154 = !DILocation(line: 92, column: 40, scope: !1122)
!1155 = !DILocation(line: 92, column: 5, scope: !1122)
!1156 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !105, file: !105, line: 97, type: !1157, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!1159, !1160, !63, !1161, !63}
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1159)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1162 = !DILocalVariable(name: "hex", arg: 1, scope: !1156, file: !105, line: 97, type: !1160)
!1163 = !DILocation(line: 0, scope: !1156)
!1164 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !1156, file: !105, line: 97, type: !63)
!1165 = !DILocalVariable(name: "bin", arg: 3, scope: !1156, file: !105, line: 98, type: !1161)
!1166 = !DILocalVariable(name: "bin_len", arg: 4, scope: !1156, file: !105, line: 98, type: !63)
!1167 = !DILocalVariable(name: "i", scope: !1156, file: !105, line: 100, type: !28)
!1168 = !DILocation(line: 105, column: 17, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1156, file: !105, line: 105, column: 9)
!1170 = !DILocation(line: 105, column: 33, scope: !1169)
!1171 = !DILocation(line: 105, column: 57, scope: !1169)
!1172 = !DILocation(line: 105, column: 47, scope: !1169)
!1173 = !DILocation(line: 105, column: 9, scope: !1156)
!1174 = !DILocation(line: 106, column: 9, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1169, file: !105, line: 105, column: 63)
!1176 = !DILocation(line: 108, column: 5, scope: !1156)
!1177 = !DILocation(line: 108, column: 14, scope: !1156)
!1178 = !DILocation(line: 109, column: 13, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1156, file: !105, line: 108, column: 25)
!1180 = !DILocation(line: 109, column: 20, scope: !1179)
!1181 = !DILocalVariable(name: "c", scope: !1156, file: !105, line: 103, type: !68)
!1182 = !DILocation(line: 110, column: 13, scope: !1179)
!1183 = !DILocation(line: 110, column: 20, scope: !1179)
!1184 = !DILocalVariable(name: "b", scope: !1156, file: !105, line: 102, type: !68)
!1185 = !DILocation(line: 111, column: 34, scope: !1179)
!1186 = !DILocation(line: 111, column: 45, scope: !1179)
!1187 = !DILocation(line: 111, column: 52, scope: !1179)
!1188 = !DILocation(line: 111, column: 58, scope: !1179)
!1189 = !DILocation(line: 111, column: 38, scope: !1179)
!1190 = !DILocation(line: 111, column: 13, scope: !1179)
!1191 = !DILocation(line: 111, column: 67, scope: !1179)
!1192 = !DILocation(line: 112, column: 34, scope: !1179)
!1193 = !DILocation(line: 112, column: 45, scope: !1179)
!1194 = !DILocation(line: 112, column: 52, scope: !1179)
!1195 = !DILocation(line: 112, column: 58, scope: !1179)
!1196 = !DILocation(line: 112, column: 38, scope: !1179)
!1197 = !DILocation(line: 112, column: 13, scope: !1179)
!1198 = !DILocation(line: 111, column: 72, scope: !1179)
!1199 = !DILocalVariable(name: "x", scope: !1156, file: !105, line: 101, type: !10)
!1200 = !DILocation(line: 113, column: 23, scope: !1179)
!1201 = !DILocation(line: 113, column: 15, scope: !1179)
!1202 = !DILocation(line: 113, column: 9, scope: !1179)
!1203 = !DILocation(line: 113, column: 21, scope: !1179)
!1204 = !DILocation(line: 114, column: 11, scope: !1179)
!1205 = !DILocation(line: 115, column: 28, scope: !1179)
!1206 = !DILocation(line: 115, column: 15, scope: !1179)
!1207 = !DILocation(line: 115, column: 20, scope: !1179)
!1208 = !DILocation(line: 115, column: 9, scope: !1179)
!1209 = !DILocation(line: 115, column: 26, scope: !1179)
!1210 = !DILocation(line: 116, column: 10, scope: !1179)
!1211 = distinct !{!1211, !1176, !1212, !286}
!1212 = !DILocation(line: 117, column: 5, scope: !1156)
!1213 = !DILocation(line: 118, column: 11, scope: !1156)
!1214 = !DILocation(line: 118, column: 5, scope: !1156)
!1215 = !DILocation(line: 118, column: 17, scope: !1156)
!1216 = !DILocation(line: 120, column: 5, scope: !1156)
!1217 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !105, file: !105, line: 124, type: !1218, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!68, !803, !63, !1220, !63, !1220, !1221, !1223}
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1067)
!1224 = !DILocalVariable(name: "bin", arg: 1, scope: !1217, file: !105, line: 124, type: !803)
!1225 = !DILocation(line: 0, scope: !1217)
!1226 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !1217, file: !105, line: 124, type: !63)
!1227 = !DILocalVariable(name: "hex", arg: 3, scope: !1217, file: !105, line: 125, type: !1220)
!1228 = !DILocalVariable(name: "hex_len", arg: 4, scope: !1217, file: !105, line: 125, type: !63)
!1229 = !DILocalVariable(name: "ignore", arg: 5, scope: !1217, file: !105, line: 126, type: !1220)
!1230 = !DILocalVariable(name: "bin_len", arg: 6, scope: !1217, file: !105, line: 126, type: !1221)
!1231 = !DILocalVariable(name: "hex_end", arg: 7, scope: !1217, file: !105, line: 127, type: !1223)
!1232 = !DILocalVariable(name: "bin_pos", scope: !1217, file: !105, line: 129, type: !28)
!1233 = !DILocalVariable(name: "hex_pos", scope: !1217, file: !105, line: 130, type: !28)
!1234 = !DILocalVariable(name: "ret", scope: !1217, file: !105, line: 131, type: !68)
!1235 = !DILocalVariable(name: "c_acc", scope: !1217, file: !105, line: 133, type: !16)
!1236 = !DILocalVariable(name: "state", scope: !1217, file: !105, line: 137, type: !16)
!1237 = !DILocation(line: 139, column: 5, scope: !1217)
!1238 = !DILocation(line: 129, column: 19, scope: !1217)
!1239 = !DILocation(line: 139, column: 20, scope: !1217)
!1240 = !DILocation(line: 140, column: 29, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1217, file: !105, line: 139, column: 31)
!1242 = !DILocalVariable(name: "c", scope: !1217, file: !105, line: 132, type: !16)
!1243 = !DILocation(line: 141, column: 17, scope: !1241)
!1244 = !DILocation(line: 141, column: 19, scope: !1241)
!1245 = !DILocalVariable(name: "c_num", scope: !1217, file: !105, line: 135, type: !16)
!1246 = !DILocation(line: 142, column: 19, scope: !1241)
!1247 = !DILocation(line: 142, column: 25, scope: !1241)
!1248 = !DILocation(line: 142, column: 32, scope: !1241)
!1249 = !DILocation(line: 142, column: 18, scope: !1241)
!1250 = !DILocalVariable(name: "c_num0", scope: !1217, file: !105, line: 135, type: !16)
!1251 = !DILocation(line: 143, column: 20, scope: !1241)
!1252 = !DILocation(line: 143, column: 22, scope: !1241)
!1253 = !DILocation(line: 143, column: 30, scope: !1241)
!1254 = !DILocation(line: 143, column: 19, scope: !1241)
!1255 = !DILocalVariable(name: "c_alpha", scope: !1217, file: !105, line: 134, type: !16)
!1256 = !DILocation(line: 144, column: 22, scope: !1241)
!1257 = !DILocation(line: 144, column: 30, scope: !1241)
!1258 = !DILocation(line: 144, column: 40, scope: !1241)
!1259 = !DILocation(line: 144, column: 48, scope: !1241)
!1260 = !DILocation(line: 144, column: 37, scope: !1241)
!1261 = !DILocation(line: 144, column: 56, scope: !1241)
!1262 = !DILocation(line: 144, column: 20, scope: !1241)
!1263 = !DILocalVariable(name: "c_alpha0", scope: !1217, file: !105, line: 134, type: !16)
!1264 = !DILocation(line: 145, column: 14, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1241, file: !105, line: 145, column: 13)
!1266 = !DILocation(line: 145, column: 23, scope: !1265)
!1267 = !DILocation(line: 145, column: 21, scope: !1265)
!1268 = !DILocation(line: 145, column: 33, scope: !1265)
!1269 = !DILocation(line: 145, column: 13, scope: !1241)
!1270 = !DILocation(line: 146, column: 24, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !105, line: 146, column: 17)
!1272 = distinct !DILexicalBlock(scope: !1265, file: !105, line: 145, column: 40)
!1273 = !DILocation(line: 146, column: 32, scope: !1271)
!1274 = !DILocation(line: 146, column: 35, scope: !1271)
!1275 = !DILocation(line: 146, column: 41, scope: !1271)
!1276 = !DILocation(line: 146, column: 47, scope: !1271)
!1277 = !DILocation(line: 146, column: 65, scope: !1271)
!1278 = !DILocation(line: 146, column: 50, scope: !1271)
!1279 = !DILocation(line: 146, column: 68, scope: !1271)
!1280 = !DILocation(line: 146, column: 17, scope: !1272)
!1281 = !DILocation(line: 147, column: 24, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1271, file: !105, line: 146, column: 77)
!1283 = !DILocation(line: 148, column: 17, scope: !1282)
!1284 = distinct !{!1284, !1237, !1285, !286}
!1285 = !DILocation(line: 165, column: 5, scope: !1217)
!1286 = !DILocation(line: 150, column: 13, scope: !1272)
!1287 = !DILocation(line: 152, column: 18, scope: !1241)
!1288 = !DILocation(line: 152, column: 27, scope: !1241)
!1289 = !DILocation(line: 152, column: 25, scope: !1241)
!1290 = !DILocation(line: 152, column: 37, scope: !1241)
!1291 = !DILocation(line: 152, column: 48, scope: !1241)
!1292 = !DILocation(line: 152, column: 46, scope: !1241)
!1293 = !DILocation(line: 152, column: 34, scope: !1241)
!1294 = !DILocation(line: 152, column: 17, scope: !1241)
!1295 = !DILocalVariable(name: "c_val", scope: !1217, file: !105, line: 136, type: !16)
!1296 = !DILocation(line: 153, column: 21, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1241, file: !105, line: 153, column: 13)
!1298 = !DILocation(line: 153, column: 13, scope: !1241)
!1299 = !DILocation(line: 155, column: 13, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !105, line: 153, column: 36)
!1301 = !DILocation(line: 155, column: 19, scope: !1300)
!1302 = !DILocation(line: 156, column: 13, scope: !1300)
!1303 = !DILocation(line: 158, column: 13, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1241, file: !105, line: 158, column: 13)
!1305 = !DILocation(line: 158, column: 19, scope: !1304)
!1306 = !DILocation(line: 158, column: 13, scope: !1241)
!1307 = !DILocation(line: 159, column: 21, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !105, line: 158, column: 26)
!1309 = !DILocation(line: 159, column: 27, scope: !1308)
!1310 = !DILocation(line: 160, column: 9, scope: !1308)
!1311 = !DILocation(line: 161, column: 30, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1304, file: !105, line: 160, column: 16)
!1313 = !DILocation(line: 161, column: 38, scope: !1312)
!1314 = !DILocation(line: 161, column: 36, scope: !1312)
!1315 = !DILocation(line: 161, column: 24, scope: !1312)
!1316 = !DILocation(line: 161, column: 13, scope: !1312)
!1317 = !DILocation(line: 161, column: 28, scope: !1312)
!1318 = !DILocation(line: 163, column: 18, scope: !1241)
!1319 = !DILocation(line: 163, column: 17, scope: !1241)
!1320 = !DILocation(line: 164, column: 16, scope: !1241)
!1321 = !DILocation(line: 166, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1217, file: !105, line: 166, column: 9)
!1323 = !DILocation(line: 166, column: 15, scope: !1322)
!1324 = !DILocation(line: 166, column: 9, scope: !1217)
!1325 = !DILocation(line: 167, column: 16, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !105, line: 166, column: 22)
!1327 = !DILocation(line: 168, column: 5, scope: !1326)
!1328 = !DILocation(line: 169, column: 17, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1217, file: !105, line: 169, column: 9)
!1330 = !DILocation(line: 169, column: 9, scope: !1217)
!1331 = !DILocation(line: 170, column: 21, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !105, line: 169, column: 26)
!1333 = !DILocation(line: 170, column: 18, scope: !1332)
!1334 = !DILocation(line: 171, column: 5, scope: !1332)
!1335 = !DILocation(line: 172, column: 17, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1217, file: !105, line: 172, column: 9)
!1337 = !DILocation(line: 172, column: 9, scope: !1217)
!1338 = !DILocation(line: 173, column: 18, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !105, line: 172, column: 26)
!1340 = !DILocation(line: 174, column: 5, scope: !1339)
!1341 = !DILocation(line: 175, column: 5, scope: !1217)
!1342 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !105, file: !105, line: 179, type: !66, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1343 = !DILocation(line: 196, column: 5, scope: !1342)
!1344 = !DILocation(line: 198, column: 5, scope: !1342)
!1345 = distinct !DISubprogram(name: "sodium_mlock", scope: !105, file: !105, line: 202, type: !973, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1346 = !DILocalVariable(name: "addr", arg: 1, scope: !1345, file: !105, line: 202, type: !62)
!1347 = !DILocation(line: 0, scope: !1345)
!1348 = !DILocalVariable(name: "len", arg: 2, scope: !1345, file: !105, line: 202, type: !63)
!1349 = !DILocation(line: 212, column: 5, scope: !1345)
!1350 = !DILocation(line: 212, column: 11, scope: !1345)
!1351 = !DILocation(line: 213, column: 5, scope: !1345)
!1352 = distinct !DISubprogram(name: "sodium_munlock", scope: !105, file: !105, line: 218, type: !973, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1353 = !DILocalVariable(name: "addr", arg: 1, scope: !1352, file: !105, line: 218, type: !62)
!1354 = !DILocation(line: 0, scope: !1352)
!1355 = !DILocalVariable(name: "len", arg: 2, scope: !1352, file: !105, line: 218, type: !63)
!1356 = !DILocation(line: 220, column: 5, scope: !1352)
!1357 = !DILocation(line: 229, column: 5, scope: !1352)
!1358 = !DILocation(line: 229, column: 11, scope: !1352)
!1359 = !DILocation(line: 230, column: 5, scope: !1352)
!1360 = distinct !DISubprogram(name: "sodium_malloc", scope: !105, file: !105, line: 402, type: !1361, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!11, !63}
!1363 = !DILocalVariable(name: "size", arg: 1, scope: !1360, file: !105, line: 402, type: !63)
!1364 = !DILocation(line: 0, scope: !1360)
!1365 = !DILocation(line: 406, column: 16, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !105, line: 406, column: 9)
!1367 = !DILocalVariable(name: "ptr", scope: !1360, file: !105, line: 404, type: !11)
!1368 = !DILocation(line: 406, column: 38, scope: !1366)
!1369 = !DILocation(line: 406, column: 9, scope: !1360)
!1370 = !DILocation(line: 407, column: 9, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !105, line: 406, column: 47)
!1372 = !DILocation(line: 409, column: 5, scope: !1360)
!1373 = !DILocation(line: 411, column: 5, scope: !1360)
!1374 = !DILocation(line: 412, column: 1, scope: !1360)
!1375 = distinct !DISubprogram(name: "_sodium_malloc", scope: !105, file: !105, line: 353, type: !1361, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1376 = !DILocalVariable(name: "size", arg: 1, scope: !1375, file: !105, line: 353, type: !63)
!1377 = !DILocation(line: 0, scope: !1375)
!1378 = !DILocation(line: 355, column: 12, scope: !1375)
!1379 = !DILocation(line: 355, column: 5, scope: !1375)
!1380 = distinct !DISubprogram(name: "sodium_allocarray", scope: !105, file: !105, line: 415, type: !1381, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!11, !28, !28}
!1383 = !DILocalVariable(name: "count", arg: 1, scope: !1380, file: !105, line: 415, type: !28)
!1384 = !DILocation(line: 0, scope: !1380)
!1385 = !DILocalVariable(name: "size", arg: 2, scope: !1380, file: !105, line: 415, type: !28)
!1386 = !DILocation(line: 419, column: 15, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1380, file: !105, line: 419, column: 9)
!1388 = !DILocation(line: 419, column: 29, scope: !1387)
!1389 = !DILocation(line: 419, column: 58, scope: !1387)
!1390 = !DILocation(line: 419, column: 37, scope: !1387)
!1391 = !DILocation(line: 419, column: 9, scope: !1380)
!1392 = !DILocation(line: 420, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1387, file: !105, line: 419, column: 67)
!1394 = !DILocation(line: 420, column: 15, scope: !1393)
!1395 = !DILocation(line: 421, column: 9, scope: !1393)
!1396 = !DILocation(line: 423, column: 24, scope: !1380)
!1397 = !DILocalVariable(name: "total_size", scope: !1380, file: !105, line: 417, type: !28)
!1398 = !DILocation(line: 425, column: 12, scope: !1380)
!1399 = !DILocation(line: 425, column: 5, scope: !1380)
!1400 = !DILocation(line: 426, column: 1, scope: !1380)
!1401 = distinct !DISubprogram(name: "sodium_free", scope: !105, file: !105, line: 430, type: !1402, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !11}
!1404 = !DILocalVariable(name: "ptr", arg: 1, scope: !1401, file: !105, line: 430, type: !11)
!1405 = !DILocation(line: 0, scope: !1401)
!1406 = !DILocation(line: 432, column: 5, scope: !1401)
!1407 = !DILocation(line: 433, column: 1, scope: !1401)
!1408 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !105, file: !105, line: 493, type: !1409, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!68, !11}
!1411 = !DILocalVariable(name: "ptr", arg: 1, scope: !1408, file: !105, line: 493, type: !11)
!1412 = !DILocation(line: 0, scope: !1408)
!1413 = !DILocation(line: 495, column: 12, scope: !1408)
!1414 = !DILocation(line: 495, column: 5, scope: !1408)
!1415 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !105, file: !105, line: 235, type: !1416, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!68, !11, !28}
!1418 = !DILocalVariable(name: "ptr", arg: 1, scope: !1415, file: !105, line: 235, type: !11)
!1419 = !DILocation(line: 0, scope: !1415)
!1420 = !DILocalVariable(name: "size", arg: 2, scope: !1415, file: !105, line: 235, type: !28)
!1421 = !DILocation(line: 243, column: 5, scope: !1415)
!1422 = !DILocation(line: 243, column: 11, scope: !1415)
!1423 = !DILocation(line: 244, column: 5, scope: !1415)
!1424 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !105, file: !105, line: 469, type: !1425, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!68, !11, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1428 = !DILocalVariable(name: "ptr", arg: 1, scope: !1424, file: !105, line: 469, type: !11)
!1429 = !DILocation(line: 0, scope: !1424)
!1430 = !DILocalVariable(name: "cb", arg: 2, scope: !1424, file: !105, line: 469, type: !1427)
!1431 = !DILocation(line: 473, column: 5, scope: !1424)
!1432 = !DILocation(line: 473, column: 11, scope: !1424)
!1433 = !DILocation(line: 474, column: 5, scope: !1424)
!1434 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !105, file: !105, line: 499, type: !1409, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1435 = !DILocalVariable(name: "ptr", arg: 1, scope: !1434, file: !105, line: 499, type: !11)
!1436 = !DILocation(line: 0, scope: !1434)
!1437 = !DILocation(line: 501, column: 12, scope: !1434)
!1438 = !DILocation(line: 501, column: 5, scope: !1434)
!1439 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !105, file: !105, line: 249, type: !1416, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1440 = !DILocalVariable(name: "ptr", arg: 1, scope: !1439, file: !105, line: 249, type: !11)
!1441 = !DILocation(line: 0, scope: !1439)
!1442 = !DILocalVariable(name: "size", arg: 2, scope: !1439, file: !105, line: 249, type: !28)
!1443 = !DILocation(line: 257, column: 5, scope: !1439)
!1444 = !DILocation(line: 257, column: 11, scope: !1439)
!1445 = !DILocation(line: 258, column: 5, scope: !1439)
!1446 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !105, file: !105, line: 505, type: !1409, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1447 = !DILocalVariable(name: "ptr", arg: 1, scope: !1446, file: !105, line: 505, type: !11)
!1448 = !DILocation(line: 0, scope: !1446)
!1449 = !DILocation(line: 507, column: 12, scope: !1446)
!1450 = !DILocation(line: 507, column: 5, scope: !1446)
!1451 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !105, file: !105, line: 263, type: !1416, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1452 = !DILocalVariable(name: "ptr", arg: 1, scope: !1451, file: !105, line: 263, type: !11)
!1453 = !DILocation(line: 0, scope: !1451)
!1454 = !DILocalVariable(name: "size", arg: 2, scope: !1451, file: !105, line: 263, type: !28)
!1455 = !DILocation(line: 271, column: 5, scope: !1451)
!1456 = !DILocation(line: 271, column: 11, scope: !1451)
!1457 = !DILocation(line: 272, column: 5, scope: !1451)
