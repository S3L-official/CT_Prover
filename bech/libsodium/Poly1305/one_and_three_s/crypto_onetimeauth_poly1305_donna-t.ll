; ModuleID = 'crypto_onetimeauth_poly1305_donna-k.ll'
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

@crypto_onetimeauth_poly1305_donna_implementation = dso_local global %struct.crypto_onetimeauth_poly1305_implementation { i8* ()* @crypto_onetimeauth_poly1305_donna_implementation_name, i32 (i8*, i8*, i64, i8*)* @crypto_onetimeauth_poly1305_donna, i32 (i8*, i8*, i64, i8*)* @crypto_onetimeauth_poly1305_donna_verify, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)* @crypto_onetimeauth_poly1305_donna_init, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*, i64)* @crypto_onetimeauth_poly1305_donna_update, i32 (%struct.crypto_onetimeauth_poly1305_state*, i8*)* @crypto_onetimeauth_poly1305_donna_final }, align 8, !dbg !0, !psr.id !77
@.str = private unnamed_addr constant [8 x i8] c"donna32\00", align 1, !psr.id !78
@implementation = internal global %struct.randombytes_implementation* @randombytes_sysrandom_implementation, align 8, !dbg !79, !psr.id !122
@.str.1 = private unnamed_addr constant [20 x i8] c"buf_len <= SIZE_MAX\00", align 1, !psr.id !123
@.str.1.2 = private unnamed_addr constant [53 x i8] c"../libsodium/src/libsodium/randombytes/randombytes.c\00", align 1, !psr.id !124
@__PRETTY_FUNCTION__.randombytes = private unnamed_addr constant [65 x i8] c"void randombytes(unsigned char *const, const unsigned long long)\00", align 1, !psr.id !125
@randombytes_sysrandom_implementation = dso_local global %struct.randombytes_implementation { i8* ()* @randombytes_sysrandom_implementation_name, i32 ()* @randombytes_sysrandom, void ()* @randombytes_sysrandom_stir, i32 (i32)* null, void (i8*, i64)* @randombytes_sysrandom_buf, i32 ()* @randombytes_sysrandom_close }, align 8, !dbg !126, !psr.id !158
@stream = internal global %struct.SysRandom_ { i32 -1, i32 0, i32 0 }, align 4, !dbg !136, !psr.id !159
@.str.6 = private unnamed_addr constant [19 x i8] c"size > (size_t) 0U\00", align 1, !psr.id !160
@.str.4 = private unnamed_addr constant [73 x i8] c"../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c\00", align 1, !psr.id !161
@__PRETTY_FUNCTION__.safe_read = private unnamed_addr constant [50 x i8] c"ssize_t safe_read(const int, void *const, size_t)\00", align 1, !psr.id !162
@.str.3 = private unnamed_addr constant [25 x i8] c"chunk_size > (size_t) 0U\00", align 1, !psr.id !163
@__PRETTY_FUNCTION__.randombytes_linux_getrandom = private unnamed_addr constant [53 x i8] c"int randombytes_linux_getrandom(void *const, size_t)\00", align 1, !psr.id !164
@.str.5 = private unnamed_addr constant [13 x i8] c"size <= 256U\00", align 1, !psr.id !165
@__PRETTY_FUNCTION__._randombytes_linux_getrandom = private unnamed_addr constant [60 x i8] c"int _randombytes_linux_getrandom(void *const, const size_t)\00", align 1, !psr.id !166
@randombytes_sysrandom_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16, !dbg !144, !psr.id !167
@.str.1.5 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1, !psr.id !168
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1, !psr.id !169
@.str.7 = private unnamed_addr constant [10 x i8] c"sysrandom\00", align 1, !psr.id !170
@canary = internal global [16 x i8] zeroinitializer, align 16, !dbg !171, !psr.id !179

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @crypto_onetimeauth_poly1305_donna_implementation_name() #0 !dbg !190 {
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* @.str, i64 0, i64 0, !psr.id !191
  ret i8* %1, !dbg !192, !psr.id !193
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !194 {
  %5 = alloca %struct.crypto_onetimeauth_poly1305_state, align 8, !psr.id !195
  call void @llvm.dbg.value(metadata i8* %0, metadata !196, metadata !DIExpression()), !dbg !197, !psr.id !198
  call void @llvm.dbg.value(metadata i8* %1, metadata !199, metadata !DIExpression()), !dbg !197, !psr.id !200
  call void @llvm.dbg.value(metadata i64 %2, metadata !201, metadata !DIExpression()), !dbg !197, !psr.id !202
  call void @llvm.dbg.value(metadata i8* %3, metadata !203, metadata !DIExpression()), !dbg !197, !psr.id !204
  call void @llvm.dbg.declare(metadata %struct.crypto_onetimeauth_poly1305_state* %5, metadata !205, metadata !DIExpression()), !dbg !206, !psr.id !207
  call void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %3), !dbg !208, !psr.id !209
  call void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %1, i64 %2), !dbg !210, !psr.id !211
  call void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %5, i8* %0), !dbg !212, !psr.id !213
  ret i32 0, !dbg !214, !psr.id !215
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !216 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !217, metadata !DIExpression()), !dbg !218, !psr.id !219
  call void @llvm.dbg.value(metadata i8* %1, metadata !220, metadata !DIExpression()), !dbg !218, !psr.id !221
  call void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !222, !psr.id !223
  ret i32 0, !dbg !224, !psr.id !225
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !226 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !227, metadata !DIExpression()), !dbg !228, !psr.id !229
  call void @llvm.dbg.value(metadata i8* %1, metadata !230, metadata !DIExpression()), !dbg !228, !psr.id !231
  call void @llvm.dbg.value(metadata i64 %2, metadata !232, metadata !DIExpression()), !dbg !228, !psr.id !233
  call void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2), !dbg !234, !psr.id !235
  ret i32 0, !dbg !236, !psr.id !237
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_final(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !238 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !239, metadata !DIExpression()), !dbg !240, !psr.id !241
  call void @llvm.dbg.value(metadata i8* %1, metadata !242, metadata !DIExpression()), !dbg !240, !psr.id !243
  call void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1), !dbg !244, !psr.id !245
  ret i32 0, !dbg !246, !psr.id !247
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_finish(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !248 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !251, metadata !DIExpression()), !dbg !252, !psr.id !253
  call void @llvm.dbg.value(metadata i8* %1, metadata !254, metadata !DIExpression()), !dbg !252, !psr.id !255
  %3 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !256, !psr.id !257
  %4 = bitcast i8* %3 to %struct.poly1305_state_internal_t*, !dbg !258, !psr.id !259
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %4, metadata !260, metadata !DIExpression()), !dbg !252, !psr.id !261
  %5 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !262, !psr.id !264
  %6 = load i64, i64* %5, align 8, !dbg !262, !psr.id !265, !ValueTainted !266
  %7 = icmp ne i64 %6, 0, !dbg !267, !psr.id !268, !ValueTainted !266
  br i1 %7, label %8, label %25, !dbg !269, !psr.id !270, !Tainted !271

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !272, !psr.id !274
  %10 = load i64, i64* %9, align 8, !dbg !272, !psr.id !275, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %10, metadata !276, metadata !DIExpression()), !dbg !277, !psr.id !278
  %11 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !279, !psr.id !280
  %12 = add i64 %10, 1, !dbg !281, !psr.id !282, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %12, metadata !276, metadata !DIExpression()), !dbg !277, !psr.id !283
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %10, !dbg !284, !psr.id !285, !ValueTainted !266
  store i8 1, i8* %13, align 1, !dbg !286, !psr.id !287, !Tainted !271
  br label %14, !dbg !288, !psr.id !289

14:                                               ; preds = %19, %8
  %.0 = phi i64 [ %12, %8 ], [ %20, %19 ], !dbg !277, !psr.id !290, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %.0, metadata !276, metadata !DIExpression()), !dbg !277, !psr.id !291
  %15 = icmp ult i64 %.0, 16, !dbg !292, !psr.id !295, !ValueTainted !266
  br i1 %15, label %16, label %21, !dbg !296, !psr.id !297, !Tainted !271

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !298, !psr.id !299
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 %.0, !dbg !300, !psr.id !301, !ValueTainted !266
  store i8 0, i8* %18, align 1, !dbg !302, !psr.id !303, !Tainted !271
  br label %19, !dbg !300, !psr.id !304

19:                                               ; preds = %16
  %20 = add i64 %.0, 1, !dbg !305, !psr.id !306, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %20, metadata !276, metadata !DIExpression()), !dbg !277, !psr.id !307
  br label %14, !dbg !308, !llvm.loop !309, !psr.id !312

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 5, !dbg !313, !psr.id !314
  store i8 1, i8* %22, align 8, !dbg !315, !psr.id !316
  %23 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 4, !dbg !317, !psr.id !318
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0, !dbg !319, !psr.id !320
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %4, i8* %24, i64 16), !dbg !321, !psr.id !322
  br label %25, !dbg !323, !psr.id !324

25:                                               ; preds = %21, %2
  %26 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !325, !psr.id !326
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 0, !dbg !327, !psr.id !328
  %28 = load i64, i64* %27, align 8, !dbg !327, !psr.id !329, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %28, metadata !330, metadata !DIExpression()), !dbg !252, !psr.id !331
  %29 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !332, !psr.id !333
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %29, i64 0, i64 1, !dbg !334, !psr.id !335
  %31 = load i64, i64* %30, align 8, !dbg !334, !psr.id !336, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %31, metadata !337, metadata !DIExpression()), !dbg !252, !psr.id !338
  %32 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !339, !psr.id !340
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 2, !dbg !341, !psr.id !342
  %34 = load i64, i64* %33, align 8, !dbg !341, !psr.id !343, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %34, metadata !344, metadata !DIExpression()), !dbg !252, !psr.id !345
  %35 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !346, !psr.id !347
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 3, !dbg !348, !psr.id !349
  %37 = load i64, i64* %36, align 8, !dbg !348, !psr.id !350, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %37, metadata !351, metadata !DIExpression()), !dbg !252, !psr.id !352
  %38 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !353, !psr.id !354
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %38, i64 0, i64 4, !dbg !355, !psr.id !356
  %40 = load i64, i64* %39, align 8, !dbg !355, !psr.id !357, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %40, metadata !358, metadata !DIExpression()), !dbg !252, !psr.id !359
  %41 = lshr i64 %31, 26, !dbg !360, !psr.id !361, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %41, metadata !362, metadata !DIExpression()), !dbg !252, !psr.id !363
  %42 = and i64 %31, 67108863, !dbg !364, !psr.id !365, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %42, metadata !337, metadata !DIExpression()), !dbg !252, !psr.id !366
  %43 = add i64 %34, %41, !dbg !367, !psr.id !368, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %43, metadata !344, metadata !DIExpression()), !dbg !252, !psr.id !369
  %44 = lshr i64 %43, 26, !dbg !370, !psr.id !371, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %44, metadata !362, metadata !DIExpression()), !dbg !252, !psr.id !372
  %45 = and i64 %43, 67108863, !dbg !373, !psr.id !374, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %45, metadata !344, metadata !DIExpression()), !dbg !252, !psr.id !375
  %46 = add i64 %37, %44, !dbg !376, !psr.id !377, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %46, metadata !351, metadata !DIExpression()), !dbg !252, !psr.id !378
  %47 = lshr i64 %46, 26, !dbg !379, !psr.id !380, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %47, metadata !362, metadata !DIExpression()), !dbg !252, !psr.id !381
  %48 = and i64 %46, 67108863, !dbg !382, !psr.id !383, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %48, metadata !351, metadata !DIExpression()), !dbg !252, !psr.id !384
  %49 = add i64 %40, %47, !dbg !385, !psr.id !386, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %49, metadata !358, metadata !DIExpression()), !dbg !252, !psr.id !387
  %50 = lshr i64 %49, 26, !dbg !388, !psr.id !389, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %50, metadata !362, metadata !DIExpression()), !dbg !252, !psr.id !390
  %51 = and i64 %49, 67108863, !dbg !391, !psr.id !392, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %51, metadata !358, metadata !DIExpression()), !dbg !252, !psr.id !393
  %52 = mul i64 %50, 5, !dbg !394, !psr.id !395, !ValueTainted !266
  %53 = add i64 %28, %52, !dbg !396, !psr.id !397, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %53, metadata !330, metadata !DIExpression()), !dbg !252, !psr.id !398
  %54 = lshr i64 %53, 26, !dbg !399, !psr.id !400, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %54, metadata !362, metadata !DIExpression()), !dbg !252, !psr.id !401
  %55 = and i64 %53, 67108863, !dbg !402, !psr.id !403, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %55, metadata !330, metadata !DIExpression()), !dbg !252, !psr.id !404
  %56 = add i64 %42, %54, !dbg !405, !psr.id !406, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %56, metadata !337, metadata !DIExpression()), !dbg !252, !psr.id !407
  %57 = add i64 %55, 5, !dbg !408, !psr.id !409, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %57, metadata !410, metadata !DIExpression()), !dbg !252, !psr.id !411
  %58 = lshr i64 %57, 26, !dbg !412, !psr.id !413, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %58, metadata !362, metadata !DIExpression()), !dbg !252, !psr.id !414
  %59 = and i64 %57, 67108863, !dbg !415, !psr.id !416, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %59, metadata !410, metadata !DIExpression()), !dbg !252, !psr.id !417
  %60 = add i64 %56, %58, !dbg !418, !psr.id !419, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %60, metadata !420, metadata !DIExpression()), !dbg !252, !psr.id !421
  %61 = lshr i64 %60, 26, !dbg !422, !psr.id !423, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %61, metadata !362, metadata !DIExpression()), !dbg !252, !psr.id !424
  %62 = and i64 %60, 67108863, !dbg !425, !psr.id !426, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %62, metadata !420, metadata !DIExpression()), !dbg !252, !psr.id !427
  %63 = add i64 %45, %61, !dbg !428, !psr.id !429, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %63, metadata !430, metadata !DIExpression()), !dbg !252, !psr.id !431
  %64 = lshr i64 %63, 26, !dbg !432, !psr.id !433, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %64, metadata !362, metadata !DIExpression()), !dbg !252, !psr.id !434
  %65 = and i64 %63, 67108863, !dbg !435, !psr.id !436, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %65, metadata !430, metadata !DIExpression()), !dbg !252, !psr.id !437
  %66 = add i64 %48, %64, !dbg !438, !psr.id !439, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %66, metadata !440, metadata !DIExpression()), !dbg !252, !psr.id !441
  %67 = lshr i64 %66, 26, !dbg !442, !psr.id !443, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %67, metadata !362, metadata !DIExpression()), !dbg !252, !psr.id !444
  %68 = and i64 %66, 67108863, !dbg !445, !psr.id !446, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %68, metadata !440, metadata !DIExpression()), !dbg !252, !psr.id !447
  %69 = add i64 %51, %67, !dbg !448, !psr.id !449, !ValueTainted !266
  %70 = sub i64 %69, 67108864, !dbg !450, !psr.id !451, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %70, metadata !452, metadata !DIExpression()), !dbg !252, !psr.id !453
  %71 = lshr i64 %70, 63, !dbg !454, !psr.id !455, !ValueTainted !266
  %72 = sub i64 %71, 1, !dbg !456, !psr.id !457, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %72, metadata !458, metadata !DIExpression()), !dbg !252, !psr.id !459
  %73 = and i64 %59, %72, !dbg !460, !psr.id !461, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %73, metadata !410, metadata !DIExpression()), !dbg !252, !psr.id !462
  %74 = and i64 %62, %72, !dbg !463, !psr.id !464, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %74, metadata !420, metadata !DIExpression()), !dbg !252, !psr.id !465
  %75 = and i64 %65, %72, !dbg !466, !psr.id !467, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %75, metadata !430, metadata !DIExpression()), !dbg !252, !psr.id !468
  %76 = and i64 %68, %72, !dbg !469, !psr.id !470, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %76, metadata !440, metadata !DIExpression()), !dbg !252, !psr.id !471
  %77 = and i64 %70, %72, !dbg !472, !psr.id !473, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %77, metadata !452, metadata !DIExpression()), !dbg !252, !psr.id !474
  %78 = xor i64 %72, -1, !dbg !475, !psr.id !476, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %78, metadata !458, metadata !DIExpression()), !dbg !252, !psr.id !477
  %79 = and i64 %55, %78, !dbg !478, !psr.id !479, !ValueTainted !266
  %80 = or i64 %79, %73, !dbg !480, !psr.id !481, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %80, metadata !330, metadata !DIExpression()), !dbg !252, !psr.id !482
  %81 = and i64 %56, %78, !dbg !483, !psr.id !484, !ValueTainted !266
  %82 = or i64 %81, %74, !dbg !485, !psr.id !486, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %82, metadata !337, metadata !DIExpression()), !dbg !252, !psr.id !487
  %83 = and i64 %45, %78, !dbg !488, !psr.id !489, !ValueTainted !266
  %84 = or i64 %83, %75, !dbg !490, !psr.id !491, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %84, metadata !344, metadata !DIExpression()), !dbg !252, !psr.id !492
  %85 = and i64 %48, %78, !dbg !493, !psr.id !494, !ValueTainted !266
  %86 = or i64 %85, %76, !dbg !495, !psr.id !496, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %86, metadata !351, metadata !DIExpression()), !dbg !252, !psr.id !497
  %87 = and i64 %51, %78, !dbg !498, !psr.id !499, !ValueTainted !266
  %88 = or i64 %87, %77, !dbg !500, !psr.id !501, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %88, metadata !358, metadata !DIExpression()), !dbg !252, !psr.id !502
  %89 = shl i64 %82, 26, !dbg !503, !psr.id !504, !ValueTainted !266
  %90 = or i64 %80, %89, !dbg !505, !psr.id !506, !ValueTainted !266
  %91 = and i64 %90, 4294967295, !dbg !507, !psr.id !508, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %91, metadata !330, metadata !DIExpression()), !dbg !252, !psr.id !509
  %92 = lshr i64 %82, 6, !dbg !510, !psr.id !511, !ValueTainted !266
  %93 = shl i64 %84, 20, !dbg !512, !psr.id !513, !ValueTainted !266
  %94 = or i64 %92, %93, !dbg !514, !psr.id !515, !ValueTainted !266
  %95 = and i64 %94, 4294967295, !dbg !516, !psr.id !517, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %95, metadata !337, metadata !DIExpression()), !dbg !252, !psr.id !518
  %96 = lshr i64 %84, 12, !dbg !519, !psr.id !520, !ValueTainted !266
  %97 = shl i64 %86, 14, !dbg !521, !psr.id !522, !ValueTainted !266
  %98 = or i64 %96, %97, !dbg !523, !psr.id !524, !ValueTainted !266
  %99 = and i64 %98, 4294967295, !dbg !525, !psr.id !526, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %99, metadata !344, metadata !DIExpression()), !dbg !252, !psr.id !527
  %100 = lshr i64 %86, 18, !dbg !528, !psr.id !529, !ValueTainted !266
  %101 = shl i64 %88, 8, !dbg !530, !psr.id !531, !ValueTainted !266
  %102 = or i64 %100, %101, !dbg !532, !psr.id !533, !ValueTainted !266
  %103 = and i64 %102, 4294967295, !dbg !534, !psr.id !535, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %103, metadata !351, metadata !DIExpression()), !dbg !252, !psr.id !536
  %104 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !537, !psr.id !538
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %104, i64 0, i64 0, !dbg !539, !psr.id !540
  %106 = load i64, i64* %105, align 8, !dbg !539, !psr.id !541, !ValueTainted !266
  %107 = add i64 %91, %106, !dbg !542, !psr.id !543, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %107, metadata !544, metadata !DIExpression()), !dbg !252, !psr.id !545
  call void @llvm.dbg.value(metadata i64 %107, metadata !330, metadata !DIExpression()), !dbg !252, !psr.id !546
  %108 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !547, !psr.id !548
  %109 = getelementptr inbounds [4 x i64], [4 x i64]* %108, i64 0, i64 1, !dbg !549, !psr.id !550
  %110 = load i64, i64* %109, align 8, !dbg !549, !psr.id !551, !ValueTainted !266
  %111 = add i64 %95, %110, !dbg !552, !psr.id !553, !ValueTainted !266
  %112 = lshr i64 %107, 32, !dbg !554, !psr.id !555, !ValueTainted !266
  %113 = add i64 %111, %112, !dbg !556, !psr.id !557, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %113, metadata !544, metadata !DIExpression()), !dbg !252, !psr.id !558
  call void @llvm.dbg.value(metadata i64 %113, metadata !337, metadata !DIExpression()), !dbg !252, !psr.id !559
  %114 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !560, !psr.id !561
  %115 = getelementptr inbounds [4 x i64], [4 x i64]* %114, i64 0, i64 2, !dbg !562, !psr.id !563
  %116 = load i64, i64* %115, align 8, !dbg !562, !psr.id !564, !ValueTainted !266
  %117 = add i64 %99, %116, !dbg !565, !psr.id !566, !ValueTainted !266
  %118 = lshr i64 %113, 32, !dbg !567, !psr.id !568, !ValueTainted !266
  %119 = add i64 %117, %118, !dbg !569, !psr.id !570, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %119, metadata !544, metadata !DIExpression()), !dbg !252, !psr.id !571
  call void @llvm.dbg.value(metadata i64 %119, metadata !344, metadata !DIExpression()), !dbg !252, !psr.id !572
  %120 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !573, !psr.id !574
  %121 = getelementptr inbounds [4 x i64], [4 x i64]* %120, i64 0, i64 3, !dbg !575, !psr.id !576
  %122 = load i64, i64* %121, align 8, !dbg !575, !psr.id !577, !ValueTainted !266
  %123 = add i64 %103, %122, !dbg !578, !psr.id !579, !ValueTainted !266
  %124 = lshr i64 %119, 32, !dbg !580, !psr.id !581, !ValueTainted !266
  %125 = add i64 %123, %124, !dbg !582, !psr.id !583, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %125, metadata !544, metadata !DIExpression()), !dbg !252, !psr.id !584
  call void @llvm.dbg.value(metadata i64 %125, metadata !351, metadata !DIExpression()), !dbg !252, !psr.id !585
  %126 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !586, !psr.id !587
  call void @U32TO8(i8* %126, i64 %107), !dbg !588, !psr.id !589
  %127 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !590, !psr.id !591
  call void @U32TO8(i8* %127, i64 %113), !dbg !592, !psr.id !593
  %128 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !594, !psr.id !595
  call void @U32TO8(i8* %128, i64 %119), !dbg !596, !psr.id !597
  %129 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !598, !psr.id !599
  call void @U32TO8(i8* %129, i64 %125), !dbg !600, !psr.id !601
  %130 = bitcast %struct.poly1305_state_internal_t* %4 to i8*, !dbg !602, !psr.id !603
  call void @sodium_memzero(i8* %130, i64 144), !dbg !604, !psr.id !605
  ret void, !dbg !606, !psr.id !607
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_blocks(%struct.poly1305_state_internal_t* %0, i8* %1, i64 %2) #0 !dbg !608 {
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %0, metadata !611, metadata !DIExpression()), !dbg !612, !psr.id !613
  call void @llvm.dbg.value(metadata i8* %1, metadata !614, metadata !DIExpression()), !dbg !612, !psr.id !615
  call void @llvm.dbg.value(metadata i64 %2, metadata !616, metadata !DIExpression()), !dbg !612, !psr.id !617
  %4 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 5, !dbg !618, !psr.id !619
  %5 = load i8, i8* %4, align 8, !dbg !618, !psr.id !620, !ValueTainted !266
  %6 = zext i8 %5 to i32, !dbg !621, !psr.id !622, !ValueTainted !266
  %7 = icmp ne i32 %6, 0, !dbg !621, !psr.id !623, !ValueTainted !266
  %8 = zext i1 %7 to i64, !dbg !621, !psr.id !624
  %9 = select i1 %7, i32 0, i32 16777216, !dbg !621, !psr.id !625, !ValueTainted !266
  %10 = sext i32 %9 to i64, !dbg !621, !psr.id !626, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %10, metadata !627, metadata !DIExpression()), !dbg !612, !psr.id !629
  %11 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !630, !psr.id !631
  %12 = getelementptr inbounds [5 x i64], [5 x i64]* %11, i64 0, i64 0, !dbg !632, !psr.id !633
  %13 = load i64, i64* %12, align 8, !dbg !632, !psr.id !634, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %13, metadata !635, metadata !DIExpression()), !dbg !612, !psr.id !636
  %14 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !637, !psr.id !638
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 1, !dbg !639, !psr.id !640
  %16 = load i64, i64* %15, align 8, !dbg !639, !psr.id !641, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %16, metadata !642, metadata !DIExpression()), !dbg !612, !psr.id !643
  %17 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !644, !psr.id !645
  %18 = getelementptr inbounds [5 x i64], [5 x i64]* %17, i64 0, i64 2, !dbg !646, !psr.id !647
  %19 = load i64, i64* %18, align 8, !dbg !646, !psr.id !648, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %19, metadata !649, metadata !DIExpression()), !dbg !612, !psr.id !650
  %20 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !651, !psr.id !652
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 3, !dbg !653, !psr.id !654
  %22 = load i64, i64* %21, align 8, !dbg !653, !psr.id !655, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %22, metadata !656, metadata !DIExpression()), !dbg !612, !psr.id !657
  %23 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 0, !dbg !658, !psr.id !659
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %23, i64 0, i64 4, !dbg !660, !psr.id !661
  %25 = load i64, i64* %24, align 8, !dbg !660, !psr.id !662, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %25, metadata !663, metadata !DIExpression()), !dbg !612, !psr.id !664
  %26 = mul i64 %16, 5, !dbg !665, !psr.id !666, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %26, metadata !667, metadata !DIExpression()), !dbg !612, !psr.id !668
  %27 = mul i64 %19, 5, !dbg !669, !psr.id !670, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %27, metadata !671, metadata !DIExpression()), !dbg !612, !psr.id !672
  %28 = mul i64 %22, 5, !dbg !673, !psr.id !674, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %28, metadata !675, metadata !DIExpression()), !dbg !612, !psr.id !676
  %29 = mul i64 %25, 5, !dbg !677, !psr.id !678, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %29, metadata !679, metadata !DIExpression()), !dbg !612, !psr.id !680
  %30 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !681, !psr.id !682
  %31 = getelementptr inbounds [5 x i64], [5 x i64]* %30, i64 0, i64 0, !dbg !683, !psr.id !684
  %32 = load i64, i64* %31, align 8, !dbg !683, !psr.id !685, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %32, metadata !686, metadata !DIExpression()), !dbg !612, !psr.id !687
  %33 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !688, !psr.id !689
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %33, i64 0, i64 1, !dbg !690, !psr.id !691
  %35 = load i64, i64* %34, align 8, !dbg !690, !psr.id !692, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %35, metadata !693, metadata !DIExpression()), !dbg !612, !psr.id !694
  %36 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !695, !psr.id !696
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %36, i64 0, i64 2, !dbg !697, !psr.id !698
  %38 = load i64, i64* %37, align 8, !dbg !697, !psr.id !699, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %38, metadata !700, metadata !DIExpression()), !dbg !612, !psr.id !701
  %39 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !702, !psr.id !703
  %40 = getelementptr inbounds [5 x i64], [5 x i64]* %39, i64 0, i64 3, !dbg !704, !psr.id !705
  %41 = load i64, i64* %40, align 8, !dbg !704, !psr.id !706, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %41, metadata !707, metadata !DIExpression()), !dbg !612, !psr.id !708
  %42 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !709, !psr.id !710
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 4, !dbg !711, !psr.id !712
  %44 = load i64, i64* %43, align 8, !dbg !711, !psr.id !713, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %44, metadata !714, metadata !DIExpression()), !dbg !612, !psr.id !715
  br label %45, !dbg !716, !psr.id !717

45:                                               ; preds = %47, %3
  %.06 = phi i64 [ %32, %3 ], [ %134, %47 ], !dbg !612, !psr.id !718, !ValueTainted !266
  %.05 = phi i64 [ %35, %3 ], [ %135, %47 ], !dbg !612, !psr.id !719, !ValueTainted !266
  %.04 = phi i64 [ %38, %3 ], [ %124, %47 ], !dbg !612, !psr.id !720, !ValueTainted !266
  %.03 = phi i64 [ %41, %3 ], [ %127, %47 ], !dbg !612, !psr.id !721, !ValueTainted !266
  %.02 = phi i64 [ %2, %3 ], [ %137, %47 ], !psr.id !722, !ValueTainted !266
  %.01 = phi i8* [ %1, %3 ], [ %136, %47 ], !psr.id !723, !ValueTainted !266, !PointTainted !724
  %.0 = phi i64 [ %44, %3 ], [ %130, %47 ], !dbg !612, !psr.id !725, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %.0, metadata !714, metadata !DIExpression()), !dbg !612, !psr.id !726
  call void @llvm.dbg.value(metadata i8* %.01, metadata !614, metadata !DIExpression()), !dbg !612, !psr.id !727
  call void @llvm.dbg.value(metadata i64 %.02, metadata !616, metadata !DIExpression()), !dbg !612, !psr.id !728
  call void @llvm.dbg.value(metadata i64 %.03, metadata !707, metadata !DIExpression()), !dbg !612, !psr.id !729
  call void @llvm.dbg.value(metadata i64 %.04, metadata !700, metadata !DIExpression()), !dbg !612, !psr.id !730
  call void @llvm.dbg.value(metadata i64 %.05, metadata !693, metadata !DIExpression()), !dbg !612, !psr.id !731
  call void @llvm.dbg.value(metadata i64 %.06, metadata !686, metadata !DIExpression()), !dbg !612, !psr.id !732
  %46 = icmp uge i64 %.02, 16, !dbg !733, !psr.id !734, !ValueTainted !266
  br i1 %46, label %47, label %138, !dbg !716, !psr.id !735, !Tainted !271

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, i8* %.01, i64 0, !dbg !736, !psr.id !738
  %49 = call i64 @U8TO32(i8* %48), !dbg !739, !psr.id !740, !ValueTainted !266
  %50 = and i64 %49, 67108863, !dbg !741, !psr.id !742, !ValueTainted !266
  %51 = add i64 %.06, %50, !dbg !743, !psr.id !744, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %51, metadata !686, metadata !DIExpression()), !dbg !612, !psr.id !745
  %52 = getelementptr inbounds i8, i8* %.01, i64 3, !dbg !746, !psr.id !747
  %53 = call i64 @U8TO32(i8* %52), !dbg !748, !psr.id !749, !ValueTainted !266
  %54 = lshr i64 %53, 2, !dbg !750, !psr.id !751, !ValueTainted !266
  %55 = and i64 %54, 67108863, !dbg !752, !psr.id !753, !ValueTainted !266
  %56 = add i64 %.05, %55, !dbg !754, !psr.id !755, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %56, metadata !693, metadata !DIExpression()), !dbg !612, !psr.id !756
  %57 = getelementptr inbounds i8, i8* %.01, i64 6, !dbg !757, !psr.id !758
  %58 = call i64 @U8TO32(i8* %57), !dbg !759, !psr.id !760, !ValueTainted !266
  %59 = lshr i64 %58, 4, !dbg !761, !psr.id !762, !ValueTainted !266
  %60 = and i64 %59, 67108863, !dbg !763, !psr.id !764, !ValueTainted !266
  %61 = add i64 %.04, %60, !dbg !765, !psr.id !766, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %61, metadata !700, metadata !DIExpression()), !dbg !612, !psr.id !767
  %62 = getelementptr inbounds i8, i8* %.01, i64 9, !dbg !768, !psr.id !769
  %63 = call i64 @U8TO32(i8* %62), !dbg !770, !psr.id !771, !ValueTainted !266
  %64 = lshr i64 %63, 6, !dbg !772, !psr.id !773, !ValueTainted !266
  %65 = and i64 %64, 67108863, !dbg !774, !psr.id !775, !ValueTainted !266
  %66 = add i64 %.03, %65, !dbg !776, !psr.id !777, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %66, metadata !707, metadata !DIExpression()), !dbg !612, !psr.id !778
  %67 = getelementptr inbounds i8, i8* %.01, i64 12, !dbg !779, !psr.id !780
  %68 = call i64 @U8TO32(i8* %67), !dbg !781, !psr.id !782, !ValueTainted !266
  %69 = lshr i64 %68, 8, !dbg !783, !psr.id !784, !ValueTainted !266
  %70 = or i64 %69, %10, !dbg !785, !psr.id !786, !ValueTainted !266
  %71 = add i64 %.0, %70, !dbg !787, !psr.id !788, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %71, metadata !714, metadata !DIExpression()), !dbg !612, !psr.id !789
  %72 = mul i64 %51, %13, !dbg !790, !psr.id !791, !ValueTainted !266
  %73 = mul i64 %56, %29, !dbg !792, !psr.id !793, !ValueTainted !266
  %74 = add i64 %72, %73, !dbg !794, !psr.id !795, !ValueTainted !266
  %75 = mul i64 %61, %28, !dbg !796, !psr.id !797, !ValueTainted !266
  %76 = add i64 %74, %75, !dbg !798, !psr.id !799, !ValueTainted !266
  %77 = mul i64 %66, %27, !dbg !800, !psr.id !801, !ValueTainted !266
  %78 = add i64 %76, %77, !dbg !802, !psr.id !803, !ValueTainted !266
  %79 = mul i64 %71, %26, !dbg !804, !psr.id !805, !ValueTainted !266
  %80 = add i64 %78, %79, !dbg !806, !psr.id !807, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %80, metadata !808, metadata !DIExpression()), !dbg !612, !psr.id !809
  %81 = mul i64 %51, %16, !dbg !810, !psr.id !811, !ValueTainted !266
  %82 = mul i64 %56, %13, !dbg !812, !psr.id !813, !ValueTainted !266
  %83 = add i64 %81, %82, !dbg !814, !psr.id !815, !ValueTainted !266
  %84 = mul i64 %61, %29, !dbg !816, !psr.id !817, !ValueTainted !266
  %85 = add i64 %83, %84, !dbg !818, !psr.id !819, !ValueTainted !266
  %86 = mul i64 %66, %28, !dbg !820, !psr.id !821, !ValueTainted !266
  %87 = add i64 %85, %86, !dbg !822, !psr.id !823, !ValueTainted !266
  %88 = mul i64 %71, %27, !dbg !824, !psr.id !825, !ValueTainted !266
  %89 = add i64 %87, %88, !dbg !826, !psr.id !827, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %89, metadata !828, metadata !DIExpression()), !dbg !612, !psr.id !829
  %90 = mul i64 %51, %19, !dbg !830, !psr.id !831, !ValueTainted !266
  %91 = mul i64 %56, %16, !dbg !832, !psr.id !833, !ValueTainted !266
  %92 = add i64 %90, %91, !dbg !834, !psr.id !835, !ValueTainted !266
  %93 = mul i64 %61, %13, !dbg !836, !psr.id !837, !ValueTainted !266
  %94 = add i64 %92, %93, !dbg !838, !psr.id !839, !ValueTainted !266
  %95 = mul i64 %66, %29, !dbg !840, !psr.id !841, !ValueTainted !266
  %96 = add i64 %94, %95, !dbg !842, !psr.id !843, !ValueTainted !266
  %97 = mul i64 %71, %28, !dbg !844, !psr.id !845, !ValueTainted !266
  %98 = add i64 %96, %97, !dbg !846, !psr.id !847, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %98, metadata !848, metadata !DIExpression()), !dbg !612, !psr.id !849
  %99 = mul i64 %51, %22, !dbg !850, !psr.id !851, !ValueTainted !266
  %100 = mul i64 %56, %19, !dbg !852, !psr.id !853, !ValueTainted !266
  %101 = add i64 %99, %100, !dbg !854, !psr.id !855, !ValueTainted !266
  %102 = mul i64 %61, %16, !dbg !856, !psr.id !857, !ValueTainted !266
  %103 = add i64 %101, %102, !dbg !858, !psr.id !859, !ValueTainted !266
  %104 = mul i64 %66, %13, !dbg !860, !psr.id !861, !ValueTainted !266
  %105 = add i64 %103, %104, !dbg !862, !psr.id !863, !ValueTainted !266
  %106 = mul i64 %71, %29, !dbg !864, !psr.id !865, !ValueTainted !266
  %107 = add i64 %105, %106, !dbg !866, !psr.id !867, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %107, metadata !868, metadata !DIExpression()), !dbg !612, !psr.id !869
  %108 = mul i64 %51, %25, !dbg !870, !psr.id !871, !ValueTainted !266
  %109 = mul i64 %56, %22, !dbg !872, !psr.id !873, !ValueTainted !266
  %110 = add i64 %108, %109, !dbg !874, !psr.id !875, !ValueTainted !266
  %111 = mul i64 %61, %19, !dbg !876, !psr.id !877, !ValueTainted !266
  %112 = add i64 %110, %111, !dbg !878, !psr.id !879, !ValueTainted !266
  %113 = mul i64 %66, %16, !dbg !880, !psr.id !881, !ValueTainted !266
  %114 = add i64 %112, %113, !dbg !882, !psr.id !883, !ValueTainted !266
  %115 = mul i64 %71, %13, !dbg !884, !psr.id !885, !ValueTainted !266
  %116 = add i64 %114, %115, !dbg !886, !psr.id !887, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %116, metadata !888, metadata !DIExpression()), !dbg !612, !psr.id !889
  %117 = lshr i64 %80, 26, !dbg !890, !psr.id !891, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %117, metadata !892, metadata !DIExpression()), !dbg !612, !psr.id !893
  %118 = and i64 %80, 67108863, !dbg !894, !psr.id !895, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %118, metadata !686, metadata !DIExpression()), !dbg !612, !psr.id !896
  %119 = add i64 %89, %117, !dbg !897, !psr.id !898, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %119, metadata !828, metadata !DIExpression()), !dbg !612, !psr.id !899
  %120 = lshr i64 %119, 26, !dbg !900, !psr.id !901, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %120, metadata !892, metadata !DIExpression()), !dbg !612, !psr.id !902
  %121 = and i64 %119, 67108863, !dbg !903, !psr.id !904, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %121, metadata !693, metadata !DIExpression()), !dbg !612, !psr.id !905
  %122 = add i64 %98, %120, !dbg !906, !psr.id !907, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %122, metadata !848, metadata !DIExpression()), !dbg !612, !psr.id !908
  %123 = lshr i64 %122, 26, !dbg !909, !psr.id !910, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %123, metadata !892, metadata !DIExpression()), !dbg !612, !psr.id !911
  %124 = and i64 %122, 67108863, !dbg !912, !psr.id !913, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %124, metadata !700, metadata !DIExpression()), !dbg !612, !psr.id !914
  %125 = add i64 %107, %123, !dbg !915, !psr.id !916, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %125, metadata !868, metadata !DIExpression()), !dbg !612, !psr.id !917
  %126 = lshr i64 %125, 26, !dbg !918, !psr.id !919, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %126, metadata !892, metadata !DIExpression()), !dbg !612, !psr.id !920
  %127 = and i64 %125, 67108863, !dbg !921, !psr.id !922, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %127, metadata !707, metadata !DIExpression()), !dbg !612, !psr.id !923
  %128 = add i64 %116, %126, !dbg !924, !psr.id !925, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %128, metadata !888, metadata !DIExpression()), !dbg !612, !psr.id !926
  %129 = lshr i64 %128, 26, !dbg !927, !psr.id !928, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %129, metadata !892, metadata !DIExpression()), !dbg !612, !psr.id !929
  %130 = and i64 %128, 67108863, !dbg !930, !psr.id !931, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %130, metadata !714, metadata !DIExpression()), !dbg !612, !psr.id !932
  %131 = mul i64 %129, 5, !dbg !933, !psr.id !934, !ValueTainted !266
  %132 = add i64 %118, %131, !dbg !935, !psr.id !936, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %132, metadata !686, metadata !DIExpression()), !dbg !612, !psr.id !937
  %133 = lshr i64 %132, 26, !dbg !938, !psr.id !939, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %133, metadata !892, metadata !DIExpression()), !dbg !612, !psr.id !940
  %134 = and i64 %132, 67108863, !dbg !941, !psr.id !942, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %134, metadata !686, metadata !DIExpression()), !dbg !612, !psr.id !943
  %135 = add i64 %121, %133, !dbg !944, !psr.id !945, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %135, metadata !693, metadata !DIExpression()), !dbg !612, !psr.id !946
  %136 = getelementptr inbounds i8, i8* %.01, i64 16, !dbg !947, !psr.id !948, !ValueTainted !266, !PointTainted !724
  call void @llvm.dbg.value(metadata i8* %136, metadata !614, metadata !DIExpression()), !dbg !612, !psr.id !949
  %137 = sub i64 %.02, 16, !dbg !950, !psr.id !951, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %137, metadata !616, metadata !DIExpression()), !dbg !612, !psr.id !952
  br label %45, !dbg !716, !llvm.loop !953, !psr.id !955

138:                                              ; preds = %45
  %139 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !956, !psr.id !957
  %140 = getelementptr inbounds [5 x i64], [5 x i64]* %139, i64 0, i64 0, !dbg !958, !psr.id !959
  store i64 %.06, i64* %140, align 8, !dbg !960, !psr.id !961
  %141 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !962, !psr.id !963
  %142 = getelementptr inbounds [5 x i64], [5 x i64]* %141, i64 0, i64 1, !dbg !964, !psr.id !965
  store i64 %.05, i64* %142, align 8, !dbg !966, !psr.id !967
  %143 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !968, !psr.id !969
  %144 = getelementptr inbounds [5 x i64], [5 x i64]* %143, i64 0, i64 2, !dbg !970, !psr.id !971
  store i64 %.04, i64* %144, align 8, !dbg !972, !psr.id !973
  %145 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !974, !psr.id !975
  %146 = getelementptr inbounds [5 x i64], [5 x i64]* %145, i64 0, i64 3, !dbg !976, !psr.id !977
  store i64 %.03, i64* %146, align 8, !dbg !978, !psr.id !979
  %147 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %0, i32 0, i32 1, !dbg !980, !psr.id !981
  %148 = getelementptr inbounds [5 x i64], [5 x i64]* %147, i64 0, i64 4, !dbg !982, !psr.id !983
  store i64 %.0, i64* %148, align 8, !dbg !984, !psr.id !985
  ret void, !dbg !986, !psr.id !987
}

; Function Attrs: noinline nounwind uwtable
define internal void @U32TO8(i8* %0, i64 %1) #0 !dbg !988 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !991, metadata !DIExpression()), !dbg !992, !psr.id !993
  call void @llvm.dbg.value(metadata i64 %1, metadata !994, metadata !DIExpression()), !dbg !992, !psr.id !995
  %3 = and i64 %1, 255, !dbg !996, !psr.id !997, !ValueTainted !266
  %4 = trunc i64 %3 to i8, !dbg !998, !psr.id !999, !ValueTainted !266
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1000, !psr.id !1001, !PointTainted !724
  store i8 %4, i8* %5, align 1, !dbg !1002, !psr.id !1003
  %6 = lshr i64 %1, 8, !dbg !1004, !psr.id !1005, !ValueTainted !266
  %7 = and i64 %6, 255, !dbg !1006, !psr.id !1007, !ValueTainted !266
  %8 = trunc i64 %7 to i8, !dbg !1008, !psr.id !1009, !ValueTainted !266
  %9 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1010, !psr.id !1011, !PointTainted !724
  store i8 %8, i8* %9, align 1, !dbg !1012, !psr.id !1013
  %10 = lshr i64 %1, 16, !dbg !1014, !psr.id !1015, !ValueTainted !266
  %11 = and i64 %10, 255, !dbg !1016, !psr.id !1017, !ValueTainted !266
  %12 = trunc i64 %11 to i8, !dbg !1018, !psr.id !1019, !ValueTainted !266
  %13 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1020, !psr.id !1021, !PointTainted !724
  store i8 %12, i8* %13, align 1, !dbg !1022, !psr.id !1023
  %14 = lshr i64 %1, 24, !dbg !1024, !psr.id !1025, !ValueTainted !266
  %15 = and i64 %14, 255, !dbg !1026, !psr.id !1027, !ValueTainted !266
  %16 = trunc i64 %15 to i8, !dbg !1028, !psr.id !1029, !ValueTainted !266
  %17 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1030, !psr.id !1031, !PointTainted !724
  store i8 %16, i8* %17, align 1, !dbg !1032, !psr.id !1033
  ret void, !dbg !1034, !psr.id !1035
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @U8TO32(i8* %0) #0 !dbg !1036 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1039, metadata !DIExpression()), !dbg !1040, !psr.id !1041
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1042, !psr.id !1043, !ValueTainted !266, !PointTainted !724
  %3 = load i8, i8* %2, align 1, !dbg !1042, !psr.id !1044, !Tainted !271, !ValueTainted !266
  %4 = zext i8 %3 to i32, !dbg !1042, !psr.id !1045, !ValueTainted !266
  %5 = and i32 %4, 255, !dbg !1046, !psr.id !1047, !ValueTainted !266
  %6 = sext i32 %5 to i64, !dbg !1048, !psr.id !1049, !ValueTainted !266
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1050, !psr.id !1051, !ValueTainted !266, !PointTainted !724
  %8 = load i8, i8* %7, align 1, !dbg !1050, !psr.id !1052, !Tainted !271, !ValueTainted !266
  %9 = zext i8 %8 to i32, !dbg !1050, !psr.id !1053, !ValueTainted !266
  %10 = and i32 %9, 255, !dbg !1054, !psr.id !1055, !ValueTainted !266
  %11 = sext i32 %10 to i64, !dbg !1056, !psr.id !1057, !ValueTainted !266
  %12 = shl i64 %11, 8, !dbg !1058, !psr.id !1059, !ValueTainted !266
  %13 = or i64 %6, %12, !dbg !1060, !psr.id !1061, !ValueTainted !266
  %14 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1062, !psr.id !1063, !ValueTainted !266, !PointTainted !724
  %15 = load i8, i8* %14, align 1, !dbg !1062, !psr.id !1064, !Tainted !271, !ValueTainted !266
  %16 = zext i8 %15 to i32, !dbg !1062, !psr.id !1065, !ValueTainted !266
  %17 = and i32 %16, 255, !dbg !1066, !psr.id !1067, !ValueTainted !266
  %18 = sext i32 %17 to i64, !dbg !1068, !psr.id !1069, !ValueTainted !266
  %19 = shl i64 %18, 16, !dbg !1070, !psr.id !1071, !ValueTainted !266
  %20 = or i64 %13, %19, !dbg !1072, !psr.id !1073, !ValueTainted !266
  %21 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1074, !psr.id !1075, !ValueTainted !266, !PointTainted !724
  %22 = load i8, i8* %21, align 1, !dbg !1074, !psr.id !1076, !Tainted !271, !ValueTainted !266
  %23 = zext i8 %22 to i32, !dbg !1074, !psr.id !1077, !ValueTainted !266
  %24 = and i32 %23, 255, !dbg !1078, !psr.id !1079, !ValueTainted !266
  %25 = sext i32 %24 to i64, !dbg !1080, !psr.id !1081, !ValueTainted !266
  %26 = shl i64 %25, 24, !dbg !1082, !psr.id !1083, !ValueTainted !266
  %27 = or i64 %20, %26, !dbg !1084, !psr.id !1085, !ValueTainted !266
  ret i64 %27, !dbg !1086, !psr.id !1087
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_update(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1, i64 %2) #0 !dbg !1088 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !1091, metadata !DIExpression()), !dbg !1092, !psr.id !1093
  call void @llvm.dbg.value(metadata i8* %1, metadata !1094, metadata !DIExpression()), !dbg !1092, !psr.id !1095
  call void @llvm.dbg.value(metadata i64 %2, metadata !1096, metadata !DIExpression()), !dbg !1092, !psr.id !1097
  %4 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !1098, !psr.id !1099
  %5 = bitcast i8* %4 to %struct.poly1305_state_internal_t*, !dbg !1100, !psr.id !1101
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %5, metadata !1102, metadata !DIExpression()), !dbg !1092, !psr.id !1103
  %6 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1104, !psr.id !1106
  %7 = load i64, i64* %6, align 8, !dbg !1104, !psr.id !1107, !ValueTainted !266
  %8 = icmp ne i64 %7, 0, !dbg !1108, !psr.id !1109, !ValueTainted !266
  br i1 %8, label %9, label %42, !dbg !1110, !psr.id !1111, !Tainted !271

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1112, !psr.id !1114
  %11 = load i64, i64* %10, align 8, !dbg !1112, !psr.id !1115, !ValueTainted !266
  %12 = sub i64 16, %11, !dbg !1116, !psr.id !1117, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %12, metadata !1118, metadata !DIExpression()), !dbg !1119, !psr.id !1120
  %13 = icmp ugt i64 %12, %2, !dbg !1121, !psr.id !1123, !ValueTainted !266
  br i1 %13, label %14, label %15, !dbg !1124, !psr.id !1125, !Tainted !271

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i64 %2, metadata !1118, metadata !DIExpression()), !dbg !1119, !psr.id !1126
  br label %15, !dbg !1127, !psr.id !1128

15:                                               ; preds = %14, %9
  %.0 = phi i64 [ %2, %14 ], [ %12, %9 ], !dbg !1119, !psr.id !1129, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1118, metadata !DIExpression()), !dbg !1119, !psr.id !1130
  call void @llvm.dbg.value(metadata i64 0, metadata !1131, metadata !DIExpression()), !dbg !1092, !psr.id !1132
  br label %16, !dbg !1133, !psr.id !1135

16:                                               ; preds = %26, %15
  %.04 = phi i64 [ 0, %15 ], [ %27, %26 ], !dbg !1136, !psr.id !1137
  call void @llvm.dbg.value(metadata i64 %.04, metadata !1131, metadata !DIExpression()), !dbg !1092, !psr.id !1138
  %17 = icmp ult i64 %.04, %.0, !dbg !1139, !psr.id !1141, !ValueTainted !266
  br i1 %17, label %18, label %28, !dbg !1142, !psr.id !1143, !Tainted !271

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %1, i64 %.04, !dbg !1144, !psr.id !1145, !PointTainted !724
  %20 = load i8, i8* %19, align 1, !dbg !1144, !psr.id !1146, !ValueTainted !266
  %21 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !1147, !psr.id !1148
  %22 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1149, !psr.id !1150
  %23 = load i64, i64* %22, align 8, !dbg !1149, !psr.id !1151, !ValueTainted !266
  %24 = add i64 %23, %.04, !dbg !1152, !psr.id !1153, !ValueTainted !266
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 %24, !dbg !1154, !psr.id !1155, !ValueTainted !266, !PointTainted !724
  store i8 %20, i8* %25, align 1, !dbg !1156, !psr.id !1157, !Tainted !271
  br label %26, !dbg !1154, !psr.id !1158

26:                                               ; preds = %18
  %27 = add i64 %.04, 1, !dbg !1159, !psr.id !1160
  call void @llvm.dbg.value(metadata i64 %27, metadata !1131, metadata !DIExpression()), !dbg !1092, !psr.id !1161
  br label %16, !dbg !1162, !llvm.loop !1163, !psr.id !1165

28:                                               ; preds = %16
  %29 = sub i64 %2, %.0, !dbg !1166, !psr.id !1167, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %29, metadata !1096, metadata !DIExpression()), !dbg !1092, !psr.id !1168
  %30 = getelementptr inbounds i8, i8* %1, i64 %.0, !dbg !1169, !psr.id !1170, !ValueTainted !266, !PointTainted !724
  call void @llvm.dbg.value(metadata i8* %30, metadata !1094, metadata !DIExpression()), !dbg !1092, !psr.id !1171
  %31 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1172, !psr.id !1173
  %32 = load i64, i64* %31, align 8, !dbg !1174, !psr.id !1175, !ValueTainted !266
  %33 = add i64 %32, %.0, !dbg !1174, !psr.id !1176, !ValueTainted !266
  store i64 %33, i64* %31, align 8, !dbg !1174, !psr.id !1177
  %34 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1178, !psr.id !1180
  %35 = load i64, i64* %34, align 8, !dbg !1178, !psr.id !1181, !ValueTainted !266
  %36 = icmp ult i64 %35, 16, !dbg !1182, !psr.id !1183, !ValueTainted !266
  br i1 %36, label %37, label %38, !dbg !1184, !psr.id !1185, !Tainted !271

37:                                               ; preds = %28
  br label %67, !dbg !1186, !psr.id !1187

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !1188, !psr.id !1189
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %39, i64 0, i64 0, !dbg !1190, !psr.id !1191
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %5, i8* %40, i64 16), !dbg !1192, !psr.id !1193
  %41 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1194, !psr.id !1195
  store i64 0, i64* %41, align 8, !dbg !1196, !psr.id !1197
  br label %42, !dbg !1198, !psr.id !1199

42:                                               ; preds = %38, %3
  %.02 = phi i64 [ %29, %38 ], [ %2, %3 ], !psr.id !1200, !ValueTainted !266
  %.01 = phi i8* [ %30, %38 ], [ %1, %3 ], !psr.id !1201, !ValueTainted !266, !PointTainted !724
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1094, metadata !DIExpression()), !dbg !1092, !psr.id !1202
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1096, metadata !DIExpression()), !dbg !1092, !psr.id !1203
  %43 = icmp uge i64 %.02, 16, !dbg !1204, !psr.id !1206, !ValueTainted !266
  br i1 %43, label %44, label %48, !dbg !1207, !psr.id !1208, !Tainted !271

44:                                               ; preds = %42
  %45 = and i64 %.02, -16, !dbg !1209, !psr.id !1211, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %45, metadata !1212, metadata !DIExpression()), !dbg !1213, !psr.id !1214
  call void @poly1305_blocks(%struct.poly1305_state_internal_t* %5, i8* %.01, i64 %45), !dbg !1215, !psr.id !1216
  %46 = getelementptr inbounds i8, i8* %.01, i64 %45, !dbg !1217, !psr.id !1218, !ValueTainted !266, !PointTainted !724
  call void @llvm.dbg.value(metadata i8* %46, metadata !1094, metadata !DIExpression()), !dbg !1092, !psr.id !1219
  %47 = sub i64 %.02, %45, !dbg !1220, !psr.id !1221, !ValueTainted !266
  call void @llvm.dbg.value(metadata i64 %47, metadata !1096, metadata !DIExpression()), !dbg !1092, !psr.id !1222
  br label %48, !dbg !1223, !psr.id !1224

48:                                               ; preds = %44, %42
  %.13 = phi i64 [ %47, %44 ], [ %.02, %42 ], !dbg !1092, !psr.id !1225, !ValueTainted !266
  %.1 = phi i8* [ %46, %44 ], [ %.01, %42 ], !dbg !1092, !psr.id !1226, !ValueTainted !266, !PointTainted !724
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1094, metadata !DIExpression()), !dbg !1092, !psr.id !1227
  call void @llvm.dbg.value(metadata i64 %.13, metadata !1096, metadata !DIExpression()), !dbg !1092, !psr.id !1228
  %49 = icmp ne i64 %.13, 0, !dbg !1229, !psr.id !1231, !ValueTainted !266
  br i1 %49, label %50, label %67, !dbg !1232, !psr.id !1233, !Tainted !271

50:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i64 0, metadata !1131, metadata !DIExpression()), !dbg !1092, !psr.id !1234
  br label %51, !dbg !1235, !psr.id !1238

51:                                               ; preds = %61, %50
  %.15 = phi i64 [ 0, %50 ], [ %62, %61 ], !dbg !1239, !psr.id !1240
  call void @llvm.dbg.value(metadata i64 %.15, metadata !1131, metadata !DIExpression()), !dbg !1092, !psr.id !1241
  %52 = icmp ult i64 %.15, %.13, !dbg !1242, !psr.id !1244, !ValueTainted !266
  br i1 %52, label %53, label %63, !dbg !1245, !psr.id !1246, !Tainted !271

53:                                               ; preds = %51
  %54 = getelementptr inbounds i8, i8* %.1, i64 %.15, !dbg !1247, !psr.id !1248, !ValueTainted !266, !PointTainted !724
  %55 = load i8, i8* %54, align 1, !dbg !1247, !psr.id !1249, !Tainted !271, !ValueTainted !266
  %56 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 4, !dbg !1250, !psr.id !1251
  %57 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1252, !psr.id !1253
  %58 = load i64, i64* %57, align 8, !dbg !1252, !psr.id !1254, !ValueTainted !266
  %59 = add i64 %58, %.15, !dbg !1255, !psr.id !1256, !ValueTainted !266
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %56, i64 0, i64 %59, !dbg !1257, !psr.id !1258, !ValueTainted !266, !PointTainted !724
  store i8 %55, i8* %60, align 1, !dbg !1259, !psr.id !1260, !Tainted !271
  br label %61, !dbg !1257, !psr.id !1261

61:                                               ; preds = %53
  %62 = add i64 %.15, 1, !dbg !1262, !psr.id !1263
  call void @llvm.dbg.value(metadata i64 %62, metadata !1131, metadata !DIExpression()), !dbg !1092, !psr.id !1264
  br label %51, !dbg !1265, !llvm.loop !1266, !psr.id !1268

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %5, i32 0, i32 3, !dbg !1269, !psr.id !1270
  %65 = load i64, i64* %64, align 8, !dbg !1271, !psr.id !1272, !ValueTainted !266
  %66 = add i64 %65, %.13, !dbg !1271, !psr.id !1273, !ValueTainted !266
  store i64 %66, i64* %64, align 8, !dbg !1271, !psr.id !1274
  br label %67, !dbg !1275, !psr.id !1276

67:                                               ; preds = %63, %48, %37
  ret void, !dbg !1277, !psr.id !1278
}

; Function Attrs: noinline nounwind uwtable
define internal void @poly1305_init(%struct.crypto_onetimeauth_poly1305_state* %0, i8* %1) #0 !dbg !1279 {
  call void @llvm.dbg.value(metadata %struct.crypto_onetimeauth_poly1305_state* %0, metadata !1282, metadata !DIExpression()), !dbg !1283, !psr.id !1284
  call void @llvm.dbg.value(metadata i8* %1, metadata !1285, metadata !DIExpression()), !dbg !1283, !psr.id !1286
  %3 = bitcast %struct.crypto_onetimeauth_poly1305_state* %0 to i8*, !dbg !1287, !psr.id !1288
  %4 = bitcast i8* %3 to %struct.poly1305_state_internal_t*, !dbg !1289, !psr.id !1290
  call void @llvm.dbg.value(metadata %struct.poly1305_state_internal_t* %4, metadata !1291, metadata !DIExpression()), !dbg !1283, !psr.id !1292
  %5 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !1293, !psr.id !1294
  %6 = call i64 @U8TO32(i8* %5), !dbg !1295, !psr.id !1296, !ValueTainted !266
  %7 = and i64 %6, 67108863, !dbg !1297, !psr.id !1298, !ValueTainted !266
  %8 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !1299, !psr.id !1300
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* %8, i64 0, i64 0, !dbg !1301, !psr.id !1302
  store i64 %7, i64* %9, align 8, !dbg !1303, !psr.id !1304
  %10 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !1305, !psr.id !1306
  %11 = call i64 @U8TO32(i8* %10), !dbg !1307, !psr.id !1308, !ValueTainted !266
  %12 = lshr i64 %11, 2, !dbg !1309, !psr.id !1310, !ValueTainted !266
  %13 = and i64 %12, 67108611, !dbg !1311, !psr.id !1312, !ValueTainted !266
  %14 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !1313, !psr.id !1314
  %15 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 1, !dbg !1315, !psr.id !1316
  store i64 %13, i64* %15, align 8, !dbg !1317, !psr.id !1318
  %16 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !1319, !psr.id !1320
  %17 = call i64 @U8TO32(i8* %16), !dbg !1321, !psr.id !1322, !ValueTainted !266
  %18 = lshr i64 %17, 4, !dbg !1323, !psr.id !1324, !ValueTainted !266
  %19 = and i64 %18, 67092735, !dbg !1325, !psr.id !1326, !ValueTainted !266
  %20 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !1327, !psr.id !1328
  %21 = getelementptr inbounds [5 x i64], [5 x i64]* %20, i64 0, i64 2, !dbg !1329, !psr.id !1330
  store i64 %19, i64* %21, align 8, !dbg !1331, !psr.id !1332
  %22 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !1333, !psr.id !1334
  %23 = call i64 @U8TO32(i8* %22), !dbg !1335, !psr.id !1336, !ValueTainted !266
  %24 = lshr i64 %23, 6, !dbg !1337, !psr.id !1338, !ValueTainted !266
  %25 = and i64 %24, 66076671, !dbg !1339, !psr.id !1340, !ValueTainted !266
  %26 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !1341, !psr.id !1342
  %27 = getelementptr inbounds [5 x i64], [5 x i64]* %26, i64 0, i64 3, !dbg !1343, !psr.id !1344
  store i64 %25, i64* %27, align 8, !dbg !1345, !psr.id !1346
  %28 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !1347, !psr.id !1348
  %29 = call i64 @U8TO32(i8* %28), !dbg !1349, !psr.id !1350, !ValueTainted !266
  %30 = lshr i64 %29, 8, !dbg !1351, !psr.id !1352, !ValueTainted !266
  %31 = and i64 %30, 1048575, !dbg !1353, !psr.id !1354, !ValueTainted !266
  %32 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 0, !dbg !1355, !psr.id !1356
  %33 = getelementptr inbounds [5 x i64], [5 x i64]* %32, i64 0, i64 4, !dbg !1357, !psr.id !1358
  store i64 %31, i64* %33, align 8, !dbg !1359, !psr.id !1360
  %34 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !1361, !psr.id !1362
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %34, i64 0, i64 0, !dbg !1363, !psr.id !1364
  store i64 0, i64* %35, align 8, !dbg !1365, !psr.id !1366
  %36 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !1367, !psr.id !1368
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %36, i64 0, i64 1, !dbg !1369, !psr.id !1370
  store i64 0, i64* %37, align 8, !dbg !1371, !psr.id !1372
  %38 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !1373, !psr.id !1374
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %38, i64 0, i64 2, !dbg !1375, !psr.id !1376
  store i64 0, i64* %39, align 8, !dbg !1377, !psr.id !1378
  %40 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !1379, !psr.id !1380
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %40, i64 0, i64 3, !dbg !1381, !psr.id !1382
  store i64 0, i64* %41, align 8, !dbg !1383, !psr.id !1384
  %42 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 1, !dbg !1385, !psr.id !1386
  %43 = getelementptr inbounds [5 x i64], [5 x i64]* %42, i64 0, i64 4, !dbg !1387, !psr.id !1388
  store i64 0, i64* %43, align 8, !dbg !1389, !psr.id !1390
  %44 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1391, !psr.id !1392
  %45 = call i64 @U8TO32(i8* %44), !dbg !1393, !psr.id !1394, !ValueTainted !266
  %46 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !1395, !psr.id !1396
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %46, i64 0, i64 0, !dbg !1397, !psr.id !1398
  store i64 %45, i64* %47, align 8, !dbg !1399, !psr.id !1400
  %48 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1401, !psr.id !1402
  %49 = call i64 @U8TO32(i8* %48), !dbg !1403, !psr.id !1404, !ValueTainted !266
  %50 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !1405, !psr.id !1406
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %50, i64 0, i64 1, !dbg !1407, !psr.id !1408
  store i64 %49, i64* %51, align 8, !dbg !1409, !psr.id !1410
  %52 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1411, !psr.id !1412
  %53 = call i64 @U8TO32(i8* %52), !dbg !1413, !psr.id !1414, !ValueTainted !266
  %54 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !1415, !psr.id !1416
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %54, i64 0, i64 2, !dbg !1417, !psr.id !1418
  store i64 %53, i64* %55, align 8, !dbg !1419, !psr.id !1420
  %56 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !1421, !psr.id !1422
  %57 = call i64 @U8TO32(i8* %56), !dbg !1423, !psr.id !1424, !ValueTainted !266
  %58 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 2, !dbg !1425, !psr.id !1426
  %59 = getelementptr inbounds [4 x i64], [4 x i64]* %58, i64 0, i64 3, !dbg !1427, !psr.id !1428
  store i64 %57, i64* %59, align 8, !dbg !1429, !psr.id !1430
  %60 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 3, !dbg !1431, !psr.id !1432
  store i64 0, i64* %60, align 8, !dbg !1433, !psr.id !1434
  %61 = getelementptr inbounds %struct.poly1305_state_internal_t, %struct.poly1305_state_internal_t* %4, i32 0, i32 5, !dbg !1435, !psr.id !1436
  store i8 0, i8* %61, align 8, !dbg !1437, !psr.id !1438
  ret void, !dbg !1439, !psr.id !1440
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_wrapper(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !1441 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1442, metadata !DIExpression()), !dbg !1443, !psr.id !1444
  call void @llvm.dbg.value(metadata i8* %1, metadata !1445, metadata !DIExpression()), !dbg !1443, !psr.id !1446
  call void @llvm.dbg.value(metadata i64 %2, metadata !1447, metadata !DIExpression()), !dbg !1443, !psr.id !1448
  call void @llvm.dbg.value(metadata i8* %3, metadata !1449, metadata !DIExpression()), !dbg !1443, !psr.id !1450
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !1451, !psr.id !1452
  call void @public_in(%struct.smack_value* %5), !dbg !1453, !psr.id !1454
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1455, !psr.id !1456
  call void @public_in(%struct.smack_value* %6), !dbg !1457, !psr.id !1458
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !1459, !psr.id !1460
  call void @public_in(%struct.smack_value* %7), !dbg !1461, !psr.id !1462
  %8 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !1463, !psr.id !1464
  call void @public_in(%struct.smack_value* %8), !dbg !1465, !psr.id !1466
  %9 = call i32 @crypto_onetimeauth_poly1305_donna(i8* %0, i8* %1, i64 %2, i8* %3), !dbg !1467, !psr.id !1468
  ret i32 %9, !dbg !1469, !psr.id !1470
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_onetimeauth_poly1305_donna_wrapper_t() #0 !dbg !1471 {
  %1 = alloca i8, align 1, !psr.id !1472
  %2 = alloca i8, align 1, !psr.id !1473
  %3 = alloca i8, align 1, !psr.id !1474
  call void @llvm.dbg.declare(metadata i8* %1, metadata !1475, metadata !DIExpression()), !dbg !1476, !psr.id !1477
  %4 = call zeroext i8 (...) @gout(), !dbg !1478, !psr.id !1479
  store i8 %4, i8* %1, align 1, !dbg !1476, !psr.id !1480
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1481, metadata !DIExpression()), !dbg !1482, !psr.id !1483
  %5 = call zeroext i8 (...) @gin(), !dbg !1484, !psr.id !1485
  store i8 %5, i8* %2, align 1, !dbg !1482, !psr.id !1486
  call void @llvm.dbg.declare(metadata i8* %3, metadata !1487, metadata !DIExpression()), !dbg !1488, !psr.id !1489
  %6 = call zeroext i8 (...) @gk(), !dbg !1490, !psr.id !1491
  store i8 %6, i8* %3, align 1, !dbg !1488, !psr.id !1492
  %7 = call zeroext i8 (...) @gc(), !dbg !1493, !psr.id !1494
  call void @llvm.dbg.value(metadata i8 %7, metadata !1495, metadata !DIExpression()), !dbg !1496, !psr.id !1497
  call void @llvm.dbg.value(metadata i8* %1, metadata !1498, metadata !DIExpression()), !dbg !1496, !psr.id !1499
  call void @llvm.dbg.value(metadata i8* %2, metadata !1500, metadata !DIExpression()), !dbg !1496, !psr.id !1501
  call void @llvm.dbg.value(metadata i8* %3, metadata !1502, metadata !DIExpression()), !dbg !1496, !psr.id !1503
  %8 = call i64 (...) @gclen(), !dbg !1504, !psr.id !1505
  call void @llvm.dbg.value(metadata i64 %8, metadata !1506, metadata !DIExpression()), !dbg !1496, !psr.id !1507
  %9 = call i32 @crypto_onetimeauth_poly1305_donna(i8* %1, i8* %2, i64 %8, i8* %3), !dbg !1508, !psr.id !1509
  ret void, !dbg !1510, !psr.id !1511
}

declare dso_local zeroext i8 @gout(...) #2

declare dso_local zeroext i8 @gin(...) #2

declare dso_local zeroext i8 @gk(...) #2

declare dso_local zeroext i8 @gc(...) #2

declare dso_local i64 @gclen(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !1512 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !1516, metadata !DIExpression()), !dbg !1517, !psr.id !1518
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation, align 8, !dbg !1519, !psr.id !1520
  ret i32 0, !dbg !1521, !psr.id !1522
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !1523 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1524, !psr.id !1525
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !1526, !psr.id !1527
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !1526, !psr.id !1528
  %4 = call i8* %3(), !dbg !1524, !psr.id !1529
  ret i8* %4, !dbg !1530, !psr.id !1531
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !1532 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1533, !psr.id !1534
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !1535, !psr.id !1536
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !1535, !psr.id !1537
  %4 = call i32 %3(), !dbg !1533, !psr.id !1538
  ret i32 %4, !dbg !1539, !psr.id !1540
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !1541 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1542, !psr.id !1544
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !1545, !psr.id !1546
  br i1 %2, label %3, label %12, !dbg !1547, !psr.id !1548

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1549, !psr.id !1550
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !1551, !psr.id !1552
  %6 = load void ()*, void ()** %5, align 8, !dbg !1551, !psr.id !1553
  %7 = icmp ne void ()* %6, null, !dbg !1554, !psr.id !1555
  br i1 %7, label %8, label %12, !dbg !1556, !psr.id !1557

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1558, !psr.id !1560
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !1561, !psr.id !1562
  %11 = load void ()*, void ()** %10, align 8, !dbg !1561, !psr.id !1563
  call void %11(), !dbg !1558, !psr.id !1564
  br label %12, !dbg !1565, !psr.id !1566

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !1567, !psr.id !1568
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !1569 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1570, metadata !DIExpression()), !dbg !1571, !psr.id !1572
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1573, !psr.id !1575
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !1576, !psr.id !1577
  br i1 %3, label %4, label %14, !dbg !1578, !psr.id !1579

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1580, !psr.id !1581
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !1582, !psr.id !1583
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !1582, !psr.id !1584
  %8 = icmp ne i32 (i32)* %7, null, !dbg !1585, !psr.id !1586
  br i1 %8, label %9, label %14, !dbg !1587, !psr.id !1588

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1589, !psr.id !1591
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !1592, !psr.id !1593
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !1592, !psr.id !1594
  %13 = call i32 %12(i32 %0), !dbg !1589, !psr.id !1595
  br label %26, !dbg !1596, !psr.id !1597

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !1598, !psr.id !1600
  br i1 %15, label %16, label %17, !dbg !1601, !psr.id !1602

16:                                               ; preds = %14
  br label %26, !dbg !1603, !psr.id !1605

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !1606, !psr.id !1607
  %19 = urem i32 %18, %0, !dbg !1608, !psr.id !1609
  call void @llvm.dbg.value(metadata i32 %19, metadata !1610, metadata !DIExpression()), !dbg !1571, !psr.id !1611
  br label %20, !dbg !1612, !psr.id !1613

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !1614, !psr.id !1616
  call void @llvm.dbg.value(metadata i32 %21, metadata !1617, metadata !DIExpression()), !dbg !1571, !psr.id !1618
  br label %22, !dbg !1619, !psr.id !1620

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !1621, !psr.id !1622
  br i1 %23, label %20, label %24, !dbg !1619, !llvm.loop !1623, !psr.id !1625

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !1626, !psr.id !1627
  br label %26, !dbg !1628, !psr.id !1629

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !1571, !psr.id !1630
  ret i32 %.0, !dbg !1631, !psr.id !1632
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !1633 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1634, metadata !DIExpression()), !dbg !1635, !psr.id !1636
  call void @llvm.dbg.value(metadata i64 %1, metadata !1637, metadata !DIExpression()), !dbg !1635, !psr.id !1638
  %3 = icmp ugt i64 %1, 0, !dbg !1639, !psr.id !1641
  br i1 %3, label %4, label %8, !dbg !1642, !psr.id !1643

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1644, !psr.id !1646
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !1647, !psr.id !1648
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !1647, !psr.id !1649
  call void %7(i8* %0, i64 %1), !dbg !1644, !psr.id !1650
  br label %8, !dbg !1651, !psr.id !1652

8:                                                ; preds = %4, %2
  ret void, !dbg !1653, !psr.id !1654
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !1655 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1656, !psr.id !1658
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !1659, !psr.id !1660
  br i1 %2, label %3, label %13, !dbg !1661, !psr.id !1662

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1663, !psr.id !1664
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !1665, !psr.id !1666
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !1665, !psr.id !1667
  %7 = icmp ne i32 ()* %6, null, !dbg !1668, !psr.id !1669
  br i1 %7, label %8, label %13, !dbg !1670, !psr.id !1671

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1672, !psr.id !1674
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !1675, !psr.id !1676
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !1675, !psr.id !1677
  %12 = call i32 %11(), !dbg !1672, !psr.id !1678
  br label %14, !dbg !1679, !psr.id !1680

13:                                               ; preds = %3, %0
  br label %14, !dbg !1681, !psr.id !1682

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !1683, !psr.id !1684
  ret i32 %.0, !dbg !1685, !psr.id !1686
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !1687 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1692, metadata !DIExpression()), !dbg !1693, !psr.id !1694
  call void @llvm.dbg.value(metadata i64 %1, metadata !1695, metadata !DIExpression()), !dbg !1693, !psr.id !1696
  %3 = icmp ule i64 %1, -1, !dbg !1697, !psr.id !1700
  br i1 %3, label %4, label %5, !dbg !1701, !psr.id !1702

4:                                                ; preds = %2
  br label %9, !dbg !1701, !psr.id !1703

5:                                                ; preds = %2
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* @.str.1, i64 0, i64 0, !psr.id !1704
  %7 = getelementptr inbounds [53 x i8], [53 x i8]* @.str.1.2, i64 0, i64 0, !psr.id !1705
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0, !psr.id !1706
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !1697, !psr.id !1707
  unreachable, !dbg !1697, !psr.id !1708

9:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !1709, !psr.id !1710
  ret void, !dbg !1711, !psr.id !1712
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !1713 {
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.7, i64 0, i64 0, !psr.id !1714
  ret i8* %1, !dbg !1715, !psr.id !1716
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !1717 {
  %1 = alloca i32, align 4, !psr.id !1718
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1719, metadata !DIExpression()), !dbg !1720, !psr.id !1721
  %2 = bitcast i32* %1 to i8*, !dbg !1722, !psr.id !1723
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !1724, !psr.id !1725
  %3 = load i32, i32* %1, align 4, !dbg !1726, !psr.id !1727
  ret i32 %3, !dbg !1728, !psr.id !1729
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !1730 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !1731
  %2 = load i32, i32* %1, align 4, !dbg !1732, !psr.id !1734
  %3 = icmp eq i32 %2, 0, !dbg !1735, !psr.id !1736
  br i1 %3, label %4, label %6, !dbg !1737, !psr.id !1738

4:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !1739, !psr.id !1741
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !1742
  store i32 1, i32* %5, align 4, !dbg !1743, !psr.id !1744
  br label %6, !dbg !1745, !psr.id !1746

6:                                                ; preds = %4, %0
  ret void, !dbg !1747, !psr.id !1748
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !1749 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1750, metadata !DIExpression()), !dbg !1751, !psr.id !1752
  call void @llvm.dbg.value(metadata i64 %1, metadata !1753, metadata !DIExpression()), !dbg !1751, !psr.id !1754
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !1755, !psr.id !1756
  %3 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !1757
  %4 = load i32, i32* %3, align 4, !dbg !1758, !psr.id !1760
  %5 = icmp ne i32 %4, 0, !dbg !1761, !psr.id !1762
  br i1 %5, label %6, label %11, !dbg !1763, !psr.id !1764

6:                                                ; preds = %2
  %7 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !1765, !psr.id !1768
  %8 = icmp ne i32 %7, 0, !dbg !1769, !psr.id !1770
  br i1 %8, label %9, label %10, !dbg !1771, !psr.id !1772

9:                                                ; preds = %6
  call void @abort() #8, !dbg !1773, !psr.id !1775
  br label %UnifiedUnreachableBlock, !psr.id !1776

10:                                               ; preds = %6
  br label %21, !dbg !1777, !psr.id !1778

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1779
  %13 = load i32, i32* %12, align 4, !dbg !1780, !psr.id !1782
  %14 = icmp eq i32 %13, -1, !dbg !1783, !psr.id !1784
  br i1 %14, label %20, label %15, !dbg !1785, !psr.id !1786

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1787
  %17 = load i32, i32* %16, align 4, !dbg !1788, !psr.id !1789
  %18 = call i64 @safe_read(i32 %17, i8* %0, i64 %1), !dbg !1790, !psr.id !1791
  %19 = icmp ne i64 %18, %1, !dbg !1792, !psr.id !1793
  br i1 %19, label %20, label %21, !dbg !1794, !psr.id !1795

20:                                               ; preds = %15, %11
  call void @abort() #8, !dbg !1796, !psr.id !1798
  br label %UnifiedUnreachableBlock, !psr.id !1799

21:                                               ; preds = %15, %10
  ret void, !dbg !1800, !psr.id !1801

UnifiedUnreachableBlock:                          ; preds = %20, %9
  unreachable, !psr.id !1802
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !1803 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !1804, metadata !DIExpression()), !dbg !1805, !psr.id !1806
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1807
  %2 = load i32, i32* %1, align 4, !dbg !1808, !psr.id !1810
  %3 = icmp ne i32 %2, -1, !dbg !1811, !psr.id !1812
  br i1 %3, label %4, label %12, !dbg !1813, !psr.id !1814

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1815
  %6 = load i32, i32* %5, align 4, !dbg !1816, !psr.id !1817
  %7 = call i32 @close(i32 %6), !dbg !1818, !psr.id !1819
  %8 = icmp eq i32 %7, 0, !dbg !1820, !psr.id !1821
  br i1 %8, label %9, label %12, !dbg !1822, !psr.id !1823

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1824
  store i32 -1, i32* %10, align 4, !dbg !1825, !psr.id !1827
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !1828
  store i32 0, i32* %11, align 4, !dbg !1829, !psr.id !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !1804, metadata !DIExpression()), !dbg !1805, !psr.id !1831
  br label %12, !dbg !1832, !psr.id !1833

12:                                               ; preds = %9, %4, %0
  %.0 = phi i32 [ 0, %9 ], [ -1, %4 ], [ -1, %0 ], !dbg !1805, !psr.id !1834
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1804, metadata !DIExpression()), !dbg !1805, !psr.id !1835
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !1836
  %14 = load i32, i32* %13, align 4, !dbg !1837, !psr.id !1839
  %15 = icmp ne i32 %14, 0, !dbg !1840, !psr.id !1841
  br i1 %15, label %16, label %17, !dbg !1842, !psr.id !1843

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !1804, metadata !DIExpression()), !dbg !1805, !psr.id !1844
  br label %17, !dbg !1845, !psr.id !1847

17:                                               ; preds = %16, %12
  %.1 = phi i32 [ 0, %16 ], [ %.0, %12 ], !dbg !1805, !psr.id !1848
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1804, metadata !DIExpression()), !dbg !1805, !psr.id !1849
  ret i32 %.1, !dbg !1850, !psr.id !1851
}

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !1852 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !1853
  %2 = load i32, i32* %1, align 4, !dbg !1854, !psr.id !1856
  %3 = icmp eq i32 %2, 0, !dbg !1857, !psr.id !1858
  br i1 %3, label %4, label %5, !dbg !1859, !psr.id !1860

4:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !1861, !psr.id !1863
  br label %5, !dbg !1864, !psr.id !1865

5:                                                ; preds = %4, %0
  ret void, !dbg !1866, !psr.id !1867
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !1868 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1871, metadata !DIExpression()), !dbg !1872, !psr.id !1873
  call void @llvm.dbg.value(metadata i64 %1, metadata !1874, metadata !DIExpression()), !dbg !1872, !psr.id !1875
  call void @llvm.dbg.value(metadata i8* %0, metadata !1876, metadata !DIExpression()), !dbg !1872, !psr.id !1877
  call void @llvm.dbg.value(metadata i64 256, metadata !1878, metadata !DIExpression()), !dbg !1872, !psr.id !1879
  br label %3, !dbg !1880, !psr.id !1881

3:                                                ; preds = %20, %2
  %.03 = phi i8* [ %0, %2 ], [ %19, %20 ], !dbg !1872, !psr.id !1882
  %.02 = phi i64 [ %1, %2 ], [ %18, %20 ], !psr.id !1883
  %.01 = phi i64 [ 256, %2 ], [ %.1, %20 ], !dbg !1872, !psr.id !1884
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1878, metadata !DIExpression()), !dbg !1872, !psr.id !1885
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1874, metadata !DIExpression()), !dbg !1872, !psr.id !1886
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1876, metadata !DIExpression()), !dbg !1872, !psr.id !1887
  %4 = icmp ult i64 %.02, %.01, !dbg !1888, !psr.id !1891
  br i1 %4, label %5, label %13, !dbg !1892, !psr.id !1893

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1878, metadata !DIExpression()), !dbg !1872, !psr.id !1894
  %6 = icmp ugt i64 %.02, 0, !dbg !1895, !psr.id !1899
  br i1 %6, label %7, label %8, !dbg !1900, !psr.id !1901

7:                                                ; preds = %5
  br label %12, !dbg !1900, !psr.id !1902

8:                                                ; preds = %5
  %9 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.3, i64 0, i64 0, !psr.id !1903
  %10 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !1904
  %11 = getelementptr inbounds [53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0, !psr.id !1905
  call void @__assert_fail(i8* %9, i8* %10, i32 159, i8* %11) #8, !dbg !1895, !psr.id !1906
  unreachable, !dbg !1895, !psr.id !1907

12:                                               ; preds = %7
  br label %13, !dbg !1908, !psr.id !1909

13:                                               ; preds = %12, %3
  %.1 = phi i64 [ %.02, %12 ], [ %.01, %3 ], !dbg !1872, !psr.id !1910
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1878, metadata !DIExpression()), !dbg !1872, !psr.id !1911
  %14 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !1912, !psr.id !1914
  %15 = icmp ne i32 %14, 0, !dbg !1915, !psr.id !1916
  br i1 %15, label %16, label %17, !dbg !1917, !psr.id !1918

16:                                               ; preds = %13
  br label %23, !dbg !1919, !psr.id !1921

17:                                               ; preds = %13
  %18 = sub i64 %.02, %.1, !dbg !1922, !psr.id !1923
  call void @llvm.dbg.value(metadata i64 %18, metadata !1874, metadata !DIExpression()), !dbg !1872, !psr.id !1924
  %19 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !1925, !psr.id !1926
  call void @llvm.dbg.value(metadata i8* %19, metadata !1876, metadata !DIExpression()), !dbg !1872, !psr.id !1927
  br label %20, !dbg !1928, !psr.id !1929

20:                                               ; preds = %17
  %21 = icmp ugt i64 %18, 0, !dbg !1930, !psr.id !1931
  br i1 %21, label %3, label %22, !dbg !1928, !llvm.loop !1932, !psr.id !1934

22:                                               ; preds = %20
  br label %23, !dbg !1935, !psr.id !1936

23:                                               ; preds = %22, %16
  %.0 = phi i32 [ -1, %16 ], [ 0, %22 ], !dbg !1872, !psr.id !1937
  ret i32 %.0, !dbg !1938, !psr.id !1939
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !1940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1944, metadata !DIExpression()), !dbg !1945, !psr.id !1946
  call void @llvm.dbg.value(metadata i8* %1, metadata !1947, metadata !DIExpression()), !dbg !1945, !psr.id !1948
  call void @llvm.dbg.value(metadata i64 %2, metadata !1949, metadata !DIExpression()), !dbg !1945, !psr.id !1950
  call void @llvm.dbg.value(metadata i8* %1, metadata !1951, metadata !DIExpression()), !dbg !1945, !psr.id !1952
  %4 = icmp ugt i64 %2, 0, !dbg !1953, !psr.id !1956
  br i1 %4, label %5, label %6, !dbg !1957, !psr.id !1958

5:                                                ; preds = %3
  br label %10, !dbg !1957, !psr.id !1959

6:                                                ; preds = %3
  %7 = getelementptr inbounds [19 x i8], [19 x i8]* @.str.6, i64 0, i64 0, !psr.id !1960
  %8 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !1961
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0, !psr.id !1962
  call void @__assert_fail(i8* %7, i8* %8, i32 82, i8* %9) #8, !dbg !1953, !psr.id !1963
  unreachable, !dbg !1953, !psr.id !1964

10:                                               ; preds = %5
  br label %11, !dbg !1965, !psr.id !1966

11:                                               ; preds = %37, %10
  %.02 = phi i64 [ %2, %10 ], [ %35, %37 ], !psr.id !1967
  %.01 = phi i8* [ %1, %10 ], [ %36, %37 ], !dbg !1945, !psr.id !1968
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1951, metadata !DIExpression()), !dbg !1945, !psr.id !1969
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1949, metadata !DIExpression()), !dbg !1945, !psr.id !1970
  br label %12, !dbg !1971, !psr.id !1973

12:                                               ; preds = %27, %11
  %13 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !1974, !psr.id !1975
  call void @llvm.dbg.value(metadata i64 %13, metadata !1976, metadata !DIExpression()), !dbg !1945, !psr.id !1977
  %14 = icmp slt i64 %13, 0, !dbg !1978, !psr.id !1979
  br i1 %14, label %15, label %25, !dbg !1980, !psr.id !1981

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #9, !dbg !1982, !psr.id !1983
  %17 = load i32, i32* %16, align 4, !dbg !1982, !psr.id !1984
  %18 = icmp eq i32 %17, 4, !dbg !1985, !psr.id !1986
  br i1 %18, label %23, label %19, !dbg !1987, !psr.id !1988

19:                                               ; preds = %15
  %20 = call i32* @__errno_location() #9, !dbg !1989, !psr.id !1990
  %21 = load i32, i32* %20, align 4, !dbg !1989, !psr.id !1991
  %22 = icmp eq i32 %21, 11, !dbg !1992, !psr.id !1993
  br label %23, !dbg !1987, !psr.id !1994

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ], !psr.id !1995
  br label %25, !psr.id !1996

25:                                               ; preds = %23, %12
  %26 = phi i1 [ false, %12 ], [ %24, %23 ], !dbg !1997, !psr.id !1998
  br i1 %26, label %27, label %28, !dbg !1971, !psr.id !1999

27:                                               ; preds = %25
  br label %12, !dbg !1971, !llvm.loop !2000, !psr.id !2002

28:                                               ; preds = %25
  %29 = icmp slt i64 %13, 0, !dbg !2003, !psr.id !2005
  br i1 %29, label %30, label %31, !dbg !2006, !psr.id !2007

30:                                               ; preds = %28
  br label %43, !dbg !2008, !psr.id !2010

31:                                               ; preds = %28
  %32 = icmp eq i64 %13, 0, !dbg !2011, !psr.id !2013
  br i1 %32, label %33, label %34, !dbg !2014, !psr.id !2015

33:                                               ; preds = %31
  br label %39, !dbg !2016, !psr.id !2018

34:                                               ; preds = %31
  %35 = sub i64 %.02, %13, !dbg !2019, !psr.id !2020
  call void @llvm.dbg.value(metadata i64 %35, metadata !1949, metadata !DIExpression()), !dbg !1945, !psr.id !2021
  %36 = getelementptr inbounds i8, i8* %.01, i64 %13, !dbg !2022, !psr.id !2023
  call void @llvm.dbg.value(metadata i8* %36, metadata !1951, metadata !DIExpression()), !dbg !1945, !psr.id !2024
  br label %37, !dbg !2025, !psr.id !2026

37:                                               ; preds = %34
  %38 = icmp ugt i64 %35, 0, !dbg !2027, !psr.id !2028
  br i1 %38, label %11, label %39, !dbg !2025, !llvm.loop !2029, !psr.id !2031

39:                                               ; preds = %37, %33
  %.1 = phi i8* [ %.01, %33 ], [ %36, %37 ], !dbg !1945, !psr.id !2032
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1951, metadata !DIExpression()), !dbg !1945, !psr.id !2033
  %40 = ptrtoint i8* %.1 to i64, !dbg !2034, !psr.id !2035
  %41 = ptrtoint i8* %1 to i64, !dbg !2034, !psr.id !2036
  %42 = sub i64 %40, %41, !dbg !2034, !psr.id !2037
  br label %43, !dbg !2038, !psr.id !2039

43:                                               ; preds = %39, %30
  %.0 = phi i64 [ %13, %30 ], [ %42, %39 ], !dbg !1945, !psr.id !2040
  ret i64 %.0, !dbg !2041, !psr.id !2042
}

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !2043 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2046, metadata !DIExpression()), !dbg !2047, !psr.id !2048
  call void @llvm.dbg.value(metadata i64 %1, metadata !2049, metadata !DIExpression()), !dbg !2047, !psr.id !2050
  %3 = icmp ule i64 %1, 256, !dbg !2051, !psr.id !2054
  br i1 %3, label %4, label %5, !dbg !2055, !psr.id !2056

4:                                                ; preds = %2
  br label %9, !dbg !2055, !psr.id !2057

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.5, i64 0, i64 0, !psr.id !2058
  %7 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !2059
  %8 = getelementptr inbounds [60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0, !psr.id !2060
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !2051, !psr.id !2061
  unreachable, !dbg !2051, !psr.id !2062

9:                                                ; preds = %4
  br label %10, !dbg !2063, !psr.id !2064

10:                                               ; preds = %26, %9
  %11 = trunc i64 %1 to i32, !dbg !2065, !psr.id !2067
  %12 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %11, i32 0) #10, !dbg !2068, !psr.id !2069
  %13 = trunc i64 %12 to i32, !dbg !2068, !psr.id !2070
  call void @llvm.dbg.value(metadata i32 %13, metadata !2071, metadata !DIExpression()), !dbg !2047, !psr.id !2072
  br label %14, !dbg !2073, !psr.id !2074

14:                                               ; preds = %10
  %15 = icmp slt i32 %13, 0, !dbg !2075, !psr.id !2076
  br i1 %15, label %16, label %26, !dbg !2077, !psr.id !2078

16:                                               ; preds = %14
  %17 = call i32* @__errno_location() #9, !dbg !2079, !psr.id !2080
  %18 = load i32, i32* %17, align 4, !dbg !2079, !psr.id !2081
  %19 = icmp eq i32 %18, 4, !dbg !2082, !psr.id !2083
  br i1 %19, label %24, label %20, !dbg !2084, !psr.id !2085

20:                                               ; preds = %16
  %21 = call i32* @__errno_location() #9, !dbg !2086, !psr.id !2087
  %22 = load i32, i32* %21, align 4, !dbg !2086, !psr.id !2088
  %23 = icmp eq i32 %22, 11, !dbg !2089, !psr.id !2090
  br label %24, !dbg !2084, !psr.id !2091

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ], !psr.id !2092
  br label %26, !psr.id !2093

26:                                               ; preds = %24, %14
  %27 = phi i1 [ false, %14 ], [ %25, %24 ], !dbg !2047, !psr.id !2094
  br i1 %27, label %10, label %28, !dbg !2073, !llvm.loop !2095, !psr.id !2097

28:                                               ; preds = %26
  %29 = trunc i64 %1 to i32, !dbg !2098, !psr.id !2099
  %30 = icmp eq i32 %13, %29, !dbg !2100, !psr.id !2101
  %31 = zext i1 %30 to i32, !dbg !2100, !psr.id !2102
  %32 = sub nsw i32 %31, 1, !dbg !2103, !psr.id !2104
  ret i32 %32, !dbg !2105, !psr.id !2106
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #5

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !2107 {
  %1 = alloca [16 x i8], align 16, !psr.id !2108
  %2 = call i32* @__errno_location() #9, !dbg !2109, !psr.id !2110
  %3 = load i32, i32* %2, align 4, !dbg !2109, !psr.id !2111
  call void @llvm.dbg.value(metadata i32 %3, metadata !2112, metadata !DIExpression()), !dbg !2113, !psr.id !2114
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !2115, metadata !DIExpression()), !dbg !2117, !psr.id !2118
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !2119, !psr.id !2121
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !2122, !psr.id !2123
  %6 = icmp eq i32 %5, 0, !dbg !2124, !psr.id !2125
  br i1 %6, label %7, label %10, !dbg !2126, !psr.id !2127

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !2128
  store i32 1, i32* %8, align 4, !dbg !2129, !psr.id !2131
  %9 = call i32* @__errno_location() #9, !dbg !2132, !psr.id !2133
  store i32 %3, i32* %9, align 4, !dbg !2134, !psr.id !2135
  br label %18, !dbg !2136, !psr.id !2137

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !2138
  store i32 0, i32* %11, align 4, !dbg !2139, !psr.id !2140
  %12 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !2141, !psr.id !2143
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !2144
  store i32 %12, i32* %13, align 4, !dbg !2145, !psr.id !2146
  %14 = icmp eq i32 %12, -1, !dbg !2147, !psr.id !2148
  br i1 %14, label %15, label %16, !dbg !2149, !psr.id !2150

15:                                               ; preds = %10
  call void @abort() #8, !dbg !2151, !psr.id !2153
  unreachable, !dbg !2151, !psr.id !2154

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #9, !dbg !2155, !psr.id !2156
  store i32 %3, i32* %17, align 4, !dbg !2157, !psr.id !2158
  br label %18, !dbg !2159, !psr.id !2160

18:                                               ; preds = %16, %7
  ret void, !dbg !2159, !psr.id !2161
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !146 {
  %1 = alloca %struct.stat, align 8, !psr.id !2162
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !2163, metadata !DIExpression()), !dbg !2199, !psr.id !2200
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !2201, metadata !DIExpression()), !dbg !2203, !psr.id !2204
  %2 = getelementptr inbounds [3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0, !psr.id !2205
  br label %3, !dbg !2206, !psr.id !2207

3:                                                ; preds = %29, %0
  %.01 = phi i8** [ %2, %0 ], [ %.1, %29 ], !dbg !2203, !psr.id !2208
  call void @llvm.dbg.value(metadata i8** %.01, metadata !2201, metadata !DIExpression()), !dbg !2203, !psr.id !2209
  %4 = load i8*, i8** %.01, align 8, !dbg !2210, !psr.id !2212
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 0), !dbg !2213, !psr.id !2214
  call void @llvm.dbg.value(metadata i32 %5, metadata !2215, metadata !DIExpression()), !dbg !2203, !psr.id !2216
  %6 = icmp ne i32 %5, -1, !dbg !2217, !psr.id !2219
  br i1 %6, label %7, label %21, !dbg !2220, !psr.id !2221

7:                                                ; preds = %3
  %8 = call i32 @fstat(i32 %5, %struct.stat* %1) #10, !dbg !2222, !psr.id !2225
  %9 = icmp eq i32 %8, 0, !dbg !2226, !psr.id !2227
  br i1 %9, label %10, label %19, !dbg !2228, !psr.id !2229

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !2230, !psr.id !2231
  %12 = load i32, i32* %11, align 8, !dbg !2230, !psr.id !2232
  %13 = and i32 %12, 61440, !dbg !2230, !psr.id !2233
  %14 = icmp eq i32 %13, 8192, !dbg !2230, !psr.id !2234
  br i1 %14, label %15, label %19, !dbg !2235, !psr.id !2236

15:                                               ; preds = %10
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 1), !dbg !2237, !psr.id !2239
  %17 = or i32 %16, 1, !dbg !2240, !psr.id !2241
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 2, i32 %17), !dbg !2242, !psr.id !2243
  br label %34, !dbg !2244, !psr.id !2245

19:                                               ; preds = %10, %7
  %20 = call i32 @close(i32 %5), !dbg !2246, !psr.id !2247
  br label %27, !dbg !2248, !psr.id !2249

21:                                               ; preds = %3
  %22 = call i32* @__errno_location() #9, !dbg !2250, !psr.id !2252
  %23 = load i32, i32* %22, align 4, !dbg !2250, !psr.id !2253
  %24 = icmp eq i32 %23, 4, !dbg !2254, !psr.id !2255
  br i1 %24, label %25, label %26, !dbg !2256, !psr.id !2257

25:                                               ; preds = %21
  br label %29, !dbg !2258, !psr.id !2260

26:                                               ; preds = %21
  br label %27, !psr.id !2261

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !2262, !psr.id !2263
  call void @llvm.dbg.value(metadata i8** %28, metadata !2201, metadata !DIExpression()), !dbg !2203, !psr.id !2264
  br label %29, !dbg !2265, !psr.id !2266

29:                                               ; preds = %27, %25
  %.1 = phi i8** [ %28, %27 ], [ %.01, %25 ], !dbg !2203, !psr.id !2267
  call void @llvm.dbg.value(metadata i8** %.1, metadata !2201, metadata !DIExpression()), !dbg !2203, !psr.id !2268
  %30 = load i8*, i8** %.1, align 8, !dbg !2269, !psr.id !2270
  %31 = icmp ne i8* %30, null, !dbg !2271, !psr.id !2272
  br i1 %31, label %3, label %32, !dbg !2265, !llvm.loop !2273, !psr.id !2275

32:                                               ; preds = %29
  %33 = call i32* @__errno_location() #9, !dbg !2276, !psr.id !2277
  store i32 5, i32* %33, align 4, !dbg !2278, !psr.id !2279
  br label %34, !dbg !2280, !psr.id !2281

34:                                               ; preds = %32, %15
  %.0 = phi i32 [ %5, %15 ], [ -1, %32 ], !dbg !2203, !psr.id !2282
  ret i32 %.0, !dbg !2283, !psr.id !2284
}

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #5

declare dso_local i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !2285 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2286, metadata !DIExpression()), !dbg !2287, !psr.id !2288
  call void @llvm.dbg.value(metadata i64 %1, metadata !2289, metadata !DIExpression()), !dbg !2287, !psr.id !2290
  call void @llvm.dbg.value(metadata i8* %0, metadata !2291, metadata !DIExpression()), !dbg !2287, !psr.id !2292
  call void @llvm.dbg.value(metadata i64 0, metadata !2293, metadata !DIExpression()), !dbg !2287, !psr.id !2294
  br label %3, !dbg !2295, !psr.id !2296

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !2287, !psr.id !2297
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2293, metadata !DIExpression()), !dbg !2287, !psr.id !2298
  %4 = icmp ult i64 %.0, %1, !dbg !2299, !psr.id !2300
  br i1 %4, label %5, label %8, !dbg !2295, !psr.id !2301

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !2302, !psr.id !2304
  call void @llvm.dbg.value(metadata i64 %6, metadata !2293, metadata !DIExpression()), !dbg !2287, !psr.id !2305
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !2306, !psr.id !2307
  store volatile i8 0, i8* %7, align 1, !dbg !2308, !psr.id !2309
  br label %3, !dbg !2295, !llvm.loop !2310, !psr.id !2312

8:                                                ; preds = %3
  ret void, !dbg !2313, !psr.id !2314
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !2315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2321, metadata !DIExpression()), !dbg !2322, !psr.id !2323
  call void @llvm.dbg.value(metadata i8* %1, metadata !2324, metadata !DIExpression()), !dbg !2322, !psr.id !2325
  call void @llvm.dbg.value(metadata i64 %2, metadata !2326, metadata !DIExpression()), !dbg !2322, !psr.id !2327
  call void @llvm.dbg.value(metadata i8* %0, metadata !2328, metadata !DIExpression()), !dbg !2322, !psr.id !2329
  call void @llvm.dbg.value(metadata i8* %1, metadata !2330, metadata !DIExpression()), !dbg !2322, !psr.id !2331
  call void @llvm.dbg.value(metadata i8 0, metadata !2332, metadata !DIExpression()), !dbg !2322, !psr.id !2333
  call void @llvm.dbg.value(metadata i64 0, metadata !2334, metadata !DIExpression()), !dbg !2322, !psr.id !2335
  br label %4, !dbg !2336, !psr.id !2338

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !2339, !psr.id !2340
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !2322, !psr.id !2341
  call void @llvm.dbg.value(metadata i8 %.0, metadata !2332, metadata !DIExpression()), !dbg !2322, !psr.id !2342
  call void @llvm.dbg.value(metadata i64 %.01, metadata !2334, metadata !DIExpression()), !dbg !2322, !psr.id !2343
  %5 = icmp ult i64 %.01, %2, !dbg !2344, !psr.id !2346
  br i1 %5, label %6, label %19, !dbg !2347, !psr.id !2348

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !2349, !psr.id !2351
  %8 = load i8, i8* %7, align 1, !dbg !2349, !psr.id !2352
  %9 = zext i8 %8 to i32, !dbg !2349, !psr.id !2353
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !2354, !psr.id !2355
  %11 = load i8, i8* %10, align 1, !dbg !2354, !psr.id !2356
  %12 = zext i8 %11 to i32, !dbg !2354, !psr.id !2357
  %13 = xor i32 %9, %12, !dbg !2358, !psr.id !2359
  %14 = zext i8 %.0 to i32, !dbg !2360, !psr.id !2361
  %15 = or i32 %14, %13, !dbg !2360, !psr.id !2362
  %16 = trunc i32 %15 to i8, !dbg !2360, !psr.id !2363
  call void @llvm.dbg.value(metadata i8 %16, metadata !2332, metadata !DIExpression()), !dbg !2322, !psr.id !2364
  br label %17, !dbg !2365, !psr.id !2366

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !2367, !psr.id !2368
  call void @llvm.dbg.value(metadata i64 %18, metadata !2334, metadata !DIExpression()), !dbg !2322, !psr.id !2369
  br label %4, !dbg !2370, !llvm.loop !2371, !psr.id !2373

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !2374, !psr.id !2375
  %21 = sub nsw i32 %20, 1, !dbg !2376, !psr.id !2377
  %22 = ashr i32 %21, 8, !dbg !2378, !psr.id !2379
  %23 = and i32 1, %22, !dbg !2380, !psr.id !2381
  %24 = sub nsw i32 %23, 1, !dbg !2382, !psr.id !2383
  ret i32 %24, !dbg !2384, !psr.id !2385
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !2386 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2392, metadata !DIExpression()), !dbg !2393, !psr.id !2394
  call void @llvm.dbg.value(metadata i64 %1, metadata !2395, metadata !DIExpression()), !dbg !2393, !psr.id !2396
  call void @llvm.dbg.value(metadata i8* %2, metadata !2397, metadata !DIExpression()), !dbg !2393, !psr.id !2398
  call void @llvm.dbg.value(metadata i64 %3, metadata !2399, metadata !DIExpression()), !dbg !2393, !psr.id !2400
  call void @llvm.dbg.value(metadata i64 0, metadata !2401, metadata !DIExpression()), !dbg !2393, !psr.id !2402
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !2403, !psr.id !2405
  br i1 %5, label %9, label %6, !dbg !2406, !psr.id !2407

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !2408, !psr.id !2409
  %8 = icmp ult i64 %1, %7, !dbg !2410, !psr.id !2411
  br i1 %8, label %9, label %10, !dbg !2412, !psr.id !2413

9:                                                ; preds = %6, %4
  call void @abort() #8, !dbg !2414, !psr.id !2416
  unreachable, !dbg !2414, !psr.id !2417

10:                                               ; preds = %6
  br label %11, !dbg !2418, !psr.id !2419

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !2393, !psr.id !2420
  call void @llvm.dbg.value(metadata i64 %.0, metadata !2401, metadata !DIExpression()), !dbg !2393, !psr.id !2421
  %12 = icmp ult i64 %.0, %3, !dbg !2422, !psr.id !2423
  br i1 %12, label %13, label %47, !dbg !2418, !psr.id !2424

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !2425, !psr.id !2427
  %15 = load i8, i8* %14, align 1, !dbg !2425, !psr.id !2428
  %16 = zext i8 %15 to i32, !dbg !2425, !psr.id !2429
  %17 = and i32 %16, 15, !dbg !2430, !psr.id !2431
  call void @llvm.dbg.value(metadata i32 %17, metadata !2432, metadata !DIExpression()), !dbg !2393, !psr.id !2433
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !2434, !psr.id !2435
  %19 = load i8, i8* %18, align 1, !dbg !2434, !psr.id !2436
  %20 = zext i8 %19 to i32, !dbg !2434, !psr.id !2437
  %21 = ashr i32 %20, 4, !dbg !2438, !psr.id !2439
  call void @llvm.dbg.value(metadata i32 %21, metadata !2440, metadata !DIExpression()), !dbg !2393, !psr.id !2441
  %22 = add i32 87, %17, !dbg !2442, !psr.id !2443
  %23 = sub i32 %17, 10, !dbg !2444, !psr.id !2445
  %24 = lshr i32 %23, 8, !dbg !2446, !psr.id !2447
  %25 = and i32 %24, -39, !dbg !2448, !psr.id !2449
  %26 = add i32 %22, %25, !dbg !2450, !psr.id !2451
  %27 = trunc i32 %26 to i8, !dbg !2452, !psr.id !2453
  %28 = zext i8 %27 to i32, !dbg !2452, !psr.id !2454
  %29 = shl i32 %28, 8, !dbg !2455, !psr.id !2456
  %30 = add i32 87, %21, !dbg !2457, !psr.id !2458
  %31 = sub i32 %21, 10, !dbg !2459, !psr.id !2460
  %32 = lshr i32 %31, 8, !dbg !2461, !psr.id !2462
  %33 = and i32 %32, -39, !dbg !2463, !psr.id !2464
  %34 = add i32 %30, %33, !dbg !2465, !psr.id !2466
  %35 = trunc i32 %34 to i8, !dbg !2467, !psr.id !2468
  %36 = zext i8 %35 to i32, !dbg !2467, !psr.id !2469
  %37 = or i32 %29, %36, !dbg !2470, !psr.id !2471
  call void @llvm.dbg.value(metadata i32 %37, metadata !2472, metadata !DIExpression()), !dbg !2393, !psr.id !2473
  %38 = trunc i32 %37 to i8, !dbg !2474, !psr.id !2475
  %39 = mul i64 %.0, 2, !dbg !2476, !psr.id !2477
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !2478, !psr.id !2479
  store i8 %38, i8* %40, align 1, !dbg !2480, !psr.id !2481
  %41 = lshr i32 %37, 8, !dbg !2482, !psr.id !2483
  call void @llvm.dbg.value(metadata i32 %41, metadata !2472, metadata !DIExpression()), !dbg !2393, !psr.id !2484
  %42 = trunc i32 %41 to i8, !dbg !2485, !psr.id !2486
  %43 = mul i64 %.0, 2, !dbg !2487, !psr.id !2488
  %44 = add i64 %43, 1, !dbg !2489, !psr.id !2490
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !2491, !psr.id !2492
  store i8 %42, i8* %45, align 1, !dbg !2493, !psr.id !2494
  %46 = add i64 %.0, 1, !dbg !2495, !psr.id !2496
  call void @llvm.dbg.value(metadata i64 %46, metadata !2401, metadata !DIExpression()), !dbg !2393, !psr.id !2497
  br label %11, !dbg !2418, !llvm.loop !2498, !psr.id !2500

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !2501, !psr.id !2502
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !2503, !psr.id !2504
  store i8 0, i8* %49, align 1, !dbg !2505, !psr.id !2506
  ret i8* %0, !dbg !2507, !psr.id !2508
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !2509 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2516, metadata !DIExpression()), !dbg !2517, !psr.id !2518
  call void @llvm.dbg.value(metadata i64 %1, metadata !2519, metadata !DIExpression()), !dbg !2517, !psr.id !2520
  call void @llvm.dbg.value(metadata i8* %2, metadata !2521, metadata !DIExpression()), !dbg !2517, !psr.id !2522
  call void @llvm.dbg.value(metadata i64 %3, metadata !2523, metadata !DIExpression()), !dbg !2517, !psr.id !2524
  call void @llvm.dbg.value(metadata i8* %4, metadata !2525, metadata !DIExpression()), !dbg !2517, !psr.id !2526
  call void @llvm.dbg.value(metadata i64* %5, metadata !2527, metadata !DIExpression()), !dbg !2517, !psr.id !2528
  call void @llvm.dbg.value(metadata i8** %6, metadata !2529, metadata !DIExpression()), !dbg !2517, !psr.id !2530
  call void @llvm.dbg.value(metadata i64 0, metadata !2531, metadata !DIExpression()), !dbg !2517, !psr.id !2532
  call void @llvm.dbg.value(metadata i64 0, metadata !2533, metadata !DIExpression()), !dbg !2517, !psr.id !2534
  call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2517, !psr.id !2536
  call void @llvm.dbg.value(metadata i8 0, metadata !2537, metadata !DIExpression()), !dbg !2517, !psr.id !2538
  call void @llvm.dbg.value(metadata i8 0, metadata !2539, metadata !DIExpression()), !dbg !2517, !psr.id !2540
  br label %8, !dbg !2541, !psr.id !2542

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !2543, !psr.id !2544
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !2517, !psr.id !2545
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !2517, !psr.id !2546
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !2517, !psr.id !2547
  call void @llvm.dbg.value(metadata i8 %.0, metadata !2539, metadata !DIExpression()), !dbg !2517, !psr.id !2548
  call void @llvm.dbg.value(metadata i8 %.01, metadata !2537, metadata !DIExpression()), !dbg !2517, !psr.id !2549
  call void @llvm.dbg.value(metadata i64 %.03, metadata !2533, metadata !DIExpression()), !dbg !2517, !psr.id !2550
  call void @llvm.dbg.value(metadata i64 %.05, metadata !2531, metadata !DIExpression()), !dbg !2517, !psr.id !2551
  %9 = icmp ult i64 %.03, %3, !dbg !2552, !psr.id !2553
  br i1 %9, label %10, label %78, !dbg !2541, !psr.id !2554

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !2555, !psr.id !2557
  %12 = load i8, i8* %11, align 1, !dbg !2555, !psr.id !2558
  call void @llvm.dbg.value(metadata i8 %12, metadata !2559, metadata !DIExpression()), !dbg !2517, !psr.id !2560
  %13 = zext i8 %12 to i32, !dbg !2561, !psr.id !2562
  %14 = xor i32 %13, 48, !dbg !2563, !psr.id !2564
  %15 = trunc i32 %14 to i8, !dbg !2561, !psr.id !2565
  call void @llvm.dbg.value(metadata i8 %15, metadata !2566, metadata !DIExpression()), !dbg !2517, !psr.id !2567
  %16 = zext i8 %15 to i32, !dbg !2568, !psr.id !2569
  %17 = sub i32 %16, 10, !dbg !2570, !psr.id !2571
  %18 = lshr i32 %17, 8, !dbg !2572, !psr.id !2573
  %19 = trunc i32 %18 to i8, !dbg !2574, !psr.id !2575
  call void @llvm.dbg.value(metadata i8 %19, metadata !2576, metadata !DIExpression()), !dbg !2517, !psr.id !2577
  %20 = zext i8 %12 to i32, !dbg !2578, !psr.id !2579
  %21 = and i32 %20, -33, !dbg !2580, !psr.id !2581
  %22 = sub i32 %21, 55, !dbg !2582, !psr.id !2583
  %23 = trunc i32 %22 to i8, !dbg !2584, !psr.id !2585
  call void @llvm.dbg.value(metadata i8 %23, metadata !2586, metadata !DIExpression()), !dbg !2517, !psr.id !2587
  %24 = zext i8 %23 to i32, !dbg !2588, !psr.id !2589
  %25 = sub i32 %24, 10, !dbg !2590, !psr.id !2591
  %26 = zext i8 %23 to i32, !dbg !2592, !psr.id !2593
  %27 = sub i32 %26, 16, !dbg !2594, !psr.id !2595
  %28 = xor i32 %25, %27, !dbg !2596, !psr.id !2597
  %29 = lshr i32 %28, 8, !dbg !2598, !psr.id !2599
  %30 = trunc i32 %29 to i8, !dbg !2600, !psr.id !2601
  call void @llvm.dbg.value(metadata i8 %30, metadata !2602, metadata !DIExpression()), !dbg !2517, !psr.id !2603
  %31 = zext i8 %19 to i32, !dbg !2604, !psr.id !2606
  %32 = zext i8 %30 to i32, !dbg !2607, !psr.id !2608
  %33 = or i32 %31, %32, !dbg !2609, !psr.id !2610
  %34 = icmp eq i32 %33, 0, !dbg !2611, !psr.id !2612
  br i1 %34, label %35, label %47, !dbg !2613, !psr.id !2614

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !2615, !psr.id !2618
  br i1 %36, label %37, label %46, !dbg !2619, !psr.id !2620

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !2621, !psr.id !2622
  %39 = icmp eq i32 %38, 0, !dbg !2623, !psr.id !2624
  br i1 %39, label %40, label %46, !dbg !2625, !psr.id !2626

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !2627, !psr.id !2628
  %42 = call i8* @strchr(i8* %4, i32 %41) #11, !dbg !2629, !psr.id !2630
  %43 = icmp ne i8* %42, null, !dbg !2631, !psr.id !2632
  br i1 %43, label %44, label %46, !dbg !2633, !psr.id !2634

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !2635, !psr.id !2637
  call void @llvm.dbg.value(metadata i64 %45, metadata !2533, metadata !DIExpression()), !dbg !2517, !psr.id !2638
  br label %8, !dbg !2639, !llvm.loop !2640, !psr.id !2642

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !2643, !psr.id !2644

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !2645, !psr.id !2646
  %49 = zext i8 %15 to i32, !dbg !2647, !psr.id !2648
  %50 = and i32 %48, %49, !dbg !2649, !psr.id !2650
  %51 = zext i8 %30 to i32, !dbg !2651, !psr.id !2652
  %52 = zext i8 %23 to i32, !dbg !2653, !psr.id !2654
  %53 = and i32 %51, %52, !dbg !2655, !psr.id !2656
  %54 = or i32 %50, %53, !dbg !2657, !psr.id !2658
  %55 = trunc i32 %54 to i8, !dbg !2659, !psr.id !2660
  call void @llvm.dbg.value(metadata i8 %55, metadata !2661, metadata !DIExpression()), !dbg !2517, !psr.id !2662
  %56 = icmp uge i64 %.05, %1, !dbg !2663, !psr.id !2665
  br i1 %56, label %57, label %59, !dbg !2666, !psr.id !2667

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !2535, metadata !DIExpression()), !dbg !2517, !psr.id !2668
  %58 = call i32* @__errno_location() #9, !dbg !2669, !psr.id !2671
  store i32 34, i32* %58, align 4, !dbg !2672, !psr.id !2673
  br label %78, !dbg !2674, !psr.id !2675

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !2676, !psr.id !2678
  %61 = icmp eq i32 %60, 0, !dbg !2679, !psr.id !2680
  br i1 %61, label %62, label %66, !dbg !2681, !psr.id !2682

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !2683, !psr.id !2685
  %64 = mul i32 %63, 16, !dbg !2686, !psr.id !2687
  %65 = trunc i32 %64 to i8, !dbg !2683, !psr.id !2688
  call void @llvm.dbg.value(metadata i8 %65, metadata !2537, metadata !DIExpression()), !dbg !2517, !psr.id !2689
  br label %73, !dbg !2690, !psr.id !2691

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !2692, !psr.id !2694
  %68 = zext i8 %55 to i32, !dbg !2695, !psr.id !2696
  %69 = or i32 %67, %68, !dbg !2697, !psr.id !2698
  %70 = trunc i32 %69 to i8, !dbg !2692, !psr.id !2699
  %71 = add i64 %.05, 1, !dbg !2700, !psr.id !2701
  call void @llvm.dbg.value(metadata i64 %71, metadata !2531, metadata !DIExpression()), !dbg !2517, !psr.id !2702
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !2703, !psr.id !2704
  store i8 %70, i8* %72, align 1, !dbg !2705, !psr.id !2706
  br label %73, !psr.id !2707

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !2517, !psr.id !2708
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !2517, !psr.id !2709
  call void @llvm.dbg.value(metadata i8 %.1, metadata !2537, metadata !DIExpression()), !dbg !2517, !psr.id !2710
  call void @llvm.dbg.value(metadata i64 %.16, metadata !2531, metadata !DIExpression()), !dbg !2517, !psr.id !2711
  %74 = zext i8 %.0 to i32, !dbg !2712, !psr.id !2713
  %75 = xor i32 %74, -1, !dbg !2714, !psr.id !2715
  %76 = trunc i32 %75 to i8, !dbg !2714, !psr.id !2716
  call void @llvm.dbg.value(metadata i8 %76, metadata !2539, metadata !DIExpression()), !dbg !2517, !psr.id !2717
  %77 = add i64 %.03, 1, !dbg !2718, !psr.id !2719
  call void @llvm.dbg.value(metadata i64 %77, metadata !2533, metadata !DIExpression()), !dbg !2517, !psr.id !2720
  br label %8, !dbg !2541, !llvm.loop !2640, !psr.id !2721

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !2517, !psr.id !2722
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2535, metadata !DIExpression()), !dbg !2517, !psr.id !2723
  %79 = zext i8 %.0 to i32, !dbg !2724, !psr.id !2726
  %80 = icmp ne i32 %79, 0, !dbg !2727, !psr.id !2728
  br i1 %80, label %81, label %83, !dbg !2729, !psr.id !2730

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !2731, !psr.id !2733
  call void @llvm.dbg.value(metadata i64 %82, metadata !2533, metadata !DIExpression()), !dbg !2517, !psr.id !2734
  br label %83, !dbg !2735, !psr.id !2736

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !2517, !psr.id !2737
  call void @llvm.dbg.value(metadata i64 %.14, metadata !2533, metadata !DIExpression()), !dbg !2517, !psr.id !2738
  %84 = icmp ne i8** %6, null, !dbg !2739, !psr.id !2741
  br i1 %84, label %85, label %87, !dbg !2742, !psr.id !2743

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !2744, !psr.id !2746
  store i8* %86, i8** %6, align 8, !dbg !2747, !psr.id !2748
  br label %87, !dbg !2749, !psr.id !2750

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !2751, !psr.id !2753
  br i1 %88, label %89, label %90, !dbg !2754, !psr.id !2755

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !2756, !psr.id !2758
  br label %90, !dbg !2759, !psr.id !2760

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !2761, !psr.id !2762
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !2763 {
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* @canary, i64 0, i64 0, !psr.id !2764
  call void @randombytes_buf(i8* %1, i64 16), !dbg !2765, !psr.id !2766
  ret i32 0, !dbg !2767, !psr.id !2768
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !2769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2770, metadata !DIExpression()), !dbg !2771, !psr.id !2772
  call void @llvm.dbg.value(metadata i64 %1, metadata !2773, metadata !DIExpression()), !dbg !2771, !psr.id !2774
  %3 = call i32* @__errno_location() #9, !dbg !2775, !psr.id !2776
  store i32 38, i32* %3, align 4, !dbg !2777, !psr.id !2778
  ret i32 -1, !dbg !2779, !psr.id !2780
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !2781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2782, metadata !DIExpression()), !dbg !2783, !psr.id !2784
  call void @llvm.dbg.value(metadata i64 %1, metadata !2785, metadata !DIExpression()), !dbg !2783, !psr.id !2786
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !2787, !psr.id !2788
  %3 = call i32* @__errno_location() #9, !dbg !2789, !psr.id !2790
  store i32 38, i32* %3, align 4, !dbg !2791, !psr.id !2792
  ret i32 -1, !dbg !2793, !psr.id !2794
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !2795 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2798, metadata !DIExpression()), !dbg !2799, !psr.id !2800
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !2801, !psr.id !2803
  call void @llvm.dbg.value(metadata i8* %2, metadata !2804, metadata !DIExpression()), !dbg !2799, !psr.id !2805
  %3 = icmp eq i8* %2, null, !dbg !2806, !psr.id !2807
  br i1 %3, label %4, label %5, !dbg !2808, !psr.id !2809

4:                                                ; preds = %1
  br label %6, !dbg !2810, !psr.id !2812

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !2813, !psr.id !2814
  br label %6, !dbg !2815, !psr.id !2816

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !2799, !psr.id !2817
  ret i8* %.0, !dbg !2818, !psr.id !2819
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !2820 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2821, metadata !DIExpression()), !dbg !2822, !psr.id !2823
  %2 = call noalias i8* @malloc(i64 %0) #10, !dbg !2824, !psr.id !2825
  ret i8* %2, !dbg !2826, !psr.id !2827
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !2828 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2831, metadata !DIExpression()), !dbg !2832, !psr.id !2833
  call void @llvm.dbg.value(metadata i64 %1, metadata !2834, metadata !DIExpression()), !dbg !2832, !psr.id !2835
  %3 = icmp ugt i64 %0, 0, !dbg !2836, !psr.id !2838
  br i1 %3, label %4, label %9, !dbg !2839, !psr.id !2840

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !2841, !psr.id !2842
  %6 = icmp uge i64 %1, %5, !dbg !2843, !psr.id !2844
  br i1 %6, label %7, label %9, !dbg !2845, !psr.id !2846

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #9, !dbg !2847, !psr.id !2849
  store i32 12, i32* %8, align 4, !dbg !2850, !psr.id !2851
  br label %12, !dbg !2852, !psr.id !2853

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !2854, !psr.id !2855
  call void @llvm.dbg.value(metadata i64 %10, metadata !2856, metadata !DIExpression()), !dbg !2832, !psr.id !2857
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !2858, !psr.id !2859
  br label %12, !dbg !2860, !psr.id !2861

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !2832, !psr.id !2862
  ret i8* %.0, !dbg !2863, !psr.id !2864
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !2865 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()), !dbg !2869, !psr.id !2870
  call void @free(i8* %0) #10, !dbg !2871, !psr.id !2872
  ret void, !dbg !2873, !psr.id !2874
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !2875 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2878, metadata !DIExpression()), !dbg !2879, !psr.id !2880
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !2881, !psr.id !2882
  ret i32 %2, !dbg !2883, !psr.id !2884
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !2885 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2888, metadata !DIExpression()), !dbg !2889, !psr.id !2890
  call void @llvm.dbg.value(metadata i64 %1, metadata !2891, metadata !DIExpression()), !dbg !2889, !psr.id !2892
  %3 = call i32* @__errno_location() #9, !dbg !2893, !psr.id !2894
  store i32 38, i32* %3, align 4, !dbg !2895, !psr.id !2896
  ret i32 -1, !dbg !2897, !psr.id !2898
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !2899 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2903, metadata !DIExpression()), !dbg !2904, !psr.id !2905
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !2906, metadata !DIExpression()), !dbg !2904, !psr.id !2907
  %3 = call i32* @__errno_location() #9, !dbg !2908, !psr.id !2909
  store i32 38, i32* %3, align 4, !dbg !2910, !psr.id !2911
  ret i32 -1, !dbg !2912, !psr.id !2913
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !2914 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2916, !psr.id !2917
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !2918, !psr.id !2919
  ret i32 %2, !dbg !2920, !psr.id !2921
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !2922 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2923, metadata !DIExpression()), !dbg !2924, !psr.id !2925
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()), !dbg !2924, !psr.id !2927
  %3 = call i32* @__errno_location() #9, !dbg !2928, !psr.id !2929
  store i32 38, i32* %3, align 4, !dbg !2930, !psr.id !2931
  ret i32 -1, !dbg !2932, !psr.id !2933
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !2934 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2935, metadata !DIExpression()), !dbg !2936, !psr.id !2937
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !2938, !psr.id !2939
  ret i32 %2, !dbg !2940, !psr.id !2941
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !2942 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()), !dbg !2944, !psr.id !2945
  call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()), !dbg !2944, !psr.id !2947
  %3 = call i32* @__errno_location() #9, !dbg !2948, !psr.id !2949
  store i32 38, i32* %3, align 4, !dbg !2950, !psr.id !2951
  ret i32 -1, !dbg !2952, !psr.id !2953
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_verify_16(i8* %0, i8* %1) #0 !dbg !2954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2957, metadata !DIExpression()), !dbg !2958, !psr.id !2959
  call void @llvm.dbg.value(metadata i8* %1, metadata !2960, metadata !DIExpression()), !dbg !2958, !psr.id !2961
  call void @llvm.dbg.value(metadata i32 0, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !2963
  %3 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2964, !psr.id !2965
  %4 = load i8, i8* %3, align 1, !dbg !2964, !psr.id !2966
  %5 = zext i8 %4 to i32, !dbg !2964, !psr.id !2967
  %6 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !2964, !psr.id !2968
  %7 = load i8, i8* %6, align 1, !dbg !2964, !psr.id !2969
  %8 = zext i8 %7 to i32, !dbg !2964, !psr.id !2970
  %9 = xor i32 %5, %8, !dbg !2964, !psr.id !2971
  %10 = or i32 0, %9, !dbg !2964, !psr.id !2972
  call void @llvm.dbg.value(metadata i32 %10, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !2973
  %11 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2974, !psr.id !2975
  %12 = load i8, i8* %11, align 1, !dbg !2974, !psr.id !2976
  %13 = zext i8 %12 to i32, !dbg !2974, !psr.id !2977
  %14 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2974, !psr.id !2978
  %15 = load i8, i8* %14, align 1, !dbg !2974, !psr.id !2979
  %16 = zext i8 %15 to i32, !dbg !2974, !psr.id !2980
  %17 = xor i32 %13, %16, !dbg !2974, !psr.id !2981
  %18 = or i32 %10, %17, !dbg !2974, !psr.id !2982
  call void @llvm.dbg.value(metadata i32 %18, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !2983
  %19 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2984, !psr.id !2985
  %20 = load i8, i8* %19, align 1, !dbg !2984, !psr.id !2986
  %21 = zext i8 %20 to i32, !dbg !2984, !psr.id !2987
  %22 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !2984, !psr.id !2988
  %23 = load i8, i8* %22, align 1, !dbg !2984, !psr.id !2989
  %24 = zext i8 %23 to i32, !dbg !2984, !psr.id !2990
  %25 = xor i32 %21, %24, !dbg !2984, !psr.id !2991
  %26 = or i32 %18, %25, !dbg !2984, !psr.id !2992
  call void @llvm.dbg.value(metadata i32 %26, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !2993
  %27 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2994, !psr.id !2995
  %28 = load i8, i8* %27, align 1, !dbg !2994, !psr.id !2996
  %29 = zext i8 %28 to i32, !dbg !2994, !psr.id !2997
  %30 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !2994, !psr.id !2998
  %31 = load i8, i8* %30, align 1, !dbg !2994, !psr.id !2999
  %32 = zext i8 %31 to i32, !dbg !2994, !psr.id !3000
  %33 = xor i32 %29, %32, !dbg !2994, !psr.id !3001
  %34 = or i32 %26, %33, !dbg !2994, !psr.id !3002
  call void @llvm.dbg.value(metadata i32 %34, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3003
  %35 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !3004, !psr.id !3005
  %36 = load i8, i8* %35, align 1, !dbg !3004, !psr.id !3006
  %37 = zext i8 %36 to i32, !dbg !3004, !psr.id !3007
  %38 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !3004, !psr.id !3008
  %39 = load i8, i8* %38, align 1, !dbg !3004, !psr.id !3009
  %40 = zext i8 %39 to i32, !dbg !3004, !psr.id !3010
  %41 = xor i32 %37, %40, !dbg !3004, !psr.id !3011
  %42 = or i32 %34, %41, !dbg !3004, !psr.id !3012
  call void @llvm.dbg.value(metadata i32 %42, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3013
  %43 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3014, !psr.id !3015
  %44 = load i8, i8* %43, align 1, !dbg !3014, !psr.id !3016
  %45 = zext i8 %44 to i32, !dbg !3014, !psr.id !3017
  %46 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !3014, !psr.id !3018
  %47 = load i8, i8* %46, align 1, !dbg !3014, !psr.id !3019
  %48 = zext i8 %47 to i32, !dbg !3014, !psr.id !3020
  %49 = xor i32 %45, %48, !dbg !3014, !psr.id !3021
  %50 = or i32 %42, %49, !dbg !3014, !psr.id !3022
  call void @llvm.dbg.value(metadata i32 %50, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3023
  %51 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !3024, !psr.id !3025
  %52 = load i8, i8* %51, align 1, !dbg !3024, !psr.id !3026
  %53 = zext i8 %52 to i32, !dbg !3024, !psr.id !3027
  %54 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !3024, !psr.id !3028
  %55 = load i8, i8* %54, align 1, !dbg !3024, !psr.id !3029
  %56 = zext i8 %55 to i32, !dbg !3024, !psr.id !3030
  %57 = xor i32 %53, %56, !dbg !3024, !psr.id !3031
  %58 = or i32 %50, %57, !dbg !3024, !psr.id !3032
  call void @llvm.dbg.value(metadata i32 %58, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3033
  %59 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !3034, !psr.id !3035
  %60 = load i8, i8* %59, align 1, !dbg !3034, !psr.id !3036
  %61 = zext i8 %60 to i32, !dbg !3034, !psr.id !3037
  %62 = getelementptr inbounds i8, i8* %1, i64 7, !dbg !3034, !psr.id !3038
  %63 = load i8, i8* %62, align 1, !dbg !3034, !psr.id !3039
  %64 = zext i8 %63 to i32, !dbg !3034, !psr.id !3040
  %65 = xor i32 %61, %64, !dbg !3034, !psr.id !3041
  %66 = or i32 %58, %65, !dbg !3034, !psr.id !3042
  call void @llvm.dbg.value(metadata i32 %66, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3043
  %67 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !3044, !psr.id !3045
  %68 = load i8, i8* %67, align 1, !dbg !3044, !psr.id !3046
  %69 = zext i8 %68 to i32, !dbg !3044, !psr.id !3047
  %70 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !3044, !psr.id !3048
  %71 = load i8, i8* %70, align 1, !dbg !3044, !psr.id !3049
  %72 = zext i8 %71 to i32, !dbg !3044, !psr.id !3050
  %73 = xor i32 %69, %72, !dbg !3044, !psr.id !3051
  %74 = or i32 %66, %73, !dbg !3044, !psr.id !3052
  call void @llvm.dbg.value(metadata i32 %74, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3053
  %75 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !3054, !psr.id !3055
  %76 = load i8, i8* %75, align 1, !dbg !3054, !psr.id !3056
  %77 = zext i8 %76 to i32, !dbg !3054, !psr.id !3057
  %78 = getelementptr inbounds i8, i8* %1, i64 9, !dbg !3054, !psr.id !3058
  %79 = load i8, i8* %78, align 1, !dbg !3054, !psr.id !3059
  %80 = zext i8 %79 to i32, !dbg !3054, !psr.id !3060
  %81 = xor i32 %77, %80, !dbg !3054, !psr.id !3061
  %82 = or i32 %74, %81, !dbg !3054, !psr.id !3062
  call void @llvm.dbg.value(metadata i32 %82, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3063
  %83 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !3064, !psr.id !3065
  %84 = load i8, i8* %83, align 1, !dbg !3064, !psr.id !3066
  %85 = zext i8 %84 to i32, !dbg !3064, !psr.id !3067
  %86 = getelementptr inbounds i8, i8* %1, i64 10, !dbg !3064, !psr.id !3068
  %87 = load i8, i8* %86, align 1, !dbg !3064, !psr.id !3069
  %88 = zext i8 %87 to i32, !dbg !3064, !psr.id !3070
  %89 = xor i32 %85, %88, !dbg !3064, !psr.id !3071
  %90 = or i32 %82, %89, !dbg !3064, !psr.id !3072
  call void @llvm.dbg.value(metadata i32 %90, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3073
  %91 = getelementptr inbounds i8, i8* %0, i64 11, !dbg !3074, !psr.id !3075
  %92 = load i8, i8* %91, align 1, !dbg !3074, !psr.id !3076
  %93 = zext i8 %92 to i32, !dbg !3074, !psr.id !3077
  %94 = getelementptr inbounds i8, i8* %1, i64 11, !dbg !3074, !psr.id !3078
  %95 = load i8, i8* %94, align 1, !dbg !3074, !psr.id !3079
  %96 = zext i8 %95 to i32, !dbg !3074, !psr.id !3080
  %97 = xor i32 %93, %96, !dbg !3074, !psr.id !3081
  %98 = or i32 %90, %97, !dbg !3074, !psr.id !3082
  call void @llvm.dbg.value(metadata i32 %98, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3083
  %99 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !3084, !psr.id !3085
  %100 = load i8, i8* %99, align 1, !dbg !3084, !psr.id !3086
  %101 = zext i8 %100 to i32, !dbg !3084, !psr.id !3087
  %102 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !3084, !psr.id !3088
  %103 = load i8, i8* %102, align 1, !dbg !3084, !psr.id !3089
  %104 = zext i8 %103 to i32, !dbg !3084, !psr.id !3090
  %105 = xor i32 %101, %104, !dbg !3084, !psr.id !3091
  %106 = or i32 %98, %105, !dbg !3084, !psr.id !3092
  call void @llvm.dbg.value(metadata i32 %106, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3093
  %107 = getelementptr inbounds i8, i8* %0, i64 13, !dbg !3094, !psr.id !3095
  %108 = load i8, i8* %107, align 1, !dbg !3094, !psr.id !3096
  %109 = zext i8 %108 to i32, !dbg !3094, !psr.id !3097
  %110 = getelementptr inbounds i8, i8* %1, i64 13, !dbg !3094, !psr.id !3098
  %111 = load i8, i8* %110, align 1, !dbg !3094, !psr.id !3099
  %112 = zext i8 %111 to i32, !dbg !3094, !psr.id !3100
  %113 = xor i32 %109, %112, !dbg !3094, !psr.id !3101
  %114 = or i32 %106, %113, !dbg !3094, !psr.id !3102
  call void @llvm.dbg.value(metadata i32 %114, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3103
  %115 = getelementptr inbounds i8, i8* %0, i64 14, !dbg !3104, !psr.id !3105
  %116 = load i8, i8* %115, align 1, !dbg !3104, !psr.id !3106
  %117 = zext i8 %116 to i32, !dbg !3104, !psr.id !3107
  %118 = getelementptr inbounds i8, i8* %1, i64 14, !dbg !3104, !psr.id !3108
  %119 = load i8, i8* %118, align 1, !dbg !3104, !psr.id !3109
  %120 = zext i8 %119 to i32, !dbg !3104, !psr.id !3110
  %121 = xor i32 %117, %120, !dbg !3104, !psr.id !3111
  %122 = or i32 %114, %121, !dbg !3104, !psr.id !3112
  call void @llvm.dbg.value(metadata i32 %122, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3113
  %123 = getelementptr inbounds i8, i8* %0, i64 15, !dbg !3114, !psr.id !3115
  %124 = load i8, i8* %123, align 1, !dbg !3114, !psr.id !3116
  %125 = zext i8 %124 to i32, !dbg !3114, !psr.id !3117
  %126 = getelementptr inbounds i8, i8* %1, i64 15, !dbg !3114, !psr.id !3118
  %127 = load i8, i8* %126, align 1, !dbg !3114, !psr.id !3119
  %128 = zext i8 %127 to i32, !dbg !3114, !psr.id !3120
  %129 = xor i32 %125, %128, !dbg !3114, !psr.id !3121
  %130 = or i32 %122, %129, !dbg !3114, !psr.id !3122
  call void @llvm.dbg.value(metadata i32 %130, metadata !2962, metadata !DIExpression()), !dbg !2958, !psr.id !3123
  %131 = sub i32 %130, 1, !dbg !3124, !psr.id !3125
  %132 = lshr i32 %131, 8, !dbg !3126, !psr.id !3127
  %133 = and i32 1, %132, !dbg !3128, !psr.id !3129
  %134 = sub i32 %133, 1, !dbg !3130, !psr.id !3131
  ret i32 %134, !dbg !3132, !psr.id !3133
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_onetimeauth_poly1305_donna_verify(i8* %0, i8* %1, i64 %2, i8* %3) #0 !dbg !3134 {
  %5 = alloca [16 x i8], align 16, !psr.id !3135
  call void @llvm.dbg.value(metadata i8* %0, metadata !3136, metadata !DIExpression()), !dbg !3137, !psr.id !3138
  call void @llvm.dbg.value(metadata i8* %1, metadata !3139, metadata !DIExpression()), !dbg !3137, !psr.id !3140
  call void @llvm.dbg.value(metadata i64 %2, metadata !3141, metadata !DIExpression()), !dbg !3137, !psr.id !3142
  call void @llvm.dbg.value(metadata i8* %3, metadata !3143, metadata !DIExpression()), !dbg !3137, !psr.id !3144
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !3145, metadata !DIExpression()), !dbg !3146, !psr.id !3147
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !3148, !psr.id !3149
  %7 = call i32 @crypto_onetimeauth_poly1305_donna(i8* %6, i8* %1, i64 %2, i8* %3), !dbg !3150, !psr.id !3151
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !3152, !psr.id !3153
  %9 = call i32 @crypto_verify_16(i8* %0, i8* %8), !dbg !3154, !psr.id !3155
  ret i32 %9, !dbg !3156, !psr.id !3157
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @crypto_onetimeauth_poly1305_donna_wrapper_t()
  ret void
}

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

!llvm.dbg.cu = !{!2, !180, !81, !128, !173, !182, !184}
!llvm.ident = !{!186, !186, !186, !186, !186, !186, !186}
!llvm.module.flags = !{!187, !188, !189}

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
!77 = !{!"0"}
!78 = !{!"1"}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "implementation", scope: !81, file: !82, line: 16, type: !92, isLocal: true, isDefinition: true)
!81 = distinct !DICompileUnit(language: DW_LANG_C99, file: !82, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !83, globals: !91, splitDebugInlining: false, nameTableKind: None)
!82 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/randombytes.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!83 = !{!41, !84, !89}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !85, line: 26, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !87, line: 42, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!88 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !90, line: 46, baseType: !27)
!90 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!91 = !{!79}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "randombytes_implementation", file: !95, line: 26, baseType: !96)
!95 = !DIFile(filename: "../libsodium/src/libsodium/include/sodium/randombytes.h", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !95, line: 19, size: 384, elements: !97)
!97 = !{!98, !99, !103, !107, !112, !118}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !96, file: !95, line: 20, baseType: !46, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !96, file: !95, line: 21, baseType: !100, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!84}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !96, file: !95, line: 22, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !96, file: !95, line: 23, baseType: !108, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!84, !111}
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !96, file: !95, line: 24, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116, !117}
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !96, file: !95, line: 25, baseType: !119, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!56}
!122 = !{!"2"}
!123 = !{!"3"}
!124 = !{!"4"}
!125 = !{!"5"}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "randombytes_sysrandom_implementation", scope: !128, file: !129, line: 297, type: !150, isLocal: false, isDefinition: true)
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !130, globals: !135, splitDebugInlining: false, nameTableKind: None)
!129 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!130 = !{!131, !41, !57, !89, !56}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !132, line: 108, baseType: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !87, line: 193, baseType: !134)
!134 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!135 = !{!126, !136, !144}
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "stream", scope: !128, file: !129, line: 69, type: !138, isLocal: true, isDefinition: true)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysRandom", file: !129, line: 67, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SysRandom_", file: !129, line: 63, size: 96, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "random_data_source_fd", scope: !139, file: !129, line: 64, baseType: !56, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !139, file: !129, line: 65, baseType: !56, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "getrandom_available", scope: !139, file: !129, line: 66, baseType: !56, size: 32, offset: 64)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "devices", scope: !146, file: !129, line: 106, type: !147, isLocal: true, isDefinition: true)
!146 = distinct !DISubprogram(name: "randombytes_sysrandom_random_dev_open", scope: !129, file: !129, line: 102, type: !120, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !4)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 3)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !95, line: 19, size: 384, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !150, file: !95, line: 20, baseType: !46, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !150, file: !95, line: 21, baseType: !100, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !150, file: !95, line: 22, baseType: !104, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !150, file: !95, line: 23, baseType: !108, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !150, file: !95, line: 24, baseType: !113, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !150, file: !95, line: 25, baseType: !119, size: 64, offset: 320)
!158 = !{!"6"}
!159 = !{!"7"}
!160 = !{!"8"}
!161 = !{!"9"}
!162 = !{!"10"}
!163 = !{!"11"}
!164 = !{!"12"}
!165 = !{!"13"}
!166 = !{!"14"}
!167 = !{!"15"}
!168 = !{!"16"}
!169 = !{!"17"}
!170 = !{!"18"}
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "canary", scope: !173, file: !174, line: 46, type: !37, isLocal: true, isDefinition: true)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !175, globals: !178, splitDebugInlining: false, nameTableKind: None)
!174 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!175 = !{!176, !89, !58, !17, !56, !51, !41}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!178 = !{!171}
!179 = !{!"19"}
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!181 = !DIFile(filename: "crypto_onetimeauth_poly1305_donna.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "../libsodium/src/libsodium/crypto_verify/16/ref/verify_16.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!185 = !DIFile(filename: "../libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/verify_poly1305_donna.c", directory: "/home/luwei/bech-back/libsodium/Poly1305")
!186 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!187 = !{i32 7, !"Dwarf Version", i32 4}
!188 = !{i32 2, !"Debug Info Version", i32 3}
!189 = !{i32 1, !"wchar_size", i32 4}
!190 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_implementation_name", scope: !3, file: !3, line: 91, type: !47, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!191 = !{!"20"}
!192 = !DILocation(line: 93, column: 5, scope: !190)
!193 = !{!"21"}
!194 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna", scope: !3, file: !3, line: 49, type: !54, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!195 = !{!"22"}
!196 = !DILocalVariable(name: "out", arg: 1, scope: !194, file: !3, line: 49, type: !57)
!197 = !DILocation(line: 0, scope: !194)
!198 = !{!"23"}
!199 = !DILocalVariable(name: "m", arg: 2, scope: !194, file: !3, line: 49, type: !58)
!200 = !{!"24"}
!201 = !DILocalVariable(name: "inlen", arg: 3, scope: !194, file: !3, line: 50, type: !14)
!202 = !{!"25"}
!203 = !DILocalVariable(name: "key", arg: 4, scope: !194, file: !3, line: 51, type: !58)
!204 = !{!"26"}
!205 = !DILocalVariable(name: "ctx", scope: !194, file: !3, line: 53, type: !7)
!206 = !DILocation(line: 53, column: 22, scope: !194)
!207 = !{!"27"}
!208 = !DILocation(line: 54, column: 5, scope: !194)
!209 = !{!"28"}
!210 = !DILocation(line: 55, column: 5, scope: !194)
!211 = !{!"29"}
!212 = !DILocation(line: 56, column: 5, scope: !194)
!213 = !{!"30"}
!214 = !DILocation(line: 58, column: 5, scope: !194)
!215 = !{!"31"}
!216 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_init", scope: !3, file: !3, line: 62, type: !66, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!217 = !DILocalVariable(name: "state", arg: 1, scope: !216, file: !3, line: 62, type: !68)
!218 = !DILocation(line: 0, scope: !216)
!219 = !{!"32"}
!220 = !DILocalVariable(name: "key", arg: 2, scope: !216, file: !3, line: 63, type: !58)
!221 = !{!"33"}
!222 = !DILocation(line: 65, column: 5, scope: !216)
!223 = !{!"34"}
!224 = !DILocation(line: 67, column: 5, scope: !216)
!225 = !{!"35"}
!226 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_update", scope: !3, file: !3, line: 71, type: !71, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!227 = !DILocalVariable(name: "state", arg: 1, scope: !226, file: !3, line: 71, type: !68)
!228 = !DILocation(line: 0, scope: !226)
!229 = !{!"36"}
!230 = !DILocalVariable(name: "in", arg: 2, scope: !226, file: !3, line: 72, type: !58)
!231 = !{!"37"}
!232 = !DILocalVariable(name: "inlen", arg: 3, scope: !226, file: !3, line: 73, type: !14)
!233 = !{!"38"}
!234 = !DILocation(line: 75, column: 5, scope: !226)
!235 = !{!"39"}
!236 = !DILocation(line: 77, column: 5, scope: !226)
!237 = !{!"40"}
!238 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_final", scope: !3, file: !3, line: 81, type: !75, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!239 = !DILocalVariable(name: "state", arg: 1, scope: !238, file: !3, line: 81, type: !68)
!240 = !DILocation(line: 0, scope: !238)
!241 = !{!"41"}
!242 = !DILocalVariable(name: "out", arg: 2, scope: !238, file: !3, line: 82, type: !57)
!243 = !{!"42"}
!244 = !DILocation(line: 84, column: 5, scope: !238)
!245 = !{!"43"}
!246 = !DILocation(line: 86, column: 5, scope: !238)
!247 = !{!"44"}
!248 = distinct !DISubprogram(name: "poly1305_finish", scope: !22, file: !22, line: 136, type: !249, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !6, !57}
!251 = !DILocalVariable(name: "ctx", arg: 1, scope: !248, file: !22, line: 136, type: !6)
!252 = !DILocation(line: 0, scope: !248)
!253 = !{!"45"}
!254 = !DILocalVariable(name: "mac", arg: 2, scope: !248, file: !22, line: 136, type: !57)
!255 = !{!"46"}
!256 = !DILocation(line: 137, column: 70, scope: !248)
!257 = !{!"47"}
!258 = !DILocation(line: 137, column: 41, scope: !248)
!259 = !{!"48"}
!260 = !DILocalVariable(name: "st", scope: !248, file: !22, line: 137, type: !20)
!261 = !{!"49"}
!262 = !DILocation(line: 144, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !248, file: !22, line: 144, column: 13)
!264 = !{!"50"}
!265 = !{!"51"}
!266 = !{!"ValueTainted"}
!267 = !DILocation(line: 144, column: 13, scope: !263)
!268 = !{!"52"}
!269 = !DILocation(line: 144, column: 13, scope: !248)
!270 = !{!"53"}
!271 = !{!"Tainted"}
!272 = !DILocation(line: 145, column: 44, scope: !273)
!273 = distinct !DILexicalBlock(scope: !263, file: !22, line: 144, column: 27)
!274 = !{!"54"}
!275 = !{!"55"}
!276 = !DILocalVariable(name: "i", scope: !273, file: !22, line: 145, type: !14)
!277 = !DILocation(line: 0, scope: !273)
!278 = !{!"56"}
!279 = !DILocation(line: 146, column: 21, scope: !273)
!280 = !{!"57"}
!281 = !DILocation(line: 146, column: 29, scope: !273)
!282 = !{!"58"}
!283 = !{!"59"}
!284 = !DILocation(line: 146, column: 17, scope: !273)
!285 = !{!"60"}
!286 = !DILocation(line: 146, column: 33, scope: !273)
!287 = !{!"61"}
!288 = !DILocation(line: 147, column: 17, scope: !273)
!289 = !{!"62"}
!290 = !{!"63"}
!291 = !{!"64"}
!292 = !DILocation(line: 147, column: 26, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !22, line: 147, column: 17)
!294 = distinct !DILexicalBlock(scope: !273, file: !22, line: 147, column: 17)
!295 = !{!"65"}
!296 = !DILocation(line: 147, column: 17, scope: !294)
!297 = !{!"66"}
!298 = !DILocation(line: 148, column: 29, scope: !293)
!299 = !{!"67"}
!300 = !DILocation(line: 148, column: 25, scope: !293)
!301 = !{!"68"}
!302 = !DILocation(line: 148, column: 39, scope: !293)
!303 = !{!"69"}
!304 = !{!"70"}
!305 = !DILocation(line: 147, column: 50, scope: !293)
!306 = !{!"71"}
!307 = !{!"72"}
!308 = !DILocation(line: 147, column: 17, scope: !293)
!309 = distinct !{!309, !296, !310, !311}
!310 = !DILocation(line: 148, column: 41, scope: !294)
!311 = !{!"llvm.loop.mustprogress"}
!312 = !{!"73"}
!313 = !DILocation(line: 149, column: 21, scope: !273)
!314 = !{!"74"}
!315 = !DILocation(line: 149, column: 27, scope: !273)
!316 = !{!"75"}
!317 = !DILocation(line: 150, column: 41, scope: !273)
!318 = !{!"76"}
!319 = !DILocation(line: 150, column: 37, scope: !273)
!320 = !{!"77"}
!321 = !DILocation(line: 150, column: 17, scope: !273)
!322 = !{!"78"}
!323 = !DILocation(line: 151, column: 9, scope: !273)
!324 = !{!"79"}
!325 = !DILocation(line: 154, column: 18, scope: !248)
!326 = !{!"80"}
!327 = !DILocation(line: 154, column: 14, scope: !248)
!328 = !{!"81"}
!329 = !{!"82"}
!330 = !DILocalVariable(name: "h0", scope: !248, file: !22, line: 138, type: !27)
!331 = !{!"83"}
!332 = !DILocation(line: 155, column: 18, scope: !248)
!333 = !{!"84"}
!334 = !DILocation(line: 155, column: 14, scope: !248)
!335 = !{!"85"}
!336 = !{!"86"}
!337 = !DILocalVariable(name: "h1", scope: !248, file: !22, line: 138, type: !27)
!338 = !{!"87"}
!339 = !DILocation(line: 156, column: 18, scope: !248)
!340 = !{!"88"}
!341 = !DILocation(line: 156, column: 14, scope: !248)
!342 = !{!"89"}
!343 = !{!"90"}
!344 = !DILocalVariable(name: "h2", scope: !248, file: !22, line: 138, type: !27)
!345 = !{!"91"}
!346 = !DILocation(line: 157, column: 18, scope: !248)
!347 = !{!"92"}
!348 = !DILocation(line: 157, column: 14, scope: !248)
!349 = !{!"93"}
!350 = !{!"94"}
!351 = !DILocalVariable(name: "h3", scope: !248, file: !22, line: 138, type: !27)
!352 = !{!"95"}
!353 = !DILocation(line: 158, column: 18, scope: !248)
!354 = !{!"96"}
!355 = !DILocation(line: 158, column: 14, scope: !248)
!356 = !{!"97"}
!357 = !{!"98"}
!358 = !DILocalVariable(name: "h4", scope: !248, file: !22, line: 138, type: !27)
!359 = !{!"99"}
!360 = !DILocation(line: 160, column: 29, scope: !248)
!361 = !{!"100"}
!362 = !DILocalVariable(name: "c", scope: !248, file: !22, line: 138, type: !27)
!363 = !{!"101"}
!364 = !DILocation(line: 160, column: 44, scope: !248)
!365 = !{!"102"}
!366 = !{!"103"}
!367 = !DILocation(line: 161, column: 12, scope: !248)
!368 = !{!"104"}
!369 = !{!"105"}
!370 = !DILocation(line: 161, column: 29, scope: !248)
!371 = !{!"106"}
!372 = !{!"107"}
!373 = !DILocation(line: 161, column: 44, scope: !248)
!374 = !{!"108"}
!375 = !{!"109"}
!376 = !DILocation(line: 162, column: 12, scope: !248)
!377 = !{!"110"}
!378 = !{!"111"}
!379 = !DILocation(line: 162, column: 29, scope: !248)
!380 = !{!"112"}
!381 = !{!"113"}
!382 = !DILocation(line: 162, column: 44, scope: !248)
!383 = !{!"114"}
!384 = !{!"115"}
!385 = !DILocation(line: 163, column: 12, scope: !248)
!386 = !{!"116"}
!387 = !{!"117"}
!388 = !DILocation(line: 163, column: 29, scope: !248)
!389 = !{!"118"}
!390 = !{!"119"}
!391 = !DILocation(line: 163, column: 44, scope: !248)
!392 = !{!"120"}
!393 = !{!"121"}
!394 = !DILocation(line: 164, column: 17, scope: !248)
!395 = !{!"122"}
!396 = !DILocation(line: 164, column: 12, scope: !248)
!397 = !{!"123"}
!398 = !{!"124"}
!399 = !DILocation(line: 164, column: 29, scope: !248)
!400 = !{!"125"}
!401 = !{!"126"}
!402 = !DILocation(line: 164, column: 44, scope: !248)
!403 = !{!"127"}
!404 = !{!"128"}
!405 = !DILocation(line: 165, column: 12, scope: !248)
!406 = !{!"129"}
!407 = !{!"130"}
!408 = !DILocation(line: 168, column: 17, scope: !248)
!409 = !{!"131"}
!410 = !DILocalVariable(name: "g0", scope: !248, file: !22, line: 139, type: !27)
!411 = !{!"132"}
!412 = !DILocation(line: 168, column: 29, scope: !248)
!413 = !{!"133"}
!414 = !{!"134"}
!415 = !DILocation(line: 168, column: 39, scope: !248)
!416 = !{!"135"}
!417 = !{!"136"}
!418 = !DILocation(line: 169, column: 17, scope: !248)
!419 = !{!"137"}
!420 = !DILocalVariable(name: "g1", scope: !248, file: !22, line: 139, type: !27)
!421 = !{!"138"}
!422 = !DILocation(line: 169, column: 29, scope: !248)
!423 = !{!"139"}
!424 = !{!"140"}
!425 = !DILocation(line: 169, column: 39, scope: !248)
!426 = !{!"141"}
!427 = !{!"142"}
!428 = !DILocation(line: 170, column: 17, scope: !248)
!429 = !{!"143"}
!430 = !DILocalVariable(name: "g2", scope: !248, file: !22, line: 139, type: !27)
!431 = !{!"144"}
!432 = !DILocation(line: 170, column: 29, scope: !248)
!433 = !{!"145"}
!434 = !{!"146"}
!435 = !DILocation(line: 170, column: 39, scope: !248)
!436 = !{!"147"}
!437 = !{!"148"}
!438 = !DILocation(line: 171, column: 17, scope: !248)
!439 = !{!"149"}
!440 = !DILocalVariable(name: "g3", scope: !248, file: !22, line: 139, type: !27)
!441 = !{!"150"}
!442 = !DILocation(line: 171, column: 29, scope: !248)
!443 = !{!"151"}
!444 = !{!"152"}
!445 = !DILocation(line: 171, column: 39, scope: !248)
!446 = !{!"153"}
!447 = !{!"154"}
!448 = !DILocation(line: 172, column: 17, scope: !248)
!449 = !{!"155"}
!450 = !DILocation(line: 172, column: 21, scope: !248)
!451 = !{!"156"}
!452 = !DILocalVariable(name: "g4", scope: !248, file: !22, line: 139, type: !27)
!453 = !{!"157"}
!454 = !DILocation(line: 175, column: 20, scope: !248)
!455 = !{!"158"}
!456 = !DILocation(line: 175, column: 58, scope: !248)
!457 = !{!"159"}
!458 = !DILocalVariable(name: "mask", scope: !248, file: !22, line: 141, type: !27)
!459 = !{!"160"}
!460 = !DILocation(line: 176, column: 12, scope: !248)
!461 = !{!"161"}
!462 = !{!"162"}
!463 = !DILocation(line: 177, column: 12, scope: !248)
!464 = !{!"163"}
!465 = !{!"164"}
!466 = !DILocation(line: 178, column: 12, scope: !248)
!467 = !{!"165"}
!468 = !{!"166"}
!469 = !DILocation(line: 179, column: 12, scope: !248)
!470 = !{!"167"}
!471 = !{!"168"}
!472 = !DILocation(line: 180, column: 12, scope: !248)
!473 = !{!"169"}
!474 = !{!"170"}
!475 = !DILocation(line: 181, column: 16, scope: !248)
!476 = !{!"171"}
!477 = !{!"172"}
!478 = !DILocation(line: 182, column: 18, scope: !248)
!479 = !{!"173"}
!480 = !DILocation(line: 182, column: 26, scope: !248)
!481 = !{!"174"}
!482 = !{!"175"}
!483 = !DILocation(line: 183, column: 18, scope: !248)
!484 = !{!"176"}
!485 = !DILocation(line: 183, column: 26, scope: !248)
!486 = !{!"177"}
!487 = !{!"178"}
!488 = !DILocation(line: 184, column: 18, scope: !248)
!489 = !{!"179"}
!490 = !DILocation(line: 184, column: 26, scope: !248)
!491 = !{!"180"}
!492 = !{!"181"}
!493 = !DILocation(line: 185, column: 18, scope: !248)
!494 = !{!"182"}
!495 = !DILocation(line: 185, column: 26, scope: !248)
!496 = !{!"183"}
!497 = !{!"184"}
!498 = !DILocation(line: 186, column: 18, scope: !248)
!499 = !{!"185"}
!500 = !DILocation(line: 186, column: 26, scope: !248)
!501 = !{!"186"}
!502 = !{!"187"}
!503 = !DILocation(line: 189, column: 32, scope: !248)
!504 = !{!"188"}
!505 = !DILocation(line: 189, column: 26, scope: !248)
!506 = !{!"189"}
!507 = !DILocation(line: 189, column: 40, scope: !248)
!508 = !{!"190"}
!509 = !{!"191"}
!510 = !DILocation(line: 190, column: 19, scope: !248)
!511 = !{!"192"}
!512 = !DILocation(line: 190, column: 32, scope: !248)
!513 = !{!"193"}
!514 = !DILocation(line: 190, column: 26, scope: !248)
!515 = !{!"194"}
!516 = !DILocation(line: 190, column: 40, scope: !248)
!517 = !{!"195"}
!518 = !{!"196"}
!519 = !DILocation(line: 191, column: 19, scope: !248)
!520 = !{!"197"}
!521 = !DILocation(line: 191, column: 32, scope: !248)
!522 = !{!"198"}
!523 = !DILocation(line: 191, column: 26, scope: !248)
!524 = !{!"199"}
!525 = !DILocation(line: 191, column: 40, scope: !248)
!526 = !{!"200"}
!527 = !{!"201"}
!528 = !DILocation(line: 192, column: 19, scope: !248)
!529 = !{!"202"}
!530 = !DILocation(line: 192, column: 32, scope: !248)
!531 = !{!"203"}
!532 = !DILocation(line: 192, column: 26, scope: !248)
!533 = !{!"204"}
!534 = !DILocation(line: 192, column: 40, scope: !248)
!535 = !{!"205"}
!536 = !{!"206"}
!537 = !DILocation(line: 195, column: 42, scope: !248)
!538 = !{!"207"}
!539 = !DILocation(line: 195, column: 38, scope: !248)
!540 = !{!"208"}
!541 = !{!"209"}
!542 = !DILocation(line: 195, column: 36, scope: !248)
!543 = !{!"210"}
!544 = !DILocalVariable(name: "f", scope: !248, file: !22, line: 140, type: !14)
!545 = !{!"211"}
!546 = !{!"212"}
!547 = !DILocation(line: 196, column: 42, scope: !248)
!548 = !{!"213"}
!549 = !DILocation(line: 196, column: 38, scope: !248)
!550 = !{!"214"}
!551 = !{!"215"}
!552 = !DILocation(line: 196, column: 36, scope: !248)
!553 = !{!"216"}
!554 = !DILocation(line: 196, column: 54, scope: !248)
!555 = !{!"217"}
!556 = !DILocation(line: 196, column: 49, scope: !248)
!557 = !{!"218"}
!558 = !{!"219"}
!559 = !{!"220"}
!560 = !DILocation(line: 197, column: 42, scope: !248)
!561 = !{!"221"}
!562 = !DILocation(line: 197, column: 38, scope: !248)
!563 = !{!"222"}
!564 = !{!"223"}
!565 = !DILocation(line: 197, column: 36, scope: !248)
!566 = !{!"224"}
!567 = !DILocation(line: 197, column: 54, scope: !248)
!568 = !{!"225"}
!569 = !DILocation(line: 197, column: 49, scope: !248)
!570 = !{!"226"}
!571 = !{!"227"}
!572 = !{!"228"}
!573 = !DILocation(line: 198, column: 42, scope: !248)
!574 = !{!"229"}
!575 = !DILocation(line: 198, column: 38, scope: !248)
!576 = !{!"230"}
!577 = !{!"231"}
!578 = !DILocation(line: 198, column: 36, scope: !248)
!579 = !{!"232"}
!580 = !DILocation(line: 198, column: 54, scope: !248)
!581 = !{!"233"}
!582 = !DILocation(line: 198, column: 49, scope: !248)
!583 = !{!"234"}
!584 = !{!"235"}
!585 = !{!"236"}
!586 = !DILocation(line: 200, column: 20, scope: !248)
!587 = !{!"237"}
!588 = !DILocation(line: 200, column: 9, scope: !248)
!589 = !{!"238"}
!590 = !DILocation(line: 201, column: 20, scope: !248)
!591 = !{!"239"}
!592 = !DILocation(line: 201, column: 9, scope: !248)
!593 = !{!"240"}
!594 = !DILocation(line: 202, column: 20, scope: !248)
!595 = !{!"241"}
!596 = !DILocation(line: 202, column: 9, scope: !248)
!597 = !{!"242"}
!598 = !DILocation(line: 203, column: 20, scope: !248)
!599 = !{!"243"}
!600 = !DILocation(line: 203, column: 9, scope: !248)
!601 = !{!"244"}
!602 = !DILocation(line: 206, column: 24, scope: !248)
!603 = !{!"245"}
!604 = !DILocation(line: 206, column: 9, scope: !248)
!605 = !{!"246"}
!606 = !DILocation(line: 207, column: 1, scope: !248)
!607 = !{!"247"}
!608 = distinct !DISubprogram(name: "poly1305_blocks", scope: !22, file: !22, line: 75, type: !609, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !20, !58, !14}
!611 = !DILocalVariable(name: "st", arg: 1, scope: !608, file: !22, line: 75, type: !20)
!612 = !DILocation(line: 0, scope: !608)
!613 = !{!"248"}
!614 = !DILocalVariable(name: "m", arg: 2, scope: !608, file: !22, line: 75, type: !58)
!615 = !{!"249"}
!616 = !DILocalVariable(name: "bytes", arg: 3, scope: !608, file: !22, line: 75, type: !14)
!617 = !{!"250"}
!618 = !DILocation(line: 76, column: 42, scope: !608)
!619 = !{!"251"}
!620 = !{!"252"}
!621 = !DILocation(line: 76, column: 37, scope: !608)
!622 = !{!"253"}
!623 = !{!"254"}
!624 = !{!"255"}
!625 = !{!"256"}
!626 = !{!"257"}
!627 = !DILocalVariable(name: "hibit", scope: !608, file: !22, line: 76, type: !628)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!629 = !{!"258"}
!630 = !DILocation(line: 83, column: 18, scope: !608)
!631 = !{!"259"}
!632 = !DILocation(line: 83, column: 14, scope: !608)
!633 = !{!"260"}
!634 = !{!"261"}
!635 = !DILocalVariable(name: "r0", scope: !608, file: !22, line: 77, type: !27)
!636 = !{!"262"}
!637 = !DILocation(line: 84, column: 18, scope: !608)
!638 = !{!"263"}
!639 = !DILocation(line: 84, column: 14, scope: !608)
!640 = !{!"264"}
!641 = !{!"265"}
!642 = !DILocalVariable(name: "r1", scope: !608, file: !22, line: 77, type: !27)
!643 = !{!"266"}
!644 = !DILocation(line: 85, column: 18, scope: !608)
!645 = !{!"267"}
!646 = !DILocation(line: 85, column: 14, scope: !608)
!647 = !{!"268"}
!648 = !{!"269"}
!649 = !DILocalVariable(name: "r2", scope: !608, file: !22, line: 77, type: !27)
!650 = !{!"270"}
!651 = !DILocation(line: 86, column: 18, scope: !608)
!652 = !{!"271"}
!653 = !DILocation(line: 86, column: 14, scope: !608)
!654 = !{!"272"}
!655 = !{!"273"}
!656 = !DILocalVariable(name: "r3", scope: !608, file: !22, line: 77, type: !27)
!657 = !{!"274"}
!658 = !DILocation(line: 87, column: 18, scope: !608)
!659 = !{!"275"}
!660 = !DILocation(line: 87, column: 14, scope: !608)
!661 = !{!"276"}
!662 = !{!"277"}
!663 = !DILocalVariable(name: "r4", scope: !608, file: !22, line: 77, type: !27)
!664 = !{!"278"}
!665 = !DILocation(line: 89, column: 17, scope: !608)
!666 = !{!"279"}
!667 = !DILocalVariable(name: "s1", scope: !608, file: !22, line: 78, type: !27)
!668 = !{!"280"}
!669 = !DILocation(line: 90, column: 17, scope: !608)
!670 = !{!"281"}
!671 = !DILocalVariable(name: "s2", scope: !608, file: !22, line: 78, type: !27)
!672 = !{!"282"}
!673 = !DILocation(line: 91, column: 17, scope: !608)
!674 = !{!"283"}
!675 = !DILocalVariable(name: "s3", scope: !608, file: !22, line: 78, type: !27)
!676 = !{!"284"}
!677 = !DILocation(line: 92, column: 17, scope: !608)
!678 = !{!"285"}
!679 = !DILocalVariable(name: "s4", scope: !608, file: !22, line: 78, type: !27)
!680 = !{!"286"}
!681 = !DILocation(line: 94, column: 18, scope: !608)
!682 = !{!"287"}
!683 = !DILocation(line: 94, column: 14, scope: !608)
!684 = !{!"288"}
!685 = !{!"289"}
!686 = !DILocalVariable(name: "h0", scope: !608, file: !22, line: 79, type: !27)
!687 = !{!"290"}
!688 = !DILocation(line: 95, column: 18, scope: !608)
!689 = !{!"291"}
!690 = !DILocation(line: 95, column: 14, scope: !608)
!691 = !{!"292"}
!692 = !{!"293"}
!693 = !DILocalVariable(name: "h1", scope: !608, file: !22, line: 79, type: !27)
!694 = !{!"294"}
!695 = !DILocation(line: 96, column: 18, scope: !608)
!696 = !{!"295"}
!697 = !DILocation(line: 96, column: 14, scope: !608)
!698 = !{!"296"}
!699 = !{!"297"}
!700 = !DILocalVariable(name: "h2", scope: !608, file: !22, line: 79, type: !27)
!701 = !{!"298"}
!702 = !DILocation(line: 97, column: 18, scope: !608)
!703 = !{!"299"}
!704 = !DILocation(line: 97, column: 14, scope: !608)
!705 = !{!"300"}
!706 = !{!"301"}
!707 = !DILocalVariable(name: "h3", scope: !608, file: !22, line: 79, type: !27)
!708 = !{!"302"}
!709 = !DILocation(line: 98, column: 18, scope: !608)
!710 = !{!"303"}
!711 = !DILocation(line: 98, column: 14, scope: !608)
!712 = !{!"304"}
!713 = !{!"305"}
!714 = !DILocalVariable(name: "h4", scope: !608, file: !22, line: 79, type: !27)
!715 = !{!"306"}
!716 = !DILocation(line: 100, column: 9, scope: !608)
!717 = !{!"307"}
!718 = !{!"308"}
!719 = !{!"309"}
!720 = !{!"310"}
!721 = !{!"311"}
!722 = !{!"312"}
!723 = !{!"313"}
!724 = !{!"PointTainted"}
!725 = !{!"314"}
!726 = !{!"315"}
!727 = !{!"316"}
!728 = !{!"317"}
!729 = !{!"318"}
!730 = !{!"319"}
!731 = !{!"320"}
!732 = !{!"321"}
!733 = !DILocation(line: 100, column: 22, scope: !608)
!734 = !{!"322"}
!735 = !{!"323"}
!736 = !DILocation(line: 102, column: 32, scope: !737)
!737 = distinct !DILexicalBlock(scope: !608, file: !22, line: 100, column: 46)
!738 = !{!"324"}
!739 = !DILocation(line: 102, column: 24, scope: !737)
!740 = !{!"325"}
!741 = !DILocation(line: 102, column: 43, scope: !737)
!742 = !{!"326"}
!743 = !DILocation(line: 102, column: 20, scope: !737)
!744 = !{!"327"}
!745 = !{!"328"}
!746 = !DILocation(line: 103, column: 32, scope: !737)
!747 = !{!"329"}
!748 = !DILocation(line: 103, column: 24, scope: !737)
!749 = !{!"330"}
!750 = !DILocation(line: 103, column: 37, scope: !737)
!751 = !{!"331"}
!752 = !DILocation(line: 103, column: 43, scope: !737)
!753 = !{!"332"}
!754 = !DILocation(line: 103, column: 20, scope: !737)
!755 = !{!"333"}
!756 = !{!"334"}
!757 = !DILocation(line: 104, column: 32, scope: !737)
!758 = !{!"335"}
!759 = !DILocation(line: 104, column: 24, scope: !737)
!760 = !{!"336"}
!761 = !DILocation(line: 104, column: 37, scope: !737)
!762 = !{!"337"}
!763 = !DILocation(line: 104, column: 43, scope: !737)
!764 = !{!"338"}
!765 = !DILocation(line: 104, column: 20, scope: !737)
!766 = !{!"339"}
!767 = !{!"340"}
!768 = !DILocation(line: 105, column: 32, scope: !737)
!769 = !{!"341"}
!770 = !DILocation(line: 105, column: 24, scope: !737)
!771 = !{!"342"}
!772 = !DILocation(line: 105, column: 37, scope: !737)
!773 = !{!"343"}
!774 = !DILocation(line: 105, column: 43, scope: !737)
!775 = !{!"344"}
!776 = !DILocation(line: 105, column: 20, scope: !737)
!777 = !{!"345"}
!778 = !{!"346"}
!779 = !DILocation(line: 106, column: 32, scope: !737)
!780 = !{!"347"}
!781 = !DILocation(line: 106, column: 24, scope: !737)
!782 = !{!"348"}
!783 = !DILocation(line: 106, column: 37, scope: !737)
!784 = !{!"349"}
!785 = !DILocation(line: 106, column: 43, scope: !737)
!786 = !{!"350"}
!787 = !DILocation(line: 106, column: 20, scope: !737)
!788 = !{!"351"}
!789 = !{!"352"}
!790 = !DILocation(line: 109, column: 46, scope: !737)
!791 = !{!"353"}
!792 = !DILocation(line: 109, column: 78, scope: !737)
!793 = !{!"354"}
!794 = !DILocation(line: 109, column: 52, scope: !737)
!795 = !{!"355"}
!796 = !DILocation(line: 109, column: 110, scope: !737)
!797 = !{!"356"}
!798 = !DILocation(line: 109, column: 84, scope: !737)
!799 = !{!"357"}
!800 = !DILocation(line: 109, column: 142, scope: !737)
!801 = !{!"358"}
!802 = !DILocation(line: 109, column: 116, scope: !737)
!803 = !{!"359"}
!804 = !DILocation(line: 109, column: 174, scope: !737)
!805 = !{!"360"}
!806 = !DILocation(line: 109, column: 148, scope: !737)
!807 = !{!"361"}
!808 = !DILocalVariable(name: "d0", scope: !608, file: !22, line: 80, type: !14)
!809 = !{!"362"}
!810 = !DILocation(line: 110, column: 46, scope: !737)
!811 = !{!"363"}
!812 = !DILocation(line: 110, column: 78, scope: !737)
!813 = !{!"364"}
!814 = !DILocation(line: 110, column: 52, scope: !737)
!815 = !{!"365"}
!816 = !DILocation(line: 110, column: 110, scope: !737)
!817 = !{!"366"}
!818 = !DILocation(line: 110, column: 84, scope: !737)
!819 = !{!"367"}
!820 = !DILocation(line: 110, column: 142, scope: !737)
!821 = !{!"368"}
!822 = !DILocation(line: 110, column: 116, scope: !737)
!823 = !{!"369"}
!824 = !DILocation(line: 110, column: 174, scope: !737)
!825 = !{!"370"}
!826 = !DILocation(line: 110, column: 148, scope: !737)
!827 = !{!"371"}
!828 = !DILocalVariable(name: "d1", scope: !608, file: !22, line: 80, type: !14)
!829 = !{!"372"}
!830 = !DILocation(line: 111, column: 46, scope: !737)
!831 = !{!"373"}
!832 = !DILocation(line: 111, column: 78, scope: !737)
!833 = !{!"374"}
!834 = !DILocation(line: 111, column: 52, scope: !737)
!835 = !{!"375"}
!836 = !DILocation(line: 111, column: 110, scope: !737)
!837 = !{!"376"}
!838 = !DILocation(line: 111, column: 84, scope: !737)
!839 = !{!"377"}
!840 = !DILocation(line: 111, column: 142, scope: !737)
!841 = !{!"378"}
!842 = !DILocation(line: 111, column: 116, scope: !737)
!843 = !{!"379"}
!844 = !DILocation(line: 111, column: 174, scope: !737)
!845 = !{!"380"}
!846 = !DILocation(line: 111, column: 148, scope: !737)
!847 = !{!"381"}
!848 = !DILocalVariable(name: "d2", scope: !608, file: !22, line: 80, type: !14)
!849 = !{!"382"}
!850 = !DILocation(line: 112, column: 46, scope: !737)
!851 = !{!"383"}
!852 = !DILocation(line: 112, column: 78, scope: !737)
!853 = !{!"384"}
!854 = !DILocation(line: 112, column: 52, scope: !737)
!855 = !{!"385"}
!856 = !DILocation(line: 112, column: 110, scope: !737)
!857 = !{!"386"}
!858 = !DILocation(line: 112, column: 84, scope: !737)
!859 = !{!"387"}
!860 = !DILocation(line: 112, column: 142, scope: !737)
!861 = !{!"388"}
!862 = !DILocation(line: 112, column: 116, scope: !737)
!863 = !{!"389"}
!864 = !DILocation(line: 112, column: 174, scope: !737)
!865 = !{!"390"}
!866 = !DILocation(line: 112, column: 148, scope: !737)
!867 = !{!"391"}
!868 = !DILocalVariable(name: "d3", scope: !608, file: !22, line: 80, type: !14)
!869 = !{!"392"}
!870 = !DILocation(line: 113, column: 46, scope: !737)
!871 = !{!"393"}
!872 = !DILocation(line: 113, column: 78, scope: !737)
!873 = !{!"394"}
!874 = !DILocation(line: 113, column: 52, scope: !737)
!875 = !{!"395"}
!876 = !DILocation(line: 113, column: 110, scope: !737)
!877 = !{!"396"}
!878 = !DILocation(line: 113, column: 84, scope: !737)
!879 = !{!"397"}
!880 = !DILocation(line: 113, column: 142, scope: !737)
!881 = !{!"398"}
!882 = !DILocation(line: 113, column: 116, scope: !737)
!883 = !{!"399"}
!884 = !DILocation(line: 113, column: 174, scope: !737)
!885 = !{!"400"}
!886 = !DILocation(line: 113, column: 148, scope: !737)
!887 = !{!"401"}
!888 = !DILocalVariable(name: "d4", scope: !608, file: !22, line: 80, type: !14)
!889 = !{!"402"}
!890 = !DILocation(line: 116, column: 54, scope: !737)
!891 = !{!"403"}
!892 = !DILocalVariable(name: "c", scope: !608, file: !22, line: 81, type: !27)
!893 = !{!"404"}
!894 = !DILocation(line: 116, column: 85, scope: !737)
!895 = !{!"405"}
!896 = !{!"406"}
!897 = !DILocation(line: 117, column: 20, scope: !737)
!898 = !{!"407"}
!899 = !{!"408"}
!900 = !DILocation(line: 117, column: 54, scope: !737)
!901 = !{!"409"}
!902 = !{!"410"}
!903 = !DILocation(line: 117, column: 85, scope: !737)
!904 = !{!"411"}
!905 = !{!"412"}
!906 = !DILocation(line: 118, column: 20, scope: !737)
!907 = !{!"413"}
!908 = !{!"414"}
!909 = !DILocation(line: 118, column: 54, scope: !737)
!910 = !{!"415"}
!911 = !{!"416"}
!912 = !DILocation(line: 118, column: 85, scope: !737)
!913 = !{!"417"}
!914 = !{!"418"}
!915 = !DILocation(line: 119, column: 20, scope: !737)
!916 = !{!"419"}
!917 = !{!"420"}
!918 = !DILocation(line: 119, column: 54, scope: !737)
!919 = !{!"421"}
!920 = !{!"422"}
!921 = !DILocation(line: 119, column: 85, scope: !737)
!922 = !{!"423"}
!923 = !{!"424"}
!924 = !DILocation(line: 120, column: 20, scope: !737)
!925 = !{!"425"}
!926 = !{!"426"}
!927 = !DILocation(line: 120, column: 54, scope: !737)
!928 = !{!"427"}
!929 = !{!"428"}
!930 = !DILocation(line: 120, column: 85, scope: !737)
!931 = !{!"429"}
!932 = !{!"430"}
!933 = !DILocation(line: 121, column: 25, scope: !737)
!934 = !{!"431"}
!935 = !DILocation(line: 121, column: 20, scope: !737)
!936 = !{!"432"}
!937 = !{!"433"}
!938 = !DILocation(line: 121, column: 54, scope: !737)
!939 = !{!"434"}
!940 = !{!"435"}
!941 = !DILocation(line: 121, column: 85, scope: !737)
!942 = !{!"436"}
!943 = !{!"437"}
!944 = !DILocation(line: 122, column: 20, scope: !737)
!945 = !{!"438"}
!946 = !{!"439"}
!947 = !DILocation(line: 124, column: 19, scope: !737)
!948 = !{!"440"}
!949 = !{!"441"}
!950 = !DILocation(line: 125, column: 23, scope: !737)
!951 = !{!"442"}
!952 = !{!"443"}
!953 = distinct !{!953, !716, !954, !311}
!954 = !DILocation(line: 126, column: 9, scope: !608)
!955 = !{!"444"}
!956 = !DILocation(line: 128, column: 13, scope: !608)
!957 = !{!"445"}
!958 = !DILocation(line: 128, column: 9, scope: !608)
!959 = !{!"446"}
!960 = !DILocation(line: 128, column: 18, scope: !608)
!961 = !{!"447"}
!962 = !DILocation(line: 129, column: 13, scope: !608)
!963 = !{!"448"}
!964 = !DILocation(line: 129, column: 9, scope: !608)
!965 = !{!"449"}
!966 = !DILocation(line: 129, column: 18, scope: !608)
!967 = !{!"450"}
!968 = !DILocation(line: 130, column: 13, scope: !608)
!969 = !{!"451"}
!970 = !DILocation(line: 130, column: 9, scope: !608)
!971 = !{!"452"}
!972 = !DILocation(line: 130, column: 18, scope: !608)
!973 = !{!"453"}
!974 = !DILocation(line: 131, column: 13, scope: !608)
!975 = !{!"454"}
!976 = !DILocation(line: 131, column: 9, scope: !608)
!977 = !{!"455"}
!978 = !DILocation(line: 131, column: 18, scope: !608)
!979 = !{!"456"}
!980 = !DILocation(line: 132, column: 13, scope: !608)
!981 = !{!"457"}
!982 = !DILocation(line: 132, column: 9, scope: !608)
!983 = !{!"458"}
!984 = !DILocation(line: 132, column: 18, scope: !608)
!985 = !{!"459"}
!986 = !DILocation(line: 133, column: 1, scope: !608)
!987 = !{!"460"}
!988 = distinct !DISubprogram(name: "U32TO8", scope: !22, file: !22, line: 39, type: !989, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !57, !27}
!991 = !DILocalVariable(name: "p", arg: 1, scope: !988, file: !22, line: 39, type: !57)
!992 = !DILocation(line: 0, scope: !988)
!993 = !{!"461"}
!994 = !DILocalVariable(name: "v", arg: 2, scope: !988, file: !22, line: 39, type: !27)
!995 = !{!"462"}
!996 = !DILocation(line: 40, column: 26, scope: !988)
!997 = !{!"463"}
!998 = !DILocation(line: 40, column: 16, scope: !988)
!999 = !{!"464"}
!1000 = !DILocation(line: 40, column: 9, scope: !988)
!1001 = !{!"465"}
!1002 = !DILocation(line: 40, column: 14, scope: !988)
!1003 = !{!"466"}
!1004 = !DILocation(line: 41, column: 19, scope: !988)
!1005 = !{!"467"}
!1006 = !DILocation(line: 41, column: 26, scope: !988)
!1007 = !{!"468"}
!1008 = !DILocation(line: 41, column: 16, scope: !988)
!1009 = !{!"469"}
!1010 = !DILocation(line: 41, column: 9, scope: !988)
!1011 = !{!"470"}
!1012 = !DILocation(line: 41, column: 14, scope: !988)
!1013 = !{!"471"}
!1014 = !DILocation(line: 42, column: 19, scope: !988)
!1015 = !{!"472"}
!1016 = !DILocation(line: 42, column: 26, scope: !988)
!1017 = !{!"473"}
!1018 = !DILocation(line: 42, column: 16, scope: !988)
!1019 = !{!"474"}
!1020 = !DILocation(line: 42, column: 9, scope: !988)
!1021 = !{!"475"}
!1022 = !DILocation(line: 42, column: 14, scope: !988)
!1023 = !{!"476"}
!1024 = !DILocation(line: 43, column: 19, scope: !988)
!1025 = !{!"477"}
!1026 = !DILocation(line: 43, column: 26, scope: !988)
!1027 = !{!"478"}
!1028 = !DILocation(line: 43, column: 16, scope: !988)
!1029 = !{!"479"}
!1030 = !DILocation(line: 43, column: 9, scope: !988)
!1031 = !{!"480"}
!1032 = !DILocation(line: 43, column: 14, scope: !988)
!1033 = !{!"481"}
!1034 = !DILocation(line: 44, column: 1, scope: !988)
!1035 = !{!"482"}
!1036 = distinct !DISubprogram(name: "U8TO32", scope: !22, file: !22, line: 29, type: !1037, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!27, !58}
!1039 = !DILocalVariable(name: "p", arg: 1, scope: !1036, file: !22, line: 29, type: !58)
!1040 = !DILocation(line: 0, scope: !1036)
!1041 = !{!"483"}
!1042 = !DILocation(line: 31, column: 27, scope: !1036)
!1043 = !{!"484"}
!1044 = !{!"485"}
!1045 = !{!"486"}
!1046 = !DILocation(line: 31, column: 32, scope: !1036)
!1047 = !{!"487"}
!1048 = !DILocation(line: 31, column: 11, scope: !1036)
!1049 = !{!"488"}
!1050 = !DILocation(line: 32, column: 27, scope: !1036)
!1051 = !{!"489"}
!1052 = !{!"490"}
!1053 = !{!"491"}
!1054 = !DILocation(line: 32, column: 32, scope: !1036)
!1055 = !{!"492"}
!1056 = !DILocation(line: 32, column: 11, scope: !1036)
!1057 = !{!"493"}
!1058 = !DILocation(line: 32, column: 40, scope: !1036)
!1059 = !{!"494"}
!1060 = !DILocation(line: 31, column: 47, scope: !1036)
!1061 = !{!"495"}
!1062 = !DILocation(line: 33, column: 27, scope: !1036)
!1063 = !{!"496"}
!1064 = !{!"497"}
!1065 = !{!"498"}
!1066 = !DILocation(line: 33, column: 32, scope: !1036)
!1067 = !{!"499"}
!1068 = !DILocation(line: 33, column: 11, scope: !1036)
!1069 = !{!"500"}
!1070 = !DILocation(line: 33, column: 40, scope: !1036)
!1071 = !{!"501"}
!1072 = !DILocation(line: 32, column: 47, scope: !1036)
!1073 = !{!"502"}
!1074 = !DILocation(line: 34, column: 27, scope: !1036)
!1075 = !{!"503"}
!1076 = !{!"504"}
!1077 = !{!"505"}
!1078 = !DILocation(line: 34, column: 32, scope: !1036)
!1079 = !{!"506"}
!1080 = !DILocation(line: 34, column: 11, scope: !1036)
!1081 = !{!"507"}
!1082 = !DILocation(line: 34, column: 40, scope: !1036)
!1083 = !{!"508"}
!1084 = !DILocation(line: 33, column: 47, scope: !1036)
!1085 = !{!"509"}
!1086 = !DILocation(line: 30, column: 9, scope: !1036)
!1087 = !{!"510"}
!1088 = distinct !DISubprogram(name: "poly1305_update", scope: !3, file: !3, line: 11, type: !1089, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !6, !58, !14}
!1091 = !DILocalVariable(name: "ctx", arg: 1, scope: !1088, file: !3, line: 11, type: !6)
!1092 = !DILocation(line: 0, scope: !1088)
!1093 = !{!"511"}
!1094 = !DILocalVariable(name: "m", arg: 2, scope: !1088, file: !3, line: 11, type: !58)
!1095 = !{!"512"}
!1096 = !DILocalVariable(name: "bytes", arg: 3, scope: !1088, file: !3, line: 12, type: !14)
!1097 = !{!"513"}
!1098 = !DILocation(line: 13, column: 66, scope: !1088)
!1099 = !{!"514"}
!1100 = !DILocation(line: 13, column: 37, scope: !1088)
!1101 = !{!"515"}
!1102 = !DILocalVariable(name: "st", scope: !1088, file: !3, line: 13, type: !20)
!1103 = !{!"516"}
!1104 = !DILocation(line: 17, column: 13, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 17, column: 9)
!1106 = !{!"517"}
!1107 = !{!"518"}
!1108 = !DILocation(line: 17, column: 9, scope: !1105)
!1109 = !{!"519"}
!1110 = !DILocation(line: 17, column: 9, scope: !1088)
!1111 = !{!"520"}
!1112 = !DILocation(line: 18, column: 62, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 17, column: 23)
!1114 = !{!"521"}
!1115 = !{!"522"}
!1116 = !DILocation(line: 18, column: 56, scope: !1113)
!1117 = !{!"523"}
!1118 = !DILocalVariable(name: "want", scope: !1113, file: !3, line: 18, type: !14)
!1119 = !DILocation(line: 0, scope: !1113)
!1120 = !{!"524"}
!1121 = !DILocation(line: 19, column: 18, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 19, column: 13)
!1123 = !{!"525"}
!1124 = !DILocation(line: 19, column: 13, scope: !1113)
!1125 = !{!"526"}
!1126 = !{!"527"}
!1127 = !DILocation(line: 20, column: 13, scope: !1122)
!1128 = !{!"528"}
!1129 = !{!"529"}
!1130 = !{!"530"}
!1131 = !DILocalVariable(name: "i", scope: !1088, file: !3, line: 14, type: !14)
!1132 = !{!"531"}
!1133 = !DILocation(line: 21, column: 14, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 21, column: 9)
!1135 = !{!"532"}
!1136 = !DILocation(line: 0, scope: !1134)
!1137 = !{!"533"}
!1138 = !{!"534"}
!1139 = !DILocation(line: 21, column: 23, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 21, column: 9)
!1141 = !{!"535"}
!1142 = !DILocation(line: 21, column: 9, scope: !1134)
!1143 = !{!"536"}
!1144 = !DILocation(line: 22, column: 44, scope: !1140)
!1145 = !{!"537"}
!1146 = !{!"538"}
!1147 = !DILocation(line: 22, column: 17, scope: !1140)
!1148 = !{!"539"}
!1149 = !DILocation(line: 22, column: 28, scope: !1140)
!1150 = !{!"540"}
!1151 = !{!"541"}
!1152 = !DILocation(line: 22, column: 37, scope: !1140)
!1153 = !{!"542"}
!1154 = !DILocation(line: 22, column: 13, scope: !1140)
!1155 = !{!"543"}
!1156 = !DILocation(line: 22, column: 42, scope: !1140)
!1157 = !{!"544"}
!1158 = !{!"545"}
!1159 = !DILocation(line: 21, column: 32, scope: !1140)
!1160 = !{!"546"}
!1161 = !{!"547"}
!1162 = !DILocation(line: 21, column: 9, scope: !1140)
!1163 = distinct !{!1163, !1142, !1164, !311}
!1164 = !DILocation(line: 22, column: 47, scope: !1134)
!1165 = !{!"548"}
!1166 = !DILocation(line: 23, column: 15, scope: !1113)
!1167 = !{!"549"}
!1168 = !{!"550"}
!1169 = !DILocation(line: 24, column: 11, scope: !1113)
!1170 = !{!"551"}
!1171 = !{!"552"}
!1172 = !DILocation(line: 25, column: 13, scope: !1113)
!1173 = !{!"553"}
!1174 = !DILocation(line: 25, column: 22, scope: !1113)
!1175 = !{!"554"}
!1176 = !{!"555"}
!1177 = !{!"556"}
!1178 = !DILocation(line: 26, column: 17, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 26, column: 13)
!1180 = !{!"557"}
!1181 = !{!"558"}
!1182 = !DILocation(line: 26, column: 26, scope: !1179)
!1183 = !{!"559"}
!1184 = !DILocation(line: 26, column: 13, scope: !1113)
!1185 = !{!"560"}
!1186 = !DILocation(line: 27, column: 13, scope: !1179)
!1187 = !{!"561"}
!1188 = !DILocation(line: 28, column: 33, scope: !1113)
!1189 = !{!"562"}
!1190 = !DILocation(line: 28, column: 29, scope: !1113)
!1191 = !{!"563"}
!1192 = !DILocation(line: 28, column: 9, scope: !1113)
!1193 = !{!"564"}
!1194 = !DILocation(line: 29, column: 13, scope: !1113)
!1195 = !{!"565"}
!1196 = !DILocation(line: 29, column: 22, scope: !1113)
!1197 = !{!"566"}
!1198 = !DILocation(line: 30, column: 5, scope: !1113)
!1199 = !{!"567"}
!1200 = !{!"568"}
!1201 = !{!"569"}
!1202 = !{!"570"}
!1203 = !{!"571"}
!1204 = !DILocation(line: 33, column: 15, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 33, column: 9)
!1206 = !{!"572"}
!1207 = !DILocation(line: 33, column: 9, scope: !1088)
!1208 = !{!"573"}
!1209 = !DILocation(line: 34, column: 42, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 33, column: 39)
!1211 = !{!"574"}
!1212 = !DILocalVariable(name: "want", scope: !1210, file: !3, line: 34, type: !14)
!1213 = !DILocation(line: 0, scope: !1210)
!1214 = !{!"575"}
!1215 = !DILocation(line: 35, column: 9, scope: !1210)
!1216 = !{!"576"}
!1217 = !DILocation(line: 36, column: 11, scope: !1210)
!1218 = !{!"577"}
!1219 = !{!"578"}
!1220 = !DILocation(line: 37, column: 15, scope: !1210)
!1221 = !{!"579"}
!1222 = !{!"580"}
!1223 = !DILocation(line: 38, column: 5, scope: !1210)
!1224 = !{!"581"}
!1225 = !{!"582"}
!1226 = !{!"583"}
!1227 = !{!"584"}
!1228 = !{!"585"}
!1229 = !DILocation(line: 41, column: 9, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 41, column: 9)
!1231 = !{!"586"}
!1232 = !DILocation(line: 41, column: 9, scope: !1088)
!1233 = !{!"587"}
!1234 = !{!"588"}
!1235 = !DILocation(line: 42, column: 14, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 42, column: 9)
!1237 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 41, column: 16)
!1238 = !{!"589"}
!1239 = !DILocation(line: 0, scope: !1236)
!1240 = !{!"590"}
!1241 = !{!"591"}
!1242 = !DILocation(line: 42, column: 23, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 42, column: 9)
!1244 = !{!"592"}
!1245 = !DILocation(line: 42, column: 9, scope: !1236)
!1246 = !{!"593"}
!1247 = !DILocation(line: 43, column: 44, scope: !1243)
!1248 = !{!"594"}
!1249 = !{!"595"}
!1250 = !DILocation(line: 43, column: 17, scope: !1243)
!1251 = !{!"596"}
!1252 = !DILocation(line: 43, column: 28, scope: !1243)
!1253 = !{!"597"}
!1254 = !{!"598"}
!1255 = !DILocation(line: 43, column: 37, scope: !1243)
!1256 = !{!"599"}
!1257 = !DILocation(line: 43, column: 13, scope: !1243)
!1258 = !{!"600"}
!1259 = !DILocation(line: 43, column: 42, scope: !1243)
!1260 = !{!"601"}
!1261 = !{!"602"}
!1262 = !DILocation(line: 42, column: 33, scope: !1243)
!1263 = !{!"603"}
!1264 = !{!"604"}
!1265 = !DILocation(line: 42, column: 9, scope: !1243)
!1266 = distinct !{!1266, !1245, !1267, !311}
!1267 = !DILocation(line: 43, column: 47, scope: !1236)
!1268 = !{!"605"}
!1269 = !DILocation(line: 44, column: 13, scope: !1237)
!1270 = !{!"606"}
!1271 = !DILocation(line: 44, column: 22, scope: !1237)
!1272 = !{!"607"}
!1273 = !{!"608"}
!1274 = !{!"609"}
!1275 = !DILocation(line: 45, column: 5, scope: !1237)
!1276 = !{!"610"}
!1277 = !DILocation(line: 46, column: 1, scope: !1088)
!1278 = !{!"611"}
!1279 = distinct !DISubprogram(name: "poly1305_init", scope: !22, file: !22, line: 47, type: !1280, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !6, !58}
!1282 = !DILocalVariable(name: "ctx", arg: 1, scope: !1279, file: !22, line: 47, type: !6)
!1283 = !DILocation(line: 0, scope: !1279)
!1284 = !{!"612"}
!1285 = !DILocalVariable(name: "key", arg: 2, scope: !1279, file: !22, line: 47, type: !58)
!1286 = !{!"613"}
!1287 = !DILocation(line: 48, column: 70, scope: !1279)
!1288 = !{!"614"}
!1289 = !DILocation(line: 48, column: 41, scope: !1279)
!1290 = !{!"615"}
!1291 = !DILocalVariable(name: "st", scope: !1279, file: !22, line: 48, type: !20)
!1292 = !{!"616"}
!1293 = !DILocation(line: 51, column: 29, scope: !1279)
!1294 = !{!"617"}
!1295 = !DILocation(line: 51, column: 21, scope: !1279)
!1296 = !{!"618"}
!1297 = !DILocation(line: 51, column: 44, scope: !1279)
!1298 = !{!"619"}
!1299 = !DILocation(line: 51, column: 13, scope: !1279)
!1300 = !{!"620"}
!1301 = !DILocation(line: 51, column: 9, scope: !1279)
!1302 = !{!"621"}
!1303 = !DILocation(line: 51, column: 18, scope: !1279)
!1304 = !{!"622"}
!1305 = !DILocation(line: 52, column: 29, scope: !1279)
!1306 = !{!"623"}
!1307 = !DILocation(line: 52, column: 21, scope: !1279)
!1308 = !{!"624"}
!1309 = !DILocation(line: 52, column: 38, scope: !1279)
!1310 = !{!"625"}
!1311 = !DILocation(line: 52, column: 44, scope: !1279)
!1312 = !{!"626"}
!1313 = !DILocation(line: 52, column: 13, scope: !1279)
!1314 = !{!"627"}
!1315 = !DILocation(line: 52, column: 9, scope: !1279)
!1316 = !{!"628"}
!1317 = !DILocation(line: 52, column: 18, scope: !1279)
!1318 = !{!"629"}
!1319 = !DILocation(line: 53, column: 29, scope: !1279)
!1320 = !{!"630"}
!1321 = !DILocation(line: 53, column: 21, scope: !1279)
!1322 = !{!"631"}
!1323 = !DILocation(line: 53, column: 38, scope: !1279)
!1324 = !{!"632"}
!1325 = !DILocation(line: 53, column: 44, scope: !1279)
!1326 = !{!"633"}
!1327 = !DILocation(line: 53, column: 13, scope: !1279)
!1328 = !{!"634"}
!1329 = !DILocation(line: 53, column: 9, scope: !1279)
!1330 = !{!"635"}
!1331 = !DILocation(line: 53, column: 18, scope: !1279)
!1332 = !{!"636"}
!1333 = !DILocation(line: 54, column: 29, scope: !1279)
!1334 = !{!"637"}
!1335 = !DILocation(line: 54, column: 21, scope: !1279)
!1336 = !{!"638"}
!1337 = !DILocation(line: 54, column: 38, scope: !1279)
!1338 = !{!"639"}
!1339 = !DILocation(line: 54, column: 44, scope: !1279)
!1340 = !{!"640"}
!1341 = !DILocation(line: 54, column: 13, scope: !1279)
!1342 = !{!"641"}
!1343 = !DILocation(line: 54, column: 9, scope: !1279)
!1344 = !{!"642"}
!1345 = !DILocation(line: 54, column: 18, scope: !1279)
!1346 = !{!"643"}
!1347 = !DILocation(line: 55, column: 29, scope: !1279)
!1348 = !{!"644"}
!1349 = !DILocation(line: 55, column: 21, scope: !1279)
!1350 = !{!"645"}
!1351 = !DILocation(line: 55, column: 38, scope: !1279)
!1352 = !{!"646"}
!1353 = !DILocation(line: 55, column: 44, scope: !1279)
!1354 = !{!"647"}
!1355 = !DILocation(line: 55, column: 13, scope: !1279)
!1356 = !{!"648"}
!1357 = !DILocation(line: 55, column: 9, scope: !1279)
!1358 = !{!"649"}
!1359 = !DILocation(line: 55, column: 18, scope: !1279)
!1360 = !{!"650"}
!1361 = !DILocation(line: 58, column: 13, scope: !1279)
!1362 = !{!"651"}
!1363 = !DILocation(line: 58, column: 9, scope: !1279)
!1364 = !{!"652"}
!1365 = !DILocation(line: 58, column: 18, scope: !1279)
!1366 = !{!"653"}
!1367 = !DILocation(line: 59, column: 13, scope: !1279)
!1368 = !{!"654"}
!1369 = !DILocation(line: 59, column: 9, scope: !1279)
!1370 = !{!"655"}
!1371 = !DILocation(line: 59, column: 18, scope: !1279)
!1372 = !{!"656"}
!1373 = !DILocation(line: 60, column: 13, scope: !1279)
!1374 = !{!"657"}
!1375 = !DILocation(line: 60, column: 9, scope: !1279)
!1376 = !{!"658"}
!1377 = !DILocation(line: 60, column: 18, scope: !1279)
!1378 = !{!"659"}
!1379 = !DILocation(line: 61, column: 13, scope: !1279)
!1380 = !{!"660"}
!1381 = !DILocation(line: 61, column: 9, scope: !1279)
!1382 = !{!"661"}
!1383 = !DILocation(line: 61, column: 18, scope: !1279)
!1384 = !{!"662"}
!1385 = !DILocation(line: 62, column: 13, scope: !1279)
!1386 = !{!"663"}
!1387 = !DILocation(line: 62, column: 9, scope: !1279)
!1388 = !{!"664"}
!1389 = !DILocation(line: 62, column: 18, scope: !1279)
!1390 = !{!"665"}
!1391 = !DILocation(line: 65, column: 30, scope: !1279)
!1392 = !{!"666"}
!1393 = !DILocation(line: 65, column: 22, scope: !1279)
!1394 = !{!"667"}
!1395 = !DILocation(line: 65, column: 13, scope: !1279)
!1396 = !{!"668"}
!1397 = !DILocation(line: 65, column: 9, scope: !1279)
!1398 = !{!"669"}
!1399 = !DILocation(line: 65, column: 20, scope: !1279)
!1400 = !{!"670"}
!1401 = !DILocation(line: 66, column: 30, scope: !1279)
!1402 = !{!"671"}
!1403 = !DILocation(line: 66, column: 22, scope: !1279)
!1404 = !{!"672"}
!1405 = !DILocation(line: 66, column: 13, scope: !1279)
!1406 = !{!"673"}
!1407 = !DILocation(line: 66, column: 9, scope: !1279)
!1408 = !{!"674"}
!1409 = !DILocation(line: 66, column: 20, scope: !1279)
!1410 = !{!"675"}
!1411 = !DILocation(line: 67, column: 30, scope: !1279)
!1412 = !{!"676"}
!1413 = !DILocation(line: 67, column: 22, scope: !1279)
!1414 = !{!"677"}
!1415 = !DILocation(line: 67, column: 13, scope: !1279)
!1416 = !{!"678"}
!1417 = !DILocation(line: 67, column: 9, scope: !1279)
!1418 = !{!"679"}
!1419 = !DILocation(line: 67, column: 20, scope: !1279)
!1420 = !{!"680"}
!1421 = !DILocation(line: 68, column: 30, scope: !1279)
!1422 = !{!"681"}
!1423 = !DILocation(line: 68, column: 22, scope: !1279)
!1424 = !{!"682"}
!1425 = !DILocation(line: 68, column: 13, scope: !1279)
!1426 = !{!"683"}
!1427 = !DILocation(line: 68, column: 9, scope: !1279)
!1428 = !{!"684"}
!1429 = !DILocation(line: 68, column: 20, scope: !1279)
!1430 = !{!"685"}
!1431 = !DILocation(line: 70, column: 13, scope: !1279)
!1432 = !{!"686"}
!1433 = !DILocation(line: 70, column: 22, scope: !1279)
!1434 = !{!"687"}
!1435 = !DILocation(line: 71, column: 13, scope: !1279)
!1436 = !{!"688"}
!1437 = !DILocation(line: 71, column: 19, scope: !1279)
!1438 = !{!"689"}
!1439 = !DILocation(line: 72, column: 1, scope: !1279)
!1440 = !{!"690"}
!1441 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_wrapper", scope: !181, file: !181, line: 10, type: !54, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !180, retainedNodes: !4)
!1442 = !DILocalVariable(name: "out", arg: 1, scope: !1441, file: !181, line: 10, type: !57)
!1443 = !DILocation(line: 0, scope: !1441)
!1444 = !{!"691"}
!1445 = !DILocalVariable(name: "m", arg: 2, scope: !1441, file: !181, line: 10, type: !58)
!1446 = !{!"692"}
!1447 = !DILocalVariable(name: "inlen", arg: 3, scope: !1441, file: !181, line: 11, type: !14)
!1448 = !{!"693"}
!1449 = !DILocalVariable(name: "key", arg: 4, scope: !1441, file: !181, line: 12, type: !58)
!1450 = !{!"694"}
!1451 = !DILocation(line: 14, column: 13, scope: !1441)
!1452 = !{!"695"}
!1453 = !DILocation(line: 14, column: 3, scope: !1441)
!1454 = !{!"696"}
!1455 = !DILocation(line: 15, column: 13, scope: !1441)
!1456 = !{!"697"}
!1457 = !DILocation(line: 15, column: 3, scope: !1441)
!1458 = !{!"698"}
!1459 = !DILocation(line: 16, column: 13, scope: !1441)
!1460 = !{!"699"}
!1461 = !DILocation(line: 16, column: 3, scope: !1441)
!1462 = !{!"700"}
!1463 = !DILocation(line: 18, column: 13, scope: !1441)
!1464 = !{!"701"}
!1465 = !DILocation(line: 18, column: 3, scope: !1441)
!1466 = !{!"702"}
!1467 = !DILocation(line: 20, column: 10, scope: !1441)
!1468 = !{!"703"}
!1469 = !DILocation(line: 20, column: 3, scope: !1441)
!1470 = !{!"704"}
!1471 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_wrapper_t", scope: !181, file: !181, line: 28, type: !105, scopeLine: 29, spFlags: DISPFlagDefinition, unit: !180, retainedNodes: !4)
!1472 = !{!"705"}
!1473 = !{!"706"}
!1474 = !{!"707"}
!1475 = !DILocalVariable(name: "dout", scope: !1471, file: !181, line: 30, type: !17)
!1476 = !DILocation(line: 30, column: 17, scope: !1471)
!1477 = !{!"708"}
!1478 = !DILocation(line: 30, column: 24, scope: !1471)
!1479 = !{!"709"}
!1480 = !{!"710"}
!1481 = !DILocalVariable(name: "din", scope: !1471, file: !181, line: 31, type: !59)
!1482 = !DILocation(line: 31, column: 24, scope: !1471)
!1483 = !{!"711"}
!1484 = !DILocation(line: 31, column: 30, scope: !1471)
!1485 = !{!"712"}
!1486 = !{!"713"}
!1487 = !DILocalVariable(name: "dk", scope: !1471, file: !181, line: 32, type: !59)
!1488 = !DILocation(line: 32, column: 21, scope: !1471)
!1489 = !{!"714"}
!1490 = !DILocation(line: 32, column: 26, scope: !1471)
!1491 = !{!"715"}
!1492 = !{!"716"}
!1493 = !DILocation(line: 33, column: 27, scope: !1471)
!1494 = !{!"717"}
!1495 = !DILocalVariable(name: "dc", scope: !1471, file: !181, line: 33, type: !59)
!1496 = !DILocation(line: 0, scope: !1471)
!1497 = !{!"718"}
!1498 = !DILocalVariable(name: "out", scope: !1471, file: !181, line: 34, type: !57)
!1499 = !{!"719"}
!1500 = !DILocalVariable(name: "m", scope: !1471, file: !181, line: 35, type: !58)
!1501 = !{!"720"}
!1502 = !DILocalVariable(name: "key", scope: !1471, file: !181, line: 36, type: !58)
!1503 = !{!"721"}
!1504 = !DILocation(line: 37, column: 28, scope: !1471)
!1505 = !{!"722"}
!1506 = !DILocalVariable(name: "inlen", scope: !1471, file: !181, line: 37, type: !14)
!1507 = !{!"723"}
!1508 = !DILocation(line: 38, column: 2, scope: !1471)
!1509 = !{!"724"}
!1510 = !DILocation(line: 39, column: 1, scope: !1471)
!1511 = !{!"725"}
!1512 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !82, file: !82, line: 23, type: !1513, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !4)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!56, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!1516 = !DILocalVariable(name: "impl", arg: 1, scope: !1512, file: !82, line: 23, type: !1515)
!1517 = !DILocation(line: 0, scope: !1512)
!1518 = !{!"726"}
!1519 = !DILocation(line: 25, column: 20, scope: !1512)
!1520 = !{!"727"}
!1521 = !DILocation(line: 27, column: 5, scope: !1512)
!1522 = !{!"728"}
!1523 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !82, file: !82, line: 31, type: !47, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !4)
!1524 = !DILocation(line: 34, column: 12, scope: !1523)
!1525 = !{!"729"}
!1526 = !DILocation(line: 34, column: 28, scope: !1523)
!1527 = !{!"730"}
!1528 = !{!"731"}
!1529 = !{!"732"}
!1530 = !DILocation(line: 34, column: 5, scope: !1523)
!1531 = !{!"733"}
!1532 = distinct !DISubprogram(name: "randombytes_random", scope: !82, file: !82, line: 41, type: !101, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !4)
!1533 = !DILocation(line: 44, column: 12, scope: !1532)
!1534 = !{!"734"}
!1535 = !DILocation(line: 44, column: 28, scope: !1532)
!1536 = !{!"735"}
!1537 = !{!"736"}
!1538 = !{!"737"}
!1539 = !DILocation(line: 44, column: 5, scope: !1532)
!1540 = !{!"738"}
!1541 = distinct !DISubprogram(name: "randombytes_stir", scope: !82, file: !82, line: 53, type: !105, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !4)
!1542 = !DILocation(line: 56, column: 9, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1541, file: !82, line: 56, column: 9)
!1544 = !{!"739"}
!1545 = !DILocation(line: 56, column: 24, scope: !1543)
!1546 = !{!"740"}
!1547 = !DILocation(line: 56, column: 32, scope: !1543)
!1548 = !{!"741"}
!1549 = !DILocation(line: 56, column: 35, scope: !1543)
!1550 = !{!"742"}
!1551 = !DILocation(line: 56, column: 51, scope: !1543)
!1552 = !{!"743"}
!1553 = !{!"744"}
!1554 = !DILocation(line: 56, column: 56, scope: !1543)
!1555 = !{!"745"}
!1556 = !DILocation(line: 56, column: 9, scope: !1541)
!1557 = !{!"746"}
!1558 = !DILocation(line: 57, column: 9, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1543, file: !82, line: 56, column: 65)
!1560 = !{!"747"}
!1561 = !DILocation(line: 57, column: 25, scope: !1559)
!1562 = !{!"748"}
!1563 = !{!"749"}
!1564 = !{!"750"}
!1565 = !DILocation(line: 58, column: 5, scope: !1559)
!1566 = !{!"751"}
!1567 = !DILocation(line: 87, column: 1, scope: !1541)
!1568 = !{!"752"}
!1569 = distinct !DISubprogram(name: "randombytes_uniform", scope: !82, file: !82, line: 94, type: !109, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !4)
!1570 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !1569, file: !82, line: 94, type: !111)
!1571 = !DILocation(line: 0, scope: !1569)
!1572 = !{!"753"}
!1573 = !DILocation(line: 99, column: 9, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !82, line: 99, column: 9)
!1575 = !{!"754"}
!1576 = !DILocation(line: 99, column: 24, scope: !1574)
!1577 = !{!"755"}
!1578 = !DILocation(line: 99, column: 32, scope: !1574)
!1579 = !{!"756"}
!1580 = !DILocation(line: 99, column: 35, scope: !1574)
!1581 = !{!"757"}
!1582 = !DILocation(line: 99, column: 51, scope: !1574)
!1583 = !{!"758"}
!1584 = !{!"759"}
!1585 = !DILocation(line: 99, column: 59, scope: !1574)
!1586 = !{!"760"}
!1587 = !DILocation(line: 99, column: 9, scope: !1569)
!1588 = !{!"761"}
!1589 = !DILocation(line: 100, column: 16, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1574, file: !82, line: 99, column: 68)
!1591 = !{!"762"}
!1592 = !DILocation(line: 100, column: 32, scope: !1590)
!1593 = !{!"763"}
!1594 = !{!"764"}
!1595 = !{!"765"}
!1596 = !DILocation(line: 100, column: 9, scope: !1590)
!1597 = !{!"766"}
!1598 = !DILocation(line: 102, column: 21, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1569, file: !82, line: 102, column: 9)
!1600 = !{!"767"}
!1601 = !DILocation(line: 102, column: 9, scope: !1569)
!1602 = !{!"768"}
!1603 = !DILocation(line: 103, column: 9, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !82, line: 102, column: 26)
!1605 = !{!"769"}
!1606 = !DILocation(line: 105, column: 23, scope: !1569)
!1607 = !{!"770"}
!1608 = !DILocation(line: 105, column: 36, scope: !1569)
!1609 = !{!"771"}
!1610 = !DILocalVariable(name: "min", scope: !1569, file: !82, line: 96, type: !84)
!1611 = !{!"772"}
!1612 = !DILocation(line: 106, column: 5, scope: !1569)
!1613 = !{!"773"}
!1614 = !DILocation(line: 107, column: 13, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1569, file: !82, line: 106, column: 8)
!1616 = !{!"774"}
!1617 = !DILocalVariable(name: "r", scope: !1569, file: !82, line: 97, type: !84)
!1618 = !{!"775"}
!1619 = !DILocation(line: 108, column: 5, scope: !1615)
!1620 = !{!"776"}
!1621 = !DILocation(line: 108, column: 16, scope: !1569)
!1622 = !{!"777"}
!1623 = distinct !{!1623, !1612, !1624, !311}
!1624 = !DILocation(line: 108, column: 21, scope: !1569)
!1625 = !{!"778"}
!1626 = !DILocation(line: 110, column: 14, scope: !1569)
!1627 = !{!"779"}
!1628 = !DILocation(line: 110, column: 5, scope: !1569)
!1629 = !{!"780"}
!1630 = !{!"781"}
!1631 = !DILocation(line: 111, column: 1, scope: !1569)
!1632 = !{!"782"}
!1633 = distinct !DISubprogram(name: "randombytes_buf", scope: !82, file: !82, line: 114, type: !114, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !4)
!1634 = !DILocalVariable(name: "buf", arg: 1, scope: !1633, file: !82, line: 114, type: !116)
!1635 = !DILocation(line: 0, scope: !1633)
!1636 = !{!"783"}
!1637 = !DILocalVariable(name: "size", arg: 2, scope: !1633, file: !82, line: 114, type: !117)
!1638 = !{!"784"}
!1639 = !DILocation(line: 117, column: 14, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1633, file: !82, line: 117, column: 9)
!1641 = !{!"785"}
!1642 = !DILocation(line: 117, column: 9, scope: !1633)
!1643 = !{!"786"}
!1644 = !DILocation(line: 118, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !82, line: 117, column: 29)
!1646 = !{!"787"}
!1647 = !DILocation(line: 118, column: 25, scope: !1645)
!1648 = !{!"788"}
!1649 = !{!"789"}
!1650 = !{!"790"}
!1651 = !DILocation(line: 119, column: 5, scope: !1645)
!1652 = !{!"791"}
!1653 = !DILocation(line: 128, column: 1, scope: !1633)
!1654 = !{!"792"}
!1655 = distinct !DISubprogram(name: "randombytes_close", scope: !82, file: !82, line: 131, type: !120, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !4)
!1656 = !DILocation(line: 133, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1655, file: !82, line: 133, column: 9)
!1658 = !{!"793"}
!1659 = !DILocation(line: 133, column: 24, scope: !1657)
!1660 = !{!"794"}
!1661 = !DILocation(line: 133, column: 32, scope: !1657)
!1662 = !{!"795"}
!1663 = !DILocation(line: 133, column: 35, scope: !1657)
!1664 = !{!"796"}
!1665 = !DILocation(line: 133, column: 51, scope: !1657)
!1666 = !{!"797"}
!1667 = !{!"798"}
!1668 = !DILocation(line: 133, column: 57, scope: !1657)
!1669 = !{!"799"}
!1670 = !DILocation(line: 133, column: 9, scope: !1655)
!1671 = !{!"800"}
!1672 = !DILocation(line: 134, column: 16, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1657, file: !82, line: 133, column: 66)
!1674 = !{!"801"}
!1675 = !DILocation(line: 134, column: 32, scope: !1673)
!1676 = !{!"802"}
!1677 = !{!"803"}
!1678 = !{!"804"}
!1679 = !DILocation(line: 134, column: 9, scope: !1673)
!1680 = !{!"805"}
!1681 = !DILocation(line: 136, column: 5, scope: !1655)
!1682 = !{!"806"}
!1683 = !DILocation(line: 0, scope: !1655)
!1684 = !{!"807"}
!1685 = !DILocation(line: 137, column: 1, scope: !1655)
!1686 = !{!"808"}
!1687 = distinct !DISubprogram(name: "randombytes", scope: !82, file: !82, line: 140, type: !1688, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !81, retainedNodes: !4)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!1691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1692 = !DILocalVariable(name: "buf", arg: 1, scope: !1687, file: !82, line: 140, type: !1690)
!1693 = !DILocation(line: 0, scope: !1687)
!1694 = !{!"809"}
!1695 = !DILocalVariable(name: "buf_len", arg: 2, scope: !1687, file: !82, line: 140, type: !1691)
!1696 = !{!"810"}
!1697 = !DILocation(line: 142, column: 5, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !82, line: 142, column: 5)
!1699 = distinct !DILexicalBlock(scope: !1687, file: !82, line: 142, column: 5)
!1700 = !{!"811"}
!1701 = !DILocation(line: 142, column: 5, scope: !1699)
!1702 = !{!"812"}
!1703 = !{!"813"}
!1704 = !{!"814"}
!1705 = !{!"815"}
!1706 = !{!"816"}
!1707 = !{!"817"}
!1708 = !{!"818"}
!1709 = !DILocation(line: 143, column: 5, scope: !1687)
!1710 = !{!"819"}
!1711 = !DILocation(line: 144, column: 1, scope: !1687)
!1712 = !{!"820"}
!1713 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !129, file: !129, line: 292, type: !47, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !4)
!1714 = !{!"821"}
!1715 = !DILocation(line: 294, column: 5, scope: !1713)
!1716 = !{!"822"}
!1717 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !129, file: !129, line: 249, type: !101, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !4)
!1718 = !{!"823"}
!1719 = !DILocalVariable(name: "r", scope: !1717, file: !129, line: 251, type: !84)
!1720 = !DILocation(line: 251, column: 14, scope: !1717)
!1721 = !{!"824"}
!1722 = !DILocation(line: 253, column: 31, scope: !1717)
!1723 = !{!"825"}
!1724 = !DILocation(line: 253, column: 5, scope: !1717)
!1725 = !{!"826"}
!1726 = !DILocation(line: 255, column: 12, scope: !1717)
!1727 = !{!"827"}
!1728 = !DILocation(line: 255, column: 5, scope: !1717)
!1729 = !{!"828"}
!1730 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !129, file: !129, line: 206, type: !105, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !4)
!1731 = !{!"829"}
!1732 = !DILocation(line: 208, column: 16, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !129, line: 208, column: 9)
!1734 = !{!"830"}
!1735 = !DILocation(line: 208, column: 28, scope: !1733)
!1736 = !{!"831"}
!1737 = !DILocation(line: 208, column: 9, scope: !1730)
!1738 = !{!"832"}
!1739 = !DILocation(line: 209, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1733, file: !129, line: 208, column: 34)
!1741 = !{!"833"}
!1742 = !{!"834"}
!1743 = !DILocation(line: 210, column: 28, scope: !1740)
!1744 = !{!"835"}
!1745 = !DILocation(line: 211, column: 5, scope: !1740)
!1746 = !{!"836"}
!1747 = !DILocation(line: 212, column: 1, scope: !1730)
!1748 = !{!"837"}
!1749 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !129, file: !129, line: 259, type: !114, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !4)
!1750 = !DILocalVariable(name: "buf", arg: 1, scope: !1749, file: !129, line: 259, type: !116)
!1751 = !DILocation(line: 0, scope: !1749)
!1752 = !{!"838"}
!1753 = !DILocalVariable(name: "size", arg: 2, scope: !1749, file: !129, line: 259, type: !117)
!1754 = !{!"839"}
!1755 = !DILocation(line: 261, column: 5, scope: !1749)
!1756 = !{!"840"}
!1757 = !{!"841"}
!1758 = !DILocation(line: 268, column: 16, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1749, file: !129, line: 268, column: 9)
!1760 = !{!"842"}
!1761 = !DILocation(line: 268, column: 36, scope: !1759)
!1762 = !{!"843"}
!1763 = !DILocation(line: 268, column: 9, scope: !1749)
!1764 = !{!"844"}
!1765 = !DILocation(line: 269, column: 13, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !129, line: 269, column: 13)
!1767 = distinct !DILexicalBlock(scope: !1759, file: !129, line: 268, column: 42)
!1768 = !{!"845"}
!1769 = !DILocation(line: 269, column: 52, scope: !1766)
!1770 = !{!"846"}
!1771 = !DILocation(line: 269, column: 13, scope: !1767)
!1772 = !{!"847"}
!1773 = !DILocation(line: 270, column: 13, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1766, file: !129, line: 269, column: 58)
!1775 = !{!"848"}
!1776 = !{!"849"}
!1777 = !DILocation(line: 272, column: 9, scope: !1767)
!1778 = !{!"850"}
!1779 = !{!"851"}
!1780 = !DILocation(line: 275, column: 16, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1749, file: !129, line: 275, column: 9)
!1782 = !{!"852"}
!1783 = !DILocation(line: 275, column: 38, scope: !1781)
!1784 = !{!"853"}
!1785 = !DILocation(line: 275, column: 44, scope: !1781)
!1786 = !{!"854"}
!1787 = !{!"855"}
!1788 = !DILocation(line: 276, column: 26, scope: !1781)
!1789 = !{!"856"}
!1790 = !DILocation(line: 276, column: 9, scope: !1781)
!1791 = !{!"857"}
!1792 = !DILocation(line: 276, column: 60, scope: !1781)
!1793 = !{!"858"}
!1794 = !DILocation(line: 275, column: 9, scope: !1749)
!1795 = !{!"859"}
!1796 = !DILocation(line: 277, column: 9, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1781, file: !129, line: 276, column: 79)
!1798 = !{!"860"}
!1799 = !{!"861"}
!1800 = !DILocation(line: 287, column: 1, scope: !1749)
!1801 = !{!"862"}
!1802 = !{!"863"}
!1803 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !129, file: !129, line: 223, type: !120, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !4)
!1804 = !DILocalVariable(name: "ret", scope: !1803, file: !129, line: 225, type: !56)
!1805 = !DILocation(line: 0, scope: !1803)
!1806 = !{!"864"}
!1807 = !{!"865"}
!1808 = !DILocation(line: 228, column: 16, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1803, file: !129, line: 228, column: 9)
!1810 = !{!"866"}
!1811 = !DILocation(line: 228, column: 38, scope: !1809)
!1812 = !{!"867"}
!1813 = !DILocation(line: 228, column: 44, scope: !1809)
!1814 = !{!"868"}
!1815 = !{!"869"}
!1816 = !DILocation(line: 229, column: 22, scope: !1809)
!1817 = !{!"870"}
!1818 = !DILocation(line: 229, column: 9, scope: !1809)
!1819 = !{!"871"}
!1820 = !DILocation(line: 229, column: 45, scope: !1809)
!1821 = !{!"872"}
!1822 = !DILocation(line: 228, column: 9, scope: !1803)
!1823 = !{!"873"}
!1824 = !{!"874"}
!1825 = !DILocation(line: 230, column: 38, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1809, file: !129, line: 229, column: 51)
!1827 = !{!"875"}
!1828 = !{!"876"}
!1829 = !DILocation(line: 231, column: 28, scope: !1826)
!1830 = !{!"877"}
!1831 = !{!"878"}
!1832 = !DILocation(line: 233, column: 5, scope: !1826)
!1833 = !{!"879"}
!1834 = !{!"880"}
!1835 = !{!"881"}
!1836 = !{!"882"}
!1837 = !DILocation(line: 235, column: 16, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1803, file: !129, line: 235, column: 9)
!1839 = !{!"883"}
!1840 = !DILocation(line: 235, column: 36, scope: !1838)
!1841 = !{!"884"}
!1842 = !DILocation(line: 235, column: 9, scope: !1803)
!1843 = !{!"885"}
!1844 = !{!"886"}
!1845 = !DILocation(line: 237, column: 5, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1838, file: !129, line: 235, column: 42)
!1847 = !{!"887"}
!1848 = !{!"888"}
!1849 = !{!"889"}
!1850 = !DILocation(line: 245, column: 5, scope: !1803)
!1851 = !{!"890"}
!1852 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !129, file: !129, line: 215, type: !105, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !4)
!1853 = !{!"891"}
!1854 = !DILocation(line: 217, column: 16, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !129, line: 217, column: 9)
!1856 = !{!"892"}
!1857 = !DILocation(line: 217, column: 28, scope: !1855)
!1858 = !{!"893"}
!1859 = !DILocation(line: 217, column: 9, scope: !1852)
!1860 = !{!"894"}
!1861 = !DILocation(line: 218, column: 9, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1855, file: !129, line: 217, column: 34)
!1863 = !{!"895"}
!1864 = !DILocation(line: 219, column: 5, scope: !1862)
!1865 = !{!"896"}
!1866 = !DILocation(line: 220, column: 1, scope: !1852)
!1867 = !{!"897"}
!1868 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !129, file: !129, line: 151, type: !1869, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !4)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!56, !116, !89}
!1871 = !DILocalVariable(name: "buf_", arg: 1, scope: !1868, file: !129, line: 151, type: !116)
!1872 = !DILocation(line: 0, scope: !1868)
!1873 = !{!"898"}
!1874 = !DILocalVariable(name: "size", arg: 2, scope: !1868, file: !129, line: 151, type: !89)
!1875 = !{!"899"}
!1876 = !DILocalVariable(name: "buf", scope: !1868, file: !129, line: 153, type: !57)
!1877 = !{!"900"}
!1878 = !DILocalVariable(name: "chunk_size", scope: !1868, file: !129, line: 154, type: !89)
!1879 = !{!"901"}
!1880 = !DILocation(line: 156, column: 5, scope: !1868)
!1881 = !{!"902"}
!1882 = !{!"903"}
!1883 = !{!"904"}
!1884 = !{!"905"}
!1885 = !{!"906"}
!1886 = !{!"907"}
!1887 = !{!"908"}
!1888 = !DILocation(line: 157, column: 18, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !129, line: 157, column: 13)
!1890 = distinct !DILexicalBlock(scope: !1868, file: !129, line: 156, column: 8)
!1891 = !{!"909"}
!1892 = !DILocation(line: 157, column: 13, scope: !1890)
!1893 = !{!"910"}
!1894 = !{!"911"}
!1895 = !DILocation(line: 159, column: 13, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !129, line: 159, column: 13)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !129, line: 159, column: 13)
!1898 = distinct !DILexicalBlock(scope: !1889, file: !129, line: 157, column: 32)
!1899 = !{!"912"}
!1900 = !DILocation(line: 159, column: 13, scope: !1897)
!1901 = !{!"913"}
!1902 = !{!"914"}
!1903 = !{!"915"}
!1904 = !{!"916"}
!1905 = !{!"917"}
!1906 = !{!"918"}
!1907 = !{!"919"}
!1908 = !DILocation(line: 160, column: 9, scope: !1898)
!1909 = !{!"920"}
!1910 = !{!"921"}
!1911 = !{!"922"}
!1912 = !DILocation(line: 161, column: 13, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1890, file: !129, line: 161, column: 13)
!1914 = !{!"923"}
!1915 = !DILocation(line: 161, column: 59, scope: !1913)
!1916 = !{!"924"}
!1917 = !DILocation(line: 161, column: 13, scope: !1890)
!1918 = !{!"925"}
!1919 = !DILocation(line: 162, column: 13, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1913, file: !129, line: 161, column: 65)
!1921 = !{!"926"}
!1922 = !DILocation(line: 164, column: 14, scope: !1890)
!1923 = !{!"927"}
!1924 = !{!"928"}
!1925 = !DILocation(line: 165, column: 13, scope: !1890)
!1926 = !{!"929"}
!1927 = !{!"930"}
!1928 = !DILocation(line: 166, column: 5, scope: !1890)
!1929 = !{!"931"}
!1930 = !DILocation(line: 166, column: 19, scope: !1868)
!1931 = !{!"932"}
!1932 = distinct !{!1932, !1880, !1933, !311}
!1933 = !DILocation(line: 166, column: 32, scope: !1868)
!1934 = !{!"933"}
!1935 = !DILocation(line: 168, column: 5, scope: !1868)
!1936 = !{!"934"}
!1937 = !{!"935"}
!1938 = !DILocation(line: 169, column: 1, scope: !1868)
!1939 = !{!"936"}
!1940 = distinct !DISubprogram(name: "safe_read", scope: !129, file: !129, line: 77, type: !1941, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !4)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!131, !1943, !116, !89}
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!1944 = !DILocalVariable(name: "fd", arg: 1, scope: !1940, file: !129, line: 77, type: !1943)
!1945 = !DILocation(line: 0, scope: !1940)
!1946 = !{!"937"}
!1947 = !DILocalVariable(name: "buf_", arg: 2, scope: !1940, file: !129, line: 77, type: !116)
!1948 = !{!"938"}
!1949 = !DILocalVariable(name: "size", arg: 3, scope: !1940, file: !129, line: 77, type: !89)
!1950 = !{!"939"}
!1951 = !DILocalVariable(name: "buf", scope: !1940, file: !129, line: 79, type: !57)
!1952 = !{!"940"}
!1953 = !DILocation(line: 82, column: 5, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !129, line: 82, column: 5)
!1955 = distinct !DILexicalBlock(scope: !1940, file: !129, line: 82, column: 5)
!1956 = !{!"941"}
!1957 = !DILocation(line: 82, column: 5, scope: !1955)
!1958 = !{!"942"}
!1959 = !{!"943"}
!1960 = !{!"944"}
!1961 = !{!"945"}
!1962 = !{!"946"}
!1963 = !{!"947"}
!1964 = !{!"948"}
!1965 = !DILocation(line: 83, column: 5, scope: !1940)
!1966 = !{!"949"}
!1967 = !{!"950"}
!1968 = !{!"951"}
!1969 = !{!"952"}
!1970 = !{!"953"}
!1971 = !DILocation(line: 84, column: 9, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1940, file: !129, line: 83, column: 8)
!1973 = !{!"954"}
!1974 = !DILocation(line: 84, column: 26, scope: !1972)
!1975 = !{!"955"}
!1976 = !DILocalVariable(name: "readnb", scope: !1940, file: !129, line: 80, type: !131)
!1977 = !{!"956"}
!1978 = !DILocation(line: 84, column: 47, scope: !1972)
!1979 = !{!"957"}
!1980 = !DILocation(line: 84, column: 61, scope: !1972)
!1981 = !{!"958"}
!1982 = !DILocation(line: 85, column: 17, scope: !1972)
!1983 = !{!"959"}
!1984 = !{!"960"}
!1985 = !DILocation(line: 85, column: 23, scope: !1972)
!1986 = !{!"961"}
!1987 = !DILocation(line: 85, column: 32, scope: !1972)
!1988 = !{!"962"}
!1989 = !DILocation(line: 85, column: 35, scope: !1972)
!1990 = !{!"963"}
!1991 = !{!"964"}
!1992 = !DILocation(line: 85, column: 41, scope: !1972)
!1993 = !{!"965"}
!1994 = !{!"966"}
!1995 = !{!"967"}
!1996 = !{!"968"}
!1997 = !DILocation(line: 0, scope: !1972)
!1998 = !{!"969"}
!1999 = !{!"970"}
!2000 = distinct !{!2000, !1971, !2001, !311}
!2001 = !DILocation(line: 85, column: 52, scope: !1972)
!2002 = !{!"971"}
!2003 = !DILocation(line: 86, column: 20, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1972, file: !129, line: 86, column: 13)
!2005 = !{!"972"}
!2006 = !DILocation(line: 86, column: 13, scope: !1972)
!2007 = !{!"973"}
!2008 = !DILocation(line: 87, column: 13, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !129, line: 86, column: 35)
!2010 = !{!"974"}
!2011 = !DILocation(line: 89, column: 20, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1972, file: !129, line: 89, column: 13)
!2013 = !{!"975"}
!2014 = !DILocation(line: 89, column: 13, scope: !1972)
!2015 = !{!"976"}
!2016 = !DILocation(line: 90, column: 13, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2012, file: !129, line: 89, column: 36)
!2018 = !{!"977"}
!2019 = !DILocation(line: 92, column: 14, scope: !1972)
!2020 = !{!"978"}
!2021 = !{!"979"}
!2022 = !DILocation(line: 93, column: 13, scope: !1972)
!2023 = !{!"980"}
!2024 = !{!"981"}
!2025 = !DILocation(line: 94, column: 5, scope: !1972)
!2026 = !{!"982"}
!2027 = !DILocation(line: 94, column: 19, scope: !1940)
!2028 = !{!"983"}
!2029 = distinct !{!2029, !1965, !2030, !311}
!2030 = !DILocation(line: 94, column: 32, scope: !1940)
!2031 = !{!"984"}
!2032 = !{!"985"}
!2033 = !{!"986"}
!2034 = !DILocation(line: 96, column: 27, scope: !1940)
!2035 = !{!"987"}
!2036 = !{!"988"}
!2037 = !{!"989"}
!2038 = !DILocation(line: 96, column: 5, scope: !1940)
!2039 = !{!"990"}
!2040 = !{!"991"}
!2041 = !DILocation(line: 97, column: 1, scope: !1940)
!2042 = !{!"992"}
!2043 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !129, file: !129, line: 138, type: !2044, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !4)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!56, !116, !117}
!2046 = !DILocalVariable(name: "buf", arg: 1, scope: !2043, file: !129, line: 138, type: !116)
!2047 = !DILocation(line: 0, scope: !2043)
!2048 = !{!"993"}
!2049 = !DILocalVariable(name: "size", arg: 2, scope: !2043, file: !129, line: 138, type: !117)
!2050 = !{!"994"}
!2051 = !DILocation(line: 142, column: 5, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !129, line: 142, column: 5)
!2053 = distinct !DILexicalBlock(scope: !2043, file: !129, line: 142, column: 5)
!2054 = !{!"995"}
!2055 = !DILocation(line: 142, column: 5, scope: !2053)
!2056 = !{!"996"}
!2057 = !{!"997"}
!2058 = !{!"998"}
!2059 = !{!"999"}
!2060 = !{!"1000"}
!2061 = !{!"1001"}
!2062 = !{!"1002"}
!2063 = !DILocation(line: 143, column: 5, scope: !2043)
!2064 = !{!"1003"}
!2065 = !DILocation(line: 144, column: 46, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2043, file: !129, line: 143, column: 8)
!2067 = !{!"1004"}
!2068 = !DILocation(line: 144, column: 18, scope: !2066)
!2069 = !{!"1005"}
!2070 = !{!"1006"}
!2071 = !DILocalVariable(name: "readnb", scope: !2043, file: !129, line: 140, type: !56)
!2072 = !{!"1007"}
!2073 = !DILocation(line: 145, column: 5, scope: !2066)
!2074 = !{!"1008"}
!2075 = !DILocation(line: 145, column: 21, scope: !2043)
!2076 = !{!"1009"}
!2077 = !DILocation(line: 145, column: 25, scope: !2043)
!2078 = !{!"1010"}
!2079 = !DILocation(line: 145, column: 29, scope: !2043)
!2080 = !{!"1011"}
!2081 = !{!"1012"}
!2082 = !DILocation(line: 145, column: 35, scope: !2043)
!2083 = !{!"1013"}
!2084 = !DILocation(line: 145, column: 44, scope: !2043)
!2085 = !{!"1014"}
!2086 = !DILocation(line: 145, column: 47, scope: !2043)
!2087 = !{!"1015"}
!2088 = !{!"1016"}
!2089 = !DILocation(line: 145, column: 53, scope: !2043)
!2090 = !{!"1017"}
!2091 = !{!"1018"}
!2092 = !{!"1019"}
!2093 = !{!"1020"}
!2094 = !{!"1021"}
!2095 = distinct !{!2095, !2063, !2096, !311}
!2096 = !DILocation(line: 145, column: 63, scope: !2043)
!2097 = !{!"1022"}
!2098 = !DILocation(line: 147, column: 23, scope: !2043)
!2099 = !{!"1023"}
!2100 = !DILocation(line: 147, column: 20, scope: !2043)
!2101 = !{!"1024"}
!2102 = !{!"1025"}
!2103 = !DILocation(line: 147, column: 35, scope: !2043)
!2104 = !{!"1026"}
!2105 = !DILocation(line: 147, column: 5, scope: !2043)
!2106 = !{!"1027"}
!2107 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !129, file: !129, line: 173, type: !105, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !128, retainedNodes: !4)
!2108 = !{!"1028"}
!2109 = !DILocation(line: 175, column: 32, scope: !2107)
!2110 = !{!"1029"}
!2111 = !{!"1030"}
!2112 = !DILocalVariable(name: "errno_save", scope: !2107, file: !129, line: 175, type: !1943)
!2113 = !DILocation(line: 0, scope: !2107)
!2114 = !{!"1031"}
!2115 = !DILocalVariable(name: "fodder", scope: !2116, file: !129, line: 179, type: !37)
!2116 = distinct !DILexicalBlock(scope: !2107, file: !129, line: 178, column: 5)
!2117 = !DILocation(line: 179, column: 16, scope: !2116)
!2118 = !{!"1032"}
!2119 = !DILocation(line: 181, column: 34, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !129, line: 181, column: 6)
!2121 = !{!"1033"}
!2122 = !DILocation(line: 181, column: 6, scope: !2120)
!2123 = !{!"1034"}
!2124 = !DILocation(line: 181, column: 57, scope: !2120)
!2125 = !{!"1035"}
!2126 = !DILocation(line: 181, column: 6, scope: !2116)
!2127 = !{!"1036"}
!2128 = !{!"1037"}
!2129 = !DILocation(line: 182, column: 33, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2120, file: !129, line: 181, column: 63)
!2131 = !{!"1038"}
!2132 = !DILocation(line: 183, column: 6, scope: !2130)
!2133 = !{!"1039"}
!2134 = !DILocation(line: 183, column: 12, scope: !2130)
!2135 = !{!"1040"}
!2136 = !DILocation(line: 184, column: 6, scope: !2130)
!2137 = !{!"1041"}
!2138 = !{!"1042"}
!2139 = !DILocation(line: 186, column: 29, scope: !2116)
!2140 = !{!"1043"}
!2141 = !DILocation(line: 191, column: 10, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2107, file: !129, line: 190, column: 9)
!2143 = !{!"1044"}
!2144 = !{!"1045"}
!2145 = !DILocation(line: 190, column: 39, scope: !2142)
!2146 = !{!"1046"}
!2147 = !DILocation(line: 191, column: 51, scope: !2142)
!2148 = !{!"1047"}
!2149 = !DILocation(line: 190, column: 9, scope: !2107)
!2150 = !{!"1048"}
!2151 = !DILocation(line: 192, column: 9, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2142, file: !129, line: 191, column: 58)
!2153 = !{!"1049"}
!2154 = !{!"1050"}
!2155 = !DILocation(line: 194, column: 5, scope: !2107)
!2156 = !{!"1051"}
!2157 = !DILocation(line: 194, column: 11, scope: !2107)
!2158 = !{!"1052"}
!2159 = !DILocation(line: 195, column: 1, scope: !2107)
!2160 = !{!"1053"}
!2161 = !{!"1054"}
!2162 = !{!"1055"}
!2163 = !DILocalVariable(name: "st", scope: !146, file: !129, line: 105, type: !2164)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2165, line: 46, size: 1152, elements: !2166)
!2165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2166 = !{!2167, !2169, !2171, !2173, !2175, !2177, !2179, !2180, !2181, !2183, !2185, !2187, !2195, !2196, !2197}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2164, file: !2165, line: 48, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !87, line: 145, baseType: !27)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2164, file: !2165, line: 53, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !87, line: 148, baseType: !27)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2164, file: !2165, line: 61, baseType: !2172, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !87, line: 151, baseType: !27)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2164, file: !2165, line: 62, baseType: !2174, size: 32, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !87, line: 150, baseType: !88)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2164, file: !2165, line: 64, baseType: !2176, size: 32, offset: 224)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !87, line: 146, baseType: !88)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2164, file: !2165, line: 65, baseType: !2178, size: 32, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !87, line: 147, baseType: !88)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2164, file: !2165, line: 67, baseType: !56, size: 32, offset: 288)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2164, file: !2165, line: 69, baseType: !2168, size: 64, offset: 320)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2164, file: !2165, line: 74, baseType: !2182, size: 64, offset: 384)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !87, line: 152, baseType: !134)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2164, file: !2165, line: 78, baseType: !2184, size: 64, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !87, line: 174, baseType: !134)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2164, file: !2165, line: 80, baseType: !2186, size: 64, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !87, line: 179, baseType: !134)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2164, file: !2165, line: 91, baseType: !2188, size: 128, offset: 576)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2189, line: 10, size: 128, elements: !2190)
!2189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2190 = !{!2191, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2188, file: !2189, line: 12, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !87, line: 160, baseType: !134)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2188, file: !2189, line: 16, baseType: !2194, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !87, line: 196, baseType: !134)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2164, file: !2165, line: 92, baseType: !2188, size: 128, offset: 704)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2164, file: !2165, line: 93, baseType: !2188, size: 128, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2164, file: !2165, line: 106, baseType: !2198, size: 192, offset: 960)
!2198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2194, size: 192, elements: !148)
!2199 = !DILocation(line: 105, column: 24, scope: !146)
!2200 = !{!"1056"}
!2201 = !DILocalVariable(name: "device", scope: !146, file: !129, line: 112, type: !2202)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!2203 = !DILocation(line: 0, scope: !146)
!2204 = !{!"1057"}
!2205 = !{!"1058"}
!2206 = !DILocation(line: 115, column: 5, scope: !146)
!2207 = !{!"1059"}
!2208 = !{!"1060"}
!2209 = !{!"1061"}
!2210 = !DILocation(line: 116, column: 19, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !146, file: !129, line: 115, column: 8)
!2212 = !{!"1062"}
!2213 = !DILocation(line: 116, column: 14, scope: !2211)
!2214 = !{!"1063"}
!2215 = !DILocalVariable(name: "fd", scope: !146, file: !129, line: 113, type: !56)
!2216 = !{!"1064"}
!2217 = !DILocation(line: 117, column: 16, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2211, file: !129, line: 117, column: 13)
!2219 = !{!"1065"}
!2220 = !DILocation(line: 117, column: 13, scope: !2211)
!2221 = !{!"1066"}
!2222 = !DILocation(line: 118, column: 17, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !129, line: 118, column: 17)
!2224 = distinct !DILexicalBlock(scope: !2218, file: !129, line: 117, column: 23)
!2225 = !{!"1067"}
!2226 = !DILocation(line: 118, column: 32, scope: !2223)
!2227 = !{!"1068"}
!2228 = !DILocation(line: 118, column: 37, scope: !2223)
!2229 = !{!"1069"}
!2230 = !DILocation(line: 118, column: 40, scope: !2223)
!2231 = !{!"1070"}
!2232 = !{!"1071"}
!2233 = !{!"1072"}
!2234 = !{!"1073"}
!2235 = !DILocation(line: 118, column: 17, scope: !2224)
!2236 = !{!"1074"}
!2237 = !DILocation(line: 120, column: 43, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2223, file: !129, line: 118, column: 61)
!2239 = !{!"1075"}
!2240 = !DILocation(line: 120, column: 62, scope: !2238)
!2241 = !{!"1076"}
!2242 = !DILocation(line: 120, column: 24, scope: !2238)
!2243 = !{!"1077"}
!2244 = !DILocation(line: 122, column: 17, scope: !2238)
!2245 = !{!"1078"}
!2246 = !DILocation(line: 124, column: 20, scope: !2224)
!2247 = !{!"1079"}
!2248 = !DILocation(line: 125, column: 9, scope: !2224)
!2249 = !{!"1080"}
!2250 = !DILocation(line: 125, column: 20, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2218, file: !129, line: 125, column: 20)
!2252 = !{!"1081"}
!2253 = !{!"1082"}
!2254 = !DILocation(line: 125, column: 26, scope: !2251)
!2255 = !{!"1083"}
!2256 = !DILocation(line: 125, column: 20, scope: !2218)
!2257 = !{!"1084"}
!2258 = !DILocation(line: 126, column: 13, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2251, file: !129, line: 125, column: 36)
!2260 = !{!"1085"}
!2261 = !{!"1086"}
!2262 = !DILocation(line: 128, column: 15, scope: !2211)
!2263 = !{!"1087"}
!2264 = !{!"1088"}
!2265 = !DILocation(line: 129, column: 5, scope: !2211)
!2266 = !{!"1089"}
!2267 = !{!"1090"}
!2268 = !{!"1091"}
!2269 = !DILocation(line: 129, column: 14, scope: !146)
!2270 = !{!"1092"}
!2271 = !DILocation(line: 129, column: 22, scope: !146)
!2272 = !{!"1093"}
!2273 = distinct !{!2273, !2206, !2274, !311}
!2274 = !DILocation(line: 129, column: 29, scope: !146)
!2275 = !{!"1094"}
!2276 = !DILocation(line: 131, column: 5, scope: !146)
!2277 = !{!"1095"}
!2278 = !DILocation(line: 131, column: 11, scope: !146)
!2279 = !{!"1096"}
!2280 = !DILocation(line: 132, column: 5, scope: !146)
!2281 = !{!"1097"}
!2282 = !{!"1098"}
!2283 = !DILocation(line: 134, column: 1, scope: !146)
!2284 = !{!"1099"}
!2285 = distinct !DISubprogram(name: "sodium_memzero", scope: !174, file: !174, line: 58, type: !114, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2286 = !DILocalVariable(name: "pnt", arg: 1, scope: !2285, file: !174, line: 58, type: !116)
!2287 = !DILocation(line: 0, scope: !2285)
!2288 = !{!"1100"}
!2289 = !DILocalVariable(name: "len", arg: 2, scope: !2285, file: !174, line: 58, type: !117)
!2290 = !{!"1101"}
!2291 = !DILocalVariable(name: "pnt_", scope: !2285, file: !174, line: 72, type: !176)
!2292 = !{!"1102"}
!2293 = !DILocalVariable(name: "i", scope: !2285, file: !174, line: 73, type: !89)
!2294 = !{!"1103"}
!2295 = !DILocation(line: 75, column: 5, scope: !2285)
!2296 = !{!"1104"}
!2297 = !{!"1105"}
!2298 = !{!"1106"}
!2299 = !DILocation(line: 75, column: 14, scope: !2285)
!2300 = !{!"1107"}
!2301 = !{!"1108"}
!2302 = !DILocation(line: 76, column: 15, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2285, file: !174, line: 75, column: 21)
!2304 = !{!"1109"}
!2305 = !{!"1110"}
!2306 = !DILocation(line: 76, column: 9, scope: !2303)
!2307 = !{!"1111"}
!2308 = !DILocation(line: 76, column: 19, scope: !2303)
!2309 = !{!"1112"}
!2310 = distinct !{!2310, !2295, !2311, !311}
!2311 = !DILocation(line: 77, column: 5, scope: !2285)
!2312 = !{!"1113"}
!2313 = !DILocation(line: 79, column: 1, scope: !2285)
!2314 = !{!"1114"}
!2315 = distinct !DISubprogram(name: "sodium_memcmp", scope: !174, file: !174, line: 82, type: !2316, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!56, !2318, !2318, !89}
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2321 = !DILocalVariable(name: "b1_", arg: 1, scope: !2315, file: !174, line: 82, type: !2318)
!2322 = !DILocation(line: 0, scope: !2315)
!2323 = !{!"1115"}
!2324 = !DILocalVariable(name: "b2_", arg: 2, scope: !2315, file: !174, line: 82, type: !2318)
!2325 = !{!"1116"}
!2326 = !DILocalVariable(name: "len", arg: 3, scope: !2315, file: !174, line: 82, type: !89)
!2327 = !{!"1117"}
!2328 = !DILocalVariable(name: "b1", scope: !2315, file: !174, line: 84, type: !58)
!2329 = !{!"1118"}
!2330 = !DILocalVariable(name: "b2", scope: !2315, file: !174, line: 85, type: !58)
!2331 = !{!"1119"}
!2332 = !DILocalVariable(name: "d", scope: !2315, file: !174, line: 87, type: !17)
!2333 = !{!"1120"}
!2334 = !DILocalVariable(name: "i", scope: !2315, file: !174, line: 86, type: !89)
!2335 = !{!"1121"}
!2336 = !DILocation(line: 89, column: 10, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2315, file: !174, line: 89, column: 5)
!2338 = !{!"1122"}
!2339 = !DILocation(line: 0, scope: !2337)
!2340 = !{!"1123"}
!2341 = !{!"1124"}
!2342 = !{!"1125"}
!2343 = !{!"1126"}
!2344 = !DILocation(line: 89, column: 20, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2337, file: !174, line: 89, column: 5)
!2346 = !{!"1127"}
!2347 = !DILocation(line: 89, column: 5, scope: !2337)
!2348 = !{!"1128"}
!2349 = !DILocation(line: 90, column: 14, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !174, line: 89, column: 32)
!2351 = !{!"1129"}
!2352 = !{!"1130"}
!2353 = !{!"1131"}
!2354 = !DILocation(line: 90, column: 22, scope: !2350)
!2355 = !{!"1132"}
!2356 = !{!"1133"}
!2357 = !{!"1134"}
!2358 = !DILocation(line: 90, column: 20, scope: !2350)
!2359 = !{!"1135"}
!2360 = !DILocation(line: 90, column: 11, scope: !2350)
!2361 = !{!"1136"}
!2362 = !{!"1137"}
!2363 = !{!"1138"}
!2364 = !{!"1139"}
!2365 = !DILocation(line: 91, column: 5, scope: !2350)
!2366 = !{!"1140"}
!2367 = !DILocation(line: 89, column: 28, scope: !2345)
!2368 = !{!"1141"}
!2369 = !{!"1142"}
!2370 = !DILocation(line: 89, column: 5, scope: !2345)
!2371 = distinct !{!2371, !2347, !2372, !311}
!2372 = !DILocation(line: 91, column: 5, scope: !2337)
!2373 = !{!"1143"}
!2374 = !DILocation(line: 92, column: 26, scope: !2315)
!2375 = !{!"1144"}
!2376 = !DILocation(line: 92, column: 28, scope: !2315)
!2377 = !{!"1145"}
!2378 = !DILocation(line: 92, column: 33, scope: !2315)
!2379 = !{!"1146"}
!2380 = !DILocation(line: 92, column: 22, scope: !2315)
!2381 = !{!"1147"}
!2382 = !DILocation(line: 92, column: 40, scope: !2315)
!2383 = !{!"1148"}
!2384 = !DILocation(line: 92, column: 5, scope: !2315)
!2385 = !{!"1149"}
!2386 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !174, file: !174, line: 97, type: !2387, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!2389, !2390, !117, !2391, !117}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2389)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!2392 = !DILocalVariable(name: "hex", arg: 1, scope: !2386, file: !174, line: 97, type: !2390)
!2393 = !DILocation(line: 0, scope: !2386)
!2394 = !{!"1150"}
!2395 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !2386, file: !174, line: 97, type: !117)
!2396 = !{!"1151"}
!2397 = !DILocalVariable(name: "bin", arg: 3, scope: !2386, file: !174, line: 98, type: !2391)
!2398 = !{!"1152"}
!2399 = !DILocalVariable(name: "bin_len", arg: 4, scope: !2386, file: !174, line: 98, type: !117)
!2400 = !{!"1153"}
!2401 = !DILocalVariable(name: "i", scope: !2386, file: !174, line: 100, type: !89)
!2402 = !{!"1154"}
!2403 = !DILocation(line: 105, column: 17, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2386, file: !174, line: 105, column: 9)
!2405 = !{!"1155"}
!2406 = !DILocation(line: 105, column: 33, scope: !2404)
!2407 = !{!"1156"}
!2408 = !DILocation(line: 105, column: 57, scope: !2404)
!2409 = !{!"1157"}
!2410 = !DILocation(line: 105, column: 47, scope: !2404)
!2411 = !{!"1158"}
!2412 = !DILocation(line: 105, column: 9, scope: !2386)
!2413 = !{!"1159"}
!2414 = !DILocation(line: 106, column: 9, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2404, file: !174, line: 105, column: 63)
!2416 = !{!"1160"}
!2417 = !{!"1161"}
!2418 = !DILocation(line: 108, column: 5, scope: !2386)
!2419 = !{!"1162"}
!2420 = !{!"1163"}
!2421 = !{!"1164"}
!2422 = !DILocation(line: 108, column: 14, scope: !2386)
!2423 = !{!"1165"}
!2424 = !{!"1166"}
!2425 = !DILocation(line: 109, column: 13, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2386, file: !174, line: 108, column: 25)
!2427 = !{!"1167"}
!2428 = !{!"1168"}
!2429 = !{!"1169"}
!2430 = !DILocation(line: 109, column: 20, scope: !2426)
!2431 = !{!"1170"}
!2432 = !DILocalVariable(name: "c", scope: !2386, file: !174, line: 103, type: !56)
!2433 = !{!"1171"}
!2434 = !DILocation(line: 110, column: 13, scope: !2426)
!2435 = !{!"1172"}
!2436 = !{!"1173"}
!2437 = !{!"1174"}
!2438 = !DILocation(line: 110, column: 20, scope: !2426)
!2439 = !{!"1175"}
!2440 = !DILocalVariable(name: "b", scope: !2386, file: !174, line: 102, type: !56)
!2441 = !{!"1176"}
!2442 = !DILocation(line: 111, column: 34, scope: !2426)
!2443 = !{!"1177"}
!2444 = !DILocation(line: 111, column: 45, scope: !2426)
!2445 = !{!"1178"}
!2446 = !DILocation(line: 111, column: 52, scope: !2426)
!2447 = !{!"1179"}
!2448 = !DILocation(line: 111, column: 58, scope: !2426)
!2449 = !{!"1180"}
!2450 = !DILocation(line: 111, column: 38, scope: !2426)
!2451 = !{!"1181"}
!2452 = !DILocation(line: 111, column: 13, scope: !2426)
!2453 = !{!"1182"}
!2454 = !{!"1183"}
!2455 = !DILocation(line: 111, column: 67, scope: !2426)
!2456 = !{!"1184"}
!2457 = !DILocation(line: 112, column: 34, scope: !2426)
!2458 = !{!"1185"}
!2459 = !DILocation(line: 112, column: 45, scope: !2426)
!2460 = !{!"1186"}
!2461 = !DILocation(line: 112, column: 52, scope: !2426)
!2462 = !{!"1187"}
!2463 = !DILocation(line: 112, column: 58, scope: !2426)
!2464 = !{!"1188"}
!2465 = !DILocation(line: 112, column: 38, scope: !2426)
!2466 = !{!"1189"}
!2467 = !DILocation(line: 112, column: 13, scope: !2426)
!2468 = !{!"1190"}
!2469 = !{!"1191"}
!2470 = !DILocation(line: 111, column: 72, scope: !2426)
!2471 = !{!"1192"}
!2472 = !DILocalVariable(name: "x", scope: !2386, file: !174, line: 101, type: !88)
!2473 = !{!"1193"}
!2474 = !DILocation(line: 113, column: 23, scope: !2426)
!2475 = !{!"1194"}
!2476 = !DILocation(line: 113, column: 15, scope: !2426)
!2477 = !{!"1195"}
!2478 = !DILocation(line: 113, column: 9, scope: !2426)
!2479 = !{!"1196"}
!2480 = !DILocation(line: 113, column: 21, scope: !2426)
!2481 = !{!"1197"}
!2482 = !DILocation(line: 114, column: 11, scope: !2426)
!2483 = !{!"1198"}
!2484 = !{!"1199"}
!2485 = !DILocation(line: 115, column: 28, scope: !2426)
!2486 = !{!"1200"}
!2487 = !DILocation(line: 115, column: 15, scope: !2426)
!2488 = !{!"1201"}
!2489 = !DILocation(line: 115, column: 20, scope: !2426)
!2490 = !{!"1202"}
!2491 = !DILocation(line: 115, column: 9, scope: !2426)
!2492 = !{!"1203"}
!2493 = !DILocation(line: 115, column: 26, scope: !2426)
!2494 = !{!"1204"}
!2495 = !DILocation(line: 116, column: 10, scope: !2426)
!2496 = !{!"1205"}
!2497 = !{!"1206"}
!2498 = distinct !{!2498, !2418, !2499, !311}
!2499 = !DILocation(line: 117, column: 5, scope: !2386)
!2500 = !{!"1207"}
!2501 = !DILocation(line: 118, column: 11, scope: !2386)
!2502 = !{!"1208"}
!2503 = !DILocation(line: 118, column: 5, scope: !2386)
!2504 = !{!"1209"}
!2505 = !DILocation(line: 118, column: 17, scope: !2386)
!2506 = !{!"1210"}
!2507 = !DILocation(line: 120, column: 5, scope: !2386)
!2508 = !{!"1211"}
!2509 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !174, file: !174, line: 124, type: !2510, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!56, !1690, !117, !2512, !117, !2512, !2513, !2515}
!2512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!2513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2514)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2202)
!2516 = !DILocalVariable(name: "bin", arg: 1, scope: !2509, file: !174, line: 124, type: !1690)
!2517 = !DILocation(line: 0, scope: !2509)
!2518 = !{!"1212"}
!2519 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !2509, file: !174, line: 124, type: !117)
!2520 = !{!"1213"}
!2521 = !DILocalVariable(name: "hex", arg: 3, scope: !2509, file: !174, line: 125, type: !2512)
!2522 = !{!"1214"}
!2523 = !DILocalVariable(name: "hex_len", arg: 4, scope: !2509, file: !174, line: 125, type: !117)
!2524 = !{!"1215"}
!2525 = !DILocalVariable(name: "ignore", arg: 5, scope: !2509, file: !174, line: 126, type: !2512)
!2526 = !{!"1216"}
!2527 = !DILocalVariable(name: "bin_len", arg: 6, scope: !2509, file: !174, line: 126, type: !2513)
!2528 = !{!"1217"}
!2529 = !DILocalVariable(name: "hex_end", arg: 7, scope: !2509, file: !174, line: 127, type: !2515)
!2530 = !{!"1218"}
!2531 = !DILocalVariable(name: "bin_pos", scope: !2509, file: !174, line: 129, type: !89)
!2532 = !{!"1219"}
!2533 = !DILocalVariable(name: "hex_pos", scope: !2509, file: !174, line: 130, type: !89)
!2534 = !{!"1220"}
!2535 = !DILocalVariable(name: "ret", scope: !2509, file: !174, line: 131, type: !56)
!2536 = !{!"1221"}
!2537 = !DILocalVariable(name: "c_acc", scope: !2509, file: !174, line: 133, type: !17)
!2538 = !{!"1222"}
!2539 = !DILocalVariable(name: "state", scope: !2509, file: !174, line: 137, type: !17)
!2540 = !{!"1223"}
!2541 = !DILocation(line: 139, column: 5, scope: !2509)
!2542 = !{!"1224"}
!2543 = !DILocation(line: 129, column: 19, scope: !2509)
!2544 = !{!"1225"}
!2545 = !{!"1226"}
!2546 = !{!"1227"}
!2547 = !{!"1228"}
!2548 = !{!"1229"}
!2549 = !{!"1230"}
!2550 = !{!"1231"}
!2551 = !{!"1232"}
!2552 = !DILocation(line: 139, column: 20, scope: !2509)
!2553 = !{!"1233"}
!2554 = !{!"1234"}
!2555 = !DILocation(line: 140, column: 29, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2509, file: !174, line: 139, column: 31)
!2557 = !{!"1235"}
!2558 = !{!"1236"}
!2559 = !DILocalVariable(name: "c", scope: !2509, file: !174, line: 132, type: !17)
!2560 = !{!"1237"}
!2561 = !DILocation(line: 141, column: 17, scope: !2556)
!2562 = !{!"1238"}
!2563 = !DILocation(line: 141, column: 19, scope: !2556)
!2564 = !{!"1239"}
!2565 = !{!"1240"}
!2566 = !DILocalVariable(name: "c_num", scope: !2509, file: !174, line: 135, type: !17)
!2567 = !{!"1241"}
!2568 = !DILocation(line: 142, column: 19, scope: !2556)
!2569 = !{!"1242"}
!2570 = !DILocation(line: 142, column: 25, scope: !2556)
!2571 = !{!"1243"}
!2572 = !DILocation(line: 142, column: 32, scope: !2556)
!2573 = !{!"1244"}
!2574 = !DILocation(line: 142, column: 18, scope: !2556)
!2575 = !{!"1245"}
!2576 = !DILocalVariable(name: "c_num0", scope: !2509, file: !174, line: 135, type: !17)
!2577 = !{!"1246"}
!2578 = !DILocation(line: 143, column: 20, scope: !2556)
!2579 = !{!"1247"}
!2580 = !DILocation(line: 143, column: 22, scope: !2556)
!2581 = !{!"1248"}
!2582 = !DILocation(line: 143, column: 30, scope: !2556)
!2583 = !{!"1249"}
!2584 = !DILocation(line: 143, column: 19, scope: !2556)
!2585 = !{!"1250"}
!2586 = !DILocalVariable(name: "c_alpha", scope: !2509, file: !174, line: 134, type: !17)
!2587 = !{!"1251"}
!2588 = !DILocation(line: 144, column: 22, scope: !2556)
!2589 = !{!"1252"}
!2590 = !DILocation(line: 144, column: 30, scope: !2556)
!2591 = !{!"1253"}
!2592 = !DILocation(line: 144, column: 40, scope: !2556)
!2593 = !{!"1254"}
!2594 = !DILocation(line: 144, column: 48, scope: !2556)
!2595 = !{!"1255"}
!2596 = !DILocation(line: 144, column: 37, scope: !2556)
!2597 = !{!"1256"}
!2598 = !DILocation(line: 144, column: 56, scope: !2556)
!2599 = !{!"1257"}
!2600 = !DILocation(line: 144, column: 20, scope: !2556)
!2601 = !{!"1258"}
!2602 = !DILocalVariable(name: "c_alpha0", scope: !2509, file: !174, line: 134, type: !17)
!2603 = !{!"1259"}
!2604 = !DILocation(line: 145, column: 14, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2556, file: !174, line: 145, column: 13)
!2606 = !{!"1260"}
!2607 = !DILocation(line: 145, column: 23, scope: !2605)
!2608 = !{!"1261"}
!2609 = !DILocation(line: 145, column: 21, scope: !2605)
!2610 = !{!"1262"}
!2611 = !DILocation(line: 145, column: 33, scope: !2605)
!2612 = !{!"1263"}
!2613 = !DILocation(line: 145, column: 13, scope: !2556)
!2614 = !{!"1264"}
!2615 = !DILocation(line: 146, column: 24, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !174, line: 146, column: 17)
!2617 = distinct !DILexicalBlock(scope: !2605, file: !174, line: 145, column: 40)
!2618 = !{!"1265"}
!2619 = !DILocation(line: 146, column: 32, scope: !2616)
!2620 = !{!"1266"}
!2621 = !DILocation(line: 146, column: 35, scope: !2616)
!2622 = !{!"1267"}
!2623 = !DILocation(line: 146, column: 41, scope: !2616)
!2624 = !{!"1268"}
!2625 = !DILocation(line: 146, column: 47, scope: !2616)
!2626 = !{!"1269"}
!2627 = !DILocation(line: 146, column: 65, scope: !2616)
!2628 = !{!"1270"}
!2629 = !DILocation(line: 146, column: 50, scope: !2616)
!2630 = !{!"1271"}
!2631 = !DILocation(line: 146, column: 68, scope: !2616)
!2632 = !{!"1272"}
!2633 = !DILocation(line: 146, column: 17, scope: !2617)
!2634 = !{!"1273"}
!2635 = !DILocation(line: 147, column: 24, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2616, file: !174, line: 146, column: 77)
!2637 = !{!"1274"}
!2638 = !{!"1275"}
!2639 = !DILocation(line: 148, column: 17, scope: !2636)
!2640 = distinct !{!2640, !2541, !2641, !311}
!2641 = !DILocation(line: 165, column: 5, scope: !2509)
!2642 = !{!"1276"}
!2643 = !DILocation(line: 150, column: 13, scope: !2617)
!2644 = !{!"1277"}
!2645 = !DILocation(line: 152, column: 18, scope: !2556)
!2646 = !{!"1278"}
!2647 = !DILocation(line: 152, column: 27, scope: !2556)
!2648 = !{!"1279"}
!2649 = !DILocation(line: 152, column: 25, scope: !2556)
!2650 = !{!"1280"}
!2651 = !DILocation(line: 152, column: 37, scope: !2556)
!2652 = !{!"1281"}
!2653 = !DILocation(line: 152, column: 48, scope: !2556)
!2654 = !{!"1282"}
!2655 = !DILocation(line: 152, column: 46, scope: !2556)
!2656 = !{!"1283"}
!2657 = !DILocation(line: 152, column: 34, scope: !2556)
!2658 = !{!"1284"}
!2659 = !DILocation(line: 152, column: 17, scope: !2556)
!2660 = !{!"1285"}
!2661 = !DILocalVariable(name: "c_val", scope: !2509, file: !174, line: 136, type: !17)
!2662 = !{!"1286"}
!2663 = !DILocation(line: 153, column: 21, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2556, file: !174, line: 153, column: 13)
!2665 = !{!"1287"}
!2666 = !DILocation(line: 153, column: 13, scope: !2556)
!2667 = !{!"1288"}
!2668 = !{!"1289"}
!2669 = !DILocation(line: 155, column: 13, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2664, file: !174, line: 153, column: 36)
!2671 = !{!"1290"}
!2672 = !DILocation(line: 155, column: 19, scope: !2670)
!2673 = !{!"1291"}
!2674 = !DILocation(line: 156, column: 13, scope: !2670)
!2675 = !{!"1292"}
!2676 = !DILocation(line: 158, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2556, file: !174, line: 158, column: 13)
!2678 = !{!"1293"}
!2679 = !DILocation(line: 158, column: 19, scope: !2677)
!2680 = !{!"1294"}
!2681 = !DILocation(line: 158, column: 13, scope: !2556)
!2682 = !{!"1295"}
!2683 = !DILocation(line: 159, column: 21, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2677, file: !174, line: 158, column: 26)
!2685 = !{!"1296"}
!2686 = !DILocation(line: 159, column: 27, scope: !2684)
!2687 = !{!"1297"}
!2688 = !{!"1298"}
!2689 = !{!"1299"}
!2690 = !DILocation(line: 160, column: 9, scope: !2684)
!2691 = !{!"1300"}
!2692 = !DILocation(line: 161, column: 30, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2677, file: !174, line: 160, column: 16)
!2694 = !{!"1301"}
!2695 = !DILocation(line: 161, column: 38, scope: !2693)
!2696 = !{!"1302"}
!2697 = !DILocation(line: 161, column: 36, scope: !2693)
!2698 = !{!"1303"}
!2699 = !{!"1304"}
!2700 = !DILocation(line: 161, column: 24, scope: !2693)
!2701 = !{!"1305"}
!2702 = !{!"1306"}
!2703 = !DILocation(line: 161, column: 13, scope: !2693)
!2704 = !{!"1307"}
!2705 = !DILocation(line: 161, column: 28, scope: !2693)
!2706 = !{!"1308"}
!2707 = !{!"1309"}
!2708 = !{!"1310"}
!2709 = !{!"1311"}
!2710 = !{!"1312"}
!2711 = !{!"1313"}
!2712 = !DILocation(line: 163, column: 18, scope: !2556)
!2713 = !{!"1314"}
!2714 = !DILocation(line: 163, column: 17, scope: !2556)
!2715 = !{!"1315"}
!2716 = !{!"1316"}
!2717 = !{!"1317"}
!2718 = !DILocation(line: 164, column: 16, scope: !2556)
!2719 = !{!"1318"}
!2720 = !{!"1319"}
!2721 = !{!"1320"}
!2722 = !{!"1321"}
!2723 = !{!"1322"}
!2724 = !DILocation(line: 166, column: 9, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2509, file: !174, line: 166, column: 9)
!2726 = !{!"1323"}
!2727 = !DILocation(line: 166, column: 15, scope: !2725)
!2728 = !{!"1324"}
!2729 = !DILocation(line: 166, column: 9, scope: !2509)
!2730 = !{!"1325"}
!2731 = !DILocation(line: 167, column: 16, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2725, file: !174, line: 166, column: 22)
!2733 = !{!"1326"}
!2734 = !{!"1327"}
!2735 = !DILocation(line: 168, column: 5, scope: !2732)
!2736 = !{!"1328"}
!2737 = !{!"1329"}
!2738 = !{!"1330"}
!2739 = !DILocation(line: 169, column: 17, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2509, file: !174, line: 169, column: 9)
!2741 = !{!"1331"}
!2742 = !DILocation(line: 169, column: 9, scope: !2509)
!2743 = !{!"1332"}
!2744 = !DILocation(line: 170, column: 21, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2740, file: !174, line: 169, column: 26)
!2746 = !{!"1333"}
!2747 = !DILocation(line: 170, column: 18, scope: !2745)
!2748 = !{!"1334"}
!2749 = !DILocation(line: 171, column: 5, scope: !2745)
!2750 = !{!"1335"}
!2751 = !DILocation(line: 172, column: 17, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2509, file: !174, line: 172, column: 9)
!2753 = !{!"1336"}
!2754 = !DILocation(line: 172, column: 9, scope: !2509)
!2755 = !{!"1337"}
!2756 = !DILocation(line: 173, column: 18, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2752, file: !174, line: 172, column: 26)
!2758 = !{!"1338"}
!2759 = !DILocation(line: 174, column: 5, scope: !2757)
!2760 = !{!"1339"}
!2761 = !DILocation(line: 175, column: 5, scope: !2509)
!2762 = !{!"1340"}
!2763 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !174, file: !174, line: 179, type: !120, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2764 = !{!"1341"}
!2765 = !DILocation(line: 196, column: 5, scope: !2763)
!2766 = !{!"1342"}
!2767 = !DILocation(line: 198, column: 5, scope: !2763)
!2768 = !{!"1343"}
!2769 = distinct !DISubprogram(name: "sodium_mlock", scope: !174, file: !174, line: 202, type: !2044, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2770 = !DILocalVariable(name: "addr", arg: 1, scope: !2769, file: !174, line: 202, type: !116)
!2771 = !DILocation(line: 0, scope: !2769)
!2772 = !{!"1344"}
!2773 = !DILocalVariable(name: "len", arg: 2, scope: !2769, file: !174, line: 202, type: !117)
!2774 = !{!"1345"}
!2775 = !DILocation(line: 212, column: 5, scope: !2769)
!2776 = !{!"1346"}
!2777 = !DILocation(line: 212, column: 11, scope: !2769)
!2778 = !{!"1347"}
!2779 = !DILocation(line: 213, column: 5, scope: !2769)
!2780 = !{!"1348"}
!2781 = distinct !DISubprogram(name: "sodium_munlock", scope: !174, file: !174, line: 218, type: !2044, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2782 = !DILocalVariable(name: "addr", arg: 1, scope: !2781, file: !174, line: 218, type: !116)
!2783 = !DILocation(line: 0, scope: !2781)
!2784 = !{!"1349"}
!2785 = !DILocalVariable(name: "len", arg: 2, scope: !2781, file: !174, line: 218, type: !117)
!2786 = !{!"1350"}
!2787 = !DILocation(line: 220, column: 5, scope: !2781)
!2788 = !{!"1351"}
!2789 = !DILocation(line: 229, column: 5, scope: !2781)
!2790 = !{!"1352"}
!2791 = !DILocation(line: 229, column: 11, scope: !2781)
!2792 = !{!"1353"}
!2793 = !DILocation(line: 230, column: 5, scope: !2781)
!2794 = !{!"1354"}
!2795 = distinct !DISubprogram(name: "sodium_malloc", scope: !174, file: !174, line: 402, type: !2796, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!41, !117}
!2798 = !DILocalVariable(name: "size", arg: 1, scope: !2795, file: !174, line: 402, type: !117)
!2799 = !DILocation(line: 0, scope: !2795)
!2800 = !{!"1355"}
!2801 = !DILocation(line: 406, column: 16, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2795, file: !174, line: 406, column: 9)
!2803 = !{!"1356"}
!2804 = !DILocalVariable(name: "ptr", scope: !2795, file: !174, line: 404, type: !41)
!2805 = !{!"1357"}
!2806 = !DILocation(line: 406, column: 38, scope: !2802)
!2807 = !{!"1358"}
!2808 = !DILocation(line: 406, column: 9, scope: !2795)
!2809 = !{!"1359"}
!2810 = !DILocation(line: 407, column: 9, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2802, file: !174, line: 406, column: 47)
!2812 = !{!"1360"}
!2813 = !DILocation(line: 409, column: 5, scope: !2795)
!2814 = !{!"1361"}
!2815 = !DILocation(line: 411, column: 5, scope: !2795)
!2816 = !{!"1362"}
!2817 = !{!"1363"}
!2818 = !DILocation(line: 412, column: 1, scope: !2795)
!2819 = !{!"1364"}
!2820 = distinct !DISubprogram(name: "_sodium_malloc", scope: !174, file: !174, line: 353, type: !2796, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2821 = !DILocalVariable(name: "size", arg: 1, scope: !2820, file: !174, line: 353, type: !117)
!2822 = !DILocation(line: 0, scope: !2820)
!2823 = !{!"1365"}
!2824 = !DILocation(line: 355, column: 12, scope: !2820)
!2825 = !{!"1366"}
!2826 = !DILocation(line: 355, column: 5, scope: !2820)
!2827 = !{!"1367"}
!2828 = distinct !DISubprogram(name: "sodium_allocarray", scope: !174, file: !174, line: 415, type: !2829, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!41, !89, !89}
!2831 = !DILocalVariable(name: "count", arg: 1, scope: !2828, file: !174, line: 415, type: !89)
!2832 = !DILocation(line: 0, scope: !2828)
!2833 = !{!"1368"}
!2834 = !DILocalVariable(name: "size", arg: 2, scope: !2828, file: !174, line: 415, type: !89)
!2835 = !{!"1369"}
!2836 = !DILocation(line: 419, column: 15, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2828, file: !174, line: 419, column: 9)
!2838 = !{!"1370"}
!2839 = !DILocation(line: 419, column: 29, scope: !2837)
!2840 = !{!"1371"}
!2841 = !DILocation(line: 419, column: 58, scope: !2837)
!2842 = !{!"1372"}
!2843 = !DILocation(line: 419, column: 37, scope: !2837)
!2844 = !{!"1373"}
!2845 = !DILocation(line: 419, column: 9, scope: !2828)
!2846 = !{!"1374"}
!2847 = !DILocation(line: 420, column: 9, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2837, file: !174, line: 419, column: 67)
!2849 = !{!"1375"}
!2850 = !DILocation(line: 420, column: 15, scope: !2848)
!2851 = !{!"1376"}
!2852 = !DILocation(line: 421, column: 9, scope: !2848)
!2853 = !{!"1377"}
!2854 = !DILocation(line: 423, column: 24, scope: !2828)
!2855 = !{!"1378"}
!2856 = !DILocalVariable(name: "total_size", scope: !2828, file: !174, line: 417, type: !89)
!2857 = !{!"1379"}
!2858 = !DILocation(line: 425, column: 12, scope: !2828)
!2859 = !{!"1380"}
!2860 = !DILocation(line: 425, column: 5, scope: !2828)
!2861 = !{!"1381"}
!2862 = !{!"1382"}
!2863 = !DILocation(line: 426, column: 1, scope: !2828)
!2864 = !{!"1383"}
!2865 = distinct !DISubprogram(name: "sodium_free", scope: !174, file: !174, line: 430, type: !2866, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !41}
!2868 = !DILocalVariable(name: "ptr", arg: 1, scope: !2865, file: !174, line: 430, type: !41)
!2869 = !DILocation(line: 0, scope: !2865)
!2870 = !{!"1384"}
!2871 = !DILocation(line: 432, column: 5, scope: !2865)
!2872 = !{!"1385"}
!2873 = !DILocation(line: 433, column: 1, scope: !2865)
!2874 = !{!"1386"}
!2875 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !174, file: !174, line: 493, type: !2876, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!56, !41}
!2878 = !DILocalVariable(name: "ptr", arg: 1, scope: !2875, file: !174, line: 493, type: !41)
!2879 = !DILocation(line: 0, scope: !2875)
!2880 = !{!"1387"}
!2881 = !DILocation(line: 495, column: 12, scope: !2875)
!2882 = !{!"1388"}
!2883 = !DILocation(line: 495, column: 5, scope: !2875)
!2884 = !{!"1389"}
!2885 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !174, file: !174, line: 235, type: !2886, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!56, !41, !89}
!2888 = !DILocalVariable(name: "ptr", arg: 1, scope: !2885, file: !174, line: 235, type: !41)
!2889 = !DILocation(line: 0, scope: !2885)
!2890 = !{!"1390"}
!2891 = !DILocalVariable(name: "size", arg: 2, scope: !2885, file: !174, line: 235, type: !89)
!2892 = !{!"1391"}
!2893 = !DILocation(line: 243, column: 5, scope: !2885)
!2894 = !{!"1392"}
!2895 = !DILocation(line: 243, column: 11, scope: !2885)
!2896 = !{!"1393"}
!2897 = !DILocation(line: 244, column: 5, scope: !2885)
!2898 = !{!"1394"}
!2899 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !174, file: !174, line: 469, type: !2900, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!56, !41, !2902}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2903 = !DILocalVariable(name: "ptr", arg: 1, scope: !2899, file: !174, line: 469, type: !41)
!2904 = !DILocation(line: 0, scope: !2899)
!2905 = !{!"1395"}
!2906 = !DILocalVariable(name: "cb", arg: 2, scope: !2899, file: !174, line: 469, type: !2902)
!2907 = !{!"1396"}
!2908 = !DILocation(line: 473, column: 5, scope: !2899)
!2909 = !{!"1397"}
!2910 = !DILocation(line: 473, column: 11, scope: !2899)
!2911 = !{!"1398"}
!2912 = !DILocation(line: 474, column: 5, scope: !2899)
!2913 = !{!"1399"}
!2914 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !174, file: !174, line: 499, type: !2876, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2915 = !DILocalVariable(name: "ptr", arg: 1, scope: !2914, file: !174, line: 499, type: !41)
!2916 = !DILocation(line: 0, scope: !2914)
!2917 = !{!"1400"}
!2918 = !DILocation(line: 501, column: 12, scope: !2914)
!2919 = !{!"1401"}
!2920 = !DILocation(line: 501, column: 5, scope: !2914)
!2921 = !{!"1402"}
!2922 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !174, file: !174, line: 249, type: !2886, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2923 = !DILocalVariable(name: "ptr", arg: 1, scope: !2922, file: !174, line: 249, type: !41)
!2924 = !DILocation(line: 0, scope: !2922)
!2925 = !{!"1403"}
!2926 = !DILocalVariable(name: "size", arg: 2, scope: !2922, file: !174, line: 249, type: !89)
!2927 = !{!"1404"}
!2928 = !DILocation(line: 257, column: 5, scope: !2922)
!2929 = !{!"1405"}
!2930 = !DILocation(line: 257, column: 11, scope: !2922)
!2931 = !{!"1406"}
!2932 = !DILocation(line: 258, column: 5, scope: !2922)
!2933 = !{!"1407"}
!2934 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !174, file: !174, line: 505, type: !2876, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2935 = !DILocalVariable(name: "ptr", arg: 1, scope: !2934, file: !174, line: 505, type: !41)
!2936 = !DILocation(line: 0, scope: !2934)
!2937 = !{!"1408"}
!2938 = !DILocation(line: 507, column: 12, scope: !2934)
!2939 = !{!"1409"}
!2940 = !DILocation(line: 507, column: 5, scope: !2934)
!2941 = !{!"1410"}
!2942 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !174, file: !174, line: 263, type: !2886, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !173, retainedNodes: !4)
!2943 = !DILocalVariable(name: "ptr", arg: 1, scope: !2942, file: !174, line: 263, type: !41)
!2944 = !DILocation(line: 0, scope: !2942)
!2945 = !{!"1411"}
!2946 = !DILocalVariable(name: "size", arg: 2, scope: !2942, file: !174, line: 263, type: !89)
!2947 = !{!"1412"}
!2948 = !DILocation(line: 271, column: 5, scope: !2942)
!2949 = !{!"1413"}
!2950 = !DILocation(line: 271, column: 11, scope: !2942)
!2951 = !{!"1414"}
!2952 = !DILocation(line: 272, column: 5, scope: !2942)
!2953 = !{!"1415"}
!2954 = distinct !DISubprogram(name: "crypto_verify_16", scope: !183, file: !183, line: 3, type: !2955, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !182, retainedNodes: !4)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!56, !58, !58}
!2957 = !DILocalVariable(name: "x", arg: 1, scope: !2954, file: !183, line: 3, type: !58)
!2958 = !DILocation(line: 0, scope: !2954)
!2959 = !{!"1416"}
!2960 = !DILocalVariable(name: "y", arg: 2, scope: !2954, file: !183, line: 3, type: !58)
!2961 = !{!"1417"}
!2962 = !DILocalVariable(name: "differentbits", scope: !2954, file: !183, line: 5, type: !88)
!2963 = !{!"1418"}
!2964 = !DILocation(line: 7, column: 3, scope: !2954)
!2965 = !{!"1419"}
!2966 = !{!"1420"}
!2967 = !{!"1421"}
!2968 = !{!"1422"}
!2969 = !{!"1423"}
!2970 = !{!"1424"}
!2971 = !{!"1425"}
!2972 = !{!"1426"}
!2973 = !{!"1427"}
!2974 = !DILocation(line: 8, column: 3, scope: !2954)
!2975 = !{!"1428"}
!2976 = !{!"1429"}
!2977 = !{!"1430"}
!2978 = !{!"1431"}
!2979 = !{!"1432"}
!2980 = !{!"1433"}
!2981 = !{!"1434"}
!2982 = !{!"1435"}
!2983 = !{!"1436"}
!2984 = !DILocation(line: 9, column: 3, scope: !2954)
!2985 = !{!"1437"}
!2986 = !{!"1438"}
!2987 = !{!"1439"}
!2988 = !{!"1440"}
!2989 = !{!"1441"}
!2990 = !{!"1442"}
!2991 = !{!"1443"}
!2992 = !{!"1444"}
!2993 = !{!"1445"}
!2994 = !DILocation(line: 10, column: 3, scope: !2954)
!2995 = !{!"1446"}
!2996 = !{!"1447"}
!2997 = !{!"1448"}
!2998 = !{!"1449"}
!2999 = !{!"1450"}
!3000 = !{!"1451"}
!3001 = !{!"1452"}
!3002 = !{!"1453"}
!3003 = !{!"1454"}
!3004 = !DILocation(line: 11, column: 3, scope: !2954)
!3005 = !{!"1455"}
!3006 = !{!"1456"}
!3007 = !{!"1457"}
!3008 = !{!"1458"}
!3009 = !{!"1459"}
!3010 = !{!"1460"}
!3011 = !{!"1461"}
!3012 = !{!"1462"}
!3013 = !{!"1463"}
!3014 = !DILocation(line: 12, column: 3, scope: !2954)
!3015 = !{!"1464"}
!3016 = !{!"1465"}
!3017 = !{!"1466"}
!3018 = !{!"1467"}
!3019 = !{!"1468"}
!3020 = !{!"1469"}
!3021 = !{!"1470"}
!3022 = !{!"1471"}
!3023 = !{!"1472"}
!3024 = !DILocation(line: 13, column: 3, scope: !2954)
!3025 = !{!"1473"}
!3026 = !{!"1474"}
!3027 = !{!"1475"}
!3028 = !{!"1476"}
!3029 = !{!"1477"}
!3030 = !{!"1478"}
!3031 = !{!"1479"}
!3032 = !{!"1480"}
!3033 = !{!"1481"}
!3034 = !DILocation(line: 14, column: 3, scope: !2954)
!3035 = !{!"1482"}
!3036 = !{!"1483"}
!3037 = !{!"1484"}
!3038 = !{!"1485"}
!3039 = !{!"1486"}
!3040 = !{!"1487"}
!3041 = !{!"1488"}
!3042 = !{!"1489"}
!3043 = !{!"1490"}
!3044 = !DILocation(line: 15, column: 3, scope: !2954)
!3045 = !{!"1491"}
!3046 = !{!"1492"}
!3047 = !{!"1493"}
!3048 = !{!"1494"}
!3049 = !{!"1495"}
!3050 = !{!"1496"}
!3051 = !{!"1497"}
!3052 = !{!"1498"}
!3053 = !{!"1499"}
!3054 = !DILocation(line: 16, column: 3, scope: !2954)
!3055 = !{!"1500"}
!3056 = !{!"1501"}
!3057 = !{!"1502"}
!3058 = !{!"1503"}
!3059 = !{!"1504"}
!3060 = !{!"1505"}
!3061 = !{!"1506"}
!3062 = !{!"1507"}
!3063 = !{!"1508"}
!3064 = !DILocation(line: 17, column: 3, scope: !2954)
!3065 = !{!"1509"}
!3066 = !{!"1510"}
!3067 = !{!"1511"}
!3068 = !{!"1512"}
!3069 = !{!"1513"}
!3070 = !{!"1514"}
!3071 = !{!"1515"}
!3072 = !{!"1516"}
!3073 = !{!"1517"}
!3074 = !DILocation(line: 18, column: 3, scope: !2954)
!3075 = !{!"1518"}
!3076 = !{!"1519"}
!3077 = !{!"1520"}
!3078 = !{!"1521"}
!3079 = !{!"1522"}
!3080 = !{!"1523"}
!3081 = !{!"1524"}
!3082 = !{!"1525"}
!3083 = !{!"1526"}
!3084 = !DILocation(line: 19, column: 3, scope: !2954)
!3085 = !{!"1527"}
!3086 = !{!"1528"}
!3087 = !{!"1529"}
!3088 = !{!"1530"}
!3089 = !{!"1531"}
!3090 = !{!"1532"}
!3091 = !{!"1533"}
!3092 = !{!"1534"}
!3093 = !{!"1535"}
!3094 = !DILocation(line: 20, column: 3, scope: !2954)
!3095 = !{!"1536"}
!3096 = !{!"1537"}
!3097 = !{!"1538"}
!3098 = !{!"1539"}
!3099 = !{!"1540"}
!3100 = !{!"1541"}
!3101 = !{!"1542"}
!3102 = !{!"1543"}
!3103 = !{!"1544"}
!3104 = !DILocation(line: 21, column: 3, scope: !2954)
!3105 = !{!"1545"}
!3106 = !{!"1546"}
!3107 = !{!"1547"}
!3108 = !{!"1548"}
!3109 = !{!"1549"}
!3110 = !{!"1550"}
!3111 = !{!"1551"}
!3112 = !{!"1552"}
!3113 = !{!"1553"}
!3114 = !DILocation(line: 22, column: 3, scope: !2954)
!3115 = !{!"1554"}
!3116 = !{!"1555"}
!3117 = !{!"1556"}
!3118 = !{!"1557"}
!3119 = !{!"1558"}
!3120 = !{!"1559"}
!3121 = !{!"1560"}
!3122 = !{!"1561"}
!3123 = !{!"1562"}
!3124 = !DILocation(line: 23, column: 31, scope: !2954)
!3125 = !{!"1563"}
!3126 = !DILocation(line: 23, column: 36, scope: !2954)
!3127 = !{!"1564"}
!3128 = !DILocation(line: 23, column: 13, scope: !2954)
!3129 = !{!"1565"}
!3130 = !DILocation(line: 23, column: 43, scope: !2954)
!3131 = !{!"1566"}
!3132 = !DILocation(line: 23, column: 3, scope: !2954)
!3133 = !{!"1567"}
!3134 = distinct !DISubprogram(name: "crypto_onetimeauth_poly1305_donna_verify", scope: !185, file: !185, line: 6, type: !62, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !184, retainedNodes: !4)
!3135 = !{!"1568"}
!3136 = !DILocalVariable(name: "h", arg: 1, scope: !3134, file: !185, line: 6, type: !58)
!3137 = !DILocation(line: 0, scope: !3134)
!3138 = !{!"1569"}
!3139 = !DILocalVariable(name: "in", arg: 2, scope: !3134, file: !185, line: 7, type: !58)
!3140 = !{!"1570"}
!3141 = !DILocalVariable(name: "inlen", arg: 3, scope: !3134, file: !185, line: 8, type: !14)
!3142 = !{!"1571"}
!3143 = !DILocalVariable(name: "k", arg: 4, scope: !3134, file: !185, line: 9, type: !58)
!3144 = !{!"1572"}
!3145 = !DILocalVariable(name: "correct", scope: !3134, file: !185, line: 11, type: !37)
!3146 = !DILocation(line: 11, column: 19, scope: !3134)
!3147 = !{!"1573"}
!3148 = !DILocation(line: 13, column: 39, scope: !3134)
!3149 = !{!"1574"}
!3150 = !DILocation(line: 13, column: 5, scope: !3134)
!3151 = !{!"1575"}
!3152 = !DILocation(line: 14, column: 31, scope: !3134)
!3153 = !{!"1576"}
!3154 = !DILocation(line: 14, column: 12, scope: !3134)
!3155 = !{!"1577"}
!3156 = !DILocation(line: 14, column: 5, scope: !3134)
!3157 = !{!"1578"}
