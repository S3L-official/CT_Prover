; ModuleID = 'crypto_core_salsa20-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.randombytes_implementation = type { i8* ()*, i32 ()*, void ()*, i32 (i32)*, void (i8*, i64)*, i32 ()* }
%struct.SysRandom_ = type { i32, i32, i32 }
%struct.smack_value = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@implementation = internal global %struct.randombytes_implementation* @randombytes_sysrandom_implementation, align 8, !dbg !0, !psr.id !53
@.str = private unnamed_addr constant [20 x i8] c"buf_len <= SIZE_MAX\00", align 1, !psr.id !54
@.str.1 = private unnamed_addr constant [53 x i8] c"../libsodium/src/libsodium/randombytes/randombytes.c\00", align 1, !psr.id !55
@__PRETTY_FUNCTION__.randombytes = private unnamed_addr constant [65 x i8] c"void randombytes(unsigned char *const, const unsigned long long)\00", align 1, !psr.id !56
@randombytes_sysrandom_implementation = dso_local global %struct.randombytes_implementation { i8* ()* @randombytes_sysrandom_implementation_name, i32 ()* @randombytes_sysrandom, void ()* @randombytes_sysrandom_stir, i32 (i32)* null, void (i8*, i64)* @randombytes_sysrandom_buf, i32 ()* @randombytes_sysrandom_close }, align 8, !dbg !57, !psr.id !91
@stream = internal global %struct.SysRandom_ { i32 -1, i32 0, i32 0 }, align 4, !dbg !69, !psr.id !92
@.str.6 = private unnamed_addr constant [19 x i8] c"size > (size_t) 0U\00", align 1, !psr.id !93
@.str.4 = private unnamed_addr constant [73 x i8] c"../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c\00", align 1, !psr.id !94
@__PRETTY_FUNCTION__.safe_read = private unnamed_addr constant [50 x i8] c"ssize_t safe_read(const int, void *const, size_t)\00", align 1, !psr.id !95
@.str.3 = private unnamed_addr constant [25 x i8] c"chunk_size > (size_t) 0U\00", align 1, !psr.id !96
@__PRETTY_FUNCTION__.randombytes_linux_getrandom = private unnamed_addr constant [53 x i8] c"int randombytes_linux_getrandom(void *const, size_t)\00", align 1, !psr.id !97
@.str.5 = private unnamed_addr constant [13 x i8] c"size <= 256U\00", align 1, !psr.id !98
@__PRETTY_FUNCTION__._randombytes_linux_getrandom = private unnamed_addr constant [60 x i8] c"int _randombytes_linux_getrandom(void *const, const size_t)\00", align 1, !psr.id !99
@randombytes_sysrandom_random_dev_open.devices = internal global [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16, !dbg !77, !psr.id !100
@.str.1.3 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1, !psr.id !101
@.str.2 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1, !psr.id !102
@.str.7 = private unnamed_addr constant [10 x i8] c"sysrandom\00", align 1, !psr.id !103
@canary = internal global [16 x i8] zeroinitializer, align 16, !dbg !104, !psr.id !117

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_core_salsa20_outputbytes() #0 !dbg !130 {
  ret i64 64, !dbg !133, !psr.id !134
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_core_salsa20_inputbytes() #0 !dbg !135 {
  ret i64 16, !dbg !136, !psr.id !137
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_core_salsa20_keybytes() #0 !dbg !138 {
  ret i64 32, !dbg !139, !psr.id !140
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @crypto_core_salsa20_constbytes() #0 !dbg !141 {
  ret i64 16, !dbg !142, !psr.id !143
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_core_salsa20(i8* %0, i8* %1, i8* %2, i8* %3) #0 !dbg !144 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !147, metadata !DIExpression()), !dbg !148, !psr.id !149
  call void @llvm.dbg.value(metadata i8* %1, metadata !150, metadata !DIExpression()), !dbg !148, !psr.id !151
  call void @llvm.dbg.value(metadata i8* %2, metadata !152, metadata !DIExpression()), !dbg !148, !psr.id !153
  call void @llvm.dbg.value(metadata i8* %3, metadata !154, metadata !DIExpression()), !dbg !148, !psr.id !155
  %5 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !156, !psr.id !157, !PointTainted !158
  %6 = call i32 @load_littleendian(i8* %5), !dbg !159, !psr.id !160, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %6, metadata !162, metadata !DIExpression()), !dbg !148, !psr.id !163
  call void @llvm.dbg.value(metadata i32 %6, metadata !164, metadata !DIExpression()), !dbg !148, !psr.id !165
  %7 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !166, !psr.id !167, !PointTainted !158
  %8 = call i32 @load_littleendian(i8* %7), !dbg !168, !psr.id !169, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %8, metadata !170, metadata !DIExpression()), !dbg !148, !psr.id !171
  call void @llvm.dbg.value(metadata i32 %8, metadata !172, metadata !DIExpression()), !dbg !148, !psr.id !173
  %9 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !174, !psr.id !175, !PointTainted !158
  %10 = call i32 @load_littleendian(i8* %9), !dbg !176, !psr.id !177, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %10, metadata !178, metadata !DIExpression()), !dbg !148, !psr.id !179
  call void @llvm.dbg.value(metadata i32 %10, metadata !180, metadata !DIExpression()), !dbg !148, !psr.id !181
  %11 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !182, !psr.id !183, !PointTainted !158
  %12 = call i32 @load_littleendian(i8* %11), !dbg !184, !psr.id !185, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %12, metadata !186, metadata !DIExpression()), !dbg !148, !psr.id !187
  call void @llvm.dbg.value(metadata i32 %12, metadata !188, metadata !DIExpression()), !dbg !148, !psr.id !189
  %13 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !190, !psr.id !191, !PointTainted !158
  %14 = call i32 @load_littleendian(i8* %13), !dbg !192, !psr.id !193, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %14, metadata !194, metadata !DIExpression()), !dbg !148, !psr.id !195
  call void @llvm.dbg.value(metadata i32 %14, metadata !196, metadata !DIExpression()), !dbg !148, !psr.id !197
  %15 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !198, !psr.id !199, !PointTainted !158
  %16 = call i32 @load_littleendian(i8* %15), !dbg !200, !psr.id !201, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %16, metadata !202, metadata !DIExpression()), !dbg !148, !psr.id !203
  call void @llvm.dbg.value(metadata i32 %16, metadata !204, metadata !DIExpression()), !dbg !148, !psr.id !205
  %17 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !206, !psr.id !207, !PointTainted !158
  %18 = call i32 @load_littleendian(i8* %17), !dbg !208, !psr.id !209, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %18, metadata !210, metadata !DIExpression()), !dbg !148, !psr.id !211
  call void @llvm.dbg.value(metadata i32 %18, metadata !212, metadata !DIExpression()), !dbg !148, !psr.id !213
  %19 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !214, !psr.id !215, !PointTainted !158
  %20 = call i32 @load_littleendian(i8* %19), !dbg !216, !psr.id !217, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %20, metadata !218, metadata !DIExpression()), !dbg !148, !psr.id !219
  call void @llvm.dbg.value(metadata i32 %20, metadata !220, metadata !DIExpression()), !dbg !148, !psr.id !221
  %21 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !222, !psr.id !223, !PointTainted !158
  %22 = call i32 @load_littleendian(i8* %21), !dbg !224, !psr.id !225, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %22, metadata !226, metadata !DIExpression()), !dbg !148, !psr.id !227
  call void @llvm.dbg.value(metadata i32 %22, metadata !228, metadata !DIExpression()), !dbg !148, !psr.id !229
  %23 = getelementptr inbounds i8, i8* %1, i64 12, !dbg !230, !psr.id !231, !PointTainted !158
  %24 = call i32 @load_littleendian(i8* %23), !dbg !232, !psr.id !233, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %24, metadata !234, metadata !DIExpression()), !dbg !148, !psr.id !235
  call void @llvm.dbg.value(metadata i32 %24, metadata !236, metadata !DIExpression()), !dbg !148, !psr.id !237
  %25 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !238, !psr.id !239, !PointTainted !158
  %26 = call i32 @load_littleendian(i8* %25), !dbg !240, !psr.id !241, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %26, metadata !242, metadata !DIExpression()), !dbg !148, !psr.id !243
  call void @llvm.dbg.value(metadata i32 %26, metadata !244, metadata !DIExpression()), !dbg !148, !psr.id !245
  %27 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !246, !psr.id !247, !PointTainted !158
  %28 = call i32 @load_littleendian(i8* %27), !dbg !248, !psr.id !249, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %28, metadata !250, metadata !DIExpression()), !dbg !148, !psr.id !251
  call void @llvm.dbg.value(metadata i32 %28, metadata !252, metadata !DIExpression()), !dbg !148, !psr.id !253
  %29 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !254, !psr.id !255, !PointTainted !158
  %30 = call i32 @load_littleendian(i8* %29), !dbg !256, !psr.id !257, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %30, metadata !258, metadata !DIExpression()), !dbg !148, !psr.id !259
  call void @llvm.dbg.value(metadata i32 %30, metadata !260, metadata !DIExpression()), !dbg !148, !psr.id !261
  %31 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !262, !psr.id !263, !PointTainted !158
  %32 = call i32 @load_littleendian(i8* %31), !dbg !264, !psr.id !265, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %32, metadata !266, metadata !DIExpression()), !dbg !148, !psr.id !267
  call void @llvm.dbg.value(metadata i32 %32, metadata !268, metadata !DIExpression()), !dbg !148, !psr.id !269
  %33 = getelementptr inbounds i8, i8* %2, i64 28, !dbg !270, !psr.id !271, !PointTainted !158
  %34 = call i32 @load_littleendian(i8* %33), !dbg !272, !psr.id !273, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %34, metadata !274, metadata !DIExpression()), !dbg !148, !psr.id !275
  call void @llvm.dbg.value(metadata i32 %34, metadata !276, metadata !DIExpression()), !dbg !148, !psr.id !277
  %35 = getelementptr inbounds i8, i8* %3, i64 12, !dbg !278, !psr.id !279, !PointTainted !158
  %36 = call i32 @load_littleendian(i8* %35), !dbg !280, !psr.id !281, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %36, metadata !282, metadata !DIExpression()), !dbg !148, !psr.id !283
  call void @llvm.dbg.value(metadata i32 %36, metadata !284, metadata !DIExpression()), !dbg !148, !psr.id !285
  call void @llvm.dbg.value(metadata i32 20, metadata !286, metadata !DIExpression()), !dbg !148, !psr.id !287
  br label %37, !dbg !288, !psr.id !290

37:                                               ; preds = %136, %4
  %.016 = phi i32 [ %30, %4 ], [ %126, %136 ], !dbg !148, !psr.id !291, !ValueTainted !161
  %.015 = phi i32 [ %28, %4 ], [ %114, %136 ], !dbg !148, !psr.id !292, !ValueTainted !161
  %.014 = phi i32 [ %26, %4 ], [ %123, %136 ], !dbg !148, !psr.id !293, !ValueTainted !161
  %.013 = phi i32 [ %24, %4 ], [ %120, %136 ], !dbg !148, !psr.id !294, !ValueTainted !161
  %.012 = phi i32 [ %22, %4 ], [ %117, %136 ], !dbg !148, !psr.id !295, !ValueTainted !161
  %.011 = phi i32 [ %20, %4 ], [ %105, %136 ], !dbg !148, !psr.id !296, !ValueTainted !161
  %.010 = phi i32 [ %18, %4 ], [ %102, %136 ], !dbg !148, !psr.id !297, !ValueTainted !161
  %.09 = phi i32 [ %16, %4 ], [ %111, %136 ], !dbg !148, !psr.id !298, !ValueTainted !161
  %.08 = phi i32 [ %14, %4 ], [ %108, %136 ], !dbg !148, !psr.id !299, !ValueTainted !161
  %.07 = phi i32 [ %12, %4 ], [ %96, %136 ], !dbg !148, !psr.id !300, !ValueTainted !161
  %.06 = phi i32 [ %10, %4 ], [ %93, %136 ], !dbg !148, !psr.id !301, !ValueTainted !161
  %.05 = phi i32 [ %8, %4 ], [ %90, %136 ], !dbg !148, !psr.id !302, !ValueTainted !161
  %.04 = phi i32 [ %6, %4 ], [ %99, %136 ], !dbg !148, !psr.id !303, !ValueTainted !161
  %.03 = phi i32 [ %32, %4 ], [ %129, %136 ], !dbg !148, !psr.id !304, !ValueTainted !161
  %.02 = phi i32 [ %34, %4 ], [ %132, %136 ], !dbg !148, !psr.id !305, !ValueTainted !161
  %.01 = phi i32 [ %36, %4 ], [ %135, %136 ], !dbg !148, !psr.id !306, !ValueTainted !161
  %.0 = phi i32 [ 20, %4 ], [ %137, %136 ], !dbg !307, !psr.id !308
  call void @llvm.dbg.value(metadata i32 %.0, metadata !286, metadata !DIExpression()), !dbg !148, !psr.id !309
  call void @llvm.dbg.value(metadata i32 %.01, metadata !282, metadata !DIExpression()), !dbg !148, !psr.id !310
  call void @llvm.dbg.value(metadata i32 %.02, metadata !274, metadata !DIExpression()), !dbg !148, !psr.id !311
  call void @llvm.dbg.value(metadata i32 %.03, metadata !266, metadata !DIExpression()), !dbg !148, !psr.id !312
  call void @llvm.dbg.value(metadata i32 %.04, metadata !162, metadata !DIExpression()), !dbg !148, !psr.id !313
  call void @llvm.dbg.value(metadata i32 %.05, metadata !170, metadata !DIExpression()), !dbg !148, !psr.id !314
  call void @llvm.dbg.value(metadata i32 %.06, metadata !178, metadata !DIExpression()), !dbg !148, !psr.id !315
  call void @llvm.dbg.value(metadata i32 %.07, metadata !186, metadata !DIExpression()), !dbg !148, !psr.id !316
  call void @llvm.dbg.value(metadata i32 %.08, metadata !194, metadata !DIExpression()), !dbg !148, !psr.id !317
  call void @llvm.dbg.value(metadata i32 %.09, metadata !202, metadata !DIExpression()), !dbg !148, !psr.id !318
  call void @llvm.dbg.value(metadata i32 %.010, metadata !210, metadata !DIExpression()), !dbg !148, !psr.id !319
  call void @llvm.dbg.value(metadata i32 %.011, metadata !218, metadata !DIExpression()), !dbg !148, !psr.id !320
  call void @llvm.dbg.value(metadata i32 %.012, metadata !226, metadata !DIExpression()), !dbg !148, !psr.id !321
  call void @llvm.dbg.value(metadata i32 %.013, metadata !234, metadata !DIExpression()), !dbg !148, !psr.id !322
  call void @llvm.dbg.value(metadata i32 %.014, metadata !242, metadata !DIExpression()), !dbg !148, !psr.id !323
  call void @llvm.dbg.value(metadata i32 %.015, metadata !250, metadata !DIExpression()), !dbg !148, !psr.id !324
  call void @llvm.dbg.value(metadata i32 %.016, metadata !258, metadata !DIExpression()), !dbg !148, !psr.id !325
  %38 = icmp sgt i32 %.0, 0, !dbg !326, !psr.id !328
  br i1 %38, label %39, label %138, !dbg !329, !psr.id !330

39:                                               ; preds = %37
  %40 = add i32 %.04, %.016, !dbg !331, !psr.id !333, !ValueTainted !161
  %41 = call i32 @rotate(i32 %40, i32 7), !dbg !334, !psr.id !335, !ValueTainted !161
  %42 = xor i32 %.08, %41, !dbg !336, !psr.id !337, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %42, metadata !194, metadata !DIExpression()), !dbg !148, !psr.id !338
  %43 = add i32 %42, %.04, !dbg !339, !psr.id !340, !ValueTainted !161
  %44 = call i32 @rotate(i32 %43, i32 9), !dbg !341, !psr.id !342, !ValueTainted !161
  %45 = xor i32 %.012, %44, !dbg !343, !psr.id !344, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %45, metadata !226, metadata !DIExpression()), !dbg !148, !psr.id !345
  %46 = add i32 %45, %42, !dbg !346, !psr.id !347, !ValueTainted !161
  %47 = call i32 @rotate(i32 %46, i32 13), !dbg !348, !psr.id !349, !ValueTainted !161
  %48 = xor i32 %.016, %47, !dbg !350, !psr.id !351, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %48, metadata !258, metadata !DIExpression()), !dbg !148, !psr.id !352
  %49 = add i32 %48, %45, !dbg !353, !psr.id !354, !ValueTainted !161
  %50 = call i32 @rotate(i32 %49, i32 18), !dbg !355, !psr.id !356, !ValueTainted !161
  %51 = xor i32 %.04, %50, !dbg !357, !psr.id !358, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %51, metadata !162, metadata !DIExpression()), !dbg !148, !psr.id !359
  %52 = add i32 %.09, %.05, !dbg !360, !psr.id !361, !ValueTainted !161
  %53 = call i32 @rotate(i32 %52, i32 7), !dbg !362, !psr.id !363, !ValueTainted !161
  %54 = xor i32 %.013, %53, !dbg !364, !psr.id !365, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %54, metadata !234, metadata !DIExpression()), !dbg !148, !psr.id !366
  %55 = add i32 %54, %.09, !dbg !367, !psr.id !368, !ValueTainted !161
  %56 = call i32 @rotate(i32 %55, i32 9), !dbg !369, !psr.id !370, !ValueTainted !161
  %57 = xor i32 %.03, %56, !dbg !371, !psr.id !372, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %57, metadata !266, metadata !DIExpression()), !dbg !148, !psr.id !373
  %58 = add i32 %57, %54, !dbg !374, !psr.id !375, !ValueTainted !161
  %59 = call i32 @rotate(i32 %58, i32 13), !dbg !376, !psr.id !377, !ValueTainted !161
  %60 = xor i32 %.05, %59, !dbg !378, !psr.id !379, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %60, metadata !170, metadata !DIExpression()), !dbg !148, !psr.id !380
  %61 = add i32 %60, %57, !dbg !381, !psr.id !382, !ValueTainted !161
  %62 = call i32 @rotate(i32 %61, i32 18), !dbg !383, !psr.id !384, !ValueTainted !161
  %63 = xor i32 %.09, %62, !dbg !385, !psr.id !386, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %63, metadata !202, metadata !DIExpression()), !dbg !148, !psr.id !387
  %64 = add i32 %.014, %.010, !dbg !388, !psr.id !389, !ValueTainted !161
  %65 = call i32 @rotate(i32 %64, i32 7), !dbg !390, !psr.id !391, !ValueTainted !161
  %66 = xor i32 %.02, %65, !dbg !392, !psr.id !393, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %66, metadata !274, metadata !DIExpression()), !dbg !148, !psr.id !394
  %67 = add i32 %66, %.014, !dbg !395, !psr.id !396, !ValueTainted !161
  %68 = call i32 @rotate(i32 %67, i32 9), !dbg !397, !psr.id !398, !ValueTainted !161
  %69 = xor i32 %.06, %68, !dbg !399, !psr.id !400, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %69, metadata !178, metadata !DIExpression()), !dbg !148, !psr.id !401
  %70 = add i32 %69, %66, !dbg !402, !psr.id !403, !ValueTainted !161
  %71 = call i32 @rotate(i32 %70, i32 13), !dbg !404, !psr.id !405, !ValueTainted !161
  %72 = xor i32 %.010, %71, !dbg !406, !psr.id !407, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %72, metadata !210, metadata !DIExpression()), !dbg !148, !psr.id !408
  %73 = add i32 %72, %69, !dbg !409, !psr.id !410, !ValueTainted !161
  %74 = call i32 @rotate(i32 %73, i32 18), !dbg !411, !psr.id !412, !ValueTainted !161
  %75 = xor i32 %.014, %74, !dbg !413, !psr.id !414, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %75, metadata !242, metadata !DIExpression()), !dbg !148, !psr.id !415
  %76 = add i32 %.01, %.015, !dbg !416, !psr.id !417, !ValueTainted !161
  %77 = call i32 @rotate(i32 %76, i32 7), !dbg !418, !psr.id !419, !ValueTainted !161
  %78 = xor i32 %.07, %77, !dbg !420, !psr.id !421, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %78, metadata !186, metadata !DIExpression()), !dbg !148, !psr.id !422
  %79 = add i32 %78, %.01, !dbg !423, !psr.id !424, !ValueTainted !161
  %80 = call i32 @rotate(i32 %79, i32 9), !dbg !425, !psr.id !426, !ValueTainted !161
  %81 = xor i32 %.011, %80, !dbg !427, !psr.id !428, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %81, metadata !218, metadata !DIExpression()), !dbg !148, !psr.id !429
  %82 = add i32 %81, %78, !dbg !430, !psr.id !431, !ValueTainted !161
  %83 = call i32 @rotate(i32 %82, i32 13), !dbg !432, !psr.id !433, !ValueTainted !161
  %84 = xor i32 %.015, %83, !dbg !434, !psr.id !435, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %84, metadata !250, metadata !DIExpression()), !dbg !148, !psr.id !436
  %85 = add i32 %84, %81, !dbg !437, !psr.id !438, !ValueTainted !161
  %86 = call i32 @rotate(i32 %85, i32 18), !dbg !439, !psr.id !440, !ValueTainted !161
  %87 = xor i32 %.01, %86, !dbg !441, !psr.id !442, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %87, metadata !282, metadata !DIExpression()), !dbg !148, !psr.id !443
  %88 = add i32 %51, %78, !dbg !444, !psr.id !445, !ValueTainted !161
  %89 = call i32 @rotate(i32 %88, i32 7), !dbg !446, !psr.id !447, !ValueTainted !161
  %90 = xor i32 %60, %89, !dbg !448, !psr.id !449, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %90, metadata !170, metadata !DIExpression()), !dbg !148, !psr.id !450
  %91 = add i32 %90, %51, !dbg !451, !psr.id !452, !ValueTainted !161
  %92 = call i32 @rotate(i32 %91, i32 9), !dbg !453, !psr.id !454, !ValueTainted !161
  %93 = xor i32 %69, %92, !dbg !455, !psr.id !456, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %93, metadata !178, metadata !DIExpression()), !dbg !148, !psr.id !457
  %94 = add i32 %93, %90, !dbg !458, !psr.id !459, !ValueTainted !161
  %95 = call i32 @rotate(i32 %94, i32 13), !dbg !460, !psr.id !461, !ValueTainted !161
  %96 = xor i32 %78, %95, !dbg !462, !psr.id !463, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %96, metadata !186, metadata !DIExpression()), !dbg !148, !psr.id !464
  %97 = add i32 %96, %93, !dbg !465, !psr.id !466, !ValueTainted !161
  %98 = call i32 @rotate(i32 %97, i32 18), !dbg !467, !psr.id !468, !ValueTainted !161
  %99 = xor i32 %51, %98, !dbg !469, !psr.id !470, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %99, metadata !162, metadata !DIExpression()), !dbg !148, !psr.id !471
  %100 = add i32 %63, %42, !dbg !472, !psr.id !473, !ValueTainted !161
  %101 = call i32 @rotate(i32 %100, i32 7), !dbg !474, !psr.id !475, !ValueTainted !161
  %102 = xor i32 %72, %101, !dbg !476, !psr.id !477, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %102, metadata !210, metadata !DIExpression()), !dbg !148, !psr.id !478
  %103 = add i32 %102, %63, !dbg !479, !psr.id !480, !ValueTainted !161
  %104 = call i32 @rotate(i32 %103, i32 9), !dbg !481, !psr.id !482, !ValueTainted !161
  %105 = xor i32 %81, %104, !dbg !483, !psr.id !484, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %105, metadata !218, metadata !DIExpression()), !dbg !148, !psr.id !485
  %106 = add i32 %105, %102, !dbg !486, !psr.id !487, !ValueTainted !161
  %107 = call i32 @rotate(i32 %106, i32 13), !dbg !488, !psr.id !489, !ValueTainted !161
  %108 = xor i32 %42, %107, !dbg !490, !psr.id !491, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %108, metadata !194, metadata !DIExpression()), !dbg !148, !psr.id !492
  %109 = add i32 %108, %105, !dbg !493, !psr.id !494, !ValueTainted !161
  %110 = call i32 @rotate(i32 %109, i32 18), !dbg !495, !psr.id !496, !ValueTainted !161
  %111 = xor i32 %63, %110, !dbg !497, !psr.id !498, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %111, metadata !202, metadata !DIExpression()), !dbg !148, !psr.id !499
  %112 = add i32 %75, %54, !dbg !500, !psr.id !501, !ValueTainted !161
  %113 = call i32 @rotate(i32 %112, i32 7), !dbg !502, !psr.id !503, !ValueTainted !161
  %114 = xor i32 %84, %113, !dbg !504, !psr.id !505, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %114, metadata !250, metadata !DIExpression()), !dbg !148, !psr.id !506
  %115 = add i32 %114, %75, !dbg !507, !psr.id !508, !ValueTainted !161
  %116 = call i32 @rotate(i32 %115, i32 9), !dbg !509, !psr.id !510, !ValueTainted !161
  %117 = xor i32 %45, %116, !dbg !511, !psr.id !512, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %117, metadata !226, metadata !DIExpression()), !dbg !148, !psr.id !513
  %118 = add i32 %117, %114, !dbg !514, !psr.id !515, !ValueTainted !161
  %119 = call i32 @rotate(i32 %118, i32 13), !dbg !516, !psr.id !517, !ValueTainted !161
  %120 = xor i32 %54, %119, !dbg !518, !psr.id !519, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %120, metadata !234, metadata !DIExpression()), !dbg !148, !psr.id !520
  %121 = add i32 %120, %117, !dbg !521, !psr.id !522, !ValueTainted !161
  %122 = call i32 @rotate(i32 %121, i32 18), !dbg !523, !psr.id !524, !ValueTainted !161
  %123 = xor i32 %75, %122, !dbg !525, !psr.id !526, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %123, metadata !242, metadata !DIExpression()), !dbg !148, !psr.id !527
  %124 = add i32 %87, %66, !dbg !528, !psr.id !529, !ValueTainted !161
  %125 = call i32 @rotate(i32 %124, i32 7), !dbg !530, !psr.id !531, !ValueTainted !161
  %126 = xor i32 %48, %125, !dbg !532, !psr.id !533, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %126, metadata !258, metadata !DIExpression()), !dbg !148, !psr.id !534
  %127 = add i32 %126, %87, !dbg !535, !psr.id !536, !ValueTainted !161
  %128 = call i32 @rotate(i32 %127, i32 9), !dbg !537, !psr.id !538, !ValueTainted !161
  %129 = xor i32 %57, %128, !dbg !539, !psr.id !540, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %129, metadata !266, metadata !DIExpression()), !dbg !148, !psr.id !541
  %130 = add i32 %129, %126, !dbg !542, !psr.id !543, !ValueTainted !161
  %131 = call i32 @rotate(i32 %130, i32 13), !dbg !544, !psr.id !545, !ValueTainted !161
  %132 = xor i32 %66, %131, !dbg !546, !psr.id !547, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %132, metadata !274, metadata !DIExpression()), !dbg !148, !psr.id !548
  %133 = add i32 %132, %129, !dbg !549, !psr.id !550, !ValueTainted !161
  %134 = call i32 @rotate(i32 %133, i32 18), !dbg !551, !psr.id !552, !ValueTainted !161
  %135 = xor i32 %87, %134, !dbg !553, !psr.id !554, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %135, metadata !282, metadata !DIExpression()), !dbg !148, !psr.id !555
  br label %136, !dbg !556, !psr.id !557

136:                                              ; preds = %39
  %137 = sub nsw i32 %.0, 2, !dbg !558, !psr.id !559
  call void @llvm.dbg.value(metadata i32 %137, metadata !286, metadata !DIExpression()), !dbg !148, !psr.id !560
  br label %37, !dbg !561, !llvm.loop !562, !psr.id !565

138:                                              ; preds = %37
  %139 = add i32 %.04, %6, !dbg !566, !psr.id !567, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %139, metadata !162, metadata !DIExpression()), !dbg !148, !psr.id !568
  %140 = add i32 %.05, %8, !dbg !569, !psr.id !570, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %140, metadata !170, metadata !DIExpression()), !dbg !148, !psr.id !571
  %141 = add i32 %.06, %10, !dbg !572, !psr.id !573, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %141, metadata !178, metadata !DIExpression()), !dbg !148, !psr.id !574
  %142 = add i32 %.07, %12, !dbg !575, !psr.id !576, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %142, metadata !186, metadata !DIExpression()), !dbg !148, !psr.id !577
  %143 = add i32 %.08, %14, !dbg !578, !psr.id !579, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %143, metadata !194, metadata !DIExpression()), !dbg !148, !psr.id !580
  %144 = add i32 %.09, %16, !dbg !581, !psr.id !582, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %144, metadata !202, metadata !DIExpression()), !dbg !148, !psr.id !583
  %145 = add i32 %.010, %18, !dbg !584, !psr.id !585, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %145, metadata !210, metadata !DIExpression()), !dbg !148, !psr.id !586
  %146 = add i32 %.011, %20, !dbg !587, !psr.id !588, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %146, metadata !218, metadata !DIExpression()), !dbg !148, !psr.id !589
  %147 = add i32 %.012, %22, !dbg !590, !psr.id !591, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %147, metadata !226, metadata !DIExpression()), !dbg !148, !psr.id !592
  %148 = add i32 %.013, %24, !dbg !593, !psr.id !594, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %148, metadata !234, metadata !DIExpression()), !dbg !148, !psr.id !595
  %149 = add i32 %.014, %26, !dbg !596, !psr.id !597, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %149, metadata !242, metadata !DIExpression()), !dbg !148, !psr.id !598
  %150 = add i32 %.015, %28, !dbg !599, !psr.id !600, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %150, metadata !250, metadata !DIExpression()), !dbg !148, !psr.id !601
  %151 = add i32 %.016, %30, !dbg !602, !psr.id !603, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %151, metadata !258, metadata !DIExpression()), !dbg !148, !psr.id !604
  %152 = add i32 %.03, %32, !dbg !605, !psr.id !606, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %152, metadata !266, metadata !DIExpression()), !dbg !148, !psr.id !607
  %153 = add i32 %.02, %34, !dbg !608, !psr.id !609, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %153, metadata !274, metadata !DIExpression()), !dbg !148, !psr.id !610
  %154 = add i32 %.01, %36, !dbg !611, !psr.id !612, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %154, metadata !282, metadata !DIExpression()), !dbg !148, !psr.id !613
  %155 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !614, !psr.id !615, !PointTainted !158
  call void @store_littleendian(i8* %155, i32 %139), !dbg !616, !psr.id !617
  %156 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !618, !psr.id !619, !PointTainted !158
  call void @store_littleendian(i8* %156, i32 %140), !dbg !620, !psr.id !621
  %157 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !622, !psr.id !623, !PointTainted !158
  call void @store_littleendian(i8* %157, i32 %141), !dbg !624, !psr.id !625
  %158 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !626, !psr.id !627, !PointTainted !158
  call void @store_littleendian(i8* %158, i32 %142), !dbg !628, !psr.id !629
  %159 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !630, !psr.id !631, !PointTainted !158
  call void @store_littleendian(i8* %159, i32 %143), !dbg !632, !psr.id !633
  %160 = getelementptr inbounds i8, i8* %0, i64 20, !dbg !634, !psr.id !635, !PointTainted !158
  call void @store_littleendian(i8* %160, i32 %144), !dbg !636, !psr.id !637
  %161 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !638, !psr.id !639, !PointTainted !158
  call void @store_littleendian(i8* %161, i32 %145), !dbg !640, !psr.id !641
  %162 = getelementptr inbounds i8, i8* %0, i64 28, !dbg !642, !psr.id !643, !PointTainted !158
  call void @store_littleendian(i8* %162, i32 %146), !dbg !644, !psr.id !645
  %163 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !646, !psr.id !647, !PointTainted !158
  call void @store_littleendian(i8* %163, i32 %147), !dbg !648, !psr.id !649
  %164 = getelementptr inbounds i8, i8* %0, i64 36, !dbg !650, !psr.id !651, !PointTainted !158
  call void @store_littleendian(i8* %164, i32 %148), !dbg !652, !psr.id !653
  %165 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !654, !psr.id !655, !PointTainted !158
  call void @store_littleendian(i8* %165, i32 %149), !dbg !656, !psr.id !657
  %166 = getelementptr inbounds i8, i8* %0, i64 44, !dbg !658, !psr.id !659, !PointTainted !158
  call void @store_littleendian(i8* %166, i32 %150), !dbg !660, !psr.id !661
  %167 = getelementptr inbounds i8, i8* %0, i64 48, !dbg !662, !psr.id !663, !PointTainted !158
  call void @store_littleendian(i8* %167, i32 %151), !dbg !664, !psr.id !665
  %168 = getelementptr inbounds i8, i8* %0, i64 52, !dbg !666, !psr.id !667, !PointTainted !158
  call void @store_littleendian(i8* %168, i32 %152), !dbg !668, !psr.id !669
  %169 = getelementptr inbounds i8, i8* %0, i64 56, !dbg !670, !psr.id !671, !PointTainted !158
  call void @store_littleendian(i8* %169, i32 %153), !dbg !672, !psr.id !673
  %170 = getelementptr inbounds i8, i8* %0, i64 60, !dbg !674, !psr.id !675, !PointTainted !158
  call void @store_littleendian(i8* %170, i32 %154), !dbg !676, !psr.id !677
  ret i32 0, !dbg !678, !psr.id !679
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @load_littleendian(i8* %0) #0 !dbg !680 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !683, metadata !DIExpression()), !dbg !684, !psr.id !685
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !686, !psr.id !687, !PointTainted !158
  %3 = load i8, i8* %2, align 1, !dbg !686, !psr.id !688, !ValueTainted !161
  %4 = zext i8 %3 to i32, !dbg !689, !psr.id !690, !ValueTainted !161
  %5 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !691, !psr.id !692, !PointTainted !158
  %6 = load i8, i8* %5, align 1, !dbg !691, !psr.id !693, !ValueTainted !161
  %7 = zext i8 %6 to i32, !dbg !694, !psr.id !695, !ValueTainted !161
  %8 = shl i32 %7, 8, !dbg !696, !psr.id !697, !ValueTainted !161
  %9 = or i32 %4, %8, !dbg !698, !psr.id !699, !ValueTainted !161
  %10 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !700, !psr.id !701, !PointTainted !158
  %11 = load i8, i8* %10, align 1, !dbg !700, !psr.id !702, !ValueTainted !161
  %12 = zext i8 %11 to i32, !dbg !703, !psr.id !704, !ValueTainted !161
  %13 = shl i32 %12, 16, !dbg !705, !psr.id !706, !ValueTainted !161
  %14 = or i32 %9, %13, !dbg !707, !psr.id !708, !ValueTainted !161
  %15 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !709, !psr.id !710, !PointTainted !158
  %16 = load i8, i8* %15, align 1, !dbg !709, !psr.id !711, !ValueTainted !161
  %17 = zext i8 %16 to i32, !dbg !712, !psr.id !713, !ValueTainted !161
  %18 = shl i32 %17, 24, !dbg !714, !psr.id !715, !ValueTainted !161
  %19 = or i32 %14, %18, !dbg !716, !psr.id !717, !ValueTainted !161
  ret i32 %19, !dbg !718, !psr.id !719
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotate(i32 %0, i32 %1) #0 !dbg !720 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !723, metadata !DIExpression()), !dbg !724, !psr.id !725
  call void @llvm.dbg.value(metadata i32 %1, metadata !726, metadata !DIExpression()), !dbg !724, !psr.id !727
  %3 = shl i32 %0, %1, !dbg !728, !psr.id !729, !ValueTainted !161
  %4 = sub nsw i32 32, %1, !dbg !730, !psr.id !731
  %5 = lshr i32 %0, %4, !dbg !732, !psr.id !733, !ValueTainted !161
  %6 = or i32 %3, %5, !dbg !734, !psr.id !735, !ValueTainted !161
  ret i32 %6, !dbg !736, !psr.id !737
}

; Function Attrs: noinline nounwind uwtable
define internal void @store_littleendian(i8* %0, i32 %1) #0 !dbg !738 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !741, metadata !DIExpression()), !dbg !742, !psr.id !743
  call void @llvm.dbg.value(metadata i32 %1, metadata !744, metadata !DIExpression()), !dbg !742, !psr.id !745
  %3 = trunc i32 %1 to i8, !dbg !746, !psr.id !747, !ValueTainted !161
  %4 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !748, !psr.id !749, !PointTainted !158
  store i8 %3, i8* %4, align 1, !dbg !750, !psr.id !751
  %5 = lshr i32 %1, 8, !dbg !752, !psr.id !753, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %5, metadata !744, metadata !DIExpression()), !dbg !742, !psr.id !754
  %6 = trunc i32 %5 to i8, !dbg !755, !psr.id !756, !ValueTainted !161
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !757, !psr.id !758, !PointTainted !158
  store i8 %6, i8* %7, align 1, !dbg !759, !psr.id !760
  %8 = lshr i32 %5, 8, !dbg !761, !psr.id !762, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %8, metadata !744, metadata !DIExpression()), !dbg !742, !psr.id !763
  %9 = trunc i32 %8 to i8, !dbg !764, !psr.id !765, !ValueTainted !161
  %10 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !766, !psr.id !767, !PointTainted !158
  store i8 %9, i8* %10, align 1, !dbg !768, !psr.id !769
  %11 = lshr i32 %8, 8, !dbg !770, !psr.id !771, !ValueTainted !161
  call void @llvm.dbg.value(metadata i32 %11, metadata !744, metadata !DIExpression()), !dbg !742, !psr.id !772
  %12 = trunc i32 %11 to i8, !dbg !773, !psr.id !774, !ValueTainted !161
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !775, !psr.id !776, !PointTainted !158
  store i8 %12, i8* %13, align 1, !dbg !777, !psr.id !778
  ret void, !dbg !779, !psr.id !780
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crypto_core_salsa20_wrapper(i8* %0, i8* %1, i8* %2, i8* %3) #0 !dbg !781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !782, metadata !DIExpression()), !dbg !783, !psr.id !784
  call void @llvm.dbg.value(metadata i8* %1, metadata !785, metadata !DIExpression()), !dbg !783, !psr.id !786
  call void @llvm.dbg.value(metadata i8* %2, metadata !787, metadata !DIExpression()), !dbg !783, !psr.id !788
  call void @llvm.dbg.value(metadata i8* %3, metadata !789, metadata !DIExpression()), !dbg !783, !psr.id !790
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %0), !dbg !791, !psr.id !792
  call void @public_in(%struct.smack_value* %5), !dbg !793, !psr.id !794
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !795, !psr.id !796
  call void @public_in(%struct.smack_value* %6), !dbg !797, !psr.id !798
  %7 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !799, !psr.id !800
  call void @public_in(%struct.smack_value* %7), !dbg !801, !psr.id !802
  %8 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %3), !dbg !803, !psr.id !804
  call void @public_in(%struct.smack_value* %8), !dbg !805, !psr.id !806
  %9 = call i32 @crypto_core_salsa20(i8* %0, i8* %1, i8* %2, i8* %3), !dbg !807, !psr.id !808
  ret i32 %9, !dbg !809, !psr.id !810
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @crypto_core_salsa20_wrapper_t() #0 !dbg !811 {
  %1 = alloca i8, align 1, !psr.id !812
  %2 = alloca i8, align 1, !psr.id !813
  %3 = alloca i8, align 1, !psr.id !814
  %4 = alloca i8, align 1, !psr.id !815
  call void @llvm.dbg.declare(metadata i8* %1, metadata !816, metadata !DIExpression()), !dbg !817, !psr.id !818
  %5 = call zeroext i8 (...) @gout(), !dbg !819, !psr.id !820
  store i8 %5, i8* %1, align 1, !dbg !817, !psr.id !821
  call void @llvm.dbg.declare(metadata i8* %2, metadata !822, metadata !DIExpression()), !dbg !823, !psr.id !824
  %6 = call zeroext i8 (...) @gin(), !dbg !825, !psr.id !826
  store i8 %6, i8* %2, align 1, !dbg !823, !psr.id !827
  call void @llvm.dbg.declare(metadata i8* %3, metadata !828, metadata !DIExpression()), !dbg !829, !psr.id !830
  %7 = call zeroext i8 (...) @gk(), !dbg !831, !psr.id !832
  store i8 %7, i8* %3, align 1, !dbg !829, !psr.id !833
  call void @llvm.dbg.declare(metadata i8* %4, metadata !834, metadata !DIExpression()), !dbg !835, !psr.id !836
  %8 = call zeroext i8 (...) @gc(), !dbg !837, !psr.id !838
  store i8 %8, i8* %4, align 1, !dbg !835, !psr.id !839
  call void @llvm.dbg.value(metadata i8* %1, metadata !840, metadata !DIExpression()), !dbg !841, !psr.id !842
  call void @llvm.dbg.value(metadata i8* %2, metadata !843, metadata !DIExpression()), !dbg !841, !psr.id !844
  call void @llvm.dbg.value(metadata i8* %3, metadata !845, metadata !DIExpression()), !dbg !841, !psr.id !846
  call void @llvm.dbg.value(metadata i8* %4, metadata !847, metadata !DIExpression()), !dbg !841, !psr.id !848
  %9 = call i32 @crypto_core_salsa20(i8* %1, i8* %2, i8* %3, i8* %4), !dbg !849, !psr.id !850
  ret void, !dbg !851, !psr.id !852
}

declare dso_local zeroext i8 @gout(...) #2

declare dso_local zeroext i8 @gin(...) #2

declare dso_local zeroext i8 @gk(...) #2

declare dso_local zeroext i8 @gc(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_set_implementation(%struct.randombytes_implementation* %0) #0 !dbg !853 {
  call void @llvm.dbg.value(metadata %struct.randombytes_implementation* %0, metadata !857, metadata !DIExpression()), !dbg !858, !psr.id !859
  store %struct.randombytes_implementation* %0, %struct.randombytes_implementation** @implementation, align 8, !dbg !860, !psr.id !861
  ret i32 0, !dbg !862, !psr.id !863
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_implementation_name() #0 !dbg !864 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !865, !psr.id !866
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 0, !dbg !867, !psr.id !868
  %3 = load i8* ()*, i8* ()** %2, align 8, !dbg !867, !psr.id !869
  %4 = call i8* %3(), !dbg !865, !psr.id !870
  ret i8* %4, !dbg !871, !psr.id !872
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_random() #0 !dbg !873 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !874, !psr.id !875
  %2 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %1, i32 0, i32 1, !dbg !876, !psr.id !877
  %3 = load i32 ()*, i32 ()** %2, align 8, !dbg !876, !psr.id !878
  %4 = call i32 %3(), !dbg !874, !psr.id !879
  ret i32 %4, !dbg !880, !psr.id !881
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_stir() #0 !dbg !882 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !883, !psr.id !885
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !886, !psr.id !887
  br i1 %2, label %3, label %12, !dbg !888, !psr.id !889

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !890, !psr.id !891
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 2, !dbg !892, !psr.id !893
  %6 = load void ()*, void ()** %5, align 8, !dbg !892, !psr.id !894
  %7 = icmp ne void ()* %6, null, !dbg !895, !psr.id !896
  br i1 %7, label %8, label %12, !dbg !897, !psr.id !898

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !899, !psr.id !901
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 2, !dbg !902, !psr.id !903
  %11 = load void ()*, void ()** %10, align 8, !dbg !902, !psr.id !904
  call void %11(), !dbg !899, !psr.id !905
  br label %12, !dbg !906, !psr.id !907

12:                                               ; preds = %8, %3, %0
  ret void, !dbg !908, !psr.id !909
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_uniform(i32 %0) #0 !dbg !910 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !911, metadata !DIExpression()), !dbg !912, !psr.id !913
  %2 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !914, !psr.id !916
  %3 = icmp ne %struct.randombytes_implementation* %2, null, !dbg !917, !psr.id !918
  br i1 %3, label %4, label %14, !dbg !919, !psr.id !920

4:                                                ; preds = %1
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !921, !psr.id !922
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 3, !dbg !923, !psr.id !924
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8, !dbg !923, !psr.id !925
  %8 = icmp ne i32 (i32)* %7, null, !dbg !926, !psr.id !927
  br i1 %8, label %9, label %14, !dbg !928, !psr.id !929

9:                                                ; preds = %4
  %10 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !930, !psr.id !932
  %11 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %10, i32 0, i32 3, !dbg !933, !psr.id !934
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8, !dbg !933, !psr.id !935
  %13 = call i32 %12(i32 %0), !dbg !930, !psr.id !936
  br label %26, !dbg !937, !psr.id !938

14:                                               ; preds = %4, %1
  %15 = icmp ult i32 %0, 2, !dbg !939, !psr.id !941
  br i1 %15, label %16, label %17, !dbg !942, !psr.id !943

16:                                               ; preds = %14
  br label %26, !dbg !944, !psr.id !946

17:                                               ; preds = %14
  %18 = sub i32 0, %0, !dbg !947, !psr.id !948
  %19 = urem i32 %18, %0, !dbg !949, !psr.id !950
  call void @llvm.dbg.value(metadata i32 %19, metadata !951, metadata !DIExpression()), !dbg !912, !psr.id !952
  br label %20, !dbg !953, !psr.id !954

20:                                               ; preds = %22, %17
  %21 = call i32 @randombytes_random(), !dbg !955, !psr.id !957
  call void @llvm.dbg.value(metadata i32 %21, metadata !958, metadata !DIExpression()), !dbg !912, !psr.id !959
  br label %22, !dbg !960, !psr.id !961

22:                                               ; preds = %20
  %23 = icmp ult i32 %21, %19, !dbg !962, !psr.id !963
  br i1 %23, label %20, label %24, !dbg !960, !llvm.loop !964, !psr.id !966

24:                                               ; preds = %22
  %25 = urem i32 %21, %0, !dbg !967, !psr.id !968
  br label %26, !dbg !969, !psr.id !970

26:                                               ; preds = %24, %16, %9
  %.0 = phi i32 [ %13, %9 ], [ 0, %16 ], [ %25, %24 ], !dbg !912, !psr.id !971
  ret i32 %.0, !dbg !972, !psr.id !973
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_buf(i8* %0, i64 %1) #0 !dbg !974 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !975, metadata !DIExpression()), !dbg !976, !psr.id !977
  call void @llvm.dbg.value(metadata i64 %1, metadata !978, metadata !DIExpression()), !dbg !976, !psr.id !979
  %3 = icmp ugt i64 %1, 0, !dbg !980, !psr.id !982
  br i1 %3, label %4, label %8, !dbg !983, !psr.id !984

4:                                                ; preds = %2
  %5 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !985, !psr.id !987
  %6 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %5, i32 0, i32 4, !dbg !988, !psr.id !989
  %7 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8, !dbg !988, !psr.id !990
  call void %7(i8* %0, i64 %1), !dbg !985, !psr.id !991
  br label %8, !dbg !992, !psr.id !993

8:                                                ; preds = %4, %2
  ret void, !dbg !994, !psr.id !995
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_close() #0 !dbg !996 {
  %1 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !997, !psr.id !999
  %2 = icmp ne %struct.randombytes_implementation* %1, null, !dbg !1000, !psr.id !1001
  br i1 %2, label %3, label %13, !dbg !1002, !psr.id !1003

3:                                                ; preds = %0
  %4 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1004, !psr.id !1005
  %5 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %4, i32 0, i32 5, !dbg !1006, !psr.id !1007
  %6 = load i32 ()*, i32 ()** %5, align 8, !dbg !1006, !psr.id !1008
  %7 = icmp ne i32 ()* %6, null, !dbg !1009, !psr.id !1010
  br i1 %7, label %8, label %13, !dbg !1011, !psr.id !1012

8:                                                ; preds = %3
  %9 = load %struct.randombytes_implementation*, %struct.randombytes_implementation** @implementation, align 8, !dbg !1013, !psr.id !1015
  %10 = getelementptr inbounds %struct.randombytes_implementation, %struct.randombytes_implementation* %9, i32 0, i32 5, !dbg !1016, !psr.id !1017
  %11 = load i32 ()*, i32 ()** %10, align 8, !dbg !1016, !psr.id !1018
  %12 = call i32 %11(), !dbg !1013, !psr.id !1019
  br label %14, !dbg !1020, !psr.id !1021

13:                                               ; preds = %3, %0
  br label %14, !dbg !1022, !psr.id !1023

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !1024, !psr.id !1025
  ret i32 %.0, !dbg !1026, !psr.id !1027
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes(i8* %0, i64 %1) #0 !dbg !1028 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1034, metadata !DIExpression()), !dbg !1035, !psr.id !1036
  call void @llvm.dbg.value(metadata i64 %1, metadata !1037, metadata !DIExpression()), !dbg !1035, !psr.id !1038
  %3 = icmp ule i64 %1, -1, !dbg !1039, !psr.id !1042
  br i1 %3, label %4, label %5, !dbg !1043, !psr.id !1044

4:                                                ; preds = %2
  br label %9, !dbg !1043, !psr.id !1045

5:                                                ; preds = %2
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* @.str, i64 0, i64 0, !psr.id !1046
  %7 = getelementptr inbounds [53 x i8], [53 x i8]* @.str.1, i64 0, i64 0, !psr.id !1047
  %8 = getelementptr inbounds [65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.randombytes, i64 0, i64 0, !psr.id !1048
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !1039, !psr.id !1049
  unreachable, !dbg !1039, !psr.id !1050

9:                                                ; preds = %4
  call void @randombytes_buf(i8* %0, i64 %1), !dbg !1051, !psr.id !1052
  ret void, !dbg !1053, !psr.id !1054
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @randombytes_sysrandom_implementation_name() #0 !dbg !1055 {
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.7, i64 0, i64 0, !psr.id !1056
  ret i8* %1, !dbg !1057, !psr.id !1058
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom() #0 !dbg !1059 {
  %1 = alloca i32, align 4, !psr.id !1060
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1061, metadata !DIExpression()), !dbg !1062, !psr.id !1063
  %2 = bitcast i32* %1 to i8*, !dbg !1064, !psr.id !1065
  call void @randombytes_sysrandom_buf(i8* %2, i64 4), !dbg !1066, !psr.id !1067
  %3 = load i32, i32* %1, align 4, !dbg !1068, !psr.id !1069
  ret i32 %3, !dbg !1070, !psr.id !1071
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_stir() #0 !dbg !1072 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !1073
  %2 = load i32, i32* %1, align 4, !dbg !1074, !psr.id !1076
  %3 = icmp eq i32 %2, 0, !dbg !1077, !psr.id !1078
  br i1 %3, label %4, label %6, !dbg !1079, !psr.id !1080

4:                                                ; preds = %0
  call void @randombytes_sysrandom_init(), !dbg !1081, !psr.id !1083
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !1084
  store i32 1, i32* %5, align 4, !dbg !1085, !psr.id !1086
  br label %6, !dbg !1087, !psr.id !1088

6:                                                ; preds = %4, %0
  ret void, !dbg !1089, !psr.id !1090
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @randombytes_sysrandom_buf(i8* %0, i64 %1) #0 !dbg !1091 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1092, metadata !DIExpression()), !dbg !1093, !psr.id !1094
  call void @llvm.dbg.value(metadata i64 %1, metadata !1095, metadata !DIExpression()), !dbg !1093, !psr.id !1096
  call void @randombytes_sysrandom_stir_if_needed(), !dbg !1097, !psr.id !1098
  %3 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !1099
  %4 = load i32, i32* %3, align 4, !dbg !1100, !psr.id !1102
  %5 = icmp ne i32 %4, 0, !dbg !1103, !psr.id !1104
  br i1 %5, label %6, label %11, !dbg !1105, !psr.id !1106

6:                                                ; preds = %2
  %7 = call i32 @randombytes_linux_getrandom(i8* %0, i64 %1), !dbg !1107, !psr.id !1110
  %8 = icmp ne i32 %7, 0, !dbg !1111, !psr.id !1112
  br i1 %8, label %9, label %10, !dbg !1113, !psr.id !1114

9:                                                ; preds = %6
  call void @abort() #8, !dbg !1115, !psr.id !1117
  br label %UnifiedUnreachableBlock, !psr.id !1118

10:                                               ; preds = %6
  br label %21, !dbg !1119, !psr.id !1120

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1121
  %13 = load i32, i32* %12, align 4, !dbg !1122, !psr.id !1124
  %14 = icmp eq i32 %13, -1, !dbg !1125, !psr.id !1126
  br i1 %14, label %20, label %15, !dbg !1127, !psr.id !1128

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1129
  %17 = load i32, i32* %16, align 4, !dbg !1130, !psr.id !1131
  %18 = call i64 @safe_read(i32 %17, i8* %0, i64 %1), !dbg !1132, !psr.id !1133
  %19 = icmp ne i64 %18, %1, !dbg !1134, !psr.id !1135
  br i1 %19, label %20, label %21, !dbg !1136, !psr.id !1137

20:                                               ; preds = %15, %11
  call void @abort() #8, !dbg !1138, !psr.id !1140
  br label %UnifiedUnreachableBlock, !psr.id !1141

21:                                               ; preds = %15, %10
  ret void, !dbg !1142, !psr.id !1143

UnifiedUnreachableBlock:                          ; preds = %20, %9
  unreachable, !psr.id !1144
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randombytes_sysrandom_close() #0 !dbg !1145 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !1146, metadata !DIExpression()), !dbg !1147, !psr.id !1148
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1149
  %2 = load i32, i32* %1, align 4, !dbg !1150, !psr.id !1152
  %3 = icmp ne i32 %2, -1, !dbg !1153, !psr.id !1154
  br i1 %3, label %4, label %12, !dbg !1155, !psr.id !1156

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1157
  %6 = load i32, i32* %5, align 4, !dbg !1158, !psr.id !1159
  %7 = call i32 @close(i32 %6), !dbg !1160, !psr.id !1161
  %8 = icmp eq i32 %7, 0, !dbg !1162, !psr.id !1163
  br i1 %8, label %9, label %12, !dbg !1164, !psr.id !1165

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1166
  store i32 -1, i32* %10, align 4, !dbg !1167, !psr.id !1169
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !1170
  store i32 0, i32* %11, align 4, !dbg !1171, !psr.id !1172
  call void @llvm.dbg.value(metadata i32 0, metadata !1146, metadata !DIExpression()), !dbg !1147, !psr.id !1173
  br label %12, !dbg !1174, !psr.id !1175

12:                                               ; preds = %9, %4, %0
  %.0 = phi i32 [ 0, %9 ], [ -1, %4 ], [ -1, %0 ], !dbg !1147, !psr.id !1176
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1146, metadata !DIExpression()), !dbg !1147, !psr.id !1177
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !1178
  %14 = load i32, i32* %13, align 4, !dbg !1179, !psr.id !1181
  %15 = icmp ne i32 %14, 0, !dbg !1182, !psr.id !1183
  br i1 %15, label %16, label %17, !dbg !1184, !psr.id !1185

16:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 0, metadata !1146, metadata !DIExpression()), !dbg !1147, !psr.id !1186
  br label %17, !dbg !1187, !psr.id !1189

17:                                               ; preds = %16, %12
  %.1 = phi i32 [ 0, %16 ], [ %.0, %12 ], !dbg !1147, !psr.id !1190
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1146, metadata !DIExpression()), !dbg !1147, !psr.id !1191
  ret i32 %.1, !dbg !1192, !psr.id !1193
}

declare dso_local i32 @close(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_stir_if_needed() #0 !dbg !1194 {
  %1 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 1, !psr.id !1195
  %2 = load i32, i32* %1, align 4, !dbg !1196, !psr.id !1198
  %3 = icmp eq i32 %2, 0, !dbg !1199, !psr.id !1200
  br i1 %3, label %4, label %5, !dbg !1201, !psr.id !1202

4:                                                ; preds = %0
  call void @randombytes_sysrandom_stir(), !dbg !1203, !psr.id !1205
  br label %5, !dbg !1206, !psr.id !1207

5:                                                ; preds = %4, %0
  ret void, !dbg !1208, !psr.id !1209
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !1210 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1213, metadata !DIExpression()), !dbg !1214, !psr.id !1215
  call void @llvm.dbg.value(metadata i64 %1, metadata !1216, metadata !DIExpression()), !dbg !1214, !psr.id !1217
  call void @llvm.dbg.value(metadata i8* %0, metadata !1218, metadata !DIExpression()), !dbg !1214, !psr.id !1219
  call void @llvm.dbg.value(metadata i64 256, metadata !1220, metadata !DIExpression()), !dbg !1214, !psr.id !1221
  br label %3, !dbg !1222, !psr.id !1223

3:                                                ; preds = %20, %2
  %.03 = phi i8* [ %0, %2 ], [ %19, %20 ], !dbg !1214, !psr.id !1224
  %.02 = phi i64 [ %1, %2 ], [ %18, %20 ], !psr.id !1225
  %.01 = phi i64 [ 256, %2 ], [ %.1, %20 ], !dbg !1214, !psr.id !1226
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1220, metadata !DIExpression()), !dbg !1214, !psr.id !1227
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1216, metadata !DIExpression()), !dbg !1214, !psr.id !1228
  call void @llvm.dbg.value(metadata i8* %.03, metadata !1218, metadata !DIExpression()), !dbg !1214, !psr.id !1229
  %4 = icmp ult i64 %.02, %.01, !dbg !1230, !psr.id !1233
  br i1 %4, label %5, label %13, !dbg !1234, !psr.id !1235

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1220, metadata !DIExpression()), !dbg !1214, !psr.id !1236
  %6 = icmp ugt i64 %.02, 0, !dbg !1237, !psr.id !1241
  br i1 %6, label %7, label %8, !dbg !1242, !psr.id !1243

7:                                                ; preds = %5
  br label %12, !dbg !1242, !psr.id !1244

8:                                                ; preds = %5
  %9 = getelementptr inbounds [25 x i8], [25 x i8]* @.str.3, i64 0, i64 0, !psr.id !1245
  %10 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !1246
  %11 = getelementptr inbounds [53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.randombytes_linux_getrandom, i64 0, i64 0, !psr.id !1247
  call void @__assert_fail(i8* %9, i8* %10, i32 159, i8* %11) #8, !dbg !1237, !psr.id !1248
  unreachable, !dbg !1237, !psr.id !1249

12:                                               ; preds = %7
  br label %13, !dbg !1250, !psr.id !1251

13:                                               ; preds = %12, %3
  %.1 = phi i64 [ %.02, %12 ], [ %.01, %3 ], !dbg !1214, !psr.id !1252
  call void @llvm.dbg.value(metadata i64 %.1, metadata !1220, metadata !DIExpression()), !dbg !1214, !psr.id !1253
  %14 = call i32 @_randombytes_linux_getrandom(i8* %.03, i64 %.1), !dbg !1254, !psr.id !1256
  %15 = icmp ne i32 %14, 0, !dbg !1257, !psr.id !1258
  br i1 %15, label %16, label %17, !dbg !1259, !psr.id !1260

16:                                               ; preds = %13
  br label %23, !dbg !1261, !psr.id !1263

17:                                               ; preds = %13
  %18 = sub i64 %.02, %.1, !dbg !1264, !psr.id !1265
  call void @llvm.dbg.value(metadata i64 %18, metadata !1216, metadata !DIExpression()), !dbg !1214, !psr.id !1266
  %19 = getelementptr inbounds i8, i8* %.03, i64 %.1, !dbg !1267, !psr.id !1268
  call void @llvm.dbg.value(metadata i8* %19, metadata !1218, metadata !DIExpression()), !dbg !1214, !psr.id !1269
  br label %20, !dbg !1270, !psr.id !1271

20:                                               ; preds = %17
  %21 = icmp ugt i64 %18, 0, !dbg !1272, !psr.id !1273
  br i1 %21, label %3, label %22, !dbg !1270, !llvm.loop !1274, !psr.id !1276

22:                                               ; preds = %20
  br label %23, !dbg !1277, !psr.id !1278

23:                                               ; preds = %22, %16
  %.0 = phi i32 [ -1, %16 ], [ 0, %22 ], !dbg !1214, !psr.id !1279
  ret i32 %.0, !dbg !1280, !psr.id !1281
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 !dbg !1282 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1286, metadata !DIExpression()), !dbg !1287, !psr.id !1288
  call void @llvm.dbg.value(metadata i8* %1, metadata !1289, metadata !DIExpression()), !dbg !1287, !psr.id !1290
  call void @llvm.dbg.value(metadata i64 %2, metadata !1291, metadata !DIExpression()), !dbg !1287, !psr.id !1292
  call void @llvm.dbg.value(metadata i8* %1, metadata !1293, metadata !DIExpression()), !dbg !1287, !psr.id !1294
  %4 = icmp ugt i64 %2, 0, !dbg !1295, !psr.id !1298
  br i1 %4, label %5, label %6, !dbg !1299, !psr.id !1300

5:                                                ; preds = %3
  br label %10, !dbg !1299, !psr.id !1301

6:                                                ; preds = %3
  %7 = getelementptr inbounds [19 x i8], [19 x i8]* @.str.6, i64 0, i64 0, !psr.id !1302
  %8 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !1303
  %9 = getelementptr inbounds [50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.safe_read, i64 0, i64 0, !psr.id !1304
  call void @__assert_fail(i8* %7, i8* %8, i32 82, i8* %9) #8, !dbg !1295, !psr.id !1305
  unreachable, !dbg !1295, !psr.id !1306

10:                                               ; preds = %5
  br label %11, !dbg !1307, !psr.id !1308

11:                                               ; preds = %37, %10
  %.02 = phi i64 [ %2, %10 ], [ %35, %37 ], !psr.id !1309
  %.01 = phi i8* [ %1, %10 ], [ %36, %37 ], !dbg !1287, !psr.id !1310
  call void @llvm.dbg.value(metadata i8* %.01, metadata !1293, metadata !DIExpression()), !dbg !1287, !psr.id !1311
  call void @llvm.dbg.value(metadata i64 %.02, metadata !1291, metadata !DIExpression()), !dbg !1287, !psr.id !1312
  br label %12, !dbg !1313, !psr.id !1315

12:                                               ; preds = %27, %11
  %13 = call i64 @read(i32 %0, i8* %.01, i64 %.02), !dbg !1316, !psr.id !1317
  call void @llvm.dbg.value(metadata i64 %13, metadata !1318, metadata !DIExpression()), !dbg !1287, !psr.id !1319
  %14 = icmp slt i64 %13, 0, !dbg !1320, !psr.id !1321
  br i1 %14, label %15, label %25, !dbg !1322, !psr.id !1323

15:                                               ; preds = %12
  %16 = call i32* @__errno_location() #9, !dbg !1324, !psr.id !1325
  %17 = load i32, i32* %16, align 4, !dbg !1324, !psr.id !1326
  %18 = icmp eq i32 %17, 4, !dbg !1327, !psr.id !1328
  br i1 %18, label %23, label %19, !dbg !1329, !psr.id !1330

19:                                               ; preds = %15
  %20 = call i32* @__errno_location() #9, !dbg !1331, !psr.id !1332
  %21 = load i32, i32* %20, align 4, !dbg !1331, !psr.id !1333
  %22 = icmp eq i32 %21, 11, !dbg !1334, !psr.id !1335
  br label %23, !dbg !1329, !psr.id !1336

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ], !psr.id !1337
  br label %25, !psr.id !1338

25:                                               ; preds = %23, %12
  %26 = phi i1 [ false, %12 ], [ %24, %23 ], !dbg !1339, !psr.id !1340
  br i1 %26, label %27, label %28, !dbg !1313, !psr.id !1341

27:                                               ; preds = %25
  br label %12, !dbg !1313, !llvm.loop !1342, !psr.id !1344

28:                                               ; preds = %25
  %29 = icmp slt i64 %13, 0, !dbg !1345, !psr.id !1347
  br i1 %29, label %30, label %31, !dbg !1348, !psr.id !1349

30:                                               ; preds = %28
  br label %43, !dbg !1350, !psr.id !1352

31:                                               ; preds = %28
  %32 = icmp eq i64 %13, 0, !dbg !1353, !psr.id !1355
  br i1 %32, label %33, label %34, !dbg !1356, !psr.id !1357

33:                                               ; preds = %31
  br label %39, !dbg !1358, !psr.id !1360

34:                                               ; preds = %31
  %35 = sub i64 %.02, %13, !dbg !1361, !psr.id !1362
  call void @llvm.dbg.value(metadata i64 %35, metadata !1291, metadata !DIExpression()), !dbg !1287, !psr.id !1363
  %36 = getelementptr inbounds i8, i8* %.01, i64 %13, !dbg !1364, !psr.id !1365
  call void @llvm.dbg.value(metadata i8* %36, metadata !1293, metadata !DIExpression()), !dbg !1287, !psr.id !1366
  br label %37, !dbg !1367, !psr.id !1368

37:                                               ; preds = %34
  %38 = icmp ugt i64 %35, 0, !dbg !1369, !psr.id !1370
  br i1 %38, label %11, label %39, !dbg !1367, !llvm.loop !1371, !psr.id !1373

39:                                               ; preds = %37, %33
  %.1 = phi i8* [ %.01, %33 ], [ %36, %37 ], !dbg !1287, !psr.id !1374
  call void @llvm.dbg.value(metadata i8* %.1, metadata !1293, metadata !DIExpression()), !dbg !1287, !psr.id !1375
  %40 = ptrtoint i8* %.1 to i64, !dbg !1376, !psr.id !1377
  %41 = ptrtoint i8* %1 to i64, !dbg !1376, !psr.id !1378
  %42 = sub i64 %40, %41, !dbg !1376, !psr.id !1379
  br label %43, !dbg !1380, !psr.id !1381

43:                                               ; preds = %39, %30
  %.0 = phi i64 [ %13, %30 ], [ %42, %39 ], !dbg !1287, !psr.id !1382
  ret i64 %.0, !dbg !1383, !psr.id !1384
}

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 !dbg !1385 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1388, metadata !DIExpression()), !dbg !1389, !psr.id !1390
  call void @llvm.dbg.value(metadata i64 %1, metadata !1391, metadata !DIExpression()), !dbg !1389, !psr.id !1392
  %3 = icmp ule i64 %1, 256, !dbg !1393, !psr.id !1396
  br i1 %3, label %4, label %5, !dbg !1397, !psr.id !1398

4:                                                ; preds = %2
  br label %9, !dbg !1397, !psr.id !1399

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i8], [13 x i8]* @.str.5, i64 0, i64 0, !psr.id !1400
  %7 = getelementptr inbounds [73 x i8], [73 x i8]* @.str.4, i64 0, i64 0, !psr.id !1401
  %8 = getelementptr inbounds [60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._randombytes_linux_getrandom, i64 0, i64 0, !psr.id !1402
  call void @__assert_fail(i8* %6, i8* %7, i32 142, i8* %8) #8, !dbg !1393, !psr.id !1403
  unreachable, !dbg !1393, !psr.id !1404

9:                                                ; preds = %4
  br label %10, !dbg !1405, !psr.id !1406

10:                                               ; preds = %26, %9
  %11 = trunc i64 %1 to i32, !dbg !1407, !psr.id !1409
  %12 = call i64 (i64, ...) @syscall(i64 318, i8* %0, i32 %11, i32 0) #10, !dbg !1410, !psr.id !1411
  %13 = trunc i64 %12 to i32, !dbg !1410, !psr.id !1412
  call void @llvm.dbg.value(metadata i32 %13, metadata !1413, metadata !DIExpression()), !dbg !1389, !psr.id !1414
  br label %14, !dbg !1415, !psr.id !1416

14:                                               ; preds = %10
  %15 = icmp slt i32 %13, 0, !dbg !1417, !psr.id !1418
  br i1 %15, label %16, label %26, !dbg !1419, !psr.id !1420

16:                                               ; preds = %14
  %17 = call i32* @__errno_location() #9, !dbg !1421, !psr.id !1422
  %18 = load i32, i32* %17, align 4, !dbg !1421, !psr.id !1423
  %19 = icmp eq i32 %18, 4, !dbg !1424, !psr.id !1425
  br i1 %19, label %24, label %20, !dbg !1426, !psr.id !1427

20:                                               ; preds = %16
  %21 = call i32* @__errno_location() #9, !dbg !1428, !psr.id !1429
  %22 = load i32, i32* %21, align 4, !dbg !1428, !psr.id !1430
  %23 = icmp eq i32 %22, 11, !dbg !1431, !psr.id !1432
  br label %24, !dbg !1426, !psr.id !1433

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ], !psr.id !1434
  br label %26, !psr.id !1435

26:                                               ; preds = %24, %14
  %27 = phi i1 [ false, %14 ], [ %25, %24 ], !dbg !1389, !psr.id !1436
  br i1 %27, label %10, label %28, !dbg !1415, !llvm.loop !1437, !psr.id !1439

28:                                               ; preds = %26
  %29 = trunc i64 %1 to i32, !dbg !1440, !psr.id !1441
  %30 = icmp eq i32 %13, %29, !dbg !1442, !psr.id !1443
  %31 = zext i1 %30 to i32, !dbg !1442, !psr.id !1444
  %32 = sub nsw i32 %31, 1, !dbg !1445, !psr.id !1446
  ret i32 %32, !dbg !1447, !psr.id !1448
}

; Function Attrs: nounwind
declare dso_local i64 @syscall(i64, ...) #5

; Function Attrs: noinline nounwind uwtable
define internal void @randombytes_sysrandom_init() #0 !dbg !1449 {
  %1 = alloca [16 x i8], align 16, !psr.id !1450
  %2 = call i32* @__errno_location() #9, !dbg !1451, !psr.id !1452
  %3 = load i32, i32* %2, align 4, !dbg !1451, !psr.id !1453
  call void @llvm.dbg.value(metadata i32 %3, metadata !1454, metadata !DIExpression()), !dbg !1455, !psr.id !1456
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !1457, metadata !DIExpression()), !dbg !1459, !psr.id !1460
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0, !dbg !1461, !psr.id !1463
  %5 = call i32 @randombytes_linux_getrandom(i8* %4, i64 16), !dbg !1464, !psr.id !1465
  %6 = icmp eq i32 %5, 0, !dbg !1466, !psr.id !1467
  br i1 %6, label %7, label %10, !dbg !1468, !psr.id !1469

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !1470
  store i32 1, i32* %8, align 4, !dbg !1471, !psr.id !1473
  %9 = call i32* @__errno_location() #9, !dbg !1474, !psr.id !1475
  store i32 %3, i32* %9, align 4, !dbg !1476, !psr.id !1477
  br label %18, !dbg !1478, !psr.id !1479

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 2, !psr.id !1480
  store i32 0, i32* %11, align 4, !dbg !1481, !psr.id !1482
  %12 = call i32 @randombytes_sysrandom_random_dev_open(), !dbg !1483, !psr.id !1485
  %13 = getelementptr inbounds %struct.SysRandom_, %struct.SysRandom_* @stream, i32 0, i32 0, !psr.id !1486
  store i32 %12, i32* %13, align 4, !dbg !1487, !psr.id !1488
  %14 = icmp eq i32 %12, -1, !dbg !1489, !psr.id !1490
  br i1 %14, label %15, label %16, !dbg !1491, !psr.id !1492

15:                                               ; preds = %10
  call void @abort() #8, !dbg !1493, !psr.id !1495
  unreachable, !dbg !1493, !psr.id !1496

16:                                               ; preds = %10
  %17 = call i32* @__errno_location() #9, !dbg !1497, !psr.id !1498
  store i32 %3, i32* %17, align 4, !dbg !1499, !psr.id !1500
  br label %18, !dbg !1501, !psr.id !1502

18:                                               ; preds = %16, %7
  ret void, !dbg !1501, !psr.id !1503
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @randombytes_sysrandom_random_dev_open() #0 !dbg !79 {
  %1 = alloca %struct.stat, align 8, !psr.id !1504
  call void @llvm.dbg.declare(metadata %struct.stat* %1, metadata !1505, metadata !DIExpression()), !dbg !1541, !psr.id !1542
  call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0), metadata !1543, metadata !DIExpression()), !dbg !1545, !psr.id !1546
  %2 = getelementptr inbounds [3 x i8*], [3 x i8*]* @randombytes_sysrandom_random_dev_open.devices, i64 0, i64 0, !psr.id !1547
  br label %3, !dbg !1548, !psr.id !1549

3:                                                ; preds = %29, %0
  %.01 = phi i8** [ %2, %0 ], [ %.1, %29 ], !dbg !1545, !psr.id !1550
  call void @llvm.dbg.value(metadata i8** %.01, metadata !1543, metadata !DIExpression()), !dbg !1545, !psr.id !1551
  %4 = load i8*, i8** %.01, align 8, !dbg !1552, !psr.id !1554
  %5 = call i32 (i8*, i32, ...) @open(i8* %4, i32 0), !dbg !1555, !psr.id !1556
  call void @llvm.dbg.value(metadata i32 %5, metadata !1557, metadata !DIExpression()), !dbg !1545, !psr.id !1558
  %6 = icmp ne i32 %5, -1, !dbg !1559, !psr.id !1561
  br i1 %6, label %7, label %21, !dbg !1562, !psr.id !1563

7:                                                ; preds = %3
  %8 = call i32 @fstat(i32 %5, %struct.stat* %1) #10, !dbg !1564, !psr.id !1567
  %9 = icmp eq i32 %8, 0, !dbg !1568, !psr.id !1569
  br i1 %9, label %10, label %19, !dbg !1570, !psr.id !1571

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 3, !dbg !1572, !psr.id !1573
  %12 = load i32, i32* %11, align 8, !dbg !1572, !psr.id !1574
  %13 = and i32 %12, 61440, !dbg !1572, !psr.id !1575
  %14 = icmp eq i32 %13, 8192, !dbg !1572, !psr.id !1576
  br i1 %14, label %15, label %19, !dbg !1577, !psr.id !1578

15:                                               ; preds = %10
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 1), !dbg !1579, !psr.id !1581
  %17 = or i32 %16, 1, !dbg !1582, !psr.id !1583
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 2, i32 %17), !dbg !1584, !psr.id !1585
  br label %34, !dbg !1586, !psr.id !1587

19:                                               ; preds = %10, %7
  %20 = call i32 @close(i32 %5), !dbg !1588, !psr.id !1589
  br label %27, !dbg !1590, !psr.id !1591

21:                                               ; preds = %3
  %22 = call i32* @__errno_location() #9, !dbg !1592, !psr.id !1594
  %23 = load i32, i32* %22, align 4, !dbg !1592, !psr.id !1595
  %24 = icmp eq i32 %23, 4, !dbg !1596, !psr.id !1597
  br i1 %24, label %25, label %26, !dbg !1598, !psr.id !1599

25:                                               ; preds = %21
  br label %29, !dbg !1600, !psr.id !1602

26:                                               ; preds = %21
  br label %27, !psr.id !1603

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds i8*, i8** %.01, i32 1, !dbg !1604, !psr.id !1605
  call void @llvm.dbg.value(metadata i8** %28, metadata !1543, metadata !DIExpression()), !dbg !1545, !psr.id !1606
  br label %29, !dbg !1607, !psr.id !1608

29:                                               ; preds = %27, %25
  %.1 = phi i8** [ %28, %27 ], [ %.01, %25 ], !dbg !1545, !psr.id !1609
  call void @llvm.dbg.value(metadata i8** %.1, metadata !1543, metadata !DIExpression()), !dbg !1545, !psr.id !1610
  %30 = load i8*, i8** %.1, align 8, !dbg !1611, !psr.id !1612
  %31 = icmp ne i8* %30, null, !dbg !1613, !psr.id !1614
  br i1 %31, label %3, label %32, !dbg !1607, !llvm.loop !1615, !psr.id !1617

32:                                               ; preds = %29
  %33 = call i32* @__errno_location() #9, !dbg !1618, !psr.id !1619
  store i32 5, i32* %33, align 4, !dbg !1620, !psr.id !1621
  br label %34, !dbg !1622, !psr.id !1623

34:                                               ; preds = %32, %15
  %.0 = phi i32 [ %5, %15 ], [ -1, %32 ], !dbg !1545, !psr.id !1624
  ret i32 %.0, !dbg !1625, !psr.id !1626
}

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #5

declare dso_local i32 @fcntl(i32, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_memzero(i8* %0, i64 %1) #0 !dbg !1627 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1628, metadata !DIExpression()), !dbg !1629, !psr.id !1630
  call void @llvm.dbg.value(metadata i64 %1, metadata !1631, metadata !DIExpression()), !dbg !1629, !psr.id !1632
  call void @llvm.dbg.value(metadata i8* %0, metadata !1633, metadata !DIExpression()), !dbg !1629, !psr.id !1634
  call void @llvm.dbg.value(metadata i64 0, metadata !1635, metadata !DIExpression()), !dbg !1629, !psr.id !1636
  br label %3, !dbg !1637, !psr.id !1638

3:                                                ; preds = %5, %2
  %.0 = phi i64 [ 0, %2 ], [ %6, %5 ], !dbg !1629, !psr.id !1639
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1635, metadata !DIExpression()), !dbg !1629, !psr.id !1640
  %4 = icmp ult i64 %.0, %1, !dbg !1641, !psr.id !1642
  br i1 %4, label %5, label %8, !dbg !1637, !psr.id !1643

5:                                                ; preds = %3
  %6 = add i64 %.0, 1, !dbg !1644, !psr.id !1646
  call void @llvm.dbg.value(metadata i64 %6, metadata !1635, metadata !DIExpression()), !dbg !1629, !psr.id !1647
  %7 = getelementptr inbounds i8, i8* %0, i64 %.0, !dbg !1648, !psr.id !1649
  store volatile i8 0, i8* %7, align 1, !dbg !1650, !psr.id !1651
  br label %3, !dbg !1637, !llvm.loop !1652, !psr.id !1654

8:                                                ; preds = %3
  ret void, !dbg !1655, !psr.id !1656
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_memcmp(i8* %0, i8* %1, i64 %2) #0 !dbg !1657 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1663, metadata !DIExpression()), !dbg !1664, !psr.id !1665
  call void @llvm.dbg.value(metadata i8* %1, metadata !1666, metadata !DIExpression()), !dbg !1664, !psr.id !1667
  call void @llvm.dbg.value(metadata i64 %2, metadata !1668, metadata !DIExpression()), !dbg !1664, !psr.id !1669
  call void @llvm.dbg.value(metadata i8* %0, metadata !1670, metadata !DIExpression()), !dbg !1664, !psr.id !1671
  call void @llvm.dbg.value(metadata i8* %1, metadata !1672, metadata !DIExpression()), !dbg !1664, !psr.id !1673
  call void @llvm.dbg.value(metadata i8 0, metadata !1674, metadata !DIExpression()), !dbg !1664, !psr.id !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1676, metadata !DIExpression()), !dbg !1664, !psr.id !1677
  br label %4, !dbg !1678, !psr.id !1680

4:                                                ; preds = %17, %3
  %.01 = phi i64 [ 0, %3 ], [ %18, %17 ], !dbg !1681, !psr.id !1682
  %.0 = phi i8 [ 0, %3 ], [ %16, %17 ], !dbg !1664, !psr.id !1683
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1674, metadata !DIExpression()), !dbg !1664, !psr.id !1684
  call void @llvm.dbg.value(metadata i64 %.01, metadata !1676, metadata !DIExpression()), !dbg !1664, !psr.id !1685
  %5 = icmp ult i64 %.01, %2, !dbg !1686, !psr.id !1688
  br i1 %5, label %6, label %19, !dbg !1689, !psr.id !1690

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %0, i64 %.01, !dbg !1691, !psr.id !1693
  %8 = load i8, i8* %7, align 1, !dbg !1691, !psr.id !1694
  %9 = zext i8 %8 to i32, !dbg !1691, !psr.id !1695
  %10 = getelementptr inbounds i8, i8* %1, i64 %.01, !dbg !1696, !psr.id !1697
  %11 = load i8, i8* %10, align 1, !dbg !1696, !psr.id !1698
  %12 = zext i8 %11 to i32, !dbg !1696, !psr.id !1699
  %13 = xor i32 %9, %12, !dbg !1700, !psr.id !1701
  %14 = zext i8 %.0 to i32, !dbg !1702, !psr.id !1703
  %15 = or i32 %14, %13, !dbg !1702, !psr.id !1704
  %16 = trunc i32 %15 to i8, !dbg !1702, !psr.id !1705
  call void @llvm.dbg.value(metadata i8 %16, metadata !1674, metadata !DIExpression()), !dbg !1664, !psr.id !1706
  br label %17, !dbg !1707, !psr.id !1708

17:                                               ; preds = %6
  %18 = add i64 %.01, 1, !dbg !1709, !psr.id !1710
  call void @llvm.dbg.value(metadata i64 %18, metadata !1676, metadata !DIExpression()), !dbg !1664, !psr.id !1711
  br label %4, !dbg !1712, !llvm.loop !1713, !psr.id !1715

19:                                               ; preds = %4
  %20 = zext i8 %.0 to i32, !dbg !1716, !psr.id !1717
  %21 = sub nsw i32 %20, 1, !dbg !1718, !psr.id !1719
  %22 = ashr i32 %21, 8, !dbg !1720, !psr.id !1721
  %23 = and i32 1, %22, !dbg !1722, !psr.id !1723
  %24 = sub nsw i32 %23, 1, !dbg !1724, !psr.id !1725
  ret i32 %24, !dbg !1726, !psr.id !1727
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sodium_bin2hex(i8* %0, i64 %1, i8* %2, i64 %3) #0 !dbg !1728 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1734, metadata !DIExpression()), !dbg !1735, !psr.id !1736
  call void @llvm.dbg.value(metadata i64 %1, metadata !1737, metadata !DIExpression()), !dbg !1735, !psr.id !1738
  call void @llvm.dbg.value(metadata i8* %2, metadata !1739, metadata !DIExpression()), !dbg !1735, !psr.id !1740
  call void @llvm.dbg.value(metadata i64 %3, metadata !1741, metadata !DIExpression()), !dbg !1735, !psr.id !1742
  call void @llvm.dbg.value(metadata i64 0, metadata !1743, metadata !DIExpression()), !dbg !1735, !psr.id !1744
  %5 = icmp uge i64 %3, 9223372036854775807, !dbg !1745, !psr.id !1747
  br i1 %5, label %9, label %6, !dbg !1748, !psr.id !1749

6:                                                ; preds = %4
  %7 = mul i64 %3, 2, !dbg !1750, !psr.id !1751
  %8 = icmp ult i64 %1, %7, !dbg !1752, !psr.id !1753
  br i1 %8, label %9, label %10, !dbg !1754, !psr.id !1755

9:                                                ; preds = %6, %4
  call void @abort() #8, !dbg !1756, !psr.id !1758
  unreachable, !dbg !1756, !psr.id !1759

10:                                               ; preds = %6
  br label %11, !dbg !1760, !psr.id !1761

11:                                               ; preds = %13, %10
  %.0 = phi i64 [ 0, %10 ], [ %46, %13 ], !dbg !1735, !psr.id !1762
  call void @llvm.dbg.value(metadata i64 %.0, metadata !1743, metadata !DIExpression()), !dbg !1735, !psr.id !1763
  %12 = icmp ult i64 %.0, %3, !dbg !1764, !psr.id !1765
  br i1 %12, label %13, label %47, !dbg !1760, !psr.id !1766

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1767, !psr.id !1769
  %15 = load i8, i8* %14, align 1, !dbg !1767, !psr.id !1770
  %16 = zext i8 %15 to i32, !dbg !1767, !psr.id !1771
  %17 = and i32 %16, 15, !dbg !1772, !psr.id !1773
  call void @llvm.dbg.value(metadata i32 %17, metadata !1774, metadata !DIExpression()), !dbg !1735, !psr.id !1775
  %18 = getelementptr inbounds i8, i8* %2, i64 %.0, !dbg !1776, !psr.id !1777
  %19 = load i8, i8* %18, align 1, !dbg !1776, !psr.id !1778
  %20 = zext i8 %19 to i32, !dbg !1776, !psr.id !1779
  %21 = ashr i32 %20, 4, !dbg !1780, !psr.id !1781
  call void @llvm.dbg.value(metadata i32 %21, metadata !1782, metadata !DIExpression()), !dbg !1735, !psr.id !1783
  %22 = add i32 87, %17, !dbg !1784, !psr.id !1785
  %23 = sub i32 %17, 10, !dbg !1786, !psr.id !1787
  %24 = lshr i32 %23, 8, !dbg !1788, !psr.id !1789
  %25 = and i32 %24, -39, !dbg !1790, !psr.id !1791
  %26 = add i32 %22, %25, !dbg !1792, !psr.id !1793
  %27 = trunc i32 %26 to i8, !dbg !1794, !psr.id !1795
  %28 = zext i8 %27 to i32, !dbg !1794, !psr.id !1796
  %29 = shl i32 %28, 8, !dbg !1797, !psr.id !1798
  %30 = add i32 87, %21, !dbg !1799, !psr.id !1800
  %31 = sub i32 %21, 10, !dbg !1801, !psr.id !1802
  %32 = lshr i32 %31, 8, !dbg !1803, !psr.id !1804
  %33 = and i32 %32, -39, !dbg !1805, !psr.id !1806
  %34 = add i32 %30, %33, !dbg !1807, !psr.id !1808
  %35 = trunc i32 %34 to i8, !dbg !1809, !psr.id !1810
  %36 = zext i8 %35 to i32, !dbg !1809, !psr.id !1811
  %37 = or i32 %29, %36, !dbg !1812, !psr.id !1813
  call void @llvm.dbg.value(metadata i32 %37, metadata !1814, metadata !DIExpression()), !dbg !1735, !psr.id !1815
  %38 = trunc i32 %37 to i8, !dbg !1816, !psr.id !1817
  %39 = mul i64 %.0, 2, !dbg !1818, !psr.id !1819
  %40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !1820, !psr.id !1821
  store i8 %38, i8* %40, align 1, !dbg !1822, !psr.id !1823
  %41 = lshr i32 %37, 8, !dbg !1824, !psr.id !1825
  call void @llvm.dbg.value(metadata i32 %41, metadata !1814, metadata !DIExpression()), !dbg !1735, !psr.id !1826
  %42 = trunc i32 %41 to i8, !dbg !1827, !psr.id !1828
  %43 = mul i64 %.0, 2, !dbg !1829, !psr.id !1830
  %44 = add i64 %43, 1, !dbg !1831, !psr.id !1832
  %45 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !1833, !psr.id !1834
  store i8 %42, i8* %45, align 1, !dbg !1835, !psr.id !1836
  %46 = add i64 %.0, 1, !dbg !1837, !psr.id !1838
  call void @llvm.dbg.value(metadata i64 %46, metadata !1743, metadata !DIExpression()), !dbg !1735, !psr.id !1839
  br label %11, !dbg !1760, !llvm.loop !1840, !psr.id !1842

47:                                               ; preds = %11
  %48 = mul i64 %.0, 2, !dbg !1843, !psr.id !1844
  %49 = getelementptr inbounds i8, i8* %0, i64 %48, !dbg !1845, !psr.id !1846
  store i8 0, i8* %49, align 1, !dbg !1847, !psr.id !1848
  ret i8* %0, !dbg !1849, !psr.id !1850
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 !dbg !1851 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1858, metadata !DIExpression()), !dbg !1859, !psr.id !1860
  call void @llvm.dbg.value(metadata i64 %1, metadata !1861, metadata !DIExpression()), !dbg !1859, !psr.id !1862
  call void @llvm.dbg.value(metadata i8* %2, metadata !1863, metadata !DIExpression()), !dbg !1859, !psr.id !1864
  call void @llvm.dbg.value(metadata i64 %3, metadata !1865, metadata !DIExpression()), !dbg !1859, !psr.id !1866
  call void @llvm.dbg.value(metadata i8* %4, metadata !1867, metadata !DIExpression()), !dbg !1859, !psr.id !1868
  call void @llvm.dbg.value(metadata i64* %5, metadata !1869, metadata !DIExpression()), !dbg !1859, !psr.id !1870
  call void @llvm.dbg.value(metadata i8** %6, metadata !1871, metadata !DIExpression()), !dbg !1859, !psr.id !1872
  call void @llvm.dbg.value(metadata i64 0, metadata !1873, metadata !DIExpression()), !dbg !1859, !psr.id !1874
  call void @llvm.dbg.value(metadata i64 0, metadata !1875, metadata !DIExpression()), !dbg !1859, !psr.id !1876
  call void @llvm.dbg.value(metadata i32 0, metadata !1877, metadata !DIExpression()), !dbg !1859, !psr.id !1878
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1859, !psr.id !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1881, metadata !DIExpression()), !dbg !1859, !psr.id !1882
  br label %8, !dbg !1883, !psr.id !1884

8:                                                ; preds = %73, %44, %7
  %.05 = phi i64 [ 0, %7 ], [ %.05, %44 ], [ %.16, %73 ], !dbg !1885, !psr.id !1886
  %.03 = phi i64 [ 0, %7 ], [ %45, %44 ], [ %77, %73 ], !dbg !1859, !psr.id !1887
  %.01 = phi i8 [ 0, %7 ], [ %.01, %44 ], [ %.1, %73 ], !dbg !1859, !psr.id !1888
  %.0 = phi i8 [ 0, %7 ], [ %.0, %44 ], [ %76, %73 ], !dbg !1859, !psr.id !1889
  call void @llvm.dbg.value(metadata i8 %.0, metadata !1881, metadata !DIExpression()), !dbg !1859, !psr.id !1890
  call void @llvm.dbg.value(metadata i8 %.01, metadata !1879, metadata !DIExpression()), !dbg !1859, !psr.id !1891
  call void @llvm.dbg.value(metadata i64 %.03, metadata !1875, metadata !DIExpression()), !dbg !1859, !psr.id !1892
  call void @llvm.dbg.value(metadata i64 %.05, metadata !1873, metadata !DIExpression()), !dbg !1859, !psr.id !1893
  %9 = icmp ult i64 %.03, %3, !dbg !1894, !psr.id !1895
  br i1 %9, label %10, label %78, !dbg !1883, !psr.id !1896

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %2, i64 %.03, !dbg !1897, !psr.id !1899
  %12 = load i8, i8* %11, align 1, !dbg !1897, !psr.id !1900
  call void @llvm.dbg.value(metadata i8 %12, metadata !1901, metadata !DIExpression()), !dbg !1859, !psr.id !1902
  %13 = zext i8 %12 to i32, !dbg !1903, !psr.id !1904
  %14 = xor i32 %13, 48, !dbg !1905, !psr.id !1906
  %15 = trunc i32 %14 to i8, !dbg !1903, !psr.id !1907
  call void @llvm.dbg.value(metadata i8 %15, metadata !1908, metadata !DIExpression()), !dbg !1859, !psr.id !1909
  %16 = zext i8 %15 to i32, !dbg !1910, !psr.id !1911
  %17 = sub i32 %16, 10, !dbg !1912, !psr.id !1913
  %18 = lshr i32 %17, 8, !dbg !1914, !psr.id !1915
  %19 = trunc i32 %18 to i8, !dbg !1916, !psr.id !1917
  call void @llvm.dbg.value(metadata i8 %19, metadata !1918, metadata !DIExpression()), !dbg !1859, !psr.id !1919
  %20 = zext i8 %12 to i32, !dbg !1920, !psr.id !1921
  %21 = and i32 %20, -33, !dbg !1922, !psr.id !1923
  %22 = sub i32 %21, 55, !dbg !1924, !psr.id !1925
  %23 = trunc i32 %22 to i8, !dbg !1926, !psr.id !1927
  call void @llvm.dbg.value(metadata i8 %23, metadata !1928, metadata !DIExpression()), !dbg !1859, !psr.id !1929
  %24 = zext i8 %23 to i32, !dbg !1930, !psr.id !1931
  %25 = sub i32 %24, 10, !dbg !1932, !psr.id !1933
  %26 = zext i8 %23 to i32, !dbg !1934, !psr.id !1935
  %27 = sub i32 %26, 16, !dbg !1936, !psr.id !1937
  %28 = xor i32 %25, %27, !dbg !1938, !psr.id !1939
  %29 = lshr i32 %28, 8, !dbg !1940, !psr.id !1941
  %30 = trunc i32 %29 to i8, !dbg !1942, !psr.id !1943
  call void @llvm.dbg.value(metadata i8 %30, metadata !1944, metadata !DIExpression()), !dbg !1859, !psr.id !1945
  %31 = zext i8 %19 to i32, !dbg !1946, !psr.id !1948
  %32 = zext i8 %30 to i32, !dbg !1949, !psr.id !1950
  %33 = or i32 %31, %32, !dbg !1951, !psr.id !1952
  %34 = icmp eq i32 %33, 0, !dbg !1953, !psr.id !1954
  br i1 %34, label %35, label %47, !dbg !1955, !psr.id !1956

35:                                               ; preds = %10
  %36 = icmp ne i8* %4, null, !dbg !1957, !psr.id !1960
  br i1 %36, label %37, label %46, !dbg !1961, !psr.id !1962

37:                                               ; preds = %35
  %38 = zext i8 %.0 to i32, !dbg !1963, !psr.id !1964
  %39 = icmp eq i32 %38, 0, !dbg !1965, !psr.id !1966
  br i1 %39, label %40, label %46, !dbg !1967, !psr.id !1968

40:                                               ; preds = %37
  %41 = zext i8 %12 to i32, !dbg !1969, !psr.id !1970
  %42 = call i8* @strchr(i8* %4, i32 %41) #11, !dbg !1971, !psr.id !1972
  %43 = icmp ne i8* %42, null, !dbg !1973, !psr.id !1974
  br i1 %43, label %44, label %46, !dbg !1975, !psr.id !1976

44:                                               ; preds = %40
  %45 = add i64 %.03, 1, !dbg !1977, !psr.id !1979
  call void @llvm.dbg.value(metadata i64 %45, metadata !1875, metadata !DIExpression()), !dbg !1859, !psr.id !1980
  br label %8, !dbg !1981, !llvm.loop !1982, !psr.id !1984

46:                                               ; preds = %40, %37, %35
  br label %78, !dbg !1985, !psr.id !1986

47:                                               ; preds = %10
  %48 = zext i8 %19 to i32, !dbg !1987, !psr.id !1988
  %49 = zext i8 %15 to i32, !dbg !1989, !psr.id !1990
  %50 = and i32 %48, %49, !dbg !1991, !psr.id !1992
  %51 = zext i8 %30 to i32, !dbg !1993, !psr.id !1994
  %52 = zext i8 %23 to i32, !dbg !1995, !psr.id !1996
  %53 = and i32 %51, %52, !dbg !1997, !psr.id !1998
  %54 = or i32 %50, %53, !dbg !1999, !psr.id !2000
  %55 = trunc i32 %54 to i8, !dbg !2001, !psr.id !2002
  call void @llvm.dbg.value(metadata i8 %55, metadata !2003, metadata !DIExpression()), !dbg !1859, !psr.id !2004
  %56 = icmp uge i64 %.05, %1, !dbg !2005, !psr.id !2007
  br i1 %56, label %57, label %59, !dbg !2008, !psr.id !2009

57:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 -1, metadata !1877, metadata !DIExpression()), !dbg !1859, !psr.id !2010
  %58 = call i32* @__errno_location() #9, !dbg !2011, !psr.id !2013
  store i32 34, i32* %58, align 4, !dbg !2014, !psr.id !2015
  br label %78, !dbg !2016, !psr.id !2017

59:                                               ; preds = %47
  %60 = zext i8 %.0 to i32, !dbg !2018, !psr.id !2020
  %61 = icmp eq i32 %60, 0, !dbg !2021, !psr.id !2022
  br i1 %61, label %62, label %66, !dbg !2023, !psr.id !2024

62:                                               ; preds = %59
  %63 = zext i8 %55 to i32, !dbg !2025, !psr.id !2027
  %64 = mul i32 %63, 16, !dbg !2028, !psr.id !2029
  %65 = trunc i32 %64 to i8, !dbg !2025, !psr.id !2030
  call void @llvm.dbg.value(metadata i8 %65, metadata !1879, metadata !DIExpression()), !dbg !1859, !psr.id !2031
  br label %73, !dbg !2032, !psr.id !2033

66:                                               ; preds = %59
  %67 = zext i8 %.01 to i32, !dbg !2034, !psr.id !2036
  %68 = zext i8 %55 to i32, !dbg !2037, !psr.id !2038
  %69 = or i32 %67, %68, !dbg !2039, !psr.id !2040
  %70 = trunc i32 %69 to i8, !dbg !2034, !psr.id !2041
  %71 = add i64 %.05, 1, !dbg !2042, !psr.id !2043
  call void @llvm.dbg.value(metadata i64 %71, metadata !1873, metadata !DIExpression()), !dbg !1859, !psr.id !2044
  %72 = getelementptr inbounds i8, i8* %0, i64 %.05, !dbg !2045, !psr.id !2046
  store i8 %70, i8* %72, align 1, !dbg !2047, !psr.id !2048
  br label %73, !psr.id !2049

73:                                               ; preds = %66, %62
  %.16 = phi i64 [ %.05, %62 ], [ %71, %66 ], !dbg !1859, !psr.id !2050
  %.1 = phi i8 [ %65, %62 ], [ %.01, %66 ], !dbg !1859, !psr.id !2051
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1879, metadata !DIExpression()), !dbg !1859, !psr.id !2052
  call void @llvm.dbg.value(metadata i64 %.16, metadata !1873, metadata !DIExpression()), !dbg !1859, !psr.id !2053
  %74 = zext i8 %.0 to i32, !dbg !2054, !psr.id !2055
  %75 = xor i32 %74, -1, !dbg !2056, !psr.id !2057
  %76 = trunc i32 %75 to i8, !dbg !2056, !psr.id !2058
  call void @llvm.dbg.value(metadata i8 %76, metadata !1881, metadata !DIExpression()), !dbg !1859, !psr.id !2059
  %77 = add i64 %.03, 1, !dbg !2060, !psr.id !2061
  call void @llvm.dbg.value(metadata i64 %77, metadata !1875, metadata !DIExpression()), !dbg !1859, !psr.id !2062
  br label %8, !dbg !1883, !llvm.loop !1982, !psr.id !2063

78:                                               ; preds = %57, %46, %8
  %.02 = phi i32 [ 0, %46 ], [ -1, %57 ], [ 0, %8 ], !dbg !1859, !psr.id !2064
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1877, metadata !DIExpression()), !dbg !1859, !psr.id !2065
  %79 = zext i8 %.0 to i32, !dbg !2066, !psr.id !2068
  %80 = icmp ne i32 %79, 0, !dbg !2069, !psr.id !2070
  br i1 %80, label %81, label %83, !dbg !2071, !psr.id !2072

81:                                               ; preds = %78
  %82 = add i64 %.03, -1, !dbg !2073, !psr.id !2075
  call void @llvm.dbg.value(metadata i64 %82, metadata !1875, metadata !DIExpression()), !dbg !1859, !psr.id !2076
  br label %83, !dbg !2077, !psr.id !2078

83:                                               ; preds = %81, %78
  %.14 = phi i64 [ %82, %81 ], [ %.03, %78 ], !dbg !1859, !psr.id !2079
  call void @llvm.dbg.value(metadata i64 %.14, metadata !1875, metadata !DIExpression()), !dbg !1859, !psr.id !2080
  %84 = icmp ne i8** %6, null, !dbg !2081, !psr.id !2083
  br i1 %84, label %85, label %87, !dbg !2084, !psr.id !2085

85:                                               ; preds = %83
  %86 = getelementptr inbounds i8, i8* %2, i64 %.14, !dbg !2086, !psr.id !2088
  store i8* %86, i8** %6, align 8, !dbg !2089, !psr.id !2090
  br label %87, !dbg !2091, !psr.id !2092

87:                                               ; preds = %85, %83
  %88 = icmp ne i64* %5, null, !dbg !2093, !psr.id !2095
  br i1 %88, label %89, label %90, !dbg !2096, !psr.id !2097

89:                                               ; preds = %87
  store i64 %.05, i64* %5, align 8, !dbg !2098, !psr.id !2100
  br label %90, !dbg !2101, !psr.id !2102

90:                                               ; preds = %89, %87
  ret i32 %.02, !dbg !2103, !psr.id !2104
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_sodium_alloc_init() #0 !dbg !2105 {
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* @canary, i64 0, i64 0, !psr.id !2106
  call void @randombytes_buf(i8* %1, i64 16), !dbg !2107, !psr.id !2108
  ret i32 0, !dbg !2109, !psr.id !2110
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mlock(i8* %0, i64 %1) #0 !dbg !2111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2112, metadata !DIExpression()), !dbg !2113, !psr.id !2114
  call void @llvm.dbg.value(metadata i64 %1, metadata !2115, metadata !DIExpression()), !dbg !2113, !psr.id !2116
  %3 = call i32* @__errno_location() #9, !dbg !2117, !psr.id !2118
  store i32 38, i32* %3, align 4, !dbg !2119, !psr.id !2120
  ret i32 -1, !dbg !2121, !psr.id !2122
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_munlock(i8* %0, i64 %1) #0 !dbg !2123 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2124, metadata !DIExpression()), !dbg !2125, !psr.id !2126
  call void @llvm.dbg.value(metadata i64 %1, metadata !2127, metadata !DIExpression()), !dbg !2125, !psr.id !2128
  call void @sodium_memzero(i8* %0, i64 %1), !dbg !2129, !psr.id !2130
  %3 = call i32* @__errno_location() #9, !dbg !2131, !psr.id !2132
  store i32 38, i32* %3, align 4, !dbg !2133, !psr.id !2134
  ret i32 -1, !dbg !2135, !psr.id !2136
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_malloc(i64 %0) #0 !dbg !2137 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2140, metadata !DIExpression()), !dbg !2141, !psr.id !2142
  %2 = call noalias i8* @_sodium_malloc(i64 %0), !dbg !2143, !psr.id !2145
  call void @llvm.dbg.value(metadata i8* %2, metadata !2146, metadata !DIExpression()), !dbg !2141, !psr.id !2147
  %3 = icmp eq i8* %2, null, !dbg !2148, !psr.id !2149
  br i1 %3, label %4, label %5, !dbg !2150, !psr.id !2151

4:                                                ; preds = %1
  br label %6, !dbg !2152, !psr.id !2154

5:                                                ; preds = %1
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 -48, i64 %0, i1 false), !dbg !2155, !psr.id !2156
  br label %6, !dbg !2157, !psr.id !2158

6:                                                ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %2, %5 ], !dbg !2141, !psr.id !2159
  ret i8* %.0, !dbg !2160, !psr.id !2161
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @_sodium_malloc(i64 %0) #0 !dbg !2162 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2163, metadata !DIExpression()), !dbg !2164, !psr.id !2165
  %2 = call noalias i8* @malloc(i64 %0) #10, !dbg !2166, !psr.id !2167
  ret i8* %2, !dbg !2168, !psr.id !2169
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @sodium_allocarray(i64 %0, i64 %1) #0 !dbg !2170 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2173, metadata !DIExpression()), !dbg !2174, !psr.id !2175
  call void @llvm.dbg.value(metadata i64 %1, metadata !2176, metadata !DIExpression()), !dbg !2174, !psr.id !2177
  %3 = icmp ugt i64 %0, 0, !dbg !2178, !psr.id !2180
  br i1 %3, label %4, label %9, !dbg !2181, !psr.id !2182

4:                                                ; preds = %2
  %5 = udiv i64 -1, %0, !dbg !2183, !psr.id !2184
  %6 = icmp uge i64 %1, %5, !dbg !2185, !psr.id !2186
  br i1 %6, label %7, label %9, !dbg !2187, !psr.id !2188

7:                                                ; preds = %4
  %8 = call i32* @__errno_location() #9, !dbg !2189, !psr.id !2191
  store i32 12, i32* %8, align 4, !dbg !2192, !psr.id !2193
  br label %12, !dbg !2194, !psr.id !2195

9:                                                ; preds = %4, %2
  %10 = mul i64 %0, %1, !dbg !2196, !psr.id !2197
  call void @llvm.dbg.value(metadata i64 %10, metadata !2198, metadata !DIExpression()), !dbg !2174, !psr.id !2199
  %11 = call noalias i8* @sodium_malloc(i64 %10), !dbg !2200, !psr.id !2201
  br label %12, !dbg !2202, !psr.id !2203

12:                                               ; preds = %9, %7
  %.0 = phi i8* [ null, %7 ], [ %11, %9 ], !dbg !2174, !psr.id !2204
  ret i8* %.0, !dbg !2205, !psr.id !2206
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sodium_free(i8* %0) #0 !dbg !2207 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2210, metadata !DIExpression()), !dbg !2211, !psr.id !2212
  call void @free(i8* %0) #10, !dbg !2213, !psr.id !2214
  ret void, !dbg !2215, !psr.id !2216
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_noaccess(i8* %0) #0 !dbg !2217 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2220, metadata !DIExpression()), !dbg !2221, !psr.id !2222
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_noaccess), !dbg !2223, !psr.id !2224
  ret i32 %2, !dbg !2225, !psr.id !2226
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_noaccess(i8* %0, i64 %1) #0 !dbg !2227 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2230, metadata !DIExpression()), !dbg !2231, !psr.id !2232
  call void @llvm.dbg.value(metadata i64 %1, metadata !2233, metadata !DIExpression()), !dbg !2231, !psr.id !2234
  %3 = call i32* @__errno_location() #9, !dbg !2235, !psr.id !2236
  store i32 38, i32* %3, align 4, !dbg !2237, !psr.id !2238
  ret i32 -1, !dbg !2239, !psr.id !2240
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* %1) #0 !dbg !2241 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2245, metadata !DIExpression()), !dbg !2246, !psr.id !2247
  call void @llvm.dbg.value(metadata i32 (i8*, i64)* %1, metadata !2248, metadata !DIExpression()), !dbg !2246, !psr.id !2249
  %3 = call i32* @__errno_location() #9, !dbg !2250, !psr.id !2251
  store i32 38, i32* %3, align 4, !dbg !2252, !psr.id !2253
  ret i32 -1, !dbg !2254, !psr.id !2255
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readonly(i8* %0) #0 !dbg !2256 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2257, metadata !DIExpression()), !dbg !2258, !psr.id !2259
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readonly), !dbg !2260, !psr.id !2261
  ret i32 %2, !dbg !2262, !psr.id !2263
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readonly(i8* %0, i64 %1) #0 !dbg !2264 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2265, metadata !DIExpression()), !dbg !2266, !psr.id !2267
  call void @llvm.dbg.value(metadata i64 %1, metadata !2268, metadata !DIExpression()), !dbg !2266, !psr.id !2269
  %3 = call i32* @__errno_location() #9, !dbg !2270, !psr.id !2271
  store i32 38, i32* %3, align 4, !dbg !2272, !psr.id !2273
  ret i32 -1, !dbg !2274, !psr.id !2275
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sodium_mprotect_readwrite(i8* %0) #0 !dbg !2276 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2277, metadata !DIExpression()), !dbg !2278, !psr.id !2279
  %2 = call i32 @_sodium_mprotect(i8* %0, i32 (i8*, i64)* @_mprotect_readwrite), !dbg !2280, !psr.id !2281
  ret i32 %2, !dbg !2282, !psr.id !2283
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_mprotect_readwrite(i8* %0, i64 %1) #0 !dbg !2284 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2285, metadata !DIExpression()), !dbg !2286, !psr.id !2287
  call void @llvm.dbg.value(metadata i64 %1, metadata !2288, metadata !DIExpression()), !dbg !2286, !psr.id !2289
  %3 = call i32* @__errno_location() #9, !dbg !2290, !psr.id !2291
  store i32 38, i32* %3, align 4, !dbg !2292, !psr.id !2293
  ret i32 -1, !dbg !2294, !psr.id !2295
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @crypto_core_salsa20_wrapper_t()
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

!llvm.dbg.cu = !{!118, !120, !124, !2, !59, !106}
!llvm.ident = !{!126, !126, !126, !126, !126, !126}
!llvm.module.flags = !{!127, !128, !129}

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
!53 = !{!"0"}
!54 = !{!"1"}
!55 = !{!"2"}
!56 = !{!"3"}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "randombytes_sysrandom_implementation", scope: !59, file: !60, line: 297, type: !83, isLocal: false, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !61, globals: !68, splitDebugInlining: false, nameTableKind: None)
!60 = !DIFile(filename: "../libsodium/src/libsodium/randombytes/sysrandom/randombytes_sysrandom.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!61 = !{!62, !6, !66, !12, !52}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !63, line: 108, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !10, line: 193, baseType: !65)
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !{!57, !69, !77}
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "stream", scope: !59, file: !60, line: 69, type: !71, isLocal: true, isDefinition: true)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysRandom", file: !60, line: 67, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SysRandom_", file: !60, line: 63, size: 96, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "random_data_source_fd", scope: !72, file: !60, line: 64, baseType: !52, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !72, file: !60, line: 65, baseType: !52, size: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "getrandom_available", scope: !72, file: !60, line: 66, baseType: !52, size: 32, offset: 64)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "devices", scope: !79, file: !60, line: 106, type: !80, isLocal: true, isDefinition: true)
!79 = distinct !DISubprogram(name: "randombytes_sysrandom_random_dev_open", scope: !60, file: !60, line: 102, type: !50, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 192, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "randombytes_implementation", file: !19, line: 19, size: 384, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "implementation_name", scope: !83, file: !19, line: 20, baseType: !23, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !83, file: !19, line: 21, baseType: !30, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "stir", scope: !83, file: !19, line: 22, baseType: !34, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "uniform", scope: !83, file: !19, line: 23, baseType: !38, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !83, file: !19, line: 24, baseType: !43, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !83, file: !19, line: 25, baseType: !49, size: 64, offset: 320)
!91 = !{!"4"}
!92 = !{!"5"}
!93 = !{!"6"}
!94 = !{!"7"}
!95 = !{!"8"}
!96 = !{!"9"}
!97 = !{!"10"}
!98 = !{!"11"}
!99 = !{!"12"}
!100 = !{!"13"}
!101 = !{!"14"}
!102 = !{!"15"}
!103 = !{!"16"}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "canary", scope: !106, file: !107, line: 46, type: !114, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !108, globals: !113, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../libsodium/src/libsodium/sodium/utils.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!108 = !{!109, !12, !111, !67, !52, !28, !6}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!113 = !{!104}
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 128, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 16)
!117 = !{!"17"}
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../libsodium/src/libsodium/crypto_core/salsa20/core_salsa20_api.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !122, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../libsodium/src/libsodium/crypto_core/salsa20/ref/core_salsa20.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !121, line: 11, baseType: !11)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "crypto_core_salsa20.c", directory: "/home/luwei/bech-back/libsodium/Salsa20")
!126 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!127 = !{i32 7, !"Dwarf Version", i32 4}
!128 = !{i32 2, !"Debug Info Version", i32 3}
!129 = !{i32 1, !"wchar_size", i32 4}
!130 = distinct !DISubprogram(name: "crypto_core_salsa20_outputbytes", scope: !119, file: !119, line: 4, type: !131, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !4)
!131 = !DISubroutineType(types: !132)
!132 = !{!12}
!133 = !DILocation(line: 5, column: 5, scope: !130)
!134 = !{!"18"}
!135 = distinct !DISubprogram(name: "crypto_core_salsa20_inputbytes", scope: !119, file: !119, line: 9, type: !131, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !4)
!136 = !DILocation(line: 10, column: 5, scope: !135)
!137 = !{!"19"}
!138 = distinct !DISubprogram(name: "crypto_core_salsa20_keybytes", scope: !119, file: !119, line: 14, type: !131, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !4)
!139 = !DILocation(line: 15, column: 5, scope: !138)
!140 = !{!"20"}
!141 = distinct !DISubprogram(name: "crypto_core_salsa20_constbytes", scope: !119, file: !119, line: 19, type: !131, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !4)
!142 = !DILocation(line: 20, column: 5, scope: !141)
!143 = !{!"21"}
!144 = distinct !DISubprogram(name: "crypto_core_salsa20", scope: !121, file: !121, line: 36, type: !145, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120, retainedNodes: !4)
!145 = !DISubroutineType(types: !146)
!146 = !{!52, !66, !111, !111, !111}
!147 = !DILocalVariable(name: "out", arg: 1, scope: !144, file: !121, line: 37, type: !66)
!148 = !DILocation(line: 0, scope: !144)
!149 = !{!"22"}
!150 = !DILocalVariable(name: "in", arg: 2, scope: !144, file: !121, line: 38, type: !111)
!151 = !{!"23"}
!152 = !DILocalVariable(name: "k", arg: 3, scope: !144, file: !121, line: 39, type: !111)
!153 = !{!"24"}
!154 = !DILocalVariable(name: "c", arg: 4, scope: !144, file: !121, line: 40, type: !111)
!155 = !{!"25"}
!156 = !DILocation(line: 47, column: 33, scope: !144)
!157 = !{!"26"}
!158 = !{!"PointTainted"}
!159 = !DILocation(line: 47, column: 13, scope: !144)
!160 = !{!"27"}
!161 = !{!"ValueTainted"}
!162 = !DILocalVariable(name: "x0", scope: !144, file: !121, line: 43, type: !123)
!163 = !{!"28"}
!164 = !DILocalVariable(name: "j0", scope: !144, file: !121, line: 44, type: !123)
!165 = !{!"29"}
!166 = !DILocation(line: 48, column: 33, scope: !144)
!167 = !{!"30"}
!168 = !DILocation(line: 48, column: 13, scope: !144)
!169 = !{!"31"}
!170 = !DILocalVariable(name: "x1", scope: !144, file: !121, line: 43, type: !123)
!171 = !{!"32"}
!172 = !DILocalVariable(name: "j1", scope: !144, file: !121, line: 44, type: !123)
!173 = !{!"33"}
!174 = !DILocation(line: 49, column: 33, scope: !144)
!175 = !{!"34"}
!176 = !DILocation(line: 49, column: 13, scope: !144)
!177 = !{!"35"}
!178 = !DILocalVariable(name: "x2", scope: !144, file: !121, line: 43, type: !123)
!179 = !{!"36"}
!180 = !DILocalVariable(name: "j2", scope: !144, file: !121, line: 44, type: !123)
!181 = !{!"37"}
!182 = !DILocation(line: 50, column: 33, scope: !144)
!183 = !{!"38"}
!184 = !DILocation(line: 50, column: 13, scope: !144)
!185 = !{!"39"}
!186 = !DILocalVariable(name: "x3", scope: !144, file: !121, line: 43, type: !123)
!187 = !{!"40"}
!188 = !DILocalVariable(name: "j3", scope: !144, file: !121, line: 44, type: !123)
!189 = !{!"41"}
!190 = !DILocation(line: 51, column: 33, scope: !144)
!191 = !{!"42"}
!192 = !DILocation(line: 51, column: 13, scope: !144)
!193 = !{!"43"}
!194 = !DILocalVariable(name: "x4", scope: !144, file: !121, line: 43, type: !123)
!195 = !{!"44"}
!196 = !DILocalVariable(name: "j4", scope: !144, file: !121, line: 44, type: !123)
!197 = !{!"45"}
!198 = !DILocation(line: 52, column: 33, scope: !144)
!199 = !{!"46"}
!200 = !DILocation(line: 52, column: 13, scope: !144)
!201 = !{!"47"}
!202 = !DILocalVariable(name: "x5", scope: !144, file: !121, line: 43, type: !123)
!203 = !{!"48"}
!204 = !DILocalVariable(name: "j5", scope: !144, file: !121, line: 44, type: !123)
!205 = !{!"49"}
!206 = !DILocation(line: 53, column: 34, scope: !144)
!207 = !{!"50"}
!208 = !DILocation(line: 53, column: 13, scope: !144)
!209 = !{!"51"}
!210 = !DILocalVariable(name: "x6", scope: !144, file: !121, line: 43, type: !123)
!211 = !{!"52"}
!212 = !DILocalVariable(name: "j6", scope: !144, file: !121, line: 44, type: !123)
!213 = !{!"53"}
!214 = !DILocation(line: 54, column: 34, scope: !144)
!215 = !{!"54"}
!216 = !DILocation(line: 54, column: 13, scope: !144)
!217 = !{!"55"}
!218 = !DILocalVariable(name: "x7", scope: !144, file: !121, line: 43, type: !123)
!219 = !{!"56"}
!220 = !DILocalVariable(name: "j7", scope: !144, file: !121, line: 44, type: !123)
!221 = !{!"57"}
!222 = !DILocation(line: 55, column: 34, scope: !144)
!223 = !{!"58"}
!224 = !DILocation(line: 55, column: 13, scope: !144)
!225 = !{!"59"}
!226 = !DILocalVariable(name: "x8", scope: !144, file: !121, line: 43, type: !123)
!227 = !{!"60"}
!228 = !DILocalVariable(name: "j8", scope: !144, file: !121, line: 44, type: !123)
!229 = !{!"61"}
!230 = !DILocation(line: 56, column: 34, scope: !144)
!231 = !{!"62"}
!232 = !DILocation(line: 56, column: 13, scope: !144)
!233 = !{!"63"}
!234 = !DILocalVariable(name: "x9", scope: !144, file: !121, line: 43, type: !123)
!235 = !{!"64"}
!236 = !DILocalVariable(name: "j9", scope: !144, file: !121, line: 44, type: !123)
!237 = !{!"65"}
!238 = !DILocation(line: 57, column: 35, scope: !144)
!239 = !{!"66"}
!240 = !DILocation(line: 57, column: 15, scope: !144)
!241 = !{!"67"}
!242 = !DILocalVariable(name: "x10", scope: !144, file: !121, line: 43, type: !123)
!243 = !{!"68"}
!244 = !DILocalVariable(name: "j10", scope: !144, file: !121, line: 44, type: !123)
!245 = !{!"69"}
!246 = !DILocation(line: 58, column: 35, scope: !144)
!247 = !{!"70"}
!248 = !DILocation(line: 58, column: 15, scope: !144)
!249 = !{!"71"}
!250 = !DILocalVariable(name: "x11", scope: !144, file: !121, line: 43, type: !123)
!251 = !{!"72"}
!252 = !DILocalVariable(name: "j11", scope: !144, file: !121, line: 44, type: !123)
!253 = !{!"73"}
!254 = !DILocation(line: 59, column: 35, scope: !144)
!255 = !{!"74"}
!256 = !DILocation(line: 59, column: 15, scope: !144)
!257 = !{!"75"}
!258 = !DILocalVariable(name: "x12", scope: !144, file: !121, line: 43, type: !123)
!259 = !{!"76"}
!260 = !DILocalVariable(name: "j12", scope: !144, file: !121, line: 44, type: !123)
!261 = !{!"77"}
!262 = !DILocation(line: 60, column: 35, scope: !144)
!263 = !{!"78"}
!264 = !DILocation(line: 60, column: 15, scope: !144)
!265 = !{!"79"}
!266 = !DILocalVariable(name: "x13", scope: !144, file: !121, line: 43, type: !123)
!267 = !{!"80"}
!268 = !DILocalVariable(name: "j13", scope: !144, file: !121, line: 44, type: !123)
!269 = !{!"81"}
!270 = !DILocation(line: 61, column: 35, scope: !144)
!271 = !{!"82"}
!272 = !DILocation(line: 61, column: 15, scope: !144)
!273 = !{!"83"}
!274 = !DILocalVariable(name: "x14", scope: !144, file: !121, line: 43, type: !123)
!275 = !{!"84"}
!276 = !DILocalVariable(name: "j14", scope: !144, file: !121, line: 44, type: !123)
!277 = !{!"85"}
!278 = !DILocation(line: 62, column: 35, scope: !144)
!279 = !{!"86"}
!280 = !DILocation(line: 62, column: 15, scope: !144)
!281 = !{!"87"}
!282 = !DILocalVariable(name: "x15", scope: !144, file: !121, line: 43, type: !123)
!283 = !{!"88"}
!284 = !DILocalVariable(name: "j15", scope: !144, file: !121, line: 44, type: !123)
!285 = !{!"89"}
!286 = !DILocalVariable(name: "i", scope: !144, file: !121, line: 45, type: !52)
!287 = !{!"90"}
!288 = !DILocation(line: 64, column: 8, scope: !289)
!289 = distinct !DILexicalBlock(scope: !144, file: !121, line: 64, column: 3)
!290 = !{!"91"}
!291 = !{!"92"}
!292 = !{!"93"}
!293 = !{!"94"}
!294 = !{!"95"}
!295 = !{!"96"}
!296 = !{!"97"}
!297 = !{!"98"}
!298 = !{!"99"}
!299 = !{!"100"}
!300 = !{!"101"}
!301 = !{!"102"}
!302 = !{!"103"}
!303 = !{!"104"}
!304 = !{!"105"}
!305 = !{!"106"}
!306 = !{!"107"}
!307 = !DILocation(line: 0, scope: !289)
!308 = !{!"108"}
!309 = !{!"109"}
!310 = !{!"110"}
!311 = !{!"111"}
!312 = !{!"112"}
!313 = !{!"113"}
!314 = !{!"114"}
!315 = !{!"115"}
!316 = !{!"116"}
!317 = !{!"117"}
!318 = !{!"118"}
!319 = !{!"119"}
!320 = !{!"120"}
!321 = !{!"121"}
!322 = !{!"122"}
!323 = !{!"123"}
!324 = !{!"124"}
!325 = !{!"125"}
!326 = !DILocation(line: 64, column: 21, scope: !327)
!327 = distinct !DILexicalBlock(scope: !289, file: !121, line: 64, column: 3)
!328 = !{!"126"}
!329 = !DILocation(line: 64, column: 3, scope: !289)
!330 = !{!"127"}
!331 = !DILocation(line: 65, column: 22, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !121, line: 64, column: 33)
!333 = !{!"128"}
!334 = !DILocation(line: 65, column: 12, scope: !332)
!335 = !{!"129"}
!336 = !DILocation(line: 65, column: 9, scope: !332)
!337 = !{!"130"}
!338 = !{!"131"}
!339 = !DILocation(line: 66, column: 22, scope: !332)
!340 = !{!"132"}
!341 = !DILocation(line: 66, column: 12, scope: !332)
!342 = !{!"133"}
!343 = !DILocation(line: 66, column: 9, scope: !332)
!344 = !{!"134"}
!345 = !{!"135"}
!346 = !DILocation(line: 67, column: 22, scope: !332)
!347 = !{!"136"}
!348 = !DILocation(line: 67, column: 12, scope: !332)
!349 = !{!"137"}
!350 = !DILocation(line: 67, column: 9, scope: !332)
!351 = !{!"138"}
!352 = !{!"139"}
!353 = !DILocation(line: 68, column: 22, scope: !332)
!354 = !{!"140"}
!355 = !DILocation(line: 68, column: 12, scope: !332)
!356 = !{!"141"}
!357 = !DILocation(line: 68, column: 9, scope: !332)
!358 = !{!"142"}
!359 = !{!"143"}
!360 = !DILocation(line: 69, column: 22, scope: !332)
!361 = !{!"144"}
!362 = !DILocation(line: 69, column: 12, scope: !332)
!363 = !{!"145"}
!364 = !DILocation(line: 69, column: 9, scope: !332)
!365 = !{!"146"}
!366 = !{!"147"}
!367 = !DILocation(line: 70, column: 22, scope: !332)
!368 = !{!"148"}
!369 = !DILocation(line: 70, column: 12, scope: !332)
!370 = !{!"149"}
!371 = !DILocation(line: 70, column: 9, scope: !332)
!372 = !{!"150"}
!373 = !{!"151"}
!374 = !DILocation(line: 71, column: 22, scope: !332)
!375 = !{!"152"}
!376 = !DILocation(line: 71, column: 12, scope: !332)
!377 = !{!"153"}
!378 = !DILocation(line: 71, column: 9, scope: !332)
!379 = !{!"154"}
!380 = !{!"155"}
!381 = !DILocation(line: 72, column: 22, scope: !332)
!382 = !{!"156"}
!383 = !DILocation(line: 72, column: 12, scope: !332)
!384 = !{!"157"}
!385 = !DILocation(line: 72, column: 9, scope: !332)
!386 = !{!"158"}
!387 = !{!"159"}
!388 = !DILocation(line: 73, column: 22, scope: !332)
!389 = !{!"160"}
!390 = !DILocation(line: 73, column: 12, scope: !332)
!391 = !{!"161"}
!392 = !DILocation(line: 73, column: 9, scope: !332)
!393 = !{!"162"}
!394 = !{!"163"}
!395 = !DILocation(line: 74, column: 22, scope: !332)
!396 = !{!"164"}
!397 = !DILocation(line: 74, column: 12, scope: !332)
!398 = !{!"165"}
!399 = !DILocation(line: 74, column: 9, scope: !332)
!400 = !{!"166"}
!401 = !{!"167"}
!402 = !DILocation(line: 75, column: 22, scope: !332)
!403 = !{!"168"}
!404 = !DILocation(line: 75, column: 12, scope: !332)
!405 = !{!"169"}
!406 = !DILocation(line: 75, column: 9, scope: !332)
!407 = !{!"170"}
!408 = !{!"171"}
!409 = !DILocation(line: 76, column: 22, scope: !332)
!410 = !{!"172"}
!411 = !DILocation(line: 76, column: 12, scope: !332)
!412 = !{!"173"}
!413 = !DILocation(line: 76, column: 9, scope: !332)
!414 = !{!"174"}
!415 = !{!"175"}
!416 = !DILocation(line: 77, column: 22, scope: !332)
!417 = !{!"176"}
!418 = !DILocation(line: 77, column: 12, scope: !332)
!419 = !{!"177"}
!420 = !DILocation(line: 77, column: 9, scope: !332)
!421 = !{!"178"}
!422 = !{!"179"}
!423 = !DILocation(line: 78, column: 22, scope: !332)
!424 = !{!"180"}
!425 = !DILocation(line: 78, column: 12, scope: !332)
!426 = !{!"181"}
!427 = !DILocation(line: 78, column: 9, scope: !332)
!428 = !{!"182"}
!429 = !{!"183"}
!430 = !DILocation(line: 79, column: 22, scope: !332)
!431 = !{!"184"}
!432 = !DILocation(line: 79, column: 12, scope: !332)
!433 = !{!"185"}
!434 = !DILocation(line: 79, column: 9, scope: !332)
!435 = !{!"186"}
!436 = !{!"187"}
!437 = !DILocation(line: 80, column: 22, scope: !332)
!438 = !{!"188"}
!439 = !DILocation(line: 80, column: 12, scope: !332)
!440 = !{!"189"}
!441 = !DILocation(line: 80, column: 9, scope: !332)
!442 = !{!"190"}
!443 = !{!"191"}
!444 = !DILocation(line: 81, column: 22, scope: !332)
!445 = !{!"192"}
!446 = !DILocation(line: 81, column: 12, scope: !332)
!447 = !{!"193"}
!448 = !DILocation(line: 81, column: 9, scope: !332)
!449 = !{!"194"}
!450 = !{!"195"}
!451 = !DILocation(line: 82, column: 22, scope: !332)
!452 = !{!"196"}
!453 = !DILocation(line: 82, column: 12, scope: !332)
!454 = !{!"197"}
!455 = !DILocation(line: 82, column: 9, scope: !332)
!456 = !{!"198"}
!457 = !{!"199"}
!458 = !DILocation(line: 83, column: 22, scope: !332)
!459 = !{!"200"}
!460 = !DILocation(line: 83, column: 12, scope: !332)
!461 = !{!"201"}
!462 = !DILocation(line: 83, column: 9, scope: !332)
!463 = !{!"202"}
!464 = !{!"203"}
!465 = !DILocation(line: 84, column: 22, scope: !332)
!466 = !{!"204"}
!467 = !DILocation(line: 84, column: 12, scope: !332)
!468 = !{!"205"}
!469 = !DILocation(line: 84, column: 9, scope: !332)
!470 = !{!"206"}
!471 = !{!"207"}
!472 = !DILocation(line: 85, column: 22, scope: !332)
!473 = !{!"208"}
!474 = !DILocation(line: 85, column: 12, scope: !332)
!475 = !{!"209"}
!476 = !DILocation(line: 85, column: 9, scope: !332)
!477 = !{!"210"}
!478 = !{!"211"}
!479 = !DILocation(line: 86, column: 22, scope: !332)
!480 = !{!"212"}
!481 = !DILocation(line: 86, column: 12, scope: !332)
!482 = !{!"213"}
!483 = !DILocation(line: 86, column: 9, scope: !332)
!484 = !{!"214"}
!485 = !{!"215"}
!486 = !DILocation(line: 87, column: 22, scope: !332)
!487 = !{!"216"}
!488 = !DILocation(line: 87, column: 12, scope: !332)
!489 = !{!"217"}
!490 = !DILocation(line: 87, column: 9, scope: !332)
!491 = !{!"218"}
!492 = !{!"219"}
!493 = !DILocation(line: 88, column: 22, scope: !332)
!494 = !{!"220"}
!495 = !DILocation(line: 88, column: 12, scope: !332)
!496 = !{!"221"}
!497 = !DILocation(line: 88, column: 9, scope: !332)
!498 = !{!"222"}
!499 = !{!"223"}
!500 = !DILocation(line: 89, column: 22, scope: !332)
!501 = !{!"224"}
!502 = !DILocation(line: 89, column: 12, scope: !332)
!503 = !{!"225"}
!504 = !DILocation(line: 89, column: 9, scope: !332)
!505 = !{!"226"}
!506 = !{!"227"}
!507 = !DILocation(line: 90, column: 22, scope: !332)
!508 = !{!"228"}
!509 = !DILocation(line: 90, column: 12, scope: !332)
!510 = !{!"229"}
!511 = !DILocation(line: 90, column: 9, scope: !332)
!512 = !{!"230"}
!513 = !{!"231"}
!514 = !DILocation(line: 91, column: 22, scope: !332)
!515 = !{!"232"}
!516 = !DILocation(line: 91, column: 12, scope: !332)
!517 = !{!"233"}
!518 = !DILocation(line: 91, column: 9, scope: !332)
!519 = !{!"234"}
!520 = !{!"235"}
!521 = !DILocation(line: 92, column: 22, scope: !332)
!522 = !{!"236"}
!523 = !DILocation(line: 92, column: 12, scope: !332)
!524 = !{!"237"}
!525 = !DILocation(line: 92, column: 9, scope: !332)
!526 = !{!"238"}
!527 = !{!"239"}
!528 = !DILocation(line: 93, column: 22, scope: !332)
!529 = !{!"240"}
!530 = !DILocation(line: 93, column: 12, scope: !332)
!531 = !{!"241"}
!532 = !DILocation(line: 93, column: 9, scope: !332)
!533 = !{!"242"}
!534 = !{!"243"}
!535 = !DILocation(line: 94, column: 22, scope: !332)
!536 = !{!"244"}
!537 = !DILocation(line: 94, column: 12, scope: !332)
!538 = !{!"245"}
!539 = !DILocation(line: 94, column: 9, scope: !332)
!540 = !{!"246"}
!541 = !{!"247"}
!542 = !DILocation(line: 95, column: 22, scope: !332)
!543 = !{!"248"}
!544 = !DILocation(line: 95, column: 12, scope: !332)
!545 = !{!"249"}
!546 = !DILocation(line: 95, column: 9, scope: !332)
!547 = !{!"250"}
!548 = !{!"251"}
!549 = !DILocation(line: 96, column: 22, scope: !332)
!550 = !{!"252"}
!551 = !DILocation(line: 96, column: 12, scope: !332)
!552 = !{!"253"}
!553 = !DILocation(line: 96, column: 9, scope: !332)
!554 = !{!"254"}
!555 = !{!"255"}
!556 = !DILocation(line: 97, column: 3, scope: !332)
!557 = !{!"256"}
!558 = !DILocation(line: 64, column: 27, scope: !327)
!559 = !{!"257"}
!560 = !{!"258"}
!561 = !DILocation(line: 64, column: 3, scope: !327)
!562 = distinct !{!562, !329, !563, !564}
!563 = !DILocation(line: 97, column: 3, scope: !289)
!564 = !{!"llvm.loop.mustprogress"}
!565 = !{!"259"}
!566 = !DILocation(line: 99, column: 6, scope: !144)
!567 = !{!"260"}
!568 = !{!"261"}
!569 = !DILocation(line: 100, column: 6, scope: !144)
!570 = !{!"262"}
!571 = !{!"263"}
!572 = !DILocation(line: 101, column: 6, scope: !144)
!573 = !{!"264"}
!574 = !{!"265"}
!575 = !DILocation(line: 102, column: 6, scope: !144)
!576 = !{!"266"}
!577 = !{!"267"}
!578 = !DILocation(line: 103, column: 6, scope: !144)
!579 = !{!"268"}
!580 = !{!"269"}
!581 = !DILocation(line: 104, column: 6, scope: !144)
!582 = !{!"270"}
!583 = !{!"271"}
!584 = !DILocation(line: 105, column: 6, scope: !144)
!585 = !{!"272"}
!586 = !{!"273"}
!587 = !DILocation(line: 106, column: 6, scope: !144)
!588 = !{!"274"}
!589 = !{!"275"}
!590 = !DILocation(line: 107, column: 6, scope: !144)
!591 = !{!"276"}
!592 = !{!"277"}
!593 = !DILocation(line: 108, column: 6, scope: !144)
!594 = !{!"278"}
!595 = !{!"279"}
!596 = !DILocation(line: 109, column: 7, scope: !144)
!597 = !{!"280"}
!598 = !{!"281"}
!599 = !DILocation(line: 110, column: 7, scope: !144)
!600 = !{!"282"}
!601 = !{!"283"}
!602 = !DILocation(line: 111, column: 7, scope: !144)
!603 = !{!"284"}
!604 = !{!"285"}
!605 = !DILocation(line: 112, column: 7, scope: !144)
!606 = !{!"286"}
!607 = !{!"287"}
!608 = !DILocation(line: 113, column: 7, scope: !144)
!609 = !{!"288"}
!610 = !{!"289"}
!611 = !DILocation(line: 114, column: 7, scope: !144)
!612 = !{!"290"}
!613 = !{!"291"}
!614 = !DILocation(line: 116, column: 26, scope: !144)
!615 = !{!"292"}
!616 = !DILocation(line: 116, column: 3, scope: !144)
!617 = !{!"293"}
!618 = !DILocation(line: 117, column: 26, scope: !144)
!619 = !{!"294"}
!620 = !DILocation(line: 117, column: 3, scope: !144)
!621 = !{!"295"}
!622 = !DILocation(line: 118, column: 26, scope: !144)
!623 = !{!"296"}
!624 = !DILocation(line: 118, column: 3, scope: !144)
!625 = !{!"297"}
!626 = !DILocation(line: 119, column: 26, scope: !144)
!627 = !{!"298"}
!628 = !DILocation(line: 119, column: 3, scope: !144)
!629 = !{!"299"}
!630 = !DILocation(line: 120, column: 26, scope: !144)
!631 = !{!"300"}
!632 = !DILocation(line: 120, column: 3, scope: !144)
!633 = !{!"301"}
!634 = !DILocation(line: 121, column: 26, scope: !144)
!635 = !{!"302"}
!636 = !DILocation(line: 121, column: 3, scope: !144)
!637 = !{!"303"}
!638 = !DILocation(line: 122, column: 26, scope: !144)
!639 = !{!"304"}
!640 = !DILocation(line: 122, column: 3, scope: !144)
!641 = !{!"305"}
!642 = !DILocation(line: 123, column: 26, scope: !144)
!643 = !{!"306"}
!644 = !DILocation(line: 123, column: 3, scope: !144)
!645 = !{!"307"}
!646 = !DILocation(line: 124, column: 26, scope: !144)
!647 = !{!"308"}
!648 = !DILocation(line: 124, column: 3, scope: !144)
!649 = !{!"309"}
!650 = !DILocation(line: 125, column: 26, scope: !144)
!651 = !{!"310"}
!652 = !DILocation(line: 125, column: 3, scope: !144)
!653 = !{!"311"}
!654 = !DILocation(line: 126, column: 26, scope: !144)
!655 = !{!"312"}
!656 = !DILocation(line: 126, column: 3, scope: !144)
!657 = !{!"313"}
!658 = !DILocation(line: 127, column: 26, scope: !144)
!659 = !{!"314"}
!660 = !DILocation(line: 127, column: 3, scope: !144)
!661 = !{!"315"}
!662 = !DILocation(line: 128, column: 26, scope: !144)
!663 = !{!"316"}
!664 = !DILocation(line: 128, column: 3, scope: !144)
!665 = !{!"317"}
!666 = !DILocation(line: 129, column: 26, scope: !144)
!667 = !{!"318"}
!668 = !DILocation(line: 129, column: 3, scope: !144)
!669 = !{!"319"}
!670 = !DILocation(line: 130, column: 26, scope: !144)
!671 = !{!"320"}
!672 = !DILocation(line: 130, column: 3, scope: !144)
!673 = !{!"321"}
!674 = !DILocation(line: 131, column: 26, scope: !144)
!675 = !{!"322"}
!676 = !DILocation(line: 131, column: 3, scope: !144)
!677 = !{!"323"}
!678 = !DILocation(line: 133, column: 3, scope: !144)
!679 = !{!"324"}
!680 = distinct !DISubprogram(name: "load_littleendian", scope: !121, file: !121, line: 18, type: !681, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !120, retainedNodes: !4)
!681 = !DISubroutineType(types: !682)
!682 = !{!123, !111}
!683 = !DILocalVariable(name: "x", arg: 1, scope: !680, file: !121, line: 18, type: !111)
!684 = !DILocation(line: 0, scope: !680)
!685 = !{!"325"}
!686 = !DILocation(line: 21, column: 17, scope: !680)
!687 = !{!"326"}
!688 = !{!"327"}
!689 = !DILocation(line: 21, column: 7, scope: !680)
!690 = !{!"328"}
!691 = !DILocation(line: 22, column: 17, scope: !680)
!692 = !{!"329"}
!693 = !{!"330"}
!694 = !DILocation(line: 22, column: 7, scope: !680)
!695 = !{!"331"}
!696 = !DILocation(line: 22, column: 24, scope: !680)
!697 = !{!"332"}
!698 = !DILocation(line: 22, column: 3, scope: !680)
!699 = !{!"333"}
!700 = !DILocation(line: 23, column: 17, scope: !680)
!701 = !{!"334"}
!702 = !{!"335"}
!703 = !DILocation(line: 23, column: 7, scope: !680)
!704 = !{!"336"}
!705 = !DILocation(line: 23, column: 24, scope: !680)
!706 = !{!"337"}
!707 = !DILocation(line: 23, column: 3, scope: !680)
!708 = !{!"338"}
!709 = !DILocation(line: 24, column: 17, scope: !680)
!710 = !{!"339"}
!711 = !{!"340"}
!712 = !DILocation(line: 24, column: 7, scope: !680)
!713 = !{!"341"}
!714 = !DILocation(line: 24, column: 24, scope: !680)
!715 = !{!"342"}
!716 = !DILocation(line: 24, column: 3, scope: !680)
!717 = !{!"343"}
!718 = !DILocation(line: 20, column: 3, scope: !680)
!719 = !{!"344"}
!720 = distinct !DISubprogram(name: "rotate", scope: !121, file: !121, line: 13, type: !721, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !120, retainedNodes: !4)
!721 = !DISubroutineType(types: !722)
!722 = !{!123, !123, !52}
!723 = !DILocalVariable(name: "u", arg: 1, scope: !720, file: !121, line: 13, type: !123)
!724 = !DILocation(line: 0, scope: !720)
!725 = !{!"345"}
!726 = !DILocalVariable(name: "c", arg: 2, scope: !720, file: !121, line: 13, type: !52)
!727 = !{!"346"}
!728 = !DILocation(line: 15, column: 13, scope: !720)
!729 = !{!"347"}
!730 = !DILocation(line: 15, column: 31, scope: !720)
!731 = !{!"348"}
!732 = !DILocation(line: 15, column: 24, scope: !720)
!733 = !{!"349"}
!734 = !DILocation(line: 15, column: 19, scope: !720)
!735 = !{!"350"}
!736 = !DILocation(line: 15, column: 3, scope: !720)
!737 = !{!"351"}
!738 = distinct !DISubprogram(name: "store_littleendian", scope: !121, file: !121, line: 28, type: !739, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !120, retainedNodes: !4)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !66, !123}
!741 = !DILocalVariable(name: "x", arg: 1, scope: !738, file: !121, line: 28, type: !66)
!742 = !DILocation(line: 0, scope: !738)
!743 = !{!"352"}
!744 = !DILocalVariable(name: "u", arg: 2, scope: !738, file: !121, line: 28, type: !123)
!745 = !{!"353"}
!746 = !DILocation(line: 30, column: 10, scope: !738)
!747 = !{!"354"}
!748 = !DILocation(line: 30, column: 3, scope: !738)
!749 = !{!"355"}
!750 = !DILocation(line: 30, column: 8, scope: !738)
!751 = !{!"356"}
!752 = !DILocation(line: 30, column: 15, scope: !738)
!753 = !{!"357"}
!754 = !{!"358"}
!755 = !DILocation(line: 31, column: 10, scope: !738)
!756 = !{!"359"}
!757 = !DILocation(line: 31, column: 3, scope: !738)
!758 = !{!"360"}
!759 = !DILocation(line: 31, column: 8, scope: !738)
!760 = !{!"361"}
!761 = !DILocation(line: 31, column: 15, scope: !738)
!762 = !{!"362"}
!763 = !{!"363"}
!764 = !DILocation(line: 32, column: 10, scope: !738)
!765 = !{!"364"}
!766 = !DILocation(line: 32, column: 3, scope: !738)
!767 = !{!"365"}
!768 = !DILocation(line: 32, column: 8, scope: !738)
!769 = !{!"366"}
!770 = !DILocation(line: 32, column: 15, scope: !738)
!771 = !{!"367"}
!772 = !{!"368"}
!773 = !DILocation(line: 33, column: 10, scope: !738)
!774 = !{!"369"}
!775 = !DILocation(line: 33, column: 3, scope: !738)
!776 = !{!"370"}
!777 = !DILocation(line: 33, column: 8, scope: !738)
!778 = !{!"371"}
!779 = !DILocation(line: 34, column: 1, scope: !738)
!780 = !{!"372"}
!781 = distinct !DISubprogram(name: "crypto_core_salsa20_wrapper", scope: !125, file: !125, line: 5, type: !145, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !4)
!782 = !DILocalVariable(name: "out", arg: 1, scope: !781, file: !125, line: 5, type: !66)
!783 = !DILocation(line: 0, scope: !781)
!784 = !{!"373"}
!785 = !DILocalVariable(name: "in", arg: 2, scope: !781, file: !125, line: 5, type: !111)
!786 = !{!"374"}
!787 = !DILocalVariable(name: "k", arg: 3, scope: !781, file: !125, line: 6, type: !111)
!788 = !{!"375"}
!789 = !DILocalVariable(name: "c", arg: 4, scope: !781, file: !125, line: 6, type: !111)
!790 = !{!"376"}
!791 = !DILocation(line: 8, column: 13, scope: !781)
!792 = !{!"377"}
!793 = !DILocation(line: 8, column: 3, scope: !781)
!794 = !{!"378"}
!795 = !DILocation(line: 9, column: 13, scope: !781)
!796 = !{!"379"}
!797 = !DILocation(line: 9, column: 3, scope: !781)
!798 = !{!"380"}
!799 = !DILocation(line: 10, column: 13, scope: !781)
!800 = !{!"381"}
!801 = !DILocation(line: 10, column: 3, scope: !781)
!802 = !{!"382"}
!803 = !DILocation(line: 11, column: 13, scope: !781)
!804 = !{!"383"}
!805 = !DILocation(line: 11, column: 3, scope: !781)
!806 = !{!"384"}
!807 = !DILocation(line: 13, column: 10, scope: !781)
!808 = !{!"385"}
!809 = !DILocation(line: 13, column: 3, scope: !781)
!810 = !{!"386"}
!811 = distinct !DISubprogram(name: "crypto_core_salsa20_wrapper_t", scope: !125, file: !125, line: 21, type: !35, scopeLine: 22, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !4)
!812 = !{!"387"}
!813 = !{!"388"}
!814 = !{!"389"}
!815 = !{!"390"}
!816 = !DILocalVariable(name: "dout", scope: !811, file: !125, line: 23, type: !67)
!817 = !DILocation(line: 23, column: 17, scope: !811)
!818 = !{!"391"}
!819 = !DILocation(line: 23, column: 24, scope: !811)
!820 = !{!"392"}
!821 = !{!"393"}
!822 = !DILocalVariable(name: "din", scope: !811, file: !125, line: 24, type: !112)
!823 = !DILocation(line: 24, column: 24, scope: !811)
!824 = !{!"394"}
!825 = !DILocation(line: 24, column: 30, scope: !811)
!826 = !{!"395"}
!827 = !{!"396"}
!828 = !DILocalVariable(name: "dk", scope: !811, file: !125, line: 25, type: !112)
!829 = !DILocation(line: 25, column: 21, scope: !811)
!830 = !{!"397"}
!831 = !DILocation(line: 25, column: 26, scope: !811)
!832 = !{!"398"}
!833 = !{!"399"}
!834 = !DILocalVariable(name: "dc", scope: !811, file: !125, line: 26, type: !112)
!835 = !DILocation(line: 26, column: 22, scope: !811)
!836 = !{!"400"}
!837 = !DILocation(line: 26, column: 27, scope: !811)
!838 = !{!"401"}
!839 = !{!"402"}
!840 = !DILocalVariable(name: "out", scope: !811, file: !125, line: 27, type: !66)
!841 = !DILocation(line: 0, scope: !811)
!842 = !{!"403"}
!843 = !DILocalVariable(name: "in", scope: !811, file: !125, line: 28, type: !111)
!844 = !{!"404"}
!845 = !DILocalVariable(name: "k", scope: !811, file: !125, line: 29, type: !111)
!846 = !{!"405"}
!847 = !DILocalVariable(name: "c", scope: !811, file: !125, line: 30, type: !111)
!848 = !{!"406"}
!849 = !DILocation(line: 31, column: 3, scope: !811)
!850 = !{!"407"}
!851 = !DILocation(line: 32, column: 1, scope: !811)
!852 = !{!"408"}
!853 = distinct !DISubprogram(name: "randombytes_set_implementation", scope: !3, file: !3, line: 23, type: !854, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!854 = !DISubroutineType(types: !855)
!855 = !{!52, !856}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!857 = !DILocalVariable(name: "impl", arg: 1, scope: !853, file: !3, line: 23, type: !856)
!858 = !DILocation(line: 0, scope: !853)
!859 = !{!"409"}
!860 = !DILocation(line: 25, column: 20, scope: !853)
!861 = !{!"410"}
!862 = !DILocation(line: 27, column: 5, scope: !853)
!863 = !{!"411"}
!864 = distinct !DISubprogram(name: "randombytes_implementation_name", scope: !3, file: !3, line: 31, type: !24, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!865 = !DILocation(line: 34, column: 12, scope: !864)
!866 = !{!"412"}
!867 = !DILocation(line: 34, column: 28, scope: !864)
!868 = !{!"413"}
!869 = !{!"414"}
!870 = !{!"415"}
!871 = !DILocation(line: 34, column: 5, scope: !864)
!872 = !{!"416"}
!873 = distinct !DISubprogram(name: "randombytes_random", scope: !3, file: !3, line: 41, type: !31, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!874 = !DILocation(line: 44, column: 12, scope: !873)
!875 = !{!"417"}
!876 = !DILocation(line: 44, column: 28, scope: !873)
!877 = !{!"418"}
!878 = !{!"419"}
!879 = !{!"420"}
!880 = !DILocation(line: 44, column: 5, scope: !873)
!881 = !{!"421"}
!882 = distinct !DISubprogram(name: "randombytes_stir", scope: !3, file: !3, line: 53, type: !35, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!883 = !DILocation(line: 56, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !882, file: !3, line: 56, column: 9)
!885 = !{!"422"}
!886 = !DILocation(line: 56, column: 24, scope: !884)
!887 = !{!"423"}
!888 = !DILocation(line: 56, column: 32, scope: !884)
!889 = !{!"424"}
!890 = !DILocation(line: 56, column: 35, scope: !884)
!891 = !{!"425"}
!892 = !DILocation(line: 56, column: 51, scope: !884)
!893 = !{!"426"}
!894 = !{!"427"}
!895 = !DILocation(line: 56, column: 56, scope: !884)
!896 = !{!"428"}
!897 = !DILocation(line: 56, column: 9, scope: !882)
!898 = !{!"429"}
!899 = !DILocation(line: 57, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !884, file: !3, line: 56, column: 65)
!901 = !{!"430"}
!902 = !DILocation(line: 57, column: 25, scope: !900)
!903 = !{!"431"}
!904 = !{!"432"}
!905 = !{!"433"}
!906 = !DILocation(line: 58, column: 5, scope: !900)
!907 = !{!"434"}
!908 = !DILocation(line: 87, column: 1, scope: !882)
!909 = !{!"435"}
!910 = distinct !DISubprogram(name: "randombytes_uniform", scope: !3, file: !3, line: 94, type: !39, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!911 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !910, file: !3, line: 94, type: !41)
!912 = !DILocation(line: 0, scope: !910)
!913 = !{!"436"}
!914 = !DILocation(line: 99, column: 9, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 99, column: 9)
!916 = !{!"437"}
!917 = !DILocation(line: 99, column: 24, scope: !915)
!918 = !{!"438"}
!919 = !DILocation(line: 99, column: 32, scope: !915)
!920 = !{!"439"}
!921 = !DILocation(line: 99, column: 35, scope: !915)
!922 = !{!"440"}
!923 = !DILocation(line: 99, column: 51, scope: !915)
!924 = !{!"441"}
!925 = !{!"442"}
!926 = !DILocation(line: 99, column: 59, scope: !915)
!927 = !{!"443"}
!928 = !DILocation(line: 99, column: 9, scope: !910)
!929 = !{!"444"}
!930 = !DILocation(line: 100, column: 16, scope: !931)
!931 = distinct !DILexicalBlock(scope: !915, file: !3, line: 99, column: 68)
!932 = !{!"445"}
!933 = !DILocation(line: 100, column: 32, scope: !931)
!934 = !{!"446"}
!935 = !{!"447"}
!936 = !{!"448"}
!937 = !DILocation(line: 100, column: 9, scope: !931)
!938 = !{!"449"}
!939 = !DILocation(line: 102, column: 21, scope: !940)
!940 = distinct !DILexicalBlock(scope: !910, file: !3, line: 102, column: 9)
!941 = !{!"450"}
!942 = !DILocation(line: 102, column: 9, scope: !910)
!943 = !{!"451"}
!944 = !DILocation(line: 103, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !940, file: !3, line: 102, column: 26)
!946 = !{!"452"}
!947 = !DILocation(line: 105, column: 23, scope: !910)
!948 = !{!"453"}
!949 = !DILocation(line: 105, column: 36, scope: !910)
!950 = !{!"454"}
!951 = !DILocalVariable(name: "min", scope: !910, file: !3, line: 96, type: !7)
!952 = !{!"455"}
!953 = !DILocation(line: 106, column: 5, scope: !910)
!954 = !{!"456"}
!955 = !DILocation(line: 107, column: 13, scope: !956)
!956 = distinct !DILexicalBlock(scope: !910, file: !3, line: 106, column: 8)
!957 = !{!"457"}
!958 = !DILocalVariable(name: "r", scope: !910, file: !3, line: 97, type: !7)
!959 = !{!"458"}
!960 = !DILocation(line: 108, column: 5, scope: !956)
!961 = !{!"459"}
!962 = !DILocation(line: 108, column: 16, scope: !910)
!963 = !{!"460"}
!964 = distinct !{!964, !953, !965, !564}
!965 = !DILocation(line: 108, column: 21, scope: !910)
!966 = !{!"461"}
!967 = !DILocation(line: 110, column: 14, scope: !910)
!968 = !{!"462"}
!969 = !DILocation(line: 110, column: 5, scope: !910)
!970 = !{!"463"}
!971 = !{!"464"}
!972 = !DILocation(line: 111, column: 1, scope: !910)
!973 = !{!"465"}
!974 = distinct !DISubprogram(name: "randombytes_buf", scope: !3, file: !3, line: 114, type: !44, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!975 = !DILocalVariable(name: "buf", arg: 1, scope: !974, file: !3, line: 114, type: !46)
!976 = !DILocation(line: 0, scope: !974)
!977 = !{!"466"}
!978 = !DILocalVariable(name: "size", arg: 2, scope: !974, file: !3, line: 114, type: !47)
!979 = !{!"467"}
!980 = !DILocation(line: 117, column: 14, scope: !981)
!981 = distinct !DILexicalBlock(scope: !974, file: !3, line: 117, column: 9)
!982 = !{!"468"}
!983 = !DILocation(line: 117, column: 9, scope: !974)
!984 = !{!"469"}
!985 = !DILocation(line: 118, column: 9, scope: !986)
!986 = distinct !DILexicalBlock(scope: !981, file: !3, line: 117, column: 29)
!987 = !{!"470"}
!988 = !DILocation(line: 118, column: 25, scope: !986)
!989 = !{!"471"}
!990 = !{!"472"}
!991 = !{!"473"}
!992 = !DILocation(line: 119, column: 5, scope: !986)
!993 = !{!"474"}
!994 = !DILocation(line: 128, column: 1, scope: !974)
!995 = !{!"475"}
!996 = distinct !DISubprogram(name: "randombytes_close", scope: !3, file: !3, line: 131, type: !50, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!997 = !DILocation(line: 133, column: 9, scope: !998)
!998 = distinct !DILexicalBlock(scope: !996, file: !3, line: 133, column: 9)
!999 = !{!"476"}
!1000 = !DILocation(line: 133, column: 24, scope: !998)
!1001 = !{!"477"}
!1002 = !DILocation(line: 133, column: 32, scope: !998)
!1003 = !{!"478"}
!1004 = !DILocation(line: 133, column: 35, scope: !998)
!1005 = !{!"479"}
!1006 = !DILocation(line: 133, column: 51, scope: !998)
!1007 = !{!"480"}
!1008 = !{!"481"}
!1009 = !DILocation(line: 133, column: 57, scope: !998)
!1010 = !{!"482"}
!1011 = !DILocation(line: 133, column: 9, scope: !996)
!1012 = !{!"483"}
!1013 = !DILocation(line: 134, column: 16, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !998, file: !3, line: 133, column: 66)
!1015 = !{!"484"}
!1016 = !DILocation(line: 134, column: 32, scope: !1014)
!1017 = !{!"485"}
!1018 = !{!"486"}
!1019 = !{!"487"}
!1020 = !DILocation(line: 134, column: 9, scope: !1014)
!1021 = !{!"488"}
!1022 = !DILocation(line: 136, column: 5, scope: !996)
!1023 = !{!"489"}
!1024 = !DILocation(line: 0, scope: !996)
!1025 = !{!"490"}
!1026 = !DILocation(line: 137, column: 1, scope: !996)
!1027 = !{!"491"}
!1028 = distinct !DISubprogram(name: "randombytes", scope: !3, file: !3, line: 140, type: !1029, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1033)
!1033 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1034 = !DILocalVariable(name: "buf", arg: 1, scope: !1028, file: !3, line: 140, type: !1031)
!1035 = !DILocation(line: 0, scope: !1028)
!1036 = !{!"492"}
!1037 = !DILocalVariable(name: "buf_len", arg: 2, scope: !1028, file: !3, line: 140, type: !1032)
!1038 = !{!"493"}
!1039 = !DILocation(line: 142, column: 5, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 142, column: 5)
!1041 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 142, column: 5)
!1042 = !{!"494"}
!1043 = !DILocation(line: 142, column: 5, scope: !1041)
!1044 = !{!"495"}
!1045 = !{!"496"}
!1046 = !{!"497"}
!1047 = !{!"498"}
!1048 = !{!"499"}
!1049 = !{!"500"}
!1050 = !{!"501"}
!1051 = !DILocation(line: 143, column: 5, scope: !1028)
!1052 = !{!"502"}
!1053 = !DILocation(line: 144, column: 1, scope: !1028)
!1054 = !{!"503"}
!1055 = distinct !DISubprogram(name: "randombytes_sysrandom_implementation_name", scope: !60, file: !60, line: 292, type: !24, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!1056 = !{!"504"}
!1057 = !DILocation(line: 294, column: 5, scope: !1055)
!1058 = !{!"505"}
!1059 = distinct !DISubprogram(name: "randombytes_sysrandom", scope: !60, file: !60, line: 249, type: !31, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!1060 = !{!"506"}
!1061 = !DILocalVariable(name: "r", scope: !1059, file: !60, line: 251, type: !7)
!1062 = !DILocation(line: 251, column: 14, scope: !1059)
!1063 = !{!"507"}
!1064 = !DILocation(line: 253, column: 31, scope: !1059)
!1065 = !{!"508"}
!1066 = !DILocation(line: 253, column: 5, scope: !1059)
!1067 = !{!"509"}
!1068 = !DILocation(line: 255, column: 12, scope: !1059)
!1069 = !{!"510"}
!1070 = !DILocation(line: 255, column: 5, scope: !1059)
!1071 = !{!"511"}
!1072 = distinct !DISubprogram(name: "randombytes_sysrandom_stir", scope: !60, file: !60, line: 206, type: !35, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!1073 = !{!"512"}
!1074 = !DILocation(line: 208, column: 16, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !60, line: 208, column: 9)
!1076 = !{!"513"}
!1077 = !DILocation(line: 208, column: 28, scope: !1075)
!1078 = !{!"514"}
!1079 = !DILocation(line: 208, column: 9, scope: !1072)
!1080 = !{!"515"}
!1081 = !DILocation(line: 209, column: 9, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1075, file: !60, line: 208, column: 34)
!1083 = !{!"516"}
!1084 = !{!"517"}
!1085 = !DILocation(line: 210, column: 28, scope: !1082)
!1086 = !{!"518"}
!1087 = !DILocation(line: 211, column: 5, scope: !1082)
!1088 = !{!"519"}
!1089 = !DILocation(line: 212, column: 1, scope: !1072)
!1090 = !{!"520"}
!1091 = distinct !DISubprogram(name: "randombytes_sysrandom_buf", scope: !60, file: !60, line: 259, type: !44, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!1092 = !DILocalVariable(name: "buf", arg: 1, scope: !1091, file: !60, line: 259, type: !46)
!1093 = !DILocation(line: 0, scope: !1091)
!1094 = !{!"521"}
!1095 = !DILocalVariable(name: "size", arg: 2, scope: !1091, file: !60, line: 259, type: !47)
!1096 = !{!"522"}
!1097 = !DILocation(line: 261, column: 5, scope: !1091)
!1098 = !{!"523"}
!1099 = !{!"524"}
!1100 = !DILocation(line: 268, column: 16, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1091, file: !60, line: 268, column: 9)
!1102 = !{!"525"}
!1103 = !DILocation(line: 268, column: 36, scope: !1101)
!1104 = !{!"526"}
!1105 = !DILocation(line: 268, column: 9, scope: !1091)
!1106 = !{!"527"}
!1107 = !DILocation(line: 269, column: 13, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !60, line: 269, column: 13)
!1109 = distinct !DILexicalBlock(scope: !1101, file: !60, line: 268, column: 42)
!1110 = !{!"528"}
!1111 = !DILocation(line: 269, column: 52, scope: !1108)
!1112 = !{!"529"}
!1113 = !DILocation(line: 269, column: 13, scope: !1109)
!1114 = !{!"530"}
!1115 = !DILocation(line: 270, column: 13, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1108, file: !60, line: 269, column: 58)
!1117 = !{!"531"}
!1118 = !{!"532"}
!1119 = !DILocation(line: 272, column: 9, scope: !1109)
!1120 = !{!"533"}
!1121 = !{!"534"}
!1122 = !DILocation(line: 275, column: 16, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1091, file: !60, line: 275, column: 9)
!1124 = !{!"535"}
!1125 = !DILocation(line: 275, column: 38, scope: !1123)
!1126 = !{!"536"}
!1127 = !DILocation(line: 275, column: 44, scope: !1123)
!1128 = !{!"537"}
!1129 = !{!"538"}
!1130 = !DILocation(line: 276, column: 26, scope: !1123)
!1131 = !{!"539"}
!1132 = !DILocation(line: 276, column: 9, scope: !1123)
!1133 = !{!"540"}
!1134 = !DILocation(line: 276, column: 60, scope: !1123)
!1135 = !{!"541"}
!1136 = !DILocation(line: 275, column: 9, scope: !1091)
!1137 = !{!"542"}
!1138 = !DILocation(line: 277, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1123, file: !60, line: 276, column: 79)
!1140 = !{!"543"}
!1141 = !{!"544"}
!1142 = !DILocation(line: 287, column: 1, scope: !1091)
!1143 = !{!"545"}
!1144 = !{!"546"}
!1145 = distinct !DISubprogram(name: "randombytes_sysrandom_close", scope: !60, file: !60, line: 223, type: !50, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !59, retainedNodes: !4)
!1146 = !DILocalVariable(name: "ret", scope: !1145, file: !60, line: 225, type: !52)
!1147 = !DILocation(line: 0, scope: !1145)
!1148 = !{!"547"}
!1149 = !{!"548"}
!1150 = !DILocation(line: 228, column: 16, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1145, file: !60, line: 228, column: 9)
!1152 = !{!"549"}
!1153 = !DILocation(line: 228, column: 38, scope: !1151)
!1154 = !{!"550"}
!1155 = !DILocation(line: 228, column: 44, scope: !1151)
!1156 = !{!"551"}
!1157 = !{!"552"}
!1158 = !DILocation(line: 229, column: 22, scope: !1151)
!1159 = !{!"553"}
!1160 = !DILocation(line: 229, column: 9, scope: !1151)
!1161 = !{!"554"}
!1162 = !DILocation(line: 229, column: 45, scope: !1151)
!1163 = !{!"555"}
!1164 = !DILocation(line: 228, column: 9, scope: !1145)
!1165 = !{!"556"}
!1166 = !{!"557"}
!1167 = !DILocation(line: 230, column: 38, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1151, file: !60, line: 229, column: 51)
!1169 = !{!"558"}
!1170 = !{!"559"}
!1171 = !DILocation(line: 231, column: 28, scope: !1168)
!1172 = !{!"560"}
!1173 = !{!"561"}
!1174 = !DILocation(line: 233, column: 5, scope: !1168)
!1175 = !{!"562"}
!1176 = !{!"563"}
!1177 = !{!"564"}
!1178 = !{!"565"}
!1179 = !DILocation(line: 235, column: 16, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1145, file: !60, line: 235, column: 9)
!1181 = !{!"566"}
!1182 = !DILocation(line: 235, column: 36, scope: !1180)
!1183 = !{!"567"}
!1184 = !DILocation(line: 235, column: 9, scope: !1145)
!1185 = !{!"568"}
!1186 = !{!"569"}
!1187 = !DILocation(line: 237, column: 5, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1180, file: !60, line: 235, column: 42)
!1189 = !{!"570"}
!1190 = !{!"571"}
!1191 = !{!"572"}
!1192 = !DILocation(line: 245, column: 5, scope: !1145)
!1193 = !{!"573"}
!1194 = distinct !DISubprogram(name: "randombytes_sysrandom_stir_if_needed", scope: !60, file: !60, line: 215, type: !35, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!1195 = !{!"574"}
!1196 = !DILocation(line: 217, column: 16, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !60, line: 217, column: 9)
!1198 = !{!"575"}
!1199 = !DILocation(line: 217, column: 28, scope: !1197)
!1200 = !{!"576"}
!1201 = !DILocation(line: 217, column: 9, scope: !1194)
!1202 = !{!"577"}
!1203 = !DILocation(line: 218, column: 9, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !60, line: 217, column: 34)
!1205 = !{!"578"}
!1206 = !DILocation(line: 219, column: 5, scope: !1204)
!1207 = !{!"579"}
!1208 = !DILocation(line: 220, column: 1, scope: !1194)
!1209 = !{!"580"}
!1210 = distinct !DISubprogram(name: "randombytes_linux_getrandom", scope: !60, file: !60, line: 151, type: !1211, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!52, !46, !12}
!1213 = !DILocalVariable(name: "buf_", arg: 1, scope: !1210, file: !60, line: 151, type: !46)
!1214 = !DILocation(line: 0, scope: !1210)
!1215 = !{!"581"}
!1216 = !DILocalVariable(name: "size", arg: 2, scope: !1210, file: !60, line: 151, type: !12)
!1217 = !{!"582"}
!1218 = !DILocalVariable(name: "buf", scope: !1210, file: !60, line: 153, type: !66)
!1219 = !{!"583"}
!1220 = !DILocalVariable(name: "chunk_size", scope: !1210, file: !60, line: 154, type: !12)
!1221 = !{!"584"}
!1222 = !DILocation(line: 156, column: 5, scope: !1210)
!1223 = !{!"585"}
!1224 = !{!"586"}
!1225 = !{!"587"}
!1226 = !{!"588"}
!1227 = !{!"589"}
!1228 = !{!"590"}
!1229 = !{!"591"}
!1230 = !DILocation(line: 157, column: 18, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !60, line: 157, column: 13)
!1232 = distinct !DILexicalBlock(scope: !1210, file: !60, line: 156, column: 8)
!1233 = !{!"592"}
!1234 = !DILocation(line: 157, column: 13, scope: !1232)
!1235 = !{!"593"}
!1236 = !{!"594"}
!1237 = !DILocation(line: 159, column: 13, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !60, line: 159, column: 13)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !60, line: 159, column: 13)
!1240 = distinct !DILexicalBlock(scope: !1231, file: !60, line: 157, column: 32)
!1241 = !{!"595"}
!1242 = !DILocation(line: 159, column: 13, scope: !1239)
!1243 = !{!"596"}
!1244 = !{!"597"}
!1245 = !{!"598"}
!1246 = !{!"599"}
!1247 = !{!"600"}
!1248 = !{!"601"}
!1249 = !{!"602"}
!1250 = !DILocation(line: 160, column: 9, scope: !1240)
!1251 = !{!"603"}
!1252 = !{!"604"}
!1253 = !{!"605"}
!1254 = !DILocation(line: 161, column: 13, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1232, file: !60, line: 161, column: 13)
!1256 = !{!"606"}
!1257 = !DILocation(line: 161, column: 59, scope: !1255)
!1258 = !{!"607"}
!1259 = !DILocation(line: 161, column: 13, scope: !1232)
!1260 = !{!"608"}
!1261 = !DILocation(line: 162, column: 13, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1255, file: !60, line: 161, column: 65)
!1263 = !{!"609"}
!1264 = !DILocation(line: 164, column: 14, scope: !1232)
!1265 = !{!"610"}
!1266 = !{!"611"}
!1267 = !DILocation(line: 165, column: 13, scope: !1232)
!1268 = !{!"612"}
!1269 = !{!"613"}
!1270 = !DILocation(line: 166, column: 5, scope: !1232)
!1271 = !{!"614"}
!1272 = !DILocation(line: 166, column: 19, scope: !1210)
!1273 = !{!"615"}
!1274 = distinct !{!1274, !1222, !1275, !564}
!1275 = !DILocation(line: 166, column: 32, scope: !1210)
!1276 = !{!"616"}
!1277 = !DILocation(line: 168, column: 5, scope: !1210)
!1278 = !{!"617"}
!1279 = !{!"618"}
!1280 = !DILocation(line: 169, column: 1, scope: !1210)
!1281 = !{!"619"}
!1282 = distinct !DISubprogram(name: "safe_read", scope: !60, file: !60, line: 77, type: !1283, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!62, !1285, !46, !12}
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1286 = !DILocalVariable(name: "fd", arg: 1, scope: !1282, file: !60, line: 77, type: !1285)
!1287 = !DILocation(line: 0, scope: !1282)
!1288 = !{!"620"}
!1289 = !DILocalVariable(name: "buf_", arg: 2, scope: !1282, file: !60, line: 77, type: !46)
!1290 = !{!"621"}
!1291 = !DILocalVariable(name: "size", arg: 3, scope: !1282, file: !60, line: 77, type: !12)
!1292 = !{!"622"}
!1293 = !DILocalVariable(name: "buf", scope: !1282, file: !60, line: 79, type: !66)
!1294 = !{!"623"}
!1295 = !DILocation(line: 82, column: 5, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !60, line: 82, column: 5)
!1297 = distinct !DILexicalBlock(scope: !1282, file: !60, line: 82, column: 5)
!1298 = !{!"624"}
!1299 = !DILocation(line: 82, column: 5, scope: !1297)
!1300 = !{!"625"}
!1301 = !{!"626"}
!1302 = !{!"627"}
!1303 = !{!"628"}
!1304 = !{!"629"}
!1305 = !{!"630"}
!1306 = !{!"631"}
!1307 = !DILocation(line: 83, column: 5, scope: !1282)
!1308 = !{!"632"}
!1309 = !{!"633"}
!1310 = !{!"634"}
!1311 = !{!"635"}
!1312 = !{!"636"}
!1313 = !DILocation(line: 84, column: 9, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1282, file: !60, line: 83, column: 8)
!1315 = !{!"637"}
!1316 = !DILocation(line: 84, column: 26, scope: !1314)
!1317 = !{!"638"}
!1318 = !DILocalVariable(name: "readnb", scope: !1282, file: !60, line: 80, type: !62)
!1319 = !{!"639"}
!1320 = !DILocation(line: 84, column: 47, scope: !1314)
!1321 = !{!"640"}
!1322 = !DILocation(line: 84, column: 61, scope: !1314)
!1323 = !{!"641"}
!1324 = !DILocation(line: 85, column: 17, scope: !1314)
!1325 = !{!"642"}
!1326 = !{!"643"}
!1327 = !DILocation(line: 85, column: 23, scope: !1314)
!1328 = !{!"644"}
!1329 = !DILocation(line: 85, column: 32, scope: !1314)
!1330 = !{!"645"}
!1331 = !DILocation(line: 85, column: 35, scope: !1314)
!1332 = !{!"646"}
!1333 = !{!"647"}
!1334 = !DILocation(line: 85, column: 41, scope: !1314)
!1335 = !{!"648"}
!1336 = !{!"649"}
!1337 = !{!"650"}
!1338 = !{!"651"}
!1339 = !DILocation(line: 0, scope: !1314)
!1340 = !{!"652"}
!1341 = !{!"653"}
!1342 = distinct !{!1342, !1313, !1343, !564}
!1343 = !DILocation(line: 85, column: 52, scope: !1314)
!1344 = !{!"654"}
!1345 = !DILocation(line: 86, column: 20, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1314, file: !60, line: 86, column: 13)
!1347 = !{!"655"}
!1348 = !DILocation(line: 86, column: 13, scope: !1314)
!1349 = !{!"656"}
!1350 = !DILocation(line: 87, column: 13, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1346, file: !60, line: 86, column: 35)
!1352 = !{!"657"}
!1353 = !DILocation(line: 89, column: 20, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1314, file: !60, line: 89, column: 13)
!1355 = !{!"658"}
!1356 = !DILocation(line: 89, column: 13, scope: !1314)
!1357 = !{!"659"}
!1358 = !DILocation(line: 90, column: 13, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !60, line: 89, column: 36)
!1360 = !{!"660"}
!1361 = !DILocation(line: 92, column: 14, scope: !1314)
!1362 = !{!"661"}
!1363 = !{!"662"}
!1364 = !DILocation(line: 93, column: 13, scope: !1314)
!1365 = !{!"663"}
!1366 = !{!"664"}
!1367 = !DILocation(line: 94, column: 5, scope: !1314)
!1368 = !{!"665"}
!1369 = !DILocation(line: 94, column: 19, scope: !1282)
!1370 = !{!"666"}
!1371 = distinct !{!1371, !1307, !1372, !564}
!1372 = !DILocation(line: 94, column: 32, scope: !1282)
!1373 = !{!"667"}
!1374 = !{!"668"}
!1375 = !{!"669"}
!1376 = !DILocation(line: 96, column: 27, scope: !1282)
!1377 = !{!"670"}
!1378 = !{!"671"}
!1379 = !{!"672"}
!1380 = !DILocation(line: 96, column: 5, scope: !1282)
!1381 = !{!"673"}
!1382 = !{!"674"}
!1383 = !DILocation(line: 97, column: 1, scope: !1282)
!1384 = !{!"675"}
!1385 = distinct !DISubprogram(name: "_randombytes_linux_getrandom", scope: !60, file: !60, line: 138, type: !1386, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!52, !46, !47}
!1388 = !DILocalVariable(name: "buf", arg: 1, scope: !1385, file: !60, line: 138, type: !46)
!1389 = !DILocation(line: 0, scope: !1385)
!1390 = !{!"676"}
!1391 = !DILocalVariable(name: "size", arg: 2, scope: !1385, file: !60, line: 138, type: !47)
!1392 = !{!"677"}
!1393 = !DILocation(line: 142, column: 5, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !60, line: 142, column: 5)
!1395 = distinct !DILexicalBlock(scope: !1385, file: !60, line: 142, column: 5)
!1396 = !{!"678"}
!1397 = !DILocation(line: 142, column: 5, scope: !1395)
!1398 = !{!"679"}
!1399 = !{!"680"}
!1400 = !{!"681"}
!1401 = !{!"682"}
!1402 = !{!"683"}
!1403 = !{!"684"}
!1404 = !{!"685"}
!1405 = !DILocation(line: 143, column: 5, scope: !1385)
!1406 = !{!"686"}
!1407 = !DILocation(line: 144, column: 46, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1385, file: !60, line: 143, column: 8)
!1409 = !{!"687"}
!1410 = !DILocation(line: 144, column: 18, scope: !1408)
!1411 = !{!"688"}
!1412 = !{!"689"}
!1413 = !DILocalVariable(name: "readnb", scope: !1385, file: !60, line: 140, type: !52)
!1414 = !{!"690"}
!1415 = !DILocation(line: 145, column: 5, scope: !1408)
!1416 = !{!"691"}
!1417 = !DILocation(line: 145, column: 21, scope: !1385)
!1418 = !{!"692"}
!1419 = !DILocation(line: 145, column: 25, scope: !1385)
!1420 = !{!"693"}
!1421 = !DILocation(line: 145, column: 29, scope: !1385)
!1422 = !{!"694"}
!1423 = !{!"695"}
!1424 = !DILocation(line: 145, column: 35, scope: !1385)
!1425 = !{!"696"}
!1426 = !DILocation(line: 145, column: 44, scope: !1385)
!1427 = !{!"697"}
!1428 = !DILocation(line: 145, column: 47, scope: !1385)
!1429 = !{!"698"}
!1430 = !{!"699"}
!1431 = !DILocation(line: 145, column: 53, scope: !1385)
!1432 = !{!"700"}
!1433 = !{!"701"}
!1434 = !{!"702"}
!1435 = !{!"703"}
!1436 = !{!"704"}
!1437 = distinct !{!1437, !1405, !1438, !564}
!1438 = !DILocation(line: 145, column: 63, scope: !1385)
!1439 = !{!"705"}
!1440 = !DILocation(line: 147, column: 23, scope: !1385)
!1441 = !{!"706"}
!1442 = !DILocation(line: 147, column: 20, scope: !1385)
!1443 = !{!"707"}
!1444 = !{!"708"}
!1445 = !DILocation(line: 147, column: 35, scope: !1385)
!1446 = !{!"709"}
!1447 = !DILocation(line: 147, column: 5, scope: !1385)
!1448 = !{!"710"}
!1449 = distinct !DISubprogram(name: "randombytes_sysrandom_init", scope: !60, file: !60, line: 173, type: !35, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !59, retainedNodes: !4)
!1450 = !{!"711"}
!1451 = !DILocation(line: 175, column: 32, scope: !1449)
!1452 = !{!"712"}
!1453 = !{!"713"}
!1454 = !DILocalVariable(name: "errno_save", scope: !1449, file: !60, line: 175, type: !1285)
!1455 = !DILocation(line: 0, scope: !1449)
!1456 = !{!"714"}
!1457 = !DILocalVariable(name: "fodder", scope: !1458, file: !60, line: 179, type: !114)
!1458 = distinct !DILexicalBlock(scope: !1449, file: !60, line: 178, column: 5)
!1459 = !DILocation(line: 179, column: 16, scope: !1458)
!1460 = !{!"715"}
!1461 = !DILocation(line: 181, column: 34, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !60, line: 181, column: 6)
!1463 = !{!"716"}
!1464 = !DILocation(line: 181, column: 6, scope: !1462)
!1465 = !{!"717"}
!1466 = !DILocation(line: 181, column: 57, scope: !1462)
!1467 = !{!"718"}
!1468 = !DILocation(line: 181, column: 6, scope: !1458)
!1469 = !{!"719"}
!1470 = !{!"720"}
!1471 = !DILocation(line: 182, column: 33, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1462, file: !60, line: 181, column: 63)
!1473 = !{!"721"}
!1474 = !DILocation(line: 183, column: 6, scope: !1472)
!1475 = !{!"722"}
!1476 = !DILocation(line: 183, column: 12, scope: !1472)
!1477 = !{!"723"}
!1478 = !DILocation(line: 184, column: 6, scope: !1472)
!1479 = !{!"724"}
!1480 = !{!"725"}
!1481 = !DILocation(line: 186, column: 29, scope: !1458)
!1482 = !{!"726"}
!1483 = !DILocation(line: 191, column: 10, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1449, file: !60, line: 190, column: 9)
!1485 = !{!"727"}
!1486 = !{!"728"}
!1487 = !DILocation(line: 190, column: 39, scope: !1484)
!1488 = !{!"729"}
!1489 = !DILocation(line: 191, column: 51, scope: !1484)
!1490 = !{!"730"}
!1491 = !DILocation(line: 190, column: 9, scope: !1449)
!1492 = !{!"731"}
!1493 = !DILocation(line: 192, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1484, file: !60, line: 191, column: 58)
!1495 = !{!"732"}
!1496 = !{!"733"}
!1497 = !DILocation(line: 194, column: 5, scope: !1449)
!1498 = !{!"734"}
!1499 = !DILocation(line: 194, column: 11, scope: !1449)
!1500 = !{!"735"}
!1501 = !DILocation(line: 195, column: 1, scope: !1449)
!1502 = !{!"736"}
!1503 = !{!"737"}
!1504 = !{!"738"}
!1505 = !DILocalVariable(name: "st", scope: !79, file: !60, line: 105, type: !1506)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1507, line: 46, size: 1152, elements: !1508)
!1507 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1508 = !{!1509, !1511, !1513, !1515, !1517, !1519, !1521, !1522, !1523, !1525, !1527, !1529, !1537, !1538, !1539}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1506, file: !1507, line: 48, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !10, line: 145, baseType: !14)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1506, file: !1507, line: 53, baseType: !1512, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !10, line: 148, baseType: !14)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1506, file: !1507, line: 61, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !10, line: 151, baseType: !14)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1506, file: !1507, line: 62, baseType: !1516, size: 32, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !10, line: 150, baseType: !11)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1506, file: !1507, line: 64, baseType: !1518, size: 32, offset: 224)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !10, line: 146, baseType: !11)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1506, file: !1507, line: 65, baseType: !1520, size: 32, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !10, line: 147, baseType: !11)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1506, file: !1507, line: 67, baseType: !52, size: 32, offset: 288)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1506, file: !1507, line: 69, baseType: !1510, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1506, file: !1507, line: 74, baseType: !1524, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !10, line: 152, baseType: !65)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1506, file: !1507, line: 78, baseType: !1526, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !10, line: 174, baseType: !65)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1506, file: !1507, line: 80, baseType: !1528, size: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !10, line: 179, baseType: !65)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1506, file: !1507, line: 91, baseType: !1530, size: 128, offset: 576)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1531, line: 10, size: 128, elements: !1532)
!1531 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1532 = !{!1533, !1535}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1530, file: !1531, line: 12, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !10, line: 160, baseType: !65)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1530, file: !1531, line: 16, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !10, line: 196, baseType: !65)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1506, file: !1507, line: 92, baseType: !1530, size: 128, offset: 704)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1506, file: !1507, line: 93, baseType: !1530, size: 128, offset: 832)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1506, file: !1507, line: 106, baseType: !1540, size: 192, offset: 960)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 192, elements: !81)
!1541 = !DILocation(line: 105, column: 24, scope: !79)
!1542 = !{!"739"}
!1543 = !DILocalVariable(name: "device", scope: !79, file: !60, line: 112, type: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1545 = !DILocation(line: 0, scope: !79)
!1546 = !{!"740"}
!1547 = !{!"741"}
!1548 = !DILocation(line: 115, column: 5, scope: !79)
!1549 = !{!"742"}
!1550 = !{!"743"}
!1551 = !{!"744"}
!1552 = !DILocation(line: 116, column: 19, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !79, file: !60, line: 115, column: 8)
!1554 = !{!"745"}
!1555 = !DILocation(line: 116, column: 14, scope: !1553)
!1556 = !{!"746"}
!1557 = !DILocalVariable(name: "fd", scope: !79, file: !60, line: 113, type: !52)
!1558 = !{!"747"}
!1559 = !DILocation(line: 117, column: 16, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1553, file: !60, line: 117, column: 13)
!1561 = !{!"748"}
!1562 = !DILocation(line: 117, column: 13, scope: !1553)
!1563 = !{!"749"}
!1564 = !DILocation(line: 118, column: 17, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !60, line: 118, column: 17)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !60, line: 117, column: 23)
!1567 = !{!"750"}
!1568 = !DILocation(line: 118, column: 32, scope: !1565)
!1569 = !{!"751"}
!1570 = !DILocation(line: 118, column: 37, scope: !1565)
!1571 = !{!"752"}
!1572 = !DILocation(line: 118, column: 40, scope: !1565)
!1573 = !{!"753"}
!1574 = !{!"754"}
!1575 = !{!"755"}
!1576 = !{!"756"}
!1577 = !DILocation(line: 118, column: 17, scope: !1566)
!1578 = !{!"757"}
!1579 = !DILocation(line: 120, column: 43, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1565, file: !60, line: 118, column: 61)
!1581 = !{!"758"}
!1582 = !DILocation(line: 120, column: 62, scope: !1580)
!1583 = !{!"759"}
!1584 = !DILocation(line: 120, column: 24, scope: !1580)
!1585 = !{!"760"}
!1586 = !DILocation(line: 122, column: 17, scope: !1580)
!1587 = !{!"761"}
!1588 = !DILocation(line: 124, column: 20, scope: !1566)
!1589 = !{!"762"}
!1590 = !DILocation(line: 125, column: 9, scope: !1566)
!1591 = !{!"763"}
!1592 = !DILocation(line: 125, column: 20, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1560, file: !60, line: 125, column: 20)
!1594 = !{!"764"}
!1595 = !{!"765"}
!1596 = !DILocation(line: 125, column: 26, scope: !1593)
!1597 = !{!"766"}
!1598 = !DILocation(line: 125, column: 20, scope: !1560)
!1599 = !{!"767"}
!1600 = !DILocation(line: 126, column: 13, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1593, file: !60, line: 125, column: 36)
!1602 = !{!"768"}
!1603 = !{!"769"}
!1604 = !DILocation(line: 128, column: 15, scope: !1553)
!1605 = !{!"770"}
!1606 = !{!"771"}
!1607 = !DILocation(line: 129, column: 5, scope: !1553)
!1608 = !{!"772"}
!1609 = !{!"773"}
!1610 = !{!"774"}
!1611 = !DILocation(line: 129, column: 14, scope: !79)
!1612 = !{!"775"}
!1613 = !DILocation(line: 129, column: 22, scope: !79)
!1614 = !{!"776"}
!1615 = distinct !{!1615, !1548, !1616, !564}
!1616 = !DILocation(line: 129, column: 29, scope: !79)
!1617 = !{!"777"}
!1618 = !DILocation(line: 131, column: 5, scope: !79)
!1619 = !{!"778"}
!1620 = !DILocation(line: 131, column: 11, scope: !79)
!1621 = !{!"779"}
!1622 = !DILocation(line: 132, column: 5, scope: !79)
!1623 = !{!"780"}
!1624 = !{!"781"}
!1625 = !DILocation(line: 134, column: 1, scope: !79)
!1626 = !{!"782"}
!1627 = distinct !DISubprogram(name: "sodium_memzero", scope: !107, file: !107, line: 58, type: !44, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1628 = !DILocalVariable(name: "pnt", arg: 1, scope: !1627, file: !107, line: 58, type: !46)
!1629 = !DILocation(line: 0, scope: !1627)
!1630 = !{!"783"}
!1631 = !DILocalVariable(name: "len", arg: 2, scope: !1627, file: !107, line: 58, type: !47)
!1632 = !{!"784"}
!1633 = !DILocalVariable(name: "pnt_", scope: !1627, file: !107, line: 72, type: !109)
!1634 = !{!"785"}
!1635 = !DILocalVariable(name: "i", scope: !1627, file: !107, line: 73, type: !12)
!1636 = !{!"786"}
!1637 = !DILocation(line: 75, column: 5, scope: !1627)
!1638 = !{!"787"}
!1639 = !{!"788"}
!1640 = !{!"789"}
!1641 = !DILocation(line: 75, column: 14, scope: !1627)
!1642 = !{!"790"}
!1643 = !{!"791"}
!1644 = !DILocation(line: 76, column: 15, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1627, file: !107, line: 75, column: 21)
!1646 = !{!"792"}
!1647 = !{!"793"}
!1648 = !DILocation(line: 76, column: 9, scope: !1645)
!1649 = !{!"794"}
!1650 = !DILocation(line: 76, column: 19, scope: !1645)
!1651 = !{!"795"}
!1652 = distinct !{!1652, !1637, !1653, !564}
!1653 = !DILocation(line: 77, column: 5, scope: !1627)
!1654 = !{!"796"}
!1655 = !DILocation(line: 79, column: 1, scope: !1627)
!1656 = !{!"797"}
!1657 = distinct !DISubprogram(name: "sodium_memcmp", scope: !107, file: !107, line: 82, type: !1658, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!52, !1660, !1660, !12}
!1660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1661)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1663 = !DILocalVariable(name: "b1_", arg: 1, scope: !1657, file: !107, line: 82, type: !1660)
!1664 = !DILocation(line: 0, scope: !1657)
!1665 = !{!"798"}
!1666 = !DILocalVariable(name: "b2_", arg: 2, scope: !1657, file: !107, line: 82, type: !1660)
!1667 = !{!"799"}
!1668 = !DILocalVariable(name: "len", arg: 3, scope: !1657, file: !107, line: 82, type: !12)
!1669 = !{!"800"}
!1670 = !DILocalVariable(name: "b1", scope: !1657, file: !107, line: 84, type: !111)
!1671 = !{!"801"}
!1672 = !DILocalVariable(name: "b2", scope: !1657, file: !107, line: 85, type: !111)
!1673 = !{!"802"}
!1674 = !DILocalVariable(name: "d", scope: !1657, file: !107, line: 87, type: !67)
!1675 = !{!"803"}
!1676 = !DILocalVariable(name: "i", scope: !1657, file: !107, line: 86, type: !12)
!1677 = !{!"804"}
!1678 = !DILocation(line: 89, column: 10, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1657, file: !107, line: 89, column: 5)
!1680 = !{!"805"}
!1681 = !DILocation(line: 0, scope: !1679)
!1682 = !{!"806"}
!1683 = !{!"807"}
!1684 = !{!"808"}
!1685 = !{!"809"}
!1686 = !DILocation(line: 89, column: 20, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1679, file: !107, line: 89, column: 5)
!1688 = !{!"810"}
!1689 = !DILocation(line: 89, column: 5, scope: !1679)
!1690 = !{!"811"}
!1691 = !DILocation(line: 90, column: 14, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !107, line: 89, column: 32)
!1693 = !{!"812"}
!1694 = !{!"813"}
!1695 = !{!"814"}
!1696 = !DILocation(line: 90, column: 22, scope: !1692)
!1697 = !{!"815"}
!1698 = !{!"816"}
!1699 = !{!"817"}
!1700 = !DILocation(line: 90, column: 20, scope: !1692)
!1701 = !{!"818"}
!1702 = !DILocation(line: 90, column: 11, scope: !1692)
!1703 = !{!"819"}
!1704 = !{!"820"}
!1705 = !{!"821"}
!1706 = !{!"822"}
!1707 = !DILocation(line: 91, column: 5, scope: !1692)
!1708 = !{!"823"}
!1709 = !DILocation(line: 89, column: 28, scope: !1687)
!1710 = !{!"824"}
!1711 = !{!"825"}
!1712 = !DILocation(line: 89, column: 5, scope: !1687)
!1713 = distinct !{!1713, !1689, !1714, !564}
!1714 = !DILocation(line: 91, column: 5, scope: !1679)
!1715 = !{!"826"}
!1716 = !DILocation(line: 92, column: 26, scope: !1657)
!1717 = !{!"827"}
!1718 = !DILocation(line: 92, column: 28, scope: !1657)
!1719 = !{!"828"}
!1720 = !DILocation(line: 92, column: 33, scope: !1657)
!1721 = !{!"829"}
!1722 = !DILocation(line: 92, column: 22, scope: !1657)
!1723 = !{!"830"}
!1724 = !DILocation(line: 92, column: 40, scope: !1657)
!1725 = !{!"831"}
!1726 = !DILocation(line: 92, column: 5, scope: !1657)
!1727 = !{!"832"}
!1728 = distinct !DISubprogram(name: "sodium_bin2hex", scope: !107, file: !107, line: 97, type: !1729, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!1731, !1732, !47, !1733, !47}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1731)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!1734 = !DILocalVariable(name: "hex", arg: 1, scope: !1728, file: !107, line: 97, type: !1732)
!1735 = !DILocation(line: 0, scope: !1728)
!1736 = !{!"833"}
!1737 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !1728, file: !107, line: 97, type: !47)
!1738 = !{!"834"}
!1739 = !DILocalVariable(name: "bin", arg: 3, scope: !1728, file: !107, line: 98, type: !1733)
!1740 = !{!"835"}
!1741 = !DILocalVariable(name: "bin_len", arg: 4, scope: !1728, file: !107, line: 98, type: !47)
!1742 = !{!"836"}
!1743 = !DILocalVariable(name: "i", scope: !1728, file: !107, line: 100, type: !12)
!1744 = !{!"837"}
!1745 = !DILocation(line: 105, column: 17, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1728, file: !107, line: 105, column: 9)
!1747 = !{!"838"}
!1748 = !DILocation(line: 105, column: 33, scope: !1746)
!1749 = !{!"839"}
!1750 = !DILocation(line: 105, column: 57, scope: !1746)
!1751 = !{!"840"}
!1752 = !DILocation(line: 105, column: 47, scope: !1746)
!1753 = !{!"841"}
!1754 = !DILocation(line: 105, column: 9, scope: !1728)
!1755 = !{!"842"}
!1756 = !DILocation(line: 106, column: 9, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1746, file: !107, line: 105, column: 63)
!1758 = !{!"843"}
!1759 = !{!"844"}
!1760 = !DILocation(line: 108, column: 5, scope: !1728)
!1761 = !{!"845"}
!1762 = !{!"846"}
!1763 = !{!"847"}
!1764 = !DILocation(line: 108, column: 14, scope: !1728)
!1765 = !{!"848"}
!1766 = !{!"849"}
!1767 = !DILocation(line: 109, column: 13, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1728, file: !107, line: 108, column: 25)
!1769 = !{!"850"}
!1770 = !{!"851"}
!1771 = !{!"852"}
!1772 = !DILocation(line: 109, column: 20, scope: !1768)
!1773 = !{!"853"}
!1774 = !DILocalVariable(name: "c", scope: !1728, file: !107, line: 103, type: !52)
!1775 = !{!"854"}
!1776 = !DILocation(line: 110, column: 13, scope: !1768)
!1777 = !{!"855"}
!1778 = !{!"856"}
!1779 = !{!"857"}
!1780 = !DILocation(line: 110, column: 20, scope: !1768)
!1781 = !{!"858"}
!1782 = !DILocalVariable(name: "b", scope: !1728, file: !107, line: 102, type: !52)
!1783 = !{!"859"}
!1784 = !DILocation(line: 111, column: 34, scope: !1768)
!1785 = !{!"860"}
!1786 = !DILocation(line: 111, column: 45, scope: !1768)
!1787 = !{!"861"}
!1788 = !DILocation(line: 111, column: 52, scope: !1768)
!1789 = !{!"862"}
!1790 = !DILocation(line: 111, column: 58, scope: !1768)
!1791 = !{!"863"}
!1792 = !DILocation(line: 111, column: 38, scope: !1768)
!1793 = !{!"864"}
!1794 = !DILocation(line: 111, column: 13, scope: !1768)
!1795 = !{!"865"}
!1796 = !{!"866"}
!1797 = !DILocation(line: 111, column: 67, scope: !1768)
!1798 = !{!"867"}
!1799 = !DILocation(line: 112, column: 34, scope: !1768)
!1800 = !{!"868"}
!1801 = !DILocation(line: 112, column: 45, scope: !1768)
!1802 = !{!"869"}
!1803 = !DILocation(line: 112, column: 52, scope: !1768)
!1804 = !{!"870"}
!1805 = !DILocation(line: 112, column: 58, scope: !1768)
!1806 = !{!"871"}
!1807 = !DILocation(line: 112, column: 38, scope: !1768)
!1808 = !{!"872"}
!1809 = !DILocation(line: 112, column: 13, scope: !1768)
!1810 = !{!"873"}
!1811 = !{!"874"}
!1812 = !DILocation(line: 111, column: 72, scope: !1768)
!1813 = !{!"875"}
!1814 = !DILocalVariable(name: "x", scope: !1728, file: !107, line: 101, type: !11)
!1815 = !{!"876"}
!1816 = !DILocation(line: 113, column: 23, scope: !1768)
!1817 = !{!"877"}
!1818 = !DILocation(line: 113, column: 15, scope: !1768)
!1819 = !{!"878"}
!1820 = !DILocation(line: 113, column: 9, scope: !1768)
!1821 = !{!"879"}
!1822 = !DILocation(line: 113, column: 21, scope: !1768)
!1823 = !{!"880"}
!1824 = !DILocation(line: 114, column: 11, scope: !1768)
!1825 = !{!"881"}
!1826 = !{!"882"}
!1827 = !DILocation(line: 115, column: 28, scope: !1768)
!1828 = !{!"883"}
!1829 = !DILocation(line: 115, column: 15, scope: !1768)
!1830 = !{!"884"}
!1831 = !DILocation(line: 115, column: 20, scope: !1768)
!1832 = !{!"885"}
!1833 = !DILocation(line: 115, column: 9, scope: !1768)
!1834 = !{!"886"}
!1835 = !DILocation(line: 115, column: 26, scope: !1768)
!1836 = !{!"887"}
!1837 = !DILocation(line: 116, column: 10, scope: !1768)
!1838 = !{!"888"}
!1839 = !{!"889"}
!1840 = distinct !{!1840, !1760, !1841, !564}
!1841 = !DILocation(line: 117, column: 5, scope: !1728)
!1842 = !{!"890"}
!1843 = !DILocation(line: 118, column: 11, scope: !1728)
!1844 = !{!"891"}
!1845 = !DILocation(line: 118, column: 5, scope: !1728)
!1846 = !{!"892"}
!1847 = !DILocation(line: 118, column: 17, scope: !1728)
!1848 = !{!"893"}
!1849 = !DILocation(line: 120, column: 5, scope: !1728)
!1850 = !{!"894"}
!1851 = distinct !DISubprogram(name: "sodium_hex2bin", scope: !107, file: !107, line: 124, type: !1852, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!52, !1031, !47, !1854, !47, !1854, !1855, !1857}
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1858 = !DILocalVariable(name: "bin", arg: 1, scope: !1851, file: !107, line: 124, type: !1031)
!1859 = !DILocation(line: 0, scope: !1851)
!1860 = !{!"895"}
!1861 = !DILocalVariable(name: "bin_maxlen", arg: 2, scope: !1851, file: !107, line: 124, type: !47)
!1862 = !{!"896"}
!1863 = !DILocalVariable(name: "hex", arg: 3, scope: !1851, file: !107, line: 125, type: !1854)
!1864 = !{!"897"}
!1865 = !DILocalVariable(name: "hex_len", arg: 4, scope: !1851, file: !107, line: 125, type: !47)
!1866 = !{!"898"}
!1867 = !DILocalVariable(name: "ignore", arg: 5, scope: !1851, file: !107, line: 126, type: !1854)
!1868 = !{!"899"}
!1869 = !DILocalVariable(name: "bin_len", arg: 6, scope: !1851, file: !107, line: 126, type: !1855)
!1870 = !{!"900"}
!1871 = !DILocalVariable(name: "hex_end", arg: 7, scope: !1851, file: !107, line: 127, type: !1857)
!1872 = !{!"901"}
!1873 = !DILocalVariable(name: "bin_pos", scope: !1851, file: !107, line: 129, type: !12)
!1874 = !{!"902"}
!1875 = !DILocalVariable(name: "hex_pos", scope: !1851, file: !107, line: 130, type: !12)
!1876 = !{!"903"}
!1877 = !DILocalVariable(name: "ret", scope: !1851, file: !107, line: 131, type: !52)
!1878 = !{!"904"}
!1879 = !DILocalVariable(name: "c_acc", scope: !1851, file: !107, line: 133, type: !67)
!1880 = !{!"905"}
!1881 = !DILocalVariable(name: "state", scope: !1851, file: !107, line: 137, type: !67)
!1882 = !{!"906"}
!1883 = !DILocation(line: 139, column: 5, scope: !1851)
!1884 = !{!"907"}
!1885 = !DILocation(line: 129, column: 19, scope: !1851)
!1886 = !{!"908"}
!1887 = !{!"909"}
!1888 = !{!"910"}
!1889 = !{!"911"}
!1890 = !{!"912"}
!1891 = !{!"913"}
!1892 = !{!"914"}
!1893 = !{!"915"}
!1894 = !DILocation(line: 139, column: 20, scope: !1851)
!1895 = !{!"916"}
!1896 = !{!"917"}
!1897 = !DILocation(line: 140, column: 29, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1851, file: !107, line: 139, column: 31)
!1899 = !{!"918"}
!1900 = !{!"919"}
!1901 = !DILocalVariable(name: "c", scope: !1851, file: !107, line: 132, type: !67)
!1902 = !{!"920"}
!1903 = !DILocation(line: 141, column: 17, scope: !1898)
!1904 = !{!"921"}
!1905 = !DILocation(line: 141, column: 19, scope: !1898)
!1906 = !{!"922"}
!1907 = !{!"923"}
!1908 = !DILocalVariable(name: "c_num", scope: !1851, file: !107, line: 135, type: !67)
!1909 = !{!"924"}
!1910 = !DILocation(line: 142, column: 19, scope: !1898)
!1911 = !{!"925"}
!1912 = !DILocation(line: 142, column: 25, scope: !1898)
!1913 = !{!"926"}
!1914 = !DILocation(line: 142, column: 32, scope: !1898)
!1915 = !{!"927"}
!1916 = !DILocation(line: 142, column: 18, scope: !1898)
!1917 = !{!"928"}
!1918 = !DILocalVariable(name: "c_num0", scope: !1851, file: !107, line: 135, type: !67)
!1919 = !{!"929"}
!1920 = !DILocation(line: 143, column: 20, scope: !1898)
!1921 = !{!"930"}
!1922 = !DILocation(line: 143, column: 22, scope: !1898)
!1923 = !{!"931"}
!1924 = !DILocation(line: 143, column: 30, scope: !1898)
!1925 = !{!"932"}
!1926 = !DILocation(line: 143, column: 19, scope: !1898)
!1927 = !{!"933"}
!1928 = !DILocalVariable(name: "c_alpha", scope: !1851, file: !107, line: 134, type: !67)
!1929 = !{!"934"}
!1930 = !DILocation(line: 144, column: 22, scope: !1898)
!1931 = !{!"935"}
!1932 = !DILocation(line: 144, column: 30, scope: !1898)
!1933 = !{!"936"}
!1934 = !DILocation(line: 144, column: 40, scope: !1898)
!1935 = !{!"937"}
!1936 = !DILocation(line: 144, column: 48, scope: !1898)
!1937 = !{!"938"}
!1938 = !DILocation(line: 144, column: 37, scope: !1898)
!1939 = !{!"939"}
!1940 = !DILocation(line: 144, column: 56, scope: !1898)
!1941 = !{!"940"}
!1942 = !DILocation(line: 144, column: 20, scope: !1898)
!1943 = !{!"941"}
!1944 = !DILocalVariable(name: "c_alpha0", scope: !1851, file: !107, line: 134, type: !67)
!1945 = !{!"942"}
!1946 = !DILocation(line: 145, column: 14, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1898, file: !107, line: 145, column: 13)
!1948 = !{!"943"}
!1949 = !DILocation(line: 145, column: 23, scope: !1947)
!1950 = !{!"944"}
!1951 = !DILocation(line: 145, column: 21, scope: !1947)
!1952 = !{!"945"}
!1953 = !DILocation(line: 145, column: 33, scope: !1947)
!1954 = !{!"946"}
!1955 = !DILocation(line: 145, column: 13, scope: !1898)
!1956 = !{!"947"}
!1957 = !DILocation(line: 146, column: 24, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !107, line: 146, column: 17)
!1959 = distinct !DILexicalBlock(scope: !1947, file: !107, line: 145, column: 40)
!1960 = !{!"948"}
!1961 = !DILocation(line: 146, column: 32, scope: !1958)
!1962 = !{!"949"}
!1963 = !DILocation(line: 146, column: 35, scope: !1958)
!1964 = !{!"950"}
!1965 = !DILocation(line: 146, column: 41, scope: !1958)
!1966 = !{!"951"}
!1967 = !DILocation(line: 146, column: 47, scope: !1958)
!1968 = !{!"952"}
!1969 = !DILocation(line: 146, column: 65, scope: !1958)
!1970 = !{!"953"}
!1971 = !DILocation(line: 146, column: 50, scope: !1958)
!1972 = !{!"954"}
!1973 = !DILocation(line: 146, column: 68, scope: !1958)
!1974 = !{!"955"}
!1975 = !DILocation(line: 146, column: 17, scope: !1959)
!1976 = !{!"956"}
!1977 = !DILocation(line: 147, column: 24, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1958, file: !107, line: 146, column: 77)
!1979 = !{!"957"}
!1980 = !{!"958"}
!1981 = !DILocation(line: 148, column: 17, scope: !1978)
!1982 = distinct !{!1982, !1883, !1983, !564}
!1983 = !DILocation(line: 165, column: 5, scope: !1851)
!1984 = !{!"959"}
!1985 = !DILocation(line: 150, column: 13, scope: !1959)
!1986 = !{!"960"}
!1987 = !DILocation(line: 152, column: 18, scope: !1898)
!1988 = !{!"961"}
!1989 = !DILocation(line: 152, column: 27, scope: !1898)
!1990 = !{!"962"}
!1991 = !DILocation(line: 152, column: 25, scope: !1898)
!1992 = !{!"963"}
!1993 = !DILocation(line: 152, column: 37, scope: !1898)
!1994 = !{!"964"}
!1995 = !DILocation(line: 152, column: 48, scope: !1898)
!1996 = !{!"965"}
!1997 = !DILocation(line: 152, column: 46, scope: !1898)
!1998 = !{!"966"}
!1999 = !DILocation(line: 152, column: 34, scope: !1898)
!2000 = !{!"967"}
!2001 = !DILocation(line: 152, column: 17, scope: !1898)
!2002 = !{!"968"}
!2003 = !DILocalVariable(name: "c_val", scope: !1851, file: !107, line: 136, type: !67)
!2004 = !{!"969"}
!2005 = !DILocation(line: 153, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1898, file: !107, line: 153, column: 13)
!2007 = !{!"970"}
!2008 = !DILocation(line: 153, column: 13, scope: !1898)
!2009 = !{!"971"}
!2010 = !{!"972"}
!2011 = !DILocation(line: 155, column: 13, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2006, file: !107, line: 153, column: 36)
!2013 = !{!"973"}
!2014 = !DILocation(line: 155, column: 19, scope: !2012)
!2015 = !{!"974"}
!2016 = !DILocation(line: 156, column: 13, scope: !2012)
!2017 = !{!"975"}
!2018 = !DILocation(line: 158, column: 13, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1898, file: !107, line: 158, column: 13)
!2020 = !{!"976"}
!2021 = !DILocation(line: 158, column: 19, scope: !2019)
!2022 = !{!"977"}
!2023 = !DILocation(line: 158, column: 13, scope: !1898)
!2024 = !{!"978"}
!2025 = !DILocation(line: 159, column: 21, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2019, file: !107, line: 158, column: 26)
!2027 = !{!"979"}
!2028 = !DILocation(line: 159, column: 27, scope: !2026)
!2029 = !{!"980"}
!2030 = !{!"981"}
!2031 = !{!"982"}
!2032 = !DILocation(line: 160, column: 9, scope: !2026)
!2033 = !{!"983"}
!2034 = !DILocation(line: 161, column: 30, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2019, file: !107, line: 160, column: 16)
!2036 = !{!"984"}
!2037 = !DILocation(line: 161, column: 38, scope: !2035)
!2038 = !{!"985"}
!2039 = !DILocation(line: 161, column: 36, scope: !2035)
!2040 = !{!"986"}
!2041 = !{!"987"}
!2042 = !DILocation(line: 161, column: 24, scope: !2035)
!2043 = !{!"988"}
!2044 = !{!"989"}
!2045 = !DILocation(line: 161, column: 13, scope: !2035)
!2046 = !{!"990"}
!2047 = !DILocation(line: 161, column: 28, scope: !2035)
!2048 = !{!"991"}
!2049 = !{!"992"}
!2050 = !{!"993"}
!2051 = !{!"994"}
!2052 = !{!"995"}
!2053 = !{!"996"}
!2054 = !DILocation(line: 163, column: 18, scope: !1898)
!2055 = !{!"997"}
!2056 = !DILocation(line: 163, column: 17, scope: !1898)
!2057 = !{!"998"}
!2058 = !{!"999"}
!2059 = !{!"1000"}
!2060 = !DILocation(line: 164, column: 16, scope: !1898)
!2061 = !{!"1001"}
!2062 = !{!"1002"}
!2063 = !{!"1003"}
!2064 = !{!"1004"}
!2065 = !{!"1005"}
!2066 = !DILocation(line: 166, column: 9, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1851, file: !107, line: 166, column: 9)
!2068 = !{!"1006"}
!2069 = !DILocation(line: 166, column: 15, scope: !2067)
!2070 = !{!"1007"}
!2071 = !DILocation(line: 166, column: 9, scope: !1851)
!2072 = !{!"1008"}
!2073 = !DILocation(line: 167, column: 16, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2067, file: !107, line: 166, column: 22)
!2075 = !{!"1009"}
!2076 = !{!"1010"}
!2077 = !DILocation(line: 168, column: 5, scope: !2074)
!2078 = !{!"1011"}
!2079 = !{!"1012"}
!2080 = !{!"1013"}
!2081 = !DILocation(line: 169, column: 17, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1851, file: !107, line: 169, column: 9)
!2083 = !{!"1014"}
!2084 = !DILocation(line: 169, column: 9, scope: !1851)
!2085 = !{!"1015"}
!2086 = !DILocation(line: 170, column: 21, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !107, line: 169, column: 26)
!2088 = !{!"1016"}
!2089 = !DILocation(line: 170, column: 18, scope: !2087)
!2090 = !{!"1017"}
!2091 = !DILocation(line: 171, column: 5, scope: !2087)
!2092 = !{!"1018"}
!2093 = !DILocation(line: 172, column: 17, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1851, file: !107, line: 172, column: 9)
!2095 = !{!"1019"}
!2096 = !DILocation(line: 172, column: 9, scope: !1851)
!2097 = !{!"1020"}
!2098 = !DILocation(line: 173, column: 18, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !107, line: 172, column: 26)
!2100 = !{!"1021"}
!2101 = !DILocation(line: 174, column: 5, scope: !2099)
!2102 = !{!"1022"}
!2103 = !DILocation(line: 175, column: 5, scope: !1851)
!2104 = !{!"1023"}
!2105 = distinct !DISubprogram(name: "_sodium_alloc_init", scope: !107, file: !107, line: 179, type: !50, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2106 = !{!"1024"}
!2107 = !DILocation(line: 196, column: 5, scope: !2105)
!2108 = !{!"1025"}
!2109 = !DILocation(line: 198, column: 5, scope: !2105)
!2110 = !{!"1026"}
!2111 = distinct !DISubprogram(name: "sodium_mlock", scope: !107, file: !107, line: 202, type: !1386, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2112 = !DILocalVariable(name: "addr", arg: 1, scope: !2111, file: !107, line: 202, type: !46)
!2113 = !DILocation(line: 0, scope: !2111)
!2114 = !{!"1027"}
!2115 = !DILocalVariable(name: "len", arg: 2, scope: !2111, file: !107, line: 202, type: !47)
!2116 = !{!"1028"}
!2117 = !DILocation(line: 212, column: 5, scope: !2111)
!2118 = !{!"1029"}
!2119 = !DILocation(line: 212, column: 11, scope: !2111)
!2120 = !{!"1030"}
!2121 = !DILocation(line: 213, column: 5, scope: !2111)
!2122 = !{!"1031"}
!2123 = distinct !DISubprogram(name: "sodium_munlock", scope: !107, file: !107, line: 218, type: !1386, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2124 = !DILocalVariable(name: "addr", arg: 1, scope: !2123, file: !107, line: 218, type: !46)
!2125 = !DILocation(line: 0, scope: !2123)
!2126 = !{!"1032"}
!2127 = !DILocalVariable(name: "len", arg: 2, scope: !2123, file: !107, line: 218, type: !47)
!2128 = !{!"1033"}
!2129 = !DILocation(line: 220, column: 5, scope: !2123)
!2130 = !{!"1034"}
!2131 = !DILocation(line: 229, column: 5, scope: !2123)
!2132 = !{!"1035"}
!2133 = !DILocation(line: 229, column: 11, scope: !2123)
!2134 = !{!"1036"}
!2135 = !DILocation(line: 230, column: 5, scope: !2123)
!2136 = !{!"1037"}
!2137 = distinct !DISubprogram(name: "sodium_malloc", scope: !107, file: !107, line: 402, type: !2138, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!6, !47}
!2140 = !DILocalVariable(name: "size", arg: 1, scope: !2137, file: !107, line: 402, type: !47)
!2141 = !DILocation(line: 0, scope: !2137)
!2142 = !{!"1038"}
!2143 = !DILocation(line: 406, column: 16, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2137, file: !107, line: 406, column: 9)
!2145 = !{!"1039"}
!2146 = !DILocalVariable(name: "ptr", scope: !2137, file: !107, line: 404, type: !6)
!2147 = !{!"1040"}
!2148 = !DILocation(line: 406, column: 38, scope: !2144)
!2149 = !{!"1041"}
!2150 = !DILocation(line: 406, column: 9, scope: !2137)
!2151 = !{!"1042"}
!2152 = !DILocation(line: 407, column: 9, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2144, file: !107, line: 406, column: 47)
!2154 = !{!"1043"}
!2155 = !DILocation(line: 409, column: 5, scope: !2137)
!2156 = !{!"1044"}
!2157 = !DILocation(line: 411, column: 5, scope: !2137)
!2158 = !{!"1045"}
!2159 = !{!"1046"}
!2160 = !DILocation(line: 412, column: 1, scope: !2137)
!2161 = !{!"1047"}
!2162 = distinct !DISubprogram(name: "_sodium_malloc", scope: !107, file: !107, line: 353, type: !2138, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2163 = !DILocalVariable(name: "size", arg: 1, scope: !2162, file: !107, line: 353, type: !47)
!2164 = !DILocation(line: 0, scope: !2162)
!2165 = !{!"1048"}
!2166 = !DILocation(line: 355, column: 12, scope: !2162)
!2167 = !{!"1049"}
!2168 = !DILocation(line: 355, column: 5, scope: !2162)
!2169 = !{!"1050"}
!2170 = distinct !DISubprogram(name: "sodium_allocarray", scope: !107, file: !107, line: 415, type: !2171, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!6, !12, !12}
!2173 = !DILocalVariable(name: "count", arg: 1, scope: !2170, file: !107, line: 415, type: !12)
!2174 = !DILocation(line: 0, scope: !2170)
!2175 = !{!"1051"}
!2176 = !DILocalVariable(name: "size", arg: 2, scope: !2170, file: !107, line: 415, type: !12)
!2177 = !{!"1052"}
!2178 = !DILocation(line: 419, column: 15, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2170, file: !107, line: 419, column: 9)
!2180 = !{!"1053"}
!2181 = !DILocation(line: 419, column: 29, scope: !2179)
!2182 = !{!"1054"}
!2183 = !DILocation(line: 419, column: 58, scope: !2179)
!2184 = !{!"1055"}
!2185 = !DILocation(line: 419, column: 37, scope: !2179)
!2186 = !{!"1056"}
!2187 = !DILocation(line: 419, column: 9, scope: !2170)
!2188 = !{!"1057"}
!2189 = !DILocation(line: 420, column: 9, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2179, file: !107, line: 419, column: 67)
!2191 = !{!"1058"}
!2192 = !DILocation(line: 420, column: 15, scope: !2190)
!2193 = !{!"1059"}
!2194 = !DILocation(line: 421, column: 9, scope: !2190)
!2195 = !{!"1060"}
!2196 = !DILocation(line: 423, column: 24, scope: !2170)
!2197 = !{!"1061"}
!2198 = !DILocalVariable(name: "total_size", scope: !2170, file: !107, line: 417, type: !12)
!2199 = !{!"1062"}
!2200 = !DILocation(line: 425, column: 12, scope: !2170)
!2201 = !{!"1063"}
!2202 = !DILocation(line: 425, column: 5, scope: !2170)
!2203 = !{!"1064"}
!2204 = !{!"1065"}
!2205 = !DILocation(line: 426, column: 1, scope: !2170)
!2206 = !{!"1066"}
!2207 = distinct !DISubprogram(name: "sodium_free", scope: !107, file: !107, line: 430, type: !2208, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !6}
!2210 = !DILocalVariable(name: "ptr", arg: 1, scope: !2207, file: !107, line: 430, type: !6)
!2211 = !DILocation(line: 0, scope: !2207)
!2212 = !{!"1067"}
!2213 = !DILocation(line: 432, column: 5, scope: !2207)
!2214 = !{!"1068"}
!2215 = !DILocation(line: 433, column: 1, scope: !2207)
!2216 = !{!"1069"}
!2217 = distinct !DISubprogram(name: "sodium_mprotect_noaccess", scope: !107, file: !107, line: 493, type: !2218, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!52, !6}
!2220 = !DILocalVariable(name: "ptr", arg: 1, scope: !2217, file: !107, line: 493, type: !6)
!2221 = !DILocation(line: 0, scope: !2217)
!2222 = !{!"1070"}
!2223 = !DILocation(line: 495, column: 12, scope: !2217)
!2224 = !{!"1071"}
!2225 = !DILocation(line: 495, column: 5, scope: !2217)
!2226 = !{!"1072"}
!2227 = distinct !DISubprogram(name: "_mprotect_noaccess", scope: !107, file: !107, line: 235, type: !2228, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!52, !6, !12}
!2230 = !DILocalVariable(name: "ptr", arg: 1, scope: !2227, file: !107, line: 235, type: !6)
!2231 = !DILocation(line: 0, scope: !2227)
!2232 = !{!"1073"}
!2233 = !DILocalVariable(name: "size", arg: 2, scope: !2227, file: !107, line: 235, type: !12)
!2234 = !{!"1074"}
!2235 = !DILocation(line: 243, column: 5, scope: !2227)
!2236 = !{!"1075"}
!2237 = !DILocation(line: 243, column: 11, scope: !2227)
!2238 = !{!"1076"}
!2239 = !DILocation(line: 244, column: 5, scope: !2227)
!2240 = !{!"1077"}
!2241 = distinct !DISubprogram(name: "_sodium_mprotect", scope: !107, file: !107, line: 469, type: !2242, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!52, !6, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2245 = !DILocalVariable(name: "ptr", arg: 1, scope: !2241, file: !107, line: 469, type: !6)
!2246 = !DILocation(line: 0, scope: !2241)
!2247 = !{!"1078"}
!2248 = !DILocalVariable(name: "cb", arg: 2, scope: !2241, file: !107, line: 469, type: !2244)
!2249 = !{!"1079"}
!2250 = !DILocation(line: 473, column: 5, scope: !2241)
!2251 = !{!"1080"}
!2252 = !DILocation(line: 473, column: 11, scope: !2241)
!2253 = !{!"1081"}
!2254 = !DILocation(line: 474, column: 5, scope: !2241)
!2255 = !{!"1082"}
!2256 = distinct !DISubprogram(name: "sodium_mprotect_readonly", scope: !107, file: !107, line: 499, type: !2218, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2257 = !DILocalVariable(name: "ptr", arg: 1, scope: !2256, file: !107, line: 499, type: !6)
!2258 = !DILocation(line: 0, scope: !2256)
!2259 = !{!"1083"}
!2260 = !DILocation(line: 501, column: 12, scope: !2256)
!2261 = !{!"1084"}
!2262 = !DILocation(line: 501, column: 5, scope: !2256)
!2263 = !{!"1085"}
!2264 = distinct !DISubprogram(name: "_mprotect_readonly", scope: !107, file: !107, line: 249, type: !2228, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2265 = !DILocalVariable(name: "ptr", arg: 1, scope: !2264, file: !107, line: 249, type: !6)
!2266 = !DILocation(line: 0, scope: !2264)
!2267 = !{!"1086"}
!2268 = !DILocalVariable(name: "size", arg: 2, scope: !2264, file: !107, line: 249, type: !12)
!2269 = !{!"1087"}
!2270 = !DILocation(line: 257, column: 5, scope: !2264)
!2271 = !{!"1088"}
!2272 = !DILocation(line: 257, column: 11, scope: !2264)
!2273 = !{!"1089"}
!2274 = !DILocation(line: 258, column: 5, scope: !2264)
!2275 = !{!"1090"}
!2276 = distinct !DISubprogram(name: "sodium_mprotect_readwrite", scope: !107, file: !107, line: 505, type: !2218, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2277 = !DILocalVariable(name: "ptr", arg: 1, scope: !2276, file: !107, line: 505, type: !6)
!2278 = !DILocation(line: 0, scope: !2276)
!2279 = !{!"1091"}
!2280 = !DILocation(line: 507, column: 12, scope: !2276)
!2281 = !{!"1092"}
!2282 = !DILocation(line: 507, column: 5, scope: !2276)
!2283 = !{!"1093"}
!2284 = distinct !DISubprogram(name: "_mprotect_readwrite", scope: !107, file: !107, line: 263, type: !2228, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !106, retainedNodes: !4)
!2285 = !DILocalVariable(name: "ptr", arg: 1, scope: !2284, file: !107, line: 263, type: !6)
!2286 = !DILocation(line: 0, scope: !2284)
!2287 = !{!"1094"}
!2288 = !DILocalVariable(name: "size", arg: 2, scope: !2284, file: !107, line: 263, type: !12)
!2289 = !{!"1095"}
!2290 = !DILocation(line: 271, column: 5, scope: !2284)
!2291 = !{!"1096"}
!2292 = !DILocation(line: 271, column: 11, scope: !2284)
!2293 = !{!"1097"}
!2294 = !DILocation(line: 272, column: 5, scope: !2284)
!2295 = !{!"1098"}
