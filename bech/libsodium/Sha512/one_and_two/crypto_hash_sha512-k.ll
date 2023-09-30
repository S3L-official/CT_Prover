; ModuleID = 'crypto_hash_sha512.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i64)*, i32 ()* }
%struct.SysRandom_ = type { i32, i32, i32 }
%struct.smack_value = type { i8* }
%struct.crypto_hash_sha512_state = type { [8 x i64], [2 x i64], [128 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@PAD = internal global <{ i8, [127 x i8] }> <{ i8 -128, [127 x i8] zeroinitializer }>, align 16, !dbg !0
@implementation = internal global %struct.randombytes_implementation* @randombytes_sysrandom_implementation, align 8, !dbg !23
@.str = private unnamed_addr constant [20 x i8] c"buf_len <= SIZE_MAX\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"../libsodium/src/libsodium/randombytes/randombytes.c\00", align 1
@__PRETTY_FUNCTION__.randombytes = private unnamed_addr constant [65 x i8] c"void randombytes(unsigned char *const, const unsigned long long)\00", align 1
@randombytes_sysrandom_implementation = dso_local global %struct.randombytes_implementation { i8* ()* @randombytes_sysrandom_implementation_name, i32 ()* @randombytes_sysrandom, void ()* @randombytes_sysrandom_stir, i32 (i32)* null, void (i8*, i64)* @randombytes_sysrandom_buf, i32 ()* @randombytes_sysrandom_close }, align 8, !dbg !71
@stream = internal global %struct.SysRandom_ { i32 -1, i32 0, i32 0 }, align 4, !dbg !82
@.str.6 = private unnamed_addr constant [19 x i8] c"size > (size_t) 0U\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c\00", align 1
@__PRETTY_FUNCTION__.safe_read = private unnamed_addr constant [50 x i8] c"ssize_t safe_read(const int, void *const, size_t)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"chunk_size > (size_t) 0U\00", align 1
@__PRETTY_FUNCTION__.randombytes_linux_getrandom = private unnamed_addr constant [53 x i8] c"int randombytes_linux_getrandom(void *const, size_t)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"size <= 256U\00", align 1
@__PRETTY_FUNCTION__._randombytes_linux_getrandom = private unnamed_addr constant [60 x i8] c"int _randombytes_linux_getrandom(void *const, const size_t)\00", align 1
@randombytes_sysrandom_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16, !dbg !90
@.str.1.5 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sysrandom\00", align 1
@canary = internal global [16 x i8] zeroinitializer, align 16, !dbg !104

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha512_wrapper(i8* %0, i8* %1) #0 !dbg !123 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.value(metadata i8* %1, metadata !128, metadata !DIExpression()), !dbg !127
  %3 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !129
  call void @public_in(%struct.smack_value* %3), !dbg !130
  %4 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !131
  call void @public_in(%struct.smack_value* %4), !dbg !132
  %5 = call i32 @crypto_hash_sha512(i8* %0, i8* %1, i64 156), !dbg !133
  ret i32 %5, !dbg !134
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_hash_sha512_wrapper_t() #0 !dbg !135 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !136, metadata !DIExpression()), !dbg !137
  %3 = call zeroext i8 (...) @gout(), !dbg !138
  store i8 %3, i8* %1, align 1, !dbg !137
  call void @llvm.dbg.declare(metadata i8* %2, metadata !139, metadata !DIExpression()), !dbg !140
  %4 = call zeroext i8 (...) @gin(), !dbg !141
  store i8 %4, i8* %2, align 1, !dbg !140
  %5 = call zeroext i8 (...) @gk(), !dbg !142
  call void @llvm.dbg.value(metadata i8 %5, metadata !143, metadata !DIExpression()), !dbg !144
  %6 = call zeroext i8 (...) @gc(), !dbg !145
  call void @llvm.dbg.value(metadata i8 %6, metadata !146, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i8* %1, metadata !147, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i8* %2, metadata !148, metadata !DIExpression()), !dbg !144
  %7 = call i32 @crypto_hash_sha512(i8* %1, i8* %2, i64 156), !dbg !149
  ret void, !dbg !150
}

declare dso_local zeroext i8 @gout(...) #2

declare dso_local zeroext i8 @gin(...) #2

declare dso_local zeroext i8 @gk(...) #2

declare dso_local zeroext i8 @gc(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha512_init(%struct.crypto_hash_sha512_state* %0) #0 !dbg !151 {
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha512_state* %0, metadata !168, metadata !DIExpression()), !dbg !169
  %2 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 1, !dbg !170
  %3 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1, !dbg !171
  store i64 0, i64* %3, align 8, !dbg !172
  %4 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 1, !dbg !173
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0, !dbg !174
  store i64 0, i64* %5, align 8, !dbg !175
  %6 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !176
  %7 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0, !dbg !177
  store i64 7640891576956012808, i64* %7, align 8, !dbg !178
  %8 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !179
  %9 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 1, !dbg !180
  store i64 -4942790177534073029, i64* %9, align 8, !dbg !181
  %10 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !182
  %11 = getelementptr inbounds [8 x i64], [8 x i64]* %10, i64 0, i64 2, !dbg !183
  store i64 4354685564936845355, i64* %11, align 8, !dbg !184
  %12 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !185
  %13 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 3, !dbg !186
  store i64 -6534734903238641935, i64* %13, align 8, !dbg !187
  %14 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !188
  %15 = getelementptr inbounds [8 x i64], [8 x i64]* %14, i64 0, i64 4, !dbg !189
  store i64 5840696475078001361, i64* %15, align 8, !dbg !190
  %16 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !191
  %17 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 5, !dbg !192
  store i64 -7276294671716946913, i64* %17, align 8, !dbg !193
  %18 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !194
  %19 = getelementptr inbounds [8 x i64], [8 x i64]* %18, i64 0, i64 6, !dbg !195
  store i64 2270897969802886507, i64* %19, align 8, !dbg !196
  %20 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !197
  %21 = getelementptr inbounds [8 x i64], [8 x i64]* %20, i64 0, i64 7, !dbg !198
  store i64 6620516959819538809, i64* %21, align 8, !dbg !199
  ret i32 0, !dbg !200
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha512_update(%struct.crypto_hash_sha512_state* %0, i8* %1, i64 %2) #0 !dbg !201 {
  %4 = alloca [2 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha512_state* %0, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i8* %1, metadata !206, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %2, metadata !207, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata [2 x i64]* %4, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i8* %1, metadata !210, metadata !DIExpression()), !dbg !205
  %5 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 1, !dbg !211
  %6 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1, !dbg !212
  %7 = load i64, i64* %6, align 8, !dbg !212
  %8 = lshr i64 %7, 3, !dbg !213
  %9 = and i64 %8, 127, !dbg !214
  call void @llvm.dbg.value(metadata i64 %9, metadata !215, metadata !DIExpression()), !dbg !205
  %10 = shl i64 %2, 3, !dbg !216
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1, !dbg !217
  store i64 %10, i64* %11, align 8, !dbg !218
  %12 = lshr i64 %2, 61, !dbg !219
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0, !dbg !220
  store i64 %12, i64* %13, align 16, !dbg !221
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1, !dbg !222
  %15 = load i64, i64* %14, align 8, !dbg !222
  %16 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 1, !dbg !224
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 1, !dbg !225
  %18 = load i64, i64* %17, align 8, !dbg !226
  %19 = add i64 %18, %15, !dbg !226
  store i64 %19, i64* %17, align 8, !dbg !226
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1, !dbg !227
  %21 = load i64, i64* %20, align 8, !dbg !227
  %22 = icmp ult i64 %19, %21, !dbg !228
  br i1 %22, label %23, label %28, !dbg !229

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 1, !dbg !230
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 0, !dbg !232
  %26 = load i64, i64* %25, align 8, !dbg !233
  %27 = add i64 %26, 1, !dbg !233
  store i64 %27, i64* %25, align 8, !dbg !233
  br label %28, !dbg !234

28:                                               ; preds = %23, %3
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0, !dbg !235
  %30 = load i64, i64* %29, align 16, !dbg !235
  %31 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 1, !dbg !236
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %31, i64 0, i64 0, !dbg !237
  %33 = load i64, i64* %32, align 8, !dbg !238
  %34 = add i64 %33, %30, !dbg !238
  store i64 %34, i64* %32, align 8, !dbg !238
  %35 = sub i64 128, %9, !dbg !239
  %36 = icmp ult i64 %2, %35, !dbg !241
  br i1 %36, label %37, label %40, !dbg !242

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 2, !dbg !243
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %38, i64 0, i64 %9, !dbg !245
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %1, i64 %2, i1 false), !dbg !246
  br label %62, !dbg !247

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 2, !dbg !248
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %41, i64 0, i64 %9, !dbg !249
  %43 = sub i64 128, %9, !dbg !250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %42, i8* align 1 %1, i64 %43, i1 false), !dbg !251
  %44 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !252
  %45 = getelementptr inbounds [8 x i64], [8 x i64]* %44, i64 0, i64 0, !dbg !253
  %46 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 2, !dbg !254
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %46, i64 0, i64 0, !dbg !255
  call void @SHA512_Transform(i64* %45, i8* %47), !dbg !256
  %48 = sub i64 128, %9, !dbg !257
  %49 = getelementptr inbounds i8, i8* %1, i64 %48, !dbg !258
  call void @llvm.dbg.value(metadata i8* %49, metadata !210, metadata !DIExpression()), !dbg !205
  %50 = sub i64 128, %9, !dbg !259
  %51 = sub i64 %2, %50, !dbg !260
  call void @llvm.dbg.value(metadata i64 %51, metadata !207, metadata !DIExpression()), !dbg !205
  br label %52, !dbg !261

52:                                               ; preds = %54, %40
  %.02 = phi i64 [ %51, %40 ], [ %58, %54 ], !dbg !205
  %.01 = phi i8* [ %49, %40 ], [ %57, %54 ], !dbg !205
  call void @llvm.dbg.value(metadata i8* %.01, metadata !210, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i64 %.02, metadata !207, metadata !DIExpression()), !dbg !205
  %53 = icmp uge i64 %.02, 128, !dbg !262
  br i1 %53, label %54, label %59, !dbg !261

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !263
  %56 = getelementptr inbounds [8 x i64], [8 x i64]* %55, i64 0, i64 0, !dbg !265
  call void @SHA512_Transform(i64* %56, i8* %.01), !dbg !266
  %57 = getelementptr inbounds i8, i8* %.01, i64 128, !dbg !267
  call void @llvm.dbg.value(metadata i8* %57, metadata !210, metadata !DIExpression()), !dbg !205
  %58 = sub i64 %.02, 128, !dbg !268
  call void @llvm.dbg.value(metadata i64 %58, metadata !207, metadata !DIExpression()), !dbg !205
  br label %52, !dbg !261, !llvm.loop !269

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 2, !dbg !272
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %60, i64 0, i64 0, !dbg !273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 1 %.01, i64 %.02, i1 false), !dbg !273
  br label %62, !dbg !274

62:                                               ; preds = %59, %37
  ret i32 0, !dbg !275
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @SHA512_Transform(i64* %0, i8* %1) #0 !dbg !276 {
  %3 = alloca [80 x i64], align 16
  %4 = alloca [8 x i64], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64* %0, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i8* %1, metadata !282, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata [80 x i64]* %3, metadata !283, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata [8 x i64]* %4, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i64* %5, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i64* %6, metadata !292, metadata !DIExpression()), !dbg !293
  %7 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 0, !dbg !294
  call void @be64dec_vect(i64* %7, i8* %1, i64 128), !dbg !295
  call void @llvm.dbg.value(metadata i32 16, metadata !296, metadata !DIExpression()), !dbg !281
  br label %8, !dbg !297

8:                                                ; preds = %82, %2
  %.0 = phi i32 [ 16, %2 ], [ %83, %82 ], !dbg !299
  call void @llvm.dbg.value(metadata i32 %.0, metadata !296, metadata !DIExpression()), !dbg !281
  %9 = icmp slt i32 %.0, 80, !dbg !300
  br i1 %9, label %10, label %84, !dbg !302

10:                                               ; preds = %8
  %11 = sub nsw i32 %.0, 2, !dbg !303
  %12 = sext i32 %11 to i64, !dbg !303
  %13 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %12, !dbg !303
  %14 = load i64, i64* %13, align 8, !dbg !303
  %15 = lshr i64 %14, 19, !dbg !303
  %16 = sub nsw i32 %.0, 2, !dbg !303
  %17 = sext i32 %16 to i64, !dbg !303
  %18 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %17, !dbg !303
  %19 = load i64, i64* %18, align 8, !dbg !303
  %20 = shl i64 %19, 45, !dbg !303
  %21 = or i64 %15, %20, !dbg !303
  %22 = sub nsw i32 %.0, 2, !dbg !303
  %23 = sext i32 %22 to i64, !dbg !303
  %24 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %23, !dbg !303
  %25 = load i64, i64* %24, align 8, !dbg !303
  %26 = lshr i64 %25, 61, !dbg !303
  %27 = sub nsw i32 %.0, 2, !dbg !303
  %28 = sext i32 %27 to i64, !dbg !303
  %29 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %28, !dbg !303
  %30 = load i64, i64* %29, align 8, !dbg !303
  %31 = shl i64 %30, 3, !dbg !303
  %32 = or i64 %26, %31, !dbg !303
  %33 = xor i64 %21, %32, !dbg !303
  %34 = sub nsw i32 %.0, 2, !dbg !303
  %35 = sext i32 %34 to i64, !dbg !303
  %36 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %35, !dbg !303
  %37 = load i64, i64* %36, align 8, !dbg !303
  %38 = lshr i64 %37, 6, !dbg !303
  %39 = xor i64 %33, %38, !dbg !303
  %40 = sub nsw i32 %.0, 7, !dbg !305
  %41 = sext i32 %40 to i64, !dbg !306
  %42 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %41, !dbg !306
  %43 = load i64, i64* %42, align 8, !dbg !306
  %44 = add i64 %39, %43, !dbg !307
  %45 = sub nsw i32 %.0, 15, !dbg !308
  %46 = sext i32 %45 to i64, !dbg !308
  %47 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %46, !dbg !308
  %48 = load i64, i64* %47, align 8, !dbg !308
  %49 = lshr i64 %48, 1, !dbg !308
  %50 = sub nsw i32 %.0, 15, !dbg !308
  %51 = sext i32 %50 to i64, !dbg !308
  %52 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %51, !dbg !308
  %53 = load i64, i64* %52, align 8, !dbg !308
  %54 = shl i64 %53, 63, !dbg !308
  %55 = or i64 %49, %54, !dbg !308
  %56 = sub nsw i32 %.0, 15, !dbg !308
  %57 = sext i32 %56 to i64, !dbg !308
  %58 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %57, !dbg !308
  %59 = load i64, i64* %58, align 8, !dbg !308
  %60 = lshr i64 %59, 8, !dbg !308
  %61 = sub nsw i32 %.0, 15, !dbg !308
  %62 = sext i32 %61 to i64, !dbg !308
  %63 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %62, !dbg !308
  %64 = load i64, i64* %63, align 8, !dbg !308
  %65 = shl i64 %64, 56, !dbg !308
  %66 = or i64 %60, %65, !dbg !308
  %67 = xor i64 %55, %66, !dbg !308
  %68 = sub nsw i32 %.0, 15, !dbg !308
  %69 = sext i32 %68 to i64, !dbg !308
  %70 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %69, !dbg !308
  %71 = load i64, i64* %70, align 8, !dbg !308
  %72 = lshr i64 %71, 7, !dbg !308
  %73 = xor i64 %67, %72, !dbg !308
  %74 = add i64 %44, %73, !dbg !309
  %75 = sub nsw i32 %.0, 16, !dbg !310
  %76 = sext i32 %75 to i64, !dbg !311
  %77 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %76, !dbg !311
  %78 = load i64, i64* %77, align 8, !dbg !311
  %79 = add i64 %74, %78, !dbg !312
  %80 = sext i32 %.0 to i64, !dbg !313
  %81 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 %80, !dbg !313
  store i64 %79, i64* %81, align 8, !dbg !314
  br label %82, !dbg !315

82:                                               ; preds = %10
  %83 = add nsw i32 %.0, 1, !dbg !316
  call void @llvm.dbg.value(metadata i32 %83, metadata !296, metadata !DIExpression()), !dbg !281
  br label %8, !dbg !317, !llvm.loop !318

84:                                               ; preds = %8
  %85 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !320
  %86 = bitcast i64* %85 to i8*, !dbg !320
  %87 = bitcast i64* %0 to i8*, !dbg !320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %86, i8* align 8 %87, i64 64, i1 false), !dbg !320
  %88 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !321
  %89 = load i64, i64* %88, align 8, !dbg !321
  %90 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !321
  %91 = load i64, i64* %90, align 16, !dbg !321
  %92 = lshr i64 %91, 14, !dbg !321
  %93 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !321
  %94 = load i64, i64* %93, align 16, !dbg !321
  %95 = shl i64 %94, 50, !dbg !321
  %96 = or i64 %92, %95, !dbg !321
  %97 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !321
  %98 = load i64, i64* %97, align 16, !dbg !321
  %99 = lshr i64 %98, 18, !dbg !321
  %100 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !321
  %101 = load i64, i64* %100, align 16, !dbg !321
  %102 = shl i64 %101, 46, !dbg !321
  %103 = or i64 %99, %102, !dbg !321
  %104 = xor i64 %96, %103, !dbg !321
  %105 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !321
  %106 = load i64, i64* %105, align 16, !dbg !321
  %107 = lshr i64 %106, 41, !dbg !321
  %108 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !321
  %109 = load i64, i64* %108, align 16, !dbg !321
  %110 = shl i64 %109, 23, !dbg !321
  %111 = or i64 %107, %110, !dbg !321
  %112 = xor i64 %104, %111, !dbg !321
  %113 = add i64 %89, %112, !dbg !321
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !321
  %115 = load i64, i64* %114, align 16, !dbg !321
  %116 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !321
  %117 = load i64, i64* %116, align 8, !dbg !321
  %118 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !321
  %119 = load i64, i64* %118, align 16, !dbg !321
  %120 = xor i64 %117, %119, !dbg !321
  %121 = and i64 %115, %120, !dbg !321
  %122 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !321
  %123 = load i64, i64* %122, align 16, !dbg !321
  %124 = xor i64 %121, %123, !dbg !321
  %125 = add i64 %113, %124, !dbg !321
  %126 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 0, !dbg !321
  %127 = load i64, i64* %126, align 16, !dbg !321
  %128 = add i64 %125, %127, !dbg !321
  %129 = add i64 %128, 4794697086780616226, !dbg !321
  store i64 %129, i64* %5, align 8, !dbg !321
  %130 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !321
  %131 = load i64, i64* %130, align 16, !dbg !321
  %132 = lshr i64 %131, 28, !dbg !321
  %133 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !321
  %134 = load i64, i64* %133, align 16, !dbg !321
  %135 = shl i64 %134, 36, !dbg !321
  %136 = or i64 %132, %135, !dbg !321
  %137 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !321
  %138 = load i64, i64* %137, align 16, !dbg !321
  %139 = lshr i64 %138, 34, !dbg !321
  %140 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !321
  %141 = load i64, i64* %140, align 16, !dbg !321
  %142 = shl i64 %141, 30, !dbg !321
  %143 = or i64 %139, %142, !dbg !321
  %144 = xor i64 %136, %143, !dbg !321
  %145 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !321
  %146 = load i64, i64* %145, align 16, !dbg !321
  %147 = lshr i64 %146, 39, !dbg !321
  %148 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !321
  %149 = load i64, i64* %148, align 16, !dbg !321
  %150 = shl i64 %149, 25, !dbg !321
  %151 = or i64 %147, %150, !dbg !321
  %152 = xor i64 %144, %151, !dbg !321
  %153 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !321
  %154 = load i64, i64* %153, align 16, !dbg !321
  %155 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !321
  %156 = load i64, i64* %155, align 8, !dbg !321
  %157 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !321
  %158 = load i64, i64* %157, align 16, !dbg !321
  %159 = or i64 %156, %158, !dbg !321
  %160 = and i64 %154, %159, !dbg !321
  %161 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !321
  %162 = load i64, i64* %161, align 8, !dbg !321
  %163 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !321
  %164 = load i64, i64* %163, align 16, !dbg !321
  %165 = and i64 %162, %164, !dbg !321
  %166 = or i64 %160, %165, !dbg !321
  %167 = add i64 %152, %166, !dbg !321
  store i64 %167, i64* %6, align 8, !dbg !321
  %168 = load i64, i64* %5, align 8, !dbg !321
  %169 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !321
  %170 = load i64, i64* %169, align 8, !dbg !321
  %171 = add i64 %170, %168, !dbg !321
  store i64 %171, i64* %169, align 8, !dbg !321
  %172 = load i64, i64* %5, align 8, !dbg !321
  %173 = load i64, i64* %6, align 8, !dbg !321
  %174 = add i64 %172, %173, !dbg !321
  %175 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !321
  store i64 %174, i64* %175, align 8, !dbg !321
  %176 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !322
  %177 = load i64, i64* %176, align 16, !dbg !322
  %178 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !322
  %179 = load i64, i64* %178, align 8, !dbg !322
  %180 = lshr i64 %179, 14, !dbg !322
  %181 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !322
  %182 = load i64, i64* %181, align 8, !dbg !322
  %183 = shl i64 %182, 50, !dbg !322
  %184 = or i64 %180, %183, !dbg !322
  %185 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !322
  %186 = load i64, i64* %185, align 8, !dbg !322
  %187 = lshr i64 %186, 18, !dbg !322
  %188 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !322
  %189 = load i64, i64* %188, align 8, !dbg !322
  %190 = shl i64 %189, 46, !dbg !322
  %191 = or i64 %187, %190, !dbg !322
  %192 = xor i64 %184, %191, !dbg !322
  %193 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !322
  %194 = load i64, i64* %193, align 8, !dbg !322
  %195 = lshr i64 %194, 41, !dbg !322
  %196 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !322
  %197 = load i64, i64* %196, align 8, !dbg !322
  %198 = shl i64 %197, 23, !dbg !322
  %199 = or i64 %195, %198, !dbg !322
  %200 = xor i64 %192, %199, !dbg !322
  %201 = add i64 %177, %200, !dbg !322
  %202 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !322
  %203 = load i64, i64* %202, align 8, !dbg !322
  %204 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !322
  %205 = load i64, i64* %204, align 16, !dbg !322
  %206 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !322
  %207 = load i64, i64* %206, align 8, !dbg !322
  %208 = xor i64 %205, %207, !dbg !322
  %209 = and i64 %203, %208, !dbg !322
  %210 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !322
  %211 = load i64, i64* %210, align 8, !dbg !322
  %212 = xor i64 %209, %211, !dbg !322
  %213 = add i64 %201, %212, !dbg !322
  %214 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 1, !dbg !322
  %215 = load i64, i64* %214, align 8, !dbg !322
  %216 = add i64 %213, %215, !dbg !322
  %217 = add i64 %216, 8158064640168781261, !dbg !322
  store i64 %217, i64* %5, align 8, !dbg !322
  %218 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !322
  %219 = load i64, i64* %218, align 8, !dbg !322
  %220 = lshr i64 %219, 28, !dbg !322
  %221 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !322
  %222 = load i64, i64* %221, align 8, !dbg !322
  %223 = shl i64 %222, 36, !dbg !322
  %224 = or i64 %220, %223, !dbg !322
  %225 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !322
  %226 = load i64, i64* %225, align 8, !dbg !322
  %227 = lshr i64 %226, 34, !dbg !322
  %228 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !322
  %229 = load i64, i64* %228, align 8, !dbg !322
  %230 = shl i64 %229, 30, !dbg !322
  %231 = or i64 %227, %230, !dbg !322
  %232 = xor i64 %224, %231, !dbg !322
  %233 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !322
  %234 = load i64, i64* %233, align 8, !dbg !322
  %235 = lshr i64 %234, 39, !dbg !322
  %236 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !322
  %237 = load i64, i64* %236, align 8, !dbg !322
  %238 = shl i64 %237, 25, !dbg !322
  %239 = or i64 %235, %238, !dbg !322
  %240 = xor i64 %232, %239, !dbg !322
  %241 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !322
  %242 = load i64, i64* %241, align 8, !dbg !322
  %243 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !322
  %244 = load i64, i64* %243, align 16, !dbg !322
  %245 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !322
  %246 = load i64, i64* %245, align 8, !dbg !322
  %247 = or i64 %244, %246, !dbg !322
  %248 = and i64 %242, %247, !dbg !322
  %249 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !322
  %250 = load i64, i64* %249, align 16, !dbg !322
  %251 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !322
  %252 = load i64, i64* %251, align 8, !dbg !322
  %253 = and i64 %250, %252, !dbg !322
  %254 = or i64 %248, %253, !dbg !322
  %255 = add i64 %240, %254, !dbg !322
  store i64 %255, i64* %6, align 8, !dbg !322
  %256 = load i64, i64* %5, align 8, !dbg !322
  %257 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !322
  %258 = load i64, i64* %257, align 16, !dbg !322
  %259 = add i64 %258, %256, !dbg !322
  store i64 %259, i64* %257, align 16, !dbg !322
  %260 = load i64, i64* %5, align 8, !dbg !322
  %261 = load i64, i64* %6, align 8, !dbg !322
  %262 = add i64 %260, %261, !dbg !322
  %263 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !322
  store i64 %262, i64* %263, align 16, !dbg !322
  %264 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !323
  %265 = load i64, i64* %264, align 8, !dbg !323
  %266 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !323
  %267 = load i64, i64* %266, align 16, !dbg !323
  %268 = lshr i64 %267, 14, !dbg !323
  %269 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !323
  %270 = load i64, i64* %269, align 16, !dbg !323
  %271 = shl i64 %270, 50, !dbg !323
  %272 = or i64 %268, %271, !dbg !323
  %273 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !323
  %274 = load i64, i64* %273, align 16, !dbg !323
  %275 = lshr i64 %274, 18, !dbg !323
  %276 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !323
  %277 = load i64, i64* %276, align 16, !dbg !323
  %278 = shl i64 %277, 46, !dbg !323
  %279 = or i64 %275, %278, !dbg !323
  %280 = xor i64 %272, %279, !dbg !323
  %281 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !323
  %282 = load i64, i64* %281, align 16, !dbg !323
  %283 = lshr i64 %282, 41, !dbg !323
  %284 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !323
  %285 = load i64, i64* %284, align 16, !dbg !323
  %286 = shl i64 %285, 23, !dbg !323
  %287 = or i64 %283, %286, !dbg !323
  %288 = xor i64 %280, %287, !dbg !323
  %289 = add i64 %265, %288, !dbg !323
  %290 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !323
  %291 = load i64, i64* %290, align 16, !dbg !323
  %292 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !323
  %293 = load i64, i64* %292, align 8, !dbg !323
  %294 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !323
  %295 = load i64, i64* %294, align 16, !dbg !323
  %296 = xor i64 %293, %295, !dbg !323
  %297 = and i64 %291, %296, !dbg !323
  %298 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !323
  %299 = load i64, i64* %298, align 16, !dbg !323
  %300 = xor i64 %297, %299, !dbg !323
  %301 = add i64 %289, %300, !dbg !323
  %302 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 2, !dbg !323
  %303 = load i64, i64* %302, align 16, !dbg !323
  %304 = add i64 %301, %303, !dbg !323
  %305 = add i64 %304, -5349999486874862801, !dbg !323
  store i64 %305, i64* %5, align 8, !dbg !323
  %306 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !323
  %307 = load i64, i64* %306, align 16, !dbg !323
  %308 = lshr i64 %307, 28, !dbg !323
  %309 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !323
  %310 = load i64, i64* %309, align 16, !dbg !323
  %311 = shl i64 %310, 36, !dbg !323
  %312 = or i64 %308, %311, !dbg !323
  %313 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !323
  %314 = load i64, i64* %313, align 16, !dbg !323
  %315 = lshr i64 %314, 34, !dbg !323
  %316 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !323
  %317 = load i64, i64* %316, align 16, !dbg !323
  %318 = shl i64 %317, 30, !dbg !323
  %319 = or i64 %315, %318, !dbg !323
  %320 = xor i64 %312, %319, !dbg !323
  %321 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !323
  %322 = load i64, i64* %321, align 16, !dbg !323
  %323 = lshr i64 %322, 39, !dbg !323
  %324 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !323
  %325 = load i64, i64* %324, align 16, !dbg !323
  %326 = shl i64 %325, 25, !dbg !323
  %327 = or i64 %323, %326, !dbg !323
  %328 = xor i64 %320, %327, !dbg !323
  %329 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !323
  %330 = load i64, i64* %329, align 16, !dbg !323
  %331 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !323
  %332 = load i64, i64* %331, align 8, !dbg !323
  %333 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !323
  %334 = load i64, i64* %333, align 16, !dbg !323
  %335 = or i64 %332, %334, !dbg !323
  %336 = and i64 %330, %335, !dbg !323
  %337 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !323
  %338 = load i64, i64* %337, align 8, !dbg !323
  %339 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !323
  %340 = load i64, i64* %339, align 16, !dbg !323
  %341 = and i64 %338, %340, !dbg !323
  %342 = or i64 %336, %341, !dbg !323
  %343 = add i64 %328, %342, !dbg !323
  store i64 %343, i64* %6, align 8, !dbg !323
  %344 = load i64, i64* %5, align 8, !dbg !323
  %345 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !323
  %346 = load i64, i64* %345, align 8, !dbg !323
  %347 = add i64 %346, %344, !dbg !323
  store i64 %347, i64* %345, align 8, !dbg !323
  %348 = load i64, i64* %5, align 8, !dbg !323
  %349 = load i64, i64* %6, align 8, !dbg !323
  %350 = add i64 %348, %349, !dbg !323
  %351 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !323
  store i64 %350, i64* %351, align 8, !dbg !323
  %352 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !324
  %353 = load i64, i64* %352, align 16, !dbg !324
  %354 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !324
  %355 = load i64, i64* %354, align 8, !dbg !324
  %356 = lshr i64 %355, 14, !dbg !324
  %357 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !324
  %358 = load i64, i64* %357, align 8, !dbg !324
  %359 = shl i64 %358, 50, !dbg !324
  %360 = or i64 %356, %359, !dbg !324
  %361 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !324
  %362 = load i64, i64* %361, align 8, !dbg !324
  %363 = lshr i64 %362, 18, !dbg !324
  %364 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !324
  %365 = load i64, i64* %364, align 8, !dbg !324
  %366 = shl i64 %365, 46, !dbg !324
  %367 = or i64 %363, %366, !dbg !324
  %368 = xor i64 %360, %367, !dbg !324
  %369 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !324
  %370 = load i64, i64* %369, align 8, !dbg !324
  %371 = lshr i64 %370, 41, !dbg !324
  %372 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !324
  %373 = load i64, i64* %372, align 8, !dbg !324
  %374 = shl i64 %373, 23, !dbg !324
  %375 = or i64 %371, %374, !dbg !324
  %376 = xor i64 %368, %375, !dbg !324
  %377 = add i64 %353, %376, !dbg !324
  %378 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !324
  %379 = load i64, i64* %378, align 8, !dbg !324
  %380 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !324
  %381 = load i64, i64* %380, align 16, !dbg !324
  %382 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !324
  %383 = load i64, i64* %382, align 8, !dbg !324
  %384 = xor i64 %381, %383, !dbg !324
  %385 = and i64 %379, %384, !dbg !324
  %386 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !324
  %387 = load i64, i64* %386, align 8, !dbg !324
  %388 = xor i64 %385, %387, !dbg !324
  %389 = add i64 %377, %388, !dbg !324
  %390 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 3, !dbg !324
  %391 = load i64, i64* %390, align 8, !dbg !324
  %392 = add i64 %389, %391, !dbg !324
  %393 = add i64 %392, -1606136188198331460, !dbg !324
  store i64 %393, i64* %5, align 8, !dbg !324
  %394 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !324
  %395 = load i64, i64* %394, align 8, !dbg !324
  %396 = lshr i64 %395, 28, !dbg !324
  %397 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !324
  %398 = load i64, i64* %397, align 8, !dbg !324
  %399 = shl i64 %398, 36, !dbg !324
  %400 = or i64 %396, %399, !dbg !324
  %401 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !324
  %402 = load i64, i64* %401, align 8, !dbg !324
  %403 = lshr i64 %402, 34, !dbg !324
  %404 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !324
  %405 = load i64, i64* %404, align 8, !dbg !324
  %406 = shl i64 %405, 30, !dbg !324
  %407 = or i64 %403, %406, !dbg !324
  %408 = xor i64 %400, %407, !dbg !324
  %409 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !324
  %410 = load i64, i64* %409, align 8, !dbg !324
  %411 = lshr i64 %410, 39, !dbg !324
  %412 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !324
  %413 = load i64, i64* %412, align 8, !dbg !324
  %414 = shl i64 %413, 25, !dbg !324
  %415 = or i64 %411, %414, !dbg !324
  %416 = xor i64 %408, %415, !dbg !324
  %417 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !324
  %418 = load i64, i64* %417, align 8, !dbg !324
  %419 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !324
  %420 = load i64, i64* %419, align 16, !dbg !324
  %421 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !324
  %422 = load i64, i64* %421, align 8, !dbg !324
  %423 = or i64 %420, %422, !dbg !324
  %424 = and i64 %418, %423, !dbg !324
  %425 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !324
  %426 = load i64, i64* %425, align 16, !dbg !324
  %427 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !324
  %428 = load i64, i64* %427, align 8, !dbg !324
  %429 = and i64 %426, %428, !dbg !324
  %430 = or i64 %424, %429, !dbg !324
  %431 = add i64 %416, %430, !dbg !324
  store i64 %431, i64* %6, align 8, !dbg !324
  %432 = load i64, i64* %5, align 8, !dbg !324
  %433 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !324
  %434 = load i64, i64* %433, align 16, !dbg !324
  %435 = add i64 %434, %432, !dbg !324
  store i64 %435, i64* %433, align 16, !dbg !324
  %436 = load i64, i64* %5, align 8, !dbg !324
  %437 = load i64, i64* %6, align 8, !dbg !324
  %438 = add i64 %436, %437, !dbg !324
  %439 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !324
  store i64 %438, i64* %439, align 16, !dbg !324
  %440 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !325
  %441 = load i64, i64* %440, align 8, !dbg !325
  %442 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !325
  %443 = load i64, i64* %442, align 16, !dbg !325
  %444 = lshr i64 %443, 14, !dbg !325
  %445 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !325
  %446 = load i64, i64* %445, align 16, !dbg !325
  %447 = shl i64 %446, 50, !dbg !325
  %448 = or i64 %444, %447, !dbg !325
  %449 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !325
  %450 = load i64, i64* %449, align 16, !dbg !325
  %451 = lshr i64 %450, 18, !dbg !325
  %452 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !325
  %453 = load i64, i64* %452, align 16, !dbg !325
  %454 = shl i64 %453, 46, !dbg !325
  %455 = or i64 %451, %454, !dbg !325
  %456 = xor i64 %448, %455, !dbg !325
  %457 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !325
  %458 = load i64, i64* %457, align 16, !dbg !325
  %459 = lshr i64 %458, 41, !dbg !325
  %460 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !325
  %461 = load i64, i64* %460, align 16, !dbg !325
  %462 = shl i64 %461, 23, !dbg !325
  %463 = or i64 %459, %462, !dbg !325
  %464 = xor i64 %456, %463, !dbg !325
  %465 = add i64 %441, %464, !dbg !325
  %466 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !325
  %467 = load i64, i64* %466, align 16, !dbg !325
  %468 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !325
  %469 = load i64, i64* %468, align 8, !dbg !325
  %470 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !325
  %471 = load i64, i64* %470, align 16, !dbg !325
  %472 = xor i64 %469, %471, !dbg !325
  %473 = and i64 %467, %472, !dbg !325
  %474 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !325
  %475 = load i64, i64* %474, align 16, !dbg !325
  %476 = xor i64 %473, %475, !dbg !325
  %477 = add i64 %465, %476, !dbg !325
  %478 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 4, !dbg !325
  %479 = load i64, i64* %478, align 16, !dbg !325
  %480 = add i64 %477, %479, !dbg !325
  %481 = add i64 %480, 4131703408338449720, !dbg !325
  store i64 %481, i64* %5, align 8, !dbg !325
  %482 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !325
  %483 = load i64, i64* %482, align 16, !dbg !325
  %484 = lshr i64 %483, 28, !dbg !325
  %485 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !325
  %486 = load i64, i64* %485, align 16, !dbg !325
  %487 = shl i64 %486, 36, !dbg !325
  %488 = or i64 %484, %487, !dbg !325
  %489 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !325
  %490 = load i64, i64* %489, align 16, !dbg !325
  %491 = lshr i64 %490, 34, !dbg !325
  %492 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !325
  %493 = load i64, i64* %492, align 16, !dbg !325
  %494 = shl i64 %493, 30, !dbg !325
  %495 = or i64 %491, %494, !dbg !325
  %496 = xor i64 %488, %495, !dbg !325
  %497 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !325
  %498 = load i64, i64* %497, align 16, !dbg !325
  %499 = lshr i64 %498, 39, !dbg !325
  %500 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !325
  %501 = load i64, i64* %500, align 16, !dbg !325
  %502 = shl i64 %501, 25, !dbg !325
  %503 = or i64 %499, %502, !dbg !325
  %504 = xor i64 %496, %503, !dbg !325
  %505 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !325
  %506 = load i64, i64* %505, align 16, !dbg !325
  %507 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !325
  %508 = load i64, i64* %507, align 8, !dbg !325
  %509 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !325
  %510 = load i64, i64* %509, align 16, !dbg !325
  %511 = or i64 %508, %510, !dbg !325
  %512 = and i64 %506, %511, !dbg !325
  %513 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !325
  %514 = load i64, i64* %513, align 8, !dbg !325
  %515 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !325
  %516 = load i64, i64* %515, align 16, !dbg !325
  %517 = and i64 %514, %516, !dbg !325
  %518 = or i64 %512, %517, !dbg !325
  %519 = add i64 %504, %518, !dbg !325
  store i64 %519, i64* %6, align 8, !dbg !325
  %520 = load i64, i64* %5, align 8, !dbg !325
  %521 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !325
  %522 = load i64, i64* %521, align 8, !dbg !325
  %523 = add i64 %522, %520, !dbg !325
  store i64 %523, i64* %521, align 8, !dbg !325
  %524 = load i64, i64* %5, align 8, !dbg !325
  %525 = load i64, i64* %6, align 8, !dbg !325
  %526 = add i64 %524, %525, !dbg !325
  %527 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !325
  store i64 %526, i64* %527, align 8, !dbg !325
  %528 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !326
  %529 = load i64, i64* %528, align 16, !dbg !326
  %530 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !326
  %531 = load i64, i64* %530, align 8, !dbg !326
  %532 = lshr i64 %531, 14, !dbg !326
  %533 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !326
  %534 = load i64, i64* %533, align 8, !dbg !326
  %535 = shl i64 %534, 50, !dbg !326
  %536 = or i64 %532, %535, !dbg !326
  %537 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !326
  %538 = load i64, i64* %537, align 8, !dbg !326
  %539 = lshr i64 %538, 18, !dbg !326
  %540 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !326
  %541 = load i64, i64* %540, align 8, !dbg !326
  %542 = shl i64 %541, 46, !dbg !326
  %543 = or i64 %539, %542, !dbg !326
  %544 = xor i64 %536, %543, !dbg !326
  %545 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !326
  %546 = load i64, i64* %545, align 8, !dbg !326
  %547 = lshr i64 %546, 41, !dbg !326
  %548 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !326
  %549 = load i64, i64* %548, align 8, !dbg !326
  %550 = shl i64 %549, 23, !dbg !326
  %551 = or i64 %547, %550, !dbg !326
  %552 = xor i64 %544, %551, !dbg !326
  %553 = add i64 %529, %552, !dbg !326
  %554 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !326
  %555 = load i64, i64* %554, align 8, !dbg !326
  %556 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !326
  %557 = load i64, i64* %556, align 16, !dbg !326
  %558 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !326
  %559 = load i64, i64* %558, align 8, !dbg !326
  %560 = xor i64 %557, %559, !dbg !326
  %561 = and i64 %555, %560, !dbg !326
  %562 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !326
  %563 = load i64, i64* %562, align 8, !dbg !326
  %564 = xor i64 %561, %563, !dbg !326
  %565 = add i64 %553, %564, !dbg !326
  %566 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 5, !dbg !326
  %567 = load i64, i64* %566, align 8, !dbg !326
  %568 = add i64 %565, %567, !dbg !326
  %569 = add i64 %568, 6480981068601479193, !dbg !326
  store i64 %569, i64* %5, align 8, !dbg !326
  %570 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !326
  %571 = load i64, i64* %570, align 8, !dbg !326
  %572 = lshr i64 %571, 28, !dbg !326
  %573 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !326
  %574 = load i64, i64* %573, align 8, !dbg !326
  %575 = shl i64 %574, 36, !dbg !326
  %576 = or i64 %572, %575, !dbg !326
  %577 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !326
  %578 = load i64, i64* %577, align 8, !dbg !326
  %579 = lshr i64 %578, 34, !dbg !326
  %580 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !326
  %581 = load i64, i64* %580, align 8, !dbg !326
  %582 = shl i64 %581, 30, !dbg !326
  %583 = or i64 %579, %582, !dbg !326
  %584 = xor i64 %576, %583, !dbg !326
  %585 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !326
  %586 = load i64, i64* %585, align 8, !dbg !326
  %587 = lshr i64 %586, 39, !dbg !326
  %588 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !326
  %589 = load i64, i64* %588, align 8, !dbg !326
  %590 = shl i64 %589, 25, !dbg !326
  %591 = or i64 %587, %590, !dbg !326
  %592 = xor i64 %584, %591, !dbg !326
  %593 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !326
  %594 = load i64, i64* %593, align 8, !dbg !326
  %595 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !326
  %596 = load i64, i64* %595, align 16, !dbg !326
  %597 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !326
  %598 = load i64, i64* %597, align 8, !dbg !326
  %599 = or i64 %596, %598, !dbg !326
  %600 = and i64 %594, %599, !dbg !326
  %601 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !326
  %602 = load i64, i64* %601, align 16, !dbg !326
  %603 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !326
  %604 = load i64, i64* %603, align 8, !dbg !326
  %605 = and i64 %602, %604, !dbg !326
  %606 = or i64 %600, %605, !dbg !326
  %607 = add i64 %592, %606, !dbg !326
  store i64 %607, i64* %6, align 8, !dbg !326
  %608 = load i64, i64* %5, align 8, !dbg !326
  %609 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !326
  %610 = load i64, i64* %609, align 16, !dbg !326
  %611 = add i64 %610, %608, !dbg !326
  store i64 %611, i64* %609, align 16, !dbg !326
  %612 = load i64, i64* %5, align 8, !dbg !326
  %613 = load i64, i64* %6, align 8, !dbg !326
  %614 = add i64 %612, %613, !dbg !326
  %615 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !326
  store i64 %614, i64* %615, align 16, !dbg !326
  %616 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !327
  %617 = load i64, i64* %616, align 8, !dbg !327
  %618 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !327
  %619 = load i64, i64* %618, align 16, !dbg !327
  %620 = lshr i64 %619, 14, !dbg !327
  %621 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !327
  %622 = load i64, i64* %621, align 16, !dbg !327
  %623 = shl i64 %622, 50, !dbg !327
  %624 = or i64 %620, %623, !dbg !327
  %625 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !327
  %626 = load i64, i64* %625, align 16, !dbg !327
  %627 = lshr i64 %626, 18, !dbg !327
  %628 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !327
  %629 = load i64, i64* %628, align 16, !dbg !327
  %630 = shl i64 %629, 46, !dbg !327
  %631 = or i64 %627, %630, !dbg !327
  %632 = xor i64 %624, %631, !dbg !327
  %633 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !327
  %634 = load i64, i64* %633, align 16, !dbg !327
  %635 = lshr i64 %634, 41, !dbg !327
  %636 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !327
  %637 = load i64, i64* %636, align 16, !dbg !327
  %638 = shl i64 %637, 23, !dbg !327
  %639 = or i64 %635, %638, !dbg !327
  %640 = xor i64 %632, %639, !dbg !327
  %641 = add i64 %617, %640, !dbg !327
  %642 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !327
  %643 = load i64, i64* %642, align 16, !dbg !327
  %644 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !327
  %645 = load i64, i64* %644, align 8, !dbg !327
  %646 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !327
  %647 = load i64, i64* %646, align 16, !dbg !327
  %648 = xor i64 %645, %647, !dbg !327
  %649 = and i64 %643, %648, !dbg !327
  %650 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !327
  %651 = load i64, i64* %650, align 16, !dbg !327
  %652 = xor i64 %649, %651, !dbg !327
  %653 = add i64 %641, %652, !dbg !327
  %654 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 6, !dbg !327
  %655 = load i64, i64* %654, align 16, !dbg !327
  %656 = add i64 %653, %655, !dbg !327
  %657 = add i64 %656, -7908458776815382629, !dbg !327
  store i64 %657, i64* %5, align 8, !dbg !327
  %658 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !327
  %659 = load i64, i64* %658, align 16, !dbg !327
  %660 = lshr i64 %659, 28, !dbg !327
  %661 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !327
  %662 = load i64, i64* %661, align 16, !dbg !327
  %663 = shl i64 %662, 36, !dbg !327
  %664 = or i64 %660, %663, !dbg !327
  %665 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !327
  %666 = load i64, i64* %665, align 16, !dbg !327
  %667 = lshr i64 %666, 34, !dbg !327
  %668 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !327
  %669 = load i64, i64* %668, align 16, !dbg !327
  %670 = shl i64 %669, 30, !dbg !327
  %671 = or i64 %667, %670, !dbg !327
  %672 = xor i64 %664, %671, !dbg !327
  %673 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !327
  %674 = load i64, i64* %673, align 16, !dbg !327
  %675 = lshr i64 %674, 39, !dbg !327
  %676 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !327
  %677 = load i64, i64* %676, align 16, !dbg !327
  %678 = shl i64 %677, 25, !dbg !327
  %679 = or i64 %675, %678, !dbg !327
  %680 = xor i64 %672, %679, !dbg !327
  %681 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !327
  %682 = load i64, i64* %681, align 16, !dbg !327
  %683 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !327
  %684 = load i64, i64* %683, align 8, !dbg !327
  %685 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !327
  %686 = load i64, i64* %685, align 16, !dbg !327
  %687 = or i64 %684, %686, !dbg !327
  %688 = and i64 %682, %687, !dbg !327
  %689 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !327
  %690 = load i64, i64* %689, align 8, !dbg !327
  %691 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !327
  %692 = load i64, i64* %691, align 16, !dbg !327
  %693 = and i64 %690, %692, !dbg !327
  %694 = or i64 %688, %693, !dbg !327
  %695 = add i64 %680, %694, !dbg !327
  store i64 %695, i64* %6, align 8, !dbg !327
  %696 = load i64, i64* %5, align 8, !dbg !327
  %697 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !327
  %698 = load i64, i64* %697, align 8, !dbg !327
  %699 = add i64 %698, %696, !dbg !327
  store i64 %699, i64* %697, align 8, !dbg !327
  %700 = load i64, i64* %5, align 8, !dbg !327
  %701 = load i64, i64* %6, align 8, !dbg !327
  %702 = add i64 %700, %701, !dbg !327
  %703 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !327
  store i64 %702, i64* %703, align 8, !dbg !327
  %704 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !328
  %705 = load i64, i64* %704, align 16, !dbg !328
  %706 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !328
  %707 = load i64, i64* %706, align 8, !dbg !328
  %708 = lshr i64 %707, 14, !dbg !328
  %709 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !328
  %710 = load i64, i64* %709, align 8, !dbg !328
  %711 = shl i64 %710, 50, !dbg !328
  %712 = or i64 %708, %711, !dbg !328
  %713 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !328
  %714 = load i64, i64* %713, align 8, !dbg !328
  %715 = lshr i64 %714, 18, !dbg !328
  %716 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !328
  %717 = load i64, i64* %716, align 8, !dbg !328
  %718 = shl i64 %717, 46, !dbg !328
  %719 = or i64 %715, %718, !dbg !328
  %720 = xor i64 %712, %719, !dbg !328
  %721 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !328
  %722 = load i64, i64* %721, align 8, !dbg !328
  %723 = lshr i64 %722, 41, !dbg !328
  %724 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !328
  %725 = load i64, i64* %724, align 8, !dbg !328
  %726 = shl i64 %725, 23, !dbg !328
  %727 = or i64 %723, %726, !dbg !328
  %728 = xor i64 %720, %727, !dbg !328
  %729 = add i64 %705, %728, !dbg !328
  %730 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !328
  %731 = load i64, i64* %730, align 8, !dbg !328
  %732 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !328
  %733 = load i64, i64* %732, align 16, !dbg !328
  %734 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !328
  %735 = load i64, i64* %734, align 8, !dbg !328
  %736 = xor i64 %733, %735, !dbg !328
  %737 = and i64 %731, %736, !dbg !328
  %738 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !328
  %739 = load i64, i64* %738, align 8, !dbg !328
  %740 = xor i64 %737, %739, !dbg !328
  %741 = add i64 %729, %740, !dbg !328
  %742 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 7, !dbg !328
  %743 = load i64, i64* %742, align 8, !dbg !328
  %744 = add i64 %741, %743, !dbg !328
  %745 = add i64 %744, -6116909921290321640, !dbg !328
  store i64 %745, i64* %5, align 8, !dbg !328
  %746 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !328
  %747 = load i64, i64* %746, align 8, !dbg !328
  %748 = lshr i64 %747, 28, !dbg !328
  %749 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !328
  %750 = load i64, i64* %749, align 8, !dbg !328
  %751 = shl i64 %750, 36, !dbg !328
  %752 = or i64 %748, %751, !dbg !328
  %753 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !328
  %754 = load i64, i64* %753, align 8, !dbg !328
  %755 = lshr i64 %754, 34, !dbg !328
  %756 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !328
  %757 = load i64, i64* %756, align 8, !dbg !328
  %758 = shl i64 %757, 30, !dbg !328
  %759 = or i64 %755, %758, !dbg !328
  %760 = xor i64 %752, %759, !dbg !328
  %761 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !328
  %762 = load i64, i64* %761, align 8, !dbg !328
  %763 = lshr i64 %762, 39, !dbg !328
  %764 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !328
  %765 = load i64, i64* %764, align 8, !dbg !328
  %766 = shl i64 %765, 25, !dbg !328
  %767 = or i64 %763, %766, !dbg !328
  %768 = xor i64 %760, %767, !dbg !328
  %769 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !328
  %770 = load i64, i64* %769, align 8, !dbg !328
  %771 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !328
  %772 = load i64, i64* %771, align 16, !dbg !328
  %773 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !328
  %774 = load i64, i64* %773, align 8, !dbg !328
  %775 = or i64 %772, %774, !dbg !328
  %776 = and i64 %770, %775, !dbg !328
  %777 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !328
  %778 = load i64, i64* %777, align 16, !dbg !328
  %779 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !328
  %780 = load i64, i64* %779, align 8, !dbg !328
  %781 = and i64 %778, %780, !dbg !328
  %782 = or i64 %776, %781, !dbg !328
  %783 = add i64 %768, %782, !dbg !328
  store i64 %783, i64* %6, align 8, !dbg !328
  %784 = load i64, i64* %5, align 8, !dbg !328
  %785 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !328
  %786 = load i64, i64* %785, align 16, !dbg !328
  %787 = add i64 %786, %784, !dbg !328
  store i64 %787, i64* %785, align 16, !dbg !328
  %788 = load i64, i64* %5, align 8, !dbg !328
  %789 = load i64, i64* %6, align 8, !dbg !328
  %790 = add i64 %788, %789, !dbg !328
  %791 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !328
  store i64 %790, i64* %791, align 16, !dbg !328
  %792 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !329
  %793 = load i64, i64* %792, align 8, !dbg !329
  %794 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !329
  %795 = load i64, i64* %794, align 16, !dbg !329
  %796 = lshr i64 %795, 14, !dbg !329
  %797 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !329
  %798 = load i64, i64* %797, align 16, !dbg !329
  %799 = shl i64 %798, 50, !dbg !329
  %800 = or i64 %796, %799, !dbg !329
  %801 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !329
  %802 = load i64, i64* %801, align 16, !dbg !329
  %803 = lshr i64 %802, 18, !dbg !329
  %804 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !329
  %805 = load i64, i64* %804, align 16, !dbg !329
  %806 = shl i64 %805, 46, !dbg !329
  %807 = or i64 %803, %806, !dbg !329
  %808 = xor i64 %800, %807, !dbg !329
  %809 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !329
  %810 = load i64, i64* %809, align 16, !dbg !329
  %811 = lshr i64 %810, 41, !dbg !329
  %812 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !329
  %813 = load i64, i64* %812, align 16, !dbg !329
  %814 = shl i64 %813, 23, !dbg !329
  %815 = or i64 %811, %814, !dbg !329
  %816 = xor i64 %808, %815, !dbg !329
  %817 = add i64 %793, %816, !dbg !329
  %818 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !329
  %819 = load i64, i64* %818, align 16, !dbg !329
  %820 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !329
  %821 = load i64, i64* %820, align 8, !dbg !329
  %822 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !329
  %823 = load i64, i64* %822, align 16, !dbg !329
  %824 = xor i64 %821, %823, !dbg !329
  %825 = and i64 %819, %824, !dbg !329
  %826 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !329
  %827 = load i64, i64* %826, align 16, !dbg !329
  %828 = xor i64 %825, %827, !dbg !329
  %829 = add i64 %817, %828, !dbg !329
  %830 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 8, !dbg !329
  %831 = load i64, i64* %830, align 16, !dbg !329
  %832 = add i64 %829, %831, !dbg !329
  %833 = add i64 %832, -2880145864133508542, !dbg !329
  store i64 %833, i64* %5, align 8, !dbg !329
  %834 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !329
  %835 = load i64, i64* %834, align 16, !dbg !329
  %836 = lshr i64 %835, 28, !dbg !329
  %837 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !329
  %838 = load i64, i64* %837, align 16, !dbg !329
  %839 = shl i64 %838, 36, !dbg !329
  %840 = or i64 %836, %839, !dbg !329
  %841 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !329
  %842 = load i64, i64* %841, align 16, !dbg !329
  %843 = lshr i64 %842, 34, !dbg !329
  %844 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !329
  %845 = load i64, i64* %844, align 16, !dbg !329
  %846 = shl i64 %845, 30, !dbg !329
  %847 = or i64 %843, %846, !dbg !329
  %848 = xor i64 %840, %847, !dbg !329
  %849 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !329
  %850 = load i64, i64* %849, align 16, !dbg !329
  %851 = lshr i64 %850, 39, !dbg !329
  %852 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !329
  %853 = load i64, i64* %852, align 16, !dbg !329
  %854 = shl i64 %853, 25, !dbg !329
  %855 = or i64 %851, %854, !dbg !329
  %856 = xor i64 %848, %855, !dbg !329
  %857 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !329
  %858 = load i64, i64* %857, align 16, !dbg !329
  %859 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !329
  %860 = load i64, i64* %859, align 8, !dbg !329
  %861 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !329
  %862 = load i64, i64* %861, align 16, !dbg !329
  %863 = or i64 %860, %862, !dbg !329
  %864 = and i64 %858, %863, !dbg !329
  %865 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !329
  %866 = load i64, i64* %865, align 8, !dbg !329
  %867 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !329
  %868 = load i64, i64* %867, align 16, !dbg !329
  %869 = and i64 %866, %868, !dbg !329
  %870 = or i64 %864, %869, !dbg !329
  %871 = add i64 %856, %870, !dbg !329
  store i64 %871, i64* %6, align 8, !dbg !329
  %872 = load i64, i64* %5, align 8, !dbg !329
  %873 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !329
  %874 = load i64, i64* %873, align 8, !dbg !329
  %875 = add i64 %874, %872, !dbg !329
  store i64 %875, i64* %873, align 8, !dbg !329
  %876 = load i64, i64* %5, align 8, !dbg !329
  %877 = load i64, i64* %6, align 8, !dbg !329
  %878 = add i64 %876, %877, !dbg !329
  %879 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !329
  store i64 %878, i64* %879, align 8, !dbg !329
  %880 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !330
  %881 = load i64, i64* %880, align 16, !dbg !330
  %882 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !330
  %883 = load i64, i64* %882, align 8, !dbg !330
  %884 = lshr i64 %883, 14, !dbg !330
  %885 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !330
  %886 = load i64, i64* %885, align 8, !dbg !330
  %887 = shl i64 %886, 50, !dbg !330
  %888 = or i64 %884, %887, !dbg !330
  %889 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !330
  %890 = load i64, i64* %889, align 8, !dbg !330
  %891 = lshr i64 %890, 18, !dbg !330
  %892 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !330
  %893 = load i64, i64* %892, align 8, !dbg !330
  %894 = shl i64 %893, 46, !dbg !330
  %895 = or i64 %891, %894, !dbg !330
  %896 = xor i64 %888, %895, !dbg !330
  %897 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !330
  %898 = load i64, i64* %897, align 8, !dbg !330
  %899 = lshr i64 %898, 41, !dbg !330
  %900 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !330
  %901 = load i64, i64* %900, align 8, !dbg !330
  %902 = shl i64 %901, 23, !dbg !330
  %903 = or i64 %899, %902, !dbg !330
  %904 = xor i64 %896, %903, !dbg !330
  %905 = add i64 %881, %904, !dbg !330
  %906 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !330
  %907 = load i64, i64* %906, align 8, !dbg !330
  %908 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !330
  %909 = load i64, i64* %908, align 16, !dbg !330
  %910 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !330
  %911 = load i64, i64* %910, align 8, !dbg !330
  %912 = xor i64 %909, %911, !dbg !330
  %913 = and i64 %907, %912, !dbg !330
  %914 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !330
  %915 = load i64, i64* %914, align 8, !dbg !330
  %916 = xor i64 %913, %915, !dbg !330
  %917 = add i64 %905, %916, !dbg !330
  %918 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 9, !dbg !330
  %919 = load i64, i64* %918, align 8, !dbg !330
  %920 = add i64 %917, %919, !dbg !330
  %921 = add i64 %920, 1334009975649890238, !dbg !330
  store i64 %921, i64* %5, align 8, !dbg !330
  %922 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !330
  %923 = load i64, i64* %922, align 8, !dbg !330
  %924 = lshr i64 %923, 28, !dbg !330
  %925 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !330
  %926 = load i64, i64* %925, align 8, !dbg !330
  %927 = shl i64 %926, 36, !dbg !330
  %928 = or i64 %924, %927, !dbg !330
  %929 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !330
  %930 = load i64, i64* %929, align 8, !dbg !330
  %931 = lshr i64 %930, 34, !dbg !330
  %932 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !330
  %933 = load i64, i64* %932, align 8, !dbg !330
  %934 = shl i64 %933, 30, !dbg !330
  %935 = or i64 %931, %934, !dbg !330
  %936 = xor i64 %928, %935, !dbg !330
  %937 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !330
  %938 = load i64, i64* %937, align 8, !dbg !330
  %939 = lshr i64 %938, 39, !dbg !330
  %940 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !330
  %941 = load i64, i64* %940, align 8, !dbg !330
  %942 = shl i64 %941, 25, !dbg !330
  %943 = or i64 %939, %942, !dbg !330
  %944 = xor i64 %936, %943, !dbg !330
  %945 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !330
  %946 = load i64, i64* %945, align 8, !dbg !330
  %947 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !330
  %948 = load i64, i64* %947, align 16, !dbg !330
  %949 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !330
  %950 = load i64, i64* %949, align 8, !dbg !330
  %951 = or i64 %948, %950, !dbg !330
  %952 = and i64 %946, %951, !dbg !330
  %953 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !330
  %954 = load i64, i64* %953, align 16, !dbg !330
  %955 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !330
  %956 = load i64, i64* %955, align 8, !dbg !330
  %957 = and i64 %954, %956, !dbg !330
  %958 = or i64 %952, %957, !dbg !330
  %959 = add i64 %944, %958, !dbg !330
  store i64 %959, i64* %6, align 8, !dbg !330
  %960 = load i64, i64* %5, align 8, !dbg !330
  %961 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !330
  %962 = load i64, i64* %961, align 16, !dbg !330
  %963 = add i64 %962, %960, !dbg !330
  store i64 %963, i64* %961, align 16, !dbg !330
  %964 = load i64, i64* %5, align 8, !dbg !330
  %965 = load i64, i64* %6, align 8, !dbg !330
  %966 = add i64 %964, %965, !dbg !330
  %967 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !330
  store i64 %966, i64* %967, align 16, !dbg !330
  %968 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !331
  %969 = load i64, i64* %968, align 8, !dbg !331
  %970 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !331
  %971 = load i64, i64* %970, align 16, !dbg !331
  %972 = lshr i64 %971, 14, !dbg !331
  %973 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !331
  %974 = load i64, i64* %973, align 16, !dbg !331
  %975 = shl i64 %974, 50, !dbg !331
  %976 = or i64 %972, %975, !dbg !331
  %977 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !331
  %978 = load i64, i64* %977, align 16, !dbg !331
  %979 = lshr i64 %978, 18, !dbg !331
  %980 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !331
  %981 = load i64, i64* %980, align 16, !dbg !331
  %982 = shl i64 %981, 46, !dbg !331
  %983 = or i64 %979, %982, !dbg !331
  %984 = xor i64 %976, %983, !dbg !331
  %985 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !331
  %986 = load i64, i64* %985, align 16, !dbg !331
  %987 = lshr i64 %986, 41, !dbg !331
  %988 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !331
  %989 = load i64, i64* %988, align 16, !dbg !331
  %990 = shl i64 %989, 23, !dbg !331
  %991 = or i64 %987, %990, !dbg !331
  %992 = xor i64 %984, %991, !dbg !331
  %993 = add i64 %969, %992, !dbg !331
  %994 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !331
  %995 = load i64, i64* %994, align 16, !dbg !331
  %996 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !331
  %997 = load i64, i64* %996, align 8, !dbg !331
  %998 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !331
  %999 = load i64, i64* %998, align 16, !dbg !331
  %1000 = xor i64 %997, %999, !dbg !331
  %1001 = and i64 %995, %1000, !dbg !331
  %1002 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !331
  %1003 = load i64, i64* %1002, align 16, !dbg !331
  %1004 = xor i64 %1001, %1003, !dbg !331
  %1005 = add i64 %993, %1004, !dbg !331
  %1006 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 10, !dbg !331
  %1007 = load i64, i64* %1006, align 16, !dbg !331
  %1008 = add i64 %1005, %1007, !dbg !331
  %1009 = add i64 %1008, 2608012711638119052, !dbg !331
  store i64 %1009, i64* %5, align 8, !dbg !331
  %1010 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !331
  %1011 = load i64, i64* %1010, align 16, !dbg !331
  %1012 = lshr i64 %1011, 28, !dbg !331
  %1013 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !331
  %1014 = load i64, i64* %1013, align 16, !dbg !331
  %1015 = shl i64 %1014, 36, !dbg !331
  %1016 = or i64 %1012, %1015, !dbg !331
  %1017 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !331
  %1018 = load i64, i64* %1017, align 16, !dbg !331
  %1019 = lshr i64 %1018, 34, !dbg !331
  %1020 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !331
  %1021 = load i64, i64* %1020, align 16, !dbg !331
  %1022 = shl i64 %1021, 30, !dbg !331
  %1023 = or i64 %1019, %1022, !dbg !331
  %1024 = xor i64 %1016, %1023, !dbg !331
  %1025 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !331
  %1026 = load i64, i64* %1025, align 16, !dbg !331
  %1027 = lshr i64 %1026, 39, !dbg !331
  %1028 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !331
  %1029 = load i64, i64* %1028, align 16, !dbg !331
  %1030 = shl i64 %1029, 25, !dbg !331
  %1031 = or i64 %1027, %1030, !dbg !331
  %1032 = xor i64 %1024, %1031, !dbg !331
  %1033 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !331
  %1034 = load i64, i64* %1033, align 16, !dbg !331
  %1035 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !331
  %1036 = load i64, i64* %1035, align 8, !dbg !331
  %1037 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !331
  %1038 = load i64, i64* %1037, align 16, !dbg !331
  %1039 = or i64 %1036, %1038, !dbg !331
  %1040 = and i64 %1034, %1039, !dbg !331
  %1041 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !331
  %1042 = load i64, i64* %1041, align 8, !dbg !331
  %1043 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !331
  %1044 = load i64, i64* %1043, align 16, !dbg !331
  %1045 = and i64 %1042, %1044, !dbg !331
  %1046 = or i64 %1040, %1045, !dbg !331
  %1047 = add i64 %1032, %1046, !dbg !331
  store i64 %1047, i64* %6, align 8, !dbg !331
  %1048 = load i64, i64* %5, align 8, !dbg !331
  %1049 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !331
  %1050 = load i64, i64* %1049, align 8, !dbg !331
  %1051 = add i64 %1050, %1048, !dbg !331
  store i64 %1051, i64* %1049, align 8, !dbg !331
  %1052 = load i64, i64* %5, align 8, !dbg !331
  %1053 = load i64, i64* %6, align 8, !dbg !331
  %1054 = add i64 %1052, %1053, !dbg !331
  %1055 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !331
  store i64 %1054, i64* %1055, align 8, !dbg !331
  %1056 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !332
  %1057 = load i64, i64* %1056, align 16, !dbg !332
  %1058 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !332
  %1059 = load i64, i64* %1058, align 8, !dbg !332
  %1060 = lshr i64 %1059, 14, !dbg !332
  %1061 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !332
  %1062 = load i64, i64* %1061, align 8, !dbg !332
  %1063 = shl i64 %1062, 50, !dbg !332
  %1064 = or i64 %1060, %1063, !dbg !332
  %1065 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !332
  %1066 = load i64, i64* %1065, align 8, !dbg !332
  %1067 = lshr i64 %1066, 18, !dbg !332
  %1068 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !332
  %1069 = load i64, i64* %1068, align 8, !dbg !332
  %1070 = shl i64 %1069, 46, !dbg !332
  %1071 = or i64 %1067, %1070, !dbg !332
  %1072 = xor i64 %1064, %1071, !dbg !332
  %1073 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !332
  %1074 = load i64, i64* %1073, align 8, !dbg !332
  %1075 = lshr i64 %1074, 41, !dbg !332
  %1076 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !332
  %1077 = load i64, i64* %1076, align 8, !dbg !332
  %1078 = shl i64 %1077, 23, !dbg !332
  %1079 = or i64 %1075, %1078, !dbg !332
  %1080 = xor i64 %1072, %1079, !dbg !332
  %1081 = add i64 %1057, %1080, !dbg !332
  %1082 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !332
  %1083 = load i64, i64* %1082, align 8, !dbg !332
  %1084 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !332
  %1085 = load i64, i64* %1084, align 16, !dbg !332
  %1086 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !332
  %1087 = load i64, i64* %1086, align 8, !dbg !332
  %1088 = xor i64 %1085, %1087, !dbg !332
  %1089 = and i64 %1083, %1088, !dbg !332
  %1090 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !332
  %1091 = load i64, i64* %1090, align 8, !dbg !332
  %1092 = xor i64 %1089, %1091, !dbg !332
  %1093 = add i64 %1081, %1092, !dbg !332
  %1094 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 11, !dbg !332
  %1095 = load i64, i64* %1094, align 8, !dbg !332
  %1096 = add i64 %1093, %1095, !dbg !332
  %1097 = add i64 %1096, 6128411473006802146, !dbg !332
  store i64 %1097, i64* %5, align 8, !dbg !332
  %1098 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !332
  %1099 = load i64, i64* %1098, align 8, !dbg !332
  %1100 = lshr i64 %1099, 28, !dbg !332
  %1101 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !332
  %1102 = load i64, i64* %1101, align 8, !dbg !332
  %1103 = shl i64 %1102, 36, !dbg !332
  %1104 = or i64 %1100, %1103, !dbg !332
  %1105 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !332
  %1106 = load i64, i64* %1105, align 8, !dbg !332
  %1107 = lshr i64 %1106, 34, !dbg !332
  %1108 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !332
  %1109 = load i64, i64* %1108, align 8, !dbg !332
  %1110 = shl i64 %1109, 30, !dbg !332
  %1111 = or i64 %1107, %1110, !dbg !332
  %1112 = xor i64 %1104, %1111, !dbg !332
  %1113 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !332
  %1114 = load i64, i64* %1113, align 8, !dbg !332
  %1115 = lshr i64 %1114, 39, !dbg !332
  %1116 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !332
  %1117 = load i64, i64* %1116, align 8, !dbg !332
  %1118 = shl i64 %1117, 25, !dbg !332
  %1119 = or i64 %1115, %1118, !dbg !332
  %1120 = xor i64 %1112, %1119, !dbg !332
  %1121 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !332
  %1122 = load i64, i64* %1121, align 8, !dbg !332
  %1123 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !332
  %1124 = load i64, i64* %1123, align 16, !dbg !332
  %1125 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !332
  %1126 = load i64, i64* %1125, align 8, !dbg !332
  %1127 = or i64 %1124, %1126, !dbg !332
  %1128 = and i64 %1122, %1127, !dbg !332
  %1129 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !332
  %1130 = load i64, i64* %1129, align 16, !dbg !332
  %1131 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !332
  %1132 = load i64, i64* %1131, align 8, !dbg !332
  %1133 = and i64 %1130, %1132, !dbg !332
  %1134 = or i64 %1128, %1133, !dbg !332
  %1135 = add i64 %1120, %1134, !dbg !332
  store i64 %1135, i64* %6, align 8, !dbg !332
  %1136 = load i64, i64* %5, align 8, !dbg !332
  %1137 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !332
  %1138 = load i64, i64* %1137, align 16, !dbg !332
  %1139 = add i64 %1138, %1136, !dbg !332
  store i64 %1139, i64* %1137, align 16, !dbg !332
  %1140 = load i64, i64* %5, align 8, !dbg !332
  %1141 = load i64, i64* %6, align 8, !dbg !332
  %1142 = add i64 %1140, %1141, !dbg !332
  %1143 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !332
  store i64 %1142, i64* %1143, align 16, !dbg !332
  %1144 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !333
  %1145 = load i64, i64* %1144, align 8, !dbg !333
  %1146 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !333
  %1147 = load i64, i64* %1146, align 16, !dbg !333
  %1148 = lshr i64 %1147, 14, !dbg !333
  %1149 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !333
  %1150 = load i64, i64* %1149, align 16, !dbg !333
  %1151 = shl i64 %1150, 50, !dbg !333
  %1152 = or i64 %1148, %1151, !dbg !333
  %1153 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !333
  %1154 = load i64, i64* %1153, align 16, !dbg !333
  %1155 = lshr i64 %1154, 18, !dbg !333
  %1156 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !333
  %1157 = load i64, i64* %1156, align 16, !dbg !333
  %1158 = shl i64 %1157, 46, !dbg !333
  %1159 = or i64 %1155, %1158, !dbg !333
  %1160 = xor i64 %1152, %1159, !dbg !333
  %1161 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !333
  %1162 = load i64, i64* %1161, align 16, !dbg !333
  %1163 = lshr i64 %1162, 41, !dbg !333
  %1164 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !333
  %1165 = load i64, i64* %1164, align 16, !dbg !333
  %1166 = shl i64 %1165, 23, !dbg !333
  %1167 = or i64 %1163, %1166, !dbg !333
  %1168 = xor i64 %1160, %1167, !dbg !333
  %1169 = add i64 %1145, %1168, !dbg !333
  %1170 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !333
  %1171 = load i64, i64* %1170, align 16, !dbg !333
  %1172 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !333
  %1173 = load i64, i64* %1172, align 8, !dbg !333
  %1174 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !333
  %1175 = load i64, i64* %1174, align 16, !dbg !333
  %1176 = xor i64 %1173, %1175, !dbg !333
  %1177 = and i64 %1171, %1176, !dbg !333
  %1178 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !333
  %1179 = load i64, i64* %1178, align 16, !dbg !333
  %1180 = xor i64 %1177, %1179, !dbg !333
  %1181 = add i64 %1169, %1180, !dbg !333
  %1182 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 12, !dbg !333
  %1183 = load i64, i64* %1182, align 16, !dbg !333
  %1184 = add i64 %1181, %1183, !dbg !333
  %1185 = add i64 %1184, 8268148722764581231, !dbg !333
  store i64 %1185, i64* %5, align 8, !dbg !333
  %1186 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !333
  %1187 = load i64, i64* %1186, align 16, !dbg !333
  %1188 = lshr i64 %1187, 28, !dbg !333
  %1189 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !333
  %1190 = load i64, i64* %1189, align 16, !dbg !333
  %1191 = shl i64 %1190, 36, !dbg !333
  %1192 = or i64 %1188, %1191, !dbg !333
  %1193 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !333
  %1194 = load i64, i64* %1193, align 16, !dbg !333
  %1195 = lshr i64 %1194, 34, !dbg !333
  %1196 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !333
  %1197 = load i64, i64* %1196, align 16, !dbg !333
  %1198 = shl i64 %1197, 30, !dbg !333
  %1199 = or i64 %1195, %1198, !dbg !333
  %1200 = xor i64 %1192, %1199, !dbg !333
  %1201 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !333
  %1202 = load i64, i64* %1201, align 16, !dbg !333
  %1203 = lshr i64 %1202, 39, !dbg !333
  %1204 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !333
  %1205 = load i64, i64* %1204, align 16, !dbg !333
  %1206 = shl i64 %1205, 25, !dbg !333
  %1207 = or i64 %1203, %1206, !dbg !333
  %1208 = xor i64 %1200, %1207, !dbg !333
  %1209 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !333
  %1210 = load i64, i64* %1209, align 16, !dbg !333
  %1211 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !333
  %1212 = load i64, i64* %1211, align 8, !dbg !333
  %1213 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !333
  %1214 = load i64, i64* %1213, align 16, !dbg !333
  %1215 = or i64 %1212, %1214, !dbg !333
  %1216 = and i64 %1210, %1215, !dbg !333
  %1217 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !333
  %1218 = load i64, i64* %1217, align 8, !dbg !333
  %1219 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !333
  %1220 = load i64, i64* %1219, align 16, !dbg !333
  %1221 = and i64 %1218, %1220, !dbg !333
  %1222 = or i64 %1216, %1221, !dbg !333
  %1223 = add i64 %1208, %1222, !dbg !333
  store i64 %1223, i64* %6, align 8, !dbg !333
  %1224 = load i64, i64* %5, align 8, !dbg !333
  %1225 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !333
  %1226 = load i64, i64* %1225, align 8, !dbg !333
  %1227 = add i64 %1226, %1224, !dbg !333
  store i64 %1227, i64* %1225, align 8, !dbg !333
  %1228 = load i64, i64* %5, align 8, !dbg !333
  %1229 = load i64, i64* %6, align 8, !dbg !333
  %1230 = add i64 %1228, %1229, !dbg !333
  %1231 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !333
  store i64 %1230, i64* %1231, align 8, !dbg !333
  %1232 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !334
  %1233 = load i64, i64* %1232, align 16, !dbg !334
  %1234 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !334
  %1235 = load i64, i64* %1234, align 8, !dbg !334
  %1236 = lshr i64 %1235, 14, !dbg !334
  %1237 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !334
  %1238 = load i64, i64* %1237, align 8, !dbg !334
  %1239 = shl i64 %1238, 50, !dbg !334
  %1240 = or i64 %1236, %1239, !dbg !334
  %1241 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !334
  %1242 = load i64, i64* %1241, align 8, !dbg !334
  %1243 = lshr i64 %1242, 18, !dbg !334
  %1244 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !334
  %1245 = load i64, i64* %1244, align 8, !dbg !334
  %1246 = shl i64 %1245, 46, !dbg !334
  %1247 = or i64 %1243, %1246, !dbg !334
  %1248 = xor i64 %1240, %1247, !dbg !334
  %1249 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !334
  %1250 = load i64, i64* %1249, align 8, !dbg !334
  %1251 = lshr i64 %1250, 41, !dbg !334
  %1252 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !334
  %1253 = load i64, i64* %1252, align 8, !dbg !334
  %1254 = shl i64 %1253, 23, !dbg !334
  %1255 = or i64 %1251, %1254, !dbg !334
  %1256 = xor i64 %1248, %1255, !dbg !334
  %1257 = add i64 %1233, %1256, !dbg !334
  %1258 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !334
  %1259 = load i64, i64* %1258, align 8, !dbg !334
  %1260 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !334
  %1261 = load i64, i64* %1260, align 16, !dbg !334
  %1262 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !334
  %1263 = load i64, i64* %1262, align 8, !dbg !334
  %1264 = xor i64 %1261, %1263, !dbg !334
  %1265 = and i64 %1259, %1264, !dbg !334
  %1266 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !334
  %1267 = load i64, i64* %1266, align 8, !dbg !334
  %1268 = xor i64 %1265, %1267, !dbg !334
  %1269 = add i64 %1257, %1268, !dbg !334
  %1270 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 13, !dbg !334
  %1271 = load i64, i64* %1270, align 8, !dbg !334
  %1272 = add i64 %1269, %1271, !dbg !334
  %1273 = add i64 %1272, -9160688886553864527, !dbg !334
  store i64 %1273, i64* %5, align 8, !dbg !334
  %1274 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !334
  %1275 = load i64, i64* %1274, align 8, !dbg !334
  %1276 = lshr i64 %1275, 28, !dbg !334
  %1277 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !334
  %1278 = load i64, i64* %1277, align 8, !dbg !334
  %1279 = shl i64 %1278, 36, !dbg !334
  %1280 = or i64 %1276, %1279, !dbg !334
  %1281 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !334
  %1282 = load i64, i64* %1281, align 8, !dbg !334
  %1283 = lshr i64 %1282, 34, !dbg !334
  %1284 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !334
  %1285 = load i64, i64* %1284, align 8, !dbg !334
  %1286 = shl i64 %1285, 30, !dbg !334
  %1287 = or i64 %1283, %1286, !dbg !334
  %1288 = xor i64 %1280, %1287, !dbg !334
  %1289 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !334
  %1290 = load i64, i64* %1289, align 8, !dbg !334
  %1291 = lshr i64 %1290, 39, !dbg !334
  %1292 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !334
  %1293 = load i64, i64* %1292, align 8, !dbg !334
  %1294 = shl i64 %1293, 25, !dbg !334
  %1295 = or i64 %1291, %1294, !dbg !334
  %1296 = xor i64 %1288, %1295, !dbg !334
  %1297 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !334
  %1298 = load i64, i64* %1297, align 8, !dbg !334
  %1299 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !334
  %1300 = load i64, i64* %1299, align 16, !dbg !334
  %1301 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !334
  %1302 = load i64, i64* %1301, align 8, !dbg !334
  %1303 = or i64 %1300, %1302, !dbg !334
  %1304 = and i64 %1298, %1303, !dbg !334
  %1305 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !334
  %1306 = load i64, i64* %1305, align 16, !dbg !334
  %1307 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !334
  %1308 = load i64, i64* %1307, align 8, !dbg !334
  %1309 = and i64 %1306, %1308, !dbg !334
  %1310 = or i64 %1304, %1309, !dbg !334
  %1311 = add i64 %1296, %1310, !dbg !334
  store i64 %1311, i64* %6, align 8, !dbg !334
  %1312 = load i64, i64* %5, align 8, !dbg !334
  %1313 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !334
  %1314 = load i64, i64* %1313, align 16, !dbg !334
  %1315 = add i64 %1314, %1312, !dbg !334
  store i64 %1315, i64* %1313, align 16, !dbg !334
  %1316 = load i64, i64* %5, align 8, !dbg !334
  %1317 = load i64, i64* %6, align 8, !dbg !334
  %1318 = add i64 %1316, %1317, !dbg !334
  %1319 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !334
  store i64 %1318, i64* %1319, align 16, !dbg !334
  %1320 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !335
  %1321 = load i64, i64* %1320, align 8, !dbg !335
  %1322 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !335
  %1323 = load i64, i64* %1322, align 16, !dbg !335
  %1324 = lshr i64 %1323, 14, !dbg !335
  %1325 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !335
  %1326 = load i64, i64* %1325, align 16, !dbg !335
  %1327 = shl i64 %1326, 50, !dbg !335
  %1328 = or i64 %1324, %1327, !dbg !335
  %1329 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !335
  %1330 = load i64, i64* %1329, align 16, !dbg !335
  %1331 = lshr i64 %1330, 18, !dbg !335
  %1332 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !335
  %1333 = load i64, i64* %1332, align 16, !dbg !335
  %1334 = shl i64 %1333, 46, !dbg !335
  %1335 = or i64 %1331, %1334, !dbg !335
  %1336 = xor i64 %1328, %1335, !dbg !335
  %1337 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !335
  %1338 = load i64, i64* %1337, align 16, !dbg !335
  %1339 = lshr i64 %1338, 41, !dbg !335
  %1340 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !335
  %1341 = load i64, i64* %1340, align 16, !dbg !335
  %1342 = shl i64 %1341, 23, !dbg !335
  %1343 = or i64 %1339, %1342, !dbg !335
  %1344 = xor i64 %1336, %1343, !dbg !335
  %1345 = add i64 %1321, %1344, !dbg !335
  %1346 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !335
  %1347 = load i64, i64* %1346, align 16, !dbg !335
  %1348 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !335
  %1349 = load i64, i64* %1348, align 8, !dbg !335
  %1350 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !335
  %1351 = load i64, i64* %1350, align 16, !dbg !335
  %1352 = xor i64 %1349, %1351, !dbg !335
  %1353 = and i64 %1347, %1352, !dbg !335
  %1354 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !335
  %1355 = load i64, i64* %1354, align 16, !dbg !335
  %1356 = xor i64 %1353, %1355, !dbg !335
  %1357 = add i64 %1345, %1356, !dbg !335
  %1358 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 14, !dbg !335
  %1359 = load i64, i64* %1358, align 16, !dbg !335
  %1360 = add i64 %1357, %1359, !dbg !335
  %1361 = add i64 %1360, -7215885187991268811, !dbg !335
  store i64 %1361, i64* %5, align 8, !dbg !335
  %1362 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !335
  %1363 = load i64, i64* %1362, align 16, !dbg !335
  %1364 = lshr i64 %1363, 28, !dbg !335
  %1365 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !335
  %1366 = load i64, i64* %1365, align 16, !dbg !335
  %1367 = shl i64 %1366, 36, !dbg !335
  %1368 = or i64 %1364, %1367, !dbg !335
  %1369 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !335
  %1370 = load i64, i64* %1369, align 16, !dbg !335
  %1371 = lshr i64 %1370, 34, !dbg !335
  %1372 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !335
  %1373 = load i64, i64* %1372, align 16, !dbg !335
  %1374 = shl i64 %1373, 30, !dbg !335
  %1375 = or i64 %1371, %1374, !dbg !335
  %1376 = xor i64 %1368, %1375, !dbg !335
  %1377 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !335
  %1378 = load i64, i64* %1377, align 16, !dbg !335
  %1379 = lshr i64 %1378, 39, !dbg !335
  %1380 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !335
  %1381 = load i64, i64* %1380, align 16, !dbg !335
  %1382 = shl i64 %1381, 25, !dbg !335
  %1383 = or i64 %1379, %1382, !dbg !335
  %1384 = xor i64 %1376, %1383, !dbg !335
  %1385 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !335
  %1386 = load i64, i64* %1385, align 16, !dbg !335
  %1387 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !335
  %1388 = load i64, i64* %1387, align 8, !dbg !335
  %1389 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !335
  %1390 = load i64, i64* %1389, align 16, !dbg !335
  %1391 = or i64 %1388, %1390, !dbg !335
  %1392 = and i64 %1386, %1391, !dbg !335
  %1393 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !335
  %1394 = load i64, i64* %1393, align 8, !dbg !335
  %1395 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !335
  %1396 = load i64, i64* %1395, align 16, !dbg !335
  %1397 = and i64 %1394, %1396, !dbg !335
  %1398 = or i64 %1392, %1397, !dbg !335
  %1399 = add i64 %1384, %1398, !dbg !335
  store i64 %1399, i64* %6, align 8, !dbg !335
  %1400 = load i64, i64* %5, align 8, !dbg !335
  %1401 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !335
  %1402 = load i64, i64* %1401, align 8, !dbg !335
  %1403 = add i64 %1402, %1400, !dbg !335
  store i64 %1403, i64* %1401, align 8, !dbg !335
  %1404 = load i64, i64* %5, align 8, !dbg !335
  %1405 = load i64, i64* %6, align 8, !dbg !335
  %1406 = add i64 %1404, %1405, !dbg !335
  %1407 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !335
  store i64 %1406, i64* %1407, align 8, !dbg !335
  %1408 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !336
  %1409 = load i64, i64* %1408, align 16, !dbg !336
  %1410 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !336
  %1411 = load i64, i64* %1410, align 8, !dbg !336
  %1412 = lshr i64 %1411, 14, !dbg !336
  %1413 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !336
  %1414 = load i64, i64* %1413, align 8, !dbg !336
  %1415 = shl i64 %1414, 50, !dbg !336
  %1416 = or i64 %1412, %1415, !dbg !336
  %1417 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !336
  %1418 = load i64, i64* %1417, align 8, !dbg !336
  %1419 = lshr i64 %1418, 18, !dbg !336
  %1420 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !336
  %1421 = load i64, i64* %1420, align 8, !dbg !336
  %1422 = shl i64 %1421, 46, !dbg !336
  %1423 = or i64 %1419, %1422, !dbg !336
  %1424 = xor i64 %1416, %1423, !dbg !336
  %1425 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !336
  %1426 = load i64, i64* %1425, align 8, !dbg !336
  %1427 = lshr i64 %1426, 41, !dbg !336
  %1428 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !336
  %1429 = load i64, i64* %1428, align 8, !dbg !336
  %1430 = shl i64 %1429, 23, !dbg !336
  %1431 = or i64 %1427, %1430, !dbg !336
  %1432 = xor i64 %1424, %1431, !dbg !336
  %1433 = add i64 %1409, %1432, !dbg !336
  %1434 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !336
  %1435 = load i64, i64* %1434, align 8, !dbg !336
  %1436 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !336
  %1437 = load i64, i64* %1436, align 16, !dbg !336
  %1438 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !336
  %1439 = load i64, i64* %1438, align 8, !dbg !336
  %1440 = xor i64 %1437, %1439, !dbg !336
  %1441 = and i64 %1435, %1440, !dbg !336
  %1442 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !336
  %1443 = load i64, i64* %1442, align 8, !dbg !336
  %1444 = xor i64 %1441, %1443, !dbg !336
  %1445 = add i64 %1433, %1444, !dbg !336
  %1446 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 15, !dbg !336
  %1447 = load i64, i64* %1446, align 8, !dbg !336
  %1448 = add i64 %1445, %1447, !dbg !336
  %1449 = add i64 %1448, -4495734319001033068, !dbg !336
  store i64 %1449, i64* %5, align 8, !dbg !336
  %1450 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !336
  %1451 = load i64, i64* %1450, align 8, !dbg !336
  %1452 = lshr i64 %1451, 28, !dbg !336
  %1453 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !336
  %1454 = load i64, i64* %1453, align 8, !dbg !336
  %1455 = shl i64 %1454, 36, !dbg !336
  %1456 = or i64 %1452, %1455, !dbg !336
  %1457 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !336
  %1458 = load i64, i64* %1457, align 8, !dbg !336
  %1459 = lshr i64 %1458, 34, !dbg !336
  %1460 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !336
  %1461 = load i64, i64* %1460, align 8, !dbg !336
  %1462 = shl i64 %1461, 30, !dbg !336
  %1463 = or i64 %1459, %1462, !dbg !336
  %1464 = xor i64 %1456, %1463, !dbg !336
  %1465 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !336
  %1466 = load i64, i64* %1465, align 8, !dbg !336
  %1467 = lshr i64 %1466, 39, !dbg !336
  %1468 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !336
  %1469 = load i64, i64* %1468, align 8, !dbg !336
  %1470 = shl i64 %1469, 25, !dbg !336
  %1471 = or i64 %1467, %1470, !dbg !336
  %1472 = xor i64 %1464, %1471, !dbg !336
  %1473 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !336
  %1474 = load i64, i64* %1473, align 8, !dbg !336
  %1475 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !336
  %1476 = load i64, i64* %1475, align 16, !dbg !336
  %1477 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !336
  %1478 = load i64, i64* %1477, align 8, !dbg !336
  %1479 = or i64 %1476, %1478, !dbg !336
  %1480 = and i64 %1474, %1479, !dbg !336
  %1481 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !336
  %1482 = load i64, i64* %1481, align 16, !dbg !336
  %1483 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !336
  %1484 = load i64, i64* %1483, align 8, !dbg !336
  %1485 = and i64 %1482, %1484, !dbg !336
  %1486 = or i64 %1480, %1485, !dbg !336
  %1487 = add i64 %1472, %1486, !dbg !336
  store i64 %1487, i64* %6, align 8, !dbg !336
  %1488 = load i64, i64* %5, align 8, !dbg !336
  %1489 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !336
  %1490 = load i64, i64* %1489, align 16, !dbg !336
  %1491 = add i64 %1490, %1488, !dbg !336
  store i64 %1491, i64* %1489, align 16, !dbg !336
  %1492 = load i64, i64* %5, align 8, !dbg !336
  %1493 = load i64, i64* %6, align 8, !dbg !336
  %1494 = add i64 %1492, %1493, !dbg !336
  %1495 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !336
  store i64 %1494, i64* %1495, align 16, !dbg !336
  %1496 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !337
  %1497 = load i64, i64* %1496, align 8, !dbg !337
  %1498 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !337
  %1499 = load i64, i64* %1498, align 16, !dbg !337
  %1500 = lshr i64 %1499, 14, !dbg !337
  %1501 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !337
  %1502 = load i64, i64* %1501, align 16, !dbg !337
  %1503 = shl i64 %1502, 50, !dbg !337
  %1504 = or i64 %1500, %1503, !dbg !337
  %1505 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !337
  %1506 = load i64, i64* %1505, align 16, !dbg !337
  %1507 = lshr i64 %1506, 18, !dbg !337
  %1508 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !337
  %1509 = load i64, i64* %1508, align 16, !dbg !337
  %1510 = shl i64 %1509, 46, !dbg !337
  %1511 = or i64 %1507, %1510, !dbg !337
  %1512 = xor i64 %1504, %1511, !dbg !337
  %1513 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !337
  %1514 = load i64, i64* %1513, align 16, !dbg !337
  %1515 = lshr i64 %1514, 41, !dbg !337
  %1516 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !337
  %1517 = load i64, i64* %1516, align 16, !dbg !337
  %1518 = shl i64 %1517, 23, !dbg !337
  %1519 = or i64 %1515, %1518, !dbg !337
  %1520 = xor i64 %1512, %1519, !dbg !337
  %1521 = add i64 %1497, %1520, !dbg !337
  %1522 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !337
  %1523 = load i64, i64* %1522, align 16, !dbg !337
  %1524 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !337
  %1525 = load i64, i64* %1524, align 8, !dbg !337
  %1526 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !337
  %1527 = load i64, i64* %1526, align 16, !dbg !337
  %1528 = xor i64 %1525, %1527, !dbg !337
  %1529 = and i64 %1523, %1528, !dbg !337
  %1530 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !337
  %1531 = load i64, i64* %1530, align 16, !dbg !337
  %1532 = xor i64 %1529, %1531, !dbg !337
  %1533 = add i64 %1521, %1532, !dbg !337
  %1534 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 16, !dbg !337
  %1535 = load i64, i64* %1534, align 16, !dbg !337
  %1536 = add i64 %1533, %1535, !dbg !337
  %1537 = add i64 %1536, -1973867731355612462, !dbg !337
  store i64 %1537, i64* %5, align 8, !dbg !337
  %1538 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !337
  %1539 = load i64, i64* %1538, align 16, !dbg !337
  %1540 = lshr i64 %1539, 28, !dbg !337
  %1541 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !337
  %1542 = load i64, i64* %1541, align 16, !dbg !337
  %1543 = shl i64 %1542, 36, !dbg !337
  %1544 = or i64 %1540, %1543, !dbg !337
  %1545 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !337
  %1546 = load i64, i64* %1545, align 16, !dbg !337
  %1547 = lshr i64 %1546, 34, !dbg !337
  %1548 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !337
  %1549 = load i64, i64* %1548, align 16, !dbg !337
  %1550 = shl i64 %1549, 30, !dbg !337
  %1551 = or i64 %1547, %1550, !dbg !337
  %1552 = xor i64 %1544, %1551, !dbg !337
  %1553 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !337
  %1554 = load i64, i64* %1553, align 16, !dbg !337
  %1555 = lshr i64 %1554, 39, !dbg !337
  %1556 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !337
  %1557 = load i64, i64* %1556, align 16, !dbg !337
  %1558 = shl i64 %1557, 25, !dbg !337
  %1559 = or i64 %1555, %1558, !dbg !337
  %1560 = xor i64 %1552, %1559, !dbg !337
  %1561 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !337
  %1562 = load i64, i64* %1561, align 16, !dbg !337
  %1563 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !337
  %1564 = load i64, i64* %1563, align 8, !dbg !337
  %1565 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !337
  %1566 = load i64, i64* %1565, align 16, !dbg !337
  %1567 = or i64 %1564, %1566, !dbg !337
  %1568 = and i64 %1562, %1567, !dbg !337
  %1569 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !337
  %1570 = load i64, i64* %1569, align 8, !dbg !337
  %1571 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !337
  %1572 = load i64, i64* %1571, align 16, !dbg !337
  %1573 = and i64 %1570, %1572, !dbg !337
  %1574 = or i64 %1568, %1573, !dbg !337
  %1575 = add i64 %1560, %1574, !dbg !337
  store i64 %1575, i64* %6, align 8, !dbg !337
  %1576 = load i64, i64* %5, align 8, !dbg !337
  %1577 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !337
  %1578 = load i64, i64* %1577, align 8, !dbg !337
  %1579 = add i64 %1578, %1576, !dbg !337
  store i64 %1579, i64* %1577, align 8, !dbg !337
  %1580 = load i64, i64* %5, align 8, !dbg !337
  %1581 = load i64, i64* %6, align 8, !dbg !337
  %1582 = add i64 %1580, %1581, !dbg !337
  %1583 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !337
  store i64 %1582, i64* %1583, align 8, !dbg !337
  %1584 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !338
  %1585 = load i64, i64* %1584, align 16, !dbg !338
  %1586 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !338
  %1587 = load i64, i64* %1586, align 8, !dbg !338
  %1588 = lshr i64 %1587, 14, !dbg !338
  %1589 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !338
  %1590 = load i64, i64* %1589, align 8, !dbg !338
  %1591 = shl i64 %1590, 50, !dbg !338
  %1592 = or i64 %1588, %1591, !dbg !338
  %1593 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !338
  %1594 = load i64, i64* %1593, align 8, !dbg !338
  %1595 = lshr i64 %1594, 18, !dbg !338
  %1596 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !338
  %1597 = load i64, i64* %1596, align 8, !dbg !338
  %1598 = shl i64 %1597, 46, !dbg !338
  %1599 = or i64 %1595, %1598, !dbg !338
  %1600 = xor i64 %1592, %1599, !dbg !338
  %1601 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !338
  %1602 = load i64, i64* %1601, align 8, !dbg !338
  %1603 = lshr i64 %1602, 41, !dbg !338
  %1604 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !338
  %1605 = load i64, i64* %1604, align 8, !dbg !338
  %1606 = shl i64 %1605, 23, !dbg !338
  %1607 = or i64 %1603, %1606, !dbg !338
  %1608 = xor i64 %1600, %1607, !dbg !338
  %1609 = add i64 %1585, %1608, !dbg !338
  %1610 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !338
  %1611 = load i64, i64* %1610, align 8, !dbg !338
  %1612 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !338
  %1613 = load i64, i64* %1612, align 16, !dbg !338
  %1614 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !338
  %1615 = load i64, i64* %1614, align 8, !dbg !338
  %1616 = xor i64 %1613, %1615, !dbg !338
  %1617 = and i64 %1611, %1616, !dbg !338
  %1618 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !338
  %1619 = load i64, i64* %1618, align 8, !dbg !338
  %1620 = xor i64 %1617, %1619, !dbg !338
  %1621 = add i64 %1609, %1620, !dbg !338
  %1622 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 17, !dbg !338
  %1623 = load i64, i64* %1622, align 8, !dbg !338
  %1624 = add i64 %1621, %1623, !dbg !338
  %1625 = add i64 %1624, -1171420211273849373, !dbg !338
  store i64 %1625, i64* %5, align 8, !dbg !338
  %1626 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !338
  %1627 = load i64, i64* %1626, align 8, !dbg !338
  %1628 = lshr i64 %1627, 28, !dbg !338
  %1629 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !338
  %1630 = load i64, i64* %1629, align 8, !dbg !338
  %1631 = shl i64 %1630, 36, !dbg !338
  %1632 = or i64 %1628, %1631, !dbg !338
  %1633 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !338
  %1634 = load i64, i64* %1633, align 8, !dbg !338
  %1635 = lshr i64 %1634, 34, !dbg !338
  %1636 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !338
  %1637 = load i64, i64* %1636, align 8, !dbg !338
  %1638 = shl i64 %1637, 30, !dbg !338
  %1639 = or i64 %1635, %1638, !dbg !338
  %1640 = xor i64 %1632, %1639, !dbg !338
  %1641 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !338
  %1642 = load i64, i64* %1641, align 8, !dbg !338
  %1643 = lshr i64 %1642, 39, !dbg !338
  %1644 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !338
  %1645 = load i64, i64* %1644, align 8, !dbg !338
  %1646 = shl i64 %1645, 25, !dbg !338
  %1647 = or i64 %1643, %1646, !dbg !338
  %1648 = xor i64 %1640, %1647, !dbg !338
  %1649 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !338
  %1650 = load i64, i64* %1649, align 8, !dbg !338
  %1651 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !338
  %1652 = load i64, i64* %1651, align 16, !dbg !338
  %1653 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !338
  %1654 = load i64, i64* %1653, align 8, !dbg !338
  %1655 = or i64 %1652, %1654, !dbg !338
  %1656 = and i64 %1650, %1655, !dbg !338
  %1657 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !338
  %1658 = load i64, i64* %1657, align 16, !dbg !338
  %1659 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !338
  %1660 = load i64, i64* %1659, align 8, !dbg !338
  %1661 = and i64 %1658, %1660, !dbg !338
  %1662 = or i64 %1656, %1661, !dbg !338
  %1663 = add i64 %1648, %1662, !dbg !338
  store i64 %1663, i64* %6, align 8, !dbg !338
  %1664 = load i64, i64* %5, align 8, !dbg !338
  %1665 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !338
  %1666 = load i64, i64* %1665, align 16, !dbg !338
  %1667 = add i64 %1666, %1664, !dbg !338
  store i64 %1667, i64* %1665, align 16, !dbg !338
  %1668 = load i64, i64* %5, align 8, !dbg !338
  %1669 = load i64, i64* %6, align 8, !dbg !338
  %1670 = add i64 %1668, %1669, !dbg !338
  %1671 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !338
  store i64 %1670, i64* %1671, align 16, !dbg !338
  %1672 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !339
  %1673 = load i64, i64* %1672, align 8, !dbg !339
  %1674 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !339
  %1675 = load i64, i64* %1674, align 16, !dbg !339
  %1676 = lshr i64 %1675, 14, !dbg !339
  %1677 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !339
  %1678 = load i64, i64* %1677, align 16, !dbg !339
  %1679 = shl i64 %1678, 50, !dbg !339
  %1680 = or i64 %1676, %1679, !dbg !339
  %1681 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !339
  %1682 = load i64, i64* %1681, align 16, !dbg !339
  %1683 = lshr i64 %1682, 18, !dbg !339
  %1684 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !339
  %1685 = load i64, i64* %1684, align 16, !dbg !339
  %1686 = shl i64 %1685, 46, !dbg !339
  %1687 = or i64 %1683, %1686, !dbg !339
  %1688 = xor i64 %1680, %1687, !dbg !339
  %1689 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !339
  %1690 = load i64, i64* %1689, align 16, !dbg !339
  %1691 = lshr i64 %1690, 41, !dbg !339
  %1692 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !339
  %1693 = load i64, i64* %1692, align 16, !dbg !339
  %1694 = shl i64 %1693, 23, !dbg !339
  %1695 = or i64 %1691, %1694, !dbg !339
  %1696 = xor i64 %1688, %1695, !dbg !339
  %1697 = add i64 %1673, %1696, !dbg !339
  %1698 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !339
  %1699 = load i64, i64* %1698, align 16, !dbg !339
  %1700 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !339
  %1701 = load i64, i64* %1700, align 8, !dbg !339
  %1702 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !339
  %1703 = load i64, i64* %1702, align 16, !dbg !339
  %1704 = xor i64 %1701, %1703, !dbg !339
  %1705 = and i64 %1699, %1704, !dbg !339
  %1706 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !339
  %1707 = load i64, i64* %1706, align 16, !dbg !339
  %1708 = xor i64 %1705, %1707, !dbg !339
  %1709 = add i64 %1697, %1708, !dbg !339
  %1710 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 18, !dbg !339
  %1711 = load i64, i64* %1710, align 16, !dbg !339
  %1712 = add i64 %1709, %1711, !dbg !339
  %1713 = add i64 %1712, 1135362057144423861, !dbg !339
  store i64 %1713, i64* %5, align 8, !dbg !339
  %1714 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !339
  %1715 = load i64, i64* %1714, align 16, !dbg !339
  %1716 = lshr i64 %1715, 28, !dbg !339
  %1717 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !339
  %1718 = load i64, i64* %1717, align 16, !dbg !339
  %1719 = shl i64 %1718, 36, !dbg !339
  %1720 = or i64 %1716, %1719, !dbg !339
  %1721 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !339
  %1722 = load i64, i64* %1721, align 16, !dbg !339
  %1723 = lshr i64 %1722, 34, !dbg !339
  %1724 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !339
  %1725 = load i64, i64* %1724, align 16, !dbg !339
  %1726 = shl i64 %1725, 30, !dbg !339
  %1727 = or i64 %1723, %1726, !dbg !339
  %1728 = xor i64 %1720, %1727, !dbg !339
  %1729 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !339
  %1730 = load i64, i64* %1729, align 16, !dbg !339
  %1731 = lshr i64 %1730, 39, !dbg !339
  %1732 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !339
  %1733 = load i64, i64* %1732, align 16, !dbg !339
  %1734 = shl i64 %1733, 25, !dbg !339
  %1735 = or i64 %1731, %1734, !dbg !339
  %1736 = xor i64 %1728, %1735, !dbg !339
  %1737 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !339
  %1738 = load i64, i64* %1737, align 16, !dbg !339
  %1739 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !339
  %1740 = load i64, i64* %1739, align 8, !dbg !339
  %1741 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !339
  %1742 = load i64, i64* %1741, align 16, !dbg !339
  %1743 = or i64 %1740, %1742, !dbg !339
  %1744 = and i64 %1738, %1743, !dbg !339
  %1745 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !339
  %1746 = load i64, i64* %1745, align 8, !dbg !339
  %1747 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !339
  %1748 = load i64, i64* %1747, align 16, !dbg !339
  %1749 = and i64 %1746, %1748, !dbg !339
  %1750 = or i64 %1744, %1749, !dbg !339
  %1751 = add i64 %1736, %1750, !dbg !339
  store i64 %1751, i64* %6, align 8, !dbg !339
  %1752 = load i64, i64* %5, align 8, !dbg !339
  %1753 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !339
  %1754 = load i64, i64* %1753, align 8, !dbg !339
  %1755 = add i64 %1754, %1752, !dbg !339
  store i64 %1755, i64* %1753, align 8, !dbg !339
  %1756 = load i64, i64* %5, align 8, !dbg !339
  %1757 = load i64, i64* %6, align 8, !dbg !339
  %1758 = add i64 %1756, %1757, !dbg !339
  %1759 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !339
  store i64 %1758, i64* %1759, align 8, !dbg !339
  %1760 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !340
  %1761 = load i64, i64* %1760, align 16, !dbg !340
  %1762 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !340
  %1763 = load i64, i64* %1762, align 8, !dbg !340
  %1764 = lshr i64 %1763, 14, !dbg !340
  %1765 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !340
  %1766 = load i64, i64* %1765, align 8, !dbg !340
  %1767 = shl i64 %1766, 50, !dbg !340
  %1768 = or i64 %1764, %1767, !dbg !340
  %1769 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !340
  %1770 = load i64, i64* %1769, align 8, !dbg !340
  %1771 = lshr i64 %1770, 18, !dbg !340
  %1772 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !340
  %1773 = load i64, i64* %1772, align 8, !dbg !340
  %1774 = shl i64 %1773, 46, !dbg !340
  %1775 = or i64 %1771, %1774, !dbg !340
  %1776 = xor i64 %1768, %1775, !dbg !340
  %1777 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !340
  %1778 = load i64, i64* %1777, align 8, !dbg !340
  %1779 = lshr i64 %1778, 41, !dbg !340
  %1780 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !340
  %1781 = load i64, i64* %1780, align 8, !dbg !340
  %1782 = shl i64 %1781, 23, !dbg !340
  %1783 = or i64 %1779, %1782, !dbg !340
  %1784 = xor i64 %1776, %1783, !dbg !340
  %1785 = add i64 %1761, %1784, !dbg !340
  %1786 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !340
  %1787 = load i64, i64* %1786, align 8, !dbg !340
  %1788 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !340
  %1789 = load i64, i64* %1788, align 16, !dbg !340
  %1790 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !340
  %1791 = load i64, i64* %1790, align 8, !dbg !340
  %1792 = xor i64 %1789, %1791, !dbg !340
  %1793 = and i64 %1787, %1792, !dbg !340
  %1794 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !340
  %1795 = load i64, i64* %1794, align 8, !dbg !340
  %1796 = xor i64 %1793, %1795, !dbg !340
  %1797 = add i64 %1785, %1796, !dbg !340
  %1798 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 19, !dbg !340
  %1799 = load i64, i64* %1798, align 8, !dbg !340
  %1800 = add i64 %1797, %1799, !dbg !340
  %1801 = add i64 %1800, 2597628984639134821, !dbg !340
  store i64 %1801, i64* %5, align 8, !dbg !340
  %1802 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !340
  %1803 = load i64, i64* %1802, align 8, !dbg !340
  %1804 = lshr i64 %1803, 28, !dbg !340
  %1805 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !340
  %1806 = load i64, i64* %1805, align 8, !dbg !340
  %1807 = shl i64 %1806, 36, !dbg !340
  %1808 = or i64 %1804, %1807, !dbg !340
  %1809 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !340
  %1810 = load i64, i64* %1809, align 8, !dbg !340
  %1811 = lshr i64 %1810, 34, !dbg !340
  %1812 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !340
  %1813 = load i64, i64* %1812, align 8, !dbg !340
  %1814 = shl i64 %1813, 30, !dbg !340
  %1815 = or i64 %1811, %1814, !dbg !340
  %1816 = xor i64 %1808, %1815, !dbg !340
  %1817 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !340
  %1818 = load i64, i64* %1817, align 8, !dbg !340
  %1819 = lshr i64 %1818, 39, !dbg !340
  %1820 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !340
  %1821 = load i64, i64* %1820, align 8, !dbg !340
  %1822 = shl i64 %1821, 25, !dbg !340
  %1823 = or i64 %1819, %1822, !dbg !340
  %1824 = xor i64 %1816, %1823, !dbg !340
  %1825 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !340
  %1826 = load i64, i64* %1825, align 8, !dbg !340
  %1827 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !340
  %1828 = load i64, i64* %1827, align 16, !dbg !340
  %1829 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !340
  %1830 = load i64, i64* %1829, align 8, !dbg !340
  %1831 = or i64 %1828, %1830, !dbg !340
  %1832 = and i64 %1826, %1831, !dbg !340
  %1833 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !340
  %1834 = load i64, i64* %1833, align 16, !dbg !340
  %1835 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !340
  %1836 = load i64, i64* %1835, align 8, !dbg !340
  %1837 = and i64 %1834, %1836, !dbg !340
  %1838 = or i64 %1832, %1837, !dbg !340
  %1839 = add i64 %1824, %1838, !dbg !340
  store i64 %1839, i64* %6, align 8, !dbg !340
  %1840 = load i64, i64* %5, align 8, !dbg !340
  %1841 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !340
  %1842 = load i64, i64* %1841, align 16, !dbg !340
  %1843 = add i64 %1842, %1840, !dbg !340
  store i64 %1843, i64* %1841, align 16, !dbg !340
  %1844 = load i64, i64* %5, align 8, !dbg !340
  %1845 = load i64, i64* %6, align 8, !dbg !340
  %1846 = add i64 %1844, %1845, !dbg !340
  %1847 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !340
  store i64 %1846, i64* %1847, align 16, !dbg !340
  %1848 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !341
  %1849 = load i64, i64* %1848, align 8, !dbg !341
  %1850 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !341
  %1851 = load i64, i64* %1850, align 16, !dbg !341
  %1852 = lshr i64 %1851, 14, !dbg !341
  %1853 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !341
  %1854 = load i64, i64* %1853, align 16, !dbg !341
  %1855 = shl i64 %1854, 50, !dbg !341
  %1856 = or i64 %1852, %1855, !dbg !341
  %1857 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !341
  %1858 = load i64, i64* %1857, align 16, !dbg !341
  %1859 = lshr i64 %1858, 18, !dbg !341
  %1860 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !341
  %1861 = load i64, i64* %1860, align 16, !dbg !341
  %1862 = shl i64 %1861, 46, !dbg !341
  %1863 = or i64 %1859, %1862, !dbg !341
  %1864 = xor i64 %1856, %1863, !dbg !341
  %1865 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !341
  %1866 = load i64, i64* %1865, align 16, !dbg !341
  %1867 = lshr i64 %1866, 41, !dbg !341
  %1868 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !341
  %1869 = load i64, i64* %1868, align 16, !dbg !341
  %1870 = shl i64 %1869, 23, !dbg !341
  %1871 = or i64 %1867, %1870, !dbg !341
  %1872 = xor i64 %1864, %1871, !dbg !341
  %1873 = add i64 %1849, %1872, !dbg !341
  %1874 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !341
  %1875 = load i64, i64* %1874, align 16, !dbg !341
  %1876 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !341
  %1877 = load i64, i64* %1876, align 8, !dbg !341
  %1878 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !341
  %1879 = load i64, i64* %1878, align 16, !dbg !341
  %1880 = xor i64 %1877, %1879, !dbg !341
  %1881 = and i64 %1875, %1880, !dbg !341
  %1882 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !341
  %1883 = load i64, i64* %1882, align 16, !dbg !341
  %1884 = xor i64 %1881, %1883, !dbg !341
  %1885 = add i64 %1873, %1884, !dbg !341
  %1886 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 20, !dbg !341
  %1887 = load i64, i64* %1886, align 16, !dbg !341
  %1888 = add i64 %1885, %1887, !dbg !341
  %1889 = add i64 %1888, 3308224258029322869, !dbg !341
  store i64 %1889, i64* %5, align 8, !dbg !341
  %1890 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !341
  %1891 = load i64, i64* %1890, align 16, !dbg !341
  %1892 = lshr i64 %1891, 28, !dbg !341
  %1893 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !341
  %1894 = load i64, i64* %1893, align 16, !dbg !341
  %1895 = shl i64 %1894, 36, !dbg !341
  %1896 = or i64 %1892, %1895, !dbg !341
  %1897 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !341
  %1898 = load i64, i64* %1897, align 16, !dbg !341
  %1899 = lshr i64 %1898, 34, !dbg !341
  %1900 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !341
  %1901 = load i64, i64* %1900, align 16, !dbg !341
  %1902 = shl i64 %1901, 30, !dbg !341
  %1903 = or i64 %1899, %1902, !dbg !341
  %1904 = xor i64 %1896, %1903, !dbg !341
  %1905 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !341
  %1906 = load i64, i64* %1905, align 16, !dbg !341
  %1907 = lshr i64 %1906, 39, !dbg !341
  %1908 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !341
  %1909 = load i64, i64* %1908, align 16, !dbg !341
  %1910 = shl i64 %1909, 25, !dbg !341
  %1911 = or i64 %1907, %1910, !dbg !341
  %1912 = xor i64 %1904, %1911, !dbg !341
  %1913 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !341
  %1914 = load i64, i64* %1913, align 16, !dbg !341
  %1915 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !341
  %1916 = load i64, i64* %1915, align 8, !dbg !341
  %1917 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !341
  %1918 = load i64, i64* %1917, align 16, !dbg !341
  %1919 = or i64 %1916, %1918, !dbg !341
  %1920 = and i64 %1914, %1919, !dbg !341
  %1921 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !341
  %1922 = load i64, i64* %1921, align 8, !dbg !341
  %1923 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !341
  %1924 = load i64, i64* %1923, align 16, !dbg !341
  %1925 = and i64 %1922, %1924, !dbg !341
  %1926 = or i64 %1920, %1925, !dbg !341
  %1927 = add i64 %1912, %1926, !dbg !341
  store i64 %1927, i64* %6, align 8, !dbg !341
  %1928 = load i64, i64* %5, align 8, !dbg !341
  %1929 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !341
  %1930 = load i64, i64* %1929, align 8, !dbg !341
  %1931 = add i64 %1930, %1928, !dbg !341
  store i64 %1931, i64* %1929, align 8, !dbg !341
  %1932 = load i64, i64* %5, align 8, !dbg !341
  %1933 = load i64, i64* %6, align 8, !dbg !341
  %1934 = add i64 %1932, %1933, !dbg !341
  %1935 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !341
  store i64 %1934, i64* %1935, align 8, !dbg !341
  %1936 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !342
  %1937 = load i64, i64* %1936, align 16, !dbg !342
  %1938 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !342
  %1939 = load i64, i64* %1938, align 8, !dbg !342
  %1940 = lshr i64 %1939, 14, !dbg !342
  %1941 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !342
  %1942 = load i64, i64* %1941, align 8, !dbg !342
  %1943 = shl i64 %1942, 50, !dbg !342
  %1944 = or i64 %1940, %1943, !dbg !342
  %1945 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !342
  %1946 = load i64, i64* %1945, align 8, !dbg !342
  %1947 = lshr i64 %1946, 18, !dbg !342
  %1948 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !342
  %1949 = load i64, i64* %1948, align 8, !dbg !342
  %1950 = shl i64 %1949, 46, !dbg !342
  %1951 = or i64 %1947, %1950, !dbg !342
  %1952 = xor i64 %1944, %1951, !dbg !342
  %1953 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !342
  %1954 = load i64, i64* %1953, align 8, !dbg !342
  %1955 = lshr i64 %1954, 41, !dbg !342
  %1956 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !342
  %1957 = load i64, i64* %1956, align 8, !dbg !342
  %1958 = shl i64 %1957, 23, !dbg !342
  %1959 = or i64 %1955, %1958, !dbg !342
  %1960 = xor i64 %1952, %1959, !dbg !342
  %1961 = add i64 %1937, %1960, !dbg !342
  %1962 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !342
  %1963 = load i64, i64* %1962, align 8, !dbg !342
  %1964 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !342
  %1965 = load i64, i64* %1964, align 16, !dbg !342
  %1966 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !342
  %1967 = load i64, i64* %1966, align 8, !dbg !342
  %1968 = xor i64 %1965, %1967, !dbg !342
  %1969 = and i64 %1963, %1968, !dbg !342
  %1970 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !342
  %1971 = load i64, i64* %1970, align 8, !dbg !342
  %1972 = xor i64 %1969, %1971, !dbg !342
  %1973 = add i64 %1961, %1972, !dbg !342
  %1974 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 21, !dbg !342
  %1975 = load i64, i64* %1974, align 8, !dbg !342
  %1976 = add i64 %1973, %1975, !dbg !342
  %1977 = add i64 %1976, 5365058923640841347, !dbg !342
  store i64 %1977, i64* %5, align 8, !dbg !342
  %1978 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !342
  %1979 = load i64, i64* %1978, align 8, !dbg !342
  %1980 = lshr i64 %1979, 28, !dbg !342
  %1981 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !342
  %1982 = load i64, i64* %1981, align 8, !dbg !342
  %1983 = shl i64 %1982, 36, !dbg !342
  %1984 = or i64 %1980, %1983, !dbg !342
  %1985 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !342
  %1986 = load i64, i64* %1985, align 8, !dbg !342
  %1987 = lshr i64 %1986, 34, !dbg !342
  %1988 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !342
  %1989 = load i64, i64* %1988, align 8, !dbg !342
  %1990 = shl i64 %1989, 30, !dbg !342
  %1991 = or i64 %1987, %1990, !dbg !342
  %1992 = xor i64 %1984, %1991, !dbg !342
  %1993 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !342
  %1994 = load i64, i64* %1993, align 8, !dbg !342
  %1995 = lshr i64 %1994, 39, !dbg !342
  %1996 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !342
  %1997 = load i64, i64* %1996, align 8, !dbg !342
  %1998 = shl i64 %1997, 25, !dbg !342
  %1999 = or i64 %1995, %1998, !dbg !342
  %2000 = xor i64 %1992, %1999, !dbg !342
  %2001 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !342
  %2002 = load i64, i64* %2001, align 8, !dbg !342
  %2003 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !342
  %2004 = load i64, i64* %2003, align 16, !dbg !342
  %2005 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !342
  %2006 = load i64, i64* %2005, align 8, !dbg !342
  %2007 = or i64 %2004, %2006, !dbg !342
  %2008 = and i64 %2002, %2007, !dbg !342
  %2009 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !342
  %2010 = load i64, i64* %2009, align 16, !dbg !342
  %2011 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !342
  %2012 = load i64, i64* %2011, align 8, !dbg !342
  %2013 = and i64 %2010, %2012, !dbg !342
  %2014 = or i64 %2008, %2013, !dbg !342
  %2015 = add i64 %2000, %2014, !dbg !342
  store i64 %2015, i64* %6, align 8, !dbg !342
  %2016 = load i64, i64* %5, align 8, !dbg !342
  %2017 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !342
  %2018 = load i64, i64* %2017, align 16, !dbg !342
  %2019 = add i64 %2018, %2016, !dbg !342
  store i64 %2019, i64* %2017, align 16, !dbg !342
  %2020 = load i64, i64* %5, align 8, !dbg !342
  %2021 = load i64, i64* %6, align 8, !dbg !342
  %2022 = add i64 %2020, %2021, !dbg !342
  %2023 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !342
  store i64 %2022, i64* %2023, align 16, !dbg !342
  %2024 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !343
  %2025 = load i64, i64* %2024, align 8, !dbg !343
  %2026 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !343
  %2027 = load i64, i64* %2026, align 16, !dbg !343
  %2028 = lshr i64 %2027, 14, !dbg !343
  %2029 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !343
  %2030 = load i64, i64* %2029, align 16, !dbg !343
  %2031 = shl i64 %2030, 50, !dbg !343
  %2032 = or i64 %2028, %2031, !dbg !343
  %2033 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !343
  %2034 = load i64, i64* %2033, align 16, !dbg !343
  %2035 = lshr i64 %2034, 18, !dbg !343
  %2036 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !343
  %2037 = load i64, i64* %2036, align 16, !dbg !343
  %2038 = shl i64 %2037, 46, !dbg !343
  %2039 = or i64 %2035, %2038, !dbg !343
  %2040 = xor i64 %2032, %2039, !dbg !343
  %2041 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !343
  %2042 = load i64, i64* %2041, align 16, !dbg !343
  %2043 = lshr i64 %2042, 41, !dbg !343
  %2044 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !343
  %2045 = load i64, i64* %2044, align 16, !dbg !343
  %2046 = shl i64 %2045, 23, !dbg !343
  %2047 = or i64 %2043, %2046, !dbg !343
  %2048 = xor i64 %2040, %2047, !dbg !343
  %2049 = add i64 %2025, %2048, !dbg !343
  %2050 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !343
  %2051 = load i64, i64* %2050, align 16, !dbg !343
  %2052 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !343
  %2053 = load i64, i64* %2052, align 8, !dbg !343
  %2054 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !343
  %2055 = load i64, i64* %2054, align 16, !dbg !343
  %2056 = xor i64 %2053, %2055, !dbg !343
  %2057 = and i64 %2051, %2056, !dbg !343
  %2058 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !343
  %2059 = load i64, i64* %2058, align 16, !dbg !343
  %2060 = xor i64 %2057, %2059, !dbg !343
  %2061 = add i64 %2049, %2060, !dbg !343
  %2062 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 22, !dbg !343
  %2063 = load i64, i64* %2062, align 16, !dbg !343
  %2064 = add i64 %2061, %2063, !dbg !343
  %2065 = add i64 %2064, 6679025012923562964, !dbg !343
  store i64 %2065, i64* %5, align 8, !dbg !343
  %2066 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !343
  %2067 = load i64, i64* %2066, align 16, !dbg !343
  %2068 = lshr i64 %2067, 28, !dbg !343
  %2069 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !343
  %2070 = load i64, i64* %2069, align 16, !dbg !343
  %2071 = shl i64 %2070, 36, !dbg !343
  %2072 = or i64 %2068, %2071, !dbg !343
  %2073 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !343
  %2074 = load i64, i64* %2073, align 16, !dbg !343
  %2075 = lshr i64 %2074, 34, !dbg !343
  %2076 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !343
  %2077 = load i64, i64* %2076, align 16, !dbg !343
  %2078 = shl i64 %2077, 30, !dbg !343
  %2079 = or i64 %2075, %2078, !dbg !343
  %2080 = xor i64 %2072, %2079, !dbg !343
  %2081 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !343
  %2082 = load i64, i64* %2081, align 16, !dbg !343
  %2083 = lshr i64 %2082, 39, !dbg !343
  %2084 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !343
  %2085 = load i64, i64* %2084, align 16, !dbg !343
  %2086 = shl i64 %2085, 25, !dbg !343
  %2087 = or i64 %2083, %2086, !dbg !343
  %2088 = xor i64 %2080, %2087, !dbg !343
  %2089 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !343
  %2090 = load i64, i64* %2089, align 16, !dbg !343
  %2091 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !343
  %2092 = load i64, i64* %2091, align 8, !dbg !343
  %2093 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !343
  %2094 = load i64, i64* %2093, align 16, !dbg !343
  %2095 = or i64 %2092, %2094, !dbg !343
  %2096 = and i64 %2090, %2095, !dbg !343
  %2097 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !343
  %2098 = load i64, i64* %2097, align 8, !dbg !343
  %2099 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !343
  %2100 = load i64, i64* %2099, align 16, !dbg !343
  %2101 = and i64 %2098, %2100, !dbg !343
  %2102 = or i64 %2096, %2101, !dbg !343
  %2103 = add i64 %2088, %2102, !dbg !343
  store i64 %2103, i64* %6, align 8, !dbg !343
  %2104 = load i64, i64* %5, align 8, !dbg !343
  %2105 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !343
  %2106 = load i64, i64* %2105, align 8, !dbg !343
  %2107 = add i64 %2106, %2104, !dbg !343
  store i64 %2107, i64* %2105, align 8, !dbg !343
  %2108 = load i64, i64* %5, align 8, !dbg !343
  %2109 = load i64, i64* %6, align 8, !dbg !343
  %2110 = add i64 %2108, %2109, !dbg !343
  %2111 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !343
  store i64 %2110, i64* %2111, align 8, !dbg !343
  %2112 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !344
  %2113 = load i64, i64* %2112, align 16, !dbg !344
  %2114 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !344
  %2115 = load i64, i64* %2114, align 8, !dbg !344
  %2116 = lshr i64 %2115, 14, !dbg !344
  %2117 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !344
  %2118 = load i64, i64* %2117, align 8, !dbg !344
  %2119 = shl i64 %2118, 50, !dbg !344
  %2120 = or i64 %2116, %2119, !dbg !344
  %2121 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !344
  %2122 = load i64, i64* %2121, align 8, !dbg !344
  %2123 = lshr i64 %2122, 18, !dbg !344
  %2124 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !344
  %2125 = load i64, i64* %2124, align 8, !dbg !344
  %2126 = shl i64 %2125, 46, !dbg !344
  %2127 = or i64 %2123, %2126, !dbg !344
  %2128 = xor i64 %2120, %2127, !dbg !344
  %2129 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !344
  %2130 = load i64, i64* %2129, align 8, !dbg !344
  %2131 = lshr i64 %2130, 41, !dbg !344
  %2132 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !344
  %2133 = load i64, i64* %2132, align 8, !dbg !344
  %2134 = shl i64 %2133, 23, !dbg !344
  %2135 = or i64 %2131, %2134, !dbg !344
  %2136 = xor i64 %2128, %2135, !dbg !344
  %2137 = add i64 %2113, %2136, !dbg !344
  %2138 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !344
  %2139 = load i64, i64* %2138, align 8, !dbg !344
  %2140 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !344
  %2141 = load i64, i64* %2140, align 16, !dbg !344
  %2142 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !344
  %2143 = load i64, i64* %2142, align 8, !dbg !344
  %2144 = xor i64 %2141, %2143, !dbg !344
  %2145 = and i64 %2139, %2144, !dbg !344
  %2146 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !344
  %2147 = load i64, i64* %2146, align 8, !dbg !344
  %2148 = xor i64 %2145, %2147, !dbg !344
  %2149 = add i64 %2137, %2148, !dbg !344
  %2150 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 23, !dbg !344
  %2151 = load i64, i64* %2150, align 8, !dbg !344
  %2152 = add i64 %2149, %2151, !dbg !344
  %2153 = add i64 %2152, 8573033837759648693, !dbg !344
  store i64 %2153, i64* %5, align 8, !dbg !344
  %2154 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !344
  %2155 = load i64, i64* %2154, align 8, !dbg !344
  %2156 = lshr i64 %2155, 28, !dbg !344
  %2157 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !344
  %2158 = load i64, i64* %2157, align 8, !dbg !344
  %2159 = shl i64 %2158, 36, !dbg !344
  %2160 = or i64 %2156, %2159, !dbg !344
  %2161 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !344
  %2162 = load i64, i64* %2161, align 8, !dbg !344
  %2163 = lshr i64 %2162, 34, !dbg !344
  %2164 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !344
  %2165 = load i64, i64* %2164, align 8, !dbg !344
  %2166 = shl i64 %2165, 30, !dbg !344
  %2167 = or i64 %2163, %2166, !dbg !344
  %2168 = xor i64 %2160, %2167, !dbg !344
  %2169 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !344
  %2170 = load i64, i64* %2169, align 8, !dbg !344
  %2171 = lshr i64 %2170, 39, !dbg !344
  %2172 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !344
  %2173 = load i64, i64* %2172, align 8, !dbg !344
  %2174 = shl i64 %2173, 25, !dbg !344
  %2175 = or i64 %2171, %2174, !dbg !344
  %2176 = xor i64 %2168, %2175, !dbg !344
  %2177 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !344
  %2178 = load i64, i64* %2177, align 8, !dbg !344
  %2179 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !344
  %2180 = load i64, i64* %2179, align 16, !dbg !344
  %2181 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !344
  %2182 = load i64, i64* %2181, align 8, !dbg !344
  %2183 = or i64 %2180, %2182, !dbg !344
  %2184 = and i64 %2178, %2183, !dbg !344
  %2185 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !344
  %2186 = load i64, i64* %2185, align 16, !dbg !344
  %2187 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !344
  %2188 = load i64, i64* %2187, align 8, !dbg !344
  %2189 = and i64 %2186, %2188, !dbg !344
  %2190 = or i64 %2184, %2189, !dbg !344
  %2191 = add i64 %2176, %2190, !dbg !344
  store i64 %2191, i64* %6, align 8, !dbg !344
  %2192 = load i64, i64* %5, align 8, !dbg !344
  %2193 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !344
  %2194 = load i64, i64* %2193, align 16, !dbg !344
  %2195 = add i64 %2194, %2192, !dbg !344
  store i64 %2195, i64* %2193, align 16, !dbg !344
  %2196 = load i64, i64* %5, align 8, !dbg !344
  %2197 = load i64, i64* %6, align 8, !dbg !344
  %2198 = add i64 %2196, %2197, !dbg !344
  %2199 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !344
  store i64 %2198, i64* %2199, align 16, !dbg !344
  %2200 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !345
  %2201 = load i64, i64* %2200, align 8, !dbg !345
  %2202 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !345
  %2203 = load i64, i64* %2202, align 16, !dbg !345
  %2204 = lshr i64 %2203, 14, !dbg !345
  %2205 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !345
  %2206 = load i64, i64* %2205, align 16, !dbg !345
  %2207 = shl i64 %2206, 50, !dbg !345
  %2208 = or i64 %2204, %2207, !dbg !345
  %2209 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !345
  %2210 = load i64, i64* %2209, align 16, !dbg !345
  %2211 = lshr i64 %2210, 18, !dbg !345
  %2212 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !345
  %2213 = load i64, i64* %2212, align 16, !dbg !345
  %2214 = shl i64 %2213, 46, !dbg !345
  %2215 = or i64 %2211, %2214, !dbg !345
  %2216 = xor i64 %2208, %2215, !dbg !345
  %2217 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !345
  %2218 = load i64, i64* %2217, align 16, !dbg !345
  %2219 = lshr i64 %2218, 41, !dbg !345
  %2220 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !345
  %2221 = load i64, i64* %2220, align 16, !dbg !345
  %2222 = shl i64 %2221, 23, !dbg !345
  %2223 = or i64 %2219, %2222, !dbg !345
  %2224 = xor i64 %2216, %2223, !dbg !345
  %2225 = add i64 %2201, %2224, !dbg !345
  %2226 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !345
  %2227 = load i64, i64* %2226, align 16, !dbg !345
  %2228 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !345
  %2229 = load i64, i64* %2228, align 8, !dbg !345
  %2230 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !345
  %2231 = load i64, i64* %2230, align 16, !dbg !345
  %2232 = xor i64 %2229, %2231, !dbg !345
  %2233 = and i64 %2227, %2232, !dbg !345
  %2234 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !345
  %2235 = load i64, i64* %2234, align 16, !dbg !345
  %2236 = xor i64 %2233, %2235, !dbg !345
  %2237 = add i64 %2225, %2236, !dbg !345
  %2238 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 24, !dbg !345
  %2239 = load i64, i64* %2238, align 16, !dbg !345
  %2240 = add i64 %2237, %2239, !dbg !345
  %2241 = add i64 %2240, -7476448914759557205, !dbg !345
  store i64 %2241, i64* %5, align 8, !dbg !345
  %2242 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !345
  %2243 = load i64, i64* %2242, align 16, !dbg !345
  %2244 = lshr i64 %2243, 28, !dbg !345
  %2245 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !345
  %2246 = load i64, i64* %2245, align 16, !dbg !345
  %2247 = shl i64 %2246, 36, !dbg !345
  %2248 = or i64 %2244, %2247, !dbg !345
  %2249 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !345
  %2250 = load i64, i64* %2249, align 16, !dbg !345
  %2251 = lshr i64 %2250, 34, !dbg !345
  %2252 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !345
  %2253 = load i64, i64* %2252, align 16, !dbg !345
  %2254 = shl i64 %2253, 30, !dbg !345
  %2255 = or i64 %2251, %2254, !dbg !345
  %2256 = xor i64 %2248, %2255, !dbg !345
  %2257 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !345
  %2258 = load i64, i64* %2257, align 16, !dbg !345
  %2259 = lshr i64 %2258, 39, !dbg !345
  %2260 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !345
  %2261 = load i64, i64* %2260, align 16, !dbg !345
  %2262 = shl i64 %2261, 25, !dbg !345
  %2263 = or i64 %2259, %2262, !dbg !345
  %2264 = xor i64 %2256, %2263, !dbg !345
  %2265 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !345
  %2266 = load i64, i64* %2265, align 16, !dbg !345
  %2267 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !345
  %2268 = load i64, i64* %2267, align 8, !dbg !345
  %2269 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !345
  %2270 = load i64, i64* %2269, align 16, !dbg !345
  %2271 = or i64 %2268, %2270, !dbg !345
  %2272 = and i64 %2266, %2271, !dbg !345
  %2273 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !345
  %2274 = load i64, i64* %2273, align 8, !dbg !345
  %2275 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !345
  %2276 = load i64, i64* %2275, align 16, !dbg !345
  %2277 = and i64 %2274, %2276, !dbg !345
  %2278 = or i64 %2272, %2277, !dbg !345
  %2279 = add i64 %2264, %2278, !dbg !345
  store i64 %2279, i64* %6, align 8, !dbg !345
  %2280 = load i64, i64* %5, align 8, !dbg !345
  %2281 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !345
  %2282 = load i64, i64* %2281, align 8, !dbg !345
  %2283 = add i64 %2282, %2280, !dbg !345
  store i64 %2283, i64* %2281, align 8, !dbg !345
  %2284 = load i64, i64* %5, align 8, !dbg !345
  %2285 = load i64, i64* %6, align 8, !dbg !345
  %2286 = add i64 %2284, %2285, !dbg !345
  %2287 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !345
  store i64 %2286, i64* %2287, align 8, !dbg !345
  %2288 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !346
  %2289 = load i64, i64* %2288, align 16, !dbg !346
  %2290 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !346
  %2291 = load i64, i64* %2290, align 8, !dbg !346
  %2292 = lshr i64 %2291, 14, !dbg !346
  %2293 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !346
  %2294 = load i64, i64* %2293, align 8, !dbg !346
  %2295 = shl i64 %2294, 50, !dbg !346
  %2296 = or i64 %2292, %2295, !dbg !346
  %2297 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !346
  %2298 = load i64, i64* %2297, align 8, !dbg !346
  %2299 = lshr i64 %2298, 18, !dbg !346
  %2300 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !346
  %2301 = load i64, i64* %2300, align 8, !dbg !346
  %2302 = shl i64 %2301, 46, !dbg !346
  %2303 = or i64 %2299, %2302, !dbg !346
  %2304 = xor i64 %2296, %2303, !dbg !346
  %2305 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !346
  %2306 = load i64, i64* %2305, align 8, !dbg !346
  %2307 = lshr i64 %2306, 41, !dbg !346
  %2308 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !346
  %2309 = load i64, i64* %2308, align 8, !dbg !346
  %2310 = shl i64 %2309, 23, !dbg !346
  %2311 = or i64 %2307, %2310, !dbg !346
  %2312 = xor i64 %2304, %2311, !dbg !346
  %2313 = add i64 %2289, %2312, !dbg !346
  %2314 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !346
  %2315 = load i64, i64* %2314, align 8, !dbg !346
  %2316 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !346
  %2317 = load i64, i64* %2316, align 16, !dbg !346
  %2318 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !346
  %2319 = load i64, i64* %2318, align 8, !dbg !346
  %2320 = xor i64 %2317, %2319, !dbg !346
  %2321 = and i64 %2315, %2320, !dbg !346
  %2322 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !346
  %2323 = load i64, i64* %2322, align 8, !dbg !346
  %2324 = xor i64 %2321, %2323, !dbg !346
  %2325 = add i64 %2313, %2324, !dbg !346
  %2326 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 25, !dbg !346
  %2327 = load i64, i64* %2326, align 8, !dbg !346
  %2328 = add i64 %2325, %2327, !dbg !346
  %2329 = add i64 %2328, -6327057829258317296, !dbg !346
  store i64 %2329, i64* %5, align 8, !dbg !346
  %2330 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !346
  %2331 = load i64, i64* %2330, align 8, !dbg !346
  %2332 = lshr i64 %2331, 28, !dbg !346
  %2333 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !346
  %2334 = load i64, i64* %2333, align 8, !dbg !346
  %2335 = shl i64 %2334, 36, !dbg !346
  %2336 = or i64 %2332, %2335, !dbg !346
  %2337 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !346
  %2338 = load i64, i64* %2337, align 8, !dbg !346
  %2339 = lshr i64 %2338, 34, !dbg !346
  %2340 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !346
  %2341 = load i64, i64* %2340, align 8, !dbg !346
  %2342 = shl i64 %2341, 30, !dbg !346
  %2343 = or i64 %2339, %2342, !dbg !346
  %2344 = xor i64 %2336, %2343, !dbg !346
  %2345 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !346
  %2346 = load i64, i64* %2345, align 8, !dbg !346
  %2347 = lshr i64 %2346, 39, !dbg !346
  %2348 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !346
  %2349 = load i64, i64* %2348, align 8, !dbg !346
  %2350 = shl i64 %2349, 25, !dbg !346
  %2351 = or i64 %2347, %2350, !dbg !346
  %2352 = xor i64 %2344, %2351, !dbg !346
  %2353 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !346
  %2354 = load i64, i64* %2353, align 8, !dbg !346
  %2355 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !346
  %2356 = load i64, i64* %2355, align 16, !dbg !346
  %2357 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !346
  %2358 = load i64, i64* %2357, align 8, !dbg !346
  %2359 = or i64 %2356, %2358, !dbg !346
  %2360 = and i64 %2354, %2359, !dbg !346
  %2361 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !346
  %2362 = load i64, i64* %2361, align 16, !dbg !346
  %2363 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !346
  %2364 = load i64, i64* %2363, align 8, !dbg !346
  %2365 = and i64 %2362, %2364, !dbg !346
  %2366 = or i64 %2360, %2365, !dbg !346
  %2367 = add i64 %2352, %2366, !dbg !346
  store i64 %2367, i64* %6, align 8, !dbg !346
  %2368 = load i64, i64* %5, align 8, !dbg !346
  %2369 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !346
  %2370 = load i64, i64* %2369, align 16, !dbg !346
  %2371 = add i64 %2370, %2368, !dbg !346
  store i64 %2371, i64* %2369, align 16, !dbg !346
  %2372 = load i64, i64* %5, align 8, !dbg !346
  %2373 = load i64, i64* %6, align 8, !dbg !346
  %2374 = add i64 %2372, %2373, !dbg !346
  %2375 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !346
  store i64 %2374, i64* %2375, align 16, !dbg !346
  %2376 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !347
  %2377 = load i64, i64* %2376, align 8, !dbg !347
  %2378 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !347
  %2379 = load i64, i64* %2378, align 16, !dbg !347
  %2380 = lshr i64 %2379, 14, !dbg !347
  %2381 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !347
  %2382 = load i64, i64* %2381, align 16, !dbg !347
  %2383 = shl i64 %2382, 50, !dbg !347
  %2384 = or i64 %2380, %2383, !dbg !347
  %2385 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !347
  %2386 = load i64, i64* %2385, align 16, !dbg !347
  %2387 = lshr i64 %2386, 18, !dbg !347
  %2388 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !347
  %2389 = load i64, i64* %2388, align 16, !dbg !347
  %2390 = shl i64 %2389, 46, !dbg !347
  %2391 = or i64 %2387, %2390, !dbg !347
  %2392 = xor i64 %2384, %2391, !dbg !347
  %2393 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !347
  %2394 = load i64, i64* %2393, align 16, !dbg !347
  %2395 = lshr i64 %2394, 41, !dbg !347
  %2396 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !347
  %2397 = load i64, i64* %2396, align 16, !dbg !347
  %2398 = shl i64 %2397, 23, !dbg !347
  %2399 = or i64 %2395, %2398, !dbg !347
  %2400 = xor i64 %2392, %2399, !dbg !347
  %2401 = add i64 %2377, %2400, !dbg !347
  %2402 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !347
  %2403 = load i64, i64* %2402, align 16, !dbg !347
  %2404 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !347
  %2405 = load i64, i64* %2404, align 8, !dbg !347
  %2406 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !347
  %2407 = load i64, i64* %2406, align 16, !dbg !347
  %2408 = xor i64 %2405, %2407, !dbg !347
  %2409 = and i64 %2403, %2408, !dbg !347
  %2410 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !347
  %2411 = load i64, i64* %2410, align 16, !dbg !347
  %2412 = xor i64 %2409, %2411, !dbg !347
  %2413 = add i64 %2401, %2412, !dbg !347
  %2414 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 26, !dbg !347
  %2415 = load i64, i64* %2414, align 16, !dbg !347
  %2416 = add i64 %2413, %2415, !dbg !347
  %2417 = add i64 %2416, -5763719355590565569, !dbg !347
  store i64 %2417, i64* %5, align 8, !dbg !347
  %2418 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !347
  %2419 = load i64, i64* %2418, align 16, !dbg !347
  %2420 = lshr i64 %2419, 28, !dbg !347
  %2421 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !347
  %2422 = load i64, i64* %2421, align 16, !dbg !347
  %2423 = shl i64 %2422, 36, !dbg !347
  %2424 = or i64 %2420, %2423, !dbg !347
  %2425 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !347
  %2426 = load i64, i64* %2425, align 16, !dbg !347
  %2427 = lshr i64 %2426, 34, !dbg !347
  %2428 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !347
  %2429 = load i64, i64* %2428, align 16, !dbg !347
  %2430 = shl i64 %2429, 30, !dbg !347
  %2431 = or i64 %2427, %2430, !dbg !347
  %2432 = xor i64 %2424, %2431, !dbg !347
  %2433 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !347
  %2434 = load i64, i64* %2433, align 16, !dbg !347
  %2435 = lshr i64 %2434, 39, !dbg !347
  %2436 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !347
  %2437 = load i64, i64* %2436, align 16, !dbg !347
  %2438 = shl i64 %2437, 25, !dbg !347
  %2439 = or i64 %2435, %2438, !dbg !347
  %2440 = xor i64 %2432, %2439, !dbg !347
  %2441 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !347
  %2442 = load i64, i64* %2441, align 16, !dbg !347
  %2443 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !347
  %2444 = load i64, i64* %2443, align 8, !dbg !347
  %2445 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !347
  %2446 = load i64, i64* %2445, align 16, !dbg !347
  %2447 = or i64 %2444, %2446, !dbg !347
  %2448 = and i64 %2442, %2447, !dbg !347
  %2449 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !347
  %2450 = load i64, i64* %2449, align 8, !dbg !347
  %2451 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !347
  %2452 = load i64, i64* %2451, align 16, !dbg !347
  %2453 = and i64 %2450, %2452, !dbg !347
  %2454 = or i64 %2448, %2453, !dbg !347
  %2455 = add i64 %2440, %2454, !dbg !347
  store i64 %2455, i64* %6, align 8, !dbg !347
  %2456 = load i64, i64* %5, align 8, !dbg !347
  %2457 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !347
  %2458 = load i64, i64* %2457, align 8, !dbg !347
  %2459 = add i64 %2458, %2456, !dbg !347
  store i64 %2459, i64* %2457, align 8, !dbg !347
  %2460 = load i64, i64* %5, align 8, !dbg !347
  %2461 = load i64, i64* %6, align 8, !dbg !347
  %2462 = add i64 %2460, %2461, !dbg !347
  %2463 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !347
  store i64 %2462, i64* %2463, align 8, !dbg !347
  %2464 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !348
  %2465 = load i64, i64* %2464, align 16, !dbg !348
  %2466 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !348
  %2467 = load i64, i64* %2466, align 8, !dbg !348
  %2468 = lshr i64 %2467, 14, !dbg !348
  %2469 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !348
  %2470 = load i64, i64* %2469, align 8, !dbg !348
  %2471 = shl i64 %2470, 50, !dbg !348
  %2472 = or i64 %2468, %2471, !dbg !348
  %2473 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !348
  %2474 = load i64, i64* %2473, align 8, !dbg !348
  %2475 = lshr i64 %2474, 18, !dbg !348
  %2476 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !348
  %2477 = load i64, i64* %2476, align 8, !dbg !348
  %2478 = shl i64 %2477, 46, !dbg !348
  %2479 = or i64 %2475, %2478, !dbg !348
  %2480 = xor i64 %2472, %2479, !dbg !348
  %2481 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !348
  %2482 = load i64, i64* %2481, align 8, !dbg !348
  %2483 = lshr i64 %2482, 41, !dbg !348
  %2484 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !348
  %2485 = load i64, i64* %2484, align 8, !dbg !348
  %2486 = shl i64 %2485, 23, !dbg !348
  %2487 = or i64 %2483, %2486, !dbg !348
  %2488 = xor i64 %2480, %2487, !dbg !348
  %2489 = add i64 %2465, %2488, !dbg !348
  %2490 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !348
  %2491 = load i64, i64* %2490, align 8, !dbg !348
  %2492 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !348
  %2493 = load i64, i64* %2492, align 16, !dbg !348
  %2494 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !348
  %2495 = load i64, i64* %2494, align 8, !dbg !348
  %2496 = xor i64 %2493, %2495, !dbg !348
  %2497 = and i64 %2491, %2496, !dbg !348
  %2498 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !348
  %2499 = load i64, i64* %2498, align 8, !dbg !348
  %2500 = xor i64 %2497, %2499, !dbg !348
  %2501 = add i64 %2489, %2500, !dbg !348
  %2502 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 27, !dbg !348
  %2503 = load i64, i64* %2502, align 8, !dbg !348
  %2504 = add i64 %2501, %2503, !dbg !348
  %2505 = add i64 %2504, -4658551843659510044, !dbg !348
  store i64 %2505, i64* %5, align 8, !dbg !348
  %2506 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !348
  %2507 = load i64, i64* %2506, align 8, !dbg !348
  %2508 = lshr i64 %2507, 28, !dbg !348
  %2509 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !348
  %2510 = load i64, i64* %2509, align 8, !dbg !348
  %2511 = shl i64 %2510, 36, !dbg !348
  %2512 = or i64 %2508, %2511, !dbg !348
  %2513 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !348
  %2514 = load i64, i64* %2513, align 8, !dbg !348
  %2515 = lshr i64 %2514, 34, !dbg !348
  %2516 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !348
  %2517 = load i64, i64* %2516, align 8, !dbg !348
  %2518 = shl i64 %2517, 30, !dbg !348
  %2519 = or i64 %2515, %2518, !dbg !348
  %2520 = xor i64 %2512, %2519, !dbg !348
  %2521 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !348
  %2522 = load i64, i64* %2521, align 8, !dbg !348
  %2523 = lshr i64 %2522, 39, !dbg !348
  %2524 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !348
  %2525 = load i64, i64* %2524, align 8, !dbg !348
  %2526 = shl i64 %2525, 25, !dbg !348
  %2527 = or i64 %2523, %2526, !dbg !348
  %2528 = xor i64 %2520, %2527, !dbg !348
  %2529 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !348
  %2530 = load i64, i64* %2529, align 8, !dbg !348
  %2531 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !348
  %2532 = load i64, i64* %2531, align 16, !dbg !348
  %2533 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !348
  %2534 = load i64, i64* %2533, align 8, !dbg !348
  %2535 = or i64 %2532, %2534, !dbg !348
  %2536 = and i64 %2530, %2535, !dbg !348
  %2537 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !348
  %2538 = load i64, i64* %2537, align 16, !dbg !348
  %2539 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !348
  %2540 = load i64, i64* %2539, align 8, !dbg !348
  %2541 = and i64 %2538, %2540, !dbg !348
  %2542 = or i64 %2536, %2541, !dbg !348
  %2543 = add i64 %2528, %2542, !dbg !348
  store i64 %2543, i64* %6, align 8, !dbg !348
  %2544 = load i64, i64* %5, align 8, !dbg !348
  %2545 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !348
  %2546 = load i64, i64* %2545, align 16, !dbg !348
  %2547 = add i64 %2546, %2544, !dbg !348
  store i64 %2547, i64* %2545, align 16, !dbg !348
  %2548 = load i64, i64* %5, align 8, !dbg !348
  %2549 = load i64, i64* %6, align 8, !dbg !348
  %2550 = add i64 %2548, %2549, !dbg !348
  %2551 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !348
  store i64 %2550, i64* %2551, align 16, !dbg !348
  %2552 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !349
  %2553 = load i64, i64* %2552, align 8, !dbg !349
  %2554 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !349
  %2555 = load i64, i64* %2554, align 16, !dbg !349
  %2556 = lshr i64 %2555, 14, !dbg !349
  %2557 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !349
  %2558 = load i64, i64* %2557, align 16, !dbg !349
  %2559 = shl i64 %2558, 50, !dbg !349
  %2560 = or i64 %2556, %2559, !dbg !349
  %2561 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !349
  %2562 = load i64, i64* %2561, align 16, !dbg !349
  %2563 = lshr i64 %2562, 18, !dbg !349
  %2564 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !349
  %2565 = load i64, i64* %2564, align 16, !dbg !349
  %2566 = shl i64 %2565, 46, !dbg !349
  %2567 = or i64 %2563, %2566, !dbg !349
  %2568 = xor i64 %2560, %2567, !dbg !349
  %2569 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !349
  %2570 = load i64, i64* %2569, align 16, !dbg !349
  %2571 = lshr i64 %2570, 41, !dbg !349
  %2572 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !349
  %2573 = load i64, i64* %2572, align 16, !dbg !349
  %2574 = shl i64 %2573, 23, !dbg !349
  %2575 = or i64 %2571, %2574, !dbg !349
  %2576 = xor i64 %2568, %2575, !dbg !349
  %2577 = add i64 %2553, %2576, !dbg !349
  %2578 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !349
  %2579 = load i64, i64* %2578, align 16, !dbg !349
  %2580 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !349
  %2581 = load i64, i64* %2580, align 8, !dbg !349
  %2582 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !349
  %2583 = load i64, i64* %2582, align 16, !dbg !349
  %2584 = xor i64 %2581, %2583, !dbg !349
  %2585 = and i64 %2579, %2584, !dbg !349
  %2586 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !349
  %2587 = load i64, i64* %2586, align 16, !dbg !349
  %2588 = xor i64 %2585, %2587, !dbg !349
  %2589 = add i64 %2577, %2588, !dbg !349
  %2590 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 28, !dbg !349
  %2591 = load i64, i64* %2590, align 16, !dbg !349
  %2592 = add i64 %2589, %2591, !dbg !349
  %2593 = add i64 %2592, -4116276920077217854, !dbg !349
  store i64 %2593, i64* %5, align 8, !dbg !349
  %2594 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !349
  %2595 = load i64, i64* %2594, align 16, !dbg !349
  %2596 = lshr i64 %2595, 28, !dbg !349
  %2597 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !349
  %2598 = load i64, i64* %2597, align 16, !dbg !349
  %2599 = shl i64 %2598, 36, !dbg !349
  %2600 = or i64 %2596, %2599, !dbg !349
  %2601 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !349
  %2602 = load i64, i64* %2601, align 16, !dbg !349
  %2603 = lshr i64 %2602, 34, !dbg !349
  %2604 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !349
  %2605 = load i64, i64* %2604, align 16, !dbg !349
  %2606 = shl i64 %2605, 30, !dbg !349
  %2607 = or i64 %2603, %2606, !dbg !349
  %2608 = xor i64 %2600, %2607, !dbg !349
  %2609 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !349
  %2610 = load i64, i64* %2609, align 16, !dbg !349
  %2611 = lshr i64 %2610, 39, !dbg !349
  %2612 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !349
  %2613 = load i64, i64* %2612, align 16, !dbg !349
  %2614 = shl i64 %2613, 25, !dbg !349
  %2615 = or i64 %2611, %2614, !dbg !349
  %2616 = xor i64 %2608, %2615, !dbg !349
  %2617 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !349
  %2618 = load i64, i64* %2617, align 16, !dbg !349
  %2619 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !349
  %2620 = load i64, i64* %2619, align 8, !dbg !349
  %2621 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !349
  %2622 = load i64, i64* %2621, align 16, !dbg !349
  %2623 = or i64 %2620, %2622, !dbg !349
  %2624 = and i64 %2618, %2623, !dbg !349
  %2625 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !349
  %2626 = load i64, i64* %2625, align 8, !dbg !349
  %2627 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !349
  %2628 = load i64, i64* %2627, align 16, !dbg !349
  %2629 = and i64 %2626, %2628, !dbg !349
  %2630 = or i64 %2624, %2629, !dbg !349
  %2631 = add i64 %2616, %2630, !dbg !349
  store i64 %2631, i64* %6, align 8, !dbg !349
  %2632 = load i64, i64* %5, align 8, !dbg !349
  %2633 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !349
  %2634 = load i64, i64* %2633, align 8, !dbg !349
  %2635 = add i64 %2634, %2632, !dbg !349
  store i64 %2635, i64* %2633, align 8, !dbg !349
  %2636 = load i64, i64* %5, align 8, !dbg !349
  %2637 = load i64, i64* %6, align 8, !dbg !349
  %2638 = add i64 %2636, %2637, !dbg !349
  %2639 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !349
  store i64 %2638, i64* %2639, align 8, !dbg !349
  %2640 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !350
  %2641 = load i64, i64* %2640, align 16, !dbg !350
  %2642 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !350
  %2643 = load i64, i64* %2642, align 8, !dbg !350
  %2644 = lshr i64 %2643, 14, !dbg !350
  %2645 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !350
  %2646 = load i64, i64* %2645, align 8, !dbg !350
  %2647 = shl i64 %2646, 50, !dbg !350
  %2648 = or i64 %2644, %2647, !dbg !350
  %2649 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !350
  %2650 = load i64, i64* %2649, align 8, !dbg !350
  %2651 = lshr i64 %2650, 18, !dbg !350
  %2652 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !350
  %2653 = load i64, i64* %2652, align 8, !dbg !350
  %2654 = shl i64 %2653, 46, !dbg !350
  %2655 = or i64 %2651, %2654, !dbg !350
  %2656 = xor i64 %2648, %2655, !dbg !350
  %2657 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !350
  %2658 = load i64, i64* %2657, align 8, !dbg !350
  %2659 = lshr i64 %2658, 41, !dbg !350
  %2660 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !350
  %2661 = load i64, i64* %2660, align 8, !dbg !350
  %2662 = shl i64 %2661, 23, !dbg !350
  %2663 = or i64 %2659, %2662, !dbg !350
  %2664 = xor i64 %2656, %2663, !dbg !350
  %2665 = add i64 %2641, %2664, !dbg !350
  %2666 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !350
  %2667 = load i64, i64* %2666, align 8, !dbg !350
  %2668 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !350
  %2669 = load i64, i64* %2668, align 16, !dbg !350
  %2670 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !350
  %2671 = load i64, i64* %2670, align 8, !dbg !350
  %2672 = xor i64 %2669, %2671, !dbg !350
  %2673 = and i64 %2667, %2672, !dbg !350
  %2674 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !350
  %2675 = load i64, i64* %2674, align 8, !dbg !350
  %2676 = xor i64 %2673, %2675, !dbg !350
  %2677 = add i64 %2665, %2676, !dbg !350
  %2678 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 29, !dbg !350
  %2679 = load i64, i64* %2678, align 8, !dbg !350
  %2680 = add i64 %2677, %2679, !dbg !350
  %2681 = add i64 %2680, -3051310485924567259, !dbg !350
  store i64 %2681, i64* %5, align 8, !dbg !350
  %2682 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !350
  %2683 = load i64, i64* %2682, align 8, !dbg !350
  %2684 = lshr i64 %2683, 28, !dbg !350
  %2685 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !350
  %2686 = load i64, i64* %2685, align 8, !dbg !350
  %2687 = shl i64 %2686, 36, !dbg !350
  %2688 = or i64 %2684, %2687, !dbg !350
  %2689 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !350
  %2690 = load i64, i64* %2689, align 8, !dbg !350
  %2691 = lshr i64 %2690, 34, !dbg !350
  %2692 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !350
  %2693 = load i64, i64* %2692, align 8, !dbg !350
  %2694 = shl i64 %2693, 30, !dbg !350
  %2695 = or i64 %2691, %2694, !dbg !350
  %2696 = xor i64 %2688, %2695, !dbg !350
  %2697 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !350
  %2698 = load i64, i64* %2697, align 8, !dbg !350
  %2699 = lshr i64 %2698, 39, !dbg !350
  %2700 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !350
  %2701 = load i64, i64* %2700, align 8, !dbg !350
  %2702 = shl i64 %2701, 25, !dbg !350
  %2703 = or i64 %2699, %2702, !dbg !350
  %2704 = xor i64 %2696, %2703, !dbg !350
  %2705 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !350
  %2706 = load i64, i64* %2705, align 8, !dbg !350
  %2707 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !350
  %2708 = load i64, i64* %2707, align 16, !dbg !350
  %2709 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !350
  %2710 = load i64, i64* %2709, align 8, !dbg !350
  %2711 = or i64 %2708, %2710, !dbg !350
  %2712 = and i64 %2706, %2711, !dbg !350
  %2713 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !350
  %2714 = load i64, i64* %2713, align 16, !dbg !350
  %2715 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !350
  %2716 = load i64, i64* %2715, align 8, !dbg !350
  %2717 = and i64 %2714, %2716, !dbg !350
  %2718 = or i64 %2712, %2717, !dbg !350
  %2719 = add i64 %2704, %2718, !dbg !350
  store i64 %2719, i64* %6, align 8, !dbg !350
  %2720 = load i64, i64* %5, align 8, !dbg !350
  %2721 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !350
  %2722 = load i64, i64* %2721, align 16, !dbg !350
  %2723 = add i64 %2722, %2720, !dbg !350
  store i64 %2723, i64* %2721, align 16, !dbg !350
  %2724 = load i64, i64* %5, align 8, !dbg !350
  %2725 = load i64, i64* %6, align 8, !dbg !350
  %2726 = add i64 %2724, %2725, !dbg !350
  %2727 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !350
  store i64 %2726, i64* %2727, align 16, !dbg !350
  %2728 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !351
  %2729 = load i64, i64* %2728, align 8, !dbg !351
  %2730 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !351
  %2731 = load i64, i64* %2730, align 16, !dbg !351
  %2732 = lshr i64 %2731, 14, !dbg !351
  %2733 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !351
  %2734 = load i64, i64* %2733, align 16, !dbg !351
  %2735 = shl i64 %2734, 50, !dbg !351
  %2736 = or i64 %2732, %2735, !dbg !351
  %2737 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !351
  %2738 = load i64, i64* %2737, align 16, !dbg !351
  %2739 = lshr i64 %2738, 18, !dbg !351
  %2740 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !351
  %2741 = load i64, i64* %2740, align 16, !dbg !351
  %2742 = shl i64 %2741, 46, !dbg !351
  %2743 = or i64 %2739, %2742, !dbg !351
  %2744 = xor i64 %2736, %2743, !dbg !351
  %2745 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !351
  %2746 = load i64, i64* %2745, align 16, !dbg !351
  %2747 = lshr i64 %2746, 41, !dbg !351
  %2748 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !351
  %2749 = load i64, i64* %2748, align 16, !dbg !351
  %2750 = shl i64 %2749, 23, !dbg !351
  %2751 = or i64 %2747, %2750, !dbg !351
  %2752 = xor i64 %2744, %2751, !dbg !351
  %2753 = add i64 %2729, %2752, !dbg !351
  %2754 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !351
  %2755 = load i64, i64* %2754, align 16, !dbg !351
  %2756 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !351
  %2757 = load i64, i64* %2756, align 8, !dbg !351
  %2758 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !351
  %2759 = load i64, i64* %2758, align 16, !dbg !351
  %2760 = xor i64 %2757, %2759, !dbg !351
  %2761 = and i64 %2755, %2760, !dbg !351
  %2762 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !351
  %2763 = load i64, i64* %2762, align 16, !dbg !351
  %2764 = xor i64 %2761, %2763, !dbg !351
  %2765 = add i64 %2753, %2764, !dbg !351
  %2766 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 30, !dbg !351
  %2767 = load i64, i64* %2766, align 16, !dbg !351
  %2768 = add i64 %2765, %2767, !dbg !351
  %2769 = add i64 %2768, 489312712824947311, !dbg !351
  store i64 %2769, i64* %5, align 8, !dbg !351
  %2770 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !351
  %2771 = load i64, i64* %2770, align 16, !dbg !351
  %2772 = lshr i64 %2771, 28, !dbg !351
  %2773 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !351
  %2774 = load i64, i64* %2773, align 16, !dbg !351
  %2775 = shl i64 %2774, 36, !dbg !351
  %2776 = or i64 %2772, %2775, !dbg !351
  %2777 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !351
  %2778 = load i64, i64* %2777, align 16, !dbg !351
  %2779 = lshr i64 %2778, 34, !dbg !351
  %2780 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !351
  %2781 = load i64, i64* %2780, align 16, !dbg !351
  %2782 = shl i64 %2781, 30, !dbg !351
  %2783 = or i64 %2779, %2782, !dbg !351
  %2784 = xor i64 %2776, %2783, !dbg !351
  %2785 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !351
  %2786 = load i64, i64* %2785, align 16, !dbg !351
  %2787 = lshr i64 %2786, 39, !dbg !351
  %2788 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !351
  %2789 = load i64, i64* %2788, align 16, !dbg !351
  %2790 = shl i64 %2789, 25, !dbg !351
  %2791 = or i64 %2787, %2790, !dbg !351
  %2792 = xor i64 %2784, %2791, !dbg !351
  %2793 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !351
  %2794 = load i64, i64* %2793, align 16, !dbg !351
  %2795 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !351
  %2796 = load i64, i64* %2795, align 8, !dbg !351
  %2797 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !351
  %2798 = load i64, i64* %2797, align 16, !dbg !351
  %2799 = or i64 %2796, %2798, !dbg !351
  %2800 = and i64 %2794, %2799, !dbg !351
  %2801 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !351
  %2802 = load i64, i64* %2801, align 8, !dbg !351
  %2803 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !351
  %2804 = load i64, i64* %2803, align 16, !dbg !351
  %2805 = and i64 %2802, %2804, !dbg !351
  %2806 = or i64 %2800, %2805, !dbg !351
  %2807 = add i64 %2792, %2806, !dbg !351
  store i64 %2807, i64* %6, align 8, !dbg !351
  %2808 = load i64, i64* %5, align 8, !dbg !351
  %2809 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !351
  %2810 = load i64, i64* %2809, align 8, !dbg !351
  %2811 = add i64 %2810, %2808, !dbg !351
  store i64 %2811, i64* %2809, align 8, !dbg !351
  %2812 = load i64, i64* %5, align 8, !dbg !351
  %2813 = load i64, i64* %6, align 8, !dbg !351
  %2814 = add i64 %2812, %2813, !dbg !351
  %2815 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !351
  store i64 %2814, i64* %2815, align 8, !dbg !351
  %2816 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !352
  %2817 = load i64, i64* %2816, align 16, !dbg !352
  %2818 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !352
  %2819 = load i64, i64* %2818, align 8, !dbg !352
  %2820 = lshr i64 %2819, 14, !dbg !352
  %2821 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !352
  %2822 = load i64, i64* %2821, align 8, !dbg !352
  %2823 = shl i64 %2822, 50, !dbg !352
  %2824 = or i64 %2820, %2823, !dbg !352
  %2825 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !352
  %2826 = load i64, i64* %2825, align 8, !dbg !352
  %2827 = lshr i64 %2826, 18, !dbg !352
  %2828 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !352
  %2829 = load i64, i64* %2828, align 8, !dbg !352
  %2830 = shl i64 %2829, 46, !dbg !352
  %2831 = or i64 %2827, %2830, !dbg !352
  %2832 = xor i64 %2824, %2831, !dbg !352
  %2833 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !352
  %2834 = load i64, i64* %2833, align 8, !dbg !352
  %2835 = lshr i64 %2834, 41, !dbg !352
  %2836 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !352
  %2837 = load i64, i64* %2836, align 8, !dbg !352
  %2838 = shl i64 %2837, 23, !dbg !352
  %2839 = or i64 %2835, %2838, !dbg !352
  %2840 = xor i64 %2832, %2839, !dbg !352
  %2841 = add i64 %2817, %2840, !dbg !352
  %2842 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !352
  %2843 = load i64, i64* %2842, align 8, !dbg !352
  %2844 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !352
  %2845 = load i64, i64* %2844, align 16, !dbg !352
  %2846 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !352
  %2847 = load i64, i64* %2846, align 8, !dbg !352
  %2848 = xor i64 %2845, %2847, !dbg !352
  %2849 = and i64 %2843, %2848, !dbg !352
  %2850 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !352
  %2851 = load i64, i64* %2850, align 8, !dbg !352
  %2852 = xor i64 %2849, %2851, !dbg !352
  %2853 = add i64 %2841, %2852, !dbg !352
  %2854 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 31, !dbg !352
  %2855 = load i64, i64* %2854, align 8, !dbg !352
  %2856 = add i64 %2853, %2855, !dbg !352
  %2857 = add i64 %2856, 1452737877330783856, !dbg !352
  store i64 %2857, i64* %5, align 8, !dbg !352
  %2858 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !352
  %2859 = load i64, i64* %2858, align 8, !dbg !352
  %2860 = lshr i64 %2859, 28, !dbg !352
  %2861 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !352
  %2862 = load i64, i64* %2861, align 8, !dbg !352
  %2863 = shl i64 %2862, 36, !dbg !352
  %2864 = or i64 %2860, %2863, !dbg !352
  %2865 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !352
  %2866 = load i64, i64* %2865, align 8, !dbg !352
  %2867 = lshr i64 %2866, 34, !dbg !352
  %2868 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !352
  %2869 = load i64, i64* %2868, align 8, !dbg !352
  %2870 = shl i64 %2869, 30, !dbg !352
  %2871 = or i64 %2867, %2870, !dbg !352
  %2872 = xor i64 %2864, %2871, !dbg !352
  %2873 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !352
  %2874 = load i64, i64* %2873, align 8, !dbg !352
  %2875 = lshr i64 %2874, 39, !dbg !352
  %2876 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !352
  %2877 = load i64, i64* %2876, align 8, !dbg !352
  %2878 = shl i64 %2877, 25, !dbg !352
  %2879 = or i64 %2875, %2878, !dbg !352
  %2880 = xor i64 %2872, %2879, !dbg !352
  %2881 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !352
  %2882 = load i64, i64* %2881, align 8, !dbg !352
  %2883 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !352
  %2884 = load i64, i64* %2883, align 16, !dbg !352
  %2885 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !352
  %2886 = load i64, i64* %2885, align 8, !dbg !352
  %2887 = or i64 %2884, %2886, !dbg !352
  %2888 = and i64 %2882, %2887, !dbg !352
  %2889 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !352
  %2890 = load i64, i64* %2889, align 16, !dbg !352
  %2891 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !352
  %2892 = load i64, i64* %2891, align 8, !dbg !352
  %2893 = and i64 %2890, %2892, !dbg !352
  %2894 = or i64 %2888, %2893, !dbg !352
  %2895 = add i64 %2880, %2894, !dbg !352
  store i64 %2895, i64* %6, align 8, !dbg !352
  %2896 = load i64, i64* %5, align 8, !dbg !352
  %2897 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !352
  %2898 = load i64, i64* %2897, align 16, !dbg !352
  %2899 = add i64 %2898, %2896, !dbg !352
  store i64 %2899, i64* %2897, align 16, !dbg !352
  %2900 = load i64, i64* %5, align 8, !dbg !352
  %2901 = load i64, i64* %6, align 8, !dbg !352
  %2902 = add i64 %2900, %2901, !dbg !352
  %2903 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !352
  store i64 %2902, i64* %2903, align 16, !dbg !352
  %2904 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !353
  %2905 = load i64, i64* %2904, align 8, !dbg !353
  %2906 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !353
  %2907 = load i64, i64* %2906, align 16, !dbg !353
  %2908 = lshr i64 %2907, 14, !dbg !353
  %2909 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !353
  %2910 = load i64, i64* %2909, align 16, !dbg !353
  %2911 = shl i64 %2910, 50, !dbg !353
  %2912 = or i64 %2908, %2911, !dbg !353
  %2913 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !353
  %2914 = load i64, i64* %2913, align 16, !dbg !353
  %2915 = lshr i64 %2914, 18, !dbg !353
  %2916 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !353
  %2917 = load i64, i64* %2916, align 16, !dbg !353
  %2918 = shl i64 %2917, 46, !dbg !353
  %2919 = or i64 %2915, %2918, !dbg !353
  %2920 = xor i64 %2912, %2919, !dbg !353
  %2921 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !353
  %2922 = load i64, i64* %2921, align 16, !dbg !353
  %2923 = lshr i64 %2922, 41, !dbg !353
  %2924 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !353
  %2925 = load i64, i64* %2924, align 16, !dbg !353
  %2926 = shl i64 %2925, 23, !dbg !353
  %2927 = or i64 %2923, %2926, !dbg !353
  %2928 = xor i64 %2920, %2927, !dbg !353
  %2929 = add i64 %2905, %2928, !dbg !353
  %2930 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !353
  %2931 = load i64, i64* %2930, align 16, !dbg !353
  %2932 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !353
  %2933 = load i64, i64* %2932, align 8, !dbg !353
  %2934 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !353
  %2935 = load i64, i64* %2934, align 16, !dbg !353
  %2936 = xor i64 %2933, %2935, !dbg !353
  %2937 = and i64 %2931, %2936, !dbg !353
  %2938 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !353
  %2939 = load i64, i64* %2938, align 16, !dbg !353
  %2940 = xor i64 %2937, %2939, !dbg !353
  %2941 = add i64 %2929, %2940, !dbg !353
  %2942 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 32, !dbg !353
  %2943 = load i64, i64* %2942, align 16, !dbg !353
  %2944 = add i64 %2941, %2943, !dbg !353
  %2945 = add i64 %2944, 2861767655752347644, !dbg !353
  store i64 %2945, i64* %5, align 8, !dbg !353
  %2946 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !353
  %2947 = load i64, i64* %2946, align 16, !dbg !353
  %2948 = lshr i64 %2947, 28, !dbg !353
  %2949 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !353
  %2950 = load i64, i64* %2949, align 16, !dbg !353
  %2951 = shl i64 %2950, 36, !dbg !353
  %2952 = or i64 %2948, %2951, !dbg !353
  %2953 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !353
  %2954 = load i64, i64* %2953, align 16, !dbg !353
  %2955 = lshr i64 %2954, 34, !dbg !353
  %2956 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !353
  %2957 = load i64, i64* %2956, align 16, !dbg !353
  %2958 = shl i64 %2957, 30, !dbg !353
  %2959 = or i64 %2955, %2958, !dbg !353
  %2960 = xor i64 %2952, %2959, !dbg !353
  %2961 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !353
  %2962 = load i64, i64* %2961, align 16, !dbg !353
  %2963 = lshr i64 %2962, 39, !dbg !353
  %2964 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !353
  %2965 = load i64, i64* %2964, align 16, !dbg !353
  %2966 = shl i64 %2965, 25, !dbg !353
  %2967 = or i64 %2963, %2966, !dbg !353
  %2968 = xor i64 %2960, %2967, !dbg !353
  %2969 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !353
  %2970 = load i64, i64* %2969, align 16, !dbg !353
  %2971 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !353
  %2972 = load i64, i64* %2971, align 8, !dbg !353
  %2973 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !353
  %2974 = load i64, i64* %2973, align 16, !dbg !353
  %2975 = or i64 %2972, %2974, !dbg !353
  %2976 = and i64 %2970, %2975, !dbg !353
  %2977 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !353
  %2978 = load i64, i64* %2977, align 8, !dbg !353
  %2979 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !353
  %2980 = load i64, i64* %2979, align 16, !dbg !353
  %2981 = and i64 %2978, %2980, !dbg !353
  %2982 = or i64 %2976, %2981, !dbg !353
  %2983 = add i64 %2968, %2982, !dbg !353
  store i64 %2983, i64* %6, align 8, !dbg !353
  %2984 = load i64, i64* %5, align 8, !dbg !353
  %2985 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !353
  %2986 = load i64, i64* %2985, align 8, !dbg !353
  %2987 = add i64 %2986, %2984, !dbg !353
  store i64 %2987, i64* %2985, align 8, !dbg !353
  %2988 = load i64, i64* %5, align 8, !dbg !353
  %2989 = load i64, i64* %6, align 8, !dbg !353
  %2990 = add i64 %2988, %2989, !dbg !353
  %2991 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !353
  store i64 %2990, i64* %2991, align 8, !dbg !353
  %2992 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !354
  %2993 = load i64, i64* %2992, align 16, !dbg !354
  %2994 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !354
  %2995 = load i64, i64* %2994, align 8, !dbg !354
  %2996 = lshr i64 %2995, 14, !dbg !354
  %2997 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !354
  %2998 = load i64, i64* %2997, align 8, !dbg !354
  %2999 = shl i64 %2998, 50, !dbg !354
  %3000 = or i64 %2996, %2999, !dbg !354
  %3001 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !354
  %3002 = load i64, i64* %3001, align 8, !dbg !354
  %3003 = lshr i64 %3002, 18, !dbg !354
  %3004 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !354
  %3005 = load i64, i64* %3004, align 8, !dbg !354
  %3006 = shl i64 %3005, 46, !dbg !354
  %3007 = or i64 %3003, %3006, !dbg !354
  %3008 = xor i64 %3000, %3007, !dbg !354
  %3009 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !354
  %3010 = load i64, i64* %3009, align 8, !dbg !354
  %3011 = lshr i64 %3010, 41, !dbg !354
  %3012 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !354
  %3013 = load i64, i64* %3012, align 8, !dbg !354
  %3014 = shl i64 %3013, 23, !dbg !354
  %3015 = or i64 %3011, %3014, !dbg !354
  %3016 = xor i64 %3008, %3015, !dbg !354
  %3017 = add i64 %2993, %3016, !dbg !354
  %3018 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !354
  %3019 = load i64, i64* %3018, align 8, !dbg !354
  %3020 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !354
  %3021 = load i64, i64* %3020, align 16, !dbg !354
  %3022 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !354
  %3023 = load i64, i64* %3022, align 8, !dbg !354
  %3024 = xor i64 %3021, %3023, !dbg !354
  %3025 = and i64 %3019, %3024, !dbg !354
  %3026 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !354
  %3027 = load i64, i64* %3026, align 8, !dbg !354
  %3028 = xor i64 %3025, %3027, !dbg !354
  %3029 = add i64 %3017, %3028, !dbg !354
  %3030 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 33, !dbg !354
  %3031 = load i64, i64* %3030, align 8, !dbg !354
  %3032 = add i64 %3029, %3031, !dbg !354
  %3033 = add i64 %3032, 3322285676063803686, !dbg !354
  store i64 %3033, i64* %5, align 8, !dbg !354
  %3034 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !354
  %3035 = load i64, i64* %3034, align 8, !dbg !354
  %3036 = lshr i64 %3035, 28, !dbg !354
  %3037 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !354
  %3038 = load i64, i64* %3037, align 8, !dbg !354
  %3039 = shl i64 %3038, 36, !dbg !354
  %3040 = or i64 %3036, %3039, !dbg !354
  %3041 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !354
  %3042 = load i64, i64* %3041, align 8, !dbg !354
  %3043 = lshr i64 %3042, 34, !dbg !354
  %3044 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !354
  %3045 = load i64, i64* %3044, align 8, !dbg !354
  %3046 = shl i64 %3045, 30, !dbg !354
  %3047 = or i64 %3043, %3046, !dbg !354
  %3048 = xor i64 %3040, %3047, !dbg !354
  %3049 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !354
  %3050 = load i64, i64* %3049, align 8, !dbg !354
  %3051 = lshr i64 %3050, 39, !dbg !354
  %3052 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !354
  %3053 = load i64, i64* %3052, align 8, !dbg !354
  %3054 = shl i64 %3053, 25, !dbg !354
  %3055 = or i64 %3051, %3054, !dbg !354
  %3056 = xor i64 %3048, %3055, !dbg !354
  %3057 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !354
  %3058 = load i64, i64* %3057, align 8, !dbg !354
  %3059 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !354
  %3060 = load i64, i64* %3059, align 16, !dbg !354
  %3061 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !354
  %3062 = load i64, i64* %3061, align 8, !dbg !354
  %3063 = or i64 %3060, %3062, !dbg !354
  %3064 = and i64 %3058, %3063, !dbg !354
  %3065 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !354
  %3066 = load i64, i64* %3065, align 16, !dbg !354
  %3067 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !354
  %3068 = load i64, i64* %3067, align 8, !dbg !354
  %3069 = and i64 %3066, %3068, !dbg !354
  %3070 = or i64 %3064, %3069, !dbg !354
  %3071 = add i64 %3056, %3070, !dbg !354
  store i64 %3071, i64* %6, align 8, !dbg !354
  %3072 = load i64, i64* %5, align 8, !dbg !354
  %3073 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !354
  %3074 = load i64, i64* %3073, align 16, !dbg !354
  %3075 = add i64 %3074, %3072, !dbg !354
  store i64 %3075, i64* %3073, align 16, !dbg !354
  %3076 = load i64, i64* %5, align 8, !dbg !354
  %3077 = load i64, i64* %6, align 8, !dbg !354
  %3078 = add i64 %3076, %3077, !dbg !354
  %3079 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !354
  store i64 %3078, i64* %3079, align 16, !dbg !354
  %3080 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !355
  %3081 = load i64, i64* %3080, align 8, !dbg !355
  %3082 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !355
  %3083 = load i64, i64* %3082, align 16, !dbg !355
  %3084 = lshr i64 %3083, 14, !dbg !355
  %3085 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !355
  %3086 = load i64, i64* %3085, align 16, !dbg !355
  %3087 = shl i64 %3086, 50, !dbg !355
  %3088 = or i64 %3084, %3087, !dbg !355
  %3089 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !355
  %3090 = load i64, i64* %3089, align 16, !dbg !355
  %3091 = lshr i64 %3090, 18, !dbg !355
  %3092 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !355
  %3093 = load i64, i64* %3092, align 16, !dbg !355
  %3094 = shl i64 %3093, 46, !dbg !355
  %3095 = or i64 %3091, %3094, !dbg !355
  %3096 = xor i64 %3088, %3095, !dbg !355
  %3097 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !355
  %3098 = load i64, i64* %3097, align 16, !dbg !355
  %3099 = lshr i64 %3098, 41, !dbg !355
  %3100 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !355
  %3101 = load i64, i64* %3100, align 16, !dbg !355
  %3102 = shl i64 %3101, 23, !dbg !355
  %3103 = or i64 %3099, %3102, !dbg !355
  %3104 = xor i64 %3096, %3103, !dbg !355
  %3105 = add i64 %3081, %3104, !dbg !355
  %3106 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !355
  %3107 = load i64, i64* %3106, align 16, !dbg !355
  %3108 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !355
  %3109 = load i64, i64* %3108, align 8, !dbg !355
  %3110 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !355
  %3111 = load i64, i64* %3110, align 16, !dbg !355
  %3112 = xor i64 %3109, %3111, !dbg !355
  %3113 = and i64 %3107, %3112, !dbg !355
  %3114 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !355
  %3115 = load i64, i64* %3114, align 16, !dbg !355
  %3116 = xor i64 %3113, %3115, !dbg !355
  %3117 = add i64 %3105, %3116, !dbg !355
  %3118 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 34, !dbg !355
  %3119 = load i64, i64* %3118, align 16, !dbg !355
  %3120 = add i64 %3117, %3119, !dbg !355
  %3121 = add i64 %3120, 5560940570517711597, !dbg !355
  store i64 %3121, i64* %5, align 8, !dbg !355
  %3122 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !355
  %3123 = load i64, i64* %3122, align 16, !dbg !355
  %3124 = lshr i64 %3123, 28, !dbg !355
  %3125 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !355
  %3126 = load i64, i64* %3125, align 16, !dbg !355
  %3127 = shl i64 %3126, 36, !dbg !355
  %3128 = or i64 %3124, %3127, !dbg !355
  %3129 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !355
  %3130 = load i64, i64* %3129, align 16, !dbg !355
  %3131 = lshr i64 %3130, 34, !dbg !355
  %3132 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !355
  %3133 = load i64, i64* %3132, align 16, !dbg !355
  %3134 = shl i64 %3133, 30, !dbg !355
  %3135 = or i64 %3131, %3134, !dbg !355
  %3136 = xor i64 %3128, %3135, !dbg !355
  %3137 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !355
  %3138 = load i64, i64* %3137, align 16, !dbg !355
  %3139 = lshr i64 %3138, 39, !dbg !355
  %3140 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !355
  %3141 = load i64, i64* %3140, align 16, !dbg !355
  %3142 = shl i64 %3141, 25, !dbg !355
  %3143 = or i64 %3139, %3142, !dbg !355
  %3144 = xor i64 %3136, %3143, !dbg !355
  %3145 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !355
  %3146 = load i64, i64* %3145, align 16, !dbg !355
  %3147 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !355
  %3148 = load i64, i64* %3147, align 8, !dbg !355
  %3149 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !355
  %3150 = load i64, i64* %3149, align 16, !dbg !355
  %3151 = or i64 %3148, %3150, !dbg !355
  %3152 = and i64 %3146, %3151, !dbg !355
  %3153 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !355
  %3154 = load i64, i64* %3153, align 8, !dbg !355
  %3155 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !355
  %3156 = load i64, i64* %3155, align 16, !dbg !355
  %3157 = and i64 %3154, %3156, !dbg !355
  %3158 = or i64 %3152, %3157, !dbg !355
  %3159 = add i64 %3144, %3158, !dbg !355
  store i64 %3159, i64* %6, align 8, !dbg !355
  %3160 = load i64, i64* %5, align 8, !dbg !355
  %3161 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !355
  %3162 = load i64, i64* %3161, align 8, !dbg !355
  %3163 = add i64 %3162, %3160, !dbg !355
  store i64 %3163, i64* %3161, align 8, !dbg !355
  %3164 = load i64, i64* %5, align 8, !dbg !355
  %3165 = load i64, i64* %6, align 8, !dbg !355
  %3166 = add i64 %3164, %3165, !dbg !355
  %3167 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !355
  store i64 %3166, i64* %3167, align 8, !dbg !355
  %3168 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !356
  %3169 = load i64, i64* %3168, align 16, !dbg !356
  %3170 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !356
  %3171 = load i64, i64* %3170, align 8, !dbg !356
  %3172 = lshr i64 %3171, 14, !dbg !356
  %3173 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !356
  %3174 = load i64, i64* %3173, align 8, !dbg !356
  %3175 = shl i64 %3174, 50, !dbg !356
  %3176 = or i64 %3172, %3175, !dbg !356
  %3177 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !356
  %3178 = load i64, i64* %3177, align 8, !dbg !356
  %3179 = lshr i64 %3178, 18, !dbg !356
  %3180 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !356
  %3181 = load i64, i64* %3180, align 8, !dbg !356
  %3182 = shl i64 %3181, 46, !dbg !356
  %3183 = or i64 %3179, %3182, !dbg !356
  %3184 = xor i64 %3176, %3183, !dbg !356
  %3185 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !356
  %3186 = load i64, i64* %3185, align 8, !dbg !356
  %3187 = lshr i64 %3186, 41, !dbg !356
  %3188 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !356
  %3189 = load i64, i64* %3188, align 8, !dbg !356
  %3190 = shl i64 %3189, 23, !dbg !356
  %3191 = or i64 %3187, %3190, !dbg !356
  %3192 = xor i64 %3184, %3191, !dbg !356
  %3193 = add i64 %3169, %3192, !dbg !356
  %3194 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !356
  %3195 = load i64, i64* %3194, align 8, !dbg !356
  %3196 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !356
  %3197 = load i64, i64* %3196, align 16, !dbg !356
  %3198 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !356
  %3199 = load i64, i64* %3198, align 8, !dbg !356
  %3200 = xor i64 %3197, %3199, !dbg !356
  %3201 = and i64 %3195, %3200, !dbg !356
  %3202 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !356
  %3203 = load i64, i64* %3202, align 8, !dbg !356
  %3204 = xor i64 %3201, %3203, !dbg !356
  %3205 = add i64 %3193, %3204, !dbg !356
  %3206 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 35, !dbg !356
  %3207 = load i64, i64* %3206, align 8, !dbg !356
  %3208 = add i64 %3205, %3207, !dbg !356
  %3209 = add i64 %3208, 5996557281743188959, !dbg !356
  store i64 %3209, i64* %5, align 8, !dbg !356
  %3210 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !356
  %3211 = load i64, i64* %3210, align 8, !dbg !356
  %3212 = lshr i64 %3211, 28, !dbg !356
  %3213 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !356
  %3214 = load i64, i64* %3213, align 8, !dbg !356
  %3215 = shl i64 %3214, 36, !dbg !356
  %3216 = or i64 %3212, %3215, !dbg !356
  %3217 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !356
  %3218 = load i64, i64* %3217, align 8, !dbg !356
  %3219 = lshr i64 %3218, 34, !dbg !356
  %3220 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !356
  %3221 = load i64, i64* %3220, align 8, !dbg !356
  %3222 = shl i64 %3221, 30, !dbg !356
  %3223 = or i64 %3219, %3222, !dbg !356
  %3224 = xor i64 %3216, %3223, !dbg !356
  %3225 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !356
  %3226 = load i64, i64* %3225, align 8, !dbg !356
  %3227 = lshr i64 %3226, 39, !dbg !356
  %3228 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !356
  %3229 = load i64, i64* %3228, align 8, !dbg !356
  %3230 = shl i64 %3229, 25, !dbg !356
  %3231 = or i64 %3227, %3230, !dbg !356
  %3232 = xor i64 %3224, %3231, !dbg !356
  %3233 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !356
  %3234 = load i64, i64* %3233, align 8, !dbg !356
  %3235 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !356
  %3236 = load i64, i64* %3235, align 16, !dbg !356
  %3237 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !356
  %3238 = load i64, i64* %3237, align 8, !dbg !356
  %3239 = or i64 %3236, %3238, !dbg !356
  %3240 = and i64 %3234, %3239, !dbg !356
  %3241 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !356
  %3242 = load i64, i64* %3241, align 16, !dbg !356
  %3243 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !356
  %3244 = load i64, i64* %3243, align 8, !dbg !356
  %3245 = and i64 %3242, %3244, !dbg !356
  %3246 = or i64 %3240, %3245, !dbg !356
  %3247 = add i64 %3232, %3246, !dbg !356
  store i64 %3247, i64* %6, align 8, !dbg !356
  %3248 = load i64, i64* %5, align 8, !dbg !356
  %3249 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !356
  %3250 = load i64, i64* %3249, align 16, !dbg !356
  %3251 = add i64 %3250, %3248, !dbg !356
  store i64 %3251, i64* %3249, align 16, !dbg !356
  %3252 = load i64, i64* %5, align 8, !dbg !356
  %3253 = load i64, i64* %6, align 8, !dbg !356
  %3254 = add i64 %3252, %3253, !dbg !356
  %3255 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !356
  store i64 %3254, i64* %3255, align 16, !dbg !356
  %3256 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !357
  %3257 = load i64, i64* %3256, align 8, !dbg !357
  %3258 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !357
  %3259 = load i64, i64* %3258, align 16, !dbg !357
  %3260 = lshr i64 %3259, 14, !dbg !357
  %3261 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !357
  %3262 = load i64, i64* %3261, align 16, !dbg !357
  %3263 = shl i64 %3262, 50, !dbg !357
  %3264 = or i64 %3260, %3263, !dbg !357
  %3265 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !357
  %3266 = load i64, i64* %3265, align 16, !dbg !357
  %3267 = lshr i64 %3266, 18, !dbg !357
  %3268 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !357
  %3269 = load i64, i64* %3268, align 16, !dbg !357
  %3270 = shl i64 %3269, 46, !dbg !357
  %3271 = or i64 %3267, %3270, !dbg !357
  %3272 = xor i64 %3264, %3271, !dbg !357
  %3273 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !357
  %3274 = load i64, i64* %3273, align 16, !dbg !357
  %3275 = lshr i64 %3274, 41, !dbg !357
  %3276 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !357
  %3277 = load i64, i64* %3276, align 16, !dbg !357
  %3278 = shl i64 %3277, 23, !dbg !357
  %3279 = or i64 %3275, %3278, !dbg !357
  %3280 = xor i64 %3272, %3279, !dbg !357
  %3281 = add i64 %3257, %3280, !dbg !357
  %3282 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !357
  %3283 = load i64, i64* %3282, align 16, !dbg !357
  %3284 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !357
  %3285 = load i64, i64* %3284, align 8, !dbg !357
  %3286 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !357
  %3287 = load i64, i64* %3286, align 16, !dbg !357
  %3288 = xor i64 %3285, %3287, !dbg !357
  %3289 = and i64 %3283, %3288, !dbg !357
  %3290 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !357
  %3291 = load i64, i64* %3290, align 16, !dbg !357
  %3292 = xor i64 %3289, %3291, !dbg !357
  %3293 = add i64 %3281, %3292, !dbg !357
  %3294 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 36, !dbg !357
  %3295 = load i64, i64* %3294, align 16, !dbg !357
  %3296 = add i64 %3293, %3295, !dbg !357
  %3297 = add i64 %3296, 7280758554555802590, !dbg !357
  store i64 %3297, i64* %5, align 8, !dbg !357
  %3298 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !357
  %3299 = load i64, i64* %3298, align 16, !dbg !357
  %3300 = lshr i64 %3299, 28, !dbg !357
  %3301 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !357
  %3302 = load i64, i64* %3301, align 16, !dbg !357
  %3303 = shl i64 %3302, 36, !dbg !357
  %3304 = or i64 %3300, %3303, !dbg !357
  %3305 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !357
  %3306 = load i64, i64* %3305, align 16, !dbg !357
  %3307 = lshr i64 %3306, 34, !dbg !357
  %3308 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !357
  %3309 = load i64, i64* %3308, align 16, !dbg !357
  %3310 = shl i64 %3309, 30, !dbg !357
  %3311 = or i64 %3307, %3310, !dbg !357
  %3312 = xor i64 %3304, %3311, !dbg !357
  %3313 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !357
  %3314 = load i64, i64* %3313, align 16, !dbg !357
  %3315 = lshr i64 %3314, 39, !dbg !357
  %3316 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !357
  %3317 = load i64, i64* %3316, align 16, !dbg !357
  %3318 = shl i64 %3317, 25, !dbg !357
  %3319 = or i64 %3315, %3318, !dbg !357
  %3320 = xor i64 %3312, %3319, !dbg !357
  %3321 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !357
  %3322 = load i64, i64* %3321, align 16, !dbg !357
  %3323 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !357
  %3324 = load i64, i64* %3323, align 8, !dbg !357
  %3325 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !357
  %3326 = load i64, i64* %3325, align 16, !dbg !357
  %3327 = or i64 %3324, %3326, !dbg !357
  %3328 = and i64 %3322, %3327, !dbg !357
  %3329 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !357
  %3330 = load i64, i64* %3329, align 8, !dbg !357
  %3331 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !357
  %3332 = load i64, i64* %3331, align 16, !dbg !357
  %3333 = and i64 %3330, %3332, !dbg !357
  %3334 = or i64 %3328, %3333, !dbg !357
  %3335 = add i64 %3320, %3334, !dbg !357
  store i64 %3335, i64* %6, align 8, !dbg !357
  %3336 = load i64, i64* %5, align 8, !dbg !357
  %3337 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !357
  %3338 = load i64, i64* %3337, align 8, !dbg !357
  %3339 = add i64 %3338, %3336, !dbg !357
  store i64 %3339, i64* %3337, align 8, !dbg !357
  %3340 = load i64, i64* %5, align 8, !dbg !357
  %3341 = load i64, i64* %6, align 8, !dbg !357
  %3342 = add i64 %3340, %3341, !dbg !357
  %3343 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !357
  store i64 %3342, i64* %3343, align 8, !dbg !357
  %3344 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !358
  %3345 = load i64, i64* %3344, align 16, !dbg !358
  %3346 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !358
  %3347 = load i64, i64* %3346, align 8, !dbg !358
  %3348 = lshr i64 %3347, 14, !dbg !358
  %3349 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !358
  %3350 = load i64, i64* %3349, align 8, !dbg !358
  %3351 = shl i64 %3350, 50, !dbg !358
  %3352 = or i64 %3348, %3351, !dbg !358
  %3353 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !358
  %3354 = load i64, i64* %3353, align 8, !dbg !358
  %3355 = lshr i64 %3354, 18, !dbg !358
  %3356 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !358
  %3357 = load i64, i64* %3356, align 8, !dbg !358
  %3358 = shl i64 %3357, 46, !dbg !358
  %3359 = or i64 %3355, %3358, !dbg !358
  %3360 = xor i64 %3352, %3359, !dbg !358
  %3361 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !358
  %3362 = load i64, i64* %3361, align 8, !dbg !358
  %3363 = lshr i64 %3362, 41, !dbg !358
  %3364 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !358
  %3365 = load i64, i64* %3364, align 8, !dbg !358
  %3366 = shl i64 %3365, 23, !dbg !358
  %3367 = or i64 %3363, %3366, !dbg !358
  %3368 = xor i64 %3360, %3367, !dbg !358
  %3369 = add i64 %3345, %3368, !dbg !358
  %3370 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !358
  %3371 = load i64, i64* %3370, align 8, !dbg !358
  %3372 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !358
  %3373 = load i64, i64* %3372, align 16, !dbg !358
  %3374 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !358
  %3375 = load i64, i64* %3374, align 8, !dbg !358
  %3376 = xor i64 %3373, %3375, !dbg !358
  %3377 = and i64 %3371, %3376, !dbg !358
  %3378 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !358
  %3379 = load i64, i64* %3378, align 8, !dbg !358
  %3380 = xor i64 %3377, %3379, !dbg !358
  %3381 = add i64 %3369, %3380, !dbg !358
  %3382 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 37, !dbg !358
  %3383 = load i64, i64* %3382, align 8, !dbg !358
  %3384 = add i64 %3381, %3383, !dbg !358
  %3385 = add i64 %3384, 8532644243296465576, !dbg !358
  store i64 %3385, i64* %5, align 8, !dbg !358
  %3386 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !358
  %3387 = load i64, i64* %3386, align 8, !dbg !358
  %3388 = lshr i64 %3387, 28, !dbg !358
  %3389 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !358
  %3390 = load i64, i64* %3389, align 8, !dbg !358
  %3391 = shl i64 %3390, 36, !dbg !358
  %3392 = or i64 %3388, %3391, !dbg !358
  %3393 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !358
  %3394 = load i64, i64* %3393, align 8, !dbg !358
  %3395 = lshr i64 %3394, 34, !dbg !358
  %3396 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !358
  %3397 = load i64, i64* %3396, align 8, !dbg !358
  %3398 = shl i64 %3397, 30, !dbg !358
  %3399 = or i64 %3395, %3398, !dbg !358
  %3400 = xor i64 %3392, %3399, !dbg !358
  %3401 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !358
  %3402 = load i64, i64* %3401, align 8, !dbg !358
  %3403 = lshr i64 %3402, 39, !dbg !358
  %3404 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !358
  %3405 = load i64, i64* %3404, align 8, !dbg !358
  %3406 = shl i64 %3405, 25, !dbg !358
  %3407 = or i64 %3403, %3406, !dbg !358
  %3408 = xor i64 %3400, %3407, !dbg !358
  %3409 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !358
  %3410 = load i64, i64* %3409, align 8, !dbg !358
  %3411 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !358
  %3412 = load i64, i64* %3411, align 16, !dbg !358
  %3413 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !358
  %3414 = load i64, i64* %3413, align 8, !dbg !358
  %3415 = or i64 %3412, %3414, !dbg !358
  %3416 = and i64 %3410, %3415, !dbg !358
  %3417 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !358
  %3418 = load i64, i64* %3417, align 16, !dbg !358
  %3419 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !358
  %3420 = load i64, i64* %3419, align 8, !dbg !358
  %3421 = and i64 %3418, %3420, !dbg !358
  %3422 = or i64 %3416, %3421, !dbg !358
  %3423 = add i64 %3408, %3422, !dbg !358
  store i64 %3423, i64* %6, align 8, !dbg !358
  %3424 = load i64, i64* %5, align 8, !dbg !358
  %3425 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !358
  %3426 = load i64, i64* %3425, align 16, !dbg !358
  %3427 = add i64 %3426, %3424, !dbg !358
  store i64 %3427, i64* %3425, align 16, !dbg !358
  %3428 = load i64, i64* %5, align 8, !dbg !358
  %3429 = load i64, i64* %6, align 8, !dbg !358
  %3430 = add i64 %3428, %3429, !dbg !358
  %3431 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !358
  store i64 %3430, i64* %3431, align 16, !dbg !358
  %3432 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !359
  %3433 = load i64, i64* %3432, align 8, !dbg !359
  %3434 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !359
  %3435 = load i64, i64* %3434, align 16, !dbg !359
  %3436 = lshr i64 %3435, 14, !dbg !359
  %3437 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !359
  %3438 = load i64, i64* %3437, align 16, !dbg !359
  %3439 = shl i64 %3438, 50, !dbg !359
  %3440 = or i64 %3436, %3439, !dbg !359
  %3441 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !359
  %3442 = load i64, i64* %3441, align 16, !dbg !359
  %3443 = lshr i64 %3442, 18, !dbg !359
  %3444 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !359
  %3445 = load i64, i64* %3444, align 16, !dbg !359
  %3446 = shl i64 %3445, 46, !dbg !359
  %3447 = or i64 %3443, %3446, !dbg !359
  %3448 = xor i64 %3440, %3447, !dbg !359
  %3449 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !359
  %3450 = load i64, i64* %3449, align 16, !dbg !359
  %3451 = lshr i64 %3450, 41, !dbg !359
  %3452 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !359
  %3453 = load i64, i64* %3452, align 16, !dbg !359
  %3454 = shl i64 %3453, 23, !dbg !359
  %3455 = or i64 %3451, %3454, !dbg !359
  %3456 = xor i64 %3448, %3455, !dbg !359
  %3457 = add i64 %3433, %3456, !dbg !359
  %3458 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !359
  %3459 = load i64, i64* %3458, align 16, !dbg !359
  %3460 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !359
  %3461 = load i64, i64* %3460, align 8, !dbg !359
  %3462 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !359
  %3463 = load i64, i64* %3462, align 16, !dbg !359
  %3464 = xor i64 %3461, %3463, !dbg !359
  %3465 = and i64 %3459, %3464, !dbg !359
  %3466 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !359
  %3467 = load i64, i64* %3466, align 16, !dbg !359
  %3468 = xor i64 %3465, %3467, !dbg !359
  %3469 = add i64 %3457, %3468, !dbg !359
  %3470 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 38, !dbg !359
  %3471 = load i64, i64* %3470, align 16, !dbg !359
  %3472 = add i64 %3469, %3471, !dbg !359
  %3473 = add i64 %3472, -9096487096722542874, !dbg !359
  store i64 %3473, i64* %5, align 8, !dbg !359
  %3474 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !359
  %3475 = load i64, i64* %3474, align 16, !dbg !359
  %3476 = lshr i64 %3475, 28, !dbg !359
  %3477 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !359
  %3478 = load i64, i64* %3477, align 16, !dbg !359
  %3479 = shl i64 %3478, 36, !dbg !359
  %3480 = or i64 %3476, %3479, !dbg !359
  %3481 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !359
  %3482 = load i64, i64* %3481, align 16, !dbg !359
  %3483 = lshr i64 %3482, 34, !dbg !359
  %3484 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !359
  %3485 = load i64, i64* %3484, align 16, !dbg !359
  %3486 = shl i64 %3485, 30, !dbg !359
  %3487 = or i64 %3483, %3486, !dbg !359
  %3488 = xor i64 %3480, %3487, !dbg !359
  %3489 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !359
  %3490 = load i64, i64* %3489, align 16, !dbg !359
  %3491 = lshr i64 %3490, 39, !dbg !359
  %3492 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !359
  %3493 = load i64, i64* %3492, align 16, !dbg !359
  %3494 = shl i64 %3493, 25, !dbg !359
  %3495 = or i64 %3491, %3494, !dbg !359
  %3496 = xor i64 %3488, %3495, !dbg !359
  %3497 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !359
  %3498 = load i64, i64* %3497, align 16, !dbg !359
  %3499 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !359
  %3500 = load i64, i64* %3499, align 8, !dbg !359
  %3501 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !359
  %3502 = load i64, i64* %3501, align 16, !dbg !359
  %3503 = or i64 %3500, %3502, !dbg !359
  %3504 = and i64 %3498, %3503, !dbg !359
  %3505 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !359
  %3506 = load i64, i64* %3505, align 8, !dbg !359
  %3507 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !359
  %3508 = load i64, i64* %3507, align 16, !dbg !359
  %3509 = and i64 %3506, %3508, !dbg !359
  %3510 = or i64 %3504, %3509, !dbg !359
  %3511 = add i64 %3496, %3510, !dbg !359
  store i64 %3511, i64* %6, align 8, !dbg !359
  %3512 = load i64, i64* %5, align 8, !dbg !359
  %3513 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !359
  %3514 = load i64, i64* %3513, align 8, !dbg !359
  %3515 = add i64 %3514, %3512, !dbg !359
  store i64 %3515, i64* %3513, align 8, !dbg !359
  %3516 = load i64, i64* %5, align 8, !dbg !359
  %3517 = load i64, i64* %6, align 8, !dbg !359
  %3518 = add i64 %3516, %3517, !dbg !359
  %3519 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !359
  store i64 %3518, i64* %3519, align 8, !dbg !359
  %3520 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !360
  %3521 = load i64, i64* %3520, align 16, !dbg !360
  %3522 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !360
  %3523 = load i64, i64* %3522, align 8, !dbg !360
  %3524 = lshr i64 %3523, 14, !dbg !360
  %3525 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !360
  %3526 = load i64, i64* %3525, align 8, !dbg !360
  %3527 = shl i64 %3526, 50, !dbg !360
  %3528 = or i64 %3524, %3527, !dbg !360
  %3529 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !360
  %3530 = load i64, i64* %3529, align 8, !dbg !360
  %3531 = lshr i64 %3530, 18, !dbg !360
  %3532 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !360
  %3533 = load i64, i64* %3532, align 8, !dbg !360
  %3534 = shl i64 %3533, 46, !dbg !360
  %3535 = or i64 %3531, %3534, !dbg !360
  %3536 = xor i64 %3528, %3535, !dbg !360
  %3537 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !360
  %3538 = load i64, i64* %3537, align 8, !dbg !360
  %3539 = lshr i64 %3538, 41, !dbg !360
  %3540 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !360
  %3541 = load i64, i64* %3540, align 8, !dbg !360
  %3542 = shl i64 %3541, 23, !dbg !360
  %3543 = or i64 %3539, %3542, !dbg !360
  %3544 = xor i64 %3536, %3543, !dbg !360
  %3545 = add i64 %3521, %3544, !dbg !360
  %3546 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !360
  %3547 = load i64, i64* %3546, align 8, !dbg !360
  %3548 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !360
  %3549 = load i64, i64* %3548, align 16, !dbg !360
  %3550 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !360
  %3551 = load i64, i64* %3550, align 8, !dbg !360
  %3552 = xor i64 %3549, %3551, !dbg !360
  %3553 = and i64 %3547, %3552, !dbg !360
  %3554 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !360
  %3555 = load i64, i64* %3554, align 8, !dbg !360
  %3556 = xor i64 %3553, %3555, !dbg !360
  %3557 = add i64 %3545, %3556, !dbg !360
  %3558 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 39, !dbg !360
  %3559 = load i64, i64* %3558, align 8, !dbg !360
  %3560 = add i64 %3557, %3559, !dbg !360
  %3561 = add i64 %3560, -7894198246740708037, !dbg !360
  store i64 %3561, i64* %5, align 8, !dbg !360
  %3562 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !360
  %3563 = load i64, i64* %3562, align 8, !dbg !360
  %3564 = lshr i64 %3563, 28, !dbg !360
  %3565 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !360
  %3566 = load i64, i64* %3565, align 8, !dbg !360
  %3567 = shl i64 %3566, 36, !dbg !360
  %3568 = or i64 %3564, %3567, !dbg !360
  %3569 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !360
  %3570 = load i64, i64* %3569, align 8, !dbg !360
  %3571 = lshr i64 %3570, 34, !dbg !360
  %3572 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !360
  %3573 = load i64, i64* %3572, align 8, !dbg !360
  %3574 = shl i64 %3573, 30, !dbg !360
  %3575 = or i64 %3571, %3574, !dbg !360
  %3576 = xor i64 %3568, %3575, !dbg !360
  %3577 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !360
  %3578 = load i64, i64* %3577, align 8, !dbg !360
  %3579 = lshr i64 %3578, 39, !dbg !360
  %3580 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !360
  %3581 = load i64, i64* %3580, align 8, !dbg !360
  %3582 = shl i64 %3581, 25, !dbg !360
  %3583 = or i64 %3579, %3582, !dbg !360
  %3584 = xor i64 %3576, %3583, !dbg !360
  %3585 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !360
  %3586 = load i64, i64* %3585, align 8, !dbg !360
  %3587 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !360
  %3588 = load i64, i64* %3587, align 16, !dbg !360
  %3589 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !360
  %3590 = load i64, i64* %3589, align 8, !dbg !360
  %3591 = or i64 %3588, %3590, !dbg !360
  %3592 = and i64 %3586, %3591, !dbg !360
  %3593 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !360
  %3594 = load i64, i64* %3593, align 16, !dbg !360
  %3595 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !360
  %3596 = load i64, i64* %3595, align 8, !dbg !360
  %3597 = and i64 %3594, %3596, !dbg !360
  %3598 = or i64 %3592, %3597, !dbg !360
  %3599 = add i64 %3584, %3598, !dbg !360
  store i64 %3599, i64* %6, align 8, !dbg !360
  %3600 = load i64, i64* %5, align 8, !dbg !360
  %3601 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !360
  %3602 = load i64, i64* %3601, align 16, !dbg !360
  %3603 = add i64 %3602, %3600, !dbg !360
  store i64 %3603, i64* %3601, align 16, !dbg !360
  %3604 = load i64, i64* %5, align 8, !dbg !360
  %3605 = load i64, i64* %6, align 8, !dbg !360
  %3606 = add i64 %3604, %3605, !dbg !360
  %3607 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !360
  store i64 %3606, i64* %3607, align 16, !dbg !360
  %3608 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !361
  %3609 = load i64, i64* %3608, align 8, !dbg !361
  %3610 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !361
  %3611 = load i64, i64* %3610, align 16, !dbg !361
  %3612 = lshr i64 %3611, 14, !dbg !361
  %3613 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !361
  %3614 = load i64, i64* %3613, align 16, !dbg !361
  %3615 = shl i64 %3614, 50, !dbg !361
  %3616 = or i64 %3612, %3615, !dbg !361
  %3617 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !361
  %3618 = load i64, i64* %3617, align 16, !dbg !361
  %3619 = lshr i64 %3618, 18, !dbg !361
  %3620 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !361
  %3621 = load i64, i64* %3620, align 16, !dbg !361
  %3622 = shl i64 %3621, 46, !dbg !361
  %3623 = or i64 %3619, %3622, !dbg !361
  %3624 = xor i64 %3616, %3623, !dbg !361
  %3625 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !361
  %3626 = load i64, i64* %3625, align 16, !dbg !361
  %3627 = lshr i64 %3626, 41, !dbg !361
  %3628 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !361
  %3629 = load i64, i64* %3628, align 16, !dbg !361
  %3630 = shl i64 %3629, 23, !dbg !361
  %3631 = or i64 %3627, %3630, !dbg !361
  %3632 = xor i64 %3624, %3631, !dbg !361
  %3633 = add i64 %3609, %3632, !dbg !361
  %3634 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !361
  %3635 = load i64, i64* %3634, align 16, !dbg !361
  %3636 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !361
  %3637 = load i64, i64* %3636, align 8, !dbg !361
  %3638 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !361
  %3639 = load i64, i64* %3638, align 16, !dbg !361
  %3640 = xor i64 %3637, %3639, !dbg !361
  %3641 = and i64 %3635, %3640, !dbg !361
  %3642 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !361
  %3643 = load i64, i64* %3642, align 16, !dbg !361
  %3644 = xor i64 %3641, %3643, !dbg !361
  %3645 = add i64 %3633, %3644, !dbg !361
  %3646 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 40, !dbg !361
  %3647 = load i64, i64* %3646, align 16, !dbg !361
  %3648 = add i64 %3645, %3647, !dbg !361
  %3649 = add i64 %3648, -6719396339535248540, !dbg !361
  store i64 %3649, i64* %5, align 8, !dbg !361
  %3650 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !361
  %3651 = load i64, i64* %3650, align 16, !dbg !361
  %3652 = lshr i64 %3651, 28, !dbg !361
  %3653 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !361
  %3654 = load i64, i64* %3653, align 16, !dbg !361
  %3655 = shl i64 %3654, 36, !dbg !361
  %3656 = or i64 %3652, %3655, !dbg !361
  %3657 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !361
  %3658 = load i64, i64* %3657, align 16, !dbg !361
  %3659 = lshr i64 %3658, 34, !dbg !361
  %3660 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !361
  %3661 = load i64, i64* %3660, align 16, !dbg !361
  %3662 = shl i64 %3661, 30, !dbg !361
  %3663 = or i64 %3659, %3662, !dbg !361
  %3664 = xor i64 %3656, %3663, !dbg !361
  %3665 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !361
  %3666 = load i64, i64* %3665, align 16, !dbg !361
  %3667 = lshr i64 %3666, 39, !dbg !361
  %3668 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !361
  %3669 = load i64, i64* %3668, align 16, !dbg !361
  %3670 = shl i64 %3669, 25, !dbg !361
  %3671 = or i64 %3667, %3670, !dbg !361
  %3672 = xor i64 %3664, %3671, !dbg !361
  %3673 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !361
  %3674 = load i64, i64* %3673, align 16, !dbg !361
  %3675 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !361
  %3676 = load i64, i64* %3675, align 8, !dbg !361
  %3677 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !361
  %3678 = load i64, i64* %3677, align 16, !dbg !361
  %3679 = or i64 %3676, %3678, !dbg !361
  %3680 = and i64 %3674, %3679, !dbg !361
  %3681 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !361
  %3682 = load i64, i64* %3681, align 8, !dbg !361
  %3683 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !361
  %3684 = load i64, i64* %3683, align 16, !dbg !361
  %3685 = and i64 %3682, %3684, !dbg !361
  %3686 = or i64 %3680, %3685, !dbg !361
  %3687 = add i64 %3672, %3686, !dbg !361
  store i64 %3687, i64* %6, align 8, !dbg !361
  %3688 = load i64, i64* %5, align 8, !dbg !361
  %3689 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !361
  %3690 = load i64, i64* %3689, align 8, !dbg !361
  %3691 = add i64 %3690, %3688, !dbg !361
  store i64 %3691, i64* %3689, align 8, !dbg !361
  %3692 = load i64, i64* %5, align 8, !dbg !361
  %3693 = load i64, i64* %6, align 8, !dbg !361
  %3694 = add i64 %3692, %3693, !dbg !361
  %3695 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !361
  store i64 %3694, i64* %3695, align 8, !dbg !361
  %3696 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !362
  %3697 = load i64, i64* %3696, align 16, !dbg !362
  %3698 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !362
  %3699 = load i64, i64* %3698, align 8, !dbg !362
  %3700 = lshr i64 %3699, 14, !dbg !362
  %3701 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !362
  %3702 = load i64, i64* %3701, align 8, !dbg !362
  %3703 = shl i64 %3702, 50, !dbg !362
  %3704 = or i64 %3700, %3703, !dbg !362
  %3705 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !362
  %3706 = load i64, i64* %3705, align 8, !dbg !362
  %3707 = lshr i64 %3706, 18, !dbg !362
  %3708 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !362
  %3709 = load i64, i64* %3708, align 8, !dbg !362
  %3710 = shl i64 %3709, 46, !dbg !362
  %3711 = or i64 %3707, %3710, !dbg !362
  %3712 = xor i64 %3704, %3711, !dbg !362
  %3713 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !362
  %3714 = load i64, i64* %3713, align 8, !dbg !362
  %3715 = lshr i64 %3714, 41, !dbg !362
  %3716 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !362
  %3717 = load i64, i64* %3716, align 8, !dbg !362
  %3718 = shl i64 %3717, 23, !dbg !362
  %3719 = or i64 %3715, %3718, !dbg !362
  %3720 = xor i64 %3712, %3719, !dbg !362
  %3721 = add i64 %3697, %3720, !dbg !362
  %3722 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !362
  %3723 = load i64, i64* %3722, align 8, !dbg !362
  %3724 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !362
  %3725 = load i64, i64* %3724, align 16, !dbg !362
  %3726 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !362
  %3727 = load i64, i64* %3726, align 8, !dbg !362
  %3728 = xor i64 %3725, %3727, !dbg !362
  %3729 = and i64 %3723, %3728, !dbg !362
  %3730 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !362
  %3731 = load i64, i64* %3730, align 8, !dbg !362
  %3732 = xor i64 %3729, %3731, !dbg !362
  %3733 = add i64 %3721, %3732, !dbg !362
  %3734 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 41, !dbg !362
  %3735 = load i64, i64* %3734, align 8, !dbg !362
  %3736 = add i64 %3733, %3735, !dbg !362
  %3737 = add i64 %3736, -6333637450476146687, !dbg !362
  store i64 %3737, i64* %5, align 8, !dbg !362
  %3738 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !362
  %3739 = load i64, i64* %3738, align 8, !dbg !362
  %3740 = lshr i64 %3739, 28, !dbg !362
  %3741 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !362
  %3742 = load i64, i64* %3741, align 8, !dbg !362
  %3743 = shl i64 %3742, 36, !dbg !362
  %3744 = or i64 %3740, %3743, !dbg !362
  %3745 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !362
  %3746 = load i64, i64* %3745, align 8, !dbg !362
  %3747 = lshr i64 %3746, 34, !dbg !362
  %3748 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !362
  %3749 = load i64, i64* %3748, align 8, !dbg !362
  %3750 = shl i64 %3749, 30, !dbg !362
  %3751 = or i64 %3747, %3750, !dbg !362
  %3752 = xor i64 %3744, %3751, !dbg !362
  %3753 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !362
  %3754 = load i64, i64* %3753, align 8, !dbg !362
  %3755 = lshr i64 %3754, 39, !dbg !362
  %3756 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !362
  %3757 = load i64, i64* %3756, align 8, !dbg !362
  %3758 = shl i64 %3757, 25, !dbg !362
  %3759 = or i64 %3755, %3758, !dbg !362
  %3760 = xor i64 %3752, %3759, !dbg !362
  %3761 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !362
  %3762 = load i64, i64* %3761, align 8, !dbg !362
  %3763 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !362
  %3764 = load i64, i64* %3763, align 16, !dbg !362
  %3765 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !362
  %3766 = load i64, i64* %3765, align 8, !dbg !362
  %3767 = or i64 %3764, %3766, !dbg !362
  %3768 = and i64 %3762, %3767, !dbg !362
  %3769 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !362
  %3770 = load i64, i64* %3769, align 16, !dbg !362
  %3771 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !362
  %3772 = load i64, i64* %3771, align 8, !dbg !362
  %3773 = and i64 %3770, %3772, !dbg !362
  %3774 = or i64 %3768, %3773, !dbg !362
  %3775 = add i64 %3760, %3774, !dbg !362
  store i64 %3775, i64* %6, align 8, !dbg !362
  %3776 = load i64, i64* %5, align 8, !dbg !362
  %3777 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !362
  %3778 = load i64, i64* %3777, align 16, !dbg !362
  %3779 = add i64 %3778, %3776, !dbg !362
  store i64 %3779, i64* %3777, align 16, !dbg !362
  %3780 = load i64, i64* %5, align 8, !dbg !362
  %3781 = load i64, i64* %6, align 8, !dbg !362
  %3782 = add i64 %3780, %3781, !dbg !362
  %3783 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !362
  store i64 %3782, i64* %3783, align 16, !dbg !362
  %3784 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !363
  %3785 = load i64, i64* %3784, align 8, !dbg !363
  %3786 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !363
  %3787 = load i64, i64* %3786, align 16, !dbg !363
  %3788 = lshr i64 %3787, 14, !dbg !363
  %3789 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !363
  %3790 = load i64, i64* %3789, align 16, !dbg !363
  %3791 = shl i64 %3790, 50, !dbg !363
  %3792 = or i64 %3788, %3791, !dbg !363
  %3793 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !363
  %3794 = load i64, i64* %3793, align 16, !dbg !363
  %3795 = lshr i64 %3794, 18, !dbg !363
  %3796 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !363
  %3797 = load i64, i64* %3796, align 16, !dbg !363
  %3798 = shl i64 %3797, 46, !dbg !363
  %3799 = or i64 %3795, %3798, !dbg !363
  %3800 = xor i64 %3792, %3799, !dbg !363
  %3801 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !363
  %3802 = load i64, i64* %3801, align 16, !dbg !363
  %3803 = lshr i64 %3802, 41, !dbg !363
  %3804 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !363
  %3805 = load i64, i64* %3804, align 16, !dbg !363
  %3806 = shl i64 %3805, 23, !dbg !363
  %3807 = or i64 %3803, %3806, !dbg !363
  %3808 = xor i64 %3800, %3807, !dbg !363
  %3809 = add i64 %3785, %3808, !dbg !363
  %3810 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !363
  %3811 = load i64, i64* %3810, align 16, !dbg !363
  %3812 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !363
  %3813 = load i64, i64* %3812, align 8, !dbg !363
  %3814 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !363
  %3815 = load i64, i64* %3814, align 16, !dbg !363
  %3816 = xor i64 %3813, %3815, !dbg !363
  %3817 = and i64 %3811, %3816, !dbg !363
  %3818 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !363
  %3819 = load i64, i64* %3818, align 16, !dbg !363
  %3820 = xor i64 %3817, %3819, !dbg !363
  %3821 = add i64 %3809, %3820, !dbg !363
  %3822 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 42, !dbg !363
  %3823 = load i64, i64* %3822, align 16, !dbg !363
  %3824 = add i64 %3821, %3823, !dbg !363
  %3825 = add i64 %3824, -4446306890439682159, !dbg !363
  store i64 %3825, i64* %5, align 8, !dbg !363
  %3826 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !363
  %3827 = load i64, i64* %3826, align 16, !dbg !363
  %3828 = lshr i64 %3827, 28, !dbg !363
  %3829 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !363
  %3830 = load i64, i64* %3829, align 16, !dbg !363
  %3831 = shl i64 %3830, 36, !dbg !363
  %3832 = or i64 %3828, %3831, !dbg !363
  %3833 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !363
  %3834 = load i64, i64* %3833, align 16, !dbg !363
  %3835 = lshr i64 %3834, 34, !dbg !363
  %3836 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !363
  %3837 = load i64, i64* %3836, align 16, !dbg !363
  %3838 = shl i64 %3837, 30, !dbg !363
  %3839 = or i64 %3835, %3838, !dbg !363
  %3840 = xor i64 %3832, %3839, !dbg !363
  %3841 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !363
  %3842 = load i64, i64* %3841, align 16, !dbg !363
  %3843 = lshr i64 %3842, 39, !dbg !363
  %3844 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !363
  %3845 = load i64, i64* %3844, align 16, !dbg !363
  %3846 = shl i64 %3845, 25, !dbg !363
  %3847 = or i64 %3843, %3846, !dbg !363
  %3848 = xor i64 %3840, %3847, !dbg !363
  %3849 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !363
  %3850 = load i64, i64* %3849, align 16, !dbg !363
  %3851 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !363
  %3852 = load i64, i64* %3851, align 8, !dbg !363
  %3853 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !363
  %3854 = load i64, i64* %3853, align 16, !dbg !363
  %3855 = or i64 %3852, %3854, !dbg !363
  %3856 = and i64 %3850, %3855, !dbg !363
  %3857 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !363
  %3858 = load i64, i64* %3857, align 8, !dbg !363
  %3859 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !363
  %3860 = load i64, i64* %3859, align 16, !dbg !363
  %3861 = and i64 %3858, %3860, !dbg !363
  %3862 = or i64 %3856, %3861, !dbg !363
  %3863 = add i64 %3848, %3862, !dbg !363
  store i64 %3863, i64* %6, align 8, !dbg !363
  %3864 = load i64, i64* %5, align 8, !dbg !363
  %3865 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !363
  %3866 = load i64, i64* %3865, align 8, !dbg !363
  %3867 = add i64 %3866, %3864, !dbg !363
  store i64 %3867, i64* %3865, align 8, !dbg !363
  %3868 = load i64, i64* %5, align 8, !dbg !363
  %3869 = load i64, i64* %6, align 8, !dbg !363
  %3870 = add i64 %3868, %3869, !dbg !363
  %3871 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !363
  store i64 %3870, i64* %3871, align 8, !dbg !363
  %3872 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !364
  %3873 = load i64, i64* %3872, align 16, !dbg !364
  %3874 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !364
  %3875 = load i64, i64* %3874, align 8, !dbg !364
  %3876 = lshr i64 %3875, 14, !dbg !364
  %3877 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !364
  %3878 = load i64, i64* %3877, align 8, !dbg !364
  %3879 = shl i64 %3878, 50, !dbg !364
  %3880 = or i64 %3876, %3879, !dbg !364
  %3881 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !364
  %3882 = load i64, i64* %3881, align 8, !dbg !364
  %3883 = lshr i64 %3882, 18, !dbg !364
  %3884 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !364
  %3885 = load i64, i64* %3884, align 8, !dbg !364
  %3886 = shl i64 %3885, 46, !dbg !364
  %3887 = or i64 %3883, %3886, !dbg !364
  %3888 = xor i64 %3880, %3887, !dbg !364
  %3889 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !364
  %3890 = load i64, i64* %3889, align 8, !dbg !364
  %3891 = lshr i64 %3890, 41, !dbg !364
  %3892 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !364
  %3893 = load i64, i64* %3892, align 8, !dbg !364
  %3894 = shl i64 %3893, 23, !dbg !364
  %3895 = or i64 %3891, %3894, !dbg !364
  %3896 = xor i64 %3888, %3895, !dbg !364
  %3897 = add i64 %3873, %3896, !dbg !364
  %3898 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !364
  %3899 = load i64, i64* %3898, align 8, !dbg !364
  %3900 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !364
  %3901 = load i64, i64* %3900, align 16, !dbg !364
  %3902 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !364
  %3903 = load i64, i64* %3902, align 8, !dbg !364
  %3904 = xor i64 %3901, %3903, !dbg !364
  %3905 = and i64 %3899, %3904, !dbg !364
  %3906 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !364
  %3907 = load i64, i64* %3906, align 8, !dbg !364
  %3908 = xor i64 %3905, %3907, !dbg !364
  %3909 = add i64 %3897, %3908, !dbg !364
  %3910 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 43, !dbg !364
  %3911 = load i64, i64* %3910, align 8, !dbg !364
  %3912 = add i64 %3909, %3911, !dbg !364
  %3913 = add i64 %3912, -4076793802049405392, !dbg !364
  store i64 %3913, i64* %5, align 8, !dbg !364
  %3914 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !364
  %3915 = load i64, i64* %3914, align 8, !dbg !364
  %3916 = lshr i64 %3915, 28, !dbg !364
  %3917 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !364
  %3918 = load i64, i64* %3917, align 8, !dbg !364
  %3919 = shl i64 %3918, 36, !dbg !364
  %3920 = or i64 %3916, %3919, !dbg !364
  %3921 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !364
  %3922 = load i64, i64* %3921, align 8, !dbg !364
  %3923 = lshr i64 %3922, 34, !dbg !364
  %3924 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !364
  %3925 = load i64, i64* %3924, align 8, !dbg !364
  %3926 = shl i64 %3925, 30, !dbg !364
  %3927 = or i64 %3923, %3926, !dbg !364
  %3928 = xor i64 %3920, %3927, !dbg !364
  %3929 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !364
  %3930 = load i64, i64* %3929, align 8, !dbg !364
  %3931 = lshr i64 %3930, 39, !dbg !364
  %3932 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !364
  %3933 = load i64, i64* %3932, align 8, !dbg !364
  %3934 = shl i64 %3933, 25, !dbg !364
  %3935 = or i64 %3931, %3934, !dbg !364
  %3936 = xor i64 %3928, %3935, !dbg !364
  %3937 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !364
  %3938 = load i64, i64* %3937, align 8, !dbg !364
  %3939 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !364
  %3940 = load i64, i64* %3939, align 16, !dbg !364
  %3941 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !364
  %3942 = load i64, i64* %3941, align 8, !dbg !364
  %3943 = or i64 %3940, %3942, !dbg !364
  %3944 = and i64 %3938, %3943, !dbg !364
  %3945 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !364
  %3946 = load i64, i64* %3945, align 16, !dbg !364
  %3947 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !364
  %3948 = load i64, i64* %3947, align 8, !dbg !364
  %3949 = and i64 %3946, %3948, !dbg !364
  %3950 = or i64 %3944, %3949, !dbg !364
  %3951 = add i64 %3936, %3950, !dbg !364
  store i64 %3951, i64* %6, align 8, !dbg !364
  %3952 = load i64, i64* %5, align 8, !dbg !364
  %3953 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !364
  %3954 = load i64, i64* %3953, align 16, !dbg !364
  %3955 = add i64 %3954, %3952, !dbg !364
  store i64 %3955, i64* %3953, align 16, !dbg !364
  %3956 = load i64, i64* %5, align 8, !dbg !364
  %3957 = load i64, i64* %6, align 8, !dbg !364
  %3958 = add i64 %3956, %3957, !dbg !364
  %3959 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !364
  store i64 %3958, i64* %3959, align 16, !dbg !364
  %3960 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !365
  %3961 = load i64, i64* %3960, align 8, !dbg !365
  %3962 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !365
  %3963 = load i64, i64* %3962, align 16, !dbg !365
  %3964 = lshr i64 %3963, 14, !dbg !365
  %3965 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !365
  %3966 = load i64, i64* %3965, align 16, !dbg !365
  %3967 = shl i64 %3966, 50, !dbg !365
  %3968 = or i64 %3964, %3967, !dbg !365
  %3969 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !365
  %3970 = load i64, i64* %3969, align 16, !dbg !365
  %3971 = lshr i64 %3970, 18, !dbg !365
  %3972 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !365
  %3973 = load i64, i64* %3972, align 16, !dbg !365
  %3974 = shl i64 %3973, 46, !dbg !365
  %3975 = or i64 %3971, %3974, !dbg !365
  %3976 = xor i64 %3968, %3975, !dbg !365
  %3977 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !365
  %3978 = load i64, i64* %3977, align 16, !dbg !365
  %3979 = lshr i64 %3978, 41, !dbg !365
  %3980 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !365
  %3981 = load i64, i64* %3980, align 16, !dbg !365
  %3982 = shl i64 %3981, 23, !dbg !365
  %3983 = or i64 %3979, %3982, !dbg !365
  %3984 = xor i64 %3976, %3983, !dbg !365
  %3985 = add i64 %3961, %3984, !dbg !365
  %3986 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !365
  %3987 = load i64, i64* %3986, align 16, !dbg !365
  %3988 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !365
  %3989 = load i64, i64* %3988, align 8, !dbg !365
  %3990 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !365
  %3991 = load i64, i64* %3990, align 16, !dbg !365
  %3992 = xor i64 %3989, %3991, !dbg !365
  %3993 = and i64 %3987, %3992, !dbg !365
  %3994 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !365
  %3995 = load i64, i64* %3994, align 16, !dbg !365
  %3996 = xor i64 %3993, %3995, !dbg !365
  %3997 = add i64 %3985, %3996, !dbg !365
  %3998 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 44, !dbg !365
  %3999 = load i64, i64* %3998, align 16, !dbg !365
  %4000 = add i64 %3997, %3999, !dbg !365
  %4001 = add i64 %4000, -3345356375505022440, !dbg !365
  store i64 %4001, i64* %5, align 8, !dbg !365
  %4002 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !365
  %4003 = load i64, i64* %4002, align 16, !dbg !365
  %4004 = lshr i64 %4003, 28, !dbg !365
  %4005 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !365
  %4006 = load i64, i64* %4005, align 16, !dbg !365
  %4007 = shl i64 %4006, 36, !dbg !365
  %4008 = or i64 %4004, %4007, !dbg !365
  %4009 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !365
  %4010 = load i64, i64* %4009, align 16, !dbg !365
  %4011 = lshr i64 %4010, 34, !dbg !365
  %4012 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !365
  %4013 = load i64, i64* %4012, align 16, !dbg !365
  %4014 = shl i64 %4013, 30, !dbg !365
  %4015 = or i64 %4011, %4014, !dbg !365
  %4016 = xor i64 %4008, %4015, !dbg !365
  %4017 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !365
  %4018 = load i64, i64* %4017, align 16, !dbg !365
  %4019 = lshr i64 %4018, 39, !dbg !365
  %4020 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !365
  %4021 = load i64, i64* %4020, align 16, !dbg !365
  %4022 = shl i64 %4021, 25, !dbg !365
  %4023 = or i64 %4019, %4022, !dbg !365
  %4024 = xor i64 %4016, %4023, !dbg !365
  %4025 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !365
  %4026 = load i64, i64* %4025, align 16, !dbg !365
  %4027 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !365
  %4028 = load i64, i64* %4027, align 8, !dbg !365
  %4029 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !365
  %4030 = load i64, i64* %4029, align 16, !dbg !365
  %4031 = or i64 %4028, %4030, !dbg !365
  %4032 = and i64 %4026, %4031, !dbg !365
  %4033 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !365
  %4034 = load i64, i64* %4033, align 8, !dbg !365
  %4035 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !365
  %4036 = load i64, i64* %4035, align 16, !dbg !365
  %4037 = and i64 %4034, %4036, !dbg !365
  %4038 = or i64 %4032, %4037, !dbg !365
  %4039 = add i64 %4024, %4038, !dbg !365
  store i64 %4039, i64* %6, align 8, !dbg !365
  %4040 = load i64, i64* %5, align 8, !dbg !365
  %4041 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !365
  %4042 = load i64, i64* %4041, align 8, !dbg !365
  %4043 = add i64 %4042, %4040, !dbg !365
  store i64 %4043, i64* %4041, align 8, !dbg !365
  %4044 = load i64, i64* %5, align 8, !dbg !365
  %4045 = load i64, i64* %6, align 8, !dbg !365
  %4046 = add i64 %4044, %4045, !dbg !365
  %4047 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !365
  store i64 %4046, i64* %4047, align 8, !dbg !365
  %4048 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !366
  %4049 = load i64, i64* %4048, align 16, !dbg !366
  %4050 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !366
  %4051 = load i64, i64* %4050, align 8, !dbg !366
  %4052 = lshr i64 %4051, 14, !dbg !366
  %4053 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !366
  %4054 = load i64, i64* %4053, align 8, !dbg !366
  %4055 = shl i64 %4054, 50, !dbg !366
  %4056 = or i64 %4052, %4055, !dbg !366
  %4057 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !366
  %4058 = load i64, i64* %4057, align 8, !dbg !366
  %4059 = lshr i64 %4058, 18, !dbg !366
  %4060 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !366
  %4061 = load i64, i64* %4060, align 8, !dbg !366
  %4062 = shl i64 %4061, 46, !dbg !366
  %4063 = or i64 %4059, %4062, !dbg !366
  %4064 = xor i64 %4056, %4063, !dbg !366
  %4065 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !366
  %4066 = load i64, i64* %4065, align 8, !dbg !366
  %4067 = lshr i64 %4066, 41, !dbg !366
  %4068 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !366
  %4069 = load i64, i64* %4068, align 8, !dbg !366
  %4070 = shl i64 %4069, 23, !dbg !366
  %4071 = or i64 %4067, %4070, !dbg !366
  %4072 = xor i64 %4064, %4071, !dbg !366
  %4073 = add i64 %4049, %4072, !dbg !366
  %4074 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !366
  %4075 = load i64, i64* %4074, align 8, !dbg !366
  %4076 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !366
  %4077 = load i64, i64* %4076, align 16, !dbg !366
  %4078 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !366
  %4079 = load i64, i64* %4078, align 8, !dbg !366
  %4080 = xor i64 %4077, %4079, !dbg !366
  %4081 = and i64 %4075, %4080, !dbg !366
  %4082 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !366
  %4083 = load i64, i64* %4082, align 8, !dbg !366
  %4084 = xor i64 %4081, %4083, !dbg !366
  %4085 = add i64 %4073, %4084, !dbg !366
  %4086 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 45, !dbg !366
  %4087 = load i64, i64* %4086, align 8, !dbg !366
  %4088 = add i64 %4085, %4087, !dbg !366
  %4089 = add i64 %4088, -2983346525034927856, !dbg !366
  store i64 %4089, i64* %5, align 8, !dbg !366
  %4090 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !366
  %4091 = load i64, i64* %4090, align 8, !dbg !366
  %4092 = lshr i64 %4091, 28, !dbg !366
  %4093 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !366
  %4094 = load i64, i64* %4093, align 8, !dbg !366
  %4095 = shl i64 %4094, 36, !dbg !366
  %4096 = or i64 %4092, %4095, !dbg !366
  %4097 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !366
  %4098 = load i64, i64* %4097, align 8, !dbg !366
  %4099 = lshr i64 %4098, 34, !dbg !366
  %4100 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !366
  %4101 = load i64, i64* %4100, align 8, !dbg !366
  %4102 = shl i64 %4101, 30, !dbg !366
  %4103 = or i64 %4099, %4102, !dbg !366
  %4104 = xor i64 %4096, %4103, !dbg !366
  %4105 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !366
  %4106 = load i64, i64* %4105, align 8, !dbg !366
  %4107 = lshr i64 %4106, 39, !dbg !366
  %4108 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !366
  %4109 = load i64, i64* %4108, align 8, !dbg !366
  %4110 = shl i64 %4109, 25, !dbg !366
  %4111 = or i64 %4107, %4110, !dbg !366
  %4112 = xor i64 %4104, %4111, !dbg !366
  %4113 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !366
  %4114 = load i64, i64* %4113, align 8, !dbg !366
  %4115 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !366
  %4116 = load i64, i64* %4115, align 16, !dbg !366
  %4117 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !366
  %4118 = load i64, i64* %4117, align 8, !dbg !366
  %4119 = or i64 %4116, %4118, !dbg !366
  %4120 = and i64 %4114, %4119, !dbg !366
  %4121 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !366
  %4122 = load i64, i64* %4121, align 16, !dbg !366
  %4123 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !366
  %4124 = load i64, i64* %4123, align 8, !dbg !366
  %4125 = and i64 %4122, %4124, !dbg !366
  %4126 = or i64 %4120, %4125, !dbg !366
  %4127 = add i64 %4112, %4126, !dbg !366
  store i64 %4127, i64* %6, align 8, !dbg !366
  %4128 = load i64, i64* %5, align 8, !dbg !366
  %4129 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !366
  %4130 = load i64, i64* %4129, align 16, !dbg !366
  %4131 = add i64 %4130, %4128, !dbg !366
  store i64 %4131, i64* %4129, align 16, !dbg !366
  %4132 = load i64, i64* %5, align 8, !dbg !366
  %4133 = load i64, i64* %6, align 8, !dbg !366
  %4134 = add i64 %4132, %4133, !dbg !366
  %4135 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !366
  store i64 %4134, i64* %4135, align 16, !dbg !366
  %4136 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !367
  %4137 = load i64, i64* %4136, align 8, !dbg !367
  %4138 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !367
  %4139 = load i64, i64* %4138, align 16, !dbg !367
  %4140 = lshr i64 %4139, 14, !dbg !367
  %4141 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !367
  %4142 = load i64, i64* %4141, align 16, !dbg !367
  %4143 = shl i64 %4142, 50, !dbg !367
  %4144 = or i64 %4140, %4143, !dbg !367
  %4145 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !367
  %4146 = load i64, i64* %4145, align 16, !dbg !367
  %4147 = lshr i64 %4146, 18, !dbg !367
  %4148 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !367
  %4149 = load i64, i64* %4148, align 16, !dbg !367
  %4150 = shl i64 %4149, 46, !dbg !367
  %4151 = or i64 %4147, %4150, !dbg !367
  %4152 = xor i64 %4144, %4151, !dbg !367
  %4153 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !367
  %4154 = load i64, i64* %4153, align 16, !dbg !367
  %4155 = lshr i64 %4154, 41, !dbg !367
  %4156 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !367
  %4157 = load i64, i64* %4156, align 16, !dbg !367
  %4158 = shl i64 %4157, 23, !dbg !367
  %4159 = or i64 %4155, %4158, !dbg !367
  %4160 = xor i64 %4152, %4159, !dbg !367
  %4161 = add i64 %4137, %4160, !dbg !367
  %4162 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !367
  %4163 = load i64, i64* %4162, align 16, !dbg !367
  %4164 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !367
  %4165 = load i64, i64* %4164, align 8, !dbg !367
  %4166 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !367
  %4167 = load i64, i64* %4166, align 16, !dbg !367
  %4168 = xor i64 %4165, %4167, !dbg !367
  %4169 = and i64 %4163, %4168, !dbg !367
  %4170 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !367
  %4171 = load i64, i64* %4170, align 16, !dbg !367
  %4172 = xor i64 %4169, %4171, !dbg !367
  %4173 = add i64 %4161, %4172, !dbg !367
  %4174 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 46, !dbg !367
  %4175 = load i64, i64* %4174, align 16, !dbg !367
  %4176 = add i64 %4173, %4175, !dbg !367
  %4177 = add i64 %4176, -860691631967231958, !dbg !367
  store i64 %4177, i64* %5, align 8, !dbg !367
  %4178 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !367
  %4179 = load i64, i64* %4178, align 16, !dbg !367
  %4180 = lshr i64 %4179, 28, !dbg !367
  %4181 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !367
  %4182 = load i64, i64* %4181, align 16, !dbg !367
  %4183 = shl i64 %4182, 36, !dbg !367
  %4184 = or i64 %4180, %4183, !dbg !367
  %4185 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !367
  %4186 = load i64, i64* %4185, align 16, !dbg !367
  %4187 = lshr i64 %4186, 34, !dbg !367
  %4188 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !367
  %4189 = load i64, i64* %4188, align 16, !dbg !367
  %4190 = shl i64 %4189, 30, !dbg !367
  %4191 = or i64 %4187, %4190, !dbg !367
  %4192 = xor i64 %4184, %4191, !dbg !367
  %4193 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !367
  %4194 = load i64, i64* %4193, align 16, !dbg !367
  %4195 = lshr i64 %4194, 39, !dbg !367
  %4196 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !367
  %4197 = load i64, i64* %4196, align 16, !dbg !367
  %4198 = shl i64 %4197, 25, !dbg !367
  %4199 = or i64 %4195, %4198, !dbg !367
  %4200 = xor i64 %4192, %4199, !dbg !367
  %4201 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !367
  %4202 = load i64, i64* %4201, align 16, !dbg !367
  %4203 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !367
  %4204 = load i64, i64* %4203, align 8, !dbg !367
  %4205 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !367
  %4206 = load i64, i64* %4205, align 16, !dbg !367
  %4207 = or i64 %4204, %4206, !dbg !367
  %4208 = and i64 %4202, %4207, !dbg !367
  %4209 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !367
  %4210 = load i64, i64* %4209, align 8, !dbg !367
  %4211 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !367
  %4212 = load i64, i64* %4211, align 16, !dbg !367
  %4213 = and i64 %4210, %4212, !dbg !367
  %4214 = or i64 %4208, %4213, !dbg !367
  %4215 = add i64 %4200, %4214, !dbg !367
  store i64 %4215, i64* %6, align 8, !dbg !367
  %4216 = load i64, i64* %5, align 8, !dbg !367
  %4217 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !367
  %4218 = load i64, i64* %4217, align 8, !dbg !367
  %4219 = add i64 %4218, %4216, !dbg !367
  store i64 %4219, i64* %4217, align 8, !dbg !367
  %4220 = load i64, i64* %5, align 8, !dbg !367
  %4221 = load i64, i64* %6, align 8, !dbg !367
  %4222 = add i64 %4220, %4221, !dbg !367
  %4223 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !367
  store i64 %4222, i64* %4223, align 8, !dbg !367
  %4224 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !368
  %4225 = load i64, i64* %4224, align 16, !dbg !368
  %4226 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !368
  %4227 = load i64, i64* %4226, align 8, !dbg !368
  %4228 = lshr i64 %4227, 14, !dbg !368
  %4229 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !368
  %4230 = load i64, i64* %4229, align 8, !dbg !368
  %4231 = shl i64 %4230, 50, !dbg !368
  %4232 = or i64 %4228, %4231, !dbg !368
  %4233 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !368
  %4234 = load i64, i64* %4233, align 8, !dbg !368
  %4235 = lshr i64 %4234, 18, !dbg !368
  %4236 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !368
  %4237 = load i64, i64* %4236, align 8, !dbg !368
  %4238 = shl i64 %4237, 46, !dbg !368
  %4239 = or i64 %4235, %4238, !dbg !368
  %4240 = xor i64 %4232, %4239, !dbg !368
  %4241 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !368
  %4242 = load i64, i64* %4241, align 8, !dbg !368
  %4243 = lshr i64 %4242, 41, !dbg !368
  %4244 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !368
  %4245 = load i64, i64* %4244, align 8, !dbg !368
  %4246 = shl i64 %4245, 23, !dbg !368
  %4247 = or i64 %4243, %4246, !dbg !368
  %4248 = xor i64 %4240, %4247, !dbg !368
  %4249 = add i64 %4225, %4248, !dbg !368
  %4250 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !368
  %4251 = load i64, i64* %4250, align 8, !dbg !368
  %4252 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !368
  %4253 = load i64, i64* %4252, align 16, !dbg !368
  %4254 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !368
  %4255 = load i64, i64* %4254, align 8, !dbg !368
  %4256 = xor i64 %4253, %4255, !dbg !368
  %4257 = and i64 %4251, %4256, !dbg !368
  %4258 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !368
  %4259 = load i64, i64* %4258, align 8, !dbg !368
  %4260 = xor i64 %4257, %4259, !dbg !368
  %4261 = add i64 %4249, %4260, !dbg !368
  %4262 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 47, !dbg !368
  %4263 = load i64, i64* %4262, align 8, !dbg !368
  %4264 = add i64 %4261, %4263, !dbg !368
  %4265 = add i64 %4264, 1182934255886127544, !dbg !368
  store i64 %4265, i64* %5, align 8, !dbg !368
  %4266 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !368
  %4267 = load i64, i64* %4266, align 8, !dbg !368
  %4268 = lshr i64 %4267, 28, !dbg !368
  %4269 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !368
  %4270 = load i64, i64* %4269, align 8, !dbg !368
  %4271 = shl i64 %4270, 36, !dbg !368
  %4272 = or i64 %4268, %4271, !dbg !368
  %4273 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !368
  %4274 = load i64, i64* %4273, align 8, !dbg !368
  %4275 = lshr i64 %4274, 34, !dbg !368
  %4276 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !368
  %4277 = load i64, i64* %4276, align 8, !dbg !368
  %4278 = shl i64 %4277, 30, !dbg !368
  %4279 = or i64 %4275, %4278, !dbg !368
  %4280 = xor i64 %4272, %4279, !dbg !368
  %4281 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !368
  %4282 = load i64, i64* %4281, align 8, !dbg !368
  %4283 = lshr i64 %4282, 39, !dbg !368
  %4284 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !368
  %4285 = load i64, i64* %4284, align 8, !dbg !368
  %4286 = shl i64 %4285, 25, !dbg !368
  %4287 = or i64 %4283, %4286, !dbg !368
  %4288 = xor i64 %4280, %4287, !dbg !368
  %4289 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !368
  %4290 = load i64, i64* %4289, align 8, !dbg !368
  %4291 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !368
  %4292 = load i64, i64* %4291, align 16, !dbg !368
  %4293 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !368
  %4294 = load i64, i64* %4293, align 8, !dbg !368
  %4295 = or i64 %4292, %4294, !dbg !368
  %4296 = and i64 %4290, %4295, !dbg !368
  %4297 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !368
  %4298 = load i64, i64* %4297, align 16, !dbg !368
  %4299 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !368
  %4300 = load i64, i64* %4299, align 8, !dbg !368
  %4301 = and i64 %4298, %4300, !dbg !368
  %4302 = or i64 %4296, %4301, !dbg !368
  %4303 = add i64 %4288, %4302, !dbg !368
  store i64 %4303, i64* %6, align 8, !dbg !368
  %4304 = load i64, i64* %5, align 8, !dbg !368
  %4305 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !368
  %4306 = load i64, i64* %4305, align 16, !dbg !368
  %4307 = add i64 %4306, %4304, !dbg !368
  store i64 %4307, i64* %4305, align 16, !dbg !368
  %4308 = load i64, i64* %5, align 8, !dbg !368
  %4309 = load i64, i64* %6, align 8, !dbg !368
  %4310 = add i64 %4308, %4309, !dbg !368
  %4311 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !368
  store i64 %4310, i64* %4311, align 16, !dbg !368
  %4312 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !369
  %4313 = load i64, i64* %4312, align 8, !dbg !369
  %4314 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !369
  %4315 = load i64, i64* %4314, align 16, !dbg !369
  %4316 = lshr i64 %4315, 14, !dbg !369
  %4317 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !369
  %4318 = load i64, i64* %4317, align 16, !dbg !369
  %4319 = shl i64 %4318, 50, !dbg !369
  %4320 = or i64 %4316, %4319, !dbg !369
  %4321 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !369
  %4322 = load i64, i64* %4321, align 16, !dbg !369
  %4323 = lshr i64 %4322, 18, !dbg !369
  %4324 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !369
  %4325 = load i64, i64* %4324, align 16, !dbg !369
  %4326 = shl i64 %4325, 46, !dbg !369
  %4327 = or i64 %4323, %4326, !dbg !369
  %4328 = xor i64 %4320, %4327, !dbg !369
  %4329 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !369
  %4330 = load i64, i64* %4329, align 16, !dbg !369
  %4331 = lshr i64 %4330, 41, !dbg !369
  %4332 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !369
  %4333 = load i64, i64* %4332, align 16, !dbg !369
  %4334 = shl i64 %4333, 23, !dbg !369
  %4335 = or i64 %4331, %4334, !dbg !369
  %4336 = xor i64 %4328, %4335, !dbg !369
  %4337 = add i64 %4313, %4336, !dbg !369
  %4338 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !369
  %4339 = load i64, i64* %4338, align 16, !dbg !369
  %4340 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !369
  %4341 = load i64, i64* %4340, align 8, !dbg !369
  %4342 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !369
  %4343 = load i64, i64* %4342, align 16, !dbg !369
  %4344 = xor i64 %4341, %4343, !dbg !369
  %4345 = and i64 %4339, %4344, !dbg !369
  %4346 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !369
  %4347 = load i64, i64* %4346, align 16, !dbg !369
  %4348 = xor i64 %4345, %4347, !dbg !369
  %4349 = add i64 %4337, %4348, !dbg !369
  %4350 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 48, !dbg !369
  %4351 = load i64, i64* %4350, align 16, !dbg !369
  %4352 = add i64 %4349, %4351, !dbg !369
  %4353 = add i64 %4352, 1847814050463011016, !dbg !369
  store i64 %4353, i64* %5, align 8, !dbg !369
  %4354 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !369
  %4355 = load i64, i64* %4354, align 16, !dbg !369
  %4356 = lshr i64 %4355, 28, !dbg !369
  %4357 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !369
  %4358 = load i64, i64* %4357, align 16, !dbg !369
  %4359 = shl i64 %4358, 36, !dbg !369
  %4360 = or i64 %4356, %4359, !dbg !369
  %4361 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !369
  %4362 = load i64, i64* %4361, align 16, !dbg !369
  %4363 = lshr i64 %4362, 34, !dbg !369
  %4364 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !369
  %4365 = load i64, i64* %4364, align 16, !dbg !369
  %4366 = shl i64 %4365, 30, !dbg !369
  %4367 = or i64 %4363, %4366, !dbg !369
  %4368 = xor i64 %4360, %4367, !dbg !369
  %4369 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !369
  %4370 = load i64, i64* %4369, align 16, !dbg !369
  %4371 = lshr i64 %4370, 39, !dbg !369
  %4372 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !369
  %4373 = load i64, i64* %4372, align 16, !dbg !369
  %4374 = shl i64 %4373, 25, !dbg !369
  %4375 = or i64 %4371, %4374, !dbg !369
  %4376 = xor i64 %4368, %4375, !dbg !369
  %4377 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !369
  %4378 = load i64, i64* %4377, align 16, !dbg !369
  %4379 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !369
  %4380 = load i64, i64* %4379, align 8, !dbg !369
  %4381 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !369
  %4382 = load i64, i64* %4381, align 16, !dbg !369
  %4383 = or i64 %4380, %4382, !dbg !369
  %4384 = and i64 %4378, %4383, !dbg !369
  %4385 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !369
  %4386 = load i64, i64* %4385, align 8, !dbg !369
  %4387 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !369
  %4388 = load i64, i64* %4387, align 16, !dbg !369
  %4389 = and i64 %4386, %4388, !dbg !369
  %4390 = or i64 %4384, %4389, !dbg !369
  %4391 = add i64 %4376, %4390, !dbg !369
  store i64 %4391, i64* %6, align 8, !dbg !369
  %4392 = load i64, i64* %5, align 8, !dbg !369
  %4393 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !369
  %4394 = load i64, i64* %4393, align 8, !dbg !369
  %4395 = add i64 %4394, %4392, !dbg !369
  store i64 %4395, i64* %4393, align 8, !dbg !369
  %4396 = load i64, i64* %5, align 8, !dbg !369
  %4397 = load i64, i64* %6, align 8, !dbg !369
  %4398 = add i64 %4396, %4397, !dbg !369
  %4399 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !369
  store i64 %4398, i64* %4399, align 8, !dbg !369
  %4400 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !370
  %4401 = load i64, i64* %4400, align 16, !dbg !370
  %4402 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !370
  %4403 = load i64, i64* %4402, align 8, !dbg !370
  %4404 = lshr i64 %4403, 14, !dbg !370
  %4405 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !370
  %4406 = load i64, i64* %4405, align 8, !dbg !370
  %4407 = shl i64 %4406, 50, !dbg !370
  %4408 = or i64 %4404, %4407, !dbg !370
  %4409 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !370
  %4410 = load i64, i64* %4409, align 8, !dbg !370
  %4411 = lshr i64 %4410, 18, !dbg !370
  %4412 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !370
  %4413 = load i64, i64* %4412, align 8, !dbg !370
  %4414 = shl i64 %4413, 46, !dbg !370
  %4415 = or i64 %4411, %4414, !dbg !370
  %4416 = xor i64 %4408, %4415, !dbg !370
  %4417 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !370
  %4418 = load i64, i64* %4417, align 8, !dbg !370
  %4419 = lshr i64 %4418, 41, !dbg !370
  %4420 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !370
  %4421 = load i64, i64* %4420, align 8, !dbg !370
  %4422 = shl i64 %4421, 23, !dbg !370
  %4423 = or i64 %4419, %4422, !dbg !370
  %4424 = xor i64 %4416, %4423, !dbg !370
  %4425 = add i64 %4401, %4424, !dbg !370
  %4426 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !370
  %4427 = load i64, i64* %4426, align 8, !dbg !370
  %4428 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !370
  %4429 = load i64, i64* %4428, align 16, !dbg !370
  %4430 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !370
  %4431 = load i64, i64* %4430, align 8, !dbg !370
  %4432 = xor i64 %4429, %4431, !dbg !370
  %4433 = and i64 %4427, %4432, !dbg !370
  %4434 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !370
  %4435 = load i64, i64* %4434, align 8, !dbg !370
  %4436 = xor i64 %4433, %4435, !dbg !370
  %4437 = add i64 %4425, %4436, !dbg !370
  %4438 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 49, !dbg !370
  %4439 = load i64, i64* %4438, align 8, !dbg !370
  %4440 = add i64 %4437, %4439, !dbg !370
  %4441 = add i64 %4440, 2177327727835720531, !dbg !370
  store i64 %4441, i64* %5, align 8, !dbg !370
  %4442 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !370
  %4443 = load i64, i64* %4442, align 8, !dbg !370
  %4444 = lshr i64 %4443, 28, !dbg !370
  %4445 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !370
  %4446 = load i64, i64* %4445, align 8, !dbg !370
  %4447 = shl i64 %4446, 36, !dbg !370
  %4448 = or i64 %4444, %4447, !dbg !370
  %4449 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !370
  %4450 = load i64, i64* %4449, align 8, !dbg !370
  %4451 = lshr i64 %4450, 34, !dbg !370
  %4452 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !370
  %4453 = load i64, i64* %4452, align 8, !dbg !370
  %4454 = shl i64 %4453, 30, !dbg !370
  %4455 = or i64 %4451, %4454, !dbg !370
  %4456 = xor i64 %4448, %4455, !dbg !370
  %4457 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !370
  %4458 = load i64, i64* %4457, align 8, !dbg !370
  %4459 = lshr i64 %4458, 39, !dbg !370
  %4460 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !370
  %4461 = load i64, i64* %4460, align 8, !dbg !370
  %4462 = shl i64 %4461, 25, !dbg !370
  %4463 = or i64 %4459, %4462, !dbg !370
  %4464 = xor i64 %4456, %4463, !dbg !370
  %4465 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !370
  %4466 = load i64, i64* %4465, align 8, !dbg !370
  %4467 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !370
  %4468 = load i64, i64* %4467, align 16, !dbg !370
  %4469 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !370
  %4470 = load i64, i64* %4469, align 8, !dbg !370
  %4471 = or i64 %4468, %4470, !dbg !370
  %4472 = and i64 %4466, %4471, !dbg !370
  %4473 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !370
  %4474 = load i64, i64* %4473, align 16, !dbg !370
  %4475 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !370
  %4476 = load i64, i64* %4475, align 8, !dbg !370
  %4477 = and i64 %4474, %4476, !dbg !370
  %4478 = or i64 %4472, %4477, !dbg !370
  %4479 = add i64 %4464, %4478, !dbg !370
  store i64 %4479, i64* %6, align 8, !dbg !370
  %4480 = load i64, i64* %5, align 8, !dbg !370
  %4481 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !370
  %4482 = load i64, i64* %4481, align 16, !dbg !370
  %4483 = add i64 %4482, %4480, !dbg !370
  store i64 %4483, i64* %4481, align 16, !dbg !370
  %4484 = load i64, i64* %5, align 8, !dbg !370
  %4485 = load i64, i64* %6, align 8, !dbg !370
  %4486 = add i64 %4484, %4485, !dbg !370
  %4487 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !370
  store i64 %4486, i64* %4487, align 16, !dbg !370
  %4488 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !371
  %4489 = load i64, i64* %4488, align 8, !dbg !371
  %4490 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !371
  %4491 = load i64, i64* %4490, align 16, !dbg !371
  %4492 = lshr i64 %4491, 14, !dbg !371
  %4493 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !371
  %4494 = load i64, i64* %4493, align 16, !dbg !371
  %4495 = shl i64 %4494, 50, !dbg !371
  %4496 = or i64 %4492, %4495, !dbg !371
  %4497 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !371
  %4498 = load i64, i64* %4497, align 16, !dbg !371
  %4499 = lshr i64 %4498, 18, !dbg !371
  %4500 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !371
  %4501 = load i64, i64* %4500, align 16, !dbg !371
  %4502 = shl i64 %4501, 46, !dbg !371
  %4503 = or i64 %4499, %4502, !dbg !371
  %4504 = xor i64 %4496, %4503, !dbg !371
  %4505 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !371
  %4506 = load i64, i64* %4505, align 16, !dbg !371
  %4507 = lshr i64 %4506, 41, !dbg !371
  %4508 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !371
  %4509 = load i64, i64* %4508, align 16, !dbg !371
  %4510 = shl i64 %4509, 23, !dbg !371
  %4511 = or i64 %4507, %4510, !dbg !371
  %4512 = xor i64 %4504, %4511, !dbg !371
  %4513 = add i64 %4489, %4512, !dbg !371
  %4514 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !371
  %4515 = load i64, i64* %4514, align 16, !dbg !371
  %4516 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !371
  %4517 = load i64, i64* %4516, align 8, !dbg !371
  %4518 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !371
  %4519 = load i64, i64* %4518, align 16, !dbg !371
  %4520 = xor i64 %4517, %4519, !dbg !371
  %4521 = and i64 %4515, %4520, !dbg !371
  %4522 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !371
  %4523 = load i64, i64* %4522, align 16, !dbg !371
  %4524 = xor i64 %4521, %4523, !dbg !371
  %4525 = add i64 %4513, %4524, !dbg !371
  %4526 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 50, !dbg !371
  %4527 = load i64, i64* %4526, align 16, !dbg !371
  %4528 = add i64 %4525, %4527, !dbg !371
  %4529 = add i64 %4528, 2830643537854262169, !dbg !371
  store i64 %4529, i64* %5, align 8, !dbg !371
  %4530 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !371
  %4531 = load i64, i64* %4530, align 16, !dbg !371
  %4532 = lshr i64 %4531, 28, !dbg !371
  %4533 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !371
  %4534 = load i64, i64* %4533, align 16, !dbg !371
  %4535 = shl i64 %4534, 36, !dbg !371
  %4536 = or i64 %4532, %4535, !dbg !371
  %4537 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !371
  %4538 = load i64, i64* %4537, align 16, !dbg !371
  %4539 = lshr i64 %4538, 34, !dbg !371
  %4540 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !371
  %4541 = load i64, i64* %4540, align 16, !dbg !371
  %4542 = shl i64 %4541, 30, !dbg !371
  %4543 = or i64 %4539, %4542, !dbg !371
  %4544 = xor i64 %4536, %4543, !dbg !371
  %4545 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !371
  %4546 = load i64, i64* %4545, align 16, !dbg !371
  %4547 = lshr i64 %4546, 39, !dbg !371
  %4548 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !371
  %4549 = load i64, i64* %4548, align 16, !dbg !371
  %4550 = shl i64 %4549, 25, !dbg !371
  %4551 = or i64 %4547, %4550, !dbg !371
  %4552 = xor i64 %4544, %4551, !dbg !371
  %4553 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !371
  %4554 = load i64, i64* %4553, align 16, !dbg !371
  %4555 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !371
  %4556 = load i64, i64* %4555, align 8, !dbg !371
  %4557 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !371
  %4558 = load i64, i64* %4557, align 16, !dbg !371
  %4559 = or i64 %4556, %4558, !dbg !371
  %4560 = and i64 %4554, %4559, !dbg !371
  %4561 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !371
  %4562 = load i64, i64* %4561, align 8, !dbg !371
  %4563 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !371
  %4564 = load i64, i64* %4563, align 16, !dbg !371
  %4565 = and i64 %4562, %4564, !dbg !371
  %4566 = or i64 %4560, %4565, !dbg !371
  %4567 = add i64 %4552, %4566, !dbg !371
  store i64 %4567, i64* %6, align 8, !dbg !371
  %4568 = load i64, i64* %5, align 8, !dbg !371
  %4569 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !371
  %4570 = load i64, i64* %4569, align 8, !dbg !371
  %4571 = add i64 %4570, %4568, !dbg !371
  store i64 %4571, i64* %4569, align 8, !dbg !371
  %4572 = load i64, i64* %5, align 8, !dbg !371
  %4573 = load i64, i64* %6, align 8, !dbg !371
  %4574 = add i64 %4572, %4573, !dbg !371
  %4575 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !371
  store i64 %4574, i64* %4575, align 8, !dbg !371
  %4576 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !372
  %4577 = load i64, i64* %4576, align 16, !dbg !372
  %4578 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !372
  %4579 = load i64, i64* %4578, align 8, !dbg !372
  %4580 = lshr i64 %4579, 14, !dbg !372
  %4581 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !372
  %4582 = load i64, i64* %4581, align 8, !dbg !372
  %4583 = shl i64 %4582, 50, !dbg !372
  %4584 = or i64 %4580, %4583, !dbg !372
  %4585 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !372
  %4586 = load i64, i64* %4585, align 8, !dbg !372
  %4587 = lshr i64 %4586, 18, !dbg !372
  %4588 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !372
  %4589 = load i64, i64* %4588, align 8, !dbg !372
  %4590 = shl i64 %4589, 46, !dbg !372
  %4591 = or i64 %4587, %4590, !dbg !372
  %4592 = xor i64 %4584, %4591, !dbg !372
  %4593 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !372
  %4594 = load i64, i64* %4593, align 8, !dbg !372
  %4595 = lshr i64 %4594, 41, !dbg !372
  %4596 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !372
  %4597 = load i64, i64* %4596, align 8, !dbg !372
  %4598 = shl i64 %4597, 23, !dbg !372
  %4599 = or i64 %4595, %4598, !dbg !372
  %4600 = xor i64 %4592, %4599, !dbg !372
  %4601 = add i64 %4577, %4600, !dbg !372
  %4602 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !372
  %4603 = load i64, i64* %4602, align 8, !dbg !372
  %4604 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !372
  %4605 = load i64, i64* %4604, align 16, !dbg !372
  %4606 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !372
  %4607 = load i64, i64* %4606, align 8, !dbg !372
  %4608 = xor i64 %4605, %4607, !dbg !372
  %4609 = and i64 %4603, %4608, !dbg !372
  %4610 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !372
  %4611 = load i64, i64* %4610, align 8, !dbg !372
  %4612 = xor i64 %4609, %4611, !dbg !372
  %4613 = add i64 %4601, %4612, !dbg !372
  %4614 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 51, !dbg !372
  %4615 = load i64, i64* %4614, align 8, !dbg !372
  %4616 = add i64 %4613, %4615, !dbg !372
  %4617 = add i64 %4616, 3796741975233480872, !dbg !372
  store i64 %4617, i64* %5, align 8, !dbg !372
  %4618 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !372
  %4619 = load i64, i64* %4618, align 8, !dbg !372
  %4620 = lshr i64 %4619, 28, !dbg !372
  %4621 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !372
  %4622 = load i64, i64* %4621, align 8, !dbg !372
  %4623 = shl i64 %4622, 36, !dbg !372
  %4624 = or i64 %4620, %4623, !dbg !372
  %4625 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !372
  %4626 = load i64, i64* %4625, align 8, !dbg !372
  %4627 = lshr i64 %4626, 34, !dbg !372
  %4628 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !372
  %4629 = load i64, i64* %4628, align 8, !dbg !372
  %4630 = shl i64 %4629, 30, !dbg !372
  %4631 = or i64 %4627, %4630, !dbg !372
  %4632 = xor i64 %4624, %4631, !dbg !372
  %4633 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !372
  %4634 = load i64, i64* %4633, align 8, !dbg !372
  %4635 = lshr i64 %4634, 39, !dbg !372
  %4636 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !372
  %4637 = load i64, i64* %4636, align 8, !dbg !372
  %4638 = shl i64 %4637, 25, !dbg !372
  %4639 = or i64 %4635, %4638, !dbg !372
  %4640 = xor i64 %4632, %4639, !dbg !372
  %4641 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !372
  %4642 = load i64, i64* %4641, align 8, !dbg !372
  %4643 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !372
  %4644 = load i64, i64* %4643, align 16, !dbg !372
  %4645 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !372
  %4646 = load i64, i64* %4645, align 8, !dbg !372
  %4647 = or i64 %4644, %4646, !dbg !372
  %4648 = and i64 %4642, %4647, !dbg !372
  %4649 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !372
  %4650 = load i64, i64* %4649, align 16, !dbg !372
  %4651 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !372
  %4652 = load i64, i64* %4651, align 8, !dbg !372
  %4653 = and i64 %4650, %4652, !dbg !372
  %4654 = or i64 %4648, %4653, !dbg !372
  %4655 = add i64 %4640, %4654, !dbg !372
  store i64 %4655, i64* %6, align 8, !dbg !372
  %4656 = load i64, i64* %5, align 8, !dbg !372
  %4657 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !372
  %4658 = load i64, i64* %4657, align 16, !dbg !372
  %4659 = add i64 %4658, %4656, !dbg !372
  store i64 %4659, i64* %4657, align 16, !dbg !372
  %4660 = load i64, i64* %5, align 8, !dbg !372
  %4661 = load i64, i64* %6, align 8, !dbg !372
  %4662 = add i64 %4660, %4661, !dbg !372
  %4663 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !372
  store i64 %4662, i64* %4663, align 16, !dbg !372
  %4664 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !373
  %4665 = load i64, i64* %4664, align 8, !dbg !373
  %4666 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !373
  %4667 = load i64, i64* %4666, align 16, !dbg !373
  %4668 = lshr i64 %4667, 14, !dbg !373
  %4669 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !373
  %4670 = load i64, i64* %4669, align 16, !dbg !373
  %4671 = shl i64 %4670, 50, !dbg !373
  %4672 = or i64 %4668, %4671, !dbg !373
  %4673 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !373
  %4674 = load i64, i64* %4673, align 16, !dbg !373
  %4675 = lshr i64 %4674, 18, !dbg !373
  %4676 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !373
  %4677 = load i64, i64* %4676, align 16, !dbg !373
  %4678 = shl i64 %4677, 46, !dbg !373
  %4679 = or i64 %4675, %4678, !dbg !373
  %4680 = xor i64 %4672, %4679, !dbg !373
  %4681 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !373
  %4682 = load i64, i64* %4681, align 16, !dbg !373
  %4683 = lshr i64 %4682, 41, !dbg !373
  %4684 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !373
  %4685 = load i64, i64* %4684, align 16, !dbg !373
  %4686 = shl i64 %4685, 23, !dbg !373
  %4687 = or i64 %4683, %4686, !dbg !373
  %4688 = xor i64 %4680, %4687, !dbg !373
  %4689 = add i64 %4665, %4688, !dbg !373
  %4690 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !373
  %4691 = load i64, i64* %4690, align 16, !dbg !373
  %4692 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !373
  %4693 = load i64, i64* %4692, align 8, !dbg !373
  %4694 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !373
  %4695 = load i64, i64* %4694, align 16, !dbg !373
  %4696 = xor i64 %4693, %4695, !dbg !373
  %4697 = and i64 %4691, %4696, !dbg !373
  %4698 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !373
  %4699 = load i64, i64* %4698, align 16, !dbg !373
  %4700 = xor i64 %4697, %4699, !dbg !373
  %4701 = add i64 %4689, %4700, !dbg !373
  %4702 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 52, !dbg !373
  %4703 = load i64, i64* %4702, align 16, !dbg !373
  %4704 = add i64 %4701, %4703, !dbg !373
  %4705 = add i64 %4704, 4115178125766777443, !dbg !373
  store i64 %4705, i64* %5, align 8, !dbg !373
  %4706 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !373
  %4707 = load i64, i64* %4706, align 16, !dbg !373
  %4708 = lshr i64 %4707, 28, !dbg !373
  %4709 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !373
  %4710 = load i64, i64* %4709, align 16, !dbg !373
  %4711 = shl i64 %4710, 36, !dbg !373
  %4712 = or i64 %4708, %4711, !dbg !373
  %4713 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !373
  %4714 = load i64, i64* %4713, align 16, !dbg !373
  %4715 = lshr i64 %4714, 34, !dbg !373
  %4716 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !373
  %4717 = load i64, i64* %4716, align 16, !dbg !373
  %4718 = shl i64 %4717, 30, !dbg !373
  %4719 = or i64 %4715, %4718, !dbg !373
  %4720 = xor i64 %4712, %4719, !dbg !373
  %4721 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !373
  %4722 = load i64, i64* %4721, align 16, !dbg !373
  %4723 = lshr i64 %4722, 39, !dbg !373
  %4724 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !373
  %4725 = load i64, i64* %4724, align 16, !dbg !373
  %4726 = shl i64 %4725, 25, !dbg !373
  %4727 = or i64 %4723, %4726, !dbg !373
  %4728 = xor i64 %4720, %4727, !dbg !373
  %4729 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !373
  %4730 = load i64, i64* %4729, align 16, !dbg !373
  %4731 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !373
  %4732 = load i64, i64* %4731, align 8, !dbg !373
  %4733 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !373
  %4734 = load i64, i64* %4733, align 16, !dbg !373
  %4735 = or i64 %4732, %4734, !dbg !373
  %4736 = and i64 %4730, %4735, !dbg !373
  %4737 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !373
  %4738 = load i64, i64* %4737, align 8, !dbg !373
  %4739 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !373
  %4740 = load i64, i64* %4739, align 16, !dbg !373
  %4741 = and i64 %4738, %4740, !dbg !373
  %4742 = or i64 %4736, %4741, !dbg !373
  %4743 = add i64 %4728, %4742, !dbg !373
  store i64 %4743, i64* %6, align 8, !dbg !373
  %4744 = load i64, i64* %5, align 8, !dbg !373
  %4745 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !373
  %4746 = load i64, i64* %4745, align 8, !dbg !373
  %4747 = add i64 %4746, %4744, !dbg !373
  store i64 %4747, i64* %4745, align 8, !dbg !373
  %4748 = load i64, i64* %5, align 8, !dbg !373
  %4749 = load i64, i64* %6, align 8, !dbg !373
  %4750 = add i64 %4748, %4749, !dbg !373
  %4751 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !373
  store i64 %4750, i64* %4751, align 8, !dbg !373
  %4752 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !374
  %4753 = load i64, i64* %4752, align 16, !dbg !374
  %4754 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !374
  %4755 = load i64, i64* %4754, align 8, !dbg !374
  %4756 = lshr i64 %4755, 14, !dbg !374
  %4757 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !374
  %4758 = load i64, i64* %4757, align 8, !dbg !374
  %4759 = shl i64 %4758, 50, !dbg !374
  %4760 = or i64 %4756, %4759, !dbg !374
  %4761 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !374
  %4762 = load i64, i64* %4761, align 8, !dbg !374
  %4763 = lshr i64 %4762, 18, !dbg !374
  %4764 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !374
  %4765 = load i64, i64* %4764, align 8, !dbg !374
  %4766 = shl i64 %4765, 46, !dbg !374
  %4767 = or i64 %4763, %4766, !dbg !374
  %4768 = xor i64 %4760, %4767, !dbg !374
  %4769 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !374
  %4770 = load i64, i64* %4769, align 8, !dbg !374
  %4771 = lshr i64 %4770, 41, !dbg !374
  %4772 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !374
  %4773 = load i64, i64* %4772, align 8, !dbg !374
  %4774 = shl i64 %4773, 23, !dbg !374
  %4775 = or i64 %4771, %4774, !dbg !374
  %4776 = xor i64 %4768, %4775, !dbg !374
  %4777 = add i64 %4753, %4776, !dbg !374
  %4778 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !374
  %4779 = load i64, i64* %4778, align 8, !dbg !374
  %4780 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !374
  %4781 = load i64, i64* %4780, align 16, !dbg !374
  %4782 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !374
  %4783 = load i64, i64* %4782, align 8, !dbg !374
  %4784 = xor i64 %4781, %4783, !dbg !374
  %4785 = and i64 %4779, %4784, !dbg !374
  %4786 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !374
  %4787 = load i64, i64* %4786, align 8, !dbg !374
  %4788 = xor i64 %4785, %4787, !dbg !374
  %4789 = add i64 %4777, %4788, !dbg !374
  %4790 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 53, !dbg !374
  %4791 = load i64, i64* %4790, align 8, !dbg !374
  %4792 = add i64 %4789, %4791, !dbg !374
  %4793 = add i64 %4792, 5681478168544905931, !dbg !374
  store i64 %4793, i64* %5, align 8, !dbg !374
  %4794 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !374
  %4795 = load i64, i64* %4794, align 8, !dbg !374
  %4796 = lshr i64 %4795, 28, !dbg !374
  %4797 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !374
  %4798 = load i64, i64* %4797, align 8, !dbg !374
  %4799 = shl i64 %4798, 36, !dbg !374
  %4800 = or i64 %4796, %4799, !dbg !374
  %4801 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !374
  %4802 = load i64, i64* %4801, align 8, !dbg !374
  %4803 = lshr i64 %4802, 34, !dbg !374
  %4804 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !374
  %4805 = load i64, i64* %4804, align 8, !dbg !374
  %4806 = shl i64 %4805, 30, !dbg !374
  %4807 = or i64 %4803, %4806, !dbg !374
  %4808 = xor i64 %4800, %4807, !dbg !374
  %4809 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !374
  %4810 = load i64, i64* %4809, align 8, !dbg !374
  %4811 = lshr i64 %4810, 39, !dbg !374
  %4812 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !374
  %4813 = load i64, i64* %4812, align 8, !dbg !374
  %4814 = shl i64 %4813, 25, !dbg !374
  %4815 = or i64 %4811, %4814, !dbg !374
  %4816 = xor i64 %4808, %4815, !dbg !374
  %4817 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !374
  %4818 = load i64, i64* %4817, align 8, !dbg !374
  %4819 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !374
  %4820 = load i64, i64* %4819, align 16, !dbg !374
  %4821 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !374
  %4822 = load i64, i64* %4821, align 8, !dbg !374
  %4823 = or i64 %4820, %4822, !dbg !374
  %4824 = and i64 %4818, %4823, !dbg !374
  %4825 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !374
  %4826 = load i64, i64* %4825, align 16, !dbg !374
  %4827 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !374
  %4828 = load i64, i64* %4827, align 8, !dbg !374
  %4829 = and i64 %4826, %4828, !dbg !374
  %4830 = or i64 %4824, %4829, !dbg !374
  %4831 = add i64 %4816, %4830, !dbg !374
  store i64 %4831, i64* %6, align 8, !dbg !374
  %4832 = load i64, i64* %5, align 8, !dbg !374
  %4833 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !374
  %4834 = load i64, i64* %4833, align 16, !dbg !374
  %4835 = add i64 %4834, %4832, !dbg !374
  store i64 %4835, i64* %4833, align 16, !dbg !374
  %4836 = load i64, i64* %5, align 8, !dbg !374
  %4837 = load i64, i64* %6, align 8, !dbg !374
  %4838 = add i64 %4836, %4837, !dbg !374
  %4839 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !374
  store i64 %4838, i64* %4839, align 16, !dbg !374
  %4840 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !375
  %4841 = load i64, i64* %4840, align 8, !dbg !375
  %4842 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !375
  %4843 = load i64, i64* %4842, align 16, !dbg !375
  %4844 = lshr i64 %4843, 14, !dbg !375
  %4845 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !375
  %4846 = load i64, i64* %4845, align 16, !dbg !375
  %4847 = shl i64 %4846, 50, !dbg !375
  %4848 = or i64 %4844, %4847, !dbg !375
  %4849 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !375
  %4850 = load i64, i64* %4849, align 16, !dbg !375
  %4851 = lshr i64 %4850, 18, !dbg !375
  %4852 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !375
  %4853 = load i64, i64* %4852, align 16, !dbg !375
  %4854 = shl i64 %4853, 46, !dbg !375
  %4855 = or i64 %4851, %4854, !dbg !375
  %4856 = xor i64 %4848, %4855, !dbg !375
  %4857 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !375
  %4858 = load i64, i64* %4857, align 16, !dbg !375
  %4859 = lshr i64 %4858, 41, !dbg !375
  %4860 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !375
  %4861 = load i64, i64* %4860, align 16, !dbg !375
  %4862 = shl i64 %4861, 23, !dbg !375
  %4863 = or i64 %4859, %4862, !dbg !375
  %4864 = xor i64 %4856, %4863, !dbg !375
  %4865 = add i64 %4841, %4864, !dbg !375
  %4866 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !375
  %4867 = load i64, i64* %4866, align 16, !dbg !375
  %4868 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !375
  %4869 = load i64, i64* %4868, align 8, !dbg !375
  %4870 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !375
  %4871 = load i64, i64* %4870, align 16, !dbg !375
  %4872 = xor i64 %4869, %4871, !dbg !375
  %4873 = and i64 %4867, %4872, !dbg !375
  %4874 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !375
  %4875 = load i64, i64* %4874, align 16, !dbg !375
  %4876 = xor i64 %4873, %4875, !dbg !375
  %4877 = add i64 %4865, %4876, !dbg !375
  %4878 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 54, !dbg !375
  %4879 = load i64, i64* %4878, align 16, !dbg !375
  %4880 = add i64 %4877, %4879, !dbg !375
  %4881 = add i64 %4880, 6601373596472566643, !dbg !375
  store i64 %4881, i64* %5, align 8, !dbg !375
  %4882 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !375
  %4883 = load i64, i64* %4882, align 16, !dbg !375
  %4884 = lshr i64 %4883, 28, !dbg !375
  %4885 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !375
  %4886 = load i64, i64* %4885, align 16, !dbg !375
  %4887 = shl i64 %4886, 36, !dbg !375
  %4888 = or i64 %4884, %4887, !dbg !375
  %4889 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !375
  %4890 = load i64, i64* %4889, align 16, !dbg !375
  %4891 = lshr i64 %4890, 34, !dbg !375
  %4892 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !375
  %4893 = load i64, i64* %4892, align 16, !dbg !375
  %4894 = shl i64 %4893, 30, !dbg !375
  %4895 = or i64 %4891, %4894, !dbg !375
  %4896 = xor i64 %4888, %4895, !dbg !375
  %4897 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !375
  %4898 = load i64, i64* %4897, align 16, !dbg !375
  %4899 = lshr i64 %4898, 39, !dbg !375
  %4900 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !375
  %4901 = load i64, i64* %4900, align 16, !dbg !375
  %4902 = shl i64 %4901, 25, !dbg !375
  %4903 = or i64 %4899, %4902, !dbg !375
  %4904 = xor i64 %4896, %4903, !dbg !375
  %4905 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !375
  %4906 = load i64, i64* %4905, align 16, !dbg !375
  %4907 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !375
  %4908 = load i64, i64* %4907, align 8, !dbg !375
  %4909 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !375
  %4910 = load i64, i64* %4909, align 16, !dbg !375
  %4911 = or i64 %4908, %4910, !dbg !375
  %4912 = and i64 %4906, %4911, !dbg !375
  %4913 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !375
  %4914 = load i64, i64* %4913, align 8, !dbg !375
  %4915 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !375
  %4916 = load i64, i64* %4915, align 16, !dbg !375
  %4917 = and i64 %4914, %4916, !dbg !375
  %4918 = or i64 %4912, %4917, !dbg !375
  %4919 = add i64 %4904, %4918, !dbg !375
  store i64 %4919, i64* %6, align 8, !dbg !375
  %4920 = load i64, i64* %5, align 8, !dbg !375
  %4921 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !375
  %4922 = load i64, i64* %4921, align 8, !dbg !375
  %4923 = add i64 %4922, %4920, !dbg !375
  store i64 %4923, i64* %4921, align 8, !dbg !375
  %4924 = load i64, i64* %5, align 8, !dbg !375
  %4925 = load i64, i64* %6, align 8, !dbg !375
  %4926 = add i64 %4924, %4925, !dbg !375
  %4927 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !375
  store i64 %4926, i64* %4927, align 8, !dbg !375
  %4928 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !376
  %4929 = load i64, i64* %4928, align 16, !dbg !376
  %4930 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !376
  %4931 = load i64, i64* %4930, align 8, !dbg !376
  %4932 = lshr i64 %4931, 14, !dbg !376
  %4933 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !376
  %4934 = load i64, i64* %4933, align 8, !dbg !376
  %4935 = shl i64 %4934, 50, !dbg !376
  %4936 = or i64 %4932, %4935, !dbg !376
  %4937 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !376
  %4938 = load i64, i64* %4937, align 8, !dbg !376
  %4939 = lshr i64 %4938, 18, !dbg !376
  %4940 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !376
  %4941 = load i64, i64* %4940, align 8, !dbg !376
  %4942 = shl i64 %4941, 46, !dbg !376
  %4943 = or i64 %4939, %4942, !dbg !376
  %4944 = xor i64 %4936, %4943, !dbg !376
  %4945 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !376
  %4946 = load i64, i64* %4945, align 8, !dbg !376
  %4947 = lshr i64 %4946, 41, !dbg !376
  %4948 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !376
  %4949 = load i64, i64* %4948, align 8, !dbg !376
  %4950 = shl i64 %4949, 23, !dbg !376
  %4951 = or i64 %4947, %4950, !dbg !376
  %4952 = xor i64 %4944, %4951, !dbg !376
  %4953 = add i64 %4929, %4952, !dbg !376
  %4954 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !376
  %4955 = load i64, i64* %4954, align 8, !dbg !376
  %4956 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !376
  %4957 = load i64, i64* %4956, align 16, !dbg !376
  %4958 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !376
  %4959 = load i64, i64* %4958, align 8, !dbg !376
  %4960 = xor i64 %4957, %4959, !dbg !376
  %4961 = and i64 %4955, %4960, !dbg !376
  %4962 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !376
  %4963 = load i64, i64* %4962, align 8, !dbg !376
  %4964 = xor i64 %4961, %4963, !dbg !376
  %4965 = add i64 %4953, %4964, !dbg !376
  %4966 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 55, !dbg !376
  %4967 = load i64, i64* %4966, align 8, !dbg !376
  %4968 = add i64 %4965, %4967, !dbg !376
  %4969 = add i64 %4968, 7507060721942968483, !dbg !376
  store i64 %4969, i64* %5, align 8, !dbg !376
  %4970 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !376
  %4971 = load i64, i64* %4970, align 8, !dbg !376
  %4972 = lshr i64 %4971, 28, !dbg !376
  %4973 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !376
  %4974 = load i64, i64* %4973, align 8, !dbg !376
  %4975 = shl i64 %4974, 36, !dbg !376
  %4976 = or i64 %4972, %4975, !dbg !376
  %4977 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !376
  %4978 = load i64, i64* %4977, align 8, !dbg !376
  %4979 = lshr i64 %4978, 34, !dbg !376
  %4980 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !376
  %4981 = load i64, i64* %4980, align 8, !dbg !376
  %4982 = shl i64 %4981, 30, !dbg !376
  %4983 = or i64 %4979, %4982, !dbg !376
  %4984 = xor i64 %4976, %4983, !dbg !376
  %4985 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !376
  %4986 = load i64, i64* %4985, align 8, !dbg !376
  %4987 = lshr i64 %4986, 39, !dbg !376
  %4988 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !376
  %4989 = load i64, i64* %4988, align 8, !dbg !376
  %4990 = shl i64 %4989, 25, !dbg !376
  %4991 = or i64 %4987, %4990, !dbg !376
  %4992 = xor i64 %4984, %4991, !dbg !376
  %4993 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !376
  %4994 = load i64, i64* %4993, align 8, !dbg !376
  %4995 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !376
  %4996 = load i64, i64* %4995, align 16, !dbg !376
  %4997 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !376
  %4998 = load i64, i64* %4997, align 8, !dbg !376
  %4999 = or i64 %4996, %4998, !dbg !376
  %5000 = and i64 %4994, %4999, !dbg !376
  %5001 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !376
  %5002 = load i64, i64* %5001, align 16, !dbg !376
  %5003 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !376
  %5004 = load i64, i64* %5003, align 8, !dbg !376
  %5005 = and i64 %5002, %5004, !dbg !376
  %5006 = or i64 %5000, %5005, !dbg !376
  %5007 = add i64 %4992, %5006, !dbg !376
  store i64 %5007, i64* %6, align 8, !dbg !376
  %5008 = load i64, i64* %5, align 8, !dbg !376
  %5009 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !376
  %5010 = load i64, i64* %5009, align 16, !dbg !376
  %5011 = add i64 %5010, %5008, !dbg !376
  store i64 %5011, i64* %5009, align 16, !dbg !376
  %5012 = load i64, i64* %5, align 8, !dbg !376
  %5013 = load i64, i64* %6, align 8, !dbg !376
  %5014 = add i64 %5012, %5013, !dbg !376
  %5015 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !376
  store i64 %5014, i64* %5015, align 16, !dbg !376
  %5016 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !377
  %5017 = load i64, i64* %5016, align 8, !dbg !377
  %5018 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !377
  %5019 = load i64, i64* %5018, align 16, !dbg !377
  %5020 = lshr i64 %5019, 14, !dbg !377
  %5021 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !377
  %5022 = load i64, i64* %5021, align 16, !dbg !377
  %5023 = shl i64 %5022, 50, !dbg !377
  %5024 = or i64 %5020, %5023, !dbg !377
  %5025 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !377
  %5026 = load i64, i64* %5025, align 16, !dbg !377
  %5027 = lshr i64 %5026, 18, !dbg !377
  %5028 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !377
  %5029 = load i64, i64* %5028, align 16, !dbg !377
  %5030 = shl i64 %5029, 46, !dbg !377
  %5031 = or i64 %5027, %5030, !dbg !377
  %5032 = xor i64 %5024, %5031, !dbg !377
  %5033 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !377
  %5034 = load i64, i64* %5033, align 16, !dbg !377
  %5035 = lshr i64 %5034, 41, !dbg !377
  %5036 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !377
  %5037 = load i64, i64* %5036, align 16, !dbg !377
  %5038 = shl i64 %5037, 23, !dbg !377
  %5039 = or i64 %5035, %5038, !dbg !377
  %5040 = xor i64 %5032, %5039, !dbg !377
  %5041 = add i64 %5017, %5040, !dbg !377
  %5042 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !377
  %5043 = load i64, i64* %5042, align 16, !dbg !377
  %5044 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !377
  %5045 = load i64, i64* %5044, align 8, !dbg !377
  %5046 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !377
  %5047 = load i64, i64* %5046, align 16, !dbg !377
  %5048 = xor i64 %5045, %5047, !dbg !377
  %5049 = and i64 %5043, %5048, !dbg !377
  %5050 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !377
  %5051 = load i64, i64* %5050, align 16, !dbg !377
  %5052 = xor i64 %5049, %5051, !dbg !377
  %5053 = add i64 %5041, %5052, !dbg !377
  %5054 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 56, !dbg !377
  %5055 = load i64, i64* %5054, align 16, !dbg !377
  %5056 = add i64 %5053, %5055, !dbg !377
  %5057 = add i64 %5056, 8399075790359081724, !dbg !377
  store i64 %5057, i64* %5, align 8, !dbg !377
  %5058 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !377
  %5059 = load i64, i64* %5058, align 16, !dbg !377
  %5060 = lshr i64 %5059, 28, !dbg !377
  %5061 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !377
  %5062 = load i64, i64* %5061, align 16, !dbg !377
  %5063 = shl i64 %5062, 36, !dbg !377
  %5064 = or i64 %5060, %5063, !dbg !377
  %5065 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !377
  %5066 = load i64, i64* %5065, align 16, !dbg !377
  %5067 = lshr i64 %5066, 34, !dbg !377
  %5068 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !377
  %5069 = load i64, i64* %5068, align 16, !dbg !377
  %5070 = shl i64 %5069, 30, !dbg !377
  %5071 = or i64 %5067, %5070, !dbg !377
  %5072 = xor i64 %5064, %5071, !dbg !377
  %5073 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !377
  %5074 = load i64, i64* %5073, align 16, !dbg !377
  %5075 = lshr i64 %5074, 39, !dbg !377
  %5076 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !377
  %5077 = load i64, i64* %5076, align 16, !dbg !377
  %5078 = shl i64 %5077, 25, !dbg !377
  %5079 = or i64 %5075, %5078, !dbg !377
  %5080 = xor i64 %5072, %5079, !dbg !377
  %5081 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !377
  %5082 = load i64, i64* %5081, align 16, !dbg !377
  %5083 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !377
  %5084 = load i64, i64* %5083, align 8, !dbg !377
  %5085 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !377
  %5086 = load i64, i64* %5085, align 16, !dbg !377
  %5087 = or i64 %5084, %5086, !dbg !377
  %5088 = and i64 %5082, %5087, !dbg !377
  %5089 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !377
  %5090 = load i64, i64* %5089, align 8, !dbg !377
  %5091 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !377
  %5092 = load i64, i64* %5091, align 16, !dbg !377
  %5093 = and i64 %5090, %5092, !dbg !377
  %5094 = or i64 %5088, %5093, !dbg !377
  %5095 = add i64 %5080, %5094, !dbg !377
  store i64 %5095, i64* %6, align 8, !dbg !377
  %5096 = load i64, i64* %5, align 8, !dbg !377
  %5097 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !377
  %5098 = load i64, i64* %5097, align 8, !dbg !377
  %5099 = add i64 %5098, %5096, !dbg !377
  store i64 %5099, i64* %5097, align 8, !dbg !377
  %5100 = load i64, i64* %5, align 8, !dbg !377
  %5101 = load i64, i64* %6, align 8, !dbg !377
  %5102 = add i64 %5100, %5101, !dbg !377
  %5103 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !377
  store i64 %5102, i64* %5103, align 8, !dbg !377
  %5104 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !378
  %5105 = load i64, i64* %5104, align 16, !dbg !378
  %5106 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !378
  %5107 = load i64, i64* %5106, align 8, !dbg !378
  %5108 = lshr i64 %5107, 14, !dbg !378
  %5109 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !378
  %5110 = load i64, i64* %5109, align 8, !dbg !378
  %5111 = shl i64 %5110, 50, !dbg !378
  %5112 = or i64 %5108, %5111, !dbg !378
  %5113 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !378
  %5114 = load i64, i64* %5113, align 8, !dbg !378
  %5115 = lshr i64 %5114, 18, !dbg !378
  %5116 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !378
  %5117 = load i64, i64* %5116, align 8, !dbg !378
  %5118 = shl i64 %5117, 46, !dbg !378
  %5119 = or i64 %5115, %5118, !dbg !378
  %5120 = xor i64 %5112, %5119, !dbg !378
  %5121 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !378
  %5122 = load i64, i64* %5121, align 8, !dbg !378
  %5123 = lshr i64 %5122, 41, !dbg !378
  %5124 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !378
  %5125 = load i64, i64* %5124, align 8, !dbg !378
  %5126 = shl i64 %5125, 23, !dbg !378
  %5127 = or i64 %5123, %5126, !dbg !378
  %5128 = xor i64 %5120, %5127, !dbg !378
  %5129 = add i64 %5105, %5128, !dbg !378
  %5130 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !378
  %5131 = load i64, i64* %5130, align 8, !dbg !378
  %5132 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !378
  %5133 = load i64, i64* %5132, align 16, !dbg !378
  %5134 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !378
  %5135 = load i64, i64* %5134, align 8, !dbg !378
  %5136 = xor i64 %5133, %5135, !dbg !378
  %5137 = and i64 %5131, %5136, !dbg !378
  %5138 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !378
  %5139 = load i64, i64* %5138, align 8, !dbg !378
  %5140 = xor i64 %5137, %5139, !dbg !378
  %5141 = add i64 %5129, %5140, !dbg !378
  %5142 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 57, !dbg !378
  %5143 = load i64, i64* %5142, align 8, !dbg !378
  %5144 = add i64 %5141, %5143, !dbg !378
  %5145 = add i64 %5144, 8693463985226723168, !dbg !378
  store i64 %5145, i64* %5, align 8, !dbg !378
  %5146 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !378
  %5147 = load i64, i64* %5146, align 8, !dbg !378
  %5148 = lshr i64 %5147, 28, !dbg !378
  %5149 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !378
  %5150 = load i64, i64* %5149, align 8, !dbg !378
  %5151 = shl i64 %5150, 36, !dbg !378
  %5152 = or i64 %5148, %5151, !dbg !378
  %5153 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !378
  %5154 = load i64, i64* %5153, align 8, !dbg !378
  %5155 = lshr i64 %5154, 34, !dbg !378
  %5156 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !378
  %5157 = load i64, i64* %5156, align 8, !dbg !378
  %5158 = shl i64 %5157, 30, !dbg !378
  %5159 = or i64 %5155, %5158, !dbg !378
  %5160 = xor i64 %5152, %5159, !dbg !378
  %5161 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !378
  %5162 = load i64, i64* %5161, align 8, !dbg !378
  %5163 = lshr i64 %5162, 39, !dbg !378
  %5164 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !378
  %5165 = load i64, i64* %5164, align 8, !dbg !378
  %5166 = shl i64 %5165, 25, !dbg !378
  %5167 = or i64 %5163, %5166, !dbg !378
  %5168 = xor i64 %5160, %5167, !dbg !378
  %5169 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !378
  %5170 = load i64, i64* %5169, align 8, !dbg !378
  %5171 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !378
  %5172 = load i64, i64* %5171, align 16, !dbg !378
  %5173 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !378
  %5174 = load i64, i64* %5173, align 8, !dbg !378
  %5175 = or i64 %5172, %5174, !dbg !378
  %5176 = and i64 %5170, %5175, !dbg !378
  %5177 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !378
  %5178 = load i64, i64* %5177, align 16, !dbg !378
  %5179 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !378
  %5180 = load i64, i64* %5179, align 8, !dbg !378
  %5181 = and i64 %5178, %5180, !dbg !378
  %5182 = or i64 %5176, %5181, !dbg !378
  %5183 = add i64 %5168, %5182, !dbg !378
  store i64 %5183, i64* %6, align 8, !dbg !378
  %5184 = load i64, i64* %5, align 8, !dbg !378
  %5185 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !378
  %5186 = load i64, i64* %5185, align 16, !dbg !378
  %5187 = add i64 %5186, %5184, !dbg !378
  store i64 %5187, i64* %5185, align 16, !dbg !378
  %5188 = load i64, i64* %5, align 8, !dbg !378
  %5189 = load i64, i64* %6, align 8, !dbg !378
  %5190 = add i64 %5188, %5189, !dbg !378
  %5191 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !378
  store i64 %5190, i64* %5191, align 16, !dbg !378
  %5192 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !379
  %5193 = load i64, i64* %5192, align 8, !dbg !379
  %5194 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !379
  %5195 = load i64, i64* %5194, align 16, !dbg !379
  %5196 = lshr i64 %5195, 14, !dbg !379
  %5197 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !379
  %5198 = load i64, i64* %5197, align 16, !dbg !379
  %5199 = shl i64 %5198, 50, !dbg !379
  %5200 = or i64 %5196, %5199, !dbg !379
  %5201 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !379
  %5202 = load i64, i64* %5201, align 16, !dbg !379
  %5203 = lshr i64 %5202, 18, !dbg !379
  %5204 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !379
  %5205 = load i64, i64* %5204, align 16, !dbg !379
  %5206 = shl i64 %5205, 46, !dbg !379
  %5207 = or i64 %5203, %5206, !dbg !379
  %5208 = xor i64 %5200, %5207, !dbg !379
  %5209 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !379
  %5210 = load i64, i64* %5209, align 16, !dbg !379
  %5211 = lshr i64 %5210, 41, !dbg !379
  %5212 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !379
  %5213 = load i64, i64* %5212, align 16, !dbg !379
  %5214 = shl i64 %5213, 23, !dbg !379
  %5215 = or i64 %5211, %5214, !dbg !379
  %5216 = xor i64 %5208, %5215, !dbg !379
  %5217 = add i64 %5193, %5216, !dbg !379
  %5218 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !379
  %5219 = load i64, i64* %5218, align 16, !dbg !379
  %5220 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !379
  %5221 = load i64, i64* %5220, align 8, !dbg !379
  %5222 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !379
  %5223 = load i64, i64* %5222, align 16, !dbg !379
  %5224 = xor i64 %5221, %5223, !dbg !379
  %5225 = and i64 %5219, %5224, !dbg !379
  %5226 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !379
  %5227 = load i64, i64* %5226, align 16, !dbg !379
  %5228 = xor i64 %5225, %5227, !dbg !379
  %5229 = add i64 %5217, %5228, !dbg !379
  %5230 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 58, !dbg !379
  %5231 = load i64, i64* %5230, align 16, !dbg !379
  %5232 = add i64 %5229, %5231, !dbg !379
  %5233 = add i64 %5232, -8878714635349349518, !dbg !379
  store i64 %5233, i64* %5, align 8, !dbg !379
  %5234 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !379
  %5235 = load i64, i64* %5234, align 16, !dbg !379
  %5236 = lshr i64 %5235, 28, !dbg !379
  %5237 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !379
  %5238 = load i64, i64* %5237, align 16, !dbg !379
  %5239 = shl i64 %5238, 36, !dbg !379
  %5240 = or i64 %5236, %5239, !dbg !379
  %5241 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !379
  %5242 = load i64, i64* %5241, align 16, !dbg !379
  %5243 = lshr i64 %5242, 34, !dbg !379
  %5244 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !379
  %5245 = load i64, i64* %5244, align 16, !dbg !379
  %5246 = shl i64 %5245, 30, !dbg !379
  %5247 = or i64 %5243, %5246, !dbg !379
  %5248 = xor i64 %5240, %5247, !dbg !379
  %5249 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !379
  %5250 = load i64, i64* %5249, align 16, !dbg !379
  %5251 = lshr i64 %5250, 39, !dbg !379
  %5252 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !379
  %5253 = load i64, i64* %5252, align 16, !dbg !379
  %5254 = shl i64 %5253, 25, !dbg !379
  %5255 = or i64 %5251, %5254, !dbg !379
  %5256 = xor i64 %5248, %5255, !dbg !379
  %5257 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !379
  %5258 = load i64, i64* %5257, align 16, !dbg !379
  %5259 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !379
  %5260 = load i64, i64* %5259, align 8, !dbg !379
  %5261 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !379
  %5262 = load i64, i64* %5261, align 16, !dbg !379
  %5263 = or i64 %5260, %5262, !dbg !379
  %5264 = and i64 %5258, %5263, !dbg !379
  %5265 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !379
  %5266 = load i64, i64* %5265, align 8, !dbg !379
  %5267 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !379
  %5268 = load i64, i64* %5267, align 16, !dbg !379
  %5269 = and i64 %5266, %5268, !dbg !379
  %5270 = or i64 %5264, %5269, !dbg !379
  %5271 = add i64 %5256, %5270, !dbg !379
  store i64 %5271, i64* %6, align 8, !dbg !379
  %5272 = load i64, i64* %5, align 8, !dbg !379
  %5273 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !379
  %5274 = load i64, i64* %5273, align 8, !dbg !379
  %5275 = add i64 %5274, %5272, !dbg !379
  store i64 %5275, i64* %5273, align 8, !dbg !379
  %5276 = load i64, i64* %5, align 8, !dbg !379
  %5277 = load i64, i64* %6, align 8, !dbg !379
  %5278 = add i64 %5276, %5277, !dbg !379
  %5279 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !379
  store i64 %5278, i64* %5279, align 8, !dbg !379
  %5280 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !380
  %5281 = load i64, i64* %5280, align 16, !dbg !380
  %5282 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !380
  %5283 = load i64, i64* %5282, align 8, !dbg !380
  %5284 = lshr i64 %5283, 14, !dbg !380
  %5285 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !380
  %5286 = load i64, i64* %5285, align 8, !dbg !380
  %5287 = shl i64 %5286, 50, !dbg !380
  %5288 = or i64 %5284, %5287, !dbg !380
  %5289 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !380
  %5290 = load i64, i64* %5289, align 8, !dbg !380
  %5291 = lshr i64 %5290, 18, !dbg !380
  %5292 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !380
  %5293 = load i64, i64* %5292, align 8, !dbg !380
  %5294 = shl i64 %5293, 46, !dbg !380
  %5295 = or i64 %5291, %5294, !dbg !380
  %5296 = xor i64 %5288, %5295, !dbg !380
  %5297 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !380
  %5298 = load i64, i64* %5297, align 8, !dbg !380
  %5299 = lshr i64 %5298, 41, !dbg !380
  %5300 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !380
  %5301 = load i64, i64* %5300, align 8, !dbg !380
  %5302 = shl i64 %5301, 23, !dbg !380
  %5303 = or i64 %5299, %5302, !dbg !380
  %5304 = xor i64 %5296, %5303, !dbg !380
  %5305 = add i64 %5281, %5304, !dbg !380
  %5306 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !380
  %5307 = load i64, i64* %5306, align 8, !dbg !380
  %5308 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !380
  %5309 = load i64, i64* %5308, align 16, !dbg !380
  %5310 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !380
  %5311 = load i64, i64* %5310, align 8, !dbg !380
  %5312 = xor i64 %5309, %5311, !dbg !380
  %5313 = and i64 %5307, %5312, !dbg !380
  %5314 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !380
  %5315 = load i64, i64* %5314, align 8, !dbg !380
  %5316 = xor i64 %5313, %5315, !dbg !380
  %5317 = add i64 %5305, %5316, !dbg !380
  %5318 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 59, !dbg !380
  %5319 = load i64, i64* %5318, align 8, !dbg !380
  %5320 = add i64 %5317, %5319, !dbg !380
  %5321 = add i64 %5320, -8302665154208450068, !dbg !380
  store i64 %5321, i64* %5, align 8, !dbg !380
  %5322 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !380
  %5323 = load i64, i64* %5322, align 8, !dbg !380
  %5324 = lshr i64 %5323, 28, !dbg !380
  %5325 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !380
  %5326 = load i64, i64* %5325, align 8, !dbg !380
  %5327 = shl i64 %5326, 36, !dbg !380
  %5328 = or i64 %5324, %5327, !dbg !380
  %5329 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !380
  %5330 = load i64, i64* %5329, align 8, !dbg !380
  %5331 = lshr i64 %5330, 34, !dbg !380
  %5332 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !380
  %5333 = load i64, i64* %5332, align 8, !dbg !380
  %5334 = shl i64 %5333, 30, !dbg !380
  %5335 = or i64 %5331, %5334, !dbg !380
  %5336 = xor i64 %5328, %5335, !dbg !380
  %5337 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !380
  %5338 = load i64, i64* %5337, align 8, !dbg !380
  %5339 = lshr i64 %5338, 39, !dbg !380
  %5340 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !380
  %5341 = load i64, i64* %5340, align 8, !dbg !380
  %5342 = shl i64 %5341, 25, !dbg !380
  %5343 = or i64 %5339, %5342, !dbg !380
  %5344 = xor i64 %5336, %5343, !dbg !380
  %5345 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !380
  %5346 = load i64, i64* %5345, align 8, !dbg !380
  %5347 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !380
  %5348 = load i64, i64* %5347, align 16, !dbg !380
  %5349 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !380
  %5350 = load i64, i64* %5349, align 8, !dbg !380
  %5351 = or i64 %5348, %5350, !dbg !380
  %5352 = and i64 %5346, %5351, !dbg !380
  %5353 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !380
  %5354 = load i64, i64* %5353, align 16, !dbg !380
  %5355 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !380
  %5356 = load i64, i64* %5355, align 8, !dbg !380
  %5357 = and i64 %5354, %5356, !dbg !380
  %5358 = or i64 %5352, %5357, !dbg !380
  %5359 = add i64 %5344, %5358, !dbg !380
  store i64 %5359, i64* %6, align 8, !dbg !380
  %5360 = load i64, i64* %5, align 8, !dbg !380
  %5361 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !380
  %5362 = load i64, i64* %5361, align 16, !dbg !380
  %5363 = add i64 %5362, %5360, !dbg !380
  store i64 %5363, i64* %5361, align 16, !dbg !380
  %5364 = load i64, i64* %5, align 8, !dbg !380
  %5365 = load i64, i64* %6, align 8, !dbg !380
  %5366 = add i64 %5364, %5365, !dbg !380
  %5367 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !380
  store i64 %5366, i64* %5367, align 16, !dbg !380
  %5368 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !381
  %5369 = load i64, i64* %5368, align 8, !dbg !381
  %5370 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !381
  %5371 = load i64, i64* %5370, align 16, !dbg !381
  %5372 = lshr i64 %5371, 14, !dbg !381
  %5373 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !381
  %5374 = load i64, i64* %5373, align 16, !dbg !381
  %5375 = shl i64 %5374, 50, !dbg !381
  %5376 = or i64 %5372, %5375, !dbg !381
  %5377 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !381
  %5378 = load i64, i64* %5377, align 16, !dbg !381
  %5379 = lshr i64 %5378, 18, !dbg !381
  %5380 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !381
  %5381 = load i64, i64* %5380, align 16, !dbg !381
  %5382 = shl i64 %5381, 46, !dbg !381
  %5383 = or i64 %5379, %5382, !dbg !381
  %5384 = xor i64 %5376, %5383, !dbg !381
  %5385 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !381
  %5386 = load i64, i64* %5385, align 16, !dbg !381
  %5387 = lshr i64 %5386, 41, !dbg !381
  %5388 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !381
  %5389 = load i64, i64* %5388, align 16, !dbg !381
  %5390 = shl i64 %5389, 23, !dbg !381
  %5391 = or i64 %5387, %5390, !dbg !381
  %5392 = xor i64 %5384, %5391, !dbg !381
  %5393 = add i64 %5369, %5392, !dbg !381
  %5394 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !381
  %5395 = load i64, i64* %5394, align 16, !dbg !381
  %5396 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !381
  %5397 = load i64, i64* %5396, align 8, !dbg !381
  %5398 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !381
  %5399 = load i64, i64* %5398, align 16, !dbg !381
  %5400 = xor i64 %5397, %5399, !dbg !381
  %5401 = and i64 %5395, %5400, !dbg !381
  %5402 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !381
  %5403 = load i64, i64* %5402, align 16, !dbg !381
  %5404 = xor i64 %5401, %5403, !dbg !381
  %5405 = add i64 %5393, %5404, !dbg !381
  %5406 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 60, !dbg !381
  %5407 = load i64, i64* %5406, align 16, !dbg !381
  %5408 = add i64 %5405, %5407, !dbg !381
  %5409 = add i64 %5408, -8016688836872298968, !dbg !381
  store i64 %5409, i64* %5, align 8, !dbg !381
  %5410 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !381
  %5411 = load i64, i64* %5410, align 16, !dbg !381
  %5412 = lshr i64 %5411, 28, !dbg !381
  %5413 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !381
  %5414 = load i64, i64* %5413, align 16, !dbg !381
  %5415 = shl i64 %5414, 36, !dbg !381
  %5416 = or i64 %5412, %5415, !dbg !381
  %5417 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !381
  %5418 = load i64, i64* %5417, align 16, !dbg !381
  %5419 = lshr i64 %5418, 34, !dbg !381
  %5420 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !381
  %5421 = load i64, i64* %5420, align 16, !dbg !381
  %5422 = shl i64 %5421, 30, !dbg !381
  %5423 = or i64 %5419, %5422, !dbg !381
  %5424 = xor i64 %5416, %5423, !dbg !381
  %5425 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !381
  %5426 = load i64, i64* %5425, align 16, !dbg !381
  %5427 = lshr i64 %5426, 39, !dbg !381
  %5428 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !381
  %5429 = load i64, i64* %5428, align 16, !dbg !381
  %5430 = shl i64 %5429, 25, !dbg !381
  %5431 = or i64 %5427, %5430, !dbg !381
  %5432 = xor i64 %5424, %5431, !dbg !381
  %5433 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !381
  %5434 = load i64, i64* %5433, align 16, !dbg !381
  %5435 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !381
  %5436 = load i64, i64* %5435, align 8, !dbg !381
  %5437 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !381
  %5438 = load i64, i64* %5437, align 16, !dbg !381
  %5439 = or i64 %5436, %5438, !dbg !381
  %5440 = and i64 %5434, %5439, !dbg !381
  %5441 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !381
  %5442 = load i64, i64* %5441, align 8, !dbg !381
  %5443 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !381
  %5444 = load i64, i64* %5443, align 16, !dbg !381
  %5445 = and i64 %5442, %5444, !dbg !381
  %5446 = or i64 %5440, %5445, !dbg !381
  %5447 = add i64 %5432, %5446, !dbg !381
  store i64 %5447, i64* %6, align 8, !dbg !381
  %5448 = load i64, i64* %5, align 8, !dbg !381
  %5449 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !381
  %5450 = load i64, i64* %5449, align 8, !dbg !381
  %5451 = add i64 %5450, %5448, !dbg !381
  store i64 %5451, i64* %5449, align 8, !dbg !381
  %5452 = load i64, i64* %5, align 8, !dbg !381
  %5453 = load i64, i64* %6, align 8, !dbg !381
  %5454 = add i64 %5452, %5453, !dbg !381
  %5455 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !381
  store i64 %5454, i64* %5455, align 8, !dbg !381
  %5456 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !382
  %5457 = load i64, i64* %5456, align 16, !dbg !382
  %5458 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !382
  %5459 = load i64, i64* %5458, align 8, !dbg !382
  %5460 = lshr i64 %5459, 14, !dbg !382
  %5461 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !382
  %5462 = load i64, i64* %5461, align 8, !dbg !382
  %5463 = shl i64 %5462, 50, !dbg !382
  %5464 = or i64 %5460, %5463, !dbg !382
  %5465 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !382
  %5466 = load i64, i64* %5465, align 8, !dbg !382
  %5467 = lshr i64 %5466, 18, !dbg !382
  %5468 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !382
  %5469 = load i64, i64* %5468, align 8, !dbg !382
  %5470 = shl i64 %5469, 46, !dbg !382
  %5471 = or i64 %5467, %5470, !dbg !382
  %5472 = xor i64 %5464, %5471, !dbg !382
  %5473 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !382
  %5474 = load i64, i64* %5473, align 8, !dbg !382
  %5475 = lshr i64 %5474, 41, !dbg !382
  %5476 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !382
  %5477 = load i64, i64* %5476, align 8, !dbg !382
  %5478 = shl i64 %5477, 23, !dbg !382
  %5479 = or i64 %5475, %5478, !dbg !382
  %5480 = xor i64 %5472, %5479, !dbg !382
  %5481 = add i64 %5457, %5480, !dbg !382
  %5482 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !382
  %5483 = load i64, i64* %5482, align 8, !dbg !382
  %5484 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !382
  %5485 = load i64, i64* %5484, align 16, !dbg !382
  %5486 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !382
  %5487 = load i64, i64* %5486, align 8, !dbg !382
  %5488 = xor i64 %5485, %5487, !dbg !382
  %5489 = and i64 %5483, %5488, !dbg !382
  %5490 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !382
  %5491 = load i64, i64* %5490, align 8, !dbg !382
  %5492 = xor i64 %5489, %5491, !dbg !382
  %5493 = add i64 %5481, %5492, !dbg !382
  %5494 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 61, !dbg !382
  %5495 = load i64, i64* %5494, align 8, !dbg !382
  %5496 = add i64 %5493, %5495, !dbg !382
  %5497 = add i64 %5496, -6606660893046293015, !dbg !382
  store i64 %5497, i64* %5, align 8, !dbg !382
  %5498 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !382
  %5499 = load i64, i64* %5498, align 8, !dbg !382
  %5500 = lshr i64 %5499, 28, !dbg !382
  %5501 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !382
  %5502 = load i64, i64* %5501, align 8, !dbg !382
  %5503 = shl i64 %5502, 36, !dbg !382
  %5504 = or i64 %5500, %5503, !dbg !382
  %5505 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !382
  %5506 = load i64, i64* %5505, align 8, !dbg !382
  %5507 = lshr i64 %5506, 34, !dbg !382
  %5508 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !382
  %5509 = load i64, i64* %5508, align 8, !dbg !382
  %5510 = shl i64 %5509, 30, !dbg !382
  %5511 = or i64 %5507, %5510, !dbg !382
  %5512 = xor i64 %5504, %5511, !dbg !382
  %5513 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !382
  %5514 = load i64, i64* %5513, align 8, !dbg !382
  %5515 = lshr i64 %5514, 39, !dbg !382
  %5516 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !382
  %5517 = load i64, i64* %5516, align 8, !dbg !382
  %5518 = shl i64 %5517, 25, !dbg !382
  %5519 = or i64 %5515, %5518, !dbg !382
  %5520 = xor i64 %5512, %5519, !dbg !382
  %5521 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !382
  %5522 = load i64, i64* %5521, align 8, !dbg !382
  %5523 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !382
  %5524 = load i64, i64* %5523, align 16, !dbg !382
  %5525 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !382
  %5526 = load i64, i64* %5525, align 8, !dbg !382
  %5527 = or i64 %5524, %5526, !dbg !382
  %5528 = and i64 %5522, %5527, !dbg !382
  %5529 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !382
  %5530 = load i64, i64* %5529, align 16, !dbg !382
  %5531 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !382
  %5532 = load i64, i64* %5531, align 8, !dbg !382
  %5533 = and i64 %5530, %5532, !dbg !382
  %5534 = or i64 %5528, %5533, !dbg !382
  %5535 = add i64 %5520, %5534, !dbg !382
  store i64 %5535, i64* %6, align 8, !dbg !382
  %5536 = load i64, i64* %5, align 8, !dbg !382
  %5537 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !382
  %5538 = load i64, i64* %5537, align 16, !dbg !382
  %5539 = add i64 %5538, %5536, !dbg !382
  store i64 %5539, i64* %5537, align 16, !dbg !382
  %5540 = load i64, i64* %5, align 8, !dbg !382
  %5541 = load i64, i64* %6, align 8, !dbg !382
  %5542 = add i64 %5540, %5541, !dbg !382
  %5543 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !382
  store i64 %5542, i64* %5543, align 16, !dbg !382
  %5544 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !383
  %5545 = load i64, i64* %5544, align 8, !dbg !383
  %5546 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !383
  %5547 = load i64, i64* %5546, align 16, !dbg !383
  %5548 = lshr i64 %5547, 14, !dbg !383
  %5549 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !383
  %5550 = load i64, i64* %5549, align 16, !dbg !383
  %5551 = shl i64 %5550, 50, !dbg !383
  %5552 = or i64 %5548, %5551, !dbg !383
  %5553 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !383
  %5554 = load i64, i64* %5553, align 16, !dbg !383
  %5555 = lshr i64 %5554, 18, !dbg !383
  %5556 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !383
  %5557 = load i64, i64* %5556, align 16, !dbg !383
  %5558 = shl i64 %5557, 46, !dbg !383
  %5559 = or i64 %5555, %5558, !dbg !383
  %5560 = xor i64 %5552, %5559, !dbg !383
  %5561 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !383
  %5562 = load i64, i64* %5561, align 16, !dbg !383
  %5563 = lshr i64 %5562, 41, !dbg !383
  %5564 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !383
  %5565 = load i64, i64* %5564, align 16, !dbg !383
  %5566 = shl i64 %5565, 23, !dbg !383
  %5567 = or i64 %5563, %5566, !dbg !383
  %5568 = xor i64 %5560, %5567, !dbg !383
  %5569 = add i64 %5545, %5568, !dbg !383
  %5570 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !383
  %5571 = load i64, i64* %5570, align 16, !dbg !383
  %5572 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !383
  %5573 = load i64, i64* %5572, align 8, !dbg !383
  %5574 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !383
  %5575 = load i64, i64* %5574, align 16, !dbg !383
  %5576 = xor i64 %5573, %5575, !dbg !383
  %5577 = and i64 %5571, %5576, !dbg !383
  %5578 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !383
  %5579 = load i64, i64* %5578, align 16, !dbg !383
  %5580 = xor i64 %5577, %5579, !dbg !383
  %5581 = add i64 %5569, %5580, !dbg !383
  %5582 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 62, !dbg !383
  %5583 = load i64, i64* %5582, align 16, !dbg !383
  %5584 = add i64 %5581, %5583, !dbg !383
  %5585 = add i64 %5584, -4685533653050689259, !dbg !383
  store i64 %5585, i64* %5, align 8, !dbg !383
  %5586 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !383
  %5587 = load i64, i64* %5586, align 16, !dbg !383
  %5588 = lshr i64 %5587, 28, !dbg !383
  %5589 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !383
  %5590 = load i64, i64* %5589, align 16, !dbg !383
  %5591 = shl i64 %5590, 36, !dbg !383
  %5592 = or i64 %5588, %5591, !dbg !383
  %5593 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !383
  %5594 = load i64, i64* %5593, align 16, !dbg !383
  %5595 = lshr i64 %5594, 34, !dbg !383
  %5596 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !383
  %5597 = load i64, i64* %5596, align 16, !dbg !383
  %5598 = shl i64 %5597, 30, !dbg !383
  %5599 = or i64 %5595, %5598, !dbg !383
  %5600 = xor i64 %5592, %5599, !dbg !383
  %5601 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !383
  %5602 = load i64, i64* %5601, align 16, !dbg !383
  %5603 = lshr i64 %5602, 39, !dbg !383
  %5604 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !383
  %5605 = load i64, i64* %5604, align 16, !dbg !383
  %5606 = shl i64 %5605, 25, !dbg !383
  %5607 = or i64 %5603, %5606, !dbg !383
  %5608 = xor i64 %5600, %5607, !dbg !383
  %5609 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !383
  %5610 = load i64, i64* %5609, align 16, !dbg !383
  %5611 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !383
  %5612 = load i64, i64* %5611, align 8, !dbg !383
  %5613 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !383
  %5614 = load i64, i64* %5613, align 16, !dbg !383
  %5615 = or i64 %5612, %5614, !dbg !383
  %5616 = and i64 %5610, %5615, !dbg !383
  %5617 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !383
  %5618 = load i64, i64* %5617, align 8, !dbg !383
  %5619 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !383
  %5620 = load i64, i64* %5619, align 16, !dbg !383
  %5621 = and i64 %5618, %5620, !dbg !383
  %5622 = or i64 %5616, %5621, !dbg !383
  %5623 = add i64 %5608, %5622, !dbg !383
  store i64 %5623, i64* %6, align 8, !dbg !383
  %5624 = load i64, i64* %5, align 8, !dbg !383
  %5625 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !383
  %5626 = load i64, i64* %5625, align 8, !dbg !383
  %5627 = add i64 %5626, %5624, !dbg !383
  store i64 %5627, i64* %5625, align 8, !dbg !383
  %5628 = load i64, i64* %5, align 8, !dbg !383
  %5629 = load i64, i64* %6, align 8, !dbg !383
  %5630 = add i64 %5628, %5629, !dbg !383
  %5631 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !383
  store i64 %5630, i64* %5631, align 8, !dbg !383
  %5632 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !384
  %5633 = load i64, i64* %5632, align 16, !dbg !384
  %5634 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !384
  %5635 = load i64, i64* %5634, align 8, !dbg !384
  %5636 = lshr i64 %5635, 14, !dbg !384
  %5637 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !384
  %5638 = load i64, i64* %5637, align 8, !dbg !384
  %5639 = shl i64 %5638, 50, !dbg !384
  %5640 = or i64 %5636, %5639, !dbg !384
  %5641 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !384
  %5642 = load i64, i64* %5641, align 8, !dbg !384
  %5643 = lshr i64 %5642, 18, !dbg !384
  %5644 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !384
  %5645 = load i64, i64* %5644, align 8, !dbg !384
  %5646 = shl i64 %5645, 46, !dbg !384
  %5647 = or i64 %5643, %5646, !dbg !384
  %5648 = xor i64 %5640, %5647, !dbg !384
  %5649 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !384
  %5650 = load i64, i64* %5649, align 8, !dbg !384
  %5651 = lshr i64 %5650, 41, !dbg !384
  %5652 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !384
  %5653 = load i64, i64* %5652, align 8, !dbg !384
  %5654 = shl i64 %5653, 23, !dbg !384
  %5655 = or i64 %5651, %5654, !dbg !384
  %5656 = xor i64 %5648, %5655, !dbg !384
  %5657 = add i64 %5633, %5656, !dbg !384
  %5658 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !384
  %5659 = load i64, i64* %5658, align 8, !dbg !384
  %5660 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !384
  %5661 = load i64, i64* %5660, align 16, !dbg !384
  %5662 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !384
  %5663 = load i64, i64* %5662, align 8, !dbg !384
  %5664 = xor i64 %5661, %5663, !dbg !384
  %5665 = and i64 %5659, %5664, !dbg !384
  %5666 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !384
  %5667 = load i64, i64* %5666, align 8, !dbg !384
  %5668 = xor i64 %5665, %5667, !dbg !384
  %5669 = add i64 %5657, %5668, !dbg !384
  %5670 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 63, !dbg !384
  %5671 = load i64, i64* %5670, align 8, !dbg !384
  %5672 = add i64 %5669, %5671, !dbg !384
  %5673 = add i64 %5672, -4147400797238176981, !dbg !384
  store i64 %5673, i64* %5, align 8, !dbg !384
  %5674 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !384
  %5675 = load i64, i64* %5674, align 8, !dbg !384
  %5676 = lshr i64 %5675, 28, !dbg !384
  %5677 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !384
  %5678 = load i64, i64* %5677, align 8, !dbg !384
  %5679 = shl i64 %5678, 36, !dbg !384
  %5680 = or i64 %5676, %5679, !dbg !384
  %5681 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !384
  %5682 = load i64, i64* %5681, align 8, !dbg !384
  %5683 = lshr i64 %5682, 34, !dbg !384
  %5684 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !384
  %5685 = load i64, i64* %5684, align 8, !dbg !384
  %5686 = shl i64 %5685, 30, !dbg !384
  %5687 = or i64 %5683, %5686, !dbg !384
  %5688 = xor i64 %5680, %5687, !dbg !384
  %5689 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !384
  %5690 = load i64, i64* %5689, align 8, !dbg !384
  %5691 = lshr i64 %5690, 39, !dbg !384
  %5692 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !384
  %5693 = load i64, i64* %5692, align 8, !dbg !384
  %5694 = shl i64 %5693, 25, !dbg !384
  %5695 = or i64 %5691, %5694, !dbg !384
  %5696 = xor i64 %5688, %5695, !dbg !384
  %5697 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !384
  %5698 = load i64, i64* %5697, align 8, !dbg !384
  %5699 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !384
  %5700 = load i64, i64* %5699, align 16, !dbg !384
  %5701 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !384
  %5702 = load i64, i64* %5701, align 8, !dbg !384
  %5703 = or i64 %5700, %5702, !dbg !384
  %5704 = and i64 %5698, %5703, !dbg !384
  %5705 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !384
  %5706 = load i64, i64* %5705, align 16, !dbg !384
  %5707 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !384
  %5708 = load i64, i64* %5707, align 8, !dbg !384
  %5709 = and i64 %5706, %5708, !dbg !384
  %5710 = or i64 %5704, %5709, !dbg !384
  %5711 = add i64 %5696, %5710, !dbg !384
  store i64 %5711, i64* %6, align 8, !dbg !384
  %5712 = load i64, i64* %5, align 8, !dbg !384
  %5713 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !384
  %5714 = load i64, i64* %5713, align 16, !dbg !384
  %5715 = add i64 %5714, %5712, !dbg !384
  store i64 %5715, i64* %5713, align 16, !dbg !384
  %5716 = load i64, i64* %5, align 8, !dbg !384
  %5717 = load i64, i64* %6, align 8, !dbg !384
  %5718 = add i64 %5716, %5717, !dbg !384
  %5719 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !384
  store i64 %5718, i64* %5719, align 16, !dbg !384
  %5720 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !385
  %5721 = load i64, i64* %5720, align 8, !dbg !385
  %5722 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !385
  %5723 = load i64, i64* %5722, align 16, !dbg !385
  %5724 = lshr i64 %5723, 14, !dbg !385
  %5725 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !385
  %5726 = load i64, i64* %5725, align 16, !dbg !385
  %5727 = shl i64 %5726, 50, !dbg !385
  %5728 = or i64 %5724, %5727, !dbg !385
  %5729 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !385
  %5730 = load i64, i64* %5729, align 16, !dbg !385
  %5731 = lshr i64 %5730, 18, !dbg !385
  %5732 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !385
  %5733 = load i64, i64* %5732, align 16, !dbg !385
  %5734 = shl i64 %5733, 46, !dbg !385
  %5735 = or i64 %5731, %5734, !dbg !385
  %5736 = xor i64 %5728, %5735, !dbg !385
  %5737 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !385
  %5738 = load i64, i64* %5737, align 16, !dbg !385
  %5739 = lshr i64 %5738, 41, !dbg !385
  %5740 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !385
  %5741 = load i64, i64* %5740, align 16, !dbg !385
  %5742 = shl i64 %5741, 23, !dbg !385
  %5743 = or i64 %5739, %5742, !dbg !385
  %5744 = xor i64 %5736, %5743, !dbg !385
  %5745 = add i64 %5721, %5744, !dbg !385
  %5746 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !385
  %5747 = load i64, i64* %5746, align 16, !dbg !385
  %5748 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !385
  %5749 = load i64, i64* %5748, align 8, !dbg !385
  %5750 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !385
  %5751 = load i64, i64* %5750, align 16, !dbg !385
  %5752 = xor i64 %5749, %5751, !dbg !385
  %5753 = and i64 %5747, %5752, !dbg !385
  %5754 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !385
  %5755 = load i64, i64* %5754, align 16, !dbg !385
  %5756 = xor i64 %5753, %5755, !dbg !385
  %5757 = add i64 %5745, %5756, !dbg !385
  %5758 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 64, !dbg !385
  %5759 = load i64, i64* %5758, align 16, !dbg !385
  %5760 = add i64 %5757, %5759, !dbg !385
  %5761 = add i64 %5760, -3880063495543823972, !dbg !385
  store i64 %5761, i64* %5, align 8, !dbg !385
  %5762 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !385
  %5763 = load i64, i64* %5762, align 16, !dbg !385
  %5764 = lshr i64 %5763, 28, !dbg !385
  %5765 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !385
  %5766 = load i64, i64* %5765, align 16, !dbg !385
  %5767 = shl i64 %5766, 36, !dbg !385
  %5768 = or i64 %5764, %5767, !dbg !385
  %5769 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !385
  %5770 = load i64, i64* %5769, align 16, !dbg !385
  %5771 = lshr i64 %5770, 34, !dbg !385
  %5772 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !385
  %5773 = load i64, i64* %5772, align 16, !dbg !385
  %5774 = shl i64 %5773, 30, !dbg !385
  %5775 = or i64 %5771, %5774, !dbg !385
  %5776 = xor i64 %5768, %5775, !dbg !385
  %5777 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !385
  %5778 = load i64, i64* %5777, align 16, !dbg !385
  %5779 = lshr i64 %5778, 39, !dbg !385
  %5780 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !385
  %5781 = load i64, i64* %5780, align 16, !dbg !385
  %5782 = shl i64 %5781, 25, !dbg !385
  %5783 = or i64 %5779, %5782, !dbg !385
  %5784 = xor i64 %5776, %5783, !dbg !385
  %5785 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !385
  %5786 = load i64, i64* %5785, align 16, !dbg !385
  %5787 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !385
  %5788 = load i64, i64* %5787, align 8, !dbg !385
  %5789 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !385
  %5790 = load i64, i64* %5789, align 16, !dbg !385
  %5791 = or i64 %5788, %5790, !dbg !385
  %5792 = and i64 %5786, %5791, !dbg !385
  %5793 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !385
  %5794 = load i64, i64* %5793, align 8, !dbg !385
  %5795 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !385
  %5796 = load i64, i64* %5795, align 16, !dbg !385
  %5797 = and i64 %5794, %5796, !dbg !385
  %5798 = or i64 %5792, %5797, !dbg !385
  %5799 = add i64 %5784, %5798, !dbg !385
  store i64 %5799, i64* %6, align 8, !dbg !385
  %5800 = load i64, i64* %5, align 8, !dbg !385
  %5801 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !385
  %5802 = load i64, i64* %5801, align 8, !dbg !385
  %5803 = add i64 %5802, %5800, !dbg !385
  store i64 %5803, i64* %5801, align 8, !dbg !385
  %5804 = load i64, i64* %5, align 8, !dbg !385
  %5805 = load i64, i64* %6, align 8, !dbg !385
  %5806 = add i64 %5804, %5805, !dbg !385
  %5807 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !385
  store i64 %5806, i64* %5807, align 8, !dbg !385
  %5808 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !386
  %5809 = load i64, i64* %5808, align 16, !dbg !386
  %5810 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !386
  %5811 = load i64, i64* %5810, align 8, !dbg !386
  %5812 = lshr i64 %5811, 14, !dbg !386
  %5813 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !386
  %5814 = load i64, i64* %5813, align 8, !dbg !386
  %5815 = shl i64 %5814, 50, !dbg !386
  %5816 = or i64 %5812, %5815, !dbg !386
  %5817 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !386
  %5818 = load i64, i64* %5817, align 8, !dbg !386
  %5819 = lshr i64 %5818, 18, !dbg !386
  %5820 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !386
  %5821 = load i64, i64* %5820, align 8, !dbg !386
  %5822 = shl i64 %5821, 46, !dbg !386
  %5823 = or i64 %5819, %5822, !dbg !386
  %5824 = xor i64 %5816, %5823, !dbg !386
  %5825 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !386
  %5826 = load i64, i64* %5825, align 8, !dbg !386
  %5827 = lshr i64 %5826, 41, !dbg !386
  %5828 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !386
  %5829 = load i64, i64* %5828, align 8, !dbg !386
  %5830 = shl i64 %5829, 23, !dbg !386
  %5831 = or i64 %5827, %5830, !dbg !386
  %5832 = xor i64 %5824, %5831, !dbg !386
  %5833 = add i64 %5809, %5832, !dbg !386
  %5834 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !386
  %5835 = load i64, i64* %5834, align 8, !dbg !386
  %5836 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !386
  %5837 = load i64, i64* %5836, align 16, !dbg !386
  %5838 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !386
  %5839 = load i64, i64* %5838, align 8, !dbg !386
  %5840 = xor i64 %5837, %5839, !dbg !386
  %5841 = and i64 %5835, %5840, !dbg !386
  %5842 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !386
  %5843 = load i64, i64* %5842, align 8, !dbg !386
  %5844 = xor i64 %5841, %5843, !dbg !386
  %5845 = add i64 %5833, %5844, !dbg !386
  %5846 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 65, !dbg !386
  %5847 = load i64, i64* %5846, align 8, !dbg !386
  %5848 = add i64 %5845, %5847, !dbg !386
  %5849 = add i64 %5848, -3348786107499101689, !dbg !386
  store i64 %5849, i64* %5, align 8, !dbg !386
  %5850 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !386
  %5851 = load i64, i64* %5850, align 8, !dbg !386
  %5852 = lshr i64 %5851, 28, !dbg !386
  %5853 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !386
  %5854 = load i64, i64* %5853, align 8, !dbg !386
  %5855 = shl i64 %5854, 36, !dbg !386
  %5856 = or i64 %5852, %5855, !dbg !386
  %5857 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !386
  %5858 = load i64, i64* %5857, align 8, !dbg !386
  %5859 = lshr i64 %5858, 34, !dbg !386
  %5860 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !386
  %5861 = load i64, i64* %5860, align 8, !dbg !386
  %5862 = shl i64 %5861, 30, !dbg !386
  %5863 = or i64 %5859, %5862, !dbg !386
  %5864 = xor i64 %5856, %5863, !dbg !386
  %5865 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !386
  %5866 = load i64, i64* %5865, align 8, !dbg !386
  %5867 = lshr i64 %5866, 39, !dbg !386
  %5868 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !386
  %5869 = load i64, i64* %5868, align 8, !dbg !386
  %5870 = shl i64 %5869, 25, !dbg !386
  %5871 = or i64 %5867, %5870, !dbg !386
  %5872 = xor i64 %5864, %5871, !dbg !386
  %5873 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !386
  %5874 = load i64, i64* %5873, align 8, !dbg !386
  %5875 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !386
  %5876 = load i64, i64* %5875, align 16, !dbg !386
  %5877 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !386
  %5878 = load i64, i64* %5877, align 8, !dbg !386
  %5879 = or i64 %5876, %5878, !dbg !386
  %5880 = and i64 %5874, %5879, !dbg !386
  %5881 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !386
  %5882 = load i64, i64* %5881, align 16, !dbg !386
  %5883 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !386
  %5884 = load i64, i64* %5883, align 8, !dbg !386
  %5885 = and i64 %5882, %5884, !dbg !386
  %5886 = or i64 %5880, %5885, !dbg !386
  %5887 = add i64 %5872, %5886, !dbg !386
  store i64 %5887, i64* %6, align 8, !dbg !386
  %5888 = load i64, i64* %5, align 8, !dbg !386
  %5889 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !386
  %5890 = load i64, i64* %5889, align 16, !dbg !386
  %5891 = add i64 %5890, %5888, !dbg !386
  store i64 %5891, i64* %5889, align 16, !dbg !386
  %5892 = load i64, i64* %5, align 8, !dbg !386
  %5893 = load i64, i64* %6, align 8, !dbg !386
  %5894 = add i64 %5892, %5893, !dbg !386
  %5895 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !386
  store i64 %5894, i64* %5895, align 16, !dbg !386
  %5896 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !387
  %5897 = load i64, i64* %5896, align 8, !dbg !387
  %5898 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !387
  %5899 = load i64, i64* %5898, align 16, !dbg !387
  %5900 = lshr i64 %5899, 14, !dbg !387
  %5901 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !387
  %5902 = load i64, i64* %5901, align 16, !dbg !387
  %5903 = shl i64 %5902, 50, !dbg !387
  %5904 = or i64 %5900, %5903, !dbg !387
  %5905 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !387
  %5906 = load i64, i64* %5905, align 16, !dbg !387
  %5907 = lshr i64 %5906, 18, !dbg !387
  %5908 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !387
  %5909 = load i64, i64* %5908, align 16, !dbg !387
  %5910 = shl i64 %5909, 46, !dbg !387
  %5911 = or i64 %5907, %5910, !dbg !387
  %5912 = xor i64 %5904, %5911, !dbg !387
  %5913 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !387
  %5914 = load i64, i64* %5913, align 16, !dbg !387
  %5915 = lshr i64 %5914, 41, !dbg !387
  %5916 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !387
  %5917 = load i64, i64* %5916, align 16, !dbg !387
  %5918 = shl i64 %5917, 23, !dbg !387
  %5919 = or i64 %5915, %5918, !dbg !387
  %5920 = xor i64 %5912, %5919, !dbg !387
  %5921 = add i64 %5897, %5920, !dbg !387
  %5922 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !387
  %5923 = load i64, i64* %5922, align 16, !dbg !387
  %5924 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !387
  %5925 = load i64, i64* %5924, align 8, !dbg !387
  %5926 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !387
  %5927 = load i64, i64* %5926, align 16, !dbg !387
  %5928 = xor i64 %5925, %5927, !dbg !387
  %5929 = and i64 %5923, %5928, !dbg !387
  %5930 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !387
  %5931 = load i64, i64* %5930, align 16, !dbg !387
  %5932 = xor i64 %5929, %5931, !dbg !387
  %5933 = add i64 %5921, %5932, !dbg !387
  %5934 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 66, !dbg !387
  %5935 = load i64, i64* %5934, align 16, !dbg !387
  %5936 = add i64 %5933, %5935, !dbg !387
  %5937 = add i64 %5936, -1523767162380948706, !dbg !387
  store i64 %5937, i64* %5, align 8, !dbg !387
  %5938 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !387
  %5939 = load i64, i64* %5938, align 16, !dbg !387
  %5940 = lshr i64 %5939, 28, !dbg !387
  %5941 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !387
  %5942 = load i64, i64* %5941, align 16, !dbg !387
  %5943 = shl i64 %5942, 36, !dbg !387
  %5944 = or i64 %5940, %5943, !dbg !387
  %5945 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !387
  %5946 = load i64, i64* %5945, align 16, !dbg !387
  %5947 = lshr i64 %5946, 34, !dbg !387
  %5948 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !387
  %5949 = load i64, i64* %5948, align 16, !dbg !387
  %5950 = shl i64 %5949, 30, !dbg !387
  %5951 = or i64 %5947, %5950, !dbg !387
  %5952 = xor i64 %5944, %5951, !dbg !387
  %5953 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !387
  %5954 = load i64, i64* %5953, align 16, !dbg !387
  %5955 = lshr i64 %5954, 39, !dbg !387
  %5956 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !387
  %5957 = load i64, i64* %5956, align 16, !dbg !387
  %5958 = shl i64 %5957, 25, !dbg !387
  %5959 = or i64 %5955, %5958, !dbg !387
  %5960 = xor i64 %5952, %5959, !dbg !387
  %5961 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !387
  %5962 = load i64, i64* %5961, align 16, !dbg !387
  %5963 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !387
  %5964 = load i64, i64* %5963, align 8, !dbg !387
  %5965 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !387
  %5966 = load i64, i64* %5965, align 16, !dbg !387
  %5967 = or i64 %5964, %5966, !dbg !387
  %5968 = and i64 %5962, %5967, !dbg !387
  %5969 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !387
  %5970 = load i64, i64* %5969, align 8, !dbg !387
  %5971 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !387
  %5972 = load i64, i64* %5971, align 16, !dbg !387
  %5973 = and i64 %5970, %5972, !dbg !387
  %5974 = or i64 %5968, %5973, !dbg !387
  %5975 = add i64 %5960, %5974, !dbg !387
  store i64 %5975, i64* %6, align 8, !dbg !387
  %5976 = load i64, i64* %5, align 8, !dbg !387
  %5977 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !387
  %5978 = load i64, i64* %5977, align 8, !dbg !387
  %5979 = add i64 %5978, %5976, !dbg !387
  store i64 %5979, i64* %5977, align 8, !dbg !387
  %5980 = load i64, i64* %5, align 8, !dbg !387
  %5981 = load i64, i64* %6, align 8, !dbg !387
  %5982 = add i64 %5980, %5981, !dbg !387
  %5983 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !387
  store i64 %5982, i64* %5983, align 8, !dbg !387
  %5984 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !388
  %5985 = load i64, i64* %5984, align 16, !dbg !388
  %5986 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !388
  %5987 = load i64, i64* %5986, align 8, !dbg !388
  %5988 = lshr i64 %5987, 14, !dbg !388
  %5989 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !388
  %5990 = load i64, i64* %5989, align 8, !dbg !388
  %5991 = shl i64 %5990, 50, !dbg !388
  %5992 = or i64 %5988, %5991, !dbg !388
  %5993 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !388
  %5994 = load i64, i64* %5993, align 8, !dbg !388
  %5995 = lshr i64 %5994, 18, !dbg !388
  %5996 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !388
  %5997 = load i64, i64* %5996, align 8, !dbg !388
  %5998 = shl i64 %5997, 46, !dbg !388
  %5999 = or i64 %5995, %5998, !dbg !388
  %6000 = xor i64 %5992, %5999, !dbg !388
  %6001 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !388
  %6002 = load i64, i64* %6001, align 8, !dbg !388
  %6003 = lshr i64 %6002, 41, !dbg !388
  %6004 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !388
  %6005 = load i64, i64* %6004, align 8, !dbg !388
  %6006 = shl i64 %6005, 23, !dbg !388
  %6007 = or i64 %6003, %6006, !dbg !388
  %6008 = xor i64 %6000, %6007, !dbg !388
  %6009 = add i64 %5985, %6008, !dbg !388
  %6010 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !388
  %6011 = load i64, i64* %6010, align 8, !dbg !388
  %6012 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !388
  %6013 = load i64, i64* %6012, align 16, !dbg !388
  %6014 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !388
  %6015 = load i64, i64* %6014, align 8, !dbg !388
  %6016 = xor i64 %6013, %6015, !dbg !388
  %6017 = and i64 %6011, %6016, !dbg !388
  %6018 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !388
  %6019 = load i64, i64* %6018, align 8, !dbg !388
  %6020 = xor i64 %6017, %6019, !dbg !388
  %6021 = add i64 %6009, %6020, !dbg !388
  %6022 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 67, !dbg !388
  %6023 = load i64, i64* %6022, align 8, !dbg !388
  %6024 = add i64 %6021, %6023, !dbg !388
  %6025 = add i64 %6024, -757361751448694408, !dbg !388
  store i64 %6025, i64* %5, align 8, !dbg !388
  %6026 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !388
  %6027 = load i64, i64* %6026, align 8, !dbg !388
  %6028 = lshr i64 %6027, 28, !dbg !388
  %6029 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !388
  %6030 = load i64, i64* %6029, align 8, !dbg !388
  %6031 = shl i64 %6030, 36, !dbg !388
  %6032 = or i64 %6028, %6031, !dbg !388
  %6033 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !388
  %6034 = load i64, i64* %6033, align 8, !dbg !388
  %6035 = lshr i64 %6034, 34, !dbg !388
  %6036 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !388
  %6037 = load i64, i64* %6036, align 8, !dbg !388
  %6038 = shl i64 %6037, 30, !dbg !388
  %6039 = or i64 %6035, %6038, !dbg !388
  %6040 = xor i64 %6032, %6039, !dbg !388
  %6041 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !388
  %6042 = load i64, i64* %6041, align 8, !dbg !388
  %6043 = lshr i64 %6042, 39, !dbg !388
  %6044 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !388
  %6045 = load i64, i64* %6044, align 8, !dbg !388
  %6046 = shl i64 %6045, 25, !dbg !388
  %6047 = or i64 %6043, %6046, !dbg !388
  %6048 = xor i64 %6040, %6047, !dbg !388
  %6049 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !388
  %6050 = load i64, i64* %6049, align 8, !dbg !388
  %6051 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !388
  %6052 = load i64, i64* %6051, align 16, !dbg !388
  %6053 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !388
  %6054 = load i64, i64* %6053, align 8, !dbg !388
  %6055 = or i64 %6052, %6054, !dbg !388
  %6056 = and i64 %6050, %6055, !dbg !388
  %6057 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !388
  %6058 = load i64, i64* %6057, align 16, !dbg !388
  %6059 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !388
  %6060 = load i64, i64* %6059, align 8, !dbg !388
  %6061 = and i64 %6058, %6060, !dbg !388
  %6062 = or i64 %6056, %6061, !dbg !388
  %6063 = add i64 %6048, %6062, !dbg !388
  store i64 %6063, i64* %6, align 8, !dbg !388
  %6064 = load i64, i64* %5, align 8, !dbg !388
  %6065 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !388
  %6066 = load i64, i64* %6065, align 16, !dbg !388
  %6067 = add i64 %6066, %6064, !dbg !388
  store i64 %6067, i64* %6065, align 16, !dbg !388
  %6068 = load i64, i64* %5, align 8, !dbg !388
  %6069 = load i64, i64* %6, align 8, !dbg !388
  %6070 = add i64 %6068, %6069, !dbg !388
  %6071 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !388
  store i64 %6070, i64* %6071, align 16, !dbg !388
  %6072 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !389
  %6073 = load i64, i64* %6072, align 8, !dbg !389
  %6074 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !389
  %6075 = load i64, i64* %6074, align 16, !dbg !389
  %6076 = lshr i64 %6075, 14, !dbg !389
  %6077 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !389
  %6078 = load i64, i64* %6077, align 16, !dbg !389
  %6079 = shl i64 %6078, 50, !dbg !389
  %6080 = or i64 %6076, %6079, !dbg !389
  %6081 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !389
  %6082 = load i64, i64* %6081, align 16, !dbg !389
  %6083 = lshr i64 %6082, 18, !dbg !389
  %6084 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !389
  %6085 = load i64, i64* %6084, align 16, !dbg !389
  %6086 = shl i64 %6085, 46, !dbg !389
  %6087 = or i64 %6083, %6086, !dbg !389
  %6088 = xor i64 %6080, %6087, !dbg !389
  %6089 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !389
  %6090 = load i64, i64* %6089, align 16, !dbg !389
  %6091 = lshr i64 %6090, 41, !dbg !389
  %6092 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !389
  %6093 = load i64, i64* %6092, align 16, !dbg !389
  %6094 = shl i64 %6093, 23, !dbg !389
  %6095 = or i64 %6091, %6094, !dbg !389
  %6096 = xor i64 %6088, %6095, !dbg !389
  %6097 = add i64 %6073, %6096, !dbg !389
  %6098 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !389
  %6099 = load i64, i64* %6098, align 16, !dbg !389
  %6100 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !389
  %6101 = load i64, i64* %6100, align 8, !dbg !389
  %6102 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !389
  %6103 = load i64, i64* %6102, align 16, !dbg !389
  %6104 = xor i64 %6101, %6103, !dbg !389
  %6105 = and i64 %6099, %6104, !dbg !389
  %6106 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !389
  %6107 = load i64, i64* %6106, align 16, !dbg !389
  %6108 = xor i64 %6105, %6107, !dbg !389
  %6109 = add i64 %6097, %6108, !dbg !389
  %6110 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 68, !dbg !389
  %6111 = load i64, i64* %6110, align 16, !dbg !389
  %6112 = add i64 %6109, %6111, !dbg !389
  %6113 = add i64 %6112, 500013540394364858, !dbg !389
  store i64 %6113, i64* %5, align 8, !dbg !389
  %6114 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !389
  %6115 = load i64, i64* %6114, align 16, !dbg !389
  %6116 = lshr i64 %6115, 28, !dbg !389
  %6117 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !389
  %6118 = load i64, i64* %6117, align 16, !dbg !389
  %6119 = shl i64 %6118, 36, !dbg !389
  %6120 = or i64 %6116, %6119, !dbg !389
  %6121 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !389
  %6122 = load i64, i64* %6121, align 16, !dbg !389
  %6123 = lshr i64 %6122, 34, !dbg !389
  %6124 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !389
  %6125 = load i64, i64* %6124, align 16, !dbg !389
  %6126 = shl i64 %6125, 30, !dbg !389
  %6127 = or i64 %6123, %6126, !dbg !389
  %6128 = xor i64 %6120, %6127, !dbg !389
  %6129 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !389
  %6130 = load i64, i64* %6129, align 16, !dbg !389
  %6131 = lshr i64 %6130, 39, !dbg !389
  %6132 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !389
  %6133 = load i64, i64* %6132, align 16, !dbg !389
  %6134 = shl i64 %6133, 25, !dbg !389
  %6135 = or i64 %6131, %6134, !dbg !389
  %6136 = xor i64 %6128, %6135, !dbg !389
  %6137 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !389
  %6138 = load i64, i64* %6137, align 16, !dbg !389
  %6139 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !389
  %6140 = load i64, i64* %6139, align 8, !dbg !389
  %6141 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !389
  %6142 = load i64, i64* %6141, align 16, !dbg !389
  %6143 = or i64 %6140, %6142, !dbg !389
  %6144 = and i64 %6138, %6143, !dbg !389
  %6145 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !389
  %6146 = load i64, i64* %6145, align 8, !dbg !389
  %6147 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !389
  %6148 = load i64, i64* %6147, align 16, !dbg !389
  %6149 = and i64 %6146, %6148, !dbg !389
  %6150 = or i64 %6144, %6149, !dbg !389
  %6151 = add i64 %6136, %6150, !dbg !389
  store i64 %6151, i64* %6, align 8, !dbg !389
  %6152 = load i64, i64* %5, align 8, !dbg !389
  %6153 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !389
  %6154 = load i64, i64* %6153, align 8, !dbg !389
  %6155 = add i64 %6154, %6152, !dbg !389
  store i64 %6155, i64* %6153, align 8, !dbg !389
  %6156 = load i64, i64* %5, align 8, !dbg !389
  %6157 = load i64, i64* %6, align 8, !dbg !389
  %6158 = add i64 %6156, %6157, !dbg !389
  %6159 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !389
  store i64 %6158, i64* %6159, align 8, !dbg !389
  %6160 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !390
  %6161 = load i64, i64* %6160, align 16, !dbg !390
  %6162 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !390
  %6163 = load i64, i64* %6162, align 8, !dbg !390
  %6164 = lshr i64 %6163, 14, !dbg !390
  %6165 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !390
  %6166 = load i64, i64* %6165, align 8, !dbg !390
  %6167 = shl i64 %6166, 50, !dbg !390
  %6168 = or i64 %6164, %6167, !dbg !390
  %6169 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !390
  %6170 = load i64, i64* %6169, align 8, !dbg !390
  %6171 = lshr i64 %6170, 18, !dbg !390
  %6172 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !390
  %6173 = load i64, i64* %6172, align 8, !dbg !390
  %6174 = shl i64 %6173, 46, !dbg !390
  %6175 = or i64 %6171, %6174, !dbg !390
  %6176 = xor i64 %6168, %6175, !dbg !390
  %6177 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !390
  %6178 = load i64, i64* %6177, align 8, !dbg !390
  %6179 = lshr i64 %6178, 41, !dbg !390
  %6180 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !390
  %6181 = load i64, i64* %6180, align 8, !dbg !390
  %6182 = shl i64 %6181, 23, !dbg !390
  %6183 = or i64 %6179, %6182, !dbg !390
  %6184 = xor i64 %6176, %6183, !dbg !390
  %6185 = add i64 %6161, %6184, !dbg !390
  %6186 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !390
  %6187 = load i64, i64* %6186, align 8, !dbg !390
  %6188 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !390
  %6189 = load i64, i64* %6188, align 16, !dbg !390
  %6190 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !390
  %6191 = load i64, i64* %6190, align 8, !dbg !390
  %6192 = xor i64 %6189, %6191, !dbg !390
  %6193 = and i64 %6187, %6192, !dbg !390
  %6194 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !390
  %6195 = load i64, i64* %6194, align 8, !dbg !390
  %6196 = xor i64 %6193, %6195, !dbg !390
  %6197 = add i64 %6185, %6196, !dbg !390
  %6198 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 69, !dbg !390
  %6199 = load i64, i64* %6198, align 8, !dbg !390
  %6200 = add i64 %6197, %6199, !dbg !390
  %6201 = add i64 %6200, 748580250866718886, !dbg !390
  store i64 %6201, i64* %5, align 8, !dbg !390
  %6202 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !390
  %6203 = load i64, i64* %6202, align 8, !dbg !390
  %6204 = lshr i64 %6203, 28, !dbg !390
  %6205 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !390
  %6206 = load i64, i64* %6205, align 8, !dbg !390
  %6207 = shl i64 %6206, 36, !dbg !390
  %6208 = or i64 %6204, %6207, !dbg !390
  %6209 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !390
  %6210 = load i64, i64* %6209, align 8, !dbg !390
  %6211 = lshr i64 %6210, 34, !dbg !390
  %6212 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !390
  %6213 = load i64, i64* %6212, align 8, !dbg !390
  %6214 = shl i64 %6213, 30, !dbg !390
  %6215 = or i64 %6211, %6214, !dbg !390
  %6216 = xor i64 %6208, %6215, !dbg !390
  %6217 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !390
  %6218 = load i64, i64* %6217, align 8, !dbg !390
  %6219 = lshr i64 %6218, 39, !dbg !390
  %6220 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !390
  %6221 = load i64, i64* %6220, align 8, !dbg !390
  %6222 = shl i64 %6221, 25, !dbg !390
  %6223 = or i64 %6219, %6222, !dbg !390
  %6224 = xor i64 %6216, %6223, !dbg !390
  %6225 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !390
  %6226 = load i64, i64* %6225, align 8, !dbg !390
  %6227 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !390
  %6228 = load i64, i64* %6227, align 16, !dbg !390
  %6229 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !390
  %6230 = load i64, i64* %6229, align 8, !dbg !390
  %6231 = or i64 %6228, %6230, !dbg !390
  %6232 = and i64 %6226, %6231, !dbg !390
  %6233 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !390
  %6234 = load i64, i64* %6233, align 16, !dbg !390
  %6235 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !390
  %6236 = load i64, i64* %6235, align 8, !dbg !390
  %6237 = and i64 %6234, %6236, !dbg !390
  %6238 = or i64 %6232, %6237, !dbg !390
  %6239 = add i64 %6224, %6238, !dbg !390
  store i64 %6239, i64* %6, align 8, !dbg !390
  %6240 = load i64, i64* %5, align 8, !dbg !390
  %6241 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !390
  %6242 = load i64, i64* %6241, align 16, !dbg !390
  %6243 = add i64 %6242, %6240, !dbg !390
  store i64 %6243, i64* %6241, align 16, !dbg !390
  %6244 = load i64, i64* %5, align 8, !dbg !390
  %6245 = load i64, i64* %6, align 8, !dbg !390
  %6246 = add i64 %6244, %6245, !dbg !390
  %6247 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !390
  store i64 %6246, i64* %6247, align 16, !dbg !390
  %6248 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !391
  %6249 = load i64, i64* %6248, align 8, !dbg !391
  %6250 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !391
  %6251 = load i64, i64* %6250, align 16, !dbg !391
  %6252 = lshr i64 %6251, 14, !dbg !391
  %6253 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !391
  %6254 = load i64, i64* %6253, align 16, !dbg !391
  %6255 = shl i64 %6254, 50, !dbg !391
  %6256 = or i64 %6252, %6255, !dbg !391
  %6257 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !391
  %6258 = load i64, i64* %6257, align 16, !dbg !391
  %6259 = lshr i64 %6258, 18, !dbg !391
  %6260 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !391
  %6261 = load i64, i64* %6260, align 16, !dbg !391
  %6262 = shl i64 %6261, 46, !dbg !391
  %6263 = or i64 %6259, %6262, !dbg !391
  %6264 = xor i64 %6256, %6263, !dbg !391
  %6265 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !391
  %6266 = load i64, i64* %6265, align 16, !dbg !391
  %6267 = lshr i64 %6266, 41, !dbg !391
  %6268 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !391
  %6269 = load i64, i64* %6268, align 16, !dbg !391
  %6270 = shl i64 %6269, 23, !dbg !391
  %6271 = or i64 %6267, %6270, !dbg !391
  %6272 = xor i64 %6264, %6271, !dbg !391
  %6273 = add i64 %6249, %6272, !dbg !391
  %6274 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !391
  %6275 = load i64, i64* %6274, align 16, !dbg !391
  %6276 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !391
  %6277 = load i64, i64* %6276, align 8, !dbg !391
  %6278 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !391
  %6279 = load i64, i64* %6278, align 16, !dbg !391
  %6280 = xor i64 %6277, %6279, !dbg !391
  %6281 = and i64 %6275, %6280, !dbg !391
  %6282 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !391
  %6283 = load i64, i64* %6282, align 16, !dbg !391
  %6284 = xor i64 %6281, %6283, !dbg !391
  %6285 = add i64 %6273, %6284, !dbg !391
  %6286 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 70, !dbg !391
  %6287 = load i64, i64* %6286, align 16, !dbg !391
  %6288 = add i64 %6285, %6287, !dbg !391
  %6289 = add i64 %6288, 1242879168328830382, !dbg !391
  store i64 %6289, i64* %5, align 8, !dbg !391
  %6290 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !391
  %6291 = load i64, i64* %6290, align 16, !dbg !391
  %6292 = lshr i64 %6291, 28, !dbg !391
  %6293 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !391
  %6294 = load i64, i64* %6293, align 16, !dbg !391
  %6295 = shl i64 %6294, 36, !dbg !391
  %6296 = or i64 %6292, %6295, !dbg !391
  %6297 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !391
  %6298 = load i64, i64* %6297, align 16, !dbg !391
  %6299 = lshr i64 %6298, 34, !dbg !391
  %6300 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !391
  %6301 = load i64, i64* %6300, align 16, !dbg !391
  %6302 = shl i64 %6301, 30, !dbg !391
  %6303 = or i64 %6299, %6302, !dbg !391
  %6304 = xor i64 %6296, %6303, !dbg !391
  %6305 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !391
  %6306 = load i64, i64* %6305, align 16, !dbg !391
  %6307 = lshr i64 %6306, 39, !dbg !391
  %6308 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !391
  %6309 = load i64, i64* %6308, align 16, !dbg !391
  %6310 = shl i64 %6309, 25, !dbg !391
  %6311 = or i64 %6307, %6310, !dbg !391
  %6312 = xor i64 %6304, %6311, !dbg !391
  %6313 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !391
  %6314 = load i64, i64* %6313, align 16, !dbg !391
  %6315 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !391
  %6316 = load i64, i64* %6315, align 8, !dbg !391
  %6317 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !391
  %6318 = load i64, i64* %6317, align 16, !dbg !391
  %6319 = or i64 %6316, %6318, !dbg !391
  %6320 = and i64 %6314, %6319, !dbg !391
  %6321 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !391
  %6322 = load i64, i64* %6321, align 8, !dbg !391
  %6323 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !391
  %6324 = load i64, i64* %6323, align 16, !dbg !391
  %6325 = and i64 %6322, %6324, !dbg !391
  %6326 = or i64 %6320, %6325, !dbg !391
  %6327 = add i64 %6312, %6326, !dbg !391
  store i64 %6327, i64* %6, align 8, !dbg !391
  %6328 = load i64, i64* %5, align 8, !dbg !391
  %6329 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !391
  %6330 = load i64, i64* %6329, align 8, !dbg !391
  %6331 = add i64 %6330, %6328, !dbg !391
  store i64 %6331, i64* %6329, align 8, !dbg !391
  %6332 = load i64, i64* %5, align 8, !dbg !391
  %6333 = load i64, i64* %6, align 8, !dbg !391
  %6334 = add i64 %6332, %6333, !dbg !391
  %6335 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !391
  store i64 %6334, i64* %6335, align 8, !dbg !391
  %6336 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !392
  %6337 = load i64, i64* %6336, align 16, !dbg !392
  %6338 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !392
  %6339 = load i64, i64* %6338, align 8, !dbg !392
  %6340 = lshr i64 %6339, 14, !dbg !392
  %6341 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !392
  %6342 = load i64, i64* %6341, align 8, !dbg !392
  %6343 = shl i64 %6342, 50, !dbg !392
  %6344 = or i64 %6340, %6343, !dbg !392
  %6345 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !392
  %6346 = load i64, i64* %6345, align 8, !dbg !392
  %6347 = lshr i64 %6346, 18, !dbg !392
  %6348 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !392
  %6349 = load i64, i64* %6348, align 8, !dbg !392
  %6350 = shl i64 %6349, 46, !dbg !392
  %6351 = or i64 %6347, %6350, !dbg !392
  %6352 = xor i64 %6344, %6351, !dbg !392
  %6353 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !392
  %6354 = load i64, i64* %6353, align 8, !dbg !392
  %6355 = lshr i64 %6354, 41, !dbg !392
  %6356 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !392
  %6357 = load i64, i64* %6356, align 8, !dbg !392
  %6358 = shl i64 %6357, 23, !dbg !392
  %6359 = or i64 %6355, %6358, !dbg !392
  %6360 = xor i64 %6352, %6359, !dbg !392
  %6361 = add i64 %6337, %6360, !dbg !392
  %6362 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !392
  %6363 = load i64, i64* %6362, align 8, !dbg !392
  %6364 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !392
  %6365 = load i64, i64* %6364, align 16, !dbg !392
  %6366 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !392
  %6367 = load i64, i64* %6366, align 8, !dbg !392
  %6368 = xor i64 %6365, %6367, !dbg !392
  %6369 = and i64 %6363, %6368, !dbg !392
  %6370 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !392
  %6371 = load i64, i64* %6370, align 8, !dbg !392
  %6372 = xor i64 %6369, %6371, !dbg !392
  %6373 = add i64 %6361, %6372, !dbg !392
  %6374 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 71, !dbg !392
  %6375 = load i64, i64* %6374, align 8, !dbg !392
  %6376 = add i64 %6373, %6375, !dbg !392
  %6377 = add i64 %6376, 1977374033974150939, !dbg !392
  store i64 %6377, i64* %5, align 8, !dbg !392
  %6378 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !392
  %6379 = load i64, i64* %6378, align 8, !dbg !392
  %6380 = lshr i64 %6379, 28, !dbg !392
  %6381 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !392
  %6382 = load i64, i64* %6381, align 8, !dbg !392
  %6383 = shl i64 %6382, 36, !dbg !392
  %6384 = or i64 %6380, %6383, !dbg !392
  %6385 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !392
  %6386 = load i64, i64* %6385, align 8, !dbg !392
  %6387 = lshr i64 %6386, 34, !dbg !392
  %6388 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !392
  %6389 = load i64, i64* %6388, align 8, !dbg !392
  %6390 = shl i64 %6389, 30, !dbg !392
  %6391 = or i64 %6387, %6390, !dbg !392
  %6392 = xor i64 %6384, %6391, !dbg !392
  %6393 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !392
  %6394 = load i64, i64* %6393, align 8, !dbg !392
  %6395 = lshr i64 %6394, 39, !dbg !392
  %6396 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !392
  %6397 = load i64, i64* %6396, align 8, !dbg !392
  %6398 = shl i64 %6397, 25, !dbg !392
  %6399 = or i64 %6395, %6398, !dbg !392
  %6400 = xor i64 %6392, %6399, !dbg !392
  %6401 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !392
  %6402 = load i64, i64* %6401, align 8, !dbg !392
  %6403 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !392
  %6404 = load i64, i64* %6403, align 16, !dbg !392
  %6405 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !392
  %6406 = load i64, i64* %6405, align 8, !dbg !392
  %6407 = or i64 %6404, %6406, !dbg !392
  %6408 = and i64 %6402, %6407, !dbg !392
  %6409 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !392
  %6410 = load i64, i64* %6409, align 16, !dbg !392
  %6411 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !392
  %6412 = load i64, i64* %6411, align 8, !dbg !392
  %6413 = and i64 %6410, %6412, !dbg !392
  %6414 = or i64 %6408, %6413, !dbg !392
  %6415 = add i64 %6400, %6414, !dbg !392
  store i64 %6415, i64* %6, align 8, !dbg !392
  %6416 = load i64, i64* %5, align 8, !dbg !392
  %6417 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !392
  %6418 = load i64, i64* %6417, align 16, !dbg !392
  %6419 = add i64 %6418, %6416, !dbg !392
  store i64 %6419, i64* %6417, align 16, !dbg !392
  %6420 = load i64, i64* %5, align 8, !dbg !392
  %6421 = load i64, i64* %6, align 8, !dbg !392
  %6422 = add i64 %6420, %6421, !dbg !392
  %6423 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !392
  store i64 %6422, i64* %6423, align 16, !dbg !392
  %6424 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !393
  %6425 = load i64, i64* %6424, align 8, !dbg !393
  %6426 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !393
  %6427 = load i64, i64* %6426, align 16, !dbg !393
  %6428 = lshr i64 %6427, 14, !dbg !393
  %6429 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !393
  %6430 = load i64, i64* %6429, align 16, !dbg !393
  %6431 = shl i64 %6430, 50, !dbg !393
  %6432 = or i64 %6428, %6431, !dbg !393
  %6433 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !393
  %6434 = load i64, i64* %6433, align 16, !dbg !393
  %6435 = lshr i64 %6434, 18, !dbg !393
  %6436 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !393
  %6437 = load i64, i64* %6436, align 16, !dbg !393
  %6438 = shl i64 %6437, 46, !dbg !393
  %6439 = or i64 %6435, %6438, !dbg !393
  %6440 = xor i64 %6432, %6439, !dbg !393
  %6441 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !393
  %6442 = load i64, i64* %6441, align 16, !dbg !393
  %6443 = lshr i64 %6442, 41, !dbg !393
  %6444 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !393
  %6445 = load i64, i64* %6444, align 16, !dbg !393
  %6446 = shl i64 %6445, 23, !dbg !393
  %6447 = or i64 %6443, %6446, !dbg !393
  %6448 = xor i64 %6440, %6447, !dbg !393
  %6449 = add i64 %6425, %6448, !dbg !393
  %6450 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !393
  %6451 = load i64, i64* %6450, align 16, !dbg !393
  %6452 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !393
  %6453 = load i64, i64* %6452, align 8, !dbg !393
  %6454 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !393
  %6455 = load i64, i64* %6454, align 16, !dbg !393
  %6456 = xor i64 %6453, %6455, !dbg !393
  %6457 = and i64 %6451, %6456, !dbg !393
  %6458 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !393
  %6459 = load i64, i64* %6458, align 16, !dbg !393
  %6460 = xor i64 %6457, %6459, !dbg !393
  %6461 = add i64 %6449, %6460, !dbg !393
  %6462 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 72, !dbg !393
  %6463 = load i64, i64* %6462, align 16, !dbg !393
  %6464 = add i64 %6461, %6463, !dbg !393
  %6465 = add i64 %6464, 2944078676154940804, !dbg !393
  store i64 %6465, i64* %5, align 8, !dbg !393
  %6466 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !393
  %6467 = load i64, i64* %6466, align 16, !dbg !393
  %6468 = lshr i64 %6467, 28, !dbg !393
  %6469 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !393
  %6470 = load i64, i64* %6469, align 16, !dbg !393
  %6471 = shl i64 %6470, 36, !dbg !393
  %6472 = or i64 %6468, %6471, !dbg !393
  %6473 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !393
  %6474 = load i64, i64* %6473, align 16, !dbg !393
  %6475 = lshr i64 %6474, 34, !dbg !393
  %6476 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !393
  %6477 = load i64, i64* %6476, align 16, !dbg !393
  %6478 = shl i64 %6477, 30, !dbg !393
  %6479 = or i64 %6475, %6478, !dbg !393
  %6480 = xor i64 %6472, %6479, !dbg !393
  %6481 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !393
  %6482 = load i64, i64* %6481, align 16, !dbg !393
  %6483 = lshr i64 %6482, 39, !dbg !393
  %6484 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !393
  %6485 = load i64, i64* %6484, align 16, !dbg !393
  %6486 = shl i64 %6485, 25, !dbg !393
  %6487 = or i64 %6483, %6486, !dbg !393
  %6488 = xor i64 %6480, %6487, !dbg !393
  %6489 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !393
  %6490 = load i64, i64* %6489, align 16, !dbg !393
  %6491 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !393
  %6492 = load i64, i64* %6491, align 8, !dbg !393
  %6493 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !393
  %6494 = load i64, i64* %6493, align 16, !dbg !393
  %6495 = or i64 %6492, %6494, !dbg !393
  %6496 = and i64 %6490, %6495, !dbg !393
  %6497 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !393
  %6498 = load i64, i64* %6497, align 8, !dbg !393
  %6499 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !393
  %6500 = load i64, i64* %6499, align 16, !dbg !393
  %6501 = and i64 %6498, %6500, !dbg !393
  %6502 = or i64 %6496, %6501, !dbg !393
  %6503 = add i64 %6488, %6502, !dbg !393
  store i64 %6503, i64* %6, align 8, !dbg !393
  %6504 = load i64, i64* %5, align 8, !dbg !393
  %6505 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !393
  %6506 = load i64, i64* %6505, align 8, !dbg !393
  %6507 = add i64 %6506, %6504, !dbg !393
  store i64 %6507, i64* %6505, align 8, !dbg !393
  %6508 = load i64, i64* %5, align 8, !dbg !393
  %6509 = load i64, i64* %6, align 8, !dbg !393
  %6510 = add i64 %6508, %6509, !dbg !393
  %6511 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !393
  store i64 %6510, i64* %6511, align 8, !dbg !393
  %6512 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !394
  %6513 = load i64, i64* %6512, align 16, !dbg !394
  %6514 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !394
  %6515 = load i64, i64* %6514, align 8, !dbg !394
  %6516 = lshr i64 %6515, 14, !dbg !394
  %6517 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !394
  %6518 = load i64, i64* %6517, align 8, !dbg !394
  %6519 = shl i64 %6518, 50, !dbg !394
  %6520 = or i64 %6516, %6519, !dbg !394
  %6521 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !394
  %6522 = load i64, i64* %6521, align 8, !dbg !394
  %6523 = lshr i64 %6522, 18, !dbg !394
  %6524 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !394
  %6525 = load i64, i64* %6524, align 8, !dbg !394
  %6526 = shl i64 %6525, 46, !dbg !394
  %6527 = or i64 %6523, %6526, !dbg !394
  %6528 = xor i64 %6520, %6527, !dbg !394
  %6529 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !394
  %6530 = load i64, i64* %6529, align 8, !dbg !394
  %6531 = lshr i64 %6530, 41, !dbg !394
  %6532 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !394
  %6533 = load i64, i64* %6532, align 8, !dbg !394
  %6534 = shl i64 %6533, 23, !dbg !394
  %6535 = or i64 %6531, %6534, !dbg !394
  %6536 = xor i64 %6528, %6535, !dbg !394
  %6537 = add i64 %6513, %6536, !dbg !394
  %6538 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !394
  %6539 = load i64, i64* %6538, align 8, !dbg !394
  %6540 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !394
  %6541 = load i64, i64* %6540, align 16, !dbg !394
  %6542 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !394
  %6543 = load i64, i64* %6542, align 8, !dbg !394
  %6544 = xor i64 %6541, %6543, !dbg !394
  %6545 = and i64 %6539, %6544, !dbg !394
  %6546 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !394
  %6547 = load i64, i64* %6546, align 8, !dbg !394
  %6548 = xor i64 %6545, %6547, !dbg !394
  %6549 = add i64 %6537, %6548, !dbg !394
  %6550 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 73, !dbg !394
  %6551 = load i64, i64* %6550, align 8, !dbg !394
  %6552 = add i64 %6549, %6551, !dbg !394
  %6553 = add i64 %6552, 3659926193048069267, !dbg !394
  store i64 %6553, i64* %5, align 8, !dbg !394
  %6554 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !394
  %6555 = load i64, i64* %6554, align 8, !dbg !394
  %6556 = lshr i64 %6555, 28, !dbg !394
  %6557 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !394
  %6558 = load i64, i64* %6557, align 8, !dbg !394
  %6559 = shl i64 %6558, 36, !dbg !394
  %6560 = or i64 %6556, %6559, !dbg !394
  %6561 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !394
  %6562 = load i64, i64* %6561, align 8, !dbg !394
  %6563 = lshr i64 %6562, 34, !dbg !394
  %6564 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !394
  %6565 = load i64, i64* %6564, align 8, !dbg !394
  %6566 = shl i64 %6565, 30, !dbg !394
  %6567 = or i64 %6563, %6566, !dbg !394
  %6568 = xor i64 %6560, %6567, !dbg !394
  %6569 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !394
  %6570 = load i64, i64* %6569, align 8, !dbg !394
  %6571 = lshr i64 %6570, 39, !dbg !394
  %6572 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !394
  %6573 = load i64, i64* %6572, align 8, !dbg !394
  %6574 = shl i64 %6573, 25, !dbg !394
  %6575 = or i64 %6571, %6574, !dbg !394
  %6576 = xor i64 %6568, %6575, !dbg !394
  %6577 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !394
  %6578 = load i64, i64* %6577, align 8, !dbg !394
  %6579 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !394
  %6580 = load i64, i64* %6579, align 16, !dbg !394
  %6581 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !394
  %6582 = load i64, i64* %6581, align 8, !dbg !394
  %6583 = or i64 %6580, %6582, !dbg !394
  %6584 = and i64 %6578, %6583, !dbg !394
  %6585 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !394
  %6586 = load i64, i64* %6585, align 16, !dbg !394
  %6587 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !394
  %6588 = load i64, i64* %6587, align 8, !dbg !394
  %6589 = and i64 %6586, %6588, !dbg !394
  %6590 = or i64 %6584, %6589, !dbg !394
  %6591 = add i64 %6576, %6590, !dbg !394
  store i64 %6591, i64* %6, align 8, !dbg !394
  %6592 = load i64, i64* %5, align 8, !dbg !394
  %6593 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !394
  %6594 = load i64, i64* %6593, align 16, !dbg !394
  %6595 = add i64 %6594, %6592, !dbg !394
  store i64 %6595, i64* %6593, align 16, !dbg !394
  %6596 = load i64, i64* %5, align 8, !dbg !394
  %6597 = load i64, i64* %6, align 8, !dbg !394
  %6598 = add i64 %6596, %6597, !dbg !394
  %6599 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !394
  store i64 %6598, i64* %6599, align 16, !dbg !394
  %6600 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !395
  %6601 = load i64, i64* %6600, align 8, !dbg !395
  %6602 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !395
  %6603 = load i64, i64* %6602, align 16, !dbg !395
  %6604 = lshr i64 %6603, 14, !dbg !395
  %6605 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !395
  %6606 = load i64, i64* %6605, align 16, !dbg !395
  %6607 = shl i64 %6606, 50, !dbg !395
  %6608 = or i64 %6604, %6607, !dbg !395
  %6609 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !395
  %6610 = load i64, i64* %6609, align 16, !dbg !395
  %6611 = lshr i64 %6610, 18, !dbg !395
  %6612 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !395
  %6613 = load i64, i64* %6612, align 16, !dbg !395
  %6614 = shl i64 %6613, 46, !dbg !395
  %6615 = or i64 %6611, %6614, !dbg !395
  %6616 = xor i64 %6608, %6615, !dbg !395
  %6617 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !395
  %6618 = load i64, i64* %6617, align 16, !dbg !395
  %6619 = lshr i64 %6618, 41, !dbg !395
  %6620 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !395
  %6621 = load i64, i64* %6620, align 16, !dbg !395
  %6622 = shl i64 %6621, 23, !dbg !395
  %6623 = or i64 %6619, %6622, !dbg !395
  %6624 = xor i64 %6616, %6623, !dbg !395
  %6625 = add i64 %6601, %6624, !dbg !395
  %6626 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !395
  %6627 = load i64, i64* %6626, align 16, !dbg !395
  %6628 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !395
  %6629 = load i64, i64* %6628, align 8, !dbg !395
  %6630 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !395
  %6631 = load i64, i64* %6630, align 16, !dbg !395
  %6632 = xor i64 %6629, %6631, !dbg !395
  %6633 = and i64 %6627, %6632, !dbg !395
  %6634 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !395
  %6635 = load i64, i64* %6634, align 16, !dbg !395
  %6636 = xor i64 %6633, %6635, !dbg !395
  %6637 = add i64 %6625, %6636, !dbg !395
  %6638 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 74, !dbg !395
  %6639 = load i64, i64* %6638, align 16, !dbg !395
  %6640 = add i64 %6637, %6639, !dbg !395
  %6641 = add i64 %6640, 4368137639120453308, !dbg !395
  store i64 %6641, i64* %5, align 8, !dbg !395
  %6642 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !395
  %6643 = load i64, i64* %6642, align 16, !dbg !395
  %6644 = lshr i64 %6643, 28, !dbg !395
  %6645 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !395
  %6646 = load i64, i64* %6645, align 16, !dbg !395
  %6647 = shl i64 %6646, 36, !dbg !395
  %6648 = or i64 %6644, %6647, !dbg !395
  %6649 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !395
  %6650 = load i64, i64* %6649, align 16, !dbg !395
  %6651 = lshr i64 %6650, 34, !dbg !395
  %6652 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !395
  %6653 = load i64, i64* %6652, align 16, !dbg !395
  %6654 = shl i64 %6653, 30, !dbg !395
  %6655 = or i64 %6651, %6654, !dbg !395
  %6656 = xor i64 %6648, %6655, !dbg !395
  %6657 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !395
  %6658 = load i64, i64* %6657, align 16, !dbg !395
  %6659 = lshr i64 %6658, 39, !dbg !395
  %6660 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !395
  %6661 = load i64, i64* %6660, align 16, !dbg !395
  %6662 = shl i64 %6661, 25, !dbg !395
  %6663 = or i64 %6659, %6662, !dbg !395
  %6664 = xor i64 %6656, %6663, !dbg !395
  %6665 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !395
  %6666 = load i64, i64* %6665, align 16, !dbg !395
  %6667 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !395
  %6668 = load i64, i64* %6667, align 8, !dbg !395
  %6669 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !395
  %6670 = load i64, i64* %6669, align 16, !dbg !395
  %6671 = or i64 %6668, %6670, !dbg !395
  %6672 = and i64 %6666, %6671, !dbg !395
  %6673 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !395
  %6674 = load i64, i64* %6673, align 8, !dbg !395
  %6675 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !395
  %6676 = load i64, i64* %6675, align 16, !dbg !395
  %6677 = and i64 %6674, %6676, !dbg !395
  %6678 = or i64 %6672, %6677, !dbg !395
  %6679 = add i64 %6664, %6678, !dbg !395
  store i64 %6679, i64* %6, align 8, !dbg !395
  %6680 = load i64, i64* %5, align 8, !dbg !395
  %6681 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !395
  %6682 = load i64, i64* %6681, align 8, !dbg !395
  %6683 = add i64 %6682, %6680, !dbg !395
  store i64 %6683, i64* %6681, align 8, !dbg !395
  %6684 = load i64, i64* %5, align 8, !dbg !395
  %6685 = load i64, i64* %6, align 8, !dbg !395
  %6686 = add i64 %6684, %6685, !dbg !395
  %6687 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !395
  store i64 %6686, i64* %6687, align 8, !dbg !395
  %6688 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !396
  %6689 = load i64, i64* %6688, align 16, !dbg !396
  %6690 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !396
  %6691 = load i64, i64* %6690, align 8, !dbg !396
  %6692 = lshr i64 %6691, 14, !dbg !396
  %6693 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !396
  %6694 = load i64, i64* %6693, align 8, !dbg !396
  %6695 = shl i64 %6694, 50, !dbg !396
  %6696 = or i64 %6692, %6695, !dbg !396
  %6697 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !396
  %6698 = load i64, i64* %6697, align 8, !dbg !396
  %6699 = lshr i64 %6698, 18, !dbg !396
  %6700 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !396
  %6701 = load i64, i64* %6700, align 8, !dbg !396
  %6702 = shl i64 %6701, 46, !dbg !396
  %6703 = or i64 %6699, %6702, !dbg !396
  %6704 = xor i64 %6696, %6703, !dbg !396
  %6705 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !396
  %6706 = load i64, i64* %6705, align 8, !dbg !396
  %6707 = lshr i64 %6706, 41, !dbg !396
  %6708 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !396
  %6709 = load i64, i64* %6708, align 8, !dbg !396
  %6710 = shl i64 %6709, 23, !dbg !396
  %6711 = or i64 %6707, %6710, !dbg !396
  %6712 = xor i64 %6704, %6711, !dbg !396
  %6713 = add i64 %6689, %6712, !dbg !396
  %6714 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !396
  %6715 = load i64, i64* %6714, align 8, !dbg !396
  %6716 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !396
  %6717 = load i64, i64* %6716, align 16, !dbg !396
  %6718 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !396
  %6719 = load i64, i64* %6718, align 8, !dbg !396
  %6720 = xor i64 %6717, %6719, !dbg !396
  %6721 = and i64 %6715, %6720, !dbg !396
  %6722 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !396
  %6723 = load i64, i64* %6722, align 8, !dbg !396
  %6724 = xor i64 %6721, %6723, !dbg !396
  %6725 = add i64 %6713, %6724, !dbg !396
  %6726 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 75, !dbg !396
  %6727 = load i64, i64* %6726, align 8, !dbg !396
  %6728 = add i64 %6725, %6727, !dbg !396
  %6729 = add i64 %6728, 4836135668995329356, !dbg !396
  store i64 %6729, i64* %5, align 8, !dbg !396
  %6730 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !396
  %6731 = load i64, i64* %6730, align 8, !dbg !396
  %6732 = lshr i64 %6731, 28, !dbg !396
  %6733 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !396
  %6734 = load i64, i64* %6733, align 8, !dbg !396
  %6735 = shl i64 %6734, 36, !dbg !396
  %6736 = or i64 %6732, %6735, !dbg !396
  %6737 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !396
  %6738 = load i64, i64* %6737, align 8, !dbg !396
  %6739 = lshr i64 %6738, 34, !dbg !396
  %6740 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !396
  %6741 = load i64, i64* %6740, align 8, !dbg !396
  %6742 = shl i64 %6741, 30, !dbg !396
  %6743 = or i64 %6739, %6742, !dbg !396
  %6744 = xor i64 %6736, %6743, !dbg !396
  %6745 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !396
  %6746 = load i64, i64* %6745, align 8, !dbg !396
  %6747 = lshr i64 %6746, 39, !dbg !396
  %6748 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !396
  %6749 = load i64, i64* %6748, align 8, !dbg !396
  %6750 = shl i64 %6749, 25, !dbg !396
  %6751 = or i64 %6747, %6750, !dbg !396
  %6752 = xor i64 %6744, %6751, !dbg !396
  %6753 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !396
  %6754 = load i64, i64* %6753, align 8, !dbg !396
  %6755 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !396
  %6756 = load i64, i64* %6755, align 16, !dbg !396
  %6757 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !396
  %6758 = load i64, i64* %6757, align 8, !dbg !396
  %6759 = or i64 %6756, %6758, !dbg !396
  %6760 = and i64 %6754, %6759, !dbg !396
  %6761 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !396
  %6762 = load i64, i64* %6761, align 16, !dbg !396
  %6763 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !396
  %6764 = load i64, i64* %6763, align 8, !dbg !396
  %6765 = and i64 %6762, %6764, !dbg !396
  %6766 = or i64 %6760, %6765, !dbg !396
  %6767 = add i64 %6752, %6766, !dbg !396
  store i64 %6767, i64* %6, align 8, !dbg !396
  %6768 = load i64, i64* %5, align 8, !dbg !396
  %6769 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !396
  %6770 = load i64, i64* %6769, align 16, !dbg !396
  %6771 = add i64 %6770, %6768, !dbg !396
  store i64 %6771, i64* %6769, align 16, !dbg !396
  %6772 = load i64, i64* %5, align 8, !dbg !396
  %6773 = load i64, i64* %6, align 8, !dbg !396
  %6774 = add i64 %6772, %6773, !dbg !396
  %6775 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !396
  store i64 %6774, i64* %6775, align 16, !dbg !396
  %6776 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !397
  %6777 = load i64, i64* %6776, align 8, !dbg !397
  %6778 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !397
  %6779 = load i64, i64* %6778, align 16, !dbg !397
  %6780 = lshr i64 %6779, 14, !dbg !397
  %6781 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !397
  %6782 = load i64, i64* %6781, align 16, !dbg !397
  %6783 = shl i64 %6782, 50, !dbg !397
  %6784 = or i64 %6780, %6783, !dbg !397
  %6785 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !397
  %6786 = load i64, i64* %6785, align 16, !dbg !397
  %6787 = lshr i64 %6786, 18, !dbg !397
  %6788 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !397
  %6789 = load i64, i64* %6788, align 16, !dbg !397
  %6790 = shl i64 %6789, 46, !dbg !397
  %6791 = or i64 %6787, %6790, !dbg !397
  %6792 = xor i64 %6784, %6791, !dbg !397
  %6793 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !397
  %6794 = load i64, i64* %6793, align 16, !dbg !397
  %6795 = lshr i64 %6794, 41, !dbg !397
  %6796 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !397
  %6797 = load i64, i64* %6796, align 16, !dbg !397
  %6798 = shl i64 %6797, 23, !dbg !397
  %6799 = or i64 %6795, %6798, !dbg !397
  %6800 = xor i64 %6792, %6799, !dbg !397
  %6801 = add i64 %6777, %6800, !dbg !397
  %6802 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !397
  %6803 = load i64, i64* %6802, align 16, !dbg !397
  %6804 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !397
  %6805 = load i64, i64* %6804, align 8, !dbg !397
  %6806 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !397
  %6807 = load i64, i64* %6806, align 16, !dbg !397
  %6808 = xor i64 %6805, %6807, !dbg !397
  %6809 = and i64 %6803, %6808, !dbg !397
  %6810 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !397
  %6811 = load i64, i64* %6810, align 16, !dbg !397
  %6812 = xor i64 %6809, %6811, !dbg !397
  %6813 = add i64 %6801, %6812, !dbg !397
  %6814 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 76, !dbg !397
  %6815 = load i64, i64* %6814, align 16, !dbg !397
  %6816 = add i64 %6813, %6815, !dbg !397
  %6817 = add i64 %6816, 5532061633213252278, !dbg !397
  store i64 %6817, i64* %5, align 8, !dbg !397
  %6818 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !397
  %6819 = load i64, i64* %6818, align 16, !dbg !397
  %6820 = lshr i64 %6819, 28, !dbg !397
  %6821 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !397
  %6822 = load i64, i64* %6821, align 16, !dbg !397
  %6823 = shl i64 %6822, 36, !dbg !397
  %6824 = or i64 %6820, %6823, !dbg !397
  %6825 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !397
  %6826 = load i64, i64* %6825, align 16, !dbg !397
  %6827 = lshr i64 %6826, 34, !dbg !397
  %6828 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !397
  %6829 = load i64, i64* %6828, align 16, !dbg !397
  %6830 = shl i64 %6829, 30, !dbg !397
  %6831 = or i64 %6827, %6830, !dbg !397
  %6832 = xor i64 %6824, %6831, !dbg !397
  %6833 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !397
  %6834 = load i64, i64* %6833, align 16, !dbg !397
  %6835 = lshr i64 %6834, 39, !dbg !397
  %6836 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !397
  %6837 = load i64, i64* %6836, align 16, !dbg !397
  %6838 = shl i64 %6837, 25, !dbg !397
  %6839 = or i64 %6835, %6838, !dbg !397
  %6840 = xor i64 %6832, %6839, !dbg !397
  %6841 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !397
  %6842 = load i64, i64* %6841, align 16, !dbg !397
  %6843 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !397
  %6844 = load i64, i64* %6843, align 8, !dbg !397
  %6845 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !397
  %6846 = load i64, i64* %6845, align 16, !dbg !397
  %6847 = or i64 %6844, %6846, !dbg !397
  %6848 = and i64 %6842, %6847, !dbg !397
  %6849 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !397
  %6850 = load i64, i64* %6849, align 8, !dbg !397
  %6851 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !397
  %6852 = load i64, i64* %6851, align 16, !dbg !397
  %6853 = and i64 %6850, %6852, !dbg !397
  %6854 = or i64 %6848, %6853, !dbg !397
  %6855 = add i64 %6840, %6854, !dbg !397
  store i64 %6855, i64* %6, align 8, !dbg !397
  %6856 = load i64, i64* %5, align 8, !dbg !397
  %6857 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !397
  %6858 = load i64, i64* %6857, align 8, !dbg !397
  %6859 = add i64 %6858, %6856, !dbg !397
  store i64 %6859, i64* %6857, align 8, !dbg !397
  %6860 = load i64, i64* %5, align 8, !dbg !397
  %6861 = load i64, i64* %6, align 8, !dbg !397
  %6862 = add i64 %6860, %6861, !dbg !397
  %6863 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !397
  store i64 %6862, i64* %6863, align 8, !dbg !397
  %6864 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !398
  %6865 = load i64, i64* %6864, align 16, !dbg !398
  %6866 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !398
  %6867 = load i64, i64* %6866, align 8, !dbg !398
  %6868 = lshr i64 %6867, 14, !dbg !398
  %6869 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !398
  %6870 = load i64, i64* %6869, align 8, !dbg !398
  %6871 = shl i64 %6870, 50, !dbg !398
  %6872 = or i64 %6868, %6871, !dbg !398
  %6873 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !398
  %6874 = load i64, i64* %6873, align 8, !dbg !398
  %6875 = lshr i64 %6874, 18, !dbg !398
  %6876 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !398
  %6877 = load i64, i64* %6876, align 8, !dbg !398
  %6878 = shl i64 %6877, 46, !dbg !398
  %6879 = or i64 %6875, %6878, !dbg !398
  %6880 = xor i64 %6872, %6879, !dbg !398
  %6881 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !398
  %6882 = load i64, i64* %6881, align 8, !dbg !398
  %6883 = lshr i64 %6882, 41, !dbg !398
  %6884 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !398
  %6885 = load i64, i64* %6884, align 8, !dbg !398
  %6886 = shl i64 %6885, 23, !dbg !398
  %6887 = or i64 %6883, %6886, !dbg !398
  %6888 = xor i64 %6880, %6887, !dbg !398
  %6889 = add i64 %6865, %6888, !dbg !398
  %6890 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !398
  %6891 = load i64, i64* %6890, align 8, !dbg !398
  %6892 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !398
  %6893 = load i64, i64* %6892, align 16, !dbg !398
  %6894 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !398
  %6895 = load i64, i64* %6894, align 8, !dbg !398
  %6896 = xor i64 %6893, %6895, !dbg !398
  %6897 = and i64 %6891, %6896, !dbg !398
  %6898 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !398
  %6899 = load i64, i64* %6898, align 8, !dbg !398
  %6900 = xor i64 %6897, %6899, !dbg !398
  %6901 = add i64 %6889, %6900, !dbg !398
  %6902 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 77, !dbg !398
  %6903 = load i64, i64* %6902, align 8, !dbg !398
  %6904 = add i64 %6901, %6903, !dbg !398
  %6905 = add i64 %6904, 6448918945643986474, !dbg !398
  store i64 %6905, i64* %5, align 8, !dbg !398
  %6906 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !398
  %6907 = load i64, i64* %6906, align 8, !dbg !398
  %6908 = lshr i64 %6907, 28, !dbg !398
  %6909 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !398
  %6910 = load i64, i64* %6909, align 8, !dbg !398
  %6911 = shl i64 %6910, 36, !dbg !398
  %6912 = or i64 %6908, %6911, !dbg !398
  %6913 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !398
  %6914 = load i64, i64* %6913, align 8, !dbg !398
  %6915 = lshr i64 %6914, 34, !dbg !398
  %6916 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !398
  %6917 = load i64, i64* %6916, align 8, !dbg !398
  %6918 = shl i64 %6917, 30, !dbg !398
  %6919 = or i64 %6915, %6918, !dbg !398
  %6920 = xor i64 %6912, %6919, !dbg !398
  %6921 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !398
  %6922 = load i64, i64* %6921, align 8, !dbg !398
  %6923 = lshr i64 %6922, 39, !dbg !398
  %6924 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !398
  %6925 = load i64, i64* %6924, align 8, !dbg !398
  %6926 = shl i64 %6925, 25, !dbg !398
  %6927 = or i64 %6923, %6926, !dbg !398
  %6928 = xor i64 %6920, %6927, !dbg !398
  %6929 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !398
  %6930 = load i64, i64* %6929, align 8, !dbg !398
  %6931 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !398
  %6932 = load i64, i64* %6931, align 16, !dbg !398
  %6933 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !398
  %6934 = load i64, i64* %6933, align 8, !dbg !398
  %6935 = or i64 %6932, %6934, !dbg !398
  %6936 = and i64 %6930, %6935, !dbg !398
  %6937 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !398
  %6938 = load i64, i64* %6937, align 16, !dbg !398
  %6939 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !398
  %6940 = load i64, i64* %6939, align 8, !dbg !398
  %6941 = and i64 %6938, %6940, !dbg !398
  %6942 = or i64 %6936, %6941, !dbg !398
  %6943 = add i64 %6928, %6942, !dbg !398
  store i64 %6943, i64* %6, align 8, !dbg !398
  %6944 = load i64, i64* %5, align 8, !dbg !398
  %6945 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !398
  %6946 = load i64, i64* %6945, align 16, !dbg !398
  %6947 = add i64 %6946, %6944, !dbg !398
  store i64 %6947, i64* %6945, align 16, !dbg !398
  %6948 = load i64, i64* %5, align 8, !dbg !398
  %6949 = load i64, i64* %6, align 8, !dbg !398
  %6950 = add i64 %6948, %6949, !dbg !398
  %6951 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !398
  store i64 %6950, i64* %6951, align 16, !dbg !398
  %6952 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !399
  %6953 = load i64, i64* %6952, align 8, !dbg !399
  %6954 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !399
  %6955 = load i64, i64* %6954, align 16, !dbg !399
  %6956 = lshr i64 %6955, 14, !dbg !399
  %6957 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !399
  %6958 = load i64, i64* %6957, align 16, !dbg !399
  %6959 = shl i64 %6958, 50, !dbg !399
  %6960 = or i64 %6956, %6959, !dbg !399
  %6961 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !399
  %6962 = load i64, i64* %6961, align 16, !dbg !399
  %6963 = lshr i64 %6962, 18, !dbg !399
  %6964 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !399
  %6965 = load i64, i64* %6964, align 16, !dbg !399
  %6966 = shl i64 %6965, 46, !dbg !399
  %6967 = or i64 %6963, %6966, !dbg !399
  %6968 = xor i64 %6960, %6967, !dbg !399
  %6969 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !399
  %6970 = load i64, i64* %6969, align 16, !dbg !399
  %6971 = lshr i64 %6970, 41, !dbg !399
  %6972 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !399
  %6973 = load i64, i64* %6972, align 16, !dbg !399
  %6974 = shl i64 %6973, 23, !dbg !399
  %6975 = or i64 %6971, %6974, !dbg !399
  %6976 = xor i64 %6968, %6975, !dbg !399
  %6977 = add i64 %6953, %6976, !dbg !399
  %6978 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !399
  %6979 = load i64, i64* %6978, align 16, !dbg !399
  %6980 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !399
  %6981 = load i64, i64* %6980, align 8, !dbg !399
  %6982 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !399
  %6983 = load i64, i64* %6982, align 16, !dbg !399
  %6984 = xor i64 %6981, %6983, !dbg !399
  %6985 = and i64 %6979, %6984, !dbg !399
  %6986 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !399
  %6987 = load i64, i64* %6986, align 16, !dbg !399
  %6988 = xor i64 %6985, %6987, !dbg !399
  %6989 = add i64 %6977, %6988, !dbg !399
  %6990 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 78, !dbg !399
  %6991 = load i64, i64* %6990, align 16, !dbg !399
  %6992 = add i64 %6989, %6991, !dbg !399
  %6993 = add i64 %6992, 6902733635092675308, !dbg !399
  store i64 %6993, i64* %5, align 8, !dbg !399
  %6994 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !399
  %6995 = load i64, i64* %6994, align 16, !dbg !399
  %6996 = lshr i64 %6995, 28, !dbg !399
  %6997 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !399
  %6998 = load i64, i64* %6997, align 16, !dbg !399
  %6999 = shl i64 %6998, 36, !dbg !399
  %7000 = or i64 %6996, %6999, !dbg !399
  %7001 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !399
  %7002 = load i64, i64* %7001, align 16, !dbg !399
  %7003 = lshr i64 %7002, 34, !dbg !399
  %7004 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !399
  %7005 = load i64, i64* %7004, align 16, !dbg !399
  %7006 = shl i64 %7005, 30, !dbg !399
  %7007 = or i64 %7003, %7006, !dbg !399
  %7008 = xor i64 %7000, %7007, !dbg !399
  %7009 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !399
  %7010 = load i64, i64* %7009, align 16, !dbg !399
  %7011 = lshr i64 %7010, 39, !dbg !399
  %7012 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !399
  %7013 = load i64, i64* %7012, align 16, !dbg !399
  %7014 = shl i64 %7013, 25, !dbg !399
  %7015 = or i64 %7011, %7014, !dbg !399
  %7016 = xor i64 %7008, %7015, !dbg !399
  %7017 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !399
  %7018 = load i64, i64* %7017, align 16, !dbg !399
  %7019 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !399
  %7020 = load i64, i64* %7019, align 8, !dbg !399
  %7021 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !399
  %7022 = load i64, i64* %7021, align 16, !dbg !399
  %7023 = or i64 %7020, %7022, !dbg !399
  %7024 = and i64 %7018, %7023, !dbg !399
  %7025 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !399
  %7026 = load i64, i64* %7025, align 8, !dbg !399
  %7027 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !399
  %7028 = load i64, i64* %7027, align 16, !dbg !399
  %7029 = and i64 %7026, %7028, !dbg !399
  %7030 = or i64 %7024, %7029, !dbg !399
  %7031 = add i64 %7016, %7030, !dbg !399
  store i64 %7031, i64* %6, align 8, !dbg !399
  %7032 = load i64, i64* %5, align 8, !dbg !399
  %7033 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !399
  %7034 = load i64, i64* %7033, align 8, !dbg !399
  %7035 = add i64 %7034, %7032, !dbg !399
  store i64 %7035, i64* %7033, align 8, !dbg !399
  %7036 = load i64, i64* %5, align 8, !dbg !399
  %7037 = load i64, i64* %6, align 8, !dbg !399
  %7038 = add i64 %7036, %7037, !dbg !399
  %7039 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !399
  store i64 %7038, i64* %7039, align 8, !dbg !399
  %7040 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !400
  %7041 = load i64, i64* %7040, align 16, !dbg !400
  %7042 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !400
  %7043 = load i64, i64* %7042, align 8, !dbg !400
  %7044 = lshr i64 %7043, 14, !dbg !400
  %7045 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !400
  %7046 = load i64, i64* %7045, align 8, !dbg !400
  %7047 = shl i64 %7046, 50, !dbg !400
  %7048 = or i64 %7044, %7047, !dbg !400
  %7049 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !400
  %7050 = load i64, i64* %7049, align 8, !dbg !400
  %7051 = lshr i64 %7050, 18, !dbg !400
  %7052 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !400
  %7053 = load i64, i64* %7052, align 8, !dbg !400
  %7054 = shl i64 %7053, 46, !dbg !400
  %7055 = or i64 %7051, %7054, !dbg !400
  %7056 = xor i64 %7048, %7055, !dbg !400
  %7057 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !400
  %7058 = load i64, i64* %7057, align 8, !dbg !400
  %7059 = lshr i64 %7058, 41, !dbg !400
  %7060 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !400
  %7061 = load i64, i64* %7060, align 8, !dbg !400
  %7062 = shl i64 %7061, 23, !dbg !400
  %7063 = or i64 %7059, %7062, !dbg !400
  %7064 = xor i64 %7056, %7063, !dbg !400
  %7065 = add i64 %7041, %7064, !dbg !400
  %7066 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 5, !dbg !400
  %7067 = load i64, i64* %7066, align 8, !dbg !400
  %7068 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 6, !dbg !400
  %7069 = load i64, i64* %7068, align 16, !dbg !400
  %7070 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !400
  %7071 = load i64, i64* %7070, align 8, !dbg !400
  %7072 = xor i64 %7069, %7071, !dbg !400
  %7073 = and i64 %7067, %7072, !dbg !400
  %7074 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 7, !dbg !400
  %7075 = load i64, i64* %7074, align 8, !dbg !400
  %7076 = xor i64 %7073, %7075, !dbg !400
  %7077 = add i64 %7065, %7076, !dbg !400
  %7078 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 79, !dbg !400
  %7079 = load i64, i64* %7078, align 8, !dbg !400
  %7080 = add i64 %7077, %7079, !dbg !400
  %7081 = add i64 %7080, 7801388544844847127, !dbg !400
  store i64 %7081, i64* %5, align 8, !dbg !400
  %7082 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !400
  %7083 = load i64, i64* %7082, align 8, !dbg !400
  %7084 = lshr i64 %7083, 28, !dbg !400
  %7085 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !400
  %7086 = load i64, i64* %7085, align 8, !dbg !400
  %7087 = shl i64 %7086, 36, !dbg !400
  %7088 = or i64 %7084, %7087, !dbg !400
  %7089 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !400
  %7090 = load i64, i64* %7089, align 8, !dbg !400
  %7091 = lshr i64 %7090, 34, !dbg !400
  %7092 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !400
  %7093 = load i64, i64* %7092, align 8, !dbg !400
  %7094 = shl i64 %7093, 30, !dbg !400
  %7095 = or i64 %7091, %7094, !dbg !400
  %7096 = xor i64 %7088, %7095, !dbg !400
  %7097 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !400
  %7098 = load i64, i64* %7097, align 8, !dbg !400
  %7099 = lshr i64 %7098, 39, !dbg !400
  %7100 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !400
  %7101 = load i64, i64* %7100, align 8, !dbg !400
  %7102 = shl i64 %7101, 25, !dbg !400
  %7103 = or i64 %7099, %7102, !dbg !400
  %7104 = xor i64 %7096, %7103, !dbg !400
  %7105 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 1, !dbg !400
  %7106 = load i64, i64* %7105, align 8, !dbg !400
  %7107 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !400
  %7108 = load i64, i64* %7107, align 16, !dbg !400
  %7109 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !400
  %7110 = load i64, i64* %7109, align 8, !dbg !400
  %7111 = or i64 %7108, %7110, !dbg !400
  %7112 = and i64 %7106, %7111, !dbg !400
  %7113 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 2, !dbg !400
  %7114 = load i64, i64* %7113, align 16, !dbg !400
  %7115 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 3, !dbg !400
  %7116 = load i64, i64* %7115, align 8, !dbg !400
  %7117 = and i64 %7114, %7116, !dbg !400
  %7118 = or i64 %7112, %7117, !dbg !400
  %7119 = add i64 %7104, %7118, !dbg !400
  store i64 %7119, i64* %6, align 8, !dbg !400
  %7120 = load i64, i64* %5, align 8, !dbg !400
  %7121 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 4, !dbg !400
  %7122 = load i64, i64* %7121, align 16, !dbg !400
  %7123 = add i64 %7122, %7120, !dbg !400
  store i64 %7123, i64* %7121, align 16, !dbg !400
  %7124 = load i64, i64* %5, align 8, !dbg !400
  %7125 = load i64, i64* %6, align 8, !dbg !400
  %7126 = add i64 %7124, %7125, !dbg !400
  %7127 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !400
  store i64 %7126, i64* %7127, align 16, !dbg !400
  call void @llvm.dbg.value(metadata i32 0, metadata !296, metadata !DIExpression()), !dbg !281
  br label %7128, !dbg !401

7128:                                             ; preds = %7138, %84
  %.1 = phi i32 [ 0, %84 ], [ %7139, %7138 ], !dbg !403
  call void @llvm.dbg.value(metadata i32 %.1, metadata !296, metadata !DIExpression()), !dbg !281
  %7129 = icmp slt i32 %.1, 8, !dbg !404
  br i1 %7129, label %7130, label %7140, !dbg !406

7130:                                             ; preds = %7128
  %7131 = sext i32 %.1 to i64, !dbg !407
  %7132 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 %7131, !dbg !407
  %7133 = load i64, i64* %7132, align 8, !dbg !407
  %7134 = sext i32 %.1 to i64, !dbg !409
  %7135 = getelementptr inbounds i64, i64* %0, i64 %7134, !dbg !409
  %7136 = load i64, i64* %7135, align 8, !dbg !410
  %7137 = add i64 %7136, %7133, !dbg !410
  store i64 %7137, i64* %7135, align 8, !dbg !410
  br label %7138, !dbg !411

7138:                                             ; preds = %7130
  %7139 = add nsw i32 %.1, 1, !dbg !412
  call void @llvm.dbg.value(metadata i32 %7139, metadata !296, metadata !DIExpression()), !dbg !281
  br label %7128, !dbg !413, !llvm.loop !414

7140:                                             ; preds = %7128
  %7141 = getelementptr inbounds [80 x i64], [80 x i64]* %3, i64 0, i64 0, !dbg !416
  %7142 = bitcast i64* %7141 to i8*, !dbg !417
  call void @sodium_memzero(i8* %7142, i64 640), !dbg !418
  %7143 = getelementptr inbounds [8 x i64], [8 x i64]* %4, i64 0, i64 0, !dbg !419
  %7144 = bitcast i64* %7143 to i8*, !dbg !420
  call void @sodium_memzero(i8* %7144, i64 64), !dbg !421
  %7145 = bitcast i64* %5 to i8*, !dbg !422
  call void @sodium_memzero(i8* %7145, i64 8), !dbg !423
  %7146 = bitcast i64* %6 to i8*, !dbg !424
  call void @sodium_memzero(i8* %7146, i64 8), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind uwtable
define internal void @be64dec_vect(i64* %0, i8* %1, i64 %2) #0 !dbg !427 {
  call void @llvm.dbg.value(metadata i64* %0, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i8* %1, metadata !432, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i64 %2, metadata !433, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i64 0, metadata !434, metadata !DIExpression()), !dbg !431
  br label %4, !dbg !435

4:                                                ; preds = %12, %3
  %.0 = phi i64 [ 0, %3 ], [ %13, %12 ], !dbg !437
  call void @llvm.dbg.value(metadata i64 %.0, metadata !434, metadata !DIExpression()), !dbg !431
  %5 = udiv i64 %2, 8, !dbg !438
  %6 = icmp ult i64 %.0, %5, !dbg !440
  br i1 %6, label %7, label %14, !dbg !441

7:                                                ; preds = %4
  %8 = mul i64 %.0, 8, !dbg !442
  %9 = getelementptr inbounds i8, i8* %1, i64 %8, !dbg !444
  %10 = call i64 @_sha512_be64dec(i8* %9), !dbg !445
  %11 = getelementptr inbounds i64, i64* %0, i64 %.0, !dbg !446
  store i64 %10, i64* %11, align 8, !dbg !447
  br label %12, !dbg !448

12:                                               ; preds = %7
  %13 = add i64 %.0, 1, !dbg !449
  call void @llvm.dbg.value(metadata i64 %13, metadata !434, metadata !DIExpression()), !dbg !431
  br label %4, !dbg !450, !llvm.loop !451

14:                                               ; preds = %4
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @_sha512_be64dec(i8* %0) #0 !dbg !454 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i8* %0, metadata !461, metadata !DIExpression()), !dbg !460
  %2 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !462
  %3 = load i8, i8* %2, align 1, !dbg !462
  %4 = zext i8 %3 to i64, !dbg !463
  %5 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !464
  %6 = load i8, i8* %5, align 1, !dbg !464
  %7 = zext i8 %6 to i64, !dbg !465
  %8 = shl i64 %7, 8, !dbg !466
  %9 = add i64 %4, %8, !dbg !467
  %10 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !468
  %11 = load i8, i8* %10, align 1, !dbg !468
  %12 = zext i8 %11 to i64, !dbg !469
  %13 = shl i64 %12, 16, !dbg !470
  %14 = add i64 %9, %13, !dbg !471
  %15 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !472
  %16 = load i8, i8* %15, align 1, !dbg !472
  %17 = zext i8 %16 to i64, !dbg !473
  %18 = shl i64 %17, 24, !dbg !474
  %19 = add i64 %14, %18, !dbg !475
  %20 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !476
  %21 = load i8, i8* %20, align 1, !dbg !476
  %22 = zext i8 %21 to i64, !dbg !477
  %23 = shl i64 %22, 32, !dbg !478
  %24 = add i64 %19, %23, !dbg !479
  %25 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !480
  %26 = load i8, i8* %25, align 1, !dbg !480
  %27 = zext i8 %26 to i64, !dbg !481
  %28 = shl i64 %27, 40, !dbg !482
  %29 = add i64 %24, %28, !dbg !483
  %30 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !484
  %31 = load i8, i8* %30, align 1, !dbg !484
  %32 = zext i8 %31 to i64, !dbg !485
  %33 = shl i64 %32, 48, !dbg !486
  %34 = add i64 %29, %33, !dbg !487
  %35 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !488
  %36 = load i8, i8* %35, align 1, !dbg !488
  %37 = zext i8 %36 to i64, !dbg !489
  %38 = shl i64 %37, 56, !dbg !490
  %39 = add i64 %34, %38, !dbg !491
  ret i64 %39, !dbg !492
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha512_final(%struct.crypto_hash_sha512_state* %0, i8* %1) #0 !dbg !493 {
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha512_state* %0, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i8* %1, metadata !498, metadata !DIExpression()), !dbg !497
  call void @SHA512_Pad(%struct.crypto_hash_sha512_state* %0), !dbg !499
  %3 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 0, !dbg !500
  %4 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 0, !dbg !501
  call void @be64enc_vect(i8* %1, i64* %4, i64 64), !dbg !502
  %5 = bitcast %struct.crypto_hash_sha512_state* %0 to i8*, !dbg !503
  call void @sodium_memzero(i8* %5, i64 208), !dbg !504
  ret i32 0, !dbg !505
}

; Function Attrs: noinline nounwind uwtable
define internal void @SHA512_Pad(%struct.crypto_hash_sha512_state* %0) #0 !dbg !506 {
  %2 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha512_state* %0, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata [16 x i8]* %2, metadata !511, metadata !DIExpression()), !dbg !512
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0, !dbg !513
  %4 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 1, !dbg !514
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0, !dbg !515
  call void @be64enc_vect(i8* %3, i64* %5, i64 16), !dbg !516
  %6 = getelementptr inbounds %struct.crypto_hash_sha512_state, %struct.crypto_hash_sha512_state* %0, i32 0, i32 1, !dbg !517
  %7 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1, !dbg !518
  %8 = load i64, i64* %7, align 8, !dbg !518
  %9 = lshr i64 %8, 3, !dbg !519
  %10 = and i64 %9, 127, !dbg !520
  call void @llvm.dbg.value(metadata i64 %10, metadata !521, metadata !DIExpression()), !dbg !510
  %11 = icmp ult i64 %10, 112, !dbg !522
  br i1 %11, label %12, label %14, !dbg !523

12:                                               ; preds = %1
  %13 = sub i64 112, %10, !dbg !524
  br label %16, !dbg !523

14:                                               ; preds = %1
  %15 = sub i64 240, %10, !dbg !525
  br label %16, !dbg !523

16:                                               ; preds = %14, %12
  %17 = phi i64 [ %13, %12 ], [ %15, %14 ], !dbg !523
  call void @llvm.dbg.value(metadata i64 %17, metadata !526, metadata !DIExpression()), !dbg !510
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* bitcast (<{ i8, [127 x i8] }>* @PAD to [128 x i8]*), i64 0, i64 0
  %19 = call i32 @crypto_hash_sha512_update(%struct.crypto_hash_sha512_state* %0, i8* %18, i64 %17), !dbg !527
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0, !dbg !528
  %21 = call i32 @crypto_hash_sha512_update(%struct.crypto_hash_sha512_state* %0, i8* %20, i64 16), !dbg !529
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind uwtable
define internal void @be64enc_vect(i8* %0, i64* %1, i64 %2) #0 !dbg !531 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !536, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i64* %1, metadata !538, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i64 %2, metadata !539, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i64 0, metadata !540, metadata !DIExpression()), !dbg !537
  br label %4, !dbg !541

4:                                                ; preds = %12, %3
  %.0 = phi i64 [ 0, %3 ], [ %13, %12 ], !dbg !543
  call void @llvm.dbg.value(metadata i64 %.0, metadata !540, metadata !DIExpression()), !dbg !537
  %5 = udiv i64 %2, 8, !dbg !544
  %6 = icmp ult i64 %.0, %5, !dbg !546
  br i1 %6, label %7, label %14, !dbg !547

7:                                                ; preds = %4
  %8 = mul i64 %.0, 8, !dbg !548
  %9 = getelementptr inbounds i8, i8* %0, i64 %8, !dbg !550
  %10 = getelementptr inbounds i64, i64* %1, i64 %.0, !dbg !551
  %11 = load i64, i64* %10, align 8, !dbg !551
  call void @_sha512_be64enc(i8* %9, i64 %11), !dbg !552
  br label %12, !dbg !553

12:                                               ; preds = %7
  %13 = add i64 %.0, 1, !dbg !554
  call void @llvm.dbg.value(metadata i64 %13, metadata !540, metadata !DIExpression()), !dbg !537
  br label %4, !dbg !555, !llvm.loop !556

14:                                               ; preds = %4
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind uwtable
define internal void @_sha512_be64enc(i8* %0, i64 %1) #0 !dbg !559 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64 %1, metadata !564, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i8* %0, metadata !565, metadata !DIExpression()), !dbg !563
  %3 = and i64 %1, 255, !dbg !566
  %4 = trunc i64 %3 to i8, !dbg !567
  %5 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !568
  store i8 %4, i8* %5, align 1, !dbg !569
  %6 = lshr i64 %1, 8, !dbg !570
  %7 = and i64 %6, 255, !dbg !571
  %8 = trunc i64 %7 to i8, !dbg !572
  %9 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !573
  store i8 %8, i8* %9, align 1, !dbg !574
  %10 = lshr i64 %1, 16, !dbg !575
  %11 = and i64 %10, 255, !dbg !576
  %12 = trunc i64 %11 to i8, !dbg !577
  %13 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !578
  store i8 %12, i8* %13, align 1, !dbg !579
  %14 = lshr i64 %1, 24, !dbg !580
  %15 = and i64 %14, 255, !dbg !581
  %16 = trunc i64 %15 to i8, !dbg !582
  %17 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !583
  store i8 %16, i8* %17, align 1, !dbg !584
  %18 = lshr i64 %1, 32, !dbg !585
  %19 = and i64 %18, 255, !dbg !586
  %20 = trunc i64 %19 to i8, !dbg !587
  %21 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !588
  store i8 %20, i8* %21, align 1, !dbg !589
  %22 = lshr i64 %1, 40, !dbg !590
  %23 = and i64 %22, 255, !dbg !591
  %24 = trunc i64 %23 to i8, !dbg !592
  %25 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !593
  store i8 %24, i8* %25, align 1, !dbg !594
  %26 = lshr i64 %1, 48, !dbg !595
  %27 = and i64 %26, 255, !dbg !596
  %28 = trunc i64 %27 to i8, !dbg !597
  %29 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !598
  store i8 %28, i8* %29, align 1, !dbg !599
  %30 = lshr i64 %1, 56, !dbg !600
  %31 = and i64 %30, 255, !dbg !601
  %32 = trunc i64 %31 to i8, !dbg !602
  %33 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !603
  store i8 %32, i8* %33, align 1, !dbg !604
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha512(i8* %0, i8* %1, i64 %2) #0 !dbg !606 {
  %4 = alloca %struct.crypto_hash_sha512_state, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !609, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i8* %1, metadata !611, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.value(metadata i64 %2, metadata !612, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.declare(metadata %struct.crypto_hash_sha512_state* %4, metadata !613, metadata !DIExpression()), !dbg !614
  %5 = call i32 @crypto_hash_sha512_init(%struct.crypto_hash_sha512_state* %4), !dbg !615
  %6 = call i32 @crypto_hash_sha512_update(%struct.crypto_hash_sha512_state* %4, i8* %1, i64 %2), !dbg !616
  %7 = call i32 @crypto_hash_sha512_final(%struct.crypto_hash_sha512_state* %4, i8* %0), !dbg !617
  ret i32 0, !dbg !618
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !619 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !623, metadata !DIExpression()), !dbg !624
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation, align 8, !dbg !625
  ret i32 0, !dbg !626
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !627 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !628
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !629
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !629
  %4 = call i8* %3(), !dbg !628
  ret i8* %4, !dbg !630
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !631 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !632
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !633
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !633
  %4 = call i32 %3(), !dbg !632
  ret i32 %4, !dbg !634
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !635 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !636
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !638
  br i1 %2, label %3, label %12, !dbg !639

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !640
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !641
  %6 = load void ()*, void ()** %5, align 8, !dbg !641
  %7 = icmp ne void ()* %6, null, !dbg !642
  br i1 %7, label %8, label %12, !dbg !643

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !644
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !646
  %11 = load void ()*, void ()** %10, align 8, !dbg !646
  call void %11(), !dbg !644
  br label %12, !dbg !647

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !649 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !650, metadata !DIExpression()), !dbg !651
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !652
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !654
  br i1 %3, label %4, label %14, !dbg !655

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !656
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !657
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !657
  %8 = icmp ne i32 (i32)* %7, null, !dbg !658
  br i1 %8, label %9, label %14, !dbg !659

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !660
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !662
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !662
  %13 = call i32 %12(i32 %0), !dbg !660
  br label %26, !dbg !663

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !664
  br i1 %15, label %16, label %17, !dbg !666

16:                                               ; preds = %14
  br label %26, !dbg !667

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !669
  %19 = urem i32 %18, %0, !dbg !670
  call void @llvm.dbg.value(metadata i32 %19, metadata !671, metadata !DIExpression()), !dbg !651
  br label %20, !dbg !672

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !673
  call void @llvm.dbg.value(metadata i32 %21, metadata !675, metadata !DIExpression()), !dbg !651
  br label %22, !dbg !676

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !677
  br i1 %23, label %20, label %24, !dbg !676, !llvm.loop !678

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !680
  br label %26, !dbg !681

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !651
  ret i32 %.0, !dbg !682
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !684, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i64 %1, metadata !686, metadata !DIExpression()), !dbg !685
  %3 = icmp ugt i64 %1, 0, !dbg !687
  br i1 %3, label %4, label %8, !dbg !689

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !690
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !692
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !692
  call void %7(i8* %0, i64 %1), !dbg !690
  br label %8, !dbg !693

8:                                                ; preds = %4, %2
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !695 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !696
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !698
  br i1 %2, label %3, label %13, !dbg !699

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !700
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !701
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !701
  %7 = icmp ne i32 ()* %6, null, !dbg !702
  br i1 %7, label %8, label %13, !dbg !703

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !704
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !706
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !706
  %12 = call i32 %11(), !dbg !704
  br label %14, !dbg !707

13:                                               ; preds = %3, %0
  br label %14, !dbg !708

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !709
  ret i32 %.0, !dbg !710
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !716, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64 %1, metadata !718, metadata !DIExpression()), !dbg !717
  %3 = icmp ule i64 %1, -1, !dbg !719
  br i1 %3, label %4, label %5, !dbg !722

4:                                                ; preds = %2
  br label %9, !dbg !722

5:                                                ; preds = %2
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* @.str, i64 0, i64 0
  %7 = getelementptr inbounds [53 x i8], [53 x i8]* @.str.1, i64 0, i64 0
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #9, !dbg !719
  unreachable, !dbg !719

9:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !723
  ret void, !dbg !724
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !725 {
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.7, i64 0, i64 0
  ret i8* %1, !dbg !726
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !727 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !728, metadata !DIExpression()), !dbg !729
  %2 = bitcast i32* %1 to i8*, !dbg !730
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !731
  %3 = load i32, i32* %1, align 4, !dbg !732
  ret i32 %3, !dbg !733
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !734 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  %2 = load i32, i32* %1, align 4, !dbg !735
  %3 = icmp eq i32 %2, 0, !dbg !737
  br i1 %3, label %4, label %6, !dbg !738

4:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !739
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  store i32 1, i32* %5, align 4, !dbg !741
  br label %6, !dbg !742

6:                                                ; preds = %4, %0
  ret void, !dbg !743
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !744 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !745, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i64 %1, metadata !747, metadata !DIExpression()), !dbg !746
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !748
  %3 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  %4 = load i32, i32* %3, align 4, !dbg !749
  %5 = icmp ne i32 %4, 0, !dbg !751
  br i1 %5, label %6, label %11, !dbg !752

6:                                                ; preds = %2
  %7 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !753
  %8 = icmp ne i32 %7, 0, !dbg !756
  br i1 %8, label %9, label %10, !dbg !757

9:                                                ; preds = %6
  call void @abort() #9, !dbg !758
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  br label %21, !dbg !760

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %13 = load i32, i32* %12, align 4, !dbg !761
  %14 = icmp eq i32 %13, -1, !dbg !763
  br i1 %14, label %20, label %15, !dbg !764

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %17 = load i32, i32* %16, align 4, !dbg !765
  %18 = call i64 @safe_read(i32 %17, i8* %0, i64 %1), !dbg !766
  %19 = icmp ne i64 %18, %1, !dbg !767
  br i1 %19, label %20, label %21, !dbg !768

20:                                               ; preds = %15, %11
  call void @abort() #9, !dbg !769
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %15, %10
  ret void, !dbg !771

UnifiedUnreachableBlock:                          ; preds = %20, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !772 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !773, metadata !DIExpression()), !dbg !774
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %2 = load i32, i32* %1, align 4, !dbg !775
  %3 = icmp ne i32 %2, -1, !dbg !777
  br i1 %3, label %4, label %12, !dbg !778

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !dbg !779
  %7 = call i32 @close(i32 %6), !dbg !780
  %8 = icmp eq i32 %7, 0, !dbg !781
  br i1 %8, label %9, label %12, !dbg !782

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  store i32 -1, i32* %10, align 4, !dbg !783
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  store i32 0, i32* %11, align 4, !dbg !785
  call void @llvm.dbg.value(metadata i32 0, metadata !773, metadata !DIExpression()), !dbg !774
  br label %12, !dbg !786

12:                                               ; preds = %9, %4, %0
  %.0 = phi i32 [ 0, %9 ], [ -1, %4 ], [ -1, %0 ], !dbg !774
  call void @llvm.dbg.value(metadata i32 %.0, metadata !773, metadata !DIExpression()), !dbg !774
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  %14 = load i32, i32* %13, align 4, !dbg !787
  %15 = icmp ne i32 %14, 0, !dbg !789
  br i1 %15, label %16, label %17, !dbg !790

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !773, metadata !DIExpression()), !dbg !774
  br label %17, !dbg !791

17:                                               ; preds = %16, %12
  %.1 = phi i32 [ 0, %16 ], [ %.0, %12 ], !dbg !774
  call void @llvm.dbg.value(metadata i32 %.1, metadata !773, metadata !DIExpression()), !dbg !774
  ret i32 %.1, !dbg !793
}

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !794 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  %2 = load i32, i32* %1, align 4, !dbg !795
  %3 = icmp eq i32 %2, 0, !dbg !797
  br i1 %3, label %4, label %5, !dbg !798

4:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !799
  br label %5, !dbg !801

5:                                                ; preds = %4, %0
  ret void, !dbg !802
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !803 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i64 %1, metadata !808, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i8* %0, metadata !809, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i64 256, metadata !810, metadata !DIExpression()), !dbg !807
  br label %3, !dbg !811

3:                                                ; preds = %20, %2
  %.03 = phi i8* [ %0, %2 ], [ %19, %20 ], !dbg !807
  %.02 = phi i64 [ %1, %2 ], [ %18, %20 ]
  %.01 = phi i64 [ 256, %2 ], [ %.1, %20 ], !dbg !807
  call void @llvm.dbg.value(metadata i64 %.01, metadata !810, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i64 %.02, metadata !808, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i8* %.03, metadata !809, metadata !DIExpression()), !dbg !807
  %4 = icmp ult i64 %.02, %.01, !dbg !812
  br i1 %4, label %5, label %13, !dbg !815

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !810, metadata !DIExpression()), !dbg !807
  %6 = icmp ugt i64 %.02, 0, !dbg !816
  br i1 %6, label %7, label %8, !dbg !820

7:                                                ; preds = %5
  br label %12, !dbg !820

8:                                                ; preds = %5
  %9 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.3, i64 0, i64 0
  %10 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %11 = getelementptr inbounds [53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0
  call void @__assert_fail(i8* %9, i8* %10, i32 159, i8* %11) #9, !dbg !816
  unreachable, !dbg !816

12:                                               ; preds = %7
  br label %13, !dbg !821

13:                                               ; preds = %12, %3
  %.1 = phi i64 [ %.02, %12 ], [ %.01, %3 ], !dbg !807
  call void @llvm.dbg.value(metadata i64 %.1, metadata !810, metadata !DIExpression()), !dbg !807
  %14 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !822
  %15 = icmp ne i32 %14, 0, !dbg !824
  br i1 %15, label %16, label %17, !dbg !825

16:                                               ; preds = %13
  br label %23, !dbg !826

17:                                               ; preds = %13
  %18 = sub i64 %.02, %.1, !dbg !828
  call void @llvm.dbg.value(metadata i64 %18, metadata !808, metadata !DIExpression()), !dbg !807
  %19 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !829
  call void @llvm.dbg.value(metadata i8* %19, metadata !809, metadata !DIExpression()), !dbg !807
  br label %20, !dbg !830

20:                                               ; preds = %17
  %21 = icmp ugt i64 %18, 0, !dbg !831
  br i1 %21, label %3, label %22, !dbg !830, !llvm.loop !832

22:                                               ; preds = %20
  br label %23, !dbg !834

23:                                               ; preds = %22, %16
  %.0 = phi i32 [ -1, %16 ], [ 0, %22 ], !dbg !807
  ret i32 %.0, !dbg !835
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !836 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !840, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8* %1, metadata !842, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 %2, metadata !843, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8* %1, metadata !844, metadata !DIExpression()), !dbg !841
  %4 = icmp ugt i64 %2, 0, !dbg !845
  br i1 %4, label %5, label %6, !dbg !848

5:                                                ; preds = %3
  br label %10, !dbg !848

6:                                                ; preds = %3
  %7 = getelementptr inbounds [19 x i8], [19 x i8]* @.str.6, i64 0, i64 0
  %8 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0
  call void @__assert_fail(i8* %7, i8* %8, i32 82, i8* %9) #9, !dbg !845
  unreachable, !dbg !845

10:                                               ; preds = %5
  br label %11, !dbg !849

11:                                               ; preds = %37, %10
  %.02 = phi i64 [ %2, %10 ], [ %35, %37 ]
  %.01 = phi i8* [ %1, %10 ], [ %36, %37 ], !dbg !841
  call void @llvm.dbg.value(metadata i8* %.01, metadata !844, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 %.02, metadata !843, metadata !DIExpression()), !dbg !841
  br label %12, !dbg !850

12:                                               ; preds = %27, %11
  %13 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !852
  call void @llvm.dbg.value(metadata i64 %13, metadata !853, metadata !DIExpression()), !dbg !841
  %14 = icmp slt i64 %13, 0, !dbg !854
  br i1 %14, label %15, label %25, !dbg !855

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #10, !dbg !856
  %17 = load i32, i32* %16, align 4, !dbg !856
  %18 = icmp eq i32 %17, 4, !dbg !857
  br i1 %18, label %23, label %19, !dbg !858

19:                                               ; preds = %15
  %20 = call i32* @__errno_location() #10, !dbg !859
  %21 = load i32, i32* %20, align 4, !dbg !859
  %22 = icmp eq i32 %21, 11, !dbg !860
  br label %23, !dbg !858

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi i1 [ false, %12 ], [ %24, %23 ], !dbg !861
  br i1 %26, label %27, label %28, !dbg !850

27:                                               ; preds = %25
  br label %12, !dbg !850, !llvm.loop !862

28:                                               ; preds = %25
  %29 = icmp slt i64 %13, 0, !dbg !864
  br i1 %29, label %30, label %31, !dbg !866

30:                                               ; preds = %28
  br label %43, !dbg !867

31:                                               ; preds = %28
  %32 = icmp eq i64 %13, 0, !dbg !869
  br i1 %32, label %33, label %34, !dbg !871

33:                                               ; preds = %31
  br label %39, !dbg !872

34:                                               ; preds = %31
  %35 = sub i64 %.02, %13, !dbg !874
  call void @llvm.dbg.value(metadata i64 %35, metadata !843, metadata !DIExpression()), !dbg !841
  %36 = getelementptr inbounds i8, i8* %.01, i64 %13, !dbg !875
  call void @llvm.dbg.value(metadata i8* %36, metadata !844, metadata !DIExpression()), !dbg !841
  br label %37, !dbg !876

37:                                               ; preds = %34
  %38 = icmp ugt i64 %35, 0, !dbg !877
  br i1 %38, label %11, label %39, !dbg !876, !llvm.loop !878

39:                                               ; preds = %37, %33
  %.1 = phi i8* [ %.01, %33 ], [ %36, %37 ], !dbg !841
  call void @llvm.dbg.value(metadata i8* %.1, metadata !844, metadata !DIExpression()), !dbg !841
  %40 = ptrtoint i8* %.1 to i64, !dbg !880
  %41 = ptrtoint i8* %1 to i64, !dbg !880
  %42 = sub i64 %40, %41, !dbg !880
  br label %43, !dbg !881

43:                                               ; preds = %39, %30
  %.0 = phi i64 [ %13, %30 ], [ %42, %39 ], !dbg !841
  ret i64 %.0, !dbg !882
}

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !883 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i64 %1, metadata !888, metadata !DIExpression()), !dbg !887
  %3 = icmp ule i64 %1, 256, !dbg !889
  br i1 %3, label %4, label %5, !dbg !892

4:                                                ; preds = %2
  br label %9, !dbg !892

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.5, i64 0, i64 0
  %7 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %8 = getelementptr inbounds [60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #9, !dbg !889
  unreachable, !dbg !889

9:                                                ; preds = %4
  br label %10, !dbg !893

10:                                               ; preds = %26, %9
  %11 = trunc i64 %1 to i32, !dbg !894
  %12 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %11, i32 0) #11, !dbg !896
  %13 = trunc i64 %12 to i32, !dbg !896
  call void @llvm.dbg.value(metadata i32 %13, metadata !897, metadata !DIExpression()), !dbg !887
  br label %14, !dbg !898

14:                                               ; preds = %10
  %15 = icmp slt i32 %13, 0, !dbg !899
  br i1 %15, label %16, label %26, !dbg !900

16:                                               ; preds = %14
  %17 = call i32* @__errno_location() #10, !dbg !901
  %18 = load i32, i32* %17, align 4, !dbg !901
  %19 = icmp eq i32 %18, 4, !dbg !902
  br i1 %19, label %24, label %20, !dbg !903

20:                                               ; preds = %16
  %21 = call i32* @__errno_location() #10, !dbg !904
  %22 = load i32, i32* %21, align 4, !dbg !904
  %23 = icmp eq i32 %22, 11, !dbg !905
  br label %24, !dbg !903

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i1 [ false, %14 ], [ %25, %24 ], !dbg !887
  br i1 %27, label %10, label %28, !dbg !898, !llvm.loop !906

28:                                               ; preds = %26
  %29 = trunc i64 %1 to i32, !dbg !908
  %30 = icmp eq i32 %13, %29, !dbg !909
  %31 = zext i1 %30 to i32, !dbg !909
  %32 = sub nsw i32 %31, 1, !dbg !910
  ret i32 %32, !dbg !911
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #6

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !912 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32* @__errno_location() #10, !dbg !913
  %3 = load i32, i32* %2, align 4, !dbg !913
  call void @llvm.dbg.value(metadata i32 %3, metadata !914, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !916, metadata !DIExpression()), !dbg !918
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !919
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !921
  %6 = icmp eq i32 %5, 0, !dbg !922
  br i1 %6, label %7, label %10, !dbg !923

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  store i32 1, i32* %8, align 4, !dbg !924
  %9 = call i32* @__errno_location() #10, !dbg !926
  store i32 %3, i32* %9, align 4, !dbg !927
  br label %18, !dbg !928

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  store i32 0, i32* %11, align 4, !dbg !929
  %12 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !930
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  store i32 %12, i32* %13, align 4, !dbg !932
  %14 = icmp eq i32 %12, -1, !dbg !933
  br i1 %14, label %15, label %16, !dbg !934

15:                                               ; preds = %10
  call void @abort() #9, !dbg !935
  unreachable, !dbg !935

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #10, !dbg !937
  store i32 %3, i32* %17, align 4, !dbg !938
  br label %18, !dbg !939

18:                                               ; preds = %16, %7
  ret void, !dbg !939
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !92 {
  %1 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !940, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !977, metadata !DIExpression()), !dbg !979
  %2 = getelementptr inbounds [3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0
  br label %3, !dbg !980

3:                                                ; preds = %29, %0
  %.01 = phi i8** [ %2, %0 ], [ %.1, %29 ], !dbg !979
  call void @llvm.dbg.value(metadata i8** %.01, metadata !977, metadata !DIExpression()), !dbg !979
  %4 = load i8*, i8** %.01, align 8, !dbg !981
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 0), !dbg !983
  call void @llvm.dbg.value(metadata i32 %5, metadata !984, metadata !DIExpression()), !dbg !979
  %6 = icmp ne i32 %5, -1, !dbg !985
  br i1 %6, label %7, label %21, !dbg !987

7:                                                ; preds = %3
  %8 = call i32 @fstat(i32 %5, %struct.stat* %1) #11, !dbg !988
  %9 = icmp eq i32 %8, 0, !dbg !991
  br i1 %9, label %10, label %19, !dbg !992

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !993
  %12 = load i32, i32* %11, align 8, !dbg !993
  %13 = and i32 %12, 61440, !dbg !993
  %14 = icmp eq i32 %13, 8192, !dbg !993
  br i1 %14, label %15, label %19, !dbg !994

15:                                               ; preds = %10
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 1), !dbg !995
  %17 = or i32 %16, 1, !dbg !997
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 2, i32 %17), !dbg !998
  br label %34, !dbg !999

19:                                               ; preds = %10, %7
  %20 = call i32 @close(i32 %5), !dbg !1000
  br label %27, !dbg !1001

21:                                               ; preds = %3
  %22 = call i32* @__errno_location() #10, !dbg !1002
  %23 = load i32, i32* %22, align 4, !dbg !1002
  %24 = icmp eq i32 %23, 4, !dbg !1004
  br i1 %24, label %25, label %26, !dbg !1005

25:                                               ; preds = %21
  br label %29, !dbg !1006

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !1008
  call void @llvm.dbg.value(metadata i8** %28, metadata !977, metadata !DIExpression()), !dbg !979
  br label %29, !dbg !1009

29:                                               ; preds = %27, %25
  %.1 = phi i8** [ %28, %27 ], [ %.01, %25 ], !dbg !979
  call void @llvm.dbg.value(metadata i8** %.1, metadata !977, metadata !DIExpression()), !dbg !979
  %30 = load i8*, i8** %.1, align 8, !dbg !1010
  %31 = icmp ne i8* %30, null, !dbg !1011
  br i1 %31, label %3, label %32, !dbg !1009, !llvm.loop !1012

32:                                               ; preds = %29
  %33 = call i32* @__errno_location() #10, !dbg !1014
  store i32 5, i32* %33, align 4, !dbg !1015
  br label %34, !dbg !1016

34:                                               ; preds = %32, %15
  %.0 = phi i32 [ %5, %15 ], [ -1, %32 ], !dbg !979
  ret i32 %.0, !dbg !1017
}

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #6

declare dso_local i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !1018 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1019, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i64 %1, metadata !1021, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i8* %0, metadata !1022, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata i64 0, metadata !1023, metadata !DIExpression()), !dbg !1020
  br label %3, !dbg !1024

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !1020
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1023, metadata !DIExpression()), !dbg !1020
  %4 = icmp ult i64 %.0, %1, !dbg !1025
  br i1 %4, label %5, label %8, !dbg !1024

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %6, metadata !1023, metadata !DIExpression()), !dbg !1020
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1028
  store volatile i8 0, i8* %7, align 1, !dbg !1029
  br label %3, !dbg !1024, !llvm.loop !1030

8:                                                ; preds = %3
  ret void, !dbg !1032
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !1033 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1037, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %1, metadata !1039, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %2, metadata !1040, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %0, metadata !1041, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %1, metadata !1042, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8 0, metadata !1043, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression()), !dbg !1038
  br label %4, !dbg !1045

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !1047
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !1038
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1043, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1044, metadata !DIExpression()), !dbg !1038
  %5 = icmp ult i64 %.01, %2, !dbg !1048
  br i1 %5, label %6, label %19, !dbg !1050

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !1051
  %8 = load i8, i8* %7, align 1, !dbg !1051
  %9 = zext i8 %8 to i32, !dbg !1051
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !1053
  %11 = load i8, i8* %10, align 1, !dbg !1053
  %12 = zext i8 %11 to i32, !dbg !1053
  %13 = xor i32 %9, %12, !dbg !1054
  %14 = zext i8 %.0 to i32, !dbg !1055
  %15 = or i32 %14, %13, !dbg !1055
  %16 = trunc i32 %15 to i8, !dbg !1055
  call void @llvm.dbg.value(metadata i8 %16, metadata !1043, metadata !DIExpression()), !dbg !1038
  br label %17, !dbg !1056

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %18, metadata !1044, metadata !DIExpression()), !dbg !1038
  br label %4, !dbg !1058, !llvm.loop !1059

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !1061
  %21 = sub nsw i32 %20, 1, !dbg !1062
  %22 = ashr i32 %21, 8, !dbg !1063
  %23 = and i32 1, %22, !dbg !1064
  %24 = sub nsw i32 %23, 1, !dbg !1065
  ret i32 %24, !dbg !1066
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !1067 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1073, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i64 %1, metadata !1075, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i8* %2, metadata !1076, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i64 %3, metadata !1077, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i64 0, metadata !1078, metadata !DIExpression()), !dbg !1074
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !1079
  br i1 %5, label %9, label %6, !dbg !1081

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !1082
  %8 = icmp ult i64 %1, %7, !dbg !1083
  br i1 %8, label %9, label %10, !dbg !1084

9:                                                ; preds = %6, %4
  call void @abort() #9, !dbg !1085
  unreachable, !dbg !1085

10:                                               ; preds = %6
  br label %11, !dbg !1087

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !1074
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1078, metadata !DIExpression()), !dbg !1074
  %12 = icmp ult i64 %.0, %3, !dbg !1088
  br i1 %12, label %13, label %47, !dbg !1087

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1089
  %15 = load i8, i8* %14, align 1, !dbg !1089
  %16 = zext i8 %15 to i32, !dbg !1089
  %17 = and i32 %16, 15, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %17, metadata !1092, metadata !DIExpression()), !dbg !1074
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1093
  %19 = load i8, i8* %18, align 1, !dbg !1093
  %20 = zext i8 %19 to i32, !dbg !1093
  %21 = ashr i32 %20, 4, !dbg !1094
  call void @llvm.dbg.value(metadata i32 %21, metadata !1095, metadata !DIExpression()), !dbg !1074
  %22 = add i32 87, %17, !dbg !1096
  %23 = sub i32 %17, 10, !dbg !1097
  %24 = lshr i32 %23, 8, !dbg !1098
  %25 = and i32 %24, -39, !dbg !1099
  %26 = add i32 %22, %25, !dbg !1100
  %27 = trunc i32 %26 to i8, !dbg !1101
  %28 = zext i8 %27 to i32, !dbg !1101
  %29 = shl i32 %28, 8, !dbg !1102
  %30 = add i32 87, %21, !dbg !1103
  %31 = sub i32 %21, 10, !dbg !1104
  %32 = lshr i32 %31, 8, !dbg !1105
  %33 = and i32 %32, -39, !dbg !1106
  %34 = add i32 %30, %33, !dbg !1107
  %35 = trunc i32 %34 to i8, !dbg !1108
  %36 = zext i8 %35 to i32, !dbg !1108
  %37 = or i32 %29, %36, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %37, metadata !1110, metadata !DIExpression()), !dbg !1074
  %38 = trunc i32 %37 to i8, !dbg !1111
  %39 = mul i64 %.0, 2, !dbg !1112
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !1113
  store i8 %38, i8* %40, align 1, !dbg !1114
  %41 = lshr i32 %37, 8, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %41, metadata !1110, metadata !DIExpression()), !dbg !1074
  %42 = trunc i32 %41 to i8, !dbg !1116
  %43 = mul i64 %.0, 2, !dbg !1117
  %44 = add i64 %43, 1, !dbg !1118
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !1119
  store i8 %42, i8* %45, align 1, !dbg !1120
  %46 = add i64 %.0, 1, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %46, metadata !1078, metadata !DIExpression()), !dbg !1074
  br label %11, !dbg !1087, !llvm.loop !1122

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !1124
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !1125
  store i8 0, i8* %49, align 1, !dbg !1126
  ret i8* %0, !dbg !1127
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !1128 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1135, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64 %1, metadata !1137, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i8* %2, metadata !1138, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64 %3, metadata !1139, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i8* %4, metadata !1140, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64* %5, metadata !1141, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i8** %6, metadata !1142, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64 0, metadata !1143, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64 0, metadata !1144, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i32 0, metadata !1145, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i8 0, metadata !1146, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i8 0, metadata !1147, metadata !DIExpression()), !dbg !1136
  br label %8, !dbg !1148

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !1149
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !1136
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !1136
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !1136
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1147, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1146, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1144, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1143, metadata !DIExpression()), !dbg !1136
  %9 = icmp ult i64 %.03, %3, !dbg !1150
  br i1 %9, label %10, label %78, !dbg !1148

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !1151
  %12 = load i8, i8* %11, align 1, !dbg !1151
  call void @llvm.dbg.value(metadata i8 %12, metadata !1153, metadata !DIExpression()), !dbg !1136
  %13 = zext i8 %12 to i32, !dbg !1154
  %14 = xor i32 %13, 48, !dbg !1155
  %15 = trunc i32 %14 to i8, !dbg !1154
  call void @llvm.dbg.value(metadata i8 %15, metadata !1156, metadata !DIExpression()), !dbg !1136
  %16 = zext i8 %15 to i32, !dbg !1157
  %17 = sub i32 %16, 10, !dbg !1158
  %18 = lshr i32 %17, 8, !dbg !1159
  %19 = trunc i32 %18 to i8, !dbg !1160
  call void @llvm.dbg.value(metadata i8 %19, metadata !1161, metadata !DIExpression()), !dbg !1136
  %20 = zext i8 %12 to i32, !dbg !1162
  %21 = and i32 %20, -33, !dbg !1163
  %22 = sub i32 %21, 55, !dbg !1164
  %23 = trunc i32 %22 to i8, !dbg !1165
  call void @llvm.dbg.value(metadata i8 %23, metadata !1166, metadata !DIExpression()), !dbg !1136
  %24 = zext i8 %23 to i32, !dbg !1167
  %25 = sub i32 %24, 10, !dbg !1168
  %26 = zext i8 %23 to i32, !dbg !1169
  %27 = sub i32 %26, 16, !dbg !1170
  %28 = xor i32 %25, %27, !dbg !1171
  %29 = lshr i32 %28, 8, !dbg !1172
  %30 = trunc i32 %29 to i8, !dbg !1173
  call void @llvm.dbg.value(metadata i8 %30, metadata !1174, metadata !DIExpression()), !dbg !1136
  %31 = zext i8 %19 to i32, !dbg !1175
  %32 = zext i8 %30 to i32, !dbg !1177
  %33 = or i32 %31, %32, !dbg !1178
  %34 = icmp eq i32 %33, 0, !dbg !1179
  br i1 %34, label %35, label %47, !dbg !1180

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !1181
  br i1 %36, label %37, label %46, !dbg !1184

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !1185
  %39 = icmp eq i32 %38, 0, !dbg !1186
  br i1 %39, label %40, label %46, !dbg !1187

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !1188
  %42 = call i8* @strchr(i8* %4, i32 %41) #12, !dbg !1189
  %43 = icmp ne i8* %42, null, !dbg !1190
  br i1 %43, label %44, label %46, !dbg !1191

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %45, metadata !1144, metadata !DIExpression()), !dbg !1136
  br label %8, !dbg !1194, !llvm.loop !1195

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !1197

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !1198
  %49 = zext i8 %15 to i32, !dbg !1199
  %50 = and i32 %48, %49, !dbg !1200
  %51 = zext i8 %30 to i32, !dbg !1201
  %52 = zext i8 %23 to i32, !dbg !1202
  %53 = and i32 %51, %52, !dbg !1203
  %54 = or i32 %50, %53, !dbg !1204
  %55 = trunc i32 %54 to i8, !dbg !1205
  call void @llvm.dbg.value(metadata i8 %55, metadata !1206, metadata !DIExpression()), !dbg !1136
  %56 = icmp uge i64 %.05, %1, !dbg !1207
  br i1 %56, label %57, label %59, !dbg !1209

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !1145, metadata !DIExpression()), !dbg !1136
  %58 = call i32* @__errno_location() #10, !dbg !1210
  store i32 34, i32* %58, align 4, !dbg !1212
  br label %78, !dbg !1213

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !1214
  %61 = icmp eq i32 %60, 0, !dbg !1216
  br i1 %61, label %62, label %66, !dbg !1217

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !1218
  %64 = mul i32 %63, 16, !dbg !1220
  %65 = trunc i32 %64 to i8, !dbg !1218
  call void @llvm.dbg.value(metadata i8 %65, metadata !1146, metadata !DIExpression()), !dbg !1136
  br label %73, !dbg !1221

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !1222
  %68 = zext i8 %55 to i32, !dbg !1224
  %69 = or i32 %67, %68, !dbg !1225
  %70 = trunc i32 %69 to i8, !dbg !1222
  %71 = add i64 %.05, 1, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %71, metadata !1143, metadata !DIExpression()), !dbg !1136
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !1227
  store i8 %70, i8* %72, align 1, !dbg !1228
  br label %73

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !1136
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !1136
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1146, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64 %.16, metadata !1143, metadata !DIExpression()), !dbg !1136
  %74 = zext i8 %.0 to i32, !dbg !1229
  %75 = xor i32 %74, -1, !dbg !1230
  %76 = trunc i32 %75 to i8, !dbg !1230
  call void @llvm.dbg.value(metadata i8 %76, metadata !1147, metadata !DIExpression()), !dbg !1136
  %77 = add i64 %.03, 1, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %77, metadata !1144, metadata !DIExpression()), !dbg !1136
  br label %8, !dbg !1148, !llvm.loop !1195

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !1136
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1145, metadata !DIExpression()), !dbg !1136
  %79 = zext i8 %.0 to i32, !dbg !1232
  %80 = icmp ne i32 %79, 0, !dbg !1234
  br i1 %80, label %81, label %83, !dbg !1235

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %82, metadata !1144, metadata !DIExpression()), !dbg !1136
  br label %83, !dbg !1238

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !1136
  call void @llvm.dbg.value(metadata i64 %.14, metadata !1144, metadata !DIExpression()), !dbg !1136
  %84 = icmp ne i8** %6, null, !dbg !1239
  br i1 %84, label %85, label %87, !dbg !1241

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !1242
  store i8* %86, i8** %6, align 8, !dbg !1244
  br label %87, !dbg !1245

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !1246
  br i1 %88, label %89, label %90, !dbg !1248

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !1249
  br label %90, !dbg !1251

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !1252
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !1253 {
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* @canary, i64 0, i64 0
  call void @randombytes_buf(i8* %1, i64 16), !dbg !1254
  ret i32 0, !dbg !1255
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !1256 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1257, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i64 %1, metadata !1259, metadata !DIExpression()), !dbg !1258
  %3 = call i32* @__errno_location() #10, !dbg !1260
  store i32 38, i32* %3, align 4, !dbg !1261
  ret i32 -1, !dbg !1262
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !1263 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1264, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %1, metadata !1266, metadata !DIExpression()), !dbg !1265
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !1267
  %3 = call i32* @__errno_location() #10, !dbg !1268
  store i32 38, i32* %3, align 4, !dbg !1269
  ret i32 -1, !dbg !1270
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !1271 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1274, metadata !DIExpression()), !dbg !1275
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !1276
  call void @llvm.dbg.value(metadata i8* %2, metadata !1278, metadata !DIExpression()), !dbg !1275
  %3 = icmp eq i8* %2, null, !dbg !1279
  br i1 %3, label %4, label %5, !dbg !1280

4:                                                ; preds = %1
  br label %6, !dbg !1281

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !1283
  br label %6, !dbg !1284

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !1275
  ret i8* %.0, !dbg !1285
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !1286 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1287, metadata !DIExpression()), !dbg !1288
  %2 = call noalias i8* @malloc(i64 %0) #11, !dbg !1289
  ret i8* %2, !dbg !1290
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !1291 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1294, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i64 %1, metadata !1296, metadata !DIExpression()), !dbg !1295
  %3 = icmp ugt i64 %0, 0, !dbg !1297
  br i1 %3, label %4, label %9, !dbg !1299

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !1300
  %6 = icmp uge i64 %1, %5, !dbg !1301
  br i1 %6, label %7, label %9, !dbg !1302

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #10, !dbg !1303
  store i32 12, i32* %8, align 4, !dbg !1305
  br label %12, !dbg !1306

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %10, metadata !1308, metadata !DIExpression()), !dbg !1295
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !1309
  br label %12, !dbg !1310

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !1295
  ret i8* %.0, !dbg !1311
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !1312 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1315, metadata !DIExpression()), !dbg !1316
  call void @free(i8* %0) #11, !dbg !1317
  ret void, !dbg !1318
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !1319 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1322, metadata !DIExpression()), !dbg !1323
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !1324
  ret i32 %2, !dbg !1325
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !1326 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1329, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %1, metadata !1331, metadata !DIExpression()), !dbg !1330
  %3 = call i32* @__errno_location() #10, !dbg !1332
  store i32 38, i32* %3, align 4, !dbg !1333
  ret i32 -1, !dbg !1334
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !1335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1339, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !1341, metadata !DIExpression()), !dbg !1340
  %3 = call i32* @__errno_location() #10, !dbg !1342
  store i32 38, i32* %3, align 4, !dbg !1343
  ret i32 -1, !dbg !1344
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !1345 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1346, metadata !DIExpression()), !dbg !1347
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !1348
  ret i32 %2, !dbg !1349
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !1350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1351, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %1, metadata !1353, metadata !DIExpression()), !dbg !1352
  %3 = call i32* @__errno_location() #10, !dbg !1354
  store i32 38, i32* %3, align 4, !dbg !1355
  ret i32 -1, !dbg !1356
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !1357 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1358, metadata !DIExpression()), !dbg !1359
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !1360
  ret i32 %2, !dbg !1361
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !1362 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1363, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %1, metadata !1365, metadata !DIExpression()), !dbg !1364
  %3 = call i32* @__errno_location() #10, !dbg !1366
  store i32 38, i32* %3, align 4, !dbg !1367
  ret i32 -1, !dbg !1368
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!117, !2, !25, !73, !106}
!llvm.ident = !{!119, !119, !119, !119, !119}
!llvm.module.flags = !{!120, !121, !122}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "PAD", scope: !2, file: !3, line: 218, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../libsodium/src/libsodium/crypto_hash/sha512/cp/hash_sha512.c", directory: "/home/luwei/bech-back/libsodium/Sha512")
!4 = !{}
!5 = !{!6, !11, !12, !17, !18}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!19 = !{!0}
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1024, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 128)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "implementation", scope: !25, file: !26, line: 16, type: !34, isLocal: true, isDefinition: true)
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !33, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/randombytes.c", directory: "/home/luwei/bech-back/libsodium/Sha512")
!27 = !{!11, !28, !31}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !10)
!32 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!33 = !{!23}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "randombytes_implementation", file: !37, line: 26, baseType: !38)
!37 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/randombytes.h", directory: "/home/luwei/bech-back/libsodium/Sha512")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !37, line: 19, size: 384, elements: !39)
!39 = !{!40, !47, !51, !55, !60, !66}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !38, file: !37, line: 20, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !38, file: !37, line: 21, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!28}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !38, file: !37, line: 22, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !38, file: !37, line: 23, baseType: !56, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!28, !59}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !38, file: !37, line: 24, baseType: !61, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !65}
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !38, file: !37, line: 25, baseType: !67, size: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70}
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "randombytes_sysrandom_implementation", scope: !73, file: !74, line: 297, type: !96, isLocal: false, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !75, globals: !81, splitDebugInlining: false, nameTableKind: None)
!74 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/Sha512")
!75 = !{!76, !11, !80, !31, !70}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !77, line: 108, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !9, line: 193, baseType: !79)
!79 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!81 = !{!71, !82, !90}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "stream", scope: !73, file: !74, line: 69, type: !84, isLocal: true, isDefinition: true)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysRandom", file: !74, line: 67, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SysRandom_", file: !74, line: 63, size: 96, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "random_data_source_fd", scope: !85, file: !74, line: 64, baseType: !70, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !85, file: !74, line: 65, baseType: !70, size: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "getrandom_available", scope: !85, file: !74, line: 66, baseType: !70, size: 32, offset: 64)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "devices", scope: !92, file: !74, line: 106, type: !93, isLocal: true, isDefinition: true)
!92 = distinct !DISubprogram(name: "randombytes_sysrandom_random_dev_open", scope: !74, file: !74, line: 102, type: !68, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !4)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 192, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 3)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !37, line: 19, size: 384, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !96, file: !37, line: 20, baseType: !41, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !96, file: !37, line: 21, baseType: !48, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !96, file: !37, line: 22, baseType: !52, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !96, file: !37, line: 23, baseType: !56, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !96, file: !37, line: 24, baseType: !61, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !96, file: !37, line: 25, baseType: !67, size: 64, offset: 320)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "canary", scope: !106, file: !107, line: 46, type: !114, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !108, globals: !113, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/Sha512")
!108 = !{!109, !31, !111, !16, !70, !46, !11}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!113 = !{!104}
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 16)
!117 = distinct !DICompileUnit(language: DW_LANG_C99, file: !118, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!118 = !DIFile(filename: "crypto_hash_sha512.c", directory: "/home/luwei/bech-back/libsodium/Sha512")
!119 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!120 = !{i32 7, !"Dwarf Version", i32 4}
!121 = !{i32 2, !"Debug Info Version", i32 3}
!122 = !{i32 1, !"wchar_size", i32 4}
!123 = distinct !DISubprogram(name: "crypto_hash_sha512_wrapper", scope: !118, file: !118, line: 5, type: !124, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !117, retainedNodes: !4)
!124 = !DISubroutineType(types: !125)
!125 = !{!70, !80, !111}
!126 = !DILocalVariable(name: "out", arg: 1, scope: !123, file: !118, line: 5, type: !80)
!127 = !DILocation(line: 0, scope: !123)
!128 = !DILocalVariable(name: "in", arg: 2, scope: !123, file: !118, line: 5, type: !111)
!129 = !DILocation(line: 7, column: 13, scope: !123)
!130 = !DILocation(line: 7, column: 3, scope: !123)
!131 = !DILocation(line: 8, column: 13, scope: !123)
!132 = !DILocation(line: 8, column: 3, scope: !123)
!133 = !DILocation(line: 10, column: 10, scope: !123)
!134 = !DILocation(line: 10, column: 3, scope: !123)
!135 = distinct !DISubprogram(name: "crypto_hash_sha512_wrapper_t", scope: !118, file: !118, line: 19, type: !53, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !117, retainedNodes: !4)
!136 = !DILocalVariable(name: "dout", scope: !135, file: !118, line: 21, type: !16)
!137 = !DILocation(line: 21, column: 17, scope: !135)
!138 = !DILocation(line: 21, column: 24, scope: !135)
!139 = !DILocalVariable(name: "din", scope: !135, file: !118, line: 22, type: !112)
!140 = !DILocation(line: 22, column: 24, scope: !135)
!141 = !DILocation(line: 22, column: 30, scope: !135)
!142 = !DILocation(line: 23, column: 26, scope: !135)
!143 = !DILocalVariable(name: "dk", scope: !135, file: !118, line: 23, type: !112)
!144 = !DILocation(line: 0, scope: !135)
!145 = !DILocation(line: 24, column: 27, scope: !135)
!146 = !DILocalVariable(name: "dc", scope: !135, file: !118, line: 24, type: !112)
!147 = !DILocalVariable(name: "out", scope: !135, file: !118, line: 25, type: !80)
!148 = !DILocalVariable(name: "in", scope: !135, file: !118, line: 26, type: !111)
!149 = !DILocation(line: 28, column: 3, scope: !135)
!150 = !DILocation(line: 29, column: 1, scope: !135)
!151 = distinct !DISubprogram(name: "crypto_hash_sha512_init", scope: !3, file: !3, line: 245, type: !152, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!152 = !DISubroutineType(types: !153)
!153 = !{!70, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_hash_sha512_state", file: !156, line: 28, baseType: !157)
!156 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h", directory: "/home/luwei/bech-back/libsodium/Sha512")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_hash_sha512_state", file: !156, line: 24, size: 1664, elements: !158)
!158 = !{!159, !163, !167}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !157, file: !156, line: 25, baseType: !160, size: 512)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !157, file: !156, line: 26, baseType: !164, size: 128, offset: 512)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 2)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !157, file: !156, line: 27, baseType: !20, size: 1024, offset: 640)
!168 = !DILocalVariable(name: "state", arg: 1, scope: !151, file: !3, line: 245, type: !154)
!169 = !DILocation(line: 0, scope: !151)
!170 = !DILocation(line: 247, column: 30, scope: !151)
!171 = !DILocation(line: 247, column: 23, scope: !151)
!172 = !DILocation(line: 247, column: 39, scope: !151)
!173 = !DILocation(line: 247, column: 12, scope: !151)
!174 = !DILocation(line: 247, column: 5, scope: !151)
!175 = !DILocation(line: 247, column: 21, scope: !151)
!176 = !DILocation(line: 249, column: 12, scope: !151)
!177 = !DILocation(line: 249, column: 5, scope: !151)
!178 = !DILocation(line: 249, column: 21, scope: !151)
!179 = !DILocation(line: 250, column: 12, scope: !151)
!180 = !DILocation(line: 250, column: 5, scope: !151)
!181 = !DILocation(line: 250, column: 21, scope: !151)
!182 = !DILocation(line: 251, column: 12, scope: !151)
!183 = !DILocation(line: 251, column: 5, scope: !151)
!184 = !DILocation(line: 251, column: 21, scope: !151)
!185 = !DILocation(line: 252, column: 12, scope: !151)
!186 = !DILocation(line: 252, column: 5, scope: !151)
!187 = !DILocation(line: 252, column: 21, scope: !151)
!188 = !DILocation(line: 253, column: 12, scope: !151)
!189 = !DILocation(line: 253, column: 5, scope: !151)
!190 = !DILocation(line: 253, column: 21, scope: !151)
!191 = !DILocation(line: 254, column: 12, scope: !151)
!192 = !DILocation(line: 254, column: 5, scope: !151)
!193 = !DILocation(line: 254, column: 21, scope: !151)
!194 = !DILocation(line: 255, column: 12, scope: !151)
!195 = !DILocation(line: 255, column: 5, scope: !151)
!196 = !DILocation(line: 255, column: 21, scope: !151)
!197 = !DILocation(line: 256, column: 12, scope: !151)
!198 = !DILocation(line: 256, column: 5, scope: !151)
!199 = !DILocation(line: 256, column: 21, scope: !151)
!200 = !DILocation(line: 258, column: 5, scope: !151)
!201 = distinct !DISubprogram(name: "crypto_hash_sha512_update", scope: !3, file: !3, line: 262, type: !202, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!202 = !DISubroutineType(types: !203)
!203 = !{!70, !154, !111, !17}
!204 = !DILocalVariable(name: "state", arg: 1, scope: !201, file: !3, line: 262, type: !154)
!205 = !DILocation(line: 0, scope: !201)
!206 = !DILocalVariable(name: "in", arg: 2, scope: !201, file: !3, line: 263, type: !111)
!207 = !DILocalVariable(name: "inlen", arg: 3, scope: !201, file: !3, line: 264, type: !17)
!208 = !DILocalVariable(name: "bitlen", scope: !201, file: !3, line: 266, type: !164)
!209 = !DILocation(line: 266, column: 14, scope: !201)
!210 = !DILocalVariable(name: "src", scope: !201, file: !3, line: 268, type: !111)
!211 = !DILocation(line: 270, column: 17, scope: !201)
!212 = !DILocation(line: 270, column: 10, scope: !201)
!213 = !DILocation(line: 270, column: 26, scope: !201)
!214 = !DILocation(line: 270, column: 32, scope: !201)
!215 = !DILocalVariable(name: "r", scope: !201, file: !3, line: 267, type: !6)
!216 = !DILocation(line: 272, column: 35, scope: !201)
!217 = !DILocation(line: 272, column: 5, scope: !201)
!218 = !DILocation(line: 272, column: 15, scope: !201)
!219 = !DILocation(line: 273, column: 35, scope: !201)
!220 = !DILocation(line: 273, column: 5, scope: !201)
!221 = !DILocation(line: 273, column: 15, scope: !201)
!222 = !DILocation(line: 276, column: 29, scope: !223)
!223 = distinct !DILexicalBlock(scope: !201, file: !3, line: 276, column: 9)
!224 = !DILocation(line: 276, column: 17, scope: !223)
!225 = !DILocation(line: 276, column: 10, scope: !223)
!226 = !DILocation(line: 276, column: 26, scope: !223)
!227 = !DILocation(line: 276, column: 42, scope: !223)
!228 = !DILocation(line: 276, column: 40, scope: !223)
!229 = !DILocation(line: 276, column: 9, scope: !201)
!230 = !DILocation(line: 277, column: 16, scope: !231)
!231 = distinct !DILexicalBlock(scope: !223, file: !3, line: 276, column: 53)
!232 = !DILocation(line: 277, column: 9, scope: !231)
!233 = !DILocation(line: 277, column: 24, scope: !231)
!234 = !DILocation(line: 278, column: 5, scope: !231)
!235 = !DILocation(line: 280, column: 24, scope: !201)
!236 = !DILocation(line: 280, column: 12, scope: !201)
!237 = !DILocation(line: 280, column: 5, scope: !201)
!238 = !DILocation(line: 280, column: 21, scope: !201)
!239 = !DILocation(line: 282, column: 21, scope: !240)
!240 = distinct !DILexicalBlock(scope: !201, file: !3, line: 282, column: 9)
!241 = !DILocation(line: 282, column: 15, scope: !240)
!242 = !DILocation(line: 282, column: 9, scope: !201)
!243 = !DILocation(line: 283, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !3, line: 282, column: 26)
!245 = !DILocation(line: 283, column: 17, scope: !244)
!246 = !DILocation(line: 283, column: 9, scope: !244)
!247 = !DILocation(line: 284, column: 9, scope: !244)
!248 = !DILocation(line: 286, column: 20, scope: !201)
!249 = !DILocation(line: 286, column: 13, scope: !201)
!250 = !DILocation(line: 286, column: 37, scope: !201)
!251 = !DILocation(line: 286, column: 5, scope: !201)
!252 = !DILocation(line: 287, column: 29, scope: !201)
!253 = !DILocation(line: 287, column: 22, scope: !201)
!254 = !DILocation(line: 287, column: 43, scope: !201)
!255 = !DILocation(line: 287, column: 36, scope: !201)
!256 = !DILocation(line: 287, column: 5, scope: !201)
!257 = !DILocation(line: 288, column: 16, scope: !201)
!258 = !DILocation(line: 288, column: 9, scope: !201)
!259 = !DILocation(line: 289, column: 18, scope: !201)
!260 = !DILocation(line: 289, column: 11, scope: !201)
!261 = !DILocation(line: 291, column: 5, scope: !201)
!262 = !DILocation(line: 291, column: 18, scope: !201)
!263 = !DILocation(line: 292, column: 33, scope: !264)
!264 = distinct !DILexicalBlock(scope: !201, file: !3, line: 291, column: 26)
!265 = !DILocation(line: 292, column: 26, scope: !264)
!266 = !DILocation(line: 292, column: 9, scope: !264)
!267 = !DILocation(line: 293, column: 13, scope: !264)
!268 = !DILocation(line: 294, column: 15, scope: !264)
!269 = distinct !{!269, !261, !270, !271}
!270 = !DILocation(line: 295, column: 5, scope: !201)
!271 = !{!"llvm.loop.mustprogress"}
!272 = !DILocation(line: 296, column: 19, scope: !201)
!273 = !DILocation(line: 296, column: 5, scope: !201)
!274 = !DILocation(line: 298, column: 5, scope: !201)
!275 = !DILocation(line: 299, column: 1, scope: !201)
!276 = distinct !DISubprogram(name: "SHA512_Transform", scope: !3, file: !3, line: 113, type: !277, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !279, !111}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!280 = !DILocalVariable(name: "state", arg: 1, scope: !276, file: !3, line: 113, type: !279)
!281 = !DILocation(line: 0, scope: !276)
!282 = !DILocalVariable(name: "block", arg: 2, scope: !276, file: !3, line: 113, type: !111)
!283 = !DILocalVariable(name: "W", scope: !276, file: !3, line: 115, type: !284)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 5120, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 80)
!287 = !DILocation(line: 115, column: 14, scope: !276)
!288 = !DILocalVariable(name: "S", scope: !276, file: !3, line: 116, type: !160)
!289 = !DILocation(line: 116, column: 14, scope: !276)
!290 = !DILocalVariable(name: "t0", scope: !276, file: !3, line: 117, type: !6)
!291 = !DILocation(line: 117, column: 14, scope: !276)
!292 = !DILocalVariable(name: "t1", scope: !276, file: !3, line: 117, type: !6)
!293 = !DILocation(line: 117, column: 18, scope: !276)
!294 = !DILocation(line: 120, column: 18, scope: !276)
!295 = !DILocation(line: 120, column: 5, scope: !276)
!296 = !DILocalVariable(name: "i", scope: !276, file: !3, line: 118, type: !70)
!297 = !DILocation(line: 121, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !276, file: !3, line: 121, column: 5)
!299 = !DILocation(line: 0, scope: !298)
!300 = !DILocation(line: 121, column: 20, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 121, column: 5)
!302 = !DILocation(line: 121, column: 5, scope: !298)
!303 = !DILocation(line: 122, column: 16, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !3, line: 121, column: 31)
!305 = !DILocation(line: 122, column: 35, scope: !304)
!306 = !DILocation(line: 122, column: 31, scope: !304)
!307 = !DILocation(line: 122, column: 29, scope: !304)
!308 = !DILocation(line: 122, column: 42, scope: !304)
!309 = !DILocation(line: 122, column: 40, scope: !304)
!310 = !DILocation(line: 122, column: 62, scope: !304)
!311 = !DILocation(line: 122, column: 58, scope: !304)
!312 = !DILocation(line: 122, column: 56, scope: !304)
!313 = !DILocation(line: 122, column: 9, scope: !304)
!314 = !DILocation(line: 122, column: 14, scope: !304)
!315 = !DILocation(line: 123, column: 5, scope: !304)
!316 = !DILocation(line: 121, column: 27, scope: !301)
!317 = !DILocation(line: 121, column: 5, scope: !301)
!318 = distinct !{!318, !302, !319, !271}
!319 = !DILocation(line: 123, column: 5, scope: !298)
!320 = !DILocation(line: 125, column: 5, scope: !276)
!321 = !DILocation(line: 127, column: 5, scope: !276)
!322 = !DILocation(line: 128, column: 5, scope: !276)
!323 = !DILocation(line: 129, column: 5, scope: !276)
!324 = !DILocation(line: 130, column: 5, scope: !276)
!325 = !DILocation(line: 131, column: 5, scope: !276)
!326 = !DILocation(line: 132, column: 5, scope: !276)
!327 = !DILocation(line: 133, column: 5, scope: !276)
!328 = !DILocation(line: 134, column: 5, scope: !276)
!329 = !DILocation(line: 135, column: 5, scope: !276)
!330 = !DILocation(line: 136, column: 5, scope: !276)
!331 = !DILocation(line: 137, column: 5, scope: !276)
!332 = !DILocation(line: 138, column: 5, scope: !276)
!333 = !DILocation(line: 139, column: 5, scope: !276)
!334 = !DILocation(line: 140, column: 5, scope: !276)
!335 = !DILocation(line: 141, column: 5, scope: !276)
!336 = !DILocation(line: 142, column: 5, scope: !276)
!337 = !DILocation(line: 143, column: 5, scope: !276)
!338 = !DILocation(line: 144, column: 5, scope: !276)
!339 = !DILocation(line: 145, column: 5, scope: !276)
!340 = !DILocation(line: 146, column: 5, scope: !276)
!341 = !DILocation(line: 147, column: 5, scope: !276)
!342 = !DILocation(line: 148, column: 5, scope: !276)
!343 = !DILocation(line: 149, column: 5, scope: !276)
!344 = !DILocation(line: 150, column: 5, scope: !276)
!345 = !DILocation(line: 151, column: 5, scope: !276)
!346 = !DILocation(line: 152, column: 5, scope: !276)
!347 = !DILocation(line: 153, column: 5, scope: !276)
!348 = !DILocation(line: 154, column: 5, scope: !276)
!349 = !DILocation(line: 155, column: 5, scope: !276)
!350 = !DILocation(line: 156, column: 5, scope: !276)
!351 = !DILocation(line: 157, column: 5, scope: !276)
!352 = !DILocation(line: 158, column: 5, scope: !276)
!353 = !DILocation(line: 159, column: 5, scope: !276)
!354 = !DILocation(line: 160, column: 5, scope: !276)
!355 = !DILocation(line: 161, column: 5, scope: !276)
!356 = !DILocation(line: 162, column: 5, scope: !276)
!357 = !DILocation(line: 163, column: 5, scope: !276)
!358 = !DILocation(line: 164, column: 5, scope: !276)
!359 = !DILocation(line: 165, column: 5, scope: !276)
!360 = !DILocation(line: 166, column: 5, scope: !276)
!361 = !DILocation(line: 167, column: 5, scope: !276)
!362 = !DILocation(line: 168, column: 5, scope: !276)
!363 = !DILocation(line: 169, column: 5, scope: !276)
!364 = !DILocation(line: 170, column: 5, scope: !276)
!365 = !DILocation(line: 171, column: 5, scope: !276)
!366 = !DILocation(line: 172, column: 5, scope: !276)
!367 = !DILocation(line: 173, column: 5, scope: !276)
!368 = !DILocation(line: 174, column: 5, scope: !276)
!369 = !DILocation(line: 175, column: 5, scope: !276)
!370 = !DILocation(line: 176, column: 5, scope: !276)
!371 = !DILocation(line: 177, column: 5, scope: !276)
!372 = !DILocation(line: 178, column: 5, scope: !276)
!373 = !DILocation(line: 179, column: 5, scope: !276)
!374 = !DILocation(line: 180, column: 5, scope: !276)
!375 = !DILocation(line: 181, column: 5, scope: !276)
!376 = !DILocation(line: 182, column: 5, scope: !276)
!377 = !DILocation(line: 183, column: 5, scope: !276)
!378 = !DILocation(line: 184, column: 5, scope: !276)
!379 = !DILocation(line: 185, column: 5, scope: !276)
!380 = !DILocation(line: 186, column: 5, scope: !276)
!381 = !DILocation(line: 187, column: 5, scope: !276)
!382 = !DILocation(line: 188, column: 5, scope: !276)
!383 = !DILocation(line: 189, column: 5, scope: !276)
!384 = !DILocation(line: 190, column: 5, scope: !276)
!385 = !DILocation(line: 191, column: 5, scope: !276)
!386 = !DILocation(line: 192, column: 5, scope: !276)
!387 = !DILocation(line: 193, column: 5, scope: !276)
!388 = !DILocation(line: 194, column: 5, scope: !276)
!389 = !DILocation(line: 195, column: 5, scope: !276)
!390 = !DILocation(line: 196, column: 5, scope: !276)
!391 = !DILocation(line: 197, column: 5, scope: !276)
!392 = !DILocation(line: 198, column: 5, scope: !276)
!393 = !DILocation(line: 199, column: 5, scope: !276)
!394 = !DILocation(line: 200, column: 5, scope: !276)
!395 = !DILocation(line: 201, column: 5, scope: !276)
!396 = !DILocation(line: 202, column: 5, scope: !276)
!397 = !DILocation(line: 203, column: 5, scope: !276)
!398 = !DILocation(line: 204, column: 5, scope: !276)
!399 = !DILocation(line: 205, column: 5, scope: !276)
!400 = !DILocation(line: 206, column: 5, scope: !276)
!401 = !DILocation(line: 208, column: 10, scope: !402)
!402 = distinct !DILexicalBlock(scope: !276, file: !3, line: 208, column: 5)
!403 = !DILocation(line: 0, scope: !402)
!404 = !DILocation(line: 208, column: 19, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 208, column: 5)
!406 = !DILocation(line: 208, column: 5, scope: !402)
!407 = !DILocation(line: 209, column: 21, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !3, line: 208, column: 29)
!409 = !DILocation(line: 209, column: 9, scope: !408)
!410 = !DILocation(line: 209, column: 18, scope: !408)
!411 = !DILocation(line: 210, column: 5, scope: !408)
!412 = !DILocation(line: 208, column: 25, scope: !405)
!413 = !DILocation(line: 208, column: 5, scope: !405)
!414 = distinct !{!414, !406, !415, !271}
!415 = !DILocation(line: 210, column: 5, scope: !402)
!416 = !DILocation(line: 212, column: 29, scope: !276)
!417 = !DILocation(line: 212, column: 20, scope: !276)
!418 = !DILocation(line: 212, column: 5, scope: !276)
!419 = !DILocation(line: 213, column: 29, scope: !276)
!420 = !DILocation(line: 213, column: 20, scope: !276)
!421 = !DILocation(line: 213, column: 5, scope: !276)
!422 = !DILocation(line: 214, column: 20, scope: !276)
!423 = !DILocation(line: 214, column: 5, scope: !276)
!424 = !DILocation(line: 215, column: 20, scope: !276)
!425 = !DILocation(line: 215, column: 5, scope: !276)
!426 = !DILocation(line: 216, column: 1, scope: !276)
!427 = distinct !DISubprogram(name: "be64dec_vect", scope: !3, file: !3, line: 81, type: !428, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !279, !111, !31}
!430 = !DILocalVariable(name: "dst", arg: 1, scope: !427, file: !3, line: 81, type: !279)
!431 = !DILocation(line: 0, scope: !427)
!432 = !DILocalVariable(name: "src", arg: 2, scope: !427, file: !3, line: 81, type: !111)
!433 = !DILocalVariable(name: "len", arg: 3, scope: !427, file: !3, line: 81, type: !31)
!434 = !DILocalVariable(name: "i", scope: !427, file: !3, line: 83, type: !31)
!435 = !DILocation(line: 85, column: 10, scope: !436)
!436 = distinct !DILexicalBlock(scope: !427, file: !3, line: 85, column: 5)
!437 = !DILocation(line: 0, scope: !436)
!438 = !DILocation(line: 85, column: 25, scope: !439)
!439 = distinct !DILexicalBlock(scope: !436, file: !3, line: 85, column: 5)
!440 = !DILocation(line: 85, column: 19, scope: !439)
!441 = !DILocation(line: 85, column: 5, scope: !436)
!442 = !DILocation(line: 86, column: 34, scope: !443)
!443 = distinct !DILexicalBlock(scope: !439, file: !3, line: 85, column: 35)
!444 = !DILocation(line: 86, column: 30, scope: !443)
!445 = !DILocation(line: 86, column: 18, scope: !443)
!446 = !DILocation(line: 86, column: 9, scope: !443)
!447 = !DILocation(line: 86, column: 16, scope: !443)
!448 = !DILocation(line: 87, column: 5, scope: !443)
!449 = !DILocation(line: 85, column: 31, scope: !439)
!450 = !DILocation(line: 85, column: 5, scope: !439)
!451 = distinct !{!451, !441, !452, !271}
!452 = !DILocation(line: 87, column: 5, scope: !436)
!453 = !DILocation(line: 88, column: 1, scope: !427)
!454 = distinct !DISubprogram(name: "_sha512_be64dec", scope: !3, file: !3, line: 45, type: !455, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!455 = !DISubroutineType(types: !456)
!456 = !{!6, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!459 = !DILocalVariable(name: "pp", arg: 1, scope: !454, file: !3, line: 45, type: !457)
!460 = !DILocation(line: 0, scope: !454)
!461 = !DILocalVariable(name: "p", scope: !454, file: !3, line: 47, type: !12)
!462 = !DILocation(line: 49, column: 24, scope: !454)
!463 = !DILocation(line: 49, column: 13, scope: !454)
!464 = !DILocation(line: 49, column: 44, scope: !454)
!465 = !DILocation(line: 49, column: 33, scope: !454)
!466 = !DILocation(line: 49, column: 50, scope: !454)
!467 = !DILocation(line: 49, column: 30, scope: !454)
!468 = !DILocation(line: 50, column: 25, scope: !454)
!469 = !DILocation(line: 50, column: 14, scope: !454)
!470 = !DILocation(line: 50, column: 31, scope: !454)
!471 = !DILocation(line: 49, column: 56, scope: !454)
!472 = !DILocation(line: 50, column: 52, scope: !454)
!473 = !DILocation(line: 50, column: 41, scope: !454)
!474 = !DILocation(line: 50, column: 58, scope: !454)
!475 = !DILocation(line: 50, column: 38, scope: !454)
!476 = !DILocation(line: 51, column: 25, scope: !454)
!477 = !DILocation(line: 51, column: 14, scope: !454)
!478 = !DILocation(line: 51, column: 31, scope: !454)
!479 = !DILocation(line: 50, column: 65, scope: !454)
!480 = !DILocation(line: 51, column: 52, scope: !454)
!481 = !DILocation(line: 51, column: 41, scope: !454)
!482 = !DILocation(line: 51, column: 58, scope: !454)
!483 = !DILocation(line: 51, column: 38, scope: !454)
!484 = !DILocation(line: 52, column: 25, scope: !454)
!485 = !DILocation(line: 52, column: 14, scope: !454)
!486 = !DILocation(line: 52, column: 31, scope: !454)
!487 = !DILocation(line: 51, column: 65, scope: !454)
!488 = !DILocation(line: 52, column: 52, scope: !454)
!489 = !DILocation(line: 52, column: 41, scope: !454)
!490 = !DILocation(line: 52, column: 58, scope: !454)
!491 = !DILocation(line: 52, column: 38, scope: !454)
!492 = !DILocation(line: 49, column: 5, scope: !454)
!493 = distinct !DISubprogram(name: "crypto_hash_sha512_final", scope: !3, file: !3, line: 302, type: !494, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!494 = !DISubroutineType(types: !495)
!495 = !{!70, !154, !80}
!496 = !DILocalVariable(name: "state", arg: 1, scope: !493, file: !3, line: 302, type: !154)
!497 = !DILocation(line: 0, scope: !493)
!498 = !DILocalVariable(name: "out", arg: 2, scope: !493, file: !3, line: 303, type: !80)
!499 = !DILocation(line: 305, column: 5, scope: !493)
!500 = !DILocation(line: 306, column: 30, scope: !493)
!501 = !DILocation(line: 306, column: 23, scope: !493)
!502 = !DILocation(line: 306, column: 5, scope: !493)
!503 = !DILocation(line: 307, column: 20, scope: !493)
!504 = !DILocation(line: 307, column: 5, scope: !493)
!505 = !DILocation(line: 309, column: 5, scope: !493)
!506 = distinct !DISubprogram(name: "SHA512_Pad", scope: !3, file: !3, line: 230, type: !507, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !154}
!509 = !DILocalVariable(name: "state", arg: 1, scope: !506, file: !3, line: 230, type: !154)
!510 = !DILocation(line: 0, scope: !506)
!511 = !DILocalVariable(name: "len", scope: !506, file: !3, line: 232, type: !114)
!512 = !DILocation(line: 232, column: 19, scope: !506)
!513 = !DILocation(line: 235, column: 18, scope: !506)
!514 = !DILocation(line: 235, column: 30, scope: !506)
!515 = !DILocation(line: 235, column: 23, scope: !506)
!516 = !DILocation(line: 235, column: 5, scope: !506)
!517 = !DILocation(line: 237, column: 17, scope: !506)
!518 = !DILocation(line: 237, column: 10, scope: !506)
!519 = !DILocation(line: 237, column: 26, scope: !506)
!520 = !DILocation(line: 237, column: 32, scope: !506)
!521 = !DILocalVariable(name: "r", scope: !506, file: !3, line: 233, type: !6)
!522 = !DILocation(line: 238, column: 15, scope: !506)
!523 = !DILocation(line: 238, column: 12, scope: !506)
!524 = !DILocation(line: 238, column: 29, scope: !506)
!525 = !DILocation(line: 238, column: 41, scope: !506)
!526 = !DILocalVariable(name: "plen", scope: !506, file: !3, line: 233, type: !6)
!527 = !DILocation(line: 239, column: 5, scope: !506)
!528 = !DILocation(line: 241, column: 38, scope: !506)
!529 = !DILocation(line: 241, column: 5, scope: !506)
!530 = !DILocation(line: 242, column: 1, scope: !506)
!531 = distinct !DISubprogram(name: "be64enc_vect", scope: !3, file: !3, line: 71, type: !532, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !80, !534, !31}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!536 = !DILocalVariable(name: "dst", arg: 1, scope: !531, file: !3, line: 71, type: !80)
!537 = !DILocation(line: 0, scope: !531)
!538 = !DILocalVariable(name: "src", arg: 2, scope: !531, file: !3, line: 71, type: !534)
!539 = !DILocalVariable(name: "len", arg: 3, scope: !531, file: !3, line: 71, type: !31)
!540 = !DILocalVariable(name: "i", scope: !531, file: !3, line: 73, type: !31)
!541 = !DILocation(line: 75, column: 10, scope: !542)
!542 = distinct !DILexicalBlock(scope: !531, file: !3, line: 75, column: 5)
!543 = !DILocation(line: 0, scope: !542)
!544 = !DILocation(line: 75, column: 25, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !3, line: 75, column: 5)
!546 = !DILocation(line: 75, column: 19, scope: !545)
!547 = !DILocation(line: 75, column: 5, scope: !542)
!548 = !DILocation(line: 76, column: 25, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !3, line: 75, column: 35)
!550 = !DILocation(line: 76, column: 21, scope: !549)
!551 = !DILocation(line: 76, column: 30, scope: !549)
!552 = !DILocation(line: 76, column: 9, scope: !549)
!553 = !DILocation(line: 77, column: 5, scope: !549)
!554 = !DILocation(line: 75, column: 31, scope: !545)
!555 = !DILocation(line: 75, column: 5, scope: !545)
!556 = distinct !{!556, !547, !557, !271}
!557 = !DILocation(line: 77, column: 5, scope: !542)
!558 = !DILocation(line: 78, column: 1, scope: !531)
!559 = distinct !DISubprogram(name: "_sha512_be64enc", scope: !3, file: !3, line: 56, type: !560, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !11, !6}
!562 = !DILocalVariable(name: "pp", arg: 1, scope: !559, file: !3, line: 56, type: !11)
!563 = !DILocation(line: 0, scope: !559)
!564 = !DILocalVariable(name: "x", arg: 2, scope: !559, file: !3, line: 56, type: !6)
!565 = !DILocalVariable(name: "p", scope: !559, file: !3, line: 58, type: !18)
!566 = !DILocation(line: 60, column: 14, scope: !559)
!567 = !DILocation(line: 60, column: 12, scope: !559)
!568 = !DILocation(line: 60, column: 5, scope: !559)
!569 = !DILocation(line: 60, column: 10, scope: !559)
!570 = !DILocation(line: 61, column: 15, scope: !559)
!571 = !DILocation(line: 61, column: 21, scope: !559)
!572 = !DILocation(line: 61, column: 12, scope: !559)
!573 = !DILocation(line: 61, column: 5, scope: !559)
!574 = !DILocation(line: 61, column: 10, scope: !559)
!575 = !DILocation(line: 62, column: 15, scope: !559)
!576 = !DILocation(line: 62, column: 22, scope: !559)
!577 = !DILocation(line: 62, column: 12, scope: !559)
!578 = !DILocation(line: 62, column: 5, scope: !559)
!579 = !DILocation(line: 62, column: 10, scope: !559)
!580 = !DILocation(line: 63, column: 15, scope: !559)
!581 = !DILocation(line: 63, column: 22, scope: !559)
!582 = !DILocation(line: 63, column: 12, scope: !559)
!583 = !DILocation(line: 63, column: 5, scope: !559)
!584 = !DILocation(line: 63, column: 10, scope: !559)
!585 = !DILocation(line: 64, column: 15, scope: !559)
!586 = !DILocation(line: 64, column: 22, scope: !559)
!587 = !DILocation(line: 64, column: 12, scope: !559)
!588 = !DILocation(line: 64, column: 5, scope: !559)
!589 = !DILocation(line: 64, column: 10, scope: !559)
!590 = !DILocation(line: 65, column: 15, scope: !559)
!591 = !DILocation(line: 65, column: 22, scope: !559)
!592 = !DILocation(line: 65, column: 12, scope: !559)
!593 = !DILocation(line: 65, column: 5, scope: !559)
!594 = !DILocation(line: 65, column: 10, scope: !559)
!595 = !DILocation(line: 66, column: 15, scope: !559)
!596 = !DILocation(line: 66, column: 22, scope: !559)
!597 = !DILocation(line: 66, column: 12, scope: !559)
!598 = !DILocation(line: 66, column: 5, scope: !559)
!599 = !DILocation(line: 66, column: 10, scope: !559)
!600 = !DILocation(line: 67, column: 15, scope: !559)
!601 = !DILocation(line: 67, column: 22, scope: !559)
!602 = !DILocation(line: 67, column: 12, scope: !559)
!603 = !DILocation(line: 67, column: 5, scope: !559)
!604 = !DILocation(line: 67, column: 10, scope: !559)
!605 = !DILocation(line: 68, column: 1, scope: !559)
!606 = distinct !DISubprogram(name: "crypto_hash_sha512", scope: !3, file: !3, line: 313, type: !607, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!607 = !DISubroutineType(types: !608)
!608 = !{!70, !80, !111, !17}
!609 = !DILocalVariable(name: "out", arg: 1, scope: !606, file: !3, line: 313, type: !80)
!610 = !DILocation(line: 0, scope: !606)
!611 = !DILocalVariable(name: "in", arg: 2, scope: !606, file: !3, line: 313, type: !111)
!612 = !DILocalVariable(name: "inlen", arg: 3, scope: !606, file: !3, line: 314, type: !17)
!613 = !DILocalVariable(name: "state", scope: !606, file: !3, line: 316, type: !155)
!614 = !DILocation(line: 316, column: 30, scope: !606)
!615 = !DILocation(line: 318, column: 5, scope: !606)
!616 = !DILocation(line: 319, column: 5, scope: !606)
!617 = !DILocation(line: 320, column: 5, scope: !606)
!618 = !DILocation(line: 322, column: 5, scope: !606)
!619 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !26, file: !26, line: 23, type: !620, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!620 = !DISubroutineType(types: !621)
!621 = !{!70, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!623 = !DILocalVariable(name: "impl", arg: 1, scope: !619, file: !26, line: 23, type: !622)
!624 = !DILocation(line: 0, scope: !619)
!625 = !DILocation(line: 25, column: 20, scope: !619)
!626 = !DILocation(line: 27, column: 5, scope: !619)
!627 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !26, file: !26, line: 31, type: !42, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!628 = !DILocation(line: 34, column: 12, scope: !627)
!629 = !DILocation(line: 34, column: 28, scope: !627)
!630 = !DILocation(line: 34, column: 5, scope: !627)
!631 = distinct !DISubprogram(name: "randombytes_random", scope: !26, file: !26, line: 41, type: !49, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!632 = !DILocation(line: 44, column: 12, scope: !631)
!633 = !DILocation(line: 44, column: 28, scope: !631)
!634 = !DILocation(line: 44, column: 5, scope: !631)
!635 = distinct !DISubprogram(name: "randombytes_stir", scope: !26, file: !26, line: 53, type: !53, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!636 = !DILocation(line: 56, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !26, line: 56, column: 9)
!638 = !DILocation(line: 56, column: 24, scope: !637)
!639 = !DILocation(line: 56, column: 32, scope: !637)
!640 = !DILocation(line: 56, column: 35, scope: !637)
!641 = !DILocation(line: 56, column: 51, scope: !637)
!642 = !DILocation(line: 56, column: 56, scope: !637)
!643 = !DILocation(line: 56, column: 9, scope: !635)
!644 = !DILocation(line: 57, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !637, file: !26, line: 56, column: 65)
!646 = !DILocation(line: 57, column: 25, scope: !645)
!647 = !DILocation(line: 58, column: 5, scope: !645)
!648 = !DILocation(line: 87, column: 1, scope: !635)
!649 = distinct !DISubprogram(name: "randombytes_uniform", scope: !26, file: !26, line: 94, type: !57, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!650 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !649, file: !26, line: 94, type: !59)
!651 = !DILocation(line: 0, scope: !649)
!652 = !DILocation(line: 99, column: 9, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !26, line: 99, column: 9)
!654 = !DILocation(line: 99, column: 24, scope: !653)
!655 = !DILocation(line: 99, column: 32, scope: !653)
!656 = !DILocation(line: 99, column: 35, scope: !653)
!657 = !DILocation(line: 99, column: 51, scope: !653)
!658 = !DILocation(line: 99, column: 59, scope: !653)
!659 = !DILocation(line: 99, column: 9, scope: !649)
!660 = !DILocation(line: 100, column: 16, scope: !661)
!661 = distinct !DILexicalBlock(scope: !653, file: !26, line: 99, column: 68)
!662 = !DILocation(line: 100, column: 32, scope: !661)
!663 = !DILocation(line: 100, column: 9, scope: !661)
!664 = !DILocation(line: 102, column: 21, scope: !665)
!665 = distinct !DILexicalBlock(scope: !649, file: !26, line: 102, column: 9)
!666 = !DILocation(line: 102, column: 9, scope: !649)
!667 = !DILocation(line: 103, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !26, line: 102, column: 26)
!669 = !DILocation(line: 105, column: 23, scope: !649)
!670 = !DILocation(line: 105, column: 36, scope: !649)
!671 = !DILocalVariable(name: "min", scope: !649, file: !26, line: 96, type: !28)
!672 = !DILocation(line: 106, column: 5, scope: !649)
!673 = !DILocation(line: 107, column: 13, scope: !674)
!674 = distinct !DILexicalBlock(scope: !649, file: !26, line: 106, column: 8)
!675 = !DILocalVariable(name: "r", scope: !649, file: !26, line: 97, type: !28)
!676 = !DILocation(line: 108, column: 5, scope: !674)
!677 = !DILocation(line: 108, column: 16, scope: !649)
!678 = distinct !{!678, !672, !679, !271}
!679 = !DILocation(line: 108, column: 21, scope: !649)
!680 = !DILocation(line: 110, column: 14, scope: !649)
!681 = !DILocation(line: 110, column: 5, scope: !649)
!682 = !DILocation(line: 111, column: 1, scope: !649)
!683 = distinct !DISubprogram(name: "randombytes_buf", scope: !26, file: !26, line: 114, type: !62, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!684 = !DILocalVariable(name: "buf", arg: 1, scope: !683, file: !26, line: 114, type: !64)
!685 = !DILocation(line: 0, scope: !683)
!686 = !DILocalVariable(name: "size", arg: 2, scope: !683, file: !26, line: 114, type: !65)
!687 = !DILocation(line: 117, column: 14, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !26, line: 117, column: 9)
!689 = !DILocation(line: 117, column: 9, scope: !683)
!690 = !DILocation(line: 118, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !26, line: 117, column: 29)
!692 = !DILocation(line: 118, column: 25, scope: !691)
!693 = !DILocation(line: 119, column: 5, scope: !691)
!694 = !DILocation(line: 128, column: 1, scope: !683)
!695 = distinct !DISubprogram(name: "randombytes_close", scope: !26, file: !26, line: 131, type: !68, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!696 = !DILocation(line: 133, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !695, file: !26, line: 133, column: 9)
!698 = !DILocation(line: 133, column: 24, scope: !697)
!699 = !DILocation(line: 133, column: 32, scope: !697)
!700 = !DILocation(line: 133, column: 35, scope: !697)
!701 = !DILocation(line: 133, column: 51, scope: !697)
!702 = !DILocation(line: 133, column: 57, scope: !697)
!703 = !DILocation(line: 133, column: 9, scope: !695)
!704 = !DILocation(line: 134, column: 16, scope: !705)
!705 = distinct !DILexicalBlock(scope: !697, file: !26, line: 133, column: 66)
!706 = !DILocation(line: 134, column: 32, scope: !705)
!707 = !DILocation(line: 134, column: 9, scope: !705)
!708 = !DILocation(line: 136, column: 5, scope: !695)
!709 = !DILocation(line: 0, scope: !695)
!710 = !DILocation(line: 137, column: 1, scope: !695)
!711 = distinct !DISubprogram(name: "randombytes", scope: !26, file: !26, line: 140, type: !712, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !714, !715}
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!716 = !DILocalVariable(name: "buf", arg: 1, scope: !711, file: !26, line: 140, type: !714)
!717 = !DILocation(line: 0, scope: !711)
!718 = !DILocalVariable(name: "buf_len", arg: 2, scope: !711, file: !26, line: 140, type: !715)
!719 = !DILocation(line: 142, column: 5, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !26, line: 142, column: 5)
!721 = distinct !DILexicalBlock(scope: !711, file: !26, line: 142, column: 5)
!722 = !DILocation(line: 142, column: 5, scope: !721)
!723 = !DILocation(line: 143, column: 5, scope: !711)
!724 = !DILocation(line: 144, column: 1, scope: !711)
!725 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !74, file: !74, line: 292, type: !42, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!726 = !DILocation(line: 294, column: 5, scope: !725)
!727 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !74, file: !74, line: 249, type: !49, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!728 = !DILocalVariable(name: "r", scope: !727, file: !74, line: 251, type: !28)
!729 = !DILocation(line: 251, column: 14, scope: !727)
!730 = !DILocation(line: 253, column: 31, scope: !727)
!731 = !DILocation(line: 253, column: 5, scope: !727)
!732 = !DILocation(line: 255, column: 12, scope: !727)
!733 = !DILocation(line: 255, column: 5, scope: !727)
!734 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !74, file: !74, line: 206, type: !53, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!735 = !DILocation(line: 208, column: 16, scope: !736)
!736 = distinct !DILexicalBlock(scope: !734, file: !74, line: 208, column: 9)
!737 = !DILocation(line: 208, column: 28, scope: !736)
!738 = !DILocation(line: 208, column: 9, scope: !734)
!739 = !DILocation(line: 209, column: 9, scope: !740)
!740 = distinct !DILexicalBlock(scope: !736, file: !74, line: 208, column: 34)
!741 = !DILocation(line: 210, column: 28, scope: !740)
!742 = !DILocation(line: 211, column: 5, scope: !740)
!743 = !DILocation(line: 212, column: 1, scope: !734)
!744 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !74, file: !74, line: 259, type: !62, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!745 = !DILocalVariable(name: "buf", arg: 1, scope: !744, file: !74, line: 259, type: !64)
!746 = !DILocation(line: 0, scope: !744)
!747 = !DILocalVariable(name: "size", arg: 2, scope: !744, file: !74, line: 259, type: !65)
!748 = !DILocation(line: 261, column: 5, scope: !744)
!749 = !DILocation(line: 268, column: 16, scope: !750)
!750 = distinct !DILexicalBlock(scope: !744, file: !74, line: 268, column: 9)
!751 = !DILocation(line: 268, column: 36, scope: !750)
!752 = !DILocation(line: 268, column: 9, scope: !744)
!753 = !DILocation(line: 269, column: 13, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !74, line: 269, column: 13)
!755 = distinct !DILexicalBlock(scope: !750, file: !74, line: 268, column: 42)
!756 = !DILocation(line: 269, column: 52, scope: !754)
!757 = !DILocation(line: 269, column: 13, scope: !755)
!758 = !DILocation(line: 270, column: 13, scope: !759)
!759 = distinct !DILexicalBlock(scope: !754, file: !74, line: 269, column: 58)
!760 = !DILocation(line: 272, column: 9, scope: !755)
!761 = !DILocation(line: 275, column: 16, scope: !762)
!762 = distinct !DILexicalBlock(scope: !744, file: !74, line: 275, column: 9)
!763 = !DILocation(line: 275, column: 38, scope: !762)
!764 = !DILocation(line: 275, column: 44, scope: !762)
!765 = !DILocation(line: 276, column: 26, scope: !762)
!766 = !DILocation(line: 276, column: 9, scope: !762)
!767 = !DILocation(line: 276, column: 60, scope: !762)
!768 = !DILocation(line: 275, column: 9, scope: !744)
!769 = !DILocation(line: 277, column: 9, scope: !770)
!770 = distinct !DILexicalBlock(scope: !762, file: !74, line: 276, column: 79)
!771 = !DILocation(line: 287, column: 1, scope: !744)
!772 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !74, file: !74, line: 223, type: !68, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !73, retainedNodes: !4)
!773 = !DILocalVariable(name: "ret", scope: !772, file: !74, line: 225, type: !70)
!774 = !DILocation(line: 0, scope: !772)
!775 = !DILocation(line: 228, column: 16, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !74, line: 228, column: 9)
!777 = !DILocation(line: 228, column: 38, scope: !776)
!778 = !DILocation(line: 228, column: 44, scope: !776)
!779 = !DILocation(line: 229, column: 22, scope: !776)
!780 = !DILocation(line: 229, column: 9, scope: !776)
!781 = !DILocation(line: 229, column: 45, scope: !776)
!782 = !DILocation(line: 228, column: 9, scope: !772)
!783 = !DILocation(line: 230, column: 38, scope: !784)
!784 = distinct !DILexicalBlock(scope: !776, file: !74, line: 229, column: 51)
!785 = !DILocation(line: 231, column: 28, scope: !784)
!786 = !DILocation(line: 233, column: 5, scope: !784)
!787 = !DILocation(line: 235, column: 16, scope: !788)
!788 = distinct !DILexicalBlock(scope: !772, file: !74, line: 235, column: 9)
!789 = !DILocation(line: 235, column: 36, scope: !788)
!790 = !DILocation(line: 235, column: 9, scope: !772)
!791 = !DILocation(line: 237, column: 5, scope: !792)
!792 = distinct !DILexicalBlock(scope: !788, file: !74, line: 235, column: 42)
!793 = !DILocation(line: 245, column: 5, scope: !772)
!794 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !74, file: !74, line: 215, type: !53, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !4)
!795 = !DILocation(line: 217, column: 16, scope: !796)
!796 = distinct !DILexicalBlock(scope: !794, file: !74, line: 217, column: 9)
!797 = !DILocation(line: 217, column: 28, scope: !796)
!798 = !DILocation(line: 217, column: 9, scope: !794)
!799 = !DILocation(line: 218, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !74, line: 217, column: 34)
!801 = !DILocation(line: 219, column: 5, scope: !800)
!802 = !DILocation(line: 220, column: 1, scope: !794)
!803 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !74, file: !74, line: 151, type: !804, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !4)
!804 = !DISubroutineType(types: !805)
!805 = !{!70, !64, !31}
!806 = !DILocalVariable(name: "buf_", arg: 1, scope: !803, file: !74, line: 151, type: !64)
!807 = !DILocation(line: 0, scope: !803)
!808 = !DILocalVariable(name: "size", arg: 2, scope: !803, file: !74, line: 151, type: !31)
!809 = !DILocalVariable(name: "buf", scope: !803, file: !74, line: 153, type: !80)
!810 = !DILocalVariable(name: "chunk_size", scope: !803, file: !74, line: 154, type: !31)
!811 = !DILocation(line: 156, column: 5, scope: !803)
!812 = !DILocation(line: 157, column: 18, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !74, line: 157, column: 13)
!814 = distinct !DILexicalBlock(scope: !803, file: !74, line: 156, column: 8)
!815 = !DILocation(line: 157, column: 13, scope: !814)
!816 = !DILocation(line: 159, column: 13, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !74, line: 159, column: 13)
!818 = distinct !DILexicalBlock(scope: !819, file: !74, line: 159, column: 13)
!819 = distinct !DILexicalBlock(scope: !813, file: !74, line: 157, column: 32)
!820 = !DILocation(line: 159, column: 13, scope: !818)
!821 = !DILocation(line: 160, column: 9, scope: !819)
!822 = !DILocation(line: 161, column: 13, scope: !823)
!823 = distinct !DILexicalBlock(scope: !814, file: !74, line: 161, column: 13)
!824 = !DILocation(line: 161, column: 59, scope: !823)
!825 = !DILocation(line: 161, column: 13, scope: !814)
!826 = !DILocation(line: 162, column: 13, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !74, line: 161, column: 65)
!828 = !DILocation(line: 164, column: 14, scope: !814)
!829 = !DILocation(line: 165, column: 13, scope: !814)
!830 = !DILocation(line: 166, column: 5, scope: !814)
!831 = !DILocation(line: 166, column: 19, scope: !803)
!832 = distinct !{!832, !811, !833, !271}
!833 = !DILocation(line: 166, column: 32, scope: !803)
!834 = !DILocation(line: 168, column: 5, scope: !803)
!835 = !DILocation(line: 169, column: 1, scope: !803)
!836 = distinct !DISubprogram(name: "safe_read", scope: !74, file: !74, line: 77, type: !837, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !4)
!837 = !DISubroutineType(types: !838)
!838 = !{!76, !839, !64, !31}
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!840 = !DILocalVariable(name: "fd", arg: 1, scope: !836, file: !74, line: 77, type: !839)
!841 = !DILocation(line: 0, scope: !836)
!842 = !DILocalVariable(name: "buf_", arg: 2, scope: !836, file: !74, line: 77, type: !64)
!843 = !DILocalVariable(name: "size", arg: 3, scope: !836, file: !74, line: 77, type: !31)
!844 = !DILocalVariable(name: "buf", scope: !836, file: !74, line: 79, type: !80)
!845 = !DILocation(line: 82, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !74, line: 82, column: 5)
!847 = distinct !DILexicalBlock(scope: !836, file: !74, line: 82, column: 5)
!848 = !DILocation(line: 82, column: 5, scope: !847)
!849 = !DILocation(line: 83, column: 5, scope: !836)
!850 = !DILocation(line: 84, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !836, file: !74, line: 83, column: 8)
!852 = !DILocation(line: 84, column: 26, scope: !851)
!853 = !DILocalVariable(name: "readnb", scope: !836, file: !74, line: 80, type: !76)
!854 = !DILocation(line: 84, column: 47, scope: !851)
!855 = !DILocation(line: 84, column: 61, scope: !851)
!856 = !DILocation(line: 85, column: 17, scope: !851)
!857 = !DILocation(line: 85, column: 23, scope: !851)
!858 = !DILocation(line: 85, column: 32, scope: !851)
!859 = !DILocation(line: 85, column: 35, scope: !851)
!860 = !DILocation(line: 85, column: 41, scope: !851)
!861 = !DILocation(line: 0, scope: !851)
!862 = distinct !{!862, !850, !863, !271}
!863 = !DILocation(line: 85, column: 52, scope: !851)
!864 = !DILocation(line: 86, column: 20, scope: !865)
!865 = distinct !DILexicalBlock(scope: !851, file: !74, line: 86, column: 13)
!866 = !DILocation(line: 86, column: 13, scope: !851)
!867 = !DILocation(line: 87, column: 13, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !74, line: 86, column: 35)
!869 = !DILocation(line: 89, column: 20, scope: !870)
!870 = distinct !DILexicalBlock(scope: !851, file: !74, line: 89, column: 13)
!871 = !DILocation(line: 89, column: 13, scope: !851)
!872 = !DILocation(line: 90, column: 13, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !74, line: 89, column: 36)
!874 = !DILocation(line: 92, column: 14, scope: !851)
!875 = !DILocation(line: 93, column: 13, scope: !851)
!876 = !DILocation(line: 94, column: 5, scope: !851)
!877 = !DILocation(line: 94, column: 19, scope: !836)
!878 = distinct !{!878, !849, !879, !271}
!879 = !DILocation(line: 94, column: 32, scope: !836)
!880 = !DILocation(line: 96, column: 27, scope: !836)
!881 = !DILocation(line: 96, column: 5, scope: !836)
!882 = !DILocation(line: 97, column: 1, scope: !836)
!883 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !74, file: !74, line: 138, type: !884, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !4)
!884 = !DISubroutineType(types: !885)
!885 = !{!70, !64, !65}
!886 = !DILocalVariable(name: "buf", arg: 1, scope: !883, file: !74, line: 138, type: !64)
!887 = !DILocation(line: 0, scope: !883)
!888 = !DILocalVariable(name: "size", arg: 2, scope: !883, file: !74, line: 138, type: !65)
!889 = !DILocation(line: 142, column: 5, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !74, line: 142, column: 5)
!891 = distinct !DILexicalBlock(scope: !883, file: !74, line: 142, column: 5)
!892 = !DILocation(line: 142, column: 5, scope: !891)
!893 = !DILocation(line: 143, column: 5, scope: !883)
!894 = !DILocation(line: 144, column: 46, scope: !895)
!895 = distinct !DILexicalBlock(scope: !883, file: !74, line: 143, column: 8)
!896 = !DILocation(line: 144, column: 18, scope: !895)
!897 = !DILocalVariable(name: "readnb", scope: !883, file: !74, line: 140, type: !70)
!898 = !DILocation(line: 145, column: 5, scope: !895)
!899 = !DILocation(line: 145, column: 21, scope: !883)
!900 = !DILocation(line: 145, column: 25, scope: !883)
!901 = !DILocation(line: 145, column: 29, scope: !883)
!902 = !DILocation(line: 145, column: 35, scope: !883)
!903 = !DILocation(line: 145, column: 44, scope: !883)
!904 = !DILocation(line: 145, column: 47, scope: !883)
!905 = !DILocation(line: 145, column: 53, scope: !883)
!906 = distinct !{!906, !893, !907, !271}
!907 = !DILocation(line: 145, column: 63, scope: !883)
!908 = !DILocation(line: 147, column: 23, scope: !883)
!909 = !DILocation(line: 147, column: 20, scope: !883)
!910 = !DILocation(line: 147, column: 35, scope: !883)
!911 = !DILocation(line: 147, column: 5, scope: !883)
!912 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !74, file: !74, line: 173, type: !53, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !73, retainedNodes: !4)
!913 = !DILocation(line: 175, column: 32, scope: !912)
!914 = !DILocalVariable(name: "errno_save", scope: !912, file: !74, line: 175, type: !839)
!915 = !DILocation(line: 0, scope: !912)
!916 = !DILocalVariable(name: "fodder", scope: !917, file: !74, line: 179, type: !114)
!917 = distinct !DILexicalBlock(scope: !912, file: !74, line: 178, column: 5)
!918 = !DILocation(line: 179, column: 16, scope: !917)
!919 = !DILocation(line: 181, column: 34, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !74, line: 181, column: 6)
!921 = !DILocation(line: 181, column: 6, scope: !920)
!922 = !DILocation(line: 181, column: 57, scope: !920)
!923 = !DILocation(line: 181, column: 6, scope: !917)
!924 = !DILocation(line: 182, column: 33, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !74, line: 181, column: 63)
!926 = !DILocation(line: 183, column: 6, scope: !925)
!927 = !DILocation(line: 183, column: 12, scope: !925)
!928 = !DILocation(line: 184, column: 6, scope: !925)
!929 = !DILocation(line: 186, column: 29, scope: !917)
!930 = !DILocation(line: 191, column: 10, scope: !931)
!931 = distinct !DILexicalBlock(scope: !912, file: !74, line: 190, column: 9)
!932 = !DILocation(line: 190, column: 39, scope: !931)
!933 = !DILocation(line: 191, column: 51, scope: !931)
!934 = !DILocation(line: 190, column: 9, scope: !912)
!935 = !DILocation(line: 192, column: 9, scope: !936)
!936 = distinct !DILexicalBlock(scope: !931, file: !74, line: 191, column: 58)
!937 = !DILocation(line: 194, column: 5, scope: !912)
!938 = !DILocation(line: 194, column: 11, scope: !912)
!939 = !DILocation(line: 195, column: 1, scope: !912)
!940 = !DILocalVariable(name: "st", scope: !92, file: !74, line: 105, type: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !942, line: 46, size: 1152, elements: !943)
!942 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!943 = !{!944, !946, !948, !950, !952, !954, !956, !957, !958, !960, !962, !964, !972, !973, !974}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !941, file: !942, line: 48, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !9, line: 145, baseType: !10)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !941, file: !942, line: 53, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !9, line: 148, baseType: !10)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !941, file: !942, line: 61, baseType: !949, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !9, line: 151, baseType: !10)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !941, file: !942, line: 62, baseType: !951, size: 32, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !9, line: 150, baseType: !30)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !941, file: !942, line: 64, baseType: !953, size: 32, offset: 224)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !9, line: 146, baseType: !30)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !941, file: !942, line: 65, baseType: !955, size: 32, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !9, line: 147, baseType: !30)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !941, file: !942, line: 67, baseType: !70, size: 32, offset: 288)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !941, file: !942, line: 69, baseType: !945, size: 64, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !941, file: !942, line: 74, baseType: !959, size: 64, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 152, baseType: !79)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !941, file: !942, line: 78, baseType: !961, size: 64, offset: 448)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !9, line: 174, baseType: !79)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !941, file: !942, line: 80, baseType: !963, size: 64, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !9, line: 179, baseType: !79)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !941, file: !942, line: 91, baseType: !965, size: 128, offset: 576)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !966, line: 10, size: 128, elements: !967)
!966 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!967 = !{!968, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !965, file: !966, line: 12, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !9, line: 160, baseType: !79)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !965, file: !966, line: 16, baseType: !971, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !9, line: 196, baseType: !79)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !941, file: !942, line: 92, baseType: !965, size: 128, offset: 704)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !941, file: !942, line: 93, baseType: !965, size: 128, offset: 832)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !941, file: !942, line: 106, baseType: !975, size: 192, offset: 960)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 192, elements: !94)
!976 = !DILocation(line: 105, column: 24, scope: !92)
!977 = !DILocalVariable(name: "device", scope: !92, file: !74, line: 112, type: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!979 = !DILocation(line: 0, scope: !92)
!980 = !DILocation(line: 115, column: 5, scope: !92)
!981 = !DILocation(line: 116, column: 19, scope: !982)
!982 = distinct !DILexicalBlock(scope: !92, file: !74, line: 115, column: 8)
!983 = !DILocation(line: 116, column: 14, scope: !982)
!984 = !DILocalVariable(name: "fd", scope: !92, file: !74, line: 113, type: !70)
!985 = !DILocation(line: 117, column: 16, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !74, line: 117, column: 13)
!987 = !DILocation(line: 117, column: 13, scope: !982)
!988 = !DILocation(line: 118, column: 17, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !74, line: 118, column: 17)
!990 = distinct !DILexicalBlock(scope: !986, file: !74, line: 117, column: 23)
!991 = !DILocation(line: 118, column: 32, scope: !989)
!992 = !DILocation(line: 118, column: 37, scope: !989)
!993 = !DILocation(line: 118, column: 40, scope: !989)
!994 = !DILocation(line: 118, column: 17, scope: !990)
!995 = !DILocation(line: 120, column: 43, scope: !996)
!996 = distinct !DILexicalBlock(scope: !989, file: !74, line: 118, column: 61)
!997 = !DILocation(line: 120, column: 62, scope: !996)
!998 = !DILocation(line: 120, column: 24, scope: !996)
!999 = !DILocation(line: 122, column: 17, scope: !996)
!1000 = !DILocation(line: 124, column: 20, scope: !990)
!1001 = !DILocation(line: 125, column: 9, scope: !990)
!1002 = !DILocation(line: 125, column: 20, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !986, file: !74, line: 125, column: 20)
!1004 = !DILocation(line: 125, column: 26, scope: !1003)
!1005 = !DILocation(line: 125, column: 20, scope: !986)
!1006 = !DILocation(line: 126, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !74, line: 125, column: 36)
!1008 = !DILocation(line: 128, column: 15, scope: !982)
!1009 = !DILocation(line: 129, column: 5, scope: !982)
!1010 = !DILocation(line: 129, column: 14, scope: !92)
!1011 = !DILocation(line: 129, column: 22, scope: !92)
!1012 = distinct !{!1012, !980, !1013, !271}
!1013 = !DILocation(line: 129, column: 29, scope: !92)
!1014 = !DILocation(line: 131, column: 5, scope: !92)
!1015 = !DILocation(line: 131, column: 11, scope: !92)
!1016 = !DILocation(line: 132, column: 5, scope: !92)
!1017 = !DILocation(line: 134, column: 1, scope: !92)
!1018 = distinct !DISubprogram(name: "sodium_memzero", scope: !107, file: !107, line: 58, type: !62, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1019 = !DILocalVariable(name: "pnt", arg: 1, scope: !1018, file: !107, line: 58, type: !64)
!1020 = !DILocation(line: 0, scope: !1018)
!1021 = !DILocalVariable(name: "len", arg: 2, scope: !1018, file: !107, line: 58, type: !65)
!1022 = !DILocalVariable(name: "pnt_", scope: !1018, file: !107, line: 72, type: !109)
!1023 = !DILocalVariable(name: "i", scope: !1018, file: !107, line: 73, type: !31)
!1024 = !DILocation(line: 75, column: 5, scope: !1018)
!1025 = !DILocation(line: 75, column: 14, scope: !1018)
!1026 = !DILocation(line: 76, column: 15, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1018, file: !107, line: 75, column: 21)
!1028 = !DILocation(line: 76, column: 9, scope: !1027)
!1029 = !DILocation(line: 76, column: 19, scope: !1027)
!1030 = distinct !{!1030, !1024, !1031, !271}
!1031 = !DILocation(line: 77, column: 5, scope: !1018)
!1032 = !DILocation(line: 79, column: 1, scope: !1018)
!1033 = distinct !DISubprogram(name: "sodium_memcmp", scope: !107, file: !107, line: 82, type: !1034, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!70, !1036, !1036, !31}
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!1037 = !DILocalVariable(name: "b1_", arg: 1, scope: !1033, file: !107, line: 82, type: !1036)
!1038 = !DILocation(line: 0, scope: !1033)
!1039 = !DILocalVariable(name: "b2_", arg: 2, scope: !1033, file: !107, line: 82, type: !1036)
!1040 = !DILocalVariable(name: "len", arg: 3, scope: !1033, file: !107, line: 82, type: !31)
!1041 = !DILocalVariable(name: "b1", scope: !1033, file: !107, line: 84, type: !111)
!1042 = !DILocalVariable(name: "b2", scope: !1033, file: !107, line: 85, type: !111)
!1043 = !DILocalVariable(name: "d", scope: !1033, file: !107, line: 87, type: !16)
!1044 = !DILocalVariable(name: "i", scope: !1033, file: !107, line: 86, type: !31)
!1045 = !DILocation(line: 89, column: 10, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1033, file: !107, line: 89, column: 5)
!1047 = !DILocation(line: 0, scope: !1046)
!1048 = !DILocation(line: 89, column: 20, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1046, file: !107, line: 89, column: 5)
!1050 = !DILocation(line: 89, column: 5, scope: !1046)
!1051 = !DILocation(line: 90, column: 14, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !107, line: 89, column: 32)
!1053 = !DILocation(line: 90, column: 22, scope: !1052)
!1054 = !DILocation(line: 90, column: 20, scope: !1052)
!1055 = !DILocation(line: 90, column: 11, scope: !1052)
!1056 = !DILocation(line: 91, column: 5, scope: !1052)
!1057 = !DILocation(line: 89, column: 28, scope: !1049)
!1058 = !DILocation(line: 89, column: 5, scope: !1049)
!1059 = distinct !{!1059, !1050, !1060, !271}
!1060 = !DILocation(line: 91, column: 5, scope: !1046)
!1061 = !DILocation(line: 92, column: 26, scope: !1033)
!1062 = !DILocation(line: 92, column: 28, scope: !1033)
!1063 = !DILocation(line: 92, column: 33, scope: !1033)
!1064 = !DILocation(line: 92, column: 22, scope: !1033)
!1065 = !DILocation(line: 92, column: 40, scope: !1033)
!1066 = !DILocation(line: 92, column: 5, scope: !1033)
!1067 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !107, file: !107, line: 97, type: !1068, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!1070, !1071, !65, !1072, !65}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1070)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!1073 = !DILocalVariable(name: "hex", arg: 1, scope: !1067, file: !107, line: 97, type: !1071)
!1074 = !DILocation(line: 0, scope: !1067)
!1075 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !1067, file: !107, line: 97, type: !65)
!1076 = !DILocalVariable(name: "bin", arg: 3, scope: !1067, file: !107, line: 98, type: !1072)
!1077 = !DILocalVariable(name: "bin_len", arg: 4, scope: !1067, file: !107, line: 98, type: !65)
!1078 = !DILocalVariable(name: "i", scope: !1067, file: !107, line: 100, type: !31)
!1079 = !DILocation(line: 105, column: 17, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1067, file: !107, line: 105, column: 9)
!1081 = !DILocation(line: 105, column: 33, scope: !1080)
!1082 = !DILocation(line: 105, column: 57, scope: !1080)
!1083 = !DILocation(line: 105, column: 47, scope: !1080)
!1084 = !DILocation(line: 105, column: 9, scope: !1067)
!1085 = !DILocation(line: 106, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1080, file: !107, line: 105, column: 63)
!1087 = !DILocation(line: 108, column: 5, scope: !1067)
!1088 = !DILocation(line: 108, column: 14, scope: !1067)
!1089 = !DILocation(line: 109, column: 13, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1067, file: !107, line: 108, column: 25)
!1091 = !DILocation(line: 109, column: 20, scope: !1090)
!1092 = !DILocalVariable(name: "c", scope: !1067, file: !107, line: 103, type: !70)
!1093 = !DILocation(line: 110, column: 13, scope: !1090)
!1094 = !DILocation(line: 110, column: 20, scope: !1090)
!1095 = !DILocalVariable(name: "b", scope: !1067, file: !107, line: 102, type: !70)
!1096 = !DILocation(line: 111, column: 34, scope: !1090)
!1097 = !DILocation(line: 111, column: 45, scope: !1090)
!1098 = !DILocation(line: 111, column: 52, scope: !1090)
!1099 = !DILocation(line: 111, column: 58, scope: !1090)
!1100 = !DILocation(line: 111, column: 38, scope: !1090)
!1101 = !DILocation(line: 111, column: 13, scope: !1090)
!1102 = !DILocation(line: 111, column: 67, scope: !1090)
!1103 = !DILocation(line: 112, column: 34, scope: !1090)
!1104 = !DILocation(line: 112, column: 45, scope: !1090)
!1105 = !DILocation(line: 112, column: 52, scope: !1090)
!1106 = !DILocation(line: 112, column: 58, scope: !1090)
!1107 = !DILocation(line: 112, column: 38, scope: !1090)
!1108 = !DILocation(line: 112, column: 13, scope: !1090)
!1109 = !DILocation(line: 111, column: 72, scope: !1090)
!1110 = !DILocalVariable(name: "x", scope: !1067, file: !107, line: 101, type: !30)
!1111 = !DILocation(line: 113, column: 23, scope: !1090)
!1112 = !DILocation(line: 113, column: 15, scope: !1090)
!1113 = !DILocation(line: 113, column: 9, scope: !1090)
!1114 = !DILocation(line: 113, column: 21, scope: !1090)
!1115 = !DILocation(line: 114, column: 11, scope: !1090)
!1116 = !DILocation(line: 115, column: 28, scope: !1090)
!1117 = !DILocation(line: 115, column: 15, scope: !1090)
!1118 = !DILocation(line: 115, column: 20, scope: !1090)
!1119 = !DILocation(line: 115, column: 9, scope: !1090)
!1120 = !DILocation(line: 115, column: 26, scope: !1090)
!1121 = !DILocation(line: 116, column: 10, scope: !1090)
!1122 = distinct !{!1122, !1087, !1123, !271}
!1123 = !DILocation(line: 117, column: 5, scope: !1067)
!1124 = !DILocation(line: 118, column: 11, scope: !1067)
!1125 = !DILocation(line: 118, column: 5, scope: !1067)
!1126 = !DILocation(line: 118, column: 17, scope: !1067)
!1127 = !DILocation(line: 120, column: 5, scope: !1067)
!1128 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !107, file: !107, line: 124, type: !1129, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!70, !714, !65, !1131, !65, !1131, !1132, !1134}
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!1135 = !DILocalVariable(name: "bin", arg: 1, scope: !1128, file: !107, line: 124, type: !714)
!1136 = !DILocation(line: 0, scope: !1128)
!1137 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !1128, file: !107, line: 124, type: !65)
!1138 = !DILocalVariable(name: "hex", arg: 3, scope: !1128, file: !107, line: 125, type: !1131)
!1139 = !DILocalVariable(name: "hex_len", arg: 4, scope: !1128, file: !107, line: 125, type: !65)
!1140 = !DILocalVariable(name: "ignore", arg: 5, scope: !1128, file: !107, line: 126, type: !1131)
!1141 = !DILocalVariable(name: "bin_len", arg: 6, scope: !1128, file: !107, line: 126, type: !1132)
!1142 = !DILocalVariable(name: "hex_end", arg: 7, scope: !1128, file: !107, line: 127, type: !1134)
!1143 = !DILocalVariable(name: "bin_pos", scope: !1128, file: !107, line: 129, type: !31)
!1144 = !DILocalVariable(name: "hex_pos", scope: !1128, file: !107, line: 130, type: !31)
!1145 = !DILocalVariable(name: "ret", scope: !1128, file: !107, line: 131, type: !70)
!1146 = !DILocalVariable(name: "c_acc", scope: !1128, file: !107, line: 133, type: !16)
!1147 = !DILocalVariable(name: "state", scope: !1128, file: !107, line: 137, type: !16)
!1148 = !DILocation(line: 139, column: 5, scope: !1128)
!1149 = !DILocation(line: 129, column: 19, scope: !1128)
!1150 = !DILocation(line: 139, column: 20, scope: !1128)
!1151 = !DILocation(line: 140, column: 29, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1128, file: !107, line: 139, column: 31)
!1153 = !DILocalVariable(name: "c", scope: !1128, file: !107, line: 132, type: !16)
!1154 = !DILocation(line: 141, column: 17, scope: !1152)
!1155 = !DILocation(line: 141, column: 19, scope: !1152)
!1156 = !DILocalVariable(name: "c_num", scope: !1128, file: !107, line: 135, type: !16)
!1157 = !DILocation(line: 142, column: 19, scope: !1152)
!1158 = !DILocation(line: 142, column: 25, scope: !1152)
!1159 = !DILocation(line: 142, column: 32, scope: !1152)
!1160 = !DILocation(line: 142, column: 18, scope: !1152)
!1161 = !DILocalVariable(name: "c_num0", scope: !1128, file: !107, line: 135, type: !16)
!1162 = !DILocation(line: 143, column: 20, scope: !1152)
!1163 = !DILocation(line: 143, column: 22, scope: !1152)
!1164 = !DILocation(line: 143, column: 30, scope: !1152)
!1165 = !DILocation(line: 143, column: 19, scope: !1152)
!1166 = !DILocalVariable(name: "c_alpha", scope: !1128, file: !107, line: 134, type: !16)
!1167 = !DILocation(line: 144, column: 22, scope: !1152)
!1168 = !DILocation(line: 144, column: 30, scope: !1152)
!1169 = !DILocation(line: 144, column: 40, scope: !1152)
!1170 = !DILocation(line: 144, column: 48, scope: !1152)
!1171 = !DILocation(line: 144, column: 37, scope: !1152)
!1172 = !DILocation(line: 144, column: 56, scope: !1152)
!1173 = !DILocation(line: 144, column: 20, scope: !1152)
!1174 = !DILocalVariable(name: "c_alpha0", scope: !1128, file: !107, line: 134, type: !16)
!1175 = !DILocation(line: 145, column: 14, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1152, file: !107, line: 145, column: 13)
!1177 = !DILocation(line: 145, column: 23, scope: !1176)
!1178 = !DILocation(line: 145, column: 21, scope: !1176)
!1179 = !DILocation(line: 145, column: 33, scope: !1176)
!1180 = !DILocation(line: 145, column: 13, scope: !1152)
!1181 = !DILocation(line: 146, column: 24, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !107, line: 146, column: 17)
!1183 = distinct !DILexicalBlock(scope: !1176, file: !107, line: 145, column: 40)
!1184 = !DILocation(line: 146, column: 32, scope: !1182)
!1185 = !DILocation(line: 146, column: 35, scope: !1182)
!1186 = !DILocation(line: 146, column: 41, scope: !1182)
!1187 = !DILocation(line: 146, column: 47, scope: !1182)
!1188 = !DILocation(line: 146, column: 65, scope: !1182)
!1189 = !DILocation(line: 146, column: 50, scope: !1182)
!1190 = !DILocation(line: 146, column: 68, scope: !1182)
!1191 = !DILocation(line: 146, column: 17, scope: !1183)
!1192 = !DILocation(line: 147, column: 24, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1182, file: !107, line: 146, column: 77)
!1194 = !DILocation(line: 148, column: 17, scope: !1193)
!1195 = distinct !{!1195, !1148, !1196, !271}
!1196 = !DILocation(line: 165, column: 5, scope: !1128)
!1197 = !DILocation(line: 150, column: 13, scope: !1183)
!1198 = !DILocation(line: 152, column: 18, scope: !1152)
!1199 = !DILocation(line: 152, column: 27, scope: !1152)
!1200 = !DILocation(line: 152, column: 25, scope: !1152)
!1201 = !DILocation(line: 152, column: 37, scope: !1152)
!1202 = !DILocation(line: 152, column: 48, scope: !1152)
!1203 = !DILocation(line: 152, column: 46, scope: !1152)
!1204 = !DILocation(line: 152, column: 34, scope: !1152)
!1205 = !DILocation(line: 152, column: 17, scope: !1152)
!1206 = !DILocalVariable(name: "c_val", scope: !1128, file: !107, line: 136, type: !16)
!1207 = !DILocation(line: 153, column: 21, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1152, file: !107, line: 153, column: 13)
!1209 = !DILocation(line: 153, column: 13, scope: !1152)
!1210 = !DILocation(line: 155, column: 13, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !107, line: 153, column: 36)
!1212 = !DILocation(line: 155, column: 19, scope: !1211)
!1213 = !DILocation(line: 156, column: 13, scope: !1211)
!1214 = !DILocation(line: 158, column: 13, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1152, file: !107, line: 158, column: 13)
!1216 = !DILocation(line: 158, column: 19, scope: !1215)
!1217 = !DILocation(line: 158, column: 13, scope: !1152)
!1218 = !DILocation(line: 159, column: 21, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !107, line: 158, column: 26)
!1220 = !DILocation(line: 159, column: 27, scope: !1219)
!1221 = !DILocation(line: 160, column: 9, scope: !1219)
!1222 = !DILocation(line: 161, column: 30, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1215, file: !107, line: 160, column: 16)
!1224 = !DILocation(line: 161, column: 38, scope: !1223)
!1225 = !DILocation(line: 161, column: 36, scope: !1223)
!1226 = !DILocation(line: 161, column: 24, scope: !1223)
!1227 = !DILocation(line: 161, column: 13, scope: !1223)
!1228 = !DILocation(line: 161, column: 28, scope: !1223)
!1229 = !DILocation(line: 163, column: 18, scope: !1152)
!1230 = !DILocation(line: 163, column: 17, scope: !1152)
!1231 = !DILocation(line: 164, column: 16, scope: !1152)
!1232 = !DILocation(line: 166, column: 9, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1128, file: !107, line: 166, column: 9)
!1234 = !DILocation(line: 166, column: 15, scope: !1233)
!1235 = !DILocation(line: 166, column: 9, scope: !1128)
!1236 = !DILocation(line: 167, column: 16, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !107, line: 166, column: 22)
!1238 = !DILocation(line: 168, column: 5, scope: !1237)
!1239 = !DILocation(line: 169, column: 17, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1128, file: !107, line: 169, column: 9)
!1241 = !DILocation(line: 169, column: 9, scope: !1128)
!1242 = !DILocation(line: 170, column: 21, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !107, line: 169, column: 26)
!1244 = !DILocation(line: 170, column: 18, scope: !1243)
!1245 = !DILocation(line: 171, column: 5, scope: !1243)
!1246 = !DILocation(line: 172, column: 17, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1128, file: !107, line: 172, column: 9)
!1248 = !DILocation(line: 172, column: 9, scope: !1128)
!1249 = !DILocation(line: 173, column: 18, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !107, line: 172, column: 26)
!1251 = !DILocation(line: 174, column: 5, scope: !1250)
!1252 = !DILocation(line: 175, column: 5, scope: !1128)
!1253 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !107, file: !107, line: 179, type: !68, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1254 = !DILocation(line: 196, column: 5, scope: !1253)
!1255 = !DILocation(line: 198, column: 5, scope: !1253)
!1256 = distinct !DISubprogram(name: "sodium_mlock", scope: !107, file: !107, line: 202, type: !884, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1257 = !DILocalVariable(name: "addr", arg: 1, scope: !1256, file: !107, line: 202, type: !64)
!1258 = !DILocation(line: 0, scope: !1256)
!1259 = !DILocalVariable(name: "len", arg: 2, scope: !1256, file: !107, line: 202, type: !65)
!1260 = !DILocation(line: 212, column: 5, scope: !1256)
!1261 = !DILocation(line: 212, column: 11, scope: !1256)
!1262 = !DILocation(line: 213, column: 5, scope: !1256)
!1263 = distinct !DISubprogram(name: "sodium_munlock", scope: !107, file: !107, line: 218, type: !884, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1264 = !DILocalVariable(name: "addr", arg: 1, scope: !1263, file: !107, line: 218, type: !64)
!1265 = !DILocation(line: 0, scope: !1263)
!1266 = !DILocalVariable(name: "len", arg: 2, scope: !1263, file: !107, line: 218, type: !65)
!1267 = !DILocation(line: 220, column: 5, scope: !1263)
!1268 = !DILocation(line: 229, column: 5, scope: !1263)
!1269 = !DILocation(line: 229, column: 11, scope: !1263)
!1270 = !DILocation(line: 230, column: 5, scope: !1263)
!1271 = distinct !DISubprogram(name: "sodium_malloc", scope: !107, file: !107, line: 402, type: !1272, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!11, !65}
!1274 = !DILocalVariable(name: "size", arg: 1, scope: !1271, file: !107, line: 402, type: !65)
!1275 = !DILocation(line: 0, scope: !1271)
!1276 = !DILocation(line: 406, column: 16, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1271, file: !107, line: 406, column: 9)
!1278 = !DILocalVariable(name: "ptr", scope: !1271, file: !107, line: 404, type: !11)
!1279 = !DILocation(line: 406, column: 38, scope: !1277)
!1280 = !DILocation(line: 406, column: 9, scope: !1271)
!1281 = !DILocation(line: 407, column: 9, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !107, line: 406, column: 47)
!1283 = !DILocation(line: 409, column: 5, scope: !1271)
!1284 = !DILocation(line: 411, column: 5, scope: !1271)
!1285 = !DILocation(line: 412, column: 1, scope: !1271)
!1286 = distinct !DISubprogram(name: "_sodium_malloc", scope: !107, file: !107, line: 353, type: !1272, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1287 = !DILocalVariable(name: "size", arg: 1, scope: !1286, file: !107, line: 353, type: !65)
!1288 = !DILocation(line: 0, scope: !1286)
!1289 = !DILocation(line: 355, column: 12, scope: !1286)
!1290 = !DILocation(line: 355, column: 5, scope: !1286)
!1291 = distinct !DISubprogram(name: "sodium_allocarray", scope: !107, file: !107, line: 415, type: !1292, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!11, !31, !31}
!1294 = !DILocalVariable(name: "count", arg: 1, scope: !1291, file: !107, line: 415, type: !31)
!1295 = !DILocation(line: 0, scope: !1291)
!1296 = !DILocalVariable(name: "size", arg: 2, scope: !1291, file: !107, line: 415, type: !31)
!1297 = !DILocation(line: 419, column: 15, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1291, file: !107, line: 419, column: 9)
!1299 = !DILocation(line: 419, column: 29, scope: !1298)
!1300 = !DILocation(line: 419, column: 58, scope: !1298)
!1301 = !DILocation(line: 419, column: 37, scope: !1298)
!1302 = !DILocation(line: 419, column: 9, scope: !1291)
!1303 = !DILocation(line: 420, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1298, file: !107, line: 419, column: 67)
!1305 = !DILocation(line: 420, column: 15, scope: !1304)
!1306 = !DILocation(line: 421, column: 9, scope: !1304)
!1307 = !DILocation(line: 423, column: 24, scope: !1291)
!1308 = !DILocalVariable(name: "total_size", scope: !1291, file: !107, line: 417, type: !31)
!1309 = !DILocation(line: 425, column: 12, scope: !1291)
!1310 = !DILocation(line: 425, column: 5, scope: !1291)
!1311 = !DILocation(line: 426, column: 1, scope: !1291)
!1312 = distinct !DISubprogram(name: "sodium_free", scope: !107, file: !107, line: 430, type: !1313, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !11}
!1315 = !DILocalVariable(name: "ptr", arg: 1, scope: !1312, file: !107, line: 430, type: !11)
!1316 = !DILocation(line: 0, scope: !1312)
!1317 = !DILocation(line: 432, column: 5, scope: !1312)
!1318 = !DILocation(line: 433, column: 1, scope: !1312)
!1319 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !107, file: !107, line: 493, type: !1320, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!70, !11}
!1322 = !DILocalVariable(name: "ptr", arg: 1, scope: !1319, file: !107, line: 493, type: !11)
!1323 = !DILocation(line: 0, scope: !1319)
!1324 = !DILocation(line: 495, column: 12, scope: !1319)
!1325 = !DILocation(line: 495, column: 5, scope: !1319)
!1326 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !107, file: !107, line: 235, type: !1327, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!70, !11, !31}
!1329 = !DILocalVariable(name: "ptr", arg: 1, scope: !1326, file: !107, line: 235, type: !11)
!1330 = !DILocation(line: 0, scope: !1326)
!1331 = !DILocalVariable(name: "size", arg: 2, scope: !1326, file: !107, line: 235, type: !31)
!1332 = !DILocation(line: 243, column: 5, scope: !1326)
!1333 = !DILocation(line: 243, column: 11, scope: !1326)
!1334 = !DILocation(line: 244, column: 5, scope: !1326)
!1335 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !107, file: !107, line: 469, type: !1336, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!70, !11, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1339 = !DILocalVariable(name: "ptr", arg: 1, scope: !1335, file: !107, line: 469, type: !11)
!1340 = !DILocation(line: 0, scope: !1335)
!1341 = !DILocalVariable(name: "cb", arg: 2, scope: !1335, file: !107, line: 469, type: !1338)
!1342 = !DILocation(line: 473, column: 5, scope: !1335)
!1343 = !DILocation(line: 473, column: 11, scope: !1335)
!1344 = !DILocation(line: 474, column: 5, scope: !1335)
!1345 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !107, file: !107, line: 499, type: !1320, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1346 = !DILocalVariable(name: "ptr", arg: 1, scope: !1345, file: !107, line: 499, type: !11)
!1347 = !DILocation(line: 0, scope: !1345)
!1348 = !DILocation(line: 501, column: 12, scope: !1345)
!1349 = !DILocation(line: 501, column: 5, scope: !1345)
!1350 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !107, file: !107, line: 249, type: !1327, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1351 = !DILocalVariable(name: "ptr", arg: 1, scope: !1350, file: !107, line: 249, type: !11)
!1352 = !DILocation(line: 0, scope: !1350)
!1353 = !DILocalVariable(name: "size", arg: 2, scope: !1350, file: !107, line: 249, type: !31)
!1354 = !DILocation(line: 257, column: 5, scope: !1350)
!1355 = !DILocation(line: 257, column: 11, scope: !1350)
!1356 = !DILocation(line: 258, column: 5, scope: !1350)
!1357 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !107, file: !107, line: 505, type: !1320, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1358 = !DILocalVariable(name: "ptr", arg: 1, scope: !1357, file: !107, line: 505, type: !11)
!1359 = !DILocation(line: 0, scope: !1357)
!1360 = !DILocation(line: 507, column: 12, scope: !1357)
!1361 = !DILocation(line: 507, column: 5, scope: !1357)
!1362 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !107, file: !107, line: 263, type: !1327, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1363 = !DILocalVariable(name: "ptr", arg: 1, scope: !1362, file: !107, line: 263, type: !11)
!1364 = !DILocation(line: 0, scope: !1362)
!1365 = !DILocalVariable(name: "size", arg: 2, scope: !1362, file: !107, line: 263, type: !31)
!1366 = !DILocation(line: 271, column: 5, scope: !1362)
!1367 = !DILocation(line: 271, column: 11, scope: !1362)
!1368 = !DILocation(line: 272, column: 5, scope: !1362)
