; ModuleID = 'crypto_core_salsa20.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i64)*, i32 ()* }
%struct.SysRandom_ = type { i32, i32, i32 }
%struct.smack_value = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@implementation = internal global %struct.randombytes_implementation* @randombytes_sysrandom_implementation, align 8, !dbg !0
@.str = private unnamed_addr constant [20 x i8] c"buf_len <= SIZE_MAX\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"../libsodium/src/libsodium/randombytes/randombytes.c\00", align 1
@__PRETTY_FUNCTION__.randombytes = private unnamed_addr constant [65 x i8] c"void randombytes(unsigned char *const, const unsigned long long)\00", align 1
@randombytes_sysrandom_implementation = dso_local global %struct.randombytes_implementation { i8* ()* @randombytes_sysrandom_implementation_name, i32 ()* @randombytes_sysrandom, void ()* @randombytes_sysrandom_stir, i32 (i32)* null, void (i8*, i64)* @randombytes_sysrandom_buf, i32 ()* @randombytes_sysrandom_close }, align 8, !dbg !53
@stream = internal global %struct.SysRandom_ { i32 -1, i32 0, i32 0 }, align 4, !dbg !65
@.str.6 = private unnamed_addr constant [19 x i8] c"size > (size_t) 0U\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c\00", align 1
@__PRETTY_FUNCTION__.safe_read = private unnamed_addr constant [50 x i8] c"ssize_t safe_read(const int, void *const, size_t)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"chunk_size > (size_t) 0U\00", align 1
@__PRETTY_FUNCTION__.randombytes_linux_getrandom = private unnamed_addr constant [53 x i8] c"int randombytes_linux_getrandom(void *const, size_t)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"size <= 256U\00", align 1
@__PRETTY_FUNCTION__._randombytes_linux_getrandom = private unnamed_addr constant [60 x i8] c"int _randombytes_linux_getrandom(void *const, const size_t)\00", align 1
@randombytes_sysrandom_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16, !dbg !73
@.str.1.3 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sysrandom\00", align 1
@canary = internal global [16 x i8] zeroinitializer, align 16, !dbg !87

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_core_salsa20_outputbytes() #0 !dbg !112 {
  ret i64 64, !dbg !115
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_core_salsa20_inputbytes() #0 !dbg !116 {
  ret i64 16, !dbg !117
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_core_salsa20_keybytes() #0 !dbg !118 {
  ret i64 32, !dbg !119
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_core_salsa20_constbytes() #0 !dbg !120 {
  ret i64 16, !dbg !121
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_core_salsa20(i8* %0, i8* %1, i8* %2, i8* %3) #0 !dbg !122 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i8* %1, metadata !127, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i8* %2, metadata !128, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i8* %3, metadata !129, metadata !DIExpression()), !dbg !126
  %5 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !130
  %6 = call i32 @load_littleendian(i8* %5), !dbg !131
  call void @llvm.dbg.value(metadata i32 %6, metadata !132, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %6, metadata !133, metadata !DIExpression()), !dbg !126
  %7 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !134
  %8 = call i32 @load_littleendian(i8* %7), !dbg !135
  call void @llvm.dbg.value(metadata i32 %8, metadata !136, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %8, metadata !137, metadata !DIExpression()), !dbg !126
  %9 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !138
  %10 = call i32 @load_littleendian(i8* %9), !dbg !139
  call void @llvm.dbg.value(metadata i32 %10, metadata !140, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %10, metadata !141, metadata !DIExpression()), !dbg !126
  %11 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !142
  %12 = call i32 @load_littleendian(i8* %11), !dbg !143
  call void @llvm.dbg.value(metadata i32 %12, metadata !144, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %12, metadata !145, metadata !DIExpression()), !dbg !126
  %13 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !146
  %14 = call i32 @load_littleendian(i8* %13), !dbg !147
  call void @llvm.dbg.value(metadata i32 %14, metadata !148, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %14, metadata !149, metadata !DIExpression()), !dbg !126
  %15 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !150
  %16 = call i32 @load_littleendian(i8* %15), !dbg !151
  call void @llvm.dbg.value(metadata i32 %16, metadata !152, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %16, metadata !153, metadata !DIExpression()), !dbg !126
  %17 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !154
  %18 = call i32 @load_littleendian(i8* %17), !dbg !155
  call void @llvm.dbg.value(metadata i32 %18, metadata !156, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %18, metadata !157, metadata !DIExpression()), !dbg !126
  %19 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !158
  %20 = call i32 @load_littleendian(i8* %19), !dbg !159
  call void @llvm.dbg.value(metadata i32 %20, metadata !160, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %20, metadata !161, metadata !DIExpression()), !dbg !126
  %21 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !162
  %22 = call i32 @load_littleendian(i8* %21), !dbg !163
  call void @llvm.dbg.value(metadata i32 %22, metadata !164, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %22, metadata !165, metadata !DIExpression()), !dbg !126
  %23 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !166
  %24 = call i32 @load_littleendian(i8* %23), !dbg !167
  call void @llvm.dbg.value(metadata i32 %24, metadata !168, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %24, metadata !169, metadata !DIExpression()), !dbg !126
  %25 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !170
  %26 = call i32 @load_littleendian(i8* %25), !dbg !171
  call void @llvm.dbg.value(metadata i32 %26, metadata !172, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %26, metadata !173, metadata !DIExpression()), !dbg !126
  %27 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !174
  %28 = call i32 @load_littleendian(i8* %27), !dbg !175
  call void @llvm.dbg.value(metadata i32 %28, metadata !176, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %28, metadata !177, metadata !DIExpression()), !dbg !126
  %29 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !178
  %30 = call i32 @load_littleendian(i8* %29), !dbg !179
  call void @llvm.dbg.value(metadata i32 %30, metadata !180, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %30, metadata !181, metadata !DIExpression()), !dbg !126
  %31 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !182
  %32 = call i32 @load_littleendian(i8* %31), !dbg !183
  call void @llvm.dbg.value(metadata i32 %32, metadata !184, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %32, metadata !185, metadata !DIExpression()), !dbg !126
  %33 = getelementptr inbounds i8, i8* %2, i64 28, !dbg !186
  %34 = call i32 @load_littleendian(i8* %33), !dbg !187
  call void @llvm.dbg.value(metadata i32 %34, metadata !188, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %34, metadata !189, metadata !DIExpression()), !dbg !126
  %35 = getelementptr inbounds i8, i8* %3, i64 12, !dbg !190
  %36 = call i32 @load_littleendian(i8* %35), !dbg !191
  call void @llvm.dbg.value(metadata i32 %36, metadata !192, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %36, metadata !193, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 20, metadata !194, metadata !DIExpression()), !dbg !126
  br label %37, !dbg !195

37:                                               ; preds = %136, %4
  %.016 = phi i32 [ %30, %4 ], [ %126, %136 ], !dbg !126
  %.015 = phi i32 [ %28, %4 ], [ %114, %136 ], !dbg !126
  %.014 = phi i32 [ %26, %4 ], [ %123, %136 ], !dbg !126
  %.013 = phi i32 [ %24, %4 ], [ %120, %136 ], !dbg !126
  %.012 = phi i32 [ %22, %4 ], [ %117, %136 ], !dbg !126
  %.011 = phi i32 [ %20, %4 ], [ %105, %136 ], !dbg !126
  %.010 = phi i32 [ %18, %4 ], [ %102, %136 ], !dbg !126
  %.09 = phi i32 [ %16, %4 ], [ %111, %136 ], !dbg !126
  %.08 = phi i32 [ %14, %4 ], [ %108, %136 ], !dbg !126
  %.07 = phi i32 [ %12, %4 ], [ %96, %136 ], !dbg !126
  %.06 = phi i32 [ %10, %4 ], [ %93, %136 ], !dbg !126
  %.05 = phi i32 [ %8, %4 ], [ %90, %136 ], !dbg !126
  %.04 = phi i32 [ %6, %4 ], [ %99, %136 ], !dbg !126
  %.03 = phi i32 [ %32, %4 ], [ %129, %136 ], !dbg !126
  %.02 = phi i32 [ %34, %4 ], [ %132, %136 ], !dbg !126
  %.01 = phi i32 [ %36, %4 ], [ %135, %136 ], !dbg !126
  %.0 = phi i32 [ 20, %4 ], [ %137, %136 ], !dbg !197
  call void @llvm.dbg.value(metadata i32 %.0, metadata !194, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.01, metadata !192, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.02, metadata !188, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.03, metadata !184, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.04, metadata !132, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.05, metadata !136, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.06, metadata !140, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.07, metadata !144, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.08, metadata !148, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.09, metadata !152, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.010, metadata !156, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.011, metadata !160, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.012, metadata !164, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.013, metadata !168, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.014, metadata !172, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.015, metadata !176, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i32 %.016, metadata !180, metadata !DIExpression()), !dbg !126
  %38 = icmp sgt i32 %.0, 0, !dbg !198
  br i1 %38, label %39, label %138, !dbg !200

39:                                               ; preds = %37
  %40 = add i32 %.04, %.016, !dbg !201
  %41 = call i32 @rotate(i32 %40, i32 7), !dbg !203
  %42 = xor i32 %.08, %41, !dbg !204
  call void @llvm.dbg.value(metadata i32 %42, metadata !148, metadata !DIExpression()), !dbg !126
  %43 = add i32 %42, %.04, !dbg !205
  %44 = call i32 @rotate(i32 %43, i32 9), !dbg !206
  %45 = xor i32 %.012, %44, !dbg !207
  call void @llvm.dbg.value(metadata i32 %45, metadata !164, metadata !DIExpression()), !dbg !126
  %46 = add i32 %45, %42, !dbg !208
  %47 = call i32 @rotate(i32 %46, i32 13), !dbg !209
  %48 = xor i32 %.016, %47, !dbg !210
  call void @llvm.dbg.value(metadata i32 %48, metadata !180, metadata !DIExpression()), !dbg !126
  %49 = add i32 %48, %45, !dbg !211
  %50 = call i32 @rotate(i32 %49, i32 18), !dbg !212
  %51 = xor i32 %.04, %50, !dbg !213
  call void @llvm.dbg.value(metadata i32 %51, metadata !132, metadata !DIExpression()), !dbg !126
  %52 = add i32 %.09, %.05, !dbg !214
  %53 = call i32 @rotate(i32 %52, i32 7), !dbg !215
  %54 = xor i32 %.013, %53, !dbg !216
  call void @llvm.dbg.value(metadata i32 %54, metadata !168, metadata !DIExpression()), !dbg !126
  %55 = add i32 %54, %.09, !dbg !217
  %56 = call i32 @rotate(i32 %55, i32 9), !dbg !218
  %57 = xor i32 %.03, %56, !dbg !219
  call void @llvm.dbg.value(metadata i32 %57, metadata !184, metadata !DIExpression()), !dbg !126
  %58 = add i32 %57, %54, !dbg !220
  %59 = call i32 @rotate(i32 %58, i32 13), !dbg !221
  %60 = xor i32 %.05, %59, !dbg !222
  call void @llvm.dbg.value(metadata i32 %60, metadata !136, metadata !DIExpression()), !dbg !126
  %61 = add i32 %60, %57, !dbg !223
  %62 = call i32 @rotate(i32 %61, i32 18), !dbg !224
  %63 = xor i32 %.09, %62, !dbg !225
  call void @llvm.dbg.value(metadata i32 %63, metadata !152, metadata !DIExpression()), !dbg !126
  %64 = add i32 %.014, %.010, !dbg !226
  %65 = call i32 @rotate(i32 %64, i32 7), !dbg !227
  %66 = xor i32 %.02, %65, !dbg !228
  call void @llvm.dbg.value(metadata i32 %66, metadata !188, metadata !DIExpression()), !dbg !126
  %67 = add i32 %66, %.014, !dbg !229
  %68 = call i32 @rotate(i32 %67, i32 9), !dbg !230
  %69 = xor i32 %.06, %68, !dbg !231
  call void @llvm.dbg.value(metadata i32 %69, metadata !140, metadata !DIExpression()), !dbg !126
  %70 = add i32 %69, %66, !dbg !232
  %71 = call i32 @rotate(i32 %70, i32 13), !dbg !233
  %72 = xor i32 %.010, %71, !dbg !234
  call void @llvm.dbg.value(metadata i32 %72, metadata !156, metadata !DIExpression()), !dbg !126
  %73 = add i32 %72, %69, !dbg !235
  %74 = call i32 @rotate(i32 %73, i32 18), !dbg !236
  %75 = xor i32 %.014, %74, !dbg !237
  call void @llvm.dbg.value(metadata i32 %75, metadata !172, metadata !DIExpression()), !dbg !126
  %76 = add i32 %.01, %.015, !dbg !238
  %77 = call i32 @rotate(i32 %76, i32 7), !dbg !239
  %78 = xor i32 %.07, %77, !dbg !240
  call void @llvm.dbg.value(metadata i32 %78, metadata !144, metadata !DIExpression()), !dbg !126
  %79 = add i32 %78, %.01, !dbg !241
  %80 = call i32 @rotate(i32 %79, i32 9), !dbg !242
  %81 = xor i32 %.011, %80, !dbg !243
  call void @llvm.dbg.value(metadata i32 %81, metadata !160, metadata !DIExpression()), !dbg !126
  %82 = add i32 %81, %78, !dbg !244
  %83 = call i32 @rotate(i32 %82, i32 13), !dbg !245
  %84 = xor i32 %.015, %83, !dbg !246
  call void @llvm.dbg.value(metadata i32 %84, metadata !176, metadata !DIExpression()), !dbg !126
  %85 = add i32 %84, %81, !dbg !247
  %86 = call i32 @rotate(i32 %85, i32 18), !dbg !248
  %87 = xor i32 %.01, %86, !dbg !249
  call void @llvm.dbg.value(metadata i32 %87, metadata !192, metadata !DIExpression()), !dbg !126
  %88 = add i32 %51, %78, !dbg !250
  %89 = call i32 @rotate(i32 %88, i32 7), !dbg !251
  %90 = xor i32 %60, %89, !dbg !252
  call void @llvm.dbg.value(metadata i32 %90, metadata !136, metadata !DIExpression()), !dbg !126
  %91 = add i32 %90, %51, !dbg !253
  %92 = call i32 @rotate(i32 %91, i32 9), !dbg !254
  %93 = xor i32 %69, %92, !dbg !255
  call void @llvm.dbg.value(metadata i32 %93, metadata !140, metadata !DIExpression()), !dbg !126
  %94 = add i32 %93, %90, !dbg !256
  %95 = call i32 @rotate(i32 %94, i32 13), !dbg !257
  %96 = xor i32 %78, %95, !dbg !258
  call void @llvm.dbg.value(metadata i32 %96, metadata !144, metadata !DIExpression()), !dbg !126
  %97 = add i32 %96, %93, !dbg !259
  %98 = call i32 @rotate(i32 %97, i32 18), !dbg !260
  %99 = xor i32 %51, %98, !dbg !261
  call void @llvm.dbg.value(metadata i32 %99, metadata !132, metadata !DIExpression()), !dbg !126
  %100 = add i32 %63, %42, !dbg !262
  %101 = call i32 @rotate(i32 %100, i32 7), !dbg !263
  %102 = xor i32 %72, %101, !dbg !264
  call void @llvm.dbg.value(metadata i32 %102, metadata !156, metadata !DIExpression()), !dbg !126
  %103 = add i32 %102, %63, !dbg !265
  %104 = call i32 @rotate(i32 %103, i32 9), !dbg !266
  %105 = xor i32 %81, %104, !dbg !267
  call void @llvm.dbg.value(metadata i32 %105, metadata !160, metadata !DIExpression()), !dbg !126
  %106 = add i32 %105, %102, !dbg !268
  %107 = call i32 @rotate(i32 %106, i32 13), !dbg !269
  %108 = xor i32 %42, %107, !dbg !270
  call void @llvm.dbg.value(metadata i32 %108, metadata !148, metadata !DIExpression()), !dbg !126
  %109 = add i32 %108, %105, !dbg !271
  %110 = call i32 @rotate(i32 %109, i32 18), !dbg !272
  %111 = xor i32 %63, %110, !dbg !273
  call void @llvm.dbg.value(metadata i32 %111, metadata !152, metadata !DIExpression()), !dbg !126
  %112 = add i32 %75, %54, !dbg !274
  %113 = call i32 @rotate(i32 %112, i32 7), !dbg !275
  %114 = xor i32 %84, %113, !dbg !276
  call void @llvm.dbg.value(metadata i32 %114, metadata !176, metadata !DIExpression()), !dbg !126
  %115 = add i32 %114, %75, !dbg !277
  %116 = call i32 @rotate(i32 %115, i32 9), !dbg !278
  %117 = xor i32 %45, %116, !dbg !279
  call void @llvm.dbg.value(metadata i32 %117, metadata !164, metadata !DIExpression()), !dbg !126
  %118 = add i32 %117, %114, !dbg !280
  %119 = call i32 @rotate(i32 %118, i32 13), !dbg !281
  %120 = xor i32 %54, %119, !dbg !282
  call void @llvm.dbg.value(metadata i32 %120, metadata !168, metadata !DIExpression()), !dbg !126
  %121 = add i32 %120, %117, !dbg !283
  %122 = call i32 @rotate(i32 %121, i32 18), !dbg !284
  %123 = xor i32 %75, %122, !dbg !285
  call void @llvm.dbg.value(metadata i32 %123, metadata !172, metadata !DIExpression()), !dbg !126
  %124 = add i32 %87, %66, !dbg !286
  %125 = call i32 @rotate(i32 %124, i32 7), !dbg !287
  %126 = xor i32 %48, %125, !dbg !288
  call void @llvm.dbg.value(metadata i32 %126, metadata !180, metadata !DIExpression()), !dbg !126
  %127 = add i32 %126, %87, !dbg !289
  %128 = call i32 @rotate(i32 %127, i32 9), !dbg !290
  %129 = xor i32 %57, %128, !dbg !291
  call void @llvm.dbg.value(metadata i32 %129, metadata !184, metadata !DIExpression()), !dbg !126
  %130 = add i32 %129, %126, !dbg !292
  %131 = call i32 @rotate(i32 %130, i32 13), !dbg !293
  %132 = xor i32 %66, %131, !dbg !294
  call void @llvm.dbg.value(metadata i32 %132, metadata !188, metadata !DIExpression()), !dbg !126
  %133 = add i32 %132, %129, !dbg !295
  %134 = call i32 @rotate(i32 %133, i32 18), !dbg !296
  %135 = xor i32 %87, %134, !dbg !297
  call void @llvm.dbg.value(metadata i32 %135, metadata !192, metadata !DIExpression()), !dbg !126
  br label %136, !dbg !298

136:                                              ; preds = %39
  %137 = sub nsw i32 %.0, 2, !dbg !299
  call void @llvm.dbg.value(metadata i32 %137, metadata !194, metadata !DIExpression()), !dbg !126
  br label %37, !dbg !300, !llvm.loop !301

138:                                              ; preds = %37
  %139 = add i32 %.04, %6, !dbg !304
  call void @llvm.dbg.value(metadata i32 %139, metadata !132, metadata !DIExpression()), !dbg !126
  %140 = add i32 %.05, %8, !dbg !305
  call void @llvm.dbg.value(metadata i32 %140, metadata !136, metadata !DIExpression()), !dbg !126
  %141 = add i32 %.06, %10, !dbg !306
  call void @llvm.dbg.value(metadata i32 %141, metadata !140, metadata !DIExpression()), !dbg !126
  %142 = add i32 %.07, %12, !dbg !307
  call void @llvm.dbg.value(metadata i32 %142, metadata !144, metadata !DIExpression()), !dbg !126
  %143 = add i32 %.08, %14, !dbg !308
  call void @llvm.dbg.value(metadata i32 %143, metadata !148, metadata !DIExpression()), !dbg !126
  %144 = add i32 %.09, %16, !dbg !309
  call void @llvm.dbg.value(metadata i32 %144, metadata !152, metadata !DIExpression()), !dbg !126
  %145 = add i32 %.010, %18, !dbg !310
  call void @llvm.dbg.value(metadata i32 %145, metadata !156, metadata !DIExpression()), !dbg !126
  %146 = add i32 %.011, %20, !dbg !311
  call void @llvm.dbg.value(metadata i32 %146, metadata !160, metadata !DIExpression()), !dbg !126
  %147 = add i32 %.012, %22, !dbg !312
  call void @llvm.dbg.value(metadata i32 %147, metadata !164, metadata !DIExpression()), !dbg !126
  %148 = add i32 %.013, %24, !dbg !313
  call void @llvm.dbg.value(metadata i32 %148, metadata !168, metadata !DIExpression()), !dbg !126
  %149 = add i32 %.014, %26, !dbg !314
  call void @llvm.dbg.value(metadata i32 %149, metadata !172, metadata !DIExpression()), !dbg !126
  %150 = add i32 %.015, %28, !dbg !315
  call void @llvm.dbg.value(metadata i32 %150, metadata !176, metadata !DIExpression()), !dbg !126
  %151 = add i32 %.016, %30, !dbg !316
  call void @llvm.dbg.value(metadata i32 %151, metadata !180, metadata !DIExpression()), !dbg !126
  %152 = add i32 %.03, %32, !dbg !317
  call void @llvm.dbg.value(metadata i32 %152, metadata !184, metadata !DIExpression()), !dbg !126
  %153 = add i32 %.02, %34, !dbg !318
  call void @llvm.dbg.value(metadata i32 %153, metadata !188, metadata !DIExpression()), !dbg !126
  %154 = add i32 %.01, %36, !dbg !319
  call void @llvm.dbg.value(metadata i32 %154, metadata !192, metadata !DIExpression()), !dbg !126
  %155 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !320
  call void @store_littleendian(i8* %155, i32 %139), !dbg !321
  %156 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !322
  call void @store_littleendian(i8* %156, i32 %140), !dbg !323
  %157 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !324
  call void @store_littleendian(i8* %157, i32 %141), !dbg !325
  %158 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !326
  call void @store_littleendian(i8* %158, i32 %142), !dbg !327
  %159 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !328
  call void @store_littleendian(i8* %159, i32 %143), !dbg !329
  %160 = getelementptr inbounds i8, i8* %0, i64 20, !dbg !330
  call void @store_littleendian(i8* %160, i32 %144), !dbg !331
  %161 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !332
  call void @store_littleendian(i8* %161, i32 %145), !dbg !333
  %162 = getelementptr inbounds i8, i8* %0, i64 28, !dbg !334
  call void @store_littleendian(i8* %162, i32 %146), !dbg !335
  %163 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !336
  call void @store_littleendian(i8* %163, i32 %147), !dbg !337
  %164 = getelementptr inbounds i8, i8* %0, i64 36, !dbg !338
  call void @store_littleendian(i8* %164, i32 %148), !dbg !339
  %165 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !340
  call void @store_littleendian(i8* %165, i32 %149), !dbg !341
  %166 = getelementptr inbounds i8, i8* %0, i64 44, !dbg !342
  call void @store_littleendian(i8* %166, i32 %150), !dbg !343
  %167 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !344
  call void @store_littleendian(i8* %167, i32 %151), !dbg !345
  %168 = getelementptr inbounds i8, i8* %0, i64 52, !dbg !346
  call void @store_littleendian(i8* %168, i32 %152), !dbg !347
  %169 = getelementptr inbounds i8, i8* %0, i64 56, !dbg !348
  call void @store_littleendian(i8* %169, i32 %153), !dbg !349
  %170 = getelementptr inbounds i8, i8* %0, i64 60, !dbg !350
  call void @store_littleendian(i8* %170, i32 %154), !dbg !351
  ret i32 0, !dbg !352
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @load_littleendian(i8* %0) #0 !dbg !353 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !356, metadata !DIExpression()), !dbg !357
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !358
  %3 = load i8, i8* %2, align 1, !dbg !358
  %4 = zext i8 %3 to i32, !dbg !359
  %5 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !360
  %6 = load i8, i8* %5, align 1, !dbg !360
  %7 = zext i8 %6 to i32, !dbg !361
  %8 = shl i32 %7, 8, !dbg !362
  %9 = or i32 %4, %8, !dbg !363
  %10 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !364
  %11 = load i8, i8* %10, align 1, !dbg !364
  %12 = zext i8 %11 to i32, !dbg !365
  %13 = shl i32 %12, 16, !dbg !366
  %14 = or i32 %9, %13, !dbg !367
  %15 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !368
  %16 = load i8, i8* %15, align 1, !dbg !368
  %17 = zext i8 %16 to i32, !dbg !369
  %18 = shl i32 %17, 24, !dbg !370
  %19 = or i32 %14, %18, !dbg !371
  ret i32 %19, !dbg !372
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotate(i32 %0, i32 %1) #0 !dbg !373 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.value(metadata i32 %1, metadata !378, metadata !DIExpression()), !dbg !377
  %3 = shl i32 %0, %1, !dbg !379
  %4 = sub nsw i32 32, %1, !dbg !380
  %5 = lshr i32 %0, %4, !dbg !381
  %6 = or i32 %3, %5, !dbg !382
  ret i32 %6, !dbg !383
}

; Function Attrs: noinline nounwind uwtable
define internal void @store_littleendian(i8* %0, i32 %1) #0 !dbg !384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i32 %1, metadata !389, metadata !DIExpression()), !dbg !388
  %3 = trunc i32 %1 to i8, !dbg !390
  %4 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !391
  store i8 %3, i8* %4, align 1, !dbg !392
  %5 = lshr i32 %1, 8, !dbg !393
  call void @llvm.dbg.value(metadata i32 %5, metadata !389, metadata !DIExpression()), !dbg !388
  %6 = trunc i32 %5 to i8, !dbg !394
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !395
  store i8 %6, i8* %7, align 1, !dbg !396
  %8 = lshr i32 %5, 8, !dbg !397
  call void @llvm.dbg.value(metadata i32 %8, metadata !389, metadata !DIExpression()), !dbg !388
  %9 = trunc i32 %8 to i8, !dbg !398
  %10 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !399
  store i8 %9, i8* %10, align 1, !dbg !400
  %11 = lshr i32 %8, 8, !dbg !401
  call void @llvm.dbg.value(metadata i32 %11, metadata !389, metadata !DIExpression()), !dbg !388
  %12 = trunc i32 %11 to i8, !dbg !402
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !403
  store i8 %12, i8* %13, align 1, !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_core_salsa20_wrapper(i8* %0, i8* %1, i8* %2, i8* %3) #0 !dbg !406 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i8* %1, metadata !409, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i8* %2, metadata !410, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i8* %3, metadata !411, metadata !DIExpression()), !dbg !408
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !412
  call void @public_in(%struct.smack_value* %5), !dbg !413
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !414
  call void @public_in(%struct.smack_value* %6), !dbg !415
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !416
  call void @public_in(%struct.smack_value* %7), !dbg !417
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !418
  call void @public_in(%struct.smack_value* %8), !dbg !419
  %9 = call i32 @crypto_core_salsa20(i8* %0, i8* %1, i8* %2, i8* %3), !dbg !420
  ret i32 %9, !dbg !421
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_core_salsa20_wrapper_t() #0 !dbg !422 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !423, metadata !DIExpression()), !dbg !424
  %5 = call zeroext i8 (...) @gout(), !dbg !425
  store i8 %5, i8* %1, align 1, !dbg !424
  call void @llvm.dbg.declare(metadata i8* %2, metadata !426, metadata !DIExpression()), !dbg !427
  %6 = call zeroext i8 (...) @gin(), !dbg !428
  store i8 %6, i8* %2, align 1, !dbg !427
  call void @llvm.dbg.declare(metadata i8* %3, metadata !429, metadata !DIExpression()), !dbg !430
  %7 = call zeroext i8 (...) @gk(), !dbg !431
  store i8 %7, i8* %3, align 1, !dbg !430
  call void @llvm.dbg.declare(metadata i8* %4, metadata !432, metadata !DIExpression()), !dbg !433
  %8 = call zeroext i8 (...) @gc(), !dbg !434
  store i8 %8, i8* %4, align 1, !dbg !433
  call void @llvm.dbg.value(metadata i8* %1, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i8* %2, metadata !437, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i8* %3, metadata !438, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata i8* %4, metadata !439, metadata !DIExpression()), !dbg !436
  %9 = call i32 @crypto_core_salsa20(i8* %1, i8* %2, i8* %3, i8* %4), !dbg !440
  ret void, !dbg !441
}

declare dso_local zeroext i8 @gout(...) #2

declare dso_local zeroext i8 @gin(...) #2

declare dso_local zeroext i8 @gk(...) #2

declare dso_local zeroext i8 @gc(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !442 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !446, metadata !DIExpression()), !dbg !447
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation, align 8, !dbg !448
  ret i32 0, !dbg !449
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !450 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !451
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !452
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !452
  %4 = call i8* %3(), !dbg !451
  ret i8* %4, !dbg !453
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !454 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !455
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !456
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !456
  %4 = call i32 %3(), !dbg !455
  ret i32 %4, !dbg !457
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !458 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !459
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !461
  br i1 %2, label %3, label %12, !dbg !462

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !463
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !464
  %6 = load void ()*, void ()** %5, align 8, !dbg !464
  %7 = icmp ne void ()* %6, null, !dbg !465
  br i1 %7, label %8, label %12, !dbg !466

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !467
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !469
  %11 = load void ()*, void ()** %10, align 8, !dbg !469
  call void %11(), !dbg !467
  br label %12, !dbg !470

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !471
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !472 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !473, metadata !DIExpression()), !dbg !474
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !475
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !477
  br i1 %3, label %4, label %14, !dbg !478

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !479
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !480
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !480
  %8 = icmp ne i32 (i32)* %7, null, !dbg !481
  br i1 %8, label %9, label %14, !dbg !482

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !483
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !485
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !485
  %13 = call i32 %12(i32 %0), !dbg !483
  br label %26, !dbg !486

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !487
  br i1 %15, label %16, label %17, !dbg !489

16:                                               ; preds = %14
  br label %26, !dbg !490

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !492
  %19 = urem i32 %18, %0, !dbg !493
  call void @llvm.dbg.value(metadata i32 %19, metadata !494, metadata !DIExpression()), !dbg !474
  br label %20, !dbg !495

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !496
  call void @llvm.dbg.value(metadata i32 %21, metadata !498, metadata !DIExpression()), !dbg !474
  br label %22, !dbg !499

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !500
  br i1 %23, label %20, label %24, !dbg !499, !llvm.loop !501

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !503
  br label %26, !dbg !504

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !474
  ret i32 %.0, !dbg !505
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !506 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !507, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i64 %1, metadata !509, metadata !DIExpression()), !dbg !508
  %3 = icmp ugt i64 %1, 0, !dbg !510
  br i1 %3, label %4, label %8, !dbg !512

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !513
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !515
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !515
  call void %7(i8* %0, i64 %1), !dbg !513
  br label %8, !dbg !516

8:                                                ; preds = %4, %2
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !518 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !519
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !521
  br i1 %2, label %3, label %13, !dbg !522

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !523
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !524
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !524
  %7 = icmp ne i32 ()* %6, null, !dbg !525
  br i1 %7, label %8, label %13, !dbg !526

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !527
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !529
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !529
  %12 = call i32 %11(), !dbg !527
  br label %14, !dbg !530

13:                                               ; preds = %3, %0
  br label %14, !dbg !531

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !532
  ret i32 %.0, !dbg !533
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !534 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !540, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i64 %1, metadata !542, metadata !DIExpression()), !dbg !541
  %3 = icmp ule i64 %1, -1, !dbg !543
  br i1 %3, label %4, label %5, !dbg !546

4:                                                ; preds = %2
  br label %9, !dbg !546

5:                                                ; preds = %2
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* @.str, i64 0, i64 0
  %7 = getelementptr inbounds [53 x i8], [53 x i8]* @.str.1, i64 0, i64 0
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !543
  unreachable, !dbg !543

9:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !547
  ret void, !dbg !548
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !549 {
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.7, i64 0, i64 0
  ret i8* %1, !dbg !550
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !551 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !552, metadata !DIExpression()), !dbg !553
  %2 = bitcast i32* %1 to i8*, !dbg !554
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !555
  %3 = load i32, i32* %1, align 4, !dbg !556
  ret i32 %3, !dbg !557
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !558 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  %2 = load i32, i32* %1, align 4, !dbg !559
  %3 = icmp eq i32 %2, 0, !dbg !561
  br i1 %3, label %4, label %6, !dbg !562

4:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !563
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  store i32 1, i32* %5, align 4, !dbg !565
  br label %6, !dbg !566

6:                                                ; preds = %4, %0
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !568 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !569, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i64 %1, metadata !571, metadata !DIExpression()), !dbg !570
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !572
  %3 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  %4 = load i32, i32* %3, align 4, !dbg !573
  %5 = icmp ne i32 %4, 0, !dbg !575
  br i1 %5, label %6, label %11, !dbg !576

6:                                                ; preds = %2
  %7 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !577
  %8 = icmp ne i32 %7, 0, !dbg !580
  br i1 %8, label %9, label %10, !dbg !581

9:                                                ; preds = %6
  call void @abort() #8, !dbg !582
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  br label %21, !dbg !584

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %13 = load i32, i32* %12, align 4, !dbg !585
  %14 = icmp eq i32 %13, -1, !dbg !587
  br i1 %14, label %20, label %15, !dbg !588

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %17 = load i32, i32* %16, align 4, !dbg !589
  %18 = call i64 @safe_read(i32 %17, i8* %0, i64 %1), !dbg !590
  %19 = icmp ne i64 %18, %1, !dbg !591
  br i1 %19, label %20, label %21, !dbg !592

20:                                               ; preds = %15, %11
  call void @abort() #8, !dbg !593
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %15, %10
  ret void, !dbg !595

UnifiedUnreachableBlock:                          ; preds = %20, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !596 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !597, metadata !DIExpression()), !dbg !598
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %2 = load i32, i32* %1, align 4, !dbg !599
  %3 = icmp ne i32 %2, -1, !dbg !601
  br i1 %3, label %4, label %12, !dbg !602

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  %6 = load i32, i32* %5, align 4, !dbg !603
  %7 = call i32 @close(i32 %6), !dbg !604
  %8 = icmp eq i32 %7, 0, !dbg !605
  br i1 %8, label %9, label %12, !dbg !606

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  store i32 -1, i32* %10, align 4, !dbg !607
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  store i32 0, i32* %11, align 4, !dbg !609
  call void @llvm.dbg.value(metadata i32 0, metadata !597, metadata !DIExpression()), !dbg !598
  br label %12, !dbg !610

12:                                               ; preds = %9, %4, %0
  %.0 = phi i32 [ 0, %9 ], [ -1, %4 ], [ -1, %0 ], !dbg !598
  call void @llvm.dbg.value(metadata i32 %.0, metadata !597, metadata !DIExpression()), !dbg !598
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  %14 = load i32, i32* %13, align 4, !dbg !611
  %15 = icmp ne i32 %14, 0, !dbg !613
  br i1 %15, label %16, label %17, !dbg !614

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !597, metadata !DIExpression()), !dbg !598
  br label %17, !dbg !615

17:                                               ; preds = %16, %12
  %.1 = phi i32 [ 0, %16 ], [ %.0, %12 ], !dbg !598
  call void @llvm.dbg.value(metadata i32 %.1, metadata !597, metadata !DIExpression()), !dbg !598
  ret i32 %.1, !dbg !617
}

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !618 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1
  %2 = load i32, i32* %1, align 4, !dbg !619
  %3 = icmp eq i32 %2, 0, !dbg !621
  br i1 %3, label %4, label %5, !dbg !622

4:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !623
  br label %5, !dbg !625

5:                                                ; preds = %4, %0
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !627 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !630, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i64 %1, metadata !632, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i8* %0, metadata !633, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i64 256, metadata !634, metadata !DIExpression()), !dbg !631
  br label %3, !dbg !635

3:                                                ; preds = %20, %2
  %.03 = phi i8* [ %0, %2 ], [ %19, %20 ], !dbg !631
  %.02 = phi i64 [ %1, %2 ], [ %18, %20 ]
  %.01 = phi i64 [ 256, %2 ], [ %.1, %20 ], !dbg !631
  call void @llvm.dbg.value(metadata i64 %.01, metadata !634, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i64 %.02, metadata !632, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata i8* %.03, metadata !633, metadata !DIExpression()), !dbg !631
  %4 = icmp ult i64 %.02, %.01, !dbg !636
  br i1 %4, label %5, label %13, !dbg !639

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !634, metadata !DIExpression()), !dbg !631
  %6 = icmp ugt i64 %.02, 0, !dbg !640
  br i1 %6, label %7, label %8, !dbg !644

7:                                                ; preds = %5
  br label %12, !dbg !644

8:                                                ; preds = %5
  %9 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.3, i64 0, i64 0
  %10 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %11 = getelementptr inbounds [53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0
  call void @__assert_fail(i8* %9, i8* %10, i32 159, i8* %11) #8, !dbg !640
  unreachable, !dbg !640

12:                                               ; preds = %7
  br label %13, !dbg !645

13:                                               ; preds = %12, %3
  %.1 = phi i64 [ %.02, %12 ], [ %.01, %3 ], !dbg !631
  call void @llvm.dbg.value(metadata i64 %.1, metadata !634, metadata !DIExpression()), !dbg !631
  %14 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !646
  %15 = icmp ne i32 %14, 0, !dbg !648
  br i1 %15, label %16, label %17, !dbg !649

16:                                               ; preds = %13
  br label %23, !dbg !650

17:                                               ; preds = %13
  %18 = sub i64 %.02, %.1, !dbg !652
  call void @llvm.dbg.value(metadata i64 %18, metadata !632, metadata !DIExpression()), !dbg !631
  %19 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !653
  call void @llvm.dbg.value(metadata i8* %19, metadata !633, metadata !DIExpression()), !dbg !631
  br label %20, !dbg !654

20:                                               ; preds = %17
  %21 = icmp ugt i64 %18, 0, !dbg !655
  br i1 %21, label %3, label %22, !dbg !654, !llvm.loop !656

22:                                               ; preds = %20
  br label %23, !dbg !658

23:                                               ; preds = %22, %16
  %.0 = phi i32 [ -1, %16 ], [ 0, %22 ], !dbg !631
  ret i32 %.0, !dbg !659
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !660 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !664, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i8* %1, metadata !666, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64 %2, metadata !667, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i8* %1, metadata !668, metadata !DIExpression()), !dbg !665
  %4 = icmp ugt i64 %2, 0, !dbg !669
  br i1 %4, label %5, label %6, !dbg !672

5:                                                ; preds = %3
  br label %10, !dbg !672

6:                                                ; preds = %3
  %7 = getelementptr inbounds [19 x i8], [19 x i8]* @.str.6, i64 0, i64 0
  %8 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0
  call void @__assert_fail(i8* %7, i8* %8, i32 82, i8* %9) #8, !dbg !669
  unreachable, !dbg !669

10:                                               ; preds = %5
  br label %11, !dbg !673

11:                                               ; preds = %37, %10
  %.02 = phi i64 [ %2, %10 ], [ %35, %37 ]
  %.01 = phi i8* [ %1, %10 ], [ %36, %37 ], !dbg !665
  call void @llvm.dbg.value(metadata i8* %.01, metadata !668, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64 %.02, metadata !667, metadata !DIExpression()), !dbg !665
  br label %12, !dbg !674

12:                                               ; preds = %27, %11
  %13 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !676
  call void @llvm.dbg.value(metadata i64 %13, metadata !677, metadata !DIExpression()), !dbg !665
  %14 = icmp slt i64 %13, 0, !dbg !678
  br i1 %14, label %15, label %25, !dbg !679

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #9, !dbg !680
  %17 = load i32, i32* %16, align 4, !dbg !680
  %18 = icmp eq i32 %17, 4, !dbg !681
  br i1 %18, label %23, label %19, !dbg !682

19:                                               ; preds = %15
  %20 = call i32* @__errno_location() #9, !dbg !683
  %21 = load i32, i32* %20, align 4, !dbg !683
  %22 = icmp eq i32 %21, 11, !dbg !684
  br label %23, !dbg !682

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi i1 [ false, %12 ], [ %24, %23 ], !dbg !685
  br i1 %26, label %27, label %28, !dbg !674

27:                                               ; preds = %25
  br label %12, !dbg !674, !llvm.loop !686

28:                                               ; preds = %25
  %29 = icmp slt i64 %13, 0, !dbg !688
  br i1 %29, label %30, label %31, !dbg !690

30:                                               ; preds = %28
  br label %43, !dbg !691

31:                                               ; preds = %28
  %32 = icmp eq i64 %13, 0, !dbg !693
  br i1 %32, label %33, label %34, !dbg !695

33:                                               ; preds = %31
  br label %39, !dbg !696

34:                                               ; preds = %31
  %35 = sub i64 %.02, %13, !dbg !698
  call void @llvm.dbg.value(metadata i64 %35, metadata !667, metadata !DIExpression()), !dbg !665
  %36 = getelementptr inbounds i8, i8* %.01, i64 %13, !dbg !699
  call void @llvm.dbg.value(metadata i8* %36, metadata !668, metadata !DIExpression()), !dbg !665
  br label %37, !dbg !700

37:                                               ; preds = %34
  %38 = icmp ugt i64 %35, 0, !dbg !701
  br i1 %38, label %11, label %39, !dbg !700, !llvm.loop !702

39:                                               ; preds = %37, %33
  %.1 = phi i8* [ %.01, %33 ], [ %36, %37 ], !dbg !665
  call void @llvm.dbg.value(metadata i8* %.1, metadata !668, metadata !DIExpression()), !dbg !665
  %40 = ptrtoint i8* %.1 to i64, !dbg !704
  %41 = ptrtoint i8* %1 to i64, !dbg !704
  %42 = sub i64 %40, %41, !dbg !704
  br label %43, !dbg !705

43:                                               ; preds = %39, %30
  %.0 = phi i64 [ %13, %30 ], [ %42, %39 ], !dbg !665
  ret i64 %.0, !dbg !706
}

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !707 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !710, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.value(metadata i64 %1, metadata !712, metadata !DIExpression()), !dbg !711
  %3 = icmp ule i64 %1, 256, !dbg !713
  br i1 %3, label %4, label %5, !dbg !716

4:                                                ; preds = %2
  br label %9, !dbg !716

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.5, i64 0, i64 0
  %7 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0
  %8 = getelementptr inbounds [60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !713
  unreachable, !dbg !713

9:                                                ; preds = %4
  br label %10, !dbg !717

10:                                               ; preds = %26, %9
  %11 = trunc i64 %1 to i32, !dbg !718
  %12 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %11, i32 0) #10, !dbg !720
  %13 = trunc i64 %12 to i32, !dbg !720
  call void @llvm.dbg.value(metadata i32 %13, metadata !721, metadata !DIExpression()), !dbg !711
  br label %14, !dbg !722

14:                                               ; preds = %10
  %15 = icmp slt i32 %13, 0, !dbg !723
  br i1 %15, label %16, label %26, !dbg !724

16:                                               ; preds = %14
  %17 = call i32* @__errno_location() #9, !dbg !725
  %18 = load i32, i32* %17, align 4, !dbg !725
  %19 = icmp eq i32 %18, 4, !dbg !726
  br i1 %19, label %24, label %20, !dbg !727

20:                                               ; preds = %16
  %21 = call i32* @__errno_location() #9, !dbg !728
  %22 = load i32, i32* %21, align 4, !dbg !728
  %23 = icmp eq i32 %22, 11, !dbg !729
  br label %24, !dbg !727

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i1 [ false, %14 ], [ %25, %24 ], !dbg !711
  br i1 %27, label %10, label %28, !dbg !722, !llvm.loop !730

28:                                               ; preds = %26
  %29 = trunc i64 %1 to i32, !dbg !732
  %30 = icmp eq i32 %13, %29, !dbg !733
  %31 = zext i1 %30 to i32, !dbg !733
  %32 = sub nsw i32 %31, 1, !dbg !734
  ret i32 %32, !dbg !735
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #5

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !736 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32* @__errno_location() #9, !dbg !737
  %3 = load i32, i32* %2, align 4, !dbg !737
  call void @llvm.dbg.value(metadata i32 %3, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !740, metadata !DIExpression()), !dbg !742
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !743
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !745
  %6 = icmp eq i32 %5, 0, !dbg !746
  br i1 %6, label %7, label %10, !dbg !747

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  store i32 1, i32* %8, align 4, !dbg !748
  %9 = call i32* @__errno_location() #9, !dbg !750
  store i32 %3, i32* %9, align 4, !dbg !751
  br label %18, !dbg !752

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2
  store i32 0, i32* %11, align 4, !dbg !753
  %12 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !754
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0
  store i32 %12, i32* %13, align 4, !dbg !756
  %14 = icmp eq i32 %12, -1, !dbg !757
  br i1 %14, label %15, label %16, !dbg !758

15:                                               ; preds = %10
  call void @abort() #8, !dbg !759
  unreachable, !dbg !759

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #9, !dbg !761
  store i32 %3, i32* %17, align 4, !dbg !762
  br label %18, !dbg !763

18:                                               ; preds = %16, %7
  ret void, !dbg !763
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !75 {
  %1 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !764, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !801, metadata !DIExpression()), !dbg !803
  %2 = getelementptr inbounds [3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0
  br label %3, !dbg !804

3:                                                ; preds = %29, %0
  %.01 = phi i8** [ %2, %0 ], [ %.1, %29 ], !dbg !803
  call void @llvm.dbg.value(metadata i8** %.01, metadata !801, metadata !DIExpression()), !dbg !803
  %4 = load i8*, i8** %.01, align 8, !dbg !805
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 0), !dbg !807
  call void @llvm.dbg.value(metadata i32 %5, metadata !808, metadata !DIExpression()), !dbg !803
  %6 = icmp ne i32 %5, -1, !dbg !809
  br i1 %6, label %7, label %21, !dbg !811

7:                                                ; preds = %3
  %8 = call i32 @fstat(i32 %5, %struct.stat* %1) #10, !dbg !812
  %9 = icmp eq i32 %8, 0, !dbg !815
  br i1 %9, label %10, label %19, !dbg !816

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !817
  %12 = load i32, i32* %11, align 8, !dbg !817
  %13 = and i32 %12, 61440, !dbg !817
  %14 = icmp eq i32 %13, 8192, !dbg !817
  br i1 %14, label %15, label %19, !dbg !818

15:                                               ; preds = %10
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 1), !dbg !819
  %17 = or i32 %16, 1, !dbg !821
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 2, i32 %17), !dbg !822
  br label %34, !dbg !823

19:                                               ; preds = %10, %7
  %20 = call i32 @close(i32 %5), !dbg !824
  br label %27, !dbg !825

21:                                               ; preds = %3
  %22 = call i32* @__errno_location() #9, !dbg !826
  %23 = load i32, i32* %22, align 4, !dbg !826
  %24 = icmp eq i32 %23, 4, !dbg !828
  br i1 %24, label %25, label %26, !dbg !829

25:                                               ; preds = %21
  br label %29, !dbg !830

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !832
  call void @llvm.dbg.value(metadata i8** %28, metadata !801, metadata !DIExpression()), !dbg !803
  br label %29, !dbg !833

29:                                               ; preds = %27, %25
  %.1 = phi i8** [ %28, %27 ], [ %.01, %25 ], !dbg !803
  call void @llvm.dbg.value(metadata i8** %.1, metadata !801, metadata !DIExpression()), !dbg !803
  %30 = load i8*, i8** %.1, align 8, !dbg !834
  %31 = icmp ne i8* %30, null, !dbg !835
  br i1 %31, label %3, label %32, !dbg !833, !llvm.loop !836

32:                                               ; preds = %29
  %33 = call i32* @__errno_location() #9, !dbg !838
  store i32 5, i32* %33, align 4, !dbg !839
  br label %34, !dbg !840

34:                                               ; preds = %32, %15
  %.0 = phi i32 [ %5, %15 ], [ -1, %32 ], !dbg !803
  ret i32 %.0, !dbg !841
}

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #5

declare dso_local i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !842 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i64 %1, metadata !845, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i8* %0, metadata !846, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i64 0, metadata !847, metadata !DIExpression()), !dbg !844
  br label %3, !dbg !848

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !844
  call void @llvm.dbg.value(metadata i64 %.0, metadata !847, metadata !DIExpression()), !dbg !844
  %4 = icmp ult i64 %.0, %1, !dbg !849
  br i1 %4, label %5, label %8, !dbg !848

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !850
  call void @llvm.dbg.value(metadata i64 %6, metadata !847, metadata !DIExpression()), !dbg !844
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !852
  store volatile i8 0, i8* %7, align 1, !dbg !853
  br label %3, !dbg !848, !llvm.loop !854

8:                                                ; preds = %3
  ret void, !dbg !856
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !863, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i8* %1, metadata !865, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i64 %2, metadata !866, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i8* %0, metadata !867, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i8* %1, metadata !868, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i8 0, metadata !869, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i64 0, metadata !870, metadata !DIExpression()), !dbg !864
  br label %4, !dbg !871

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !873
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !864
  call void @llvm.dbg.value(metadata i8 %.0, metadata !869, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i64 %.01, metadata !870, metadata !DIExpression()), !dbg !864
  %5 = icmp ult i64 %.01, %2, !dbg !874
  br i1 %5, label %6, label %19, !dbg !876

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !877
  %8 = load i8, i8* %7, align 1, !dbg !877
  %9 = zext i8 %8 to i32, !dbg !877
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !879
  %11 = load i8, i8* %10, align 1, !dbg !879
  %12 = zext i8 %11 to i32, !dbg !879
  %13 = xor i32 %9, %12, !dbg !880
  %14 = zext i8 %.0 to i32, !dbg !881
  %15 = or i32 %14, %13, !dbg !881
  %16 = trunc i32 %15 to i8, !dbg !881
  call void @llvm.dbg.value(metadata i8 %16, metadata !869, metadata !DIExpression()), !dbg !864
  br label %17, !dbg !882

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !883
  call void @llvm.dbg.value(metadata i64 %18, metadata !870, metadata !DIExpression()), !dbg !864
  br label %4, !dbg !884, !llvm.loop !885

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !887
  %21 = sub nsw i32 %20, 1, !dbg !888
  %22 = ashr i32 %21, 8, !dbg !889
  %23 = and i32 1, %22, !dbg !890
  %24 = sub nsw i32 %23, 1, !dbg !891
  ret i32 %24, !dbg !892
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !893 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !899, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i64 %1, metadata !901, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i8* %2, metadata !902, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i64 %3, metadata !903, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i64 0, metadata !904, metadata !DIExpression()), !dbg !900
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !905
  br i1 %5, label %9, label %6, !dbg !907

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !908
  %8 = icmp ult i64 %1, %7, !dbg !909
  br i1 %8, label %9, label %10, !dbg !910

9:                                                ; preds = %6, %4
  call void @abort() #8, !dbg !911
  unreachable, !dbg !911

10:                                               ; preds = %6
  br label %11, !dbg !913

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !900
  call void @llvm.dbg.value(metadata i64 %.0, metadata !904, metadata !DIExpression()), !dbg !900
  %12 = icmp ult i64 %.0, %3, !dbg !914
  br i1 %12, label %13, label %47, !dbg !913

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !915
  %15 = load i8, i8* %14, align 1, !dbg !915
  %16 = zext i8 %15 to i32, !dbg !915
  %17 = and i32 %16, 15, !dbg !917
  call void @llvm.dbg.value(metadata i32 %17, metadata !918, metadata !DIExpression()), !dbg !900
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !919
  %19 = load i8, i8* %18, align 1, !dbg !919
  %20 = zext i8 %19 to i32, !dbg !919
  %21 = ashr i32 %20, 4, !dbg !920
  call void @llvm.dbg.value(metadata i32 %21, metadata !921, metadata !DIExpression()), !dbg !900
  %22 = add i32 87, %17, !dbg !922
  %23 = sub i32 %17, 10, !dbg !923
  %24 = lshr i32 %23, 8, !dbg !924
  %25 = and i32 %24, -39, !dbg !925
  %26 = add i32 %22, %25, !dbg !926
  %27 = trunc i32 %26 to i8, !dbg !927
  %28 = zext i8 %27 to i32, !dbg !927
  %29 = shl i32 %28, 8, !dbg !928
  %30 = add i32 87, %21, !dbg !929
  %31 = sub i32 %21, 10, !dbg !930
  %32 = lshr i32 %31, 8, !dbg !931
  %33 = and i32 %32, -39, !dbg !932
  %34 = add i32 %30, %33, !dbg !933
  %35 = trunc i32 %34 to i8, !dbg !934
  %36 = zext i8 %35 to i32, !dbg !934
  %37 = or i32 %29, %36, !dbg !935
  call void @llvm.dbg.value(metadata i32 %37, metadata !936, metadata !DIExpression()), !dbg !900
  %38 = trunc i32 %37 to i8, !dbg !937
  %39 = mul i64 %.0, 2, !dbg !938
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !939
  store i8 %38, i8* %40, align 1, !dbg !940
  %41 = lshr i32 %37, 8, !dbg !941
  call void @llvm.dbg.value(metadata i32 %41, metadata !936, metadata !DIExpression()), !dbg !900
  %42 = trunc i32 %41 to i8, !dbg !942
  %43 = mul i64 %.0, 2, !dbg !943
  %44 = add i64 %43, 1, !dbg !944
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !945
  store i8 %42, i8* %45, align 1, !dbg !946
  %46 = add i64 %.0, 1, !dbg !947
  call void @llvm.dbg.value(metadata i64 %46, metadata !904, metadata !DIExpression()), !dbg !900
  br label %11, !dbg !913, !llvm.loop !948

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !950
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !951
  store i8 0, i8* %49, align 1, !dbg !952
  ret i8* %0, !dbg !953
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !961, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 %1, metadata !963, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i8* %2, metadata !964, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 %3, metadata !965, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i8* %4, metadata !966, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64* %5, metadata !967, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i8** %6, metadata !968, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 0, metadata !970, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i32 0, metadata !971, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i8 0, metadata !972, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i8 0, metadata !973, metadata !DIExpression()), !dbg !962
  br label %8, !dbg !974

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !975
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !962
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !962
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !962
  call void @llvm.dbg.value(metadata i8 %.0, metadata !973, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i8 %.01, metadata !972, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 %.03, metadata !970, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 %.05, metadata !969, metadata !DIExpression()), !dbg !962
  %9 = icmp ult i64 %.03, %3, !dbg !976
  br i1 %9, label %10, label %78, !dbg !974

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !977
  %12 = load i8, i8* %11, align 1, !dbg !977
  call void @llvm.dbg.value(metadata i8 %12, metadata !979, metadata !DIExpression()), !dbg !962
  %13 = zext i8 %12 to i32, !dbg !980
  %14 = xor i32 %13, 48, !dbg !981
  %15 = trunc i32 %14 to i8, !dbg !980
  call void @llvm.dbg.value(metadata i8 %15, metadata !982, metadata !DIExpression()), !dbg !962
  %16 = zext i8 %15 to i32, !dbg !983
  %17 = sub i32 %16, 10, !dbg !984
  %18 = lshr i32 %17, 8, !dbg !985
  %19 = trunc i32 %18 to i8, !dbg !986
  call void @llvm.dbg.value(metadata i8 %19, metadata !987, metadata !DIExpression()), !dbg !962
  %20 = zext i8 %12 to i32, !dbg !988
  %21 = and i32 %20, -33, !dbg !989
  %22 = sub i32 %21, 55, !dbg !990
  %23 = trunc i32 %22 to i8, !dbg !991
  call void @llvm.dbg.value(metadata i8 %23, metadata !992, metadata !DIExpression()), !dbg !962
  %24 = zext i8 %23 to i32, !dbg !993
  %25 = sub i32 %24, 10, !dbg !994
  %26 = zext i8 %23 to i32, !dbg !995
  %27 = sub i32 %26, 16, !dbg !996
  %28 = xor i32 %25, %27, !dbg !997
  %29 = lshr i32 %28, 8, !dbg !998
  %30 = trunc i32 %29 to i8, !dbg !999
  call void @llvm.dbg.value(metadata i8 %30, metadata !1000, metadata !DIExpression()), !dbg !962
  %31 = zext i8 %19 to i32, !dbg !1001
  %32 = zext i8 %30 to i32, !dbg !1003
  %33 = or i32 %31, %32, !dbg !1004
  %34 = icmp eq i32 %33, 0, !dbg !1005
  br i1 %34, label %35, label %47, !dbg !1006

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !1007
  br i1 %36, label %37, label %46, !dbg !1010

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !1011
  %39 = icmp eq i32 %38, 0, !dbg !1012
  br i1 %39, label %40, label %46, !dbg !1013

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !1014
  %42 = call i8* @strchr(i8* %4, i32 %41) #11, !dbg !1015
  %43 = icmp ne i8* %42, null, !dbg !1016
  br i1 %43, label %44, label %46, !dbg !1017

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !1018
  call void @llvm.dbg.value(metadata i64 %45, metadata !970, metadata !DIExpression()), !dbg !962
  br label %8, !dbg !1020, !llvm.loop !1021

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !1023

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !1024
  %49 = zext i8 %15 to i32, !dbg !1025
  %50 = and i32 %48, %49, !dbg !1026
  %51 = zext i8 %30 to i32, !dbg !1027
  %52 = zext i8 %23 to i32, !dbg !1028
  %53 = and i32 %51, %52, !dbg !1029
  %54 = or i32 %50, %53, !dbg !1030
  %55 = trunc i32 %54 to i8, !dbg !1031
  call void @llvm.dbg.value(metadata i8 %55, metadata !1032, metadata !DIExpression()), !dbg !962
  %56 = icmp uge i64 %.05, %1, !dbg !1033
  br i1 %56, label %57, label %59, !dbg !1035

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !971, metadata !DIExpression()), !dbg !962
  %58 = call i32* @__errno_location() #9, !dbg !1036
  store i32 34, i32* %58, align 4, !dbg !1038
  br label %78, !dbg !1039

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !1040
  %61 = icmp eq i32 %60, 0, !dbg !1042
  br i1 %61, label %62, label %66, !dbg !1043

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !1044
  %64 = mul i32 %63, 16, !dbg !1046
  %65 = trunc i32 %64 to i8, !dbg !1044
  call void @llvm.dbg.value(metadata i8 %65, metadata !972, metadata !DIExpression()), !dbg !962
  br label %73, !dbg !1047

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !1048
  %68 = zext i8 %55 to i32, !dbg !1050
  %69 = or i32 %67, %68, !dbg !1051
  %70 = trunc i32 %69 to i8, !dbg !1048
  %71 = add i64 %.05, 1, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %71, metadata !969, metadata !DIExpression()), !dbg !962
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !1053
  store i8 %70, i8* %72, align 1, !dbg !1054
  br label %73

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !962
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !962
  call void @llvm.dbg.value(metadata i8 %.1, metadata !972, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 %.16, metadata !969, metadata !DIExpression()), !dbg !962
  %74 = zext i8 %.0 to i32, !dbg !1055
  %75 = xor i32 %74, -1, !dbg !1056
  %76 = trunc i32 %75 to i8, !dbg !1056
  call void @llvm.dbg.value(metadata i8 %76, metadata !973, metadata !DIExpression()), !dbg !962
  %77 = add i64 %.03, 1, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %77, metadata !970, metadata !DIExpression()), !dbg !962
  br label %8, !dbg !974, !llvm.loop !1021

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !962
  call void @llvm.dbg.value(metadata i32 %.02, metadata !971, metadata !DIExpression()), !dbg !962
  %79 = zext i8 %.0 to i32, !dbg !1058
  %80 = icmp ne i32 %79, 0, !dbg !1060
  br i1 %80, label %81, label %83, !dbg !1061

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !1062
  call void @llvm.dbg.value(metadata i64 %82, metadata !970, metadata !DIExpression()), !dbg !962
  br label %83, !dbg !1064

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !962
  call void @llvm.dbg.value(metadata i64 %.14, metadata !970, metadata !DIExpression()), !dbg !962
  %84 = icmp ne i8** %6, null, !dbg !1065
  br i1 %84, label %85, label %87, !dbg !1067

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !1068
  store i8* %86, i8** %6, align 8, !dbg !1070
  br label %87, !dbg !1071

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !1072
  br i1 %88, label %89, label %90, !dbg !1074

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !1075
  br label %90, !dbg !1077

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !1078
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !1079 {
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* @canary, i64 0, i64 0
  call void @randombytes_buf(i8* %1, i64 16), !dbg !1080
  ret i32 0, !dbg !1081
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !1082 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1083, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %1, metadata !1085, metadata !DIExpression()), !dbg !1084
  %3 = call i32* @__errno_location() #9, !dbg !1086
  store i32 38, i32* %3, align 4, !dbg !1087
  ret i32 -1, !dbg !1088
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !1089 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1090, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %1, metadata !1092, metadata !DIExpression()), !dbg !1091
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !1093
  %3 = call i32* @__errno_location() #9, !dbg !1094
  store i32 38, i32* %3, align 4, !dbg !1095
  ret i32 -1, !dbg !1096
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !1097 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1100, metadata !DIExpression()), !dbg !1101
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %2, metadata !1104, metadata !DIExpression()), !dbg !1101
  %3 = icmp eq i8* %2, null, !dbg !1105
  br i1 %3, label %4, label %5, !dbg !1106

4:                                                ; preds = %1
  br label %6, !dbg !1107

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !1109
  br label %6, !dbg !1110

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !1101
  ret i8* %.0, !dbg !1111
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !1112 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1113, metadata !DIExpression()), !dbg !1114
  %2 = call noalias i8* @malloc(i64 %0) #10, !dbg !1115
  ret i8* %2, !dbg !1116
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !1117 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1120, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %1, metadata !1122, metadata !DIExpression()), !dbg !1121
  %3 = icmp ugt i64 %0, 0, !dbg !1123
  br i1 %3, label %4, label %9, !dbg !1125

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !1126
  %6 = icmp uge i64 %1, %5, !dbg !1127
  br i1 %6, label %7, label %9, !dbg !1128

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #9, !dbg !1129
  store i32 12, i32* %8, align 4, !dbg !1131
  br label %12, !dbg !1132

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %10, metadata !1134, metadata !DIExpression()), !dbg !1121
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !1135
  br label %12, !dbg !1136

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !1121
  ret i8* %.0, !dbg !1137
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !1138 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1141, metadata !DIExpression()), !dbg !1142
  call void @free(i8* %0) #10, !dbg !1143
  ret void, !dbg !1144
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !1145 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1148, metadata !DIExpression()), !dbg !1149
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !1150
  ret i32 %2, !dbg !1151
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !1152 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %1, metadata !1157, metadata !DIExpression()), !dbg !1156
  %3 = call i32* @__errno_location() #9, !dbg !1158
  store i32 38, i32* %3, align 4, !dbg !1159
  ret i32 -1, !dbg !1160
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !1161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1165, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !1167, metadata !DIExpression()), !dbg !1166
  %3 = call i32* @__errno_location() #9, !dbg !1168
  store i32 38, i32* %3, align 4, !dbg !1169
  ret i32 -1, !dbg !1170
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !1171 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1172, metadata !DIExpression()), !dbg !1173
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !1174
  ret i32 %2, !dbg !1175
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !1176 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i64 %1, metadata !1179, metadata !DIExpression()), !dbg !1178
  %3 = call i32* @__errno_location() #9, !dbg !1180
  store i32 38, i32* %3, align 4, !dbg !1181
  ret i32 -1, !dbg !1182
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !1183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1184, metadata !DIExpression()), !dbg !1185
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !1186
  ret i32 %2, !dbg !1187
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !1188 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1189, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %1, metadata !1191, metadata !DIExpression()), !dbg !1190
  %3 = call i32* @__errno_location() #9, !dbg !1192
  store i32 38, i32* %3, align 4, !dbg !1193
  ret i32 -1, !dbg !1194
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

!llvm.dbg.cu = !{!100, !102, !106, !2, !55, !89}
!llvm.ident = !{!108, !108, !108, !108, !108, !108}
!llvm.module.flags = !{!109, !110, !111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "implementation", scope: !2, file: !3, line: 16, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/randombytes.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!4 = !{}
!5 = !{!6, !7, !12}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 46, baseType: !14)
!13 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !{!0}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "randombytes_implementation", file: !19, line: 26, baseType: !20)
!19 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/randombytes.h", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !19, line: 19, size: 384, elements: !21)
!21 = !{!22, !29, !33, !37, !42, !48}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !20, file: !19, line: 20, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !20, file: !19, line: 21, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{!7}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !20, file: !19, line: 22, baseType: !34, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{null}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !20, file: !19, line: 23, baseType: !38, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!7, !41}
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !20, file: !19, line: 24, baseType: !43, size: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46, !47}
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !20, file: !19, line: 25, baseType: !49, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52}
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "randombytes_sysrandom_implementation", scope: !55, file: !56, line: 297, type: !79, isLocal: false, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !64, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!57 = !{!58, !6, !62, !12, !52}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !59, line: 108, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !10, line: 193, baseType: !61)
!61 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!53, !65, !73}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "stream", scope: !55, file: !56, line: 69, type: !67, isLocal: true, isDefinition: true)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysRandom", file: !56, line: 67, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SysRandom_", file: !56, line: 63, size: 96, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "random_data_source_fd", scope: !68, file: !56, line: 64, baseType: !52, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !68, file: !56, line: 65, baseType: !52, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "getrandom_available", scope: !68, file: !56, line: 66, baseType: !52, size: 32, offset: 64)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "devices", scope: !75, file: !56, line: 106, type: !76, isLocal: true, isDefinition: true)
!75 = distinct !DISubprogram(name: "randombytes_sysrandom_random_dev_open", scope: !56, file: !56, line: 102, type: !50, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 192, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 3)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !19, line: 19, size: 384, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !79, file: !19, line: 20, baseType: !23, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !79, file: !19, line: 21, baseType: !30, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !79, file: !19, line: 22, baseType: !34, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !79, file: !19, line: 23, baseType: !38, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !79, file: !19, line: 24, baseType: !43, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !79, file: !19, line: 25, baseType: !49, size: 64, offset: 320)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "canary", scope: !89, file: !90, line: 46, type: !97, isLocal: true, isDefinition: true)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !91, globals: !96, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!91 = !{!92, !12, !94, !63, !52, !28, !6}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!96 = !{!87}
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 16)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../libsodium/src/libsodium/crypto_core/salsa20/core_salsa20_api.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !104, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !103, line: 11, baseType: !11)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "crypto_core_salsa20.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!108 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = distinct !DISubprogram(name: "crypto_core_salsa20_outputbytes", scope: !101, file: !101, line: 4, type: !113, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!113 = !DISubroutineType(types: !114)
!114 = !{!12}
!115 = !DILocation(line: 5, column: 5, scope: !112)
!116 = distinct !DISubprogram(name: "crypto_core_salsa20_inputbytes", scope: !101, file: !101, line: 9, type: !113, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!117 = !DILocation(line: 10, column: 5, scope: !116)
!118 = distinct !DISubprogram(name: "crypto_core_salsa20_keybytes", scope: !101, file: !101, line: 14, type: !113, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!119 = !DILocation(line: 15, column: 5, scope: !118)
!120 = distinct !DISubprogram(name: "crypto_core_salsa20_constbytes", scope: !101, file: !101, line: 19, type: !113, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !4)
!121 = !DILocation(line: 20, column: 5, scope: !120)
!122 = distinct !DISubprogram(name: "crypto_core_salsa20", scope: !103, file: !103, line: 36, type: !123, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !4)
!123 = !DISubroutineType(types: !124)
!124 = !{!52, !62, !94, !94, !94}
!125 = !DILocalVariable(name: "out", arg: 1, scope: !122, file: !103, line: 37, type: !62)
!126 = !DILocation(line: 0, scope: !122)
!127 = !DILocalVariable(name: "in", arg: 2, scope: !122, file: !103, line: 38, type: !94)
!128 = !DILocalVariable(name: "k", arg: 3, scope: !122, file: !103, line: 39, type: !94)
!129 = !DILocalVariable(name: "c", arg: 4, scope: !122, file: !103, line: 40, type: !94)
!130 = !DILocation(line: 47, column: 33, scope: !122)
!131 = !DILocation(line: 47, column: 13, scope: !122)
!132 = !DILocalVariable(name: "x0", scope: !122, file: !103, line: 43, type: !105)
!133 = !DILocalVariable(name: "j0", scope: !122, file: !103, line: 44, type: !105)
!134 = !DILocation(line: 48, column: 33, scope: !122)
!135 = !DILocation(line: 48, column: 13, scope: !122)
!136 = !DILocalVariable(name: "x1", scope: !122, file: !103, line: 43, type: !105)
!137 = !DILocalVariable(name: "j1", scope: !122, file: !103, line: 44, type: !105)
!138 = !DILocation(line: 49, column: 33, scope: !122)
!139 = !DILocation(line: 49, column: 13, scope: !122)
!140 = !DILocalVariable(name: "x2", scope: !122, file: !103, line: 43, type: !105)
!141 = !DILocalVariable(name: "j2", scope: !122, file: !103, line: 44, type: !105)
!142 = !DILocation(line: 50, column: 33, scope: !122)
!143 = !DILocation(line: 50, column: 13, scope: !122)
!144 = !DILocalVariable(name: "x3", scope: !122, file: !103, line: 43, type: !105)
!145 = !DILocalVariable(name: "j3", scope: !122, file: !103, line: 44, type: !105)
!146 = !DILocation(line: 51, column: 33, scope: !122)
!147 = !DILocation(line: 51, column: 13, scope: !122)
!148 = !DILocalVariable(name: "x4", scope: !122, file: !103, line: 43, type: !105)
!149 = !DILocalVariable(name: "j4", scope: !122, file: !103, line: 44, type: !105)
!150 = !DILocation(line: 52, column: 33, scope: !122)
!151 = !DILocation(line: 52, column: 13, scope: !122)
!152 = !DILocalVariable(name: "x5", scope: !122, file: !103, line: 43, type: !105)
!153 = !DILocalVariable(name: "j5", scope: !122, file: !103, line: 44, type: !105)
!154 = !DILocation(line: 53, column: 34, scope: !122)
!155 = !DILocation(line: 53, column: 13, scope: !122)
!156 = !DILocalVariable(name: "x6", scope: !122, file: !103, line: 43, type: !105)
!157 = !DILocalVariable(name: "j6", scope: !122, file: !103, line: 44, type: !105)
!158 = !DILocation(line: 54, column: 34, scope: !122)
!159 = !DILocation(line: 54, column: 13, scope: !122)
!160 = !DILocalVariable(name: "x7", scope: !122, file: !103, line: 43, type: !105)
!161 = !DILocalVariable(name: "j7", scope: !122, file: !103, line: 44, type: !105)
!162 = !DILocation(line: 55, column: 34, scope: !122)
!163 = !DILocation(line: 55, column: 13, scope: !122)
!164 = !DILocalVariable(name: "x8", scope: !122, file: !103, line: 43, type: !105)
!165 = !DILocalVariable(name: "j8", scope: !122, file: !103, line: 44, type: !105)
!166 = !DILocation(line: 56, column: 34, scope: !122)
!167 = !DILocation(line: 56, column: 13, scope: !122)
!168 = !DILocalVariable(name: "x9", scope: !122, file: !103, line: 43, type: !105)
!169 = !DILocalVariable(name: "j9", scope: !122, file: !103, line: 44, type: !105)
!170 = !DILocation(line: 57, column: 35, scope: !122)
!171 = !DILocation(line: 57, column: 15, scope: !122)
!172 = !DILocalVariable(name: "x10", scope: !122, file: !103, line: 43, type: !105)
!173 = !DILocalVariable(name: "j10", scope: !122, file: !103, line: 44, type: !105)
!174 = !DILocation(line: 58, column: 35, scope: !122)
!175 = !DILocation(line: 58, column: 15, scope: !122)
!176 = !DILocalVariable(name: "x11", scope: !122, file: !103, line: 43, type: !105)
!177 = !DILocalVariable(name: "j11", scope: !122, file: !103, line: 44, type: !105)
!178 = !DILocation(line: 59, column: 35, scope: !122)
!179 = !DILocation(line: 59, column: 15, scope: !122)
!180 = !DILocalVariable(name: "x12", scope: !122, file: !103, line: 43, type: !105)
!181 = !DILocalVariable(name: "j12", scope: !122, file: !103, line: 44, type: !105)
!182 = !DILocation(line: 60, column: 35, scope: !122)
!183 = !DILocation(line: 60, column: 15, scope: !122)
!184 = !DILocalVariable(name: "x13", scope: !122, file: !103, line: 43, type: !105)
!185 = !DILocalVariable(name: "j13", scope: !122, file: !103, line: 44, type: !105)
!186 = !DILocation(line: 61, column: 35, scope: !122)
!187 = !DILocation(line: 61, column: 15, scope: !122)
!188 = !DILocalVariable(name: "x14", scope: !122, file: !103, line: 43, type: !105)
!189 = !DILocalVariable(name: "j14", scope: !122, file: !103, line: 44, type: !105)
!190 = !DILocation(line: 62, column: 35, scope: !122)
!191 = !DILocation(line: 62, column: 15, scope: !122)
!192 = !DILocalVariable(name: "x15", scope: !122, file: !103, line: 43, type: !105)
!193 = !DILocalVariable(name: "j15", scope: !122, file: !103, line: 44, type: !105)
!194 = !DILocalVariable(name: "i", scope: !122, file: !103, line: 45, type: !52)
!195 = !DILocation(line: 64, column: 8, scope: !196)
!196 = distinct !DILexicalBlock(scope: !122, file: !103, line: 64, column: 3)
!197 = !DILocation(line: 0, scope: !196)
!198 = !DILocation(line: 64, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !103, line: 64, column: 3)
!200 = !DILocation(line: 64, column: 3, scope: !196)
!201 = !DILocation(line: 65, column: 22, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !103, line: 64, column: 33)
!203 = !DILocation(line: 65, column: 12, scope: !202)
!204 = !DILocation(line: 65, column: 9, scope: !202)
!205 = !DILocation(line: 66, column: 22, scope: !202)
!206 = !DILocation(line: 66, column: 12, scope: !202)
!207 = !DILocation(line: 66, column: 9, scope: !202)
!208 = !DILocation(line: 67, column: 22, scope: !202)
!209 = !DILocation(line: 67, column: 12, scope: !202)
!210 = !DILocation(line: 67, column: 9, scope: !202)
!211 = !DILocation(line: 68, column: 22, scope: !202)
!212 = !DILocation(line: 68, column: 12, scope: !202)
!213 = !DILocation(line: 68, column: 9, scope: !202)
!214 = !DILocation(line: 69, column: 22, scope: !202)
!215 = !DILocation(line: 69, column: 12, scope: !202)
!216 = !DILocation(line: 69, column: 9, scope: !202)
!217 = !DILocation(line: 70, column: 22, scope: !202)
!218 = !DILocation(line: 70, column: 12, scope: !202)
!219 = !DILocation(line: 70, column: 9, scope: !202)
!220 = !DILocation(line: 71, column: 22, scope: !202)
!221 = !DILocation(line: 71, column: 12, scope: !202)
!222 = !DILocation(line: 71, column: 9, scope: !202)
!223 = !DILocation(line: 72, column: 22, scope: !202)
!224 = !DILocation(line: 72, column: 12, scope: !202)
!225 = !DILocation(line: 72, column: 9, scope: !202)
!226 = !DILocation(line: 73, column: 22, scope: !202)
!227 = !DILocation(line: 73, column: 12, scope: !202)
!228 = !DILocation(line: 73, column: 9, scope: !202)
!229 = !DILocation(line: 74, column: 22, scope: !202)
!230 = !DILocation(line: 74, column: 12, scope: !202)
!231 = !DILocation(line: 74, column: 9, scope: !202)
!232 = !DILocation(line: 75, column: 22, scope: !202)
!233 = !DILocation(line: 75, column: 12, scope: !202)
!234 = !DILocation(line: 75, column: 9, scope: !202)
!235 = !DILocation(line: 76, column: 22, scope: !202)
!236 = !DILocation(line: 76, column: 12, scope: !202)
!237 = !DILocation(line: 76, column: 9, scope: !202)
!238 = !DILocation(line: 77, column: 22, scope: !202)
!239 = !DILocation(line: 77, column: 12, scope: !202)
!240 = !DILocation(line: 77, column: 9, scope: !202)
!241 = !DILocation(line: 78, column: 22, scope: !202)
!242 = !DILocation(line: 78, column: 12, scope: !202)
!243 = !DILocation(line: 78, column: 9, scope: !202)
!244 = !DILocation(line: 79, column: 22, scope: !202)
!245 = !DILocation(line: 79, column: 12, scope: !202)
!246 = !DILocation(line: 79, column: 9, scope: !202)
!247 = !DILocation(line: 80, column: 22, scope: !202)
!248 = !DILocation(line: 80, column: 12, scope: !202)
!249 = !DILocation(line: 80, column: 9, scope: !202)
!250 = !DILocation(line: 81, column: 22, scope: !202)
!251 = !DILocation(line: 81, column: 12, scope: !202)
!252 = !DILocation(line: 81, column: 9, scope: !202)
!253 = !DILocation(line: 82, column: 22, scope: !202)
!254 = !DILocation(line: 82, column: 12, scope: !202)
!255 = !DILocation(line: 82, column: 9, scope: !202)
!256 = !DILocation(line: 83, column: 22, scope: !202)
!257 = !DILocation(line: 83, column: 12, scope: !202)
!258 = !DILocation(line: 83, column: 9, scope: !202)
!259 = !DILocation(line: 84, column: 22, scope: !202)
!260 = !DILocation(line: 84, column: 12, scope: !202)
!261 = !DILocation(line: 84, column: 9, scope: !202)
!262 = !DILocation(line: 85, column: 22, scope: !202)
!263 = !DILocation(line: 85, column: 12, scope: !202)
!264 = !DILocation(line: 85, column: 9, scope: !202)
!265 = !DILocation(line: 86, column: 22, scope: !202)
!266 = !DILocation(line: 86, column: 12, scope: !202)
!267 = !DILocation(line: 86, column: 9, scope: !202)
!268 = !DILocation(line: 87, column: 22, scope: !202)
!269 = !DILocation(line: 87, column: 12, scope: !202)
!270 = !DILocation(line: 87, column: 9, scope: !202)
!271 = !DILocation(line: 88, column: 22, scope: !202)
!272 = !DILocation(line: 88, column: 12, scope: !202)
!273 = !DILocation(line: 88, column: 9, scope: !202)
!274 = !DILocation(line: 89, column: 22, scope: !202)
!275 = !DILocation(line: 89, column: 12, scope: !202)
!276 = !DILocation(line: 89, column: 9, scope: !202)
!277 = !DILocation(line: 90, column: 22, scope: !202)
!278 = !DILocation(line: 90, column: 12, scope: !202)
!279 = !DILocation(line: 90, column: 9, scope: !202)
!280 = !DILocation(line: 91, column: 22, scope: !202)
!281 = !DILocation(line: 91, column: 12, scope: !202)
!282 = !DILocation(line: 91, column: 9, scope: !202)
!283 = !DILocation(line: 92, column: 22, scope: !202)
!284 = !DILocation(line: 92, column: 12, scope: !202)
!285 = !DILocation(line: 92, column: 9, scope: !202)
!286 = !DILocation(line: 93, column: 22, scope: !202)
!287 = !DILocation(line: 93, column: 12, scope: !202)
!288 = !DILocation(line: 93, column: 9, scope: !202)
!289 = !DILocation(line: 94, column: 22, scope: !202)
!290 = !DILocation(line: 94, column: 12, scope: !202)
!291 = !DILocation(line: 94, column: 9, scope: !202)
!292 = !DILocation(line: 95, column: 22, scope: !202)
!293 = !DILocation(line: 95, column: 12, scope: !202)
!294 = !DILocation(line: 95, column: 9, scope: !202)
!295 = !DILocation(line: 96, column: 22, scope: !202)
!296 = !DILocation(line: 96, column: 12, scope: !202)
!297 = !DILocation(line: 96, column: 9, scope: !202)
!298 = !DILocation(line: 97, column: 3, scope: !202)
!299 = !DILocation(line: 64, column: 27, scope: !199)
!300 = !DILocation(line: 64, column: 3, scope: !199)
!301 = distinct !{!301, !200, !302, !303}
!302 = !DILocation(line: 97, column: 3, scope: !196)
!303 = !{!"llvm.loop.mustprogress"}
!304 = !DILocation(line: 99, column: 6, scope: !122)
!305 = !DILocation(line: 100, column: 6, scope: !122)
!306 = !DILocation(line: 101, column: 6, scope: !122)
!307 = !DILocation(line: 102, column: 6, scope: !122)
!308 = !DILocation(line: 103, column: 6, scope: !122)
!309 = !DILocation(line: 104, column: 6, scope: !122)
!310 = !DILocation(line: 105, column: 6, scope: !122)
!311 = !DILocation(line: 106, column: 6, scope: !122)
!312 = !DILocation(line: 107, column: 6, scope: !122)
!313 = !DILocation(line: 108, column: 6, scope: !122)
!314 = !DILocation(line: 109, column: 7, scope: !122)
!315 = !DILocation(line: 110, column: 7, scope: !122)
!316 = !DILocation(line: 111, column: 7, scope: !122)
!317 = !DILocation(line: 112, column: 7, scope: !122)
!318 = !DILocation(line: 113, column: 7, scope: !122)
!319 = !DILocation(line: 114, column: 7, scope: !122)
!320 = !DILocation(line: 116, column: 26, scope: !122)
!321 = !DILocation(line: 116, column: 3, scope: !122)
!322 = !DILocation(line: 117, column: 26, scope: !122)
!323 = !DILocation(line: 117, column: 3, scope: !122)
!324 = !DILocation(line: 118, column: 26, scope: !122)
!325 = !DILocation(line: 118, column: 3, scope: !122)
!326 = !DILocation(line: 119, column: 26, scope: !122)
!327 = !DILocation(line: 119, column: 3, scope: !122)
!328 = !DILocation(line: 120, column: 26, scope: !122)
!329 = !DILocation(line: 120, column: 3, scope: !122)
!330 = !DILocation(line: 121, column: 26, scope: !122)
!331 = !DILocation(line: 121, column: 3, scope: !122)
!332 = !DILocation(line: 122, column: 26, scope: !122)
!333 = !DILocation(line: 122, column: 3, scope: !122)
!334 = !DILocation(line: 123, column: 26, scope: !122)
!335 = !DILocation(line: 123, column: 3, scope: !122)
!336 = !DILocation(line: 124, column: 26, scope: !122)
!337 = !DILocation(line: 124, column: 3, scope: !122)
!338 = !DILocation(line: 125, column: 26, scope: !122)
!339 = !DILocation(line: 125, column: 3, scope: !122)
!340 = !DILocation(line: 126, column: 26, scope: !122)
!341 = !DILocation(line: 126, column: 3, scope: !122)
!342 = !DILocation(line: 127, column: 26, scope: !122)
!343 = !DILocation(line: 127, column: 3, scope: !122)
!344 = !DILocation(line: 128, column: 26, scope: !122)
!345 = !DILocation(line: 128, column: 3, scope: !122)
!346 = !DILocation(line: 129, column: 26, scope: !122)
!347 = !DILocation(line: 129, column: 3, scope: !122)
!348 = !DILocation(line: 130, column: 26, scope: !122)
!349 = !DILocation(line: 130, column: 3, scope: !122)
!350 = !DILocation(line: 131, column: 26, scope: !122)
!351 = !DILocation(line: 131, column: 3, scope: !122)
!352 = !DILocation(line: 133, column: 3, scope: !122)
!353 = distinct !DISubprogram(name: "load_littleendian", scope: !103, file: !103, line: 18, type: !354, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !4)
!354 = !DISubroutineType(types: !355)
!355 = !{!105, !94}
!356 = !DILocalVariable(name: "x", arg: 1, scope: !353, file: !103, line: 18, type: !94)
!357 = !DILocation(line: 0, scope: !353)
!358 = !DILocation(line: 21, column: 17, scope: !353)
!359 = !DILocation(line: 21, column: 7, scope: !353)
!360 = !DILocation(line: 22, column: 17, scope: !353)
!361 = !DILocation(line: 22, column: 7, scope: !353)
!362 = !DILocation(line: 22, column: 24, scope: !353)
!363 = !DILocation(line: 22, column: 3, scope: !353)
!364 = !DILocation(line: 23, column: 17, scope: !353)
!365 = !DILocation(line: 23, column: 7, scope: !353)
!366 = !DILocation(line: 23, column: 24, scope: !353)
!367 = !DILocation(line: 23, column: 3, scope: !353)
!368 = !DILocation(line: 24, column: 17, scope: !353)
!369 = !DILocation(line: 24, column: 7, scope: !353)
!370 = !DILocation(line: 24, column: 24, scope: !353)
!371 = !DILocation(line: 24, column: 3, scope: !353)
!372 = !DILocation(line: 20, column: 3, scope: !353)
!373 = distinct !DISubprogram(name: "rotate", scope: !103, file: !103, line: 13, type: !374, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !4)
!374 = !DISubroutineType(types: !375)
!375 = !{!105, !105, !52}
!376 = !DILocalVariable(name: "u", arg: 1, scope: !373, file: !103, line: 13, type: !105)
!377 = !DILocation(line: 0, scope: !373)
!378 = !DILocalVariable(name: "c", arg: 2, scope: !373, file: !103, line: 13, type: !52)
!379 = !DILocation(line: 15, column: 13, scope: !373)
!380 = !DILocation(line: 15, column: 31, scope: !373)
!381 = !DILocation(line: 15, column: 24, scope: !373)
!382 = !DILocation(line: 15, column: 19, scope: !373)
!383 = !DILocation(line: 15, column: 3, scope: !373)
!384 = distinct !DISubprogram(name: "store_littleendian", scope: !103, file: !103, line: 28, type: !385, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !102, retainedNodes: !4)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !62, !105}
!387 = !DILocalVariable(name: "x", arg: 1, scope: !384, file: !103, line: 28, type: !62)
!388 = !DILocation(line: 0, scope: !384)
!389 = !DILocalVariable(name: "u", arg: 2, scope: !384, file: !103, line: 28, type: !105)
!390 = !DILocation(line: 30, column: 10, scope: !384)
!391 = !DILocation(line: 30, column: 3, scope: !384)
!392 = !DILocation(line: 30, column: 8, scope: !384)
!393 = !DILocation(line: 30, column: 15, scope: !384)
!394 = !DILocation(line: 31, column: 10, scope: !384)
!395 = !DILocation(line: 31, column: 3, scope: !384)
!396 = !DILocation(line: 31, column: 8, scope: !384)
!397 = !DILocation(line: 31, column: 15, scope: !384)
!398 = !DILocation(line: 32, column: 10, scope: !384)
!399 = !DILocation(line: 32, column: 3, scope: !384)
!400 = !DILocation(line: 32, column: 8, scope: !384)
!401 = !DILocation(line: 32, column: 15, scope: !384)
!402 = !DILocation(line: 33, column: 10, scope: !384)
!403 = !DILocation(line: 33, column: 3, scope: !384)
!404 = !DILocation(line: 33, column: 8, scope: !384)
!405 = !DILocation(line: 34, column: 1, scope: !384)
!406 = distinct !DISubprogram(name: "crypto_core_salsa20_wrapper", scope: !107, file: !107, line: 5, type: !123, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!407 = !DILocalVariable(name: "out", arg: 1, scope: !406, file: !107, line: 5, type: !62)
!408 = !DILocation(line: 0, scope: !406)
!409 = !DILocalVariable(name: "in", arg: 2, scope: !406, file: !107, line: 5, type: !94)
!410 = !DILocalVariable(name: "k", arg: 3, scope: !406, file: !107, line: 6, type: !94)
!411 = !DILocalVariable(name: "c", arg: 4, scope: !406, file: !107, line: 6, type: !94)
!412 = !DILocation(line: 8, column: 13, scope: !406)
!413 = !DILocation(line: 8, column: 3, scope: !406)
!414 = !DILocation(line: 9, column: 13, scope: !406)
!415 = !DILocation(line: 9, column: 3, scope: !406)
!416 = !DILocation(line: 10, column: 13, scope: !406)
!417 = !DILocation(line: 10, column: 3, scope: !406)
!418 = !DILocation(line: 11, column: 13, scope: !406)
!419 = !DILocation(line: 11, column: 3, scope: !406)
!420 = !DILocation(line: 13, column: 10, scope: !406)
!421 = !DILocation(line: 13, column: 3, scope: !406)
!422 = distinct !DISubprogram(name: "crypto_core_salsa20_wrapper_t", scope: !107, file: !107, line: 21, type: !35, scopeLine: 22, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!423 = !DILocalVariable(name: "dout", scope: !422, file: !107, line: 23, type: !63)
!424 = !DILocation(line: 23, column: 17, scope: !422)
!425 = !DILocation(line: 23, column: 24, scope: !422)
!426 = !DILocalVariable(name: "din", scope: !422, file: !107, line: 24, type: !95)
!427 = !DILocation(line: 24, column: 24, scope: !422)
!428 = !DILocation(line: 24, column: 30, scope: !422)
!429 = !DILocalVariable(name: "dk", scope: !422, file: !107, line: 25, type: !95)
!430 = !DILocation(line: 25, column: 21, scope: !422)
!431 = !DILocation(line: 25, column: 26, scope: !422)
!432 = !DILocalVariable(name: "dc", scope: !422, file: !107, line: 26, type: !95)
!433 = !DILocation(line: 26, column: 22, scope: !422)
!434 = !DILocation(line: 26, column: 27, scope: !422)
!435 = !DILocalVariable(name: "out", scope: !422, file: !107, line: 27, type: !62)
!436 = !DILocation(line: 0, scope: !422)
!437 = !DILocalVariable(name: "in", scope: !422, file: !107, line: 28, type: !94)
!438 = !DILocalVariable(name: "k", scope: !422, file: !107, line: 29, type: !94)
!439 = !DILocalVariable(name: "c", scope: !422, file: !107, line: 30, type: !94)
!440 = !DILocation(line: 31, column: 3, scope: !422)
!441 = !DILocation(line: 32, column: 1, scope: !422)
!442 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !3, file: !3, line: 23, type: !443, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!443 = !DISubroutineType(types: !444)
!444 = !{!52, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!446 = !DILocalVariable(name: "impl", arg: 1, scope: !442, file: !3, line: 23, type: !445)
!447 = !DILocation(line: 0, scope: !442)
!448 = !DILocation(line: 25, column: 20, scope: !442)
!449 = !DILocation(line: 27, column: 5, scope: !442)
!450 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !3, file: !3, line: 31, type: !24, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!451 = !DILocation(line: 34, column: 12, scope: !450)
!452 = !DILocation(line: 34, column: 28, scope: !450)
!453 = !DILocation(line: 34, column: 5, scope: !450)
!454 = distinct !DISubprogram(name: "randombytes_random", scope: !3, file: !3, line: 41, type: !31, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!455 = !DILocation(line: 44, column: 12, scope: !454)
!456 = !DILocation(line: 44, column: 28, scope: !454)
!457 = !DILocation(line: 44, column: 5, scope: !454)
!458 = distinct !DISubprogram(name: "randombytes_stir", scope: !3, file: !3, line: 53, type: !35, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!459 = !DILocation(line: 56, column: 9, scope: !460)
!460 = distinct !DILexicalBlock(scope: !458, file: !3, line: 56, column: 9)
!461 = !DILocation(line: 56, column: 24, scope: !460)
!462 = !DILocation(line: 56, column: 32, scope: !460)
!463 = !DILocation(line: 56, column: 35, scope: !460)
!464 = !DILocation(line: 56, column: 51, scope: !460)
!465 = !DILocation(line: 56, column: 56, scope: !460)
!466 = !DILocation(line: 56, column: 9, scope: !458)
!467 = !DILocation(line: 57, column: 9, scope: !468)
!468 = distinct !DILexicalBlock(scope: !460, file: !3, line: 56, column: 65)
!469 = !DILocation(line: 57, column: 25, scope: !468)
!470 = !DILocation(line: 58, column: 5, scope: !468)
!471 = !DILocation(line: 87, column: 1, scope: !458)
!472 = distinct !DISubprogram(name: "randombytes_uniform", scope: !3, file: !3, line: 94, type: !39, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!473 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !472, file: !3, line: 94, type: !41)
!474 = !DILocation(line: 0, scope: !472)
!475 = !DILocation(line: 99, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !3, line: 99, column: 9)
!477 = !DILocation(line: 99, column: 24, scope: !476)
!478 = !DILocation(line: 99, column: 32, scope: !476)
!479 = !DILocation(line: 99, column: 35, scope: !476)
!480 = !DILocation(line: 99, column: 51, scope: !476)
!481 = !DILocation(line: 99, column: 59, scope: !476)
!482 = !DILocation(line: 99, column: 9, scope: !472)
!483 = !DILocation(line: 100, column: 16, scope: !484)
!484 = distinct !DILexicalBlock(scope: !476, file: !3, line: 99, column: 68)
!485 = !DILocation(line: 100, column: 32, scope: !484)
!486 = !DILocation(line: 100, column: 9, scope: !484)
!487 = !DILocation(line: 102, column: 21, scope: !488)
!488 = distinct !DILexicalBlock(scope: !472, file: !3, line: 102, column: 9)
!489 = !DILocation(line: 102, column: 9, scope: !472)
!490 = !DILocation(line: 103, column: 9, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !3, line: 102, column: 26)
!492 = !DILocation(line: 105, column: 23, scope: !472)
!493 = !DILocation(line: 105, column: 36, scope: !472)
!494 = !DILocalVariable(name: "min", scope: !472, file: !3, line: 96, type: !7)
!495 = !DILocation(line: 106, column: 5, scope: !472)
!496 = !DILocation(line: 107, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !472, file: !3, line: 106, column: 8)
!498 = !DILocalVariable(name: "r", scope: !472, file: !3, line: 97, type: !7)
!499 = !DILocation(line: 108, column: 5, scope: !497)
!500 = !DILocation(line: 108, column: 16, scope: !472)
!501 = distinct !{!501, !495, !502, !303}
!502 = !DILocation(line: 108, column: 21, scope: !472)
!503 = !DILocation(line: 110, column: 14, scope: !472)
!504 = !DILocation(line: 110, column: 5, scope: !472)
!505 = !DILocation(line: 111, column: 1, scope: !472)
!506 = distinct !DISubprogram(name: "randombytes_buf", scope: !3, file: !3, line: 114, type: !44, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!507 = !DILocalVariable(name: "buf", arg: 1, scope: !506, file: !3, line: 114, type: !46)
!508 = !DILocation(line: 0, scope: !506)
!509 = !DILocalVariable(name: "size", arg: 2, scope: !506, file: !3, line: 114, type: !47)
!510 = !DILocation(line: 117, column: 14, scope: !511)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 117, column: 9)
!512 = !DILocation(line: 117, column: 9, scope: !506)
!513 = !DILocation(line: 118, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !511, file: !3, line: 117, column: 29)
!515 = !DILocation(line: 118, column: 25, scope: !514)
!516 = !DILocation(line: 119, column: 5, scope: !514)
!517 = !DILocation(line: 128, column: 1, scope: !506)
!518 = distinct !DISubprogram(name: "randombytes_close", scope: !3, file: !3, line: 131, type: !50, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!519 = !DILocation(line: 133, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !518, file: !3, line: 133, column: 9)
!521 = !DILocation(line: 133, column: 24, scope: !520)
!522 = !DILocation(line: 133, column: 32, scope: !520)
!523 = !DILocation(line: 133, column: 35, scope: !520)
!524 = !DILocation(line: 133, column: 51, scope: !520)
!525 = !DILocation(line: 133, column: 57, scope: !520)
!526 = !DILocation(line: 133, column: 9, scope: !518)
!527 = !DILocation(line: 134, column: 16, scope: !528)
!528 = distinct !DILexicalBlock(scope: !520, file: !3, line: 133, column: 66)
!529 = !DILocation(line: 134, column: 32, scope: !528)
!530 = !DILocation(line: 134, column: 9, scope: !528)
!531 = !DILocation(line: 136, column: 5, scope: !518)
!532 = !DILocation(line: 0, scope: !518)
!533 = !DILocation(line: 137, column: 1, scope: !518)
!534 = distinct !DISubprogram(name: "randombytes", scope: !3, file: !3, line: 140, type: !535, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !537, !538}
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!539 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!540 = !DILocalVariable(name: "buf", arg: 1, scope: !534, file: !3, line: 140, type: !537)
!541 = !DILocation(line: 0, scope: !534)
!542 = !DILocalVariable(name: "buf_len", arg: 2, scope: !534, file: !3, line: 140, type: !538)
!543 = !DILocation(line: 142, column: 5, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 142, column: 5)
!545 = distinct !DILexicalBlock(scope: !534, file: !3, line: 142, column: 5)
!546 = !DILocation(line: 142, column: 5, scope: !545)
!547 = !DILocation(line: 143, column: 5, scope: !534)
!548 = !DILocation(line: 144, column: 1, scope: !534)
!549 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !56, file: !56, line: 292, type: !24, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!550 = !DILocation(line: 294, column: 5, scope: !549)
!551 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !56, file: !56, line: 249, type: !31, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!552 = !DILocalVariable(name: "r", scope: !551, file: !56, line: 251, type: !7)
!553 = !DILocation(line: 251, column: 14, scope: !551)
!554 = !DILocation(line: 253, column: 31, scope: !551)
!555 = !DILocation(line: 253, column: 5, scope: !551)
!556 = !DILocation(line: 255, column: 12, scope: !551)
!557 = !DILocation(line: 255, column: 5, scope: !551)
!558 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !56, file: !56, line: 206, type: !35, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!559 = !DILocation(line: 208, column: 16, scope: !560)
!560 = distinct !DILexicalBlock(scope: !558, file: !56, line: 208, column: 9)
!561 = !DILocation(line: 208, column: 28, scope: !560)
!562 = !DILocation(line: 208, column: 9, scope: !558)
!563 = !DILocation(line: 209, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !56, line: 208, column: 34)
!565 = !DILocation(line: 210, column: 28, scope: !564)
!566 = !DILocation(line: 211, column: 5, scope: !564)
!567 = !DILocation(line: 212, column: 1, scope: !558)
!568 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !56, file: !56, line: 259, type: !44, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!569 = !DILocalVariable(name: "buf", arg: 1, scope: !568, file: !56, line: 259, type: !46)
!570 = !DILocation(line: 0, scope: !568)
!571 = !DILocalVariable(name: "size", arg: 2, scope: !568, file: !56, line: 259, type: !47)
!572 = !DILocation(line: 261, column: 5, scope: !568)
!573 = !DILocation(line: 268, column: 16, scope: !574)
!574 = distinct !DILexicalBlock(scope: !568, file: !56, line: 268, column: 9)
!575 = !DILocation(line: 268, column: 36, scope: !574)
!576 = !DILocation(line: 268, column: 9, scope: !568)
!577 = !DILocation(line: 269, column: 13, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !56, line: 269, column: 13)
!579 = distinct !DILexicalBlock(scope: !574, file: !56, line: 268, column: 42)
!580 = !DILocation(line: 269, column: 52, scope: !578)
!581 = !DILocation(line: 269, column: 13, scope: !579)
!582 = !DILocation(line: 270, column: 13, scope: !583)
!583 = distinct !DILexicalBlock(scope: !578, file: !56, line: 269, column: 58)
!584 = !DILocation(line: 272, column: 9, scope: !579)
!585 = !DILocation(line: 275, column: 16, scope: !586)
!586 = distinct !DILexicalBlock(scope: !568, file: !56, line: 275, column: 9)
!587 = !DILocation(line: 275, column: 38, scope: !586)
!588 = !DILocation(line: 275, column: 44, scope: !586)
!589 = !DILocation(line: 276, column: 26, scope: !586)
!590 = !DILocation(line: 276, column: 9, scope: !586)
!591 = !DILocation(line: 276, column: 60, scope: !586)
!592 = !DILocation(line: 275, column: 9, scope: !568)
!593 = !DILocation(line: 277, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !586, file: !56, line: 276, column: 79)
!595 = !DILocation(line: 287, column: 1, scope: !568)
!596 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !56, file: !56, line: 223, type: !50, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!597 = !DILocalVariable(name: "ret", scope: !596, file: !56, line: 225, type: !52)
!598 = !DILocation(line: 0, scope: !596)
!599 = !DILocation(line: 228, column: 16, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !56, line: 228, column: 9)
!601 = !DILocation(line: 228, column: 38, scope: !600)
!602 = !DILocation(line: 228, column: 44, scope: !600)
!603 = !DILocation(line: 229, column: 22, scope: !600)
!604 = !DILocation(line: 229, column: 9, scope: !600)
!605 = !DILocation(line: 229, column: 45, scope: !600)
!606 = !DILocation(line: 228, column: 9, scope: !596)
!607 = !DILocation(line: 230, column: 38, scope: !608)
!608 = distinct !DILexicalBlock(scope: !600, file: !56, line: 229, column: 51)
!609 = !DILocation(line: 231, column: 28, scope: !608)
!610 = !DILocation(line: 233, column: 5, scope: !608)
!611 = !DILocation(line: 235, column: 16, scope: !612)
!612 = distinct !DILexicalBlock(scope: !596, file: !56, line: 235, column: 9)
!613 = !DILocation(line: 235, column: 36, scope: !612)
!614 = !DILocation(line: 235, column: 9, scope: !596)
!615 = !DILocation(line: 237, column: 5, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !56, line: 235, column: 42)
!617 = !DILocation(line: 245, column: 5, scope: !596)
!618 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !56, file: !56, line: 215, type: !35, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!619 = !DILocation(line: 217, column: 16, scope: !620)
!620 = distinct !DILexicalBlock(scope: !618, file: !56, line: 217, column: 9)
!621 = !DILocation(line: 217, column: 28, scope: !620)
!622 = !DILocation(line: 217, column: 9, scope: !618)
!623 = !DILocation(line: 218, column: 9, scope: !624)
!624 = distinct !DILexicalBlock(scope: !620, file: !56, line: 217, column: 34)
!625 = !DILocation(line: 219, column: 5, scope: !624)
!626 = !DILocation(line: 220, column: 1, scope: !618)
!627 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !56, file: !56, line: 151, type: !628, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!628 = !DISubroutineType(types: !629)
!629 = !{!52, !46, !12}
!630 = !DILocalVariable(name: "buf_", arg: 1, scope: !627, file: !56, line: 151, type: !46)
!631 = !DILocation(line: 0, scope: !627)
!632 = !DILocalVariable(name: "size", arg: 2, scope: !627, file: !56, line: 151, type: !12)
!633 = !DILocalVariable(name: "buf", scope: !627, file: !56, line: 153, type: !62)
!634 = !DILocalVariable(name: "chunk_size", scope: !627, file: !56, line: 154, type: !12)
!635 = !DILocation(line: 156, column: 5, scope: !627)
!636 = !DILocation(line: 157, column: 18, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !56, line: 157, column: 13)
!638 = distinct !DILexicalBlock(scope: !627, file: !56, line: 156, column: 8)
!639 = !DILocation(line: 157, column: 13, scope: !638)
!640 = !DILocation(line: 159, column: 13, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !56, line: 159, column: 13)
!642 = distinct !DILexicalBlock(scope: !643, file: !56, line: 159, column: 13)
!643 = distinct !DILexicalBlock(scope: !637, file: !56, line: 157, column: 32)
!644 = !DILocation(line: 159, column: 13, scope: !642)
!645 = !DILocation(line: 160, column: 9, scope: !643)
!646 = !DILocation(line: 161, column: 13, scope: !647)
!647 = distinct !DILexicalBlock(scope: !638, file: !56, line: 161, column: 13)
!648 = !DILocation(line: 161, column: 59, scope: !647)
!649 = !DILocation(line: 161, column: 13, scope: !638)
!650 = !DILocation(line: 162, column: 13, scope: !651)
!651 = distinct !DILexicalBlock(scope: !647, file: !56, line: 161, column: 65)
!652 = !DILocation(line: 164, column: 14, scope: !638)
!653 = !DILocation(line: 165, column: 13, scope: !638)
!654 = !DILocation(line: 166, column: 5, scope: !638)
!655 = !DILocation(line: 166, column: 19, scope: !627)
!656 = distinct !{!656, !635, !657, !303}
!657 = !DILocation(line: 166, column: 32, scope: !627)
!658 = !DILocation(line: 168, column: 5, scope: !627)
!659 = !DILocation(line: 169, column: 1, scope: !627)
!660 = distinct !DISubprogram(name: "safe_read", scope: !56, file: !56, line: 77, type: !661, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!661 = !DISubroutineType(types: !662)
!662 = !{!58, !663, !46, !12}
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!664 = !DILocalVariable(name: "fd", arg: 1, scope: !660, file: !56, line: 77, type: !663)
!665 = !DILocation(line: 0, scope: !660)
!666 = !DILocalVariable(name: "buf_", arg: 2, scope: !660, file: !56, line: 77, type: !46)
!667 = !DILocalVariable(name: "size", arg: 3, scope: !660, file: !56, line: 77, type: !12)
!668 = !DILocalVariable(name: "buf", scope: !660, file: !56, line: 79, type: !62)
!669 = !DILocation(line: 82, column: 5, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !56, line: 82, column: 5)
!671 = distinct !DILexicalBlock(scope: !660, file: !56, line: 82, column: 5)
!672 = !DILocation(line: 82, column: 5, scope: !671)
!673 = !DILocation(line: 83, column: 5, scope: !660)
!674 = !DILocation(line: 84, column: 9, scope: !675)
!675 = distinct !DILexicalBlock(scope: !660, file: !56, line: 83, column: 8)
!676 = !DILocation(line: 84, column: 26, scope: !675)
!677 = !DILocalVariable(name: "readnb", scope: !660, file: !56, line: 80, type: !58)
!678 = !DILocation(line: 84, column: 47, scope: !675)
!679 = !DILocation(line: 84, column: 61, scope: !675)
!680 = !DILocation(line: 85, column: 17, scope: !675)
!681 = !DILocation(line: 85, column: 23, scope: !675)
!682 = !DILocation(line: 85, column: 32, scope: !675)
!683 = !DILocation(line: 85, column: 35, scope: !675)
!684 = !DILocation(line: 85, column: 41, scope: !675)
!685 = !DILocation(line: 0, scope: !675)
!686 = distinct !{!686, !674, !687, !303}
!687 = !DILocation(line: 85, column: 52, scope: !675)
!688 = !DILocation(line: 86, column: 20, scope: !689)
!689 = distinct !DILexicalBlock(scope: !675, file: !56, line: 86, column: 13)
!690 = !DILocation(line: 86, column: 13, scope: !675)
!691 = !DILocation(line: 87, column: 13, scope: !692)
!692 = distinct !DILexicalBlock(scope: !689, file: !56, line: 86, column: 35)
!693 = !DILocation(line: 89, column: 20, scope: !694)
!694 = distinct !DILexicalBlock(scope: !675, file: !56, line: 89, column: 13)
!695 = !DILocation(line: 89, column: 13, scope: !675)
!696 = !DILocation(line: 90, column: 13, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !56, line: 89, column: 36)
!698 = !DILocation(line: 92, column: 14, scope: !675)
!699 = !DILocation(line: 93, column: 13, scope: !675)
!700 = !DILocation(line: 94, column: 5, scope: !675)
!701 = !DILocation(line: 94, column: 19, scope: !660)
!702 = distinct !{!702, !673, !703, !303}
!703 = !DILocation(line: 94, column: 32, scope: !660)
!704 = !DILocation(line: 96, column: 27, scope: !660)
!705 = !DILocation(line: 96, column: 5, scope: !660)
!706 = !DILocation(line: 97, column: 1, scope: !660)
!707 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !56, file: !56, line: 138, type: !708, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!708 = !DISubroutineType(types: !709)
!709 = !{!52, !46, !47}
!710 = !DILocalVariable(name: "buf", arg: 1, scope: !707, file: !56, line: 138, type: !46)
!711 = !DILocation(line: 0, scope: !707)
!712 = !DILocalVariable(name: "size", arg: 2, scope: !707, file: !56, line: 138, type: !47)
!713 = !DILocation(line: 142, column: 5, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !56, line: 142, column: 5)
!715 = distinct !DILexicalBlock(scope: !707, file: !56, line: 142, column: 5)
!716 = !DILocation(line: 142, column: 5, scope: !715)
!717 = !DILocation(line: 143, column: 5, scope: !707)
!718 = !DILocation(line: 144, column: 46, scope: !719)
!719 = distinct !DILexicalBlock(scope: !707, file: !56, line: 143, column: 8)
!720 = !DILocation(line: 144, column: 18, scope: !719)
!721 = !DILocalVariable(name: "readnb", scope: !707, file: !56, line: 140, type: !52)
!722 = !DILocation(line: 145, column: 5, scope: !719)
!723 = !DILocation(line: 145, column: 21, scope: !707)
!724 = !DILocation(line: 145, column: 25, scope: !707)
!725 = !DILocation(line: 145, column: 29, scope: !707)
!726 = !DILocation(line: 145, column: 35, scope: !707)
!727 = !DILocation(line: 145, column: 44, scope: !707)
!728 = !DILocation(line: 145, column: 47, scope: !707)
!729 = !DILocation(line: 145, column: 53, scope: !707)
!730 = distinct !{!730, !717, !731, !303}
!731 = !DILocation(line: 145, column: 63, scope: !707)
!732 = !DILocation(line: 147, column: 23, scope: !707)
!733 = !DILocation(line: 147, column: 20, scope: !707)
!734 = !DILocation(line: 147, column: 35, scope: !707)
!735 = !DILocation(line: 147, column: 5, scope: !707)
!736 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !56, file: !56, line: 173, type: !35, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !55, retainedNodes: !4)
!737 = !DILocation(line: 175, column: 32, scope: !736)
!738 = !DILocalVariable(name: "errno_save", scope: !736, file: !56, line: 175, type: !663)
!739 = !DILocation(line: 0, scope: !736)
!740 = !DILocalVariable(name: "fodder", scope: !741, file: !56, line: 179, type: !97)
!741 = distinct !DILexicalBlock(scope: !736, file: !56, line: 178, column: 5)
!742 = !DILocation(line: 179, column: 16, scope: !741)
!743 = !DILocation(line: 181, column: 34, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !56, line: 181, column: 6)
!745 = !DILocation(line: 181, column: 6, scope: !744)
!746 = !DILocation(line: 181, column: 57, scope: !744)
!747 = !DILocation(line: 181, column: 6, scope: !741)
!748 = !DILocation(line: 182, column: 33, scope: !749)
!749 = distinct !DILexicalBlock(scope: !744, file: !56, line: 181, column: 63)
!750 = !DILocation(line: 183, column: 6, scope: !749)
!751 = !DILocation(line: 183, column: 12, scope: !749)
!752 = !DILocation(line: 184, column: 6, scope: !749)
!753 = !DILocation(line: 186, column: 29, scope: !741)
!754 = !DILocation(line: 191, column: 10, scope: !755)
!755 = distinct !DILexicalBlock(scope: !736, file: !56, line: 190, column: 9)
!756 = !DILocation(line: 190, column: 39, scope: !755)
!757 = !DILocation(line: 191, column: 51, scope: !755)
!758 = !DILocation(line: 190, column: 9, scope: !736)
!759 = !DILocation(line: 192, column: 9, scope: !760)
!760 = distinct !DILexicalBlock(scope: !755, file: !56, line: 191, column: 58)
!761 = !DILocation(line: 194, column: 5, scope: !736)
!762 = !DILocation(line: 194, column: 11, scope: !736)
!763 = !DILocation(line: 195, column: 1, scope: !736)
!764 = !DILocalVariable(name: "st", scope: !75, file: !56, line: 105, type: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !766, line: 46, size: 1152, elements: !767)
!766 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!767 = !{!768, !770, !772, !774, !776, !778, !780, !781, !782, !784, !786, !788, !796, !797, !798}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !765, file: !766, line: 48, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !10, line: 145, baseType: !14)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !765, file: !766, line: 53, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !10, line: 148, baseType: !14)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !765, file: !766, line: 61, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !10, line: 151, baseType: !14)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !765, file: !766, line: 62, baseType: !775, size: 32, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !10, line: 150, baseType: !11)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !765, file: !766, line: 64, baseType: !777, size: 32, offset: 224)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !10, line: 146, baseType: !11)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !765, file: !766, line: 65, baseType: !779, size: 32, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !10, line: 147, baseType: !11)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !765, file: !766, line: 67, baseType: !52, size: 32, offset: 288)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !765, file: !766, line: 69, baseType: !769, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !765, file: !766, line: 74, baseType: !783, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 152, baseType: !61)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !765, file: !766, line: 78, baseType: !785, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !10, line: 174, baseType: !61)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !765, file: !766, line: 80, baseType: !787, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !10, line: 179, baseType: !61)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !765, file: !766, line: 91, baseType: !789, size: 128, offset: 576)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !790, line: 10, size: 128, elements: !791)
!790 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!791 = !{!792, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !789, file: !790, line: 12, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 160, baseType: !61)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !789, file: !790, line: 16, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !10, line: 196, baseType: !61)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !765, file: !766, line: 92, baseType: !789, size: 128, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !765, file: !766, line: 93, baseType: !789, size: 128, offset: 832)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !765, file: !766, line: 106, baseType: !799, size: 192, offset: 960)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 192, elements: !77)
!800 = !DILocation(line: 105, column: 24, scope: !75)
!801 = !DILocalVariable(name: "device", scope: !75, file: !56, line: 112, type: !802)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!803 = !DILocation(line: 0, scope: !75)
!804 = !DILocation(line: 115, column: 5, scope: !75)
!805 = !DILocation(line: 116, column: 19, scope: !806)
!806 = distinct !DILexicalBlock(scope: !75, file: !56, line: 115, column: 8)
!807 = !DILocation(line: 116, column: 14, scope: !806)
!808 = !DILocalVariable(name: "fd", scope: !75, file: !56, line: 113, type: !52)
!809 = !DILocation(line: 117, column: 16, scope: !810)
!810 = distinct !DILexicalBlock(scope: !806, file: !56, line: 117, column: 13)
!811 = !DILocation(line: 117, column: 13, scope: !806)
!812 = !DILocation(line: 118, column: 17, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !56, line: 118, column: 17)
!814 = distinct !DILexicalBlock(scope: !810, file: !56, line: 117, column: 23)
!815 = !DILocation(line: 118, column: 32, scope: !813)
!816 = !DILocation(line: 118, column: 37, scope: !813)
!817 = !DILocation(line: 118, column: 40, scope: !813)
!818 = !DILocation(line: 118, column: 17, scope: !814)
!819 = !DILocation(line: 120, column: 43, scope: !820)
!820 = distinct !DILexicalBlock(scope: !813, file: !56, line: 118, column: 61)
!821 = !DILocation(line: 120, column: 62, scope: !820)
!822 = !DILocation(line: 120, column: 24, scope: !820)
!823 = !DILocation(line: 122, column: 17, scope: !820)
!824 = !DILocation(line: 124, column: 20, scope: !814)
!825 = !DILocation(line: 125, column: 9, scope: !814)
!826 = !DILocation(line: 125, column: 20, scope: !827)
!827 = distinct !DILexicalBlock(scope: !810, file: !56, line: 125, column: 20)
!828 = !DILocation(line: 125, column: 26, scope: !827)
!829 = !DILocation(line: 125, column: 20, scope: !810)
!830 = !DILocation(line: 126, column: 13, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !56, line: 125, column: 36)
!832 = !DILocation(line: 128, column: 15, scope: !806)
!833 = !DILocation(line: 129, column: 5, scope: !806)
!834 = !DILocation(line: 129, column: 14, scope: !75)
!835 = !DILocation(line: 129, column: 22, scope: !75)
!836 = distinct !{!836, !804, !837, !303}
!837 = !DILocation(line: 129, column: 29, scope: !75)
!838 = !DILocation(line: 131, column: 5, scope: !75)
!839 = !DILocation(line: 131, column: 11, scope: !75)
!840 = !DILocation(line: 132, column: 5, scope: !75)
!841 = !DILocation(line: 134, column: 1, scope: !75)
!842 = distinct !DISubprogram(name: "sodium_memzero", scope: !90, file: !90, line: 58, type: !44, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!843 = !DILocalVariable(name: "pnt", arg: 1, scope: !842, file: !90, line: 58, type: !46)
!844 = !DILocation(line: 0, scope: !842)
!845 = !DILocalVariable(name: "len", arg: 2, scope: !842, file: !90, line: 58, type: !47)
!846 = !DILocalVariable(name: "pnt_", scope: !842, file: !90, line: 72, type: !92)
!847 = !DILocalVariable(name: "i", scope: !842, file: !90, line: 73, type: !12)
!848 = !DILocation(line: 75, column: 5, scope: !842)
!849 = !DILocation(line: 75, column: 14, scope: !842)
!850 = !DILocation(line: 76, column: 15, scope: !851)
!851 = distinct !DILexicalBlock(scope: !842, file: !90, line: 75, column: 21)
!852 = !DILocation(line: 76, column: 9, scope: !851)
!853 = !DILocation(line: 76, column: 19, scope: !851)
!854 = distinct !{!854, !848, !855, !303}
!855 = !DILocation(line: 77, column: 5, scope: !842)
!856 = !DILocation(line: 79, column: 1, scope: !842)
!857 = distinct !DISubprogram(name: "sodium_memcmp", scope: !90, file: !90, line: 82, type: !858, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!858 = !DISubroutineType(types: !859)
!859 = !{!52, !860, !860, !12}
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!863 = !DILocalVariable(name: "b1_", arg: 1, scope: !857, file: !90, line: 82, type: !860)
!864 = !DILocation(line: 0, scope: !857)
!865 = !DILocalVariable(name: "b2_", arg: 2, scope: !857, file: !90, line: 82, type: !860)
!866 = !DILocalVariable(name: "len", arg: 3, scope: !857, file: !90, line: 82, type: !12)
!867 = !DILocalVariable(name: "b1", scope: !857, file: !90, line: 84, type: !94)
!868 = !DILocalVariable(name: "b2", scope: !857, file: !90, line: 85, type: !94)
!869 = !DILocalVariable(name: "d", scope: !857, file: !90, line: 87, type: !63)
!870 = !DILocalVariable(name: "i", scope: !857, file: !90, line: 86, type: !12)
!871 = !DILocation(line: 89, column: 10, scope: !872)
!872 = distinct !DILexicalBlock(scope: !857, file: !90, line: 89, column: 5)
!873 = !DILocation(line: 0, scope: !872)
!874 = !DILocation(line: 89, column: 20, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !90, line: 89, column: 5)
!876 = !DILocation(line: 89, column: 5, scope: !872)
!877 = !DILocation(line: 90, column: 14, scope: !878)
!878 = distinct !DILexicalBlock(scope: !875, file: !90, line: 89, column: 32)
!879 = !DILocation(line: 90, column: 22, scope: !878)
!880 = !DILocation(line: 90, column: 20, scope: !878)
!881 = !DILocation(line: 90, column: 11, scope: !878)
!882 = !DILocation(line: 91, column: 5, scope: !878)
!883 = !DILocation(line: 89, column: 28, scope: !875)
!884 = !DILocation(line: 89, column: 5, scope: !875)
!885 = distinct !{!885, !876, !886, !303}
!886 = !DILocation(line: 91, column: 5, scope: !872)
!887 = !DILocation(line: 92, column: 26, scope: !857)
!888 = !DILocation(line: 92, column: 28, scope: !857)
!889 = !DILocation(line: 92, column: 33, scope: !857)
!890 = !DILocation(line: 92, column: 22, scope: !857)
!891 = !DILocation(line: 92, column: 40, scope: !857)
!892 = !DILocation(line: 92, column: 5, scope: !857)
!893 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !90, file: !90, line: 97, type: !894, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!894 = !DISubroutineType(types: !895)
!895 = !{!896, !897, !47, !898, !47}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!899 = !DILocalVariable(name: "hex", arg: 1, scope: !893, file: !90, line: 97, type: !897)
!900 = !DILocation(line: 0, scope: !893)
!901 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !893, file: !90, line: 97, type: !47)
!902 = !DILocalVariable(name: "bin", arg: 3, scope: !893, file: !90, line: 98, type: !898)
!903 = !DILocalVariable(name: "bin_len", arg: 4, scope: !893, file: !90, line: 98, type: !47)
!904 = !DILocalVariable(name: "i", scope: !893, file: !90, line: 100, type: !12)
!905 = !DILocation(line: 105, column: 17, scope: !906)
!906 = distinct !DILexicalBlock(scope: !893, file: !90, line: 105, column: 9)
!907 = !DILocation(line: 105, column: 33, scope: !906)
!908 = !DILocation(line: 105, column: 57, scope: !906)
!909 = !DILocation(line: 105, column: 47, scope: !906)
!910 = !DILocation(line: 105, column: 9, scope: !893)
!911 = !DILocation(line: 106, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !906, file: !90, line: 105, column: 63)
!913 = !DILocation(line: 108, column: 5, scope: !893)
!914 = !DILocation(line: 108, column: 14, scope: !893)
!915 = !DILocation(line: 109, column: 13, scope: !916)
!916 = distinct !DILexicalBlock(scope: !893, file: !90, line: 108, column: 25)
!917 = !DILocation(line: 109, column: 20, scope: !916)
!918 = !DILocalVariable(name: "c", scope: !893, file: !90, line: 103, type: !52)
!919 = !DILocation(line: 110, column: 13, scope: !916)
!920 = !DILocation(line: 110, column: 20, scope: !916)
!921 = !DILocalVariable(name: "b", scope: !893, file: !90, line: 102, type: !52)
!922 = !DILocation(line: 111, column: 34, scope: !916)
!923 = !DILocation(line: 111, column: 45, scope: !916)
!924 = !DILocation(line: 111, column: 52, scope: !916)
!925 = !DILocation(line: 111, column: 58, scope: !916)
!926 = !DILocation(line: 111, column: 38, scope: !916)
!927 = !DILocation(line: 111, column: 13, scope: !916)
!928 = !DILocation(line: 111, column: 67, scope: !916)
!929 = !DILocation(line: 112, column: 34, scope: !916)
!930 = !DILocation(line: 112, column: 45, scope: !916)
!931 = !DILocation(line: 112, column: 52, scope: !916)
!932 = !DILocation(line: 112, column: 58, scope: !916)
!933 = !DILocation(line: 112, column: 38, scope: !916)
!934 = !DILocation(line: 112, column: 13, scope: !916)
!935 = !DILocation(line: 111, column: 72, scope: !916)
!936 = !DILocalVariable(name: "x", scope: !893, file: !90, line: 101, type: !11)
!937 = !DILocation(line: 113, column: 23, scope: !916)
!938 = !DILocation(line: 113, column: 15, scope: !916)
!939 = !DILocation(line: 113, column: 9, scope: !916)
!940 = !DILocation(line: 113, column: 21, scope: !916)
!941 = !DILocation(line: 114, column: 11, scope: !916)
!942 = !DILocation(line: 115, column: 28, scope: !916)
!943 = !DILocation(line: 115, column: 15, scope: !916)
!944 = !DILocation(line: 115, column: 20, scope: !916)
!945 = !DILocation(line: 115, column: 9, scope: !916)
!946 = !DILocation(line: 115, column: 26, scope: !916)
!947 = !DILocation(line: 116, column: 10, scope: !916)
!948 = distinct !{!948, !913, !949, !303}
!949 = !DILocation(line: 117, column: 5, scope: !893)
!950 = !DILocation(line: 118, column: 11, scope: !893)
!951 = !DILocation(line: 118, column: 5, scope: !893)
!952 = !DILocation(line: 118, column: 17, scope: !893)
!953 = !DILocation(line: 120, column: 5, scope: !893)
!954 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !90, file: !90, line: 124, type: !955, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!955 = !DISubroutineType(types: !956)
!956 = !{!52, !537, !47, !957, !47, !957, !958, !960}
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!961 = !DILocalVariable(name: "bin", arg: 1, scope: !954, file: !90, line: 124, type: !537)
!962 = !DILocation(line: 0, scope: !954)
!963 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !954, file: !90, line: 124, type: !47)
!964 = !DILocalVariable(name: "hex", arg: 3, scope: !954, file: !90, line: 125, type: !957)
!965 = !DILocalVariable(name: "hex_len", arg: 4, scope: !954, file: !90, line: 125, type: !47)
!966 = !DILocalVariable(name: "ignore", arg: 5, scope: !954, file: !90, line: 126, type: !957)
!967 = !DILocalVariable(name: "bin_len", arg: 6, scope: !954, file: !90, line: 126, type: !958)
!968 = !DILocalVariable(name: "hex_end", arg: 7, scope: !954, file: !90, line: 127, type: !960)
!969 = !DILocalVariable(name: "bin_pos", scope: !954, file: !90, line: 129, type: !12)
!970 = !DILocalVariable(name: "hex_pos", scope: !954, file: !90, line: 130, type: !12)
!971 = !DILocalVariable(name: "ret", scope: !954, file: !90, line: 131, type: !52)
!972 = !DILocalVariable(name: "c_acc", scope: !954, file: !90, line: 133, type: !63)
!973 = !DILocalVariable(name: "state", scope: !954, file: !90, line: 137, type: !63)
!974 = !DILocation(line: 139, column: 5, scope: !954)
!975 = !DILocation(line: 129, column: 19, scope: !954)
!976 = !DILocation(line: 139, column: 20, scope: !954)
!977 = !DILocation(line: 140, column: 29, scope: !978)
!978 = distinct !DILexicalBlock(scope: !954, file: !90, line: 139, column: 31)
!979 = !DILocalVariable(name: "c", scope: !954, file: !90, line: 132, type: !63)
!980 = !DILocation(line: 141, column: 17, scope: !978)
!981 = !DILocation(line: 141, column: 19, scope: !978)
!982 = !DILocalVariable(name: "c_num", scope: !954, file: !90, line: 135, type: !63)
!983 = !DILocation(line: 142, column: 19, scope: !978)
!984 = !DILocation(line: 142, column: 25, scope: !978)
!985 = !DILocation(line: 142, column: 32, scope: !978)
!986 = !DILocation(line: 142, column: 18, scope: !978)
!987 = !DILocalVariable(name: "c_num0", scope: !954, file: !90, line: 135, type: !63)
!988 = !DILocation(line: 143, column: 20, scope: !978)
!989 = !DILocation(line: 143, column: 22, scope: !978)
!990 = !DILocation(line: 143, column: 30, scope: !978)
!991 = !DILocation(line: 143, column: 19, scope: !978)
!992 = !DILocalVariable(name: "c_alpha", scope: !954, file: !90, line: 134, type: !63)
!993 = !DILocation(line: 144, column: 22, scope: !978)
!994 = !DILocation(line: 144, column: 30, scope: !978)
!995 = !DILocation(line: 144, column: 40, scope: !978)
!996 = !DILocation(line: 144, column: 48, scope: !978)
!997 = !DILocation(line: 144, column: 37, scope: !978)
!998 = !DILocation(line: 144, column: 56, scope: !978)
!999 = !DILocation(line: 144, column: 20, scope: !978)
!1000 = !DILocalVariable(name: "c_alpha0", scope: !954, file: !90, line: 134, type: !63)
!1001 = !DILocation(line: 145, column: 14, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !978, file: !90, line: 145, column: 13)
!1003 = !DILocation(line: 145, column: 23, scope: !1002)
!1004 = !DILocation(line: 145, column: 21, scope: !1002)
!1005 = !DILocation(line: 145, column: 33, scope: !1002)
!1006 = !DILocation(line: 145, column: 13, scope: !978)
!1007 = !DILocation(line: 146, column: 24, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !90, line: 146, column: 17)
!1009 = distinct !DILexicalBlock(scope: !1002, file: !90, line: 145, column: 40)
!1010 = !DILocation(line: 146, column: 32, scope: !1008)
!1011 = !DILocation(line: 146, column: 35, scope: !1008)
!1012 = !DILocation(line: 146, column: 41, scope: !1008)
!1013 = !DILocation(line: 146, column: 47, scope: !1008)
!1014 = !DILocation(line: 146, column: 65, scope: !1008)
!1015 = !DILocation(line: 146, column: 50, scope: !1008)
!1016 = !DILocation(line: 146, column: 68, scope: !1008)
!1017 = !DILocation(line: 146, column: 17, scope: !1009)
!1018 = !DILocation(line: 147, column: 24, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1008, file: !90, line: 146, column: 77)
!1020 = !DILocation(line: 148, column: 17, scope: !1019)
!1021 = distinct !{!1021, !974, !1022, !303}
!1022 = !DILocation(line: 165, column: 5, scope: !954)
!1023 = !DILocation(line: 150, column: 13, scope: !1009)
!1024 = !DILocation(line: 152, column: 18, scope: !978)
!1025 = !DILocation(line: 152, column: 27, scope: !978)
!1026 = !DILocation(line: 152, column: 25, scope: !978)
!1027 = !DILocation(line: 152, column: 37, scope: !978)
!1028 = !DILocation(line: 152, column: 48, scope: !978)
!1029 = !DILocation(line: 152, column: 46, scope: !978)
!1030 = !DILocation(line: 152, column: 34, scope: !978)
!1031 = !DILocation(line: 152, column: 17, scope: !978)
!1032 = !DILocalVariable(name: "c_val", scope: !954, file: !90, line: 136, type: !63)
!1033 = !DILocation(line: 153, column: 21, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !978, file: !90, line: 153, column: 13)
!1035 = !DILocation(line: 153, column: 13, scope: !978)
!1036 = !DILocation(line: 155, column: 13, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !90, line: 153, column: 36)
!1038 = !DILocation(line: 155, column: 19, scope: !1037)
!1039 = !DILocation(line: 156, column: 13, scope: !1037)
!1040 = !DILocation(line: 158, column: 13, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !978, file: !90, line: 158, column: 13)
!1042 = !DILocation(line: 158, column: 19, scope: !1041)
!1043 = !DILocation(line: 158, column: 13, scope: !978)
!1044 = !DILocation(line: 159, column: 21, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !90, line: 158, column: 26)
!1046 = !DILocation(line: 159, column: 27, scope: !1045)
!1047 = !DILocation(line: 160, column: 9, scope: !1045)
!1048 = !DILocation(line: 161, column: 30, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1041, file: !90, line: 160, column: 16)
!1050 = !DILocation(line: 161, column: 38, scope: !1049)
!1051 = !DILocation(line: 161, column: 36, scope: !1049)
!1052 = !DILocation(line: 161, column: 24, scope: !1049)
!1053 = !DILocation(line: 161, column: 13, scope: !1049)
!1054 = !DILocation(line: 161, column: 28, scope: !1049)
!1055 = !DILocation(line: 163, column: 18, scope: !978)
!1056 = !DILocation(line: 163, column: 17, scope: !978)
!1057 = !DILocation(line: 164, column: 16, scope: !978)
!1058 = !DILocation(line: 166, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !954, file: !90, line: 166, column: 9)
!1060 = !DILocation(line: 166, column: 15, scope: !1059)
!1061 = !DILocation(line: 166, column: 9, scope: !954)
!1062 = !DILocation(line: 167, column: 16, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !90, line: 166, column: 22)
!1064 = !DILocation(line: 168, column: 5, scope: !1063)
!1065 = !DILocation(line: 169, column: 17, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !954, file: !90, line: 169, column: 9)
!1067 = !DILocation(line: 169, column: 9, scope: !954)
!1068 = !DILocation(line: 170, column: 21, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !90, line: 169, column: 26)
!1070 = !DILocation(line: 170, column: 18, scope: !1069)
!1071 = !DILocation(line: 171, column: 5, scope: !1069)
!1072 = !DILocation(line: 172, column: 17, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !954, file: !90, line: 172, column: 9)
!1074 = !DILocation(line: 172, column: 9, scope: !954)
!1075 = !DILocation(line: 173, column: 18, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !90, line: 172, column: 26)
!1077 = !DILocation(line: 174, column: 5, scope: !1076)
!1078 = !DILocation(line: 175, column: 5, scope: !954)
!1079 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !90, file: !90, line: 179, type: !50, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1080 = !DILocation(line: 196, column: 5, scope: !1079)
!1081 = !DILocation(line: 198, column: 5, scope: !1079)
!1082 = distinct !DISubprogram(name: "sodium_mlock", scope: !90, file: !90, line: 202, type: !708, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1083 = !DILocalVariable(name: "addr", arg: 1, scope: !1082, file: !90, line: 202, type: !46)
!1084 = !DILocation(line: 0, scope: !1082)
!1085 = !DILocalVariable(name: "len", arg: 2, scope: !1082, file: !90, line: 202, type: !47)
!1086 = !DILocation(line: 212, column: 5, scope: !1082)
!1087 = !DILocation(line: 212, column: 11, scope: !1082)
!1088 = !DILocation(line: 213, column: 5, scope: !1082)
!1089 = distinct !DISubprogram(name: "sodium_munlock", scope: !90, file: !90, line: 218, type: !708, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1090 = !DILocalVariable(name: "addr", arg: 1, scope: !1089, file: !90, line: 218, type: !46)
!1091 = !DILocation(line: 0, scope: !1089)
!1092 = !DILocalVariable(name: "len", arg: 2, scope: !1089, file: !90, line: 218, type: !47)
!1093 = !DILocation(line: 220, column: 5, scope: !1089)
!1094 = !DILocation(line: 229, column: 5, scope: !1089)
!1095 = !DILocation(line: 229, column: 11, scope: !1089)
!1096 = !DILocation(line: 230, column: 5, scope: !1089)
!1097 = distinct !DISubprogram(name: "sodium_malloc", scope: !90, file: !90, line: 402, type: !1098, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!6, !47}
!1100 = !DILocalVariable(name: "size", arg: 1, scope: !1097, file: !90, line: 402, type: !47)
!1101 = !DILocation(line: 0, scope: !1097)
!1102 = !DILocation(line: 406, column: 16, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !90, line: 406, column: 9)
!1104 = !DILocalVariable(name: "ptr", scope: !1097, file: !90, line: 404, type: !6)
!1105 = !DILocation(line: 406, column: 38, scope: !1103)
!1106 = !DILocation(line: 406, column: 9, scope: !1097)
!1107 = !DILocation(line: 407, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !90, line: 406, column: 47)
!1109 = !DILocation(line: 409, column: 5, scope: !1097)
!1110 = !DILocation(line: 411, column: 5, scope: !1097)
!1111 = !DILocation(line: 412, column: 1, scope: !1097)
!1112 = distinct !DISubprogram(name: "_sodium_malloc", scope: !90, file: !90, line: 353, type: !1098, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1113 = !DILocalVariable(name: "size", arg: 1, scope: !1112, file: !90, line: 353, type: !47)
!1114 = !DILocation(line: 0, scope: !1112)
!1115 = !DILocation(line: 355, column: 12, scope: !1112)
!1116 = !DILocation(line: 355, column: 5, scope: !1112)
!1117 = distinct !DISubprogram(name: "sodium_allocarray", scope: !90, file: !90, line: 415, type: !1118, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!6, !12, !12}
!1120 = !DILocalVariable(name: "count", arg: 1, scope: !1117, file: !90, line: 415, type: !12)
!1121 = !DILocation(line: 0, scope: !1117)
!1122 = !DILocalVariable(name: "size", arg: 2, scope: !1117, file: !90, line: 415, type: !12)
!1123 = !DILocation(line: 419, column: 15, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1117, file: !90, line: 419, column: 9)
!1125 = !DILocation(line: 419, column: 29, scope: !1124)
!1126 = !DILocation(line: 419, column: 58, scope: !1124)
!1127 = !DILocation(line: 419, column: 37, scope: !1124)
!1128 = !DILocation(line: 419, column: 9, scope: !1117)
!1129 = !DILocation(line: 420, column: 9, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1124, file: !90, line: 419, column: 67)
!1131 = !DILocation(line: 420, column: 15, scope: !1130)
!1132 = !DILocation(line: 421, column: 9, scope: !1130)
!1133 = !DILocation(line: 423, column: 24, scope: !1117)
!1134 = !DILocalVariable(name: "total_size", scope: !1117, file: !90, line: 417, type: !12)
!1135 = !DILocation(line: 425, column: 12, scope: !1117)
!1136 = !DILocation(line: 425, column: 5, scope: !1117)
!1137 = !DILocation(line: 426, column: 1, scope: !1117)
!1138 = distinct !DISubprogram(name: "sodium_free", scope: !90, file: !90, line: 430, type: !1139, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !6}
!1141 = !DILocalVariable(name: "ptr", arg: 1, scope: !1138, file: !90, line: 430, type: !6)
!1142 = !DILocation(line: 0, scope: !1138)
!1143 = !DILocation(line: 432, column: 5, scope: !1138)
!1144 = !DILocation(line: 433, column: 1, scope: !1138)
!1145 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !90, file: !90, line: 493, type: !1146, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!52, !6}
!1148 = !DILocalVariable(name: "ptr", arg: 1, scope: !1145, file: !90, line: 493, type: !6)
!1149 = !DILocation(line: 0, scope: !1145)
!1150 = !DILocation(line: 495, column: 12, scope: !1145)
!1151 = !DILocation(line: 495, column: 5, scope: !1145)
!1152 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !90, file: !90, line: 235, type: !1153, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!52, !6, !12}
!1155 = !DILocalVariable(name: "ptr", arg: 1, scope: !1152, file: !90, line: 235, type: !6)
!1156 = !DILocation(line: 0, scope: !1152)
!1157 = !DILocalVariable(name: "size", arg: 2, scope: !1152, file: !90, line: 235, type: !12)
!1158 = !DILocation(line: 243, column: 5, scope: !1152)
!1159 = !DILocation(line: 243, column: 11, scope: !1152)
!1160 = !DILocation(line: 244, column: 5, scope: !1152)
!1161 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !90, file: !90, line: 469, type: !1162, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!52, !6, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1165 = !DILocalVariable(name: "ptr", arg: 1, scope: !1161, file: !90, line: 469, type: !6)
!1166 = !DILocation(line: 0, scope: !1161)
!1167 = !DILocalVariable(name: "cb", arg: 2, scope: !1161, file: !90, line: 469, type: !1164)
!1168 = !DILocation(line: 473, column: 5, scope: !1161)
!1169 = !DILocation(line: 473, column: 11, scope: !1161)
!1170 = !DILocation(line: 474, column: 5, scope: !1161)
!1171 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !90, file: !90, line: 499, type: !1146, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1172 = !DILocalVariable(name: "ptr", arg: 1, scope: !1171, file: !90, line: 499, type: !6)
!1173 = !DILocation(line: 0, scope: !1171)
!1174 = !DILocation(line: 501, column: 12, scope: !1171)
!1175 = !DILocation(line: 501, column: 5, scope: !1171)
!1176 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !90, file: !90, line: 249, type: !1153, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1177 = !DILocalVariable(name: "ptr", arg: 1, scope: !1176, file: !90, line: 249, type: !6)
!1178 = !DILocation(line: 0, scope: !1176)
!1179 = !DILocalVariable(name: "size", arg: 2, scope: !1176, file: !90, line: 249, type: !12)
!1180 = !DILocation(line: 257, column: 5, scope: !1176)
!1181 = !DILocation(line: 257, column: 11, scope: !1176)
!1182 = !DILocation(line: 258, column: 5, scope: !1176)
!1183 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !90, file: !90, line: 505, type: !1146, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1184 = !DILocalVariable(name: "ptr", arg: 1, scope: !1183, file: !90, line: 505, type: !6)
!1185 = !DILocation(line: 0, scope: !1183)
!1186 = !DILocation(line: 507, column: 12, scope: !1183)
!1187 = !DILocation(line: 507, column: 5, scope: !1183)
!1188 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !90, file: !90, line: 263, type: !1153, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !89, retainedNodes: !4)
!1189 = !DILocalVariable(name: "ptr", arg: 1, scope: !1188, file: !90, line: 263, type: !6)
!1190 = !DILocation(line: 0, scope: !1188)
!1191 = !DILocalVariable(name: "size", arg: 2, scope: !1188, file: !90, line: 263, type: !12)
!1192 = !DILocation(line: 271, column: 5, scope: !1188)
!1193 = !DILocation(line: 271, column: 11, scope: !1188)
!1194 = !DILocation(line: 272, column: 5, scope: !1188)
