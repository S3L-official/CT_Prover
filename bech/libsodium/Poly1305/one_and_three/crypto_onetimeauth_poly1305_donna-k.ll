; ModuleID = 'crypto_onetimeauth_poly1305_donna.ll'
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

@crypto_onetimeauth_poly1305_donna_implementation = dso_local global %struct.crypto_onetimeauth_poly1305_implementation { i8* ()* @crypto_onetimeauth_poly1305_donna_implementation_name, i32 (i8*, i8*, i64, i8*)* @crypto_onetimeauth_poly1305_donna, i32 (i8*, i8*, i64, i8*)* @crypto_onetimeauth_poly1305_donna_verify, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)* @crypto_onetimeauth_poly1305_donna_init, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*, i64)* @crypto_onetimeauth_poly1305_donna_update, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)* @crypto_onetimeauth_poly1305_donna_final }, align 8, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"donna32\00", align 1
@implementation = internal global %struct.randombytes_implementation* @randombytes_sysrandom_implementation, align 8, !dbg !77
@.str.1 = private unnamed_addr constant [20 x i8] c"buf_len <= SIZE_MAX\00", align 1
@.str.1.2 = private unnamed_addr constant [53 x i8] c"../libsodium/src/libsodium/randombytes/randombytes.c\00", align 1
@__PRETTY_FUNCTION__.randombytes = private unnamed_addr constant [65 x i8] c"void randombytes(unsigned char *const, const unsigned long long)\00", align 1
@randombytes_sysrandom_implementation = dso_local global %struct.randombytes_implementation { i8* ()* @randombytes_sysrandom_implementation_name, i32 ()* @randombytes_sysrandom, void ()* @randombytes_sysrandom_stir, i32 (i32)* null, void (i8*, i64)* @randombytes_sysrandom_buf, i32 ()* @randombytes_sysrandom_close }, align 8, !dbg !120
@stream = internal global %struct.SysRandom_ { i32 -1, i32 0, i32 0 }, align 4, !dbg !130
@.str.6 = private unnamed_addr constant [19 x i8] c"size > (size_t) 0U\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c\00", align 1
@__PRETTY_FUNCTION__.safe_read = private unnamed_addr constant [50 x i8] c"ssize_t safe_read(const int, void *const, size_t)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"chunk_size > (size_t) 0U\00", align 1
@__PRETTY_FUNCTION__.randombytes_linux_getrandom = private unnamed_addr constant [53 x i8] c"int randombytes_linux_getrandom(void *const, size_t)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"size <= 256U\00", align 1
@__PRETTY_FUNCTION__._randombytes_linux_getrandom = private unnamed_addr constant [60 x i8] c"int _randombytes_linux_getrandom(void *const, const size_t)\00", align 1
@randombytes_sysrandom_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16, !dbg !138
@.str.1.5 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sysrandom\00", align 1
@canary = internal global [16 x i8] zeroinitializer, align 16, !dbg !152

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @crypto_onetimeauth_poly1305_donna_implementation_name() #0 !dbg !170 {
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* @.str, i64 0, i64 0
  ret i8* %1, !dbg !171
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !172 {
  %5 = alloca %struct.crypto_onetimeauth_poly1305_state, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i8* %1, metadata !175, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 %2, metadata !176, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i8* %3, metadata !177, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata %struct.crypto_onetimeauth_poly1305_state* %5, metadata !178, metadata !DIExpression()), !dbg !179
  call void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %3), !dbg !180
  call void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %1, i64 %2), !dbg !181
  call void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %0), !dbg !182
  ret i32 0, !dbg !183
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !184 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i8* %1, metadata !187, metadata !DIExpression()), !dbg !186
  call void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !188
  ret i32 0, !dbg !189
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !190 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i8* %1, metadata !193, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i64 %2, metadata !194, metadata !DIExpression()), !dbg !192
  call void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2), !dbg !195
  ret i32 0, !dbg !196
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_final(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !197 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata i8* %1, metadata !200, metadata !DIExpression()), !dbg !199
  call void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !201
  ret i32 0, !dbg !202
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !203 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i8* %1, metadata !208, metadata !DIExpression()), !dbg !207
  %3 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !209
  %4 = bitcast i8* %3 to %struct.poly1305_state_internal_t*, !dbg !210
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %4, metadata !211, metadata !DIExpression()), !dbg !207
  %5 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !212
  %6 = load i64, i64* %5, align 8, !dbg !212
  %7 = icmp ne i64 %6, 0, !dbg !214
  br i1 %7, label %8, label %25, !dbg !215

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !216
  %10 = load i64, i64* %9, align 8, !dbg !216
  call void @llvm.dbg.value(metadata i64 %10, metadata !218, metadata !DIExpression()), !dbg !219
  %11 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !220
  %12 = add i64 %10, 1, !dbg !221
  call void @llvm.dbg.value(metadata i64 %12, metadata !218, metadata !DIExpression()), !dbg !219
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %10, !dbg !222
  store i8 1, i8* %13, align 1, !dbg !223
  br label %14, !dbg !224

14:                                               ; preds = %19, %8
  %.0 = phi i64 [ %12, %8 ], [ %20, %19 ], !dbg !219
  call void @llvm.dbg.value(metadata i64 %.0, metadata !218, metadata !DIExpression()), !dbg !219
  %15 = icmp ult i64 %.0, 16, !dbg !225
  br i1 %15, label %16, label %21, !dbg !228

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !229
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 %.0, !dbg !230
  store i8 0, i8* %18, align 1, !dbg !231
  br label %19, !dbg !230

19:                                               ; preds = %16
  %20 = add i64 %.0, 1, !dbg !232
  call void @llvm.dbg.value(metadata i64 %20, metadata !218, metadata !DIExpression()), !dbg !219
  br label %14, !dbg !233, !llvm.loop !234

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 5, !dbg !237
  store i8 1, i8* %22, align 8, !dbg !238
  %23 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !239
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0, !dbg !240
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %4, i8* %24, i64 16), !dbg !241
  br label %25, !dbg !242

25:                                               ; preds = %21, %2
  %26 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !243
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 0, !dbg !244
  %28 = load i64, i64* %27, align 8, !dbg !244
  call void @llvm.dbg.value(metadata i64 %28, metadata !245, metadata !DIExpression()), !dbg !207
  %29 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !246
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %29, i64 0, i64 1, !dbg !247
  %31 = load i64, i64* %30, align 8, !dbg !247
  call void @llvm.dbg.value(metadata i64 %31, metadata !248, metadata !DIExpression()), !dbg !207
  %32 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !249
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 2, !dbg !250
  %34 = load i64, i64* %33, align 8, !dbg !250
  call void @llvm.dbg.value(metadata i64 %34, metadata !251, metadata !DIExpression()), !dbg !207
  %35 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !252
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 3, !dbg !253
  %37 = load i64, i64* %36, align 8, !dbg !253
  call void @llvm.dbg.value(metadata i64 %37, metadata !254, metadata !DIExpression()), !dbg !207
  %38 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !255
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %38, i64 0, i64 4, !dbg !256
  %40 = load i64, i64* %39, align 8, !dbg !256
  call void @llvm.dbg.value(metadata i64 %40, metadata !257, metadata !DIExpression()), !dbg !207
  %41 = lshr i64 %31, 26, !dbg !258
  call void @llvm.dbg.value(metadata i64 %41, metadata !259, metadata !DIExpression()), !dbg !207
  %42 = and i64 %31, 67108863, !dbg !260
  call void @llvm.dbg.value(metadata i64 %42, metadata !248, metadata !DIExpression()), !dbg !207
  %43 = add i64 %34, %41, !dbg !261
  call void @llvm.dbg.value(metadata i64 %43, metadata !251, metadata !DIExpression()), !dbg !207
  %44 = lshr i64 %43, 26, !dbg !262
  call void @llvm.dbg.value(metadata i64 %44, metadata !259, metadata !DIExpression()), !dbg !207
  %45 = and i64 %43, 67108863, !dbg !263
  call void @llvm.dbg.value(metadata i64 %45, metadata !251, metadata !DIExpression()), !dbg !207
  %46 = add i64 %37, %44, !dbg !264
  call void @llvm.dbg.value(metadata i64 %46, metadata !254, metadata !DIExpression()), !dbg !207
  %47 = lshr i64 %46, 26, !dbg !265
  call void @llvm.dbg.value(metadata i64 %47, metadata !259, metadata !DIExpression()), !dbg !207
  %48 = and i64 %46, 67108863, !dbg !266
  call void @llvm.dbg.value(metadata i64 %48, metadata !254, metadata !DIExpression()), !dbg !207
  %49 = add i64 %40, %47, !dbg !267
  call void @llvm.dbg.value(metadata i64 %49, metadata !257, metadata !DIExpression()), !dbg !207
  %50 = lshr i64 %49, 26, !dbg !268
  call void @llvm.dbg.value(metadata i64 %50, metadata !259, metadata !DIExpression()), !dbg !207
  %51 = and i64 %49, 67108863, !dbg !269
  call void @llvm.dbg.value(metadata i64 %51, metadata !257, metadata !DIExpression()), !dbg !207
  %52 = mul i64 %50, 5, !dbg !270
  %53 = add i64 %28, %52, !dbg !271
  call void @llvm.dbg.value(metadata i64 %53, metadata !245, metadata !DIExpression()), !dbg !207
  %54 = lshr i64 %53, 26, !dbg !272
  call void @llvm.dbg.value(metadata i64 %54, metadata !259, metadata !DIExpression()), !dbg !207
  %55 = and i64 %53, 67108863, !dbg !273
  call void @llvm.dbg.value(metadata i64 %55, metadata !245, metadata !DIExpression()), !dbg !207
  %56 = add i64 %42, %54, !dbg !274
  call void @llvm.dbg.value(metadata i64 %56, metadata !248, metadata !DIExpression()), !dbg !207
  %57 = add i64 %55, 5, !dbg !275
  call void @llvm.dbg.value(metadata i64 %57, metadata !276, metadata !DIExpression()), !dbg !207
  %58 = lshr i64 %57, 26, !dbg !277
  call void @llvm.dbg.value(metadata i64 %58, metadata !259, metadata !DIExpression()), !dbg !207
  %59 = and i64 %57, 67108863, !dbg !278
  call void @llvm.dbg.value(metadata i64 %59, metadata !276, metadata !DIExpression()), !dbg !207
  %60 = add i64 %56, %58, !dbg !279
  call void @llvm.dbg.value(metadata i64 %60, metadata !280, metadata !DIExpression()), !dbg !207
  %61 = lshr i64 %60, 26, !dbg !281
  call void @llvm.dbg.value(metadata i64 %61, metadata !259, metadata !DIExpression()), !dbg !207
  %62 = and i64 %60, 67108863, !dbg !282
  call void @llvm.dbg.value(metadata i64 %62, metadata !280, metadata !DIExpression()), !dbg !207
  %63 = add i64 %45, %61, !dbg !283
  call void @llvm.dbg.value(metadata i64 %63, metadata !284, metadata !DIExpression()), !dbg !207
  %64 = lshr i64 %63, 26, !dbg !285
  call void @llvm.dbg.value(metadata i64 %64, metadata !259, metadata !DIExpression()), !dbg !207
  %65 = and i64 %63, 67108863, !dbg !286
  call void @llvm.dbg.value(metadata i64 %65, metadata !284, metadata !DIExpression()), !dbg !207
  %66 = add i64 %48, %64, !dbg !287
  call void @llvm.dbg.value(metadata i64 %66, metadata !288, metadata !DIExpression()), !dbg !207
  %67 = lshr i64 %66, 26, !dbg !289
  call void @llvm.dbg.value(metadata i64 %67, metadata !259, metadata !DIExpression()), !dbg !207
  %68 = and i64 %66, 67108863, !dbg !290
  call void @llvm.dbg.value(metadata i64 %68, metadata !288, metadata !DIExpression()), !dbg !207
  %69 = add i64 %51, %67, !dbg !291
  %70 = sub i64 %69, 67108864, !dbg !292
  call void @llvm.dbg.value(metadata i64 %70, metadata !293, metadata !DIExpression()), !dbg !207
  %71 = lshr i64 %70, 63, !dbg !294
  %72 = sub i64 %71, 1, !dbg !295
  call void @llvm.dbg.value(metadata i64 %72, metadata !296, metadata !DIExpression()), !dbg !207
  %73 = and i64 %59, %72, !dbg !297
  call void @llvm.dbg.value(metadata i64 %73, metadata !276, metadata !DIExpression()), !dbg !207
  %74 = and i64 %62, %72, !dbg !298
  call void @llvm.dbg.value(metadata i64 %74, metadata !280, metadata !DIExpression()), !dbg !207
  %75 = and i64 %65, %72, !dbg !299
  call void @llvm.dbg.value(metadata i64 %75, metadata !284, metadata !DIExpression()), !dbg !207
  %76 = and i64 %68, %72, !dbg !300
  call void @llvm.dbg.value(metadata i64 %76, metadata !288, metadata !DIExpression()), !dbg !207
  %77 = and i64 %70, %72, !dbg !301
  call void @llvm.dbg.value(metadata i64 %77, metadata !293, metadata !DIExpression()), !dbg !207
  %78 = xor i64 %72, -1, !dbg !302
  call void @llvm.dbg.value(metadata i64 %78, metadata !296, metadata !DIExpression()), !dbg !207
  %79 = and i64 %55, %78, !dbg !303
  %80 = or i64 %79, %73, !dbg !304
  call void @llvm.dbg.value(metadata i64 %80, metadata !245, metadata !DIExpression()), !dbg !207
  %81 = and i64 %56, %78, !dbg !305
  %82 = or i64 %81, %74, !dbg !306
  call void @llvm.dbg.value(metadata i64 %82, metadata !248, metadata !DIExpression()), !dbg !207
  %83 = and i64 %45, %78, !dbg !307
  %84 = or i64 %83, %75, !dbg !308
  call void @llvm.dbg.value(metadata i64 %84, metadata !251, metadata !DIExpression()), !dbg !207
  %85 = and i64 %48, %78, !dbg !309
  %86 = or i64 %85, %76, !dbg !310
  call void @llvm.dbg.value(metadata i64 %86, metadata !254, metadata !DIExpression()), !dbg !207
  %87 = and i64 %51, %78, !dbg !311
  %88 = or i64 %87, %77, !dbg !312
  call void @llvm.dbg.value(metadata i64 %88, metadata !257, metadata !DIExpression()), !dbg !207
  %89 = shl i64 %82, 26, !dbg !313
  %90 = or i64 %80, %89, !dbg !314
  %91 = and i64 %90, 4294967295, !dbg !315
  call void @llvm.dbg.value(metadata i64 %91, metadata !245, metadata !DIExpression()), !dbg !207
  %92 = lshr i64 %82, 6, !dbg !316
  %93 = shl i64 %84, 20, !dbg !317
  %94 = or i64 %92, %93, !dbg !318
  %95 = and i64 %94, 4294967295, !dbg !319
  call void @llvm.dbg.value(metadata i64 %95, metadata !248, metadata !DIExpression()), !dbg !207
  %96 = lshr i64 %84, 12, !dbg !320
  %97 = shl i64 %86, 14, !dbg !321
  %98 = or i64 %96, %97, !dbg !322
  %99 = and i64 %98, 4294967295, !dbg !323
  call void @llvm.dbg.value(metadata i64 %99, metadata !251, metadata !DIExpression()), !dbg !207
  %100 = lshr i64 %86, 18, !dbg !324
  %101 = shl i64 %88, 8, !dbg !325
  %102 = or i64 %100, %101, !dbg !326
  %103 = and i64 %102, 4294967295, !dbg !327
  call void @llvm.dbg.value(metadata i64 %103, metadata !254, metadata !DIExpression()), !dbg !207
  %104 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !328
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %104, i64 0, i64 0, !dbg !329
  %106 = load i64, i64* %105, align 8, !dbg !329
  %107 = add i64 %91, %106, !dbg !330
  call void @llvm.dbg.value(metadata i64 %107, metadata !331, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i64 %107, metadata !245, metadata !DIExpression()), !dbg !207
  %108 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !332
  %109 = getelementptr inbounds [4 x i64], [4 x i64]* %108, i64 0, i64 1, !dbg !333
  %110 = load i64, i64* %109, align 8, !dbg !333
  %111 = add i64 %95, %110, !dbg !334
  %112 = lshr i64 %107, 32, !dbg !335
  %113 = add i64 %111, %112, !dbg !336
  call void @llvm.dbg.value(metadata i64 %113, metadata !331, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i64 %113, metadata !248, metadata !DIExpression()), !dbg !207
  %114 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !337
  %115 = getelementptr inbounds [4 x i64], [4 x i64]* %114, i64 0, i64 2, !dbg !338
  %116 = load i64, i64* %115, align 8, !dbg !338
  %117 = add i64 %99, %116, !dbg !339
  %118 = lshr i64 %113, 32, !dbg !340
  %119 = add i64 %117, %118, !dbg !341
  call void @llvm.dbg.value(metadata i64 %119, metadata !331, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i64 %119, metadata !251, metadata !DIExpression()), !dbg !207
  %120 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !342
  %121 = getelementptr inbounds [4 x i64], [4 x i64]* %120, i64 0, i64 3, !dbg !343
  %122 = load i64, i64* %121, align 8, !dbg !343
  %123 = add i64 %103, %122, !dbg !344
  %124 = lshr i64 %119, 32, !dbg !345
  %125 = add i64 %123, %124, !dbg !346
  call void @llvm.dbg.value(metadata i64 %125, metadata !331, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i64 %125, metadata !254, metadata !DIExpression()), !dbg !207
  %126 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !347
  call void @U32TO8(i8* %126, i64 %107), !dbg !348
  %127 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !349
  call void @U32TO8(i8* %127, i64 %113), !dbg !350
  %128 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !351
  call void @U32TO8(i8* %128, i64 %119), !dbg !352
  %129 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !353
  call void @U32TO8(i8* %129, i64 %125), !dbg !354
  %130 = bitcast %struct.poly1305_state_internal_t* %4 to i8*, !dbg !355
  call void @sodium_memzero(i8* %130, i64 144), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_blocks(%struct.poly1305_state_internal_t* %0, i8* %1, i64 %2) #0 !dbg !358 {
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %0, metadata !361, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i8* %1, metadata !363, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64 %2, metadata !364, metadata !DIExpression()), !dbg !362
  %4 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 5, !dbg !365
  %5 = load i8, i8* %4, align 8, !dbg !365
  %6 = zext i8 %5 to i32, !dbg !366
  %7 = icmp ne i32 %6, 0, !dbg !366
  %8 = zext i1 %7 to i64, !dbg !366
  %9 = select i1 %7, i32 0, i32 16777216, !dbg !366
  %10 = sext i32 %9 to i64, !dbg !366
  call void @llvm.dbg.value(metadata i64 %10, metadata !367, metadata !DIExpression()), !dbg !362
  %11 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !369
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 0, !dbg !370
  %13 = load i64, i64* %12, align 8, !dbg !370
  call void @llvm.dbg.value(metadata i64 %13, metadata !371, metadata !DIExpression()), !dbg !362
  %14 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !372
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 1, !dbg !373
  %16 = load i64, i64* %15, align 8, !dbg !373
  call void @llvm.dbg.value(metadata i64 %16, metadata !374, metadata !DIExpression()), !dbg !362
  %17 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !375
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %17, i64 0, i64 2, !dbg !376
  %19 = load i64, i64* %18, align 8, !dbg !376
  call void @llvm.dbg.value(metadata i64 %19, metadata !377, metadata !DIExpression()), !dbg !362
  %20 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !378
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 3, !dbg !379
  %22 = load i64, i64* %21, align 8, !dbg !379
  call void @llvm.dbg.value(metadata i64 %22, metadata !380, metadata !DIExpression()), !dbg !362
  %23 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !381
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %23, i64 0, i64 4, !dbg !382
  %25 = load i64, i64* %24, align 8, !dbg !382
  call void @llvm.dbg.value(metadata i64 %25, metadata !383, metadata !DIExpression()), !dbg !362
  %26 = mul i64 %16, 5, !dbg !384
  call void @llvm.dbg.value(metadata i64 %26, metadata !385, metadata !DIExpression()), !dbg !362
  %27 = mul i64 %19, 5, !dbg !386
  call void @llvm.dbg.value(metadata i64 %27, metadata !387, metadata !DIExpression()), !dbg !362
  %28 = mul i64 %22, 5, !dbg !388
  call void @llvm.dbg.value(metadata i64 %28, metadata !389, metadata !DIExpression()), !dbg !362
  %29 = mul i64 %25, 5, !dbg !390
  call void @llvm.dbg.value(metadata i64 %29, metadata !391, metadata !DIExpression()), !dbg !362
  %30 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !392
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %30, i64 0, i64 0, !dbg !393
  %32 = load i64, i64* %31, align 8, !dbg !393
  call void @llvm.dbg.value(metadata i64 %32, metadata !394, metadata !DIExpression()), !dbg !362
  %33 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !395
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %33, i64 0, i64 1, !dbg !396
  %35 = load i64, i64* %34, align 8, !dbg !396
  call void @llvm.dbg.value(metadata i64 %35, metadata !397, metadata !DIExpression()), !dbg !362
  %36 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !398
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %36, i64 0, i64 2, !dbg !399
  %38 = load i64, i64* %37, align 8, !dbg !399
  call void @llvm.dbg.value(metadata i64 %38, metadata !400, metadata !DIExpression()), !dbg !362
  %39 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !401
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 3, !dbg !402
  %41 = load i64, i64* %40, align 8, !dbg !402
  call void @llvm.dbg.value(metadata i64 %41, metadata !403, metadata !DIExpression()), !dbg !362
  %42 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !404
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 4, !dbg !405
  %44 = load i64, i64* %43, align 8, !dbg !405
  call void @llvm.dbg.value(metadata i64 %44, metadata !406, metadata !DIExpression()), !dbg !362
  br label %45, !dbg !407

45:                                               ; preds = %47, %3
  %.06 = phi i64 [ %32, %3 ], [ %134, %47 ], !dbg !362
  %.05 = phi i64 [ %35, %3 ], [ %135, %47 ], !dbg !362
  %.04 = phi i64 [ %38, %3 ], [ %124, %47 ], !dbg !362
  %.03 = phi i64 [ %41, %3 ], [ %127, %47 ], !dbg !362
  %.02 = phi i64 [ %2, %3 ], [ %137, %47 ]
  %.01 = phi i8* [ %1, %3 ], [ %136, %47 ]
  %.0 = phi i64 [ %44, %3 ], [ %130, %47 ], !dbg !362
  call void @llvm.dbg.value(metadata i64 %.0, metadata !406, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i8* %.01, metadata !363, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64 %.02, metadata !364, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64 %.03, metadata !403, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64 %.04, metadata !400, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64 %.05, metadata !397, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i64 %.06, metadata !394, metadata !DIExpression()), !dbg !362
  %46 = icmp uge i64 %.02, 16, !dbg !408
  br i1 %46, label %47, label %138, !dbg !407

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, i8* %.01, i64 0, !dbg !409
  %49 = call i64 @U8TO32(i8* %48), !dbg !411
  %50 = and i64 %49, 67108863, !dbg !412
  %51 = add i64 %.06, %50, !dbg !413
  call void @llvm.dbg.value(metadata i64 %51, metadata !394, metadata !DIExpression()), !dbg !362
  %52 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !414
  %53 = call i64 @U8TO32(i8* %52), !dbg !415
  %54 = lshr i64 %53, 2, !dbg !416
  %55 = and i64 %54, 67108863, !dbg !417
  %56 = add i64 %.05, %55, !dbg !418
  call void @llvm.dbg.value(metadata i64 %56, metadata !397, metadata !DIExpression()), !dbg !362
  %57 = getelementptr inbounds i8, i8* %.01, i64 6, !dbg !419
  %58 = call i64 @U8TO32(i8* %57), !dbg !420
  %59 = lshr i64 %58, 4, !dbg !421
  %60 = and i64 %59, 67108863, !dbg !422
  %61 = add i64 %.04, %60, !dbg !423
  call void @llvm.dbg.value(metadata i64 %61, metadata !400, metadata !DIExpression()), !dbg !362
  %62 = getelementptr inbounds i8, i8* %.01, i64 9, !dbg !424
  %63 = call i64 @U8TO32(i8* %62), !dbg !425
  %64 = lshr i64 %63, 6, !dbg !426
  %65 = and i64 %64, 67108863, !dbg !427
  %66 = add i64 %.03, %65, !dbg !428
  call void @llvm.dbg.value(metadata i64 %66, metadata !403, metadata !DIExpression()), !dbg !362
  %67 = getelementptr inbounds i8, i8* %.01, i64 12, !dbg !429
  %68 = call i64 @U8TO32(i8* %67), !dbg !430
  %69 = lshr i64 %68, 8, !dbg !431
  %70 = or i64 %69, %10, !dbg !432
  %71 = add i64 %.0, %70, !dbg !433
  call void @llvm.dbg.value(metadata i64 %71, metadata !406, metadata !DIExpression()), !dbg !362
  %72 = mul i64 %51, %13, !dbg !434
  %73 = mul i64 %56, %29, !dbg !435
  %74 = add i64 %72, %73, !dbg !436
  %75 = mul i64 %61, %28, !dbg !437
  %76 = add i64 %74, %75, !dbg !438
  %77 = mul i64 %66, %27, !dbg !439
  %78 = add i64 %76, %77, !dbg !440
  %79 = mul i64 %71, %26, !dbg !441
  %80 = add i64 %78, %79, !dbg !442
  call void @llvm.dbg.value(metadata i64 %80, metadata !443, metadata !DIExpression()), !dbg !362
  %81 = mul i64 %51, %16, !dbg !444
  %82 = mul i64 %56, %13, !dbg !445
  %83 = add i64 %81, %82, !dbg !446
  %84 = mul i64 %61, %29, !dbg !447
  %85 = add i64 %83, %84, !dbg !448
  %86 = mul i64 %66, %28, !dbg !449
  %87 = add i64 %85, %86, !dbg !450
  %88 = mul i64 %71, %27, !dbg !451
  %89 = add i64 %87, %88, !dbg !452
  call void @llvm.dbg.value(metadata i64 %89, metadata !453, metadata !DIExpression()), !dbg !362
  %90 = mul i64 %51, %19, !dbg !454
  %91 = mul i64 %56, %16, !dbg !455
  %92 = add i64 %90, %91, !dbg !456
  %93 = mul i64 %61, %13, !dbg !457
  %94 = add i64 %92, %93, !dbg !458
  %95 = mul i64 %66, %29, !dbg !459
  %96 = add i64 %94, %95, !dbg !460
  %97 = mul i64 %71, %28, !dbg !461
  %98 = add i64 %96, %97, !dbg !462
  call void @llvm.dbg.value(metadata i64 %98, metadata !463, metadata !DIExpression()), !dbg !362
  %99 = mul i64 %51, %22, !dbg !464
  %100 = mul i64 %56, %19, !dbg !465
  %101 = add i64 %99, %100, !dbg !466
  %102 = mul i64 %61, %16, !dbg !467
  %103 = add i64 %101, %102, !dbg !468
  %104 = mul i64 %66, %13, !dbg !469
  %105 = add i64 %103, %104, !dbg !470
  %106 = mul i64 %71, %29, !dbg !471
  %107 = add i64 %105, %106, !dbg !472
  call void @llvm.dbg.value(metadata i64 %107, metadata !473, metadata !DIExpression()), !dbg !362
  %108 = mul i64 %51, %25, !dbg !474
  %109 = mul i64 %56, %22, !dbg !475
  %110 = add i64 %108, %109, !dbg !476
  %111 = mul i64 %61, %19, !dbg !477
  %112 = add i64 %110, %111, !dbg !478
  %113 = mul i64 %66, %16, !dbg !479
  %114 = add i64 %112, %113, !dbg !480
  %115 = mul i64 %71, %13, !dbg !481
  %116 = add i64 %114, %115, !dbg !482
  call void @llvm.dbg.value(metadata i64 %116, metadata !483, metadata !DIExpression()), !dbg !362
  %117 = lshr i64 %80, 26, !dbg !484
  call void @llvm.dbg.value(metadata i64 %117, metadata !485, metadata !DIExpression()), !dbg !362
  %118 = and i64 %80, 67108863, !dbg !486
  call void @llvm.dbg.value(metadata i64 %118, metadata !394, metadata !DIExpression()), !dbg !362
  %119 = add i64 %89, %117, !dbg !487
  call void @llvm.dbg.value(metadata i64 %119, metadata !453, metadata !DIExpression()), !dbg !362
  %120 = lshr i64 %119, 26, !dbg !488
  call void @llvm.dbg.value(metadata i64 %120, metadata !485, metadata !DIExpression()), !dbg !362
  %121 = and i64 %119, 67108863, !dbg !489
  call void @llvm.dbg.value(metadata i64 %121, metadata !397, metadata !DIExpression()), !dbg !362
  %122 = add i64 %98, %120, !dbg !490
  call void @llvm.dbg.value(metadata i64 %122, metadata !463, metadata !DIExpression()), !dbg !362
  %123 = lshr i64 %122, 26, !dbg !491
  call void @llvm.dbg.value(metadata i64 %123, metadata !485, metadata !DIExpression()), !dbg !362
  %124 = and i64 %122, 67108863, !dbg !492
  call void @llvm.dbg.value(metadata i64 %124, metadata !400, metadata !DIExpression()), !dbg !362
  %125 = add i64 %107, %123, !dbg !493
  call void @llvm.dbg.value(metadata i64 %125, metadata !473, metadata !DIExpression()), !dbg !362
  %126 = lshr i64 %125, 26, !dbg !494
  call void @llvm.dbg.value(metadata i64 %126, metadata !485, metadata !DIExpression()), !dbg !362
  %127 = and i64 %125, 67108863, !dbg !495
  call void @llvm.dbg.value(metadata i64 %127, metadata !403, metadata !DIExpression()), !dbg !362
  %128 = add i64 %116, %126, !dbg !496
  call void @llvm.dbg.value(metadata i64 %128, metadata !483, metadata !DIExpression()), !dbg !362
  %129 = lshr i64 %128, 26, !dbg !497
  call void @llvm.dbg.value(metadata i64 %129, metadata !485, metadata !DIExpression()), !dbg !362
  %130 = and i64 %128, 67108863, !dbg !498
  call void @llvm.dbg.value(metadata i64 %130, metadata !406, metadata !DIExpression()), !dbg !362
  %131 = mul i64 %129, 5, !dbg !499
  %132 = add i64 %118, %131, !dbg !500
  call void @llvm.dbg.value(metadata i64 %132, metadata !394, metadata !DIExpression()), !dbg !362
  %133 = lshr i64 %132, 26, !dbg !501
  call void @llvm.dbg.value(metadata i64 %133, metadata !485, metadata !DIExpression()), !dbg !362
  %134 = and i64 %132, 67108863, !dbg !502
  call void @llvm.dbg.value(metadata i64 %134, metadata !394, metadata !DIExpression()), !dbg !362
  %135 = add i64 %121, %133, !dbg !503
  call void @llvm.dbg.value(metadata i64 %135, metadata !397, metadata !DIExpression()), !dbg !362
  %136 = getelementptr inbounds i8, i8* %.01, i64 16, !dbg !504
  call void @llvm.dbg.value(metadata i8* %136, metadata !363, metadata !DIExpression()), !dbg !362
  %137 = sub i64 %.02, 16, !dbg !505
  call void @llvm.dbg.value(metadata i64 %137, metadata !364, metadata !DIExpression()), !dbg !362
  br label %45, !dbg !407, !llvm.loop !506

138:                                              ; preds = %45
  %139 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !508
  %140 = getelementptr inbounds [5 x i64], [5 x i64]* %139, i64 0, i64 0, !dbg !509
  store i64 %.06, i64* %140, align 8, !dbg !510
  %141 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !511
  %142 = getelementptr inbounds [5 x i64], [5 x i64]* %141, i64 0, i64 1, !dbg !512
  store i64 %.05, i64* %142, align 8, !dbg !513
  %143 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !514
  %144 = getelementptr inbounds [5 x i64], [5 x i64]* %143, i64 0, i64 2, !dbg !515
  store i64 %.04, i64* %144, align 8, !dbg !516
  %145 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !517
  %146 = getelementptr inbounds [5 x i64], [5 x i64]* %145, i64 0, i64 3, !dbg !518
  store i64 %.03, i64* %146, align 8, !dbg !519
  %147 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !520
  %148 = getelementptr inbounds [5 x i64], [5 x i64]* %147, i64 0, i64 4, !dbg !521
  store i64 %.0, i64* %148, align 8, !dbg !522
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind uwtable
define internal void @U32TO8(i8* %0, i64 %1) #0 !dbg !524 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !527, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.value(metadata i64 %1, metadata !529, metadata !DIExpression()), !dbg !528
  %3 = and i64 %1, 255, !dbg !530
  %4 = trunc i64 %3 to i8, !dbg !531
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !532
  store i8 %4, i8* %5, align 1, !dbg !533
  %6 = lshr i64 %1, 8, !dbg !534
  %7 = and i64 %6, 255, !dbg !535
  %8 = trunc i64 %7 to i8, !dbg !536
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !537
  store i8 %8, i8* %9, align 1, !dbg !538
  %10 = lshr i64 %1, 16, !dbg !539
  %11 = and i64 %10, 255, !dbg !540
  %12 = trunc i64 %11 to i8, !dbg !541
  %13 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !542
  store i8 %12, i8* %13, align 1, !dbg !543
  %14 = lshr i64 %1, 24, !dbg !544
  %15 = and i64 %14, 255, !dbg !545
  %16 = trunc i64 %15 to i8, !dbg !546
  %17 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !547
  store i8 %16, i8* %17, align 1, !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @U8TO32(i8* %0) #0 !dbg !550 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !553, metadata !DIExpression()), !dbg !554
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !555
  %3 = load i8, i8* %2, align 1, !dbg !555
  %4 = zext i8 %3 to i32, !dbg !555
  %5 = and i32 %4, 255, !dbg !556
  %6 = sext i32 %5 to i64, !dbg !557
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !558
  %8 = load i8, i8* %7, align 1, !dbg !558
  %9 = zext i8 %8 to i32, !dbg !558
  %10 = and i32 %9, 255, !dbg !559
  %11 = sext i32 %10 to i64, !dbg !560
  %12 = shl i64 %11, 8, !dbg !561
  %13 = or i64 %6, %12, !dbg !562
  %14 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !563
  %15 = load i8, i8* %14, align 1, !dbg !563
  %16 = zext i8 %15 to i32, !dbg !563
  %17 = and i32 %16, 255, !dbg !564
  %18 = sext i32 %17 to i64, !dbg !565
  %19 = shl i64 %18, 16, !dbg !566
  %20 = or i64 %13, %19, !dbg !567
  %21 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !568
  %22 = load i8, i8* %21, align 1, !dbg !568
  %23 = zext i8 %22 to i32, !dbg !568
  %24 = and i32 %23, 255, !dbg !569
  %25 = sext i32 %24 to i64, !dbg !570
  %26 = shl i64 %25, 24, !dbg !571
  %27 = or i64 %20, %26, !dbg !572
  ret i64 %27, !dbg !573
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !574 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !577, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata i8* %1, metadata !579, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata i64 %2, metadata !580, metadata !DIExpression()), !dbg !578
  %4 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !581
  %5 = bitcast i8* %4 to %struct.poly1305_state_internal_t*, !dbg !582
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %5, metadata !583, metadata !DIExpression()), !dbg !578
  %6 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !584
  %7 = load i64, i64* %6, align 8, !dbg !584
  %8 = icmp ne i64 %7, 0, !dbg !586
  br i1 %8, label %9, label %42, !dbg !587

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !588
  %11 = load i64, i64* %10, align 8, !dbg !588
  %12 = sub i64 16, %11, !dbg !590
  call void @llvm.dbg.value(metadata i64 %12, metadata !591, metadata !DIExpression()), !dbg !592
  %13 = icmp ugt i64 %12, %2, !dbg !593
  br i1 %13, label %14, label %15, !dbg !595

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i64 %2, metadata !591, metadata !DIExpression()), !dbg !592
  br label %15, !dbg !596

15:                                               ; preds = %14, %9
  %.0 = phi i64 [ %2, %14 ], [ %12, %9 ], !dbg !592
  call void @llvm.dbg.value(metadata i64 %.0, metadata !591, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i64 0, metadata !597, metadata !DIExpression()), !dbg !578
  br label %16, !dbg !598

16:                                               ; preds = %26, %15
  %.04 = phi i64 [ 0, %15 ], [ %27, %26 ], !dbg !600
  call void @llvm.dbg.value(metadata i64 %.04, metadata !597, metadata !DIExpression()), !dbg !578
  %17 = icmp ult i64 %.04, %.0, !dbg !601
  br i1 %17, label %18, label %28, !dbg !603

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %1, i64 %.04, !dbg !604
  %20 = load i8, i8* %19, align 1, !dbg !604
  %21 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !605
  %22 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !606
  %23 = load i64, i64* %22, align 8, !dbg !606
  %24 = add i64 %23, %.04, !dbg !607
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 %24, !dbg !608
  store i8 %20, i8* %25, align 1, !dbg !609
  br label %26, !dbg !608

26:                                               ; preds = %18
  %27 = add i64 %.04, 1, !dbg !610
  call void @llvm.dbg.value(metadata i64 %27, metadata !597, metadata !DIExpression()), !dbg !578
  br label %16, !dbg !611, !llvm.loop !612

28:                                               ; preds = %16
  %29 = sub i64 %2, %.0, !dbg !614
  call void @llvm.dbg.value(metadata i64 %29, metadata !580, metadata !DIExpression()), !dbg !578
  %30 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !615
  call void @llvm.dbg.value(metadata i8* %30, metadata !579, metadata !DIExpression()), !dbg !578
  %31 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !616
  %32 = load i64, i64* %31, align 8, !dbg !617
  %33 = add i64 %32, %.0, !dbg !617
  store i64 %33, i64* %31, align 8, !dbg !617
  %34 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !618
  %35 = load i64, i64* %34, align 8, !dbg !618
  %36 = icmp ult i64 %35, 16, !dbg !620
  br i1 %36, label %37, label %38, !dbg !621

37:                                               ; preds = %28
  br label %67, !dbg !622

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !623
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %39, i64 0, i64 0, !dbg !624
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %5, i8* %40, i64 16), !dbg !625
  %41 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !626
  store i64 0, i64* %41, align 8, !dbg !627
  br label %42, !dbg !628

42:                                               ; preds = %38, %3
  %.02 = phi i64 [ %29, %38 ], [ %2, %3 ]
  %.01 = phi i8* [ %30, %38 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i8* %.01, metadata !579, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata i64 %.02, metadata !580, metadata !DIExpression()), !dbg !578
  %43 = icmp uge i64 %.02, 16, !dbg !629
  br i1 %43, label %44, label %48, !dbg !631

44:                                               ; preds = %42
  %45 = and i64 %.02, -16, !dbg !632
  call void @llvm.dbg.value(metadata i64 %45, metadata !634, metadata !DIExpression()), !dbg !635
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %5, i8* %.01, i64 %45), !dbg !636
  %46 = getelementptr inbounds i8, i8* %.01, i64 %45, !dbg !637
  call void @llvm.dbg.value(metadata i8* %46, metadata !579, metadata !DIExpression()), !dbg !578
  %47 = sub i64 %.02, %45, !dbg !638
  call void @llvm.dbg.value(metadata i64 %47, metadata !580, metadata !DIExpression()), !dbg !578
  br label %48, !dbg !639

48:                                               ; preds = %44, %42
  %.13 = phi i64 [ %47, %44 ], [ %.02, %42 ], !dbg !578
  %.1 = phi i8* [ %46, %44 ], [ %.01, %42 ], !dbg !578
  call void @llvm.dbg.value(metadata i8* %.1, metadata !579, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata i64 %.13, metadata !580, metadata !DIExpression()), !dbg !578
  %49 = icmp ne i64 %.13, 0, !dbg !640
  br i1 %49, label %50, label %67, !dbg !642

50:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i64 0, metadata !597, metadata !DIExpression()), !dbg !578
  br label %51, !dbg !643

51:                                               ; preds = %61, %50
  %.15 = phi i64 [ 0, %50 ], [ %62, %61 ], !dbg !646
  call void @llvm.dbg.value(metadata i64 %.15, metadata !597, metadata !DIExpression()), !dbg !578
  %52 = icmp ult i64 %.15, %.13, !dbg !647
  br i1 %52, label %53, label %63, !dbg !649

53:                                               ; preds = %51
  %54 = getelementptr inbounds i8, i8* %.1, i64 %.15, !dbg !650
  %55 = load i8, i8* %54, align 1, !dbg !650
  %56 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !651
  %57 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !652
  %58 = load i64, i64* %57, align 8, !dbg !652
  %59 = add i64 %58, %.15, !dbg !653
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %56, i64 0, i64 %59, !dbg !654
  store i8 %55, i8* %60, align 1, !dbg !655
  br label %61, !dbg !654

61:                                               ; preds = %53
  %62 = add i64 %.15, 1, !dbg !656
  call void @llvm.dbg.value(metadata i64 %62, metadata !597, metadata !DIExpression()), !dbg !578
  br label %51, !dbg !657, !llvm.loop !658

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !660
  %65 = load i64, i64* %64, align 8, !dbg !661
  %66 = add i64 %65, %.13, !dbg !661
  store i64 %66, i64* %64, align 8, !dbg !661
  br label %67, !dbg !662

67:                                               ; preds = %63, %48, %37
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !664 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !667, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i8* %1, metadata !669, metadata !DIExpression()), !dbg !668
  %3 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !670
  %4 = bitcast i8* %3 to %struct.poly1305_state_internal_t*, !dbg !671
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %4, metadata !672, metadata !DIExpression()), !dbg !668
  %5 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !673
  %6 = call i64 @U8TO32(i8* %5), !dbg !674
  %7 = and i64 %6, 67108863, !dbg !675
  %8 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !676
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !677
  store i64 %7, i64* %9, align 8, !dbg !678
  %10 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !679
  %11 = call i64 @U8TO32(i8* %10), !dbg !680
  %12 = lshr i64 %11, 2, !dbg !681
  %13 = and i64 %12, 67108611, !dbg !682
  %14 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !683
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 1, !dbg !684
  store i64 %13, i64* %15, align 8, !dbg !685
  %16 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !686
  %17 = call i64 @U8TO32(i8* %16), !dbg !687
  %18 = lshr i64 %17, 4, !dbg !688
  %19 = and i64 %18, 67092735, !dbg !689
  %20 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !690
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 2, !dbg !691
  store i64 %19, i64* %21, align 8, !dbg !692
  %22 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !693
  %23 = call i64 @U8TO32(i8* %22), !dbg !694
  %24 = lshr i64 %23, 6, !dbg !695
  %25 = and i64 %24, 66076671, !dbg !696
  %26 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !697
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 3, !dbg !698
  store i64 %25, i64* %27, align 8, !dbg !699
  %28 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !700
  %29 = call i64 @U8TO32(i8* %28), !dbg !701
  %30 = lshr i64 %29, 8, !dbg !702
  %31 = and i64 %30, 1048575, !dbg !703
  %32 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !704
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 4, !dbg !705
  store i64 %31, i64* %33, align 8, !dbg !706
  %34 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !707
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %34, i64 0, i64 0, !dbg !708
  store i64 0, i64* %35, align 8, !dbg !709
  %36 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !710
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %36, i64 0, i64 1, !dbg !711
  store i64 0, i64* %37, align 8, !dbg !712
  %38 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !713
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %38, i64 0, i64 2, !dbg !714
  store i64 0, i64* %39, align 8, !dbg !715
  %40 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !716
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %40, i64 0, i64 3, !dbg !717
  store i64 0, i64* %41, align 8, !dbg !718
  %42 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !719
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 4, !dbg !720
  store i64 0, i64* %43, align 8, !dbg !721
  %44 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !722
  %45 = call i64 @U8TO32(i8* %44), !dbg !723
  %46 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !724
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %46, i64 0, i64 0, !dbg !725
  store i64 %45, i64* %47, align 8, !dbg !726
  %48 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !727
  %49 = call i64 @U8TO32(i8* %48), !dbg !728
  %50 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !729
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %50, i64 0, i64 1, !dbg !730
  store i64 %49, i64* %51, align 8, !dbg !731
  %52 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !732
  %53 = call i64 @U8TO32(i8* %52), !dbg !733
  %54 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !734
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %54, i64 0, i64 2, !dbg !735
  store i64 %53, i64* %55, align 8, !dbg !736
  %56 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !737
  %57 = call i64 @U8TO32(i8* %56), !dbg !738
  %58 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !739
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %58, i64 0, i64 3, !dbg !740
  store i64 %57, i64* %59, align 8, !dbg !741
  %60 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !742
  store i64 0, i64* %60, align 8, !dbg !743
  %61 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 5, !dbg !744
  store i8 0, i8* %61, align 8, !dbg !745
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_wrapper(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !747 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !748, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i8* %1, metadata !750, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i64 %2, metadata !751, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.value(metadata i8* %3, metadata !752, metadata !DIExpression()), !dbg !749
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !753
  call void @public_in(%struct.smack_value* %5), !dbg !754
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !755
  call void @public_in(%struct.smack_value* %6), !dbg !756
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !757
  call void @public_in(%struct.smack_value* %7), !dbg !758
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !759
  call void @public_in(%struct.smack_value* %8), !dbg !760
  %9 = call i32 @crypto_onetimeauth_poly1305_donna(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !761
  ret i32 %9, !dbg !762
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_onetimeauth_poly1305_donna_wrapper_t() #0 !dbg !763 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !764, metadata !DIExpression()), !dbg !765
  %4 = call zeroext i8 (...) @gout(), !dbg !766
  store i8 %4, i8* %1, align 1, !dbg !765
  call void @llvm.dbg.declare(metadata i8* %2, metadata !767, metadata !DIExpression()), !dbg !768
  %5 = call zeroext i8 (...) @gin(), !dbg !769
  store i8 %5, i8* %2, align 1, !dbg !768
  call void @llvm.dbg.declare(metadata i8* %3, metadata !770, metadata !DIExpression()), !dbg !771
  %6 = call zeroext i8 (...) @gk(), !dbg !772
  store i8 %6, i8* %3, align 1, !dbg !771
  %7 = call zeroext i8 (...) @gc(), !dbg !773
  call void @llvm.dbg.value(metadata i8 %7, metadata !774, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i8* %1, metadata !776, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i8* %2, metadata !777, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i8* %3, metadata !778, metadata !DIExpression()), !dbg !775
  %8 = call i64 (...) @gclen(), !dbg !779
  call void @llvm.dbg.value(metadata i64 %8, metadata !780, metadata !DIExpression()), !dbg !775
  %9 = call i32 @crypto_onetimeauth_poly1305_donna(i8* %1, i8* %2, i64 %8, i8* %3), !dbg !781
  ret void, !dbg !782
}

declare dso_local zeroext i8 @gout(...) #2

declare dso_local zeroext i8 @gin(...) #2

declare dso_local zeroext i8 @gk(...) #2

declare dso_local zeroext i8 @gc(...) #2

declare dso_local i64 @gclen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !783 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !787, metadata !DIExpression()), !dbg !788
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation, align 8, !dbg !789
  ret i32 0, !dbg !790
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !791 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !792
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !793
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !793
  %4 = call i8* %3(), !dbg !792
  ret i8* %4, !dbg !794
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !795 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !796
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !797
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !797
  %4 = call i32 %3(), !dbg !796
  ret i32 %4, !dbg !798
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !799 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !800
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !802
  br i1 %2, label %3, label %12, !dbg !803

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !804
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !805
  %6 = load void ()*, void ()** %5, align 8, !dbg !805
  %7 = icmp ne void ()* %6, null, !dbg !806
  br i1 %7, label %8, label %12, !dbg !807

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !808
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !810
  %11 = load void ()*, void ()** %10, align 8, !dbg !810
  call void %11(), !dbg !808
  br label %12, !dbg !811

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !812
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !813 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !814, metadata !DIExpression()), !dbg !815
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !816
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !818
  br i1 %3, label %4, label %14, !dbg !819

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !820
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !821
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !821
  %8 = icmp ne i32 (i32)* %7, null, !dbg !822
  br i1 %8, label %9, label %14, !dbg !823

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !824
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !826
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !826
  %13 = call i32 %12(i32 %0), !dbg !824
  br label %26, !dbg !827

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !828
  br i1 %15, label %16, label %17, !dbg !830

16:                                               ; preds = %14
  br label %26, !dbg !831

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !833
  %19 = urem i32 %18, %0, !dbg !834
  call void @llvm.dbg.value(metadata i32 %19, metadata !835, metadata !DIExpression()), !dbg !815
  br label %20, !dbg !836

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !837
  call void @llvm.dbg.value(metadata i32 %21, metadata !839, metadata !DIExpression()), !dbg !815
  br label %22, !dbg !840

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !841
  br i1 %23, label %20, label %24, !dbg !840, !llvm.loop !842

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !844
  br label %26, !dbg !845

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !815
  ret i32 %.0, !dbg !846
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !848, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i64 %1, metadata !850, metadata !DIExpression()), !dbg !849
  %3 = icmp ugt i64 %1, 0, !dbg !851
  br i1 %3, label %4, label %8, !dbg !853

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !854
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !856
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !856
  call void %7(i8* %0, i64 %1), !dbg !854
  br label %8, !dbg !857

8:                                                ; preds = %4, %2
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !859 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !860
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !862
  br i1 %2, label %3, label %13, !dbg !863

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !864
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !865
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !865
  %7 = icmp ne i32 ()* %6, null, !dbg !866
  br i1 %7, label %8, label %13, !dbg !867

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !868
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !870
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !870
  %12 = call i32 %11(), !dbg !868
  br label %14, !dbg !871

13:                                               ; preds = %3, %0
  br label %14, !dbg !872

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !873
  ret i32 %.0, !dbg !874
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !875 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !880, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata i64 %1, metadata !882, metadata !DIExpression()), !dbg !881
  %3 = icmp ule i64 %1, -1, !dbg !883
  br i1 %3, label %4, label %5, !dbg !886

4:                                                ; preds = %2
  br label %9, !dbg !886

5:                                                ; preds = %2
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* @.str.1, i64 0, i64 0
  %7 = getelementptr inbounds [53 x i8], [53 x i8]* @.str.1.2, i64 0, i64 0
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !883
  unreachable, !dbg !883

9:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !887
  ret void, !dbg !888
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !889 {
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.7, i64 0, i64 0
  ret i8* %1, !dbg !890
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !891 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !892, metadata !DIExpression()), !dbg !893
  %2 = bitcast i32* %1 to i8*, !dbg !894
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !895
  %3 = load i32, i32* %1, align 4, !dbg !896
  ret i32 %3, !dbg !897
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !898 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  %2 = load i32, i32* %1, align 4, !dbg !899
  %3 = icmp eq i32 %2, 0, !dbg !901
  br i1 %3, label %4, label %6, !dbg !902

4:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !903
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  store i32 1, i32* %5, align 4, !dbg !905
  br label %6, !dbg !906

6:                                                ; preds = %4, %0
  ret void, !dbg !907
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !908 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !909, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i64 %1, metadata !911, metadata !DIExpression()), !dbg !910
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !912
  %3 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  %4 = load i32, i32* %3, align 4, !dbg !913
  %5 = icmp ne i32 %4, 0, !dbg !915
  br i1 %5, label %6, label %11, !dbg !916

6:                                                ; preds = %2
  %7 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !917
  %8 = icmp ne i32 %7, 0, !dbg !920
  br i1 %8, label %9, label %10, !dbg !921

9:                                                ; preds = %6
  call void @abort() #8, !dbg !922
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  br label %21, !dbg !924

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %13 = load i32, i32* %12, align 4, !dbg !925
  %14 = icmp eq i32 %13, -1, !dbg !927
  br i1 %14, label %20, label %15, !dbg !928

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %17 = load i32, i32* %16, align 4, !dbg !929
  %18 = call i64 @safe_read(i32 %17, i8* %0, i64 %1), !dbg !930
  %19 = icmp ne i64 %18, %1, !dbg !931
  br i1 %19, label %20, label %21, !dbg !932

20:                                               ; preds = %15, %11
  call void @abort() #8, !dbg !933
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %15, %10
  ret void, !dbg !935

UnifiedUnreachableBlock:                          ; preds = %20, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !936 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !937, metadata !DIExpression()), !dbg !938
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %2 = load i32, i32* %1, align 4, !dbg !939
  %3 = icmp ne i32 %2, -1, !dbg !941
  br i1 %3, label %4, label %12, !dbg !942

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !dbg !943
  %7 = call i32 @close(i32 %6), !dbg !944
  %8 = icmp eq i32 %7, 0, !dbg !945
  br i1 %8, label %9, label %12, !dbg !946

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  store i32 -1, i32* %10, align 4, !dbg !947
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  store i32 0, i32* %11, align 4, !dbg !949
  call void @llvm.dbg.value(metadata i32 0, metadata !937, metadata !DIExpression()), !dbg !938
  br label %12, !dbg !950

12:                                               ; preds = %9, %4, %0
  %.0 = phi i32 [ 0, %9 ], [ -1, %4 ], [ -1, %0 ], !dbg !938
  call void @llvm.dbg.value(metadata i32 %.0, metadata !937, metadata !DIExpression()), !dbg !938
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  %14 = load i32, i32* %13, align 4, !dbg !951
  %15 = icmp ne i32 %14, 0, !dbg !953
  br i1 %15, label %16, label %17, !dbg !954

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !937, metadata !DIExpression()), !dbg !938
  br label %17, !dbg !955

17:                                               ; preds = %16, %12
  %.1 = phi i32 [ 0, %16 ], [ %.0, %12 ], !dbg !938
  call void @llvm.dbg.value(metadata i32 %.1, metadata !937, metadata !DIExpression()), !dbg !938
  ret i32 %.1, !dbg !957
}

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !958 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  %2 = load i32, i32* %1, align 4, !dbg !959
  %3 = icmp eq i32 %2, 0, !dbg !961
  br i1 %3, label %4, label %5, !dbg !962

4:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !963
  br label %5, !dbg !965

5:                                                ; preds = %4, %0
  ret void, !dbg !966
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !967 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 %1, metadata !972, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i8* %0, metadata !973, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 256, metadata !974, metadata !DIExpression()), !dbg !971
  br label %3, !dbg !975

3:                                                ; preds = %20, %2
  %.03 = phi i8* [ %0, %2 ], [ %19, %20 ], !dbg !971
  %.02 = phi i64 [ %1, %2 ], [ %18, %20 ]
  %.01 = phi i64 [ 256, %2 ], [ %.1, %20 ], !dbg !971
  call void @llvm.dbg.value(metadata i64 %.01, metadata !974, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 %.02, metadata !972, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i8* %.03, metadata !973, metadata !DIExpression()), !dbg !971
  %4 = icmp ult i64 %.02, %.01, !dbg !976
  br i1 %4, label %5, label %13, !dbg !979

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !974, metadata !DIExpression()), !dbg !971
  %6 = icmp ugt i64 %.02, 0, !dbg !980
  br i1 %6, label %7, label %8, !dbg !984

7:                                                ; preds = %5
  br label %12, !dbg !984

8:                                                ; preds = %5
  %9 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.3, i64 0, i64 0
  %10 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %11 = getelementptr inbounds [53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0
  call void @__assert_fail(i8* %9, i8* %10, i32 159, i8* %11) #8, !dbg !980
  unreachable, !dbg !980

12:                                               ; preds = %7
  br label %13, !dbg !985

13:                                               ; preds = %12, %3
  %.1 = phi i64 [ %.02, %12 ], [ %.01, %3 ], !dbg !971
  call void @llvm.dbg.value(metadata i64 %.1, metadata !974, metadata !DIExpression()), !dbg !971
  %14 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !986
  %15 = icmp ne i32 %14, 0, !dbg !988
  br i1 %15, label %16, label %17, !dbg !989

16:                                               ; preds = %13
  br label %23, !dbg !990

17:                                               ; preds = %13
  %18 = sub i64 %.02, %.1, !dbg !992
  call void @llvm.dbg.value(metadata i64 %18, metadata !972, metadata !DIExpression()), !dbg !971
  %19 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !993
  call void @llvm.dbg.value(metadata i8* %19, metadata !973, metadata !DIExpression()), !dbg !971
  br label %20, !dbg !994

20:                                               ; preds = %17
  %21 = icmp ugt i64 %18, 0, !dbg !995
  br i1 %21, label %3, label %22, !dbg !994, !llvm.loop !996

22:                                               ; preds = %20
  br label %23, !dbg !998

23:                                               ; preds = %22, %16
  %.0 = phi i32 [ -1, %16 ], [ 0, %22 ], !dbg !971
  ret i32 %.0, !dbg !999
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !1000 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1004, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8* %1, metadata !1006, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i64 %2, metadata !1007, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8* %1, metadata !1008, metadata !DIExpression()), !dbg !1005
  %4 = icmp ugt i64 %2, 0, !dbg !1009
  br i1 %4, label %5, label %6, !dbg !1012

5:                                                ; preds = %3
  br label %10, !dbg !1012

6:                                                ; preds = %3
  %7 = getelementptr inbounds [19 x i8], [19 x i8]* @.str.6, i64 0, i64 0
  %8 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0
  call void @__assert_fail(i8* %7, i8* %8, i32 82, i8* %9) #8, !dbg !1009
  unreachable, !dbg !1009

10:                                               ; preds = %5
  br label %11, !dbg !1013

11:                                               ; preds = %37, %10
  %.02 = phi i64 [ %2, %10 ], [ %35, %37 ]
  %.01 = phi i8* [ %1, %10 ], [ %36, %37 ], !dbg !1005
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1008, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1007, metadata !DIExpression()), !dbg !1005
  br label %12, !dbg !1014

12:                                               ; preds = %27, %11
  %13 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %13, metadata !1017, metadata !DIExpression()), !dbg !1005
  %14 = icmp slt i64 %13, 0, !dbg !1018
  br i1 %14, label %15, label %25, !dbg !1019

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #9, !dbg !1020
  %17 = load i32, i32* %16, align 4, !dbg !1020
  %18 = icmp eq i32 %17, 4, !dbg !1021
  br i1 %18, label %23, label %19, !dbg !1022

19:                                               ; preds = %15
  %20 = call i32* @__errno_location() #9, !dbg !1023
  %21 = load i32, i32* %20, align 4, !dbg !1023
  %22 = icmp eq i32 %21, 11, !dbg !1024
  br label %23, !dbg !1022

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi i1 [ false, %12 ], [ %24, %23 ], !dbg !1025
  br i1 %26, label %27, label %28, !dbg !1014

27:                                               ; preds = %25
  br label %12, !dbg !1014, !llvm.loop !1026

28:                                               ; preds = %25
  %29 = icmp slt i64 %13, 0, !dbg !1028
  br i1 %29, label %30, label %31, !dbg !1030

30:                                               ; preds = %28
  br label %43, !dbg !1031

31:                                               ; preds = %28
  %32 = icmp eq i64 %13, 0, !dbg !1033
  br i1 %32, label %33, label %34, !dbg !1035

33:                                               ; preds = %31
  br label %39, !dbg !1036

34:                                               ; preds = %31
  %35 = sub i64 %.02, %13, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %35, metadata !1007, metadata !DIExpression()), !dbg !1005
  %36 = getelementptr inbounds i8, i8* %.01, i64 %13, !dbg !1039
  call void @llvm.dbg.value(metadata i8* %36, metadata !1008, metadata !DIExpression()), !dbg !1005
  br label %37, !dbg !1040

37:                                               ; preds = %34
  %38 = icmp ugt i64 %35, 0, !dbg !1041
  br i1 %38, label %11, label %39, !dbg !1040, !llvm.loop !1042

39:                                               ; preds = %37, %33
  %.1 = phi i8* [ %.01, %33 ], [ %36, %37 ], !dbg !1005
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1008, metadata !DIExpression()), !dbg !1005
  %40 = ptrtoint i8* %.1 to i64, !dbg !1044
  %41 = ptrtoint i8* %1 to i64, !dbg !1044
  %42 = sub i64 %40, %41, !dbg !1044
  br label %43, !dbg !1045

43:                                               ; preds = %39, %30
  %.0 = phi i64 [ %13, %30 ], [ %42, %39 ], !dbg !1005
  ret i64 %.0, !dbg !1046
}

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !1047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1050, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %1, metadata !1052, metadata !DIExpression()), !dbg !1051
  %3 = icmp ule i64 %1, 256, !dbg !1053
  br i1 %3, label %4, label %5, !dbg !1056

4:                                                ; preds = %2
  br label %9, !dbg !1056

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.5, i64 0, i64 0
  %7 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %8 = getelementptr inbounds [60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !1053
  unreachable, !dbg !1053

9:                                                ; preds = %4
  br label %10, !dbg !1057

10:                                               ; preds = %26, %9
  %11 = trunc i64 %1 to i32, !dbg !1058
  %12 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %11, i32 0) #10, !dbg !1060
  %13 = trunc i64 %12 to i32, !dbg !1060
  call void @llvm.dbg.value(metadata i32 %13, metadata !1061, metadata !DIExpression()), !dbg !1051
  br label %14, !dbg !1062

14:                                               ; preds = %10
  %15 = icmp slt i32 %13, 0, !dbg !1063
  br i1 %15, label %16, label %26, !dbg !1064

16:                                               ; preds = %14
  %17 = call i32* @__errno_location() #9, !dbg !1065
  %18 = load i32, i32* %17, align 4, !dbg !1065
  %19 = icmp eq i32 %18, 4, !dbg !1066
  br i1 %19, label %24, label %20, !dbg !1067

20:                                               ; preds = %16
  %21 = call i32* @__errno_location() #9, !dbg !1068
  %22 = load i32, i32* %21, align 4, !dbg !1068
  %23 = icmp eq i32 %22, 11, !dbg !1069
  br label %24, !dbg !1067

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i1 [ false, %14 ], [ %25, %24 ], !dbg !1051
  br i1 %27, label %10, label %28, !dbg !1062, !llvm.loop !1070

28:                                               ; preds = %26
  %29 = trunc i64 %1 to i32, !dbg !1072
  %30 = icmp eq i32 %13, %29, !dbg !1073
  %31 = zext i1 %30 to i32, !dbg !1073
  %32 = sub nsw i32 %31, 1, !dbg !1074
  ret i32 %32, !dbg !1075
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #5

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !1076 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32* @__errno_location() #9, !dbg !1077
  %3 = load i32, i32* %2, align 4, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %3, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !1080, metadata !DIExpression()), !dbg !1082
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !1083
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !1085
  %6 = icmp eq i32 %5, 0, !dbg !1086
  br i1 %6, label %7, label %10, !dbg !1087

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  store i32 1, i32* %8, align 4, !dbg !1088
  %9 = call i32* @__errno_location() #9, !dbg !1090
  store i32 %3, i32* %9, align 4, !dbg !1091
  br label %18, !dbg !1092

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  store i32 0, i32* %11, align 4, !dbg !1093
  %12 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !1094
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  store i32 %12, i32* %13, align 4, !dbg !1096
  %14 = icmp eq i32 %12, -1, !dbg !1097
  br i1 %14, label %15, label %16, !dbg !1098

15:                                               ; preds = %10
  call void @abort() #8, !dbg !1099
  unreachable, !dbg !1099

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #9, !dbg !1101
  store i32 %3, i32* %17, align 4, !dbg !1102
  br label %18, !dbg !1103

18:                                               ; preds = %16, %7
  ret void, !dbg !1103
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !140 {
  %1 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !1104, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !1141, metadata !DIExpression()), !dbg !1143
  %2 = getelementptr inbounds [3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0
  br label %3, !dbg !1144

3:                                                ; preds = %29, %0
  %.01 = phi i8** [ %2, %0 ], [ %.1, %29 ], !dbg !1143
  call void @llvm.dbg.value(metadata i8** %.01, metadata !1141, metadata !DIExpression()), !dbg !1143
  %4 = load i8*, i8** %.01, align 8, !dbg !1145
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 0), !dbg !1147
  call void @llvm.dbg.value(metadata i32 %5, metadata !1148, metadata !DIExpression()), !dbg !1143
  %6 = icmp ne i32 %5, -1, !dbg !1149
  br i1 %6, label %7, label %21, !dbg !1151

7:                                                ; preds = %3
  %8 = call i32 @fstat(i32 %5, %struct.stat* %1) #10, !dbg !1152
  %9 = icmp eq i32 %8, 0, !dbg !1155
  br i1 %9, label %10, label %19, !dbg !1156

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !1157
  %12 = load i32, i32* %11, align 8, !dbg !1157
  %13 = and i32 %12, 61440, !dbg !1157
  %14 = icmp eq i32 %13, 8192, !dbg !1157
  br i1 %14, label %15, label %19, !dbg !1158

15:                                               ; preds = %10
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 1), !dbg !1159
  %17 = or i32 %16, 1, !dbg !1161
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 2, i32 %17), !dbg !1162
  br label %34, !dbg !1163

19:                                               ; preds = %10, %7
  %20 = call i32 @close(i32 %5), !dbg !1164
  br label %27, !dbg !1165

21:                                               ; preds = %3
  %22 = call i32* @__errno_location() #9, !dbg !1166
  %23 = load i32, i32* %22, align 4, !dbg !1166
  %24 = icmp eq i32 %23, 4, !dbg !1168
  br i1 %24, label %25, label %26, !dbg !1169

25:                                               ; preds = %21
  br label %29, !dbg !1170

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !1172
  call void @llvm.dbg.value(metadata i8** %28, metadata !1141, metadata !DIExpression()), !dbg !1143
  br label %29, !dbg !1173

29:                                               ; preds = %27, %25
  %.1 = phi i8** [ %28, %27 ], [ %.01, %25 ], !dbg !1143
  call void @llvm.dbg.value(metadata i8** %.1, metadata !1141, metadata !DIExpression()), !dbg !1143
  %30 = load i8*, i8** %.1, align 8, !dbg !1174
  %31 = icmp ne i8* %30, null, !dbg !1175
  br i1 %31, label %3, label %32, !dbg !1173, !llvm.loop !1176

32:                                               ; preds = %29
  %33 = call i32* @__errno_location() #9, !dbg !1178
  store i32 5, i32* %33, align 4, !dbg !1179
  br label %34, !dbg !1180

34:                                               ; preds = %32, %15
  %.0 = phi i32 [ %5, %15 ], [ -1, %32 ], !dbg !1143
  ret i32 %.0, !dbg !1181
}

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #5

declare dso_local i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !1182 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1183, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %1, metadata !1185, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %0, metadata !1186, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 0, metadata !1187, metadata !DIExpression()), !dbg !1184
  br label %3, !dbg !1188

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !1184
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1187, metadata !DIExpression()), !dbg !1184
  %4 = icmp ult i64 %.0, %1, !dbg !1189
  br i1 %4, label %5, label %8, !dbg !1188

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !1190
  call void @llvm.dbg.value(metadata i64 %6, metadata !1187, metadata !DIExpression()), !dbg !1184
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1192
  store volatile i8 0, i8* %7, align 1, !dbg !1193
  br label %3, !dbg !1188, !llvm.loop !1194

8:                                                ; preds = %3
  ret void, !dbg !1196
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !1197 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8* %1, metadata !1205, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i64 %2, metadata !1206, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8* %0, metadata !1207, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8* %1, metadata !1208, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 0, metadata !1209, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i64 0, metadata !1210, metadata !DIExpression()), !dbg !1204
  br label %4, !dbg !1211

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !1213
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !1204
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1209, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1210, metadata !DIExpression()), !dbg !1204
  %5 = icmp ult i64 %.01, %2, !dbg !1214
  br i1 %5, label %6, label %19, !dbg !1216

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !1217
  %8 = load i8, i8* %7, align 1, !dbg !1217
  %9 = zext i8 %8 to i32, !dbg !1217
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !1219
  %11 = load i8, i8* %10, align 1, !dbg !1219
  %12 = zext i8 %11 to i32, !dbg !1219
  %13 = xor i32 %9, %12, !dbg !1220
  %14 = zext i8 %.0 to i32, !dbg !1221
  %15 = or i32 %14, %13, !dbg !1221
  %16 = trunc i32 %15 to i8, !dbg !1221
  call void @llvm.dbg.value(metadata i8 %16, metadata !1209, metadata !DIExpression()), !dbg !1204
  br label %17, !dbg !1222

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !1223
  call void @llvm.dbg.value(metadata i64 %18, metadata !1210, metadata !DIExpression()), !dbg !1204
  br label %4, !dbg !1224, !llvm.loop !1225

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !1227
  %21 = sub nsw i32 %20, 1, !dbg !1228
  %22 = ashr i32 %21, 8, !dbg !1229
  %23 = and i32 1, %22, !dbg !1230
  %24 = sub nsw i32 %23, 1, !dbg !1231
  ret i32 %24, !dbg !1232
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !1233 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1239, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %1, metadata !1241, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %2, metadata !1242, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %3, metadata !1243, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 0, metadata !1244, metadata !DIExpression()), !dbg !1240
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !1245
  br i1 %5, label %9, label %6, !dbg !1247

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !1248
  %8 = icmp ult i64 %1, %7, !dbg !1249
  br i1 %8, label %9, label %10, !dbg !1250

9:                                                ; preds = %6, %4
  call void @abort() #8, !dbg !1251
  unreachable, !dbg !1251

10:                                               ; preds = %6
  br label %11, !dbg !1253

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !1240
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1244, metadata !DIExpression()), !dbg !1240
  %12 = icmp ult i64 %.0, %3, !dbg !1254
  br i1 %12, label %13, label %47, !dbg !1253

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1255
  %15 = load i8, i8* %14, align 1, !dbg !1255
  %16 = zext i8 %15 to i32, !dbg !1255
  %17 = and i32 %16, 15, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %17, metadata !1258, metadata !DIExpression()), !dbg !1240
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1259
  %19 = load i8, i8* %18, align 1, !dbg !1259
  %20 = zext i8 %19 to i32, !dbg !1259
  %21 = ashr i32 %20, 4, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %21, metadata !1261, metadata !DIExpression()), !dbg !1240
  %22 = add i32 87, %17, !dbg !1262
  %23 = sub i32 %17, 10, !dbg !1263
  %24 = lshr i32 %23, 8, !dbg !1264
  %25 = and i32 %24, -39, !dbg !1265
  %26 = add i32 %22, %25, !dbg !1266
  %27 = trunc i32 %26 to i8, !dbg !1267
  %28 = zext i8 %27 to i32, !dbg !1267
  %29 = shl i32 %28, 8, !dbg !1268
  %30 = add i32 87, %21, !dbg !1269
  %31 = sub i32 %21, 10, !dbg !1270
  %32 = lshr i32 %31, 8, !dbg !1271
  %33 = and i32 %32, -39, !dbg !1272
  %34 = add i32 %30, %33, !dbg !1273
  %35 = trunc i32 %34 to i8, !dbg !1274
  %36 = zext i8 %35 to i32, !dbg !1274
  %37 = or i32 %29, %36, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %37, metadata !1276, metadata !DIExpression()), !dbg !1240
  %38 = trunc i32 %37 to i8, !dbg !1277
  %39 = mul i64 %.0, 2, !dbg !1278
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !1279
  store i8 %38, i8* %40, align 1, !dbg !1280
  %41 = lshr i32 %37, 8, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %41, metadata !1276, metadata !DIExpression()), !dbg !1240
  %42 = trunc i32 %41 to i8, !dbg !1282
  %43 = mul i64 %.0, 2, !dbg !1283
  %44 = add i64 %43, 1, !dbg !1284
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !1285
  store i8 %42, i8* %45, align 1, !dbg !1286
  %46 = add i64 %.0, 1, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %46, metadata !1244, metadata !DIExpression()), !dbg !1240
  br label %11, !dbg !1253, !llvm.loop !1288

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !1290
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !1291
  store i8 0, i8* %49, align 1, !dbg !1292
  ret i8* %0, !dbg !1293
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !1294 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1301, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i64 %1, metadata !1303, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %2, metadata !1304, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i64 %3, metadata !1305, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8* %4, metadata !1306, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i64* %5, metadata !1307, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8** %6, metadata !1308, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i64 0, metadata !1309, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i64 0, metadata !1310, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i32 0, metadata !1311, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8 0, metadata !1312, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8 0, metadata !1313, metadata !DIExpression()), !dbg !1302
  br label %8, !dbg !1314

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !1315
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !1302
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !1302
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !1302
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1313, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1312, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1310, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1309, metadata !DIExpression()), !dbg !1302
  %9 = icmp ult i64 %.03, %3, !dbg !1316
  br i1 %9, label %10, label %78, !dbg !1314

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !1317
  %12 = load i8, i8* %11, align 1, !dbg !1317
  call void @llvm.dbg.value(metadata i8 %12, metadata !1319, metadata !DIExpression()), !dbg !1302
  %13 = zext i8 %12 to i32, !dbg !1320
  %14 = xor i32 %13, 48, !dbg !1321
  %15 = trunc i32 %14 to i8, !dbg !1320
  call void @llvm.dbg.value(metadata i8 %15, metadata !1322, metadata !DIExpression()), !dbg !1302
  %16 = zext i8 %15 to i32, !dbg !1323
  %17 = sub i32 %16, 10, !dbg !1324
  %18 = lshr i32 %17, 8, !dbg !1325
  %19 = trunc i32 %18 to i8, !dbg !1326
  call void @llvm.dbg.value(metadata i8 %19, metadata !1327, metadata !DIExpression()), !dbg !1302
  %20 = zext i8 %12 to i32, !dbg !1328
  %21 = and i32 %20, -33, !dbg !1329
  %22 = sub i32 %21, 55, !dbg !1330
  %23 = trunc i32 %22 to i8, !dbg !1331
  call void @llvm.dbg.value(metadata i8 %23, metadata !1332, metadata !DIExpression()), !dbg !1302
  %24 = zext i8 %23 to i32, !dbg !1333
  %25 = sub i32 %24, 10, !dbg !1334
  %26 = zext i8 %23 to i32, !dbg !1335
  %27 = sub i32 %26, 16, !dbg !1336
  %28 = xor i32 %25, %27, !dbg !1337
  %29 = lshr i32 %28, 8, !dbg !1338
  %30 = trunc i32 %29 to i8, !dbg !1339
  call void @llvm.dbg.value(metadata i8 %30, metadata !1340, metadata !DIExpression()), !dbg !1302
  %31 = zext i8 %19 to i32, !dbg !1341
  %32 = zext i8 %30 to i32, !dbg !1343
  %33 = or i32 %31, %32, !dbg !1344
  %34 = icmp eq i32 %33, 0, !dbg !1345
  br i1 %34, label %35, label %47, !dbg !1346

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !1347
  br i1 %36, label %37, label %46, !dbg !1350

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !1351
  %39 = icmp eq i32 %38, 0, !dbg !1352
  br i1 %39, label %40, label %46, !dbg !1353

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !1354
  %42 = call i8* @strchr(i8* %4, i32 %41) #11, !dbg !1355
  %43 = icmp ne i8* %42, null, !dbg !1356
  br i1 %43, label %44, label %46, !dbg !1357

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %45, metadata !1310, metadata !DIExpression()), !dbg !1302
  br label %8, !dbg !1360, !llvm.loop !1361

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !1363

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !1364
  %49 = zext i8 %15 to i32, !dbg !1365
  %50 = and i32 %48, %49, !dbg !1366
  %51 = zext i8 %30 to i32, !dbg !1367
  %52 = zext i8 %23 to i32, !dbg !1368
  %53 = and i32 %51, %52, !dbg !1369
  %54 = or i32 %50, %53, !dbg !1370
  %55 = trunc i32 %54 to i8, !dbg !1371
  call void @llvm.dbg.value(metadata i8 %55, metadata !1372, metadata !DIExpression()), !dbg !1302
  %56 = icmp uge i64 %.05, %1, !dbg !1373
  br i1 %56, label %57, label %59, !dbg !1375

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !1311, metadata !DIExpression()), !dbg !1302
  %58 = call i32* @__errno_location() #9, !dbg !1376
  store i32 34, i32* %58, align 4, !dbg !1378
  br label %78, !dbg !1379

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !1380
  %61 = icmp eq i32 %60, 0, !dbg !1382
  br i1 %61, label %62, label %66, !dbg !1383

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !1384
  %64 = mul i32 %63, 16, !dbg !1386
  %65 = trunc i32 %64 to i8, !dbg !1384
  call void @llvm.dbg.value(metadata i8 %65, metadata !1312, metadata !DIExpression()), !dbg !1302
  br label %73, !dbg !1387

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !1388
  %68 = zext i8 %55 to i32, !dbg !1390
  %69 = or i32 %67, %68, !dbg !1391
  %70 = trunc i32 %69 to i8, !dbg !1388
  %71 = add i64 %.05, 1, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %71, metadata !1309, metadata !DIExpression()), !dbg !1302
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !1393
  store i8 %70, i8* %72, align 1, !dbg !1394
  br label %73

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !1302
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !1302
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1312, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata i64 %.16, metadata !1309, metadata !DIExpression()), !dbg !1302
  %74 = zext i8 %.0 to i32, !dbg !1395
  %75 = xor i32 %74, -1, !dbg !1396
  %76 = trunc i32 %75 to i8, !dbg !1396
  call void @llvm.dbg.value(metadata i8 %76, metadata !1313, metadata !DIExpression()), !dbg !1302
  %77 = add i64 %.03, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %77, metadata !1310, metadata !DIExpression()), !dbg !1302
  br label %8, !dbg !1314, !llvm.loop !1361

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !1302
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1311, metadata !DIExpression()), !dbg !1302
  %79 = zext i8 %.0 to i32, !dbg !1398
  %80 = icmp ne i32 %79, 0, !dbg !1400
  br i1 %80, label %81, label %83, !dbg !1401

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %82, metadata !1310, metadata !DIExpression()), !dbg !1302
  br label %83, !dbg !1404

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !1302
  call void @llvm.dbg.value(metadata i64 %.14, metadata !1310, metadata !DIExpression()), !dbg !1302
  %84 = icmp ne i8** %6, null, !dbg !1405
  br i1 %84, label %85, label %87, !dbg !1407

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !1408
  store i8* %86, i8** %6, align 8, !dbg !1410
  br label %87, !dbg !1411

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !1412
  br i1 %88, label %89, label %90, !dbg !1414

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !1415
  br label %90, !dbg !1417

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !1418
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !1419 {
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* @canary, i64 0, i64 0
  call void @randombytes_buf(i8* %1, i64 16), !dbg !1420
  ret i32 0, !dbg !1421
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !1422 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1423, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i64 %1, metadata !1425, metadata !DIExpression()), !dbg !1424
  %3 = call i32* @__errno_location() #9, !dbg !1426
  store i32 38, i32* %3, align 4, !dbg !1427
  ret i32 -1, !dbg !1428
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !1429 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1430, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i64 %1, metadata !1432, metadata !DIExpression()), !dbg !1431
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !1433
  %3 = call i32* @__errno_location() #9, !dbg !1434
  store i32 38, i32* %3, align 4, !dbg !1435
  ret i32 -1, !dbg !1436
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !1437 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1440, metadata !DIExpression()), !dbg !1441
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !1442
  call void @llvm.dbg.value(metadata i8* %2, metadata !1444, metadata !DIExpression()), !dbg !1441
  %3 = icmp eq i8* %2, null, !dbg !1445
  br i1 %3, label %4, label %5, !dbg !1446

4:                                                ; preds = %1
  br label %6, !dbg !1447

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !1449
  br label %6, !dbg !1450

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !1441
  ret i8* %.0, !dbg !1451
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !1452 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1453, metadata !DIExpression()), !dbg !1454
  %2 = call noalias i8* @malloc(i64 %0) #10, !dbg !1455
  ret i8* %2, !dbg !1456
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !1457 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1460, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %1, metadata !1462, metadata !DIExpression()), !dbg !1461
  %3 = icmp ugt i64 %0, 0, !dbg !1463
  br i1 %3, label %4, label %9, !dbg !1465

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !1466
  %6 = icmp uge i64 %1, %5, !dbg !1467
  br i1 %6, label %7, label %9, !dbg !1468

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #9, !dbg !1469
  store i32 12, i32* %8, align 4, !dbg !1471
  br label %12, !dbg !1472

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %10, metadata !1474, metadata !DIExpression()), !dbg !1461
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !1475
  br label %12, !dbg !1476

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !1461
  ret i8* %.0, !dbg !1477
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !1478 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1481, metadata !DIExpression()), !dbg !1482
  call void @free(i8* %0) #10, !dbg !1483
  ret void, !dbg !1484
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !1485 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1488, metadata !DIExpression()), !dbg !1489
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !1490
  ret i32 %2, !dbg !1491
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !1492 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1495, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i64 %1, metadata !1497, metadata !DIExpression()), !dbg !1496
  %3 = call i32* @__errno_location() #9, !dbg !1498
  store i32 38, i32* %3, align 4, !dbg !1499
  ret i32 -1, !dbg !1500
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !1501 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1505, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !1507, metadata !DIExpression()), !dbg !1506
  %3 = call i32* @__errno_location() #9, !dbg !1508
  store i32 38, i32* %3, align 4, !dbg !1509
  ret i32 -1, !dbg !1510
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !1511 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1512, metadata !DIExpression()), !dbg !1513
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !1514
  ret i32 %2, !dbg !1515
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !1516 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1517, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i64 %1, metadata !1519, metadata !DIExpression()), !dbg !1518
  %3 = call i32* @__errno_location() #9, !dbg !1520
  store i32 38, i32* %3, align 4, !dbg !1521
  ret i32 -1, !dbg !1522
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !1523 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1524, metadata !DIExpression()), !dbg !1525
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !1526
  ret i32 %2, !dbg !1527
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !1528 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1529, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i64 %1, metadata !1531, metadata !DIExpression()), !dbg !1530
  %3 = call i32* @__errno_location() #9, !dbg !1532
  store i32 38, i32* %3, align 4, !dbg !1533
  ret i32 -1, !dbg !1534
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_verify_16(i8* %0, i8* %1) #0 !dbg !1535 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1538, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %1, metadata !1540, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 0, metadata !1541, metadata !DIExpression()), !dbg !1539
  %3 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1542
  %4 = load i8, i8* %3, align 1, !dbg !1542
  %5 = zext i8 %4 to i32, !dbg !1542
  %6 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1542
  %7 = load i8, i8* %6, align 1, !dbg !1542
  %8 = zext i8 %7 to i32, !dbg !1542
  %9 = xor i32 %5, %8, !dbg !1542
  %10 = or i32 0, %9, !dbg !1542
  call void @llvm.dbg.value(metadata i32 %10, metadata !1541, metadata !DIExpression()), !dbg !1539
  %11 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1543
  %12 = load i8, i8* %11, align 1, !dbg !1543
  %13 = zext i8 %12 to i32, !dbg !1543
  %14 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1543
  %15 = load i8, i8* %14, align 1, !dbg !1543
  %16 = zext i8 %15 to i32, !dbg !1543
  %17 = xor i32 %13, %16, !dbg !1543
  %18 = or i32 %10, %17, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %18, metadata !1541, metadata !DIExpression()), !dbg !1539
  %19 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1544
  %20 = load i8, i8* %19, align 1, !dbg !1544
  %21 = zext i8 %20 to i32, !dbg !1544
  %22 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1544
  %23 = load i8, i8* %22, align 1, !dbg !1544
  %24 = zext i8 %23 to i32, !dbg !1544
  %25 = xor i32 %21, %24, !dbg !1544
  %26 = or i32 %18, %25, !dbg !1544
  call void @llvm.dbg.value(metadata i32 %26, metadata !1541, metadata !DIExpression()), !dbg !1539
  %27 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1545
  %28 = load i8, i8* %27, align 1, !dbg !1545
  %29 = zext i8 %28 to i32, !dbg !1545
  %30 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !1545
  %31 = load i8, i8* %30, align 1, !dbg !1545
  %32 = zext i8 %31 to i32, !dbg !1545
  %33 = xor i32 %29, %32, !dbg !1545
  %34 = or i32 %26, %33, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %34, metadata !1541, metadata !DIExpression()), !dbg !1539
  %35 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1546
  %36 = load i8, i8* %35, align 1, !dbg !1546
  %37 = zext i8 %36 to i32, !dbg !1546
  %38 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !1546
  %39 = load i8, i8* %38, align 1, !dbg !1546
  %40 = zext i8 %39 to i32, !dbg !1546
  %41 = xor i32 %37, %40, !dbg !1546
  %42 = or i32 %34, %41, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %42, metadata !1541, metadata !DIExpression()), !dbg !1539
  %43 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1547
  %44 = load i8, i8* %43, align 1, !dbg !1547
  %45 = zext i8 %44 to i32, !dbg !1547
  %46 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !1547
  %47 = load i8, i8* %46, align 1, !dbg !1547
  %48 = zext i8 %47 to i32, !dbg !1547
  %49 = xor i32 %45, %48, !dbg !1547
  %50 = or i32 %42, %49, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %50, metadata !1541, metadata !DIExpression()), !dbg !1539
  %51 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1548
  %52 = load i8, i8* %51, align 1, !dbg !1548
  %53 = zext i8 %52 to i32, !dbg !1548
  %54 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !1548
  %55 = load i8, i8* %54, align 1, !dbg !1548
  %56 = zext i8 %55 to i32, !dbg !1548
  %57 = xor i32 %53, %56, !dbg !1548
  %58 = or i32 %50, %57, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %58, metadata !1541, metadata !DIExpression()), !dbg !1539
  %59 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1549
  %60 = load i8, i8* %59, align 1, !dbg !1549
  %61 = zext i8 %60 to i32, !dbg !1549
  %62 = getelementptr inbounds i8, i8* %1, i64 7, !dbg !1549
  %63 = load i8, i8* %62, align 1, !dbg !1549
  %64 = zext i8 %63 to i32, !dbg !1549
  %65 = xor i32 %61, %64, !dbg !1549
  %66 = or i32 %58, %65, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %66, metadata !1541, metadata !DIExpression()), !dbg !1539
  %67 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !1550
  %68 = load i8, i8* %67, align 1, !dbg !1550
  %69 = zext i8 %68 to i32, !dbg !1550
  %70 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1550
  %71 = load i8, i8* %70, align 1, !dbg !1550
  %72 = zext i8 %71 to i32, !dbg !1550
  %73 = xor i32 %69, %72, !dbg !1550
  %74 = or i32 %66, %73, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %74, metadata !1541, metadata !DIExpression()), !dbg !1539
  %75 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !1551
  %76 = load i8, i8* %75, align 1, !dbg !1551
  %77 = zext i8 %76 to i32, !dbg !1551
  %78 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !1551
  %79 = load i8, i8* %78, align 1, !dbg !1551
  %80 = zext i8 %79 to i32, !dbg !1551
  %81 = xor i32 %77, %80, !dbg !1551
  %82 = or i32 %74, %81, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %82, metadata !1541, metadata !DIExpression()), !dbg !1539
  %83 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !1552
  %84 = load i8, i8* %83, align 1, !dbg !1552
  %85 = zext i8 %84 to i32, !dbg !1552
  %86 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !1552
  %87 = load i8, i8* %86, align 1, !dbg !1552
  %88 = zext i8 %87 to i32, !dbg !1552
  %89 = xor i32 %85, %88, !dbg !1552
  %90 = or i32 %82, %89, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %90, metadata !1541, metadata !DIExpression()), !dbg !1539
  %91 = getelementptr inbounds i8, i8* %0, i64 11, !dbg !1553
  %92 = load i8, i8* %91, align 1, !dbg !1553
  %93 = zext i8 %92 to i32, !dbg !1553
  %94 = getelementptr inbounds i8, i8* %1, i64 11, !dbg !1553
  %95 = load i8, i8* %94, align 1, !dbg !1553
  %96 = zext i8 %95 to i32, !dbg !1553
  %97 = xor i32 %93, %96, !dbg !1553
  %98 = or i32 %90, %97, !dbg !1553
  call void @llvm.dbg.value(metadata i32 %98, metadata !1541, metadata !DIExpression()), !dbg !1539
  %99 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !1554
  %100 = load i8, i8* %99, align 1, !dbg !1554
  %101 = zext i8 %100 to i32, !dbg !1554
  %102 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1554
  %103 = load i8, i8* %102, align 1, !dbg !1554
  %104 = zext i8 %103 to i32, !dbg !1554
  %105 = xor i32 %101, %104, !dbg !1554
  %106 = or i32 %98, %105, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %106, metadata !1541, metadata !DIExpression()), !dbg !1539
  %107 = getelementptr inbounds i8, i8* %0, i64 13, !dbg !1555
  %108 = load i8, i8* %107, align 1, !dbg !1555
  %109 = zext i8 %108 to i32, !dbg !1555
  %110 = getelementptr inbounds i8, i8* %1, i64 13, !dbg !1555
  %111 = load i8, i8* %110, align 1, !dbg !1555
  %112 = zext i8 %111 to i32, !dbg !1555
  %113 = xor i32 %109, %112, !dbg !1555
  %114 = or i32 %106, %113, !dbg !1555
  call void @llvm.dbg.value(metadata i32 %114, metadata !1541, metadata !DIExpression()), !dbg !1539
  %115 = getelementptr inbounds i8, i8* %0, i64 14, !dbg !1556
  %116 = load i8, i8* %115, align 1, !dbg !1556
  %117 = zext i8 %116 to i32, !dbg !1556
  %118 = getelementptr inbounds i8, i8* %1, i64 14, !dbg !1556
  %119 = load i8, i8* %118, align 1, !dbg !1556
  %120 = zext i8 %119 to i32, !dbg !1556
  %121 = xor i32 %117, %120, !dbg !1556
  %122 = or i32 %114, %121, !dbg !1556
  call void @llvm.dbg.value(metadata i32 %122, metadata !1541, metadata !DIExpression()), !dbg !1539
  %123 = getelementptr inbounds i8, i8* %0, i64 15, !dbg !1557
  %124 = load i8, i8* %123, align 1, !dbg !1557
  %125 = zext i8 %124 to i32, !dbg !1557
  %126 = getelementptr inbounds i8, i8* %1, i64 15, !dbg !1557
  %127 = load i8, i8* %126, align 1, !dbg !1557
  %128 = zext i8 %127 to i32, !dbg !1557
  %129 = xor i32 %125, %128, !dbg !1557
  %130 = or i32 %122, %129, !dbg !1557
  call void @llvm.dbg.value(metadata i32 %130, metadata !1541, metadata !DIExpression()), !dbg !1539
  %131 = sub i32 %130, 1, !dbg !1558
  %132 = lshr i32 %131, 8, !dbg !1559
  %133 = and i32 1, %132, !dbg !1560
  %134 = sub i32 %133, 1, !dbg !1561
  ret i32 %134, !dbg !1562
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_verify(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !1563 {
  %5 = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1564, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8* %1, metadata !1566, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %2, metadata !1567, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8* %3, metadata !1568, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !1569, metadata !DIExpression()), !dbg !1570
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1571
  %7 = call i32 @crypto_onetimeauth_poly1305_donna(i8* %6, i8* %1, i64 %2, i8* %3), !dbg !1572
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !1573
  %9 = call i32 @crypto_verify_16(i8* %0, i8* %8), !dbg !1574
  ret i32 %9, !dbg !1575
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !160, !79, !122, !154, !162, !164}
!llvm.ident = !{!166, !166, !166, !166, !166, !166, !166}
!llvm.module.flags = !{!167, !168, !169}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crypto_onetimeauth_poly1305_donna_implementation", scope: !2, file: !3, line: 98, type: !43, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !42, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/auth_poly1305_donna.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!4 = !{}
!5 = !{!6, !20, !41, !27, !14}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "poly1305_context", file: !8, line: 8, baseType: !9)
!8 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.h", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_onetimeauth_poly1305_state", file: !10, line: 22, baseType: !11)
!10 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h", directory: "/home/luwei/bech-back/libsodium/Poly1305")
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
!22 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna32.h", directory: "/home/luwei/bech-back/libsodium/Poly1305")
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
!78 = distinct !DIGlobalVariable(name: "implementation", scope: !79, file: !80, line: 16, type: !90, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !81, globals: !89, splitDebugInlining: false, nameTableKind: None)
!80 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/randombytes.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!81 = !{!41, !82, !87}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !83, line: 26, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !85, line: 42, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!86 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 46, baseType: !27)
!88 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!89 = !{!77}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "randombytes_implementation", file: !93, line: 26, baseType: !94)
!93 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/randombytes.h", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !93, line: 19, size: 384, elements: !95)
!95 = !{!96, !97, !101, !105, !110, !116}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !94, file: !93, line: 20, baseType: !46, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !94, file: !93, line: 21, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!82}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !94, file: !93, line: 22, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !94, file: !93, line: 23, baseType: !106, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!82, !109}
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !94, file: !93, line: 24, baseType: !111, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !114, !115}
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !94, file: !93, line: 25, baseType: !117, size: 64, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!56}
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "randombytes_sysrandom_implementation", scope: !122, file: !123, line: 297, type: !144, isLocal: false, isDefinition: true)
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !124, globals: !129, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!124 = !{!125, !41, !57, !87, !56}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !126, line: 108, baseType: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !85, line: 193, baseType: !128)
!128 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!129 = !{!120, !130, !138}
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "stream", scope: !122, file: !123, line: 69, type: !132, isLocal: true, isDefinition: true)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysRandom", file: !123, line: 67, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SysRandom_", file: !123, line: 63, size: 96, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "random_data_source_fd", scope: !133, file: !123, line: 64, baseType: !56, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !133, file: !123, line: 65, baseType: !56, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "getrandom_available", scope: !133, file: !123, line: 66, baseType: !56, size: 32, offset: 64)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "devices", scope: !140, file: !123, line: 106, type: !141, isLocal: true, isDefinition: true)
!140 = distinct !DISubprogram(name: "randombytes_sysrandom_random_dev_open", scope: !123, file: !123, line: 102, type: !118, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !4)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 3)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !93, line: 19, size: 384, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !144, file: !93, line: 20, baseType: !46, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !144, file: !93, line: 21, baseType: !98, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !144, file: !93, line: 22, baseType: !102, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !144, file: !93, line: 23, baseType: !106, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !144, file: !93, line: 24, baseType: !111, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !144, file: !93, line: 25, baseType: !117, size: 64, offset: 320)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "canary", scope: !154, file: !155, line: 46, type: !37, isLocal: true, isDefinition: true)
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !159, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!156 = !{!157, !87, !58, !17, !56, !51, !41}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!159 = !{!152}
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "crypto_onetimeauth_poly1305_donna.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!162 = distinct !DICompileUnit(language: DW_LANG_C99, file: !163, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!163 = !DIFile(filename: "../libsodium/src/libsodium/crypto_verify/16/ref/verify_16.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/verify_poly1305_donna.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!166 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!167 = !{i32 7, !"Dwarf Version", i32 4}
!168 = !{i32 2, !"Debug Info Version", i32 3}
!169 = !{i32 1, !"wchar_size", i32 4}
!170 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_implementation_name", scope: !3, file: !3, line: 91, type: !47, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!171 = !DILocation(line: 93, column: 5, scope: !170)
!172 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna", scope: !3, file: !3, line: 49, type: !54, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!173 = !DILocalVariable(name: "out", arg: 1, scope: !172, file: !3, line: 49, type: !57)
!174 = !DILocation(line: 0, scope: !172)
!175 = !DILocalVariable(name: "m", arg: 2, scope: !172, file: !3, line: 49, type: !58)
!176 = !DILocalVariable(name: "inlen", arg: 3, scope: !172, file: !3, line: 50, type: !14)
!177 = !DILocalVariable(name: "key", arg: 4, scope: !172, file: !3, line: 51, type: !58)
!178 = !DILocalVariable(name: "ctx", scope: !172, file: !3, line: 53, type: !7)
!179 = !DILocation(line: 53, column: 22, scope: !172)
!180 = !DILocation(line: 54, column: 5, scope: !172)
!181 = !DILocation(line: 55, column: 5, scope: !172)
!182 = !DILocation(line: 56, column: 5, scope: !172)
!183 = !DILocation(line: 58, column: 5, scope: !172)
!184 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_init", scope: !3, file: !3, line: 62, type: !66, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!185 = !DILocalVariable(name: "state", arg: 1, scope: !184, file: !3, line: 62, type: !68)
!186 = !DILocation(line: 0, scope: !184)
!187 = !DILocalVariable(name: "key", arg: 2, scope: !184, file: !3, line: 63, type: !58)
!188 = !DILocation(line: 65, column: 5, scope: !184)
!189 = !DILocation(line: 67, column: 5, scope: !184)
!190 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_update", scope: !3, file: !3, line: 71, type: !71, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!191 = !DILocalVariable(name: "state", arg: 1, scope: !190, file: !3, line: 71, type: !68)
!192 = !DILocation(line: 0, scope: !190)
!193 = !DILocalVariable(name: "in", arg: 2, scope: !190, file: !3, line: 72, type: !58)
!194 = !DILocalVariable(name: "inlen", arg: 3, scope: !190, file: !3, line: 73, type: !14)
!195 = !DILocation(line: 75, column: 5, scope: !190)
!196 = !DILocation(line: 77, column: 5, scope: !190)
!197 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_final", scope: !3, file: !3, line: 81, type: !75, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!198 = !DILocalVariable(name: "state", arg: 1, scope: !197, file: !3, line: 81, type: !68)
!199 = !DILocation(line: 0, scope: !197)
!200 = !DILocalVariable(name: "out", arg: 2, scope: !197, file: !3, line: 82, type: !57)
!201 = !DILocation(line: 84, column: 5, scope: !197)
!202 = !DILocation(line: 86, column: 5, scope: !197)
!203 = distinct !DISubprogram(name: "poly1305_finish", scope: !22, file: !22, line: 136, type: !204, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !6, !57}
!206 = !DILocalVariable(name: "ctx", arg: 1, scope: !203, file: !22, line: 136, type: !6)
!207 = !DILocation(line: 0, scope: !203)
!208 = !DILocalVariable(name: "mac", arg: 2, scope: !203, file: !22, line: 136, type: !57)
!209 = !DILocation(line: 137, column: 70, scope: !203)
!210 = !DILocation(line: 137, column: 41, scope: !203)
!211 = !DILocalVariable(name: "st", scope: !203, file: !22, line: 137, type: !20)
!212 = !DILocation(line: 144, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !203, file: !22, line: 144, column: 13)
!214 = !DILocation(line: 144, column: 13, scope: !213)
!215 = !DILocation(line: 144, column: 13, scope: !203)
!216 = !DILocation(line: 145, column: 44, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !22, line: 144, column: 27)
!218 = !DILocalVariable(name: "i", scope: !217, file: !22, line: 145, type: !14)
!219 = !DILocation(line: 0, scope: !217)
!220 = !DILocation(line: 146, column: 21, scope: !217)
!221 = !DILocation(line: 146, column: 29, scope: !217)
!222 = !DILocation(line: 146, column: 17, scope: !217)
!223 = !DILocation(line: 146, column: 33, scope: !217)
!224 = !DILocation(line: 147, column: 17, scope: !217)
!225 = !DILocation(line: 147, column: 26, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !22, line: 147, column: 17)
!227 = distinct !DILexicalBlock(scope: !217, file: !22, line: 147, column: 17)
!228 = !DILocation(line: 147, column: 17, scope: !227)
!229 = !DILocation(line: 148, column: 29, scope: !226)
!230 = !DILocation(line: 148, column: 25, scope: !226)
!231 = !DILocation(line: 148, column: 39, scope: !226)
!232 = !DILocation(line: 147, column: 50, scope: !226)
!233 = !DILocation(line: 147, column: 17, scope: !226)
!234 = distinct !{!234, !228, !235, !236}
!235 = !DILocation(line: 148, column: 41, scope: !227)
!236 = !{!"llvm.loop.mustprogress"}
!237 = !DILocation(line: 149, column: 21, scope: !217)
!238 = !DILocation(line: 149, column: 27, scope: !217)
!239 = !DILocation(line: 150, column: 41, scope: !217)
!240 = !DILocation(line: 150, column: 37, scope: !217)
!241 = !DILocation(line: 150, column: 17, scope: !217)
!242 = !DILocation(line: 151, column: 9, scope: !217)
!243 = !DILocation(line: 154, column: 18, scope: !203)
!244 = !DILocation(line: 154, column: 14, scope: !203)
!245 = !DILocalVariable(name: "h0", scope: !203, file: !22, line: 138, type: !27)
!246 = !DILocation(line: 155, column: 18, scope: !203)
!247 = !DILocation(line: 155, column: 14, scope: !203)
!248 = !DILocalVariable(name: "h1", scope: !203, file: !22, line: 138, type: !27)
!249 = !DILocation(line: 156, column: 18, scope: !203)
!250 = !DILocation(line: 156, column: 14, scope: !203)
!251 = !DILocalVariable(name: "h2", scope: !203, file: !22, line: 138, type: !27)
!252 = !DILocation(line: 157, column: 18, scope: !203)
!253 = !DILocation(line: 157, column: 14, scope: !203)
!254 = !DILocalVariable(name: "h3", scope: !203, file: !22, line: 138, type: !27)
!255 = !DILocation(line: 158, column: 18, scope: !203)
!256 = !DILocation(line: 158, column: 14, scope: !203)
!257 = !DILocalVariable(name: "h4", scope: !203, file: !22, line: 138, type: !27)
!258 = !DILocation(line: 160, column: 29, scope: !203)
!259 = !DILocalVariable(name: "c", scope: !203, file: !22, line: 138, type: !27)
!260 = !DILocation(line: 160, column: 44, scope: !203)
!261 = !DILocation(line: 161, column: 12, scope: !203)
!262 = !DILocation(line: 161, column: 29, scope: !203)
!263 = !DILocation(line: 161, column: 44, scope: !203)
!264 = !DILocation(line: 162, column: 12, scope: !203)
!265 = !DILocation(line: 162, column: 29, scope: !203)
!266 = !DILocation(line: 162, column: 44, scope: !203)
!267 = !DILocation(line: 163, column: 12, scope: !203)
!268 = !DILocation(line: 163, column: 29, scope: !203)
!269 = !DILocation(line: 163, column: 44, scope: !203)
!270 = !DILocation(line: 164, column: 17, scope: !203)
!271 = !DILocation(line: 164, column: 12, scope: !203)
!272 = !DILocation(line: 164, column: 29, scope: !203)
!273 = !DILocation(line: 164, column: 44, scope: !203)
!274 = !DILocation(line: 165, column: 12, scope: !203)
!275 = !DILocation(line: 168, column: 17, scope: !203)
!276 = !DILocalVariable(name: "g0", scope: !203, file: !22, line: 139, type: !27)
!277 = !DILocation(line: 168, column: 29, scope: !203)
!278 = !DILocation(line: 168, column: 39, scope: !203)
!279 = !DILocation(line: 169, column: 17, scope: !203)
!280 = !DILocalVariable(name: "g1", scope: !203, file: !22, line: 139, type: !27)
!281 = !DILocation(line: 169, column: 29, scope: !203)
!282 = !DILocation(line: 169, column: 39, scope: !203)
!283 = !DILocation(line: 170, column: 17, scope: !203)
!284 = !DILocalVariable(name: "g2", scope: !203, file: !22, line: 139, type: !27)
!285 = !DILocation(line: 170, column: 29, scope: !203)
!286 = !DILocation(line: 170, column: 39, scope: !203)
!287 = !DILocation(line: 171, column: 17, scope: !203)
!288 = !DILocalVariable(name: "g3", scope: !203, file: !22, line: 139, type: !27)
!289 = !DILocation(line: 171, column: 29, scope: !203)
!290 = !DILocation(line: 171, column: 39, scope: !203)
!291 = !DILocation(line: 172, column: 17, scope: !203)
!292 = !DILocation(line: 172, column: 21, scope: !203)
!293 = !DILocalVariable(name: "g4", scope: !203, file: !22, line: 139, type: !27)
!294 = !DILocation(line: 175, column: 20, scope: !203)
!295 = !DILocation(line: 175, column: 58, scope: !203)
!296 = !DILocalVariable(name: "mask", scope: !203, file: !22, line: 141, type: !27)
!297 = !DILocation(line: 176, column: 12, scope: !203)
!298 = !DILocation(line: 177, column: 12, scope: !203)
!299 = !DILocation(line: 178, column: 12, scope: !203)
!300 = !DILocation(line: 179, column: 12, scope: !203)
!301 = !DILocation(line: 180, column: 12, scope: !203)
!302 = !DILocation(line: 181, column: 16, scope: !203)
!303 = !DILocation(line: 182, column: 18, scope: !203)
!304 = !DILocation(line: 182, column: 26, scope: !203)
!305 = !DILocation(line: 183, column: 18, scope: !203)
!306 = !DILocation(line: 183, column: 26, scope: !203)
!307 = !DILocation(line: 184, column: 18, scope: !203)
!308 = !DILocation(line: 184, column: 26, scope: !203)
!309 = !DILocation(line: 185, column: 18, scope: !203)
!310 = !DILocation(line: 185, column: 26, scope: !203)
!311 = !DILocation(line: 186, column: 18, scope: !203)
!312 = !DILocation(line: 186, column: 26, scope: !203)
!313 = !DILocation(line: 189, column: 32, scope: !203)
!314 = !DILocation(line: 189, column: 26, scope: !203)
!315 = !DILocation(line: 189, column: 40, scope: !203)
!316 = !DILocation(line: 190, column: 19, scope: !203)
!317 = !DILocation(line: 190, column: 32, scope: !203)
!318 = !DILocation(line: 190, column: 26, scope: !203)
!319 = !DILocation(line: 190, column: 40, scope: !203)
!320 = !DILocation(line: 191, column: 19, scope: !203)
!321 = !DILocation(line: 191, column: 32, scope: !203)
!322 = !DILocation(line: 191, column: 26, scope: !203)
!323 = !DILocation(line: 191, column: 40, scope: !203)
!324 = !DILocation(line: 192, column: 19, scope: !203)
!325 = !DILocation(line: 192, column: 32, scope: !203)
!326 = !DILocation(line: 192, column: 26, scope: !203)
!327 = !DILocation(line: 192, column: 40, scope: !203)
!328 = !DILocation(line: 195, column: 42, scope: !203)
!329 = !DILocation(line: 195, column: 38, scope: !203)
!330 = !DILocation(line: 195, column: 36, scope: !203)
!331 = !DILocalVariable(name: "f", scope: !203, file: !22, line: 140, type: !14)
!332 = !DILocation(line: 196, column: 42, scope: !203)
!333 = !DILocation(line: 196, column: 38, scope: !203)
!334 = !DILocation(line: 196, column: 36, scope: !203)
!335 = !DILocation(line: 196, column: 54, scope: !203)
!336 = !DILocation(line: 196, column: 49, scope: !203)
!337 = !DILocation(line: 197, column: 42, scope: !203)
!338 = !DILocation(line: 197, column: 38, scope: !203)
!339 = !DILocation(line: 197, column: 36, scope: !203)
!340 = !DILocation(line: 197, column: 54, scope: !203)
!341 = !DILocation(line: 197, column: 49, scope: !203)
!342 = !DILocation(line: 198, column: 42, scope: !203)
!343 = !DILocation(line: 198, column: 38, scope: !203)
!344 = !DILocation(line: 198, column: 36, scope: !203)
!345 = !DILocation(line: 198, column: 54, scope: !203)
!346 = !DILocation(line: 198, column: 49, scope: !203)
!347 = !DILocation(line: 200, column: 20, scope: !203)
!348 = !DILocation(line: 200, column: 9, scope: !203)
!349 = !DILocation(line: 201, column: 20, scope: !203)
!350 = !DILocation(line: 201, column: 9, scope: !203)
!351 = !DILocation(line: 202, column: 20, scope: !203)
!352 = !DILocation(line: 202, column: 9, scope: !203)
!353 = !DILocation(line: 203, column: 20, scope: !203)
!354 = !DILocation(line: 203, column: 9, scope: !203)
!355 = !DILocation(line: 206, column: 24, scope: !203)
!356 = !DILocation(line: 206, column: 9, scope: !203)
!357 = !DILocation(line: 207, column: 1, scope: !203)
!358 = distinct !DISubprogram(name: "poly1305_blocks", scope: !22, file: !22, line: 75, type: !359, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !20, !58, !14}
!361 = !DILocalVariable(name: "st", arg: 1, scope: !358, file: !22, line: 75, type: !20)
!362 = !DILocation(line: 0, scope: !358)
!363 = !DILocalVariable(name: "m", arg: 2, scope: !358, file: !22, line: 75, type: !58)
!364 = !DILocalVariable(name: "bytes", arg: 3, scope: !358, file: !22, line: 75, type: !14)
!365 = !DILocation(line: 76, column: 42, scope: !358)
!366 = !DILocation(line: 76, column: 37, scope: !358)
!367 = !DILocalVariable(name: "hibit", scope: !358, file: !22, line: 76, type: !368)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!369 = !DILocation(line: 83, column: 18, scope: !358)
!370 = !DILocation(line: 83, column: 14, scope: !358)
!371 = !DILocalVariable(name: "r0", scope: !358, file: !22, line: 77, type: !27)
!372 = !DILocation(line: 84, column: 18, scope: !358)
!373 = !DILocation(line: 84, column: 14, scope: !358)
!374 = !DILocalVariable(name: "r1", scope: !358, file: !22, line: 77, type: !27)
!375 = !DILocation(line: 85, column: 18, scope: !358)
!376 = !DILocation(line: 85, column: 14, scope: !358)
!377 = !DILocalVariable(name: "r2", scope: !358, file: !22, line: 77, type: !27)
!378 = !DILocation(line: 86, column: 18, scope: !358)
!379 = !DILocation(line: 86, column: 14, scope: !358)
!380 = !DILocalVariable(name: "r3", scope: !358, file: !22, line: 77, type: !27)
!381 = !DILocation(line: 87, column: 18, scope: !358)
!382 = !DILocation(line: 87, column: 14, scope: !358)
!383 = !DILocalVariable(name: "r4", scope: !358, file: !22, line: 77, type: !27)
!384 = !DILocation(line: 89, column: 17, scope: !358)
!385 = !DILocalVariable(name: "s1", scope: !358, file: !22, line: 78, type: !27)
!386 = !DILocation(line: 90, column: 17, scope: !358)
!387 = !DILocalVariable(name: "s2", scope: !358, file: !22, line: 78, type: !27)
!388 = !DILocation(line: 91, column: 17, scope: !358)
!389 = !DILocalVariable(name: "s3", scope: !358, file: !22, line: 78, type: !27)
!390 = !DILocation(line: 92, column: 17, scope: !358)
!391 = !DILocalVariable(name: "s4", scope: !358, file: !22, line: 78, type: !27)
!392 = !DILocation(line: 94, column: 18, scope: !358)
!393 = !DILocation(line: 94, column: 14, scope: !358)
!394 = !DILocalVariable(name: "h0", scope: !358, file: !22, line: 79, type: !27)
!395 = !DILocation(line: 95, column: 18, scope: !358)
!396 = !DILocation(line: 95, column: 14, scope: !358)
!397 = !DILocalVariable(name: "h1", scope: !358, file: !22, line: 79, type: !27)
!398 = !DILocation(line: 96, column: 18, scope: !358)
!399 = !DILocation(line: 96, column: 14, scope: !358)
!400 = !DILocalVariable(name: "h2", scope: !358, file: !22, line: 79, type: !27)
!401 = !DILocation(line: 97, column: 18, scope: !358)
!402 = !DILocation(line: 97, column: 14, scope: !358)
!403 = !DILocalVariable(name: "h3", scope: !358, file: !22, line: 79, type: !27)
!404 = !DILocation(line: 98, column: 18, scope: !358)
!405 = !DILocation(line: 98, column: 14, scope: !358)
!406 = !DILocalVariable(name: "h4", scope: !358, file: !22, line: 79, type: !27)
!407 = !DILocation(line: 100, column: 9, scope: !358)
!408 = !DILocation(line: 100, column: 22, scope: !358)
!409 = !DILocation(line: 102, column: 32, scope: !410)
!410 = distinct !DILexicalBlock(scope: !358, file: !22, line: 100, column: 46)
!411 = !DILocation(line: 102, column: 24, scope: !410)
!412 = !DILocation(line: 102, column: 43, scope: !410)
!413 = !DILocation(line: 102, column: 20, scope: !410)
!414 = !DILocation(line: 103, column: 32, scope: !410)
!415 = !DILocation(line: 103, column: 24, scope: !410)
!416 = !DILocation(line: 103, column: 37, scope: !410)
!417 = !DILocation(line: 103, column: 43, scope: !410)
!418 = !DILocation(line: 103, column: 20, scope: !410)
!419 = !DILocation(line: 104, column: 32, scope: !410)
!420 = !DILocation(line: 104, column: 24, scope: !410)
!421 = !DILocation(line: 104, column: 37, scope: !410)
!422 = !DILocation(line: 104, column: 43, scope: !410)
!423 = !DILocation(line: 104, column: 20, scope: !410)
!424 = !DILocation(line: 105, column: 32, scope: !410)
!425 = !DILocation(line: 105, column: 24, scope: !410)
!426 = !DILocation(line: 105, column: 37, scope: !410)
!427 = !DILocation(line: 105, column: 43, scope: !410)
!428 = !DILocation(line: 105, column: 20, scope: !410)
!429 = !DILocation(line: 106, column: 32, scope: !410)
!430 = !DILocation(line: 106, column: 24, scope: !410)
!431 = !DILocation(line: 106, column: 37, scope: !410)
!432 = !DILocation(line: 106, column: 43, scope: !410)
!433 = !DILocation(line: 106, column: 20, scope: !410)
!434 = !DILocation(line: 109, column: 46, scope: !410)
!435 = !DILocation(line: 109, column: 78, scope: !410)
!436 = !DILocation(line: 109, column: 52, scope: !410)
!437 = !DILocation(line: 109, column: 110, scope: !410)
!438 = !DILocation(line: 109, column: 84, scope: !410)
!439 = !DILocation(line: 109, column: 142, scope: !410)
!440 = !DILocation(line: 109, column: 116, scope: !410)
!441 = !DILocation(line: 109, column: 174, scope: !410)
!442 = !DILocation(line: 109, column: 148, scope: !410)
!443 = !DILocalVariable(name: "d0", scope: !358, file: !22, line: 80, type: !14)
!444 = !DILocation(line: 110, column: 46, scope: !410)
!445 = !DILocation(line: 110, column: 78, scope: !410)
!446 = !DILocation(line: 110, column: 52, scope: !410)
!447 = !DILocation(line: 110, column: 110, scope: !410)
!448 = !DILocation(line: 110, column: 84, scope: !410)
!449 = !DILocation(line: 110, column: 142, scope: !410)
!450 = !DILocation(line: 110, column: 116, scope: !410)
!451 = !DILocation(line: 110, column: 174, scope: !410)
!452 = !DILocation(line: 110, column: 148, scope: !410)
!453 = !DILocalVariable(name: "d1", scope: !358, file: !22, line: 80, type: !14)
!454 = !DILocation(line: 111, column: 46, scope: !410)
!455 = !DILocation(line: 111, column: 78, scope: !410)
!456 = !DILocation(line: 111, column: 52, scope: !410)
!457 = !DILocation(line: 111, column: 110, scope: !410)
!458 = !DILocation(line: 111, column: 84, scope: !410)
!459 = !DILocation(line: 111, column: 142, scope: !410)
!460 = !DILocation(line: 111, column: 116, scope: !410)
!461 = !DILocation(line: 111, column: 174, scope: !410)
!462 = !DILocation(line: 111, column: 148, scope: !410)
!463 = !DILocalVariable(name: "d2", scope: !358, file: !22, line: 80, type: !14)
!464 = !DILocation(line: 112, column: 46, scope: !410)
!465 = !DILocation(line: 112, column: 78, scope: !410)
!466 = !DILocation(line: 112, column: 52, scope: !410)
!467 = !DILocation(line: 112, column: 110, scope: !410)
!468 = !DILocation(line: 112, column: 84, scope: !410)
!469 = !DILocation(line: 112, column: 142, scope: !410)
!470 = !DILocation(line: 112, column: 116, scope: !410)
!471 = !DILocation(line: 112, column: 174, scope: !410)
!472 = !DILocation(line: 112, column: 148, scope: !410)
!473 = !DILocalVariable(name: "d3", scope: !358, file: !22, line: 80, type: !14)
!474 = !DILocation(line: 113, column: 46, scope: !410)
!475 = !DILocation(line: 113, column: 78, scope: !410)
!476 = !DILocation(line: 113, column: 52, scope: !410)
!477 = !DILocation(line: 113, column: 110, scope: !410)
!478 = !DILocation(line: 113, column: 84, scope: !410)
!479 = !DILocation(line: 113, column: 142, scope: !410)
!480 = !DILocation(line: 113, column: 116, scope: !410)
!481 = !DILocation(line: 113, column: 174, scope: !410)
!482 = !DILocation(line: 113, column: 148, scope: !410)
!483 = !DILocalVariable(name: "d4", scope: !358, file: !22, line: 80, type: !14)
!484 = !DILocation(line: 116, column: 54, scope: !410)
!485 = !DILocalVariable(name: "c", scope: !358, file: !22, line: 81, type: !27)
!486 = !DILocation(line: 116, column: 85, scope: !410)
!487 = !DILocation(line: 117, column: 20, scope: !410)
!488 = !DILocation(line: 117, column: 54, scope: !410)
!489 = !DILocation(line: 117, column: 85, scope: !410)
!490 = !DILocation(line: 118, column: 20, scope: !410)
!491 = !DILocation(line: 118, column: 54, scope: !410)
!492 = !DILocation(line: 118, column: 85, scope: !410)
!493 = !DILocation(line: 119, column: 20, scope: !410)
!494 = !DILocation(line: 119, column: 54, scope: !410)
!495 = !DILocation(line: 119, column: 85, scope: !410)
!496 = !DILocation(line: 120, column: 20, scope: !410)
!497 = !DILocation(line: 120, column: 54, scope: !410)
!498 = !DILocation(line: 120, column: 85, scope: !410)
!499 = !DILocation(line: 121, column: 25, scope: !410)
!500 = !DILocation(line: 121, column: 20, scope: !410)
!501 = !DILocation(line: 121, column: 54, scope: !410)
!502 = !DILocation(line: 121, column: 85, scope: !410)
!503 = !DILocation(line: 122, column: 20, scope: !410)
!504 = !DILocation(line: 124, column: 19, scope: !410)
!505 = !DILocation(line: 125, column: 23, scope: !410)
!506 = distinct !{!506, !407, !507, !236}
!507 = !DILocation(line: 126, column: 9, scope: !358)
!508 = !DILocation(line: 128, column: 13, scope: !358)
!509 = !DILocation(line: 128, column: 9, scope: !358)
!510 = !DILocation(line: 128, column: 18, scope: !358)
!511 = !DILocation(line: 129, column: 13, scope: !358)
!512 = !DILocation(line: 129, column: 9, scope: !358)
!513 = !DILocation(line: 129, column: 18, scope: !358)
!514 = !DILocation(line: 130, column: 13, scope: !358)
!515 = !DILocation(line: 130, column: 9, scope: !358)
!516 = !DILocation(line: 130, column: 18, scope: !358)
!517 = !DILocation(line: 131, column: 13, scope: !358)
!518 = !DILocation(line: 131, column: 9, scope: !358)
!519 = !DILocation(line: 131, column: 18, scope: !358)
!520 = !DILocation(line: 132, column: 13, scope: !358)
!521 = !DILocation(line: 132, column: 9, scope: !358)
!522 = !DILocation(line: 132, column: 18, scope: !358)
!523 = !DILocation(line: 133, column: 1, scope: !358)
!524 = distinct !DISubprogram(name: "U32TO8", scope: !22, file: !22, line: 39, type: !525, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !57, !27}
!527 = !DILocalVariable(name: "p", arg: 1, scope: !524, file: !22, line: 39, type: !57)
!528 = !DILocation(line: 0, scope: !524)
!529 = !DILocalVariable(name: "v", arg: 2, scope: !524, file: !22, line: 39, type: !27)
!530 = !DILocation(line: 40, column: 26, scope: !524)
!531 = !DILocation(line: 40, column: 16, scope: !524)
!532 = !DILocation(line: 40, column: 9, scope: !524)
!533 = !DILocation(line: 40, column: 14, scope: !524)
!534 = !DILocation(line: 41, column: 19, scope: !524)
!535 = !DILocation(line: 41, column: 26, scope: !524)
!536 = !DILocation(line: 41, column: 16, scope: !524)
!537 = !DILocation(line: 41, column: 9, scope: !524)
!538 = !DILocation(line: 41, column: 14, scope: !524)
!539 = !DILocation(line: 42, column: 19, scope: !524)
!540 = !DILocation(line: 42, column: 26, scope: !524)
!541 = !DILocation(line: 42, column: 16, scope: !524)
!542 = !DILocation(line: 42, column: 9, scope: !524)
!543 = !DILocation(line: 42, column: 14, scope: !524)
!544 = !DILocation(line: 43, column: 19, scope: !524)
!545 = !DILocation(line: 43, column: 26, scope: !524)
!546 = !DILocation(line: 43, column: 16, scope: !524)
!547 = !DILocation(line: 43, column: 9, scope: !524)
!548 = !DILocation(line: 43, column: 14, scope: !524)
!549 = !DILocation(line: 44, column: 1, scope: !524)
!550 = distinct !DISubprogram(name: "U8TO32", scope: !22, file: !22, line: 29, type: !551, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!551 = !DISubroutineType(types: !552)
!552 = !{!27, !58}
!553 = !DILocalVariable(name: "p", arg: 1, scope: !550, file: !22, line: 29, type: !58)
!554 = !DILocation(line: 0, scope: !550)
!555 = !DILocation(line: 31, column: 27, scope: !550)
!556 = !DILocation(line: 31, column: 32, scope: !550)
!557 = !DILocation(line: 31, column: 11, scope: !550)
!558 = !DILocation(line: 32, column: 27, scope: !550)
!559 = !DILocation(line: 32, column: 32, scope: !550)
!560 = !DILocation(line: 32, column: 11, scope: !550)
!561 = !DILocation(line: 32, column: 40, scope: !550)
!562 = !DILocation(line: 31, column: 47, scope: !550)
!563 = !DILocation(line: 33, column: 27, scope: !550)
!564 = !DILocation(line: 33, column: 32, scope: !550)
!565 = !DILocation(line: 33, column: 11, scope: !550)
!566 = !DILocation(line: 33, column: 40, scope: !550)
!567 = !DILocation(line: 32, column: 47, scope: !550)
!568 = !DILocation(line: 34, column: 27, scope: !550)
!569 = !DILocation(line: 34, column: 32, scope: !550)
!570 = !DILocation(line: 34, column: 11, scope: !550)
!571 = !DILocation(line: 34, column: 40, scope: !550)
!572 = !DILocation(line: 33, column: 47, scope: !550)
!573 = !DILocation(line: 30, column: 9, scope: !550)
!574 = distinct !DISubprogram(name: "poly1305_update", scope: !3, file: !3, line: 11, type: !575, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !6, !58, !14}
!577 = !DILocalVariable(name: "ctx", arg: 1, scope: !574, file: !3, line: 11, type: !6)
!578 = !DILocation(line: 0, scope: !574)
!579 = !DILocalVariable(name: "m", arg: 2, scope: !574, file: !3, line: 11, type: !58)
!580 = !DILocalVariable(name: "bytes", arg: 3, scope: !574, file: !3, line: 12, type: !14)
!581 = !DILocation(line: 13, column: 66, scope: !574)
!582 = !DILocation(line: 13, column: 37, scope: !574)
!583 = !DILocalVariable(name: "st", scope: !574, file: !3, line: 13, type: !20)
!584 = !DILocation(line: 17, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !574, file: !3, line: 17, column: 9)
!586 = !DILocation(line: 17, column: 9, scope: !585)
!587 = !DILocation(line: 17, column: 9, scope: !574)
!588 = !DILocation(line: 18, column: 62, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !3, line: 17, column: 23)
!590 = !DILocation(line: 18, column: 56, scope: !589)
!591 = !DILocalVariable(name: "want", scope: !589, file: !3, line: 18, type: !14)
!592 = !DILocation(line: 0, scope: !589)
!593 = !DILocation(line: 19, column: 18, scope: !594)
!594 = distinct !DILexicalBlock(scope: !589, file: !3, line: 19, column: 13)
!595 = !DILocation(line: 19, column: 13, scope: !589)
!596 = !DILocation(line: 20, column: 13, scope: !594)
!597 = !DILocalVariable(name: "i", scope: !574, file: !3, line: 14, type: !14)
!598 = !DILocation(line: 21, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !589, file: !3, line: 21, column: 9)
!600 = !DILocation(line: 0, scope: !599)
!601 = !DILocation(line: 21, column: 23, scope: !602)
!602 = distinct !DILexicalBlock(scope: !599, file: !3, line: 21, column: 9)
!603 = !DILocation(line: 21, column: 9, scope: !599)
!604 = !DILocation(line: 22, column: 44, scope: !602)
!605 = !DILocation(line: 22, column: 17, scope: !602)
!606 = !DILocation(line: 22, column: 28, scope: !602)
!607 = !DILocation(line: 22, column: 37, scope: !602)
!608 = !DILocation(line: 22, column: 13, scope: !602)
!609 = !DILocation(line: 22, column: 42, scope: !602)
!610 = !DILocation(line: 21, column: 32, scope: !602)
!611 = !DILocation(line: 21, column: 9, scope: !602)
!612 = distinct !{!612, !603, !613, !236}
!613 = !DILocation(line: 22, column: 47, scope: !599)
!614 = !DILocation(line: 23, column: 15, scope: !589)
!615 = !DILocation(line: 24, column: 11, scope: !589)
!616 = !DILocation(line: 25, column: 13, scope: !589)
!617 = !DILocation(line: 25, column: 22, scope: !589)
!618 = !DILocation(line: 26, column: 17, scope: !619)
!619 = distinct !DILexicalBlock(scope: !589, file: !3, line: 26, column: 13)
!620 = !DILocation(line: 26, column: 26, scope: !619)
!621 = !DILocation(line: 26, column: 13, scope: !589)
!622 = !DILocation(line: 27, column: 13, scope: !619)
!623 = !DILocation(line: 28, column: 33, scope: !589)
!624 = !DILocation(line: 28, column: 29, scope: !589)
!625 = !DILocation(line: 28, column: 9, scope: !589)
!626 = !DILocation(line: 29, column: 13, scope: !589)
!627 = !DILocation(line: 29, column: 22, scope: !589)
!628 = !DILocation(line: 30, column: 5, scope: !589)
!629 = !DILocation(line: 33, column: 15, scope: !630)
!630 = distinct !DILexicalBlock(scope: !574, file: !3, line: 33, column: 9)
!631 = !DILocation(line: 33, column: 9, scope: !574)
!632 = !DILocation(line: 34, column: 42, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !3, line: 33, column: 39)
!634 = !DILocalVariable(name: "want", scope: !633, file: !3, line: 34, type: !14)
!635 = !DILocation(line: 0, scope: !633)
!636 = !DILocation(line: 35, column: 9, scope: !633)
!637 = !DILocation(line: 36, column: 11, scope: !633)
!638 = !DILocation(line: 37, column: 15, scope: !633)
!639 = !DILocation(line: 38, column: 5, scope: !633)
!640 = !DILocation(line: 41, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !574, file: !3, line: 41, column: 9)
!642 = !DILocation(line: 41, column: 9, scope: !574)
!643 = !DILocation(line: 42, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 42, column: 9)
!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 41, column: 16)
!646 = !DILocation(line: 0, scope: !644)
!647 = !DILocation(line: 42, column: 23, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !3, line: 42, column: 9)
!649 = !DILocation(line: 42, column: 9, scope: !644)
!650 = !DILocation(line: 43, column: 44, scope: !648)
!651 = !DILocation(line: 43, column: 17, scope: !648)
!652 = !DILocation(line: 43, column: 28, scope: !648)
!653 = !DILocation(line: 43, column: 37, scope: !648)
!654 = !DILocation(line: 43, column: 13, scope: !648)
!655 = !DILocation(line: 43, column: 42, scope: !648)
!656 = !DILocation(line: 42, column: 33, scope: !648)
!657 = !DILocation(line: 42, column: 9, scope: !648)
!658 = distinct !{!658, !649, !659, !236}
!659 = !DILocation(line: 43, column: 47, scope: !644)
!660 = !DILocation(line: 44, column: 13, scope: !645)
!661 = !DILocation(line: 44, column: 22, scope: !645)
!662 = !DILocation(line: 45, column: 5, scope: !645)
!663 = !DILocation(line: 46, column: 1, scope: !574)
!664 = distinct !DISubprogram(name: "poly1305_init", scope: !22, file: !22, line: 47, type: !665, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !6, !58}
!667 = !DILocalVariable(name: "ctx", arg: 1, scope: !664, file: !22, line: 47, type: !6)
!668 = !DILocation(line: 0, scope: !664)
!669 = !DILocalVariable(name: "key", arg: 2, scope: !664, file: !22, line: 47, type: !58)
!670 = !DILocation(line: 48, column: 70, scope: !664)
!671 = !DILocation(line: 48, column: 41, scope: !664)
!672 = !DILocalVariable(name: "st", scope: !664, file: !22, line: 48, type: !20)
!673 = !DILocation(line: 51, column: 29, scope: !664)
!674 = !DILocation(line: 51, column: 21, scope: !664)
!675 = !DILocation(line: 51, column: 44, scope: !664)
!676 = !DILocation(line: 51, column: 13, scope: !664)
!677 = !DILocation(line: 51, column: 9, scope: !664)
!678 = !DILocation(line: 51, column: 18, scope: !664)
!679 = !DILocation(line: 52, column: 29, scope: !664)
!680 = !DILocation(line: 52, column: 21, scope: !664)
!681 = !DILocation(line: 52, column: 38, scope: !664)
!682 = !DILocation(line: 52, column: 44, scope: !664)
!683 = !DILocation(line: 52, column: 13, scope: !664)
!684 = !DILocation(line: 52, column: 9, scope: !664)
!685 = !DILocation(line: 52, column: 18, scope: !664)
!686 = !DILocation(line: 53, column: 29, scope: !664)
!687 = !DILocation(line: 53, column: 21, scope: !664)
!688 = !DILocation(line: 53, column: 38, scope: !664)
!689 = !DILocation(line: 53, column: 44, scope: !664)
!690 = !DILocation(line: 53, column: 13, scope: !664)
!691 = !DILocation(line: 53, column: 9, scope: !664)
!692 = !DILocation(line: 53, column: 18, scope: !664)
!693 = !DILocation(line: 54, column: 29, scope: !664)
!694 = !DILocation(line: 54, column: 21, scope: !664)
!695 = !DILocation(line: 54, column: 38, scope: !664)
!696 = !DILocation(line: 54, column: 44, scope: !664)
!697 = !DILocation(line: 54, column: 13, scope: !664)
!698 = !DILocation(line: 54, column: 9, scope: !664)
!699 = !DILocation(line: 54, column: 18, scope: !664)
!700 = !DILocation(line: 55, column: 29, scope: !664)
!701 = !DILocation(line: 55, column: 21, scope: !664)
!702 = !DILocation(line: 55, column: 38, scope: !664)
!703 = !DILocation(line: 55, column: 44, scope: !664)
!704 = !DILocation(line: 55, column: 13, scope: !664)
!705 = !DILocation(line: 55, column: 9, scope: !664)
!706 = !DILocation(line: 55, column: 18, scope: !664)
!707 = !DILocation(line: 58, column: 13, scope: !664)
!708 = !DILocation(line: 58, column: 9, scope: !664)
!709 = !DILocation(line: 58, column: 18, scope: !664)
!710 = !DILocation(line: 59, column: 13, scope: !664)
!711 = !DILocation(line: 59, column: 9, scope: !664)
!712 = !DILocation(line: 59, column: 18, scope: !664)
!713 = !DILocation(line: 60, column: 13, scope: !664)
!714 = !DILocation(line: 60, column: 9, scope: !664)
!715 = !DILocation(line: 60, column: 18, scope: !664)
!716 = !DILocation(line: 61, column: 13, scope: !664)
!717 = !DILocation(line: 61, column: 9, scope: !664)
!718 = !DILocation(line: 61, column: 18, scope: !664)
!719 = !DILocation(line: 62, column: 13, scope: !664)
!720 = !DILocation(line: 62, column: 9, scope: !664)
!721 = !DILocation(line: 62, column: 18, scope: !664)
!722 = !DILocation(line: 65, column: 30, scope: !664)
!723 = !DILocation(line: 65, column: 22, scope: !664)
!724 = !DILocation(line: 65, column: 13, scope: !664)
!725 = !DILocation(line: 65, column: 9, scope: !664)
!726 = !DILocation(line: 65, column: 20, scope: !664)
!727 = !DILocation(line: 66, column: 30, scope: !664)
!728 = !DILocation(line: 66, column: 22, scope: !664)
!729 = !DILocation(line: 66, column: 13, scope: !664)
!730 = !DILocation(line: 66, column: 9, scope: !664)
!731 = !DILocation(line: 66, column: 20, scope: !664)
!732 = !DILocation(line: 67, column: 30, scope: !664)
!733 = !DILocation(line: 67, column: 22, scope: !664)
!734 = !DILocation(line: 67, column: 13, scope: !664)
!735 = !DILocation(line: 67, column: 9, scope: !664)
!736 = !DILocation(line: 67, column: 20, scope: !664)
!737 = !DILocation(line: 68, column: 30, scope: !664)
!738 = !DILocation(line: 68, column: 22, scope: !664)
!739 = !DILocation(line: 68, column: 13, scope: !664)
!740 = !DILocation(line: 68, column: 9, scope: !664)
!741 = !DILocation(line: 68, column: 20, scope: !664)
!742 = !DILocation(line: 70, column: 13, scope: !664)
!743 = !DILocation(line: 70, column: 22, scope: !664)
!744 = !DILocation(line: 71, column: 13, scope: !664)
!745 = !DILocation(line: 71, column: 19, scope: !664)
!746 = !DILocation(line: 72, column: 1, scope: !664)
!747 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_wrapper", scope: !161, file: !161, line: 10, type: !54, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !160, retainedNodes: !4)
!748 = !DILocalVariable(name: "out", arg: 1, scope: !747, file: !161, line: 10, type: !57)
!749 = !DILocation(line: 0, scope: !747)
!750 = !DILocalVariable(name: "m", arg: 2, scope: !747, file: !161, line: 10, type: !58)
!751 = !DILocalVariable(name: "inlen", arg: 3, scope: !747, file: !161, line: 11, type: !14)
!752 = !DILocalVariable(name: "key", arg: 4, scope: !747, file: !161, line: 12, type: !58)
!753 = !DILocation(line: 14, column: 13, scope: !747)
!754 = !DILocation(line: 14, column: 3, scope: !747)
!755 = !DILocation(line: 15, column: 13, scope: !747)
!756 = !DILocation(line: 15, column: 3, scope: !747)
!757 = !DILocation(line: 16, column: 13, scope: !747)
!758 = !DILocation(line: 16, column: 3, scope: !747)
!759 = !DILocation(line: 18, column: 13, scope: !747)
!760 = !DILocation(line: 18, column: 3, scope: !747)
!761 = !DILocation(line: 20, column: 10, scope: !747)
!762 = !DILocation(line: 20, column: 3, scope: !747)
!763 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_wrapper_t", scope: !161, file: !161, line: 28, type: !103, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !160, retainedNodes: !4)
!764 = !DILocalVariable(name: "dout", scope: !763, file: !161, line: 30, type: !17)
!765 = !DILocation(line: 30, column: 17, scope: !763)
!766 = !DILocation(line: 30, column: 24, scope: !763)
!767 = !DILocalVariable(name: "din", scope: !763, file: !161, line: 31, type: !59)
!768 = !DILocation(line: 31, column: 24, scope: !763)
!769 = !DILocation(line: 31, column: 30, scope: !763)
!770 = !DILocalVariable(name: "dk", scope: !763, file: !161, line: 32, type: !59)
!771 = !DILocation(line: 32, column: 21, scope: !763)
!772 = !DILocation(line: 32, column: 26, scope: !763)
!773 = !DILocation(line: 33, column: 27, scope: !763)
!774 = !DILocalVariable(name: "dc", scope: !763, file: !161, line: 33, type: !59)
!775 = !DILocation(line: 0, scope: !763)
!776 = !DILocalVariable(name: "out", scope: !763, file: !161, line: 34, type: !57)
!777 = !DILocalVariable(name: "m", scope: !763, file: !161, line: 35, type: !58)
!778 = !DILocalVariable(name: "key", scope: !763, file: !161, line: 36, type: !58)
!779 = !DILocation(line: 37, column: 28, scope: !763)
!780 = !DILocalVariable(name: "inlen", scope: !763, file: !161, line: 37, type: !14)
!781 = !DILocation(line: 38, column: 2, scope: !763)
!782 = !DILocation(line: 39, column: 1, scope: !763)
!783 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !80, file: !80, line: 23, type: !784, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!784 = !DISubroutineType(types: !785)
!785 = !{!56, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!787 = !DILocalVariable(name: "impl", arg: 1, scope: !783, file: !80, line: 23, type: !786)
!788 = !DILocation(line: 0, scope: !783)
!789 = !DILocation(line: 25, column: 20, scope: !783)
!790 = !DILocation(line: 27, column: 5, scope: !783)
!791 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !80, file: !80, line: 31, type: !47, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!792 = !DILocation(line: 34, column: 12, scope: !791)
!793 = !DILocation(line: 34, column: 28, scope: !791)
!794 = !DILocation(line: 34, column: 5, scope: !791)
!795 = distinct !DISubprogram(name: "randombytes_random", scope: !80, file: !80, line: 41, type: !99, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!796 = !DILocation(line: 44, column: 12, scope: !795)
!797 = !DILocation(line: 44, column: 28, scope: !795)
!798 = !DILocation(line: 44, column: 5, scope: !795)
!799 = distinct !DISubprogram(name: "randombytes_stir", scope: !80, file: !80, line: 53, type: !103, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!800 = !DILocation(line: 56, column: 9, scope: !801)
!801 = distinct !DILexicalBlock(scope: !799, file: !80, line: 56, column: 9)
!802 = !DILocation(line: 56, column: 24, scope: !801)
!803 = !DILocation(line: 56, column: 32, scope: !801)
!804 = !DILocation(line: 56, column: 35, scope: !801)
!805 = !DILocation(line: 56, column: 51, scope: !801)
!806 = !DILocation(line: 56, column: 56, scope: !801)
!807 = !DILocation(line: 56, column: 9, scope: !799)
!808 = !DILocation(line: 57, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !801, file: !80, line: 56, column: 65)
!810 = !DILocation(line: 57, column: 25, scope: !809)
!811 = !DILocation(line: 58, column: 5, scope: !809)
!812 = !DILocation(line: 87, column: 1, scope: !799)
!813 = distinct !DISubprogram(name: "randombytes_uniform", scope: !80, file: !80, line: 94, type: !107, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!814 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !813, file: !80, line: 94, type: !109)
!815 = !DILocation(line: 0, scope: !813)
!816 = !DILocation(line: 99, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !813, file: !80, line: 99, column: 9)
!818 = !DILocation(line: 99, column: 24, scope: !817)
!819 = !DILocation(line: 99, column: 32, scope: !817)
!820 = !DILocation(line: 99, column: 35, scope: !817)
!821 = !DILocation(line: 99, column: 51, scope: !817)
!822 = !DILocation(line: 99, column: 59, scope: !817)
!823 = !DILocation(line: 99, column: 9, scope: !813)
!824 = !DILocation(line: 100, column: 16, scope: !825)
!825 = distinct !DILexicalBlock(scope: !817, file: !80, line: 99, column: 68)
!826 = !DILocation(line: 100, column: 32, scope: !825)
!827 = !DILocation(line: 100, column: 9, scope: !825)
!828 = !DILocation(line: 102, column: 21, scope: !829)
!829 = distinct !DILexicalBlock(scope: !813, file: !80, line: 102, column: 9)
!830 = !DILocation(line: 102, column: 9, scope: !813)
!831 = !DILocation(line: 103, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !80, line: 102, column: 26)
!833 = !DILocation(line: 105, column: 23, scope: !813)
!834 = !DILocation(line: 105, column: 36, scope: !813)
!835 = !DILocalVariable(name: "min", scope: !813, file: !80, line: 96, type: !82)
!836 = !DILocation(line: 106, column: 5, scope: !813)
!837 = !DILocation(line: 107, column: 13, scope: !838)
!838 = distinct !DILexicalBlock(scope: !813, file: !80, line: 106, column: 8)
!839 = !DILocalVariable(name: "r", scope: !813, file: !80, line: 97, type: !82)
!840 = !DILocation(line: 108, column: 5, scope: !838)
!841 = !DILocation(line: 108, column: 16, scope: !813)
!842 = distinct !{!842, !836, !843, !236}
!843 = !DILocation(line: 108, column: 21, scope: !813)
!844 = !DILocation(line: 110, column: 14, scope: !813)
!845 = !DILocation(line: 110, column: 5, scope: !813)
!846 = !DILocation(line: 111, column: 1, scope: !813)
!847 = distinct !DISubprogram(name: "randombytes_buf", scope: !80, file: !80, line: 114, type: !112, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!848 = !DILocalVariable(name: "buf", arg: 1, scope: !847, file: !80, line: 114, type: !114)
!849 = !DILocation(line: 0, scope: !847)
!850 = !DILocalVariable(name: "size", arg: 2, scope: !847, file: !80, line: 114, type: !115)
!851 = !DILocation(line: 117, column: 14, scope: !852)
!852 = distinct !DILexicalBlock(scope: !847, file: !80, line: 117, column: 9)
!853 = !DILocation(line: 117, column: 9, scope: !847)
!854 = !DILocation(line: 118, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !80, line: 117, column: 29)
!856 = !DILocation(line: 118, column: 25, scope: !855)
!857 = !DILocation(line: 119, column: 5, scope: !855)
!858 = !DILocation(line: 128, column: 1, scope: !847)
!859 = distinct !DISubprogram(name: "randombytes_close", scope: !80, file: !80, line: 131, type: !118, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!860 = !DILocation(line: 133, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !859, file: !80, line: 133, column: 9)
!862 = !DILocation(line: 133, column: 24, scope: !861)
!863 = !DILocation(line: 133, column: 32, scope: !861)
!864 = !DILocation(line: 133, column: 35, scope: !861)
!865 = !DILocation(line: 133, column: 51, scope: !861)
!866 = !DILocation(line: 133, column: 57, scope: !861)
!867 = !DILocation(line: 133, column: 9, scope: !859)
!868 = !DILocation(line: 134, column: 16, scope: !869)
!869 = distinct !DILexicalBlock(scope: !861, file: !80, line: 133, column: 66)
!870 = !DILocation(line: 134, column: 32, scope: !869)
!871 = !DILocation(line: 134, column: 9, scope: !869)
!872 = !DILocation(line: 136, column: 5, scope: !859)
!873 = !DILocation(line: 0, scope: !859)
!874 = !DILocation(line: 137, column: 1, scope: !859)
!875 = distinct !DISubprogram(name: "randombytes", scope: !80, file: !80, line: 140, type: !876, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !79, retainedNodes: !4)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !878, !879}
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!880 = !DILocalVariable(name: "buf", arg: 1, scope: !875, file: !80, line: 140, type: !878)
!881 = !DILocation(line: 0, scope: !875)
!882 = !DILocalVariable(name: "buf_len", arg: 2, scope: !875, file: !80, line: 140, type: !879)
!883 = !DILocation(line: 142, column: 5, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !80, line: 142, column: 5)
!885 = distinct !DILexicalBlock(scope: !875, file: !80, line: 142, column: 5)
!886 = !DILocation(line: 142, column: 5, scope: !885)
!887 = !DILocation(line: 143, column: 5, scope: !875)
!888 = !DILocation(line: 144, column: 1, scope: !875)
!889 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !123, file: !123, line: 292, type: !47, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !4)
!890 = !DILocation(line: 294, column: 5, scope: !889)
!891 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !123, file: !123, line: 249, type: !99, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !4)
!892 = !DILocalVariable(name: "r", scope: !891, file: !123, line: 251, type: !82)
!893 = !DILocation(line: 251, column: 14, scope: !891)
!894 = !DILocation(line: 253, column: 31, scope: !891)
!895 = !DILocation(line: 253, column: 5, scope: !891)
!896 = !DILocation(line: 255, column: 12, scope: !891)
!897 = !DILocation(line: 255, column: 5, scope: !891)
!898 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !123, file: !123, line: 206, type: !103, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !4)
!899 = !DILocation(line: 208, column: 16, scope: !900)
!900 = distinct !DILexicalBlock(scope: !898, file: !123, line: 208, column: 9)
!901 = !DILocation(line: 208, column: 28, scope: !900)
!902 = !DILocation(line: 208, column: 9, scope: !898)
!903 = !DILocation(line: 209, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !123, line: 208, column: 34)
!905 = !DILocation(line: 210, column: 28, scope: !904)
!906 = !DILocation(line: 211, column: 5, scope: !904)
!907 = !DILocation(line: 212, column: 1, scope: !898)
!908 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !123, file: !123, line: 259, type: !112, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !4)
!909 = !DILocalVariable(name: "buf", arg: 1, scope: !908, file: !123, line: 259, type: !114)
!910 = !DILocation(line: 0, scope: !908)
!911 = !DILocalVariable(name: "size", arg: 2, scope: !908, file: !123, line: 259, type: !115)
!912 = !DILocation(line: 261, column: 5, scope: !908)
!913 = !DILocation(line: 268, column: 16, scope: !914)
!914 = distinct !DILexicalBlock(scope: !908, file: !123, line: 268, column: 9)
!915 = !DILocation(line: 268, column: 36, scope: !914)
!916 = !DILocation(line: 268, column: 9, scope: !908)
!917 = !DILocation(line: 269, column: 13, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !123, line: 269, column: 13)
!919 = distinct !DILexicalBlock(scope: !914, file: !123, line: 268, column: 42)
!920 = !DILocation(line: 269, column: 52, scope: !918)
!921 = !DILocation(line: 269, column: 13, scope: !919)
!922 = !DILocation(line: 270, column: 13, scope: !923)
!923 = distinct !DILexicalBlock(scope: !918, file: !123, line: 269, column: 58)
!924 = !DILocation(line: 272, column: 9, scope: !919)
!925 = !DILocation(line: 275, column: 16, scope: !926)
!926 = distinct !DILexicalBlock(scope: !908, file: !123, line: 275, column: 9)
!927 = !DILocation(line: 275, column: 38, scope: !926)
!928 = !DILocation(line: 275, column: 44, scope: !926)
!929 = !DILocation(line: 276, column: 26, scope: !926)
!930 = !DILocation(line: 276, column: 9, scope: !926)
!931 = !DILocation(line: 276, column: 60, scope: !926)
!932 = !DILocation(line: 275, column: 9, scope: !908)
!933 = !DILocation(line: 277, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !926, file: !123, line: 276, column: 79)
!935 = !DILocation(line: 287, column: 1, scope: !908)
!936 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !123, file: !123, line: 223, type: !118, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !4)
!937 = !DILocalVariable(name: "ret", scope: !936, file: !123, line: 225, type: !56)
!938 = !DILocation(line: 0, scope: !936)
!939 = !DILocation(line: 228, column: 16, scope: !940)
!940 = distinct !DILexicalBlock(scope: !936, file: !123, line: 228, column: 9)
!941 = !DILocation(line: 228, column: 38, scope: !940)
!942 = !DILocation(line: 228, column: 44, scope: !940)
!943 = !DILocation(line: 229, column: 22, scope: !940)
!944 = !DILocation(line: 229, column: 9, scope: !940)
!945 = !DILocation(line: 229, column: 45, scope: !940)
!946 = !DILocation(line: 228, column: 9, scope: !936)
!947 = !DILocation(line: 230, column: 38, scope: !948)
!948 = distinct !DILexicalBlock(scope: !940, file: !123, line: 229, column: 51)
!949 = !DILocation(line: 231, column: 28, scope: !948)
!950 = !DILocation(line: 233, column: 5, scope: !948)
!951 = !DILocation(line: 235, column: 16, scope: !952)
!952 = distinct !DILexicalBlock(scope: !936, file: !123, line: 235, column: 9)
!953 = !DILocation(line: 235, column: 36, scope: !952)
!954 = !DILocation(line: 235, column: 9, scope: !936)
!955 = !DILocation(line: 237, column: 5, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !123, line: 235, column: 42)
!957 = !DILocation(line: 245, column: 5, scope: !936)
!958 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !123, file: !123, line: 215, type: !103, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !4)
!959 = !DILocation(line: 217, column: 16, scope: !960)
!960 = distinct !DILexicalBlock(scope: !958, file: !123, line: 217, column: 9)
!961 = !DILocation(line: 217, column: 28, scope: !960)
!962 = !DILocation(line: 217, column: 9, scope: !958)
!963 = !DILocation(line: 218, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !123, line: 217, column: 34)
!965 = !DILocation(line: 219, column: 5, scope: !964)
!966 = !DILocation(line: 220, column: 1, scope: !958)
!967 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !123, file: !123, line: 151, type: !968, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !4)
!968 = !DISubroutineType(types: !969)
!969 = !{!56, !114, !87}
!970 = !DILocalVariable(name: "buf_", arg: 1, scope: !967, file: !123, line: 151, type: !114)
!971 = !DILocation(line: 0, scope: !967)
!972 = !DILocalVariable(name: "size", arg: 2, scope: !967, file: !123, line: 151, type: !87)
!973 = !DILocalVariable(name: "buf", scope: !967, file: !123, line: 153, type: !57)
!974 = !DILocalVariable(name: "chunk_size", scope: !967, file: !123, line: 154, type: !87)
!975 = !DILocation(line: 156, column: 5, scope: !967)
!976 = !DILocation(line: 157, column: 18, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !123, line: 157, column: 13)
!978 = distinct !DILexicalBlock(scope: !967, file: !123, line: 156, column: 8)
!979 = !DILocation(line: 157, column: 13, scope: !978)
!980 = !DILocation(line: 159, column: 13, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !123, line: 159, column: 13)
!982 = distinct !DILexicalBlock(scope: !983, file: !123, line: 159, column: 13)
!983 = distinct !DILexicalBlock(scope: !977, file: !123, line: 157, column: 32)
!984 = !DILocation(line: 159, column: 13, scope: !982)
!985 = !DILocation(line: 160, column: 9, scope: !983)
!986 = !DILocation(line: 161, column: 13, scope: !987)
!987 = distinct !DILexicalBlock(scope: !978, file: !123, line: 161, column: 13)
!988 = !DILocation(line: 161, column: 59, scope: !987)
!989 = !DILocation(line: 161, column: 13, scope: !978)
!990 = !DILocation(line: 162, column: 13, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !123, line: 161, column: 65)
!992 = !DILocation(line: 164, column: 14, scope: !978)
!993 = !DILocation(line: 165, column: 13, scope: !978)
!994 = !DILocation(line: 166, column: 5, scope: !978)
!995 = !DILocation(line: 166, column: 19, scope: !967)
!996 = distinct !{!996, !975, !997, !236}
!997 = !DILocation(line: 166, column: 32, scope: !967)
!998 = !DILocation(line: 168, column: 5, scope: !967)
!999 = !DILocation(line: 169, column: 1, scope: !967)
!1000 = distinct !DISubprogram(name: "safe_read", scope: !123, file: !123, line: 77, type: !1001, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !4)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!125, !1003, !114, !87}
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1004 = !DILocalVariable(name: "fd", arg: 1, scope: !1000, file: !123, line: 77, type: !1003)
!1005 = !DILocation(line: 0, scope: !1000)
!1006 = !DILocalVariable(name: "buf_", arg: 2, scope: !1000, file: !123, line: 77, type: !114)
!1007 = !DILocalVariable(name: "size", arg: 3, scope: !1000, file: !123, line: 77, type: !87)
!1008 = !DILocalVariable(name: "buf", scope: !1000, file: !123, line: 79, type: !57)
!1009 = !DILocation(line: 82, column: 5, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !123, line: 82, column: 5)
!1011 = distinct !DILexicalBlock(scope: !1000, file: !123, line: 82, column: 5)
!1012 = !DILocation(line: 82, column: 5, scope: !1011)
!1013 = !DILocation(line: 83, column: 5, scope: !1000)
!1014 = !DILocation(line: 84, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1000, file: !123, line: 83, column: 8)
!1016 = !DILocation(line: 84, column: 26, scope: !1015)
!1017 = !DILocalVariable(name: "readnb", scope: !1000, file: !123, line: 80, type: !125)
!1018 = !DILocation(line: 84, column: 47, scope: !1015)
!1019 = !DILocation(line: 84, column: 61, scope: !1015)
!1020 = !DILocation(line: 85, column: 17, scope: !1015)
!1021 = !DILocation(line: 85, column: 23, scope: !1015)
!1022 = !DILocation(line: 85, column: 32, scope: !1015)
!1023 = !DILocation(line: 85, column: 35, scope: !1015)
!1024 = !DILocation(line: 85, column: 41, scope: !1015)
!1025 = !DILocation(line: 0, scope: !1015)
!1026 = distinct !{!1026, !1014, !1027, !236}
!1027 = !DILocation(line: 85, column: 52, scope: !1015)
!1028 = !DILocation(line: 86, column: 20, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1015, file: !123, line: 86, column: 13)
!1030 = !DILocation(line: 86, column: 13, scope: !1015)
!1031 = !DILocation(line: 87, column: 13, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !123, line: 86, column: 35)
!1033 = !DILocation(line: 89, column: 20, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1015, file: !123, line: 89, column: 13)
!1035 = !DILocation(line: 89, column: 13, scope: !1015)
!1036 = !DILocation(line: 90, column: 13, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !123, line: 89, column: 36)
!1038 = !DILocation(line: 92, column: 14, scope: !1015)
!1039 = !DILocation(line: 93, column: 13, scope: !1015)
!1040 = !DILocation(line: 94, column: 5, scope: !1015)
!1041 = !DILocation(line: 94, column: 19, scope: !1000)
!1042 = distinct !{!1042, !1013, !1043, !236}
!1043 = !DILocation(line: 94, column: 32, scope: !1000)
!1044 = !DILocation(line: 96, column: 27, scope: !1000)
!1045 = !DILocation(line: 96, column: 5, scope: !1000)
!1046 = !DILocation(line: 97, column: 1, scope: !1000)
!1047 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !123, file: !123, line: 138, type: !1048, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !4)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!56, !114, !115}
!1050 = !DILocalVariable(name: "buf", arg: 1, scope: !1047, file: !123, line: 138, type: !114)
!1051 = !DILocation(line: 0, scope: !1047)
!1052 = !DILocalVariable(name: "size", arg: 2, scope: !1047, file: !123, line: 138, type: !115)
!1053 = !DILocation(line: 142, column: 5, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !123, line: 142, column: 5)
!1055 = distinct !DILexicalBlock(scope: !1047, file: !123, line: 142, column: 5)
!1056 = !DILocation(line: 142, column: 5, scope: !1055)
!1057 = !DILocation(line: 143, column: 5, scope: !1047)
!1058 = !DILocation(line: 144, column: 46, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1047, file: !123, line: 143, column: 8)
!1060 = !DILocation(line: 144, column: 18, scope: !1059)
!1061 = !DILocalVariable(name: "readnb", scope: !1047, file: !123, line: 140, type: !56)
!1062 = !DILocation(line: 145, column: 5, scope: !1059)
!1063 = !DILocation(line: 145, column: 21, scope: !1047)
!1064 = !DILocation(line: 145, column: 25, scope: !1047)
!1065 = !DILocation(line: 145, column: 29, scope: !1047)
!1066 = !DILocation(line: 145, column: 35, scope: !1047)
!1067 = !DILocation(line: 145, column: 44, scope: !1047)
!1068 = !DILocation(line: 145, column: 47, scope: !1047)
!1069 = !DILocation(line: 145, column: 53, scope: !1047)
!1070 = distinct !{!1070, !1057, !1071, !236}
!1071 = !DILocation(line: 145, column: 63, scope: !1047)
!1072 = !DILocation(line: 147, column: 23, scope: !1047)
!1073 = !DILocation(line: 147, column: 20, scope: !1047)
!1074 = !DILocation(line: 147, column: 35, scope: !1047)
!1075 = !DILocation(line: 147, column: 5, scope: !1047)
!1076 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !123, file: !123, line: 173, type: !103, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !122, retainedNodes: !4)
!1077 = !DILocation(line: 175, column: 32, scope: !1076)
!1078 = !DILocalVariable(name: "errno_save", scope: !1076, file: !123, line: 175, type: !1003)
!1079 = !DILocation(line: 0, scope: !1076)
!1080 = !DILocalVariable(name: "fodder", scope: !1081, file: !123, line: 179, type: !37)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !123, line: 178, column: 5)
!1082 = !DILocation(line: 179, column: 16, scope: !1081)
!1083 = !DILocation(line: 181, column: 34, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !123, line: 181, column: 6)
!1085 = !DILocation(line: 181, column: 6, scope: !1084)
!1086 = !DILocation(line: 181, column: 57, scope: !1084)
!1087 = !DILocation(line: 181, column: 6, scope: !1081)
!1088 = !DILocation(line: 182, column: 33, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !123, line: 181, column: 63)
!1090 = !DILocation(line: 183, column: 6, scope: !1089)
!1091 = !DILocation(line: 183, column: 12, scope: !1089)
!1092 = !DILocation(line: 184, column: 6, scope: !1089)
!1093 = !DILocation(line: 186, column: 29, scope: !1081)
!1094 = !DILocation(line: 191, column: 10, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1076, file: !123, line: 190, column: 9)
!1096 = !DILocation(line: 190, column: 39, scope: !1095)
!1097 = !DILocation(line: 191, column: 51, scope: !1095)
!1098 = !DILocation(line: 190, column: 9, scope: !1076)
!1099 = !DILocation(line: 192, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !123, line: 191, column: 58)
!1101 = !DILocation(line: 194, column: 5, scope: !1076)
!1102 = !DILocation(line: 194, column: 11, scope: !1076)
!1103 = !DILocation(line: 195, column: 1, scope: !1076)
!1104 = !DILocalVariable(name: "st", scope: !140, file: !123, line: 105, type: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1106, line: 46, size: 1152, elements: !1107)
!1106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1107 = !{!1108, !1110, !1112, !1114, !1116, !1118, !1120, !1121, !1122, !1124, !1126, !1128, !1136, !1137, !1138}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1105, file: !1106, line: 48, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !85, line: 145, baseType: !27)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1105, file: !1106, line: 53, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !85, line: 148, baseType: !27)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1105, file: !1106, line: 61, baseType: !1113, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !85, line: 151, baseType: !27)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1105, file: !1106, line: 62, baseType: !1115, size: 32, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !85, line: 150, baseType: !86)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1105, file: !1106, line: 64, baseType: !1117, size: 32, offset: 224)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !85, line: 146, baseType: !86)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1105, file: !1106, line: 65, baseType: !1119, size: 32, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !85, line: 147, baseType: !86)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1105, file: !1106, line: 67, baseType: !56, size: 32, offset: 288)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1105, file: !1106, line: 69, baseType: !1109, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1105, file: !1106, line: 74, baseType: !1123, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !85, line: 152, baseType: !128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1105, file: !1106, line: 78, baseType: !1125, size: 64, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !85, line: 174, baseType: !128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1105, file: !1106, line: 80, baseType: !1127, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !85, line: 179, baseType: !128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1105, file: !1106, line: 91, baseType: !1129, size: 128, offset: 576)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1130, line: 10, size: 128, elements: !1131)
!1130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1131 = !{!1132, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1129, file: !1130, line: 12, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !85, line: 160, baseType: !128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1129, file: !1130, line: 16, baseType: !1135, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !85, line: 196, baseType: !128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1105, file: !1106, line: 92, baseType: !1129, size: 128, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1105, file: !1106, line: 93, baseType: !1129, size: 128, offset: 832)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1105, file: !1106, line: 106, baseType: !1139, size: 192, offset: 960)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1135, size: 192, elements: !142)
!1140 = !DILocation(line: 105, column: 24, scope: !140)
!1141 = !DILocalVariable(name: "device", scope: !140, file: !123, line: 112, type: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!1143 = !DILocation(line: 0, scope: !140)
!1144 = !DILocation(line: 115, column: 5, scope: !140)
!1145 = !DILocation(line: 116, column: 19, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !140, file: !123, line: 115, column: 8)
!1147 = !DILocation(line: 116, column: 14, scope: !1146)
!1148 = !DILocalVariable(name: "fd", scope: !140, file: !123, line: 113, type: !56)
!1149 = !DILocation(line: 117, column: 16, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !123, line: 117, column: 13)
!1151 = !DILocation(line: 117, column: 13, scope: !1146)
!1152 = !DILocation(line: 118, column: 17, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !123, line: 118, column: 17)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !123, line: 117, column: 23)
!1155 = !DILocation(line: 118, column: 32, scope: !1153)
!1156 = !DILocation(line: 118, column: 37, scope: !1153)
!1157 = !DILocation(line: 118, column: 40, scope: !1153)
!1158 = !DILocation(line: 118, column: 17, scope: !1154)
!1159 = !DILocation(line: 120, column: 43, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1153, file: !123, line: 118, column: 61)
!1161 = !DILocation(line: 120, column: 62, scope: !1160)
!1162 = !DILocation(line: 120, column: 24, scope: !1160)
!1163 = !DILocation(line: 122, column: 17, scope: !1160)
!1164 = !DILocation(line: 124, column: 20, scope: !1154)
!1165 = !DILocation(line: 125, column: 9, scope: !1154)
!1166 = !DILocation(line: 125, column: 20, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1150, file: !123, line: 125, column: 20)
!1168 = !DILocation(line: 125, column: 26, scope: !1167)
!1169 = !DILocation(line: 125, column: 20, scope: !1150)
!1170 = !DILocation(line: 126, column: 13, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !123, line: 125, column: 36)
!1172 = !DILocation(line: 128, column: 15, scope: !1146)
!1173 = !DILocation(line: 129, column: 5, scope: !1146)
!1174 = !DILocation(line: 129, column: 14, scope: !140)
!1175 = !DILocation(line: 129, column: 22, scope: !140)
!1176 = distinct !{!1176, !1144, !1177, !236}
!1177 = !DILocation(line: 129, column: 29, scope: !140)
!1178 = !DILocation(line: 131, column: 5, scope: !140)
!1179 = !DILocation(line: 131, column: 11, scope: !140)
!1180 = !DILocation(line: 132, column: 5, scope: !140)
!1181 = !DILocation(line: 134, column: 1, scope: !140)
!1182 = distinct !DISubprogram(name: "sodium_memzero", scope: !155, file: !155, line: 58, type: !112, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1183 = !DILocalVariable(name: "pnt", arg: 1, scope: !1182, file: !155, line: 58, type: !114)
!1184 = !DILocation(line: 0, scope: !1182)
!1185 = !DILocalVariable(name: "len", arg: 2, scope: !1182, file: !155, line: 58, type: !115)
!1186 = !DILocalVariable(name: "pnt_", scope: !1182, file: !155, line: 72, type: !157)
!1187 = !DILocalVariable(name: "i", scope: !1182, file: !155, line: 73, type: !87)
!1188 = !DILocation(line: 75, column: 5, scope: !1182)
!1189 = !DILocation(line: 75, column: 14, scope: !1182)
!1190 = !DILocation(line: 76, column: 15, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1182, file: !155, line: 75, column: 21)
!1192 = !DILocation(line: 76, column: 9, scope: !1191)
!1193 = !DILocation(line: 76, column: 19, scope: !1191)
!1194 = distinct !{!1194, !1188, !1195, !236}
!1195 = !DILocation(line: 77, column: 5, scope: !1182)
!1196 = !DILocation(line: 79, column: 1, scope: !1182)
!1197 = distinct !DISubprogram(name: "sodium_memcmp", scope: !155, file: !155, line: 82, type: !1198, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!56, !1200, !1200, !87}
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1203 = !DILocalVariable(name: "b1_", arg: 1, scope: !1197, file: !155, line: 82, type: !1200)
!1204 = !DILocation(line: 0, scope: !1197)
!1205 = !DILocalVariable(name: "b2_", arg: 2, scope: !1197, file: !155, line: 82, type: !1200)
!1206 = !DILocalVariable(name: "len", arg: 3, scope: !1197, file: !155, line: 82, type: !87)
!1207 = !DILocalVariable(name: "b1", scope: !1197, file: !155, line: 84, type: !58)
!1208 = !DILocalVariable(name: "b2", scope: !1197, file: !155, line: 85, type: !58)
!1209 = !DILocalVariable(name: "d", scope: !1197, file: !155, line: 87, type: !17)
!1210 = !DILocalVariable(name: "i", scope: !1197, file: !155, line: 86, type: !87)
!1211 = !DILocation(line: 89, column: 10, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1197, file: !155, line: 89, column: 5)
!1213 = !DILocation(line: 0, scope: !1212)
!1214 = !DILocation(line: 89, column: 20, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1212, file: !155, line: 89, column: 5)
!1216 = !DILocation(line: 89, column: 5, scope: !1212)
!1217 = !DILocation(line: 90, column: 14, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !155, line: 89, column: 32)
!1219 = !DILocation(line: 90, column: 22, scope: !1218)
!1220 = !DILocation(line: 90, column: 20, scope: !1218)
!1221 = !DILocation(line: 90, column: 11, scope: !1218)
!1222 = !DILocation(line: 91, column: 5, scope: !1218)
!1223 = !DILocation(line: 89, column: 28, scope: !1215)
!1224 = !DILocation(line: 89, column: 5, scope: !1215)
!1225 = distinct !{!1225, !1216, !1226, !236}
!1226 = !DILocation(line: 91, column: 5, scope: !1212)
!1227 = !DILocation(line: 92, column: 26, scope: !1197)
!1228 = !DILocation(line: 92, column: 28, scope: !1197)
!1229 = !DILocation(line: 92, column: 33, scope: !1197)
!1230 = !DILocation(line: 92, column: 22, scope: !1197)
!1231 = !DILocation(line: 92, column: 40, scope: !1197)
!1232 = !DILocation(line: 92, column: 5, scope: !1197)
!1233 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !155, file: !155, line: 97, type: !1234, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!1236, !1237, !115, !1238, !115}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1239 = !DILocalVariable(name: "hex", arg: 1, scope: !1233, file: !155, line: 97, type: !1237)
!1240 = !DILocation(line: 0, scope: !1233)
!1241 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !1233, file: !155, line: 97, type: !115)
!1242 = !DILocalVariable(name: "bin", arg: 3, scope: !1233, file: !155, line: 98, type: !1238)
!1243 = !DILocalVariable(name: "bin_len", arg: 4, scope: !1233, file: !155, line: 98, type: !115)
!1244 = !DILocalVariable(name: "i", scope: !1233, file: !155, line: 100, type: !87)
!1245 = !DILocation(line: 105, column: 17, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1233, file: !155, line: 105, column: 9)
!1247 = !DILocation(line: 105, column: 33, scope: !1246)
!1248 = !DILocation(line: 105, column: 57, scope: !1246)
!1249 = !DILocation(line: 105, column: 47, scope: !1246)
!1250 = !DILocation(line: 105, column: 9, scope: !1233)
!1251 = !DILocation(line: 106, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !155, line: 105, column: 63)
!1253 = !DILocation(line: 108, column: 5, scope: !1233)
!1254 = !DILocation(line: 108, column: 14, scope: !1233)
!1255 = !DILocation(line: 109, column: 13, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1233, file: !155, line: 108, column: 25)
!1257 = !DILocation(line: 109, column: 20, scope: !1256)
!1258 = !DILocalVariable(name: "c", scope: !1233, file: !155, line: 103, type: !56)
!1259 = !DILocation(line: 110, column: 13, scope: !1256)
!1260 = !DILocation(line: 110, column: 20, scope: !1256)
!1261 = !DILocalVariable(name: "b", scope: !1233, file: !155, line: 102, type: !56)
!1262 = !DILocation(line: 111, column: 34, scope: !1256)
!1263 = !DILocation(line: 111, column: 45, scope: !1256)
!1264 = !DILocation(line: 111, column: 52, scope: !1256)
!1265 = !DILocation(line: 111, column: 58, scope: !1256)
!1266 = !DILocation(line: 111, column: 38, scope: !1256)
!1267 = !DILocation(line: 111, column: 13, scope: !1256)
!1268 = !DILocation(line: 111, column: 67, scope: !1256)
!1269 = !DILocation(line: 112, column: 34, scope: !1256)
!1270 = !DILocation(line: 112, column: 45, scope: !1256)
!1271 = !DILocation(line: 112, column: 52, scope: !1256)
!1272 = !DILocation(line: 112, column: 58, scope: !1256)
!1273 = !DILocation(line: 112, column: 38, scope: !1256)
!1274 = !DILocation(line: 112, column: 13, scope: !1256)
!1275 = !DILocation(line: 111, column: 72, scope: !1256)
!1276 = !DILocalVariable(name: "x", scope: !1233, file: !155, line: 101, type: !86)
!1277 = !DILocation(line: 113, column: 23, scope: !1256)
!1278 = !DILocation(line: 113, column: 15, scope: !1256)
!1279 = !DILocation(line: 113, column: 9, scope: !1256)
!1280 = !DILocation(line: 113, column: 21, scope: !1256)
!1281 = !DILocation(line: 114, column: 11, scope: !1256)
!1282 = !DILocation(line: 115, column: 28, scope: !1256)
!1283 = !DILocation(line: 115, column: 15, scope: !1256)
!1284 = !DILocation(line: 115, column: 20, scope: !1256)
!1285 = !DILocation(line: 115, column: 9, scope: !1256)
!1286 = !DILocation(line: 115, column: 26, scope: !1256)
!1287 = !DILocation(line: 116, column: 10, scope: !1256)
!1288 = distinct !{!1288, !1253, !1289, !236}
!1289 = !DILocation(line: 117, column: 5, scope: !1233)
!1290 = !DILocation(line: 118, column: 11, scope: !1233)
!1291 = !DILocation(line: 118, column: 5, scope: !1233)
!1292 = !DILocation(line: 118, column: 17, scope: !1233)
!1293 = !DILocation(line: 120, column: 5, scope: !1233)
!1294 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !155, file: !155, line: 124, type: !1295, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!56, !878, !115, !1297, !115, !1297, !1298, !1300}
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1301 = !DILocalVariable(name: "bin", arg: 1, scope: !1294, file: !155, line: 124, type: !878)
!1302 = !DILocation(line: 0, scope: !1294)
!1303 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !1294, file: !155, line: 124, type: !115)
!1304 = !DILocalVariable(name: "hex", arg: 3, scope: !1294, file: !155, line: 125, type: !1297)
!1305 = !DILocalVariable(name: "hex_len", arg: 4, scope: !1294, file: !155, line: 125, type: !115)
!1306 = !DILocalVariable(name: "ignore", arg: 5, scope: !1294, file: !155, line: 126, type: !1297)
!1307 = !DILocalVariable(name: "bin_len", arg: 6, scope: !1294, file: !155, line: 126, type: !1298)
!1308 = !DILocalVariable(name: "hex_end", arg: 7, scope: !1294, file: !155, line: 127, type: !1300)
!1309 = !DILocalVariable(name: "bin_pos", scope: !1294, file: !155, line: 129, type: !87)
!1310 = !DILocalVariable(name: "hex_pos", scope: !1294, file: !155, line: 130, type: !87)
!1311 = !DILocalVariable(name: "ret", scope: !1294, file: !155, line: 131, type: !56)
!1312 = !DILocalVariable(name: "c_acc", scope: !1294, file: !155, line: 133, type: !17)
!1313 = !DILocalVariable(name: "state", scope: !1294, file: !155, line: 137, type: !17)
!1314 = !DILocation(line: 139, column: 5, scope: !1294)
!1315 = !DILocation(line: 129, column: 19, scope: !1294)
!1316 = !DILocation(line: 139, column: 20, scope: !1294)
!1317 = !DILocation(line: 140, column: 29, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1294, file: !155, line: 139, column: 31)
!1319 = !DILocalVariable(name: "c", scope: !1294, file: !155, line: 132, type: !17)
!1320 = !DILocation(line: 141, column: 17, scope: !1318)
!1321 = !DILocation(line: 141, column: 19, scope: !1318)
!1322 = !DILocalVariable(name: "c_num", scope: !1294, file: !155, line: 135, type: !17)
!1323 = !DILocation(line: 142, column: 19, scope: !1318)
!1324 = !DILocation(line: 142, column: 25, scope: !1318)
!1325 = !DILocation(line: 142, column: 32, scope: !1318)
!1326 = !DILocation(line: 142, column: 18, scope: !1318)
!1327 = !DILocalVariable(name: "c_num0", scope: !1294, file: !155, line: 135, type: !17)
!1328 = !DILocation(line: 143, column: 20, scope: !1318)
!1329 = !DILocation(line: 143, column: 22, scope: !1318)
!1330 = !DILocation(line: 143, column: 30, scope: !1318)
!1331 = !DILocation(line: 143, column: 19, scope: !1318)
!1332 = !DILocalVariable(name: "c_alpha", scope: !1294, file: !155, line: 134, type: !17)
!1333 = !DILocation(line: 144, column: 22, scope: !1318)
!1334 = !DILocation(line: 144, column: 30, scope: !1318)
!1335 = !DILocation(line: 144, column: 40, scope: !1318)
!1336 = !DILocation(line: 144, column: 48, scope: !1318)
!1337 = !DILocation(line: 144, column: 37, scope: !1318)
!1338 = !DILocation(line: 144, column: 56, scope: !1318)
!1339 = !DILocation(line: 144, column: 20, scope: !1318)
!1340 = !DILocalVariable(name: "c_alpha0", scope: !1294, file: !155, line: 134, type: !17)
!1341 = !DILocation(line: 145, column: 14, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1318, file: !155, line: 145, column: 13)
!1343 = !DILocation(line: 145, column: 23, scope: !1342)
!1344 = !DILocation(line: 145, column: 21, scope: !1342)
!1345 = !DILocation(line: 145, column: 33, scope: !1342)
!1346 = !DILocation(line: 145, column: 13, scope: !1318)
!1347 = !DILocation(line: 146, column: 24, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !155, line: 146, column: 17)
!1349 = distinct !DILexicalBlock(scope: !1342, file: !155, line: 145, column: 40)
!1350 = !DILocation(line: 146, column: 32, scope: !1348)
!1351 = !DILocation(line: 146, column: 35, scope: !1348)
!1352 = !DILocation(line: 146, column: 41, scope: !1348)
!1353 = !DILocation(line: 146, column: 47, scope: !1348)
!1354 = !DILocation(line: 146, column: 65, scope: !1348)
!1355 = !DILocation(line: 146, column: 50, scope: !1348)
!1356 = !DILocation(line: 146, column: 68, scope: !1348)
!1357 = !DILocation(line: 146, column: 17, scope: !1349)
!1358 = !DILocation(line: 147, column: 24, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1348, file: !155, line: 146, column: 77)
!1360 = !DILocation(line: 148, column: 17, scope: !1359)
!1361 = distinct !{!1361, !1314, !1362, !236}
!1362 = !DILocation(line: 165, column: 5, scope: !1294)
!1363 = !DILocation(line: 150, column: 13, scope: !1349)
!1364 = !DILocation(line: 152, column: 18, scope: !1318)
!1365 = !DILocation(line: 152, column: 27, scope: !1318)
!1366 = !DILocation(line: 152, column: 25, scope: !1318)
!1367 = !DILocation(line: 152, column: 37, scope: !1318)
!1368 = !DILocation(line: 152, column: 48, scope: !1318)
!1369 = !DILocation(line: 152, column: 46, scope: !1318)
!1370 = !DILocation(line: 152, column: 34, scope: !1318)
!1371 = !DILocation(line: 152, column: 17, scope: !1318)
!1372 = !DILocalVariable(name: "c_val", scope: !1294, file: !155, line: 136, type: !17)
!1373 = !DILocation(line: 153, column: 21, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1318, file: !155, line: 153, column: 13)
!1375 = !DILocation(line: 153, column: 13, scope: !1318)
!1376 = !DILocation(line: 155, column: 13, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !155, line: 153, column: 36)
!1378 = !DILocation(line: 155, column: 19, scope: !1377)
!1379 = !DILocation(line: 156, column: 13, scope: !1377)
!1380 = !DILocation(line: 158, column: 13, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1318, file: !155, line: 158, column: 13)
!1382 = !DILocation(line: 158, column: 19, scope: !1381)
!1383 = !DILocation(line: 158, column: 13, scope: !1318)
!1384 = !DILocation(line: 159, column: 21, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !155, line: 158, column: 26)
!1386 = !DILocation(line: 159, column: 27, scope: !1385)
!1387 = !DILocation(line: 160, column: 9, scope: !1385)
!1388 = !DILocation(line: 161, column: 30, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1381, file: !155, line: 160, column: 16)
!1390 = !DILocation(line: 161, column: 38, scope: !1389)
!1391 = !DILocation(line: 161, column: 36, scope: !1389)
!1392 = !DILocation(line: 161, column: 24, scope: !1389)
!1393 = !DILocation(line: 161, column: 13, scope: !1389)
!1394 = !DILocation(line: 161, column: 28, scope: !1389)
!1395 = !DILocation(line: 163, column: 18, scope: !1318)
!1396 = !DILocation(line: 163, column: 17, scope: !1318)
!1397 = !DILocation(line: 164, column: 16, scope: !1318)
!1398 = !DILocation(line: 166, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1294, file: !155, line: 166, column: 9)
!1400 = !DILocation(line: 166, column: 15, scope: !1399)
!1401 = !DILocation(line: 166, column: 9, scope: !1294)
!1402 = !DILocation(line: 167, column: 16, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !155, line: 166, column: 22)
!1404 = !DILocation(line: 168, column: 5, scope: !1403)
!1405 = !DILocation(line: 169, column: 17, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1294, file: !155, line: 169, column: 9)
!1407 = !DILocation(line: 169, column: 9, scope: !1294)
!1408 = !DILocation(line: 170, column: 21, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1406, file: !155, line: 169, column: 26)
!1410 = !DILocation(line: 170, column: 18, scope: !1409)
!1411 = !DILocation(line: 171, column: 5, scope: !1409)
!1412 = !DILocation(line: 172, column: 17, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1294, file: !155, line: 172, column: 9)
!1414 = !DILocation(line: 172, column: 9, scope: !1294)
!1415 = !DILocation(line: 173, column: 18, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !155, line: 172, column: 26)
!1417 = !DILocation(line: 174, column: 5, scope: !1416)
!1418 = !DILocation(line: 175, column: 5, scope: !1294)
!1419 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !155, file: !155, line: 179, type: !118, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1420 = !DILocation(line: 196, column: 5, scope: !1419)
!1421 = !DILocation(line: 198, column: 5, scope: !1419)
!1422 = distinct !DISubprogram(name: "sodium_mlock", scope: !155, file: !155, line: 202, type: !1048, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1423 = !DILocalVariable(name: "addr", arg: 1, scope: !1422, file: !155, line: 202, type: !114)
!1424 = !DILocation(line: 0, scope: !1422)
!1425 = !DILocalVariable(name: "len", arg: 2, scope: !1422, file: !155, line: 202, type: !115)
!1426 = !DILocation(line: 212, column: 5, scope: !1422)
!1427 = !DILocation(line: 212, column: 11, scope: !1422)
!1428 = !DILocation(line: 213, column: 5, scope: !1422)
!1429 = distinct !DISubprogram(name: "sodium_munlock", scope: !155, file: !155, line: 218, type: !1048, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1430 = !DILocalVariable(name: "addr", arg: 1, scope: !1429, file: !155, line: 218, type: !114)
!1431 = !DILocation(line: 0, scope: !1429)
!1432 = !DILocalVariable(name: "len", arg: 2, scope: !1429, file: !155, line: 218, type: !115)
!1433 = !DILocation(line: 220, column: 5, scope: !1429)
!1434 = !DILocation(line: 229, column: 5, scope: !1429)
!1435 = !DILocation(line: 229, column: 11, scope: !1429)
!1436 = !DILocation(line: 230, column: 5, scope: !1429)
!1437 = distinct !DISubprogram(name: "sodium_malloc", scope: !155, file: !155, line: 402, type: !1438, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!41, !115}
!1440 = !DILocalVariable(name: "size", arg: 1, scope: !1437, file: !155, line: 402, type: !115)
!1441 = !DILocation(line: 0, scope: !1437)
!1442 = !DILocation(line: 406, column: 16, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1437, file: !155, line: 406, column: 9)
!1444 = !DILocalVariable(name: "ptr", scope: !1437, file: !155, line: 404, type: !41)
!1445 = !DILocation(line: 406, column: 38, scope: !1443)
!1446 = !DILocation(line: 406, column: 9, scope: !1437)
!1447 = !DILocation(line: 407, column: 9, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !155, line: 406, column: 47)
!1449 = !DILocation(line: 409, column: 5, scope: !1437)
!1450 = !DILocation(line: 411, column: 5, scope: !1437)
!1451 = !DILocation(line: 412, column: 1, scope: !1437)
!1452 = distinct !DISubprogram(name: "_sodium_malloc", scope: !155, file: !155, line: 353, type: !1438, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1453 = !DILocalVariable(name: "size", arg: 1, scope: !1452, file: !155, line: 353, type: !115)
!1454 = !DILocation(line: 0, scope: !1452)
!1455 = !DILocation(line: 355, column: 12, scope: !1452)
!1456 = !DILocation(line: 355, column: 5, scope: !1452)
!1457 = distinct !DISubprogram(name: "sodium_allocarray", scope: !155, file: !155, line: 415, type: !1458, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!41, !87, !87}
!1460 = !DILocalVariable(name: "count", arg: 1, scope: !1457, file: !155, line: 415, type: !87)
!1461 = !DILocation(line: 0, scope: !1457)
!1462 = !DILocalVariable(name: "size", arg: 2, scope: !1457, file: !155, line: 415, type: !87)
!1463 = !DILocation(line: 419, column: 15, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1457, file: !155, line: 419, column: 9)
!1465 = !DILocation(line: 419, column: 29, scope: !1464)
!1466 = !DILocation(line: 419, column: 58, scope: !1464)
!1467 = !DILocation(line: 419, column: 37, scope: !1464)
!1468 = !DILocation(line: 419, column: 9, scope: !1457)
!1469 = !DILocation(line: 420, column: 9, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1464, file: !155, line: 419, column: 67)
!1471 = !DILocation(line: 420, column: 15, scope: !1470)
!1472 = !DILocation(line: 421, column: 9, scope: !1470)
!1473 = !DILocation(line: 423, column: 24, scope: !1457)
!1474 = !DILocalVariable(name: "total_size", scope: !1457, file: !155, line: 417, type: !87)
!1475 = !DILocation(line: 425, column: 12, scope: !1457)
!1476 = !DILocation(line: 425, column: 5, scope: !1457)
!1477 = !DILocation(line: 426, column: 1, scope: !1457)
!1478 = distinct !DISubprogram(name: "sodium_free", scope: !155, file: !155, line: 430, type: !1479, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !41}
!1481 = !DILocalVariable(name: "ptr", arg: 1, scope: !1478, file: !155, line: 430, type: !41)
!1482 = !DILocation(line: 0, scope: !1478)
!1483 = !DILocation(line: 432, column: 5, scope: !1478)
!1484 = !DILocation(line: 433, column: 1, scope: !1478)
!1485 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !155, file: !155, line: 493, type: !1486, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!56, !41}
!1488 = !DILocalVariable(name: "ptr", arg: 1, scope: !1485, file: !155, line: 493, type: !41)
!1489 = !DILocation(line: 0, scope: !1485)
!1490 = !DILocation(line: 495, column: 12, scope: !1485)
!1491 = !DILocation(line: 495, column: 5, scope: !1485)
!1492 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !155, file: !155, line: 235, type: !1493, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!56, !41, !87}
!1495 = !DILocalVariable(name: "ptr", arg: 1, scope: !1492, file: !155, line: 235, type: !41)
!1496 = !DILocation(line: 0, scope: !1492)
!1497 = !DILocalVariable(name: "size", arg: 2, scope: !1492, file: !155, line: 235, type: !87)
!1498 = !DILocation(line: 243, column: 5, scope: !1492)
!1499 = !DILocation(line: 243, column: 11, scope: !1492)
!1500 = !DILocation(line: 244, column: 5, scope: !1492)
!1501 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !155, file: !155, line: 469, type: !1502, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!56, !41, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1505 = !DILocalVariable(name: "ptr", arg: 1, scope: !1501, file: !155, line: 469, type: !41)
!1506 = !DILocation(line: 0, scope: !1501)
!1507 = !DILocalVariable(name: "cb", arg: 2, scope: !1501, file: !155, line: 469, type: !1504)
!1508 = !DILocation(line: 473, column: 5, scope: !1501)
!1509 = !DILocation(line: 473, column: 11, scope: !1501)
!1510 = !DILocation(line: 474, column: 5, scope: !1501)
!1511 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !155, file: !155, line: 499, type: !1486, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1512 = !DILocalVariable(name: "ptr", arg: 1, scope: !1511, file: !155, line: 499, type: !41)
!1513 = !DILocation(line: 0, scope: !1511)
!1514 = !DILocation(line: 501, column: 12, scope: !1511)
!1515 = !DILocation(line: 501, column: 5, scope: !1511)
!1516 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !155, file: !155, line: 249, type: !1493, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1517 = !DILocalVariable(name: "ptr", arg: 1, scope: !1516, file: !155, line: 249, type: !41)
!1518 = !DILocation(line: 0, scope: !1516)
!1519 = !DILocalVariable(name: "size", arg: 2, scope: !1516, file: !155, line: 249, type: !87)
!1520 = !DILocation(line: 257, column: 5, scope: !1516)
!1521 = !DILocation(line: 257, column: 11, scope: !1516)
!1522 = !DILocation(line: 258, column: 5, scope: !1516)
!1523 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !155, file: !155, line: 505, type: !1486, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1524 = !DILocalVariable(name: "ptr", arg: 1, scope: !1523, file: !155, line: 505, type: !41)
!1525 = !DILocation(line: 0, scope: !1523)
!1526 = !DILocation(line: 507, column: 12, scope: !1523)
!1527 = !DILocation(line: 507, column: 5, scope: !1523)
!1528 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !155, file: !155, line: 263, type: !1493, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !154, retainedNodes: !4)
!1529 = !DILocalVariable(name: "ptr", arg: 1, scope: !1528, file: !155, line: 263, type: !41)
!1530 = !DILocation(line: 0, scope: !1528)
!1531 = !DILocalVariable(name: "size", arg: 2, scope: !1528, file: !155, line: 263, type: !87)
!1532 = !DILocation(line: 271, column: 5, scope: !1528)
!1533 = !DILocation(line: 271, column: 11, scope: !1528)
!1534 = !DILocation(line: 272, column: 5, scope: !1528)
!1535 = distinct !DISubprogram(name: "crypto_verify_16", scope: !163, file: !163, line: 3, type: !1536, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !162, retainedNodes: !4)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!56, !58, !58}
!1538 = !DILocalVariable(name: "x", arg: 1, scope: !1535, file: !163, line: 3, type: !58)
!1539 = !DILocation(line: 0, scope: !1535)
!1540 = !DILocalVariable(name: "y", arg: 2, scope: !1535, file: !163, line: 3, type: !58)
!1541 = !DILocalVariable(name: "differentbits", scope: !1535, file: !163, line: 5, type: !86)
!1542 = !DILocation(line: 7, column: 3, scope: !1535)
!1543 = !DILocation(line: 8, column: 3, scope: !1535)
!1544 = !DILocation(line: 9, column: 3, scope: !1535)
!1545 = !DILocation(line: 10, column: 3, scope: !1535)
!1546 = !DILocation(line: 11, column: 3, scope: !1535)
!1547 = !DILocation(line: 12, column: 3, scope: !1535)
!1548 = !DILocation(line: 13, column: 3, scope: !1535)
!1549 = !DILocation(line: 14, column: 3, scope: !1535)
!1550 = !DILocation(line: 15, column: 3, scope: !1535)
!1551 = !DILocation(line: 16, column: 3, scope: !1535)
!1552 = !DILocation(line: 17, column: 3, scope: !1535)
!1553 = !DILocation(line: 18, column: 3, scope: !1535)
!1554 = !DILocation(line: 19, column: 3, scope: !1535)
!1555 = !DILocation(line: 20, column: 3, scope: !1535)
!1556 = !DILocation(line: 21, column: 3, scope: !1535)
!1557 = !DILocation(line: 22, column: 3, scope: !1535)
!1558 = !DILocation(line: 23, column: 31, scope: !1535)
!1559 = !DILocation(line: 23, column: 36, scope: !1535)
!1560 = !DILocation(line: 23, column: 13, scope: !1535)
!1561 = !DILocation(line: 23, column: 43, scope: !1535)
!1562 = !DILocation(line: 23, column: 3, scope: !1535)
!1563 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_verify", scope: !165, file: !165, line: 6, type: !62, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !164, retainedNodes: !4)
!1564 = !DILocalVariable(name: "h", arg: 1, scope: !1563, file: !165, line: 6, type: !58)
!1565 = !DILocation(line: 0, scope: !1563)
!1566 = !DILocalVariable(name: "in", arg: 2, scope: !1563, file: !165, line: 7, type: !58)
!1567 = !DILocalVariable(name: "inlen", arg: 3, scope: !1563, file: !165, line: 8, type: !14)
!1568 = !DILocalVariable(name: "k", arg: 4, scope: !1563, file: !165, line: 9, type: !58)
!1569 = !DILocalVariable(name: "correct", scope: !1563, file: !165, line: 11, type: !37)
!1570 = !DILocation(line: 11, column: 19, scope: !1563)
!1571 = !DILocation(line: 13, column: 39, scope: !1563)
!1572 = !DILocation(line: 13, column: 5, scope: !1563)
!1573 = !DILocation(line: 14, column: 31, scope: !1563)
!1574 = !DILocation(line: 14, column: 12, scope: !1563)
!1575 = !DILocation(line: 14, column: 5, scope: !1563)
