; ModuleID = 'crypto_hash_sha256.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i64)*, i32 ()* }
%struct.SysRandom_ = type { i32, i32, i32 }
%struct.smack_value = type { i8* }
%struct.crypto_hash_sha256_state = type { [8 x i32], [2 x i32], [64 x i8] }
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
define dso_local i32 @crypto_hash_sha256_wrapper(i8* %0, i8* %1) #0 !dbg !121 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata i8* %1, metadata !126, metadata !DIExpression()), !dbg !125
  %3 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !127
  call void @public_in(%struct.smack_value* %3), !dbg !128
  %4 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !129
  call void @public_in(%struct.smack_value* %4), !dbg !130
  %5 = call i32 @crypto_hash_sha256(i8* %0, i8* %1, i64 156), !dbg !131
  ret i32 %5, !dbg !132
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_hash_sha256_wrapper_t() #0 !dbg !133 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !134, metadata !DIExpression()), !dbg !135
  %3 = call zeroext i8 (...) @gout(), !dbg !136
  store i8 %3, i8* %1, align 1, !dbg !135
  call void @llvm.dbg.declare(metadata i8* %2, metadata !137, metadata !DIExpression()), !dbg !138
  %4 = call zeroext i8 (...) @gin(), !dbg !139
  store i8 %4, i8* %2, align 1, !dbg !138
  %5 = call zeroext i8 (...) @gk(), !dbg !140
  call void @llvm.dbg.value(metadata i8 %5, metadata !141, metadata !DIExpression()), !dbg !142
  %6 = call zeroext i8 (...) @gc(), !dbg !143
  call void @llvm.dbg.value(metadata i8 %6, metadata !144, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i8* %1, metadata !145, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i8* %2, metadata !146, metadata !DIExpression()), !dbg !142
  %7 = call i32 @crypto_hash_sha256(i8* %1, i8* %2, i64 156), !dbg !147
  ret void, !dbg !148
}

declare dso_local zeroext i8 @gout(...) #2

declare dso_local zeroext i8 @gin(...) #2

declare dso_local zeroext i8 @gk(...) #2

declare dso_local zeroext i8 @gc(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha256_init(%struct.crypto_hash_sha256_state* %0) #0 !dbg !149 {
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha256_state* %0, metadata !166, metadata !DIExpression()), !dbg !167
  %2 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !168
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1, !dbg !169
  store i32 0, i32* %3, align 4, !dbg !170
  %4 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !171
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !172
  store i32 0, i32* %5, align 4, !dbg !173
  %6 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !174
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0, !dbg !175
  store i32 1779033703, i32* %7, align 4, !dbg !176
  %8 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !177
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1, !dbg !178
  store i32 -1150833019, i32* %9, align 4, !dbg !179
  %10 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !180
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2, !dbg !181
  store i32 1013904242, i32* %11, align 4, !dbg !182
  %12 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !183
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3, !dbg !184
  store i32 -1521486534, i32* %13, align 4, !dbg !185
  %14 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !186
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 4, !dbg !187
  store i32 1359893119, i32* %15, align 4, !dbg !188
  %16 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !189
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5, !dbg !190
  store i32 -1694144372, i32* %17, align 4, !dbg !191
  %18 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !192
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 6, !dbg !193
  store i32 528734635, i32* %19, align 4, !dbg !194
  %20 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !195
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 7, !dbg !196
  store i32 1541459225, i32* %21, align 4, !dbg !197
  ret i32 0, !dbg !198
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %0, i8* %1, i64 %2) #0 !dbg !199 {
  %4 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha256_state* %0, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i8* %1, metadata !204, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 %2, metadata !205, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata [2 x i32]* %4, metadata !206, metadata !DIExpression()), !dbg !207
  %5 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !208
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !209
  %7 = load i32, i32* %6, align 4, !dbg !209
  %8 = lshr i32 %7, 3, !dbg !210
  %9 = and i32 %8, 63, !dbg !211
  call void @llvm.dbg.value(metadata i32 %9, metadata !212, metadata !DIExpression()), !dbg !203
  %10 = trunc i64 %2 to i32, !dbg !213
  %11 = shl i32 %10, 3, !dbg !214
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !215
  store i32 %11, i32* %12, align 4, !dbg !216
  %13 = lshr i64 %2, 29, !dbg !217
  %14 = trunc i64 %13 to i32, !dbg !218
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !219
  store i32 %14, i32* %15, align 4, !dbg !220
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !221
  %17 = load i32, i32* %16, align 4, !dbg !221
  %18 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !223
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1, !dbg !224
  %20 = load i32, i32* %19, align 4, !dbg !225
  %21 = add i32 %20, %17, !dbg !225
  store i32 %21, i32* %19, align 4, !dbg !225
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !226
  %23 = load i32, i32* %22, align 4, !dbg !226
  %24 = icmp ult i32 %21, %23, !dbg !227
  br i1 %24, label %25, label %30, !dbg !228

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !229
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0, !dbg !231
  %28 = load i32, i32* %27, align 4, !dbg !232
  %29 = add i32 %28, 1, !dbg !232
  store i32 %29, i32* %27, align 4, !dbg !232
  br label %30, !dbg !233

30:                                               ; preds = %25, %3
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !234
  %32 = load i32, i32* %31, align 4, !dbg !234
  %33 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !235
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0, !dbg !236
  %35 = load i32, i32* %34, align 4, !dbg !237
  %36 = add i32 %35, %32, !dbg !237
  store i32 %36, i32* %34, align 4, !dbg !237
  %37 = sub i32 64, %9, !dbg !238
  %38 = zext i32 %37 to i64, !dbg !240
  %39 = icmp ult i64 %2, %38, !dbg !241
  br i1 %39, label %40, label %44, !dbg !242

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 2, !dbg !243
  %42 = zext i32 %9 to i64, !dbg !245
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %41, i64 0, i64 %42, !dbg !245
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %1, i64 %2, i1 false), !dbg !246
  br label %70, !dbg !247

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 2, !dbg !248
  %46 = zext i32 %9 to i64, !dbg !249
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %45, i64 0, i64 %46, !dbg !249
  %48 = sub i32 64, %9, !dbg !250
  %49 = zext i32 %48 to i64, !dbg !251
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %1, i64 %49, i1 false), !dbg !252
  %50 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !253
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %50, i64 0, i64 0, !dbg !254
  %52 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 2, !dbg !255
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %52, i64 0, i64 0, !dbg !256
  call void @SHA256_Transform(i32* %51, i8* %53), !dbg !257
  %54 = sub i32 64, %9, !dbg !258
  %55 = zext i32 %54 to i64, !dbg !259
  %56 = getelementptr inbounds i8, i8* %1, i64 %55, !dbg !259
  call void @llvm.dbg.value(metadata i8* %56, metadata !204, metadata !DIExpression()), !dbg !203
  %57 = sub i32 64, %9, !dbg !260
  %58 = zext i32 %57 to i64, !dbg !261
  %59 = sub i64 %2, %58, !dbg !262
  call void @llvm.dbg.value(metadata i64 %59, metadata !205, metadata !DIExpression()), !dbg !203
  br label %60, !dbg !263

60:                                               ; preds = %62, %44
  %.02 = phi i8* [ %56, %44 ], [ %65, %62 ], !dbg !203
  %.01 = phi i64 [ %59, %44 ], [ %66, %62 ], !dbg !203
  call void @llvm.dbg.value(metadata i64 %.01, metadata !205, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i8* %.02, metadata !204, metadata !DIExpression()), !dbg !203
  %61 = icmp uge i64 %.01, 64, !dbg !264
  br i1 %61, label %62, label %67, !dbg !263

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !265
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %63, i64 0, i64 0, !dbg !267
  call void @SHA256_Transform(i32* %64, i8* %.02), !dbg !268
  %65 = getelementptr inbounds i8, i8* %.02, i64 64, !dbg !269
  call void @llvm.dbg.value(metadata i8* %65, metadata !204, metadata !DIExpression()), !dbg !203
  %66 = sub i64 %.01, 64, !dbg !270
  call void @llvm.dbg.value(metadata i64 %66, metadata !205, metadata !DIExpression()), !dbg !203
  br label %60, !dbg !263, !llvm.loop !271

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 2, !dbg !274
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %68, i64 0, i64 0, !dbg !275
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 1 %.02, i64 %.01, i1 false), !dbg !275
  br label %70, !dbg !276

70:                                               ; preds = %67, %40
  ret i32 0, !dbg !277
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @SHA256_Transform(i32* %0, i8* %1) #0 !dbg !278 {
  %3 = alloca [64 x i32], align 16
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i8* %1, metadata !284, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata [64 x i32]* %3, metadata !285, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata [8 x i32]* %4, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i32* %5, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %6, metadata !292, metadata !DIExpression()), !dbg !293
  %7 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !294
  call void @be32dec_vect(i32* %7, i8* %1, i64 64), !dbg !295
  call void @llvm.dbg.value(metadata i32 16, metadata !296, metadata !DIExpression()), !dbg !283
  br label %8, !dbg !297

8:                                                ; preds = %82, %2
  %.0 = phi i32 [ 16, %2 ], [ %83, %82 ], !dbg !299
  call void @llvm.dbg.value(metadata i32 %.0, metadata !296, metadata !DIExpression()), !dbg !283
  %9 = icmp slt i32 %.0, 64, !dbg !300
  br i1 %9, label %10, label %84, !dbg !302

10:                                               ; preds = %8
  %11 = sub nsw i32 %.0, 2, !dbg !303
  %12 = sext i32 %11 to i64, !dbg !303
  %13 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %12, !dbg !303
  %14 = load i32, i32* %13, align 4, !dbg !303
  %15 = lshr i32 %14, 17, !dbg !303
  %16 = sub nsw i32 %.0, 2, !dbg !303
  %17 = sext i32 %16 to i64, !dbg !303
  %18 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %17, !dbg !303
  %19 = load i32, i32* %18, align 4, !dbg !303
  %20 = shl i32 %19, 15, !dbg !303
  %21 = or i32 %15, %20, !dbg !303
  %22 = sub nsw i32 %.0, 2, !dbg !303
  %23 = sext i32 %22 to i64, !dbg !303
  %24 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %23, !dbg !303
  %25 = load i32, i32* %24, align 4, !dbg !303
  %26 = lshr i32 %25, 19, !dbg !303
  %27 = sub nsw i32 %.0, 2, !dbg !303
  %28 = sext i32 %27 to i64, !dbg !303
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %28, !dbg !303
  %30 = load i32, i32* %29, align 4, !dbg !303
  %31 = shl i32 %30, 13, !dbg !303
  %32 = or i32 %26, %31, !dbg !303
  %33 = xor i32 %21, %32, !dbg !303
  %34 = sub nsw i32 %.0, 2, !dbg !303
  %35 = sext i32 %34 to i64, !dbg !303
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %35, !dbg !303
  %37 = load i32, i32* %36, align 4, !dbg !303
  %38 = lshr i32 %37, 10, !dbg !303
  %39 = xor i32 %33, %38, !dbg !303
  %40 = sub nsw i32 %.0, 7, !dbg !305
  %41 = sext i32 %40 to i64, !dbg !306
  %42 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %41, !dbg !306
  %43 = load i32, i32* %42, align 4, !dbg !306
  %44 = add i32 %39, %43, !dbg !307
  %45 = sub nsw i32 %.0, 15, !dbg !308
  %46 = sext i32 %45 to i64, !dbg !308
  %47 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %46, !dbg !308
  %48 = load i32, i32* %47, align 4, !dbg !308
  %49 = lshr i32 %48, 7, !dbg !308
  %50 = sub nsw i32 %.0, 15, !dbg !308
  %51 = sext i32 %50 to i64, !dbg !308
  %52 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %51, !dbg !308
  %53 = load i32, i32* %52, align 4, !dbg !308
  %54 = shl i32 %53, 25, !dbg !308
  %55 = or i32 %49, %54, !dbg !308
  %56 = sub nsw i32 %.0, 15, !dbg !308
  %57 = sext i32 %56 to i64, !dbg !308
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %57, !dbg !308
  %59 = load i32, i32* %58, align 4, !dbg !308
  %60 = lshr i32 %59, 18, !dbg !308
  %61 = sub nsw i32 %.0, 15, !dbg !308
  %62 = sext i32 %61 to i64, !dbg !308
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %62, !dbg !308
  %64 = load i32, i32* %63, align 4, !dbg !308
  %65 = shl i32 %64, 14, !dbg !308
  %66 = or i32 %60, %65, !dbg !308
  %67 = xor i32 %55, %66, !dbg !308
  %68 = sub nsw i32 %.0, 15, !dbg !308
  %69 = sext i32 %68 to i64, !dbg !308
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %69, !dbg !308
  %71 = load i32, i32* %70, align 4, !dbg !308
  %72 = lshr i32 %71, 3, !dbg !308
  %73 = xor i32 %67, %72, !dbg !308
  %74 = add i32 %44, %73, !dbg !309
  %75 = sub nsw i32 %.0, 16, !dbg !310
  %76 = sext i32 %75 to i64, !dbg !311
  %77 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %76, !dbg !311
  %78 = load i32, i32* %77, align 4, !dbg !311
  %79 = add i32 %74, %78, !dbg !312
  %80 = sext i32 %.0 to i64, !dbg !313
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 %80, !dbg !313
  store i32 %79, i32* %81, align 4, !dbg !314
  br label %82, !dbg !315

82:                                               ; preds = %10
  %83 = add nsw i32 %.0, 1, !dbg !316
  call void @llvm.dbg.value(metadata i32 %83, metadata !296, metadata !DIExpression()), !dbg !283
  br label %8, !dbg !317, !llvm.loop !318

84:                                               ; preds = %8
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !320
  %86 = bitcast i32* %85 to i8*, !dbg !320
  %87 = bitcast i32* %0 to i8*, !dbg !320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %86, i8* align 4 %87, i64 32, i1 false), !dbg !320
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !321
  %89 = load i32, i32* %88, align 4, !dbg !321
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !321
  %91 = load i32, i32* %90, align 16, !dbg !321
  %92 = lshr i32 %91, 6, !dbg !321
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !321
  %94 = load i32, i32* %93, align 16, !dbg !321
  %95 = shl i32 %94, 26, !dbg !321
  %96 = or i32 %92, %95, !dbg !321
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !321
  %98 = load i32, i32* %97, align 16, !dbg !321
  %99 = lshr i32 %98, 11, !dbg !321
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !321
  %101 = load i32, i32* %100, align 16, !dbg !321
  %102 = shl i32 %101, 21, !dbg !321
  %103 = or i32 %99, %102, !dbg !321
  %104 = xor i32 %96, %103, !dbg !321
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !321
  %106 = load i32, i32* %105, align 16, !dbg !321
  %107 = lshr i32 %106, 25, !dbg !321
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !321
  %109 = load i32, i32* %108, align 16, !dbg !321
  %110 = shl i32 %109, 7, !dbg !321
  %111 = or i32 %107, %110, !dbg !321
  %112 = xor i32 %104, %111, !dbg !321
  %113 = add i32 %89, %112, !dbg !321
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !321
  %115 = load i32, i32* %114, align 16, !dbg !321
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !321
  %117 = load i32, i32* %116, align 4, !dbg !321
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !321
  %119 = load i32, i32* %118, align 8, !dbg !321
  %120 = xor i32 %117, %119, !dbg !321
  %121 = and i32 %115, %120, !dbg !321
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !321
  %123 = load i32, i32* %122, align 8, !dbg !321
  %124 = xor i32 %121, %123, !dbg !321
  %125 = add i32 %113, %124, !dbg !321
  %126 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !321
  %127 = load i32, i32* %126, align 16, !dbg !321
  %128 = add i32 %125, %127, !dbg !321
  %129 = add i32 %128, 1116352408, !dbg !321
  store i32 %129, i32* %5, align 4, !dbg !321
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !321
  %131 = load i32, i32* %130, align 16, !dbg !321
  %132 = lshr i32 %131, 2, !dbg !321
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !321
  %134 = load i32, i32* %133, align 16, !dbg !321
  %135 = shl i32 %134, 30, !dbg !321
  %136 = or i32 %132, %135, !dbg !321
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !321
  %138 = load i32, i32* %137, align 16, !dbg !321
  %139 = lshr i32 %138, 13, !dbg !321
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !321
  %141 = load i32, i32* %140, align 16, !dbg !321
  %142 = shl i32 %141, 19, !dbg !321
  %143 = or i32 %139, %142, !dbg !321
  %144 = xor i32 %136, %143, !dbg !321
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !321
  %146 = load i32, i32* %145, align 16, !dbg !321
  %147 = lshr i32 %146, 22, !dbg !321
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !321
  %149 = load i32, i32* %148, align 16, !dbg !321
  %150 = shl i32 %149, 10, !dbg !321
  %151 = or i32 %147, %150, !dbg !321
  %152 = xor i32 %144, %151, !dbg !321
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !321
  %154 = load i32, i32* %153, align 16, !dbg !321
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !321
  %156 = load i32, i32* %155, align 4, !dbg !321
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !321
  %158 = load i32, i32* %157, align 8, !dbg !321
  %159 = or i32 %156, %158, !dbg !321
  %160 = and i32 %154, %159, !dbg !321
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !321
  %162 = load i32, i32* %161, align 4, !dbg !321
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !321
  %164 = load i32, i32* %163, align 8, !dbg !321
  %165 = and i32 %162, %164, !dbg !321
  %166 = or i32 %160, %165, !dbg !321
  %167 = add i32 %152, %166, !dbg !321
  store i32 %167, i32* %6, align 4, !dbg !321
  %168 = load i32, i32* %5, align 4, !dbg !321
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !321
  %170 = load i32, i32* %169, align 4, !dbg !321
  %171 = add i32 %170, %168, !dbg !321
  store i32 %171, i32* %169, align 4, !dbg !321
  %172 = load i32, i32* %5, align 4, !dbg !321
  %173 = load i32, i32* %6, align 4, !dbg !321
  %174 = add i32 %172, %173, !dbg !321
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !321
  store i32 %174, i32* %175, align 4, !dbg !321
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !322
  %177 = load i32, i32* %176, align 8, !dbg !322
  %178 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !322
  %179 = load i32, i32* %178, align 4, !dbg !322
  %180 = lshr i32 %179, 6, !dbg !322
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !322
  %182 = load i32, i32* %181, align 4, !dbg !322
  %183 = shl i32 %182, 26, !dbg !322
  %184 = or i32 %180, %183, !dbg !322
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !322
  %186 = load i32, i32* %185, align 4, !dbg !322
  %187 = lshr i32 %186, 11, !dbg !322
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !322
  %189 = load i32, i32* %188, align 4, !dbg !322
  %190 = shl i32 %189, 21, !dbg !322
  %191 = or i32 %187, %190, !dbg !322
  %192 = xor i32 %184, %191, !dbg !322
  %193 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !322
  %194 = load i32, i32* %193, align 4, !dbg !322
  %195 = lshr i32 %194, 25, !dbg !322
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !322
  %197 = load i32, i32* %196, align 4, !dbg !322
  %198 = shl i32 %197, 7, !dbg !322
  %199 = or i32 %195, %198, !dbg !322
  %200 = xor i32 %192, %199, !dbg !322
  %201 = add i32 %177, %200, !dbg !322
  %202 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !322
  %203 = load i32, i32* %202, align 4, !dbg !322
  %204 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !322
  %205 = load i32, i32* %204, align 16, !dbg !322
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !322
  %207 = load i32, i32* %206, align 4, !dbg !322
  %208 = xor i32 %205, %207, !dbg !322
  %209 = and i32 %203, %208, !dbg !322
  %210 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !322
  %211 = load i32, i32* %210, align 4, !dbg !322
  %212 = xor i32 %209, %211, !dbg !322
  %213 = add i32 %201, %212, !dbg !322
  %214 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 1, !dbg !322
  %215 = load i32, i32* %214, align 4, !dbg !322
  %216 = add i32 %213, %215, !dbg !322
  %217 = add i32 %216, 1899447441, !dbg !322
  store i32 %217, i32* %5, align 4, !dbg !322
  %218 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !322
  %219 = load i32, i32* %218, align 4, !dbg !322
  %220 = lshr i32 %219, 2, !dbg !322
  %221 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !322
  %222 = load i32, i32* %221, align 4, !dbg !322
  %223 = shl i32 %222, 30, !dbg !322
  %224 = or i32 %220, %223, !dbg !322
  %225 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !322
  %226 = load i32, i32* %225, align 4, !dbg !322
  %227 = lshr i32 %226, 13, !dbg !322
  %228 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !322
  %229 = load i32, i32* %228, align 4, !dbg !322
  %230 = shl i32 %229, 19, !dbg !322
  %231 = or i32 %227, %230, !dbg !322
  %232 = xor i32 %224, %231, !dbg !322
  %233 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !322
  %234 = load i32, i32* %233, align 4, !dbg !322
  %235 = lshr i32 %234, 22, !dbg !322
  %236 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !322
  %237 = load i32, i32* %236, align 4, !dbg !322
  %238 = shl i32 %237, 10, !dbg !322
  %239 = or i32 %235, %238, !dbg !322
  %240 = xor i32 %232, %239, !dbg !322
  %241 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !322
  %242 = load i32, i32* %241, align 4, !dbg !322
  %243 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !322
  %244 = load i32, i32* %243, align 16, !dbg !322
  %245 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !322
  %246 = load i32, i32* %245, align 4, !dbg !322
  %247 = or i32 %244, %246, !dbg !322
  %248 = and i32 %242, %247, !dbg !322
  %249 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !322
  %250 = load i32, i32* %249, align 16, !dbg !322
  %251 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !322
  %252 = load i32, i32* %251, align 4, !dbg !322
  %253 = and i32 %250, %252, !dbg !322
  %254 = or i32 %248, %253, !dbg !322
  %255 = add i32 %240, %254, !dbg !322
  store i32 %255, i32* %6, align 4, !dbg !322
  %256 = load i32, i32* %5, align 4, !dbg !322
  %257 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !322
  %258 = load i32, i32* %257, align 8, !dbg !322
  %259 = add i32 %258, %256, !dbg !322
  store i32 %259, i32* %257, align 8, !dbg !322
  %260 = load i32, i32* %5, align 4, !dbg !322
  %261 = load i32, i32* %6, align 4, !dbg !322
  %262 = add i32 %260, %261, !dbg !322
  %263 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !322
  store i32 %262, i32* %263, align 8, !dbg !322
  %264 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !323
  %265 = load i32, i32* %264, align 4, !dbg !323
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !323
  %267 = load i32, i32* %266, align 8, !dbg !323
  %268 = lshr i32 %267, 6, !dbg !323
  %269 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !323
  %270 = load i32, i32* %269, align 8, !dbg !323
  %271 = shl i32 %270, 26, !dbg !323
  %272 = or i32 %268, %271, !dbg !323
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !323
  %274 = load i32, i32* %273, align 8, !dbg !323
  %275 = lshr i32 %274, 11, !dbg !323
  %276 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !323
  %277 = load i32, i32* %276, align 8, !dbg !323
  %278 = shl i32 %277, 21, !dbg !323
  %279 = or i32 %275, %278, !dbg !323
  %280 = xor i32 %272, %279, !dbg !323
  %281 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !323
  %282 = load i32, i32* %281, align 8, !dbg !323
  %283 = lshr i32 %282, 25, !dbg !323
  %284 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !323
  %285 = load i32, i32* %284, align 8, !dbg !323
  %286 = shl i32 %285, 7, !dbg !323
  %287 = or i32 %283, %286, !dbg !323
  %288 = xor i32 %280, %287, !dbg !323
  %289 = add i32 %265, %288, !dbg !323
  %290 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !323
  %291 = load i32, i32* %290, align 8, !dbg !323
  %292 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !323
  %293 = load i32, i32* %292, align 4, !dbg !323
  %294 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !323
  %295 = load i32, i32* %294, align 16, !dbg !323
  %296 = xor i32 %293, %295, !dbg !323
  %297 = and i32 %291, %296, !dbg !323
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !323
  %299 = load i32, i32* %298, align 16, !dbg !323
  %300 = xor i32 %297, %299, !dbg !323
  %301 = add i32 %289, %300, !dbg !323
  %302 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 2, !dbg !323
  %303 = load i32, i32* %302, align 8, !dbg !323
  %304 = add i32 %301, %303, !dbg !323
  %305 = add i32 %304, -1245643825, !dbg !323
  store i32 %305, i32* %5, align 4, !dbg !323
  %306 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !323
  %307 = load i32, i32* %306, align 8, !dbg !323
  %308 = lshr i32 %307, 2, !dbg !323
  %309 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !323
  %310 = load i32, i32* %309, align 8, !dbg !323
  %311 = shl i32 %310, 30, !dbg !323
  %312 = or i32 %308, %311, !dbg !323
  %313 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !323
  %314 = load i32, i32* %313, align 8, !dbg !323
  %315 = lshr i32 %314, 13, !dbg !323
  %316 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !323
  %317 = load i32, i32* %316, align 8, !dbg !323
  %318 = shl i32 %317, 19, !dbg !323
  %319 = or i32 %315, %318, !dbg !323
  %320 = xor i32 %312, %319, !dbg !323
  %321 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !323
  %322 = load i32, i32* %321, align 8, !dbg !323
  %323 = lshr i32 %322, 22, !dbg !323
  %324 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !323
  %325 = load i32, i32* %324, align 8, !dbg !323
  %326 = shl i32 %325, 10, !dbg !323
  %327 = or i32 %323, %326, !dbg !323
  %328 = xor i32 %320, %327, !dbg !323
  %329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !323
  %330 = load i32, i32* %329, align 8, !dbg !323
  %331 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !323
  %332 = load i32, i32* %331, align 4, !dbg !323
  %333 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !323
  %334 = load i32, i32* %333, align 16, !dbg !323
  %335 = or i32 %332, %334, !dbg !323
  %336 = and i32 %330, %335, !dbg !323
  %337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !323
  %338 = load i32, i32* %337, align 4, !dbg !323
  %339 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !323
  %340 = load i32, i32* %339, align 16, !dbg !323
  %341 = and i32 %338, %340, !dbg !323
  %342 = or i32 %336, %341, !dbg !323
  %343 = add i32 %328, %342, !dbg !323
  store i32 %343, i32* %6, align 4, !dbg !323
  %344 = load i32, i32* %5, align 4, !dbg !323
  %345 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !323
  %346 = load i32, i32* %345, align 4, !dbg !323
  %347 = add i32 %346, %344, !dbg !323
  store i32 %347, i32* %345, align 4, !dbg !323
  %348 = load i32, i32* %5, align 4, !dbg !323
  %349 = load i32, i32* %6, align 4, !dbg !323
  %350 = add i32 %348, %349, !dbg !323
  %351 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !323
  store i32 %350, i32* %351, align 4, !dbg !323
  %352 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !324
  %353 = load i32, i32* %352, align 16, !dbg !324
  %354 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !324
  %355 = load i32, i32* %354, align 4, !dbg !324
  %356 = lshr i32 %355, 6, !dbg !324
  %357 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !324
  %358 = load i32, i32* %357, align 4, !dbg !324
  %359 = shl i32 %358, 26, !dbg !324
  %360 = or i32 %356, %359, !dbg !324
  %361 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !324
  %362 = load i32, i32* %361, align 4, !dbg !324
  %363 = lshr i32 %362, 11, !dbg !324
  %364 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !324
  %365 = load i32, i32* %364, align 4, !dbg !324
  %366 = shl i32 %365, 21, !dbg !324
  %367 = or i32 %363, %366, !dbg !324
  %368 = xor i32 %360, %367, !dbg !324
  %369 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !324
  %370 = load i32, i32* %369, align 4, !dbg !324
  %371 = lshr i32 %370, 25, !dbg !324
  %372 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !324
  %373 = load i32, i32* %372, align 4, !dbg !324
  %374 = shl i32 %373, 7, !dbg !324
  %375 = or i32 %371, %374, !dbg !324
  %376 = xor i32 %368, %375, !dbg !324
  %377 = add i32 %353, %376, !dbg !324
  %378 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !324
  %379 = load i32, i32* %378, align 4, !dbg !324
  %380 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !324
  %381 = load i32, i32* %380, align 8, !dbg !324
  %382 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !324
  %383 = load i32, i32* %382, align 4, !dbg !324
  %384 = xor i32 %381, %383, !dbg !324
  %385 = and i32 %379, %384, !dbg !324
  %386 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !324
  %387 = load i32, i32* %386, align 4, !dbg !324
  %388 = xor i32 %385, %387, !dbg !324
  %389 = add i32 %377, %388, !dbg !324
  %390 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 3, !dbg !324
  %391 = load i32, i32* %390, align 4, !dbg !324
  %392 = add i32 %389, %391, !dbg !324
  %393 = add i32 %392, -373957723, !dbg !324
  store i32 %393, i32* %5, align 4, !dbg !324
  %394 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !324
  %395 = load i32, i32* %394, align 4, !dbg !324
  %396 = lshr i32 %395, 2, !dbg !324
  %397 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !324
  %398 = load i32, i32* %397, align 4, !dbg !324
  %399 = shl i32 %398, 30, !dbg !324
  %400 = or i32 %396, %399, !dbg !324
  %401 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !324
  %402 = load i32, i32* %401, align 4, !dbg !324
  %403 = lshr i32 %402, 13, !dbg !324
  %404 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !324
  %405 = load i32, i32* %404, align 4, !dbg !324
  %406 = shl i32 %405, 19, !dbg !324
  %407 = or i32 %403, %406, !dbg !324
  %408 = xor i32 %400, %407, !dbg !324
  %409 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !324
  %410 = load i32, i32* %409, align 4, !dbg !324
  %411 = lshr i32 %410, 22, !dbg !324
  %412 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !324
  %413 = load i32, i32* %412, align 4, !dbg !324
  %414 = shl i32 %413, 10, !dbg !324
  %415 = or i32 %411, %414, !dbg !324
  %416 = xor i32 %408, %415, !dbg !324
  %417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !324
  %418 = load i32, i32* %417, align 4, !dbg !324
  %419 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !324
  %420 = load i32, i32* %419, align 8, !dbg !324
  %421 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !324
  %422 = load i32, i32* %421, align 4, !dbg !324
  %423 = or i32 %420, %422, !dbg !324
  %424 = and i32 %418, %423, !dbg !324
  %425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !324
  %426 = load i32, i32* %425, align 8, !dbg !324
  %427 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !324
  %428 = load i32, i32* %427, align 4, !dbg !324
  %429 = and i32 %426, %428, !dbg !324
  %430 = or i32 %424, %429, !dbg !324
  %431 = add i32 %416, %430, !dbg !324
  store i32 %431, i32* %6, align 4, !dbg !324
  %432 = load i32, i32* %5, align 4, !dbg !324
  %433 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !324
  %434 = load i32, i32* %433, align 16, !dbg !324
  %435 = add i32 %434, %432, !dbg !324
  store i32 %435, i32* %433, align 16, !dbg !324
  %436 = load i32, i32* %5, align 4, !dbg !324
  %437 = load i32, i32* %6, align 4, !dbg !324
  %438 = add i32 %436, %437, !dbg !324
  %439 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !324
  store i32 %438, i32* %439, align 16, !dbg !324
  %440 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !325
  %441 = load i32, i32* %440, align 4, !dbg !325
  %442 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !325
  %443 = load i32, i32* %442, align 16, !dbg !325
  %444 = lshr i32 %443, 6, !dbg !325
  %445 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !325
  %446 = load i32, i32* %445, align 16, !dbg !325
  %447 = shl i32 %446, 26, !dbg !325
  %448 = or i32 %444, %447, !dbg !325
  %449 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !325
  %450 = load i32, i32* %449, align 16, !dbg !325
  %451 = lshr i32 %450, 11, !dbg !325
  %452 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !325
  %453 = load i32, i32* %452, align 16, !dbg !325
  %454 = shl i32 %453, 21, !dbg !325
  %455 = or i32 %451, %454, !dbg !325
  %456 = xor i32 %448, %455, !dbg !325
  %457 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !325
  %458 = load i32, i32* %457, align 16, !dbg !325
  %459 = lshr i32 %458, 25, !dbg !325
  %460 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !325
  %461 = load i32, i32* %460, align 16, !dbg !325
  %462 = shl i32 %461, 7, !dbg !325
  %463 = or i32 %459, %462, !dbg !325
  %464 = xor i32 %456, %463, !dbg !325
  %465 = add i32 %441, %464, !dbg !325
  %466 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !325
  %467 = load i32, i32* %466, align 16, !dbg !325
  %468 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !325
  %469 = load i32, i32* %468, align 4, !dbg !325
  %470 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !325
  %471 = load i32, i32* %470, align 8, !dbg !325
  %472 = xor i32 %469, %471, !dbg !325
  %473 = and i32 %467, %472, !dbg !325
  %474 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !325
  %475 = load i32, i32* %474, align 8, !dbg !325
  %476 = xor i32 %473, %475, !dbg !325
  %477 = add i32 %465, %476, !dbg !325
  %478 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 4, !dbg !325
  %479 = load i32, i32* %478, align 16, !dbg !325
  %480 = add i32 %477, %479, !dbg !325
  %481 = add i32 %480, 961987163, !dbg !325
  store i32 %481, i32* %5, align 4, !dbg !325
  %482 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !325
  %483 = load i32, i32* %482, align 16, !dbg !325
  %484 = lshr i32 %483, 2, !dbg !325
  %485 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !325
  %486 = load i32, i32* %485, align 16, !dbg !325
  %487 = shl i32 %486, 30, !dbg !325
  %488 = or i32 %484, %487, !dbg !325
  %489 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !325
  %490 = load i32, i32* %489, align 16, !dbg !325
  %491 = lshr i32 %490, 13, !dbg !325
  %492 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !325
  %493 = load i32, i32* %492, align 16, !dbg !325
  %494 = shl i32 %493, 19, !dbg !325
  %495 = or i32 %491, %494, !dbg !325
  %496 = xor i32 %488, %495, !dbg !325
  %497 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !325
  %498 = load i32, i32* %497, align 16, !dbg !325
  %499 = lshr i32 %498, 22, !dbg !325
  %500 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !325
  %501 = load i32, i32* %500, align 16, !dbg !325
  %502 = shl i32 %501, 10, !dbg !325
  %503 = or i32 %499, %502, !dbg !325
  %504 = xor i32 %496, %503, !dbg !325
  %505 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !325
  %506 = load i32, i32* %505, align 16, !dbg !325
  %507 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !325
  %508 = load i32, i32* %507, align 4, !dbg !325
  %509 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !325
  %510 = load i32, i32* %509, align 8, !dbg !325
  %511 = or i32 %508, %510, !dbg !325
  %512 = and i32 %506, %511, !dbg !325
  %513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !325
  %514 = load i32, i32* %513, align 4, !dbg !325
  %515 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !325
  %516 = load i32, i32* %515, align 8, !dbg !325
  %517 = and i32 %514, %516, !dbg !325
  %518 = or i32 %512, %517, !dbg !325
  %519 = add i32 %504, %518, !dbg !325
  store i32 %519, i32* %6, align 4, !dbg !325
  %520 = load i32, i32* %5, align 4, !dbg !325
  %521 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !325
  %522 = load i32, i32* %521, align 4, !dbg !325
  %523 = add i32 %522, %520, !dbg !325
  store i32 %523, i32* %521, align 4, !dbg !325
  %524 = load i32, i32* %5, align 4, !dbg !325
  %525 = load i32, i32* %6, align 4, !dbg !325
  %526 = add i32 %524, %525, !dbg !325
  %527 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !325
  store i32 %526, i32* %527, align 4, !dbg !325
  %528 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !326
  %529 = load i32, i32* %528, align 8, !dbg !326
  %530 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !326
  %531 = load i32, i32* %530, align 4, !dbg !326
  %532 = lshr i32 %531, 6, !dbg !326
  %533 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !326
  %534 = load i32, i32* %533, align 4, !dbg !326
  %535 = shl i32 %534, 26, !dbg !326
  %536 = or i32 %532, %535, !dbg !326
  %537 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !326
  %538 = load i32, i32* %537, align 4, !dbg !326
  %539 = lshr i32 %538, 11, !dbg !326
  %540 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !326
  %541 = load i32, i32* %540, align 4, !dbg !326
  %542 = shl i32 %541, 21, !dbg !326
  %543 = or i32 %539, %542, !dbg !326
  %544 = xor i32 %536, %543, !dbg !326
  %545 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !326
  %546 = load i32, i32* %545, align 4, !dbg !326
  %547 = lshr i32 %546, 25, !dbg !326
  %548 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !326
  %549 = load i32, i32* %548, align 4, !dbg !326
  %550 = shl i32 %549, 7, !dbg !326
  %551 = or i32 %547, %550, !dbg !326
  %552 = xor i32 %544, %551, !dbg !326
  %553 = add i32 %529, %552, !dbg !326
  %554 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !326
  %555 = load i32, i32* %554, align 4, !dbg !326
  %556 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !326
  %557 = load i32, i32* %556, align 16, !dbg !326
  %558 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !326
  %559 = load i32, i32* %558, align 4, !dbg !326
  %560 = xor i32 %557, %559, !dbg !326
  %561 = and i32 %555, %560, !dbg !326
  %562 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !326
  %563 = load i32, i32* %562, align 4, !dbg !326
  %564 = xor i32 %561, %563, !dbg !326
  %565 = add i32 %553, %564, !dbg !326
  %566 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 5, !dbg !326
  %567 = load i32, i32* %566, align 4, !dbg !326
  %568 = add i32 %565, %567, !dbg !326
  %569 = add i32 %568, 1508970993, !dbg !326
  store i32 %569, i32* %5, align 4, !dbg !326
  %570 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !326
  %571 = load i32, i32* %570, align 4, !dbg !326
  %572 = lshr i32 %571, 2, !dbg !326
  %573 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !326
  %574 = load i32, i32* %573, align 4, !dbg !326
  %575 = shl i32 %574, 30, !dbg !326
  %576 = or i32 %572, %575, !dbg !326
  %577 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !326
  %578 = load i32, i32* %577, align 4, !dbg !326
  %579 = lshr i32 %578, 13, !dbg !326
  %580 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !326
  %581 = load i32, i32* %580, align 4, !dbg !326
  %582 = shl i32 %581, 19, !dbg !326
  %583 = or i32 %579, %582, !dbg !326
  %584 = xor i32 %576, %583, !dbg !326
  %585 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !326
  %586 = load i32, i32* %585, align 4, !dbg !326
  %587 = lshr i32 %586, 22, !dbg !326
  %588 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !326
  %589 = load i32, i32* %588, align 4, !dbg !326
  %590 = shl i32 %589, 10, !dbg !326
  %591 = or i32 %587, %590, !dbg !326
  %592 = xor i32 %584, %591, !dbg !326
  %593 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !326
  %594 = load i32, i32* %593, align 4, !dbg !326
  %595 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !326
  %596 = load i32, i32* %595, align 16, !dbg !326
  %597 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !326
  %598 = load i32, i32* %597, align 4, !dbg !326
  %599 = or i32 %596, %598, !dbg !326
  %600 = and i32 %594, %599, !dbg !326
  %601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !326
  %602 = load i32, i32* %601, align 16, !dbg !326
  %603 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !326
  %604 = load i32, i32* %603, align 4, !dbg !326
  %605 = and i32 %602, %604, !dbg !326
  %606 = or i32 %600, %605, !dbg !326
  %607 = add i32 %592, %606, !dbg !326
  store i32 %607, i32* %6, align 4, !dbg !326
  %608 = load i32, i32* %5, align 4, !dbg !326
  %609 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !326
  %610 = load i32, i32* %609, align 8, !dbg !326
  %611 = add i32 %610, %608, !dbg !326
  store i32 %611, i32* %609, align 8, !dbg !326
  %612 = load i32, i32* %5, align 4, !dbg !326
  %613 = load i32, i32* %6, align 4, !dbg !326
  %614 = add i32 %612, %613, !dbg !326
  %615 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !326
  store i32 %614, i32* %615, align 8, !dbg !326
  %616 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !327
  %617 = load i32, i32* %616, align 4, !dbg !327
  %618 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !327
  %619 = load i32, i32* %618, align 8, !dbg !327
  %620 = lshr i32 %619, 6, !dbg !327
  %621 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !327
  %622 = load i32, i32* %621, align 8, !dbg !327
  %623 = shl i32 %622, 26, !dbg !327
  %624 = or i32 %620, %623, !dbg !327
  %625 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !327
  %626 = load i32, i32* %625, align 8, !dbg !327
  %627 = lshr i32 %626, 11, !dbg !327
  %628 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !327
  %629 = load i32, i32* %628, align 8, !dbg !327
  %630 = shl i32 %629, 21, !dbg !327
  %631 = or i32 %627, %630, !dbg !327
  %632 = xor i32 %624, %631, !dbg !327
  %633 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !327
  %634 = load i32, i32* %633, align 8, !dbg !327
  %635 = lshr i32 %634, 25, !dbg !327
  %636 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !327
  %637 = load i32, i32* %636, align 8, !dbg !327
  %638 = shl i32 %637, 7, !dbg !327
  %639 = or i32 %635, %638, !dbg !327
  %640 = xor i32 %632, %639, !dbg !327
  %641 = add i32 %617, %640, !dbg !327
  %642 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !327
  %643 = load i32, i32* %642, align 8, !dbg !327
  %644 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !327
  %645 = load i32, i32* %644, align 4, !dbg !327
  %646 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !327
  %647 = load i32, i32* %646, align 16, !dbg !327
  %648 = xor i32 %645, %647, !dbg !327
  %649 = and i32 %643, %648, !dbg !327
  %650 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !327
  %651 = load i32, i32* %650, align 16, !dbg !327
  %652 = xor i32 %649, %651, !dbg !327
  %653 = add i32 %641, %652, !dbg !327
  %654 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 6, !dbg !327
  %655 = load i32, i32* %654, align 8, !dbg !327
  %656 = add i32 %653, %655, !dbg !327
  %657 = add i32 %656, -1841331548, !dbg !327
  store i32 %657, i32* %5, align 4, !dbg !327
  %658 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !327
  %659 = load i32, i32* %658, align 8, !dbg !327
  %660 = lshr i32 %659, 2, !dbg !327
  %661 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !327
  %662 = load i32, i32* %661, align 8, !dbg !327
  %663 = shl i32 %662, 30, !dbg !327
  %664 = or i32 %660, %663, !dbg !327
  %665 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !327
  %666 = load i32, i32* %665, align 8, !dbg !327
  %667 = lshr i32 %666, 13, !dbg !327
  %668 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !327
  %669 = load i32, i32* %668, align 8, !dbg !327
  %670 = shl i32 %669, 19, !dbg !327
  %671 = or i32 %667, %670, !dbg !327
  %672 = xor i32 %664, %671, !dbg !327
  %673 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !327
  %674 = load i32, i32* %673, align 8, !dbg !327
  %675 = lshr i32 %674, 22, !dbg !327
  %676 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !327
  %677 = load i32, i32* %676, align 8, !dbg !327
  %678 = shl i32 %677, 10, !dbg !327
  %679 = or i32 %675, %678, !dbg !327
  %680 = xor i32 %672, %679, !dbg !327
  %681 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !327
  %682 = load i32, i32* %681, align 8, !dbg !327
  %683 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !327
  %684 = load i32, i32* %683, align 4, !dbg !327
  %685 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !327
  %686 = load i32, i32* %685, align 16, !dbg !327
  %687 = or i32 %684, %686, !dbg !327
  %688 = and i32 %682, %687, !dbg !327
  %689 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !327
  %690 = load i32, i32* %689, align 4, !dbg !327
  %691 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !327
  %692 = load i32, i32* %691, align 16, !dbg !327
  %693 = and i32 %690, %692, !dbg !327
  %694 = or i32 %688, %693, !dbg !327
  %695 = add i32 %680, %694, !dbg !327
  store i32 %695, i32* %6, align 4, !dbg !327
  %696 = load i32, i32* %5, align 4, !dbg !327
  %697 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !327
  %698 = load i32, i32* %697, align 4, !dbg !327
  %699 = add i32 %698, %696, !dbg !327
  store i32 %699, i32* %697, align 4, !dbg !327
  %700 = load i32, i32* %5, align 4, !dbg !327
  %701 = load i32, i32* %6, align 4, !dbg !327
  %702 = add i32 %700, %701, !dbg !327
  %703 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !327
  store i32 %702, i32* %703, align 4, !dbg !327
  %704 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !328
  %705 = load i32, i32* %704, align 16, !dbg !328
  %706 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !328
  %707 = load i32, i32* %706, align 4, !dbg !328
  %708 = lshr i32 %707, 6, !dbg !328
  %709 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !328
  %710 = load i32, i32* %709, align 4, !dbg !328
  %711 = shl i32 %710, 26, !dbg !328
  %712 = or i32 %708, %711, !dbg !328
  %713 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !328
  %714 = load i32, i32* %713, align 4, !dbg !328
  %715 = lshr i32 %714, 11, !dbg !328
  %716 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !328
  %717 = load i32, i32* %716, align 4, !dbg !328
  %718 = shl i32 %717, 21, !dbg !328
  %719 = or i32 %715, %718, !dbg !328
  %720 = xor i32 %712, %719, !dbg !328
  %721 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !328
  %722 = load i32, i32* %721, align 4, !dbg !328
  %723 = lshr i32 %722, 25, !dbg !328
  %724 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !328
  %725 = load i32, i32* %724, align 4, !dbg !328
  %726 = shl i32 %725, 7, !dbg !328
  %727 = or i32 %723, %726, !dbg !328
  %728 = xor i32 %720, %727, !dbg !328
  %729 = add i32 %705, %728, !dbg !328
  %730 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !328
  %731 = load i32, i32* %730, align 4, !dbg !328
  %732 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !328
  %733 = load i32, i32* %732, align 8, !dbg !328
  %734 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !328
  %735 = load i32, i32* %734, align 4, !dbg !328
  %736 = xor i32 %733, %735, !dbg !328
  %737 = and i32 %731, %736, !dbg !328
  %738 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !328
  %739 = load i32, i32* %738, align 4, !dbg !328
  %740 = xor i32 %737, %739, !dbg !328
  %741 = add i32 %729, %740, !dbg !328
  %742 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 7, !dbg !328
  %743 = load i32, i32* %742, align 4, !dbg !328
  %744 = add i32 %741, %743, !dbg !328
  %745 = add i32 %744, -1424204075, !dbg !328
  store i32 %745, i32* %5, align 4, !dbg !328
  %746 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !328
  %747 = load i32, i32* %746, align 4, !dbg !328
  %748 = lshr i32 %747, 2, !dbg !328
  %749 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !328
  %750 = load i32, i32* %749, align 4, !dbg !328
  %751 = shl i32 %750, 30, !dbg !328
  %752 = or i32 %748, %751, !dbg !328
  %753 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !328
  %754 = load i32, i32* %753, align 4, !dbg !328
  %755 = lshr i32 %754, 13, !dbg !328
  %756 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !328
  %757 = load i32, i32* %756, align 4, !dbg !328
  %758 = shl i32 %757, 19, !dbg !328
  %759 = or i32 %755, %758, !dbg !328
  %760 = xor i32 %752, %759, !dbg !328
  %761 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !328
  %762 = load i32, i32* %761, align 4, !dbg !328
  %763 = lshr i32 %762, 22, !dbg !328
  %764 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !328
  %765 = load i32, i32* %764, align 4, !dbg !328
  %766 = shl i32 %765, 10, !dbg !328
  %767 = or i32 %763, %766, !dbg !328
  %768 = xor i32 %760, %767, !dbg !328
  %769 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !328
  %770 = load i32, i32* %769, align 4, !dbg !328
  %771 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !328
  %772 = load i32, i32* %771, align 8, !dbg !328
  %773 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !328
  %774 = load i32, i32* %773, align 4, !dbg !328
  %775 = or i32 %772, %774, !dbg !328
  %776 = and i32 %770, %775, !dbg !328
  %777 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !328
  %778 = load i32, i32* %777, align 8, !dbg !328
  %779 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !328
  %780 = load i32, i32* %779, align 4, !dbg !328
  %781 = and i32 %778, %780, !dbg !328
  %782 = or i32 %776, %781, !dbg !328
  %783 = add i32 %768, %782, !dbg !328
  store i32 %783, i32* %6, align 4, !dbg !328
  %784 = load i32, i32* %5, align 4, !dbg !328
  %785 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !328
  %786 = load i32, i32* %785, align 16, !dbg !328
  %787 = add i32 %786, %784, !dbg !328
  store i32 %787, i32* %785, align 16, !dbg !328
  %788 = load i32, i32* %5, align 4, !dbg !328
  %789 = load i32, i32* %6, align 4, !dbg !328
  %790 = add i32 %788, %789, !dbg !328
  %791 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !328
  store i32 %790, i32* %791, align 16, !dbg !328
  %792 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !329
  %793 = load i32, i32* %792, align 4, !dbg !329
  %794 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !329
  %795 = load i32, i32* %794, align 16, !dbg !329
  %796 = lshr i32 %795, 6, !dbg !329
  %797 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !329
  %798 = load i32, i32* %797, align 16, !dbg !329
  %799 = shl i32 %798, 26, !dbg !329
  %800 = or i32 %796, %799, !dbg !329
  %801 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !329
  %802 = load i32, i32* %801, align 16, !dbg !329
  %803 = lshr i32 %802, 11, !dbg !329
  %804 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !329
  %805 = load i32, i32* %804, align 16, !dbg !329
  %806 = shl i32 %805, 21, !dbg !329
  %807 = or i32 %803, %806, !dbg !329
  %808 = xor i32 %800, %807, !dbg !329
  %809 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !329
  %810 = load i32, i32* %809, align 16, !dbg !329
  %811 = lshr i32 %810, 25, !dbg !329
  %812 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !329
  %813 = load i32, i32* %812, align 16, !dbg !329
  %814 = shl i32 %813, 7, !dbg !329
  %815 = or i32 %811, %814, !dbg !329
  %816 = xor i32 %808, %815, !dbg !329
  %817 = add i32 %793, %816, !dbg !329
  %818 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !329
  %819 = load i32, i32* %818, align 16, !dbg !329
  %820 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !329
  %821 = load i32, i32* %820, align 4, !dbg !329
  %822 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !329
  %823 = load i32, i32* %822, align 8, !dbg !329
  %824 = xor i32 %821, %823, !dbg !329
  %825 = and i32 %819, %824, !dbg !329
  %826 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !329
  %827 = load i32, i32* %826, align 8, !dbg !329
  %828 = xor i32 %825, %827, !dbg !329
  %829 = add i32 %817, %828, !dbg !329
  %830 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 8, !dbg !329
  %831 = load i32, i32* %830, align 16, !dbg !329
  %832 = add i32 %829, %831, !dbg !329
  %833 = add i32 %832, -670586216, !dbg !329
  store i32 %833, i32* %5, align 4, !dbg !329
  %834 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !329
  %835 = load i32, i32* %834, align 16, !dbg !329
  %836 = lshr i32 %835, 2, !dbg !329
  %837 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !329
  %838 = load i32, i32* %837, align 16, !dbg !329
  %839 = shl i32 %838, 30, !dbg !329
  %840 = or i32 %836, %839, !dbg !329
  %841 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !329
  %842 = load i32, i32* %841, align 16, !dbg !329
  %843 = lshr i32 %842, 13, !dbg !329
  %844 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !329
  %845 = load i32, i32* %844, align 16, !dbg !329
  %846 = shl i32 %845, 19, !dbg !329
  %847 = or i32 %843, %846, !dbg !329
  %848 = xor i32 %840, %847, !dbg !329
  %849 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !329
  %850 = load i32, i32* %849, align 16, !dbg !329
  %851 = lshr i32 %850, 22, !dbg !329
  %852 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !329
  %853 = load i32, i32* %852, align 16, !dbg !329
  %854 = shl i32 %853, 10, !dbg !329
  %855 = or i32 %851, %854, !dbg !329
  %856 = xor i32 %848, %855, !dbg !329
  %857 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !329
  %858 = load i32, i32* %857, align 16, !dbg !329
  %859 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !329
  %860 = load i32, i32* %859, align 4, !dbg !329
  %861 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !329
  %862 = load i32, i32* %861, align 8, !dbg !329
  %863 = or i32 %860, %862, !dbg !329
  %864 = and i32 %858, %863, !dbg !329
  %865 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !329
  %866 = load i32, i32* %865, align 4, !dbg !329
  %867 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !329
  %868 = load i32, i32* %867, align 8, !dbg !329
  %869 = and i32 %866, %868, !dbg !329
  %870 = or i32 %864, %869, !dbg !329
  %871 = add i32 %856, %870, !dbg !329
  store i32 %871, i32* %6, align 4, !dbg !329
  %872 = load i32, i32* %5, align 4, !dbg !329
  %873 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !329
  %874 = load i32, i32* %873, align 4, !dbg !329
  %875 = add i32 %874, %872, !dbg !329
  store i32 %875, i32* %873, align 4, !dbg !329
  %876 = load i32, i32* %5, align 4, !dbg !329
  %877 = load i32, i32* %6, align 4, !dbg !329
  %878 = add i32 %876, %877, !dbg !329
  %879 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !329
  store i32 %878, i32* %879, align 4, !dbg !329
  %880 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !330
  %881 = load i32, i32* %880, align 8, !dbg !330
  %882 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !330
  %883 = load i32, i32* %882, align 4, !dbg !330
  %884 = lshr i32 %883, 6, !dbg !330
  %885 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !330
  %886 = load i32, i32* %885, align 4, !dbg !330
  %887 = shl i32 %886, 26, !dbg !330
  %888 = or i32 %884, %887, !dbg !330
  %889 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !330
  %890 = load i32, i32* %889, align 4, !dbg !330
  %891 = lshr i32 %890, 11, !dbg !330
  %892 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !330
  %893 = load i32, i32* %892, align 4, !dbg !330
  %894 = shl i32 %893, 21, !dbg !330
  %895 = or i32 %891, %894, !dbg !330
  %896 = xor i32 %888, %895, !dbg !330
  %897 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !330
  %898 = load i32, i32* %897, align 4, !dbg !330
  %899 = lshr i32 %898, 25, !dbg !330
  %900 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !330
  %901 = load i32, i32* %900, align 4, !dbg !330
  %902 = shl i32 %901, 7, !dbg !330
  %903 = or i32 %899, %902, !dbg !330
  %904 = xor i32 %896, %903, !dbg !330
  %905 = add i32 %881, %904, !dbg !330
  %906 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !330
  %907 = load i32, i32* %906, align 4, !dbg !330
  %908 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !330
  %909 = load i32, i32* %908, align 16, !dbg !330
  %910 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !330
  %911 = load i32, i32* %910, align 4, !dbg !330
  %912 = xor i32 %909, %911, !dbg !330
  %913 = and i32 %907, %912, !dbg !330
  %914 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !330
  %915 = load i32, i32* %914, align 4, !dbg !330
  %916 = xor i32 %913, %915, !dbg !330
  %917 = add i32 %905, %916, !dbg !330
  %918 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 9, !dbg !330
  %919 = load i32, i32* %918, align 4, !dbg !330
  %920 = add i32 %917, %919, !dbg !330
  %921 = add i32 %920, 310598401, !dbg !330
  store i32 %921, i32* %5, align 4, !dbg !330
  %922 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !330
  %923 = load i32, i32* %922, align 4, !dbg !330
  %924 = lshr i32 %923, 2, !dbg !330
  %925 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !330
  %926 = load i32, i32* %925, align 4, !dbg !330
  %927 = shl i32 %926, 30, !dbg !330
  %928 = or i32 %924, %927, !dbg !330
  %929 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !330
  %930 = load i32, i32* %929, align 4, !dbg !330
  %931 = lshr i32 %930, 13, !dbg !330
  %932 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !330
  %933 = load i32, i32* %932, align 4, !dbg !330
  %934 = shl i32 %933, 19, !dbg !330
  %935 = or i32 %931, %934, !dbg !330
  %936 = xor i32 %928, %935, !dbg !330
  %937 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !330
  %938 = load i32, i32* %937, align 4, !dbg !330
  %939 = lshr i32 %938, 22, !dbg !330
  %940 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !330
  %941 = load i32, i32* %940, align 4, !dbg !330
  %942 = shl i32 %941, 10, !dbg !330
  %943 = or i32 %939, %942, !dbg !330
  %944 = xor i32 %936, %943, !dbg !330
  %945 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !330
  %946 = load i32, i32* %945, align 4, !dbg !330
  %947 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !330
  %948 = load i32, i32* %947, align 16, !dbg !330
  %949 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !330
  %950 = load i32, i32* %949, align 4, !dbg !330
  %951 = or i32 %948, %950, !dbg !330
  %952 = and i32 %946, %951, !dbg !330
  %953 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !330
  %954 = load i32, i32* %953, align 16, !dbg !330
  %955 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !330
  %956 = load i32, i32* %955, align 4, !dbg !330
  %957 = and i32 %954, %956, !dbg !330
  %958 = or i32 %952, %957, !dbg !330
  %959 = add i32 %944, %958, !dbg !330
  store i32 %959, i32* %6, align 4, !dbg !330
  %960 = load i32, i32* %5, align 4, !dbg !330
  %961 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !330
  %962 = load i32, i32* %961, align 8, !dbg !330
  %963 = add i32 %962, %960, !dbg !330
  store i32 %963, i32* %961, align 8, !dbg !330
  %964 = load i32, i32* %5, align 4, !dbg !330
  %965 = load i32, i32* %6, align 4, !dbg !330
  %966 = add i32 %964, %965, !dbg !330
  %967 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !330
  store i32 %966, i32* %967, align 8, !dbg !330
  %968 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !331
  %969 = load i32, i32* %968, align 4, !dbg !331
  %970 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !331
  %971 = load i32, i32* %970, align 8, !dbg !331
  %972 = lshr i32 %971, 6, !dbg !331
  %973 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !331
  %974 = load i32, i32* %973, align 8, !dbg !331
  %975 = shl i32 %974, 26, !dbg !331
  %976 = or i32 %972, %975, !dbg !331
  %977 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !331
  %978 = load i32, i32* %977, align 8, !dbg !331
  %979 = lshr i32 %978, 11, !dbg !331
  %980 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !331
  %981 = load i32, i32* %980, align 8, !dbg !331
  %982 = shl i32 %981, 21, !dbg !331
  %983 = or i32 %979, %982, !dbg !331
  %984 = xor i32 %976, %983, !dbg !331
  %985 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !331
  %986 = load i32, i32* %985, align 8, !dbg !331
  %987 = lshr i32 %986, 25, !dbg !331
  %988 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !331
  %989 = load i32, i32* %988, align 8, !dbg !331
  %990 = shl i32 %989, 7, !dbg !331
  %991 = or i32 %987, %990, !dbg !331
  %992 = xor i32 %984, %991, !dbg !331
  %993 = add i32 %969, %992, !dbg !331
  %994 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !331
  %995 = load i32, i32* %994, align 8, !dbg !331
  %996 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !331
  %997 = load i32, i32* %996, align 4, !dbg !331
  %998 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !331
  %999 = load i32, i32* %998, align 16, !dbg !331
  %1000 = xor i32 %997, %999, !dbg !331
  %1001 = and i32 %995, %1000, !dbg !331
  %1002 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !331
  %1003 = load i32, i32* %1002, align 16, !dbg !331
  %1004 = xor i32 %1001, %1003, !dbg !331
  %1005 = add i32 %993, %1004, !dbg !331
  %1006 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 10, !dbg !331
  %1007 = load i32, i32* %1006, align 8, !dbg !331
  %1008 = add i32 %1005, %1007, !dbg !331
  %1009 = add i32 %1008, 607225278, !dbg !331
  store i32 %1009, i32* %5, align 4, !dbg !331
  %1010 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !331
  %1011 = load i32, i32* %1010, align 8, !dbg !331
  %1012 = lshr i32 %1011, 2, !dbg !331
  %1013 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !331
  %1014 = load i32, i32* %1013, align 8, !dbg !331
  %1015 = shl i32 %1014, 30, !dbg !331
  %1016 = or i32 %1012, %1015, !dbg !331
  %1017 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !331
  %1018 = load i32, i32* %1017, align 8, !dbg !331
  %1019 = lshr i32 %1018, 13, !dbg !331
  %1020 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !331
  %1021 = load i32, i32* %1020, align 8, !dbg !331
  %1022 = shl i32 %1021, 19, !dbg !331
  %1023 = or i32 %1019, %1022, !dbg !331
  %1024 = xor i32 %1016, %1023, !dbg !331
  %1025 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !331
  %1026 = load i32, i32* %1025, align 8, !dbg !331
  %1027 = lshr i32 %1026, 22, !dbg !331
  %1028 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !331
  %1029 = load i32, i32* %1028, align 8, !dbg !331
  %1030 = shl i32 %1029, 10, !dbg !331
  %1031 = or i32 %1027, %1030, !dbg !331
  %1032 = xor i32 %1024, %1031, !dbg !331
  %1033 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !331
  %1034 = load i32, i32* %1033, align 8, !dbg !331
  %1035 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !331
  %1036 = load i32, i32* %1035, align 4, !dbg !331
  %1037 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !331
  %1038 = load i32, i32* %1037, align 16, !dbg !331
  %1039 = or i32 %1036, %1038, !dbg !331
  %1040 = and i32 %1034, %1039, !dbg !331
  %1041 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !331
  %1042 = load i32, i32* %1041, align 4, !dbg !331
  %1043 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !331
  %1044 = load i32, i32* %1043, align 16, !dbg !331
  %1045 = and i32 %1042, %1044, !dbg !331
  %1046 = or i32 %1040, %1045, !dbg !331
  %1047 = add i32 %1032, %1046, !dbg !331
  store i32 %1047, i32* %6, align 4, !dbg !331
  %1048 = load i32, i32* %5, align 4, !dbg !331
  %1049 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !331
  %1050 = load i32, i32* %1049, align 4, !dbg !331
  %1051 = add i32 %1050, %1048, !dbg !331
  store i32 %1051, i32* %1049, align 4, !dbg !331
  %1052 = load i32, i32* %5, align 4, !dbg !331
  %1053 = load i32, i32* %6, align 4, !dbg !331
  %1054 = add i32 %1052, %1053, !dbg !331
  %1055 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !331
  store i32 %1054, i32* %1055, align 4, !dbg !331
  %1056 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !332
  %1057 = load i32, i32* %1056, align 16, !dbg !332
  %1058 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !332
  %1059 = load i32, i32* %1058, align 4, !dbg !332
  %1060 = lshr i32 %1059, 6, !dbg !332
  %1061 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !332
  %1062 = load i32, i32* %1061, align 4, !dbg !332
  %1063 = shl i32 %1062, 26, !dbg !332
  %1064 = or i32 %1060, %1063, !dbg !332
  %1065 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !332
  %1066 = load i32, i32* %1065, align 4, !dbg !332
  %1067 = lshr i32 %1066, 11, !dbg !332
  %1068 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !332
  %1069 = load i32, i32* %1068, align 4, !dbg !332
  %1070 = shl i32 %1069, 21, !dbg !332
  %1071 = or i32 %1067, %1070, !dbg !332
  %1072 = xor i32 %1064, %1071, !dbg !332
  %1073 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !332
  %1074 = load i32, i32* %1073, align 4, !dbg !332
  %1075 = lshr i32 %1074, 25, !dbg !332
  %1076 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !332
  %1077 = load i32, i32* %1076, align 4, !dbg !332
  %1078 = shl i32 %1077, 7, !dbg !332
  %1079 = or i32 %1075, %1078, !dbg !332
  %1080 = xor i32 %1072, %1079, !dbg !332
  %1081 = add i32 %1057, %1080, !dbg !332
  %1082 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !332
  %1083 = load i32, i32* %1082, align 4, !dbg !332
  %1084 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !332
  %1085 = load i32, i32* %1084, align 8, !dbg !332
  %1086 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !332
  %1087 = load i32, i32* %1086, align 4, !dbg !332
  %1088 = xor i32 %1085, %1087, !dbg !332
  %1089 = and i32 %1083, %1088, !dbg !332
  %1090 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !332
  %1091 = load i32, i32* %1090, align 4, !dbg !332
  %1092 = xor i32 %1089, %1091, !dbg !332
  %1093 = add i32 %1081, %1092, !dbg !332
  %1094 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 11, !dbg !332
  %1095 = load i32, i32* %1094, align 4, !dbg !332
  %1096 = add i32 %1093, %1095, !dbg !332
  %1097 = add i32 %1096, 1426881987, !dbg !332
  store i32 %1097, i32* %5, align 4, !dbg !332
  %1098 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !332
  %1099 = load i32, i32* %1098, align 4, !dbg !332
  %1100 = lshr i32 %1099, 2, !dbg !332
  %1101 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !332
  %1102 = load i32, i32* %1101, align 4, !dbg !332
  %1103 = shl i32 %1102, 30, !dbg !332
  %1104 = or i32 %1100, %1103, !dbg !332
  %1105 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !332
  %1106 = load i32, i32* %1105, align 4, !dbg !332
  %1107 = lshr i32 %1106, 13, !dbg !332
  %1108 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !332
  %1109 = load i32, i32* %1108, align 4, !dbg !332
  %1110 = shl i32 %1109, 19, !dbg !332
  %1111 = or i32 %1107, %1110, !dbg !332
  %1112 = xor i32 %1104, %1111, !dbg !332
  %1113 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !332
  %1114 = load i32, i32* %1113, align 4, !dbg !332
  %1115 = lshr i32 %1114, 22, !dbg !332
  %1116 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !332
  %1117 = load i32, i32* %1116, align 4, !dbg !332
  %1118 = shl i32 %1117, 10, !dbg !332
  %1119 = or i32 %1115, %1118, !dbg !332
  %1120 = xor i32 %1112, %1119, !dbg !332
  %1121 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !332
  %1122 = load i32, i32* %1121, align 4, !dbg !332
  %1123 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !332
  %1124 = load i32, i32* %1123, align 8, !dbg !332
  %1125 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !332
  %1126 = load i32, i32* %1125, align 4, !dbg !332
  %1127 = or i32 %1124, %1126, !dbg !332
  %1128 = and i32 %1122, %1127, !dbg !332
  %1129 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !332
  %1130 = load i32, i32* %1129, align 8, !dbg !332
  %1131 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !332
  %1132 = load i32, i32* %1131, align 4, !dbg !332
  %1133 = and i32 %1130, %1132, !dbg !332
  %1134 = or i32 %1128, %1133, !dbg !332
  %1135 = add i32 %1120, %1134, !dbg !332
  store i32 %1135, i32* %6, align 4, !dbg !332
  %1136 = load i32, i32* %5, align 4, !dbg !332
  %1137 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !332
  %1138 = load i32, i32* %1137, align 16, !dbg !332
  %1139 = add i32 %1138, %1136, !dbg !332
  store i32 %1139, i32* %1137, align 16, !dbg !332
  %1140 = load i32, i32* %5, align 4, !dbg !332
  %1141 = load i32, i32* %6, align 4, !dbg !332
  %1142 = add i32 %1140, %1141, !dbg !332
  %1143 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !332
  store i32 %1142, i32* %1143, align 16, !dbg !332
  %1144 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !333
  %1145 = load i32, i32* %1144, align 4, !dbg !333
  %1146 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !333
  %1147 = load i32, i32* %1146, align 16, !dbg !333
  %1148 = lshr i32 %1147, 6, !dbg !333
  %1149 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !333
  %1150 = load i32, i32* %1149, align 16, !dbg !333
  %1151 = shl i32 %1150, 26, !dbg !333
  %1152 = or i32 %1148, %1151, !dbg !333
  %1153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !333
  %1154 = load i32, i32* %1153, align 16, !dbg !333
  %1155 = lshr i32 %1154, 11, !dbg !333
  %1156 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !333
  %1157 = load i32, i32* %1156, align 16, !dbg !333
  %1158 = shl i32 %1157, 21, !dbg !333
  %1159 = or i32 %1155, %1158, !dbg !333
  %1160 = xor i32 %1152, %1159, !dbg !333
  %1161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !333
  %1162 = load i32, i32* %1161, align 16, !dbg !333
  %1163 = lshr i32 %1162, 25, !dbg !333
  %1164 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !333
  %1165 = load i32, i32* %1164, align 16, !dbg !333
  %1166 = shl i32 %1165, 7, !dbg !333
  %1167 = or i32 %1163, %1166, !dbg !333
  %1168 = xor i32 %1160, %1167, !dbg !333
  %1169 = add i32 %1145, %1168, !dbg !333
  %1170 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !333
  %1171 = load i32, i32* %1170, align 16, !dbg !333
  %1172 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !333
  %1173 = load i32, i32* %1172, align 4, !dbg !333
  %1174 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !333
  %1175 = load i32, i32* %1174, align 8, !dbg !333
  %1176 = xor i32 %1173, %1175, !dbg !333
  %1177 = and i32 %1171, %1176, !dbg !333
  %1178 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !333
  %1179 = load i32, i32* %1178, align 8, !dbg !333
  %1180 = xor i32 %1177, %1179, !dbg !333
  %1181 = add i32 %1169, %1180, !dbg !333
  %1182 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 12, !dbg !333
  %1183 = load i32, i32* %1182, align 16, !dbg !333
  %1184 = add i32 %1181, %1183, !dbg !333
  %1185 = add i32 %1184, 1925078388, !dbg !333
  store i32 %1185, i32* %5, align 4, !dbg !333
  %1186 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !333
  %1187 = load i32, i32* %1186, align 16, !dbg !333
  %1188 = lshr i32 %1187, 2, !dbg !333
  %1189 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !333
  %1190 = load i32, i32* %1189, align 16, !dbg !333
  %1191 = shl i32 %1190, 30, !dbg !333
  %1192 = or i32 %1188, %1191, !dbg !333
  %1193 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !333
  %1194 = load i32, i32* %1193, align 16, !dbg !333
  %1195 = lshr i32 %1194, 13, !dbg !333
  %1196 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !333
  %1197 = load i32, i32* %1196, align 16, !dbg !333
  %1198 = shl i32 %1197, 19, !dbg !333
  %1199 = or i32 %1195, %1198, !dbg !333
  %1200 = xor i32 %1192, %1199, !dbg !333
  %1201 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !333
  %1202 = load i32, i32* %1201, align 16, !dbg !333
  %1203 = lshr i32 %1202, 22, !dbg !333
  %1204 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !333
  %1205 = load i32, i32* %1204, align 16, !dbg !333
  %1206 = shl i32 %1205, 10, !dbg !333
  %1207 = or i32 %1203, %1206, !dbg !333
  %1208 = xor i32 %1200, %1207, !dbg !333
  %1209 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !333
  %1210 = load i32, i32* %1209, align 16, !dbg !333
  %1211 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !333
  %1212 = load i32, i32* %1211, align 4, !dbg !333
  %1213 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !333
  %1214 = load i32, i32* %1213, align 8, !dbg !333
  %1215 = or i32 %1212, %1214, !dbg !333
  %1216 = and i32 %1210, %1215, !dbg !333
  %1217 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !333
  %1218 = load i32, i32* %1217, align 4, !dbg !333
  %1219 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !333
  %1220 = load i32, i32* %1219, align 8, !dbg !333
  %1221 = and i32 %1218, %1220, !dbg !333
  %1222 = or i32 %1216, %1221, !dbg !333
  %1223 = add i32 %1208, %1222, !dbg !333
  store i32 %1223, i32* %6, align 4, !dbg !333
  %1224 = load i32, i32* %5, align 4, !dbg !333
  %1225 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !333
  %1226 = load i32, i32* %1225, align 4, !dbg !333
  %1227 = add i32 %1226, %1224, !dbg !333
  store i32 %1227, i32* %1225, align 4, !dbg !333
  %1228 = load i32, i32* %5, align 4, !dbg !333
  %1229 = load i32, i32* %6, align 4, !dbg !333
  %1230 = add i32 %1228, %1229, !dbg !333
  %1231 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !333
  store i32 %1230, i32* %1231, align 4, !dbg !333
  %1232 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !334
  %1233 = load i32, i32* %1232, align 8, !dbg !334
  %1234 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !334
  %1235 = load i32, i32* %1234, align 4, !dbg !334
  %1236 = lshr i32 %1235, 6, !dbg !334
  %1237 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !334
  %1238 = load i32, i32* %1237, align 4, !dbg !334
  %1239 = shl i32 %1238, 26, !dbg !334
  %1240 = or i32 %1236, %1239, !dbg !334
  %1241 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !334
  %1242 = load i32, i32* %1241, align 4, !dbg !334
  %1243 = lshr i32 %1242, 11, !dbg !334
  %1244 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !334
  %1245 = load i32, i32* %1244, align 4, !dbg !334
  %1246 = shl i32 %1245, 21, !dbg !334
  %1247 = or i32 %1243, %1246, !dbg !334
  %1248 = xor i32 %1240, %1247, !dbg !334
  %1249 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !334
  %1250 = load i32, i32* %1249, align 4, !dbg !334
  %1251 = lshr i32 %1250, 25, !dbg !334
  %1252 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !334
  %1253 = load i32, i32* %1252, align 4, !dbg !334
  %1254 = shl i32 %1253, 7, !dbg !334
  %1255 = or i32 %1251, %1254, !dbg !334
  %1256 = xor i32 %1248, %1255, !dbg !334
  %1257 = add i32 %1233, %1256, !dbg !334
  %1258 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !334
  %1259 = load i32, i32* %1258, align 4, !dbg !334
  %1260 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !334
  %1261 = load i32, i32* %1260, align 16, !dbg !334
  %1262 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !334
  %1263 = load i32, i32* %1262, align 4, !dbg !334
  %1264 = xor i32 %1261, %1263, !dbg !334
  %1265 = and i32 %1259, %1264, !dbg !334
  %1266 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !334
  %1267 = load i32, i32* %1266, align 4, !dbg !334
  %1268 = xor i32 %1265, %1267, !dbg !334
  %1269 = add i32 %1257, %1268, !dbg !334
  %1270 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 13, !dbg !334
  %1271 = load i32, i32* %1270, align 4, !dbg !334
  %1272 = add i32 %1269, %1271, !dbg !334
  %1273 = add i32 %1272, -2132889090, !dbg !334
  store i32 %1273, i32* %5, align 4, !dbg !334
  %1274 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !334
  %1275 = load i32, i32* %1274, align 4, !dbg !334
  %1276 = lshr i32 %1275, 2, !dbg !334
  %1277 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !334
  %1278 = load i32, i32* %1277, align 4, !dbg !334
  %1279 = shl i32 %1278, 30, !dbg !334
  %1280 = or i32 %1276, %1279, !dbg !334
  %1281 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !334
  %1282 = load i32, i32* %1281, align 4, !dbg !334
  %1283 = lshr i32 %1282, 13, !dbg !334
  %1284 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !334
  %1285 = load i32, i32* %1284, align 4, !dbg !334
  %1286 = shl i32 %1285, 19, !dbg !334
  %1287 = or i32 %1283, %1286, !dbg !334
  %1288 = xor i32 %1280, %1287, !dbg !334
  %1289 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !334
  %1290 = load i32, i32* %1289, align 4, !dbg !334
  %1291 = lshr i32 %1290, 22, !dbg !334
  %1292 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !334
  %1293 = load i32, i32* %1292, align 4, !dbg !334
  %1294 = shl i32 %1293, 10, !dbg !334
  %1295 = or i32 %1291, %1294, !dbg !334
  %1296 = xor i32 %1288, %1295, !dbg !334
  %1297 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !334
  %1298 = load i32, i32* %1297, align 4, !dbg !334
  %1299 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !334
  %1300 = load i32, i32* %1299, align 16, !dbg !334
  %1301 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !334
  %1302 = load i32, i32* %1301, align 4, !dbg !334
  %1303 = or i32 %1300, %1302, !dbg !334
  %1304 = and i32 %1298, %1303, !dbg !334
  %1305 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !334
  %1306 = load i32, i32* %1305, align 16, !dbg !334
  %1307 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !334
  %1308 = load i32, i32* %1307, align 4, !dbg !334
  %1309 = and i32 %1306, %1308, !dbg !334
  %1310 = or i32 %1304, %1309, !dbg !334
  %1311 = add i32 %1296, %1310, !dbg !334
  store i32 %1311, i32* %6, align 4, !dbg !334
  %1312 = load i32, i32* %5, align 4, !dbg !334
  %1313 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !334
  %1314 = load i32, i32* %1313, align 8, !dbg !334
  %1315 = add i32 %1314, %1312, !dbg !334
  store i32 %1315, i32* %1313, align 8, !dbg !334
  %1316 = load i32, i32* %5, align 4, !dbg !334
  %1317 = load i32, i32* %6, align 4, !dbg !334
  %1318 = add i32 %1316, %1317, !dbg !334
  %1319 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !334
  store i32 %1318, i32* %1319, align 8, !dbg !334
  %1320 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !335
  %1321 = load i32, i32* %1320, align 4, !dbg !335
  %1322 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !335
  %1323 = load i32, i32* %1322, align 8, !dbg !335
  %1324 = lshr i32 %1323, 6, !dbg !335
  %1325 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !335
  %1326 = load i32, i32* %1325, align 8, !dbg !335
  %1327 = shl i32 %1326, 26, !dbg !335
  %1328 = or i32 %1324, %1327, !dbg !335
  %1329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !335
  %1330 = load i32, i32* %1329, align 8, !dbg !335
  %1331 = lshr i32 %1330, 11, !dbg !335
  %1332 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !335
  %1333 = load i32, i32* %1332, align 8, !dbg !335
  %1334 = shl i32 %1333, 21, !dbg !335
  %1335 = or i32 %1331, %1334, !dbg !335
  %1336 = xor i32 %1328, %1335, !dbg !335
  %1337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !335
  %1338 = load i32, i32* %1337, align 8, !dbg !335
  %1339 = lshr i32 %1338, 25, !dbg !335
  %1340 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !335
  %1341 = load i32, i32* %1340, align 8, !dbg !335
  %1342 = shl i32 %1341, 7, !dbg !335
  %1343 = or i32 %1339, %1342, !dbg !335
  %1344 = xor i32 %1336, %1343, !dbg !335
  %1345 = add i32 %1321, %1344, !dbg !335
  %1346 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !335
  %1347 = load i32, i32* %1346, align 8, !dbg !335
  %1348 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !335
  %1349 = load i32, i32* %1348, align 4, !dbg !335
  %1350 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !335
  %1351 = load i32, i32* %1350, align 16, !dbg !335
  %1352 = xor i32 %1349, %1351, !dbg !335
  %1353 = and i32 %1347, %1352, !dbg !335
  %1354 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !335
  %1355 = load i32, i32* %1354, align 16, !dbg !335
  %1356 = xor i32 %1353, %1355, !dbg !335
  %1357 = add i32 %1345, %1356, !dbg !335
  %1358 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 14, !dbg !335
  %1359 = load i32, i32* %1358, align 8, !dbg !335
  %1360 = add i32 %1357, %1359, !dbg !335
  %1361 = add i32 %1360, -1680079193, !dbg !335
  store i32 %1361, i32* %5, align 4, !dbg !335
  %1362 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !335
  %1363 = load i32, i32* %1362, align 8, !dbg !335
  %1364 = lshr i32 %1363, 2, !dbg !335
  %1365 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !335
  %1366 = load i32, i32* %1365, align 8, !dbg !335
  %1367 = shl i32 %1366, 30, !dbg !335
  %1368 = or i32 %1364, %1367, !dbg !335
  %1369 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !335
  %1370 = load i32, i32* %1369, align 8, !dbg !335
  %1371 = lshr i32 %1370, 13, !dbg !335
  %1372 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !335
  %1373 = load i32, i32* %1372, align 8, !dbg !335
  %1374 = shl i32 %1373, 19, !dbg !335
  %1375 = or i32 %1371, %1374, !dbg !335
  %1376 = xor i32 %1368, %1375, !dbg !335
  %1377 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !335
  %1378 = load i32, i32* %1377, align 8, !dbg !335
  %1379 = lshr i32 %1378, 22, !dbg !335
  %1380 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !335
  %1381 = load i32, i32* %1380, align 8, !dbg !335
  %1382 = shl i32 %1381, 10, !dbg !335
  %1383 = or i32 %1379, %1382, !dbg !335
  %1384 = xor i32 %1376, %1383, !dbg !335
  %1385 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !335
  %1386 = load i32, i32* %1385, align 8, !dbg !335
  %1387 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !335
  %1388 = load i32, i32* %1387, align 4, !dbg !335
  %1389 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !335
  %1390 = load i32, i32* %1389, align 16, !dbg !335
  %1391 = or i32 %1388, %1390, !dbg !335
  %1392 = and i32 %1386, %1391, !dbg !335
  %1393 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !335
  %1394 = load i32, i32* %1393, align 4, !dbg !335
  %1395 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !335
  %1396 = load i32, i32* %1395, align 16, !dbg !335
  %1397 = and i32 %1394, %1396, !dbg !335
  %1398 = or i32 %1392, %1397, !dbg !335
  %1399 = add i32 %1384, %1398, !dbg !335
  store i32 %1399, i32* %6, align 4, !dbg !335
  %1400 = load i32, i32* %5, align 4, !dbg !335
  %1401 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !335
  %1402 = load i32, i32* %1401, align 4, !dbg !335
  %1403 = add i32 %1402, %1400, !dbg !335
  store i32 %1403, i32* %1401, align 4, !dbg !335
  %1404 = load i32, i32* %5, align 4, !dbg !335
  %1405 = load i32, i32* %6, align 4, !dbg !335
  %1406 = add i32 %1404, %1405, !dbg !335
  %1407 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !335
  store i32 %1406, i32* %1407, align 4, !dbg !335
  %1408 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !336
  %1409 = load i32, i32* %1408, align 16, !dbg !336
  %1410 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !336
  %1411 = load i32, i32* %1410, align 4, !dbg !336
  %1412 = lshr i32 %1411, 6, !dbg !336
  %1413 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !336
  %1414 = load i32, i32* %1413, align 4, !dbg !336
  %1415 = shl i32 %1414, 26, !dbg !336
  %1416 = or i32 %1412, %1415, !dbg !336
  %1417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !336
  %1418 = load i32, i32* %1417, align 4, !dbg !336
  %1419 = lshr i32 %1418, 11, !dbg !336
  %1420 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !336
  %1421 = load i32, i32* %1420, align 4, !dbg !336
  %1422 = shl i32 %1421, 21, !dbg !336
  %1423 = or i32 %1419, %1422, !dbg !336
  %1424 = xor i32 %1416, %1423, !dbg !336
  %1425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !336
  %1426 = load i32, i32* %1425, align 4, !dbg !336
  %1427 = lshr i32 %1426, 25, !dbg !336
  %1428 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !336
  %1429 = load i32, i32* %1428, align 4, !dbg !336
  %1430 = shl i32 %1429, 7, !dbg !336
  %1431 = or i32 %1427, %1430, !dbg !336
  %1432 = xor i32 %1424, %1431, !dbg !336
  %1433 = add i32 %1409, %1432, !dbg !336
  %1434 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !336
  %1435 = load i32, i32* %1434, align 4, !dbg !336
  %1436 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !336
  %1437 = load i32, i32* %1436, align 8, !dbg !336
  %1438 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !336
  %1439 = load i32, i32* %1438, align 4, !dbg !336
  %1440 = xor i32 %1437, %1439, !dbg !336
  %1441 = and i32 %1435, %1440, !dbg !336
  %1442 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !336
  %1443 = load i32, i32* %1442, align 4, !dbg !336
  %1444 = xor i32 %1441, %1443, !dbg !336
  %1445 = add i32 %1433, %1444, !dbg !336
  %1446 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 15, !dbg !336
  %1447 = load i32, i32* %1446, align 4, !dbg !336
  %1448 = add i32 %1445, %1447, !dbg !336
  %1449 = add i32 %1448, -1046744716, !dbg !336
  store i32 %1449, i32* %5, align 4, !dbg !336
  %1450 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !336
  %1451 = load i32, i32* %1450, align 4, !dbg !336
  %1452 = lshr i32 %1451, 2, !dbg !336
  %1453 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !336
  %1454 = load i32, i32* %1453, align 4, !dbg !336
  %1455 = shl i32 %1454, 30, !dbg !336
  %1456 = or i32 %1452, %1455, !dbg !336
  %1457 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !336
  %1458 = load i32, i32* %1457, align 4, !dbg !336
  %1459 = lshr i32 %1458, 13, !dbg !336
  %1460 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !336
  %1461 = load i32, i32* %1460, align 4, !dbg !336
  %1462 = shl i32 %1461, 19, !dbg !336
  %1463 = or i32 %1459, %1462, !dbg !336
  %1464 = xor i32 %1456, %1463, !dbg !336
  %1465 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !336
  %1466 = load i32, i32* %1465, align 4, !dbg !336
  %1467 = lshr i32 %1466, 22, !dbg !336
  %1468 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !336
  %1469 = load i32, i32* %1468, align 4, !dbg !336
  %1470 = shl i32 %1469, 10, !dbg !336
  %1471 = or i32 %1467, %1470, !dbg !336
  %1472 = xor i32 %1464, %1471, !dbg !336
  %1473 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !336
  %1474 = load i32, i32* %1473, align 4, !dbg !336
  %1475 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !336
  %1476 = load i32, i32* %1475, align 8, !dbg !336
  %1477 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !336
  %1478 = load i32, i32* %1477, align 4, !dbg !336
  %1479 = or i32 %1476, %1478, !dbg !336
  %1480 = and i32 %1474, %1479, !dbg !336
  %1481 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !336
  %1482 = load i32, i32* %1481, align 8, !dbg !336
  %1483 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !336
  %1484 = load i32, i32* %1483, align 4, !dbg !336
  %1485 = and i32 %1482, %1484, !dbg !336
  %1486 = or i32 %1480, %1485, !dbg !336
  %1487 = add i32 %1472, %1486, !dbg !336
  store i32 %1487, i32* %6, align 4, !dbg !336
  %1488 = load i32, i32* %5, align 4, !dbg !336
  %1489 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !336
  %1490 = load i32, i32* %1489, align 16, !dbg !336
  %1491 = add i32 %1490, %1488, !dbg !336
  store i32 %1491, i32* %1489, align 16, !dbg !336
  %1492 = load i32, i32* %5, align 4, !dbg !336
  %1493 = load i32, i32* %6, align 4, !dbg !336
  %1494 = add i32 %1492, %1493, !dbg !336
  %1495 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !336
  store i32 %1494, i32* %1495, align 16, !dbg !336
  %1496 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !337
  %1497 = load i32, i32* %1496, align 4, !dbg !337
  %1498 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !337
  %1499 = load i32, i32* %1498, align 16, !dbg !337
  %1500 = lshr i32 %1499, 6, !dbg !337
  %1501 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !337
  %1502 = load i32, i32* %1501, align 16, !dbg !337
  %1503 = shl i32 %1502, 26, !dbg !337
  %1504 = or i32 %1500, %1503, !dbg !337
  %1505 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !337
  %1506 = load i32, i32* %1505, align 16, !dbg !337
  %1507 = lshr i32 %1506, 11, !dbg !337
  %1508 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !337
  %1509 = load i32, i32* %1508, align 16, !dbg !337
  %1510 = shl i32 %1509, 21, !dbg !337
  %1511 = or i32 %1507, %1510, !dbg !337
  %1512 = xor i32 %1504, %1511, !dbg !337
  %1513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !337
  %1514 = load i32, i32* %1513, align 16, !dbg !337
  %1515 = lshr i32 %1514, 25, !dbg !337
  %1516 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !337
  %1517 = load i32, i32* %1516, align 16, !dbg !337
  %1518 = shl i32 %1517, 7, !dbg !337
  %1519 = or i32 %1515, %1518, !dbg !337
  %1520 = xor i32 %1512, %1519, !dbg !337
  %1521 = add i32 %1497, %1520, !dbg !337
  %1522 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !337
  %1523 = load i32, i32* %1522, align 16, !dbg !337
  %1524 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !337
  %1525 = load i32, i32* %1524, align 4, !dbg !337
  %1526 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !337
  %1527 = load i32, i32* %1526, align 8, !dbg !337
  %1528 = xor i32 %1525, %1527, !dbg !337
  %1529 = and i32 %1523, %1528, !dbg !337
  %1530 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !337
  %1531 = load i32, i32* %1530, align 8, !dbg !337
  %1532 = xor i32 %1529, %1531, !dbg !337
  %1533 = add i32 %1521, %1532, !dbg !337
  %1534 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 16, !dbg !337
  %1535 = load i32, i32* %1534, align 16, !dbg !337
  %1536 = add i32 %1533, %1535, !dbg !337
  %1537 = add i32 %1536, -459576895, !dbg !337
  store i32 %1537, i32* %5, align 4, !dbg !337
  %1538 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !337
  %1539 = load i32, i32* %1538, align 16, !dbg !337
  %1540 = lshr i32 %1539, 2, !dbg !337
  %1541 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !337
  %1542 = load i32, i32* %1541, align 16, !dbg !337
  %1543 = shl i32 %1542, 30, !dbg !337
  %1544 = or i32 %1540, %1543, !dbg !337
  %1545 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !337
  %1546 = load i32, i32* %1545, align 16, !dbg !337
  %1547 = lshr i32 %1546, 13, !dbg !337
  %1548 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !337
  %1549 = load i32, i32* %1548, align 16, !dbg !337
  %1550 = shl i32 %1549, 19, !dbg !337
  %1551 = or i32 %1547, %1550, !dbg !337
  %1552 = xor i32 %1544, %1551, !dbg !337
  %1553 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !337
  %1554 = load i32, i32* %1553, align 16, !dbg !337
  %1555 = lshr i32 %1554, 22, !dbg !337
  %1556 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !337
  %1557 = load i32, i32* %1556, align 16, !dbg !337
  %1558 = shl i32 %1557, 10, !dbg !337
  %1559 = or i32 %1555, %1558, !dbg !337
  %1560 = xor i32 %1552, %1559, !dbg !337
  %1561 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !337
  %1562 = load i32, i32* %1561, align 16, !dbg !337
  %1563 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !337
  %1564 = load i32, i32* %1563, align 4, !dbg !337
  %1565 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !337
  %1566 = load i32, i32* %1565, align 8, !dbg !337
  %1567 = or i32 %1564, %1566, !dbg !337
  %1568 = and i32 %1562, %1567, !dbg !337
  %1569 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !337
  %1570 = load i32, i32* %1569, align 4, !dbg !337
  %1571 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !337
  %1572 = load i32, i32* %1571, align 8, !dbg !337
  %1573 = and i32 %1570, %1572, !dbg !337
  %1574 = or i32 %1568, %1573, !dbg !337
  %1575 = add i32 %1560, %1574, !dbg !337
  store i32 %1575, i32* %6, align 4, !dbg !337
  %1576 = load i32, i32* %5, align 4, !dbg !337
  %1577 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !337
  %1578 = load i32, i32* %1577, align 4, !dbg !337
  %1579 = add i32 %1578, %1576, !dbg !337
  store i32 %1579, i32* %1577, align 4, !dbg !337
  %1580 = load i32, i32* %5, align 4, !dbg !337
  %1581 = load i32, i32* %6, align 4, !dbg !337
  %1582 = add i32 %1580, %1581, !dbg !337
  %1583 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !337
  store i32 %1582, i32* %1583, align 4, !dbg !337
  %1584 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !338
  %1585 = load i32, i32* %1584, align 8, !dbg !338
  %1586 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !338
  %1587 = load i32, i32* %1586, align 4, !dbg !338
  %1588 = lshr i32 %1587, 6, !dbg !338
  %1589 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !338
  %1590 = load i32, i32* %1589, align 4, !dbg !338
  %1591 = shl i32 %1590, 26, !dbg !338
  %1592 = or i32 %1588, %1591, !dbg !338
  %1593 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !338
  %1594 = load i32, i32* %1593, align 4, !dbg !338
  %1595 = lshr i32 %1594, 11, !dbg !338
  %1596 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !338
  %1597 = load i32, i32* %1596, align 4, !dbg !338
  %1598 = shl i32 %1597, 21, !dbg !338
  %1599 = or i32 %1595, %1598, !dbg !338
  %1600 = xor i32 %1592, %1599, !dbg !338
  %1601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !338
  %1602 = load i32, i32* %1601, align 4, !dbg !338
  %1603 = lshr i32 %1602, 25, !dbg !338
  %1604 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !338
  %1605 = load i32, i32* %1604, align 4, !dbg !338
  %1606 = shl i32 %1605, 7, !dbg !338
  %1607 = or i32 %1603, %1606, !dbg !338
  %1608 = xor i32 %1600, %1607, !dbg !338
  %1609 = add i32 %1585, %1608, !dbg !338
  %1610 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !338
  %1611 = load i32, i32* %1610, align 4, !dbg !338
  %1612 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !338
  %1613 = load i32, i32* %1612, align 16, !dbg !338
  %1614 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !338
  %1615 = load i32, i32* %1614, align 4, !dbg !338
  %1616 = xor i32 %1613, %1615, !dbg !338
  %1617 = and i32 %1611, %1616, !dbg !338
  %1618 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !338
  %1619 = load i32, i32* %1618, align 4, !dbg !338
  %1620 = xor i32 %1617, %1619, !dbg !338
  %1621 = add i32 %1609, %1620, !dbg !338
  %1622 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 17, !dbg !338
  %1623 = load i32, i32* %1622, align 4, !dbg !338
  %1624 = add i32 %1621, %1623, !dbg !338
  %1625 = add i32 %1624, -272742522, !dbg !338
  store i32 %1625, i32* %5, align 4, !dbg !338
  %1626 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !338
  %1627 = load i32, i32* %1626, align 4, !dbg !338
  %1628 = lshr i32 %1627, 2, !dbg !338
  %1629 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !338
  %1630 = load i32, i32* %1629, align 4, !dbg !338
  %1631 = shl i32 %1630, 30, !dbg !338
  %1632 = or i32 %1628, %1631, !dbg !338
  %1633 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !338
  %1634 = load i32, i32* %1633, align 4, !dbg !338
  %1635 = lshr i32 %1634, 13, !dbg !338
  %1636 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !338
  %1637 = load i32, i32* %1636, align 4, !dbg !338
  %1638 = shl i32 %1637, 19, !dbg !338
  %1639 = or i32 %1635, %1638, !dbg !338
  %1640 = xor i32 %1632, %1639, !dbg !338
  %1641 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !338
  %1642 = load i32, i32* %1641, align 4, !dbg !338
  %1643 = lshr i32 %1642, 22, !dbg !338
  %1644 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !338
  %1645 = load i32, i32* %1644, align 4, !dbg !338
  %1646 = shl i32 %1645, 10, !dbg !338
  %1647 = or i32 %1643, %1646, !dbg !338
  %1648 = xor i32 %1640, %1647, !dbg !338
  %1649 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !338
  %1650 = load i32, i32* %1649, align 4, !dbg !338
  %1651 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !338
  %1652 = load i32, i32* %1651, align 16, !dbg !338
  %1653 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !338
  %1654 = load i32, i32* %1653, align 4, !dbg !338
  %1655 = or i32 %1652, %1654, !dbg !338
  %1656 = and i32 %1650, %1655, !dbg !338
  %1657 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !338
  %1658 = load i32, i32* %1657, align 16, !dbg !338
  %1659 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !338
  %1660 = load i32, i32* %1659, align 4, !dbg !338
  %1661 = and i32 %1658, %1660, !dbg !338
  %1662 = or i32 %1656, %1661, !dbg !338
  %1663 = add i32 %1648, %1662, !dbg !338
  store i32 %1663, i32* %6, align 4, !dbg !338
  %1664 = load i32, i32* %5, align 4, !dbg !338
  %1665 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !338
  %1666 = load i32, i32* %1665, align 8, !dbg !338
  %1667 = add i32 %1666, %1664, !dbg !338
  store i32 %1667, i32* %1665, align 8, !dbg !338
  %1668 = load i32, i32* %5, align 4, !dbg !338
  %1669 = load i32, i32* %6, align 4, !dbg !338
  %1670 = add i32 %1668, %1669, !dbg !338
  %1671 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !338
  store i32 %1670, i32* %1671, align 8, !dbg !338
  %1672 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !339
  %1673 = load i32, i32* %1672, align 4, !dbg !339
  %1674 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !339
  %1675 = load i32, i32* %1674, align 8, !dbg !339
  %1676 = lshr i32 %1675, 6, !dbg !339
  %1677 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !339
  %1678 = load i32, i32* %1677, align 8, !dbg !339
  %1679 = shl i32 %1678, 26, !dbg !339
  %1680 = or i32 %1676, %1679, !dbg !339
  %1681 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !339
  %1682 = load i32, i32* %1681, align 8, !dbg !339
  %1683 = lshr i32 %1682, 11, !dbg !339
  %1684 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !339
  %1685 = load i32, i32* %1684, align 8, !dbg !339
  %1686 = shl i32 %1685, 21, !dbg !339
  %1687 = or i32 %1683, %1686, !dbg !339
  %1688 = xor i32 %1680, %1687, !dbg !339
  %1689 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !339
  %1690 = load i32, i32* %1689, align 8, !dbg !339
  %1691 = lshr i32 %1690, 25, !dbg !339
  %1692 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !339
  %1693 = load i32, i32* %1692, align 8, !dbg !339
  %1694 = shl i32 %1693, 7, !dbg !339
  %1695 = or i32 %1691, %1694, !dbg !339
  %1696 = xor i32 %1688, %1695, !dbg !339
  %1697 = add i32 %1673, %1696, !dbg !339
  %1698 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !339
  %1699 = load i32, i32* %1698, align 8, !dbg !339
  %1700 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !339
  %1701 = load i32, i32* %1700, align 4, !dbg !339
  %1702 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !339
  %1703 = load i32, i32* %1702, align 16, !dbg !339
  %1704 = xor i32 %1701, %1703, !dbg !339
  %1705 = and i32 %1699, %1704, !dbg !339
  %1706 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !339
  %1707 = load i32, i32* %1706, align 16, !dbg !339
  %1708 = xor i32 %1705, %1707, !dbg !339
  %1709 = add i32 %1697, %1708, !dbg !339
  %1710 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 18, !dbg !339
  %1711 = load i32, i32* %1710, align 8, !dbg !339
  %1712 = add i32 %1709, %1711, !dbg !339
  %1713 = add i32 %1712, 264347078, !dbg !339
  store i32 %1713, i32* %5, align 4, !dbg !339
  %1714 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !339
  %1715 = load i32, i32* %1714, align 8, !dbg !339
  %1716 = lshr i32 %1715, 2, !dbg !339
  %1717 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !339
  %1718 = load i32, i32* %1717, align 8, !dbg !339
  %1719 = shl i32 %1718, 30, !dbg !339
  %1720 = or i32 %1716, %1719, !dbg !339
  %1721 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !339
  %1722 = load i32, i32* %1721, align 8, !dbg !339
  %1723 = lshr i32 %1722, 13, !dbg !339
  %1724 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !339
  %1725 = load i32, i32* %1724, align 8, !dbg !339
  %1726 = shl i32 %1725, 19, !dbg !339
  %1727 = or i32 %1723, %1726, !dbg !339
  %1728 = xor i32 %1720, %1727, !dbg !339
  %1729 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !339
  %1730 = load i32, i32* %1729, align 8, !dbg !339
  %1731 = lshr i32 %1730, 22, !dbg !339
  %1732 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !339
  %1733 = load i32, i32* %1732, align 8, !dbg !339
  %1734 = shl i32 %1733, 10, !dbg !339
  %1735 = or i32 %1731, %1734, !dbg !339
  %1736 = xor i32 %1728, %1735, !dbg !339
  %1737 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !339
  %1738 = load i32, i32* %1737, align 8, !dbg !339
  %1739 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !339
  %1740 = load i32, i32* %1739, align 4, !dbg !339
  %1741 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !339
  %1742 = load i32, i32* %1741, align 16, !dbg !339
  %1743 = or i32 %1740, %1742, !dbg !339
  %1744 = and i32 %1738, %1743, !dbg !339
  %1745 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !339
  %1746 = load i32, i32* %1745, align 4, !dbg !339
  %1747 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !339
  %1748 = load i32, i32* %1747, align 16, !dbg !339
  %1749 = and i32 %1746, %1748, !dbg !339
  %1750 = or i32 %1744, %1749, !dbg !339
  %1751 = add i32 %1736, %1750, !dbg !339
  store i32 %1751, i32* %6, align 4, !dbg !339
  %1752 = load i32, i32* %5, align 4, !dbg !339
  %1753 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !339
  %1754 = load i32, i32* %1753, align 4, !dbg !339
  %1755 = add i32 %1754, %1752, !dbg !339
  store i32 %1755, i32* %1753, align 4, !dbg !339
  %1756 = load i32, i32* %5, align 4, !dbg !339
  %1757 = load i32, i32* %6, align 4, !dbg !339
  %1758 = add i32 %1756, %1757, !dbg !339
  %1759 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !339
  store i32 %1758, i32* %1759, align 4, !dbg !339
  %1760 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !340
  %1761 = load i32, i32* %1760, align 16, !dbg !340
  %1762 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !340
  %1763 = load i32, i32* %1762, align 4, !dbg !340
  %1764 = lshr i32 %1763, 6, !dbg !340
  %1765 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !340
  %1766 = load i32, i32* %1765, align 4, !dbg !340
  %1767 = shl i32 %1766, 26, !dbg !340
  %1768 = or i32 %1764, %1767, !dbg !340
  %1769 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !340
  %1770 = load i32, i32* %1769, align 4, !dbg !340
  %1771 = lshr i32 %1770, 11, !dbg !340
  %1772 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !340
  %1773 = load i32, i32* %1772, align 4, !dbg !340
  %1774 = shl i32 %1773, 21, !dbg !340
  %1775 = or i32 %1771, %1774, !dbg !340
  %1776 = xor i32 %1768, %1775, !dbg !340
  %1777 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !340
  %1778 = load i32, i32* %1777, align 4, !dbg !340
  %1779 = lshr i32 %1778, 25, !dbg !340
  %1780 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !340
  %1781 = load i32, i32* %1780, align 4, !dbg !340
  %1782 = shl i32 %1781, 7, !dbg !340
  %1783 = or i32 %1779, %1782, !dbg !340
  %1784 = xor i32 %1776, %1783, !dbg !340
  %1785 = add i32 %1761, %1784, !dbg !340
  %1786 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !340
  %1787 = load i32, i32* %1786, align 4, !dbg !340
  %1788 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !340
  %1789 = load i32, i32* %1788, align 8, !dbg !340
  %1790 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !340
  %1791 = load i32, i32* %1790, align 4, !dbg !340
  %1792 = xor i32 %1789, %1791, !dbg !340
  %1793 = and i32 %1787, %1792, !dbg !340
  %1794 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !340
  %1795 = load i32, i32* %1794, align 4, !dbg !340
  %1796 = xor i32 %1793, %1795, !dbg !340
  %1797 = add i32 %1785, %1796, !dbg !340
  %1798 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 19, !dbg !340
  %1799 = load i32, i32* %1798, align 4, !dbg !340
  %1800 = add i32 %1797, %1799, !dbg !340
  %1801 = add i32 %1800, 604807628, !dbg !340
  store i32 %1801, i32* %5, align 4, !dbg !340
  %1802 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !340
  %1803 = load i32, i32* %1802, align 4, !dbg !340
  %1804 = lshr i32 %1803, 2, !dbg !340
  %1805 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !340
  %1806 = load i32, i32* %1805, align 4, !dbg !340
  %1807 = shl i32 %1806, 30, !dbg !340
  %1808 = or i32 %1804, %1807, !dbg !340
  %1809 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !340
  %1810 = load i32, i32* %1809, align 4, !dbg !340
  %1811 = lshr i32 %1810, 13, !dbg !340
  %1812 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !340
  %1813 = load i32, i32* %1812, align 4, !dbg !340
  %1814 = shl i32 %1813, 19, !dbg !340
  %1815 = or i32 %1811, %1814, !dbg !340
  %1816 = xor i32 %1808, %1815, !dbg !340
  %1817 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !340
  %1818 = load i32, i32* %1817, align 4, !dbg !340
  %1819 = lshr i32 %1818, 22, !dbg !340
  %1820 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !340
  %1821 = load i32, i32* %1820, align 4, !dbg !340
  %1822 = shl i32 %1821, 10, !dbg !340
  %1823 = or i32 %1819, %1822, !dbg !340
  %1824 = xor i32 %1816, %1823, !dbg !340
  %1825 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !340
  %1826 = load i32, i32* %1825, align 4, !dbg !340
  %1827 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !340
  %1828 = load i32, i32* %1827, align 8, !dbg !340
  %1829 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !340
  %1830 = load i32, i32* %1829, align 4, !dbg !340
  %1831 = or i32 %1828, %1830, !dbg !340
  %1832 = and i32 %1826, %1831, !dbg !340
  %1833 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !340
  %1834 = load i32, i32* %1833, align 8, !dbg !340
  %1835 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !340
  %1836 = load i32, i32* %1835, align 4, !dbg !340
  %1837 = and i32 %1834, %1836, !dbg !340
  %1838 = or i32 %1832, %1837, !dbg !340
  %1839 = add i32 %1824, %1838, !dbg !340
  store i32 %1839, i32* %6, align 4, !dbg !340
  %1840 = load i32, i32* %5, align 4, !dbg !340
  %1841 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !340
  %1842 = load i32, i32* %1841, align 16, !dbg !340
  %1843 = add i32 %1842, %1840, !dbg !340
  store i32 %1843, i32* %1841, align 16, !dbg !340
  %1844 = load i32, i32* %5, align 4, !dbg !340
  %1845 = load i32, i32* %6, align 4, !dbg !340
  %1846 = add i32 %1844, %1845, !dbg !340
  %1847 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !340
  store i32 %1846, i32* %1847, align 16, !dbg !340
  %1848 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !341
  %1849 = load i32, i32* %1848, align 4, !dbg !341
  %1850 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !341
  %1851 = load i32, i32* %1850, align 16, !dbg !341
  %1852 = lshr i32 %1851, 6, !dbg !341
  %1853 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !341
  %1854 = load i32, i32* %1853, align 16, !dbg !341
  %1855 = shl i32 %1854, 26, !dbg !341
  %1856 = or i32 %1852, %1855, !dbg !341
  %1857 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !341
  %1858 = load i32, i32* %1857, align 16, !dbg !341
  %1859 = lshr i32 %1858, 11, !dbg !341
  %1860 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !341
  %1861 = load i32, i32* %1860, align 16, !dbg !341
  %1862 = shl i32 %1861, 21, !dbg !341
  %1863 = or i32 %1859, %1862, !dbg !341
  %1864 = xor i32 %1856, %1863, !dbg !341
  %1865 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !341
  %1866 = load i32, i32* %1865, align 16, !dbg !341
  %1867 = lshr i32 %1866, 25, !dbg !341
  %1868 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !341
  %1869 = load i32, i32* %1868, align 16, !dbg !341
  %1870 = shl i32 %1869, 7, !dbg !341
  %1871 = or i32 %1867, %1870, !dbg !341
  %1872 = xor i32 %1864, %1871, !dbg !341
  %1873 = add i32 %1849, %1872, !dbg !341
  %1874 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !341
  %1875 = load i32, i32* %1874, align 16, !dbg !341
  %1876 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !341
  %1877 = load i32, i32* %1876, align 4, !dbg !341
  %1878 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !341
  %1879 = load i32, i32* %1878, align 8, !dbg !341
  %1880 = xor i32 %1877, %1879, !dbg !341
  %1881 = and i32 %1875, %1880, !dbg !341
  %1882 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !341
  %1883 = load i32, i32* %1882, align 8, !dbg !341
  %1884 = xor i32 %1881, %1883, !dbg !341
  %1885 = add i32 %1873, %1884, !dbg !341
  %1886 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 20, !dbg !341
  %1887 = load i32, i32* %1886, align 16, !dbg !341
  %1888 = add i32 %1885, %1887, !dbg !341
  %1889 = add i32 %1888, 770255983, !dbg !341
  store i32 %1889, i32* %5, align 4, !dbg !341
  %1890 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !341
  %1891 = load i32, i32* %1890, align 16, !dbg !341
  %1892 = lshr i32 %1891, 2, !dbg !341
  %1893 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !341
  %1894 = load i32, i32* %1893, align 16, !dbg !341
  %1895 = shl i32 %1894, 30, !dbg !341
  %1896 = or i32 %1892, %1895, !dbg !341
  %1897 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !341
  %1898 = load i32, i32* %1897, align 16, !dbg !341
  %1899 = lshr i32 %1898, 13, !dbg !341
  %1900 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !341
  %1901 = load i32, i32* %1900, align 16, !dbg !341
  %1902 = shl i32 %1901, 19, !dbg !341
  %1903 = or i32 %1899, %1902, !dbg !341
  %1904 = xor i32 %1896, %1903, !dbg !341
  %1905 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !341
  %1906 = load i32, i32* %1905, align 16, !dbg !341
  %1907 = lshr i32 %1906, 22, !dbg !341
  %1908 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !341
  %1909 = load i32, i32* %1908, align 16, !dbg !341
  %1910 = shl i32 %1909, 10, !dbg !341
  %1911 = or i32 %1907, %1910, !dbg !341
  %1912 = xor i32 %1904, %1911, !dbg !341
  %1913 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !341
  %1914 = load i32, i32* %1913, align 16, !dbg !341
  %1915 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !341
  %1916 = load i32, i32* %1915, align 4, !dbg !341
  %1917 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !341
  %1918 = load i32, i32* %1917, align 8, !dbg !341
  %1919 = or i32 %1916, %1918, !dbg !341
  %1920 = and i32 %1914, %1919, !dbg !341
  %1921 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !341
  %1922 = load i32, i32* %1921, align 4, !dbg !341
  %1923 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !341
  %1924 = load i32, i32* %1923, align 8, !dbg !341
  %1925 = and i32 %1922, %1924, !dbg !341
  %1926 = or i32 %1920, %1925, !dbg !341
  %1927 = add i32 %1912, %1926, !dbg !341
  store i32 %1927, i32* %6, align 4, !dbg !341
  %1928 = load i32, i32* %5, align 4, !dbg !341
  %1929 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !341
  %1930 = load i32, i32* %1929, align 4, !dbg !341
  %1931 = add i32 %1930, %1928, !dbg !341
  store i32 %1931, i32* %1929, align 4, !dbg !341
  %1932 = load i32, i32* %5, align 4, !dbg !341
  %1933 = load i32, i32* %6, align 4, !dbg !341
  %1934 = add i32 %1932, %1933, !dbg !341
  %1935 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !341
  store i32 %1934, i32* %1935, align 4, !dbg !341
  %1936 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !342
  %1937 = load i32, i32* %1936, align 8, !dbg !342
  %1938 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !342
  %1939 = load i32, i32* %1938, align 4, !dbg !342
  %1940 = lshr i32 %1939, 6, !dbg !342
  %1941 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !342
  %1942 = load i32, i32* %1941, align 4, !dbg !342
  %1943 = shl i32 %1942, 26, !dbg !342
  %1944 = or i32 %1940, %1943, !dbg !342
  %1945 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !342
  %1946 = load i32, i32* %1945, align 4, !dbg !342
  %1947 = lshr i32 %1946, 11, !dbg !342
  %1948 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !342
  %1949 = load i32, i32* %1948, align 4, !dbg !342
  %1950 = shl i32 %1949, 21, !dbg !342
  %1951 = or i32 %1947, %1950, !dbg !342
  %1952 = xor i32 %1944, %1951, !dbg !342
  %1953 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !342
  %1954 = load i32, i32* %1953, align 4, !dbg !342
  %1955 = lshr i32 %1954, 25, !dbg !342
  %1956 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !342
  %1957 = load i32, i32* %1956, align 4, !dbg !342
  %1958 = shl i32 %1957, 7, !dbg !342
  %1959 = or i32 %1955, %1958, !dbg !342
  %1960 = xor i32 %1952, %1959, !dbg !342
  %1961 = add i32 %1937, %1960, !dbg !342
  %1962 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !342
  %1963 = load i32, i32* %1962, align 4, !dbg !342
  %1964 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !342
  %1965 = load i32, i32* %1964, align 16, !dbg !342
  %1966 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !342
  %1967 = load i32, i32* %1966, align 4, !dbg !342
  %1968 = xor i32 %1965, %1967, !dbg !342
  %1969 = and i32 %1963, %1968, !dbg !342
  %1970 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !342
  %1971 = load i32, i32* %1970, align 4, !dbg !342
  %1972 = xor i32 %1969, %1971, !dbg !342
  %1973 = add i32 %1961, %1972, !dbg !342
  %1974 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 21, !dbg !342
  %1975 = load i32, i32* %1974, align 4, !dbg !342
  %1976 = add i32 %1973, %1975, !dbg !342
  %1977 = add i32 %1976, 1249150122, !dbg !342
  store i32 %1977, i32* %5, align 4, !dbg !342
  %1978 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !342
  %1979 = load i32, i32* %1978, align 4, !dbg !342
  %1980 = lshr i32 %1979, 2, !dbg !342
  %1981 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !342
  %1982 = load i32, i32* %1981, align 4, !dbg !342
  %1983 = shl i32 %1982, 30, !dbg !342
  %1984 = or i32 %1980, %1983, !dbg !342
  %1985 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !342
  %1986 = load i32, i32* %1985, align 4, !dbg !342
  %1987 = lshr i32 %1986, 13, !dbg !342
  %1988 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !342
  %1989 = load i32, i32* %1988, align 4, !dbg !342
  %1990 = shl i32 %1989, 19, !dbg !342
  %1991 = or i32 %1987, %1990, !dbg !342
  %1992 = xor i32 %1984, %1991, !dbg !342
  %1993 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !342
  %1994 = load i32, i32* %1993, align 4, !dbg !342
  %1995 = lshr i32 %1994, 22, !dbg !342
  %1996 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !342
  %1997 = load i32, i32* %1996, align 4, !dbg !342
  %1998 = shl i32 %1997, 10, !dbg !342
  %1999 = or i32 %1995, %1998, !dbg !342
  %2000 = xor i32 %1992, %1999, !dbg !342
  %2001 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !342
  %2002 = load i32, i32* %2001, align 4, !dbg !342
  %2003 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !342
  %2004 = load i32, i32* %2003, align 16, !dbg !342
  %2005 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !342
  %2006 = load i32, i32* %2005, align 4, !dbg !342
  %2007 = or i32 %2004, %2006, !dbg !342
  %2008 = and i32 %2002, %2007, !dbg !342
  %2009 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !342
  %2010 = load i32, i32* %2009, align 16, !dbg !342
  %2011 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !342
  %2012 = load i32, i32* %2011, align 4, !dbg !342
  %2013 = and i32 %2010, %2012, !dbg !342
  %2014 = or i32 %2008, %2013, !dbg !342
  %2015 = add i32 %2000, %2014, !dbg !342
  store i32 %2015, i32* %6, align 4, !dbg !342
  %2016 = load i32, i32* %5, align 4, !dbg !342
  %2017 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !342
  %2018 = load i32, i32* %2017, align 8, !dbg !342
  %2019 = add i32 %2018, %2016, !dbg !342
  store i32 %2019, i32* %2017, align 8, !dbg !342
  %2020 = load i32, i32* %5, align 4, !dbg !342
  %2021 = load i32, i32* %6, align 4, !dbg !342
  %2022 = add i32 %2020, %2021, !dbg !342
  %2023 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !342
  store i32 %2022, i32* %2023, align 8, !dbg !342
  %2024 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !343
  %2025 = load i32, i32* %2024, align 4, !dbg !343
  %2026 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !343
  %2027 = load i32, i32* %2026, align 8, !dbg !343
  %2028 = lshr i32 %2027, 6, !dbg !343
  %2029 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !343
  %2030 = load i32, i32* %2029, align 8, !dbg !343
  %2031 = shl i32 %2030, 26, !dbg !343
  %2032 = or i32 %2028, %2031, !dbg !343
  %2033 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !343
  %2034 = load i32, i32* %2033, align 8, !dbg !343
  %2035 = lshr i32 %2034, 11, !dbg !343
  %2036 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !343
  %2037 = load i32, i32* %2036, align 8, !dbg !343
  %2038 = shl i32 %2037, 21, !dbg !343
  %2039 = or i32 %2035, %2038, !dbg !343
  %2040 = xor i32 %2032, %2039, !dbg !343
  %2041 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !343
  %2042 = load i32, i32* %2041, align 8, !dbg !343
  %2043 = lshr i32 %2042, 25, !dbg !343
  %2044 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !343
  %2045 = load i32, i32* %2044, align 8, !dbg !343
  %2046 = shl i32 %2045, 7, !dbg !343
  %2047 = or i32 %2043, %2046, !dbg !343
  %2048 = xor i32 %2040, %2047, !dbg !343
  %2049 = add i32 %2025, %2048, !dbg !343
  %2050 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !343
  %2051 = load i32, i32* %2050, align 8, !dbg !343
  %2052 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !343
  %2053 = load i32, i32* %2052, align 4, !dbg !343
  %2054 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !343
  %2055 = load i32, i32* %2054, align 16, !dbg !343
  %2056 = xor i32 %2053, %2055, !dbg !343
  %2057 = and i32 %2051, %2056, !dbg !343
  %2058 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !343
  %2059 = load i32, i32* %2058, align 16, !dbg !343
  %2060 = xor i32 %2057, %2059, !dbg !343
  %2061 = add i32 %2049, %2060, !dbg !343
  %2062 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 22, !dbg !343
  %2063 = load i32, i32* %2062, align 8, !dbg !343
  %2064 = add i32 %2061, %2063, !dbg !343
  %2065 = add i32 %2064, 1555081692, !dbg !343
  store i32 %2065, i32* %5, align 4, !dbg !343
  %2066 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !343
  %2067 = load i32, i32* %2066, align 8, !dbg !343
  %2068 = lshr i32 %2067, 2, !dbg !343
  %2069 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !343
  %2070 = load i32, i32* %2069, align 8, !dbg !343
  %2071 = shl i32 %2070, 30, !dbg !343
  %2072 = or i32 %2068, %2071, !dbg !343
  %2073 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !343
  %2074 = load i32, i32* %2073, align 8, !dbg !343
  %2075 = lshr i32 %2074, 13, !dbg !343
  %2076 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !343
  %2077 = load i32, i32* %2076, align 8, !dbg !343
  %2078 = shl i32 %2077, 19, !dbg !343
  %2079 = or i32 %2075, %2078, !dbg !343
  %2080 = xor i32 %2072, %2079, !dbg !343
  %2081 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !343
  %2082 = load i32, i32* %2081, align 8, !dbg !343
  %2083 = lshr i32 %2082, 22, !dbg !343
  %2084 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !343
  %2085 = load i32, i32* %2084, align 8, !dbg !343
  %2086 = shl i32 %2085, 10, !dbg !343
  %2087 = or i32 %2083, %2086, !dbg !343
  %2088 = xor i32 %2080, %2087, !dbg !343
  %2089 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !343
  %2090 = load i32, i32* %2089, align 8, !dbg !343
  %2091 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !343
  %2092 = load i32, i32* %2091, align 4, !dbg !343
  %2093 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !343
  %2094 = load i32, i32* %2093, align 16, !dbg !343
  %2095 = or i32 %2092, %2094, !dbg !343
  %2096 = and i32 %2090, %2095, !dbg !343
  %2097 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !343
  %2098 = load i32, i32* %2097, align 4, !dbg !343
  %2099 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !343
  %2100 = load i32, i32* %2099, align 16, !dbg !343
  %2101 = and i32 %2098, %2100, !dbg !343
  %2102 = or i32 %2096, %2101, !dbg !343
  %2103 = add i32 %2088, %2102, !dbg !343
  store i32 %2103, i32* %6, align 4, !dbg !343
  %2104 = load i32, i32* %5, align 4, !dbg !343
  %2105 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !343
  %2106 = load i32, i32* %2105, align 4, !dbg !343
  %2107 = add i32 %2106, %2104, !dbg !343
  store i32 %2107, i32* %2105, align 4, !dbg !343
  %2108 = load i32, i32* %5, align 4, !dbg !343
  %2109 = load i32, i32* %6, align 4, !dbg !343
  %2110 = add i32 %2108, %2109, !dbg !343
  %2111 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !343
  store i32 %2110, i32* %2111, align 4, !dbg !343
  %2112 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !344
  %2113 = load i32, i32* %2112, align 16, !dbg !344
  %2114 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !344
  %2115 = load i32, i32* %2114, align 4, !dbg !344
  %2116 = lshr i32 %2115, 6, !dbg !344
  %2117 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !344
  %2118 = load i32, i32* %2117, align 4, !dbg !344
  %2119 = shl i32 %2118, 26, !dbg !344
  %2120 = or i32 %2116, %2119, !dbg !344
  %2121 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !344
  %2122 = load i32, i32* %2121, align 4, !dbg !344
  %2123 = lshr i32 %2122, 11, !dbg !344
  %2124 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !344
  %2125 = load i32, i32* %2124, align 4, !dbg !344
  %2126 = shl i32 %2125, 21, !dbg !344
  %2127 = or i32 %2123, %2126, !dbg !344
  %2128 = xor i32 %2120, %2127, !dbg !344
  %2129 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !344
  %2130 = load i32, i32* %2129, align 4, !dbg !344
  %2131 = lshr i32 %2130, 25, !dbg !344
  %2132 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !344
  %2133 = load i32, i32* %2132, align 4, !dbg !344
  %2134 = shl i32 %2133, 7, !dbg !344
  %2135 = or i32 %2131, %2134, !dbg !344
  %2136 = xor i32 %2128, %2135, !dbg !344
  %2137 = add i32 %2113, %2136, !dbg !344
  %2138 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !344
  %2139 = load i32, i32* %2138, align 4, !dbg !344
  %2140 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !344
  %2141 = load i32, i32* %2140, align 8, !dbg !344
  %2142 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !344
  %2143 = load i32, i32* %2142, align 4, !dbg !344
  %2144 = xor i32 %2141, %2143, !dbg !344
  %2145 = and i32 %2139, %2144, !dbg !344
  %2146 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !344
  %2147 = load i32, i32* %2146, align 4, !dbg !344
  %2148 = xor i32 %2145, %2147, !dbg !344
  %2149 = add i32 %2137, %2148, !dbg !344
  %2150 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 23, !dbg !344
  %2151 = load i32, i32* %2150, align 4, !dbg !344
  %2152 = add i32 %2149, %2151, !dbg !344
  %2153 = add i32 %2152, 1996064986, !dbg !344
  store i32 %2153, i32* %5, align 4, !dbg !344
  %2154 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !344
  %2155 = load i32, i32* %2154, align 4, !dbg !344
  %2156 = lshr i32 %2155, 2, !dbg !344
  %2157 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !344
  %2158 = load i32, i32* %2157, align 4, !dbg !344
  %2159 = shl i32 %2158, 30, !dbg !344
  %2160 = or i32 %2156, %2159, !dbg !344
  %2161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !344
  %2162 = load i32, i32* %2161, align 4, !dbg !344
  %2163 = lshr i32 %2162, 13, !dbg !344
  %2164 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !344
  %2165 = load i32, i32* %2164, align 4, !dbg !344
  %2166 = shl i32 %2165, 19, !dbg !344
  %2167 = or i32 %2163, %2166, !dbg !344
  %2168 = xor i32 %2160, %2167, !dbg !344
  %2169 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !344
  %2170 = load i32, i32* %2169, align 4, !dbg !344
  %2171 = lshr i32 %2170, 22, !dbg !344
  %2172 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !344
  %2173 = load i32, i32* %2172, align 4, !dbg !344
  %2174 = shl i32 %2173, 10, !dbg !344
  %2175 = or i32 %2171, %2174, !dbg !344
  %2176 = xor i32 %2168, %2175, !dbg !344
  %2177 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !344
  %2178 = load i32, i32* %2177, align 4, !dbg !344
  %2179 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !344
  %2180 = load i32, i32* %2179, align 8, !dbg !344
  %2181 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !344
  %2182 = load i32, i32* %2181, align 4, !dbg !344
  %2183 = or i32 %2180, %2182, !dbg !344
  %2184 = and i32 %2178, %2183, !dbg !344
  %2185 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !344
  %2186 = load i32, i32* %2185, align 8, !dbg !344
  %2187 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !344
  %2188 = load i32, i32* %2187, align 4, !dbg !344
  %2189 = and i32 %2186, %2188, !dbg !344
  %2190 = or i32 %2184, %2189, !dbg !344
  %2191 = add i32 %2176, %2190, !dbg !344
  store i32 %2191, i32* %6, align 4, !dbg !344
  %2192 = load i32, i32* %5, align 4, !dbg !344
  %2193 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !344
  %2194 = load i32, i32* %2193, align 16, !dbg !344
  %2195 = add i32 %2194, %2192, !dbg !344
  store i32 %2195, i32* %2193, align 16, !dbg !344
  %2196 = load i32, i32* %5, align 4, !dbg !344
  %2197 = load i32, i32* %6, align 4, !dbg !344
  %2198 = add i32 %2196, %2197, !dbg !344
  %2199 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !344
  store i32 %2198, i32* %2199, align 16, !dbg !344
  %2200 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !345
  %2201 = load i32, i32* %2200, align 4, !dbg !345
  %2202 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !345
  %2203 = load i32, i32* %2202, align 16, !dbg !345
  %2204 = lshr i32 %2203, 6, !dbg !345
  %2205 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !345
  %2206 = load i32, i32* %2205, align 16, !dbg !345
  %2207 = shl i32 %2206, 26, !dbg !345
  %2208 = or i32 %2204, %2207, !dbg !345
  %2209 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !345
  %2210 = load i32, i32* %2209, align 16, !dbg !345
  %2211 = lshr i32 %2210, 11, !dbg !345
  %2212 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !345
  %2213 = load i32, i32* %2212, align 16, !dbg !345
  %2214 = shl i32 %2213, 21, !dbg !345
  %2215 = or i32 %2211, %2214, !dbg !345
  %2216 = xor i32 %2208, %2215, !dbg !345
  %2217 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !345
  %2218 = load i32, i32* %2217, align 16, !dbg !345
  %2219 = lshr i32 %2218, 25, !dbg !345
  %2220 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !345
  %2221 = load i32, i32* %2220, align 16, !dbg !345
  %2222 = shl i32 %2221, 7, !dbg !345
  %2223 = or i32 %2219, %2222, !dbg !345
  %2224 = xor i32 %2216, %2223, !dbg !345
  %2225 = add i32 %2201, %2224, !dbg !345
  %2226 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !345
  %2227 = load i32, i32* %2226, align 16, !dbg !345
  %2228 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !345
  %2229 = load i32, i32* %2228, align 4, !dbg !345
  %2230 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !345
  %2231 = load i32, i32* %2230, align 8, !dbg !345
  %2232 = xor i32 %2229, %2231, !dbg !345
  %2233 = and i32 %2227, %2232, !dbg !345
  %2234 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !345
  %2235 = load i32, i32* %2234, align 8, !dbg !345
  %2236 = xor i32 %2233, %2235, !dbg !345
  %2237 = add i32 %2225, %2236, !dbg !345
  %2238 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 24, !dbg !345
  %2239 = load i32, i32* %2238, align 16, !dbg !345
  %2240 = add i32 %2237, %2239, !dbg !345
  %2241 = add i32 %2240, -1740746414, !dbg !345
  store i32 %2241, i32* %5, align 4, !dbg !345
  %2242 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !345
  %2243 = load i32, i32* %2242, align 16, !dbg !345
  %2244 = lshr i32 %2243, 2, !dbg !345
  %2245 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !345
  %2246 = load i32, i32* %2245, align 16, !dbg !345
  %2247 = shl i32 %2246, 30, !dbg !345
  %2248 = or i32 %2244, %2247, !dbg !345
  %2249 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !345
  %2250 = load i32, i32* %2249, align 16, !dbg !345
  %2251 = lshr i32 %2250, 13, !dbg !345
  %2252 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !345
  %2253 = load i32, i32* %2252, align 16, !dbg !345
  %2254 = shl i32 %2253, 19, !dbg !345
  %2255 = or i32 %2251, %2254, !dbg !345
  %2256 = xor i32 %2248, %2255, !dbg !345
  %2257 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !345
  %2258 = load i32, i32* %2257, align 16, !dbg !345
  %2259 = lshr i32 %2258, 22, !dbg !345
  %2260 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !345
  %2261 = load i32, i32* %2260, align 16, !dbg !345
  %2262 = shl i32 %2261, 10, !dbg !345
  %2263 = or i32 %2259, %2262, !dbg !345
  %2264 = xor i32 %2256, %2263, !dbg !345
  %2265 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !345
  %2266 = load i32, i32* %2265, align 16, !dbg !345
  %2267 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !345
  %2268 = load i32, i32* %2267, align 4, !dbg !345
  %2269 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !345
  %2270 = load i32, i32* %2269, align 8, !dbg !345
  %2271 = or i32 %2268, %2270, !dbg !345
  %2272 = and i32 %2266, %2271, !dbg !345
  %2273 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !345
  %2274 = load i32, i32* %2273, align 4, !dbg !345
  %2275 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !345
  %2276 = load i32, i32* %2275, align 8, !dbg !345
  %2277 = and i32 %2274, %2276, !dbg !345
  %2278 = or i32 %2272, %2277, !dbg !345
  %2279 = add i32 %2264, %2278, !dbg !345
  store i32 %2279, i32* %6, align 4, !dbg !345
  %2280 = load i32, i32* %5, align 4, !dbg !345
  %2281 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !345
  %2282 = load i32, i32* %2281, align 4, !dbg !345
  %2283 = add i32 %2282, %2280, !dbg !345
  store i32 %2283, i32* %2281, align 4, !dbg !345
  %2284 = load i32, i32* %5, align 4, !dbg !345
  %2285 = load i32, i32* %6, align 4, !dbg !345
  %2286 = add i32 %2284, %2285, !dbg !345
  %2287 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !345
  store i32 %2286, i32* %2287, align 4, !dbg !345
  %2288 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !346
  %2289 = load i32, i32* %2288, align 8, !dbg !346
  %2290 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !346
  %2291 = load i32, i32* %2290, align 4, !dbg !346
  %2292 = lshr i32 %2291, 6, !dbg !346
  %2293 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !346
  %2294 = load i32, i32* %2293, align 4, !dbg !346
  %2295 = shl i32 %2294, 26, !dbg !346
  %2296 = or i32 %2292, %2295, !dbg !346
  %2297 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !346
  %2298 = load i32, i32* %2297, align 4, !dbg !346
  %2299 = lshr i32 %2298, 11, !dbg !346
  %2300 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !346
  %2301 = load i32, i32* %2300, align 4, !dbg !346
  %2302 = shl i32 %2301, 21, !dbg !346
  %2303 = or i32 %2299, %2302, !dbg !346
  %2304 = xor i32 %2296, %2303, !dbg !346
  %2305 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !346
  %2306 = load i32, i32* %2305, align 4, !dbg !346
  %2307 = lshr i32 %2306, 25, !dbg !346
  %2308 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !346
  %2309 = load i32, i32* %2308, align 4, !dbg !346
  %2310 = shl i32 %2309, 7, !dbg !346
  %2311 = or i32 %2307, %2310, !dbg !346
  %2312 = xor i32 %2304, %2311, !dbg !346
  %2313 = add i32 %2289, %2312, !dbg !346
  %2314 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !346
  %2315 = load i32, i32* %2314, align 4, !dbg !346
  %2316 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !346
  %2317 = load i32, i32* %2316, align 16, !dbg !346
  %2318 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !346
  %2319 = load i32, i32* %2318, align 4, !dbg !346
  %2320 = xor i32 %2317, %2319, !dbg !346
  %2321 = and i32 %2315, %2320, !dbg !346
  %2322 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !346
  %2323 = load i32, i32* %2322, align 4, !dbg !346
  %2324 = xor i32 %2321, %2323, !dbg !346
  %2325 = add i32 %2313, %2324, !dbg !346
  %2326 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 25, !dbg !346
  %2327 = load i32, i32* %2326, align 4, !dbg !346
  %2328 = add i32 %2325, %2327, !dbg !346
  %2329 = add i32 %2328, -1473132947, !dbg !346
  store i32 %2329, i32* %5, align 4, !dbg !346
  %2330 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !346
  %2331 = load i32, i32* %2330, align 4, !dbg !346
  %2332 = lshr i32 %2331, 2, !dbg !346
  %2333 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !346
  %2334 = load i32, i32* %2333, align 4, !dbg !346
  %2335 = shl i32 %2334, 30, !dbg !346
  %2336 = or i32 %2332, %2335, !dbg !346
  %2337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !346
  %2338 = load i32, i32* %2337, align 4, !dbg !346
  %2339 = lshr i32 %2338, 13, !dbg !346
  %2340 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !346
  %2341 = load i32, i32* %2340, align 4, !dbg !346
  %2342 = shl i32 %2341, 19, !dbg !346
  %2343 = or i32 %2339, %2342, !dbg !346
  %2344 = xor i32 %2336, %2343, !dbg !346
  %2345 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !346
  %2346 = load i32, i32* %2345, align 4, !dbg !346
  %2347 = lshr i32 %2346, 22, !dbg !346
  %2348 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !346
  %2349 = load i32, i32* %2348, align 4, !dbg !346
  %2350 = shl i32 %2349, 10, !dbg !346
  %2351 = or i32 %2347, %2350, !dbg !346
  %2352 = xor i32 %2344, %2351, !dbg !346
  %2353 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !346
  %2354 = load i32, i32* %2353, align 4, !dbg !346
  %2355 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !346
  %2356 = load i32, i32* %2355, align 16, !dbg !346
  %2357 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !346
  %2358 = load i32, i32* %2357, align 4, !dbg !346
  %2359 = or i32 %2356, %2358, !dbg !346
  %2360 = and i32 %2354, %2359, !dbg !346
  %2361 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !346
  %2362 = load i32, i32* %2361, align 16, !dbg !346
  %2363 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !346
  %2364 = load i32, i32* %2363, align 4, !dbg !346
  %2365 = and i32 %2362, %2364, !dbg !346
  %2366 = or i32 %2360, %2365, !dbg !346
  %2367 = add i32 %2352, %2366, !dbg !346
  store i32 %2367, i32* %6, align 4, !dbg !346
  %2368 = load i32, i32* %5, align 4, !dbg !346
  %2369 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !346
  %2370 = load i32, i32* %2369, align 8, !dbg !346
  %2371 = add i32 %2370, %2368, !dbg !346
  store i32 %2371, i32* %2369, align 8, !dbg !346
  %2372 = load i32, i32* %5, align 4, !dbg !346
  %2373 = load i32, i32* %6, align 4, !dbg !346
  %2374 = add i32 %2372, %2373, !dbg !346
  %2375 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !346
  store i32 %2374, i32* %2375, align 8, !dbg !346
  %2376 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !347
  %2377 = load i32, i32* %2376, align 4, !dbg !347
  %2378 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !347
  %2379 = load i32, i32* %2378, align 8, !dbg !347
  %2380 = lshr i32 %2379, 6, !dbg !347
  %2381 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !347
  %2382 = load i32, i32* %2381, align 8, !dbg !347
  %2383 = shl i32 %2382, 26, !dbg !347
  %2384 = or i32 %2380, %2383, !dbg !347
  %2385 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !347
  %2386 = load i32, i32* %2385, align 8, !dbg !347
  %2387 = lshr i32 %2386, 11, !dbg !347
  %2388 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !347
  %2389 = load i32, i32* %2388, align 8, !dbg !347
  %2390 = shl i32 %2389, 21, !dbg !347
  %2391 = or i32 %2387, %2390, !dbg !347
  %2392 = xor i32 %2384, %2391, !dbg !347
  %2393 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !347
  %2394 = load i32, i32* %2393, align 8, !dbg !347
  %2395 = lshr i32 %2394, 25, !dbg !347
  %2396 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !347
  %2397 = load i32, i32* %2396, align 8, !dbg !347
  %2398 = shl i32 %2397, 7, !dbg !347
  %2399 = or i32 %2395, %2398, !dbg !347
  %2400 = xor i32 %2392, %2399, !dbg !347
  %2401 = add i32 %2377, %2400, !dbg !347
  %2402 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !347
  %2403 = load i32, i32* %2402, align 8, !dbg !347
  %2404 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !347
  %2405 = load i32, i32* %2404, align 4, !dbg !347
  %2406 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !347
  %2407 = load i32, i32* %2406, align 16, !dbg !347
  %2408 = xor i32 %2405, %2407, !dbg !347
  %2409 = and i32 %2403, %2408, !dbg !347
  %2410 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !347
  %2411 = load i32, i32* %2410, align 16, !dbg !347
  %2412 = xor i32 %2409, %2411, !dbg !347
  %2413 = add i32 %2401, %2412, !dbg !347
  %2414 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 26, !dbg !347
  %2415 = load i32, i32* %2414, align 8, !dbg !347
  %2416 = add i32 %2413, %2415, !dbg !347
  %2417 = add i32 %2416, -1341970488, !dbg !347
  store i32 %2417, i32* %5, align 4, !dbg !347
  %2418 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !347
  %2419 = load i32, i32* %2418, align 8, !dbg !347
  %2420 = lshr i32 %2419, 2, !dbg !347
  %2421 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !347
  %2422 = load i32, i32* %2421, align 8, !dbg !347
  %2423 = shl i32 %2422, 30, !dbg !347
  %2424 = or i32 %2420, %2423, !dbg !347
  %2425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !347
  %2426 = load i32, i32* %2425, align 8, !dbg !347
  %2427 = lshr i32 %2426, 13, !dbg !347
  %2428 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !347
  %2429 = load i32, i32* %2428, align 8, !dbg !347
  %2430 = shl i32 %2429, 19, !dbg !347
  %2431 = or i32 %2427, %2430, !dbg !347
  %2432 = xor i32 %2424, %2431, !dbg !347
  %2433 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !347
  %2434 = load i32, i32* %2433, align 8, !dbg !347
  %2435 = lshr i32 %2434, 22, !dbg !347
  %2436 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !347
  %2437 = load i32, i32* %2436, align 8, !dbg !347
  %2438 = shl i32 %2437, 10, !dbg !347
  %2439 = or i32 %2435, %2438, !dbg !347
  %2440 = xor i32 %2432, %2439, !dbg !347
  %2441 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !347
  %2442 = load i32, i32* %2441, align 8, !dbg !347
  %2443 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !347
  %2444 = load i32, i32* %2443, align 4, !dbg !347
  %2445 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !347
  %2446 = load i32, i32* %2445, align 16, !dbg !347
  %2447 = or i32 %2444, %2446, !dbg !347
  %2448 = and i32 %2442, %2447, !dbg !347
  %2449 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !347
  %2450 = load i32, i32* %2449, align 4, !dbg !347
  %2451 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !347
  %2452 = load i32, i32* %2451, align 16, !dbg !347
  %2453 = and i32 %2450, %2452, !dbg !347
  %2454 = or i32 %2448, %2453, !dbg !347
  %2455 = add i32 %2440, %2454, !dbg !347
  store i32 %2455, i32* %6, align 4, !dbg !347
  %2456 = load i32, i32* %5, align 4, !dbg !347
  %2457 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !347
  %2458 = load i32, i32* %2457, align 4, !dbg !347
  %2459 = add i32 %2458, %2456, !dbg !347
  store i32 %2459, i32* %2457, align 4, !dbg !347
  %2460 = load i32, i32* %5, align 4, !dbg !347
  %2461 = load i32, i32* %6, align 4, !dbg !347
  %2462 = add i32 %2460, %2461, !dbg !347
  %2463 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !347
  store i32 %2462, i32* %2463, align 4, !dbg !347
  %2464 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !348
  %2465 = load i32, i32* %2464, align 16, !dbg !348
  %2466 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !348
  %2467 = load i32, i32* %2466, align 4, !dbg !348
  %2468 = lshr i32 %2467, 6, !dbg !348
  %2469 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !348
  %2470 = load i32, i32* %2469, align 4, !dbg !348
  %2471 = shl i32 %2470, 26, !dbg !348
  %2472 = or i32 %2468, %2471, !dbg !348
  %2473 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !348
  %2474 = load i32, i32* %2473, align 4, !dbg !348
  %2475 = lshr i32 %2474, 11, !dbg !348
  %2476 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !348
  %2477 = load i32, i32* %2476, align 4, !dbg !348
  %2478 = shl i32 %2477, 21, !dbg !348
  %2479 = or i32 %2475, %2478, !dbg !348
  %2480 = xor i32 %2472, %2479, !dbg !348
  %2481 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !348
  %2482 = load i32, i32* %2481, align 4, !dbg !348
  %2483 = lshr i32 %2482, 25, !dbg !348
  %2484 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !348
  %2485 = load i32, i32* %2484, align 4, !dbg !348
  %2486 = shl i32 %2485, 7, !dbg !348
  %2487 = or i32 %2483, %2486, !dbg !348
  %2488 = xor i32 %2480, %2487, !dbg !348
  %2489 = add i32 %2465, %2488, !dbg !348
  %2490 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !348
  %2491 = load i32, i32* %2490, align 4, !dbg !348
  %2492 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !348
  %2493 = load i32, i32* %2492, align 8, !dbg !348
  %2494 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !348
  %2495 = load i32, i32* %2494, align 4, !dbg !348
  %2496 = xor i32 %2493, %2495, !dbg !348
  %2497 = and i32 %2491, %2496, !dbg !348
  %2498 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !348
  %2499 = load i32, i32* %2498, align 4, !dbg !348
  %2500 = xor i32 %2497, %2499, !dbg !348
  %2501 = add i32 %2489, %2500, !dbg !348
  %2502 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 27, !dbg !348
  %2503 = load i32, i32* %2502, align 4, !dbg !348
  %2504 = add i32 %2501, %2503, !dbg !348
  %2505 = add i32 %2504, -1084653625, !dbg !348
  store i32 %2505, i32* %5, align 4, !dbg !348
  %2506 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !348
  %2507 = load i32, i32* %2506, align 4, !dbg !348
  %2508 = lshr i32 %2507, 2, !dbg !348
  %2509 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !348
  %2510 = load i32, i32* %2509, align 4, !dbg !348
  %2511 = shl i32 %2510, 30, !dbg !348
  %2512 = or i32 %2508, %2511, !dbg !348
  %2513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !348
  %2514 = load i32, i32* %2513, align 4, !dbg !348
  %2515 = lshr i32 %2514, 13, !dbg !348
  %2516 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !348
  %2517 = load i32, i32* %2516, align 4, !dbg !348
  %2518 = shl i32 %2517, 19, !dbg !348
  %2519 = or i32 %2515, %2518, !dbg !348
  %2520 = xor i32 %2512, %2519, !dbg !348
  %2521 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !348
  %2522 = load i32, i32* %2521, align 4, !dbg !348
  %2523 = lshr i32 %2522, 22, !dbg !348
  %2524 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !348
  %2525 = load i32, i32* %2524, align 4, !dbg !348
  %2526 = shl i32 %2525, 10, !dbg !348
  %2527 = or i32 %2523, %2526, !dbg !348
  %2528 = xor i32 %2520, %2527, !dbg !348
  %2529 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !348
  %2530 = load i32, i32* %2529, align 4, !dbg !348
  %2531 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !348
  %2532 = load i32, i32* %2531, align 8, !dbg !348
  %2533 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !348
  %2534 = load i32, i32* %2533, align 4, !dbg !348
  %2535 = or i32 %2532, %2534, !dbg !348
  %2536 = and i32 %2530, %2535, !dbg !348
  %2537 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !348
  %2538 = load i32, i32* %2537, align 8, !dbg !348
  %2539 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !348
  %2540 = load i32, i32* %2539, align 4, !dbg !348
  %2541 = and i32 %2538, %2540, !dbg !348
  %2542 = or i32 %2536, %2541, !dbg !348
  %2543 = add i32 %2528, %2542, !dbg !348
  store i32 %2543, i32* %6, align 4, !dbg !348
  %2544 = load i32, i32* %5, align 4, !dbg !348
  %2545 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !348
  %2546 = load i32, i32* %2545, align 16, !dbg !348
  %2547 = add i32 %2546, %2544, !dbg !348
  store i32 %2547, i32* %2545, align 16, !dbg !348
  %2548 = load i32, i32* %5, align 4, !dbg !348
  %2549 = load i32, i32* %6, align 4, !dbg !348
  %2550 = add i32 %2548, %2549, !dbg !348
  %2551 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !348
  store i32 %2550, i32* %2551, align 16, !dbg !348
  %2552 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !349
  %2553 = load i32, i32* %2552, align 4, !dbg !349
  %2554 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !349
  %2555 = load i32, i32* %2554, align 16, !dbg !349
  %2556 = lshr i32 %2555, 6, !dbg !349
  %2557 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !349
  %2558 = load i32, i32* %2557, align 16, !dbg !349
  %2559 = shl i32 %2558, 26, !dbg !349
  %2560 = or i32 %2556, %2559, !dbg !349
  %2561 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !349
  %2562 = load i32, i32* %2561, align 16, !dbg !349
  %2563 = lshr i32 %2562, 11, !dbg !349
  %2564 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !349
  %2565 = load i32, i32* %2564, align 16, !dbg !349
  %2566 = shl i32 %2565, 21, !dbg !349
  %2567 = or i32 %2563, %2566, !dbg !349
  %2568 = xor i32 %2560, %2567, !dbg !349
  %2569 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !349
  %2570 = load i32, i32* %2569, align 16, !dbg !349
  %2571 = lshr i32 %2570, 25, !dbg !349
  %2572 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !349
  %2573 = load i32, i32* %2572, align 16, !dbg !349
  %2574 = shl i32 %2573, 7, !dbg !349
  %2575 = or i32 %2571, %2574, !dbg !349
  %2576 = xor i32 %2568, %2575, !dbg !349
  %2577 = add i32 %2553, %2576, !dbg !349
  %2578 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !349
  %2579 = load i32, i32* %2578, align 16, !dbg !349
  %2580 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !349
  %2581 = load i32, i32* %2580, align 4, !dbg !349
  %2582 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !349
  %2583 = load i32, i32* %2582, align 8, !dbg !349
  %2584 = xor i32 %2581, %2583, !dbg !349
  %2585 = and i32 %2579, %2584, !dbg !349
  %2586 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !349
  %2587 = load i32, i32* %2586, align 8, !dbg !349
  %2588 = xor i32 %2585, %2587, !dbg !349
  %2589 = add i32 %2577, %2588, !dbg !349
  %2590 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 28, !dbg !349
  %2591 = load i32, i32* %2590, align 16, !dbg !349
  %2592 = add i32 %2589, %2591, !dbg !349
  %2593 = add i32 %2592, -958395405, !dbg !349
  store i32 %2593, i32* %5, align 4, !dbg !349
  %2594 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !349
  %2595 = load i32, i32* %2594, align 16, !dbg !349
  %2596 = lshr i32 %2595, 2, !dbg !349
  %2597 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !349
  %2598 = load i32, i32* %2597, align 16, !dbg !349
  %2599 = shl i32 %2598, 30, !dbg !349
  %2600 = or i32 %2596, %2599, !dbg !349
  %2601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !349
  %2602 = load i32, i32* %2601, align 16, !dbg !349
  %2603 = lshr i32 %2602, 13, !dbg !349
  %2604 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !349
  %2605 = load i32, i32* %2604, align 16, !dbg !349
  %2606 = shl i32 %2605, 19, !dbg !349
  %2607 = or i32 %2603, %2606, !dbg !349
  %2608 = xor i32 %2600, %2607, !dbg !349
  %2609 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !349
  %2610 = load i32, i32* %2609, align 16, !dbg !349
  %2611 = lshr i32 %2610, 22, !dbg !349
  %2612 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !349
  %2613 = load i32, i32* %2612, align 16, !dbg !349
  %2614 = shl i32 %2613, 10, !dbg !349
  %2615 = or i32 %2611, %2614, !dbg !349
  %2616 = xor i32 %2608, %2615, !dbg !349
  %2617 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !349
  %2618 = load i32, i32* %2617, align 16, !dbg !349
  %2619 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !349
  %2620 = load i32, i32* %2619, align 4, !dbg !349
  %2621 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !349
  %2622 = load i32, i32* %2621, align 8, !dbg !349
  %2623 = or i32 %2620, %2622, !dbg !349
  %2624 = and i32 %2618, %2623, !dbg !349
  %2625 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !349
  %2626 = load i32, i32* %2625, align 4, !dbg !349
  %2627 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !349
  %2628 = load i32, i32* %2627, align 8, !dbg !349
  %2629 = and i32 %2626, %2628, !dbg !349
  %2630 = or i32 %2624, %2629, !dbg !349
  %2631 = add i32 %2616, %2630, !dbg !349
  store i32 %2631, i32* %6, align 4, !dbg !349
  %2632 = load i32, i32* %5, align 4, !dbg !349
  %2633 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !349
  %2634 = load i32, i32* %2633, align 4, !dbg !349
  %2635 = add i32 %2634, %2632, !dbg !349
  store i32 %2635, i32* %2633, align 4, !dbg !349
  %2636 = load i32, i32* %5, align 4, !dbg !349
  %2637 = load i32, i32* %6, align 4, !dbg !349
  %2638 = add i32 %2636, %2637, !dbg !349
  %2639 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !349
  store i32 %2638, i32* %2639, align 4, !dbg !349
  %2640 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !350
  %2641 = load i32, i32* %2640, align 8, !dbg !350
  %2642 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !350
  %2643 = load i32, i32* %2642, align 4, !dbg !350
  %2644 = lshr i32 %2643, 6, !dbg !350
  %2645 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !350
  %2646 = load i32, i32* %2645, align 4, !dbg !350
  %2647 = shl i32 %2646, 26, !dbg !350
  %2648 = or i32 %2644, %2647, !dbg !350
  %2649 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !350
  %2650 = load i32, i32* %2649, align 4, !dbg !350
  %2651 = lshr i32 %2650, 11, !dbg !350
  %2652 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !350
  %2653 = load i32, i32* %2652, align 4, !dbg !350
  %2654 = shl i32 %2653, 21, !dbg !350
  %2655 = or i32 %2651, %2654, !dbg !350
  %2656 = xor i32 %2648, %2655, !dbg !350
  %2657 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !350
  %2658 = load i32, i32* %2657, align 4, !dbg !350
  %2659 = lshr i32 %2658, 25, !dbg !350
  %2660 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !350
  %2661 = load i32, i32* %2660, align 4, !dbg !350
  %2662 = shl i32 %2661, 7, !dbg !350
  %2663 = or i32 %2659, %2662, !dbg !350
  %2664 = xor i32 %2656, %2663, !dbg !350
  %2665 = add i32 %2641, %2664, !dbg !350
  %2666 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !350
  %2667 = load i32, i32* %2666, align 4, !dbg !350
  %2668 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !350
  %2669 = load i32, i32* %2668, align 16, !dbg !350
  %2670 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !350
  %2671 = load i32, i32* %2670, align 4, !dbg !350
  %2672 = xor i32 %2669, %2671, !dbg !350
  %2673 = and i32 %2667, %2672, !dbg !350
  %2674 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !350
  %2675 = load i32, i32* %2674, align 4, !dbg !350
  %2676 = xor i32 %2673, %2675, !dbg !350
  %2677 = add i32 %2665, %2676, !dbg !350
  %2678 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 29, !dbg !350
  %2679 = load i32, i32* %2678, align 4, !dbg !350
  %2680 = add i32 %2677, %2679, !dbg !350
  %2681 = add i32 %2680, -710438585, !dbg !350
  store i32 %2681, i32* %5, align 4, !dbg !350
  %2682 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !350
  %2683 = load i32, i32* %2682, align 4, !dbg !350
  %2684 = lshr i32 %2683, 2, !dbg !350
  %2685 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !350
  %2686 = load i32, i32* %2685, align 4, !dbg !350
  %2687 = shl i32 %2686, 30, !dbg !350
  %2688 = or i32 %2684, %2687, !dbg !350
  %2689 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !350
  %2690 = load i32, i32* %2689, align 4, !dbg !350
  %2691 = lshr i32 %2690, 13, !dbg !350
  %2692 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !350
  %2693 = load i32, i32* %2692, align 4, !dbg !350
  %2694 = shl i32 %2693, 19, !dbg !350
  %2695 = or i32 %2691, %2694, !dbg !350
  %2696 = xor i32 %2688, %2695, !dbg !350
  %2697 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !350
  %2698 = load i32, i32* %2697, align 4, !dbg !350
  %2699 = lshr i32 %2698, 22, !dbg !350
  %2700 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !350
  %2701 = load i32, i32* %2700, align 4, !dbg !350
  %2702 = shl i32 %2701, 10, !dbg !350
  %2703 = or i32 %2699, %2702, !dbg !350
  %2704 = xor i32 %2696, %2703, !dbg !350
  %2705 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !350
  %2706 = load i32, i32* %2705, align 4, !dbg !350
  %2707 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !350
  %2708 = load i32, i32* %2707, align 16, !dbg !350
  %2709 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !350
  %2710 = load i32, i32* %2709, align 4, !dbg !350
  %2711 = or i32 %2708, %2710, !dbg !350
  %2712 = and i32 %2706, %2711, !dbg !350
  %2713 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !350
  %2714 = load i32, i32* %2713, align 16, !dbg !350
  %2715 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !350
  %2716 = load i32, i32* %2715, align 4, !dbg !350
  %2717 = and i32 %2714, %2716, !dbg !350
  %2718 = or i32 %2712, %2717, !dbg !350
  %2719 = add i32 %2704, %2718, !dbg !350
  store i32 %2719, i32* %6, align 4, !dbg !350
  %2720 = load i32, i32* %5, align 4, !dbg !350
  %2721 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !350
  %2722 = load i32, i32* %2721, align 8, !dbg !350
  %2723 = add i32 %2722, %2720, !dbg !350
  store i32 %2723, i32* %2721, align 8, !dbg !350
  %2724 = load i32, i32* %5, align 4, !dbg !350
  %2725 = load i32, i32* %6, align 4, !dbg !350
  %2726 = add i32 %2724, %2725, !dbg !350
  %2727 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !350
  store i32 %2726, i32* %2727, align 8, !dbg !350
  %2728 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !351
  %2729 = load i32, i32* %2728, align 4, !dbg !351
  %2730 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !351
  %2731 = load i32, i32* %2730, align 8, !dbg !351
  %2732 = lshr i32 %2731, 6, !dbg !351
  %2733 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !351
  %2734 = load i32, i32* %2733, align 8, !dbg !351
  %2735 = shl i32 %2734, 26, !dbg !351
  %2736 = or i32 %2732, %2735, !dbg !351
  %2737 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !351
  %2738 = load i32, i32* %2737, align 8, !dbg !351
  %2739 = lshr i32 %2738, 11, !dbg !351
  %2740 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !351
  %2741 = load i32, i32* %2740, align 8, !dbg !351
  %2742 = shl i32 %2741, 21, !dbg !351
  %2743 = or i32 %2739, %2742, !dbg !351
  %2744 = xor i32 %2736, %2743, !dbg !351
  %2745 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !351
  %2746 = load i32, i32* %2745, align 8, !dbg !351
  %2747 = lshr i32 %2746, 25, !dbg !351
  %2748 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !351
  %2749 = load i32, i32* %2748, align 8, !dbg !351
  %2750 = shl i32 %2749, 7, !dbg !351
  %2751 = or i32 %2747, %2750, !dbg !351
  %2752 = xor i32 %2744, %2751, !dbg !351
  %2753 = add i32 %2729, %2752, !dbg !351
  %2754 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !351
  %2755 = load i32, i32* %2754, align 8, !dbg !351
  %2756 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !351
  %2757 = load i32, i32* %2756, align 4, !dbg !351
  %2758 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !351
  %2759 = load i32, i32* %2758, align 16, !dbg !351
  %2760 = xor i32 %2757, %2759, !dbg !351
  %2761 = and i32 %2755, %2760, !dbg !351
  %2762 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !351
  %2763 = load i32, i32* %2762, align 16, !dbg !351
  %2764 = xor i32 %2761, %2763, !dbg !351
  %2765 = add i32 %2753, %2764, !dbg !351
  %2766 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 30, !dbg !351
  %2767 = load i32, i32* %2766, align 8, !dbg !351
  %2768 = add i32 %2765, %2767, !dbg !351
  %2769 = add i32 %2768, 113926993, !dbg !351
  store i32 %2769, i32* %5, align 4, !dbg !351
  %2770 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !351
  %2771 = load i32, i32* %2770, align 8, !dbg !351
  %2772 = lshr i32 %2771, 2, !dbg !351
  %2773 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !351
  %2774 = load i32, i32* %2773, align 8, !dbg !351
  %2775 = shl i32 %2774, 30, !dbg !351
  %2776 = or i32 %2772, %2775, !dbg !351
  %2777 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !351
  %2778 = load i32, i32* %2777, align 8, !dbg !351
  %2779 = lshr i32 %2778, 13, !dbg !351
  %2780 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !351
  %2781 = load i32, i32* %2780, align 8, !dbg !351
  %2782 = shl i32 %2781, 19, !dbg !351
  %2783 = or i32 %2779, %2782, !dbg !351
  %2784 = xor i32 %2776, %2783, !dbg !351
  %2785 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !351
  %2786 = load i32, i32* %2785, align 8, !dbg !351
  %2787 = lshr i32 %2786, 22, !dbg !351
  %2788 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !351
  %2789 = load i32, i32* %2788, align 8, !dbg !351
  %2790 = shl i32 %2789, 10, !dbg !351
  %2791 = or i32 %2787, %2790, !dbg !351
  %2792 = xor i32 %2784, %2791, !dbg !351
  %2793 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !351
  %2794 = load i32, i32* %2793, align 8, !dbg !351
  %2795 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !351
  %2796 = load i32, i32* %2795, align 4, !dbg !351
  %2797 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !351
  %2798 = load i32, i32* %2797, align 16, !dbg !351
  %2799 = or i32 %2796, %2798, !dbg !351
  %2800 = and i32 %2794, %2799, !dbg !351
  %2801 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !351
  %2802 = load i32, i32* %2801, align 4, !dbg !351
  %2803 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !351
  %2804 = load i32, i32* %2803, align 16, !dbg !351
  %2805 = and i32 %2802, %2804, !dbg !351
  %2806 = or i32 %2800, %2805, !dbg !351
  %2807 = add i32 %2792, %2806, !dbg !351
  store i32 %2807, i32* %6, align 4, !dbg !351
  %2808 = load i32, i32* %5, align 4, !dbg !351
  %2809 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !351
  %2810 = load i32, i32* %2809, align 4, !dbg !351
  %2811 = add i32 %2810, %2808, !dbg !351
  store i32 %2811, i32* %2809, align 4, !dbg !351
  %2812 = load i32, i32* %5, align 4, !dbg !351
  %2813 = load i32, i32* %6, align 4, !dbg !351
  %2814 = add i32 %2812, %2813, !dbg !351
  %2815 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !351
  store i32 %2814, i32* %2815, align 4, !dbg !351
  %2816 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !352
  %2817 = load i32, i32* %2816, align 16, !dbg !352
  %2818 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !352
  %2819 = load i32, i32* %2818, align 4, !dbg !352
  %2820 = lshr i32 %2819, 6, !dbg !352
  %2821 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !352
  %2822 = load i32, i32* %2821, align 4, !dbg !352
  %2823 = shl i32 %2822, 26, !dbg !352
  %2824 = or i32 %2820, %2823, !dbg !352
  %2825 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !352
  %2826 = load i32, i32* %2825, align 4, !dbg !352
  %2827 = lshr i32 %2826, 11, !dbg !352
  %2828 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !352
  %2829 = load i32, i32* %2828, align 4, !dbg !352
  %2830 = shl i32 %2829, 21, !dbg !352
  %2831 = or i32 %2827, %2830, !dbg !352
  %2832 = xor i32 %2824, %2831, !dbg !352
  %2833 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !352
  %2834 = load i32, i32* %2833, align 4, !dbg !352
  %2835 = lshr i32 %2834, 25, !dbg !352
  %2836 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !352
  %2837 = load i32, i32* %2836, align 4, !dbg !352
  %2838 = shl i32 %2837, 7, !dbg !352
  %2839 = or i32 %2835, %2838, !dbg !352
  %2840 = xor i32 %2832, %2839, !dbg !352
  %2841 = add i32 %2817, %2840, !dbg !352
  %2842 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !352
  %2843 = load i32, i32* %2842, align 4, !dbg !352
  %2844 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !352
  %2845 = load i32, i32* %2844, align 8, !dbg !352
  %2846 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !352
  %2847 = load i32, i32* %2846, align 4, !dbg !352
  %2848 = xor i32 %2845, %2847, !dbg !352
  %2849 = and i32 %2843, %2848, !dbg !352
  %2850 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !352
  %2851 = load i32, i32* %2850, align 4, !dbg !352
  %2852 = xor i32 %2849, %2851, !dbg !352
  %2853 = add i32 %2841, %2852, !dbg !352
  %2854 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 31, !dbg !352
  %2855 = load i32, i32* %2854, align 4, !dbg !352
  %2856 = add i32 %2853, %2855, !dbg !352
  %2857 = add i32 %2856, 338241895, !dbg !352
  store i32 %2857, i32* %5, align 4, !dbg !352
  %2858 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !352
  %2859 = load i32, i32* %2858, align 4, !dbg !352
  %2860 = lshr i32 %2859, 2, !dbg !352
  %2861 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !352
  %2862 = load i32, i32* %2861, align 4, !dbg !352
  %2863 = shl i32 %2862, 30, !dbg !352
  %2864 = or i32 %2860, %2863, !dbg !352
  %2865 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !352
  %2866 = load i32, i32* %2865, align 4, !dbg !352
  %2867 = lshr i32 %2866, 13, !dbg !352
  %2868 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !352
  %2869 = load i32, i32* %2868, align 4, !dbg !352
  %2870 = shl i32 %2869, 19, !dbg !352
  %2871 = or i32 %2867, %2870, !dbg !352
  %2872 = xor i32 %2864, %2871, !dbg !352
  %2873 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !352
  %2874 = load i32, i32* %2873, align 4, !dbg !352
  %2875 = lshr i32 %2874, 22, !dbg !352
  %2876 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !352
  %2877 = load i32, i32* %2876, align 4, !dbg !352
  %2878 = shl i32 %2877, 10, !dbg !352
  %2879 = or i32 %2875, %2878, !dbg !352
  %2880 = xor i32 %2872, %2879, !dbg !352
  %2881 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !352
  %2882 = load i32, i32* %2881, align 4, !dbg !352
  %2883 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !352
  %2884 = load i32, i32* %2883, align 8, !dbg !352
  %2885 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !352
  %2886 = load i32, i32* %2885, align 4, !dbg !352
  %2887 = or i32 %2884, %2886, !dbg !352
  %2888 = and i32 %2882, %2887, !dbg !352
  %2889 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !352
  %2890 = load i32, i32* %2889, align 8, !dbg !352
  %2891 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !352
  %2892 = load i32, i32* %2891, align 4, !dbg !352
  %2893 = and i32 %2890, %2892, !dbg !352
  %2894 = or i32 %2888, %2893, !dbg !352
  %2895 = add i32 %2880, %2894, !dbg !352
  store i32 %2895, i32* %6, align 4, !dbg !352
  %2896 = load i32, i32* %5, align 4, !dbg !352
  %2897 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !352
  %2898 = load i32, i32* %2897, align 16, !dbg !352
  %2899 = add i32 %2898, %2896, !dbg !352
  store i32 %2899, i32* %2897, align 16, !dbg !352
  %2900 = load i32, i32* %5, align 4, !dbg !352
  %2901 = load i32, i32* %6, align 4, !dbg !352
  %2902 = add i32 %2900, %2901, !dbg !352
  %2903 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !352
  store i32 %2902, i32* %2903, align 16, !dbg !352
  %2904 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !353
  %2905 = load i32, i32* %2904, align 4, !dbg !353
  %2906 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !353
  %2907 = load i32, i32* %2906, align 16, !dbg !353
  %2908 = lshr i32 %2907, 6, !dbg !353
  %2909 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !353
  %2910 = load i32, i32* %2909, align 16, !dbg !353
  %2911 = shl i32 %2910, 26, !dbg !353
  %2912 = or i32 %2908, %2911, !dbg !353
  %2913 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !353
  %2914 = load i32, i32* %2913, align 16, !dbg !353
  %2915 = lshr i32 %2914, 11, !dbg !353
  %2916 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !353
  %2917 = load i32, i32* %2916, align 16, !dbg !353
  %2918 = shl i32 %2917, 21, !dbg !353
  %2919 = or i32 %2915, %2918, !dbg !353
  %2920 = xor i32 %2912, %2919, !dbg !353
  %2921 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !353
  %2922 = load i32, i32* %2921, align 16, !dbg !353
  %2923 = lshr i32 %2922, 25, !dbg !353
  %2924 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !353
  %2925 = load i32, i32* %2924, align 16, !dbg !353
  %2926 = shl i32 %2925, 7, !dbg !353
  %2927 = or i32 %2923, %2926, !dbg !353
  %2928 = xor i32 %2920, %2927, !dbg !353
  %2929 = add i32 %2905, %2928, !dbg !353
  %2930 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !353
  %2931 = load i32, i32* %2930, align 16, !dbg !353
  %2932 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !353
  %2933 = load i32, i32* %2932, align 4, !dbg !353
  %2934 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !353
  %2935 = load i32, i32* %2934, align 8, !dbg !353
  %2936 = xor i32 %2933, %2935, !dbg !353
  %2937 = and i32 %2931, %2936, !dbg !353
  %2938 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !353
  %2939 = load i32, i32* %2938, align 8, !dbg !353
  %2940 = xor i32 %2937, %2939, !dbg !353
  %2941 = add i32 %2929, %2940, !dbg !353
  %2942 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 32, !dbg !353
  %2943 = load i32, i32* %2942, align 16, !dbg !353
  %2944 = add i32 %2941, %2943, !dbg !353
  %2945 = add i32 %2944, 666307205, !dbg !353
  store i32 %2945, i32* %5, align 4, !dbg !353
  %2946 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !353
  %2947 = load i32, i32* %2946, align 16, !dbg !353
  %2948 = lshr i32 %2947, 2, !dbg !353
  %2949 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !353
  %2950 = load i32, i32* %2949, align 16, !dbg !353
  %2951 = shl i32 %2950, 30, !dbg !353
  %2952 = or i32 %2948, %2951, !dbg !353
  %2953 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !353
  %2954 = load i32, i32* %2953, align 16, !dbg !353
  %2955 = lshr i32 %2954, 13, !dbg !353
  %2956 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !353
  %2957 = load i32, i32* %2956, align 16, !dbg !353
  %2958 = shl i32 %2957, 19, !dbg !353
  %2959 = or i32 %2955, %2958, !dbg !353
  %2960 = xor i32 %2952, %2959, !dbg !353
  %2961 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !353
  %2962 = load i32, i32* %2961, align 16, !dbg !353
  %2963 = lshr i32 %2962, 22, !dbg !353
  %2964 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !353
  %2965 = load i32, i32* %2964, align 16, !dbg !353
  %2966 = shl i32 %2965, 10, !dbg !353
  %2967 = or i32 %2963, %2966, !dbg !353
  %2968 = xor i32 %2960, %2967, !dbg !353
  %2969 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !353
  %2970 = load i32, i32* %2969, align 16, !dbg !353
  %2971 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !353
  %2972 = load i32, i32* %2971, align 4, !dbg !353
  %2973 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !353
  %2974 = load i32, i32* %2973, align 8, !dbg !353
  %2975 = or i32 %2972, %2974, !dbg !353
  %2976 = and i32 %2970, %2975, !dbg !353
  %2977 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !353
  %2978 = load i32, i32* %2977, align 4, !dbg !353
  %2979 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !353
  %2980 = load i32, i32* %2979, align 8, !dbg !353
  %2981 = and i32 %2978, %2980, !dbg !353
  %2982 = or i32 %2976, %2981, !dbg !353
  %2983 = add i32 %2968, %2982, !dbg !353
  store i32 %2983, i32* %6, align 4, !dbg !353
  %2984 = load i32, i32* %5, align 4, !dbg !353
  %2985 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !353
  %2986 = load i32, i32* %2985, align 4, !dbg !353
  %2987 = add i32 %2986, %2984, !dbg !353
  store i32 %2987, i32* %2985, align 4, !dbg !353
  %2988 = load i32, i32* %5, align 4, !dbg !353
  %2989 = load i32, i32* %6, align 4, !dbg !353
  %2990 = add i32 %2988, %2989, !dbg !353
  %2991 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !353
  store i32 %2990, i32* %2991, align 4, !dbg !353
  %2992 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !354
  %2993 = load i32, i32* %2992, align 8, !dbg !354
  %2994 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !354
  %2995 = load i32, i32* %2994, align 4, !dbg !354
  %2996 = lshr i32 %2995, 6, !dbg !354
  %2997 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !354
  %2998 = load i32, i32* %2997, align 4, !dbg !354
  %2999 = shl i32 %2998, 26, !dbg !354
  %3000 = or i32 %2996, %2999, !dbg !354
  %3001 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !354
  %3002 = load i32, i32* %3001, align 4, !dbg !354
  %3003 = lshr i32 %3002, 11, !dbg !354
  %3004 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !354
  %3005 = load i32, i32* %3004, align 4, !dbg !354
  %3006 = shl i32 %3005, 21, !dbg !354
  %3007 = or i32 %3003, %3006, !dbg !354
  %3008 = xor i32 %3000, %3007, !dbg !354
  %3009 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !354
  %3010 = load i32, i32* %3009, align 4, !dbg !354
  %3011 = lshr i32 %3010, 25, !dbg !354
  %3012 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !354
  %3013 = load i32, i32* %3012, align 4, !dbg !354
  %3014 = shl i32 %3013, 7, !dbg !354
  %3015 = or i32 %3011, %3014, !dbg !354
  %3016 = xor i32 %3008, %3015, !dbg !354
  %3017 = add i32 %2993, %3016, !dbg !354
  %3018 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !354
  %3019 = load i32, i32* %3018, align 4, !dbg !354
  %3020 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !354
  %3021 = load i32, i32* %3020, align 16, !dbg !354
  %3022 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !354
  %3023 = load i32, i32* %3022, align 4, !dbg !354
  %3024 = xor i32 %3021, %3023, !dbg !354
  %3025 = and i32 %3019, %3024, !dbg !354
  %3026 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !354
  %3027 = load i32, i32* %3026, align 4, !dbg !354
  %3028 = xor i32 %3025, %3027, !dbg !354
  %3029 = add i32 %3017, %3028, !dbg !354
  %3030 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 33, !dbg !354
  %3031 = load i32, i32* %3030, align 4, !dbg !354
  %3032 = add i32 %3029, %3031, !dbg !354
  %3033 = add i32 %3032, 773529912, !dbg !354
  store i32 %3033, i32* %5, align 4, !dbg !354
  %3034 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !354
  %3035 = load i32, i32* %3034, align 4, !dbg !354
  %3036 = lshr i32 %3035, 2, !dbg !354
  %3037 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !354
  %3038 = load i32, i32* %3037, align 4, !dbg !354
  %3039 = shl i32 %3038, 30, !dbg !354
  %3040 = or i32 %3036, %3039, !dbg !354
  %3041 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !354
  %3042 = load i32, i32* %3041, align 4, !dbg !354
  %3043 = lshr i32 %3042, 13, !dbg !354
  %3044 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !354
  %3045 = load i32, i32* %3044, align 4, !dbg !354
  %3046 = shl i32 %3045, 19, !dbg !354
  %3047 = or i32 %3043, %3046, !dbg !354
  %3048 = xor i32 %3040, %3047, !dbg !354
  %3049 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !354
  %3050 = load i32, i32* %3049, align 4, !dbg !354
  %3051 = lshr i32 %3050, 22, !dbg !354
  %3052 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !354
  %3053 = load i32, i32* %3052, align 4, !dbg !354
  %3054 = shl i32 %3053, 10, !dbg !354
  %3055 = or i32 %3051, %3054, !dbg !354
  %3056 = xor i32 %3048, %3055, !dbg !354
  %3057 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !354
  %3058 = load i32, i32* %3057, align 4, !dbg !354
  %3059 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !354
  %3060 = load i32, i32* %3059, align 16, !dbg !354
  %3061 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !354
  %3062 = load i32, i32* %3061, align 4, !dbg !354
  %3063 = or i32 %3060, %3062, !dbg !354
  %3064 = and i32 %3058, %3063, !dbg !354
  %3065 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !354
  %3066 = load i32, i32* %3065, align 16, !dbg !354
  %3067 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !354
  %3068 = load i32, i32* %3067, align 4, !dbg !354
  %3069 = and i32 %3066, %3068, !dbg !354
  %3070 = or i32 %3064, %3069, !dbg !354
  %3071 = add i32 %3056, %3070, !dbg !354
  store i32 %3071, i32* %6, align 4, !dbg !354
  %3072 = load i32, i32* %5, align 4, !dbg !354
  %3073 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !354
  %3074 = load i32, i32* %3073, align 8, !dbg !354
  %3075 = add i32 %3074, %3072, !dbg !354
  store i32 %3075, i32* %3073, align 8, !dbg !354
  %3076 = load i32, i32* %5, align 4, !dbg !354
  %3077 = load i32, i32* %6, align 4, !dbg !354
  %3078 = add i32 %3076, %3077, !dbg !354
  %3079 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !354
  store i32 %3078, i32* %3079, align 8, !dbg !354
  %3080 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !355
  %3081 = load i32, i32* %3080, align 4, !dbg !355
  %3082 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !355
  %3083 = load i32, i32* %3082, align 8, !dbg !355
  %3084 = lshr i32 %3083, 6, !dbg !355
  %3085 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !355
  %3086 = load i32, i32* %3085, align 8, !dbg !355
  %3087 = shl i32 %3086, 26, !dbg !355
  %3088 = or i32 %3084, %3087, !dbg !355
  %3089 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !355
  %3090 = load i32, i32* %3089, align 8, !dbg !355
  %3091 = lshr i32 %3090, 11, !dbg !355
  %3092 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !355
  %3093 = load i32, i32* %3092, align 8, !dbg !355
  %3094 = shl i32 %3093, 21, !dbg !355
  %3095 = or i32 %3091, %3094, !dbg !355
  %3096 = xor i32 %3088, %3095, !dbg !355
  %3097 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !355
  %3098 = load i32, i32* %3097, align 8, !dbg !355
  %3099 = lshr i32 %3098, 25, !dbg !355
  %3100 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !355
  %3101 = load i32, i32* %3100, align 8, !dbg !355
  %3102 = shl i32 %3101, 7, !dbg !355
  %3103 = or i32 %3099, %3102, !dbg !355
  %3104 = xor i32 %3096, %3103, !dbg !355
  %3105 = add i32 %3081, %3104, !dbg !355
  %3106 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !355
  %3107 = load i32, i32* %3106, align 8, !dbg !355
  %3108 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !355
  %3109 = load i32, i32* %3108, align 4, !dbg !355
  %3110 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !355
  %3111 = load i32, i32* %3110, align 16, !dbg !355
  %3112 = xor i32 %3109, %3111, !dbg !355
  %3113 = and i32 %3107, %3112, !dbg !355
  %3114 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !355
  %3115 = load i32, i32* %3114, align 16, !dbg !355
  %3116 = xor i32 %3113, %3115, !dbg !355
  %3117 = add i32 %3105, %3116, !dbg !355
  %3118 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 34, !dbg !355
  %3119 = load i32, i32* %3118, align 8, !dbg !355
  %3120 = add i32 %3117, %3119, !dbg !355
  %3121 = add i32 %3120, 1294757372, !dbg !355
  store i32 %3121, i32* %5, align 4, !dbg !355
  %3122 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !355
  %3123 = load i32, i32* %3122, align 8, !dbg !355
  %3124 = lshr i32 %3123, 2, !dbg !355
  %3125 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !355
  %3126 = load i32, i32* %3125, align 8, !dbg !355
  %3127 = shl i32 %3126, 30, !dbg !355
  %3128 = or i32 %3124, %3127, !dbg !355
  %3129 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !355
  %3130 = load i32, i32* %3129, align 8, !dbg !355
  %3131 = lshr i32 %3130, 13, !dbg !355
  %3132 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !355
  %3133 = load i32, i32* %3132, align 8, !dbg !355
  %3134 = shl i32 %3133, 19, !dbg !355
  %3135 = or i32 %3131, %3134, !dbg !355
  %3136 = xor i32 %3128, %3135, !dbg !355
  %3137 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !355
  %3138 = load i32, i32* %3137, align 8, !dbg !355
  %3139 = lshr i32 %3138, 22, !dbg !355
  %3140 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !355
  %3141 = load i32, i32* %3140, align 8, !dbg !355
  %3142 = shl i32 %3141, 10, !dbg !355
  %3143 = or i32 %3139, %3142, !dbg !355
  %3144 = xor i32 %3136, %3143, !dbg !355
  %3145 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !355
  %3146 = load i32, i32* %3145, align 8, !dbg !355
  %3147 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !355
  %3148 = load i32, i32* %3147, align 4, !dbg !355
  %3149 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !355
  %3150 = load i32, i32* %3149, align 16, !dbg !355
  %3151 = or i32 %3148, %3150, !dbg !355
  %3152 = and i32 %3146, %3151, !dbg !355
  %3153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !355
  %3154 = load i32, i32* %3153, align 4, !dbg !355
  %3155 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !355
  %3156 = load i32, i32* %3155, align 16, !dbg !355
  %3157 = and i32 %3154, %3156, !dbg !355
  %3158 = or i32 %3152, %3157, !dbg !355
  %3159 = add i32 %3144, %3158, !dbg !355
  store i32 %3159, i32* %6, align 4, !dbg !355
  %3160 = load i32, i32* %5, align 4, !dbg !355
  %3161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !355
  %3162 = load i32, i32* %3161, align 4, !dbg !355
  %3163 = add i32 %3162, %3160, !dbg !355
  store i32 %3163, i32* %3161, align 4, !dbg !355
  %3164 = load i32, i32* %5, align 4, !dbg !355
  %3165 = load i32, i32* %6, align 4, !dbg !355
  %3166 = add i32 %3164, %3165, !dbg !355
  %3167 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !355
  store i32 %3166, i32* %3167, align 4, !dbg !355
  %3168 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !356
  %3169 = load i32, i32* %3168, align 16, !dbg !356
  %3170 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !356
  %3171 = load i32, i32* %3170, align 4, !dbg !356
  %3172 = lshr i32 %3171, 6, !dbg !356
  %3173 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !356
  %3174 = load i32, i32* %3173, align 4, !dbg !356
  %3175 = shl i32 %3174, 26, !dbg !356
  %3176 = or i32 %3172, %3175, !dbg !356
  %3177 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !356
  %3178 = load i32, i32* %3177, align 4, !dbg !356
  %3179 = lshr i32 %3178, 11, !dbg !356
  %3180 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !356
  %3181 = load i32, i32* %3180, align 4, !dbg !356
  %3182 = shl i32 %3181, 21, !dbg !356
  %3183 = or i32 %3179, %3182, !dbg !356
  %3184 = xor i32 %3176, %3183, !dbg !356
  %3185 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !356
  %3186 = load i32, i32* %3185, align 4, !dbg !356
  %3187 = lshr i32 %3186, 25, !dbg !356
  %3188 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !356
  %3189 = load i32, i32* %3188, align 4, !dbg !356
  %3190 = shl i32 %3189, 7, !dbg !356
  %3191 = or i32 %3187, %3190, !dbg !356
  %3192 = xor i32 %3184, %3191, !dbg !356
  %3193 = add i32 %3169, %3192, !dbg !356
  %3194 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !356
  %3195 = load i32, i32* %3194, align 4, !dbg !356
  %3196 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !356
  %3197 = load i32, i32* %3196, align 8, !dbg !356
  %3198 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !356
  %3199 = load i32, i32* %3198, align 4, !dbg !356
  %3200 = xor i32 %3197, %3199, !dbg !356
  %3201 = and i32 %3195, %3200, !dbg !356
  %3202 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !356
  %3203 = load i32, i32* %3202, align 4, !dbg !356
  %3204 = xor i32 %3201, %3203, !dbg !356
  %3205 = add i32 %3193, %3204, !dbg !356
  %3206 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 35, !dbg !356
  %3207 = load i32, i32* %3206, align 4, !dbg !356
  %3208 = add i32 %3205, %3207, !dbg !356
  %3209 = add i32 %3208, 1396182291, !dbg !356
  store i32 %3209, i32* %5, align 4, !dbg !356
  %3210 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !356
  %3211 = load i32, i32* %3210, align 4, !dbg !356
  %3212 = lshr i32 %3211, 2, !dbg !356
  %3213 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !356
  %3214 = load i32, i32* %3213, align 4, !dbg !356
  %3215 = shl i32 %3214, 30, !dbg !356
  %3216 = or i32 %3212, %3215, !dbg !356
  %3217 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !356
  %3218 = load i32, i32* %3217, align 4, !dbg !356
  %3219 = lshr i32 %3218, 13, !dbg !356
  %3220 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !356
  %3221 = load i32, i32* %3220, align 4, !dbg !356
  %3222 = shl i32 %3221, 19, !dbg !356
  %3223 = or i32 %3219, %3222, !dbg !356
  %3224 = xor i32 %3216, %3223, !dbg !356
  %3225 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !356
  %3226 = load i32, i32* %3225, align 4, !dbg !356
  %3227 = lshr i32 %3226, 22, !dbg !356
  %3228 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !356
  %3229 = load i32, i32* %3228, align 4, !dbg !356
  %3230 = shl i32 %3229, 10, !dbg !356
  %3231 = or i32 %3227, %3230, !dbg !356
  %3232 = xor i32 %3224, %3231, !dbg !356
  %3233 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !356
  %3234 = load i32, i32* %3233, align 4, !dbg !356
  %3235 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !356
  %3236 = load i32, i32* %3235, align 8, !dbg !356
  %3237 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !356
  %3238 = load i32, i32* %3237, align 4, !dbg !356
  %3239 = or i32 %3236, %3238, !dbg !356
  %3240 = and i32 %3234, %3239, !dbg !356
  %3241 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !356
  %3242 = load i32, i32* %3241, align 8, !dbg !356
  %3243 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !356
  %3244 = load i32, i32* %3243, align 4, !dbg !356
  %3245 = and i32 %3242, %3244, !dbg !356
  %3246 = or i32 %3240, %3245, !dbg !356
  %3247 = add i32 %3232, %3246, !dbg !356
  store i32 %3247, i32* %6, align 4, !dbg !356
  %3248 = load i32, i32* %5, align 4, !dbg !356
  %3249 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !356
  %3250 = load i32, i32* %3249, align 16, !dbg !356
  %3251 = add i32 %3250, %3248, !dbg !356
  store i32 %3251, i32* %3249, align 16, !dbg !356
  %3252 = load i32, i32* %5, align 4, !dbg !356
  %3253 = load i32, i32* %6, align 4, !dbg !356
  %3254 = add i32 %3252, %3253, !dbg !356
  %3255 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !356
  store i32 %3254, i32* %3255, align 16, !dbg !356
  %3256 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !357
  %3257 = load i32, i32* %3256, align 4, !dbg !357
  %3258 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !357
  %3259 = load i32, i32* %3258, align 16, !dbg !357
  %3260 = lshr i32 %3259, 6, !dbg !357
  %3261 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !357
  %3262 = load i32, i32* %3261, align 16, !dbg !357
  %3263 = shl i32 %3262, 26, !dbg !357
  %3264 = or i32 %3260, %3263, !dbg !357
  %3265 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !357
  %3266 = load i32, i32* %3265, align 16, !dbg !357
  %3267 = lshr i32 %3266, 11, !dbg !357
  %3268 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !357
  %3269 = load i32, i32* %3268, align 16, !dbg !357
  %3270 = shl i32 %3269, 21, !dbg !357
  %3271 = or i32 %3267, %3270, !dbg !357
  %3272 = xor i32 %3264, %3271, !dbg !357
  %3273 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !357
  %3274 = load i32, i32* %3273, align 16, !dbg !357
  %3275 = lshr i32 %3274, 25, !dbg !357
  %3276 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !357
  %3277 = load i32, i32* %3276, align 16, !dbg !357
  %3278 = shl i32 %3277, 7, !dbg !357
  %3279 = or i32 %3275, %3278, !dbg !357
  %3280 = xor i32 %3272, %3279, !dbg !357
  %3281 = add i32 %3257, %3280, !dbg !357
  %3282 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !357
  %3283 = load i32, i32* %3282, align 16, !dbg !357
  %3284 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !357
  %3285 = load i32, i32* %3284, align 4, !dbg !357
  %3286 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !357
  %3287 = load i32, i32* %3286, align 8, !dbg !357
  %3288 = xor i32 %3285, %3287, !dbg !357
  %3289 = and i32 %3283, %3288, !dbg !357
  %3290 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !357
  %3291 = load i32, i32* %3290, align 8, !dbg !357
  %3292 = xor i32 %3289, %3291, !dbg !357
  %3293 = add i32 %3281, %3292, !dbg !357
  %3294 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 36, !dbg !357
  %3295 = load i32, i32* %3294, align 16, !dbg !357
  %3296 = add i32 %3293, %3295, !dbg !357
  %3297 = add i32 %3296, 1695183700, !dbg !357
  store i32 %3297, i32* %5, align 4, !dbg !357
  %3298 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !357
  %3299 = load i32, i32* %3298, align 16, !dbg !357
  %3300 = lshr i32 %3299, 2, !dbg !357
  %3301 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !357
  %3302 = load i32, i32* %3301, align 16, !dbg !357
  %3303 = shl i32 %3302, 30, !dbg !357
  %3304 = or i32 %3300, %3303, !dbg !357
  %3305 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !357
  %3306 = load i32, i32* %3305, align 16, !dbg !357
  %3307 = lshr i32 %3306, 13, !dbg !357
  %3308 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !357
  %3309 = load i32, i32* %3308, align 16, !dbg !357
  %3310 = shl i32 %3309, 19, !dbg !357
  %3311 = or i32 %3307, %3310, !dbg !357
  %3312 = xor i32 %3304, %3311, !dbg !357
  %3313 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !357
  %3314 = load i32, i32* %3313, align 16, !dbg !357
  %3315 = lshr i32 %3314, 22, !dbg !357
  %3316 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !357
  %3317 = load i32, i32* %3316, align 16, !dbg !357
  %3318 = shl i32 %3317, 10, !dbg !357
  %3319 = or i32 %3315, %3318, !dbg !357
  %3320 = xor i32 %3312, %3319, !dbg !357
  %3321 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !357
  %3322 = load i32, i32* %3321, align 16, !dbg !357
  %3323 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !357
  %3324 = load i32, i32* %3323, align 4, !dbg !357
  %3325 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !357
  %3326 = load i32, i32* %3325, align 8, !dbg !357
  %3327 = or i32 %3324, %3326, !dbg !357
  %3328 = and i32 %3322, %3327, !dbg !357
  %3329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !357
  %3330 = load i32, i32* %3329, align 4, !dbg !357
  %3331 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !357
  %3332 = load i32, i32* %3331, align 8, !dbg !357
  %3333 = and i32 %3330, %3332, !dbg !357
  %3334 = or i32 %3328, %3333, !dbg !357
  %3335 = add i32 %3320, %3334, !dbg !357
  store i32 %3335, i32* %6, align 4, !dbg !357
  %3336 = load i32, i32* %5, align 4, !dbg !357
  %3337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !357
  %3338 = load i32, i32* %3337, align 4, !dbg !357
  %3339 = add i32 %3338, %3336, !dbg !357
  store i32 %3339, i32* %3337, align 4, !dbg !357
  %3340 = load i32, i32* %5, align 4, !dbg !357
  %3341 = load i32, i32* %6, align 4, !dbg !357
  %3342 = add i32 %3340, %3341, !dbg !357
  %3343 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !357
  store i32 %3342, i32* %3343, align 4, !dbg !357
  %3344 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !358
  %3345 = load i32, i32* %3344, align 8, !dbg !358
  %3346 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !358
  %3347 = load i32, i32* %3346, align 4, !dbg !358
  %3348 = lshr i32 %3347, 6, !dbg !358
  %3349 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !358
  %3350 = load i32, i32* %3349, align 4, !dbg !358
  %3351 = shl i32 %3350, 26, !dbg !358
  %3352 = or i32 %3348, %3351, !dbg !358
  %3353 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !358
  %3354 = load i32, i32* %3353, align 4, !dbg !358
  %3355 = lshr i32 %3354, 11, !dbg !358
  %3356 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !358
  %3357 = load i32, i32* %3356, align 4, !dbg !358
  %3358 = shl i32 %3357, 21, !dbg !358
  %3359 = or i32 %3355, %3358, !dbg !358
  %3360 = xor i32 %3352, %3359, !dbg !358
  %3361 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !358
  %3362 = load i32, i32* %3361, align 4, !dbg !358
  %3363 = lshr i32 %3362, 25, !dbg !358
  %3364 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !358
  %3365 = load i32, i32* %3364, align 4, !dbg !358
  %3366 = shl i32 %3365, 7, !dbg !358
  %3367 = or i32 %3363, %3366, !dbg !358
  %3368 = xor i32 %3360, %3367, !dbg !358
  %3369 = add i32 %3345, %3368, !dbg !358
  %3370 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !358
  %3371 = load i32, i32* %3370, align 4, !dbg !358
  %3372 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !358
  %3373 = load i32, i32* %3372, align 16, !dbg !358
  %3374 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !358
  %3375 = load i32, i32* %3374, align 4, !dbg !358
  %3376 = xor i32 %3373, %3375, !dbg !358
  %3377 = and i32 %3371, %3376, !dbg !358
  %3378 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !358
  %3379 = load i32, i32* %3378, align 4, !dbg !358
  %3380 = xor i32 %3377, %3379, !dbg !358
  %3381 = add i32 %3369, %3380, !dbg !358
  %3382 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 37, !dbg !358
  %3383 = load i32, i32* %3382, align 4, !dbg !358
  %3384 = add i32 %3381, %3383, !dbg !358
  %3385 = add i32 %3384, 1986661051, !dbg !358
  store i32 %3385, i32* %5, align 4, !dbg !358
  %3386 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !358
  %3387 = load i32, i32* %3386, align 4, !dbg !358
  %3388 = lshr i32 %3387, 2, !dbg !358
  %3389 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !358
  %3390 = load i32, i32* %3389, align 4, !dbg !358
  %3391 = shl i32 %3390, 30, !dbg !358
  %3392 = or i32 %3388, %3391, !dbg !358
  %3393 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !358
  %3394 = load i32, i32* %3393, align 4, !dbg !358
  %3395 = lshr i32 %3394, 13, !dbg !358
  %3396 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !358
  %3397 = load i32, i32* %3396, align 4, !dbg !358
  %3398 = shl i32 %3397, 19, !dbg !358
  %3399 = or i32 %3395, %3398, !dbg !358
  %3400 = xor i32 %3392, %3399, !dbg !358
  %3401 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !358
  %3402 = load i32, i32* %3401, align 4, !dbg !358
  %3403 = lshr i32 %3402, 22, !dbg !358
  %3404 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !358
  %3405 = load i32, i32* %3404, align 4, !dbg !358
  %3406 = shl i32 %3405, 10, !dbg !358
  %3407 = or i32 %3403, %3406, !dbg !358
  %3408 = xor i32 %3400, %3407, !dbg !358
  %3409 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !358
  %3410 = load i32, i32* %3409, align 4, !dbg !358
  %3411 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !358
  %3412 = load i32, i32* %3411, align 16, !dbg !358
  %3413 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !358
  %3414 = load i32, i32* %3413, align 4, !dbg !358
  %3415 = or i32 %3412, %3414, !dbg !358
  %3416 = and i32 %3410, %3415, !dbg !358
  %3417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !358
  %3418 = load i32, i32* %3417, align 16, !dbg !358
  %3419 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !358
  %3420 = load i32, i32* %3419, align 4, !dbg !358
  %3421 = and i32 %3418, %3420, !dbg !358
  %3422 = or i32 %3416, %3421, !dbg !358
  %3423 = add i32 %3408, %3422, !dbg !358
  store i32 %3423, i32* %6, align 4, !dbg !358
  %3424 = load i32, i32* %5, align 4, !dbg !358
  %3425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !358
  %3426 = load i32, i32* %3425, align 8, !dbg !358
  %3427 = add i32 %3426, %3424, !dbg !358
  store i32 %3427, i32* %3425, align 8, !dbg !358
  %3428 = load i32, i32* %5, align 4, !dbg !358
  %3429 = load i32, i32* %6, align 4, !dbg !358
  %3430 = add i32 %3428, %3429, !dbg !358
  %3431 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !358
  store i32 %3430, i32* %3431, align 8, !dbg !358
  %3432 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !359
  %3433 = load i32, i32* %3432, align 4, !dbg !359
  %3434 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !359
  %3435 = load i32, i32* %3434, align 8, !dbg !359
  %3436 = lshr i32 %3435, 6, !dbg !359
  %3437 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !359
  %3438 = load i32, i32* %3437, align 8, !dbg !359
  %3439 = shl i32 %3438, 26, !dbg !359
  %3440 = or i32 %3436, %3439, !dbg !359
  %3441 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !359
  %3442 = load i32, i32* %3441, align 8, !dbg !359
  %3443 = lshr i32 %3442, 11, !dbg !359
  %3444 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !359
  %3445 = load i32, i32* %3444, align 8, !dbg !359
  %3446 = shl i32 %3445, 21, !dbg !359
  %3447 = or i32 %3443, %3446, !dbg !359
  %3448 = xor i32 %3440, %3447, !dbg !359
  %3449 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !359
  %3450 = load i32, i32* %3449, align 8, !dbg !359
  %3451 = lshr i32 %3450, 25, !dbg !359
  %3452 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !359
  %3453 = load i32, i32* %3452, align 8, !dbg !359
  %3454 = shl i32 %3453, 7, !dbg !359
  %3455 = or i32 %3451, %3454, !dbg !359
  %3456 = xor i32 %3448, %3455, !dbg !359
  %3457 = add i32 %3433, %3456, !dbg !359
  %3458 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !359
  %3459 = load i32, i32* %3458, align 8, !dbg !359
  %3460 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !359
  %3461 = load i32, i32* %3460, align 4, !dbg !359
  %3462 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !359
  %3463 = load i32, i32* %3462, align 16, !dbg !359
  %3464 = xor i32 %3461, %3463, !dbg !359
  %3465 = and i32 %3459, %3464, !dbg !359
  %3466 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !359
  %3467 = load i32, i32* %3466, align 16, !dbg !359
  %3468 = xor i32 %3465, %3467, !dbg !359
  %3469 = add i32 %3457, %3468, !dbg !359
  %3470 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 38, !dbg !359
  %3471 = load i32, i32* %3470, align 8, !dbg !359
  %3472 = add i32 %3469, %3471, !dbg !359
  %3473 = add i32 %3472, -2117940946, !dbg !359
  store i32 %3473, i32* %5, align 4, !dbg !359
  %3474 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !359
  %3475 = load i32, i32* %3474, align 8, !dbg !359
  %3476 = lshr i32 %3475, 2, !dbg !359
  %3477 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !359
  %3478 = load i32, i32* %3477, align 8, !dbg !359
  %3479 = shl i32 %3478, 30, !dbg !359
  %3480 = or i32 %3476, %3479, !dbg !359
  %3481 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !359
  %3482 = load i32, i32* %3481, align 8, !dbg !359
  %3483 = lshr i32 %3482, 13, !dbg !359
  %3484 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !359
  %3485 = load i32, i32* %3484, align 8, !dbg !359
  %3486 = shl i32 %3485, 19, !dbg !359
  %3487 = or i32 %3483, %3486, !dbg !359
  %3488 = xor i32 %3480, %3487, !dbg !359
  %3489 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !359
  %3490 = load i32, i32* %3489, align 8, !dbg !359
  %3491 = lshr i32 %3490, 22, !dbg !359
  %3492 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !359
  %3493 = load i32, i32* %3492, align 8, !dbg !359
  %3494 = shl i32 %3493, 10, !dbg !359
  %3495 = or i32 %3491, %3494, !dbg !359
  %3496 = xor i32 %3488, %3495, !dbg !359
  %3497 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !359
  %3498 = load i32, i32* %3497, align 8, !dbg !359
  %3499 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !359
  %3500 = load i32, i32* %3499, align 4, !dbg !359
  %3501 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !359
  %3502 = load i32, i32* %3501, align 16, !dbg !359
  %3503 = or i32 %3500, %3502, !dbg !359
  %3504 = and i32 %3498, %3503, !dbg !359
  %3505 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !359
  %3506 = load i32, i32* %3505, align 4, !dbg !359
  %3507 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !359
  %3508 = load i32, i32* %3507, align 16, !dbg !359
  %3509 = and i32 %3506, %3508, !dbg !359
  %3510 = or i32 %3504, %3509, !dbg !359
  %3511 = add i32 %3496, %3510, !dbg !359
  store i32 %3511, i32* %6, align 4, !dbg !359
  %3512 = load i32, i32* %5, align 4, !dbg !359
  %3513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !359
  %3514 = load i32, i32* %3513, align 4, !dbg !359
  %3515 = add i32 %3514, %3512, !dbg !359
  store i32 %3515, i32* %3513, align 4, !dbg !359
  %3516 = load i32, i32* %5, align 4, !dbg !359
  %3517 = load i32, i32* %6, align 4, !dbg !359
  %3518 = add i32 %3516, %3517, !dbg !359
  %3519 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !359
  store i32 %3518, i32* %3519, align 4, !dbg !359
  %3520 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !360
  %3521 = load i32, i32* %3520, align 16, !dbg !360
  %3522 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !360
  %3523 = load i32, i32* %3522, align 4, !dbg !360
  %3524 = lshr i32 %3523, 6, !dbg !360
  %3525 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !360
  %3526 = load i32, i32* %3525, align 4, !dbg !360
  %3527 = shl i32 %3526, 26, !dbg !360
  %3528 = or i32 %3524, %3527, !dbg !360
  %3529 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !360
  %3530 = load i32, i32* %3529, align 4, !dbg !360
  %3531 = lshr i32 %3530, 11, !dbg !360
  %3532 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !360
  %3533 = load i32, i32* %3532, align 4, !dbg !360
  %3534 = shl i32 %3533, 21, !dbg !360
  %3535 = or i32 %3531, %3534, !dbg !360
  %3536 = xor i32 %3528, %3535, !dbg !360
  %3537 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !360
  %3538 = load i32, i32* %3537, align 4, !dbg !360
  %3539 = lshr i32 %3538, 25, !dbg !360
  %3540 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !360
  %3541 = load i32, i32* %3540, align 4, !dbg !360
  %3542 = shl i32 %3541, 7, !dbg !360
  %3543 = or i32 %3539, %3542, !dbg !360
  %3544 = xor i32 %3536, %3543, !dbg !360
  %3545 = add i32 %3521, %3544, !dbg !360
  %3546 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !360
  %3547 = load i32, i32* %3546, align 4, !dbg !360
  %3548 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !360
  %3549 = load i32, i32* %3548, align 8, !dbg !360
  %3550 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !360
  %3551 = load i32, i32* %3550, align 4, !dbg !360
  %3552 = xor i32 %3549, %3551, !dbg !360
  %3553 = and i32 %3547, %3552, !dbg !360
  %3554 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !360
  %3555 = load i32, i32* %3554, align 4, !dbg !360
  %3556 = xor i32 %3553, %3555, !dbg !360
  %3557 = add i32 %3545, %3556, !dbg !360
  %3558 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 39, !dbg !360
  %3559 = load i32, i32* %3558, align 4, !dbg !360
  %3560 = add i32 %3557, %3559, !dbg !360
  %3561 = add i32 %3560, -1838011259, !dbg !360
  store i32 %3561, i32* %5, align 4, !dbg !360
  %3562 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !360
  %3563 = load i32, i32* %3562, align 4, !dbg !360
  %3564 = lshr i32 %3563, 2, !dbg !360
  %3565 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !360
  %3566 = load i32, i32* %3565, align 4, !dbg !360
  %3567 = shl i32 %3566, 30, !dbg !360
  %3568 = or i32 %3564, %3567, !dbg !360
  %3569 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !360
  %3570 = load i32, i32* %3569, align 4, !dbg !360
  %3571 = lshr i32 %3570, 13, !dbg !360
  %3572 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !360
  %3573 = load i32, i32* %3572, align 4, !dbg !360
  %3574 = shl i32 %3573, 19, !dbg !360
  %3575 = or i32 %3571, %3574, !dbg !360
  %3576 = xor i32 %3568, %3575, !dbg !360
  %3577 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !360
  %3578 = load i32, i32* %3577, align 4, !dbg !360
  %3579 = lshr i32 %3578, 22, !dbg !360
  %3580 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !360
  %3581 = load i32, i32* %3580, align 4, !dbg !360
  %3582 = shl i32 %3581, 10, !dbg !360
  %3583 = or i32 %3579, %3582, !dbg !360
  %3584 = xor i32 %3576, %3583, !dbg !360
  %3585 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !360
  %3586 = load i32, i32* %3585, align 4, !dbg !360
  %3587 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !360
  %3588 = load i32, i32* %3587, align 8, !dbg !360
  %3589 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !360
  %3590 = load i32, i32* %3589, align 4, !dbg !360
  %3591 = or i32 %3588, %3590, !dbg !360
  %3592 = and i32 %3586, %3591, !dbg !360
  %3593 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !360
  %3594 = load i32, i32* %3593, align 8, !dbg !360
  %3595 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !360
  %3596 = load i32, i32* %3595, align 4, !dbg !360
  %3597 = and i32 %3594, %3596, !dbg !360
  %3598 = or i32 %3592, %3597, !dbg !360
  %3599 = add i32 %3584, %3598, !dbg !360
  store i32 %3599, i32* %6, align 4, !dbg !360
  %3600 = load i32, i32* %5, align 4, !dbg !360
  %3601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !360
  %3602 = load i32, i32* %3601, align 16, !dbg !360
  %3603 = add i32 %3602, %3600, !dbg !360
  store i32 %3603, i32* %3601, align 16, !dbg !360
  %3604 = load i32, i32* %5, align 4, !dbg !360
  %3605 = load i32, i32* %6, align 4, !dbg !360
  %3606 = add i32 %3604, %3605, !dbg !360
  %3607 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !360
  store i32 %3606, i32* %3607, align 16, !dbg !360
  %3608 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !361
  %3609 = load i32, i32* %3608, align 4, !dbg !361
  %3610 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !361
  %3611 = load i32, i32* %3610, align 16, !dbg !361
  %3612 = lshr i32 %3611, 6, !dbg !361
  %3613 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !361
  %3614 = load i32, i32* %3613, align 16, !dbg !361
  %3615 = shl i32 %3614, 26, !dbg !361
  %3616 = or i32 %3612, %3615, !dbg !361
  %3617 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !361
  %3618 = load i32, i32* %3617, align 16, !dbg !361
  %3619 = lshr i32 %3618, 11, !dbg !361
  %3620 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !361
  %3621 = load i32, i32* %3620, align 16, !dbg !361
  %3622 = shl i32 %3621, 21, !dbg !361
  %3623 = or i32 %3619, %3622, !dbg !361
  %3624 = xor i32 %3616, %3623, !dbg !361
  %3625 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !361
  %3626 = load i32, i32* %3625, align 16, !dbg !361
  %3627 = lshr i32 %3626, 25, !dbg !361
  %3628 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !361
  %3629 = load i32, i32* %3628, align 16, !dbg !361
  %3630 = shl i32 %3629, 7, !dbg !361
  %3631 = or i32 %3627, %3630, !dbg !361
  %3632 = xor i32 %3624, %3631, !dbg !361
  %3633 = add i32 %3609, %3632, !dbg !361
  %3634 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !361
  %3635 = load i32, i32* %3634, align 16, !dbg !361
  %3636 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !361
  %3637 = load i32, i32* %3636, align 4, !dbg !361
  %3638 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !361
  %3639 = load i32, i32* %3638, align 8, !dbg !361
  %3640 = xor i32 %3637, %3639, !dbg !361
  %3641 = and i32 %3635, %3640, !dbg !361
  %3642 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !361
  %3643 = load i32, i32* %3642, align 8, !dbg !361
  %3644 = xor i32 %3641, %3643, !dbg !361
  %3645 = add i32 %3633, %3644, !dbg !361
  %3646 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 40, !dbg !361
  %3647 = load i32, i32* %3646, align 16, !dbg !361
  %3648 = add i32 %3645, %3647, !dbg !361
  %3649 = add i32 %3648, -1564481375, !dbg !361
  store i32 %3649, i32* %5, align 4, !dbg !361
  %3650 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !361
  %3651 = load i32, i32* %3650, align 16, !dbg !361
  %3652 = lshr i32 %3651, 2, !dbg !361
  %3653 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !361
  %3654 = load i32, i32* %3653, align 16, !dbg !361
  %3655 = shl i32 %3654, 30, !dbg !361
  %3656 = or i32 %3652, %3655, !dbg !361
  %3657 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !361
  %3658 = load i32, i32* %3657, align 16, !dbg !361
  %3659 = lshr i32 %3658, 13, !dbg !361
  %3660 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !361
  %3661 = load i32, i32* %3660, align 16, !dbg !361
  %3662 = shl i32 %3661, 19, !dbg !361
  %3663 = or i32 %3659, %3662, !dbg !361
  %3664 = xor i32 %3656, %3663, !dbg !361
  %3665 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !361
  %3666 = load i32, i32* %3665, align 16, !dbg !361
  %3667 = lshr i32 %3666, 22, !dbg !361
  %3668 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !361
  %3669 = load i32, i32* %3668, align 16, !dbg !361
  %3670 = shl i32 %3669, 10, !dbg !361
  %3671 = or i32 %3667, %3670, !dbg !361
  %3672 = xor i32 %3664, %3671, !dbg !361
  %3673 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !361
  %3674 = load i32, i32* %3673, align 16, !dbg !361
  %3675 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !361
  %3676 = load i32, i32* %3675, align 4, !dbg !361
  %3677 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !361
  %3678 = load i32, i32* %3677, align 8, !dbg !361
  %3679 = or i32 %3676, %3678, !dbg !361
  %3680 = and i32 %3674, %3679, !dbg !361
  %3681 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !361
  %3682 = load i32, i32* %3681, align 4, !dbg !361
  %3683 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !361
  %3684 = load i32, i32* %3683, align 8, !dbg !361
  %3685 = and i32 %3682, %3684, !dbg !361
  %3686 = or i32 %3680, %3685, !dbg !361
  %3687 = add i32 %3672, %3686, !dbg !361
  store i32 %3687, i32* %6, align 4, !dbg !361
  %3688 = load i32, i32* %5, align 4, !dbg !361
  %3689 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !361
  %3690 = load i32, i32* %3689, align 4, !dbg !361
  %3691 = add i32 %3690, %3688, !dbg !361
  store i32 %3691, i32* %3689, align 4, !dbg !361
  %3692 = load i32, i32* %5, align 4, !dbg !361
  %3693 = load i32, i32* %6, align 4, !dbg !361
  %3694 = add i32 %3692, %3693, !dbg !361
  %3695 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !361
  store i32 %3694, i32* %3695, align 4, !dbg !361
  %3696 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !362
  %3697 = load i32, i32* %3696, align 8, !dbg !362
  %3698 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !362
  %3699 = load i32, i32* %3698, align 4, !dbg !362
  %3700 = lshr i32 %3699, 6, !dbg !362
  %3701 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !362
  %3702 = load i32, i32* %3701, align 4, !dbg !362
  %3703 = shl i32 %3702, 26, !dbg !362
  %3704 = or i32 %3700, %3703, !dbg !362
  %3705 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !362
  %3706 = load i32, i32* %3705, align 4, !dbg !362
  %3707 = lshr i32 %3706, 11, !dbg !362
  %3708 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !362
  %3709 = load i32, i32* %3708, align 4, !dbg !362
  %3710 = shl i32 %3709, 21, !dbg !362
  %3711 = or i32 %3707, %3710, !dbg !362
  %3712 = xor i32 %3704, %3711, !dbg !362
  %3713 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !362
  %3714 = load i32, i32* %3713, align 4, !dbg !362
  %3715 = lshr i32 %3714, 25, !dbg !362
  %3716 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !362
  %3717 = load i32, i32* %3716, align 4, !dbg !362
  %3718 = shl i32 %3717, 7, !dbg !362
  %3719 = or i32 %3715, %3718, !dbg !362
  %3720 = xor i32 %3712, %3719, !dbg !362
  %3721 = add i32 %3697, %3720, !dbg !362
  %3722 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !362
  %3723 = load i32, i32* %3722, align 4, !dbg !362
  %3724 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !362
  %3725 = load i32, i32* %3724, align 16, !dbg !362
  %3726 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !362
  %3727 = load i32, i32* %3726, align 4, !dbg !362
  %3728 = xor i32 %3725, %3727, !dbg !362
  %3729 = and i32 %3723, %3728, !dbg !362
  %3730 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !362
  %3731 = load i32, i32* %3730, align 4, !dbg !362
  %3732 = xor i32 %3729, %3731, !dbg !362
  %3733 = add i32 %3721, %3732, !dbg !362
  %3734 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 41, !dbg !362
  %3735 = load i32, i32* %3734, align 4, !dbg !362
  %3736 = add i32 %3733, %3735, !dbg !362
  %3737 = add i32 %3736, -1474664885, !dbg !362
  store i32 %3737, i32* %5, align 4, !dbg !362
  %3738 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !362
  %3739 = load i32, i32* %3738, align 4, !dbg !362
  %3740 = lshr i32 %3739, 2, !dbg !362
  %3741 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !362
  %3742 = load i32, i32* %3741, align 4, !dbg !362
  %3743 = shl i32 %3742, 30, !dbg !362
  %3744 = or i32 %3740, %3743, !dbg !362
  %3745 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !362
  %3746 = load i32, i32* %3745, align 4, !dbg !362
  %3747 = lshr i32 %3746, 13, !dbg !362
  %3748 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !362
  %3749 = load i32, i32* %3748, align 4, !dbg !362
  %3750 = shl i32 %3749, 19, !dbg !362
  %3751 = or i32 %3747, %3750, !dbg !362
  %3752 = xor i32 %3744, %3751, !dbg !362
  %3753 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !362
  %3754 = load i32, i32* %3753, align 4, !dbg !362
  %3755 = lshr i32 %3754, 22, !dbg !362
  %3756 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !362
  %3757 = load i32, i32* %3756, align 4, !dbg !362
  %3758 = shl i32 %3757, 10, !dbg !362
  %3759 = or i32 %3755, %3758, !dbg !362
  %3760 = xor i32 %3752, %3759, !dbg !362
  %3761 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !362
  %3762 = load i32, i32* %3761, align 4, !dbg !362
  %3763 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !362
  %3764 = load i32, i32* %3763, align 16, !dbg !362
  %3765 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !362
  %3766 = load i32, i32* %3765, align 4, !dbg !362
  %3767 = or i32 %3764, %3766, !dbg !362
  %3768 = and i32 %3762, %3767, !dbg !362
  %3769 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !362
  %3770 = load i32, i32* %3769, align 16, !dbg !362
  %3771 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !362
  %3772 = load i32, i32* %3771, align 4, !dbg !362
  %3773 = and i32 %3770, %3772, !dbg !362
  %3774 = or i32 %3768, %3773, !dbg !362
  %3775 = add i32 %3760, %3774, !dbg !362
  store i32 %3775, i32* %6, align 4, !dbg !362
  %3776 = load i32, i32* %5, align 4, !dbg !362
  %3777 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !362
  %3778 = load i32, i32* %3777, align 8, !dbg !362
  %3779 = add i32 %3778, %3776, !dbg !362
  store i32 %3779, i32* %3777, align 8, !dbg !362
  %3780 = load i32, i32* %5, align 4, !dbg !362
  %3781 = load i32, i32* %6, align 4, !dbg !362
  %3782 = add i32 %3780, %3781, !dbg !362
  %3783 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !362
  store i32 %3782, i32* %3783, align 8, !dbg !362
  %3784 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !363
  %3785 = load i32, i32* %3784, align 4, !dbg !363
  %3786 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !363
  %3787 = load i32, i32* %3786, align 8, !dbg !363
  %3788 = lshr i32 %3787, 6, !dbg !363
  %3789 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !363
  %3790 = load i32, i32* %3789, align 8, !dbg !363
  %3791 = shl i32 %3790, 26, !dbg !363
  %3792 = or i32 %3788, %3791, !dbg !363
  %3793 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !363
  %3794 = load i32, i32* %3793, align 8, !dbg !363
  %3795 = lshr i32 %3794, 11, !dbg !363
  %3796 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !363
  %3797 = load i32, i32* %3796, align 8, !dbg !363
  %3798 = shl i32 %3797, 21, !dbg !363
  %3799 = or i32 %3795, %3798, !dbg !363
  %3800 = xor i32 %3792, %3799, !dbg !363
  %3801 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !363
  %3802 = load i32, i32* %3801, align 8, !dbg !363
  %3803 = lshr i32 %3802, 25, !dbg !363
  %3804 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !363
  %3805 = load i32, i32* %3804, align 8, !dbg !363
  %3806 = shl i32 %3805, 7, !dbg !363
  %3807 = or i32 %3803, %3806, !dbg !363
  %3808 = xor i32 %3800, %3807, !dbg !363
  %3809 = add i32 %3785, %3808, !dbg !363
  %3810 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !363
  %3811 = load i32, i32* %3810, align 8, !dbg !363
  %3812 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !363
  %3813 = load i32, i32* %3812, align 4, !dbg !363
  %3814 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !363
  %3815 = load i32, i32* %3814, align 16, !dbg !363
  %3816 = xor i32 %3813, %3815, !dbg !363
  %3817 = and i32 %3811, %3816, !dbg !363
  %3818 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !363
  %3819 = load i32, i32* %3818, align 16, !dbg !363
  %3820 = xor i32 %3817, %3819, !dbg !363
  %3821 = add i32 %3809, %3820, !dbg !363
  %3822 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 42, !dbg !363
  %3823 = load i32, i32* %3822, align 8, !dbg !363
  %3824 = add i32 %3821, %3823, !dbg !363
  %3825 = add i32 %3824, -1035236496, !dbg !363
  store i32 %3825, i32* %5, align 4, !dbg !363
  %3826 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !363
  %3827 = load i32, i32* %3826, align 8, !dbg !363
  %3828 = lshr i32 %3827, 2, !dbg !363
  %3829 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !363
  %3830 = load i32, i32* %3829, align 8, !dbg !363
  %3831 = shl i32 %3830, 30, !dbg !363
  %3832 = or i32 %3828, %3831, !dbg !363
  %3833 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !363
  %3834 = load i32, i32* %3833, align 8, !dbg !363
  %3835 = lshr i32 %3834, 13, !dbg !363
  %3836 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !363
  %3837 = load i32, i32* %3836, align 8, !dbg !363
  %3838 = shl i32 %3837, 19, !dbg !363
  %3839 = or i32 %3835, %3838, !dbg !363
  %3840 = xor i32 %3832, %3839, !dbg !363
  %3841 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !363
  %3842 = load i32, i32* %3841, align 8, !dbg !363
  %3843 = lshr i32 %3842, 22, !dbg !363
  %3844 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !363
  %3845 = load i32, i32* %3844, align 8, !dbg !363
  %3846 = shl i32 %3845, 10, !dbg !363
  %3847 = or i32 %3843, %3846, !dbg !363
  %3848 = xor i32 %3840, %3847, !dbg !363
  %3849 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !363
  %3850 = load i32, i32* %3849, align 8, !dbg !363
  %3851 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !363
  %3852 = load i32, i32* %3851, align 4, !dbg !363
  %3853 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !363
  %3854 = load i32, i32* %3853, align 16, !dbg !363
  %3855 = or i32 %3852, %3854, !dbg !363
  %3856 = and i32 %3850, %3855, !dbg !363
  %3857 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !363
  %3858 = load i32, i32* %3857, align 4, !dbg !363
  %3859 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !363
  %3860 = load i32, i32* %3859, align 16, !dbg !363
  %3861 = and i32 %3858, %3860, !dbg !363
  %3862 = or i32 %3856, %3861, !dbg !363
  %3863 = add i32 %3848, %3862, !dbg !363
  store i32 %3863, i32* %6, align 4, !dbg !363
  %3864 = load i32, i32* %5, align 4, !dbg !363
  %3865 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !363
  %3866 = load i32, i32* %3865, align 4, !dbg !363
  %3867 = add i32 %3866, %3864, !dbg !363
  store i32 %3867, i32* %3865, align 4, !dbg !363
  %3868 = load i32, i32* %5, align 4, !dbg !363
  %3869 = load i32, i32* %6, align 4, !dbg !363
  %3870 = add i32 %3868, %3869, !dbg !363
  %3871 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !363
  store i32 %3870, i32* %3871, align 4, !dbg !363
  %3872 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !364
  %3873 = load i32, i32* %3872, align 16, !dbg !364
  %3874 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !364
  %3875 = load i32, i32* %3874, align 4, !dbg !364
  %3876 = lshr i32 %3875, 6, !dbg !364
  %3877 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !364
  %3878 = load i32, i32* %3877, align 4, !dbg !364
  %3879 = shl i32 %3878, 26, !dbg !364
  %3880 = or i32 %3876, %3879, !dbg !364
  %3881 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !364
  %3882 = load i32, i32* %3881, align 4, !dbg !364
  %3883 = lshr i32 %3882, 11, !dbg !364
  %3884 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !364
  %3885 = load i32, i32* %3884, align 4, !dbg !364
  %3886 = shl i32 %3885, 21, !dbg !364
  %3887 = or i32 %3883, %3886, !dbg !364
  %3888 = xor i32 %3880, %3887, !dbg !364
  %3889 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !364
  %3890 = load i32, i32* %3889, align 4, !dbg !364
  %3891 = lshr i32 %3890, 25, !dbg !364
  %3892 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !364
  %3893 = load i32, i32* %3892, align 4, !dbg !364
  %3894 = shl i32 %3893, 7, !dbg !364
  %3895 = or i32 %3891, %3894, !dbg !364
  %3896 = xor i32 %3888, %3895, !dbg !364
  %3897 = add i32 %3873, %3896, !dbg !364
  %3898 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !364
  %3899 = load i32, i32* %3898, align 4, !dbg !364
  %3900 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !364
  %3901 = load i32, i32* %3900, align 8, !dbg !364
  %3902 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !364
  %3903 = load i32, i32* %3902, align 4, !dbg !364
  %3904 = xor i32 %3901, %3903, !dbg !364
  %3905 = and i32 %3899, %3904, !dbg !364
  %3906 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !364
  %3907 = load i32, i32* %3906, align 4, !dbg !364
  %3908 = xor i32 %3905, %3907, !dbg !364
  %3909 = add i32 %3897, %3908, !dbg !364
  %3910 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 43, !dbg !364
  %3911 = load i32, i32* %3910, align 4, !dbg !364
  %3912 = add i32 %3909, %3911, !dbg !364
  %3913 = add i32 %3912, -949202525, !dbg !364
  store i32 %3913, i32* %5, align 4, !dbg !364
  %3914 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !364
  %3915 = load i32, i32* %3914, align 4, !dbg !364
  %3916 = lshr i32 %3915, 2, !dbg !364
  %3917 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !364
  %3918 = load i32, i32* %3917, align 4, !dbg !364
  %3919 = shl i32 %3918, 30, !dbg !364
  %3920 = or i32 %3916, %3919, !dbg !364
  %3921 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !364
  %3922 = load i32, i32* %3921, align 4, !dbg !364
  %3923 = lshr i32 %3922, 13, !dbg !364
  %3924 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !364
  %3925 = load i32, i32* %3924, align 4, !dbg !364
  %3926 = shl i32 %3925, 19, !dbg !364
  %3927 = or i32 %3923, %3926, !dbg !364
  %3928 = xor i32 %3920, %3927, !dbg !364
  %3929 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !364
  %3930 = load i32, i32* %3929, align 4, !dbg !364
  %3931 = lshr i32 %3930, 22, !dbg !364
  %3932 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !364
  %3933 = load i32, i32* %3932, align 4, !dbg !364
  %3934 = shl i32 %3933, 10, !dbg !364
  %3935 = or i32 %3931, %3934, !dbg !364
  %3936 = xor i32 %3928, %3935, !dbg !364
  %3937 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !364
  %3938 = load i32, i32* %3937, align 4, !dbg !364
  %3939 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !364
  %3940 = load i32, i32* %3939, align 8, !dbg !364
  %3941 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !364
  %3942 = load i32, i32* %3941, align 4, !dbg !364
  %3943 = or i32 %3940, %3942, !dbg !364
  %3944 = and i32 %3938, %3943, !dbg !364
  %3945 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !364
  %3946 = load i32, i32* %3945, align 8, !dbg !364
  %3947 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !364
  %3948 = load i32, i32* %3947, align 4, !dbg !364
  %3949 = and i32 %3946, %3948, !dbg !364
  %3950 = or i32 %3944, %3949, !dbg !364
  %3951 = add i32 %3936, %3950, !dbg !364
  store i32 %3951, i32* %6, align 4, !dbg !364
  %3952 = load i32, i32* %5, align 4, !dbg !364
  %3953 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !364
  %3954 = load i32, i32* %3953, align 16, !dbg !364
  %3955 = add i32 %3954, %3952, !dbg !364
  store i32 %3955, i32* %3953, align 16, !dbg !364
  %3956 = load i32, i32* %5, align 4, !dbg !364
  %3957 = load i32, i32* %6, align 4, !dbg !364
  %3958 = add i32 %3956, %3957, !dbg !364
  %3959 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !364
  store i32 %3958, i32* %3959, align 16, !dbg !364
  %3960 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !365
  %3961 = load i32, i32* %3960, align 4, !dbg !365
  %3962 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !365
  %3963 = load i32, i32* %3962, align 16, !dbg !365
  %3964 = lshr i32 %3963, 6, !dbg !365
  %3965 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !365
  %3966 = load i32, i32* %3965, align 16, !dbg !365
  %3967 = shl i32 %3966, 26, !dbg !365
  %3968 = or i32 %3964, %3967, !dbg !365
  %3969 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !365
  %3970 = load i32, i32* %3969, align 16, !dbg !365
  %3971 = lshr i32 %3970, 11, !dbg !365
  %3972 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !365
  %3973 = load i32, i32* %3972, align 16, !dbg !365
  %3974 = shl i32 %3973, 21, !dbg !365
  %3975 = or i32 %3971, %3974, !dbg !365
  %3976 = xor i32 %3968, %3975, !dbg !365
  %3977 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !365
  %3978 = load i32, i32* %3977, align 16, !dbg !365
  %3979 = lshr i32 %3978, 25, !dbg !365
  %3980 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !365
  %3981 = load i32, i32* %3980, align 16, !dbg !365
  %3982 = shl i32 %3981, 7, !dbg !365
  %3983 = or i32 %3979, %3982, !dbg !365
  %3984 = xor i32 %3976, %3983, !dbg !365
  %3985 = add i32 %3961, %3984, !dbg !365
  %3986 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !365
  %3987 = load i32, i32* %3986, align 16, !dbg !365
  %3988 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !365
  %3989 = load i32, i32* %3988, align 4, !dbg !365
  %3990 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !365
  %3991 = load i32, i32* %3990, align 8, !dbg !365
  %3992 = xor i32 %3989, %3991, !dbg !365
  %3993 = and i32 %3987, %3992, !dbg !365
  %3994 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !365
  %3995 = load i32, i32* %3994, align 8, !dbg !365
  %3996 = xor i32 %3993, %3995, !dbg !365
  %3997 = add i32 %3985, %3996, !dbg !365
  %3998 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 44, !dbg !365
  %3999 = load i32, i32* %3998, align 16, !dbg !365
  %4000 = add i32 %3997, %3999, !dbg !365
  %4001 = add i32 %4000, -778901479, !dbg !365
  store i32 %4001, i32* %5, align 4, !dbg !365
  %4002 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !365
  %4003 = load i32, i32* %4002, align 16, !dbg !365
  %4004 = lshr i32 %4003, 2, !dbg !365
  %4005 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !365
  %4006 = load i32, i32* %4005, align 16, !dbg !365
  %4007 = shl i32 %4006, 30, !dbg !365
  %4008 = or i32 %4004, %4007, !dbg !365
  %4009 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !365
  %4010 = load i32, i32* %4009, align 16, !dbg !365
  %4011 = lshr i32 %4010, 13, !dbg !365
  %4012 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !365
  %4013 = load i32, i32* %4012, align 16, !dbg !365
  %4014 = shl i32 %4013, 19, !dbg !365
  %4015 = or i32 %4011, %4014, !dbg !365
  %4016 = xor i32 %4008, %4015, !dbg !365
  %4017 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !365
  %4018 = load i32, i32* %4017, align 16, !dbg !365
  %4019 = lshr i32 %4018, 22, !dbg !365
  %4020 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !365
  %4021 = load i32, i32* %4020, align 16, !dbg !365
  %4022 = shl i32 %4021, 10, !dbg !365
  %4023 = or i32 %4019, %4022, !dbg !365
  %4024 = xor i32 %4016, %4023, !dbg !365
  %4025 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !365
  %4026 = load i32, i32* %4025, align 16, !dbg !365
  %4027 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !365
  %4028 = load i32, i32* %4027, align 4, !dbg !365
  %4029 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !365
  %4030 = load i32, i32* %4029, align 8, !dbg !365
  %4031 = or i32 %4028, %4030, !dbg !365
  %4032 = and i32 %4026, %4031, !dbg !365
  %4033 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !365
  %4034 = load i32, i32* %4033, align 4, !dbg !365
  %4035 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !365
  %4036 = load i32, i32* %4035, align 8, !dbg !365
  %4037 = and i32 %4034, %4036, !dbg !365
  %4038 = or i32 %4032, %4037, !dbg !365
  %4039 = add i32 %4024, %4038, !dbg !365
  store i32 %4039, i32* %6, align 4, !dbg !365
  %4040 = load i32, i32* %5, align 4, !dbg !365
  %4041 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !365
  %4042 = load i32, i32* %4041, align 4, !dbg !365
  %4043 = add i32 %4042, %4040, !dbg !365
  store i32 %4043, i32* %4041, align 4, !dbg !365
  %4044 = load i32, i32* %5, align 4, !dbg !365
  %4045 = load i32, i32* %6, align 4, !dbg !365
  %4046 = add i32 %4044, %4045, !dbg !365
  %4047 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !365
  store i32 %4046, i32* %4047, align 4, !dbg !365
  %4048 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !366
  %4049 = load i32, i32* %4048, align 8, !dbg !366
  %4050 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !366
  %4051 = load i32, i32* %4050, align 4, !dbg !366
  %4052 = lshr i32 %4051, 6, !dbg !366
  %4053 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !366
  %4054 = load i32, i32* %4053, align 4, !dbg !366
  %4055 = shl i32 %4054, 26, !dbg !366
  %4056 = or i32 %4052, %4055, !dbg !366
  %4057 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !366
  %4058 = load i32, i32* %4057, align 4, !dbg !366
  %4059 = lshr i32 %4058, 11, !dbg !366
  %4060 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !366
  %4061 = load i32, i32* %4060, align 4, !dbg !366
  %4062 = shl i32 %4061, 21, !dbg !366
  %4063 = or i32 %4059, %4062, !dbg !366
  %4064 = xor i32 %4056, %4063, !dbg !366
  %4065 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !366
  %4066 = load i32, i32* %4065, align 4, !dbg !366
  %4067 = lshr i32 %4066, 25, !dbg !366
  %4068 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !366
  %4069 = load i32, i32* %4068, align 4, !dbg !366
  %4070 = shl i32 %4069, 7, !dbg !366
  %4071 = or i32 %4067, %4070, !dbg !366
  %4072 = xor i32 %4064, %4071, !dbg !366
  %4073 = add i32 %4049, %4072, !dbg !366
  %4074 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !366
  %4075 = load i32, i32* %4074, align 4, !dbg !366
  %4076 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !366
  %4077 = load i32, i32* %4076, align 16, !dbg !366
  %4078 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !366
  %4079 = load i32, i32* %4078, align 4, !dbg !366
  %4080 = xor i32 %4077, %4079, !dbg !366
  %4081 = and i32 %4075, %4080, !dbg !366
  %4082 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !366
  %4083 = load i32, i32* %4082, align 4, !dbg !366
  %4084 = xor i32 %4081, %4083, !dbg !366
  %4085 = add i32 %4073, %4084, !dbg !366
  %4086 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 45, !dbg !366
  %4087 = load i32, i32* %4086, align 4, !dbg !366
  %4088 = add i32 %4085, %4087, !dbg !366
  %4089 = add i32 %4088, -694614492, !dbg !366
  store i32 %4089, i32* %5, align 4, !dbg !366
  %4090 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !366
  %4091 = load i32, i32* %4090, align 4, !dbg !366
  %4092 = lshr i32 %4091, 2, !dbg !366
  %4093 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !366
  %4094 = load i32, i32* %4093, align 4, !dbg !366
  %4095 = shl i32 %4094, 30, !dbg !366
  %4096 = or i32 %4092, %4095, !dbg !366
  %4097 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !366
  %4098 = load i32, i32* %4097, align 4, !dbg !366
  %4099 = lshr i32 %4098, 13, !dbg !366
  %4100 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !366
  %4101 = load i32, i32* %4100, align 4, !dbg !366
  %4102 = shl i32 %4101, 19, !dbg !366
  %4103 = or i32 %4099, %4102, !dbg !366
  %4104 = xor i32 %4096, %4103, !dbg !366
  %4105 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !366
  %4106 = load i32, i32* %4105, align 4, !dbg !366
  %4107 = lshr i32 %4106, 22, !dbg !366
  %4108 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !366
  %4109 = load i32, i32* %4108, align 4, !dbg !366
  %4110 = shl i32 %4109, 10, !dbg !366
  %4111 = or i32 %4107, %4110, !dbg !366
  %4112 = xor i32 %4104, %4111, !dbg !366
  %4113 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !366
  %4114 = load i32, i32* %4113, align 4, !dbg !366
  %4115 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !366
  %4116 = load i32, i32* %4115, align 16, !dbg !366
  %4117 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !366
  %4118 = load i32, i32* %4117, align 4, !dbg !366
  %4119 = or i32 %4116, %4118, !dbg !366
  %4120 = and i32 %4114, %4119, !dbg !366
  %4121 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !366
  %4122 = load i32, i32* %4121, align 16, !dbg !366
  %4123 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !366
  %4124 = load i32, i32* %4123, align 4, !dbg !366
  %4125 = and i32 %4122, %4124, !dbg !366
  %4126 = or i32 %4120, %4125, !dbg !366
  %4127 = add i32 %4112, %4126, !dbg !366
  store i32 %4127, i32* %6, align 4, !dbg !366
  %4128 = load i32, i32* %5, align 4, !dbg !366
  %4129 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !366
  %4130 = load i32, i32* %4129, align 8, !dbg !366
  %4131 = add i32 %4130, %4128, !dbg !366
  store i32 %4131, i32* %4129, align 8, !dbg !366
  %4132 = load i32, i32* %5, align 4, !dbg !366
  %4133 = load i32, i32* %6, align 4, !dbg !366
  %4134 = add i32 %4132, %4133, !dbg !366
  %4135 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !366
  store i32 %4134, i32* %4135, align 8, !dbg !366
  %4136 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !367
  %4137 = load i32, i32* %4136, align 4, !dbg !367
  %4138 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !367
  %4139 = load i32, i32* %4138, align 8, !dbg !367
  %4140 = lshr i32 %4139, 6, !dbg !367
  %4141 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !367
  %4142 = load i32, i32* %4141, align 8, !dbg !367
  %4143 = shl i32 %4142, 26, !dbg !367
  %4144 = or i32 %4140, %4143, !dbg !367
  %4145 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !367
  %4146 = load i32, i32* %4145, align 8, !dbg !367
  %4147 = lshr i32 %4146, 11, !dbg !367
  %4148 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !367
  %4149 = load i32, i32* %4148, align 8, !dbg !367
  %4150 = shl i32 %4149, 21, !dbg !367
  %4151 = or i32 %4147, %4150, !dbg !367
  %4152 = xor i32 %4144, %4151, !dbg !367
  %4153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !367
  %4154 = load i32, i32* %4153, align 8, !dbg !367
  %4155 = lshr i32 %4154, 25, !dbg !367
  %4156 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !367
  %4157 = load i32, i32* %4156, align 8, !dbg !367
  %4158 = shl i32 %4157, 7, !dbg !367
  %4159 = or i32 %4155, %4158, !dbg !367
  %4160 = xor i32 %4152, %4159, !dbg !367
  %4161 = add i32 %4137, %4160, !dbg !367
  %4162 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !367
  %4163 = load i32, i32* %4162, align 8, !dbg !367
  %4164 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !367
  %4165 = load i32, i32* %4164, align 4, !dbg !367
  %4166 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !367
  %4167 = load i32, i32* %4166, align 16, !dbg !367
  %4168 = xor i32 %4165, %4167, !dbg !367
  %4169 = and i32 %4163, %4168, !dbg !367
  %4170 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !367
  %4171 = load i32, i32* %4170, align 16, !dbg !367
  %4172 = xor i32 %4169, %4171, !dbg !367
  %4173 = add i32 %4161, %4172, !dbg !367
  %4174 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 46, !dbg !367
  %4175 = load i32, i32* %4174, align 8, !dbg !367
  %4176 = add i32 %4173, %4175, !dbg !367
  %4177 = add i32 %4176, -200395387, !dbg !367
  store i32 %4177, i32* %5, align 4, !dbg !367
  %4178 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !367
  %4179 = load i32, i32* %4178, align 8, !dbg !367
  %4180 = lshr i32 %4179, 2, !dbg !367
  %4181 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !367
  %4182 = load i32, i32* %4181, align 8, !dbg !367
  %4183 = shl i32 %4182, 30, !dbg !367
  %4184 = or i32 %4180, %4183, !dbg !367
  %4185 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !367
  %4186 = load i32, i32* %4185, align 8, !dbg !367
  %4187 = lshr i32 %4186, 13, !dbg !367
  %4188 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !367
  %4189 = load i32, i32* %4188, align 8, !dbg !367
  %4190 = shl i32 %4189, 19, !dbg !367
  %4191 = or i32 %4187, %4190, !dbg !367
  %4192 = xor i32 %4184, %4191, !dbg !367
  %4193 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !367
  %4194 = load i32, i32* %4193, align 8, !dbg !367
  %4195 = lshr i32 %4194, 22, !dbg !367
  %4196 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !367
  %4197 = load i32, i32* %4196, align 8, !dbg !367
  %4198 = shl i32 %4197, 10, !dbg !367
  %4199 = or i32 %4195, %4198, !dbg !367
  %4200 = xor i32 %4192, %4199, !dbg !367
  %4201 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !367
  %4202 = load i32, i32* %4201, align 8, !dbg !367
  %4203 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !367
  %4204 = load i32, i32* %4203, align 4, !dbg !367
  %4205 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !367
  %4206 = load i32, i32* %4205, align 16, !dbg !367
  %4207 = or i32 %4204, %4206, !dbg !367
  %4208 = and i32 %4202, %4207, !dbg !367
  %4209 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !367
  %4210 = load i32, i32* %4209, align 4, !dbg !367
  %4211 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !367
  %4212 = load i32, i32* %4211, align 16, !dbg !367
  %4213 = and i32 %4210, %4212, !dbg !367
  %4214 = or i32 %4208, %4213, !dbg !367
  %4215 = add i32 %4200, %4214, !dbg !367
  store i32 %4215, i32* %6, align 4, !dbg !367
  %4216 = load i32, i32* %5, align 4, !dbg !367
  %4217 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !367
  %4218 = load i32, i32* %4217, align 4, !dbg !367
  %4219 = add i32 %4218, %4216, !dbg !367
  store i32 %4219, i32* %4217, align 4, !dbg !367
  %4220 = load i32, i32* %5, align 4, !dbg !367
  %4221 = load i32, i32* %6, align 4, !dbg !367
  %4222 = add i32 %4220, %4221, !dbg !367
  %4223 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !367
  store i32 %4222, i32* %4223, align 4, !dbg !367
  %4224 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !368
  %4225 = load i32, i32* %4224, align 16, !dbg !368
  %4226 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !368
  %4227 = load i32, i32* %4226, align 4, !dbg !368
  %4228 = lshr i32 %4227, 6, !dbg !368
  %4229 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !368
  %4230 = load i32, i32* %4229, align 4, !dbg !368
  %4231 = shl i32 %4230, 26, !dbg !368
  %4232 = or i32 %4228, %4231, !dbg !368
  %4233 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !368
  %4234 = load i32, i32* %4233, align 4, !dbg !368
  %4235 = lshr i32 %4234, 11, !dbg !368
  %4236 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !368
  %4237 = load i32, i32* %4236, align 4, !dbg !368
  %4238 = shl i32 %4237, 21, !dbg !368
  %4239 = or i32 %4235, %4238, !dbg !368
  %4240 = xor i32 %4232, %4239, !dbg !368
  %4241 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !368
  %4242 = load i32, i32* %4241, align 4, !dbg !368
  %4243 = lshr i32 %4242, 25, !dbg !368
  %4244 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !368
  %4245 = load i32, i32* %4244, align 4, !dbg !368
  %4246 = shl i32 %4245, 7, !dbg !368
  %4247 = or i32 %4243, %4246, !dbg !368
  %4248 = xor i32 %4240, %4247, !dbg !368
  %4249 = add i32 %4225, %4248, !dbg !368
  %4250 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !368
  %4251 = load i32, i32* %4250, align 4, !dbg !368
  %4252 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !368
  %4253 = load i32, i32* %4252, align 8, !dbg !368
  %4254 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !368
  %4255 = load i32, i32* %4254, align 4, !dbg !368
  %4256 = xor i32 %4253, %4255, !dbg !368
  %4257 = and i32 %4251, %4256, !dbg !368
  %4258 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !368
  %4259 = load i32, i32* %4258, align 4, !dbg !368
  %4260 = xor i32 %4257, %4259, !dbg !368
  %4261 = add i32 %4249, %4260, !dbg !368
  %4262 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 47, !dbg !368
  %4263 = load i32, i32* %4262, align 4, !dbg !368
  %4264 = add i32 %4261, %4263, !dbg !368
  %4265 = add i32 %4264, 275423344, !dbg !368
  store i32 %4265, i32* %5, align 4, !dbg !368
  %4266 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !368
  %4267 = load i32, i32* %4266, align 4, !dbg !368
  %4268 = lshr i32 %4267, 2, !dbg !368
  %4269 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !368
  %4270 = load i32, i32* %4269, align 4, !dbg !368
  %4271 = shl i32 %4270, 30, !dbg !368
  %4272 = or i32 %4268, %4271, !dbg !368
  %4273 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !368
  %4274 = load i32, i32* %4273, align 4, !dbg !368
  %4275 = lshr i32 %4274, 13, !dbg !368
  %4276 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !368
  %4277 = load i32, i32* %4276, align 4, !dbg !368
  %4278 = shl i32 %4277, 19, !dbg !368
  %4279 = or i32 %4275, %4278, !dbg !368
  %4280 = xor i32 %4272, %4279, !dbg !368
  %4281 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !368
  %4282 = load i32, i32* %4281, align 4, !dbg !368
  %4283 = lshr i32 %4282, 22, !dbg !368
  %4284 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !368
  %4285 = load i32, i32* %4284, align 4, !dbg !368
  %4286 = shl i32 %4285, 10, !dbg !368
  %4287 = or i32 %4283, %4286, !dbg !368
  %4288 = xor i32 %4280, %4287, !dbg !368
  %4289 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !368
  %4290 = load i32, i32* %4289, align 4, !dbg !368
  %4291 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !368
  %4292 = load i32, i32* %4291, align 8, !dbg !368
  %4293 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !368
  %4294 = load i32, i32* %4293, align 4, !dbg !368
  %4295 = or i32 %4292, %4294, !dbg !368
  %4296 = and i32 %4290, %4295, !dbg !368
  %4297 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !368
  %4298 = load i32, i32* %4297, align 8, !dbg !368
  %4299 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !368
  %4300 = load i32, i32* %4299, align 4, !dbg !368
  %4301 = and i32 %4298, %4300, !dbg !368
  %4302 = or i32 %4296, %4301, !dbg !368
  %4303 = add i32 %4288, %4302, !dbg !368
  store i32 %4303, i32* %6, align 4, !dbg !368
  %4304 = load i32, i32* %5, align 4, !dbg !368
  %4305 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !368
  %4306 = load i32, i32* %4305, align 16, !dbg !368
  %4307 = add i32 %4306, %4304, !dbg !368
  store i32 %4307, i32* %4305, align 16, !dbg !368
  %4308 = load i32, i32* %5, align 4, !dbg !368
  %4309 = load i32, i32* %6, align 4, !dbg !368
  %4310 = add i32 %4308, %4309, !dbg !368
  %4311 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !368
  store i32 %4310, i32* %4311, align 16, !dbg !368
  %4312 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !369
  %4313 = load i32, i32* %4312, align 4, !dbg !369
  %4314 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !369
  %4315 = load i32, i32* %4314, align 16, !dbg !369
  %4316 = lshr i32 %4315, 6, !dbg !369
  %4317 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !369
  %4318 = load i32, i32* %4317, align 16, !dbg !369
  %4319 = shl i32 %4318, 26, !dbg !369
  %4320 = or i32 %4316, %4319, !dbg !369
  %4321 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !369
  %4322 = load i32, i32* %4321, align 16, !dbg !369
  %4323 = lshr i32 %4322, 11, !dbg !369
  %4324 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !369
  %4325 = load i32, i32* %4324, align 16, !dbg !369
  %4326 = shl i32 %4325, 21, !dbg !369
  %4327 = or i32 %4323, %4326, !dbg !369
  %4328 = xor i32 %4320, %4327, !dbg !369
  %4329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !369
  %4330 = load i32, i32* %4329, align 16, !dbg !369
  %4331 = lshr i32 %4330, 25, !dbg !369
  %4332 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !369
  %4333 = load i32, i32* %4332, align 16, !dbg !369
  %4334 = shl i32 %4333, 7, !dbg !369
  %4335 = or i32 %4331, %4334, !dbg !369
  %4336 = xor i32 %4328, %4335, !dbg !369
  %4337 = add i32 %4313, %4336, !dbg !369
  %4338 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !369
  %4339 = load i32, i32* %4338, align 16, !dbg !369
  %4340 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !369
  %4341 = load i32, i32* %4340, align 4, !dbg !369
  %4342 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !369
  %4343 = load i32, i32* %4342, align 8, !dbg !369
  %4344 = xor i32 %4341, %4343, !dbg !369
  %4345 = and i32 %4339, %4344, !dbg !369
  %4346 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !369
  %4347 = load i32, i32* %4346, align 8, !dbg !369
  %4348 = xor i32 %4345, %4347, !dbg !369
  %4349 = add i32 %4337, %4348, !dbg !369
  %4350 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 48, !dbg !369
  %4351 = load i32, i32* %4350, align 16, !dbg !369
  %4352 = add i32 %4349, %4351, !dbg !369
  %4353 = add i32 %4352, 430227734, !dbg !369
  store i32 %4353, i32* %5, align 4, !dbg !369
  %4354 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !369
  %4355 = load i32, i32* %4354, align 16, !dbg !369
  %4356 = lshr i32 %4355, 2, !dbg !369
  %4357 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !369
  %4358 = load i32, i32* %4357, align 16, !dbg !369
  %4359 = shl i32 %4358, 30, !dbg !369
  %4360 = or i32 %4356, %4359, !dbg !369
  %4361 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !369
  %4362 = load i32, i32* %4361, align 16, !dbg !369
  %4363 = lshr i32 %4362, 13, !dbg !369
  %4364 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !369
  %4365 = load i32, i32* %4364, align 16, !dbg !369
  %4366 = shl i32 %4365, 19, !dbg !369
  %4367 = or i32 %4363, %4366, !dbg !369
  %4368 = xor i32 %4360, %4367, !dbg !369
  %4369 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !369
  %4370 = load i32, i32* %4369, align 16, !dbg !369
  %4371 = lshr i32 %4370, 22, !dbg !369
  %4372 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !369
  %4373 = load i32, i32* %4372, align 16, !dbg !369
  %4374 = shl i32 %4373, 10, !dbg !369
  %4375 = or i32 %4371, %4374, !dbg !369
  %4376 = xor i32 %4368, %4375, !dbg !369
  %4377 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !369
  %4378 = load i32, i32* %4377, align 16, !dbg !369
  %4379 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !369
  %4380 = load i32, i32* %4379, align 4, !dbg !369
  %4381 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !369
  %4382 = load i32, i32* %4381, align 8, !dbg !369
  %4383 = or i32 %4380, %4382, !dbg !369
  %4384 = and i32 %4378, %4383, !dbg !369
  %4385 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !369
  %4386 = load i32, i32* %4385, align 4, !dbg !369
  %4387 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !369
  %4388 = load i32, i32* %4387, align 8, !dbg !369
  %4389 = and i32 %4386, %4388, !dbg !369
  %4390 = or i32 %4384, %4389, !dbg !369
  %4391 = add i32 %4376, %4390, !dbg !369
  store i32 %4391, i32* %6, align 4, !dbg !369
  %4392 = load i32, i32* %5, align 4, !dbg !369
  %4393 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !369
  %4394 = load i32, i32* %4393, align 4, !dbg !369
  %4395 = add i32 %4394, %4392, !dbg !369
  store i32 %4395, i32* %4393, align 4, !dbg !369
  %4396 = load i32, i32* %5, align 4, !dbg !369
  %4397 = load i32, i32* %6, align 4, !dbg !369
  %4398 = add i32 %4396, %4397, !dbg !369
  %4399 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !369
  store i32 %4398, i32* %4399, align 4, !dbg !369
  %4400 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !370
  %4401 = load i32, i32* %4400, align 8, !dbg !370
  %4402 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !370
  %4403 = load i32, i32* %4402, align 4, !dbg !370
  %4404 = lshr i32 %4403, 6, !dbg !370
  %4405 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !370
  %4406 = load i32, i32* %4405, align 4, !dbg !370
  %4407 = shl i32 %4406, 26, !dbg !370
  %4408 = or i32 %4404, %4407, !dbg !370
  %4409 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !370
  %4410 = load i32, i32* %4409, align 4, !dbg !370
  %4411 = lshr i32 %4410, 11, !dbg !370
  %4412 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !370
  %4413 = load i32, i32* %4412, align 4, !dbg !370
  %4414 = shl i32 %4413, 21, !dbg !370
  %4415 = or i32 %4411, %4414, !dbg !370
  %4416 = xor i32 %4408, %4415, !dbg !370
  %4417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !370
  %4418 = load i32, i32* %4417, align 4, !dbg !370
  %4419 = lshr i32 %4418, 25, !dbg !370
  %4420 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !370
  %4421 = load i32, i32* %4420, align 4, !dbg !370
  %4422 = shl i32 %4421, 7, !dbg !370
  %4423 = or i32 %4419, %4422, !dbg !370
  %4424 = xor i32 %4416, %4423, !dbg !370
  %4425 = add i32 %4401, %4424, !dbg !370
  %4426 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !370
  %4427 = load i32, i32* %4426, align 4, !dbg !370
  %4428 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !370
  %4429 = load i32, i32* %4428, align 16, !dbg !370
  %4430 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !370
  %4431 = load i32, i32* %4430, align 4, !dbg !370
  %4432 = xor i32 %4429, %4431, !dbg !370
  %4433 = and i32 %4427, %4432, !dbg !370
  %4434 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !370
  %4435 = load i32, i32* %4434, align 4, !dbg !370
  %4436 = xor i32 %4433, %4435, !dbg !370
  %4437 = add i32 %4425, %4436, !dbg !370
  %4438 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 49, !dbg !370
  %4439 = load i32, i32* %4438, align 4, !dbg !370
  %4440 = add i32 %4437, %4439, !dbg !370
  %4441 = add i32 %4440, 506948616, !dbg !370
  store i32 %4441, i32* %5, align 4, !dbg !370
  %4442 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !370
  %4443 = load i32, i32* %4442, align 4, !dbg !370
  %4444 = lshr i32 %4443, 2, !dbg !370
  %4445 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !370
  %4446 = load i32, i32* %4445, align 4, !dbg !370
  %4447 = shl i32 %4446, 30, !dbg !370
  %4448 = or i32 %4444, %4447, !dbg !370
  %4449 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !370
  %4450 = load i32, i32* %4449, align 4, !dbg !370
  %4451 = lshr i32 %4450, 13, !dbg !370
  %4452 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !370
  %4453 = load i32, i32* %4452, align 4, !dbg !370
  %4454 = shl i32 %4453, 19, !dbg !370
  %4455 = or i32 %4451, %4454, !dbg !370
  %4456 = xor i32 %4448, %4455, !dbg !370
  %4457 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !370
  %4458 = load i32, i32* %4457, align 4, !dbg !370
  %4459 = lshr i32 %4458, 22, !dbg !370
  %4460 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !370
  %4461 = load i32, i32* %4460, align 4, !dbg !370
  %4462 = shl i32 %4461, 10, !dbg !370
  %4463 = or i32 %4459, %4462, !dbg !370
  %4464 = xor i32 %4456, %4463, !dbg !370
  %4465 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !370
  %4466 = load i32, i32* %4465, align 4, !dbg !370
  %4467 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !370
  %4468 = load i32, i32* %4467, align 16, !dbg !370
  %4469 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !370
  %4470 = load i32, i32* %4469, align 4, !dbg !370
  %4471 = or i32 %4468, %4470, !dbg !370
  %4472 = and i32 %4466, %4471, !dbg !370
  %4473 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !370
  %4474 = load i32, i32* %4473, align 16, !dbg !370
  %4475 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !370
  %4476 = load i32, i32* %4475, align 4, !dbg !370
  %4477 = and i32 %4474, %4476, !dbg !370
  %4478 = or i32 %4472, %4477, !dbg !370
  %4479 = add i32 %4464, %4478, !dbg !370
  store i32 %4479, i32* %6, align 4, !dbg !370
  %4480 = load i32, i32* %5, align 4, !dbg !370
  %4481 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !370
  %4482 = load i32, i32* %4481, align 8, !dbg !370
  %4483 = add i32 %4482, %4480, !dbg !370
  store i32 %4483, i32* %4481, align 8, !dbg !370
  %4484 = load i32, i32* %5, align 4, !dbg !370
  %4485 = load i32, i32* %6, align 4, !dbg !370
  %4486 = add i32 %4484, %4485, !dbg !370
  %4487 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !370
  store i32 %4486, i32* %4487, align 8, !dbg !370
  %4488 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !371
  %4489 = load i32, i32* %4488, align 4, !dbg !371
  %4490 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !371
  %4491 = load i32, i32* %4490, align 8, !dbg !371
  %4492 = lshr i32 %4491, 6, !dbg !371
  %4493 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !371
  %4494 = load i32, i32* %4493, align 8, !dbg !371
  %4495 = shl i32 %4494, 26, !dbg !371
  %4496 = or i32 %4492, %4495, !dbg !371
  %4497 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !371
  %4498 = load i32, i32* %4497, align 8, !dbg !371
  %4499 = lshr i32 %4498, 11, !dbg !371
  %4500 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !371
  %4501 = load i32, i32* %4500, align 8, !dbg !371
  %4502 = shl i32 %4501, 21, !dbg !371
  %4503 = or i32 %4499, %4502, !dbg !371
  %4504 = xor i32 %4496, %4503, !dbg !371
  %4505 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !371
  %4506 = load i32, i32* %4505, align 8, !dbg !371
  %4507 = lshr i32 %4506, 25, !dbg !371
  %4508 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !371
  %4509 = load i32, i32* %4508, align 8, !dbg !371
  %4510 = shl i32 %4509, 7, !dbg !371
  %4511 = or i32 %4507, %4510, !dbg !371
  %4512 = xor i32 %4504, %4511, !dbg !371
  %4513 = add i32 %4489, %4512, !dbg !371
  %4514 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !371
  %4515 = load i32, i32* %4514, align 8, !dbg !371
  %4516 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !371
  %4517 = load i32, i32* %4516, align 4, !dbg !371
  %4518 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !371
  %4519 = load i32, i32* %4518, align 16, !dbg !371
  %4520 = xor i32 %4517, %4519, !dbg !371
  %4521 = and i32 %4515, %4520, !dbg !371
  %4522 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !371
  %4523 = load i32, i32* %4522, align 16, !dbg !371
  %4524 = xor i32 %4521, %4523, !dbg !371
  %4525 = add i32 %4513, %4524, !dbg !371
  %4526 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 50, !dbg !371
  %4527 = load i32, i32* %4526, align 8, !dbg !371
  %4528 = add i32 %4525, %4527, !dbg !371
  %4529 = add i32 %4528, 659060556, !dbg !371
  store i32 %4529, i32* %5, align 4, !dbg !371
  %4530 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !371
  %4531 = load i32, i32* %4530, align 8, !dbg !371
  %4532 = lshr i32 %4531, 2, !dbg !371
  %4533 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !371
  %4534 = load i32, i32* %4533, align 8, !dbg !371
  %4535 = shl i32 %4534, 30, !dbg !371
  %4536 = or i32 %4532, %4535, !dbg !371
  %4537 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !371
  %4538 = load i32, i32* %4537, align 8, !dbg !371
  %4539 = lshr i32 %4538, 13, !dbg !371
  %4540 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !371
  %4541 = load i32, i32* %4540, align 8, !dbg !371
  %4542 = shl i32 %4541, 19, !dbg !371
  %4543 = or i32 %4539, %4542, !dbg !371
  %4544 = xor i32 %4536, %4543, !dbg !371
  %4545 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !371
  %4546 = load i32, i32* %4545, align 8, !dbg !371
  %4547 = lshr i32 %4546, 22, !dbg !371
  %4548 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !371
  %4549 = load i32, i32* %4548, align 8, !dbg !371
  %4550 = shl i32 %4549, 10, !dbg !371
  %4551 = or i32 %4547, %4550, !dbg !371
  %4552 = xor i32 %4544, %4551, !dbg !371
  %4553 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !371
  %4554 = load i32, i32* %4553, align 8, !dbg !371
  %4555 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !371
  %4556 = load i32, i32* %4555, align 4, !dbg !371
  %4557 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !371
  %4558 = load i32, i32* %4557, align 16, !dbg !371
  %4559 = or i32 %4556, %4558, !dbg !371
  %4560 = and i32 %4554, %4559, !dbg !371
  %4561 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !371
  %4562 = load i32, i32* %4561, align 4, !dbg !371
  %4563 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !371
  %4564 = load i32, i32* %4563, align 16, !dbg !371
  %4565 = and i32 %4562, %4564, !dbg !371
  %4566 = or i32 %4560, %4565, !dbg !371
  %4567 = add i32 %4552, %4566, !dbg !371
  store i32 %4567, i32* %6, align 4, !dbg !371
  %4568 = load i32, i32* %5, align 4, !dbg !371
  %4569 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !371
  %4570 = load i32, i32* %4569, align 4, !dbg !371
  %4571 = add i32 %4570, %4568, !dbg !371
  store i32 %4571, i32* %4569, align 4, !dbg !371
  %4572 = load i32, i32* %5, align 4, !dbg !371
  %4573 = load i32, i32* %6, align 4, !dbg !371
  %4574 = add i32 %4572, %4573, !dbg !371
  %4575 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !371
  store i32 %4574, i32* %4575, align 4, !dbg !371
  %4576 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !372
  %4577 = load i32, i32* %4576, align 16, !dbg !372
  %4578 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !372
  %4579 = load i32, i32* %4578, align 4, !dbg !372
  %4580 = lshr i32 %4579, 6, !dbg !372
  %4581 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !372
  %4582 = load i32, i32* %4581, align 4, !dbg !372
  %4583 = shl i32 %4582, 26, !dbg !372
  %4584 = or i32 %4580, %4583, !dbg !372
  %4585 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !372
  %4586 = load i32, i32* %4585, align 4, !dbg !372
  %4587 = lshr i32 %4586, 11, !dbg !372
  %4588 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !372
  %4589 = load i32, i32* %4588, align 4, !dbg !372
  %4590 = shl i32 %4589, 21, !dbg !372
  %4591 = or i32 %4587, %4590, !dbg !372
  %4592 = xor i32 %4584, %4591, !dbg !372
  %4593 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !372
  %4594 = load i32, i32* %4593, align 4, !dbg !372
  %4595 = lshr i32 %4594, 25, !dbg !372
  %4596 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !372
  %4597 = load i32, i32* %4596, align 4, !dbg !372
  %4598 = shl i32 %4597, 7, !dbg !372
  %4599 = or i32 %4595, %4598, !dbg !372
  %4600 = xor i32 %4592, %4599, !dbg !372
  %4601 = add i32 %4577, %4600, !dbg !372
  %4602 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !372
  %4603 = load i32, i32* %4602, align 4, !dbg !372
  %4604 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !372
  %4605 = load i32, i32* %4604, align 8, !dbg !372
  %4606 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !372
  %4607 = load i32, i32* %4606, align 4, !dbg !372
  %4608 = xor i32 %4605, %4607, !dbg !372
  %4609 = and i32 %4603, %4608, !dbg !372
  %4610 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !372
  %4611 = load i32, i32* %4610, align 4, !dbg !372
  %4612 = xor i32 %4609, %4611, !dbg !372
  %4613 = add i32 %4601, %4612, !dbg !372
  %4614 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 51, !dbg !372
  %4615 = load i32, i32* %4614, align 4, !dbg !372
  %4616 = add i32 %4613, %4615, !dbg !372
  %4617 = add i32 %4616, 883997877, !dbg !372
  store i32 %4617, i32* %5, align 4, !dbg !372
  %4618 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !372
  %4619 = load i32, i32* %4618, align 4, !dbg !372
  %4620 = lshr i32 %4619, 2, !dbg !372
  %4621 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !372
  %4622 = load i32, i32* %4621, align 4, !dbg !372
  %4623 = shl i32 %4622, 30, !dbg !372
  %4624 = or i32 %4620, %4623, !dbg !372
  %4625 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !372
  %4626 = load i32, i32* %4625, align 4, !dbg !372
  %4627 = lshr i32 %4626, 13, !dbg !372
  %4628 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !372
  %4629 = load i32, i32* %4628, align 4, !dbg !372
  %4630 = shl i32 %4629, 19, !dbg !372
  %4631 = or i32 %4627, %4630, !dbg !372
  %4632 = xor i32 %4624, %4631, !dbg !372
  %4633 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !372
  %4634 = load i32, i32* %4633, align 4, !dbg !372
  %4635 = lshr i32 %4634, 22, !dbg !372
  %4636 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !372
  %4637 = load i32, i32* %4636, align 4, !dbg !372
  %4638 = shl i32 %4637, 10, !dbg !372
  %4639 = or i32 %4635, %4638, !dbg !372
  %4640 = xor i32 %4632, %4639, !dbg !372
  %4641 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !372
  %4642 = load i32, i32* %4641, align 4, !dbg !372
  %4643 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !372
  %4644 = load i32, i32* %4643, align 8, !dbg !372
  %4645 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !372
  %4646 = load i32, i32* %4645, align 4, !dbg !372
  %4647 = or i32 %4644, %4646, !dbg !372
  %4648 = and i32 %4642, %4647, !dbg !372
  %4649 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !372
  %4650 = load i32, i32* %4649, align 8, !dbg !372
  %4651 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !372
  %4652 = load i32, i32* %4651, align 4, !dbg !372
  %4653 = and i32 %4650, %4652, !dbg !372
  %4654 = or i32 %4648, %4653, !dbg !372
  %4655 = add i32 %4640, %4654, !dbg !372
  store i32 %4655, i32* %6, align 4, !dbg !372
  %4656 = load i32, i32* %5, align 4, !dbg !372
  %4657 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !372
  %4658 = load i32, i32* %4657, align 16, !dbg !372
  %4659 = add i32 %4658, %4656, !dbg !372
  store i32 %4659, i32* %4657, align 16, !dbg !372
  %4660 = load i32, i32* %5, align 4, !dbg !372
  %4661 = load i32, i32* %6, align 4, !dbg !372
  %4662 = add i32 %4660, %4661, !dbg !372
  %4663 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !372
  store i32 %4662, i32* %4663, align 16, !dbg !372
  %4664 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !373
  %4665 = load i32, i32* %4664, align 4, !dbg !373
  %4666 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !373
  %4667 = load i32, i32* %4666, align 16, !dbg !373
  %4668 = lshr i32 %4667, 6, !dbg !373
  %4669 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !373
  %4670 = load i32, i32* %4669, align 16, !dbg !373
  %4671 = shl i32 %4670, 26, !dbg !373
  %4672 = or i32 %4668, %4671, !dbg !373
  %4673 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !373
  %4674 = load i32, i32* %4673, align 16, !dbg !373
  %4675 = lshr i32 %4674, 11, !dbg !373
  %4676 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !373
  %4677 = load i32, i32* %4676, align 16, !dbg !373
  %4678 = shl i32 %4677, 21, !dbg !373
  %4679 = or i32 %4675, %4678, !dbg !373
  %4680 = xor i32 %4672, %4679, !dbg !373
  %4681 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !373
  %4682 = load i32, i32* %4681, align 16, !dbg !373
  %4683 = lshr i32 %4682, 25, !dbg !373
  %4684 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !373
  %4685 = load i32, i32* %4684, align 16, !dbg !373
  %4686 = shl i32 %4685, 7, !dbg !373
  %4687 = or i32 %4683, %4686, !dbg !373
  %4688 = xor i32 %4680, %4687, !dbg !373
  %4689 = add i32 %4665, %4688, !dbg !373
  %4690 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !373
  %4691 = load i32, i32* %4690, align 16, !dbg !373
  %4692 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !373
  %4693 = load i32, i32* %4692, align 4, !dbg !373
  %4694 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !373
  %4695 = load i32, i32* %4694, align 8, !dbg !373
  %4696 = xor i32 %4693, %4695, !dbg !373
  %4697 = and i32 %4691, %4696, !dbg !373
  %4698 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !373
  %4699 = load i32, i32* %4698, align 8, !dbg !373
  %4700 = xor i32 %4697, %4699, !dbg !373
  %4701 = add i32 %4689, %4700, !dbg !373
  %4702 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 52, !dbg !373
  %4703 = load i32, i32* %4702, align 16, !dbg !373
  %4704 = add i32 %4701, %4703, !dbg !373
  %4705 = add i32 %4704, 958139571, !dbg !373
  store i32 %4705, i32* %5, align 4, !dbg !373
  %4706 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !373
  %4707 = load i32, i32* %4706, align 16, !dbg !373
  %4708 = lshr i32 %4707, 2, !dbg !373
  %4709 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !373
  %4710 = load i32, i32* %4709, align 16, !dbg !373
  %4711 = shl i32 %4710, 30, !dbg !373
  %4712 = or i32 %4708, %4711, !dbg !373
  %4713 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !373
  %4714 = load i32, i32* %4713, align 16, !dbg !373
  %4715 = lshr i32 %4714, 13, !dbg !373
  %4716 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !373
  %4717 = load i32, i32* %4716, align 16, !dbg !373
  %4718 = shl i32 %4717, 19, !dbg !373
  %4719 = or i32 %4715, %4718, !dbg !373
  %4720 = xor i32 %4712, %4719, !dbg !373
  %4721 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !373
  %4722 = load i32, i32* %4721, align 16, !dbg !373
  %4723 = lshr i32 %4722, 22, !dbg !373
  %4724 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !373
  %4725 = load i32, i32* %4724, align 16, !dbg !373
  %4726 = shl i32 %4725, 10, !dbg !373
  %4727 = or i32 %4723, %4726, !dbg !373
  %4728 = xor i32 %4720, %4727, !dbg !373
  %4729 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !373
  %4730 = load i32, i32* %4729, align 16, !dbg !373
  %4731 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !373
  %4732 = load i32, i32* %4731, align 4, !dbg !373
  %4733 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !373
  %4734 = load i32, i32* %4733, align 8, !dbg !373
  %4735 = or i32 %4732, %4734, !dbg !373
  %4736 = and i32 %4730, %4735, !dbg !373
  %4737 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !373
  %4738 = load i32, i32* %4737, align 4, !dbg !373
  %4739 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !373
  %4740 = load i32, i32* %4739, align 8, !dbg !373
  %4741 = and i32 %4738, %4740, !dbg !373
  %4742 = or i32 %4736, %4741, !dbg !373
  %4743 = add i32 %4728, %4742, !dbg !373
  store i32 %4743, i32* %6, align 4, !dbg !373
  %4744 = load i32, i32* %5, align 4, !dbg !373
  %4745 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !373
  %4746 = load i32, i32* %4745, align 4, !dbg !373
  %4747 = add i32 %4746, %4744, !dbg !373
  store i32 %4747, i32* %4745, align 4, !dbg !373
  %4748 = load i32, i32* %5, align 4, !dbg !373
  %4749 = load i32, i32* %6, align 4, !dbg !373
  %4750 = add i32 %4748, %4749, !dbg !373
  %4751 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !373
  store i32 %4750, i32* %4751, align 4, !dbg !373
  %4752 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !374
  %4753 = load i32, i32* %4752, align 8, !dbg !374
  %4754 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !374
  %4755 = load i32, i32* %4754, align 4, !dbg !374
  %4756 = lshr i32 %4755, 6, !dbg !374
  %4757 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !374
  %4758 = load i32, i32* %4757, align 4, !dbg !374
  %4759 = shl i32 %4758, 26, !dbg !374
  %4760 = or i32 %4756, %4759, !dbg !374
  %4761 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !374
  %4762 = load i32, i32* %4761, align 4, !dbg !374
  %4763 = lshr i32 %4762, 11, !dbg !374
  %4764 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !374
  %4765 = load i32, i32* %4764, align 4, !dbg !374
  %4766 = shl i32 %4765, 21, !dbg !374
  %4767 = or i32 %4763, %4766, !dbg !374
  %4768 = xor i32 %4760, %4767, !dbg !374
  %4769 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !374
  %4770 = load i32, i32* %4769, align 4, !dbg !374
  %4771 = lshr i32 %4770, 25, !dbg !374
  %4772 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !374
  %4773 = load i32, i32* %4772, align 4, !dbg !374
  %4774 = shl i32 %4773, 7, !dbg !374
  %4775 = or i32 %4771, %4774, !dbg !374
  %4776 = xor i32 %4768, %4775, !dbg !374
  %4777 = add i32 %4753, %4776, !dbg !374
  %4778 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !374
  %4779 = load i32, i32* %4778, align 4, !dbg !374
  %4780 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !374
  %4781 = load i32, i32* %4780, align 16, !dbg !374
  %4782 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !374
  %4783 = load i32, i32* %4782, align 4, !dbg !374
  %4784 = xor i32 %4781, %4783, !dbg !374
  %4785 = and i32 %4779, %4784, !dbg !374
  %4786 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !374
  %4787 = load i32, i32* %4786, align 4, !dbg !374
  %4788 = xor i32 %4785, %4787, !dbg !374
  %4789 = add i32 %4777, %4788, !dbg !374
  %4790 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 53, !dbg !374
  %4791 = load i32, i32* %4790, align 4, !dbg !374
  %4792 = add i32 %4789, %4791, !dbg !374
  %4793 = add i32 %4792, 1322822218, !dbg !374
  store i32 %4793, i32* %5, align 4, !dbg !374
  %4794 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !374
  %4795 = load i32, i32* %4794, align 4, !dbg !374
  %4796 = lshr i32 %4795, 2, !dbg !374
  %4797 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !374
  %4798 = load i32, i32* %4797, align 4, !dbg !374
  %4799 = shl i32 %4798, 30, !dbg !374
  %4800 = or i32 %4796, %4799, !dbg !374
  %4801 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !374
  %4802 = load i32, i32* %4801, align 4, !dbg !374
  %4803 = lshr i32 %4802, 13, !dbg !374
  %4804 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !374
  %4805 = load i32, i32* %4804, align 4, !dbg !374
  %4806 = shl i32 %4805, 19, !dbg !374
  %4807 = or i32 %4803, %4806, !dbg !374
  %4808 = xor i32 %4800, %4807, !dbg !374
  %4809 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !374
  %4810 = load i32, i32* %4809, align 4, !dbg !374
  %4811 = lshr i32 %4810, 22, !dbg !374
  %4812 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !374
  %4813 = load i32, i32* %4812, align 4, !dbg !374
  %4814 = shl i32 %4813, 10, !dbg !374
  %4815 = or i32 %4811, %4814, !dbg !374
  %4816 = xor i32 %4808, %4815, !dbg !374
  %4817 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !374
  %4818 = load i32, i32* %4817, align 4, !dbg !374
  %4819 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !374
  %4820 = load i32, i32* %4819, align 16, !dbg !374
  %4821 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !374
  %4822 = load i32, i32* %4821, align 4, !dbg !374
  %4823 = or i32 %4820, %4822, !dbg !374
  %4824 = and i32 %4818, %4823, !dbg !374
  %4825 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !374
  %4826 = load i32, i32* %4825, align 16, !dbg !374
  %4827 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !374
  %4828 = load i32, i32* %4827, align 4, !dbg !374
  %4829 = and i32 %4826, %4828, !dbg !374
  %4830 = or i32 %4824, %4829, !dbg !374
  %4831 = add i32 %4816, %4830, !dbg !374
  store i32 %4831, i32* %6, align 4, !dbg !374
  %4832 = load i32, i32* %5, align 4, !dbg !374
  %4833 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !374
  %4834 = load i32, i32* %4833, align 8, !dbg !374
  %4835 = add i32 %4834, %4832, !dbg !374
  store i32 %4835, i32* %4833, align 8, !dbg !374
  %4836 = load i32, i32* %5, align 4, !dbg !374
  %4837 = load i32, i32* %6, align 4, !dbg !374
  %4838 = add i32 %4836, %4837, !dbg !374
  %4839 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !374
  store i32 %4838, i32* %4839, align 8, !dbg !374
  %4840 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !375
  %4841 = load i32, i32* %4840, align 4, !dbg !375
  %4842 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !375
  %4843 = load i32, i32* %4842, align 8, !dbg !375
  %4844 = lshr i32 %4843, 6, !dbg !375
  %4845 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !375
  %4846 = load i32, i32* %4845, align 8, !dbg !375
  %4847 = shl i32 %4846, 26, !dbg !375
  %4848 = or i32 %4844, %4847, !dbg !375
  %4849 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !375
  %4850 = load i32, i32* %4849, align 8, !dbg !375
  %4851 = lshr i32 %4850, 11, !dbg !375
  %4852 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !375
  %4853 = load i32, i32* %4852, align 8, !dbg !375
  %4854 = shl i32 %4853, 21, !dbg !375
  %4855 = or i32 %4851, %4854, !dbg !375
  %4856 = xor i32 %4848, %4855, !dbg !375
  %4857 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !375
  %4858 = load i32, i32* %4857, align 8, !dbg !375
  %4859 = lshr i32 %4858, 25, !dbg !375
  %4860 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !375
  %4861 = load i32, i32* %4860, align 8, !dbg !375
  %4862 = shl i32 %4861, 7, !dbg !375
  %4863 = or i32 %4859, %4862, !dbg !375
  %4864 = xor i32 %4856, %4863, !dbg !375
  %4865 = add i32 %4841, %4864, !dbg !375
  %4866 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !375
  %4867 = load i32, i32* %4866, align 8, !dbg !375
  %4868 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !375
  %4869 = load i32, i32* %4868, align 4, !dbg !375
  %4870 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !375
  %4871 = load i32, i32* %4870, align 16, !dbg !375
  %4872 = xor i32 %4869, %4871, !dbg !375
  %4873 = and i32 %4867, %4872, !dbg !375
  %4874 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !375
  %4875 = load i32, i32* %4874, align 16, !dbg !375
  %4876 = xor i32 %4873, %4875, !dbg !375
  %4877 = add i32 %4865, %4876, !dbg !375
  %4878 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 54, !dbg !375
  %4879 = load i32, i32* %4878, align 8, !dbg !375
  %4880 = add i32 %4877, %4879, !dbg !375
  %4881 = add i32 %4880, 1537002063, !dbg !375
  store i32 %4881, i32* %5, align 4, !dbg !375
  %4882 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !375
  %4883 = load i32, i32* %4882, align 8, !dbg !375
  %4884 = lshr i32 %4883, 2, !dbg !375
  %4885 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !375
  %4886 = load i32, i32* %4885, align 8, !dbg !375
  %4887 = shl i32 %4886, 30, !dbg !375
  %4888 = or i32 %4884, %4887, !dbg !375
  %4889 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !375
  %4890 = load i32, i32* %4889, align 8, !dbg !375
  %4891 = lshr i32 %4890, 13, !dbg !375
  %4892 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !375
  %4893 = load i32, i32* %4892, align 8, !dbg !375
  %4894 = shl i32 %4893, 19, !dbg !375
  %4895 = or i32 %4891, %4894, !dbg !375
  %4896 = xor i32 %4888, %4895, !dbg !375
  %4897 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !375
  %4898 = load i32, i32* %4897, align 8, !dbg !375
  %4899 = lshr i32 %4898, 22, !dbg !375
  %4900 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !375
  %4901 = load i32, i32* %4900, align 8, !dbg !375
  %4902 = shl i32 %4901, 10, !dbg !375
  %4903 = or i32 %4899, %4902, !dbg !375
  %4904 = xor i32 %4896, %4903, !dbg !375
  %4905 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !375
  %4906 = load i32, i32* %4905, align 8, !dbg !375
  %4907 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !375
  %4908 = load i32, i32* %4907, align 4, !dbg !375
  %4909 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !375
  %4910 = load i32, i32* %4909, align 16, !dbg !375
  %4911 = or i32 %4908, %4910, !dbg !375
  %4912 = and i32 %4906, %4911, !dbg !375
  %4913 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !375
  %4914 = load i32, i32* %4913, align 4, !dbg !375
  %4915 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !375
  %4916 = load i32, i32* %4915, align 16, !dbg !375
  %4917 = and i32 %4914, %4916, !dbg !375
  %4918 = or i32 %4912, %4917, !dbg !375
  %4919 = add i32 %4904, %4918, !dbg !375
  store i32 %4919, i32* %6, align 4, !dbg !375
  %4920 = load i32, i32* %5, align 4, !dbg !375
  %4921 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !375
  %4922 = load i32, i32* %4921, align 4, !dbg !375
  %4923 = add i32 %4922, %4920, !dbg !375
  store i32 %4923, i32* %4921, align 4, !dbg !375
  %4924 = load i32, i32* %5, align 4, !dbg !375
  %4925 = load i32, i32* %6, align 4, !dbg !375
  %4926 = add i32 %4924, %4925, !dbg !375
  %4927 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !375
  store i32 %4926, i32* %4927, align 4, !dbg !375
  %4928 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !376
  %4929 = load i32, i32* %4928, align 16, !dbg !376
  %4930 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !376
  %4931 = load i32, i32* %4930, align 4, !dbg !376
  %4932 = lshr i32 %4931, 6, !dbg !376
  %4933 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !376
  %4934 = load i32, i32* %4933, align 4, !dbg !376
  %4935 = shl i32 %4934, 26, !dbg !376
  %4936 = or i32 %4932, %4935, !dbg !376
  %4937 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !376
  %4938 = load i32, i32* %4937, align 4, !dbg !376
  %4939 = lshr i32 %4938, 11, !dbg !376
  %4940 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !376
  %4941 = load i32, i32* %4940, align 4, !dbg !376
  %4942 = shl i32 %4941, 21, !dbg !376
  %4943 = or i32 %4939, %4942, !dbg !376
  %4944 = xor i32 %4936, %4943, !dbg !376
  %4945 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !376
  %4946 = load i32, i32* %4945, align 4, !dbg !376
  %4947 = lshr i32 %4946, 25, !dbg !376
  %4948 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !376
  %4949 = load i32, i32* %4948, align 4, !dbg !376
  %4950 = shl i32 %4949, 7, !dbg !376
  %4951 = or i32 %4947, %4950, !dbg !376
  %4952 = xor i32 %4944, %4951, !dbg !376
  %4953 = add i32 %4929, %4952, !dbg !376
  %4954 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !376
  %4955 = load i32, i32* %4954, align 4, !dbg !376
  %4956 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !376
  %4957 = load i32, i32* %4956, align 8, !dbg !376
  %4958 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !376
  %4959 = load i32, i32* %4958, align 4, !dbg !376
  %4960 = xor i32 %4957, %4959, !dbg !376
  %4961 = and i32 %4955, %4960, !dbg !376
  %4962 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !376
  %4963 = load i32, i32* %4962, align 4, !dbg !376
  %4964 = xor i32 %4961, %4963, !dbg !376
  %4965 = add i32 %4953, %4964, !dbg !376
  %4966 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 55, !dbg !376
  %4967 = load i32, i32* %4966, align 4, !dbg !376
  %4968 = add i32 %4965, %4967, !dbg !376
  %4969 = add i32 %4968, 1747873779, !dbg !376
  store i32 %4969, i32* %5, align 4, !dbg !376
  %4970 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !376
  %4971 = load i32, i32* %4970, align 4, !dbg !376
  %4972 = lshr i32 %4971, 2, !dbg !376
  %4973 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !376
  %4974 = load i32, i32* %4973, align 4, !dbg !376
  %4975 = shl i32 %4974, 30, !dbg !376
  %4976 = or i32 %4972, %4975, !dbg !376
  %4977 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !376
  %4978 = load i32, i32* %4977, align 4, !dbg !376
  %4979 = lshr i32 %4978, 13, !dbg !376
  %4980 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !376
  %4981 = load i32, i32* %4980, align 4, !dbg !376
  %4982 = shl i32 %4981, 19, !dbg !376
  %4983 = or i32 %4979, %4982, !dbg !376
  %4984 = xor i32 %4976, %4983, !dbg !376
  %4985 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !376
  %4986 = load i32, i32* %4985, align 4, !dbg !376
  %4987 = lshr i32 %4986, 22, !dbg !376
  %4988 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !376
  %4989 = load i32, i32* %4988, align 4, !dbg !376
  %4990 = shl i32 %4989, 10, !dbg !376
  %4991 = or i32 %4987, %4990, !dbg !376
  %4992 = xor i32 %4984, %4991, !dbg !376
  %4993 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !376
  %4994 = load i32, i32* %4993, align 4, !dbg !376
  %4995 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !376
  %4996 = load i32, i32* %4995, align 8, !dbg !376
  %4997 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !376
  %4998 = load i32, i32* %4997, align 4, !dbg !376
  %4999 = or i32 %4996, %4998, !dbg !376
  %5000 = and i32 %4994, %4999, !dbg !376
  %5001 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !376
  %5002 = load i32, i32* %5001, align 8, !dbg !376
  %5003 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !376
  %5004 = load i32, i32* %5003, align 4, !dbg !376
  %5005 = and i32 %5002, %5004, !dbg !376
  %5006 = or i32 %5000, %5005, !dbg !376
  %5007 = add i32 %4992, %5006, !dbg !376
  store i32 %5007, i32* %6, align 4, !dbg !376
  %5008 = load i32, i32* %5, align 4, !dbg !376
  %5009 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !376
  %5010 = load i32, i32* %5009, align 16, !dbg !376
  %5011 = add i32 %5010, %5008, !dbg !376
  store i32 %5011, i32* %5009, align 16, !dbg !376
  %5012 = load i32, i32* %5, align 4, !dbg !376
  %5013 = load i32, i32* %6, align 4, !dbg !376
  %5014 = add i32 %5012, %5013, !dbg !376
  %5015 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !376
  store i32 %5014, i32* %5015, align 16, !dbg !376
  %5016 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !377
  %5017 = load i32, i32* %5016, align 4, !dbg !377
  %5018 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !377
  %5019 = load i32, i32* %5018, align 16, !dbg !377
  %5020 = lshr i32 %5019, 6, !dbg !377
  %5021 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !377
  %5022 = load i32, i32* %5021, align 16, !dbg !377
  %5023 = shl i32 %5022, 26, !dbg !377
  %5024 = or i32 %5020, %5023, !dbg !377
  %5025 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !377
  %5026 = load i32, i32* %5025, align 16, !dbg !377
  %5027 = lshr i32 %5026, 11, !dbg !377
  %5028 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !377
  %5029 = load i32, i32* %5028, align 16, !dbg !377
  %5030 = shl i32 %5029, 21, !dbg !377
  %5031 = or i32 %5027, %5030, !dbg !377
  %5032 = xor i32 %5024, %5031, !dbg !377
  %5033 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !377
  %5034 = load i32, i32* %5033, align 16, !dbg !377
  %5035 = lshr i32 %5034, 25, !dbg !377
  %5036 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !377
  %5037 = load i32, i32* %5036, align 16, !dbg !377
  %5038 = shl i32 %5037, 7, !dbg !377
  %5039 = or i32 %5035, %5038, !dbg !377
  %5040 = xor i32 %5032, %5039, !dbg !377
  %5041 = add i32 %5017, %5040, !dbg !377
  %5042 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !377
  %5043 = load i32, i32* %5042, align 16, !dbg !377
  %5044 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !377
  %5045 = load i32, i32* %5044, align 4, !dbg !377
  %5046 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !377
  %5047 = load i32, i32* %5046, align 8, !dbg !377
  %5048 = xor i32 %5045, %5047, !dbg !377
  %5049 = and i32 %5043, %5048, !dbg !377
  %5050 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !377
  %5051 = load i32, i32* %5050, align 8, !dbg !377
  %5052 = xor i32 %5049, %5051, !dbg !377
  %5053 = add i32 %5041, %5052, !dbg !377
  %5054 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 56, !dbg !377
  %5055 = load i32, i32* %5054, align 16, !dbg !377
  %5056 = add i32 %5053, %5055, !dbg !377
  %5057 = add i32 %5056, 1955562222, !dbg !377
  store i32 %5057, i32* %5, align 4, !dbg !377
  %5058 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !377
  %5059 = load i32, i32* %5058, align 16, !dbg !377
  %5060 = lshr i32 %5059, 2, !dbg !377
  %5061 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !377
  %5062 = load i32, i32* %5061, align 16, !dbg !377
  %5063 = shl i32 %5062, 30, !dbg !377
  %5064 = or i32 %5060, %5063, !dbg !377
  %5065 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !377
  %5066 = load i32, i32* %5065, align 16, !dbg !377
  %5067 = lshr i32 %5066, 13, !dbg !377
  %5068 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !377
  %5069 = load i32, i32* %5068, align 16, !dbg !377
  %5070 = shl i32 %5069, 19, !dbg !377
  %5071 = or i32 %5067, %5070, !dbg !377
  %5072 = xor i32 %5064, %5071, !dbg !377
  %5073 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !377
  %5074 = load i32, i32* %5073, align 16, !dbg !377
  %5075 = lshr i32 %5074, 22, !dbg !377
  %5076 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !377
  %5077 = load i32, i32* %5076, align 16, !dbg !377
  %5078 = shl i32 %5077, 10, !dbg !377
  %5079 = or i32 %5075, %5078, !dbg !377
  %5080 = xor i32 %5072, %5079, !dbg !377
  %5081 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !377
  %5082 = load i32, i32* %5081, align 16, !dbg !377
  %5083 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !377
  %5084 = load i32, i32* %5083, align 4, !dbg !377
  %5085 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !377
  %5086 = load i32, i32* %5085, align 8, !dbg !377
  %5087 = or i32 %5084, %5086, !dbg !377
  %5088 = and i32 %5082, %5087, !dbg !377
  %5089 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !377
  %5090 = load i32, i32* %5089, align 4, !dbg !377
  %5091 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !377
  %5092 = load i32, i32* %5091, align 8, !dbg !377
  %5093 = and i32 %5090, %5092, !dbg !377
  %5094 = or i32 %5088, %5093, !dbg !377
  %5095 = add i32 %5080, %5094, !dbg !377
  store i32 %5095, i32* %6, align 4, !dbg !377
  %5096 = load i32, i32* %5, align 4, !dbg !377
  %5097 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !377
  %5098 = load i32, i32* %5097, align 4, !dbg !377
  %5099 = add i32 %5098, %5096, !dbg !377
  store i32 %5099, i32* %5097, align 4, !dbg !377
  %5100 = load i32, i32* %5, align 4, !dbg !377
  %5101 = load i32, i32* %6, align 4, !dbg !377
  %5102 = add i32 %5100, %5101, !dbg !377
  %5103 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !377
  store i32 %5102, i32* %5103, align 4, !dbg !377
  %5104 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !378
  %5105 = load i32, i32* %5104, align 8, !dbg !378
  %5106 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !378
  %5107 = load i32, i32* %5106, align 4, !dbg !378
  %5108 = lshr i32 %5107, 6, !dbg !378
  %5109 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !378
  %5110 = load i32, i32* %5109, align 4, !dbg !378
  %5111 = shl i32 %5110, 26, !dbg !378
  %5112 = or i32 %5108, %5111, !dbg !378
  %5113 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !378
  %5114 = load i32, i32* %5113, align 4, !dbg !378
  %5115 = lshr i32 %5114, 11, !dbg !378
  %5116 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !378
  %5117 = load i32, i32* %5116, align 4, !dbg !378
  %5118 = shl i32 %5117, 21, !dbg !378
  %5119 = or i32 %5115, %5118, !dbg !378
  %5120 = xor i32 %5112, %5119, !dbg !378
  %5121 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !378
  %5122 = load i32, i32* %5121, align 4, !dbg !378
  %5123 = lshr i32 %5122, 25, !dbg !378
  %5124 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !378
  %5125 = load i32, i32* %5124, align 4, !dbg !378
  %5126 = shl i32 %5125, 7, !dbg !378
  %5127 = or i32 %5123, %5126, !dbg !378
  %5128 = xor i32 %5120, %5127, !dbg !378
  %5129 = add i32 %5105, %5128, !dbg !378
  %5130 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !378
  %5131 = load i32, i32* %5130, align 4, !dbg !378
  %5132 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !378
  %5133 = load i32, i32* %5132, align 16, !dbg !378
  %5134 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !378
  %5135 = load i32, i32* %5134, align 4, !dbg !378
  %5136 = xor i32 %5133, %5135, !dbg !378
  %5137 = and i32 %5131, %5136, !dbg !378
  %5138 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !378
  %5139 = load i32, i32* %5138, align 4, !dbg !378
  %5140 = xor i32 %5137, %5139, !dbg !378
  %5141 = add i32 %5129, %5140, !dbg !378
  %5142 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 57, !dbg !378
  %5143 = load i32, i32* %5142, align 4, !dbg !378
  %5144 = add i32 %5141, %5143, !dbg !378
  %5145 = add i32 %5144, 2024104815, !dbg !378
  store i32 %5145, i32* %5, align 4, !dbg !378
  %5146 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !378
  %5147 = load i32, i32* %5146, align 4, !dbg !378
  %5148 = lshr i32 %5147, 2, !dbg !378
  %5149 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !378
  %5150 = load i32, i32* %5149, align 4, !dbg !378
  %5151 = shl i32 %5150, 30, !dbg !378
  %5152 = or i32 %5148, %5151, !dbg !378
  %5153 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !378
  %5154 = load i32, i32* %5153, align 4, !dbg !378
  %5155 = lshr i32 %5154, 13, !dbg !378
  %5156 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !378
  %5157 = load i32, i32* %5156, align 4, !dbg !378
  %5158 = shl i32 %5157, 19, !dbg !378
  %5159 = or i32 %5155, %5158, !dbg !378
  %5160 = xor i32 %5152, %5159, !dbg !378
  %5161 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !378
  %5162 = load i32, i32* %5161, align 4, !dbg !378
  %5163 = lshr i32 %5162, 22, !dbg !378
  %5164 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !378
  %5165 = load i32, i32* %5164, align 4, !dbg !378
  %5166 = shl i32 %5165, 10, !dbg !378
  %5167 = or i32 %5163, %5166, !dbg !378
  %5168 = xor i32 %5160, %5167, !dbg !378
  %5169 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !378
  %5170 = load i32, i32* %5169, align 4, !dbg !378
  %5171 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !378
  %5172 = load i32, i32* %5171, align 16, !dbg !378
  %5173 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !378
  %5174 = load i32, i32* %5173, align 4, !dbg !378
  %5175 = or i32 %5172, %5174, !dbg !378
  %5176 = and i32 %5170, %5175, !dbg !378
  %5177 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !378
  %5178 = load i32, i32* %5177, align 16, !dbg !378
  %5179 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !378
  %5180 = load i32, i32* %5179, align 4, !dbg !378
  %5181 = and i32 %5178, %5180, !dbg !378
  %5182 = or i32 %5176, %5181, !dbg !378
  %5183 = add i32 %5168, %5182, !dbg !378
  store i32 %5183, i32* %6, align 4, !dbg !378
  %5184 = load i32, i32* %5, align 4, !dbg !378
  %5185 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !378
  %5186 = load i32, i32* %5185, align 8, !dbg !378
  %5187 = add i32 %5186, %5184, !dbg !378
  store i32 %5187, i32* %5185, align 8, !dbg !378
  %5188 = load i32, i32* %5, align 4, !dbg !378
  %5189 = load i32, i32* %6, align 4, !dbg !378
  %5190 = add i32 %5188, %5189, !dbg !378
  %5191 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !378
  store i32 %5190, i32* %5191, align 8, !dbg !378
  %5192 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !379
  %5193 = load i32, i32* %5192, align 4, !dbg !379
  %5194 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !379
  %5195 = load i32, i32* %5194, align 8, !dbg !379
  %5196 = lshr i32 %5195, 6, !dbg !379
  %5197 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !379
  %5198 = load i32, i32* %5197, align 8, !dbg !379
  %5199 = shl i32 %5198, 26, !dbg !379
  %5200 = or i32 %5196, %5199, !dbg !379
  %5201 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !379
  %5202 = load i32, i32* %5201, align 8, !dbg !379
  %5203 = lshr i32 %5202, 11, !dbg !379
  %5204 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !379
  %5205 = load i32, i32* %5204, align 8, !dbg !379
  %5206 = shl i32 %5205, 21, !dbg !379
  %5207 = or i32 %5203, %5206, !dbg !379
  %5208 = xor i32 %5200, %5207, !dbg !379
  %5209 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !379
  %5210 = load i32, i32* %5209, align 8, !dbg !379
  %5211 = lshr i32 %5210, 25, !dbg !379
  %5212 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !379
  %5213 = load i32, i32* %5212, align 8, !dbg !379
  %5214 = shl i32 %5213, 7, !dbg !379
  %5215 = or i32 %5211, %5214, !dbg !379
  %5216 = xor i32 %5208, %5215, !dbg !379
  %5217 = add i32 %5193, %5216, !dbg !379
  %5218 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !379
  %5219 = load i32, i32* %5218, align 8, !dbg !379
  %5220 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !379
  %5221 = load i32, i32* %5220, align 4, !dbg !379
  %5222 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !379
  %5223 = load i32, i32* %5222, align 16, !dbg !379
  %5224 = xor i32 %5221, %5223, !dbg !379
  %5225 = and i32 %5219, %5224, !dbg !379
  %5226 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !379
  %5227 = load i32, i32* %5226, align 16, !dbg !379
  %5228 = xor i32 %5225, %5227, !dbg !379
  %5229 = add i32 %5217, %5228, !dbg !379
  %5230 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 58, !dbg !379
  %5231 = load i32, i32* %5230, align 8, !dbg !379
  %5232 = add i32 %5229, %5231, !dbg !379
  %5233 = add i32 %5232, -2067236844, !dbg !379
  store i32 %5233, i32* %5, align 4, !dbg !379
  %5234 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !379
  %5235 = load i32, i32* %5234, align 8, !dbg !379
  %5236 = lshr i32 %5235, 2, !dbg !379
  %5237 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !379
  %5238 = load i32, i32* %5237, align 8, !dbg !379
  %5239 = shl i32 %5238, 30, !dbg !379
  %5240 = or i32 %5236, %5239, !dbg !379
  %5241 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !379
  %5242 = load i32, i32* %5241, align 8, !dbg !379
  %5243 = lshr i32 %5242, 13, !dbg !379
  %5244 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !379
  %5245 = load i32, i32* %5244, align 8, !dbg !379
  %5246 = shl i32 %5245, 19, !dbg !379
  %5247 = or i32 %5243, %5246, !dbg !379
  %5248 = xor i32 %5240, %5247, !dbg !379
  %5249 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !379
  %5250 = load i32, i32* %5249, align 8, !dbg !379
  %5251 = lshr i32 %5250, 22, !dbg !379
  %5252 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !379
  %5253 = load i32, i32* %5252, align 8, !dbg !379
  %5254 = shl i32 %5253, 10, !dbg !379
  %5255 = or i32 %5251, %5254, !dbg !379
  %5256 = xor i32 %5248, %5255, !dbg !379
  %5257 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !379
  %5258 = load i32, i32* %5257, align 8, !dbg !379
  %5259 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !379
  %5260 = load i32, i32* %5259, align 4, !dbg !379
  %5261 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !379
  %5262 = load i32, i32* %5261, align 16, !dbg !379
  %5263 = or i32 %5260, %5262, !dbg !379
  %5264 = and i32 %5258, %5263, !dbg !379
  %5265 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !379
  %5266 = load i32, i32* %5265, align 4, !dbg !379
  %5267 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !379
  %5268 = load i32, i32* %5267, align 16, !dbg !379
  %5269 = and i32 %5266, %5268, !dbg !379
  %5270 = or i32 %5264, %5269, !dbg !379
  %5271 = add i32 %5256, %5270, !dbg !379
  store i32 %5271, i32* %6, align 4, !dbg !379
  %5272 = load i32, i32* %5, align 4, !dbg !379
  %5273 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !379
  %5274 = load i32, i32* %5273, align 4, !dbg !379
  %5275 = add i32 %5274, %5272, !dbg !379
  store i32 %5275, i32* %5273, align 4, !dbg !379
  %5276 = load i32, i32* %5, align 4, !dbg !379
  %5277 = load i32, i32* %6, align 4, !dbg !379
  %5278 = add i32 %5276, %5277, !dbg !379
  %5279 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !379
  store i32 %5278, i32* %5279, align 4, !dbg !379
  %5280 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !380
  %5281 = load i32, i32* %5280, align 16, !dbg !380
  %5282 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !380
  %5283 = load i32, i32* %5282, align 4, !dbg !380
  %5284 = lshr i32 %5283, 6, !dbg !380
  %5285 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !380
  %5286 = load i32, i32* %5285, align 4, !dbg !380
  %5287 = shl i32 %5286, 26, !dbg !380
  %5288 = or i32 %5284, %5287, !dbg !380
  %5289 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !380
  %5290 = load i32, i32* %5289, align 4, !dbg !380
  %5291 = lshr i32 %5290, 11, !dbg !380
  %5292 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !380
  %5293 = load i32, i32* %5292, align 4, !dbg !380
  %5294 = shl i32 %5293, 21, !dbg !380
  %5295 = or i32 %5291, %5294, !dbg !380
  %5296 = xor i32 %5288, %5295, !dbg !380
  %5297 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !380
  %5298 = load i32, i32* %5297, align 4, !dbg !380
  %5299 = lshr i32 %5298, 25, !dbg !380
  %5300 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !380
  %5301 = load i32, i32* %5300, align 4, !dbg !380
  %5302 = shl i32 %5301, 7, !dbg !380
  %5303 = or i32 %5299, %5302, !dbg !380
  %5304 = xor i32 %5296, %5303, !dbg !380
  %5305 = add i32 %5281, %5304, !dbg !380
  %5306 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !380
  %5307 = load i32, i32* %5306, align 4, !dbg !380
  %5308 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !380
  %5309 = load i32, i32* %5308, align 8, !dbg !380
  %5310 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !380
  %5311 = load i32, i32* %5310, align 4, !dbg !380
  %5312 = xor i32 %5309, %5311, !dbg !380
  %5313 = and i32 %5307, %5312, !dbg !380
  %5314 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !380
  %5315 = load i32, i32* %5314, align 4, !dbg !380
  %5316 = xor i32 %5313, %5315, !dbg !380
  %5317 = add i32 %5305, %5316, !dbg !380
  %5318 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 59, !dbg !380
  %5319 = load i32, i32* %5318, align 4, !dbg !380
  %5320 = add i32 %5317, %5319, !dbg !380
  %5321 = add i32 %5320, -1933114872, !dbg !380
  store i32 %5321, i32* %5, align 4, !dbg !380
  %5322 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !380
  %5323 = load i32, i32* %5322, align 4, !dbg !380
  %5324 = lshr i32 %5323, 2, !dbg !380
  %5325 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !380
  %5326 = load i32, i32* %5325, align 4, !dbg !380
  %5327 = shl i32 %5326, 30, !dbg !380
  %5328 = or i32 %5324, %5327, !dbg !380
  %5329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !380
  %5330 = load i32, i32* %5329, align 4, !dbg !380
  %5331 = lshr i32 %5330, 13, !dbg !380
  %5332 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !380
  %5333 = load i32, i32* %5332, align 4, !dbg !380
  %5334 = shl i32 %5333, 19, !dbg !380
  %5335 = or i32 %5331, %5334, !dbg !380
  %5336 = xor i32 %5328, %5335, !dbg !380
  %5337 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !380
  %5338 = load i32, i32* %5337, align 4, !dbg !380
  %5339 = lshr i32 %5338, 22, !dbg !380
  %5340 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !380
  %5341 = load i32, i32* %5340, align 4, !dbg !380
  %5342 = shl i32 %5341, 10, !dbg !380
  %5343 = or i32 %5339, %5342, !dbg !380
  %5344 = xor i32 %5336, %5343, !dbg !380
  %5345 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !380
  %5346 = load i32, i32* %5345, align 4, !dbg !380
  %5347 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !380
  %5348 = load i32, i32* %5347, align 8, !dbg !380
  %5349 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !380
  %5350 = load i32, i32* %5349, align 4, !dbg !380
  %5351 = or i32 %5348, %5350, !dbg !380
  %5352 = and i32 %5346, %5351, !dbg !380
  %5353 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !380
  %5354 = load i32, i32* %5353, align 8, !dbg !380
  %5355 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !380
  %5356 = load i32, i32* %5355, align 4, !dbg !380
  %5357 = and i32 %5354, %5356, !dbg !380
  %5358 = or i32 %5352, %5357, !dbg !380
  %5359 = add i32 %5344, %5358, !dbg !380
  store i32 %5359, i32* %6, align 4, !dbg !380
  %5360 = load i32, i32* %5, align 4, !dbg !380
  %5361 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !380
  %5362 = load i32, i32* %5361, align 16, !dbg !380
  %5363 = add i32 %5362, %5360, !dbg !380
  store i32 %5363, i32* %5361, align 16, !dbg !380
  %5364 = load i32, i32* %5, align 4, !dbg !380
  %5365 = load i32, i32* %6, align 4, !dbg !380
  %5366 = add i32 %5364, %5365, !dbg !380
  %5367 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !380
  store i32 %5366, i32* %5367, align 16, !dbg !380
  %5368 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !381
  %5369 = load i32, i32* %5368, align 4, !dbg !381
  %5370 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !381
  %5371 = load i32, i32* %5370, align 16, !dbg !381
  %5372 = lshr i32 %5371, 6, !dbg !381
  %5373 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !381
  %5374 = load i32, i32* %5373, align 16, !dbg !381
  %5375 = shl i32 %5374, 26, !dbg !381
  %5376 = or i32 %5372, %5375, !dbg !381
  %5377 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !381
  %5378 = load i32, i32* %5377, align 16, !dbg !381
  %5379 = lshr i32 %5378, 11, !dbg !381
  %5380 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !381
  %5381 = load i32, i32* %5380, align 16, !dbg !381
  %5382 = shl i32 %5381, 21, !dbg !381
  %5383 = or i32 %5379, %5382, !dbg !381
  %5384 = xor i32 %5376, %5383, !dbg !381
  %5385 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !381
  %5386 = load i32, i32* %5385, align 16, !dbg !381
  %5387 = lshr i32 %5386, 25, !dbg !381
  %5388 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !381
  %5389 = load i32, i32* %5388, align 16, !dbg !381
  %5390 = shl i32 %5389, 7, !dbg !381
  %5391 = or i32 %5387, %5390, !dbg !381
  %5392 = xor i32 %5384, %5391, !dbg !381
  %5393 = add i32 %5369, %5392, !dbg !381
  %5394 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !381
  %5395 = load i32, i32* %5394, align 16, !dbg !381
  %5396 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !381
  %5397 = load i32, i32* %5396, align 4, !dbg !381
  %5398 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !381
  %5399 = load i32, i32* %5398, align 8, !dbg !381
  %5400 = xor i32 %5397, %5399, !dbg !381
  %5401 = and i32 %5395, %5400, !dbg !381
  %5402 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !381
  %5403 = load i32, i32* %5402, align 8, !dbg !381
  %5404 = xor i32 %5401, %5403, !dbg !381
  %5405 = add i32 %5393, %5404, !dbg !381
  %5406 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 60, !dbg !381
  %5407 = load i32, i32* %5406, align 16, !dbg !381
  %5408 = add i32 %5405, %5407, !dbg !381
  %5409 = add i32 %5408, -1866530822, !dbg !381
  store i32 %5409, i32* %5, align 4, !dbg !381
  %5410 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !381
  %5411 = load i32, i32* %5410, align 16, !dbg !381
  %5412 = lshr i32 %5411, 2, !dbg !381
  %5413 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !381
  %5414 = load i32, i32* %5413, align 16, !dbg !381
  %5415 = shl i32 %5414, 30, !dbg !381
  %5416 = or i32 %5412, %5415, !dbg !381
  %5417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !381
  %5418 = load i32, i32* %5417, align 16, !dbg !381
  %5419 = lshr i32 %5418, 13, !dbg !381
  %5420 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !381
  %5421 = load i32, i32* %5420, align 16, !dbg !381
  %5422 = shl i32 %5421, 19, !dbg !381
  %5423 = or i32 %5419, %5422, !dbg !381
  %5424 = xor i32 %5416, %5423, !dbg !381
  %5425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !381
  %5426 = load i32, i32* %5425, align 16, !dbg !381
  %5427 = lshr i32 %5426, 22, !dbg !381
  %5428 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !381
  %5429 = load i32, i32* %5428, align 16, !dbg !381
  %5430 = shl i32 %5429, 10, !dbg !381
  %5431 = or i32 %5427, %5430, !dbg !381
  %5432 = xor i32 %5424, %5431, !dbg !381
  %5433 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !381
  %5434 = load i32, i32* %5433, align 16, !dbg !381
  %5435 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !381
  %5436 = load i32, i32* %5435, align 4, !dbg !381
  %5437 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !381
  %5438 = load i32, i32* %5437, align 8, !dbg !381
  %5439 = or i32 %5436, %5438, !dbg !381
  %5440 = and i32 %5434, %5439, !dbg !381
  %5441 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !381
  %5442 = load i32, i32* %5441, align 4, !dbg !381
  %5443 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !381
  %5444 = load i32, i32* %5443, align 8, !dbg !381
  %5445 = and i32 %5442, %5444, !dbg !381
  %5446 = or i32 %5440, %5445, !dbg !381
  %5447 = add i32 %5432, %5446, !dbg !381
  store i32 %5447, i32* %6, align 4, !dbg !381
  %5448 = load i32, i32* %5, align 4, !dbg !381
  %5449 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !381
  %5450 = load i32, i32* %5449, align 4, !dbg !381
  %5451 = add i32 %5450, %5448, !dbg !381
  store i32 %5451, i32* %5449, align 4, !dbg !381
  %5452 = load i32, i32* %5, align 4, !dbg !381
  %5453 = load i32, i32* %6, align 4, !dbg !381
  %5454 = add i32 %5452, %5453, !dbg !381
  %5455 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !381
  store i32 %5454, i32* %5455, align 4, !dbg !381
  %5456 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !382
  %5457 = load i32, i32* %5456, align 8, !dbg !382
  %5458 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !382
  %5459 = load i32, i32* %5458, align 4, !dbg !382
  %5460 = lshr i32 %5459, 6, !dbg !382
  %5461 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !382
  %5462 = load i32, i32* %5461, align 4, !dbg !382
  %5463 = shl i32 %5462, 26, !dbg !382
  %5464 = or i32 %5460, %5463, !dbg !382
  %5465 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !382
  %5466 = load i32, i32* %5465, align 4, !dbg !382
  %5467 = lshr i32 %5466, 11, !dbg !382
  %5468 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !382
  %5469 = load i32, i32* %5468, align 4, !dbg !382
  %5470 = shl i32 %5469, 21, !dbg !382
  %5471 = or i32 %5467, %5470, !dbg !382
  %5472 = xor i32 %5464, %5471, !dbg !382
  %5473 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !382
  %5474 = load i32, i32* %5473, align 4, !dbg !382
  %5475 = lshr i32 %5474, 25, !dbg !382
  %5476 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !382
  %5477 = load i32, i32* %5476, align 4, !dbg !382
  %5478 = shl i32 %5477, 7, !dbg !382
  %5479 = or i32 %5475, %5478, !dbg !382
  %5480 = xor i32 %5472, %5479, !dbg !382
  %5481 = add i32 %5457, %5480, !dbg !382
  %5482 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !382
  %5483 = load i32, i32* %5482, align 4, !dbg !382
  %5484 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !382
  %5485 = load i32, i32* %5484, align 16, !dbg !382
  %5486 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !382
  %5487 = load i32, i32* %5486, align 4, !dbg !382
  %5488 = xor i32 %5485, %5487, !dbg !382
  %5489 = and i32 %5483, %5488, !dbg !382
  %5490 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !382
  %5491 = load i32, i32* %5490, align 4, !dbg !382
  %5492 = xor i32 %5489, %5491, !dbg !382
  %5493 = add i32 %5481, %5492, !dbg !382
  %5494 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 61, !dbg !382
  %5495 = load i32, i32* %5494, align 4, !dbg !382
  %5496 = add i32 %5493, %5495, !dbg !382
  %5497 = add i32 %5496, -1538233109, !dbg !382
  store i32 %5497, i32* %5, align 4, !dbg !382
  %5498 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !382
  %5499 = load i32, i32* %5498, align 4, !dbg !382
  %5500 = lshr i32 %5499, 2, !dbg !382
  %5501 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !382
  %5502 = load i32, i32* %5501, align 4, !dbg !382
  %5503 = shl i32 %5502, 30, !dbg !382
  %5504 = or i32 %5500, %5503, !dbg !382
  %5505 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !382
  %5506 = load i32, i32* %5505, align 4, !dbg !382
  %5507 = lshr i32 %5506, 13, !dbg !382
  %5508 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !382
  %5509 = load i32, i32* %5508, align 4, !dbg !382
  %5510 = shl i32 %5509, 19, !dbg !382
  %5511 = or i32 %5507, %5510, !dbg !382
  %5512 = xor i32 %5504, %5511, !dbg !382
  %5513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !382
  %5514 = load i32, i32* %5513, align 4, !dbg !382
  %5515 = lshr i32 %5514, 22, !dbg !382
  %5516 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !382
  %5517 = load i32, i32* %5516, align 4, !dbg !382
  %5518 = shl i32 %5517, 10, !dbg !382
  %5519 = or i32 %5515, %5518, !dbg !382
  %5520 = xor i32 %5512, %5519, !dbg !382
  %5521 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !382
  %5522 = load i32, i32* %5521, align 4, !dbg !382
  %5523 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !382
  %5524 = load i32, i32* %5523, align 16, !dbg !382
  %5525 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !382
  %5526 = load i32, i32* %5525, align 4, !dbg !382
  %5527 = or i32 %5524, %5526, !dbg !382
  %5528 = and i32 %5522, %5527, !dbg !382
  %5529 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !382
  %5530 = load i32, i32* %5529, align 16, !dbg !382
  %5531 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !382
  %5532 = load i32, i32* %5531, align 4, !dbg !382
  %5533 = and i32 %5530, %5532, !dbg !382
  %5534 = or i32 %5528, %5533, !dbg !382
  %5535 = add i32 %5520, %5534, !dbg !382
  store i32 %5535, i32* %6, align 4, !dbg !382
  %5536 = load i32, i32* %5, align 4, !dbg !382
  %5537 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !382
  %5538 = load i32, i32* %5537, align 8, !dbg !382
  %5539 = add i32 %5538, %5536, !dbg !382
  store i32 %5539, i32* %5537, align 8, !dbg !382
  %5540 = load i32, i32* %5, align 4, !dbg !382
  %5541 = load i32, i32* %6, align 4, !dbg !382
  %5542 = add i32 %5540, %5541, !dbg !382
  %5543 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !382
  store i32 %5542, i32* %5543, align 8, !dbg !382
  %5544 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !383
  %5545 = load i32, i32* %5544, align 4, !dbg !383
  %5546 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !383
  %5547 = load i32, i32* %5546, align 8, !dbg !383
  %5548 = lshr i32 %5547, 6, !dbg !383
  %5549 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !383
  %5550 = load i32, i32* %5549, align 8, !dbg !383
  %5551 = shl i32 %5550, 26, !dbg !383
  %5552 = or i32 %5548, %5551, !dbg !383
  %5553 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !383
  %5554 = load i32, i32* %5553, align 8, !dbg !383
  %5555 = lshr i32 %5554, 11, !dbg !383
  %5556 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !383
  %5557 = load i32, i32* %5556, align 8, !dbg !383
  %5558 = shl i32 %5557, 21, !dbg !383
  %5559 = or i32 %5555, %5558, !dbg !383
  %5560 = xor i32 %5552, %5559, !dbg !383
  %5561 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !383
  %5562 = load i32, i32* %5561, align 8, !dbg !383
  %5563 = lshr i32 %5562, 25, !dbg !383
  %5564 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !383
  %5565 = load i32, i32* %5564, align 8, !dbg !383
  %5566 = shl i32 %5565, 7, !dbg !383
  %5567 = or i32 %5563, %5566, !dbg !383
  %5568 = xor i32 %5560, %5567, !dbg !383
  %5569 = add i32 %5545, %5568, !dbg !383
  %5570 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !383
  %5571 = load i32, i32* %5570, align 8, !dbg !383
  %5572 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !383
  %5573 = load i32, i32* %5572, align 4, !dbg !383
  %5574 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !383
  %5575 = load i32, i32* %5574, align 16, !dbg !383
  %5576 = xor i32 %5573, %5575, !dbg !383
  %5577 = and i32 %5571, %5576, !dbg !383
  %5578 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !383
  %5579 = load i32, i32* %5578, align 16, !dbg !383
  %5580 = xor i32 %5577, %5579, !dbg !383
  %5581 = add i32 %5569, %5580, !dbg !383
  %5582 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 62, !dbg !383
  %5583 = load i32, i32* %5582, align 8, !dbg !383
  %5584 = add i32 %5581, %5583, !dbg !383
  %5585 = add i32 %5584, -1090935817, !dbg !383
  store i32 %5585, i32* %5, align 4, !dbg !383
  %5586 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !383
  %5587 = load i32, i32* %5586, align 8, !dbg !383
  %5588 = lshr i32 %5587, 2, !dbg !383
  %5589 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !383
  %5590 = load i32, i32* %5589, align 8, !dbg !383
  %5591 = shl i32 %5590, 30, !dbg !383
  %5592 = or i32 %5588, %5591, !dbg !383
  %5593 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !383
  %5594 = load i32, i32* %5593, align 8, !dbg !383
  %5595 = lshr i32 %5594, 13, !dbg !383
  %5596 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !383
  %5597 = load i32, i32* %5596, align 8, !dbg !383
  %5598 = shl i32 %5597, 19, !dbg !383
  %5599 = or i32 %5595, %5598, !dbg !383
  %5600 = xor i32 %5592, %5599, !dbg !383
  %5601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !383
  %5602 = load i32, i32* %5601, align 8, !dbg !383
  %5603 = lshr i32 %5602, 22, !dbg !383
  %5604 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !383
  %5605 = load i32, i32* %5604, align 8, !dbg !383
  %5606 = shl i32 %5605, 10, !dbg !383
  %5607 = or i32 %5603, %5606, !dbg !383
  %5608 = xor i32 %5600, %5607, !dbg !383
  %5609 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !383
  %5610 = load i32, i32* %5609, align 8, !dbg !383
  %5611 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !383
  %5612 = load i32, i32* %5611, align 4, !dbg !383
  %5613 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !383
  %5614 = load i32, i32* %5613, align 16, !dbg !383
  %5615 = or i32 %5612, %5614, !dbg !383
  %5616 = and i32 %5610, %5615, !dbg !383
  %5617 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !383
  %5618 = load i32, i32* %5617, align 4, !dbg !383
  %5619 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !383
  %5620 = load i32, i32* %5619, align 16, !dbg !383
  %5621 = and i32 %5618, %5620, !dbg !383
  %5622 = or i32 %5616, %5621, !dbg !383
  %5623 = add i32 %5608, %5622, !dbg !383
  store i32 %5623, i32* %6, align 4, !dbg !383
  %5624 = load i32, i32* %5, align 4, !dbg !383
  %5625 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !383
  %5626 = load i32, i32* %5625, align 4, !dbg !383
  %5627 = add i32 %5626, %5624, !dbg !383
  store i32 %5627, i32* %5625, align 4, !dbg !383
  %5628 = load i32, i32* %5, align 4, !dbg !383
  %5629 = load i32, i32* %6, align 4, !dbg !383
  %5630 = add i32 %5628, %5629, !dbg !383
  %5631 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !383
  store i32 %5630, i32* %5631, align 4, !dbg !383
  %5632 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !384
  %5633 = load i32, i32* %5632, align 16, !dbg !384
  %5634 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !384
  %5635 = load i32, i32* %5634, align 4, !dbg !384
  %5636 = lshr i32 %5635, 6, !dbg !384
  %5637 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !384
  %5638 = load i32, i32* %5637, align 4, !dbg !384
  %5639 = shl i32 %5638, 26, !dbg !384
  %5640 = or i32 %5636, %5639, !dbg !384
  %5641 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !384
  %5642 = load i32, i32* %5641, align 4, !dbg !384
  %5643 = lshr i32 %5642, 11, !dbg !384
  %5644 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !384
  %5645 = load i32, i32* %5644, align 4, !dbg !384
  %5646 = shl i32 %5645, 21, !dbg !384
  %5647 = or i32 %5643, %5646, !dbg !384
  %5648 = xor i32 %5640, %5647, !dbg !384
  %5649 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !384
  %5650 = load i32, i32* %5649, align 4, !dbg !384
  %5651 = lshr i32 %5650, 25, !dbg !384
  %5652 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !384
  %5653 = load i32, i32* %5652, align 4, !dbg !384
  %5654 = shl i32 %5653, 7, !dbg !384
  %5655 = or i32 %5651, %5654, !dbg !384
  %5656 = xor i32 %5648, %5655, !dbg !384
  %5657 = add i32 %5633, %5656, !dbg !384
  %5658 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5, !dbg !384
  %5659 = load i32, i32* %5658, align 4, !dbg !384
  %5660 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6, !dbg !384
  %5661 = load i32, i32* %5660, align 8, !dbg !384
  %5662 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !384
  %5663 = load i32, i32* %5662, align 4, !dbg !384
  %5664 = xor i32 %5661, %5663, !dbg !384
  %5665 = and i32 %5659, %5664, !dbg !384
  %5666 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7, !dbg !384
  %5667 = load i32, i32* %5666, align 4, !dbg !384
  %5668 = xor i32 %5665, %5667, !dbg !384
  %5669 = add i32 %5657, %5668, !dbg !384
  %5670 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 63, !dbg !384
  %5671 = load i32, i32* %5670, align 4, !dbg !384
  %5672 = add i32 %5669, %5671, !dbg !384
  %5673 = add i32 %5672, -965641998, !dbg !384
  store i32 %5673, i32* %5, align 4, !dbg !384
  %5674 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !384
  %5675 = load i32, i32* %5674, align 4, !dbg !384
  %5676 = lshr i32 %5675, 2, !dbg !384
  %5677 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !384
  %5678 = load i32, i32* %5677, align 4, !dbg !384
  %5679 = shl i32 %5678, 30, !dbg !384
  %5680 = or i32 %5676, %5679, !dbg !384
  %5681 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !384
  %5682 = load i32, i32* %5681, align 4, !dbg !384
  %5683 = lshr i32 %5682, 13, !dbg !384
  %5684 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !384
  %5685 = load i32, i32* %5684, align 4, !dbg !384
  %5686 = shl i32 %5685, 19, !dbg !384
  %5687 = or i32 %5683, %5686, !dbg !384
  %5688 = xor i32 %5680, %5687, !dbg !384
  %5689 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !384
  %5690 = load i32, i32* %5689, align 4, !dbg !384
  %5691 = lshr i32 %5690, 22, !dbg !384
  %5692 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !384
  %5693 = load i32, i32* %5692, align 4, !dbg !384
  %5694 = shl i32 %5693, 10, !dbg !384
  %5695 = or i32 %5691, %5694, !dbg !384
  %5696 = xor i32 %5688, %5695, !dbg !384
  %5697 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1, !dbg !384
  %5698 = load i32, i32* %5697, align 4, !dbg !384
  %5699 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !384
  %5700 = load i32, i32* %5699, align 8, !dbg !384
  %5701 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !384
  %5702 = load i32, i32* %5701, align 4, !dbg !384
  %5703 = or i32 %5700, %5702, !dbg !384
  %5704 = and i32 %5698, %5703, !dbg !384
  %5705 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2, !dbg !384
  %5706 = load i32, i32* %5705, align 8, !dbg !384
  %5707 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3, !dbg !384
  %5708 = load i32, i32* %5707, align 4, !dbg !384
  %5709 = and i32 %5706, %5708, !dbg !384
  %5710 = or i32 %5704, %5709, !dbg !384
  %5711 = add i32 %5696, %5710, !dbg !384
  store i32 %5711, i32* %6, align 4, !dbg !384
  %5712 = load i32, i32* %5, align 4, !dbg !384
  %5713 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4, !dbg !384
  %5714 = load i32, i32* %5713, align 16, !dbg !384
  %5715 = add i32 %5714, %5712, !dbg !384
  store i32 %5715, i32* %5713, align 16, !dbg !384
  %5716 = load i32, i32* %5, align 4, !dbg !384
  %5717 = load i32, i32* %6, align 4, !dbg !384
  %5718 = add i32 %5716, %5717, !dbg !384
  %5719 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !384
  store i32 %5718, i32* %5719, align 16, !dbg !384
  call void @llvm.dbg.value(metadata i32 0, metadata !296, metadata !DIExpression()), !dbg !283
  br label %5720, !dbg !385

5720:                                             ; preds = %5730, %84
  %.1 = phi i32 [ 0, %84 ], [ %5731, %5730 ], !dbg !387
  call void @llvm.dbg.value(metadata i32 %.1, metadata !296, metadata !DIExpression()), !dbg !283
  %5721 = icmp slt i32 %.1, 8, !dbg !388
  br i1 %5721, label %5722, label %5732, !dbg !390

5722:                                             ; preds = %5720
  %5723 = sext i32 %.1 to i64, !dbg !391
  %5724 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %5723, !dbg !391
  %5725 = load i32, i32* %5724, align 4, !dbg !391
  %5726 = sext i32 %.1 to i64, !dbg !393
  %5727 = getelementptr inbounds i32, i32* %0, i64 %5726, !dbg !393
  %5728 = load i32, i32* %5727, align 4, !dbg !394
  %5729 = add i32 %5728, %5725, !dbg !394
  store i32 %5729, i32* %5727, align 4, !dbg !394
  br label %5730, !dbg !395

5730:                                             ; preds = %5722
  %5731 = add nsw i32 %.1, 1, !dbg !396
  call void @llvm.dbg.value(metadata i32 %5731, metadata !296, metadata !DIExpression()), !dbg !283
  br label %5720, !dbg !397, !llvm.loop !398

5732:                                             ; preds = %5720
  %5733 = getelementptr inbounds [64 x i32], [64 x i32]* %3, i64 0, i64 0, !dbg !400
  %5734 = bitcast i32* %5733 to i8*, !dbg !401
  call void @sodium_memzero(i8* %5734, i64 256), !dbg !402
  %5735 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0, !dbg !403
  %5736 = bitcast i32* %5735 to i8*, !dbg !404
  call void @sodium_memzero(i8* %5736, i64 32), !dbg !405
  %5737 = bitcast i32* %5 to i8*, !dbg !406
  call void @sodium_memzero(i8* %5737, i64 4), !dbg !407
  %5738 = bitcast i32* %6 to i8*, !dbg !408
  call void @sodium_memzero(i8* %5738, i64 4), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind uwtable
define internal void @be32dec_vect(i32* %0, i8* %1, i64 %2) #0 !dbg !411 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i8* %1, metadata !416, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i64 %2, metadata !417, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i64 0, metadata !418, metadata !DIExpression()), !dbg !415
  br label %4, !dbg !419

4:                                                ; preds = %12, %3
  %.0 = phi i64 [ 0, %3 ], [ %13, %12 ], !dbg !421
  call void @llvm.dbg.value(metadata i64 %.0, metadata !418, metadata !DIExpression()), !dbg !415
  %5 = udiv i64 %2, 4, !dbg !422
  %6 = icmp ult i64 %.0, %5, !dbg !424
  br i1 %6, label %7, label %14, !dbg !425

7:                                                ; preds = %4
  %8 = mul i64 %.0, 4, !dbg !426
  %9 = getelementptr inbounds i8, i8* %1, i64 %8, !dbg !428
  %10 = call i32 @_sha256_be32dec(i8* %9), !dbg !429
  %11 = getelementptr inbounds i32, i32* %0, i64 %.0, !dbg !430
  store i32 %10, i32* %11, align 4, !dbg !431
  br label %12, !dbg !432

12:                                               ; preds = %7
  %13 = add i64 %.0, 1, !dbg !433
  call void @llvm.dbg.value(metadata i64 %13, metadata !418, metadata !DIExpression()), !dbg !415
  br label %4, !dbg !434, !llvm.loop !435

14:                                               ; preds = %4
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sha256_be32dec(i8* %0) #0 !dbg !438 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i8* %0, metadata !445, metadata !DIExpression()), !dbg !444
  %2 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !446
  %3 = load i8, i8* %2, align 1, !dbg !446
  %4 = zext i8 %3 to i32, !dbg !447
  %5 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !448
  %6 = load i8, i8* %5, align 1, !dbg !448
  %7 = zext i8 %6 to i32, !dbg !449
  %8 = shl i32 %7, 8, !dbg !450
  %9 = add i32 %4, %8, !dbg !451
  %10 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !452
  %11 = load i8, i8* %10, align 1, !dbg !452
  %12 = zext i8 %11 to i32, !dbg !453
  %13 = shl i32 %12, 16, !dbg !454
  %14 = add i32 %9, %13, !dbg !455
  %15 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !456
  %16 = load i8, i8* %15, align 1, !dbg !456
  %17 = zext i8 %16 to i32, !dbg !457
  %18 = shl i32 %17, 24, !dbg !458
  %19 = add i32 %14, %18, !dbg !459
  ret i32 %19, !dbg !460
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha256_final(%struct.crypto_hash_sha256_state* %0, i8* %1) #0 !dbg !461 {
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha256_state* %0, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i8* %1, metadata !466, metadata !DIExpression()), !dbg !465
  call void @SHA256_Pad(%struct.crypto_hash_sha256_state* %0), !dbg !467
  %3 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 0, !dbg !468
  %4 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0, !dbg !469
  call void @be32enc_vect(i8* %1, i32* %4, i64 32), !dbg !470
  %5 = bitcast %struct.crypto_hash_sha256_state* %0 to i8*, !dbg !471
  call void @sodium_memzero(i8* %5, i64 104), !dbg !472
  ret i32 0, !dbg !473
}

; Function Attrs: noinline nounwind uwtable
define internal void @SHA256_Pad(%struct.crypto_hash_sha256_state* %0) #0 !dbg !474 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.crypto_hash_sha256_state* %0, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata [8 x i8]* %2, metadata !479, metadata !DIExpression()), !dbg !481
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !482
  %4 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !483
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !484
  call void @be32enc_vect(i8* %3, i32* %5, i64 8), !dbg !485
  %6 = getelementptr inbounds %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state* %0, i32 0, i32 1, !dbg !486
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1, !dbg !487
  %8 = load i32, i32* %7, align 4, !dbg !487
  %9 = lshr i32 %8, 3, !dbg !488
  %10 = and i32 %9, 63, !dbg !489
  call void @llvm.dbg.value(metadata i32 %10, metadata !490, metadata !DIExpression()), !dbg !478
  %11 = icmp ult i32 %10, 56, !dbg !491
  br i1 %11, label %12, label %14, !dbg !492

12:                                               ; preds = %1
  %13 = sub i32 56, %10, !dbg !493
  br label %16, !dbg !492

14:                                               ; preds = %1
  %15 = sub i32 120, %10, !dbg !494
  br label %16, !dbg !492

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ], !dbg !492
  call void @llvm.dbg.value(metadata i32 %17, metadata !495, metadata !DIExpression()), !dbg !478
  %18 = zext i32 %17 to i64, !dbg !496
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* bitcast (<{ i8, [63 x i8] }>* @PAD to [64 x i8]*), i64 0, i64 0
  %20 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %0, i8* %19, i64 %18), !dbg !497
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !498
  %22 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %0, i8* %21, i64 8), !dbg !499
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind uwtable
define internal void @be32enc_vect(i8* %0, i32* %1, i64 %2) #0 !dbg !501 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !505, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i32* %1, metadata !507, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i64 %2, metadata !508, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata i64 0, metadata !509, metadata !DIExpression()), !dbg !506
  br label %4, !dbg !510

4:                                                ; preds = %12, %3
  %.0 = phi i64 [ 0, %3 ], [ %13, %12 ], !dbg !512
  call void @llvm.dbg.value(metadata i64 %.0, metadata !509, metadata !DIExpression()), !dbg !506
  %5 = udiv i64 %2, 4, !dbg !513
  %6 = icmp ult i64 %.0, %5, !dbg !515
  br i1 %6, label %7, label %14, !dbg !516

7:                                                ; preds = %4
  %8 = mul i64 %.0, 4, !dbg !517
  %9 = getelementptr inbounds i8, i8* %0, i64 %8, !dbg !519
  %10 = getelementptr inbounds i32, i32* %1, i64 %.0, !dbg !520
  %11 = load i32, i32* %10, align 4, !dbg !520
  call void @_sha256_be32enc(i8* %9, i32 %11), !dbg !521
  br label %12, !dbg !522

12:                                               ; preds = %7
  %13 = add i64 %.0, 1, !dbg !523
  call void @llvm.dbg.value(metadata i64 %13, metadata !509, metadata !DIExpression()), !dbg !506
  br label %4, !dbg !524, !llvm.loop !525

14:                                               ; preds = %4
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind uwtable
define internal void @_sha256_be32enc(i8* %0, i32 %1) #0 !dbg !528 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !531, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i32 %1, metadata !533, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i8* %0, metadata !534, metadata !DIExpression()), !dbg !532
  %3 = and i32 %1, 255, !dbg !535
  %4 = trunc i32 %3 to i8, !dbg !536
  %5 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !537
  store i8 %4, i8* %5, align 1, !dbg !538
  %6 = lshr i32 %1, 8, !dbg !539
  %7 = and i32 %6, 255, !dbg !540
  %8 = trunc i32 %7 to i8, !dbg !541
  %9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !542
  store i8 %8, i8* %9, align 1, !dbg !543
  %10 = lshr i32 %1, 16, !dbg !544
  %11 = and i32 %10, 255, !dbg !545
  %12 = trunc i32 %11 to i8, !dbg !546
  %13 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !547
  store i8 %12, i8* %13, align 1, !dbg !548
  %14 = lshr i32 %1, 24, !dbg !549
  %15 = and i32 %14, 255, !dbg !550
  %16 = trunc i32 %15 to i8, !dbg !551
  %17 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !552
  store i8 %16, i8* %17, align 1, !dbg !553
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_hash_sha256(i8* %0, i8* %1, i64 %2) #0 !dbg !555 {
  %4 = alloca %struct.crypto_hash_sha256_state, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i8* %1, metadata !560, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i64 %2, metadata !561, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata %struct.crypto_hash_sha256_state* %4, metadata !562, metadata !DIExpression()), !dbg !563
  %5 = call i32 @crypto_hash_sha256_init(%struct.crypto_hash_sha256_state* %4), !dbg !564
  %6 = call i32 @crypto_hash_sha256_update(%struct.crypto_hash_sha256_state* %4, i8* %1, i64 %2), !dbg !565
  %7 = call i32 @crypto_hash_sha256_final(%struct.crypto_hash_sha256_state* %4, i8* %0), !dbg !566
  ret i32 0, !dbg !567
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !568 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !572, metadata !DIExpression()), !dbg !573
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation, align 8, !dbg !574
  ret i32 0, !dbg !575
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !576 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !577
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !578
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !578
  %4 = call i8* %3(), !dbg !577
  ret i8* %4, !dbg !579
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !580 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !581
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !582
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !582
  %4 = call i32 %3(), !dbg !581
  ret i32 %4, !dbg !583
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !584 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !585
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !587
  br i1 %2, label %3, label %12, !dbg !588

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !589
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !590
  %6 = load void ()*, void ()** %5, align 8, !dbg !590
  %7 = icmp ne void ()* %6, null, !dbg !591
  br i1 %7, label %8, label %12, !dbg !592

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !593
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !595
  %11 = load void ()*, void ()** %10, align 8, !dbg !595
  call void %11(), !dbg !593
  br label %12, !dbg !596

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !598 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !599, metadata !DIExpression()), !dbg !600
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !601
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !603
  br i1 %3, label %4, label %14, !dbg !604

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !605
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !606
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !606
  %8 = icmp ne i32 (i32)* %7, null, !dbg !607
  br i1 %8, label %9, label %14, !dbg !608

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !609
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !611
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !611
  %13 = call i32 %12(i32 %0), !dbg !609
  br label %26, !dbg !612

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !613
  br i1 %15, label %16, label %17, !dbg !615

16:                                               ; preds = %14
  br label %26, !dbg !616

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !618
  %19 = urem i32 %18, %0, !dbg !619
  call void @llvm.dbg.value(metadata i32 %19, metadata !620, metadata !DIExpression()), !dbg !600
  br label %20, !dbg !621

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !622
  call void @llvm.dbg.value(metadata i32 %21, metadata !624, metadata !DIExpression()), !dbg !600
  br label %22, !dbg !625

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !626
  br i1 %23, label %20, label %24, !dbg !625, !llvm.loop !627

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !629
  br label %26, !dbg !630

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !600
  ret i32 %.0, !dbg !631
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !632 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i64 %1, metadata !635, metadata !DIExpression()), !dbg !634
  %3 = icmp ugt i64 %1, 0, !dbg !636
  br i1 %3, label %4, label %8, !dbg !638

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !639
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !641
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !641
  call void %7(i8* %0, i64 %1), !dbg !639
  br label %8, !dbg !642

8:                                                ; preds = %4, %2
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !644 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !645
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !647
  br i1 %2, label %3, label %13, !dbg !648

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !649
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !650
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !650
  %7 = icmp ne i32 ()* %6, null, !dbg !651
  br i1 %7, label %8, label %13, !dbg !652

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !653
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !655
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !655
  %12 = call i32 %11(), !dbg !653
  br label %14, !dbg !656

13:                                               ; preds = %3, %0
  br label %14, !dbg !657

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !658
  ret i32 %.0, !dbg !659
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !660 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !665, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i64 %1, metadata !667, metadata !DIExpression()), !dbg !666
  %3 = icmp ule i64 %1, -1, !dbg !668
  br i1 %3, label %4, label %5, !dbg !671

4:                                                ; preds = %2
  br label %9, !dbg !671

5:                                                ; preds = %2
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* @.str, i64 0, i64 0
  %7 = getelementptr inbounds [53 x i8], [53 x i8]* @.str.1, i64 0, i64 0
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #9, !dbg !668
  unreachable, !dbg !668

9:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !672
  ret void, !dbg !673
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !674 {
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.7, i64 0, i64 0
  ret i8* %1, !dbg !675
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !676 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !677, metadata !DIExpression()), !dbg !678
  %2 = bitcast i32* %1 to i8*, !dbg !679
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !680
  %3 = load i32, i32* %1, align 4, !dbg !681
  ret i32 %3, !dbg !682
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !683 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  %2 = load i32, i32* %1, align 4, !dbg !684
  %3 = icmp eq i32 %2, 0, !dbg !686
  br i1 %3, label %4, label %6, !dbg !687

4:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !688
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  store i32 1, i32* %5, align 4, !dbg !690
  br label %6, !dbg !691

6:                                                ; preds = %4, %0
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !693 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !694, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i64 %1, metadata !696, metadata !DIExpression()), !dbg !695
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !697
  %3 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  %4 = load i32, i32* %3, align 4, !dbg !698
  %5 = icmp ne i32 %4, 0, !dbg !700
  br i1 %5, label %6, label %11, !dbg !701

6:                                                ; preds = %2
  %7 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !702
  %8 = icmp ne i32 %7, 0, !dbg !705
  br i1 %8, label %9, label %10, !dbg !706

9:                                                ; preds = %6
  call void @abort() #9, !dbg !707
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  br label %21, !dbg !709

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %13 = load i32, i32* %12, align 4, !dbg !710
  %14 = icmp eq i32 %13, -1, !dbg !712
  br i1 %14, label %20, label %15, !dbg !713

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %17 = load i32, i32* %16, align 4, !dbg !714
  %18 = call i64 @safe_read(i32 %17, i8* %0, i64 %1), !dbg !715
  %19 = icmp ne i64 %18, %1, !dbg !716
  br i1 %19, label %20, label %21, !dbg !717

20:                                               ; preds = %15, %11
  call void @abort() #9, !dbg !718
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %15, %10
  ret void, !dbg !720

UnifiedUnreachableBlock:                          ; preds = %20, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !721 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !722, metadata !DIExpression()), !dbg !723
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %2 = load i32, i32* %1, align 4, !dbg !724
  %3 = icmp ne i32 %2, -1, !dbg !726
  br i1 %3, label %4, label %12, !dbg !727

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !dbg !728
  %7 = call i32 @close(i32 %6), !dbg !729
  %8 = icmp eq i32 %7, 0, !dbg !730
  br i1 %8, label %9, label %12, !dbg !731

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  store i32 -1, i32* %10, align 4, !dbg !732
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  store i32 0, i32* %11, align 4, !dbg !734
  call void @llvm.dbg.value(metadata i32 0, metadata !722, metadata !DIExpression()), !dbg !723
  br label %12, !dbg !735

12:                                               ; preds = %9, %4, %0
  %.0 = phi i32 [ 0, %9 ], [ -1, %4 ], [ -1, %0 ], !dbg !723
  call void @llvm.dbg.value(metadata i32 %.0, metadata !722, metadata !DIExpression()), !dbg !723
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  %14 = load i32, i32* %13, align 4, !dbg !736
  %15 = icmp ne i32 %14, 0, !dbg !738
  br i1 %15, label %16, label %17, !dbg !739

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !722, metadata !DIExpression()), !dbg !723
  br label %17, !dbg !740

17:                                               ; preds = %16, %12
  %.1 = phi i32 [ 0, %16 ], [ %.0, %12 ], !dbg !723
  call void @llvm.dbg.value(metadata i32 %.1, metadata !722, metadata !DIExpression()), !dbg !723
  ret i32 %.1, !dbg !742
}

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !743 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  %2 = load i32, i32* %1, align 4, !dbg !744
  %3 = icmp eq i32 %2, 0, !dbg !746
  br i1 %3, label %4, label %5, !dbg !747

4:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !748
  br label %5, !dbg !750

5:                                                ; preds = %4, %0
  ret void, !dbg !751
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !752 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i64 %1, metadata !757, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i8* %0, metadata !758, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i64 256, metadata !759, metadata !DIExpression()), !dbg !756
  br label %3, !dbg !760

3:                                                ; preds = %20, %2
  %.03 = phi i8* [ %0, %2 ], [ %19, %20 ], !dbg !756
  %.02 = phi i64 [ %1, %2 ], [ %18, %20 ]
  %.01 = phi i64 [ 256, %2 ], [ %.1, %20 ], !dbg !756
  call void @llvm.dbg.value(metadata i64 %.01, metadata !759, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i64 %.02, metadata !757, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i8* %.03, metadata !758, metadata !DIExpression()), !dbg !756
  %4 = icmp ult i64 %.02, %.01, !dbg !761
  br i1 %4, label %5, label %13, !dbg !764

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !759, metadata !DIExpression()), !dbg !756
  %6 = icmp ugt i64 %.02, 0, !dbg !765
  br i1 %6, label %7, label %8, !dbg !769

7:                                                ; preds = %5
  br label %12, !dbg !769

8:                                                ; preds = %5
  %9 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.3, i64 0, i64 0
  %10 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %11 = getelementptr inbounds [53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0
  call void @__assert_fail(i8* %9, i8* %10, i32 159, i8* %11) #9, !dbg !765
  unreachable, !dbg !765

12:                                               ; preds = %7
  br label %13, !dbg !770

13:                                               ; preds = %12, %3
  %.1 = phi i64 [ %.02, %12 ], [ %.01, %3 ], !dbg !756
  call void @llvm.dbg.value(metadata i64 %.1, metadata !759, metadata !DIExpression()), !dbg !756
  %14 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !771
  %15 = icmp ne i32 %14, 0, !dbg !773
  br i1 %15, label %16, label %17, !dbg !774

16:                                               ; preds = %13
  br label %23, !dbg !775

17:                                               ; preds = %13
  %18 = sub i64 %.02, %.1, !dbg !777
  call void @llvm.dbg.value(metadata i64 %18, metadata !757, metadata !DIExpression()), !dbg !756
  %19 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !778
  call void @llvm.dbg.value(metadata i8* %19, metadata !758, metadata !DIExpression()), !dbg !756
  br label %20, !dbg !779

20:                                               ; preds = %17
  %21 = icmp ugt i64 %18, 0, !dbg !780
  br i1 %21, label %3, label %22, !dbg !779, !llvm.loop !781

22:                                               ; preds = %20
  br label %23, !dbg !783

23:                                               ; preds = %22, %16
  %.0 = phi i32 [ -1, %16 ], [ 0, %22 ], !dbg !756
  ret i32 %.0, !dbg !784
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !785 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !789, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8* %1, metadata !791, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i64 %2, metadata !792, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8* %1, metadata !793, metadata !DIExpression()), !dbg !790
  %4 = icmp ugt i64 %2, 0, !dbg !794
  br i1 %4, label %5, label %6, !dbg !797

5:                                                ; preds = %3
  br label %10, !dbg !797

6:                                                ; preds = %3
  %7 = getelementptr inbounds [19 x i8], [19 x i8]* @.str.6, i64 0, i64 0
  %8 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0
  call void @__assert_fail(i8* %7, i8* %8, i32 82, i8* %9) #9, !dbg !794
  unreachable, !dbg !794

10:                                               ; preds = %5
  br label %11, !dbg !798

11:                                               ; preds = %37, %10
  %.02 = phi i64 [ %2, %10 ], [ %35, %37 ]
  %.01 = phi i8* [ %1, %10 ], [ %36, %37 ], !dbg !790
  call void @llvm.dbg.value(metadata i8* %.01, metadata !793, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i64 %.02, metadata !792, metadata !DIExpression()), !dbg !790
  br label %12, !dbg !799

12:                                               ; preds = %27, %11
  %13 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !801
  call void @llvm.dbg.value(metadata i64 %13, metadata !802, metadata !DIExpression()), !dbg !790
  %14 = icmp slt i64 %13, 0, !dbg !803
  br i1 %14, label %15, label %25, !dbg !804

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #10, !dbg !805
  %17 = load i32, i32* %16, align 4, !dbg !805
  %18 = icmp eq i32 %17, 4, !dbg !806
  br i1 %18, label %23, label %19, !dbg !807

19:                                               ; preds = %15
  %20 = call i32* @__errno_location() #10, !dbg !808
  %21 = load i32, i32* %20, align 4, !dbg !808
  %22 = icmp eq i32 %21, 11, !dbg !809
  br label %23, !dbg !807

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi i1 [ false, %12 ], [ %24, %23 ], !dbg !810
  br i1 %26, label %27, label %28, !dbg !799

27:                                               ; preds = %25
  br label %12, !dbg !799, !llvm.loop !811

28:                                               ; preds = %25
  %29 = icmp slt i64 %13, 0, !dbg !813
  br i1 %29, label %30, label %31, !dbg !815

30:                                               ; preds = %28
  br label %43, !dbg !816

31:                                               ; preds = %28
  %32 = icmp eq i64 %13, 0, !dbg !818
  br i1 %32, label %33, label %34, !dbg !820

33:                                               ; preds = %31
  br label %39, !dbg !821

34:                                               ; preds = %31
  %35 = sub i64 %.02, %13, !dbg !823
  call void @llvm.dbg.value(metadata i64 %35, metadata !792, metadata !DIExpression()), !dbg !790
  %36 = getelementptr inbounds i8, i8* %.01, i64 %13, !dbg !824
  call void @llvm.dbg.value(metadata i8* %36, metadata !793, metadata !DIExpression()), !dbg !790
  br label %37, !dbg !825

37:                                               ; preds = %34
  %38 = icmp ugt i64 %35, 0, !dbg !826
  br i1 %38, label %11, label %39, !dbg !825, !llvm.loop !827

39:                                               ; preds = %37, %33
  %.1 = phi i8* [ %.01, %33 ], [ %36, %37 ], !dbg !790
  call void @llvm.dbg.value(metadata i8* %.1, metadata !793, metadata !DIExpression()), !dbg !790
  %40 = ptrtoint i8* %.1 to i64, !dbg !829
  %41 = ptrtoint i8* %1 to i64, !dbg !829
  %42 = sub i64 %40, %41, !dbg !829
  br label %43, !dbg !830

43:                                               ; preds = %39, %30
  %.0 = phi i64 [ %13, %30 ], [ %42, %39 ], !dbg !790
  ret i64 %.0, !dbg !831
}

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !832 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !835, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 %1, metadata !837, metadata !DIExpression()), !dbg !836
  %3 = icmp ule i64 %1, 256, !dbg !838
  br i1 %3, label %4, label %5, !dbg !841

4:                                                ; preds = %2
  br label %9, !dbg !841

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.5, i64 0, i64 0
  %7 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %8 = getelementptr inbounds [60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #9, !dbg !838
  unreachable, !dbg !838

9:                                                ; preds = %4
  br label %10, !dbg !842

10:                                               ; preds = %26, %9
  %11 = trunc i64 %1 to i32, !dbg !843
  %12 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %11, i32 0) #11, !dbg !845
  %13 = trunc i64 %12 to i32, !dbg !845
  call void @llvm.dbg.value(metadata i32 %13, metadata !846, metadata !DIExpression()), !dbg !836
  br label %14, !dbg !847

14:                                               ; preds = %10
  %15 = icmp slt i32 %13, 0, !dbg !848
  br i1 %15, label %16, label %26, !dbg !849

16:                                               ; preds = %14
  %17 = call i32* @__errno_location() #10, !dbg !850
  %18 = load i32, i32* %17, align 4, !dbg !850
  %19 = icmp eq i32 %18, 4, !dbg !851
  br i1 %19, label %24, label %20, !dbg !852

20:                                               ; preds = %16
  %21 = call i32* @__errno_location() #10, !dbg !853
  %22 = load i32, i32* %21, align 4, !dbg !853
  %23 = icmp eq i32 %22, 11, !dbg !854
  br label %24, !dbg !852

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i1 [ false, %14 ], [ %25, %24 ], !dbg !836
  br i1 %27, label %10, label %28, !dbg !847, !llvm.loop !855

28:                                               ; preds = %26
  %29 = trunc i64 %1 to i32, !dbg !857
  %30 = icmp eq i32 %13, %29, !dbg !858
  %31 = zext i1 %30 to i32, !dbg !858
  %32 = sub nsw i32 %31, 1, !dbg !859
  ret i32 %32, !dbg !860
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #6

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !861 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32* @__errno_location() #10, !dbg !862
  %3 = load i32, i32* %2, align 4, !dbg !862
  call void @llvm.dbg.value(metadata i32 %3, metadata !863, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !865, metadata !DIExpression()), !dbg !867
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !868
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !870
  %6 = icmp eq i32 %5, 0, !dbg !871
  br i1 %6, label %7, label %10, !dbg !872

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  store i32 1, i32* %8, align 4, !dbg !873
  %9 = call i32* @__errno_location() #10, !dbg !875
  store i32 %3, i32* %9, align 4, !dbg !876
  br label %18, !dbg !877

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  store i32 0, i32* %11, align 4, !dbg !878
  %12 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !879
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  store i32 %12, i32* %13, align 4, !dbg !881
  %14 = icmp eq i32 %12, -1, !dbg !882
  br i1 %14, label %15, label %16, !dbg !883

15:                                               ; preds = %10
  call void @abort() #9, !dbg !884
  unreachable, !dbg !884

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #10, !dbg !886
  store i32 %3, i32* %17, align 4, !dbg !887
  br label %18, !dbg !888

18:                                               ; preds = %16, %7
  ret void, !dbg !888
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !90 {
  %1 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !889, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !926, metadata !DIExpression()), !dbg !928
  %2 = getelementptr inbounds [3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0
  br label %3, !dbg !929

3:                                                ; preds = %29, %0
  %.01 = phi i8** [ %2, %0 ], [ %.1, %29 ], !dbg !928
  call void @llvm.dbg.value(metadata i8** %.01, metadata !926, metadata !DIExpression()), !dbg !928
  %4 = load i8*, i8** %.01, align 8, !dbg !930
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 0), !dbg !932
  call void @llvm.dbg.value(metadata i32 %5, metadata !933, metadata !DIExpression()), !dbg !928
  %6 = icmp ne i32 %5, -1, !dbg !934
  br i1 %6, label %7, label %21, !dbg !936

7:                                                ; preds = %3
  %8 = call i32 @fstat(i32 %5, %struct.stat* %1) #11, !dbg !937
  %9 = icmp eq i32 %8, 0, !dbg !940
  br i1 %9, label %10, label %19, !dbg !941

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !942
  %12 = load i32, i32* %11, align 8, !dbg !942
  %13 = and i32 %12, 61440, !dbg !942
  %14 = icmp eq i32 %13, 8192, !dbg !942
  br i1 %14, label %15, label %19, !dbg !943

15:                                               ; preds = %10
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 1), !dbg !944
  %17 = or i32 %16, 1, !dbg !946
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 2, i32 %17), !dbg !947
  br label %34, !dbg !948

19:                                               ; preds = %10, %7
  %20 = call i32 @close(i32 %5), !dbg !949
  br label %27, !dbg !950

21:                                               ; preds = %3
  %22 = call i32* @__errno_location() #10, !dbg !951
  %23 = load i32, i32* %22, align 4, !dbg !951
  %24 = icmp eq i32 %23, 4, !dbg !953
  br i1 %24, label %25, label %26, !dbg !954

25:                                               ; preds = %21
  br label %29, !dbg !955

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !957
  call void @llvm.dbg.value(metadata i8** %28, metadata !926, metadata !DIExpression()), !dbg !928
  br label %29, !dbg !958

29:                                               ; preds = %27, %25
  %.1 = phi i8** [ %28, %27 ], [ %.01, %25 ], !dbg !928
  call void @llvm.dbg.value(metadata i8** %.1, metadata !926, metadata !DIExpression()), !dbg !928
  %30 = load i8*, i8** %.1, align 8, !dbg !959
  %31 = icmp ne i8* %30, null, !dbg !960
  br i1 %31, label %3, label %32, !dbg !958, !llvm.loop !961

32:                                               ; preds = %29
  %33 = call i32* @__errno_location() #10, !dbg !963
  store i32 5, i32* %33, align 4, !dbg !964
  br label %34, !dbg !965

34:                                               ; preds = %32, %15
  %.0 = phi i32 [ %5, %15 ], [ -1, %32 ], !dbg !928
  ret i32 %.0, !dbg !966
}

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #6

declare dso_local i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !967 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !968, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %1, metadata !970, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 0, metadata !972, metadata !DIExpression()), !dbg !969
  br label %3, !dbg !973

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !969
  call void @llvm.dbg.value(metadata i64 %.0, metadata !972, metadata !DIExpression()), !dbg !969
  %4 = icmp ult i64 %.0, %1, !dbg !974
  br i1 %4, label %5, label %8, !dbg !973

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !975
  call void @llvm.dbg.value(metadata i64 %6, metadata !972, metadata !DIExpression()), !dbg !969
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !977
  store volatile i8 0, i8* %7, align 1, !dbg !978
  br label %3, !dbg !973, !llvm.loop !979

8:                                                ; preds = %3
  ret void, !dbg !981
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !982 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !986, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %1, metadata !988, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i64 %2, metadata !989, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %0, metadata !990, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8* %1, metadata !991, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i8 0, metadata !992, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i64 0, metadata !993, metadata !DIExpression()), !dbg !987
  br label %4, !dbg !994

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !996
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !987
  call void @llvm.dbg.value(metadata i8 %.0, metadata !992, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i64 %.01, metadata !993, metadata !DIExpression()), !dbg !987
  %5 = icmp ult i64 %.01, %2, !dbg !997
  br i1 %5, label %6, label %19, !dbg !999

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !1000
  %8 = load i8, i8* %7, align 1, !dbg !1000
  %9 = zext i8 %8 to i32, !dbg !1000
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !1002
  %11 = load i8, i8* %10, align 1, !dbg !1002
  %12 = zext i8 %11 to i32, !dbg !1002
  %13 = xor i32 %9, %12, !dbg !1003
  %14 = zext i8 %.0 to i32, !dbg !1004
  %15 = or i32 %14, %13, !dbg !1004
  %16 = trunc i32 %15 to i8, !dbg !1004
  call void @llvm.dbg.value(metadata i8 %16, metadata !992, metadata !DIExpression()), !dbg !987
  br label %17, !dbg !1005

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !1006
  call void @llvm.dbg.value(metadata i64 %18, metadata !993, metadata !DIExpression()), !dbg !987
  br label %4, !dbg !1007, !llvm.loop !1008

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !1010
  %21 = sub nsw i32 %20, 1, !dbg !1011
  %22 = ashr i32 %21, 8, !dbg !1012
  %23 = and i32 1, %22, !dbg !1013
  %24 = sub nsw i32 %23, 1, !dbg !1014
  ret i32 %24, !dbg !1015
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !1016 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1022, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i64 %1, metadata !1024, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i8* %2, metadata !1025, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i64 %3, metadata !1026, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i64 0, metadata !1027, metadata !DIExpression()), !dbg !1023
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !1028
  br i1 %5, label %9, label %6, !dbg !1030

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !1031
  %8 = icmp ult i64 %1, %7, !dbg !1032
  br i1 %8, label %9, label %10, !dbg !1033

9:                                                ; preds = %6, %4
  call void @abort() #9, !dbg !1034
  unreachable, !dbg !1034

10:                                               ; preds = %6
  br label %11, !dbg !1036

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !1023
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1027, metadata !DIExpression()), !dbg !1023
  %12 = icmp ult i64 %.0, %3, !dbg !1037
  br i1 %12, label %13, label %47, !dbg !1036

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1038
  %15 = load i8, i8* %14, align 1, !dbg !1038
  %16 = zext i8 %15 to i32, !dbg !1038
  %17 = and i32 %16, 15, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %17, metadata !1041, metadata !DIExpression()), !dbg !1023
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1042
  %19 = load i8, i8* %18, align 1, !dbg !1042
  %20 = zext i8 %19 to i32, !dbg !1042
  %21 = ashr i32 %20, 4, !dbg !1043
  call void @llvm.dbg.value(metadata i32 %21, metadata !1044, metadata !DIExpression()), !dbg !1023
  %22 = add i32 87, %17, !dbg !1045
  %23 = sub i32 %17, 10, !dbg !1046
  %24 = lshr i32 %23, 8, !dbg !1047
  %25 = and i32 %24, -39, !dbg !1048
  %26 = add i32 %22, %25, !dbg !1049
  %27 = trunc i32 %26 to i8, !dbg !1050
  %28 = zext i8 %27 to i32, !dbg !1050
  %29 = shl i32 %28, 8, !dbg !1051
  %30 = add i32 87, %21, !dbg !1052
  %31 = sub i32 %21, 10, !dbg !1053
  %32 = lshr i32 %31, 8, !dbg !1054
  %33 = and i32 %32, -39, !dbg !1055
  %34 = add i32 %30, %33, !dbg !1056
  %35 = trunc i32 %34 to i8, !dbg !1057
  %36 = zext i8 %35 to i32, !dbg !1057
  %37 = or i32 %29, %36, !dbg !1058
  call void @llvm.dbg.value(metadata i32 %37, metadata !1059, metadata !DIExpression()), !dbg !1023
  %38 = trunc i32 %37 to i8, !dbg !1060
  %39 = mul i64 %.0, 2, !dbg !1061
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !1062
  store i8 %38, i8* %40, align 1, !dbg !1063
  %41 = lshr i32 %37, 8, !dbg !1064
  call void @llvm.dbg.value(metadata i32 %41, metadata !1059, metadata !DIExpression()), !dbg !1023
  %42 = trunc i32 %41 to i8, !dbg !1065
  %43 = mul i64 %.0, 2, !dbg !1066
  %44 = add i64 %43, 1, !dbg !1067
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !1068
  store i8 %42, i8* %45, align 1, !dbg !1069
  %46 = add i64 %.0, 1, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %46, metadata !1027, metadata !DIExpression()), !dbg !1023
  br label %11, !dbg !1036, !llvm.loop !1071

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !1073
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !1074
  store i8 0, i8* %49, align 1, !dbg !1075
  ret i8* %0, !dbg !1076
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !1077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 %1, metadata !1086, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8* %2, metadata !1087, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 %3, metadata !1088, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8* %4, metadata !1089, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64* %5, metadata !1090, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8** %6, metadata !1091, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 0, metadata !1092, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 0, metadata !1093, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1094, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8 0, metadata !1095, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8 0, metadata !1096, metadata !DIExpression()), !dbg !1085
  br label %8, !dbg !1097

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !1098
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !1085
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !1085
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !1085
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1096, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1095, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1093, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1092, metadata !DIExpression()), !dbg !1085
  %9 = icmp ult i64 %.03, %3, !dbg !1099
  br i1 %9, label %10, label %78, !dbg !1097

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !1100
  %12 = load i8, i8* %11, align 1, !dbg !1100
  call void @llvm.dbg.value(metadata i8 %12, metadata !1102, metadata !DIExpression()), !dbg !1085
  %13 = zext i8 %12 to i32, !dbg !1103
  %14 = xor i32 %13, 48, !dbg !1104
  %15 = trunc i32 %14 to i8, !dbg !1103
  call void @llvm.dbg.value(metadata i8 %15, metadata !1105, metadata !DIExpression()), !dbg !1085
  %16 = zext i8 %15 to i32, !dbg !1106
  %17 = sub i32 %16, 10, !dbg !1107
  %18 = lshr i32 %17, 8, !dbg !1108
  %19 = trunc i32 %18 to i8, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %19, metadata !1110, metadata !DIExpression()), !dbg !1085
  %20 = zext i8 %12 to i32, !dbg !1111
  %21 = and i32 %20, -33, !dbg !1112
  %22 = sub i32 %21, 55, !dbg !1113
  %23 = trunc i32 %22 to i8, !dbg !1114
  call void @llvm.dbg.value(metadata i8 %23, metadata !1115, metadata !DIExpression()), !dbg !1085
  %24 = zext i8 %23 to i32, !dbg !1116
  %25 = sub i32 %24, 10, !dbg !1117
  %26 = zext i8 %23 to i32, !dbg !1118
  %27 = sub i32 %26, 16, !dbg !1119
  %28 = xor i32 %25, %27, !dbg !1120
  %29 = lshr i32 %28, 8, !dbg !1121
  %30 = trunc i32 %29 to i8, !dbg !1122
  call void @llvm.dbg.value(metadata i8 %30, metadata !1123, metadata !DIExpression()), !dbg !1085
  %31 = zext i8 %19 to i32, !dbg !1124
  %32 = zext i8 %30 to i32, !dbg !1126
  %33 = or i32 %31, %32, !dbg !1127
  %34 = icmp eq i32 %33, 0, !dbg !1128
  br i1 %34, label %35, label %47, !dbg !1129

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !1130
  br i1 %36, label %37, label %46, !dbg !1133

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !1134
  %39 = icmp eq i32 %38, 0, !dbg !1135
  br i1 %39, label %40, label %46, !dbg !1136

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !1137
  %42 = call i8* @strchr(i8* %4, i32 %41) #12, !dbg !1138
  %43 = icmp ne i8* %42, null, !dbg !1139
  br i1 %43, label %44, label %46, !dbg !1140

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !1141
  call void @llvm.dbg.value(metadata i64 %45, metadata !1093, metadata !DIExpression()), !dbg !1085
  br label %8, !dbg !1143, !llvm.loop !1144

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !1146

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !1147
  %49 = zext i8 %15 to i32, !dbg !1148
  %50 = and i32 %48, %49, !dbg !1149
  %51 = zext i8 %30 to i32, !dbg !1150
  %52 = zext i8 %23 to i32, !dbg !1151
  %53 = and i32 %51, %52, !dbg !1152
  %54 = or i32 %50, %53, !dbg !1153
  %55 = trunc i32 %54 to i8, !dbg !1154
  call void @llvm.dbg.value(metadata i8 %55, metadata !1155, metadata !DIExpression()), !dbg !1085
  %56 = icmp uge i64 %.05, %1, !dbg !1156
  br i1 %56, label %57, label %59, !dbg !1158

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !1094, metadata !DIExpression()), !dbg !1085
  %58 = call i32* @__errno_location() #10, !dbg !1159
  store i32 34, i32* %58, align 4, !dbg !1161
  br label %78, !dbg !1162

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !1163
  %61 = icmp eq i32 %60, 0, !dbg !1165
  br i1 %61, label %62, label %66, !dbg !1166

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !1167
  %64 = mul i32 %63, 16, !dbg !1169
  %65 = trunc i32 %64 to i8, !dbg !1167
  call void @llvm.dbg.value(metadata i8 %65, metadata !1095, metadata !DIExpression()), !dbg !1085
  br label %73, !dbg !1170

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !1171
  %68 = zext i8 %55 to i32, !dbg !1173
  %69 = or i32 %67, %68, !dbg !1174
  %70 = trunc i32 %69 to i8, !dbg !1171
  %71 = add i64 %.05, 1, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %71, metadata !1092, metadata !DIExpression()), !dbg !1085
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !1176
  store i8 %70, i8* %72, align 1, !dbg !1177
  br label %73

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !1085
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !1085
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1095, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 %.16, metadata !1092, metadata !DIExpression()), !dbg !1085
  %74 = zext i8 %.0 to i32, !dbg !1178
  %75 = xor i32 %74, -1, !dbg !1179
  %76 = trunc i32 %75 to i8, !dbg !1179
  call void @llvm.dbg.value(metadata i8 %76, metadata !1096, metadata !DIExpression()), !dbg !1085
  %77 = add i64 %.03, 1, !dbg !1180
  call void @llvm.dbg.value(metadata i64 %77, metadata !1093, metadata !DIExpression()), !dbg !1085
  br label %8, !dbg !1097, !llvm.loop !1144

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !1085
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1094, metadata !DIExpression()), !dbg !1085
  %79 = zext i8 %.0 to i32, !dbg !1181
  %80 = icmp ne i32 %79, 0, !dbg !1183
  br i1 %80, label %81, label %83, !dbg !1184

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %82, metadata !1093, metadata !DIExpression()), !dbg !1085
  br label %83, !dbg !1187

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !1085
  call void @llvm.dbg.value(metadata i64 %.14, metadata !1093, metadata !DIExpression()), !dbg !1085
  %84 = icmp ne i8** %6, null, !dbg !1188
  br i1 %84, label %85, label %87, !dbg !1190

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !1191
  store i8* %86, i8** %6, align 8, !dbg !1193
  br label %87, !dbg !1194

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !1195
  br i1 %88, label %89, label %90, !dbg !1197

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !1198
  br label %90, !dbg !1200

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !1201
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !1202 {
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* @canary, i64 0, i64 0
  call void @randombytes_buf(i8* %1, i64 16), !dbg !1203
  ret i32 0, !dbg !1204
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !1205 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1206, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %1, metadata !1208, metadata !DIExpression()), !dbg !1207
  %3 = call i32* @__errno_location() #10, !dbg !1209
  store i32 38, i32* %3, align 4, !dbg !1210
  ret i32 -1, !dbg !1211
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !1212 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1213, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %1, metadata !1215, metadata !DIExpression()), !dbg !1214
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !1216
  %3 = call i32* @__errno_location() #10, !dbg !1217
  store i32 38, i32* %3, align 4, !dbg !1218
  ret i32 -1, !dbg !1219
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !1220 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1223, metadata !DIExpression()), !dbg !1224
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %2, metadata !1227, metadata !DIExpression()), !dbg !1224
  %3 = icmp eq i8* %2, null, !dbg !1228
  br i1 %3, label %4, label %5, !dbg !1229

4:                                                ; preds = %1
  br label %6, !dbg !1230

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !1232
  br label %6, !dbg !1233

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !1224
  ret i8* %.0, !dbg !1234
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !1235 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1236, metadata !DIExpression()), !dbg !1237
  %2 = call noalias i8* @malloc(i64 %0) #11, !dbg !1238
  ret i8* %2, !dbg !1239
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !1240 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %1, metadata !1245, metadata !DIExpression()), !dbg !1244
  %3 = icmp ugt i64 %0, 0, !dbg !1246
  br i1 %3, label %4, label %9, !dbg !1248

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !1249
  %6 = icmp uge i64 %1, %5, !dbg !1250
  br i1 %6, label %7, label %9, !dbg !1251

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #10, !dbg !1252
  store i32 12, i32* %8, align 4, !dbg !1254
  br label %12, !dbg !1255

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1257, metadata !DIExpression()), !dbg !1244
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !1258
  br label %12, !dbg !1259

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !1244
  ret i8* %.0, !dbg !1260
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !1261 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1264, metadata !DIExpression()), !dbg !1265
  call void @free(i8* %0) #11, !dbg !1266
  ret void, !dbg !1267
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !1268 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1271, metadata !DIExpression()), !dbg !1272
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !1273
  ret i32 %2, !dbg !1274
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !1275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1278, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i64 %1, metadata !1280, metadata !DIExpression()), !dbg !1279
  %3 = call i32* @__errno_location() #10, !dbg !1281
  store i32 38, i32* %3, align 4, !dbg !1282
  ret i32 -1, !dbg !1283
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !1284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1288, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !1290, metadata !DIExpression()), !dbg !1289
  %3 = call i32* @__errno_location() #10, !dbg !1291
  store i32 38, i32* %3, align 4, !dbg !1292
  ret i32 -1, !dbg !1293
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !1294 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1295, metadata !DIExpression()), !dbg !1296
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !1297
  ret i32 %2, !dbg !1298
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !1299 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1300, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %1, metadata !1302, metadata !DIExpression()), !dbg !1301
  %3 = call i32* @__errno_location() #10, !dbg !1303
  store i32 38, i32* %3, align 4, !dbg !1304
  ret i32 -1, !dbg !1305
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !1306 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1307, metadata !DIExpression()), !dbg !1308
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !1309
  ret i32 %2, !dbg !1310
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !1311 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1312, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %1, metadata !1314, metadata !DIExpression()), !dbg !1313
  %3 = call i32* @__errno_location() #10, !dbg !1315
  store i32 38, i32* %3, align 4, !dbg !1316
  ret i32 -1, !dbg !1317
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

!llvm.dbg.cu = !{!115, !2, !25, !71, !104}
!llvm.ident = !{!117, !117, !117, !117, !117}
!llvm.module.flags = !{!118, !119, !120}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "PAD", scope: !2, file: !3, line: 196, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../libsodium/src/libsodium/crypto_hash/sha256/cp/hash_sha256.c", directory: "/home/luwei/bech-back/libsodium/Sha256")
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
!26 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/randombytes.c", directory: "/home/luwei/bech-back/libsodium/Sha256")
!27 = !{!11, !6, !28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !{!23}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "randombytes_implementation", file: !35, line: 26, baseType: !36)
!35 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/randombytes.h", directory: "/home/luwei/bech-back/libsodium/Sha256")
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
!72 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/Sha256")
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
!105 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/Sha256")
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
!116 = !DIFile(filename: "crypto_hash_sha256.c", directory: "/home/luwei/bech-back/libsodium/Sha256")
!117 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!118 = !{i32 7, !"Dwarf Version", i32 4}
!119 = !{i32 2, !"Debug Info Version", i32 3}
!120 = !{i32 1, !"wchar_size", i32 4}
!121 = distinct !DISubprogram(name: "crypto_hash_sha256_wrapper", scope: !116, file: !116, line: 5, type: !122, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !4)
!122 = !DISubroutineType(types: !123)
!123 = !{!68, !78, !109}
!124 = !DILocalVariable(name: "out", arg: 1, scope: !121, file: !116, line: 5, type: !78)
!125 = !DILocation(line: 0, scope: !121)
!126 = !DILocalVariable(name: "in", arg: 2, scope: !121, file: !116, line: 5, type: !109)
!127 = !DILocation(line: 7, column: 13, scope: !121)
!128 = !DILocation(line: 7, column: 3, scope: !121)
!129 = !DILocation(line: 8, column: 13, scope: !121)
!130 = !DILocation(line: 8, column: 3, scope: !121)
!131 = !DILocation(line: 10, column: 10, scope: !121)
!132 = !DILocation(line: 10, column: 3, scope: !121)
!133 = distinct !DISubprogram(name: "crypto_hash_sha256_wrapper_t", scope: !116, file: !116, line: 19, type: !51, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !115, retainedNodes: !4)
!134 = !DILocalVariable(name: "dout", scope: !133, file: !116, line: 21, type: !16)
!135 = !DILocation(line: 21, column: 17, scope: !133)
!136 = !DILocation(line: 21, column: 24, scope: !133)
!137 = !DILocalVariable(name: "din", scope: !133, file: !116, line: 22, type: !110)
!138 = !DILocation(line: 22, column: 24, scope: !133)
!139 = !DILocation(line: 22, column: 30, scope: !133)
!140 = !DILocation(line: 23, column: 26, scope: !133)
!141 = !DILocalVariable(name: "dk", scope: !133, file: !116, line: 23, type: !110)
!142 = !DILocation(line: 0, scope: !133)
!143 = !DILocation(line: 24, column: 27, scope: !133)
!144 = !DILocalVariable(name: "dc", scope: !133, file: !116, line: 24, type: !110)
!145 = !DILocalVariable(name: "out", scope: !133, file: !116, line: 25, type: !78)
!146 = !DILocalVariable(name: "in", scope: !133, file: !116, line: 26, type: !109)
!147 = !DILocation(line: 28, column: 3, scope: !133)
!148 = !DILocation(line: 29, column: 1, scope: !133)
!149 = distinct !DISubprogram(name: "crypto_hash_sha256_init", scope: !3, file: !3, line: 219, type: !150, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!150 = !DISubroutineType(types: !151)
!151 = !{!68, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_hash_sha256_state", file: !154, line: 28, baseType: !155)
!154 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/crypto_hash_sha256.h", directory: "/home/luwei/bech-back/libsodium/Sha256")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_hash_sha256_state", file: !154, line: 24, size: 832, elements: !156)
!156 = !{!157, !161, !165}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !155, file: !154, line: 25, baseType: !158, size: 256)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !155, file: !154, line: 26, baseType: !162, size: 64, offset: 256)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 2)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !155, file: !154, line: 27, baseType: !20, size: 512, offset: 320)
!166 = !DILocalVariable(name: "state", arg: 1, scope: !149, file: !3, line: 219, type: !152)
!167 = !DILocation(line: 0, scope: !149)
!168 = !DILocation(line: 221, column: 30, scope: !149)
!169 = !DILocation(line: 221, column: 23, scope: !149)
!170 = !DILocation(line: 221, column: 39, scope: !149)
!171 = !DILocation(line: 221, column: 12, scope: !149)
!172 = !DILocation(line: 221, column: 5, scope: !149)
!173 = !DILocation(line: 221, column: 21, scope: !149)
!174 = !DILocation(line: 223, column: 12, scope: !149)
!175 = !DILocation(line: 223, column: 5, scope: !149)
!176 = !DILocation(line: 223, column: 21, scope: !149)
!177 = !DILocation(line: 224, column: 12, scope: !149)
!178 = !DILocation(line: 224, column: 5, scope: !149)
!179 = !DILocation(line: 224, column: 21, scope: !149)
!180 = !DILocation(line: 225, column: 12, scope: !149)
!181 = !DILocation(line: 225, column: 5, scope: !149)
!182 = !DILocation(line: 225, column: 21, scope: !149)
!183 = !DILocation(line: 226, column: 12, scope: !149)
!184 = !DILocation(line: 226, column: 5, scope: !149)
!185 = !DILocation(line: 226, column: 21, scope: !149)
!186 = !DILocation(line: 227, column: 12, scope: !149)
!187 = !DILocation(line: 227, column: 5, scope: !149)
!188 = !DILocation(line: 227, column: 21, scope: !149)
!189 = !DILocation(line: 228, column: 12, scope: !149)
!190 = !DILocation(line: 228, column: 5, scope: !149)
!191 = !DILocation(line: 228, column: 21, scope: !149)
!192 = !DILocation(line: 229, column: 12, scope: !149)
!193 = !DILocation(line: 229, column: 5, scope: !149)
!194 = !DILocation(line: 229, column: 21, scope: !149)
!195 = !DILocation(line: 230, column: 12, scope: !149)
!196 = !DILocation(line: 230, column: 5, scope: !149)
!197 = !DILocation(line: 230, column: 21, scope: !149)
!198 = !DILocation(line: 232, column: 5, scope: !149)
!199 = distinct !DISubprogram(name: "crypto_hash_sha256_update", scope: !3, file: !3, line: 236, type: !200, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!200 = !DISubroutineType(types: !201)
!201 = !{!68, !152, !109, !17}
!202 = !DILocalVariable(name: "state", arg: 1, scope: !199, file: !3, line: 236, type: !152)
!203 = !DILocation(line: 0, scope: !199)
!204 = !DILocalVariable(name: "in", arg: 2, scope: !199, file: !3, line: 237, type: !109)
!205 = !DILocalVariable(name: "inlen", arg: 3, scope: !199, file: !3, line: 238, type: !17)
!206 = !DILocalVariable(name: "bitlen", scope: !199, file: !3, line: 240, type: !162)
!207 = !DILocation(line: 240, column: 14, scope: !199)
!208 = !DILocation(line: 243, column: 17, scope: !199)
!209 = !DILocation(line: 243, column: 10, scope: !199)
!210 = !DILocation(line: 243, column: 26, scope: !199)
!211 = !DILocation(line: 243, column: 32, scope: !199)
!212 = !DILocalVariable(name: "r", scope: !199, file: !3, line: 241, type: !6)
!213 = !DILocation(line: 245, column: 18, scope: !199)
!214 = !DILocation(line: 245, column: 35, scope: !199)
!215 = !DILocation(line: 245, column: 5, scope: !199)
!216 = !DILocation(line: 245, column: 15, scope: !199)
!217 = !DILocation(line: 246, column: 34, scope: !199)
!218 = !DILocation(line: 246, column: 17, scope: !199)
!219 = !DILocation(line: 246, column: 5, scope: !199)
!220 = !DILocation(line: 246, column: 15, scope: !199)
!221 = !DILocation(line: 249, column: 29, scope: !222)
!222 = distinct !DILexicalBlock(scope: !199, file: !3, line: 249, column: 9)
!223 = !DILocation(line: 249, column: 17, scope: !222)
!224 = !DILocation(line: 249, column: 10, scope: !222)
!225 = !DILocation(line: 249, column: 26, scope: !222)
!226 = !DILocation(line: 249, column: 42, scope: !222)
!227 = !DILocation(line: 249, column: 40, scope: !222)
!228 = !DILocation(line: 249, column: 9, scope: !199)
!229 = !DILocation(line: 250, column: 16, scope: !230)
!230 = distinct !DILexicalBlock(scope: !222, file: !3, line: 249, column: 53)
!231 = !DILocation(line: 250, column: 9, scope: !230)
!232 = !DILocation(line: 250, column: 24, scope: !230)
!233 = !DILocation(line: 251, column: 5, scope: !230)
!234 = !DILocation(line: 253, column: 24, scope: !199)
!235 = !DILocation(line: 253, column: 12, scope: !199)
!236 = !DILocation(line: 253, column: 5, scope: !199)
!237 = !DILocation(line: 253, column: 21, scope: !199)
!238 = !DILocation(line: 255, column: 20, scope: !239)
!239 = distinct !DILexicalBlock(scope: !199, file: !3, line: 255, column: 9)
!240 = !DILocation(line: 255, column: 17, scope: !239)
!241 = !DILocation(line: 255, column: 15, scope: !239)
!242 = !DILocation(line: 255, column: 9, scope: !199)
!243 = !DILocation(line: 256, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !3, line: 255, column: 25)
!245 = !DILocation(line: 256, column: 17, scope: !244)
!246 = !DILocation(line: 256, column: 9, scope: !244)
!247 = !DILocation(line: 257, column: 9, scope: !244)
!248 = !DILocation(line: 259, column: 20, scope: !199)
!249 = !DILocation(line: 259, column: 13, scope: !199)
!250 = !DILocation(line: 259, column: 35, scope: !199)
!251 = !DILocation(line: 259, column: 32, scope: !199)
!252 = !DILocation(line: 259, column: 5, scope: !199)
!253 = !DILocation(line: 260, column: 29, scope: !199)
!254 = !DILocation(line: 260, column: 22, scope: !199)
!255 = !DILocation(line: 260, column: 43, scope: !199)
!256 = !DILocation(line: 260, column: 36, scope: !199)
!257 = !DILocation(line: 260, column: 5, scope: !199)
!258 = !DILocation(line: 261, column: 14, scope: !199)
!259 = !DILocation(line: 261, column: 8, scope: !199)
!260 = !DILocation(line: 262, column: 17, scope: !199)
!261 = !DILocation(line: 262, column: 14, scope: !199)
!262 = !DILocation(line: 262, column: 11, scope: !199)
!263 = !DILocation(line: 264, column: 5, scope: !199)
!264 = !DILocation(line: 264, column: 18, scope: !199)
!265 = !DILocation(line: 265, column: 33, scope: !266)
!266 = distinct !DILexicalBlock(scope: !199, file: !3, line: 264, column: 25)
!267 = !DILocation(line: 265, column: 26, scope: !266)
!268 = !DILocation(line: 265, column: 9, scope: !266)
!269 = !DILocation(line: 266, column: 12, scope: !266)
!270 = !DILocation(line: 267, column: 15, scope: !266)
!271 = distinct !{!271, !263, !272, !273}
!272 = !DILocation(line: 268, column: 5, scope: !199)
!273 = !{!"llvm.loop.mustprogress"}
!274 = !DILocation(line: 269, column: 19, scope: !199)
!275 = !DILocation(line: 269, column: 5, scope: !199)
!276 = !DILocation(line: 271, column: 5, scope: !199)
!277 = !DILocation(line: 272, column: 1, scope: !199)
!278 = distinct !DISubprogram(name: "SHA256_Transform", scope: !3, file: !3, line: 107, type: !279, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281, !109}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!282 = !DILocalVariable(name: "state", arg: 1, scope: !278, file: !3, line: 107, type: !281)
!283 = !DILocation(line: 0, scope: !278)
!284 = !DILocalVariable(name: "block", arg: 2, scope: !278, file: !3, line: 107, type: !109)
!285 = !DILocalVariable(name: "W", scope: !278, file: !3, line: 109, type: !286)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !21)
!287 = !DILocation(line: 109, column: 14, scope: !278)
!288 = !DILocalVariable(name: "S", scope: !278, file: !3, line: 110, type: !158)
!289 = !DILocation(line: 110, column: 14, scope: !278)
!290 = !DILocalVariable(name: "t0", scope: !278, file: !3, line: 111, type: !6)
!291 = !DILocation(line: 111, column: 14, scope: !278)
!292 = !DILocalVariable(name: "t1", scope: !278, file: !3, line: 111, type: !6)
!293 = !DILocation(line: 111, column: 18, scope: !278)
!294 = !DILocation(line: 114, column: 18, scope: !278)
!295 = !DILocation(line: 114, column: 5, scope: !278)
!296 = !DILocalVariable(name: "i", scope: !278, file: !3, line: 112, type: !68)
!297 = !DILocation(line: 115, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !278, file: !3, line: 115, column: 5)
!299 = !DILocation(line: 0, scope: !298)
!300 = !DILocation(line: 115, column: 20, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 115, column: 5)
!302 = !DILocation(line: 115, column: 5, scope: !298)
!303 = !DILocation(line: 116, column: 16, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !3, line: 115, column: 31)
!305 = !DILocation(line: 116, column: 35, scope: !304)
!306 = !DILocation(line: 116, column: 31, scope: !304)
!307 = !DILocation(line: 116, column: 29, scope: !304)
!308 = !DILocation(line: 116, column: 42, scope: !304)
!309 = !DILocation(line: 116, column: 40, scope: !304)
!310 = !DILocation(line: 116, column: 62, scope: !304)
!311 = !DILocation(line: 116, column: 58, scope: !304)
!312 = !DILocation(line: 116, column: 56, scope: !304)
!313 = !DILocation(line: 116, column: 9, scope: !304)
!314 = !DILocation(line: 116, column: 14, scope: !304)
!315 = !DILocation(line: 117, column: 5, scope: !304)
!316 = !DILocation(line: 115, column: 27, scope: !301)
!317 = !DILocation(line: 115, column: 5, scope: !301)
!318 = distinct !{!318, !302, !319, !273}
!319 = !DILocation(line: 117, column: 5, scope: !298)
!320 = !DILocation(line: 119, column: 5, scope: !278)
!321 = !DILocation(line: 121, column: 5, scope: !278)
!322 = !DILocation(line: 122, column: 5, scope: !278)
!323 = !DILocation(line: 123, column: 5, scope: !278)
!324 = !DILocation(line: 124, column: 5, scope: !278)
!325 = !DILocation(line: 125, column: 5, scope: !278)
!326 = !DILocation(line: 126, column: 5, scope: !278)
!327 = !DILocation(line: 127, column: 5, scope: !278)
!328 = !DILocation(line: 128, column: 5, scope: !278)
!329 = !DILocation(line: 129, column: 5, scope: !278)
!330 = !DILocation(line: 130, column: 5, scope: !278)
!331 = !DILocation(line: 131, column: 5, scope: !278)
!332 = !DILocation(line: 132, column: 5, scope: !278)
!333 = !DILocation(line: 133, column: 5, scope: !278)
!334 = !DILocation(line: 134, column: 5, scope: !278)
!335 = !DILocation(line: 135, column: 5, scope: !278)
!336 = !DILocation(line: 136, column: 5, scope: !278)
!337 = !DILocation(line: 137, column: 5, scope: !278)
!338 = !DILocation(line: 138, column: 5, scope: !278)
!339 = !DILocation(line: 139, column: 5, scope: !278)
!340 = !DILocation(line: 140, column: 5, scope: !278)
!341 = !DILocation(line: 141, column: 5, scope: !278)
!342 = !DILocation(line: 142, column: 5, scope: !278)
!343 = !DILocation(line: 143, column: 5, scope: !278)
!344 = !DILocation(line: 144, column: 5, scope: !278)
!345 = !DILocation(line: 145, column: 5, scope: !278)
!346 = !DILocation(line: 146, column: 5, scope: !278)
!347 = !DILocation(line: 147, column: 5, scope: !278)
!348 = !DILocation(line: 148, column: 5, scope: !278)
!349 = !DILocation(line: 149, column: 5, scope: !278)
!350 = !DILocation(line: 150, column: 5, scope: !278)
!351 = !DILocation(line: 151, column: 5, scope: !278)
!352 = !DILocation(line: 152, column: 5, scope: !278)
!353 = !DILocation(line: 153, column: 5, scope: !278)
!354 = !DILocation(line: 154, column: 5, scope: !278)
!355 = !DILocation(line: 155, column: 5, scope: !278)
!356 = !DILocation(line: 156, column: 5, scope: !278)
!357 = !DILocation(line: 157, column: 5, scope: !278)
!358 = !DILocation(line: 158, column: 5, scope: !278)
!359 = !DILocation(line: 159, column: 5, scope: !278)
!360 = !DILocation(line: 160, column: 5, scope: !278)
!361 = !DILocation(line: 161, column: 5, scope: !278)
!362 = !DILocation(line: 162, column: 5, scope: !278)
!363 = !DILocation(line: 163, column: 5, scope: !278)
!364 = !DILocation(line: 164, column: 5, scope: !278)
!365 = !DILocation(line: 165, column: 5, scope: !278)
!366 = !DILocation(line: 166, column: 5, scope: !278)
!367 = !DILocation(line: 167, column: 5, scope: !278)
!368 = !DILocation(line: 168, column: 5, scope: !278)
!369 = !DILocation(line: 169, column: 5, scope: !278)
!370 = !DILocation(line: 170, column: 5, scope: !278)
!371 = !DILocation(line: 171, column: 5, scope: !278)
!372 = !DILocation(line: 172, column: 5, scope: !278)
!373 = !DILocation(line: 173, column: 5, scope: !278)
!374 = !DILocation(line: 174, column: 5, scope: !278)
!375 = !DILocation(line: 175, column: 5, scope: !278)
!376 = !DILocation(line: 176, column: 5, scope: !278)
!377 = !DILocation(line: 177, column: 5, scope: !278)
!378 = !DILocation(line: 178, column: 5, scope: !278)
!379 = !DILocation(line: 179, column: 5, scope: !278)
!380 = !DILocation(line: 180, column: 5, scope: !278)
!381 = !DILocation(line: 181, column: 5, scope: !278)
!382 = !DILocation(line: 182, column: 5, scope: !278)
!383 = !DILocation(line: 183, column: 5, scope: !278)
!384 = !DILocation(line: 184, column: 5, scope: !278)
!385 = !DILocation(line: 186, column: 10, scope: !386)
!386 = distinct !DILexicalBlock(scope: !278, file: !3, line: 186, column: 5)
!387 = !DILocation(line: 0, scope: !386)
!388 = !DILocation(line: 186, column: 19, scope: !389)
!389 = distinct !DILexicalBlock(scope: !386, file: !3, line: 186, column: 5)
!390 = !DILocation(line: 186, column: 5, scope: !386)
!391 = !DILocation(line: 187, column: 21, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !3, line: 186, column: 29)
!393 = !DILocation(line: 187, column: 9, scope: !392)
!394 = !DILocation(line: 187, column: 18, scope: !392)
!395 = !DILocation(line: 188, column: 5, scope: !392)
!396 = !DILocation(line: 186, column: 25, scope: !389)
!397 = !DILocation(line: 186, column: 5, scope: !389)
!398 = distinct !{!398, !390, !399, !273}
!399 = !DILocation(line: 188, column: 5, scope: !386)
!400 = !DILocation(line: 190, column: 29, scope: !278)
!401 = !DILocation(line: 190, column: 20, scope: !278)
!402 = !DILocation(line: 190, column: 5, scope: !278)
!403 = !DILocation(line: 191, column: 29, scope: !278)
!404 = !DILocation(line: 191, column: 20, scope: !278)
!405 = !DILocation(line: 191, column: 5, scope: !278)
!406 = !DILocation(line: 192, column: 20, scope: !278)
!407 = !DILocation(line: 192, column: 5, scope: !278)
!408 = !DILocation(line: 193, column: 20, scope: !278)
!409 = !DILocation(line: 193, column: 5, scope: !278)
!410 = !DILocation(line: 194, column: 1, scope: !278)
!411 = distinct !DISubprogram(name: "be32dec_vect", scope: !3, file: !3, line: 75, type: !412, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !281, !109, !28}
!414 = !DILocalVariable(name: "dst", arg: 1, scope: !411, file: !3, line: 75, type: !281)
!415 = !DILocation(line: 0, scope: !411)
!416 = !DILocalVariable(name: "src", arg: 2, scope: !411, file: !3, line: 75, type: !109)
!417 = !DILocalVariable(name: "len", arg: 3, scope: !411, file: !3, line: 75, type: !28)
!418 = !DILocalVariable(name: "i", scope: !411, file: !3, line: 77, type: !28)
!419 = !DILocation(line: 79, column: 10, scope: !420)
!420 = distinct !DILexicalBlock(scope: !411, file: !3, line: 79, column: 5)
!421 = !DILocation(line: 0, scope: !420)
!422 = !DILocation(line: 79, column: 25, scope: !423)
!423 = distinct !DILexicalBlock(scope: !420, file: !3, line: 79, column: 5)
!424 = !DILocation(line: 79, column: 19, scope: !423)
!425 = !DILocation(line: 79, column: 5, scope: !420)
!426 = !DILocation(line: 80, column: 34, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !3, line: 79, column: 35)
!428 = !DILocation(line: 80, column: 30, scope: !427)
!429 = !DILocation(line: 80, column: 18, scope: !427)
!430 = !DILocation(line: 80, column: 9, scope: !427)
!431 = !DILocation(line: 80, column: 16, scope: !427)
!432 = !DILocation(line: 81, column: 5, scope: !427)
!433 = !DILocation(line: 79, column: 31, scope: !423)
!434 = !DILocation(line: 79, column: 5, scope: !423)
!435 = distinct !{!435, !425, !436, !273}
!436 = !DILocation(line: 81, column: 5, scope: !420)
!437 = !DILocation(line: 82, column: 1, scope: !411)
!438 = distinct !DISubprogram(name: "_sha256_be32dec", scope: !3, file: !3, line: 45, type: !439, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!439 = !DISubroutineType(types: !440)
!440 = !{!6, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!443 = !DILocalVariable(name: "pp", arg: 1, scope: !438, file: !3, line: 45, type: !441)
!444 = !DILocation(line: 0, scope: !438)
!445 = !DILocalVariable(name: "p", scope: !438, file: !3, line: 47, type: !12)
!446 = !DILocation(line: 49, column: 24, scope: !438)
!447 = !DILocation(line: 49, column: 13, scope: !438)
!448 = !DILocation(line: 49, column: 44, scope: !438)
!449 = !DILocation(line: 49, column: 33, scope: !438)
!450 = !DILocation(line: 49, column: 50, scope: !438)
!451 = !DILocation(line: 49, column: 30, scope: !438)
!452 = !DILocation(line: 50, column: 25, scope: !438)
!453 = !DILocation(line: 50, column: 14, scope: !438)
!454 = !DILocation(line: 50, column: 31, scope: !438)
!455 = !DILocation(line: 49, column: 56, scope: !438)
!456 = !DILocation(line: 50, column: 52, scope: !438)
!457 = !DILocation(line: 50, column: 41, scope: !438)
!458 = !DILocation(line: 50, column: 58, scope: !438)
!459 = !DILocation(line: 50, column: 38, scope: !438)
!460 = !DILocation(line: 49, column: 5, scope: !438)
!461 = distinct !DISubprogram(name: "crypto_hash_sha256_final", scope: !3, file: !3, line: 275, type: !462, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!462 = !DISubroutineType(types: !463)
!463 = !{!68, !152, !78}
!464 = !DILocalVariable(name: "state", arg: 1, scope: !461, file: !3, line: 275, type: !152)
!465 = !DILocation(line: 0, scope: !461)
!466 = !DILocalVariable(name: "out", arg: 2, scope: !461, file: !3, line: 276, type: !78)
!467 = !DILocation(line: 278, column: 5, scope: !461)
!468 = !DILocation(line: 279, column: 30, scope: !461)
!469 = !DILocation(line: 279, column: 23, scope: !461)
!470 = !DILocation(line: 279, column: 5, scope: !461)
!471 = !DILocation(line: 280, column: 20, scope: !461)
!472 = !DILocation(line: 280, column: 5, scope: !461)
!473 = !DILocation(line: 282, column: 5, scope: !461)
!474 = distinct !DISubprogram(name: "SHA256_Pad", scope: !3, file: !3, line: 204, type: !475, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !152}
!477 = !DILocalVariable(name: "state", arg: 1, scope: !474, file: !3, line: 204, type: !152)
!478 = !DILocation(line: 0, scope: !474)
!479 = !DILocalVariable(name: "len", scope: !474, file: !3, line: 206, type: !480)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !159)
!481 = !DILocation(line: 206, column: 19, scope: !474)
!482 = !DILocation(line: 209, column: 18, scope: !474)
!483 = !DILocation(line: 209, column: 30, scope: !474)
!484 = !DILocation(line: 209, column: 23, scope: !474)
!485 = !DILocation(line: 209, column: 5, scope: !474)
!486 = !DILocation(line: 211, column: 17, scope: !474)
!487 = !DILocation(line: 211, column: 10, scope: !474)
!488 = !DILocation(line: 211, column: 26, scope: !474)
!489 = !DILocation(line: 211, column: 32, scope: !474)
!490 = !DILocalVariable(name: "r", scope: !474, file: !3, line: 207, type: !6)
!491 = !DILocation(line: 212, column: 15, scope: !474)
!492 = !DILocation(line: 212, column: 12, scope: !474)
!493 = !DILocation(line: 212, column: 27, scope: !474)
!494 = !DILocation(line: 212, column: 39, scope: !474)
!495 = !DILocalVariable(name: "plen", scope: !474, file: !3, line: 207, type: !6)
!496 = !DILocation(line: 213, column: 43, scope: !474)
!497 = !DILocation(line: 213, column: 5, scope: !474)
!498 = !DILocation(line: 215, column: 38, scope: !474)
!499 = !DILocation(line: 215, column: 5, scope: !474)
!500 = !DILocation(line: 216, column: 1, scope: !474)
!501 = distinct !DISubprogram(name: "be32enc_vect", scope: !3, file: !3, line: 65, type: !502, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !78, !504, !28}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!505 = !DILocalVariable(name: "dst", arg: 1, scope: !501, file: !3, line: 65, type: !78)
!506 = !DILocation(line: 0, scope: !501)
!507 = !DILocalVariable(name: "src", arg: 2, scope: !501, file: !3, line: 65, type: !504)
!508 = !DILocalVariable(name: "len", arg: 3, scope: !501, file: !3, line: 65, type: !28)
!509 = !DILocalVariable(name: "i", scope: !501, file: !3, line: 67, type: !28)
!510 = !DILocation(line: 69, column: 10, scope: !511)
!511 = distinct !DILexicalBlock(scope: !501, file: !3, line: 69, column: 5)
!512 = !DILocation(line: 0, scope: !511)
!513 = !DILocation(line: 69, column: 25, scope: !514)
!514 = distinct !DILexicalBlock(scope: !511, file: !3, line: 69, column: 5)
!515 = !DILocation(line: 69, column: 19, scope: !514)
!516 = !DILocation(line: 69, column: 5, scope: !511)
!517 = !DILocation(line: 70, column: 25, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !3, line: 69, column: 35)
!519 = !DILocation(line: 70, column: 21, scope: !518)
!520 = !DILocation(line: 70, column: 30, scope: !518)
!521 = !DILocation(line: 70, column: 9, scope: !518)
!522 = !DILocation(line: 71, column: 5, scope: !518)
!523 = !DILocation(line: 69, column: 31, scope: !514)
!524 = !DILocation(line: 69, column: 5, scope: !514)
!525 = distinct !{!525, !516, !526, !273}
!526 = !DILocation(line: 71, column: 5, scope: !511)
!527 = !DILocation(line: 72, column: 1, scope: !501)
!528 = distinct !DISubprogram(name: "_sha256_be32enc", scope: !3, file: !3, line: 54, type: !529, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !11, !6}
!531 = !DILocalVariable(name: "pp", arg: 1, scope: !528, file: !3, line: 54, type: !11)
!532 = !DILocation(line: 0, scope: !528)
!533 = !DILocalVariable(name: "x", arg: 2, scope: !528, file: !3, line: 54, type: !6)
!534 = !DILocalVariable(name: "p", scope: !528, file: !3, line: 56, type: !18)
!535 = !DILocation(line: 58, column: 14, scope: !528)
!536 = !DILocation(line: 58, column: 12, scope: !528)
!537 = !DILocation(line: 58, column: 5, scope: !528)
!538 = !DILocation(line: 58, column: 10, scope: !528)
!539 = !DILocation(line: 59, column: 15, scope: !528)
!540 = !DILocation(line: 59, column: 21, scope: !528)
!541 = !DILocation(line: 59, column: 12, scope: !528)
!542 = !DILocation(line: 59, column: 5, scope: !528)
!543 = !DILocation(line: 59, column: 10, scope: !528)
!544 = !DILocation(line: 60, column: 15, scope: !528)
!545 = !DILocation(line: 60, column: 22, scope: !528)
!546 = !DILocation(line: 60, column: 12, scope: !528)
!547 = !DILocation(line: 60, column: 5, scope: !528)
!548 = !DILocation(line: 60, column: 10, scope: !528)
!549 = !DILocation(line: 61, column: 15, scope: !528)
!550 = !DILocation(line: 61, column: 22, scope: !528)
!551 = !DILocation(line: 61, column: 12, scope: !528)
!552 = !DILocation(line: 61, column: 5, scope: !528)
!553 = !DILocation(line: 61, column: 10, scope: !528)
!554 = !DILocation(line: 62, column: 1, scope: !528)
!555 = distinct !DISubprogram(name: "crypto_hash_sha256", scope: !3, file: !3, line: 286, type: !556, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!556 = !DISubroutineType(types: !557)
!557 = !{!68, !78, !109, !17}
!558 = !DILocalVariable(name: "out", arg: 1, scope: !555, file: !3, line: 286, type: !78)
!559 = !DILocation(line: 0, scope: !555)
!560 = !DILocalVariable(name: "in", arg: 2, scope: !555, file: !3, line: 286, type: !109)
!561 = !DILocalVariable(name: "inlen", arg: 3, scope: !555, file: !3, line: 287, type: !17)
!562 = !DILocalVariable(name: "state", scope: !555, file: !3, line: 289, type: !153)
!563 = !DILocation(line: 289, column: 30, scope: !555)
!564 = !DILocation(line: 291, column: 5, scope: !555)
!565 = !DILocation(line: 292, column: 5, scope: !555)
!566 = !DILocation(line: 293, column: 5, scope: !555)
!567 = !DILocation(line: 295, column: 5, scope: !555)
!568 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !26, file: !26, line: 23, type: !569, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!569 = !DISubroutineType(types: !570)
!570 = !{!68, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!572 = !DILocalVariable(name: "impl", arg: 1, scope: !568, file: !26, line: 23, type: !571)
!573 = !DILocation(line: 0, scope: !568)
!574 = !DILocation(line: 25, column: 20, scope: !568)
!575 = !DILocation(line: 27, column: 5, scope: !568)
!576 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !26, file: !26, line: 31, type: !40, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!577 = !DILocation(line: 34, column: 12, scope: !576)
!578 = !DILocation(line: 34, column: 28, scope: !576)
!579 = !DILocation(line: 34, column: 5, scope: !576)
!580 = distinct !DISubprogram(name: "randombytes_random", scope: !26, file: !26, line: 41, type: !47, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!581 = !DILocation(line: 44, column: 12, scope: !580)
!582 = !DILocation(line: 44, column: 28, scope: !580)
!583 = !DILocation(line: 44, column: 5, scope: !580)
!584 = distinct !DISubprogram(name: "randombytes_stir", scope: !26, file: !26, line: 53, type: !51, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!585 = !DILocation(line: 56, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !584, file: !26, line: 56, column: 9)
!587 = !DILocation(line: 56, column: 24, scope: !586)
!588 = !DILocation(line: 56, column: 32, scope: !586)
!589 = !DILocation(line: 56, column: 35, scope: !586)
!590 = !DILocation(line: 56, column: 51, scope: !586)
!591 = !DILocation(line: 56, column: 56, scope: !586)
!592 = !DILocation(line: 56, column: 9, scope: !584)
!593 = !DILocation(line: 57, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !586, file: !26, line: 56, column: 65)
!595 = !DILocation(line: 57, column: 25, scope: !594)
!596 = !DILocation(line: 58, column: 5, scope: !594)
!597 = !DILocation(line: 87, column: 1, scope: !584)
!598 = distinct !DISubprogram(name: "randombytes_uniform", scope: !26, file: !26, line: 94, type: !55, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!599 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !598, file: !26, line: 94, type: !57)
!600 = !DILocation(line: 0, scope: !598)
!601 = !DILocation(line: 99, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !26, line: 99, column: 9)
!603 = !DILocation(line: 99, column: 24, scope: !602)
!604 = !DILocation(line: 99, column: 32, scope: !602)
!605 = !DILocation(line: 99, column: 35, scope: !602)
!606 = !DILocation(line: 99, column: 51, scope: !602)
!607 = !DILocation(line: 99, column: 59, scope: !602)
!608 = !DILocation(line: 99, column: 9, scope: !598)
!609 = !DILocation(line: 100, column: 16, scope: !610)
!610 = distinct !DILexicalBlock(scope: !602, file: !26, line: 99, column: 68)
!611 = !DILocation(line: 100, column: 32, scope: !610)
!612 = !DILocation(line: 100, column: 9, scope: !610)
!613 = !DILocation(line: 102, column: 21, scope: !614)
!614 = distinct !DILexicalBlock(scope: !598, file: !26, line: 102, column: 9)
!615 = !DILocation(line: 102, column: 9, scope: !598)
!616 = !DILocation(line: 103, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !614, file: !26, line: 102, column: 26)
!618 = !DILocation(line: 105, column: 23, scope: !598)
!619 = !DILocation(line: 105, column: 36, scope: !598)
!620 = !DILocalVariable(name: "min", scope: !598, file: !26, line: 96, type: !6)
!621 = !DILocation(line: 106, column: 5, scope: !598)
!622 = !DILocation(line: 107, column: 13, scope: !623)
!623 = distinct !DILexicalBlock(scope: !598, file: !26, line: 106, column: 8)
!624 = !DILocalVariable(name: "r", scope: !598, file: !26, line: 97, type: !6)
!625 = !DILocation(line: 108, column: 5, scope: !623)
!626 = !DILocation(line: 108, column: 16, scope: !598)
!627 = distinct !{!627, !621, !628, !273}
!628 = !DILocation(line: 108, column: 21, scope: !598)
!629 = !DILocation(line: 110, column: 14, scope: !598)
!630 = !DILocation(line: 110, column: 5, scope: !598)
!631 = !DILocation(line: 111, column: 1, scope: !598)
!632 = distinct !DISubprogram(name: "randombytes_buf", scope: !26, file: !26, line: 114, type: !60, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!633 = !DILocalVariable(name: "buf", arg: 1, scope: !632, file: !26, line: 114, type: !62)
!634 = !DILocation(line: 0, scope: !632)
!635 = !DILocalVariable(name: "size", arg: 2, scope: !632, file: !26, line: 114, type: !63)
!636 = !DILocation(line: 117, column: 14, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !26, line: 117, column: 9)
!638 = !DILocation(line: 117, column: 9, scope: !632)
!639 = !DILocation(line: 118, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !26, line: 117, column: 29)
!641 = !DILocation(line: 118, column: 25, scope: !640)
!642 = !DILocation(line: 119, column: 5, scope: !640)
!643 = !DILocation(line: 128, column: 1, scope: !632)
!644 = distinct !DISubprogram(name: "randombytes_close", scope: !26, file: !26, line: 131, type: !66, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!645 = !DILocation(line: 133, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !644, file: !26, line: 133, column: 9)
!647 = !DILocation(line: 133, column: 24, scope: !646)
!648 = !DILocation(line: 133, column: 32, scope: !646)
!649 = !DILocation(line: 133, column: 35, scope: !646)
!650 = !DILocation(line: 133, column: 51, scope: !646)
!651 = !DILocation(line: 133, column: 57, scope: !646)
!652 = !DILocation(line: 133, column: 9, scope: !644)
!653 = !DILocation(line: 134, column: 16, scope: !654)
!654 = distinct !DILexicalBlock(scope: !646, file: !26, line: 133, column: 66)
!655 = !DILocation(line: 134, column: 32, scope: !654)
!656 = !DILocation(line: 134, column: 9, scope: !654)
!657 = !DILocation(line: 136, column: 5, scope: !644)
!658 = !DILocation(line: 0, scope: !644)
!659 = !DILocation(line: 137, column: 1, scope: !644)
!660 = distinct !DISubprogram(name: "randombytes", scope: !26, file: !26, line: 140, type: !661, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !4)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !663, !664}
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!665 = !DILocalVariable(name: "buf", arg: 1, scope: !660, file: !26, line: 140, type: !663)
!666 = !DILocation(line: 0, scope: !660)
!667 = !DILocalVariable(name: "buf_len", arg: 2, scope: !660, file: !26, line: 140, type: !664)
!668 = !DILocation(line: 142, column: 5, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !26, line: 142, column: 5)
!670 = distinct !DILexicalBlock(scope: !660, file: !26, line: 142, column: 5)
!671 = !DILocation(line: 142, column: 5, scope: !670)
!672 = !DILocation(line: 143, column: 5, scope: !660)
!673 = !DILocation(line: 144, column: 1, scope: !660)
!674 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !72, file: !72, line: 292, type: !40, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!675 = !DILocation(line: 294, column: 5, scope: !674)
!676 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !72, file: !72, line: 249, type: !47, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!677 = !DILocalVariable(name: "r", scope: !676, file: !72, line: 251, type: !6)
!678 = !DILocation(line: 251, column: 14, scope: !676)
!679 = !DILocation(line: 253, column: 31, scope: !676)
!680 = !DILocation(line: 253, column: 5, scope: !676)
!681 = !DILocation(line: 255, column: 12, scope: !676)
!682 = !DILocation(line: 255, column: 5, scope: !676)
!683 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !72, file: !72, line: 206, type: !51, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!684 = !DILocation(line: 208, column: 16, scope: !685)
!685 = distinct !DILexicalBlock(scope: !683, file: !72, line: 208, column: 9)
!686 = !DILocation(line: 208, column: 28, scope: !685)
!687 = !DILocation(line: 208, column: 9, scope: !683)
!688 = !DILocation(line: 209, column: 9, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !72, line: 208, column: 34)
!690 = !DILocation(line: 210, column: 28, scope: !689)
!691 = !DILocation(line: 211, column: 5, scope: !689)
!692 = !DILocation(line: 212, column: 1, scope: !683)
!693 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !72, file: !72, line: 259, type: !60, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!694 = !DILocalVariable(name: "buf", arg: 1, scope: !693, file: !72, line: 259, type: !62)
!695 = !DILocation(line: 0, scope: !693)
!696 = !DILocalVariable(name: "size", arg: 2, scope: !693, file: !72, line: 259, type: !63)
!697 = !DILocation(line: 261, column: 5, scope: !693)
!698 = !DILocation(line: 268, column: 16, scope: !699)
!699 = distinct !DILexicalBlock(scope: !693, file: !72, line: 268, column: 9)
!700 = !DILocation(line: 268, column: 36, scope: !699)
!701 = !DILocation(line: 268, column: 9, scope: !693)
!702 = !DILocation(line: 269, column: 13, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !72, line: 269, column: 13)
!704 = distinct !DILexicalBlock(scope: !699, file: !72, line: 268, column: 42)
!705 = !DILocation(line: 269, column: 52, scope: !703)
!706 = !DILocation(line: 269, column: 13, scope: !704)
!707 = !DILocation(line: 270, column: 13, scope: !708)
!708 = distinct !DILexicalBlock(scope: !703, file: !72, line: 269, column: 58)
!709 = !DILocation(line: 272, column: 9, scope: !704)
!710 = !DILocation(line: 275, column: 16, scope: !711)
!711 = distinct !DILexicalBlock(scope: !693, file: !72, line: 275, column: 9)
!712 = !DILocation(line: 275, column: 38, scope: !711)
!713 = !DILocation(line: 275, column: 44, scope: !711)
!714 = !DILocation(line: 276, column: 26, scope: !711)
!715 = !DILocation(line: 276, column: 9, scope: !711)
!716 = !DILocation(line: 276, column: 60, scope: !711)
!717 = !DILocation(line: 275, column: 9, scope: !693)
!718 = !DILocation(line: 277, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !711, file: !72, line: 276, column: 79)
!720 = !DILocation(line: 287, column: 1, scope: !693)
!721 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !72, file: !72, line: 223, type: !66, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !4)
!722 = !DILocalVariable(name: "ret", scope: !721, file: !72, line: 225, type: !68)
!723 = !DILocation(line: 0, scope: !721)
!724 = !DILocation(line: 228, column: 16, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !72, line: 228, column: 9)
!726 = !DILocation(line: 228, column: 38, scope: !725)
!727 = !DILocation(line: 228, column: 44, scope: !725)
!728 = !DILocation(line: 229, column: 22, scope: !725)
!729 = !DILocation(line: 229, column: 9, scope: !725)
!730 = !DILocation(line: 229, column: 45, scope: !725)
!731 = !DILocation(line: 228, column: 9, scope: !721)
!732 = !DILocation(line: 230, column: 38, scope: !733)
!733 = distinct !DILexicalBlock(scope: !725, file: !72, line: 229, column: 51)
!734 = !DILocation(line: 231, column: 28, scope: !733)
!735 = !DILocation(line: 233, column: 5, scope: !733)
!736 = !DILocation(line: 235, column: 16, scope: !737)
!737 = distinct !DILexicalBlock(scope: !721, file: !72, line: 235, column: 9)
!738 = !DILocation(line: 235, column: 36, scope: !737)
!739 = !DILocation(line: 235, column: 9, scope: !721)
!740 = !DILocation(line: 237, column: 5, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !72, line: 235, column: 42)
!742 = !DILocation(line: 245, column: 5, scope: !721)
!743 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !72, file: !72, line: 215, type: !51, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!744 = !DILocation(line: 217, column: 16, scope: !745)
!745 = distinct !DILexicalBlock(scope: !743, file: !72, line: 217, column: 9)
!746 = !DILocation(line: 217, column: 28, scope: !745)
!747 = !DILocation(line: 217, column: 9, scope: !743)
!748 = !DILocation(line: 218, column: 9, scope: !749)
!749 = distinct !DILexicalBlock(scope: !745, file: !72, line: 217, column: 34)
!750 = !DILocation(line: 219, column: 5, scope: !749)
!751 = !DILocation(line: 220, column: 1, scope: !743)
!752 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !72, file: !72, line: 151, type: !753, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!753 = !DISubroutineType(types: !754)
!754 = !{!68, !62, !28}
!755 = !DILocalVariable(name: "buf_", arg: 1, scope: !752, file: !72, line: 151, type: !62)
!756 = !DILocation(line: 0, scope: !752)
!757 = !DILocalVariable(name: "size", arg: 2, scope: !752, file: !72, line: 151, type: !28)
!758 = !DILocalVariable(name: "buf", scope: !752, file: !72, line: 153, type: !78)
!759 = !DILocalVariable(name: "chunk_size", scope: !752, file: !72, line: 154, type: !28)
!760 = !DILocation(line: 156, column: 5, scope: !752)
!761 = !DILocation(line: 157, column: 18, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !72, line: 157, column: 13)
!763 = distinct !DILexicalBlock(scope: !752, file: !72, line: 156, column: 8)
!764 = !DILocation(line: 157, column: 13, scope: !763)
!765 = !DILocation(line: 159, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !72, line: 159, column: 13)
!767 = distinct !DILexicalBlock(scope: !768, file: !72, line: 159, column: 13)
!768 = distinct !DILexicalBlock(scope: !762, file: !72, line: 157, column: 32)
!769 = !DILocation(line: 159, column: 13, scope: !767)
!770 = !DILocation(line: 160, column: 9, scope: !768)
!771 = !DILocation(line: 161, column: 13, scope: !772)
!772 = distinct !DILexicalBlock(scope: !763, file: !72, line: 161, column: 13)
!773 = !DILocation(line: 161, column: 59, scope: !772)
!774 = !DILocation(line: 161, column: 13, scope: !763)
!775 = !DILocation(line: 162, column: 13, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !72, line: 161, column: 65)
!777 = !DILocation(line: 164, column: 14, scope: !763)
!778 = !DILocation(line: 165, column: 13, scope: !763)
!779 = !DILocation(line: 166, column: 5, scope: !763)
!780 = !DILocation(line: 166, column: 19, scope: !752)
!781 = distinct !{!781, !760, !782, !273}
!782 = !DILocation(line: 166, column: 32, scope: !752)
!783 = !DILocation(line: 168, column: 5, scope: !752)
!784 = !DILocation(line: 169, column: 1, scope: !752)
!785 = distinct !DISubprogram(name: "safe_read", scope: !72, file: !72, line: 77, type: !786, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!786 = !DISubroutineType(types: !787)
!787 = !{!74, !788, !62, !28}
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!789 = !DILocalVariable(name: "fd", arg: 1, scope: !785, file: !72, line: 77, type: !788)
!790 = !DILocation(line: 0, scope: !785)
!791 = !DILocalVariable(name: "buf_", arg: 2, scope: !785, file: !72, line: 77, type: !62)
!792 = !DILocalVariable(name: "size", arg: 3, scope: !785, file: !72, line: 77, type: !28)
!793 = !DILocalVariable(name: "buf", scope: !785, file: !72, line: 79, type: !78)
!794 = !DILocation(line: 82, column: 5, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !72, line: 82, column: 5)
!796 = distinct !DILexicalBlock(scope: !785, file: !72, line: 82, column: 5)
!797 = !DILocation(line: 82, column: 5, scope: !796)
!798 = !DILocation(line: 83, column: 5, scope: !785)
!799 = !DILocation(line: 84, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !785, file: !72, line: 83, column: 8)
!801 = !DILocation(line: 84, column: 26, scope: !800)
!802 = !DILocalVariable(name: "readnb", scope: !785, file: !72, line: 80, type: !74)
!803 = !DILocation(line: 84, column: 47, scope: !800)
!804 = !DILocation(line: 84, column: 61, scope: !800)
!805 = !DILocation(line: 85, column: 17, scope: !800)
!806 = !DILocation(line: 85, column: 23, scope: !800)
!807 = !DILocation(line: 85, column: 32, scope: !800)
!808 = !DILocation(line: 85, column: 35, scope: !800)
!809 = !DILocation(line: 85, column: 41, scope: !800)
!810 = !DILocation(line: 0, scope: !800)
!811 = distinct !{!811, !799, !812, !273}
!812 = !DILocation(line: 85, column: 52, scope: !800)
!813 = !DILocation(line: 86, column: 20, scope: !814)
!814 = distinct !DILexicalBlock(scope: !800, file: !72, line: 86, column: 13)
!815 = !DILocation(line: 86, column: 13, scope: !800)
!816 = !DILocation(line: 87, column: 13, scope: !817)
!817 = distinct !DILexicalBlock(scope: !814, file: !72, line: 86, column: 35)
!818 = !DILocation(line: 89, column: 20, scope: !819)
!819 = distinct !DILexicalBlock(scope: !800, file: !72, line: 89, column: 13)
!820 = !DILocation(line: 89, column: 13, scope: !800)
!821 = !DILocation(line: 90, column: 13, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !72, line: 89, column: 36)
!823 = !DILocation(line: 92, column: 14, scope: !800)
!824 = !DILocation(line: 93, column: 13, scope: !800)
!825 = !DILocation(line: 94, column: 5, scope: !800)
!826 = !DILocation(line: 94, column: 19, scope: !785)
!827 = distinct !{!827, !798, !828, !273}
!828 = !DILocation(line: 94, column: 32, scope: !785)
!829 = !DILocation(line: 96, column: 27, scope: !785)
!830 = !DILocation(line: 96, column: 5, scope: !785)
!831 = !DILocation(line: 97, column: 1, scope: !785)
!832 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !72, file: !72, line: 138, type: !833, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!833 = !DISubroutineType(types: !834)
!834 = !{!68, !62, !63}
!835 = !DILocalVariable(name: "buf", arg: 1, scope: !832, file: !72, line: 138, type: !62)
!836 = !DILocation(line: 0, scope: !832)
!837 = !DILocalVariable(name: "size", arg: 2, scope: !832, file: !72, line: 138, type: !63)
!838 = !DILocation(line: 142, column: 5, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !72, line: 142, column: 5)
!840 = distinct !DILexicalBlock(scope: !832, file: !72, line: 142, column: 5)
!841 = !DILocation(line: 142, column: 5, scope: !840)
!842 = !DILocation(line: 143, column: 5, scope: !832)
!843 = !DILocation(line: 144, column: 46, scope: !844)
!844 = distinct !DILexicalBlock(scope: !832, file: !72, line: 143, column: 8)
!845 = !DILocation(line: 144, column: 18, scope: !844)
!846 = !DILocalVariable(name: "readnb", scope: !832, file: !72, line: 140, type: !68)
!847 = !DILocation(line: 145, column: 5, scope: !844)
!848 = !DILocation(line: 145, column: 21, scope: !832)
!849 = !DILocation(line: 145, column: 25, scope: !832)
!850 = !DILocation(line: 145, column: 29, scope: !832)
!851 = !DILocation(line: 145, column: 35, scope: !832)
!852 = !DILocation(line: 145, column: 44, scope: !832)
!853 = !DILocation(line: 145, column: 47, scope: !832)
!854 = !DILocation(line: 145, column: 53, scope: !832)
!855 = distinct !{!855, !842, !856, !273}
!856 = !DILocation(line: 145, column: 63, scope: !832)
!857 = !DILocation(line: 147, column: 23, scope: !832)
!858 = !DILocation(line: 147, column: 20, scope: !832)
!859 = !DILocation(line: 147, column: 35, scope: !832)
!860 = !DILocation(line: 147, column: 5, scope: !832)
!861 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !72, file: !72, line: 173, type: !51, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !71, retainedNodes: !4)
!862 = !DILocation(line: 175, column: 32, scope: !861)
!863 = !DILocalVariable(name: "errno_save", scope: !861, file: !72, line: 175, type: !788)
!864 = !DILocation(line: 0, scope: !861)
!865 = !DILocalVariable(name: "fodder", scope: !866, file: !72, line: 179, type: !112)
!866 = distinct !DILexicalBlock(scope: !861, file: !72, line: 178, column: 5)
!867 = !DILocation(line: 179, column: 16, scope: !866)
!868 = !DILocation(line: 181, column: 34, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !72, line: 181, column: 6)
!870 = !DILocation(line: 181, column: 6, scope: !869)
!871 = !DILocation(line: 181, column: 57, scope: !869)
!872 = !DILocation(line: 181, column: 6, scope: !866)
!873 = !DILocation(line: 182, column: 33, scope: !874)
!874 = distinct !DILexicalBlock(scope: !869, file: !72, line: 181, column: 63)
!875 = !DILocation(line: 183, column: 6, scope: !874)
!876 = !DILocation(line: 183, column: 12, scope: !874)
!877 = !DILocation(line: 184, column: 6, scope: !874)
!878 = !DILocation(line: 186, column: 29, scope: !866)
!879 = !DILocation(line: 191, column: 10, scope: !880)
!880 = distinct !DILexicalBlock(scope: !861, file: !72, line: 190, column: 9)
!881 = !DILocation(line: 190, column: 39, scope: !880)
!882 = !DILocation(line: 191, column: 51, scope: !880)
!883 = !DILocation(line: 190, column: 9, scope: !861)
!884 = !DILocation(line: 192, column: 9, scope: !885)
!885 = distinct !DILexicalBlock(scope: !880, file: !72, line: 191, column: 58)
!886 = !DILocation(line: 194, column: 5, scope: !861)
!887 = !DILocation(line: 194, column: 11, scope: !861)
!888 = !DILocation(line: 195, column: 1, scope: !861)
!889 = !DILocalVariable(name: "st", scope: !90, file: !72, line: 105, type: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !891, line: 46, size: 1152, elements: !892)
!891 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!892 = !{!893, !895, !897, !899, !901, !903, !905, !906, !907, !909, !911, !913, !921, !922, !923}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !890, file: !891, line: 48, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !9, line: 145, baseType: !30)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !890, file: !891, line: 53, baseType: !896, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !9, line: 148, baseType: !30)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !890, file: !891, line: 61, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !9, line: 151, baseType: !30)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !890, file: !891, line: 62, baseType: !900, size: 32, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !9, line: 150, baseType: !10)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !890, file: !891, line: 64, baseType: !902, size: 32, offset: 224)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !9, line: 146, baseType: !10)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !890, file: !891, line: 65, baseType: !904, size: 32, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !9, line: 147, baseType: !10)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !890, file: !891, line: 67, baseType: !68, size: 32, offset: 288)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !890, file: !891, line: 69, baseType: !894, size: 64, offset: 320)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !890, file: !891, line: 74, baseType: !908, size: 64, offset: 384)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 152, baseType: !77)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !890, file: !891, line: 78, baseType: !910, size: 64, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !9, line: 174, baseType: !77)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !890, file: !891, line: 80, baseType: !912, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !9, line: 179, baseType: !77)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !890, file: !891, line: 91, baseType: !914, size: 128, offset: 576)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !915, line: 10, size: 128, elements: !916)
!915 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!916 = !{!917, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !914, file: !915, line: 12, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !9, line: 160, baseType: !77)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !914, file: !915, line: 16, baseType: !920, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !9, line: 196, baseType: !77)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !890, file: !891, line: 92, baseType: !914, size: 128, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !890, file: !891, line: 93, baseType: !914, size: 128, offset: 832)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !890, file: !891, line: 106, baseType: !924, size: 192, offset: 960)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 192, elements: !92)
!925 = !DILocation(line: 105, column: 24, scope: !90)
!926 = !DILocalVariable(name: "device", scope: !90, file: !72, line: 112, type: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!928 = !DILocation(line: 0, scope: !90)
!929 = !DILocation(line: 115, column: 5, scope: !90)
!930 = !DILocation(line: 116, column: 19, scope: !931)
!931 = distinct !DILexicalBlock(scope: !90, file: !72, line: 115, column: 8)
!932 = !DILocation(line: 116, column: 14, scope: !931)
!933 = !DILocalVariable(name: "fd", scope: !90, file: !72, line: 113, type: !68)
!934 = !DILocation(line: 117, column: 16, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !72, line: 117, column: 13)
!936 = !DILocation(line: 117, column: 13, scope: !931)
!937 = !DILocation(line: 118, column: 17, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !72, line: 118, column: 17)
!939 = distinct !DILexicalBlock(scope: !935, file: !72, line: 117, column: 23)
!940 = !DILocation(line: 118, column: 32, scope: !938)
!941 = !DILocation(line: 118, column: 37, scope: !938)
!942 = !DILocation(line: 118, column: 40, scope: !938)
!943 = !DILocation(line: 118, column: 17, scope: !939)
!944 = !DILocation(line: 120, column: 43, scope: !945)
!945 = distinct !DILexicalBlock(scope: !938, file: !72, line: 118, column: 61)
!946 = !DILocation(line: 120, column: 62, scope: !945)
!947 = !DILocation(line: 120, column: 24, scope: !945)
!948 = !DILocation(line: 122, column: 17, scope: !945)
!949 = !DILocation(line: 124, column: 20, scope: !939)
!950 = !DILocation(line: 125, column: 9, scope: !939)
!951 = !DILocation(line: 125, column: 20, scope: !952)
!952 = distinct !DILexicalBlock(scope: !935, file: !72, line: 125, column: 20)
!953 = !DILocation(line: 125, column: 26, scope: !952)
!954 = !DILocation(line: 125, column: 20, scope: !935)
!955 = !DILocation(line: 126, column: 13, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !72, line: 125, column: 36)
!957 = !DILocation(line: 128, column: 15, scope: !931)
!958 = !DILocation(line: 129, column: 5, scope: !931)
!959 = !DILocation(line: 129, column: 14, scope: !90)
!960 = !DILocation(line: 129, column: 22, scope: !90)
!961 = distinct !{!961, !929, !962, !273}
!962 = !DILocation(line: 129, column: 29, scope: !90)
!963 = !DILocation(line: 131, column: 5, scope: !90)
!964 = !DILocation(line: 131, column: 11, scope: !90)
!965 = !DILocation(line: 132, column: 5, scope: !90)
!966 = !DILocation(line: 134, column: 1, scope: !90)
!967 = distinct !DISubprogram(name: "sodium_memzero", scope: !105, file: !105, line: 58, type: !60, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!968 = !DILocalVariable(name: "pnt", arg: 1, scope: !967, file: !105, line: 58, type: !62)
!969 = !DILocation(line: 0, scope: !967)
!970 = !DILocalVariable(name: "len", arg: 2, scope: !967, file: !105, line: 58, type: !63)
!971 = !DILocalVariable(name: "pnt_", scope: !967, file: !105, line: 72, type: !107)
!972 = !DILocalVariable(name: "i", scope: !967, file: !105, line: 73, type: !28)
!973 = !DILocation(line: 75, column: 5, scope: !967)
!974 = !DILocation(line: 75, column: 14, scope: !967)
!975 = !DILocation(line: 76, column: 15, scope: !976)
!976 = distinct !DILexicalBlock(scope: !967, file: !105, line: 75, column: 21)
!977 = !DILocation(line: 76, column: 9, scope: !976)
!978 = !DILocation(line: 76, column: 19, scope: !976)
!979 = distinct !{!979, !973, !980, !273}
!980 = !DILocation(line: 77, column: 5, scope: !967)
!981 = !DILocation(line: 79, column: 1, scope: !967)
!982 = distinct !DISubprogram(name: "sodium_memcmp", scope: !105, file: !105, line: 82, type: !983, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!983 = !DISubroutineType(types: !984)
!984 = !{!68, !985, !985, !28}
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!986 = !DILocalVariable(name: "b1_", arg: 1, scope: !982, file: !105, line: 82, type: !985)
!987 = !DILocation(line: 0, scope: !982)
!988 = !DILocalVariable(name: "b2_", arg: 2, scope: !982, file: !105, line: 82, type: !985)
!989 = !DILocalVariable(name: "len", arg: 3, scope: !982, file: !105, line: 82, type: !28)
!990 = !DILocalVariable(name: "b1", scope: !982, file: !105, line: 84, type: !109)
!991 = !DILocalVariable(name: "b2", scope: !982, file: !105, line: 85, type: !109)
!992 = !DILocalVariable(name: "d", scope: !982, file: !105, line: 87, type: !16)
!993 = !DILocalVariable(name: "i", scope: !982, file: !105, line: 86, type: !28)
!994 = !DILocation(line: 89, column: 10, scope: !995)
!995 = distinct !DILexicalBlock(scope: !982, file: !105, line: 89, column: 5)
!996 = !DILocation(line: 0, scope: !995)
!997 = !DILocation(line: 89, column: 20, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !105, line: 89, column: 5)
!999 = !DILocation(line: 89, column: 5, scope: !995)
!1000 = !DILocation(line: 90, column: 14, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !105, line: 89, column: 32)
!1002 = !DILocation(line: 90, column: 22, scope: !1001)
!1003 = !DILocation(line: 90, column: 20, scope: !1001)
!1004 = !DILocation(line: 90, column: 11, scope: !1001)
!1005 = !DILocation(line: 91, column: 5, scope: !1001)
!1006 = !DILocation(line: 89, column: 28, scope: !998)
!1007 = !DILocation(line: 89, column: 5, scope: !998)
!1008 = distinct !{!1008, !999, !1009, !273}
!1009 = !DILocation(line: 91, column: 5, scope: !995)
!1010 = !DILocation(line: 92, column: 26, scope: !982)
!1011 = !DILocation(line: 92, column: 28, scope: !982)
!1012 = !DILocation(line: 92, column: 33, scope: !982)
!1013 = !DILocation(line: 92, column: 22, scope: !982)
!1014 = !DILocation(line: 92, column: 40, scope: !982)
!1015 = !DILocation(line: 92, column: 5, scope: !982)
!1016 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !105, file: !105, line: 97, type: !1017, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!1019, !1020, !63, !1021, !63}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1019)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1022 = !DILocalVariable(name: "hex", arg: 1, scope: !1016, file: !105, line: 97, type: !1020)
!1023 = !DILocation(line: 0, scope: !1016)
!1024 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !1016, file: !105, line: 97, type: !63)
!1025 = !DILocalVariable(name: "bin", arg: 3, scope: !1016, file: !105, line: 98, type: !1021)
!1026 = !DILocalVariable(name: "bin_len", arg: 4, scope: !1016, file: !105, line: 98, type: !63)
!1027 = !DILocalVariable(name: "i", scope: !1016, file: !105, line: 100, type: !28)
!1028 = !DILocation(line: 105, column: 17, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1016, file: !105, line: 105, column: 9)
!1030 = !DILocation(line: 105, column: 33, scope: !1029)
!1031 = !DILocation(line: 105, column: 57, scope: !1029)
!1032 = !DILocation(line: 105, column: 47, scope: !1029)
!1033 = !DILocation(line: 105, column: 9, scope: !1016)
!1034 = !DILocation(line: 106, column: 9, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1029, file: !105, line: 105, column: 63)
!1036 = !DILocation(line: 108, column: 5, scope: !1016)
!1037 = !DILocation(line: 108, column: 14, scope: !1016)
!1038 = !DILocation(line: 109, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1016, file: !105, line: 108, column: 25)
!1040 = !DILocation(line: 109, column: 20, scope: !1039)
!1041 = !DILocalVariable(name: "c", scope: !1016, file: !105, line: 103, type: !68)
!1042 = !DILocation(line: 110, column: 13, scope: !1039)
!1043 = !DILocation(line: 110, column: 20, scope: !1039)
!1044 = !DILocalVariable(name: "b", scope: !1016, file: !105, line: 102, type: !68)
!1045 = !DILocation(line: 111, column: 34, scope: !1039)
!1046 = !DILocation(line: 111, column: 45, scope: !1039)
!1047 = !DILocation(line: 111, column: 52, scope: !1039)
!1048 = !DILocation(line: 111, column: 58, scope: !1039)
!1049 = !DILocation(line: 111, column: 38, scope: !1039)
!1050 = !DILocation(line: 111, column: 13, scope: !1039)
!1051 = !DILocation(line: 111, column: 67, scope: !1039)
!1052 = !DILocation(line: 112, column: 34, scope: !1039)
!1053 = !DILocation(line: 112, column: 45, scope: !1039)
!1054 = !DILocation(line: 112, column: 52, scope: !1039)
!1055 = !DILocation(line: 112, column: 58, scope: !1039)
!1056 = !DILocation(line: 112, column: 38, scope: !1039)
!1057 = !DILocation(line: 112, column: 13, scope: !1039)
!1058 = !DILocation(line: 111, column: 72, scope: !1039)
!1059 = !DILocalVariable(name: "x", scope: !1016, file: !105, line: 101, type: !10)
!1060 = !DILocation(line: 113, column: 23, scope: !1039)
!1061 = !DILocation(line: 113, column: 15, scope: !1039)
!1062 = !DILocation(line: 113, column: 9, scope: !1039)
!1063 = !DILocation(line: 113, column: 21, scope: !1039)
!1064 = !DILocation(line: 114, column: 11, scope: !1039)
!1065 = !DILocation(line: 115, column: 28, scope: !1039)
!1066 = !DILocation(line: 115, column: 15, scope: !1039)
!1067 = !DILocation(line: 115, column: 20, scope: !1039)
!1068 = !DILocation(line: 115, column: 9, scope: !1039)
!1069 = !DILocation(line: 115, column: 26, scope: !1039)
!1070 = !DILocation(line: 116, column: 10, scope: !1039)
!1071 = distinct !{!1071, !1036, !1072, !273}
!1072 = !DILocation(line: 117, column: 5, scope: !1016)
!1073 = !DILocation(line: 118, column: 11, scope: !1016)
!1074 = !DILocation(line: 118, column: 5, scope: !1016)
!1075 = !DILocation(line: 118, column: 17, scope: !1016)
!1076 = !DILocation(line: 120, column: 5, scope: !1016)
!1077 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !105, file: !105, line: 124, type: !1078, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!68, !663, !63, !1080, !63, !1080, !1081, !1083}
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !927)
!1084 = !DILocalVariable(name: "bin", arg: 1, scope: !1077, file: !105, line: 124, type: !663)
!1085 = !DILocation(line: 0, scope: !1077)
!1086 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !1077, file: !105, line: 124, type: !63)
!1087 = !DILocalVariable(name: "hex", arg: 3, scope: !1077, file: !105, line: 125, type: !1080)
!1088 = !DILocalVariable(name: "hex_len", arg: 4, scope: !1077, file: !105, line: 125, type: !63)
!1089 = !DILocalVariable(name: "ignore", arg: 5, scope: !1077, file: !105, line: 126, type: !1080)
!1090 = !DILocalVariable(name: "bin_len", arg: 6, scope: !1077, file: !105, line: 126, type: !1081)
!1091 = !DILocalVariable(name: "hex_end", arg: 7, scope: !1077, file: !105, line: 127, type: !1083)
!1092 = !DILocalVariable(name: "bin_pos", scope: !1077, file: !105, line: 129, type: !28)
!1093 = !DILocalVariable(name: "hex_pos", scope: !1077, file: !105, line: 130, type: !28)
!1094 = !DILocalVariable(name: "ret", scope: !1077, file: !105, line: 131, type: !68)
!1095 = !DILocalVariable(name: "c_acc", scope: !1077, file: !105, line: 133, type: !16)
!1096 = !DILocalVariable(name: "state", scope: !1077, file: !105, line: 137, type: !16)
!1097 = !DILocation(line: 139, column: 5, scope: !1077)
!1098 = !DILocation(line: 129, column: 19, scope: !1077)
!1099 = !DILocation(line: 139, column: 20, scope: !1077)
!1100 = !DILocation(line: 140, column: 29, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1077, file: !105, line: 139, column: 31)
!1102 = !DILocalVariable(name: "c", scope: !1077, file: !105, line: 132, type: !16)
!1103 = !DILocation(line: 141, column: 17, scope: !1101)
!1104 = !DILocation(line: 141, column: 19, scope: !1101)
!1105 = !DILocalVariable(name: "c_num", scope: !1077, file: !105, line: 135, type: !16)
!1106 = !DILocation(line: 142, column: 19, scope: !1101)
!1107 = !DILocation(line: 142, column: 25, scope: !1101)
!1108 = !DILocation(line: 142, column: 32, scope: !1101)
!1109 = !DILocation(line: 142, column: 18, scope: !1101)
!1110 = !DILocalVariable(name: "c_num0", scope: !1077, file: !105, line: 135, type: !16)
!1111 = !DILocation(line: 143, column: 20, scope: !1101)
!1112 = !DILocation(line: 143, column: 22, scope: !1101)
!1113 = !DILocation(line: 143, column: 30, scope: !1101)
!1114 = !DILocation(line: 143, column: 19, scope: !1101)
!1115 = !DILocalVariable(name: "c_alpha", scope: !1077, file: !105, line: 134, type: !16)
!1116 = !DILocation(line: 144, column: 22, scope: !1101)
!1117 = !DILocation(line: 144, column: 30, scope: !1101)
!1118 = !DILocation(line: 144, column: 40, scope: !1101)
!1119 = !DILocation(line: 144, column: 48, scope: !1101)
!1120 = !DILocation(line: 144, column: 37, scope: !1101)
!1121 = !DILocation(line: 144, column: 56, scope: !1101)
!1122 = !DILocation(line: 144, column: 20, scope: !1101)
!1123 = !DILocalVariable(name: "c_alpha0", scope: !1077, file: !105, line: 134, type: !16)
!1124 = !DILocation(line: 145, column: 14, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1101, file: !105, line: 145, column: 13)
!1126 = !DILocation(line: 145, column: 23, scope: !1125)
!1127 = !DILocation(line: 145, column: 21, scope: !1125)
!1128 = !DILocation(line: 145, column: 33, scope: !1125)
!1129 = !DILocation(line: 145, column: 13, scope: !1101)
!1130 = !DILocation(line: 146, column: 24, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !105, line: 146, column: 17)
!1132 = distinct !DILexicalBlock(scope: !1125, file: !105, line: 145, column: 40)
!1133 = !DILocation(line: 146, column: 32, scope: !1131)
!1134 = !DILocation(line: 146, column: 35, scope: !1131)
!1135 = !DILocation(line: 146, column: 41, scope: !1131)
!1136 = !DILocation(line: 146, column: 47, scope: !1131)
!1137 = !DILocation(line: 146, column: 65, scope: !1131)
!1138 = !DILocation(line: 146, column: 50, scope: !1131)
!1139 = !DILocation(line: 146, column: 68, scope: !1131)
!1140 = !DILocation(line: 146, column: 17, scope: !1132)
!1141 = !DILocation(line: 147, column: 24, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1131, file: !105, line: 146, column: 77)
!1143 = !DILocation(line: 148, column: 17, scope: !1142)
!1144 = distinct !{!1144, !1097, !1145, !273}
!1145 = !DILocation(line: 165, column: 5, scope: !1077)
!1146 = !DILocation(line: 150, column: 13, scope: !1132)
!1147 = !DILocation(line: 152, column: 18, scope: !1101)
!1148 = !DILocation(line: 152, column: 27, scope: !1101)
!1149 = !DILocation(line: 152, column: 25, scope: !1101)
!1150 = !DILocation(line: 152, column: 37, scope: !1101)
!1151 = !DILocation(line: 152, column: 48, scope: !1101)
!1152 = !DILocation(line: 152, column: 46, scope: !1101)
!1153 = !DILocation(line: 152, column: 34, scope: !1101)
!1154 = !DILocation(line: 152, column: 17, scope: !1101)
!1155 = !DILocalVariable(name: "c_val", scope: !1077, file: !105, line: 136, type: !16)
!1156 = !DILocation(line: 153, column: 21, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1101, file: !105, line: 153, column: 13)
!1158 = !DILocation(line: 153, column: 13, scope: !1101)
!1159 = !DILocation(line: 155, column: 13, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !105, line: 153, column: 36)
!1161 = !DILocation(line: 155, column: 19, scope: !1160)
!1162 = !DILocation(line: 156, column: 13, scope: !1160)
!1163 = !DILocation(line: 158, column: 13, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1101, file: !105, line: 158, column: 13)
!1165 = !DILocation(line: 158, column: 19, scope: !1164)
!1166 = !DILocation(line: 158, column: 13, scope: !1101)
!1167 = !DILocation(line: 159, column: 21, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !105, line: 158, column: 26)
!1169 = !DILocation(line: 159, column: 27, scope: !1168)
!1170 = !DILocation(line: 160, column: 9, scope: !1168)
!1171 = !DILocation(line: 161, column: 30, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1164, file: !105, line: 160, column: 16)
!1173 = !DILocation(line: 161, column: 38, scope: !1172)
!1174 = !DILocation(line: 161, column: 36, scope: !1172)
!1175 = !DILocation(line: 161, column: 24, scope: !1172)
!1176 = !DILocation(line: 161, column: 13, scope: !1172)
!1177 = !DILocation(line: 161, column: 28, scope: !1172)
!1178 = !DILocation(line: 163, column: 18, scope: !1101)
!1179 = !DILocation(line: 163, column: 17, scope: !1101)
!1180 = !DILocation(line: 164, column: 16, scope: !1101)
!1181 = !DILocation(line: 166, column: 9, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1077, file: !105, line: 166, column: 9)
!1183 = !DILocation(line: 166, column: 15, scope: !1182)
!1184 = !DILocation(line: 166, column: 9, scope: !1077)
!1185 = !DILocation(line: 167, column: 16, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !105, line: 166, column: 22)
!1187 = !DILocation(line: 168, column: 5, scope: !1186)
!1188 = !DILocation(line: 169, column: 17, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1077, file: !105, line: 169, column: 9)
!1190 = !DILocation(line: 169, column: 9, scope: !1077)
!1191 = !DILocation(line: 170, column: 21, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !105, line: 169, column: 26)
!1193 = !DILocation(line: 170, column: 18, scope: !1192)
!1194 = !DILocation(line: 171, column: 5, scope: !1192)
!1195 = !DILocation(line: 172, column: 17, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1077, file: !105, line: 172, column: 9)
!1197 = !DILocation(line: 172, column: 9, scope: !1077)
!1198 = !DILocation(line: 173, column: 18, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !105, line: 172, column: 26)
!1200 = !DILocation(line: 174, column: 5, scope: !1199)
!1201 = !DILocation(line: 175, column: 5, scope: !1077)
!1202 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !105, file: !105, line: 179, type: !66, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1203 = !DILocation(line: 196, column: 5, scope: !1202)
!1204 = !DILocation(line: 198, column: 5, scope: !1202)
!1205 = distinct !DISubprogram(name: "sodium_mlock", scope: !105, file: !105, line: 202, type: !833, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1206 = !DILocalVariable(name: "addr", arg: 1, scope: !1205, file: !105, line: 202, type: !62)
!1207 = !DILocation(line: 0, scope: !1205)
!1208 = !DILocalVariable(name: "len", arg: 2, scope: !1205, file: !105, line: 202, type: !63)
!1209 = !DILocation(line: 212, column: 5, scope: !1205)
!1210 = !DILocation(line: 212, column: 11, scope: !1205)
!1211 = !DILocation(line: 213, column: 5, scope: !1205)
!1212 = distinct !DISubprogram(name: "sodium_munlock", scope: !105, file: !105, line: 218, type: !833, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1213 = !DILocalVariable(name: "addr", arg: 1, scope: !1212, file: !105, line: 218, type: !62)
!1214 = !DILocation(line: 0, scope: !1212)
!1215 = !DILocalVariable(name: "len", arg: 2, scope: !1212, file: !105, line: 218, type: !63)
!1216 = !DILocation(line: 220, column: 5, scope: !1212)
!1217 = !DILocation(line: 229, column: 5, scope: !1212)
!1218 = !DILocation(line: 229, column: 11, scope: !1212)
!1219 = !DILocation(line: 230, column: 5, scope: !1212)
!1220 = distinct !DISubprogram(name: "sodium_malloc", scope: !105, file: !105, line: 402, type: !1221, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!11, !63}
!1223 = !DILocalVariable(name: "size", arg: 1, scope: !1220, file: !105, line: 402, type: !63)
!1224 = !DILocation(line: 0, scope: !1220)
!1225 = !DILocation(line: 406, column: 16, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1220, file: !105, line: 406, column: 9)
!1227 = !DILocalVariable(name: "ptr", scope: !1220, file: !105, line: 404, type: !11)
!1228 = !DILocation(line: 406, column: 38, scope: !1226)
!1229 = !DILocation(line: 406, column: 9, scope: !1220)
!1230 = !DILocation(line: 407, column: 9, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !105, line: 406, column: 47)
!1232 = !DILocation(line: 409, column: 5, scope: !1220)
!1233 = !DILocation(line: 411, column: 5, scope: !1220)
!1234 = !DILocation(line: 412, column: 1, scope: !1220)
!1235 = distinct !DISubprogram(name: "_sodium_malloc", scope: !105, file: !105, line: 353, type: !1221, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1236 = !DILocalVariable(name: "size", arg: 1, scope: !1235, file: !105, line: 353, type: !63)
!1237 = !DILocation(line: 0, scope: !1235)
!1238 = !DILocation(line: 355, column: 12, scope: !1235)
!1239 = !DILocation(line: 355, column: 5, scope: !1235)
!1240 = distinct !DISubprogram(name: "sodium_allocarray", scope: !105, file: !105, line: 415, type: !1241, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!11, !28, !28}
!1243 = !DILocalVariable(name: "count", arg: 1, scope: !1240, file: !105, line: 415, type: !28)
!1244 = !DILocation(line: 0, scope: !1240)
!1245 = !DILocalVariable(name: "size", arg: 2, scope: !1240, file: !105, line: 415, type: !28)
!1246 = !DILocation(line: 419, column: 15, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !105, line: 419, column: 9)
!1248 = !DILocation(line: 419, column: 29, scope: !1247)
!1249 = !DILocation(line: 419, column: 58, scope: !1247)
!1250 = !DILocation(line: 419, column: 37, scope: !1247)
!1251 = !DILocation(line: 419, column: 9, scope: !1240)
!1252 = !DILocation(line: 420, column: 9, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1247, file: !105, line: 419, column: 67)
!1254 = !DILocation(line: 420, column: 15, scope: !1253)
!1255 = !DILocation(line: 421, column: 9, scope: !1253)
!1256 = !DILocation(line: 423, column: 24, scope: !1240)
!1257 = !DILocalVariable(name: "total_size", scope: !1240, file: !105, line: 417, type: !28)
!1258 = !DILocation(line: 425, column: 12, scope: !1240)
!1259 = !DILocation(line: 425, column: 5, scope: !1240)
!1260 = !DILocation(line: 426, column: 1, scope: !1240)
!1261 = distinct !DISubprogram(name: "sodium_free", scope: !105, file: !105, line: 430, type: !1262, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !11}
!1264 = !DILocalVariable(name: "ptr", arg: 1, scope: !1261, file: !105, line: 430, type: !11)
!1265 = !DILocation(line: 0, scope: !1261)
!1266 = !DILocation(line: 432, column: 5, scope: !1261)
!1267 = !DILocation(line: 433, column: 1, scope: !1261)
!1268 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !105, file: !105, line: 493, type: !1269, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!68, !11}
!1271 = !DILocalVariable(name: "ptr", arg: 1, scope: !1268, file: !105, line: 493, type: !11)
!1272 = !DILocation(line: 0, scope: !1268)
!1273 = !DILocation(line: 495, column: 12, scope: !1268)
!1274 = !DILocation(line: 495, column: 5, scope: !1268)
!1275 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !105, file: !105, line: 235, type: !1276, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!68, !11, !28}
!1278 = !DILocalVariable(name: "ptr", arg: 1, scope: !1275, file: !105, line: 235, type: !11)
!1279 = !DILocation(line: 0, scope: !1275)
!1280 = !DILocalVariable(name: "size", arg: 2, scope: !1275, file: !105, line: 235, type: !28)
!1281 = !DILocation(line: 243, column: 5, scope: !1275)
!1282 = !DILocation(line: 243, column: 11, scope: !1275)
!1283 = !DILocation(line: 244, column: 5, scope: !1275)
!1284 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !105, file: !105, line: 469, type: !1285, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!68, !11, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1288 = !DILocalVariable(name: "ptr", arg: 1, scope: !1284, file: !105, line: 469, type: !11)
!1289 = !DILocation(line: 0, scope: !1284)
!1290 = !DILocalVariable(name: "cb", arg: 2, scope: !1284, file: !105, line: 469, type: !1287)
!1291 = !DILocation(line: 473, column: 5, scope: !1284)
!1292 = !DILocation(line: 473, column: 11, scope: !1284)
!1293 = !DILocation(line: 474, column: 5, scope: !1284)
!1294 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !105, file: !105, line: 499, type: !1269, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1295 = !DILocalVariable(name: "ptr", arg: 1, scope: !1294, file: !105, line: 499, type: !11)
!1296 = !DILocation(line: 0, scope: !1294)
!1297 = !DILocation(line: 501, column: 12, scope: !1294)
!1298 = !DILocation(line: 501, column: 5, scope: !1294)
!1299 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !105, file: !105, line: 249, type: !1276, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1300 = !DILocalVariable(name: "ptr", arg: 1, scope: !1299, file: !105, line: 249, type: !11)
!1301 = !DILocation(line: 0, scope: !1299)
!1302 = !DILocalVariable(name: "size", arg: 2, scope: !1299, file: !105, line: 249, type: !28)
!1303 = !DILocation(line: 257, column: 5, scope: !1299)
!1304 = !DILocation(line: 257, column: 11, scope: !1299)
!1305 = !DILocation(line: 258, column: 5, scope: !1299)
!1306 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !105, file: !105, line: 505, type: !1269, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1307 = !DILocalVariable(name: "ptr", arg: 1, scope: !1306, file: !105, line: 505, type: !11)
!1308 = !DILocation(line: 0, scope: !1306)
!1309 = !DILocation(line: 507, column: 12, scope: !1306)
!1310 = !DILocation(line: 507, column: 5, scope: !1306)
!1311 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !105, file: !105, line: 263, type: !1276, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !104, retainedNodes: !4)
!1312 = !DILocalVariable(name: "ptr", arg: 1, scope: !1311, file: !105, line: 263, type: !11)
!1313 = !DILocation(line: 0, scope: !1311)
!1314 = !DILocalVariable(name: "size", arg: 2, scope: !1311, file: !105, line: 263, type: !28)
!1315 = !DILocation(line: 271, column: 5, scope: !1311)
!1316 = !DILocation(line: 271, column: 11, scope: !1311)
!1317 = !DILocation(line: 272, column: 5, scope: !1311)
